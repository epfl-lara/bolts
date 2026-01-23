; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!3664 () Bool)

(assert start!3664)

(declare-fun b!51154 () Bool)

(declare-fun b_free!1617 () Bool)

(declare-fun b_next!1617 () Bool)

(assert (=> b!51154 (= b_free!1617 (not b_next!1617))))

(declare-fun tp!33677 () Bool)

(declare-fun b_and!1667 () Bool)

(assert (=> b!51154 (= tp!33677 b_and!1667)))

(declare-fun b_free!1619 () Bool)

(declare-fun b_next!1619 () Bool)

(assert (=> b!51154 (= b_free!1619 (not b_next!1619))))

(declare-fun tp!33676 () Bool)

(declare-fun b_and!1669 () Bool)

(assert (=> b!51154 (= tp!33676 b_and!1669)))

(declare-fun b!51153 () Bool)

(declare-fun tp!33674 () Bool)

(declare-fun e!30028 () Bool)

(declare-fun e!30029 () Bool)

(declare-datatypes ((List!1042 0))(
  ( (Nil!1036) (Cons!1036 (h!6433 (_ BitVec 16)) (t!17253 List!1042)) )
))
(declare-datatypes ((TokenValue!214 0))(
  ( (FloatLiteralValue!428 (text!1943 List!1042)) (TokenValueExt!213 (__x!1523 Int)) (Broken!1070 (value!9257 List!1042)) (Object!219) (End!214) (Def!214) (Underscore!214) (Match!214) (Else!214) (Error!214) (Case!214) (If!214) (Extends!214) (Abstract!214) (Class!214) (Val!214) (DelimiterValue!428 (del!274 List!1042)) (KeywordValue!220 (value!9258 List!1042)) (CommentValue!428 (value!9259 List!1042)) (WhitespaceValue!428 (value!9260 List!1042)) (IndentationValue!214 (value!9261 List!1042)) (String!1463) (Int32!214) (Broken!1071 (value!9262 List!1042)) (Boolean!215) (Unit!588) (OperatorValue!217 (op!274 List!1042)) (IdentifierValue!428 (value!9263 List!1042)) (IdentifierValue!429 (value!9264 List!1042)) (WhitespaceValue!429 (value!9265 List!1042)) (True!428) (False!428) (Broken!1072 (value!9266 List!1042)) (Broken!1073 (value!9267 List!1042)) (True!429) (RightBrace!214) (RightBracket!214) (Colon!214) (Null!214) (Comma!214) (LeftBracket!214) (False!429) (LeftBrace!214) (ImaginaryLiteralValue!214 (text!1944 List!1042)) (StringLiteralValue!642 (value!9268 List!1042)) (EOFValue!214 (value!9269 List!1042)) (IdentValue!214 (value!9270 List!1042)) (DelimiterValue!429 (value!9271 List!1042)) (DedentValue!214 (value!9272 List!1042)) (NewLineValue!214 (value!9273 List!1042)) (IntegerValue!642 (value!9274 (_ BitVec 32)) (text!1945 List!1042)) (IntegerValue!643 (value!9275 Int) (text!1946 List!1042)) (Times!214) (Or!214) (Equal!214) (Minus!214) (Broken!1074 (value!9276 List!1042)) (And!214) (Div!214) (LessEqual!214) (Mod!214) (Concat!506) (Not!214) (Plus!214) (SpaceValue!214 (value!9277 List!1042)) (IntegerValue!644 (value!9278 Int) (text!1947 List!1042)) (StringLiteralValue!643 (text!1948 List!1042)) (FloatLiteralValue!429 (text!1949 List!1042)) (BytesLiteralValue!214 (value!9279 List!1042)) (CommentValue!429 (value!9280 List!1042)) (StringLiteralValue!644 (value!9281 List!1042)) (ErrorTokenValue!214 (msg!275 List!1042)) )
))
(declare-datatypes ((C!1506 0))(
  ( (C!1507 (val!360 Int)) )
))
(declare-datatypes ((List!1043 0))(
  ( (Nil!1037) (Cons!1037 (h!6434 C!1506) (t!17254 List!1043)) )
))
(declare-datatypes ((IArray!505 0))(
  ( (IArray!506 (innerList!310 List!1043)) )
))
(declare-datatypes ((Conc!252 0))(
  ( (Node!252 (left!777 Conc!252) (right!1107 Conc!252) (csize!734 Int) (cheight!463 Int)) (Leaf!500 (xs!2831 IArray!505) (csize!735 Int)) (Empty!252) )
))
(declare-datatypes ((BalanceConc!508 0))(
  ( (BalanceConc!509 (c!16660 Conc!252)) )
))
(declare-datatypes ((Regex!292 0))(
  ( (ElementMatch!292 (c!16661 C!1506)) (Concat!507 (regOne!1096 Regex!292) (regTwo!1096 Regex!292)) (EmptyExpr!292) (Star!292 (reg!621 Regex!292)) (EmptyLang!292) (Union!292 (regOne!1097 Regex!292) (regTwo!1097 Regex!292)) )
))
(declare-datatypes ((String!1464 0))(
  ( (String!1465 (value!9282 String)) )
))
(declare-datatypes ((TokenValueInjection!252 0))(
  ( (TokenValueInjection!253 (toValue!703 Int) (toChars!562 Int)) )
))
(declare-datatypes ((Rule!248 0))(
  ( (Rule!249 (regex!224 Regex!292) (tag!402 String!1464) (isSeparator!224 Bool) (transformation!224 TokenValueInjection!252)) )
))
(declare-datatypes ((List!1044 0))(
  ( (Nil!1038) (Cons!1038 (h!6435 Rule!248) (t!17255 List!1044)) )
))
(declare-fun rules!1069 () List!1044)

(declare-fun inv!1362 (String!1464) Bool)

(declare-fun inv!1365 (TokenValueInjection!252) Bool)

(assert (=> b!51153 (= e!30028 (and tp!33674 (inv!1362 (tag!402 (h!6435 rules!1069))) (inv!1365 (transformation!224 (h!6435 rules!1069))) e!30029))))

(assert (=> b!51154 (= e!30029 (and tp!33677 tp!33676))))

(declare-fun b!51155 () Bool)

(declare-fun res!33653 () Bool)

(declare-fun e!30034 () Bool)

(assert (=> b!51155 (=> (not res!33653) (not e!30034))))

(declare-datatypes ((LexerInterface!116 0))(
  ( (LexerInterfaceExt!113 (__x!1524 Int)) (Lexer!114) )
))
(declare-fun thiss!11059 () LexerInterface!116)

(declare-fun rulesInvariant!110 (LexerInterface!116 List!1044) Bool)

(assert (=> b!51155 (= res!33653 (rulesInvariant!110 thiss!11059 rules!1069))))

(declare-fun b!51156 () Bool)

