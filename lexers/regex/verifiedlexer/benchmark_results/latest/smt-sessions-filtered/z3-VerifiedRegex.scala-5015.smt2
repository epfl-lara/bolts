; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!253706 () Bool)

(assert start!253706)

(declare-fun b!2610092 () Bool)

(declare-fun b_free!73341 () Bool)

(declare-fun b_next!74045 () Bool)

(assert (=> b!2610092 (= b_free!73341 (not b_next!74045))))

(declare-fun tp!829234 () Bool)

(declare-fun b_and!190899 () Bool)

(assert (=> b!2610092 (= tp!829234 b_and!190899)))

(declare-fun b_free!73343 () Bool)

(declare-fun b_next!74047 () Bool)

(assert (=> b!2610092 (= b_free!73343 (not b_next!74047))))

(declare-fun tp!829231 () Bool)

(declare-fun b_and!190901 () Bool)

(assert (=> b!2610092 (= tp!829231 b_and!190901)))

(declare-fun b!2610087 () Bool)

(declare-fun b_free!73345 () Bool)

(declare-fun b_next!74049 () Bool)

(assert (=> b!2610087 (= b_free!73345 (not b_next!74049))))

(declare-fun tp!829230 () Bool)

(declare-fun b_and!190903 () Bool)

(assert (=> b!2610087 (= tp!829230 b_and!190903)))

(declare-fun b_free!73347 () Bool)

(declare-fun b_next!74051 () Bool)

(assert (=> b!2610087 (= b_free!73347 (not b_next!74051))))

(declare-fun tp!829235 () Bool)

(declare-fun b_and!190905 () Bool)

(assert (=> b!2610087 (= tp!829235 b_and!190905)))

(declare-datatypes ((List!30229 0))(
  ( (Nil!30129) (Cons!30129 (h!35549 (_ BitVec 16)) (t!214008 List!30229)) )
))
(declare-datatypes ((C!15548 0))(
  ( (C!15549 (val!9708 Int)) )
))
(declare-datatypes ((Regex!7695 0))(
  ( (ElementMatch!7695 (c!419606 C!15548)) (Concat!12468 (regOne!15902 Regex!7695) (regTwo!15902 Regex!7695)) (EmptyExpr!7695) (Star!7695 (reg!8024 Regex!7695)) (EmptyLang!7695) (Union!7695 (regOne!15903 Regex!7695) (regTwo!15903 Regex!7695)) )
))
(declare-datatypes ((TokenValue!4773 0))(
  ( (FloatLiteralValue!9546 (text!33856 List!30229)) (TokenValueExt!4772 (__x!19379 Int)) (Broken!23865 (value!147282 List!30229)) (Object!4872) (End!4773) (Def!4773) (Underscore!4773) (Match!4773) (Else!4773) (Error!4773) (Case!4773) (If!4773) (Extends!4773) (Abstract!4773) (Class!4773) (Val!4773) (DelimiterValue!9546 (del!4833 List!30229)) (KeywordValue!4779 (value!147283 List!30229)) (CommentValue!9546 (value!147284 List!30229)) (WhitespaceValue!9546 (value!147285 List!30229)) (IndentationValue!4773 (value!147286 List!30229)) (String!33748) (Int32!4773) (Broken!23866 (value!147287 List!30229)) (Boolean!4774) (Unit!44118) (OperatorValue!4776 (op!4833 List!30229)) (IdentifierValue!9546 (value!147288 List!30229)) (IdentifierValue!9547 (value!147289 List!30229)) (WhitespaceValue!9547 (value!147290 List!30229)) (True!9546) (False!9546) (Broken!23867 (value!147291 List!30229)) (Broken!23868 (value!147292 List!30229)) (True!9547) (RightBrace!4773) (RightBracket!4773) (Colon!4773) (Null!4773) (Comma!4773) (LeftBracket!4773) (False!9547) (LeftBrace!4773) (ImaginaryLiteralValue!4773 (text!33857 List!30229)) (StringLiteralValue!14319 (value!147293 List!30229)) (EOFValue!4773 (value!147294 List!30229)) (IdentValue!4773 (value!147295 List!30229)) (DelimiterValue!9547 (value!147296 List!30229)) (DedentValue!4773 (value!147297 List!30229)) (NewLineValue!4773 (value!147298 List!30229)) (IntegerValue!14319 (value!147299 (_ BitVec 32)) (text!33858 List!30229)) (IntegerValue!14320 (value!147300 Int) (text!33859 List!30229)) (Times!4773) (Or!4773) (Equal!4773) (Minus!4773) (Broken!23869 (value!147301 List!30229)) (And!4773) (Div!4773) (LessEqual!4773) (Mod!4773) (Concat!12469) (Not!4773) (Plus!4773) (SpaceValue!4773 (value!147302 List!30229)) (IntegerValue!14321 (value!147303 Int) (text!33860 List!30229)) (StringLiteralValue!14320 (text!33861 List!30229)) (FloatLiteralValue!9547 (text!33862 List!30229)) (BytesLiteralValue!4773 (value!147304 List!30229)) (CommentValue!9547 (value!147305 List!30229)) (StringLiteralValue!14321 (value!147306 List!30229)) (ErrorTokenValue!4773 (msg!4834 List!30229)) )
))
(declare-datatypes ((List!30230 0))(
  ( (Nil!30130) (Cons!30130 (h!35550 C!15548) (t!214009 List!30230)) )
))
(declare-datatypes ((IArray!18693 0))(
  ( (IArray!18694 (innerList!9404 List!30230)) )
))
(declare-datatypes ((Conc!9344 0))(
  ( (Node!9344 (left!23167 Conc!9344) (right!23497 Conc!9344) (csize!18918 Int) (cheight!9555 Int)) (Leaf!14360 (xs!12328 IArray!18693) (csize!18919 Int)) (Empty!9344) )
))
(declare-datatypes ((BalanceConc!18302 0))(
  ( (BalanceConc!18303 (c!419607 Conc!9344)) )
))
(declare-datatypes ((TokenValueInjection!8986 0))(
  ( (TokenValueInjection!8987 (toValue!6453 Int) (toChars!6312 Int)) )
))
(declare-datatypes ((String!33749 0))(
  ( (String!33750 (value!147307 String)) )
))
(declare-datatypes ((Rule!8902 0))(
  ( (Rule!8903 (regex!4551 Regex!7695) (tag!5041 String!33749) (isSeparator!4551 Bool) (transformation!4551 TokenValueInjection!8986)) )
))
(declare-datatypes ((List!30231 0))(
  ( (Nil!30131) (Cons!30131 (h!35551 Rule!8902) (t!214010 List!30231)) )
))
(declare-fun rules!1726 () List!30231)

