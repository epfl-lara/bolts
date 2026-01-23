; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!396662 () Bool)

(assert start!396662)

(declare-fun b!4162806 () Bool)

(declare-fun b_free!120047 () Bool)

(declare-fun b_next!120751 () Bool)

(assert (=> b!4162806 (= b_free!120047 (not b_next!120751))))

(declare-fun tp!1270950 () Bool)

(declare-fun b_and!324433 () Bool)

(assert (=> b!4162806 (= tp!1270950 b_and!324433)))

(declare-fun b_free!120049 () Bool)

(declare-fun b_next!120753 () Bool)

(assert (=> b!4162806 (= b_free!120049 (not b_next!120753))))

(declare-fun tp!1270944 () Bool)

(declare-fun b_and!324435 () Bool)

(assert (=> b!4162806 (= tp!1270944 b_and!324435)))

(declare-fun b!4162792 () Bool)

(declare-fun b_free!120051 () Bool)

(declare-fun b_next!120755 () Bool)

(assert (=> b!4162792 (= b_free!120051 (not b_next!120755))))

(declare-fun tp!1270938 () Bool)

(declare-fun b_and!324437 () Bool)

(assert (=> b!4162792 (= tp!1270938 b_and!324437)))

(declare-fun b_free!120053 () Bool)

(declare-fun b_next!120757 () Bool)

(assert (=> b!4162792 (= b_free!120053 (not b_next!120757))))

(declare-fun tp!1270945 () Bool)

(declare-fun b_and!324439 () Bool)

(assert (=> b!4162792 (= tp!1270945 b_and!324439)))

(declare-fun b!4162787 () Bool)

(declare-fun b_free!120055 () Bool)

(declare-fun b_next!120759 () Bool)

(assert (=> b!4162787 (= b_free!120055 (not b_next!120759))))

(declare-fun tp!1270940 () Bool)

(declare-fun b_and!324441 () Bool)

(assert (=> b!4162787 (= tp!1270940 b_and!324441)))

(declare-fun b_free!120057 () Bool)

(declare-fun b_next!120761 () Bool)

(assert (=> b!4162787 (= b_free!120057 (not b_next!120761))))

(declare-fun tp!1270939 () Bool)

(declare-fun b_and!324443 () Bool)

(assert (=> b!4162787 (= tp!1270939 b_and!324443)))

(declare-fun e!2584186 () Bool)

(assert (=> b!4162787 (= e!2584186 (and tp!1270940 tp!1270939))))

(declare-fun b!4162788 () Bool)

(declare-fun res!1705338 () Bool)

(declare-fun e!2584178 () Bool)

(assert (=> b!4162788 (=> (not res!1705338) (not e!2584178))))

(declare-datatypes ((LexerInterface!7125 0))(
  ( (LexerInterfaceExt!7122 (__x!27745 Int)) (Lexer!7123) )
))
(declare-fun thiss!25889 () LexerInterface!7125)

(declare-datatypes ((C!25064 0))(
  ( (C!25065 (val!14694 Int)) )
))
(declare-datatypes ((List!45673 0))(
  ( (Nil!45549) (Cons!45549 (h!50969 C!25064) (t!343736 List!45673)) )
))
(declare-datatypes ((IArray!27491 0))(
  ( (IArray!27492 (innerList!13803 List!45673)) )
))
(declare-datatypes ((Conc!13743 0))(
  ( (Node!13743 (left!33963 Conc!13743) (right!34293 Conc!13743) (csize!27716 Int) (cheight!13954 Int)) (Leaf!21252 (xs!17049 IArray!27491) (csize!27717 Int)) (Empty!13743) )
))
(declare-datatypes ((BalanceConc!27080 0))(
  ( (BalanceConc!27081 (c!712020 Conc!13743)) )
))
(declare-datatypes ((List!45674 0))(
  ( (Nil!45550) (Cons!45550 (h!50970 (_ BitVec 16)) (t!343737 List!45674)) )
))
(declare-datatypes ((TokenValue!7762 0))(
  ( (FloatLiteralValue!15524 (text!54779 List!45674)) (TokenValueExt!7761 (__x!27746 Int)) (Broken!38810 (value!235184 List!45674)) (Object!7885) (End!7762) (Def!7762) (Underscore!7762) (Match!7762) (Else!7762) (Error!7762) (Case!7762) (If!7762) (Extends!7762) (Abstract!7762) (Class!7762) (Val!7762) (DelimiterValue!15524 (del!7822 List!45674)) (KeywordValue!7768 (value!235185 List!45674)) (CommentValue!15524 (value!235186 List!45674)) (WhitespaceValue!15524 (value!235187 List!45674)) (IndentationValue!7762 (value!235188 List!45674)) (String!52675) (Int32!7762) (Broken!38811 (value!235189 List!45674)) (Boolean!7763) (Unit!64638) (OperatorValue!7765 (op!7822 List!45674)) (IdentifierValue!15524 (value!235190 List!45674)) (IdentifierValue!15525 (value!235191 List!45674)) (WhitespaceValue!15525 (value!235192 List!45674)) (True!15524) (False!15524) (Broken!38812 (value!235193 List!45674)) (Broken!38813 (value!235194 List!45674)) (True!15525) (RightBrace!7762) (RightBracket!7762) (Colon!7762) (Null!7762) (Comma!7762) (LeftBracket!7762) (False!15525) (LeftBrace!7762) (ImaginaryLiteralValue!7762 (text!54780 List!45674)) (StringLiteralValue!23286 (value!235195 List!45674)) (EOFValue!7762 (value!235196 List!45674)) (IdentValue!7762 (value!235197 List!45674)) (DelimiterValue!15525 (value!235198 List!45674)) (DedentValue!7762 (value!235199 List!45674)) (NewLineValue!7762 (value!235200 List!45674)) (IntegerValue!23286 (value!235201 (_ BitVec 32)) (text!54781 List!45674)) (IntegerValue!23287 (value!235202 Int) (text!54782 List!45674)) (Times!7762) (Or!7762) (Equal!7762) (Minus!7762) (Broken!38814 (value!235203 List!45674)) (And!7762) (Div!7762) (LessEqual!7762) (Mod!7762) (Concat!20199) (Not!7762) (Plus!7762) (SpaceValue!7762 (value!235204 List!45674)) (IntegerValue!23288 (value!235205 Int) (text!54783 List!45674)) (StringLiteralValue!23287 (text!54784 List!45674)) (FloatLiteralValue!15525 (text!54785 List!45674)) (BytesLiteralValue!7762 (value!235206 List!45674)) (CommentValue!15525 (value!235207 List!45674)) (StringLiteralValue!23288 (value!235208 List!45674)) (ErrorTokenValue!7762 (msg!7823 List!45674)) )
))
(declare-datatypes ((TokenValueInjection!14952 0))(
  ( (TokenValueInjection!14953 (toValue!10196 Int) (toChars!10055 Int)) )
))
(declare-datatypes ((Regex!12437 0))(
  ( (ElementMatch!12437 (c!712021 C!25064)) (Concat!20200 (regOne!25386 Regex!12437) (regTwo!25386 Regex!12437)) (EmptyExpr!12437) (Star!12437 (reg!12766 Regex!12437)) (EmptyLang!12437) (Union!12437 (regOne!25387 Regex!12437) (regTwo!25387 Regex!12437)) )
))
(declare-datatypes ((String!52676 0))(
  ( (String!52677 (value!235209 String)) )
))
(declare-datatypes ((Rule!14864 0))(
  ( (Rule!14865 (regex!7532 Regex!12437) (tag!8396 String!52676) (isSeparator!7532 Bool) (transformation!7532 TokenValueInjection!14952)) )
))
(declare-datatypes ((List!45675 0))(
  ( (Nil!45551) (Cons!45551 (h!50971 Rule!14864) (t!343738 List!45675)) )
))
(declare-fun rules!3820 () List!45675)

(declare-fun rulesInvariant!6338 (LexerInterface!7125 List!45675) Bool)

(assert (=> b!4162788 (= res!1705338 (rulesInvariant!6338 thiss!25889 rules!3820))))

(declare-fun b!4162789 () Bool)

(declare-fun e!2584179 () Bool)

(declare-fun e!2584175 () Bool)

(declare-fun tp!1270948 () Bool)

(assert (=> b!4162789 (= e!2584179 (and e!2584175 tp!1270948))))

(declare-fun b!4162790 () Bool)

(declare-fun e!2584173 () Bool)

(declare-fun tp_is_empty!21837 () Bool)

(declare-fun tp!1270941 () Bool)

(assert (=> b!4162790 (= e!2584173 (and tp_is_empty!21837 tp!1270941))))

(declare-fun b!4162791 () Bool)

(declare-fun res!1705339 () Bool)

(assert (=> b!4162791 (=> (not res!1705339) (not e!2584178))))

(declare-fun r!4097 () Rule!14864)

(declare-fun contains!9325 (List!45675 Rule!14864) Bool)

(assert (=> b!4162791 (= res!1705339 (contains!9325 rules!3820 r!4097))))

(declare-fun e!2584182 () Bool)

(assert (=> b!4162792 (= e!2584182 (and tp!1270938 tp!1270945))))

(declare-fun b!4162793 () Bool)

(declare-fun e!2584185 () Bool)

(declare-fun rulesValidInductive!2774 (LexerInterface!7125 List!45675) Bool)

(assert (=> b!4162793 (= e!2584185 (rulesValidInductive!2774 thiss!25889 rules!3820))))

(declare-fun b!4162794 () Bool)

(declare-fun e!2584177 () Bool)

(declare-fun tp!1270949 () Bool)

(assert (=> b!4162794 (= e!2584177 (and tp_is_empty!21837 tp!1270949))))

(declare-fun b!4162795 () Bool)

(declare-fun res!1705336 () Bool)

(assert (=> b!4162795 (=> (not res!1705336) (not e!2584178))))

(declare-fun pBis!100 () List!45673)

(declare-fun input!3316 () List!45673)

(declare-fun isPrefix!4389 (List!45673 List!45673) Bool)

(assert (=> b!4162795 (= res!1705336 (isPrefix!4389 pBis!100 input!3316))))

(declare-fun b!4162796 () Bool)

(declare-fun res!1705340 () Bool)

(assert (=> b!4162796 (=> (not res!1705340) (not e!2584178))))

(declare-fun isEmpty!26965 (List!45675) Bool)

(assert (=> b!4162796 (= res!1705340 (not (isEmpty!26965 rules!3820)))))

(declare-fun b!4162797 () Bool)

(declare-fun tp!1270943 () Bool)

(declare-fun inv!60063 (String!52676) Bool)

(declare-fun inv!60065 (TokenValueInjection!14952) Bool)

(assert (=> b!4162797 (= e!2584175 (and tp!1270943 (inv!60063 (tag!8396 (h!50971 rules!3820))) (inv!60065 (transformation!7532 (h!50971 rules!3820))) e!2584186))))

(declare-fun b!4162798 () Bool)

(declare-fun e!2584188 () Bool)

(declare-fun tp!1270947 () Bool)

(assert (=> b!4162798 (= e!2584188 (and tp_is_empty!21837 tp!1270947))))

(declare-fun e!2584183 () Bool)

(declare-fun tp!1270942 () Bool)

(declare-fun e!2584184 () Bool)

(declare-fun b!4162799 () Bool)

(assert (=> b!4162799 (= e!2584183 (and tp!1270942 (inv!60063 (tag!8396 r!4097)) (inv!60065 (transformation!7532 r!4097)) e!2584184))))

(declare-fun b!4162800 () Bool)

(declare-fun e!2584187 () Bool)

(assert (=> b!4162800 (= e!2584178 (not e!2584187))))

(declare-fun res!1705342 () Bool)

(assert (=> b!4162800 (=> res!1705342 e!2584187)))

(declare-fun p!2942 () List!45673)

(declare-fun matchR!6182 (Regex!12437 List!45673) Bool)

(assert (=> b!4162800 (= res!1705342 (not (matchR!6182 (regex!7532 r!4097) p!2942)))))

(declare-fun ruleValid!3256 (LexerInterface!7125 Rule!14864) Bool)

(assert (=> b!4162800 (ruleValid!3256 thiss!25889 r!4097)))

(declare-datatypes ((Unit!64639 0))(
  ( (Unit!64640) )
))
(declare-fun lt!1483156 () Unit!64639)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2296 (LexerInterface!7125 Rule!14864 List!45675) Unit!64639)

(assert (=> b!4162800 (= lt!1483156 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2296 thiss!25889 r!4097 rules!3820))))

(declare-fun b!4162801 () Bool)

(declare-fun res!1705341 () Bool)

(assert (=> b!4162801 (=> res!1705341 e!2584185)))

(declare-fun lt!1483151 () Int)

(declare-fun size!33467 (List!45673) Int)

(assert (=> b!4162801 (= res!1705341 (<= (size!33467 pBis!100) lt!1483151))))

(declare-fun b!4162802 () Bool)

(declare-fun res!1705337 () Bool)

(assert (=> b!4162802 (=> (not res!1705337) (not e!2584178))))

(assert (=> b!4162802 (= res!1705337 (isPrefix!4389 p!2942 input!3316))))

(declare-fun b!4162803 () Bool)

(declare-fun res!1705335 () Bool)

(assert (=> b!4162803 (=> (not res!1705335) (not e!2584178))))

(declare-fun rBis!161 () Rule!14864)

(assert (=> b!4162803 (= res!1705335 (contains!9325 rules!3820 rBis!161))))

(declare-fun b!4162804 () Bool)

(assert (=> b!4162804 (= e!2584187 e!2584185)))

(declare-fun res!1705333 () Bool)

(assert (=> b!4162804 (=> res!1705333 e!2584185)))

(declare-fun lt!1483155 () TokenValue!7762)

(declare-datatypes ((Token!13810 0))(
  ( (Token!13811 (value!235210 TokenValue!7762) (rule!10582 Rule!14864) (size!33468 Int) (originalCharacters!7936 List!45673)) )
))
(declare-datatypes ((tuple2!43486 0))(
  ( (tuple2!43487 (_1!24877 Token!13810) (_2!24877 List!45673)) )
))
(declare-datatypes ((Option!9746 0))(
  ( (None!9745) (Some!9745 (v!40519 tuple2!43486)) )
))
(declare-fun maxPrefixOneRule!3154 (LexerInterface!7125 Rule!14864 List!45673) Option!9746)

(declare-fun getSuffix!2702 (List!45673 List!45673) List!45673)

(assert (=> b!4162804 (= res!1705333 (not (= (maxPrefixOneRule!3154 thiss!25889 r!4097 input!3316) (Some!9745 (tuple2!43487 (Token!13811 lt!1483155 r!4097 lt!1483151 p!2942) (getSuffix!2702 input!3316 p!2942))))))))

(assert (=> b!4162804 (= lt!1483151 (size!33467 p!2942))))

(declare-fun lt!1483152 () BalanceConc!27080)

(declare-fun apply!10513 (TokenValueInjection!14952 BalanceConc!27080) TokenValue!7762)

(assert (=> b!4162804 (= lt!1483155 (apply!10513 (transformation!7532 r!4097) lt!1483152))))

(assert (=> b!4162804 (isPrefix!4389 input!3316 input!3316)))

(declare-fun lt!1483153 () Unit!64639)

(declare-fun lemmaIsPrefixRefl!2828 (List!45673 List!45673) Unit!64639)

(assert (=> b!4162804 (= lt!1483153 (lemmaIsPrefixRefl!2828 input!3316 input!3316))))

(declare-fun lt!1483154 () Unit!64639)

(declare-fun lemmaSemiInverse!2306 (TokenValueInjection!14952 BalanceConc!27080) Unit!64639)

(assert (=> b!4162804 (= lt!1483154 (lemmaSemiInverse!2306 (transformation!7532 r!4097) lt!1483152))))

(declare-fun seqFromList!5565 (List!45673) BalanceConc!27080)

(assert (=> b!4162804 (= lt!1483152 (seqFromList!5565 p!2942))))

(declare-fun res!1705334 () Bool)

(assert (=> start!396662 (=> (not res!1705334) (not e!2584178))))

(get-info :version)

(assert (=> start!396662 (= res!1705334 ((_ is Lexer!7123) thiss!25889))))

(assert (=> start!396662 e!2584178))

(assert (=> start!396662 e!2584188))

(assert (=> start!396662 e!2584179))

(assert (=> start!396662 e!2584177))

(assert (=> start!396662 e!2584173))

(assert (=> start!396662 true))

(declare-fun e!2584180 () Bool)

(assert (=> start!396662 e!2584180))

(assert (=> start!396662 e!2584183))

(declare-fun b!4162805 () Bool)

(declare-fun tp!1270946 () Bool)

(assert (=> b!4162805 (= e!2584180 (and tp!1270946 (inv!60063 (tag!8396 rBis!161)) (inv!60065 (transformation!7532 rBis!161)) e!2584182))))

(assert (=> b!4162806 (= e!2584184 (and tp!1270950 tp!1270944))))

(assert (= (and start!396662 res!1705334) b!4162802))

(assert (= (and b!4162802 res!1705337) b!4162795))

(assert (= (and b!4162795 res!1705336) b!4162796))

(assert (= (and b!4162796 res!1705340) b!4162788))

(assert (= (and b!4162788 res!1705338) b!4162791))

(assert (= (and b!4162791 res!1705339) b!4162803))

(assert (= (and b!4162803 res!1705335) b!4162800))

(assert (= (and b!4162800 (not res!1705342)) b!4162804))

(assert (= (and b!4162804 (not res!1705333)) b!4162801))

(assert (= (and b!4162801 (not res!1705341)) b!4162793))

(assert (= (and start!396662 ((_ is Cons!45549) pBis!100)) b!4162798))

(assert (= b!4162797 b!4162787))

(assert (= b!4162789 b!4162797))

(assert (= (and start!396662 ((_ is Cons!45551) rules!3820)) b!4162789))

(assert (= (and start!396662 ((_ is Cons!45549) p!2942)) b!4162794))

(assert (= (and start!396662 ((_ is Cons!45549) input!3316)) b!4162790))

(assert (= b!4162805 b!4162792))

(assert (= start!396662 b!4162805))

(assert (= b!4162799 b!4162806))

(assert (= start!396662 b!4162799))

(declare-fun m!4755265 () Bool)

(assert (=> b!4162799 m!4755265))

(declare-fun m!4755267 () Bool)

(assert (=> b!4162799 m!4755267))

(declare-fun m!4755269 () Bool)

(assert (=> b!4162797 m!4755269))

(declare-fun m!4755271 () Bool)

(assert (=> b!4162797 m!4755271))

(declare-fun m!4755273 () Bool)

(assert (=> b!4162803 m!4755273))

(declare-fun m!4755275 () Bool)

(assert (=> b!4162791 m!4755275))

(declare-fun m!4755277 () Bool)

(assert (=> b!4162802 m!4755277))

(declare-fun m!4755279 () Bool)

(assert (=> b!4162805 m!4755279))

(declare-fun m!4755281 () Bool)

(assert (=> b!4162805 m!4755281))

(declare-fun m!4755283 () Bool)

(assert (=> b!4162793 m!4755283))

(declare-fun m!4755285 () Bool)

(assert (=> b!4162795 m!4755285))

(declare-fun m!4755287 () Bool)

(assert (=> b!4162788 m!4755287))

(declare-fun m!4755289 () Bool)

(assert (=> b!4162800 m!4755289))

(declare-fun m!4755291 () Bool)

(assert (=> b!4162800 m!4755291))

(declare-fun m!4755293 () Bool)

(assert (=> b!4162800 m!4755293))

(declare-fun m!4755295 () Bool)

(assert (=> b!4162804 m!4755295))

(declare-fun m!4755297 () Bool)

(assert (=> b!4162804 m!4755297))

(declare-fun m!4755299 () Bool)

(assert (=> b!4162804 m!4755299))

(declare-fun m!4755301 () Bool)

(assert (=> b!4162804 m!4755301))

(declare-fun m!4755303 () Bool)

(assert (=> b!4162804 m!4755303))

(declare-fun m!4755305 () Bool)

(assert (=> b!4162804 m!4755305))

(declare-fun m!4755307 () Bool)

(assert (=> b!4162804 m!4755307))

(declare-fun m!4755309 () Bool)

(assert (=> b!4162804 m!4755309))

(declare-fun m!4755311 () Bool)

(assert (=> b!4162796 m!4755311))

(declare-fun m!4755313 () Bool)

(assert (=> b!4162801 m!4755313))

(check-sat tp_is_empty!21837 (not b!4162798) (not b!4162788) (not b_next!120751) (not b_next!120759) (not b!4162794) (not b!4162805) (not b_next!120753) (not b!4162802) (not b!4162793) (not b!4162800) b_and!324437 (not b!4162796) (not b!4162789) (not b!4162797) b_and!324443 (not b!4162804) (not b_next!120755) b_and!324433 (not b_next!120757) (not b_next!120761) b_and!324439 (not b!4162801) b_and!324435 (not b!4162795) (not b!4162791) (not b!4162803) b_and!324441 (not b!4162790) (not b!4162799))
(check-sat b_and!324437 (not b_next!120751) b_and!324443 (not b_next!120755) (not b_next!120759) b_and!324435 (not b_next!120753) b_and!324441 b_and!324433 (not b_next!120757) (not b_next!120761) b_and!324439)
(get-model)

(declare-fun d!1230397 () Bool)

(assert (=> d!1230397 (= (inv!60063 (tag!8396 (h!50971 rules!3820))) (= (mod (str.len (value!235209 (tag!8396 (h!50971 rules!3820)))) 2) 0))))

(assert (=> b!4162797 d!1230397))

(declare-fun d!1230399 () Bool)

(declare-fun res!1705353 () Bool)

(declare-fun e!2584191 () Bool)

(assert (=> d!1230399 (=> (not res!1705353) (not e!2584191))))

(declare-fun semiInverseModEq!3269 (Int Int) Bool)

(assert (=> d!1230399 (= res!1705353 (semiInverseModEq!3269 (toChars!10055 (transformation!7532 (h!50971 rules!3820))) (toValue!10196 (transformation!7532 (h!50971 rules!3820)))))))

(assert (=> d!1230399 (= (inv!60065 (transformation!7532 (h!50971 rules!3820))) e!2584191)))

(declare-fun b!4162809 () Bool)

(declare-fun equivClasses!3168 (Int Int) Bool)

(assert (=> b!4162809 (= e!2584191 (equivClasses!3168 (toChars!10055 (transformation!7532 (h!50971 rules!3820))) (toValue!10196 (transformation!7532 (h!50971 rules!3820)))))))

(assert (= (and d!1230399 res!1705353) b!4162809))

(declare-fun m!4755315 () Bool)

(assert (=> d!1230399 m!4755315))

(declare-fun m!4755317 () Bool)

(assert (=> b!4162809 m!4755317))

(assert (=> b!4162797 d!1230399))

(declare-fun d!1230401 () Bool)

(declare-fun res!1705356 () Bool)

(declare-fun e!2584194 () Bool)

(assert (=> d!1230401 (=> (not res!1705356) (not e!2584194))))

(declare-fun rulesValid!2937 (LexerInterface!7125 List!45675) Bool)

(assert (=> d!1230401 (= res!1705356 (rulesValid!2937 thiss!25889 rules!3820))))

(assert (=> d!1230401 (= (rulesInvariant!6338 thiss!25889 rules!3820) e!2584194)))

(declare-fun b!4162812 () Bool)

(declare-datatypes ((List!45676 0))(
  ( (Nil!45552) (Cons!45552 (h!50972 String!52676) (t!343771 List!45676)) )
))
(declare-fun noDuplicateTag!3098 (LexerInterface!7125 List!45675 List!45676) Bool)

(assert (=> b!4162812 (= e!2584194 (noDuplicateTag!3098 thiss!25889 rules!3820 Nil!45552))))

(assert (= (and d!1230401 res!1705356) b!4162812))

(declare-fun m!4755319 () Bool)

(assert (=> d!1230401 m!4755319))

(declare-fun m!4755321 () Bool)

(assert (=> b!4162812 m!4755321))

(assert (=> b!4162788 d!1230401))

(declare-fun b!4162841 () Bool)

(declare-fun e!2584210 () Bool)

(declare-fun head!8838 (List!45673) C!25064)

(assert (=> b!4162841 (= e!2584210 (= (head!8838 p!2942) (c!712021 (regex!7532 r!4097))))))

(declare-fun b!4162842 () Bool)

(declare-fun e!2584211 () Bool)

(declare-fun nullable!4360 (Regex!12437) Bool)

(assert (=> b!4162842 (= e!2584211 (nullable!4360 (regex!7532 r!4097)))))

(declare-fun b!4162843 () Bool)

(declare-fun e!2584209 () Bool)

(declare-fun lt!1483159 () Bool)

(assert (=> b!4162843 (= e!2584209 (not lt!1483159))))

(declare-fun b!4162844 () Bool)

(declare-fun res!1705380 () Bool)

(assert (=> b!4162844 (=> (not res!1705380) (not e!2584210))))

(declare-fun isEmpty!26968 (List!45673) Bool)

(declare-fun tail!6685 (List!45673) List!45673)

(assert (=> b!4162844 (= res!1705380 (isEmpty!26968 (tail!6685 p!2942)))))

(declare-fun b!4162845 () Bool)

(declare-fun e!2584213 () Bool)

(declare-fun e!2584215 () Bool)

(assert (=> b!4162845 (= e!2584213 e!2584215)))

(declare-fun res!1705377 () Bool)

(assert (=> b!4162845 (=> (not res!1705377) (not e!2584215))))

(assert (=> b!4162845 (= res!1705377 (not lt!1483159))))

(declare-fun b!4162846 () Bool)

(declare-fun e!2584212 () Bool)

(declare-fun call!290853 () Bool)

(assert (=> b!4162846 (= e!2584212 (= lt!1483159 call!290853))))

(declare-fun bm!290848 () Bool)

(assert (=> bm!290848 (= call!290853 (isEmpty!26968 p!2942))))

(declare-fun b!4162847 () Bool)

(declare-fun derivativeStep!3752 (Regex!12437 C!25064) Regex!12437)

(assert (=> b!4162847 (= e!2584211 (matchR!6182 (derivativeStep!3752 (regex!7532 r!4097) (head!8838 p!2942)) (tail!6685 p!2942)))))

(declare-fun d!1230405 () Bool)

(assert (=> d!1230405 e!2584212))

(declare-fun c!712028 () Bool)

(assert (=> d!1230405 (= c!712028 ((_ is EmptyExpr!12437) (regex!7532 r!4097)))))

(assert (=> d!1230405 (= lt!1483159 e!2584211)))

(declare-fun c!712029 () Bool)

(assert (=> d!1230405 (= c!712029 (isEmpty!26968 p!2942))))

(declare-fun validRegex!5570 (Regex!12437) Bool)

(assert (=> d!1230405 (validRegex!5570 (regex!7532 r!4097))))

(assert (=> d!1230405 (= (matchR!6182 (regex!7532 r!4097) p!2942) lt!1483159)))

(declare-fun b!4162848 () Bool)

(declare-fun res!1705375 () Bool)

(assert (=> b!4162848 (=> res!1705375 e!2584213)))

(assert (=> b!4162848 (= res!1705375 e!2584210)))

(declare-fun res!1705374 () Bool)

(assert (=> b!4162848 (=> (not res!1705374) (not e!2584210))))

(assert (=> b!4162848 (= res!1705374 lt!1483159)))

(declare-fun b!4162849 () Bool)

(declare-fun e!2584214 () Bool)

(assert (=> b!4162849 (= e!2584215 e!2584214)))

(declare-fun res!1705376 () Bool)

(assert (=> b!4162849 (=> res!1705376 e!2584214)))

(assert (=> b!4162849 (= res!1705376 call!290853)))

(declare-fun b!4162850 () Bool)

(assert (=> b!4162850 (= e!2584212 e!2584209)))

(declare-fun c!712030 () Bool)

(assert (=> b!4162850 (= c!712030 ((_ is EmptyLang!12437) (regex!7532 r!4097)))))

(declare-fun b!4162851 () Bool)

(assert (=> b!4162851 (= e!2584214 (not (= (head!8838 p!2942) (c!712021 (regex!7532 r!4097)))))))

(declare-fun b!4162852 () Bool)

(declare-fun res!1705373 () Bool)

(assert (=> b!4162852 (=> (not res!1705373) (not e!2584210))))

(assert (=> b!4162852 (= res!1705373 (not call!290853))))

(declare-fun b!4162853 () Bool)

(declare-fun res!1705379 () Bool)

(assert (=> b!4162853 (=> res!1705379 e!2584214)))

(assert (=> b!4162853 (= res!1705379 (not (isEmpty!26968 (tail!6685 p!2942))))))

(declare-fun b!4162854 () Bool)

(declare-fun res!1705378 () Bool)

(assert (=> b!4162854 (=> res!1705378 e!2584213)))

(assert (=> b!4162854 (= res!1705378 (not ((_ is ElementMatch!12437) (regex!7532 r!4097))))))

(assert (=> b!4162854 (= e!2584209 e!2584213)))

(assert (= (and d!1230405 c!712029) b!4162842))

(assert (= (and d!1230405 (not c!712029)) b!4162847))

(assert (= (and d!1230405 c!712028) b!4162846))

(assert (= (and d!1230405 (not c!712028)) b!4162850))

(assert (= (and b!4162850 c!712030) b!4162843))

(assert (= (and b!4162850 (not c!712030)) b!4162854))

(assert (= (and b!4162854 (not res!1705378)) b!4162848))

(assert (= (and b!4162848 res!1705374) b!4162852))

(assert (= (and b!4162852 res!1705373) b!4162844))

(assert (= (and b!4162844 res!1705380) b!4162841))

(assert (= (and b!4162848 (not res!1705375)) b!4162845))

(assert (= (and b!4162845 res!1705377) b!4162849))

(assert (= (and b!4162849 (not res!1705376)) b!4162853))

(assert (= (and b!4162853 (not res!1705379)) b!4162851))

(assert (= (or b!4162846 b!4162849 b!4162852) bm!290848))

(declare-fun m!4755323 () Bool)

(assert (=> b!4162847 m!4755323))

(assert (=> b!4162847 m!4755323))

(declare-fun m!4755325 () Bool)

(assert (=> b!4162847 m!4755325))

(declare-fun m!4755327 () Bool)

(assert (=> b!4162847 m!4755327))

(assert (=> b!4162847 m!4755325))

(assert (=> b!4162847 m!4755327))

(declare-fun m!4755329 () Bool)

(assert (=> b!4162847 m!4755329))

(assert (=> b!4162853 m!4755327))

(assert (=> b!4162853 m!4755327))

(declare-fun m!4755331 () Bool)

(assert (=> b!4162853 m!4755331))

(assert (=> b!4162841 m!4755323))

(declare-fun m!4755333 () Bool)

(assert (=> bm!290848 m!4755333))

(assert (=> b!4162844 m!4755327))

(assert (=> b!4162844 m!4755327))

(assert (=> b!4162844 m!4755331))

(assert (=> b!4162851 m!4755323))

(declare-fun m!4755335 () Bool)

(assert (=> b!4162842 m!4755335))

(assert (=> d!1230405 m!4755333))

(declare-fun m!4755337 () Bool)

(assert (=> d!1230405 m!4755337))

(assert (=> b!4162800 d!1230405))

(declare-fun d!1230407 () Bool)

(declare-fun res!1705385 () Bool)

(declare-fun e!2584218 () Bool)

(assert (=> d!1230407 (=> (not res!1705385) (not e!2584218))))

(assert (=> d!1230407 (= res!1705385 (validRegex!5570 (regex!7532 r!4097)))))

(assert (=> d!1230407 (= (ruleValid!3256 thiss!25889 r!4097) e!2584218)))

(declare-fun b!4162859 () Bool)

(declare-fun res!1705386 () Bool)

(assert (=> b!4162859 (=> (not res!1705386) (not e!2584218))))

(assert (=> b!4162859 (= res!1705386 (not (nullable!4360 (regex!7532 r!4097))))))

(declare-fun b!4162860 () Bool)

(assert (=> b!4162860 (= e!2584218 (not (= (tag!8396 r!4097) (String!52677 ""))))))

(assert (= (and d!1230407 res!1705385) b!4162859))

(assert (= (and b!4162859 res!1705386) b!4162860))

(assert (=> d!1230407 m!4755337))

(assert (=> b!4162859 m!4755335))

(assert (=> b!4162800 d!1230407))

(declare-fun d!1230409 () Bool)

(assert (=> d!1230409 (ruleValid!3256 thiss!25889 r!4097)))

(declare-fun lt!1483162 () Unit!64639)

(declare-fun choose!25491 (LexerInterface!7125 Rule!14864 List!45675) Unit!64639)

(assert (=> d!1230409 (= lt!1483162 (choose!25491 thiss!25889 r!4097 rules!3820))))

(assert (=> d!1230409 (contains!9325 rules!3820 r!4097)))

