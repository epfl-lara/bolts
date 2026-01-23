; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!396848 () Bool)

(assert start!396848)

(declare-fun b!4164014 () Bool)

(declare-fun b_free!120099 () Bool)

(declare-fun b_next!120803 () Bool)

(assert (=> b!4164014 (= b_free!120099 (not b_next!120803))))

(declare-fun tp!1271353 () Bool)

(declare-fun b_and!324641 () Bool)

(assert (=> b!4164014 (= tp!1271353 b_and!324641)))

(declare-fun b_free!120101 () Bool)

(declare-fun b_next!120805 () Bool)

(assert (=> b!4164014 (= b_free!120101 (not b_next!120805))))

(declare-fun tp!1271352 () Bool)

(declare-fun b_and!324643 () Bool)

(assert (=> b!4164014 (= tp!1271352 b_and!324643)))

(declare-fun b!4164007 () Bool)

(declare-fun b_free!120103 () Bool)

(declare-fun b_next!120807 () Bool)

(assert (=> b!4164007 (= b_free!120103 (not b_next!120807))))

(declare-fun tp!1271351 () Bool)

(declare-fun b_and!324645 () Bool)

(assert (=> b!4164007 (= tp!1271351 b_and!324645)))

(declare-fun b_free!120105 () Bool)

(declare-fun b_next!120809 () Bool)

(assert (=> b!4164007 (= b_free!120105 (not b_next!120809))))

(declare-fun tp!1271347 () Bool)

(declare-fun b_and!324647 () Bool)

(assert (=> b!4164007 (= tp!1271347 b_and!324647)))

(declare-fun b!4164018 () Bool)

(declare-fun b_free!120107 () Bool)

(declare-fun b_next!120811 () Bool)

(assert (=> b!4164018 (= b_free!120107 (not b_next!120811))))

(declare-fun tp!1271341 () Bool)

(declare-fun b_and!324649 () Bool)

(assert (=> b!4164018 (= tp!1271341 b_and!324649)))

(declare-fun b_free!120109 () Bool)

(declare-fun b_next!120813 () Bool)

(assert (=> b!4164018 (= b_free!120109 (not b_next!120813))))

(declare-fun tp!1271343 () Bool)

(declare-fun b_and!324651 () Bool)

(assert (=> b!4164018 (= tp!1271343 b_and!324651)))

(declare-fun e!2584917 () Bool)

(declare-fun e!2584913 () Bool)

(declare-fun tp!1271349 () Bool)

(declare-datatypes ((C!25070 0))(
  ( (C!25071 (val!14697 Int)) )
))
(declare-datatypes ((List!45684 0))(
  ( (Nil!45560) (Cons!45560 (h!50980 C!25070) (t!343867 List!45684)) )
))
(declare-datatypes ((IArray!27497 0))(
  ( (IArray!27498 (innerList!13806 List!45684)) )
))
(declare-datatypes ((Conc!13746 0))(
  ( (Node!13746 (left!33972 Conc!13746) (right!34302 Conc!13746) (csize!27722 Int) (cheight!13957 Int)) (Leaf!21257 (xs!17052 IArray!27497) (csize!27723 Int)) (Empty!13746) )
))
(declare-datatypes ((String!52692 0))(
  ( (String!52693 (value!235271 String)) )
))
(declare-datatypes ((List!45685 0))(
  ( (Nil!45561) (Cons!45561 (h!50981 (_ BitVec 16)) (t!343868 List!45685)) )
))
(declare-datatypes ((BalanceConc!27086 0))(
  ( (BalanceConc!27087 (c!712213 Conc!13746)) )
))
(declare-datatypes ((TokenValue!7765 0))(
  ( (FloatLiteralValue!15530 (text!54800 List!45685)) (TokenValueExt!7764 (__x!27751 Int)) (Broken!38825 (value!235272 List!45685)) (Object!7888) (End!7765) (Def!7765) (Underscore!7765) (Match!7765) (Else!7765) (Error!7765) (Case!7765) (If!7765) (Extends!7765) (Abstract!7765) (Class!7765) (Val!7765) (DelimiterValue!15530 (del!7825 List!45685)) (KeywordValue!7771 (value!235273 List!45685)) (CommentValue!15530 (value!235274 List!45685)) (WhitespaceValue!15530 (value!235275 List!45685)) (IndentationValue!7765 (value!235276 List!45685)) (String!52694) (Int32!7765) (Broken!38826 (value!235277 List!45685)) (Boolean!7766) (Unit!64653) (OperatorValue!7768 (op!7825 List!45685)) (IdentifierValue!15530 (value!235278 List!45685)) (IdentifierValue!15531 (value!235279 List!45685)) (WhitespaceValue!15531 (value!235280 List!45685)) (True!15530) (False!15530) (Broken!38827 (value!235281 List!45685)) (Broken!38828 (value!235282 List!45685)) (True!15531) (RightBrace!7765) (RightBracket!7765) (Colon!7765) (Null!7765) (Comma!7765) (LeftBracket!7765) (False!15531) (LeftBrace!7765) (ImaginaryLiteralValue!7765 (text!54801 List!45685)) (StringLiteralValue!23295 (value!235283 List!45685)) (EOFValue!7765 (value!235284 List!45685)) (IdentValue!7765 (value!235285 List!45685)) (DelimiterValue!15531 (value!235286 List!45685)) (DedentValue!7765 (value!235287 List!45685)) (NewLineValue!7765 (value!235288 List!45685)) (IntegerValue!23295 (value!235289 (_ BitVec 32)) (text!54802 List!45685)) (IntegerValue!23296 (value!235290 Int) (text!54803 List!45685)) (Times!7765) (Or!7765) (Equal!7765) (Minus!7765) (Broken!38829 (value!235291 List!45685)) (And!7765) (Div!7765) (LessEqual!7765) (Mod!7765) (Concat!20205) (Not!7765) (Plus!7765) (SpaceValue!7765 (value!235292 List!45685)) (IntegerValue!23297 (value!235293 Int) (text!54804 List!45685)) (StringLiteralValue!23296 (text!54805 List!45685)) (FloatLiteralValue!15531 (text!54806 List!45685)) (BytesLiteralValue!7765 (value!235294 List!45685)) (CommentValue!15531 (value!235295 List!45685)) (StringLiteralValue!23297 (value!235296 List!45685)) (ErrorTokenValue!7765 (msg!7826 List!45685)) )
))
(declare-datatypes ((TokenValueInjection!14958 0))(
  ( (TokenValueInjection!14959 (toValue!10203 Int) (toChars!10062 Int)) )
))
(declare-datatypes ((Regex!12440 0))(
  ( (ElementMatch!12440 (c!712214 C!25070)) (Concat!20206 (regOne!25392 Regex!12440) (regTwo!25392 Regex!12440)) (EmptyExpr!12440) (Star!12440 (reg!12769 Regex!12440)) (EmptyLang!12440) (Union!12440 (regOne!25393 Regex!12440) (regTwo!25393 Regex!12440)) )
))
(declare-datatypes ((Rule!14870 0))(
  ( (Rule!14871 (regex!7535 Regex!12440) (tag!8399 String!52692) (isSeparator!7535 Bool) (transformation!7535 TokenValueInjection!14958)) )
))
(declare-fun r!4097 () Rule!14870)

(declare-fun b!4164001 () Bool)

(declare-fun inv!60081 (String!52692) Bool)

(declare-fun inv!60084 (TokenValueInjection!14958) Bool)

(assert (=> b!4164001 (= e!2584917 (and tp!1271349 (inv!60081 (tag!8399 r!4097)) (inv!60084 (transformation!7535 r!4097)) e!2584913))))

(declare-fun b!4164002 () Bool)

(declare-fun res!1705825 () Bool)

(declare-fun e!2584916 () Bool)

(assert (=> b!4164002 (=> (not res!1705825) (not e!2584916))))

(declare-datatypes ((List!45686 0))(
  ( (Nil!45562) (Cons!45562 (h!50982 Rule!14870) (t!343869 List!45686)) )
))
(declare-fun rules!3820 () List!45686)

(declare-fun isEmpty!26972 (List!45686) Bool)

(assert (=> b!4164002 (= res!1705825 (not (isEmpty!26972 rules!3820)))))

(declare-fun b!4164003 () Bool)

(declare-fun e!2584914 () Bool)

(declare-fun tp_is_empty!21843 () Bool)

(declare-fun tp!1271346 () Bool)

(assert (=> b!4164003 (= e!2584914 (and tp_is_empty!21843 tp!1271346))))

(declare-fun e!2584921 () Bool)

(declare-fun b!4164004 () Bool)

(declare-fun e!2584924 () Bool)

(declare-fun tp!1271344 () Bool)

(assert (=> b!4164004 (= e!2584921 (and tp!1271344 (inv!60081 (tag!8399 (h!50982 rules!3820))) (inv!60084 (transformation!7535 (h!50982 rules!3820))) e!2584924))))

(declare-fun tp!1271345 () Bool)

(declare-fun e!2584912 () Bool)

(declare-fun e!2584922 () Bool)

(declare-fun b!4164005 () Bool)

(declare-fun rBis!161 () Rule!14870)

(assert (=> b!4164005 (= e!2584922 (and tp!1271345 (inv!60081 (tag!8399 rBis!161)) (inv!60084 (transformation!7535 rBis!161)) e!2584912))))

(declare-fun b!4164006 () Bool)

(declare-fun res!1705820 () Bool)

(assert (=> b!4164006 (=> (not res!1705820) (not e!2584916))))

(declare-fun contains!9330 (List!45686 Rule!14870) Bool)

(assert (=> b!4164006 (= res!1705820 (contains!9330 rules!3820 rBis!161))))

(assert (=> b!4164007 (= e!2584924 (and tp!1271351 tp!1271347))))

(declare-fun b!4164008 () Bool)

(declare-fun e!2584909 () Bool)

(declare-fun tp!1271348 () Bool)

(assert (=> b!4164008 (= e!2584909 (and tp_is_empty!21843 tp!1271348))))

(declare-fun b!4164009 () Bool)

(declare-fun res!1705817 () Bool)

(assert (=> b!4164009 (=> (not res!1705817) (not e!2584916))))

(declare-datatypes ((LexerInterface!7128 0))(
  ( (LexerInterfaceExt!7125 (__x!27752 Int)) (Lexer!7126) )
))
(declare-fun thiss!25889 () LexerInterface!7128)

(declare-fun rulesInvariant!6341 (LexerInterface!7128 List!45686) Bool)

(assert (=> b!4164009 (= res!1705817 (rulesInvariant!6341 thiss!25889 rules!3820))))

(declare-fun b!4164010 () Bool)

