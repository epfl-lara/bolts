; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!391966 () Bool)

(assert start!391966)

(declare-fun b!4130051 () Bool)

(declare-fun b_free!117115 () Bool)

(declare-fun b_next!117819 () Bool)

(assert (=> b!4130051 (= b_free!117115 (not b_next!117819))))

(declare-fun tp!1258604 () Bool)

(declare-fun b_and!320009 () Bool)

(assert (=> b!4130051 (= tp!1258604 b_and!320009)))

(declare-fun b_free!117117 () Bool)

(declare-fun b_next!117821 () Bool)

(assert (=> b!4130051 (= b_free!117117 (not b_next!117821))))

(declare-fun tp!1258598 () Bool)

(declare-fun b_and!320011 () Bool)

(assert (=> b!4130051 (= tp!1258598 b_and!320011)))

(declare-fun b!4130059 () Bool)

(declare-fun b_free!117119 () Bool)

(declare-fun b_next!117823 () Bool)

(assert (=> b!4130059 (= b_free!117119 (not b_next!117823))))

(declare-fun tp!1258599 () Bool)

(declare-fun b_and!320013 () Bool)

(assert (=> b!4130059 (= tp!1258599 b_and!320013)))

(declare-fun b_free!117121 () Bool)

(declare-fun b_next!117825 () Bool)

(assert (=> b!4130059 (= b_free!117121 (not b_next!117825))))

(declare-fun tp!1258600 () Bool)

(declare-fun b_and!320015 () Bool)

(assert (=> b!4130059 (= tp!1258600 b_and!320015)))

(declare-fun b!4130070 () Bool)

(declare-fun b_free!117123 () Bool)

(declare-fun b_next!117827 () Bool)

(assert (=> b!4130070 (= b_free!117123 (not b_next!117827))))

(declare-fun tp!1258601 () Bool)

(declare-fun b_and!320017 () Bool)

(assert (=> b!4130070 (= tp!1258601 b_and!320017)))

(declare-fun b_free!117125 () Bool)

(declare-fun b_next!117829 () Bool)

(assert (=> b!4130070 (= b_free!117125 (not b_next!117829))))

(declare-fun tp!1258595 () Bool)

(declare-fun b_and!320019 () Bool)

(assert (=> b!4130070 (= tp!1258595 b_and!320019)))

(declare-fun e!2562586 () Bool)

(assert (=> b!4130051 (= e!2562586 (and tp!1258604 tp!1258598))))

(declare-fun b!4130053 () Bool)

(declare-fun res!1688388 () Bool)

(declare-fun e!2562575 () Bool)

(assert (=> b!4130053 (=> res!1688388 e!2562575)))

(declare-datatypes ((List!44835 0))(
  ( (Nil!44711) (Cons!44711 (h!50131 (_ BitVec 16)) (t!341476 List!44835)) )
))
(declare-datatypes ((TokenValue!7550 0))(
  ( (FloatLiteralValue!15100 (text!53295 List!44835)) (TokenValueExt!7549 (__x!27317 Int)) (Broken!37750 (value!229148 List!44835)) (Object!7673) (End!7550) (Def!7550) (Underscore!7550) (Match!7550) (Else!7550) (Error!7550) (Case!7550) (If!7550) (Extends!7550) (Abstract!7550) (Class!7550) (Val!7550) (DelimiterValue!15100 (del!7610 List!44835)) (KeywordValue!7556 (value!229149 List!44835)) (CommentValue!15100 (value!229150 List!44835)) (WhitespaceValue!15100 (value!229151 List!44835)) (IndentationValue!7550 (value!229152 List!44835)) (String!51499) (Int32!7550) (Broken!37751 (value!229153 List!44835)) (Boolean!7551) (Unit!64042) (OperatorValue!7553 (op!7610 List!44835)) (IdentifierValue!15100 (value!229154 List!44835)) (IdentifierValue!15101 (value!229155 List!44835)) (WhitespaceValue!15101 (value!229156 List!44835)) (True!15100) (False!15100) (Broken!37752 (value!229157 List!44835)) (Broken!37753 (value!229158 List!44835)) (True!15101) (RightBrace!7550) (RightBracket!7550) (Colon!7550) (Null!7550) (Comma!7550) (LeftBracket!7550) (False!15101) (LeftBrace!7550) (ImaginaryLiteralValue!7550 (text!53296 List!44835)) (StringLiteralValue!22650 (value!229159 List!44835)) (EOFValue!7550 (value!229160 List!44835)) (IdentValue!7550 (value!229161 List!44835)) (DelimiterValue!15101 (value!229162 List!44835)) (DedentValue!7550 (value!229163 List!44835)) (NewLineValue!7550 (value!229164 List!44835)) (IntegerValue!22650 (value!229165 (_ BitVec 32)) (text!53297 List!44835)) (IntegerValue!22651 (value!229166 Int) (text!53298 List!44835)) (Times!7550) (Or!7550) (Equal!7550) (Minus!7550) (Broken!37754 (value!229167 List!44835)) (And!7550) (Div!7550) (LessEqual!7550) (Mod!7550) (Concat!19775) (Not!7550) (Plus!7550) (SpaceValue!7550 (value!229168 List!44835)) (IntegerValue!22652 (value!229169 Int) (text!53299 List!44835)) (StringLiteralValue!22651 (text!53300 List!44835)) (FloatLiteralValue!15101 (text!53301 List!44835)) (BytesLiteralValue!7550 (value!229170 List!44835)) (CommentValue!15101 (value!229171 List!44835)) (StringLiteralValue!22652 (value!229172 List!44835)) (ErrorTokenValue!7550 (msg!7611 List!44835)) )
))
(declare-datatypes ((C!24636 0))(
  ( (C!24637 (val!14428 Int)) )
))
(declare-datatypes ((List!44836 0))(
  ( (Nil!44712) (Cons!44712 (h!50132 C!24636) (t!341477 List!44836)) )
))
(declare-datatypes ((IArray!27067 0))(
  ( (IArray!27068 (innerList!13591 List!44836)) )
))
(declare-datatypes ((Conc!13531 0))(
  ( (Node!13531 (left!33481 Conc!13531) (right!33811 Conc!13531) (csize!27292 Int) (cheight!13742 Int)) (Leaf!20906 (xs!16837 IArray!27067) (csize!27293 Int)) (Empty!13531) )
))
(declare-datatypes ((BalanceConc!26656 0))(
  ( (BalanceConc!26657 (c!708700 Conc!13531)) )
))
(declare-datatypes ((String!51500 0))(
  ( (String!51501 (value!229173 String)) )
))
(declare-datatypes ((Regex!12225 0))(
  ( (ElementMatch!12225 (c!708701 C!24636)) (Concat!19776 (regOne!24962 Regex!12225) (regTwo!24962 Regex!12225)) (EmptyExpr!12225) (Star!12225 (reg!12554 Regex!12225)) (EmptyLang!12225) (Union!12225 (regOne!24963 Regex!12225) (regTwo!24963 Regex!12225)) )
))
(declare-datatypes ((TokenValueInjection!14528 0))(
  ( (TokenValueInjection!14529 (toValue!9980 Int) (toChars!9839 Int)) )
))
(declare-datatypes ((Rule!14440 0))(
  ( (Rule!14441 (regex!7320 Regex!12225) (tag!8180 String!51500) (isSeparator!7320 Bool) (transformation!7320 TokenValueInjection!14528)) )
))
(declare-datatypes ((List!44837 0))(
  ( (Nil!44713) (Cons!44713 (h!50133 Rule!14440) (t!341478 List!44837)) )
))
(declare-fun rules!3756 () List!44837)

(declare-fun r!4008 () Rule!14440)

(declare-fun contains!8996 (List!44837 Rule!14440) Bool)

(assert (=> b!4130053 (= res!1688388 (not (contains!8996 (t!341478 rules!3756) r!4008)))))

(declare-fun b!4130054 () Bool)

(declare-fun rBis!149 () Rule!14440)

(assert (=> b!4130054 (= e!2562575 (contains!8996 (t!341478 rules!3756) rBis!149))))

(declare-fun b!4130055 () Bool)

(declare-fun e!2562576 () Bool)

(declare-fun tp_is_empty!21373 () Bool)

(declare-fun tp!1258602 () Bool)

(assert (=> b!4130055 (= e!2562576 (and tp_is_empty!21373 tp!1258602))))

(declare-fun b!4130056 () Bool)

(declare-fun res!1688393 () Bool)

(declare-fun e!2562583 () Bool)

(assert (=> b!4130056 (=> (not res!1688393) (not e!2562583))))

(declare-datatypes ((LexerInterface!6909 0))(
  ( (LexerInterfaceExt!6906 (__x!27318 Int)) (Lexer!6907) )
))
(declare-fun thiss!25645 () LexerInterface!6909)

(declare-fun rulesInvariant!6206 (LexerInterface!6909 List!44837) Bool)

(assert (=> b!4130056 (= res!1688393 (rulesInvariant!6206 thiss!25645 rules!3756))))

(declare-fun b!4130057 () Bool)

(declare-fun e!2562584 () Bool)

(declare-fun tp!1258597 () Bool)

(assert (=> b!4130057 (= e!2562584 (and tp_is_empty!21373 tp!1258597))))

(declare-fun b!4130058 () Bool)

(declare-fun res!1688396 () Bool)

(assert (=> b!4130058 (=> (not res!1688396) (not e!2562583))))

(assert (=> b!4130058 (= res!1688396 (contains!8996 rules!3756 rBis!149))))

(declare-fun e!2562581 () Bool)

(assert (=> b!4130059 (= e!2562581 (and tp!1258599 tp!1258600))))

(declare-fun e!2562572 () Bool)

(declare-fun b!4130060 () Bool)

(declare-fun tp!1258605 () Bool)

(declare-fun inv!59301 (String!51500) Bool)

(declare-fun inv!59303 (TokenValueInjection!14528) Bool)

(assert (=> b!4130060 (= e!2562572 (and tp!1258605 (inv!59301 (tag!8180 (h!50133 rules!3756))) (inv!59303 (transformation!7320 (h!50133 rules!3756))) e!2562586))))

(declare-fun b!4130061 () Bool)

(declare-fun res!1688389 () Bool)

(assert (=> b!4130061 (=> (not res!1688389) (not e!2562583))))

(declare-fun p!2912 () List!44836)

(declare-fun input!3238 () List!44836)

(declare-fun isPrefix!4255 (List!44836 List!44836) Bool)

(assert (=> b!4130061 (= res!1688389 (isPrefix!4255 p!2912 input!3238))))

