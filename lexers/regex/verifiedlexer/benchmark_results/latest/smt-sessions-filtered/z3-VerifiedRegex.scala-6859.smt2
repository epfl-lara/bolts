; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!360672 () Bool)

(assert start!360672)

(declare-fun b!3850411 () Bool)

(declare-fun b_free!103189 () Bool)

(declare-fun b_next!103893 () Bool)

(assert (=> b!3850411 (= b_free!103189 (not b_next!103893))))

(declare-fun tp!1167110 () Bool)

(declare-fun b_and!287547 () Bool)

(assert (=> b!3850411 (= tp!1167110 b_and!287547)))

(declare-fun b_free!103191 () Bool)

(declare-fun b_next!103895 () Bool)

(assert (=> b!3850411 (= b_free!103191 (not b_next!103895))))

(declare-fun tp!1167118 () Bool)

(declare-fun b_and!287549 () Bool)

(assert (=> b!3850411 (= tp!1167118 b_and!287549)))

(declare-fun b!3850427 () Bool)

(declare-fun b_free!103193 () Bool)

(declare-fun b_next!103897 () Bool)

(assert (=> b!3850427 (= b_free!103193 (not b_next!103897))))

(declare-fun tp!1167111 () Bool)

(declare-fun b_and!287551 () Bool)

(assert (=> b!3850427 (= tp!1167111 b_and!287551)))

(declare-fun b_free!103195 () Bool)

(declare-fun b_next!103899 () Bool)

(assert (=> b!3850427 (= b_free!103195 (not b_next!103899))))

(declare-fun tp!1167106 () Bool)

(declare-fun b_and!287553 () Bool)

(assert (=> b!3850427 (= tp!1167106 b_and!287553)))

(declare-fun b!3850409 () Bool)

(declare-fun b_free!103197 () Bool)

(declare-fun b_next!103901 () Bool)

(assert (=> b!3850409 (= b_free!103197 (not b_next!103901))))

(declare-fun tp!1167107 () Bool)

(declare-fun b_and!287555 () Bool)

(assert (=> b!3850409 (= tp!1167107 b_and!287555)))

(declare-fun b_free!103199 () Bool)

(declare-fun b_next!103903 () Bool)

(assert (=> b!3850409 (= b_free!103199 (not b_next!103903))))

(declare-fun tp!1167103 () Bool)

(declare-fun b_and!287557 () Bool)

(assert (=> b!3850409 (= tp!1167103 b_and!287557)))

(declare-fun e!2379914 () Bool)

(assert (=> b!3850409 (= e!2379914 (and tp!1167107 tp!1167103))))

(declare-fun b!3850410 () Bool)

(declare-fun res!1558702 () Bool)

(declare-fun e!2379920 () Bool)

(assert (=> b!3850410 (=> (not res!1558702) (not e!2379920))))

(declare-datatypes ((C!22608 0))(
  ( (C!22609 (val!13398 Int)) )
))
(declare-datatypes ((List!40922 0))(
  ( (Nil!40798) (Cons!40798 (h!46218 C!22608) (t!311777 List!40922)) )
))
(declare-fun prefix!426 () List!40922)

(declare-fun isEmpty!24144 (List!40922) Bool)

(assert (=> b!3850410 (= res!1558702 (not (isEmpty!24144 prefix!426)))))

(declare-fun e!2379912 () Bool)

(assert (=> b!3850411 (= e!2379912 (and tp!1167110 tp!1167118))))

(declare-fun tp!1167116 () Bool)

(declare-fun e!2379905 () Bool)

(declare-fun b!3850412 () Bool)

(declare-fun e!2379904 () Bool)

(declare-datatypes ((List!40923 0))(
  ( (Nil!40799) (Cons!40799 (h!46219 (_ BitVec 16)) (t!311778 List!40923)) )
))
(declare-datatypes ((TokenValue!6536 0))(
  ( (FloatLiteralValue!13072 (text!46197 List!40923)) (TokenValueExt!6535 (__x!25289 Int)) (Broken!32680 (value!200329 List!40923)) (Object!6659) (End!6536) (Def!6536) (Underscore!6536) (Match!6536) (Else!6536) (Error!6536) (Case!6536) (If!6536) (Extends!6536) (Abstract!6536) (Class!6536) (Val!6536) (DelimiterValue!13072 (del!6596 List!40923)) (KeywordValue!6542 (value!200330 List!40923)) (CommentValue!13072 (value!200331 List!40923)) (WhitespaceValue!13072 (value!200332 List!40923)) (IndentationValue!6536 (value!200333 List!40923)) (String!46397) (Int32!6536) (Broken!32681 (value!200334 List!40923)) (Boolean!6537) (Unit!58473) (OperatorValue!6539 (op!6596 List!40923)) (IdentifierValue!13072 (value!200335 List!40923)) (IdentifierValue!13073 (value!200336 List!40923)) (WhitespaceValue!13073 (value!200337 List!40923)) (True!13072) (False!13072) (Broken!32682 (value!200338 List!40923)) (Broken!32683 (value!200339 List!40923)) (True!13073) (RightBrace!6536) (RightBracket!6536) (Colon!6536) (Null!6536) (Comma!6536) (LeftBracket!6536) (False!13073) (LeftBrace!6536) (ImaginaryLiteralValue!6536 (text!46198 List!40923)) (StringLiteralValue!19608 (value!200340 List!40923)) (EOFValue!6536 (value!200341 List!40923)) (IdentValue!6536 (value!200342 List!40923)) (DelimiterValue!13073 (value!200343 List!40923)) (DedentValue!6536 (value!200344 List!40923)) (NewLineValue!6536 (value!200345 List!40923)) (IntegerValue!19608 (value!200346 (_ BitVec 32)) (text!46199 List!40923)) (IntegerValue!19609 (value!200347 Int) (text!46200 List!40923)) (Times!6536) (Or!6536) (Equal!6536) (Minus!6536) (Broken!32684 (value!200348 List!40923)) (And!6536) (Div!6536) (LessEqual!6536) (Mod!6536) (Concat!17747) (Not!6536) (Plus!6536) (SpaceValue!6536 (value!200349 List!40923)) (IntegerValue!19610 (value!200350 Int) (text!46201 List!40923)) (StringLiteralValue!19609 (text!46202 List!40923)) (FloatLiteralValue!13073 (text!46203 List!40923)) (BytesLiteralValue!6536 (value!200351 List!40923)) (CommentValue!13073 (value!200352 List!40923)) (StringLiteralValue!19610 (value!200353 List!40923)) (ErrorTokenValue!6536 (msg!6597 List!40923)) )
))
(declare-datatypes ((Regex!11211 0))(
  ( (ElementMatch!11211 (c!670622 C!22608)) (Concat!17748 (regOne!22934 Regex!11211) (regTwo!22934 Regex!11211)) (EmptyExpr!11211) (Star!11211 (reg!11540 Regex!11211)) (EmptyLang!11211) (Union!11211 (regOne!22935 Regex!11211) (regTwo!22935 Regex!11211)) )
))
(declare-datatypes ((String!46398 0))(
  ( (String!46399 (value!200354 String)) )
))
(declare-datatypes ((IArray!25039 0))(
  ( (IArray!25040 (innerList!12577 List!40922)) )
))
(declare-datatypes ((Conc!12517 0))(
  ( (Node!12517 (left!31468 Conc!12517) (right!31798 Conc!12517) (csize!25264 Int) (cheight!12728 Int)) (Leaf!19377 (xs!15823 IArray!25039) (csize!25265 Int)) (Empty!12517) )
))
(declare-datatypes ((BalanceConc!24628 0))(
  ( (BalanceConc!24629 (c!670623 Conc!12517)) )
))
(declare-datatypes ((TokenValueInjection!12500 0))(
  ( (TokenValueInjection!12501 (toValue!8726 Int) (toChars!8585 Int)) )
))
(declare-datatypes ((Rule!12412 0))(
  ( (Rule!12413 (regex!6306 Regex!11211) (tag!7166 String!46398) (isSeparator!6306 Bool) (transformation!6306 TokenValueInjection!12500)) )
))
(declare-datatypes ((Token!11750 0))(
  ( (Token!11751 (value!200355 TokenValue!6536) (rule!9158 Rule!12412) (size!30689 Int) (originalCharacters!6906 List!40922)) )
))
(declare-datatypes ((List!40924 0))(
  ( (Nil!40800) (Cons!40800 (h!46220 Token!11750) (t!311779 List!40924)) )
))
(declare-fun suffixTokens!72 () List!40924)

(declare-fun inv!54948 (Token!11750) Bool)

(assert (=> b!3850412 (= e!2379905 (and (inv!54948 (h!46220 suffixTokens!72)) e!2379904 tp!1167116))))

(declare-fun e!2379910 () Bool)

(declare-fun e!2379903 () Bool)

(declare-fun prefixTokens!80 () List!40924)

(declare-fun b!3850413 () Bool)

(declare-fun tp!1167112 () Bool)

(assert (=> b!3850413 (= e!2379903 (and (inv!54948 (h!46220 prefixTokens!80)) e!2379910 tp!1167112))))

(declare-fun b!3850414 () Bool)

(declare-fun e!2379915 () Bool)

(declare-fun e!2379907 () Bool)

(assert (=> b!3850414 (= e!2379915 e!2379907)))

(declare-fun res!1558704 () Bool)

(assert (=> b!3850414 (=> res!1558704 e!2379907)))

(declare-datatypes ((tuple2!39986 0))(
  ( (tuple2!39987 (_1!23127 Token!11750) (_2!23127 List!40922)) )
))
(declare-datatypes ((Option!8724 0))(
  ( (None!8723) (Some!8723 (v!39017 tuple2!39986)) )
))
(declare-fun lt!1337305 () Option!8724)

(declare-fun lt!1337308 () List!40922)

(declare-fun matchR!5358 (Regex!11211 List!40922) Bool)

(assert (=> b!3850414 (= res!1558704 (not (matchR!5358 (regex!6306 (rule!9158 (_1!23127 (v!39017 lt!1337305)))) lt!1337308)))))

(declare-fun lt!1337304 () Int)

(declare-datatypes ((LexerInterface!5895 0))(
  ( (LexerInterfaceExt!5892 (__x!25290 Int)) (Lexer!5893) )
))
(declare-fun thiss!20629 () LexerInterface!5895)

(declare-fun lt!1337313 () TokenValue!6536)

(declare-fun lt!1337299 () List!40922)

(declare-fun maxPrefixOneRule!2281 (LexerInterface!5895 Rule!12412 List!40922) Option!8724)

(assert (=> b!3850414 (= (maxPrefixOneRule!2281 thiss!20629 (rule!9158 (_1!23127 (v!39017 lt!1337305))) lt!1337299) (Some!8723 (tuple2!39987 (Token!11751 lt!1337313 (rule!9158 (_1!23127 (v!39017 lt!1337305))) lt!1337304 lt!1337308) (_2!23127 (v!39017 lt!1337305)))))))

(declare-datatypes ((List!40925 0))(
  ( (Nil!40801) (Cons!40801 (h!46221 Rule!12412) (t!311780 List!40925)) )
))
(declare-fun rules!2768 () List!40925)

(declare-datatypes ((Unit!58474 0))(
  ( (Unit!58475) )
))
(declare-fun lt!1337309 () Unit!58474)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1179 (LexerInterface!5895 List!40925 List!40922 List!40922 List!40922 Rule!12412) Unit!58474)

(assert (=> b!3850414 (= lt!1337309 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1179 thiss!20629 rules!2768 lt!1337308 lt!1337299 (_2!23127 (v!39017 lt!1337305)) (rule!9158 (_1!23127 (v!39017 lt!1337305)))))))

(declare-fun tp!1167114 () Bool)

(declare-fun e!2379926 () Bool)

(declare-fun b!3850415 () Bool)

(declare-fun inv!54945 (String!46398) Bool)

(declare-fun inv!54949 (TokenValueInjection!12500) Bool)

(assert (=> b!3850415 (= e!2379926 (and tp!1167114 (inv!54945 (tag!7166 (rule!9158 (h!46220 prefixTokens!80)))) (inv!54949 (transformation!6306 (rule!9158 (h!46220 prefixTokens!80)))) e!2379912))))

(declare-fun b!3850416 () Bool)

(declare-fun e!2379909 () Bool)

(assert (=> b!3850416 (= e!2379920 e!2379909)))

(declare-fun res!1558713 () Bool)

(assert (=> b!3850416 (=> (not res!1558713) (not e!2379909))))

(declare-fun lt!1337302 () List!40924)

(declare-datatypes ((tuple2!39988 0))(
  ( (tuple2!39989 (_1!23128 List!40924) (_2!23128 List!40922)) )
))
(declare-fun lt!1337303 () tuple2!39988)

(declare-fun suffixResult!91 () List!40922)

(assert (=> b!3850416 (= res!1558713 (= lt!1337303 (tuple2!39989 lt!1337302 suffixResult!91)))))

(declare-fun lexList!1663 (LexerInterface!5895 List!40925 List!40922) tuple2!39988)

(assert (=> b!3850416 (= lt!1337303 (lexList!1663 thiss!20629 rules!2768 lt!1337299))))

(declare-fun ++!10369 (List!40924 List!40924) List!40924)

(assert (=> b!3850416 (= lt!1337302 (++!10369 prefixTokens!80 suffixTokens!72))))

(declare-fun suffix!1176 () List!40922)

(declare-fun ++!10370 (List!40922 List!40922) List!40922)

(assert (=> b!3850416 (= lt!1337299 (++!10370 prefix!426 suffix!1176))))

(declare-fun tp!1167113 () Bool)

(declare-fun b!3850417 () Bool)

(declare-fun e!2379917 () Bool)

(declare-fun inv!21 (TokenValue!6536) Bool)

(assert (=> b!3850417 (= e!2379904 (and (inv!21 (value!200355 (h!46220 suffixTokens!72))) e!2379917 tp!1167113))))

(declare-fun b!3850418 () Bool)

(declare-fun e!2379924 () Bool)

(declare-fun e!2379922 () Bool)

(declare-fun tp!1167104 () Bool)

(assert (=> b!3850418 (= e!2379924 (and e!2379922 tp!1167104))))

(declare-fun b!3850419 () Bool)

(declare-fun e!2379908 () Bool)

(declare-fun tp_is_empty!19393 () Bool)

(declare-fun tp!1167105 () Bool)

(assert (=> b!3850419 (= e!2379908 (and tp_is_empty!19393 tp!1167105))))

(declare-fun b!3850420 () Bool)

(declare-fun e!2379919 () Bool)

(declare-fun e!2379918 () Bool)

(assert (=> b!3850420 (= e!2379919 e!2379918)))

(declare-fun res!1558700 () Bool)

(assert (=> b!3850420 (=> res!1558700 e!2379918)))

(declare-fun lt!1337315 () Int)

(declare-fun lt!1337297 () Int)

(assert (=> b!3850420 (= res!1558700 (not (= (+ lt!1337304 lt!1337297) lt!1337315)))))

(declare-fun size!30690 (List!40922) Int)

(assert (=> b!3850420 (= lt!1337315 (size!30690 lt!1337299))))

(declare-fun b!3850421 () Bool)

(declare-fun tp!1167115 () Bool)

(assert (=> b!3850421 (= e!2379910 (and (inv!21 (value!200355 (h!46220 prefixTokens!80))) e!2379926 tp!1167115))))

(declare-fun b!3850422 () Bool)

(declare-fun res!1558699 () Bool)

(assert (=> b!3850422 (=> (not res!1558699) (not e!2379909))))