(declare-fun res!1705826 () Bool)

(assert (=> b!4164010 (=> (not res!1705826) (not e!2584916))))

(declare-fun p!2942 () List!45684)

(declare-fun input!3316 () List!45684)

(declare-fun isPrefix!4392 (List!45684 List!45684) Bool)

(assert (=> b!4164010 (= res!1705826 (isPrefix!4392 p!2942 input!3316))))

(declare-fun b!4164011 () Bool)

(declare-fun res!1705823 () Bool)

(declare-fun e!2584915 () Bool)

(assert (=> b!4164011 (=> res!1705823 e!2584915)))

(declare-fun pBis!100 () List!45684)

(declare-fun lt!1483603 () Int)

(declare-fun size!33477 (List!45684) Int)

(assert (=> b!4164011 (= res!1705823 (<= (size!33477 pBis!100) lt!1483603))))

(declare-fun b!4164012 () Bool)

(declare-fun e!2584910 () Bool)

(assert (=> b!4164012 (= e!2584916 (not e!2584910))))

(declare-fun res!1705822 () Bool)

(assert (=> b!4164012 (=> res!1705822 e!2584910)))

(declare-fun matchR!6185 (Regex!12440 List!45684) Bool)

(assert (=> b!4164012 (= res!1705822 (not (matchR!6185 (regex!7535 r!4097) p!2942)))))

(declare-fun ruleValid!3259 (LexerInterface!7128 Rule!14870) Bool)

(assert (=> b!4164012 (ruleValid!3259 thiss!25889 r!4097)))

(declare-datatypes ((Unit!64654 0))(
  ( (Unit!64655) )
))
(declare-fun lt!1483608 () Unit!64654)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2299 (LexerInterface!7128 Rule!14870 List!45686) Unit!64654)

(assert (=> b!4164012 (= lt!1483608 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2299 thiss!25889 r!4097 rules!3820))))

(declare-fun b!4164013 () Bool)

(declare-fun e!2584919 () Bool)

(declare-fun tp!1271350 () Bool)

(assert (=> b!4164013 (= e!2584919 (and e!2584921 tp!1271350))))

(assert (=> b!4164014 (= e!2584912 (and tp!1271353 tp!1271352))))

(declare-fun b!4164015 () Bool)

(assert (=> b!4164015 (= e!2584915 (>= (size!33477 input!3316) lt!1483603))))

(declare-fun b!4164016 () Bool)

(declare-fun e!2584911 () Bool)

(declare-fun tp!1271342 () Bool)

(assert (=> b!4164016 (= e!2584911 (and tp_is_empty!21843 tp!1271342))))

(declare-fun b!4164017 () Bool)

(assert (=> b!4164017 (= e!2584910 e!2584915)))

(declare-fun res!1705821 () Bool)

(assert (=> b!4164017 (=> res!1705821 e!2584915)))

(declare-fun lt!1483605 () TokenValue!7765)

(declare-datatypes ((Token!13816 0))(
  ( (Token!13817 (value!235297 TokenValue!7765) (rule!10587 Rule!14870) (size!33478 Int) (originalCharacters!7939 List!45684)) )
))
(declare-datatypes ((tuple2!43496 0))(
  ( (tuple2!43497 (_1!24882 Token!13816) (_2!24882 List!45684)) )
))
(declare-datatypes ((Option!9749 0))(
  ( (None!9748) (Some!9748 (v!40524 tuple2!43496)) )
))
(declare-fun maxPrefixOneRule!3157 (LexerInterface!7128 Rule!14870 List!45684) Option!9749)

(declare-fun getSuffix!2705 (List!45684 List!45684) List!45684)

(assert (=> b!4164017 (= res!1705821 (not (= (maxPrefixOneRule!3157 thiss!25889 r!4097 input!3316) (Some!9748 (tuple2!43497 (Token!13817 lt!1483605 r!4097 lt!1483603 p!2942) (getSuffix!2705 input!3316 p!2942))))))))

(assert (=> b!4164017 (= lt!1483603 (size!33477 p!2942))))

(declare-fun lt!1483607 () BalanceConc!27086)

(declare-fun apply!10516 (TokenValueInjection!14958 BalanceConc!27086) TokenValue!7765)

(assert (=> b!4164017 (= lt!1483605 (apply!10516 (transformation!7535 r!4097) lt!1483607))))

(assert (=> b!4164017 (isPrefix!4392 input!3316 input!3316)))

(declare-fun lt!1483606 () Unit!64654)

(declare-fun lemmaIsPrefixRefl!2831 (List!45684 List!45684) Unit!64654)

(assert (=> b!4164017 (= lt!1483606 (lemmaIsPrefixRefl!2831 input!3316 input!3316))))

(declare-fun lt!1483604 () Unit!64654)

(declare-fun lemmaSemiInverse!2309 (TokenValueInjection!14958 BalanceConc!27086) Unit!64654)

(assert (=> b!4164017 (= lt!1483604 (lemmaSemiInverse!2309 (transformation!7535 r!4097) lt!1483607))))

(declare-fun seqFromList!5568 (List!45684) BalanceConc!27086)

(assert (=> b!4164017 (= lt!1483607 (seqFromList!5568 p!2942))))

(assert (=> b!4164018 (= e!2584913 (and tp!1271341 tp!1271343))))

(declare-fun b!4164019 () Bool)

(declare-fun res!1705824 () Bool)

(assert (=> b!4164019 (=> (not res!1705824) (not e!2584916))))

(assert (=> b!4164019 (= res!1705824 (isPrefix!4392 pBis!100 input!3316))))

(declare-fun b!4164020 () Bool)

(declare-fun res!1705819 () Bool)

(assert (=> b!4164020 (=> (not res!1705819) (not e!2584916))))

(assert (=> b!4164020 (= res!1705819 (contains!9330 rules!3820 r!4097))))

(declare-fun res!1705818 () Bool)

(assert (=> start!396848 (=> (not res!1705818) (not e!2584916))))

(assert (=> start!396848 (= res!1705818 (is-Lexer!7126 thiss!25889))))

(assert (=> start!396848 e!2584916))

(assert (=> start!396848 e!2584909))

(assert (=> start!396848 e!2584919))

(assert (=> start!396848 e!2584914))

(assert (=> start!396848 e!2584911))

(assert (=> start!396848 true))

(assert (=> start!396848 e!2584922))

(assert (=> start!396848 e!2584917))

(assert (= (and start!396848 res!1705818) b!4164010))

(assert (= (and b!4164010 res!1705826) b!4164019))

(assert (= (and b!4164019 res!1705824) b!4164002))

(assert (= (and b!4164002 res!1705825) b!4164009))

(assert (= (and b!4164009 res!1705817) b!4164020))

(assert (= (and b!4164020 res!1705819) b!4164006))

(assert (= (and b!4164006 res!1705820) b!4164012))

(assert (= (and b!4164012 (not res!1705822)) b!4164017))

(assert (= (and b!4164017 (not res!1705821)) b!4164011))

(assert (= (and b!4164011 (not res!1705823)) b!4164015))

(assert (= (and start!396848 (is-Cons!45560 pBis!100)) b!4164008))

(assert (= b!4164004 b!4164007))

(assert (= b!4164013 b!4164004))

(assert (= (and start!396848 (is-Cons!45562 rules!3820)) b!4164013))

(assert (= (and start!396848 (is-Cons!45560 p!2942)) b!4164003))

(assert (= (and start!396848 (is-Cons!45560 input!3316)) b!4164016))

(assert (= b!4164005 b!4164014))

(assert (= start!396848 b!4164005))

(assert (= b!4164001 b!4164018))

(assert (= start!396848 b!4164001))

(declare-fun m!4756291 () Bool)

(assert (=> b!4164017 m!4756291))

(declare-fun m!4756293 () Bool)

(assert (=> b!4164017 m!4756293))

(declare-fun m!4756295 () Bool)

(assert (=> b!4164017 m!4756295))

(declare-fun m!4756297 () Bool)

(assert (=> b!4164017 m!4756297))

(declare-fun m!4756299 () Bool)

(assert (=> b!4164017 m!4756299))

(declare-fun m!4756301 () Bool)

(assert (=> b!4164017 m!4756301))

(declare-fun m!4756303 () Bool)

(assert (=> b!4164017 m!4756303))

(declare-fun m!4756305 () Bool)

(assert (=> b!4164017 m!4756305))

(declare-fun m!4756307 () Bool)

(assert (=> b!4164012 m!4756307))

(declare-fun m!4756309 () Bool)

(assert (=> b!4164012 m!4756309))

(declare-fun m!4756311 () Bool)

(assert (=> b!4164012 m!4756311))

(declare-fun m!4756313 () Bool)

(assert (=> b!4164009 m!4756313))

(declare-fun m!4756315 () Bool)

(assert (=> b!4164002 m!4756315))

(declare-fun m!4756317 () Bool)

(assert (=> b!4164015 m!4756317))

(declare-fun m!4756319 () Bool)

(assert (=> b!4164006 m!4756319))

(declare-fun m!4756321 () Bool)

(assert (=> b!4164010 m!4756321))

(declare-fun m!4756323 () Bool)

(assert (=> b!4164005 m!4756323))

(declare-fun m!4756325 () Bool)

(assert (=> b!4164005 m!4756325))

(declare-fun m!4756327 () Bool)

(assert (=> b!4164001 m!4756327))

(declare-fun m!4756329 () Bool)

(assert (=> b!4164001 m!4756329))

(declare-fun m!4756331 () Bool)

(assert (=> b!4164019 m!4756331))

(declare-fun m!4756333 () Bool)

(assert (=> b!4164011 m!4756333))

(declare-fun m!4756335 () Bool)

(assert (=> b!4164004 m!4756335))

(declare-fun m!4756337 () Bool)

(assert (=> b!4164004 m!4756337))

(declare-fun m!4756339 () Bool)

(assert (=> b!4164020 m!4756339))

(push 1)

(assert (not b_next!120811))

(assert b_and!324647)

(assert (not b!4164019))

(assert (not b_next!120807))

(assert b_and!324645)

(assert (not b!4164005))

(assert (not b!4164003))

(assert (not b!4164013))

(assert (not b!4164002))

(assert b_and!324641)

(assert (not b_next!120813))

(assert (not b!4164001))

(assert (not b!4164009))

(assert (not b!4164016))

(assert (not b!4164011))

(assert b_and!324649)

(assert (not b!4164004))

(assert b_and!324643)

(assert (not b!4164010))

(assert tp_is_empty!21843)

(assert (not b!4164008))

(assert (not b!4164012))

(assert (not b!4164020))

(assert (not b_next!120805))

(assert (not b_next!120809))

(assert (not b!4164015))

