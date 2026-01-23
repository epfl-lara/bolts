; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115046 () Bool)

(assert start!115046)

(declare-fun b!1303358 () Bool)

(declare-fun b_free!31155 () Bool)

(declare-fun b_next!31859 () Bool)

(assert (=> b!1303358 (= b_free!31155 (not b_next!31859))))

(declare-fun tp!380432 () Bool)

(declare-fun b_and!87007 () Bool)

(assert (=> b!1303358 (= tp!380432 b_and!87007)))

(declare-fun b_free!31157 () Bool)

(declare-fun b_next!31861 () Bool)

(assert (=> b!1303358 (= b_free!31157 (not b_next!31861))))

(declare-fun tp!380423 () Bool)

(declare-fun b_and!87009 () Bool)

(assert (=> b!1303358 (= tp!380423 b_and!87009)))

(declare-fun b!1303368 () Bool)

(declare-fun b_free!31159 () Bool)

(declare-fun b_next!31863 () Bool)

(assert (=> b!1303368 (= b_free!31159 (not b_next!31863))))

(declare-fun tp!380427 () Bool)

(declare-fun b_and!87011 () Bool)

(assert (=> b!1303368 (= tp!380427 b_and!87011)))

(declare-fun b_free!31161 () Bool)

(declare-fun b_next!31865 () Bool)

(assert (=> b!1303368 (= b_free!31161 (not b_next!31865))))

(declare-fun tp!380433 () Bool)

(declare-fun b_and!87013 () Bool)

(assert (=> b!1303368 (= tp!380433 b_and!87013)))

(declare-fun b!1303372 () Bool)

(declare-fun b_free!31163 () Bool)

(declare-fun b_next!31867 () Bool)

(assert (=> b!1303372 (= b_free!31163 (not b_next!31867))))

(declare-fun tp!380434 () Bool)

(declare-fun b_and!87015 () Bool)

(assert (=> b!1303372 (= tp!380434 b_and!87015)))

(declare-fun b_free!31165 () Bool)

(declare-fun b_next!31869 () Bool)

(assert (=> b!1303372 (= b_free!31165 (not b_next!31869))))

(declare-fun tp!380429 () Bool)

(declare-fun b_and!87017 () Bool)

(assert (=> b!1303372 (= tp!380429 b_and!87017)))

(declare-fun b!1303369 () Bool)

(assert (=> b!1303369 true))

(assert (=> b!1303369 true))

(declare-fun b!1303370 () Bool)

(assert (=> b!1303370 true))

(declare-fun b!1303376 () Bool)

(assert (=> b!1303376 true))

(declare-fun e!835810 () Bool)

(declare-fun e!835807 () Bool)