(declare-fun b!4130062 () Bool)

(declare-fun res!1688391 () Bool)

(declare-fun e!2562573 () Bool)

(assert (=> b!4130062 (=> (not res!1688391) (not e!2562573))))

(declare-fun ruleValid!3128 (LexerInterface!6909 Rule!14440) Bool)

(assert (=> b!4130062 (= res!1688391 (ruleValid!3128 thiss!25645 r!4008))))

(declare-fun e!2562582 () Bool)

(declare-fun e!2562574 () Bool)

(declare-fun b!4130063 () Bool)

(declare-fun tp!1258603 () Bool)

(assert (=> b!4130063 (= e!2562582 (and tp!1258603 (inv!59301 (tag!8180 rBis!149)) (inv!59303 (transformation!7320 rBis!149)) e!2562574))))

(declare-fun b!4130064 () Bool)

(declare-fun res!1688386 () Bool)

(assert (=> b!4130064 (=> (not res!1688386) (not e!2562573))))

(declare-fun getIndex!668 (List!44837 Rule!14440) Int)

(assert (=> b!4130064 (= res!1688386 (< (getIndex!668 rules!3756 rBis!149) (getIndex!668 rules!3756 r!4008)))))

(declare-fun b!4130052 () Bool)

(declare-fun res!1688392 () Bool)

(assert (=> b!4130052 (=> (not res!1688392) (not e!2562583))))

(assert (=> b!4130052 (= res!1688392 (contains!8996 rules!3756 r!4008))))

(declare-fun res!1688385 () Bool)

(assert (=> start!391966 (=> (not res!1688385) (not e!2562583))))

(get-info :version)

(assert (=> start!391966 (= res!1688385 ((_ is Lexer!6907) thiss!25645))))

(assert (=> start!391966 e!2562583))

(declare-fun e!2562579 () Bool)

(assert (=> start!391966 e!2562579))

(assert (=> start!391966 e!2562584))

(assert (=> start!391966 true))

(declare-fun e!2562585 () Bool)

(assert (=> start!391966 e!2562585))

(assert (=> start!391966 e!2562576))

(assert (=> start!391966 e!2562582))

(declare-fun b!4130065 () Bool)

(declare-fun res!1688395 () Bool)

(assert (=> b!4130065 (=> (not res!1688395) (not e!2562583))))

(declare-fun isEmpty!26621 (List!44836) Bool)

(assert (=> b!4130065 (= res!1688395 (not (isEmpty!26621 p!2912)))))

(declare-fun b!4130066 () Bool)

(assert (=> b!4130066 (= e!2562573 (not e!2562575))))

(declare-fun res!1688394 () Bool)

(assert (=> b!4130066 (=> res!1688394 e!2562575)))

(assert (=> b!4130066 (= res!1688394 (or (and ((_ is Cons!44713) rules!3756) (= (h!50133 rules!3756) rBis!149)) (not ((_ is Cons!44713) rules!3756)) (= (h!50133 rules!3756) rBis!149)))))

(declare-datatypes ((Unit!64043 0))(
  ( (Unit!64044) )
))
(declare-fun lt!1473122 () Unit!64043)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2172 (LexerInterface!6909 Rule!14440 List!44837) Unit!64043)

(assert (=> b!4130066 (= lt!1473122 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2172 thiss!25645 r!4008 rules!3756))))

(assert (=> b!4130066 (ruleValid!3128 thiss!25645 rBis!149)))

(declare-fun lt!1473120 () Unit!64043)