(assert (not b!4164006))

(assert (not b_next!120803))

(assert b_and!324651)

(assert (not b!4164017))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!120811))

(assert b_and!324647)

(assert (not b_next!120807))

(assert b_and!324645)

(assert b_and!324641)

(assert (not b_next!120805))

(assert (not b_next!120813))

(assert b_and!324651)

(assert b_and!324649)

(assert b_and!324643)

(assert (not b_next!120809))

(assert (not b_next!120803))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1230771 () Bool)

(assert (=> d!1230771 (= (inv!60081 (tag!8399 rBis!161)) (= (mod (str.len (value!235271 (tag!8399 rBis!161))) 2) 0))))

(assert (=> b!4164005 d!1230771))

(declare-fun d!1230773 () Bool)

(declare-fun res!1705867 () Bool)

(declare-fun e!2584975 () Bool)

(assert (=> d!1230773 (=> (not res!1705867) (not e!2584975))))

(declare-fun semiInverseModEq!3271 (Int Int) Bool)

(assert (=> d!1230773 (= res!1705867 (semiInverseModEq!3271 (toChars!10062 (transformation!7535 rBis!161)) (toValue!10203 (transformation!7535 rBis!161))))))

(assert (=> d!1230773 (= (inv!60084 (transformation!7535 rBis!161)) e!2584975)))

(declare-fun b!4164083 () Bool)

(declare-fun equivClasses!3170 (Int Int) Bool)

(assert (=> b!4164083 (= e!2584975 (equivClasses!3170 (toChars!10062 (transformation!7535 rBis!161)) (toValue!10203 (transformation!7535 rBis!161))))))

(assert (= (and d!1230773 res!1705867) b!4164083))

(declare-fun m!4756391 () Bool)

(assert (=> d!1230773 m!4756391))

(declare-fun m!4756393 () Bool)

(assert (=> b!4164083 m!4756393))

(assert (=> b!4164005 d!1230773))

(declare-fun d!1230775 () Bool)

(declare-fun lt!1483629 () Bool)

(declare-fun content!7085 (List!45686) (Set Rule!14870))

(assert (=> d!1230775 (= lt!1483629 (set.member rBis!161 (content!7085 rules!3820)))))

(declare-fun e!2584981 () Bool)

(assert (=> d!1230775 (= lt!1483629 e!2584981)))

(declare-fun res!1705872 () Bool)

(assert (=> d!1230775 (=> (not res!1705872) (not e!2584981))))

(assert (=> d!1230775 (= res!1705872 (is-Cons!45562 rules!3820))))

(assert (=> d!1230775 (= (contains!9330 rules!3820 rBis!161) lt!1483629)))

(declare-fun b!4164088 () Bool)

(declare-fun e!2584980 () Bool)

(assert (=> b!4164088 (= e!2584981 e!2584980)))

(declare-fun res!1705873 () Bool)

(assert (=> b!4164088 (=> res!1705873 e!2584980)))

(assert (=> b!4164088 (= res!1705873 (= (h!50982 rules!3820) rBis!161))))

(declare-fun b!4164089 () Bool)

(assert (=> b!4164089 (= e!2584980 (contains!9330 (t!343869 rules!3820) rBis!161))))

(assert (= (and d!1230775 res!1705872) b!4164088))

(assert (= (and b!4164088 (not res!1705873)) b!4164089))

(declare-fun m!4756395 () Bool)

(assert (=> d!1230775 m!4756395))

(declare-fun m!4756397 () Bool)

(assert (=> d!1230775 m!4756397))

(declare-fun m!4756399 () Bool)

(assert (=> b!4164089 m!4756399))

(assert (=> b!4164006 d!1230775))

(declare-fun d!1230777 () Bool)

(assert (=> d!1230777 (= (inv!60081 (tag!8399 (h!50982 rules!3820))) (= (mod (str.len (value!235271 (tag!8399 (h!50982 rules!3820)))) 2) 0))))

(assert (=> b!4164004 d!1230777))

(declare-fun d!1230779 () Bool)

(declare-fun res!1705874 () Bool)

(declare-fun e!2584982 () Bool)

(assert (=> d!1230779 (=> (not res!1705874) (not e!2584982))))

(assert (=> d!1230779 (= res!1705874 (semiInverseModEq!3271 (toChars!10062 (transformation!7535 (h!50982 rules!3820))) (toValue!10203 (transformation!7535 (h!50982 rules!3820)))))))

(assert (=> d!1230779 (= (inv!60084 (transformation!7535 (h!50982 rules!3820))) e!2584982)))

(declare-fun b!4164090 () Bool)

(assert (=> b!4164090 (= e!2584982 (equivClasses!3170 (toChars!10062 (transformation!7535 (h!50982 rules!3820))) (toValue!10203 (transformation!7535 (h!50982 rules!3820)))))))

(assert (= (and d!1230779 res!1705874) b!4164090))

(declare-fun m!4756401 () Bool)

(assert (=> d!1230779 m!4756401))

(declare-fun m!4756403 () Bool)

(assert (=> b!4164090 m!4756403))

(assert (=> b!4164004 d!1230779))

(declare-fun d!1230781 () Bool)

(declare-fun lt!1483632 () Int)

(assert (=> d!1230781 (>= lt!1483632 0)))

(declare-fun e!2584985 () Int)

(assert (=> d!1230781 (= lt!1483632 e!2584985)))

(declare-fun c!712220 () Bool)

(assert (=> d!1230781 (= c!712220 (is-Nil!45560 input!3316))))

(assert (=> d!1230781 (= (size!33477 input!3316) lt!1483632)))

(declare-fun b!4164095 () Bool)

(assert (=> b!4164095 (= e!2584985 0)))

(declare-fun b!4164096 () Bool)

(assert (=> b!4164096 (= e!2584985 (+ 1 (size!33477 (t!343867 input!3316))))))

(assert (= (and d!1230781 c!712220) b!4164095))

(assert (= (and d!1230781 (not c!712220)) b!4164096))

(declare-fun m!4756405 () Bool)

(assert (=> b!4164096 m!4756405))

(assert (=> b!4164015 d!1230781))

(declare-fun d!1230785 () Bool)

(assert (=> d!1230785 (= (inv!60081 (tag!8399 r!4097)) (= (mod (str.len (value!235271 (tag!8399 r!4097))) 2) 0))))

(assert (=> b!4164001 d!1230785))

(declare-fun d!1230787 () Bool)

(declare-fun res!1705875 () Bool)

(declare-fun e!2584986 () Bool)

(assert (=> d!1230787 (=> (not res!1705875) (not e!2584986))))

(assert (=> d!1230787 (= res!1705875 (semiInverseModEq!3271 (toChars!10062 (transformation!7535 r!4097)) (toValue!10203 (transformation!7535 r!4097))))))

(assert (=> d!1230787 (= (inv!60084 (transformation!7535 r!4097)) e!2584986)))

(declare-fun b!4164097 () Bool)

(assert (=> b!4164097 (= e!2584986 (equivClasses!3170 (toChars!10062 (transformation!7535 r!4097)) (toValue!10203 (transformation!7535 r!4097))))))

(assert (= (and d!1230787 res!1705875) b!4164097))

(declare-fun m!4756407 () Bool)

(assert (=> d!1230787 m!4756407))

(declare-fun m!4756409 () Bool)

(assert (=> b!4164097 m!4756409))

(assert (=> b!4164001 d!1230787))

(declare-fun b!4164140 () Bool)

(declare-fun e!2585016 () Bool)

(declare-fun derivativeStep!3754 (Regex!12440 C!25070) Regex!12440)

(declare-fun head!8839 (List!45684) C!25070)

(declare-fun tail!6686 (List!45684) List!45684)

(assert (=> b!4164140 (= e!2585016 (matchR!6185 (derivativeStep!3754 (regex!7535 r!4097) (head!8839 p!2942)) (tail!6686 p!2942)))))

(declare-fun b!4164141 () Bool)

(declare-fun e!2585018 () Bool)

(declare-fun e!2585017 () Bool)

(assert (=> b!4164141 (= e!2585018 e!2585017)))

(declare-fun res!1705904 () Bool)

(assert (=> b!4164141 (=> res!1705904 e!2585017)))

(declare-fun call!290955 () Bool)

(assert (=> b!4164141 (= res!1705904 call!290955)))

(declare-fun b!4164142 () Bool)

(declare-fun res!1705908 () Bool)

(declare-fun e!2585015 () Bool)

(assert (=> b!4164142 (=> (not res!1705908) (not e!2585015))))

(declare-fun isEmpty!26974 (List!45684) Bool)

(assert (=> b!4164142 (= res!1705908 (isEmpty!26974 (tail!6686 p!2942)))))

(declare-fun b!4164143 () Bool)

(declare-fun res!1705906 () Bool)

(declare-fun e!2585014 () Bool)

(assert (=> b!4164143 (=> res!1705906 e!2585014)))

(assert (=> b!4164143 (= res!1705906 e!2585015)))

(declare-fun res!1705910 () Bool)

(assert (=> b!4164143 (=> (not res!1705910) (not e!2585015))))

(declare-fun lt!1483638 () Bool)

(assert (=> b!4164143 (= res!1705910 lt!1483638)))

(declare-fun b!4164144 () Bool)

(declare-fun e!2585019 () Bool)

(declare-fun e!2585013 () Bool)

(assert (=> b!4164144 (= e!2585019 e!2585013)))

(declare-fun c!712228 () Bool)

(assert (=> b!4164144 (= c!712228 (is-EmptyLang!12440 (regex!7535 r!4097)))))

(declare-fun b!4164145 () Bool)

(assert (=> b!4164145 (= e!2585017 (not (= (head!8839 p!2942) (c!712214 (regex!7535 r!4097)))))))

(declare-fun b!4164146 () Bool)

(assert (=> b!4164146 (= e!2585014 e!2585018)))

(declare-fun res!1705907 () Bool)

(assert (=> b!4164146 (=> (not res!1705907) (not e!2585018))))

(assert (=> b!4164146 (= res!1705907 (not lt!1483638))))

(declare-fun b!4164147 () Bool)

(assert (=> b!4164147 (= e!2585015 (= (head!8839 p!2942) (c!712214 (regex!7535 r!4097))))))

(declare-fun b!4164148 () Bool)

(declare-fun nullable!4362 (Regex!12440) Bool)

(assert (=> b!4164148 (= e!2585016 (nullable!4362 (regex!7535 r!4097)))))

(declare-fun b!4164149 () Bool)

(declare-fun res!1705905 () Bool)

(assert (=> b!4164149 (=> (not res!1705905) (not e!2585015))))

(assert (=> b!4164149 (= res!1705905 (not call!290955))))

