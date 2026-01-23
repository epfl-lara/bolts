; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113102 () Bool)

(assert start!113102)

(declare-fun b!1289529 () Bool)

(declare-fun b_free!30427 () Bool)

(declare-fun b_next!31131 () Bool)

(assert (=> b!1289529 (= b_free!30427 (not b_next!31131))))

(declare-fun tp!375814 () Bool)

(declare-fun b_and!85799 () Bool)

(assert (=> b!1289529 (= tp!375814 b_and!85799)))

(declare-fun b_free!30429 () Bool)

(declare-fun b_next!31133 () Bool)

(assert (=> b!1289529 (= b_free!30429 (not b_next!31133))))

(declare-fun tp!375808 () Bool)

(declare-fun b_and!85801 () Bool)

(assert (=> b!1289529 (= tp!375808 b_and!85801)))

(declare-fun b!1289513 () Bool)

(declare-fun b_free!30431 () Bool)

(declare-fun b_next!31135 () Bool)

(assert (=> b!1289513 (= b_free!30431 (not b_next!31135))))

(declare-fun tp!375817 () Bool)

(declare-fun b_and!85803 () Bool)

(assert (=> b!1289513 (= tp!375817 b_and!85803)))

(declare-fun b_free!30433 () Bool)

(declare-fun b_next!31137 () Bool)

(assert (=> b!1289513 (= b_free!30433 (not b_next!31137))))

(declare-fun tp!375811 () Bool)

(declare-fun b_and!85805 () Bool)

(assert (=> b!1289513 (= tp!375811 b_and!85805)))

(declare-fun b!1289528 () Bool)

(declare-fun b_free!30435 () Bool)

(declare-fun b_next!31139 () Bool)

(assert (=> b!1289528 (= b_free!30435 (not b_next!31139))))

(declare-fun tp!375816 () Bool)

(declare-fun b_and!85807 () Bool)

(assert (=> b!1289528 (= tp!375816 b_and!85807)))

(declare-fun b_free!30437 () Bool)

(declare-fun b_next!31141 () Bool)

(assert (=> b!1289528 (= b_free!30437 (not b_next!31141))))

(declare-fun tp!375812 () Bool)

(declare-fun b_and!85809 () Bool)

(assert (=> b!1289528 (= tp!375812 b_and!85809)))

(declare-fun b!1289520 () Bool)

(assert (=> b!1289520 true))

(assert (=> b!1289520 true))

(declare-fun tp!375807 () Bool)

(declare-fun b!1289511 () Bool)

(declare-fun e!826978 () Bool)

(declare-datatypes ((List!12937 0))(
  ( (Nil!12871) (Cons!12871 (h!18272 (_ BitVec 16)) (t!117040 List!12937)) )
))
(declare-datatypes ((TokenValue!2307 0))(
  ( (FloatLiteralValue!4614 (text!16594 List!12937)) (TokenValueExt!2306 (__x!8443 Int)) (Broken!11535 (value!72791 List!12937)) (Object!2372) (End!2307) (Def!2307) (Underscore!2307) (Match!2307) (Else!2307) (Error!2307) (Case!2307) (If!2307) (Extends!2307) (Abstract!2307) (Class!2307) (Val!2307) (DelimiterValue!4614 (del!2367 List!12937)) (KeywordValue!2313 (value!72792 List!12937)) (CommentValue!4614 (value!72793 List!12937)) (WhitespaceValue!4614 (value!72794 List!12937)) (IndentationValue!2307 (value!72795 List!12937)) (String!15770) (Int32!2307) (Broken!11536 (value!72796 List!12937)) (Boolean!2308) (Unit!19039) (OperatorValue!2310 (op!2367 List!12937)) (IdentifierValue!4614 (value!72797 List!12937)) (IdentifierValue!4615 (value!72798 List!12937)) (WhitespaceValue!4615 (value!72799 List!12937)) (True!4614) (False!4614) (Broken!11537 (value!72800 List!12937)) (Broken!11538 (value!72801 List!12937)) (True!4615) (RightBrace!2307) (RightBracket!2307) (Colon!2307) (Null!2307) (Comma!2307) (LeftBracket!2307) (False!4615) (LeftBrace!2307) (ImaginaryLiteralValue!2307 (text!16595 List!12937)) (StringLiteralValue!6921 (value!72802 List!12937)) (EOFValue!2307 (value!72803 List!12937)) (IdentValue!2307 (value!72804 List!12937)) (DelimiterValue!4615 (value!72805 List!12937)) (DedentValue!2307 (value!72806 List!12937)) (NewLineValue!2307 (value!72807 List!12937)) (IntegerValue!6921 (value!72808 (_ BitVec 32)) (text!16596 List!12937)) (IntegerValue!6922 (value!72809 Int) (text!16597 List!12937)) (Times!2307) (Or!2307) (Equal!2307) (Minus!2307) (Broken!11539 (value!72810 List!12937)) (And!2307) (Div!2307) (LessEqual!2307) (Mod!2307) (Concat!5838) (Not!2307) (Plus!2307) (SpaceValue!2307 (value!72811 List!12937)) (IntegerValue!6923 (value!72812 Int) (text!16598 List!12937)) (StringLiteralValue!6922 (text!16599 List!12937)) (FloatLiteralValue!4615 (text!16600 List!12937)) (BytesLiteralValue!2307 (value!72813 List!12937)) (CommentValue!4615 (value!72814 List!12937)) (StringLiteralValue!6923 (value!72815 List!12937)) (ErrorTokenValue!2307 (msg!2368 List!12937)) )
))
(declare-datatypes ((C!7352 0))(
  ( (C!7353 (val!4236 Int)) )
))
(declare-datatypes ((List!12938 0))(
  ( (Nil!12872) (Cons!12872 (h!18273 C!7352) (t!117041 List!12938)) )
))
(declare-datatypes ((IArray!8463 0))(
  ( (IArray!8464 (innerList!4289 List!12938)) )
))
(declare-datatypes ((String!15771 0))(
  ( (String!15772 (value!72816 String)) )
))
(declare-datatypes ((Conc!4229 0))(
  ( (Node!4229 (left!11079 Conc!4229) (right!11409 Conc!4229) (csize!8688 Int) (cheight!4440 Int)) (Leaf!6534 (xs!6940 IArray!8463) (csize!8689 Int)) (Empty!4229) )
))
(declare-datatypes ((BalanceConc!8398 0))(
  ( (BalanceConc!8399 (c!212265 Conc!4229)) )
))
(declare-datatypes ((Regex!3531 0))(
  ( (ElementMatch!3531 (c!212266 C!7352)) (Concat!5839 (regOne!7574 Regex!3531) (regTwo!7574 Regex!3531)) (EmptyExpr!3531) (Star!3531 (reg!3860 Regex!3531)) (EmptyLang!3531) (Union!3531 (regOne!7575 Regex!3531) (regTwo!7575 Regex!3531)) )
))
(declare-datatypes ((TokenValueInjection!4274 0))(
  ( (TokenValueInjection!4275 (toValue!3412 Int) (toChars!3271 Int)) )
))
(declare-datatypes ((Rule!4234 0))(
  ( (Rule!4235 (regex!2217 Regex!3531) (tag!2479 String!15771) (isSeparator!2217 Bool) (transformation!2217 TokenValueInjection!4274)) )
))
(declare-datatypes ((Token!4096 0))(
  ( (Token!4097 (value!72817 TokenValue!2307) (rule!3956 Rule!4234) (size!10499 Int) (originalCharacters!3079 List!12938)) )
))
(declare-fun t2!34 () Token!4096)

(declare-fun e!826980 () Bool)

(declare-fun inv!21 (TokenValue!2307) Bool)

(assert (=> b!1289511 (= e!826980 (and (inv!21 (value!72817 t2!34)) e!826978 tp!375807))))

(declare-fun b!1289512 () Bool)

(declare-fun e!826972 () Bool)

(declare-fun e!826977 () Bool)

(assert (=> b!1289512 (= e!826972 e!826977)))

(declare-fun res!577965 () Bool)

(assert (=> b!1289512 (=> (not res!577965) (not e!826977))))

(declare-fun lt!424697 () BalanceConc!8398)

(declare-fun size!10500 (BalanceConc!8398) Int)

(assert (=> b!1289512 (= res!577965 (> (size!10500 lt!424697) 0))))

(declare-fun charsOf!1189 (Token!4096) BalanceConc!8398)

(assert (=> b!1289512 (= lt!424697 (charsOf!1189 t2!34))))

(declare-fun e!826968 () Bool)

(assert (=> b!1289513 (= e!826968 (and tp!375817 tp!375811))))

(declare-fun b!1289514 () Bool)

(declare-fun res!577964 () Bool)

(assert (=> b!1289514 (=> (not res!577964) (not e!826972))))

(declare-datatypes ((LexerInterface!1912 0))(
  ( (LexerInterfaceExt!1909 (__x!8444 Int)) (Lexer!1910) )
))
(declare-fun thiss!19762 () LexerInterface!1912)

(declare-datatypes ((List!12939 0))(
  ( (Nil!12873) (Cons!12873 (h!18274 Rule!4234) (t!117042 List!12939)) )
))
(declare-fun rules!2550 () List!12939)

(declare-fun rulesProduceIndividualToken!881 (LexerInterface!1912 List!12939 Token!4096) Bool)