(assert (=> b!4130066 (= lt!1473120 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2172 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4130067 () Bool)

(assert (=> b!4130067 (= e!2562583 e!2562573)))

(declare-fun res!1688390 () Bool)

(assert (=> b!4130067 (=> (not res!1688390) (not e!2562573))))

(declare-fun lt!1473119 () BalanceConc!26656)

(declare-datatypes ((Token!13570 0))(
  ( (Token!13571 (value!229174 TokenValue!7550) (rule!10412 Rule!14440) (size!33105 Int) (originalCharacters!7816 List!44836)) )
))
(declare-datatypes ((tuple2!43150 0))(
  ( (tuple2!43151 (_1!24709 Token!13570) (_2!24709 List!44836)) )
))
(declare-datatypes ((Option!9628 0))(
  ( (None!9627) (Some!9627 (v!40233 tuple2!43150)) )
))
(declare-fun maxPrefix!4101 (LexerInterface!6909 List!44837 List!44836) Option!9628)

(declare-fun apply!10393 (TokenValueInjection!14528 BalanceConc!26656) TokenValue!7550)

(declare-fun size!33106 (List!44836) Int)

(declare-fun getSuffix!2584 (List!44836 List!44836) List!44836)

(assert (=> b!4130067 (= res!1688390 (= (maxPrefix!4101 thiss!25645 rules!3756 input!3238) (Some!9627 (tuple2!43151 (Token!13571 (apply!10393 (transformation!7320 r!4008) lt!1473119) r!4008 (size!33106 p!2912) p!2912) (getSuffix!2584 input!3238 p!2912)))))))

(declare-fun lt!1473121 () Unit!64043)

(declare-fun lemmaSemiInverse!2178 (TokenValueInjection!14528 BalanceConc!26656) Unit!64043)

(assert (=> b!4130067 (= lt!1473121 (lemmaSemiInverse!2178 (transformation!7320 r!4008) lt!1473119))))

(declare-fun seqFromList!5437 (List!44836) BalanceConc!26656)

(assert (=> b!4130067 (= lt!1473119 (seqFromList!5437 p!2912))))

(declare-fun tp!1258596 () Bool)

(declare-fun b!4130068 () Bool)

(assert (=> b!4130068 (= e!2562585 (and tp!1258596 (inv!59301 (tag!8180 r!4008)) (inv!59303 (transformation!7320 r!4008)) e!2562581))))

(declare-fun b!4130069 () Bool)

(declare-fun tp!1258606 () Bool)

(assert (=> b!4130069 (= e!2562579 (and e!2562572 tp!1258606))))

(assert (=> b!4130070 (= e!2562574 (and tp!1258601 tp!1258595))))

(declare-fun b!4130071 () Bool)

(declare-fun res!1688387 () Bool)

(assert (=> b!4130071 (=> (not res!1688387) (not e!2562583))))

(declare-fun isEmpty!26622 (List!44837) Bool)

(assert (=> b!4130071 (= res!1688387 (not (isEmpty!26622 rules!3756)))))

(declare-fun b!4130072 () Bool)

(declare-fun res!1688384 () Bool)

(assert (=> b!4130072 (=> (not res!1688384) (not e!2562573))))

(declare-fun matchR!6056 (Regex!12225 List!44836) Bool)

(assert (=> b!4130072 (= res!1688384 (matchR!6056 (regex!7320 r!4008) p!2912))))

(assert (= (and start!391966 res!1688385) b!4130061))

(assert (= (and b!4130061 res!1688389) b!4130071))

(assert (= (and b!4130071 res!1688387) b!4130056))

(assert (= (and b!4130056 res!1688393) b!4130052))

(assert (= (and b!4130052 res!1688392) b!4130058))

(assert (= (and b!4130058 res!1688396) b!4130065))

(assert (= (and b!4130065 res!1688395) b!4130067))

(assert (= (and b!4130067 res!1688390) b!4130072))

(assert (= (and b!4130072 res!1688384) b!4130064))

(assert (= (and b!4130064 res!1688386) b!4130062))

(assert (= (and b!4130062 res!1688391) b!4130066))

(assert (= (and b!4130066 (not res!1688394)) b!4130053))

(assert (= (and b!4130053 (not res!1688388)) b!4130054))

(assert (= b!4130060 b!4130051))

(assert (= b!4130069 b!4130060))

(assert (= (and start!391966 ((_ is Cons!44713) rules!3756)) b!4130069))

(assert (= (and start!391966 ((_ is Cons!44712) p!2912)) b!4130057))

(assert (= b!4130068 b!4130059))

(assert (= start!391966 b!4130068))

(assert (= (and start!391966 ((_ is Cons!44712) input!3238)) b!4130055))

(assert (= b!4130063 b!4130070))

(assert (= start!391966 b!4130063))

(declare-fun m!4727979 () Bool)

(assert (=> b!4130065 m!4727979))

(declare-fun m!4727981 () Bool)

(assert (=> b!4130056 m!4727981))

(declare-fun m!4727983 () Bool)

(assert (=> b!4130072 m!4727983))

(declare-fun m!4727985 () Bool)

(assert (=> b!4130068 m!4727985))

(declare-fun m!4727987 () Bool)

(assert (=> b!4130068 m!4727987))

(declare-fun m!4727989 () Bool)

(assert (=> b!4130052 m!4727989))

(declare-fun m!4727991 () Bool)

(assert (=> b!4130067 m!4727991))

(declare-fun m!4727993 () Bool)

(assert (=> b!4130067 m!4727993))

(declare-fun m!4727995 () Bool)

(assert (=> b!4130067 m!4727995))

(declare-fun m!4727997 () Bool)

(assert (=> b!4130067 m!4727997))

(declare-fun m!4727999 () Bool)

(assert (=> b!4130067 m!4727999))

(declare-fun m!4728001 () Bool)

(assert (=> b!4130067 m!4728001))

(declare-fun m!4728003 () Bool)

(assert (=> b!4130066 m!4728003))

(declare-fun m!4728005 () Bool)

(assert (=> b!4130066 m!4728005))

(declare-fun m!4728007 () Bool)

(assert (=> b!4130066 m!4728007))

(declare-fun m!4728009 () Bool)

(assert (=> b!4130058 m!4728009))

(declare-fun m!4728011 () Bool)

(assert (=> b!4130062 m!4728011))

(declare-fun m!4728013 () Bool)

(assert (=> b!4130064 m!4728013))

(declare-fun m!4728015 () Bool)

(assert (=> b!4130064 m!4728015))

(declare-fun m!4728017 () Bool)

(assert (=> b!4130054 m!4728017))

(declare-fun m!4728019 () Bool)

(assert (=> b!4130063 m!4728019))

(declare-fun m!4728021 () Bool)

(assert (=> b!4130063 m!4728021))

(declare-fun m!4728023 () Bool)

(assert (=> b!4130071 m!4728023))

(declare-fun m!4728025 () Bool)

(assert (=> b!4130060 m!4728025))

(declare-fun m!4728027 () Bool)

(assert (=> b!4130060 m!4728027))

(declare-fun m!4728029 () Bool)

(assert (=> b!4130053 m!4728029))

(declare-fun m!4728031 () Bool)

(assert (=> b!4130061 m!4728031))

(check-sat (not b_next!117821) (not b!4130068) (not b_next!117819) (not b!4130071) tp_is_empty!21373 (not b!4130054) b_and!320011 (not b!4130057) b_and!320013 (not b!4130055) (not b_next!117823) (not b!4130058) (not b_next!117829) (not b!4130072) (not b!4130062) (not b_next!117825) (not b_next!117827) (not b!4130052) (not b!4130061) b_and!320015 (not b!4130067) (not b!4130065) b_and!320019 (not b!4130069) (not b!4130060) (not b!4130066) (not b!4130063) b_and!320017 b_and!320009 (not b!4130064) (not b!4130056) (not b!4130053))
(check-sat (not b_next!117823) (not b_next!117829) (not b_next!117821) (not b_next!117819) b_and!320015 b_and!320019 b_and!320011 b_and!320013 (not b_next!117825) (not b_next!117827) b_and!320017 b_and!320009)
(get-model)

(declare-fun d!1223655 () Bool)

(assert (=> d!1223655 (= (inv!59301 (tag!8180 r!4008)) (= (mod (str.len (value!229173 (tag!8180 r!4008))) 2) 0))))

(assert (=> b!4130068 d!1223655))

(declare-fun d!1223657 () Bool)

(declare-fun res!1688409 () Bool)

(declare-fun e!2562589 () Bool)

(assert (=> d!1223657 (=> (not res!1688409) (not e!2562589))))

(declare-fun semiInverseModEq!3155 (Int Int) Bool)

(assert (=> d!1223657 (= res!1688409 (semiInverseModEq!3155 (toChars!9839 (transformation!7320 r!4008)) (toValue!9980 (transformation!7320 r!4008))))))

(assert (=> d!1223657 (= (inv!59303 (transformation!7320 r!4008)) e!2562589)))

(declare-fun b!4130075 () Bool)

(declare-fun equivClasses!3054 (Int Int) Bool)

(assert (=> b!4130075 (= e!2562589 (equivClasses!3054 (toChars!9839 (transformation!7320 r!4008)) (toValue!9980 (transformation!7320 r!4008))))))

(assert (= (and d!1223657 res!1688409) b!4130075))

(declare-fun m!4728033 () Bool)

(assert (=> d!1223657 m!4728033))

(declare-fun m!4728035 () Bool)

(assert (=> b!4130075 m!4728035))

(assert (=> b!4130068 d!1223657))

(declare-fun d!1223661 () Bool)

(declare-fun lt!1473128 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6896 (List!44837) (InoxSet Rule!14440))

(assert (=> d!1223661 (= lt!1473128 (select (content!6896 rules!3756) rBis!149))))

(declare-fun e!2562603 () Bool)

(assert (=> d!1223661 (= lt!1473128 e!2562603)))

(declare-fun res!1688426 () Bool)

(assert (=> d!1223661 (=> (not res!1688426) (not e!2562603))))

(assert (=> d!1223661 (= res!1688426 ((_ is Cons!44713) rules!3756))))

(assert (=> d!1223661 (= (contains!8996 rules!3756 rBis!149) lt!1473128)))

(declare-fun b!4130092 () Bool)

(declare-fun e!2562604 () Bool)

(assert (=> b!4130092 (= e!2562603 e!2562604)))

(declare-fun res!1688427 () Bool)

(assert (=> b!4130092 (=> res!1688427 e!2562604)))

(assert (=> b!4130092 (= res!1688427 (= (h!50133 rules!3756) rBis!149))))

(declare-fun b!4130093 () Bool)

(assert (=> b!4130093 (= e!2562604 (contains!8996 (t!341478 rules!3756) rBis!149))))

(assert (= (and d!1223661 res!1688426) b!4130092))

(assert (= (and b!4130092 (not res!1688427)) b!4130093))

(declare-fun m!4728049 () Bool)

(assert (=> d!1223661 m!4728049))

(declare-fun m!4728051 () Bool)

(assert (=> d!1223661 m!4728051))

(assert (=> b!4130093 m!4728017))

(assert (=> b!4130058 d!1223661))

(declare-fun d!1223665 () Bool)

(assert (=> d!1223665 (= (isEmpty!26622 rules!3756) ((_ is Nil!44713) rules!3756))))

(assert (=> b!4130071 d!1223665))

(declare-fun d!1223667 () Bool)

(assert (=> d!1223667 (= (inv!59301 (tag!8180 (h!50133 rules!3756))) (= (mod (str.len (value!229173 (tag!8180 (h!50133 rules!3756)))) 2) 0))))

(assert (=> b!4130060 d!1223667))

(declare-fun d!1223669 () Bool)

(declare-fun res!1688432 () Bool)

(declare-fun e!2562607 () Bool)

(assert (=> d!1223669 (=> (not res!1688432) (not e!2562607))))

(assert (=> d!1223669 (= res!1688432 (semiInverseModEq!3155 (toChars!9839 (transformation!7320 (h!50133 rules!3756))) (toValue!9980 (transformation!7320 (h!50133 rules!3756)))))))

(assert (=> d!1223669 (= (inv!59303 (transformation!7320 (h!50133 rules!3756))) e!2562607)))

(declare-fun b!4130098 () Bool)

(assert (=> b!4130098 (= e!2562607 (equivClasses!3054 (toChars!9839 (transformation!7320 (h!50133 rules!3756))) (toValue!9980 (transformation!7320 (h!50133 rules!3756)))))))

(assert (= (and d!1223669 res!1688432) b!4130098))

(declare-fun m!4728053 () Bool)

(assert (=> d!1223669 m!4728053))

(declare-fun m!4728055 () Bool)

(assert (=> b!4130098 m!4728055))

(assert (=> b!4130060 d!1223669))

(declare-fun b!4130112 () Bool)

(declare-fun e!2562618 () Bool)

(declare-fun e!2562620 () Bool)

(assert (=> b!4130112 (= e!2562618 e!2562620)))

(declare-fun res!1688449 () Bool)

(assert (=> b!4130112 (=> (not res!1688449) (not e!2562620))))

(assert (=> b!4130112 (= res!1688449 (not ((_ is Nil!44712) input!3238)))))

(declare-fun b!4130113 () Bool)

(declare-fun res!1688447 () Bool)

(assert (=> b!4130113 (=> (not res!1688447) (not e!2562620))))

(declare-fun head!8702 (List!44836) C!24636)

(assert (=> b!4130113 (= res!1688447 (= (head!8702 p!2912) (head!8702 input!3238)))))

(declare-fun b!4130114 () Bool)

(declare-fun tail!6475 (List!44836) List!44836)

(assert (=> b!4130114 (= e!2562620 (isPrefix!4255 (tail!6475 p!2912) (tail!6475 input!3238)))))

(declare-fun d!1223671 () Bool)

(declare-fun e!2562619 () Bool)

(assert (=> d!1223671 e!2562619))

(declare-fun res!1688448 () Bool)

(assert (=> d!1223671 (=> res!1688448 e!2562619)))

(declare-fun lt!1473131 () Bool)

(assert (=> d!1223671 (= res!1688448 (not lt!1473131))))

(assert (=> d!1223671 (= lt!1473131 e!2562618)))

(declare-fun res!1688446 () Bool)

(assert (=> d!1223671 (=> res!1688446 e!2562618)))

(assert (=> d!1223671 (= res!1688446 ((_ is Nil!44712) p!2912))))

(assert (=> d!1223671 (= (isPrefix!4255 p!2912 input!3238) lt!1473131)))

(declare-fun b!4130115 () Bool)

(assert (=> b!4130115 (= e!2562619 (>= (size!33106 input!3238) (size!33106 p!2912)))))

(assert (= (and d!1223671 (not res!1688446)) b!4130112))

(assert (= (and b!4130112 res!1688449) b!4130113))

(assert (= (and b!4130113 res!1688447) b!4130114))

(assert (= (and d!1223671 (not res!1688448)) b!4130115))

(declare-fun m!4728065 () Bool)

(assert (=> b!4130113 m!4728065))

(declare-fun m!4728067 () Bool)

(assert (=> b!4130113 m!4728067))

(declare-fun m!4728069 () Bool)

(assert (=> b!4130114 m!4728069))

(declare-fun m!4728071 () Bool)

(assert (=> b!4130114 m!4728071))

(assert (=> b!4130114 m!4728069))

(assert (=> b!4130114 m!4728071))

(declare-fun m!4728073 () Bool)

(assert (=> b!4130114 m!4728073))

(declare-fun m!4728075 () Bool)

(assert (=> b!4130115 m!4728075))

(assert (=> b!4130115 m!4727991))

(assert (=> b!4130061 d!1223671))

(declare-fun b!4130192 () Bool)

(declare-fun e!2562663 () Bool)

(declare-fun nullable!4294 (Regex!12225) Bool)

(assert (=> b!4130192 (= e!2562663 (nullable!4294 (regex!7320 r!4008)))))

(declare-fun d!1223677 () Bool)

(declare-fun e!2562667 () Bool)

(assert (=> d!1223677 e!2562667))

(declare-fun c!708719 () Bool)

(assert (=> d!1223677 (= c!708719 ((_ is EmptyExpr!12225) (regex!7320 r!4008)))))

(declare-fun lt!1473140 () Bool)

(assert (=> d!1223677 (= lt!1473140 e!2562663)))

(declare-fun c!708717 () Bool)

(assert (=> d!1223677 (= c!708717 (isEmpty!26621 p!2912))))

(declare-fun validRegex!5502 (Regex!12225) Bool)

(assert (=> d!1223677 (validRegex!5502 (regex!7320 r!4008))))

(assert (=> d!1223677 (= (matchR!6056 (regex!7320 r!4008) p!2912) lt!1473140)))

(declare-fun b!4130193 () Bool)

(declare-fun derivativeStep!3689 (Regex!12225 C!24636) Regex!12225)

(assert (=> b!4130193 (= e!2562663 (matchR!6056 (derivativeStep!3689 (regex!7320 r!4008) (head!8702 p!2912)) (tail!6475 p!2912)))))

(declare-fun b!4130194 () Bool)

(declare-fun e!2562662 () Bool)

(assert (=> b!4130194 (= e!2562662 (not lt!1473140))))

(declare-fun b!4130195 () Bool)

(declare-fun res!1688502 () Bool)

(declare-fun e!2562665 () Bool)

(assert (=> b!4130195 (=> res!1688502 e!2562665)))

(declare-fun e!2562664 () Bool)

(assert (=> b!4130195 (= res!1688502 e!2562664)))

(declare-fun res!1688498 () Bool)

(assert (=> b!4130195 (=> (not res!1688498) (not e!2562664))))

(assert (=> b!4130195 (= res!1688498 lt!1473140)))

(declare-fun b!4130196 () Bool)

(declare-fun res!1688499 () Bool)

(assert (=> b!4130196 (=> (not res!1688499) (not e!2562664))))

(assert (=> b!4130196 (= res!1688499 (isEmpty!26621 (tail!6475 p!2912)))))

(declare-fun b!4130197 () Bool)

(declare-fun res!1688501 () Bool)

(assert (=> b!4130197 (=> (not res!1688501) (not e!2562664))))

(declare-fun call!290326 () Bool)

(assert (=> b!4130197 (= res!1688501 (not call!290326))))

(declare-fun b!4130198 () Bool)

(declare-fun e!2562668 () Bool)

(declare-fun e!2562666 () Bool)

(assert (=> b!4130198 (= e!2562668 e!2562666)))

(declare-fun res!1688503 () Bool)

(assert (=> b!4130198 (=> res!1688503 e!2562666)))

(assert (=> b!4130198 (= res!1688503 call!290326)))

(declare-fun b!4130199 () Bool)

(assert (=> b!4130199 (= e!2562664 (= (head!8702 p!2912) (c!708701 (regex!7320 r!4008))))))

(declare-fun b!4130200 () Bool)

(assert (=> b!4130200 (= e!2562665 e!2562668)))

(declare-fun res!1688496 () Bool)

(assert (=> b!4130200 (=> (not res!1688496) (not e!2562668))))

(assert (=> b!4130200 (= res!1688496 (not lt!1473140))))

(declare-fun b!4130201 () Bool)

(declare-fun res!1688500 () Bool)

(assert (=> b!4130201 (=> res!1688500 e!2562666)))

(assert (=> b!4130201 (= res!1688500 (not (isEmpty!26621 (tail!6475 p!2912))))))

(declare-fun b!4130202 () Bool)

(assert (=> b!4130202 (= e!2562666 (not (= (head!8702 p!2912) (c!708701 (regex!7320 r!4008)))))))

(declare-fun b!4130203 () Bool)

(assert (=> b!4130203 (= e!2562667 (= lt!1473140 call!290326))))

(declare-fun b!4130204 () Bool)

(assert (=> b!4130204 (= e!2562667 e!2562662)))

(declare-fun c!708718 () Bool)

(assert (=> b!4130204 (= c!708718 ((_ is EmptyLang!12225) (regex!7320 r!4008)))))

(declare-fun bm!290321 () Bool)

(assert (=> bm!290321 (= call!290326 (isEmpty!26621 p!2912))))

(declare-fun b!4130205 () Bool)

(declare-fun res!1688497 () Bool)

(assert (=> b!4130205 (=> res!1688497 e!2562665)))

(assert (=> b!4130205 (= res!1688497 (not ((_ is ElementMatch!12225) (regex!7320 r!4008))))))

(assert (=> b!4130205 (= e!2562662 e!2562665)))

(assert (= (and d!1223677 c!708717) b!4130192))

(assert (= (and d!1223677 (not c!708717)) b!4130193))

(assert (= (and d!1223677 c!708719) b!4130203))

(assert (= (and d!1223677 (not c!708719)) b!4130204))

(assert (= (and b!4130204 c!708718) b!4130194))

(assert (= (and b!4130204 (not c!708718)) b!4130205))

(assert (= (and b!4130205 (not res!1688497)) b!4130195))

(assert (= (and b!4130195 res!1688498) b!4130197))

(assert (= (and b!4130197 res!1688501) b!4130196))

(assert (= (and b!4130196 res!1688499) b!4130199))

(assert (= (and b!4130195 (not res!1688502)) b!4130200))

(assert (= (and b!4130200 res!1688496) b!4130198))

(assert (= (and b!4130198 (not res!1688503)) b!4130201))

(assert (= (and b!4130201 (not res!1688500)) b!4130202))

(assert (= (or b!4130203 b!4130197 b!4130198) bm!290321))

(assert (=> b!4130202 m!4728065))

(assert (=> b!4130199 m!4728065))

(assert (=> b!4130193 m!4728065))

(assert (=> b!4130193 m!4728065))

(declare-fun m!4728087 () Bool)

(assert (=> b!4130193 m!4728087))

(assert (=> b!4130193 m!4728069))

(assert (=> b!4130193 m!4728087))

(assert (=> b!4130193 m!4728069))

(declare-fun m!4728089 () Bool)

(assert (=> b!4130193 m!4728089))

(declare-fun m!4728091 () Bool)

(assert (=> b!4130192 m!4728091))

(assert (=> b!4130201 m!4728069))

(assert (=> b!4130201 m!4728069))

(declare-fun m!4728093 () Bool)

(assert (=> b!4130201 m!4728093))

(assert (=> b!4130196 m!4728069))

(assert (=> b!4130196 m!4728069))

(assert (=> b!4130196 m!4728093))

(assert (=> bm!290321 m!4727979))

(assert (=> d!1223677 m!4727979))

(declare-fun m!4728095 () Bool)

(assert (=> d!1223677 m!4728095))

(assert (=> b!4130072 d!1223677))

(declare-fun d!1223685 () Bool)

(declare-fun res!1688512 () Bool)

(declare-fun e!2562675 () Bool)

(assert (=> d!1223685 (=> (not res!1688512) (not e!2562675))))

(assert (=> d!1223685 (= res!1688512 (validRegex!5502 (regex!7320 r!4008)))))

(assert (=> d!1223685 (= (ruleValid!3128 thiss!25645 r!4008) e!2562675)))

(declare-fun b!4130214 () Bool)

(declare-fun res!1688513 () Bool)

(assert (=> b!4130214 (=> (not res!1688513) (not e!2562675))))

(assert (=> b!4130214 (= res!1688513 (not (nullable!4294 (regex!7320 r!4008))))))

(declare-fun b!4130215 () Bool)

(assert (=> b!4130215 (= e!2562675 (not (= (tag!8180 r!4008) (String!51501 ""))))))

(assert (= (and d!1223685 res!1688512) b!4130214))

(assert (= (and b!4130214 res!1688513) b!4130215))

(assert (=> d!1223685 m!4728095))

(assert (=> b!4130214 m!4728091))

(assert (=> b!4130062 d!1223685))

(declare-fun d!1223695 () Bool)

(assert (=> d!1223695 (= (inv!59301 (tag!8180 rBis!149)) (= (mod (str.len (value!229173 (tag!8180 rBis!149))) 2) 0))))

(assert (=> b!4130063 d!1223695))

(declare-fun d!1223699 () Bool)

(declare-fun res!1688516 () Bool)

(declare-fun e!2562677 () Bool)

(assert (=> d!1223699 (=> (not res!1688516) (not e!2562677))))

(assert (=> d!1223699 (= res!1688516 (semiInverseModEq!3155 (toChars!9839 (transformation!7320 rBis!149)) (toValue!9980 (transformation!7320 rBis!149))))))

(assert (=> d!1223699 (= (inv!59303 (transformation!7320 rBis!149)) e!2562677)))

(declare-fun b!4130218 () Bool)

(assert (=> b!4130218 (= e!2562677 (equivClasses!3054 (toChars!9839 (transformation!7320 rBis!149)) (toValue!9980 (transformation!7320 rBis!149))))))

(assert (= (and d!1223699 res!1688516) b!4130218))

(declare-fun m!4728113 () Bool)

(assert (=> d!1223699 m!4728113))

(declare-fun m!4728115 () Bool)

(assert (=> b!4130218 m!4728115))

(assert (=> b!4130063 d!1223699))

(declare-fun d!1223703 () Bool)

(declare-fun lt!1473145 () Bool)

(assert (=> d!1223703 (= lt!1473145 (select (content!6896 rules!3756) r!4008))))

(declare-fun e!2562678 () Bool)

(assert (=> d!1223703 (= lt!1473145 e!2562678)))

(declare-fun res!1688517 () Bool)

(assert (=> d!1223703 (=> (not res!1688517) (not e!2562678))))

(assert (=> d!1223703 (= res!1688517 ((_ is Cons!44713) rules!3756))))

(assert (=> d!1223703 (= (contains!8996 rules!3756 r!4008) lt!1473145)))

(declare-fun b!4130219 () Bool)

(declare-fun e!2562679 () Bool)

(assert (=> b!4130219 (= e!2562678 e!2562679)))

(declare-fun res!1688518 () Bool)

(assert (=> b!4130219 (=> res!1688518 e!2562679)))

(assert (=> b!4130219 (= res!1688518 (= (h!50133 rules!3756) r!4008))))

(declare-fun b!4130220 () Bool)

(assert (=> b!4130220 (= e!2562679 (contains!8996 (t!341478 rules!3756) r!4008))))

(assert (= (and d!1223703 res!1688517) b!4130219))

(assert (= (and b!4130219 (not res!1688518)) b!4130220))

(assert (=> d!1223703 m!4728049))

(declare-fun m!4728117 () Bool)

(assert (=> d!1223703 m!4728117))

(assert (=> b!4130220 m!4728029))

(assert (=> b!4130052 d!1223703))

(declare-fun d!1223707 () Bool)

(declare-fun lt!1473146 () Bool)

(assert (=> d!1223707 (= lt!1473146 (select (content!6896 (t!341478 rules!3756)) r!4008))))

(declare-fun e!2562680 () Bool)

(assert (=> d!1223707 (= lt!1473146 e!2562680)))

(declare-fun res!1688519 () Bool)

(assert (=> d!1223707 (=> (not res!1688519) (not e!2562680))))

(assert (=> d!1223707 (= res!1688519 ((_ is Cons!44713) (t!341478 rules!3756)))))

(assert (=> d!1223707 (= (contains!8996 (t!341478 rules!3756) r!4008) lt!1473146)))

(declare-fun b!4130221 () Bool)

(declare-fun e!2562681 () Bool)

(assert (=> b!4130221 (= e!2562680 e!2562681)))

(declare-fun res!1688520 () Bool)

(assert (=> b!4130221 (=> res!1688520 e!2562681)))

(assert (=> b!4130221 (= res!1688520 (= (h!50133 (t!341478 rules!3756)) r!4008))))

(declare-fun b!4130222 () Bool)

(assert (=> b!4130222 (= e!2562681 (contains!8996 (t!341478 (t!341478 rules!3756)) r!4008))))

(assert (= (and d!1223707 res!1688519) b!4130221))

(assert (= (and b!4130221 (not res!1688520)) b!4130222))

(declare-fun m!4728119 () Bool)

(assert (=> d!1223707 m!4728119))

(declare-fun m!4728121 () Bool)

(assert (=> d!1223707 m!4728121))

(declare-fun m!4728123 () Bool)

(assert (=> b!4130222 m!4728123))

(assert (=> b!4130053 d!1223707))

(declare-fun b!4130247 () Bool)

(declare-fun e!2562697 () Int)

(assert (=> b!4130247 (= e!2562697 0)))

(declare-fun b!4130249 () Bool)

(declare-fun e!2562696 () Int)

(assert (=> b!4130249 (= e!2562696 (+ 1 (getIndex!668 (t!341478 rules!3756) rBis!149)))))

(declare-fun b!4130250 () Bool)

(assert (=> b!4130250 (= e!2562696 (- 1))))

(declare-fun b!4130248 () Bool)

(assert (=> b!4130248 (= e!2562697 e!2562696)))

(declare-fun c!708732 () Bool)

(assert (=> b!4130248 (= c!708732 (and ((_ is Cons!44713) rules!3756) (not (= (h!50133 rules!3756) rBis!149))))))

(declare-fun d!1223711 () Bool)

(declare-fun lt!1473153 () Int)

(assert (=> d!1223711 (>= lt!1473153 0)))

(assert (=> d!1223711 (= lt!1473153 e!2562697)))

(declare-fun c!708733 () Bool)

(assert (=> d!1223711 (= c!708733 (and ((_ is Cons!44713) rules!3756) (= (h!50133 rules!3756) rBis!149)))))

(assert (=> d!1223711 (contains!8996 rules!3756 rBis!149)))

(assert (=> d!1223711 (= (getIndex!668 rules!3756 rBis!149) lt!1473153)))

(assert (= (and d!1223711 c!708733) b!4130247))

(assert (= (and d!1223711 (not c!708733)) b!4130248))

(assert (= (and b!4130248 c!708732) b!4130249))

(assert (= (and b!4130248 (not c!708732)) b!4130250))

(declare-fun m!4728129 () Bool)

(assert (=> b!4130249 m!4728129))

(assert (=> d!1223711 m!4728009))

(assert (=> b!4130064 d!1223711))

(declare-fun b!4130251 () Bool)

(declare-fun e!2562699 () Int)

(assert (=> b!4130251 (= e!2562699 0)))

(declare-fun b!4130253 () Bool)

(declare-fun e!2562698 () Int)

(assert (=> b!4130253 (= e!2562698 (+ 1 (getIndex!668 (t!341478 rules!3756) r!4008)))))

(declare-fun b!4130254 () Bool)

(assert (=> b!4130254 (= e!2562698 (- 1))))

(declare-fun b!4130252 () Bool)

(assert (=> b!4130252 (= e!2562699 e!2562698)))

(declare-fun c!708734 () Bool)

(assert (=> b!4130252 (= c!708734 (and ((_ is Cons!44713) rules!3756) (not (= (h!50133 rules!3756) r!4008))))))

(declare-fun d!1223717 () Bool)

(declare-fun lt!1473154 () Int)

(assert (=> d!1223717 (>= lt!1473154 0)))

(assert (=> d!1223717 (= lt!1473154 e!2562699)))

(declare-fun c!708735 () Bool)

(assert (=> d!1223717 (= c!708735 (and ((_ is Cons!44713) rules!3756) (= (h!50133 rules!3756) r!4008)))))

(assert (=> d!1223717 (contains!8996 rules!3756 r!4008)))

(assert (=> d!1223717 (= (getIndex!668 rules!3756 r!4008) lt!1473154)))

(assert (= (and d!1223717 c!708735) b!4130251))

(assert (= (and d!1223717 (not c!708735)) b!4130252))

(assert (= (and b!4130252 c!708734) b!4130253))

(assert (= (and b!4130252 (not c!708734)) b!4130254))

(declare-fun m!4728131 () Bool)

(assert (=> b!4130253 m!4728131))

(assert (=> d!1223717 m!4727989))

(assert (=> b!4130064 d!1223717))

(declare-fun d!1223719 () Bool)

(assert (=> d!1223719 (= (isEmpty!26621 p!2912) ((_ is Nil!44712) p!2912))))

(assert (=> b!4130065 d!1223719))

(declare-fun d!1223721 () Bool)

(declare-fun lt!1473157 () Bool)

(assert (=> d!1223721 (= lt!1473157 (select (content!6896 (t!341478 rules!3756)) rBis!149))))

(declare-fun e!2562700 () Bool)

(assert (=> d!1223721 (= lt!1473157 e!2562700)))

(declare-fun res!1688521 () Bool)

(assert (=> d!1223721 (=> (not res!1688521) (not e!2562700))))

(assert (=> d!1223721 (= res!1688521 ((_ is Cons!44713) (t!341478 rules!3756)))))

(assert (=> d!1223721 (= (contains!8996 (t!341478 rules!3756) rBis!149) lt!1473157)))

(declare-fun b!4130255 () Bool)

(declare-fun e!2562701 () Bool)

(assert (=> b!4130255 (= e!2562700 e!2562701)))

(declare-fun res!1688522 () Bool)

(assert (=> b!4130255 (=> res!1688522 e!2562701)))

(assert (=> b!4130255 (= res!1688522 (= (h!50133 (t!341478 rules!3756)) rBis!149))))

(declare-fun b!4130256 () Bool)

(assert (=> b!4130256 (= e!2562701 (contains!8996 (t!341478 (t!341478 rules!3756)) rBis!149))))

(assert (= (and d!1223721 res!1688521) b!4130255))

(assert (= (and b!4130255 (not res!1688522)) b!4130256))

(assert (=> d!1223721 m!4728119))

(declare-fun m!4728133 () Bool)

(assert (=> d!1223721 m!4728133))

(declare-fun m!4728135 () Bool)

(assert (=> b!4130256 m!4728135))

(assert (=> b!4130054 d!1223721))

(declare-fun d!1223723 () Bool)

(assert (=> d!1223723 (ruleValid!3128 thiss!25645 r!4008)))

(declare-fun lt!1473160 () Unit!64043)

(declare-fun choose!25251 (LexerInterface!6909 Rule!14440 List!44837) Unit!64043)

(assert (=> d!1223723 (= lt!1473160 (choose!25251 thiss!25645 r!4008 rules!3756))))

(assert (=> d!1223723 (contains!8996 rules!3756 r!4008)))

(assert (=> d!1223723 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2172 thiss!25645 r!4008 rules!3756) lt!1473160)))