(declare-fun b!4164150 () Bool)

(declare-fun res!1705909 () Bool)

(assert (=> b!4164150 (=> res!1705909 e!2585017)))

(assert (=> b!4164150 (= res!1705909 (not (isEmpty!26974 (tail!6686 p!2942))))))

(declare-fun d!1230789 () Bool)

(assert (=> d!1230789 e!2585019))

(declare-fun c!712229 () Bool)

(assert (=> d!1230789 (= c!712229 (is-EmptyExpr!12440 (regex!7535 r!4097)))))

(assert (=> d!1230789 (= lt!1483638 e!2585016)))

(declare-fun c!712227 () Bool)

(assert (=> d!1230789 (= c!712227 (isEmpty!26974 p!2942))))

(declare-fun validRegex!5572 (Regex!12440) Bool)

(assert (=> d!1230789 (validRegex!5572 (regex!7535 r!4097))))

(assert (=> d!1230789 (= (matchR!6185 (regex!7535 r!4097) p!2942) lt!1483638)))

(declare-fun b!4164151 () Bool)

(declare-fun res!1705911 () Bool)

(assert (=> b!4164151 (=> res!1705911 e!2585014)))

(assert (=> b!4164151 (= res!1705911 (not (is-ElementMatch!12440 (regex!7535 r!4097))))))

(assert (=> b!4164151 (= e!2585013 e!2585014)))

(declare-fun b!4164152 () Bool)

(assert (=> b!4164152 (= e!2585013 (not lt!1483638))))

(declare-fun b!4164153 () Bool)

(assert (=> b!4164153 (= e!2585019 (= lt!1483638 call!290955))))

(declare-fun bm!290950 () Bool)

(assert (=> bm!290950 (= call!290955 (isEmpty!26974 p!2942))))

(assert (= (and d!1230789 c!712227) b!4164148))

(assert (= (and d!1230789 (not c!712227)) b!4164140))

(assert (= (and d!1230789 c!712229) b!4164153))

(assert (= (and d!1230789 (not c!712229)) b!4164144))

(assert (= (and b!4164144 c!712228) b!4164152))

(assert (= (and b!4164144 (not c!712228)) b!4164151))

(assert (= (and b!4164151 (not res!1705911)) b!4164143))

(assert (= (and b!4164143 res!1705910) b!4164149))

(assert (= (and b!4164149 res!1705905) b!4164142))

(assert (= (and b!4164142 res!1705908) b!4164147))

(assert (= (and b!4164143 (not res!1705906)) b!4164146))

(assert (= (and b!4164146 res!1705907) b!4164141))

(assert (= (and b!4164141 (not res!1705904)) b!4164150))

(assert (= (and b!4164150 (not res!1705909)) b!4164145))

(assert (= (or b!4164153 b!4164141 b!4164149) bm!290950))

(declare-fun m!4756425 () Bool)

(assert (=> b!4164148 m!4756425))

(declare-fun m!4756427 () Bool)

(assert (=> bm!290950 m!4756427))

(declare-fun m!4756429 () Bool)

(assert (=> b!4164150 m!4756429))

(assert (=> b!4164150 m!4756429))

(declare-fun m!4756431 () Bool)

(assert (=> b!4164150 m!4756431))

(declare-fun m!4756433 () Bool)

(assert (=> b!4164145 m!4756433))

(assert (=> b!4164140 m!4756433))

(assert (=> b!4164140 m!4756433))

(declare-fun m!4756435 () Bool)

(assert (=> b!4164140 m!4756435))

(assert (=> b!4164140 m!4756429))

(assert (=> b!4164140 m!4756435))

(assert (=> b!4164140 m!4756429))

(declare-fun m!4756437 () Bool)

(assert (=> b!4164140 m!4756437))

(assert (=> b!4164147 m!4756433))

(assert (=> b!4164142 m!4756429))

(assert (=> b!4164142 m!4756429))

(assert (=> b!4164142 m!4756431))

(assert (=> d!1230789 m!4756427))

(declare-fun m!4756439 () Bool)

(assert (=> d!1230789 m!4756439))

(assert (=> b!4164012 d!1230789))

(declare-fun d!1230797 () Bool)

(declare-fun res!1705916 () Bool)

(declare-fun e!2585022 () Bool)

(assert (=> d!1230797 (=> (not res!1705916) (not e!2585022))))

(assert (=> d!1230797 (= res!1705916 (validRegex!5572 (regex!7535 r!4097)))))

(assert (=> d!1230797 (= (ruleValid!3259 thiss!25889 r!4097) e!2585022)))

(declare-fun b!4164158 () Bool)

(declare-fun res!1705917 () Bool)

(assert (=> b!4164158 (=> (not res!1705917) (not e!2585022))))

(assert (=> b!4164158 (= res!1705917 (not (nullable!4362 (regex!7535 r!4097))))))

(declare-fun b!4164159 () Bool)

(assert (=> b!4164159 (= e!2585022 (not (= (tag!8399 r!4097) (String!52693 ""))))))

(assert (= (and d!1230797 res!1705916) b!4164158))

(assert (= (and b!4164158 res!1705917) b!4164159))

(assert (=> d!1230797 m!4756439))

(assert (=> b!4164158 m!4756425))

(assert (=> b!4164012 d!1230797))

(declare-fun d!1230799 () Bool)

(assert (=> d!1230799 (ruleValid!3259 thiss!25889 r!4097)))

(declare-fun lt!1483641 () Unit!64654)

(declare-fun choose!25498 (LexerInterface!7128 Rule!14870 List!45686) Unit!64654)

(assert (=> d!1230799 (= lt!1483641 (choose!25498 thiss!25889 r!4097 rules!3820))))

(assert (=> d!1230799 (contains!9330 rules!3820 r!4097)))

(assert (=> d!1230799 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2299 thiss!25889 r!4097 rules!3820) lt!1483641)))

(declare-fun bs!595768 () Bool)

(assert (= bs!595768 d!1230799))

(assert (=> bs!595768 m!4756309))

(declare-fun m!4756441 () Bool)

(assert (=> bs!595768 m!4756441))

(assert (=> bs!595768 m!4756339))

(assert (=> b!4164012 d!1230799))

(declare-fun d!1230801 () Bool)

(assert (=> d!1230801 (= (isEmpty!26972 rules!3820) (is-Nil!45562 rules!3820))))

(assert (=> b!4164002 d!1230801))

(declare-fun d!1230803 () Bool)

(declare-fun lt!1483642 () Int)

(assert (=> d!1230803 (>= lt!1483642 0)))

(declare-fun e!2585023 () Int)

(assert (=> d!1230803 (= lt!1483642 e!2585023)))

(declare-fun c!712230 () Bool)

(assert (=> d!1230803 (= c!712230 (is-Nil!45560 pBis!100))))

(assert (=> d!1230803 (= (size!33477 pBis!100) lt!1483642)))

(declare-fun b!4164160 () Bool)

(assert (=> b!4164160 (= e!2585023 0)))

(declare-fun b!4164161 () Bool)

(assert (=> b!4164161 (= e!2585023 (+ 1 (size!33477 (t!343867 pBis!100))))))

(assert (= (and d!1230803 c!712230) b!4164160))

(assert (= (and d!1230803 (not c!712230)) b!4164161))

(declare-fun m!4756443 () Bool)

(assert (=> b!4164161 m!4756443))

(assert (=> b!4164011 d!1230803))

(declare-fun d!1230805 () Bool)

(declare-fun res!1705920 () Bool)

(declare-fun e!2585026 () Bool)

(assert (=> d!1230805 (=> (not res!1705920) (not e!2585026))))

(declare-fun rulesValid!2939 (LexerInterface!7128 List!45686) Bool)

(assert (=> d!1230805 (= res!1705920 (rulesValid!2939 thiss!25889 rules!3820))))

(assert (=> d!1230805 (= (rulesInvariant!6341 thiss!25889 rules!3820) e!2585026)))

(declare-fun b!4164164 () Bool)

(declare-datatypes ((List!45690 0))(
  ( (Nil!45566) (Cons!45566 (h!50986 String!52692) (t!343895 List!45690)) )
))
(declare-fun noDuplicateTag!3100 (LexerInterface!7128 List!45686 List!45690) Bool)

(assert (=> b!4164164 (= e!2585026 (noDuplicateTag!3100 thiss!25889 rules!3820 Nil!45566))))

(assert (= (and d!1230805 res!1705920) b!4164164))

(declare-fun m!4756445 () Bool)

(assert (=> d!1230805 m!4756445))

(declare-fun m!4756447 () Bool)

(assert (=> b!4164164 m!4756447))

(assert (=> b!4164009 d!1230805))

(declare-fun d!1230807 () Bool)

(declare-fun lt!1483643 () Bool)

(assert (=> d!1230807 (= lt!1483643 (set.member r!4097 (content!7085 rules!3820)))))

(declare-fun e!2585028 () Bool)

(assert (=> d!1230807 (= lt!1483643 e!2585028)))

(declare-fun res!1705921 () Bool)

(assert (=> d!1230807 (=> (not res!1705921) (not e!2585028))))

(assert (=> d!1230807 (= res!1705921 (is-Cons!45562 rules!3820))))

(assert (=> d!1230807 (= (contains!9330 rules!3820 r!4097) lt!1483643)))

(declare-fun b!4164165 () Bool)

(declare-fun e!2585027 () Bool)

(assert (=> b!4164165 (= e!2585028 e!2585027)))

(declare-fun res!1705922 () Bool)

(assert (=> b!4164165 (=> res!1705922 e!2585027)))

(assert (=> b!4164165 (= res!1705922 (= (h!50982 rules!3820) r!4097))))

(declare-fun b!4164166 () Bool)

(assert (=> b!4164166 (= e!2585027 (contains!9330 (t!343869 rules!3820) r!4097))))

(assert (= (and d!1230807 res!1705921) b!4164165))

(assert (= (and b!4164165 (not res!1705922)) b!4164166))

(assert (=> d!1230807 m!4756395))

(declare-fun m!4756449 () Bool)

(assert (=> d!1230807 m!4756449))

(declare-fun m!4756451 () Bool)

(assert (=> b!4164166 m!4756451))

(assert (=> b!4164020 d!1230807))

(declare-fun d!1230809 () Bool)

(declare-fun e!2585035 () Bool)

(assert (=> d!1230809 e!2585035))

(declare-fun res!1705934 () Bool)

(assert (=> d!1230809 (=> res!1705934 e!2585035)))

(declare-fun lt!1483646 () Bool)

(assert (=> d!1230809 (= res!1705934 (not lt!1483646))))

(declare-fun e!2585037 () Bool)