(assert (=> d!1230409 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2296 thiss!25889 r!4097 rules!3820) lt!1483162)))

(declare-fun bs!595684 () Bool)

(assert (= bs!595684 d!1230409))

(assert (=> bs!595684 m!4755291))

(declare-fun m!4755339 () Bool)

(assert (=> bs!595684 m!4755339))

(assert (=> bs!595684 m!4755275))

(assert (=> b!4162800 d!1230409))

(declare-fun d!1230411 () Bool)

(assert (=> d!1230411 (= (inv!60063 (tag!8396 r!4097)) (= (mod (str.len (value!235209 (tag!8396 r!4097))) 2) 0))))

(assert (=> b!4162799 d!1230411))

(declare-fun d!1230413 () Bool)

(declare-fun res!1705387 () Bool)

(declare-fun e!2584219 () Bool)

(assert (=> d!1230413 (=> (not res!1705387) (not e!2584219))))

(assert (=> d!1230413 (= res!1705387 (semiInverseModEq!3269 (toChars!10055 (transformation!7532 r!4097)) (toValue!10196 (transformation!7532 r!4097))))))

(assert (=> d!1230413 (= (inv!60065 (transformation!7532 r!4097)) e!2584219)))

(declare-fun b!4162861 () Bool)

(assert (=> b!4162861 (= e!2584219 (equivClasses!3168 (toChars!10055 (transformation!7532 r!4097)) (toValue!10196 (transformation!7532 r!4097))))))

(assert (= (and d!1230413 res!1705387) b!4162861))

(declare-fun m!4755341 () Bool)

(assert (=> d!1230413 m!4755341))

(declare-fun m!4755343 () Bool)

(assert (=> b!4162861 m!4755343))

(assert (=> b!4162799 d!1230413))

(declare-fun d!1230415 () Bool)

(declare-fun lt!1483165 () Int)

(assert (=> d!1230415 (>= lt!1483165 0)))

(declare-fun e!2584222 () Int)

(assert (=> d!1230415 (= lt!1483165 e!2584222)))

(declare-fun c!712033 () Bool)

(assert (=> d!1230415 (= c!712033 ((_ is Nil!45549) pBis!100))))

(assert (=> d!1230415 (= (size!33467 pBis!100) lt!1483165)))

(declare-fun b!4162866 () Bool)

(assert (=> b!4162866 (= e!2584222 0)))

(declare-fun b!4162867 () Bool)

(assert (=> b!4162867 (= e!2584222 (+ 1 (size!33467 (t!343736 pBis!100))))))

(assert (= (and d!1230415 c!712033) b!4162866))

(assert (= (and d!1230415 (not c!712033)) b!4162867))

(declare-fun m!4755345 () Bool)

(assert (=> b!4162867 m!4755345))

(assert (=> b!4162801 d!1230415))

(declare-fun d!1230417 () Bool)

(declare-fun e!2584231 () Bool)

(assert (=> d!1230417 e!2584231))

(declare-fun res!1705398 () Bool)

(assert (=> d!1230417 (=> res!1705398 e!2584231)))

(declare-fun lt!1483168 () Bool)

(assert (=> d!1230417 (= res!1705398 (not lt!1483168))))

(declare-fun e!2584229 () Bool)

(assert (=> d!1230417 (= lt!1483168 e!2584229)))

(declare-fun res!1705397 () Bool)

(assert (=> d!1230417 (=> res!1705397 e!2584229)))

(assert (=> d!1230417 (= res!1705397 ((_ is Nil!45549) p!2942))))

(assert (=> d!1230417 (= (isPrefix!4389 p!2942 input!3316) lt!1483168)))

(declare-fun b!4162878 () Bool)

(declare-fun e!2584230 () Bool)

(assert (=> b!4162878 (= e!2584230 (isPrefix!4389 (tail!6685 p!2942) (tail!6685 input!3316)))))

(declare-fun b!4162877 () Bool)

(declare-fun res!1705399 () Bool)

(assert (=> b!4162877 (=> (not res!1705399) (not e!2584230))))

(assert (=> b!4162877 (= res!1705399 (= (head!8838 p!2942) (head!8838 input!3316)))))

(declare-fun b!4162879 () Bool)

(assert (=> b!4162879 (= e!2584231 (>= (size!33467 input!3316) (size!33467 p!2942)))))

(declare-fun b!4162876 () Bool)

(assert (=> b!4162876 (= e!2584229 e!2584230)))

(declare-fun res!1705396 () Bool)

(assert (=> b!4162876 (=> (not res!1705396) (not e!2584230))))

(assert (=> b!4162876 (= res!1705396 (not ((_ is Nil!45549) input!3316)))))

(assert (= (and d!1230417 (not res!1705397)) b!4162876))

(assert (= (and b!4162876 res!1705396) b!4162877))

(assert (= (and b!4162877 res!1705399) b!4162878))

(assert (= (and d!1230417 (not res!1705398)) b!4162879))

(assert (=> b!4162878 m!4755327))

(declare-fun m!4755347 () Bool)

(assert (=> b!4162878 m!4755347))

(assert (=> b!4162878 m!4755327))

(assert (=> b!4162878 m!4755347))

(declare-fun m!4755349 () Bool)

(assert (=> b!4162878 m!4755349))

(assert (=> b!4162877 m!4755323))

(declare-fun m!4755351 () Bool)

(assert (=> b!4162877 m!4755351))

(declare-fun m!4755353 () Bool)

(assert (=> b!4162879 m!4755353))

(assert (=> b!4162879 m!4755309))

(assert (=> b!4162802 d!1230417))

(declare-fun d!1230419 () Bool)

(declare-fun lt!1483171 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7082 (List!45675) (InoxSet Rule!14864))

(assert (=> d!1230419 (= lt!1483171 (select (content!7082 rules!3820) r!4097))))

(declare-fun e!2584236 () Bool)

(assert (=> d!1230419 (= lt!1483171 e!2584236)))

(declare-fun res!1705405 () Bool)

(assert (=> d!1230419 (=> (not res!1705405) (not e!2584236))))

(assert (=> d!1230419 (= res!1705405 ((_ is Cons!45551) rules!3820))))

(assert (=> d!1230419 (= (contains!9325 rules!3820 r!4097) lt!1483171)))

(declare-fun b!4162884 () Bool)

(declare-fun e!2584237 () Bool)

(assert (=> b!4162884 (= e!2584236 e!2584237)))

(declare-fun res!1705404 () Bool)

(assert (=> b!4162884 (=> res!1705404 e!2584237)))

(assert (=> b!4162884 (= res!1705404 (= (h!50971 rules!3820) r!4097))))

(declare-fun b!4162885 () Bool)

(assert (=> b!4162885 (= e!2584237 (contains!9325 (t!343738 rules!3820) r!4097))))

(assert (= (and d!1230419 res!1705405) b!4162884))

(assert (= (and b!4162884 (not res!1705404)) b!4162885))

(declare-fun m!4755355 () Bool)

(assert (=> d!1230419 m!4755355))

(declare-fun m!4755357 () Bool)

(assert (=> d!1230419 m!4755357))

(declare-fun m!4755359 () Bool)

(assert (=> b!4162885 m!4755359))

(assert (=> b!4162791 d!1230419))

(declare-fun b!4162957 () Bool)

(declare-fun e!2584277 () Bool)

(declare-fun lt!1483212 () Option!9746)

(declare-fun get!14811 (Option!9746) tuple2!43486)

(assert (=> b!4162957 (= e!2584277 (= (size!33468 (_1!24877 (get!14811 lt!1483212))) (size!33467 (originalCharacters!7936 (_1!24877 (get!14811 lt!1483212))))))))

(declare-fun b!4162958 () Bool)

(declare-fun e!2584276 () Option!9746)

(declare-datatypes ((tuple2!43490 0))(
  ( (tuple2!43491 (_1!24879 List!45673) (_2!24879 List!45673)) )
))
(declare-fun lt!1483215 () tuple2!43490)

(declare-fun size!33470 (BalanceConc!27080) Int)

(assert (=> b!4162958 (= e!2584276 (Some!9745 (tuple2!43487 (Token!13811 (apply!10513 (transformation!7532 r!4097) (seqFromList!5565 (_1!24879 lt!1483215))) r!4097 (size!33470 (seqFromList!5565 (_1!24879 lt!1483215))) (_1!24879 lt!1483215)) (_2!24879 lt!1483215))))))

(declare-fun lt!1483211 () Unit!64639)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1532 (Regex!12437 List!45673) Unit!64639)

(assert (=> b!4162958 (= lt!1483211 (longestMatchIsAcceptedByMatchOrIsEmpty!1532 (regex!7532 r!4097) input!3316))))

(declare-fun res!1705455 () Bool)

(declare-fun findLongestMatchInner!1559 (Regex!12437 List!45673 Int List!45673 List!45673 Int) tuple2!43490)

(assert (=> b!4162958 (= res!1705455 (isEmpty!26968 (_1!24879 (findLongestMatchInner!1559 (regex!7532 r!4097) Nil!45549 (size!33467 Nil!45549) input!3316 input!3316 (size!33467 input!3316)))))))

(declare-fun e!2584279 () Bool)

(assert (=> b!4162958 (=> res!1705455 e!2584279)))

(assert (=> b!4162958 e!2584279))

(declare-fun lt!1483214 () Unit!64639)

(assert (=> b!4162958 (= lt!1483214 lt!1483211)))

(declare-fun lt!1483213 () Unit!64639)

(assert (=> b!4162958 (= lt!1483213 (lemmaSemiInverse!2306 (transformation!7532 r!4097) (seqFromList!5565 (_1!24879 lt!1483215))))))

(declare-fun b!4162959 () Bool)

(declare-fun res!1705454 () Bool)

(assert (=> b!4162959 (=> (not res!1705454) (not e!2584277))))

(assert (=> b!4162959 (= res!1705454 (= (rule!10582 (_1!24877 (get!14811 lt!1483212))) r!4097))))

(declare-fun b!4162960 () Bool)

(assert (=> b!4162960 (= e!2584276 None!9745)))

(declare-fun b!4162961 () Bool)

(declare-fun res!1705458 () Bool)

(assert (=> b!4162961 (=> (not res!1705458) (not e!2584277))))

(declare-fun ++!11658 (List!45673 List!45673) List!45673)

(declare-fun list!16503 (BalanceConc!27080) List!45673)

(declare-fun charsOf!5021 (Token!13810) BalanceConc!27080)

(assert (=> b!4162961 (= res!1705458 (= (++!11658 (list!16503 (charsOf!5021 (_1!24877 (get!14811 lt!1483212)))) (_2!24877 (get!14811 lt!1483212))) input!3316))))

(declare-fun d!1230421 () Bool)

(declare-fun e!2584278 () Bool)

(assert (=> d!1230421 e!2584278))

(declare-fun res!1705453 () Bool)

(assert (=> d!1230421 (=> res!1705453 e!2584278)))

(declare-fun isEmpty!26969 (Option!9746) Bool)

(assert (=> d!1230421 (= res!1705453 (isEmpty!26969 lt!1483212))))

(assert (=> d!1230421 (= lt!1483212 e!2584276)))

(declare-fun c!712046 () Bool)

(assert (=> d!1230421 (= c!712046 (isEmpty!26968 (_1!24879 lt!1483215)))))

(declare-fun findLongestMatch!1472 (Regex!12437 List!45673) tuple2!43490)

(assert (=> d!1230421 (= lt!1483215 (findLongestMatch!1472 (regex!7532 r!4097) input!3316))))

(assert (=> d!1230421 (ruleValid!3256 thiss!25889 r!4097)))

(assert (=> d!1230421 (= (maxPrefixOneRule!3154 thiss!25889 r!4097 input!3316) lt!1483212)))

(declare-fun b!4162962 () Bool)

(declare-fun res!1705456 () Bool)

(assert (=> b!4162962 (=> (not res!1705456) (not e!2584277))))

(assert (=> b!4162962 (= res!1705456 (< (size!33467 (_2!24877 (get!14811 lt!1483212))) (size!33467 input!3316)))))

(declare-fun b!4162963 () Bool)

(declare-fun res!1705459 () Bool)

(assert (=> b!4162963 (=> (not res!1705459) (not e!2584277))))

(assert (=> b!4162963 (= res!1705459 (= (value!235210 (_1!24877 (get!14811 lt!1483212))) (apply!10513 (transformation!7532 (rule!10582 (_1!24877 (get!14811 lt!1483212)))) (seqFromList!5565 (originalCharacters!7936 (_1!24877 (get!14811 lt!1483212)))))))))

(declare-fun b!4162964 () Bool)

(assert (=> b!4162964 (= e!2584279 (matchR!6182 (regex!7532 r!4097) (_1!24879 (findLongestMatchInner!1559 (regex!7532 r!4097) Nil!45549 (size!33467 Nil!45549) input!3316 input!3316 (size!33467 input!3316)))))))

(declare-fun b!4162965 () Bool)

(assert (=> b!4162965 (= e!2584278 e!2584277)))

(declare-fun res!1705457 () Bool)

(assert (=> b!4162965 (=> (not res!1705457) (not e!2584277))))

(assert (=> b!4162965 (= res!1705457 (matchR!6182 (regex!7532 r!4097) (list!16503 (charsOf!5021 (_1!24877 (get!14811 lt!1483212))))))))

(assert (= (and d!1230421 c!712046) b!4162960))

(assert (= (and d!1230421 (not c!712046)) b!4162958))

(assert (= (and b!4162958 (not res!1705455)) b!4162964))

(assert (= (and d!1230421 (not res!1705453)) b!4162965))

(assert (= (and b!4162965 res!1705457) b!4162961))

(assert (= (and b!4162961 res!1705458) b!4162962))

(assert (= (and b!4162962 res!1705456) b!4162959))

(assert (= (and b!4162959 res!1705454) b!4162963))

(assert (= (and b!4162963 res!1705459) b!4162957))

(declare-fun m!4755425 () Bool)

(assert (=> b!4162957 m!4755425))

(declare-fun m!4755427 () Bool)

(assert (=> b!4162957 m!4755427))

(assert (=> b!4162963 m!4755425))

(declare-fun m!4755429 () Bool)

(assert (=> b!4162963 m!4755429))

(assert (=> b!4162963 m!4755429))

(declare-fun m!4755431 () Bool)

(assert (=> b!4162963 m!4755431))

(assert (=> b!4162961 m!4755425))

(declare-fun m!4755433 () Bool)

(assert (=> b!4162961 m!4755433))

(assert (=> b!4162961 m!4755433))

(declare-fun m!4755435 () Bool)

(assert (=> b!4162961 m!4755435))

(assert (=> b!4162961 m!4755435))

(declare-fun m!4755437 () Bool)

(assert (=> b!4162961 m!4755437))

(declare-fun m!4755439 () Bool)

(assert (=> d!1230421 m!4755439))

(declare-fun m!4755441 () Bool)

(assert (=> d!1230421 m!4755441))

(declare-fun m!4755443 () Bool)

(assert (=> d!1230421 m!4755443))

(assert (=> d!1230421 m!4755291))

(assert (=> b!4162965 m!4755425))

(assert (=> b!4162965 m!4755433))

(assert (=> b!4162965 m!4755433))

(assert (=> b!4162965 m!4755435))

(assert (=> b!4162965 m!4755435))

(declare-fun m!4755445 () Bool)

(assert (=> b!4162965 m!4755445))

(declare-fun m!4755447 () Bool)

(assert (=> b!4162964 m!4755447))

(assert (=> b!4162964 m!4755353))

(assert (=> b!4162964 m!4755447))

(assert (=> b!4162964 m!4755353))

(declare-fun m!4755449 () Bool)

(assert (=> b!4162964 m!4755449))

(declare-fun m!4755451 () Bool)

(assert (=> b!4162964 m!4755451))

(assert (=> b!4162962 m!4755425))

(declare-fun m!4755453 () Bool)

(assert (=> b!4162962 m!4755453))

(assert (=> b!4162962 m!4755353))

(assert (=> b!4162959 m!4755425))

(assert (=> b!4162958 m!4755353))

(declare-fun m!4755455 () Bool)

(assert (=> b!4162958 m!4755455))

(declare-fun m!4755457 () Bool)

(assert (=> b!4162958 m!4755457))

(declare-fun m!4755459 () Bool)

(assert (=> b!4162958 m!4755459))

(assert (=> b!4162958 m!4755455))

(assert (=> b!4162958 m!4755455))

(declare-fun m!4755461 () Bool)

(assert (=> b!4162958 m!4755461))

(assert (=> b!4162958 m!4755447))

(assert (=> b!4162958 m!4755447))

(assert (=> b!4162958 m!4755353))

(assert (=> b!4162958 m!4755449))

(assert (=> b!4162958 m!4755455))

(declare-fun m!4755463 () Bool)

(assert (=> b!4162958 m!4755463))

(declare-fun m!4755465 () Bool)

(assert (=> b!4162958 m!4755465))

(assert (=> b!4162804 d!1230421))

(declare-fun d!1230437 () Bool)

(declare-fun dynLambda!19493 (Int BalanceConc!27080) TokenValue!7762)

(assert (=> d!1230437 (= (apply!10513 (transformation!7532 r!4097) lt!1483152) (dynLambda!19493 (toValue!10196 (transformation!7532 r!4097)) lt!1483152))))

(declare-fun b_lambda!122177 () Bool)

(assert (=> (not b_lambda!122177) (not d!1230437)))

(declare-fun t!343746 () Bool)

(declare-fun tb!249289 () Bool)

(assert (=> (and b!4162806 (= (toValue!10196 (transformation!7532 r!4097)) (toValue!10196 (transformation!7532 r!4097))) t!343746) tb!249289))

(declare-fun result!303616 () Bool)

(declare-fun inv!21 (TokenValue!7762) Bool)

(assert (=> tb!249289 (= result!303616 (inv!21 (dynLambda!19493 (toValue!10196 (transformation!7532 r!4097)) lt!1483152)))))

(declare-fun m!4755467 () Bool)

(assert (=> tb!249289 m!4755467))

(assert (=> d!1230437 t!343746))

(declare-fun b_and!324451 () Bool)

(assert (= b_and!324433 (and (=> t!343746 result!303616) b_and!324451)))

(declare-fun tb!249291 () Bool)

(declare-fun t!343748 () Bool)

(assert (=> (and b!4162792 (= (toValue!10196 (transformation!7532 rBis!161)) (toValue!10196 (transformation!7532 r!4097))) t!343748) tb!249291))

(declare-fun result!303620 () Bool)

(assert (= result!303620 result!303616))

(assert (=> d!1230437 t!343748))

(declare-fun b_and!324453 () Bool)

(assert (= b_and!324437 (and (=> t!343748 result!303620) b_and!324453)))

(declare-fun t!343750 () Bool)

(declare-fun tb!249293 () Bool)

(assert (=> (and b!4162787 (= (toValue!10196 (transformation!7532 (h!50971 rules!3820))) (toValue!10196 (transformation!7532 r!4097))) t!343750) tb!249293))

(declare-fun result!303622 () Bool)

(assert (= result!303622 result!303616))

(assert (=> d!1230437 t!343750))

(declare-fun b_and!324455 () Bool)

(assert (= b_and!324441 (and (=> t!343750 result!303622) b_and!324455)))

(declare-fun m!4755469 () Bool)

(assert (=> d!1230437 m!4755469))

(assert (=> b!4162804 d!1230437))

(declare-fun d!1230439 () Bool)

(declare-fun lt!1483216 () Int)

(assert (=> d!1230439 (>= lt!1483216 0)))

(declare-fun e!2584283 () Int)

(assert (=> d!1230439 (= lt!1483216 e!2584283)))

(declare-fun c!712047 () Bool)

(assert (=> d!1230439 (= c!712047 ((_ is Nil!45549) p!2942))))

(assert (=> d!1230439 (= (size!33467 p!2942) lt!1483216)))

(declare-fun b!4162968 () Bool)

(assert (=> b!4162968 (= e!2584283 0)))

(declare-fun b!4162969 () Bool)

(assert (=> b!4162969 (= e!2584283 (+ 1 (size!33467 (t!343736 p!2942))))))

(assert (= (and d!1230439 c!712047) b!4162968))

(assert (= (and d!1230439 (not c!712047)) b!4162969))

(declare-fun m!4755471 () Bool)

(assert (=> b!4162969 m!4755471))

(assert (=> b!4162804 d!1230439))

(declare-fun b!4163106 () Bool)

(declare-fun e!2584367 () Bool)

(assert (=> b!4163106 (= e!2584367 true)))

(declare-fun d!1230441 () Bool)

(assert (=> d!1230441 e!2584367))

(assert (= d!1230441 b!4163106))

(declare-fun order!23983 () Int)

(declare-fun order!23981 () Int)

(declare-fun lambda!129060 () Int)

(declare-fun dynLambda!19494 (Int Int) Int)

(declare-fun dynLambda!19495 (Int Int) Int)

(assert (=> b!4163106 (< (dynLambda!19494 order!23981 (toValue!10196 (transformation!7532 r!4097))) (dynLambda!19495 order!23983 lambda!129060))))

(declare-fun order!23985 () Int)

(declare-fun dynLambda!19496 (Int Int) Int)

(assert (=> b!4163106 (< (dynLambda!19496 order!23985 (toChars!10055 (transformation!7532 r!4097))) (dynLambda!19495 order!23983 lambda!129060))))

(declare-fun dynLambda!19497 (Int TokenValue!7762) BalanceConc!27080)

(assert (=> d!1230441 (= (list!16503 (dynLambda!19497 (toChars!10055 (transformation!7532 r!4097)) (dynLambda!19493 (toValue!10196 (transformation!7532 r!4097)) lt!1483152))) (list!16503 lt!1483152))))

(declare-fun lt!1483236 () Unit!64639)

(declare-fun ForallOf!1006 (Int BalanceConc!27080) Unit!64639)

(assert (=> d!1230441 (= lt!1483236 (ForallOf!1006 lambda!129060 lt!1483152))))

(assert (=> d!1230441 (= (lemmaSemiInverse!2306 (transformation!7532 r!4097) lt!1483152) lt!1483236)))

(declare-fun b_lambda!122189 () Bool)

(assert (=> (not b_lambda!122189) (not d!1230441)))

(declare-fun t!343762 () Bool)

(declare-fun tb!249305 () Bool)

(assert (=> (and b!4162806 (= (toChars!10055 (transformation!7532 r!4097)) (toChars!10055 (transformation!7532 r!4097))) t!343762) tb!249305))

(declare-fun b!4163111 () Bool)

(declare-fun e!2584370 () Bool)

(declare-fun tp!1270998 () Bool)

(declare-fun inv!60068 (Conc!13743) Bool)

(assert (=> b!4163111 (= e!2584370 (and (inv!60068 (c!712020 (dynLambda!19497 (toChars!10055 (transformation!7532 r!4097)) (dynLambda!19493 (toValue!10196 (transformation!7532 r!4097)) lt!1483152)))) tp!1270998))))

(declare-fun result!303642 () Bool)

(declare-fun inv!60069 (BalanceConc!27080) Bool)

(assert (=> tb!249305 (= result!303642 (and (inv!60069 (dynLambda!19497 (toChars!10055 (transformation!7532 r!4097)) (dynLambda!19493 (toValue!10196 (transformation!7532 r!4097)) lt!1483152))) e!2584370))))

(assert (= tb!249305 b!4163111))

(declare-fun m!4755549 () Bool)

(assert (=> b!4163111 m!4755549))

(declare-fun m!4755551 () Bool)

(assert (=> tb!249305 m!4755551))

(assert (=> d!1230441 t!343762))

(declare-fun b_and!324473 () Bool)

(assert (= b_and!324435 (and (=> t!343762 result!303642) b_and!324473)))

(declare-fun tb!249307 () Bool)

(declare-fun t!343764 () Bool)

(assert (=> (and b!4162792 (= (toChars!10055 (transformation!7532 rBis!161)) (toChars!10055 (transformation!7532 r!4097))) t!343764) tb!249307))

(declare-fun result!303646 () Bool)

(assert (= result!303646 result!303642))

(assert (=> d!1230441 t!343764))

(declare-fun b_and!324475 () Bool)

(assert (= b_and!324439 (and (=> t!343764 result!303646) b_and!324475)))

(declare-fun t!343766 () Bool)

(declare-fun tb!249309 () Bool)

(assert (=> (and b!4162787 (= (toChars!10055 (transformation!7532 (h!50971 rules!3820))) (toChars!10055 (transformation!7532 r!4097))) t!343766) tb!249309))

(declare-fun result!303648 () Bool)

(assert (= result!303648 result!303642))

(assert (=> d!1230441 t!343766))

(declare-fun b_and!324477 () Bool)

(assert (= b_and!324443 (and (=> t!343766 result!303648) b_and!324477)))

(declare-fun b_lambda!122191 () Bool)

(assert (=> (not b_lambda!122191) (not d!1230441)))

(assert (=> d!1230441 t!343746))

(declare-fun b_and!324479 () Bool)

(assert (= b_and!324451 (and (=> t!343746 result!303616) b_and!324479)))

(assert (=> d!1230441 t!343748))

(declare-fun b_and!324481 () Bool)

(assert (= b_and!324453 (and (=> t!343748 result!303620) b_and!324481)))

(assert (=> d!1230441 t!343750))

(declare-fun b_and!324483 () Bool)

(assert (= b_and!324455 (and (=> t!343750 result!303622) b_and!324483)))

(declare-fun m!4755553 () Bool)

(assert (=> d!1230441 m!4755553))

(declare-fun m!4755555 () Bool)

(assert (=> d!1230441 m!4755555))

(declare-fun m!4755557 () Bool)

(assert (=> d!1230441 m!4755557))

(assert (=> d!1230441 m!4755469))

(assert (=> d!1230441 m!4755469))

(assert (=> d!1230441 m!4755555))

(declare-fun m!4755559 () Bool)

(assert (=> d!1230441 m!4755559))

(assert (=> b!4162804 d!1230441))

(declare-fun d!1230477 () Bool)

(assert (=> d!1230477 (isPrefix!4389 input!3316 input!3316)))

(declare-fun lt!1483239 () Unit!64639)

(declare-fun choose!25493 (List!45673 List!45673) Unit!64639)

(assert (=> d!1230477 (= lt!1483239 (choose!25493 input!3316 input!3316))))

(assert (=> d!1230477 (= (lemmaIsPrefixRefl!2828 input!3316 input!3316) lt!1483239)))

(declare-fun bs!595688 () Bool)

(assert (= bs!595688 d!1230477))

(assert (=> bs!595688 m!4755297))

(declare-fun m!4755561 () Bool)

(assert (=> bs!595688 m!4755561))

(assert (=> b!4162804 d!1230477))

(declare-fun d!1230479 () Bool)

(declare-fun fromListB!2555 (List!45673) BalanceConc!27080)

(assert (=> d!1230479 (= (seqFromList!5565 p!2942) (fromListB!2555 p!2942))))

(declare-fun bs!595689 () Bool)

(assert (= bs!595689 d!1230479))

(declare-fun m!4755563 () Bool)

(assert (=> bs!595689 m!4755563))

(assert (=> b!4162804 d!1230479))

(declare-fun d!1230481 () Bool)

(declare-fun lt!1483242 () List!45673)

(assert (=> d!1230481 (= (++!11658 p!2942 lt!1483242) input!3316)))

(declare-fun e!2584373 () List!45673)

(assert (=> d!1230481 (= lt!1483242 e!2584373)))

(declare-fun c!712061 () Bool)

(assert (=> d!1230481 (= c!712061 ((_ is Cons!45549) p!2942))))

(assert (=> d!1230481 (>= (size!33467 input!3316) (size!33467 p!2942))))

(assert (=> d!1230481 (= (getSuffix!2702 input!3316 p!2942) lt!1483242)))

(declare-fun b!4163116 () Bool)

(assert (=> b!4163116 (= e!2584373 (getSuffix!2702 (tail!6685 input!3316) (t!343736 p!2942)))))

(declare-fun b!4163117 () Bool)

(assert (=> b!4163117 (= e!2584373 input!3316)))

(assert (= (and d!1230481 c!712061) b!4163116))

(assert (= (and d!1230481 (not c!712061)) b!4163117))

(declare-fun m!4755565 () Bool)

(assert (=> d!1230481 m!4755565))

(assert (=> d!1230481 m!4755353))

(assert (=> d!1230481 m!4755309))

(assert (=> b!4163116 m!4755347))

(assert (=> b!4163116 m!4755347))

(declare-fun m!4755567 () Bool)

(assert (=> b!4163116 m!4755567))

(assert (=> b!4162804 d!1230481))

(declare-fun d!1230483 () Bool)

(declare-fun e!2584376 () Bool)

(assert (=> d!1230483 e!2584376))

(declare-fun res!1705522 () Bool)

(assert (=> d!1230483 (=> res!1705522 e!2584376)))

(declare-fun lt!1483243 () Bool)

(assert (=> d!1230483 (= res!1705522 (not lt!1483243))))

(declare-fun e!2584374 () Bool)

(assert (=> d!1230483 (= lt!1483243 e!2584374)))

(declare-fun res!1705521 () Bool)

(assert (=> d!1230483 (=> res!1705521 e!2584374)))

(assert (=> d!1230483 (= res!1705521 ((_ is Nil!45549) input!3316))))

(assert (=> d!1230483 (= (isPrefix!4389 input!3316 input!3316) lt!1483243)))

(declare-fun b!4163120 () Bool)

(declare-fun e!2584375 () Bool)

(assert (=> b!4163120 (= e!2584375 (isPrefix!4389 (tail!6685 input!3316) (tail!6685 input!3316)))))

(declare-fun b!4163119 () Bool)

(declare-fun res!1705523 () Bool)

(assert (=> b!4163119 (=> (not res!1705523) (not e!2584375))))

(assert (=> b!4163119 (= res!1705523 (= (head!8838 input!3316) (head!8838 input!3316)))))

(declare-fun b!4163121 () Bool)

(assert (=> b!4163121 (= e!2584376 (>= (size!33467 input!3316) (size!33467 input!3316)))))

(declare-fun b!4163118 () Bool)

(assert (=> b!4163118 (= e!2584374 e!2584375)))

(declare-fun res!1705520 () Bool)

(assert (=> b!4163118 (=> (not res!1705520) (not e!2584375))))

(assert (=> b!4163118 (= res!1705520 (not ((_ is Nil!45549) input!3316)))))

(assert (= (and d!1230483 (not res!1705521)) b!4163118))

(assert (= (and b!4163118 res!1705520) b!4163119))

(assert (= (and b!4163119 res!1705523) b!4163120))

(assert (= (and d!1230483 (not res!1705522)) b!4163121))

(assert (=> b!4163120 m!4755347))

(assert (=> b!4163120 m!4755347))

(assert (=> b!4163120 m!4755347))

(assert (=> b!4163120 m!4755347))

(declare-fun m!4755569 () Bool)

(assert (=> b!4163120 m!4755569))

(assert (=> b!4163119 m!4755351))

(assert (=> b!4163119 m!4755351))

(assert (=> b!4163121 m!4755353))

(assert (=> b!4163121 m!4755353))

(assert (=> b!4162804 d!1230483))

(declare-fun d!1230485 () Bool)

(assert (=> d!1230485 true))

(declare-fun lt!1483246 () Bool)

(declare-fun lambda!129063 () Int)

(declare-fun forall!8460 (List!45675 Int) Bool)

(assert (=> d!1230485 (= lt!1483246 (forall!8460 rules!3820 lambda!129063))))

(declare-fun e!2584381 () Bool)

(assert (=> d!1230485 (= lt!1483246 e!2584381)))

(declare-fun res!1705529 () Bool)

(assert (=> d!1230485 (=> res!1705529 e!2584381)))

(assert (=> d!1230485 (= res!1705529 (not ((_ is Cons!45551) rules!3820)))))

(assert (=> d!1230485 (= (rulesValidInductive!2774 thiss!25889 rules!3820) lt!1483246)))

(declare-fun b!4163126 () Bool)

(declare-fun e!2584382 () Bool)

(assert (=> b!4163126 (= e!2584381 e!2584382)))

(declare-fun res!1705528 () Bool)

(assert (=> b!4163126 (=> (not res!1705528) (not e!2584382))))

(assert (=> b!4163126 (= res!1705528 (ruleValid!3256 thiss!25889 (h!50971 rules!3820)))))

(declare-fun b!4163127 () Bool)

(assert (=> b!4163127 (= e!2584382 (rulesValidInductive!2774 thiss!25889 (t!343738 rules!3820)))))

(assert (= (and d!1230485 (not res!1705529)) b!4163126))

(assert (= (and b!4163126 res!1705528) b!4163127))

(declare-fun m!4755571 () Bool)

(assert (=> d!1230485 m!4755571))

(declare-fun m!4755573 () Bool)

(assert (=> b!4163126 m!4755573))

(declare-fun m!4755575 () Bool)