(declare-datatypes ((Token!212 0))(
  ( (Token!213 (value!9283 TokenValue!214) (rule!699 Rule!248) (size!957 Int) (originalCharacters!277 List!1043)) )
))
(declare-datatypes ((List!1045 0))(
  ( (Nil!1039) (Cons!1039 (h!6436 Token!212) (t!17256 List!1045)) )
))
(declare-datatypes ((IArray!507 0))(
  ( (IArray!508 (innerList!311 List!1045)) )
))
(declare-datatypes ((Conc!253 0))(
  ( (Node!253 (left!778 Conc!253) (right!1108 Conc!253) (csize!736 Int) (cheight!464 Int)) (Leaf!501 (xs!2832 IArray!507) (csize!737 Int)) (Empty!253) )
))
(declare-datatypes ((BalanceConc!510 0))(
  ( (BalanceConc!511 (c!16662 Conc!253)) )
))
(declare-fun v!6227 () BalanceConc!510)

(declare-fun from!821 () Int)

(declare-fun contains!110 (BalanceConc!510 Token!212) Bool)

(declare-fun apply!94 (BalanceConc!510 Int) Token!212)

(assert (=> b!51156 (= e!30034 (not (contains!110 v!6227 (apply!94 v!6227 from!821))))))

(declare-fun lt!8984 () List!1045)

(declare-fun lt!8977 () List!1045)

(declare-fun tail!64 (List!1045) List!1045)

(declare-fun drop!39 (List!1045 Int) List!1045)

(assert (=> b!51156 (= (tail!64 lt!8984) (drop!39 lt!8977 (+ 2 from!821)))))

(declare-datatypes ((Unit!589 0))(
  ( (Unit!590) )
))
(declare-fun lt!8981 () Unit!589)

(declare-fun lemmaDropTail!35 (List!1045 Int) Unit!589)

(assert (=> b!51156 (= lt!8981 (lemmaDropTail!35 lt!8977 (+ 1 from!821)))))

(declare-fun lt!8980 () List!1045)

(assert (=> b!51156 (= (tail!64 lt!8980) lt!8984)))

(declare-fun lt!8979 () Unit!589)

(assert (=> b!51156 (= lt!8979 (lemmaDropTail!35 lt!8977 from!821))))

(declare-fun head!379 (List!1045) Token!212)

(declare-fun apply!95 (List!1045 Int) Token!212)

(assert (=> b!51156 (= (head!379 lt!8984) (apply!95 lt!8977 (+ 1 from!821)))))

(assert (=> b!51156 (= lt!8984 (drop!39 lt!8977 (+ 1 from!821)))))

(declare-fun lt!8982 () Unit!589)

(declare-fun lemmaDropApply!39 (List!1045 Int) Unit!589)

(assert (=> b!51156 (= lt!8982 (lemmaDropApply!39 lt!8977 (+ 1 from!821)))))

(assert (=> b!51156 (= (head!379 lt!8980) (apply!95 lt!8977 from!821))))

(assert (=> b!51156 (= lt!8980 (drop!39 lt!8977 from!821))))

(declare-fun lt!8983 () Unit!589)

(assert (=> b!51156 (= lt!8983 (lemmaDropApply!39 lt!8977 from!821))))

(declare-fun list!263 (BalanceConc!510) List!1045)

(assert (=> b!51156 (= lt!8977 (list!263 v!6227))))

(declare-fun b!51157 () Bool)

(declare-fun e!30030 () Bool)

(declare-fun tp!33675 () Bool)

(assert (=> b!51157 (= e!30030 (and e!30028 tp!33675))))

(declare-fun b!51158 () Bool)

(declare-fun e!30033 () Bool)

(declare-fun tp!33673 () Bool)

(declare-fun inv!1366 (Conc!253) Bool)

(assert (=> b!51158 (= e!30033 (and (inv!1366 (c!16662 v!6227)) tp!33673))))

(declare-fun res!33652 () Bool)

(declare-fun e!30032 () Bool)

(assert (=> start!3664 (=> (not res!33652) (not e!30032))))

(assert (=> start!3664 (= res!33652 (and (is-Lexer!114 thiss!11059) (>= from!821 0)))))

(assert (=> start!3664 e!30032))

(assert (=> start!3664 true))

(declare-fun inv!1367 (BalanceConc!510) Bool)

(assert (=> start!3664 (and (inv!1367 v!6227) e!30033)))

(assert (=> start!3664 e!30030))

(declare-fun b!51159 () Bool)

(declare-fun res!33655 () Bool)

(assert (=> b!51159 (=> (not res!33655) (not e!30034))))

(declare-fun rulesProduceEachTokenIndividually!54 (LexerInterface!116 List!1044 BalanceConc!510) Bool)

(assert (=> b!51159 (= res!33655 (rulesProduceEachTokenIndividually!54 thiss!11059 rules!1069 v!6227))))

(declare-fun b!51160 () Bool)

(declare-fun res!33651 () Bool)

(assert (=> b!51160 (=> (not res!33651) (not e!30034))))

(declare-fun lt!8978 () Int)

(assert (=> b!51160 (= res!33651 (< from!821 (- lt!8978 1)))))

(declare-fun b!51161 () Bool)

(assert (=> b!51161 (= e!30032 e!30034)))

(declare-fun res!33656 () Bool)

(assert (=> b!51161 (=> (not res!33656) (not e!30034))))

(assert (=> b!51161 (= res!33656 (<= from!821 lt!8978))))

(declare-fun size!958 (BalanceConc!510) Int)

(assert (=> b!51161 (= lt!8978 (size!958 v!6227))))

(declare-fun b!51162 () Bool)

(declare-fun res!33654 () Bool)

(assert (=> b!51162 (=> (not res!33654) (not e!30034))))

(declare-fun isEmpty!210 (List!1044) Bool)

(assert (=> b!51162 (= res!33654 (not (isEmpty!210 rules!1069)))))

(assert (= (and start!3664 res!33652) b!51161))

(assert (= (and b!51161 res!33656) b!51162))

(assert (= (and b!51162 res!33654) b!51155))

(assert (= (and b!51155 res!33653) b!51159))

(assert (= (and b!51159 res!33655) b!51160))

(assert (= (and b!51160 res!33651) b!51156))

(assert (= start!3664 b!51158))

(assert (= b!51153 b!51154))

(assert (= b!51157 b!51153))

(assert (= (and start!3664 (is-Cons!1038 rules!1069)) b!51157))

(declare-fun m!25566 () Bool)

(assert (=> start!3664 m!25566))

(declare-fun m!25568 () Bool)

(assert (=> b!51158 m!25568))

(declare-fun m!25570 () Bool)

(assert (=> b!51153 m!25570))

(declare-fun m!25572 () Bool)

(assert (=> b!51153 m!25572))

(declare-fun m!25574 () Bool)