(declare-fun e!1646790 () Bool)

(declare-fun e!1646789 () Bool)

(declare-fun tp!829228 () Bool)

(declare-fun b!2610086 () Bool)

(declare-fun inv!40762 (String!33749) Bool)

(declare-fun inv!40767 (TokenValueInjection!8986) Bool)

(assert (=> b!2610086 (= e!1646789 (and tp!829228 (inv!40762 (tag!5041 (h!35551 rules!1726))) (inv!40767 (transformation!4551 (h!35551 rules!1726))) e!1646790))))

(declare-fun e!1646785 () Bool)

(assert (=> b!2610087 (= e!1646785 (and tp!829230 tp!829235))))

(declare-fun b!2610088 () Bool)

(declare-fun res!1098594 () Bool)

(declare-fun e!1646782 () Bool)

(assert (=> b!2610088 (=> res!1098594 e!1646782)))

(declare-datatypes ((Token!8572 0))(
  ( (Token!8573 (value!147308 TokenValue!4773) (rule!6921 Rule!8902) (size!23334 Int) (originalCharacters!5317 List!30230)) )
))
(declare-datatypes ((List!30232 0))(
  ( (Nil!30132) (Cons!30132 (h!35552 Token!8572) (t!214011 List!30232)) )
))
(declare-fun lt!917173 () List!30232)

(declare-fun lt!917178 () Token!8572)

(declare-fun contains!5576 (List!30232 Token!8572) Bool)

(assert (=> b!2610088 (= res!1098594 (not (contains!5576 lt!917173 lt!917178)))))

(declare-fun e!1646784 () Bool)

(declare-fun e!1646787 () Bool)

(declare-fun b!2610089 () Bool)

(declare-fun separatorToken!156 () Token!8572)

(declare-fun tp!829236 () Bool)

(declare-fun inv!21 (TokenValue!4773) Bool)

(assert (=> b!2610089 (= e!1646787 (and (inv!21 (value!147308 separatorToken!156)) e!1646784 tp!829236))))

(declare-fun b!2610091 () Bool)