(declare-datatypes ((List!13182 0))(
  ( (Nil!13116) (Cons!13116 (h!18517 (_ BitVec 16)) (t!117743 List!13182)) )
))
(declare-datatypes ((TokenValue!2357 0))(
  ( (FloatLiteralValue!4714 (text!16944 List!13182)) (TokenValueExt!2356 (__x!8543 Int)) (Broken!11785 (value!74216 List!13182)) (Object!2422) (End!2357) (Def!2357) (Underscore!2357) (Match!2357) (Else!2357) (Error!2357) (Case!2357) (If!2357) (Extends!2357) (Abstract!2357) (Class!2357) (Val!2357) (DelimiterValue!4714 (del!2417 List!13182)) (KeywordValue!2363 (value!74217 List!13182)) (CommentValue!4714 (value!74218 List!13182)) (WhitespaceValue!4714 (value!74219 List!13182)) (IndentationValue!2357 (value!74220 List!13182)) (String!16020) (Int32!2357) (Broken!11786 (value!74221 List!13182)) (Boolean!2358) (Unit!19221) (OperatorValue!2360 (op!2417 List!13182)) (IdentifierValue!4714 (value!74222 List!13182)) (IdentifierValue!4715 (value!74223 List!13182)) (WhitespaceValue!4715 (value!74224 List!13182)) (True!4714) (False!4714) (Broken!11787 (value!74225 List!13182)) (Broken!11788 (value!74226 List!13182)) (True!4715) (RightBrace!2357) (RightBracket!2357) (Colon!2357) (Null!2357) (Comma!2357) (LeftBracket!2357) (False!4715) (LeftBrace!2357) (ImaginaryLiteralValue!2357 (text!16945 List!13182)) (StringLiteralValue!7071 (value!74227 List!13182)) (EOFValue!2357 (value!74228 List!13182)) (IdentValue!2357 (value!74229 List!13182)) (DelimiterValue!4715 (value!74230 List!13182)) (DedentValue!2357 (value!74231 List!13182)) (NewLineValue!2357 (value!74232 List!13182)) (IntegerValue!7071 (value!74233 (_ BitVec 32)) (text!16946 List!13182)) (IntegerValue!7072 (value!74234 Int) (text!16947 List!13182)) (Times!2357) (Or!2357) (Equal!2357) (Minus!2357) (Broken!11789 (value!74235 List!13182)) (And!2357) (Div!2357) (LessEqual!2357) (Mod!2357) (Concat!5938) (Not!2357) (Plus!2357) (SpaceValue!2357 (value!74236 List!13182)) (IntegerValue!7073 (value!74237 Int) (text!16948 List!13182)) (StringLiteralValue!7072 (text!16949 List!13182)) (FloatLiteralValue!4715 (text!16950 List!13182)) (BytesLiteralValue!2357 (value!74238 List!13182)) (CommentValue!4715 (value!74239 List!13182)) (StringLiteralValue!7073 (value!74240 List!13182)) (ErrorTokenValue!2357 (msg!2418 List!13182)) )
))
(declare-datatypes ((C!7452 0))(
  ( (C!7453 (val!4286 Int)) )
))
(declare-datatypes ((List!13183 0))(
  ( (Nil!13117) (Cons!13117 (h!18518 C!7452) (t!117744 List!13183)) )
))
(declare-datatypes ((IArray!8613 0))(
  ( (IArray!8614 (innerList!4364 List!13183)) )
))
(declare-datatypes ((Conc!4304 0))(
  ( (Node!4304 (left!11279 Conc!4304) (right!11609 Conc!4304) (csize!8838 Int) (cheight!4515 Int)) (Leaf!6634 (xs!7019 IArray!8613) (csize!8839 Int)) (Empty!4304) )
))
(declare-datatypes ((BalanceConc!8548 0))(
  ( (BalanceConc!8549 (c!214264 Conc!4304)) )
))
(declare-datatypes ((Regex!3581 0))(
  ( (ElementMatch!3581 (c!214265 C!7452)) (Concat!5939 (regOne!7674 Regex!3581) (regTwo!7674 Regex!3581)) (EmptyExpr!3581) (Star!3581 (reg!3910 Regex!3581)) (EmptyLang!3581) (Union!3581 (regOne!7675 Regex!3581) (regTwo!7675 Regex!3581)) )
))
(declare-datatypes ((String!16021 0))(
  ( (String!16022 (value!74241 String)) )
))
(declare-datatypes ((TokenValueInjection!4374 0))(
  ( (TokenValueInjection!4375 (toValue!3482 Int) (toChars!3341 Int)) )
))
(declare-datatypes ((Rule!4334 0))(
  ( (Rule!4335 (regex!2267 Regex!3581) (tag!2529 String!16021) (isSeparator!2267 Bool) (transformation!2267 TokenValueInjection!4374)) )
))
(declare-datatypes ((Token!4196 0))(
  ( (Token!4197 (value!74242 TokenValue!2357) (rule!4006 Rule!4334) (size!10700 Int) (originalCharacters!3129 List!13183)) )
))
(declare-fun t1!34 () Token!4196)

(declare-fun b!1303357 () Bool)

(declare-fun tp!380431 () Bool)

(declare-fun inv!21 (TokenValue!2357) Bool)