(assert (=> b!3850422 (= res!1558699 (= (lexList!1663 thiss!20629 rules!2768 suffix!1176) (tuple2!39989 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3850423 () Bool)

(declare-fun e!2379911 () Bool)

(declare-fun tp!1167109 () Bool)

(assert (=> b!3850423 (= e!2379911 (and tp_is_empty!19393 tp!1167109))))

(declare-fun b!3850424 () Bool)

(declare-fun tp!1167108 () Bool)

(assert (=> b!3850424 (= e!2379922 (and tp!1167108 (inv!54945 (tag!7166 (h!46221 rules!2768))) (inv!54949 (transformation!6306 (h!46221 rules!2768))) e!2379914))))

(declare-fun b!3850425 () Bool)

(declare-fun e!2379901 () Bool)

(declare-fun tp!1167102 () Bool)

(assert (=> b!3850425 (= e!2379901 (and tp_is_empty!19393 tp!1167102))))

(declare-fun b!3850426 () Bool)

(assert (=> b!3850426 (= e!2379907 (not (= prefixTokens!80 Nil!40800)))))

(declare-fun e!2379913 () Bool)

(assert (=> b!3850427 (= e!2379913 (and tp!1167111 tp!1167106))))

(declare-fun b!3850428 () Bool)

(declare-fun res!1558706 () Bool)

(assert (=> b!3850428 (=> (not res!1558706) (not e!2379920))))

(declare-fun rulesInvariant!5238 (LexerInterface!5895 List!40925) Bool)

(assert (=> b!3850428 (= res!1558706 (rulesInvariant!5238 thiss!20629 rules!2768))))

(declare-fun b!3850429 () Bool)

(declare-fun e!2379923 () Bool)

(assert (=> b!3850429 (= e!2379923 (= (size!30689 (_1!23127 (v!39017 lt!1337305))) (size!30690 (originalCharacters!6906 (_1!23127 (v!39017 lt!1337305))))))))

(declare-fun b!3850430 () Bool)

(declare-fun res!1558707 () Bool)

(declare-fun e!2379902 () Bool)

(assert (=> b!3850430 (=> res!1558707 e!2379902)))

(declare-fun lt!1337311 () tuple2!39988)

(assert (=> b!3850430 (= res!1558707 (or (not (= lt!1337311 (tuple2!39989 (_1!23128 lt!1337311) (_2!23128 lt!1337311)))) (= (_2!23127 (v!39017 lt!1337305)) suffix!1176)))))

(declare-fun b!3850431 () Bool)

(declare-fun res!1558698 () Bool)

(assert (=> b!3850431 (=> (not res!1558698) (not e!2379920))))

(declare-fun isEmpty!24145 (List!40924) Bool)

(assert (=> b!3850431 (= res!1558698 (not (isEmpty!24145 prefixTokens!80)))))

(declare-fun b!3850432 () Bool)

(declare-fun e!2379899 () Bool)

(assert (=> b!3850432 (= e!2379909 e!2379899)))

(declare-fun res!1558709 () Bool)

(assert (=> b!3850432 (=> (not res!1558709) (not e!2379899))))

(get-info :version)

(assert (=> b!3850432 (= res!1558709 ((_ is Some!8723) lt!1337305))))

(declare-fun maxPrefix!3199 (LexerInterface!5895 List!40925 List!40922) Option!8724)

(assert (=> b!3850432 (= lt!1337305 (maxPrefix!3199 thiss!20629 rules!2768 lt!1337299))))

(declare-fun b!3850433 () Bool)

(assert (=> b!3850433 (= e!2379902 e!2379919)))

(declare-fun res!1558711 () Bool)

(assert (=> b!3850433 (=> res!1558711 e!2379919)))

(declare-fun lt!1337298 () Int)

(assert (=> b!3850433 (= res!1558711 (>= lt!1337297 lt!1337298))))

(assert (=> b!3850433 (= lt!1337298 (size!30690 suffix!1176))))

(assert (=> b!3850433 (= lt!1337297 (size!30690 (_2!23127 (v!39017 lt!1337305))))))

(declare-fun b!3850434 () Bool)

(assert (=> b!3850434 (= e!2379918 e!2379915)))

(declare-fun res!1558712 () Bool)

(assert (=> b!3850434 (=> res!1558712 e!2379915)))

(declare-fun lt!1337306 () Int)

(assert (=> b!3850434 (= res!1558712 (or (not (= (+ lt!1337306 lt!1337298) lt!1337315)) (<= lt!1337304 lt!1337306)))))

(assert (=> b!3850434 (= lt!1337306 (size!30690 prefix!426))))

(declare-fun res!1558708 () Bool)

(assert (=> start!360672 (=> (not res!1558708) (not e!2379920))))

(assert (=> start!360672 (= res!1558708 ((_ is Lexer!5893) thiss!20629))))

(assert (=> start!360672 e!2379920))

(assert (=> start!360672 e!2379901))

(assert (=> start!360672 true))

(assert (=> start!360672 e!2379911))

(assert (=> start!360672 e!2379924))

(assert (=> start!360672 e!2379903))

(assert (=> start!360672 e!2379905))

(assert (=> start!360672 e!2379908))

(declare-fun b!3850435 () Bool)

(declare-fun res!1558701 () Bool)

(assert (=> b!3850435 (=> (not res!1558701) (not e!2379920))))

(declare-fun isEmpty!24146 (List!40925) Bool)

(assert (=> b!3850435 (= res!1558701 (not (isEmpty!24146 rules!2768)))))

(declare-fun b!3850436 () Bool)

(assert (=> b!3850436 (= e!2379899 (not e!2379902))))

(declare-fun res!1558703 () Bool)

(assert (=> b!3850436 (=> res!1558703 e!2379902)))

(declare-fun lt!1337301 () List!40922)

(assert (=> b!3850436 (= res!1558703 (not (= lt!1337301 lt!1337299)))))

(assert (=> b!3850436 (= lt!1337311 (lexList!1663 thiss!20629 rules!2768 (_2!23127 (v!39017 lt!1337305))))))

(declare-fun lt!1337307 () List!40922)

(assert (=> b!3850436 (and (= (size!30689 (_1!23127 (v!39017 lt!1337305))) lt!1337304) (= (originalCharacters!6906 (_1!23127 (v!39017 lt!1337305))) lt!1337308) (= (v!39017 lt!1337305) (tuple2!39987 (Token!11751 lt!1337313 (rule!9158 (_1!23127 (v!39017 lt!1337305))) lt!1337304 lt!1337308) lt!1337307)))))

(assert (=> b!3850436 (= lt!1337304 (size!30690 lt!1337308))))

(assert (=> b!3850436 e!2379923))

(declare-fun res!1558705 () Bool)

(assert (=> b!3850436 (=> (not res!1558705) (not e!2379923))))

(assert (=> b!3850436 (= res!1558705 (= (value!200355 (_1!23127 (v!39017 lt!1337305))) lt!1337313))))

(declare-fun apply!9549 (TokenValueInjection!12500 BalanceConc!24628) TokenValue!6536)

(declare-fun seqFromList!4577 (List!40922) BalanceConc!24628)

(assert (=> b!3850436 (= lt!1337313 (apply!9549 (transformation!6306 (rule!9158 (_1!23127 (v!39017 lt!1337305)))) (seqFromList!4577 lt!1337308)))))

(assert (=> b!3850436 (= (_2!23127 (v!39017 lt!1337305)) lt!1337307)))

(declare-fun lt!1337300 () Unit!58474)

(declare-fun lemmaSamePrefixThenSameSuffix!1626 (List!40922 List!40922 List!40922 List!40922 List!40922) Unit!58474)

(assert (=> b!3850436 (= lt!1337300 (lemmaSamePrefixThenSameSuffix!1626 lt!1337308 (_2!23127 (v!39017 lt!1337305)) lt!1337308 lt!1337307 lt!1337299))))

(declare-fun getSuffix!1860 (List!40922 List!40922) List!40922)

(assert (=> b!3850436 (= lt!1337307 (getSuffix!1860 lt!1337299 lt!1337308))))

(declare-fun isPrefix!3405 (List!40922 List!40922) Bool)

(assert (=> b!3850436 (isPrefix!3405 lt!1337308 lt!1337301)))

(assert (=> b!3850436 (= lt!1337301 (++!10370 lt!1337308 (_2!23127 (v!39017 lt!1337305))))))

(declare-fun lt!1337310 () Unit!58474)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2268 (List!40922 List!40922) Unit!58474)

(assert (=> b!3850436 (= lt!1337310 (lemmaConcatTwoListThenFirstIsPrefix!2268 lt!1337308 (_2!23127 (v!39017 lt!1337305))))))

(declare-fun list!15186 (BalanceConc!24628) List!40922)

(declare-fun charsOf!4134 (Token!11750) BalanceConc!24628)

(assert (=> b!3850436 (= lt!1337308 (list!15186 (charsOf!4134 (_1!23127 (v!39017 lt!1337305)))))))

(declare-fun ruleValid!2258 (LexerInterface!5895 Rule!12412) Bool)

(assert (=> b!3850436 (ruleValid!2258 thiss!20629 (rule!9158 (_1!23127 (v!39017 lt!1337305))))))

(declare-fun lt!1337312 () Unit!58474)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1338 (LexerInterface!5895 Rule!12412 List!40925) Unit!58474)

(assert (=> b!3850436 (= lt!1337312 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1338 thiss!20629 (rule!9158 (_1!23127 (v!39017 lt!1337305))) rules!2768))))

(declare-fun lt!1337314 () Unit!58474)

(declare-fun lemmaCharactersSize!967 (Token!11750) Unit!58474)

(assert (=> b!3850436 (= lt!1337314 (lemmaCharactersSize!967 (_1!23127 (v!39017 lt!1337305))))))

(declare-fun b!3850437 () Bool)

(declare-fun tp!1167117 () Bool)

(assert (=> b!3850437 (= e!2379917 (and tp!1167117 (inv!54945 (tag!7166 (rule!9158 (h!46220 suffixTokens!72)))) (inv!54949 (transformation!6306 (rule!9158 (h!46220 suffixTokens!72)))) e!2379913))))

(declare-fun b!3850438 () Bool)

(declare-fun res!1558710 () Bool)

(assert (=> b!3850438 (=> res!1558710 e!2379902)))

(assert (=> b!3850438 (= res!1558710 (not (= lt!1337303 (tuple2!39989 (++!10369 (Cons!40800 (_1!23127 (v!39017 lt!1337305)) Nil!40800) (_1!23128 lt!1337311)) (_2!23128 lt!1337311)))))))

(assert (= (and start!360672 res!1558708) b!3850435))

(assert (= (and b!3850435 res!1558701) b!3850428))

(assert (= (and b!3850428 res!1558706) b!3850431))

(assert (= (and b!3850431 res!1558698) b!3850410))

(assert (= (and b!3850410 res!1558702) b!3850416))

(assert (= (and b!3850416 res!1558713) b!3850422))

(assert (= (and b!3850422 res!1558699) b!3850432))

(assert (= (and b!3850432 res!1558709) b!3850436))

(assert (= (and b!3850436 res!1558705) b!3850429))

(assert (= (and b!3850436 (not res!1558703)) b!3850438))

(assert (= (and b!3850438 (not res!1558710)) b!3850430))

(assert (= (and b!3850430 (not res!1558707)) b!3850433))

(assert (= (and b!3850433 (not res!1558711)) b!3850420))

(assert (= (and b!3850420 (not res!1558700)) b!3850434))

(assert (= (and b!3850434 (not res!1558712)) b!3850414))

(assert (= (and b!3850414 (not res!1558704)) b!3850426))

(assert (= (and start!360672 ((_ is Cons!40798) suffixResult!91)) b!3850425))

(assert (= (and start!360672 ((_ is Cons!40798) suffix!1176)) b!3850423))

(assert (= b!3850424 b!3850409))

(assert (= b!3850418 b!3850424))

(assert (= (and start!360672 ((_ is Cons!40801) rules!2768)) b!3850418))

(assert (= b!3850415 b!3850411))

(assert (= b!3850421 b!3850415))

(assert (= b!3850413 b!3850421))

(assert (= (and start!360672 ((_ is Cons!40800) prefixTokens!80)) b!3850413))

(assert (= b!3850437 b!3850427))

(assert (= b!3850417 b!3850437))

(assert (= b!3850412 b!3850417))

(assert (= (and start!360672 ((_ is Cons!40800) suffixTokens!72)) b!3850412))

(assert (= (and start!360672 ((_ is Cons!40798) prefix!426)) b!3850419))

(declare-fun m!4405413 () Bool)

(assert (=> b!3850410 m!4405413))

(declare-fun m!4405415 () Bool)

(assert (=> b!3850428 m!4405415))

(declare-fun m!4405417 () Bool)

(assert (=> b!3850436 m!4405417))

(declare-fun m!4405419 () Bool)

(assert (=> b!3850436 m!4405419))

(declare-fun m!4405421 () Bool)

(assert (=> b!3850436 m!4405421))

(declare-fun m!4405423 () Bool)

(assert (=> b!3850436 m!4405423))

(declare-fun m!4405425 () Bool)

(assert (=> b!3850436 m!4405425))

(declare-fun m!4405427 () Bool)

(assert (=> b!3850436 m!4405427))

(declare-fun m!4405429 () Bool)

(assert (=> b!3850436 m!4405429))

(declare-fun m!4405431 () Bool)

(assert (=> b!3850436 m!4405431))

(declare-fun m!4405433 () Bool)

(assert (=> b!3850436 m!4405433))

(declare-fun m!4405435 () Bool)

(assert (=> b!3850436 m!4405435))

(assert (=> b!3850436 m!4405419))

(declare-fun m!4405437 () Bool)

(assert (=> b!3850436 m!4405437))

(assert (=> b!3850436 m!4405433))

(declare-fun m!4405439 () Bool)

(assert (=> b!3850436 m!4405439))

(declare-fun m!4405441 () Bool)

(assert (=> b!3850436 m!4405441))

(declare-fun m!4405443 () Bool)

(assert (=> b!3850436 m!4405443))

(declare-fun m!4405445 () Bool)

(assert (=> b!3850413 m!4405445))

(declare-fun m!4405447 () Bool)

(assert (=> b!3850416 m!4405447))

(declare-fun m!4405449 () Bool)

(assert (=> b!3850416 m!4405449))

(declare-fun m!4405451 () Bool)

(assert (=> b!3850416 m!4405451))

(declare-fun m!4405453 () Bool)

(assert (=> b!3850438 m!4405453))

(declare-fun m!4405455 () Bool)

(assert (=> b!3850415 m!4405455))

(declare-fun m!4405457 () Bool)

(assert (=> b!3850415 m!4405457))

(declare-fun m!4405459 () Bool)

(assert (=> b!3850435 m!4405459))

(declare-fun m!4405461 () Bool)

(assert (=> b!3850434 m!4405461))

(declare-fun m!4405463 () Bool)

(assert (=> b!3850433 m!4405463))

(declare-fun m!4405465 () Bool)

(assert (=> b!3850433 m!4405465))

(declare-fun m!4405467 () Bool)

(assert (=> b!3850412 m!4405467))

(declare-fun m!4405469 () Bool)

(assert (=> b!3850429 m!4405469))

(declare-fun m!4405471 () Bool)

(assert (=> b!3850417 m!4405471))

(declare-fun m!4405473 () Bool)

(assert (=> b!3850424 m!4405473))

(declare-fun m!4405475 () Bool)

(assert (=> b!3850424 m!4405475))

(declare-fun m!4405477 () Bool)

(assert (=> b!3850414 m!4405477))

(declare-fun m!4405479 () Bool)

(assert (=> b!3850414 m!4405479))

(declare-fun m!4405481 () Bool)

(assert (=> b!3850414 m!4405481))

(declare-fun m!4405483 () Bool)

(assert (=> b!3850437 m!4405483))

(declare-fun m!4405485 () Bool)

(assert (=> b!3850437 m!4405485))

(declare-fun m!4405487 () Bool)

(assert (=> b!3850421 m!4405487))

(declare-fun m!4405489 () Bool)

(assert (=> b!3850420 m!4405489))

(declare-fun m!4405491 () Bool)

(assert (=> b!3850431 m!4405491))

(declare-fun m!4405493 () Bool)

(assert (=> b!3850422 m!4405493))

(declare-fun m!4405495 () Bool)

(assert (=> b!3850432 m!4405495))

(check-sat (not b!3850417) (not b!3850418) (not b!3850412) (not b!3850433) (not b_next!103899) b_and!287553 (not b!3850422) b_and!287549 (not b!3850437) (not b_next!103897) tp_is_empty!19393 (not b!3850424) b_and!287557 (not b!3850419) b_and!287555 (not b!3850416) (not b!3850436) b_and!287551 (not b!3850414) (not b_next!103903) b_and!287547 (not b_next!103901) (not b!3850410) (not b!3850423) (not b!3850413) (not b!3850434) (not b!3850425) (not b!3850431) (not b!3850421) (not b!3850415) (not b!3850432) (not b!3850420) (not b!3850428) (not b_next!103895) (not b!3850438) (not b!3850429) (not b!3850435) (not b_next!103893))
(check-sat b_and!287557 b_and!287555 b_and!287551 (not b_next!103901) (not b_next!103899) b_and!287553 b_and!287549 (not b_next!103895) (not b_next!103893) (not b_next!103897) (not b_next!103903) b_and!287547)
(get-model)

(declare-fun b!3850456 () Bool)

(declare-fun e!2379936 () Bool)

(declare-fun lt!1337325 () tuple2!39988)

(assert (=> b!3850456 (= e!2379936 (= (_2!23128 lt!1337325) suffix!1176))))

(declare-fun b!3850457 () Bool)

(declare-fun e!2379937 () tuple2!39988)

(declare-fun lt!1337326 () Option!8724)

(declare-fun lt!1337327 () tuple2!39988)

(assert (=> b!3850457 (= e!2379937 (tuple2!39989 (Cons!40800 (_1!23127 (v!39017 lt!1337326)) (_1!23128 lt!1337327)) (_2!23128 lt!1337327)))))

(assert (=> b!3850457 (= lt!1337327 (lexList!1663 thiss!20629 rules!2768 (_2!23127 (v!39017 lt!1337326))))))

(declare-fun b!3850458 () Bool)

(assert (=> b!3850458 (= e!2379937 (tuple2!39989 Nil!40800 suffix!1176))))

(declare-fun b!3850459 () Bool)

(declare-fun e!2379938 () Bool)

(assert (=> b!3850459 (= e!2379938 (not (isEmpty!24145 (_1!23128 lt!1337325))))))

(declare-fun b!3850455 () Bool)

(assert (=> b!3850455 (= e!2379936 e!2379938)))

(declare-fun res!1558721 () Bool)

(assert (=> b!3850455 (= res!1558721 (< (size!30690 (_2!23128 lt!1337325)) (size!30690 suffix!1176)))))

(assert (=> b!3850455 (=> (not res!1558721) (not e!2379938))))

(declare-fun d!1141608 () Bool)

(assert (=> d!1141608 e!2379936))

(declare-fun c!670632 () Bool)

(declare-fun size!30692 (List!40924) Int)

(assert (=> d!1141608 (= c!670632 (> (size!30692 (_1!23128 lt!1337325)) 0))))

(assert (=> d!1141608 (= lt!1337325 e!2379937)))

(declare-fun c!670631 () Bool)

(assert (=> d!1141608 (= c!670631 ((_ is Some!8723) lt!1337326))))

(assert (=> d!1141608 (= lt!1337326 (maxPrefix!3199 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1141608 (= (lexList!1663 thiss!20629 rules!2768 suffix!1176) lt!1337325)))

(assert (= (and d!1141608 c!670631) b!3850457))

(assert (= (and d!1141608 (not c!670631)) b!3850458))

(assert (= (and d!1141608 c!670632) b!3850455))

(assert (= (and d!1141608 (not c!670632)) b!3850456))

(assert (= (and b!3850455 res!1558721) b!3850459))

(declare-fun m!4405499 () Bool)

(assert (=> b!3850457 m!4405499))

(declare-fun m!4405501 () Bool)

(assert (=> b!3850459 m!4405501))

(declare-fun m!4405503 () Bool)

(assert (=> b!3850455 m!4405503))

(assert (=> b!3850455 m!4405463))

(declare-fun m!4405505 () Bool)

(assert (=> d!1141608 m!4405505))

(declare-fun m!4405507 () Bool)

(assert (=> d!1141608 m!4405507))

(assert (=> b!3850422 d!1141608))

(declare-fun d!1141614 () Bool)

(declare-fun lt!1337332 () Int)

(assert (=> d!1141614 (>= lt!1337332 0)))

(declare-fun e!2379945 () Int)

(assert (=> d!1141614 (= lt!1337332 e!2379945)))

(declare-fun c!670637 () Bool)

(assert (=> d!1141614 (= c!670637 ((_ is Nil!40798) suffix!1176))))

(assert (=> d!1141614 (= (size!30690 suffix!1176) lt!1337332)))

(declare-fun b!3850472 () Bool)

(assert (=> b!3850472 (= e!2379945 0)))

(declare-fun b!3850473 () Bool)

(assert (=> b!3850473 (= e!2379945 (+ 1 (size!30690 (t!311777 suffix!1176))))))

(assert (= (and d!1141614 c!670637) b!3850472))

(assert (= (and d!1141614 (not c!670637)) b!3850473))

(declare-fun m!4405509 () Bool)

(assert (=> b!3850473 m!4405509))

(assert (=> b!3850433 d!1141614))

(declare-fun d!1141616 () Bool)

(declare-fun lt!1337333 () Int)

(assert (=> d!1141616 (>= lt!1337333 0)))

(declare-fun e!2379946 () Int)

(assert (=> d!1141616 (= lt!1337333 e!2379946)))

(declare-fun c!670638 () Bool)

(assert (=> d!1141616 (= c!670638 ((_ is Nil!40798) (_2!23127 (v!39017 lt!1337305))))))

(assert (=> d!1141616 (= (size!30690 (_2!23127 (v!39017 lt!1337305))) lt!1337333)))

(declare-fun b!3850474 () Bool)

(assert (=> b!3850474 (= e!2379946 0)))

(declare-fun b!3850475 () Bool)

(assert (=> b!3850475 (= e!2379946 (+ 1 (size!30690 (t!311777 (_2!23127 (v!39017 lt!1337305))))))))

(assert (= (and d!1141616 c!670638) b!3850474))

(assert (= (and d!1141616 (not c!670638)) b!3850475))

(declare-fun m!4405511 () Bool)

(assert (=> b!3850475 m!4405511))

(assert (=> b!3850433 d!1141616))

(declare-fun b!3850564 () Bool)

(declare-fun res!1558777 () Bool)

(declare-fun e!2379999 () Bool)

(assert (=> b!3850564 (=> (not res!1558777) (not e!2379999))))

(declare-fun lt!1337379 () Option!8724)

(declare-fun get!13498 (Option!8724) tuple2!39986)

(assert (=> b!3850564 (= res!1558777 (= (list!15186 (charsOf!4134 (_1!23127 (get!13498 lt!1337379)))) (originalCharacters!6906 (_1!23127 (get!13498 lt!1337379)))))))

(declare-fun b!3850565 () Bool)

(declare-fun contains!8249 (List!40925 Rule!12412) Bool)

(assert (=> b!3850565 (= e!2379999 (contains!8249 rules!2768 (rule!9158 (_1!23127 (get!13498 lt!1337379)))))))

(declare-fun b!3850566 () Bool)

(declare-fun res!1558775 () Bool)

(assert (=> b!3850566 (=> (not res!1558775) (not e!2379999))))

(assert (=> b!3850566 (= res!1558775 (= (value!200355 (_1!23127 (get!13498 lt!1337379))) (apply!9549 (transformation!6306 (rule!9158 (_1!23127 (get!13498 lt!1337379)))) (seqFromList!4577 (originalCharacters!6906 (_1!23127 (get!13498 lt!1337379)))))))))

(declare-fun bm!282222 () Bool)

(declare-fun call!282227 () Option!8724)

(assert (=> bm!282222 (= call!282227 (maxPrefixOneRule!2281 thiss!20629 (h!46221 rules!2768) lt!1337299))))

(declare-fun b!3850567 () Bool)

(declare-fun res!1558778 () Bool)

(assert (=> b!3850567 (=> (not res!1558778) (not e!2379999))))

(assert (=> b!3850567 (= res!1558778 (= (++!10370 (list!15186 (charsOf!4134 (_1!23127 (get!13498 lt!1337379)))) (_2!23127 (get!13498 lt!1337379))) lt!1337299))))

(declare-fun d!1141618 () Bool)

(declare-fun e!2379997 () Bool)

(assert (=> d!1141618 e!2379997))

(declare-fun res!1558779 () Bool)

(assert (=> d!1141618 (=> res!1558779 e!2379997)))

(declare-fun isEmpty!24147 (Option!8724) Bool)

(assert (=> d!1141618 (= res!1558779 (isEmpty!24147 lt!1337379))))

(declare-fun e!2379998 () Option!8724)

(assert (=> d!1141618 (= lt!1337379 e!2379998)))

(declare-fun c!670656 () Bool)

(assert (=> d!1141618 (= c!670656 (and ((_ is Cons!40801) rules!2768) ((_ is Nil!40801) (t!311780 rules!2768))))))

(declare-fun lt!1337378 () Unit!58474)

(declare-fun lt!1337377 () Unit!58474)

(assert (=> d!1141618 (= lt!1337378 lt!1337377)))

(assert (=> d!1141618 (isPrefix!3405 lt!1337299 lt!1337299)))

(declare-fun lemmaIsPrefixRefl!2171 (List!40922 List!40922) Unit!58474)

(assert (=> d!1141618 (= lt!1337377 (lemmaIsPrefixRefl!2171 lt!1337299 lt!1337299))))

(declare-fun rulesValidInductive!2239 (LexerInterface!5895 List!40925) Bool)

(assert (=> d!1141618 (rulesValidInductive!2239 thiss!20629 rules!2768)))

(assert (=> d!1141618 (= (maxPrefix!3199 thiss!20629 rules!2768 lt!1337299) lt!1337379)))

(declare-fun b!3850568 () Bool)

(declare-fun res!1558773 () Bool)

(assert (=> b!3850568 (=> (not res!1558773) (not e!2379999))))

(assert (=> b!3850568 (= res!1558773 (matchR!5358 (regex!6306 (rule!9158 (_1!23127 (get!13498 lt!1337379)))) (list!15186 (charsOf!4134 (_1!23127 (get!13498 lt!1337379))))))))

(declare-fun b!3850569 () Bool)

(declare-fun lt!1337380 () Option!8724)

(declare-fun lt!1337381 () Option!8724)

(assert (=> b!3850569 (= e!2379998 (ite (and ((_ is None!8723) lt!1337380) ((_ is None!8723) lt!1337381)) None!8723 (ite ((_ is None!8723) lt!1337381) lt!1337380 (ite ((_ is None!8723) lt!1337380) lt!1337381 (ite (>= (size!30689 (_1!23127 (v!39017 lt!1337380))) (size!30689 (_1!23127 (v!39017 lt!1337381)))) lt!1337380 lt!1337381)))))))

(assert (=> b!3850569 (= lt!1337380 call!282227)))

(assert (=> b!3850569 (= lt!1337381 (maxPrefix!3199 thiss!20629 (t!311780 rules!2768) lt!1337299))))

(declare-fun b!3850570 () Bool)

(assert (=> b!3850570 (= e!2379997 e!2379999)))

(declare-fun res!1558776 () Bool)

(assert (=> b!3850570 (=> (not res!1558776) (not e!2379999))))

(declare-fun isDefined!6848 (Option!8724) Bool)

(assert (=> b!3850570 (= res!1558776 (isDefined!6848 lt!1337379))))

(declare-fun b!3850571 () Bool)

(assert (=> b!3850571 (= e!2379998 call!282227)))

(declare-fun b!3850572 () Bool)

(declare-fun res!1558774 () Bool)

(assert (=> b!3850572 (=> (not res!1558774) (not e!2379999))))

(assert (=> b!3850572 (= res!1558774 (< (size!30690 (_2!23127 (get!13498 lt!1337379))) (size!30690 lt!1337299)))))

(assert (= (and d!1141618 c!670656) b!3850571))

(assert (= (and d!1141618 (not c!670656)) b!3850569))

(assert (= (or b!3850571 b!3850569) bm!282222))

(assert (= (and d!1141618 (not res!1558779)) b!3850570))

(assert (= (and b!3850570 res!1558776) b!3850564))

(assert (= (and b!3850564 res!1558777) b!3850572))

(assert (= (and b!3850572 res!1558774) b!3850567))

(assert (= (and b!3850567 res!1558778) b!3850566))

(assert (= (and b!3850566 res!1558775) b!3850568))

(assert (= (and b!3850568 res!1558773) b!3850565))

(declare-fun m!4405619 () Bool)

(assert (=> b!3850568 m!4405619))

(declare-fun m!4405621 () Bool)

(assert (=> b!3850568 m!4405621))

(assert (=> b!3850568 m!4405621))

(declare-fun m!4405623 () Bool)

(assert (=> b!3850568 m!4405623))

(assert (=> b!3850568 m!4405623))

(declare-fun m!4405625 () Bool)

(assert (=> b!3850568 m!4405625))

(declare-fun m!4405627 () Bool)

(assert (=> b!3850569 m!4405627))

(assert (=> b!3850566 m!4405619))

(declare-fun m!4405629 () Bool)

(assert (=> b!3850566 m!4405629))

(assert (=> b!3850566 m!4405629))

(declare-fun m!4405631 () Bool)

(assert (=> b!3850566 m!4405631))

(assert (=> b!3850572 m!4405619))

(declare-fun m!4405633 () Bool)

(assert (=> b!3850572 m!4405633))

(assert (=> b!3850572 m!4405489))

(declare-fun m!4405635 () Bool)

(assert (=> bm!282222 m!4405635))

(assert (=> b!3850564 m!4405619))

(assert (=> b!3850564 m!4405621))

(assert (=> b!3850564 m!4405621))

(assert (=> b!3850564 m!4405623))

(assert (=> b!3850567 m!4405619))

(assert (=> b!3850567 m!4405621))

(assert (=> b!3850567 m!4405621))

(assert (=> b!3850567 m!4405623))

(assert (=> b!3850567 m!4405623))

(declare-fun m!4405637 () Bool)

(assert (=> b!3850567 m!4405637))

(declare-fun m!4405639 () Bool)

(assert (=> b!3850570 m!4405639))

(declare-fun m!4405641 () Bool)

(assert (=> d!1141618 m!4405641))

(declare-fun m!4405643 () Bool)

(assert (=> d!1141618 m!4405643))

(declare-fun m!4405645 () Bool)

(assert (=> d!1141618 m!4405645))

(declare-fun m!4405647 () Bool)

(assert (=> d!1141618 m!4405647))

(assert (=> b!3850565 m!4405619))

(declare-fun m!4405649 () Bool)

(assert (=> b!3850565 m!4405649))

(assert (=> b!3850432 d!1141618))

(declare-fun d!1141670 () Bool)

(declare-fun lt!1337383 () Int)

(assert (=> d!1141670 (>= lt!1337383 0)))

(declare-fun e!2380008 () Int)

(assert (=> d!1141670 (= lt!1337383 e!2380008)))

(declare-fun c!670658 () Bool)

(assert (=> d!1141670 (= c!670658 ((_ is Nil!40798) prefix!426))))

(assert (=> d!1141670 (= (size!30690 prefix!426) lt!1337383)))

(declare-fun b!3850585 () Bool)

(assert (=> b!3850585 (= e!2380008 0)))

(declare-fun b!3850586 () Bool)

(assert (=> b!3850586 (= e!2380008 (+ 1 (size!30690 (t!311777 prefix!426))))))

(assert (= (and d!1141670 c!670658) b!3850585))

(assert (= (and d!1141670 (not c!670658)) b!3850586))

(declare-fun m!4405651 () Bool)

(assert (=> b!3850586 m!4405651))

(assert (=> b!3850434 d!1141670))

(declare-fun d!1141672 () Bool)

(declare-fun res!1558799 () Bool)

(declare-fun e!2380023 () Bool)

(assert (=> d!1141672 (=> (not res!1558799) (not e!2380023))))

(assert (=> d!1141672 (= res!1558799 (not (isEmpty!24144 (originalCharacters!6906 (h!46220 prefixTokens!80)))))))

(assert (=> d!1141672 (= (inv!54948 (h!46220 prefixTokens!80)) e!2380023)))

(declare-fun b!3850610 () Bool)

(declare-fun res!1558800 () Bool)

(assert (=> b!3850610 (=> (not res!1558800) (not e!2380023))))

(declare-fun dynLambda!17609 (Int TokenValue!6536) BalanceConc!24628)

(assert (=> b!3850610 (= res!1558800 (= (originalCharacters!6906 (h!46220 prefixTokens!80)) (list!15186 (dynLambda!17609 (toChars!8585 (transformation!6306 (rule!9158 (h!46220 prefixTokens!80)))) (value!200355 (h!46220 prefixTokens!80))))))))

(declare-fun b!3850611 () Bool)

(assert (=> b!3850611 (= e!2380023 (= (size!30689 (h!46220 prefixTokens!80)) (size!30690 (originalCharacters!6906 (h!46220 prefixTokens!80)))))))

(assert (= (and d!1141672 res!1558799) b!3850610))

(assert (= (and b!3850610 res!1558800) b!3850611))

(declare-fun b_lambda!112551 () Bool)

(assert (=> (not b_lambda!112551) (not b!3850610)))

(declare-fun t!311806 () Bool)

(declare-fun tb!222185 () Bool)

(assert (=> (and b!3850411 (= (toChars!8585 (transformation!6306 (rule!9158 (h!46220 prefixTokens!80)))) (toChars!8585 (transformation!6306 (rule!9158 (h!46220 prefixTokens!80))))) t!311806) tb!222185))

(declare-fun b!3850621 () Bool)

(declare-fun e!2380029 () Bool)

(declare-fun tp!1167126 () Bool)

(declare-fun inv!54952 (Conc!12517) Bool)

(assert (=> b!3850621 (= e!2380029 (and (inv!54952 (c!670623 (dynLambda!17609 (toChars!8585 (transformation!6306 (rule!9158 (h!46220 prefixTokens!80)))) (value!200355 (h!46220 prefixTokens!80))))) tp!1167126))))

(declare-fun result!270702 () Bool)

(declare-fun inv!54953 (BalanceConc!24628) Bool)

(assert (=> tb!222185 (= result!270702 (and (inv!54953 (dynLambda!17609 (toChars!8585 (transformation!6306 (rule!9158 (h!46220 prefixTokens!80)))) (value!200355 (h!46220 prefixTokens!80)))) e!2380029))))

(assert (= tb!222185 b!3850621))

(declare-fun m!4405689 () Bool)

(assert (=> b!3850621 m!4405689))

(declare-fun m!4405691 () Bool)

(assert (=> tb!222185 m!4405691))

(assert (=> b!3850610 t!311806))

(declare-fun b_and!287583 () Bool)

(assert (= b_and!287549 (and (=> t!311806 result!270702) b_and!287583)))

(declare-fun tb!222187 () Bool)

(declare-fun t!311808 () Bool)

(assert (=> (and b!3850427 (= (toChars!8585 (transformation!6306 (rule!9158 (h!46220 suffixTokens!72)))) (toChars!8585 (transformation!6306 (rule!9158 (h!46220 prefixTokens!80))))) t!311808) tb!222187))

(declare-fun result!270706 () Bool)

(assert (= result!270706 result!270702))

(assert (=> b!3850610 t!311808))

(declare-fun b_and!287585 () Bool)

(assert (= b_and!287553 (and (=> t!311808 result!270706) b_and!287585)))

(declare-fun tb!222189 () Bool)

(declare-fun t!311810 () Bool)

(assert (=> (and b!3850409 (= (toChars!8585 (transformation!6306 (h!46221 rules!2768))) (toChars!8585 (transformation!6306 (rule!9158 (h!46220 prefixTokens!80))))) t!311810) tb!222189))

(declare-fun result!270708 () Bool)

(assert (= result!270708 result!270702))

(assert (=> b!3850610 t!311810))

(declare-fun b_and!287587 () Bool)

(assert (= b_and!287557 (and (=> t!311810 result!270708) b_and!287587)))

(declare-fun m!4405693 () Bool)

(assert (=> d!1141672 m!4405693))

(declare-fun m!4405695 () Bool)

(assert (=> b!3850610 m!4405695))

(assert (=> b!3850610 m!4405695))

(declare-fun m!4405697 () Bool)

(assert (=> b!3850610 m!4405697))

(declare-fun m!4405699 () Bool)

(assert (=> b!3850611 m!4405699))

(assert (=> b!3850413 d!1141672))

(declare-fun d!1141682 () Bool)

(declare-fun res!1558802 () Bool)

(declare-fun e!2380030 () Bool)

(assert (=> d!1141682 (=> (not res!1558802) (not e!2380030))))

(assert (=> d!1141682 (= res!1558802 (not (isEmpty!24144 (originalCharacters!6906 (h!46220 suffixTokens!72)))))))

(assert (=> d!1141682 (= (inv!54948 (h!46220 suffixTokens!72)) e!2380030)))

(declare-fun b!3850622 () Bool)

(declare-fun res!1558803 () Bool)

(assert (=> b!3850622 (=> (not res!1558803) (not e!2380030))))

(assert (=> b!3850622 (= res!1558803 (= (originalCharacters!6906 (h!46220 suffixTokens!72)) (list!15186 (dynLambda!17609 (toChars!8585 (transformation!6306 (rule!9158 (h!46220 suffixTokens!72)))) (value!200355 (h!46220 suffixTokens!72))))))))

(declare-fun b!3850623 () Bool)

(assert (=> b!3850623 (= e!2380030 (= (size!30689 (h!46220 suffixTokens!72)) (size!30690 (originalCharacters!6906 (h!46220 suffixTokens!72)))))))

(assert (= (and d!1141682 res!1558802) b!3850622))

(assert (= (and b!3850622 res!1558803) b!3850623))

(declare-fun b_lambda!112553 () Bool)

(assert (=> (not b_lambda!112553) (not b!3850622)))

(declare-fun t!311812 () Bool)

(declare-fun tb!222191 () Bool)

(assert (=> (and b!3850411 (= (toChars!8585 (transformation!6306 (rule!9158 (h!46220 prefixTokens!80)))) (toChars!8585 (transformation!6306 (rule!9158 (h!46220 suffixTokens!72))))) t!311812) tb!222191))

(declare-fun b!3850624 () Bool)

(declare-fun e!2380031 () Bool)

(declare-fun tp!1167127 () Bool)

(assert (=> b!3850624 (= e!2380031 (and (inv!54952 (c!670623 (dynLambda!17609 (toChars!8585 (transformation!6306 (rule!9158 (h!46220 suffixTokens!72)))) (value!200355 (h!46220 suffixTokens!72))))) tp!1167127))))

(declare-fun result!270710 () Bool)

(assert (=> tb!222191 (= result!270710 (and (inv!54953 (dynLambda!17609 (toChars!8585 (transformation!6306 (rule!9158 (h!46220 suffixTokens!72)))) (value!200355 (h!46220 suffixTokens!72)))) e!2380031))))

(assert (= tb!222191 b!3850624))

(declare-fun m!4405701 () Bool)

(assert (=> b!3850624 m!4405701))

(declare-fun m!4405703 () Bool)

(assert (=> tb!222191 m!4405703))

(assert (=> b!3850622 t!311812))

(declare-fun b_and!287589 () Bool)

(assert (= b_and!287583 (and (=> t!311812 result!270710) b_and!287589)))

(declare-fun t!311814 () Bool)

(declare-fun tb!222193 () Bool)

(assert (=> (and b!3850427 (= (toChars!8585 (transformation!6306 (rule!9158 (h!46220 suffixTokens!72)))) (toChars!8585 (transformation!6306 (rule!9158 (h!46220 suffixTokens!72))))) t!311814) tb!222193))

(declare-fun result!270712 () Bool)

(assert (= result!270712 result!270710))

(assert (=> b!3850622 t!311814))

(declare-fun b_and!287591 () Bool)

(assert (= b_and!287585 (and (=> t!311814 result!270712) b_and!287591)))

(declare-fun t!311816 () Bool)

(declare-fun tb!222195 () Bool)

(assert (=> (and b!3850409 (= (toChars!8585 (transformation!6306 (h!46221 rules!2768))) (toChars!8585 (transformation!6306 (rule!9158 (h!46220 suffixTokens!72))))) t!311816) tb!222195))

(declare-fun result!270714 () Bool)

(assert (= result!270714 result!270710))

(assert (=> b!3850622 t!311816))

(declare-fun b_and!287593 () Bool)

(assert (= b_and!287587 (and (=> t!311816 result!270714) b_and!287593)))

(declare-fun m!4405705 () Bool)

(assert (=> d!1141682 m!4405705))

(declare-fun m!4405707 () Bool)

(assert (=> b!3850622 m!4405707))

(assert (=> b!3850622 m!4405707))

(declare-fun m!4405709 () Bool)

(assert (=> b!3850622 m!4405709))

(declare-fun m!4405711 () Bool)

(assert (=> b!3850623 m!4405711))

(assert (=> b!3850412 d!1141682))

(declare-fun d!1141684 () Bool)

(assert (=> d!1141684 (= (isEmpty!24144 prefix!426) ((_ is Nil!40798) prefix!426))))

(assert (=> b!3850410 d!1141684))

(declare-fun b!3850635 () Bool)

(declare-fun e!2380038 () Bool)

(declare-fun inv!15 (TokenValue!6536) Bool)

(assert (=> b!3850635 (= e!2380038 (inv!15 (value!200355 (h!46220 prefixTokens!80))))))

(declare-fun b!3850636 () Bool)

(declare-fun e!2380039 () Bool)

(declare-fun e!2380040 () Bool)

(assert (=> b!3850636 (= e!2380039 e!2380040)))

(declare-fun c!670671 () Bool)

(assert (=> b!3850636 (= c!670671 ((_ is IntegerValue!19609) (value!200355 (h!46220 prefixTokens!80))))))

(declare-fun d!1141686 () Bool)

(declare-fun c!670672 () Bool)

(assert (=> d!1141686 (= c!670672 ((_ is IntegerValue!19608) (value!200355 (h!46220 prefixTokens!80))))))

(assert (=> d!1141686 (= (inv!21 (value!200355 (h!46220 prefixTokens!80))) e!2380039)))

(declare-fun b!3850637 () Bool)

(declare-fun inv!16 (TokenValue!6536) Bool)

(assert (=> b!3850637 (= e!2380039 (inv!16 (value!200355 (h!46220 prefixTokens!80))))))

(declare-fun b!3850638 () Bool)

(declare-fun inv!17 (TokenValue!6536) Bool)

(assert (=> b!3850638 (= e!2380040 (inv!17 (value!200355 (h!46220 prefixTokens!80))))))

(declare-fun b!3850639 () Bool)

(declare-fun res!1558806 () Bool)

(assert (=> b!3850639 (=> res!1558806 e!2380038)))

(assert (=> b!3850639 (= res!1558806 (not ((_ is IntegerValue!19610) (value!200355 (h!46220 prefixTokens!80)))))))

(assert (=> b!3850639 (= e!2380040 e!2380038)))

(assert (= (and d!1141686 c!670672) b!3850637))

(assert (= (and d!1141686 (not c!670672)) b!3850636))

(assert (= (and b!3850636 c!670671) b!3850638))

(assert (= (and b!3850636 (not c!670671)) b!3850639))

(assert (= (and b!3850639 (not res!1558806)) b!3850635))

(declare-fun m!4405713 () Bool)

(assert (=> b!3850635 m!4405713))

(declare-fun m!4405715 () Bool)

(assert (=> b!3850637 m!4405715))

(declare-fun m!4405717 () Bool)

(assert (=> b!3850638 m!4405717))

(assert (=> b!3850421 d!1141686))

(declare-fun d!1141688 () Bool)

(declare-fun lt!1337384 () Int)

(assert (=> d!1141688 (>= lt!1337384 0)))

(declare-fun e!2380041 () Int)

(assert (=> d!1141688 (= lt!1337384 e!2380041)))

(declare-fun c!670673 () Bool)

(assert (=> d!1141688 (= c!670673 ((_ is Nil!40798) lt!1337299))))

(assert (=> d!1141688 (= (size!30690 lt!1337299) lt!1337384)))

(declare-fun b!3850640 () Bool)

(assert (=> b!3850640 (= e!2380041 0)))

(declare-fun b!3850641 () Bool)

(assert (=> b!3850641 (= e!2380041 (+ 1 (size!30690 (t!311777 lt!1337299))))))

(assert (= (and d!1141688 c!670673) b!3850640))

(assert (= (and d!1141688 (not c!670673)) b!3850641))

(declare-fun m!4405719 () Bool)

(assert (=> b!3850641 m!4405719))

(assert (=> b!3850420 d!1141688))

(declare-fun d!1141690 () Bool)

(assert (=> d!1141690 (= (isEmpty!24145 prefixTokens!80) ((_ is Nil!40800) prefixTokens!80))))

(assert (=> b!3850431 d!1141690))

(declare-fun b!3850651 () Bool)

(declare-fun e!2380047 () List!40924)

(assert (=> b!3850651 (= e!2380047 (Cons!40800 (h!46220 (Cons!40800 (_1!23127 (v!39017 lt!1337305)) Nil!40800)) (++!10369 (t!311779 (Cons!40800 (_1!23127 (v!39017 lt!1337305)) Nil!40800)) (_1!23128 lt!1337311))))))

(declare-fun e!2380046 () Bool)

(declare-fun lt!1337387 () List!40924)

(declare-fun b!3850653 () Bool)

(assert (=> b!3850653 (= e!2380046 (or (not (= (_1!23128 lt!1337311) Nil!40800)) (= lt!1337387 (Cons!40800 (_1!23127 (v!39017 lt!1337305)) Nil!40800))))))

(declare-fun b!3850652 () Bool)

(declare-fun res!1558812 () Bool)

(assert (=> b!3850652 (=> (not res!1558812) (not e!2380046))))

(assert (=> b!3850652 (= res!1558812 (= (size!30692 lt!1337387) (+ (size!30692 (Cons!40800 (_1!23127 (v!39017 lt!1337305)) Nil!40800)) (size!30692 (_1!23128 lt!1337311)))))))

(declare-fun d!1141692 () Bool)

(assert (=> d!1141692 e!2380046))

(declare-fun res!1558811 () Bool)

(assert (=> d!1141692 (=> (not res!1558811) (not e!2380046))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6069 (List!40924) (InoxSet Token!11750))

(assert (=> d!1141692 (= res!1558811 (= (content!6069 lt!1337387) ((_ map or) (content!6069 (Cons!40800 (_1!23127 (v!39017 lt!1337305)) Nil!40800)) (content!6069 (_1!23128 lt!1337311)))))))

(assert (=> d!1141692 (= lt!1337387 e!2380047)))

(declare-fun c!670676 () Bool)

(assert (=> d!1141692 (= c!670676 ((_ is Nil!40800) (Cons!40800 (_1!23127 (v!39017 lt!1337305)) Nil!40800)))))

(assert (=> d!1141692 (= (++!10369 (Cons!40800 (_1!23127 (v!39017 lt!1337305)) Nil!40800) (_1!23128 lt!1337311)) lt!1337387)))

(declare-fun b!3850650 () Bool)

(assert (=> b!3850650 (= e!2380047 (_1!23128 lt!1337311))))

(assert (= (and d!1141692 c!670676) b!3850650))

(assert (= (and d!1141692 (not c!670676)) b!3850651))

(assert (= (and d!1141692 res!1558811) b!3850652))

(assert (= (and b!3850652 res!1558812) b!3850653))

(declare-fun m!4405721 () Bool)

(assert (=> b!3850651 m!4405721))

(declare-fun m!4405723 () Bool)

(assert (=> b!3850652 m!4405723))

(declare-fun m!4405725 () Bool)

(assert (=> b!3850652 m!4405725))

(declare-fun m!4405727 () Bool)

(assert (=> b!3850652 m!4405727))

(declare-fun m!4405729 () Bool)

(assert (=> d!1141692 m!4405729))

(declare-fun m!4405731 () Bool)

(assert (=> d!1141692 m!4405731))

(declare-fun m!4405733 () Bool)

(assert (=> d!1141692 m!4405733))

(assert (=> b!3850438 d!1141692))

(declare-fun b!3850658 () Bool)

(declare-fun e!2380050 () Bool)

(assert (=> b!3850658 (= e!2380050 (inv!15 (value!200355 (h!46220 suffixTokens!72))))))

(declare-fun b!3850659 () Bool)

(declare-fun e!2380051 () Bool)

(declare-fun e!2380052 () Bool)

(assert (=> b!3850659 (= e!2380051 e!2380052)))

(declare-fun c!670679 () Bool)

(assert (=> b!3850659 (= c!670679 ((_ is IntegerValue!19609) (value!200355 (h!46220 suffixTokens!72))))))

(declare-fun d!1141694 () Bool)

(declare-fun c!670680 () Bool)

(assert (=> d!1141694 (= c!670680 ((_ is IntegerValue!19608) (value!200355 (h!46220 suffixTokens!72))))))

(assert (=> d!1141694 (= (inv!21 (value!200355 (h!46220 suffixTokens!72))) e!2380051)))

(declare-fun b!3850660 () Bool)

(assert (=> b!3850660 (= e!2380051 (inv!16 (value!200355 (h!46220 suffixTokens!72))))))

(declare-fun b!3850661 () Bool)

(assert (=> b!3850661 (= e!2380052 (inv!17 (value!200355 (h!46220 suffixTokens!72))))))

(declare-fun b!3850662 () Bool)

(declare-fun res!1558813 () Bool)

(assert (=> b!3850662 (=> res!1558813 e!2380050)))

(assert (=> b!3850662 (= res!1558813 (not ((_ is IntegerValue!19610) (value!200355 (h!46220 suffixTokens!72)))))))

(assert (=> b!3850662 (= e!2380052 e!2380050)))

(assert (= (and d!1141694 c!670680) b!3850660))

(assert (= (and d!1141694 (not c!670680)) b!3850659))

(assert (= (and b!3850659 c!670679) b!3850661))

(assert (= (and b!3850659 (not c!670679)) b!3850662))

(assert (= (and b!3850662 (not res!1558813)) b!3850658))

(declare-fun m!4405735 () Bool)

(assert (=> b!3850658 m!4405735))

(declare-fun m!4405737 () Bool)

(assert (=> b!3850660 m!4405737))

(declare-fun m!4405739 () Bool)

(assert (=> b!3850661 m!4405739))

(assert (=> b!3850417 d!1141694))

(declare-fun b!3850672 () Bool)

(declare-fun e!2380057 () Bool)

(declare-fun lt!1337398 () tuple2!39988)

(assert (=> b!3850672 (= e!2380057 (= (_2!23128 lt!1337398) lt!1337299))))

(declare-fun b!3850673 () Bool)

(declare-fun e!2380058 () tuple2!39988)

(declare-fun lt!1337399 () Option!8724)

(declare-fun lt!1337400 () tuple2!39988)

(assert (=> b!3850673 (= e!2380058 (tuple2!39989 (Cons!40800 (_1!23127 (v!39017 lt!1337399)) (_1!23128 lt!1337400)) (_2!23128 lt!1337400)))))

(assert (=> b!3850673 (= lt!1337400 (lexList!1663 thiss!20629 rules!2768 (_2!23127 (v!39017 lt!1337399))))))

(declare-fun b!3850674 () Bool)

(assert (=> b!3850674 (= e!2380058 (tuple2!39989 Nil!40800 lt!1337299))))

(declare-fun b!3850675 () Bool)

(declare-fun e!2380059 () Bool)

(assert (=> b!3850675 (= e!2380059 (not (isEmpty!24145 (_1!23128 lt!1337398))))))

(declare-fun b!3850671 () Bool)

(assert (=> b!3850671 (= e!2380057 e!2380059)))

(declare-fun res!1558820 () Bool)

(assert (=> b!3850671 (= res!1558820 (< (size!30690 (_2!23128 lt!1337398)) (size!30690 lt!1337299)))))

(assert (=> b!3850671 (=> (not res!1558820) (not e!2380059))))

(declare-fun d!1141696 () Bool)

(assert (=> d!1141696 e!2380057))

(declare-fun c!670682 () Bool)

(assert (=> d!1141696 (= c!670682 (> (size!30692 (_1!23128 lt!1337398)) 0))))

(assert (=> d!1141696 (= lt!1337398 e!2380058)))

(declare-fun c!670681 () Bool)

(assert (=> d!1141696 (= c!670681 ((_ is Some!8723) lt!1337399))))

(assert (=> d!1141696 (= lt!1337399 (maxPrefix!3199 thiss!20629 rules!2768 lt!1337299))))

(assert (=> d!1141696 (= (lexList!1663 thiss!20629 rules!2768 lt!1337299) lt!1337398)))

(assert (= (and d!1141696 c!670681) b!3850673))

(assert (= (and d!1141696 (not c!670681)) b!3850674))

(assert (= (and d!1141696 c!670682) b!3850671))

(assert (= (and d!1141696 (not c!670682)) b!3850672))

(assert (= (and b!3850671 res!1558820) b!3850675))

(declare-fun m!4405741 () Bool)

(assert (=> b!3850673 m!4405741))

(declare-fun m!4405743 () Bool)

(assert (=> b!3850675 m!4405743))

(declare-fun m!4405745 () Bool)

(assert (=> b!3850671 m!4405745))

(assert (=> b!3850671 m!4405489))

(declare-fun m!4405747 () Bool)

(assert (=> d!1141696 m!4405747))

(assert (=> d!1141696 m!4405495))

(assert (=> b!3850416 d!1141696))

(declare-fun b!3850683 () Bool)

(declare-fun e!2380061 () List!40924)

(assert (=> b!3850683 (= e!2380061 (Cons!40800 (h!46220 prefixTokens!80) (++!10369 (t!311779 prefixTokens!80) suffixTokens!72)))))

(declare-fun e!2380060 () Bool)

(declare-fun b!3850685 () Bool)

(declare-fun lt!1337401 () List!40924)

(assert (=> b!3850685 (= e!2380060 (or (not (= suffixTokens!72 Nil!40800)) (= lt!1337401 prefixTokens!80)))))

(declare-fun b!3850684 () Bool)

(declare-fun res!1558830 () Bool)

(assert (=> b!3850684 (=> (not res!1558830) (not e!2380060))))

(assert (=> b!3850684 (= res!1558830 (= (size!30692 lt!1337401) (+ (size!30692 prefixTokens!80) (size!30692 suffixTokens!72))))))

(declare-fun d!1141698 () Bool)

(assert (=> d!1141698 e!2380060))

(declare-fun res!1558829 () Bool)

(assert (=> d!1141698 (=> (not res!1558829) (not e!2380060))))

(assert (=> d!1141698 (= res!1558829 (= (content!6069 lt!1337401) ((_ map or) (content!6069 prefixTokens!80) (content!6069 suffixTokens!72))))))

(assert (=> d!1141698 (= lt!1337401 e!2380061)))

(declare-fun c!670683 () Bool)

(assert (=> d!1141698 (= c!670683 ((_ is Nil!40800) prefixTokens!80))))

(assert (=> d!1141698 (= (++!10369 prefixTokens!80 suffixTokens!72) lt!1337401)))

(declare-fun b!3850682 () Bool)

(assert (=> b!3850682 (= e!2380061 suffixTokens!72)))

(assert (= (and d!1141698 c!670683) b!3850682))

(assert (= (and d!1141698 (not c!670683)) b!3850683))

(assert (= (and d!1141698 res!1558829) b!3850684))

(assert (= (and b!3850684 res!1558830) b!3850685))

(declare-fun m!4405749 () Bool)

(assert (=> b!3850683 m!4405749))

(declare-fun m!4405751 () Bool)

(assert (=> b!3850684 m!4405751))

(declare-fun m!4405753 () Bool)

(assert (=> b!3850684 m!4405753))

(declare-fun m!4405755 () Bool)

(assert (=> b!3850684 m!4405755))

(declare-fun m!4405757 () Bool)

(assert (=> d!1141698 m!4405757))

(declare-fun m!4405759 () Bool)

(assert (=> d!1141698 m!4405759))

(declare-fun m!4405761 () Bool)

(assert (=> d!1141698 m!4405761))

(assert (=> b!3850416 d!1141698))

(declare-fun b!3850703 () Bool)

(declare-fun e!2380070 () List!40922)

(assert (=> b!3850703 (= e!2380070 suffix!1176)))

(declare-fun b!3850704 () Bool)

(assert (=> b!3850704 (= e!2380070 (Cons!40798 (h!46218 prefix!426) (++!10370 (t!311777 prefix!426) suffix!1176)))))

(declare-fun b!3850705 () Bool)

(declare-fun res!1558842 () Bool)

(declare-fun e!2380069 () Bool)

(assert (=> b!3850705 (=> (not res!1558842) (not e!2380069))))

(declare-fun lt!1337409 () List!40922)

(assert (=> b!3850705 (= res!1558842 (= (size!30690 lt!1337409) (+ (size!30690 prefix!426) (size!30690 suffix!1176))))))

(declare-fun b!3850706 () Bool)

(assert (=> b!3850706 (= e!2380069 (or (not (= suffix!1176 Nil!40798)) (= lt!1337409 prefix!426)))))

(declare-fun d!1141700 () Bool)

(assert (=> d!1141700 e!2380069))

(declare-fun res!1558843 () Bool)

(assert (=> d!1141700 (=> (not res!1558843) (not e!2380069))))

(declare-fun content!6070 (List!40922) (InoxSet C!22608))

(assert (=> d!1141700 (= res!1558843 (= (content!6070 lt!1337409) ((_ map or) (content!6070 prefix!426) (content!6070 suffix!1176))))))

(assert (=> d!1141700 (= lt!1337409 e!2380070)))

(declare-fun c!670687 () Bool)

(assert (=> d!1141700 (= c!670687 ((_ is Nil!40798) prefix!426))))

(assert (=> d!1141700 (= (++!10370 prefix!426 suffix!1176) lt!1337409)))

(assert (= (and d!1141700 c!670687) b!3850703))

(assert (= (and d!1141700 (not c!670687)) b!3850704))

(assert (= (and d!1141700 res!1558843) b!3850705))

(assert (= (and b!3850705 res!1558842) b!3850706))

(declare-fun m!4405795 () Bool)

(assert (=> b!3850704 m!4405795))

(declare-fun m!4405797 () Bool)

(assert (=> b!3850705 m!4405797))

(assert (=> b!3850705 m!4405461))

(assert (=> b!3850705 m!4405463))

(declare-fun m!4405799 () Bool)

(assert (=> d!1141700 m!4405799))

(declare-fun m!4405801 () Bool)

(assert (=> d!1141700 m!4405801))

(declare-fun m!4405803 () Bool)

(assert (=> d!1141700 m!4405803))

(assert (=> b!3850416 d!1141700))

(declare-fun d!1141704 () Bool)

(declare-fun lt!1337410 () Int)

(assert (=> d!1141704 (>= lt!1337410 0)))

(declare-fun e!2380071 () Int)

(assert (=> d!1141704 (= lt!1337410 e!2380071)))

(declare-fun c!670688 () Bool)

(assert (=> d!1141704 (= c!670688 ((_ is Nil!40798) (originalCharacters!6906 (_1!23127 (v!39017 lt!1337305)))))))

(assert (=> d!1141704 (= (size!30690 (originalCharacters!6906 (_1!23127 (v!39017 lt!1337305)))) lt!1337410)))

(declare-fun b!3850707 () Bool)

(assert (=> b!3850707 (= e!2380071 0)))

(declare-fun b!3850708 () Bool)

(assert (=> b!3850708 (= e!2380071 (+ 1 (size!30690 (t!311777 (originalCharacters!6906 (_1!23127 (v!39017 lt!1337305)))))))))

(assert (= (and d!1141704 c!670688) b!3850707))

(assert (= (and d!1141704 (not c!670688)) b!3850708))

(declare-fun m!4405805 () Bool)

(assert (=> b!3850708 m!4405805))

(assert (=> b!3850429 d!1141704))

(declare-fun d!1141706 () Bool)

(declare-fun res!1558862 () Bool)

(declare-fun e!2380088 () Bool)

(assert (=> d!1141706 (=> (not res!1558862) (not e!2380088))))

(declare-fun rulesValid!2436 (LexerInterface!5895 List!40925) Bool)

(assert (=> d!1141706 (= res!1558862 (rulesValid!2436 thiss!20629 rules!2768))))

(assert (=> d!1141706 (= (rulesInvariant!5238 thiss!20629 rules!2768) e!2380088)))

(declare-fun b!3850739 () Bool)

(declare-datatypes ((List!40927 0))(
  ( (Nil!40803) (Cons!40803 (h!46223 String!46398) (t!311878 List!40927)) )
))
(declare-fun noDuplicateTag!2437 (LexerInterface!5895 List!40925 List!40927) Bool)

(assert (=> b!3850739 (= e!2380088 (noDuplicateTag!2437 thiss!20629 rules!2768 Nil!40803))))

(assert (= (and d!1141706 res!1558862) b!3850739))

(declare-fun m!4405807 () Bool)

(assert (=> d!1141706 m!4405807))

(declare-fun m!4405809 () Bool)

(assert (=> b!3850739 m!4405809))

(assert (=> b!3850428 d!1141706))

(declare-fun b!3850782 () Bool)

(declare-fun e!2380112 () Bool)

(declare-fun head!8096 (List!40922) C!22608)

(assert (=> b!3850782 (= e!2380112 (not (= (head!8096 lt!1337308) (c!670622 (regex!6306 (rule!9158 (_1!23127 (v!39017 lt!1337305))))))))))

(declare-fun d!1141708 () Bool)

(declare-fun e!2380110 () Bool)

(assert (=> d!1141708 e!2380110))

(declare-fun c!670706 () Bool)

(assert (=> d!1141708 (= c!670706 ((_ is EmptyExpr!11211) (regex!6306 (rule!9158 (_1!23127 (v!39017 lt!1337305))))))))

(declare-fun lt!1337416 () Bool)

(declare-fun e!2380115 () Bool)

(assert (=> d!1141708 (= lt!1337416 e!2380115)))

(declare-fun c!670705 () Bool)

(assert (=> d!1141708 (= c!670705 (isEmpty!24144 lt!1337308))))

(declare-fun validRegex!5100 (Regex!11211) Bool)

(assert (=> d!1141708 (validRegex!5100 (regex!6306 (rule!9158 (_1!23127 (v!39017 lt!1337305)))))))

(assert (=> d!1141708 (= (matchR!5358 (regex!6306 (rule!9158 (_1!23127 (v!39017 lt!1337305)))) lt!1337308) lt!1337416)))

(declare-fun b!3850783 () Bool)

(declare-fun derivativeStep!3400 (Regex!11211 C!22608) Regex!11211)

(declare-fun tail!5823 (List!40922) List!40922)

(assert (=> b!3850783 (= e!2380115 (matchR!5358 (derivativeStep!3400 (regex!6306 (rule!9158 (_1!23127 (v!39017 lt!1337305)))) (head!8096 lt!1337308)) (tail!5823 lt!1337308)))))

(declare-fun b!3850784 () Bool)

(declare-fun e!2380111 () Bool)

(assert (=> b!3850784 (= e!2380111 (= (head!8096 lt!1337308) (c!670622 (regex!6306 (rule!9158 (_1!23127 (v!39017 lt!1337305)))))))))

(declare-fun b!3850785 () Bool)

(declare-fun e!2380114 () Bool)

(assert (=> b!3850785 (= e!2380114 e!2380112)))

(declare-fun res!1558894 () Bool)

(assert (=> b!3850785 (=> res!1558894 e!2380112)))

(declare-fun call!282236 () Bool)

(assert (=> b!3850785 (= res!1558894 call!282236)))

(declare-fun b!3850786 () Bool)

(declare-fun res!1558888 () Bool)

(assert (=> b!3850786 (=> (not res!1558888) (not e!2380111))))

(assert (=> b!3850786 (= res!1558888 (not call!282236))))

(declare-fun b!3850787 () Bool)

(declare-fun res!1558893 () Bool)

(declare-fun e!2380116 () Bool)

(assert (=> b!3850787 (=> res!1558893 e!2380116)))

(assert (=> b!3850787 (= res!1558893 e!2380111)))

(declare-fun res!1558892 () Bool)

(assert (=> b!3850787 (=> (not res!1558892) (not e!2380111))))

(assert (=> b!3850787 (= res!1558892 lt!1337416)))

(declare-fun b!3850788 () Bool)

(declare-fun nullable!3901 (Regex!11211) Bool)

(assert (=> b!3850788 (= e!2380115 (nullable!3901 (regex!6306 (rule!9158 (_1!23127 (v!39017 lt!1337305))))))))

(declare-fun bm!282231 () Bool)

(assert (=> bm!282231 (= call!282236 (isEmpty!24144 lt!1337308))))

(declare-fun b!3850789 () Bool)

(declare-fun res!1558887 () Bool)

(assert (=> b!3850789 (=> res!1558887 e!2380116)))

(assert (=> b!3850789 (= res!1558887 (not ((_ is ElementMatch!11211) (regex!6306 (rule!9158 (_1!23127 (v!39017 lt!1337305)))))))))

(declare-fun e!2380113 () Bool)

(assert (=> b!3850789 (= e!2380113 e!2380116)))

(declare-fun b!3850790 () Bool)

(assert (=> b!3850790 (= e!2380113 (not lt!1337416))))

(declare-fun b!3850791 () Bool)

(assert (=> b!3850791 (= e!2380116 e!2380114)))

(declare-fun res!1558889 () Bool)

(assert (=> b!3850791 (=> (not res!1558889) (not e!2380114))))

(assert (=> b!3850791 (= res!1558889 (not lt!1337416))))

(declare-fun b!3850792 () Bool)

(assert (=> b!3850792 (= e!2380110 e!2380113)))

(declare-fun c!670704 () Bool)

(assert (=> b!3850792 (= c!670704 ((_ is EmptyLang!11211) (regex!6306 (rule!9158 (_1!23127 (v!39017 lt!1337305))))))))

(declare-fun b!3850793 () Bool)

(assert (=> b!3850793 (= e!2380110 (= lt!1337416 call!282236))))

(declare-fun b!3850794 () Bool)

(declare-fun res!1558891 () Bool)

(assert (=> b!3850794 (=> res!1558891 e!2380112)))

(assert (=> b!3850794 (= res!1558891 (not (isEmpty!24144 (tail!5823 lt!1337308))))))

(declare-fun b!3850795 () Bool)

(declare-fun res!1558890 () Bool)

(assert (=> b!3850795 (=> (not res!1558890) (not e!2380111))))

(assert (=> b!3850795 (= res!1558890 (isEmpty!24144 (tail!5823 lt!1337308)))))

(assert (= (and d!1141708 c!670705) b!3850788))

(assert (= (and d!1141708 (not c!670705)) b!3850783))

(assert (= (and d!1141708 c!670706) b!3850793))

(assert (= (and d!1141708 (not c!670706)) b!3850792))

(assert (= (and b!3850792 c!670704) b!3850790))

(assert (= (and b!3850792 (not c!670704)) b!3850789))

(assert (= (and b!3850789 (not res!1558887)) b!3850787))

(assert (= (and b!3850787 res!1558892) b!3850786))

(assert (= (and b!3850786 res!1558888) b!3850795))

(assert (= (and b!3850795 res!1558890) b!3850784))

(assert (= (and b!3850787 (not res!1558893)) b!3850791))

(assert (= (and b!3850791 res!1558889) b!3850785))

(assert (= (and b!3850785 (not res!1558894)) b!3850794))

(assert (= (and b!3850794 (not res!1558891)) b!3850782))

(assert (= (or b!3850793 b!3850785 b!3850786) bm!282231))

(declare-fun m!4405819 () Bool)

(assert (=> b!3850784 m!4405819))

(assert (=> b!3850782 m!4405819))

(declare-fun m!4405821 () Bool)

(assert (=> b!3850788 m!4405821))

(declare-fun m!4405823 () Bool)

(assert (=> d!1141708 m!4405823))

(declare-fun m!4405825 () Bool)

(assert (=> d!1141708 m!4405825))

(assert (=> b!3850783 m!4405819))

(assert (=> b!3850783 m!4405819))

(declare-fun m!4405827 () Bool)

(assert (=> b!3850783 m!4405827))

(declare-fun m!4405829 () Bool)

(assert (=> b!3850783 m!4405829))

(assert (=> b!3850783 m!4405827))

(assert (=> b!3850783 m!4405829))

(declare-fun m!4405831 () Bool)

(assert (=> b!3850783 m!4405831))

(assert (=> b!3850795 m!4405829))

(assert (=> b!3850795 m!4405829))

(declare-fun m!4405833 () Bool)

(assert (=> b!3850795 m!4405833))

(assert (=> bm!282231 m!4405823))

(assert (=> b!3850794 m!4405829))

(assert (=> b!3850794 m!4405829))

(assert (=> b!3850794 m!4405833))

(assert (=> b!3850414 d!1141708))

(declare-fun b!3850841 () Bool)

(declare-fun res!1558930 () Bool)

(declare-fun e!2380138 () Bool)

(assert (=> b!3850841 (=> (not res!1558930) (not e!2380138))))

(declare-fun lt!1337447 () Option!8724)

(assert (=> b!3850841 (= res!1558930 (< (size!30690 (_2!23127 (get!13498 lt!1337447))) (size!30690 lt!1337299)))))

(declare-fun b!3850842 () Bool)

(declare-fun e!2380137 () Bool)

(declare-datatypes ((tuple2!39992 0))(
  ( (tuple2!39993 (_1!23130 List!40922) (_2!23130 List!40922)) )
))
(declare-fun findLongestMatchInner!1168 (Regex!11211 List!40922 Int List!40922 List!40922 Int) tuple2!39992)

(assert (=> b!3850842 (= e!2380137 (matchR!5358 (regex!6306 (rule!9158 (_1!23127 (v!39017 lt!1337305)))) (_1!23130 (findLongestMatchInner!1168 (regex!6306 (rule!9158 (_1!23127 (v!39017 lt!1337305)))) Nil!40798 (size!30690 Nil!40798) lt!1337299 lt!1337299 (size!30690 lt!1337299)))))))

(declare-fun b!3850843 () Bool)

(declare-fun e!2380139 () Option!8724)

(declare-fun lt!1337448 () tuple2!39992)

(declare-fun size!30694 (BalanceConc!24628) Int)

(assert (=> b!3850843 (= e!2380139 (Some!8723 (tuple2!39987 (Token!11751 (apply!9549 (transformation!6306 (rule!9158 (_1!23127 (v!39017 lt!1337305)))) (seqFromList!4577 (_1!23130 lt!1337448))) (rule!9158 (_1!23127 (v!39017 lt!1337305))) (size!30694 (seqFromList!4577 (_1!23130 lt!1337448))) (_1!23130 lt!1337448)) (_2!23130 lt!1337448))))))

(declare-fun lt!1337444 () Unit!58474)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1141 (Regex!11211 List!40922) Unit!58474)

(assert (=> b!3850843 (= lt!1337444 (longestMatchIsAcceptedByMatchOrIsEmpty!1141 (regex!6306 (rule!9158 (_1!23127 (v!39017 lt!1337305)))) lt!1337299))))

(declare-fun res!1558935 () Bool)

(assert (=> b!3850843 (= res!1558935 (isEmpty!24144 (_1!23130 (findLongestMatchInner!1168 (regex!6306 (rule!9158 (_1!23127 (v!39017 lt!1337305)))) Nil!40798 (size!30690 Nil!40798) lt!1337299 lt!1337299 (size!30690 lt!1337299)))))))

(assert (=> b!3850843 (=> res!1558935 e!2380137)))

(assert (=> b!3850843 e!2380137))

(declare-fun lt!1337445 () Unit!58474)

(assert (=> b!3850843 (= lt!1337445 lt!1337444)))

(declare-fun lt!1337446 () Unit!58474)

(declare-fun lemmaSemiInverse!1674 (TokenValueInjection!12500 BalanceConc!24628) Unit!58474)

(assert (=> b!3850843 (= lt!1337446 (lemmaSemiInverse!1674 (transformation!6306 (rule!9158 (_1!23127 (v!39017 lt!1337305)))) (seqFromList!4577 (_1!23130 lt!1337448))))))

(declare-fun b!3850844 () Bool)

(declare-fun res!1558934 () Bool)

(assert (=> b!3850844 (=> (not res!1558934) (not e!2380138))))

(assert (=> b!3850844 (= res!1558934 (= (rule!9158 (_1!23127 (get!13498 lt!1337447))) (rule!9158 (_1!23127 (v!39017 lt!1337305)))))))

(declare-fun b!3850845 () Bool)

(declare-fun res!1558932 () Bool)

(assert (=> b!3850845 (=> (not res!1558932) (not e!2380138))))

(assert (=> b!3850845 (= res!1558932 (= (value!200355 (_1!23127 (get!13498 lt!1337447))) (apply!9549 (transformation!6306 (rule!9158 (_1!23127 (get!13498 lt!1337447)))) (seqFromList!4577 (originalCharacters!6906 (_1!23127 (get!13498 lt!1337447)))))))))

(declare-fun b!3850846 () Bool)

(assert (=> b!3850846 (= e!2380139 None!8723)))

(declare-fun d!1141712 () Bool)

(declare-fun e!2380140 () Bool)

(assert (=> d!1141712 e!2380140))

(declare-fun res!1558933 () Bool)

(assert (=> d!1141712 (=> res!1558933 e!2380140)))

(assert (=> d!1141712 (= res!1558933 (isEmpty!24147 lt!1337447))))

(assert (=> d!1141712 (= lt!1337447 e!2380139)))

(declare-fun c!670712 () Bool)

(assert (=> d!1141712 (= c!670712 (isEmpty!24144 (_1!23130 lt!1337448)))))

(declare-fun findLongestMatch!1081 (Regex!11211 List!40922) tuple2!39992)

(assert (=> d!1141712 (= lt!1337448 (findLongestMatch!1081 (regex!6306 (rule!9158 (_1!23127 (v!39017 lt!1337305)))) lt!1337299))))

(assert (=> d!1141712 (ruleValid!2258 thiss!20629 (rule!9158 (_1!23127 (v!39017 lt!1337305))))))

(assert (=> d!1141712 (= (maxPrefixOneRule!2281 thiss!20629 (rule!9158 (_1!23127 (v!39017 lt!1337305))) lt!1337299) lt!1337447)))

(declare-fun b!3850847 () Bool)

(assert (=> b!3850847 (= e!2380140 e!2380138)))

(declare-fun res!1558931 () Bool)

(assert (=> b!3850847 (=> (not res!1558931) (not e!2380138))))

(assert (=> b!3850847 (= res!1558931 (matchR!5358 (regex!6306 (rule!9158 (_1!23127 (v!39017 lt!1337305)))) (list!15186 (charsOf!4134 (_1!23127 (get!13498 lt!1337447))))))))

(declare-fun b!3850848 () Bool)

(declare-fun res!1558936 () Bool)

(assert (=> b!3850848 (=> (not res!1558936) (not e!2380138))))

(assert (=> b!3850848 (= res!1558936 (= (++!10370 (list!15186 (charsOf!4134 (_1!23127 (get!13498 lt!1337447)))) (_2!23127 (get!13498 lt!1337447))) lt!1337299))))

(declare-fun b!3850849 () Bool)

(assert (=> b!3850849 (= e!2380138 (= (size!30689 (_1!23127 (get!13498 lt!1337447))) (size!30690 (originalCharacters!6906 (_1!23127 (get!13498 lt!1337447))))))))

(assert (= (and d!1141712 c!670712) b!3850846))

(assert (= (and d!1141712 (not c!670712)) b!3850843))

(assert (= (and b!3850843 (not res!1558935)) b!3850842))

(assert (= (and d!1141712 (not res!1558933)) b!3850847))

(assert (= (and b!3850847 res!1558931) b!3850848))

(assert (= (and b!3850848 res!1558936) b!3850841))

(assert (= (and b!3850841 res!1558930) b!3850844))

(assert (= (and b!3850844 res!1558934) b!3850845))

(assert (= (and b!3850845 res!1558932) b!3850849))

(declare-fun m!4405883 () Bool)

(assert (=> b!3850848 m!4405883))

(declare-fun m!4405885 () Bool)

(assert (=> b!3850848 m!4405885))

(assert (=> b!3850848 m!4405885))

(declare-fun m!4405887 () Bool)

(assert (=> b!3850848 m!4405887))

(assert (=> b!3850848 m!4405887))

(declare-fun m!4405889 () Bool)

(assert (=> b!3850848 m!4405889))

(assert (=> b!3850845 m!4405883))

(declare-fun m!4405893 () Bool)

(assert (=> b!3850845 m!4405893))

(assert (=> b!3850845 m!4405893))

(declare-fun m!4405903 () Bool)

(assert (=> b!3850845 m!4405903))

(assert (=> b!3850844 m!4405883))

(assert (=> b!3850843 m!4405489))

(declare-fun m!4405905 () Bool)

(assert (=> b!3850843 m!4405905))

(declare-fun m!4405907 () Bool)

(assert (=> b!3850843 m!4405907))

(declare-fun m!4405909 () Bool)

(assert (=> b!3850843 m!4405909))

(assert (=> b!3850843 m!4405905))

(declare-fun m!4405911 () Bool)

(assert (=> b!3850843 m!4405911))

(assert (=> b!3850843 m!4405905))

(declare-fun m!4405913 () Bool)

(assert (=> b!3850843 m!4405913))

(assert (=> b!3850843 m!4405909))

(assert (=> b!3850843 m!4405489))

(declare-fun m!4405915 () Bool)

(assert (=> b!3850843 m!4405915))

(declare-fun m!4405917 () Bool)

(assert (=> b!3850843 m!4405917))

(assert (=> b!3850843 m!4405905))

(declare-fun m!4405919 () Bool)

(assert (=> b!3850843 m!4405919))

(assert (=> b!3850842 m!4405909))

(assert (=> b!3850842 m!4405489))

(assert (=> b!3850842 m!4405909))

(assert (=> b!3850842 m!4405489))

(assert (=> b!3850842 m!4405915))

(declare-fun m!4405929 () Bool)

(assert (=> b!3850842 m!4405929))

(assert (=> b!3850847 m!4405883))

(assert (=> b!3850847 m!4405885))

(assert (=> b!3850847 m!4405885))

(assert (=> b!3850847 m!4405887))

(assert (=> b!3850847 m!4405887))

(declare-fun m!4405931 () Bool)

(assert (=> b!3850847 m!4405931))

(declare-fun m!4405933 () Bool)

(assert (=> d!1141712 m!4405933))

(declare-fun m!4405935 () Bool)

(assert (=> d!1141712 m!4405935))

(declare-fun m!4405937 () Bool)

(assert (=> d!1141712 m!4405937))

(assert (=> d!1141712 m!4405417))

(assert (=> b!3850841 m!4405883))

(declare-fun m!4405939 () Bool)

(assert (=> b!3850841 m!4405939))

(assert (=> b!3850841 m!4405489))

(assert (=> b!3850849 m!4405883))

(declare-fun m!4405941 () Bool)

(assert (=> b!3850849 m!4405941))

(assert (=> b!3850414 d!1141712))

(declare-fun d!1141728 () Bool)

(assert (=> d!1141728 (= (maxPrefixOneRule!2281 thiss!20629 (rule!9158 (_1!23127 (v!39017 lt!1337305))) lt!1337299) (Some!8723 (tuple2!39987 (Token!11751 (apply!9549 (transformation!6306 (rule!9158 (_1!23127 (v!39017 lt!1337305)))) (seqFromList!4577 lt!1337308)) (rule!9158 (_1!23127 (v!39017 lt!1337305))) (size!30690 lt!1337308) lt!1337308) (_2!23127 (v!39017 lt!1337305)))))))

(declare-fun lt!1337462 () Unit!58474)

(declare-fun choose!22661 (LexerInterface!5895 List!40925 List!40922 List!40922 List!40922 Rule!12412) Unit!58474)

(assert (=> d!1141728 (= lt!1337462 (choose!22661 thiss!20629 rules!2768 lt!1337308 lt!1337299 (_2!23127 (v!39017 lt!1337305)) (rule!9158 (_1!23127 (v!39017 lt!1337305)))))))

(assert (=> d!1141728 (not (isEmpty!24146 rules!2768))))

(assert (=> d!1141728 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1179 thiss!20629 rules!2768 lt!1337308 lt!1337299 (_2!23127 (v!39017 lt!1337305)) (rule!9158 (_1!23127 (v!39017 lt!1337305)))) lt!1337462)))

(declare-fun bs!582864 () Bool)

(assert (= bs!582864 d!1141728))

(assert (=> bs!582864 m!4405437))

(assert (=> bs!582864 m!4405479))

(assert (=> bs!582864 m!4405433))

(assert (=> bs!582864 m!4405459))

(assert (=> bs!582864 m!4405433))

(assert (=> bs!582864 m!4405439))

(declare-fun m!4405987 () Bool)

(assert (=> bs!582864 m!4405987))

(assert (=> b!3850414 d!1141728))

(declare-fun d!1141734 () Bool)

(assert (=> d!1141734 (= (inv!54945 (tag!7166 (h!46221 rules!2768))) (= (mod (str.len (value!200354 (tag!7166 (h!46221 rules!2768)))) 2) 0))))

(assert (=> b!3850424 d!1141734))

(declare-fun d!1141736 () Bool)

(declare-fun res!1558945 () Bool)

(declare-fun e!2380203 () Bool)

(assert (=> d!1141736 (=> (not res!1558945) (not e!2380203))))

(declare-fun semiInverseModEq!2701 (Int Int) Bool)

(assert (=> d!1141736 (= res!1558945 (semiInverseModEq!2701 (toChars!8585 (transformation!6306 (h!46221 rules!2768))) (toValue!8726 (transformation!6306 (h!46221 rules!2768)))))))

(assert (=> d!1141736 (= (inv!54949 (transformation!6306 (h!46221 rules!2768))) e!2380203)))

(declare-fun b!3850934 () Bool)

(declare-fun equivClasses!2600 (Int Int) Bool)

(assert (=> b!3850934 (= e!2380203 (equivClasses!2600 (toChars!8585 (transformation!6306 (h!46221 rules!2768))) (toValue!8726 (transformation!6306 (h!46221 rules!2768)))))))

(assert (= (and d!1141736 res!1558945) b!3850934))

(declare-fun m!4405989 () Bool)

(assert (=> d!1141736 m!4405989))

(declare-fun m!4405991 () Bool)

(assert (=> b!3850934 m!4405991))

(assert (=> b!3850424 d!1141736))

(declare-fun d!1141738 () Bool)

(assert (=> d!1141738 (= (isEmpty!24146 rules!2768) ((_ is Nil!40801) rules!2768))))

(assert (=> b!3850435 d!1141738))

(declare-fun d!1141740 () Bool)

(assert (=> d!1141740 (= (inv!54945 (tag!7166 (rule!9158 (h!46220 suffixTokens!72)))) (= (mod (str.len (value!200354 (tag!7166 (rule!9158 (h!46220 suffixTokens!72))))) 2) 0))))

(assert (=> b!3850437 d!1141740))

(declare-fun d!1141742 () Bool)

(declare-fun res!1558946 () Bool)

(declare-fun e!2380204 () Bool)

(assert (=> d!1141742 (=> (not res!1558946) (not e!2380204))))

(assert (=> d!1141742 (= res!1558946 (semiInverseModEq!2701 (toChars!8585 (transformation!6306 (rule!9158 (h!46220 suffixTokens!72)))) (toValue!8726 (transformation!6306 (rule!9158 (h!46220 suffixTokens!72))))))))

(assert (=> d!1141742 (= (inv!54949 (transformation!6306 (rule!9158 (h!46220 suffixTokens!72)))) e!2380204)))

(declare-fun b!3850935 () Bool)

(assert (=> b!3850935 (= e!2380204 (equivClasses!2600 (toChars!8585 (transformation!6306 (rule!9158 (h!46220 suffixTokens!72)))) (toValue!8726 (transformation!6306 (rule!9158 (h!46220 suffixTokens!72))))))))

(assert (= (and d!1141742 res!1558946) b!3850935))

(declare-fun m!4405993 () Bool)

(assert (=> d!1141742 m!4405993))

(declare-fun m!4405995 () Bool)

(assert (=> b!3850935 m!4405995))

(assert (=> b!3850437 d!1141742))

(declare-fun d!1141744 () Bool)

(declare-fun fromListB!2111 (List!40922) BalanceConc!24628)

(assert (=> d!1141744 (= (seqFromList!4577 lt!1337308) (fromListB!2111 lt!1337308))))

(declare-fun bs!582865 () Bool)

(assert (= bs!582865 d!1141744))

(declare-fun m!4405997 () Bool)

(assert (=> bs!582865 m!4405997))

(assert (=> b!3850436 d!1141744))

(declare-fun d!1141746 () Bool)

(assert (=> d!1141746 (ruleValid!2258 thiss!20629 (rule!9158 (_1!23127 (v!39017 lt!1337305))))))

(declare-fun lt!1337465 () Unit!58474)

(declare-fun choose!22662 (LexerInterface!5895 Rule!12412 List!40925) Unit!58474)

(assert (=> d!1141746 (= lt!1337465 (choose!22662 thiss!20629 (rule!9158 (_1!23127 (v!39017 lt!1337305))) rules!2768))))

(assert (=> d!1141746 (contains!8249 rules!2768 (rule!9158 (_1!23127 (v!39017 lt!1337305))))))

(assert (=> d!1141746 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1338 thiss!20629 (rule!9158 (_1!23127 (v!39017 lt!1337305))) rules!2768) lt!1337465)))