(assert (=> b!51159 m!25574))

(declare-fun m!25576 () Bool)

(assert (=> b!51162 m!25576))

(declare-fun m!25578 () Bool)

(assert (=> b!51161 m!25578))

(declare-fun m!25580 () Bool)

(assert (=> b!51155 m!25580))

(declare-fun m!25582 () Bool)

(assert (=> b!51156 m!25582))

(declare-fun m!25584 () Bool)

(assert (=> b!51156 m!25584))

(declare-fun m!25586 () Bool)

(assert (=> b!51156 m!25586))

(declare-fun m!25588 () Bool)

(assert (=> b!51156 m!25588))

(declare-fun m!25590 () Bool)

(assert (=> b!51156 m!25590))

(declare-fun m!25592 () Bool)

(assert (=> b!51156 m!25592))

(declare-fun m!25594 () Bool)

(assert (=> b!51156 m!25594))

(declare-fun m!25596 () Bool)

(assert (=> b!51156 m!25596))

(declare-fun m!25598 () Bool)

(assert (=> b!51156 m!25598))

(assert (=> b!51156 m!25588))

(declare-fun m!25600 () Bool)

(assert (=> b!51156 m!25600))

(declare-fun m!25602 () Bool)

(assert (=> b!51156 m!25602))

(declare-fun m!25604 () Bool)

(assert (=> b!51156 m!25604))

(declare-fun m!25606 () Bool)

(assert (=> b!51156 m!25606))

(declare-fun m!25608 () Bool)

(assert (=> b!51156 m!25608))

(declare-fun m!25610 () Bool)

(assert (=> b!51156 m!25610))

(declare-fun m!25612 () Bool)

(assert (=> b!51156 m!25612))

(push 1)

(assert (not b!51162))

(assert (not b!51156))

(assert (not b_next!1617))

(assert (not start!3664))

(assert (not b!51161))

(assert b_and!1667)

(assert (not b_next!1619))

(assert (not b!51159))

(assert (not b!51158))

(assert (not b!51155))

(assert (not b!51153))

(assert b_and!1669)

(assert (not b!51157))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1669)

(assert b_and!1667)

(assert (not b_next!1617))

(assert (not b_next!1619))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6056 () Bool)

(assert (=> d!6056 (= (inv!1362 (tag!402 (h!6435 rules!1069))) (= (mod (str.len (value!9282 (tag!402 (h!6435 rules!1069)))) 2) 0))))

(assert (=> b!51153 d!6056))

(declare-fun d!6058 () Bool)

(declare-fun res!33679 () Bool)

(declare-fun e!30058 () Bool)

(assert (=> d!6058 (=> (not res!33679) (not e!30058))))

(declare-fun semiInverseModEq!15 (Int Int) Bool)

(assert (=> d!6058 (= res!33679 (semiInverseModEq!15 (toChars!562 (transformation!224 (h!6435 rules!1069))) (toValue!703 (transformation!224 (h!6435 rules!1069)))))))

(assert (=> d!6058 (= (inv!1365 (transformation!224 (h!6435 rules!1069))) e!30058)))

(declare-fun b!51195 () Bool)

(declare-fun equivClasses!11 (Int Int) Bool)

(assert (=> b!51195 (= e!30058 (equivClasses!11 (toChars!562 (transformation!224 (h!6435 rules!1069))) (toValue!703 (transformation!224 (h!6435 rules!1069)))))))

(assert (= (and d!6058 res!33679) b!51195))

(declare-fun m!25662 () Bool)

(assert (=> d!6058 m!25662))

(declare-fun m!25664 () Bool)

(assert (=> b!51195 m!25664))

(assert (=> b!51153 d!6058))

(declare-fun d!6060 () Bool)

(declare-fun c!16668 () Bool)

(assert (=> d!6060 (= c!16668 (is-Node!253 (c!16662 v!6227)))))

(declare-fun e!30063 () Bool)

(assert (=> d!6060 (= (inv!1366 (c!16662 v!6227)) e!30063)))

(declare-fun b!51202 () Bool)

(declare-fun inv!1371 (Conc!253) Bool)

(assert (=> b!51202 (= e!30063 (inv!1371 (c!16662 v!6227)))))

(declare-fun b!51203 () Bool)

(declare-fun e!30064 () Bool)

(assert (=> b!51203 (= e!30063 e!30064)))

(declare-fun res!33682 () Bool)

(assert (=> b!51203 (= res!33682 (not (is-Leaf!501 (c!16662 v!6227))))))

(assert (=> b!51203 (=> res!33682 e!30064)))

(declare-fun b!51204 () Bool)

(declare-fun inv!1372 (Conc!253) Bool)

(assert (=> b!51204 (= e!30064 (inv!1372 (c!16662 v!6227)))))

(assert (= (and d!6060 c!16668) b!51202))

(assert (= (and d!6060 (not c!16668)) b!51203))

(assert (= (and b!51203 (not res!33682)) b!51204))

(declare-fun m!25666 () Bool)

(assert (=> b!51202 m!25666))

(declare-fun m!25668 () Bool)

(assert (=> b!51204 m!25668))

(assert (=> b!51158 d!6060))

(declare-fun b!51298 () Bool)

(declare-fun e!30129 () Bool)

(assert (=> b!51298 (= e!30129 true)))

(declare-fun b!51297 () Bool)

(declare-fun e!30128 () Bool)

(assert (=> b!51297 (= e!30128 e!30129)))

(declare-fun b!51296 () Bool)

(declare-fun e!30127 () Bool)

(assert (=> b!51296 (= e!30127 e!30128)))

(declare-fun d!6062 () Bool)

(assert (=> d!6062 e!30127))

(assert (= b!51297 b!51298))

(assert (= b!51296 b!51297))

(assert (= (and d!6062 (is-Cons!1038 rules!1069)) b!51296))

(declare-fun order!265 () Int)

(declare-fun lambda!1024 () Int)

(declare-fun order!267 () Int)

(declare-fun dynLambda!168 (Int Int) Int)

(declare-fun dynLambda!169 (Int Int) Int)

(assert (=> b!51298 (< (dynLambda!168 order!265 (toValue!703 (transformation!224 (h!6435 rules!1069)))) (dynLambda!169 order!267 lambda!1024))))

(declare-fun order!269 () Int)

(declare-fun dynLambda!170 (Int Int) Int)

(assert (=> b!51298 (< (dynLambda!170 order!269 (toChars!562 (transformation!224 (h!6435 rules!1069)))) (dynLambda!169 order!267 lambda!1024))))

(assert (=> d!6062 true))

(declare-fun e!30120 () Bool)

(assert (=> d!6062 e!30120))

(declare-fun res!33713 () Bool)

(assert (=> d!6062 (=> (not res!33713) (not e!30120))))

(declare-fun lt!9037 () Bool)