(assert (=> b!1303357 (= e!835810 (and (inv!21 (value!74242 t1!34)) e!835807 tp!380431))))

(declare-fun e!835806 () Bool)

(assert (=> b!1303358 (= e!835806 (and tp!380432 tp!380423))))

(declare-fun b!1303359 () Bool)

(declare-fun e!835800 () Bool)

(declare-fun e!835798 () Bool)

(assert (=> b!1303359 (= e!835800 e!835798)))

(declare-fun res!584119 () Bool)

(assert (=> b!1303359 (=> (not res!584119) (not e!835798))))

(declare-fun lt!428610 () Regex!3581)

(declare-fun lt!428612 () List!13183)

(declare-fun prefixMatch!94 (Regex!3581 List!13183) Bool)

(assert (=> b!1303359 (= res!584119 (prefixMatch!94 lt!428610 lt!428612))))

(declare-datatypes ((LexerInterface!1962 0))(
  ( (LexerInterfaceExt!1959 (__x!8544 Int)) (Lexer!1960) )
))
(declare-fun thiss!19762 () LexerInterface!1962)

(declare-datatypes ((List!13184 0))(
  ( (Nil!13118) (Cons!13118 (h!18519 Rule!4334) (t!117745 List!13184)) )
))
(declare-fun rules!2550 () List!13184)

(declare-fun rulesRegex!152 (LexerInterface!1962 List!13184) Regex!3581)

(assert (=> b!1303359 (= lt!428610 (rulesRegex!152 thiss!19762 rules!2550))))

(declare-fun lt!428615 () List!13183)

(declare-fun lt!428611 () C!7452)

(declare-fun ++!3338 (List!13183 List!13183) List!13183)

(assert (=> b!1303359 (= lt!428612 (++!3338 lt!428615 (Cons!13117 lt!428611 Nil!13117)))))

(declare-fun lt!428607 () BalanceConc!8548)

(declare-fun apply!2933 (BalanceConc!8548 Int) C!7452)

(assert (=> b!1303359 (= lt!428611 (apply!2933 lt!428607 0))))

(declare-fun lt!428620 () BalanceConc!8548)

(declare-fun list!4910 (BalanceConc!8548) List!13183)

(assert (=> b!1303359 (= lt!428615 (list!4910 lt!428620))))

(declare-fun charsOf!1239 (Token!4196) BalanceConc!8548)

(assert (=> b!1303359 (= lt!428620 (charsOf!1239 t1!34))))

(declare-fun b!1303360 () Bool)

(declare-fun e!835812 () Bool)

(declare-fun e!835803 () Bool)

(assert (=> b!1303360 (= e!835812 e!835803)))

(declare-fun res!584123 () Bool)

(assert (=> b!1303360 (=> res!584123 e!835803)))

(declare-fun lt!428606 () C!7452)

(declare-fun contains!2218 (List!13183 C!7452) Bool)

(assert (=> b!1303360 (= res!584123 (not (contains!2218 lt!428612 lt!428606)))))

(assert (=> b!1303360 (= lt!428606 (apply!2933 lt!428620 0))))

(declare-fun b!1303361 () Bool)

(declare-fun res!584115 () Bool)

(assert (=> b!1303361 (=> (not res!584115) (not e!835800))))

(declare-fun sepAndNonSepRulesDisjointChars!640 (List!13184 List!13184) Bool)

(assert (=> b!1303361 (= res!584115 (sepAndNonSepRulesDisjointChars!640 rules!2550 rules!2550))))

(declare-fun b!1303362 () Bool)

(declare-fun res!584129 () Bool)

(declare-fun e!835808 () Bool)

(assert (=> b!1303362 (=> (not res!584129) (not e!835808))))

(declare-fun isEmpty!7765 (List!13184) Bool)

(assert (=> b!1303362 (= res!584129 (not (isEmpty!7765 rules!2550)))))

(declare-fun b!1303363 () Bool)

(declare-fun e!835795 () Bool)