(declare-fun bs!582866 () Bool)

(assert (= bs!582866 d!1141746))

(assert (=> bs!582866 m!4405417))

(declare-fun m!4405999 () Bool)

(assert (=> bs!582866 m!4405999))

(declare-fun m!4406001 () Bool)

(assert (=> bs!582866 m!4406001))

(assert (=> b!3850436 d!1141746))

(declare-fun d!1141748 () Bool)

(declare-fun lt!1337466 () Int)

(assert (=> d!1141748 (>= lt!1337466 0)))

(declare-fun e!2380205 () Int)

(assert (=> d!1141748 (= lt!1337466 e!2380205)))

(declare-fun c!670721 () Bool)

(assert (=> d!1141748 (= c!670721 ((_ is Nil!40798) lt!1337308))))

(assert (=> d!1141748 (= (size!30690 lt!1337308) lt!1337466)))

(declare-fun b!3850936 () Bool)

(assert (=> b!3850936 (= e!2380205 0)))

(declare-fun b!3850937 () Bool)

(assert (=> b!3850937 (= e!2380205 (+ 1 (size!30690 (t!311777 lt!1337308))))))

(assert (= (and d!1141748 c!670721) b!3850936))

(assert (= (and d!1141748 (not c!670721)) b!3850937))

(declare-fun m!4406003 () Bool)