(assert (=> d!1230809 (= lt!1483646 e!2585037)))

(declare-fun res!1705931 () Bool)

(assert (=> d!1230809 (=> res!1705931 e!2585037)))

(assert (=> d!1230809 (= res!1705931 (is-Nil!45560 p!2942))))

(assert (=> d!1230809 (= (isPrefix!4392 p!2942 input!3316) lt!1483646)))

(declare-fun b!4164176 () Bool)

(declare-fun res!1705933 () Bool)

(declare-fun e!2585036 () Bool)

(assert (=> b!4164176 (=> (not res!1705933) (not e!2585036))))

(assert (=> b!4164176 (= res!1705933 (= (head!8839 p!2942) (head!8839 input!3316)))))

(declare-fun b!4164178 () Bool)

(assert (=> b!4164178 (= e!2585035 (>= (size!33477 input!3316) (size!33477 p!2942)))))

(declare-fun b!4164175 () Bool)

(assert (=> b!4164175 (= e!2585037 e!2585036)))

(declare-fun res!1705932 () Bool)

(assert (=> b!4164175 (=> (not res!1705932) (not e!2585036))))

(assert (=> b!4164175 (= res!1705932 (not (is-Nil!45560 input!3316)))))

(declare-fun b!4164177 () Bool)

(assert (=> b!4164177 (= e!2585036 (isPrefix!4392 (tail!6686 p!2942) (tail!6686 input!3316)))))

(assert (= (and d!1230809 (not res!1705931)) b!4164175))

(assert (= (and b!4164175 res!1705932) b!4164176))

(assert (= (and b!4164176 res!1705933) b!4164177))

(assert (= (and d!1230809 (not res!1705934)) b!4164178))

(assert (=> b!4164176 m!4756433))

(declare-fun m!4756453 () Bool)

(assert (=> b!4164176 m!4756453))

(assert (=> b!4164178 m!4756317))

(assert (=> b!4164178 m!4756305))

(assert (=> b!4164177 m!4756429))

(declare-fun m!4756455 () Bool)

(assert (=> b!4164177 m!4756455))

(assert (=> b!4164177 m!4756429))

(assert (=> b!4164177 m!4756455))

(declare-fun m!4756457 () Bool)

(assert (=> b!4164177 m!4756457))

(assert (=> b!4164010 d!1230809))

(declare-fun d!1230811 () Bool)

(declare-fun e!2585038 () Bool)

(assert (=> d!1230811 e!2585038))

(declare-fun res!1705938 () Bool)

(assert (=> d!1230811 (=> res!1705938 e!2585038)))

(declare-fun lt!1483647 () Bool)

(assert (=> d!1230811 (= res!1705938 (not lt!1483647))))

(declare-fun e!2585040 () Bool)

(assert (=> d!1230811 (= lt!1483647 e!2585040)))

(declare-fun res!1705935 () Bool)

(assert (=> d!1230811 (=> res!1705935 e!2585040)))

(assert (=> d!1230811 (= res!1705935 (is-Nil!45560 pBis!100))))

(assert (=> d!1230811 (= (isPrefix!4392 pBis!100 input!3316) lt!1483647)))

(declare-fun b!4164180 () Bool)

(declare-fun res!1705937 () Bool)

(declare-fun e!2585039 () Bool)

(assert (=> b!4164180 (=> (not res!1705937) (not e!2585039))))

(assert (=> b!4164180 (= res!1705937 (= (head!8839 pBis!100) (head!8839 input!3316)))))

(declare-fun b!4164182 () Bool)

(assert (=> b!4164182 (= e!2585038 (>= (size!33477 input!3316) (size!33477 pBis!100)))))

(declare-fun b!4164179 () Bool)

(assert (=> b!4164179 (= e!2585040 e!2585039)))

(declare-fun res!1705936 () Bool)

(assert (=> b!4164179 (=> (not res!1705936) (not e!2585039))))

(assert (=> b!4164179 (= res!1705936 (not (is-Nil!45560 input!3316)))))

(declare-fun b!4164181 () Bool)

(assert (=> b!4164181 (= e!2585039 (isPrefix!4392 (tail!6686 pBis!100) (tail!6686 input!3316)))))

(assert (= (and d!1230811 (not res!1705935)) b!4164179))

(assert (= (and b!4164179 res!1705936) b!4164180))

(assert (= (and b!4164180 res!1705937) b!4164181))

(assert (= (and d!1230811 (not res!1705938)) b!4164182))

(declare-fun m!4756459 () Bool)

(assert (=> b!4164180 m!4756459))

(assert (=> b!4164180 m!4756453))

(assert (=> b!4164182 m!4756317))

(assert (=> b!4164182 m!4756333))

(declare-fun m!4756461 () Bool)

(assert (=> b!4164181 m!4756461))

(assert (=> b!4164181 m!4756455))

(assert (=> b!4164181 m!4756461))

(assert (=> b!4164181 m!4756455))

(declare-fun m!4756463 () Bool)

(assert (=> b!4164181 m!4756463))

(assert (=> b!4164019 d!1230811))

(declare-fun b!4164201 () Bool)

(declare-fun e!2585051 () Bool)

(declare-datatypes ((tuple2!43500 0))(
  ( (tuple2!43501 (_1!24884 List!45684) (_2!24884 List!45684)) )
))
(declare-fun findLongestMatchInner!1560 (Regex!12440 List!45684 Int List!45684 List!45684 Int) tuple2!43500)

(assert (=> b!4164201 (= e!2585051 (matchR!6185 (regex!7535 r!4097) (_1!24884 (findLongestMatchInner!1560 (regex!7535 r!4097) Nil!45560 (size!33477 Nil!45560) input!3316 input!3316 (size!33477 input!3316)))))))

(declare-fun b!4164202 () Bool)

(declare-fun res!1705954 () Bool)

(declare-fun e!2585052 () Bool)

(assert (=> b!4164202 (=> (not res!1705954) (not e!2585052))))

(declare-fun lt!1483658 () Option!9749)

(declare-fun get!14814 (Option!9749) tuple2!43496)

(assert (=> b!4164202 (= res!1705954 (< (size!33477 (_2!24882 (get!14814 lt!1483658))) (size!33477 input!3316)))))

(declare-fun b!4164203 () Bool)

(declare-fun res!1705955 () Bool)

(assert (=> b!4164203 (=> (not res!1705955) (not e!2585052))))

(assert (=> b!4164203 (= res!1705955 (= (rule!10587 (_1!24882 (get!14814 lt!1483658))) r!4097))))

(declare-fun b!4164204 () Bool)

(assert (=> b!4164204 (= e!2585052 (= (size!33478 (_1!24882 (get!14814 lt!1483658))) (size!33477 (originalCharacters!7939 (_1!24882 (get!14814 lt!1483658))))))))

(declare-fun b!4164205 () Bool)

(declare-fun res!1705953 () Bool)

(assert (=> b!4164205 (=> (not res!1705953) (not e!2585052))))

(declare-fun ++!11659 (List!45684 List!45684) List!45684)

(declare-fun list!16506 (BalanceConc!27086) List!45684)

(declare-fun charsOf!5022 (Token!13816) BalanceConc!27086)

(assert (=> b!4164205 (= res!1705953 (= (++!11659 (list!16506 (charsOf!5022 (_1!24882 (get!14814 lt!1483658)))) (_2!24882 (get!14814 lt!1483658))) input!3316))))

(declare-fun d!1230813 () Bool)

(declare-fun e!2585049 () Bool)

(assert (=> d!1230813 e!2585049))

(declare-fun res!1705958 () Bool)

(assert (=> d!1230813 (=> res!1705958 e!2585049)))

(declare-fun isEmpty!26975 (Option!9749) Bool)

(assert (=> d!1230813 (= res!1705958 (isEmpty!26975 lt!1483658))))

(declare-fun e!2585050 () Option!9749)

(assert (=> d!1230813 (= lt!1483658 e!2585050)))

(declare-fun c!712233 () Bool)

(declare-fun lt!1483661 () tuple2!43500)

(assert (=> d!1230813 (= c!712233 (isEmpty!26974 (_1!24884 lt!1483661)))))

(declare-fun findLongestMatch!1473 (Regex!12440 List!45684) tuple2!43500)

(assert (=> d!1230813 (= lt!1483661 (findLongestMatch!1473 (regex!7535 r!4097) input!3316))))

(assert (=> d!1230813 (ruleValid!3259 thiss!25889 r!4097)))

(assert (=> d!1230813 (= (maxPrefixOneRule!3157 thiss!25889 r!4097 input!3316) lt!1483658)))

(declare-fun b!4164206 () Bool)

(declare-fun res!1705957 () Bool)

(assert (=> b!4164206 (=> (not res!1705957) (not e!2585052))))

(assert (=> b!4164206 (= res!1705957 (= (value!235297 (_1!24882 (get!14814 lt!1483658))) (apply!10516 (transformation!7535 (rule!10587 (_1!24882 (get!14814 lt!1483658)))) (seqFromList!5568 (originalCharacters!7939 (_1!24882 (get!14814 lt!1483658)))))))))

(declare-fun b!4164207 () Bool)

(assert (=> b!4164207 (= e!2585049 e!2585052)))

(declare-fun res!1705959 () Bool)

(assert (=> b!4164207 (=> (not res!1705959) (not e!2585052))))

(assert (=> b!4164207 (= res!1705959 (matchR!6185 (regex!7535 r!4097) (list!16506 (charsOf!5022 (_1!24882 (get!14814 lt!1483658))))))))

(declare-fun b!4164208 () Bool)

(assert (=> b!4164208 (= e!2585050 None!9748)))

(declare-fun b!4164209 () Bool)

(declare-fun size!33481 (BalanceConc!27086) Int)

(assert (=> b!4164209 (= e!2585050 (Some!9748 (tuple2!43497 (Token!13817 (apply!10516 (transformation!7535 r!4097) (seqFromList!5568 (_1!24884 lt!1483661))) r!4097 (size!33481 (seqFromList!5568 (_1!24884 lt!1483661))) (_1!24884 lt!1483661)) (_2!24884 lt!1483661))))))

(declare-fun lt!1483660 () Unit!64654)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1533 (Regex!12440 List!45684) Unit!64654)

(assert (=> b!4164209 (= lt!1483660 (longestMatchIsAcceptedByMatchOrIsEmpty!1533 (regex!7535 r!4097) input!3316))))

(declare-fun res!1705956 () Bool)

(assert (=> b!4164209 (= res!1705956 (isEmpty!26974 (_1!24884 (findLongestMatchInner!1560 (regex!7535 r!4097) Nil!45560 (size!33477 Nil!45560) input!3316 input!3316 (size!33477 input!3316)))))))