(assert (=> b!1303363 (= e!835795 true)))

(declare-datatypes ((List!13185 0))(
  ( (Nil!13119) (Cons!13119 (h!18520 Token!4196) (t!117746 List!13185)) )
))
(declare-fun lt!428616 () List!13185)

(declare-datatypes ((IArray!8615 0))(
  ( (IArray!8616 (innerList!4365 List!13185)) )
))
(declare-datatypes ((Conc!4305 0))(
  ( (Node!4305 (left!11280 Conc!4305) (right!11610 Conc!4305) (csize!8840 Int) (cheight!4516 Int)) (Leaf!6635 (xs!7020 IArray!8615) (csize!8841 Int)) (Empty!4305) )
))
(declare-datatypes ((BalanceConc!8550 0))(
  ( (BalanceConc!8551 (c!214266 Conc!4305)) )
))
(declare-fun list!4911 (BalanceConc!8550) List!13185)

(declare-datatypes ((tuple2!12722 0))(
  ( (tuple2!12723 (_1!7247 BalanceConc!8550) (_2!7247 BalanceConc!8548)) )
))
(declare-fun lex!797 (LexerInterface!1962 List!13184 BalanceConc!8548) tuple2!12722)

(declare-fun print!736 (LexerInterface!1962 BalanceConc!8550) BalanceConc!8548)

(declare-fun singletonSeq!836 (Token!4196) BalanceConc!8550)

(assert (=> b!1303363 (= lt!428616 (list!4911 (_1!7247 (lex!797 thiss!19762 rules!2550 (print!736 thiss!19762 (singletonSeq!836 t1!34))))))))

(declare-fun lt!428617 () Rule!4334)

(declare-fun lambda!51753 () Int)

(declare-fun getWitness!128 (List!13184 Int) Rule!4334)

(assert (=> b!1303363 (= lt!428617 (getWitness!128 rules!2550 lambda!51753))))

(declare-fun tp!380426 () Bool)

(declare-fun e!835809 () Bool)

(declare-fun b!1303365 () Bool)

(declare-fun t2!34 () Token!4196)

(declare-fun inv!17532 (String!16021) Bool)

(declare-fun inv!17535 (TokenValueInjection!4374) Bool)

(assert (=> b!1303365 (= e!835809 (and tp!380426 (inv!17532 (tag!2529 (rule!4006 t2!34))) (inv!17535 (transformation!2267 (rule!4006 t2!34))) e!835806))))

(declare-fun b!1303366 () Bool)

(declare-fun res!584132 () Bool)

(assert (=> b!1303366 (=> res!584132 e!835803)))

(assert (=> b!1303366 (= res!584132 (not (contains!2218 lt!428612 lt!428611)))))

(declare-fun e!835804 () Bool)

(declare-fun b!1303367 () Bool)

(declare-fun tp!380428 () Bool)

(assert (=> b!1303367 (= e!835807 (and tp!380428 (inv!17532 (tag!2529 (rule!4006 t1!34))) (inv!17535 (transformation!2267 (rule!4006 t1!34))) e!835804))))

(declare-fun e!835797 () Bool)

(assert (=> b!1303368 (= e!835797 (and tp!380427 tp!380433))))

(declare-fun e!835805 () Bool)

(assert (=> b!1303369 (= e!835798 (not e!835805))))

(declare-fun res!584128 () Bool)

(assert (=> b!1303369 (=> res!584128 e!835805)))

(declare-fun lambda!51750 () Int)

(declare-fun Exists!739 (Int) Bool)

(assert (=> b!1303369 (= res!584128 (not (Exists!739 lambda!51750)))))

(assert (=> b!1303369 (Exists!739 lambda!51750)))

(declare-datatypes ((Unit!19222 0))(
  ( (Unit!19223) )
))
(declare-fun lt!428609 () Unit!19222)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!57 (Regex!3581 List!13183) Unit!19222)

(assert (=> b!1303369 (= lt!428609 (lemmaPrefixMatchThenExistsStringThatMatches!57 lt!428610 lt!428612))))