(assert (=> b!3850937 m!4406003))

(assert (=> b!3850436 d!1141748))

(declare-fun d!1141750 () Bool)

(declare-fun lt!1337469 () List!40922)

(assert (=> d!1141750 (= (++!10370 lt!1337308 lt!1337469) lt!1337299)))

(declare-fun e!2380208 () List!40922)

(assert (=> d!1141750 (= lt!1337469 e!2380208)))

(declare-fun c!670724 () Bool)

(assert (=> d!1141750 (= c!670724 ((_ is Cons!40798) lt!1337308))))

(assert (=> d!1141750 (>= (size!30690 lt!1337299) (size!30690 lt!1337308))))

(assert (=> d!1141750 (= (getSuffix!1860 lt!1337299 lt!1337308) lt!1337469)))

(declare-fun b!3850942 () Bool)

(assert (=> b!3850942 (= e!2380208 (getSuffix!1860 (tail!5823 lt!1337299) (t!311777 lt!1337308)))))

(declare-fun b!3850943 () Bool)

(assert (=> b!3850943 (= e!2380208 lt!1337299)))

(assert (= (and d!1141750 c!670724) b!3850942))

(assert (= (and d!1141750 (not c!670724)) b!3850943))

(declare-fun m!4406005 () Bool)

(assert (=> d!1141750 m!4406005))