(declare-fun forall!113 (List!1045 Int) Bool)

(assert (=> d!6062 (= res!33713 (= lt!9037 (forall!113 (list!263 v!6227) lambda!1024)))))

(declare-fun forall!114 (BalanceConc!510 Int) Bool)

(assert (=> d!6062 (= lt!9037 (forall!114 v!6227 lambda!1024))))

(assert (=> d!6062 (not (isEmpty!210 rules!1069))))

(assert (=> d!6062 (= (rulesProduceEachTokenIndividually!54 thiss!11059 rules!1069 v!6227) lt!9037)))

(declare-fun b!51287 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!33 (LexerInterface!116 List!1044 List!1045) Bool)

(assert (=> b!51287 (= e!30120 (= lt!9037 (rulesProduceEachTokenIndividuallyList!33 thiss!11059 rules!1069 (list!263 v!6227))))))

(assert (= (and d!6062 res!33713) b!51287))

(assert (=> d!6062 m!25608))

(assert (=> d!6062 m!25608))

(declare-fun m!25748 () Bool)

(assert (=> d!6062 m!25748))

(declare-fun m!25750 () Bool)

(assert (=> d!6062 m!25750))

(assert (=> d!6062 m!25576))

(assert (=> b!51287 m!25608))

(assert (=> b!51287 m!25608))

(declare-fun m!25752 () Bool)

(assert (=> b!51287 m!25752))

(assert (=> b!51159 d!6062))

(declare-fun d!6108 () Bool)

(declare-fun lt!9040 () Int)

(declare-fun size!961 (List!1045) Int)

(assert (=> d!6108 (= lt!9040 (size!961 (list!263 v!6227)))))

(declare-fun size!962 (Conc!253) Int)

(assert (=> d!6108 (= lt!9040 (size!962 (c!16662 v!6227)))))

(assert (=> d!6108 (= (size!958 v!6227) lt!9040)))

(declare-fun bs!6660 () Bool)

(assert (= bs!6660 d!6108))

(assert (=> bs!6660 m!25608))

(assert (=> bs!6660 m!25608))

(declare-fun m!25754 () Bool)

(assert (=> bs!6660 m!25754))

(declare-fun m!25756 () Bool)

(assert (=> bs!6660 m!25756))

(assert (=> b!51161 d!6108))

(declare-fun d!6110 () Bool)

(declare-fun isBalanced!32 (Conc!253) Bool)

(assert (=> d!6110 (= (inv!1367 v!6227) (isBalanced!32 (c!16662 v!6227)))))

(declare-fun bs!6661 () Bool)

(assert (= bs!6661 d!6110))

(declare-fun m!25758 () Bool)

(assert (=> bs!6661 m!25758))

(assert (=> start!3664 d!6110))

(declare-fun d!6112 () Bool)

(declare-fun res!33716 () Bool)

(declare-fun e!30132 () Bool)

(assert (=> d!6112 (=> (not res!33716) (not e!30132))))

(declare-fun rulesValid!24 (LexerInterface!116 List!1044) Bool)

(assert (=> d!6112 (= res!33716 (rulesValid!24 thiss!11059 rules!1069))))

(assert (=> d!6112 (= (rulesInvariant!110 thiss!11059 rules!1069) e!30132)))

(declare-fun b!51303 () Bool)

(declare-datatypes ((List!1050 0))(
  ( (Nil!1044) (Cons!1044 (h!6441 String!1464) (t!17267 List!1050)) )
))
(declare-fun noDuplicateTag!24 (LexerInterface!116 List!1044 List!1050) Bool)

(assert (=> b!51303 (= e!30132 (noDuplicateTag!24 thiss!11059 rules!1069 Nil!1044))))

(assert (= (and d!6112 res!33716) b!51303))

(declare-fun m!25760 () Bool)

(assert (=> d!6112 m!25760))

(declare-fun m!25762 () Bool)

(assert (=> b!51303 m!25762))

(assert (=> b!51155 d!6112))

(declare-fun d!6114 () Bool)

(assert (=> d!6114 (= (isEmpty!210 rules!1069) (is-Nil!1038 rules!1069))))

(assert (=> b!51162 d!6114))

(declare-fun d!6116 () Bool)

(assert (=> d!6116 (= (tail!64 (drop!39 lt!8977 (+ 1 from!821))) (drop!39 lt!8977 (+ 1 from!821 1)))))

(declare-fun lt!9045 () Unit!589)

(declare-fun choose!1178 (List!1045 Int) Unit!589)

(assert (=> d!6116 (= lt!9045 (choose!1178 lt!8977 (+ 1 from!821)))))

(declare-fun e!30135 () Bool)

(assert (=> d!6116 e!30135))

(declare-fun res!33719 () Bool)

(assert (=> d!6116 (=> (not res!33719) (not e!30135))))

(assert (=> d!6116 (= res!33719 (>= (+ 1 from!821) 0))))

(assert (=> d!6116 (= (lemmaDropTail!35 lt!8977 (+ 1 from!821)) lt!9045)))

(declare-fun b!51306 () Bool)

(assert (=> b!51306 (= e!30135 (< (+ 1 from!821) (size!961 lt!8977)))))

(assert (= (and d!6116 res!33719) b!51306))

(assert (=> d!6116 m!25594))

(assert (=> d!6116 m!25594))

(declare-fun m!25764 () Bool)

(assert (=> d!6116 m!25764))

(declare-fun m!25766 () Bool)

(assert (=> d!6116 m!25766))

(declare-fun m!25768 () Bool)

(assert (=> d!6116 m!25768))

(declare-fun m!25770 () Bool)

(assert (=> b!51306 m!25770))

(assert (=> b!51156 d!6116))

(declare-fun d!6118 () Bool)

(declare-fun lt!9048 () Token!212)

(assert (=> d!6118 (= lt!9048 (apply!95 (list!263 v!6227) from!821))))

(declare-fun apply!98 (Conc!253 Int) Token!212)

(assert (=> d!6118 (= lt!9048 (apply!98 (c!16662 v!6227) from!821))))

(declare-fun e!30138 () Bool)

(assert (=> d!6118 e!30138))

(declare-fun res!33722 () Bool)

(assert (=> d!6118 (=> (not res!33722) (not e!30138))))

(assert (=> d!6118 (= res!33722 (<= 0 from!821))))

(assert (=> d!6118 (= (apply!94 v!6227 from!821) lt!9048)))

(declare-fun b!51309 () Bool)

(assert (=> b!51309 (= e!30138 (< from!821 (size!958 v!6227)))))

(assert (= (and d!6118 res!33722) b!51309))

(assert (=> d!6118 m!25608))

(assert (=> d!6118 m!25608))

(declare-fun m!25772 () Bool)

(assert (=> d!6118 m!25772))

(declare-fun m!25774 () Bool)

(assert (=> d!6118 m!25774))