(declare-fun bs!594992 () Bool)

(assert (= bs!594992 d!1223723))

(assert (=> bs!594992 m!4728011))

(declare-fun m!4728137 () Bool)

(assert (=> bs!594992 m!4728137))

(assert (=> bs!594992 m!4727989))

(assert (=> b!4130066 d!1223723))

(declare-fun d!1223725 () Bool)

(declare-fun res!1688523 () Bool)

(declare-fun e!2562702 () Bool)

(assert (=> d!1223725 (=> (not res!1688523) (not e!2562702))))

(assert (=> d!1223725 (= res!1688523 (validRegex!5502 (regex!7320 rBis!149)))))

(assert (=> d!1223725 (= (ruleValid!3128 thiss!25645 rBis!149) e!2562702)))

(declare-fun b!4130257 () Bool)

(declare-fun res!1688524 () Bool)

(assert (=> b!4130257 (=> (not res!1688524) (not e!2562702))))

(assert (=> b!4130257 (= res!1688524 (not (nullable!4294 (regex!7320 rBis!149))))))

(declare-fun b!4130258 () Bool)

(assert (=> b!4130258 (= e!2562702 (not (= (tag!8180 rBis!149) (String!51501 ""))))))

(assert (= (and d!1223725 res!1688523) b!4130257))