(assert (=> b!4163127 m!4755575))

(assert (=> b!4162793 d!1230485))

(declare-fun d!1230487 () Bool)

(declare-fun lt!1483247 () Bool)

(assert (=> d!1230487 (= lt!1483247 (select (content!7082 rules!3820) rBis!161))))

(declare-fun e!2584383 () Bool)

(assert (=> d!1230487 (= lt!1483247 e!2584383)))

(declare-fun res!1705531 () Bool)

(assert (=> d!1230487 (=> (not res!1705531) (not e!2584383))))

(assert (=> d!1230487 (= res!1705531 ((_ is Cons!45551) rules!3820))))

(assert (=> d!1230487 (= (contains!9325 rules!3820 rBis!161) lt!1483247)))

(declare-fun b!4163130 () Bool)

(declare-fun e!2584384 () Bool)

(assert (=> b!4163130 (= e!2584383 e!2584384)))

(declare-fun res!1705530 () Bool)

(assert (=> b!4163130 (=> res!1705530 e!2584384)))

(assert (=> b!4163130 (= res!1705530 (= (h!50971 rules!3820) rBis!161))))

(declare-fun b!4163131 () Bool)

(assert (=> b!4163131 (= e!2584384 (contains!9325 (t!343738 rules!3820) rBis!161))))

(assert (= (and d!1230487 res!1705531) b!4163130))

(assert (= (and b!4163130 (not res!1705530)) b!4163131))

(assert (=> d!1230487 m!4755355))

(declare-fun m!4755577 () Bool)

(assert (=> d!1230487 m!4755577))

(declare-fun m!4755579 () Bool)

(assert (=> b!4163131 m!4755579))

(assert (=> b!4162803 d!1230487))

(declare-fun d!1230489 () Bool)

(assert (=> d!1230489 (= (inv!60063 (tag!8396 rBis!161)) (= (mod (str.len (value!235209 (tag!8396 rBis!161))) 2) 0))))

(assert (=> b!4162805 d!1230489))

(declare-fun d!1230491 () Bool)

(declare-fun res!1705532 () Bool)

(declare-fun e!2584385 () Bool)

(assert (=> d!1230491 (=> (not res!1705532) (not e!2584385))))

(assert (=> d!1230491 (= res!1705532 (semiInverseModEq!3269 (toChars!10055 (transformation!7532 rBis!161)) (toValue!10196 (transformation!7532 rBis!161))))))

(assert (=> d!1230491 (= (inv!60065 (transformation!7532 rBis!161)) e!2584385)))

(declare-fun b!4163132 () Bool)

(assert (=> b!4163132 (= e!2584385 (equivClasses!3168 (toChars!10055 (transformation!7532 rBis!161)) (toValue!10196 (transformation!7532 rBis!161))))))

(assert (= (and d!1230491 res!1705532) b!4163132))

(declare-fun m!4755581 () Bool)

(assert (=> d!1230491 m!4755581))

(declare-fun m!4755583 () Bool)

(assert (=> b!4163132 m!4755583))

(assert (=> b!4162805 d!1230491))

(declare-fun d!1230493 () Bool)

(assert (=> d!1230493 (= (isEmpty!26965 rules!3820) ((_ is Nil!45551) rules!3820))))

(assert (=> b!4162796 d!1230493))

(declare-fun d!1230495 () Bool)

(declare-fun e!2584388 () Bool)

(assert (=> d!1230495 e!2584388))

(declare-fun res!1705535 () Bool)

(assert (=> d!1230495 (=> res!1705535 e!2584388)))

(declare-fun lt!1483248 () Bool)

(assert (=> d!1230495 (= res!1705535 (not lt!1483248))))

(declare-fun e!2584386 () Bool)

(assert (=> d!1230495 (= lt!1483248 e!2584386)))

(declare-fun res!1705534 () Bool)

(assert (=> d!1230495 (=> res!1705534 e!2584386)))

(assert (=> d!1230495 (= res!1705534 ((_ is Nil!45549) pBis!100))))

(assert (=> d!1230495 (= (isPrefix!4389 pBis!100 input!3316) lt!1483248)))

(declare-fun b!4163135 () Bool)

(declare-fun e!2584387 () Bool)

(assert (=> b!4163135 (= e!2584387 (isPrefix!4389 (tail!6685 pBis!100) (tail!6685 input!3316)))))

(declare-fun b!4163134 () Bool)

(declare-fun res!1705536 () Bool)

(assert (=> b!4163134 (=> (not res!1705536) (not e!2584387))))

(assert (=> b!4163134 (= res!1705536 (= (head!8838 pBis!100) (head!8838 input!3316)))))

(declare-fun b!4163136 () Bool)

(assert (=> b!4163136 (= e!2584388 (>= (size!33467 input!3316) (size!33467 pBis!100)))))

(declare-fun b!4163133 () Bool)

(assert (=> b!4163133 (= e!2584386 e!2584387)))

(declare-fun res!1705533 () Bool)

(assert (=> b!4163133 (=> (not res!1705533) (not e!2584387))))

(assert (=> b!4163133 (= res!1705533 (not ((_ is Nil!45549) input!3316)))))

(assert (= (and d!1230495 (not res!1705534)) b!4163133))

(assert (= (and b!4163133 res!1705533) b!4163134))

(assert (= (and b!4163134 res!1705536) b!4163135))

(assert (= (and d!1230495 (not res!1705535)) b!4163136))

(declare-fun m!4755585 () Bool)

(assert (=> b!4163135 m!4755585))

(assert (=> b!4163135 m!4755347))

(assert (=> b!4163135 m!4755585))

(assert (=> b!4163135 m!4755347))

(declare-fun m!4755587 () Bool)

(assert (=> b!4163135 m!4755587))

(declare-fun m!4755589 () Bool)

(assert (=> b!4163134 m!4755589))

(assert (=> b!4163134 m!4755351))

(assert (=> b!4163136 m!4755353))

(assert (=> b!4163136 m!4755313))

(assert (=> b!4162795 d!1230495))

(declare-fun e!2584391 () Bool)

(assert (=> b!4162797 (= tp!1270943 e!2584391)))

(declare-fun b!4163148 () Bool)

(declare-fun tp!1271011 () Bool)

(declare-fun tp!1271009 () Bool)

(assert (=> b!4163148 (= e!2584391 (and tp!1271011 tp!1271009))))

(declare-fun b!4163149 () Bool)

(declare-fun tp!1271010 () Bool)

(assert (=> b!4163149 (= e!2584391 tp!1271010)))

(declare-fun b!4163150 () Bool)

(declare-fun tp!1271013 () Bool)

(declare-fun tp!1271012 () Bool)

(assert (=> b!4163150 (= e!2584391 (and tp!1271013 tp!1271012))))

(declare-fun b!4163147 () Bool)

(assert (=> b!4163147 (= e!2584391 tp_is_empty!21837)))

(assert (= (and b!4162797 ((_ is ElementMatch!12437) (regex!7532 (h!50971 rules!3820)))) b!4163147))

(assert (= (and b!4162797 ((_ is Concat!20200) (regex!7532 (h!50971 rules!3820)))) b!4163148))

(assert (= (and b!4162797 ((_ is Star!12437) (regex!7532 (h!50971 rules!3820)))) b!4163149))

(assert (= (and b!4162797 ((_ is Union!12437) (regex!7532 (h!50971 rules!3820)))) b!4163150))

(declare-fun b!4163155 () Bool)

(declare-fun e!2584394 () Bool)

(declare-fun tp!1271016 () Bool)

(assert (=> b!4163155 (= e!2584394 (and tp_is_empty!21837 tp!1271016))))

(assert (=> b!4162798 (= tp!1270947 e!2584394)))

(assert (= (and b!4162798 ((_ is Cons!45549) (t!343736 pBis!100))) b!4163155))

(declare-fun b!4163166 () Bool)

(declare-fun b_free!120063 () Bool)

(declare-fun b_next!120767 () Bool)

(assert (=> b!4163166 (= b_free!120063 (not b_next!120767))))

(declare-fun tb!249311 () Bool)

(declare-fun t!343768 () Bool)

(assert (=> (and b!4163166 (= (toValue!10196 (transformation!7532 (h!50971 (t!343738 rules!3820)))) (toValue!10196 (transformation!7532 r!4097))) t!343768) tb!249311))

(declare-fun result!303656 () Bool)

(assert (= result!303656 result!303616))

(assert (=> d!1230437 t!343768))

(assert (=> d!1230441 t!343768))

(declare-fun b_and!324485 () Bool)

(declare-fun tp!1271027 () Bool)

(assert (=> b!4163166 (= tp!1271027 (and (=> t!343768 result!303656) b_and!324485))))

(declare-fun b_free!120065 () Bool)

(declare-fun b_next!120769 () Bool)

(assert (=> b!4163166 (= b_free!120065 (not b_next!120769))))

(declare-fun tb!249313 () Bool)

(declare-fun t!343770 () Bool)

(assert (=> (and b!4163166 (= (toChars!10055 (transformation!7532 (h!50971 (t!343738 rules!3820)))) (toChars!10055 (transformation!7532 r!4097))) t!343770) tb!249313))

(declare-fun result!303658 () Bool)

(assert (= result!303658 result!303642))

(assert (=> d!1230441 t!343770))

(declare-fun b_and!324487 () Bool)

(declare-fun tp!1271025 () Bool)

(assert (=> b!4163166 (= tp!1271025 (and (=> t!343770 result!303658) b_and!324487))))

(declare-fun e!2584405 () Bool)

(assert (=> b!4163166 (= e!2584405 (and tp!1271027 tp!1271025))))

(declare-fun e!2584403 () Bool)

(declare-fun tp!1271028 () Bool)

(declare-fun b!4163165 () Bool)

(assert (=> b!4163165 (= e!2584403 (and tp!1271028 (inv!60063 (tag!8396 (h!50971 (t!343738 rules!3820)))) (inv!60065 (transformation!7532 (h!50971 (t!343738 rules!3820)))) e!2584405))))

(declare-fun b!4163164 () Bool)

(declare-fun e!2584404 () Bool)

(declare-fun tp!1271026 () Bool)

(assert (=> b!4163164 (= e!2584404 (and e!2584403 tp!1271026))))

(assert (=> b!4162789 (= tp!1270948 e!2584404)))

(assert (= b!4163165 b!4163166))

(assert (= b!4163164 b!4163165))

(assert (= (and b!4162789 ((_ is Cons!45551) (t!343738 rules!3820))) b!4163164))

(declare-fun m!4755591 () Bool)

(assert (=> b!4163165 m!4755591))

(declare-fun m!4755593 () Bool)

(assert (=> b!4163165 m!4755593))

(declare-fun e!2584407 () Bool)

(assert (=> b!4162805 (= tp!1270946 e!2584407)))

(declare-fun b!4163168 () Bool)

(declare-fun tp!1271031 () Bool)

(declare-fun tp!1271029 () Bool)

(assert (=> b!4163168 (= e!2584407 (and tp!1271031 tp!1271029))))

(declare-fun b!4163169 () Bool)

(declare-fun tp!1271030 () Bool)

(assert (=> b!4163169 (= e!2584407 tp!1271030)))

(declare-fun b!4163170 () Bool)

(declare-fun tp!1271033 () Bool)

(declare-fun tp!1271032 () Bool)

(assert (=> b!4163170 (= e!2584407 (and tp!1271033 tp!1271032))))

(declare-fun b!4163167 () Bool)

(assert (=> b!4163167 (= e!2584407 tp_is_empty!21837)))

(assert (= (and b!4162805 ((_ is ElementMatch!12437) (regex!7532 rBis!161))) b!4163167))

(assert (= (and b!4162805 ((_ is Concat!20200) (regex!7532 rBis!161))) b!4163168))

(assert (= (and b!4162805 ((_ is Star!12437) (regex!7532 rBis!161))) b!4163169))

(assert (= (and b!4162805 ((_ is Union!12437) (regex!7532 rBis!161))) b!4163170))

(declare-fun b!4163171 () Bool)

(declare-fun e!2584408 () Bool)

(declare-fun tp!1271034 () Bool)

(assert (=> b!4163171 (= e!2584408 (and tp_is_empty!21837 tp!1271034))))

(assert (=> b!4162794 (= tp!1270949 e!2584408)))

(assert (= (and b!4162794 ((_ is Cons!45549) (t!343736 p!2942))) b!4163171))

(declare-fun e!2584409 () Bool)

(assert (=> b!4162799 (= tp!1270942 e!2584409)))

(declare-fun b!4163173 () Bool)

(declare-fun tp!1271037 () Bool)

(declare-fun tp!1271035 () Bool)

(assert (=> b!4163173 (= e!2584409 (and tp!1271037 tp!1271035))))

(declare-fun b!4163174 () Bool)

(declare-fun tp!1271036 () Bool)

(assert (=> b!4163174 (= e!2584409 tp!1271036)))

(declare-fun b!4163175 () Bool)

(declare-fun tp!1271039 () Bool)

(declare-fun tp!1271038 () Bool)

(assert (=> b!4163175 (= e!2584409 (and tp!1271039 tp!1271038))))

(declare-fun b!4163172 () Bool)

(assert (=> b!4163172 (= e!2584409 tp_is_empty!21837)))

(assert (= (and b!4162799 ((_ is ElementMatch!12437) (regex!7532 r!4097))) b!4163172))

(assert (= (and b!4162799 ((_ is Concat!20200) (regex!7532 r!4097))) b!4163173))

(assert (= (and b!4162799 ((_ is Star!12437) (regex!7532 r!4097))) b!4163174))

(assert (= (and b!4162799 ((_ is Union!12437) (regex!7532 r!4097))) b!4163175))

(declare-fun b!4163176 () Bool)

(declare-fun e!2584410 () Bool)

(declare-fun tp!1271040 () Bool)

(assert (=> b!4163176 (= e!2584410 (and tp_is_empty!21837 tp!1271040))))

(assert (=> b!4162790 (= tp!1270941 e!2584410)))

(assert (= (and b!4162790 ((_ is Cons!45549) (t!343736 input!3316))) b!4163176))

(declare-fun b_lambda!122193 () Bool)

(assert (= b_lambda!122189 (or (and b!4162806 b_free!120049) (and b!4162792 b_free!120053 (= (toChars!10055 (transformation!7532 rBis!161)) (toChars!10055 (transformation!7532 r!4097)))) (and b!4162787 b_free!120057 (= (toChars!10055 (transformation!7532 (h!50971 rules!3820))) (toChars!10055 (transformation!7532 r!4097)))) (and b!4163166 b_free!120065 (= (toChars!10055 (transformation!7532 (h!50971 (t!343738 rules!3820)))) (toChars!10055 (transformation!7532 r!4097)))) b_lambda!122193)))

(declare-fun b_lambda!122195 () Bool)

(assert (= b_lambda!122191 (or (and b!4162806 b_free!120047) (and b!4162792 b_free!120051 (= (toValue!10196 (transformation!7532 rBis!161)) (toValue!10196 (transformation!7532 r!4097)))) (and b!4162787 b_free!120055 (= (toValue!10196 (transformation!7532 (h!50971 rules!3820))) (toValue!10196 (transformation!7532 r!4097)))) (and b!4163166 b_free!120063 (= (toValue!10196 (transformation!7532 (h!50971 (t!343738 rules!3820)))) (toValue!10196 (transformation!7532 r!4097)))) b_lambda!122195)))

(declare-fun b_lambda!122197 () Bool)

(assert (= b_lambda!122177 (or (and b!4162806 b_free!120047) (and b!4162792 b_free!120051 (= (toValue!10196 (transformation!7532 rBis!161)) (toValue!10196 (transformation!7532 r!4097)))) (and b!4162787 b_free!120055 (= (toValue!10196 (transformation!7532 (h!50971 rules!3820))) (toValue!10196 (transformation!7532 r!4097)))) (and b!4163166 b_free!120063 (= (toValue!10196 (transformation!7532 (h!50971 (t!343738 rules!3820)))) (toValue!10196 (transformation!7532 r!4097)))) b_lambda!122197)))

(check-sat b_and!324485 (not b!4162969) (not b!4163169) (not b!4162853) (not b_next!120759) (not b!4162847) (not b!4163170) (not tb!249289) (not d!1230481) (not b!4162959) (not b!4163173) b_and!324487 (not b!4163135) (not d!1230441) (not b!4162964) (not d!1230491) b_and!324477 tp_is_empty!21837 (not b!4162877) (not b!4162842) (not b!4162885) (not b_lambda!122195) (not b!4163174) (not tb!249305) (not d!1230401) (not d!1230479) b_and!324481 (not d!1230413) (not b!4162812) (not b!4162958) (not b_next!120751) (not b!4162961) (not b!4162878) (not b!4163171) (not b!4163116) (not d!1230485) (not d!1230477) b_and!324475 (not b!4163148) (not d!1230419) b_and!324479 (not b!4162861) (not b!4163119) (not b!4162844) (not b!4162859) (not d!1230421) (not b_next!120755) (not b!4162841) (not b!4163126) (not b!4162957) (not b!4163131) (not b!4163149) (not b_next!120757) b_and!324483 (not b!4162963) (not b!4163136) (not d!1230399) (not b!4163127) (not b_next!120761) (not b_next!120767) (not d!1230409) (not d!1230407) (not b_lambda!122193) (not b!4163168) (not d!1230405) (not b!4163120) (not b!4163132) (not b!4162809) (not b!4163175) (not b_lambda!122197) (not d!1230487) (not b!4162962) (not b!4163150) (not b!4163155) (not b!4162851) (not b_next!120753) (not b!4163134) b_and!324473 (not b!4162867) (not bm!290848) (not b!4163176) (not b!4163165) (not b!4162965) (not b!4163164) (not b!4163111) (not b!4162879) (not b_next!120769) (not b!4163121))
(check-sat b_and!324485 b_and!324487 b_and!324477 b_and!324481 (not b_next!120751) b_and!324475 b_and!324479 (not b_next!120755) (not b_next!120759) (not b_next!120753) b_and!324473 (not b_next!120769) b_and!324483 (not b_next!120757) (not b_next!120761) (not b_next!120767))
(get-model)

(declare-fun d!1230531 () Bool)

(assert (=> d!1230531 true))

(declare-fun lambda!129073 () Int)

(declare-fun order!23989 () Int)

(declare-fun dynLambda!19499 (Int Int) Int)

(assert (=> d!1230531 (< (dynLambda!19494 order!23981 (toValue!10196 (transformation!7532 r!4097))) (dynLambda!19499 order!23989 lambda!129073))))

(declare-fun Forall2!1151 (Int) Bool)

(assert (=> d!1230531 (= (equivClasses!3168 (toChars!10055 (transformation!7532 r!4097)) (toValue!10196 (transformation!7532 r!4097))) (Forall2!1151 lambda!129073))))

(declare-fun bs!595701 () Bool)

(assert (= bs!595701 d!1230531))

(declare-fun m!4755651 () Bool)

(assert (=> bs!595701 m!4755651))

(assert (=> b!4162861 d!1230531))

(declare-fun d!1230541 () Bool)

(declare-fun nullableFct!1204 (Regex!12437) Bool)

(assert (=> d!1230541 (= (nullable!4360 (regex!7532 r!4097)) (nullableFct!1204 (regex!7532 r!4097)))))

(declare-fun bs!595702 () Bool)

(assert (= bs!595702 d!1230541))

(declare-fun m!4755653 () Bool)

(assert (=> bs!595702 m!4755653))

(assert (=> b!4162859 d!1230541))

(declare-fun b!4163236 () Bool)

(declare-fun e!2584449 () Bool)

(assert (=> b!4163236 (= e!2584449 (= (head!8838 (list!16503 (charsOf!5021 (_1!24877 (get!14811 lt!1483212))))) (c!712021 (regex!7532 r!4097))))))

(declare-fun b!4163237 () Bool)

(declare-fun e!2584450 () Bool)

(assert (=> b!4163237 (= e!2584450 (nullable!4360 (regex!7532 r!4097)))))

(declare-fun b!4163238 () Bool)

(declare-fun e!2584448 () Bool)

(declare-fun lt!1483285 () Bool)

(assert (=> b!4163238 (= e!2584448 (not lt!1483285))))

(declare-fun b!4163239 () Bool)

(declare-fun res!1705569 () Bool)

(assert (=> b!4163239 (=> (not res!1705569) (not e!2584449))))

(assert (=> b!4163239 (= res!1705569 (isEmpty!26968 (tail!6685 (list!16503 (charsOf!5021 (_1!24877 (get!14811 lt!1483212)))))))))

(declare-fun b!4163240 () Bool)

(declare-fun e!2584452 () Bool)

(declare-fun e!2584454 () Bool)

(assert (=> b!4163240 (= e!2584452 e!2584454)))

(declare-fun res!1705566 () Bool)

(assert (=> b!4163240 (=> (not res!1705566) (not e!2584454))))

(assert (=> b!4163240 (= res!1705566 (not lt!1483285))))

(declare-fun b!4163241 () Bool)

(declare-fun e!2584451 () Bool)

(declare-fun call!290866 () Bool)

(assert (=> b!4163241 (= e!2584451 (= lt!1483285 call!290866))))

(declare-fun bm!290861 () Bool)

(assert (=> bm!290861 (= call!290866 (isEmpty!26968 (list!16503 (charsOf!5021 (_1!24877 (get!14811 lt!1483212))))))))

(declare-fun b!4163242 () Bool)

(assert (=> b!4163242 (= e!2584450 (matchR!6182 (derivativeStep!3752 (regex!7532 r!4097) (head!8838 (list!16503 (charsOf!5021 (_1!24877 (get!14811 lt!1483212)))))) (tail!6685 (list!16503 (charsOf!5021 (_1!24877 (get!14811 lt!1483212)))))))))

(declare-fun d!1230543 () Bool)

(assert (=> d!1230543 e!2584451))

(declare-fun c!712077 () Bool)

(assert (=> d!1230543 (= c!712077 ((_ is EmptyExpr!12437) (regex!7532 r!4097)))))

(assert (=> d!1230543 (= lt!1483285 e!2584450)))

(declare-fun c!712078 () Bool)

(assert (=> d!1230543 (= c!712078 (isEmpty!26968 (list!16503 (charsOf!5021 (_1!24877 (get!14811 lt!1483212))))))))

(assert (=> d!1230543 (validRegex!5570 (regex!7532 r!4097))))

(assert (=> d!1230543 (= (matchR!6182 (regex!7532 r!4097) (list!16503 (charsOf!5021 (_1!24877 (get!14811 lt!1483212))))) lt!1483285)))

(declare-fun b!4163243 () Bool)

(declare-fun res!1705564 () Bool)

(assert (=> b!4163243 (=> res!1705564 e!2584452)))

(assert (=> b!4163243 (= res!1705564 e!2584449)))

(declare-fun res!1705563 () Bool)

(assert (=> b!4163243 (=> (not res!1705563) (not e!2584449))))

(assert (=> b!4163243 (= res!1705563 lt!1483285)))

(declare-fun b!4163244 () Bool)

(declare-fun e!2584453 () Bool)

(assert (=> b!4163244 (= e!2584454 e!2584453)))

(declare-fun res!1705565 () Bool)

(assert (=> b!4163244 (=> res!1705565 e!2584453)))

(assert (=> b!4163244 (= res!1705565 call!290866)))

(declare-fun b!4163245 () Bool)

(assert (=> b!4163245 (= e!2584451 e!2584448)))

(declare-fun c!712079 () Bool)

(assert (=> b!4163245 (= c!712079 ((_ is EmptyLang!12437) (regex!7532 r!4097)))))

(declare-fun b!4163246 () Bool)

(assert (=> b!4163246 (= e!2584453 (not (= (head!8838 (list!16503 (charsOf!5021 (_1!24877 (get!14811 lt!1483212))))) (c!712021 (regex!7532 r!4097)))))))

(declare-fun b!4163247 () Bool)

(declare-fun res!1705562 () Bool)

(assert (=> b!4163247 (=> (not res!1705562) (not e!2584449))))

(assert (=> b!4163247 (= res!1705562 (not call!290866))))

(declare-fun b!4163248 () Bool)

(declare-fun res!1705568 () Bool)

(assert (=> b!4163248 (=> res!1705568 e!2584453)))

(assert (=> b!4163248 (= res!1705568 (not (isEmpty!26968 (tail!6685 (list!16503 (charsOf!5021 (_1!24877 (get!14811 lt!1483212))))))))))

(declare-fun b!4163249 () Bool)

(declare-fun res!1705567 () Bool)

(assert (=> b!4163249 (=> res!1705567 e!2584452)))

(assert (=> b!4163249 (= res!1705567 (not ((_ is ElementMatch!12437) (regex!7532 r!4097))))))

(assert (=> b!4163249 (= e!2584448 e!2584452)))

(assert (= (and d!1230543 c!712078) b!4163237))

(assert (= (and d!1230543 (not c!712078)) b!4163242))

(assert (= (and d!1230543 c!712077) b!4163241))

(assert (= (and d!1230543 (not c!712077)) b!4163245))

(assert (= (and b!4163245 c!712079) b!4163238))

(assert (= (and b!4163245 (not c!712079)) b!4163249))

(assert (= (and b!4163249 (not res!1705567)) b!4163243))

(assert (= (and b!4163243 res!1705563) b!4163247))

(assert (= (and b!4163247 res!1705562) b!4163239))

(assert (= (and b!4163239 res!1705569) b!4163236))

(assert (= (and b!4163243 (not res!1705564)) b!4163240))

(assert (= (and b!4163240 res!1705566) b!4163244))

(assert (= (and b!4163244 (not res!1705565)) b!4163248))

(assert (= (and b!4163248 (not res!1705568)) b!4163246))

(assert (= (or b!4163241 b!4163244 b!4163247) bm!290861))

(assert (=> b!4163242 m!4755435))

(declare-fun m!4755667 () Bool)

(assert (=> b!4163242 m!4755667))

(assert (=> b!4163242 m!4755667))

(declare-fun m!4755669 () Bool)

(assert (=> b!4163242 m!4755669))

(assert (=> b!4163242 m!4755435))

(declare-fun m!4755671 () Bool)

(assert (=> b!4163242 m!4755671))

(assert (=> b!4163242 m!4755669))

(assert (=> b!4163242 m!4755671))

(declare-fun m!4755673 () Bool)

(assert (=> b!4163242 m!4755673))

(assert (=> b!4163248 m!4755435))

(assert (=> b!4163248 m!4755671))

(assert (=> b!4163248 m!4755671))

(declare-fun m!4755675 () Bool)

(assert (=> b!4163248 m!4755675))

(assert (=> b!4163236 m!4755435))

(assert (=> b!4163236 m!4755667))

(assert (=> bm!290861 m!4755435))

(declare-fun m!4755677 () Bool)

(assert (=> bm!290861 m!4755677))

(assert (=> b!4163239 m!4755435))

(assert (=> b!4163239 m!4755671))

(assert (=> b!4163239 m!4755671))

(assert (=> b!4163239 m!4755675))

(assert (=> b!4163246 m!4755435))

(assert (=> b!4163246 m!4755667))

(assert (=> b!4163237 m!4755335))

(assert (=> d!1230543 m!4755435))

(assert (=> d!1230543 m!4755677))

(assert (=> d!1230543 m!4755337))

(assert (=> b!4162965 d!1230543))

(declare-fun d!1230551 () Bool)

(declare-fun list!16505 (Conc!13743) List!45673)

(assert (=> d!1230551 (= (list!16503 (charsOf!5021 (_1!24877 (get!14811 lt!1483212)))) (list!16505 (c!712020 (charsOf!5021 (_1!24877 (get!14811 lt!1483212))))))))

(declare-fun bs!595704 () Bool)

(assert (= bs!595704 d!1230551))

(declare-fun m!4755681 () Bool)

(assert (=> bs!595704 m!4755681))

(assert (=> b!4162965 d!1230551))

(declare-fun d!1230553 () Bool)

(declare-fun lt!1483293 () BalanceConc!27080)

(assert (=> d!1230553 (= (list!16503 lt!1483293) (originalCharacters!7936 (_1!24877 (get!14811 lt!1483212))))))

(assert (=> d!1230553 (= lt!1483293 (dynLambda!19497 (toChars!10055 (transformation!7532 (rule!10582 (_1!24877 (get!14811 lt!1483212))))) (value!235210 (_1!24877 (get!14811 lt!1483212)))))))

(assert (=> d!1230553 (= (charsOf!5021 (_1!24877 (get!14811 lt!1483212))) lt!1483293)))

(declare-fun b_lambda!122203 () Bool)

(assert (=> (not b_lambda!122203) (not d!1230553)))

(declare-fun t!343784 () Bool)

(declare-fun tb!249325 () Bool)

(assert (=> (and b!4162806 (= (toChars!10055 (transformation!7532 r!4097)) (toChars!10055 (transformation!7532 (rule!10582 (_1!24877 (get!14811 lt!1483212)))))) t!343784) tb!249325))

(declare-fun b!4163254 () Bool)

(declare-fun e!2584460 () Bool)

(declare-fun tp!1271042 () Bool)

(assert (=> b!4163254 (= e!2584460 (and (inv!60068 (c!712020 (dynLambda!19497 (toChars!10055 (transformation!7532 (rule!10582 (_1!24877 (get!14811 lt!1483212))))) (value!235210 (_1!24877 (get!14811 lt!1483212)))))) tp!1271042))))

(declare-fun result!303670 () Bool)

(assert (=> tb!249325 (= result!303670 (and (inv!60069 (dynLambda!19497 (toChars!10055 (transformation!7532 (rule!10582 (_1!24877 (get!14811 lt!1483212))))) (value!235210 (_1!24877 (get!14811 lt!1483212))))) e!2584460))))

(assert (= tb!249325 b!4163254))

(declare-fun m!4755693 () Bool)

(assert (=> b!4163254 m!4755693))

(declare-fun m!4755695 () Bool)

(assert (=> tb!249325 m!4755695))

(assert (=> d!1230553 t!343784))

(declare-fun b_and!324501 () Bool)

(assert (= b_and!324473 (and (=> t!343784 result!303670) b_and!324501)))

(declare-fun tb!249331 () Bool)

(declare-fun t!343790 () Bool)

(assert (=> (and b!4162792 (= (toChars!10055 (transformation!7532 rBis!161)) (toChars!10055 (transformation!7532 (rule!10582 (_1!24877 (get!14811 lt!1483212)))))) t!343790) tb!249331))

(declare-fun result!303678 () Bool)

(assert (= result!303678 result!303670))

(assert (=> d!1230553 t!343790))

(declare-fun b_and!324507 () Bool)

(assert (= b_and!324475 (and (=> t!343790 result!303678) b_and!324507)))

(declare-fun t!343794 () Bool)

(declare-fun tb!249335 () Bool)

(assert (=> (and b!4162787 (= (toChars!10055 (transformation!7532 (h!50971 rules!3820))) (toChars!10055 (transformation!7532 (rule!10582 (_1!24877 (get!14811 lt!1483212)))))) t!343794) tb!249335))

(declare-fun result!303680 () Bool)

(assert (= result!303680 result!303670))

(assert (=> d!1230553 t!343794))

(declare-fun b_and!324509 () Bool)

(assert (= b_and!324477 (and (=> t!343794 result!303680) b_and!324509)))

(declare-fun t!343796 () Bool)

(declare-fun tb!249337 () Bool)

(assert (=> (and b!4163166 (= (toChars!10055 (transformation!7532 (h!50971 (t!343738 rules!3820)))) (toChars!10055 (transformation!7532 (rule!10582 (_1!24877 (get!14811 lt!1483212)))))) t!343796) tb!249337))

(declare-fun result!303682 () Bool)

(assert (= result!303682 result!303670))

(assert (=> d!1230553 t!343796))

(declare-fun b_and!324513 () Bool)

(assert (= b_and!324487 (and (=> t!343796 result!303682) b_and!324513)))

(declare-fun m!4755697 () Bool)

(assert (=> d!1230553 m!4755697))

(declare-fun m!4755699 () Bool)

(assert (=> d!1230553 m!4755699))

(assert (=> b!4162965 d!1230553))

(declare-fun d!1230557 () Bool)

(assert (=> d!1230557 (= (get!14811 lt!1483212) (v!40519 lt!1483212))))

(assert (=> b!4162965 d!1230557))

(declare-fun d!1230561 () Bool)

(declare-fun e!2584463 () Bool)

(assert (=> d!1230561 e!2584463))

(declare-fun res!1705574 () Bool)

(assert (=> d!1230561 (=> (not res!1705574) (not e!2584463))))

(declare-fun lt!1483296 () BalanceConc!27080)

(assert (=> d!1230561 (= res!1705574 (= (list!16503 lt!1483296) p!2942))))

(declare-fun fromList!902 (List!45673) Conc!13743)

(assert (=> d!1230561 (= lt!1483296 (BalanceConc!27081 (fromList!902 p!2942)))))

(assert (=> d!1230561 (= (fromListB!2555 p!2942) lt!1483296)))

