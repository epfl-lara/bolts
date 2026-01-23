; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3650 () Bool)

(assert start!3650)

(declare-fun b!50878 () Bool)

(declare-fun b_free!1581 () Bool)

(declare-fun b_next!1581 () Bool)

(assert (=> b!50878 (= b_free!1581 (not b_next!1581))))

(declare-fun tp!33556 () Bool)

(declare-fun b_and!1623 () Bool)

(assert (=> b!50878 (= tp!33556 b_and!1623)))

(declare-fun b_free!1583 () Bool)

(declare-fun b_next!1583 () Bool)

(assert (=> b!50878 (= b_free!1583 (not b_next!1583))))

(declare-fun tp!33558 () Bool)

(declare-fun b_and!1625 () Bool)

(assert (=> b!50878 (= tp!33558 b_and!1625)))

(declare-fun b!50866 () Bool)

(declare-fun e!29839 () Bool)

(declare-fun e!29836 () Bool)

(declare-fun tp!33557 () Bool)

(assert (=> b!50866 (= e!29839 (and e!29836 tp!33557))))

(declare-fun b!50867 () Bool)

(declare-fun e!29837 () Bool)

(declare-fun e!29830 () Bool)

(assert (=> b!50867 (= e!29837 e!29830)))

(declare-fun res!33449 () Bool)

(assert (=> b!50867 (=> res!33449 e!29830)))