(declare-fun e!1646791 () Bool)

(declare-datatypes ((IArray!18695 0))(
  ( (IArray!18696 (innerList!9405 List!30232)) )
))
(declare-datatypes ((Conc!9345 0))(
  ( (Node!9345 (left!23168 Conc!9345) (right!23498 Conc!9345) (csize!18920 Int) (cheight!9556 Int)) (Leaf!14361 (xs!12329 IArray!18695) (csize!18921 Int)) (Empty!9345) )
))
(declare-datatypes ((BalanceConc!18304 0))(
  ( (BalanceConc!18305 (c!419608 Conc!9345)) )
))
(declare-fun v!6381 () BalanceConc!18304)

(declare-fun tp!829229 () Bool)

(declare-fun inv!40768 (Conc!9345) Bool)

(assert (=> b!2610091 (= e!1646791 (and (inv!40768 (c!419608 v!6381)) tp!829229))))

(assert (=> b!2610092 (= e!1646790 (and tp!829234 tp!829231))))

(declare-fun b!2610093 () Bool)

(declare-fun from!862 () Int)

(assert (=> b!2610093 (= e!1646782 (<= 0 from!862))))

(declare-fun b!2610094 () Bool)

(declare-fun e!1646779 () Bool)

(declare-fun tp!829233 () Bool)

(assert (=> b!2610094 (= e!1646779 (and e!1646789 tp!829233))))

(declare-fun b!2610095 () Bool)

(declare-fun res!1098602 () Bool)

(declare-fun e!1646788 () Bool)

(assert (=> b!2610095 (=> (not res!1098602) (not e!1646788))))

(assert (=> b!2610095 (= res!1098602 (isSeparator!4551 (rule!6921 separatorToken!156)))))

(declare-fun b!2610096 () Bool)

(declare-fun e!1646781 () Bool)

(assert (=> b!2610096 (= e!1646781 (not e!1646782))))

(declare-fun res!1098600 () Bool)

(assert (=> b!2610096 (=> res!1098600 e!1646782)))

(declare-fun contains!5577 (BalanceConc!18304 Token!8572) Bool)

(assert (=> b!2610096 (= res!1098600 (not (contains!5577 v!6381 lt!917178)))))

(declare-fun apply!7062 (BalanceConc!18304 Int) Token!8572)

(assert (=> b!2610096 (= lt!917178 (apply!7062 v!6381 from!862))))

(declare-fun lt!917175 () List!30232)

(declare-fun tail!4184 (List!30232) List!30232)

(declare-fun drop!1547 (List!30232 Int) List!30232)

(assert (=> b!2610096 (= (tail!4184 lt!917175) (drop!1547 lt!917173 (+ 1 from!862)))))

(declare-datatypes ((Unit!44119 0))(
  ( (Unit!44120) )
))
(declare-fun lt!917174 () Unit!44119)

(declare-fun lemmaDropTail!736 (List!30232 Int) Unit!44119)

(assert (=> b!2610096 (= lt!917174 (lemmaDropTail!736 lt!917173 from!862))))

(declare-fun head!5946 (List!30232) Token!8572)

(declare-fun apply!7063 (List!30232 Int) Token!8572)

(assert (=> b!2610096 (= (head!5946 lt!917175) (apply!7063 lt!917173 from!862))))

(assert (=> b!2610096 (= lt!917175 (drop!1547 lt!917173 from!862))))

(declare-fun lt!917179 () Unit!44119)

(declare-fun lemmaDropApply!762 (List!30232 Int) Unit!44119)

(assert (=> b!2610096 (= lt!917179 (lemmaDropApply!762 lt!917173 from!862))))

(declare-fun b!2610097 () Bool)

(declare-fun res!1098603 () Bool)

(assert (=> b!2610097 (=> (not res!1098603) (not e!1646788))))

(declare-datatypes ((LexerInterface!4148 0))(
  ( (LexerInterfaceExt!4145 (__x!19380 Int)) (Lexer!4146) )
))
(declare-fun thiss!14197 () LexerInterface!4148)

(declare-fun rulesProduceIndividualToken!1860 (LexerInterface!4148 List!30231 Token!8572) Bool)