(declare-fun e!835792 () Bool)

(assert (=> b!1303370 (= e!835803 e!835792)))

(declare-fun res!584113 () Bool)

(assert (=> b!1303370 (=> res!584113 e!835792)))

(declare-fun lambda!51752 () Int)

(declare-fun lambda!51751 () Int)

(declare-datatypes ((List!13186 0))(
  ( (Nil!13120) (Cons!13120 (h!18521 Regex!3581) (t!117747 List!13186)) )
))
(declare-fun exists!236 (List!13186 Int) Bool)

(declare-fun map!2867 (List!13184 Int) List!13186)

(assert (=> b!1303370 (= res!584113 (not (exists!236 (map!2867 rules!2550 lambda!51751) lambda!51752)))))

(declare-fun lt!428608 () List!13186)

(assert (=> b!1303370 (exists!236 lt!428608 lambda!51752)))

(declare-fun lt!428613 () Unit!19222)

(declare-fun lt!428614 () List!13183)

(declare-fun matchRGenUnionSpec!18 (Regex!3581 List!13186 List!13183) Unit!19222)

(assert (=> b!1303370 (= lt!428613 (matchRGenUnionSpec!18 lt!428610 lt!428608 lt!428614))))

(assert (=> b!1303370 (= lt!428608 (map!2867 rules!2550 lambda!51751))))

(declare-fun e!835793 () Bool)

(declare-fun tp!380430 () Bool)

(declare-fun b!1303371 () Bool)

(assert (=> b!1303371 (= e!835793 (and (inv!21 (value!74242 t2!34)) e!835809 tp!380430))))

(assert (=> b!1303372 (= e!835804 (and tp!380434 tp!380429))))

(declare-fun b!1303373 () Bool)

(declare-fun res!584131 () Bool)

(assert (=> b!1303373 (=> res!584131 e!835803)))

(declare-fun matchR!1583 (Regex!3581 List!13183) Bool)

(assert (=> b!1303373 (= res!584131 (not (matchR!1583 lt!428610 lt!428614)))))

(declare-fun b!1303374 () Bool)

(assert (=> b!1303374 (= e!835808 e!835800)))

(declare-fun res!584125 () Bool)

(assert (=> b!1303374 (=> (not res!584125) (not e!835800))))

(declare-fun size!10701 (BalanceConc!8548) Int)

(assert (=> b!1303374 (= res!584125 (> (size!10701 lt!428607) 0))))

(assert (=> b!1303374 (= lt!428607 (charsOf!1239 t2!34))))

(declare-fun b!1303375 () Bool)

(declare-fun res!584121 () Bool)

(assert (=> b!1303375 (=> (not res!584121) (not e!835808))))

(assert (=> b!1303375 (= res!584121 (not (= (isSeparator!2267 (rule!4006 t1!34)) (isSeparator!2267 (rule!4006 t2!34)))))))

(declare-fun e!835796 () Bool)

(assert (=> b!1303376 (= e!835796 e!835795)))

(declare-fun res!584130 () Bool)

(assert (=> b!1303376 (=> res!584130 e!835795)))

(declare-fun exists!237 (List!13184 Int) Bool)

(assert (=> b!1303376 (= res!584130 (not (exists!237 rules!2550 lambda!51753)))))

(assert (=> b!1303376 (exists!237 rules!2550 lambda!51753)))

(declare-fun lt!428618 () Regex!3581)

(declare-fun lt!428619 () Unit!19222)

(declare-fun lemmaMapContains!10 (List!13184 Int Regex!3581) Unit!19222)

(assert (=> b!1303376 (= lt!428619 (lemmaMapContains!10 rules!2550 lambda!51751 lt!428618))))

(declare-fun b!1303377 () Bool)

(declare-fun res!584120 () Bool)

(assert (=> b!1303377 (=> res!584120 e!835803)))

(assert (=> b!1303377 (= res!584120 (not (contains!2218 lt!428614 lt!428606)))))