(assert (=> d!1141750 m!4405489))

(assert (=> d!1141750 m!4405437))

(declare-fun m!4406007 () Bool)

(assert (=> b!3850942 m!4406007))

(assert (=> b!3850942 m!4406007))

(declare-fun m!4406009 () Bool)

(assert (=> b!3850942 m!4406009))

(assert (=> b!3850436 d!1141750))

(declare-fun d!1141752 () Bool)

(declare-fun lt!1337472 () BalanceConc!24628)

(assert (=> d!1141752 (= (list!15186 lt!1337472) (originalCharacters!6906 (_1!23127 (v!39017 lt!1337305))))))

(assert (=> d!1141752 (= lt!1337472 (dynLambda!17609 (toChars!8585 (transformation!6306 (rule!9158 (_1!23127 (v!39017 lt!1337305))))) (value!200355 (_1!23127 (v!39017 lt!1337305)))))))

(assert (=> d!1141752 (= (charsOf!4134 (_1!23127 (v!39017 lt!1337305))) lt!1337472)))

(declare-fun b_lambda!112559 () Bool)

(assert (=> (not b_lambda!112559) (not d!1141752)))

(declare-fun t!311842 () Bool)

(declare-fun tb!222221 () Bool)

(assert (=> (and b!3850411 (= (toChars!8585 (transformation!6306 (rule!9158 (h!46220 prefixTokens!80)))) (toChars!8585 (transformation!6306 (rule!9158 (_1!23127 (v!39017 lt!1337305)))))) t!311842) tb!222221))

