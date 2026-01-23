; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28606 () Bool)

(assert start!28606)

(declare-fun b!266827 () Bool)

(declare-fun b_free!9937 () Bool)

(declare-fun b_next!9937 () Bool)

(assert (=> b!266827 (= b_free!9937 (not b_next!9937))))

(declare-fun tp!101850 () Bool)

(declare-fun b_and!21045 () Bool)

(assert (=> b!266827 (= tp!101850 b_and!21045)))

(declare-fun b_free!9939 () Bool)

(declare-fun b_next!9939 () Bool)

(assert (=> b!266827 (= b_free!9939 (not b_next!9939))))

(declare-fun tp!101851 () Bool)

(declare-fun b_and!21047 () Bool)

(assert (=> b!266827 (= tp!101851 b_and!21047)))

(declare-fun b!266822 () Bool)

(declare-fun b_free!9941 () Bool)

(declare-fun b_next!9941 () Bool)

(assert (=> b!266822 (= b_free!9941 (not b_next!9941))))

(declare-fun tp!101843 () Bool)

(declare-fun b_and!21049 () Bool)

(assert (=> b!266822 (= tp!101843 b_and!21049)))

(declare-fun b_free!9943 () Bool)

(declare-fun b_next!9943 () Bool)

(assert (=> b!266822 (= b_free!9943 (not b_next!9943))))

(declare-fun tp!101849 () Bool)

(declare-fun b_and!21051 () Bool)

(assert (=> b!266822 (= tp!101849 b_and!21051)))

(declare-fun b!266835 () Bool)

(declare-fun b_free!9945 () Bool)

(declare-fun b_next!9945 () Bool)

(assert (=> b!266835 (= b_free!9945 (not b_next!9945))))

(declare-fun tp!101853 () Bool)

(declare-fun b_and!21053 () Bool)

(assert (=> b!266835 (= tp!101853 b_and!21053)))

(declare-fun b_free!9947 () Bool)

(declare-fun b_next!9947 () Bool)

(assert (=> b!266835 (= b_free!9947 (not b_next!9947))))

(declare-fun tp!101846 () Bool)

(declare-fun b_and!21055 () Bool)

(assert (=> b!266835 (= tp!101846 b_and!21055)))

(declare-fun b!266818 () Bool)

(declare-fun res!122263 () Bool)

(declare-fun e!165784 () Bool)

(assert (=> b!266818 (=> (not res!122263) (not e!165784))))

(declare-datatypes ((LexerInterface!613 0))(
  ( (LexerInterfaceExt!610 (__x!2985 Int)) (Lexer!611) )
))
(declare-fun thiss!17480 () LexerInterface!613)

(declare-datatypes ((List!3817 0))(
  ( (Nil!3807) (Cons!3807 (h!9204 (_ BitVec 16)) (t!37801 List!3817)) )
))
(declare-datatypes ((TokenValue!749 0))(
  ( (FloatLiteralValue!1498 (text!5688 List!3817)) (TokenValueExt!748 (__x!2986 Int)) (Broken!3745 (value!25009 List!3817)) (Object!758) (End!749) (Def!749) (Underscore!749) (Match!749) (Else!749) (Error!749) (Case!749) (If!749) (Extends!749) (Abstract!749) (Class!749) (Val!749) (DelimiterValue!1498 (del!809 List!3817)) (KeywordValue!755 (value!25010 List!3817)) (CommentValue!1498 (value!25011 List!3817)) (WhitespaceValue!1498 (value!25012 List!3817)) (IndentationValue!749 (value!25013 List!3817)) (String!4824) (Int32!749) (Broken!3746 (value!25014 List!3817)) (Boolean!750) (Unit!4823) (OperatorValue!752 (op!809 List!3817)) (IdentifierValue!1498 (value!25015 List!3817)) (IdentifierValue!1499 (value!25016 List!3817)) (WhitespaceValue!1499 (value!25017 List!3817)) (True!1498) (False!1498) (Broken!3747 (value!25018 List!3817)) (Broken!3748 (value!25019 List!3817)) (True!1499) (RightBrace!749) (RightBracket!749) (Colon!749) (Null!749) (Comma!749) (LeftBracket!749) (False!1499) (LeftBrace!749) (ImaginaryLiteralValue!749 (text!5689 List!3817)) (StringLiteralValue!2247 (value!25020 List!3817)) (EOFValue!749 (value!25021 List!3817)) (IdentValue!749 (value!25022 List!3817)) (DelimiterValue!1499 (value!25023 List!3817)) (DedentValue!749 (value!25024 List!3817)) (NewLineValue!749 (value!25025 List!3817)) (IntegerValue!2247 (value!25026 (_ BitVec 32)) (text!5690 List!3817)) (IntegerValue!2248 (value!25027 Int) (text!5691 List!3817)) (Times!749) (Or!749) (Equal!749) (Minus!749) (Broken!3749 (value!25028 List!3817)) (And!749) (Div!749) (LessEqual!749) (Mod!749) (Concat!1700) (Not!749) (Plus!749) (SpaceValue!749 (value!25029 List!3817)) (IntegerValue!2249 (value!25030 Int) (text!5692 List!3817)) (StringLiteralValue!2248 (text!5693 List!3817)) (FloatLiteralValue!1499 (text!5694 List!3817)) (BytesLiteralValue!749 (value!25031 List!3817)) (CommentValue!1499 (value!25032 List!3817)) (StringLiteralValue!2249 (value!25033 List!3817)) (ErrorTokenValue!749 (msg!810 List!3817)) )
))
(declare-datatypes ((C!2824 0))(
  ( (C!2825 (val!1298 Int)) )
))
(declare-datatypes ((List!3818 0))(
  ( (Nil!3808) (Cons!3808 (h!9205 C!2824) (t!37802 List!3818)) )
))
(declare-datatypes ((IArray!2553 0))(
  ( (IArray!2554 (innerList!1334 List!3818)) )
))
(declare-datatypes ((Conc!1276 0))(
  ( (Node!1276 (left!3130 Conc!1276) (right!3460 Conc!1276) (csize!2782 Int) (cheight!1487 Int)) (Leaf!1979 (xs!3875 IArray!2553) (csize!2783 Int)) (Empty!1276) )
))
(declare-datatypes ((BalanceConc!2560 0))(
  ( (BalanceConc!2561 (c!50467 Conc!1276)) )
))
(declare-datatypes ((TokenValueInjection!1270 0))(
  ( (TokenValueInjection!1271 (toValue!1458 Int) (toChars!1317 Int)) )
))
(declare-datatypes ((Regex!951 0))(
  ( (ElementMatch!951 (c!50468 C!2824)) (Concat!1701 (regOne!2414 Regex!951) (regTwo!2414 Regex!951)) (EmptyExpr!951) (Star!951 (reg!1280 Regex!951)) (EmptyLang!951) (Union!951 (regOne!2415 Regex!951) (regTwo!2415 Regex!951)) )
))
(declare-datatypes ((String!4825 0))(
  ( (String!4826 (value!25034 String)) )
))
(declare-datatypes ((Rule!1254 0))(
  ( (Rule!1255 (regex!727 Regex!951) (tag!937 String!4825) (isSeparator!727 Bool) (transformation!727 TokenValueInjection!1270)) )
))
(declare-datatypes ((List!3819 0))(
  ( (Nil!3809) (Cons!3809 (h!9206 Rule!1254) (t!37803 List!3819)) )
))
(declare-fun rules!1920 () List!3819)

(declare-fun rulesInvariant!579 (LexerInterface!613 List!3819) Bool)

(assert (=> b!266818 (= res!122263 (rulesInvariant!579 thiss!17480 rules!1920))))

(declare-fun b!266819 () Bool)

(declare-fun e!165787 () Bool)

(declare-fun e!165801 () Bool)

(assert (=> b!266819 (= e!165787 e!165801)))

(declare-fun res!122270 () Bool)

(assert (=> b!266819 (=> res!122270 e!165801)))

(declare-fun lt!109285 () List!3818)

(declare-fun lt!109293 () List!3818)

(declare-fun lt!109296 () List!3818)

(assert (=> b!266819 (= res!122270 (or (not (= lt!109285 lt!109296)) (not (= lt!109296 lt!109293)) (not (= lt!109285 lt!109293))))))

(declare-datatypes ((Token!1198 0))(
  ( (Token!1199 (value!25035 TokenValue!749) (rule!1312 Rule!1254) (size!3025 Int) (originalCharacters!770 List!3818)) )
))
(declare-datatypes ((List!3820 0))(
  ( (Nil!3810) (Cons!3810 (h!9207 Token!1198) (t!37804 List!3820)) )
))
(declare-fun tokens!465 () List!3820)

(declare-fun printList!289 (LexerInterface!613 List!3820) List!3818)

(assert (=> b!266819 (= lt!109296 (printList!289 thiss!17480 (Cons!3810 (h!9207 tokens!465) Nil!3810)))))

(declare-fun lt!109291 () BalanceConc!2560)

(declare-fun list!1547 (BalanceConc!2560) List!3818)

(assert (=> b!266819 (= lt!109285 (list!1547 lt!109291))))

(declare-datatypes ((IArray!2555 0))(
  ( (IArray!2556 (innerList!1335 List!3820)) )
))
(declare-datatypes ((Conc!1277 0))(
  ( (Node!1277 (left!3131 Conc!1277) (right!3461 Conc!1277) (csize!2784 Int) (cheight!1488 Int)) (Leaf!1980 (xs!3876 IArray!2555) (csize!2785 Int)) (Empty!1277) )
))
(declare-datatypes ((BalanceConc!2562 0))(
  ( (BalanceConc!2563 (c!50469 Conc!1277)) )
))
(declare-fun lt!109287 () BalanceConc!2562)

(declare-fun printTailRec!301 (LexerInterface!613 BalanceConc!2562 Int BalanceConc!2560) BalanceConc!2560)

(assert (=> b!266819 (= lt!109291 (printTailRec!301 thiss!17480 lt!109287 0 (BalanceConc!2561 Empty!1276)))))

(declare-fun print!338 (LexerInterface!613 BalanceConc!2562) BalanceConc!2560)

(assert (=> b!266819 (= lt!109291 (print!338 thiss!17480 lt!109287))))

(declare-fun singletonSeq!273 (Token!1198) BalanceConc!2562)

(assert (=> b!266819 (= lt!109287 (singletonSeq!273 (h!9207 tokens!465)))))

(declare-fun e!165783 () Bool)

(declare-fun lt!109292 () List!3818)

(declare-fun b!266820 () Bool)

(declare-fun lt!109295 () List!3818)

(declare-fun ++!988 (List!3818 List!3818) List!3818)

(assert (=> b!266820 (= e!165783 (not (= lt!109295 (++!988 lt!109293 lt!109292))))))

(declare-fun e!165798 () Bool)

(declare-fun separatorToken!170 () Token!1198)

(declare-fun tp!101845 () Bool)

(declare-fun b!266821 () Bool)

(declare-fun e!165800 () Bool)

(declare-fun inv!21 (TokenValue!749) Bool)

(assert (=> b!266821 (= e!165800 (and (inv!21 (value!25035 separatorToken!170)) e!165798 tp!101845))))

(declare-fun e!165794 () Bool)

(assert (=> b!266822 (= e!165794 (and tp!101843 tp!101849))))

(declare-fun res!122269 () Bool)

(assert (=> start!28606 (=> (not res!122269) (not e!165784))))

(get-info :version)

(assert (=> start!28606 (= res!122269 ((_ is Lexer!611) thiss!17480))))

(assert (=> start!28606 e!165784))

(assert (=> start!28606 true))

(declare-fun e!165788 () Bool)

(assert (=> start!28606 e!165788))

(declare-fun inv!4705 (Token!1198) Bool)

(assert (=> start!28606 (and (inv!4705 separatorToken!170) e!165800)))

(declare-fun e!165793 () Bool)

(assert (=> start!28606 e!165793))

(declare-fun b!266823 () Bool)

(declare-fun res!122265 () Bool)

(declare-fun e!165791 () Bool)

(assert (=> b!266823 (=> (not res!122265) (not e!165791))))

(assert (=> b!266823 (= res!122265 ((_ is Cons!3810) tokens!465))))

(declare-fun tp!101848 () Bool)

(declare-fun b!266824 () Bool)

(declare-fun e!165797 () Bool)

(assert (=> b!266824 (= e!165793 (and (inv!4705 (h!9207 tokens!465)) e!165797 tp!101848))))

(declare-fun b!266825 () Bool)

(declare-fun tp!101841 () Bool)

(declare-fun inv!4702 (String!4825) Bool)

(declare-fun inv!4706 (TokenValueInjection!1270) Bool)

(assert (=> b!266825 (= e!165798 (and tp!101841 (inv!4702 (tag!937 (rule!1312 separatorToken!170))) (inv!4706 (transformation!727 (rule!1312 separatorToken!170))) e!165794))))

(declare-fun b!266826 () Bool)

(declare-fun res!122264 () Bool)

(assert (=> b!266826 (=> (not res!122264) (not e!165791))))

(assert (=> b!266826 (= res!122264 (isSeparator!727 (rule!1312 separatorToken!170)))))

(declare-fun e!165782 () Bool)

(assert (=> b!266827 (= e!165782 (and tp!101850 tp!101851))))

(declare-fun b!266828 () Bool)

(declare-fun e!165795 () Bool)

(assert (=> b!266828 (= e!165791 e!165795)))

(declare-fun res!122272 () Bool)

(assert (=> b!266828 (=> (not res!122272) (not e!165795))))

(declare-fun lt!109289 () List!3818)

(assert (=> b!266828 (= res!122272 (= lt!109295 lt!109289))))

(declare-fun lt!109288 () BalanceConc!2562)

(declare-fun printWithSeparatorTokenWhenNeededRec!288 (LexerInterface!613 List!3819 BalanceConc!2562 Token!1198 Int) BalanceConc!2560)

(assert (=> b!266828 (= lt!109289 (list!1547 (printWithSeparatorTokenWhenNeededRec!288 thiss!17480 rules!1920 lt!109288 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!296 (LexerInterface!613 List!3819 List!3820 Token!1198) List!3818)

(assert (=> b!266828 (= lt!109295 (printWithSeparatorTokenWhenNeededList!296 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun e!165789 () Bool)

(declare-fun tp!101847 () Bool)

(declare-fun b!266829 () Bool)

(assert (=> b!266829 (= e!165789 (and tp!101847 (inv!4702 (tag!937 (rule!1312 (h!9207 tokens!465)))) (inv!4706 (transformation!727 (rule!1312 (h!9207 tokens!465)))) e!165782))))

(declare-fun b!266830 () Bool)

(declare-fun e!165792 () Bool)

(declare-fun tp!101842 () Bool)

(assert (=> b!266830 (= e!165788 (and e!165792 tp!101842))))

(declare-fun b!266831 () Bool)

(declare-fun res!122262 () Bool)

(assert (=> b!266831 (=> res!122262 e!165787)))

(assert (=> b!266831 (= res!122262 e!165783)))

(declare-fun res!122261 () Bool)

(assert (=> b!266831 (=> (not res!122261) (not e!165783))))

(declare-fun lt!109290 () List!3818)

(assert (=> b!266831 (= res!122261 (not (= lt!109295 lt!109290)))))

(declare-fun b!266832 () Bool)

(declare-fun res!122258 () Bool)

(assert (=> b!266832 (=> (not res!122258) (not e!165791))))

(declare-fun sepAndNonSepRulesDisjointChars!316 (List!3819 List!3819) Bool)

(assert (=> b!266832 (= res!122258 (sepAndNonSepRulesDisjointChars!316 rules!1920 rules!1920))))

(declare-fun b!266833 () Bool)

(declare-fun res!122268 () Bool)

(assert (=> b!266833 (=> (not res!122268) (not e!165791))))

(declare-fun rulesProduceIndividualToken!362 (LexerInterface!613 List!3819 Token!1198) Bool)

(assert (=> b!266833 (= res!122268 (rulesProduceIndividualToken!362 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!266834 () Bool)

(assert (=> b!266834 (= e!165801 (rulesProduceIndividualToken!362 thiss!17480 rules!1920 (h!9207 tokens!465)))))

(declare-fun e!165790 () Bool)

(assert (=> b!266835 (= e!165790 (and tp!101853 tp!101846))))

(declare-fun b!266836 () Bool)

(declare-fun res!122271 () Bool)

(assert (=> b!266836 (=> (not res!122271) (not e!165784))))

(declare-fun isEmpty!2398 (List!3819) Bool)

(assert (=> b!266836 (= res!122271 (not (isEmpty!2398 rules!1920)))))

(declare-fun b!266837 () Bool)

(declare-fun res!122260 () Bool)

(assert (=> b!266837 (=> (not res!122260) (not e!165795))))

(declare-fun seqFromList!821 (List!3818) BalanceConc!2560)

(assert (=> b!266837 (= res!122260 (= (list!1547 (seqFromList!821 lt!109295)) lt!109289))))

(declare-fun b!266838 () Bool)

(declare-fun tp!101844 () Bool)

(assert (=> b!266838 (= e!165792 (and tp!101844 (inv!4702 (tag!937 (h!9206 rules!1920))) (inv!4706 (transformation!727 (h!9206 rules!1920))) e!165790))))

(declare-fun b!266839 () Bool)

(declare-fun tp!101852 () Bool)

(assert (=> b!266839 (= e!165797 (and (inv!21 (value!25035 (h!9207 tokens!465))) e!165789 tp!101852))))

(declare-fun b!266840 () Bool)

(assert (=> b!266840 (= e!165795 (not e!165787))))

(declare-fun res!122266 () Bool)

(assert (=> b!266840 (=> res!122266 e!165787)))

(declare-fun seqFromList!822 (List!3820) BalanceConc!2562)

(assert (=> b!266840 (= res!122266 (not (= lt!109292 (list!1547 (printWithSeparatorTokenWhenNeededRec!288 thiss!17480 rules!1920 (seqFromList!822 (t!37804 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!109294 () List!3818)

(assert (=> b!266840 (= lt!109294 lt!109290)))

(declare-fun lt!109297 () List!3818)

(assert (=> b!266840 (= lt!109290 (++!988 lt!109293 lt!109297))))

(declare-fun lt!109298 () List!3818)

(assert (=> b!266840 (= lt!109294 (++!988 (++!988 lt!109293 lt!109298) lt!109292))))

(declare-datatypes ((Unit!4824 0))(
  ( (Unit!4825) )
))
(declare-fun lt!109286 () Unit!4824)

(declare-fun lemmaConcatAssociativity!424 (List!3818 List!3818 List!3818) Unit!4824)

(assert (=> b!266840 (= lt!109286 (lemmaConcatAssociativity!424 lt!109293 lt!109298 lt!109292))))

(declare-fun charsOf!372 (Token!1198) BalanceConc!2560)

(assert (=> b!266840 (= lt!109293 (list!1547 (charsOf!372 (h!9207 tokens!465))))))

(assert (=> b!266840 (= lt!109297 (++!988 lt!109298 lt!109292))))

(assert (=> b!266840 (= lt!109292 (printWithSeparatorTokenWhenNeededList!296 thiss!17480 rules!1920 (t!37804 tokens!465) separatorToken!170))))

(assert (=> b!266840 (= lt!109298 (list!1547 (charsOf!372 separatorToken!170)))))

(declare-fun b!266841 () Bool)

(declare-fun res!122259 () Bool)

(assert (=> b!266841 (=> (not res!122259) (not e!165791))))

(declare-fun lambda!8994 () Int)

(declare-fun forall!949 (List!3820 Int) Bool)

(assert (=> b!266841 (= res!122259 (forall!949 tokens!465 lambda!8994))))

(declare-fun b!266842 () Bool)

(assert (=> b!266842 (= e!165784 e!165791)))

(declare-fun res!122267 () Bool)

(assert (=> b!266842 (=> (not res!122267) (not e!165791))))

(declare-fun rulesProduceEachTokenIndividually!405 (LexerInterface!613 List!3819 BalanceConc!2562) Bool)

(assert (=> b!266842 (= res!122267 (rulesProduceEachTokenIndividually!405 thiss!17480 rules!1920 lt!109288))))

(assert (=> b!266842 (= lt!109288 (seqFromList!822 tokens!465))))

(assert (= (and start!28606 res!122269) b!266836))

(assert (= (and b!266836 res!122271) b!266818))

(assert (= (and b!266818 res!122263) b!266842))

(assert (= (and b!266842 res!122267) b!266833))

(assert (= (and b!266833 res!122268) b!266826))

(assert (= (and b!266826 res!122264) b!266841))

(assert (= (and b!266841 res!122259) b!266832))

(assert (= (and b!266832 res!122258) b!266823))

(assert (= (and b!266823 res!122265) b!266828))

(assert (= (and b!266828 res!122272) b!266837))

(assert (= (and b!266837 res!122260) b!266840))

(assert (= (and b!266840 (not res!122266)) b!266831))

(assert (= (and b!266831 res!122261) b!266820))

(assert (= (and b!266831 (not res!122262)) b!266819))

(assert (= (and b!266819 (not res!122270)) b!266834))

(assert (= b!266838 b!266835))

(assert (= b!266830 b!266838))

(assert (= (and start!28606 ((_ is Cons!3809) rules!1920)) b!266830))

(assert (= b!266825 b!266822))

(assert (= b!266821 b!266825))

(assert (= start!28606 b!266821))

(assert (= b!266829 b!266827))

(assert (= b!266839 b!266829))

(assert (= b!266824 b!266839))

(assert (= (and start!28606 ((_ is Cons!3810) tokens!465)) b!266824))

(declare-fun m!334523 () Bool)

(assert (=> b!266833 m!334523))

(declare-fun m!334525 () Bool)

(assert (=> b!266832 m!334525))

(declare-fun m!334527 () Bool)

(assert (=> b!266828 m!334527))

(assert (=> b!266828 m!334527))

(declare-fun m!334529 () Bool)

(assert (=> b!266828 m!334529))

(declare-fun m!334531 () Bool)

(assert (=> b!266828 m!334531))

(declare-fun m!334533 () Bool)

(assert (=> b!266821 m!334533))

(declare-fun m!334535 () Bool)

(assert (=> start!28606 m!334535))

(declare-fun m!334537 () Bool)

(assert (=> b!266838 m!334537))

(declare-fun m!334539 () Bool)

(assert (=> b!266838 m!334539))

(declare-fun m!334541 () Bool)

(assert (=> b!266836 m!334541))

(declare-fun m!334543 () Bool)

(assert (=> b!266837 m!334543))

(assert (=> b!266837 m!334543))

(declare-fun m!334545 () Bool)

(assert (=> b!266837 m!334545))

(declare-fun m!334547 () Bool)

(assert (=> b!266840 m!334547))

(declare-fun m!334549 () Bool)

(assert (=> b!266840 m!334549))

(declare-fun m!334551 () Bool)

(assert (=> b!266840 m!334551))

(declare-fun m!334553 () Bool)

(assert (=> b!266840 m!334553))

(declare-fun m!334555 () Bool)

(assert (=> b!266840 m!334555))

(declare-fun m!334557 () Bool)

(assert (=> b!266840 m!334557))

(assert (=> b!266840 m!334551))

(assert (=> b!266840 m!334547))

(declare-fun m!334559 () Bool)

(assert (=> b!266840 m!334559))

(declare-fun m!334561 () Bool)

(assert (=> b!266840 m!334561))

(assert (=> b!266840 m!334555))

(declare-fun m!334563 () Bool)

(assert (=> b!266840 m!334563))

(declare-fun m!334565 () Bool)

(assert (=> b!266840 m!334565))

(declare-fun m!334567 () Bool)

(assert (=> b!266840 m!334567))

(assert (=> b!266840 m!334561))

(declare-fun m!334569 () Bool)

(assert (=> b!266840 m!334569))

(assert (=> b!266840 m!334559))

(declare-fun m!334571 () Bool)

(assert (=> b!266840 m!334571))

(declare-fun m!334573 () Bool)

(assert (=> b!266824 m!334573))

(declare-fun m!334575 () Bool)

(assert (=> b!266839 m!334575))

(declare-fun m!334577 () Bool)

(assert (=> b!266820 m!334577))

(declare-fun m!334579 () Bool)

(assert (=> b!266841 m!334579))

(declare-fun m!334581 () Bool)

(assert (=> b!266825 m!334581))

(declare-fun m!334583 () Bool)

(assert (=> b!266825 m!334583))

(declare-fun m!334585 () Bool)

(assert (=> b!266819 m!334585))

(declare-fun m!334587 () Bool)

(assert (=> b!266819 m!334587))

(declare-fun m!334589 () Bool)

(assert (=> b!266819 m!334589))

(declare-fun m!334591 () Bool)

(assert (=> b!266819 m!334591))

(declare-fun m!334593 () Bool)

(assert (=> b!266819 m!334593))

(declare-fun m!334595 () Bool)

(assert (=> b!266829 m!334595))

(declare-fun m!334597 () Bool)

(assert (=> b!266829 m!334597))

(declare-fun m!334599 () Bool)

(assert (=> b!266842 m!334599))

(declare-fun m!334601 () Bool)

(assert (=> b!266842 m!334601))

(declare-fun m!334603 () Bool)

(assert (=> b!266818 m!334603))

(declare-fun m!334605 () Bool)

(assert (=> b!266834 m!334605))

(check-sat (not b!266836) (not b_next!9941) b_and!21055 (not b!266828) b_and!21049 (not b!266830) (not b!266841) (not b_next!9937) b_and!21053 (not b!266833) (not start!28606) b_and!21047 (not b_next!9945) (not b_next!9947) (not b!266839) (not b!266842) (not b!266824) b_and!21045 b_and!21051 (not b!266820) (not b!266840) (not b!266838) (not b!266837) (not b_next!9943) (not b_next!9939) (not b!266818) (not b!266825) (not b!266832) (not b!266821) (not b!266834) (not b!266819) (not b!266829))
(check-sat (not b_next!9941) b_and!21055 b_and!21045 b_and!21049 b_and!21051 (not b_next!9943) (not b_next!9939) (not b_next!9937) b_and!21053 b_and!21047 (not b_next!9945) (not b_next!9947))
(get-model)

(declare-fun d!76973 () Bool)

(declare-fun lt!109305 () Bool)

(declare-fun e!165817 () Bool)

(assert (=> d!76973 (= lt!109305 e!165817)))

(declare-fun res!122297 () Bool)

(assert (=> d!76973 (=> (not res!122297) (not e!165817))))

(declare-fun list!1550 (BalanceConc!2562) List!3820)

(declare-datatypes ((tuple2!4260 0))(
  ( (tuple2!4261 (_1!2346 BalanceConc!2562) (_2!2346 BalanceConc!2560)) )
))
(declare-fun lex!404 (LexerInterface!613 List!3819 BalanceConc!2560) tuple2!4260)

(assert (=> d!76973 (= res!122297 (= (list!1550 (_1!2346 (lex!404 thiss!17480 rules!1920 (print!338 thiss!17480 (singletonSeq!273 (h!9207 tokens!465)))))) (list!1550 (singletonSeq!273 (h!9207 tokens!465)))))))

(declare-fun e!165818 () Bool)

(assert (=> d!76973 (= lt!109305 e!165818)))

(declare-fun res!122298 () Bool)

(assert (=> d!76973 (=> (not res!122298) (not e!165818))))

(declare-fun lt!109306 () tuple2!4260)

(declare-fun size!3028 (BalanceConc!2562) Int)

(assert (=> d!76973 (= res!122298 (= (size!3028 (_1!2346 lt!109306)) 1))))

(assert (=> d!76973 (= lt!109306 (lex!404 thiss!17480 rules!1920 (print!338 thiss!17480 (singletonSeq!273 (h!9207 tokens!465)))))))

(assert (=> d!76973 (not (isEmpty!2398 rules!1920))))

(assert (=> d!76973 (= (rulesProduceIndividualToken!362 thiss!17480 rules!1920 (h!9207 tokens!465)) lt!109305)))

(declare-fun b!266867 () Bool)

(declare-fun res!122296 () Bool)

(assert (=> b!266867 (=> (not res!122296) (not e!165818))))

(declare-fun apply!757 (BalanceConc!2562 Int) Token!1198)

(assert (=> b!266867 (= res!122296 (= (apply!757 (_1!2346 lt!109306) 0) (h!9207 tokens!465)))))

(declare-fun b!266868 () Bool)

(declare-fun isEmpty!2400 (BalanceConc!2560) Bool)

(assert (=> b!266868 (= e!165818 (isEmpty!2400 (_2!2346 lt!109306)))))

(declare-fun b!266869 () Bool)

(assert (=> b!266869 (= e!165817 (isEmpty!2400 (_2!2346 (lex!404 thiss!17480 rules!1920 (print!338 thiss!17480 (singletonSeq!273 (h!9207 tokens!465)))))))))

(assert (= (and d!76973 res!122298) b!266867))

(assert (= (and b!266867 res!122296) b!266868))

(assert (= (and d!76973 res!122297) b!266869))

(assert (=> d!76973 m!334541))

(assert (=> d!76973 m!334591))

(declare-fun m!334629 () Bool)

(assert (=> d!76973 m!334629))

(assert (=> d!76973 m!334591))

(declare-fun m!334631 () Bool)

(assert (=> d!76973 m!334631))

(assert (=> d!76973 m!334591))

(declare-fun m!334633 () Bool)

(assert (=> d!76973 m!334633))

(assert (=> d!76973 m!334631))

(declare-fun m!334635 () Bool)

(assert (=> d!76973 m!334635))

(declare-fun m!334637 () Bool)

(assert (=> d!76973 m!334637))

(declare-fun m!334639 () Bool)

(assert (=> b!266867 m!334639))

(declare-fun m!334641 () Bool)

(assert (=> b!266868 m!334641))

(assert (=> b!266869 m!334591))

(assert (=> b!266869 m!334591))

(assert (=> b!266869 m!334631))

(assert (=> b!266869 m!334631))

(assert (=> b!266869 m!334635))

(declare-fun m!334643 () Bool)

(assert (=> b!266869 m!334643))

(assert (=> b!266834 d!76973))

(declare-fun d!76975 () Bool)

(declare-fun res!122303 () Bool)

(declare-fun e!165821 () Bool)

(assert (=> d!76975 (=> (not res!122303) (not e!165821))))

(declare-fun isEmpty!2402 (List!3818) Bool)

(assert (=> d!76975 (= res!122303 (not (isEmpty!2402 (originalCharacters!770 (h!9207 tokens!465)))))))

(assert (=> d!76975 (= (inv!4705 (h!9207 tokens!465)) e!165821)))

(declare-fun b!266874 () Bool)

(declare-fun res!122304 () Bool)

(assert (=> b!266874 (=> (not res!122304) (not e!165821))))

(declare-fun dynLambda!1940 (Int TokenValue!749) BalanceConc!2560)

(assert (=> b!266874 (= res!122304 (= (originalCharacters!770 (h!9207 tokens!465)) (list!1547 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465)))) (value!25035 (h!9207 tokens!465))))))))

(declare-fun b!266875 () Bool)

(declare-fun size!3029 (List!3818) Int)

(assert (=> b!266875 (= e!165821 (= (size!3025 (h!9207 tokens!465)) (size!3029 (originalCharacters!770 (h!9207 tokens!465)))))))

(assert (= (and d!76975 res!122303) b!266874))

(assert (= (and b!266874 res!122304) b!266875))

(declare-fun b_lambda!8361 () Bool)

(assert (=> (not b_lambda!8361) (not b!266874)))

(declare-fun t!37815 () Bool)

(declare-fun tb!14783 () Bool)

(assert (=> (and b!266827 (= (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465)))) (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465))))) t!37815) tb!14783))

(declare-fun b!266880 () Bool)

(declare-fun e!165824 () Bool)

(declare-fun tp!101859 () Bool)

(declare-fun inv!4709 (Conc!1276) Bool)

(assert (=> b!266880 (= e!165824 (and (inv!4709 (c!50467 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465)))) (value!25035 (h!9207 tokens!465))))) tp!101859))))

(declare-fun result!18344 () Bool)

(declare-fun inv!4710 (BalanceConc!2560) Bool)

(assert (=> tb!14783 (= result!18344 (and (inv!4710 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465)))) (value!25035 (h!9207 tokens!465)))) e!165824))))

(assert (= tb!14783 b!266880))

(declare-fun m!334645 () Bool)

(assert (=> b!266880 m!334645))

(declare-fun m!334647 () Bool)

(assert (=> tb!14783 m!334647))

(assert (=> b!266874 t!37815))

(declare-fun b_and!21063 () Bool)

(assert (= b_and!21047 (and (=> t!37815 result!18344) b_and!21063)))

(declare-fun tb!14785 () Bool)

(declare-fun t!37817 () Bool)

(assert (=> (and b!266822 (= (toChars!1317 (transformation!727 (rule!1312 separatorToken!170))) (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465))))) t!37817) tb!14785))

(declare-fun result!18348 () Bool)

(assert (= result!18348 result!18344))

(assert (=> b!266874 t!37817))

(declare-fun b_and!21065 () Bool)

(assert (= b_and!21051 (and (=> t!37817 result!18348) b_and!21065)))

(declare-fun tb!14787 () Bool)

(declare-fun t!37819 () Bool)

(assert (=> (and b!266835 (= (toChars!1317 (transformation!727 (h!9206 rules!1920))) (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465))))) t!37819) tb!14787))

(declare-fun result!18350 () Bool)

(assert (= result!18350 result!18344))

(assert (=> b!266874 t!37819))

(declare-fun b_and!21067 () Bool)

(assert (= b_and!21055 (and (=> t!37819 result!18350) b_and!21067)))

(declare-fun m!334649 () Bool)

(assert (=> d!76975 m!334649))

(declare-fun m!334651 () Bool)

(assert (=> b!266874 m!334651))

(assert (=> b!266874 m!334651))

(declare-fun m!334653 () Bool)

(assert (=> b!266874 m!334653))

(declare-fun m!334655 () Bool)

(assert (=> b!266875 m!334655))

(assert (=> b!266824 d!76975))

(declare-fun d!76977 () Bool)

(declare-fun lt!109307 () Bool)

(declare-fun e!165825 () Bool)

(assert (=> d!76977 (= lt!109307 e!165825)))

(declare-fun res!122306 () Bool)

(assert (=> d!76977 (=> (not res!122306) (not e!165825))))

(assert (=> d!76977 (= res!122306 (= (list!1550 (_1!2346 (lex!404 thiss!17480 rules!1920 (print!338 thiss!17480 (singletonSeq!273 separatorToken!170))))) (list!1550 (singletonSeq!273 separatorToken!170))))))

(declare-fun e!165826 () Bool)

(assert (=> d!76977 (= lt!109307 e!165826)))

(declare-fun res!122307 () Bool)

(assert (=> d!76977 (=> (not res!122307) (not e!165826))))

(declare-fun lt!109308 () tuple2!4260)

(assert (=> d!76977 (= res!122307 (= (size!3028 (_1!2346 lt!109308)) 1))))

(assert (=> d!76977 (= lt!109308 (lex!404 thiss!17480 rules!1920 (print!338 thiss!17480 (singletonSeq!273 separatorToken!170))))))

(assert (=> d!76977 (not (isEmpty!2398 rules!1920))))

(assert (=> d!76977 (= (rulesProduceIndividualToken!362 thiss!17480 rules!1920 separatorToken!170) lt!109307)))

(declare-fun b!266881 () Bool)

(declare-fun res!122305 () Bool)

(assert (=> b!266881 (=> (not res!122305) (not e!165826))))

(assert (=> b!266881 (= res!122305 (= (apply!757 (_1!2346 lt!109308) 0) separatorToken!170))))

(declare-fun b!266882 () Bool)

(assert (=> b!266882 (= e!165826 (isEmpty!2400 (_2!2346 lt!109308)))))

(declare-fun b!266883 () Bool)

(assert (=> b!266883 (= e!165825 (isEmpty!2400 (_2!2346 (lex!404 thiss!17480 rules!1920 (print!338 thiss!17480 (singletonSeq!273 separatorToken!170))))))))

(assert (= (and d!76977 res!122307) b!266881))

(assert (= (and b!266881 res!122305) b!266882))

(assert (= (and d!76977 res!122306) b!266883))

(assert (=> d!76977 m!334541))

(declare-fun m!334657 () Bool)

(assert (=> d!76977 m!334657))

(declare-fun m!334659 () Bool)

(assert (=> d!76977 m!334659))

(assert (=> d!76977 m!334657))

(declare-fun m!334661 () Bool)

(assert (=> d!76977 m!334661))

(assert (=> d!76977 m!334657))

(declare-fun m!334663 () Bool)

(assert (=> d!76977 m!334663))

(assert (=> d!76977 m!334661))

(declare-fun m!334665 () Bool)

(assert (=> d!76977 m!334665))

(declare-fun m!334667 () Bool)

(assert (=> d!76977 m!334667))

(declare-fun m!334669 () Bool)

(assert (=> b!266881 m!334669))

(declare-fun m!334671 () Bool)

(assert (=> b!266882 m!334671))

(assert (=> b!266883 m!334657))

(assert (=> b!266883 m!334657))

(assert (=> b!266883 m!334661))

(assert (=> b!266883 m!334661))

(assert (=> b!266883 m!334665))

(declare-fun m!334673 () Bool)

(assert (=> b!266883 m!334673))

(assert (=> b!266833 d!76977))

(declare-fun d!76979 () Bool)

(declare-fun res!122308 () Bool)

(declare-fun e!165827 () Bool)

(assert (=> d!76979 (=> (not res!122308) (not e!165827))))

(assert (=> d!76979 (= res!122308 (not (isEmpty!2402 (originalCharacters!770 separatorToken!170))))))

(assert (=> d!76979 (= (inv!4705 separatorToken!170) e!165827)))

(declare-fun b!266884 () Bool)

(declare-fun res!122309 () Bool)

(assert (=> b!266884 (=> (not res!122309) (not e!165827))))

(assert (=> b!266884 (= res!122309 (= (originalCharacters!770 separatorToken!170) (list!1547 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 separatorToken!170))) (value!25035 separatorToken!170)))))))

(declare-fun b!266885 () Bool)

(assert (=> b!266885 (= e!165827 (= (size!3025 separatorToken!170) (size!3029 (originalCharacters!770 separatorToken!170))))))

(assert (= (and d!76979 res!122308) b!266884))

(assert (= (and b!266884 res!122309) b!266885))

(declare-fun b_lambda!8363 () Bool)

(assert (=> (not b_lambda!8363) (not b!266884)))

(declare-fun tb!14789 () Bool)

(declare-fun t!37821 () Bool)

(assert (=> (and b!266827 (= (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465)))) (toChars!1317 (transformation!727 (rule!1312 separatorToken!170)))) t!37821) tb!14789))

(declare-fun b!266886 () Bool)

(declare-fun e!165828 () Bool)

(declare-fun tp!101860 () Bool)

(assert (=> b!266886 (= e!165828 (and (inv!4709 (c!50467 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 separatorToken!170))) (value!25035 separatorToken!170)))) tp!101860))))

(declare-fun result!18352 () Bool)

(assert (=> tb!14789 (= result!18352 (and (inv!4710 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 separatorToken!170))) (value!25035 separatorToken!170))) e!165828))))

(assert (= tb!14789 b!266886))

(declare-fun m!334675 () Bool)

(assert (=> b!266886 m!334675))

(declare-fun m!334677 () Bool)

(assert (=> tb!14789 m!334677))

(assert (=> b!266884 t!37821))

(declare-fun b_and!21069 () Bool)

(assert (= b_and!21063 (and (=> t!37821 result!18352) b_and!21069)))

(declare-fun t!37823 () Bool)

(declare-fun tb!14791 () Bool)

(assert (=> (and b!266822 (= (toChars!1317 (transformation!727 (rule!1312 separatorToken!170))) (toChars!1317 (transformation!727 (rule!1312 separatorToken!170)))) t!37823) tb!14791))

(declare-fun result!18354 () Bool)

(assert (= result!18354 result!18352))

(assert (=> b!266884 t!37823))

(declare-fun b_and!21071 () Bool)

(assert (= b_and!21065 (and (=> t!37823 result!18354) b_and!21071)))

(declare-fun tb!14793 () Bool)

(declare-fun t!37825 () Bool)

(assert (=> (and b!266835 (= (toChars!1317 (transformation!727 (h!9206 rules!1920))) (toChars!1317 (transformation!727 (rule!1312 separatorToken!170)))) t!37825) tb!14793))

(declare-fun result!18356 () Bool)

(assert (= result!18356 result!18352))

(assert (=> b!266884 t!37825))

(declare-fun b_and!21073 () Bool)

(assert (= b_and!21067 (and (=> t!37825 result!18356) b_and!21073)))

(declare-fun m!334679 () Bool)

(assert (=> d!76979 m!334679))

(declare-fun m!334681 () Bool)

(assert (=> b!266884 m!334681))

(assert (=> b!266884 m!334681))

(declare-fun m!334683 () Bool)

(assert (=> b!266884 m!334683))

(declare-fun m!334685 () Bool)

(assert (=> b!266885 m!334685))

(assert (=> start!28606 d!76979))

(declare-fun d!76981 () Bool)

(declare-fun list!1551 (Conc!1276) List!3818)

(assert (=> d!76981 (= (list!1547 (seqFromList!821 lt!109295)) (list!1551 (c!50467 (seqFromList!821 lt!109295))))))

(declare-fun bs!29360 () Bool)

(assert (= bs!29360 d!76981))

(declare-fun m!334687 () Bool)

(assert (=> bs!29360 m!334687))

(assert (=> b!266837 d!76981))

(declare-fun d!76983 () Bool)

(declare-fun fromListB!311 (List!3818) BalanceConc!2560)

(assert (=> d!76983 (= (seqFromList!821 lt!109295) (fromListB!311 lt!109295))))

(declare-fun bs!29361 () Bool)

(assert (= bs!29361 d!76983))

(declare-fun m!334689 () Bool)

(assert (=> bs!29361 m!334689))

(assert (=> b!266837 d!76983))

(declare-fun d!76985 () Bool)

(assert (=> d!76985 (= (inv!4702 (tag!937 (rule!1312 separatorToken!170))) (= (mod (str.len (value!25034 (tag!937 (rule!1312 separatorToken!170)))) 2) 0))))

(assert (=> b!266825 d!76985))

(declare-fun d!76987 () Bool)

(declare-fun res!122312 () Bool)

(declare-fun e!165831 () Bool)

(assert (=> d!76987 (=> (not res!122312) (not e!165831))))

(declare-fun semiInverseModEq!255 (Int Int) Bool)

(assert (=> d!76987 (= res!122312 (semiInverseModEq!255 (toChars!1317 (transformation!727 (rule!1312 separatorToken!170))) (toValue!1458 (transformation!727 (rule!1312 separatorToken!170)))))))

(assert (=> d!76987 (= (inv!4706 (transformation!727 (rule!1312 separatorToken!170))) e!165831)))

(declare-fun b!266889 () Bool)

(declare-fun equivClasses!238 (Int Int) Bool)

(assert (=> b!266889 (= e!165831 (equivClasses!238 (toChars!1317 (transformation!727 (rule!1312 separatorToken!170))) (toValue!1458 (transformation!727 (rule!1312 separatorToken!170)))))))

(assert (= (and d!76987 res!122312) b!266889))

(declare-fun m!334691 () Bool)

(assert (=> d!76987 m!334691))

(declare-fun m!334693 () Bool)

(assert (=> b!266889 m!334693))

(assert (=> b!266825 d!76987))

(declare-fun d!76989 () Bool)

(assert (=> d!76989 (= (isEmpty!2398 rules!1920) ((_ is Nil!3809) rules!1920))))

(assert (=> b!266836 d!76989))

(declare-fun d!76991 () Bool)

(assert (=> d!76991 (= (inv!4702 (tag!937 (rule!1312 (h!9207 tokens!465)))) (= (mod (str.len (value!25034 (tag!937 (rule!1312 (h!9207 tokens!465))))) 2) 0))))

(assert (=> b!266829 d!76991))

(declare-fun d!76993 () Bool)

(declare-fun res!122313 () Bool)

(declare-fun e!165832 () Bool)

(assert (=> d!76993 (=> (not res!122313) (not e!165832))))

(assert (=> d!76993 (= res!122313 (semiInverseModEq!255 (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465)))) (toValue!1458 (transformation!727 (rule!1312 (h!9207 tokens!465))))))))

(assert (=> d!76993 (= (inv!4706 (transformation!727 (rule!1312 (h!9207 tokens!465)))) e!165832)))

(declare-fun b!266890 () Bool)

(assert (=> b!266890 (= e!165832 (equivClasses!238 (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465)))) (toValue!1458 (transformation!727 (rule!1312 (h!9207 tokens!465))))))))

(assert (= (and d!76993 res!122313) b!266890))

(declare-fun m!334695 () Bool)

(assert (=> d!76993 m!334695))

(declare-fun m!334697 () Bool)

(assert (=> b!266890 m!334697))

(assert (=> b!266829 d!76993))

(declare-fun d!76995 () Bool)

(declare-fun res!122316 () Bool)

(declare-fun e!165835 () Bool)

(assert (=> d!76995 (=> (not res!122316) (not e!165835))))

(declare-fun rulesValid!220 (LexerInterface!613 List!3819) Bool)

(assert (=> d!76995 (= res!122316 (rulesValid!220 thiss!17480 rules!1920))))

(assert (=> d!76995 (= (rulesInvariant!579 thiss!17480 rules!1920) e!165835)))

(declare-fun b!266893 () Bool)

(declare-datatypes ((List!3821 0))(
  ( (Nil!3811) (Cons!3811 (h!9208 String!4825) (t!37869 List!3821)) )
))
(declare-fun noDuplicateTag!220 (LexerInterface!613 List!3819 List!3821) Bool)

(assert (=> b!266893 (= e!165835 (noDuplicateTag!220 thiss!17480 rules!1920 Nil!3811))))

(assert (= (and d!76995 res!122316) b!266893))

(declare-fun m!334699 () Bool)

(assert (=> d!76995 m!334699))

(declare-fun m!334701 () Bool)

(assert (=> b!266893 m!334701))

(assert (=> b!266818 d!76995))

(declare-fun d!76997 () Bool)

(declare-fun lt!109326 () BalanceConc!2560)

(declare-fun printListTailRec!125 (LexerInterface!613 List!3820 List!3818) List!3818)

(declare-fun dropList!160 (BalanceConc!2562 Int) List!3820)

(assert (=> d!76997 (= (list!1547 lt!109326) (printListTailRec!125 thiss!17480 (dropList!160 lt!109287 0) (list!1547 (BalanceConc!2561 Empty!1276))))))

(declare-fun e!165841 () BalanceConc!2560)

(assert (=> d!76997 (= lt!109326 e!165841)))

(declare-fun c!50474 () Bool)

(assert (=> d!76997 (= c!50474 (>= 0 (size!3028 lt!109287)))))

(declare-fun e!165840 () Bool)

(assert (=> d!76997 e!165840))

(declare-fun res!122319 () Bool)

(assert (=> d!76997 (=> (not res!122319) (not e!165840))))

(assert (=> d!76997 (= res!122319 (>= 0 0))))

(assert (=> d!76997 (= (printTailRec!301 thiss!17480 lt!109287 0 (BalanceConc!2561 Empty!1276)) lt!109326)))

(declare-fun b!266900 () Bool)

(assert (=> b!266900 (= e!165840 (<= 0 (size!3028 lt!109287)))))

(declare-fun b!266901 () Bool)

(assert (=> b!266901 (= e!165841 (BalanceConc!2561 Empty!1276))))

(declare-fun b!266902 () Bool)

(declare-fun ++!990 (BalanceConc!2560 BalanceConc!2560) BalanceConc!2560)

(assert (=> b!266902 (= e!165841 (printTailRec!301 thiss!17480 lt!109287 (+ 0 1) (++!990 (BalanceConc!2561 Empty!1276) (charsOf!372 (apply!757 lt!109287 0)))))))

(declare-fun lt!109325 () List!3820)

(assert (=> b!266902 (= lt!109325 (list!1550 lt!109287))))

(declare-fun lt!109324 () Unit!4824)

(declare-fun lemmaDropApply!200 (List!3820 Int) Unit!4824)

(assert (=> b!266902 (= lt!109324 (lemmaDropApply!200 lt!109325 0))))

(declare-fun head!884 (List!3820) Token!1198)

(declare-fun drop!213 (List!3820 Int) List!3820)

(declare-fun apply!758 (List!3820 Int) Token!1198)

(assert (=> b!266902 (= (head!884 (drop!213 lt!109325 0)) (apply!758 lt!109325 0))))

(declare-fun lt!109329 () Unit!4824)

(assert (=> b!266902 (= lt!109329 lt!109324)))

(declare-fun lt!109327 () List!3820)

(assert (=> b!266902 (= lt!109327 (list!1550 lt!109287))))

(declare-fun lt!109323 () Unit!4824)

(declare-fun lemmaDropTail!192 (List!3820 Int) Unit!4824)

(assert (=> b!266902 (= lt!109323 (lemmaDropTail!192 lt!109327 0))))

(declare-fun tail!474 (List!3820) List!3820)

(assert (=> b!266902 (= (tail!474 (drop!213 lt!109327 0)) (drop!213 lt!109327 (+ 0 1)))))

(declare-fun lt!109328 () Unit!4824)

(assert (=> b!266902 (= lt!109328 lt!109323)))

(assert (= (and d!76997 res!122319) b!266900))

(assert (= (and d!76997 c!50474) b!266901))

(assert (= (and d!76997 (not c!50474)) b!266902))

(declare-fun m!334703 () Bool)

(assert (=> d!76997 m!334703))

(declare-fun m!334705 () Bool)

(assert (=> d!76997 m!334705))

(assert (=> d!76997 m!334703))

(assert (=> d!76997 m!334705))

(declare-fun m!334707 () Bool)

(assert (=> d!76997 m!334707))

(declare-fun m!334709 () Bool)

(assert (=> d!76997 m!334709))

(declare-fun m!334711 () Bool)

(assert (=> d!76997 m!334711))

(assert (=> b!266900 m!334709))

(declare-fun m!334713 () Bool)

(assert (=> b!266902 m!334713))

(declare-fun m!334715 () Bool)

(assert (=> b!266902 m!334715))

(assert (=> b!266902 m!334713))

(declare-fun m!334717 () Bool)

(assert (=> b!266902 m!334717))

(declare-fun m!334719 () Bool)

(assert (=> b!266902 m!334719))

(declare-fun m!334721 () Bool)

(assert (=> b!266902 m!334721))

(declare-fun m!334723 () Bool)

(assert (=> b!266902 m!334723))

(declare-fun m!334725 () Bool)

(assert (=> b!266902 m!334725))

(assert (=> b!266902 m!334725))

(declare-fun m!334727 () Bool)

(assert (=> b!266902 m!334727))

(assert (=> b!266902 m!334721))

(declare-fun m!334729 () Bool)

(assert (=> b!266902 m!334729))

(declare-fun m!334731 () Bool)

(assert (=> b!266902 m!334731))

(declare-fun m!334733 () Bool)

(assert (=> b!266902 m!334733))

(declare-fun m!334735 () Bool)

(assert (=> b!266902 m!334735))

(declare-fun m!334737 () Bool)

(assert (=> b!266902 m!334737))

(assert (=> b!266902 m!334727))

(assert (=> b!266902 m!334735))

(assert (=> b!266819 d!76997))

(declare-fun d!76999 () Bool)

(assert (=> d!76999 (= (list!1547 lt!109291) (list!1551 (c!50467 lt!109291)))))

(declare-fun bs!29362 () Bool)

(assert (= bs!29362 d!76999))

(declare-fun m!334739 () Bool)

(assert (=> bs!29362 m!334739))

(assert (=> b!266819 d!76999))

(declare-fun d!77001 () Bool)

(declare-fun lt!109332 () BalanceConc!2560)

(assert (=> d!77001 (= (list!1547 lt!109332) (printList!289 thiss!17480 (list!1550 lt!109287)))))

(assert (=> d!77001 (= lt!109332 (printTailRec!301 thiss!17480 lt!109287 0 (BalanceConc!2561 Empty!1276)))))

(assert (=> d!77001 (= (print!338 thiss!17480 lt!109287) lt!109332)))

(declare-fun bs!29363 () Bool)

(assert (= bs!29363 d!77001))

(declare-fun m!334741 () Bool)

(assert (=> bs!29363 m!334741))

(assert (=> bs!29363 m!334733))

(assert (=> bs!29363 m!334733))

(declare-fun m!334743 () Bool)

(assert (=> bs!29363 m!334743))

(assert (=> bs!29363 m!334585))

(assert (=> b!266819 d!77001))

(declare-fun d!77003 () Bool)

(declare-fun e!165844 () Bool)

(assert (=> d!77003 e!165844))

(declare-fun res!122322 () Bool)

(assert (=> d!77003 (=> (not res!122322) (not e!165844))))

(declare-fun lt!109335 () BalanceConc!2562)

(assert (=> d!77003 (= res!122322 (= (list!1550 lt!109335) (Cons!3810 (h!9207 tokens!465) Nil!3810)))))

(declare-fun singleton!109 (Token!1198) BalanceConc!2562)

(assert (=> d!77003 (= lt!109335 (singleton!109 (h!9207 tokens!465)))))

(assert (=> d!77003 (= (singletonSeq!273 (h!9207 tokens!465)) lt!109335)))

(declare-fun b!266905 () Bool)

(declare-fun isBalanced!344 (Conc!1277) Bool)

(assert (=> b!266905 (= e!165844 (isBalanced!344 (c!50469 lt!109335)))))

(assert (= (and d!77003 res!122322) b!266905))

(declare-fun m!334745 () Bool)

(assert (=> d!77003 m!334745))

(declare-fun m!334747 () Bool)

(assert (=> d!77003 m!334747))

(declare-fun m!334749 () Bool)

(assert (=> b!266905 m!334749))

(assert (=> b!266819 d!77003))

(declare-fun d!77005 () Bool)

(declare-fun c!50477 () Bool)

(assert (=> d!77005 (= c!50477 ((_ is Cons!3810) (Cons!3810 (h!9207 tokens!465) Nil!3810)))))

(declare-fun e!165847 () List!3818)

(assert (=> d!77005 (= (printList!289 thiss!17480 (Cons!3810 (h!9207 tokens!465) Nil!3810)) e!165847)))

(declare-fun b!266910 () Bool)

(assert (=> b!266910 (= e!165847 (++!988 (list!1547 (charsOf!372 (h!9207 (Cons!3810 (h!9207 tokens!465) Nil!3810)))) (printList!289 thiss!17480 (t!37804 (Cons!3810 (h!9207 tokens!465) Nil!3810)))))))

(declare-fun b!266911 () Bool)

(assert (=> b!266911 (= e!165847 Nil!3808)))

(assert (= (and d!77005 c!50477) b!266910))

(assert (= (and d!77005 (not c!50477)) b!266911))

(declare-fun m!334751 () Bool)

(assert (=> b!266910 m!334751))

(assert (=> b!266910 m!334751))

(declare-fun m!334753 () Bool)

(assert (=> b!266910 m!334753))

(declare-fun m!334755 () Bool)

(assert (=> b!266910 m!334755))

(assert (=> b!266910 m!334753))

(assert (=> b!266910 m!334755))

(declare-fun m!334757 () Bool)

(assert (=> b!266910 m!334757))

(assert (=> b!266819 d!77005))

(declare-fun b!266921 () Bool)

(declare-fun e!165853 () List!3818)

(assert (=> b!266921 (= e!165853 (Cons!3808 (h!9205 lt!109298) (++!988 (t!37802 lt!109298) lt!109292)))))

(declare-fun lt!109338 () List!3818)

(declare-fun e!165852 () Bool)

(declare-fun b!266923 () Bool)

(assert (=> b!266923 (= e!165852 (or (not (= lt!109292 Nil!3808)) (= lt!109338 lt!109298)))))

(declare-fun b!266922 () Bool)

(declare-fun res!122328 () Bool)

(assert (=> b!266922 (=> (not res!122328) (not e!165852))))

(assert (=> b!266922 (= res!122328 (= (size!3029 lt!109338) (+ (size!3029 lt!109298) (size!3029 lt!109292))))))

(declare-fun b!266920 () Bool)

(assert (=> b!266920 (= e!165853 lt!109292)))

(declare-fun d!77007 () Bool)

(assert (=> d!77007 e!165852))

(declare-fun res!122327 () Bool)

(assert (=> d!77007 (=> (not res!122327) (not e!165852))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!543 (List!3818) (InoxSet C!2824))

(assert (=> d!77007 (= res!122327 (= (content!543 lt!109338) ((_ map or) (content!543 lt!109298) (content!543 lt!109292))))))

(assert (=> d!77007 (= lt!109338 e!165853)))

(declare-fun c!50480 () Bool)

(assert (=> d!77007 (= c!50480 ((_ is Nil!3808) lt!109298))))

(assert (=> d!77007 (= (++!988 lt!109298 lt!109292) lt!109338)))

(assert (= (and d!77007 c!50480) b!266920))

(assert (= (and d!77007 (not c!50480)) b!266921))

(assert (= (and d!77007 res!122327) b!266922))

(assert (= (and b!266922 res!122328) b!266923))

(declare-fun m!334759 () Bool)

(assert (=> b!266921 m!334759))

(declare-fun m!334761 () Bool)

(assert (=> b!266922 m!334761))

(declare-fun m!334763 () Bool)

(assert (=> b!266922 m!334763))

(declare-fun m!334765 () Bool)

(assert (=> b!266922 m!334765))

(declare-fun m!334767 () Bool)

(assert (=> d!77007 m!334767))

(declare-fun m!334769 () Bool)

(assert (=> d!77007 m!334769))

(declare-fun m!334771 () Bool)

(assert (=> d!77007 m!334771))

(assert (=> b!266840 d!77007))

(declare-fun d!77009 () Bool)

(declare-fun fromListB!312 (List!3820) BalanceConc!2562)

(assert (=> d!77009 (= (seqFromList!822 (t!37804 tokens!465)) (fromListB!312 (t!37804 tokens!465)))))

(declare-fun bs!29364 () Bool)

(assert (= bs!29364 d!77009))

(declare-fun m!334773 () Bool)

(assert (=> bs!29364 m!334773))

(assert (=> b!266840 d!77009))

(declare-fun d!77011 () Bool)

(assert (=> d!77011 (= (list!1547 (charsOf!372 separatorToken!170)) (list!1551 (c!50467 (charsOf!372 separatorToken!170))))))

(declare-fun bs!29365 () Bool)

(assert (= bs!29365 d!77011))

(declare-fun m!334775 () Bool)

(assert (=> bs!29365 m!334775))

(assert (=> b!266840 d!77011))

(declare-fun d!77013 () Bool)

(assert (=> d!77013 (= (list!1547 (printWithSeparatorTokenWhenNeededRec!288 thiss!17480 rules!1920 (seqFromList!822 (t!37804 tokens!465)) separatorToken!170 0)) (list!1551 (c!50467 (printWithSeparatorTokenWhenNeededRec!288 thiss!17480 rules!1920 (seqFromList!822 (t!37804 tokens!465)) separatorToken!170 0))))))

(declare-fun bs!29366 () Bool)

(assert (= bs!29366 d!77013))

(declare-fun m!334777 () Bool)

(assert (=> bs!29366 m!334777))

(assert (=> b!266840 d!77013))

(declare-fun bs!29391 () Bool)

(declare-fun d!77015 () Bool)

(assert (= bs!29391 (and d!77015 b!266841)))

(declare-fun lambda!9011 () Int)

(assert (=> bs!29391 (= lambda!9011 lambda!8994)))

(declare-fun bs!29392 () Bool)

(declare-fun b!267078 () Bool)

(assert (= bs!29392 (and b!267078 b!266841)))

(declare-fun lambda!9012 () Int)

(assert (=> bs!29392 (not (= lambda!9012 lambda!8994))))

(declare-fun bs!29393 () Bool)

(assert (= bs!29393 (and b!267078 d!77015)))

(assert (=> bs!29393 (not (= lambda!9012 lambda!9011))))

(declare-fun b!267099 () Bool)

(declare-fun e!165965 () Bool)

(assert (=> b!267099 (= e!165965 true)))

(declare-fun b!267098 () Bool)

(declare-fun e!165964 () Bool)

(assert (=> b!267098 (= e!165964 e!165965)))

(declare-fun b!267097 () Bool)

(declare-fun e!165963 () Bool)

(assert (=> b!267097 (= e!165963 e!165964)))

(assert (=> b!267078 e!165963))

(assert (= b!267098 b!267099))

(assert (= b!267097 b!267098))

(assert (= (and b!267078 ((_ is Cons!3809) rules!1920)) b!267097))

(declare-fun order!2913 () Int)

(declare-fun order!2915 () Int)

(declare-fun dynLambda!1941 (Int Int) Int)

(declare-fun dynLambda!1942 (Int Int) Int)

(assert (=> b!267099 (< (dynLambda!1941 order!2913 (toValue!1458 (transformation!727 (h!9206 rules!1920)))) (dynLambda!1942 order!2915 lambda!9012))))

(declare-fun order!2917 () Int)

(declare-fun dynLambda!1943 (Int Int) Int)

(assert (=> b!267099 (< (dynLambda!1943 order!2917 (toChars!1317 (transformation!727 (h!9206 rules!1920)))) (dynLambda!1942 order!2915 lambda!9012))))

(assert (=> b!267078 true))

(declare-fun b!267079 () Bool)

(declare-fun e!165955 () Bool)

(declare-datatypes ((tuple2!4264 0))(
  ( (tuple2!4265 (_1!2348 Token!1198) (_2!2348 BalanceConc!2560)) )
))
(declare-datatypes ((Option!802 0))(
  ( (None!801) (Some!801 (v!14664 tuple2!4264)) )
))
(declare-fun lt!109476 () Option!802)

(declare-fun call!14511 () Token!1198)

(assert (=> b!267079 (= e!165955 (not (= (_1!2348 (v!14664 lt!109476)) call!14511)))))

(declare-fun bm!14504 () Bool)

(declare-fun call!14509 () BalanceConc!2560)

(declare-fun call!14512 () BalanceConc!2560)

(assert (=> bm!14504 (= call!14509 call!14512)))

(declare-fun b!267080 () Bool)

(declare-fun c!50528 () Bool)

(assert (=> b!267080 (= c!50528 e!165955)))

(declare-fun res!122373 () Bool)

(assert (=> b!267080 (=> (not res!122373) (not e!165955))))

(assert (=> b!267080 (= res!122373 ((_ is Some!801) lt!109476))))

(declare-fun e!165952 () BalanceConc!2560)

(declare-fun e!165954 () BalanceConc!2560)

(assert (=> b!267080 (= e!165952 e!165954)))

(declare-fun b!267081 () Bool)

(declare-fun call!14513 () BalanceConc!2560)

(declare-fun lt!109471 () BalanceConc!2560)

(assert (=> b!267081 (= e!165954 (++!990 call!14513 lt!109471))))

(declare-fun b!267082 () Bool)

(declare-fun e!165956 () BalanceConc!2560)

(declare-fun call!14510 () Token!1198)

(assert (=> b!267082 (= e!165956 (charsOf!372 call!14510))))

(declare-fun b!267083 () Bool)

(assert (=> b!267083 (= e!165956 call!14512)))

(declare-fun b!267084 () Bool)

(assert (=> b!267084 (= e!165954 (BalanceConc!2561 Empty!1276))))

(assert (=> b!267084 (= (print!338 thiss!17480 (singletonSeq!273 call!14510)) (printTailRec!301 thiss!17480 (singletonSeq!273 call!14510) 0 (BalanceConc!2561 Empty!1276)))))

(declare-fun lt!109474 () Unit!4824)

(declare-fun Unit!4832 () Unit!4824)

(assert (=> b!267084 (= lt!109474 Unit!4832)))

(declare-fun lt!109466 () Unit!4824)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!108 (LexerInterface!613 List!3819 List!3818 List!3818) Unit!4824)

(assert (=> b!267084 (= lt!109466 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!108 thiss!17480 rules!1920 (list!1547 call!14509) (list!1547 lt!109471)))))

(assert (=> b!267084 false))

(declare-fun lt!109472 () Unit!4824)

(declare-fun Unit!4833 () Unit!4824)

(assert (=> b!267084 (= lt!109472 Unit!4833)))

(declare-fun b!267085 () Bool)

(declare-fun e!165953 () BalanceConc!2560)

(assert (=> b!267085 (= e!165953 (BalanceConc!2561 Empty!1276))))

(declare-fun b!267086 () Bool)

(declare-fun e!165950 () Bool)

(assert (=> b!267086 (= e!165950 (<= 0 (size!3028 (seqFromList!822 (t!37804 tokens!465)))))))

(declare-fun b!267087 () Bool)

(assert (=> b!267087 (= e!165952 call!14513)))

(declare-fun b!267088 () Bool)

(declare-fun e!165951 () Bool)

(assert (=> b!267088 (= e!165951 (= (_1!2348 (v!14664 lt!109476)) (apply!757 (seqFromList!822 (t!37804 tokens!465)) 0)))))

(declare-fun bm!14505 () Bool)

(assert (=> bm!14505 (= call!14511 (apply!757 (seqFromList!822 (t!37804 tokens!465)) 0))))

(declare-fun bm!14506 () Bool)

(declare-fun c!50525 () Bool)

(declare-fun c!50526 () Bool)

(assert (=> bm!14506 (= c!50525 c!50526)))

(assert (=> bm!14506 (= call!14513 (++!990 e!165956 (ite c!50526 lt!109471 call!14509)))))

(assert (=> b!267078 (= e!165953 e!165952)))

(declare-fun lt!109467 () List!3820)

(assert (=> b!267078 (= lt!109467 (list!1550 (seqFromList!822 (t!37804 tokens!465))))))

(declare-fun lt!109470 () Unit!4824)

(assert (=> b!267078 (= lt!109470 (lemmaDropApply!200 lt!109467 0))))

(assert (=> b!267078 (= (head!884 (drop!213 lt!109467 0)) (apply!758 lt!109467 0))))

(declare-fun lt!109475 () Unit!4824)

(assert (=> b!267078 (= lt!109475 lt!109470)))

(declare-fun lt!109468 () List!3820)

(assert (=> b!267078 (= lt!109468 (list!1550 (seqFromList!822 (t!37804 tokens!465))))))

(declare-fun lt!109477 () Unit!4824)

(assert (=> b!267078 (= lt!109477 (lemmaDropTail!192 lt!109468 0))))

(assert (=> b!267078 (= (tail!474 (drop!213 lt!109468 0)) (drop!213 lt!109468 (+ 0 1)))))

(declare-fun lt!109478 () Unit!4824)

(assert (=> b!267078 (= lt!109478 lt!109477)))

(declare-fun lt!109469 () Unit!4824)

(declare-fun forallContained!282 (List!3820 Int Token!1198) Unit!4824)

(assert (=> b!267078 (= lt!109469 (forallContained!282 (list!1550 (seqFromList!822 (t!37804 tokens!465))) lambda!9012 (apply!757 (seqFromList!822 (t!37804 tokens!465)) 0)))))

(assert (=> b!267078 (= lt!109471 (printWithSeparatorTokenWhenNeededRec!288 thiss!17480 rules!1920 (seqFromList!822 (t!37804 tokens!465)) separatorToken!170 (+ 0 1)))))

(declare-fun maxPrefixZipperSequence!294 (LexerInterface!613 List!3819 BalanceConc!2560) Option!802)

(assert (=> b!267078 (= lt!109476 (maxPrefixZipperSequence!294 thiss!17480 rules!1920 (++!990 (charsOf!372 (apply!757 (seqFromList!822 (t!37804 tokens!465)) 0)) lt!109471)))))

(declare-fun res!122372 () Bool)

(assert (=> b!267078 (= res!122372 ((_ is Some!801) lt!109476))))

(assert (=> b!267078 (=> (not res!122372) (not e!165951))))

(assert (=> b!267078 (= c!50526 e!165951)))

(declare-fun lt!109479 () BalanceConc!2560)

(assert (=> d!77015 (= (list!1547 lt!109479) (printWithSeparatorTokenWhenNeededList!296 thiss!17480 rules!1920 (dropList!160 (seqFromList!822 (t!37804 tokens!465)) 0) separatorToken!170))))

(assert (=> d!77015 (= lt!109479 e!165953)))

(declare-fun c!50527 () Bool)

(assert (=> d!77015 (= c!50527 (>= 0 (size!3028 (seqFromList!822 (t!37804 tokens!465)))))))

(declare-fun lt!109473 () Unit!4824)

(declare-fun lemmaContentSubsetPreservesForall!104 (List!3820 List!3820 Int) Unit!4824)

(assert (=> d!77015 (= lt!109473 (lemmaContentSubsetPreservesForall!104 (list!1550 (seqFromList!822 (t!37804 tokens!465))) (dropList!160 (seqFromList!822 (t!37804 tokens!465)) 0) lambda!9011))))

(assert (=> d!77015 e!165950))

(declare-fun res!122374 () Bool)

(assert (=> d!77015 (=> (not res!122374) (not e!165950))))

(assert (=> d!77015 (= res!122374 (>= 0 0))))

(assert (=> d!77015 (= (printWithSeparatorTokenWhenNeededRec!288 thiss!17480 rules!1920 (seqFromList!822 (t!37804 tokens!465)) separatorToken!170 0) lt!109479)))

(declare-fun bm!14507 () Bool)

(assert (=> bm!14507 (= call!14510 call!14511)))

(declare-fun bm!14508 () Bool)

(assert (=> bm!14508 (= call!14512 (charsOf!372 (ite c!50526 call!14511 (ite c!50528 separatorToken!170 call!14510))))))

(assert (= (and d!77015 res!122374) b!267086))

(assert (= (and d!77015 c!50527) b!267085))

(assert (= (and d!77015 (not c!50527)) b!267078))

(assert (= (and b!267078 res!122372) b!267088))

(assert (= (and b!267078 c!50526) b!267087))

(assert (= (and b!267078 (not c!50526)) b!267080))

(assert (= (and b!267080 res!122373) b!267079))

(assert (= (and b!267080 c!50528) b!267081))

(assert (= (and b!267080 (not c!50528)) b!267084))

(assert (= (or b!267081 b!267084) bm!14507))

(assert (= (or b!267081 b!267084) bm!14504))

(assert (= (or b!267087 b!267079 bm!14507) bm!14505))

(assert (= (or b!267087 bm!14504) bm!14508))

(assert (= (or b!267087 b!267081) bm!14506))

(assert (= (and bm!14506 c!50525) b!267083))

(assert (= (and bm!14506 (not c!50525)) b!267082))

(declare-fun m!335045 () Bool)

(assert (=> bm!14506 m!335045))

(declare-fun m!335047 () Bool)

(assert (=> b!267078 m!335047))

(declare-fun m!335049 () Bool)

(assert (=> b!267078 m!335049))

(declare-fun m!335051 () Bool)

(assert (=> b!267078 m!335051))

(declare-fun m!335053 () Bool)

(assert (=> b!267078 m!335053))

(declare-fun m!335055 () Bool)

(assert (=> b!267078 m!335055))

(assert (=> b!267078 m!334547))

(declare-fun m!335057 () Bool)

(assert (=> b!267078 m!335057))

(declare-fun m!335059 () Bool)

(assert (=> b!267078 m!335059))

(declare-fun m!335061 () Bool)

(assert (=> b!267078 m!335061))

(assert (=> b!267078 m!334547))

(declare-fun m!335063 () Bool)

(assert (=> b!267078 m!335063))

(assert (=> b!267078 m!335047))

(assert (=> b!267078 m!334547))

(declare-fun m!335065 () Bool)

(assert (=> b!267078 m!335065))

(assert (=> b!267078 m!335053))

(assert (=> b!267078 m!335063))

(assert (=> b!267078 m!335057))

(declare-fun m!335067 () Bool)

(assert (=> b!267078 m!335067))

(declare-fun m!335069 () Bool)

(assert (=> b!267078 m!335069))

(assert (=> b!267078 m!335061))

(declare-fun m!335071 () Bool)

(assert (=> b!267078 m!335071))

(declare-fun m!335073 () Bool)

(assert (=> b!267078 m!335073))

(declare-fun m!335075 () Bool)

(assert (=> b!267078 m!335075))

(assert (=> b!267078 m!335057))

(assert (=> b!267078 m!335059))

(declare-fun m!335077 () Bool)

(assert (=> b!267082 m!335077))

(assert (=> b!267088 m!334547))

(assert (=> b!267088 m!335057))

(assert (=> bm!14505 m!334547))

(assert (=> bm!14505 m!335057))

(declare-fun m!335079 () Bool)

(assert (=> b!267084 m!335079))

(declare-fun m!335081 () Bool)

(assert (=> b!267084 m!335081))

(assert (=> b!267084 m!335079))

(declare-fun m!335083 () Bool)

(assert (=> b!267084 m!335083))

(declare-fun m!335085 () Bool)

(assert (=> b!267084 m!335085))

(assert (=> b!267084 m!335083))

(assert (=> b!267084 m!335081))

(declare-fun m!335087 () Bool)

(assert (=> b!267084 m!335087))

(assert (=> b!267084 m!335081))

(declare-fun m!335089 () Bool)

(assert (=> b!267084 m!335089))

(declare-fun m!335091 () Bool)

(assert (=> d!77015 m!335091))

(assert (=> d!77015 m!334547))

(declare-fun m!335093 () Bool)

(assert (=> d!77015 m!335093))

(assert (=> d!77015 m!335063))

(assert (=> d!77015 m!335093))

(declare-fun m!335095 () Bool)

(assert (=> d!77015 m!335095))

(assert (=> d!77015 m!334547))

(assert (=> d!77015 m!335063))

(assert (=> d!77015 m!335093))

(declare-fun m!335097 () Bool)

(assert (=> d!77015 m!335097))

(assert (=> d!77015 m!334547))

(declare-fun m!335099 () Bool)

(assert (=> d!77015 m!335099))

(declare-fun m!335101 () Bool)

(assert (=> bm!14508 m!335101))

(declare-fun m!335103 () Bool)

(assert (=> b!267081 m!335103))

(assert (=> b!267086 m!334547))

(assert (=> b!267086 m!335099))

(assert (=> b!266840 d!77015))

(declare-fun d!77053 () Bool)

(declare-fun lt!109482 () BalanceConc!2560)

(assert (=> d!77053 (= (list!1547 lt!109482) (originalCharacters!770 separatorToken!170))))

(assert (=> d!77053 (= lt!109482 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 separatorToken!170))) (value!25035 separatorToken!170)))))

(assert (=> d!77053 (= (charsOf!372 separatorToken!170) lt!109482)))

(declare-fun b_lambda!8369 () Bool)

(assert (=> (not b_lambda!8369) (not d!77053)))

(assert (=> d!77053 t!37821))

(declare-fun b_and!21087 () Bool)

(assert (= b_and!21069 (and (=> t!37821 result!18352) b_and!21087)))

(assert (=> d!77053 t!37823))

(declare-fun b_and!21089 () Bool)

(assert (= b_and!21071 (and (=> t!37823 result!18354) b_and!21089)))

(assert (=> d!77053 t!37825))

(declare-fun b_and!21091 () Bool)

(assert (= b_and!21073 (and (=> t!37825 result!18356) b_and!21091)))

(declare-fun m!335105 () Bool)

(assert (=> d!77053 m!335105))

(assert (=> d!77053 m!334681))

(assert (=> b!266840 d!77053))

(declare-fun b!267103 () Bool)

(declare-fun e!165967 () List!3818)

(assert (=> b!267103 (= e!165967 (Cons!3808 (h!9205 lt!109293) (++!988 (t!37802 lt!109293) lt!109297)))))

(declare-fun lt!109483 () List!3818)

(declare-fun b!267105 () Bool)

(declare-fun e!165966 () Bool)

(assert (=> b!267105 (= e!165966 (or (not (= lt!109297 Nil!3808)) (= lt!109483 lt!109293)))))

(declare-fun b!267104 () Bool)

(declare-fun res!122376 () Bool)

(assert (=> b!267104 (=> (not res!122376) (not e!165966))))

(assert (=> b!267104 (= res!122376 (= (size!3029 lt!109483) (+ (size!3029 lt!109293) (size!3029 lt!109297))))))

(declare-fun b!267102 () Bool)

(assert (=> b!267102 (= e!165967 lt!109297)))

(declare-fun d!77055 () Bool)

(assert (=> d!77055 e!165966))

(declare-fun res!122375 () Bool)

(assert (=> d!77055 (=> (not res!122375) (not e!165966))))

(assert (=> d!77055 (= res!122375 (= (content!543 lt!109483) ((_ map or) (content!543 lt!109293) (content!543 lt!109297))))))

(assert (=> d!77055 (= lt!109483 e!165967)))

(declare-fun c!50529 () Bool)

(assert (=> d!77055 (= c!50529 ((_ is Nil!3808) lt!109293))))

(assert (=> d!77055 (= (++!988 lt!109293 lt!109297) lt!109483)))

(assert (= (and d!77055 c!50529) b!267102))

(assert (= (and d!77055 (not c!50529)) b!267103))

(assert (= (and d!77055 res!122375) b!267104))

(assert (= (and b!267104 res!122376) b!267105))

(declare-fun m!335107 () Bool)

(assert (=> b!267103 m!335107))

(declare-fun m!335109 () Bool)

(assert (=> b!267104 m!335109))

(declare-fun m!335111 () Bool)

(assert (=> b!267104 m!335111))

(declare-fun m!335113 () Bool)

(assert (=> b!267104 m!335113))

(declare-fun m!335115 () Bool)

(assert (=> d!77055 m!335115))

(declare-fun m!335117 () Bool)

(assert (=> d!77055 m!335117))

(declare-fun m!335119 () Bool)

(assert (=> d!77055 m!335119))

(assert (=> b!266840 d!77055))

(declare-fun d!77057 () Bool)

(assert (=> d!77057 (= (list!1547 (charsOf!372 (h!9207 tokens!465))) (list!1551 (c!50467 (charsOf!372 (h!9207 tokens!465)))))))

(declare-fun bs!29394 () Bool)

(assert (= bs!29394 d!77057))

(declare-fun m!335121 () Bool)

(assert (=> bs!29394 m!335121))

(assert (=> b!266840 d!77057))

(declare-fun d!77059 () Bool)

(declare-fun lt!109484 () BalanceConc!2560)

(assert (=> d!77059 (= (list!1547 lt!109484) (originalCharacters!770 (h!9207 tokens!465)))))

(assert (=> d!77059 (= lt!109484 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465)))) (value!25035 (h!9207 tokens!465))))))

(assert (=> d!77059 (= (charsOf!372 (h!9207 tokens!465)) lt!109484)))

(declare-fun b_lambda!8371 () Bool)

(assert (=> (not b_lambda!8371) (not d!77059)))

(assert (=> d!77059 t!37815))

(declare-fun b_and!21093 () Bool)

(assert (= b_and!21087 (and (=> t!37815 result!18344) b_and!21093)))

(assert (=> d!77059 t!37817))

(declare-fun b_and!21095 () Bool)

(assert (= b_and!21089 (and (=> t!37817 result!18348) b_and!21095)))

(assert (=> d!77059 t!37819))

(declare-fun b_and!21097 () Bool)

(assert (= b_and!21091 (and (=> t!37819 result!18350) b_and!21097)))

(declare-fun m!335123 () Bool)

(assert (=> d!77059 m!335123))

(assert (=> d!77059 m!334651))

(assert (=> b!266840 d!77059))

(declare-fun d!77061 () Bool)

(assert (=> d!77061 (= (++!988 (++!988 lt!109293 lt!109298) lt!109292) (++!988 lt!109293 (++!988 lt!109298 lt!109292)))))

(declare-fun lt!109487 () Unit!4824)

(declare-fun choose!2436 (List!3818 List!3818 List!3818) Unit!4824)

(assert (=> d!77061 (= lt!109487 (choose!2436 lt!109293 lt!109298 lt!109292))))

(assert (=> d!77061 (= (lemmaConcatAssociativity!424 lt!109293 lt!109298 lt!109292) lt!109487)))

(declare-fun bs!29395 () Bool)

(assert (= bs!29395 d!77061))

(assert (=> bs!29395 m!334549))

(declare-fun m!335125 () Bool)

(assert (=> bs!29395 m!335125))

(assert (=> bs!29395 m!334549))

(declare-fun m!335127 () Bool)

(assert (=> bs!29395 m!335127))

(assert (=> bs!29395 m!334555))

(assert (=> bs!29395 m!334557))

(assert (=> bs!29395 m!334555))

(assert (=> b!266840 d!77061))

(declare-fun e!165969 () List!3818)

(declare-fun b!267107 () Bool)

(assert (=> b!267107 (= e!165969 (Cons!3808 (h!9205 (++!988 lt!109293 lt!109298)) (++!988 (t!37802 (++!988 lt!109293 lt!109298)) lt!109292)))))

(declare-fun lt!109488 () List!3818)

(declare-fun e!165968 () Bool)

(declare-fun b!267109 () Bool)

(assert (=> b!267109 (= e!165968 (or (not (= lt!109292 Nil!3808)) (= lt!109488 (++!988 lt!109293 lt!109298))))))

(declare-fun b!267108 () Bool)

(declare-fun res!122378 () Bool)

(assert (=> b!267108 (=> (not res!122378) (not e!165968))))

(assert (=> b!267108 (= res!122378 (= (size!3029 lt!109488) (+ (size!3029 (++!988 lt!109293 lt!109298)) (size!3029 lt!109292))))))

(declare-fun b!267106 () Bool)

(assert (=> b!267106 (= e!165969 lt!109292)))

(declare-fun d!77063 () Bool)

(assert (=> d!77063 e!165968))

(declare-fun res!122377 () Bool)

(assert (=> d!77063 (=> (not res!122377) (not e!165968))))

(assert (=> d!77063 (= res!122377 (= (content!543 lt!109488) ((_ map or) (content!543 (++!988 lt!109293 lt!109298)) (content!543 lt!109292))))))

(assert (=> d!77063 (= lt!109488 e!165969)))

(declare-fun c!50530 () Bool)

(assert (=> d!77063 (= c!50530 ((_ is Nil!3808) (++!988 lt!109293 lt!109298)))))

(assert (=> d!77063 (= (++!988 (++!988 lt!109293 lt!109298) lt!109292) lt!109488)))

(assert (= (and d!77063 c!50530) b!267106))

(assert (= (and d!77063 (not c!50530)) b!267107))

(assert (= (and d!77063 res!122377) b!267108))

(assert (= (and b!267108 res!122378) b!267109))

(declare-fun m!335129 () Bool)

(assert (=> b!267107 m!335129))

(declare-fun m!335131 () Bool)

(assert (=> b!267108 m!335131))

(assert (=> b!267108 m!334555))

(declare-fun m!335133 () Bool)

(assert (=> b!267108 m!335133))

(assert (=> b!267108 m!334765))

(declare-fun m!335135 () Bool)

(assert (=> d!77063 m!335135))

(assert (=> d!77063 m!334555))

(declare-fun m!335137 () Bool)

(assert (=> d!77063 m!335137))

(assert (=> d!77063 m!334771))

(assert (=> b!266840 d!77063))

(declare-fun b!267111 () Bool)

(declare-fun e!165971 () List!3818)

(assert (=> b!267111 (= e!165971 (Cons!3808 (h!9205 lt!109293) (++!988 (t!37802 lt!109293) lt!109298)))))

(declare-fun lt!109489 () List!3818)

(declare-fun b!267113 () Bool)

(declare-fun e!165970 () Bool)

(assert (=> b!267113 (= e!165970 (or (not (= lt!109298 Nil!3808)) (= lt!109489 lt!109293)))))

(declare-fun b!267112 () Bool)

(declare-fun res!122380 () Bool)

(assert (=> b!267112 (=> (not res!122380) (not e!165970))))

(assert (=> b!267112 (= res!122380 (= (size!3029 lt!109489) (+ (size!3029 lt!109293) (size!3029 lt!109298))))))

(declare-fun b!267110 () Bool)

(assert (=> b!267110 (= e!165971 lt!109298)))

(declare-fun d!77065 () Bool)

(assert (=> d!77065 e!165970))

(declare-fun res!122379 () Bool)

(assert (=> d!77065 (=> (not res!122379) (not e!165970))))

(assert (=> d!77065 (= res!122379 (= (content!543 lt!109489) ((_ map or) (content!543 lt!109293) (content!543 lt!109298))))))

(assert (=> d!77065 (= lt!109489 e!165971)))

(declare-fun c!50531 () Bool)

(assert (=> d!77065 (= c!50531 ((_ is Nil!3808) lt!109293))))

(assert (=> d!77065 (= (++!988 lt!109293 lt!109298) lt!109489)))

(assert (= (and d!77065 c!50531) b!267110))

(assert (= (and d!77065 (not c!50531)) b!267111))

(assert (= (and d!77065 res!122379) b!267112))

(assert (= (and b!267112 res!122380) b!267113))

(declare-fun m!335139 () Bool)

(assert (=> b!267111 m!335139))

(declare-fun m!335141 () Bool)

(assert (=> b!267112 m!335141))

(assert (=> b!267112 m!335111))

(assert (=> b!267112 m!334763))

(declare-fun m!335143 () Bool)

(assert (=> d!77065 m!335143))

(assert (=> d!77065 m!335117))

(assert (=> d!77065 m!334769))

(assert (=> b!266840 d!77065))

(declare-fun bs!29409 () Bool)

(declare-fun b!267253 () Bool)

(assert (= bs!29409 (and b!267253 b!266841)))

(declare-fun lambda!9020 () Int)

(assert (=> bs!29409 (not (= lambda!9020 lambda!8994))))

(declare-fun bs!29410 () Bool)

(assert (= bs!29410 (and b!267253 d!77015)))

(assert (=> bs!29410 (not (= lambda!9020 lambda!9011))))

(declare-fun bs!29411 () Bool)

(assert (= bs!29411 (and b!267253 b!267078)))

(assert (=> bs!29411 (= lambda!9020 lambda!9012)))

(declare-fun b!267259 () Bool)

(declare-fun e!166074 () Bool)

(assert (=> b!267259 (= e!166074 true)))

(declare-fun b!267258 () Bool)

(declare-fun e!166073 () Bool)

(assert (=> b!267258 (= e!166073 e!166074)))

(declare-fun b!267257 () Bool)

(declare-fun e!166072 () Bool)

(assert (=> b!267257 (= e!166072 e!166073)))

(assert (=> b!267253 e!166072))

(assert (= b!267258 b!267259))

(assert (= b!267257 b!267258))

(assert (= (and b!267253 ((_ is Cons!3809) rules!1920)) b!267257))

(assert (=> b!267259 (< (dynLambda!1941 order!2913 (toValue!1458 (transformation!727 (h!9206 rules!1920)))) (dynLambda!1942 order!2915 lambda!9020))))

(assert (=> b!267259 (< (dynLambda!1943 order!2917 (toChars!1317 (transformation!727 (h!9206 rules!1920)))) (dynLambda!1942 order!2915 lambda!9020))))

(assert (=> b!267253 true))

(declare-fun b!267249 () Bool)

(declare-fun e!166069 () List!3818)

(declare-fun call!14527 () List!3818)

(assert (=> b!267249 (= e!166069 call!14527)))

(declare-fun b!267250 () Bool)

(declare-fun c!50558 () Bool)

(declare-datatypes ((tuple2!4266 0))(
  ( (tuple2!4267 (_1!2349 Token!1198) (_2!2349 List!3818)) )
))
(declare-datatypes ((Option!803 0))(
  ( (None!802) (Some!802 (v!14665 tuple2!4266)) )
))
(declare-fun lt!109533 () Option!803)

(assert (=> b!267250 (= c!50558 (and ((_ is Some!802) lt!109533) (not (= (_1!2349 (v!14665 lt!109533)) (h!9207 (t!37804 tokens!465))))))))

(declare-fun e!166070 () List!3818)

(assert (=> b!267250 (= e!166069 e!166070)))

(declare-fun b!267251 () Bool)

(declare-fun lt!109534 () List!3818)

(assert (=> b!267251 (= e!166070 (++!988 call!14527 lt!109534))))

(declare-fun call!14526 () List!3818)

(declare-fun c!50556 () Bool)

(declare-fun call!14528 () BalanceConc!2560)

(declare-fun bm!14519 () Bool)

(declare-fun call!14524 () BalanceConc!2560)

(assert (=> bm!14519 (= call!14526 (list!1547 (ite c!50556 call!14528 call!14524)))))

(declare-fun b!267252 () Bool)

(assert (=> b!267252 (= e!166070 Nil!3808)))

(assert (=> b!267252 (= (print!338 thiss!17480 (singletonSeq!273 (h!9207 (t!37804 tokens!465)))) (printTailRec!301 thiss!17480 (singletonSeq!273 (h!9207 (t!37804 tokens!465))) 0 (BalanceConc!2561 Empty!1276)))))

(declare-fun lt!109537 () Unit!4824)

(declare-fun Unit!4836 () Unit!4824)

(assert (=> b!267252 (= lt!109537 Unit!4836)))

(declare-fun call!14525 () List!3818)

(declare-fun lt!109535 () Unit!4824)

(assert (=> b!267252 (= lt!109535 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!108 thiss!17480 rules!1920 call!14525 lt!109534))))

(assert (=> b!267252 false))

(declare-fun lt!109538 () Unit!4824)

(declare-fun Unit!4837 () Unit!4824)

(assert (=> b!267252 (= lt!109538 Unit!4837)))

(declare-fun bm!14520 () Bool)

(declare-fun e!166071 () BalanceConc!2560)

(assert (=> bm!14520 (= call!14525 (list!1547 e!166071))))

(declare-fun c!50557 () Bool)

(assert (=> bm!14520 (= c!50557 c!50558)))

(declare-fun e!166068 () List!3818)

(assert (=> b!267253 (= e!166068 e!166069)))

(declare-fun lt!109536 () Unit!4824)

(assert (=> b!267253 (= lt!109536 (forallContained!282 (t!37804 tokens!465) lambda!9020 (h!9207 (t!37804 tokens!465))))))

(assert (=> b!267253 (= lt!109534 (printWithSeparatorTokenWhenNeededList!296 thiss!17480 rules!1920 (t!37804 (t!37804 tokens!465)) separatorToken!170))))

(declare-fun maxPrefix!331 (LexerInterface!613 List!3819 List!3818) Option!803)

(assert (=> b!267253 (= lt!109533 (maxPrefix!331 thiss!17480 rules!1920 (++!988 (list!1547 (charsOf!372 (h!9207 (t!37804 tokens!465)))) lt!109534)))))

(assert (=> b!267253 (= c!50556 (and ((_ is Some!802) lt!109533) (= (_1!2349 (v!14665 lt!109533)) (h!9207 (t!37804 tokens!465)))))))

(declare-fun bm!14521 () Bool)

(assert (=> bm!14521 (= call!14528 (charsOf!372 (h!9207 (t!37804 tokens!465))))))

(declare-fun d!77067 () Bool)

(declare-fun c!50555 () Bool)

(assert (=> d!77067 (= c!50555 ((_ is Cons!3810) (t!37804 tokens!465)))))

(assert (=> d!77067 (= (printWithSeparatorTokenWhenNeededList!296 thiss!17480 rules!1920 (t!37804 tokens!465) separatorToken!170) e!166068)))

(declare-fun b!267254 () Bool)

(assert (=> b!267254 (= e!166071 (charsOf!372 separatorToken!170))))

(declare-fun bm!14522 () Bool)

(assert (=> bm!14522 (= call!14524 call!14528)))

(declare-fun b!267255 () Bool)

(assert (=> b!267255 (= e!166071 call!14524)))

(declare-fun b!267256 () Bool)

(assert (=> b!267256 (= e!166068 Nil!3808)))

(declare-fun bm!14523 () Bool)

(assert (=> bm!14523 (= call!14527 (++!988 call!14526 (ite c!50556 lt!109534 call!14525)))))

(assert (= (and d!77067 c!50555) b!267253))

(assert (= (and d!77067 (not c!50555)) b!267256))

(assert (= (and b!267253 c!50556) b!267249))

(assert (= (and b!267253 (not c!50556)) b!267250))

(assert (= (and b!267250 c!50558) b!267251))

(assert (= (and b!267250 (not c!50558)) b!267252))

(assert (= (or b!267251 b!267252) bm!14522))

(assert (= (or b!267251 b!267252) bm!14520))

(assert (= (and bm!14520 c!50557) b!267254))

(assert (= (and bm!14520 (not c!50557)) b!267255))

(assert (= (or b!267249 bm!14522) bm!14521))

(assert (= (or b!267249 b!267251) bm!14519))

(assert (= (or b!267249 b!267251) bm!14523))

(declare-fun m!335265 () Bool)

(assert (=> bm!14519 m!335265))

(declare-fun m!335267 () Bool)

(assert (=> bm!14521 m!335267))

(assert (=> b!267254 m!334551))

(declare-fun m!335269 () Bool)

(assert (=> bm!14520 m!335269))

(declare-fun m!335271 () Bool)

(assert (=> b!267251 m!335271))

(declare-fun m!335273 () Bool)

(assert (=> bm!14523 m!335273))

(declare-fun m!335275 () Bool)

(assert (=> b!267252 m!335275))

(assert (=> b!267252 m!335275))

(declare-fun m!335277 () Bool)

(assert (=> b!267252 m!335277))

(assert (=> b!267252 m!335275))

(declare-fun m!335279 () Bool)

(assert (=> b!267252 m!335279))

(declare-fun m!335281 () Bool)

(assert (=> b!267252 m!335281))

(declare-fun m!335283 () Bool)

(assert (=> b!267253 m!335283))

(assert (=> b!267253 m!335267))

(declare-fun m!335285 () Bool)

(assert (=> b!267253 m!335285))

(declare-fun m!335287 () Bool)

(assert (=> b!267253 m!335287))

(declare-fun m!335289 () Bool)

(assert (=> b!267253 m!335289))

(assert (=> b!267253 m!335267))

(declare-fun m!335291 () Bool)

(assert (=> b!267253 m!335291))

(assert (=> b!267253 m!335291))

(assert (=> b!267253 m!335285))

(assert (=> b!266840 d!77067))

(declare-fun d!77105 () Bool)

(assert (=> d!77105 (= (inv!4702 (tag!937 (h!9206 rules!1920))) (= (mod (str.len (value!25034 (tag!937 (h!9206 rules!1920)))) 2) 0))))

(assert (=> b!266838 d!77105))

(declare-fun d!77107 () Bool)

(declare-fun res!122414 () Bool)

(declare-fun e!166075 () Bool)

(assert (=> d!77107 (=> (not res!122414) (not e!166075))))

(assert (=> d!77107 (= res!122414 (semiInverseModEq!255 (toChars!1317 (transformation!727 (h!9206 rules!1920))) (toValue!1458 (transformation!727 (h!9206 rules!1920)))))))

(assert (=> d!77107 (= (inv!4706 (transformation!727 (h!9206 rules!1920))) e!166075)))

(declare-fun b!267260 () Bool)

(assert (=> b!267260 (= e!166075 (equivClasses!238 (toChars!1317 (transformation!727 (h!9206 rules!1920))) (toValue!1458 (transformation!727 (h!9206 rules!1920)))))))

(assert (= (and d!77107 res!122414) b!267260))

(declare-fun m!335293 () Bool)

(assert (=> d!77107 m!335293))

(declare-fun m!335295 () Bool)

(assert (=> b!267260 m!335295))

(assert (=> b!266838 d!77107))

(declare-fun b!267271 () Bool)

(declare-fun e!166082 () Bool)

(declare-fun inv!15 (TokenValue!749) Bool)

(assert (=> b!267271 (= e!166082 (inv!15 (value!25035 (h!9207 tokens!465))))))

(declare-fun d!77109 () Bool)

(declare-fun c!50564 () Bool)

(assert (=> d!77109 (= c!50564 ((_ is IntegerValue!2247) (value!25035 (h!9207 tokens!465))))))

(declare-fun e!166083 () Bool)

(assert (=> d!77109 (= (inv!21 (value!25035 (h!9207 tokens!465))) e!166083)))

(declare-fun b!267272 () Bool)

(declare-fun e!166084 () Bool)

(assert (=> b!267272 (= e!166083 e!166084)))

(declare-fun c!50563 () Bool)

(assert (=> b!267272 (= c!50563 ((_ is IntegerValue!2248) (value!25035 (h!9207 tokens!465))))))

(declare-fun b!267273 () Bool)

(declare-fun inv!16 (TokenValue!749) Bool)

(assert (=> b!267273 (= e!166083 (inv!16 (value!25035 (h!9207 tokens!465))))))

(declare-fun b!267274 () Bool)

(declare-fun inv!17 (TokenValue!749) Bool)

(assert (=> b!267274 (= e!166084 (inv!17 (value!25035 (h!9207 tokens!465))))))

(declare-fun b!267275 () Bool)

(declare-fun res!122417 () Bool)

(assert (=> b!267275 (=> res!122417 e!166082)))

(assert (=> b!267275 (= res!122417 (not ((_ is IntegerValue!2249) (value!25035 (h!9207 tokens!465)))))))

(assert (=> b!267275 (= e!166084 e!166082)))

(assert (= (and d!77109 c!50564) b!267273))

(assert (= (and d!77109 (not c!50564)) b!267272))

(assert (= (and b!267272 c!50563) b!267274))

(assert (= (and b!267272 (not c!50563)) b!267275))

(assert (= (and b!267275 (not res!122417)) b!267271))

(declare-fun m!335297 () Bool)

(assert (=> b!267271 m!335297))

(declare-fun m!335299 () Bool)

(assert (=> b!267273 m!335299))

(declare-fun m!335301 () Bool)

(assert (=> b!267274 m!335301))

(assert (=> b!266839 d!77109))

(declare-fun d!77111 () Bool)

(assert (=> d!77111 (= (list!1547 (printWithSeparatorTokenWhenNeededRec!288 thiss!17480 rules!1920 lt!109288 separatorToken!170 0)) (list!1551 (c!50467 (printWithSeparatorTokenWhenNeededRec!288 thiss!17480 rules!1920 lt!109288 separatorToken!170 0))))))

(declare-fun bs!29412 () Bool)

(assert (= bs!29412 d!77111))

(declare-fun m!335303 () Bool)

(assert (=> bs!29412 m!335303))

(assert (=> b!266828 d!77111))

(declare-fun bs!29413 () Bool)

(declare-fun d!77113 () Bool)

(assert (= bs!29413 (and d!77113 b!266841)))

(declare-fun lambda!9021 () Int)

(assert (=> bs!29413 (= lambda!9021 lambda!8994)))

(declare-fun bs!29414 () Bool)

(assert (= bs!29414 (and d!77113 d!77015)))

(assert (=> bs!29414 (= lambda!9021 lambda!9011)))

(declare-fun bs!29415 () Bool)

(assert (= bs!29415 (and d!77113 b!267078)))

(assert (=> bs!29415 (not (= lambda!9021 lambda!9012))))

(declare-fun bs!29416 () Bool)

(assert (= bs!29416 (and d!77113 b!267253)))

(assert (=> bs!29416 (not (= lambda!9021 lambda!9020))))

(declare-fun bs!29417 () Bool)

(declare-fun b!267276 () Bool)

(assert (= bs!29417 (and b!267276 d!77015)))

(declare-fun lambda!9022 () Int)

(assert (=> bs!29417 (not (= lambda!9022 lambda!9011))))

(declare-fun bs!29418 () Bool)

(assert (= bs!29418 (and b!267276 b!267078)))

(assert (=> bs!29418 (= lambda!9022 lambda!9012)))

(declare-fun bs!29419 () Bool)

(assert (= bs!29419 (and b!267276 d!77113)))

(assert (=> bs!29419 (not (= lambda!9022 lambda!9021))))

(declare-fun bs!29420 () Bool)

(assert (= bs!29420 (and b!267276 b!267253)))

(assert (=> bs!29420 (= lambda!9022 lambda!9020)))

(declare-fun bs!29421 () Bool)

(assert (= bs!29421 (and b!267276 b!266841)))

(assert (=> bs!29421 (not (= lambda!9022 lambda!8994))))

(declare-fun b!267289 () Bool)

(declare-fun e!166094 () Bool)

(assert (=> b!267289 (= e!166094 true)))

(declare-fun b!267288 () Bool)

(declare-fun e!166093 () Bool)

(assert (=> b!267288 (= e!166093 e!166094)))

(declare-fun b!267287 () Bool)

(declare-fun e!166092 () Bool)

(assert (=> b!267287 (= e!166092 e!166093)))

(assert (=> b!267276 e!166092))

(assert (= b!267288 b!267289))

(assert (= b!267287 b!267288))

(assert (= (and b!267276 ((_ is Cons!3809) rules!1920)) b!267287))

(assert (=> b!267289 (< (dynLambda!1941 order!2913 (toValue!1458 (transformation!727 (h!9206 rules!1920)))) (dynLambda!1942 order!2915 lambda!9022))))

(assert (=> b!267289 (< (dynLambda!1943 order!2917 (toChars!1317 (transformation!727 (h!9206 rules!1920)))) (dynLambda!1942 order!2915 lambda!9022))))

(assert (=> b!267276 true))

(declare-fun b!267277 () Bool)

(declare-fun e!166090 () Bool)

(declare-fun lt!109549 () Option!802)

(declare-fun call!14531 () Token!1198)

(assert (=> b!267277 (= e!166090 (not (= (_1!2348 (v!14664 lt!109549)) call!14531)))))

(declare-fun bm!14524 () Bool)

(declare-fun call!14529 () BalanceConc!2560)

(declare-fun call!14532 () BalanceConc!2560)

(assert (=> bm!14524 (= call!14529 call!14532)))

(declare-fun b!267278 () Bool)

(declare-fun c!50568 () Bool)

(assert (=> b!267278 (= c!50568 e!166090)))

(declare-fun res!122419 () Bool)

(assert (=> b!267278 (=> (not res!122419) (not e!166090))))

(assert (=> b!267278 (= res!122419 ((_ is Some!801) lt!109549))))

(declare-fun e!166087 () BalanceConc!2560)

(declare-fun e!166089 () BalanceConc!2560)

(assert (=> b!267278 (= e!166087 e!166089)))

(declare-fun b!267279 () Bool)

(declare-fun call!14533 () BalanceConc!2560)

(declare-fun lt!109544 () BalanceConc!2560)

(assert (=> b!267279 (= e!166089 (++!990 call!14533 lt!109544))))

(declare-fun b!267280 () Bool)

(declare-fun e!166091 () BalanceConc!2560)

(declare-fun call!14530 () Token!1198)

(assert (=> b!267280 (= e!166091 (charsOf!372 call!14530))))

(declare-fun b!267281 () Bool)

(assert (=> b!267281 (= e!166091 call!14532)))

(declare-fun b!267282 () Bool)

(assert (=> b!267282 (= e!166089 (BalanceConc!2561 Empty!1276))))

(assert (=> b!267282 (= (print!338 thiss!17480 (singletonSeq!273 call!14530)) (printTailRec!301 thiss!17480 (singletonSeq!273 call!14530) 0 (BalanceConc!2561 Empty!1276)))))

(declare-fun lt!109547 () Unit!4824)

(declare-fun Unit!4838 () Unit!4824)

(assert (=> b!267282 (= lt!109547 Unit!4838)))

(declare-fun lt!109539 () Unit!4824)

(assert (=> b!267282 (= lt!109539 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!108 thiss!17480 rules!1920 (list!1547 call!14529) (list!1547 lt!109544)))))

(assert (=> b!267282 false))

(declare-fun lt!109545 () Unit!4824)

(declare-fun Unit!4839 () Unit!4824)

(assert (=> b!267282 (= lt!109545 Unit!4839)))

(declare-fun b!267283 () Bool)

(declare-fun e!166088 () BalanceConc!2560)

(assert (=> b!267283 (= e!166088 (BalanceConc!2561 Empty!1276))))

(declare-fun b!267284 () Bool)

(declare-fun e!166085 () Bool)

(assert (=> b!267284 (= e!166085 (<= 0 (size!3028 lt!109288)))))

(declare-fun b!267285 () Bool)

(assert (=> b!267285 (= e!166087 call!14533)))

(declare-fun b!267286 () Bool)

(declare-fun e!166086 () Bool)

(assert (=> b!267286 (= e!166086 (= (_1!2348 (v!14664 lt!109549)) (apply!757 lt!109288 0)))))

(declare-fun bm!14525 () Bool)

(assert (=> bm!14525 (= call!14531 (apply!757 lt!109288 0))))

(declare-fun bm!14526 () Bool)

(declare-fun c!50565 () Bool)

(declare-fun c!50566 () Bool)

(assert (=> bm!14526 (= c!50565 c!50566)))

(assert (=> bm!14526 (= call!14533 (++!990 e!166091 (ite c!50566 lt!109544 call!14529)))))

(assert (=> b!267276 (= e!166088 e!166087)))

(declare-fun lt!109540 () List!3820)

(assert (=> b!267276 (= lt!109540 (list!1550 lt!109288))))

(declare-fun lt!109543 () Unit!4824)

(assert (=> b!267276 (= lt!109543 (lemmaDropApply!200 lt!109540 0))))

(assert (=> b!267276 (= (head!884 (drop!213 lt!109540 0)) (apply!758 lt!109540 0))))

(declare-fun lt!109548 () Unit!4824)

(assert (=> b!267276 (= lt!109548 lt!109543)))

(declare-fun lt!109541 () List!3820)

(assert (=> b!267276 (= lt!109541 (list!1550 lt!109288))))

(declare-fun lt!109550 () Unit!4824)

(assert (=> b!267276 (= lt!109550 (lemmaDropTail!192 lt!109541 0))))

(assert (=> b!267276 (= (tail!474 (drop!213 lt!109541 0)) (drop!213 lt!109541 (+ 0 1)))))

(declare-fun lt!109551 () Unit!4824)

(assert (=> b!267276 (= lt!109551 lt!109550)))

(declare-fun lt!109542 () Unit!4824)

(assert (=> b!267276 (= lt!109542 (forallContained!282 (list!1550 lt!109288) lambda!9022 (apply!757 lt!109288 0)))))

(assert (=> b!267276 (= lt!109544 (printWithSeparatorTokenWhenNeededRec!288 thiss!17480 rules!1920 lt!109288 separatorToken!170 (+ 0 1)))))

(assert (=> b!267276 (= lt!109549 (maxPrefixZipperSequence!294 thiss!17480 rules!1920 (++!990 (charsOf!372 (apply!757 lt!109288 0)) lt!109544)))))

(declare-fun res!122418 () Bool)

(assert (=> b!267276 (= res!122418 ((_ is Some!801) lt!109549))))

(assert (=> b!267276 (=> (not res!122418) (not e!166086))))

(assert (=> b!267276 (= c!50566 e!166086)))

(declare-fun lt!109552 () BalanceConc!2560)

(assert (=> d!77113 (= (list!1547 lt!109552) (printWithSeparatorTokenWhenNeededList!296 thiss!17480 rules!1920 (dropList!160 lt!109288 0) separatorToken!170))))

(assert (=> d!77113 (= lt!109552 e!166088)))

(declare-fun c!50567 () Bool)

(assert (=> d!77113 (= c!50567 (>= 0 (size!3028 lt!109288)))))

(declare-fun lt!109546 () Unit!4824)

(assert (=> d!77113 (= lt!109546 (lemmaContentSubsetPreservesForall!104 (list!1550 lt!109288) (dropList!160 lt!109288 0) lambda!9021))))

(assert (=> d!77113 e!166085))

(declare-fun res!122420 () Bool)

(assert (=> d!77113 (=> (not res!122420) (not e!166085))))

(assert (=> d!77113 (= res!122420 (>= 0 0))))

(assert (=> d!77113 (= (printWithSeparatorTokenWhenNeededRec!288 thiss!17480 rules!1920 lt!109288 separatorToken!170 0) lt!109552)))

(declare-fun bm!14527 () Bool)

(assert (=> bm!14527 (= call!14530 call!14531)))

(declare-fun bm!14528 () Bool)

(assert (=> bm!14528 (= call!14532 (charsOf!372 (ite c!50566 call!14531 (ite c!50568 separatorToken!170 call!14530))))))

(assert (= (and d!77113 res!122420) b!267284))

(assert (= (and d!77113 c!50567) b!267283))

(assert (= (and d!77113 (not c!50567)) b!267276))

(assert (= (and b!267276 res!122418) b!267286))

(assert (= (and b!267276 c!50566) b!267285))

(assert (= (and b!267276 (not c!50566)) b!267278))

(assert (= (and b!267278 res!122419) b!267277))

(assert (= (and b!267278 c!50568) b!267279))

(assert (= (and b!267278 (not c!50568)) b!267282))

(assert (= (or b!267279 b!267282) bm!14527))

(assert (= (or b!267279 b!267282) bm!14524))

(assert (= (or b!267285 b!267277 bm!14527) bm!14525))

(assert (= (or b!267285 bm!14524) bm!14528))

(assert (= (or b!267285 b!267279) bm!14526))

(assert (= (and bm!14526 c!50565) b!267281))

(assert (= (and bm!14526 (not c!50565)) b!267280))

(declare-fun m!335305 () Bool)

(assert (=> bm!14526 m!335305))

(declare-fun m!335307 () Bool)

(assert (=> b!267276 m!335307))

(declare-fun m!335309 () Bool)

(assert (=> b!267276 m!335309))

(declare-fun m!335311 () Bool)

(assert (=> b!267276 m!335311))

(declare-fun m!335313 () Bool)

(assert (=> b!267276 m!335313))

(declare-fun m!335315 () Bool)

(assert (=> b!267276 m!335315))

(declare-fun m!335317 () Bool)

(assert (=> b!267276 m!335317))

(declare-fun m!335319 () Bool)

(assert (=> b!267276 m!335319))

(declare-fun m!335321 () Bool)

(assert (=> b!267276 m!335321))

(declare-fun m!335323 () Bool)

(assert (=> b!267276 m!335323))

(assert (=> b!267276 m!335307))

(declare-fun m!335325 () Bool)

(assert (=> b!267276 m!335325))

(assert (=> b!267276 m!335313))

(assert (=> b!267276 m!335323))

(assert (=> b!267276 m!335317))

(declare-fun m!335327 () Bool)

(assert (=> b!267276 m!335327))

(declare-fun m!335329 () Bool)

(assert (=> b!267276 m!335329))

(assert (=> b!267276 m!335321))

(declare-fun m!335331 () Bool)

(assert (=> b!267276 m!335331))

(declare-fun m!335333 () Bool)

(assert (=> b!267276 m!335333))

(declare-fun m!335335 () Bool)

(assert (=> b!267276 m!335335))

(assert (=> b!267276 m!335317))

(assert (=> b!267276 m!335319))

(declare-fun m!335337 () Bool)

(assert (=> b!267280 m!335337))

(assert (=> b!267286 m!335317))

(assert (=> bm!14525 m!335317))

(declare-fun m!335339 () Bool)

(assert (=> b!267282 m!335339))

(declare-fun m!335341 () Bool)

(assert (=> b!267282 m!335341))

(assert (=> b!267282 m!335339))

(declare-fun m!335343 () Bool)

(assert (=> b!267282 m!335343))

(declare-fun m!335345 () Bool)

(assert (=> b!267282 m!335345))

(assert (=> b!267282 m!335343))

(assert (=> b!267282 m!335341))

(declare-fun m!335347 () Bool)

(assert (=> b!267282 m!335347))

(assert (=> b!267282 m!335341))

(declare-fun m!335349 () Bool)

(assert (=> b!267282 m!335349))

(declare-fun m!335351 () Bool)

(assert (=> d!77113 m!335351))

(declare-fun m!335353 () Bool)

(assert (=> d!77113 m!335353))

(assert (=> d!77113 m!335323))

(assert (=> d!77113 m!335353))

(declare-fun m!335355 () Bool)

(assert (=> d!77113 m!335355))

(assert (=> d!77113 m!335323))

(assert (=> d!77113 m!335353))

(declare-fun m!335357 () Bool)

(assert (=> d!77113 m!335357))

(declare-fun m!335359 () Bool)

(assert (=> d!77113 m!335359))

(declare-fun m!335361 () Bool)

(assert (=> bm!14528 m!335361))

(declare-fun m!335363 () Bool)

(assert (=> b!267279 m!335363))

(assert (=> b!267284 m!335359))

(assert (=> b!266828 d!77113))

(declare-fun bs!29422 () Bool)

(declare-fun b!267294 () Bool)

(assert (= bs!29422 (and b!267294 d!77015)))

(declare-fun lambda!9023 () Int)

(assert (=> bs!29422 (not (= lambda!9023 lambda!9011))))

(declare-fun bs!29423 () Bool)

(assert (= bs!29423 (and b!267294 b!267276)))

(assert (=> bs!29423 (= lambda!9023 lambda!9022)))

(declare-fun bs!29424 () Bool)

(assert (= bs!29424 (and b!267294 b!267078)))

(assert (=> bs!29424 (= lambda!9023 lambda!9012)))

(declare-fun bs!29425 () Bool)

(assert (= bs!29425 (and b!267294 d!77113)))

(assert (=> bs!29425 (not (= lambda!9023 lambda!9021))))

(declare-fun bs!29426 () Bool)

(assert (= bs!29426 (and b!267294 b!267253)))

(assert (=> bs!29426 (= lambda!9023 lambda!9020)))

(declare-fun bs!29427 () Bool)

(assert (= bs!29427 (and b!267294 b!266841)))

(assert (=> bs!29427 (not (= lambda!9023 lambda!8994))))

(declare-fun b!267300 () Bool)

(declare-fun e!166101 () Bool)

(assert (=> b!267300 (= e!166101 true)))

(declare-fun b!267299 () Bool)

(declare-fun e!166100 () Bool)

(assert (=> b!267299 (= e!166100 e!166101)))

(declare-fun b!267298 () Bool)

(declare-fun e!166099 () Bool)

(assert (=> b!267298 (= e!166099 e!166100)))

(assert (=> b!267294 e!166099))

(assert (= b!267299 b!267300))

(assert (= b!267298 b!267299))

(assert (= (and b!267294 ((_ is Cons!3809) rules!1920)) b!267298))

(assert (=> b!267300 (< (dynLambda!1941 order!2913 (toValue!1458 (transformation!727 (h!9206 rules!1920)))) (dynLambda!1942 order!2915 lambda!9023))))

(assert (=> b!267300 (< (dynLambda!1943 order!2917 (toChars!1317 (transformation!727 (h!9206 rules!1920)))) (dynLambda!1942 order!2915 lambda!9023))))

(assert (=> b!267294 true))

(declare-fun b!267290 () Bool)

(declare-fun e!166096 () List!3818)

(declare-fun call!14537 () List!3818)

(assert (=> b!267290 (= e!166096 call!14537)))

(declare-fun b!267291 () Bool)

(declare-fun c!50572 () Bool)

(declare-fun lt!109553 () Option!803)

(assert (=> b!267291 (= c!50572 (and ((_ is Some!802) lt!109553) (not (= (_1!2349 (v!14665 lt!109553)) (h!9207 tokens!465)))))))

(declare-fun e!166097 () List!3818)

(assert (=> b!267291 (= e!166096 e!166097)))

(declare-fun b!267292 () Bool)

(declare-fun lt!109554 () List!3818)

(assert (=> b!267292 (= e!166097 (++!988 call!14537 lt!109554))))

(declare-fun call!14538 () BalanceConc!2560)

(declare-fun call!14534 () BalanceConc!2560)

(declare-fun call!14536 () List!3818)

(declare-fun c!50570 () Bool)

(declare-fun bm!14529 () Bool)

(assert (=> bm!14529 (= call!14536 (list!1547 (ite c!50570 call!14538 call!14534)))))

(declare-fun b!267293 () Bool)

(assert (=> b!267293 (= e!166097 Nil!3808)))

(assert (=> b!267293 (= (print!338 thiss!17480 (singletonSeq!273 (h!9207 tokens!465))) (printTailRec!301 thiss!17480 (singletonSeq!273 (h!9207 tokens!465)) 0 (BalanceConc!2561 Empty!1276)))))

(declare-fun lt!109557 () Unit!4824)

(declare-fun Unit!4840 () Unit!4824)

(assert (=> b!267293 (= lt!109557 Unit!4840)))

(declare-fun lt!109555 () Unit!4824)

(declare-fun call!14535 () List!3818)

(assert (=> b!267293 (= lt!109555 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!108 thiss!17480 rules!1920 call!14535 lt!109554))))

(assert (=> b!267293 false))

(declare-fun lt!109558 () Unit!4824)

(declare-fun Unit!4841 () Unit!4824)

(assert (=> b!267293 (= lt!109558 Unit!4841)))

(declare-fun bm!14530 () Bool)

(declare-fun e!166098 () BalanceConc!2560)

(assert (=> bm!14530 (= call!14535 (list!1547 e!166098))))

(declare-fun c!50571 () Bool)

(assert (=> bm!14530 (= c!50571 c!50572)))

(declare-fun e!166095 () List!3818)

(assert (=> b!267294 (= e!166095 e!166096)))

(declare-fun lt!109556 () Unit!4824)

(assert (=> b!267294 (= lt!109556 (forallContained!282 tokens!465 lambda!9023 (h!9207 tokens!465)))))

(assert (=> b!267294 (= lt!109554 (printWithSeparatorTokenWhenNeededList!296 thiss!17480 rules!1920 (t!37804 tokens!465) separatorToken!170))))

(assert (=> b!267294 (= lt!109553 (maxPrefix!331 thiss!17480 rules!1920 (++!988 (list!1547 (charsOf!372 (h!9207 tokens!465))) lt!109554)))))

(assert (=> b!267294 (= c!50570 (and ((_ is Some!802) lt!109553) (= (_1!2349 (v!14665 lt!109553)) (h!9207 tokens!465))))))

(declare-fun bm!14531 () Bool)

(assert (=> bm!14531 (= call!14538 (charsOf!372 (h!9207 tokens!465)))))

(declare-fun d!77115 () Bool)

(declare-fun c!50569 () Bool)

(assert (=> d!77115 (= c!50569 ((_ is Cons!3810) tokens!465))))

(assert (=> d!77115 (= (printWithSeparatorTokenWhenNeededList!296 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!166095)))

(declare-fun b!267295 () Bool)

(assert (=> b!267295 (= e!166098 (charsOf!372 separatorToken!170))))

(declare-fun bm!14532 () Bool)

(assert (=> bm!14532 (= call!14534 call!14538)))

(declare-fun b!267296 () Bool)

(assert (=> b!267296 (= e!166098 call!14534)))

(declare-fun b!267297 () Bool)

(assert (=> b!267297 (= e!166095 Nil!3808)))

(declare-fun bm!14533 () Bool)

(assert (=> bm!14533 (= call!14537 (++!988 call!14536 (ite c!50570 lt!109554 call!14535)))))

(assert (= (and d!77115 c!50569) b!267294))

(assert (= (and d!77115 (not c!50569)) b!267297))

(assert (= (and b!267294 c!50570) b!267290))

(assert (= (and b!267294 (not c!50570)) b!267291))

(assert (= (and b!267291 c!50572) b!267292))

(assert (= (and b!267291 (not c!50572)) b!267293))

(assert (= (or b!267292 b!267293) bm!14532))

(assert (= (or b!267292 b!267293) bm!14530))

(assert (= (and bm!14530 c!50571) b!267295))

(assert (= (and bm!14530 (not c!50571)) b!267296))

(assert (= (or b!267290 bm!14532) bm!14531))

(assert (= (or b!267290 b!267292) bm!14529))

(assert (= (or b!267290 b!267292) bm!14533))

(declare-fun m!335365 () Bool)

(assert (=> bm!14529 m!335365))

(assert (=> bm!14531 m!334561))

(assert (=> b!267295 m!334551))

(declare-fun m!335367 () Bool)

(assert (=> bm!14530 m!335367))

(declare-fun m!335369 () Bool)

(assert (=> b!267292 m!335369))

(declare-fun m!335371 () Bool)

(assert (=> bm!14533 m!335371))

(assert (=> b!267293 m!334591))

(assert (=> b!267293 m!334591))

(assert (=> b!267293 m!334631))

(assert (=> b!267293 m!334591))

(declare-fun m!335373 () Bool)

(assert (=> b!267293 m!335373))

(declare-fun m!335375 () Bool)

(assert (=> b!267293 m!335375))

(declare-fun m!335377 () Bool)

(assert (=> b!267294 m!335377))

(assert (=> b!267294 m!334561))

(declare-fun m!335379 () Bool)

(assert (=> b!267294 m!335379))

(declare-fun m!335381 () Bool)

(assert (=> b!267294 m!335381))

(assert (=> b!267294 m!334565))

(assert (=> b!267294 m!334561))

(assert (=> b!267294 m!334569))

(assert (=> b!267294 m!334569))

(assert (=> b!267294 m!335379))

(assert (=> b!266828 d!77115))

(declare-fun b!267301 () Bool)

(declare-fun e!166102 () Bool)

(assert (=> b!267301 (= e!166102 (inv!15 (value!25035 separatorToken!170)))))

(declare-fun d!77117 () Bool)

(declare-fun c!50574 () Bool)

(assert (=> d!77117 (= c!50574 ((_ is IntegerValue!2247) (value!25035 separatorToken!170)))))

(declare-fun e!166103 () Bool)

(assert (=> d!77117 (= (inv!21 (value!25035 separatorToken!170)) e!166103)))

(declare-fun b!267302 () Bool)

(declare-fun e!166104 () Bool)

(assert (=> b!267302 (= e!166103 e!166104)))

(declare-fun c!50573 () Bool)

(assert (=> b!267302 (= c!50573 ((_ is IntegerValue!2248) (value!25035 separatorToken!170)))))

(declare-fun b!267303 () Bool)

(assert (=> b!267303 (= e!166103 (inv!16 (value!25035 separatorToken!170)))))

(declare-fun b!267304 () Bool)

(assert (=> b!267304 (= e!166104 (inv!17 (value!25035 separatorToken!170)))))

(declare-fun b!267305 () Bool)

(declare-fun res!122421 () Bool)

(assert (=> b!267305 (=> res!122421 e!166102)))

(assert (=> b!267305 (= res!122421 (not ((_ is IntegerValue!2249) (value!25035 separatorToken!170))))))

(assert (=> b!267305 (= e!166104 e!166102)))

(assert (= (and d!77117 c!50574) b!267303))

(assert (= (and d!77117 (not c!50574)) b!267302))

(assert (= (and b!267302 c!50573) b!267304))

(assert (= (and b!267302 (not c!50573)) b!267305))

(assert (= (and b!267305 (not res!122421)) b!267301))

(declare-fun m!335383 () Bool)

(assert (=> b!267301 m!335383))

(declare-fun m!335385 () Bool)

(assert (=> b!267303 m!335385))

(declare-fun m!335387 () Bool)

(assert (=> b!267304 m!335387))

(assert (=> b!266821 d!77117))

(declare-fun bs!29428 () Bool)

(declare-fun d!77119 () Bool)

(assert (= bs!29428 (and d!77119 b!267294)))

(declare-fun lambda!9028 () Int)

(assert (=> bs!29428 (= lambda!9028 lambda!9023)))

(declare-fun bs!29429 () Bool)

(assert (= bs!29429 (and d!77119 d!77015)))

(assert (=> bs!29429 (not (= lambda!9028 lambda!9011))))

(declare-fun bs!29430 () Bool)

(assert (= bs!29430 (and d!77119 b!267276)))

(assert (=> bs!29430 (= lambda!9028 lambda!9022)))

(declare-fun bs!29431 () Bool)

(assert (= bs!29431 (and d!77119 b!267078)))

(assert (=> bs!29431 (= lambda!9028 lambda!9012)))

(declare-fun bs!29432 () Bool)

(assert (= bs!29432 (and d!77119 d!77113)))

(assert (=> bs!29432 (not (= lambda!9028 lambda!9021))))

(declare-fun bs!29433 () Bool)

(assert (= bs!29433 (and d!77119 b!267253)))

(assert (=> bs!29433 (= lambda!9028 lambda!9020)))

(declare-fun bs!29434 () Bool)

(assert (= bs!29434 (and d!77119 b!266841)))

(assert (=> bs!29434 (not (= lambda!9028 lambda!8994))))

(declare-fun b!267311 () Bool)

(declare-fun e!166110 () Bool)

(assert (=> b!267311 (= e!166110 true)))

(declare-fun b!267310 () Bool)

(declare-fun e!166109 () Bool)

(assert (=> b!267310 (= e!166109 e!166110)))

(declare-fun b!267309 () Bool)

(declare-fun e!166108 () Bool)

(assert (=> b!267309 (= e!166108 e!166109)))

(assert (=> d!77119 e!166108))

(assert (= b!267310 b!267311))

(assert (= b!267309 b!267310))

(assert (= (and d!77119 ((_ is Cons!3809) rules!1920)) b!267309))

(assert (=> b!267311 (< (dynLambda!1941 order!2913 (toValue!1458 (transformation!727 (h!9206 rules!1920)))) (dynLambda!1942 order!2915 lambda!9028))))

(assert (=> b!267311 (< (dynLambda!1943 order!2917 (toChars!1317 (transformation!727 (h!9206 rules!1920)))) (dynLambda!1942 order!2915 lambda!9028))))

(assert (=> d!77119 true))

(declare-fun e!166107 () Bool)

(assert (=> d!77119 e!166107))

(declare-fun res!122424 () Bool)

(assert (=> d!77119 (=> (not res!122424) (not e!166107))))

(declare-fun lt!109561 () Bool)

(assert (=> d!77119 (= res!122424 (= lt!109561 (forall!949 (list!1550 lt!109288) lambda!9028)))))

(declare-fun forall!951 (BalanceConc!2562 Int) Bool)

(assert (=> d!77119 (= lt!109561 (forall!951 lt!109288 lambda!9028))))

(assert (=> d!77119 (not (isEmpty!2398 rules!1920))))

(assert (=> d!77119 (= (rulesProduceEachTokenIndividually!405 thiss!17480 rules!1920 lt!109288) lt!109561)))

(declare-fun b!267308 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!225 (LexerInterface!613 List!3819 List!3820) Bool)

(assert (=> b!267308 (= e!166107 (= lt!109561 (rulesProduceEachTokenIndividuallyList!225 thiss!17480 rules!1920 (list!1550 lt!109288))))))

(assert (= (and d!77119 res!122424) b!267308))

(assert (=> d!77119 m!335323))

(assert (=> d!77119 m!335323))

(declare-fun m!335389 () Bool)

(assert (=> d!77119 m!335389))

(declare-fun m!335391 () Bool)

(assert (=> d!77119 m!335391))

(assert (=> d!77119 m!334541))

(assert (=> b!267308 m!335323))

(assert (=> b!267308 m!335323))

(declare-fun m!335393 () Bool)

(assert (=> b!267308 m!335393))

(assert (=> b!266842 d!77119))

(declare-fun d!77121 () Bool)

(assert (=> d!77121 (= (seqFromList!822 tokens!465) (fromListB!312 tokens!465))))

(declare-fun bs!29435 () Bool)

(assert (= bs!29435 d!77121))

(declare-fun m!335395 () Bool)

(assert (=> bs!29435 m!335395))

(assert (=> b!266842 d!77121))

(declare-fun d!77123 () Bool)

(declare-fun res!122429 () Bool)

(declare-fun e!166115 () Bool)

(assert (=> d!77123 (=> res!122429 e!166115)))

(assert (=> d!77123 (= res!122429 (not ((_ is Cons!3809) rules!1920)))))

(assert (=> d!77123 (= (sepAndNonSepRulesDisjointChars!316 rules!1920 rules!1920) e!166115)))

(declare-fun b!267316 () Bool)

(declare-fun e!166116 () Bool)

(assert (=> b!267316 (= e!166115 e!166116)))

(declare-fun res!122430 () Bool)

(assert (=> b!267316 (=> (not res!122430) (not e!166116))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!114 (Rule!1254 List!3819) Bool)

(assert (=> b!267316 (= res!122430 (ruleDisjointCharsFromAllFromOtherType!114 (h!9206 rules!1920) rules!1920))))

(declare-fun b!267317 () Bool)

(assert (=> b!267317 (= e!166116 (sepAndNonSepRulesDisjointChars!316 rules!1920 (t!37803 rules!1920)))))

(assert (= (and d!77123 (not res!122429)) b!267316))

(assert (= (and b!267316 res!122430) b!267317))

(declare-fun m!335397 () Bool)

(assert (=> b!267316 m!335397))

(declare-fun m!335399 () Bool)

(assert (=> b!267317 m!335399))

(assert (=> b!266832 d!77123))

(declare-fun d!77125 () Bool)

(declare-fun res!122435 () Bool)

(declare-fun e!166121 () Bool)

(assert (=> d!77125 (=> res!122435 e!166121)))

(assert (=> d!77125 (= res!122435 ((_ is Nil!3810) tokens!465))))

(assert (=> d!77125 (= (forall!949 tokens!465 lambda!8994) e!166121)))

(declare-fun b!267322 () Bool)

(declare-fun e!166122 () Bool)

(assert (=> b!267322 (= e!166121 e!166122)))

(declare-fun res!122436 () Bool)

(assert (=> b!267322 (=> (not res!122436) (not e!166122))))

(declare-fun dynLambda!1945 (Int Token!1198) Bool)

(assert (=> b!267322 (= res!122436 (dynLambda!1945 lambda!8994 (h!9207 tokens!465)))))

(declare-fun b!267323 () Bool)

(assert (=> b!267323 (= e!166122 (forall!949 (t!37804 tokens!465) lambda!8994))))

(assert (= (and d!77125 (not res!122435)) b!267322))

(assert (= (and b!267322 res!122436) b!267323))

(declare-fun b_lambda!8387 () Bool)

(assert (=> (not b_lambda!8387) (not b!267322)))

(declare-fun m!335401 () Bool)

(assert (=> b!267322 m!335401))

(declare-fun m!335403 () Bool)

(assert (=> b!267323 m!335403))

(assert (=> b!266841 d!77125))

(declare-fun b!267325 () Bool)

(declare-fun e!166124 () List!3818)

(assert (=> b!267325 (= e!166124 (Cons!3808 (h!9205 lt!109293) (++!988 (t!37802 lt!109293) lt!109292)))))

(declare-fun e!166123 () Bool)

(declare-fun b!267327 () Bool)

(declare-fun lt!109562 () List!3818)

(assert (=> b!267327 (= e!166123 (or (not (= lt!109292 Nil!3808)) (= lt!109562 lt!109293)))))

(declare-fun b!267326 () Bool)

(declare-fun res!122438 () Bool)

(assert (=> b!267326 (=> (not res!122438) (not e!166123))))

(assert (=> b!267326 (= res!122438 (= (size!3029 lt!109562) (+ (size!3029 lt!109293) (size!3029 lt!109292))))))

(declare-fun b!267324 () Bool)

(assert (=> b!267324 (= e!166124 lt!109292)))

(declare-fun d!77127 () Bool)

(assert (=> d!77127 e!166123))

(declare-fun res!122437 () Bool)

(assert (=> d!77127 (=> (not res!122437) (not e!166123))))

(assert (=> d!77127 (= res!122437 (= (content!543 lt!109562) ((_ map or) (content!543 lt!109293) (content!543 lt!109292))))))

(assert (=> d!77127 (= lt!109562 e!166124)))

(declare-fun c!50575 () Bool)

(assert (=> d!77127 (= c!50575 ((_ is Nil!3808) lt!109293))))

(assert (=> d!77127 (= (++!988 lt!109293 lt!109292) lt!109562)))

(assert (= (and d!77127 c!50575) b!267324))

(assert (= (and d!77127 (not c!50575)) b!267325))

(assert (= (and d!77127 res!122437) b!267326))

(assert (= (and b!267326 res!122438) b!267327))

(declare-fun m!335405 () Bool)

(assert (=> b!267325 m!335405))

(declare-fun m!335407 () Bool)

(assert (=> b!267326 m!335407))

(assert (=> b!267326 m!335111))

(assert (=> b!267326 m!334765))

(declare-fun m!335409 () Bool)

(assert (=> d!77127 m!335409))

(assert (=> d!77127 m!335117))

(assert (=> d!77127 m!334771))

(assert (=> b!266820 d!77127))

(declare-fun b!267341 () Bool)

(declare-fun b_free!9957 () Bool)

(declare-fun b_next!9957 () Bool)

(assert (=> b!267341 (= b_free!9957 (not b_next!9957))))

(declare-fun tp!101932 () Bool)

(declare-fun b_and!21113 () Bool)

(assert (=> b!267341 (= tp!101932 b_and!21113)))

(declare-fun b_free!9959 () Bool)

(declare-fun b_next!9959 () Bool)

(assert (=> b!267341 (= b_free!9959 (not b_next!9959))))

(declare-fun t!37862 () Bool)

(declare-fun tb!14809 () Bool)

(assert (=> (and b!267341 (= (toChars!1317 (transformation!727 (rule!1312 (h!9207 (t!37804 tokens!465))))) (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465))))) t!37862) tb!14809))

(declare-fun result!18382 () Bool)

(assert (= result!18382 result!18344))

(assert (=> b!266874 t!37862))

(declare-fun t!37864 () Bool)

(declare-fun tb!14811 () Bool)

(assert (=> (and b!267341 (= (toChars!1317 (transformation!727 (rule!1312 (h!9207 (t!37804 tokens!465))))) (toChars!1317 (transformation!727 (rule!1312 separatorToken!170)))) t!37864) tb!14811))

(declare-fun result!18384 () Bool)

(assert (= result!18384 result!18352))

(assert (=> b!266884 t!37864))

(assert (=> d!77053 t!37864))

(assert (=> d!77059 t!37862))

(declare-fun tp!101930 () Bool)

(declare-fun b_and!21115 () Bool)

(assert (=> b!267341 (= tp!101930 (and (=> t!37862 result!18382) (=> t!37864 result!18384) b_and!21115))))

(declare-fun e!166141 () Bool)

(assert (=> b!266824 (= tp!101848 e!166141)))

(declare-fun e!166139 () Bool)

(declare-fun e!166142 () Bool)

(declare-fun tp!101929 () Bool)

(declare-fun b!267340 () Bool)

(assert (=> b!267340 (= e!166139 (and tp!101929 (inv!4702 (tag!937 (rule!1312 (h!9207 (t!37804 tokens!465))))) (inv!4706 (transformation!727 (rule!1312 (h!9207 (t!37804 tokens!465))))) e!166142))))

(declare-fun b!267338 () Bool)

(declare-fun tp!101928 () Bool)

(declare-fun e!166137 () Bool)

(assert (=> b!267338 (= e!166141 (and (inv!4705 (h!9207 (t!37804 tokens!465))) e!166137 tp!101928))))

(declare-fun tp!101931 () Bool)

(declare-fun b!267339 () Bool)

(assert (=> b!267339 (= e!166137 (and (inv!21 (value!25035 (h!9207 (t!37804 tokens!465)))) e!166139 tp!101931))))

(assert (=> b!267341 (= e!166142 (and tp!101932 tp!101930))))

(assert (= b!267340 b!267341))

(assert (= b!267339 b!267340))

(assert (= b!267338 b!267339))

(assert (= (and b!266824 ((_ is Cons!3810) (t!37804 tokens!465))) b!267338))

(declare-fun m!335411 () Bool)

(assert (=> b!267340 m!335411))

(declare-fun m!335413 () Bool)

(assert (=> b!267340 m!335413))

(declare-fun m!335415 () Bool)

(assert (=> b!267338 m!335415))

(declare-fun m!335417 () Bool)

(assert (=> b!267339 m!335417))

(declare-fun b!267353 () Bool)

(declare-fun e!166145 () Bool)

(declare-fun tp!101947 () Bool)

(declare-fun tp!101943 () Bool)

(assert (=> b!267353 (= e!166145 (and tp!101947 tp!101943))))

(declare-fun b!267355 () Bool)

(declare-fun tp!101946 () Bool)

(declare-fun tp!101944 () Bool)

(assert (=> b!267355 (= e!166145 (and tp!101946 tp!101944))))

(declare-fun b!267354 () Bool)

(declare-fun tp!101945 () Bool)

(assert (=> b!267354 (= e!166145 tp!101945)))

(assert (=> b!266825 (= tp!101841 e!166145)))

(declare-fun b!267352 () Bool)

(declare-fun tp_is_empty!1807 () Bool)

(assert (=> b!267352 (= e!166145 tp_is_empty!1807)))

(assert (= (and b!266825 ((_ is ElementMatch!951) (regex!727 (rule!1312 separatorToken!170)))) b!267352))

(assert (= (and b!266825 ((_ is Concat!1701) (regex!727 (rule!1312 separatorToken!170)))) b!267353))

(assert (= (and b!266825 ((_ is Star!951) (regex!727 (rule!1312 separatorToken!170)))) b!267354))

(assert (= (and b!266825 ((_ is Union!951) (regex!727 (rule!1312 separatorToken!170)))) b!267355))

(declare-fun b!267357 () Bool)

(declare-fun e!166146 () Bool)

(declare-fun tp!101952 () Bool)

(declare-fun tp!101948 () Bool)

(assert (=> b!267357 (= e!166146 (and tp!101952 tp!101948))))

(declare-fun b!267359 () Bool)

(declare-fun tp!101951 () Bool)

(declare-fun tp!101949 () Bool)

(assert (=> b!267359 (= e!166146 (and tp!101951 tp!101949))))

(declare-fun b!267358 () Bool)

(declare-fun tp!101950 () Bool)

(assert (=> b!267358 (= e!166146 tp!101950)))

(assert (=> b!266829 (= tp!101847 e!166146)))

(declare-fun b!267356 () Bool)

(assert (=> b!267356 (= e!166146 tp_is_empty!1807)))

(assert (= (and b!266829 ((_ is ElementMatch!951) (regex!727 (rule!1312 (h!9207 tokens!465))))) b!267356))

(assert (= (and b!266829 ((_ is Concat!1701) (regex!727 (rule!1312 (h!9207 tokens!465))))) b!267357))

(assert (= (and b!266829 ((_ is Star!951) (regex!727 (rule!1312 (h!9207 tokens!465))))) b!267358))

(assert (= (and b!266829 ((_ is Union!951) (regex!727 (rule!1312 (h!9207 tokens!465))))) b!267359))

(declare-fun b!267361 () Bool)

(declare-fun e!166147 () Bool)

(declare-fun tp!101957 () Bool)

(declare-fun tp!101953 () Bool)

(assert (=> b!267361 (= e!166147 (and tp!101957 tp!101953))))

(declare-fun b!267363 () Bool)

(declare-fun tp!101956 () Bool)

(declare-fun tp!101954 () Bool)

(assert (=> b!267363 (= e!166147 (and tp!101956 tp!101954))))

(declare-fun b!267362 () Bool)

(declare-fun tp!101955 () Bool)

(assert (=> b!267362 (= e!166147 tp!101955)))

(assert (=> b!266838 (= tp!101844 e!166147)))

(declare-fun b!267360 () Bool)

(assert (=> b!267360 (= e!166147 tp_is_empty!1807)))

(assert (= (and b!266838 ((_ is ElementMatch!951) (regex!727 (h!9206 rules!1920)))) b!267360))

(assert (= (and b!266838 ((_ is Concat!1701) (regex!727 (h!9206 rules!1920)))) b!267361))

(assert (= (and b!266838 ((_ is Star!951) (regex!727 (h!9206 rules!1920)))) b!267362))

(assert (= (and b!266838 ((_ is Union!951) (regex!727 (h!9206 rules!1920)))) b!267363))

(declare-fun b!267368 () Bool)

(declare-fun e!166150 () Bool)

(declare-fun tp!101960 () Bool)

(assert (=> b!267368 (= e!166150 (and tp_is_empty!1807 tp!101960))))

(assert (=> b!266839 (= tp!101852 e!166150)))

(assert (= (and b!266839 ((_ is Cons!3808) (originalCharacters!770 (h!9207 tokens!465)))) b!267368))

(declare-fun b!267369 () Bool)

(declare-fun e!166151 () Bool)

(declare-fun tp!101961 () Bool)

(assert (=> b!267369 (= e!166151 (and tp_is_empty!1807 tp!101961))))

(assert (=> b!266821 (= tp!101845 e!166151)))

(assert (= (and b!266821 ((_ is Cons!3808) (originalCharacters!770 separatorToken!170))) b!267369))

(declare-fun b!267380 () Bool)

(declare-fun b_free!9961 () Bool)

(declare-fun b_next!9961 () Bool)

(assert (=> b!267380 (= b_free!9961 (not b_next!9961))))

(declare-fun tp!101971 () Bool)

(declare-fun b_and!21117 () Bool)

(assert (=> b!267380 (= tp!101971 b_and!21117)))

(declare-fun b_free!9963 () Bool)

(declare-fun b_next!9963 () Bool)

(assert (=> b!267380 (= b_free!9963 (not b_next!9963))))

(declare-fun tb!14813 () Bool)

(declare-fun t!37866 () Bool)

(assert (=> (and b!267380 (= (toChars!1317 (transformation!727 (h!9206 (t!37803 rules!1920)))) (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465))))) t!37866) tb!14813))

(declare-fun result!18392 () Bool)

(assert (= result!18392 result!18344))

(assert (=> b!266874 t!37866))

(declare-fun t!37868 () Bool)

(declare-fun tb!14815 () Bool)

(assert (=> (and b!267380 (= (toChars!1317 (transformation!727 (h!9206 (t!37803 rules!1920)))) (toChars!1317 (transformation!727 (rule!1312 separatorToken!170)))) t!37868) tb!14815))

(declare-fun result!18394 () Bool)

(assert (= result!18394 result!18352))

(assert (=> b!266884 t!37868))

(assert (=> d!77053 t!37868))

(assert (=> d!77059 t!37866))

(declare-fun tp!101973 () Bool)

(declare-fun b_and!21119 () Bool)

(assert (=> b!267380 (= tp!101973 (and (=> t!37866 result!18392) (=> t!37868 result!18394) b_and!21119))))

(declare-fun e!166161 () Bool)

(assert (=> b!267380 (= e!166161 (and tp!101971 tp!101973))))

(declare-fun b!267379 () Bool)

(declare-fun tp!101970 () Bool)

(declare-fun e!166162 () Bool)

(assert (=> b!267379 (= e!166162 (and tp!101970 (inv!4702 (tag!937 (h!9206 (t!37803 rules!1920)))) (inv!4706 (transformation!727 (h!9206 (t!37803 rules!1920)))) e!166161))))

(declare-fun b!267378 () Bool)

(declare-fun e!166160 () Bool)

(declare-fun tp!101972 () Bool)

(assert (=> b!267378 (= e!166160 (and e!166162 tp!101972))))

(assert (=> b!266830 (= tp!101842 e!166160)))

(assert (= b!267379 b!267380))

(assert (= b!267378 b!267379))

(assert (= (and b!266830 ((_ is Cons!3809) (t!37803 rules!1920))) b!267378))

(declare-fun m!335419 () Bool)

(assert (=> b!267379 m!335419))

(declare-fun m!335421 () Bool)

(assert (=> b!267379 m!335421))

(declare-fun b_lambda!8389 () Bool)

(assert (= b_lambda!8369 (or (and b!267380 b_free!9963 (= (toChars!1317 (transformation!727 (h!9206 (t!37803 rules!1920)))) (toChars!1317 (transformation!727 (rule!1312 separatorToken!170))))) (and b!267341 b_free!9959 (= (toChars!1317 (transformation!727 (rule!1312 (h!9207 (t!37804 tokens!465))))) (toChars!1317 (transformation!727 (rule!1312 separatorToken!170))))) (and b!266822 b_free!9943) (and b!266835 b_free!9947 (= (toChars!1317 (transformation!727 (h!9206 rules!1920))) (toChars!1317 (transformation!727 (rule!1312 separatorToken!170))))) (and b!266827 b_free!9939 (= (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465)))) (toChars!1317 (transformation!727 (rule!1312 separatorToken!170))))) b_lambda!8389)))

(declare-fun b_lambda!8391 () Bool)

(assert (= b_lambda!8371 (or (and b!266835 b_free!9947 (= (toChars!1317 (transformation!727 (h!9206 rules!1920))) (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465)))))) (and b!266827 b_free!9939) (and b!266822 b_free!9943 (= (toChars!1317 (transformation!727 (rule!1312 separatorToken!170))) (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465)))))) (and b!267341 b_free!9959 (= (toChars!1317 (transformation!727 (rule!1312 (h!9207 (t!37804 tokens!465))))) (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465)))))) (and b!267380 b_free!9963 (= (toChars!1317 (transformation!727 (h!9206 (t!37803 rules!1920)))) (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465)))))) b_lambda!8391)))

(declare-fun b_lambda!8393 () Bool)

(assert (= b_lambda!8387 (or b!266841 b_lambda!8393)))

(declare-fun bs!29436 () Bool)

(declare-fun d!77129 () Bool)

(assert (= bs!29436 (and d!77129 b!266841)))

(assert (=> bs!29436 (= (dynLambda!1945 lambda!8994 (h!9207 tokens!465)) (not (isSeparator!727 (rule!1312 (h!9207 tokens!465)))))))

(assert (=> b!267322 d!77129))

(declare-fun b_lambda!8395 () Bool)

(assert (= b_lambda!8361 (or (and b!266835 b_free!9947 (= (toChars!1317 (transformation!727 (h!9206 rules!1920))) (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465)))))) (and b!266827 b_free!9939) (and b!266822 b_free!9943 (= (toChars!1317 (transformation!727 (rule!1312 separatorToken!170))) (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465)))))) (and b!267341 b_free!9959 (= (toChars!1317 (transformation!727 (rule!1312 (h!9207 (t!37804 tokens!465))))) (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465)))))) (and b!267380 b_free!9963 (= (toChars!1317 (transformation!727 (h!9206 (t!37803 rules!1920)))) (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465)))))) b_lambda!8395)))

(declare-fun b_lambda!8397 () Bool)

(assert (= b_lambda!8363 (or (and b!267380 b_free!9963 (= (toChars!1317 (transformation!727 (h!9206 (t!37803 rules!1920)))) (toChars!1317 (transformation!727 (rule!1312 separatorToken!170))))) (and b!267341 b_free!9959 (= (toChars!1317 (transformation!727 (rule!1312 (h!9207 (t!37804 tokens!465))))) (toChars!1317 (transformation!727 (rule!1312 separatorToken!170))))) (and b!266822 b_free!9943) (and b!266835 b_free!9947 (= (toChars!1317 (transformation!727 (h!9206 rules!1920))) (toChars!1317 (transformation!727 (rule!1312 separatorToken!170))))) (and b!266827 b_free!9939 (= (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465)))) (toChars!1317 (transformation!727 (rule!1312 separatorToken!170))))) b_lambda!8397)))

(check-sat (not d!76999) b_and!21097 (not d!77053) (not b!266884) (not d!76975) tp_is_empty!1807 (not b!267274) (not b!267369) (not b!267082) b_and!21117 (not b_next!9941) (not bm!14533) (not b!266890) (not b_next!9959) (not b!267339) (not b!267355) (not b_next!9947) (not b!267286) (not b_next!9945) b_and!21119 (not b!266882) (not b!267254) (not b!267104) (not b!266875) (not b!267252) (not b!267086) (not bm!14520) (not b!266885) (not b!267282) (not b!267111) (not b!267294) (not d!77055) (not b_lambda!8395) (not d!76993) b_and!21045 (not b!267361) (not b!267293) (not b!267097) (not b!267107) (not b!266893) b_and!21049 (not bm!14528) (not d!76987) (not b!267316) (not bm!14508) (not b!267359) (not b!267279) (not b!267253) (not b!266883) b_and!21113 (not d!76995) (not b!266886) (not b!267298) (not b!267309) (not b!267251) (not b!267292) (not d!77121) (not bm!14523) (not d!76981) (not b!267108) (not b!267326) (not d!77007) (not d!77059) (not b!267260) (not b!267338) (not b!266902) (not d!77057) (not d!77001) (not b!267340) (not bm!14526) (not d!76977) (not b_next!9943) (not b!267379) (not d!76997) (not b!266900) (not bm!14505) (not b!266874) (not b!267088) (not d!77107) (not b!267308) (not d!77003) (not b!267287) (not d!77061) (not d!77011) (not b!266922) (not bm!14506) (not b!267084) (not d!77063) (not d!77119) (not b!267378) (not d!77113) (not b!267103) (not b!267276) (not b!266868) (not b_lambda!8391) (not b!267353) (not d!76983) (not bm!14531) (not b!267295) (not b!267363) (not d!77013) (not bm!14529) (not b!267303) (not b_next!9939) (not b!267354) (not bm!14519) (not d!76973) (not b_lambda!8397) (not b!267273) (not d!76979) (not tb!14783) (not b_lambda!8389) (not b_next!9963) (not b!267325) (not bm!14530) (not b!267368) (not b!267304) (not tb!14789) b_and!21093 (not b!267280) (not b!266921) (not b!267358) (not b_next!9937) (not b!267317) (not b!267112) (not d!77127) (not bm!14525) (not d!77015) (not d!77009) (not b!267078) (not d!77111) (not b!267257) (not b!267323) (not b!267362) (not b!266867) (not b!267357) (not b_next!9961) (not b_next!9957) (not b!266880) (not b!266905) (not d!77065) (not b!267271) (not b_lambda!8393) (not b!266889) (not b!267081) (not b!266881) (not bm!14521) b_and!21115 b_and!21053 (not b!267301) (not b!267284) (not b!266910) (not b!266869) b_and!21095)
(check-sat b_and!21097 (not b_next!9959) b_and!21119 b_and!21045 b_and!21049 b_and!21113 (not b_next!9943) (not b_next!9939) (not b_next!9963) b_and!21093 (not b_next!9937) (not b_next!9961) (not b_next!9957) b_and!21095 b_and!21117 (not b_next!9941) (not b_next!9945) (not b_next!9947) b_and!21115 b_and!21053)
(get-model)

(declare-fun lt!109565 () Bool)

(declare-fun d!77131 () Bool)

(assert (=> d!77131 (= lt!109565 (isEmpty!2402 (list!1547 (_2!2346 (lex!404 thiss!17480 rules!1920 (print!338 thiss!17480 (singletonSeq!273 separatorToken!170)))))))))

(declare-fun isEmpty!2403 (Conc!1276) Bool)

(assert (=> d!77131 (= lt!109565 (isEmpty!2403 (c!50467 (_2!2346 (lex!404 thiss!17480 rules!1920 (print!338 thiss!17480 (singletonSeq!273 separatorToken!170)))))))))

(assert (=> d!77131 (= (isEmpty!2400 (_2!2346 (lex!404 thiss!17480 rules!1920 (print!338 thiss!17480 (singletonSeq!273 separatorToken!170))))) lt!109565)))

(declare-fun bs!29437 () Bool)

(assert (= bs!29437 d!77131))

(declare-fun m!335423 () Bool)

(assert (=> bs!29437 m!335423))

(assert (=> bs!29437 m!335423))

(declare-fun m!335425 () Bool)

(assert (=> bs!29437 m!335425))

(declare-fun m!335427 () Bool)

(assert (=> bs!29437 m!335427))

(assert (=> b!266883 d!77131))

(declare-fun b!267391 () Bool)

(declare-fun res!122454 () Bool)

(declare-fun e!166171 () Bool)

(assert (=> b!267391 (=> (not res!122454) (not e!166171))))

(declare-fun lt!109568 () tuple2!4260)

(declare-datatypes ((tuple2!4268 0))(
  ( (tuple2!4269 (_1!2350 List!3820) (_2!2350 List!3818)) )
))
(declare-fun lexList!204 (LexerInterface!613 List!3819 List!3818) tuple2!4268)

(assert (=> b!267391 (= res!122454 (= (list!1550 (_1!2346 lt!109568)) (_1!2350 (lexList!204 thiss!17480 rules!1920 (list!1547 (print!338 thiss!17480 (singletonSeq!273 separatorToken!170)))))))))

(declare-fun d!77133 () Bool)

(assert (=> d!77133 e!166171))

(declare-fun res!122455 () Bool)

(assert (=> d!77133 (=> (not res!122455) (not e!166171))))

(declare-fun e!166172 () Bool)

(assert (=> d!77133 (= res!122455 e!166172)))

(declare-fun c!50578 () Bool)

(assert (=> d!77133 (= c!50578 (> (size!3028 (_1!2346 lt!109568)) 0))))

(declare-fun lexTailRecV2!171 (LexerInterface!613 List!3819 BalanceConc!2560 BalanceConc!2560 BalanceConc!2560 BalanceConc!2562) tuple2!4260)

(assert (=> d!77133 (= lt!109568 (lexTailRecV2!171 thiss!17480 rules!1920 (print!338 thiss!17480 (singletonSeq!273 separatorToken!170)) (BalanceConc!2561 Empty!1276) (print!338 thiss!17480 (singletonSeq!273 separatorToken!170)) (BalanceConc!2563 Empty!1277)))))

(assert (=> d!77133 (= (lex!404 thiss!17480 rules!1920 (print!338 thiss!17480 (singletonSeq!273 separatorToken!170))) lt!109568)))

(declare-fun b!267392 () Bool)

(declare-fun e!166170 () Bool)

(declare-fun isEmpty!2404 (BalanceConc!2562) Bool)

(assert (=> b!267392 (= e!166170 (not (isEmpty!2404 (_1!2346 lt!109568))))))

(declare-fun b!267393 () Bool)

(assert (=> b!267393 (= e!166172 e!166170)))

(declare-fun res!122453 () Bool)

(declare-fun size!3030 (BalanceConc!2560) Int)

(assert (=> b!267393 (= res!122453 (< (size!3030 (_2!2346 lt!109568)) (size!3030 (print!338 thiss!17480 (singletonSeq!273 separatorToken!170)))))))

(assert (=> b!267393 (=> (not res!122453) (not e!166170))))

(declare-fun b!267394 () Bool)

(assert (=> b!267394 (= e!166171 (= (list!1547 (_2!2346 lt!109568)) (_2!2350 (lexList!204 thiss!17480 rules!1920 (list!1547 (print!338 thiss!17480 (singletonSeq!273 separatorToken!170)))))))))

(declare-fun b!267395 () Bool)

(assert (=> b!267395 (= e!166172 (= (_2!2346 lt!109568) (print!338 thiss!17480 (singletonSeq!273 separatorToken!170))))))

(assert (= (and d!77133 c!50578) b!267393))

(assert (= (and d!77133 (not c!50578)) b!267395))

(assert (= (and b!267393 res!122453) b!267392))

(assert (= (and d!77133 res!122455) b!267391))

(assert (= (and b!267391 res!122454) b!267394))

(declare-fun m!335429 () Bool)

(assert (=> d!77133 m!335429))

(assert (=> d!77133 m!334661))

(assert (=> d!77133 m!334661))

(declare-fun m!335431 () Bool)

(assert (=> d!77133 m!335431))

(declare-fun m!335433 () Bool)

(assert (=> b!267394 m!335433))

(assert (=> b!267394 m!334661))

(declare-fun m!335435 () Bool)

(assert (=> b!267394 m!335435))

(assert (=> b!267394 m!335435))

(declare-fun m!335437 () Bool)

(assert (=> b!267394 m!335437))

(declare-fun m!335439 () Bool)

(assert (=> b!267391 m!335439))

(assert (=> b!267391 m!334661))

(assert (=> b!267391 m!335435))

(assert (=> b!267391 m!335435))

(assert (=> b!267391 m!335437))

(declare-fun m!335441 () Bool)

(assert (=> b!267392 m!335441))

(declare-fun m!335443 () Bool)

(assert (=> b!267393 m!335443))

(assert (=> b!267393 m!334661))

(declare-fun m!335445 () Bool)

(assert (=> b!267393 m!335445))

(assert (=> b!266883 d!77133))

(declare-fun d!77135 () Bool)

(declare-fun lt!109569 () BalanceConc!2560)

(assert (=> d!77135 (= (list!1547 lt!109569) (printList!289 thiss!17480 (list!1550 (singletonSeq!273 separatorToken!170))))))

(assert (=> d!77135 (= lt!109569 (printTailRec!301 thiss!17480 (singletonSeq!273 separatorToken!170) 0 (BalanceConc!2561 Empty!1276)))))

(assert (=> d!77135 (= (print!338 thiss!17480 (singletonSeq!273 separatorToken!170)) lt!109569)))

(declare-fun bs!29438 () Bool)

(assert (= bs!29438 d!77135))

(declare-fun m!335447 () Bool)

(assert (=> bs!29438 m!335447))

(assert (=> bs!29438 m!334657))

(assert (=> bs!29438 m!334659))

(assert (=> bs!29438 m!334659))

(declare-fun m!335449 () Bool)

(assert (=> bs!29438 m!335449))

(assert (=> bs!29438 m!334657))

(declare-fun m!335451 () Bool)

(assert (=> bs!29438 m!335451))

(assert (=> b!266883 d!77135))

(declare-fun d!77137 () Bool)

(declare-fun e!166173 () Bool)

(assert (=> d!77137 e!166173))

(declare-fun res!122456 () Bool)

(assert (=> d!77137 (=> (not res!122456) (not e!166173))))

(declare-fun lt!109570 () BalanceConc!2562)

(assert (=> d!77137 (= res!122456 (= (list!1550 lt!109570) (Cons!3810 separatorToken!170 Nil!3810)))))

(assert (=> d!77137 (= lt!109570 (singleton!109 separatorToken!170))))

(assert (=> d!77137 (= (singletonSeq!273 separatorToken!170) lt!109570)))

(declare-fun b!267396 () Bool)

(assert (=> b!267396 (= e!166173 (isBalanced!344 (c!50469 lt!109570)))))

(assert (= (and d!77137 res!122456) b!267396))

(declare-fun m!335453 () Bool)

(assert (=> d!77137 m!335453))

(declare-fun m!335455 () Bool)

(assert (=> d!77137 m!335455))

(declare-fun m!335457 () Bool)

(assert (=> b!267396 m!335457))

(assert (=> b!266883 d!77137))

(declare-fun d!77139 () Bool)

(assert (=> d!77139 (= (list!1547 lt!109332) (list!1551 (c!50467 lt!109332)))))

(declare-fun bs!29439 () Bool)

(assert (= bs!29439 d!77139))

(declare-fun m!335459 () Bool)

(assert (=> bs!29439 m!335459))

(assert (=> d!77001 d!77139))

(declare-fun d!77141 () Bool)

(declare-fun c!50579 () Bool)

(assert (=> d!77141 (= c!50579 ((_ is Cons!3810) (list!1550 lt!109287)))))

(declare-fun e!166174 () List!3818)

(assert (=> d!77141 (= (printList!289 thiss!17480 (list!1550 lt!109287)) e!166174)))

(declare-fun b!267397 () Bool)

(assert (=> b!267397 (= e!166174 (++!988 (list!1547 (charsOf!372 (h!9207 (list!1550 lt!109287)))) (printList!289 thiss!17480 (t!37804 (list!1550 lt!109287)))))))

(declare-fun b!267398 () Bool)

(assert (=> b!267398 (= e!166174 Nil!3808)))

(assert (= (and d!77141 c!50579) b!267397))

(assert (= (and d!77141 (not c!50579)) b!267398))

(declare-fun m!335461 () Bool)

(assert (=> b!267397 m!335461))

(assert (=> b!267397 m!335461))

(declare-fun m!335463 () Bool)

(assert (=> b!267397 m!335463))

(declare-fun m!335465 () Bool)

(assert (=> b!267397 m!335465))

(assert (=> b!267397 m!335463))

(assert (=> b!267397 m!335465))

(declare-fun m!335467 () Bool)

(assert (=> b!267397 m!335467))

(assert (=> d!77001 d!77141))

(declare-fun d!77143 () Bool)

(declare-fun list!1552 (Conc!1277) List!3820)

(assert (=> d!77143 (= (list!1550 lt!109287) (list!1552 (c!50469 lt!109287)))))

(declare-fun bs!29440 () Bool)

(assert (= bs!29440 d!77143))

(declare-fun m!335469 () Bool)

(assert (=> bs!29440 m!335469))

(assert (=> d!77001 d!77143))

(assert (=> d!77001 d!76997))

(declare-fun d!77145 () Bool)

(declare-fun e!166177 () Bool)

(assert (=> d!77145 e!166177))

(declare-fun res!122467 () Bool)

(assert (=> d!77145 (=> (not res!122467) (not e!166177))))

(declare-fun appendAssocInst!60 (Conc!1276 Conc!1276) Bool)

(assert (=> d!77145 (= res!122467 (appendAssocInst!60 (c!50467 call!14533) (c!50467 lt!109544)))))

(declare-fun lt!109573 () BalanceConc!2560)

(declare-fun ++!991 (Conc!1276 Conc!1276) Conc!1276)

(assert (=> d!77145 (= lt!109573 (BalanceConc!2561 (++!991 (c!50467 call!14533) (c!50467 lt!109544))))))

(assert (=> d!77145 (= (++!990 call!14533 lt!109544) lt!109573)))

(declare-fun b!267410 () Bool)

(assert (=> b!267410 (= e!166177 (= (list!1547 lt!109573) (++!988 (list!1547 call!14533) (list!1547 lt!109544))))))

(declare-fun b!267408 () Bool)

(declare-fun res!122468 () Bool)

(assert (=> b!267408 (=> (not res!122468) (not e!166177))))

(declare-fun height!149 (Conc!1276) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!267408 (= res!122468 (<= (height!149 (++!991 (c!50467 call!14533) (c!50467 lt!109544))) (+ (max!0 (height!149 (c!50467 call!14533)) (height!149 (c!50467 lt!109544))) 1)))))

(declare-fun b!267409 () Bool)

(declare-fun res!122470 () Bool)

(assert (=> b!267409 (=> (not res!122470) (not e!166177))))

(assert (=> b!267409 (= res!122470 (>= (height!149 (++!991 (c!50467 call!14533) (c!50467 lt!109544))) (max!0 (height!149 (c!50467 call!14533)) (height!149 (c!50467 lt!109544)))))))

(declare-fun b!267407 () Bool)

(declare-fun res!122469 () Bool)

(assert (=> b!267407 (=> (not res!122469) (not e!166177))))

(declare-fun isBalanced!346 (Conc!1276) Bool)

(assert (=> b!267407 (= res!122469 (isBalanced!346 (++!991 (c!50467 call!14533) (c!50467 lt!109544))))))

(assert (= (and d!77145 res!122467) b!267407))

(assert (= (and b!267407 res!122469) b!267408))

(assert (= (and b!267408 res!122468) b!267409))

(assert (= (and b!267409 res!122470) b!267410))

(declare-fun m!335471 () Bool)

(assert (=> b!267408 m!335471))

(declare-fun m!335473 () Bool)

(assert (=> b!267408 m!335473))

(declare-fun m!335475 () Bool)

(assert (=> b!267408 m!335475))

(declare-fun m!335477 () Bool)

(assert (=> b!267408 m!335477))

(assert (=> b!267408 m!335471))

(assert (=> b!267408 m!335477))

(assert (=> b!267408 m!335475))

(declare-fun m!335479 () Bool)

(assert (=> b!267408 m!335479))

(assert (=> b!267407 m!335471))

(assert (=> b!267407 m!335471))

(declare-fun m!335481 () Bool)

(assert (=> b!267407 m!335481))

(declare-fun m!335483 () Bool)

(assert (=> d!77145 m!335483))

(assert (=> d!77145 m!335471))

(assert (=> b!267409 m!335471))

(assert (=> b!267409 m!335473))

(assert (=> b!267409 m!335475))

(assert (=> b!267409 m!335477))

(assert (=> b!267409 m!335471))

(assert (=> b!267409 m!335477))

(assert (=> b!267409 m!335475))

(assert (=> b!267409 m!335479))

(declare-fun m!335485 () Bool)

(assert (=> b!267410 m!335485))

(declare-fun m!335487 () Bool)

(assert (=> b!267410 m!335487))

(assert (=> b!267410 m!335343))

(assert (=> b!267410 m!335487))

(assert (=> b!267410 m!335343))

(declare-fun m!335489 () Bool)

(assert (=> b!267410 m!335489))

(assert (=> b!267279 d!77145))

(declare-fun d!77147 () Bool)

(declare-fun c!50587 () Bool)

(assert (=> d!77147 (= c!50587 ((_ is Empty!1276) (c!50467 (charsOf!372 (h!9207 tokens!465)))))))

(declare-fun e!166182 () List!3818)

(assert (=> d!77147 (= (list!1551 (c!50467 (charsOf!372 (h!9207 tokens!465)))) e!166182)))

(declare-fun b!267419 () Bool)

(assert (=> b!267419 (= e!166182 Nil!3808)))

(declare-fun b!267420 () Bool)

(declare-fun e!166183 () List!3818)

(assert (=> b!267420 (= e!166182 e!166183)))

(declare-fun c!50588 () Bool)

(assert (=> b!267420 (= c!50588 ((_ is Leaf!1979) (c!50467 (charsOf!372 (h!9207 tokens!465)))))))

(declare-fun b!267421 () Bool)

(declare-fun list!1553 (IArray!2553) List!3818)

(assert (=> b!267421 (= e!166183 (list!1553 (xs!3875 (c!50467 (charsOf!372 (h!9207 tokens!465))))))))

(declare-fun b!267422 () Bool)

(assert (=> b!267422 (= e!166183 (++!988 (list!1551 (left!3130 (c!50467 (charsOf!372 (h!9207 tokens!465))))) (list!1551 (right!3460 (c!50467 (charsOf!372 (h!9207 tokens!465)))))))))

(assert (= (and d!77147 c!50587) b!267419))

(assert (= (and d!77147 (not c!50587)) b!267420))

(assert (= (and b!267420 c!50588) b!267421))

(assert (= (and b!267420 (not c!50588)) b!267422))

(declare-fun m!335491 () Bool)

(assert (=> b!267421 m!335491))

(declare-fun m!335493 () Bool)

(assert (=> b!267422 m!335493))

(declare-fun m!335495 () Bool)

(assert (=> b!267422 m!335495))

(assert (=> b!267422 m!335493))

(assert (=> b!267422 m!335495))

(declare-fun m!335497 () Bool)

(assert (=> b!267422 m!335497))

(assert (=> d!77057 d!77147))

(declare-fun d!77149 () Bool)

(declare-fun c!50591 () Bool)

(assert (=> d!77149 (= c!50591 ((_ is Node!1276) (c!50467 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465)))) (value!25035 (h!9207 tokens!465))))))))

(declare-fun e!166188 () Bool)

(assert (=> d!77149 (= (inv!4709 (c!50467 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465)))) (value!25035 (h!9207 tokens!465))))) e!166188)))

(declare-fun b!267429 () Bool)

(declare-fun inv!4711 (Conc!1276) Bool)

(assert (=> b!267429 (= e!166188 (inv!4711 (c!50467 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465)))) (value!25035 (h!9207 tokens!465))))))))

(declare-fun b!267430 () Bool)

(declare-fun e!166189 () Bool)

(assert (=> b!267430 (= e!166188 e!166189)))

(declare-fun res!122473 () Bool)

(assert (=> b!267430 (= res!122473 (not ((_ is Leaf!1979) (c!50467 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465)))) (value!25035 (h!9207 tokens!465)))))))))

(assert (=> b!267430 (=> res!122473 e!166189)))

(declare-fun b!267431 () Bool)

(declare-fun inv!4712 (Conc!1276) Bool)

(assert (=> b!267431 (= e!166189 (inv!4712 (c!50467 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465)))) (value!25035 (h!9207 tokens!465))))))))

(assert (= (and d!77149 c!50591) b!267429))

(assert (= (and d!77149 (not c!50591)) b!267430))

(assert (= (and b!267430 (not res!122473)) b!267431))

(declare-fun m!335499 () Bool)

(assert (=> b!267429 m!335499))

(declare-fun m!335501 () Bool)

(assert (=> b!267431 m!335501))

(assert (=> b!266880 d!77149))

(declare-fun d!77151 () Bool)

(declare-fun lt!109574 () BalanceConc!2560)

(assert (=> d!77151 (= (list!1547 lt!109574) (originalCharacters!770 (h!9207 (t!37804 tokens!465))))))

(assert (=> d!77151 (= lt!109574 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 (h!9207 (t!37804 tokens!465))))) (value!25035 (h!9207 (t!37804 tokens!465)))))))

(assert (=> d!77151 (= (charsOf!372 (h!9207 (t!37804 tokens!465))) lt!109574)))

(declare-fun b_lambda!8399 () Bool)

(assert (=> (not b_lambda!8399) (not d!77151)))

(declare-fun t!37873 () Bool)

(declare-fun tb!14817 () Bool)

(assert (=> (and b!267341 (= (toChars!1317 (transformation!727 (rule!1312 (h!9207 (t!37804 tokens!465))))) (toChars!1317 (transformation!727 (rule!1312 (h!9207 (t!37804 tokens!465)))))) t!37873) tb!14817))

(declare-fun b!267432 () Bool)

(declare-fun e!166190 () Bool)

(declare-fun tp!101974 () Bool)

(assert (=> b!267432 (= e!166190 (and (inv!4709 (c!50467 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 (h!9207 (t!37804 tokens!465))))) (value!25035 (h!9207 (t!37804 tokens!465)))))) tp!101974))))

(declare-fun result!18396 () Bool)

(assert (=> tb!14817 (= result!18396 (and (inv!4710 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 (h!9207 (t!37804 tokens!465))))) (value!25035 (h!9207 (t!37804 tokens!465))))) e!166190))))

(assert (= tb!14817 b!267432))

(declare-fun m!335503 () Bool)

(assert (=> b!267432 m!335503))

(declare-fun m!335505 () Bool)

(assert (=> tb!14817 m!335505))

(assert (=> d!77151 t!37873))

(declare-fun b_and!21121 () Bool)

(assert (= b_and!21115 (and (=> t!37873 result!18396) b_and!21121)))

(declare-fun t!37875 () Bool)

(declare-fun tb!14819 () Bool)

(assert (=> (and b!267380 (= (toChars!1317 (transformation!727 (h!9206 (t!37803 rules!1920)))) (toChars!1317 (transformation!727 (rule!1312 (h!9207 (t!37804 tokens!465)))))) t!37875) tb!14819))

(declare-fun result!18398 () Bool)

(assert (= result!18398 result!18396))

(assert (=> d!77151 t!37875))

(declare-fun b_and!21123 () Bool)

(assert (= b_and!21119 (and (=> t!37875 result!18398) b_and!21123)))

(declare-fun t!37877 () Bool)

(declare-fun tb!14821 () Bool)

(assert (=> (and b!266835 (= (toChars!1317 (transformation!727 (h!9206 rules!1920))) (toChars!1317 (transformation!727 (rule!1312 (h!9207 (t!37804 tokens!465)))))) t!37877) tb!14821))

(declare-fun result!18400 () Bool)

(assert (= result!18400 result!18396))

(assert (=> d!77151 t!37877))

(declare-fun b_and!21125 () Bool)

(assert (= b_and!21097 (and (=> t!37877 result!18400) b_and!21125)))

(declare-fun tb!14823 () Bool)

(declare-fun t!37879 () Bool)

(assert (=> (and b!266822 (= (toChars!1317 (transformation!727 (rule!1312 separatorToken!170))) (toChars!1317 (transformation!727 (rule!1312 (h!9207 (t!37804 tokens!465)))))) t!37879) tb!14823))

(declare-fun result!18402 () Bool)

(assert (= result!18402 result!18396))

(assert (=> d!77151 t!37879))

(declare-fun b_and!21127 () Bool)

(assert (= b_and!21095 (and (=> t!37879 result!18402) b_and!21127)))

(declare-fun t!37881 () Bool)

(declare-fun tb!14825 () Bool)

(assert (=> (and b!266827 (= (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465)))) (toChars!1317 (transformation!727 (rule!1312 (h!9207 (t!37804 tokens!465)))))) t!37881) tb!14825))

(declare-fun result!18404 () Bool)

(assert (= result!18404 result!18396))

(assert (=> d!77151 t!37881))

(declare-fun b_and!21129 () Bool)

(assert (= b_and!21093 (and (=> t!37881 result!18404) b_and!21129)))

(declare-fun m!335507 () Bool)

(assert (=> d!77151 m!335507))

(declare-fun m!335509 () Bool)

(assert (=> d!77151 m!335509))

(assert (=> bm!14521 d!77151))

(declare-fun d!77153 () Bool)

(declare-fun lt!109577 () Int)

(assert (=> d!77153 (>= lt!109577 0)))

(declare-fun e!166193 () Int)

(assert (=> d!77153 (= lt!109577 e!166193)))

(declare-fun c!50594 () Bool)

(assert (=> d!77153 (= c!50594 ((_ is Nil!3808) (originalCharacters!770 separatorToken!170)))))

(assert (=> d!77153 (= (size!3029 (originalCharacters!770 separatorToken!170)) lt!109577)))

(declare-fun b!267437 () Bool)

(assert (=> b!267437 (= e!166193 0)))

(declare-fun b!267438 () Bool)

(assert (=> b!267438 (= e!166193 (+ 1 (size!3029 (t!37802 (originalCharacters!770 separatorToken!170)))))))

(assert (= (and d!77153 c!50594) b!267437))

(assert (= (and d!77153 (not c!50594)) b!267438))

(declare-fun m!335511 () Bool)

(assert (=> b!267438 m!335511))

(assert (=> b!266885 d!77153))

(declare-fun d!77155 () Bool)

(declare-fun e!166194 () Bool)

(assert (=> d!77155 e!166194))

(declare-fun res!122474 () Bool)

(assert (=> d!77155 (=> (not res!122474) (not e!166194))))

(assert (=> d!77155 (= res!122474 (appendAssocInst!60 (c!50467 call!14513) (c!50467 lt!109471)))))

(declare-fun lt!109578 () BalanceConc!2560)

(assert (=> d!77155 (= lt!109578 (BalanceConc!2561 (++!991 (c!50467 call!14513) (c!50467 lt!109471))))))

(assert (=> d!77155 (= (++!990 call!14513 lt!109471) lt!109578)))

(declare-fun b!267442 () Bool)

(assert (=> b!267442 (= e!166194 (= (list!1547 lt!109578) (++!988 (list!1547 call!14513) (list!1547 lt!109471))))))

(declare-fun b!267440 () Bool)

(declare-fun res!122475 () Bool)

(assert (=> b!267440 (=> (not res!122475) (not e!166194))))

(assert (=> b!267440 (= res!122475 (<= (height!149 (++!991 (c!50467 call!14513) (c!50467 lt!109471))) (+ (max!0 (height!149 (c!50467 call!14513)) (height!149 (c!50467 lt!109471))) 1)))))

(declare-fun b!267441 () Bool)

(declare-fun res!122477 () Bool)

(assert (=> b!267441 (=> (not res!122477) (not e!166194))))

(assert (=> b!267441 (= res!122477 (>= (height!149 (++!991 (c!50467 call!14513) (c!50467 lt!109471))) (max!0 (height!149 (c!50467 call!14513)) (height!149 (c!50467 lt!109471)))))))

(declare-fun b!267439 () Bool)

(declare-fun res!122476 () Bool)

(assert (=> b!267439 (=> (not res!122476) (not e!166194))))

(assert (=> b!267439 (= res!122476 (isBalanced!346 (++!991 (c!50467 call!14513) (c!50467 lt!109471))))))

(assert (= (and d!77155 res!122474) b!267439))

(assert (= (and b!267439 res!122476) b!267440))

(assert (= (and b!267440 res!122475) b!267441))

(assert (= (and b!267441 res!122477) b!267442))

(declare-fun m!335513 () Bool)

(assert (=> b!267440 m!335513))

(declare-fun m!335515 () Bool)

(assert (=> b!267440 m!335515))

(declare-fun m!335517 () Bool)

(assert (=> b!267440 m!335517))

(declare-fun m!335519 () Bool)

(assert (=> b!267440 m!335519))

(assert (=> b!267440 m!335513))

(assert (=> b!267440 m!335519))

(assert (=> b!267440 m!335517))

(declare-fun m!335521 () Bool)

(assert (=> b!267440 m!335521))

(assert (=> b!267439 m!335513))

(assert (=> b!267439 m!335513))

(declare-fun m!335523 () Bool)

(assert (=> b!267439 m!335523))

(declare-fun m!335525 () Bool)

(assert (=> d!77155 m!335525))

(assert (=> d!77155 m!335513))

(assert (=> b!267441 m!335513))

(assert (=> b!267441 m!335515))

(assert (=> b!267441 m!335517))

(assert (=> b!267441 m!335519))

(assert (=> b!267441 m!335513))

(assert (=> b!267441 m!335519))

(assert (=> b!267441 m!335517))

(assert (=> b!267441 m!335521))

(declare-fun m!335527 () Bool)

(assert (=> b!267442 m!335527))

(declare-fun m!335529 () Bool)

(assert (=> b!267442 m!335529))

(assert (=> b!267442 m!335083))

(assert (=> b!267442 m!335529))

(assert (=> b!267442 m!335083))

(declare-fun m!335531 () Bool)

(assert (=> b!267442 m!335531))

(assert (=> b!267081 d!77155))

(declare-fun d!77157 () Bool)

(declare-fun lt!109579 () Int)

(assert (=> d!77157 (>= lt!109579 0)))

(declare-fun e!166195 () Int)

(assert (=> d!77157 (= lt!109579 e!166195)))

(declare-fun c!50595 () Bool)

(assert (=> d!77157 (= c!50595 ((_ is Nil!3808) lt!109483))))

(assert (=> d!77157 (= (size!3029 lt!109483) lt!109579)))

(declare-fun b!267443 () Bool)

(assert (=> b!267443 (= e!166195 0)))

(declare-fun b!267444 () Bool)

(assert (=> b!267444 (= e!166195 (+ 1 (size!3029 (t!37802 lt!109483))))))

(assert (= (and d!77157 c!50595) b!267443))

(assert (= (and d!77157 (not c!50595)) b!267444))

(declare-fun m!335533 () Bool)

(assert (=> b!267444 m!335533))

(assert (=> b!267104 d!77157))

(declare-fun d!77159 () Bool)

(declare-fun lt!109580 () Int)

(assert (=> d!77159 (>= lt!109580 0)))

(declare-fun e!166196 () Int)

(assert (=> d!77159 (= lt!109580 e!166196)))

(declare-fun c!50596 () Bool)

(assert (=> d!77159 (= c!50596 ((_ is Nil!3808) lt!109293))))

(assert (=> d!77159 (= (size!3029 lt!109293) lt!109580)))

(declare-fun b!267445 () Bool)

(assert (=> b!267445 (= e!166196 0)))

(declare-fun b!267446 () Bool)

(assert (=> b!267446 (= e!166196 (+ 1 (size!3029 (t!37802 lt!109293))))))

(assert (= (and d!77159 c!50596) b!267445))

(assert (= (and d!77159 (not c!50596)) b!267446))

(declare-fun m!335535 () Bool)

(assert (=> b!267446 m!335535))

(assert (=> b!267104 d!77159))

(declare-fun d!77161 () Bool)

(declare-fun lt!109581 () Int)

(assert (=> d!77161 (>= lt!109581 0)))

(declare-fun e!166197 () Int)

(assert (=> d!77161 (= lt!109581 e!166197)))

(declare-fun c!50597 () Bool)

(assert (=> d!77161 (= c!50597 ((_ is Nil!3808) lt!109297))))

(assert (=> d!77161 (= (size!3029 lt!109297) lt!109581)))

(declare-fun b!267447 () Bool)

(assert (=> b!267447 (= e!166197 0)))

(declare-fun b!267448 () Bool)

(assert (=> b!267448 (= e!166197 (+ 1 (size!3029 (t!37802 lt!109297))))))

(assert (= (and d!77161 c!50597) b!267447))

(assert (= (and d!77161 (not c!50597)) b!267448))

(declare-fun m!335537 () Bool)

(assert (=> b!267448 m!335537))

(assert (=> b!267104 d!77161))

(declare-fun d!77163 () Bool)

(declare-fun res!122478 () Bool)

(declare-fun e!166198 () Bool)

(assert (=> d!77163 (=> res!122478 e!166198)))

(assert (=> d!77163 (= res!122478 ((_ is Nil!3810) (t!37804 tokens!465)))))

(assert (=> d!77163 (= (forall!949 (t!37804 tokens!465) lambda!8994) e!166198)))

(declare-fun b!267449 () Bool)

(declare-fun e!166199 () Bool)

(assert (=> b!267449 (= e!166198 e!166199)))

(declare-fun res!122479 () Bool)

(assert (=> b!267449 (=> (not res!122479) (not e!166199))))

(assert (=> b!267449 (= res!122479 (dynLambda!1945 lambda!8994 (h!9207 (t!37804 tokens!465))))))

(declare-fun b!267450 () Bool)

(assert (=> b!267450 (= e!166199 (forall!949 (t!37804 (t!37804 tokens!465)) lambda!8994))))

(assert (= (and d!77163 (not res!122478)) b!267449))

(assert (= (and b!267449 res!122479) b!267450))

(declare-fun b_lambda!8401 () Bool)

(assert (=> (not b_lambda!8401) (not b!267449)))

(declare-fun m!335539 () Bool)

(assert (=> b!267449 m!335539))

(declare-fun m!335541 () Bool)

(assert (=> b!267450 m!335541))

(assert (=> b!267323 d!77163))

(declare-fun d!77165 () Bool)

(declare-fun lt!109584 () Token!1198)

(assert (=> d!77165 (= lt!109584 (apply!758 (list!1550 lt!109288) 0))))

(declare-fun apply!759 (Conc!1277 Int) Token!1198)

(assert (=> d!77165 (= lt!109584 (apply!759 (c!50469 lt!109288) 0))))

(declare-fun e!166202 () Bool)

(assert (=> d!77165 e!166202))

(declare-fun res!122482 () Bool)

(assert (=> d!77165 (=> (not res!122482) (not e!166202))))

(assert (=> d!77165 (= res!122482 (<= 0 0))))

(assert (=> d!77165 (= (apply!757 lt!109288 0) lt!109584)))

(declare-fun b!267453 () Bool)

(assert (=> b!267453 (= e!166202 (< 0 (size!3028 lt!109288)))))

(assert (= (and d!77165 res!122482) b!267453))

(assert (=> d!77165 m!335323))

(assert (=> d!77165 m!335323))

(declare-fun m!335543 () Bool)

(assert (=> d!77165 m!335543))

(declare-fun m!335545 () Bool)

(assert (=> d!77165 m!335545))

(assert (=> b!267453 m!335359))

(assert (=> b!267276 d!77165))

(declare-fun d!77167 () Bool)

(assert (=> d!77167 (= (tail!474 (drop!213 lt!109541 0)) (drop!213 lt!109541 (+ 0 1)))))

(declare-fun lt!109587 () Unit!4824)

(declare-fun choose!2437 (List!3820 Int) Unit!4824)

(assert (=> d!77167 (= lt!109587 (choose!2437 lt!109541 0))))

(declare-fun e!166205 () Bool)

(assert (=> d!77167 e!166205))

(declare-fun res!122485 () Bool)

(assert (=> d!77167 (=> (not res!122485) (not e!166205))))

(assert (=> d!77167 (= res!122485 (>= 0 0))))

(assert (=> d!77167 (= (lemmaDropTail!192 lt!109541 0) lt!109587)))

(declare-fun b!267456 () Bool)

(declare-fun size!3031 (List!3820) Int)

(assert (=> b!267456 (= e!166205 (< 0 (size!3031 lt!109541)))))

(assert (= (and d!77167 res!122485) b!267456))

(assert (=> d!77167 m!335307))

(assert (=> d!77167 m!335307))

(assert (=> d!77167 m!335309))

(assert (=> d!77167 m!335335))

(declare-fun m!335547 () Bool)

(assert (=> d!77167 m!335547))

(declare-fun m!335549 () Bool)

(assert (=> b!267456 m!335549))

(assert (=> b!267276 d!77167))

(declare-fun d!77169 () Bool)

(assert (=> d!77169 (= (list!1550 lt!109288) (list!1552 (c!50469 lt!109288)))))

(declare-fun bs!29441 () Bool)

(assert (= bs!29441 d!77169))

(declare-fun m!335551 () Bool)

(assert (=> bs!29441 m!335551))

(assert (=> b!267276 d!77169))

(declare-fun d!77171 () Bool)

(declare-fun lt!109590 () Token!1198)

(declare-fun contains!711 (List!3820 Token!1198) Bool)

(assert (=> d!77171 (contains!711 lt!109540 lt!109590)))

(declare-fun e!166211 () Token!1198)

(assert (=> d!77171 (= lt!109590 e!166211)))

(declare-fun c!50600 () Bool)

(assert (=> d!77171 (= c!50600 (= 0 0))))

(declare-fun e!166210 () Bool)

(assert (=> d!77171 e!166210))

(declare-fun res!122488 () Bool)

(assert (=> d!77171 (=> (not res!122488) (not e!166210))))

(assert (=> d!77171 (= res!122488 (<= 0 0))))

(assert (=> d!77171 (= (apply!758 lt!109540 0) lt!109590)))

(declare-fun b!267463 () Bool)

(assert (=> b!267463 (= e!166210 (< 0 (size!3031 lt!109540)))))

(declare-fun b!267464 () Bool)

(assert (=> b!267464 (= e!166211 (head!884 lt!109540))))

(declare-fun b!267465 () Bool)

(assert (=> b!267465 (= e!166211 (apply!758 (tail!474 lt!109540) (- 0 1)))))

(assert (= (and d!77171 res!122488) b!267463))

(assert (= (and d!77171 c!50600) b!267464))

(assert (= (and d!77171 (not c!50600)) b!267465))

(declare-fun m!335553 () Bool)

(assert (=> d!77171 m!335553))

(declare-fun m!335555 () Bool)

(assert (=> b!267463 m!335555))

(declare-fun m!335557 () Bool)

(assert (=> b!267464 m!335557))

(declare-fun m!335559 () Bool)

(assert (=> b!267465 m!335559))

(assert (=> b!267465 m!335559))

(declare-fun m!335561 () Bool)

(assert (=> b!267465 m!335561))

(assert (=> b!267276 d!77171))

(declare-fun b!267484 () Bool)

(declare-fun e!166223 () Int)

(assert (=> b!267484 (= e!166223 0)))

(declare-fun b!267485 () Bool)

(declare-fun e!166222 () Bool)

(declare-fun lt!109593 () List!3820)

(declare-fun e!166225 () Int)

(assert (=> b!267485 (= e!166222 (= (size!3031 lt!109593) e!166225))))

(declare-fun c!50610 () Bool)

(assert (=> b!267485 (= c!50610 (<= 0 0))))

(declare-fun d!77173 () Bool)

(assert (=> d!77173 e!166222))

(declare-fun res!122491 () Bool)

(assert (=> d!77173 (=> (not res!122491) (not e!166222))))

(declare-fun content!544 (List!3820) (InoxSet Token!1198))

(assert (=> d!77173 (= res!122491 (= ((_ map implies) (content!544 lt!109593) (content!544 lt!109540)) ((as const (InoxSet Token!1198)) true)))))

(declare-fun e!166226 () List!3820)

(assert (=> d!77173 (= lt!109593 e!166226)))

(declare-fun c!50609 () Bool)

(assert (=> d!77173 (= c!50609 ((_ is Nil!3810) lt!109540))))

(assert (=> d!77173 (= (drop!213 lt!109540 0) lt!109593)))

(declare-fun b!267486 () Bool)

(declare-fun e!166224 () List!3820)

(assert (=> b!267486 (= e!166224 (drop!213 (t!37804 lt!109540) (- 0 1)))))

(declare-fun b!267487 () Bool)

(declare-fun call!14541 () Int)

(assert (=> b!267487 (= e!166225 call!14541)))

(declare-fun b!267488 () Bool)

(assert (=> b!267488 (= e!166225 e!166223)))

(declare-fun c!50612 () Bool)

(assert (=> b!267488 (= c!50612 (>= 0 call!14541))))

(declare-fun b!267489 () Bool)

(assert (=> b!267489 (= e!166223 (- call!14541 0))))

(declare-fun b!267490 () Bool)

(assert (=> b!267490 (= e!166226 e!166224)))

(declare-fun c!50611 () Bool)

(assert (=> b!267490 (= c!50611 (<= 0 0))))

(declare-fun bm!14536 () Bool)

(assert (=> bm!14536 (= call!14541 (size!3031 lt!109540))))

(declare-fun b!267491 () Bool)

(assert (=> b!267491 (= e!166226 Nil!3810)))

(declare-fun b!267492 () Bool)

(assert (=> b!267492 (= e!166224 lt!109540)))

(assert (= (and d!77173 c!50609) b!267491))

(assert (= (and d!77173 (not c!50609)) b!267490))

(assert (= (and b!267490 c!50611) b!267492))

(assert (= (and b!267490 (not c!50611)) b!267486))

(assert (= (and d!77173 res!122491) b!267485))

(assert (= (and b!267485 c!50610) b!267487))

(assert (= (and b!267485 (not c!50610)) b!267488))

(assert (= (and b!267488 c!50612) b!267484))

(assert (= (and b!267488 (not c!50612)) b!267489))

(assert (= (or b!267487 b!267488 b!267489) bm!14536))

(declare-fun m!335563 () Bool)

(assert (=> b!267485 m!335563))

(declare-fun m!335565 () Bool)

(assert (=> d!77173 m!335565))

(declare-fun m!335567 () Bool)

(assert (=> d!77173 m!335567))

(declare-fun m!335569 () Bool)

(assert (=> b!267486 m!335569))

(assert (=> bm!14536 m!335555))

(assert (=> b!267276 d!77173))

(declare-fun bs!29442 () Bool)

(declare-fun d!77175 () Bool)

(assert (= bs!29442 (and d!77175 b!267294)))

(declare-fun lambda!9029 () Int)

(assert (=> bs!29442 (not (= lambda!9029 lambda!9023))))

(declare-fun bs!29443 () Bool)

(assert (= bs!29443 (and d!77175 d!77015)))

(assert (=> bs!29443 (= lambda!9029 lambda!9011)))

(declare-fun bs!29444 () Bool)

(assert (= bs!29444 (and d!77175 b!267276)))

(assert (=> bs!29444 (not (= lambda!9029 lambda!9022))))

(declare-fun bs!29445 () Bool)

(assert (= bs!29445 (and d!77175 b!267078)))

(assert (=> bs!29445 (not (= lambda!9029 lambda!9012))))

(declare-fun bs!29446 () Bool)

(assert (= bs!29446 (and d!77175 d!77113)))

(assert (=> bs!29446 (= lambda!9029 lambda!9021)))

(declare-fun bs!29447 () Bool)

(assert (= bs!29447 (and d!77175 b!267253)))

(assert (=> bs!29447 (not (= lambda!9029 lambda!9020))))

(declare-fun bs!29448 () Bool)

(assert (= bs!29448 (and d!77175 d!77119)))

(assert (=> bs!29448 (not (= lambda!9029 lambda!9028))))

(declare-fun bs!29449 () Bool)

(assert (= bs!29449 (and d!77175 b!266841)))

(assert (=> bs!29449 (= lambda!9029 lambda!8994)))

(declare-fun bs!29450 () Bool)

(declare-fun b!267493 () Bool)

(assert (= bs!29450 (and b!267493 b!267294)))

(declare-fun lambda!9030 () Int)

(assert (=> bs!29450 (= lambda!9030 lambda!9023)))

(declare-fun bs!29451 () Bool)

(assert (= bs!29451 (and b!267493 d!77015)))

(assert (=> bs!29451 (not (= lambda!9030 lambda!9011))))

(declare-fun bs!29452 () Bool)

(assert (= bs!29452 (and b!267493 b!267276)))

(assert (=> bs!29452 (= lambda!9030 lambda!9022)))

(declare-fun bs!29453 () Bool)

(assert (= bs!29453 (and b!267493 b!267078)))

(assert (=> bs!29453 (= lambda!9030 lambda!9012)))

(declare-fun bs!29454 () Bool)

(assert (= bs!29454 (and b!267493 d!77113)))

(assert (=> bs!29454 (not (= lambda!9030 lambda!9021))))

(declare-fun bs!29455 () Bool)

(assert (= bs!29455 (and b!267493 d!77119)))

(assert (=> bs!29455 (= lambda!9030 lambda!9028)))

(declare-fun bs!29456 () Bool)

(assert (= bs!29456 (and b!267493 b!266841)))

(assert (=> bs!29456 (not (= lambda!9030 lambda!8994))))

(declare-fun bs!29457 () Bool)

(assert (= bs!29457 (and b!267493 b!267253)))

(assert (=> bs!29457 (= lambda!9030 lambda!9020)))

(declare-fun bs!29458 () Bool)

(assert (= bs!29458 (and b!267493 d!77175)))

(assert (=> bs!29458 (not (= lambda!9030 lambda!9029))))

(declare-fun b!267506 () Bool)

(declare-fun e!166236 () Bool)

(assert (=> b!267506 (= e!166236 true)))

(declare-fun b!267505 () Bool)

(declare-fun e!166235 () Bool)

(assert (=> b!267505 (= e!166235 e!166236)))

(declare-fun b!267504 () Bool)

(declare-fun e!166234 () Bool)

(assert (=> b!267504 (= e!166234 e!166235)))

(assert (=> b!267493 e!166234))

(assert (= b!267505 b!267506))

(assert (= b!267504 b!267505))

(assert (= (and b!267493 ((_ is Cons!3809) rules!1920)) b!267504))

(assert (=> b!267506 (< (dynLambda!1941 order!2913 (toValue!1458 (transformation!727 (h!9206 rules!1920)))) (dynLambda!1942 order!2915 lambda!9030))))

(assert (=> b!267506 (< (dynLambda!1943 order!2917 (toChars!1317 (transformation!727 (h!9206 rules!1920)))) (dynLambda!1942 order!2915 lambda!9030))))

(assert (=> b!267493 true))

(declare-fun b!267494 () Bool)

(declare-fun e!166232 () Bool)

(declare-fun lt!109604 () Option!802)

(declare-fun call!14544 () Token!1198)

(assert (=> b!267494 (= e!166232 (not (= (_1!2348 (v!14664 lt!109604)) call!14544)))))

(declare-fun bm!14537 () Bool)

(declare-fun call!14542 () BalanceConc!2560)

(declare-fun call!14545 () BalanceConc!2560)

(assert (=> bm!14537 (= call!14542 call!14545)))

(declare-fun b!267495 () Bool)

(declare-fun c!50616 () Bool)

(assert (=> b!267495 (= c!50616 e!166232)))

(declare-fun res!122493 () Bool)

(assert (=> b!267495 (=> (not res!122493) (not e!166232))))

(assert (=> b!267495 (= res!122493 ((_ is Some!801) lt!109604))))

(declare-fun e!166229 () BalanceConc!2560)

(declare-fun e!166231 () BalanceConc!2560)

(assert (=> b!267495 (= e!166229 e!166231)))

(declare-fun b!267496 () Bool)

(declare-fun call!14546 () BalanceConc!2560)

(declare-fun lt!109599 () BalanceConc!2560)

(assert (=> b!267496 (= e!166231 (++!990 call!14546 lt!109599))))

(declare-fun b!267497 () Bool)

(declare-fun e!166233 () BalanceConc!2560)

(declare-fun call!14543 () Token!1198)

(assert (=> b!267497 (= e!166233 (charsOf!372 call!14543))))

(declare-fun b!267498 () Bool)

(assert (=> b!267498 (= e!166233 call!14545)))

(declare-fun b!267499 () Bool)

(assert (=> b!267499 (= e!166231 (BalanceConc!2561 Empty!1276))))

(assert (=> b!267499 (= (print!338 thiss!17480 (singletonSeq!273 call!14543)) (printTailRec!301 thiss!17480 (singletonSeq!273 call!14543) 0 (BalanceConc!2561 Empty!1276)))))

(declare-fun lt!109602 () Unit!4824)

(declare-fun Unit!4842 () Unit!4824)

(assert (=> b!267499 (= lt!109602 Unit!4842)))

(declare-fun lt!109594 () Unit!4824)

(assert (=> b!267499 (= lt!109594 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!108 thiss!17480 rules!1920 (list!1547 call!14542) (list!1547 lt!109599)))))

(assert (=> b!267499 false))

(declare-fun lt!109600 () Unit!4824)

(declare-fun Unit!4843 () Unit!4824)

(assert (=> b!267499 (= lt!109600 Unit!4843)))

(declare-fun b!267500 () Bool)

(declare-fun e!166230 () BalanceConc!2560)

(assert (=> b!267500 (= e!166230 (BalanceConc!2561 Empty!1276))))

(declare-fun b!267501 () Bool)

(declare-fun e!166227 () Bool)

(assert (=> b!267501 (= e!166227 (<= (+ 0 1) (size!3028 lt!109288)))))

(declare-fun b!267502 () Bool)

(assert (=> b!267502 (= e!166229 call!14546)))

(declare-fun b!267503 () Bool)

(declare-fun e!166228 () Bool)

(assert (=> b!267503 (= e!166228 (= (_1!2348 (v!14664 lt!109604)) (apply!757 lt!109288 (+ 0 1))))))

(declare-fun bm!14538 () Bool)

(assert (=> bm!14538 (= call!14544 (apply!757 lt!109288 (+ 0 1)))))

(declare-fun bm!14539 () Bool)

(declare-fun c!50613 () Bool)

(declare-fun c!50614 () Bool)

(assert (=> bm!14539 (= c!50613 c!50614)))

(assert (=> bm!14539 (= call!14546 (++!990 e!166233 (ite c!50614 lt!109599 call!14542)))))

(assert (=> b!267493 (= e!166230 e!166229)))

(declare-fun lt!109595 () List!3820)

(assert (=> b!267493 (= lt!109595 (list!1550 lt!109288))))

(declare-fun lt!109598 () Unit!4824)

(assert (=> b!267493 (= lt!109598 (lemmaDropApply!200 lt!109595 (+ 0 1)))))

(assert (=> b!267493 (= (head!884 (drop!213 lt!109595 (+ 0 1))) (apply!758 lt!109595 (+ 0 1)))))

(declare-fun lt!109603 () Unit!4824)

(assert (=> b!267493 (= lt!109603 lt!109598)))

(declare-fun lt!109596 () List!3820)

(assert (=> b!267493 (= lt!109596 (list!1550 lt!109288))))

(declare-fun lt!109605 () Unit!4824)

(assert (=> b!267493 (= lt!109605 (lemmaDropTail!192 lt!109596 (+ 0 1)))))

(assert (=> b!267493 (= (tail!474 (drop!213 lt!109596 (+ 0 1))) (drop!213 lt!109596 (+ 0 1 1)))))

(declare-fun lt!109606 () Unit!4824)

(assert (=> b!267493 (= lt!109606 lt!109605)))

(declare-fun lt!109597 () Unit!4824)

(assert (=> b!267493 (= lt!109597 (forallContained!282 (list!1550 lt!109288) lambda!9030 (apply!757 lt!109288 (+ 0 1))))))

(assert (=> b!267493 (= lt!109599 (printWithSeparatorTokenWhenNeededRec!288 thiss!17480 rules!1920 lt!109288 separatorToken!170 (+ 0 1 1)))))

(assert (=> b!267493 (= lt!109604 (maxPrefixZipperSequence!294 thiss!17480 rules!1920 (++!990 (charsOf!372 (apply!757 lt!109288 (+ 0 1))) lt!109599)))))

(declare-fun res!122492 () Bool)

(assert (=> b!267493 (= res!122492 ((_ is Some!801) lt!109604))))

(assert (=> b!267493 (=> (not res!122492) (not e!166228))))

(assert (=> b!267493 (= c!50614 e!166228)))

(declare-fun lt!109607 () BalanceConc!2560)

(assert (=> d!77175 (= (list!1547 lt!109607) (printWithSeparatorTokenWhenNeededList!296 thiss!17480 rules!1920 (dropList!160 lt!109288 (+ 0 1)) separatorToken!170))))

(assert (=> d!77175 (= lt!109607 e!166230)))

(declare-fun c!50615 () Bool)

(assert (=> d!77175 (= c!50615 (>= (+ 0 1) (size!3028 lt!109288)))))

(declare-fun lt!109601 () Unit!4824)

(assert (=> d!77175 (= lt!109601 (lemmaContentSubsetPreservesForall!104 (list!1550 lt!109288) (dropList!160 lt!109288 (+ 0 1)) lambda!9029))))

(assert (=> d!77175 e!166227))

(declare-fun res!122494 () Bool)

(assert (=> d!77175 (=> (not res!122494) (not e!166227))))

(assert (=> d!77175 (= res!122494 (>= (+ 0 1) 0))))

(assert (=> d!77175 (= (printWithSeparatorTokenWhenNeededRec!288 thiss!17480 rules!1920 lt!109288 separatorToken!170 (+ 0 1)) lt!109607)))

(declare-fun bm!14540 () Bool)

(assert (=> bm!14540 (= call!14543 call!14544)))

(declare-fun bm!14541 () Bool)

(assert (=> bm!14541 (= call!14545 (charsOf!372 (ite c!50614 call!14544 (ite c!50616 separatorToken!170 call!14543))))))

(assert (= (and d!77175 res!122494) b!267501))

(assert (= (and d!77175 c!50615) b!267500))

(assert (= (and d!77175 (not c!50615)) b!267493))

(assert (= (and b!267493 res!122492) b!267503))

(assert (= (and b!267493 c!50614) b!267502))

(assert (= (and b!267493 (not c!50614)) b!267495))

(assert (= (and b!267495 res!122493) b!267494))

(assert (= (and b!267495 c!50616) b!267496))

(assert (= (and b!267495 (not c!50616)) b!267499))

(assert (= (or b!267496 b!267499) bm!14540))

(assert (= (or b!267496 b!267499) bm!14537))

(assert (= (or b!267502 b!267494 bm!14540) bm!14538))

(assert (= (or b!267502 bm!14537) bm!14541))

(assert (= (or b!267502 b!267496) bm!14539))

(assert (= (and bm!14539 c!50613) b!267498))

(assert (= (and bm!14539 (not c!50613)) b!267497))

(declare-fun m!335571 () Bool)

(assert (=> bm!14539 m!335571))

(declare-fun m!335573 () Bool)

(assert (=> b!267493 m!335573))

(declare-fun m!335575 () Bool)

(assert (=> b!267493 m!335575))

(declare-fun m!335577 () Bool)

(assert (=> b!267493 m!335577))

(declare-fun m!335579 () Bool)

(assert (=> b!267493 m!335579))

(declare-fun m!335581 () Bool)

(assert (=> b!267493 m!335581))

(declare-fun m!335583 () Bool)

(assert (=> b!267493 m!335583))

(declare-fun m!335585 () Bool)

(assert (=> b!267493 m!335585))

(declare-fun m!335587 () Bool)

(assert (=> b!267493 m!335587))

(assert (=> b!267493 m!335323))

(assert (=> b!267493 m!335573))

(declare-fun m!335589 () Bool)

(assert (=> b!267493 m!335589))

(assert (=> b!267493 m!335579))

(assert (=> b!267493 m!335323))

(assert (=> b!267493 m!335583))

(declare-fun m!335591 () Bool)

(assert (=> b!267493 m!335591))

(declare-fun m!335593 () Bool)

(assert (=> b!267493 m!335593))

(assert (=> b!267493 m!335587))

(declare-fun m!335595 () Bool)

(assert (=> b!267493 m!335595))

(declare-fun m!335597 () Bool)

(assert (=> b!267493 m!335597))

(declare-fun m!335599 () Bool)

(assert (=> b!267493 m!335599))

(assert (=> b!267493 m!335583))

(assert (=> b!267493 m!335585))

(declare-fun m!335601 () Bool)

(assert (=> b!267497 m!335601))

(assert (=> b!267503 m!335583))

(assert (=> bm!14538 m!335583))

(declare-fun m!335603 () Bool)

(assert (=> b!267499 m!335603))

(declare-fun m!335605 () Bool)

(assert (=> b!267499 m!335605))

(assert (=> b!267499 m!335603))

(declare-fun m!335607 () Bool)

(assert (=> b!267499 m!335607))

(declare-fun m!335609 () Bool)

(assert (=> b!267499 m!335609))

(assert (=> b!267499 m!335607))

(assert (=> b!267499 m!335605))

(declare-fun m!335611 () Bool)

(assert (=> b!267499 m!335611))

(assert (=> b!267499 m!335605))

(declare-fun m!335613 () Bool)

(assert (=> b!267499 m!335613))

(declare-fun m!335615 () Bool)

(assert (=> d!77175 m!335615))

(declare-fun m!335617 () Bool)

(assert (=> d!77175 m!335617))

(assert (=> d!77175 m!335323))

(assert (=> d!77175 m!335617))

(declare-fun m!335619 () Bool)

(assert (=> d!77175 m!335619))

(assert (=> d!77175 m!335323))

(assert (=> d!77175 m!335617))

(declare-fun m!335621 () Bool)

(assert (=> d!77175 m!335621))

(assert (=> d!77175 m!335359))

(declare-fun m!335623 () Bool)

(assert (=> bm!14541 m!335623))

(declare-fun m!335625 () Bool)

(assert (=> b!267496 m!335625))

(assert (=> b!267501 m!335359))

(assert (=> b!267276 d!77175))

(declare-fun b!267534 () Bool)

(declare-fun res!122508 () Bool)

(declare-fun e!166255 () Bool)

(assert (=> b!267534 (=> (not res!122508) (not e!166255))))

(declare-fun e!166260 () Bool)

(assert (=> b!267534 (= res!122508 e!166260)))

(declare-fun res!122510 () Bool)

(assert (=> b!267534 (=> res!122510 e!166260)))

(declare-fun lt!109630 () Option!802)

(declare-fun isDefined!643 (Option!802) Bool)

(assert (=> b!267534 (= res!122510 (not (isDefined!643 lt!109630)))))

(declare-fun bm!14544 () Bool)

(declare-fun call!14549 () Option!802)

(declare-fun maxPrefixOneRuleZipperSequence!109 (LexerInterface!613 Rule!1254 BalanceConc!2560) Option!802)

(assert (=> bm!14544 (= call!14549 (maxPrefixOneRuleZipperSequence!109 thiss!17480 (h!9206 rules!1920) (++!990 (charsOf!372 (apply!757 lt!109288 0)) lt!109544)))))

(declare-fun b!267535 () Bool)

(declare-fun e!166258 () Bool)

(declare-fun e!166257 () Bool)

(assert (=> b!267535 (= e!166258 e!166257)))

(declare-fun res!122509 () Bool)

(assert (=> b!267535 (=> (not res!122509) (not e!166257))))

(declare-fun get!1254 (Option!802) tuple2!4264)

(declare-fun get!1255 (Option!803) tuple2!4266)

(assert (=> b!267535 (= res!122509 (= (_1!2348 (get!1254 lt!109630)) (_1!2349 (get!1255 (maxPrefix!331 thiss!17480 rules!1920 (list!1547 (++!990 (charsOf!372 (apply!757 lt!109288 0)) lt!109544)))))))))

(declare-fun b!267536 () Bool)

(declare-fun e!166256 () Option!802)

(assert (=> b!267536 (= e!166256 call!14549)))

(declare-fun b!267537 () Bool)

(assert (=> b!267537 (= e!166257 (= (list!1547 (_2!2348 (get!1254 lt!109630))) (_2!2349 (get!1255 (maxPrefix!331 thiss!17480 rules!1920 (list!1547 (++!990 (charsOf!372 (apply!757 lt!109288 0)) lt!109544)))))))))

(declare-fun d!77179 () Bool)

(assert (=> d!77179 e!166255))

(declare-fun res!122512 () Bool)

(assert (=> d!77179 (=> (not res!122512) (not e!166255))))

(declare-fun isDefined!644 (Option!803) Bool)

(declare-fun maxPrefixZipper!108 (LexerInterface!613 List!3819 List!3818) Option!803)

(assert (=> d!77179 (= res!122512 (= (isDefined!643 lt!109630) (isDefined!644 (maxPrefixZipper!108 thiss!17480 rules!1920 (list!1547 (++!990 (charsOf!372 (apply!757 lt!109288 0)) lt!109544))))))))

(assert (=> d!77179 (= lt!109630 e!166256)))

(declare-fun c!50624 () Bool)

(assert (=> d!77179 (= c!50624 (and ((_ is Cons!3809) rules!1920) ((_ is Nil!3809) (t!37803 rules!1920))))))

(declare-fun lt!109628 () Unit!4824)

(declare-fun lt!109626 () Unit!4824)

(assert (=> d!77179 (= lt!109628 lt!109626)))

(declare-fun lt!109625 () List!3818)

(declare-fun lt!109627 () List!3818)

(declare-fun isPrefix!394 (List!3818 List!3818) Bool)

(assert (=> d!77179 (isPrefix!394 lt!109625 lt!109627)))

(declare-fun lemmaIsPrefixRefl!204 (List!3818 List!3818) Unit!4824)

(assert (=> d!77179 (= lt!109626 (lemmaIsPrefixRefl!204 lt!109625 lt!109627))))

(assert (=> d!77179 (= lt!109627 (list!1547 (++!990 (charsOf!372 (apply!757 lt!109288 0)) lt!109544)))))

(assert (=> d!77179 (= lt!109625 (list!1547 (++!990 (charsOf!372 (apply!757 lt!109288 0)) lt!109544)))))

(declare-fun rulesValidInductive!199 (LexerInterface!613 List!3819) Bool)

(assert (=> d!77179 (rulesValidInductive!199 thiss!17480 rules!1920)))

(assert (=> d!77179 (= (maxPrefixZipperSequence!294 thiss!17480 rules!1920 (++!990 (charsOf!372 (apply!757 lt!109288 0)) lt!109544)) lt!109630)))

(declare-fun e!166259 () Bool)

(declare-fun b!267538 () Bool)

(assert (=> b!267538 (= e!166259 (= (list!1547 (_2!2348 (get!1254 lt!109630))) (_2!2349 (get!1255 (maxPrefixZipper!108 thiss!17480 rules!1920 (list!1547 (++!990 (charsOf!372 (apply!757 lt!109288 0)) lt!109544)))))))))

(declare-fun b!267539 () Bool)

(assert (=> b!267539 (= e!166260 e!166259)))

(declare-fun res!122511 () Bool)

(assert (=> b!267539 (=> (not res!122511) (not e!166259))))

(assert (=> b!267539 (= res!122511 (= (_1!2348 (get!1254 lt!109630)) (_1!2349 (get!1255 (maxPrefixZipper!108 thiss!17480 rules!1920 (list!1547 (++!990 (charsOf!372 (apply!757 lt!109288 0)) lt!109544)))))))))

(declare-fun b!267540 () Bool)

(assert (=> b!267540 (= e!166255 e!166258)))

(declare-fun res!122513 () Bool)

(assert (=> b!267540 (=> res!122513 e!166258)))

(assert (=> b!267540 (= res!122513 (not (isDefined!643 lt!109630)))))

(declare-fun b!267541 () Bool)

(declare-fun lt!109631 () Option!802)

(declare-fun lt!109629 () Option!802)

(assert (=> b!267541 (= e!166256 (ite (and ((_ is None!801) lt!109631) ((_ is None!801) lt!109629)) None!801 (ite ((_ is None!801) lt!109629) lt!109631 (ite ((_ is None!801) lt!109631) lt!109629 (ite (>= (size!3025 (_1!2348 (v!14664 lt!109631))) (size!3025 (_1!2348 (v!14664 lt!109629)))) lt!109631 lt!109629)))))))

(assert (=> b!267541 (= lt!109631 call!14549)))

(assert (=> b!267541 (= lt!109629 (maxPrefixZipperSequence!294 thiss!17480 (t!37803 rules!1920) (++!990 (charsOf!372 (apply!757 lt!109288 0)) lt!109544)))))

(assert (= (and d!77179 c!50624) b!267536))

(assert (= (and d!77179 (not c!50624)) b!267541))

(assert (= (or b!267536 b!267541) bm!14544))

(assert (= (and d!77179 res!122512) b!267534))

(assert (= (and b!267534 (not res!122510)) b!267539))

(assert (= (and b!267539 res!122511) b!267538))

(assert (= (and b!267534 res!122508) b!267540))

(assert (= (and b!267540 (not res!122513)) b!267535))

(assert (= (and b!267535 res!122509) b!267537))

(declare-fun m!335649 () Bool)

(assert (=> b!267538 m!335649))

(declare-fun m!335651 () Bool)

(assert (=> b!267538 m!335651))

(assert (=> b!267538 m!335321))

(assert (=> b!267538 m!335649))

(declare-fun m!335653 () Bool)

(assert (=> b!267538 m!335653))

(declare-fun m!335655 () Bool)

(assert (=> b!267538 m!335655))

(assert (=> b!267538 m!335651))

(declare-fun m!335657 () Bool)

(assert (=> b!267538 m!335657))

(assert (=> bm!14544 m!335321))

(declare-fun m!335659 () Bool)

(assert (=> bm!14544 m!335659))

(assert (=> b!267535 m!335655))

(assert (=> b!267535 m!335321))

(assert (=> b!267535 m!335649))

(assert (=> b!267535 m!335649))

(declare-fun m!335661 () Bool)

(assert (=> b!267535 m!335661))

(assert (=> b!267535 m!335661))

(declare-fun m!335663 () Bool)

(assert (=> b!267535 m!335663))

(assert (=> b!267539 m!335655))

(assert (=> b!267539 m!335321))

(assert (=> b!267539 m!335649))

(assert (=> b!267539 m!335649))

(assert (=> b!267539 m!335651))

(assert (=> b!267539 m!335651))

(assert (=> b!267539 m!335657))

(declare-fun m!335665 () Bool)

(assert (=> b!267534 m!335665))

(assert (=> b!267541 m!335321))

(declare-fun m!335667 () Bool)

(assert (=> b!267541 m!335667))

(assert (=> d!77179 m!335649))

(assert (=> d!77179 m!335651))

(assert (=> d!77179 m!335651))

(declare-fun m!335669 () Bool)

(assert (=> d!77179 m!335669))

(assert (=> d!77179 m!335321))

(assert (=> d!77179 m!335649))

(declare-fun m!335671 () Bool)

(assert (=> d!77179 m!335671))

(declare-fun m!335673 () Bool)

(assert (=> d!77179 m!335673))

(declare-fun m!335675 () Bool)

(assert (=> d!77179 m!335675))

(assert (=> d!77179 m!335665))

(assert (=> b!267540 m!335665))

(assert (=> b!267537 m!335661))

(assert (=> b!267537 m!335663))

(assert (=> b!267537 m!335321))

(assert (=> b!267537 m!335649))

(assert (=> b!267537 m!335653))

(assert (=> b!267537 m!335649))

(assert (=> b!267537 m!335661))

(assert (=> b!267537 m!335655))

(assert (=> b!267276 d!77179))

(declare-fun d!77193 () Bool)

(assert (=> d!77193 (= (head!884 (drop!213 lt!109540 0)) (h!9207 (drop!213 lt!109540 0)))))

(assert (=> b!267276 d!77193))

(declare-fun b!267542 () Bool)

(declare-fun e!166262 () Int)

(assert (=> b!267542 (= e!166262 0)))

(declare-fun b!267543 () Bool)

(declare-fun e!166261 () Bool)

(declare-fun lt!109632 () List!3820)

(declare-fun e!166264 () Int)

(assert (=> b!267543 (= e!166261 (= (size!3031 lt!109632) e!166264))))

(declare-fun c!50626 () Bool)

(assert (=> b!267543 (= c!50626 (<= (+ 0 1) 0))))

(declare-fun d!77195 () Bool)

(assert (=> d!77195 e!166261))

(declare-fun res!122514 () Bool)

(assert (=> d!77195 (=> (not res!122514) (not e!166261))))

(assert (=> d!77195 (= res!122514 (= ((_ map implies) (content!544 lt!109632) (content!544 lt!109541)) ((as const (InoxSet Token!1198)) true)))))

(declare-fun e!166265 () List!3820)

(assert (=> d!77195 (= lt!109632 e!166265)))

(declare-fun c!50625 () Bool)

(assert (=> d!77195 (= c!50625 ((_ is Nil!3810) lt!109541))))

(assert (=> d!77195 (= (drop!213 lt!109541 (+ 0 1)) lt!109632)))

(declare-fun b!267544 () Bool)

(declare-fun e!166263 () List!3820)

(assert (=> b!267544 (= e!166263 (drop!213 (t!37804 lt!109541) (- (+ 0 1) 1)))))

(declare-fun b!267545 () Bool)

(declare-fun call!14550 () Int)

(assert (=> b!267545 (= e!166264 call!14550)))

(declare-fun b!267546 () Bool)

(assert (=> b!267546 (= e!166264 e!166262)))

(declare-fun c!50628 () Bool)

(assert (=> b!267546 (= c!50628 (>= (+ 0 1) call!14550))))

(declare-fun b!267547 () Bool)

(assert (=> b!267547 (= e!166262 (- call!14550 (+ 0 1)))))

(declare-fun b!267548 () Bool)

(assert (=> b!267548 (= e!166265 e!166263)))

(declare-fun c!50627 () Bool)

(assert (=> b!267548 (= c!50627 (<= (+ 0 1) 0))))

(declare-fun bm!14545 () Bool)

(assert (=> bm!14545 (= call!14550 (size!3031 lt!109541))))

(declare-fun b!267549 () Bool)

(assert (=> b!267549 (= e!166265 Nil!3810)))

(declare-fun b!267550 () Bool)

(assert (=> b!267550 (= e!166263 lt!109541)))

(assert (= (and d!77195 c!50625) b!267549))

(assert (= (and d!77195 (not c!50625)) b!267548))

(assert (= (and b!267548 c!50627) b!267550))

(assert (= (and b!267548 (not c!50627)) b!267544))

(assert (= (and d!77195 res!122514) b!267543))

(assert (= (and b!267543 c!50626) b!267545))

(assert (= (and b!267543 (not c!50626)) b!267546))

(assert (= (and b!267546 c!50628) b!267542))

(assert (= (and b!267546 (not c!50628)) b!267547))

(assert (= (or b!267545 b!267546 b!267547) bm!14545))

(declare-fun m!335677 () Bool)

(assert (=> b!267543 m!335677))

(declare-fun m!335679 () Bool)

(assert (=> d!77195 m!335679))

(declare-fun m!335681 () Bool)

(assert (=> d!77195 m!335681))

(declare-fun m!335683 () Bool)

(assert (=> b!267544 m!335683))

(assert (=> bm!14545 m!335549))

(assert (=> b!267276 d!77195))

(declare-fun d!77197 () Bool)

(declare-fun lt!109633 () BalanceConc!2560)

(assert (=> d!77197 (= (list!1547 lt!109633) (originalCharacters!770 (apply!757 lt!109288 0)))))

(assert (=> d!77197 (= lt!109633 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 (apply!757 lt!109288 0)))) (value!25035 (apply!757 lt!109288 0))))))

(assert (=> d!77197 (= (charsOf!372 (apply!757 lt!109288 0)) lt!109633)))

(declare-fun b_lambda!8403 () Bool)

(assert (=> (not b_lambda!8403) (not d!77197)))

(declare-fun t!37883 () Bool)

(declare-fun tb!14827 () Bool)

(assert (=> (and b!266835 (= (toChars!1317 (transformation!727 (h!9206 rules!1920))) (toChars!1317 (transformation!727 (rule!1312 (apply!757 lt!109288 0))))) t!37883) tb!14827))

(declare-fun b!267551 () Bool)

(declare-fun e!166266 () Bool)

(declare-fun tp!101975 () Bool)

(assert (=> b!267551 (= e!166266 (and (inv!4709 (c!50467 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 (apply!757 lt!109288 0)))) (value!25035 (apply!757 lt!109288 0))))) tp!101975))))

(declare-fun result!18406 () Bool)

(assert (=> tb!14827 (= result!18406 (and (inv!4710 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 (apply!757 lt!109288 0)))) (value!25035 (apply!757 lt!109288 0)))) e!166266))))

(assert (= tb!14827 b!267551))

(declare-fun m!335685 () Bool)

(assert (=> b!267551 m!335685))

(declare-fun m!335687 () Bool)

(assert (=> tb!14827 m!335687))

(assert (=> d!77197 t!37883))

(declare-fun b_and!21131 () Bool)

(assert (= b_and!21125 (and (=> t!37883 result!18406) b_and!21131)))

(declare-fun t!37885 () Bool)

(declare-fun tb!14829 () Bool)

(assert (=> (and b!266822 (= (toChars!1317 (transformation!727 (rule!1312 separatorToken!170))) (toChars!1317 (transformation!727 (rule!1312 (apply!757 lt!109288 0))))) t!37885) tb!14829))

(declare-fun result!18408 () Bool)

(assert (= result!18408 result!18406))

(assert (=> d!77197 t!37885))

(declare-fun b_and!21133 () Bool)

(assert (= b_and!21127 (and (=> t!37885 result!18408) b_and!21133)))

(declare-fun tb!14831 () Bool)

(declare-fun t!37887 () Bool)

(assert (=> (and b!267341 (= (toChars!1317 (transformation!727 (rule!1312 (h!9207 (t!37804 tokens!465))))) (toChars!1317 (transformation!727 (rule!1312 (apply!757 lt!109288 0))))) t!37887) tb!14831))

(declare-fun result!18410 () Bool)

(assert (= result!18410 result!18406))

(assert (=> d!77197 t!37887))

(declare-fun b_and!21135 () Bool)

(assert (= b_and!21121 (and (=> t!37887 result!18410) b_and!21135)))

(declare-fun t!37889 () Bool)

(declare-fun tb!14833 () Bool)

(assert (=> (and b!266827 (= (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465)))) (toChars!1317 (transformation!727 (rule!1312 (apply!757 lt!109288 0))))) t!37889) tb!14833))

(declare-fun result!18412 () Bool)

(assert (= result!18412 result!18406))

(assert (=> d!77197 t!37889))

(declare-fun b_and!21137 () Bool)

(assert (= b_and!21129 (and (=> t!37889 result!18412) b_and!21137)))

(declare-fun tb!14835 () Bool)

(declare-fun t!37891 () Bool)

(assert (=> (and b!267380 (= (toChars!1317 (transformation!727 (h!9206 (t!37803 rules!1920)))) (toChars!1317 (transformation!727 (rule!1312 (apply!757 lt!109288 0))))) t!37891) tb!14835))

(declare-fun result!18414 () Bool)

(assert (= result!18414 result!18406))

(assert (=> d!77197 t!37891))

(declare-fun b_and!21139 () Bool)

(assert (= b_and!21123 (and (=> t!37891 result!18414) b_and!21139)))

(declare-fun m!335689 () Bool)

(assert (=> d!77197 m!335689))

(declare-fun m!335691 () Bool)

(assert (=> d!77197 m!335691))

(assert (=> b!267276 d!77197))

(declare-fun d!77199 () Bool)

(assert (=> d!77199 (dynLambda!1945 lambda!9022 (apply!757 lt!109288 0))))

(declare-fun lt!109636 () Unit!4824)

(declare-fun choose!2438 (List!3820 Int Token!1198) Unit!4824)

(assert (=> d!77199 (= lt!109636 (choose!2438 (list!1550 lt!109288) lambda!9022 (apply!757 lt!109288 0)))))

(declare-fun e!166269 () Bool)

(assert (=> d!77199 e!166269))

(declare-fun res!122517 () Bool)

(assert (=> d!77199 (=> (not res!122517) (not e!166269))))

(assert (=> d!77199 (= res!122517 (forall!949 (list!1550 lt!109288) lambda!9022))))

(assert (=> d!77199 (= (forallContained!282 (list!1550 lt!109288) lambda!9022 (apply!757 lt!109288 0)) lt!109636)))

(declare-fun b!267554 () Bool)

(assert (=> b!267554 (= e!166269 (contains!711 (list!1550 lt!109288) (apply!757 lt!109288 0)))))

(assert (= (and d!77199 res!122517) b!267554))

(declare-fun b_lambda!8405 () Bool)

(assert (=> (not b_lambda!8405) (not d!77199)))

(assert (=> d!77199 m!335317))

(declare-fun m!335693 () Bool)

(assert (=> d!77199 m!335693))

(assert (=> d!77199 m!335323))

(assert (=> d!77199 m!335317))

(declare-fun m!335695 () Bool)

(assert (=> d!77199 m!335695))

(assert (=> d!77199 m!335323))

(declare-fun m!335697 () Bool)

(assert (=> d!77199 m!335697))

(assert (=> b!267554 m!335323))

(assert (=> b!267554 m!335317))

(declare-fun m!335699 () Bool)

(assert (=> b!267554 m!335699))

(assert (=> b!267276 d!77199))

(declare-fun d!77201 () Bool)

(declare-fun e!166270 () Bool)

(assert (=> d!77201 e!166270))

(declare-fun res!122518 () Bool)

(assert (=> d!77201 (=> (not res!122518) (not e!166270))))

(assert (=> d!77201 (= res!122518 (appendAssocInst!60 (c!50467 (charsOf!372 (apply!757 lt!109288 0))) (c!50467 lt!109544)))))

(declare-fun lt!109637 () BalanceConc!2560)

(assert (=> d!77201 (= lt!109637 (BalanceConc!2561 (++!991 (c!50467 (charsOf!372 (apply!757 lt!109288 0))) (c!50467 lt!109544))))))

(assert (=> d!77201 (= (++!990 (charsOf!372 (apply!757 lt!109288 0)) lt!109544) lt!109637)))

(declare-fun b!267558 () Bool)

(assert (=> b!267558 (= e!166270 (= (list!1547 lt!109637) (++!988 (list!1547 (charsOf!372 (apply!757 lt!109288 0))) (list!1547 lt!109544))))))

(declare-fun b!267556 () Bool)

(declare-fun res!122519 () Bool)

(assert (=> b!267556 (=> (not res!122519) (not e!166270))))

(assert (=> b!267556 (= res!122519 (<= (height!149 (++!991 (c!50467 (charsOf!372 (apply!757 lt!109288 0))) (c!50467 lt!109544))) (+ (max!0 (height!149 (c!50467 (charsOf!372 (apply!757 lt!109288 0)))) (height!149 (c!50467 lt!109544))) 1)))))

(declare-fun b!267557 () Bool)

(declare-fun res!122521 () Bool)

(assert (=> b!267557 (=> (not res!122521) (not e!166270))))

(assert (=> b!267557 (= res!122521 (>= (height!149 (++!991 (c!50467 (charsOf!372 (apply!757 lt!109288 0))) (c!50467 lt!109544))) (max!0 (height!149 (c!50467 (charsOf!372 (apply!757 lt!109288 0)))) (height!149 (c!50467 lt!109544)))))))

(declare-fun b!267555 () Bool)

(declare-fun res!122520 () Bool)

(assert (=> b!267555 (=> (not res!122520) (not e!166270))))

(assert (=> b!267555 (= res!122520 (isBalanced!346 (++!991 (c!50467 (charsOf!372 (apply!757 lt!109288 0))) (c!50467 lt!109544))))))

(assert (= (and d!77201 res!122518) b!267555))

(assert (= (and b!267555 res!122520) b!267556))

(assert (= (and b!267556 res!122519) b!267557))

(assert (= (and b!267557 res!122521) b!267558))

(declare-fun m!335701 () Bool)

(assert (=> b!267556 m!335701))

(declare-fun m!335703 () Bool)

(assert (=> b!267556 m!335703))

(assert (=> b!267556 m!335475))

(declare-fun m!335705 () Bool)

(assert (=> b!267556 m!335705))

(assert (=> b!267556 m!335701))

(assert (=> b!267556 m!335705))

(assert (=> b!267556 m!335475))

(declare-fun m!335707 () Bool)

(assert (=> b!267556 m!335707))

(assert (=> b!267555 m!335701))

(assert (=> b!267555 m!335701))

(declare-fun m!335709 () Bool)

(assert (=> b!267555 m!335709))

(declare-fun m!335711 () Bool)

(assert (=> d!77201 m!335711))

(assert (=> d!77201 m!335701))

(assert (=> b!267557 m!335701))

(assert (=> b!267557 m!335703))

(assert (=> b!267557 m!335475))

(assert (=> b!267557 m!335705))

(assert (=> b!267557 m!335701))

(assert (=> b!267557 m!335705))

(assert (=> b!267557 m!335475))

(assert (=> b!267557 m!335707))

(declare-fun m!335713 () Bool)

(assert (=> b!267558 m!335713))

(assert (=> b!267558 m!335319))

(declare-fun m!335715 () Bool)

(assert (=> b!267558 m!335715))

(assert (=> b!267558 m!335343))

(assert (=> b!267558 m!335715))

(assert (=> b!267558 m!335343))

(declare-fun m!335717 () Bool)

(assert (=> b!267558 m!335717))

(assert (=> b!267276 d!77201))

(declare-fun d!77203 () Bool)

(assert (=> d!77203 (= (head!884 (drop!213 lt!109540 0)) (apply!758 lt!109540 0))))

(declare-fun lt!109640 () Unit!4824)

(declare-fun choose!2439 (List!3820 Int) Unit!4824)

(assert (=> d!77203 (= lt!109640 (choose!2439 lt!109540 0))))

(declare-fun e!166273 () Bool)

(assert (=> d!77203 e!166273))

(declare-fun res!122524 () Bool)

(assert (=> d!77203 (=> (not res!122524) (not e!166273))))

(assert (=> d!77203 (= res!122524 (>= 0 0))))

(assert (=> d!77203 (= (lemmaDropApply!200 lt!109540 0) lt!109640)))

(declare-fun b!267561 () Bool)

(assert (=> b!267561 (= e!166273 (< 0 (size!3031 lt!109540)))))

(assert (= (and d!77203 res!122524) b!267561))

(assert (=> d!77203 m!335313))

(assert (=> d!77203 m!335313))

(assert (=> d!77203 m!335315))

(assert (=> d!77203 m!335329))

(declare-fun m!335719 () Bool)

(assert (=> d!77203 m!335719))

(assert (=> b!267561 m!335555))

(assert (=> b!267276 d!77203))

(declare-fun d!77205 () Bool)

(assert (=> d!77205 (= (tail!474 (drop!213 lt!109541 0)) (t!37804 (drop!213 lt!109541 0)))))

(assert (=> b!267276 d!77205))

(declare-fun b!267562 () Bool)

(declare-fun e!166275 () Int)

(assert (=> b!267562 (= e!166275 0)))

(declare-fun b!267563 () Bool)

(declare-fun e!166274 () Bool)

(declare-fun lt!109641 () List!3820)

(declare-fun e!166277 () Int)

(assert (=> b!267563 (= e!166274 (= (size!3031 lt!109641) e!166277))))

(declare-fun c!50630 () Bool)

(assert (=> b!267563 (= c!50630 (<= 0 0))))

(declare-fun d!77207 () Bool)

(assert (=> d!77207 e!166274))

(declare-fun res!122525 () Bool)

(assert (=> d!77207 (=> (not res!122525) (not e!166274))))

(assert (=> d!77207 (= res!122525 (= ((_ map implies) (content!544 lt!109641) (content!544 lt!109541)) ((as const (InoxSet Token!1198)) true)))))

(declare-fun e!166278 () List!3820)

(assert (=> d!77207 (= lt!109641 e!166278)))

(declare-fun c!50629 () Bool)

(assert (=> d!77207 (= c!50629 ((_ is Nil!3810) lt!109541))))

(assert (=> d!77207 (= (drop!213 lt!109541 0) lt!109641)))

(declare-fun b!267564 () Bool)

(declare-fun e!166276 () List!3820)

(assert (=> b!267564 (= e!166276 (drop!213 (t!37804 lt!109541) (- 0 1)))))

(declare-fun b!267565 () Bool)

(declare-fun call!14551 () Int)

(assert (=> b!267565 (= e!166277 call!14551)))

(declare-fun b!267566 () Bool)

(assert (=> b!267566 (= e!166277 e!166275)))

(declare-fun c!50632 () Bool)

(assert (=> b!267566 (= c!50632 (>= 0 call!14551))))

(declare-fun b!267567 () Bool)

(assert (=> b!267567 (= e!166275 (- call!14551 0))))

(declare-fun b!267568 () Bool)

(assert (=> b!267568 (= e!166278 e!166276)))

(declare-fun c!50631 () Bool)

(assert (=> b!267568 (= c!50631 (<= 0 0))))

(declare-fun bm!14546 () Bool)

(assert (=> bm!14546 (= call!14551 (size!3031 lt!109541))))

(declare-fun b!267569 () Bool)

(assert (=> b!267569 (= e!166278 Nil!3810)))

(declare-fun b!267570 () Bool)

(assert (=> b!267570 (= e!166276 lt!109541)))

(assert (= (and d!77207 c!50629) b!267569))

(assert (= (and d!77207 (not c!50629)) b!267568))

(assert (= (and b!267568 c!50631) b!267570))

(assert (= (and b!267568 (not c!50631)) b!267564))

(assert (= (and d!77207 res!122525) b!267563))

(assert (= (and b!267563 c!50630) b!267565))

(assert (= (and b!267563 (not c!50630)) b!267566))

(assert (= (and b!267566 c!50632) b!267562))

(assert (= (and b!267566 (not c!50632)) b!267567))

(assert (= (or b!267565 b!267566 b!267567) bm!14546))

(declare-fun m!335721 () Bool)

(assert (=> b!267563 m!335721))

(declare-fun m!335723 () Bool)

(assert (=> d!77207 m!335723))

(assert (=> d!77207 m!335681))

(declare-fun m!335725 () Bool)

(assert (=> b!267564 m!335725))

(assert (=> bm!14546 m!335549))

(assert (=> b!267276 d!77207))

(declare-fun d!77209 () Bool)

(assert (=> d!77209 true))

(declare-fun order!2919 () Int)

(declare-fun lambda!9033 () Int)

(declare-fun dynLambda!1946 (Int Int) Int)

(assert (=> d!77209 (< (dynLambda!1941 order!2913 (toValue!1458 (transformation!727 (rule!1312 separatorToken!170)))) (dynLambda!1946 order!2919 lambda!9033))))

(declare-fun Forall2!145 (Int) Bool)

(assert (=> d!77209 (= (equivClasses!238 (toChars!1317 (transformation!727 (rule!1312 separatorToken!170))) (toValue!1458 (transformation!727 (rule!1312 separatorToken!170)))) (Forall2!145 lambda!9033))))

(declare-fun bs!29460 () Bool)

(assert (= bs!29460 d!77209))

(declare-fun m!335727 () Bool)

(assert (=> bs!29460 m!335727))

(assert (=> b!266889 d!77209))

(declare-fun b!267583 () Bool)

(declare-fun e!166287 () Bool)

(declare-fun e!166288 () Bool)

(assert (=> b!267583 (= e!166287 e!166288)))

(declare-fun res!122533 () Bool)

(assert (=> b!267583 (= res!122533 (not ((_ is Cons!3809) rules!1920)))))

(assert (=> b!267583 (=> res!122533 e!166288)))

(declare-fun b!267584 () Bool)

(declare-fun call!14554 () Bool)

(assert (=> b!267584 (= e!166288 call!14554)))

(declare-fun d!77211 () Bool)

(declare-fun c!50635 () Bool)

(assert (=> d!77211 (= c!50635 (and ((_ is Cons!3809) rules!1920) (not (= (isSeparator!727 (h!9206 rules!1920)) (isSeparator!727 (h!9206 rules!1920))))))))

(assert (=> d!77211 (= (ruleDisjointCharsFromAllFromOtherType!114 (h!9206 rules!1920) rules!1920) e!166287)))

(declare-fun bm!14549 () Bool)

(assert (=> bm!14549 (= call!14554 (ruleDisjointCharsFromAllFromOtherType!114 (h!9206 rules!1920) (t!37803 rules!1920)))))

(declare-fun b!267585 () Bool)

(declare-fun e!166289 () Bool)

(assert (=> b!267585 (= e!166287 e!166289)))

(declare-fun res!122532 () Bool)

(declare-fun rulesUseDisjointChars!59 (Rule!1254 Rule!1254) Bool)

(assert (=> b!267585 (= res!122532 (rulesUseDisjointChars!59 (h!9206 rules!1920) (h!9206 rules!1920)))))

(assert (=> b!267585 (=> (not res!122532) (not e!166289))))

(declare-fun b!267586 () Bool)

(assert (=> b!267586 (= e!166289 call!14554)))

(assert (= (and d!77211 c!50635) b!267585))

(assert (= (and d!77211 (not c!50635)) b!267583))

(assert (= (and b!267585 res!122532) b!267586))

(assert (= (and b!267583 (not res!122533)) b!267584))

(assert (= (or b!267586 b!267584) bm!14549))

(declare-fun m!335729 () Bool)

(assert (=> bm!14549 m!335729))

(declare-fun m!335731 () Bool)

(assert (=> b!267585 m!335731))

(assert (=> b!267316 d!77211))

(declare-fun d!77213 () Bool)

(declare-fun lt!109642 () Int)

(assert (=> d!77213 (>= lt!109642 0)))

(declare-fun e!166290 () Int)

(assert (=> d!77213 (= lt!109642 e!166290)))

(declare-fun c!50636 () Bool)

(assert (=> d!77213 (= c!50636 ((_ is Nil!3808) lt!109488))))

(assert (=> d!77213 (= (size!3029 lt!109488) lt!109642)))

(declare-fun b!267587 () Bool)

(assert (=> b!267587 (= e!166290 0)))

(declare-fun b!267588 () Bool)

(assert (=> b!267588 (= e!166290 (+ 1 (size!3029 (t!37802 lt!109488))))))

(assert (= (and d!77213 c!50636) b!267587))

(assert (= (and d!77213 (not c!50636)) b!267588))

(declare-fun m!335733 () Bool)

(assert (=> b!267588 m!335733))

(assert (=> b!267108 d!77213))

(declare-fun d!77215 () Bool)

(declare-fun lt!109643 () Int)

(assert (=> d!77215 (>= lt!109643 0)))

(declare-fun e!166291 () Int)

(assert (=> d!77215 (= lt!109643 e!166291)))

(declare-fun c!50637 () Bool)

(assert (=> d!77215 (= c!50637 ((_ is Nil!3808) (++!988 lt!109293 lt!109298)))))

(assert (=> d!77215 (= (size!3029 (++!988 lt!109293 lt!109298)) lt!109643)))

(declare-fun b!267589 () Bool)

(assert (=> b!267589 (= e!166291 0)))

(declare-fun b!267590 () Bool)

(assert (=> b!267590 (= e!166291 (+ 1 (size!3029 (t!37802 (++!988 lt!109293 lt!109298)))))))

(assert (= (and d!77215 c!50637) b!267589))

(assert (= (and d!77215 (not c!50637)) b!267590))

(declare-fun m!335735 () Bool)

(assert (=> b!267590 m!335735))

(assert (=> b!267108 d!77215))

(declare-fun d!77217 () Bool)

(declare-fun lt!109644 () Int)

(assert (=> d!77217 (>= lt!109644 0)))

(declare-fun e!166292 () Int)

(assert (=> d!77217 (= lt!109644 e!166292)))

(declare-fun c!50638 () Bool)

(assert (=> d!77217 (= c!50638 ((_ is Nil!3808) lt!109292))))

(assert (=> d!77217 (= (size!3029 lt!109292) lt!109644)))

(declare-fun b!267591 () Bool)

(assert (=> b!267591 (= e!166292 0)))

(declare-fun b!267592 () Bool)

(assert (=> b!267592 (= e!166292 (+ 1 (size!3029 (t!37802 lt!109292))))))

(assert (= (and d!77217 c!50638) b!267591))

(assert (= (and d!77217 (not c!50638)) b!267592))

(declare-fun m!335737 () Bool)

(assert (=> b!267592 m!335737))

(assert (=> b!267108 d!77217))

(declare-fun d!77219 () Bool)

(assert (=> d!77219 (= (list!1547 (ite c!50556 call!14528 call!14524)) (list!1551 (c!50467 (ite c!50556 call!14528 call!14524))))))

(declare-fun bs!29461 () Bool)

(assert (= bs!29461 d!77219))

(declare-fun m!335739 () Bool)

(assert (=> bs!29461 m!335739))

(assert (=> bm!14519 d!77219))

(declare-fun b!267594 () Bool)

(declare-fun e!166294 () List!3818)

(assert (=> b!267594 (= e!166294 (Cons!3808 (h!9205 (t!37802 lt!109293)) (++!988 (t!37802 (t!37802 lt!109293)) lt!109298)))))

(declare-fun e!166293 () Bool)

(declare-fun b!267596 () Bool)

(declare-fun lt!109645 () List!3818)

(assert (=> b!267596 (= e!166293 (or (not (= lt!109298 Nil!3808)) (= lt!109645 (t!37802 lt!109293))))))

(declare-fun b!267595 () Bool)

(declare-fun res!122535 () Bool)

(assert (=> b!267595 (=> (not res!122535) (not e!166293))))

(assert (=> b!267595 (= res!122535 (= (size!3029 lt!109645) (+ (size!3029 (t!37802 lt!109293)) (size!3029 lt!109298))))))

(declare-fun b!267593 () Bool)

(assert (=> b!267593 (= e!166294 lt!109298)))

(declare-fun d!77221 () Bool)

(assert (=> d!77221 e!166293))

(declare-fun res!122534 () Bool)

(assert (=> d!77221 (=> (not res!122534) (not e!166293))))

(assert (=> d!77221 (= res!122534 (= (content!543 lt!109645) ((_ map or) (content!543 (t!37802 lt!109293)) (content!543 lt!109298))))))

(assert (=> d!77221 (= lt!109645 e!166294)))

(declare-fun c!50639 () Bool)

(assert (=> d!77221 (= c!50639 ((_ is Nil!3808) (t!37802 lt!109293)))))

(assert (=> d!77221 (= (++!988 (t!37802 lt!109293) lt!109298) lt!109645)))

(assert (= (and d!77221 c!50639) b!267593))

(assert (= (and d!77221 (not c!50639)) b!267594))

(assert (= (and d!77221 res!122534) b!267595))

(assert (= (and b!267595 res!122535) b!267596))

(declare-fun m!335741 () Bool)

(assert (=> b!267594 m!335741))

(declare-fun m!335743 () Bool)

(assert (=> b!267595 m!335743))

(assert (=> b!267595 m!335535))

(assert (=> b!267595 m!334763))

(declare-fun m!335745 () Bool)

(assert (=> d!77221 m!335745))

(declare-fun m!335747 () Bool)

(assert (=> d!77221 m!335747))

(assert (=> d!77221 m!334769))

(assert (=> b!267111 d!77221))

(declare-fun d!77223 () Bool)

(declare-fun lt!109646 () Int)

(assert (=> d!77223 (>= lt!109646 0)))

(declare-fun e!166295 () Int)

(assert (=> d!77223 (= lt!109646 e!166295)))

(declare-fun c!50640 () Bool)

(assert (=> d!77223 (= c!50640 ((_ is Nil!3808) lt!109562))))

(assert (=> d!77223 (= (size!3029 lt!109562) lt!109646)))

(declare-fun b!267597 () Bool)

(assert (=> b!267597 (= e!166295 0)))

(declare-fun b!267598 () Bool)

(assert (=> b!267598 (= e!166295 (+ 1 (size!3029 (t!37802 lt!109562))))))

(assert (= (and d!77223 c!50640) b!267597))

(assert (= (and d!77223 (not c!50640)) b!267598))

(declare-fun m!335749 () Bool)

(assert (=> b!267598 m!335749))

(assert (=> b!267326 d!77223))

(assert (=> b!267326 d!77159))

(assert (=> b!267326 d!77217))

(declare-fun b!267599 () Bool)

(declare-fun e!166297 () Int)

(assert (=> b!267599 (= e!166297 0)))

(declare-fun b!267600 () Bool)

(declare-fun e!166296 () Bool)

(declare-fun lt!109647 () List!3820)

(declare-fun e!166299 () Int)

(assert (=> b!267600 (= e!166296 (= (size!3031 lt!109647) e!166299))))

(declare-fun c!50642 () Bool)

(assert (=> b!267600 (= c!50642 (<= (+ 0 1) 0))))

(declare-fun d!77225 () Bool)

(assert (=> d!77225 e!166296))

(declare-fun res!122536 () Bool)

(assert (=> d!77225 (=> (not res!122536) (not e!166296))))

(assert (=> d!77225 (= res!122536 (= ((_ map implies) (content!544 lt!109647) (content!544 lt!109468)) ((as const (InoxSet Token!1198)) true)))))

(declare-fun e!166300 () List!3820)

(assert (=> d!77225 (= lt!109647 e!166300)))

(declare-fun c!50641 () Bool)

(assert (=> d!77225 (= c!50641 ((_ is Nil!3810) lt!109468))))

(assert (=> d!77225 (= (drop!213 lt!109468 (+ 0 1)) lt!109647)))

(declare-fun b!267601 () Bool)

(declare-fun e!166298 () List!3820)

(assert (=> b!267601 (= e!166298 (drop!213 (t!37804 lt!109468) (- (+ 0 1) 1)))))

(declare-fun b!267602 () Bool)

(declare-fun call!14555 () Int)

(assert (=> b!267602 (= e!166299 call!14555)))

(declare-fun b!267603 () Bool)

(assert (=> b!267603 (= e!166299 e!166297)))

(declare-fun c!50644 () Bool)

(assert (=> b!267603 (= c!50644 (>= (+ 0 1) call!14555))))

(declare-fun b!267604 () Bool)

(assert (=> b!267604 (= e!166297 (- call!14555 (+ 0 1)))))

(declare-fun b!267605 () Bool)

(assert (=> b!267605 (= e!166300 e!166298)))

(declare-fun c!50643 () Bool)

(assert (=> b!267605 (= c!50643 (<= (+ 0 1) 0))))

(declare-fun bm!14550 () Bool)

(assert (=> bm!14550 (= call!14555 (size!3031 lt!109468))))

(declare-fun b!267606 () Bool)

(assert (=> b!267606 (= e!166300 Nil!3810)))

(declare-fun b!267607 () Bool)

(assert (=> b!267607 (= e!166298 lt!109468)))

(assert (= (and d!77225 c!50641) b!267606))

(assert (= (and d!77225 (not c!50641)) b!267605))

(assert (= (and b!267605 c!50643) b!267607))

(assert (= (and b!267605 (not c!50643)) b!267601))

(assert (= (and d!77225 res!122536) b!267600))

(assert (= (and b!267600 c!50642) b!267602))

(assert (= (and b!267600 (not c!50642)) b!267603))

(assert (= (and b!267603 c!50644) b!267599))

(assert (= (and b!267603 (not c!50644)) b!267604))

(assert (= (or b!267602 b!267603 b!267604) bm!14550))

(declare-fun m!335751 () Bool)

(assert (=> b!267600 m!335751))

(declare-fun m!335753 () Bool)

(assert (=> d!77225 m!335753))

(declare-fun m!335755 () Bool)

(assert (=> d!77225 m!335755))

(declare-fun m!335757 () Bool)

(assert (=> b!267601 m!335757))

(declare-fun m!335759 () Bool)

(assert (=> bm!14550 m!335759))

(assert (=> b!267078 d!77225))

(declare-fun d!77227 () Bool)

(declare-fun lt!109648 () Token!1198)

(assert (=> d!77227 (contains!711 lt!109467 lt!109648)))

(declare-fun e!166302 () Token!1198)

(assert (=> d!77227 (= lt!109648 e!166302)))

(declare-fun c!50645 () Bool)

(assert (=> d!77227 (= c!50645 (= 0 0))))

(declare-fun e!166301 () Bool)

(assert (=> d!77227 e!166301))

(declare-fun res!122537 () Bool)

(assert (=> d!77227 (=> (not res!122537) (not e!166301))))

(assert (=> d!77227 (= res!122537 (<= 0 0))))

(assert (=> d!77227 (= (apply!758 lt!109467 0) lt!109648)))

(declare-fun b!267608 () Bool)

(assert (=> b!267608 (= e!166301 (< 0 (size!3031 lt!109467)))))

(declare-fun b!267609 () Bool)

(assert (=> b!267609 (= e!166302 (head!884 lt!109467))))

(declare-fun b!267610 () Bool)

(assert (=> b!267610 (= e!166302 (apply!758 (tail!474 lt!109467) (- 0 1)))))

(assert (= (and d!77227 res!122537) b!267608))

(assert (= (and d!77227 c!50645) b!267609))

(assert (= (and d!77227 (not c!50645)) b!267610))

(declare-fun m!335761 () Bool)

(assert (=> d!77227 m!335761))

(declare-fun m!335763 () Bool)

(assert (=> b!267608 m!335763))

(declare-fun m!335765 () Bool)

(assert (=> b!267609 m!335765))

(declare-fun m!335767 () Bool)

(assert (=> b!267610 m!335767))

(assert (=> b!267610 m!335767))

(declare-fun m!335769 () Bool)

(assert (=> b!267610 m!335769))

(assert (=> b!267078 d!77227))

(declare-fun d!77229 () Bool)

(assert (=> d!77229 (= (head!884 (drop!213 lt!109467 0)) (apply!758 lt!109467 0))))

(declare-fun lt!109649 () Unit!4824)

(assert (=> d!77229 (= lt!109649 (choose!2439 lt!109467 0))))

(declare-fun e!166303 () Bool)

(assert (=> d!77229 e!166303))

(declare-fun res!122538 () Bool)

(assert (=> d!77229 (=> (not res!122538) (not e!166303))))

(assert (=> d!77229 (= res!122538 (>= 0 0))))

(assert (=> d!77229 (= (lemmaDropApply!200 lt!109467 0) lt!109649)))

(declare-fun b!267611 () Bool)

(assert (=> b!267611 (= e!166303 (< 0 (size!3031 lt!109467)))))

(assert (= (and d!77229 res!122538) b!267611))

(assert (=> d!77229 m!335053))

(assert (=> d!77229 m!335053))

(assert (=> d!77229 m!335055))

(assert (=> d!77229 m!335069))

(declare-fun m!335771 () Bool)

(assert (=> d!77229 m!335771))

(assert (=> b!267611 m!335763))

(assert (=> b!267078 d!77229))

(declare-fun d!77231 () Bool)

(assert (=> d!77231 (= (head!884 (drop!213 lt!109467 0)) (h!9207 (drop!213 lt!109467 0)))))

(assert (=> b!267078 d!77231))

(declare-fun d!77233 () Bool)

(assert (=> d!77233 (= (list!1550 (seqFromList!822 (t!37804 tokens!465))) (list!1552 (c!50469 (seqFromList!822 (t!37804 tokens!465)))))))

(declare-fun bs!29462 () Bool)

(assert (= bs!29462 d!77233))

(declare-fun m!335773 () Bool)

(assert (=> bs!29462 m!335773))

(assert (=> b!267078 d!77233))

(declare-fun bs!29463 () Bool)

(declare-fun d!77235 () Bool)

(assert (= bs!29463 (and d!77235 b!267294)))

(declare-fun lambda!9034 () Int)

(assert (=> bs!29463 (not (= lambda!9034 lambda!9023))))

(declare-fun bs!29464 () Bool)

(assert (= bs!29464 (and d!77235 d!77015)))

(assert (=> bs!29464 (= lambda!9034 lambda!9011)))

(declare-fun bs!29465 () Bool)

(assert (= bs!29465 (and d!77235 b!267276)))

(assert (=> bs!29465 (not (= lambda!9034 lambda!9022))))

(declare-fun bs!29466 () Bool)

(assert (= bs!29466 (and d!77235 b!267078)))

(assert (=> bs!29466 (not (= lambda!9034 lambda!9012))))

(declare-fun bs!29467 () Bool)

(assert (= bs!29467 (and d!77235 d!77113)))

(assert (=> bs!29467 (= lambda!9034 lambda!9021)))

(declare-fun bs!29468 () Bool)

(assert (= bs!29468 (and d!77235 d!77119)))

(assert (=> bs!29468 (not (= lambda!9034 lambda!9028))))

(declare-fun bs!29469 () Bool)

(assert (= bs!29469 (and d!77235 b!266841)))

(assert (=> bs!29469 (= lambda!9034 lambda!8994)))

(declare-fun bs!29470 () Bool)

(assert (= bs!29470 (and d!77235 b!267253)))

(assert (=> bs!29470 (not (= lambda!9034 lambda!9020))))

(declare-fun bs!29471 () Bool)

(assert (= bs!29471 (and d!77235 b!267493)))

(assert (=> bs!29471 (not (= lambda!9034 lambda!9030))))

(declare-fun bs!29472 () Bool)

(assert (= bs!29472 (and d!77235 d!77175)))

(assert (=> bs!29472 (= lambda!9034 lambda!9029)))

(declare-fun bs!29473 () Bool)

(declare-fun b!267612 () Bool)

(assert (= bs!29473 (and b!267612 b!267294)))

(declare-fun lambda!9035 () Int)

(assert (=> bs!29473 (= lambda!9035 lambda!9023)))

(declare-fun bs!29474 () Bool)

(assert (= bs!29474 (and b!267612 d!77235)))

(assert (=> bs!29474 (not (= lambda!9035 lambda!9034))))

(declare-fun bs!29475 () Bool)

(assert (= bs!29475 (and b!267612 d!77015)))

(assert (=> bs!29475 (not (= lambda!9035 lambda!9011))))

(declare-fun bs!29476 () Bool)

(assert (= bs!29476 (and b!267612 b!267276)))

(assert (=> bs!29476 (= lambda!9035 lambda!9022)))

(declare-fun bs!29477 () Bool)

(assert (= bs!29477 (and b!267612 b!267078)))

(assert (=> bs!29477 (= lambda!9035 lambda!9012)))

(declare-fun bs!29478 () Bool)

(assert (= bs!29478 (and b!267612 d!77113)))

(assert (=> bs!29478 (not (= lambda!9035 lambda!9021))))

(declare-fun bs!29479 () Bool)

(assert (= bs!29479 (and b!267612 d!77119)))

(assert (=> bs!29479 (= lambda!9035 lambda!9028)))

(declare-fun bs!29480 () Bool)

(assert (= bs!29480 (and b!267612 b!266841)))

(assert (=> bs!29480 (not (= lambda!9035 lambda!8994))))

(declare-fun bs!29481 () Bool)

(assert (= bs!29481 (and b!267612 b!267253)))

(assert (=> bs!29481 (= lambda!9035 lambda!9020)))

(declare-fun bs!29482 () Bool)

(assert (= bs!29482 (and b!267612 b!267493)))

(assert (=> bs!29482 (= lambda!9035 lambda!9030)))

(declare-fun bs!29483 () Bool)

(assert (= bs!29483 (and b!267612 d!77175)))

(assert (=> bs!29483 (not (= lambda!9035 lambda!9029))))

(declare-fun b!267625 () Bool)

(declare-fun e!166313 () Bool)

(assert (=> b!267625 (= e!166313 true)))

(declare-fun b!267624 () Bool)

(declare-fun e!166312 () Bool)

(assert (=> b!267624 (= e!166312 e!166313)))

(declare-fun b!267623 () Bool)

(declare-fun e!166311 () Bool)

(assert (=> b!267623 (= e!166311 e!166312)))

(assert (=> b!267612 e!166311))

(assert (= b!267624 b!267625))

(assert (= b!267623 b!267624))

(assert (= (and b!267612 ((_ is Cons!3809) rules!1920)) b!267623))

(assert (=> b!267625 (< (dynLambda!1941 order!2913 (toValue!1458 (transformation!727 (h!9206 rules!1920)))) (dynLambda!1942 order!2915 lambda!9035))))

(assert (=> b!267625 (< (dynLambda!1943 order!2917 (toChars!1317 (transformation!727 (h!9206 rules!1920)))) (dynLambda!1942 order!2915 lambda!9035))))

(assert (=> b!267612 true))

(declare-fun b!267613 () Bool)

(declare-fun e!166309 () Bool)

(declare-fun lt!109660 () Option!802)

(declare-fun call!14558 () Token!1198)

(assert (=> b!267613 (= e!166309 (not (= (_1!2348 (v!14664 lt!109660)) call!14558)))))

(declare-fun bm!14551 () Bool)

(declare-fun call!14556 () BalanceConc!2560)

(declare-fun call!14559 () BalanceConc!2560)

(assert (=> bm!14551 (= call!14556 call!14559)))

(declare-fun b!267614 () Bool)

(declare-fun c!50649 () Bool)

(assert (=> b!267614 (= c!50649 e!166309)))

(declare-fun res!122540 () Bool)

(assert (=> b!267614 (=> (not res!122540) (not e!166309))))

(assert (=> b!267614 (= res!122540 ((_ is Some!801) lt!109660))))

(declare-fun e!166306 () BalanceConc!2560)

(declare-fun e!166308 () BalanceConc!2560)

(assert (=> b!267614 (= e!166306 e!166308)))

(declare-fun b!267615 () Bool)

(declare-fun call!14560 () BalanceConc!2560)

(declare-fun lt!109655 () BalanceConc!2560)

(assert (=> b!267615 (= e!166308 (++!990 call!14560 lt!109655))))

(declare-fun b!267616 () Bool)

(declare-fun e!166310 () BalanceConc!2560)

(declare-fun call!14557 () Token!1198)

(assert (=> b!267616 (= e!166310 (charsOf!372 call!14557))))

(declare-fun b!267617 () Bool)

(assert (=> b!267617 (= e!166310 call!14559)))

(declare-fun b!267618 () Bool)

(assert (=> b!267618 (= e!166308 (BalanceConc!2561 Empty!1276))))

(assert (=> b!267618 (= (print!338 thiss!17480 (singletonSeq!273 call!14557)) (printTailRec!301 thiss!17480 (singletonSeq!273 call!14557) 0 (BalanceConc!2561 Empty!1276)))))

(declare-fun lt!109658 () Unit!4824)

(declare-fun Unit!4844 () Unit!4824)

(assert (=> b!267618 (= lt!109658 Unit!4844)))

(declare-fun lt!109650 () Unit!4824)

(assert (=> b!267618 (= lt!109650 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!108 thiss!17480 rules!1920 (list!1547 call!14556) (list!1547 lt!109655)))))

(assert (=> b!267618 false))

(declare-fun lt!109656 () Unit!4824)

(declare-fun Unit!4845 () Unit!4824)

(assert (=> b!267618 (= lt!109656 Unit!4845)))

(declare-fun b!267619 () Bool)

(declare-fun e!166307 () BalanceConc!2560)

(assert (=> b!267619 (= e!166307 (BalanceConc!2561 Empty!1276))))

(declare-fun b!267620 () Bool)

(declare-fun e!166304 () Bool)

(assert (=> b!267620 (= e!166304 (<= (+ 0 1) (size!3028 (seqFromList!822 (t!37804 tokens!465)))))))

(declare-fun b!267621 () Bool)

(assert (=> b!267621 (= e!166306 call!14560)))

(declare-fun b!267622 () Bool)

(declare-fun e!166305 () Bool)

(assert (=> b!267622 (= e!166305 (= (_1!2348 (v!14664 lt!109660)) (apply!757 (seqFromList!822 (t!37804 tokens!465)) (+ 0 1))))))

(declare-fun bm!14552 () Bool)

(assert (=> bm!14552 (= call!14558 (apply!757 (seqFromList!822 (t!37804 tokens!465)) (+ 0 1)))))

(declare-fun bm!14553 () Bool)

(declare-fun c!50646 () Bool)

(declare-fun c!50647 () Bool)

(assert (=> bm!14553 (= c!50646 c!50647)))

(assert (=> bm!14553 (= call!14560 (++!990 e!166310 (ite c!50647 lt!109655 call!14556)))))

(assert (=> b!267612 (= e!166307 e!166306)))

(declare-fun lt!109651 () List!3820)

(assert (=> b!267612 (= lt!109651 (list!1550 (seqFromList!822 (t!37804 tokens!465))))))

(declare-fun lt!109654 () Unit!4824)

(assert (=> b!267612 (= lt!109654 (lemmaDropApply!200 lt!109651 (+ 0 1)))))

(assert (=> b!267612 (= (head!884 (drop!213 lt!109651 (+ 0 1))) (apply!758 lt!109651 (+ 0 1)))))

(declare-fun lt!109659 () Unit!4824)

(assert (=> b!267612 (= lt!109659 lt!109654)))

(declare-fun lt!109652 () List!3820)

(assert (=> b!267612 (= lt!109652 (list!1550 (seqFromList!822 (t!37804 tokens!465))))))

(declare-fun lt!109661 () Unit!4824)

(assert (=> b!267612 (= lt!109661 (lemmaDropTail!192 lt!109652 (+ 0 1)))))

(assert (=> b!267612 (= (tail!474 (drop!213 lt!109652 (+ 0 1))) (drop!213 lt!109652 (+ 0 1 1)))))

(declare-fun lt!109662 () Unit!4824)

(assert (=> b!267612 (= lt!109662 lt!109661)))

(declare-fun lt!109653 () Unit!4824)

(assert (=> b!267612 (= lt!109653 (forallContained!282 (list!1550 (seqFromList!822 (t!37804 tokens!465))) lambda!9035 (apply!757 (seqFromList!822 (t!37804 tokens!465)) (+ 0 1))))))

(assert (=> b!267612 (= lt!109655 (printWithSeparatorTokenWhenNeededRec!288 thiss!17480 rules!1920 (seqFromList!822 (t!37804 tokens!465)) separatorToken!170 (+ 0 1 1)))))

(assert (=> b!267612 (= lt!109660 (maxPrefixZipperSequence!294 thiss!17480 rules!1920 (++!990 (charsOf!372 (apply!757 (seqFromList!822 (t!37804 tokens!465)) (+ 0 1))) lt!109655)))))

(declare-fun res!122539 () Bool)

(assert (=> b!267612 (= res!122539 ((_ is Some!801) lt!109660))))

(assert (=> b!267612 (=> (not res!122539) (not e!166305))))

(assert (=> b!267612 (= c!50647 e!166305)))

(declare-fun lt!109663 () BalanceConc!2560)

(assert (=> d!77235 (= (list!1547 lt!109663) (printWithSeparatorTokenWhenNeededList!296 thiss!17480 rules!1920 (dropList!160 (seqFromList!822 (t!37804 tokens!465)) (+ 0 1)) separatorToken!170))))

(assert (=> d!77235 (= lt!109663 e!166307)))

(declare-fun c!50648 () Bool)

(assert (=> d!77235 (= c!50648 (>= (+ 0 1) (size!3028 (seqFromList!822 (t!37804 tokens!465)))))))

(declare-fun lt!109657 () Unit!4824)

(assert (=> d!77235 (= lt!109657 (lemmaContentSubsetPreservesForall!104 (list!1550 (seqFromList!822 (t!37804 tokens!465))) (dropList!160 (seqFromList!822 (t!37804 tokens!465)) (+ 0 1)) lambda!9034))))

(assert (=> d!77235 e!166304))

(declare-fun res!122541 () Bool)

(assert (=> d!77235 (=> (not res!122541) (not e!166304))))

(assert (=> d!77235 (= res!122541 (>= (+ 0 1) 0))))

(assert (=> d!77235 (= (printWithSeparatorTokenWhenNeededRec!288 thiss!17480 rules!1920 (seqFromList!822 (t!37804 tokens!465)) separatorToken!170 (+ 0 1)) lt!109663)))

(declare-fun bm!14554 () Bool)

(assert (=> bm!14554 (= call!14557 call!14558)))

(declare-fun bm!14555 () Bool)

(assert (=> bm!14555 (= call!14559 (charsOf!372 (ite c!50647 call!14558 (ite c!50649 separatorToken!170 call!14557))))))

(assert (= (and d!77235 res!122541) b!267620))

(assert (= (and d!77235 c!50648) b!267619))

(assert (= (and d!77235 (not c!50648)) b!267612))

(assert (= (and b!267612 res!122539) b!267622))

(assert (= (and b!267612 c!50647) b!267621))

(assert (= (and b!267612 (not c!50647)) b!267614))

(assert (= (and b!267614 res!122540) b!267613))

(assert (= (and b!267614 c!50649) b!267615))

(assert (= (and b!267614 (not c!50649)) b!267618))

(assert (= (or b!267615 b!267618) bm!14554))

(assert (= (or b!267615 b!267618) bm!14551))

(assert (= (or b!267621 b!267613 bm!14554) bm!14552))

(assert (= (or b!267621 bm!14551) bm!14555))

(assert (= (or b!267621 b!267615) bm!14553))

(assert (= (and bm!14553 c!50646) b!267617))

(assert (= (and bm!14553 (not c!50646)) b!267616))

(declare-fun m!335775 () Bool)

(assert (=> bm!14553 m!335775))

(declare-fun m!335777 () Bool)

(assert (=> b!267612 m!335777))

(declare-fun m!335779 () Bool)

(assert (=> b!267612 m!335779))

(declare-fun m!335781 () Bool)

(assert (=> b!267612 m!335781))

(declare-fun m!335783 () Bool)

(assert (=> b!267612 m!335783))

(declare-fun m!335785 () Bool)

(assert (=> b!267612 m!335785))

(assert (=> b!267612 m!334547))

(declare-fun m!335787 () Bool)

(assert (=> b!267612 m!335787))

(declare-fun m!335789 () Bool)

(assert (=> b!267612 m!335789))

(declare-fun m!335791 () Bool)

(assert (=> b!267612 m!335791))

(assert (=> b!267612 m!334547))

(assert (=> b!267612 m!335063))

(assert (=> b!267612 m!335777))

(assert (=> b!267612 m!334547))

(declare-fun m!335793 () Bool)

(assert (=> b!267612 m!335793))

(assert (=> b!267612 m!335783))

(assert (=> b!267612 m!335063))

(assert (=> b!267612 m!335787))

(declare-fun m!335795 () Bool)

(assert (=> b!267612 m!335795))

(declare-fun m!335797 () Bool)

(assert (=> b!267612 m!335797))

(assert (=> b!267612 m!335791))

(declare-fun m!335799 () Bool)

(assert (=> b!267612 m!335799))

(declare-fun m!335801 () Bool)

(assert (=> b!267612 m!335801))

(declare-fun m!335803 () Bool)

(assert (=> b!267612 m!335803))

(assert (=> b!267612 m!335787))

(assert (=> b!267612 m!335789))

(declare-fun m!335805 () Bool)

(assert (=> b!267616 m!335805))

(assert (=> b!267622 m!334547))

(assert (=> b!267622 m!335787))

(assert (=> bm!14552 m!334547))

(assert (=> bm!14552 m!335787))

(declare-fun m!335807 () Bool)

(assert (=> b!267618 m!335807))

(declare-fun m!335809 () Bool)

(assert (=> b!267618 m!335809))

(assert (=> b!267618 m!335807))

(declare-fun m!335811 () Bool)

(assert (=> b!267618 m!335811))

(declare-fun m!335813 () Bool)

(assert (=> b!267618 m!335813))

(assert (=> b!267618 m!335811))

(assert (=> b!267618 m!335809))

(declare-fun m!335815 () Bool)

(assert (=> b!267618 m!335815))

(assert (=> b!267618 m!335809))

(declare-fun m!335817 () Bool)

(assert (=> b!267618 m!335817))

(declare-fun m!335819 () Bool)

(assert (=> d!77235 m!335819))

(assert (=> d!77235 m!334547))

(declare-fun m!335821 () Bool)

(assert (=> d!77235 m!335821))

(assert (=> d!77235 m!335063))

(assert (=> d!77235 m!335821))

(declare-fun m!335823 () Bool)

(assert (=> d!77235 m!335823))

(assert (=> d!77235 m!334547))

(assert (=> d!77235 m!335063))

(assert (=> d!77235 m!335821))

(declare-fun m!335825 () Bool)

(assert (=> d!77235 m!335825))

(assert (=> d!77235 m!334547))

(assert (=> d!77235 m!335099))

(declare-fun m!335827 () Bool)

(assert (=> bm!14555 m!335827))

(declare-fun m!335829 () Bool)

(assert (=> b!267615 m!335829))

(assert (=> b!267620 m!334547))

(assert (=> b!267620 m!335099))

(assert (=> b!267078 d!77235))

(declare-fun b!267626 () Bool)

(declare-fun e!166315 () Int)

(assert (=> b!267626 (= e!166315 0)))

(declare-fun b!267627 () Bool)

(declare-fun e!166314 () Bool)

(declare-fun lt!109664 () List!3820)

(declare-fun e!166317 () Int)

(assert (=> b!267627 (= e!166314 (= (size!3031 lt!109664) e!166317))))

(declare-fun c!50651 () Bool)

(assert (=> b!267627 (= c!50651 (<= 0 0))))

(declare-fun d!77237 () Bool)

(assert (=> d!77237 e!166314))

(declare-fun res!122542 () Bool)

(assert (=> d!77237 (=> (not res!122542) (not e!166314))))

(assert (=> d!77237 (= res!122542 (= ((_ map implies) (content!544 lt!109664) (content!544 lt!109467)) ((as const (InoxSet Token!1198)) true)))))

(declare-fun e!166318 () List!3820)

(assert (=> d!77237 (= lt!109664 e!166318)))

(declare-fun c!50650 () Bool)

(assert (=> d!77237 (= c!50650 ((_ is Nil!3810) lt!109467))))

(assert (=> d!77237 (= (drop!213 lt!109467 0) lt!109664)))

(declare-fun b!267628 () Bool)

(declare-fun e!166316 () List!3820)

(assert (=> b!267628 (= e!166316 (drop!213 (t!37804 lt!109467) (- 0 1)))))

(declare-fun b!267629 () Bool)

(declare-fun call!14561 () Int)

(assert (=> b!267629 (= e!166317 call!14561)))

(declare-fun b!267630 () Bool)

(assert (=> b!267630 (= e!166317 e!166315)))

(declare-fun c!50653 () Bool)

(assert (=> b!267630 (= c!50653 (>= 0 call!14561))))

(declare-fun b!267631 () Bool)

(assert (=> b!267631 (= e!166315 (- call!14561 0))))

(declare-fun b!267632 () Bool)

(assert (=> b!267632 (= e!166318 e!166316)))

(declare-fun c!50652 () Bool)

(assert (=> b!267632 (= c!50652 (<= 0 0))))

(declare-fun bm!14556 () Bool)

(assert (=> bm!14556 (= call!14561 (size!3031 lt!109467))))

(declare-fun b!267633 () Bool)

(assert (=> b!267633 (= e!166318 Nil!3810)))

(declare-fun b!267634 () Bool)

(assert (=> b!267634 (= e!166316 lt!109467)))

(assert (= (and d!77237 c!50650) b!267633))

(assert (= (and d!77237 (not c!50650)) b!267632))

(assert (= (and b!267632 c!50652) b!267634))

(assert (= (and b!267632 (not c!50652)) b!267628))

(assert (= (and d!77237 res!122542) b!267627))

(assert (= (and b!267627 c!50651) b!267629))

(assert (= (and b!267627 (not c!50651)) b!267630))

(assert (= (and b!267630 c!50653) b!267626))

(assert (= (and b!267630 (not c!50653)) b!267631))

(assert (= (or b!267629 b!267630 b!267631) bm!14556))

(declare-fun m!335831 () Bool)

(assert (=> b!267627 m!335831))

(declare-fun m!335833 () Bool)

(assert (=> d!77237 m!335833))

(declare-fun m!335835 () Bool)

(assert (=> d!77237 m!335835))

(declare-fun m!335837 () Bool)

(assert (=> b!267628 m!335837))

(assert (=> bm!14556 m!335763))

(assert (=> b!267078 d!77237))

(declare-fun d!77239 () Bool)

(assert (=> d!77239 (dynLambda!1945 lambda!9012 (apply!757 (seqFromList!822 (t!37804 tokens!465)) 0))))

(declare-fun lt!109665 () Unit!4824)

(assert (=> d!77239 (= lt!109665 (choose!2438 (list!1550 (seqFromList!822 (t!37804 tokens!465))) lambda!9012 (apply!757 (seqFromList!822 (t!37804 tokens!465)) 0)))))

(declare-fun e!166319 () Bool)

(assert (=> d!77239 e!166319))

(declare-fun res!122543 () Bool)

(assert (=> d!77239 (=> (not res!122543) (not e!166319))))

(assert (=> d!77239 (= res!122543 (forall!949 (list!1550 (seqFromList!822 (t!37804 tokens!465))) lambda!9012))))

(assert (=> d!77239 (= (forallContained!282 (list!1550 (seqFromList!822 (t!37804 tokens!465))) lambda!9012 (apply!757 (seqFromList!822 (t!37804 tokens!465)) 0)) lt!109665)))

(declare-fun b!267635 () Bool)

(assert (=> b!267635 (= e!166319 (contains!711 (list!1550 (seqFromList!822 (t!37804 tokens!465))) (apply!757 (seqFromList!822 (t!37804 tokens!465)) 0)))))

(assert (= (and d!77239 res!122543) b!267635))

(declare-fun b_lambda!8407 () Bool)

(assert (=> (not b_lambda!8407) (not d!77239)))

(assert (=> d!77239 m!335057))

(declare-fun m!335839 () Bool)

(assert (=> d!77239 m!335839))

(assert (=> d!77239 m!335063))

(assert (=> d!77239 m!335057))

(declare-fun m!335841 () Bool)

(assert (=> d!77239 m!335841))

(assert (=> d!77239 m!335063))

(declare-fun m!335843 () Bool)

(assert (=> d!77239 m!335843))

(assert (=> b!267635 m!335063))

(assert (=> b!267635 m!335057))

(declare-fun m!335845 () Bool)

(assert (=> b!267635 m!335845))

(assert (=> b!267078 d!77239))

(declare-fun b!267636 () Bool)

(declare-fun res!122544 () Bool)

(declare-fun e!166320 () Bool)

(assert (=> b!267636 (=> (not res!122544) (not e!166320))))

(declare-fun e!166325 () Bool)

(assert (=> b!267636 (= res!122544 e!166325)))

(declare-fun res!122546 () Bool)

(assert (=> b!267636 (=> res!122546 e!166325)))

(declare-fun lt!109671 () Option!802)

(assert (=> b!267636 (= res!122546 (not (isDefined!643 lt!109671)))))

(declare-fun bm!14557 () Bool)

(declare-fun call!14562 () Option!802)

(assert (=> bm!14557 (= call!14562 (maxPrefixOneRuleZipperSequence!109 thiss!17480 (h!9206 rules!1920) (++!990 (charsOf!372 (apply!757 (seqFromList!822 (t!37804 tokens!465)) 0)) lt!109471)))))

(declare-fun b!267637 () Bool)

(declare-fun e!166323 () Bool)

(declare-fun e!166322 () Bool)

(assert (=> b!267637 (= e!166323 e!166322)))

(declare-fun res!122545 () Bool)

(assert (=> b!267637 (=> (not res!122545) (not e!166322))))

(assert (=> b!267637 (= res!122545 (= (_1!2348 (get!1254 lt!109671)) (_1!2349 (get!1255 (maxPrefix!331 thiss!17480 rules!1920 (list!1547 (++!990 (charsOf!372 (apply!757 (seqFromList!822 (t!37804 tokens!465)) 0)) lt!109471)))))))))

(declare-fun b!267638 () Bool)

(declare-fun e!166321 () Option!802)

(assert (=> b!267638 (= e!166321 call!14562)))

(declare-fun b!267639 () Bool)

(assert (=> b!267639 (= e!166322 (= (list!1547 (_2!2348 (get!1254 lt!109671))) (_2!2349 (get!1255 (maxPrefix!331 thiss!17480 rules!1920 (list!1547 (++!990 (charsOf!372 (apply!757 (seqFromList!822 (t!37804 tokens!465)) 0)) lt!109471)))))))))

(declare-fun d!77241 () Bool)

(assert (=> d!77241 e!166320))

(declare-fun res!122548 () Bool)

(assert (=> d!77241 (=> (not res!122548) (not e!166320))))

(assert (=> d!77241 (= res!122548 (= (isDefined!643 lt!109671) (isDefined!644 (maxPrefixZipper!108 thiss!17480 rules!1920 (list!1547 (++!990 (charsOf!372 (apply!757 (seqFromList!822 (t!37804 tokens!465)) 0)) lt!109471))))))))

(assert (=> d!77241 (= lt!109671 e!166321)))

(declare-fun c!50654 () Bool)

(assert (=> d!77241 (= c!50654 (and ((_ is Cons!3809) rules!1920) ((_ is Nil!3809) (t!37803 rules!1920))))))

(declare-fun lt!109669 () Unit!4824)

(declare-fun lt!109667 () Unit!4824)

(assert (=> d!77241 (= lt!109669 lt!109667)))

(declare-fun lt!109666 () List!3818)

(declare-fun lt!109668 () List!3818)

(assert (=> d!77241 (isPrefix!394 lt!109666 lt!109668)))

(assert (=> d!77241 (= lt!109667 (lemmaIsPrefixRefl!204 lt!109666 lt!109668))))

(assert (=> d!77241 (= lt!109668 (list!1547 (++!990 (charsOf!372 (apply!757 (seqFromList!822 (t!37804 tokens!465)) 0)) lt!109471)))))

(assert (=> d!77241 (= lt!109666 (list!1547 (++!990 (charsOf!372 (apply!757 (seqFromList!822 (t!37804 tokens!465)) 0)) lt!109471)))))

(assert (=> d!77241 (rulesValidInductive!199 thiss!17480 rules!1920)))

(assert (=> d!77241 (= (maxPrefixZipperSequence!294 thiss!17480 rules!1920 (++!990 (charsOf!372 (apply!757 (seqFromList!822 (t!37804 tokens!465)) 0)) lt!109471)) lt!109671)))

(declare-fun e!166324 () Bool)

(declare-fun b!267640 () Bool)

(assert (=> b!267640 (= e!166324 (= (list!1547 (_2!2348 (get!1254 lt!109671))) (_2!2349 (get!1255 (maxPrefixZipper!108 thiss!17480 rules!1920 (list!1547 (++!990 (charsOf!372 (apply!757 (seqFromList!822 (t!37804 tokens!465)) 0)) lt!109471)))))))))

(declare-fun b!267641 () Bool)

(assert (=> b!267641 (= e!166325 e!166324)))

(declare-fun res!122547 () Bool)

(assert (=> b!267641 (=> (not res!122547) (not e!166324))))

(assert (=> b!267641 (= res!122547 (= (_1!2348 (get!1254 lt!109671)) (_1!2349 (get!1255 (maxPrefixZipper!108 thiss!17480 rules!1920 (list!1547 (++!990 (charsOf!372 (apply!757 (seqFromList!822 (t!37804 tokens!465)) 0)) lt!109471)))))))))

(declare-fun b!267642 () Bool)

(assert (=> b!267642 (= e!166320 e!166323)))

(declare-fun res!122549 () Bool)

(assert (=> b!267642 (=> res!122549 e!166323)))

(assert (=> b!267642 (= res!122549 (not (isDefined!643 lt!109671)))))

(declare-fun b!267643 () Bool)

(declare-fun lt!109672 () Option!802)

(declare-fun lt!109670 () Option!802)

(assert (=> b!267643 (= e!166321 (ite (and ((_ is None!801) lt!109672) ((_ is None!801) lt!109670)) None!801 (ite ((_ is None!801) lt!109670) lt!109672 (ite ((_ is None!801) lt!109672) lt!109670 (ite (>= (size!3025 (_1!2348 (v!14664 lt!109672))) (size!3025 (_1!2348 (v!14664 lt!109670)))) lt!109672 lt!109670)))))))

(assert (=> b!267643 (= lt!109672 call!14562)))

(assert (=> b!267643 (= lt!109670 (maxPrefixZipperSequence!294 thiss!17480 (t!37803 rules!1920) (++!990 (charsOf!372 (apply!757 (seqFromList!822 (t!37804 tokens!465)) 0)) lt!109471)))))

(assert (= (and d!77241 c!50654) b!267638))

(assert (= (and d!77241 (not c!50654)) b!267643))

(assert (= (or b!267638 b!267643) bm!14557))

(assert (= (and d!77241 res!122548) b!267636))

(assert (= (and b!267636 (not res!122546)) b!267641))

(assert (= (and b!267641 res!122547) b!267640))

(assert (= (and b!267636 res!122544) b!267642))

(assert (= (and b!267642 (not res!122549)) b!267637))

(assert (= (and b!267637 res!122545) b!267639))

(declare-fun m!335847 () Bool)

(assert (=> b!267640 m!335847))

(declare-fun m!335849 () Bool)

(assert (=> b!267640 m!335849))

(assert (=> b!267640 m!335061))

(assert (=> b!267640 m!335847))

(declare-fun m!335851 () Bool)

(assert (=> b!267640 m!335851))

(declare-fun m!335853 () Bool)

(assert (=> b!267640 m!335853))

(assert (=> b!267640 m!335849))

(declare-fun m!335855 () Bool)

(assert (=> b!267640 m!335855))

(assert (=> bm!14557 m!335061))

(declare-fun m!335857 () Bool)

(assert (=> bm!14557 m!335857))

(assert (=> b!267637 m!335853))

(assert (=> b!267637 m!335061))

(assert (=> b!267637 m!335847))

(assert (=> b!267637 m!335847))

(declare-fun m!335859 () Bool)

(assert (=> b!267637 m!335859))

(assert (=> b!267637 m!335859))

(declare-fun m!335861 () Bool)

(assert (=> b!267637 m!335861))

(assert (=> b!267641 m!335853))

(assert (=> b!267641 m!335061))

(assert (=> b!267641 m!335847))

(assert (=> b!267641 m!335847))

(assert (=> b!267641 m!335849))

(assert (=> b!267641 m!335849))

(assert (=> b!267641 m!335855))

(declare-fun m!335863 () Bool)

(assert (=> b!267636 m!335863))

(assert (=> b!267643 m!335061))

(declare-fun m!335865 () Bool)

(assert (=> b!267643 m!335865))

(assert (=> d!77241 m!335847))

(assert (=> d!77241 m!335849))

(assert (=> d!77241 m!335849))

(declare-fun m!335867 () Bool)

(assert (=> d!77241 m!335867))

(assert (=> d!77241 m!335061))

(assert (=> d!77241 m!335847))

(assert (=> d!77241 m!335671))

(declare-fun m!335869 () Bool)

(assert (=> d!77241 m!335869))

(declare-fun m!335871 () Bool)

(assert (=> d!77241 m!335871))

(assert (=> d!77241 m!335863))

(assert (=> b!267642 m!335863))

(assert (=> b!267639 m!335859))

(assert (=> b!267639 m!335861))

(assert (=> b!267639 m!335061))

(assert (=> b!267639 m!335847))

(assert (=> b!267639 m!335851))

(assert (=> b!267639 m!335847))

(assert (=> b!267639 m!335859))

(assert (=> b!267639 m!335853))

(assert (=> b!267078 d!77241))

(declare-fun d!77243 () Bool)

(assert (=> d!77243 (= (tail!474 (drop!213 lt!109468 0)) (drop!213 lt!109468 (+ 0 1)))))

(declare-fun lt!109673 () Unit!4824)

(assert (=> d!77243 (= lt!109673 (choose!2437 lt!109468 0))))

(declare-fun e!166326 () Bool)

(assert (=> d!77243 e!166326))

(declare-fun res!122550 () Bool)

(assert (=> d!77243 (=> (not res!122550) (not e!166326))))

(assert (=> d!77243 (= res!122550 (>= 0 0))))

(assert (=> d!77243 (= (lemmaDropTail!192 lt!109468 0) lt!109673)))

(declare-fun b!267644 () Bool)

(assert (=> b!267644 (= e!166326 (< 0 (size!3031 lt!109468)))))

(assert (= (and d!77243 res!122550) b!267644))

(assert (=> d!77243 m!335047))

(assert (=> d!77243 m!335047))

(assert (=> d!77243 m!335049))

(assert (=> d!77243 m!335075))

(declare-fun m!335873 () Bool)

(assert (=> d!77243 m!335873))

(assert (=> b!267644 m!335759))

(assert (=> b!267078 d!77243))

(declare-fun d!77245 () Bool)

(declare-fun e!166327 () Bool)

(assert (=> d!77245 e!166327))

(declare-fun res!122551 () Bool)

(assert (=> d!77245 (=> (not res!122551) (not e!166327))))

(assert (=> d!77245 (= res!122551 (appendAssocInst!60 (c!50467 (charsOf!372 (apply!757 (seqFromList!822 (t!37804 tokens!465)) 0))) (c!50467 lt!109471)))))

(declare-fun lt!109674 () BalanceConc!2560)

(assert (=> d!77245 (= lt!109674 (BalanceConc!2561 (++!991 (c!50467 (charsOf!372 (apply!757 (seqFromList!822 (t!37804 tokens!465)) 0))) (c!50467 lt!109471))))))

(assert (=> d!77245 (= (++!990 (charsOf!372 (apply!757 (seqFromList!822 (t!37804 tokens!465)) 0)) lt!109471) lt!109674)))

(declare-fun b!267648 () Bool)

(assert (=> b!267648 (= e!166327 (= (list!1547 lt!109674) (++!988 (list!1547 (charsOf!372 (apply!757 (seqFromList!822 (t!37804 tokens!465)) 0))) (list!1547 lt!109471))))))

(declare-fun b!267646 () Bool)

(declare-fun res!122552 () Bool)

(assert (=> b!267646 (=> (not res!122552) (not e!166327))))

(assert (=> b!267646 (= res!122552 (<= (height!149 (++!991 (c!50467 (charsOf!372 (apply!757 (seqFromList!822 (t!37804 tokens!465)) 0))) (c!50467 lt!109471))) (+ (max!0 (height!149 (c!50467 (charsOf!372 (apply!757 (seqFromList!822 (t!37804 tokens!465)) 0)))) (height!149 (c!50467 lt!109471))) 1)))))

(declare-fun b!267647 () Bool)

(declare-fun res!122554 () Bool)

(assert (=> b!267647 (=> (not res!122554) (not e!166327))))

(assert (=> b!267647 (= res!122554 (>= (height!149 (++!991 (c!50467 (charsOf!372 (apply!757 (seqFromList!822 (t!37804 tokens!465)) 0))) (c!50467 lt!109471))) (max!0 (height!149 (c!50467 (charsOf!372 (apply!757 (seqFromList!822 (t!37804 tokens!465)) 0)))) (height!149 (c!50467 lt!109471)))))))

(declare-fun b!267645 () Bool)

(declare-fun res!122553 () Bool)

(assert (=> b!267645 (=> (not res!122553) (not e!166327))))

(assert (=> b!267645 (= res!122553 (isBalanced!346 (++!991 (c!50467 (charsOf!372 (apply!757 (seqFromList!822 (t!37804 tokens!465)) 0))) (c!50467 lt!109471))))))

(assert (= (and d!77245 res!122551) b!267645))

(assert (= (and b!267645 res!122553) b!267646))

(assert (= (and b!267646 res!122552) b!267647))

(assert (= (and b!267647 res!122554) b!267648))

(declare-fun m!335875 () Bool)

(assert (=> b!267646 m!335875))

(declare-fun m!335877 () Bool)

(assert (=> b!267646 m!335877))

(assert (=> b!267646 m!335517))

(declare-fun m!335879 () Bool)

(assert (=> b!267646 m!335879))

(assert (=> b!267646 m!335875))

(assert (=> b!267646 m!335879))

(assert (=> b!267646 m!335517))

(declare-fun m!335881 () Bool)

(assert (=> b!267646 m!335881))

(assert (=> b!267645 m!335875))

(assert (=> b!267645 m!335875))

(declare-fun m!335883 () Bool)

(assert (=> b!267645 m!335883))

(declare-fun m!335885 () Bool)

(assert (=> d!77245 m!335885))

(assert (=> d!77245 m!335875))

(assert (=> b!267647 m!335875))

(assert (=> b!267647 m!335877))

(assert (=> b!267647 m!335517))

(assert (=> b!267647 m!335879))

(assert (=> b!267647 m!335875))

(assert (=> b!267647 m!335879))

(assert (=> b!267647 m!335517))

(assert (=> b!267647 m!335881))

(declare-fun m!335887 () Bool)

(assert (=> b!267648 m!335887))

(assert (=> b!267648 m!335059))

(declare-fun m!335889 () Bool)

(assert (=> b!267648 m!335889))

(assert (=> b!267648 m!335083))

(assert (=> b!267648 m!335889))

(assert (=> b!267648 m!335083))

(declare-fun m!335891 () Bool)

(assert (=> b!267648 m!335891))

(assert (=> b!267078 d!77245))

(declare-fun d!77247 () Bool)

(assert (=> d!77247 (= (tail!474 (drop!213 lt!109468 0)) (t!37804 (drop!213 lt!109468 0)))))

(assert (=> b!267078 d!77247))

(declare-fun b!267649 () Bool)

(declare-fun e!166329 () Int)

(assert (=> b!267649 (= e!166329 0)))

(declare-fun b!267650 () Bool)

(declare-fun e!166328 () Bool)

(declare-fun lt!109675 () List!3820)

(declare-fun e!166331 () Int)

(assert (=> b!267650 (= e!166328 (= (size!3031 lt!109675) e!166331))))

(declare-fun c!50656 () Bool)

(assert (=> b!267650 (= c!50656 (<= 0 0))))

(declare-fun d!77249 () Bool)

(assert (=> d!77249 e!166328))

(declare-fun res!122555 () Bool)

(assert (=> d!77249 (=> (not res!122555) (not e!166328))))

(assert (=> d!77249 (= res!122555 (= ((_ map implies) (content!544 lt!109675) (content!544 lt!109468)) ((as const (InoxSet Token!1198)) true)))))

(declare-fun e!166332 () List!3820)

(assert (=> d!77249 (= lt!109675 e!166332)))

(declare-fun c!50655 () Bool)

(assert (=> d!77249 (= c!50655 ((_ is Nil!3810) lt!109468))))

(assert (=> d!77249 (= (drop!213 lt!109468 0) lt!109675)))

(declare-fun b!267651 () Bool)

(declare-fun e!166330 () List!3820)

(assert (=> b!267651 (= e!166330 (drop!213 (t!37804 lt!109468) (- 0 1)))))

(declare-fun b!267652 () Bool)

(declare-fun call!14563 () Int)

(assert (=> b!267652 (= e!166331 call!14563)))

(declare-fun b!267653 () Bool)

(assert (=> b!267653 (= e!166331 e!166329)))

(declare-fun c!50658 () Bool)

(assert (=> b!267653 (= c!50658 (>= 0 call!14563))))

(declare-fun b!267654 () Bool)

(assert (=> b!267654 (= e!166329 (- call!14563 0))))

(declare-fun b!267655 () Bool)

(assert (=> b!267655 (= e!166332 e!166330)))

(declare-fun c!50657 () Bool)

(assert (=> b!267655 (= c!50657 (<= 0 0))))

(declare-fun bm!14558 () Bool)

(assert (=> bm!14558 (= call!14563 (size!3031 lt!109468))))

(declare-fun b!267656 () Bool)

(assert (=> b!267656 (= e!166332 Nil!3810)))

(declare-fun b!267657 () Bool)

(assert (=> b!267657 (= e!166330 lt!109468)))

(assert (= (and d!77249 c!50655) b!267656))

(assert (= (and d!77249 (not c!50655)) b!267655))

(assert (= (and b!267655 c!50657) b!267657))

(assert (= (and b!267655 (not c!50657)) b!267651))

(assert (= (and d!77249 res!122555) b!267650))

(assert (= (and b!267650 c!50656) b!267652))

(assert (= (and b!267650 (not c!50656)) b!267653))

(assert (= (and b!267653 c!50658) b!267649))

(assert (= (and b!267653 (not c!50658)) b!267654))

(assert (= (or b!267652 b!267653 b!267654) bm!14558))

(declare-fun m!335893 () Bool)

(assert (=> b!267650 m!335893))

(declare-fun m!335895 () Bool)

(assert (=> d!77249 m!335895))

(assert (=> d!77249 m!335755))

(declare-fun m!335897 () Bool)

(assert (=> b!267651 m!335897))

(assert (=> bm!14558 m!335759))

(assert (=> b!267078 d!77249))

(declare-fun d!77251 () Bool)

(declare-fun lt!109676 () Token!1198)

(assert (=> d!77251 (= lt!109676 (apply!758 (list!1550 (seqFromList!822 (t!37804 tokens!465))) 0))))

(assert (=> d!77251 (= lt!109676 (apply!759 (c!50469 (seqFromList!822 (t!37804 tokens!465))) 0))))

(declare-fun e!166333 () Bool)

(assert (=> d!77251 e!166333))

(declare-fun res!122556 () Bool)

(assert (=> d!77251 (=> (not res!122556) (not e!166333))))

(assert (=> d!77251 (= res!122556 (<= 0 0))))

(assert (=> d!77251 (= (apply!757 (seqFromList!822 (t!37804 tokens!465)) 0) lt!109676)))

(declare-fun b!267658 () Bool)

(assert (=> b!267658 (= e!166333 (< 0 (size!3028 (seqFromList!822 (t!37804 tokens!465)))))))

(assert (= (and d!77251 res!122556) b!267658))

(assert (=> d!77251 m!334547))

(assert (=> d!77251 m!335063))

(assert (=> d!77251 m!335063))

(declare-fun m!335899 () Bool)

(assert (=> d!77251 m!335899))

(declare-fun m!335901 () Bool)

(assert (=> d!77251 m!335901))

(assert (=> b!267658 m!334547))

(assert (=> b!267658 m!335099))

(assert (=> b!267078 d!77251))

(declare-fun d!77253 () Bool)

(declare-fun lt!109677 () BalanceConc!2560)

(assert (=> d!77253 (= (list!1547 lt!109677) (originalCharacters!770 (apply!757 (seqFromList!822 (t!37804 tokens!465)) 0)))))

(assert (=> d!77253 (= lt!109677 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 (apply!757 (seqFromList!822 (t!37804 tokens!465)) 0)))) (value!25035 (apply!757 (seqFromList!822 (t!37804 tokens!465)) 0))))))

(assert (=> d!77253 (= (charsOf!372 (apply!757 (seqFromList!822 (t!37804 tokens!465)) 0)) lt!109677)))

(declare-fun b_lambda!8409 () Bool)

(assert (=> (not b_lambda!8409) (not d!77253)))

(declare-fun t!37893 () Bool)

(declare-fun tb!14837 () Bool)

(assert (=> (and b!267341 (= (toChars!1317 (transformation!727 (rule!1312 (h!9207 (t!37804 tokens!465))))) (toChars!1317 (transformation!727 (rule!1312 (apply!757 (seqFromList!822 (t!37804 tokens!465)) 0))))) t!37893) tb!14837))

(declare-fun b!267659 () Bool)

(declare-fun e!166334 () Bool)

(declare-fun tp!101976 () Bool)

(assert (=> b!267659 (= e!166334 (and (inv!4709 (c!50467 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 (apply!757 (seqFromList!822 (t!37804 tokens!465)) 0)))) (value!25035 (apply!757 (seqFromList!822 (t!37804 tokens!465)) 0))))) tp!101976))))

(declare-fun result!18416 () Bool)

(assert (=> tb!14837 (= result!18416 (and (inv!4710 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 (apply!757 (seqFromList!822 (t!37804 tokens!465)) 0)))) (value!25035 (apply!757 (seqFromList!822 (t!37804 tokens!465)) 0)))) e!166334))))

(assert (= tb!14837 b!267659))

(declare-fun m!335903 () Bool)

(assert (=> b!267659 m!335903))

(declare-fun m!335905 () Bool)

(assert (=> tb!14837 m!335905))

(assert (=> d!77253 t!37893))

(declare-fun b_and!21141 () Bool)

(assert (= b_and!21135 (and (=> t!37893 result!18416) b_and!21141)))

(declare-fun t!37895 () Bool)

(declare-fun tb!14839 () Bool)

(assert (=> (and b!266827 (= (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465)))) (toChars!1317 (transformation!727 (rule!1312 (apply!757 (seqFromList!822 (t!37804 tokens!465)) 0))))) t!37895) tb!14839))

(declare-fun result!18418 () Bool)

(assert (= result!18418 result!18416))

(assert (=> d!77253 t!37895))

(declare-fun b_and!21143 () Bool)

(assert (= b_and!21137 (and (=> t!37895 result!18418) b_and!21143)))

(declare-fun tb!14841 () Bool)

(declare-fun t!37897 () Bool)

(assert (=> (and b!267380 (= (toChars!1317 (transformation!727 (h!9206 (t!37803 rules!1920)))) (toChars!1317 (transformation!727 (rule!1312 (apply!757 (seqFromList!822 (t!37804 tokens!465)) 0))))) t!37897) tb!14841))

(declare-fun result!18420 () Bool)

(assert (= result!18420 result!18416))

(assert (=> d!77253 t!37897))

(declare-fun b_and!21145 () Bool)

(assert (= b_and!21139 (and (=> t!37897 result!18420) b_and!21145)))

(declare-fun tb!14843 () Bool)

(declare-fun t!37899 () Bool)

(assert (=> (and b!266822 (= (toChars!1317 (transformation!727 (rule!1312 separatorToken!170))) (toChars!1317 (transformation!727 (rule!1312 (apply!757 (seqFromList!822 (t!37804 tokens!465)) 0))))) t!37899) tb!14843))

(declare-fun result!18422 () Bool)

(assert (= result!18422 result!18416))

(assert (=> d!77253 t!37899))

(declare-fun b_and!21147 () Bool)

(assert (= b_and!21133 (and (=> t!37899 result!18422) b_and!21147)))

(declare-fun t!37901 () Bool)

(declare-fun tb!14845 () Bool)

(assert (=> (and b!266835 (= (toChars!1317 (transformation!727 (h!9206 rules!1920))) (toChars!1317 (transformation!727 (rule!1312 (apply!757 (seqFromList!822 (t!37804 tokens!465)) 0))))) t!37901) tb!14845))

(declare-fun result!18424 () Bool)

(assert (= result!18424 result!18416))

(assert (=> d!77253 t!37901))

(declare-fun b_and!21149 () Bool)

(assert (= b_and!21131 (and (=> t!37901 result!18424) b_and!21149)))

(declare-fun m!335907 () Bool)

(assert (=> d!77253 m!335907))

(declare-fun m!335909 () Bool)

(assert (=> d!77253 m!335909))

(assert (=> b!267078 d!77253))

(declare-fun d!77255 () Bool)

(declare-fun c!50661 () Bool)

(assert (=> d!77255 (= c!50661 ((_ is Nil!3808) lt!109489))))

(declare-fun e!166337 () (InoxSet C!2824))

(assert (=> d!77255 (= (content!543 lt!109489) e!166337)))

(declare-fun b!267664 () Bool)

(assert (=> b!267664 (= e!166337 ((as const (Array C!2824 Bool)) false))))

(declare-fun b!267665 () Bool)

(assert (=> b!267665 (= e!166337 ((_ map or) (store ((as const (Array C!2824 Bool)) false) (h!9205 lt!109489) true) (content!543 (t!37802 lt!109489))))))

(assert (= (and d!77255 c!50661) b!267664))

(assert (= (and d!77255 (not c!50661)) b!267665))

(declare-fun m!335911 () Bool)

(assert (=> b!267665 m!335911))

(declare-fun m!335913 () Bool)

(assert (=> b!267665 m!335913))

(assert (=> d!77065 d!77255))

(declare-fun d!77257 () Bool)

(declare-fun c!50662 () Bool)

(assert (=> d!77257 (= c!50662 ((_ is Nil!3808) lt!109293))))

(declare-fun e!166338 () (InoxSet C!2824))

(assert (=> d!77257 (= (content!543 lt!109293) e!166338)))

(declare-fun b!267666 () Bool)

(assert (=> b!267666 (= e!166338 ((as const (Array C!2824 Bool)) false))))

(declare-fun b!267667 () Bool)

(assert (=> b!267667 (= e!166338 ((_ map or) (store ((as const (Array C!2824 Bool)) false) (h!9205 lt!109293) true) (content!543 (t!37802 lt!109293))))))

(assert (= (and d!77257 c!50662) b!267666))

(assert (= (and d!77257 (not c!50662)) b!267667))

(declare-fun m!335915 () Bool)

(assert (=> b!267667 m!335915))

(assert (=> b!267667 m!335747))

(assert (=> d!77065 d!77257))

(declare-fun d!77259 () Bool)

(declare-fun c!50663 () Bool)

(assert (=> d!77259 (= c!50663 ((_ is Nil!3808) lt!109298))))

(declare-fun e!166339 () (InoxSet C!2824))

(assert (=> d!77259 (= (content!543 lt!109298) e!166339)))

(declare-fun b!267668 () Bool)

(assert (=> b!267668 (= e!166339 ((as const (Array C!2824 Bool)) false))))

(declare-fun b!267669 () Bool)

(assert (=> b!267669 (= e!166339 ((_ map or) (store ((as const (Array C!2824 Bool)) false) (h!9205 lt!109298) true) (content!543 (t!37802 lt!109298))))))

(assert (= (and d!77259 c!50663) b!267668))

(assert (= (and d!77259 (not c!50663)) b!267669))

(declare-fun m!335917 () Bool)

(assert (=> b!267669 m!335917))

(declare-fun m!335919 () Bool)

(assert (=> b!267669 m!335919))

(assert (=> d!77065 d!77259))

(declare-fun d!77261 () Bool)

(declare-fun res!122557 () Bool)

(declare-fun e!166340 () Bool)

(assert (=> d!77261 (=> (not res!122557) (not e!166340))))

(assert (=> d!77261 (= res!122557 (not (isEmpty!2402 (originalCharacters!770 (h!9207 (t!37804 tokens!465))))))))

(assert (=> d!77261 (= (inv!4705 (h!9207 (t!37804 tokens!465))) e!166340)))

(declare-fun b!267670 () Bool)

(declare-fun res!122558 () Bool)

(assert (=> b!267670 (=> (not res!122558) (not e!166340))))

(assert (=> b!267670 (= res!122558 (= (originalCharacters!770 (h!9207 (t!37804 tokens!465))) (list!1547 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 (h!9207 (t!37804 tokens!465))))) (value!25035 (h!9207 (t!37804 tokens!465)))))))))

(declare-fun b!267671 () Bool)

(assert (=> b!267671 (= e!166340 (= (size!3025 (h!9207 (t!37804 tokens!465))) (size!3029 (originalCharacters!770 (h!9207 (t!37804 tokens!465))))))))

(assert (= (and d!77261 res!122557) b!267670))

(assert (= (and b!267670 res!122558) b!267671))

(declare-fun b_lambda!8411 () Bool)

(assert (=> (not b_lambda!8411) (not b!267670)))

(assert (=> b!267670 t!37877))

(declare-fun b_and!21151 () Bool)

(assert (= b_and!21149 (and (=> t!37877 result!18400) b_and!21151)))

(assert (=> b!267670 t!37879))

(declare-fun b_and!21153 () Bool)

(assert (= b_and!21147 (and (=> t!37879 result!18402) b_and!21153)))

(assert (=> b!267670 t!37875))

(declare-fun b_and!21155 () Bool)

(assert (= b_and!21145 (and (=> t!37875 result!18398) b_and!21155)))

(assert (=> b!267670 t!37873))

(declare-fun b_and!21157 () Bool)

(assert (= b_and!21141 (and (=> t!37873 result!18396) b_and!21157)))

(assert (=> b!267670 t!37881))

(declare-fun b_and!21159 () Bool)

(assert (= b_and!21143 (and (=> t!37881 result!18404) b_and!21159)))

(declare-fun m!335921 () Bool)

(assert (=> d!77261 m!335921))

(assert (=> b!267670 m!335509))

(assert (=> b!267670 m!335509))

(declare-fun m!335923 () Bool)

(assert (=> b!267670 m!335923))

(declare-fun m!335925 () Bool)

(assert (=> b!267671 m!335925))

(assert (=> b!267338 d!77261))

(declare-fun d!77263 () Bool)

(declare-fun e!166341 () Bool)

(assert (=> d!77263 e!166341))

(declare-fun res!122559 () Bool)

(assert (=> d!77263 (=> (not res!122559) (not e!166341))))

(assert (=> d!77263 (= res!122559 (appendAssocInst!60 (c!50467 e!165956) (c!50467 (ite c!50526 lt!109471 call!14509))))))

(declare-fun lt!109678 () BalanceConc!2560)

(assert (=> d!77263 (= lt!109678 (BalanceConc!2561 (++!991 (c!50467 e!165956) (c!50467 (ite c!50526 lt!109471 call!14509)))))))

(assert (=> d!77263 (= (++!990 e!165956 (ite c!50526 lt!109471 call!14509)) lt!109678)))

(declare-fun b!267675 () Bool)

(assert (=> b!267675 (= e!166341 (= (list!1547 lt!109678) (++!988 (list!1547 e!165956) (list!1547 (ite c!50526 lt!109471 call!14509)))))))

(declare-fun b!267673 () Bool)

(declare-fun res!122560 () Bool)

(assert (=> b!267673 (=> (not res!122560) (not e!166341))))

(assert (=> b!267673 (= res!122560 (<= (height!149 (++!991 (c!50467 e!165956) (c!50467 (ite c!50526 lt!109471 call!14509)))) (+ (max!0 (height!149 (c!50467 e!165956)) (height!149 (c!50467 (ite c!50526 lt!109471 call!14509)))) 1)))))

(declare-fun b!267674 () Bool)

(declare-fun res!122562 () Bool)

(assert (=> b!267674 (=> (not res!122562) (not e!166341))))

(assert (=> b!267674 (= res!122562 (>= (height!149 (++!991 (c!50467 e!165956) (c!50467 (ite c!50526 lt!109471 call!14509)))) (max!0 (height!149 (c!50467 e!165956)) (height!149 (c!50467 (ite c!50526 lt!109471 call!14509))))))))

(declare-fun b!267672 () Bool)

(declare-fun res!122561 () Bool)

(assert (=> b!267672 (=> (not res!122561) (not e!166341))))

(assert (=> b!267672 (= res!122561 (isBalanced!346 (++!991 (c!50467 e!165956) (c!50467 (ite c!50526 lt!109471 call!14509)))))))

(assert (= (and d!77263 res!122559) b!267672))

(assert (= (and b!267672 res!122561) b!267673))

(assert (= (and b!267673 res!122560) b!267674))

(assert (= (and b!267674 res!122562) b!267675))

(declare-fun m!335927 () Bool)

(assert (=> b!267673 m!335927))

(declare-fun m!335929 () Bool)

(assert (=> b!267673 m!335929))

(declare-fun m!335931 () Bool)

(assert (=> b!267673 m!335931))

(declare-fun m!335933 () Bool)

(assert (=> b!267673 m!335933))

(assert (=> b!267673 m!335927))

(assert (=> b!267673 m!335933))

(assert (=> b!267673 m!335931))

(declare-fun m!335935 () Bool)

(assert (=> b!267673 m!335935))

(assert (=> b!267672 m!335927))

(assert (=> b!267672 m!335927))

(declare-fun m!335937 () Bool)

(assert (=> b!267672 m!335937))

(declare-fun m!335939 () Bool)

(assert (=> d!77263 m!335939))

(assert (=> d!77263 m!335927))

(assert (=> b!267674 m!335927))

(assert (=> b!267674 m!335929))

(assert (=> b!267674 m!335931))

(assert (=> b!267674 m!335933))

(assert (=> b!267674 m!335927))

(assert (=> b!267674 m!335933))

(assert (=> b!267674 m!335931))

(assert (=> b!267674 m!335935))

(declare-fun m!335941 () Bool)

(assert (=> b!267675 m!335941))

(declare-fun m!335943 () Bool)

(assert (=> b!267675 m!335943))

(declare-fun m!335945 () Bool)

(assert (=> b!267675 m!335945))

(assert (=> b!267675 m!335943))

(assert (=> b!267675 m!335945))

(declare-fun m!335947 () Bool)

(assert (=> b!267675 m!335947))

(assert (=> bm!14506 d!77263))

(declare-fun b!267677 () Bool)

(declare-fun e!166343 () List!3818)

(assert (=> b!267677 (= e!166343 (Cons!3808 (h!9205 (list!1547 (charsOf!372 (h!9207 tokens!465)))) (++!988 (t!37802 (list!1547 (charsOf!372 (h!9207 tokens!465)))) lt!109554)))))

(declare-fun e!166342 () Bool)

(declare-fun b!267679 () Bool)

(declare-fun lt!109679 () List!3818)

(assert (=> b!267679 (= e!166342 (or (not (= lt!109554 Nil!3808)) (= lt!109679 (list!1547 (charsOf!372 (h!9207 tokens!465))))))))

(declare-fun b!267678 () Bool)

(declare-fun res!122564 () Bool)

(assert (=> b!267678 (=> (not res!122564) (not e!166342))))

(assert (=> b!267678 (= res!122564 (= (size!3029 lt!109679) (+ (size!3029 (list!1547 (charsOf!372 (h!9207 tokens!465)))) (size!3029 lt!109554))))))

(declare-fun b!267676 () Bool)

(assert (=> b!267676 (= e!166343 lt!109554)))

(declare-fun d!77265 () Bool)

(assert (=> d!77265 e!166342))

(declare-fun res!122563 () Bool)

(assert (=> d!77265 (=> (not res!122563) (not e!166342))))

(assert (=> d!77265 (= res!122563 (= (content!543 lt!109679) ((_ map or) (content!543 (list!1547 (charsOf!372 (h!9207 tokens!465)))) (content!543 lt!109554))))))

(assert (=> d!77265 (= lt!109679 e!166343)))

(declare-fun c!50664 () Bool)

(assert (=> d!77265 (= c!50664 ((_ is Nil!3808) (list!1547 (charsOf!372 (h!9207 tokens!465)))))))

(assert (=> d!77265 (= (++!988 (list!1547 (charsOf!372 (h!9207 tokens!465))) lt!109554) lt!109679)))

(assert (= (and d!77265 c!50664) b!267676))

(assert (= (and d!77265 (not c!50664)) b!267677))

(assert (= (and d!77265 res!122563) b!267678))

(assert (= (and b!267678 res!122564) b!267679))

(declare-fun m!335949 () Bool)

(assert (=> b!267677 m!335949))

(declare-fun m!335951 () Bool)

(assert (=> b!267678 m!335951))

(assert (=> b!267678 m!334569))

(declare-fun m!335953 () Bool)

(assert (=> b!267678 m!335953))

(declare-fun m!335955 () Bool)

(assert (=> b!267678 m!335955))

(declare-fun m!335957 () Bool)

(assert (=> d!77265 m!335957))

(assert (=> d!77265 m!334569))

(declare-fun m!335959 () Bool)

(assert (=> d!77265 m!335959))

(declare-fun m!335961 () Bool)

(assert (=> d!77265 m!335961))

(assert (=> b!267294 d!77265))

(declare-fun b!267738 () Bool)

(declare-fun res!122597 () Bool)

(declare-fun e!166376 () Bool)

(assert (=> b!267738 (=> (not res!122597) (not e!166376))))

(declare-fun lt!109704 () Option!803)

(declare-fun matchR!273 (Regex!951 List!3818) Bool)

(assert (=> b!267738 (= res!122597 (matchR!273 (regex!727 (rule!1312 (_1!2349 (get!1255 lt!109704)))) (list!1547 (charsOf!372 (_1!2349 (get!1255 lt!109704))))))))

(declare-fun b!267739 () Bool)

(declare-fun res!122595 () Bool)

(assert (=> b!267739 (=> (not res!122595) (not e!166376))))

(declare-fun apply!761 (TokenValueInjection!1270 BalanceConc!2560) TokenValue!749)

(assert (=> b!267739 (= res!122595 (= (value!25035 (_1!2349 (get!1255 lt!109704))) (apply!761 (transformation!727 (rule!1312 (_1!2349 (get!1255 lt!109704)))) (seqFromList!821 (originalCharacters!770 (_1!2349 (get!1255 lt!109704)))))))))

(declare-fun b!267740 () Bool)

(declare-fun e!166374 () Option!803)

(declare-fun call!14566 () Option!803)

(assert (=> b!267740 (= e!166374 call!14566)))

(declare-fun b!267741 () Bool)

(declare-fun res!122593 () Bool)

(assert (=> b!267741 (=> (not res!122593) (not e!166376))))

(assert (=> b!267741 (= res!122593 (= (++!988 (list!1547 (charsOf!372 (_1!2349 (get!1255 lt!109704)))) (_2!2349 (get!1255 lt!109704))) (++!988 (list!1547 (charsOf!372 (h!9207 tokens!465))) lt!109554)))))

(declare-fun b!267742 () Bool)

(declare-fun contains!713 (List!3819 Rule!1254) Bool)

(assert (=> b!267742 (= e!166376 (contains!713 rules!1920 (rule!1312 (_1!2349 (get!1255 lt!109704)))))))

(declare-fun b!267743 () Bool)

(declare-fun e!166375 () Bool)

(assert (=> b!267743 (= e!166375 e!166376)))

(declare-fun res!122599 () Bool)

(assert (=> b!267743 (=> (not res!122599) (not e!166376))))

(assert (=> b!267743 (= res!122599 (isDefined!644 lt!109704))))

(declare-fun b!267744 () Bool)

(declare-fun lt!109707 () Option!803)

(declare-fun lt!109706 () Option!803)

(assert (=> b!267744 (= e!166374 (ite (and ((_ is None!802) lt!109707) ((_ is None!802) lt!109706)) None!802 (ite ((_ is None!802) lt!109706) lt!109707 (ite ((_ is None!802) lt!109707) lt!109706 (ite (>= (size!3025 (_1!2349 (v!14665 lt!109707))) (size!3025 (_1!2349 (v!14665 lt!109706)))) lt!109707 lt!109706)))))))

(assert (=> b!267744 (= lt!109707 call!14566)))

(assert (=> b!267744 (= lt!109706 (maxPrefix!331 thiss!17480 (t!37803 rules!1920) (++!988 (list!1547 (charsOf!372 (h!9207 tokens!465))) lt!109554)))))

(declare-fun b!267745 () Bool)

(declare-fun res!122596 () Bool)

(assert (=> b!267745 (=> (not res!122596) (not e!166376))))

(assert (=> b!267745 (= res!122596 (= (list!1547 (charsOf!372 (_1!2349 (get!1255 lt!109704)))) (originalCharacters!770 (_1!2349 (get!1255 lt!109704)))))))

(declare-fun b!267746 () Bool)

(declare-fun res!122594 () Bool)

(assert (=> b!267746 (=> (not res!122594) (not e!166376))))

(assert (=> b!267746 (= res!122594 (< (size!3029 (_2!2349 (get!1255 lt!109704))) (size!3029 (++!988 (list!1547 (charsOf!372 (h!9207 tokens!465))) lt!109554))))))

(declare-fun bm!14561 () Bool)

(declare-fun maxPrefixOneRule!139 (LexerInterface!613 Rule!1254 List!3818) Option!803)

(assert (=> bm!14561 (= call!14566 (maxPrefixOneRule!139 thiss!17480 (h!9206 rules!1920) (++!988 (list!1547 (charsOf!372 (h!9207 tokens!465))) lt!109554)))))

(declare-fun d!77267 () Bool)

(assert (=> d!77267 e!166375))

(declare-fun res!122598 () Bool)

(assert (=> d!77267 (=> res!122598 e!166375)))

(declare-fun isEmpty!2408 (Option!803) Bool)

(assert (=> d!77267 (= res!122598 (isEmpty!2408 lt!109704))))

(assert (=> d!77267 (= lt!109704 e!166374)))

(declare-fun c!50680 () Bool)

(assert (=> d!77267 (= c!50680 (and ((_ is Cons!3809) rules!1920) ((_ is Nil!3809) (t!37803 rules!1920))))))

(declare-fun lt!109705 () Unit!4824)

(declare-fun lt!109703 () Unit!4824)

(assert (=> d!77267 (= lt!109705 lt!109703)))

(assert (=> d!77267 (isPrefix!394 (++!988 (list!1547 (charsOf!372 (h!9207 tokens!465))) lt!109554) (++!988 (list!1547 (charsOf!372 (h!9207 tokens!465))) lt!109554))))

(assert (=> d!77267 (= lt!109703 (lemmaIsPrefixRefl!204 (++!988 (list!1547 (charsOf!372 (h!9207 tokens!465))) lt!109554) (++!988 (list!1547 (charsOf!372 (h!9207 tokens!465))) lt!109554)))))

(assert (=> d!77267 (rulesValidInductive!199 thiss!17480 rules!1920)))

(assert (=> d!77267 (= (maxPrefix!331 thiss!17480 rules!1920 (++!988 (list!1547 (charsOf!372 (h!9207 tokens!465))) lt!109554)) lt!109704)))

(assert (= (and d!77267 c!50680) b!267740))

(assert (= (and d!77267 (not c!50680)) b!267744))

(assert (= (or b!267740 b!267744) bm!14561))

(assert (= (and d!77267 (not res!122598)) b!267743))

(assert (= (and b!267743 res!122599) b!267745))

(assert (= (and b!267745 res!122596) b!267746))

(assert (= (and b!267746 res!122594) b!267741))

(assert (= (and b!267741 res!122593) b!267739))

(assert (= (and b!267739 res!122595) b!267738))

(assert (= (and b!267738 res!122597) b!267742))

(assert (=> bm!14561 m!335379))

(declare-fun m!336049 () Bool)

(assert (=> bm!14561 m!336049))

(declare-fun m!336051 () Bool)

(assert (=> b!267739 m!336051))

(declare-fun m!336053 () Bool)

(assert (=> b!267739 m!336053))

(assert (=> b!267739 m!336053))

(declare-fun m!336055 () Bool)

(assert (=> b!267739 m!336055))

(assert (=> b!267744 m!335379))

(declare-fun m!336057 () Bool)

(assert (=> b!267744 m!336057))

(assert (=> b!267742 m!336051))

(declare-fun m!336059 () Bool)

(assert (=> b!267742 m!336059))

(assert (=> b!267745 m!336051))

(declare-fun m!336061 () Bool)

(assert (=> b!267745 m!336061))

(assert (=> b!267745 m!336061))

(declare-fun m!336063 () Bool)

(assert (=> b!267745 m!336063))

(assert (=> b!267741 m!336051))

(assert (=> b!267741 m!336061))

(assert (=> b!267741 m!336061))

(assert (=> b!267741 m!336063))

(assert (=> b!267741 m!336063))

(declare-fun m!336065 () Bool)

(assert (=> b!267741 m!336065))

(declare-fun m!336067 () Bool)

(assert (=> b!267743 m!336067))

(assert (=> b!267738 m!336051))

(assert (=> b!267738 m!336061))

(assert (=> b!267738 m!336061))

(assert (=> b!267738 m!336063))

(assert (=> b!267738 m!336063))

(declare-fun m!336069 () Bool)

(assert (=> b!267738 m!336069))

(assert (=> b!267746 m!336051))

(declare-fun m!336071 () Bool)

(assert (=> b!267746 m!336071))

(assert (=> b!267746 m!335379))

(declare-fun m!336073 () Bool)

(assert (=> b!267746 m!336073))

(declare-fun m!336075 () Bool)

(assert (=> d!77267 m!336075))

(assert (=> d!77267 m!335379))

(assert (=> d!77267 m!335379))

(declare-fun m!336077 () Bool)

(assert (=> d!77267 m!336077))

(assert (=> d!77267 m!335379))

(assert (=> d!77267 m!335379))

(declare-fun m!336079 () Bool)

(assert (=> d!77267 m!336079))

(assert (=> d!77267 m!335671))

(assert (=> b!267294 d!77267))

(assert (=> b!267294 d!77067))

(declare-fun d!77295 () Bool)

(assert (=> d!77295 (dynLambda!1945 lambda!9023 (h!9207 tokens!465))))

(declare-fun lt!109708 () Unit!4824)

(assert (=> d!77295 (= lt!109708 (choose!2438 tokens!465 lambda!9023 (h!9207 tokens!465)))))

(declare-fun e!166377 () Bool)

(assert (=> d!77295 e!166377))

(declare-fun res!122600 () Bool)

(assert (=> d!77295 (=> (not res!122600) (not e!166377))))

(assert (=> d!77295 (= res!122600 (forall!949 tokens!465 lambda!9023))))

(assert (=> d!77295 (= (forallContained!282 tokens!465 lambda!9023 (h!9207 tokens!465)) lt!109708)))

(declare-fun b!267747 () Bool)

(assert (=> b!267747 (= e!166377 (contains!711 tokens!465 (h!9207 tokens!465)))))

(assert (= (and d!77295 res!122600) b!267747))

(declare-fun b_lambda!8417 () Bool)

(assert (=> (not b_lambda!8417) (not d!77295)))

(declare-fun m!336081 () Bool)

(assert (=> d!77295 m!336081))

(declare-fun m!336083 () Bool)

(assert (=> d!77295 m!336083))

(declare-fun m!336085 () Bool)

(assert (=> d!77295 m!336085))

(declare-fun m!336087 () Bool)

(assert (=> b!267747 m!336087))

(assert (=> b!267294 d!77295))

(assert (=> b!267294 d!77057))

(assert (=> b!267294 d!77059))

(declare-fun b!267749 () Bool)

(declare-fun e!166379 () List!3818)

(assert (=> b!267749 (= e!166379 (Cons!3808 (h!9205 (t!37802 lt!109298)) (++!988 (t!37802 (t!37802 lt!109298)) lt!109292)))))

(declare-fun b!267751 () Bool)

(declare-fun e!166378 () Bool)

(declare-fun lt!109709 () List!3818)

(assert (=> b!267751 (= e!166378 (or (not (= lt!109292 Nil!3808)) (= lt!109709 (t!37802 lt!109298))))))

(declare-fun b!267750 () Bool)

(declare-fun res!122602 () Bool)

(assert (=> b!267750 (=> (not res!122602) (not e!166378))))

(assert (=> b!267750 (= res!122602 (= (size!3029 lt!109709) (+ (size!3029 (t!37802 lt!109298)) (size!3029 lt!109292))))))

(declare-fun b!267748 () Bool)

(assert (=> b!267748 (= e!166379 lt!109292)))

(declare-fun d!77297 () Bool)

(assert (=> d!77297 e!166378))

(declare-fun res!122601 () Bool)

(assert (=> d!77297 (=> (not res!122601) (not e!166378))))

(assert (=> d!77297 (= res!122601 (= (content!543 lt!109709) ((_ map or) (content!543 (t!37802 lt!109298)) (content!543 lt!109292))))))

(assert (=> d!77297 (= lt!109709 e!166379)))

(declare-fun c!50681 () Bool)

(assert (=> d!77297 (= c!50681 ((_ is Nil!3808) (t!37802 lt!109298)))))

(assert (=> d!77297 (= (++!988 (t!37802 lt!109298) lt!109292) lt!109709)))

(assert (= (and d!77297 c!50681) b!267748))

(assert (= (and d!77297 (not c!50681)) b!267749))

(assert (= (and d!77297 res!122601) b!267750))

(assert (= (and b!267750 res!122602) b!267751))

(declare-fun m!336089 () Bool)

(assert (=> b!267749 m!336089))

(declare-fun m!336091 () Bool)

(assert (=> b!267750 m!336091))

(declare-fun m!336093 () Bool)

(assert (=> b!267750 m!336093))

(assert (=> b!267750 m!334765))

(declare-fun m!336095 () Bool)

(assert (=> d!77297 m!336095))

(assert (=> d!77297 m!335919))

(assert (=> d!77297 m!334771))

(assert (=> b!266921 d!77297))

(declare-fun d!77299 () Bool)

(declare-fun e!166382 () Bool)

(assert (=> d!77299 e!166382))

(declare-fun res!122605 () Bool)

(assert (=> d!77299 (=> (not res!122605) (not e!166382))))

(declare-fun lt!109712 () BalanceConc!2560)

(assert (=> d!77299 (= res!122605 (= (list!1547 lt!109712) lt!109295))))

(declare-fun fromList!171 (List!3818) Conc!1276)

(assert (=> d!77299 (= lt!109712 (BalanceConc!2561 (fromList!171 lt!109295)))))

(assert (=> d!77299 (= (fromListB!311 lt!109295) lt!109712)))

(declare-fun b!267754 () Bool)

(assert (=> b!267754 (= e!166382 (isBalanced!346 (fromList!171 lt!109295)))))

(assert (= (and d!77299 res!122605) b!267754))

(declare-fun m!336097 () Bool)

(assert (=> d!77299 m!336097))

(declare-fun m!336099 () Bool)

(assert (=> d!77299 m!336099))

(assert (=> b!267754 m!336099))

(assert (=> b!267754 m!336099))

(declare-fun m!336101 () Bool)

(assert (=> b!267754 m!336101))

(assert (=> d!76983 d!77299))

(declare-fun d!77301 () Bool)

(declare-fun charsToBigInt!0 (List!3817 Int) Int)

(assert (=> d!77301 (= (inv!15 (value!25035 separatorToken!170)) (= (charsToBigInt!0 (text!5692 (value!25035 separatorToken!170)) 0) (value!25030 (value!25035 separatorToken!170))))))

(declare-fun bs!29486 () Bool)

(assert (= bs!29486 d!77301))

(declare-fun m!336103 () Bool)

(assert (=> bs!29486 m!336103))

(assert (=> b!267301 d!77301))

(declare-fun d!77303 () Bool)

(declare-fun lt!109715 () Int)

(assert (=> d!77303 (= lt!109715 (size!3031 (list!1550 lt!109288)))))

(declare-fun size!3033 (Conc!1277) Int)

(assert (=> d!77303 (= lt!109715 (size!3033 (c!50469 lt!109288)))))

(assert (=> d!77303 (= (size!3028 lt!109288) lt!109715)))

(declare-fun bs!29487 () Bool)

(assert (= bs!29487 d!77303))

(assert (=> bs!29487 m!335323))

(assert (=> bs!29487 m!335323))

(declare-fun m!336105 () Bool)

(assert (=> bs!29487 m!336105))

(declare-fun m!336107 () Bool)

(assert (=> bs!29487 m!336107))

(assert (=> b!267284 d!77303))

(declare-fun d!77305 () Bool)

(assert (=> d!77305 (= (list!1547 lt!109484) (list!1551 (c!50467 lt!109484)))))

(declare-fun bs!29488 () Bool)

(assert (= bs!29488 d!77305))

(declare-fun m!336109 () Bool)

(assert (=> bs!29488 m!336109))

(assert (=> d!77059 d!77305))

(declare-fun d!77307 () Bool)

(declare-fun c!50683 () Bool)

(assert (=> d!77307 (= c!50683 ((_ is Empty!1276) (c!50467 (seqFromList!821 lt!109295))))))

(declare-fun e!166383 () List!3818)

(assert (=> d!77307 (= (list!1551 (c!50467 (seqFromList!821 lt!109295))) e!166383)))

(declare-fun b!267755 () Bool)

(assert (=> b!267755 (= e!166383 Nil!3808)))

(declare-fun b!267756 () Bool)

(declare-fun e!166384 () List!3818)

(assert (=> b!267756 (= e!166383 e!166384)))

(declare-fun c!50684 () Bool)

(assert (=> b!267756 (= c!50684 ((_ is Leaf!1979) (c!50467 (seqFromList!821 lt!109295))))))

(declare-fun b!267757 () Bool)

(assert (=> b!267757 (= e!166384 (list!1553 (xs!3875 (c!50467 (seqFromList!821 lt!109295)))))))

(declare-fun b!267758 () Bool)

(assert (=> b!267758 (= e!166384 (++!988 (list!1551 (left!3130 (c!50467 (seqFromList!821 lt!109295)))) (list!1551 (right!3460 (c!50467 (seqFromList!821 lt!109295))))))))

(assert (= (and d!77307 c!50683) b!267755))

(assert (= (and d!77307 (not c!50683)) b!267756))

(assert (= (and b!267756 c!50684) b!267757))

(assert (= (and b!267756 (not c!50684)) b!267758))

(declare-fun m!336111 () Bool)

(assert (=> b!267757 m!336111))

(declare-fun m!336113 () Bool)

(assert (=> b!267758 m!336113))

(declare-fun m!336115 () Bool)

(assert (=> b!267758 m!336115))

(assert (=> b!267758 m!336113))

(assert (=> b!267758 m!336115))

(declare-fun m!336117 () Bool)

(assert (=> b!267758 m!336117))

(assert (=> d!76981 d!77307))

(declare-fun d!77309 () Bool)

(declare-fun lt!109716 () Int)

(assert (=> d!77309 (= lt!109716 (size!3031 (list!1550 (seqFromList!822 (t!37804 tokens!465)))))))

(assert (=> d!77309 (= lt!109716 (size!3033 (c!50469 (seqFromList!822 (t!37804 tokens!465)))))))

(assert (=> d!77309 (= (size!3028 (seqFromList!822 (t!37804 tokens!465))) lt!109716)))

(declare-fun bs!29489 () Bool)

(assert (= bs!29489 d!77309))

(assert (=> bs!29489 m!334547))

(assert (=> bs!29489 m!335063))

(assert (=> bs!29489 m!335063))

(declare-fun m!336119 () Bool)

(assert (=> bs!29489 m!336119))

(declare-fun m!336121 () Bool)

(assert (=> bs!29489 m!336121))

(assert (=> b!267086 d!77309))

(declare-fun b!267760 () Bool)

(declare-fun e!166386 () List!3818)

(assert (=> b!267760 (= e!166386 (Cons!3808 (h!9205 call!14537) (++!988 (t!37802 call!14537) lt!109554)))))

(declare-fun b!267762 () Bool)

(declare-fun e!166385 () Bool)

(declare-fun lt!109717 () List!3818)

(assert (=> b!267762 (= e!166385 (or (not (= lt!109554 Nil!3808)) (= lt!109717 call!14537)))))

(declare-fun b!267761 () Bool)

(declare-fun res!122607 () Bool)

(assert (=> b!267761 (=> (not res!122607) (not e!166385))))

(assert (=> b!267761 (= res!122607 (= (size!3029 lt!109717) (+ (size!3029 call!14537) (size!3029 lt!109554))))))

(declare-fun b!267759 () Bool)

(assert (=> b!267759 (= e!166386 lt!109554)))

(declare-fun d!77311 () Bool)

(assert (=> d!77311 e!166385))

(declare-fun res!122606 () Bool)

(assert (=> d!77311 (=> (not res!122606) (not e!166385))))

(assert (=> d!77311 (= res!122606 (= (content!543 lt!109717) ((_ map or) (content!543 call!14537) (content!543 lt!109554))))))

(assert (=> d!77311 (= lt!109717 e!166386)))

(declare-fun c!50685 () Bool)

(assert (=> d!77311 (= c!50685 ((_ is Nil!3808) call!14537))))

(assert (=> d!77311 (= (++!988 call!14537 lt!109554) lt!109717)))

(assert (= (and d!77311 c!50685) b!267759))

(assert (= (and d!77311 (not c!50685)) b!267760))

(assert (= (and d!77311 res!122606) b!267761))

(assert (= (and b!267761 res!122607) b!267762))

(declare-fun m!336123 () Bool)

(assert (=> b!267760 m!336123))

(declare-fun m!336125 () Bool)

(assert (=> b!267761 m!336125))

(declare-fun m!336127 () Bool)

(assert (=> b!267761 m!336127))

(assert (=> b!267761 m!335955))

(declare-fun m!336129 () Bool)

(assert (=> d!77311 m!336129))

(declare-fun m!336131 () Bool)

(assert (=> d!77311 m!336131))

(assert (=> d!77311 m!335961))

(assert (=> b!267292 d!77311))

(declare-fun e!166390 () List!3818)

(declare-fun b!267768 () Bool)

(assert (=> b!267768 (= e!166390 (Cons!3808 (h!9205 call!14526) (++!988 (t!37802 call!14526) (ite c!50556 lt!109534 call!14525))))))

(declare-fun e!166389 () Bool)

(declare-fun lt!109724 () List!3818)

(declare-fun b!267770 () Bool)

(assert (=> b!267770 (= e!166389 (or (not (= (ite c!50556 lt!109534 call!14525) Nil!3808)) (= lt!109724 call!14526)))))

(declare-fun b!267769 () Bool)

(declare-fun res!122609 () Bool)

(assert (=> b!267769 (=> (not res!122609) (not e!166389))))

(assert (=> b!267769 (= res!122609 (= (size!3029 lt!109724) (+ (size!3029 call!14526) (size!3029 (ite c!50556 lt!109534 call!14525)))))))

(declare-fun b!267767 () Bool)

(assert (=> b!267767 (= e!166390 (ite c!50556 lt!109534 call!14525))))

(declare-fun d!77313 () Bool)

(assert (=> d!77313 e!166389))

(declare-fun res!122608 () Bool)

(assert (=> d!77313 (=> (not res!122608) (not e!166389))))

(assert (=> d!77313 (= res!122608 (= (content!543 lt!109724) ((_ map or) (content!543 call!14526) (content!543 (ite c!50556 lt!109534 call!14525)))))))

(assert (=> d!77313 (= lt!109724 e!166390)))

(declare-fun c!50688 () Bool)

(assert (=> d!77313 (= c!50688 ((_ is Nil!3808) call!14526))))

(assert (=> d!77313 (= (++!988 call!14526 (ite c!50556 lt!109534 call!14525)) lt!109724)))

(assert (= (and d!77313 c!50688) b!267767))

(assert (= (and d!77313 (not c!50688)) b!267768))

(assert (= (and d!77313 res!122608) b!267769))

(assert (= (and b!267769 res!122609) b!267770))

(declare-fun m!336133 () Bool)

(assert (=> b!267768 m!336133))

(declare-fun m!336135 () Bool)

(assert (=> b!267769 m!336135))

(declare-fun m!336137 () Bool)

(assert (=> b!267769 m!336137))

(declare-fun m!336139 () Bool)

(assert (=> b!267769 m!336139))

(declare-fun m!336141 () Bool)

(assert (=> d!77313 m!336141))

(declare-fun m!336143 () Bool)

(assert (=> d!77313 m!336143))

(declare-fun m!336145 () Bool)

(assert (=> d!77313 m!336145))

(assert (=> bm!14523 d!77313))

(declare-fun d!77315 () Bool)

(declare-fun e!166391 () Bool)

(assert (=> d!77315 e!166391))

(declare-fun res!122610 () Bool)

(assert (=> d!77315 (=> (not res!122610) (not e!166391))))

(assert (=> d!77315 (= res!122610 (appendAssocInst!60 (c!50467 e!166091) (c!50467 (ite c!50566 lt!109544 call!14529))))))

(declare-fun lt!109729 () BalanceConc!2560)

(assert (=> d!77315 (= lt!109729 (BalanceConc!2561 (++!991 (c!50467 e!166091) (c!50467 (ite c!50566 lt!109544 call!14529)))))))

(assert (=> d!77315 (= (++!990 e!166091 (ite c!50566 lt!109544 call!14529)) lt!109729)))

(declare-fun b!267774 () Bool)

(assert (=> b!267774 (= e!166391 (= (list!1547 lt!109729) (++!988 (list!1547 e!166091) (list!1547 (ite c!50566 lt!109544 call!14529)))))))

(declare-fun b!267772 () Bool)

(declare-fun res!122611 () Bool)

(assert (=> b!267772 (=> (not res!122611) (not e!166391))))

(assert (=> b!267772 (= res!122611 (<= (height!149 (++!991 (c!50467 e!166091) (c!50467 (ite c!50566 lt!109544 call!14529)))) (+ (max!0 (height!149 (c!50467 e!166091)) (height!149 (c!50467 (ite c!50566 lt!109544 call!14529)))) 1)))))

(declare-fun b!267773 () Bool)

(declare-fun res!122613 () Bool)

(assert (=> b!267773 (=> (not res!122613) (not e!166391))))

(assert (=> b!267773 (= res!122613 (>= (height!149 (++!991 (c!50467 e!166091) (c!50467 (ite c!50566 lt!109544 call!14529)))) (max!0 (height!149 (c!50467 e!166091)) (height!149 (c!50467 (ite c!50566 lt!109544 call!14529))))))))

(declare-fun b!267771 () Bool)

(declare-fun res!122612 () Bool)

(assert (=> b!267771 (=> (not res!122612) (not e!166391))))

(assert (=> b!267771 (= res!122612 (isBalanced!346 (++!991 (c!50467 e!166091) (c!50467 (ite c!50566 lt!109544 call!14529)))))))

(assert (= (and d!77315 res!122610) b!267771))

(assert (= (and b!267771 res!122612) b!267772))

(assert (= (and b!267772 res!122611) b!267773))

(assert (= (and b!267773 res!122613) b!267774))

(declare-fun m!336147 () Bool)

(assert (=> b!267772 m!336147))

(declare-fun m!336149 () Bool)

(assert (=> b!267772 m!336149))

(declare-fun m!336151 () Bool)

(assert (=> b!267772 m!336151))

(declare-fun m!336153 () Bool)

(assert (=> b!267772 m!336153))

(assert (=> b!267772 m!336147))

(assert (=> b!267772 m!336153))

(assert (=> b!267772 m!336151))

(declare-fun m!336155 () Bool)

(assert (=> b!267772 m!336155))

(assert (=> b!267771 m!336147))

(assert (=> b!267771 m!336147))

(declare-fun m!336157 () Bool)

(assert (=> b!267771 m!336157))

(declare-fun m!336159 () Bool)

(assert (=> d!77315 m!336159))

(assert (=> d!77315 m!336147))

(assert (=> b!267773 m!336147))

(assert (=> b!267773 m!336149))

(assert (=> b!267773 m!336151))

(assert (=> b!267773 m!336153))

(assert (=> b!267773 m!336147))

(assert (=> b!267773 m!336153))

(assert (=> b!267773 m!336151))

(assert (=> b!267773 m!336155))

(declare-fun m!336161 () Bool)

(assert (=> b!267774 m!336161))

(declare-fun m!336163 () Bool)

(assert (=> b!267774 m!336163))

(declare-fun m!336165 () Bool)

(assert (=> b!267774 m!336165))

(assert (=> b!267774 m!336163))

(assert (=> b!267774 m!336165))

(declare-fun m!336167 () Bool)

(assert (=> b!267774 m!336167))

(assert (=> bm!14526 d!77315))

(declare-fun d!77317 () Bool)

(assert (=> d!77317 true))

(declare-fun order!2921 () Int)

(declare-fun lambda!9038 () Int)

(declare-fun dynLambda!1948 (Int Int) Int)

(assert (=> d!77317 (< (dynLambda!1943 order!2917 (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465))))) (dynLambda!1948 order!2921 lambda!9038))))

(assert (=> d!77317 true))

(assert (=> d!77317 (< (dynLambda!1941 order!2913 (toValue!1458 (transformation!727 (rule!1312 (h!9207 tokens!465))))) (dynLambda!1948 order!2921 lambda!9038))))

(declare-fun Forall!170 (Int) Bool)

(assert (=> d!77317 (= (semiInverseModEq!255 (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465)))) (toValue!1458 (transformation!727 (rule!1312 (h!9207 tokens!465))))) (Forall!170 lambda!9038))))

(declare-fun bs!29490 () Bool)

(assert (= bs!29490 d!77317))

(declare-fun m!336169 () Bool)

(assert (=> bs!29490 m!336169))

(assert (=> d!76993 d!77317))

(declare-fun d!77319 () Bool)

(declare-fun lt!109730 () Int)

(assert (=> d!77319 (>= lt!109730 0)))

(declare-fun e!166396 () Int)

(assert (=> d!77319 (= lt!109730 e!166396)))

(declare-fun c!50689 () Bool)

(assert (=> d!77319 (= c!50689 ((_ is Nil!3808) lt!109489))))

(assert (=> d!77319 (= (size!3029 lt!109489) lt!109730)))

(declare-fun b!267793 () Bool)

(assert (=> b!267793 (= e!166396 0)))

(declare-fun b!267794 () Bool)

(assert (=> b!267794 (= e!166396 (+ 1 (size!3029 (t!37802 lt!109489))))))

(assert (= (and d!77319 c!50689) b!267793))

(assert (= (and d!77319 (not c!50689)) b!267794))

(declare-fun m!336171 () Bool)

(assert (=> b!267794 m!336171))

(assert (=> b!267112 d!77319))

(assert (=> b!267112 d!77159))

(declare-fun d!77321 () Bool)

(declare-fun lt!109731 () Int)

(assert (=> d!77321 (>= lt!109731 0)))

(declare-fun e!166397 () Int)

(assert (=> d!77321 (= lt!109731 e!166397)))

(declare-fun c!50690 () Bool)

(assert (=> d!77321 (= c!50690 ((_ is Nil!3808) lt!109298))))

(assert (=> d!77321 (= (size!3029 lt!109298) lt!109731)))

(declare-fun b!267795 () Bool)

(assert (=> b!267795 (= e!166397 0)))

(declare-fun b!267796 () Bool)

(assert (=> b!267796 (= e!166397 (+ 1 (size!3029 (t!37802 lt!109298))))))

(assert (= (and d!77321 c!50690) b!267795))

(assert (= (and d!77321 (not c!50690)) b!267796))

(assert (=> b!267796 m!336093))

(assert (=> b!267112 d!77321))

(declare-fun d!77323 () Bool)

(declare-fun lt!109737 () BalanceConc!2560)

(assert (=> d!77323 (= (list!1547 lt!109737) (printList!289 thiss!17480 (list!1550 (singletonSeq!273 (h!9207 (t!37804 tokens!465))))))))

(assert (=> d!77323 (= lt!109737 (printTailRec!301 thiss!17480 (singletonSeq!273 (h!9207 (t!37804 tokens!465))) 0 (BalanceConc!2561 Empty!1276)))))

(assert (=> d!77323 (= (print!338 thiss!17480 (singletonSeq!273 (h!9207 (t!37804 tokens!465)))) lt!109737)))

(declare-fun bs!29491 () Bool)

(assert (= bs!29491 d!77323))

(declare-fun m!336173 () Bool)

(assert (=> bs!29491 m!336173))

(assert (=> bs!29491 m!335275))

(declare-fun m!336175 () Bool)

(assert (=> bs!29491 m!336175))

(assert (=> bs!29491 m!336175))

(declare-fun m!336177 () Bool)

(assert (=> bs!29491 m!336177))

(assert (=> bs!29491 m!335275))

(assert (=> bs!29491 m!335279))

(assert (=> b!267252 d!77323))

(declare-fun d!77325 () Bool)

(declare-fun e!166401 () Bool)

(assert (=> d!77325 e!166401))

(declare-fun res!122635 () Bool)

(assert (=> d!77325 (=> (not res!122635) (not e!166401))))

(declare-fun lt!109738 () BalanceConc!2562)

(assert (=> d!77325 (= res!122635 (= (list!1550 lt!109738) (Cons!3810 (h!9207 (t!37804 tokens!465)) Nil!3810)))))

(assert (=> d!77325 (= lt!109738 (singleton!109 (h!9207 (t!37804 tokens!465))))))

(assert (=> d!77325 (= (singletonSeq!273 (h!9207 (t!37804 tokens!465))) lt!109738)))

(declare-fun b!267806 () Bool)

(assert (=> b!267806 (= e!166401 (isBalanced!344 (c!50469 lt!109738)))))

(assert (= (and d!77325 res!122635) b!267806))

(declare-fun m!336179 () Bool)

(assert (=> d!77325 m!336179))

(declare-fun m!336181 () Bool)

(assert (=> d!77325 m!336181))

(declare-fun m!336183 () Bool)

(assert (=> b!267806 m!336183))

(assert (=> b!267252 d!77325))

(declare-fun d!77327 () Bool)

(declare-fun lt!109742 () BalanceConc!2560)

(assert (=> d!77327 (= (list!1547 lt!109742) (printListTailRec!125 thiss!17480 (dropList!160 (singletonSeq!273 (h!9207 (t!37804 tokens!465))) 0) (list!1547 (BalanceConc!2561 Empty!1276))))))

(declare-fun e!166403 () BalanceConc!2560)

(assert (=> d!77327 (= lt!109742 e!166403)))

(declare-fun c!50692 () Bool)

(assert (=> d!77327 (= c!50692 (>= 0 (size!3028 (singletonSeq!273 (h!9207 (t!37804 tokens!465))))))))

(declare-fun e!166402 () Bool)

(assert (=> d!77327 e!166402))

(declare-fun res!122636 () Bool)

(assert (=> d!77327 (=> (not res!122636) (not e!166402))))

(assert (=> d!77327 (= res!122636 (>= 0 0))))

(assert (=> d!77327 (= (printTailRec!301 thiss!17480 (singletonSeq!273 (h!9207 (t!37804 tokens!465))) 0 (BalanceConc!2561 Empty!1276)) lt!109742)))

(declare-fun b!267807 () Bool)

(assert (=> b!267807 (= e!166402 (<= 0 (size!3028 (singletonSeq!273 (h!9207 (t!37804 tokens!465))))))))

(declare-fun b!267808 () Bool)

(assert (=> b!267808 (= e!166403 (BalanceConc!2561 Empty!1276))))

(declare-fun b!267809 () Bool)

(assert (=> b!267809 (= e!166403 (printTailRec!301 thiss!17480 (singletonSeq!273 (h!9207 (t!37804 tokens!465))) (+ 0 1) (++!990 (BalanceConc!2561 Empty!1276) (charsOf!372 (apply!757 (singletonSeq!273 (h!9207 (t!37804 tokens!465))) 0)))))))

(declare-fun lt!109741 () List!3820)

(assert (=> b!267809 (= lt!109741 (list!1550 (singletonSeq!273 (h!9207 (t!37804 tokens!465)))))))

(declare-fun lt!109740 () Unit!4824)

(assert (=> b!267809 (= lt!109740 (lemmaDropApply!200 lt!109741 0))))

(assert (=> b!267809 (= (head!884 (drop!213 lt!109741 0)) (apply!758 lt!109741 0))))

(declare-fun lt!109745 () Unit!4824)

(assert (=> b!267809 (= lt!109745 lt!109740)))

(declare-fun lt!109743 () List!3820)

(assert (=> b!267809 (= lt!109743 (list!1550 (singletonSeq!273 (h!9207 (t!37804 tokens!465)))))))

(declare-fun lt!109739 () Unit!4824)

(assert (=> b!267809 (= lt!109739 (lemmaDropTail!192 lt!109743 0))))

(assert (=> b!267809 (= (tail!474 (drop!213 lt!109743 0)) (drop!213 lt!109743 (+ 0 1)))))

(declare-fun lt!109744 () Unit!4824)

(assert (=> b!267809 (= lt!109744 lt!109739)))

(assert (= (and d!77327 res!122636) b!267807))

(assert (= (and d!77327 c!50692) b!267808))

(assert (= (and d!77327 (not c!50692)) b!267809))

(assert (=> d!77327 m!335275))

(declare-fun m!336185 () Bool)

(assert (=> d!77327 m!336185))

(assert (=> d!77327 m!334705))

(assert (=> d!77327 m!336185))

(assert (=> d!77327 m!334705))

(declare-fun m!336187 () Bool)

(assert (=> d!77327 m!336187))

(assert (=> d!77327 m!335275))

(declare-fun m!336191 () Bool)

(assert (=> d!77327 m!336191))

(declare-fun m!336193 () Bool)

(assert (=> d!77327 m!336193))

(assert (=> b!267807 m!335275))

(assert (=> b!267807 m!336191))

(declare-fun m!336197 () Bool)

(assert (=> b!267809 m!336197))

(declare-fun m!336199 () Bool)

(assert (=> b!267809 m!336199))

(assert (=> b!267809 m!336197))

(declare-fun m!336201 () Bool)

(assert (=> b!267809 m!336201))

(declare-fun m!336205 () Bool)

(assert (=> b!267809 m!336205))

(declare-fun m!336209 () Bool)

(assert (=> b!267809 m!336209))

(declare-fun m!336213 () Bool)

(assert (=> b!267809 m!336213))

(assert (=> b!267809 m!335275))

(declare-fun m!336217 () Bool)

(assert (=> b!267809 m!336217))

(assert (=> b!267809 m!336217))

(declare-fun m!336221 () Bool)

(assert (=> b!267809 m!336221))

(assert (=> b!267809 m!336209))

(declare-fun m!336223 () Bool)

(assert (=> b!267809 m!336223))

(declare-fun m!336225 () Bool)

(assert (=> b!267809 m!336225))

(assert (=> b!267809 m!335275))

(assert (=> b!267809 m!336175))

(assert (=> b!267809 m!335275))

(declare-fun m!336229 () Bool)

(assert (=> b!267809 m!336229))

(declare-fun m!336231 () Bool)

(assert (=> b!267809 m!336231))

(assert (=> b!267809 m!336221))

(assert (=> b!267809 m!336229))

(assert (=> b!267252 d!77327))

(declare-fun d!77329 () Bool)

(assert (=> d!77329 (isDefined!644 (maxPrefix!331 thiss!17480 rules!1920 (++!988 call!14525 lt!109534)))))

(declare-fun lt!109864 () Unit!4824)

(declare-fun e!166487 () Unit!4824)

(assert (=> d!77329 (= lt!109864 e!166487)))

(declare-fun c!50742 () Bool)

(assert (=> d!77329 (= c!50742 (isEmpty!2408 (maxPrefix!331 thiss!17480 rules!1920 (++!988 call!14525 lt!109534))))))

(declare-fun lt!109860 () Unit!4824)

(declare-fun lt!109851 () Unit!4824)

(assert (=> d!77329 (= lt!109860 lt!109851)))

(declare-fun e!166488 () Bool)

(assert (=> d!77329 e!166488))

(declare-fun res!122693 () Bool)

(assert (=> d!77329 (=> (not res!122693) (not e!166488))))

(declare-fun lt!109852 () Token!1198)

(declare-datatypes ((Option!804 0))(
  ( (None!803) (Some!803 (v!14666 Rule!1254)) )
))
(declare-fun isDefined!646 (Option!804) Bool)

(declare-fun getRuleFromTag!121 (LexerInterface!613 List!3819 String!4825) Option!804)

(assert (=> d!77329 (= res!122693 (isDefined!646 (getRuleFromTag!121 thiss!17480 rules!1920 (tag!937 (rule!1312 lt!109852)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!121 (LexerInterface!613 List!3819 List!3818 Token!1198) Unit!4824)

(assert (=> d!77329 (= lt!109851 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!121 thiss!17480 rules!1920 call!14525 lt!109852))))

(declare-fun lt!109855 () Unit!4824)

(declare-fun lt!109863 () Unit!4824)

(assert (=> d!77329 (= lt!109855 lt!109863)))

(declare-fun lt!109858 () List!3818)

(assert (=> d!77329 (isPrefix!394 lt!109858 (++!988 call!14525 lt!109534))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!53 (List!3818 List!3818 List!3818) Unit!4824)

(assert (=> d!77329 (= lt!109863 (lemmaPrefixStaysPrefixWhenAddingToSuffix!53 lt!109858 call!14525 lt!109534))))

(assert (=> d!77329 (= lt!109858 (list!1547 (charsOf!372 lt!109852)))))

(declare-fun lt!109853 () Unit!4824)

(declare-fun lt!109861 () Unit!4824)

(assert (=> d!77329 (= lt!109853 lt!109861)))

(declare-fun lt!109859 () List!3818)

(declare-fun lt!109854 () List!3818)

(assert (=> d!77329 (isPrefix!394 lt!109859 (++!988 lt!109859 lt!109854))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!289 (List!3818 List!3818) Unit!4824)

(assert (=> d!77329 (= lt!109861 (lemmaConcatTwoListThenFirstIsPrefix!289 lt!109859 lt!109854))))

(assert (=> d!77329 (= lt!109854 (_2!2349 (get!1255 (maxPrefix!331 thiss!17480 rules!1920 call!14525))))))

(assert (=> d!77329 (= lt!109859 (list!1547 (charsOf!372 lt!109852)))))

(assert (=> d!77329 (= lt!109852 (head!884 (list!1550 (_1!2346 (lex!404 thiss!17480 rules!1920 (seqFromList!821 call!14525))))))))

(assert (=> d!77329 (not (isEmpty!2398 rules!1920))))

(assert (=> d!77329 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!108 thiss!17480 rules!1920 call!14525 lt!109534) lt!109864)))

(declare-fun b!267966 () Bool)

(declare-fun Unit!4846 () Unit!4824)

(assert (=> b!267966 (= e!166487 Unit!4846)))

(declare-fun lt!109850 () List!3818)

(assert (=> b!267966 (= lt!109850 (++!988 call!14525 lt!109534))))

(declare-fun lt!109857 () Unit!4824)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!53 (LexerInterface!613 Rule!1254 List!3819 List!3818) Unit!4824)

(assert (=> b!267966 (= lt!109857 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!53 thiss!17480 (rule!1312 lt!109852) rules!1920 lt!109850))))

(assert (=> b!267966 (isEmpty!2408 (maxPrefixOneRule!139 thiss!17480 (rule!1312 lt!109852) lt!109850))))

(declare-fun lt!109856 () Unit!4824)

(assert (=> b!267966 (= lt!109856 lt!109857)))

(declare-fun lt!109848 () List!3818)

(assert (=> b!267966 (= lt!109848 (list!1547 (charsOf!372 lt!109852)))))

(declare-fun lt!109849 () Unit!4824)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!53 (LexerInterface!613 Rule!1254 List!3818 List!3818) Unit!4824)

(assert (=> b!267966 (= lt!109849 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!53 thiss!17480 (rule!1312 lt!109852) lt!109848 (++!988 call!14525 lt!109534)))))

(assert (=> b!267966 (not (matchR!273 (regex!727 (rule!1312 lt!109852)) lt!109848))))

(declare-fun lt!109862 () Unit!4824)

(assert (=> b!267966 (= lt!109862 lt!109849)))

(assert (=> b!267966 false))

(declare-fun b!267967 () Bool)

(declare-fun Unit!4847 () Unit!4824)

(assert (=> b!267967 (= e!166487 Unit!4847)))

(declare-fun b!267965 () Bool)

(declare-fun get!1257 (Option!804) Rule!1254)

(assert (=> b!267965 (= e!166488 (= (rule!1312 lt!109852) (get!1257 (getRuleFromTag!121 thiss!17480 rules!1920 (tag!937 (rule!1312 lt!109852))))))))

(declare-fun b!267964 () Bool)

(declare-fun res!122694 () Bool)

(assert (=> b!267964 (=> (not res!122694) (not e!166488))))

(assert (=> b!267964 (= res!122694 (matchR!273 (regex!727 (get!1257 (getRuleFromTag!121 thiss!17480 rules!1920 (tag!937 (rule!1312 lt!109852))))) (list!1547 (charsOf!372 lt!109852))))))

(assert (= (and d!77329 res!122693) b!267964))

(assert (= (and b!267964 res!122694) b!267965))

(assert (= (and d!77329 c!50742) b!267966))

(assert (= (and d!77329 (not c!50742)) b!267967))

(declare-fun m!336549 () Bool)

(assert (=> d!77329 m!336549))

(declare-fun m!336551 () Bool)

(assert (=> d!77329 m!336551))

(declare-fun m!336553 () Bool)

(assert (=> d!77329 m!336553))

(declare-fun m!336555 () Bool)

(assert (=> d!77329 m!336555))

(declare-fun m!336557 () Bool)

(assert (=> d!77329 m!336557))

(declare-fun m!336559 () Bool)

(assert (=> d!77329 m!336559))

(declare-fun m!336561 () Bool)

(assert (=> d!77329 m!336561))

(declare-fun m!336563 () Bool)

(assert (=> d!77329 m!336563))

(declare-fun m!336565 () Bool)

(assert (=> d!77329 m!336565))

(declare-fun m!336567 () Bool)

(assert (=> d!77329 m!336567))

(declare-fun m!336569 () Bool)

(assert (=> d!77329 m!336569))

(declare-fun m!336571 () Bool)

(assert (=> d!77329 m!336571))

(declare-fun m!336573 () Bool)

(assert (=> d!77329 m!336573))

(assert (=> d!77329 m!336549))

(declare-fun m!336575 () Bool)

(assert (=> d!77329 m!336575))

(assert (=> d!77329 m!336567))

(assert (=> d!77329 m!336549))

(declare-fun m!336577 () Bool)

(assert (=> d!77329 m!336577))

(declare-fun m!336579 () Bool)

(assert (=> d!77329 m!336579))

(assert (=> d!77329 m!336563))

(assert (=> d!77329 m!336567))

(assert (=> d!77329 m!336557))

(assert (=> d!77329 m!336577))

(declare-fun m!336581 () Bool)

(assert (=> d!77329 m!336581))

(assert (=> d!77329 m!334541))

(declare-fun m!336583 () Bool)

(assert (=> d!77329 m!336583))

(assert (=> d!77329 m!336561))

(declare-fun m!336585 () Bool)

(assert (=> d!77329 m!336585))

(assert (=> d!77329 m!336571))

(declare-fun m!336587 () Bool)

(assert (=> d!77329 m!336587))

(assert (=> d!77329 m!336553))

(declare-fun m!336589 () Bool)

(assert (=> b!267966 m!336589))

(assert (=> b!267966 m!336563))

(assert (=> b!267966 m!336563))

(assert (=> b!267966 m!336565))

(declare-fun m!336591 () Bool)

(assert (=> b!267966 m!336591))

(assert (=> b!267966 m!336567))

(assert (=> b!267966 m!336591))

(declare-fun m!336593 () Bool)

(assert (=> b!267966 m!336593))

(declare-fun m!336595 () Bool)

(assert (=> b!267966 m!336595))

(assert (=> b!267966 m!336567))

(declare-fun m!336597 () Bool)

(assert (=> b!267966 m!336597))

(assert (=> b!267965 m!336571))

(assert (=> b!267965 m!336571))

(declare-fun m!336599 () Bool)

(assert (=> b!267965 m!336599))

(assert (=> b!267964 m!336563))

(assert (=> b!267964 m!336563))

(assert (=> b!267964 m!336565))

(assert (=> b!267964 m!336565))

(declare-fun m!336601 () Bool)

(assert (=> b!267964 m!336601))

(assert (=> b!267964 m!336571))

(assert (=> b!267964 m!336571))

(assert (=> b!267964 m!336599))

(assert (=> b!267252 d!77329))

(declare-fun d!77431 () Bool)

(declare-fun lt!109865 () BalanceConc!2560)

(assert (=> d!77431 (= (list!1547 lt!109865) (originalCharacters!770 call!14530))))

(assert (=> d!77431 (= lt!109865 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 call!14530))) (value!25035 call!14530)))))

(assert (=> d!77431 (= (charsOf!372 call!14530) lt!109865)))

(declare-fun b_lambda!8427 () Bool)

(assert (=> (not b_lambda!8427) (not d!77431)))

(declare-fun t!37944 () Bool)

(declare-fun tb!14887 () Bool)

(assert (=> (and b!267341 (= (toChars!1317 (transformation!727 (rule!1312 (h!9207 (t!37804 tokens!465))))) (toChars!1317 (transformation!727 (rule!1312 call!14530)))) t!37944) tb!14887))

(declare-fun b!267968 () Bool)

(declare-fun e!166489 () Bool)

(declare-fun tp!101981 () Bool)

(assert (=> b!267968 (= e!166489 (and (inv!4709 (c!50467 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 call!14530))) (value!25035 call!14530)))) tp!101981))))

(declare-fun result!18466 () Bool)

(assert (=> tb!14887 (= result!18466 (and (inv!4710 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 call!14530))) (value!25035 call!14530))) e!166489))))

(assert (= tb!14887 b!267968))

(declare-fun m!336603 () Bool)

(assert (=> b!267968 m!336603))

(declare-fun m!336605 () Bool)

(assert (=> tb!14887 m!336605))

(assert (=> d!77431 t!37944))

(declare-fun b_and!21201 () Bool)

(assert (= b_and!21157 (and (=> t!37944 result!18466) b_and!21201)))

(declare-fun t!37946 () Bool)

(declare-fun tb!14889 () Bool)

(assert (=> (and b!266827 (= (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465)))) (toChars!1317 (transformation!727 (rule!1312 call!14530)))) t!37946) tb!14889))

(declare-fun result!18468 () Bool)

(assert (= result!18468 result!18466))

(assert (=> d!77431 t!37946))

(declare-fun b_and!21203 () Bool)

(assert (= b_and!21159 (and (=> t!37946 result!18468) b_and!21203)))

(declare-fun tb!14891 () Bool)

(declare-fun t!37948 () Bool)

(assert (=> (and b!266835 (= (toChars!1317 (transformation!727 (h!9206 rules!1920))) (toChars!1317 (transformation!727 (rule!1312 call!14530)))) t!37948) tb!14891))

(declare-fun result!18470 () Bool)

(assert (= result!18470 result!18466))

(assert (=> d!77431 t!37948))

(declare-fun b_and!21205 () Bool)

(assert (= b_and!21151 (and (=> t!37948 result!18470) b_and!21205)))

(declare-fun t!37950 () Bool)

(declare-fun tb!14893 () Bool)

(assert (=> (and b!266822 (= (toChars!1317 (transformation!727 (rule!1312 separatorToken!170))) (toChars!1317 (transformation!727 (rule!1312 call!14530)))) t!37950) tb!14893))

(declare-fun result!18472 () Bool)

(assert (= result!18472 result!18466))

(assert (=> d!77431 t!37950))

(declare-fun b_and!21207 () Bool)

(assert (= b_and!21153 (and (=> t!37950 result!18472) b_and!21207)))

(declare-fun tb!14895 () Bool)

(declare-fun t!37952 () Bool)

(assert (=> (and b!267380 (= (toChars!1317 (transformation!727 (h!9206 (t!37803 rules!1920)))) (toChars!1317 (transformation!727 (rule!1312 call!14530)))) t!37952) tb!14895))

(declare-fun result!18474 () Bool)

(assert (= result!18474 result!18466))

(assert (=> d!77431 t!37952))

(declare-fun b_and!21209 () Bool)

(assert (= b_and!21155 (and (=> t!37952 result!18474) b_and!21209)))

(declare-fun m!336607 () Bool)

(assert (=> d!77431 m!336607))

(declare-fun m!336609 () Bool)

(assert (=> d!77431 m!336609))

(assert (=> b!267280 d!77431))

(declare-fun bs!29509 () Bool)

(declare-fun d!77433 () Bool)

(assert (= bs!29509 (and d!77433 d!77317)))

(declare-fun lambda!9042 () Int)

(assert (=> bs!29509 (= (and (= (toChars!1317 (transformation!727 (rule!1312 separatorToken!170))) (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465))))) (= (toValue!1458 (transformation!727 (rule!1312 separatorToken!170))) (toValue!1458 (transformation!727 (rule!1312 (h!9207 tokens!465)))))) (= lambda!9042 lambda!9038))))

(assert (=> d!77433 true))

(assert (=> d!77433 (< (dynLambda!1943 order!2917 (toChars!1317 (transformation!727 (rule!1312 separatorToken!170)))) (dynLambda!1948 order!2921 lambda!9042))))

(assert (=> d!77433 true))

(assert (=> d!77433 (< (dynLambda!1941 order!2913 (toValue!1458 (transformation!727 (rule!1312 separatorToken!170)))) (dynLambda!1948 order!2921 lambda!9042))))

(assert (=> d!77433 (= (semiInverseModEq!255 (toChars!1317 (transformation!727 (rule!1312 separatorToken!170))) (toValue!1458 (transformation!727 (rule!1312 separatorToken!170)))) (Forall!170 lambda!9042))))

(declare-fun bs!29510 () Bool)

(assert (= bs!29510 d!77433))

(declare-fun m!336611 () Bool)

(assert (=> bs!29510 m!336611))

(assert (=> d!76987 d!77433))

(declare-fun d!77435 () Bool)

(assert (=> d!77435 (= (isEmpty!2402 (originalCharacters!770 (h!9207 tokens!465))) ((_ is Nil!3808) (originalCharacters!770 (h!9207 tokens!465))))))

(assert (=> d!76975 d!77435))

(declare-fun d!77437 () Bool)

(declare-fun lt!109866 () BalanceConc!2560)

(assert (=> d!77437 (= (list!1547 lt!109866) (originalCharacters!770 call!14510))))

(assert (=> d!77437 (= lt!109866 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 call!14510))) (value!25035 call!14510)))))

(assert (=> d!77437 (= (charsOf!372 call!14510) lt!109866)))

(declare-fun b_lambda!8429 () Bool)

(assert (=> (not b_lambda!8429) (not d!77437)))

(declare-fun t!37954 () Bool)

(declare-fun tb!14897 () Bool)

(assert (=> (and b!266827 (= (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465)))) (toChars!1317 (transformation!727 (rule!1312 call!14510)))) t!37954) tb!14897))

(declare-fun b!267969 () Bool)

(declare-fun e!166490 () Bool)

(declare-fun tp!101982 () Bool)

(assert (=> b!267969 (= e!166490 (and (inv!4709 (c!50467 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 call!14510))) (value!25035 call!14510)))) tp!101982))))

(declare-fun result!18476 () Bool)

(assert (=> tb!14897 (= result!18476 (and (inv!4710 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 call!14510))) (value!25035 call!14510))) e!166490))))

(assert (= tb!14897 b!267969))

(declare-fun m!336613 () Bool)

(assert (=> b!267969 m!336613))

(declare-fun m!336615 () Bool)

(assert (=> tb!14897 m!336615))

(assert (=> d!77437 t!37954))

(declare-fun b_and!21211 () Bool)

(assert (= b_and!21203 (and (=> t!37954 result!18476) b_and!21211)))

(declare-fun t!37956 () Bool)

(declare-fun tb!14899 () Bool)

(assert (=> (and b!266835 (= (toChars!1317 (transformation!727 (h!9206 rules!1920))) (toChars!1317 (transformation!727 (rule!1312 call!14510)))) t!37956) tb!14899))

(declare-fun result!18478 () Bool)

(assert (= result!18478 result!18476))

(assert (=> d!77437 t!37956))

(declare-fun b_and!21213 () Bool)

(assert (= b_and!21205 (and (=> t!37956 result!18478) b_and!21213)))

(declare-fun t!37958 () Bool)

(declare-fun tb!14901 () Bool)

(assert (=> (and b!267380 (= (toChars!1317 (transformation!727 (h!9206 (t!37803 rules!1920)))) (toChars!1317 (transformation!727 (rule!1312 call!14510)))) t!37958) tb!14901))

(declare-fun result!18480 () Bool)

(assert (= result!18480 result!18476))

(assert (=> d!77437 t!37958))

(declare-fun b_and!21215 () Bool)

(assert (= b_and!21209 (and (=> t!37958 result!18480) b_and!21215)))

(declare-fun tb!14903 () Bool)

(declare-fun t!37960 () Bool)

(assert (=> (and b!266822 (= (toChars!1317 (transformation!727 (rule!1312 separatorToken!170))) (toChars!1317 (transformation!727 (rule!1312 call!14510)))) t!37960) tb!14903))

(declare-fun result!18482 () Bool)

(assert (= result!18482 result!18476))

(assert (=> d!77437 t!37960))

(declare-fun b_and!21217 () Bool)

(assert (= b_and!21207 (and (=> t!37960 result!18482) b_and!21217)))

(declare-fun t!37962 () Bool)

(declare-fun tb!14905 () Bool)

(assert (=> (and b!267341 (= (toChars!1317 (transformation!727 (rule!1312 (h!9207 (t!37804 tokens!465))))) (toChars!1317 (transformation!727 (rule!1312 call!14510)))) t!37962) tb!14905))

(declare-fun result!18484 () Bool)

(assert (= result!18484 result!18476))

(assert (=> d!77437 t!37962))

(declare-fun b_and!21219 () Bool)

(assert (= b_and!21201 (and (=> t!37962 result!18484) b_and!21219)))

(declare-fun m!336617 () Bool)

(assert (=> d!77437 m!336617))

(declare-fun m!336619 () Bool)

(assert (=> d!77437 m!336619))

(assert (=> b!267082 d!77437))

(assert (=> b!267254 d!77053))

(declare-fun d!77439 () Bool)

(assert (=> d!77439 true))

(declare-fun lt!109869 () Bool)

(assert (=> d!77439 (= lt!109869 (rulesValidInductive!199 thiss!17480 rules!1920))))

(declare-fun lambda!9045 () Int)

(declare-fun forall!952 (List!3819 Int) Bool)

(assert (=> d!77439 (= lt!109869 (forall!952 rules!1920 lambda!9045))))

(assert (=> d!77439 (= (rulesValid!220 thiss!17480 rules!1920) lt!109869)))

(declare-fun bs!29511 () Bool)

(assert (= bs!29511 d!77439))

(assert (=> bs!29511 m!335671))

(declare-fun m!336621 () Bool)

(assert (=> bs!29511 m!336621))

(assert (=> d!76995 d!77439))

(declare-fun d!77441 () Bool)

(declare-fun c!50743 () Bool)

(assert (=> d!77441 (= c!50743 ((_ is Empty!1276) (c!50467 (charsOf!372 separatorToken!170))))))

(declare-fun e!166491 () List!3818)

(assert (=> d!77441 (= (list!1551 (c!50467 (charsOf!372 separatorToken!170))) e!166491)))

(declare-fun b!267972 () Bool)

(assert (=> b!267972 (= e!166491 Nil!3808)))

(declare-fun b!267973 () Bool)

(declare-fun e!166492 () List!3818)

(assert (=> b!267973 (= e!166491 e!166492)))

(declare-fun c!50744 () Bool)

(assert (=> b!267973 (= c!50744 ((_ is Leaf!1979) (c!50467 (charsOf!372 separatorToken!170))))))

(declare-fun b!267974 () Bool)

(assert (=> b!267974 (= e!166492 (list!1553 (xs!3875 (c!50467 (charsOf!372 separatorToken!170)))))))

(declare-fun b!267975 () Bool)

(assert (=> b!267975 (= e!166492 (++!988 (list!1551 (left!3130 (c!50467 (charsOf!372 separatorToken!170)))) (list!1551 (right!3460 (c!50467 (charsOf!372 separatorToken!170))))))))

(assert (= (and d!77441 c!50743) b!267972))

(assert (= (and d!77441 (not c!50743)) b!267973))

(assert (= (and b!267973 c!50744) b!267974))

(assert (= (and b!267973 (not c!50744)) b!267975))

(declare-fun m!336623 () Bool)

(assert (=> b!267974 m!336623))

(declare-fun m!336625 () Bool)

(assert (=> b!267975 m!336625))

(declare-fun m!336627 () Bool)

(assert (=> b!267975 m!336627))

(assert (=> b!267975 m!336625))

(assert (=> b!267975 m!336627))

(declare-fun m!336629 () Bool)

(assert (=> b!267975 m!336629))

(assert (=> d!77011 d!77441))

(assert (=> d!77061 d!77007))

(declare-fun d!77443 () Bool)

(assert (=> d!77443 (= (++!988 (++!988 lt!109293 lt!109298) lt!109292) (++!988 lt!109293 (++!988 lt!109298 lt!109292)))))

(assert (=> d!77443 true))

(declare-fun _$52!740 () Unit!4824)

(assert (=> d!77443 (= (choose!2436 lt!109293 lt!109298 lt!109292) _$52!740)))

(declare-fun bs!29512 () Bool)

(assert (= bs!29512 d!77443))

(assert (=> bs!29512 m!334555))

(assert (=> bs!29512 m!334555))

(assert (=> bs!29512 m!334557))

(assert (=> bs!29512 m!334549))

(assert (=> bs!29512 m!334549))

(assert (=> bs!29512 m!335127))

(assert (=> d!77061 d!77443))

(assert (=> d!77061 d!77065))

(declare-fun e!166494 () List!3818)

(declare-fun b!267977 () Bool)

(assert (=> b!267977 (= e!166494 (Cons!3808 (h!9205 lt!109293) (++!988 (t!37802 lt!109293) (++!988 lt!109298 lt!109292))))))

(declare-fun e!166493 () Bool)

(declare-fun b!267979 () Bool)

(declare-fun lt!109870 () List!3818)

(assert (=> b!267979 (= e!166493 (or (not (= (++!988 lt!109298 lt!109292) Nil!3808)) (= lt!109870 lt!109293)))))

(declare-fun b!267978 () Bool)

(declare-fun res!122696 () Bool)

(assert (=> b!267978 (=> (not res!122696) (not e!166493))))

(assert (=> b!267978 (= res!122696 (= (size!3029 lt!109870) (+ (size!3029 lt!109293) (size!3029 (++!988 lt!109298 lt!109292)))))))

(declare-fun b!267976 () Bool)

(assert (=> b!267976 (= e!166494 (++!988 lt!109298 lt!109292))))

(declare-fun d!77445 () Bool)

(assert (=> d!77445 e!166493))

(declare-fun res!122695 () Bool)

(assert (=> d!77445 (=> (not res!122695) (not e!166493))))

(assert (=> d!77445 (= res!122695 (= (content!543 lt!109870) ((_ map or) (content!543 lt!109293) (content!543 (++!988 lt!109298 lt!109292)))))))

(assert (=> d!77445 (= lt!109870 e!166494)))

(declare-fun c!50745 () Bool)

(assert (=> d!77445 (= c!50745 ((_ is Nil!3808) lt!109293))))

(assert (=> d!77445 (= (++!988 lt!109293 (++!988 lt!109298 lt!109292)) lt!109870)))

(assert (= (and d!77445 c!50745) b!267976))

(assert (= (and d!77445 (not c!50745)) b!267977))

(assert (= (and d!77445 res!122695) b!267978))

(assert (= (and b!267978 res!122696) b!267979))

(assert (=> b!267977 m!334549))

(declare-fun m!336631 () Bool)

(assert (=> b!267977 m!336631))

(declare-fun m!336633 () Bool)

(assert (=> b!267978 m!336633))

(assert (=> b!267978 m!335111))

(assert (=> b!267978 m!334549))

(declare-fun m!336635 () Bool)

(assert (=> b!267978 m!336635))

(declare-fun m!336637 () Bool)

(assert (=> d!77445 m!336637))

(assert (=> d!77445 m!335117))

(assert (=> d!77445 m!334549))

(declare-fun m!336639 () Bool)

(assert (=> d!77445 m!336639))

(assert (=> d!77061 d!77445))

(assert (=> d!77061 d!77063))

(declare-fun d!77447 () Bool)

(declare-fun lt!109871 () Int)

(assert (=> d!77447 (= lt!109871 (size!3031 (list!1550 lt!109287)))))

(assert (=> d!77447 (= lt!109871 (size!3033 (c!50469 lt!109287)))))

(assert (=> d!77447 (= (size!3028 lt!109287) lt!109871)))

(declare-fun bs!29513 () Bool)

(assert (= bs!29513 d!77447))

(assert (=> bs!29513 m!334733))

(assert (=> bs!29513 m!334733))

(declare-fun m!336641 () Bool)

(assert (=> bs!29513 m!336641))

(declare-fun m!336643 () Bool)

(assert (=> bs!29513 m!336643))

(assert (=> b!266900 d!77447))

(declare-fun d!77449 () Bool)

(declare-fun res!122697 () Bool)

(declare-fun e!166495 () Bool)

(assert (=> d!77449 (=> res!122697 e!166495)))

(assert (=> d!77449 (= res!122697 (not ((_ is Cons!3809) (t!37803 rules!1920))))))

(assert (=> d!77449 (= (sepAndNonSepRulesDisjointChars!316 rules!1920 (t!37803 rules!1920)) e!166495)))

(declare-fun b!267980 () Bool)

(declare-fun e!166496 () Bool)

(assert (=> b!267980 (= e!166495 e!166496)))

(declare-fun res!122698 () Bool)

(assert (=> b!267980 (=> (not res!122698) (not e!166496))))

(assert (=> b!267980 (= res!122698 (ruleDisjointCharsFromAllFromOtherType!114 (h!9206 (t!37803 rules!1920)) rules!1920))))

(declare-fun b!267981 () Bool)

(assert (=> b!267981 (= e!166496 (sepAndNonSepRulesDisjointChars!316 rules!1920 (t!37803 (t!37803 rules!1920))))))

(assert (= (and d!77449 (not res!122697)) b!267980))

(assert (= (and b!267980 res!122698) b!267981))

(declare-fun m!336645 () Bool)

(assert (=> b!267980 m!336645))

(declare-fun m!336647 () Bool)

(assert (=> b!267981 m!336647))

(assert (=> b!267317 d!77449))

(declare-fun d!77451 () Bool)

(assert (=> d!77451 (= (list!1547 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465)))) (value!25035 (h!9207 tokens!465)))) (list!1551 (c!50467 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465)))) (value!25035 (h!9207 tokens!465))))))))

(declare-fun bs!29514 () Bool)

(assert (= bs!29514 d!77451))

(declare-fun m!336649 () Bool)

(assert (=> bs!29514 m!336649))

(assert (=> b!266874 d!77451))

(declare-fun bs!29524 () Bool)

(declare-fun d!77453 () Bool)

(assert (= bs!29524 (and d!77453 b!267294)))

(declare-fun lambda!9051 () Int)

(assert (=> bs!29524 (= lambda!9051 lambda!9023)))

(declare-fun bs!29525 () Bool)

(assert (= bs!29525 (and d!77453 b!267612)))

(assert (=> bs!29525 (= lambda!9051 lambda!9035)))

(declare-fun bs!29526 () Bool)

(assert (= bs!29526 (and d!77453 d!77235)))

(assert (=> bs!29526 (not (= lambda!9051 lambda!9034))))

(declare-fun bs!29527 () Bool)

(assert (= bs!29527 (and d!77453 d!77015)))

(assert (=> bs!29527 (not (= lambda!9051 lambda!9011))))

(declare-fun bs!29528 () Bool)

(assert (= bs!29528 (and d!77453 b!267276)))

(assert (=> bs!29528 (= lambda!9051 lambda!9022)))

(declare-fun bs!29529 () Bool)

(assert (= bs!29529 (and d!77453 b!267078)))

(assert (=> bs!29529 (= lambda!9051 lambda!9012)))

(declare-fun bs!29530 () Bool)

(assert (= bs!29530 (and d!77453 d!77113)))

(assert (=> bs!29530 (not (= lambda!9051 lambda!9021))))

(declare-fun bs!29531 () Bool)

(assert (= bs!29531 (and d!77453 d!77119)))

(assert (=> bs!29531 (= lambda!9051 lambda!9028)))

(declare-fun bs!29532 () Bool)

(assert (= bs!29532 (and d!77453 b!266841)))

(assert (=> bs!29532 (not (= lambda!9051 lambda!8994))))

(declare-fun bs!29533 () Bool)

(assert (= bs!29533 (and d!77453 b!267253)))

(assert (=> bs!29533 (= lambda!9051 lambda!9020)))

(declare-fun bs!29534 () Bool)

(assert (= bs!29534 (and d!77453 b!267493)))

(assert (=> bs!29534 (= lambda!9051 lambda!9030)))

(declare-fun bs!29535 () Bool)

(assert (= bs!29535 (and d!77453 d!77175)))

(assert (=> bs!29535 (not (= lambda!9051 lambda!9029))))

(declare-fun b!268035 () Bool)

(declare-fun e!166539 () Bool)

(assert (=> b!268035 (= e!166539 true)))

(declare-fun b!268034 () Bool)

(declare-fun e!166538 () Bool)

(assert (=> b!268034 (= e!166538 e!166539)))

(declare-fun b!268033 () Bool)

(declare-fun e!166537 () Bool)

(assert (=> b!268033 (= e!166537 e!166538)))

(assert (=> d!77453 e!166537))

(assert (= b!268034 b!268035))

(assert (= b!268033 b!268034))

(assert (= (and d!77453 ((_ is Cons!3809) rules!1920)) b!268033))

(assert (=> b!268035 (< (dynLambda!1941 order!2913 (toValue!1458 (transformation!727 (h!9206 rules!1920)))) (dynLambda!1942 order!2915 lambda!9051))))

(assert (=> b!268035 (< (dynLambda!1943 order!2917 (toChars!1317 (transformation!727 (h!9206 rules!1920)))) (dynLambda!1942 order!2915 lambda!9051))))

(assert (=> d!77453 true))

(declare-fun lt!109886 () Bool)

(assert (=> d!77453 (= lt!109886 (forall!949 (list!1550 lt!109288) lambda!9051))))

(declare-fun e!166535 () Bool)

(assert (=> d!77453 (= lt!109886 e!166535)))

(declare-fun res!122722 () Bool)

(assert (=> d!77453 (=> res!122722 e!166535)))

(assert (=> d!77453 (= res!122722 (not ((_ is Cons!3810) (list!1550 lt!109288))))))

(assert (=> d!77453 (not (isEmpty!2398 rules!1920))))

(assert (=> d!77453 (= (rulesProduceEachTokenIndividuallyList!225 thiss!17480 rules!1920 (list!1550 lt!109288)) lt!109886)))

(declare-fun b!268031 () Bool)

(declare-fun e!166536 () Bool)

(assert (=> b!268031 (= e!166535 e!166536)))

(declare-fun res!122723 () Bool)

(assert (=> b!268031 (=> (not res!122723) (not e!166536))))

(assert (=> b!268031 (= res!122723 (rulesProduceIndividualToken!362 thiss!17480 rules!1920 (h!9207 (list!1550 lt!109288))))))

(declare-fun b!268032 () Bool)

(assert (=> b!268032 (= e!166536 (rulesProduceEachTokenIndividuallyList!225 thiss!17480 rules!1920 (t!37804 (list!1550 lt!109288))))))

(assert (= (and d!77453 (not res!122722)) b!268031))

(assert (= (and b!268031 res!122723) b!268032))

(assert (=> d!77453 m!335323))

(declare-fun m!336731 () Bool)

(assert (=> d!77453 m!336731))

(assert (=> d!77453 m!334541))

(declare-fun m!336733 () Bool)

(assert (=> b!268031 m!336733))

(declare-fun m!336735 () Bool)

(assert (=> b!268032 m!336735))

(assert (=> b!267308 d!77453))

(assert (=> b!267308 d!77169))

(declare-fun d!77475 () Bool)

(assert (=> d!77475 (= (inv!4710 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 separatorToken!170))) (value!25035 separatorToken!170))) (isBalanced!346 (c!50467 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 separatorToken!170))) (value!25035 separatorToken!170)))))))

(declare-fun bs!29536 () Bool)

(assert (= bs!29536 d!77475))

(declare-fun m!336737 () Bool)

(assert (=> bs!29536 m!336737))

(assert (=> tb!14789 d!77475))

(declare-fun bs!29537 () Bool)

(declare-fun d!77477 () Bool)

(assert (= bs!29537 (and d!77477 d!77209)))

(declare-fun lambda!9052 () Int)

(assert (=> bs!29537 (= (= (toValue!1458 (transformation!727 (h!9206 rules!1920))) (toValue!1458 (transformation!727 (rule!1312 separatorToken!170)))) (= lambda!9052 lambda!9033))))

(assert (=> d!77477 true))

(assert (=> d!77477 (< (dynLambda!1941 order!2913 (toValue!1458 (transformation!727 (h!9206 rules!1920)))) (dynLambda!1946 order!2919 lambda!9052))))

(assert (=> d!77477 (= (equivClasses!238 (toChars!1317 (transformation!727 (h!9206 rules!1920))) (toValue!1458 (transformation!727 (h!9206 rules!1920)))) (Forall2!145 lambda!9052))))

(declare-fun bs!29538 () Bool)

(assert (= bs!29538 d!77477))

(declare-fun m!336739 () Bool)

(assert (=> bs!29538 m!336739))

(assert (=> b!267260 d!77477))

(declare-fun b!268036 () Bool)

(declare-fun e!166540 () Bool)

(assert (=> b!268036 (= e!166540 (inv!15 (value!25035 (h!9207 (t!37804 tokens!465)))))))

(declare-fun d!77479 () Bool)

(declare-fun c!50758 () Bool)

(assert (=> d!77479 (= c!50758 ((_ is IntegerValue!2247) (value!25035 (h!9207 (t!37804 tokens!465)))))))

(declare-fun e!166541 () Bool)

(assert (=> d!77479 (= (inv!21 (value!25035 (h!9207 (t!37804 tokens!465)))) e!166541)))

(declare-fun b!268037 () Bool)

(declare-fun e!166542 () Bool)

(assert (=> b!268037 (= e!166541 e!166542)))

(declare-fun c!50757 () Bool)

(assert (=> b!268037 (= c!50757 ((_ is IntegerValue!2248) (value!25035 (h!9207 (t!37804 tokens!465)))))))

(declare-fun b!268038 () Bool)

(assert (=> b!268038 (= e!166541 (inv!16 (value!25035 (h!9207 (t!37804 tokens!465)))))))

(declare-fun b!268039 () Bool)

(assert (=> b!268039 (= e!166542 (inv!17 (value!25035 (h!9207 (t!37804 tokens!465)))))))

(declare-fun b!268040 () Bool)

(declare-fun res!122724 () Bool)

(assert (=> b!268040 (=> res!122724 e!166540)))

(assert (=> b!268040 (= res!122724 (not ((_ is IntegerValue!2249) (value!25035 (h!9207 (t!37804 tokens!465))))))))

(assert (=> b!268040 (= e!166542 e!166540)))

(assert (= (and d!77479 c!50758) b!268038))

(assert (= (and d!77479 (not c!50758)) b!268037))

(assert (= (and b!268037 c!50757) b!268039))

(assert (= (and b!268037 (not c!50757)) b!268040))

(assert (= (and b!268040 (not res!122724)) b!268036))

(declare-fun m!336741 () Bool)

(assert (=> b!268036 m!336741))

(declare-fun m!336743 () Bool)

(assert (=> b!268038 m!336743))

(declare-fun m!336745 () Bool)

(assert (=> b!268039 m!336745))

(assert (=> b!267339 d!77479))

(declare-fun b!268053 () Bool)

(declare-fun e!166548 () Bool)

(declare-fun e!166547 () Bool)

(assert (=> b!268053 (= e!166548 e!166547)))

(declare-fun res!122741 () Bool)

(assert (=> b!268053 (=> (not res!122741) (not e!166547))))

(declare-fun height!151 (Conc!1277) Int)

(assert (=> b!268053 (= res!122741 (<= (- 1) (- (height!151 (left!3131 (c!50469 lt!109335))) (height!151 (right!3461 (c!50469 lt!109335))))))))

(declare-fun b!268054 () Bool)

(declare-fun res!122737 () Bool)

(assert (=> b!268054 (=> (not res!122737) (not e!166547))))

(assert (=> b!268054 (= res!122737 (isBalanced!344 (left!3131 (c!50469 lt!109335))))))

(declare-fun b!268055 () Bool)

(declare-fun isEmpty!2409 (Conc!1277) Bool)

(assert (=> b!268055 (= e!166547 (not (isEmpty!2409 (right!3461 (c!50469 lt!109335)))))))

(declare-fun b!268056 () Bool)

(declare-fun res!122738 () Bool)

(assert (=> b!268056 (=> (not res!122738) (not e!166547))))

(assert (=> b!268056 (= res!122738 (<= (- (height!151 (left!3131 (c!50469 lt!109335))) (height!151 (right!3461 (c!50469 lt!109335)))) 1))))

(declare-fun d!77481 () Bool)

(declare-fun res!122739 () Bool)

(assert (=> d!77481 (=> res!122739 e!166548)))

(assert (=> d!77481 (= res!122739 (not ((_ is Node!1277) (c!50469 lt!109335))))))

(assert (=> d!77481 (= (isBalanced!344 (c!50469 lt!109335)) e!166548)))

(declare-fun b!268057 () Bool)

(declare-fun res!122740 () Bool)

(assert (=> b!268057 (=> (not res!122740) (not e!166547))))

(assert (=> b!268057 (= res!122740 (not (isEmpty!2409 (left!3131 (c!50469 lt!109335)))))))

(declare-fun b!268058 () Bool)

(declare-fun res!122742 () Bool)

(assert (=> b!268058 (=> (not res!122742) (not e!166547))))

(assert (=> b!268058 (= res!122742 (isBalanced!344 (right!3461 (c!50469 lt!109335))))))

(assert (= (and d!77481 (not res!122739)) b!268053))

(assert (= (and b!268053 res!122741) b!268056))

(assert (= (and b!268056 res!122738) b!268054))

(assert (= (and b!268054 res!122737) b!268058))

(assert (= (and b!268058 res!122742) b!268057))

(assert (= (and b!268057 res!122740) b!268055))

(declare-fun m!336747 () Bool)

(assert (=> b!268054 m!336747))

(declare-fun m!336749 () Bool)

(assert (=> b!268055 m!336749))

(declare-fun m!336751 () Bool)

(assert (=> b!268057 m!336751))

(declare-fun m!336753 () Bool)

(assert (=> b!268056 m!336753))

(declare-fun m!336755 () Bool)

(assert (=> b!268056 m!336755))

(declare-fun m!336757 () Bool)

(assert (=> b!268058 m!336757))

(assert (=> b!268053 m!336753))

(assert (=> b!268053 m!336755))

(assert (=> b!266905 d!77481))

(declare-fun d!77483 () Bool)

(declare-fun charsToInt!0 (List!3817) (_ BitVec 32))

(assert (=> d!77483 (= (inv!16 (value!25035 (h!9207 tokens!465))) (= (charsToInt!0 (text!5690 (value!25035 (h!9207 tokens!465)))) (value!25026 (value!25035 (h!9207 tokens!465)))))))

(declare-fun bs!29539 () Bool)

(assert (= bs!29539 d!77483))

(declare-fun m!336759 () Bool)

(assert (=> bs!29539 m!336759))

(assert (=> b!267273 d!77483))

(assert (=> bm!14531 d!77059))

(declare-fun d!77485 () Bool)

(declare-fun lt!109887 () Int)

(assert (=> d!77485 (>= lt!109887 0)))

(declare-fun e!166549 () Int)

(assert (=> d!77485 (= lt!109887 e!166549)))

(declare-fun c!50759 () Bool)

(assert (=> d!77485 (= c!50759 ((_ is Nil!3808) lt!109338))))

(assert (=> d!77485 (= (size!3029 lt!109338) lt!109887)))

(declare-fun b!268059 () Bool)

(assert (=> b!268059 (= e!166549 0)))

(declare-fun b!268060 () Bool)

(assert (=> b!268060 (= e!166549 (+ 1 (size!3029 (t!37802 lt!109338))))))

(assert (= (and d!77485 c!50759) b!268059))

(assert (= (and d!77485 (not c!50759)) b!268060))

(declare-fun m!336761 () Bool)

(assert (=> b!268060 m!336761))

(assert (=> b!266922 d!77485))

(assert (=> b!266922 d!77321))

(assert (=> b!266922 d!77217))

(declare-fun d!77487 () Bool)

(declare-fun res!122747 () Bool)

(declare-fun e!166554 () Bool)

(assert (=> d!77487 (=> res!122747 e!166554)))

(assert (=> d!77487 (= res!122747 ((_ is Nil!3809) rules!1920))))

(assert (=> d!77487 (= (noDuplicateTag!220 thiss!17480 rules!1920 Nil!3811) e!166554)))

(declare-fun b!268065 () Bool)

(declare-fun e!166555 () Bool)

(assert (=> b!268065 (= e!166554 e!166555)))

(declare-fun res!122748 () Bool)

(assert (=> b!268065 (=> (not res!122748) (not e!166555))))

(declare-fun contains!715 (List!3821 String!4825) Bool)

(assert (=> b!268065 (= res!122748 (not (contains!715 Nil!3811 (tag!937 (h!9206 rules!1920)))))))

(declare-fun b!268066 () Bool)

(assert (=> b!268066 (= e!166555 (noDuplicateTag!220 thiss!17480 (t!37803 rules!1920) (Cons!3811 (tag!937 (h!9206 rules!1920)) Nil!3811)))))

(assert (= (and d!77487 (not res!122747)) b!268065))

(assert (= (and b!268065 res!122748) b!268066))

(declare-fun m!336763 () Bool)

(assert (=> b!268065 m!336763))

(declare-fun m!336765 () Bool)

(assert (=> b!268066 m!336765))

(assert (=> b!266893 d!77487))

(declare-fun d!77489 () Bool)

(declare-fun e!166558 () Bool)

(assert (=> d!77489 e!166558))

(declare-fun res!122751 () Bool)

(assert (=> d!77489 (=> (not res!122751) (not e!166558))))

(declare-fun lt!109890 () BalanceConc!2562)

(assert (=> d!77489 (= res!122751 (= (list!1550 lt!109890) (t!37804 tokens!465)))))

(declare-fun fromList!172 (List!3820) Conc!1277)

(assert (=> d!77489 (= lt!109890 (BalanceConc!2563 (fromList!172 (t!37804 tokens!465))))))

(assert (=> d!77489 (= (fromListB!312 (t!37804 tokens!465)) lt!109890)))

(declare-fun b!268069 () Bool)

(assert (=> b!268069 (= e!166558 (isBalanced!344 (fromList!172 (t!37804 tokens!465))))))

(assert (= (and d!77489 res!122751) b!268069))

(declare-fun m!336767 () Bool)

(assert (=> d!77489 m!336767))

(declare-fun m!336769 () Bool)

(assert (=> d!77489 m!336769))

(assert (=> b!268069 m!336769))

(assert (=> b!268069 m!336769))

(declare-fun m!336771 () Bool)

(assert (=> b!268069 m!336771))

(assert (=> d!77009 d!77489))

(declare-fun d!77491 () Bool)

(assert (=> d!77491 (= (list!1547 (ite c!50570 call!14538 call!14534)) (list!1551 (c!50467 (ite c!50570 call!14538 call!14534))))))

(declare-fun bs!29540 () Bool)

(assert (= bs!29540 d!77491))

(declare-fun m!336773 () Bool)

(assert (=> bs!29540 m!336773))

(assert (=> bm!14529 d!77491))

(declare-fun d!77493 () Bool)

(declare-fun c!50761 () Bool)

(assert (=> d!77493 (= c!50761 ((_ is Empty!1276) (c!50467 (printWithSeparatorTokenWhenNeededRec!288 thiss!17480 rules!1920 (seqFromList!822 (t!37804 tokens!465)) separatorToken!170 0))))))

(declare-fun e!166559 () List!3818)

(assert (=> d!77493 (= (list!1551 (c!50467 (printWithSeparatorTokenWhenNeededRec!288 thiss!17480 rules!1920 (seqFromList!822 (t!37804 tokens!465)) separatorToken!170 0))) e!166559)))

(declare-fun b!268070 () Bool)

(assert (=> b!268070 (= e!166559 Nil!3808)))

(declare-fun b!268071 () Bool)

(declare-fun e!166560 () List!3818)

(assert (=> b!268071 (= e!166559 e!166560)))

(declare-fun c!50762 () Bool)

(assert (=> b!268071 (= c!50762 ((_ is Leaf!1979) (c!50467 (printWithSeparatorTokenWhenNeededRec!288 thiss!17480 rules!1920 (seqFromList!822 (t!37804 tokens!465)) separatorToken!170 0))))))

(declare-fun b!268072 () Bool)

(assert (=> b!268072 (= e!166560 (list!1553 (xs!3875 (c!50467 (printWithSeparatorTokenWhenNeededRec!288 thiss!17480 rules!1920 (seqFromList!822 (t!37804 tokens!465)) separatorToken!170 0)))))))

(declare-fun b!268073 () Bool)

(assert (=> b!268073 (= e!166560 (++!988 (list!1551 (left!3130 (c!50467 (printWithSeparatorTokenWhenNeededRec!288 thiss!17480 rules!1920 (seqFromList!822 (t!37804 tokens!465)) separatorToken!170 0)))) (list!1551 (right!3460 (c!50467 (printWithSeparatorTokenWhenNeededRec!288 thiss!17480 rules!1920 (seqFromList!822 (t!37804 tokens!465)) separatorToken!170 0))))))))

(assert (= (and d!77493 c!50761) b!268070))

(assert (= (and d!77493 (not c!50761)) b!268071))

(assert (= (and b!268071 c!50762) b!268072))

(assert (= (and b!268071 (not c!50762)) b!268073))

(declare-fun m!336775 () Bool)

(assert (=> b!268072 m!336775))

(declare-fun m!336777 () Bool)

(assert (=> b!268073 m!336777))

(declare-fun m!336779 () Bool)

(assert (=> b!268073 m!336779))

(assert (=> b!268073 m!336777))

(assert (=> b!268073 m!336779))

(declare-fun m!336781 () Bool)

(assert (=> b!268073 m!336781))

(assert (=> d!77013 d!77493))

(declare-fun d!77495 () Bool)

(declare-fun lt!109891 () Int)

(assert (=> d!77495 (>= lt!109891 0)))

(declare-fun e!166561 () Int)

(assert (=> d!77495 (= lt!109891 e!166561)))

(declare-fun c!50763 () Bool)

(assert (=> d!77495 (= c!50763 ((_ is Nil!3808) (originalCharacters!770 (h!9207 tokens!465))))))

(assert (=> d!77495 (= (size!3029 (originalCharacters!770 (h!9207 tokens!465))) lt!109891)))

(declare-fun b!268074 () Bool)

(assert (=> b!268074 (= e!166561 0)))

(declare-fun b!268075 () Bool)

(assert (=> b!268075 (= e!166561 (+ 1 (size!3029 (t!37802 (originalCharacters!770 (h!9207 tokens!465))))))))

(assert (= (and d!77495 c!50763) b!268074))

(assert (= (and d!77495 (not c!50763)) b!268075))

(declare-fun m!336783 () Bool)

(assert (=> b!268075 m!336783))

(assert (=> b!266875 d!77495))

(declare-fun d!77497 () Bool)

(assert (=> d!77497 (= (list!1547 e!166071) (list!1551 (c!50467 e!166071)))))

(declare-fun bs!29541 () Bool)

(assert (= bs!29541 d!77497))

(declare-fun m!336785 () Bool)

(assert (=> bs!29541 m!336785))

(assert (=> bm!14520 d!77497))

(declare-fun d!77499 () Bool)

(declare-fun lt!109892 () Token!1198)

(assert (=> d!77499 (= lt!109892 (apply!758 (list!1550 (_1!2346 lt!109306)) 0))))

(assert (=> d!77499 (= lt!109892 (apply!759 (c!50469 (_1!2346 lt!109306)) 0))))

(declare-fun e!166562 () Bool)

(assert (=> d!77499 e!166562))

(declare-fun res!122752 () Bool)

(assert (=> d!77499 (=> (not res!122752) (not e!166562))))

(assert (=> d!77499 (= res!122752 (<= 0 0))))

(assert (=> d!77499 (= (apply!757 (_1!2346 lt!109306) 0) lt!109892)))

(declare-fun b!268076 () Bool)

(assert (=> b!268076 (= e!166562 (< 0 (size!3028 (_1!2346 lt!109306))))))

(assert (= (and d!77499 res!122752) b!268076))

(declare-fun m!336787 () Bool)

(assert (=> d!77499 m!336787))

(assert (=> d!77499 m!336787))

(declare-fun m!336789 () Bool)

(assert (=> d!77499 m!336789))

(declare-fun m!336791 () Bool)

(assert (=> d!77499 m!336791))

(assert (=> b!268076 m!334633))

(assert (=> b!266867 d!77499))

(declare-fun d!77501 () Bool)

(declare-fun c!50764 () Bool)

(assert (=> d!77501 (= c!50764 ((_ is Nil!3808) lt!109338))))

(declare-fun e!166563 () (InoxSet C!2824))

(assert (=> d!77501 (= (content!543 lt!109338) e!166563)))

(declare-fun b!268077 () Bool)

(assert (=> b!268077 (= e!166563 ((as const (Array C!2824 Bool)) false))))

(declare-fun b!268078 () Bool)

(assert (=> b!268078 (= e!166563 ((_ map or) (store ((as const (Array C!2824 Bool)) false) (h!9205 lt!109338) true) (content!543 (t!37802 lt!109338))))))

(assert (= (and d!77501 c!50764) b!268077))

(assert (= (and d!77501 (not c!50764)) b!268078))

(declare-fun m!336793 () Bool)

(assert (=> b!268078 m!336793))

(declare-fun m!336795 () Bool)

(assert (=> b!268078 m!336795))

(assert (=> d!77007 d!77501))

(assert (=> d!77007 d!77259))

(declare-fun d!77503 () Bool)

(declare-fun c!50765 () Bool)

(assert (=> d!77503 (= c!50765 ((_ is Nil!3808) lt!109292))))

(declare-fun e!166564 () (InoxSet C!2824))

(assert (=> d!77503 (= (content!543 lt!109292) e!166564)))

(declare-fun b!268079 () Bool)

(assert (=> b!268079 (= e!166564 ((as const (Array C!2824 Bool)) false))))

(declare-fun b!268080 () Bool)

(assert (=> b!268080 (= e!166564 ((_ map or) (store ((as const (Array C!2824 Bool)) false) (h!9205 lt!109292) true) (content!543 (t!37802 lt!109292))))))

(assert (= (and d!77503 c!50765) b!268079))

(assert (= (and d!77503 (not c!50765)) b!268080))

(declare-fun m!336797 () Bool)

(assert (=> b!268080 m!336797))

(declare-fun m!336799 () Bool)

(assert (=> b!268080 m!336799))

(assert (=> d!77007 d!77503))

(declare-fun d!77505 () Bool)

(declare-fun c!50766 () Bool)

(assert (=> d!77505 (= c!50766 ((_ is Node!1276) (c!50467 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 separatorToken!170))) (value!25035 separatorToken!170)))))))

(declare-fun e!166565 () Bool)

(assert (=> d!77505 (= (inv!4709 (c!50467 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 separatorToken!170))) (value!25035 separatorToken!170)))) e!166565)))

(declare-fun b!268081 () Bool)

(assert (=> b!268081 (= e!166565 (inv!4711 (c!50467 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 separatorToken!170))) (value!25035 separatorToken!170)))))))

(declare-fun b!268082 () Bool)

(declare-fun e!166566 () Bool)

(assert (=> b!268082 (= e!166565 e!166566)))

(declare-fun res!122753 () Bool)

(assert (=> b!268082 (= res!122753 (not ((_ is Leaf!1979) (c!50467 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 separatorToken!170))) (value!25035 separatorToken!170))))))))

(assert (=> b!268082 (=> res!122753 e!166566)))

(declare-fun b!268083 () Bool)

(assert (=> b!268083 (= e!166566 (inv!4712 (c!50467 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 separatorToken!170))) (value!25035 separatorToken!170)))))))

(assert (= (and d!77505 c!50766) b!268081))

(assert (= (and d!77505 (not c!50766)) b!268082))

(assert (= (and b!268082 (not res!122753)) b!268083))

(declare-fun m!336801 () Bool)

(assert (=> b!268081 m!336801))

(declare-fun m!336803 () Bool)

(assert (=> b!268083 m!336803))

(assert (=> b!266886 d!77505))

(declare-fun e!166568 () List!3818)

(declare-fun b!268085 () Bool)

(assert (=> b!268085 (= e!166568 (Cons!3808 (h!9205 call!14536) (++!988 (t!37802 call!14536) (ite c!50570 lt!109554 call!14535))))))

(declare-fun e!166567 () Bool)

(declare-fun b!268087 () Bool)

(declare-fun lt!109893 () List!3818)

(assert (=> b!268087 (= e!166567 (or (not (= (ite c!50570 lt!109554 call!14535) Nil!3808)) (= lt!109893 call!14536)))))

(declare-fun b!268086 () Bool)

(declare-fun res!122755 () Bool)

(assert (=> b!268086 (=> (not res!122755) (not e!166567))))

(assert (=> b!268086 (= res!122755 (= (size!3029 lt!109893) (+ (size!3029 call!14536) (size!3029 (ite c!50570 lt!109554 call!14535)))))))

(declare-fun b!268084 () Bool)

(assert (=> b!268084 (= e!166568 (ite c!50570 lt!109554 call!14535))))

(declare-fun d!77507 () Bool)

(assert (=> d!77507 e!166567))

(declare-fun res!122754 () Bool)

(assert (=> d!77507 (=> (not res!122754) (not e!166567))))

(assert (=> d!77507 (= res!122754 (= (content!543 lt!109893) ((_ map or) (content!543 call!14536) (content!543 (ite c!50570 lt!109554 call!14535)))))))

(assert (=> d!77507 (= lt!109893 e!166568)))

(declare-fun c!50767 () Bool)

(assert (=> d!77507 (= c!50767 ((_ is Nil!3808) call!14536))))

(assert (=> d!77507 (= (++!988 call!14536 (ite c!50570 lt!109554 call!14535)) lt!109893)))

(assert (= (and d!77507 c!50767) b!268084))

(assert (= (and d!77507 (not c!50767)) b!268085))

(assert (= (and d!77507 res!122754) b!268086))

(assert (= (and b!268086 res!122755) b!268087))

(declare-fun m!336805 () Bool)

(assert (=> b!268085 m!336805))

(declare-fun m!336807 () Bool)

(assert (=> b!268086 m!336807))

(declare-fun m!336809 () Bool)

(assert (=> b!268086 m!336809))

(declare-fun m!336811 () Bool)

(assert (=> b!268086 m!336811))

(declare-fun m!336813 () Bool)

(assert (=> d!77507 m!336813))

(declare-fun m!336815 () Bool)

(assert (=> d!77507 m!336815))

(declare-fun m!336817 () Bool)

(assert (=> d!77507 m!336817))

(assert (=> bm!14533 d!77507))

(declare-fun d!77509 () Bool)

(assert (=> d!77509 (= (inv!16 (value!25035 separatorToken!170)) (= (charsToInt!0 (text!5690 (value!25035 separatorToken!170))) (value!25026 (value!25035 separatorToken!170))))))

(declare-fun bs!29542 () Bool)

(assert (= bs!29542 d!77509))

(declare-fun m!336819 () Bool)

(assert (=> bs!29542 m!336819))

(assert (=> b!267303 d!77509))

(declare-fun d!77511 () Bool)

(declare-fun lt!109894 () Token!1198)

(assert (=> d!77511 (= lt!109894 (apply!758 (list!1550 (_1!2346 lt!109308)) 0))))

(assert (=> d!77511 (= lt!109894 (apply!759 (c!50469 (_1!2346 lt!109308)) 0))))

(declare-fun e!166569 () Bool)

(assert (=> d!77511 e!166569))

(declare-fun res!122756 () Bool)

(assert (=> d!77511 (=> (not res!122756) (not e!166569))))

(assert (=> d!77511 (= res!122756 (<= 0 0))))

(assert (=> d!77511 (= (apply!757 (_1!2346 lt!109308) 0) lt!109894)))

(declare-fun b!268088 () Bool)

(assert (=> b!268088 (= e!166569 (< 0 (size!3028 (_1!2346 lt!109308))))))

(assert (= (and d!77511 res!122756) b!268088))

(declare-fun m!336821 () Bool)

(assert (=> d!77511 m!336821))

(assert (=> d!77511 m!336821))

(declare-fun m!336823 () Bool)

(assert (=> d!77511 m!336823))

(declare-fun m!336825 () Bool)

(assert (=> d!77511 m!336825))

(assert (=> b!268088 m!334663))

(assert (=> b!266881 d!77511))

(declare-fun d!77513 () Bool)

(assert (=> d!77513 (= (list!1547 lt!109482) (list!1551 (c!50467 lt!109482)))))

(declare-fun bs!29543 () Bool)

(assert (= bs!29543 d!77513))

(declare-fun m!336827 () Bool)

(assert (=> bs!29543 m!336827))

(assert (=> d!77053 d!77513))

(declare-fun d!77515 () Bool)

(assert (=> d!77515 (= (inv!4702 (tag!937 (h!9206 (t!37803 rules!1920)))) (= (mod (str.len (value!25034 (tag!937 (h!9206 (t!37803 rules!1920))))) 2) 0))))

(assert (=> b!267379 d!77515))

(declare-fun d!77517 () Bool)

(declare-fun res!122757 () Bool)

(declare-fun e!166570 () Bool)

(assert (=> d!77517 (=> (not res!122757) (not e!166570))))

(assert (=> d!77517 (= res!122757 (semiInverseModEq!255 (toChars!1317 (transformation!727 (h!9206 (t!37803 rules!1920)))) (toValue!1458 (transformation!727 (h!9206 (t!37803 rules!1920))))))))

(assert (=> d!77517 (= (inv!4706 (transformation!727 (h!9206 (t!37803 rules!1920)))) e!166570)))

(declare-fun b!268089 () Bool)

(assert (=> b!268089 (= e!166570 (equivClasses!238 (toChars!1317 (transformation!727 (h!9206 (t!37803 rules!1920)))) (toValue!1458 (transformation!727 (h!9206 (t!37803 rules!1920))))))))

(assert (= (and d!77517 res!122757) b!268089))

(declare-fun m!336829 () Bool)

(assert (=> d!77517 m!336829))

(declare-fun m!336831 () Bool)

(assert (=> b!268089 m!336831))

(assert (=> b!267379 d!77517))

(assert (=> d!76977 d!77137))

(declare-fun d!77519 () Bool)

(assert (=> d!77519 (= (list!1550 (_1!2346 (lex!404 thiss!17480 rules!1920 (print!338 thiss!17480 (singletonSeq!273 separatorToken!170))))) (list!1552 (c!50469 (_1!2346 (lex!404 thiss!17480 rules!1920 (print!338 thiss!17480 (singletonSeq!273 separatorToken!170)))))))))

(declare-fun bs!29544 () Bool)

(assert (= bs!29544 d!77519))

(declare-fun m!336833 () Bool)

(assert (=> bs!29544 m!336833))

(assert (=> d!76977 d!77519))

(assert (=> d!76977 d!77133))

(declare-fun d!77521 () Bool)

(assert (=> d!77521 (= (list!1550 (singletonSeq!273 separatorToken!170)) (list!1552 (c!50469 (singletonSeq!273 separatorToken!170))))))

(declare-fun bs!29545 () Bool)

(assert (= bs!29545 d!77521))

(declare-fun m!336835 () Bool)

(assert (=> bs!29545 m!336835))

(assert (=> d!76977 d!77521))

(assert (=> d!76977 d!77135))

(assert (=> d!76977 d!76989))

(declare-fun d!77523 () Bool)

(declare-fun lt!109895 () Int)

(assert (=> d!77523 (= lt!109895 (size!3031 (list!1550 (_1!2346 lt!109308))))))

(assert (=> d!77523 (= lt!109895 (size!3033 (c!50469 (_1!2346 lt!109308))))))

(assert (=> d!77523 (= (size!3028 (_1!2346 lt!109308)) lt!109895)))

(declare-fun bs!29546 () Bool)

(assert (= bs!29546 d!77523))

(assert (=> bs!29546 m!336821))

(assert (=> bs!29546 m!336821))

(declare-fun m!336837 () Bool)

(assert (=> bs!29546 m!336837))

(declare-fun m!336839 () Bool)

(assert (=> bs!29546 m!336839))

(assert (=> d!76977 d!77523))

(declare-fun d!77525 () Bool)

(declare-fun charsToBigInt!1 (List!3817) Int)

(assert (=> d!77525 (= (inv!17 (value!25035 (h!9207 tokens!465))) (= (charsToBigInt!1 (text!5691 (value!25035 (h!9207 tokens!465)))) (value!25027 (value!25035 (h!9207 tokens!465)))))))

(declare-fun bs!29547 () Bool)

(assert (= bs!29547 d!77525))

(declare-fun m!336841 () Bool)

(assert (=> bs!29547 m!336841))

(assert (=> b!267274 d!77525))

(declare-fun d!77527 () Bool)

(declare-fun e!166571 () Bool)

(assert (=> d!77527 e!166571))

(declare-fun res!122758 () Bool)

(assert (=> d!77527 (=> (not res!122758) (not e!166571))))

(declare-fun lt!109896 () BalanceConc!2562)

(assert (=> d!77527 (= res!122758 (= (list!1550 lt!109896) tokens!465))))

(assert (=> d!77527 (= lt!109896 (BalanceConc!2563 (fromList!172 tokens!465)))))

(assert (=> d!77527 (= (fromListB!312 tokens!465) lt!109896)))

(declare-fun b!268090 () Bool)

(assert (=> b!268090 (= e!166571 (isBalanced!344 (fromList!172 tokens!465)))))

(assert (= (and d!77527 res!122758) b!268090))

(declare-fun m!336843 () Bool)

(assert (=> d!77527 m!336843))

(declare-fun m!336845 () Bool)

(assert (=> d!77527 m!336845))

(assert (=> b!268090 m!336845))

(assert (=> b!268090 m!336845))

(declare-fun m!336847 () Bool)

(assert (=> b!268090 m!336847))

(assert (=> d!77121 d!77527))

(declare-fun lt!109897 () BalanceConc!2560)

(declare-fun d!77529 () Bool)

(assert (=> d!77529 (= (list!1547 lt!109897) (originalCharacters!770 (ite c!50566 call!14531 (ite c!50568 separatorToken!170 call!14530))))))

(assert (=> d!77529 (= lt!109897 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 (ite c!50566 call!14531 (ite c!50568 separatorToken!170 call!14530))))) (value!25035 (ite c!50566 call!14531 (ite c!50568 separatorToken!170 call!14530)))))))

(assert (=> d!77529 (= (charsOf!372 (ite c!50566 call!14531 (ite c!50568 separatorToken!170 call!14530))) lt!109897)))

(declare-fun b_lambda!8435 () Bool)

(assert (=> (not b_lambda!8435) (not d!77529)))

(declare-fun t!37979 () Bool)

(declare-fun tb!14917 () Bool)

(assert (=> (and b!266822 (= (toChars!1317 (transformation!727 (rule!1312 separatorToken!170))) (toChars!1317 (transformation!727 (rule!1312 (ite c!50566 call!14531 (ite c!50568 separatorToken!170 call!14530)))))) t!37979) tb!14917))

(declare-fun b!268091 () Bool)

(declare-fun tp!101984 () Bool)

(declare-fun e!166572 () Bool)

(assert (=> b!268091 (= e!166572 (and (inv!4709 (c!50467 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 (ite c!50566 call!14531 (ite c!50568 separatorToken!170 call!14530))))) (value!25035 (ite c!50566 call!14531 (ite c!50568 separatorToken!170 call!14530)))))) tp!101984))))

(declare-fun result!18496 () Bool)

(assert (=> tb!14917 (= result!18496 (and (inv!4710 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 (ite c!50566 call!14531 (ite c!50568 separatorToken!170 call!14530))))) (value!25035 (ite c!50566 call!14531 (ite c!50568 separatorToken!170 call!14530))))) e!166572))))

(assert (= tb!14917 b!268091))

(declare-fun m!336849 () Bool)

(assert (=> b!268091 m!336849))

(declare-fun m!336851 () Bool)

(assert (=> tb!14917 m!336851))

(assert (=> d!77529 t!37979))

(declare-fun b_and!21231 () Bool)

(assert (= b_and!21217 (and (=> t!37979 result!18496) b_and!21231)))

(declare-fun t!37981 () Bool)

(declare-fun tb!14919 () Bool)

(assert (=> (and b!267380 (= (toChars!1317 (transformation!727 (h!9206 (t!37803 rules!1920)))) (toChars!1317 (transformation!727 (rule!1312 (ite c!50566 call!14531 (ite c!50568 separatorToken!170 call!14530)))))) t!37981) tb!14919))

(declare-fun result!18498 () Bool)

(assert (= result!18498 result!18496))

(assert (=> d!77529 t!37981))

(declare-fun b_and!21233 () Bool)

(assert (= b_and!21215 (and (=> t!37981 result!18498) b_and!21233)))

(declare-fun tb!14921 () Bool)

(declare-fun t!37983 () Bool)

(assert (=> (and b!267341 (= (toChars!1317 (transformation!727 (rule!1312 (h!9207 (t!37804 tokens!465))))) (toChars!1317 (transformation!727 (rule!1312 (ite c!50566 call!14531 (ite c!50568 separatorToken!170 call!14530)))))) t!37983) tb!14921))

(declare-fun result!18500 () Bool)

(assert (= result!18500 result!18496))

(assert (=> d!77529 t!37983))

(declare-fun b_and!21235 () Bool)

(assert (= b_and!21219 (and (=> t!37983 result!18500) b_and!21235)))

(declare-fun tb!14923 () Bool)

(declare-fun t!37985 () Bool)

(assert (=> (and b!266827 (= (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465)))) (toChars!1317 (transformation!727 (rule!1312 (ite c!50566 call!14531 (ite c!50568 separatorToken!170 call!14530)))))) t!37985) tb!14923))

(declare-fun result!18502 () Bool)

(assert (= result!18502 result!18496))

(assert (=> d!77529 t!37985))

(declare-fun b_and!21237 () Bool)

(assert (= b_and!21211 (and (=> t!37985 result!18502) b_and!21237)))

(declare-fun t!37987 () Bool)

(declare-fun tb!14925 () Bool)

(assert (=> (and b!266835 (= (toChars!1317 (transformation!727 (h!9206 rules!1920))) (toChars!1317 (transformation!727 (rule!1312 (ite c!50566 call!14531 (ite c!50568 separatorToken!170 call!14530)))))) t!37987) tb!14925))

(declare-fun result!18504 () Bool)

(assert (= result!18504 result!18496))

(assert (=> d!77529 t!37987))

(declare-fun b_and!21239 () Bool)

(assert (= b_and!21213 (and (=> t!37987 result!18504) b_and!21239)))

(declare-fun m!336853 () Bool)

(assert (=> d!77529 m!336853))

(declare-fun m!336855 () Bool)

(assert (=> d!77529 m!336855))

(assert (=> bm!14528 d!77529))

(declare-fun d!77531 () Bool)

(assert (=> d!77531 (= (inv!4702 (tag!937 (rule!1312 (h!9207 (t!37804 tokens!465))))) (= (mod (str.len (value!25034 (tag!937 (rule!1312 (h!9207 (t!37804 tokens!465)))))) 2) 0))))

(assert (=> b!267340 d!77531))

(declare-fun d!77533 () Bool)

(declare-fun res!122759 () Bool)

(declare-fun e!166573 () Bool)

(assert (=> d!77533 (=> (not res!122759) (not e!166573))))

(assert (=> d!77533 (= res!122759 (semiInverseModEq!255 (toChars!1317 (transformation!727 (rule!1312 (h!9207 (t!37804 tokens!465))))) (toValue!1458 (transformation!727 (rule!1312 (h!9207 (t!37804 tokens!465)))))))))

(assert (=> d!77533 (= (inv!4706 (transformation!727 (rule!1312 (h!9207 (t!37804 tokens!465))))) e!166573)))

(declare-fun b!268092 () Bool)

(assert (=> b!268092 (= e!166573 (equivClasses!238 (toChars!1317 (transformation!727 (rule!1312 (h!9207 (t!37804 tokens!465))))) (toValue!1458 (transformation!727 (rule!1312 (h!9207 (t!37804 tokens!465)))))))))

(assert (= (and d!77533 res!122759) b!268092))

(declare-fun m!336857 () Bool)

(assert (=> d!77533 m!336857))

(declare-fun m!336859 () Bool)

(assert (=> b!268092 m!336859))

(assert (=> b!267340 d!77533))

(declare-fun d!77535 () Bool)

(declare-fun lt!109898 () BalanceConc!2560)

(assert (=> d!77535 (= (list!1547 lt!109898) (originalCharacters!770 (ite c!50526 call!14511 (ite c!50528 separatorToken!170 call!14510))))))

(assert (=> d!77535 (= lt!109898 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 (ite c!50526 call!14511 (ite c!50528 separatorToken!170 call!14510))))) (value!25035 (ite c!50526 call!14511 (ite c!50528 separatorToken!170 call!14510)))))))

(assert (=> d!77535 (= (charsOf!372 (ite c!50526 call!14511 (ite c!50528 separatorToken!170 call!14510))) lt!109898)))

(declare-fun b_lambda!8437 () Bool)

(assert (=> (not b_lambda!8437) (not d!77535)))

(declare-fun t!37989 () Bool)

(declare-fun tb!14927 () Bool)

(assert (=> (and b!266827 (= (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465)))) (toChars!1317 (transformation!727 (rule!1312 (ite c!50526 call!14511 (ite c!50528 separatorToken!170 call!14510)))))) t!37989) tb!14927))

(declare-fun e!166574 () Bool)

(declare-fun b!268093 () Bool)

(declare-fun tp!101985 () Bool)

(assert (=> b!268093 (= e!166574 (and (inv!4709 (c!50467 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 (ite c!50526 call!14511 (ite c!50528 separatorToken!170 call!14510))))) (value!25035 (ite c!50526 call!14511 (ite c!50528 separatorToken!170 call!14510)))))) tp!101985))))

(declare-fun result!18506 () Bool)

(assert (=> tb!14927 (= result!18506 (and (inv!4710 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 (ite c!50526 call!14511 (ite c!50528 separatorToken!170 call!14510))))) (value!25035 (ite c!50526 call!14511 (ite c!50528 separatorToken!170 call!14510))))) e!166574))))

(assert (= tb!14927 b!268093))

(declare-fun m!336861 () Bool)

(assert (=> b!268093 m!336861))

(declare-fun m!336863 () Bool)

(assert (=> tb!14927 m!336863))

(assert (=> d!77535 t!37989))

(declare-fun b_and!21241 () Bool)

(assert (= b_and!21237 (and (=> t!37989 result!18506) b_and!21241)))

(declare-fun tb!14929 () Bool)

(declare-fun t!37991 () Bool)

(assert (=> (and b!267341 (= (toChars!1317 (transformation!727 (rule!1312 (h!9207 (t!37804 tokens!465))))) (toChars!1317 (transformation!727 (rule!1312 (ite c!50526 call!14511 (ite c!50528 separatorToken!170 call!14510)))))) t!37991) tb!14929))

(declare-fun result!18508 () Bool)

(assert (= result!18508 result!18506))

(assert (=> d!77535 t!37991))

(declare-fun b_and!21243 () Bool)

(assert (= b_and!21235 (and (=> t!37991 result!18508) b_and!21243)))

(declare-fun tb!14931 () Bool)

(declare-fun t!37993 () Bool)

(assert (=> (and b!266835 (= (toChars!1317 (transformation!727 (h!9206 rules!1920))) (toChars!1317 (transformation!727 (rule!1312 (ite c!50526 call!14511 (ite c!50528 separatorToken!170 call!14510)))))) t!37993) tb!14931))

(declare-fun result!18510 () Bool)

(assert (= result!18510 result!18506))

(assert (=> d!77535 t!37993))

(declare-fun b_and!21245 () Bool)

(assert (= b_and!21239 (and (=> t!37993 result!18510) b_and!21245)))

(declare-fun t!37995 () Bool)

(declare-fun tb!14933 () Bool)

(assert (=> (and b!266822 (= (toChars!1317 (transformation!727 (rule!1312 separatorToken!170))) (toChars!1317 (transformation!727 (rule!1312 (ite c!50526 call!14511 (ite c!50528 separatorToken!170 call!14510)))))) t!37995) tb!14933))

(declare-fun result!18512 () Bool)

(assert (= result!18512 result!18506))

(assert (=> d!77535 t!37995))

(declare-fun b_and!21247 () Bool)

(assert (= b_and!21231 (and (=> t!37995 result!18512) b_and!21247)))

(declare-fun t!37997 () Bool)

(declare-fun tb!14935 () Bool)

(assert (=> (and b!267380 (= (toChars!1317 (transformation!727 (h!9206 (t!37803 rules!1920)))) (toChars!1317 (transformation!727 (rule!1312 (ite c!50526 call!14511 (ite c!50528 separatorToken!170 call!14510)))))) t!37997) tb!14935))

(declare-fun result!18514 () Bool)

(assert (= result!18514 result!18506))

(assert (=> d!77535 t!37997))

(declare-fun b_and!21249 () Bool)

(assert (= b_and!21233 (and (=> t!37997 result!18514) b_and!21249)))

(declare-fun m!336865 () Bool)

(assert (=> d!77535 m!336865))

(declare-fun m!336867 () Bool)

(assert (=> d!77535 m!336867))

(assert (=> bm!14508 d!77535))

(assert (=> b!267295 d!77053))

(declare-fun d!77537 () Bool)

(assert (=> d!77537 (forall!949 (dropList!160 (seqFromList!822 (t!37804 tokens!465)) 0) lambda!9011)))

(declare-fun lt!109901 () Unit!4824)

(declare-fun choose!2443 (List!3820 List!3820 Int) Unit!4824)

(assert (=> d!77537 (= lt!109901 (choose!2443 (list!1550 (seqFromList!822 (t!37804 tokens!465))) (dropList!160 (seqFromList!822 (t!37804 tokens!465)) 0) lambda!9011))))

(assert (=> d!77537 (forall!949 (list!1550 (seqFromList!822 (t!37804 tokens!465))) lambda!9011)))

(assert (=> d!77537 (= (lemmaContentSubsetPreservesForall!104 (list!1550 (seqFromList!822 (t!37804 tokens!465))) (dropList!160 (seqFromList!822 (t!37804 tokens!465)) 0) lambda!9011) lt!109901)))

(declare-fun bs!29548 () Bool)

(assert (= bs!29548 d!77537))

(assert (=> bs!29548 m!335093))

(declare-fun m!336869 () Bool)

(assert (=> bs!29548 m!336869))

(assert (=> bs!29548 m!335063))

(assert (=> bs!29548 m!335093))

(declare-fun m!336871 () Bool)

(assert (=> bs!29548 m!336871))

(assert (=> bs!29548 m!335063))

(declare-fun m!336873 () Bool)

(assert (=> bs!29548 m!336873))

(assert (=> d!77015 d!77537))

(declare-fun d!77539 () Bool)

(assert (=> d!77539 (= (list!1547 lt!109479) (list!1551 (c!50467 lt!109479)))))

(declare-fun bs!29549 () Bool)

(assert (= bs!29549 d!77539))

(declare-fun m!336875 () Bool)

(assert (=> bs!29549 m!336875))

(assert (=> d!77015 d!77539))

(declare-fun bs!29550 () Bool)

(declare-fun b!268098 () Bool)

(assert (= bs!29550 (and b!268098 b!267294)))

(declare-fun lambda!9053 () Int)

(assert (=> bs!29550 (= lambda!9053 lambda!9023)))

(declare-fun bs!29551 () Bool)

(assert (= bs!29551 (and b!268098 b!267612)))

(assert (=> bs!29551 (= lambda!9053 lambda!9035)))

(declare-fun bs!29552 () Bool)

(assert (= bs!29552 (and b!268098 d!77235)))

(assert (=> bs!29552 (not (= lambda!9053 lambda!9034))))

(declare-fun bs!29553 () Bool)

(assert (= bs!29553 (and b!268098 d!77015)))

(assert (=> bs!29553 (not (= lambda!9053 lambda!9011))))

(declare-fun bs!29554 () Bool)

(assert (= bs!29554 (and b!268098 b!267276)))

(assert (=> bs!29554 (= lambda!9053 lambda!9022)))

(declare-fun bs!29555 () Bool)

(assert (= bs!29555 (and b!268098 b!267078)))

(assert (=> bs!29555 (= lambda!9053 lambda!9012)))

(declare-fun bs!29556 () Bool)

(assert (= bs!29556 (and b!268098 d!77453)))

(assert (=> bs!29556 (= lambda!9053 lambda!9051)))

(declare-fun bs!29557 () Bool)

(assert (= bs!29557 (and b!268098 d!77113)))

(assert (=> bs!29557 (not (= lambda!9053 lambda!9021))))

(declare-fun bs!29558 () Bool)

(assert (= bs!29558 (and b!268098 d!77119)))

(assert (=> bs!29558 (= lambda!9053 lambda!9028)))

(declare-fun bs!29559 () Bool)

(assert (= bs!29559 (and b!268098 b!266841)))

(assert (=> bs!29559 (not (= lambda!9053 lambda!8994))))

(declare-fun bs!29560 () Bool)

(assert (= bs!29560 (and b!268098 b!267253)))

(assert (=> bs!29560 (= lambda!9053 lambda!9020)))

(declare-fun bs!29561 () Bool)

(assert (= bs!29561 (and b!268098 b!267493)))

(assert (=> bs!29561 (= lambda!9053 lambda!9030)))

(declare-fun bs!29562 () Bool)

(assert (= bs!29562 (and b!268098 d!77175)))

(assert (=> bs!29562 (not (= lambda!9053 lambda!9029))))

(declare-fun b!268104 () Bool)

(declare-fun e!166581 () Bool)

(assert (=> b!268104 (= e!166581 true)))

(declare-fun b!268103 () Bool)

(declare-fun e!166580 () Bool)

(assert (=> b!268103 (= e!166580 e!166581)))

(declare-fun b!268102 () Bool)

(declare-fun e!166579 () Bool)

(assert (=> b!268102 (= e!166579 e!166580)))

(assert (=> b!268098 e!166579))

(assert (= b!268103 b!268104))

(assert (= b!268102 b!268103))

(assert (= (and b!268098 ((_ is Cons!3809) rules!1920)) b!268102))

(assert (=> b!268104 (< (dynLambda!1941 order!2913 (toValue!1458 (transformation!727 (h!9206 rules!1920)))) (dynLambda!1942 order!2915 lambda!9053))))

(assert (=> b!268104 (< (dynLambda!1943 order!2917 (toChars!1317 (transformation!727 (h!9206 rules!1920)))) (dynLambda!1942 order!2915 lambda!9053))))

(assert (=> b!268098 true))

(declare-fun b!268094 () Bool)

(declare-fun e!166576 () List!3818)

(declare-fun call!14581 () List!3818)

(assert (=> b!268094 (= e!166576 call!14581)))

(declare-fun b!268095 () Bool)

(declare-fun c!50771 () Bool)

(declare-fun lt!109902 () Option!803)

(assert (=> b!268095 (= c!50771 (and ((_ is Some!802) lt!109902) (not (= (_1!2349 (v!14665 lt!109902)) (h!9207 (dropList!160 (seqFromList!822 (t!37804 tokens!465)) 0))))))))

(declare-fun e!166577 () List!3818)

(assert (=> b!268095 (= e!166576 e!166577)))

(declare-fun b!268096 () Bool)

(declare-fun lt!109903 () List!3818)

(assert (=> b!268096 (= e!166577 (++!988 call!14581 lt!109903))))

(declare-fun c!50769 () Bool)

(declare-fun call!14582 () BalanceConc!2560)

(declare-fun bm!14573 () Bool)

(declare-fun call!14580 () List!3818)

(declare-fun call!14578 () BalanceConc!2560)

(assert (=> bm!14573 (= call!14580 (list!1547 (ite c!50769 call!14582 call!14578)))))

(declare-fun b!268097 () Bool)

(assert (=> b!268097 (= e!166577 Nil!3808)))

(assert (=> b!268097 (= (print!338 thiss!17480 (singletonSeq!273 (h!9207 (dropList!160 (seqFromList!822 (t!37804 tokens!465)) 0)))) (printTailRec!301 thiss!17480 (singletonSeq!273 (h!9207 (dropList!160 (seqFromList!822 (t!37804 tokens!465)) 0))) 0 (BalanceConc!2561 Empty!1276)))))

(declare-fun lt!109906 () Unit!4824)

(declare-fun Unit!4848 () Unit!4824)

(assert (=> b!268097 (= lt!109906 Unit!4848)))

(declare-fun call!14579 () List!3818)

(declare-fun lt!109904 () Unit!4824)

(assert (=> b!268097 (= lt!109904 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!108 thiss!17480 rules!1920 call!14579 lt!109903))))

(assert (=> b!268097 false))

(declare-fun lt!109907 () Unit!4824)

(declare-fun Unit!4849 () Unit!4824)

(assert (=> b!268097 (= lt!109907 Unit!4849)))

(declare-fun bm!14574 () Bool)

(declare-fun e!166578 () BalanceConc!2560)

(assert (=> bm!14574 (= call!14579 (list!1547 e!166578))))

(declare-fun c!50770 () Bool)

(assert (=> bm!14574 (= c!50770 c!50771)))

(declare-fun e!166575 () List!3818)

(assert (=> b!268098 (= e!166575 e!166576)))

(declare-fun lt!109905 () Unit!4824)

(assert (=> b!268098 (= lt!109905 (forallContained!282 (dropList!160 (seqFromList!822 (t!37804 tokens!465)) 0) lambda!9053 (h!9207 (dropList!160 (seqFromList!822 (t!37804 tokens!465)) 0))))))

(assert (=> b!268098 (= lt!109903 (printWithSeparatorTokenWhenNeededList!296 thiss!17480 rules!1920 (t!37804 (dropList!160 (seqFromList!822 (t!37804 tokens!465)) 0)) separatorToken!170))))

(assert (=> b!268098 (= lt!109902 (maxPrefix!331 thiss!17480 rules!1920 (++!988 (list!1547 (charsOf!372 (h!9207 (dropList!160 (seqFromList!822 (t!37804 tokens!465)) 0)))) lt!109903)))))

(assert (=> b!268098 (= c!50769 (and ((_ is Some!802) lt!109902) (= (_1!2349 (v!14665 lt!109902)) (h!9207 (dropList!160 (seqFromList!822 (t!37804 tokens!465)) 0)))))))

(declare-fun bm!14575 () Bool)

(assert (=> bm!14575 (= call!14582 (charsOf!372 (h!9207 (dropList!160 (seqFromList!822 (t!37804 tokens!465)) 0))))))

(declare-fun d!77541 () Bool)

(declare-fun c!50768 () Bool)

(assert (=> d!77541 (= c!50768 ((_ is Cons!3810) (dropList!160 (seqFromList!822 (t!37804 tokens!465)) 0)))))

(assert (=> d!77541 (= (printWithSeparatorTokenWhenNeededList!296 thiss!17480 rules!1920 (dropList!160 (seqFromList!822 (t!37804 tokens!465)) 0) separatorToken!170) e!166575)))

(declare-fun b!268099 () Bool)

(assert (=> b!268099 (= e!166578 (charsOf!372 separatorToken!170))))

(declare-fun bm!14576 () Bool)

(assert (=> bm!14576 (= call!14578 call!14582)))

(declare-fun b!268100 () Bool)

(assert (=> b!268100 (= e!166578 call!14578)))

(declare-fun b!268101 () Bool)

(assert (=> b!268101 (= e!166575 Nil!3808)))

(declare-fun bm!14577 () Bool)

(assert (=> bm!14577 (= call!14581 (++!988 call!14580 (ite c!50769 lt!109903 call!14579)))))

(assert (= (and d!77541 c!50768) b!268098))

(assert (= (and d!77541 (not c!50768)) b!268101))

(assert (= (and b!268098 c!50769) b!268094))

(assert (= (and b!268098 (not c!50769)) b!268095))

(assert (= (and b!268095 c!50771) b!268096))

(assert (= (and b!268095 (not c!50771)) b!268097))

(assert (= (or b!268096 b!268097) bm!14576))

(assert (= (or b!268096 b!268097) bm!14574))

(assert (= (and bm!14574 c!50770) b!268099))

(assert (= (and bm!14574 (not c!50770)) b!268100))

(assert (= (or b!268094 bm!14576) bm!14575))

(assert (= (or b!268094 b!268096) bm!14573))

(assert (= (or b!268094 b!268096) bm!14577))

(declare-fun m!336877 () Bool)

(assert (=> bm!14573 m!336877))

(declare-fun m!336879 () Bool)

(assert (=> bm!14575 m!336879))

(assert (=> b!268099 m!334551))

(declare-fun m!336881 () Bool)

(assert (=> bm!14574 m!336881))

(declare-fun m!336883 () Bool)

(assert (=> b!268096 m!336883))

(declare-fun m!336885 () Bool)

(assert (=> bm!14577 m!336885))

(declare-fun m!336887 () Bool)

(assert (=> b!268097 m!336887))

(assert (=> b!268097 m!336887))

(declare-fun m!336889 () Bool)

(assert (=> b!268097 m!336889))

(assert (=> b!268097 m!336887))

(declare-fun m!336891 () Bool)

(assert (=> b!268097 m!336891))

(declare-fun m!336893 () Bool)

(assert (=> b!268097 m!336893))

(assert (=> b!268098 m!335093))

(declare-fun m!336895 () Bool)

(assert (=> b!268098 m!336895))

(assert (=> b!268098 m!336879))

(declare-fun m!336897 () Bool)

(assert (=> b!268098 m!336897))

(declare-fun m!336899 () Bool)

(assert (=> b!268098 m!336899))

(declare-fun m!336901 () Bool)

(assert (=> b!268098 m!336901))

(assert (=> b!268098 m!336879))

(declare-fun m!336903 () Bool)

(assert (=> b!268098 m!336903))

(assert (=> b!268098 m!336903))

(assert (=> b!268098 m!336897))

(assert (=> d!77015 d!77541))

(declare-fun d!77543 () Bool)

(assert (=> d!77543 (= (dropList!160 (seqFromList!822 (t!37804 tokens!465)) 0) (drop!213 (list!1552 (c!50469 (seqFromList!822 (t!37804 tokens!465)))) 0))))

(declare-fun bs!29563 () Bool)

(assert (= bs!29563 d!77543))

(assert (=> bs!29563 m!335773))

(assert (=> bs!29563 m!335773))

(declare-fun m!336905 () Bool)

(assert (=> bs!29563 m!336905))

(assert (=> d!77015 d!77543))

(assert (=> d!77015 d!77309))

(assert (=> d!77015 d!77233))

(declare-fun d!77545 () Bool)

(assert (=> d!77545 (= (list!1547 lt!109471) (list!1551 (c!50467 lt!109471)))))

(declare-fun bs!29564 () Bool)

(assert (= bs!29564 d!77545))

(declare-fun m!336907 () Bool)

(assert (=> bs!29564 m!336907))

(assert (=> b!267084 d!77545))

(declare-fun d!77547 () Bool)

(declare-fun lt!109911 () BalanceConc!2560)

(assert (=> d!77547 (= (list!1547 lt!109911) (printListTailRec!125 thiss!17480 (dropList!160 (singletonSeq!273 call!14510) 0) (list!1547 (BalanceConc!2561 Empty!1276))))))

(declare-fun e!166583 () BalanceConc!2560)

(assert (=> d!77547 (= lt!109911 e!166583)))

(declare-fun c!50772 () Bool)

(assert (=> d!77547 (= c!50772 (>= 0 (size!3028 (singletonSeq!273 call!14510))))))

(declare-fun e!166582 () Bool)

(assert (=> d!77547 e!166582))

(declare-fun res!122760 () Bool)

(assert (=> d!77547 (=> (not res!122760) (not e!166582))))

(assert (=> d!77547 (= res!122760 (>= 0 0))))

(assert (=> d!77547 (= (printTailRec!301 thiss!17480 (singletonSeq!273 call!14510) 0 (BalanceConc!2561 Empty!1276)) lt!109911)))

(declare-fun b!268105 () Bool)

(assert (=> b!268105 (= e!166582 (<= 0 (size!3028 (singletonSeq!273 call!14510))))))

(declare-fun b!268106 () Bool)

(assert (=> b!268106 (= e!166583 (BalanceConc!2561 Empty!1276))))

(declare-fun b!268107 () Bool)

(assert (=> b!268107 (= e!166583 (printTailRec!301 thiss!17480 (singletonSeq!273 call!14510) (+ 0 1) (++!990 (BalanceConc!2561 Empty!1276) (charsOf!372 (apply!757 (singletonSeq!273 call!14510) 0)))))))

(declare-fun lt!109910 () List!3820)

(assert (=> b!268107 (= lt!109910 (list!1550 (singletonSeq!273 call!14510)))))

(declare-fun lt!109909 () Unit!4824)

(assert (=> b!268107 (= lt!109909 (lemmaDropApply!200 lt!109910 0))))

(assert (=> b!268107 (= (head!884 (drop!213 lt!109910 0)) (apply!758 lt!109910 0))))

(declare-fun lt!109914 () Unit!4824)

(assert (=> b!268107 (= lt!109914 lt!109909)))

(declare-fun lt!109912 () List!3820)

(assert (=> b!268107 (= lt!109912 (list!1550 (singletonSeq!273 call!14510)))))

(declare-fun lt!109908 () Unit!4824)

(assert (=> b!268107 (= lt!109908 (lemmaDropTail!192 lt!109912 0))))

(assert (=> b!268107 (= (tail!474 (drop!213 lt!109912 0)) (drop!213 lt!109912 (+ 0 1)))))

(declare-fun lt!109913 () Unit!4824)

(assert (=> b!268107 (= lt!109913 lt!109908)))

(assert (= (and d!77547 res!122760) b!268105))

(assert (= (and d!77547 c!50772) b!268106))

(assert (= (and d!77547 (not c!50772)) b!268107))

(assert (=> d!77547 m!335081))

(declare-fun m!336909 () Bool)

(assert (=> d!77547 m!336909))

(assert (=> d!77547 m!334705))

(assert (=> d!77547 m!336909))

(assert (=> d!77547 m!334705))

(declare-fun m!336911 () Bool)

(assert (=> d!77547 m!336911))

(assert (=> d!77547 m!335081))

(declare-fun m!336913 () Bool)

(assert (=> d!77547 m!336913))

(declare-fun m!336915 () Bool)

(assert (=> d!77547 m!336915))

(assert (=> b!268105 m!335081))

(assert (=> b!268105 m!336913))

(declare-fun m!336917 () Bool)

(assert (=> b!268107 m!336917))

(declare-fun m!336919 () Bool)

(assert (=> b!268107 m!336919))

(assert (=> b!268107 m!336917))

(declare-fun m!336921 () Bool)

(assert (=> b!268107 m!336921))

(declare-fun m!336923 () Bool)

(assert (=> b!268107 m!336923))

(declare-fun m!336925 () Bool)

(assert (=> b!268107 m!336925))

(declare-fun m!336927 () Bool)

(assert (=> b!268107 m!336927))

(assert (=> b!268107 m!335081))

(declare-fun m!336929 () Bool)

(assert (=> b!268107 m!336929))

(assert (=> b!268107 m!336929))

(declare-fun m!336931 () Bool)

(assert (=> b!268107 m!336931))

(assert (=> b!268107 m!336925))

(declare-fun m!336933 () Bool)

(assert (=> b!268107 m!336933))

(declare-fun m!336935 () Bool)

(assert (=> b!268107 m!336935))

(assert (=> b!268107 m!335081))

(declare-fun m!336937 () Bool)

(assert (=> b!268107 m!336937))

(assert (=> b!268107 m!335081))

(declare-fun m!336939 () Bool)

(assert (=> b!268107 m!336939))

(declare-fun m!336941 () Bool)

(assert (=> b!268107 m!336941))

(assert (=> b!268107 m!336931))

(assert (=> b!268107 m!336939))

(assert (=> b!267084 d!77547))

(declare-fun d!77549 () Bool)

(declare-fun e!166584 () Bool)

(assert (=> d!77549 e!166584))

(declare-fun res!122761 () Bool)

(assert (=> d!77549 (=> (not res!122761) (not e!166584))))

(declare-fun lt!109915 () BalanceConc!2562)

(assert (=> d!77549 (= res!122761 (= (list!1550 lt!109915) (Cons!3810 call!14510 Nil!3810)))))

(assert (=> d!77549 (= lt!109915 (singleton!109 call!14510))))

(assert (=> d!77549 (= (singletonSeq!273 call!14510) lt!109915)))

(declare-fun b!268108 () Bool)

(assert (=> b!268108 (= e!166584 (isBalanced!344 (c!50469 lt!109915)))))

(assert (= (and d!77549 res!122761) b!268108))

(declare-fun m!336943 () Bool)

(assert (=> d!77549 m!336943))

(declare-fun m!336945 () Bool)

(assert (=> d!77549 m!336945))

(declare-fun m!336947 () Bool)

(assert (=> b!268108 m!336947))

(assert (=> b!267084 d!77549))

(declare-fun d!77551 () Bool)

(assert (=> d!77551 (isDefined!644 (maxPrefix!331 thiss!17480 rules!1920 (++!988 (list!1547 call!14509) (list!1547 lt!109471))))))

(declare-fun lt!109932 () Unit!4824)

(declare-fun e!166585 () Unit!4824)

(assert (=> d!77551 (= lt!109932 e!166585)))

(declare-fun c!50773 () Bool)

(assert (=> d!77551 (= c!50773 (isEmpty!2408 (maxPrefix!331 thiss!17480 rules!1920 (++!988 (list!1547 call!14509) (list!1547 lt!109471)))))))

(declare-fun lt!109928 () Unit!4824)

(declare-fun lt!109919 () Unit!4824)

(assert (=> d!77551 (= lt!109928 lt!109919)))

(declare-fun e!166586 () Bool)

(assert (=> d!77551 e!166586))

(declare-fun res!122762 () Bool)

(assert (=> d!77551 (=> (not res!122762) (not e!166586))))

(declare-fun lt!109920 () Token!1198)

(assert (=> d!77551 (= res!122762 (isDefined!646 (getRuleFromTag!121 thiss!17480 rules!1920 (tag!937 (rule!1312 lt!109920)))))))

(assert (=> d!77551 (= lt!109919 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!121 thiss!17480 rules!1920 (list!1547 call!14509) lt!109920))))

(declare-fun lt!109923 () Unit!4824)

(declare-fun lt!109931 () Unit!4824)

(assert (=> d!77551 (= lt!109923 lt!109931)))

(declare-fun lt!109926 () List!3818)

(assert (=> d!77551 (isPrefix!394 lt!109926 (++!988 (list!1547 call!14509) (list!1547 lt!109471)))))

(assert (=> d!77551 (= lt!109931 (lemmaPrefixStaysPrefixWhenAddingToSuffix!53 lt!109926 (list!1547 call!14509) (list!1547 lt!109471)))))

(assert (=> d!77551 (= lt!109926 (list!1547 (charsOf!372 lt!109920)))))

(declare-fun lt!109921 () Unit!4824)

(declare-fun lt!109929 () Unit!4824)

(assert (=> d!77551 (= lt!109921 lt!109929)))

(declare-fun lt!109927 () List!3818)

(declare-fun lt!109922 () List!3818)

(assert (=> d!77551 (isPrefix!394 lt!109927 (++!988 lt!109927 lt!109922))))

(assert (=> d!77551 (= lt!109929 (lemmaConcatTwoListThenFirstIsPrefix!289 lt!109927 lt!109922))))

(assert (=> d!77551 (= lt!109922 (_2!2349 (get!1255 (maxPrefix!331 thiss!17480 rules!1920 (list!1547 call!14509)))))))

(assert (=> d!77551 (= lt!109927 (list!1547 (charsOf!372 lt!109920)))))

(assert (=> d!77551 (= lt!109920 (head!884 (list!1550 (_1!2346 (lex!404 thiss!17480 rules!1920 (seqFromList!821 (list!1547 call!14509)))))))))

(assert (=> d!77551 (not (isEmpty!2398 rules!1920))))

(assert (=> d!77551 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!108 thiss!17480 rules!1920 (list!1547 call!14509) (list!1547 lt!109471)) lt!109932)))

(declare-fun b!268111 () Bool)

(declare-fun Unit!4850 () Unit!4824)

(assert (=> b!268111 (= e!166585 Unit!4850)))

(declare-fun lt!109918 () List!3818)

(assert (=> b!268111 (= lt!109918 (++!988 (list!1547 call!14509) (list!1547 lt!109471)))))

(declare-fun lt!109925 () Unit!4824)

(assert (=> b!268111 (= lt!109925 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!53 thiss!17480 (rule!1312 lt!109920) rules!1920 lt!109918))))

(assert (=> b!268111 (isEmpty!2408 (maxPrefixOneRule!139 thiss!17480 (rule!1312 lt!109920) lt!109918))))

(declare-fun lt!109924 () Unit!4824)

(assert (=> b!268111 (= lt!109924 lt!109925)))

(declare-fun lt!109916 () List!3818)

(assert (=> b!268111 (= lt!109916 (list!1547 (charsOf!372 lt!109920)))))

(declare-fun lt!109917 () Unit!4824)

(assert (=> b!268111 (= lt!109917 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!53 thiss!17480 (rule!1312 lt!109920) lt!109916 (++!988 (list!1547 call!14509) (list!1547 lt!109471))))))

(assert (=> b!268111 (not (matchR!273 (regex!727 (rule!1312 lt!109920)) lt!109916))))

(declare-fun lt!109930 () Unit!4824)

(assert (=> b!268111 (= lt!109930 lt!109917)))

(assert (=> b!268111 false))

(declare-fun b!268112 () Bool)

(declare-fun Unit!4851 () Unit!4824)

(assert (=> b!268112 (= e!166585 Unit!4851)))

(declare-fun b!268110 () Bool)

(assert (=> b!268110 (= e!166586 (= (rule!1312 lt!109920) (get!1257 (getRuleFromTag!121 thiss!17480 rules!1920 (tag!937 (rule!1312 lt!109920))))))))

(declare-fun b!268109 () Bool)

(declare-fun res!122763 () Bool)

(assert (=> b!268109 (=> (not res!122763) (not e!166586))))

(assert (=> b!268109 (= res!122763 (matchR!273 (regex!727 (get!1257 (getRuleFromTag!121 thiss!17480 rules!1920 (tag!937 (rule!1312 lt!109920))))) (list!1547 (charsOf!372 lt!109920))))))

(assert (= (and d!77551 res!122762) b!268109))

(assert (= (and b!268109 res!122763) b!268110))

(assert (= (and d!77551 c!50773) b!268111))

(assert (= (and d!77551 (not c!50773)) b!268112))

(declare-fun m!336949 () Bool)

(assert (=> d!77551 m!336949))

(declare-fun m!336951 () Bool)

(assert (=> d!77551 m!336951))

(declare-fun m!336953 () Bool)

(assert (=> d!77551 m!336953))

(declare-fun m!336955 () Bool)

(assert (=> d!77551 m!336955))

(declare-fun m!336957 () Bool)

(assert (=> d!77551 m!336957))

(declare-fun m!336959 () Bool)

(assert (=> d!77551 m!336959))

(declare-fun m!336961 () Bool)

(assert (=> d!77551 m!336961))

(declare-fun m!336963 () Bool)

(assert (=> d!77551 m!336963))

(declare-fun m!336965 () Bool)

(assert (=> d!77551 m!336965))

(declare-fun m!336967 () Bool)

(assert (=> d!77551 m!336967))

(declare-fun m!336969 () Bool)

(assert (=> d!77551 m!336969))

(declare-fun m!336971 () Bool)

(assert (=> d!77551 m!336971))

(declare-fun m!336973 () Bool)

(assert (=> d!77551 m!336973))

(assert (=> d!77551 m!336949))

(declare-fun m!336975 () Bool)

(assert (=> d!77551 m!336975))

(assert (=> d!77551 m!336967))

(assert (=> d!77551 m!336949))

(assert (=> d!77551 m!335079))

(declare-fun m!336977 () Bool)

(assert (=> d!77551 m!336977))

(assert (=> d!77551 m!335079))

(declare-fun m!336979 () Bool)

(assert (=> d!77551 m!336979))

(assert (=> d!77551 m!336963))

(assert (=> d!77551 m!335079))

(assert (=> d!77551 m!335083))

(assert (=> d!77551 m!336967))

(assert (=> d!77551 m!336957))

(assert (=> d!77551 m!336977))

(declare-fun m!336981 () Bool)

(assert (=> d!77551 m!336981))

(assert (=> d!77551 m!334541))

(assert (=> d!77551 m!335079))

(assert (=> d!77551 m!335083))

(declare-fun m!336983 () Bool)

(assert (=> d!77551 m!336983))

(assert (=> d!77551 m!336961))

(declare-fun m!336985 () Bool)

(assert (=> d!77551 m!336985))

(assert (=> d!77551 m!336971))

(declare-fun m!336987 () Bool)

(assert (=> d!77551 m!336987))

(assert (=> d!77551 m!335079))

(assert (=> d!77551 m!336953))

(declare-fun m!336989 () Bool)

(assert (=> b!268111 m!336989))

(assert (=> b!268111 m!336963))

(assert (=> b!268111 m!336963))

(assert (=> b!268111 m!336965))

(declare-fun m!336991 () Bool)

(assert (=> b!268111 m!336991))

(assert (=> b!268111 m!335079))

(assert (=> b!268111 m!335083))

(assert (=> b!268111 m!336967))

(assert (=> b!268111 m!336991))

(declare-fun m!336993 () Bool)

(assert (=> b!268111 m!336993))

(declare-fun m!336995 () Bool)

(assert (=> b!268111 m!336995))

(assert (=> b!268111 m!336967))

(declare-fun m!336997 () Bool)

(assert (=> b!268111 m!336997))

(assert (=> b!268110 m!336971))

(assert (=> b!268110 m!336971))

(declare-fun m!336999 () Bool)

(assert (=> b!268110 m!336999))

(assert (=> b!268109 m!336963))

(assert (=> b!268109 m!336963))

(assert (=> b!268109 m!336965))

(assert (=> b!268109 m!336965))

(declare-fun m!337001 () Bool)

(assert (=> b!268109 m!337001))

(assert (=> b!268109 m!336971))

(assert (=> b!268109 m!336971))

(assert (=> b!268109 m!336999))

(assert (=> b!267084 d!77551))

(declare-fun d!77553 () Bool)

(declare-fun lt!109933 () BalanceConc!2560)

(assert (=> d!77553 (= (list!1547 lt!109933) (printList!289 thiss!17480 (list!1550 (singletonSeq!273 call!14510))))))

(assert (=> d!77553 (= lt!109933 (printTailRec!301 thiss!17480 (singletonSeq!273 call!14510) 0 (BalanceConc!2561 Empty!1276)))))

(assert (=> d!77553 (= (print!338 thiss!17480 (singletonSeq!273 call!14510)) lt!109933)))

(declare-fun bs!29565 () Bool)

(assert (= bs!29565 d!77553))

(declare-fun m!337003 () Bool)

(assert (=> bs!29565 m!337003))

(assert (=> bs!29565 m!335081))

(assert (=> bs!29565 m!336937))

(assert (=> bs!29565 m!336937))

(declare-fun m!337005 () Bool)

(assert (=> bs!29565 m!337005))

(assert (=> bs!29565 m!335081))

(assert (=> bs!29565 m!335089))

(assert (=> b!267084 d!77553))

(declare-fun d!77555 () Bool)

(assert (=> d!77555 (= (list!1547 call!14509) (list!1551 (c!50467 call!14509)))))

(declare-fun bs!29566 () Bool)

(assert (= bs!29566 d!77555))

(declare-fun m!337007 () Bool)

(assert (=> bs!29566 m!337007))

(assert (=> b!267084 d!77555))

(declare-fun d!77557 () Bool)

(declare-fun lt!109934 () Bool)

(assert (=> d!77557 (= lt!109934 (isEmpty!2402 (list!1547 (_2!2346 lt!109306))))))

(assert (=> d!77557 (= lt!109934 (isEmpty!2403 (c!50467 (_2!2346 lt!109306))))))

(assert (=> d!77557 (= (isEmpty!2400 (_2!2346 lt!109306)) lt!109934)))

(declare-fun bs!29567 () Bool)

(assert (= bs!29567 d!77557))

(declare-fun m!337009 () Bool)

(assert (=> bs!29567 m!337009))

(assert (=> bs!29567 m!337009))

(declare-fun m!337011 () Bool)

(assert (=> bs!29567 m!337011))

(declare-fun m!337013 () Bool)

(assert (=> bs!29567 m!337013))

(assert (=> b!266868 d!77557))

(assert (=> b!267286 d!77165))

(assert (=> b!267088 d!77251))

(declare-fun d!77559 () Bool)

(declare-fun lt!109935 () BalanceConc!2560)

(assert (=> d!77559 (= (list!1547 lt!109935) (printList!289 thiss!17480 (list!1550 (singletonSeq!273 (h!9207 tokens!465)))))))

(assert (=> d!77559 (= lt!109935 (printTailRec!301 thiss!17480 (singletonSeq!273 (h!9207 tokens!465)) 0 (BalanceConc!2561 Empty!1276)))))

(assert (=> d!77559 (= (print!338 thiss!17480 (singletonSeq!273 (h!9207 tokens!465))) lt!109935)))

(declare-fun bs!29568 () Bool)

(assert (= bs!29568 d!77559))

(declare-fun m!337015 () Bool)

(assert (=> bs!29568 m!337015))

(assert (=> bs!29568 m!334591))

(assert (=> bs!29568 m!334629))

(assert (=> bs!29568 m!334629))

(declare-fun m!337017 () Bool)

(assert (=> bs!29568 m!337017))

(assert (=> bs!29568 m!334591))

(assert (=> bs!29568 m!335373))

(assert (=> b!267293 d!77559))

(assert (=> b!267293 d!77003))

(declare-fun d!77561 () Bool)

(declare-fun lt!109939 () BalanceConc!2560)

(assert (=> d!77561 (= (list!1547 lt!109939) (printListTailRec!125 thiss!17480 (dropList!160 (singletonSeq!273 (h!9207 tokens!465)) 0) (list!1547 (BalanceConc!2561 Empty!1276))))))

(declare-fun e!166588 () BalanceConc!2560)

(assert (=> d!77561 (= lt!109939 e!166588)))

(declare-fun c!50774 () Bool)

(assert (=> d!77561 (= c!50774 (>= 0 (size!3028 (singletonSeq!273 (h!9207 tokens!465)))))))

(declare-fun e!166587 () Bool)

(assert (=> d!77561 e!166587))

(declare-fun res!122764 () Bool)

(assert (=> d!77561 (=> (not res!122764) (not e!166587))))

(assert (=> d!77561 (= res!122764 (>= 0 0))))

(assert (=> d!77561 (= (printTailRec!301 thiss!17480 (singletonSeq!273 (h!9207 tokens!465)) 0 (BalanceConc!2561 Empty!1276)) lt!109939)))

(declare-fun b!268113 () Bool)

(assert (=> b!268113 (= e!166587 (<= 0 (size!3028 (singletonSeq!273 (h!9207 tokens!465)))))))

(declare-fun b!268114 () Bool)

(assert (=> b!268114 (= e!166588 (BalanceConc!2561 Empty!1276))))

(declare-fun b!268115 () Bool)

(assert (=> b!268115 (= e!166588 (printTailRec!301 thiss!17480 (singletonSeq!273 (h!9207 tokens!465)) (+ 0 1) (++!990 (BalanceConc!2561 Empty!1276) (charsOf!372 (apply!757 (singletonSeq!273 (h!9207 tokens!465)) 0)))))))

(declare-fun lt!109938 () List!3820)

(assert (=> b!268115 (= lt!109938 (list!1550 (singletonSeq!273 (h!9207 tokens!465))))))

(declare-fun lt!109937 () Unit!4824)

(assert (=> b!268115 (= lt!109937 (lemmaDropApply!200 lt!109938 0))))

(assert (=> b!268115 (= (head!884 (drop!213 lt!109938 0)) (apply!758 lt!109938 0))))

(declare-fun lt!109942 () Unit!4824)

(assert (=> b!268115 (= lt!109942 lt!109937)))

(declare-fun lt!109940 () List!3820)

(assert (=> b!268115 (= lt!109940 (list!1550 (singletonSeq!273 (h!9207 tokens!465))))))

(declare-fun lt!109936 () Unit!4824)

(assert (=> b!268115 (= lt!109936 (lemmaDropTail!192 lt!109940 0))))

(assert (=> b!268115 (= (tail!474 (drop!213 lt!109940 0)) (drop!213 lt!109940 (+ 0 1)))))

(declare-fun lt!109941 () Unit!4824)

(assert (=> b!268115 (= lt!109941 lt!109936)))

(assert (= (and d!77561 res!122764) b!268113))

(assert (= (and d!77561 c!50774) b!268114))

(assert (= (and d!77561 (not c!50774)) b!268115))

(assert (=> d!77561 m!334591))

(declare-fun m!337019 () Bool)

(assert (=> d!77561 m!337019))

(assert (=> d!77561 m!334705))

(assert (=> d!77561 m!337019))

(assert (=> d!77561 m!334705))

(declare-fun m!337021 () Bool)

(assert (=> d!77561 m!337021))

(assert (=> d!77561 m!334591))

(declare-fun m!337023 () Bool)

(assert (=> d!77561 m!337023))

(declare-fun m!337025 () Bool)

(assert (=> d!77561 m!337025))

(assert (=> b!268113 m!334591))

(assert (=> b!268113 m!337023))

(declare-fun m!337027 () Bool)

(assert (=> b!268115 m!337027))

(declare-fun m!337029 () Bool)

(assert (=> b!268115 m!337029))

(assert (=> b!268115 m!337027))

(declare-fun m!337031 () Bool)

(assert (=> b!268115 m!337031))

(declare-fun m!337033 () Bool)

(assert (=> b!268115 m!337033))

(declare-fun m!337035 () Bool)

(assert (=> b!268115 m!337035))

(declare-fun m!337037 () Bool)

(assert (=> b!268115 m!337037))

(assert (=> b!268115 m!334591))

(declare-fun m!337039 () Bool)

(assert (=> b!268115 m!337039))

(assert (=> b!268115 m!337039))

(declare-fun m!337041 () Bool)

(assert (=> b!268115 m!337041))

(assert (=> b!268115 m!337035))

(declare-fun m!337043 () Bool)

(assert (=> b!268115 m!337043))

(declare-fun m!337045 () Bool)

(assert (=> b!268115 m!337045))

(assert (=> b!268115 m!334591))

(assert (=> b!268115 m!334629))

(assert (=> b!268115 m!334591))

(declare-fun m!337047 () Bool)

(assert (=> b!268115 m!337047))

(declare-fun m!337049 () Bool)

(assert (=> b!268115 m!337049))

(assert (=> b!268115 m!337041))

(assert (=> b!268115 m!337047))

(assert (=> b!267293 d!77561))

(declare-fun d!77563 () Bool)

(assert (=> d!77563 (isDefined!644 (maxPrefix!331 thiss!17480 rules!1920 (++!988 call!14535 lt!109554)))))

(declare-fun lt!109959 () Unit!4824)

(declare-fun e!166589 () Unit!4824)

(assert (=> d!77563 (= lt!109959 e!166589)))

(declare-fun c!50775 () Bool)

(assert (=> d!77563 (= c!50775 (isEmpty!2408 (maxPrefix!331 thiss!17480 rules!1920 (++!988 call!14535 lt!109554))))))

(declare-fun lt!109955 () Unit!4824)

(declare-fun lt!109946 () Unit!4824)

(assert (=> d!77563 (= lt!109955 lt!109946)))

(declare-fun e!166590 () Bool)

(assert (=> d!77563 e!166590))

(declare-fun res!122765 () Bool)

(assert (=> d!77563 (=> (not res!122765) (not e!166590))))

(declare-fun lt!109947 () Token!1198)

(assert (=> d!77563 (= res!122765 (isDefined!646 (getRuleFromTag!121 thiss!17480 rules!1920 (tag!937 (rule!1312 lt!109947)))))))

(assert (=> d!77563 (= lt!109946 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!121 thiss!17480 rules!1920 call!14535 lt!109947))))

(declare-fun lt!109950 () Unit!4824)

(declare-fun lt!109958 () Unit!4824)

(assert (=> d!77563 (= lt!109950 lt!109958)))

(declare-fun lt!109953 () List!3818)

(assert (=> d!77563 (isPrefix!394 lt!109953 (++!988 call!14535 lt!109554))))

(assert (=> d!77563 (= lt!109958 (lemmaPrefixStaysPrefixWhenAddingToSuffix!53 lt!109953 call!14535 lt!109554))))

(assert (=> d!77563 (= lt!109953 (list!1547 (charsOf!372 lt!109947)))))

(declare-fun lt!109948 () Unit!4824)

(declare-fun lt!109956 () Unit!4824)

(assert (=> d!77563 (= lt!109948 lt!109956)))

(declare-fun lt!109954 () List!3818)

(declare-fun lt!109949 () List!3818)

(assert (=> d!77563 (isPrefix!394 lt!109954 (++!988 lt!109954 lt!109949))))

(assert (=> d!77563 (= lt!109956 (lemmaConcatTwoListThenFirstIsPrefix!289 lt!109954 lt!109949))))

(assert (=> d!77563 (= lt!109949 (_2!2349 (get!1255 (maxPrefix!331 thiss!17480 rules!1920 call!14535))))))

(assert (=> d!77563 (= lt!109954 (list!1547 (charsOf!372 lt!109947)))))

(assert (=> d!77563 (= lt!109947 (head!884 (list!1550 (_1!2346 (lex!404 thiss!17480 rules!1920 (seqFromList!821 call!14535))))))))

(assert (=> d!77563 (not (isEmpty!2398 rules!1920))))

(assert (=> d!77563 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!108 thiss!17480 rules!1920 call!14535 lt!109554) lt!109959)))

(declare-fun b!268118 () Bool)

(declare-fun Unit!4852 () Unit!4824)

(assert (=> b!268118 (= e!166589 Unit!4852)))

(declare-fun lt!109945 () List!3818)

(assert (=> b!268118 (= lt!109945 (++!988 call!14535 lt!109554))))

(declare-fun lt!109952 () Unit!4824)

(assert (=> b!268118 (= lt!109952 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!53 thiss!17480 (rule!1312 lt!109947) rules!1920 lt!109945))))

(assert (=> b!268118 (isEmpty!2408 (maxPrefixOneRule!139 thiss!17480 (rule!1312 lt!109947) lt!109945))))

(declare-fun lt!109951 () Unit!4824)

(assert (=> b!268118 (= lt!109951 lt!109952)))

(declare-fun lt!109943 () List!3818)

(assert (=> b!268118 (= lt!109943 (list!1547 (charsOf!372 lt!109947)))))

(declare-fun lt!109944 () Unit!4824)

(assert (=> b!268118 (= lt!109944 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!53 thiss!17480 (rule!1312 lt!109947) lt!109943 (++!988 call!14535 lt!109554)))))

(assert (=> b!268118 (not (matchR!273 (regex!727 (rule!1312 lt!109947)) lt!109943))))

(declare-fun lt!109957 () Unit!4824)

(assert (=> b!268118 (= lt!109957 lt!109944)))

(assert (=> b!268118 false))

(declare-fun b!268119 () Bool)

(declare-fun Unit!4853 () Unit!4824)

(assert (=> b!268119 (= e!166589 Unit!4853)))

(declare-fun b!268117 () Bool)

(assert (=> b!268117 (= e!166590 (= (rule!1312 lt!109947) (get!1257 (getRuleFromTag!121 thiss!17480 rules!1920 (tag!937 (rule!1312 lt!109947))))))))

(declare-fun b!268116 () Bool)

(declare-fun res!122766 () Bool)

(assert (=> b!268116 (=> (not res!122766) (not e!166590))))

(assert (=> b!268116 (= res!122766 (matchR!273 (regex!727 (get!1257 (getRuleFromTag!121 thiss!17480 rules!1920 (tag!937 (rule!1312 lt!109947))))) (list!1547 (charsOf!372 lt!109947))))))

(assert (= (and d!77563 res!122765) b!268116))

(assert (= (and b!268116 res!122766) b!268117))

(assert (= (and d!77563 c!50775) b!268118))

(assert (= (and d!77563 (not c!50775)) b!268119))

(declare-fun m!337051 () Bool)

(assert (=> d!77563 m!337051))

(declare-fun m!337053 () Bool)

(assert (=> d!77563 m!337053))

(declare-fun m!337055 () Bool)

(assert (=> d!77563 m!337055))

(declare-fun m!337057 () Bool)

(assert (=> d!77563 m!337057))

(declare-fun m!337059 () Bool)

(assert (=> d!77563 m!337059))

(declare-fun m!337061 () Bool)

(assert (=> d!77563 m!337061))

(declare-fun m!337063 () Bool)

(assert (=> d!77563 m!337063))

(declare-fun m!337065 () Bool)

(assert (=> d!77563 m!337065))

(declare-fun m!337067 () Bool)

(assert (=> d!77563 m!337067))

(declare-fun m!337069 () Bool)

(assert (=> d!77563 m!337069))

(declare-fun m!337071 () Bool)

(assert (=> d!77563 m!337071))

(declare-fun m!337073 () Bool)

(assert (=> d!77563 m!337073))

(declare-fun m!337075 () Bool)

(assert (=> d!77563 m!337075))

(assert (=> d!77563 m!337051))

(declare-fun m!337077 () Bool)

(assert (=> d!77563 m!337077))

(assert (=> d!77563 m!337069))

(assert (=> d!77563 m!337051))

(declare-fun m!337079 () Bool)

(assert (=> d!77563 m!337079))

(declare-fun m!337081 () Bool)

(assert (=> d!77563 m!337081))

(assert (=> d!77563 m!337065))

(assert (=> d!77563 m!337069))

(assert (=> d!77563 m!337059))

(assert (=> d!77563 m!337079))

(declare-fun m!337083 () Bool)

(assert (=> d!77563 m!337083))

(assert (=> d!77563 m!334541))

(declare-fun m!337085 () Bool)

(assert (=> d!77563 m!337085))

(assert (=> d!77563 m!337063))

(declare-fun m!337087 () Bool)

(assert (=> d!77563 m!337087))

(assert (=> d!77563 m!337073))

(declare-fun m!337089 () Bool)

(assert (=> d!77563 m!337089))

(assert (=> d!77563 m!337055))

(declare-fun m!337091 () Bool)

(assert (=> b!268118 m!337091))

(assert (=> b!268118 m!337065))

(assert (=> b!268118 m!337065))

(assert (=> b!268118 m!337067))

(declare-fun m!337093 () Bool)

(assert (=> b!268118 m!337093))

(assert (=> b!268118 m!337069))

(assert (=> b!268118 m!337093))

(declare-fun m!337095 () Bool)

(assert (=> b!268118 m!337095))

(declare-fun m!337097 () Bool)

(assert (=> b!268118 m!337097))

(assert (=> b!268118 m!337069))

(declare-fun m!337099 () Bool)

(assert (=> b!268118 m!337099))

(assert (=> b!268117 m!337073))

(assert (=> b!268117 m!337073))

(declare-fun m!337101 () Bool)

(assert (=> b!268117 m!337101))

(assert (=> b!268116 m!337065))

(assert (=> b!268116 m!337065))

(assert (=> b!268116 m!337067))

(assert (=> b!268116 m!337067))

(declare-fun m!337103 () Bool)

(assert (=> b!268116 m!337103))

(assert (=> b!268116 m!337073))

(assert (=> b!268116 m!337073))

(assert (=> b!268116 m!337101))

(assert (=> b!267293 d!77563))

(declare-fun bs!29569 () Bool)

(declare-fun d!77565 () Bool)

(assert (= bs!29569 (and d!77565 d!77317)))

(declare-fun lambda!9054 () Int)

(assert (=> bs!29569 (= (and (= (toChars!1317 (transformation!727 (h!9206 rules!1920))) (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465))))) (= (toValue!1458 (transformation!727 (h!9206 rules!1920))) (toValue!1458 (transformation!727 (rule!1312 (h!9207 tokens!465)))))) (= lambda!9054 lambda!9038))))

(declare-fun bs!29570 () Bool)

(assert (= bs!29570 (and d!77565 d!77433)))

(assert (=> bs!29570 (= (and (= (toChars!1317 (transformation!727 (h!9206 rules!1920))) (toChars!1317 (transformation!727 (rule!1312 separatorToken!170)))) (= (toValue!1458 (transformation!727 (h!9206 rules!1920))) (toValue!1458 (transformation!727 (rule!1312 separatorToken!170))))) (= lambda!9054 lambda!9042))))

(assert (=> d!77565 true))

(assert (=> d!77565 (< (dynLambda!1943 order!2917 (toChars!1317 (transformation!727 (h!9206 rules!1920)))) (dynLambda!1948 order!2921 lambda!9054))))

(assert (=> d!77565 true))

(assert (=> d!77565 (< (dynLambda!1941 order!2913 (toValue!1458 (transformation!727 (h!9206 rules!1920)))) (dynLambda!1948 order!2921 lambda!9054))))

(assert (=> d!77565 (= (semiInverseModEq!255 (toChars!1317 (transformation!727 (h!9206 rules!1920))) (toValue!1458 (transformation!727 (h!9206 rules!1920)))) (Forall!170 lambda!9054))))

(declare-fun bs!29571 () Bool)

(assert (= bs!29571 d!77565))

(declare-fun m!337105 () Bool)

(assert (=> bs!29571 m!337105))

(assert (=> d!77107 d!77565))

(declare-fun b!268120 () Bool)

(declare-fun e!166592 () Int)

(assert (=> b!268120 (= e!166592 0)))

(declare-fun b!268121 () Bool)

(declare-fun e!166591 () Bool)

(declare-fun lt!109960 () List!3820)

(declare-fun e!166594 () Int)

(assert (=> b!268121 (= e!166591 (= (size!3031 lt!109960) e!166594))))

(declare-fun c!50777 () Bool)

(assert (=> b!268121 (= c!50777 (<= (+ 0 1) 0))))

(declare-fun d!77567 () Bool)

(assert (=> d!77567 e!166591))

(declare-fun res!122767 () Bool)

(assert (=> d!77567 (=> (not res!122767) (not e!166591))))

(assert (=> d!77567 (= res!122767 (= ((_ map implies) (content!544 lt!109960) (content!544 lt!109327)) ((as const (InoxSet Token!1198)) true)))))

(declare-fun e!166595 () List!3820)

(assert (=> d!77567 (= lt!109960 e!166595)))

(declare-fun c!50776 () Bool)

(assert (=> d!77567 (= c!50776 ((_ is Nil!3810) lt!109327))))

(assert (=> d!77567 (= (drop!213 lt!109327 (+ 0 1)) lt!109960)))

(declare-fun b!268122 () Bool)

(declare-fun e!166593 () List!3820)

(assert (=> b!268122 (= e!166593 (drop!213 (t!37804 lt!109327) (- (+ 0 1) 1)))))

(declare-fun b!268123 () Bool)

(declare-fun call!14583 () Int)

(assert (=> b!268123 (= e!166594 call!14583)))

(declare-fun b!268124 () Bool)

(assert (=> b!268124 (= e!166594 e!166592)))

(declare-fun c!50779 () Bool)

(assert (=> b!268124 (= c!50779 (>= (+ 0 1) call!14583))))

(declare-fun b!268125 () Bool)

(assert (=> b!268125 (= e!166592 (- call!14583 (+ 0 1)))))

(declare-fun b!268126 () Bool)

(assert (=> b!268126 (= e!166595 e!166593)))

(declare-fun c!50778 () Bool)

(assert (=> b!268126 (= c!50778 (<= (+ 0 1) 0))))

(declare-fun bm!14578 () Bool)

(assert (=> bm!14578 (= call!14583 (size!3031 lt!109327))))

(declare-fun b!268127 () Bool)

(assert (=> b!268127 (= e!166595 Nil!3810)))

(declare-fun b!268128 () Bool)

(assert (=> b!268128 (= e!166593 lt!109327)))

(assert (= (and d!77567 c!50776) b!268127))

(assert (= (and d!77567 (not c!50776)) b!268126))

(assert (= (and b!268126 c!50778) b!268128))

(assert (= (and b!268126 (not c!50778)) b!268122))

(assert (= (and d!77567 res!122767) b!268121))

(assert (= (and b!268121 c!50777) b!268123))

(assert (= (and b!268121 (not c!50777)) b!268124))

(assert (= (and b!268124 c!50779) b!268120))

(assert (= (and b!268124 (not c!50779)) b!268125))

(assert (= (or b!268123 b!268124 b!268125) bm!14578))

(declare-fun m!337107 () Bool)

(assert (=> b!268121 m!337107))

(declare-fun m!337109 () Bool)

(assert (=> d!77567 m!337109))

(declare-fun m!337111 () Bool)

(assert (=> d!77567 m!337111))

(declare-fun m!337113 () Bool)

(assert (=> b!268122 m!337113))

(declare-fun m!337115 () Bool)

(assert (=> bm!14578 m!337115))

(assert (=> b!266902 d!77567))

(declare-fun b!268129 () Bool)

(declare-fun e!166597 () Int)

(assert (=> b!268129 (= e!166597 0)))

(declare-fun b!268130 () Bool)

(declare-fun e!166596 () Bool)

(declare-fun lt!109961 () List!3820)

(declare-fun e!166599 () Int)

(assert (=> b!268130 (= e!166596 (= (size!3031 lt!109961) e!166599))))

(declare-fun c!50781 () Bool)

(assert (=> b!268130 (= c!50781 (<= 0 0))))

(declare-fun d!77569 () Bool)

(assert (=> d!77569 e!166596))

(declare-fun res!122768 () Bool)

(assert (=> d!77569 (=> (not res!122768) (not e!166596))))

(assert (=> d!77569 (= res!122768 (= ((_ map implies) (content!544 lt!109961) (content!544 lt!109327)) ((as const (InoxSet Token!1198)) true)))))

(declare-fun e!166600 () List!3820)

(assert (=> d!77569 (= lt!109961 e!166600)))

(declare-fun c!50780 () Bool)

(assert (=> d!77569 (= c!50780 ((_ is Nil!3810) lt!109327))))

(assert (=> d!77569 (= (drop!213 lt!109327 0) lt!109961)))

(declare-fun b!268131 () Bool)

(declare-fun e!166598 () List!3820)

(assert (=> b!268131 (= e!166598 (drop!213 (t!37804 lt!109327) (- 0 1)))))

(declare-fun b!268132 () Bool)

(declare-fun call!14584 () Int)

(assert (=> b!268132 (= e!166599 call!14584)))

(declare-fun b!268133 () Bool)

(assert (=> b!268133 (= e!166599 e!166597)))

(declare-fun c!50783 () Bool)

(assert (=> b!268133 (= c!50783 (>= 0 call!14584))))

(declare-fun b!268134 () Bool)

(assert (=> b!268134 (= e!166597 (- call!14584 0))))

(declare-fun b!268135 () Bool)

(assert (=> b!268135 (= e!166600 e!166598)))

(declare-fun c!50782 () Bool)

(assert (=> b!268135 (= c!50782 (<= 0 0))))

(declare-fun bm!14579 () Bool)

(assert (=> bm!14579 (= call!14584 (size!3031 lt!109327))))

(declare-fun b!268136 () Bool)

(assert (=> b!268136 (= e!166600 Nil!3810)))

(declare-fun b!268137 () Bool)

(assert (=> b!268137 (= e!166598 lt!109327)))

(assert (= (and d!77569 c!50780) b!268136))

(assert (= (and d!77569 (not c!50780)) b!268135))

(assert (= (and b!268135 c!50782) b!268137))

(assert (= (and b!268135 (not c!50782)) b!268131))

(assert (= (and d!77569 res!122768) b!268130))

(assert (= (and b!268130 c!50781) b!268132))

(assert (= (and b!268130 (not c!50781)) b!268133))

(assert (= (and b!268133 c!50783) b!268129))

(assert (= (and b!268133 (not c!50783)) b!268134))

(assert (= (or b!268132 b!268133 b!268134) bm!14579))

(declare-fun m!337117 () Bool)

(assert (=> b!268130 m!337117))

(declare-fun m!337119 () Bool)

(assert (=> d!77569 m!337119))

(assert (=> d!77569 m!337111))

(declare-fun m!337121 () Bool)

(assert (=> b!268131 m!337121))

(assert (=> bm!14579 m!337115))

(assert (=> b!266902 d!77569))

(assert (=> b!266902 d!77143))

(declare-fun d!77571 () Bool)

(declare-fun lt!109962 () BalanceConc!2560)

(assert (=> d!77571 (= (list!1547 lt!109962) (originalCharacters!770 (apply!757 lt!109287 0)))))

(assert (=> d!77571 (= lt!109962 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 (apply!757 lt!109287 0)))) (value!25035 (apply!757 lt!109287 0))))))

(assert (=> d!77571 (= (charsOf!372 (apply!757 lt!109287 0)) lt!109962)))

(declare-fun b_lambda!8439 () Bool)

(assert (=> (not b_lambda!8439) (not d!77571)))

(declare-fun tb!14937 () Bool)

(declare-fun t!37999 () Bool)

(assert (=> (and b!267341 (= (toChars!1317 (transformation!727 (rule!1312 (h!9207 (t!37804 tokens!465))))) (toChars!1317 (transformation!727 (rule!1312 (apply!757 lt!109287 0))))) t!37999) tb!14937))

(declare-fun b!268138 () Bool)

(declare-fun e!166601 () Bool)

(declare-fun tp!101986 () Bool)

(assert (=> b!268138 (= e!166601 (and (inv!4709 (c!50467 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 (apply!757 lt!109287 0)))) (value!25035 (apply!757 lt!109287 0))))) tp!101986))))

(declare-fun result!18516 () Bool)

(assert (=> tb!14937 (= result!18516 (and (inv!4710 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 (apply!757 lt!109287 0)))) (value!25035 (apply!757 lt!109287 0)))) e!166601))))

(assert (= tb!14937 b!268138))

(declare-fun m!337123 () Bool)

(assert (=> b!268138 m!337123))

(declare-fun m!337125 () Bool)

(assert (=> tb!14937 m!337125))

(assert (=> d!77571 t!37999))

(declare-fun b_and!21251 () Bool)

(assert (= b_and!21243 (and (=> t!37999 result!18516) b_and!21251)))

(declare-fun tb!14939 () Bool)

(declare-fun t!38001 () Bool)

(assert (=> (and b!266835 (= (toChars!1317 (transformation!727 (h!9206 rules!1920))) (toChars!1317 (transformation!727 (rule!1312 (apply!757 lt!109287 0))))) t!38001) tb!14939))

(declare-fun result!18518 () Bool)

(assert (= result!18518 result!18516))

(assert (=> d!77571 t!38001))

(declare-fun b_and!21253 () Bool)

(assert (= b_and!21245 (and (=> t!38001 result!18518) b_and!21253)))

(declare-fun tb!14941 () Bool)

(declare-fun t!38003 () Bool)

(assert (=> (and b!266827 (= (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465)))) (toChars!1317 (transformation!727 (rule!1312 (apply!757 lt!109287 0))))) t!38003) tb!14941))

(declare-fun result!18520 () Bool)

(assert (= result!18520 result!18516))

(assert (=> d!77571 t!38003))

(declare-fun b_and!21255 () Bool)

(assert (= b_and!21241 (and (=> t!38003 result!18520) b_and!21255)))

(declare-fun tb!14943 () Bool)

(declare-fun t!38005 () Bool)

(assert (=> (and b!267380 (= (toChars!1317 (transformation!727 (h!9206 (t!37803 rules!1920)))) (toChars!1317 (transformation!727 (rule!1312 (apply!757 lt!109287 0))))) t!38005) tb!14943))

(declare-fun result!18522 () Bool)

(assert (= result!18522 result!18516))

(assert (=> d!77571 t!38005))

(declare-fun b_and!21257 () Bool)

(assert (= b_and!21249 (and (=> t!38005 result!18522) b_and!21257)))

(declare-fun tb!14945 () Bool)

(declare-fun t!38007 () Bool)

(assert (=> (and b!266822 (= (toChars!1317 (transformation!727 (rule!1312 separatorToken!170))) (toChars!1317 (transformation!727 (rule!1312 (apply!757 lt!109287 0))))) t!38007) tb!14945))

(declare-fun result!18524 () Bool)

(assert (= result!18524 result!18516))

(assert (=> d!77571 t!38007))

(declare-fun b_and!21259 () Bool)

(assert (= b_and!21247 (and (=> t!38007 result!18524) b_and!21259)))

(declare-fun m!337127 () Bool)

(assert (=> d!77571 m!337127))

(declare-fun m!337129 () Bool)

(assert (=> d!77571 m!337129))

(assert (=> b!266902 d!77571))

(declare-fun b!268139 () Bool)

(declare-fun e!166603 () Int)

(assert (=> b!268139 (= e!166603 0)))

(declare-fun b!268140 () Bool)

(declare-fun e!166602 () Bool)

(declare-fun lt!109963 () List!3820)

(declare-fun e!166605 () Int)

(assert (=> b!268140 (= e!166602 (= (size!3031 lt!109963) e!166605))))

(declare-fun c!50785 () Bool)

(assert (=> b!268140 (= c!50785 (<= 0 0))))

(declare-fun d!77573 () Bool)

(assert (=> d!77573 e!166602))

(declare-fun res!122769 () Bool)

(assert (=> d!77573 (=> (not res!122769) (not e!166602))))

(assert (=> d!77573 (= res!122769 (= ((_ map implies) (content!544 lt!109963) (content!544 lt!109325)) ((as const (InoxSet Token!1198)) true)))))

(declare-fun e!166606 () List!3820)

(assert (=> d!77573 (= lt!109963 e!166606)))

(declare-fun c!50784 () Bool)

(assert (=> d!77573 (= c!50784 ((_ is Nil!3810) lt!109325))))

(assert (=> d!77573 (= (drop!213 lt!109325 0) lt!109963)))

(declare-fun b!268141 () Bool)

(declare-fun e!166604 () List!3820)

(assert (=> b!268141 (= e!166604 (drop!213 (t!37804 lt!109325) (- 0 1)))))

(declare-fun b!268142 () Bool)

(declare-fun call!14585 () Int)

(assert (=> b!268142 (= e!166605 call!14585)))

(declare-fun b!268143 () Bool)

(assert (=> b!268143 (= e!166605 e!166603)))

(declare-fun c!50787 () Bool)

(assert (=> b!268143 (= c!50787 (>= 0 call!14585))))

(declare-fun b!268144 () Bool)

(assert (=> b!268144 (= e!166603 (- call!14585 0))))

(declare-fun b!268145 () Bool)

(assert (=> b!268145 (= e!166606 e!166604)))

(declare-fun c!50786 () Bool)

(assert (=> b!268145 (= c!50786 (<= 0 0))))

(declare-fun bm!14580 () Bool)

(assert (=> bm!14580 (= call!14585 (size!3031 lt!109325))))

(declare-fun b!268146 () Bool)

(assert (=> b!268146 (= e!166606 Nil!3810)))

(declare-fun b!268147 () Bool)

(assert (=> b!268147 (= e!166604 lt!109325)))

(assert (= (and d!77573 c!50784) b!268146))

(assert (= (and d!77573 (not c!50784)) b!268145))

(assert (= (and b!268145 c!50786) b!268147))

(assert (= (and b!268145 (not c!50786)) b!268141))

(assert (= (and d!77573 res!122769) b!268140))

(assert (= (and b!268140 c!50785) b!268142))

(assert (= (and b!268140 (not c!50785)) b!268143))

(assert (= (and b!268143 c!50787) b!268139))

(assert (= (and b!268143 (not c!50787)) b!268144))

(assert (= (or b!268142 b!268143 b!268144) bm!14580))

(declare-fun m!337131 () Bool)

(assert (=> b!268140 m!337131))

(declare-fun m!337133 () Bool)

(assert (=> d!77573 m!337133))

(declare-fun m!337135 () Bool)

(assert (=> d!77573 m!337135))

(declare-fun m!337137 () Bool)

(assert (=> b!268141 m!337137))

(declare-fun m!337139 () Bool)

(assert (=> bm!14580 m!337139))

(assert (=> b!266902 d!77573))

(declare-fun d!77575 () Bool)

(declare-fun e!166607 () Bool)

(assert (=> d!77575 e!166607))

(declare-fun res!122770 () Bool)

(assert (=> d!77575 (=> (not res!122770) (not e!166607))))

(assert (=> d!77575 (= res!122770 (appendAssocInst!60 (c!50467 (BalanceConc!2561 Empty!1276)) (c!50467 (charsOf!372 (apply!757 lt!109287 0)))))))

(declare-fun lt!109964 () BalanceConc!2560)

(assert (=> d!77575 (= lt!109964 (BalanceConc!2561 (++!991 (c!50467 (BalanceConc!2561 Empty!1276)) (c!50467 (charsOf!372 (apply!757 lt!109287 0))))))))

(assert (=> d!77575 (= (++!990 (BalanceConc!2561 Empty!1276) (charsOf!372 (apply!757 lt!109287 0))) lt!109964)))

(declare-fun b!268151 () Bool)

(assert (=> b!268151 (= e!166607 (= (list!1547 lt!109964) (++!988 (list!1547 (BalanceConc!2561 Empty!1276)) (list!1547 (charsOf!372 (apply!757 lt!109287 0))))))))

(declare-fun b!268149 () Bool)

(declare-fun res!122771 () Bool)

(assert (=> b!268149 (=> (not res!122771) (not e!166607))))

(assert (=> b!268149 (= res!122771 (<= (height!149 (++!991 (c!50467 (BalanceConc!2561 Empty!1276)) (c!50467 (charsOf!372 (apply!757 lt!109287 0))))) (+ (max!0 (height!149 (c!50467 (BalanceConc!2561 Empty!1276))) (height!149 (c!50467 (charsOf!372 (apply!757 lt!109287 0))))) 1)))))

(declare-fun b!268150 () Bool)

(declare-fun res!122773 () Bool)

(assert (=> b!268150 (=> (not res!122773) (not e!166607))))

(assert (=> b!268150 (= res!122773 (>= (height!149 (++!991 (c!50467 (BalanceConc!2561 Empty!1276)) (c!50467 (charsOf!372 (apply!757 lt!109287 0))))) (max!0 (height!149 (c!50467 (BalanceConc!2561 Empty!1276))) (height!149 (c!50467 (charsOf!372 (apply!757 lt!109287 0)))))))))

(declare-fun b!268148 () Bool)

(declare-fun res!122772 () Bool)

(assert (=> b!268148 (=> (not res!122772) (not e!166607))))

(assert (=> b!268148 (= res!122772 (isBalanced!346 (++!991 (c!50467 (BalanceConc!2561 Empty!1276)) (c!50467 (charsOf!372 (apply!757 lt!109287 0))))))))

(assert (= (and d!77575 res!122770) b!268148))

(assert (= (and b!268148 res!122772) b!268149))

(assert (= (and b!268149 res!122771) b!268150))

(assert (= (and b!268150 res!122773) b!268151))

(declare-fun m!337141 () Bool)

(assert (=> b!268149 m!337141))

(declare-fun m!337143 () Bool)

(assert (=> b!268149 m!337143))

(declare-fun m!337145 () Bool)

(assert (=> b!268149 m!337145))

(declare-fun m!337147 () Bool)

(assert (=> b!268149 m!337147))

(assert (=> b!268149 m!337141))

(assert (=> b!268149 m!337147))

(assert (=> b!268149 m!337145))

(declare-fun m!337149 () Bool)

(assert (=> b!268149 m!337149))

(assert (=> b!268148 m!337141))

(assert (=> b!268148 m!337141))

(declare-fun m!337151 () Bool)

(assert (=> b!268148 m!337151))

(declare-fun m!337153 () Bool)

(assert (=> d!77575 m!337153))

(assert (=> d!77575 m!337141))

(assert (=> b!268150 m!337141))

(assert (=> b!268150 m!337143))

(assert (=> b!268150 m!337145))

(assert (=> b!268150 m!337147))

(assert (=> b!268150 m!337141))

(assert (=> b!268150 m!337147))

(assert (=> b!268150 m!337145))

(assert (=> b!268150 m!337149))

(declare-fun m!337155 () Bool)

(assert (=> b!268151 m!337155))

(assert (=> b!268151 m!334705))

(assert (=> b!268151 m!334727))

(declare-fun m!337157 () Bool)

(assert (=> b!268151 m!337157))

(assert (=> b!268151 m!334705))

(assert (=> b!268151 m!337157))

(declare-fun m!337159 () Bool)

(assert (=> b!268151 m!337159))

(assert (=> b!266902 d!77575))

(declare-fun d!77577 () Bool)

(assert (=> d!77577 (= (tail!474 (drop!213 lt!109327 0)) (drop!213 lt!109327 (+ 0 1)))))

(declare-fun lt!109965 () Unit!4824)

(assert (=> d!77577 (= lt!109965 (choose!2437 lt!109327 0))))

(declare-fun e!166608 () Bool)

(assert (=> d!77577 e!166608))

(declare-fun res!122774 () Bool)

(assert (=> d!77577 (=> (not res!122774) (not e!166608))))

(assert (=> d!77577 (= res!122774 (>= 0 0))))

(assert (=> d!77577 (= (lemmaDropTail!192 lt!109327 0) lt!109965)))

(declare-fun b!268152 () Bool)

(assert (=> b!268152 (= e!166608 (< 0 (size!3031 lt!109327)))))

(assert (= (and d!77577 res!122774) b!268152))

(assert (=> d!77577 m!334721))

(assert (=> d!77577 m!334721))

(assert (=> d!77577 m!334729))

(assert (=> d!77577 m!334719))

(declare-fun m!337161 () Bool)

(assert (=> d!77577 m!337161))

(assert (=> b!268152 m!337115))

(assert (=> b!266902 d!77577))

(declare-fun d!77579 () Bool)

(assert (=> d!77579 (= (head!884 (drop!213 lt!109325 0)) (h!9207 (drop!213 lt!109325 0)))))

(assert (=> b!266902 d!77579))

(declare-fun d!77581 () Bool)

(assert (=> d!77581 (= (head!884 (drop!213 lt!109325 0)) (apply!758 lt!109325 0))))

(declare-fun lt!109966 () Unit!4824)

(assert (=> d!77581 (= lt!109966 (choose!2439 lt!109325 0))))

(declare-fun e!166609 () Bool)

(assert (=> d!77581 e!166609))

(declare-fun res!122775 () Bool)

(assert (=> d!77581 (=> (not res!122775) (not e!166609))))

(assert (=> d!77581 (= res!122775 (>= 0 0))))

(assert (=> d!77581 (= (lemmaDropApply!200 lt!109325 0) lt!109966)))

(declare-fun b!268153 () Bool)

(assert (=> b!268153 (= e!166609 (< 0 (size!3031 lt!109325)))))

(assert (= (and d!77581 res!122775) b!268153))

(assert (=> d!77581 m!334713))

(assert (=> d!77581 m!334713))

(assert (=> d!77581 m!334717))

(assert (=> d!77581 m!334723))

(declare-fun m!337163 () Bool)

(assert (=> d!77581 m!337163))

(assert (=> b!268153 m!337139))

(assert (=> b!266902 d!77581))

(declare-fun d!77583 () Bool)

(declare-fun lt!109967 () Token!1198)

(assert (=> d!77583 (contains!711 lt!109325 lt!109967)))

(declare-fun e!166611 () Token!1198)

(assert (=> d!77583 (= lt!109967 e!166611)))

(declare-fun c!50788 () Bool)

(assert (=> d!77583 (= c!50788 (= 0 0))))

(declare-fun e!166610 () Bool)

(assert (=> d!77583 e!166610))

(declare-fun res!122776 () Bool)

(assert (=> d!77583 (=> (not res!122776) (not e!166610))))

(assert (=> d!77583 (= res!122776 (<= 0 0))))

(assert (=> d!77583 (= (apply!758 lt!109325 0) lt!109967)))

(declare-fun b!268154 () Bool)

(assert (=> b!268154 (= e!166610 (< 0 (size!3031 lt!109325)))))

(declare-fun b!268155 () Bool)

(assert (=> b!268155 (= e!166611 (head!884 lt!109325))))

(declare-fun b!268156 () Bool)

(assert (=> b!268156 (= e!166611 (apply!758 (tail!474 lt!109325) (- 0 1)))))

(assert (= (and d!77583 res!122776) b!268154))

(assert (= (and d!77583 c!50788) b!268155))

(assert (= (and d!77583 (not c!50788)) b!268156))

(declare-fun m!337165 () Bool)

(assert (=> d!77583 m!337165))

(assert (=> b!268154 m!337139))

(declare-fun m!337167 () Bool)

(assert (=> b!268155 m!337167))

(declare-fun m!337169 () Bool)

(assert (=> b!268156 m!337169))

(assert (=> b!268156 m!337169))

(declare-fun m!337171 () Bool)

(assert (=> b!268156 m!337171))

(assert (=> b!266902 d!77583))

(declare-fun d!77585 () Bool)

(assert (=> d!77585 (= (tail!474 (drop!213 lt!109327 0)) (t!37804 (drop!213 lt!109327 0)))))

(assert (=> b!266902 d!77585))

(declare-fun d!77587 () Bool)

(declare-fun lt!109971 () BalanceConc!2560)

(assert (=> d!77587 (= (list!1547 lt!109971) (printListTailRec!125 thiss!17480 (dropList!160 lt!109287 (+ 0 1)) (list!1547 (++!990 (BalanceConc!2561 Empty!1276) (charsOf!372 (apply!757 lt!109287 0))))))))

(declare-fun e!166613 () BalanceConc!2560)

(assert (=> d!77587 (= lt!109971 e!166613)))

(declare-fun c!50789 () Bool)

(assert (=> d!77587 (= c!50789 (>= (+ 0 1) (size!3028 lt!109287)))))

(declare-fun e!166612 () Bool)

(assert (=> d!77587 e!166612))

(declare-fun res!122777 () Bool)

(assert (=> d!77587 (=> (not res!122777) (not e!166612))))

(assert (=> d!77587 (= res!122777 (>= (+ 0 1) 0))))

(assert (=> d!77587 (= (printTailRec!301 thiss!17480 lt!109287 (+ 0 1) (++!990 (BalanceConc!2561 Empty!1276) (charsOf!372 (apply!757 lt!109287 0)))) lt!109971)))

(declare-fun b!268157 () Bool)

(assert (=> b!268157 (= e!166612 (<= (+ 0 1) (size!3028 lt!109287)))))

(declare-fun b!268158 () Bool)

(assert (=> b!268158 (= e!166613 (++!990 (BalanceConc!2561 Empty!1276) (charsOf!372 (apply!757 lt!109287 0))))))

(declare-fun b!268159 () Bool)

(assert (=> b!268159 (= e!166613 (printTailRec!301 thiss!17480 lt!109287 (+ 0 1 1) (++!990 (++!990 (BalanceConc!2561 Empty!1276) (charsOf!372 (apply!757 lt!109287 0))) (charsOf!372 (apply!757 lt!109287 (+ 0 1))))))))

(declare-fun lt!109970 () List!3820)

(assert (=> b!268159 (= lt!109970 (list!1550 lt!109287))))

(declare-fun lt!109969 () Unit!4824)

(assert (=> b!268159 (= lt!109969 (lemmaDropApply!200 lt!109970 (+ 0 1)))))

(assert (=> b!268159 (= (head!884 (drop!213 lt!109970 (+ 0 1))) (apply!758 lt!109970 (+ 0 1)))))

(declare-fun lt!109974 () Unit!4824)

(assert (=> b!268159 (= lt!109974 lt!109969)))

(declare-fun lt!109972 () List!3820)

(assert (=> b!268159 (= lt!109972 (list!1550 lt!109287))))

(declare-fun lt!109968 () Unit!4824)

(assert (=> b!268159 (= lt!109968 (lemmaDropTail!192 lt!109972 (+ 0 1)))))

(assert (=> b!268159 (= (tail!474 (drop!213 lt!109972 (+ 0 1))) (drop!213 lt!109972 (+ 0 1 1)))))

(declare-fun lt!109973 () Unit!4824)

(assert (=> b!268159 (= lt!109973 lt!109968)))

(assert (= (and d!77587 res!122777) b!268157))

(assert (= (and d!77587 c!50789) b!268158))

(assert (= (and d!77587 (not c!50789)) b!268159))

(declare-fun m!337173 () Bool)

(assert (=> d!77587 m!337173))

(assert (=> d!77587 m!334735))

(declare-fun m!337175 () Bool)

(assert (=> d!77587 m!337175))

(assert (=> d!77587 m!337173))

(assert (=> d!77587 m!337175))

(declare-fun m!337177 () Bool)

(assert (=> d!77587 m!337177))

(assert (=> d!77587 m!334709))

(declare-fun m!337179 () Bool)

(assert (=> d!77587 m!337179))

(assert (=> b!268157 m!334709))

(declare-fun m!337181 () Bool)

(assert (=> b!268159 m!337181))

(declare-fun m!337183 () Bool)

(assert (=> b!268159 m!337183))

(assert (=> b!268159 m!337181))

(declare-fun m!337185 () Bool)

(assert (=> b!268159 m!337185))

(declare-fun m!337187 () Bool)

(assert (=> b!268159 m!337187))

(declare-fun m!337189 () Bool)

(assert (=> b!268159 m!337189))

(declare-fun m!337191 () Bool)

(assert (=> b!268159 m!337191))

(declare-fun m!337193 () Bool)

(assert (=> b!268159 m!337193))

(assert (=> b!268159 m!337193))

(declare-fun m!337195 () Bool)

(assert (=> b!268159 m!337195))

(assert (=> b!268159 m!337189))

(declare-fun m!337197 () Bool)

(assert (=> b!268159 m!337197))

(declare-fun m!337199 () Bool)

(assert (=> b!268159 m!337199))

(assert (=> b!268159 m!334733))

(declare-fun m!337201 () Bool)

(assert (=> b!268159 m!337201))

(declare-fun m!337203 () Bool)

(assert (=> b!268159 m!337203))

(assert (=> b!268159 m!334735))

(assert (=> b!268159 m!337195))

(assert (=> b!268159 m!337201))

(assert (=> b!266902 d!77587))

(declare-fun d!77589 () Bool)

(declare-fun lt!109975 () Token!1198)

(assert (=> d!77589 (= lt!109975 (apply!758 (list!1550 lt!109287) 0))))

(assert (=> d!77589 (= lt!109975 (apply!759 (c!50469 lt!109287) 0))))

(declare-fun e!166614 () Bool)

(assert (=> d!77589 e!166614))

(declare-fun res!122778 () Bool)

(assert (=> d!77589 (=> (not res!122778) (not e!166614))))

(assert (=> d!77589 (= res!122778 (<= 0 0))))

(assert (=> d!77589 (= (apply!757 lt!109287 0) lt!109975)))

(declare-fun b!268160 () Bool)

(assert (=> b!268160 (= e!166614 (< 0 (size!3028 lt!109287)))))

(assert (= (and d!77589 res!122778) b!268160))

(assert (=> d!77589 m!334733))

(assert (=> d!77589 m!334733))

(declare-fun m!337205 () Bool)

(assert (=> d!77589 m!337205))

(declare-fun m!337207 () Bool)

(assert (=> d!77589 m!337207))

(assert (=> b!268160 m!334709))

(assert (=> b!266902 d!77589))

(declare-fun d!77591 () Bool)

(declare-fun c!50790 () Bool)

(assert (=> d!77591 (= c!50790 ((_ is Empty!1276) (c!50467 (printWithSeparatorTokenWhenNeededRec!288 thiss!17480 rules!1920 lt!109288 separatorToken!170 0))))))

(declare-fun e!166615 () List!3818)

(assert (=> d!77591 (= (list!1551 (c!50467 (printWithSeparatorTokenWhenNeededRec!288 thiss!17480 rules!1920 lt!109288 separatorToken!170 0))) e!166615)))

(declare-fun b!268161 () Bool)

(assert (=> b!268161 (= e!166615 Nil!3808)))

(declare-fun b!268162 () Bool)

(declare-fun e!166616 () List!3818)

(assert (=> b!268162 (= e!166615 e!166616)))

(declare-fun c!50791 () Bool)

(assert (=> b!268162 (= c!50791 ((_ is Leaf!1979) (c!50467 (printWithSeparatorTokenWhenNeededRec!288 thiss!17480 rules!1920 lt!109288 separatorToken!170 0))))))

(declare-fun b!268163 () Bool)

(assert (=> b!268163 (= e!166616 (list!1553 (xs!3875 (c!50467 (printWithSeparatorTokenWhenNeededRec!288 thiss!17480 rules!1920 lt!109288 separatorToken!170 0)))))))

(declare-fun b!268164 () Bool)

(assert (=> b!268164 (= e!166616 (++!988 (list!1551 (left!3130 (c!50467 (printWithSeparatorTokenWhenNeededRec!288 thiss!17480 rules!1920 lt!109288 separatorToken!170 0)))) (list!1551 (right!3460 (c!50467 (printWithSeparatorTokenWhenNeededRec!288 thiss!17480 rules!1920 lt!109288 separatorToken!170 0))))))))

(assert (= (and d!77591 c!50790) b!268161))

(assert (= (and d!77591 (not c!50790)) b!268162))

(assert (= (and b!268162 c!50791) b!268163))

(assert (= (and b!268162 (not c!50791)) b!268164))

(declare-fun m!337209 () Bool)

(assert (=> b!268163 m!337209))

(declare-fun m!337211 () Bool)

(assert (=> b!268164 m!337211))

(declare-fun m!337213 () Bool)

(assert (=> b!268164 m!337213))

(assert (=> b!268164 m!337211))

(assert (=> b!268164 m!337213))

(declare-fun m!337215 () Bool)

(assert (=> b!268164 m!337215))

(assert (=> d!77111 d!77591))

(declare-fun d!77593 () Bool)

(declare-fun lt!109976 () Bool)

(assert (=> d!77593 (= lt!109976 (isEmpty!2402 (list!1547 (_2!2346 lt!109308))))))

(assert (=> d!77593 (= lt!109976 (isEmpty!2403 (c!50467 (_2!2346 lt!109308))))))

(assert (=> d!77593 (= (isEmpty!2400 (_2!2346 lt!109308)) lt!109976)))

(declare-fun bs!29572 () Bool)

(assert (= bs!29572 d!77593))

(declare-fun m!337217 () Bool)

(assert (=> bs!29572 m!337217))

(assert (=> bs!29572 m!337217))

(declare-fun m!337219 () Bool)

(assert (=> bs!29572 m!337219))

(declare-fun m!337221 () Bool)

(assert (=> bs!29572 m!337221))

(assert (=> b!266882 d!77593))

(declare-fun d!77595 () Bool)

(assert (=> d!77595 (= (isEmpty!2402 (originalCharacters!770 separatorToken!170)) ((_ is Nil!3808) (originalCharacters!770 separatorToken!170)))))

(assert (=> d!76979 d!77595))

(declare-fun d!77597 () Bool)

(assert (=> d!77597 (dynLambda!1945 lambda!9020 (h!9207 (t!37804 tokens!465)))))

(declare-fun lt!109977 () Unit!4824)

(assert (=> d!77597 (= lt!109977 (choose!2438 (t!37804 tokens!465) lambda!9020 (h!9207 (t!37804 tokens!465))))))

(declare-fun e!166617 () Bool)

(assert (=> d!77597 e!166617))

(declare-fun res!122779 () Bool)

(assert (=> d!77597 (=> (not res!122779) (not e!166617))))

(assert (=> d!77597 (= res!122779 (forall!949 (t!37804 tokens!465) lambda!9020))))

(assert (=> d!77597 (= (forallContained!282 (t!37804 tokens!465) lambda!9020 (h!9207 (t!37804 tokens!465))) lt!109977)))

(declare-fun b!268165 () Bool)

(assert (=> b!268165 (= e!166617 (contains!711 (t!37804 tokens!465) (h!9207 (t!37804 tokens!465))))))

(assert (= (and d!77597 res!122779) b!268165))

(declare-fun b_lambda!8441 () Bool)

(assert (=> (not b_lambda!8441) (not d!77597)))

(declare-fun m!337223 () Bool)

(assert (=> d!77597 m!337223))

(declare-fun m!337225 () Bool)

(assert (=> d!77597 m!337225))

(declare-fun m!337227 () Bool)

(assert (=> d!77597 m!337227))

(declare-fun m!337229 () Bool)

(assert (=> b!268165 m!337229))

(assert (=> b!267253 d!77597))

(declare-fun b!268166 () Bool)

(declare-fun res!122784 () Bool)

(declare-fun e!166620 () Bool)

(assert (=> b!268166 (=> (not res!122784) (not e!166620))))

(declare-fun lt!109979 () Option!803)

(assert (=> b!268166 (= res!122784 (matchR!273 (regex!727 (rule!1312 (_1!2349 (get!1255 lt!109979)))) (list!1547 (charsOf!372 (_1!2349 (get!1255 lt!109979))))))))

(declare-fun b!268167 () Bool)

(declare-fun res!122782 () Bool)

(assert (=> b!268167 (=> (not res!122782) (not e!166620))))

(assert (=> b!268167 (= res!122782 (= (value!25035 (_1!2349 (get!1255 lt!109979))) (apply!761 (transformation!727 (rule!1312 (_1!2349 (get!1255 lt!109979)))) (seqFromList!821 (originalCharacters!770 (_1!2349 (get!1255 lt!109979)))))))))

(declare-fun b!268168 () Bool)

(declare-fun e!166618 () Option!803)

(declare-fun call!14586 () Option!803)

(assert (=> b!268168 (= e!166618 call!14586)))

(declare-fun b!268169 () Bool)

(declare-fun res!122780 () Bool)

(assert (=> b!268169 (=> (not res!122780) (not e!166620))))

(assert (=> b!268169 (= res!122780 (= (++!988 (list!1547 (charsOf!372 (_1!2349 (get!1255 lt!109979)))) (_2!2349 (get!1255 lt!109979))) (++!988 (list!1547 (charsOf!372 (h!9207 (t!37804 tokens!465)))) lt!109534)))))

(declare-fun b!268170 () Bool)

(assert (=> b!268170 (= e!166620 (contains!713 rules!1920 (rule!1312 (_1!2349 (get!1255 lt!109979)))))))

(declare-fun b!268171 () Bool)

(declare-fun e!166619 () Bool)

(assert (=> b!268171 (= e!166619 e!166620)))

(declare-fun res!122786 () Bool)

(assert (=> b!268171 (=> (not res!122786) (not e!166620))))

(assert (=> b!268171 (= res!122786 (isDefined!644 lt!109979))))

(declare-fun b!268172 () Bool)

(declare-fun lt!109982 () Option!803)

(declare-fun lt!109981 () Option!803)

(assert (=> b!268172 (= e!166618 (ite (and ((_ is None!802) lt!109982) ((_ is None!802) lt!109981)) None!802 (ite ((_ is None!802) lt!109981) lt!109982 (ite ((_ is None!802) lt!109982) lt!109981 (ite (>= (size!3025 (_1!2349 (v!14665 lt!109982))) (size!3025 (_1!2349 (v!14665 lt!109981)))) lt!109982 lt!109981)))))))

(assert (=> b!268172 (= lt!109982 call!14586)))

(assert (=> b!268172 (= lt!109981 (maxPrefix!331 thiss!17480 (t!37803 rules!1920) (++!988 (list!1547 (charsOf!372 (h!9207 (t!37804 tokens!465)))) lt!109534)))))

(declare-fun b!268173 () Bool)

(declare-fun res!122783 () Bool)

(assert (=> b!268173 (=> (not res!122783) (not e!166620))))

(assert (=> b!268173 (= res!122783 (= (list!1547 (charsOf!372 (_1!2349 (get!1255 lt!109979)))) (originalCharacters!770 (_1!2349 (get!1255 lt!109979)))))))

(declare-fun b!268174 () Bool)

(declare-fun res!122781 () Bool)

(assert (=> b!268174 (=> (not res!122781) (not e!166620))))

(assert (=> b!268174 (= res!122781 (< (size!3029 (_2!2349 (get!1255 lt!109979))) (size!3029 (++!988 (list!1547 (charsOf!372 (h!9207 (t!37804 tokens!465)))) lt!109534))))))

(declare-fun bm!14581 () Bool)

(assert (=> bm!14581 (= call!14586 (maxPrefixOneRule!139 thiss!17480 (h!9206 rules!1920) (++!988 (list!1547 (charsOf!372 (h!9207 (t!37804 tokens!465)))) lt!109534)))))

(declare-fun d!77599 () Bool)

(assert (=> d!77599 e!166619))

(declare-fun res!122785 () Bool)

(assert (=> d!77599 (=> res!122785 e!166619)))

(assert (=> d!77599 (= res!122785 (isEmpty!2408 lt!109979))))

(assert (=> d!77599 (= lt!109979 e!166618)))

(declare-fun c!50792 () Bool)

(assert (=> d!77599 (= c!50792 (and ((_ is Cons!3809) rules!1920) ((_ is Nil!3809) (t!37803 rules!1920))))))

(declare-fun lt!109980 () Unit!4824)

(declare-fun lt!109978 () Unit!4824)

(assert (=> d!77599 (= lt!109980 lt!109978)))

(assert (=> d!77599 (isPrefix!394 (++!988 (list!1547 (charsOf!372 (h!9207 (t!37804 tokens!465)))) lt!109534) (++!988 (list!1547 (charsOf!372 (h!9207 (t!37804 tokens!465)))) lt!109534))))

(assert (=> d!77599 (= lt!109978 (lemmaIsPrefixRefl!204 (++!988 (list!1547 (charsOf!372 (h!9207 (t!37804 tokens!465)))) lt!109534) (++!988 (list!1547 (charsOf!372 (h!9207 (t!37804 tokens!465)))) lt!109534)))))

(assert (=> d!77599 (rulesValidInductive!199 thiss!17480 rules!1920)))

(assert (=> d!77599 (= (maxPrefix!331 thiss!17480 rules!1920 (++!988 (list!1547 (charsOf!372 (h!9207 (t!37804 tokens!465)))) lt!109534)) lt!109979)))

(assert (= (and d!77599 c!50792) b!268168))

(assert (= (and d!77599 (not c!50792)) b!268172))

(assert (= (or b!268168 b!268172) bm!14581))

(assert (= (and d!77599 (not res!122785)) b!268171))

(assert (= (and b!268171 res!122786) b!268173))

(assert (= (and b!268173 res!122783) b!268174))

(assert (= (and b!268174 res!122781) b!268169))

(assert (= (and b!268169 res!122780) b!268167))

(assert (= (and b!268167 res!122782) b!268166))

(assert (= (and b!268166 res!122784) b!268170))

(assert (=> bm!14581 m!335285))

(declare-fun m!337231 () Bool)

(assert (=> bm!14581 m!337231))

(declare-fun m!337233 () Bool)

(assert (=> b!268167 m!337233))

(declare-fun m!337235 () Bool)

(assert (=> b!268167 m!337235))

(assert (=> b!268167 m!337235))

(declare-fun m!337237 () Bool)

(assert (=> b!268167 m!337237))

(assert (=> b!268172 m!335285))

(declare-fun m!337239 () Bool)

(assert (=> b!268172 m!337239))

(assert (=> b!268170 m!337233))

(declare-fun m!337241 () Bool)

(assert (=> b!268170 m!337241))

(assert (=> b!268173 m!337233))

(declare-fun m!337243 () Bool)

(assert (=> b!268173 m!337243))

(assert (=> b!268173 m!337243))

(declare-fun m!337245 () Bool)

(assert (=> b!268173 m!337245))

(assert (=> b!268169 m!337233))

(assert (=> b!268169 m!337243))

(assert (=> b!268169 m!337243))

(assert (=> b!268169 m!337245))

(assert (=> b!268169 m!337245))

(declare-fun m!337247 () Bool)

(assert (=> b!268169 m!337247))

(declare-fun m!337249 () Bool)

(assert (=> b!268171 m!337249))

(assert (=> b!268166 m!337233))

(assert (=> b!268166 m!337243))

(assert (=> b!268166 m!337243))

(assert (=> b!268166 m!337245))

(assert (=> b!268166 m!337245))

(declare-fun m!337251 () Bool)

(assert (=> b!268166 m!337251))

(assert (=> b!268174 m!337233))

(declare-fun m!337253 () Bool)

(assert (=> b!268174 m!337253))

(assert (=> b!268174 m!335285))

(declare-fun m!337255 () Bool)

(assert (=> b!268174 m!337255))

(declare-fun m!337257 () Bool)

(assert (=> d!77599 m!337257))

(assert (=> d!77599 m!335285))

(assert (=> d!77599 m!335285))

(declare-fun m!337259 () Bool)

(assert (=> d!77599 m!337259))

(assert (=> d!77599 m!335285))

(assert (=> d!77599 m!335285))

(declare-fun m!337261 () Bool)

(assert (=> d!77599 m!337261))

(assert (=> d!77599 m!335671))

(assert (=> b!267253 d!77599))

(declare-fun bs!29573 () Bool)

(declare-fun b!268179 () Bool)

(assert (= bs!29573 (and b!268179 b!267294)))

(declare-fun lambda!9055 () Int)

(assert (=> bs!29573 (= lambda!9055 lambda!9023)))

(declare-fun bs!29574 () Bool)

(assert (= bs!29574 (and b!268179 b!268098)))

(assert (=> bs!29574 (= lambda!9055 lambda!9053)))

(declare-fun bs!29575 () Bool)

(assert (= bs!29575 (and b!268179 b!267612)))

(assert (=> bs!29575 (= lambda!9055 lambda!9035)))

(declare-fun bs!29576 () Bool)

(assert (= bs!29576 (and b!268179 d!77235)))

(assert (=> bs!29576 (not (= lambda!9055 lambda!9034))))

(declare-fun bs!29577 () Bool)

(assert (= bs!29577 (and b!268179 d!77015)))

(assert (=> bs!29577 (not (= lambda!9055 lambda!9011))))

(declare-fun bs!29578 () Bool)

(assert (= bs!29578 (and b!268179 b!267276)))

(assert (=> bs!29578 (= lambda!9055 lambda!9022)))

(declare-fun bs!29579 () Bool)

(assert (= bs!29579 (and b!268179 b!267078)))

(assert (=> bs!29579 (= lambda!9055 lambda!9012)))

(declare-fun bs!29580 () Bool)

(assert (= bs!29580 (and b!268179 d!77453)))

(assert (=> bs!29580 (= lambda!9055 lambda!9051)))

(declare-fun bs!29581 () Bool)

(assert (= bs!29581 (and b!268179 d!77113)))

(assert (=> bs!29581 (not (= lambda!9055 lambda!9021))))

(declare-fun bs!29582 () Bool)

(assert (= bs!29582 (and b!268179 d!77119)))

(assert (=> bs!29582 (= lambda!9055 lambda!9028)))

(declare-fun bs!29583 () Bool)

(assert (= bs!29583 (and b!268179 b!266841)))

(assert (=> bs!29583 (not (= lambda!9055 lambda!8994))))

(declare-fun bs!29584 () Bool)

(assert (= bs!29584 (and b!268179 b!267253)))

(assert (=> bs!29584 (= lambda!9055 lambda!9020)))

(declare-fun bs!29585 () Bool)

(assert (= bs!29585 (and b!268179 b!267493)))

(assert (=> bs!29585 (= lambda!9055 lambda!9030)))

(declare-fun bs!29586 () Bool)

(assert (= bs!29586 (and b!268179 d!77175)))

(assert (=> bs!29586 (not (= lambda!9055 lambda!9029))))

(declare-fun b!268185 () Bool)

(declare-fun e!166627 () Bool)

(assert (=> b!268185 (= e!166627 true)))

(declare-fun b!268184 () Bool)

(declare-fun e!166626 () Bool)

(assert (=> b!268184 (= e!166626 e!166627)))

(declare-fun b!268183 () Bool)

(declare-fun e!166625 () Bool)

(assert (=> b!268183 (= e!166625 e!166626)))

(assert (=> b!268179 e!166625))

(assert (= b!268184 b!268185))

(assert (= b!268183 b!268184))

(assert (= (and b!268179 ((_ is Cons!3809) rules!1920)) b!268183))

(assert (=> b!268185 (< (dynLambda!1941 order!2913 (toValue!1458 (transformation!727 (h!9206 rules!1920)))) (dynLambda!1942 order!2915 lambda!9055))))

(assert (=> b!268185 (< (dynLambda!1943 order!2917 (toChars!1317 (transformation!727 (h!9206 rules!1920)))) (dynLambda!1942 order!2915 lambda!9055))))

(assert (=> b!268179 true))

(declare-fun b!268175 () Bool)

(declare-fun e!166622 () List!3818)

(declare-fun call!14590 () List!3818)

(assert (=> b!268175 (= e!166622 call!14590)))

(declare-fun b!268176 () Bool)

(declare-fun c!50796 () Bool)

(declare-fun lt!109983 () Option!803)

(assert (=> b!268176 (= c!50796 (and ((_ is Some!802) lt!109983) (not (= (_1!2349 (v!14665 lt!109983)) (h!9207 (t!37804 (t!37804 tokens!465)))))))))

(declare-fun e!166623 () List!3818)

(assert (=> b!268176 (= e!166622 e!166623)))

(declare-fun b!268177 () Bool)

(declare-fun lt!109984 () List!3818)

(assert (=> b!268177 (= e!166623 (++!988 call!14590 lt!109984))))

(declare-fun call!14587 () BalanceConc!2560)

(declare-fun c!50794 () Bool)

(declare-fun call!14591 () BalanceConc!2560)

(declare-fun bm!14582 () Bool)

(declare-fun call!14589 () List!3818)

(assert (=> bm!14582 (= call!14589 (list!1547 (ite c!50794 call!14591 call!14587)))))

(declare-fun b!268178 () Bool)

(assert (=> b!268178 (= e!166623 Nil!3808)))

(assert (=> b!268178 (= (print!338 thiss!17480 (singletonSeq!273 (h!9207 (t!37804 (t!37804 tokens!465))))) (printTailRec!301 thiss!17480 (singletonSeq!273 (h!9207 (t!37804 (t!37804 tokens!465)))) 0 (BalanceConc!2561 Empty!1276)))))

(declare-fun lt!109987 () Unit!4824)

(declare-fun Unit!4856 () Unit!4824)

(assert (=> b!268178 (= lt!109987 Unit!4856)))

(declare-fun lt!109985 () Unit!4824)

(declare-fun call!14588 () List!3818)

(assert (=> b!268178 (= lt!109985 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!108 thiss!17480 rules!1920 call!14588 lt!109984))))

(assert (=> b!268178 false))

(declare-fun lt!109988 () Unit!4824)

(declare-fun Unit!4857 () Unit!4824)

(assert (=> b!268178 (= lt!109988 Unit!4857)))

(declare-fun bm!14583 () Bool)

(declare-fun e!166624 () BalanceConc!2560)

(assert (=> bm!14583 (= call!14588 (list!1547 e!166624))))

(declare-fun c!50795 () Bool)

(assert (=> bm!14583 (= c!50795 c!50796)))

(declare-fun e!166621 () List!3818)

(assert (=> b!268179 (= e!166621 e!166622)))

(declare-fun lt!109986 () Unit!4824)

(assert (=> b!268179 (= lt!109986 (forallContained!282 (t!37804 (t!37804 tokens!465)) lambda!9055 (h!9207 (t!37804 (t!37804 tokens!465)))))))

(assert (=> b!268179 (= lt!109984 (printWithSeparatorTokenWhenNeededList!296 thiss!17480 rules!1920 (t!37804 (t!37804 (t!37804 tokens!465))) separatorToken!170))))

(assert (=> b!268179 (= lt!109983 (maxPrefix!331 thiss!17480 rules!1920 (++!988 (list!1547 (charsOf!372 (h!9207 (t!37804 (t!37804 tokens!465))))) lt!109984)))))

(assert (=> b!268179 (= c!50794 (and ((_ is Some!802) lt!109983) (= (_1!2349 (v!14665 lt!109983)) (h!9207 (t!37804 (t!37804 tokens!465))))))))

(declare-fun bm!14584 () Bool)

(assert (=> bm!14584 (= call!14591 (charsOf!372 (h!9207 (t!37804 (t!37804 tokens!465)))))))

(declare-fun d!77601 () Bool)

(declare-fun c!50793 () Bool)

(assert (=> d!77601 (= c!50793 ((_ is Cons!3810) (t!37804 (t!37804 tokens!465))))))

(assert (=> d!77601 (= (printWithSeparatorTokenWhenNeededList!296 thiss!17480 rules!1920 (t!37804 (t!37804 tokens!465)) separatorToken!170) e!166621)))

(declare-fun b!268180 () Bool)

(assert (=> b!268180 (= e!166624 (charsOf!372 separatorToken!170))))

(declare-fun bm!14585 () Bool)

(assert (=> bm!14585 (= call!14587 call!14591)))

(declare-fun b!268181 () Bool)

(assert (=> b!268181 (= e!166624 call!14587)))

(declare-fun b!268182 () Bool)

(assert (=> b!268182 (= e!166621 Nil!3808)))

(declare-fun bm!14586 () Bool)

(assert (=> bm!14586 (= call!14590 (++!988 call!14589 (ite c!50794 lt!109984 call!14588)))))

(assert (= (and d!77601 c!50793) b!268179))

(assert (= (and d!77601 (not c!50793)) b!268182))

(assert (= (and b!268179 c!50794) b!268175))

(assert (= (and b!268179 (not c!50794)) b!268176))

(assert (= (and b!268176 c!50796) b!268177))

(assert (= (and b!268176 (not c!50796)) b!268178))

(assert (= (or b!268177 b!268178) bm!14585))

(assert (= (or b!268177 b!268178) bm!14583))

(assert (= (and bm!14583 c!50795) b!268180))

(assert (= (and bm!14583 (not c!50795)) b!268181))

(assert (= (or b!268175 bm!14585) bm!14584))

(assert (= (or b!268175 b!268177) bm!14582))

(assert (= (or b!268175 b!268177) bm!14586))

(declare-fun m!337263 () Bool)

(assert (=> bm!14582 m!337263))

(declare-fun m!337265 () Bool)

(assert (=> bm!14584 m!337265))

(assert (=> b!268180 m!334551))

(declare-fun m!337267 () Bool)

(assert (=> bm!14583 m!337267))

(declare-fun m!337269 () Bool)

(assert (=> b!268177 m!337269))

(declare-fun m!337271 () Bool)

(assert (=> bm!14586 m!337271))

(declare-fun m!337273 () Bool)

(assert (=> b!268178 m!337273))

(assert (=> b!268178 m!337273))

(declare-fun m!337275 () Bool)

(assert (=> b!268178 m!337275))

(assert (=> b!268178 m!337273))

(declare-fun m!337277 () Bool)

(assert (=> b!268178 m!337277))

(declare-fun m!337279 () Bool)

(assert (=> b!268178 m!337279))

(declare-fun m!337281 () Bool)

(assert (=> b!268179 m!337281))

(assert (=> b!268179 m!337265))

(declare-fun m!337283 () Bool)

(assert (=> b!268179 m!337283))

(declare-fun m!337285 () Bool)

(assert (=> b!268179 m!337285))

(declare-fun m!337287 () Bool)

(assert (=> b!268179 m!337287))

(assert (=> b!268179 m!337265))

(declare-fun m!337289 () Bool)

(assert (=> b!268179 m!337289))

(assert (=> b!268179 m!337289))

(assert (=> b!268179 m!337283))

(assert (=> b!267253 d!77601))

(declare-fun b!268187 () Bool)

(declare-fun e!166629 () List!3818)

(assert (=> b!268187 (= e!166629 (Cons!3808 (h!9205 (list!1547 (charsOf!372 (h!9207 (t!37804 tokens!465))))) (++!988 (t!37802 (list!1547 (charsOf!372 (h!9207 (t!37804 tokens!465))))) lt!109534)))))

(declare-fun lt!109989 () List!3818)

(declare-fun e!166628 () Bool)

(declare-fun b!268189 () Bool)

(assert (=> b!268189 (= e!166628 (or (not (= lt!109534 Nil!3808)) (= lt!109989 (list!1547 (charsOf!372 (h!9207 (t!37804 tokens!465)))))))))

(declare-fun b!268188 () Bool)

(declare-fun res!122788 () Bool)

(assert (=> b!268188 (=> (not res!122788) (not e!166628))))

(assert (=> b!268188 (= res!122788 (= (size!3029 lt!109989) (+ (size!3029 (list!1547 (charsOf!372 (h!9207 (t!37804 tokens!465))))) (size!3029 lt!109534))))))

(declare-fun b!268186 () Bool)

(assert (=> b!268186 (= e!166629 lt!109534)))

(declare-fun d!77603 () Bool)

(assert (=> d!77603 e!166628))

(declare-fun res!122787 () Bool)

(assert (=> d!77603 (=> (not res!122787) (not e!166628))))

(assert (=> d!77603 (= res!122787 (= (content!543 lt!109989) ((_ map or) (content!543 (list!1547 (charsOf!372 (h!9207 (t!37804 tokens!465))))) (content!543 lt!109534))))))

(assert (=> d!77603 (= lt!109989 e!166629)))

(declare-fun c!50797 () Bool)

(assert (=> d!77603 (= c!50797 ((_ is Nil!3808) (list!1547 (charsOf!372 (h!9207 (t!37804 tokens!465))))))))

(assert (=> d!77603 (= (++!988 (list!1547 (charsOf!372 (h!9207 (t!37804 tokens!465)))) lt!109534) lt!109989)))

(assert (= (and d!77603 c!50797) b!268186))

(assert (= (and d!77603 (not c!50797)) b!268187))

(assert (= (and d!77603 res!122787) b!268188))

(assert (= (and b!268188 res!122788) b!268189))

(declare-fun m!337291 () Bool)

(assert (=> b!268187 m!337291))

(declare-fun m!337293 () Bool)

(assert (=> b!268188 m!337293))

(assert (=> b!268188 m!335291))

(declare-fun m!337295 () Bool)

(assert (=> b!268188 m!337295))

(declare-fun m!337297 () Bool)

(assert (=> b!268188 m!337297))

(declare-fun m!337299 () Bool)

(assert (=> d!77603 m!337299))

(assert (=> d!77603 m!335291))

(declare-fun m!337301 () Bool)

(assert (=> d!77603 m!337301))

(declare-fun m!337303 () Bool)

(assert (=> d!77603 m!337303))

(assert (=> b!267253 d!77603))

(declare-fun d!77605 () Bool)

(assert (=> d!77605 (= (list!1547 (charsOf!372 (h!9207 (t!37804 tokens!465)))) (list!1551 (c!50467 (charsOf!372 (h!9207 (t!37804 tokens!465))))))))

(declare-fun bs!29587 () Bool)

(assert (= bs!29587 d!77605))

(declare-fun m!337305 () Bool)

(assert (=> bs!29587 m!337305))

(assert (=> b!267253 d!77605))

(assert (=> b!267253 d!77151))

(declare-fun b!268191 () Bool)

(declare-fun e!166631 () List!3818)

(assert (=> b!268191 (= e!166631 (Cons!3808 (h!9205 (t!37802 lt!109293)) (++!988 (t!37802 (t!37802 lt!109293)) lt!109297)))))

(declare-fun b!268193 () Bool)

(declare-fun lt!109990 () List!3818)

(declare-fun e!166630 () Bool)

(assert (=> b!268193 (= e!166630 (or (not (= lt!109297 Nil!3808)) (= lt!109990 (t!37802 lt!109293))))))

(declare-fun b!268192 () Bool)

(declare-fun res!122790 () Bool)

(assert (=> b!268192 (=> (not res!122790) (not e!166630))))

(assert (=> b!268192 (= res!122790 (= (size!3029 lt!109990) (+ (size!3029 (t!37802 lt!109293)) (size!3029 lt!109297))))))

(declare-fun b!268190 () Bool)

(assert (=> b!268190 (= e!166631 lt!109297)))

(declare-fun d!77607 () Bool)

(assert (=> d!77607 e!166630))

(declare-fun res!122789 () Bool)

(assert (=> d!77607 (=> (not res!122789) (not e!166630))))

(assert (=> d!77607 (= res!122789 (= (content!543 lt!109990) ((_ map or) (content!543 (t!37802 lt!109293)) (content!543 lt!109297))))))

(assert (=> d!77607 (= lt!109990 e!166631)))

(declare-fun c!50798 () Bool)

(assert (=> d!77607 (= c!50798 ((_ is Nil!3808) (t!37802 lt!109293)))))

(assert (=> d!77607 (= (++!988 (t!37802 lt!109293) lt!109297) lt!109990)))

(assert (= (and d!77607 c!50798) b!268190))

(assert (= (and d!77607 (not c!50798)) b!268191))

(assert (= (and d!77607 res!122789) b!268192))

(assert (= (and b!268192 res!122790) b!268193))

(declare-fun m!337307 () Bool)

(assert (=> b!268191 m!337307))

(declare-fun m!337309 () Bool)

(assert (=> b!268192 m!337309))

(assert (=> b!268192 m!335535))

(assert (=> b!268192 m!335113))

(declare-fun m!337311 () Bool)

(assert (=> d!77607 m!337311))

(assert (=> d!77607 m!335747))

(assert (=> d!77607 m!335119))

(assert (=> b!267103 d!77607))

(declare-fun d!77609 () Bool)

(assert (=> d!77609 (= (list!1547 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 separatorToken!170))) (value!25035 separatorToken!170))) (list!1551 (c!50467 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 separatorToken!170))) (value!25035 separatorToken!170)))))))

(declare-fun bs!29588 () Bool)

(assert (= bs!29588 d!77609))

(declare-fun m!337313 () Bool)

(assert (=> bs!29588 m!337313))

(assert (=> b!266884 d!77609))

(declare-fun d!77611 () Bool)

(assert (=> d!77611 (= (list!1547 call!14529) (list!1551 (c!50467 call!14529)))))

(declare-fun bs!29589 () Bool)

(assert (= bs!29589 d!77611))

(declare-fun m!337315 () Bool)

(assert (=> bs!29589 m!337315))

(assert (=> b!267282 d!77611))

(declare-fun d!77613 () Bool)

(declare-fun lt!109991 () BalanceConc!2560)

(assert (=> d!77613 (= (list!1547 lt!109991) (printList!289 thiss!17480 (list!1550 (singletonSeq!273 call!14530))))))

(assert (=> d!77613 (= lt!109991 (printTailRec!301 thiss!17480 (singletonSeq!273 call!14530) 0 (BalanceConc!2561 Empty!1276)))))

(assert (=> d!77613 (= (print!338 thiss!17480 (singletonSeq!273 call!14530)) lt!109991)))

(declare-fun bs!29590 () Bool)

(assert (= bs!29590 d!77613))

(declare-fun m!337317 () Bool)

(assert (=> bs!29590 m!337317))

(assert (=> bs!29590 m!335341))

(declare-fun m!337319 () Bool)

(assert (=> bs!29590 m!337319))

(assert (=> bs!29590 m!337319))

(declare-fun m!337321 () Bool)

(assert (=> bs!29590 m!337321))

(assert (=> bs!29590 m!335341))

(assert (=> bs!29590 m!335349))

(assert (=> b!267282 d!77613))

(declare-fun d!77615 () Bool)

(assert (=> d!77615 (isDefined!644 (maxPrefix!331 thiss!17480 rules!1920 (++!988 (list!1547 call!14529) (list!1547 lt!109544))))))

(declare-fun lt!110008 () Unit!4824)

(declare-fun e!166632 () Unit!4824)

(assert (=> d!77615 (= lt!110008 e!166632)))

(declare-fun c!50799 () Bool)

(assert (=> d!77615 (= c!50799 (isEmpty!2408 (maxPrefix!331 thiss!17480 rules!1920 (++!988 (list!1547 call!14529) (list!1547 lt!109544)))))))

(declare-fun lt!110004 () Unit!4824)

(declare-fun lt!109995 () Unit!4824)

(assert (=> d!77615 (= lt!110004 lt!109995)))

(declare-fun e!166633 () Bool)

(assert (=> d!77615 e!166633))

(declare-fun res!122791 () Bool)

(assert (=> d!77615 (=> (not res!122791) (not e!166633))))

(declare-fun lt!109996 () Token!1198)

(assert (=> d!77615 (= res!122791 (isDefined!646 (getRuleFromTag!121 thiss!17480 rules!1920 (tag!937 (rule!1312 lt!109996)))))))

(assert (=> d!77615 (= lt!109995 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!121 thiss!17480 rules!1920 (list!1547 call!14529) lt!109996))))

(declare-fun lt!109999 () Unit!4824)

(declare-fun lt!110007 () Unit!4824)

(assert (=> d!77615 (= lt!109999 lt!110007)))

(declare-fun lt!110002 () List!3818)

(assert (=> d!77615 (isPrefix!394 lt!110002 (++!988 (list!1547 call!14529) (list!1547 lt!109544)))))

(assert (=> d!77615 (= lt!110007 (lemmaPrefixStaysPrefixWhenAddingToSuffix!53 lt!110002 (list!1547 call!14529) (list!1547 lt!109544)))))

(assert (=> d!77615 (= lt!110002 (list!1547 (charsOf!372 lt!109996)))))

(declare-fun lt!109997 () Unit!4824)

(declare-fun lt!110005 () Unit!4824)

(assert (=> d!77615 (= lt!109997 lt!110005)))

(declare-fun lt!110003 () List!3818)

(declare-fun lt!109998 () List!3818)

(assert (=> d!77615 (isPrefix!394 lt!110003 (++!988 lt!110003 lt!109998))))

(assert (=> d!77615 (= lt!110005 (lemmaConcatTwoListThenFirstIsPrefix!289 lt!110003 lt!109998))))

(assert (=> d!77615 (= lt!109998 (_2!2349 (get!1255 (maxPrefix!331 thiss!17480 rules!1920 (list!1547 call!14529)))))))

(assert (=> d!77615 (= lt!110003 (list!1547 (charsOf!372 lt!109996)))))

(assert (=> d!77615 (= lt!109996 (head!884 (list!1550 (_1!2346 (lex!404 thiss!17480 rules!1920 (seqFromList!821 (list!1547 call!14529)))))))))

(assert (=> d!77615 (not (isEmpty!2398 rules!1920))))

(assert (=> d!77615 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!108 thiss!17480 rules!1920 (list!1547 call!14529) (list!1547 lt!109544)) lt!110008)))

(declare-fun b!268196 () Bool)

(declare-fun Unit!4860 () Unit!4824)

(assert (=> b!268196 (= e!166632 Unit!4860)))

(declare-fun lt!109994 () List!3818)

(assert (=> b!268196 (= lt!109994 (++!988 (list!1547 call!14529) (list!1547 lt!109544)))))

(declare-fun lt!110001 () Unit!4824)

(assert (=> b!268196 (= lt!110001 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!53 thiss!17480 (rule!1312 lt!109996) rules!1920 lt!109994))))

(assert (=> b!268196 (isEmpty!2408 (maxPrefixOneRule!139 thiss!17480 (rule!1312 lt!109996) lt!109994))))

(declare-fun lt!110000 () Unit!4824)

(assert (=> b!268196 (= lt!110000 lt!110001)))

(declare-fun lt!109992 () List!3818)

(assert (=> b!268196 (= lt!109992 (list!1547 (charsOf!372 lt!109996)))))

(declare-fun lt!109993 () Unit!4824)

(assert (=> b!268196 (= lt!109993 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!53 thiss!17480 (rule!1312 lt!109996) lt!109992 (++!988 (list!1547 call!14529) (list!1547 lt!109544))))))

(assert (=> b!268196 (not (matchR!273 (regex!727 (rule!1312 lt!109996)) lt!109992))))

(declare-fun lt!110006 () Unit!4824)

(assert (=> b!268196 (= lt!110006 lt!109993)))

(assert (=> b!268196 false))

(declare-fun b!268197 () Bool)

(declare-fun Unit!4861 () Unit!4824)

(assert (=> b!268197 (= e!166632 Unit!4861)))

(declare-fun b!268195 () Bool)

(assert (=> b!268195 (= e!166633 (= (rule!1312 lt!109996) (get!1257 (getRuleFromTag!121 thiss!17480 rules!1920 (tag!937 (rule!1312 lt!109996))))))))

(declare-fun b!268194 () Bool)

(declare-fun res!122792 () Bool)

(assert (=> b!268194 (=> (not res!122792) (not e!166633))))

(assert (=> b!268194 (= res!122792 (matchR!273 (regex!727 (get!1257 (getRuleFromTag!121 thiss!17480 rules!1920 (tag!937 (rule!1312 lt!109996))))) (list!1547 (charsOf!372 lt!109996))))))

(assert (= (and d!77615 res!122791) b!268194))

(assert (= (and b!268194 res!122792) b!268195))

(assert (= (and d!77615 c!50799) b!268196))

(assert (= (and d!77615 (not c!50799)) b!268197))

(declare-fun m!337323 () Bool)

(assert (=> d!77615 m!337323))

(declare-fun m!337325 () Bool)

(assert (=> d!77615 m!337325))

(declare-fun m!337327 () Bool)

(assert (=> d!77615 m!337327))

(declare-fun m!337329 () Bool)

(assert (=> d!77615 m!337329))

(declare-fun m!337331 () Bool)

(assert (=> d!77615 m!337331))

(declare-fun m!337333 () Bool)

(assert (=> d!77615 m!337333))

(declare-fun m!337335 () Bool)

(assert (=> d!77615 m!337335))

(declare-fun m!337337 () Bool)

(assert (=> d!77615 m!337337))

(declare-fun m!337339 () Bool)

(assert (=> d!77615 m!337339))

(declare-fun m!337341 () Bool)

(assert (=> d!77615 m!337341))

(declare-fun m!337343 () Bool)

(assert (=> d!77615 m!337343))

(declare-fun m!337345 () Bool)

(assert (=> d!77615 m!337345))

(declare-fun m!337347 () Bool)

(assert (=> d!77615 m!337347))

(assert (=> d!77615 m!337323))

(declare-fun m!337349 () Bool)

(assert (=> d!77615 m!337349))

(assert (=> d!77615 m!337341))

(assert (=> d!77615 m!337323))

(assert (=> d!77615 m!335339))

(declare-fun m!337351 () Bool)

(assert (=> d!77615 m!337351))

(assert (=> d!77615 m!335339))

(declare-fun m!337353 () Bool)

(assert (=> d!77615 m!337353))

(assert (=> d!77615 m!337337))

(assert (=> d!77615 m!335339))

(assert (=> d!77615 m!335343))

(assert (=> d!77615 m!337341))

(assert (=> d!77615 m!337331))

(assert (=> d!77615 m!337351))

(declare-fun m!337355 () Bool)

(assert (=> d!77615 m!337355))

(assert (=> d!77615 m!334541))

(assert (=> d!77615 m!335339))

(assert (=> d!77615 m!335343))

(declare-fun m!337357 () Bool)

(assert (=> d!77615 m!337357))

(assert (=> d!77615 m!337335))

(declare-fun m!337359 () Bool)

(assert (=> d!77615 m!337359))

(assert (=> d!77615 m!337345))

(declare-fun m!337361 () Bool)

(assert (=> d!77615 m!337361))

(assert (=> d!77615 m!335339))

(assert (=> d!77615 m!337327))

(declare-fun m!337363 () Bool)

(assert (=> b!268196 m!337363))

(assert (=> b!268196 m!337337))

(assert (=> b!268196 m!337337))

(assert (=> b!268196 m!337339))

(declare-fun m!337365 () Bool)

(assert (=> b!268196 m!337365))

(assert (=> b!268196 m!335339))

(assert (=> b!268196 m!335343))

(assert (=> b!268196 m!337341))

(assert (=> b!268196 m!337365))

(declare-fun m!337367 () Bool)

(assert (=> b!268196 m!337367))

(declare-fun m!337369 () Bool)

(assert (=> b!268196 m!337369))

(assert (=> b!268196 m!337341))

(declare-fun m!337371 () Bool)

(assert (=> b!268196 m!337371))

(assert (=> b!268195 m!337345))

(assert (=> b!268195 m!337345))

(declare-fun m!337373 () Bool)

(assert (=> b!268195 m!337373))

(assert (=> b!268194 m!337337))

(assert (=> b!268194 m!337337))

(assert (=> b!268194 m!337339))

(assert (=> b!268194 m!337339))

(declare-fun m!337375 () Bool)

(assert (=> b!268194 m!337375))

(assert (=> b!268194 m!337345))

(assert (=> b!268194 m!337345))

(assert (=> b!268194 m!337373))

(assert (=> b!267282 d!77615))

(declare-fun d!77617 () Bool)

(declare-fun lt!110012 () BalanceConc!2560)

(assert (=> d!77617 (= (list!1547 lt!110012) (printListTailRec!125 thiss!17480 (dropList!160 (singletonSeq!273 call!14530) 0) (list!1547 (BalanceConc!2561 Empty!1276))))))

(declare-fun e!166635 () BalanceConc!2560)

(assert (=> d!77617 (= lt!110012 e!166635)))

(declare-fun c!50800 () Bool)

(assert (=> d!77617 (= c!50800 (>= 0 (size!3028 (singletonSeq!273 call!14530))))))

(declare-fun e!166634 () Bool)

(assert (=> d!77617 e!166634))

(declare-fun res!122793 () Bool)

(assert (=> d!77617 (=> (not res!122793) (not e!166634))))

(assert (=> d!77617 (= res!122793 (>= 0 0))))

(assert (=> d!77617 (= (printTailRec!301 thiss!17480 (singletonSeq!273 call!14530) 0 (BalanceConc!2561 Empty!1276)) lt!110012)))

(declare-fun b!268198 () Bool)

(assert (=> b!268198 (= e!166634 (<= 0 (size!3028 (singletonSeq!273 call!14530))))))

(declare-fun b!268199 () Bool)

(assert (=> b!268199 (= e!166635 (BalanceConc!2561 Empty!1276))))

(declare-fun b!268200 () Bool)

(assert (=> b!268200 (= e!166635 (printTailRec!301 thiss!17480 (singletonSeq!273 call!14530) (+ 0 1) (++!990 (BalanceConc!2561 Empty!1276) (charsOf!372 (apply!757 (singletonSeq!273 call!14530) 0)))))))

(declare-fun lt!110011 () List!3820)

(assert (=> b!268200 (= lt!110011 (list!1550 (singletonSeq!273 call!14530)))))

(declare-fun lt!110010 () Unit!4824)

(assert (=> b!268200 (= lt!110010 (lemmaDropApply!200 lt!110011 0))))

(assert (=> b!268200 (= (head!884 (drop!213 lt!110011 0)) (apply!758 lt!110011 0))))

(declare-fun lt!110015 () Unit!4824)

(assert (=> b!268200 (= lt!110015 lt!110010)))

(declare-fun lt!110013 () List!3820)

(assert (=> b!268200 (= lt!110013 (list!1550 (singletonSeq!273 call!14530)))))

(declare-fun lt!110009 () Unit!4824)

(assert (=> b!268200 (= lt!110009 (lemmaDropTail!192 lt!110013 0))))

(assert (=> b!268200 (= (tail!474 (drop!213 lt!110013 0)) (drop!213 lt!110013 (+ 0 1)))))

(declare-fun lt!110014 () Unit!4824)

(assert (=> b!268200 (= lt!110014 lt!110009)))

(assert (= (and d!77617 res!122793) b!268198))

(assert (= (and d!77617 c!50800) b!268199))

(assert (= (and d!77617 (not c!50800)) b!268200))

(assert (=> d!77617 m!335341))

(declare-fun m!337377 () Bool)

(assert (=> d!77617 m!337377))

(assert (=> d!77617 m!334705))

(assert (=> d!77617 m!337377))

(assert (=> d!77617 m!334705))

(declare-fun m!337379 () Bool)

(assert (=> d!77617 m!337379))

(assert (=> d!77617 m!335341))

(declare-fun m!337381 () Bool)

(assert (=> d!77617 m!337381))

(declare-fun m!337383 () Bool)

(assert (=> d!77617 m!337383))

(assert (=> b!268198 m!335341))

(assert (=> b!268198 m!337381))

(declare-fun m!337385 () Bool)

(assert (=> b!268200 m!337385))

(declare-fun m!337387 () Bool)

(assert (=> b!268200 m!337387))

(assert (=> b!268200 m!337385))

(declare-fun m!337389 () Bool)

(assert (=> b!268200 m!337389))

(declare-fun m!337391 () Bool)

(assert (=> b!268200 m!337391))

(declare-fun m!337393 () Bool)

(assert (=> b!268200 m!337393))

(declare-fun m!337395 () Bool)

(assert (=> b!268200 m!337395))

(assert (=> b!268200 m!335341))

(declare-fun m!337397 () Bool)

(assert (=> b!268200 m!337397))

(assert (=> b!268200 m!337397))

(declare-fun m!337399 () Bool)

(assert (=> b!268200 m!337399))

(assert (=> b!268200 m!337393))

(declare-fun m!337401 () Bool)

(assert (=> b!268200 m!337401))

(declare-fun m!337403 () Bool)

(assert (=> b!268200 m!337403))

(assert (=> b!268200 m!335341))

(assert (=> b!268200 m!337319))

(assert (=> b!268200 m!335341))

(declare-fun m!337405 () Bool)

(assert (=> b!268200 m!337405))

(declare-fun m!337407 () Bool)

(assert (=> b!268200 m!337407))

(assert (=> b!268200 m!337399))

(assert (=> b!268200 m!337405))

(assert (=> b!267282 d!77617))

(declare-fun d!77619 () Bool)

(assert (=> d!77619 (= (list!1547 lt!109544) (list!1551 (c!50467 lt!109544)))))

(declare-fun bs!29591 () Bool)

(assert (= bs!29591 d!77619))

(declare-fun m!337409 () Bool)

(assert (=> bs!29591 m!337409))

(assert (=> b!267282 d!77619))

(declare-fun d!77621 () Bool)

(declare-fun e!166636 () Bool)

(assert (=> d!77621 e!166636))

(declare-fun res!122794 () Bool)

(assert (=> d!77621 (=> (not res!122794) (not e!166636))))

(declare-fun lt!110016 () BalanceConc!2562)

(assert (=> d!77621 (= res!122794 (= (list!1550 lt!110016) (Cons!3810 call!14530 Nil!3810)))))

(assert (=> d!77621 (= lt!110016 (singleton!109 call!14530))))

(assert (=> d!77621 (= (singletonSeq!273 call!14530) lt!110016)))

(declare-fun b!268201 () Bool)

(assert (=> b!268201 (= e!166636 (isBalanced!344 (c!50469 lt!110016)))))

(assert (= (and d!77621 res!122794) b!268201))

(declare-fun m!337411 () Bool)

(assert (=> d!77621 m!337411))

(declare-fun m!337413 () Bool)

(assert (=> d!77621 m!337413))

(declare-fun m!337415 () Bool)

(assert (=> b!268201 m!337415))

(assert (=> b!267282 d!77621))

(declare-fun d!77623 () Bool)

(declare-fun c!50801 () Bool)

(assert (=> d!77623 (= c!50801 ((_ is Nil!3808) lt!109483))))

(declare-fun e!166637 () (InoxSet C!2824))

(assert (=> d!77623 (= (content!543 lt!109483) e!166637)))

(declare-fun b!268202 () Bool)

(assert (=> b!268202 (= e!166637 ((as const (Array C!2824 Bool)) false))))

(declare-fun b!268203 () Bool)

(assert (=> b!268203 (= e!166637 ((_ map or) (store ((as const (Array C!2824 Bool)) false) (h!9205 lt!109483) true) (content!543 (t!37802 lt!109483))))))

(assert (= (and d!77623 c!50801) b!268202))

(assert (= (and d!77623 (not c!50801)) b!268203))

(declare-fun m!337417 () Bool)

(assert (=> b!268203 m!337417))

(declare-fun m!337419 () Bool)

(assert (=> b!268203 m!337419))

(assert (=> d!77055 d!77623))

(assert (=> d!77055 d!77257))

(declare-fun d!77625 () Bool)

(declare-fun c!50802 () Bool)

(assert (=> d!77625 (= c!50802 ((_ is Nil!3808) lt!109297))))

(declare-fun e!166638 () (InoxSet C!2824))

(assert (=> d!77625 (= (content!543 lt!109297) e!166638)))

(declare-fun b!268204 () Bool)

(assert (=> b!268204 (= e!166638 ((as const (Array C!2824 Bool)) false))))

(declare-fun b!268205 () Bool)

(assert (=> b!268205 (= e!166638 ((_ map or) (store ((as const (Array C!2824 Bool)) false) (h!9205 lt!109297) true) (content!543 (t!37802 lt!109297))))))

(assert (= (and d!77625 c!50802) b!268204))

(assert (= (and d!77625 (not c!50802)) b!268205))

(declare-fun m!337421 () Bool)

(assert (=> b!268205 m!337421))

(declare-fun m!337423 () Bool)

(assert (=> b!268205 m!337423))

(assert (=> d!77055 d!77625))

(declare-fun d!77627 () Bool)

(assert (=> d!77627 (= (list!1550 lt!109335) (list!1552 (c!50469 lt!109335)))))

(declare-fun bs!29592 () Bool)

(assert (= bs!29592 d!77627))

(declare-fun m!337425 () Bool)

(assert (=> bs!29592 m!337425))

(assert (=> d!77003 d!77627))

(declare-fun d!77629 () Bool)

(declare-fun e!166641 () Bool)

(assert (=> d!77629 e!166641))

(declare-fun res!122797 () Bool)

(assert (=> d!77629 (=> (not res!122797) (not e!166641))))

(declare-fun lt!110019 () BalanceConc!2562)

(assert (=> d!77629 (= res!122797 (= (list!1550 lt!110019) (Cons!3810 (h!9207 tokens!465) Nil!3810)))))

(declare-fun choose!2445 (Token!1198) BalanceConc!2562)

(assert (=> d!77629 (= lt!110019 (choose!2445 (h!9207 tokens!465)))))

(assert (=> d!77629 (= (singleton!109 (h!9207 tokens!465)) lt!110019)))

(declare-fun b!268208 () Bool)

(assert (=> b!268208 (= e!166641 (isBalanced!344 (c!50469 lt!110019)))))

(assert (= (and d!77629 res!122797) b!268208))

(declare-fun m!337427 () Bool)

(assert (=> d!77629 m!337427))

(declare-fun m!337429 () Bool)

(assert (=> d!77629 m!337429))

(declare-fun m!337431 () Bool)

(assert (=> b!268208 m!337431))

(assert (=> d!77003 d!77629))

(declare-fun d!77631 () Bool)

(declare-fun c!50803 () Bool)

(assert (=> d!77631 (= c!50803 ((_ is Empty!1276) (c!50467 lt!109291)))))

(declare-fun e!166642 () List!3818)

(assert (=> d!77631 (= (list!1551 (c!50467 lt!109291)) e!166642)))

(declare-fun b!268209 () Bool)

(assert (=> b!268209 (= e!166642 Nil!3808)))

(declare-fun b!268210 () Bool)

(declare-fun e!166643 () List!3818)

(assert (=> b!268210 (= e!166642 e!166643)))

(declare-fun c!50804 () Bool)

(assert (=> b!268210 (= c!50804 ((_ is Leaf!1979) (c!50467 lt!109291)))))

(declare-fun b!268211 () Bool)

(assert (=> b!268211 (= e!166643 (list!1553 (xs!3875 (c!50467 lt!109291))))))

(declare-fun b!268212 () Bool)

(assert (=> b!268212 (= e!166643 (++!988 (list!1551 (left!3130 (c!50467 lt!109291))) (list!1551 (right!3460 (c!50467 lt!109291)))))))

(assert (= (and d!77631 c!50803) b!268209))

(assert (= (and d!77631 (not c!50803)) b!268210))

(assert (= (and b!268210 c!50804) b!268211))

(assert (= (and b!268210 (not c!50804)) b!268212))

(declare-fun m!337433 () Bool)

(assert (=> b!268211 m!337433))

(declare-fun m!337435 () Bool)

(assert (=> b!268212 m!337435))

(declare-fun m!337437 () Bool)

(assert (=> b!268212 m!337437))

(assert (=> b!268212 m!337435))

(assert (=> b!268212 m!337437))

(declare-fun m!337439 () Bool)

(assert (=> b!268212 m!337439))

(assert (=> d!76999 d!77631))

(assert (=> d!76973 d!77003))

(declare-fun d!77633 () Bool)

(assert (=> d!77633 (= (list!1550 (singletonSeq!273 (h!9207 tokens!465))) (list!1552 (c!50469 (singletonSeq!273 (h!9207 tokens!465)))))))

(declare-fun bs!29593 () Bool)

(assert (= bs!29593 d!77633))

(declare-fun m!337441 () Bool)

(assert (=> bs!29593 m!337441))

(assert (=> d!76973 d!77633))

(declare-fun b!268219 () Bool)

(declare-fun res!122803 () Bool)

(declare-fun e!166647 () Bool)

(assert (=> b!268219 (=> (not res!122803) (not e!166647))))

(declare-fun lt!110042 () tuple2!4260)

(assert (=> b!268219 (= res!122803 (= (list!1550 (_1!2346 lt!110042)) (_1!2350 (lexList!204 thiss!17480 rules!1920 (list!1547 (print!338 thiss!17480 (singletonSeq!273 (h!9207 tokens!465))))))))))

(declare-fun d!77635 () Bool)

(assert (=> d!77635 e!166647))

(declare-fun res!122804 () Bool)

(assert (=> d!77635 (=> (not res!122804) (not e!166647))))

(declare-fun e!166648 () Bool)

(assert (=> d!77635 (= res!122804 e!166648)))

(declare-fun c!50805 () Bool)

(assert (=> d!77635 (= c!50805 (> (size!3028 (_1!2346 lt!110042)) 0))))

(assert (=> d!77635 (= lt!110042 (lexTailRecV2!171 thiss!17480 rules!1920 (print!338 thiss!17480 (singletonSeq!273 (h!9207 tokens!465))) (BalanceConc!2561 Empty!1276) (print!338 thiss!17480 (singletonSeq!273 (h!9207 tokens!465))) (BalanceConc!2563 Empty!1277)))))

(assert (=> d!77635 (= (lex!404 thiss!17480 rules!1920 (print!338 thiss!17480 (singletonSeq!273 (h!9207 tokens!465)))) lt!110042)))

(declare-fun b!268220 () Bool)

(declare-fun e!166646 () Bool)

(assert (=> b!268220 (= e!166646 (not (isEmpty!2404 (_1!2346 lt!110042))))))

(declare-fun b!268221 () Bool)

(assert (=> b!268221 (= e!166648 e!166646)))

(declare-fun res!122802 () Bool)

(assert (=> b!268221 (= res!122802 (< (size!3030 (_2!2346 lt!110042)) (size!3030 (print!338 thiss!17480 (singletonSeq!273 (h!9207 tokens!465))))))))

(assert (=> b!268221 (=> (not res!122802) (not e!166646))))

(declare-fun b!268222 () Bool)

(assert (=> b!268222 (= e!166647 (= (list!1547 (_2!2346 lt!110042)) (_2!2350 (lexList!204 thiss!17480 rules!1920 (list!1547 (print!338 thiss!17480 (singletonSeq!273 (h!9207 tokens!465))))))))))

(declare-fun b!268223 () Bool)

(assert (=> b!268223 (= e!166648 (= (_2!2346 lt!110042) (print!338 thiss!17480 (singletonSeq!273 (h!9207 tokens!465)))))))

(assert (= (and d!77635 c!50805) b!268221))

(assert (= (and d!77635 (not c!50805)) b!268223))

(assert (= (and b!268221 res!122802) b!268220))

(assert (= (and d!77635 res!122804) b!268219))

(assert (= (and b!268219 res!122803) b!268222))

(declare-fun m!337443 () Bool)

(assert (=> d!77635 m!337443))

(assert (=> d!77635 m!334631))

(assert (=> d!77635 m!334631))

(declare-fun m!337445 () Bool)

(assert (=> d!77635 m!337445))

(declare-fun m!337447 () Bool)

(assert (=> b!268222 m!337447))

(assert (=> b!268222 m!334631))

(declare-fun m!337449 () Bool)

(assert (=> b!268222 m!337449))

(assert (=> b!268222 m!337449))

(declare-fun m!337451 () Bool)

(assert (=> b!268222 m!337451))

(declare-fun m!337453 () Bool)

(assert (=> b!268219 m!337453))

(assert (=> b!268219 m!334631))

(assert (=> b!268219 m!337449))

(assert (=> b!268219 m!337449))

(assert (=> b!268219 m!337451))

(declare-fun m!337455 () Bool)

(assert (=> b!268220 m!337455))

(declare-fun m!337457 () Bool)

(assert (=> b!268221 m!337457))

(assert (=> b!268221 m!334631))

(declare-fun m!337459 () Bool)

(assert (=> b!268221 m!337459))

(assert (=> d!76973 d!77635))

(declare-fun d!77637 () Bool)

(assert (=> d!77637 (= (list!1550 (_1!2346 (lex!404 thiss!17480 rules!1920 (print!338 thiss!17480 (singletonSeq!273 (h!9207 tokens!465)))))) (list!1552 (c!50469 (_1!2346 (lex!404 thiss!17480 rules!1920 (print!338 thiss!17480 (singletonSeq!273 (h!9207 tokens!465))))))))))

(declare-fun bs!29594 () Bool)

(assert (= bs!29594 d!77637))

(declare-fun m!337461 () Bool)

(assert (=> bs!29594 m!337461))

(assert (=> d!76973 d!77637))

(assert (=> d!76973 d!76989))

(assert (=> d!76973 d!77559))

(declare-fun d!77639 () Bool)

(declare-fun lt!110055 () Int)

(assert (=> d!77639 (= lt!110055 (size!3031 (list!1550 (_1!2346 lt!109306))))))

(assert (=> d!77639 (= lt!110055 (size!3033 (c!50469 (_1!2346 lt!109306))))))

(assert (=> d!77639 (= (size!3028 (_1!2346 lt!109306)) lt!110055)))

(declare-fun bs!29595 () Bool)

(assert (= bs!29595 d!77639))

(assert (=> bs!29595 m!336787))

(assert (=> bs!29595 m!336787))

(declare-fun m!337463 () Bool)

(assert (=> bs!29595 m!337463))

(declare-fun m!337465 () Bool)

(assert (=> bs!29595 m!337465))

(assert (=> d!76973 d!77639))

(declare-fun b!268227 () Bool)

(declare-fun e!166652 () List!3818)

(assert (=> b!268227 (= e!166652 (Cons!3808 (h!9205 call!14527) (++!988 (t!37802 call!14527) lt!109534)))))

(declare-fun e!166651 () Bool)

(declare-fun b!268229 () Bool)

(declare-fun lt!110056 () List!3818)

(assert (=> b!268229 (= e!166651 (or (not (= lt!109534 Nil!3808)) (= lt!110056 call!14527)))))

(declare-fun b!268228 () Bool)

(declare-fun res!122806 () Bool)

(assert (=> b!268228 (=> (not res!122806) (not e!166651))))

(assert (=> b!268228 (= res!122806 (= (size!3029 lt!110056) (+ (size!3029 call!14527) (size!3029 lt!109534))))))

(declare-fun b!268226 () Bool)

(assert (=> b!268226 (= e!166652 lt!109534)))

(declare-fun d!77641 () Bool)

(assert (=> d!77641 e!166651))

(declare-fun res!122805 () Bool)

(assert (=> d!77641 (=> (not res!122805) (not e!166651))))

(assert (=> d!77641 (= res!122805 (= (content!543 lt!110056) ((_ map or) (content!543 call!14527) (content!543 lt!109534))))))

(assert (=> d!77641 (= lt!110056 e!166652)))

(declare-fun c!50808 () Bool)

(assert (=> d!77641 (= c!50808 ((_ is Nil!3808) call!14527))))

(assert (=> d!77641 (= (++!988 call!14527 lt!109534) lt!110056)))

(assert (= (and d!77641 c!50808) b!268226))

(assert (= (and d!77641 (not c!50808)) b!268227))

(assert (= (and d!77641 res!122805) b!268228))

(assert (= (and b!268228 res!122806) b!268229))

(declare-fun m!337467 () Bool)

(assert (=> b!268227 m!337467))

(declare-fun m!337469 () Bool)

(assert (=> b!268228 m!337469))

(declare-fun m!337471 () Bool)

(assert (=> b!268228 m!337471))

(assert (=> b!268228 m!337297))

(declare-fun m!337473 () Bool)

(assert (=> d!77641 m!337473))

(declare-fun m!337475 () Bool)

(assert (=> d!77641 m!337475))

(assert (=> d!77641 m!337303))

(assert (=> b!267251 d!77641))

(declare-fun d!77643 () Bool)

(assert (=> d!77643 (= (inv!17 (value!25035 separatorToken!170)) (= (charsToBigInt!1 (text!5691 (value!25035 separatorToken!170))) (value!25027 (value!25035 separatorToken!170))))))

(declare-fun bs!29596 () Bool)

(assert (= bs!29596 d!77643))

(declare-fun m!337477 () Bool)

(assert (=> bs!29596 m!337477))

(assert (=> b!267304 d!77643))

(declare-fun b!268231 () Bool)

(declare-fun e!166654 () List!3818)

(assert (=> b!268231 (= e!166654 (Cons!3808 (h!9205 (t!37802 lt!109293)) (++!988 (t!37802 (t!37802 lt!109293)) lt!109292)))))

(declare-fun b!268233 () Bool)

(declare-fun lt!110057 () List!3818)

(declare-fun e!166653 () Bool)

(assert (=> b!268233 (= e!166653 (or (not (= lt!109292 Nil!3808)) (= lt!110057 (t!37802 lt!109293))))))

(declare-fun b!268232 () Bool)

(declare-fun res!122808 () Bool)

(assert (=> b!268232 (=> (not res!122808) (not e!166653))))

(assert (=> b!268232 (= res!122808 (= (size!3029 lt!110057) (+ (size!3029 (t!37802 lt!109293)) (size!3029 lt!109292))))))

(declare-fun b!268230 () Bool)

(assert (=> b!268230 (= e!166654 lt!109292)))

(declare-fun d!77645 () Bool)

(assert (=> d!77645 e!166653))

(declare-fun res!122807 () Bool)

(assert (=> d!77645 (=> (not res!122807) (not e!166653))))

(assert (=> d!77645 (= res!122807 (= (content!543 lt!110057) ((_ map or) (content!543 (t!37802 lt!109293)) (content!543 lt!109292))))))

(assert (=> d!77645 (= lt!110057 e!166654)))

(declare-fun c!50809 () Bool)

(assert (=> d!77645 (= c!50809 ((_ is Nil!3808) (t!37802 lt!109293)))))

(assert (=> d!77645 (= (++!988 (t!37802 lt!109293) lt!109292) lt!110057)))

(assert (= (and d!77645 c!50809) b!268230))

(assert (= (and d!77645 (not c!50809)) b!268231))

(assert (= (and d!77645 res!122807) b!268232))

(assert (= (and b!268232 res!122808) b!268233))

(declare-fun m!337479 () Bool)

(assert (=> b!268231 m!337479))

(declare-fun m!337481 () Bool)

(assert (=> b!268232 m!337481))

(assert (=> b!268232 m!335535))

(assert (=> b!268232 m!334765))

(declare-fun m!337483 () Bool)

(assert (=> d!77645 m!337483))

(assert (=> d!77645 m!335747))

(assert (=> d!77645 m!334771))

(assert (=> b!267325 d!77645))

(declare-fun b!268235 () Bool)

(declare-fun e!166656 () List!3818)

(assert (=> b!268235 (= e!166656 (Cons!3808 (h!9205 (t!37802 (++!988 lt!109293 lt!109298))) (++!988 (t!37802 (t!37802 (++!988 lt!109293 lt!109298))) lt!109292)))))

(declare-fun lt!110058 () List!3818)

(declare-fun e!166655 () Bool)

(declare-fun b!268237 () Bool)

(assert (=> b!268237 (= e!166655 (or (not (= lt!109292 Nil!3808)) (= lt!110058 (t!37802 (++!988 lt!109293 lt!109298)))))))

(declare-fun b!268236 () Bool)

(declare-fun res!122810 () Bool)

(assert (=> b!268236 (=> (not res!122810) (not e!166655))))

(assert (=> b!268236 (= res!122810 (= (size!3029 lt!110058) (+ (size!3029 (t!37802 (++!988 lt!109293 lt!109298))) (size!3029 lt!109292))))))

(declare-fun b!268234 () Bool)

(assert (=> b!268234 (= e!166656 lt!109292)))

(declare-fun d!77647 () Bool)

(assert (=> d!77647 e!166655))

(declare-fun res!122809 () Bool)

(assert (=> d!77647 (=> (not res!122809) (not e!166655))))

(assert (=> d!77647 (= res!122809 (= (content!543 lt!110058) ((_ map or) (content!543 (t!37802 (++!988 lt!109293 lt!109298))) (content!543 lt!109292))))))

(assert (=> d!77647 (= lt!110058 e!166656)))

(declare-fun c!50810 () Bool)

(assert (=> d!77647 (= c!50810 ((_ is Nil!3808) (t!37802 (++!988 lt!109293 lt!109298))))))

(assert (=> d!77647 (= (++!988 (t!37802 (++!988 lt!109293 lt!109298)) lt!109292) lt!110058)))

(assert (= (and d!77647 c!50810) b!268234))

(assert (= (and d!77647 (not c!50810)) b!268235))

(assert (= (and d!77647 res!122809) b!268236))

(assert (= (and b!268236 res!122810) b!268237))

(declare-fun m!337485 () Bool)

(assert (=> b!268235 m!337485))

(declare-fun m!337487 () Bool)

(assert (=> b!268236 m!337487))

(assert (=> b!268236 m!335735))

(assert (=> b!268236 m!334765))

(declare-fun m!337489 () Bool)

(assert (=> d!77647 m!337489))

(declare-fun m!337491 () Bool)

(assert (=> d!77647 m!337491))

(assert (=> d!77647 m!334771))

(assert (=> b!267107 d!77647))

(declare-fun d!77649 () Bool)

(assert (=> d!77649 (= (list!1547 e!166098) (list!1551 (c!50467 e!166098)))))

(declare-fun bs!29597 () Bool)

(assert (= bs!29597 d!77649))

(declare-fun m!337493 () Bool)

(assert (=> bs!29597 m!337493))

(assert (=> bm!14530 d!77649))

(assert (=> bm!14505 d!77251))

(declare-fun b!268239 () Bool)

(declare-fun e!166658 () List!3818)

(assert (=> b!268239 (= e!166658 (Cons!3808 (h!9205 (list!1547 (charsOf!372 (h!9207 (Cons!3810 (h!9207 tokens!465) Nil!3810))))) (++!988 (t!37802 (list!1547 (charsOf!372 (h!9207 (Cons!3810 (h!9207 tokens!465) Nil!3810))))) (printList!289 thiss!17480 (t!37804 (Cons!3810 (h!9207 tokens!465) Nil!3810))))))))

(declare-fun lt!110059 () List!3818)

(declare-fun e!166657 () Bool)

(declare-fun b!268241 () Bool)

(assert (=> b!268241 (= e!166657 (or (not (= (printList!289 thiss!17480 (t!37804 (Cons!3810 (h!9207 tokens!465) Nil!3810))) Nil!3808)) (= lt!110059 (list!1547 (charsOf!372 (h!9207 (Cons!3810 (h!9207 tokens!465) Nil!3810)))))))))

(declare-fun b!268240 () Bool)

(declare-fun res!122812 () Bool)

(assert (=> b!268240 (=> (not res!122812) (not e!166657))))

(assert (=> b!268240 (= res!122812 (= (size!3029 lt!110059) (+ (size!3029 (list!1547 (charsOf!372 (h!9207 (Cons!3810 (h!9207 tokens!465) Nil!3810))))) (size!3029 (printList!289 thiss!17480 (t!37804 (Cons!3810 (h!9207 tokens!465) Nil!3810)))))))))

(declare-fun b!268238 () Bool)

(assert (=> b!268238 (= e!166658 (printList!289 thiss!17480 (t!37804 (Cons!3810 (h!9207 tokens!465) Nil!3810))))))

(declare-fun d!77651 () Bool)

(assert (=> d!77651 e!166657))

(declare-fun res!122811 () Bool)

(assert (=> d!77651 (=> (not res!122811) (not e!166657))))

(assert (=> d!77651 (= res!122811 (= (content!543 lt!110059) ((_ map or) (content!543 (list!1547 (charsOf!372 (h!9207 (Cons!3810 (h!9207 tokens!465) Nil!3810))))) (content!543 (printList!289 thiss!17480 (t!37804 (Cons!3810 (h!9207 tokens!465) Nil!3810)))))))))

(assert (=> d!77651 (= lt!110059 e!166658)))

(declare-fun c!50811 () Bool)

(assert (=> d!77651 (= c!50811 ((_ is Nil!3808) (list!1547 (charsOf!372 (h!9207 (Cons!3810 (h!9207 tokens!465) Nil!3810))))))))

(assert (=> d!77651 (= (++!988 (list!1547 (charsOf!372 (h!9207 (Cons!3810 (h!9207 tokens!465) Nil!3810)))) (printList!289 thiss!17480 (t!37804 (Cons!3810 (h!9207 tokens!465) Nil!3810)))) lt!110059)))

(assert (= (and d!77651 c!50811) b!268238))

(assert (= (and d!77651 (not c!50811)) b!268239))

(assert (= (and d!77651 res!122811) b!268240))

(assert (= (and b!268240 res!122812) b!268241))

(assert (=> b!268239 m!334755))

(declare-fun m!337495 () Bool)

(assert (=> b!268239 m!337495))

(declare-fun m!337497 () Bool)

(assert (=> b!268240 m!337497))

(assert (=> b!268240 m!334753))

(declare-fun m!337499 () Bool)

(assert (=> b!268240 m!337499))

(assert (=> b!268240 m!334755))

(declare-fun m!337501 () Bool)

(assert (=> b!268240 m!337501))

(declare-fun m!337503 () Bool)

(assert (=> d!77651 m!337503))

(assert (=> d!77651 m!334753))

(declare-fun m!337505 () Bool)

(assert (=> d!77651 m!337505))

(assert (=> d!77651 m!334755))

(declare-fun m!337507 () Bool)

(assert (=> d!77651 m!337507))

(assert (=> b!266910 d!77651))

(declare-fun d!77653 () Bool)

(assert (=> d!77653 (= (list!1547 (charsOf!372 (h!9207 (Cons!3810 (h!9207 tokens!465) Nil!3810)))) (list!1551 (c!50467 (charsOf!372 (h!9207 (Cons!3810 (h!9207 tokens!465) Nil!3810))))))))

(declare-fun bs!29598 () Bool)

(assert (= bs!29598 d!77653))

(declare-fun m!337509 () Bool)

(assert (=> bs!29598 m!337509))

(assert (=> b!266910 d!77653))

(declare-fun d!77655 () Bool)

(declare-fun lt!110060 () BalanceConc!2560)

(assert (=> d!77655 (= (list!1547 lt!110060) (originalCharacters!770 (h!9207 (Cons!3810 (h!9207 tokens!465) Nil!3810))))))

(assert (=> d!77655 (= lt!110060 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 (h!9207 (Cons!3810 (h!9207 tokens!465) Nil!3810))))) (value!25035 (h!9207 (Cons!3810 (h!9207 tokens!465) Nil!3810)))))))

(assert (=> d!77655 (= (charsOf!372 (h!9207 (Cons!3810 (h!9207 tokens!465) Nil!3810))) lt!110060)))

(declare-fun b_lambda!8443 () Bool)

(assert (=> (not b_lambda!8443) (not d!77655)))

(declare-fun tb!14947 () Bool)

(declare-fun t!38010 () Bool)

(assert (=> (and b!267380 (= (toChars!1317 (transformation!727 (h!9206 (t!37803 rules!1920)))) (toChars!1317 (transformation!727 (rule!1312 (h!9207 (Cons!3810 (h!9207 tokens!465) Nil!3810)))))) t!38010) tb!14947))

(declare-fun b!268242 () Bool)

(declare-fun e!166659 () Bool)

(declare-fun tp!101987 () Bool)

(assert (=> b!268242 (= e!166659 (and (inv!4709 (c!50467 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 (h!9207 (Cons!3810 (h!9207 tokens!465) Nil!3810))))) (value!25035 (h!9207 (Cons!3810 (h!9207 tokens!465) Nil!3810)))))) tp!101987))))

(declare-fun result!18526 () Bool)

(assert (=> tb!14947 (= result!18526 (and (inv!4710 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 (h!9207 (Cons!3810 (h!9207 tokens!465) Nil!3810))))) (value!25035 (h!9207 (Cons!3810 (h!9207 tokens!465) Nil!3810))))) e!166659))))

(assert (= tb!14947 b!268242))

(declare-fun m!337511 () Bool)

(assert (=> b!268242 m!337511))

(declare-fun m!337513 () Bool)

(assert (=> tb!14947 m!337513))

(assert (=> d!77655 t!38010))

(declare-fun b_and!21261 () Bool)

(assert (= b_and!21257 (and (=> t!38010 result!18526) b_and!21261)))

(declare-fun tb!14949 () Bool)

(declare-fun t!38012 () Bool)

(assert (=> (and b!266822 (= (toChars!1317 (transformation!727 (rule!1312 separatorToken!170))) (toChars!1317 (transformation!727 (rule!1312 (h!9207 (Cons!3810 (h!9207 tokens!465) Nil!3810)))))) t!38012) tb!14949))

(declare-fun result!18528 () Bool)

(assert (= result!18528 result!18526))

(assert (=> d!77655 t!38012))

(declare-fun b_and!21263 () Bool)

(assert (= b_and!21259 (and (=> t!38012 result!18528) b_and!21263)))

(declare-fun t!38014 () Bool)

(declare-fun tb!14951 () Bool)

(assert (=> (and b!267341 (= (toChars!1317 (transformation!727 (rule!1312 (h!9207 (t!37804 tokens!465))))) (toChars!1317 (transformation!727 (rule!1312 (h!9207 (Cons!3810 (h!9207 tokens!465) Nil!3810)))))) t!38014) tb!14951))

(declare-fun result!18530 () Bool)

(assert (= result!18530 result!18526))

(assert (=> d!77655 t!38014))

(declare-fun b_and!21265 () Bool)

(assert (= b_and!21251 (and (=> t!38014 result!18530) b_and!21265)))

(declare-fun tb!14953 () Bool)

(declare-fun t!38016 () Bool)

(assert (=> (and b!266835 (= (toChars!1317 (transformation!727 (h!9206 rules!1920))) (toChars!1317 (transformation!727 (rule!1312 (h!9207 (Cons!3810 (h!9207 tokens!465) Nil!3810)))))) t!38016) tb!14953))

(declare-fun result!18532 () Bool)

(assert (= result!18532 result!18526))

(assert (=> d!77655 t!38016))

(declare-fun b_and!21267 () Bool)

(assert (= b_and!21253 (and (=> t!38016 result!18532) b_and!21267)))

(declare-fun t!38018 () Bool)

(declare-fun tb!14955 () Bool)

(assert (=> (and b!266827 (= (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465)))) (toChars!1317 (transformation!727 (rule!1312 (h!9207 (Cons!3810 (h!9207 tokens!465) Nil!3810)))))) t!38018) tb!14955))

(declare-fun result!18534 () Bool)

(assert (= result!18534 result!18526))

(assert (=> d!77655 t!38018))

(declare-fun b_and!21269 () Bool)

(assert (= b_and!21255 (and (=> t!38018 result!18534) b_and!21269)))

(declare-fun m!337515 () Bool)

(assert (=> d!77655 m!337515))

(declare-fun m!337517 () Bool)

(assert (=> d!77655 m!337517))

(assert (=> b!266910 d!77655))

(declare-fun d!77657 () Bool)

(declare-fun c!50812 () Bool)

(assert (=> d!77657 (= c!50812 ((_ is Cons!3810) (t!37804 (Cons!3810 (h!9207 tokens!465) Nil!3810))))))

(declare-fun e!166660 () List!3818)

(assert (=> d!77657 (= (printList!289 thiss!17480 (t!37804 (Cons!3810 (h!9207 tokens!465) Nil!3810))) e!166660)))

(declare-fun b!268243 () Bool)

(assert (=> b!268243 (= e!166660 (++!988 (list!1547 (charsOf!372 (h!9207 (t!37804 (Cons!3810 (h!9207 tokens!465) Nil!3810))))) (printList!289 thiss!17480 (t!37804 (t!37804 (Cons!3810 (h!9207 tokens!465) Nil!3810))))))))

(declare-fun b!268244 () Bool)

(assert (=> b!268244 (= e!166660 Nil!3808)))

(assert (= (and d!77657 c!50812) b!268243))

(assert (= (and d!77657 (not c!50812)) b!268244))

(declare-fun m!337519 () Bool)

(assert (=> b!268243 m!337519))

(assert (=> b!268243 m!337519))

(declare-fun m!337521 () Bool)

(assert (=> b!268243 m!337521))

(declare-fun m!337523 () Bool)

(assert (=> b!268243 m!337523))

(assert (=> b!268243 m!337521))

(assert (=> b!268243 m!337523))

(declare-fun m!337525 () Bool)

(assert (=> b!268243 m!337525))

(assert (=> b!266910 d!77657))

(declare-fun bs!29599 () Bool)

(declare-fun d!77659 () Bool)

(assert (= bs!29599 (and d!77659 d!77209)))

(declare-fun lambda!9056 () Int)

(assert (=> bs!29599 (= (= (toValue!1458 (transformation!727 (rule!1312 (h!9207 tokens!465)))) (toValue!1458 (transformation!727 (rule!1312 separatorToken!170)))) (= lambda!9056 lambda!9033))))

(declare-fun bs!29600 () Bool)

(assert (= bs!29600 (and d!77659 d!77477)))

(assert (=> bs!29600 (= (= (toValue!1458 (transformation!727 (rule!1312 (h!9207 tokens!465)))) (toValue!1458 (transformation!727 (h!9206 rules!1920)))) (= lambda!9056 lambda!9052))))

(assert (=> d!77659 true))

(assert (=> d!77659 (< (dynLambda!1941 order!2913 (toValue!1458 (transformation!727 (rule!1312 (h!9207 tokens!465))))) (dynLambda!1946 order!2919 lambda!9056))))

(assert (=> d!77659 (= (equivClasses!238 (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465)))) (toValue!1458 (transformation!727 (rule!1312 (h!9207 tokens!465))))) (Forall2!145 lambda!9056))))

(declare-fun bs!29601 () Bool)

(assert (= bs!29601 d!77659))

(declare-fun m!337527 () Bool)

(assert (=> bs!29601 m!337527))

(assert (=> b!266890 d!77659))

(declare-fun d!77661 () Bool)

(declare-fun c!50814 () Bool)

(assert (=> d!77661 (= c!50814 ((_ is Nil!3808) lt!109562))))

(declare-fun e!166663 () (InoxSet C!2824))

(assert (=> d!77661 (= (content!543 lt!109562) e!166663)))

(declare-fun b!268249 () Bool)

(assert (=> b!268249 (= e!166663 ((as const (Array C!2824 Bool)) false))))

(declare-fun b!268250 () Bool)

(assert (=> b!268250 (= e!166663 ((_ map or) (store ((as const (Array C!2824 Bool)) false) (h!9205 lt!109562) true) (content!543 (t!37802 lt!109562))))))

(assert (= (and d!77661 c!50814) b!268249))

(assert (= (and d!77661 (not c!50814)) b!268250))

(declare-fun m!337529 () Bool)

(assert (=> b!268250 m!337529))

(declare-fun m!337531 () Bool)

(assert (=> b!268250 m!337531))

(assert (=> d!77127 d!77661))

(assert (=> d!77127 d!77257))

(assert (=> d!77127 d!77503))

(declare-fun d!77663 () Bool)

(declare-fun c!50815 () Bool)

(assert (=> d!77663 (= c!50815 ((_ is Nil!3808) lt!109488))))

(declare-fun e!166664 () (InoxSet C!2824))

(assert (=> d!77663 (= (content!543 lt!109488) e!166664)))

(declare-fun b!268251 () Bool)

(assert (=> b!268251 (= e!166664 ((as const (Array C!2824 Bool)) false))))

(declare-fun b!268252 () Bool)

(assert (=> b!268252 (= e!166664 ((_ map or) (store ((as const (Array C!2824 Bool)) false) (h!9205 lt!109488) true) (content!543 (t!37802 lt!109488))))))

(assert (= (and d!77663 c!50815) b!268251))

(assert (= (and d!77663 (not c!50815)) b!268252))

(declare-fun m!337533 () Bool)

(assert (=> b!268252 m!337533))

(declare-fun m!337535 () Bool)

(assert (=> b!268252 m!337535))

(assert (=> d!77063 d!77663))

(declare-fun d!77665 () Bool)

(declare-fun c!50816 () Bool)

(assert (=> d!77665 (= c!50816 ((_ is Nil!3808) (++!988 lt!109293 lt!109298)))))

(declare-fun e!166665 () (InoxSet C!2824))

(assert (=> d!77665 (= (content!543 (++!988 lt!109293 lt!109298)) e!166665)))

(declare-fun b!268253 () Bool)

(assert (=> b!268253 (= e!166665 ((as const (Array C!2824 Bool)) false))))

(declare-fun b!268254 () Bool)

(assert (=> b!268254 (= e!166665 ((_ map or) (store ((as const (Array C!2824 Bool)) false) (h!9205 (++!988 lt!109293 lt!109298)) true) (content!543 (t!37802 (++!988 lt!109293 lt!109298)))))))

(assert (= (and d!77665 c!50816) b!268253))

(assert (= (and d!77665 (not c!50816)) b!268254))

(declare-fun m!337537 () Bool)

(assert (=> b!268254 m!337537))

(assert (=> b!268254 m!337491))

(assert (=> d!77063 d!77665))

(assert (=> d!77063 d!77503))

(declare-fun d!77667 () Bool)

(declare-fun lt!110092 () List!3818)

(assert (=> d!77667 (= lt!110092 (++!988 (list!1547 (BalanceConc!2561 Empty!1276)) (printList!289 thiss!17480 (dropList!160 lt!109287 0))))))

(declare-fun e!166674 () List!3818)

(assert (=> d!77667 (= lt!110092 e!166674)))

(declare-fun c!50821 () Bool)

(assert (=> d!77667 (= c!50821 ((_ is Cons!3810) (dropList!160 lt!109287 0)))))

(assert (=> d!77667 (= (printListTailRec!125 thiss!17480 (dropList!160 lt!109287 0) (list!1547 (BalanceConc!2561 Empty!1276))) lt!110092)))

(declare-fun b!268270 () Bool)

(assert (=> b!268270 (= e!166674 (printListTailRec!125 thiss!17480 (t!37804 (dropList!160 lt!109287 0)) (++!988 (list!1547 (BalanceConc!2561 Empty!1276)) (list!1547 (charsOf!372 (h!9207 (dropList!160 lt!109287 0)))))))))

(declare-fun lt!110093 () List!3818)

(assert (=> b!268270 (= lt!110093 (list!1547 (charsOf!372 (h!9207 (dropList!160 lt!109287 0)))))))

(declare-fun lt!110096 () List!3818)

(assert (=> b!268270 (= lt!110096 (printList!289 thiss!17480 (t!37804 (dropList!160 lt!109287 0))))))

(declare-fun lt!110094 () Unit!4824)

(assert (=> b!268270 (= lt!110094 (lemmaConcatAssociativity!424 (list!1547 (BalanceConc!2561 Empty!1276)) lt!110093 lt!110096))))

(assert (=> b!268270 (= (++!988 (++!988 (list!1547 (BalanceConc!2561 Empty!1276)) lt!110093) lt!110096) (++!988 (list!1547 (BalanceConc!2561 Empty!1276)) (++!988 lt!110093 lt!110096)))))

(declare-fun lt!110095 () Unit!4824)

(assert (=> b!268270 (= lt!110095 lt!110094)))

(declare-fun b!268271 () Bool)

(assert (=> b!268271 (= e!166674 (list!1547 (BalanceConc!2561 Empty!1276)))))

(assert (= (and d!77667 c!50821) b!268270))

(assert (= (and d!77667 (not c!50821)) b!268271))

(assert (=> d!77667 m!334703))

(declare-fun m!337637 () Bool)

(assert (=> d!77667 m!337637))

(assert (=> d!77667 m!334705))

(assert (=> d!77667 m!337637))

(declare-fun m!337639 () Bool)

(assert (=> d!77667 m!337639))

(declare-fun m!337641 () Bool)

(assert (=> b!268270 m!337641))

(declare-fun m!337643 () Bool)

(assert (=> b!268270 m!337643))

(declare-fun m!337645 () Bool)

(assert (=> b!268270 m!337645))

(declare-fun m!337647 () Bool)

(assert (=> b!268270 m!337647))

(declare-fun m!337649 () Bool)

(assert (=> b!268270 m!337649))

(assert (=> b!268270 m!334705))

(declare-fun m!337651 () Bool)

(assert (=> b!268270 m!337651))

(declare-fun m!337653 () Bool)

(assert (=> b!268270 m!337653))

(assert (=> b!268270 m!334705))

(assert (=> b!268270 m!337641))

(assert (=> b!268270 m!334705))

(declare-fun m!337655 () Bool)

(assert (=> b!268270 m!337655))

(assert (=> b!268270 m!337647))

(assert (=> b!268270 m!334705))

(declare-fun m!337657 () Bool)

(assert (=> b!268270 m!337657))

(assert (=> b!268270 m!337651))

(declare-fun m!337659 () Bool)

(assert (=> b!268270 m!337659))

(assert (=> b!268270 m!337659))

(assert (=> b!268270 m!337655))

(assert (=> d!76997 d!77667))

(assert (=> d!76997 d!77447))

(declare-fun d!77687 () Bool)

(assert (=> d!77687 (= (dropList!160 lt!109287 0) (drop!213 (list!1552 (c!50469 lt!109287)) 0))))

(declare-fun bs!29605 () Bool)

(assert (= bs!29605 d!77687))

(assert (=> bs!29605 m!335469))

(assert (=> bs!29605 m!335469))

(declare-fun m!337661 () Bool)

(assert (=> bs!29605 m!337661))

(assert (=> d!76997 d!77687))

(declare-fun d!77689 () Bool)

(assert (=> d!77689 (= (list!1547 lt!109326) (list!1551 (c!50467 lt!109326)))))

(declare-fun bs!29606 () Bool)

(assert (= bs!29606 d!77689))

(declare-fun m!337663 () Bool)

(assert (=> bs!29606 m!337663))

(assert (=> d!76997 d!77689))

(declare-fun d!77691 () Bool)

(assert (=> d!77691 (= (list!1547 (BalanceConc!2561 Empty!1276)) (list!1551 (c!50467 (BalanceConc!2561 Empty!1276))))))

(declare-fun bs!29607 () Bool)

(assert (= bs!29607 d!77691))

(declare-fun m!337665 () Bool)

(assert (=> bs!29607 m!337665))

(assert (=> d!76997 d!77691))

(declare-fun d!77693 () Bool)

(declare-fun lt!110099 () Bool)

(assert (=> d!77693 (= lt!110099 (isEmpty!2402 (list!1547 (_2!2346 (lex!404 thiss!17480 rules!1920 (print!338 thiss!17480 (singletonSeq!273 (h!9207 tokens!465))))))))))

(assert (=> d!77693 (= lt!110099 (isEmpty!2403 (c!50467 (_2!2346 (lex!404 thiss!17480 rules!1920 (print!338 thiss!17480 (singletonSeq!273 (h!9207 tokens!465))))))))))

(assert (=> d!77693 (= (isEmpty!2400 (_2!2346 (lex!404 thiss!17480 rules!1920 (print!338 thiss!17480 (singletonSeq!273 (h!9207 tokens!465)))))) lt!110099)))

(declare-fun bs!29608 () Bool)

(assert (= bs!29608 d!77693))

(declare-fun m!337667 () Bool)

(assert (=> bs!29608 m!337667))

(assert (=> bs!29608 m!337667))

(declare-fun m!337669 () Bool)

(assert (=> bs!29608 m!337669))

(declare-fun m!337671 () Bool)

(assert (=> bs!29608 m!337671))

(assert (=> b!266869 d!77693))

(assert (=> b!266869 d!77635))

(assert (=> b!266869 d!77559))

(assert (=> b!266869 d!77003))

(declare-fun d!77695 () Bool)

(declare-fun res!122825 () Bool)

(declare-fun e!166678 () Bool)

(assert (=> d!77695 (=> res!122825 e!166678)))

(assert (=> d!77695 (= res!122825 ((_ is Nil!3810) (list!1550 lt!109288)))))

(assert (=> d!77695 (= (forall!949 (list!1550 lt!109288) lambda!9028) e!166678)))

(declare-fun b!268275 () Bool)

(declare-fun e!166679 () Bool)

(assert (=> b!268275 (= e!166678 e!166679)))

(declare-fun res!122826 () Bool)

(assert (=> b!268275 (=> (not res!122826) (not e!166679))))

(assert (=> b!268275 (= res!122826 (dynLambda!1945 lambda!9028 (h!9207 (list!1550 lt!109288))))))

(declare-fun b!268276 () Bool)

(assert (=> b!268276 (= e!166679 (forall!949 (t!37804 (list!1550 lt!109288)) lambda!9028))))

(assert (= (and d!77695 (not res!122825)) b!268275))

(assert (= (and b!268275 res!122826) b!268276))

(declare-fun b_lambda!8445 () Bool)

(assert (=> (not b_lambda!8445) (not b!268275)))

(declare-fun m!337679 () Bool)

(assert (=> b!268275 m!337679))

(declare-fun m!337681 () Bool)

(assert (=> b!268276 m!337681))

(assert (=> d!77119 d!77695))

(assert (=> d!77119 d!77169))

(declare-fun d!77699 () Bool)

(declare-fun lt!110112 () Bool)

(assert (=> d!77699 (= lt!110112 (forall!949 (list!1550 lt!109288) lambda!9028))))

(declare-fun forall!954 (Conc!1277 Int) Bool)

(assert (=> d!77699 (= lt!110112 (forall!954 (c!50469 lt!109288) lambda!9028))))

(assert (=> d!77699 (= (forall!951 lt!109288 lambda!9028) lt!110112)))

(declare-fun bs!29611 () Bool)

(assert (= bs!29611 d!77699))

(assert (=> bs!29611 m!335323))

(assert (=> bs!29611 m!335323))

(assert (=> bs!29611 m!335389))

(declare-fun m!337689 () Bool)

(assert (=> bs!29611 m!337689))

(assert (=> d!77119 d!77699))

(assert (=> d!77119 d!76989))

(declare-fun d!77703 () Bool)

(assert (=> d!77703 (= (dropList!160 lt!109288 0) (drop!213 (list!1552 (c!50469 lt!109288)) 0))))

(declare-fun bs!29616 () Bool)

(assert (= bs!29616 d!77703))

(assert (=> bs!29616 m!335551))

(assert (=> bs!29616 m!335551))

(declare-fun m!337691 () Bool)

(assert (=> bs!29616 m!337691))

(assert (=> d!77113 d!77703))

(declare-fun d!77705 () Bool)

(assert (=> d!77705 (= (list!1547 lt!109552) (list!1551 (c!50467 lt!109552)))))

(declare-fun bs!29619 () Bool)

(assert (= bs!29619 d!77705))

(declare-fun m!337693 () Bool)

(assert (=> bs!29619 m!337693))

(assert (=> d!77113 d!77705))

(assert (=> d!77113 d!77303))

(declare-fun d!77707 () Bool)

(assert (=> d!77707 (forall!949 (dropList!160 lt!109288 0) lambda!9021)))

(declare-fun lt!110113 () Unit!4824)

(assert (=> d!77707 (= lt!110113 (choose!2443 (list!1550 lt!109288) (dropList!160 lt!109288 0) lambda!9021))))

(assert (=> d!77707 (forall!949 (list!1550 lt!109288) lambda!9021)))

(assert (=> d!77707 (= (lemmaContentSubsetPreservesForall!104 (list!1550 lt!109288) (dropList!160 lt!109288 0) lambda!9021) lt!110113)))

(declare-fun bs!29622 () Bool)

(assert (= bs!29622 d!77707))

(assert (=> bs!29622 m!335353))

(declare-fun m!337695 () Bool)

(assert (=> bs!29622 m!337695))

(assert (=> bs!29622 m!335323))

(assert (=> bs!29622 m!335353))

(declare-fun m!337697 () Bool)

(assert (=> bs!29622 m!337697))

(assert (=> bs!29622 m!335323))

(declare-fun m!337699 () Bool)

(assert (=> bs!29622 m!337699))

(assert (=> d!77113 d!77707))

(assert (=> d!77113 d!77169))

(declare-fun bs!29623 () Bool)

(declare-fun b!268294 () Bool)

(assert (= bs!29623 (and b!268294 b!267294)))

(declare-fun lambda!9059 () Int)

(assert (=> bs!29623 (= lambda!9059 lambda!9023)))

(declare-fun bs!29624 () Bool)

(assert (= bs!29624 (and b!268294 b!268098)))

(assert (=> bs!29624 (= lambda!9059 lambda!9053)))

(declare-fun bs!29625 () Bool)

(assert (= bs!29625 (and b!268294 b!267612)))

(assert (=> bs!29625 (= lambda!9059 lambda!9035)))

(declare-fun bs!29626 () Bool)

(assert (= bs!29626 (and b!268294 d!77235)))

(assert (=> bs!29626 (not (= lambda!9059 lambda!9034))))

(declare-fun bs!29627 () Bool)

(assert (= bs!29627 (and b!268294 d!77015)))

(assert (=> bs!29627 (not (= lambda!9059 lambda!9011))))

(declare-fun bs!29628 () Bool)

(assert (= bs!29628 (and b!268294 b!267276)))

(assert (=> bs!29628 (= lambda!9059 lambda!9022)))

(declare-fun bs!29629 () Bool)

(assert (= bs!29629 (and b!268294 b!267078)))

(assert (=> bs!29629 (= lambda!9059 lambda!9012)))

(declare-fun bs!29630 () Bool)

(assert (= bs!29630 (and b!268294 d!77453)))

(assert (=> bs!29630 (= lambda!9059 lambda!9051)))

(declare-fun bs!29631 () Bool)

(assert (= bs!29631 (and b!268294 d!77113)))

(assert (=> bs!29631 (not (= lambda!9059 lambda!9021))))

(declare-fun bs!29632 () Bool)

(assert (= bs!29632 (and b!268294 d!77119)))

(assert (=> bs!29632 (= lambda!9059 lambda!9028)))

(declare-fun bs!29633 () Bool)

(assert (= bs!29633 (and b!268294 b!268179)))

(assert (=> bs!29633 (= lambda!9059 lambda!9055)))

(declare-fun bs!29634 () Bool)

(assert (= bs!29634 (and b!268294 b!266841)))

(assert (=> bs!29634 (not (= lambda!9059 lambda!8994))))

(declare-fun bs!29636 () Bool)

(assert (= bs!29636 (and b!268294 b!267253)))

(assert (=> bs!29636 (= lambda!9059 lambda!9020)))

(declare-fun bs!29637 () Bool)

(assert (= bs!29637 (and b!268294 b!267493)))

(assert (=> bs!29637 (= lambda!9059 lambda!9030)))

(declare-fun bs!29638 () Bool)

(assert (= bs!29638 (and b!268294 d!77175)))

(assert (=> bs!29638 (not (= lambda!9059 lambda!9029))))

(declare-fun b!268300 () Bool)

(declare-fun e!166694 () Bool)

(assert (=> b!268300 (= e!166694 true)))

(declare-fun b!268299 () Bool)

(declare-fun e!166693 () Bool)

(assert (=> b!268299 (= e!166693 e!166694)))

(declare-fun b!268298 () Bool)

(declare-fun e!166692 () Bool)

(assert (=> b!268298 (= e!166692 e!166693)))

(assert (=> b!268294 e!166692))

(assert (= b!268299 b!268300))

(assert (= b!268298 b!268299))

(assert (= (and b!268294 ((_ is Cons!3809) rules!1920)) b!268298))

(assert (=> b!268300 (< (dynLambda!1941 order!2913 (toValue!1458 (transformation!727 (h!9206 rules!1920)))) (dynLambda!1942 order!2915 lambda!9059))))

(assert (=> b!268300 (< (dynLambda!1943 order!2917 (toChars!1317 (transformation!727 (h!9206 rules!1920)))) (dynLambda!1942 order!2915 lambda!9059))))

(assert (=> b!268294 true))

(declare-fun b!268290 () Bool)

(declare-fun e!166689 () List!3818)

(declare-fun call!14600 () List!3818)

(assert (=> b!268290 (= e!166689 call!14600)))

(declare-fun b!268291 () Bool)

(declare-fun c!50831 () Bool)

(declare-fun lt!110114 () Option!803)

(assert (=> b!268291 (= c!50831 (and ((_ is Some!802) lt!110114) (not (= (_1!2349 (v!14665 lt!110114)) (h!9207 (dropList!160 lt!109288 0))))))))

(declare-fun e!166690 () List!3818)

(assert (=> b!268291 (= e!166689 e!166690)))

(declare-fun b!268292 () Bool)

(declare-fun lt!110115 () List!3818)

(assert (=> b!268292 (= e!166690 (++!988 call!14600 lt!110115))))

(declare-fun call!14599 () List!3818)

(declare-fun call!14597 () BalanceConc!2560)

(declare-fun call!14601 () BalanceConc!2560)

(declare-fun bm!14592 () Bool)

(declare-fun c!50829 () Bool)

(assert (=> bm!14592 (= call!14599 (list!1547 (ite c!50829 call!14601 call!14597)))))

(declare-fun b!268293 () Bool)

(assert (=> b!268293 (= e!166690 Nil!3808)))

(assert (=> b!268293 (= (print!338 thiss!17480 (singletonSeq!273 (h!9207 (dropList!160 lt!109288 0)))) (printTailRec!301 thiss!17480 (singletonSeq!273 (h!9207 (dropList!160 lt!109288 0))) 0 (BalanceConc!2561 Empty!1276)))))

(declare-fun lt!110118 () Unit!4824)

(declare-fun Unit!4864 () Unit!4824)

(assert (=> b!268293 (= lt!110118 Unit!4864)))

(declare-fun call!14598 () List!3818)

(declare-fun lt!110116 () Unit!4824)

(assert (=> b!268293 (= lt!110116 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!108 thiss!17480 rules!1920 call!14598 lt!110115))))

(assert (=> b!268293 false))

(declare-fun lt!110119 () Unit!4824)

(declare-fun Unit!4865 () Unit!4824)

(assert (=> b!268293 (= lt!110119 Unit!4865)))

(declare-fun bm!14593 () Bool)

(declare-fun e!166691 () BalanceConc!2560)

(assert (=> bm!14593 (= call!14598 (list!1547 e!166691))))

(declare-fun c!50830 () Bool)

(assert (=> bm!14593 (= c!50830 c!50831)))

(declare-fun e!166688 () List!3818)

(assert (=> b!268294 (= e!166688 e!166689)))

(declare-fun lt!110117 () Unit!4824)

(assert (=> b!268294 (= lt!110117 (forallContained!282 (dropList!160 lt!109288 0) lambda!9059 (h!9207 (dropList!160 lt!109288 0))))))

(assert (=> b!268294 (= lt!110115 (printWithSeparatorTokenWhenNeededList!296 thiss!17480 rules!1920 (t!37804 (dropList!160 lt!109288 0)) separatorToken!170))))

(assert (=> b!268294 (= lt!110114 (maxPrefix!331 thiss!17480 rules!1920 (++!988 (list!1547 (charsOf!372 (h!9207 (dropList!160 lt!109288 0)))) lt!110115)))))

(assert (=> b!268294 (= c!50829 (and ((_ is Some!802) lt!110114) (= (_1!2349 (v!14665 lt!110114)) (h!9207 (dropList!160 lt!109288 0)))))))

(declare-fun bm!14594 () Bool)

(assert (=> bm!14594 (= call!14601 (charsOf!372 (h!9207 (dropList!160 lt!109288 0))))))

(declare-fun d!77709 () Bool)

(declare-fun c!50828 () Bool)

(assert (=> d!77709 (= c!50828 ((_ is Cons!3810) (dropList!160 lt!109288 0)))))

(assert (=> d!77709 (= (printWithSeparatorTokenWhenNeededList!296 thiss!17480 rules!1920 (dropList!160 lt!109288 0) separatorToken!170) e!166688)))

(declare-fun b!268295 () Bool)

(assert (=> b!268295 (= e!166691 (charsOf!372 separatorToken!170))))

(declare-fun bm!14595 () Bool)

(assert (=> bm!14595 (= call!14597 call!14601)))

(declare-fun b!268296 () Bool)

(assert (=> b!268296 (= e!166691 call!14597)))

(declare-fun b!268297 () Bool)

(assert (=> b!268297 (= e!166688 Nil!3808)))

(declare-fun bm!14596 () Bool)

(assert (=> bm!14596 (= call!14600 (++!988 call!14599 (ite c!50829 lt!110115 call!14598)))))

(assert (= (and d!77709 c!50828) b!268294))

(assert (= (and d!77709 (not c!50828)) b!268297))

(assert (= (and b!268294 c!50829) b!268290))

(assert (= (and b!268294 (not c!50829)) b!268291))

(assert (= (and b!268291 c!50831) b!268292))

(assert (= (and b!268291 (not c!50831)) b!268293))

(assert (= (or b!268292 b!268293) bm!14595))

(assert (= (or b!268292 b!268293) bm!14593))

(assert (= (and bm!14593 c!50830) b!268295))

(assert (= (and bm!14593 (not c!50830)) b!268296))

(assert (= (or b!268290 bm!14595) bm!14594))

(assert (= (or b!268290 b!268292) bm!14592))

(assert (= (or b!268290 b!268292) bm!14596))

(declare-fun m!337733 () Bool)

(assert (=> bm!14592 m!337733))

(declare-fun m!337735 () Bool)

(assert (=> bm!14594 m!337735))

(assert (=> b!268295 m!334551))

(declare-fun m!337737 () Bool)

(assert (=> bm!14593 m!337737))

(declare-fun m!337739 () Bool)

(assert (=> b!268292 m!337739))

(declare-fun m!337741 () Bool)

(assert (=> bm!14596 m!337741))

(declare-fun m!337743 () Bool)

(assert (=> b!268293 m!337743))

(assert (=> b!268293 m!337743))

(declare-fun m!337745 () Bool)

(assert (=> b!268293 m!337745))

(assert (=> b!268293 m!337743))

(declare-fun m!337747 () Bool)

(assert (=> b!268293 m!337747))

(declare-fun m!337749 () Bool)

(assert (=> b!268293 m!337749))

(assert (=> b!268294 m!335353))

(declare-fun m!337751 () Bool)

(assert (=> b!268294 m!337751))

(assert (=> b!268294 m!337735))

(declare-fun m!337753 () Bool)

(assert (=> b!268294 m!337753))

(declare-fun m!337755 () Bool)

(assert (=> b!268294 m!337755))

(declare-fun m!337757 () Bool)

(assert (=> b!268294 m!337757))

(assert (=> b!268294 m!337735))

(declare-fun m!337759 () Bool)

(assert (=> b!268294 m!337759))

(assert (=> b!268294 m!337759))

(assert (=> b!268294 m!337753))

(assert (=> d!77113 d!77709))

(declare-fun d!77717 () Bool)

(assert (=> d!77717 (= (inv!4710 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465)))) (value!25035 (h!9207 tokens!465)))) (isBalanced!346 (c!50467 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465)))) (value!25035 (h!9207 tokens!465))))))))

(declare-fun bs!29640 () Bool)

(assert (= bs!29640 d!77717))

(declare-fun m!337761 () Bool)

(assert (=> bs!29640 m!337761))

(assert (=> tb!14783 d!77717))

(assert (=> bm!14525 d!77165))

(declare-fun d!77719 () Bool)

(assert (=> d!77719 (= (inv!15 (value!25035 (h!9207 tokens!465))) (= (charsToBigInt!0 (text!5692 (value!25035 (h!9207 tokens!465))) 0) (value!25030 (value!25035 (h!9207 tokens!465)))))))

(declare-fun bs!29641 () Bool)

(assert (= bs!29641 d!77719))

(declare-fun m!337763 () Bool)

(assert (=> bs!29641 m!337763))

(assert (=> b!267271 d!77719))

(declare-fun b!268305 () Bool)

(declare-fun e!166699 () Bool)

(assert (=> b!268305 (= e!166699 true)))

(declare-fun b!268304 () Bool)

(declare-fun e!166698 () Bool)

(assert (=> b!268304 (= e!166698 e!166699)))

(declare-fun b!268303 () Bool)

(declare-fun e!166697 () Bool)

(assert (=> b!268303 (= e!166697 e!166698)))

(assert (=> b!267287 e!166697))

(assert (= b!268304 b!268305))

(assert (= b!268303 b!268304))

(assert (= (and b!267287 ((_ is Cons!3809) (t!37803 rules!1920))) b!268303))

(assert (=> b!268305 (< (dynLambda!1941 order!2913 (toValue!1458 (transformation!727 (h!9206 (t!37803 rules!1920))))) (dynLambda!1942 order!2915 lambda!9022))))

(assert (=> b!268305 (< (dynLambda!1943 order!2917 (toChars!1317 (transformation!727 (h!9206 (t!37803 rules!1920))))) (dynLambda!1942 order!2915 lambda!9022))))

(declare-fun e!166705 () Bool)

(declare-fun tp!101994 () Bool)

(declare-fun tp!101996 () Bool)

(declare-fun b!268316 () Bool)

(assert (=> b!268316 (= e!166705 (and (inv!4709 (left!3130 (c!50467 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465)))) (value!25035 (h!9207 tokens!465)))))) tp!101994 (inv!4709 (right!3460 (c!50467 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465)))) (value!25035 (h!9207 tokens!465)))))) tp!101996))))

(declare-fun b!268318 () Bool)

(declare-fun e!166704 () Bool)

(declare-fun tp!101995 () Bool)

(assert (=> b!268318 (= e!166704 tp!101995)))

(declare-fun b!268317 () Bool)

(declare-fun inv!4715 (IArray!2553) Bool)

(assert (=> b!268317 (= e!166705 (and (inv!4715 (xs!3875 (c!50467 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465)))) (value!25035 (h!9207 tokens!465)))))) e!166704))))

(assert (=> b!266880 (= tp!101859 (and (inv!4709 (c!50467 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465)))) (value!25035 (h!9207 tokens!465))))) e!166705))))

(assert (= (and b!266880 ((_ is Node!1276) (c!50467 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465)))) (value!25035 (h!9207 tokens!465)))))) b!268316))

(assert (= b!268317 b!268318))

(assert (= (and b!266880 ((_ is Leaf!1979) (c!50467 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465)))) (value!25035 (h!9207 tokens!465)))))) b!268317))

(declare-fun m!337767 () Bool)

(assert (=> b!268316 m!337767))

(declare-fun m!337769 () Bool)

(assert (=> b!268316 m!337769))

(declare-fun m!337771 () Bool)

(assert (=> b!268317 m!337771))

(assert (=> b!266880 m!334645))

(declare-fun b!268330 () Bool)

(declare-fun e!166713 () Bool)

(assert (=> b!268330 (= e!166713 true)))

(declare-fun b!268329 () Bool)

(declare-fun e!166712 () Bool)

(assert (=> b!268329 (= e!166712 e!166713)))

(declare-fun b!268328 () Bool)

(declare-fun e!166711 () Bool)

(assert (=> b!268328 (= e!166711 e!166712)))

(assert (=> b!267298 e!166711))

(assert (= b!268329 b!268330))

(assert (= b!268328 b!268329))

(assert (= (and b!267298 ((_ is Cons!3809) (t!37803 rules!1920))) b!268328))

(assert (=> b!268330 (< (dynLambda!1941 order!2913 (toValue!1458 (transformation!727 (h!9206 (t!37803 rules!1920))))) (dynLambda!1942 order!2915 lambda!9023))))

(assert (=> b!268330 (< (dynLambda!1943 order!2917 (toChars!1317 (transformation!727 (h!9206 (t!37803 rules!1920))))) (dynLambda!1942 order!2915 lambda!9023))))

(declare-fun b!268331 () Bool)

(declare-fun e!166714 () Bool)

(declare-fun tp!101997 () Bool)

(assert (=> b!268331 (= e!166714 (and tp_is_empty!1807 tp!101997))))

(assert (=> b!267369 (= tp!101961 e!166714)))

(assert (= (and b!267369 ((_ is Cons!3808) (t!37802 (originalCharacters!770 separatorToken!170)))) b!268331))

(declare-fun b!268334 () Bool)

(declare-fun e!166717 () Bool)

(assert (=> b!268334 (= e!166717 true)))

(declare-fun b!268333 () Bool)

(declare-fun e!166716 () Bool)

(assert (=> b!268333 (= e!166716 e!166717)))

(declare-fun b!268332 () Bool)

(declare-fun e!166715 () Bool)

(assert (=> b!268332 (= e!166715 e!166716)))

(assert (=> b!267309 e!166715))

(assert (= b!268333 b!268334))

(assert (= b!268332 b!268333))

(assert (= (and b!267309 ((_ is Cons!3809) (t!37803 rules!1920))) b!268332))

(assert (=> b!268334 (< (dynLambda!1941 order!2913 (toValue!1458 (transformation!727 (h!9206 (t!37803 rules!1920))))) (dynLambda!1942 order!2915 lambda!9028))))

(assert (=> b!268334 (< (dynLambda!1943 order!2917 (toChars!1317 (transformation!727 (h!9206 (t!37803 rules!1920))))) (dynLambda!1942 order!2915 lambda!9028))))

(declare-fun b!268335 () Bool)

(declare-fun tp!102000 () Bool)

(declare-fun tp!101998 () Bool)

(declare-fun e!166719 () Bool)

(assert (=> b!268335 (= e!166719 (and (inv!4709 (left!3130 (c!50467 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 separatorToken!170))) (value!25035 separatorToken!170))))) tp!101998 (inv!4709 (right!3460 (c!50467 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 separatorToken!170))) (value!25035 separatorToken!170))))) tp!102000))))

(declare-fun b!268337 () Bool)

(declare-fun e!166718 () Bool)

(declare-fun tp!101999 () Bool)

(assert (=> b!268337 (= e!166718 tp!101999)))

(declare-fun b!268336 () Bool)

(assert (=> b!268336 (= e!166719 (and (inv!4715 (xs!3875 (c!50467 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 separatorToken!170))) (value!25035 separatorToken!170))))) e!166718))))

(assert (=> b!266886 (= tp!101860 (and (inv!4709 (c!50467 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 separatorToken!170))) (value!25035 separatorToken!170)))) e!166719))))

(assert (= (and b!266886 ((_ is Node!1276) (c!50467 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 separatorToken!170))) (value!25035 separatorToken!170))))) b!268335))

(assert (= b!268336 b!268337))

(assert (= (and b!266886 ((_ is Leaf!1979) (c!50467 (dynLambda!1940 (toChars!1317 (transformation!727 (rule!1312 separatorToken!170))) (value!25035 separatorToken!170))))) b!268336))

(declare-fun m!337783 () Bool)

(assert (=> b!268335 m!337783))

(declare-fun m!337785 () Bool)

(assert (=> b!268335 m!337785))

(declare-fun m!337787 () Bool)

(assert (=> b!268336 m!337787))

(assert (=> b!266886 m!334675))

(declare-fun b!268343 () Bool)

(declare-fun e!166721 () Bool)

(declare-fun tp!102005 () Bool)

(declare-fun tp!102001 () Bool)

(assert (=> b!268343 (= e!166721 (and tp!102005 tp!102001))))

(declare-fun b!268345 () Bool)

(declare-fun tp!102004 () Bool)

(declare-fun tp!102002 () Bool)

(assert (=> b!268345 (= e!166721 (and tp!102004 tp!102002))))

(declare-fun b!268344 () Bool)

(declare-fun tp!102003 () Bool)

(assert (=> b!268344 (= e!166721 tp!102003)))

(assert (=> b!267361 (= tp!101957 e!166721)))

(declare-fun b!268342 () Bool)

(assert (=> b!268342 (= e!166721 tp_is_empty!1807)))

(assert (= (and b!267361 ((_ is ElementMatch!951) (regOne!2414 (regex!727 (h!9206 rules!1920))))) b!268342))

(assert (= (and b!267361 ((_ is Concat!1701) (regOne!2414 (regex!727 (h!9206 rules!1920))))) b!268343))

(assert (= (and b!267361 ((_ is Star!951) (regOne!2414 (regex!727 (h!9206 rules!1920))))) b!268344))

(assert (= (and b!267361 ((_ is Union!951) (regOne!2414 (regex!727 (h!9206 rules!1920))))) b!268345))

(declare-fun b!268347 () Bool)

(declare-fun e!166722 () Bool)

(declare-fun tp!102010 () Bool)

(declare-fun tp!102006 () Bool)

(assert (=> b!268347 (= e!166722 (and tp!102010 tp!102006))))

(declare-fun b!268349 () Bool)

(declare-fun tp!102009 () Bool)

(declare-fun tp!102007 () Bool)

(assert (=> b!268349 (= e!166722 (and tp!102009 tp!102007))))

(declare-fun b!268348 () Bool)

(declare-fun tp!102008 () Bool)

(assert (=> b!268348 (= e!166722 tp!102008)))

(assert (=> b!267361 (= tp!101953 e!166722)))

(declare-fun b!268346 () Bool)

(assert (=> b!268346 (= e!166722 tp_is_empty!1807)))

(assert (= (and b!267361 ((_ is ElementMatch!951) (regTwo!2414 (regex!727 (h!9206 rules!1920))))) b!268346))

(assert (= (and b!267361 ((_ is Concat!1701) (regTwo!2414 (regex!727 (h!9206 rules!1920))))) b!268347))

(assert (= (and b!267361 ((_ is Star!951) (regTwo!2414 (regex!727 (h!9206 rules!1920))))) b!268348))

(assert (= (and b!267361 ((_ is Union!951) (regTwo!2414 (regex!727 (h!9206 rules!1920))))) b!268349))

(declare-fun b!268351 () Bool)

(declare-fun e!166723 () Bool)

(declare-fun tp!102015 () Bool)

(declare-fun tp!102011 () Bool)

(assert (=> b!268351 (= e!166723 (and tp!102015 tp!102011))))

(declare-fun b!268353 () Bool)

(declare-fun tp!102014 () Bool)

(declare-fun tp!102012 () Bool)

(assert (=> b!268353 (= e!166723 (and tp!102014 tp!102012))))

(declare-fun b!268352 () Bool)

(declare-fun tp!102013 () Bool)

(assert (=> b!268352 (= e!166723 tp!102013)))

(assert (=> b!267363 (= tp!101956 e!166723)))

(declare-fun b!268350 () Bool)

(assert (=> b!268350 (= e!166723 tp_is_empty!1807)))

(assert (= (and b!267363 ((_ is ElementMatch!951) (regOne!2415 (regex!727 (h!9206 rules!1920))))) b!268350))

(assert (= (and b!267363 ((_ is Concat!1701) (regOne!2415 (regex!727 (h!9206 rules!1920))))) b!268351))

(assert (= (and b!267363 ((_ is Star!951) (regOne!2415 (regex!727 (h!9206 rules!1920))))) b!268352))

(assert (= (and b!267363 ((_ is Union!951) (regOne!2415 (regex!727 (h!9206 rules!1920))))) b!268353))

(declare-fun b!268355 () Bool)

(declare-fun e!166724 () Bool)

(declare-fun tp!102020 () Bool)

(declare-fun tp!102016 () Bool)

(assert (=> b!268355 (= e!166724 (and tp!102020 tp!102016))))

(declare-fun b!268357 () Bool)

(declare-fun tp!102019 () Bool)

(declare-fun tp!102017 () Bool)

(assert (=> b!268357 (= e!166724 (and tp!102019 tp!102017))))

(declare-fun b!268356 () Bool)

(declare-fun tp!102018 () Bool)

(assert (=> b!268356 (= e!166724 tp!102018)))

(assert (=> b!267363 (= tp!101954 e!166724)))

(declare-fun b!268354 () Bool)

(assert (=> b!268354 (= e!166724 tp_is_empty!1807)))

(assert (= (and b!267363 ((_ is ElementMatch!951) (regTwo!2415 (regex!727 (h!9206 rules!1920))))) b!268354))

(assert (= (and b!267363 ((_ is Concat!1701) (regTwo!2415 (regex!727 (h!9206 rules!1920))))) b!268355))

(assert (= (and b!267363 ((_ is Star!951) (regTwo!2415 (regex!727 (h!9206 rules!1920))))) b!268356))

(assert (= (and b!267363 ((_ is Union!951) (regTwo!2415 (regex!727 (h!9206 rules!1920))))) b!268357))

(declare-fun b!268359 () Bool)

(declare-fun e!166725 () Bool)

(declare-fun tp!102025 () Bool)

(declare-fun tp!102021 () Bool)

(assert (=> b!268359 (= e!166725 (and tp!102025 tp!102021))))

(declare-fun b!268361 () Bool)

(declare-fun tp!102024 () Bool)

(declare-fun tp!102022 () Bool)

(assert (=> b!268361 (= e!166725 (and tp!102024 tp!102022))))

(declare-fun b!268360 () Bool)

(declare-fun tp!102023 () Bool)

(assert (=> b!268360 (= e!166725 tp!102023)))

(assert (=> b!267362 (= tp!101955 e!166725)))

(declare-fun b!268358 () Bool)

(assert (=> b!268358 (= e!166725 tp_is_empty!1807)))

(assert (= (and b!267362 ((_ is ElementMatch!951) (reg!1280 (regex!727 (h!9206 rules!1920))))) b!268358))

(assert (= (and b!267362 ((_ is Concat!1701) (reg!1280 (regex!727 (h!9206 rules!1920))))) b!268359))

(assert (= (and b!267362 ((_ is Star!951) (reg!1280 (regex!727 (h!9206 rules!1920))))) b!268360))

(assert (= (and b!267362 ((_ is Union!951) (reg!1280 (regex!727 (h!9206 rules!1920))))) b!268361))

(declare-fun b!268363 () Bool)

(declare-fun e!166726 () Bool)

(declare-fun tp!102030 () Bool)

(declare-fun tp!102026 () Bool)

(assert (=> b!268363 (= e!166726 (and tp!102030 tp!102026))))

(declare-fun b!268365 () Bool)

(declare-fun tp!102029 () Bool)

(declare-fun tp!102027 () Bool)

(assert (=> b!268365 (= e!166726 (and tp!102029 tp!102027))))

(declare-fun b!268364 () Bool)

(declare-fun tp!102028 () Bool)

(assert (=> b!268364 (= e!166726 tp!102028)))

(assert (=> b!267353 (= tp!101947 e!166726)))

(declare-fun b!268362 () Bool)

(assert (=> b!268362 (= e!166726 tp_is_empty!1807)))

(assert (= (and b!267353 ((_ is ElementMatch!951) (regOne!2414 (regex!727 (rule!1312 separatorToken!170))))) b!268362))

(assert (= (and b!267353 ((_ is Concat!1701) (regOne!2414 (regex!727 (rule!1312 separatorToken!170))))) b!268363))

(assert (= (and b!267353 ((_ is Star!951) (regOne!2414 (regex!727 (rule!1312 separatorToken!170))))) b!268364))

(assert (= (and b!267353 ((_ is Union!951) (regOne!2414 (regex!727 (rule!1312 separatorToken!170))))) b!268365))

(declare-fun b!268367 () Bool)

(declare-fun e!166727 () Bool)

(declare-fun tp!102035 () Bool)

(declare-fun tp!102031 () Bool)

(assert (=> b!268367 (= e!166727 (and tp!102035 tp!102031))))

(declare-fun b!268369 () Bool)

(declare-fun tp!102034 () Bool)

(declare-fun tp!102032 () Bool)

(assert (=> b!268369 (= e!166727 (and tp!102034 tp!102032))))

(declare-fun b!268368 () Bool)

(declare-fun tp!102033 () Bool)

(assert (=> b!268368 (= e!166727 tp!102033)))

(assert (=> b!267353 (= tp!101943 e!166727)))

(declare-fun b!268366 () Bool)

(assert (=> b!268366 (= e!166727 tp_is_empty!1807)))

(assert (= (and b!267353 ((_ is ElementMatch!951) (regTwo!2414 (regex!727 (rule!1312 separatorToken!170))))) b!268366))

(assert (= (and b!267353 ((_ is Concat!1701) (regTwo!2414 (regex!727 (rule!1312 separatorToken!170))))) b!268367))

(assert (= (and b!267353 ((_ is Star!951) (regTwo!2414 (regex!727 (rule!1312 separatorToken!170))))) b!268368))

(assert (= (and b!267353 ((_ is Union!951) (regTwo!2414 (regex!727 (rule!1312 separatorToken!170))))) b!268369))

(declare-fun b!268371 () Bool)

(declare-fun e!166728 () Bool)

(declare-fun tp!102040 () Bool)

(declare-fun tp!102036 () Bool)

(assert (=> b!268371 (= e!166728 (and tp!102040 tp!102036))))

(declare-fun b!268373 () Bool)

(declare-fun tp!102039 () Bool)

(declare-fun tp!102037 () Bool)

(assert (=> b!268373 (= e!166728 (and tp!102039 tp!102037))))

(declare-fun b!268372 () Bool)

(declare-fun tp!102038 () Bool)

(assert (=> b!268372 (= e!166728 tp!102038)))

(assert (=> b!267355 (= tp!101946 e!166728)))

(declare-fun b!268370 () Bool)

(assert (=> b!268370 (= e!166728 tp_is_empty!1807)))

(assert (= (and b!267355 ((_ is ElementMatch!951) (regOne!2415 (regex!727 (rule!1312 separatorToken!170))))) b!268370))

(assert (= (and b!267355 ((_ is Concat!1701) (regOne!2415 (regex!727 (rule!1312 separatorToken!170))))) b!268371))

(assert (= (and b!267355 ((_ is Star!951) (regOne!2415 (regex!727 (rule!1312 separatorToken!170))))) b!268372))

(assert (= (and b!267355 ((_ is Union!951) (regOne!2415 (regex!727 (rule!1312 separatorToken!170))))) b!268373))

(declare-fun b!268384 () Bool)

(declare-fun e!166734 () Bool)

(declare-fun tp!102045 () Bool)

(declare-fun tp!102041 () Bool)

(assert (=> b!268384 (= e!166734 (and tp!102045 tp!102041))))

(declare-fun b!268386 () Bool)

(declare-fun tp!102044 () Bool)

(declare-fun tp!102042 () Bool)

(assert (=> b!268386 (= e!166734 (and tp!102044 tp!102042))))

(declare-fun b!268385 () Bool)

(declare-fun tp!102043 () Bool)

(assert (=> b!268385 (= e!166734 tp!102043)))

(assert (=> b!267355 (= tp!101944 e!166734)))

(declare-fun b!268383 () Bool)

(assert (=> b!268383 (= e!166734 tp_is_empty!1807)))

(assert (= (and b!267355 ((_ is ElementMatch!951) (regTwo!2415 (regex!727 (rule!1312 separatorToken!170))))) b!268383))

(assert (= (and b!267355 ((_ is Concat!1701) (regTwo!2415 (regex!727 (rule!1312 separatorToken!170))))) b!268384))

(assert (= (and b!267355 ((_ is Star!951) (regTwo!2415 (regex!727 (rule!1312 separatorToken!170))))) b!268385))

(assert (= (and b!267355 ((_ is Union!951) (regTwo!2415 (regex!727 (rule!1312 separatorToken!170))))) b!268386))

(declare-fun b!268388 () Bool)

(declare-fun e!166735 () Bool)

(declare-fun tp!102050 () Bool)

(declare-fun tp!102046 () Bool)

(assert (=> b!268388 (= e!166735 (and tp!102050 tp!102046))))

(declare-fun b!268390 () Bool)

(declare-fun tp!102049 () Bool)

(declare-fun tp!102047 () Bool)

(assert (=> b!268390 (= e!166735 (and tp!102049 tp!102047))))

(declare-fun b!268389 () Bool)

(declare-fun tp!102048 () Bool)

(assert (=> b!268389 (= e!166735 tp!102048)))

(assert (=> b!267354 (= tp!101945 e!166735)))

(declare-fun b!268387 () Bool)

(assert (=> b!268387 (= e!166735 tp_is_empty!1807)))

(assert (= (and b!267354 ((_ is ElementMatch!951) (reg!1280 (regex!727 (rule!1312 separatorToken!170))))) b!268387))

(assert (= (and b!267354 ((_ is Concat!1701) (reg!1280 (regex!727 (rule!1312 separatorToken!170))))) b!268388))

(assert (= (and b!267354 ((_ is Star!951) (reg!1280 (regex!727 (rule!1312 separatorToken!170))))) b!268389))

(assert (= (and b!267354 ((_ is Union!951) (reg!1280 (regex!727 (rule!1312 separatorToken!170))))) b!268390))

(declare-fun b!268392 () Bool)

(declare-fun e!166736 () Bool)

(declare-fun tp!102055 () Bool)

(declare-fun tp!102051 () Bool)

(assert (=> b!268392 (= e!166736 (and tp!102055 tp!102051))))

(declare-fun b!268394 () Bool)

(declare-fun tp!102054 () Bool)

(declare-fun tp!102052 () Bool)

(assert (=> b!268394 (= e!166736 (and tp!102054 tp!102052))))

(declare-fun b!268393 () Bool)

(declare-fun tp!102053 () Bool)

(assert (=> b!268393 (= e!166736 tp!102053)))

(assert (=> b!267379 (= tp!101970 e!166736)))

(declare-fun b!268391 () Bool)

(assert (=> b!268391 (= e!166736 tp_is_empty!1807)))

(assert (= (and b!267379 ((_ is ElementMatch!951) (regex!727 (h!9206 (t!37803 rules!1920))))) b!268391))

(assert (= (and b!267379 ((_ is Concat!1701) (regex!727 (h!9206 (t!37803 rules!1920))))) b!268392))

(assert (= (and b!267379 ((_ is Star!951) (regex!727 (h!9206 (t!37803 rules!1920))))) b!268393))

(assert (= (and b!267379 ((_ is Union!951) (regex!727 (h!9206 (t!37803 rules!1920))))) b!268394))

(declare-fun b!268397 () Bool)

(declare-fun b_free!9965 () Bool)

(declare-fun b_next!9965 () Bool)

(assert (=> b!268397 (= b_free!9965 (not b_next!9965))))

(declare-fun tp!102057 () Bool)

(declare-fun b_and!21271 () Bool)

(assert (=> b!268397 (= tp!102057 b_and!21271)))

(declare-fun b_free!9967 () Bool)

(declare-fun b_next!9967 () Bool)

(assert (=> b!268397 (= b_free!9967 (not b_next!9967))))

(declare-fun tb!14957 () Bool)

(declare-fun t!38020 () Bool)

(assert (=> (and b!268397 (= (toChars!1317 (transformation!727 (h!9206 (t!37803 (t!37803 rules!1920))))) (toChars!1317 (transformation!727 (rule!1312 (h!9207 (Cons!3810 (h!9207 tokens!465) Nil!3810)))))) t!38020) tb!14957))

(declare-fun result!18538 () Bool)

(assert (= result!18538 result!18526))

(assert (=> d!77655 t!38020))

(declare-fun tb!14959 () Bool)

(declare-fun t!38022 () Bool)

(assert (=> (and b!268397 (= (toChars!1317 (transformation!727 (h!9206 (t!37803 (t!37803 rules!1920))))) (toChars!1317 (transformation!727 (rule!1312 (h!9207 (t!37804 tokens!465)))))) t!38022) tb!14959))

(declare-fun result!18540 () Bool)

(assert (= result!18540 result!18396))

(assert (=> d!77151 t!38022))

(declare-fun t!38024 () Bool)

(declare-fun tb!14961 () Bool)

(assert (=> (and b!268397 (= (toChars!1317 (transformation!727 (h!9206 (t!37803 (t!37803 rules!1920))))) (toChars!1317 (transformation!727 (rule!1312 (ite c!50566 call!14531 (ite c!50568 separatorToken!170 call!14530)))))) t!38024) tb!14961))

(declare-fun result!18542 () Bool)

(assert (= result!18542 result!18496))

(assert (=> d!77529 t!38024))

(declare-fun t!38026 () Bool)

(declare-fun tb!14963 () Bool)

(assert (=> (and b!268397 (= (toChars!1317 (transformation!727 (h!9206 (t!37803 (t!37803 rules!1920))))) (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465))))) t!38026) tb!14963))

(declare-fun result!18544 () Bool)

(assert (= result!18544 result!18344))

(assert (=> d!77059 t!38026))

(declare-fun tb!14965 () Bool)

(declare-fun t!38028 () Bool)

(assert (=> (and b!268397 (= (toChars!1317 (transformation!727 (h!9206 (t!37803 (t!37803 rules!1920))))) (toChars!1317 (transformation!727 (rule!1312 (apply!757 (seqFromList!822 (t!37804 tokens!465)) 0))))) t!38028) tb!14965))

(declare-fun result!18546 () Bool)

(assert (= result!18546 result!18416))

(assert (=> d!77253 t!38028))

(assert (=> b!267670 t!38022))

(declare-fun tb!14967 () Bool)

(declare-fun t!38030 () Bool)

(assert (=> (and b!268397 (= (toChars!1317 (transformation!727 (h!9206 (t!37803 (t!37803 rules!1920))))) (toChars!1317 (transformation!727 (rule!1312 call!14510)))) t!38030) tb!14967))

(declare-fun result!18548 () Bool)

(assert (= result!18548 result!18476))

(assert (=> d!77437 t!38030))

(declare-fun tb!14969 () Bool)

(declare-fun t!38032 () Bool)

(assert (=> (and b!268397 (= (toChars!1317 (transformation!727 (h!9206 (t!37803 (t!37803 rules!1920))))) (toChars!1317 (transformation!727 (rule!1312 separatorToken!170)))) t!38032) tb!14969))

(declare-fun result!18550 () Bool)

(assert (= result!18550 result!18352))

(assert (=> d!77053 t!38032))

(assert (=> b!266874 t!38026))

(declare-fun tb!14971 () Bool)

(declare-fun t!38034 () Bool)

(assert (=> (and b!268397 (= (toChars!1317 (transformation!727 (h!9206 (t!37803 (t!37803 rules!1920))))) (toChars!1317 (transformation!727 (rule!1312 call!14530)))) t!38034) tb!14971))

(declare-fun result!18552 () Bool)

(assert (= result!18552 result!18466))

(assert (=> d!77431 t!38034))

(declare-fun t!38036 () Bool)

(declare-fun tb!14973 () Bool)

(assert (=> (and b!268397 (= (toChars!1317 (transformation!727 (h!9206 (t!37803 (t!37803 rules!1920))))) (toChars!1317 (transformation!727 (rule!1312 (ite c!50526 call!14511 (ite c!50528 separatorToken!170 call!14510)))))) t!38036) tb!14973))

(declare-fun result!18554 () Bool)

(assert (= result!18554 result!18506))

(assert (=> d!77535 t!38036))

(declare-fun tb!14975 () Bool)

(declare-fun t!38038 () Bool)

(assert (=> (and b!268397 (= (toChars!1317 (transformation!727 (h!9206 (t!37803 (t!37803 rules!1920))))) (toChars!1317 (transformation!727 (rule!1312 (apply!757 lt!109288 0))))) t!38038) tb!14975))

(declare-fun result!18556 () Bool)

(assert (= result!18556 result!18406))

(assert (=> d!77197 t!38038))

(declare-fun tb!14977 () Bool)

(declare-fun t!38040 () Bool)

(assert (=> (and b!268397 (= (toChars!1317 (transformation!727 (h!9206 (t!37803 (t!37803 rules!1920))))) (toChars!1317 (transformation!727 (rule!1312 (apply!757 lt!109287 0))))) t!38040) tb!14977))

(declare-fun result!18558 () Bool)

(assert (= result!18558 result!18516))

(assert (=> d!77571 t!38040))

(assert (=> b!266884 t!38032))

(declare-fun tp!102059 () Bool)

(declare-fun b_and!21273 () Bool)

(assert (=> b!268397 (= tp!102059 (and (=> t!38024 result!18542) (=> t!38036 result!18554) (=> t!38020 result!18538) (=> t!38040 result!18558) (=> t!38032 result!18550) (=> t!38030 result!18548) (=> t!38028 result!18546) (=> t!38034 result!18552) (=> t!38026 result!18544) (=> t!38038 result!18556) (=> t!38022 result!18540) b_and!21273))))

(declare-fun e!166738 () Bool)

(assert (=> b!268397 (= e!166738 (and tp!102057 tp!102059))))

(declare-fun tp!102056 () Bool)

(declare-fun b!268396 () Bool)

(declare-fun e!166739 () Bool)

(assert (=> b!268396 (= e!166739 (and tp!102056 (inv!4702 (tag!937 (h!9206 (t!37803 (t!37803 rules!1920))))) (inv!4706 (transformation!727 (h!9206 (t!37803 (t!37803 rules!1920))))) e!166738))))

(declare-fun b!268395 () Bool)

(declare-fun e!166737 () Bool)

(declare-fun tp!102058 () Bool)

(assert (=> b!268395 (= e!166737 (and e!166739 tp!102058))))

(assert (=> b!267378 (= tp!101972 e!166737)))

(assert (= b!268396 b!268397))

(assert (= b!268395 b!268396))

(assert (= (and b!267378 ((_ is Cons!3809) (t!37803 (t!37803 rules!1920)))) b!268395))

(declare-fun m!337817 () Bool)

(assert (=> b!268396 m!337817))

(declare-fun m!337819 () Bool)

(assert (=> b!268396 m!337819))

(declare-fun b!268407 () Bool)

(declare-fun e!166747 () Bool)

(declare-fun tp!102060 () Bool)

(assert (=> b!268407 (= e!166747 (and tp_is_empty!1807 tp!102060))))

(assert (=> b!267339 (= tp!101931 e!166747)))

(assert (= (and b!267339 ((_ is Cons!3808) (originalCharacters!770 (h!9207 (t!37804 tokens!465))))) b!268407))

(declare-fun b!268410 () Bool)

(declare-fun e!166750 () Bool)

(assert (=> b!268410 (= e!166750 true)))

(declare-fun b!268409 () Bool)

(declare-fun e!166749 () Bool)

(assert (=> b!268409 (= e!166749 e!166750)))

(declare-fun b!268408 () Bool)

(declare-fun e!166748 () Bool)

(assert (=> b!268408 (= e!166748 e!166749)))

(assert (=> b!267097 e!166748))

(assert (= b!268409 b!268410))

(assert (= b!268408 b!268409))

(assert (= (and b!267097 ((_ is Cons!3809) (t!37803 rules!1920))) b!268408))

(assert (=> b!268410 (< (dynLambda!1941 order!2913 (toValue!1458 (transformation!727 (h!9206 (t!37803 rules!1920))))) (dynLambda!1942 order!2915 lambda!9012))))

(assert (=> b!268410 (< (dynLambda!1943 order!2917 (toChars!1317 (transformation!727 (h!9206 (t!37803 rules!1920))))) (dynLambda!1942 order!2915 lambda!9012))))

(declare-fun b!268417 () Bool)

(declare-fun b_free!9969 () Bool)

(declare-fun b_next!9969 () Bool)

(assert (=> b!268417 (= b_free!9969 (not b_next!9969))))

(declare-fun tp!102065 () Bool)

(declare-fun b_and!21275 () Bool)

(assert (=> b!268417 (= tp!102065 b_and!21275)))

(declare-fun b_free!9971 () Bool)

(declare-fun b_next!9971 () Bool)

(assert (=> b!268417 (= b_free!9971 (not b_next!9971))))

(declare-fun t!38042 () Bool)

(declare-fun tb!14979 () Bool)

(assert (=> (and b!268417 (= (toChars!1317 (transformation!727 (rule!1312 (h!9207 (t!37804 (t!37804 tokens!465)))))) (toChars!1317 (transformation!727 (rule!1312 (h!9207 (Cons!3810 (h!9207 tokens!465) Nil!3810)))))) t!38042) tb!14979))

(declare-fun result!18560 () Bool)

(assert (= result!18560 result!18526))

(assert (=> d!77655 t!38042))

(declare-fun t!38044 () Bool)

(declare-fun tb!14981 () Bool)

(assert (=> (and b!268417 (= (toChars!1317 (transformation!727 (rule!1312 (h!9207 (t!37804 (t!37804 tokens!465)))))) (toChars!1317 (transformation!727 (rule!1312 (h!9207 (t!37804 tokens!465)))))) t!38044) tb!14981))

(declare-fun result!18562 () Bool)

(assert (= result!18562 result!18396))

(assert (=> d!77151 t!38044))

(declare-fun t!38046 () Bool)

(declare-fun tb!14983 () Bool)

(assert (=> (and b!268417 (= (toChars!1317 (transformation!727 (rule!1312 (h!9207 (t!37804 (t!37804 tokens!465)))))) (toChars!1317 (transformation!727 (rule!1312 (ite c!50566 call!14531 (ite c!50568 separatorToken!170 call!14530)))))) t!38046) tb!14983))

(declare-fun result!18564 () Bool)

(assert (= result!18564 result!18496))

(assert (=> d!77529 t!38046))

(declare-fun t!38048 () Bool)

(declare-fun tb!14985 () Bool)

(assert (=> (and b!268417 (= (toChars!1317 (transformation!727 (rule!1312 (h!9207 (t!37804 (t!37804 tokens!465)))))) (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465))))) t!38048) tb!14985))

(declare-fun result!18566 () Bool)

(assert (= result!18566 result!18344))

(assert (=> d!77059 t!38048))

(declare-fun t!38050 () Bool)

(declare-fun tb!14987 () Bool)

(assert (=> (and b!268417 (= (toChars!1317 (transformation!727 (rule!1312 (h!9207 (t!37804 (t!37804 tokens!465)))))) (toChars!1317 (transformation!727 (rule!1312 (apply!757 (seqFromList!822 (t!37804 tokens!465)) 0))))) t!38050) tb!14987))

(declare-fun result!18568 () Bool)

(assert (= result!18568 result!18416))

(assert (=> d!77253 t!38050))

(assert (=> b!267670 t!38044))

(declare-fun t!38052 () Bool)

(declare-fun tb!14989 () Bool)

(assert (=> (and b!268417 (= (toChars!1317 (transformation!727 (rule!1312 (h!9207 (t!37804 (t!37804 tokens!465)))))) (toChars!1317 (transformation!727 (rule!1312 call!14510)))) t!38052) tb!14989))

(declare-fun result!18570 () Bool)

(assert (= result!18570 result!18476))

(assert (=> d!77437 t!38052))

(declare-fun t!38054 () Bool)

(declare-fun tb!14991 () Bool)

(assert (=> (and b!268417 (= (toChars!1317 (transformation!727 (rule!1312 (h!9207 (t!37804 (t!37804 tokens!465)))))) (toChars!1317 (transformation!727 (rule!1312 separatorToken!170)))) t!38054) tb!14991))

(declare-fun result!18572 () Bool)

(assert (= result!18572 result!18352))

(assert (=> d!77053 t!38054))

(assert (=> b!266874 t!38048))

(declare-fun tb!14993 () Bool)

(declare-fun t!38056 () Bool)

(assert (=> (and b!268417 (= (toChars!1317 (transformation!727 (rule!1312 (h!9207 (t!37804 (t!37804 tokens!465)))))) (toChars!1317 (transformation!727 (rule!1312 call!14530)))) t!38056) tb!14993))

(declare-fun result!18574 () Bool)

(assert (= result!18574 result!18466))

(assert (=> d!77431 t!38056))

(declare-fun tb!14995 () Bool)

(declare-fun t!38058 () Bool)

(assert (=> (and b!268417 (= (toChars!1317 (transformation!727 (rule!1312 (h!9207 (t!37804 (t!37804 tokens!465)))))) (toChars!1317 (transformation!727 (rule!1312 (ite c!50526 call!14511 (ite c!50528 separatorToken!170 call!14510)))))) t!38058) tb!14995))

(declare-fun result!18576 () Bool)

(assert (= result!18576 result!18506))

(assert (=> d!77535 t!38058))

(declare-fun tb!14997 () Bool)

(declare-fun t!38060 () Bool)

(assert (=> (and b!268417 (= (toChars!1317 (transformation!727 (rule!1312 (h!9207 (t!37804 (t!37804 tokens!465)))))) (toChars!1317 (transformation!727 (rule!1312 (apply!757 lt!109288 0))))) t!38060) tb!14997))

(declare-fun result!18578 () Bool)

(assert (= result!18578 result!18406))

(assert (=> d!77197 t!38060))

(declare-fun tb!14999 () Bool)

(declare-fun t!38062 () Bool)

(assert (=> (and b!268417 (= (toChars!1317 (transformation!727 (rule!1312 (h!9207 (t!37804 (t!37804 tokens!465)))))) (toChars!1317 (transformation!727 (rule!1312 (apply!757 lt!109287 0))))) t!38062) tb!14999))

(declare-fun result!18580 () Bool)

(assert (= result!18580 result!18516))

(assert (=> d!77571 t!38062))

(assert (=> b!266884 t!38054))

(declare-fun tp!102063 () Bool)

(declare-fun b_and!21277 () Bool)

(assert (=> b!268417 (= tp!102063 (and (=> t!38050 result!18568) (=> t!38056 result!18574) (=> t!38062 result!18580) (=> t!38060 result!18578) (=> t!38052 result!18570) (=> t!38054 result!18572) (=> t!38048 result!18566) (=> t!38044 result!18562) (=> t!38058 result!18576) (=> t!38046 result!18564) (=> t!38042 result!18560) b_and!21277))))

(declare-fun e!166758 () Bool)

(assert (=> b!267338 (= tp!101928 e!166758)))

(declare-fun tp!102062 () Bool)

(declare-fun b!268416 () Bool)

(declare-fun e!166756 () Bool)

(declare-fun e!166759 () Bool)

(assert (=> b!268416 (= e!166756 (and tp!102062 (inv!4702 (tag!937 (rule!1312 (h!9207 (t!37804 (t!37804 tokens!465)))))) (inv!4706 (transformation!727 (rule!1312 (h!9207 (t!37804 (t!37804 tokens!465)))))) e!166759))))

(declare-fun e!166754 () Bool)

(declare-fun tp!102061 () Bool)

(declare-fun b!268414 () Bool)

(assert (=> b!268414 (= e!166758 (and (inv!4705 (h!9207 (t!37804 (t!37804 tokens!465)))) e!166754 tp!102061))))

(declare-fun tp!102064 () Bool)

(declare-fun b!268415 () Bool)

(assert (=> b!268415 (= e!166754 (and (inv!21 (value!25035 (h!9207 (t!37804 (t!37804 tokens!465))))) e!166756 tp!102064))))

(assert (=> b!268417 (= e!166759 (and tp!102065 tp!102063))))

(assert (= b!268416 b!268417))

(assert (= b!268415 b!268416))

(assert (= b!268414 b!268415))

(assert (= (and b!267338 ((_ is Cons!3810) (t!37804 (t!37804 tokens!465)))) b!268414))

(declare-fun m!337821 () Bool)

(assert (=> b!268416 m!337821))

(declare-fun m!337823 () Bool)

(assert (=> b!268416 m!337823))

(declare-fun m!337825 () Bool)

(assert (=> b!268414 m!337825))

(declare-fun m!337827 () Bool)

(assert (=> b!268415 m!337827))

(declare-fun b!268419 () Bool)

(declare-fun e!166760 () Bool)

(declare-fun tp!102070 () Bool)

(declare-fun tp!102066 () Bool)

(assert (=> b!268419 (= e!166760 (and tp!102070 tp!102066))))

(declare-fun b!268421 () Bool)

(declare-fun tp!102069 () Bool)

(declare-fun tp!102067 () Bool)

(assert (=> b!268421 (= e!166760 (and tp!102069 tp!102067))))

(declare-fun b!268420 () Bool)

(declare-fun tp!102068 () Bool)

(assert (=> b!268420 (= e!166760 tp!102068)))

(assert (=> b!267340 (= tp!101929 e!166760)))

(declare-fun b!268418 () Bool)

(assert (=> b!268418 (= e!166760 tp_is_empty!1807)))

(assert (= (and b!267340 ((_ is ElementMatch!951) (regex!727 (rule!1312 (h!9207 (t!37804 tokens!465)))))) b!268418))

(assert (= (and b!267340 ((_ is Concat!1701) (regex!727 (rule!1312 (h!9207 (t!37804 tokens!465)))))) b!268419))

(assert (= (and b!267340 ((_ is Star!951) (regex!727 (rule!1312 (h!9207 (t!37804 tokens!465)))))) b!268420))

(assert (= (and b!267340 ((_ is Union!951) (regex!727 (rule!1312 (h!9207 (t!37804 tokens!465)))))) b!268421))

(declare-fun b!268424 () Bool)

(declare-fun e!166763 () Bool)

(assert (=> b!268424 (= e!166763 true)))

(declare-fun b!268423 () Bool)

(declare-fun e!166762 () Bool)

(assert (=> b!268423 (= e!166762 e!166763)))

(declare-fun b!268422 () Bool)

(declare-fun e!166761 () Bool)

(assert (=> b!268422 (= e!166761 e!166762)))

(assert (=> b!267257 e!166761))

(assert (= b!268423 b!268424))

(assert (= b!268422 b!268423))

(assert (= (and b!267257 ((_ is Cons!3809) (t!37803 rules!1920))) b!268422))

(assert (=> b!268424 (< (dynLambda!1941 order!2913 (toValue!1458 (transformation!727 (h!9206 (t!37803 rules!1920))))) (dynLambda!1942 order!2915 lambda!9020))))

(assert (=> b!268424 (< (dynLambda!1943 order!2917 (toChars!1317 (transformation!727 (h!9206 (t!37803 rules!1920))))) (dynLambda!1942 order!2915 lambda!9020))))

(declare-fun b!268425 () Bool)

(declare-fun e!166764 () Bool)

(declare-fun tp!102071 () Bool)

(assert (=> b!268425 (= e!166764 (and tp_is_empty!1807 tp!102071))))

(assert (=> b!267368 (= tp!101960 e!166764)))

(assert (= (and b!267368 ((_ is Cons!3808) (t!37802 (originalCharacters!770 (h!9207 tokens!465))))) b!268425))

(declare-fun b!268427 () Bool)

(declare-fun e!166765 () Bool)

(declare-fun tp!102076 () Bool)

(declare-fun tp!102072 () Bool)

(assert (=> b!268427 (= e!166765 (and tp!102076 tp!102072))))

(declare-fun b!268429 () Bool)

(declare-fun tp!102075 () Bool)

(declare-fun tp!102073 () Bool)

(assert (=> b!268429 (= e!166765 (and tp!102075 tp!102073))))

(declare-fun b!268428 () Bool)

(declare-fun tp!102074 () Bool)

(assert (=> b!268428 (= e!166765 tp!102074)))

(assert (=> b!267357 (= tp!101952 e!166765)))

(declare-fun b!268426 () Bool)

(assert (=> b!268426 (= e!166765 tp_is_empty!1807)))

(assert (= (and b!267357 ((_ is ElementMatch!951) (regOne!2414 (regex!727 (rule!1312 (h!9207 tokens!465)))))) b!268426))

(assert (= (and b!267357 ((_ is Concat!1701) (regOne!2414 (regex!727 (rule!1312 (h!9207 tokens!465)))))) b!268427))

(assert (= (and b!267357 ((_ is Star!951) (regOne!2414 (regex!727 (rule!1312 (h!9207 tokens!465)))))) b!268428))

(assert (= (and b!267357 ((_ is Union!951) (regOne!2414 (regex!727 (rule!1312 (h!9207 tokens!465)))))) b!268429))

(declare-fun b!268431 () Bool)

(declare-fun e!166766 () Bool)

(declare-fun tp!102081 () Bool)

(declare-fun tp!102077 () Bool)

(assert (=> b!268431 (= e!166766 (and tp!102081 tp!102077))))

(declare-fun b!268433 () Bool)

(declare-fun tp!102080 () Bool)

(declare-fun tp!102078 () Bool)

(assert (=> b!268433 (= e!166766 (and tp!102080 tp!102078))))

(declare-fun b!268432 () Bool)

(declare-fun tp!102079 () Bool)

(assert (=> b!268432 (= e!166766 tp!102079)))

(assert (=> b!267357 (= tp!101948 e!166766)))

(declare-fun b!268430 () Bool)

(assert (=> b!268430 (= e!166766 tp_is_empty!1807)))

(assert (= (and b!267357 ((_ is ElementMatch!951) (regTwo!2414 (regex!727 (rule!1312 (h!9207 tokens!465)))))) b!268430))

(assert (= (and b!267357 ((_ is Concat!1701) (regTwo!2414 (regex!727 (rule!1312 (h!9207 tokens!465)))))) b!268431))

(assert (= (and b!267357 ((_ is Star!951) (regTwo!2414 (regex!727 (rule!1312 (h!9207 tokens!465)))))) b!268432))

(assert (= (and b!267357 ((_ is Union!951) (regTwo!2414 (regex!727 (rule!1312 (h!9207 tokens!465)))))) b!268433))

(declare-fun b!268435 () Bool)

(declare-fun e!166767 () Bool)

(declare-fun tp!102086 () Bool)

(declare-fun tp!102082 () Bool)

(assert (=> b!268435 (= e!166767 (and tp!102086 tp!102082))))

(declare-fun b!268437 () Bool)

(declare-fun tp!102085 () Bool)

(declare-fun tp!102083 () Bool)

(assert (=> b!268437 (= e!166767 (and tp!102085 tp!102083))))

(declare-fun b!268436 () Bool)

(declare-fun tp!102084 () Bool)

(assert (=> b!268436 (= e!166767 tp!102084)))

(assert (=> b!267358 (= tp!101950 e!166767)))

(declare-fun b!268434 () Bool)

(assert (=> b!268434 (= e!166767 tp_is_empty!1807)))

(assert (= (and b!267358 ((_ is ElementMatch!951) (reg!1280 (regex!727 (rule!1312 (h!9207 tokens!465)))))) b!268434))

(assert (= (and b!267358 ((_ is Concat!1701) (reg!1280 (regex!727 (rule!1312 (h!9207 tokens!465)))))) b!268435))

(assert (= (and b!267358 ((_ is Star!951) (reg!1280 (regex!727 (rule!1312 (h!9207 tokens!465)))))) b!268436))

(assert (= (and b!267358 ((_ is Union!951) (reg!1280 (regex!727 (rule!1312 (h!9207 tokens!465)))))) b!268437))

(declare-fun b!268439 () Bool)

(declare-fun e!166768 () Bool)

(declare-fun tp!102091 () Bool)

(declare-fun tp!102087 () Bool)

(assert (=> b!268439 (= e!166768 (and tp!102091 tp!102087))))

(declare-fun b!268441 () Bool)

(declare-fun tp!102090 () Bool)

(declare-fun tp!102088 () Bool)

(assert (=> b!268441 (= e!166768 (and tp!102090 tp!102088))))

(declare-fun b!268440 () Bool)

(declare-fun tp!102089 () Bool)

(assert (=> b!268440 (= e!166768 tp!102089)))

(assert (=> b!267359 (= tp!101951 e!166768)))

(declare-fun b!268438 () Bool)

(assert (=> b!268438 (= e!166768 tp_is_empty!1807)))

(assert (= (and b!267359 ((_ is ElementMatch!951) (regOne!2415 (regex!727 (rule!1312 (h!9207 tokens!465)))))) b!268438))

(assert (= (and b!267359 ((_ is Concat!1701) (regOne!2415 (regex!727 (rule!1312 (h!9207 tokens!465)))))) b!268439))

(assert (= (and b!267359 ((_ is Star!951) (regOne!2415 (regex!727 (rule!1312 (h!9207 tokens!465)))))) b!268440))

(assert (= (and b!267359 ((_ is Union!951) (regOne!2415 (regex!727 (rule!1312 (h!9207 tokens!465)))))) b!268441))

(declare-fun b!268443 () Bool)

(declare-fun e!166769 () Bool)

(declare-fun tp!102096 () Bool)

(declare-fun tp!102092 () Bool)

(assert (=> b!268443 (= e!166769 (and tp!102096 tp!102092))))

(declare-fun b!268445 () Bool)

(declare-fun tp!102095 () Bool)

(declare-fun tp!102093 () Bool)

(assert (=> b!268445 (= e!166769 (and tp!102095 tp!102093))))

(declare-fun b!268444 () Bool)

(declare-fun tp!102094 () Bool)

(assert (=> b!268444 (= e!166769 tp!102094)))

(assert (=> b!267359 (= tp!101949 e!166769)))

(declare-fun b!268442 () Bool)

(assert (=> b!268442 (= e!166769 tp_is_empty!1807)))

(assert (= (and b!267359 ((_ is ElementMatch!951) (regTwo!2415 (regex!727 (rule!1312 (h!9207 tokens!465)))))) b!268442))

(assert (= (and b!267359 ((_ is Concat!1701) (regTwo!2415 (regex!727 (rule!1312 (h!9207 tokens!465)))))) b!268443))

(assert (= (and b!267359 ((_ is Star!951) (regTwo!2415 (regex!727 (rule!1312 (h!9207 tokens!465)))))) b!268444))

(assert (= (and b!267359 ((_ is Union!951) (regTwo!2415 (regex!727 (rule!1312 (h!9207 tokens!465)))))) b!268445))

(declare-fun b_lambda!8447 () Bool)

(assert (= b_lambda!8405 (or b!267276 b_lambda!8447)))

(declare-fun bs!29664 () Bool)

(declare-fun d!77731 () Bool)

(assert (= bs!29664 (and d!77731 b!267276)))

(assert (=> bs!29664 (= (dynLambda!1945 lambda!9022 (apply!757 lt!109288 0)) (rulesProduceIndividualToken!362 thiss!17480 rules!1920 (apply!757 lt!109288 0)))))

(assert (=> bs!29664 m!335317))

(declare-fun m!337885 () Bool)

(assert (=> bs!29664 m!337885))

(assert (=> d!77199 d!77731))

(declare-fun b_lambda!8449 () Bool)

(assert (= b_lambda!8407 (or b!267078 b_lambda!8449)))

(declare-fun bs!29665 () Bool)

(declare-fun d!77735 () Bool)

(assert (= bs!29665 (and d!77735 b!267078)))

(assert (=> bs!29665 (= (dynLambda!1945 lambda!9012 (apply!757 (seqFromList!822 (t!37804 tokens!465)) 0)) (rulesProduceIndividualToken!362 thiss!17480 rules!1920 (apply!757 (seqFromList!822 (t!37804 tokens!465)) 0)))))

(assert (=> bs!29665 m!335057))

(declare-fun m!337887 () Bool)

(assert (=> bs!29665 m!337887))

(assert (=> d!77239 d!77735))

(declare-fun b_lambda!8451 () Bool)

(assert (= b_lambda!8417 (or b!267294 b_lambda!8451)))

(declare-fun bs!29666 () Bool)

(declare-fun d!77739 () Bool)

(assert (= bs!29666 (and d!77739 b!267294)))

(assert (=> bs!29666 (= (dynLambda!1945 lambda!9023 (h!9207 tokens!465)) (rulesProduceIndividualToken!362 thiss!17480 rules!1920 (h!9207 tokens!465)))))

(assert (=> bs!29666 m!334605))

(assert (=> d!77295 d!77739))

(declare-fun b_lambda!8453 () Bool)

(assert (= b_lambda!8441 (or b!267253 b_lambda!8453)))

(declare-fun bs!29667 () Bool)

(declare-fun d!77741 () Bool)

(assert (= bs!29667 (and d!77741 b!267253)))

(assert (=> bs!29667 (= (dynLambda!1945 lambda!9020 (h!9207 (t!37804 tokens!465))) (rulesProduceIndividualToken!362 thiss!17480 rules!1920 (h!9207 (t!37804 tokens!465))))))

(declare-fun m!337889 () Bool)

(assert (=> bs!29667 m!337889))

(assert (=> d!77597 d!77741))

(declare-fun b_lambda!8455 () Bool)

(assert (= b_lambda!8411 (or (and b!268397 b_free!9967 (= (toChars!1317 (transformation!727 (h!9206 (t!37803 (t!37803 rules!1920))))) (toChars!1317 (transformation!727 (rule!1312 (h!9207 (t!37804 tokens!465))))))) (and b!266827 b_free!9939 (= (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465)))) (toChars!1317 (transformation!727 (rule!1312 (h!9207 (t!37804 tokens!465))))))) (and b!267341 b_free!9959) (and b!266822 b_free!9943 (= (toChars!1317 (transformation!727 (rule!1312 separatorToken!170))) (toChars!1317 (transformation!727 (rule!1312 (h!9207 (t!37804 tokens!465))))))) (and b!266835 b_free!9947 (= (toChars!1317 (transformation!727 (h!9206 rules!1920))) (toChars!1317 (transformation!727 (rule!1312 (h!9207 (t!37804 tokens!465))))))) (and b!268417 b_free!9971 (= (toChars!1317 (transformation!727 (rule!1312 (h!9207 (t!37804 (t!37804 tokens!465)))))) (toChars!1317 (transformation!727 (rule!1312 (h!9207 (t!37804 tokens!465))))))) (and b!267380 b_free!9963 (= (toChars!1317 (transformation!727 (h!9206 (t!37803 rules!1920)))) (toChars!1317 (transformation!727 (rule!1312 (h!9207 (t!37804 tokens!465))))))) b_lambda!8455)))

(declare-fun b_lambda!8457 () Bool)

(assert (= b_lambda!8401 (or b!266841 b_lambda!8457)))

(declare-fun bs!29668 () Bool)

(declare-fun d!77745 () Bool)

(assert (= bs!29668 (and d!77745 b!266841)))

(assert (=> bs!29668 (= (dynLambda!1945 lambda!8994 (h!9207 (t!37804 tokens!465))) (not (isSeparator!727 (rule!1312 (h!9207 (t!37804 tokens!465))))))))

(assert (=> b!267449 d!77745))

(declare-fun b_lambda!8459 () Bool)

(assert (= b_lambda!8399 (or (and b!268397 b_free!9967 (= (toChars!1317 (transformation!727 (h!9206 (t!37803 (t!37803 rules!1920))))) (toChars!1317 (transformation!727 (rule!1312 (h!9207 (t!37804 tokens!465))))))) (and b!266827 b_free!9939 (= (toChars!1317 (transformation!727 (rule!1312 (h!9207 tokens!465)))) (toChars!1317 (transformation!727 (rule!1312 (h!9207 (t!37804 tokens!465))))))) (and b!267341 b_free!9959) (and b!266822 b_free!9943 (= (toChars!1317 (transformation!727 (rule!1312 separatorToken!170))) (toChars!1317 (transformation!727 (rule!1312 (h!9207 (t!37804 tokens!465))))))) (and b!266835 b_free!9947 (= (toChars!1317 (transformation!727 (h!9206 rules!1920))) (toChars!1317 (transformation!727 (rule!1312 (h!9207 (t!37804 tokens!465))))))) (and b!268417 b_free!9971 (= (toChars!1317 (transformation!727 (rule!1312 (h!9207 (t!37804 (t!37804 tokens!465)))))) (toChars!1317 (transformation!727 (rule!1312 (h!9207 (t!37804 tokens!465))))))) (and b!267380 b_free!9963 (= (toChars!1317 (transformation!727 (h!9206 (t!37803 rules!1920)))) (toChars!1317 (transformation!727 (rule!1312 (h!9207 (t!37804 tokens!465))))))) b_lambda!8459)))

(declare-fun b_lambda!8461 () Bool)

(assert (= b_lambda!8445 (or d!77119 b_lambda!8461)))

(declare-fun bs!29669 () Bool)

(declare-fun d!77747 () Bool)

(assert (= bs!29669 (and d!77747 d!77119)))

(assert (=> bs!29669 (= (dynLambda!1945 lambda!9028 (h!9207 (list!1550 lt!109288))) (rulesProduceIndividualToken!362 thiss!17480 rules!1920 (h!9207 (list!1550 lt!109288))))))

(assert (=> bs!29669 m!336733))

(assert (=> b!268275 d!77747))

(check-sat (not b!268156) (not b!268072) (not b!267608) (not d!77313) (not d!77221) (not d!77613) (not b!267551) (not d!77327) (not b!268295) (not b!268345) (not d!77517) (not bs!29667) (not d!77165) b_and!21263 (not b!268170) (not d!77563) (not b!267670) (not d!77447) (not b!268252) (not bm!14536) (not b!268195) (not b!268092) (not b!267501) (not b!268131) (not tb!14817) (not b!268151) (not b!268036) (not b!267539) (not b!268347) (not b!268188) (not d!77155) (not b!267422) (not d!77599) (not b!268164) (not b!268099) tp_is_empty!1807 (not b!267642) (not bm!14581) b_and!21117 (not b!267561) (not b_lambda!8459) (not b!268368) (not b_next!9967) (not b_next!9941) (not d!77629) (not b!267639) (not d!77265) (not d!77689) (not b!268033) (not b!267760) (not b!268155) (not b!267393) (not tb!14837) (not b!267615) (not b!268039) (not d!77589) (not bs!29666) (not d!77301) (not b!267394) (not b_next!9959) (not d!77239) (not b!268166) (not b!267757) (not b!268098) (not b!267590) (not bm!14580) (not b!268138) (not b!268384) (not d!77527) (not d!77659) (not b!268153) (not tb!14887) (not bm!14593) (not d!77571) (not d!77641) (not b!268422) (not b!268157) (not b!267978) (not d!77173) (not bm!14592) (not d!77567) (not d!77687) (not b!268351) (not b!268396) (not b!267618) (not b!268201) (not b!267438) (not b_next!9945) (not b_next!9947) (not b!267977) (not b!268421) (not b!268385) (not d!77133) (not bm!14575) (not d!77499) (not b!268192) (not b!267465) (not d!77627) (not b_lambda!8409) (not b!267739) (not b!268203) (not d!77647) (not d!77511) (not b!268160) (not b!267975) (not b!267594) (not b!268318) (not b!268394) (not d!77143) (not b!267556) (not b!268332) (not d!77179) (not b!268355) (not b!267637) (not d!77693) (not d!77717) (not b!267620) (not b!268105) (not b!267771) (not b!268056) (not b!267555) (not b!268200) (not b!268348) (not d!77229) (not b!267965) (not b!268032) (not b!267463) (not b!268183) (not d!77315) b_and!21265 (not b!268436) (not b!268363) (not b!268118) (not b!268080) (not b!267610) (not b!268076) (not b!268191) (not d!77303) (not b!267640) (not d!77297) (not d!77651) (not b_lambda!8395) (not b!268109) (not b!268113) (not d!77139) (not b!267391) (not b!267444) (not b!268053) (not d!77209) (not b!267966) (not d!77545) (not b!268270) (not d!77521) (not d!77587) (not b!268232) b_and!21045 (not bm!14552) b_and!21049 (not b!267407) (not d!77691) (not d!77525) (not d!77639) (not d!77497) (not b!267609) (not b!268293) (not tb!14917) (not b!268148) (not tb!14927) (not b!268154) (not b_next!9969) (not b!268078) (not bm!14549) (not b!268386) (not b!267456) (not b!268097) (not b!268390) (not b!267738) (not b!268116) (not b!268069) (not b!267745) (not d!77649) (not b!267541) (not b!268294) (not b!268130) (not b!268435) (not b!267673) (not b!268174) (not b_lambda!8455) (not b!267601) (not b!267981) (not d!77199) (not b_next!9965) (not b!268172) (not b!268235) b_and!21277 (not b!267396) (not d!77605) (not d!77617) (not b!268227) (not b!268372) (not d!77311) (not b!267595) (not bs!29669) (not b!267622) (not b!268316) (not b!267439) (not b!268239) (not d!77539) b_and!21275 (not b!267486) (not d!77175) b_and!21113 (not b!268432) (not b!266886) (not b!267612) (not b!267441) (not d!77565) (not d!77523) (not d!77151) (not tb!14897) (not bm!14556) (not b!268211) (not b!268344) (not b!267503) (not b!267646) (not b!268431) (not b!267600) (not b!268152) (not b!267742) (not b!267641) (not b!267499) (not b!268367) (not d!77569) (not b!268102) (not bm!14557) (not b_lambda!8435) (not d!77219) (not b!268236) (not d!77431) (not d!77553) (not b!268198) (not b!268163) (not b!268222) (not b!268171) (not b!268364) (not b!267493) (not b!268055) (not d!77207) (not d!77145) (not b!267450) (not b!268337) (not d!77551) (not b!268242) (not bm!14584) (not b!267806) (not b!268373) (not d!77295) (not b!268093) (not d!77561) (not bm!14561) (not b!268356) (not b!267628) (not b!267743) (not bm!14586) (not d!77509) (not bm!14558) (not tb!14947) (not b!267448) (not b!268393) (not d!77233) (not b!268075) (not b_lambda!8439) (not b!267747) (not d!77537) (not b!268065) (not b!268085) (not b!268031) (not b!267408) (not bm!14553) (not b!268231) (not b!268388) (not b!268420) (not b!267665) (not d!77637) (not b!268066) (not d!77245) (not b!267497) (not bm!14541) (not b!268107) (not bm!14544) (not b!267442) (not b!267558) (not b!268073) (not b_next!9943) (not b_lambda!8443) (not b_lambda!8403) (not b!268416) (not b!268360) (not d!77633) (not b!267964) (not b!268149) (not b!267616) (not d!77513) (not b!268336) (not b!268303) (not b!267537) (not d!77243) (not b!267392) (not b!267431) b_and!21273 (not b!268220) (not bs!29665) (not b!267544) (not d!77317) (not b!268122) (not b!268091) (not d!77491) (not b!267749) (not d!77555) (not d!77267) (not bm!14577) (not b!268395) (not b_lambda!8453) (not b!268439) (not b!268349) (not b!268441) (not b_lambda!8461) (not b!267675) (not d!77597) (not d!77453) (not b!268415) (not b!267440) (not b!267667) (not b!267421) (not b!268108) (not b!268317) (not bm!14582) (not b!268407) (not b!267761) (not d!77203) (not bm!14574) (not b!267650) (not b!268254) (not b!267677) (not d!77263) (not b_lambda!8429) (not b!267563) (not b!268089) (not bm!14596) (not b!267588) (not b!267410) (not d!77603) (not b!267534) (not d!77609) (not b!268369) (not b!268173) (not b!267598) (not b!267754) (not b!267758) (not d!77581) (not d!77433) (not b!268205) (not d!77251) (not d!77507) (not d!77439) (not d!77547) (not b!268328) (not b!267794) (not d!77607) (not d!77299) (not bs!29664) (not d!77533) (not b!267636) (not b!268292) (not b_lambda!8457) (not b!267496) (not b!268243) (not d!77593) (not bm!14546) (not b!267635) (not d!77543) (not b!268090) (not bm!14555) (not b!268353) (not b_lambda!8391) (not b!268429) (not b!267746) (not b!267429) (not bm!14573) (not b!268115) (not d!77135) (not d!77559) (not b!267644) (not b!268169) (not b!267647) (not b!267540) (not b!267807) (not b!268428) (not b!268240) (not d!77699) (not b!267658) (not bm!14579) (not b!268086) (not b!268111) (not d!77443) (not b_lambda!8451) (not b!268408) (not b!267504) (not b!268054) (not d!77549) (not d!77489) (not b!267557) (not b!268060) (not b!267592) (not b!268110) (not d!77535) (not b!268359) (not b!268177) (not bm!14538) (not bm!14583) (not d!77573) (not d!77197) (not d!77529) (not b!267980) (not d!77475) (not b_next!9939) (not d!77237) (not b!268389) (not b!268121) (not d!77261) (not b!267774) (not b!268179) (not b!268433) (not b!268365) (not b!268088) (not bm!14539) (not b!268361) (not d!77621) (not b!267769) (not b!268212) (not b!267772) (not b_lambda!8397) (not b!268445) (not b!267585) (not b!267453) (not b!267538) (not b_next!9963) (not b!268371) (not d!77519) (not b_lambda!8389) (not d!77131) (not b!268357) (not d!77575) (not d!77611) (not d!77227) (not d!77249) (not d!77167) (not b!268081) (not tb!14937) (not b!267669) (not d!77305) (not d!77437) (not b!267543) (not b!268141) (not bm!14550) (not bm!14594) (not b!268440) (not b!267672) (not b!268221) (not b!267409) (not b!268250) (not b!267678) (not d!77643) (not d!77477) (not d!77253) (not b!267671) (not b_lambda!8437) (not bm!14545) (not b!268298) (not b_next!9937) (not b!267623) (not b!268057) (not tb!14827) (not b!268335) (not b!267535) (not d!77325) (not b!268331) (not d!77169) (not b!267969) (not b!267659) (not b_lambda!8449) (not b!268437) (not b!267809) (not d!77241) (not b!267768) (not bm!14578) (not b!268180) (not d!77583) (not b!268140) (not d!77483) (not d!77655) (not d!77557) (not b!267432) (not b!268038) (not b!268219) b_and!21271 (not b!267397) (not b!267651) (not b!267741) (not b!268419) (not b!267648) (not b!268187) (not b!268352) (not b!267773) (not d!77635) (not b!267796) (not b_next!9961) (not d!77653) (not d!77309) (not b!268427) (not b!267627) (not b!267464) (not b!267446) (not b_next!9957) (not b!268343) (not d!77577) (not b!268083) b_and!21267 (not b!267974) (not d!77619) (not b!268194) (not b!266880) (not b!268276) (not d!77201) (not b!268167) (not b!267750) (not b!268443) (not b_lambda!8393) (not b!268208) (not b!267744) (not b!267554) (not b!267643) (not d!77707) (not b!268444) (not d!77171) (not b!268096) (not b!268425) (not b!267611) (not b!268117) (not d!77615) (not b!268196) (not b!268392) (not b!268159) b_and!21269 (not d!77703) (not d!77445) (not b!268414) (not b!268228) (not b!268058) (not b!267674) b_and!21053 (not b!268150) (not d!77329) (not b_lambda!8447) (not d!77137) (not b!267485) (not d!77719) (not d!77667) (not b_lambda!8427) (not b!268165) (not b!267564) (not b!267968) (not d!77705) (not b!268178) (not d!77645) (not d!77225) (not d!77451) b_and!21261 (not b!267645) (not b_next!9971) (not d!77235) (not d!77195) (not d!77323))
(check-sat b_and!21263 (not b_next!9959) b_and!21265 b_and!21045 b_and!21275 b_and!21113 (not b_next!9943) b_and!21273 (not b_next!9939) (not b_next!9963) (not b_next!9937) b_and!21271 (not b_next!9961) b_and!21117 (not b_next!9967) (not b_next!9941) (not b_next!9945) (not b_next!9947) b_and!21049 (not b_next!9969) (not b_next!9965) b_and!21277 (not b_next!9957) b_and!21267 b_and!21269 b_and!21053 b_and!21261 (not b_next!9971))