(assert (= (and b!4130257 res!1688524) b!4130258))

(declare-fun m!4728139 () Bool)

(assert (=> d!1223725 m!4728139))

(declare-fun m!4728141 () Bool)

(assert (=> b!4130257 m!4728141))

(assert (=> b!4130066 d!1223725))

(declare-fun d!1223727 () Bool)

(assert (=> d!1223727 (ruleValid!3128 thiss!25645 rBis!149)))

(declare-fun lt!1473161 () Unit!64043)

(assert (=> d!1223727 (= lt!1473161 (choose!25251 thiss!25645 rBis!149 rules!3756))))

(assert (=> d!1223727 (contains!8996 rules!3756 rBis!149)))

(assert (=> d!1223727 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2172 thiss!25645 rBis!149 rules!3756) lt!1473161)))

(declare-fun bs!594993 () Bool)

(assert (= bs!594993 d!1223727))

(assert (=> bs!594993 m!4728005))

(declare-fun m!4728143 () Bool)

(assert (=> bs!594993 m!4728143))

(assert (=> bs!594993 m!4728009))

(assert (=> b!4130066 d!1223727))

(declare-fun b!4130360 () Bool)

(declare-fun e!2562757 () Bool)

(assert (=> b!4130360 (= e!2562757 true)))

(declare-fun d!1223729 () Bool)

(assert (=> d!1223729 e!2562757))

(assert (= d!1223729 b!4130360))

(declare-fun order!23569 () Int)

(declare-fun lambda!128815 () Int)

(declare-fun order!23571 () Int)

(declare-fun dynLambda!19149 (Int Int) Int)

(declare-fun dynLambda!19150 (Int Int) Int)

(assert (=> b!4130360 (< (dynLambda!19149 order!23569 (toValue!9980 (transformation!7320 r!4008))) (dynLambda!19150 order!23571 lambda!128815))))

(declare-fun order!23573 () Int)

(declare-fun dynLambda!19151 (Int Int) Int)

(assert (=> b!4130360 (< (dynLambda!19151 order!23573 (toChars!9839 (transformation!7320 r!4008))) (dynLambda!19150 order!23571 lambda!128815))))

(declare-fun list!16385 (BalanceConc!26656) List!44836)

(declare-fun dynLambda!19152 (Int TokenValue!7550) BalanceConc!26656)

(declare-fun dynLambda!19153 (Int BalanceConc!26656) TokenValue!7550)

(assert (=> d!1223729 (= (list!16385 (dynLambda!19152 (toChars!9839 (transformation!7320 r!4008)) (dynLambda!19153 (toValue!9980 (transformation!7320 r!4008)) lt!1473119))) (list!16385 lt!1473119))))

(declare-fun lt!1473189 () Unit!64043)