(assert (=> b!51309 m!25578))

(assert (=> b!51156 d!6118))

(declare-fun b!51328 () Bool)

(declare-fun e!30151 () List!1045)

(declare-fun e!30152 () List!1045)

(assert (=> b!51328 (= e!30151 e!30152)))

(declare-fun c!16706 () Bool)

(assert (=> b!51328 (= c!16706 (<= from!821 0))))

(declare-fun b!51329 () Bool)

(declare-fun e!30149 () Int)

(assert (=> b!51329 (= e!30149 0)))

(declare-fun b!51330 () Bool)

(declare-fun e!30150 () Int)

(declare-fun call!3344 () Int)

(assert (=> b!51330 (= e!30150 call!3344)))

(declare-fun b!51331 () Bool)

(assert (=> b!51331 (= e!30149 (- call!3344 from!821))))

(declare-fun d!6120 () Bool)

(declare-fun e!30153 () Bool)

(assert (=> d!6120 e!30153))

(declare-fun res!33725 () Bool)

(assert (=> d!6120 (=> (not res!33725) (not e!30153))))

(declare-fun lt!9051 () List!1045)

(declare-fun content!25 (List!1045) (Set Token!212))

(assert (=> d!6120 (= res!33725 (set.subset (content!25 lt!9051) (content!25 lt!8977)))))

(assert (=> d!6120 (= lt!9051 e!30151)))

(declare-fun c!16705 () Bool)

(assert (=> d!6120 (= c!16705 (is-Nil!1039 lt!8977))))

(assert (=> d!6120 (= (drop!39 lt!8977 from!821) lt!9051)))

(declare-fun b!51332 () Bool)

(assert (=> b!51332 (= e!30152 (drop!39 (t!17256 lt!8977) (- from!821 1)))))

(declare-fun b!51333 () Bool)

(assert (=> b!51333 (= e!30152 lt!8977)))

(declare-fun bm!3339 () Bool)

(assert (=> bm!3339 (= call!3344 (size!961 lt!8977))))

(declare-fun b!51334 () Bool)

(assert (=> b!51334 (= e!30153 (= (size!961 lt!9051) e!30150))))

(declare-fun c!16704 () Bool)

(assert (=> b!51334 (= c!16704 (<= from!821 0))))

(declare-fun b!51335 () Bool)

(assert (=> b!51335 (= e!30150 e!30149)))

(declare-fun c!16707 () Bool)

(assert (=> b!51335 (= c!16707 (>= from!821 call!3344))))

(declare-fun b!51336 () Bool)

(assert (=> b!51336 (= e!30151 Nil!1039)))

(assert (= (and d!6120 c!16705) b!51336))

(assert (= (and d!6120 (not c!16705)) b!51328))

(assert (= (and b!51328 c!16706) b!51333))

(assert (= (and b!51328 (not c!16706)) b!51332))

(assert (= (and d!6120 res!33725) b!51334))

(assert (= (and b!51334 c!16704) b!51330))

(assert (= (and b!51334 (not c!16704)) b!51335))

(assert (= (and b!51335 c!16707) b!51329))

(assert (= (and b!51335 (not c!16707)) b!51331))

(assert (= (or b!51330 b!51335 b!51331) bm!3339))

(declare-fun m!25776 () Bool)

(assert (=> d!6120 m!25776))

(declare-fun m!25778 () Bool)

(assert (=> d!6120 m!25778))

(declare-fun m!25780 () Bool)

(assert (=> b!51332 m!25780))

(assert (=> bm!3339 m!25770))

(declare-fun m!25782 () Bool)

(assert (=> b!51334 m!25782))

(assert (=> b!51156 d!6120))

(declare-fun d!6122 () Bool)

(declare-fun list!265 (Conc!253) List!1045)

(assert (=> d!6122 (= (list!263 v!6227) (list!265 (c!16662 v!6227)))))

(declare-fun bs!6662 () Bool)

(assert (= bs!6662 d!6122))

(declare-fun m!25784 () Bool)

(assert (=> bs!6662 m!25784))

(assert (=> b!51156 d!6122))

(declare-fun d!6124 () Bool)

(declare-fun lt!9054 () Token!212)

(declare-fun contains!112 (List!1045 Token!212) Bool)

(assert (=> d!6124 (contains!112 lt!8977 lt!9054)))

(declare-fun e!30158 () Token!212)

(assert (=> d!6124 (= lt!9054 e!30158)))

(declare-fun c!16710 () Bool)

(assert (=> d!6124 (= c!16710 (= from!821 0))))

(declare-fun e!30159 () Bool)

(assert (=> d!6124 e!30159))

(declare-fun res!33728 () Bool)

(assert (=> d!6124 (=> (not res!33728) (not e!30159))))

(assert (=> d!6124 (= res!33728 (<= 0 from!821))))

(assert (=> d!6124 (= (apply!95 lt!8977 from!821) lt!9054)))

(declare-fun b!51343 () Bool)

(assert (=> b!51343 (= e!30159 (< from!821 (size!961 lt!8977)))))

(declare-fun b!51344 () Bool)

(assert (=> b!51344 (= e!30158 (head!379 lt!8977))))

(declare-fun b!51345 () Bool)

(assert (=> b!51345 (= e!30158 (apply!95 (tail!64 lt!8977) (- from!821 1)))))

(assert (= (and d!6124 res!33728) b!51343))

(assert (= (and d!6124 c!16710) b!51344))

(assert (= (and d!6124 (not c!16710)) b!51345))

(declare-fun m!25786 () Bool)

(assert (=> d!6124 m!25786))

(assert (=> b!51343 m!25770))

(declare-fun m!25788 () Bool)

(assert (=> b!51344 m!25788))

(declare-fun m!25790 () Bool)

(assert (=> b!51345 m!25790))

(assert (=> b!51345 m!25790))

(declare-fun m!25792 () Bool)

(assert (=> b!51345 m!25792))

(assert (=> b!51156 d!6124))

(declare-fun d!6126 () Bool)

(assert (=> d!6126 (= (tail!64 lt!8984) (t!17256 lt!8984))))

(assert (=> b!51156 d!6126))

(declare-fun b!51346 () Bool)

(declare-fun e!30162 () List!1045)

(declare-fun e!30163 () List!1045)

(assert (=> b!51346 (= e!30162 e!30163)))

(declare-fun c!16713 () Bool)

(assert (=> b!51346 (= c!16713 (<= (+ 1 from!821) 0))))

(declare-fun b!51347 () Bool)

(declare-fun e!30160 () Int)

(assert (=> b!51347 (= e!30160 0)))

(declare-fun b!51348 () Bool)

(declare-fun e!30161 () Int)

(declare-fun call!3345 () Int)

(assert (=> b!51348 (= e!30161 call!3345)))

(declare-fun b!51349 () Bool)