(declare-fun b!3850944 () Bool)

(declare-fun e!2380209 () Bool)

(declare-fun tp!1167192 () Bool)

(assert (=> b!3850944 (= e!2380209 (and (inv!54952 (c!670623 (dynLambda!17609 (toChars!8585 (transformation!6306 (rule!9158 (_1!23127 (v!39017 lt!1337305))))) (value!200355 (_1!23127 (v!39017 lt!1337305)))))) tp!1167192))))

(declare-fun result!270748 () Bool)

(assert (=> tb!222221 (= result!270748 (and (inv!54953 (dynLambda!17609 (toChars!8585 (transformation!6306 (rule!9158 (_1!23127 (v!39017 lt!1337305))))) (value!200355 (_1!23127 (v!39017 lt!1337305))))) e!2380209))))

(assert (= tb!222221 b!3850944))

(declare-fun m!4406011 () Bool)

(assert (=> b!3850944 m!4406011))

(declare-fun m!4406013 () Bool)

(assert (=> tb!222221 m!4406013))

(assert (=> d!1141752 t!311842))

(declare-fun b_and!287607 () Bool)

(assert (= b_and!287589 (and (=> t!311842 result!270748) b_and!287607)))

(declare-fun t!311844 () Bool)

(declare-fun tb!222223 () Bool)

(assert (=> (and b!3850427 (= (toChars!8585 (transformation!6306 (rule!9158 (h!46220 suffixTokens!72)))) (toChars!8585 (transformation!6306 (rule!9158 (_1!23127 (v!39017 lt!1337305)))))) t!311844) tb!222223))

(declare-fun result!270750 () Bool)

(assert (= result!270750 result!270748))

(assert (=> d!1141752 t!311844))

(declare-fun b_and!287609 () Bool)

(assert (= b_and!287591 (and (=> t!311844 result!270750) b_and!287609)))

(declare-fun t!311846 () Bool)

(declare-fun tb!222225 () Bool)

(assert (=> (and b!3850409 (= (toChars!8585 (transformation!6306 (h!46221 rules!2768))) (toChars!8585 (transformation!6306 (rule!9158 (_1!23127 (v!39017 lt!1337305)))))) t!311846) tb!222225))

(declare-fun result!270752 () Bool)

(assert (= result!270752 result!270748))

(assert (=> d!1141752 t!311846))

(declare-fun b_and!287611 () Bool)

(assert (= b_and!287593 (and (=> t!311846 result!270752) b_and!287611)))

(declare-fun m!4406015 () Bool)

(assert (=> d!1141752 m!4406015))

(declare-fun m!4406017 () Bool)

(assert (=> d!1141752 m!4406017))

(assert (=> b!3850436 d!1141752))

(declare-fun d!1141754 () Bool)

(assert (=> d!1141754 (= (_2!23127 (v!39017 lt!1337305)) lt!1337307)))

(declare-fun lt!1337475 () Unit!58474)

(declare-fun choose!22663 (List!40922 List!40922 List!40922 List!40922 List!40922) Unit!58474)

(assert (=> d!1141754 (= lt!1337475 (choose!22663 lt!1337308 (_2!23127 (v!39017 lt!1337305)) lt!1337308 lt!1337307 lt!1337299))))

(assert (=> d!1141754 (isPrefix!3405 lt!1337308 lt!1337299)))

(assert (=> d!1141754 (= (lemmaSamePrefixThenSameSuffix!1626 lt!1337308 (_2!23127 (v!39017 lt!1337305)) lt!1337308 lt!1337307 lt!1337299) lt!1337475)))

(declare-fun bs!582867 () Bool)

(assert (= bs!582867 d!1141754))

(declare-fun m!4406019 () Bool)

(assert (=> bs!582867 m!4406019))

(declare-fun m!4406021 () Bool)

(assert (=> bs!582867 m!4406021))

(assert (=> b!3850436 d!1141754))

(declare-fun d!1141756 () Bool)

(declare-fun dynLambda!17610 (Int BalanceConc!24628) TokenValue!6536)

(assert (=> d!1141756 (= (apply!9549 (transformation!6306 (rule!9158 (_1!23127 (v!39017 lt!1337305)))) (seqFromList!4577 lt!1337308)) (dynLambda!17610 (toValue!8726 (transformation!6306 (rule!9158 (_1!23127 (v!39017 lt!1337305))))) (seqFromList!4577 lt!1337308)))))

(declare-fun b_lambda!112561 () Bool)

(assert (=> (not b_lambda!112561) (not d!1141756)))

(declare-fun t!311848 () Bool)

(declare-fun tb!222227 () Bool)

(assert (=> (and b!3850411 (= (toValue!8726 (transformation!6306 (rule!9158 (h!46220 prefixTokens!80)))) (toValue!8726 (transformation!6306 (rule!9158 (_1!23127 (v!39017 lt!1337305)))))) t!311848) tb!222227))

(declare-fun result!270754 () Bool)

(assert (=> tb!222227 (= result!270754 (inv!21 (dynLambda!17610 (toValue!8726 (transformation!6306 (rule!9158 (_1!23127 (v!39017 lt!1337305))))) (seqFromList!4577 lt!1337308))))))

(declare-fun m!4406023 () Bool)

(assert (=> tb!222227 m!4406023))

(assert (=> d!1141756 t!311848))

(declare-fun b_and!287613 () Bool)

(assert (= b_and!287547 (and (=> t!311848 result!270754) b_and!287613)))

(declare-fun tb!222229 () Bool)

(declare-fun t!311850 () Bool)

(assert (=> (and b!3850427 (= (toValue!8726 (transformation!6306 (rule!9158 (h!46220 suffixTokens!72)))) (toValue!8726 (transformation!6306 (rule!9158 (_1!23127 (v!39017 lt!1337305)))))) t!311850) tb!222229))

(declare-fun result!270758 () Bool)

(assert (= result!270758 result!270754))

(assert (=> d!1141756 t!311850))

(declare-fun b_and!287615 () Bool)

(assert (= b_and!287551 (and (=> t!311850 result!270758) b_and!287615)))

(declare-fun t!311852 () Bool)

(declare-fun tb!222231 () Bool)

(assert (=> (and b!3850409 (= (toValue!8726 (transformation!6306 (h!46221 rules!2768))) (toValue!8726 (transformation!6306 (rule!9158 (_1!23127 (v!39017 lt!1337305)))))) t!311852) tb!222231))

(declare-fun result!270760 () Bool)

(assert (= result!270760 result!270754))

(assert (=> d!1141756 t!311852))

(declare-fun b_and!287617 () Bool)

(assert (= b_and!287555 (and (=> t!311852 result!270760) b_and!287617)))

(assert (=> d!1141756 m!4405433))

(declare-fun m!4406025 () Bool)

(assert (=> d!1141756 m!4406025))

(assert (=> b!3850436 d!1141756))

(declare-fun b!3850957 () Bool)

(declare-fun e!2380220 () Bool)

(assert (=> b!3850957 (= e!2380220 (isPrefix!3405 (tail!5823 lt!1337308) (tail!5823 lt!1337301)))))

(declare-fun d!1141758 () Bool)

(declare-fun e!2380219 () Bool)

(assert (=> d!1141758 e!2380219))

(declare-fun res!1558957 () Bool)

(assert (=> d!1141758 (=> res!1558957 e!2380219)))

(declare-fun lt!1337478 () Bool)

(assert (=> d!1141758 (= res!1558957 (not lt!1337478))))

(declare-fun e!2380221 () Bool)

(assert (=> d!1141758 (= lt!1337478 e!2380221)))

(declare-fun res!1558955 () Bool)

(assert (=> d!1141758 (=> res!1558955 e!2380221)))

(assert (=> d!1141758 (= res!1558955 ((_ is Nil!40798) lt!1337308))))

(assert (=> d!1141758 (= (isPrefix!3405 lt!1337308 lt!1337301) lt!1337478)))

(declare-fun b!3850956 () Bool)

(declare-fun res!1558958 () Bool)

(assert (=> b!3850956 (=> (not res!1558958) (not e!2380220))))

(assert (=> b!3850956 (= res!1558958 (= (head!8096 lt!1337308) (head!8096 lt!1337301)))))

(declare-fun b!3850958 () Bool)

(assert (=> b!3850958 (= e!2380219 (>= (size!30690 lt!1337301) (size!30690 lt!1337308)))))

(declare-fun b!3850955 () Bool)

(assert (=> b!3850955 (= e!2380221 e!2380220)))

(declare-fun res!1558956 () Bool)

(assert (=> b!3850955 (=> (not res!1558956) (not e!2380220))))

(assert (=> b!3850955 (= res!1558956 (not ((_ is Nil!40798) lt!1337301)))))