(declare-fun ForallOf!938 (Int BalanceConc!26656) Unit!64043)

(assert (=> d!1223729 (= lt!1473189 (ForallOf!938 lambda!128815 lt!1473119))))

(assert (=> d!1223729 (= (lemmaSemiInverse!2178 (transformation!7320 r!4008) lt!1473119) lt!1473189)))

(declare-fun b_lambda!121279 () Bool)

(assert (=> (not b_lambda!121279) (not d!1223729)))

(declare-fun t!341496 () Bool)

(declare-fun tb!247879 () Bool)

(assert (=> (and b!4130051 (= (toChars!9839 (transformation!7320 (h!50133 rules!3756))) (toChars!9839 (transformation!7320 r!4008))) t!341496) tb!247879))

(declare-fun tp!1258653 () Bool)

(declare-fun e!2562760 () Bool)

(declare-fun b!4130365 () Bool)

(declare-fun inv!59306 (Conc!13531) Bool)

(assert (=> b!4130365 (= e!2562760 (and (inv!59306 (c!708700 (dynLambda!19152 (toChars!9839 (transformation!7320 r!4008)) (dynLambda!19153 (toValue!9980 (transformation!7320 r!4008)) lt!1473119)))) tp!1258653))))

(declare-fun result!301242 () Bool)

(declare-fun inv!59307 (BalanceConc!26656) Bool)

(assert (=> tb!247879 (= result!301242 (and (inv!59307 (dynLambda!19152 (toChars!9839 (transformation!7320 r!4008)) (dynLambda!19153 (toValue!9980 (transformation!7320 r!4008)) lt!1473119))) e!2562760))))

(assert (= tb!247879 b!4130365))

(declare-fun m!4728221 () Bool)

(assert (=> b!4130365 m!4728221))

(declare-fun m!4728223 () Bool)

(assert (=> tb!247879 m!4728223))

(assert (=> d!1223729 t!341496))

(declare-fun b_and!320043 () Bool)

(assert (= b_and!320011 (and (=> t!341496 result!301242) b_and!320043)))

(declare-fun t!341498 () Bool)

(declare-fun tb!247881 () Bool)

(assert (=> (and b!4130059 (= (toChars!9839 (transformation!7320 r!4008)) (toChars!9839 (transformation!7320 r!4008))) t!341498) tb!247881))

(declare-fun result!301246 () Bool)

(assert (= result!301246 result!301242))

(assert (=> d!1223729 t!341498))

(declare-fun b_and!320045 () Bool)

(assert (= b_and!320015 (and (=> t!341498 result!301246) b_and!320045)))

(declare-fun tb!247883 () Bool)

(declare-fun t!341500 () Bool)

(assert (=> (and b!4130070 (= (toChars!9839 (transformation!7320 rBis!149)) (toChars!9839 (transformation!7320 r!4008))) t!341500) tb!247883))

(declare-fun result!301248 () Bool)

(assert (= result!301248 result!301242))

(assert (=> d!1223729 t!341500))

(declare-fun b_and!320047 () Bool)

(assert (= b_and!320019 (and (=> t!341500 result!301248) b_and!320047)))

(declare-fun b_lambda!121281 () Bool)

(assert (=> (not b_lambda!121281) (not d!1223729)))

(declare-fun t!341502 () Bool)

(declare-fun tb!247885 () Bool)

(assert (=> (and b!4130051 (= (toValue!9980 (transformation!7320 (h!50133 rules!3756))) (toValue!9980 (transformation!7320 r!4008))) t!341502) tb!247885))

(declare-fun result!301250 () Bool)

(declare-fun inv!21 (TokenValue!7550) Bool)

(assert (=> tb!247885 (= result!301250 (inv!21 (dynLambda!19153 (toValue!9980 (transformation!7320 r!4008)) lt!1473119)))))

(declare-fun m!4728225 () Bool)

(assert (=> tb!247885 m!4728225))

(assert (=> d!1223729 t!341502))

(declare-fun b_and!320049 () Bool)

(assert (= b_and!320009 (and (=> t!341502 result!301250) b_and!320049)))

(declare-fun t!341504 () Bool)

(declare-fun tb!247887 () Bool)

(assert (=> (and b!4130059 (= (toValue!9980 (transformation!7320 r!4008)) (toValue!9980 (transformation!7320 r!4008))) t!341504) tb!247887))

(declare-fun result!301254 () Bool)

(assert (= result!301254 result!301250))

(assert (=> d!1223729 t!341504))

(declare-fun b_and!320051 () Bool)

(assert (= b_and!320013 (and (=> t!341504 result!301254) b_and!320051)))

(declare-fun tb!247889 () Bool)

(declare-fun t!341506 () Bool)

(assert (=> (and b!4130070 (= (toValue!9980 (transformation!7320 rBis!149)) (toValue!9980 (transformation!7320 r!4008))) t!341506) tb!247889))

(declare-fun result!301256 () Bool)

(assert (= result!301256 result!301250))

(assert (=> d!1223729 t!341506))

(declare-fun b_and!320053 () Bool)

(assert (= b_and!320017 (and (=> t!341506 result!301256) b_and!320053)))

(declare-fun m!4728227 () Bool)

(assert (=> d!1223729 m!4728227))

(declare-fun m!4728229 () Bool)

(assert (=> d!1223729 m!4728229))

(declare-fun m!4728231 () Bool)

(assert (=> d!1223729 m!4728231))

(assert (=> d!1223729 m!4728229))

(declare-fun m!4728233 () Bool)

(assert (=> d!1223729 m!4728233))

(assert (=> d!1223729 m!4728231))

(declare-fun m!4728235 () Bool)

(assert (=> d!1223729 m!4728235))

(assert (=> b!4130067 d!1223729))

(declare-fun d!1223751 () Bool)

(declare-fun lt!1473192 () List!44836)

(declare-fun ++!11576 (List!44836 List!44836) List!44836)

(assert (=> d!1223751 (= (++!11576 p!2912 lt!1473192) input!3238)))

(declare-fun e!2562766 () List!44836)

(assert (=> d!1223751 (= lt!1473192 e!2562766)))

(declare-fun c!708749 () Bool)

(assert (=> d!1223751 (= c!708749 ((_ is Cons!44712) p!2912))))

(assert (=> d!1223751 (>= (size!33106 input!3238) (size!33106 p!2912))))

(assert (=> d!1223751 (= (getSuffix!2584 input!3238 p!2912) lt!1473192)))

(declare-fun b!4130372 () Bool)

(assert (=> b!4130372 (= e!2562766 (getSuffix!2584 (tail!6475 input!3238) (t!341477 p!2912)))))

(declare-fun b!4130373 () Bool)

(assert (=> b!4130373 (= e!2562766 input!3238)))

(assert (= (and d!1223751 c!708749) b!4130372))

(assert (= (and d!1223751 (not c!708749)) b!4130373))

(declare-fun m!4728237 () Bool)

(assert (=> d!1223751 m!4728237))

(assert (=> d!1223751 m!4728075))

(assert (=> d!1223751 m!4727991))

(assert (=> b!4130372 m!4728071))

(assert (=> b!4130372 m!4728071))

(declare-fun m!4728239 () Bool)

(assert (=> b!4130372 m!4728239))

(assert (=> b!4130067 d!1223751))

(declare-fun b!4130392 () Bool)

(declare-fun res!1688570 () Bool)

(declare-fun e!2562773 () Bool)

(assert (=> b!4130392 (=> (not res!1688570) (not e!2562773))))

(declare-fun lt!1473206 () Option!9628)

(declare-fun get!14586 (Option!9628) tuple2!43150)

(assert (=> b!4130392 (= res!1688570 (< (size!33106 (_2!24709 (get!14586 lt!1473206))) (size!33106 input!3238)))))

(declare-fun b!4130393 () Bool)

(declare-fun res!1688572 () Bool)

(assert (=> b!4130393 (=> (not res!1688572) (not e!2562773))))

(assert (=> b!4130393 (= res!1688572 (= (value!229174 (_1!24709 (get!14586 lt!1473206))) (apply!10393 (transformation!7320 (rule!10412 (_1!24709 (get!14586 lt!1473206)))) (seqFromList!5437 (originalCharacters!7816 (_1!24709 (get!14586 lt!1473206)))))))))

(declare-fun b!4130395 () Bool)

(declare-fun res!1688571 () Bool)

(assert (=> b!4130395 (=> (not res!1688571) (not e!2562773))))

(declare-fun charsOf!4930 (Token!13570) BalanceConc!26656)

(assert (=> b!4130395 (= res!1688571 (= (list!16385 (charsOf!4930 (_1!24709 (get!14586 lt!1473206)))) (originalCharacters!7816 (_1!24709 (get!14586 lt!1473206)))))))

(declare-fun call!290332 () Option!9628)

(declare-fun bm!290327 () Bool)

(declare-fun maxPrefixOneRule!3047 (LexerInterface!6909 Rule!14440 List!44836) Option!9628)

(assert (=> bm!290327 (= call!290332 (maxPrefixOneRule!3047 thiss!25645 (h!50133 rules!3756) input!3238))))

(declare-fun b!4130396 () Bool)

(declare-fun res!1688569 () Bool)

(assert (=> b!4130396 (=> (not res!1688569) (not e!2562773))))

(assert (=> b!4130396 (= res!1688569 (matchR!6056 (regex!7320 (rule!10412 (_1!24709 (get!14586 lt!1473206)))) (list!16385 (charsOf!4930 (_1!24709 (get!14586 lt!1473206))))))))

(declare-fun b!4130397 () Bool)

(assert (=> b!4130397 (= e!2562773 (contains!8996 rules!3756 (rule!10412 (_1!24709 (get!14586 lt!1473206)))))))

(declare-fun b!4130398 () Bool)

(declare-fun res!1688568 () Bool)

(assert (=> b!4130398 (=> (not res!1688568) (not e!2562773))))

(assert (=> b!4130398 (= res!1688568 (= (++!11576 (list!16385 (charsOf!4930 (_1!24709 (get!14586 lt!1473206)))) (_2!24709 (get!14586 lt!1473206))) input!3238))))

(declare-fun b!4130394 () Bool)

(declare-fun e!2562775 () Option!9628)

(declare-fun lt!1473204 () Option!9628)

(declare-fun lt!1473203 () Option!9628)