(assert (=> b!4164209 (=> res!1705956 e!2585051)))

(assert (=> b!4164209 e!2585051))

(declare-fun lt!1483659 () Unit!64654)

(assert (=> b!4164209 (= lt!1483659 lt!1483660)))

(declare-fun lt!1483662 () Unit!64654)

(assert (=> b!4164209 (= lt!1483662 (lemmaSemiInverse!2309 (transformation!7535 r!4097) (seqFromList!5568 (_1!24884 lt!1483661))))))

(assert (= (and d!1230813 c!712233) b!4164208))

(assert (= (and d!1230813 (not c!712233)) b!4164209))

(assert (= (and b!4164209 (not res!1705956)) b!4164201))

(assert (= (and d!1230813 (not res!1705958)) b!4164207))

(assert (= (and b!4164207 res!1705959) b!4164205))

(assert (= (and b!4164205 res!1705953) b!4164202))

(assert (= (and b!4164202 res!1705954) b!4164203))

(assert (= (and b!4164203 res!1705955) b!4164206))

(assert (= (and b!4164206 res!1705957) b!4164204))

(declare-fun m!4756465 () Bool)

(assert (=> b!4164204 m!4756465))

(declare-fun m!4756467 () Bool)

(assert (=> b!4164204 m!4756467))

(assert (=> b!4164207 m!4756465))

(declare-fun m!4756469 () Bool)

(assert (=> b!4164207 m!4756469))

(assert (=> b!4164207 m!4756469))

(declare-fun m!4756471 () Bool)

(assert (=> b!4164207 m!4756471))

(assert (=> b!4164207 m!4756471))

(declare-fun m!4756473 () Bool)

(assert (=> b!4164207 m!4756473))

(assert (=> b!4164206 m!4756465))

(declare-fun m!4756475 () Bool)

(assert (=> b!4164206 m!4756475))

(assert (=> b!4164206 m!4756475))

(declare-fun m!4756477 () Bool)

(assert (=> b!4164206 m!4756477))

(assert (=> b!4164205 m!4756465))

(assert (=> b!4164205 m!4756469))

(assert (=> b!4164205 m!4756469))

(assert (=> b!4164205 m!4756471))

(assert (=> b!4164205 m!4756471))

(declare-fun m!4756479 () Bool)

(assert (=> b!4164205 m!4756479))

(assert (=> b!4164202 m!4756465))

(declare-fun m!4756481 () Bool)

(assert (=> b!4164202 m!4756481))

(assert (=> b!4164202 m!4756317))

(assert (=> b!4164203 m!4756465))

(declare-fun m!4756483 () Bool)

(assert (=> d!1230813 m!4756483))

(declare-fun m!4756485 () Bool)

(assert (=> d!1230813 m!4756485))

(declare-fun m!4756487 () Bool)

(assert (=> d!1230813 m!4756487))

(assert (=> d!1230813 m!4756309))

(declare-fun m!4756489 () Bool)

(assert (=> b!4164201 m!4756489))

(assert (=> b!4164201 m!4756317))

(assert (=> b!4164201 m!4756489))

(assert (=> b!4164201 m!4756317))

(declare-fun m!4756491 () Bool)

(assert (=> b!4164201 m!4756491))

(declare-fun m!4756493 () Bool)

(assert (=> b!4164201 m!4756493))

(declare-fun m!4756495 () Bool)

(assert (=> b!4164209 m!4756495))

(declare-fun m!4756497 () Bool)

(assert (=> b!4164209 m!4756497))

(declare-fun m!4756499 () Bool)

(assert (=> b!4164209 m!4756499))

(assert (=> b!4164209 m!4756489))

(assert (=> b!4164209 m!4756317))

(assert (=> b!4164209 m!4756491))

(assert (=> b!4164209 m!4756497))

(declare-fun m!4756501 () Bool)

(assert (=> b!4164209 m!4756501))

(declare-fun m!4756503 () Bool)

(assert (=> b!4164209 m!4756503))

(assert (=> b!4164209 m!4756497))

(declare-fun m!4756505 () Bool)

(assert (=> b!4164209 m!4756505))

(assert (=> b!4164209 m!4756489))

(assert (=> b!4164209 m!4756317))

(assert (=> b!4164209 m!4756497))

(assert (=> b!4164017 d!1230813))

(declare-fun d!1230815 () Bool)

(declare-fun lt!1483663 () Int)

(assert (=> d!1230815 (>= lt!1483663 0)))

(declare-fun e!2585053 () Int)

(assert (=> d!1230815 (= lt!1483663 e!2585053)))

(declare-fun c!712234 () Bool)

(assert (=> d!1230815 (= c!712234 (is-Nil!45560 p!2942))))

(assert (=> d!1230815 (= (size!33477 p!2942) lt!1483663)))

(declare-fun b!4164210 () Bool)

(assert (=> b!4164210 (= e!2585053 0)))

(declare-fun b!4164211 () Bool)

(assert (=> b!4164211 (= e!2585053 (+ 1 (size!33477 (t!343867 p!2942))))))

(assert (= (and d!1230815 c!712234) b!4164210))

(assert (= (and d!1230815 (not c!712234)) b!4164211))

(declare-fun m!4756507 () Bool)

(assert (=> b!4164211 m!4756507))

(assert (=> b!4164017 d!1230815))

(declare-fun d!1230817 () Bool)

(declare-fun dynLambda!19504 (Int BalanceConc!27086) TokenValue!7765)

(assert (=> d!1230817 (= (apply!10516 (transformation!7535 r!4097) lt!1483607) (dynLambda!19504 (toValue!10203 (transformation!7535 r!4097)) lt!1483607))))

(declare-fun b_lambda!122257 () Bool)

(assert (=> (not b_lambda!122257) (not d!1230817)))

(declare-fun t!343880 () Bool)

(declare-fun tb!249409 () Bool)

(assert (=> (and b!4164014 (= (toValue!10203 (transformation!7535 rBis!161)) (toValue!10203 (transformation!7535 r!4097))) t!343880) tb!249409))

(declare-fun result!303760 () Bool)

(declare-fun inv!21 (TokenValue!7765) Bool)

(assert (=> tb!249409 (= result!303760 (inv!21 (dynLambda!19504 (toValue!10203 (transformation!7535 r!4097)) lt!1483607)))))

(declare-fun m!4756509 () Bool)

(assert (=> tb!249409 m!4756509))

(assert (=> d!1230817 t!343880))

(declare-fun b_and!324671 () Bool)

(assert (= b_and!324641 (and (=> t!343880 result!303760) b_and!324671)))

(declare-fun tb!249411 () Bool)

(declare-fun t!343882 () Bool)

(assert (=> (and b!4164007 (= (toValue!10203 (transformation!7535 (h!50982 rules!3820))) (toValue!10203 (transformation!7535 r!4097))) t!343882) tb!249411))

(declare-fun result!303764 () Bool)

(assert (= result!303764 result!303760))

(assert (=> d!1230817 t!343882))

(declare-fun b_and!324673 () Bool)

(assert (= b_and!324645 (and (=> t!343882 result!303764) b_and!324673)))

(declare-fun t!343884 () Bool)

(declare-fun tb!249413 () Bool)

(assert (=> (and b!4164018 (= (toValue!10203 (transformation!7535 r!4097)) (toValue!10203 (transformation!7535 r!4097))) t!343884) tb!249413))

(declare-fun result!303766 () Bool)

(assert (= result!303766 result!303760))

(assert (=> d!1230817 t!343884))

(declare-fun b_and!324675 () Bool)

(assert (= b_and!324649 (and (=> t!343884 result!303766) b_and!324675)))

(declare-fun m!4756511 () Bool)

(assert (=> d!1230817 m!4756511))

(assert (=> b!4164017 d!1230817))

(declare-fun d!1230819 () Bool)

(assert (=> d!1230819 (isPrefix!4392 input!3316 input!3316)))

(declare-fun lt!1483666 () Unit!64654)

(declare-fun choose!25499 (List!45684 List!45684) Unit!64654)

(assert (=> d!1230819 (= lt!1483666 (choose!25499 input!3316 input!3316))))

(assert (=> d!1230819 (= (lemmaIsPrefixRefl!2831 input!3316 input!3316) lt!1483666)))

(declare-fun bs!595769 () Bool)

(assert (= bs!595769 d!1230819))

(assert (=> bs!595769 m!4756295))

(declare-fun m!4756513 () Bool)

(assert (=> bs!595769 m!4756513))

(assert (=> b!4164017 d!1230819))

(declare-fun b!4164261 () Bool)

(declare-fun e!2585080 () Bool)

(assert (=> b!4164261 (= e!2585080 true)))

(declare-fun d!1230821 () Bool)

(assert (=> d!1230821 e!2585080))

(assert (= d!1230821 b!4164261))

(declare-fun order!23993 () Int)

(declare-fun lambda!129096 () Int)

(declare-fun order!23991 () Int)

(declare-fun dynLambda!19505 (Int Int) Int)

(declare-fun dynLambda!19506 (Int Int) Int)

(assert (=> b!4164261 (< (dynLambda!19505 order!23991 (toValue!10203 (transformation!7535 r!4097))) (dynLambda!19506 order!23993 lambda!129096))))

(declare-fun order!23995 () Int)

(declare-fun dynLambda!19507 (Int Int) Int)

(assert (=> b!4164261 (< (dynLambda!19507 order!23995 (toChars!10062 (transformation!7535 r!4097))) (dynLambda!19506 order!23993 lambda!129096))))

(declare-fun dynLambda!19508 (Int TokenValue!7765) BalanceConc!27086)

(assert (=> d!1230821 (= (list!16506 (dynLambda!19508 (toChars!10062 (transformation!7535 r!4097)) (dynLambda!19504 (toValue!10203 (transformation!7535 r!4097)) lt!1483607))) (list!16506 lt!1483607))))

(declare-fun lt!1483693 () Unit!64654)

(declare-fun ForallOf!1007 (Int BalanceConc!27086) Unit!64654)

(assert (=> d!1230821 (= lt!1483693 (ForallOf!1007 lambda!129096 lt!1483607))))

(assert (=> d!1230821 (= (lemmaSemiInverse!2309 (transformation!7535 r!4097) lt!1483607) lt!1483693)))

(declare-fun b_lambda!122259 () Bool)

(assert (=> (not b_lambda!122259) (not d!1230821)))

(declare-fun t!343886 () Bool)

(declare-fun tb!249415 () Bool)

(assert (=> (and b!4164014 (= (toChars!10062 (transformation!7535 rBis!161)) (toChars!10062 (transformation!7535 r!4097))) t!343886) tb!249415))

(declare-fun b!4164266 () Bool)