(declare-datatypes ((List!1014 0))(
  ( (Nil!1008) (Cons!1008 (h!6405 (_ BitVec 16)) (t!17217 List!1014)) )
))
(declare-datatypes ((TokenValue!207 0))(
  ( (FloatLiteralValue!414 (text!1894 List!1014)) (TokenValueExt!206 (__x!1509 Int)) (Broken!1035 (value!9056 List!1014)) (Object!212) (End!207) (Def!207) (Underscore!207) (Match!207) (Else!207) (Error!207) (Case!207) (If!207) (Extends!207) (Abstract!207) (Class!207) (Val!207) (DelimiterValue!414 (del!267 List!1014)) (KeywordValue!213 (value!9057 List!1014)) (CommentValue!414 (value!9058 List!1014)) (WhitespaceValue!414 (value!9059 List!1014)) (IndentationValue!207 (value!9060 List!1014)) (String!1426) (Int32!207) (Broken!1036 (value!9061 List!1014)) (Boolean!208) (Unit!571) (OperatorValue!210 (op!267 List!1014)) (IdentifierValue!414 (value!9062 List!1014)) (IdentifierValue!415 (value!9063 List!1014)) (WhitespaceValue!415 (value!9064 List!1014)) (True!414) (False!414) (Broken!1037 (value!9065 List!1014)) (Broken!1038 (value!9066 List!1014)) (True!415) (RightBrace!207) (RightBracket!207) (Colon!207) (Null!207) (Comma!207) (LeftBracket!207) (False!415) (LeftBrace!207) (ImaginaryLiteralValue!207 (text!1895 List!1014)) (StringLiteralValue!621 (value!9067 List!1014)) (EOFValue!207 (value!9068 List!1014)) (IdentValue!207 (value!9069 List!1014)) (DelimiterValue!415 (value!9070 List!1014)) (DedentValue!207 (value!9071 List!1014)) (NewLineValue!207 (value!9072 List!1014)) (IntegerValue!621 (value!9073 (_ BitVec 32)) (text!1896 List!1014)) (IntegerValue!622 (value!9074 Int) (text!1897 List!1014)) (Times!207) (Or!207) (Equal!207) (Minus!207) (Broken!1039 (value!9075 List!1014)) (And!207) (Div!207) (LessEqual!207) (Mod!207) (Concat!492) (Not!207) (Plus!207) (SpaceValue!207 (value!9076 List!1014)) (IntegerValue!623 (value!9077 Int) (text!1898 List!1014)) (StringLiteralValue!622 (text!1899 List!1014)) (FloatLiteralValue!415 (text!1900 List!1014)) (BytesLiteralValue!207 (value!9078 List!1014)) (CommentValue!415 (value!9079 List!1014)) (StringLiteralValue!623 (value!9080 List!1014)) (ErrorTokenValue!207 (msg!268 List!1014)) )
))
(declare-datatypes ((C!1492 0))(
  ( (C!1493 (val!353 Int)) )
))
(declare-datatypes ((Regex!285 0))(
  ( (ElementMatch!285 (c!16639 C!1492)) (Concat!493 (regOne!1082 Regex!285) (regTwo!1082 Regex!285)) (EmptyExpr!285) (Star!285 (reg!614 Regex!285)) (EmptyLang!285) (Union!285 (regOne!1083 Regex!285) (regTwo!1083 Regex!285)) )
))
(declare-datatypes ((String!1427 0))(
  ( (String!1428 (value!9081 String)) )
))
(declare-datatypes ((List!1015 0))(
  ( (Nil!1009) (Cons!1009 (h!6406 C!1492) (t!17218 List!1015)) )
))
(declare-datatypes ((IArray!477 0))(
  ( (IArray!478 (innerList!296 List!1015)) )
))
(declare-datatypes ((Conc!238 0))(
  ( (Node!238 (left!759 Conc!238) (right!1089 Conc!238) (csize!706 Int) (cheight!449 Int)) (Leaf!482 (xs!2817 IArray!477) (csize!707 Int)) (Empty!238) )
))
(declare-datatypes ((BalanceConc!480 0))(
  ( (BalanceConc!481 (c!16640 Conc!238)) )
))
(declare-datatypes ((TokenValueInjection!238 0))(
  ( (TokenValueInjection!239 (toValue!696 Int) (toChars!555 Int)) )
))
(declare-datatypes ((Rule!234 0))(
  ( (Rule!235 (regex!217 Regex!285) (tag!395 String!1427) (isSeparator!217 Bool) (transformation!217 TokenValueInjection!238)) )
))
(declare-datatypes ((Token!198 0))(
  ( (Token!199 (value!9082 TokenValue!207) (rule!692 Rule!234) (size!938 Int) (originalCharacters!270 List!1015)) )
))
(declare-datatypes ((List!1016 0))(
  ( (Nil!1010) (Cons!1010 (h!6407 Token!198) (t!17219 List!1016)) )
))
(declare-datatypes ((IArray!479 0))(
  ( (IArray!480 (innerList!297 List!1016)) )
))
(declare-datatypes ((Conc!239 0))(
  ( (Node!239 (left!760 Conc!239) (right!1090 Conc!239) (csize!708 Int) (cheight!450 Int)) (Leaf!483 (xs!2818 IArray!479) (csize!709 Int)) (Empty!239) )
))
(declare-datatypes ((BalanceConc!482 0))(
  ( (BalanceConc!483 (c!16641 Conc!239)) )
))
(declare-fun v!6227 () BalanceConc!482)

(declare-fun lt!8790 () Token!198)

(declare-fun contains!100 (BalanceConc!482 Token!198) Bool)

(assert (=> b!50867 (= res!33449 (not (contains!100 v!6227 lt!8790)))))

(declare-fun from!821 () Int)

(declare-fun apply!84 (BalanceConc!482 Int) Token!198)

(assert (=> b!50867 (= lt!8790 (apply!84 v!6227 (+ 1 from!821)))))

(declare-fun b!50868 () Bool)

(declare-fun e!29833 () Bool)

(declare-fun e!29831 () Bool)

(assert (=> b!50868 (= e!29833 e!29831)))

(declare-fun res!33448 () Bool)

(assert (=> b!50868 (=> (not res!33448) (not e!29831))))

(declare-fun lt!8787 () Int)

(assert (=> b!50868 (= res!33448 (<= from!821 lt!8787))))

(declare-fun size!939 (BalanceConc!482) Int)

(assert (=> b!50868 (= lt!8787 (size!939 v!6227))))

(declare-fun b!50869 () Bool)