(assert (=> b!4130394 (= e!2562775 (ite (and ((_ is None!9627) lt!1473204) ((_ is None!9627) lt!1473203)) None!9627 (ite ((_ is None!9627) lt!1473203) lt!1473204 (ite ((_ is None!9627) lt!1473204) lt!1473203 (ite (>= (size!33105 (_1!24709 (v!40233 lt!1473204))) (size!33105 (_1!24709 (v!40233 lt!1473203)))) lt!1473204 lt!1473203)))))))

(assert (=> b!4130394 (= lt!1473204 call!290332)))

(assert (=> b!4130394 (= lt!1473203 (maxPrefix!4101 thiss!25645 (t!341478 rules!3756) input!3238))))

(declare-fun d!1223753 () Bool)

(declare-fun e!2562774 () Bool)

(assert (=> d!1223753 e!2562774))

(declare-fun res!1688573 () Bool)

(assert (=> d!1223753 (=> res!1688573 e!2562774)))

(declare-fun isEmpty!26624 (Option!9628) Bool)

(assert (=> d!1223753 (= res!1688573 (isEmpty!26624 lt!1473206))))

(assert (=> d!1223753 (= lt!1473206 e!2562775)))

(declare-fun c!708752 () Bool)

(assert (=> d!1223753 (= c!708752 (and ((_ is Cons!44713) rules!3756) ((_ is Nil!44713) (t!341478 rules!3756))))))

(declare-fun lt!1473207 () Unit!64043)

(declare-fun lt!1473205 () Unit!64043)

(assert (=> d!1223753 (= lt!1473207 lt!1473205)))

(assert (=> d!1223753 (isPrefix!4255 input!3238 input!3238)))

(declare-fun lemmaIsPrefixRefl!2755 (List!44836 List!44836) Unit!64043)

(assert (=> d!1223753 (= lt!1473205 (lemmaIsPrefixRefl!2755 input!3238 input!3238))))

(declare-fun rulesValidInductive!2706 (LexerInterface!6909 List!44837) Bool)

(assert (=> d!1223753 (rulesValidInductive!2706 thiss!25645 rules!3756)))

(assert (=> d!1223753 (= (maxPrefix!4101 thiss!25645 rules!3756 input!3238) lt!1473206)))

(declare-fun b!4130399 () Bool)

(assert (=> b!4130399 (= e!2562775 call!290332)))

(declare-fun b!4130400 () Bool)

(assert (=> b!4130400 (= e!2562774 e!2562773)))

(declare-fun res!1688567 () Bool)

(assert (=> b!4130400 (=> (not res!1688567) (not e!2562773))))

(declare-fun isDefined!7249 (Option!9628) Bool)

(assert (=> b!4130400 (= res!1688567 (isDefined!7249 lt!1473206))))

(assert (= (and d!1223753 c!708752) b!4130399))

(assert (= (and d!1223753 (not c!708752)) b!4130394))

(assert (= (or b!4130399 b!4130394) bm!290327))

(assert (= (and d!1223753 (not res!1688573)) b!4130400))

(assert (= (and b!4130400 res!1688567) b!4130395))

(assert (= (and b!4130395 res!1688571) b!4130392))

(assert (= (and b!4130392 res!1688570) b!4130398))

(assert (= (and b!4130398 res!1688568) b!4130393))

(assert (= (and b!4130393 res!1688572) b!4130396))

(assert (= (and b!4130396 res!1688569) b!4130397))

(declare-fun m!4728241 () Bool)

(assert (=> b!4130397 m!4728241))

(declare-fun m!4728243 () Bool)

(assert (=> b!4130397 m!4728243))

(assert (=> b!4130398 m!4728241))

(declare-fun m!4728245 () Bool)

(assert (=> b!4130398 m!4728245))

(assert (=> b!4130398 m!4728245))

(declare-fun m!4728247 () Bool)

(assert (=> b!4130398 m!4728247))

(assert (=> b!4130398 m!4728247))

(declare-fun m!4728249 () Bool)

(assert (=> b!4130398 m!4728249))

(assert (=> b!4130395 m!4728241))

(assert (=> b!4130395 m!4728245))

(assert (=> b!4130395 m!4728245))

(assert (=> b!4130395 m!4728247))

(assert (=> b!4130392 m!4728241))

(declare-fun m!4728251 () Bool)

(assert (=> b!4130392 m!4728251))

(assert (=> b!4130392 m!4728075))

(assert (=> b!4130393 m!4728241))

(declare-fun m!4728253 () Bool)

(assert (=> b!4130393 m!4728253))

(assert (=> b!4130393 m!4728253))

(declare-fun m!4728255 () Bool)

(assert (=> b!4130393 m!4728255))

(declare-fun m!4728257 () Bool)

(assert (=> bm!290327 m!4728257))

(declare-fun m!4728259 () Bool)

(assert (=> d!1223753 m!4728259))

(declare-fun m!4728261 () Bool)

(assert (=> d!1223753 m!4728261))

(declare-fun m!4728263 () Bool)

(assert (=> d!1223753 m!4728263))

(declare-fun m!4728265 () Bool)

(assert (=> d!1223753 m!4728265))

(declare-fun m!4728267 () Bool)

(assert (=> b!4130394 m!4728267))

(declare-fun m!4728269 () Bool)

(assert (=> b!4130400 m!4728269))

(assert (=> b!4130396 m!4728241))

(assert (=> b!4130396 m!4728245))

(assert (=> b!4130396 m!4728245))

(assert (=> b!4130396 m!4728247))

(assert (=> b!4130396 m!4728247))

(declare-fun m!4728271 () Bool)

(assert (=> b!4130396 m!4728271))

(assert (=> b!4130067 d!1223753))

(declare-fun d!1223755 () Bool)

(declare-fun fromListB!2488 (List!44836) BalanceConc!26656)

(assert (=> d!1223755 (= (seqFromList!5437 p!2912) (fromListB!2488 p!2912))))

(declare-fun bs!594995 () Bool)

(assert (= bs!594995 d!1223755))

(declare-fun m!4728273 () Bool)

(assert (=> bs!594995 m!4728273))

(assert (=> b!4130067 d!1223755))

(declare-fun d!1223757 () Bool)

(assert (=> d!1223757 (= (apply!10393 (transformation!7320 r!4008) lt!1473119) (dynLambda!19153 (toValue!9980 (transformation!7320 r!4008)) lt!1473119))))

(declare-fun b_lambda!121283 () Bool)

(assert (=> (not b_lambda!121283) (not d!1223757)))

(assert (=> d!1223757 t!341502))

(declare-fun b_and!320055 () Bool)

(assert (= b_and!320049 (and (=> t!341502 result!301250) b_and!320055)))

(assert (=> d!1223757 t!341504))

(declare-fun b_and!320057 () Bool)

(assert (= b_and!320051 (and (=> t!341504 result!301254) b_and!320057)))

(assert (=> d!1223757 t!341506))

(declare-fun b_and!320059 () Bool)

(assert (= b_and!320053 (and (=> t!341506 result!301256) b_and!320059)))

(assert (=> d!1223757 m!4728229))

(assert (=> b!4130067 d!1223757))

(declare-fun d!1223759 () Bool)

(declare-fun lt!1473210 () Int)

(assert (=> d!1223759 (>= lt!1473210 0)))

(declare-fun e!2562778 () Int)

(assert (=> d!1223759 (= lt!1473210 e!2562778)))

(declare-fun c!708755 () Bool)

(assert (=> d!1223759 (= c!708755 ((_ is Nil!44712) p!2912))))

(assert (=> d!1223759 (= (size!33106 p!2912) lt!1473210)))

(declare-fun b!4130405 () Bool)

(assert (=> b!4130405 (= e!2562778 0)))

(declare-fun b!4130406 () Bool)

(assert (=> b!4130406 (= e!2562778 (+ 1 (size!33106 (t!341477 p!2912))))))

(assert (= (and d!1223759 c!708755) b!4130405))

(assert (= (and d!1223759 (not c!708755)) b!4130406))

(declare-fun m!4728275 () Bool)

(assert (=> b!4130406 m!4728275))

(assert (=> b!4130067 d!1223759))

(declare-fun d!1223761 () Bool)

(declare-fun res!1688576 () Bool)

(declare-fun e!2562781 () Bool)

(assert (=> d!1223761 (=> (not res!1688576) (not e!2562781))))

(declare-fun rulesValid!2870 (LexerInterface!6909 List!44837) Bool)

(assert (=> d!1223761 (= res!1688576 (rulesValid!2870 thiss!25645 rules!3756))))

(assert (=> d!1223761 (= (rulesInvariant!6206 thiss!25645 rules!3756) e!2562781)))

(declare-fun b!4130409 () Bool)

(declare-datatypes ((List!44839 0))(
  ( (Nil!44715) (Cons!44715 (h!50135 String!51500) (t!341512 List!44839)) )
))
(declare-fun noDuplicateTag!2953 (LexerInterface!6909 List!44837 List!44839) Bool)

(assert (=> b!4130409 (= e!2562781 (noDuplicateTag!2953 thiss!25645 rules!3756 Nil!44715))))

(assert (= (and d!1223761 res!1688576) b!4130409))

(declare-fun m!4728277 () Bool)

(assert (=> d!1223761 m!4728277))

(declare-fun m!4728279 () Bool)

(assert (=> b!4130409 m!4728279))

(assert (=> b!4130056 d!1223761))

(declare-fun b!4130414 () Bool)

(declare-fun e!2562784 () Bool)

(declare-fun tp!1258656 () Bool)

(assert (=> b!4130414 (= e!2562784 (and tp_is_empty!21373 tp!1258656))))

(assert (=> b!4130057 (= tp!1258597 e!2562784)))

(assert (= (and b!4130057 ((_ is Cons!44712) (t!341477 p!2912))) b!4130414))

(declare-fun e!2562787 () Bool)

(assert (=> b!4130063 (= tp!1258603 e!2562787)))

(declare-fun b!4130426 () Bool)

(declare-fun tp!1258671 () Bool)

(declare-fun tp!1258667 () Bool)

(assert (=> b!4130426 (= e!2562787 (and tp!1258671 tp!1258667))))

(declare-fun b!4130427 () Bool)

(declare-fun tp!1258669 () Bool)

(assert (=> b!4130427 (= e!2562787 tp!1258669)))

(declare-fun b!4130428 () Bool)

(declare-fun tp!1258668 () Bool)

(declare-fun tp!1258670 () Bool)

(assert (=> b!4130428 (= e!2562787 (and tp!1258668 tp!1258670))))

(declare-fun b!4130425 () Bool)

(assert (=> b!4130425 (= e!2562787 tp_is_empty!21373)))

(assert (= (and b!4130063 ((_ is ElementMatch!12225) (regex!7320 rBis!149))) b!4130425))