(assert (= (and d!1141758 (not res!1558955)) b!3850955))

(assert (= (and b!3850955 res!1558956) b!3850956))

(assert (= (and b!3850956 res!1558958) b!3850957))

(assert (= (and d!1141758 (not res!1558957)) b!3850958))

(assert (=> b!3850957 m!4405829))

(declare-fun m!4406027 () Bool)

(assert (=> b!3850957 m!4406027))

(assert (=> b!3850957 m!4405829))

(assert (=> b!3850957 m!4406027))

(declare-fun m!4406029 () Bool)

(assert (=> b!3850957 m!4406029))

(assert (=> b!3850956 m!4405819))

(declare-fun m!4406031 () Bool)

(assert (=> b!3850956 m!4406031))

(declare-fun m!4406033 () Bool)

(assert (=> b!3850958 m!4406033))

(assert (=> b!3850958 m!4405437))

(assert (=> b!3850436 d!1141758))

(declare-fun d!1141760 () Bool)

(assert (=> d!1141760 (isPrefix!3405 lt!1337308 (++!10370 lt!1337308 (_2!23127 (v!39017 lt!1337305))))))

(declare-fun lt!1337481 () Unit!58474)

(declare-fun choose!22664 (List!40922 List!40922) Unit!58474)

(assert (=> d!1141760 (= lt!1337481 (choose!22664 lt!1337308 (_2!23127 (v!39017 lt!1337305))))))

(assert (=> d!1141760 (= (lemmaConcatTwoListThenFirstIsPrefix!2268 lt!1337308 (_2!23127 (v!39017 lt!1337305))) lt!1337481)))

(declare-fun bs!582868 () Bool)

(assert (= bs!582868 d!1141760))

(assert (=> bs!582868 m!4405435))

(assert (=> bs!582868 m!4405435))

(declare-fun m!4406035 () Bool)

(assert (=> bs!582868 m!4406035))

(declare-fun m!4406037 () Bool)

(assert (=> bs!582868 m!4406037))

(assert (=> b!3850436 d!1141760))

(declare-fun d!1141762 () Bool)

(assert (=> d!1141762 (= (size!30689 (_1!23127 (v!39017 lt!1337305))) (size!30690 (originalCharacters!6906 (_1!23127 (v!39017 lt!1337305)))))))

(declare-fun Unit!58477 () Unit!58474)

(assert (=> d!1141762 (= (lemmaCharactersSize!967 (_1!23127 (v!39017 lt!1337305))) Unit!58477)))

(declare-fun bs!582869 () Bool)

(assert (= bs!582869 d!1141762))

(assert (=> bs!582869 m!4405469))

(assert (=> b!3850436 d!1141762))

(declare-fun d!1141764 () Bool)

(declare-fun res!1558963 () Bool)

(declare-fun e!2380224 () Bool)

(assert (=> d!1141764 (=> (not res!1558963) (not e!2380224))))

(assert (=> d!1141764 (= res!1558963 (validRegex!5100 (regex!6306 (rule!9158 (_1!23127 (v!39017 lt!1337305))))))))

(assert (=> d!1141764 (= (ruleValid!2258 thiss!20629 (rule!9158 (_1!23127 (v!39017 lt!1337305)))) e!2380224)))

(declare-fun b!3850963 () Bool)

(declare-fun res!1558964 () Bool)

(assert (=> b!3850963 (=> (not res!1558964) (not e!2380224))))

(assert (=> b!3850963 (= res!1558964 (not (nullable!3901 (regex!6306 (rule!9158 (_1!23127 (v!39017 lt!1337305)))))))))

(declare-fun b!3850964 () Bool)

(assert (=> b!3850964 (= e!2380224 (not (= (tag!7166 (rule!9158 (_1!23127 (v!39017 lt!1337305)))) (String!46399 ""))))))

(assert (= (and d!1141764 res!1558963) b!3850963))

(assert (= (and b!3850963 res!1558964) b!3850964))

(assert (=> d!1141764 m!4405825))

(assert (=> b!3850963 m!4405821))

(assert (=> b!3850436 d!1141764))

(declare-fun b!3850966 () Bool)

(declare-fun e!2380225 () Bool)

(declare-fun lt!1337482 () tuple2!39988)

(assert (=> b!3850966 (= e!2380225 (= (_2!23128 lt!1337482) (_2!23127 (v!39017 lt!1337305))))))

(declare-fun b!3850967 () Bool)

(declare-fun e!2380226 () tuple2!39988)

(declare-fun lt!1337483 () Option!8724)

(declare-fun lt!1337484 () tuple2!39988)

(assert (=> b!3850967 (= e!2380226 (tuple2!39989 (Cons!40800 (_1!23127 (v!39017 lt!1337483)) (_1!23128 lt!1337484)) (_2!23128 lt!1337484)))))

(assert (=> b!3850967 (= lt!1337484 (lexList!1663 thiss!20629 rules!2768 (_2!23127 (v!39017 lt!1337483))))))

(declare-fun b!3850968 () Bool)

(assert (=> b!3850968 (= e!2380226 (tuple2!39989 Nil!40800 (_2!23127 (v!39017 lt!1337305))))))

(declare-fun b!3850969 () Bool)

(declare-fun e!2380227 () Bool)

(assert (=> b!3850969 (= e!2380227 (not (isEmpty!24145 (_1!23128 lt!1337482))))))

(declare-fun b!3850965 () Bool)

(assert (=> b!3850965 (= e!2380225 e!2380227)))

(declare-fun res!1558965 () Bool)

(assert (=> b!3850965 (= res!1558965 (< (size!30690 (_2!23128 lt!1337482)) (size!30690 (_2!23127 (v!39017 lt!1337305)))))))

(assert (=> b!3850965 (=> (not res!1558965) (not e!2380227))))

(declare-fun d!1141766 () Bool)

(assert (=> d!1141766 e!2380225))

(declare-fun c!670726 () Bool)

(assert (=> d!1141766 (= c!670726 (> (size!30692 (_1!23128 lt!1337482)) 0))))

(assert (=> d!1141766 (= lt!1337482 e!2380226)))

(declare-fun c!670725 () Bool)

(assert (=> d!1141766 (= c!670725 ((_ is Some!8723) lt!1337483))))

(assert (=> d!1141766 (= lt!1337483 (maxPrefix!3199 thiss!20629 rules!2768 (_2!23127 (v!39017 lt!1337305))))))

(assert (=> d!1141766 (= (lexList!1663 thiss!20629 rules!2768 (_2!23127 (v!39017 lt!1337305))) lt!1337482)))

(assert (= (and d!1141766 c!670725) b!3850967))

(assert (= (and d!1141766 (not c!670725)) b!3850968))

(assert (= (and d!1141766 c!670726) b!3850965))

(assert (= (and d!1141766 (not c!670726)) b!3850966))

(assert (= (and b!3850965 res!1558965) b!3850969))

(declare-fun m!4406039 () Bool)

(assert (=> b!3850967 m!4406039))

(declare-fun m!4406041 () Bool)

(assert (=> b!3850969 m!4406041))

(declare-fun m!4406043 () Bool)

(assert (=> b!3850965 m!4406043))

(assert (=> b!3850965 m!4405465))

(declare-fun m!4406045 () Bool)

(assert (=> d!1141766 m!4406045))

(declare-fun m!4406047 () Bool)

(assert (=> d!1141766 m!4406047))

(assert (=> b!3850436 d!1141766))

(declare-fun d!1141768 () Bool)

(declare-fun list!15188 (Conc!12517) List!40922)

(assert (=> d!1141768 (= (list!15186 (charsOf!4134 (_1!23127 (v!39017 lt!1337305)))) (list!15188 (c!670623 (charsOf!4134 (_1!23127 (v!39017 lt!1337305))))))))

(declare-fun bs!582870 () Bool)

(assert (= bs!582870 d!1141768))

(declare-fun m!4406049 () Bool)

(assert (=> bs!582870 m!4406049))

(assert (=> b!3850436 d!1141768))

(declare-fun b!3850970 () Bool)

(declare-fun e!2380229 () List!40922)

(assert (=> b!3850970 (= e!2380229 (_2!23127 (v!39017 lt!1337305)))))

(declare-fun b!3850971 () Bool)

(assert (=> b!3850971 (= e!2380229 (Cons!40798 (h!46218 lt!1337308) (++!10370 (t!311777 lt!1337308) (_2!23127 (v!39017 lt!1337305)))))))

(declare-fun b!3850972 () Bool)

(declare-fun res!1558966 () Bool)

(declare-fun e!2380228 () Bool)

(assert (=> b!3850972 (=> (not res!1558966) (not e!2380228))))

(declare-fun lt!1337485 () List!40922)

(assert (=> b!3850972 (= res!1558966 (= (size!30690 lt!1337485) (+ (size!30690 lt!1337308) (size!30690 (_2!23127 (v!39017 lt!1337305))))))))

(declare-fun b!3850973 () Bool)

(assert (=> b!3850973 (= e!2380228 (or (not (= (_2!23127 (v!39017 lt!1337305)) Nil!40798)) (= lt!1337485 lt!1337308)))))

(declare-fun d!1141770 () Bool)

(assert (=> d!1141770 e!2380228))

(declare-fun res!1558967 () Bool)

(assert (=> d!1141770 (=> (not res!1558967) (not e!2380228))))

(assert (=> d!1141770 (= res!1558967 (= (content!6070 lt!1337485) ((_ map or) (content!6070 lt!1337308) (content!6070 (_2!23127 (v!39017 lt!1337305))))))))

(assert (=> d!1141770 (= lt!1337485 e!2380229)))

(declare-fun c!670727 () Bool)

(assert (=> d!1141770 (= c!670727 ((_ is Nil!40798) lt!1337308))))

(assert (=> d!1141770 (= (++!10370 lt!1337308 (_2!23127 (v!39017 lt!1337305))) lt!1337485)))

(assert (= (and d!1141770 c!670727) b!3850970))

(assert (= (and d!1141770 (not c!670727)) b!3850971))

(assert (= (and d!1141770 res!1558967) b!3850972))

(assert (= (and b!3850972 res!1558966) b!3850973))

(declare-fun m!4406051 () Bool)

(assert (=> b!3850971 m!4406051))

(declare-fun m!4406053 () Bool)

(assert (=> b!3850972 m!4406053))

(assert (=> b!3850972 m!4405437))

(assert (=> b!3850972 m!4405465))

(declare-fun m!4406055 () Bool)

(assert (=> d!1141770 m!4406055))

(declare-fun m!4406057 () Bool)

(assert (=> d!1141770 m!4406057))

(declare-fun m!4406059 () Bool)

(assert (=> d!1141770 m!4406059))

(assert (=> b!3850436 d!1141770))

(declare-fun d!1141772 () Bool)

(assert (=> d!1141772 (= (inv!54945 (tag!7166 (rule!9158 (h!46220 prefixTokens!80)))) (= (mod (str.len (value!200354 (tag!7166 (rule!9158 (h!46220 prefixTokens!80))))) 2) 0))))

(assert (=> b!3850415 d!1141772))

(declare-fun d!1141774 () Bool)

(declare-fun res!1558968 () Bool)

(declare-fun e!2380230 () Bool)

(assert (=> d!1141774 (=> (not res!1558968) (not e!2380230))))

(assert (=> d!1141774 (= res!1558968 (semiInverseModEq!2701 (toChars!8585 (transformation!6306 (rule!9158 (h!46220 prefixTokens!80)))) (toValue!8726 (transformation!6306 (rule!9158 (h!46220 prefixTokens!80))))))))

(assert (=> d!1141774 (= (inv!54949 (transformation!6306 (rule!9158 (h!46220 prefixTokens!80)))) e!2380230)))

(declare-fun b!3850974 () Bool)

(assert (=> b!3850974 (= e!2380230 (equivClasses!2600 (toChars!8585 (transformation!6306 (rule!9158 (h!46220 prefixTokens!80)))) (toValue!8726 (transformation!6306 (rule!9158 (h!46220 prefixTokens!80))))))))

(assert (= (and d!1141774 res!1558968) b!3850974))

(declare-fun m!4406061 () Bool)

(assert (=> d!1141774 m!4406061))

(declare-fun m!4406063 () Bool)

(assert (=> b!3850974 m!4406063))

(assert (=> b!3850415 d!1141774))

(declare-fun b!3850988 () Bool)

(declare-fun b_free!103213 () Bool)

(declare-fun b_next!103917 () Bool)

(assert (=> b!3850988 (= b_free!103213 (not b_next!103917))))

(declare-fun tb!222233 () Bool)

(declare-fun t!311854 () Bool)

(assert (=> (and b!3850988 (= (toValue!8726 (transformation!6306 (rule!9158 (h!46220 (t!311779 prefixTokens!80))))) (toValue!8726 (transformation!6306 (rule!9158 (_1!23127 (v!39017 lt!1337305)))))) t!311854) tb!222233))

(declare-fun result!270764 () Bool)

(assert (= result!270764 result!270754))

(assert (=> d!1141756 t!311854))

(declare-fun tp!1167206 () Bool)

(declare-fun b_and!287619 () Bool)

(assert (=> b!3850988 (= tp!1167206 (and (=> t!311854 result!270764) b_and!287619))))

(declare-fun b_free!103215 () Bool)

(declare-fun b_next!103919 () Bool)

(assert (=> b!3850988 (= b_free!103215 (not b_next!103919))))

(declare-fun t!311856 () Bool)

(declare-fun tb!222235 () Bool)

(assert (=> (and b!3850988 (= (toChars!8585 (transformation!6306 (rule!9158 (h!46220 (t!311779 prefixTokens!80))))) (toChars!8585 (transformation!6306 (rule!9158 (h!46220 prefixTokens!80))))) t!311856) tb!222235))

(declare-fun result!270766 () Bool)

(assert (= result!270766 result!270702))

(assert (=> b!3850610 t!311856))

(declare-fun t!311858 () Bool)

(declare-fun tb!222237 () Bool)

(assert (=> (and b!3850988 (= (toChars!8585 (transformation!6306 (rule!9158 (h!46220 (t!311779 prefixTokens!80))))) (toChars!8585 (transformation!6306 (rule!9158 (h!46220 suffixTokens!72))))) t!311858) tb!222237))

(declare-fun result!270768 () Bool)

(assert (= result!270768 result!270710))

(assert (=> b!3850622 t!311858))

(declare-fun tb!222239 () Bool)

(declare-fun t!311860 () Bool)

(assert (=> (and b!3850988 (= (toChars!8585 (transformation!6306 (rule!9158 (h!46220 (t!311779 prefixTokens!80))))) (toChars!8585 (transformation!6306 (rule!9158 (_1!23127 (v!39017 lt!1337305)))))) t!311860) tb!222239))

(declare-fun result!270770 () Bool)

(assert (= result!270770 result!270748))

(assert (=> d!1141752 t!311860))

(declare-fun b_and!287621 () Bool)

(declare-fun tp!1167205 () Bool)

(assert (=> b!3850988 (= tp!1167205 (and (=> t!311856 result!270766) (=> t!311858 result!270768) (=> t!311860 result!270770) b_and!287621))))

(declare-fun e!2380247 () Bool)

(assert (=> b!3850413 (= tp!1167112 e!2380247)))

(declare-fun e!2380246 () Bool)

(declare-fun b!3850987 () Bool)

(declare-fun tp!1167204 () Bool)

(declare-fun e!2380245 () Bool)

(assert (=> b!3850987 (= e!2380245 (and tp!1167204 (inv!54945 (tag!7166 (rule!9158 (h!46220 (t!311779 prefixTokens!80))))) (inv!54949 (transformation!6306 (rule!9158 (h!46220 (t!311779 prefixTokens!80))))) e!2380246))))

(assert (=> b!3850988 (= e!2380246 (and tp!1167206 tp!1167205))))

(declare-fun b!3850985 () Bool)

(declare-fun e!2380244 () Bool)

(declare-fun tp!1167203 () Bool)

(assert (=> b!3850985 (= e!2380247 (and (inv!54948 (h!46220 (t!311779 prefixTokens!80))) e!2380244 tp!1167203))))

(declare-fun tp!1167207 () Bool)

(declare-fun b!3850986 () Bool)

(assert (=> b!3850986 (= e!2380244 (and (inv!21 (value!200355 (h!46220 (t!311779 prefixTokens!80)))) e!2380245 tp!1167207))))

(assert (= b!3850987 b!3850988))

(assert (= b!3850986 b!3850987))

(assert (= b!3850985 b!3850986))

(assert (= (and b!3850413 ((_ is Cons!40800) (t!311779 prefixTokens!80))) b!3850985))

(declare-fun m!4406065 () Bool)

(assert (=> b!3850987 m!4406065))

(declare-fun m!4406067 () Bool)

(assert (=> b!3850987 m!4406067))

(declare-fun m!4406069 () Bool)

(assert (=> b!3850985 m!4406069))

(declare-fun m!4406071 () Bool)

(assert (=> b!3850986 m!4406071))

(declare-fun b!3850992 () Bool)

(declare-fun b_free!103217 () Bool)

(declare-fun b_next!103921 () Bool)

(assert (=> b!3850992 (= b_free!103217 (not b_next!103921))))

(declare-fun tb!222241 () Bool)

(declare-fun t!311862 () Bool)

(assert (=> (and b!3850992 (= (toValue!8726 (transformation!6306 (rule!9158 (h!46220 (t!311779 suffixTokens!72))))) (toValue!8726 (transformation!6306 (rule!9158 (_1!23127 (v!39017 lt!1337305)))))) t!311862) tb!222241))

(declare-fun result!270772 () Bool)

(assert (= result!270772 result!270754))

(assert (=> d!1141756 t!311862))

(declare-fun b_and!287623 () Bool)

(declare-fun tp!1167211 () Bool)

(assert (=> b!3850992 (= tp!1167211 (and (=> t!311862 result!270772) b_and!287623))))

(declare-fun b_free!103219 () Bool)

(declare-fun b_next!103923 () Bool)

(assert (=> b!3850992 (= b_free!103219 (not b_next!103923))))

(declare-fun t!311864 () Bool)

(declare-fun tb!222243 () Bool)

(assert (=> (and b!3850992 (= (toChars!8585 (transformation!6306 (rule!9158 (h!46220 (t!311779 suffixTokens!72))))) (toChars!8585 (transformation!6306 (rule!9158 (h!46220 prefixTokens!80))))) t!311864) tb!222243))

(declare-fun result!270774 () Bool)

(assert (= result!270774 result!270702))

(assert (=> b!3850610 t!311864))

(declare-fun t!311866 () Bool)

(declare-fun tb!222245 () Bool)

(assert (=> (and b!3850992 (= (toChars!8585 (transformation!6306 (rule!9158 (h!46220 (t!311779 suffixTokens!72))))) (toChars!8585 (transformation!6306 (rule!9158 (h!46220 suffixTokens!72))))) t!311866) tb!222245))

(declare-fun result!270776 () Bool)

(assert (= result!270776 result!270710))

(assert (=> b!3850622 t!311866))

(declare-fun tb!222247 () Bool)

(declare-fun t!311868 () Bool)