(declare-fun e!2585083 () Bool)

(declare-fun tp!1271395 () Bool)

(declare-fun inv!60086 (Conc!13746) Bool)

(assert (=> b!4164266 (= e!2585083 (and (inv!60086 (c!712213 (dynLambda!19508 (toChars!10062 (transformation!7535 r!4097)) (dynLambda!19504 (toValue!10203 (transformation!7535 r!4097)) lt!1483607)))) tp!1271395))))

(declare-fun result!303768 () Bool)

(declare-fun inv!60087 (BalanceConc!27086) Bool)

(assert (=> tb!249415 (= result!303768 (and (inv!60087 (dynLambda!19508 (toChars!10062 (transformation!7535 r!4097)) (dynLambda!19504 (toValue!10203 (transformation!7535 r!4097)) lt!1483607))) e!2585083))))

(assert (= tb!249415 b!4164266))

(declare-fun m!4756567 () Bool)

(assert (=> b!4164266 m!4756567))

(declare-fun m!4756569 () Bool)

(assert (=> tb!249415 m!4756569))

(assert (=> d!1230821 t!343886))

(declare-fun b_and!324677 () Bool)

(assert (= b_and!324643 (and (=> t!343886 result!303768) b_and!324677)))

(declare-fun t!343888 () Bool)

(declare-fun tb!249417 () Bool)

(assert (=> (and b!4164007 (= (toChars!10062 (transformation!7535 (h!50982 rules!3820))) (toChars!10062 (transformation!7535 r!4097))) t!343888) tb!249417))

(declare-fun result!303772 () Bool)

(assert (= result!303772 result!303768))

(assert (=> d!1230821 t!343888))

(declare-fun b_and!324679 () Bool)

(assert (= b_and!324647 (and (=> t!343888 result!303772) b_and!324679)))

(declare-fun t!343890 () Bool)

(declare-fun tb!249419 () Bool)

(assert (=> (and b!4164018 (= (toChars!10062 (transformation!7535 r!4097)) (toChars!10062 (transformation!7535 r!4097))) t!343890) tb!249419))

(declare-fun result!303774 () Bool)

(assert (= result!303774 result!303768))

(assert (=> d!1230821 t!343890))

(declare-fun b_and!324681 () Bool)

(assert (= b_and!324651 (and (=> t!343890 result!303774) b_and!324681)))

(declare-fun b_lambda!122261 () Bool)

(assert (=> (not b_lambda!122261) (not d!1230821)))

(assert (=> d!1230821 t!343880))

(declare-fun b_and!324683 () Bool)

(assert (= b_and!324671 (and (=> t!343880 result!303760) b_and!324683)))

(assert (=> d!1230821 t!343882))

(declare-fun b_and!324685 () Bool)

(assert (= b_and!324673 (and (=> t!343882 result!303764) b_and!324685)))

(assert (=> d!1230821 t!343884))

(declare-fun b_and!324687 () Bool)

(assert (= b_and!324675 (and (=> t!343884 result!303766) b_and!324687)))

(assert (=> d!1230821 m!4756511))

(declare-fun m!4756571 () Bool)

(assert (=> d!1230821 m!4756571))

(assert (=> d!1230821 m!4756511))

(declare-fun m!4756573 () Bool)

(assert (=> d!1230821 m!4756573))

(declare-fun m!4756575 () Bool)

(assert (=> d!1230821 m!4756575))

(assert (=> d!1230821 m!4756571))

(declare-fun m!4756577 () Bool)

(assert (=> d!1230821 m!4756577))

(assert (=> b!4164017 d!1230821))

(declare-fun d!1230833 () Bool)

(declare-fun fromListB!2556 (List!45684) BalanceConc!27086)

(assert (=> d!1230833 (= (seqFromList!5568 p!2942) (fromListB!2556 p!2942))))

(declare-fun bs!595771 () Bool)

(assert (= bs!595771 d!1230833))

(declare-fun m!4756579 () Bool)

(assert (=> bs!595771 m!4756579))

(assert (=> b!4164017 d!1230833))

(declare-fun d!1230835 () Bool)

(declare-fun lt!1483696 () List!45684)

(assert (=> d!1230835 (= (++!11659 p!2942 lt!1483696) input!3316)))

(declare-fun e!2585086 () List!45684)

(assert (=> d!1230835 (= lt!1483696 e!2585086)))

(declare-fun c!712248 () Bool)

(assert (=> d!1230835 (= c!712248 (is-Cons!45560 p!2942))))

(assert (=> d!1230835 (>= (size!33477 input!3316) (size!33477 p!2942))))

(assert (=> d!1230835 (= (getSuffix!2705 input!3316 p!2942) lt!1483696)))

(declare-fun b!4164271 () Bool)

(assert (=> b!4164271 (= e!2585086 (getSuffix!2705 (tail!6686 input!3316) (t!343867 p!2942)))))

(declare-fun b!4164272 () Bool)

(assert (=> b!4164272 (= e!2585086 input!3316)))

(assert (= (and d!1230835 c!712248) b!4164271))

(assert (= (and d!1230835 (not c!712248)) b!4164272))

(declare-fun m!4756581 () Bool)

(assert (=> d!1230835 m!4756581))

(assert (=> d!1230835 m!4756317))

(assert (=> d!1230835 m!4756305))

(assert (=> b!4164271 m!4756455))

(assert (=> b!4164271 m!4756455))

(declare-fun m!4756583 () Bool)

(assert (=> b!4164271 m!4756583))

(assert (=> b!4164017 d!1230835))

(declare-fun d!1230837 () Bool)

(declare-fun e!2585087 () Bool)

(assert (=> d!1230837 e!2585087))

(declare-fun res!1705988 () Bool)

(assert (=> d!1230837 (=> res!1705988 e!2585087)))

(declare-fun lt!1483697 () Bool)

(assert (=> d!1230837 (= res!1705988 (not lt!1483697))))

(declare-fun e!2585089 () Bool)

(assert (=> d!1230837 (= lt!1483697 e!2585089)))

(declare-fun res!1705985 () Bool)

(assert (=> d!1230837 (=> res!1705985 e!2585089)))

(assert (=> d!1230837 (= res!1705985 (is-Nil!45560 input!3316))))

(assert (=> d!1230837 (= (isPrefix!4392 input!3316 input!3316) lt!1483697)))

(declare-fun b!4164274 () Bool)

(declare-fun res!1705987 () Bool)

(declare-fun e!2585088 () Bool)

(assert (=> b!4164274 (=> (not res!1705987) (not e!2585088))))

(assert (=> b!4164274 (= res!1705987 (= (head!8839 input!3316) (head!8839 input!3316)))))

(declare-fun b!4164276 () Bool)

(assert (=> b!4164276 (= e!2585087 (>= (size!33477 input!3316) (size!33477 input!3316)))))

(declare-fun b!4164273 () Bool)

(assert (=> b!4164273 (= e!2585089 e!2585088)))

(declare-fun res!1705986 () Bool)

(assert (=> b!4164273 (=> (not res!1705986) (not e!2585088))))

(assert (=> b!4164273 (= res!1705986 (not (is-Nil!45560 input!3316)))))

(declare-fun b!4164275 () Bool)

(assert (=> b!4164275 (= e!2585088 (isPrefix!4392 (tail!6686 input!3316) (tail!6686 input!3316)))))

(assert (= (and d!1230837 (not res!1705985)) b!4164273))

(assert (= (and b!4164273 res!1705986) b!4164274))

(assert (= (and b!4164274 res!1705987) b!4164275))

(assert (= (and d!1230837 (not res!1705988)) b!4164276))

(assert (=> b!4164274 m!4756453))

(assert (=> b!4164274 m!4756453))

(assert (=> b!4164276 m!4756317))

(assert (=> b!4164276 m!4756317))

(assert (=> b!4164275 m!4756455))

(assert (=> b!4164275 m!4756455))

(assert (=> b!4164275 m!4756455))

(assert (=> b!4164275 m!4756455))

(declare-fun m!4756585 () Bool)

(assert (=> b!4164275 m!4756585))

(assert (=> b!4164017 d!1230837))

(declare-fun b!4164289 () Bool)

(declare-fun e!2585092 () Bool)

(declare-fun tp!1271408 () Bool)

(assert (=> b!4164289 (= e!2585092 tp!1271408)))

(declare-fun b!4164287 () Bool)

(assert (=> b!4164287 (= e!2585092 tp_is_empty!21843)))

(assert (=> b!4164005 (= tp!1271345 e!2585092)))

(declare-fun b!4164288 () Bool)

(declare-fun tp!1271406 () Bool)

(declare-fun tp!1271409 () Bool)

(assert (=> b!4164288 (= e!2585092 (and tp!1271406 tp!1271409))))

(declare-fun b!4164290 () Bool)

(declare-fun tp!1271407 () Bool)

(declare-fun tp!1271410 () Bool)

(assert (=> b!4164290 (= e!2585092 (and tp!1271407 tp!1271410))))

(assert (= (and b!4164005 (is-ElementMatch!12440 (regex!7535 rBis!161))) b!4164287))

(assert (= (and b!4164005 (is-Concat!20206 (regex!7535 rBis!161))) b!4164288))

(assert (= (and b!4164005 (is-Star!12440 (regex!7535 rBis!161))) b!4164289))

(assert (= (and b!4164005 (is-Union!12440 (regex!7535 rBis!161))) b!4164290))

(declare-fun b!4164295 () Bool)

(declare-fun e!2585095 () Bool)

(declare-fun tp!1271413 () Bool)

(assert (=> b!4164295 (= e!2585095 (and tp_is_empty!21843 tp!1271413))))

(assert (=> b!4164016 (= tp!1271342 e!2585095)))

(assert (= (and b!4164016 (is-Cons!45560 (t!343867 input!3316))) b!4164295))

(declare-fun b!4164298 () Bool)

(declare-fun e!2585096 () Bool)

(declare-fun tp!1271416 () Bool)

(assert (=> b!4164298 (= e!2585096 tp!1271416)))

(declare-fun b!4164296 () Bool)

(assert (=> b!4164296 (= e!2585096 tp_is_empty!21843)))

(assert (=> b!4164004 (= tp!1271344 e!2585096)))

(declare-fun b!4164297 () Bool)

(declare-fun tp!1271414 () Bool)

(declare-fun tp!1271417 () Bool)

(assert (=> b!4164297 (= e!2585096 (and tp!1271414 tp!1271417))))

(declare-fun b!4164299 () Bool)

(declare-fun tp!1271415 () Bool)

(declare-fun tp!1271418 () Bool)

(assert (=> b!4164299 (= e!2585096 (and tp!1271415 tp!1271418))))