(assert (=> b!51349 (= e!30160 (- call!3345 (+ 1 from!821)))))

(declare-fun d!6128 () Bool)

(declare-fun e!30164 () Bool)

(assert (=> d!6128 e!30164))

(declare-fun res!33729 () Bool)

(assert (=> d!6128 (=> (not res!33729) (not e!30164))))

(declare-fun lt!9055 () List!1045)

(assert (=> d!6128 (= res!33729 (set.subset (content!25 lt!9055) (content!25 lt!8977)))))

(assert (=> d!6128 (= lt!9055 e!30162)))

(declare-fun c!16712 () Bool)

(assert (=> d!6128 (= c!16712 (is-Nil!1039 lt!8977))))

(assert (=> d!6128 (= (drop!39 lt!8977 (+ 1 from!821)) lt!9055)))

(declare-fun b!51350 () Bool)

(assert (=> b!51350 (= e!30163 (drop!39 (t!17256 lt!8977) (- (+ 1 from!821) 1)))))

(declare-fun b!51351 () Bool)

(assert (=> b!51351 (= e!30163 lt!8977)))

(declare-fun bm!3340 () Bool)

(assert (=> bm!3340 (= call!3345 (size!961 lt!8977))))

(declare-fun b!51352 () Bool)

(assert (=> b!51352 (= e!30164 (= (size!961 lt!9055) e!30161))))

(declare-fun c!16711 () Bool)

(assert (=> b!51352 (= c!16711 (<= (+ 1 from!821) 0))))

(declare-fun b!51353 () Bool)

(assert (=> b!51353 (= e!30161 e!30160)))

(declare-fun c!16714 () Bool)

(assert (=> b!51353 (= c!16714 (>= (+ 1 from!821) call!3345))))

(declare-fun b!51354 () Bool)

(assert (=> b!51354 (= e!30162 Nil!1039)))

(assert (= (and d!6128 c!16712) b!51354))

(assert (= (and d!6128 (not c!16712)) b!51346))

(assert (= (and b!51346 c!16713) b!51351))

(assert (= (and b!51346 (not c!16713)) b!51350))

(assert (= (and d!6128 res!33729) b!51352))

(assert (= (and b!51352 c!16711) b!51348))

(assert (= (and b!51352 (not c!16711)) b!51353))

(assert (= (and b!51353 c!16714) b!51347))

(assert (= (and b!51353 (not c!16714)) b!51349))

(assert (= (or b!51348 b!51353 b!51349) bm!3340))

(declare-fun m!25794 () Bool)

(assert (=> d!6128 m!25794))

(assert (=> d!6128 m!25778))

(declare-fun m!25796 () Bool)

(assert (=> b!51350 m!25796))

(assert (=> bm!3340 m!25770))

(declare-fun m!25798 () Bool)

(assert (=> b!51352 m!25798))

(assert (=> b!51156 d!6128))

(declare-fun b!51355 () Bool)

(declare-fun e!30167 () List!1045)

(declare-fun e!30168 () List!1045)

(assert (=> b!51355 (= e!30167 e!30168)))

(declare-fun c!16717 () Bool)

(assert (=> b!51355 (= c!16717 (<= (+ 2 from!821) 0))))

(declare-fun b!51356 () Bool)

(declare-fun e!30165 () Int)

(assert (=> b!51356 (= e!30165 0)))

(declare-fun b!51357 () Bool)

(declare-fun e!30166 () Int)

(declare-fun call!3346 () Int)

(assert (=> b!51357 (= e!30166 call!3346)))

(declare-fun b!51358 () Bool)

(assert (=> b!51358 (= e!30165 (- call!3346 (+ 2 from!821)))))

(declare-fun d!6130 () Bool)

(declare-fun e!30169 () Bool)

(assert (=> d!6130 e!30169))

(declare-fun res!33730 () Bool)

(assert (=> d!6130 (=> (not res!33730) (not e!30169))))

(declare-fun lt!9056 () List!1045)

(assert (=> d!6130 (= res!33730 (set.subset (content!25 lt!9056) (content!25 lt!8977)))))

(assert (=> d!6130 (= lt!9056 e!30167)))

(declare-fun c!16716 () Bool)

(assert (=> d!6130 (= c!16716 (is-Nil!1039 lt!8977))))

(assert (=> d!6130 (= (drop!39 lt!8977 (+ 2 from!821)) lt!9056)))

(declare-fun b!51359 () Bool)

(assert (=> b!51359 (= e!30168 (drop!39 (t!17256 lt!8977) (- (+ 2 from!821) 1)))))

(declare-fun b!51360 () Bool)

(assert (=> b!51360 (= e!30168 lt!8977)))

(declare-fun bm!3341 () Bool)

(assert (=> bm!3341 (= call!3346 (size!961 lt!8977))))

(declare-fun b!51361 () Bool)

(assert (=> b!51361 (= e!30169 (= (size!961 lt!9056) e!30166))))

(declare-fun c!16715 () Bool)

(assert (=> b!51361 (= c!16715 (<= (+ 2 from!821) 0))))

(declare-fun b!51362 () Bool)

(assert (=> b!51362 (= e!30166 e!30165)))

(declare-fun c!16718 () Bool)

(assert (=> b!51362 (= c!16718 (>= (+ 2 from!821) call!3346))))

(declare-fun b!51363 () Bool)

(assert (=> b!51363 (= e!30167 Nil!1039)))

(assert (= (and d!6130 c!16716) b!51363))

(assert (= (and d!6130 (not c!16716)) b!51355))

(assert (= (and b!51355 c!16717) b!51360))

(assert (= (and b!51355 (not c!16717)) b!51359))

(assert (= (and d!6130 res!33730) b!51361))

(assert (= (and b!51361 c!16715) b!51357))

(assert (= (and b!51361 (not c!16715)) b!51362))

(assert (= (and b!51362 c!16718) b!51356))

(assert (= (and b!51362 (not c!16718)) b!51358))

(assert (= (or b!51357 b!51362 b!51358) bm!3341))

(declare-fun m!25800 () Bool)

(assert (=> d!6130 m!25800))

(assert (=> d!6130 m!25778))

(declare-fun m!25802 () Bool)

(assert (=> b!51359 m!25802))

(assert (=> bm!3341 m!25770))

(declare-fun m!25804 () Bool)

(assert (=> b!51361 m!25804))

(assert (=> b!51156 d!6130))

(declare-fun d!6132 () Bool)

(assert (=> d!6132 (= (head!379 lt!8980) (h!6436 lt!8980))))

(assert (=> b!51156 d!6132))

(declare-fun d!6134 () Bool)

(assert (=> d!6134 (= (head!379 (drop!39 lt!8977 from!821)) (apply!95 lt!8977 from!821))))

(declare-fun lt!9059 () Unit!589)