(assert (=> (and b!3850992 (= (toChars!8585 (transformation!6306 (rule!9158 (h!46220 (t!311779 suffixTokens!72))))) (toChars!8585 (transformation!6306 (rule!9158 (_1!23127 (v!39017 lt!1337305)))))) t!311868) tb!222247))

(declare-fun result!270778 () Bool)

(assert (= result!270778 result!270748))

(assert (=> d!1141752 t!311868))

(declare-fun b_and!287625 () Bool)

(declare-fun tp!1167210 () Bool)

(assert (=> b!3850992 (= tp!1167210 (and (=> t!311864 result!270774) (=> t!311866 result!270776) (=> t!311868 result!270778) b_and!287625))))

(declare-fun e!2380253 () Bool)

(assert (=> b!3850412 (= tp!1167116 e!2380253)))

(declare-fun b!3850991 () Bool)

(declare-fun e!2380251 () Bool)

(declare-fun e!2380252 () Bool)

(declare-fun tp!1167209 () Bool)

(assert (=> b!3850991 (= e!2380251 (and tp!1167209 (inv!54945 (tag!7166 (rule!9158 (h!46220 (t!311779 suffixTokens!72))))) (inv!54949 (transformation!6306 (rule!9158 (h!46220 (t!311779 suffixTokens!72))))) e!2380252))))

(assert (=> b!3850992 (= e!2380252 (and tp!1167211 tp!1167210))))

(declare-fun b!3850989 () Bool)

(declare-fun tp!1167208 () Bool)

(declare-fun e!2380250 () Bool)

(assert (=> b!3850989 (= e!2380253 (and (inv!54948 (h!46220 (t!311779 suffixTokens!72))) e!2380250 tp!1167208))))

(declare-fun tp!1167212 () Bool)

(declare-fun b!3850990 () Bool)

(assert (=> b!3850990 (= e!2380250 (and (inv!21 (value!200355 (h!46220 (t!311779 suffixTokens!72)))) e!2380251 tp!1167212))))

(assert (= b!3850991 b!3850992))

(assert (= b!3850990 b!3850991))

(assert (= b!3850989 b!3850990))

(assert (= (and b!3850412 ((_ is Cons!40800) (t!311779 suffixTokens!72))) b!3850989))

(declare-fun m!4406073 () Bool)

(assert (=> b!3850991 m!4406073))

(declare-fun m!4406075 () Bool)

(assert (=> b!3850991 m!4406075))

(declare-fun m!4406077 () Bool)

(assert (=> b!3850989 m!4406077))

(declare-fun m!4406079 () Bool)

(assert (=> b!3850990 m!4406079))

(declare-fun b!3850997 () Bool)

(declare-fun e!2380257 () Bool)

(declare-fun tp!1167215 () Bool)

(assert (=> b!3850997 (= e!2380257 (and tp_is_empty!19393 tp!1167215))))

(assert (=> b!3850423 (= tp!1167109 e!2380257)))

(assert (= (and b!3850423 ((_ is Cons!40798) (t!311777 suffix!1176))) b!3850997))

(declare-fun b!3850998 () Bool)

(declare-fun e!2380258 () Bool)

(declare-fun tp!1167216 () Bool)

(assert (=> b!3850998 (= e!2380258 (and tp_is_empty!19393 tp!1167216))))

(assert (=> b!3850419 (= tp!1167105 e!2380258)))

(assert (= (and b!3850419 ((_ is Cons!40798) (t!311777 prefix!426))) b!3850998))

(declare-fun b!3850999 () Bool)

(declare-fun e!2380259 () Bool)

(declare-fun tp!1167217 () Bool)

(assert (=> b!3850999 (= e!2380259 (and tp_is_empty!19393 tp!1167217))))

(assert (=> b!3850421 (= tp!1167115 e!2380259)))

(assert (= (and b!3850421 ((_ is Cons!40798) (originalCharacters!6906 (h!46220 prefixTokens!80)))) b!3850999))

(declare-fun b!3851000 () Bool)

(declare-fun e!2380260 () Bool)

(declare-fun tp!1167218 () Bool)

(assert (=> b!3851000 (= e!2380260 (and tp_is_empty!19393 tp!1167218))))

(assert (=> b!3850417 (= tp!1167113 e!2380260)))

(assert (= (and b!3850417 ((_ is Cons!40798) (originalCharacters!6906 (h!46220 suffixTokens!72)))) b!3851000))

(declare-fun b!3851011 () Bool)

(declare-fun b_free!103221 () Bool)

(declare-fun b_next!103925 () Bool)

(assert (=> b!3851011 (= b_free!103221 (not b_next!103925))))

(declare-fun t!311870 () Bool)

(declare-fun tb!222249 () Bool)

(assert (=> (and b!3851011 (= (toValue!8726 (transformation!6306 (h!46221 (t!311780 rules!2768)))) (toValue!8726 (transformation!6306 (rule!9158 (_1!23127 (v!39017 lt!1337305)))))) t!311870) tb!222249))

(declare-fun result!270784 () Bool)

(assert (= result!270784 result!270754))

(assert (=> d!1141756 t!311870))

(declare-fun tp!1167230 () Bool)

(declare-fun b_and!287627 () Bool)

(assert (=> b!3851011 (= tp!1167230 (and (=> t!311870 result!270784) b_and!287627))))

(declare-fun b_free!103223 () Bool)

(declare-fun b_next!103927 () Bool)

(assert (=> b!3851011 (= b_free!103223 (not b_next!103927))))

(declare-fun t!311872 () Bool)

(declare-fun tb!222251 () Bool)

(assert (=> (and b!3851011 (= (toChars!8585 (transformation!6306 (h!46221 (t!311780 rules!2768)))) (toChars!8585 (transformation!6306 (rule!9158 (h!46220 prefixTokens!80))))) t!311872) tb!222251))

(declare-fun result!270786 () Bool)

(assert (= result!270786 result!270702))

(assert (=> b!3850610 t!311872))

(declare-fun t!311874 () Bool)

(declare-fun tb!222253 () Bool)

(assert (=> (and b!3851011 (= (toChars!8585 (transformation!6306 (h!46221 (t!311780 rules!2768)))) (toChars!8585 (transformation!6306 (rule!9158 (h!46220 suffixTokens!72))))) t!311874) tb!222253))

(declare-fun result!270788 () Bool)

(assert (= result!270788 result!270710))

(assert (=> b!3850622 t!311874))

(declare-fun tb!222255 () Bool)

(declare-fun t!311876 () Bool)

(assert (=> (and b!3851011 (= (toChars!8585 (transformation!6306 (h!46221 (t!311780 rules!2768)))) (toChars!8585 (transformation!6306 (rule!9158 (_1!23127 (v!39017 lt!1337305)))))) t!311876) tb!222255))

(declare-fun result!270790 () Bool)

(assert (= result!270790 result!270748))

(assert (=> d!1141752 t!311876))

(declare-fun b_and!287629 () Bool)

(declare-fun tp!1167228 () Bool)

(assert (=> b!3851011 (= tp!1167228 (and (=> t!311872 result!270786) (=> t!311874 result!270788) (=> t!311876 result!270790) b_and!287629))))

(declare-fun e!2380271 () Bool)

(assert (=> b!3851011 (= e!2380271 (and tp!1167230 tp!1167228))))

(declare-fun e!2380270 () Bool)

(declare-fun b!3851010 () Bool)

(declare-fun tp!1167229 () Bool)

(assert (=> b!3851010 (= e!2380270 (and tp!1167229 (inv!54945 (tag!7166 (h!46221 (t!311780 rules!2768)))) (inv!54949 (transformation!6306 (h!46221 (t!311780 rules!2768)))) e!2380271))))

(declare-fun b!3851009 () Bool)

(declare-fun e!2380269 () Bool)

(declare-fun tp!1167227 () Bool)

(assert (=> b!3851009 (= e!2380269 (and e!2380270 tp!1167227))))

(assert (=> b!3850418 (= tp!1167104 e!2380269)))

(assert (= b!3851010 b!3851011))

(assert (= b!3851009 b!3851010))

(assert (= (and b!3850418 ((_ is Cons!40801) (t!311780 rules!2768))) b!3851009))

(declare-fun m!4406081 () Bool)

(assert (=> b!3851010 m!4406081))

(declare-fun m!4406083 () Bool)

(assert (=> b!3851010 m!4406083))

(declare-fun b!3851012 () Bool)

(declare-fun e!2380273 () Bool)

(declare-fun tp!1167231 () Bool)

(assert (=> b!3851012 (= e!2380273 (and tp_is_empty!19393 tp!1167231))))

(assert (=> b!3850425 (= tp!1167102 e!2380273)))

(assert (= (and b!3850425 ((_ is Cons!40798) (t!311777 suffixResult!91))) b!3851012))

(declare-fun e!2380276 () Bool)

(assert (=> b!3850424 (= tp!1167108 e!2380276)))

(declare-fun b!3851023 () Bool)

(assert (=> b!3851023 (= e!2380276 tp_is_empty!19393)))

(declare-fun b!3851026 () Bool)

(declare-fun tp!1167246 () Bool)

(declare-fun tp!1167245 () Bool)

(assert (=> b!3851026 (= e!2380276 (and tp!1167246 tp!1167245))))

(declare-fun b!3851024 () Bool)

(declare-fun tp!1167242 () Bool)

(declare-fun tp!1167243 () Bool)

(assert (=> b!3851024 (= e!2380276 (and tp!1167242 tp!1167243))))

(declare-fun b!3851025 () Bool)

(declare-fun tp!1167244 () Bool)

(assert (=> b!3851025 (= e!2380276 tp!1167244)))

(assert (= (and b!3850424 ((_ is ElementMatch!11211) (regex!6306 (h!46221 rules!2768)))) b!3851023))

(assert (= (and b!3850424 ((_ is Concat!17748) (regex!6306 (h!46221 rules!2768)))) b!3851024))

(assert (= (and b!3850424 ((_ is Star!11211) (regex!6306 (h!46221 rules!2768)))) b!3851025))

(assert (= (and b!3850424 ((_ is Union!11211) (regex!6306 (h!46221 rules!2768)))) b!3851026))

(declare-fun e!2380277 () Bool)

(assert (=> b!3850437 (= tp!1167117 e!2380277)))

(declare-fun b!3851027 () Bool)

(assert (=> b!3851027 (= e!2380277 tp_is_empty!19393)))

(declare-fun b!3851030 () Bool)

(declare-fun tp!1167251 () Bool)

(declare-fun tp!1167250 () Bool)

(assert (=> b!3851030 (= e!2380277 (and tp!1167251 tp!1167250))))

(declare-fun b!3851028 () Bool)

(declare-fun tp!1167247 () Bool)

(declare-fun tp!1167248 () Bool)

(assert (=> b!3851028 (= e!2380277 (and tp!1167247 tp!1167248))))

(declare-fun b!3851029 () Bool)

(declare-fun tp!1167249 () Bool)

(assert (=> b!3851029 (= e!2380277 tp!1167249)))

(assert (= (and b!3850437 ((_ is ElementMatch!11211) (regex!6306 (rule!9158 (h!46220 suffixTokens!72))))) b!3851027))

(assert (= (and b!3850437 ((_ is Concat!17748) (regex!6306 (rule!9158 (h!46220 suffixTokens!72))))) b!3851028))

(assert (= (and b!3850437 ((_ is Star!11211) (regex!6306 (rule!9158 (h!46220 suffixTokens!72))))) b!3851029))

(assert (= (and b!3850437 ((_ is Union!11211) (regex!6306 (rule!9158 (h!46220 suffixTokens!72))))) b!3851030))

(declare-fun e!2380278 () Bool)

(assert (=> b!3850415 (= tp!1167114 e!2380278)))

(declare-fun b!3851031 () Bool)

(assert (=> b!3851031 (= e!2380278 tp_is_empty!19393)))

(declare-fun b!3851034 () Bool)

(declare-fun tp!1167256 () Bool)

(declare-fun tp!1167255 () Bool)

(assert (=> b!3851034 (= e!2380278 (and tp!1167256 tp!1167255))))

(declare-fun b!3851032 () Bool)

(declare-fun tp!1167252 () Bool)

(declare-fun tp!1167253 () Bool)

(assert (=> b!3851032 (= e!2380278 (and tp!1167252 tp!1167253))))

(declare-fun b!3851033 () Bool)

(declare-fun tp!1167254 () Bool)

(assert (=> b!3851033 (= e!2380278 tp!1167254)))

(assert (= (and b!3850415 ((_ is ElementMatch!11211) (regex!6306 (rule!9158 (h!46220 prefixTokens!80))))) b!3851031))

(assert (= (and b!3850415 ((_ is Concat!17748) (regex!6306 (rule!9158 (h!46220 prefixTokens!80))))) b!3851032))

(assert (= (and b!3850415 ((_ is Star!11211) (regex!6306 (rule!9158 (h!46220 prefixTokens!80))))) b!3851033))

(assert (= (and b!3850415 ((_ is Union!11211) (regex!6306 (rule!9158 (h!46220 prefixTokens!80))))) b!3851034))

(declare-fun b_lambda!112563 () Bool)

(assert (= b_lambda!112553 (or (and b!3851011 b_free!103223 (= (toChars!8585 (transformation!6306 (h!46221 (t!311780 rules!2768)))) (toChars!8585 (transformation!6306 (rule!9158 (h!46220 suffixTokens!72)))))) (and b!3850427 b_free!103195) (and b!3850992 b_free!103219 (= (toChars!8585 (transformation!6306 (rule!9158 (h!46220 (t!311779 suffixTokens!72))))) (toChars!8585 (transformation!6306 (rule!9158 (h!46220 suffixTokens!72)))))) (and b!3850411 b_free!103191 (= (toChars!8585 (transformation!6306 (rule!9158 (h!46220 prefixTokens!80)))) (toChars!8585 (transformation!6306 (rule!9158 (h!46220 suffixTokens!72)))))) (and b!3850988 b_free!103215 (= (toChars!8585 (transformation!6306 (rule!9158 (h!46220 (t!311779 prefixTokens!80))))) (toChars!8585 (transformation!6306 (rule!9158 (h!46220 suffixTokens!72)))))) (and b!3850409 b_free!103199 (= (toChars!8585 (transformation!6306 (h!46221 rules!2768))) (toChars!8585 (transformation!6306 (rule!9158 (h!46220 suffixTokens!72)))))) b_lambda!112563)))

(declare-fun b_lambda!112565 () Bool)

(assert (= b_lambda!112551 (or (and b!3850992 b_free!103219 (= (toChars!8585 (transformation!6306 (rule!9158 (h!46220 (t!311779 suffixTokens!72))))) (toChars!8585 (transformation!6306 (rule!9158 (h!46220 prefixTokens!80)))))) (and b!3850988 b_free!103215 (= (toChars!8585 (transformation!6306 (rule!9158 (h!46220 (t!311779 prefixTokens!80))))) (toChars!8585 (transformation!6306 (rule!9158 (h!46220 prefixTokens!80)))))) (and b!3850411 b_free!103191) (and b!3851011 b_free!103223 (= (toChars!8585 (transformation!6306 (h!46221 (t!311780 rules!2768)))) (toChars!8585 (transformation!6306 (rule!9158 (h!46220 prefixTokens!80)))))) (and b!3850427 b_free!103195 (= (toChars!8585 (transformation!6306 (rule!9158 (h!46220 suffixTokens!72)))) (toChars!8585 (transformation!6306 (rule!9158 (h!46220 prefixTokens!80)))))) (and b!3850409 b_free!103199 (= (toChars!8585 (transformation!6306 (h!46221 rules!2768))) (toChars!8585 (transformation!6306 (rule!9158 (h!46220 prefixTokens!80)))))) b_lambda!112565)))

(check-sat (not b!3850989) (not d!1141754) (not b!3850473) (not b!3850999) (not b!3850565) (not bm!282231) (not b!3850660) (not b!3850564) (not b!3850671) (not b_next!103921) (not d!1141608) (not b_lambda!112559) (not b!3850675) tp_is_empty!19393 (not b_lambda!112565) b_and!287623 (not b!3850623) (not d!1141698) (not b!3850847) b_and!287611 (not b!3850459) (not b_next!103927) b_and!287609 (not tb!222221) (not b!3850958) (not b!3850934) (not b_next!103919) (not d!1141752) (not d!1141706) b_and!287617 (not b_next!103923) (not b!3850971) (not b!3850569) (not d!1141700) (not b_lambda!112561) (not b!3850684) (not b!3850610) (not b!3850475) (not b!3850972) (not b!3850997) (not b!3850942) (not b_next!103903) (not bm!282222) (not b!3851029) (not b!3850457) (not b_next!103901) (not tb!222185) (not b!3850963) (not d!1141762) (not d!1141766) (not b!3850704) (not d!1141696) (not b!3850795) b_and!287625 (not b!3850782) b_and!287627 b_and!287613 (not b_next!103899) (not b!3850455) (not d!1141618) (not b!3851034) (not b!3850567) (not b!3850624) (not d!1141770) (not b!3850635) (not b!3850937) (not b!3850739) (not b!3850841) (not d!1141728) (not b!3850621) b_and!287629 (not b!3850661) (not b!3850843) (not b!3851033) (not b!3850566) (not b!3850956) b_and!287621 (not b!3851000) (not d!1141712) (not b!3850845) (not d!1141708) (not b!3850965) (not b!3850637) (not b!3850991) (not b!3850935) (not b!3850683) (not b!3850784) (not b_next!103925) (not d!1141774) (not b!3850572) (not d!1141746) (not b!3850987) (not b!3850708) (not b!3850570) (not d!1141760) (not d!1141682) b_and!287607 (not b!3850848) (not d!1141742) (not b!3850652) (not b!3851009) (not b!3851032) (not tb!222191) (not b!3850849) (not b!3850944) (not b!3850611) (not b!3850974) (not d!1141672) (not b!3850957) (not b!3850568) (not d!1141736) (not b!3850673) (not b!3850622) (not b_lambda!112563) (not tb!222227) (not b!3851012) (not b!3851025) (not b_next!103895) (not b!3850842) (not b!3850986) (not d!1141764) (not b!3850705) (not b!3850651) (not b!3850998) b_and!287615 (not b!3850783) (not b!3850985) (not d!1141750) (not b!3851030) (not b!3850794) (not b_next!103893) (not b!3851010) (not d!1141692) (not d!1141768) (not b!3851026) (not b!3850969) (not b!3850641) (not b!3850844) (not b!3850638) (not b!3850967) (not d!1141744) (not b!3850990) (not b!3850658) (not b!3850586) (not b!3851024) b_and!287619 (not b!3850788) (not b_next!103917) (not b!3851028) (not b_next!103897))
(check-sat (not b_next!103921) b_and!287623 (not b_next!103919) (not b_next!103903) (not b_next!103901) b_and!287625 b_and!287629 b_and!287621 (not b_next!103925) b_and!287607 (not b_next!103895) b_and!287615 (not b_next!103893) b_and!287619 b_and!287611 (not b_next!103927) b_and!287609 b_and!287617 (not b_next!103923) (not b_next!103899) b_and!287627 b_and!287613 (not b_next!103917) (not b_next!103897))