(assert (=> b!50869 (= e!29831 (not e!29837))))

(declare-fun res!33450 () Bool)

(assert (=> b!50869 (=> res!33450 e!29837)))

(declare-fun lt!8786 () Token!198)

(assert (=> b!50869 (= res!33450 (not (contains!100 v!6227 lt!8786)))))

(assert (=> b!50869 (= lt!8786 (apply!84 v!6227 from!821))))

(declare-fun lt!8785 () List!1016)

(declare-fun lt!8791 () List!1016)

(declare-fun tail!59 (List!1016) List!1016)

(declare-fun drop!34 (List!1016 Int) List!1016)

(assert (=> b!50869 (= (tail!59 lt!8785) (drop!34 lt!8791 (+ 2 from!821)))))

(declare-datatypes ((Unit!572 0))(
  ( (Unit!573) )
))
(declare-fun lt!8781 () Unit!572)

(declare-fun lemmaDropTail!30 (List!1016 Int) Unit!572)

(assert (=> b!50869 (= lt!8781 (lemmaDropTail!30 lt!8791 (+ 1 from!821)))))

(declare-fun lt!8782 () List!1016)

(assert (=> b!50869 (= (tail!59 lt!8782) lt!8785)))

(declare-fun lt!8788 () Unit!572)

(assert (=> b!50869 (= lt!8788 (lemmaDropTail!30 lt!8791 from!821))))

(declare-fun head!374 (List!1016) Token!198)

(declare-fun apply!85 (List!1016 Int) Token!198)

(assert (=> b!50869 (= (head!374 lt!8785) (apply!85 lt!8791 (+ 1 from!821)))))

(assert (=> b!50869 (= lt!8785 (drop!34 lt!8791 (+ 1 from!821)))))

(declare-fun lt!8783 () Unit!572)

(declare-fun lemmaDropApply!34 (List!1016 Int) Unit!572)

(assert (=> b!50869 (= lt!8783 (lemmaDropApply!34 lt!8791 (+ 1 from!821)))))

(assert (=> b!50869 (= (head!374 lt!8782) (apply!85 lt!8791 from!821))))

(assert (=> b!50869 (= lt!8782 (drop!34 lt!8791 from!821))))

(declare-fun lt!8789 () Unit!572)

(assert (=> b!50869 (= lt!8789 (lemmaDropApply!34 lt!8791 from!821))))

(declare-fun list!258 (BalanceConc!482) List!1016)

(assert (=> b!50869 (= lt!8791 (list!258 v!6227))))

(declare-fun b!50870 () Bool)

(declare-fun res!33452 () Bool)

(assert (=> b!50870 (=> res!33452 e!29830)))

(declare-fun contains!101 (List!1016 Token!198) Bool)

(assert (=> b!50870 (= res!33452 (not (contains!101 lt!8791 lt!8790)))))

(declare-fun tp!33559 () Bool)

(declare-fun e!29838 () Bool)

(declare-fun b!50871 () Bool)

(declare-datatypes ((List!1017 0))(
  ( (Nil!1011) (Cons!1011 (h!6408 Rule!234) (t!17220 List!1017)) )
))
(declare-fun rules!1069 () List!1017)

(declare-fun inv!1328 (String!1427) Bool)

(declare-fun inv!1332 (TokenValueInjection!238) Bool)

(assert (=> b!50871 (= e!29836 (and tp!33559 (inv!1328 (tag!395 (h!6408 rules!1069))) (inv!1332 (transformation!217 (h!6408 rules!1069))) e!29838))))

(declare-fun b!50872 () Bool)

(declare-fun res!33458 () Bool)

(assert (=> b!50872 (=> (not res!33458) (not e!29831))))

(declare-datatypes ((LexerInterface!109 0))(
  ( (LexerInterfaceExt!106 (__x!1510 Int)) (Lexer!107) )
))
(declare-fun thiss!11059 () LexerInterface!109)

(declare-fun rulesInvariant!103 (LexerInterface!109 List!1017) Bool)