(assert (=> b!1289514 (= res!577964 (rulesProduceIndividualToken!881 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1289515 () Bool)

(declare-fun res!577963 () Bool)

(assert (=> b!1289515 (=> (not res!577963) (not e!826972))))

(declare-fun rulesInvariant!1782 (LexerInterface!1912 List!12939) Bool)

(assert (=> b!1289515 (= res!577963 (rulesInvariant!1782 thiss!19762 rules!2550))))

(declare-fun b!1289516 () Bool)

(declare-fun e!826969 () Bool)

(assert (=> b!1289516 (= e!826977 e!826969)))

(declare-fun res!577962 () Bool)

(assert (=> b!1289516 (=> (not res!577962) (not e!826969))))

(declare-fun lt!424695 () Regex!3531)

(declare-fun lt!424698 () List!12938)

(declare-fun prefixMatch!44 (Regex!3531 List!12938) Bool)

(assert (=> b!1289516 (= res!577962 (prefixMatch!44 lt!424695 lt!424698))))

(declare-fun rulesRegex!102 (LexerInterface!1912 List!12939) Regex!3531)

(assert (=> b!1289516 (= lt!424695 (rulesRegex!102 thiss!19762 rules!2550))))

(declare-fun t1!34 () Token!4096)

(declare-fun ++!3257 (List!12938 List!12938) List!12938)

(declare-fun list!4797 (BalanceConc!8398) List!12938)

(declare-fun apply!2791 (BalanceConc!8398 Int) C!7352)

(assert (=> b!1289516 (= lt!424698 (++!3257 (list!4797 (charsOf!1189 t1!34)) (Cons!12872 (apply!2791 lt!424697 0) Nil!12872)))))

(declare-fun tp!375815 () Bool)

(declare-fun b!1289517 () Bool)

(declare-fun inv!17289 (String!15771) Bool)

(declare-fun inv!17292 (TokenValueInjection!4274) Bool)

(assert (=> b!1289517 (= e!826978 (and tp!375815 (inv!17289 (tag!2479 (rule!3956 t2!34))) (inv!17292 (transformation!2217 (rule!3956 t2!34))) e!826968))))

(declare-fun b!1289518 () Bool)

(declare-fun res!577966 () Bool)

(assert (=> b!1289518 (=> (not res!577966) (not e!826972))))

(declare-fun isEmpty!7639 (List!12939) Bool)

(assert (=> b!1289518 (= res!577966 (not (isEmpty!7639 rules!2550)))))

(declare-fun b!1289519 () Bool)

(declare-fun res!577967 () Bool)

(assert (=> b!1289519 (=> (not res!577967) (not e!826977))))

(declare-fun separableTokensPredicate!195 (LexerInterface!1912 Token!4096 Token!4096 List!12939) Bool)

(assert (=> b!1289519 (= res!577967 (not (separableTokensPredicate!195 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun res!577969 () Bool)

(assert (=> start!113102 (=> (not res!577969) (not e!826972))))

(get-info :version)

(assert (=> start!113102 (= res!577969 ((_ is Lexer!1910) thiss!19762))))

(assert (=> start!113102 e!826972))

(assert (=> start!113102 true))

(declare-fun e!826976 () Bool)

(assert (=> start!113102 e!826976))

(declare-fun e!826970 () Bool)

(declare-fun inv!17293 (Token!4096) Bool)

(assert (=> start!113102 (and (inv!17293 t1!34) e!826970)))

(assert (=> start!113102 (and (inv!17293 t2!34) e!826980)))

(declare-fun validRegex!1519 (Regex!3531) Bool)

(assert (=> b!1289520 (= e!826969 (not (validRegex!1519 lt!424695)))))

(declare-fun lambda!50609 () Int)

(declare-fun Exists!689 (Int) Bool)

(assert (=> b!1289520 (Exists!689 lambda!50609)))

(declare-datatypes ((Unit!19040 0))(
  ( (Unit!19041) )
))
(declare-fun lt!424696 () Unit!19040)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!7 (Regex!3531 List!12938) Unit!19040)

(assert (=> b!1289520 (= lt!424696 (lemmaPrefixMatchThenExistsStringThatMatches!7 lt!424695 lt!424698))))

(declare-fun b!1289521 () Bool)

(declare-fun res!577960 () Bool)

(assert (=> b!1289521 (=> (not res!577960) (not e!826972))))

(assert (=> b!1289521 (= res!577960 (rulesProduceIndividualToken!881 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1289522 () Bool)

(declare-fun e!826966 () Bool)

(declare-fun tp!375809 () Bool)

(assert (=> b!1289522 (= e!826976 (and e!826966 tp!375809))))

(declare-fun tp!375813 () Bool)

(declare-fun b!1289523 () Bool)

(declare-fun e!826975 () Bool)

(assert (=> b!1289523 (= e!826970 (and (inv!21 (value!72817 t1!34)) e!826975 tp!375813))))

(declare-fun b!1289524 () Bool)

(declare-fun res!577968 () Bool)

(assert (=> b!1289524 (=> (not res!577968) (not e!826972))))

(assert (=> b!1289524 (= res!577968 (not (= (isSeparator!2217 (rule!3956 t1!34)) (isSeparator!2217 (rule!3956 t2!34)))))))

(declare-fun e!826981 () Bool)

(declare-fun tp!375818 () Bool)

(declare-fun b!1289525 () Bool)

(assert (=> b!1289525 (= e!826966 (and tp!375818 (inv!17289 (tag!2479 (h!18274 rules!2550))) (inv!17292 (transformation!2217 (h!18274 rules!2550))) e!826981))))

(declare-fun e!826982 () Bool)

(declare-fun tp!375810 () Bool)

(declare-fun b!1289526 () Bool)

(assert (=> b!1289526 (= e!826975 (and tp!375810 (inv!17289 (tag!2479 (rule!3956 t1!34))) (inv!17292 (transformation!2217 (rule!3956 t1!34))) e!826982))))

(declare-fun b!1289527 () Bool)

(declare-fun res!577961 () Bool)

(assert (=> b!1289527 (=> (not res!577961) (not e!826977))))

(declare-fun sepAndNonSepRulesDisjointChars!590 (List!12939 List!12939) Bool)

(assert (=> b!1289527 (= res!577961 (sepAndNonSepRulesDisjointChars!590 rules!2550 rules!2550))))

(assert (=> b!1289528 (= e!826982 (and tp!375816 tp!375812))))

(assert (=> b!1289529 (= e!826981 (and tp!375814 tp!375808))))

(assert (= (and start!113102 res!577969) b!1289518))

(assert (= (and b!1289518 res!577966) b!1289515))

(assert (= (and b!1289515 res!577963) b!1289521))

(assert (= (and b!1289521 res!577960) b!1289514))

(assert (= (and b!1289514 res!577964) b!1289524))

(assert (= (and b!1289524 res!577968) b!1289512))

(assert (= (and b!1289512 res!577965) b!1289527))

(assert (= (and b!1289527 res!577961) b!1289519))

(assert (= (and b!1289519 res!577967) b!1289516))

(assert (= (and b!1289516 res!577962) b!1289520))

(assert (= b!1289525 b!1289529))

(assert (= b!1289522 b!1289525))

(assert (= (and start!113102 ((_ is Cons!12873) rules!2550)) b!1289522))

(assert (= b!1289526 b!1289528))

(assert (= b!1289523 b!1289526))

(assert (= start!113102 b!1289523))

(assert (= b!1289517 b!1289513))

(assert (= b!1289511 b!1289517))

(assert (= start!113102 b!1289511))

(declare-fun m!1440137 () Bool)

(assert (=> b!1289519 m!1440137))

(declare-fun m!1440139 () Bool)

(assert (=> b!1289517 m!1440139))

(declare-fun m!1440141 () Bool)

(assert (=> b!1289517 m!1440141))

(declare-fun m!1440143 () Bool)

(assert (=> b!1289515 m!1440143))

(declare-fun m!1440145 () Bool)

(assert (=> b!1289526 m!1440145))

(declare-fun m!1440147 () Bool)

(assert (=> b!1289526 m!1440147))

(declare-fun m!1440149 () Bool)

(assert (=> b!1289520 m!1440149))

(declare-fun m!1440151 () Bool)

(assert (=> b!1289520 m!1440151))

(declare-fun m!1440153 () Bool)

(assert (=> b!1289520 m!1440153))

(declare-fun m!1440155 () Bool)

(assert (=> b!1289518 m!1440155))

(declare-fun m!1440157 () Bool)

(assert (=> b!1289527 m!1440157))

(declare-fun m!1440159 () Bool)

(assert (=> b!1289511 m!1440159))

(declare-fun m!1440161 () Bool)

(assert (=> b!1289523 m!1440161))

(declare-fun m!1440163 () Bool)

(assert (=> b!1289514 m!1440163))

(declare-fun m!1440165 () Bool)

(assert (=> b!1289512 m!1440165))

(declare-fun m!1440167 () Bool)

(assert (=> b!1289512 m!1440167))

(declare-fun m!1440169 () Bool)

(assert (=> b!1289525 m!1440169))

(declare-fun m!1440171 () Bool)

(assert (=> b!1289525 m!1440171))

(declare-fun m!1440173 () Bool)

(assert (=> start!113102 m!1440173))

(declare-fun m!1440175 () Bool)

(assert (=> start!113102 m!1440175))

(declare-fun m!1440177 () Bool)

(assert (=> b!1289521 m!1440177))

(declare-fun m!1440179 () Bool)

(assert (=> b!1289516 m!1440179))

(declare-fun m!1440181 () Bool)

(assert (=> b!1289516 m!1440181))

(declare-fun m!1440183 () Bool)

(assert (=> b!1289516 m!1440183))

(declare-fun m!1440185 () Bool)

(assert (=> b!1289516 m!1440185))

(assert (=> b!1289516 m!1440183))

(assert (=> b!1289516 m!1440179))

(declare-fun m!1440187 () Bool)

(assert (=> b!1289516 m!1440187))

(declare-fun m!1440189 () Bool)

(assert (=> b!1289516 m!1440189))

(check-sat (not b!1289523) (not b_next!31131) (not b!1289512) b_and!85805 (not b!1289519) (not b_next!31141) (not b_next!31133) (not b!1289518) (not b!1289525) (not b!1289520) (not b_next!31135) (not b!1289526) b_and!85803 (not b!1289522) b_and!85801 b_and!85807 (not b!1289514) (not b!1289511) b_and!85799 (not b_next!31137) (not b!1289527) (not b!1289521) b_and!85809 (not b!1289515) (not start!113102) (not b_next!31139) (not b!1289517) (not b!1289516))
(check-sat b_and!85803 (not b_next!31131) b_and!85809 b_and!85805 (not b_next!31141) (not b_next!31133) (not b_next!31139) (not b_next!31135) b_and!85801 b_and!85807 b_and!85799 (not b_next!31137))
(get-model)

(declare-fun d!363437 () Bool)

(assert (=> d!363437 (= (inv!17289 (tag!2479 (rule!3956 t2!34))) (= (mod (str.len (value!72816 (tag!2479 (rule!3956 t2!34)))) 2) 0))))

(assert (=> b!1289517 d!363437))

(declare-fun d!363443 () Bool)

(declare-fun res!577980 () Bool)

(declare-fun e!826988 () Bool)

(assert (=> d!363443 (=> (not res!577980) (not e!826988))))

(declare-fun semiInverseModEq!837 (Int Int) Bool)

(assert (=> d!363443 (= res!577980 (semiInverseModEq!837 (toChars!3271 (transformation!2217 (rule!3956 t2!34))) (toValue!3412 (transformation!2217 (rule!3956 t2!34)))))))

(assert (=> d!363443 (= (inv!17292 (transformation!2217 (rule!3956 t2!34))) e!826988)))

(declare-fun b!1289541 () Bool)

(declare-fun equivClasses!796 (Int Int) Bool)

(assert (=> b!1289541 (= e!826988 (equivClasses!796 (toChars!3271 (transformation!2217 (rule!3956 t2!34))) (toValue!3412 (transformation!2217 (rule!3956 t2!34)))))))

(assert (= (and d!363443 res!577980) b!1289541))

(declare-fun m!1440205 () Bool)

(assert (=> d!363443 m!1440205))

(declare-fun m!1440207 () Bool)

(assert (=> b!1289541 m!1440207))

(assert (=> b!1289517 d!363443))

(declare-fun d!363449 () Bool)

(declare-fun res!577995 () Bool)

(declare-fun e!827007 () Bool)

(assert (=> d!363449 (=> res!577995 e!827007)))

(assert (=> d!363449 (= res!577995 (not ((_ is Cons!12873) rules!2550)))))

(assert (=> d!363449 (= (sepAndNonSepRulesDisjointChars!590 rules!2550 rules!2550) e!827007)))

(declare-fun b!1289564 () Bool)

(declare-fun e!827008 () Bool)

(assert (=> b!1289564 (= e!827007 e!827008)))

(declare-fun res!577996 () Bool)

(assert (=> b!1289564 (=> (not res!577996) (not e!827008))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!281 (Rule!4234 List!12939) Bool)

(assert (=> b!1289564 (= res!577996 (ruleDisjointCharsFromAllFromOtherType!281 (h!18274 rules!2550) rules!2550))))

(declare-fun b!1289565 () Bool)

(assert (=> b!1289565 (= e!827008 (sepAndNonSepRulesDisjointChars!590 rules!2550 (t!117042 rules!2550)))))

(assert (= (and d!363449 (not res!577995)) b!1289564))

(assert (= (and b!1289564 res!577996) b!1289565))

(declare-fun m!1440209 () Bool)

(assert (=> b!1289564 m!1440209))

(declare-fun m!1440211 () Bool)

(assert (=> b!1289565 m!1440211))

(assert (=> b!1289527 d!363449))

(declare-fun d!363451 () Bool)

(declare-fun list!4800 (Conc!4229) List!12938)

(assert (=> d!363451 (= (list!4797 (charsOf!1189 t1!34)) (list!4800 (c!212265 (charsOf!1189 t1!34))))))

(declare-fun bs!328425 () Bool)

(assert (= bs!328425 d!363451))

(declare-fun m!1440221 () Bool)

(assert (=> bs!328425 m!1440221))

(assert (=> b!1289516 d!363451))

(declare-fun e!827026 () Bool)

(declare-fun lt!424712 () List!12938)

(declare-fun b!1289596 () Bool)

(assert (=> b!1289596 (= e!827026 (or (not (= (Cons!12872 (apply!2791 lt!424697 0) Nil!12872) Nil!12872)) (= lt!424712 (list!4797 (charsOf!1189 t1!34)))))))

(declare-fun b!1289593 () Bool)

(declare-fun e!827027 () List!12938)

(assert (=> b!1289593 (= e!827027 (Cons!12872 (apply!2791 lt!424697 0) Nil!12872))))

(declare-fun b!1289595 () Bool)

(declare-fun res!578012 () Bool)

(assert (=> b!1289595 (=> (not res!578012) (not e!827026))))

(declare-fun size!10504 (List!12938) Int)

(assert (=> b!1289595 (= res!578012 (= (size!10504 lt!424712) (+ (size!10504 (list!4797 (charsOf!1189 t1!34))) (size!10504 (Cons!12872 (apply!2791 lt!424697 0) Nil!12872)))))))

(declare-fun d!363457 () Bool)

(assert (=> d!363457 e!827026))

(declare-fun res!578013 () Bool)

(assert (=> d!363457 (=> (not res!578013) (not e!827026))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1819 (List!12938) (InoxSet C!7352))

(assert (=> d!363457 (= res!578013 (= (content!1819 lt!424712) ((_ map or) (content!1819 (list!4797 (charsOf!1189 t1!34))) (content!1819 (Cons!12872 (apply!2791 lt!424697 0) Nil!12872)))))))

(assert (=> d!363457 (= lt!424712 e!827027)))

(declare-fun c!212277 () Bool)

(assert (=> d!363457 (= c!212277 ((_ is Nil!12872) (list!4797 (charsOf!1189 t1!34))))))

(assert (=> d!363457 (= (++!3257 (list!4797 (charsOf!1189 t1!34)) (Cons!12872 (apply!2791 lt!424697 0) Nil!12872)) lt!424712)))

(declare-fun b!1289594 () Bool)

(assert (=> b!1289594 (= e!827027 (Cons!12872 (h!18273 (list!4797 (charsOf!1189 t1!34))) (++!3257 (t!117041 (list!4797 (charsOf!1189 t1!34))) (Cons!12872 (apply!2791 lt!424697 0) Nil!12872))))))

(assert (= (and d!363457 c!212277) b!1289593))

(assert (= (and d!363457 (not c!212277)) b!1289594))

(assert (= (and d!363457 res!578013) b!1289595))

(assert (= (and b!1289595 res!578012) b!1289596))

(declare-fun m!1440227 () Bool)

(assert (=> b!1289595 m!1440227))

(assert (=> b!1289595 m!1440179))

(declare-fun m!1440229 () Bool)

(assert (=> b!1289595 m!1440229))

(declare-fun m!1440231 () Bool)

(assert (=> b!1289595 m!1440231))

(declare-fun m!1440233 () Bool)

(assert (=> d!363457 m!1440233))

(assert (=> d!363457 m!1440179))

(declare-fun m!1440235 () Bool)

(assert (=> d!363457 m!1440235))

(declare-fun m!1440237 () Bool)

(assert (=> d!363457 m!1440237))

(declare-fun m!1440239 () Bool)

(assert (=> b!1289594 m!1440239))

(assert (=> b!1289516 d!363457))

(declare-fun d!363461 () Bool)

(declare-fun lt!424716 () BalanceConc!8398)

(assert (=> d!363461 (= (list!4797 lt!424716) (originalCharacters!3079 t1!34))))

(declare-fun dynLambda!5618 (Int TokenValue!2307) BalanceConc!8398)

(assert (=> d!363461 (= lt!424716 (dynLambda!5618 (toChars!3271 (transformation!2217 (rule!3956 t1!34))) (value!72817 t1!34)))))

(assert (=> d!363461 (= (charsOf!1189 t1!34) lt!424716)))

(declare-fun b_lambda!36785 () Bool)

(assert (=> (not b_lambda!36785) (not d!363461)))

(declare-fun tb!69255 () Bool)

(declare-fun t!117050 () Bool)

(assert (=> (and b!1289529 (= (toChars!3271 (transformation!2217 (h!18274 rules!2550))) (toChars!3271 (transformation!2217 (rule!3956 t1!34)))) t!117050) tb!69255))

(declare-fun b!1289611 () Bool)

(declare-fun e!827035 () Bool)

(declare-fun tp!375824 () Bool)

(declare-fun inv!17296 (Conc!4229) Bool)

(assert (=> b!1289611 (= e!827035 (and (inv!17296 (c!212265 (dynLambda!5618 (toChars!3271 (transformation!2217 (rule!3956 t1!34))) (value!72817 t1!34)))) tp!375824))))

(declare-fun result!83902 () Bool)

(declare-fun inv!17297 (BalanceConc!8398) Bool)

(assert (=> tb!69255 (= result!83902 (and (inv!17297 (dynLambda!5618 (toChars!3271 (transformation!2217 (rule!3956 t1!34))) (value!72817 t1!34))) e!827035))))

(assert (= tb!69255 b!1289611))

(declare-fun m!1440269 () Bool)

(assert (=> b!1289611 m!1440269))

(declare-fun m!1440271 () Bool)

(assert (=> tb!69255 m!1440271))

(assert (=> d!363461 t!117050))

(declare-fun b_and!85817 () Bool)

(assert (= b_and!85801 (and (=> t!117050 result!83902) b_and!85817)))

(declare-fun t!117052 () Bool)

(declare-fun tb!69257 () Bool)

(assert (=> (and b!1289513 (= (toChars!3271 (transformation!2217 (rule!3956 t2!34))) (toChars!3271 (transformation!2217 (rule!3956 t1!34)))) t!117052) tb!69257))

(declare-fun result!83906 () Bool)

(assert (= result!83906 result!83902))

(assert (=> d!363461 t!117052))

(declare-fun b_and!85819 () Bool)

(assert (= b_and!85805 (and (=> t!117052 result!83906) b_and!85819)))

(declare-fun t!117054 () Bool)

(declare-fun tb!69259 () Bool)

(assert (=> (and b!1289528 (= (toChars!3271 (transformation!2217 (rule!3956 t1!34))) (toChars!3271 (transformation!2217 (rule!3956 t1!34)))) t!117054) tb!69259))

(declare-fun result!83908 () Bool)

(assert (= result!83908 result!83902))

(assert (=> d!363461 t!117054))

(declare-fun b_and!85821 () Bool)

(assert (= b_and!85809 (and (=> t!117054 result!83908) b_and!85821)))

(declare-fun m!1440273 () Bool)

(assert (=> d!363461 m!1440273))

(declare-fun m!1440275 () Bool)

(assert (=> d!363461 m!1440275))

(assert (=> b!1289516 d!363461))

(declare-fun d!363469 () Bool)

(declare-fun lt!424723 () Unit!19040)

(declare-fun lemma!40 (List!12939 LexerInterface!1912 List!12939) Unit!19040)

(assert (=> d!363469 (= lt!424723 (lemma!40 rules!2550 thiss!19762 rules!2550))))

(declare-fun lambda!50615 () Int)

(declare-datatypes ((List!12943 0))(
  ( (Nil!12877) (Cons!12877 (h!18278 Regex!3531) (t!117080 List!12943)) )
))
(declare-fun generalisedUnion!44 (List!12943) Regex!3531)

(declare-fun map!2802 (List!12939 Int) List!12943)

(assert (=> d!363469 (= (rulesRegex!102 thiss!19762 rules!2550) (generalisedUnion!44 (map!2802 rules!2550 lambda!50615)))))

(declare-fun bs!328429 () Bool)

(assert (= bs!328429 d!363469))

(declare-fun m!1440289 () Bool)

(assert (=> bs!328429 m!1440289))

(declare-fun m!1440291 () Bool)

(assert (=> bs!328429 m!1440291))

(assert (=> bs!328429 m!1440291))

(declare-fun m!1440293 () Bool)

(assert (=> bs!328429 m!1440293))

(assert (=> b!1289516 d!363469))

(declare-fun d!363475 () Bool)

(declare-fun lt!424729 () C!7352)

(declare-fun apply!2795 (List!12938 Int) C!7352)

(assert (=> d!363475 (= lt!424729 (apply!2795 (list!4797 lt!424697) 0))))

(declare-fun apply!2796 (Conc!4229 Int) C!7352)

(assert (=> d!363475 (= lt!424729 (apply!2796 (c!212265 lt!424697) 0))))

(declare-fun e!827042 () Bool)

(assert (=> d!363475 e!827042))

(declare-fun res!578021 () Bool)

(assert (=> d!363475 (=> (not res!578021) (not e!827042))))

(assert (=> d!363475 (= res!578021 (<= 0 0))))

(assert (=> d!363475 (= (apply!2791 lt!424697 0) lt!424729)))

(declare-fun b!1289618 () Bool)

(assert (=> b!1289618 (= e!827042 (< 0 (size!10500 lt!424697)))))

(assert (= (and d!363475 res!578021) b!1289618))

(declare-fun m!1440301 () Bool)

(assert (=> d!363475 m!1440301))

(assert (=> d!363475 m!1440301))

(declare-fun m!1440303 () Bool)

(assert (=> d!363475 m!1440303))

(declare-fun m!1440305 () Bool)

(assert (=> d!363475 m!1440305))

(assert (=> b!1289618 m!1440165))

(assert (=> b!1289516 d!363475))

(declare-fun d!363479 () Bool)

(declare-fun c!212284 () Bool)

(declare-fun isEmpty!7642 (List!12938) Bool)

(assert (=> d!363479 (= c!212284 (isEmpty!7642 lt!424698))))

(declare-fun e!827045 () Bool)

(assert (=> d!363479 (= (prefixMatch!44 lt!424695 lt!424698) e!827045)))

(declare-fun b!1289623 () Bool)

(declare-fun lostCause!246 (Regex!3531) Bool)

(assert (=> b!1289623 (= e!827045 (not (lostCause!246 lt!424695)))))

(declare-fun b!1289624 () Bool)

(declare-fun derivativeStep!869 (Regex!3531 C!7352) Regex!3531)

(declare-fun head!2206 (List!12938) C!7352)

(declare-fun tail!1834 (List!12938) List!12938)

(assert (=> b!1289624 (= e!827045 (prefixMatch!44 (derivativeStep!869 lt!424695 (head!2206 lt!424698)) (tail!1834 lt!424698)))))

(assert (= (and d!363479 c!212284) b!1289623))

(assert (= (and d!363479 (not c!212284)) b!1289624))

(declare-fun m!1440307 () Bool)

(assert (=> d!363479 m!1440307))

(declare-fun m!1440309 () Bool)

(assert (=> b!1289623 m!1440309))

(declare-fun m!1440311 () Bool)

(assert (=> b!1289624 m!1440311))

(assert (=> b!1289624 m!1440311))

(declare-fun m!1440313 () Bool)

(assert (=> b!1289624 m!1440313))

(declare-fun m!1440315 () Bool)

(assert (=> b!1289624 m!1440315))

(assert (=> b!1289624 m!1440313))

(assert (=> b!1289624 m!1440315))

(declare-fun m!1440317 () Bool)

(assert (=> b!1289624 m!1440317))

(assert (=> b!1289516 d!363479))

(declare-fun d!363481 () Bool)

(assert (=> d!363481 (= (inv!17289 (tag!2479 (rule!3956 t1!34))) (= (mod (str.len (value!72816 (tag!2479 (rule!3956 t1!34)))) 2) 0))))

(assert (=> b!1289526 d!363481))

(declare-fun d!363483 () Bool)

(declare-fun res!578022 () Bool)

(declare-fun e!827046 () Bool)

(assert (=> d!363483 (=> (not res!578022) (not e!827046))))

(assert (=> d!363483 (= res!578022 (semiInverseModEq!837 (toChars!3271 (transformation!2217 (rule!3956 t1!34))) (toValue!3412 (transformation!2217 (rule!3956 t1!34)))))))

(assert (=> d!363483 (= (inv!17292 (transformation!2217 (rule!3956 t1!34))) e!827046)))

(declare-fun b!1289625 () Bool)

(assert (=> b!1289625 (= e!827046 (equivClasses!796 (toChars!3271 (transformation!2217 (rule!3956 t1!34))) (toValue!3412 (transformation!2217 (rule!3956 t1!34)))))))

(assert (= (and d!363483 res!578022) b!1289625))

(declare-fun m!1440319 () Bool)

(assert (=> d!363483 m!1440319))

(declare-fun m!1440321 () Bool)

(assert (=> b!1289625 m!1440321))

(assert (=> b!1289526 d!363483))

(declare-fun d!363485 () Bool)

(declare-fun res!578025 () Bool)

(declare-fun e!827049 () Bool)

(assert (=> d!363485 (=> (not res!578025) (not e!827049))))

(declare-fun rulesValid!808 (LexerInterface!1912 List!12939) Bool)

(assert (=> d!363485 (= res!578025 (rulesValid!808 thiss!19762 rules!2550))))

(assert (=> d!363485 (= (rulesInvariant!1782 thiss!19762 rules!2550) e!827049)))

(declare-fun b!1289628 () Bool)

(declare-datatypes ((List!12944 0))(
  ( (Nil!12878) (Cons!12878 (h!18279 String!15771) (t!117081 List!12944)) )
))
(declare-fun noDuplicateTag!808 (LexerInterface!1912 List!12939 List!12944) Bool)

(assert (=> b!1289628 (= e!827049 (noDuplicateTag!808 thiss!19762 rules!2550 Nil!12878))))

(assert (= (and d!363485 res!578025) b!1289628))

(declare-fun m!1440323 () Bool)

(assert (=> d!363485 m!1440323))

(declare-fun m!1440325 () Bool)

(assert (=> b!1289628 m!1440325))

(assert (=> b!1289515 d!363485))

(declare-fun d!363487 () Bool)

(assert (=> d!363487 (= (inv!17289 (tag!2479 (h!18274 rules!2550))) (= (mod (str.len (value!72816 (tag!2479 (h!18274 rules!2550)))) 2) 0))))

(assert (=> b!1289525 d!363487))

(declare-fun d!363489 () Bool)

(declare-fun res!578026 () Bool)

(declare-fun e!827050 () Bool)

(assert (=> d!363489 (=> (not res!578026) (not e!827050))))

(assert (=> d!363489 (= res!578026 (semiInverseModEq!837 (toChars!3271 (transformation!2217 (h!18274 rules!2550))) (toValue!3412 (transformation!2217 (h!18274 rules!2550)))))))

(assert (=> d!363489 (= (inv!17292 (transformation!2217 (h!18274 rules!2550))) e!827050)))

(declare-fun b!1289629 () Bool)

(assert (=> b!1289629 (= e!827050 (equivClasses!796 (toChars!3271 (transformation!2217 (h!18274 rules!2550))) (toValue!3412 (transformation!2217 (h!18274 rules!2550)))))))

(assert (= (and d!363489 res!578026) b!1289629))

(declare-fun m!1440327 () Bool)

(assert (=> d!363489 m!1440327))

(declare-fun m!1440329 () Bool)

(assert (=> b!1289629 m!1440329))

(assert (=> b!1289525 d!363489))

(declare-fun d!363491 () Bool)

(declare-fun lt!424742 () Bool)

(declare-fun e!827115 () Bool)

(assert (=> d!363491 (= lt!424742 e!827115)))

(declare-fun res!578071 () Bool)

(assert (=> d!363491 (=> (not res!578071) (not e!827115))))

(declare-datatypes ((List!12945 0))(
  ( (Nil!12879) (Cons!12879 (h!18280 Token!4096) (t!117082 List!12945)) )
))
(declare-datatypes ((IArray!8467 0))(
  ( (IArray!8468 (innerList!4291 List!12945)) )
))
(declare-datatypes ((Conc!4231 0))(
  ( (Node!4231 (left!11081 Conc!4231) (right!11411 Conc!4231) (csize!8692 Int) (cheight!4442 Int)) (Leaf!6536 (xs!6942 IArray!8467) (csize!8693 Int)) (Empty!4231) )
))
(declare-datatypes ((BalanceConc!8402 0))(
  ( (BalanceConc!8403 (c!212308 Conc!4231)) )
))
(declare-fun list!4801 (BalanceConc!8402) List!12945)

(declare-datatypes ((tuple2!12654 0))(
  ( (tuple2!12655 (_1!7213 BalanceConc!8402) (_2!7213 BalanceConc!8398)) )
))
(declare-fun lex!777 (LexerInterface!1912 List!12939 BalanceConc!8398) tuple2!12654)

(declare-fun print!714 (LexerInterface!1912 BalanceConc!8402) BalanceConc!8398)

(declare-fun singletonSeq!794 (Token!4096) BalanceConc!8402)

(assert (=> d!363491 (= res!578071 (= (list!4801 (_1!7213 (lex!777 thiss!19762 rules!2550 (print!714 thiss!19762 (singletonSeq!794 t2!34))))) (list!4801 (singletonSeq!794 t2!34))))))

(declare-fun e!827114 () Bool)

(assert (=> d!363491 (= lt!424742 e!827114)))

(declare-fun res!578072 () Bool)

(assert (=> d!363491 (=> (not res!578072) (not e!827114))))

(declare-fun lt!424743 () tuple2!12654)

(declare-fun size!10505 (BalanceConc!8402) Int)

(assert (=> d!363491 (= res!578072 (= (size!10505 (_1!7213 lt!424743)) 1))))

(assert (=> d!363491 (= lt!424743 (lex!777 thiss!19762 rules!2550 (print!714 thiss!19762 (singletonSeq!794 t2!34))))))

(assert (=> d!363491 (not (isEmpty!7639 rules!2550))))

(assert (=> d!363491 (= (rulesProduceIndividualToken!881 thiss!19762 rules!2550 t2!34) lt!424742)))

(declare-fun b!1289729 () Bool)

(declare-fun res!578073 () Bool)

(assert (=> b!1289729 (=> (not res!578073) (not e!827114))))

(declare-fun apply!2797 (BalanceConc!8402 Int) Token!4096)

(assert (=> b!1289729 (= res!578073 (= (apply!2797 (_1!7213 lt!424743) 0) t2!34))))

(declare-fun b!1289730 () Bool)

(declare-fun isEmpty!7643 (BalanceConc!8398) Bool)

(assert (=> b!1289730 (= e!827114 (isEmpty!7643 (_2!7213 lt!424743)))))

(declare-fun b!1289731 () Bool)

(assert (=> b!1289731 (= e!827115 (isEmpty!7643 (_2!7213 (lex!777 thiss!19762 rules!2550 (print!714 thiss!19762 (singletonSeq!794 t2!34))))))))

(assert (= (and d!363491 res!578072) b!1289729))

(assert (= (and b!1289729 res!578073) b!1289730))

(assert (= (and d!363491 res!578071) b!1289731))

(declare-fun m!1440423 () Bool)

(assert (=> d!363491 m!1440423))

(declare-fun m!1440425 () Bool)

(assert (=> d!363491 m!1440425))

(declare-fun m!1440427 () Bool)

(assert (=> d!363491 m!1440427))

(assert (=> d!363491 m!1440425))

(declare-fun m!1440429 () Bool)

(assert (=> d!363491 m!1440429))

(assert (=> d!363491 m!1440427))

(declare-fun m!1440431 () Bool)

(assert (=> d!363491 m!1440431))

(assert (=> d!363491 m!1440425))

(declare-fun m!1440433 () Bool)

(assert (=> d!363491 m!1440433))

(assert (=> d!363491 m!1440155))

(declare-fun m!1440435 () Bool)

(assert (=> b!1289729 m!1440435))

(declare-fun m!1440437 () Bool)

(assert (=> b!1289730 m!1440437))

(assert (=> b!1289731 m!1440425))

(assert (=> b!1289731 m!1440425))

(assert (=> b!1289731 m!1440427))

(assert (=> b!1289731 m!1440427))

(assert (=> b!1289731 m!1440431))

(declare-fun m!1440439 () Bool)

(assert (=> b!1289731 m!1440439))

(assert (=> b!1289514 d!363491))

(declare-fun b!1289742 () Bool)

(declare-fun e!827124 () Bool)

(declare-fun inv!16 (TokenValue!2307) Bool)

(assert (=> b!1289742 (= e!827124 (inv!16 (value!72817 t1!34)))))

(declare-fun d!363521 () Bool)

(declare-fun c!212298 () Bool)

(assert (=> d!363521 (= c!212298 ((_ is IntegerValue!6921) (value!72817 t1!34)))))

(assert (=> d!363521 (= (inv!21 (value!72817 t1!34)) e!827124)))

(declare-fun b!1289743 () Bool)

(declare-fun e!827122 () Bool)

(assert (=> b!1289743 (= e!827124 e!827122)))

(declare-fun c!212297 () Bool)

(assert (=> b!1289743 (= c!212297 ((_ is IntegerValue!6922) (value!72817 t1!34)))))

(declare-fun b!1289744 () Bool)

(declare-fun e!827123 () Bool)

(declare-fun inv!15 (TokenValue!2307) Bool)

(assert (=> b!1289744 (= e!827123 (inv!15 (value!72817 t1!34)))))

(declare-fun b!1289745 () Bool)

(declare-fun res!578076 () Bool)

(assert (=> b!1289745 (=> res!578076 e!827123)))

(assert (=> b!1289745 (= res!578076 (not ((_ is IntegerValue!6923) (value!72817 t1!34))))))

(assert (=> b!1289745 (= e!827122 e!827123)))

(declare-fun b!1289746 () Bool)

(declare-fun inv!17 (TokenValue!2307) Bool)

(assert (=> b!1289746 (= e!827122 (inv!17 (value!72817 t1!34)))))

(assert (= (and d!363521 c!212298) b!1289742))

(assert (= (and d!363521 (not c!212298)) b!1289743))

(assert (= (and b!1289743 c!212297) b!1289746))

(assert (= (and b!1289743 (not c!212297)) b!1289745))

(assert (= (and b!1289745 (not res!578076)) b!1289744))

(declare-fun m!1440441 () Bool)

(assert (=> b!1289742 m!1440441))

(declare-fun m!1440443 () Bool)

(assert (=> b!1289744 m!1440443))

(declare-fun m!1440445 () Bool)

(assert (=> b!1289746 m!1440445))

(assert (=> b!1289523 d!363521))

(declare-fun d!363523 () Bool)

(declare-fun lt!424746 () Int)

(assert (=> d!363523 (= lt!424746 (size!10504 (list!4797 lt!424697)))))

(declare-fun size!10506 (Conc!4229) Int)

(assert (=> d!363523 (= lt!424746 (size!10506 (c!212265 lt!424697)))))

(assert (=> d!363523 (= (size!10500 lt!424697) lt!424746)))

(declare-fun bs!328432 () Bool)

(assert (= bs!328432 d!363523))

(assert (=> bs!328432 m!1440301))

(assert (=> bs!328432 m!1440301))

(declare-fun m!1440447 () Bool)

(assert (=> bs!328432 m!1440447))

(declare-fun m!1440449 () Bool)

(assert (=> bs!328432 m!1440449))

(assert (=> b!1289512 d!363523))

(declare-fun d!363525 () Bool)

(declare-fun lt!424747 () BalanceConc!8398)

(assert (=> d!363525 (= (list!4797 lt!424747) (originalCharacters!3079 t2!34))))

(assert (=> d!363525 (= lt!424747 (dynLambda!5618 (toChars!3271 (transformation!2217 (rule!3956 t2!34))) (value!72817 t2!34)))))

(assert (=> d!363525 (= (charsOf!1189 t2!34) lt!424747)))

(declare-fun b_lambda!36801 () Bool)

(assert (=> (not b_lambda!36801) (not d!363525)))

(declare-fun tb!69271 () Bool)

(declare-fun t!117068 () Bool)

(assert (=> (and b!1289529 (= (toChars!3271 (transformation!2217 (h!18274 rules!2550))) (toChars!3271 (transformation!2217 (rule!3956 t2!34)))) t!117068) tb!69271))

(declare-fun b!1289747 () Bool)

(declare-fun e!827125 () Bool)

(declare-fun tp!375867 () Bool)

(assert (=> b!1289747 (= e!827125 (and (inv!17296 (c!212265 (dynLambda!5618 (toChars!3271 (transformation!2217 (rule!3956 t2!34))) (value!72817 t2!34)))) tp!375867))))

(declare-fun result!83926 () Bool)

(assert (=> tb!69271 (= result!83926 (and (inv!17297 (dynLambda!5618 (toChars!3271 (transformation!2217 (rule!3956 t2!34))) (value!72817 t2!34))) e!827125))))

(assert (= tb!69271 b!1289747))

(declare-fun m!1440451 () Bool)

(assert (=> b!1289747 m!1440451))

(declare-fun m!1440453 () Bool)

(assert (=> tb!69271 m!1440453))

(assert (=> d!363525 t!117068))

(declare-fun b_and!85845 () Bool)

(assert (= b_and!85817 (and (=> t!117068 result!83926) b_and!85845)))

(declare-fun t!117070 () Bool)

(declare-fun tb!69273 () Bool)

(assert (=> (and b!1289513 (= (toChars!3271 (transformation!2217 (rule!3956 t2!34))) (toChars!3271 (transformation!2217 (rule!3956 t2!34)))) t!117070) tb!69273))

(declare-fun result!83928 () Bool)

(assert (= result!83928 result!83926))

(assert (=> d!363525 t!117070))

(declare-fun b_and!85847 () Bool)

(assert (= b_and!85819 (and (=> t!117070 result!83928) b_and!85847)))

(declare-fun t!117072 () Bool)

(declare-fun tb!69275 () Bool)

(assert (=> (and b!1289528 (= (toChars!3271 (transformation!2217 (rule!3956 t1!34))) (toChars!3271 (transformation!2217 (rule!3956 t2!34)))) t!117072) tb!69275))

(declare-fun result!83930 () Bool)

(assert (= result!83930 result!83926))

(assert (=> d!363525 t!117072))

(declare-fun b_and!85849 () Bool)

(assert (= b_and!85821 (and (=> t!117072 result!83930) b_and!85849)))

(declare-fun m!1440455 () Bool)

(assert (=> d!363525 m!1440455))

(declare-fun m!1440457 () Bool)

(assert (=> d!363525 m!1440457))

(assert (=> b!1289512 d!363525))

(declare-fun b!1289748 () Bool)

(declare-fun e!827128 () Bool)

(assert (=> b!1289748 (= e!827128 (inv!16 (value!72817 t2!34)))))

(declare-fun d!363527 () Bool)

(declare-fun c!212300 () Bool)

(assert (=> d!363527 (= c!212300 ((_ is IntegerValue!6921) (value!72817 t2!34)))))

(assert (=> d!363527 (= (inv!21 (value!72817 t2!34)) e!827128)))

(declare-fun b!1289749 () Bool)

(declare-fun e!827126 () Bool)

(assert (=> b!1289749 (= e!827128 e!827126)))

(declare-fun c!212299 () Bool)

(assert (=> b!1289749 (= c!212299 ((_ is IntegerValue!6922) (value!72817 t2!34)))))

(declare-fun b!1289750 () Bool)

(declare-fun e!827127 () Bool)

(assert (=> b!1289750 (= e!827127 (inv!15 (value!72817 t2!34)))))

(declare-fun b!1289751 () Bool)

(declare-fun res!578077 () Bool)

(assert (=> b!1289751 (=> res!578077 e!827127)))

(assert (=> b!1289751 (= res!578077 (not ((_ is IntegerValue!6923) (value!72817 t2!34))))))

(assert (=> b!1289751 (= e!827126 e!827127)))

(declare-fun b!1289752 () Bool)

(assert (=> b!1289752 (= e!827126 (inv!17 (value!72817 t2!34)))))

(assert (= (and d!363527 c!212300) b!1289748))

(assert (= (and d!363527 (not c!212300)) b!1289749))

(assert (= (and b!1289749 c!212299) b!1289752))

(assert (= (and b!1289749 (not c!212299)) b!1289751))

(assert (= (and b!1289751 (not res!578077)) b!1289750))

(declare-fun m!1440459 () Bool)

(assert (=> b!1289748 m!1440459))

(declare-fun m!1440461 () Bool)

(assert (=> b!1289750 m!1440461))

(declare-fun m!1440463 () Bool)

(assert (=> b!1289752 m!1440463))

(assert (=> b!1289511 d!363527))

(declare-fun d!363529 () Bool)

(declare-fun lt!424748 () Bool)

(declare-fun e!827130 () Bool)

(assert (=> d!363529 (= lt!424748 e!827130)))

(declare-fun res!578078 () Bool)

(assert (=> d!363529 (=> (not res!578078) (not e!827130))))

(assert (=> d!363529 (= res!578078 (= (list!4801 (_1!7213 (lex!777 thiss!19762 rules!2550 (print!714 thiss!19762 (singletonSeq!794 t1!34))))) (list!4801 (singletonSeq!794 t1!34))))))

(declare-fun e!827129 () Bool)

(assert (=> d!363529 (= lt!424748 e!827129)))

(declare-fun res!578079 () Bool)

(assert (=> d!363529 (=> (not res!578079) (not e!827129))))

(declare-fun lt!424749 () tuple2!12654)

(assert (=> d!363529 (= res!578079 (= (size!10505 (_1!7213 lt!424749)) 1))))

(assert (=> d!363529 (= lt!424749 (lex!777 thiss!19762 rules!2550 (print!714 thiss!19762 (singletonSeq!794 t1!34))))))

(assert (=> d!363529 (not (isEmpty!7639 rules!2550))))

(assert (=> d!363529 (= (rulesProduceIndividualToken!881 thiss!19762 rules!2550 t1!34) lt!424748)))

(declare-fun b!1289753 () Bool)

(declare-fun res!578080 () Bool)

(assert (=> b!1289753 (=> (not res!578080) (not e!827129))))

(assert (=> b!1289753 (= res!578080 (= (apply!2797 (_1!7213 lt!424749) 0) t1!34))))

(declare-fun b!1289754 () Bool)

(assert (=> b!1289754 (= e!827129 (isEmpty!7643 (_2!7213 lt!424749)))))

(declare-fun b!1289755 () Bool)

(assert (=> b!1289755 (= e!827130 (isEmpty!7643 (_2!7213 (lex!777 thiss!19762 rules!2550 (print!714 thiss!19762 (singletonSeq!794 t1!34))))))))

(assert (= (and d!363529 res!578079) b!1289753))

(assert (= (and b!1289753 res!578080) b!1289754))

(assert (= (and d!363529 res!578078) b!1289755))

(declare-fun m!1440465 () Bool)

(assert (=> d!363529 m!1440465))

(declare-fun m!1440467 () Bool)

(assert (=> d!363529 m!1440467))

(declare-fun m!1440469 () Bool)

(assert (=> d!363529 m!1440469))

(assert (=> d!363529 m!1440467))

(declare-fun m!1440471 () Bool)

(assert (=> d!363529 m!1440471))

(assert (=> d!363529 m!1440469))

(declare-fun m!1440473 () Bool)

(assert (=> d!363529 m!1440473))

(assert (=> d!363529 m!1440467))

(declare-fun m!1440475 () Bool)

(assert (=> d!363529 m!1440475))

(assert (=> d!363529 m!1440155))

(declare-fun m!1440477 () Bool)

(assert (=> b!1289753 m!1440477))

(declare-fun m!1440479 () Bool)

(assert (=> b!1289754 m!1440479))

(assert (=> b!1289755 m!1440467))

(assert (=> b!1289755 m!1440467))

(assert (=> b!1289755 m!1440469))

(assert (=> b!1289755 m!1440469))

(assert (=> b!1289755 m!1440473))

(declare-fun m!1440481 () Bool)

(assert (=> b!1289755 m!1440481))

(assert (=> b!1289521 d!363529))

(declare-fun b!1289774 () Bool)

(declare-fun e!827146 () Bool)

(declare-fun call!88595 () Bool)

(assert (=> b!1289774 (= e!827146 call!88595)))

(declare-fun b!1289775 () Bool)

(declare-fun e!827145 () Bool)

(declare-fun call!88594 () Bool)

(assert (=> b!1289775 (= e!827145 call!88594)))

(declare-fun b!1289776 () Bool)

(declare-fun e!827150 () Bool)

(assert (=> b!1289776 (= e!827150 call!88594)))

(declare-fun b!1289777 () Bool)

(declare-fun e!827149 () Bool)

(declare-fun e!827148 () Bool)

(assert (=> b!1289777 (= e!827149 e!827148)))

(declare-fun c!212305 () Bool)

(assert (=> b!1289777 (= c!212305 ((_ is Star!3531) lt!424695))))

(declare-fun bm!88588 () Bool)

(declare-fun call!88593 () Bool)

(declare-fun c!212306 () Bool)

(assert (=> bm!88588 (= call!88593 (validRegex!1519 (ite c!212306 (regOne!7575 lt!424695) (regOne!7574 lt!424695))))))

(declare-fun b!1289778 () Bool)

(declare-fun e!827151 () Bool)

(assert (=> b!1289778 (= e!827151 e!827145)))

(declare-fun res!578092 () Bool)

(assert (=> b!1289778 (=> (not res!578092) (not e!827145))))

(assert (=> b!1289778 (= res!578092 call!88593)))

(declare-fun b!1289779 () Bool)

(declare-fun res!578094 () Bool)

(assert (=> b!1289779 (=> (not res!578094) (not e!827150))))

(assert (=> b!1289779 (= res!578094 call!88593)))

(declare-fun e!827147 () Bool)

(assert (=> b!1289779 (= e!827147 e!827150)))

(declare-fun d!363531 () Bool)

(declare-fun res!578095 () Bool)

(assert (=> d!363531 (=> res!578095 e!827149)))

(assert (=> d!363531 (= res!578095 ((_ is ElementMatch!3531) lt!424695))))

(assert (=> d!363531 (= (validRegex!1519 lt!424695) e!827149)))

(declare-fun b!1289780 () Bool)

(declare-fun res!578091 () Bool)

(assert (=> b!1289780 (=> res!578091 e!827151)))

(assert (=> b!1289780 (= res!578091 (not ((_ is Concat!5839) lt!424695)))))

(assert (=> b!1289780 (= e!827147 e!827151)))

(declare-fun bm!88589 () Bool)

(assert (=> bm!88589 (= call!88595 (validRegex!1519 (ite c!212305 (reg!3860 lt!424695) (ite c!212306 (regTwo!7575 lt!424695) (regTwo!7574 lt!424695)))))))

(declare-fun b!1289781 () Bool)

(assert (=> b!1289781 (= e!827148 e!827147)))

(assert (=> b!1289781 (= c!212306 ((_ is Union!3531) lt!424695))))

(declare-fun bm!88590 () Bool)

(assert (=> bm!88590 (= call!88594 call!88595)))

(declare-fun b!1289782 () Bool)

(assert (=> b!1289782 (= e!827148 e!827146)))

(declare-fun res!578093 () Bool)

(declare-fun nullable!1121 (Regex!3531) Bool)

(assert (=> b!1289782 (= res!578093 (not (nullable!1121 (reg!3860 lt!424695))))))

(assert (=> b!1289782 (=> (not res!578093) (not e!827146))))

(assert (= (and d!363531 (not res!578095)) b!1289777))

(assert (= (and b!1289777 c!212305) b!1289782))

(assert (= (and b!1289777 (not c!212305)) b!1289781))

(assert (= (and b!1289782 res!578093) b!1289774))

(assert (= (and b!1289781 c!212306) b!1289779))

(assert (= (and b!1289781 (not c!212306)) b!1289780))

(assert (= (and b!1289779 res!578094) b!1289776))

(assert (= (and b!1289780 (not res!578091)) b!1289778))

(assert (= (and b!1289778 res!578092) b!1289775))

(assert (= (or b!1289779 b!1289778) bm!88588))

(assert (= (or b!1289776 b!1289775) bm!88590))

(assert (= (or b!1289774 bm!88590) bm!88589))

(declare-fun m!1440483 () Bool)

(assert (=> bm!88588 m!1440483))

(declare-fun m!1440485 () Bool)

(assert (=> bm!88589 m!1440485))

(declare-fun m!1440487 () Bool)

(assert (=> b!1289782 m!1440487))

(assert (=> b!1289520 d!363531))

(declare-fun d!363533 () Bool)

(declare-fun choose!7915 (Int) Bool)

(assert (=> d!363533 (= (Exists!689 lambda!50609) (choose!7915 lambda!50609))))

(declare-fun bs!328433 () Bool)

(assert (= bs!328433 d!363533))

(declare-fun m!1440489 () Bool)

(assert (=> bs!328433 m!1440489))

(assert (=> b!1289520 d!363533))

(declare-fun bs!328434 () Bool)

(declare-fun d!363535 () Bool)

(assert (= bs!328434 (and d!363535 b!1289520)))

(declare-fun lambda!50621 () Int)

(assert (=> bs!328434 (= lambda!50621 lambda!50609)))

(assert (=> d!363535 true))

(assert (=> d!363535 true))

(assert (=> d!363535 (Exists!689 lambda!50621)))

(declare-fun lt!424752 () Unit!19040)

(declare-fun choose!7916 (Regex!3531 List!12938) Unit!19040)

(assert (=> d!363535 (= lt!424752 (choose!7916 lt!424695 lt!424698))))

(assert (=> d!363535 (validRegex!1519 lt!424695)))

(assert (=> d!363535 (= (lemmaPrefixMatchThenExistsStringThatMatches!7 lt!424695 lt!424698) lt!424752)))

(declare-fun bs!328435 () Bool)

(assert (= bs!328435 d!363535))

(declare-fun m!1440491 () Bool)

(assert (=> bs!328435 m!1440491))

(declare-fun m!1440493 () Bool)

(assert (=> bs!328435 m!1440493))

(assert (=> bs!328435 m!1440149))

(assert (=> b!1289520 d!363535))

(declare-fun d!363537 () Bool)

(declare-fun res!578102 () Bool)

(declare-fun e!827156 () Bool)

(assert (=> d!363537 (=> (not res!578102) (not e!827156))))

(assert (=> d!363537 (= res!578102 (not (isEmpty!7642 (originalCharacters!3079 t1!34))))))

(assert (=> d!363537 (= (inv!17293 t1!34) e!827156)))

(declare-fun b!1289789 () Bool)

(declare-fun res!578103 () Bool)

(assert (=> b!1289789 (=> (not res!578103) (not e!827156))))

(assert (=> b!1289789 (= res!578103 (= (originalCharacters!3079 t1!34) (list!4797 (dynLambda!5618 (toChars!3271 (transformation!2217 (rule!3956 t1!34))) (value!72817 t1!34)))))))

(declare-fun b!1289790 () Bool)

(assert (=> b!1289790 (= e!827156 (= (size!10499 t1!34) (size!10504 (originalCharacters!3079 t1!34))))))

(assert (= (and d!363537 res!578102) b!1289789))

(assert (= (and b!1289789 res!578103) b!1289790))

(declare-fun b_lambda!36803 () Bool)

(assert (=> (not b_lambda!36803) (not b!1289789)))

(assert (=> b!1289789 t!117050))

(declare-fun b_and!85851 () Bool)

(assert (= b_and!85845 (and (=> t!117050 result!83902) b_and!85851)))

(assert (=> b!1289789 t!117052))

(declare-fun b_and!85853 () Bool)

(assert (= b_and!85847 (and (=> t!117052 result!83906) b_and!85853)))

(assert (=> b!1289789 t!117054))

(declare-fun b_and!85855 () Bool)

(assert (= b_and!85849 (and (=> t!117054 result!83908) b_and!85855)))

(declare-fun m!1440495 () Bool)

(assert (=> d!363537 m!1440495))

(assert (=> b!1289789 m!1440275))

(assert (=> b!1289789 m!1440275))

(declare-fun m!1440497 () Bool)

(assert (=> b!1289789 m!1440497))

(declare-fun m!1440499 () Bool)

(assert (=> b!1289790 m!1440499))

(assert (=> start!113102 d!363537))

(declare-fun d!363539 () Bool)

(declare-fun res!578104 () Bool)

(declare-fun e!827157 () Bool)

(assert (=> d!363539 (=> (not res!578104) (not e!827157))))

(assert (=> d!363539 (= res!578104 (not (isEmpty!7642 (originalCharacters!3079 t2!34))))))

(assert (=> d!363539 (= (inv!17293 t2!34) e!827157)))

(declare-fun b!1289791 () Bool)

(declare-fun res!578105 () Bool)

(assert (=> b!1289791 (=> (not res!578105) (not e!827157))))

(assert (=> b!1289791 (= res!578105 (= (originalCharacters!3079 t2!34) (list!4797 (dynLambda!5618 (toChars!3271 (transformation!2217 (rule!3956 t2!34))) (value!72817 t2!34)))))))

(declare-fun b!1289792 () Bool)

(assert (=> b!1289792 (= e!827157 (= (size!10499 t2!34) (size!10504 (originalCharacters!3079 t2!34))))))

(assert (= (and d!363539 res!578104) b!1289791))

(assert (= (and b!1289791 res!578105) b!1289792))

(declare-fun b_lambda!36805 () Bool)

(assert (=> (not b_lambda!36805) (not b!1289791)))

(assert (=> b!1289791 t!117068))

(declare-fun b_and!85857 () Bool)

(assert (= b_and!85851 (and (=> t!117068 result!83926) b_and!85857)))

(assert (=> b!1289791 t!117070))

(declare-fun b_and!85859 () Bool)

(assert (= b_and!85853 (and (=> t!117070 result!83928) b_and!85859)))

(assert (=> b!1289791 t!117072))

(declare-fun b_and!85861 () Bool)

(assert (= b_and!85855 (and (=> t!117072 result!83930) b_and!85861)))

(declare-fun m!1440501 () Bool)

(assert (=> d!363539 m!1440501))

(assert (=> b!1289791 m!1440457))

(assert (=> b!1289791 m!1440457))

(declare-fun m!1440503 () Bool)

(assert (=> b!1289791 m!1440503))

(declare-fun m!1440505 () Bool)

(assert (=> b!1289792 m!1440505))

(assert (=> start!113102 d!363539))

(declare-fun d!363541 () Bool)

(declare-fun prefixMatchZipperSequence!133 (Regex!3531 BalanceConc!8398) Bool)

(declare-fun ++!3259 (BalanceConc!8398 BalanceConc!8398) BalanceConc!8398)

(declare-fun singletonSeq!795 (C!7352) BalanceConc!8398)

(assert (=> d!363541 (= (separableTokensPredicate!195 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!133 (rulesRegex!102 thiss!19762 rules!2550) (++!3259 (charsOf!1189 t1!34) (singletonSeq!795 (apply!2791 (charsOf!1189 t2!34) 0))))))))

(declare-fun bs!328436 () Bool)

(assert (= bs!328436 d!363541))

(assert (=> bs!328436 m!1440183))

(assert (=> bs!328436 m!1440167))

(declare-fun m!1440507 () Bool)

(assert (=> bs!328436 m!1440507))

(assert (=> bs!328436 m!1440187))

(assert (=> bs!328436 m!1440507))

(declare-fun m!1440509 () Bool)

(assert (=> bs!328436 m!1440509))

(assert (=> bs!328436 m!1440183))

(assert (=> bs!328436 m!1440509))

(declare-fun m!1440511 () Bool)

(assert (=> bs!328436 m!1440511))

(assert (=> bs!328436 m!1440167))

(assert (=> bs!328436 m!1440187))

(assert (=> bs!328436 m!1440511))

(declare-fun m!1440513 () Bool)

(assert (=> bs!328436 m!1440513))

(assert (=> b!1289519 d!363541))

(declare-fun d!363543 () Bool)

(assert (=> d!363543 (= (isEmpty!7639 rules!2550) ((_ is Nil!12873) rules!2550))))

(assert (=> b!1289518 d!363543))

(declare-fun b!1289797 () Bool)

(declare-fun e!827160 () Bool)

(declare-fun tp_is_empty!6559 () Bool)

(declare-fun tp!375870 () Bool)

(assert (=> b!1289797 (= e!827160 (and tp_is_empty!6559 tp!375870))))

(assert (=> b!1289523 (= tp!375813 e!827160)))

(assert (= (and b!1289523 ((_ is Cons!12872) (originalCharacters!3079 t1!34))) b!1289797))

(declare-fun e!827163 () Bool)

(assert (=> b!1289517 (= tp!375815 e!827163)))

(declare-fun b!1289809 () Bool)

(declare-fun tp!375883 () Bool)

(declare-fun tp!375882 () Bool)

(assert (=> b!1289809 (= e!827163 (and tp!375883 tp!375882))))

(declare-fun b!1289810 () Bool)

(declare-fun tp!375885 () Bool)

(assert (=> b!1289810 (= e!827163 tp!375885)))

(declare-fun b!1289811 () Bool)

(declare-fun tp!375884 () Bool)

(declare-fun tp!375881 () Bool)

(assert (=> b!1289811 (= e!827163 (and tp!375884 tp!375881))))

(declare-fun b!1289808 () Bool)

(assert (=> b!1289808 (= e!827163 tp_is_empty!6559)))

(assert (= (and b!1289517 ((_ is ElementMatch!3531) (regex!2217 (rule!3956 t2!34)))) b!1289808))

(assert (= (and b!1289517 ((_ is Concat!5839) (regex!2217 (rule!3956 t2!34)))) b!1289809))

(assert (= (and b!1289517 ((_ is Star!3531) (regex!2217 (rule!3956 t2!34)))) b!1289810))

(assert (= (and b!1289517 ((_ is Union!3531) (regex!2217 (rule!3956 t2!34)))) b!1289811))

(declare-fun b!1289822 () Bool)

(declare-fun b_free!30443 () Bool)

(declare-fun b_next!31147 () Bool)

(assert (=> b!1289822 (= b_free!30443 (not b_next!31147))))

(declare-fun tp!375894 () Bool)

(declare-fun b_and!85863 () Bool)

(assert (=> b!1289822 (= tp!375894 b_and!85863)))

(declare-fun b_free!30445 () Bool)

(declare-fun b_next!31149 () Bool)

(assert (=> b!1289822 (= b_free!30445 (not b_next!31149))))

(declare-fun t!117076 () Bool)

(declare-fun tb!69277 () Bool)

(assert (=> (and b!1289822 (= (toChars!3271 (transformation!2217 (h!18274 (t!117042 rules!2550)))) (toChars!3271 (transformation!2217 (rule!3956 t1!34)))) t!117076) tb!69277))

(declare-fun result!83938 () Bool)

(assert (= result!83938 result!83902))

(assert (=> d!363461 t!117076))

(declare-fun t!117078 () Bool)

(declare-fun tb!69279 () Bool)

(assert (=> (and b!1289822 (= (toChars!3271 (transformation!2217 (h!18274 (t!117042 rules!2550)))) (toChars!3271 (transformation!2217 (rule!3956 t2!34)))) t!117078) tb!69279))

(declare-fun result!83940 () Bool)

(assert (= result!83940 result!83926))

(assert (=> d!363525 t!117078))

(assert (=> b!1289789 t!117076))

(assert (=> b!1289791 t!117078))

(declare-fun b_and!85865 () Bool)

(declare-fun tp!375896 () Bool)

(assert (=> b!1289822 (= tp!375896 (and (=> t!117076 result!83938) (=> t!117078 result!83940) b_and!85865))))

(declare-fun e!827172 () Bool)

(assert (=> b!1289822 (= e!827172 (and tp!375894 tp!375896))))

(declare-fun tp!375897 () Bool)

(declare-fun b!1289821 () Bool)

(declare-fun e!827175 () Bool)

(assert (=> b!1289821 (= e!827175 (and tp!375897 (inv!17289 (tag!2479 (h!18274 (t!117042 rules!2550)))) (inv!17292 (transformation!2217 (h!18274 (t!117042 rules!2550)))) e!827172))))

(declare-fun b!1289820 () Bool)

(declare-fun e!827173 () Bool)

(declare-fun tp!375895 () Bool)

(assert (=> b!1289820 (= e!827173 (and e!827175 tp!375895))))

(assert (=> b!1289522 (= tp!375809 e!827173)))

(assert (= b!1289821 b!1289822))

(assert (= b!1289820 b!1289821))

(assert (= (and b!1289522 ((_ is Cons!12873) (t!117042 rules!2550))) b!1289820))

(declare-fun m!1440515 () Bool)

(assert (=> b!1289821 m!1440515))

(declare-fun m!1440517 () Bool)

(assert (=> b!1289821 m!1440517))

(declare-fun b!1289823 () Bool)

(declare-fun e!827176 () Bool)

(declare-fun tp!375898 () Bool)

(assert (=> b!1289823 (= e!827176 (and tp_is_empty!6559 tp!375898))))

(assert (=> b!1289511 (= tp!375807 e!827176)))

(assert (= (and b!1289511 ((_ is Cons!12872) (originalCharacters!3079 t2!34))) b!1289823))

(declare-fun e!827177 () Bool)

(assert (=> b!1289526 (= tp!375810 e!827177)))

(declare-fun b!1289825 () Bool)

(declare-fun tp!375901 () Bool)

(declare-fun tp!375900 () Bool)

(assert (=> b!1289825 (= e!827177 (and tp!375901 tp!375900))))

(declare-fun b!1289826 () Bool)

(declare-fun tp!375903 () Bool)

(assert (=> b!1289826 (= e!827177 tp!375903)))

(declare-fun b!1289827 () Bool)

(declare-fun tp!375902 () Bool)

(declare-fun tp!375899 () Bool)

(assert (=> b!1289827 (= e!827177 (and tp!375902 tp!375899))))

(declare-fun b!1289824 () Bool)

(assert (=> b!1289824 (= e!827177 tp_is_empty!6559)))

(assert (= (and b!1289526 ((_ is ElementMatch!3531) (regex!2217 (rule!3956 t1!34)))) b!1289824))

(assert (= (and b!1289526 ((_ is Concat!5839) (regex!2217 (rule!3956 t1!34)))) b!1289825))

(assert (= (and b!1289526 ((_ is Star!3531) (regex!2217 (rule!3956 t1!34)))) b!1289826))

(assert (= (and b!1289526 ((_ is Union!3531) (regex!2217 (rule!3956 t1!34)))) b!1289827))

(declare-fun e!827178 () Bool)

(assert (=> b!1289525 (= tp!375818 e!827178)))

(declare-fun b!1289829 () Bool)

(declare-fun tp!375906 () Bool)

(declare-fun tp!375905 () Bool)

(assert (=> b!1289829 (= e!827178 (and tp!375906 tp!375905))))

(declare-fun b!1289830 () Bool)

(declare-fun tp!375908 () Bool)

(assert (=> b!1289830 (= e!827178 tp!375908)))

(declare-fun b!1289831 () Bool)

(declare-fun tp!375907 () Bool)

(declare-fun tp!375904 () Bool)

(assert (=> b!1289831 (= e!827178 (and tp!375907 tp!375904))))

(declare-fun b!1289828 () Bool)

(assert (=> b!1289828 (= e!827178 tp_is_empty!6559)))

(assert (= (and b!1289525 ((_ is ElementMatch!3531) (regex!2217 (h!18274 rules!2550)))) b!1289828))

(assert (= (and b!1289525 ((_ is Concat!5839) (regex!2217 (h!18274 rules!2550)))) b!1289829))

(assert (= (and b!1289525 ((_ is Star!3531) (regex!2217 (h!18274 rules!2550)))) b!1289830))

(assert (= (and b!1289525 ((_ is Union!3531) (regex!2217 (h!18274 rules!2550)))) b!1289831))

(declare-fun b_lambda!36807 () Bool)

(assert (= b_lambda!36785 (or (and b!1289529 b_free!30429 (= (toChars!3271 (transformation!2217 (h!18274 rules!2550))) (toChars!3271 (transformation!2217 (rule!3956 t1!34))))) (and b!1289513 b_free!30433 (= (toChars!3271 (transformation!2217 (rule!3956 t2!34))) (toChars!3271 (transformation!2217 (rule!3956 t1!34))))) (and b!1289528 b_free!30437) (and b!1289822 b_free!30445 (= (toChars!3271 (transformation!2217 (h!18274 (t!117042 rules!2550)))) (toChars!3271 (transformation!2217 (rule!3956 t1!34))))) b_lambda!36807)))

(declare-fun b_lambda!36809 () Bool)

(assert (= b_lambda!36805 (or (and b!1289529 b_free!30429 (= (toChars!3271 (transformation!2217 (h!18274 rules!2550))) (toChars!3271 (transformation!2217 (rule!3956 t2!34))))) (and b!1289513 b_free!30433) (and b!1289528 b_free!30437 (= (toChars!3271 (transformation!2217 (rule!3956 t1!34))) (toChars!3271 (transformation!2217 (rule!3956 t2!34))))) (and b!1289822 b_free!30445 (= (toChars!3271 (transformation!2217 (h!18274 (t!117042 rules!2550)))) (toChars!3271 (transformation!2217 (rule!3956 t2!34))))) b_lambda!36809)))

(declare-fun b_lambda!36811 () Bool)

(assert (= b_lambda!36801 (or (and b!1289529 b_free!30429 (= (toChars!3271 (transformation!2217 (h!18274 rules!2550))) (toChars!3271 (transformation!2217 (rule!3956 t2!34))))) (and b!1289513 b_free!30433) (and b!1289528 b_free!30437 (= (toChars!3271 (transformation!2217 (rule!3956 t1!34))) (toChars!3271 (transformation!2217 (rule!3956 t2!34))))) (and b!1289822 b_free!30445 (= (toChars!3271 (transformation!2217 (h!18274 (t!117042 rules!2550)))) (toChars!3271 (transformation!2217 (rule!3956 t2!34))))) b_lambda!36811)))

(declare-fun b_lambda!36813 () Bool)

(assert (= b_lambda!36803 (or (and b!1289529 b_free!30429 (= (toChars!3271 (transformation!2217 (h!18274 rules!2550))) (toChars!3271 (transformation!2217 (rule!3956 t1!34))))) (and b!1289513 b_free!30433 (= (toChars!3271 (transformation!2217 (rule!3956 t2!34))) (toChars!3271 (transformation!2217 (rule!3956 t1!34))))) (and b!1289528 b_free!30437) (and b!1289822 b_free!30445 (= (toChars!3271 (transformation!2217 (h!18274 (t!117042 rules!2550)))) (toChars!3271 (transformation!2217 (rule!3956 t1!34))))) b_lambda!36813)))

(check-sat (not b!1289797) (not tb!69255) (not b!1289742) (not b!1289628) (not b!1289750) (not bm!88589) (not b!1289623) tp_is_empty!6559 b_and!85803 b_and!85865 (not d!363529) (not b_lambda!36809) b_and!85807 (not b!1289730) (not d!363483) (not b!1289782) (not d!363491) (not b_next!31131) (not d!363537) (not b!1289790) (not b!1289754) (not d!363461) b_and!85859 b_and!85861 (not b!1289611) (not b_lambda!36807) b_and!85799 (not b_next!31137) (not b!1289624) (not b!1289829) (not b_next!31147) (not d!363539) (not b!1289823) (not d!363525) (not d!363451) (not b!1289809) (not d!363489) (not d!363443) (not b!1289811) (not d!363535) (not b_next!31141) (not b!1289729) (not b!1289825) (not b!1289618) (not b!1289820) (not b!1289746) (not tb!69271) (not b!1289564) (not bm!88588) (not b!1289748) (not b_next!31133) (not b!1289752) (not b!1289810) (not b_next!31139) (not b_lambda!36811) (not d!363485) (not b!1289826) (not d!363533) (not b_next!31149) (not d!363541) (not b!1289731) (not b!1289629) (not d!363479) (not b!1289830) b_and!85857 (not b!1289792) (not b!1289595) (not b!1289594) (not b!1289625) (not d!363457) (not b_next!31135) (not b!1289821) (not b!1289747) (not b!1289827) (not d!363475) (not b!1289744) (not b!1289753) (not b_lambda!36813) (not b!1289565) (not d!363469) b_and!85863 (not b!1289831) (not b!1289755) (not d!363523) (not b!1289791) (not b!1289789) (not b!1289541))
(check-sat b_and!85807 (not b_next!31131) (not b_next!31141) (not b_next!31133) (not b_next!31139) (not b_next!31149) b_and!85857 (not b_next!31135) b_and!85863 b_and!85803 b_and!85865 b_and!85859 b_and!85861 (not b_next!31147) b_and!85799 (not b_next!31137))