(declare-fun b!4163257 () Bool)

(declare-fun isBalanced!3723 (Conc!13743) Bool)

(assert (=> b!4163257 (= e!2584463 (isBalanced!3723 (fromList!902 p!2942)))))

(assert (= (and d!1230561 res!1705574) b!4163257))

(declare-fun m!4755707 () Bool)

(assert (=> d!1230561 m!4755707))

(declare-fun m!4755709 () Bool)

(assert (=> d!1230561 m!4755709))

(assert (=> b!4163257 m!4755709))

(assert (=> b!4163257 m!4755709))

(declare-fun m!4755711 () Bool)

(assert (=> b!4163257 m!4755711))

(assert (=> d!1230479 d!1230561))

(declare-fun bs!595707 () Bool)

(declare-fun d!1230563 () Bool)

(assert (= bs!595707 (and d!1230563 d!1230485)))

(declare-fun lambda!129075 () Int)

(assert (=> bs!595707 (= lambda!129075 lambda!129063)))

(assert (=> d!1230563 true))

(declare-fun lt!1483297 () Bool)

(assert (=> d!1230563 (= lt!1483297 (forall!8460 (t!343738 rules!3820) lambda!129075))))

(declare-fun e!2584464 () Bool)

(assert (=> d!1230563 (= lt!1483297 e!2584464)))

(declare-fun res!1705576 () Bool)

(assert (=> d!1230563 (=> res!1705576 e!2584464)))

(assert (=> d!1230563 (= res!1705576 (not ((_ is Cons!45551) (t!343738 rules!3820))))))

(assert (=> d!1230563 (= (rulesValidInductive!2774 thiss!25889 (t!343738 rules!3820)) lt!1483297)))

(declare-fun b!4163258 () Bool)

(declare-fun e!2584465 () Bool)

(assert (=> b!4163258 (= e!2584464 e!2584465)))

(declare-fun res!1705575 () Bool)

(assert (=> b!4163258 (=> (not res!1705575) (not e!2584465))))

(assert (=> b!4163258 (= res!1705575 (ruleValid!3256 thiss!25889 (h!50971 (t!343738 rules!3820))))))

(declare-fun b!4163259 () Bool)

(assert (=> b!4163259 (= e!2584465 (rulesValidInductive!2774 thiss!25889 (t!343738 (t!343738 rules!3820))))))

(assert (= (and d!1230563 (not res!1705576)) b!4163258))

(assert (= (and b!4163258 res!1705575) b!4163259))

(declare-fun m!4755713 () Bool)

(assert (=> d!1230563 m!4755713))

(declare-fun m!4755715 () Bool)

(assert (=> b!4163258 m!4755715))

(declare-fun m!4755717 () Bool)

(assert (=> b!4163259 m!4755717))

(assert (=> b!4163127 d!1230563))

(declare-fun d!1230565 () Bool)

(assert (=> d!1230565 (= (head!8838 input!3316) (h!50969 input!3316))))

(assert (=> b!4163119 d!1230565))

(declare-fun d!1230567 () Bool)

(declare-fun e!2584468 () Bool)

(assert (=> d!1230567 e!2584468))

(declare-fun res!1705579 () Bool)

(assert (=> d!1230567 (=> res!1705579 e!2584468)))

(declare-fun lt!1483298 () Bool)

(assert (=> d!1230567 (= res!1705579 (not lt!1483298))))

(declare-fun e!2584466 () Bool)

(assert (=> d!1230567 (= lt!1483298 e!2584466)))

(declare-fun res!1705578 () Bool)

(assert (=> d!1230567 (=> res!1705578 e!2584466)))

(assert (=> d!1230567 (= res!1705578 ((_ is Nil!45549) (tail!6685 p!2942)))))

(assert (=> d!1230567 (= (isPrefix!4389 (tail!6685 p!2942) (tail!6685 input!3316)) lt!1483298)))

(declare-fun b!4163262 () Bool)

(declare-fun e!2584467 () Bool)

(assert (=> b!4163262 (= e!2584467 (isPrefix!4389 (tail!6685 (tail!6685 p!2942)) (tail!6685 (tail!6685 input!3316))))))

(declare-fun b!4163261 () Bool)

(declare-fun res!1705580 () Bool)

(assert (=> b!4163261 (=> (not res!1705580) (not e!2584467))))

(assert (=> b!4163261 (= res!1705580 (= (head!8838 (tail!6685 p!2942)) (head!8838 (tail!6685 input!3316))))))

(declare-fun b!4163263 () Bool)

(assert (=> b!4163263 (= e!2584468 (>= (size!33467 (tail!6685 input!3316)) (size!33467 (tail!6685 p!2942))))))

(declare-fun b!4163260 () Bool)

(assert (=> b!4163260 (= e!2584466 e!2584467)))

(declare-fun res!1705577 () Bool)

(assert (=> b!4163260 (=> (not res!1705577) (not e!2584467))))

(assert (=> b!4163260 (= res!1705577 (not ((_ is Nil!45549) (tail!6685 input!3316))))))

(assert (= (and d!1230567 (not res!1705578)) b!4163260))

(assert (= (and b!4163260 res!1705577) b!4163261))

(assert (= (and b!4163261 res!1705580) b!4163262))

(assert (= (and d!1230567 (not res!1705579)) b!4163263))

(assert (=> b!4163262 m!4755327))

(declare-fun m!4755719 () Bool)

(assert (=> b!4163262 m!4755719))

(assert (=> b!4163262 m!4755347))

(declare-fun m!4755721 () Bool)

(assert (=> b!4163262 m!4755721))

(assert (=> b!4163262 m!4755719))

(assert (=> b!4163262 m!4755721))

(declare-fun m!4755723 () Bool)

(assert (=> b!4163262 m!4755723))

(assert (=> b!4163261 m!4755327))

(declare-fun m!4755725 () Bool)

(assert (=> b!4163261 m!4755725))

(assert (=> b!4163261 m!4755347))

(declare-fun m!4755727 () Bool)

(assert (=> b!4163261 m!4755727))

(assert (=> b!4163263 m!4755347))

(declare-fun m!4755729 () Bool)

(assert (=> b!4163263 m!4755729))

(assert (=> b!4163263 m!4755327))

(declare-fun m!4755731 () Bool)

(assert (=> b!4163263 m!4755731))

(assert (=> b!4162878 d!1230567))

(declare-fun d!1230569 () Bool)

(assert (=> d!1230569 (= (tail!6685 p!2942) (t!343736 p!2942))))

(assert (=> b!4162878 d!1230569))

(declare-fun d!1230571 () Bool)

(assert (=> d!1230571 (= (tail!6685 input!3316) (t!343736 input!3316))))

(assert (=> b!4162878 d!1230571))

(declare-fun d!1230573 () Bool)

(assert (=> d!1230573 (= (isEmpty!26969 lt!1483212) (not ((_ is Some!9745) lt!1483212)))))

(assert (=> d!1230421 d!1230573))

(declare-fun d!1230575 () Bool)

(assert (=> d!1230575 (= (isEmpty!26968 (_1!24879 lt!1483215)) ((_ is Nil!45549) (_1!24879 lt!1483215)))))

(assert (=> d!1230421 d!1230575))

(declare-fun d!1230577 () Bool)

(declare-fun lt!1483320 () tuple2!43490)

(assert (=> d!1230577 (= (++!11658 (_1!24879 lt!1483320) (_2!24879 lt!1483320)) input!3316)))

(declare-fun sizeTr!302 (List!45673 Int) Int)

(assert (=> d!1230577 (= lt!1483320 (findLongestMatchInner!1559 (regex!7532 r!4097) Nil!45549 0 input!3316 input!3316 (sizeTr!302 input!3316 0)))))

(declare-fun lt!1483321 () Unit!64639)

(declare-fun lt!1483325 () Unit!64639)

(assert (=> d!1230577 (= lt!1483321 lt!1483325)))

(declare-fun lt!1483324 () List!45673)

(declare-fun lt!1483318 () Int)

(assert (=> d!1230577 (= (sizeTr!302 lt!1483324 lt!1483318) (+ (size!33467 lt!1483324) lt!1483318))))

(declare-fun lemmaSizeTrEqualsSize!301 (List!45673 Int) Unit!64639)

(assert (=> d!1230577 (= lt!1483325 (lemmaSizeTrEqualsSize!301 lt!1483324 lt!1483318))))

(assert (=> d!1230577 (= lt!1483318 0)))

(assert (=> d!1230577 (= lt!1483324 Nil!45549)))

(declare-fun lt!1483323 () Unit!64639)

(declare-fun lt!1483322 () Unit!64639)

(assert (=> d!1230577 (= lt!1483323 lt!1483322)))

(declare-fun lt!1483319 () Int)

(assert (=> d!1230577 (= (sizeTr!302 input!3316 lt!1483319) (+ (size!33467 input!3316) lt!1483319))))

(assert (=> d!1230577 (= lt!1483322 (lemmaSizeTrEqualsSize!301 input!3316 lt!1483319))))

(assert (=> d!1230577 (= lt!1483319 0)))

(assert (=> d!1230577 (validRegex!5570 (regex!7532 r!4097))))

(assert (=> d!1230577 (= (findLongestMatch!1472 (regex!7532 r!4097) input!3316) lt!1483320)))

(declare-fun bs!595709 () Bool)

(assert (= bs!595709 d!1230577))

(declare-fun m!4755737 () Bool)

(assert (=> bs!595709 m!4755737))

(declare-fun m!4755739 () Bool)

(assert (=> bs!595709 m!4755739))

(declare-fun m!4755741 () Bool)

(assert (=> bs!595709 m!4755741))

(assert (=> bs!595709 m!4755337))

(declare-fun m!4755743 () Bool)

(assert (=> bs!595709 m!4755743))

(declare-fun m!4755745 () Bool)

(assert (=> bs!595709 m!4755745))

(declare-fun m!4755747 () Bool)

(assert (=> bs!595709 m!4755747))

(declare-fun m!4755749 () Bool)

(assert (=> bs!595709 m!4755749))

(assert (=> bs!595709 m!4755747))

(declare-fun m!4755751 () Bool)

(assert (=> bs!595709 m!4755751))

(assert (=> bs!595709 m!4755353))

(assert (=> d!1230421 d!1230577))

(assert (=> d!1230421 d!1230407))

(declare-fun d!1230585 () Bool)

(assert (=> d!1230585 (= (inv!60063 (tag!8396 (h!50971 (t!343738 rules!3820)))) (= (mod (str.len (value!235209 (tag!8396 (h!50971 (t!343738 rules!3820))))) 2) 0))))

(assert (=> b!4163165 d!1230585))

(declare-fun d!1230587 () Bool)

(declare-fun res!1705584 () Bool)

(declare-fun e!2584472 () Bool)

(assert (=> d!1230587 (=> (not res!1705584) (not e!2584472))))

(assert (=> d!1230587 (= res!1705584 (semiInverseModEq!3269 (toChars!10055 (transformation!7532 (h!50971 (t!343738 rules!3820)))) (toValue!10196 (transformation!7532 (h!50971 (t!343738 rules!3820))))))))

(assert (=> d!1230587 (= (inv!60065 (transformation!7532 (h!50971 (t!343738 rules!3820)))) e!2584472)))

(declare-fun b!4163267 () Bool)

(assert (=> b!4163267 (= e!2584472 (equivClasses!3168 (toChars!10055 (transformation!7532 (h!50971 (t!343738 rules!3820)))) (toValue!10196 (transformation!7532 (h!50971 (t!343738 rules!3820))))))))

(assert (= (and d!1230587 res!1705584) b!4163267))

(declare-fun m!4755753 () Bool)

(assert (=> d!1230587 m!4755753))

(declare-fun m!4755755 () Bool)

(assert (=> b!4163267 m!4755755))

(assert (=> b!4163165 d!1230587))

(declare-fun d!1230589 () Bool)

(declare-fun lt!1483326 () Int)

(assert (=> d!1230589 (>= lt!1483326 0)))

(declare-fun e!2584473 () Int)

(assert (=> d!1230589 (= lt!1483326 e!2584473)))

(declare-fun c!712081 () Bool)

(assert (=> d!1230589 (= c!712081 ((_ is Nil!45549) input!3316))))

(assert (=> d!1230589 (= (size!33467 input!3316) lt!1483326)))

(declare-fun b!4163268 () Bool)

(assert (=> b!4163268 (= e!2584473 0)))

(declare-fun b!4163269 () Bool)

(assert (=> b!4163269 (= e!2584473 (+ 1 (size!33467 (t!343736 input!3316))))))

(assert (= (and d!1230589 c!712081) b!4163268))

(assert (= (and d!1230589 (not c!712081)) b!4163269))

(declare-fun m!4755757 () Bool)

(assert (=> b!4163269 m!4755757))

(assert (=> b!4163121 d!1230589))

(declare-fun bs!595710 () Bool)

(declare-fun d!1230591 () Bool)

(assert (= bs!595710 (and d!1230591 d!1230441)))

(declare-fun lambda!129078 () Int)

(assert (=> bs!595710 (= (and (= (toChars!10055 (transformation!7532 (h!50971 rules!3820))) (toChars!10055 (transformation!7532 r!4097))) (= (toValue!10196 (transformation!7532 (h!50971 rules!3820))) (toValue!10196 (transformation!7532 r!4097)))) (= lambda!129078 lambda!129060))))

(assert (=> d!1230591 true))

(assert (=> d!1230591 (< (dynLambda!19496 order!23985 (toChars!10055 (transformation!7532 (h!50971 rules!3820)))) (dynLambda!19495 order!23983 lambda!129078))))

(assert (=> d!1230591 true))

(assert (=> d!1230591 (< (dynLambda!19494 order!23981 (toValue!10196 (transformation!7532 (h!50971 rules!3820)))) (dynLambda!19495 order!23983 lambda!129078))))

(declare-fun Forall!1552 (Int) Bool)

(assert (=> d!1230591 (= (semiInverseModEq!3269 (toChars!10055 (transformation!7532 (h!50971 rules!3820))) (toValue!10196 (transformation!7532 (h!50971 rules!3820)))) (Forall!1552 lambda!129078))))

(declare-fun bs!595711 () Bool)

(assert (= bs!595711 d!1230591))

(declare-fun m!4755759 () Bool)

(assert (=> bs!595711 m!4755759))

(assert (=> d!1230399 d!1230591))

(declare-fun d!1230593 () Bool)

(assert (=> d!1230593 (= (isEmpty!26968 p!2942) ((_ is Nil!45549) p!2942))))

(assert (=> d!1230405 d!1230593))

(declare-fun b!4163292 () Bool)

(declare-fun e!2584488 () Bool)

(declare-fun call!290875 () Bool)

(assert (=> b!4163292 (= e!2584488 call!290875)))

(declare-fun bm!290868 () Bool)

(declare-fun c!712087 () Bool)

(assert (=> bm!290868 (= call!290875 (validRegex!5570 (ite c!712087 (regTwo!25387 (regex!7532 r!4097)) (regTwo!25386 (regex!7532 r!4097)))))))

(declare-fun bm!290869 () Bool)

(declare-fun call!290874 () Bool)

(declare-fun c!712086 () Bool)

(assert (=> bm!290869 (= call!290874 (validRegex!5570 (ite c!712086 (reg!12766 (regex!7532 r!4097)) (ite c!712087 (regOne!25387 (regex!7532 r!4097)) (regOne!25386 (regex!7532 r!4097))))))))

(declare-fun b!4163293 () Bool)

(declare-fun e!2584493 () Bool)

(assert (=> b!4163293 (= e!2584493 call!290874)))

(declare-fun b!4163294 () Bool)

(declare-fun e!2584491 () Bool)

(declare-fun e!2584490 () Bool)

(assert (=> b!4163294 (= e!2584491 e!2584490)))

(declare-fun res!1705596 () Bool)

(assert (=> b!4163294 (=> (not res!1705596) (not e!2584490))))

(declare-fun call!290873 () Bool)

(assert (=> b!4163294 (= res!1705596 call!290873)))

(declare-fun b!4163295 () Bool)

(declare-fun e!2584492 () Bool)

(declare-fun e!2584489 () Bool)

(assert (=> b!4163295 (= e!2584492 e!2584489)))

(assert (=> b!4163295 (= c!712086 ((_ is Star!12437) (regex!7532 r!4097)))))

(declare-fun d!1230595 () Bool)

(declare-fun res!1705598 () Bool)

(assert (=> d!1230595 (=> res!1705598 e!2584492)))

(assert (=> d!1230595 (= res!1705598 ((_ is ElementMatch!12437) (regex!7532 r!4097)))))

(assert (=> d!1230595 (= (validRegex!5570 (regex!7532 r!4097)) e!2584492)))

(declare-fun b!4163296 () Bool)

(declare-fun res!1705597 () Bool)

(assert (=> b!4163296 (=> res!1705597 e!2584491)))

(assert (=> b!4163296 (= res!1705597 (not ((_ is Concat!20200) (regex!7532 r!4097))))))

(declare-fun e!2584494 () Bool)

(assert (=> b!4163296 (= e!2584494 e!2584491)))

(declare-fun bm!290870 () Bool)

(assert (=> bm!290870 (= call!290873 call!290874)))

(declare-fun b!4163297 () Bool)

(assert (=> b!4163297 (= e!2584489 e!2584494)))

(assert (=> b!4163297 (= c!712087 ((_ is Union!12437) (regex!7532 r!4097)))))

(declare-fun b!4163298 () Bool)

(assert (=> b!4163298 (= e!2584490 call!290875)))

(declare-fun b!4163299 () Bool)

(declare-fun res!1705595 () Bool)

(assert (=> b!4163299 (=> (not res!1705595) (not e!2584488))))

(assert (=> b!4163299 (= res!1705595 call!290873)))

(assert (=> b!4163299 (= e!2584494 e!2584488)))

(declare-fun b!4163300 () Bool)

(assert (=> b!4163300 (= e!2584489 e!2584493)))

(declare-fun res!1705599 () Bool)

(assert (=> b!4163300 (= res!1705599 (not (nullable!4360 (reg!12766 (regex!7532 r!4097)))))))

(assert (=> b!4163300 (=> (not res!1705599) (not e!2584493))))

(assert (= (and d!1230595 (not res!1705598)) b!4163295))

(assert (= (and b!4163295 c!712086) b!4163300))

(assert (= (and b!4163295 (not c!712086)) b!4163297))

(assert (= (and b!4163300 res!1705599) b!4163293))

(assert (= (and b!4163297 c!712087) b!4163299))

(assert (= (and b!4163297 (not c!712087)) b!4163296))

(assert (= (and b!4163299 res!1705595) b!4163292))

(assert (= (and b!4163296 (not res!1705597)) b!4163294))

(assert (= (and b!4163294 res!1705596) b!4163298))

(assert (= (or b!4163292 b!4163298) bm!290868))

(assert (= (or b!4163299 b!4163294) bm!290870))

(assert (= (or b!4163293 bm!290870) bm!290869))

(declare-fun m!4755761 () Bool)

(assert (=> bm!290868 m!4755761))

(declare-fun m!4755763 () Bool)

(assert (=> bm!290869 m!4755763))

(declare-fun m!4755765 () Bool)

(assert (=> b!4163300 m!4755765))

(assert (=> d!1230405 d!1230595))

(declare-fun bs!595712 () Bool)

(declare-fun d!1230597 () Bool)

(assert (= bs!595712 (and d!1230597 d!1230485)))

(declare-fun lambda!129081 () Int)

(assert (=> bs!595712 (= lambda!129081 lambda!129063)))

(declare-fun bs!595713 () Bool)

(assert (= bs!595713 (and d!1230597 d!1230563)))

(assert (=> bs!595713 (= lambda!129081 lambda!129075)))

(assert (=> d!1230597 true))

(declare-fun lt!1483329 () Bool)

(assert (=> d!1230597 (= lt!1483329 (rulesValidInductive!2774 thiss!25889 rules!3820))))

(assert (=> d!1230597 (= lt!1483329 (forall!8460 rules!3820 lambda!129081))))

(assert (=> d!1230597 (= (rulesValid!2937 thiss!25889 rules!3820) lt!1483329)))

(declare-fun bs!595714 () Bool)

(assert (= bs!595714 d!1230597))

(assert (=> bs!595714 m!4755283))

(declare-fun m!4755767 () Bool)

(assert (=> bs!595714 m!4755767))

(assert (=> d!1230401 d!1230597))

(declare-fun d!1230599 () Bool)

(declare-fun lt!1483330 () List!45673)

(assert (=> d!1230599 (= (++!11658 (t!343736 p!2942) lt!1483330) (tail!6685 input!3316))))

(declare-fun e!2584495 () List!45673)

(assert (=> d!1230599 (= lt!1483330 e!2584495)))

(declare-fun c!712088 () Bool)

(assert (=> d!1230599 (= c!712088 ((_ is Cons!45549) (t!343736 p!2942)))))

(assert (=> d!1230599 (>= (size!33467 (tail!6685 input!3316)) (size!33467 (t!343736 p!2942)))))

(assert (=> d!1230599 (= (getSuffix!2702 (tail!6685 input!3316) (t!343736 p!2942)) lt!1483330)))

(declare-fun b!4163301 () Bool)

(assert (=> b!4163301 (= e!2584495 (getSuffix!2702 (tail!6685 (tail!6685 input!3316)) (t!343736 (t!343736 p!2942))))))

(declare-fun b!4163302 () Bool)

(assert (=> b!4163302 (= e!2584495 (tail!6685 input!3316))))

(assert (= (and d!1230599 c!712088) b!4163301))

(assert (= (and d!1230599 (not c!712088)) b!4163302))

(declare-fun m!4755769 () Bool)

(assert (=> d!1230599 m!4755769))

(assert (=> d!1230599 m!4755347))

(assert (=> d!1230599 m!4755729))

(assert (=> d!1230599 m!4755471))

(assert (=> b!4163301 m!4755347))

(assert (=> b!4163301 m!4755721))

(assert (=> b!4163301 m!4755721))

(declare-fun m!4755771 () Bool)

(assert (=> b!4163301 m!4755771))

(assert (=> b!4163116 d!1230599))

(assert (=> b!4163116 d!1230571))

(declare-fun d!1230601 () Bool)

(declare-fun res!1705604 () Bool)

(declare-fun e!2584500 () Bool)

(assert (=> d!1230601 (=> res!1705604 e!2584500)))

(assert (=> d!1230601 (= res!1705604 ((_ is Nil!45551) rules!3820))))

(assert (=> d!1230601 (= (forall!8460 rules!3820 lambda!129063) e!2584500)))

(declare-fun b!4163307 () Bool)

(declare-fun e!2584501 () Bool)

(assert (=> b!4163307 (= e!2584500 e!2584501)))

(declare-fun res!1705605 () Bool)

(assert (=> b!4163307 (=> (not res!1705605) (not e!2584501))))

(declare-fun dynLambda!19501 (Int Rule!14864) Bool)

(assert (=> b!4163307 (= res!1705605 (dynLambda!19501 lambda!129063 (h!50971 rules!3820)))))

(declare-fun b!4163308 () Bool)

(assert (=> b!4163308 (= e!2584501 (forall!8460 (t!343738 rules!3820) lambda!129063))))

(assert (= (and d!1230601 (not res!1705604)) b!4163307))

(assert (= (and b!4163307 res!1705605) b!4163308))

(declare-fun b_lambda!122209 () Bool)

(assert (=> (not b_lambda!122209) (not b!4163307)))

(declare-fun m!4755773 () Bool)

(assert (=> b!4163307 m!4755773))

(declare-fun m!4755775 () Bool)

(assert (=> b!4163308 m!4755775))

(assert (=> d!1230485 d!1230601))

(declare-fun b!4163319 () Bool)

(declare-fun res!1705611 () Bool)

(declare-fun e!2584507 () Bool)

(assert (=> b!4163319 (=> (not res!1705611) (not e!2584507))))

(declare-fun lt!1483333 () List!45673)

(assert (=> b!4163319 (= res!1705611 (= (size!33467 lt!1483333) (+ (size!33467 p!2942) (size!33467 lt!1483242))))))

(declare-fun b!4163320 () Bool)

(assert (=> b!4163320 (= e!2584507 (or (not (= lt!1483242 Nil!45549)) (= lt!1483333 p!2942)))))

(declare-fun b!4163317 () Bool)

(declare-fun e!2584506 () List!45673)

(assert (=> b!4163317 (= e!2584506 lt!1483242)))

(declare-fun b!4163318 () Bool)

(assert (=> b!4163318 (= e!2584506 (Cons!45549 (h!50969 p!2942) (++!11658 (t!343736 p!2942) lt!1483242)))))

(declare-fun d!1230603 () Bool)

(assert (=> d!1230603 e!2584507))

(declare-fun res!1705610 () Bool)

(assert (=> d!1230603 (=> (not res!1705610) (not e!2584507))))

(declare-fun content!7084 (List!45673) (InoxSet C!25064))

(assert (=> d!1230603 (= res!1705610 (= (content!7084 lt!1483333) ((_ map or) (content!7084 p!2942) (content!7084 lt!1483242))))))

(assert (=> d!1230603 (= lt!1483333 e!2584506)))

(declare-fun c!712091 () Bool)

(assert (=> d!1230603 (= c!712091 ((_ is Nil!45549) p!2942))))

(assert (=> d!1230603 (= (++!11658 p!2942 lt!1483242) lt!1483333)))

(assert (= (and d!1230603 c!712091) b!4163317))

(assert (= (and d!1230603 (not c!712091)) b!4163318))

(assert (= (and d!1230603 res!1705610) b!4163319))

(assert (= (and b!4163319 res!1705611) b!4163320))

(declare-fun m!4755777 () Bool)

(assert (=> b!4163319 m!4755777))

(assert (=> b!4163319 m!4755309))

(declare-fun m!4755779 () Bool)

(assert (=> b!4163319 m!4755779))

(declare-fun m!4755781 () Bool)

(assert (=> b!4163318 m!4755781))

(declare-fun m!4755783 () Bool)

(assert (=> d!1230603 m!4755783))

(declare-fun m!4755785 () Bool)

(assert (=> d!1230603 m!4755785))

(declare-fun m!4755787 () Bool)

(assert (=> d!1230603 m!4755787))

(assert (=> d!1230481 d!1230603))

(assert (=> d!1230481 d!1230589))

(assert (=> d!1230481 d!1230439))

(declare-fun d!1230605 () Bool)

(declare-fun lt!1483334 () Int)

(assert (=> d!1230605 (>= lt!1483334 0)))

(declare-fun e!2584508 () Int)

(assert (=> d!1230605 (= lt!1483334 e!2584508)))

(declare-fun c!712092 () Bool)

(assert (=> d!1230605 (= c!712092 ((_ is Nil!45549) (t!343736 p!2942)))))

(assert (=> d!1230605 (= (size!33467 (t!343736 p!2942)) lt!1483334)))

(declare-fun b!4163321 () Bool)

(assert (=> b!4163321 (= e!2584508 0)))

(declare-fun b!4163322 () Bool)

(assert (=> b!4163322 (= e!2584508 (+ 1 (size!33467 (t!343736 (t!343736 p!2942)))))))

(assert (= (and d!1230605 c!712092) b!4163321))

(assert (= (and d!1230605 (not c!712092)) b!4163322))

(declare-fun m!4755789 () Bool)

(assert (=> b!4163322 m!4755789))

(assert (=> b!4162969 d!1230605))

(assert (=> d!1230477 d!1230483))

(declare-fun d!1230607 () Bool)

(assert (=> d!1230607 (isPrefix!4389 input!3316 input!3316)))

(assert (=> d!1230607 true))

(declare-fun _$45!2027 () Unit!64639)

(assert (=> d!1230607 (= (choose!25493 input!3316 input!3316) _$45!2027)))

(declare-fun bs!595715 () Bool)

(assert (= bs!595715 d!1230607))

(assert (=> bs!595715 m!4755297))

(assert (=> d!1230477 d!1230607))

(declare-fun b!4163333 () Bool)

(declare-fun res!1705614 () Bool)

(declare-fun e!2584515 () Bool)

(assert (=> b!4163333 (=> res!1705614 e!2584515)))

(assert (=> b!4163333 (= res!1705614 (not ((_ is IntegerValue!23288) (dynLambda!19493 (toValue!10196 (transformation!7532 r!4097)) lt!1483152))))))

(declare-fun e!2584517 () Bool)

(assert (=> b!4163333 (= e!2584517 e!2584515)))

(declare-fun b!4163334 () Bool)

(declare-fun inv!17 (TokenValue!7762) Bool)

(assert (=> b!4163334 (= e!2584517 (inv!17 (dynLambda!19493 (toValue!10196 (transformation!7532 r!4097)) lt!1483152)))))

(declare-fun b!4163335 () Bool)

(declare-fun inv!15 (TokenValue!7762) Bool)

(assert (=> b!4163335 (= e!2584515 (inv!15 (dynLambda!19493 (toValue!10196 (transformation!7532 r!4097)) lt!1483152)))))

(declare-fun b!4163336 () Bool)

(declare-fun e!2584516 () Bool)

(declare-fun inv!16 (TokenValue!7762) Bool)

(assert (=> b!4163336 (= e!2584516 (inv!16 (dynLambda!19493 (toValue!10196 (transformation!7532 r!4097)) lt!1483152)))))

(declare-fun d!1230609 () Bool)

(declare-fun c!712098 () Bool)

(assert (=> d!1230609 (= c!712098 ((_ is IntegerValue!23286) (dynLambda!19493 (toValue!10196 (transformation!7532 r!4097)) lt!1483152)))))

(assert (=> d!1230609 (= (inv!21 (dynLambda!19493 (toValue!10196 (transformation!7532 r!4097)) lt!1483152)) e!2584516)))

(declare-fun b!4163337 () Bool)

(assert (=> b!4163337 (= e!2584516 e!2584517)))

(declare-fun c!712097 () Bool)

(assert (=> b!4163337 (= c!712097 ((_ is IntegerValue!23287) (dynLambda!19493 (toValue!10196 (transformation!7532 r!4097)) lt!1483152)))))

(assert (= (and d!1230609 c!712098) b!4163336))

(assert (= (and d!1230609 (not c!712098)) b!4163337))

(assert (= (and b!4163337 c!712097) b!4163334))

(assert (= (and b!4163337 (not c!712097)) b!4163333))

(assert (= (and b!4163333 (not res!1705614)) b!4163335))

(declare-fun m!4755791 () Bool)

(assert (=> b!4163334 m!4755791))

(declare-fun m!4755793 () Bool)

(assert (=> b!4163335 m!4755793))

(declare-fun m!4755795 () Bool)

(assert (=> b!4163336 m!4755795))

(assert (=> tb!249289 d!1230609))

(declare-fun d!1230611 () Bool)

(assert (=> d!1230611 (= (head!8838 pBis!100) (h!50969 pBis!100))))

(assert (=> b!4163134 d!1230611))

(assert (=> b!4163134 d!1230565))

(declare-fun d!1230613 () Bool)

(assert (=> d!1230613 (= (list!16503 (dynLambda!19497 (toChars!10055 (transformation!7532 r!4097)) (dynLambda!19493 (toValue!10196 (transformation!7532 r!4097)) lt!1483152))) (list!16505 (c!712020 (dynLambda!19497 (toChars!10055 (transformation!7532 r!4097)) (dynLambda!19493 (toValue!10196 (transformation!7532 r!4097)) lt!1483152)))))))

(declare-fun bs!595716 () Bool)

(assert (= bs!595716 d!1230613))

(declare-fun m!4755797 () Bool)

(assert (=> bs!595716 m!4755797))

(assert (=> d!1230441 d!1230613))

(declare-fun d!1230615 () Bool)

(assert (=> d!1230615 (= (list!16503 lt!1483152) (list!16505 (c!712020 lt!1483152)))))

(declare-fun bs!595717 () Bool)

(assert (= bs!595717 d!1230615))

(declare-fun m!4755799 () Bool)

(assert (=> bs!595717 m!4755799))

(assert (=> d!1230441 d!1230615))

(declare-fun d!1230617 () Bool)

(declare-fun dynLambda!19502 (Int BalanceConc!27080) Bool)

(assert (=> d!1230617 (dynLambda!19502 lambda!129060 lt!1483152)))

(declare-fun lt!1483337 () Unit!64639)

(declare-fun choose!25496 (Int BalanceConc!27080) Unit!64639)

(assert (=> d!1230617 (= lt!1483337 (choose!25496 lambda!129060 lt!1483152))))

(assert (=> d!1230617 (Forall!1552 lambda!129060)))

(assert (=> d!1230617 (= (ForallOf!1006 lambda!129060 lt!1483152) lt!1483337)))

(declare-fun b_lambda!122211 () Bool)

(assert (=> (not b_lambda!122211) (not d!1230617)))

(declare-fun bs!595718 () Bool)

(assert (= bs!595718 d!1230617))

(declare-fun m!4755801 () Bool)