(assert (=> b!50872 (= res!33458 (rulesInvariant!103 thiss!11059 rules!1069))))

(declare-fun b!50873 () Bool)

(declare-fun res!33456 () Bool)

(assert (=> b!50873 (=> (not res!33456) (not e!29831))))

(declare-fun isEmpty!203 (List!1017) Bool)

(assert (=> b!50873 (= res!33456 (not (isEmpty!203 rules!1069)))))

(declare-fun b!50874 () Bool)

(declare-fun e!29835 () Bool)

(declare-fun size!940 (BalanceConc!480) Int)

(declare-fun charsOf!10 (Token!198) BalanceConc!480)

(assert (=> b!50874 (= e!29835 (> (size!940 (charsOf!10 lt!8790)) 0))))

(declare-fun b!50875 () Bool)

(assert (=> b!50875 (= e!29830 true)))

(assert (=> b!50875 e!29835))

(declare-fun res!33455 () Bool)

(assert (=> b!50875 (=> (not res!33455) (not e!29835))))

(declare-fun rulesProduceIndividualToken!28 (LexerInterface!109 List!1017 Token!198) Bool)

(assert (=> b!50875 (= res!33455 (rulesProduceIndividualToken!28 thiss!11059 rules!1069 lt!8790))))

(declare-fun lt!8792 () Unit!572)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!16 (LexerInterface!109 List!1017 List!1016 Token!198) Unit!572)

(assert (=> b!50875 (= lt!8792 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!16 thiss!11059 rules!1069 lt!8791 lt!8790))))

(assert (=> b!50875 (rulesProduceIndividualToken!28 thiss!11059 rules!1069 lt!8786)))

(declare-fun lt!8784 () Unit!572)

(assert (=> b!50875 (= lt!8784 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!16 thiss!11059 rules!1069 lt!8791 lt!8786))))

(declare-fun b!50876 () Bool)

(declare-fun res!33457 () Bool)

(assert (=> b!50876 (=> res!33457 e!29837)))

(assert (=> b!50876 (= res!33457 (not (contains!101 lt!8791 lt!8786)))))

(declare-fun b!50877 () Bool)

(declare-fun res!33451 () Bool)

(assert (=> b!50877 (=> (not res!33451) (not e!29831))))

(assert (=> b!50877 (= res!33451 (< from!821 (- lt!8787 1)))))

(assert (=> b!50878 (= e!29838 (and tp!33556 tp!33558))))

(declare-fun res!33453 () Bool)

(assert (=> start!3650 (=> (not res!33453) (not e!29833))))

(get-info :version)

(assert (=> start!3650 (= res!33453 (and ((_ is Lexer!107) thiss!11059) (>= from!821 0)))))

(assert (=> start!3650 e!29833))

(assert (=> start!3650 true))

(declare-fun e!29832 () Bool)

(declare-fun inv!1333 (BalanceConc!482) Bool)

(assert (=> start!3650 (and (inv!1333 v!6227) e!29832)))

(assert (=> start!3650 e!29839))

(declare-fun b!50879 () Bool)

(declare-fun tp!33560 () Bool)

(declare-fun inv!1334 (Conc!239) Bool)

(assert (=> b!50879 (= e!29832 (and (inv!1334 (c!16641 v!6227)) tp!33560))))

(declare-fun b!50880 () Bool)

(declare-fun res!33454 () Bool)

(assert (=> b!50880 (=> (not res!33454) (not e!29831))))

(declare-fun rulesProduceEachTokenIndividually!47 (LexerInterface!109 List!1017 BalanceConc!482) Bool)

(assert (=> b!50880 (= res!33454 (rulesProduceEachTokenIndividually!47 thiss!11059 rules!1069 v!6227))))

(assert (= (and start!3650 res!33453) b!50868))

(assert (= (and b!50868 res!33448) b!50873))

(assert (= (and b!50873 res!33456) b!50872))

(assert (= (and b!50872 res!33458) b!50880))

(assert (= (and b!50880 res!33454) b!50877))