(assert (= (and b!4130063 ((_ is Concat!19776) (regex!7320 rBis!149))) b!4130426))

(assert (= (and b!4130063 ((_ is Star!12225) (regex!7320 rBis!149))) b!4130427))

(assert (= (and b!4130063 ((_ is Union!12225) (regex!7320 rBis!149))) b!4130428))

(declare-fun e!2562788 () Bool)

(assert (=> b!4130068 (= tp!1258596 e!2562788)))

(declare-fun b!4130430 () Bool)

(declare-fun tp!1258676 () Bool)

(declare-fun tp!1258672 () Bool)

(assert (=> b!4130430 (= e!2562788 (and tp!1258676 tp!1258672))))

(declare-fun b!4130431 () Bool)

(declare-fun tp!1258674 () Bool)

(assert (=> b!4130431 (= e!2562788 tp!1258674)))

(declare-fun b!4130432 () Bool)

(declare-fun tp!1258673 () Bool)

(declare-fun tp!1258675 () Bool)

(assert (=> b!4130432 (= e!2562788 (and tp!1258673 tp!1258675))))

(declare-fun b!4130429 () Bool)

(assert (=> b!4130429 (= e!2562788 tp_is_empty!21373)))

(assert (= (and b!4130068 ((_ is ElementMatch!12225) (regex!7320 r!4008))) b!4130429))

(assert (= (and b!4130068 ((_ is Concat!19776) (regex!7320 r!4008))) b!4130430))

(assert (= (and b!4130068 ((_ is Star!12225) (regex!7320 r!4008))) b!4130431))

(assert (= (and b!4130068 ((_ is Union!12225) (regex!7320 r!4008))) b!4130432))

(declare-fun b!4130443 () Bool)

(declare-fun b_free!117131 () Bool)

(declare-fun b_next!117835 () Bool)

(assert (=> b!4130443 (= b_free!117131 (not b_next!117835))))

(declare-fun tb!247891 () Bool)

(declare-fun t!341509 () Bool)

(assert (=> (and b!4130443 (= (toValue!9980 (transformation!7320 (h!50133 (t!341478 rules!3756)))) (toValue!9980 (transformation!7320 r!4008))) t!341509) tb!247891))

(declare-fun result!301264 () Bool)

(assert (= result!301264 result!301250))

(assert (=> d!1223729 t!341509))

(assert (=> d!1223757 t!341509))

(declare-fun b_and!320061 () Bool)

(declare-fun tp!1258687 () Bool)

(assert (=> b!4130443 (= tp!1258687 (and (=> t!341509 result!301264) b_and!320061))))

(declare-fun b_free!117133 () Bool)

(declare-fun b_next!117837 () Bool)

(assert (=> b!4130443 (= b_free!117133 (not b_next!117837))))

(declare-fun tb!247893 () Bool)

(declare-fun t!341511 () Bool)

(assert (=> (and b!4130443 (= (toChars!9839 (transformation!7320 (h!50133 (t!341478 rules!3756)))) (toChars!9839 (transformation!7320 r!4008))) t!341511) tb!247893))

(declare-fun result!301266 () Bool)

(assert (= result!301266 result!301242))

(assert (=> d!1223729 t!341511))

(declare-fun tp!1258686 () Bool)

(declare-fun b_and!320063 () Bool)

(assert (=> b!4130443 (= tp!1258686 (and (=> t!341511 result!301266) b_and!320063))))

(declare-fun e!2562799 () Bool)

(assert (=> b!4130443 (= e!2562799 (and tp!1258687 tp!1258686))))

(declare-fun tp!1258688 () Bool)

(declare-fun e!2562798 () Bool)

(declare-fun b!4130442 () Bool)

(assert (=> b!4130442 (= e!2562798 (and tp!1258688 (inv!59301 (tag!8180 (h!50133 (t!341478 rules!3756)))) (inv!59303 (transformation!7320 (h!50133 (t!341478 rules!3756)))) e!2562799))))

(declare-fun b!4130441 () Bool)

(declare-fun e!2562797 () Bool)

(declare-fun tp!1258685 () Bool)

(assert (=> b!4130441 (= e!2562797 (and e!2562798 tp!1258685))))

(assert (=> b!4130069 (= tp!1258606 e!2562797)))

(assert (= b!4130442 b!4130443))

(assert (= b!4130441 b!4130442))

(assert (= (and b!4130069 ((_ is Cons!44713) (t!341478 rules!3756))) b!4130441))

(declare-fun m!4728281 () Bool)

(assert (=> b!4130442 m!4728281))

(declare-fun m!4728283 () Bool)

(assert (=> b!4130442 m!4728283))

(declare-fun b!4130444 () Bool)

(declare-fun e!2562801 () Bool)

(declare-fun tp!1258689 () Bool)

(assert (=> b!4130444 (= e!2562801 (and tp_is_empty!21373 tp!1258689))))

(assert (=> b!4130055 (= tp!1258602 e!2562801)))

(assert (= (and b!4130055 ((_ is Cons!44712) (t!341477 input!3238))) b!4130444))

(declare-fun e!2562802 () Bool)

(assert (=> b!4130060 (= tp!1258605 e!2562802)))

(declare-fun b!4130446 () Bool)

(declare-fun tp!1258694 () Bool)

(declare-fun tp!1258690 () Bool)

(assert (=> b!4130446 (= e!2562802 (and tp!1258694 tp!1258690))))

(declare-fun b!4130447 () Bool)

(declare-fun tp!1258692 () Bool)

(assert (=> b!4130447 (= e!2562802 tp!1258692)))

(declare-fun b!4130448 () Bool)

(declare-fun tp!1258691 () Bool)

(declare-fun tp!1258693 () Bool)

(assert (=> b!4130448 (= e!2562802 (and tp!1258691 tp!1258693))))

(declare-fun b!4130445 () Bool)

(assert (=> b!4130445 (= e!2562802 tp_is_empty!21373)))

(assert (= (and b!4130060 ((_ is ElementMatch!12225) (regex!7320 (h!50133 rules!3756)))) b!4130445))

(assert (= (and b!4130060 ((_ is Concat!19776) (regex!7320 (h!50133 rules!3756)))) b!4130446))

(assert (= (and b!4130060 ((_ is Star!12225) (regex!7320 (h!50133 rules!3756)))) b!4130447))

(assert (= (and b!4130060 ((_ is Union!12225) (regex!7320 (h!50133 rules!3756)))) b!4130448))

(declare-fun b_lambda!121285 () Bool)

(assert (= b_lambda!121283 (or (and b!4130051 b_free!117115 (= (toValue!9980 (transformation!7320 (h!50133 rules!3756))) (toValue!9980 (transformation!7320 r!4008)))) (and b!4130059 b_free!117119) (and b!4130070 b_free!117123 (= (toValue!9980 (transformation!7320 rBis!149)) (toValue!9980 (transformation!7320 r!4008)))) (and b!4130443 b_free!117131 (= (toValue!9980 (transformation!7320 (h!50133 (t!341478 rules!3756)))) (toValue!9980 (transformation!7320 r!4008)))) b_lambda!121285)))

(declare-fun b_lambda!121287 () Bool)

(assert (= b_lambda!121279 (or (and b!4130051 b_free!117117 (= (toChars!9839 (transformation!7320 (h!50133 rules!3756))) (toChars!9839 (transformation!7320 r!4008)))) (and b!4130059 b_free!117121) (and b!4130070 b_free!117125 (= (toChars!9839 (transformation!7320 rBis!149)) (toChars!9839 (transformation!7320 r!4008)))) (and b!4130443 b_free!117133 (= (toChars!9839 (transformation!7320 (h!50133 (t!341478 rules!3756)))) (toChars!9839 (transformation!7320 r!4008)))) b_lambda!121287)))

(declare-fun b_lambda!121289 () Bool)

(assert (= b_lambda!121281 (or (and b!4130051 b_free!117115 (= (toValue!9980 (transformation!7320 (h!50133 rules!3756))) (toValue!9980 (transformation!7320 r!4008)))) (and b!4130059 b_free!117119) (and b!4130070 b_free!117123 (= (toValue!9980 (transformation!7320 rBis!149)) (toValue!9980 (transformation!7320 r!4008)))) (and b!4130443 b_free!117131 (= (toValue!9980 (transformation!7320 (h!50133 (t!341478 rules!3756)))) (toValue!9980 (transformation!7320 r!4008)))) b_lambda!121289)))

(check-sat (not b!4130253) (not b!4130115) (not b_next!117829) b_and!320047 (not d!1223669) (not b!4130220) (not b_next!117823) (not b!4130409) (not b!4130446) (not b!4130093) (not b!4130098) (not b!4130372) (not d!1223703) (not b!4130114) (not b!4130222) (not d!1223755) (not b!4130398) (not d!1223751) (not b!4130214) (not b!4130249) (not d!1223707) (not b!4130426) (not b!4130256) (not b!4130400) (not b_next!117835) (not b!4130202) (not b!4130257) (not b!4130431) (not b!4130192) (not b!4130196) (not b_next!117821) (not d!1223753) (not d!1223657) (not b!4130365) (not b!4130442) b_and!320055 (not b_next!117825) (not b_next!117827) (not b!4130199) (not b_lambda!121289) (not d!1223685) (not b!4130113) (not b!4130406) (not b!4130201) (not b!4130441) b_and!320043 (not d!1223677) (not b!4130428) (not b!4130414) b_and!320057 b_and!320045 (not d!1223721) (not b_next!117819) (not d!1223717) b_and!320059 (not d!1223725) (not b!4130448) (not b!4130432) (not d!1223699) (not b!4130193) (not b!4130218) (not b_next!117837) (not b!4130430) (not b!4130392) (not b!4130394) (not d!1223729) (not tb!247885) (not d!1223727) tp_is_empty!21373 (not b_lambda!121285) (not b!4130393) b_and!320063 (not d!1223661) (not b!4130397) (not tb!247879) (not b!4130075) (not b!4130395) (not d!1223723) (not b_lambda!121287) (not b!4130427) (not b!4130444) (not b!4130447) (not bm!290327) (not d!1223761) (not b!4130396) (not bm!290321) (not d!1223711) b_and!320061)
(check-sat (not b_next!117823) (not b_next!117829) (not b_next!117835) (not b_next!117821) b_and!320055 b_and!320043 (not b_next!117819) b_and!320059 (not b_next!117837) b_and!320047 b_and!320063 b_and!320061 (not b_next!117825) (not b_next!117827) b_and!320057 b_and!320045)