(assert (=> bs!595718 m!4755801))

(declare-fun m!4755803 () Bool)

(assert (=> bs!595718 m!4755803))

(declare-fun m!4755805 () Bool)

(assert (=> bs!595718 m!4755805))

(assert (=> d!1230441 d!1230617))

(declare-fun bs!595719 () Bool)

(declare-fun d!1230619 () Bool)

(assert (= bs!595719 (and d!1230619 d!1230531)))

(declare-fun lambda!129082 () Int)

(assert (=> bs!595719 (= (= (toValue!10196 (transformation!7532 rBis!161)) (toValue!10196 (transformation!7532 r!4097))) (= lambda!129082 lambda!129073))))

(assert (=> d!1230619 true))

(assert (=> d!1230619 (< (dynLambda!19494 order!23981 (toValue!10196 (transformation!7532 rBis!161))) (dynLambda!19499 order!23989 lambda!129082))))

(assert (=> d!1230619 (= (equivClasses!3168 (toChars!10055 (transformation!7532 rBis!161)) (toValue!10196 (transformation!7532 rBis!161))) (Forall2!1151 lambda!129082))))

(declare-fun bs!595720 () Bool)

(assert (= bs!595720 d!1230619))

(declare-fun m!4755807 () Bool)

(assert (=> bs!595720 m!4755807))

(assert (=> b!4163132 d!1230619))

(declare-fun d!1230621 () Bool)

(declare-fun lt!1483340 () Int)

(assert (=> d!1230621 (= lt!1483340 (size!33467 (list!16503 (seqFromList!5565 (_1!24879 lt!1483215)))))))

(declare-fun size!33472 (Conc!13743) Int)

(assert (=> d!1230621 (= lt!1483340 (size!33472 (c!712020 (seqFromList!5565 (_1!24879 lt!1483215)))))))

(assert (=> d!1230621 (= (size!33470 (seqFromList!5565 (_1!24879 lt!1483215))) lt!1483340)))

(declare-fun bs!595721 () Bool)

(assert (= bs!595721 d!1230621))

(assert (=> bs!595721 m!4755455))

(declare-fun m!4755809 () Bool)

(assert (=> bs!595721 m!4755809))

(assert (=> bs!595721 m!4755809))

(declare-fun m!4755811 () Bool)

(assert (=> bs!595721 m!4755811))

(declare-fun m!4755813 () Bool)

(assert (=> bs!595721 m!4755813))

(assert (=> b!4162958 d!1230621))

(declare-fun d!1230623 () Bool)

(assert (=> d!1230623 (= (seqFromList!5565 (_1!24879 lt!1483215)) (fromListB!2555 (_1!24879 lt!1483215)))))

(declare-fun bs!595722 () Bool)

(assert (= bs!595722 d!1230623))

(declare-fun m!4755815 () Bool)

(assert (=> bs!595722 m!4755815))

(assert (=> b!4162958 d!1230623))

(declare-fun d!1230625 () Bool)

(declare-fun e!2584520 () Bool)

(assert (=> d!1230625 e!2584520))

(declare-fun res!1705617 () Bool)

(assert (=> d!1230625 (=> res!1705617 e!2584520)))

(assert (=> d!1230625 (= res!1705617 (isEmpty!26968 (_1!24879 (findLongestMatchInner!1559 (regex!7532 r!4097) Nil!45549 (size!33467 Nil!45549) input!3316 input!3316 (size!33467 input!3316)))))))

(declare-fun lt!1483343 () Unit!64639)

(declare-fun choose!25497 (Regex!12437 List!45673) Unit!64639)

(assert (=> d!1230625 (= lt!1483343 (choose!25497 (regex!7532 r!4097) input!3316))))

(assert (=> d!1230625 (validRegex!5570 (regex!7532 r!4097))))

(assert (=> d!1230625 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1532 (regex!7532 r!4097) input!3316) lt!1483343)))

(declare-fun b!4163340 () Bool)

(assert (=> b!4163340 (= e!2584520 (matchR!6182 (regex!7532 r!4097) (_1!24879 (findLongestMatchInner!1559 (regex!7532 r!4097) Nil!45549 (size!33467 Nil!45549) input!3316 input!3316 (size!33467 input!3316)))))))

(assert (= (and d!1230625 (not res!1705617)) b!4163340))

(declare-fun m!4755817 () Bool)

(assert (=> d!1230625 m!4755817))

(assert (=> d!1230625 m!4755337))

(assert (=> d!1230625 m!4755447))

(assert (=> d!1230625 m!4755353))

(assert (=> d!1230625 m!4755449))

(assert (=> d!1230625 m!4755459))

(assert (=> d!1230625 m!4755353))

(assert (=> d!1230625 m!4755447))

(assert (=> b!4163340 m!4755447))

(assert (=> b!4163340 m!4755353))

(assert (=> b!4163340 m!4755447))

(assert (=> b!4163340 m!4755353))

(assert (=> b!4163340 m!4755449))

(assert (=> b!4163340 m!4755451))

(assert (=> b!4162958 d!1230625))

(assert (=> b!4162958 d!1230589))

(declare-fun d!1230627 () Bool)

(assert (=> d!1230627 (= (apply!10513 (transformation!7532 r!4097) (seqFromList!5565 (_1!24879 lt!1483215))) (dynLambda!19493 (toValue!10196 (transformation!7532 r!4097)) (seqFromList!5565 (_1!24879 lt!1483215))))))

(declare-fun b_lambda!122213 () Bool)

(assert (=> (not b_lambda!122213) (not d!1230627)))

(declare-fun t!343798 () Bool)

(declare-fun tb!249339 () Bool)

(assert (=> (and b!4162806 (= (toValue!10196 (transformation!7532 r!4097)) (toValue!10196 (transformation!7532 r!4097))) t!343798) tb!249339))

(declare-fun result!303684 () Bool)

(assert (=> tb!249339 (= result!303684 (inv!21 (dynLambda!19493 (toValue!10196 (transformation!7532 r!4097)) (seqFromList!5565 (_1!24879 lt!1483215)))))))

(declare-fun m!4755819 () Bool)

(assert (=> tb!249339 m!4755819))

(assert (=> d!1230627 t!343798))

(declare-fun b_and!324521 () Bool)

(assert (= b_and!324479 (and (=> t!343798 result!303684) b_and!324521)))

(declare-fun t!343800 () Bool)

(declare-fun tb!249341 () Bool)

(assert (=> (and b!4162792 (= (toValue!10196 (transformation!7532 rBis!161)) (toValue!10196 (transformation!7532 r!4097))) t!343800) tb!249341))

(declare-fun result!303686 () Bool)

(assert (= result!303686 result!303684))

(assert (=> d!1230627 t!343800))

(declare-fun b_and!324523 () Bool)

(assert (= b_and!324481 (and (=> t!343800 result!303686) b_and!324523)))

(declare-fun t!343802 () Bool)

(declare-fun tb!249343 () Bool)

(assert (=> (and b!4162787 (= (toValue!10196 (transformation!7532 (h!50971 rules!3820))) (toValue!10196 (transformation!7532 r!4097))) t!343802) tb!249343))

(declare-fun result!303688 () Bool)

(assert (= result!303688 result!303684))

(assert (=> d!1230627 t!343802))

(declare-fun b_and!324525 () Bool)

(assert (= b_and!324483 (and (=> t!343802 result!303688) b_and!324525)))

(declare-fun tb!249345 () Bool)

(declare-fun t!343804 () Bool)

(assert (=> (and b!4163166 (= (toValue!10196 (transformation!7532 (h!50971 (t!343738 rules!3820)))) (toValue!10196 (transformation!7532 r!4097))) t!343804) tb!249345))

(declare-fun result!303690 () Bool)

(assert (= result!303690 result!303684))

(assert (=> d!1230627 t!343804))

(declare-fun b_and!324527 () Bool)

(assert (= b_and!324485 (and (=> t!343804 result!303690) b_and!324527)))

(assert (=> d!1230627 m!4755455))

(declare-fun m!4755821 () Bool)

(assert (=> d!1230627 m!4755821))

(assert (=> b!4162958 d!1230627))

(declare-fun d!1230629 () Bool)

(assert (=> d!1230629 (= (isEmpty!26968 (_1!24879 (findLongestMatchInner!1559 (regex!7532 r!4097) Nil!45549 (size!33467 Nil!45549) input!3316 input!3316 (size!33467 input!3316)))) ((_ is Nil!45549) (_1!24879 (findLongestMatchInner!1559 (regex!7532 r!4097) Nil!45549 (size!33467 Nil!45549) input!3316 input!3316 (size!33467 input!3316)))))))

(assert (=> b!4162958 d!1230629))

(declare-fun bs!595723 () Bool)

(declare-fun d!1230631 () Bool)

(assert (= bs!595723 (and d!1230631 d!1230441)))

(declare-fun lambda!129083 () Int)

(assert (=> bs!595723 (= lambda!129083 lambda!129060)))

(declare-fun bs!595724 () Bool)

(assert (= bs!595724 (and d!1230631 d!1230591)))

(assert (=> bs!595724 (= (and (= (toChars!10055 (transformation!7532 r!4097)) (toChars!10055 (transformation!7532 (h!50971 rules!3820)))) (= (toValue!10196 (transformation!7532 r!4097)) (toValue!10196 (transformation!7532 (h!50971 rules!3820))))) (= lambda!129083 lambda!129078))))

(declare-fun b!4163341 () Bool)

(declare-fun e!2584522 () Bool)

(assert (=> b!4163341 (= e!2584522 true)))

(assert (=> d!1230631 e!2584522))

(assert (= d!1230631 b!4163341))

(assert (=> b!4163341 (< (dynLambda!19494 order!23981 (toValue!10196 (transformation!7532 r!4097))) (dynLambda!19495 order!23983 lambda!129083))))

(assert (=> b!4163341 (< (dynLambda!19496 order!23985 (toChars!10055 (transformation!7532 r!4097))) (dynLambda!19495 order!23983 lambda!129083))))

(assert (=> d!1230631 (= (list!16503 (dynLambda!19497 (toChars!10055 (transformation!7532 r!4097)) (dynLambda!19493 (toValue!10196 (transformation!7532 r!4097)) (seqFromList!5565 (_1!24879 lt!1483215))))) (list!16503 (seqFromList!5565 (_1!24879 lt!1483215))))))

(declare-fun lt!1483344 () Unit!64639)

(assert (=> d!1230631 (= lt!1483344 (ForallOf!1006 lambda!129083 (seqFromList!5565 (_1!24879 lt!1483215))))))

(assert (=> d!1230631 (= (lemmaSemiInverse!2306 (transformation!7532 r!4097) (seqFromList!5565 (_1!24879 lt!1483215))) lt!1483344)))

(declare-fun b_lambda!122215 () Bool)

(assert (=> (not b_lambda!122215) (not d!1230631)))

(declare-fun t!343806 () Bool)

(declare-fun tb!249347 () Bool)

(assert (=> (and b!4162806 (= (toChars!10055 (transformation!7532 r!4097)) (toChars!10055 (transformation!7532 r!4097))) t!343806) tb!249347))

(declare-fun tp!1271043 () Bool)

(declare-fun e!2584523 () Bool)

(declare-fun b!4163342 () Bool)

(assert (=> b!4163342 (= e!2584523 (and (inv!60068 (c!712020 (dynLambda!19497 (toChars!10055 (transformation!7532 r!4097)) (dynLambda!19493 (toValue!10196 (transformation!7532 r!4097)) (seqFromList!5565 (_1!24879 lt!1483215)))))) tp!1271043))))

(declare-fun result!303692 () Bool)

(assert (=> tb!249347 (= result!303692 (and (inv!60069 (dynLambda!19497 (toChars!10055 (transformation!7532 r!4097)) (dynLambda!19493 (toValue!10196 (transformation!7532 r!4097)) (seqFromList!5565 (_1!24879 lt!1483215))))) e!2584523))))

(assert (= tb!249347 b!4163342))

(declare-fun m!4755823 () Bool)

(assert (=> b!4163342 m!4755823))

(declare-fun m!4755825 () Bool)

(assert (=> tb!249347 m!4755825))

(assert (=> d!1230631 t!343806))

(declare-fun b_and!324529 () Bool)

(assert (= b_and!324501 (and (=> t!343806 result!303692) b_and!324529)))

(declare-fun t!343808 () Bool)

(declare-fun tb!249349 () Bool)

(assert (=> (and b!4162792 (= (toChars!10055 (transformation!7532 rBis!161)) (toChars!10055 (transformation!7532 r!4097))) t!343808) tb!249349))

(declare-fun result!303694 () Bool)

(assert (= result!303694 result!303692))

(assert (=> d!1230631 t!343808))

(declare-fun b_and!324531 () Bool)

(assert (= b_and!324507 (and (=> t!343808 result!303694) b_and!324531)))

(declare-fun tb!249351 () Bool)

(declare-fun t!343810 () Bool)

(assert (=> (and b!4162787 (= (toChars!10055 (transformation!7532 (h!50971 rules!3820))) (toChars!10055 (transformation!7532 r!4097))) t!343810) tb!249351))

(declare-fun result!303696 () Bool)

(assert (= result!303696 result!303692))

(assert (=> d!1230631 t!343810))

(declare-fun b_and!324533 () Bool)

(assert (= b_and!324509 (and (=> t!343810 result!303696) b_and!324533)))

(declare-fun tb!249353 () Bool)

(declare-fun t!343812 () Bool)

(assert (=> (and b!4163166 (= (toChars!10055 (transformation!7532 (h!50971 (t!343738 rules!3820)))) (toChars!10055 (transformation!7532 r!4097))) t!343812) tb!249353))

(declare-fun result!303698 () Bool)

(assert (= result!303698 result!303692))

(assert (=> d!1230631 t!343812))

(declare-fun b_and!324535 () Bool)

(assert (= b_and!324513 (and (=> t!343812 result!303698) b_and!324535)))

(declare-fun b_lambda!122217 () Bool)

(assert (=> (not b_lambda!122217) (not d!1230631)))

(assert (=> d!1230631 t!343798))

(declare-fun b_and!324537 () Bool)

(assert (= b_and!324521 (and (=> t!343798 result!303684) b_and!324537)))

(assert (=> d!1230631 t!343800))

(declare-fun b_and!324539 () Bool)

(assert (= b_and!324523 (and (=> t!343800 result!303686) b_and!324539)))

(assert (=> d!1230631 t!343802))

(declare-fun b_and!324541 () Bool)

(assert (= b_and!324525 (and (=> t!343802 result!303688) b_and!324541)))

(assert (=> d!1230631 t!343804))

(declare-fun b_and!324543 () Bool)

(assert (= b_and!324527 (and (=> t!343804 result!303690) b_and!324543)))

(assert (=> d!1230631 m!4755455))

(declare-fun m!4755827 () Bool)

(assert (=> d!1230631 m!4755827))

(declare-fun m!4755829 () Bool)

(assert (=> d!1230631 m!4755829))

(declare-fun m!4755831 () Bool)

(assert (=> d!1230631 m!4755831))

(assert (=> d!1230631 m!4755455))

(assert (=> d!1230631 m!4755821))

(assert (=> d!1230631 m!4755821))

(assert (=> d!1230631 m!4755829))

(assert (=> d!1230631 m!4755455))

(assert (=> d!1230631 m!4755809))

(assert (=> b!4162958 d!1230631))

(declare-fun b!4163560 () Bool)

(declare-fun e!2584660 () Bool)

(declare-fun lt!1483527 () tuple2!43490)

(assert (=> b!4163560 (= e!2584660 (>= (size!33467 (_1!24879 lt!1483527)) (size!33467 Nil!45549)))))

(declare-fun b!4163561 () Bool)

(declare-fun e!2584658 () tuple2!43490)

(assert (=> b!4163561 (= e!2584658 (tuple2!43491 Nil!45549 input!3316))))

(declare-fun b!4163562 () Bool)

(declare-fun e!2584659 () tuple2!43490)

(declare-fun lt!1483519 () tuple2!43490)

(assert (=> b!4163562 (= e!2584659 lt!1483519)))

(declare-fun b!4163563 () Bool)

(declare-fun e!2584657 () tuple2!43490)

(declare-fun call!290931 () tuple2!43490)

(assert (=> b!4163563 (= e!2584657 call!290931)))

(declare-fun b!4163564 () Bool)

(declare-fun c!712168 () Bool)

(declare-fun call!290935 () Bool)

(assert (=> b!4163564 (= c!712168 call!290935)))

(declare-fun lt!1483520 () Unit!64639)

(declare-fun lt!1483509 () Unit!64639)

(assert (=> b!4163564 (= lt!1483520 lt!1483509)))

(assert (=> b!4163564 (= input!3316 Nil!45549)))

(declare-fun call!290933 () Unit!64639)

(assert (=> b!4163564 (= lt!1483509 call!290933)))

(declare-fun lt!1483524 () Unit!64639)

(declare-fun lt!1483532 () Unit!64639)

(assert (=> b!4163564 (= lt!1483524 lt!1483532)))

(declare-fun call!290936 () Bool)

(assert (=> b!4163564 call!290936))

(declare-fun call!290938 () Unit!64639)

(assert (=> b!4163564 (= lt!1483532 call!290938)))

(declare-fun e!2584653 () tuple2!43490)

(declare-fun e!2584654 () tuple2!43490)

(assert (=> b!4163564 (= e!2584653 e!2584654)))

(declare-fun bm!290926 () Bool)

(declare-fun call!290932 () C!25064)

(assert (=> bm!290926 (= call!290932 (head!8838 input!3316))))

(declare-fun b!4163565 () Bool)

(assert (=> b!4163565 (= e!2584654 (tuple2!43491 Nil!45549 Nil!45549))))

(declare-fun b!4163566 () Bool)

(assert (=> b!4163566 (= e!2584658 e!2584653)))

(declare-fun c!712169 () Bool)

(assert (=> b!4163566 (= c!712169 (= (size!33467 Nil!45549) (size!33467 input!3316)))))

(declare-fun b!4163567 () Bool)

(assert (=> b!4163567 (= e!2584657 e!2584659)))

(assert (=> b!4163567 (= lt!1483519 call!290931)))

(declare-fun c!712172 () Bool)

(assert (=> b!4163567 (= c!712172 (isEmpty!26968 (_1!24879 lt!1483519)))))

(declare-fun b!4163568 () Bool)

(assert (=> b!4163568 (= e!2584654 (tuple2!43491 Nil!45549 input!3316))))

(declare-fun bm!290927 () Bool)

(declare-fun call!290934 () Regex!12437)

(assert (=> bm!290927 (= call!290934 (derivativeStep!3752 (regex!7532 r!4097) call!290932))))

(declare-fun bm!290928 () Bool)

(assert (=> bm!290928 (= call!290935 (nullable!4360 (regex!7532 r!4097)))))

(declare-fun b!4163569 () Bool)

(declare-fun e!2584656 () Bool)

(assert (=> b!4163569 (= e!2584656 e!2584660)))

(declare-fun res!1705695 () Bool)

(assert (=> b!4163569 (=> res!1705695 e!2584660)))

(assert (=> b!4163569 (= res!1705695 (isEmpty!26968 (_1!24879 lt!1483527)))))

(declare-fun b!4163570 () Bool)

(assert (=> b!4163570 (= e!2584659 (tuple2!43491 Nil!45549 input!3316))))

(declare-fun bm!290929 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!977 (List!45673 List!45673 List!45673) Unit!64639)

(assert (=> bm!290929 (= call!290933 (lemmaIsPrefixSameLengthThenSameList!977 input!3316 Nil!45549 input!3316))))

(declare-fun bm!290930 () Bool)

(assert (=> bm!290930 (= call!290938 (lemmaIsPrefixRefl!2828 input!3316 input!3316))))

(declare-fun lt!1483507 () List!45673)

(declare-fun call!290937 () List!45673)

(declare-fun bm!290931 () Bool)

(assert (=> bm!290931 (= call!290931 (findLongestMatchInner!1559 call!290934 lt!1483507 (+ (size!33467 Nil!45549) 1) call!290937 input!3316 (size!33467 input!3316)))))

(declare-fun b!4163571 () Bool)

(declare-fun e!2584655 () Unit!64639)

(declare-fun Unit!64644 () Unit!64639)

(assert (=> b!4163571 (= e!2584655 Unit!64644)))

(declare-fun lt!1483521 () Unit!64639)

(assert (=> b!4163571 (= lt!1483521 call!290938)))

(assert (=> b!4163571 call!290936))

(declare-fun lt!1483514 () Unit!64639)

(assert (=> b!4163571 (= lt!1483514 lt!1483521)))

(declare-fun lt!1483513 () Unit!64639)

(assert (=> b!4163571 (= lt!1483513 call!290933)))

(assert (=> b!4163571 (= input!3316 Nil!45549)))

(declare-fun lt!1483517 () Unit!64639)

(assert (=> b!4163571 (= lt!1483517 lt!1483513)))

(assert (=> b!4163571 false))

(declare-fun bm!290933 () Bool)

(assert (=> bm!290933 (= call!290937 (tail!6685 input!3316))))

(declare-fun bm!290932 () Bool)

(assert (=> bm!290932 (= call!290936 (isPrefix!4389 input!3316 input!3316))))

(declare-fun d!1230633 () Bool)

(assert (=> d!1230633 e!2584656))

(declare-fun res!1705694 () Bool)

(assert (=> d!1230633 (=> (not res!1705694) (not e!2584656))))

(assert (=> d!1230633 (= res!1705694 (= (++!11658 (_1!24879 lt!1483527) (_2!24879 lt!1483527)) input!3316))))

(assert (=> d!1230633 (= lt!1483527 e!2584658)))

(declare-fun c!712171 () Bool)

(declare-fun lostCause!1039 (Regex!12437) Bool)

(assert (=> d!1230633 (= c!712171 (lostCause!1039 (regex!7532 r!4097)))))

(declare-fun lt!1483510 () Unit!64639)

(declare-fun Unit!64645 () Unit!64639)

(assert (=> d!1230633 (= lt!1483510 Unit!64645)))

(assert (=> d!1230633 (= (getSuffix!2702 input!3316 Nil!45549) input!3316)))

(declare-fun lt!1483518 () Unit!64639)

(declare-fun lt!1483530 () Unit!64639)

(assert (=> d!1230633 (= lt!1483518 lt!1483530)))

(declare-fun lt!1483522 () List!45673)

(assert (=> d!1230633 (= input!3316 lt!1483522)))

(declare-fun lemmaSamePrefixThenSameSuffix!2256 (List!45673 List!45673 List!45673 List!45673 List!45673) Unit!64639)

(assert (=> d!1230633 (= lt!1483530 (lemmaSamePrefixThenSameSuffix!2256 Nil!45549 input!3316 Nil!45549 lt!1483522 input!3316))))

(assert (=> d!1230633 (= lt!1483522 (getSuffix!2702 input!3316 Nil!45549))))

(declare-fun lt!1483531 () Unit!64639)

(declare-fun lt!1483529 () Unit!64639)

(assert (=> d!1230633 (= lt!1483531 lt!1483529)))