(assert (= (and b!50877 res!33451) b!50869))

(assert (= (and b!50869 (not res!33450)) b!50876))

(assert (= (and b!50876 (not res!33457)) b!50867))

(assert (= (and b!50867 (not res!33449)) b!50870))

(assert (= (and b!50870 (not res!33452)) b!50875))

(assert (= (and b!50875 res!33455) b!50874))

(assert (= start!3650 b!50879))

(assert (= b!50871 b!50878))

(assert (= b!50866 b!50871))

(assert (= (and start!3650 ((_ is Cons!1011) rules!1069)) b!50866))

(declare-fun m!25174 () Bool)

(assert (=> b!50879 m!25174))

(declare-fun m!25176 () Bool)

(assert (=> b!50869 m!25176))

(declare-fun m!25178 () Bool)

(assert (=> b!50869 m!25178))

(declare-fun m!25180 () Bool)

(assert (=> b!50869 m!25180))

(declare-fun m!25182 () Bool)

(assert (=> b!50869 m!25182))

(declare-fun m!25184 () Bool)

(assert (=> b!50869 m!25184))

(declare-fun m!25186 () Bool)

(assert (=> b!50869 m!25186))

(declare-fun m!25188 () Bool)

(assert (=> b!50869 m!25188))

(declare-fun m!25190 () Bool)

(assert (=> b!50869 m!25190))

(declare-fun m!25192 () Bool)

(assert (=> b!50869 m!25192))

(declare-fun m!25194 () Bool)

(assert (=> b!50869 m!25194))

(declare-fun m!25196 () Bool)

(assert (=> b!50869 m!25196))

(declare-fun m!25198 () Bool)

(assert (=> b!50869 m!25198))

(declare-fun m!25200 () Bool)

(assert (=> b!50869 m!25200))

(declare-fun m!25202 () Bool)

(assert (=> b!50869 m!25202))

(declare-fun m!25204 () Bool)

(assert (=> b!50869 m!25204))

(declare-fun m!25206 () Bool)

(assert (=> b!50869 m!25206))

(declare-fun m!25208 () Bool)

(assert (=> b!50867 m!25208))

(declare-fun m!25210 () Bool)

(assert (=> b!50867 m!25210))

(declare-fun m!25212 () Bool)

(assert (=> b!50872 m!25212))

(declare-fun m!25214 () Bool)

(assert (=> b!50868 m!25214))

(declare-fun m!25216 () Bool)

(assert (=> b!50870 m!25216))

(declare-fun m!25218 () Bool)

(assert (=> b!50876 m!25218))

(declare-fun m!25220 () Bool)

(assert (=> b!50871 m!25220))

(declare-fun m!25222 () Bool)

(assert (=> b!50871 m!25222))

(declare-fun m!25224 () Bool)

(assert (=> b!50880 m!25224))

(declare-fun m!25226 () Bool)

(assert (=> b!50874 m!25226))

(assert (=> b!50874 m!25226))

(declare-fun m!25228 () Bool)

(assert (=> b!50874 m!25228))

(declare-fun m!25230 () Bool)

(assert (=> b!50875 m!25230))

(declare-fun m!25232 () Bool)

(assert (=> b!50875 m!25232))

(declare-fun m!25234 () Bool)

(assert (=> b!50875 m!25234))

(declare-fun m!25236 () Bool)

(assert (=> b!50875 m!25236))

(declare-fun m!25238 () Bool)

(assert (=> start!3650 m!25238))

(declare-fun m!25240 () Bool)

(assert (=> b!50873 m!25240))

(check-sat (not b!50869) (not b!50870) (not b!50874) (not b_next!1581) (not b!50872) (not b_next!1583) (not b!50879) (not b!50867) (not b!50880) (not b!50876) (not b!50871) (not b!50866) (not b!50875) b_and!1623 (not b!50873) (not start!3650) b_and!1625 (not b!50868))
(check-sat b_and!1625 b_and!1623 (not b_next!1581) (not b_next!1583))