(declare-fun choose!1179 (List!1045 Int) Unit!589)

(assert (=> d!6134 (= lt!9059 (choose!1179 lt!8977 from!821))))

(declare-fun e!30172 () Bool)

(assert (=> d!6134 e!30172))

(declare-fun res!33733 () Bool)

(assert (=> d!6134 (=> (not res!33733) (not e!30172))))

(assert (=> d!6134 (= res!33733 (>= from!821 0))))

(assert (=> d!6134 (= (lemmaDropApply!39 lt!8977 from!821) lt!9059)))

(declare-fun b!51366 () Bool)

(assert (=> b!51366 (= e!30172 (< from!821 (size!961 lt!8977)))))

(assert (= (and d!6134 res!33733) b!51366))

(assert (=> d!6134 m!25584))

(assert (=> d!6134 m!25584))

(declare-fun m!25806 () Bool)

(assert (=> d!6134 m!25806))

(assert (=> d!6134 m!25604))

(declare-fun m!25808 () Bool)

(assert (=> d!6134 m!25808))

(assert (=> b!51366 m!25770))

(assert (=> b!51156 d!6134))

(declare-fun d!6136 () Bool)

(declare-fun lt!9060 () Token!212)

(assert (=> d!6136 (contains!112 lt!8977 lt!9060)))

(declare-fun e!30173 () Token!212)

(assert (=> d!6136 (= lt!9060 e!30173)))

(declare-fun c!16719 () Bool)

(assert (=> d!6136 (= c!16719 (= (+ 1 from!821) 0))))

(declare-fun e!30174 () Bool)

(assert (=> d!6136 e!30174))

(declare-fun res!33734 () Bool)

(assert (=> d!6136 (=> (not res!33734) (not e!30174))))

(assert (=> d!6136 (= res!33734 (<= 0 (+ 1 from!821)))))

(assert (=> d!6136 (= (apply!95 lt!8977 (+ 1 from!821)) lt!9060)))

(declare-fun b!51367 () Bool)

(assert (=> b!51367 (= e!30174 (< (+ 1 from!821) (size!961 lt!8977)))))

(declare-fun b!51368 () Bool)

(assert (=> b!51368 (= e!30173 (head!379 lt!8977))))

(declare-fun b!51369 () Bool)

(assert (=> b!51369 (= e!30173 (apply!95 (tail!64 lt!8977) (- (+ 1 from!821) 1)))))

(assert (= (and d!6136 res!33734) b!51367))

(assert (= (and d!6136 c!16719) b!51368))

(assert (= (and d!6136 (not c!16719)) b!51369))

(declare-fun m!25810 () Bool)

(assert (=> d!6136 m!25810))

(assert (=> b!51367 m!25770))

(assert (=> b!51368 m!25788))

(assert (=> b!51369 m!25790))

(assert (=> b!51369 m!25790))

(declare-fun m!25812 () Bool)

(assert (=> b!51369 m!25812))

(assert (=> b!51156 d!6136))

(declare-fun d!6138 () Bool)

(declare-fun lt!9063 () Bool)

(assert (=> d!6138 (= lt!9063 (contains!112 (list!263 v!6227) (apply!94 v!6227 from!821)))))

(declare-fun contains!113 (Conc!253 Token!212) Bool)

(assert (=> d!6138 (= lt!9063 (contains!113 (c!16662 v!6227) (apply!94 v!6227 from!821)))))

(assert (=> d!6138 (= (contains!110 v!6227 (apply!94 v!6227 from!821)) lt!9063)))

(declare-fun bs!6663 () Bool)

(assert (= bs!6663 d!6138))

(assert (=> bs!6663 m!25608))

(assert (=> bs!6663 m!25608))

(assert (=> bs!6663 m!25588))

(declare-fun m!25814 () Bool)

(assert (=> bs!6663 m!25814))

(assert (=> bs!6663 m!25588))

(declare-fun m!25816 () Bool)

(assert (=> bs!6663 m!25816))

(assert (=> b!51156 d!6138))

(declare-fun d!6140 () Bool)

(assert (=> d!6140 (= (head!379 lt!8984) (h!6436 lt!8984))))

(assert (=> b!51156 d!6140))

(declare-fun d!6142 () Bool)

(assert (=> d!6142 (= (head!379 (drop!39 lt!8977 (+ 1 from!821))) (apply!95 lt!8977 (+ 1 from!821)))))

(declare-fun lt!9064 () Unit!589)

(assert (=> d!6142 (= lt!9064 (choose!1179 lt!8977 (+ 1 from!821)))))

(declare-fun e!30175 () Bool)

(assert (=> d!6142 e!30175))

(declare-fun res!33735 () Bool)

(assert (=> d!6142 (=> (not res!33735) (not e!30175))))

(assert (=> d!6142 (= res!33735 (>= (+ 1 from!821) 0))))

(assert (=> d!6142 (= (lemmaDropApply!39 lt!8977 (+ 1 from!821)) lt!9064)))

(declare-fun b!51370 () Bool)

(assert (=> b!51370 (= e!30175 (< (+ 1 from!821) (size!961 lt!8977)))))

(assert (= (and d!6142 res!33735) b!51370))

(assert (=> d!6142 m!25594))

(assert (=> d!6142 m!25594))

(declare-fun m!25818 () Bool)

(assert (=> d!6142 m!25818))

(assert (=> d!6142 m!25596))

(declare-fun m!25820 () Bool)

(assert (=> d!6142 m!25820))

(assert (=> b!51370 m!25770))

(assert (=> b!51156 d!6142))

(declare-fun d!6144 () Bool)

(assert (=> d!6144 (= (tail!64 lt!8980) (t!17256 lt!8980))))

(assert (=> b!51156 d!6144))

(declare-fun d!6146 () Bool)

(assert (=> d!6146 (= (tail!64 (drop!39 lt!8977 from!821)) (drop!39 lt!8977 (+ from!821 1)))))

(declare-fun lt!9065 () Unit!589)

(assert (=> d!6146 (= lt!9065 (choose!1178 lt!8977 from!821))))

(declare-fun e!30176 () Bool)

(assert (=> d!6146 e!30176))

(declare-fun res!33736 () Bool)

(assert (=> d!6146 (=> (not res!33736) (not e!30176))))

(assert (=> d!6146 (= res!33736 (>= from!821 0))))

(assert (=> d!6146 (= (lemmaDropTail!35 lt!8977 from!821) lt!9065)))

(declare-fun b!51371 () Bool)

(assert (=> b!51371 (= e!30176 (< from!821 (size!961 lt!8977)))))

(assert (= (and d!6146 res!33736) b!51371))

(assert (=> d!6146 m!25584))

(assert (=> d!6146 m!25584))

(declare-fun m!25822 () Bool)

(assert (=> d!6146 m!25822))

(declare-fun m!25824 () Bool)