(assert (=> b!2610097 (= res!1098603 (rulesProduceIndividualToken!1860 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun b!2610098 () Bool)

(declare-fun e!1646786 () Bool)

(assert (=> b!2610098 (= e!1646786 e!1646788)))

(declare-fun res!1098595 () Bool)

(assert (=> b!2610098 (=> (not res!1098595) (not e!1646788))))

(declare-fun lt!917177 () Int)

(assert (=> b!2610098 (= res!1098595 (<= from!862 lt!917177))))

(declare-fun size!23335 (BalanceConc!18304) Int)

(assert (=> b!2610098 (= lt!917177 (size!23335 v!6381))))

(declare-fun b!2610099 () Bool)

(declare-fun res!1098596 () Bool)

(assert (=> b!2610099 (=> (not res!1098596) (not e!1646788))))

(declare-fun rulesProduceEachTokenIndividually!968 (LexerInterface!4148 List!30231 BalanceConc!18304) Bool)

(assert (=> b!2610099 (= res!1098596 (rulesProduceEachTokenIndividually!968 thiss!14197 rules!1726 v!6381))))

(declare-fun b!2610100 () Bool)

(declare-fun res!1098601 () Bool)

(assert (=> b!2610100 (=> (not res!1098601) (not e!1646788))))

(declare-fun sepAndNonSepRulesDisjointChars!1124 (List!30231 List!30231) Bool)

(assert (=> b!2610100 (= res!1098601 (sepAndNonSepRulesDisjointChars!1124 rules!1726 rules!1726))))

(declare-fun b!2610101 () Bool)

(declare-fun res!1098604 () Bool)

(assert (=> b!2610101 (=> (not res!1098604) (not e!1646788))))

(declare-fun isEmpty!17224 (List!30231) Bool)

(assert (=> b!2610101 (= res!1098604 (not (isEmpty!17224 rules!1726)))))

(declare-fun b!2610102 () Bool)

(assert (=> b!2610102 (= e!1646788 e!1646781)))

(declare-fun res!1098598 () Bool)

(assert (=> b!2610102 (=> (not res!1098598) (not e!1646781))))

(assert (=> b!2610102 (= res!1098598 (< from!862 lt!917177))))

(declare-fun lt!917176 () Unit!44119)

(declare-fun lambda!97628 () Int)

(declare-fun lemmaContentSubsetPreservesForall!220 (List!30232 List!30232 Int) Unit!44119)

(declare-fun dropList!854 (BalanceConc!18304 Int) List!30232)

(assert (=> b!2610102 (= lt!917176 (lemmaContentSubsetPreservesForall!220 lt!917173 (dropList!854 v!6381 from!862) lambda!97628))))

(declare-fun list!11309 (BalanceConc!18304) List!30232)

(assert (=> b!2610102 (= lt!917173 (list!11309 v!6381))))

(declare-fun b!2610090 () Bool)

(declare-fun res!1098599 () Bool)

(assert (=> b!2610090 (=> (not res!1098599) (not e!1646788))))

(declare-fun forall!6243 (BalanceConc!18304 Int) Bool)

(assert (=> b!2610090 (= res!1098599 (forall!6243 v!6381 lambda!97628))))

(declare-fun res!1098597 () Bool)

(assert (=> start!253706 (=> (not res!1098597) (not e!1646786))))

(get-info :version)

(assert (=> start!253706 (= res!1098597 (and ((_ is Lexer!4146) thiss!14197) (>= from!862 0)))))

(assert (=> start!253706 e!1646786))

(assert (=> start!253706 true))

(assert (=> start!253706 e!1646779))

(declare-fun inv!40769 (Token!8572) Bool)

(assert (=> start!253706 (and (inv!40769 separatorToken!156) e!1646787)))

(declare-fun inv!40770 (BalanceConc!18304) Bool)

(assert (=> start!253706 (and (inv!40770 v!6381) e!1646791)))

(declare-fun b!2610103 () Bool)

(declare-fun res!1098593 () Bool)

(assert (=> b!2610103 (=> (not res!1098593) (not e!1646788))))

(declare-fun rulesInvariant!3648 (LexerInterface!4148 List!30231) Bool)

(assert (=> b!2610103 (= res!1098593 (rulesInvariant!3648 thiss!14197 rules!1726))))

(declare-fun b!2610104 () Bool)

(declare-fun tp!829232 () Bool)

(assert (=> b!2610104 (= e!1646784 (and tp!829232 (inv!40762 (tag!5041 (rule!6921 separatorToken!156))) (inv!40767 (transformation!4551 (rule!6921 separatorToken!156))) e!1646785))))

(assert (= (and start!253706 res!1098597) b!2610098))

(assert (= (and b!2610098 res!1098595) b!2610101))

(assert (= (and b!2610101 res!1098604) b!2610103))

(assert (= (and b!2610103 res!1098593) b!2610099))

(assert (= (and b!2610099 res!1098596) b!2610097))

(assert (= (and b!2610097 res!1098603) b!2610095))

(assert (= (and b!2610095 res!1098602) b!2610090))

(assert (= (and b!2610090 res!1098599) b!2610100))

(assert (= (and b!2610100 res!1098601) b!2610102))

(assert (= (and b!2610102 res!1098598) b!2610096))

(assert (= (and b!2610096 (not res!1098600)) b!2610088))

(assert (= (and b!2610088 (not res!1098594)) b!2610093))

(assert (= b!2610086 b!2610092))

(assert (= b!2610094 b!2610086))

(assert (= (and start!253706 ((_ is Cons!30131) rules!1726)) b!2610094))

(assert (= b!2610104 b!2610087))

(assert (= b!2610089 b!2610104))

(assert (= start!253706 b!2610089))

(assert (= start!253706 b!2610091))

(declare-fun m!2944777 () Bool)

(assert (=> b!2610099 m!2944777))

(declare-fun m!2944779 () Bool)

(assert (=> b!2610088 m!2944779))

(declare-fun m!2944781 () Bool)

(assert (=> start!253706 m!2944781))

(declare-fun m!2944783 () Bool)

(assert (=> start!253706 m!2944783))

(declare-fun m!2944785 () Bool)

(assert (=> b!2610096 m!2944785))

(declare-fun m!2944787 () Bool)

(assert (=> b!2610096 m!2944787))

(declare-fun m!2944789 () Bool)

(assert (=> b!2610096 m!2944789))

(declare-fun m!2944791 () Bool)

(assert (=> b!2610096 m!2944791))

(declare-fun m!2944793 () Bool)

(assert (=> b!2610096 m!2944793))

(declare-fun m!2944795 () Bool)

(assert (=> b!2610096 m!2944795))

(declare-fun m!2944797 () Bool)

(assert (=> b!2610096 m!2944797))

(declare-fun m!2944799 () Bool)

(assert (=> b!2610096 m!2944799))

(declare-fun m!2944801 () Bool)

(assert (=> b!2610096 m!2944801))

(declare-fun m!2944803 () Bool)

(assert (=> b!2610098 m!2944803))

(declare-fun m!2944805 () Bool)

(assert (=> b!2610102 m!2944805))

(assert (=> b!2610102 m!2944805))

(declare-fun m!2944807 () Bool)

(assert (=> b!2610102 m!2944807))

(declare-fun m!2944809 () Bool)

(assert (=> b!2610102 m!2944809))

(declare-fun m!2944811 () Bool)

(assert (=> b!2610100 m!2944811))

(declare-fun m!2944813 () Bool)

(assert (=> b!2610097 m!2944813))

(declare-fun m!2944815 () Bool)

(assert (=> b!2610086 m!2944815))

(declare-fun m!2944817 () Bool)

(assert (=> b!2610086 m!2944817))

(declare-fun m!2944819 () Bool)

(assert (=> b!2610091 m!2944819))

(declare-fun m!2944821 () Bool)

(assert (=> b!2610104 m!2944821))

(declare-fun m!2944823 () Bool)

(assert (=> b!2610104 m!2944823))

(declare-fun m!2944825 () Bool)

(assert (=> b!2610089 m!2944825))

(declare-fun m!2944827 () Bool)

(assert (=> b!2610090 m!2944827))

(declare-fun m!2944829 () Bool)

(assert (=> b!2610101 m!2944829))

(declare-fun m!2944831 () Bool)

(assert (=> b!2610103 m!2944831))

(check-sat (not b!2610096) (not b!2610089) (not b_next!74045) (not b!2610097) (not b!2610088) (not b!2610102) (not b!2610099) b_and!190903 b_and!190901 (not b_next!74047) (not b_next!74049) (not b!2610104) (not b!2610100) b_and!190905 (not b_next!74051) (not b!2610094) (not b!2610090) (not b!2610098) (not b!2610103) (not start!253706) b_and!190899 (not b!2610091) (not b!2610101) (not b!2610086))
(check-sat b_and!190903 (not b_next!74049) (not b_next!74045) b_and!190899 b_and!190901 (not b_next!74047) b_and!190905 (not b_next!74051))