(declare-fun b!1303378 () Bool)

(declare-fun res!584122 () Bool)

(assert (=> b!1303378 (=> (not res!584122) (not e!835808))))

(declare-fun rulesProduceIndividualToken!931 (LexerInterface!1962 List!13184 Token!4196) Bool)

(assert (=> b!1303378 (= res!584122 (rulesProduceIndividualToken!931 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1303379 () Bool)

(declare-fun res!584126 () Bool)

(assert (=> b!1303379 (=> res!584126 e!835803)))

(assert (=> b!1303379 (= res!584126 (not (contains!2218 lt!428614 lt!428611)))))

(declare-fun b!1303380 () Bool)

(declare-fun e!835802 () Bool)

(declare-fun e!835790 () Bool)

(declare-fun tp!380424 () Bool)

(assert (=> b!1303380 (= e!835802 (and e!835790 tp!380424))))

(declare-fun b!1303381 () Bool)

(declare-fun res!584124 () Bool)

(assert (=> b!1303381 (=> (not res!584124) (not e!835808))))

(declare-fun rulesInvariant!1832 (LexerInterface!1962 List!13184) Bool)

(assert (=> b!1303381 (= res!584124 (rulesInvariant!1832 thiss!19762 rules!2550))))

(declare-fun res!584127 () Bool)

(assert (=> start!115046 (=> (not res!584127) (not e!835808))))

(get-info :version)

(assert (=> start!115046 (= res!584127 ((_ is Lexer!1960) thiss!19762))))

(assert (=> start!115046 e!835808))

(assert (=> start!115046 true))

(assert (=> start!115046 e!835802))

(declare-fun inv!17536 (Token!4196) Bool)

(assert (=> start!115046 (and (inv!17536 t1!34) e!835810)))

(assert (=> start!115046 (and (inv!17536 t2!34) e!835793)))

(declare-fun b!1303364 () Bool)

(declare-fun res!584116 () Bool)

(assert (=> b!1303364 (=> (not res!584116) (not e!835800))))

(declare-fun separableTokensPredicate!245 (LexerInterface!1962 Token!4196 Token!4196 List!13184) Bool)

(assert (=> b!1303364 (= res!584116 (not (separableTokensPredicate!245 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1303382 () Bool)

(assert (=> b!1303382 (= e!835805 e!835812)))

(declare-fun res!584114 () Bool)

(assert (=> b!1303382 (=> res!584114 e!835812)))

(declare-fun getSuffix!437 (List!13183 List!13183) List!13183)

(assert (=> b!1303382 (= res!584114 (not (= lt!428614 (++!3338 lt!428612 (getSuffix!437 lt!428614 lt!428612)))))))

(declare-fun pickWitness!44 (Int) List!13183)

(assert (=> b!1303382 (= lt!428614 (pickWitness!44 lambda!51750))))

(declare-fun b!1303383 () Bool)

(assert (=> b!1303383 (= e!835792 e!835796)))

(declare-fun res!584118 () Bool)

(assert (=> b!1303383 (=> res!584118 e!835796)))

(declare-fun contains!2219 (List!13186 Regex!3581) Bool)

(assert (=> b!1303383 (= res!584118 (not (contains!2219 (map!2867 rules!2550 lambda!51751) lt!428618)))))

(declare-fun getWitness!129 (List!13186 Int) Regex!3581)

(assert (=> b!1303383 (= lt!428618 (getWitness!129 (map!2867 rules!2550 lambda!51751) lambda!51752))))

(declare-fun b!1303384 () Bool)

(declare-fun res!584117 () Bool)

(assert (=> b!1303384 (=> (not res!584117) (not e!835808))))

(assert (=> b!1303384 (= res!584117 (rulesProduceIndividualToken!931 thiss!19762 rules!2550 t2!34))))

(declare-fun tp!380425 () Bool)

(declare-fun b!1303385 () Bool)

(assert (=> b!1303385 (= e!835790 (and tp!380425 (inv!17532 (tag!2529 (h!18519 rules!2550))) (inv!17535 (transformation!2267 (h!18519 rules!2550))) e!835797))))

(assert (= (and start!115046 res!584127) b!1303362))

(assert (= (and b!1303362 res!584129) b!1303381))

(assert (= (and b!1303381 res!584124) b!1303378))

(assert (= (and b!1303378 res!584122) b!1303384))

(assert (= (and b!1303384 res!584117) b!1303375))

(assert (= (and b!1303375 res!584121) b!1303374))

(assert (= (and b!1303374 res!584125) b!1303361))

(assert (= (and b!1303361 res!584115) b!1303364))

(assert (= (and b!1303364 res!584116) b!1303359))

(assert (= (and b!1303359 res!584119) b!1303369))

(assert (= (and b!1303369 (not res!584128)) b!1303382))

(assert (= (and b!1303382 (not res!584114)) b!1303360))

(assert (= (and b!1303360 (not res!584123)) b!1303377))

(assert (= (and b!1303377 (not res!584120)) b!1303366))

(assert (= (and b!1303366 (not res!584132)) b!1303379))

(assert (= (and b!1303379 (not res!584126)) b!1303373))

(assert (= (and b!1303373 (not res!584131)) b!1303370))

(assert (= (and b!1303370 (not res!584113)) b!1303383))

(assert (= (and b!1303383 (not res!584118)) b!1303376))

(assert (= (and b!1303376 (not res!584130)) b!1303363))

(assert (= b!1303385 b!1303368))

(assert (= b!1303380 b!1303385))

(assert (= (and start!115046 ((_ is Cons!13118) rules!2550)) b!1303380))

(assert (= b!1303367 b!1303372))

(assert (= b!1303357 b!1303367))

(assert (= start!115046 b!1303357))

(assert (= b!1303365 b!1303358))

(assert (= b!1303371 b!1303365))

(assert (= start!115046 b!1303371))

(declare-fun m!1454683 () Bool)

(assert (=> b!1303381 m!1454683))

(declare-fun m!1454685 () Bool)

(assert (=> b!1303371 m!1454685))

(declare-fun m!1454687 () Bool)

(assert (=> b!1303374 m!1454687))

(declare-fun m!1454689 () Bool)

(assert (=> b!1303374 m!1454689))

(declare-fun m!1454691 () Bool)

(assert (=> b!1303377 m!1454691))

(declare-fun m!1454693 () Bool)

(assert (=> b!1303359 m!1454693))

(declare-fun m!1454695 () Bool)

(assert (=> b!1303359 m!1454695))

(declare-fun m!1454697 () Bool)

(assert (=> b!1303359 m!1454697))

(declare-fun m!1454699 () Bool)

(assert (=> b!1303359 m!1454699))

(declare-fun m!1454701 () Bool)

(assert (=> b!1303359 m!1454701))

(declare-fun m!1454703 () Bool)

(assert (=> b!1303359 m!1454703))

(declare-fun m!1454705 () Bool)

(assert (=> b!1303379 m!1454705))

(declare-fun m!1454707 () Bool)

(assert (=> b!1303357 m!1454707))

(declare-fun m!1454709 () Bool)

(assert (=> b!1303369 m!1454709))

(assert (=> b!1303369 m!1454709))

(declare-fun m!1454711 () Bool)

(assert (=> b!1303369 m!1454711))

(declare-fun m!1454713 () Bool)

(assert (=> b!1303367 m!1454713))

(declare-fun m!1454715 () Bool)

(assert (=> b!1303367 m!1454715))

(declare-fun m!1454717 () Bool)

(assert (=> b!1303360 m!1454717))

(declare-fun m!1454719 () Bool)

(assert (=> b!1303360 m!1454719))

(declare-fun m!1454721 () Bool)

(assert (=> b!1303364 m!1454721))

(declare-fun m!1454723 () Bool)

(assert (=> b!1303366 m!1454723))

(declare-fun m!1454725 () Bool)

(assert (=> b!1303383 m!1454725))

(assert (=> b!1303383 m!1454725))

(declare-fun m!1454727 () Bool)

(assert (=> b!1303383 m!1454727))

(assert (=> b!1303383 m!1454725))

(assert (=> b!1303383 m!1454725))

(declare-fun m!1454729 () Bool)

(assert (=> b!1303383 m!1454729))

(declare-fun m!1454731 () Bool)

(assert (=> b!1303378 m!1454731))

(declare-fun m!1454733 () Bool)

(assert (=> b!1303384 m!1454733))

(declare-fun m!1454735 () Bool)

(assert (=> b!1303385 m!1454735))

(declare-fun m!1454737 () Bool)

(assert (=> b!1303385 m!1454737))

(declare-fun m!1454739 () Bool)

(assert (=> b!1303376 m!1454739))

(assert (=> b!1303376 m!1454739))

(declare-fun m!1454741 () Bool)

(assert (=> b!1303376 m!1454741))

(declare-fun m!1454743 () Bool)

(assert (=> b!1303382 m!1454743))

(assert (=> b!1303382 m!1454743))

(declare-fun m!1454745 () Bool)

(assert (=> b!1303382 m!1454745))

(declare-fun m!1454747 () Bool)

(assert (=> b!1303382 m!1454747))

(declare-fun m!1454749 () Bool)

(assert (=> b!1303361 m!1454749))

(declare-fun m!1454751 () Bool)

(assert (=> start!115046 m!1454751))

(declare-fun m!1454753 () Bool)

(assert (=> start!115046 m!1454753))

(declare-fun m!1454755 () Bool)

(assert (=> b!1303365 m!1454755))

(declare-fun m!1454757 () Bool)

(assert (=> b!1303365 m!1454757))

(declare-fun m!1454759 () Bool)

(assert (=> b!1303370 m!1454759))

(assert (=> b!1303370 m!1454725))

(assert (=> b!1303370 m!1454725))

(declare-fun m!1454761 () Bool)

(assert (=> b!1303370 m!1454761))

(assert (=> b!1303370 m!1454725))

(declare-fun m!1454763 () Bool)

(assert (=> b!1303370 m!1454763))

(declare-fun m!1454765 () Bool)

(assert (=> b!1303362 m!1454765))

(declare-fun m!1454767 () Bool)

(assert (=> b!1303363 m!1454767))

(declare-fun m!1454769 () Bool)

(assert (=> b!1303363 m!1454769))

(declare-fun m!1454771 () Bool)

(assert (=> b!1303363 m!1454771))

(assert (=> b!1303363 m!1454767))

(assert (=> b!1303363 m!1454771))

(declare-fun m!1454773 () Bool)

(assert (=> b!1303363 m!1454773))

(declare-fun m!1454775 () Bool)

(assert (=> b!1303363 m!1454775))

(declare-fun m!1454777 () Bool)

(assert (=> b!1303373 m!1454777))

(check-sat (not b!1303378) (not b!1303382) (not b!1303361) (not b!1303381) (not b!1303380) (not b!1303366) (not b!1303370) (not b_next!31861) (not b_next!31865) (not b!1303369) (not b!1303373) (not b!1303363) (not b_next!31869) b_and!87009 (not b!1303376) b_and!87015 (not b!1303360) (not b!1303379) (not b_next!31859) (not start!115046) (not b!1303364) (not b!1303384) b_and!87007 (not b!1303371) b_and!87011 (not b!1303374) (not b!1303359) b_and!87013 (not b_next!31863) (not b!1303383) (not b!1303367) (not b!1303377) (not b!1303362) (not b!1303385) (not b!1303365) b_and!87017 (not b_next!31867) (not b!1303357))
(check-sat b_and!87015 (not b_next!31859) b_and!87007 b_and!87011 (not b_next!31861) (not b_next!31865) (not b_next!31869) b_and!87009 b_and!87013 (not b_next!31863) b_and!87017 (not b_next!31867))