(assert (=> d!6146 m!25824))

(declare-fun m!25826 () Bool)

(assert (=> d!6146 m!25826))

(assert (=> b!51371 m!25770))

(assert (=> b!51156 d!6146))

(declare-fun e!30179 () Bool)

(assert (=> b!51153 (= tp!33674 e!30179)))

(declare-fun b!51384 () Bool)

(declare-fun tp!33707 () Bool)

(assert (=> b!51384 (= e!30179 tp!33707)))

(declare-fun b!51382 () Bool)

(declare-fun tp_is_empty!523 () Bool)

(assert (=> b!51382 (= e!30179 tp_is_empty!523)))

(declare-fun b!51385 () Bool)

(declare-fun tp!33704 () Bool)

(declare-fun tp!33706 () Bool)

(assert (=> b!51385 (= e!30179 (and tp!33704 tp!33706))))

(declare-fun b!51383 () Bool)

(declare-fun tp!33705 () Bool)

(declare-fun tp!33703 () Bool)

(assert (=> b!51383 (= e!30179 (and tp!33705 tp!33703))))

(assert (= (and b!51153 (is-ElementMatch!292 (regex!224 (h!6435 rules!1069)))) b!51382))

(assert (= (and b!51153 (is-Concat!507 (regex!224 (h!6435 rules!1069)))) b!51383))

(assert (= (and b!51153 (is-Star!292 (regex!224 (h!6435 rules!1069)))) b!51384))

(assert (= (and b!51153 (is-Union!292 (regex!224 (h!6435 rules!1069)))) b!51385))

(declare-fun b!51394 () Bool)

(declare-fun e!30185 () Bool)

(declare-fun tp!33715 () Bool)

(declare-fun tp!33714 () Bool)

(assert (=> b!51394 (= e!30185 (and (inv!1366 (left!778 (c!16662 v!6227))) tp!33714 (inv!1366 (right!1108 (c!16662 v!6227))) tp!33715))))

(declare-fun b!51396 () Bool)

(declare-fun e!30184 () Bool)

(declare-fun tp!33716 () Bool)

(assert (=> b!51396 (= e!30184 tp!33716)))

(declare-fun b!51395 () Bool)

(declare-fun inv!1373 (IArray!507) Bool)

(assert (=> b!51395 (= e!30185 (and (inv!1373 (xs!2832 (c!16662 v!6227))) e!30184))))

(assert (=> b!51158 (= tp!33673 (and (inv!1366 (c!16662 v!6227)) e!30185))))

(assert (= (and b!51158 (is-Node!253 (c!16662 v!6227))) b!51394))

(assert (= b!51395 b!51396))

(assert (= (and b!51158 (is-Leaf!501 (c!16662 v!6227))) b!51395))

(declare-fun m!25828 () Bool)

(assert (=> b!51394 m!25828))

(declare-fun m!25830 () Bool)

(assert (=> b!51394 m!25830))

(declare-fun m!25832 () Bool)

(assert (=> b!51395 m!25832))

(assert (=> b!51158 m!25568))

(declare-fun b!51407 () Bool)

(declare-fun b_free!1625 () Bool)

(declare-fun b_next!1625 () Bool)

(assert (=> b!51407 (= b_free!1625 (not b_next!1625))))

(declare-fun tp!33725 () Bool)

(declare-fun b_and!1675 () Bool)

(assert (=> b!51407 (= tp!33725 b_and!1675)))

(declare-fun b_free!1627 () Bool)

(declare-fun b_next!1627 () Bool)

(assert (=> b!51407 (= b_free!1627 (not b_next!1627))))

(declare-fun tp!33726 () Bool)

(declare-fun b_and!1677 () Bool)

(assert (=> b!51407 (= tp!33726 b_and!1677)))

(declare-fun e!30196 () Bool)

(assert (=> b!51407 (= e!30196 (and tp!33725 tp!33726))))

(declare-fun tp!33727 () Bool)

(declare-fun e!30197 () Bool)

(declare-fun b!51406 () Bool)

(assert (=> b!51406 (= e!30197 (and tp!33727 (inv!1362 (tag!402 (h!6435 (t!17255 rules!1069)))) (inv!1365 (transformation!224 (h!6435 (t!17255 rules!1069)))) e!30196))))

(declare-fun b!51405 () Bool)

(declare-fun e!30195 () Bool)

(declare-fun tp!33728 () Bool)

(assert (=> b!51405 (= e!30195 (and e!30197 tp!33728))))

(assert (=> b!51157 (= tp!33675 e!30195)))

(assert (= b!51406 b!51407))

(assert (= b!51405 b!51406))

(assert (= (and b!51157 (is-Cons!1038 (t!17255 rules!1069))) b!51405))

(declare-fun m!25834 () Bool)

(assert (=> b!51406 m!25834))

(declare-fun m!25836 () Bool)

(assert (=> b!51406 m!25836))

(push 1)

(assert (not bm!3339))

(assert (not b!51204))

(assert (not d!6128))

(assert (not d!6134))

(assert (not d!6108))

(assert (not d!6136))

(assert (not b!51367))

(assert (not b!51195))

(assert (not b!51359))

(assert (not b!51158))

(assert (not b!51343))

(assert (not b!51345))

(assert (not b!51202))

(assert (not d!6062))

(assert (not b!51287))

(assert (not b!51395))

(assert (not bm!3341))

(assert (not b!51369))

(assert (not d!6146))

(assert (not b!51406))

(assert (not d!6110))

(assert (not b!51368))

(assert b_and!1669)

(assert (not b!51344))

(assert (not b!51303))

(assert (not b_next!1625))

(assert (not b!51394))

(assert (not b!51332))

(assert b_and!1677)

(assert (not b!51370))

(assert (not b_next!1617))

(assert (not b!51366))

(assert (not b!51385))

(assert (not d!6112))

(assert (not b_next!1627))

(assert (not d!6138))

(assert (not d!6122))

(assert (not d!6058))

(assert (not d!6118))

(assert (not d!6124))

(assert (not b!51309))

(assert b_and!1667)

(assert (not b!51296))

(assert (not b!51350))

(assert (not b!51371))

(assert (not b_next!1619))

(assert (not d!6116))

(assert (not b!51352))

(assert (not b!51396))

(assert (not b!51361))

(assert (not d!6130))

(assert (not d!6142))

(assert (not d!6120))

(assert (not bm!3340))

(assert tp_is_empty!523)

(assert (not b!51306))

(assert (not b!51405))

(assert (not b!51384))

(assert (not b!51334))

(assert b_and!1675)

(assert (not b!51383))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1669)

(assert (not b_next!1625))

(assert b_and!1677)

(assert (not b_next!1617))

(assert (not b_next!1627))

(assert b_and!1667)

(assert (not b_next!1619))

(assert b_and!1675)

(check-sat)

(pop 1)