(assert (=> d!1230633 (isPrefix!4389 Nil!45549 (++!11658 Nil!45549 input!3316))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2958 (List!45673 List!45673) Unit!64639)

(assert (=> d!1230633 (= lt!1483529 (lemmaConcatTwoListThenFirstIsPrefix!2958 Nil!45549 input!3316))))

(assert (=> d!1230633 (validRegex!5570 (regex!7532 r!4097))))

(assert (=> d!1230633 (= (findLongestMatchInner!1559 (regex!7532 r!4097) Nil!45549 (size!33467 Nil!45549) input!3316 input!3316 (size!33467 input!3316)) lt!1483527)))

(declare-fun b!4163572 () Bool)

(declare-fun Unit!64646 () Unit!64639)

(assert (=> b!4163572 (= e!2584655 Unit!64646)))

(declare-fun b!4163573 () Bool)

(declare-fun c!712170 () Bool)

(assert (=> b!4163573 (= c!712170 call!290935)))

(declare-fun lt!1483508 () Unit!64639)

(declare-fun lt!1483525 () Unit!64639)

(assert (=> b!4163573 (= lt!1483508 lt!1483525)))

(declare-fun lt!1483526 () C!25064)

(declare-fun lt!1483511 () List!45673)

(assert (=> b!4163573 (= (++!11658 (++!11658 Nil!45549 (Cons!45549 lt!1483526 Nil!45549)) lt!1483511) input!3316)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1283 (List!45673 C!25064 List!45673 List!45673) Unit!64639)

(assert (=> b!4163573 (= lt!1483525 (lemmaMoveElementToOtherListKeepsConcatEq!1283 Nil!45549 lt!1483526 lt!1483511 input!3316))))

(assert (=> b!4163573 (= lt!1483511 (tail!6685 input!3316))))

(assert (=> b!4163573 (= lt!1483526 (head!8838 input!3316))))

(declare-fun lt!1483528 () Unit!64639)

(declare-fun lt!1483533 () Unit!64639)

(assert (=> b!4163573 (= lt!1483528 lt!1483533)))

(assert (=> b!4163573 (isPrefix!4389 (++!11658 Nil!45549 (Cons!45549 (head!8838 (getSuffix!2702 input!3316 Nil!45549)) Nil!45549)) input!3316)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!665 (List!45673 List!45673) Unit!64639)

(assert (=> b!4163573 (= lt!1483533 (lemmaAddHeadSuffixToPrefixStillPrefix!665 Nil!45549 input!3316))))

(declare-fun lt!1483512 () Unit!64639)

(declare-fun lt!1483515 () Unit!64639)

(assert (=> b!4163573 (= lt!1483512 lt!1483515)))

(assert (=> b!4163573 (= lt!1483515 (lemmaAddHeadSuffixToPrefixStillPrefix!665 Nil!45549 input!3316))))

(assert (=> b!4163573 (= lt!1483507 (++!11658 Nil!45549 (Cons!45549 (head!8838 input!3316) Nil!45549)))))

(declare-fun lt!1483534 () Unit!64639)

(assert (=> b!4163573 (= lt!1483534 e!2584655)))

(declare-fun c!712173 () Bool)

(assert (=> b!4163573 (= c!712173 (= (size!33467 Nil!45549) (size!33467 input!3316)))))

(declare-fun lt!1483523 () Unit!64639)

(declare-fun lt!1483516 () Unit!64639)

(assert (=> b!4163573 (= lt!1483523 lt!1483516)))

(assert (=> b!4163573 (<= (size!33467 Nil!45549) (size!33467 input!3316))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!473 (List!45673 List!45673) Unit!64639)

(assert (=> b!4163573 (= lt!1483516 (lemmaIsPrefixThenSmallerEqSize!473 Nil!45549 input!3316))))

(assert (=> b!4163573 (= e!2584653 e!2584657)))

(assert (= (and d!1230633 c!712171) b!4163561))

(assert (= (and d!1230633 (not c!712171)) b!4163566))

(assert (= (and b!4163566 c!712169) b!4163564))

(assert (= (and b!4163566 (not c!712169)) b!4163573))

(assert (= (and b!4163564 c!712168) b!4163565))

(assert (= (and b!4163564 (not c!712168)) b!4163568))

(assert (= (and b!4163573 c!712173) b!4163571))

(assert (= (and b!4163573 (not c!712173)) b!4163572))

(assert (= (and b!4163573 c!712170) b!4163567))

(assert (= (and b!4163573 (not c!712170)) b!4163563))

(assert (= (and b!4163567 c!712172) b!4163570))

(assert (= (and b!4163567 (not c!712172)) b!4163562))

(assert (= (or b!4163567 b!4163563) bm!290926))

(assert (= (or b!4163567 b!4163563) bm!290933))

(assert (= (or b!4163567 b!4163563) bm!290927))

(assert (= (or b!4163567 b!4163563) bm!290931))

(assert (= (or b!4163564 b!4163571) bm!290932))

(assert (= (or b!4163564 b!4163571) bm!290929))

(assert (= (or b!4163564 b!4163571) bm!290930))

(assert (= (or b!4163564 b!4163573) bm!290928))

(assert (= (and d!1230633 res!1705694) b!4163569))

(assert (= (and b!4163569 (not res!1705695)) b!4163560))

(declare-fun m!4756031 () Bool)

(assert (=> b!4163567 m!4756031))

(assert (=> bm!290926 m!4755351))

(declare-fun m!4756033 () Bool)

(assert (=> bm!290927 m!4756033))

(assert (=> bm!290928 m!4755335))

(declare-fun m!4756035 () Bool)

(assert (=> d!1230633 m!4756035))

(declare-fun m!4756037 () Bool)

(assert (=> d!1230633 m!4756037))

(declare-fun m!4756039 () Bool)

(assert (=> d!1230633 m!4756039))

(assert (=> d!1230633 m!4755337))

(declare-fun m!4756041 () Bool)

(assert (=> d!1230633 m!4756041))

(declare-fun m!4756043 () Bool)

(assert (=> d!1230633 m!4756043))

(declare-fun m!4756045 () Bool)

(assert (=> d!1230633 m!4756045))

(assert (=> d!1230633 m!4756035))

(declare-fun m!4756047 () Bool)

(assert (=> d!1230633 m!4756047))

(declare-fun m!4756049 () Bool)

(assert (=> bm!290929 m!4756049))

(declare-fun m!4756051 () Bool)

(assert (=> b!4163569 m!4756051))

(assert (=> bm!290931 m!4755353))

(declare-fun m!4756053 () Bool)

(assert (=> bm!290931 m!4756053))

(declare-fun m!4756055 () Bool)

(assert (=> b!4163560 m!4756055))

(assert (=> b!4163560 m!4755447))

(assert (=> bm!290933 m!4755347))

(assert (=> bm!290930 m!4755307))

(assert (=> bm!290932 m!4755297))

(declare-fun m!4756057 () Bool)

(assert (=> b!4163573 m!4756057))

(assert (=> b!4163573 m!4756037))

(declare-fun m!4756059 () Bool)

(assert (=> b!4163573 m!4756059))

(assert (=> b!4163573 m!4755353))

(declare-fun m!4756061 () Bool)

(assert (=> b!4163573 m!4756061))

(assert (=> b!4163573 m!4755347))

(assert (=> b!4163573 m!4756037))

(declare-fun m!4756063 () Bool)

(assert (=> b!4163573 m!4756063))

(declare-fun m!4756065 () Bool)

(assert (=> b!4163573 m!4756065))

(declare-fun m!4756067 () Bool)

(assert (=> b!4163573 m!4756067))

(assert (=> b!4163573 m!4755447))

(assert (=> b!4163573 m!4756067))

(declare-fun m!4756073 () Bool)

(assert (=> b!4163573 m!4756073))

(declare-fun m!4756075 () Bool)

(assert (=> b!4163573 m!4756075))

(assert (=> b!4163573 m!4756059))

(declare-fun m!4756077 () Bool)

(assert (=> b!4163573 m!4756077))

(assert (=> b!4163573 m!4755351))

(assert (=> b!4162958 d!1230633))

(declare-fun d!1230709 () Bool)

(declare-fun lt!1483535 () Int)

(assert (=> d!1230709 (>= lt!1483535 0)))

(declare-fun e!2584668 () Int)

(assert (=> d!1230709 (= lt!1483535 e!2584668)))

(declare-fun c!712174 () Bool)

(assert (=> d!1230709 (= c!712174 ((_ is Nil!45549) Nil!45549))))

(assert (=> d!1230709 (= (size!33467 Nil!45549) lt!1483535)))

(declare-fun b!4163586 () Bool)

(assert (=> b!4163586 (= e!2584668 0)))

(declare-fun b!4163587 () Bool)

(assert (=> b!4163587 (= e!2584668 (+ 1 (size!33467 (t!343736 Nil!45549))))))

(assert (= (and d!1230709 c!712174) b!4163586))

(assert (= (and d!1230709 (not c!712174)) b!4163587))

(declare-fun m!4756079 () Bool)

(assert (=> b!4163587 m!4756079))

(assert (=> b!4162958 d!1230709))

(assert (=> b!4163136 d!1230589))

(assert (=> b!4163136 d!1230415))

(assert (=> b!4162842 d!1230541))

(declare-fun d!1230711 () Bool)

(assert (=> d!1230711 (= (isEmpty!26968 (tail!6685 p!2942)) ((_ is Nil!45549) (tail!6685 p!2942)))))

(assert (=> b!4162844 d!1230711))

(assert (=> b!4162844 d!1230569))

(declare-fun d!1230713 () Bool)

(declare-fun lt!1483536 () Int)

(assert (=> d!1230713 (>= lt!1483536 0)))

(declare-fun e!2584671 () Int)

(assert (=> d!1230713 (= lt!1483536 e!2584671)))

(declare-fun c!712175 () Bool)

(assert (=> d!1230713 (= c!712175 ((_ is Nil!45549) (_2!24877 (get!14811 lt!1483212))))))

(assert (=> d!1230713 (= (size!33467 (_2!24877 (get!14811 lt!1483212))) lt!1483536)))

(declare-fun b!4163596 () Bool)

(assert (=> b!4163596 (= e!2584671 0)))

(declare-fun b!4163597 () Bool)

(assert (=> b!4163597 (= e!2584671 (+ 1 (size!33467 (t!343736 (_2!24877 (get!14811 lt!1483212))))))))

(assert (= (and d!1230713 c!712175) b!4163596))

(assert (= (and d!1230713 (not c!712175)) b!4163597))

(declare-fun m!4756081 () Bool)

(assert (=> b!4163597 m!4756081))

(assert (=> b!4162962 d!1230713))

(assert (=> b!4162962 d!1230557))

(assert (=> b!4162962 d!1230589))

(declare-fun bs!595745 () Bool)

(declare-fun d!1230715 () Bool)

(assert (= bs!595745 (and d!1230715 d!1230441)))

(declare-fun lambda!129091 () Int)

(assert (=> bs!595745 (= lambda!129091 lambda!129060)))

(declare-fun bs!595746 () Bool)

(assert (= bs!595746 (and d!1230715 d!1230591)))

(assert (=> bs!595746 (= (and (= (toChars!10055 (transformation!7532 r!4097)) (toChars!10055 (transformation!7532 (h!50971 rules!3820)))) (= (toValue!10196 (transformation!7532 r!4097)) (toValue!10196 (transformation!7532 (h!50971 rules!3820))))) (= lambda!129091 lambda!129078))))

(declare-fun bs!595747 () Bool)

(assert (= bs!595747 (and d!1230715 d!1230631)))

(assert (=> bs!595747 (= lambda!129091 lambda!129083)))

(assert (=> d!1230715 true))

(assert (=> d!1230715 (< (dynLambda!19496 order!23985 (toChars!10055 (transformation!7532 r!4097))) (dynLambda!19495 order!23983 lambda!129091))))

(assert (=> d!1230715 true))

(assert (=> d!1230715 (< (dynLambda!19494 order!23981 (toValue!10196 (transformation!7532 r!4097))) (dynLambda!19495 order!23983 lambda!129091))))

(assert (=> d!1230715 (= (semiInverseModEq!3269 (toChars!10055 (transformation!7532 r!4097)) (toValue!10196 (transformation!7532 r!4097))) (Forall!1552 lambda!129091))))

(declare-fun bs!595748 () Bool)

(assert (= bs!595748 d!1230715))

(declare-fun m!4756083 () Bool)

(assert (=> bs!595748 m!4756083))

(assert (=> d!1230413 d!1230715))

(declare-fun b!4163631 () Bool)

(declare-fun e!2584681 () Bool)

(assert (=> b!4163631 (= e!2584681 (= (head!8838 (tail!6685 p!2942)) (c!712021 (derivativeStep!3752 (regex!7532 r!4097) (head!8838 p!2942)))))))

(declare-fun b!4163632 () Bool)

(declare-fun e!2584682 () Bool)

(assert (=> b!4163632 (= e!2584682 (nullable!4360 (derivativeStep!3752 (regex!7532 r!4097) (head!8838 p!2942))))))

(declare-fun b!4163633 () Bool)

(declare-fun e!2584680 () Bool)

(declare-fun lt!1483537 () Bool)

(assert (=> b!4163633 (= e!2584680 (not lt!1483537))))

(declare-fun b!4163634 () Bool)

(declare-fun res!1705703 () Bool)

(assert (=> b!4163634 (=> (not res!1705703) (not e!2584681))))

(assert (=> b!4163634 (= res!1705703 (isEmpty!26968 (tail!6685 (tail!6685 p!2942))))))

(declare-fun b!4163635 () Bool)

(declare-fun e!2584684 () Bool)

(declare-fun e!2584687 () Bool)

(assert (=> b!4163635 (= e!2584684 e!2584687)))

(declare-fun res!1705700 () Bool)

(assert (=> b!4163635 (=> (not res!1705700) (not e!2584687))))

(assert (=> b!4163635 (= res!1705700 (not lt!1483537))))

(declare-fun b!4163636 () Bool)

(declare-fun e!2584683 () Bool)

(declare-fun call!290939 () Bool)

(assert (=> b!4163636 (= e!2584683 (= lt!1483537 call!290939))))

(declare-fun bm!290934 () Bool)

(assert (=> bm!290934 (= call!290939 (isEmpty!26968 (tail!6685 p!2942)))))

(declare-fun b!4163637 () Bool)

(assert (=> b!4163637 (= e!2584682 (matchR!6182 (derivativeStep!3752 (derivativeStep!3752 (regex!7532 r!4097) (head!8838 p!2942)) (head!8838 (tail!6685 p!2942))) (tail!6685 (tail!6685 p!2942))))))

(declare-fun d!1230717 () Bool)

(assert (=> d!1230717 e!2584683))

(declare-fun c!712176 () Bool)

(assert (=> d!1230717 (= c!712176 ((_ is EmptyExpr!12437) (derivativeStep!3752 (regex!7532 r!4097) (head!8838 p!2942))))))

(assert (=> d!1230717 (= lt!1483537 e!2584682)))

(declare-fun c!712177 () Bool)

(assert (=> d!1230717 (= c!712177 (isEmpty!26968 (tail!6685 p!2942)))))

(assert (=> d!1230717 (validRegex!5570 (derivativeStep!3752 (regex!7532 r!4097) (head!8838 p!2942)))))

(assert (=> d!1230717 (= (matchR!6182 (derivativeStep!3752 (regex!7532 r!4097) (head!8838 p!2942)) (tail!6685 p!2942)) lt!1483537)))

(declare-fun b!4163638 () Bool)

(declare-fun res!1705698 () Bool)

(assert (=> b!4163638 (=> res!1705698 e!2584684)))

(assert (=> b!4163638 (= res!1705698 e!2584681)))

(declare-fun res!1705697 () Bool)

(assert (=> b!4163638 (=> (not res!1705697) (not e!2584681))))

(assert (=> b!4163638 (= res!1705697 lt!1483537)))

(declare-fun b!4163639 () Bool)

(declare-fun e!2584686 () Bool)

(assert (=> b!4163639 (= e!2584687 e!2584686)))

(declare-fun res!1705699 () Bool)

(assert (=> b!4163639 (=> res!1705699 e!2584686)))

(assert (=> b!4163639 (= res!1705699 call!290939)))

(declare-fun b!4163640 () Bool)

(assert (=> b!4163640 (= e!2584683 e!2584680)))

(declare-fun c!712178 () Bool)

(assert (=> b!4163640 (= c!712178 ((_ is EmptyLang!12437) (derivativeStep!3752 (regex!7532 r!4097) (head!8838 p!2942))))))

(declare-fun b!4163641 () Bool)

(assert (=> b!4163641 (= e!2584686 (not (= (head!8838 (tail!6685 p!2942)) (c!712021 (derivativeStep!3752 (regex!7532 r!4097) (head!8838 p!2942))))))))

(declare-fun b!4163642 () Bool)

(declare-fun res!1705696 () Bool)

(assert (=> b!4163642 (=> (not res!1705696) (not e!2584681))))

(assert (=> b!4163642 (= res!1705696 (not call!290939))))

(declare-fun b!4163643 () Bool)

(declare-fun res!1705702 () Bool)

(assert (=> b!4163643 (=> res!1705702 e!2584686)))

(assert (=> b!4163643 (= res!1705702 (not (isEmpty!26968 (tail!6685 (tail!6685 p!2942)))))))

(declare-fun b!4163644 () Bool)

(declare-fun res!1705701 () Bool)

(assert (=> b!4163644 (=> res!1705701 e!2584684)))

(assert (=> b!4163644 (= res!1705701 (not ((_ is ElementMatch!12437) (derivativeStep!3752 (regex!7532 r!4097) (head!8838 p!2942)))))))

(assert (=> b!4163644 (= e!2584680 e!2584684)))

(assert (= (and d!1230717 c!712177) b!4163632))

(assert (= (and d!1230717 (not c!712177)) b!4163637))

(assert (= (and d!1230717 c!712176) b!4163636))

(assert (= (and d!1230717 (not c!712176)) b!4163640))

(assert (= (and b!4163640 c!712178) b!4163633))

(assert (= (and b!4163640 (not c!712178)) b!4163644))

(assert (= (and b!4163644 (not res!1705701)) b!4163638))

(assert (= (and b!4163638 res!1705697) b!4163642))

(assert (= (and b!4163642 res!1705696) b!4163634))

(assert (= (and b!4163634 res!1705703) b!4163631))

(assert (= (and b!4163638 (not res!1705698)) b!4163635))

(assert (= (and b!4163635 res!1705700) b!4163639))

(assert (= (and b!4163639 (not res!1705699)) b!4163643))

(assert (= (and b!4163643 (not res!1705702)) b!4163641))

(assert (= (or b!4163636 b!4163639 b!4163642) bm!290934))

(assert (=> b!4163637 m!4755327))

(assert (=> b!4163637 m!4755725))

(assert (=> b!4163637 m!4755325))

(assert (=> b!4163637 m!4755725))

(declare-fun m!4756085 () Bool)

(assert (=> b!4163637 m!4756085))

(assert (=> b!4163637 m!4755327))

(assert (=> b!4163637 m!4755719))

(assert (=> b!4163637 m!4756085))

(assert (=> b!4163637 m!4755719))

(declare-fun m!4756087 () Bool)

(assert (=> b!4163637 m!4756087))

(assert (=> b!4163643 m!4755327))

(assert (=> b!4163643 m!4755719))

(assert (=> b!4163643 m!4755719))

(declare-fun m!4756089 () Bool)

(assert (=> b!4163643 m!4756089))

(assert (=> b!4163631 m!4755327))

(assert (=> b!4163631 m!4755725))

(assert (=> bm!290934 m!4755327))

(assert (=> bm!290934 m!4755331))

(assert (=> b!4163634 m!4755327))

(assert (=> b!4163634 m!4755719))

(assert (=> b!4163634 m!4755719))

(assert (=> b!4163634 m!4756089))

(assert (=> b!4163641 m!4755327))

(assert (=> b!4163641 m!4755725))

(assert (=> b!4163632 m!4755325))

(declare-fun m!4756091 () Bool)

(assert (=> b!4163632 m!4756091))

(assert (=> d!1230717 m!4755327))

(assert (=> d!1230717 m!4755331))

(assert (=> d!1230717 m!4755325))

(declare-fun m!4756093 () Bool)

(assert (=> d!1230717 m!4756093))

(assert (=> b!4162847 d!1230717))

(declare-fun bm!290943 () Bool)

(declare-fun call!290951 () Regex!12437)

(declare-fun c!712189 () Bool)

(assert (=> bm!290943 (= call!290951 (derivativeStep!3752 (ite c!712189 (regOne!25387 (regex!7532 r!4097)) (regTwo!25386 (regex!7532 r!4097))) (head!8838 p!2942)))))

(declare-fun b!4163693 () Bool)

(declare-fun e!2584712 () Regex!12437)

(assert (=> b!4163693 (= e!2584712 (ite (= (head!8838 p!2942) (c!712021 (regex!7532 r!4097))) EmptyExpr!12437 EmptyLang!12437))))

(declare-fun b!4163694 () Bool)

(declare-fun e!2584709 () Regex!12437)

(assert (=> b!4163694 (= e!2584709 e!2584712)))

(declare-fun c!712193 () Bool)

(assert (=> b!4163694 (= c!712193 ((_ is ElementMatch!12437) (regex!7532 r!4097)))))

(declare-fun b!4163695 () Bool)

(assert (=> b!4163695 (= c!712189 ((_ is Union!12437) (regex!7532 r!4097)))))

(declare-fun e!2584713 () Regex!12437)

(assert (=> b!4163695 (= e!2584712 e!2584713)))

(declare-fun b!4163696 () Bool)

(declare-fun e!2584711 () Regex!12437)

(assert (=> b!4163696 (= e!2584713 e!2584711)))

(declare-fun c!712192 () Bool)

(assert (=> b!4163696 (= c!712192 ((_ is Star!12437) (regex!7532 r!4097)))))

(declare-fun call!290949 () Regex!12437)

(declare-fun bm!290944 () Bool)

(assert (=> bm!290944 (= call!290949 (derivativeStep!3752 (ite c!712189 (regTwo!25387 (regex!7532 r!4097)) (ite c!712192 (reg!12766 (regex!7532 r!4097)) (regOne!25386 (regex!7532 r!4097)))) (head!8838 p!2942)))))

(declare-fun b!4163697 () Bool)

(declare-fun call!290948 () Regex!12437)

(assert (=> b!4163697 (= e!2584711 (Concat!20200 call!290948 (regex!7532 r!4097)))))

(declare-fun b!4163698 () Bool)

(declare-fun e!2584710 () Regex!12437)

(declare-fun call!290950 () Regex!12437)

(assert (=> b!4163698 (= e!2584710 (Union!12437 (Concat!20200 call!290950 (regTwo!25386 (regex!7532 r!4097))) EmptyLang!12437))))

(declare-fun d!1230719 () Bool)

(declare-fun lt!1483540 () Regex!12437)

(assert (=> d!1230719 (validRegex!5570 lt!1483540)))

(assert (=> d!1230719 (= lt!1483540 e!2584709)))

(declare-fun c!712191 () Bool)

(assert (=> d!1230719 (= c!712191 (or ((_ is EmptyExpr!12437) (regex!7532 r!4097)) ((_ is EmptyLang!12437) (regex!7532 r!4097))))))

(assert (=> d!1230719 (validRegex!5570 (regex!7532 r!4097))))

(assert (=> d!1230719 (= (derivativeStep!3752 (regex!7532 r!4097) (head!8838 p!2942)) lt!1483540)))

(declare-fun b!4163699 () Bool)

(assert (=> b!4163699 (= e!2584713 (Union!12437 call!290951 call!290949))))

(declare-fun bm!290945 () Bool)

(assert (=> bm!290945 (= call!290950 call!290948)))

(declare-fun b!4163700 () Bool)

(assert (=> b!4163700 (= e!2584709 EmptyLang!12437)))

(declare-fun b!4163701 () Bool)

(assert (=> b!4163701 (= e!2584710 (Union!12437 (Concat!20200 call!290950 (regTwo!25386 (regex!7532 r!4097))) call!290951))))

(declare-fun b!4163702 () Bool)

(declare-fun c!712190 () Bool)

(assert (=> b!4163702 (= c!712190 (nullable!4360 (regOne!25386 (regex!7532 r!4097))))))

(assert (=> b!4163702 (= e!2584711 e!2584710)))

(declare-fun bm!290946 () Bool)

(assert (=> bm!290946 (= call!290948 call!290949)))

(assert (= (and d!1230719 c!712191) b!4163700))

(assert (= (and d!1230719 (not c!712191)) b!4163694))

(assert (= (and b!4163694 c!712193) b!4163693))

(assert (= (and b!4163694 (not c!712193)) b!4163695))

(assert (= (and b!4163695 c!712189) b!4163699))

(assert (= (and b!4163695 (not c!712189)) b!4163696))

(assert (= (and b!4163696 c!712192) b!4163697))

(assert (= (and b!4163696 (not c!712192)) b!4163702))

(assert (= (and b!4163702 c!712190) b!4163701))

(assert (= (and b!4163702 (not c!712190)) b!4163698))

(assert (= (or b!4163701 b!4163698) bm!290945))

(assert (= (or b!4163697 bm!290945) bm!290946))

(assert (= (or b!4163699 bm!290946) bm!290944))

(assert (= (or b!4163699 b!4163701) bm!290943))

(assert (=> bm!290943 m!4755323))

(declare-fun m!4756101 () Bool)

(assert (=> bm!290943 m!4756101))

(assert (=> bm!290944 m!4755323))

(declare-fun m!4756103 () Bool)

(assert (=> bm!290944 m!4756103))

(declare-fun m!4756105 () Bool)

(assert (=> d!1230719 m!4756105))

(assert (=> d!1230719 m!4755337))

(declare-fun m!4756107 () Bool)

(assert (=> b!4163702 m!4756107))

(assert (=> b!4162847 d!1230719))

(declare-fun d!1230725 () Bool)

(assert (=> d!1230725 (= (head!8838 p!2942) (h!50969 p!2942))))

(assert (=> b!4162847 d!1230725))

(assert (=> b!4162847 d!1230569))

(declare-fun b!4163703 () Bool)

(declare-fun e!2584715 () Bool)

(assert (=> b!4163703 (= e!2584715 (= (head!8838 (_1!24879 (findLongestMatchInner!1559 (regex!7532 r!4097) Nil!45549 (size!33467 Nil!45549) input!3316 input!3316 (size!33467 input!3316)))) (c!712021 (regex!7532 r!4097))))))

(declare-fun b!4163704 () Bool)

(declare-fun e!2584716 () Bool)

(assert (=> b!4163704 (= e!2584716 (nullable!4360 (regex!7532 r!4097)))))

(declare-fun b!4163705 () Bool)

(declare-fun e!2584714 () Bool)

(declare-fun lt!1483541 () Bool)

(assert (=> b!4163705 (= e!2584714 (not lt!1483541))))

(declare-fun b!4163706 () Bool)

(declare-fun res!1705711 () Bool)

(assert (=> b!4163706 (=> (not res!1705711) (not e!2584715))))

(assert (=> b!4163706 (= res!1705711 (isEmpty!26968 (tail!6685 (_1!24879 (findLongestMatchInner!1559 (regex!7532 r!4097) Nil!45549 (size!33467 Nil!45549) input!3316 input!3316 (size!33467 input!3316))))))))

(declare-fun b!4163707 () Bool)

(declare-fun e!2584718 () Bool)

(declare-fun e!2584720 () Bool)

(assert (=> b!4163707 (= e!2584718 e!2584720)))

(declare-fun res!1705708 () Bool)

(assert (=> b!4163707 (=> (not res!1705708) (not e!2584720))))

(assert (=> b!4163707 (= res!1705708 (not lt!1483541))))

(declare-fun b!4163708 () Bool)

(declare-fun e!2584717 () Bool)

(declare-fun call!290952 () Bool)

(assert (=> b!4163708 (= e!2584717 (= lt!1483541 call!290952))))

(declare-fun bm!290947 () Bool)

(assert (=> bm!290947 (= call!290952 (isEmpty!26968 (_1!24879 (findLongestMatchInner!1559 (regex!7532 r!4097) Nil!45549 (size!33467 Nil!45549) input!3316 input!3316 (size!33467 input!3316)))))))

(declare-fun b!4163709 () Bool)

(assert (=> b!4163709 (= e!2584716 (matchR!6182 (derivativeStep!3752 (regex!7532 r!4097) (head!8838 (_1!24879 (findLongestMatchInner!1559 (regex!7532 r!4097) Nil!45549 (size!33467 Nil!45549) input!3316 input!3316 (size!33467 input!3316))))) (tail!6685 (_1!24879 (findLongestMatchInner!1559 (regex!7532 r!4097) Nil!45549 (size!33467 Nil!45549) input!3316 input!3316 (size!33467 input!3316))))))))

(declare-fun d!1230727 () Bool)

(assert (=> d!1230727 e!2584717))

(declare-fun c!712194 () Bool)

(assert (=> d!1230727 (= c!712194 ((_ is EmptyExpr!12437) (regex!7532 r!4097)))))

(assert (=> d!1230727 (= lt!1483541 e!2584716)))

(declare-fun c!712195 () Bool)

(assert (=> d!1230727 (= c!712195 (isEmpty!26968 (_1!24879 (findLongestMatchInner!1559 (regex!7532 r!4097) Nil!45549 (size!33467 Nil!45549) input!3316 input!3316 (size!33467 input!3316)))))))

(assert (=> d!1230727 (validRegex!5570 (regex!7532 r!4097))))

(assert (=> d!1230727 (= (matchR!6182 (regex!7532 r!4097) (_1!24879 (findLongestMatchInner!1559 (regex!7532 r!4097) Nil!45549 (size!33467 Nil!45549) input!3316 input!3316 (size!33467 input!3316)))) lt!1483541)))

(declare-fun b!4163710 () Bool)

(declare-fun res!1705706 () Bool)

(assert (=> b!4163710 (=> res!1705706 e!2584718)))

(assert (=> b!4163710 (= res!1705706 e!2584715)))

(declare-fun res!1705705 () Bool)

(assert (=> b!4163710 (=> (not res!1705705) (not e!2584715))))

(assert (=> b!4163710 (= res!1705705 lt!1483541)))

(declare-fun b!4163711 () Bool)

(declare-fun e!2584719 () Bool)

(assert (=> b!4163711 (= e!2584720 e!2584719)))

(declare-fun res!1705707 () Bool)

(assert (=> b!4163711 (=> res!1705707 e!2584719)))

(assert (=> b!4163711 (= res!1705707 call!290952)))

(declare-fun b!4163712 () Bool)

(assert (=> b!4163712 (= e!2584717 e!2584714)))

(declare-fun c!712196 () Bool)

(assert (=> b!4163712 (= c!712196 ((_ is EmptyLang!12437) (regex!7532 r!4097)))))

(declare-fun b!4163713 () Bool)

(assert (=> b!4163713 (= e!2584719 (not (= (head!8838 (_1!24879 (findLongestMatchInner!1559 (regex!7532 r!4097) Nil!45549 (size!33467 Nil!45549) input!3316 input!3316 (size!33467 input!3316)))) (c!712021 (regex!7532 r!4097)))))))

(declare-fun b!4163714 () Bool)

(declare-fun res!1705704 () Bool)

(assert (=> b!4163714 (=> (not res!1705704) (not e!2584715))))

(assert (=> b!4163714 (= res!1705704 (not call!290952))))

(declare-fun b!4163715 () Bool)

(declare-fun res!1705710 () Bool)

(assert (=> b!4163715 (=> res!1705710 e!2584719)))

(assert (=> b!4163715 (= res!1705710 (not (isEmpty!26968 (tail!6685 (_1!24879 (findLongestMatchInner!1559 (regex!7532 r!4097) Nil!45549 (size!33467 Nil!45549) input!3316 input!3316 (size!33467 input!3316)))))))))

(declare-fun b!4163716 () Bool)

(declare-fun res!1705709 () Bool)

(assert (=> b!4163716 (=> res!1705709 e!2584718)))

(assert (=> b!4163716 (= res!1705709 (not ((_ is ElementMatch!12437) (regex!7532 r!4097))))))

(assert (=> b!4163716 (= e!2584714 e!2584718)))

(assert (= (and d!1230727 c!712195) b!4163704))

(assert (= (and d!1230727 (not c!712195)) b!4163709))

(assert (= (and d!1230727 c!712194) b!4163708))

(assert (= (and d!1230727 (not c!712194)) b!4163712))

(assert (= (and b!4163712 c!712196) b!4163705))

(assert (= (and b!4163712 (not c!712196)) b!4163716))

(assert (= (and b!4163716 (not res!1705709)) b!4163710))

(assert (= (and b!4163710 res!1705705) b!4163714))

(assert (= (and b!4163714 res!1705704) b!4163706))

(assert (= (and b!4163706 res!1705711) b!4163703))

(assert (= (and b!4163710 (not res!1705706)) b!4163707))

(assert (= (and b!4163707 res!1705708) b!4163711))

(assert (= (and b!4163711 (not res!1705707)) b!4163715))

(assert (= (and b!4163715 (not res!1705710)) b!4163713))

(assert (= (or b!4163708 b!4163711 b!4163714) bm!290947))

(declare-fun m!4756109 () Bool)

(assert (=> b!4163709 m!4756109))

(assert (=> b!4163709 m!4756109))

(declare-fun m!4756111 () Bool)

(assert (=> b!4163709 m!4756111))

(declare-fun m!4756113 () Bool)

(assert (=> b!4163709 m!4756113))

(assert (=> b!4163709 m!4756111))

(assert (=> b!4163709 m!4756113))

(declare-fun m!4756115 () Bool)

(assert (=> b!4163709 m!4756115))

(assert (=> b!4163715 m!4756113))

(assert (=> b!4163715 m!4756113))

(declare-fun m!4756117 () Bool)

(assert (=> b!4163715 m!4756117))

(assert (=> b!4163703 m!4756109))

(assert (=> bm!290947 m!4755459))

(assert (=> b!4163706 m!4756113))

(assert (=> b!4163706 m!4756113))

(assert (=> b!4163706 m!4756117))

(assert (=> b!4163713 m!4756109))

(assert (=> b!4163704 m!4755335))

(assert (=> d!1230727 m!4755459))

(assert (=> d!1230727 m!4755337))

(assert (=> b!4162964 d!1230727))

(assert (=> b!4162964 d!1230633))

(assert (=> b!4162964 d!1230709))

(assert (=> b!4162964 d!1230589))

(declare-fun d!1230729 () Bool)

(declare-fun res!1705712 () Bool)

(declare-fun e!2584721 () Bool)

(assert (=> d!1230729 (=> (not res!1705712) (not e!2584721))))

(assert (=> d!1230729 (= res!1705712 (validRegex!5570 (regex!7532 (h!50971 rules!3820))))))

(assert (=> d!1230729 (= (ruleValid!3256 thiss!25889 (h!50971 rules!3820)) e!2584721)))

(declare-fun b!4163717 () Bool)

(declare-fun res!1705713 () Bool)

(assert (=> b!4163717 (=> (not res!1705713) (not e!2584721))))

(assert (=> b!4163717 (= res!1705713 (not (nullable!4360 (regex!7532 (h!50971 rules!3820)))))))

(declare-fun b!4163718 () Bool)

(assert (=> b!4163718 (= e!2584721 (not (= (tag!8396 (h!50971 rules!3820)) (String!52677 ""))))))

(assert (= (and d!1230729 res!1705712) b!4163717))

(assert (= (and b!4163717 res!1705713) b!4163718))

(declare-fun m!4756119 () Bool)

(assert (=> d!1230729 m!4756119))

(declare-fun m!4756121 () Bool)

(assert (=> b!4163717 m!4756121))

(assert (=> b!4163126 d!1230729))

(declare-fun d!1230731 () Bool)

(declare-fun lt!1483542 () Int)

(assert (=> d!1230731 (>= lt!1483542 0)))

(declare-fun e!2584722 () Int)

(assert (=> d!1230731 (= lt!1483542 e!2584722)))

(declare-fun c!712197 () Bool)

(assert (=> d!1230731 (= c!712197 ((_ is Nil!45549) (t!343736 pBis!100)))))

(assert (=> d!1230731 (= (size!33467 (t!343736 pBis!100)) lt!1483542)))

(declare-fun b!4163719 () Bool)

(assert (=> b!4163719 (= e!2584722 0)))

(declare-fun b!4163720 () Bool)

(assert (=> b!4163720 (= e!2584722 (+ 1 (size!33467 (t!343736 (t!343736 pBis!100)))))))

(assert (= (and d!1230731 c!712197) b!4163719))

(assert (= (and d!1230731 (not c!712197)) b!4163720))

(declare-fun m!4756123 () Bool)

(assert (=> b!4163720 m!4756123))

(assert (=> b!4162867 d!1230731))

(declare-fun d!1230733 () Bool)

(declare-fun lt!1483543 () Bool)

(assert (=> d!1230733 (= lt!1483543 (select (content!7082 (t!343738 rules!3820)) rBis!161))))

(declare-fun e!2584723 () Bool)

(assert (=> d!1230733 (= lt!1483543 e!2584723)))

(declare-fun res!1705715 () Bool)

(assert (=> d!1230733 (=> (not res!1705715) (not e!2584723))))

(assert (=> d!1230733 (= res!1705715 ((_ is Cons!45551) (t!343738 rules!3820)))))

(assert (=> d!1230733 (= (contains!9325 (t!343738 rules!3820) rBis!161) lt!1483543)))

(declare-fun b!4163721 () Bool)

(declare-fun e!2584724 () Bool)

(assert (=> b!4163721 (= e!2584723 e!2584724)))

(declare-fun res!1705714 () Bool)

(assert (=> b!4163721 (=> res!1705714 e!2584724)))

(assert (=> b!4163721 (= res!1705714 (= (h!50971 (t!343738 rules!3820)) rBis!161))))

(declare-fun b!4163722 () Bool)

(assert (=> b!4163722 (= e!2584724 (contains!9325 (t!343738 (t!343738 rules!3820)) rBis!161))))

(assert (= (and d!1230733 res!1705715) b!4163721))

(assert (= (and b!4163721 (not res!1705714)) b!4163722))

(declare-fun m!4756125 () Bool)

(assert (=> d!1230733 m!4756125))

(declare-fun m!4756127 () Bool)

(assert (=> d!1230733 m!4756127))

(declare-fun m!4756129 () Bool)

(assert (=> b!4163722 m!4756129))

(assert (=> b!4163131 d!1230733))

(assert (=> b!4162877 d!1230725))

(assert (=> b!4162877 d!1230565))

(assert (=> b!4162851 d!1230725))

(assert (=> b!4162879 d!1230589))

(assert (=> b!4162879 d!1230439))

(declare-fun d!1230735 () Bool)

(declare-fun e!2584727 () Bool)

(assert (=> d!1230735 e!2584727))

(declare-fun res!1705718 () Bool)

(assert (=> d!1230735 (=> res!1705718 e!2584727)))

(declare-fun lt!1483544 () Bool)

(assert (=> d!1230735 (= res!1705718 (not lt!1483544))))

(declare-fun e!2584725 () Bool)

(assert (=> d!1230735 (= lt!1483544 e!2584725)))

(declare-fun res!1705717 () Bool)

(assert (=> d!1230735 (=> res!1705717 e!2584725)))

(assert (=> d!1230735 (= res!1705717 ((_ is Nil!45549) (tail!6685 input!3316)))))

(assert (=> d!1230735 (= (isPrefix!4389 (tail!6685 input!3316) (tail!6685 input!3316)) lt!1483544)))

(declare-fun b!4163725 () Bool)

(declare-fun e!2584726 () Bool)

(assert (=> b!4163725 (= e!2584726 (isPrefix!4389 (tail!6685 (tail!6685 input!3316)) (tail!6685 (tail!6685 input!3316))))))

(declare-fun b!4163724 () Bool)

(declare-fun res!1705719 () Bool)

(assert (=> b!4163724 (=> (not res!1705719) (not e!2584726))))

(assert (=> b!4163724 (= res!1705719 (= (head!8838 (tail!6685 input!3316)) (head!8838 (tail!6685 input!3316))))))

(declare-fun b!4163726 () Bool)

(assert (=> b!4163726 (= e!2584727 (>= (size!33467 (tail!6685 input!3316)) (size!33467 (tail!6685 input!3316))))))

(declare-fun b!4163723 () Bool)

(assert (=> b!4163723 (= e!2584725 e!2584726)))

(declare-fun res!1705716 () Bool)

(assert (=> b!4163723 (=> (not res!1705716) (not e!2584726))))

(assert (=> b!4163723 (= res!1705716 (not ((_ is Nil!45549) (tail!6685 input!3316))))))

(assert (= (and d!1230735 (not res!1705717)) b!4163723))

(assert (= (and b!4163723 res!1705716) b!4163724))

(assert (= (and b!4163724 res!1705719) b!4163725))

(assert (= (and d!1230735 (not res!1705718)) b!4163726))

(assert (=> b!4163725 m!4755347))

(assert (=> b!4163725 m!4755721))

(assert (=> b!4163725 m!4755347))

(assert (=> b!4163725 m!4755721))

(assert (=> b!4163725 m!4755721))

(assert (=> b!4163725 m!4755721))

(declare-fun m!4756131 () Bool)

(assert (=> b!4163725 m!4756131))

(assert (=> b!4163724 m!4755347))

(assert (=> b!4163724 m!4755727))

(assert (=> b!4163724 m!4755347))

(assert (=> b!4163724 m!4755727))

(assert (=> b!4163726 m!4755347))

(assert (=> b!4163726 m!4755729))

(assert (=> b!4163726 m!4755347))

(assert (=> b!4163726 m!4755729))

(assert (=> b!4163120 d!1230735))

(assert (=> b!4163120 d!1230571))

(assert (=> d!1230409 d!1230407))

(declare-fun d!1230737 () Bool)

(assert (=> d!1230737 (ruleValid!3256 thiss!25889 r!4097)))

(assert (=> d!1230737 true))

(declare-fun _$65!1620 () Unit!64639)

(assert (=> d!1230737 (= (choose!25491 thiss!25889 r!4097 rules!3820) _$65!1620)))

(declare-fun bs!595751 () Bool)

(assert (= bs!595751 d!1230737))

(assert (=> bs!595751 m!4755291))

(assert (=> d!1230409 d!1230737))

(assert (=> d!1230409 d!1230419))

(assert (=> d!1230407 d!1230595))

(assert (=> b!4162853 d!1230711))

(assert (=> b!4162853 d!1230569))

(declare-fun bs!595752 () Bool)

(declare-fun d!1230739 () Bool)

(assert (= bs!595752 (and d!1230739 d!1230441)))

(declare-fun lambda!129092 () Int)

(assert (=> bs!595752 (= (and (= (toChars!10055 (transformation!7532 rBis!161)) (toChars!10055 (transformation!7532 r!4097))) (= (toValue!10196 (transformation!7532 rBis!161)) (toValue!10196 (transformation!7532 r!4097)))) (= lambda!129092 lambda!129060))))

(declare-fun bs!595753 () Bool)

(assert (= bs!595753 (and d!1230739 d!1230591)))

(assert (=> bs!595753 (= (and (= (toChars!10055 (transformation!7532 rBis!161)) (toChars!10055 (transformation!7532 (h!50971 rules!3820)))) (= (toValue!10196 (transformation!7532 rBis!161)) (toValue!10196 (transformation!7532 (h!50971 rules!3820))))) (= lambda!129092 lambda!129078))))

(declare-fun bs!595754 () Bool)

(assert (= bs!595754 (and d!1230739 d!1230631)))

(assert (=> bs!595754 (= (and (= (toChars!10055 (transformation!7532 rBis!161)) (toChars!10055 (transformation!7532 r!4097))) (= (toValue!10196 (transformation!7532 rBis!161)) (toValue!10196 (transformation!7532 r!4097)))) (= lambda!129092 lambda!129083))))

(declare-fun bs!595755 () Bool)

(assert (= bs!595755 (and d!1230739 d!1230715)))

(assert (=> bs!595755 (= (and (= (toChars!10055 (transformation!7532 rBis!161)) (toChars!10055 (transformation!7532 r!4097))) (= (toValue!10196 (transformation!7532 rBis!161)) (toValue!10196 (transformation!7532 r!4097)))) (= lambda!129092 lambda!129091))))

(assert (=> d!1230739 true))

(assert (=> d!1230739 (< (dynLambda!19496 order!23985 (toChars!10055 (transformation!7532 rBis!161))) (dynLambda!19495 order!23983 lambda!129092))))

(assert (=> d!1230739 true))

(assert (=> d!1230739 (< (dynLambda!19494 order!23981 (toValue!10196 (transformation!7532 rBis!161))) (dynLambda!19495 order!23983 lambda!129092))))

(assert (=> d!1230739 (= (semiInverseModEq!3269 (toChars!10055 (transformation!7532 rBis!161)) (toValue!10196 (transformation!7532 rBis!161))) (Forall!1552 lambda!129092))))

(declare-fun bs!595756 () Bool)

(assert (= bs!595756 d!1230739))

(declare-fun m!4756133 () Bool)

(assert (=> bs!595756 m!4756133))

(assert (=> d!1230491 d!1230739))

(declare-fun d!1230741 () Bool)

(declare-fun c!712200 () Bool)

(assert (=> d!1230741 (= c!712200 ((_ is Node!13743) (c!712020 (dynLambda!19497 (toChars!10055 (transformation!7532 r!4097)) (dynLambda!19493 (toValue!10196 (transformation!7532 r!4097)) lt!1483152)))))))

(declare-fun e!2584732 () Bool)

(assert (=> d!1230741 (= (inv!60068 (c!712020 (dynLambda!19497 (toChars!10055 (transformation!7532 r!4097)) (dynLambda!19493 (toValue!10196 (transformation!7532 r!4097)) lt!1483152)))) e!2584732)))

(declare-fun b!4163733 () Bool)

(declare-fun inv!60072 (Conc!13743) Bool)

(assert (=> b!4163733 (= e!2584732 (inv!60072 (c!712020 (dynLambda!19497 (toChars!10055 (transformation!7532 r!4097)) (dynLambda!19493 (toValue!10196 (transformation!7532 r!4097)) lt!1483152)))))))

(declare-fun b!4163734 () Bool)

(declare-fun e!2584733 () Bool)

(assert (=> b!4163734 (= e!2584732 e!2584733)))

(declare-fun res!1705722 () Bool)

(assert (=> b!4163734 (= res!1705722 (not ((_ is Leaf!21252) (c!712020 (dynLambda!19497 (toChars!10055 (transformation!7532 r!4097)) (dynLambda!19493 (toValue!10196 (transformation!7532 r!4097)) lt!1483152))))))))

(assert (=> b!4163734 (=> res!1705722 e!2584733)))

(declare-fun b!4163735 () Bool)

(declare-fun inv!60073 (Conc!13743) Bool)

(assert (=> b!4163735 (= e!2584733 (inv!60073 (c!712020 (dynLambda!19497 (toChars!10055 (transformation!7532 r!4097)) (dynLambda!19493 (toValue!10196 (transformation!7532 r!4097)) lt!1483152)))))))

(assert (= (and d!1230741 c!712200) b!4163733))

(assert (= (and d!1230741 (not c!712200)) b!4163734))

(assert (= (and b!4163734 (not res!1705722)) b!4163735))

(declare-fun m!4756135 () Bool)

(assert (=> b!4163733 m!4756135))

(declare-fun m!4756137 () Bool)

(assert (=> b!4163735 m!4756137))

(assert (=> b!4163111 d!1230741))

(assert (=> b!4162957 d!1230557))

(declare-fun d!1230743 () Bool)

(declare-fun lt!1483545 () Int)

(assert (=> d!1230743 (>= lt!1483545 0)))

(declare-fun e!2584734 () Int)

(assert (=> d!1230743 (= lt!1483545 e!2584734)))

(declare-fun c!712201 () Bool)

(assert (=> d!1230743 (= c!712201 ((_ is Nil!45549) (originalCharacters!7936 (_1!24877 (get!14811 lt!1483212)))))))

(assert (=> d!1230743 (= (size!33467 (originalCharacters!7936 (_1!24877 (get!14811 lt!1483212)))) lt!1483545)))

(declare-fun b!4163736 () Bool)

(assert (=> b!4163736 (= e!2584734 0)))

(declare-fun b!4163737 () Bool)

(assert (=> b!4163737 (= e!2584734 (+ 1 (size!33467 (t!343736 (originalCharacters!7936 (_1!24877 (get!14811 lt!1483212)))))))))

(assert (= (and d!1230743 c!712201) b!4163736))

(assert (= (and d!1230743 (not c!712201)) b!4163737))

(declare-fun m!4756139 () Bool)

(assert (=> b!4163737 m!4756139))

(assert (=> b!4162957 d!1230743))

(declare-fun d!1230745 () Bool)

(declare-fun e!2584737 () Bool)

(assert (=> d!1230745 e!2584737))

(declare-fun res!1705725 () Bool)

(assert (=> d!1230745 (=> res!1705725 e!2584737)))

(declare-fun lt!1483546 () Bool)

(assert (=> d!1230745 (= res!1705725 (not lt!1483546))))

(declare-fun e!2584735 () Bool)

(assert (=> d!1230745 (= lt!1483546 e!2584735)))

(declare-fun res!1705724 () Bool)

(assert (=> d!1230745 (=> res!1705724 e!2584735)))

(assert (=> d!1230745 (= res!1705724 ((_ is Nil!45549) (tail!6685 pBis!100)))))

(assert (=> d!1230745 (= (isPrefix!4389 (tail!6685 pBis!100) (tail!6685 input!3316)) lt!1483546)))

(declare-fun b!4163740 () Bool)

(declare-fun e!2584736 () Bool)

(assert (=> b!4163740 (= e!2584736 (isPrefix!4389 (tail!6685 (tail!6685 pBis!100)) (tail!6685 (tail!6685 input!3316))))))

(declare-fun b!4163739 () Bool)

(declare-fun res!1705726 () Bool)

(assert (=> b!4163739 (=> (not res!1705726) (not e!2584736))))

(assert (=> b!4163739 (= res!1705726 (= (head!8838 (tail!6685 pBis!100)) (head!8838 (tail!6685 input!3316))))))

(declare-fun b!4163741 () Bool)

(assert (=> b!4163741 (= e!2584737 (>= (size!33467 (tail!6685 input!3316)) (size!33467 (tail!6685 pBis!100))))))

(declare-fun b!4163738 () Bool)

(assert (=> b!4163738 (= e!2584735 e!2584736)))

(declare-fun res!1705723 () Bool)

(assert (=> b!4163738 (=> (not res!1705723) (not e!2584736))))

(assert (=> b!4163738 (= res!1705723 (not ((_ is Nil!45549) (tail!6685 input!3316))))))

(assert (= (and d!1230745 (not res!1705724)) b!4163738))

(assert (= (and b!4163738 res!1705723) b!4163739))

(assert (= (and b!4163739 res!1705726) b!4163740))

(assert (= (and d!1230745 (not res!1705725)) b!4163741))

(assert (=> b!4163740 m!4755585))

(declare-fun m!4756141 () Bool)

(assert (=> b!4163740 m!4756141))

(assert (=> b!4163740 m!4755347))

(assert (=> b!4163740 m!4755721))

(assert (=> b!4163740 m!4756141))

(assert (=> b!4163740 m!4755721))

(declare-fun m!4756143 () Bool)

(assert (=> b!4163740 m!4756143))

(assert (=> b!4163739 m!4755585))

(declare-fun m!4756145 () Bool)

(assert (=> b!4163739 m!4756145))

(assert (=> b!4163739 m!4755347))

(assert (=> b!4163739 m!4755727))

(assert (=> b!4163741 m!4755347))

(assert (=> b!4163741 m!4755729))

(assert (=> b!4163741 m!4755585))

(declare-fun m!4756147 () Bool)

(assert (=> b!4163741 m!4756147))

(assert (=> b!4163135 d!1230745))

(declare-fun d!1230747 () Bool)

(assert (=> d!1230747 (= (tail!6685 pBis!100) (t!343736 pBis!100))))

(assert (=> b!4163135 d!1230747))

(assert (=> b!4163135 d!1230571))

(declare-fun d!1230749 () Bool)

(declare-fun c!712204 () Bool)

(assert (=> d!1230749 (= c!712204 ((_ is Nil!45551) rules!3820))))

(declare-fun e!2584740 () (InoxSet Rule!14864))

(assert (=> d!1230749 (= (content!7082 rules!3820) e!2584740)))

(declare-fun b!4163746 () Bool)

(assert (=> b!4163746 (= e!2584740 ((as const (Array Rule!14864 Bool)) false))))

(declare-fun b!4163747 () Bool)

(assert (=> b!4163747 (= e!2584740 ((_ map or) (store ((as const (Array Rule!14864 Bool)) false) (h!50971 rules!3820) true) (content!7082 (t!343738 rules!3820))))))

(assert (= (and d!1230749 c!712204) b!4163746))

(assert (= (and d!1230749 (not c!712204)) b!4163747))

(declare-fun m!4756149 () Bool)

(assert (=> b!4163747 m!4756149))

(assert (=> b!4163747 m!4756125))

(assert (=> d!1230419 d!1230749))

(assert (=> b!4162841 d!1230725))

(declare-fun d!1230751 () Bool)

(assert (=> d!1230751 (= (inv!60069 (dynLambda!19497 (toChars!10055 (transformation!7532 r!4097)) (dynLambda!19493 (toValue!10196 (transformation!7532 r!4097)) lt!1483152))) (isBalanced!3723 (c!712020 (dynLambda!19497 (toChars!10055 (transformation!7532 r!4097)) (dynLambda!19493 (toValue!10196 (transformation!7532 r!4097)) lt!1483152)))))))

(declare-fun bs!595757 () Bool)

(assert (= bs!595757 d!1230751))

(declare-fun m!4756151 () Bool)

(assert (=> bs!595757 m!4756151))

(assert (=> tb!249305 d!1230751))

(assert (=> b!4162959 d!1230557))

(declare-fun d!1230753 () Bool)

(declare-fun lt!1483547 () Bool)

(assert (=> d!1230753 (= lt!1483547 (select (content!7082 (t!343738 rules!3820)) r!4097))))

(declare-fun e!2584741 () Bool)

(assert (=> d!1230753 (= lt!1483547 e!2584741)))

(declare-fun res!1705728 () Bool)

(assert (=> d!1230753 (=> (not res!1705728) (not e!2584741))))

(assert (=> d!1230753 (= res!1705728 ((_ is Cons!45551) (t!343738 rules!3820)))))

(assert (=> d!1230753 (= (contains!9325 (t!343738 rules!3820) r!4097) lt!1483547)))

(declare-fun b!4163748 () Bool)

(declare-fun e!2584742 () Bool)

(assert (=> b!4163748 (= e!2584741 e!2584742)))

(declare-fun res!1705727 () Bool)

(assert (=> b!4163748 (=> res!1705727 e!2584742)))

(assert (=> b!4163748 (= res!1705727 (= (h!50971 (t!343738 rules!3820)) r!4097))))

(declare-fun b!4163749 () Bool)

(assert (=> b!4163749 (= e!2584742 (contains!9325 (t!343738 (t!343738 rules!3820)) r!4097))))

(assert (= (and d!1230753 res!1705728) b!4163748))

(assert (= (and b!4163748 (not res!1705727)) b!4163749))

(assert (=> d!1230753 m!4756125))

(declare-fun m!4756153 () Bool)

(assert (=> d!1230753 m!4756153))

(declare-fun m!4756155 () Bool)

(assert (=> b!4163749 m!4756155))

(assert (=> b!4162885 d!1230753))

(declare-fun b!4163752 () Bool)

(declare-fun res!1705730 () Bool)

(declare-fun e!2584744 () Bool)

(assert (=> b!4163752 (=> (not res!1705730) (not e!2584744))))

(declare-fun lt!1483548 () List!45673)

(assert (=> b!4163752 (= res!1705730 (= (size!33467 lt!1483548) (+ (size!33467 (list!16503 (charsOf!5021 (_1!24877 (get!14811 lt!1483212))))) (size!33467 (_2!24877 (get!14811 lt!1483212))))))))

(declare-fun b!4163753 () Bool)

(assert (=> b!4163753 (= e!2584744 (or (not (= (_2!24877 (get!14811 lt!1483212)) Nil!45549)) (= lt!1483548 (list!16503 (charsOf!5021 (_1!24877 (get!14811 lt!1483212)))))))))

(declare-fun b!4163750 () Bool)

(declare-fun e!2584743 () List!45673)

(assert (=> b!4163750 (= e!2584743 (_2!24877 (get!14811 lt!1483212)))))

(declare-fun b!4163751 () Bool)

(assert (=> b!4163751 (= e!2584743 (Cons!45549 (h!50969 (list!16503 (charsOf!5021 (_1!24877 (get!14811 lt!1483212))))) (++!11658 (t!343736 (list!16503 (charsOf!5021 (_1!24877 (get!14811 lt!1483212))))) (_2!24877 (get!14811 lt!1483212)))))))

(declare-fun d!1230755 () Bool)

(assert (=> d!1230755 e!2584744))

(declare-fun res!1705729 () Bool)

(assert (=> d!1230755 (=> (not res!1705729) (not e!2584744))))

(assert (=> d!1230755 (= res!1705729 (= (content!7084 lt!1483548) ((_ map or) (content!7084 (list!16503 (charsOf!5021 (_1!24877 (get!14811 lt!1483212))))) (content!7084 (_2!24877 (get!14811 lt!1483212))))))))

(assert (=> d!1230755 (= lt!1483548 e!2584743)))

(declare-fun c!712205 () Bool)

(assert (=> d!1230755 (= c!712205 ((_ is Nil!45549) (list!16503 (charsOf!5021 (_1!24877 (get!14811 lt!1483212))))))))

(assert (=> d!1230755 (= (++!11658 (list!16503 (charsOf!5021 (_1!24877 (get!14811 lt!1483212)))) (_2!24877 (get!14811 lt!1483212))) lt!1483548)))

(assert (= (and d!1230755 c!712205) b!4163750))

(assert (= (and d!1230755 (not c!712205)) b!4163751))

(assert (= (and d!1230755 res!1705729) b!4163752))

(assert (= (and b!4163752 res!1705730) b!4163753))

(declare-fun m!4756157 () Bool)

(assert (=> b!4163752 m!4756157))

(assert (=> b!4163752 m!4755435))

(declare-fun m!4756159 () Bool)

(assert (=> b!4163752 m!4756159))

(assert (=> b!4163752 m!4755453))

(declare-fun m!4756161 () Bool)

(assert (=> b!4163751 m!4756161))

(declare-fun m!4756163 () Bool)

(assert (=> d!1230755 m!4756163))

(assert (=> d!1230755 m!4755435))

(declare-fun m!4756165 () Bool)

(assert (=> d!1230755 m!4756165))

(declare-fun m!4756167 () Bool)

(assert (=> d!1230755 m!4756167))

(assert (=> b!4162961 d!1230755))

(assert (=> b!4162961 d!1230551))

(assert (=> b!4162961 d!1230553))

(assert (=> b!4162961 d!1230557))

(assert (=> d!1230487 d!1230749))

(declare-fun d!1230757 () Bool)

(declare-fun res!1705735 () Bool)

(declare-fun e!2584749 () Bool)

(assert (=> d!1230757 (=> res!1705735 e!2584749)))

(assert (=> d!1230757 (= res!1705735 ((_ is Nil!45551) rules!3820))))

(assert (=> d!1230757 (= (noDuplicateTag!3098 thiss!25889 rules!3820 Nil!45552) e!2584749)))

(declare-fun b!4163758 () Bool)

(declare-fun e!2584750 () Bool)

(assert (=> b!4163758 (= e!2584749 e!2584750)))

(declare-fun res!1705736 () Bool)

(assert (=> b!4163758 (=> (not res!1705736) (not e!2584750))))

(declare-fun contains!9327 (List!45676 String!52676) Bool)

(assert (=> b!4163758 (= res!1705736 (not (contains!9327 Nil!45552 (tag!8396 (h!50971 rules!3820)))))))

(declare-fun b!4163759 () Bool)

(assert (=> b!4163759 (= e!2584750 (noDuplicateTag!3098 thiss!25889 (t!343738 rules!3820) (Cons!45552 (tag!8396 (h!50971 rules!3820)) Nil!45552)))))

(assert (= (and d!1230757 (not res!1705735)) b!4163758))

(assert (= (and b!4163758 res!1705736) b!4163759))

(declare-fun m!4756169 () Bool)

(assert (=> b!4163758 m!4756169))

(declare-fun m!4756171 () Bool)

(assert (=> b!4163759 m!4756171))

(assert (=> b!4162812 d!1230757))

(assert (=> bm!290848 d!1230593))

(declare-fun bs!595758 () Bool)

(declare-fun d!1230759 () Bool)

(assert (= bs!595758 (and d!1230759 d!1230531)))

(declare-fun lambda!129093 () Int)

(assert (=> bs!595758 (= (= (toValue!10196 (transformation!7532 (h!50971 rules!3820))) (toValue!10196 (transformation!7532 r!4097))) (= lambda!129093 lambda!129073))))

(declare-fun bs!595759 () Bool)

(assert (= bs!595759 (and d!1230759 d!1230619)))

(assert (=> bs!595759 (= (= (toValue!10196 (transformation!7532 (h!50971 rules!3820))) (toValue!10196 (transformation!7532 rBis!161))) (= lambda!129093 lambda!129082))))

(assert (=> d!1230759 true))

(assert (=> d!1230759 (< (dynLambda!19494 order!23981 (toValue!10196 (transformation!7532 (h!50971 rules!3820)))) (dynLambda!19499 order!23989 lambda!129093))))

(assert (=> d!1230759 (= (equivClasses!3168 (toChars!10055 (transformation!7532 (h!50971 rules!3820))) (toValue!10196 (transformation!7532 (h!50971 rules!3820)))) (Forall2!1151 lambda!129093))))

(declare-fun bs!595760 () Bool)

(assert (= bs!595760 d!1230759))

(declare-fun m!4756173 () Bool)

(assert (=> bs!595760 m!4756173))

(assert (=> b!4162809 d!1230759))

(assert (=> b!4162963 d!1230557))

(declare-fun d!1230761 () Bool)

(assert (=> d!1230761 (= (apply!10513 (transformation!7532 (rule!10582 (_1!24877 (get!14811 lt!1483212)))) (seqFromList!5565 (originalCharacters!7936 (_1!24877 (get!14811 lt!1483212))))) (dynLambda!19493 (toValue!10196 (transformation!7532 (rule!10582 (_1!24877 (get!14811 lt!1483212))))) (seqFromList!5565 (originalCharacters!7936 (_1!24877 (get!14811 lt!1483212))))))))

(declare-fun b_lambda!122239 () Bool)

(assert (=> (not b_lambda!122239) (not d!1230761)))

(declare-fun tb!249383 () Bool)

(declare-fun t!343842 () Bool)

(assert (=> (and b!4162806 (= (toValue!10196 (transformation!7532 r!4097)) (toValue!10196 (transformation!7532 (rule!10582 (_1!24877 (get!14811 lt!1483212)))))) t!343842) tb!249383))

(declare-fun result!303730 () Bool)

(assert (=> tb!249383 (= result!303730 (inv!21 (dynLambda!19493 (toValue!10196 (transformation!7532 (rule!10582 (_1!24877 (get!14811 lt!1483212))))) (seqFromList!5565 (originalCharacters!7936 (_1!24877 (get!14811 lt!1483212)))))))))

(declare-fun m!4756175 () Bool)

(assert (=> tb!249383 m!4756175))

(assert (=> d!1230761 t!343842))

(declare-fun b_and!324585 () Bool)

(assert (= b_and!324537 (and (=> t!343842 result!303730) b_and!324585)))

(declare-fun tb!249385 () Bool)

(declare-fun t!343844 () Bool)

(assert (=> (and b!4162792 (= (toValue!10196 (transformation!7532 rBis!161)) (toValue!10196 (transformation!7532 (rule!10582 (_1!24877 (get!14811 lt!1483212)))))) t!343844) tb!249385))

(declare-fun result!303732 () Bool)

(assert (= result!303732 result!303730))

(assert (=> d!1230761 t!343844))

(declare-fun b_and!324587 () Bool)

(assert (= b_and!324539 (and (=> t!343844 result!303732) b_and!324587)))

(declare-fun tb!249387 () Bool)

(declare-fun t!343846 () Bool)

(assert (=> (and b!4162787 (= (toValue!10196 (transformation!7532 (h!50971 rules!3820))) (toValue!10196 (transformation!7532 (rule!10582 (_1!24877 (get!14811 lt!1483212)))))) t!343846) tb!249387))

(declare-fun result!303734 () Bool)

(assert (= result!303734 result!303730))

(assert (=> d!1230761 t!343846))

(declare-fun b_and!324589 () Bool)

(assert (= b_and!324541 (and (=> t!343846 result!303734) b_and!324589)))

(declare-fun tb!249389 () Bool)

(declare-fun t!343848 () Bool)

(assert (=> (and b!4163166 (= (toValue!10196 (transformation!7532 (h!50971 (t!343738 rules!3820)))) (toValue!10196 (transformation!7532 (rule!10582 (_1!24877 (get!14811 lt!1483212)))))) t!343848) tb!249389))

(declare-fun result!303736 () Bool)

(assert (= result!303736 result!303730))

(assert (=> d!1230761 t!343848))

(declare-fun b_and!324591 () Bool)

(assert (= b_and!324543 (and (=> t!343848 result!303736) b_and!324591)))

(assert (=> d!1230761 m!4755429))

(declare-fun m!4756177 () Bool)

(assert (=> d!1230761 m!4756177))

(assert (=> b!4162963 d!1230761))

(declare-fun d!1230763 () Bool)

(assert (=> d!1230763 (= (seqFromList!5565 (originalCharacters!7936 (_1!24877 (get!14811 lt!1483212)))) (fromListB!2555 (originalCharacters!7936 (_1!24877 (get!14811 lt!1483212)))))))

(declare-fun bs!595761 () Bool)

(assert (= bs!595761 d!1230763))

(declare-fun m!4756179 () Bool)

(assert (=> bs!595761 m!4756179))

(assert (=> b!4162963 d!1230763))

(declare-fun e!2584752 () Bool)

(assert (=> b!4163169 (= tp!1271030 e!2584752)))

(declare-fun b!4163761 () Bool)

(declare-fun tp!1271143 () Bool)

(declare-fun tp!1271141 () Bool)

(assert (=> b!4163761 (= e!2584752 (and tp!1271143 tp!1271141))))

(declare-fun b!4163762 () Bool)

(declare-fun tp!1271142 () Bool)

(assert (=> b!4163762 (= e!2584752 tp!1271142)))

(declare-fun b!4163763 () Bool)

(declare-fun tp!1271145 () Bool)

(declare-fun tp!1271144 () Bool)

(assert (=> b!4163763 (= e!2584752 (and tp!1271145 tp!1271144))))

(declare-fun b!4163760 () Bool)

(assert (=> b!4163760 (= e!2584752 tp_is_empty!21837)))

(assert (= (and b!4163169 ((_ is ElementMatch!12437) (reg!12766 (regex!7532 rBis!161)))) b!4163760))

(assert (= (and b!4163169 ((_ is Concat!20200) (reg!12766 (regex!7532 rBis!161)))) b!4163761))

(assert (= (and b!4163169 ((_ is Star!12437) (reg!12766 (regex!7532 rBis!161)))) b!4163762))

(assert (= (and b!4163169 ((_ is Union!12437) (reg!12766 (regex!7532 rBis!161)))) b!4163763))

(declare-fun tp!1271154 () Bool)

(declare-fun b!4163772 () Bool)

(declare-fun e!2584758 () Bool)

(declare-fun tp!1271153 () Bool)

(assert (=> b!4163772 (= e!2584758 (and (inv!60068 (left!33963 (c!712020 (dynLambda!19497 (toChars!10055 (transformation!7532 r!4097)) (dynLambda!19493 (toValue!10196 (transformation!7532 r!4097)) lt!1483152))))) tp!1271154 (inv!60068 (right!34293 (c!712020 (dynLambda!19497 (toChars!10055 (transformation!7532 r!4097)) (dynLambda!19493 (toValue!10196 (transformation!7532 r!4097)) lt!1483152))))) tp!1271153))))

(declare-fun b!4163774 () Bool)

(declare-fun e!2584757 () Bool)

(declare-fun tp!1271152 () Bool)

(assert (=> b!4163774 (= e!2584757 tp!1271152)))

(declare-fun b!4163773 () Bool)

(declare-fun inv!60074 (IArray!27491) Bool)

(assert (=> b!4163773 (= e!2584758 (and (inv!60074 (xs!17049 (c!712020 (dynLambda!19497 (toChars!10055 (transformation!7532 r!4097)) (dynLambda!19493 (toValue!10196 (transformation!7532 r!4097)) lt!1483152))))) e!2584757))))

(assert (=> b!4163111 (= tp!1270998 (and (inv!60068 (c!712020 (dynLambda!19497 (toChars!10055 (transformation!7532 r!4097)) (dynLambda!19493 (toValue!10196 (transformation!7532 r!4097)) lt!1483152)))) e!2584758))))

(assert (= (and b!4163111 ((_ is Node!13743) (c!712020 (dynLambda!19497 (toChars!10055 (transformation!7532 r!4097)) (dynLambda!19493 (toValue!10196 (transformation!7532 r!4097)) lt!1483152))))) b!4163772))

(assert (= b!4163773 b!4163774))

(assert (= (and b!4163111 ((_ is Leaf!21252) (c!712020 (dynLambda!19497 (toChars!10055 (transformation!7532 r!4097)) (dynLambda!19493 (toValue!10196 (transformation!7532 r!4097)) lt!1483152))))) b!4163773))

(declare-fun m!4756181 () Bool)

(assert (=> b!4163772 m!4756181))

(declare-fun m!4756183 () Bool)

(assert (=> b!4163772 m!4756183))

(declare-fun m!4756185 () Bool)

(assert (=> b!4163773 m!4756185))

(assert (=> b!4163111 m!4755549))

(declare-fun e!2584759 () Bool)

(assert (=> b!4163170 (= tp!1271033 e!2584759)))

(declare-fun b!4163776 () Bool)

(declare-fun tp!1271157 () Bool)

(declare-fun tp!1271155 () Bool)

(assert (=> b!4163776 (= e!2584759 (and tp!1271157 tp!1271155))))

(declare-fun b!4163777 () Bool)

(declare-fun tp!1271156 () Bool)

(assert (=> b!4163777 (= e!2584759 tp!1271156)))

(declare-fun b!4163778 () Bool)

(declare-fun tp!1271159 () Bool)

(declare-fun tp!1271158 () Bool)

(assert (=> b!4163778 (= e!2584759 (and tp!1271159 tp!1271158))))

(declare-fun b!4163775 () Bool)

(assert (=> b!4163775 (= e!2584759 tp_is_empty!21837)))

(assert (= (and b!4163170 ((_ is ElementMatch!12437) (regOne!25387 (regex!7532 rBis!161)))) b!4163775))

(assert (= (and b!4163170 ((_ is Concat!20200) (regOne!25387 (regex!7532 rBis!161)))) b!4163776))

(assert (= (and b!4163170 ((_ is Star!12437) (regOne!25387 (regex!7532 rBis!161)))) b!4163777))

(assert (= (and b!4163170 ((_ is Union!12437) (regOne!25387 (regex!7532 rBis!161)))) b!4163778))

(declare-fun e!2584760 () Bool)

(assert (=> b!4163170 (= tp!1271032 e!2584760)))

(declare-fun b!4163780 () Bool)

(declare-fun tp!1271162 () Bool)

(declare-fun tp!1271160 () Bool)

(assert (=> b!4163780 (= e!2584760 (and tp!1271162 tp!1271160))))

(declare-fun b!4163781 () Bool)

(declare-fun tp!1271161 () Bool)

(assert (=> b!4163781 (= e!2584760 tp!1271161)))

(declare-fun b!4163782 () Bool)

(declare-fun tp!1271164 () Bool)

(declare-fun tp!1271163 () Bool)

(assert (=> b!4163782 (= e!2584760 (and tp!1271164 tp!1271163))))

(declare-fun b!4163779 () Bool)

(assert (=> b!4163779 (= e!2584760 tp_is_empty!21837)))

(assert (= (and b!4163170 ((_ is ElementMatch!12437) (regTwo!25387 (regex!7532 rBis!161)))) b!4163779))

(assert (= (and b!4163170 ((_ is Concat!20200) (regTwo!25387 (regex!7532 rBis!161)))) b!4163780))

(assert (= (and b!4163170 ((_ is Star!12437) (regTwo!25387 (regex!7532 rBis!161)))) b!4163781))

(assert (= (and b!4163170 ((_ is Union!12437) (regTwo!25387 (regex!7532 rBis!161)))) b!4163782))

(declare-fun e!2584761 () Bool)

(assert (=> b!4163148 (= tp!1271011 e!2584761)))

(declare-fun b!4163784 () Bool)

(declare-fun tp!1271167 () Bool)

(declare-fun tp!1271165 () Bool)

(assert (=> b!4163784 (= e!2584761 (and tp!1271167 tp!1271165))))

(declare-fun b!4163785 () Bool)

(declare-fun tp!1271166 () Bool)

(assert (=> b!4163785 (= e!2584761 tp!1271166)))

(declare-fun b!4163786 () Bool)

(declare-fun tp!1271169 () Bool)

(declare-fun tp!1271168 () Bool)

(assert (=> b!4163786 (= e!2584761 (and tp!1271169 tp!1271168))))

(declare-fun b!4163783 () Bool)

(assert (=> b!4163783 (= e!2584761 tp_is_empty!21837)))

(assert (= (and b!4163148 ((_ is ElementMatch!12437) (regOne!25386 (regex!7532 (h!50971 rules!3820))))) b!4163783))

(assert (= (and b!4163148 ((_ is Concat!20200) (regOne!25386 (regex!7532 (h!50971 rules!3820))))) b!4163784))

(assert (= (and b!4163148 ((_ is Star!12437) (regOne!25386 (regex!7532 (h!50971 rules!3820))))) b!4163785))

(assert (= (and b!4163148 ((_ is Union!12437) (regOne!25386 (regex!7532 (h!50971 rules!3820))))) b!4163786))

(declare-fun e!2584762 () Bool)

(assert (=> b!4163148 (= tp!1271009 e!2584762)))

(declare-fun b!4163788 () Bool)

(declare-fun tp!1271172 () Bool)

(declare-fun tp!1271170 () Bool)

(assert (=> b!4163788 (= e!2584762 (and tp!1271172 tp!1271170))))

(declare-fun b!4163789 () Bool)

(declare-fun tp!1271171 () Bool)

(assert (=> b!4163789 (= e!2584762 tp!1271171)))

(declare-fun b!4163790 () Bool)

(declare-fun tp!1271174 () Bool)

(declare-fun tp!1271173 () Bool)

(assert (=> b!4163790 (= e!2584762 (and tp!1271174 tp!1271173))))

(declare-fun b!4163787 () Bool)

(assert (=> b!4163787 (= e!2584762 tp_is_empty!21837)))

(assert (= (and b!4163148 ((_ is ElementMatch!12437) (regTwo!25386 (regex!7532 (h!50971 rules!3820))))) b!4163787))

(assert (= (and b!4163148 ((_ is Concat!20200) (regTwo!25386 (regex!7532 (h!50971 rules!3820))))) b!4163788))

(assert (= (and b!4163148 ((_ is Star!12437) (regTwo!25386 (regex!7532 (h!50971 rules!3820))))) b!4163789))

(assert (= (and b!4163148 ((_ is Union!12437) (regTwo!25386 (regex!7532 (h!50971 rules!3820))))) b!4163790))

(declare-fun b!4163793 () Bool)

(declare-fun b_free!120071 () Bool)

(declare-fun b_next!120775 () Bool)

(assert (=> b!4163793 (= b_free!120071 (not b_next!120775))))

(declare-fun t!343850 () Bool)

(declare-fun tb!249391 () Bool)

(assert (=> (and b!4163793 (= (toValue!10196 (transformation!7532 (h!50971 (t!343738 (t!343738 rules!3820))))) (toValue!10196 (transformation!7532 r!4097))) t!343850) tb!249391))

(declare-fun result!303740 () Bool)

(assert (= result!303740 result!303684))

(assert (=> d!1230627 t!343850))

(declare-fun t!343852 () Bool)

(declare-fun tb!249393 () Bool)

(assert (=> (and b!4163793 (= (toValue!10196 (transformation!7532 (h!50971 (t!343738 (t!343738 rules!3820))))) (toValue!10196 (transformation!7532 (rule!10582 (_1!24877 (get!14811 lt!1483212)))))) t!343852) tb!249393))

(declare-fun result!303742 () Bool)

(assert (= result!303742 result!303730))

(assert (=> d!1230761 t!343852))

(declare-fun t!343854 () Bool)

(declare-fun tb!249395 () Bool)

(assert (=> (and b!4163793 (= (toValue!10196 (transformation!7532 (h!50971 (t!343738 (t!343738 rules!3820))))) (toValue!10196 (transformation!7532 r!4097))) t!343854) tb!249395))

(declare-fun result!303744 () Bool)

(assert (= result!303744 result!303616))

(assert (=> d!1230441 t!343854))

(assert (=> d!1230631 t!343850))

(assert (=> d!1230437 t!343854))

(declare-fun b_and!324593 () Bool)

(declare-fun tp!1271177 () Bool)

(assert (=> b!4163793 (= tp!1271177 (and (=> t!343854 result!303744) (=> t!343852 result!303742) (=> t!343850 result!303740) b_and!324593))))

(declare-fun b_free!120073 () Bool)

(declare-fun b_next!120777 () Bool)

(assert (=> b!4163793 (= b_free!120073 (not b_next!120777))))

(declare-fun t!343856 () Bool)

(declare-fun tb!249397 () Bool)

(assert (=> (and b!4163793 (= (toChars!10055 (transformation!7532 (h!50971 (t!343738 (t!343738 rules!3820))))) (toChars!10055 (transformation!7532 r!4097))) t!343856) tb!249397))

(declare-fun result!303746 () Bool)

(assert (= result!303746 result!303642))

(assert (=> d!1230441 t!343856))

(declare-fun tb!249399 () Bool)

(declare-fun t!343858 () Bool)

(assert (=> (and b!4163793 (= (toChars!10055 (transformation!7532 (h!50971 (t!343738 (t!343738 rules!3820))))) (toChars!10055 (transformation!7532 (rule!10582 (_1!24877 (get!14811 lt!1483212)))))) t!343858) tb!249399))

(declare-fun result!303748 () Bool)

(assert (= result!303748 result!303670))

(assert (=> d!1230553 t!343858))

(declare-fun t!343860 () Bool)

(declare-fun tb!249401 () Bool)

(assert (=> (and b!4163793 (= (toChars!10055 (transformation!7532 (h!50971 (t!343738 (t!343738 rules!3820))))) (toChars!10055 (transformation!7532 r!4097))) t!343860) tb!249401))

(declare-fun result!303750 () Bool)

(assert (= result!303750 result!303692))

(assert (=> d!1230631 t!343860))

(declare-fun tp!1271175 () Bool)

(declare-fun b_and!324595 () Bool)

(assert (=> b!4163793 (= tp!1271175 (and (=> t!343856 result!303746) (=> t!343858 result!303748) (=> t!343860 result!303750) b_and!324595))))

(declare-fun e!2584765 () Bool)

(assert (=> b!4163793 (= e!2584765 (and tp!1271177 tp!1271175))))

(declare-fun b!4163792 () Bool)

(declare-fun e!2584763 () Bool)

(declare-fun tp!1271178 () Bool)

(assert (=> b!4163792 (= e!2584763 (and tp!1271178 (inv!60063 (tag!8396 (h!50971 (t!343738 (t!343738 rules!3820))))) (inv!60065 (transformation!7532 (h!50971 (t!343738 (t!343738 rules!3820))))) e!2584765))))

(declare-fun b!4163791 () Bool)

(declare-fun e!2584764 () Bool)

(declare-fun tp!1271176 () Bool)

(assert (=> b!4163791 (= e!2584764 (and e!2584763 tp!1271176))))

(assert (=> b!4163164 (= tp!1271026 e!2584764)))

(assert (= b!4163792 b!4163793))

(assert (= b!4163791 b!4163792))

(assert (= (and b!4163164 ((_ is Cons!45551) (t!343738 (t!343738 rules!3820)))) b!4163791))

(declare-fun m!4756187 () Bool)

(assert (=> b!4163792 m!4756187))

(declare-fun m!4756189 () Bool)

(assert (=> b!4163792 m!4756189))

(declare-fun e!2584767 () Bool)

(assert (=> b!4163173 (= tp!1271037 e!2584767)))

(declare-fun b!4163795 () Bool)

(declare-fun tp!1271181 () Bool)

(declare-fun tp!1271179 () Bool)

(assert (=> b!4163795 (= e!2584767 (and tp!1271181 tp!1271179))))

(declare-fun b!4163796 () Bool)

(declare-fun tp!1271180 () Bool)

(assert (=> b!4163796 (= e!2584767 tp!1271180)))

(declare-fun b!4163797 () Bool)

(declare-fun tp!1271183 () Bool)

(declare-fun tp!1271182 () Bool)

(assert (=> b!4163797 (= e!2584767 (and tp!1271183 tp!1271182))))

(declare-fun b!4163794 () Bool)

(assert (=> b!4163794 (= e!2584767 tp_is_empty!21837)))

(assert (= (and b!4163173 ((_ is ElementMatch!12437) (regOne!25386 (regex!7532 r!4097)))) b!4163794))

(assert (= (and b!4163173 ((_ is Concat!20200) (regOne!25386 (regex!7532 r!4097)))) b!4163795))

(assert (= (and b!4163173 ((_ is Star!12437) (regOne!25386 (regex!7532 r!4097)))) b!4163796))

(assert (= (and b!4163173 ((_ is Union!12437) (regOne!25386 (regex!7532 r!4097)))) b!4163797))

(declare-fun e!2584768 () Bool)

(assert (=> b!4163173 (= tp!1271035 e!2584768)))

(declare-fun b!4163799 () Bool)

(declare-fun tp!1271186 () Bool)

(declare-fun tp!1271184 () Bool)

(assert (=> b!4163799 (= e!2584768 (and tp!1271186 tp!1271184))))

(declare-fun b!4163800 () Bool)

(declare-fun tp!1271185 () Bool)

(assert (=> b!4163800 (= e!2584768 tp!1271185)))

(declare-fun b!4163801 () Bool)

(declare-fun tp!1271188 () Bool)

(declare-fun tp!1271187 () Bool)

(assert (=> b!4163801 (= e!2584768 (and tp!1271188 tp!1271187))))

(declare-fun b!4163798 () Bool)

(assert (=> b!4163798 (= e!2584768 tp_is_empty!21837)))

(assert (= (and b!4163173 ((_ is ElementMatch!12437) (regTwo!25386 (regex!7532 r!4097)))) b!4163798))

(assert (= (and b!4163173 ((_ is Concat!20200) (regTwo!25386 (regex!7532 r!4097)))) b!4163799))

(assert (= (and b!4163173 ((_ is Star!12437) (regTwo!25386 (regex!7532 r!4097)))) b!4163800))

(assert (= (and b!4163173 ((_ is Union!12437) (regTwo!25386 (regex!7532 r!4097)))) b!4163801))

(declare-fun e!2584769 () Bool)

(assert (=> b!4163174 (= tp!1271036 e!2584769)))

(declare-fun b!4163803 () Bool)

(declare-fun tp!1271191 () Bool)

(declare-fun tp!1271189 () Bool)

(assert (=> b!4163803 (= e!2584769 (and tp!1271191 tp!1271189))))

(declare-fun b!4163804 () Bool)

(declare-fun tp!1271190 () Bool)

(assert (=> b!4163804 (= e!2584769 tp!1271190)))

(declare-fun b!4163805 () Bool)

(declare-fun tp!1271193 () Bool)

(declare-fun tp!1271192 () Bool)

(assert (=> b!4163805 (= e!2584769 (and tp!1271193 tp!1271192))))

(declare-fun b!4163802 () Bool)

(assert (=> b!4163802 (= e!2584769 tp_is_empty!21837)))

(assert (= (and b!4163174 ((_ is ElementMatch!12437) (reg!12766 (regex!7532 r!4097)))) b!4163802))

(assert (= (and b!4163174 ((_ is Concat!20200) (reg!12766 (regex!7532 r!4097)))) b!4163803))

(assert (= (and b!4163174 ((_ is Star!12437) (reg!12766 (regex!7532 r!4097)))) b!4163804))

(assert (= (and b!4163174 ((_ is Union!12437) (reg!12766 (regex!7532 r!4097)))) b!4163805))

(declare-fun e!2584770 () Bool)

(assert (=> b!4163149 (= tp!1271010 e!2584770)))

(declare-fun b!4163807 () Bool)

(declare-fun tp!1271196 () Bool)

(declare-fun tp!1271194 () Bool)

(assert (=> b!4163807 (= e!2584770 (and tp!1271196 tp!1271194))))

(declare-fun b!4163808 () Bool)

(declare-fun tp!1271195 () Bool)

(assert (=> b!4163808 (= e!2584770 tp!1271195)))

(declare-fun b!4163809 () Bool)

(declare-fun tp!1271198 () Bool)

(declare-fun tp!1271197 () Bool)

(assert (=> b!4163809 (= e!2584770 (and tp!1271198 tp!1271197))))

(declare-fun b!4163806 () Bool)

(assert (=> b!4163806 (= e!2584770 tp_is_empty!21837)))

(assert (= (and b!4163149 ((_ is ElementMatch!12437) (reg!12766 (regex!7532 (h!50971 rules!3820))))) b!4163806))

(assert (= (and b!4163149 ((_ is Concat!20200) (reg!12766 (regex!7532 (h!50971 rules!3820))))) b!4163807))

(assert (= (and b!4163149 ((_ is Star!12437) (reg!12766 (regex!7532 (h!50971 rules!3820))))) b!4163808))

(assert (= (and b!4163149 ((_ is Union!12437) (reg!12766 (regex!7532 (h!50971 rules!3820))))) b!4163809))

(declare-fun e!2584771 () Bool)

(assert (=> b!4163150 (= tp!1271013 e!2584771)))

(declare-fun b!4163811 () Bool)

(declare-fun tp!1271201 () Bool)

(declare-fun tp!1271199 () Bool)

(assert (=> b!4163811 (= e!2584771 (and tp!1271201 tp!1271199))))

(declare-fun b!4163812 () Bool)

(declare-fun tp!1271200 () Bool)

(assert (=> b!4163812 (= e!2584771 tp!1271200)))

(declare-fun b!4163813 () Bool)

(declare-fun tp!1271203 () Bool)

(declare-fun tp!1271202 () Bool)

(assert (=> b!4163813 (= e!2584771 (and tp!1271203 tp!1271202))))

(declare-fun b!4163810 () Bool)

(assert (=> b!4163810 (= e!2584771 tp_is_empty!21837)))

(assert (= (and b!4163150 ((_ is ElementMatch!12437) (regOne!25387 (regex!7532 (h!50971 rules!3820))))) b!4163810))

(assert (= (and b!4163150 ((_ is Concat!20200) (regOne!25387 (regex!7532 (h!50971 rules!3820))))) b!4163811))

(assert (= (and b!4163150 ((_ is Star!12437) (regOne!25387 (regex!7532 (h!50971 rules!3820))))) b!4163812))

(assert (= (and b!4163150 ((_ is Union!12437) (regOne!25387 (regex!7532 (h!50971 rules!3820))))) b!4163813))

(declare-fun e!2584772 () Bool)

(assert (=> b!4163150 (= tp!1271012 e!2584772)))

(declare-fun b!4163815 () Bool)

(declare-fun tp!1271206 () Bool)

(declare-fun tp!1271204 () Bool)

(assert (=> b!4163815 (= e!2584772 (and tp!1271206 tp!1271204))))

(declare-fun b!4163816 () Bool)

(declare-fun tp!1271205 () Bool)

(assert (=> b!4163816 (= e!2584772 tp!1271205)))

(declare-fun b!4163817 () Bool)

(declare-fun tp!1271208 () Bool)

(declare-fun tp!1271207 () Bool)

(assert (=> b!4163817 (= e!2584772 (and tp!1271208 tp!1271207))))

(declare-fun b!4163814 () Bool)

(assert (=> b!4163814 (= e!2584772 tp_is_empty!21837)))

(assert (= (and b!4163150 ((_ is ElementMatch!12437) (regTwo!25387 (regex!7532 (h!50971 rules!3820))))) b!4163814))

(assert (= (and b!4163150 ((_ is Concat!20200) (regTwo!25387 (regex!7532 (h!50971 rules!3820))))) b!4163815))

(assert (= (and b!4163150 ((_ is Star!12437) (regTwo!25387 (regex!7532 (h!50971 rules!3820))))) b!4163816))

(assert (= (and b!4163150 ((_ is Union!12437) (regTwo!25387 (regex!7532 (h!50971 rules!3820))))) b!4163817))

(declare-fun b!4163818 () Bool)

(declare-fun e!2584773 () Bool)

(declare-fun tp!1271209 () Bool)

(assert (=> b!4163818 (= e!2584773 (and tp_is_empty!21837 tp!1271209))))

(assert (=> b!4163171 (= tp!1271034 e!2584773)))

(assert (= (and b!4163171 ((_ is Cons!45549) (t!343736 (t!343736 p!2942)))) b!4163818))

(declare-fun e!2584774 () Bool)

(assert (=> b!4163165 (= tp!1271028 e!2584774)))

(declare-fun b!4163820 () Bool)

(declare-fun tp!1271212 () Bool)

(declare-fun tp!1271210 () Bool)

(assert (=> b!4163820 (= e!2584774 (and tp!1271212 tp!1271210))))

(declare-fun b!4163821 () Bool)

(declare-fun tp!1271211 () Bool)

(assert (=> b!4163821 (= e!2584774 tp!1271211)))

(declare-fun b!4163822 () Bool)

(declare-fun tp!1271214 () Bool)

(declare-fun tp!1271213 () Bool)

(assert (=> b!4163822 (= e!2584774 (and tp!1271214 tp!1271213))))

(declare-fun b!4163819 () Bool)

(assert (=> b!4163819 (= e!2584774 tp_is_empty!21837)))

(assert (= (and b!4163165 ((_ is ElementMatch!12437) (regex!7532 (h!50971 (t!343738 rules!3820))))) b!4163819))

(assert (= (and b!4163165 ((_ is Concat!20200) (regex!7532 (h!50971 (t!343738 rules!3820))))) b!4163820))

(assert (= (and b!4163165 ((_ is Star!12437) (regex!7532 (h!50971 (t!343738 rules!3820))))) b!4163821))

(assert (= (and b!4163165 ((_ is Union!12437) (regex!7532 (h!50971 (t!343738 rules!3820))))) b!4163822))

(declare-fun e!2584775 () Bool)

(assert (=> b!4163175 (= tp!1271039 e!2584775)))

(declare-fun b!4163824 () Bool)

(declare-fun tp!1271217 () Bool)

(declare-fun tp!1271215 () Bool)

(assert (=> b!4163824 (= e!2584775 (and tp!1271217 tp!1271215))))

(declare-fun b!4163825 () Bool)

(declare-fun tp!1271216 () Bool)

(assert (=> b!4163825 (= e!2584775 tp!1271216)))

(declare-fun b!4163826 () Bool)

(declare-fun tp!1271219 () Bool)

(declare-fun tp!1271218 () Bool)

(assert (=> b!4163826 (= e!2584775 (and tp!1271219 tp!1271218))))

(declare-fun b!4163823 () Bool)

(assert (=> b!4163823 (= e!2584775 tp_is_empty!21837)))

(assert (= (and b!4163175 ((_ is ElementMatch!12437) (regOne!25387 (regex!7532 r!4097)))) b!4163823))

(assert (= (and b!4163175 ((_ is Concat!20200) (regOne!25387 (regex!7532 r!4097)))) b!4163824))

(assert (= (and b!4163175 ((_ is Star!12437) (regOne!25387 (regex!7532 r!4097)))) b!4163825))

(assert (= (and b!4163175 ((_ is Union!12437) (regOne!25387 (regex!7532 r!4097)))) b!4163826))

(declare-fun e!2584776 () Bool)

(assert (=> b!4163175 (= tp!1271038 e!2584776)))

(declare-fun b!4163828 () Bool)

(declare-fun tp!1271222 () Bool)

(declare-fun tp!1271220 () Bool)

(assert (=> b!4163828 (= e!2584776 (and tp!1271222 tp!1271220))))

(declare-fun b!4163829 () Bool)

(declare-fun tp!1271221 () Bool)

(assert (=> b!4163829 (= e!2584776 tp!1271221)))

(declare-fun b!4163830 () Bool)

(declare-fun tp!1271224 () Bool)

(declare-fun tp!1271223 () Bool)

(assert (=> b!4163830 (= e!2584776 (and tp!1271224 tp!1271223))))

(declare-fun b!4163827 () Bool)

(assert (=> b!4163827 (= e!2584776 tp_is_empty!21837)))

(assert (= (and b!4163175 ((_ is ElementMatch!12437) (regTwo!25387 (regex!7532 r!4097)))) b!4163827))

(assert (= (and b!4163175 ((_ is Concat!20200) (regTwo!25387 (regex!7532 r!4097)))) b!4163828))

(assert (= (and b!4163175 ((_ is Star!12437) (regTwo!25387 (regex!7532 r!4097)))) b!4163829))

(assert (= (and b!4163175 ((_ is Union!12437) (regTwo!25387 (regex!7532 r!4097)))) b!4163830))

(declare-fun b!4163831 () Bool)

(declare-fun e!2584777 () Bool)

(declare-fun tp!1271225 () Bool)

(assert (=> b!4163831 (= e!2584777 (and tp_is_empty!21837 tp!1271225))))

(assert (=> b!4163176 (= tp!1271040 e!2584777)))

(assert (= (and b!4163176 ((_ is Cons!45549) (t!343736 (t!343736 input!3316)))) b!4163831))

(declare-fun b!4163832 () Bool)

(declare-fun e!2584778 () Bool)

(declare-fun tp!1271226 () Bool)

(assert (=> b!4163832 (= e!2584778 (and tp_is_empty!21837 tp!1271226))))

(assert (=> b!4163155 (= tp!1271016 e!2584778)))

(assert (= (and b!4163155 ((_ is Cons!45549) (t!343736 (t!343736 pBis!100)))) b!4163832))

(declare-fun e!2584779 () Bool)

(assert (=> b!4163168 (= tp!1271031 e!2584779)))

(declare-fun b!4163834 () Bool)

(declare-fun tp!1271229 () Bool)

(declare-fun tp!1271227 () Bool)

(assert (=> b!4163834 (= e!2584779 (and tp!1271229 tp!1271227))))

(declare-fun b!4163835 () Bool)

(declare-fun tp!1271228 () Bool)

(assert (=> b!4163835 (= e!2584779 tp!1271228)))

(declare-fun b!4163836 () Bool)

(declare-fun tp!1271231 () Bool)

(declare-fun tp!1271230 () Bool)

(assert (=> b!4163836 (= e!2584779 (and tp!1271231 tp!1271230))))

(declare-fun b!4163833 () Bool)

(assert (=> b!4163833 (= e!2584779 tp_is_empty!21837)))

(assert (= (and b!4163168 ((_ is ElementMatch!12437) (regOne!25386 (regex!7532 rBis!161)))) b!4163833))

(assert (= (and b!4163168 ((_ is Concat!20200) (regOne!25386 (regex!7532 rBis!161)))) b!4163834))

(assert (= (and b!4163168 ((_ is Star!12437) (regOne!25386 (regex!7532 rBis!161)))) b!4163835))

(assert (= (and b!4163168 ((_ is Union!12437) (regOne!25386 (regex!7532 rBis!161)))) b!4163836))

(declare-fun e!2584780 () Bool)

(assert (=> b!4163168 (= tp!1271029 e!2584780)))

(declare-fun b!4163838 () Bool)

(declare-fun tp!1271234 () Bool)

(declare-fun tp!1271232 () Bool)

(assert (=> b!4163838 (= e!2584780 (and tp!1271234 tp!1271232))))

(declare-fun b!4163839 () Bool)

(declare-fun tp!1271233 () Bool)

(assert (=> b!4163839 (= e!2584780 tp!1271233)))

(declare-fun b!4163840 () Bool)

(declare-fun tp!1271236 () Bool)

(declare-fun tp!1271235 () Bool)

(assert (=> b!4163840 (= e!2584780 (and tp!1271236 tp!1271235))))

(declare-fun b!4163837 () Bool)

(assert (=> b!4163837 (= e!2584780 tp_is_empty!21837)))

(assert (= (and b!4163168 ((_ is ElementMatch!12437) (regTwo!25386 (regex!7532 rBis!161)))) b!4163837))

(assert (= (and b!4163168 ((_ is Concat!20200) (regTwo!25386 (regex!7532 rBis!161)))) b!4163838))

(assert (= (and b!4163168 ((_ is Star!12437) (regTwo!25386 (regex!7532 rBis!161)))) b!4163839))

(assert (= (and b!4163168 ((_ is Union!12437) (regTwo!25386 (regex!7532 rBis!161)))) b!4163840))

(declare-fun b_lambda!122241 () Bool)

(assert (= b_lambda!122209 (or d!1230485 b_lambda!122241)))

(declare-fun bs!595762 () Bool)

(declare-fun d!1230765 () Bool)

(assert (= bs!595762 (and d!1230765 d!1230485)))

(assert (=> bs!595762 (= (dynLambda!19501 lambda!129063 (h!50971 rules!3820)) (ruleValid!3256 thiss!25889 (h!50971 rules!3820)))))

(assert (=> bs!595762 m!4755573))

(assert (=> b!4163307 d!1230765))

(declare-fun b_lambda!122243 () Bool)

(assert (= b_lambda!122215 (or (and b!4162792 b_free!120053 (= (toChars!10055 (transformation!7532 rBis!161)) (toChars!10055 (transformation!7532 r!4097)))) (and b!4163166 b_free!120065 (= (toChars!10055 (transformation!7532 (h!50971 (t!343738 rules!3820)))) (toChars!10055 (transformation!7532 r!4097)))) (and b!4163793 b_free!120073 (= (toChars!10055 (transformation!7532 (h!50971 (t!343738 (t!343738 rules!3820))))) (toChars!10055 (transformation!7532 r!4097)))) (and b!4162787 b_free!120057 (= (toChars!10055 (transformation!7532 (h!50971 rules!3820))) (toChars!10055 (transformation!7532 r!4097)))) (and b!4162806 b_free!120049) b_lambda!122243)))

(declare-fun b_lambda!122245 () Bool)

(assert (= b_lambda!122217 (or (and b!4162787 b_free!120055 (= (toValue!10196 (transformation!7532 (h!50971 rules!3820))) (toValue!10196 (transformation!7532 r!4097)))) (and b!4163793 b_free!120071 (= (toValue!10196 (transformation!7532 (h!50971 (t!343738 (t!343738 rules!3820))))) (toValue!10196 (transformation!7532 r!4097)))) (and b!4162806 b_free!120047) (and b!4162792 b_free!120051 (= (toValue!10196 (transformation!7532 rBis!161)) (toValue!10196 (transformation!7532 r!4097)))) (and b!4163166 b_free!120063 (= (toValue!10196 (transformation!7532 (h!50971 (t!343738 rules!3820)))) (toValue!10196 (transformation!7532 r!4097)))) b_lambda!122245)))

(declare-fun b_lambda!122247 () Bool)

(assert (= b_lambda!122213 (or (and b!4162787 b_free!120055 (= (toValue!10196 (transformation!7532 (h!50971 rules!3820))) (toValue!10196 (transformation!7532 r!4097)))) (and b!4163793 b_free!120071 (= (toValue!10196 (transformation!7532 (h!50971 (t!343738 (t!343738 rules!3820))))) (toValue!10196 (transformation!7532 r!4097)))) (and b!4162806 b_free!120047) (and b!4162792 b_free!120051 (= (toValue!10196 (transformation!7532 rBis!161)) (toValue!10196 (transformation!7532 r!4097)))) (and b!4163166 b_free!120063 (= (toValue!10196 (transformation!7532 (h!50971 (t!343738 rules!3820)))) (toValue!10196 (transformation!7532 r!4097)))) b_lambda!122247)))

(declare-fun b_lambda!122249 () Bool)

(assert (= b_lambda!122211 (or d!1230441 b_lambda!122249)))

(declare-fun bs!595763 () Bool)

(declare-fun d!1230767 () Bool)

(assert (= bs!595763 (and d!1230767 d!1230441)))

(assert (=> bs!595763 (= (dynLambda!19502 lambda!129060 lt!1483152) (= (list!16503 (dynLambda!19497 (toChars!10055 (transformation!7532 r!4097)) (dynLambda!19493 (toValue!10196 (transformation!7532 r!4097)) lt!1483152))) (list!16503 lt!1483152)))))

(declare-fun b_lambda!122251 () Bool)

(assert (=> (not b_lambda!122251) (not bs!595763)))

(assert (=> bs!595763 t!343770))

(declare-fun b_and!324597 () Bool)

(assert (= b_and!324535 (and (=> t!343770 result!303658) b_and!324597)))

(assert (=> bs!595763 t!343764))

(declare-fun b_and!324599 () Bool)

(assert (= b_and!324531 (and (=> t!343764 result!303646) b_and!324599)))

(assert (=> bs!595763 t!343762))

(declare-fun b_and!324601 () Bool)

(assert (= b_and!324529 (and (=> t!343762 result!303642) b_and!324601)))

(assert (=> bs!595763 t!343766))

(declare-fun b_and!324603 () Bool)

(assert (= b_and!324533 (and (=> t!343766 result!303648) b_and!324603)))

(assert (=> bs!595763 t!343856))

(declare-fun b_and!324605 () Bool)

(assert (= b_and!324595 (and (=> t!343856 result!303746) b_and!324605)))

(declare-fun b_lambda!122253 () Bool)

(assert (=> (not b_lambda!122253) (not bs!595763)))

(assert (=> bs!595763 t!343750))

(declare-fun b_and!324607 () Bool)

(assert (= b_and!324589 (and (=> t!343750 result!303622) b_and!324607)))

(assert (=> bs!595763 t!343768))

(declare-fun b_and!324609 () Bool)

(assert (= b_and!324591 (and (=> t!343768 result!303656) b_and!324609)))

(assert (=> bs!595763 t!343748))

(declare-fun b_and!324611 () Bool)

(assert (= b_and!324587 (and (=> t!343748 result!303620) b_and!324611)))

(assert (=> bs!595763 t!343854))

(declare-fun b_and!324613 () Bool)

(assert (= b_and!324593 (and (=> t!343854 result!303744) b_and!324613)))

(assert (=> bs!595763 t!343746))

(declare-fun b_and!324615 () Bool)

(assert (= b_and!324585 (and (=> t!343746 result!303616) b_and!324615)))

(assert (=> bs!595763 m!4755555))

(assert (=> bs!595763 m!4755557))

(assert (=> bs!595763 m!4755559))

(assert (=> bs!595763 m!4755469))

(assert (=> bs!595763 m!4755555))

(assert (=> bs!595763 m!4755469))

(assert (=> d!1230617 d!1230767))

(check-sat b_and!324605 (not b!4163785) (not tb!249339) (not b!4163567) (not b!4163786) (not b!4163801) (not b!4163776) (not b_next!120775) (not b!4163587) (not b!4163632) (not b!4163777) b_and!324599 (not d!1230621) (not b!4163569) (not bm!290929) (not d!1230623) (not b!4163803) (not b!4163826) (not b_lambda!122247) (not b!4163772) (not bm!290934) (not b!4163809) (not b!4163573) (not d!1230737) (not b!4163805) (not d!1230719) (not bm!290928) (not bm!290931) (not b!4163813) (not b!4163829) (not d!1230551) (not b!4163839) (not b!4163747) (not b!4163242) (not b!4163263) (not b!4163791) (not bm!290930) (not bm!290927) (not b!4163258) (not bm!290944) (not d!1230613) (not b!4163811) (not b!4163758) (not b!4163749) (not b_lambda!122241) (not b!4163560) tp_is_empty!21837 (not b!4163257) (not d!1230541) (not b!4163248) (not b!4163637) (not b!4163340) (not b_next!120777) (not b!4163788) (not d!1230607) (not d!1230599) (not b!4163735) (not b!4163709) b_and!324609 (not b!4163643) (not d!1230715) (not b!4163821) (not b!4163799) (not b!4163634) (not b_lambda!122239) (not b!4163751) (not b!4163782) (not d!1230619) (not b!4163836) (not b!4163752) (not b!4163824) (not b_lambda!122195) (not b!4163726) (not b!4163237) (not b!4163838) (not b!4163820) (not b!4163825) (not b!4163816) (not b!4163797) (not b!4163828) (not b!4163781) (not b!4163706) (not d!1230543) (not b!4163790) (not bm!290947) (not bm!290932) (not d!1230617) (not b!4163335) b_and!324601 (not b_next!120751) (not b!4163318) (not d!1230733) (not d!1230587) (not b!4163817) (not bm!290869) (not b!4163818) (not b!4163800) (not d!1230739) (not b!4163761) (not b!4163725) (not b!4163246) (not b!4163840) (not b!4163762) b_and!324607 (not b!4163740) (not b!4163262) (not b!4163597) (not b!4163792) (not b!4163784) (not d!1230615) (not b!4163336) (not b!4163796) (not b_lambda!122245) (not b!4163804) (not b!4163702) (not b_lambda!122249) (not d!1230563) (not b!4163267) (not b!4163308) (not b!4163704) (not b!4163715) (not d!1230751) (not b_next!120755) (not b!4163300) (not b!4163780) (not tb!249347) (not b!4163808) (not b!4163259) (not b_next!120757) (not b!4163342) (not b!4163236) (not bm!290861) (not b!4163717) (not b_lambda!122253) (not b!4163733) (not b!4163815) (not b_next!120767) (not b_next!120761) (not bs!595762) (not b!4163741) (not d!1230755) (not b!4163778) (not b!4163789) (not bm!290943) (not b_next!120759) b_and!324603 (not b!4163834) (not b_lambda!122251) (not b!4163269) (not d!1230753) (not b!4163835) (not b!4163322) b_and!324611 (not b!4163774) (not b!4163831) (not b!4163812) (not tb!249325) (not b_lambda!122193) (not b!4163722) (not bm!290933) (not b!4163830) (not b!4163319) (not b!4163261) (not d!1230531) b_and!324613 (not d!1230553) (not d!1230597) (not b!4163773) (not d!1230591) (not d!1230631) b_and!324615 (not b!4163822) (not b_lambda!122197) (not b!4163795) (not b_lambda!122243) (not b!4163334) (not b!4163739) (not d!1230729) (not d!1230717) (not b!4163807) (not bm!290926) (not b!4163832) (not b!4163759) (not b!4163720) (not b!4163703) (not d!1230561) (not d!1230625) (not b!4163763) (not b!4163713) (not b_next!120753) (not d!1230577) (not b_lambda!122203) (not d!1230727) (not b!4163631) (not d!1230633) (not bm!290868) (not d!1230603) (not b!4163641) (not bs!595763) (not d!1230763) (not b!4163254) b_and!324597 (not tb!249383) (not d!1230759) (not b!4163737) (not b!4163724) (not b!4163111) (not b!4163239) (not b_next!120769) (not b!4163301))
(check-sat b_and!324599 (not b_next!120777) b_and!324609 b_and!324607 (not b_next!120755) (not b_next!120757) (not b_next!120759) b_and!324603 b_and!324611 (not b_next!120753) b_and!324597 (not b_next!120769) b_and!324605 (not b_next!120775) b_and!324601 (not b_next!120751) (not b_next!120761) (not b_next!120767) b_and!324613 b_and!324615)