(assert (= (and b!4164004 (is-ElementMatch!12440 (regex!7535 (h!50982 rules!3820)))) b!4164296))

(assert (= (and b!4164004 (is-Concat!20206 (regex!7535 (h!50982 rules!3820)))) b!4164297))

(assert (= (and b!4164004 (is-Star!12440 (regex!7535 (h!50982 rules!3820)))) b!4164298))

(assert (= (and b!4164004 (is-Union!12440 (regex!7535 (h!50982 rules!3820)))) b!4164299))

(declare-fun b!4164310 () Bool)

(declare-fun b_free!120123 () Bool)

(declare-fun b_next!120827 () Bool)

(assert (=> b!4164310 (= b_free!120123 (not b_next!120827))))

(declare-fun tb!249421 () Bool)

(declare-fun t!343892 () Bool)

(assert (=> (and b!4164310 (= (toValue!10203 (transformation!7535 (h!50982 (t!343869 rules!3820)))) (toValue!10203 (transformation!7535 r!4097))) t!343892) tb!249421))

(declare-fun result!303782 () Bool)

(assert (= result!303782 result!303760))

(assert (=> d!1230817 t!343892))

(assert (=> d!1230821 t!343892))

(declare-fun b_and!324689 () Bool)

(declare-fun tp!1271428 () Bool)

(assert (=> b!4164310 (= tp!1271428 (and (=> t!343892 result!303782) b_and!324689))))

(declare-fun b_free!120125 () Bool)

(declare-fun b_next!120829 () Bool)

(assert (=> b!4164310 (= b_free!120125 (not b_next!120829))))

(declare-fun tb!249423 () Bool)

(declare-fun t!343894 () Bool)

(assert (=> (and b!4164310 (= (toChars!10062 (transformation!7535 (h!50982 (t!343869 rules!3820)))) (toChars!10062 (transformation!7535 r!4097))) t!343894) tb!249423))

(declare-fun result!303784 () Bool)

(assert (= result!303784 result!303768))

(assert (=> d!1230821 t!343894))

(declare-fun b_and!324691 () Bool)

(declare-fun tp!1271429 () Bool)

(assert (=> b!4164310 (= tp!1271429 (and (=> t!343894 result!303784) b_and!324691))))

(declare-fun e!2585106 () Bool)

(assert (=> b!4164310 (= e!2585106 (and tp!1271428 tp!1271429))))

(declare-fun e!2585107 () Bool)

(declare-fun b!4164309 () Bool)

(declare-fun tp!1271427 () Bool)

(assert (=> b!4164309 (= e!2585107 (and tp!1271427 (inv!60081 (tag!8399 (h!50982 (t!343869 rules!3820)))) (inv!60084 (transformation!7535 (h!50982 (t!343869 rules!3820)))) e!2585106))))

(declare-fun b!4164308 () Bool)

(declare-fun e!2585105 () Bool)

(declare-fun tp!1271430 () Bool)

(assert (=> b!4164308 (= e!2585105 (and e!2585107 tp!1271430))))

(assert (=> b!4164013 (= tp!1271350 e!2585105)))

(assert (= b!4164309 b!4164310))

(assert (= b!4164308 b!4164309))

(assert (= (and b!4164013 (is-Cons!45562 (t!343869 rules!3820))) b!4164308))

(declare-fun m!4756587 () Bool)

(assert (=> b!4164309 m!4756587))

(declare-fun m!4756589 () Bool)

(assert (=> b!4164309 m!4756589))

(declare-fun b!4164311 () Bool)

(declare-fun e!2585109 () Bool)

(declare-fun tp!1271431 () Bool)

(assert (=> b!4164311 (= e!2585109 (and tp_is_empty!21843 tp!1271431))))

(assert (=> b!4164008 (= tp!1271348 e!2585109)))

(assert (= (and b!4164008 (is-Cons!45560 (t!343867 pBis!100))) b!4164311))

(declare-fun b!4164312 () Bool)

(declare-fun e!2585110 () Bool)

(declare-fun tp!1271432 () Bool)

(assert (=> b!4164312 (= e!2585110 (and tp_is_empty!21843 tp!1271432))))

(assert (=> b!4164003 (= tp!1271346 e!2585110)))

(assert (= (and b!4164003 (is-Cons!45560 (t!343867 p!2942))) b!4164312))

(declare-fun b!4164315 () Bool)

(declare-fun e!2585111 () Bool)

(declare-fun tp!1271435 () Bool)

(assert (=> b!4164315 (= e!2585111 tp!1271435)))

(declare-fun b!4164313 () Bool)

(assert (=> b!4164313 (= e!2585111 tp_is_empty!21843)))

(assert (=> b!4164001 (= tp!1271349 e!2585111)))

(declare-fun b!4164314 () Bool)

(declare-fun tp!1271433 () Bool)

(declare-fun tp!1271436 () Bool)

(assert (=> b!4164314 (= e!2585111 (and tp!1271433 tp!1271436))))

(declare-fun b!4164316 () Bool)

(declare-fun tp!1271434 () Bool)

(declare-fun tp!1271437 () Bool)

(assert (=> b!4164316 (= e!2585111 (and tp!1271434 tp!1271437))))

(assert (= (and b!4164001 (is-ElementMatch!12440 (regex!7535 r!4097))) b!4164313))

(assert (= (and b!4164001 (is-Concat!20206 (regex!7535 r!4097))) b!4164314))

(assert (= (and b!4164001 (is-Star!12440 (regex!7535 r!4097))) b!4164315))

(assert (= (and b!4164001 (is-Union!12440 (regex!7535 r!4097))) b!4164316))

(declare-fun b_lambda!122263 () Bool)

(assert (= b_lambda!122259 (or (and b!4164014 b_free!120101 (= (toChars!10062 (transformation!7535 rBis!161)) (toChars!10062 (transformation!7535 r!4097)))) (and b!4164007 b_free!120105 (= (toChars!10062 (transformation!7535 (h!50982 rules!3820))) (toChars!10062 (transformation!7535 r!4097)))) (and b!4164018 b_free!120109) (and b!4164310 b_free!120125 (= (toChars!10062 (transformation!7535 (h!50982 (t!343869 rules!3820)))) (toChars!10062 (transformation!7535 r!4097)))) b_lambda!122263)))

(declare-fun b_lambda!122265 () Bool)

(assert (= b_lambda!122261 (or (and b!4164014 b_free!120099 (= (toValue!10203 (transformation!7535 rBis!161)) (toValue!10203 (transformation!7535 r!4097)))) (and b!4164007 b_free!120103 (= (toValue!10203 (transformation!7535 (h!50982 rules!3820))) (toValue!10203 (transformation!7535 r!4097)))) (and b!4164018 b_free!120107) (and b!4164310 b_free!120123 (= (toValue!10203 (transformation!7535 (h!50982 (t!343869 rules!3820)))) (toValue!10203 (transformation!7535 r!4097)))) b_lambda!122265)))

(declare-fun b_lambda!122267 () Bool)

(assert (= b_lambda!122257 (or (and b!4164014 b_free!120099 (= (toValue!10203 (transformation!7535 rBis!161)) (toValue!10203 (transformation!7535 r!4097)))) (and b!4164007 b_free!120103 (= (toValue!10203 (transformation!7535 (h!50982 rules!3820))) (toValue!10203 (transformation!7535 r!4097)))) (and b!4164018 b_free!120107) (and b!4164310 b_free!120123 (= (toValue!10203 (transformation!7535 (h!50982 (t!343869 rules!3820)))) (toValue!10203 (transformation!7535 r!4097)))) b_lambda!122267)))

(push 1)

(assert tp_is_empty!21843)

(assert (not b!4164089))

(assert (not b!4164205))

(assert (not b_next!120805))

(assert b_and!324681)

(assert (not b!4164202))

(assert (not b_next!120811))

(assert (not b!4164311))

(assert (not b!4164276))

(assert (not b!4164142))

(assert b_and!324689)

(assert (not b!4164316))

(assert (not b!4164097))

(assert (not b!4164312))

(assert (not b!4164298))

(assert (not b!4164308))

(assert (not b!4164299))

(assert (not d!1230805))

(assert b_and!324691)

(assert (not d!1230799))

(assert (not b_next!120807))

(assert (not d!1230835))

(assert (not b!4164309))

(assert (not b!4164206))

(assert (not b!4164314))

(assert (not b!4164289))

(assert (not b!4164176))

(assert (not b!4164083))

(assert (not b!4164181))

(assert (not b!4164211))

(assert (not b!4164271))

(assert (not b!4164203))

(assert (not b!4164207))

(assert (not d!1230813))

(assert (not d!1230773))

(assert (not bm!290950))

(assert (not b!4164164))

(assert b_and!324687)

(assert (not d!1230789))

(assert (not b!4164147))

(assert (not d!1230775))

(assert (not b!4164161))

(assert (not b!4164090))

(assert (not b!4164150))

(assert (not b_lambda!122267))

(assert (not b!4164274))

(assert (not b!4164315))

(assert (not b!4164180))

(assert (not b!4164096))

(assert (not d!1230821))

(assert b_and!324679)

(assert (not b!4164148))

(assert (not d!1230787))

(assert (not b!4164140))

(assert (not b!4164297))

(assert (not d!1230779))

(assert (not b_next!120829))

(assert (not d!1230797))

(assert (not b!4164290))

(assert b_and!324683)

(assert (not b!4164201))

(assert (not b!4164182))

(assert (not b_next!120809))

(assert (not d!1230819))

(assert (not tb!249409))

(assert (not d!1230833))

(assert (not b_next!120803))

(assert (not b!4164204))

(assert (not b_lambda!122263))

(assert (not b!4164275))

(assert (not b!4164288))

(assert b_and!324677)

(assert (not b!4164145))

(assert (not b_next!120813))

(assert (not b!4164266))

(assert (not tb!249415))

(assert (not b!4164295))

(assert b_and!324685)

(assert (not b_lambda!122265))

(assert (not b!4164209))

(assert (not b!4164158))

(assert (not b!4164178))

(assert (not b!4164166))

(assert (not d!1230807))

(assert (not b!4164177))

(assert (not b_next!120827))

(check-sat)

(pop 1)

(push 1)

(assert b_and!324681)

(assert (not b_next!120811))

(assert b_and!324689)

(assert b_and!324691)

(assert (not b_next!120807))

(assert b_and!324687)

(assert b_and!324679)

(assert (not b_next!120829))

(assert b_and!324683)

(assert (not b_next!120805))

(assert b_and!324685)

(assert (not b_next!120827))

(assert (not b_next!120809))

(assert (not b_next!120803))

(assert b_and!324677)

(assert (not b_next!120813))

(check-sat)

(pop 1)

