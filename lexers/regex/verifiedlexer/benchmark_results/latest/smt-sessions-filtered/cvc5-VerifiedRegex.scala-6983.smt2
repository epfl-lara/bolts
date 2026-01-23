; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!370726 () Bool)

(assert start!370726)

(declare-fun b!3945733 () Bool)

(declare-fun b_free!108113 () Bool)

(declare-fun b_next!108817 () Bool)

(assert (=> b!3945733 (= b_free!108113 (not b_next!108817))))

(declare-fun tp!1201255 () Bool)

(declare-fun b_and!301847 () Bool)

(assert (=> b!3945733 (= tp!1201255 b_and!301847)))

(declare-fun b_free!108115 () Bool)

(declare-fun b_next!108819 () Bool)

(assert (=> b!3945733 (= b_free!108115 (not b_next!108819))))

(declare-fun tp!1201244 () Bool)

(declare-fun b_and!301849 () Bool)

(assert (=> b!3945733 (= tp!1201244 b_and!301849)))

(declare-fun b!3945734 () Bool)

(declare-fun b_free!108117 () Bool)

(declare-fun b_next!108821 () Bool)

(assert (=> b!3945734 (= b_free!108117 (not b_next!108821))))

(declare-fun tp!1201251 () Bool)

(declare-fun b_and!301851 () Bool)

(assert (=> b!3945734 (= tp!1201251 b_and!301851)))

(declare-fun b_free!108119 () Bool)

(declare-fun b_next!108823 () Bool)

(assert (=> b!3945734 (= b_free!108119 (not b_next!108823))))

(declare-fun tp!1201245 () Bool)

(declare-fun b_and!301853 () Bool)

(assert (=> b!3945734 (= tp!1201245 b_and!301853)))

(declare-fun b!3945751 () Bool)

(declare-fun b_free!108121 () Bool)

(declare-fun b_next!108825 () Bool)

(assert (=> b!3945751 (= b_free!108121 (not b_next!108825))))

(declare-fun tp!1201253 () Bool)

(declare-fun b_and!301855 () Bool)

(assert (=> b!3945751 (= tp!1201253 b_and!301855)))

(declare-fun b_free!108123 () Bool)

(declare-fun b_next!108827 () Bool)

(assert (=> b!3945751 (= b_free!108123 (not b_next!108827))))

(declare-fun tp!1201247 () Bool)

(declare-fun b_and!301857 () Bool)

(assert (=> b!3945751 (= tp!1201247 b_and!301857)))

(declare-fun b!3945731 () Bool)

(declare-fun e!2441605 () Bool)

(declare-datatypes ((List!42033 0))(
  ( (Nil!41909) (Cons!41909 (h!47329 (_ BitVec 16)) (t!327696 List!42033)) )
))
(declare-datatypes ((TokenValue!6783 0))(
  ( (FloatLiteralValue!13566 (text!47926 List!42033)) (TokenValueExt!6782 (__x!25783 Int)) (Broken!33915 (value!207370 List!42033)) (Object!6906) (End!6783) (Def!6783) (Underscore!6783) (Match!6783) (Else!6783) (Error!6783) (Case!6783) (If!6783) (Extends!6783) (Abstract!6783) (Class!6783) (Val!6783) (DelimiterValue!13566 (del!6843 List!42033)) (KeywordValue!6789 (value!207371 List!42033)) (CommentValue!13566 (value!207372 List!42033)) (WhitespaceValue!13566 (value!207373 List!42033)) (IndentationValue!6783 (value!207374 List!42033)) (String!47634) (Int32!6783) (Broken!33916 (value!207375 List!42033)) (Boolean!6784) (Unit!60446) (OperatorValue!6786 (op!6843 List!42033)) (IdentifierValue!13566 (value!207376 List!42033)) (IdentifierValue!13567 (value!207377 List!42033)) (WhitespaceValue!13567 (value!207378 List!42033)) (True!13566) (False!13566) (Broken!33917 (value!207379 List!42033)) (Broken!33918 (value!207380 List!42033)) (True!13567) (RightBrace!6783) (RightBracket!6783) (Colon!6783) (Null!6783) (Comma!6783) (LeftBracket!6783) (False!13567) (LeftBrace!6783) (ImaginaryLiteralValue!6783 (text!47927 List!42033)) (StringLiteralValue!20349 (value!207381 List!42033)) (EOFValue!6783 (value!207382 List!42033)) (IdentValue!6783 (value!207383 List!42033)) (DelimiterValue!13567 (value!207384 List!42033)) (DedentValue!6783 (value!207385 List!42033)) (NewLineValue!6783 (value!207386 List!42033)) (IntegerValue!20349 (value!207387 (_ BitVec 32)) (text!47928 List!42033)) (IntegerValue!20350 (value!207388 Int) (text!47929 List!42033)) (Times!6783) (Or!6783) (Equal!6783) (Minus!6783) (Broken!33919 (value!207389 List!42033)) (And!6783) (Div!6783) (LessEqual!6783) (Mod!6783) (Concat!18241) (Not!6783) (Plus!6783) (SpaceValue!6783 (value!207390 List!42033)) (IntegerValue!20351 (value!207391 Int) (text!47930 List!42033)) (StringLiteralValue!20350 (text!47931 List!42033)) (FloatLiteralValue!13567 (text!47932 List!42033)) (BytesLiteralValue!6783 (value!207392 List!42033)) (CommentValue!13567 (value!207393 List!42033)) (StringLiteralValue!20351 (value!207394 List!42033)) (ErrorTokenValue!6783 (msg!6844 List!42033)) )
))
(declare-datatypes ((C!23102 0))(
  ( (C!23103 (val!13645 Int)) )
))
(declare-datatypes ((Regex!11458 0))(
  ( (ElementMatch!11458 (c!685365 C!23102)) (Concat!18242 (regOne!23428 Regex!11458) (regTwo!23428 Regex!11458)) (EmptyExpr!11458) (Star!11458 (reg!11787 Regex!11458)) (EmptyLang!11458) (Union!11458 (regOne!23429 Regex!11458) (regTwo!23429 Regex!11458)) )
))
(declare-datatypes ((String!47635 0))(
  ( (String!47636 (value!207395 String)) )
))
(declare-datatypes ((List!42034 0))(
  ( (Nil!41910) (Cons!41910 (h!47330 C!23102) (t!327697 List!42034)) )
))
(declare-datatypes ((IArray!25533 0))(
  ( (IArray!25534 (innerList!12824 List!42034)) )
))
(declare-datatypes ((Conc!12764 0))(
  ( (Node!12764 (left!31915 Conc!12764) (right!32245 Conc!12764) (csize!25758 Int) (cheight!12975 Int)) (Leaf!19748 (xs!16070 IArray!25533) (csize!25759 Int)) (Empty!12764) )
))
(declare-datatypes ((BalanceConc!25122 0))(
  ( (BalanceConc!25123 (c!685366 Conc!12764)) )
))
(declare-datatypes ((TokenValueInjection!12994 0))(
  ( (TokenValueInjection!12995 (toValue!9025 Int) (toChars!8884 Int)) )
))
(declare-datatypes ((Rule!12906 0))(
  ( (Rule!12907 (regex!6553 Regex!11458) (tag!7413 String!47635) (isSeparator!6553 Bool) (transformation!6553 TokenValueInjection!12994)) )
))
(declare-datatypes ((Token!12244 0))(
  ( (Token!12245 (value!207396 TokenValue!6783) (rule!9517 Rule!12906) (size!31426 Int) (originalCharacters!7153 List!42034)) )
))
(declare-datatypes ((tuple2!41198 0))(
  ( (tuple2!41199 (_1!23733 Token!12244) (_2!23733 List!42034)) )
))
(declare-datatypes ((Option!8973 0))(
  ( (None!8972) (Some!8972 (v!39310 tuple2!41198)) )
))
(declare-fun lt!1379525 () Option!8973)

(declare-fun lt!1379518 () List!42034)

(declare-fun apply!9784 (TokenValueInjection!12994 BalanceConc!25122) TokenValue!6783)

(declare-fun seqFromList!4812 (List!42034) BalanceConc!25122)

(assert (=> b!3945731 (= e!2441605 (not (= (value!207396 (_1!23733 (v!39310 lt!1379525))) (apply!9784 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525)))) (seqFromList!4812 lt!1379518)))))))

(declare-fun lt!1379524 () List!42034)

(assert (=> b!3945731 (= (_2!23733 (v!39310 lt!1379525)) lt!1379524)))

(declare-datatypes ((Unit!60447 0))(
  ( (Unit!60448) )
))
(declare-fun lt!1379520 () Unit!60447)

(declare-fun lt!1379523 () List!42034)

(declare-fun lemmaSamePrefixThenSameSuffix!1851 (List!42034 List!42034 List!42034 List!42034 List!42034) Unit!60447)

(assert (=> b!3945731 (= lt!1379520 (lemmaSamePrefixThenSameSuffix!1851 lt!1379518 (_2!23733 (v!39310 lt!1379525)) lt!1379518 lt!1379524 lt!1379523))))

(declare-fun getSuffix!2093 (List!42034 List!42034) List!42034)

(assert (=> b!3945731 (= lt!1379524 (getSuffix!2093 lt!1379523 lt!1379518))))

(declare-fun isPrefix!3642 (List!42034 List!42034) Bool)

(declare-fun ++!10863 (List!42034 List!42034) List!42034)

(assert (=> b!3945731 (isPrefix!3642 lt!1379518 (++!10863 lt!1379518 (_2!23733 (v!39310 lt!1379525))))))

(declare-fun lt!1379521 () Unit!60447)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2501 (List!42034 List!42034) Unit!60447)

(assert (=> b!3945731 (= lt!1379521 (lemmaConcatTwoListThenFirstIsPrefix!2501 lt!1379518 (_2!23733 (v!39310 lt!1379525))))))

(declare-fun list!15567 (BalanceConc!25122) List!42034)

(declare-fun charsOf!4371 (Token!12244) BalanceConc!25122)

(assert (=> b!3945731 (= lt!1379518 (list!15567 (charsOf!4371 (_1!23733 (v!39310 lt!1379525)))))))

(declare-datatypes ((LexerInterface!6142 0))(
  ( (LexerInterfaceExt!6139 (__x!25784 Int)) (Lexer!6140) )
))
(declare-fun thiss!20629 () LexerInterface!6142)

(declare-fun ruleValid!2495 (LexerInterface!6142 Rule!12906) Bool)

(assert (=> b!3945731 (ruleValid!2495 thiss!20629 (rule!9517 (_1!23733 (v!39310 lt!1379525))))))

(declare-fun lt!1379522 () Unit!60447)

(declare-datatypes ((List!42035 0))(
  ( (Nil!41911) (Cons!41911 (h!47331 Rule!12906) (t!327698 List!42035)) )
))
(declare-fun rules!2768 () List!42035)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1571 (LexerInterface!6142 Rule!12906 List!42035) Unit!60447)

(assert (=> b!3945731 (= lt!1379522 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1571 thiss!20629 (rule!9517 (_1!23733 (v!39310 lt!1379525))) rules!2768))))

(declare-fun lt!1379519 () Unit!60447)

(declare-fun lemmaCharactersSize!1206 (Token!12244) Unit!60447)

(assert (=> b!3945731 (= lt!1379519 (lemmaCharactersSize!1206 (_1!23733 (v!39310 lt!1379525))))))

(declare-fun res!1596617 () Bool)

(declare-fun e!2441600 () Bool)

(assert (=> start!370726 (=> (not res!1596617) (not e!2441600))))

(assert (=> start!370726 (= res!1596617 (is-Lexer!6140 thiss!20629))))

(assert (=> start!370726 e!2441600))

(declare-fun e!2441599 () Bool)

(assert (=> start!370726 e!2441599))

(assert (=> start!370726 true))

(declare-fun e!2441612 () Bool)

(assert (=> start!370726 e!2441612))

(declare-fun e!2441606 () Bool)

(assert (=> start!370726 e!2441606))

(declare-fun e!2441614 () Bool)

(assert (=> start!370726 e!2441614))

(declare-fun e!2441604 () Bool)

(assert (=> start!370726 e!2441604))

(declare-fun e!2441610 () Bool)

(assert (=> start!370726 e!2441610))

(declare-fun b!3945732 () Bool)

(declare-fun e!2441598 () Bool)

(assert (=> b!3945732 (= e!2441600 e!2441598)))

(declare-fun res!1596613 () Bool)

(assert (=> b!3945732 (=> (not res!1596613) (not e!2441598))))

(declare-fun suffixResult!91 () List!42034)

(declare-datatypes ((List!42036 0))(
  ( (Nil!41912) (Cons!41912 (h!47332 Token!12244) (t!327699 List!42036)) )
))
(declare-fun prefixTokens!80 () List!42036)

(declare-fun suffixTokens!72 () List!42036)

(declare-datatypes ((tuple2!41200 0))(
  ( (tuple2!41201 (_1!23734 List!42036) (_2!23734 List!42034)) )
))
(declare-fun lexList!1910 (LexerInterface!6142 List!42035 List!42034) tuple2!41200)

(declare-fun ++!10864 (List!42036 List!42036) List!42036)

(assert (=> b!3945732 (= res!1596613 (= (lexList!1910 thiss!20629 rules!2768 lt!1379523) (tuple2!41201 (++!10864 prefixTokens!80 suffixTokens!72) suffixResult!91)))))

(declare-fun prefix!426 () List!42034)

(declare-fun suffix!1176 () List!42034)

(assert (=> b!3945732 (= lt!1379523 (++!10863 prefix!426 suffix!1176))))

(declare-fun e!2441609 () Bool)

(assert (=> b!3945733 (= e!2441609 (and tp!1201255 tp!1201244))))

(declare-fun e!2441603 () Bool)

(assert (=> b!3945734 (= e!2441603 (and tp!1201251 tp!1201245))))

(declare-fun b!3945735 () Bool)

(declare-fun res!1596615 () Bool)

(assert (=> b!3945735 (=> (not res!1596615) (not e!2441600))))

(declare-fun isEmpty!25013 (List!42035) Bool)

(assert (=> b!3945735 (= res!1596615 (not (isEmpty!25013 rules!2768)))))

(declare-fun b!3945736 () Bool)

(assert (=> b!3945736 (= e!2441598 e!2441605)))

(declare-fun res!1596614 () Bool)

(assert (=> b!3945736 (=> (not res!1596614) (not e!2441605))))

(assert (=> b!3945736 (= res!1596614 (is-Some!8972 lt!1379525))))

(declare-fun maxPrefix!3446 (LexerInterface!6142 List!42035 List!42034) Option!8973)

(assert (=> b!3945736 (= lt!1379525 (maxPrefix!3446 thiss!20629 rules!2768 lt!1379523))))

(declare-fun b!3945737 () Bool)

(declare-fun tp_is_empty!19887 () Bool)

(declare-fun tp!1201259 () Bool)

(assert (=> b!3945737 (= e!2441612 (and tp_is_empty!19887 tp!1201259))))

(declare-fun e!2441615 () Bool)

(declare-fun tp!1201248 () Bool)

(declare-fun e!2441602 () Bool)

(declare-fun b!3945738 () Bool)

(declare-fun inv!21 (TokenValue!6783) Bool)

(assert (=> b!3945738 (= e!2441602 (and (inv!21 (value!207396 (h!47332 prefixTokens!80))) e!2441615 tp!1201248))))

(declare-fun b!3945739 () Bool)

(declare-fun res!1596618 () Bool)

(assert (=> b!3945739 (=> (not res!1596618) (not e!2441600))))

(declare-fun isEmpty!25014 (List!42034) Bool)

(assert (=> b!3945739 (= res!1596618 (not (isEmpty!25014 prefix!426)))))

(declare-fun b!3945740 () Bool)

(declare-fun tp!1201257 () Bool)

(declare-fun e!2441616 () Bool)

(declare-fun inv!56133 (Token!12244) Bool)

(assert (=> b!3945740 (= e!2441604 (and (inv!56133 (h!47332 suffixTokens!72)) e!2441616 tp!1201257))))

(declare-fun b!3945741 () Bool)

(declare-fun tp!1201250 () Bool)

(assert (=> b!3945741 (= e!2441599 (and tp_is_empty!19887 tp!1201250))))

(declare-fun tp!1201249 () Bool)

(declare-fun b!3945742 () Bool)

(declare-fun inv!56130 (String!47635) Bool)

(declare-fun inv!56134 (TokenValueInjection!12994) Bool)

(assert (=> b!3945742 (= e!2441615 (and tp!1201249 (inv!56130 (tag!7413 (rule!9517 (h!47332 prefixTokens!80)))) (inv!56134 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80)))) e!2441603))))

(declare-fun e!2441597 () Bool)

(declare-fun tp!1201246 () Bool)

(declare-fun b!3945743 () Bool)

(assert (=> b!3945743 (= e!2441597 (and tp!1201246 (inv!56130 (tag!7413 (h!47331 rules!2768))) (inv!56134 (transformation!6553 (h!47331 rules!2768))) e!2441609))))

(declare-fun b!3945744 () Bool)

(declare-fun res!1596619 () Bool)

(assert (=> b!3945744 (=> (not res!1596619) (not e!2441598))))

(assert (=> b!3945744 (= res!1596619 (= (lexList!1910 thiss!20629 rules!2768 suffix!1176) (tuple2!41201 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3945745 () Bool)

(declare-fun tp!1201256 () Bool)

(assert (=> b!3945745 (= e!2441610 (and tp_is_empty!19887 tp!1201256))))

(declare-fun tp!1201243 () Bool)

(declare-fun b!3945746 () Bool)

(assert (=> b!3945746 (= e!2441614 (and (inv!56133 (h!47332 prefixTokens!80)) e!2441602 tp!1201243))))

(declare-fun b!3945747 () Bool)

(declare-fun res!1596616 () Bool)

(assert (=> b!3945747 (=> (not res!1596616) (not e!2441600))))

(declare-fun rulesInvariant!5485 (LexerInterface!6142 List!42035) Bool)

(assert (=> b!3945747 (= res!1596616 (rulesInvariant!5485 thiss!20629 rules!2768))))

(declare-fun e!2441611 () Bool)

(declare-fun e!2441601 () Bool)

(declare-fun tp!1201252 () Bool)

(declare-fun b!3945748 () Bool)

(assert (=> b!3945748 (= e!2441611 (and tp!1201252 (inv!56130 (tag!7413 (rule!9517 (h!47332 suffixTokens!72)))) (inv!56134 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72)))) e!2441601))))

(declare-fun b!3945749 () Bool)

(declare-fun res!1596620 () Bool)

(assert (=> b!3945749 (=> (not res!1596620) (not e!2441600))))

(declare-fun isEmpty!25015 (List!42036) Bool)

(assert (=> b!3945749 (= res!1596620 (not (isEmpty!25015 prefixTokens!80)))))

(declare-fun b!3945750 () Bool)

(declare-fun tp!1201254 () Bool)

(assert (=> b!3945750 (= e!2441606 (and e!2441597 tp!1201254))))

(assert (=> b!3945751 (= e!2441601 (and tp!1201253 tp!1201247))))

(declare-fun tp!1201258 () Bool)

(declare-fun b!3945752 () Bool)

(assert (=> b!3945752 (= e!2441616 (and (inv!21 (value!207396 (h!47332 suffixTokens!72))) e!2441611 tp!1201258))))

(assert (= (and start!370726 res!1596617) b!3945735))

(assert (= (and b!3945735 res!1596615) b!3945747))

(assert (= (and b!3945747 res!1596616) b!3945749))

(assert (= (and b!3945749 res!1596620) b!3945739))

(assert (= (and b!3945739 res!1596618) b!3945732))

(assert (= (and b!3945732 res!1596613) b!3945744))

(assert (= (and b!3945744 res!1596619) b!3945736))

(assert (= (and b!3945736 res!1596614) b!3945731))

(assert (= (and start!370726 (is-Cons!41910 suffixResult!91)) b!3945741))

(assert (= (and start!370726 (is-Cons!41910 suffix!1176)) b!3945737))

(assert (= b!3945743 b!3945733))

(assert (= b!3945750 b!3945743))

(assert (= (and start!370726 (is-Cons!41911 rules!2768)) b!3945750))

(assert (= b!3945742 b!3945734))

(assert (= b!3945738 b!3945742))

(assert (= b!3945746 b!3945738))

(assert (= (and start!370726 (is-Cons!41912 prefixTokens!80)) b!3945746))

(assert (= b!3945748 b!3945751))

(assert (= b!3945752 b!3945748))

(assert (= b!3945740 b!3945752))

(assert (= (and start!370726 (is-Cons!41912 suffixTokens!72)) b!3945740))

(assert (= (and start!370726 (is-Cons!41910 prefix!426)) b!3945745))

(declare-fun m!4514477 () Bool)

(assert (=> b!3945742 m!4514477))

(declare-fun m!4514479 () Bool)

(assert (=> b!3945742 m!4514479))

(declare-fun m!4514481 () Bool)

(assert (=> b!3945746 m!4514481))

(declare-fun m!4514483 () Bool)

(assert (=> b!3945732 m!4514483))

(declare-fun m!4514485 () Bool)

(assert (=> b!3945732 m!4514485))

(declare-fun m!4514487 () Bool)

(assert (=> b!3945732 m!4514487))

(declare-fun m!4514489 () Bool)

(assert (=> b!3945743 m!4514489))

(declare-fun m!4514491 () Bool)

(assert (=> b!3945743 m!4514491))

(declare-fun m!4514493 () Bool)

(assert (=> b!3945738 m!4514493))

(declare-fun m!4514495 () Bool)

(assert (=> b!3945731 m!4514495))

(declare-fun m!4514497 () Bool)

(assert (=> b!3945731 m!4514497))

(declare-fun m!4514499 () Bool)

(assert (=> b!3945731 m!4514499))

(declare-fun m!4514501 () Bool)

(assert (=> b!3945731 m!4514501))

(assert (=> b!3945731 m!4514497))

(declare-fun m!4514503 () Bool)

(assert (=> b!3945731 m!4514503))

(assert (=> b!3945731 m!4514501))

(declare-fun m!4514505 () Bool)

(assert (=> b!3945731 m!4514505))

(declare-fun m!4514507 () Bool)

(assert (=> b!3945731 m!4514507))

(declare-fun m!4514509 () Bool)

(assert (=> b!3945731 m!4514509))

(declare-fun m!4514511 () Bool)

(assert (=> b!3945731 m!4514511))

(declare-fun m!4514513 () Bool)

(assert (=> b!3945731 m!4514513))

(declare-fun m!4514515 () Bool)

(assert (=> b!3945731 m!4514515))

(assert (=> b!3945731 m!4514515))

(declare-fun m!4514517 () Bool)

(assert (=> b!3945731 m!4514517))

(declare-fun m!4514519 () Bool)

(assert (=> b!3945744 m!4514519))

(declare-fun m!4514521 () Bool)

(assert (=> b!3945748 m!4514521))

(declare-fun m!4514523 () Bool)

(assert (=> b!3945748 m!4514523))

(declare-fun m!4514525 () Bool)

(assert (=> b!3945752 m!4514525))

(declare-fun m!4514527 () Bool)

(assert (=> b!3945740 m!4514527))

(declare-fun m!4514529 () Bool)

(assert (=> b!3945747 m!4514529))

(declare-fun m!4514531 () Bool)

(assert (=> b!3945749 m!4514531))

(declare-fun m!4514533 () Bool)

(assert (=> b!3945739 m!4514533))

(declare-fun m!4514535 () Bool)

(assert (=> b!3945735 m!4514535))

(declare-fun m!4514537 () Bool)

(assert (=> b!3945736 m!4514537))

(push 1)

(assert b_and!301847)

(assert (not b!3945749))

(assert (not b!3945743))

(assert (not b!3945747))

(assert (not b!3945746))

(assert b_and!301853)

(assert tp_is_empty!19887)

(assert (not b!3945748))

(assert (not b!3945741))

(assert (not b!3945737))

(assert (not b_next!108827))

(assert (not b_next!108821))

(assert (not b!3945752))

(assert (not b!3945750))

(assert (not b!3945739))

(assert (not b_next!108823))

(assert (not b_next!108817))

(assert b_and!301849)

(assert b_and!301855)

(assert (not b!3945738))

(assert (not b!3945736))

(assert (not b!3945740))

(assert b_and!301857)

(assert (not b_next!108825))

(assert (not b!3945744))

(assert (not b!3945731))

(assert (not b_next!108819))

(assert (not b!3945745))

(assert (not b!3945732))

(assert (not b!3945735))

(assert (not b!3945742))

(assert b_and!301851)

(check-sat)

(pop 1)

(push 1)

(assert b_and!301847)

(assert b_and!301853)

(assert b_and!301857)

(assert (not b_next!108825))

(assert (not b_next!108819))

(assert (not b_next!108827))

(assert (not b_next!108821))

(assert b_and!301851)

(assert (not b_next!108823))

(assert (not b_next!108817))

(assert b_and!301849)

(assert b_and!301855)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1170432 () Bool)

(assert (=> d!1170432 (= (isEmpty!25013 rules!2768) (is-Nil!41911 rules!2768))))

(assert (=> b!3945735 d!1170432))

(declare-fun d!1170434 () Bool)

(declare-fun res!1596656 () Bool)

(declare-fun e!2441688 () Bool)

(assert (=> d!1170434 (=> (not res!1596656) (not e!2441688))))

(assert (=> d!1170434 (= res!1596656 (not (isEmpty!25014 (originalCharacters!7153 (h!47332 prefixTokens!80)))))))

(assert (=> d!1170434 (= (inv!56133 (h!47332 prefixTokens!80)) e!2441688)))

(declare-fun b!3945826 () Bool)

(declare-fun res!1596657 () Bool)

(assert (=> b!3945826 (=> (not res!1596657) (not e!2441688))))

(declare-fun dynLambda!17956 (Int TokenValue!6783) BalanceConc!25122)

(assert (=> b!3945826 (= res!1596657 (= (originalCharacters!7153 (h!47332 prefixTokens!80)) (list!15567 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80)))) (value!207396 (h!47332 prefixTokens!80))))))))

(declare-fun b!3945827 () Bool)

(declare-fun size!31428 (List!42034) Int)

(assert (=> b!3945827 (= e!2441688 (= (size!31426 (h!47332 prefixTokens!80)) (size!31428 (originalCharacters!7153 (h!47332 prefixTokens!80)))))))

(assert (= (and d!1170434 res!1596656) b!3945826))

(assert (= (and b!3945826 res!1596657) b!3945827))

(declare-fun b_lambda!115403 () Bool)

(assert (=> (not b_lambda!115403) (not b!3945826)))

(declare-fun tb!236933 () Bool)

(declare-fun t!327705 () Bool)

(assert (=> (and b!3945733 (= (toChars!8884 (transformation!6553 (h!47331 rules!2768))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80))))) t!327705) tb!236933))

(declare-fun b!3945832 () Bool)

(declare-fun e!2441691 () Bool)

(declare-fun tp!1201313 () Bool)

(declare-fun inv!56137 (Conc!12764) Bool)

(assert (=> b!3945832 (= e!2441691 (and (inv!56137 (c!685366 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80)))) (value!207396 (h!47332 prefixTokens!80))))) tp!1201313))))

(declare-fun result!286974 () Bool)

(declare-fun inv!56138 (BalanceConc!25122) Bool)

(assert (=> tb!236933 (= result!286974 (and (inv!56138 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80)))) (value!207396 (h!47332 prefixTokens!80)))) e!2441691))))

(assert (= tb!236933 b!3945832))

(declare-fun m!4514605 () Bool)

(assert (=> b!3945832 m!4514605))

(declare-fun m!4514607 () Bool)

(assert (=> tb!236933 m!4514607))

(assert (=> b!3945826 t!327705))

(declare-fun b_and!301871 () Bool)

(assert (= b_and!301849 (and (=> t!327705 result!286974) b_and!301871)))

(declare-fun t!327707 () Bool)

(declare-fun tb!236935 () Bool)

(assert (=> (and b!3945734 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80)))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80))))) t!327707) tb!236935))

(declare-fun result!286978 () Bool)

(assert (= result!286978 result!286974))

(assert (=> b!3945826 t!327707))

(declare-fun b_and!301873 () Bool)

(assert (= b_and!301853 (and (=> t!327707 result!286978) b_and!301873)))

(declare-fun t!327709 () Bool)

(declare-fun tb!236937 () Bool)

(assert (=> (and b!3945751 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72)))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80))))) t!327709) tb!236937))

(declare-fun result!286980 () Bool)

(assert (= result!286980 result!286974))

(assert (=> b!3945826 t!327709))

(declare-fun b_and!301875 () Bool)

(assert (= b_and!301857 (and (=> t!327709 result!286980) b_and!301875)))

(declare-fun m!4514609 () Bool)

(assert (=> d!1170434 m!4514609))

(declare-fun m!4514611 () Bool)

(assert (=> b!3945826 m!4514611))

(assert (=> b!3945826 m!4514611))

(declare-fun m!4514613 () Bool)

(assert (=> b!3945826 m!4514613))

(declare-fun m!4514615 () Bool)

(assert (=> b!3945827 m!4514615))

(assert (=> b!3945746 d!1170434))

(declare-fun b!3945861 () Bool)

(declare-fun e!2441706 () Bool)

(declare-fun e!2441705 () Bool)

(assert (=> b!3945861 (= e!2441706 e!2441705)))

(declare-fun res!1596678 () Bool)

(assert (=> b!3945861 (=> (not res!1596678) (not e!2441705))))

(declare-fun lt!1379570 () Option!8973)

(declare-fun isDefined!6970 (Option!8973) Bool)

(assert (=> b!3945861 (= res!1596678 (isDefined!6970 lt!1379570))))

(declare-fun b!3945862 () Bool)

(declare-fun e!2441704 () Option!8973)

(declare-fun call!285145 () Option!8973)

(assert (=> b!3945862 (= e!2441704 call!285145)))

(declare-fun b!3945863 () Bool)

(declare-fun res!1596675 () Bool)

(assert (=> b!3945863 (=> (not res!1596675) (not e!2441705))))

(declare-fun get!13842 (Option!8973) tuple2!41198)

(assert (=> b!3945863 (= res!1596675 (= (list!15567 (charsOf!4371 (_1!23733 (get!13842 lt!1379570)))) (originalCharacters!7153 (_1!23733 (get!13842 lt!1379570)))))))

(declare-fun b!3945864 () Bool)

(declare-fun res!1596679 () Bool)

(assert (=> b!3945864 (=> (not res!1596679) (not e!2441705))))

(declare-fun matchR!5503 (Regex!11458 List!42034) Bool)

(assert (=> b!3945864 (= res!1596679 (matchR!5503 (regex!6553 (rule!9517 (_1!23733 (get!13842 lt!1379570)))) (list!15567 (charsOf!4371 (_1!23733 (get!13842 lt!1379570))))))))

(declare-fun b!3945865 () Bool)

(declare-fun res!1596674 () Bool)

(assert (=> b!3945865 (=> (not res!1596674) (not e!2441705))))

(assert (=> b!3945865 (= res!1596674 (< (size!31428 (_2!23733 (get!13842 lt!1379570))) (size!31428 lt!1379523)))))

(declare-fun b!3945866 () Bool)

(declare-fun contains!8393 (List!42035 Rule!12906) Bool)

(assert (=> b!3945866 (= e!2441705 (contains!8393 rules!2768 (rule!9517 (_1!23733 (get!13842 lt!1379570)))))))

(declare-fun d!1170436 () Bool)

(assert (=> d!1170436 e!2441706))

(declare-fun res!1596680 () Bool)

(assert (=> d!1170436 (=> res!1596680 e!2441706)))

(declare-fun isEmpty!25019 (Option!8973) Bool)

(assert (=> d!1170436 (= res!1596680 (isEmpty!25019 lt!1379570))))

(assert (=> d!1170436 (= lt!1379570 e!2441704)))

(declare-fun c!685376 () Bool)

(assert (=> d!1170436 (= c!685376 (and (is-Cons!41911 rules!2768) (is-Nil!41911 (t!327698 rules!2768))))))

(declare-fun lt!1379566 () Unit!60447)

(declare-fun lt!1379568 () Unit!60447)

(assert (=> d!1170436 (= lt!1379566 lt!1379568)))

(assert (=> d!1170436 (isPrefix!3642 lt!1379523 lt!1379523)))

(declare-fun lemmaIsPrefixRefl!2301 (List!42034 List!42034) Unit!60447)

(assert (=> d!1170436 (= lt!1379568 (lemmaIsPrefixRefl!2301 lt!1379523 lt!1379523))))

(declare-fun rulesValidInductive!2371 (LexerInterface!6142 List!42035) Bool)

(assert (=> d!1170436 (rulesValidInductive!2371 thiss!20629 rules!2768)))

(assert (=> d!1170436 (= (maxPrefix!3446 thiss!20629 rules!2768 lt!1379523) lt!1379570)))

(declare-fun b!3945867 () Bool)

(declare-fun lt!1379567 () Option!8973)

(declare-fun lt!1379569 () Option!8973)

(assert (=> b!3945867 (= e!2441704 (ite (and (is-None!8972 lt!1379567) (is-None!8972 lt!1379569)) None!8972 (ite (is-None!8972 lt!1379569) lt!1379567 (ite (is-None!8972 lt!1379567) lt!1379569 (ite (>= (size!31426 (_1!23733 (v!39310 lt!1379567))) (size!31426 (_1!23733 (v!39310 lt!1379569)))) lt!1379567 lt!1379569)))))))

(assert (=> b!3945867 (= lt!1379567 call!285145)))

(assert (=> b!3945867 (= lt!1379569 (maxPrefix!3446 thiss!20629 (t!327698 rules!2768) lt!1379523))))

(declare-fun b!3945868 () Bool)

(declare-fun res!1596677 () Bool)

(assert (=> b!3945868 (=> (not res!1596677) (not e!2441705))))

(assert (=> b!3945868 (= res!1596677 (= (++!10863 (list!15567 (charsOf!4371 (_1!23733 (get!13842 lt!1379570)))) (_2!23733 (get!13842 lt!1379570))) lt!1379523))))

(declare-fun b!3945869 () Bool)

(declare-fun res!1596676 () Bool)

(assert (=> b!3945869 (=> (not res!1596676) (not e!2441705))))

(assert (=> b!3945869 (= res!1596676 (= (value!207396 (_1!23733 (get!13842 lt!1379570))) (apply!9784 (transformation!6553 (rule!9517 (_1!23733 (get!13842 lt!1379570)))) (seqFromList!4812 (originalCharacters!7153 (_1!23733 (get!13842 lt!1379570)))))))))

(declare-fun bm!285140 () Bool)

(declare-fun maxPrefixOneRule!2508 (LexerInterface!6142 Rule!12906 List!42034) Option!8973)

(assert (=> bm!285140 (= call!285145 (maxPrefixOneRule!2508 thiss!20629 (h!47331 rules!2768) lt!1379523))))

(assert (= (and d!1170436 c!685376) b!3945862))

(assert (= (and d!1170436 (not c!685376)) b!3945867))

(assert (= (or b!3945862 b!3945867) bm!285140))

(assert (= (and d!1170436 (not res!1596680)) b!3945861))

(assert (= (and b!3945861 res!1596678) b!3945863))

(assert (= (and b!3945863 res!1596675) b!3945865))

(assert (= (and b!3945865 res!1596674) b!3945868))

(assert (= (and b!3945868 res!1596677) b!3945869))

(assert (= (and b!3945869 res!1596676) b!3945864))

(assert (= (and b!3945864 res!1596679) b!3945866))

(declare-fun m!4514617 () Bool)

(assert (=> b!3945861 m!4514617))

(declare-fun m!4514619 () Bool)

(assert (=> b!3945869 m!4514619))

(declare-fun m!4514621 () Bool)

(assert (=> b!3945869 m!4514621))

(assert (=> b!3945869 m!4514621))

(declare-fun m!4514623 () Bool)

(assert (=> b!3945869 m!4514623))

(assert (=> b!3945868 m!4514619))

(declare-fun m!4514625 () Bool)

(assert (=> b!3945868 m!4514625))

(assert (=> b!3945868 m!4514625))

(declare-fun m!4514627 () Bool)

(assert (=> b!3945868 m!4514627))

(assert (=> b!3945868 m!4514627))

(declare-fun m!4514629 () Bool)

(assert (=> b!3945868 m!4514629))

(declare-fun m!4514631 () Bool)

(assert (=> b!3945867 m!4514631))

(assert (=> b!3945864 m!4514619))

(assert (=> b!3945864 m!4514625))

(assert (=> b!3945864 m!4514625))

(assert (=> b!3945864 m!4514627))

(assert (=> b!3945864 m!4514627))

(declare-fun m!4514633 () Bool)

(assert (=> b!3945864 m!4514633))

(assert (=> b!3945866 m!4514619))

(declare-fun m!4514635 () Bool)

(assert (=> b!3945866 m!4514635))

(declare-fun m!4514637 () Bool)

(assert (=> d!1170436 m!4514637))

(declare-fun m!4514639 () Bool)

(assert (=> d!1170436 m!4514639))

(declare-fun m!4514641 () Bool)

(assert (=> d!1170436 m!4514641))

(declare-fun m!4514643 () Bool)

(assert (=> d!1170436 m!4514643))

(assert (=> b!3945865 m!4514619))

(declare-fun m!4514645 () Bool)

(assert (=> b!3945865 m!4514645))

(declare-fun m!4514647 () Bool)

(assert (=> b!3945865 m!4514647))

(assert (=> b!3945863 m!4514619))

(assert (=> b!3945863 m!4514625))

(assert (=> b!3945863 m!4514625))

(assert (=> b!3945863 m!4514627))

(declare-fun m!4514649 () Bool)

(assert (=> bm!285140 m!4514649))

(assert (=> b!3945736 d!1170436))

(declare-fun d!1170438 () Bool)

(declare-fun res!1596684 () Bool)

(declare-fun e!2441712 () Bool)

(assert (=> d!1170438 (=> (not res!1596684) (not e!2441712))))

(declare-fun rulesValid!2558 (LexerInterface!6142 List!42035) Bool)

(assert (=> d!1170438 (= res!1596684 (rulesValid!2558 thiss!20629 rules!2768))))

(assert (=> d!1170438 (= (rulesInvariant!5485 thiss!20629 rules!2768) e!2441712)))

(declare-fun b!3945877 () Bool)

(declare-datatypes ((List!42041 0))(
  ( (Nil!41917) (Cons!41917 (h!47337 String!47635) (t!327776 List!42041)) )
))
(declare-fun noDuplicateTag!2559 (LexerInterface!6142 List!42035 List!42041) Bool)

(assert (=> b!3945877 (= e!2441712 (noDuplicateTag!2559 thiss!20629 rules!2768 Nil!41917))))

(assert (= (and d!1170438 res!1596684) b!3945877))

(declare-fun m!4514663 () Bool)

(assert (=> d!1170438 m!4514663))

(declare-fun m!4514665 () Bool)

(assert (=> b!3945877 m!4514665))

(assert (=> b!3945747 d!1170438))

(declare-fun d!1170444 () Bool)

(assert (=> d!1170444 (= (inv!56130 (tag!7413 (rule!9517 (h!47332 suffixTokens!72)))) (= (mod (str.len (value!207395 (tag!7413 (rule!9517 (h!47332 suffixTokens!72))))) 2) 0))))

(assert (=> b!3945748 d!1170444))

(declare-fun d!1170446 () Bool)

(declare-fun res!1596691 () Bool)

(declare-fun e!2441717 () Bool)

(assert (=> d!1170446 (=> (not res!1596691) (not e!2441717))))

(declare-fun semiInverseModEq!2824 (Int Int) Bool)

(assert (=> d!1170446 (= res!1596691 (semiInverseModEq!2824 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72)))) (toValue!9025 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72))))))))

(assert (=> d!1170446 (= (inv!56134 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72)))) e!2441717)))

(declare-fun b!3945884 () Bool)

(declare-fun equivClasses!2723 (Int Int) Bool)

(assert (=> b!3945884 (= e!2441717 (equivClasses!2723 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72)))) (toValue!9025 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72))))))))

(assert (= (and d!1170446 res!1596691) b!3945884))

(declare-fun m!4514667 () Bool)

(assert (=> d!1170446 m!4514667))

(declare-fun m!4514669 () Bool)

(assert (=> b!3945884 m!4514669))

(assert (=> b!3945748 d!1170446))

(declare-fun b!3945901 () Bool)

(declare-fun e!2441729 () Bool)

(declare-fun e!2441727 () Bool)

(assert (=> b!3945901 (= e!2441729 e!2441727)))

(declare-fun c!685383 () Bool)

(assert (=> b!3945901 (= c!685383 (is-IntegerValue!20350 (value!207396 (h!47332 prefixTokens!80))))))

(declare-fun b!3945902 () Bool)

(declare-fun res!1596696 () Bool)

(declare-fun e!2441728 () Bool)

(assert (=> b!3945902 (=> res!1596696 e!2441728)))

(assert (=> b!3945902 (= res!1596696 (not (is-IntegerValue!20351 (value!207396 (h!47332 prefixTokens!80)))))))

(assert (=> b!3945902 (= e!2441727 e!2441728)))

(declare-fun b!3945903 () Bool)

(declare-fun inv!16 (TokenValue!6783) Bool)

(assert (=> b!3945903 (= e!2441729 (inv!16 (value!207396 (h!47332 prefixTokens!80))))))

(declare-fun b!3945904 () Bool)

(declare-fun inv!17 (TokenValue!6783) Bool)

(assert (=> b!3945904 (= e!2441727 (inv!17 (value!207396 (h!47332 prefixTokens!80))))))

(declare-fun b!3945905 () Bool)

(declare-fun inv!15 (TokenValue!6783) Bool)

(assert (=> b!3945905 (= e!2441728 (inv!15 (value!207396 (h!47332 prefixTokens!80))))))

(declare-fun d!1170448 () Bool)

(declare-fun c!685384 () Bool)

(assert (=> d!1170448 (= c!685384 (is-IntegerValue!20349 (value!207396 (h!47332 prefixTokens!80))))))

(assert (=> d!1170448 (= (inv!21 (value!207396 (h!47332 prefixTokens!80))) e!2441729)))

(assert (= (and d!1170448 c!685384) b!3945903))

(assert (= (and d!1170448 (not c!685384)) b!3945901))

(assert (= (and b!3945901 c!685383) b!3945904))

(assert (= (and b!3945901 (not c!685383)) b!3945902))

(assert (= (and b!3945902 (not res!1596696)) b!3945905))

(declare-fun m!4514671 () Bool)

(assert (=> b!3945903 m!4514671))

(declare-fun m!4514673 () Bool)

(assert (=> b!3945904 m!4514673))

(declare-fun m!4514675 () Bool)

(assert (=> b!3945905 m!4514675))

(assert (=> b!3945738 d!1170448))

(declare-fun d!1170450 () Bool)

(assert (=> d!1170450 (= (isEmpty!25015 prefixTokens!80) (is-Nil!41912 prefixTokens!80))))

(assert (=> b!3945749 d!1170450))

(declare-fun d!1170452 () Bool)

(assert (=> d!1170452 (= (isEmpty!25014 prefix!426) (is-Nil!41910 prefix!426))))

(assert (=> b!3945739 d!1170452))

(declare-fun d!1170454 () Bool)

(declare-fun res!1596697 () Bool)

(declare-fun e!2441731 () Bool)

(assert (=> d!1170454 (=> (not res!1596697) (not e!2441731))))

(assert (=> d!1170454 (= res!1596697 (not (isEmpty!25014 (originalCharacters!7153 (h!47332 suffixTokens!72)))))))

(assert (=> d!1170454 (= (inv!56133 (h!47332 suffixTokens!72)) e!2441731)))

(declare-fun b!3945907 () Bool)

(declare-fun res!1596698 () Bool)

(assert (=> b!3945907 (=> (not res!1596698) (not e!2441731))))

(assert (=> b!3945907 (= res!1596698 (= (originalCharacters!7153 (h!47332 suffixTokens!72)) (list!15567 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72)))) (value!207396 (h!47332 suffixTokens!72))))))))

(declare-fun b!3945908 () Bool)

(assert (=> b!3945908 (= e!2441731 (= (size!31426 (h!47332 suffixTokens!72)) (size!31428 (originalCharacters!7153 (h!47332 suffixTokens!72)))))))

(assert (= (and d!1170454 res!1596697) b!3945907))

(assert (= (and b!3945907 res!1596698) b!3945908))

(declare-fun b_lambda!115407 () Bool)

(assert (=> (not b_lambda!115407) (not b!3945907)))

(declare-fun tb!236943 () Bool)

(declare-fun t!327715 () Bool)

(assert (=> (and b!3945733 (= (toChars!8884 (transformation!6553 (h!47331 rules!2768))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72))))) t!327715) tb!236943))

(declare-fun b!3945909 () Bool)

(declare-fun e!2441732 () Bool)

(declare-fun tp!1201317 () Bool)

(assert (=> b!3945909 (= e!2441732 (and (inv!56137 (c!685366 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72)))) (value!207396 (h!47332 suffixTokens!72))))) tp!1201317))))

(declare-fun result!286986 () Bool)

(assert (=> tb!236943 (= result!286986 (and (inv!56138 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72)))) (value!207396 (h!47332 suffixTokens!72)))) e!2441732))))

(assert (= tb!236943 b!3945909))

(declare-fun m!4514681 () Bool)

(assert (=> b!3945909 m!4514681))

(declare-fun m!4514683 () Bool)

(assert (=> tb!236943 m!4514683))

(assert (=> b!3945907 t!327715))

(declare-fun b_and!301883 () Bool)

(assert (= b_and!301871 (and (=> t!327715 result!286986) b_and!301883)))

(declare-fun tb!236947 () Bool)

(declare-fun t!327719 () Bool)

(assert (=> (and b!3945734 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80)))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72))))) t!327719) tb!236947))

(declare-fun result!286992 () Bool)

(assert (= result!286992 result!286986))

(assert (=> b!3945907 t!327719))

(declare-fun b_and!301885 () Bool)

(assert (= b_and!301873 (and (=> t!327719 result!286992) b_and!301885)))

(declare-fun t!327721 () Bool)

(declare-fun tb!236949 () Bool)

(assert (=> (and b!3945751 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72)))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72))))) t!327721) tb!236949))

(declare-fun result!286994 () Bool)

(assert (= result!286994 result!286986))

(assert (=> b!3945907 t!327721))

(declare-fun b_and!301887 () Bool)

(assert (= b_and!301875 (and (=> t!327721 result!286994) b_and!301887)))

(declare-fun m!4514689 () Bool)

(assert (=> d!1170454 m!4514689))

(declare-fun m!4514691 () Bool)

(assert (=> b!3945907 m!4514691))

(assert (=> b!3945907 m!4514691))

(declare-fun m!4514693 () Bool)

(assert (=> b!3945907 m!4514693))

(declare-fun m!4514697 () Bool)

(assert (=> b!3945908 m!4514697))

(assert (=> b!3945740 d!1170454))

(declare-fun b!3945910 () Bool)

(declare-fun e!2441735 () Bool)

(declare-fun e!2441733 () Bool)

(assert (=> b!3945910 (= e!2441735 e!2441733)))

(declare-fun c!685385 () Bool)

(assert (=> b!3945910 (= c!685385 (is-IntegerValue!20350 (value!207396 (h!47332 suffixTokens!72))))))

(declare-fun b!3945911 () Bool)

(declare-fun res!1596699 () Bool)

(declare-fun e!2441734 () Bool)

(assert (=> b!3945911 (=> res!1596699 e!2441734)))

(assert (=> b!3945911 (= res!1596699 (not (is-IntegerValue!20351 (value!207396 (h!47332 suffixTokens!72)))))))

(assert (=> b!3945911 (= e!2441733 e!2441734)))

(declare-fun b!3945912 () Bool)

(assert (=> b!3945912 (= e!2441735 (inv!16 (value!207396 (h!47332 suffixTokens!72))))))

(declare-fun b!3945913 () Bool)

(assert (=> b!3945913 (= e!2441733 (inv!17 (value!207396 (h!47332 suffixTokens!72))))))

(declare-fun b!3945914 () Bool)

(assert (=> b!3945914 (= e!2441734 (inv!15 (value!207396 (h!47332 suffixTokens!72))))))

(declare-fun d!1170456 () Bool)

(declare-fun c!685386 () Bool)

(assert (=> d!1170456 (= c!685386 (is-IntegerValue!20349 (value!207396 (h!47332 suffixTokens!72))))))

(assert (=> d!1170456 (= (inv!21 (value!207396 (h!47332 suffixTokens!72))) e!2441735)))

(assert (= (and d!1170456 c!685386) b!3945912))

(assert (= (and d!1170456 (not c!685386)) b!3945910))

(assert (= (and b!3945910 c!685385) b!3945913))

(assert (= (and b!3945910 (not c!685385)) b!3945911))

(assert (= (and b!3945911 (not res!1596699)) b!3945914))

(declare-fun m!4514701 () Bool)

(assert (=> b!3945912 m!4514701))

(declare-fun m!4514703 () Bool)

(assert (=> b!3945913 m!4514703))

(declare-fun m!4514705 () Bool)

(assert (=> b!3945914 m!4514705))

(assert (=> b!3945752 d!1170456))

(declare-fun d!1170460 () Bool)

(declare-fun lt!1379576 () BalanceConc!25122)

(assert (=> d!1170460 (= (list!15567 lt!1379576) (originalCharacters!7153 (_1!23733 (v!39310 lt!1379525))))))

(assert (=> d!1170460 (= lt!1379576 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))) (value!207396 (_1!23733 (v!39310 lt!1379525)))))))

(assert (=> d!1170460 (= (charsOf!4371 (_1!23733 (v!39310 lt!1379525))) lt!1379576)))

(declare-fun b_lambda!115409 () Bool)

(assert (=> (not b_lambda!115409) (not d!1170460)))

(declare-fun t!327723 () Bool)

(declare-fun tb!236951 () Bool)

(assert (=> (and b!3945733 (= (toChars!8884 (transformation!6553 (h!47331 rules!2768))) (toChars!8884 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525)))))) t!327723) tb!236951))

(declare-fun b!3945915 () Bool)

(declare-fun e!2441736 () Bool)

(declare-fun tp!1201318 () Bool)

(assert (=> b!3945915 (= e!2441736 (and (inv!56137 (c!685366 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))) (value!207396 (_1!23733 (v!39310 lt!1379525)))))) tp!1201318))))

(declare-fun result!286996 () Bool)

(assert (=> tb!236951 (= result!286996 (and (inv!56138 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))) (value!207396 (_1!23733 (v!39310 lt!1379525))))) e!2441736))))

(assert (= tb!236951 b!3945915))

(declare-fun m!4514707 () Bool)

(assert (=> b!3945915 m!4514707))

(declare-fun m!4514709 () Bool)

(assert (=> tb!236951 m!4514709))

(assert (=> d!1170460 t!327723))

(declare-fun b_and!301889 () Bool)

(assert (= b_and!301883 (and (=> t!327723 result!286996) b_and!301889)))

(declare-fun t!327725 () Bool)

(declare-fun tb!236953 () Bool)

(assert (=> (and b!3945734 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80)))) (toChars!8884 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525)))))) t!327725) tb!236953))

(declare-fun result!286998 () Bool)

(assert (= result!286998 result!286996))

(assert (=> d!1170460 t!327725))

(declare-fun b_and!301891 () Bool)

(assert (= b_and!301885 (and (=> t!327725 result!286998) b_and!301891)))

(declare-fun tb!236955 () Bool)

(declare-fun t!327727 () Bool)

(assert (=> (and b!3945751 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72)))) (toChars!8884 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525)))))) t!327727) tb!236955))

(declare-fun result!287000 () Bool)

(assert (= result!287000 result!286996))

(assert (=> d!1170460 t!327727))

(declare-fun b_and!301893 () Bool)

(assert (= b_and!301887 (and (=> t!327727 result!287000) b_and!301893)))

(declare-fun m!4514711 () Bool)

(assert (=> d!1170460 m!4514711))

(declare-fun m!4514713 () Bool)

(assert (=> d!1170460 m!4514713))

(assert (=> b!3945731 d!1170460))

(declare-fun d!1170462 () Bool)

(assert (=> d!1170462 (= (size!31426 (_1!23733 (v!39310 lt!1379525))) (size!31428 (originalCharacters!7153 (_1!23733 (v!39310 lt!1379525)))))))

(declare-fun Unit!60452 () Unit!60447)

(assert (=> d!1170462 (= (lemmaCharactersSize!1206 (_1!23733 (v!39310 lt!1379525))) Unit!60452)))

(declare-fun bs!586857 () Bool)

(assert (= bs!586857 d!1170462))

(declare-fun m!4514715 () Bool)

(assert (=> bs!586857 m!4514715))

(assert (=> b!3945731 d!1170462))

(declare-fun d!1170464 () Bool)

(declare-fun list!15569 (Conc!12764) List!42034)

(assert (=> d!1170464 (= (list!15567 (charsOf!4371 (_1!23733 (v!39310 lt!1379525)))) (list!15569 (c!685366 (charsOf!4371 (_1!23733 (v!39310 lt!1379525))))))))

(declare-fun bs!586858 () Bool)

(assert (= bs!586858 d!1170464))

(declare-fun m!4514717 () Bool)

(assert (=> bs!586858 m!4514717))

(assert (=> b!3945731 d!1170464))

(declare-fun d!1170466 () Bool)

(assert (=> d!1170466 (= (_2!23733 (v!39310 lt!1379525)) lt!1379524)))

(declare-fun lt!1379579 () Unit!60447)

(declare-fun choose!23542 (List!42034 List!42034 List!42034 List!42034 List!42034) Unit!60447)

(assert (=> d!1170466 (= lt!1379579 (choose!23542 lt!1379518 (_2!23733 (v!39310 lt!1379525)) lt!1379518 lt!1379524 lt!1379523))))

(assert (=> d!1170466 (isPrefix!3642 lt!1379518 lt!1379523)))

(assert (=> d!1170466 (= (lemmaSamePrefixThenSameSuffix!1851 lt!1379518 (_2!23733 (v!39310 lt!1379525)) lt!1379518 lt!1379524 lt!1379523) lt!1379579)))

(declare-fun bs!586859 () Bool)

(assert (= bs!586859 d!1170466))

(declare-fun m!4514719 () Bool)

(assert (=> bs!586859 m!4514719))

(declare-fun m!4514721 () Bool)

(assert (=> bs!586859 m!4514721))

(assert (=> b!3945731 d!1170466))

(declare-fun d!1170468 () Bool)

(declare-fun e!2441751 () Bool)

(assert (=> d!1170468 e!2441751))

(declare-fun res!1596708 () Bool)

(assert (=> d!1170468 (=> (not res!1596708) (not e!2441751))))

(declare-fun lt!1379582 () List!42034)

(declare-fun content!6344 (List!42034) (Set C!23102))

(assert (=> d!1170468 (= res!1596708 (= (content!6344 lt!1379582) (set.union (content!6344 lt!1379518) (content!6344 (_2!23733 (v!39310 lt!1379525))))))))

(declare-fun e!2441750 () List!42034)

(assert (=> d!1170468 (= lt!1379582 e!2441750)))

(declare-fun c!685395 () Bool)

(assert (=> d!1170468 (= c!685395 (is-Nil!41910 lt!1379518))))

(assert (=> d!1170468 (= (++!10863 lt!1379518 (_2!23733 (v!39310 lt!1379525))) lt!1379582)))

(declare-fun b!3945939 () Bool)

(assert (=> b!3945939 (= e!2441750 (_2!23733 (v!39310 lt!1379525)))))

(declare-fun b!3945942 () Bool)

(assert (=> b!3945942 (= e!2441751 (or (not (= (_2!23733 (v!39310 lt!1379525)) Nil!41910)) (= lt!1379582 lt!1379518)))))

(declare-fun b!3945940 () Bool)

(assert (=> b!3945940 (= e!2441750 (Cons!41910 (h!47330 lt!1379518) (++!10863 (t!327697 lt!1379518) (_2!23733 (v!39310 lt!1379525)))))))

(declare-fun b!3945941 () Bool)

(declare-fun res!1596707 () Bool)

(assert (=> b!3945941 (=> (not res!1596707) (not e!2441751))))

(assert (=> b!3945941 (= res!1596707 (= (size!31428 lt!1379582) (+ (size!31428 lt!1379518) (size!31428 (_2!23733 (v!39310 lt!1379525))))))))

(assert (= (and d!1170468 c!685395) b!3945939))

(assert (= (and d!1170468 (not c!685395)) b!3945940))

(assert (= (and d!1170468 res!1596708) b!3945941))

(assert (= (and b!3945941 res!1596707) b!3945942))

(declare-fun m!4514729 () Bool)

(assert (=> d!1170468 m!4514729))

(declare-fun m!4514731 () Bool)

(assert (=> d!1170468 m!4514731))

(declare-fun m!4514733 () Bool)

(assert (=> d!1170468 m!4514733))

(declare-fun m!4514735 () Bool)

(assert (=> b!3945940 m!4514735))

(declare-fun m!4514737 () Bool)

(assert (=> b!3945941 m!4514737))

(declare-fun m!4514739 () Bool)

(assert (=> b!3945941 m!4514739))

(declare-fun m!4514741 () Bool)

(assert (=> b!3945941 m!4514741))

(assert (=> b!3945731 d!1170468))

(declare-fun d!1170474 () Bool)

(declare-fun fromListB!2225 (List!42034) BalanceConc!25122)

(assert (=> d!1170474 (= (seqFromList!4812 lt!1379518) (fromListB!2225 lt!1379518))))

(declare-fun bs!586860 () Bool)

(assert (= bs!586860 d!1170474))

(declare-fun m!4514743 () Bool)

(assert (=> bs!586860 m!4514743))

(assert (=> b!3945731 d!1170474))

(declare-fun d!1170476 () Bool)

(assert (=> d!1170476 (ruleValid!2495 thiss!20629 (rule!9517 (_1!23733 (v!39310 lt!1379525))))))

(declare-fun lt!1379585 () Unit!60447)

(declare-fun choose!23543 (LexerInterface!6142 Rule!12906 List!42035) Unit!60447)

(assert (=> d!1170476 (= lt!1379585 (choose!23543 thiss!20629 (rule!9517 (_1!23733 (v!39310 lt!1379525))) rules!2768))))

(assert (=> d!1170476 (contains!8393 rules!2768 (rule!9517 (_1!23733 (v!39310 lt!1379525))))))

(assert (=> d!1170476 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1571 thiss!20629 (rule!9517 (_1!23733 (v!39310 lt!1379525))) rules!2768) lt!1379585)))

(declare-fun bs!586861 () Bool)

(assert (= bs!586861 d!1170476))

(assert (=> bs!586861 m!4514495))

(declare-fun m!4514745 () Bool)

(assert (=> bs!586861 m!4514745))

(declare-fun m!4514747 () Bool)

(assert (=> bs!586861 m!4514747))

(assert (=> b!3945731 d!1170476))

(declare-fun d!1170478 () Bool)

(declare-fun dynLambda!17957 (Int BalanceConc!25122) TokenValue!6783)

(assert (=> d!1170478 (= (apply!9784 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525)))) (seqFromList!4812 lt!1379518)) (dynLambda!17957 (toValue!9025 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))) (seqFromList!4812 lt!1379518)))))

(declare-fun b_lambda!115411 () Bool)

(assert (=> (not b_lambda!115411) (not d!1170478)))

(declare-fun tb!236957 () Bool)

(declare-fun t!327729 () Bool)

(assert (=> (and b!3945733 (= (toValue!9025 (transformation!6553 (h!47331 rules!2768))) (toValue!9025 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525)))))) t!327729) tb!236957))

(declare-fun result!287002 () Bool)

(assert (=> tb!236957 (= result!287002 (inv!21 (dynLambda!17957 (toValue!9025 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))) (seqFromList!4812 lt!1379518))))))

(declare-fun m!4514753 () Bool)

(assert (=> tb!236957 m!4514753))

(assert (=> d!1170478 t!327729))

(declare-fun b_and!301895 () Bool)

(assert (= b_and!301847 (and (=> t!327729 result!287002) b_and!301895)))

(declare-fun tb!236959 () Bool)

(declare-fun t!327731 () Bool)

(assert (=> (and b!3945734 (= (toValue!9025 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80)))) (toValue!9025 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525)))))) t!327731) tb!236959))

(declare-fun result!287006 () Bool)

(assert (= result!287006 result!287002))

(assert (=> d!1170478 t!327731))

(declare-fun b_and!301897 () Bool)

(assert (= b_and!301851 (and (=> t!327731 result!287006) b_and!301897)))

(declare-fun tb!236961 () Bool)

(declare-fun t!327733 () Bool)

(assert (=> (and b!3945751 (= (toValue!9025 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72)))) (toValue!9025 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525)))))) t!327733) tb!236961))

(declare-fun result!287008 () Bool)

(assert (= result!287008 result!287002))

(assert (=> d!1170478 t!327733))

(declare-fun b_and!301899 () Bool)

(assert (= b_and!301855 (and (=> t!327733 result!287008) b_and!301899)))

(assert (=> d!1170478 m!4514497))

(declare-fun m!4514755 () Bool)

(assert (=> d!1170478 m!4514755))

(assert (=> b!3945731 d!1170478))

(declare-fun d!1170482 () Bool)

(declare-fun lt!1379591 () List!42034)

(assert (=> d!1170482 (= (++!10863 lt!1379518 lt!1379591) lt!1379523)))

(declare-fun e!2441760 () List!42034)

(assert (=> d!1170482 (= lt!1379591 e!2441760)))

(declare-fun c!685398 () Bool)

(assert (=> d!1170482 (= c!685398 (is-Cons!41910 lt!1379518))))

(assert (=> d!1170482 (>= (size!31428 lt!1379523) (size!31428 lt!1379518))))

(assert (=> d!1170482 (= (getSuffix!2093 lt!1379523 lt!1379518) lt!1379591)))

(declare-fun b!3945952 () Bool)

(declare-fun tail!6108 (List!42034) List!42034)

(assert (=> b!3945952 (= e!2441760 (getSuffix!2093 (tail!6108 lt!1379523) (t!327697 lt!1379518)))))

(declare-fun b!3945953 () Bool)

(assert (=> b!3945953 (= e!2441760 lt!1379523)))

(assert (= (and d!1170482 c!685398) b!3945952))

(assert (= (and d!1170482 (not c!685398)) b!3945953))

(declare-fun m!4514759 () Bool)

(assert (=> d!1170482 m!4514759))

(assert (=> d!1170482 m!4514647))

(assert (=> d!1170482 m!4514739))

(declare-fun m!4514761 () Bool)

(assert (=> b!3945952 m!4514761))

(assert (=> b!3945952 m!4514761))

(declare-fun m!4514763 () Bool)

(assert (=> b!3945952 m!4514763))

(assert (=> b!3945731 d!1170482))

(declare-fun d!1170486 () Bool)

(assert (=> d!1170486 (isPrefix!3642 lt!1379518 (++!10863 lt!1379518 (_2!23733 (v!39310 lt!1379525))))))

(declare-fun lt!1379594 () Unit!60447)

(declare-fun choose!23544 (List!42034 List!42034) Unit!60447)

(assert (=> d!1170486 (= lt!1379594 (choose!23544 lt!1379518 (_2!23733 (v!39310 lt!1379525))))))

(assert (=> d!1170486 (= (lemmaConcatTwoListThenFirstIsPrefix!2501 lt!1379518 (_2!23733 (v!39310 lt!1379525))) lt!1379594)))

(declare-fun bs!586863 () Bool)

(assert (= bs!586863 d!1170486))

(assert (=> bs!586863 m!4514515))

(assert (=> bs!586863 m!4514515))

(assert (=> bs!586863 m!4514517))

(declare-fun m!4514765 () Bool)

(assert (=> bs!586863 m!4514765))

(assert (=> b!3945731 d!1170486))

(declare-fun d!1170488 () Bool)

(declare-fun res!1596716 () Bool)

(declare-fun e!2441763 () Bool)

(assert (=> d!1170488 (=> (not res!1596716) (not e!2441763))))

(declare-fun validRegex!5219 (Regex!11458) Bool)

(assert (=> d!1170488 (= res!1596716 (validRegex!5219 (regex!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))))))

(assert (=> d!1170488 (= (ruleValid!2495 thiss!20629 (rule!9517 (_1!23733 (v!39310 lt!1379525)))) e!2441763)))

(declare-fun b!3945958 () Bool)

(declare-fun res!1596717 () Bool)

(assert (=> b!3945958 (=> (not res!1596717) (not e!2441763))))

(declare-fun nullable!4020 (Regex!11458) Bool)

(assert (=> b!3945958 (= res!1596717 (not (nullable!4020 (regex!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525)))))))))

(declare-fun b!3945959 () Bool)

(assert (=> b!3945959 (= e!2441763 (not (= (tag!7413 (rule!9517 (_1!23733 (v!39310 lt!1379525)))) (String!47636 ""))))))

(assert (= (and d!1170488 res!1596716) b!3945958))

(assert (= (and b!3945958 res!1596717) b!3945959))

(declare-fun m!4514767 () Bool)

(assert (=> d!1170488 m!4514767))

(declare-fun m!4514769 () Bool)

(assert (=> b!3945958 m!4514769))

(assert (=> b!3945731 d!1170488))

(declare-fun d!1170490 () Bool)

(declare-fun e!2441771 () Bool)

(assert (=> d!1170490 e!2441771))

(declare-fun res!1596726 () Bool)

(assert (=> d!1170490 (=> res!1596726 e!2441771)))

(declare-fun lt!1379600 () Bool)

(assert (=> d!1170490 (= res!1596726 (not lt!1379600))))

(declare-fun e!2441773 () Bool)

(assert (=> d!1170490 (= lt!1379600 e!2441773)))

(declare-fun res!1596727 () Bool)

(assert (=> d!1170490 (=> res!1596727 e!2441773)))

(assert (=> d!1170490 (= res!1596727 (is-Nil!41910 lt!1379518))))

(assert (=> d!1170490 (= (isPrefix!3642 lt!1379518 (++!10863 lt!1379518 (_2!23733 (v!39310 lt!1379525)))) lt!1379600)))

(declare-fun b!3945972 () Bool)

(assert (=> b!3945972 (= e!2441771 (>= (size!31428 (++!10863 lt!1379518 (_2!23733 (v!39310 lt!1379525)))) (size!31428 lt!1379518)))))

(declare-fun b!3945970 () Bool)

(declare-fun res!1596729 () Bool)

(declare-fun e!2441772 () Bool)

(assert (=> b!3945970 (=> (not res!1596729) (not e!2441772))))

(declare-fun head!8382 (List!42034) C!23102)

(assert (=> b!3945970 (= res!1596729 (= (head!8382 lt!1379518) (head!8382 (++!10863 lt!1379518 (_2!23733 (v!39310 lt!1379525))))))))

(declare-fun b!3945971 () Bool)

(assert (=> b!3945971 (= e!2441772 (isPrefix!3642 (tail!6108 lt!1379518) (tail!6108 (++!10863 lt!1379518 (_2!23733 (v!39310 lt!1379525))))))))

(declare-fun b!3945969 () Bool)

(assert (=> b!3945969 (= e!2441773 e!2441772)))

(declare-fun res!1596728 () Bool)

(assert (=> b!3945969 (=> (not res!1596728) (not e!2441772))))

(assert (=> b!3945969 (= res!1596728 (not (is-Nil!41910 (++!10863 lt!1379518 (_2!23733 (v!39310 lt!1379525))))))))

(assert (= (and d!1170490 (not res!1596727)) b!3945969))

(assert (= (and b!3945969 res!1596728) b!3945970))

(assert (= (and b!3945970 res!1596729) b!3945971))

(assert (= (and d!1170490 (not res!1596726)) b!3945972))

(assert (=> b!3945972 m!4514515))

(declare-fun m!4514779 () Bool)

(assert (=> b!3945972 m!4514779))

(assert (=> b!3945972 m!4514739))

(declare-fun m!4514781 () Bool)

(assert (=> b!3945970 m!4514781))

(assert (=> b!3945970 m!4514515))

(declare-fun m!4514783 () Bool)

(assert (=> b!3945970 m!4514783))

(declare-fun m!4514785 () Bool)

(assert (=> b!3945971 m!4514785))

(assert (=> b!3945971 m!4514515))

(declare-fun m!4514787 () Bool)

(assert (=> b!3945971 m!4514787))

(assert (=> b!3945971 m!4514785))

(assert (=> b!3945971 m!4514787))

(declare-fun m!4514789 () Bool)

(assert (=> b!3945971 m!4514789))

(assert (=> b!3945731 d!1170490))

(declare-fun d!1170494 () Bool)

(assert (=> d!1170494 (= (inv!56130 (tag!7413 (rule!9517 (h!47332 prefixTokens!80)))) (= (mod (str.len (value!207395 (tag!7413 (rule!9517 (h!47332 prefixTokens!80))))) 2) 0))))

(assert (=> b!3945742 d!1170494))

(declare-fun d!1170496 () Bool)

(declare-fun res!1596730 () Bool)

(declare-fun e!2441774 () Bool)

(assert (=> d!1170496 (=> (not res!1596730) (not e!2441774))))

(assert (=> d!1170496 (= res!1596730 (semiInverseModEq!2824 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80)))) (toValue!9025 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80))))))))

(assert (=> d!1170496 (= (inv!56134 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80)))) e!2441774)))

(declare-fun b!3945973 () Bool)

(assert (=> b!3945973 (= e!2441774 (equivClasses!2723 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80)))) (toValue!9025 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80))))))))

(assert (= (and d!1170496 res!1596730) b!3945973))

(declare-fun m!4514791 () Bool)

(assert (=> d!1170496 m!4514791))

(declare-fun m!4514793 () Bool)

(assert (=> b!3945973 m!4514793))

(assert (=> b!3945742 d!1170496))

(declare-fun b!3945998 () Bool)

(declare-fun e!2441793 () tuple2!41200)

(declare-fun lt!1379612 () Option!8973)

(declare-fun lt!1379610 () tuple2!41200)

(assert (=> b!3945998 (= e!2441793 (tuple2!41201 (Cons!41912 (_1!23733 (v!39310 lt!1379612)) (_1!23734 lt!1379610)) (_2!23734 lt!1379610)))))

(assert (=> b!3945998 (= lt!1379610 (lexList!1910 thiss!20629 rules!2768 (_2!23733 (v!39310 lt!1379612))))))

(declare-fun b!3945999 () Bool)

(assert (=> b!3945999 (= e!2441793 (tuple2!41201 Nil!41912 lt!1379523))))

(declare-fun d!1170498 () Bool)

(declare-fun e!2441795 () Bool)

(assert (=> d!1170498 e!2441795))

(declare-fun c!685404 () Bool)

(declare-fun lt!1379611 () tuple2!41200)

(declare-fun size!31431 (List!42036) Int)

(assert (=> d!1170498 (= c!685404 (> (size!31431 (_1!23734 lt!1379611)) 0))))

(assert (=> d!1170498 (= lt!1379611 e!2441793)))

(declare-fun c!685403 () Bool)

(assert (=> d!1170498 (= c!685403 (is-Some!8972 lt!1379612))))

(assert (=> d!1170498 (= lt!1379612 (maxPrefix!3446 thiss!20629 rules!2768 lt!1379523))))

(assert (=> d!1170498 (= (lexList!1910 thiss!20629 rules!2768 lt!1379523) lt!1379611)))

(declare-fun b!3946000 () Bool)

(assert (=> b!3946000 (= e!2441795 (= (_2!23734 lt!1379611) lt!1379523))))

(declare-fun b!3946001 () Bool)

(declare-fun e!2441794 () Bool)

(assert (=> b!3946001 (= e!2441795 e!2441794)))

(declare-fun res!1596745 () Bool)

(assert (=> b!3946001 (= res!1596745 (< (size!31428 (_2!23734 lt!1379611)) (size!31428 lt!1379523)))))

(assert (=> b!3946001 (=> (not res!1596745) (not e!2441794))))

(declare-fun b!3946002 () Bool)

(assert (=> b!3946002 (= e!2441794 (not (isEmpty!25015 (_1!23734 lt!1379611))))))

(assert (= (and d!1170498 c!685403) b!3945998))

(assert (= (and d!1170498 (not c!685403)) b!3945999))

(assert (= (and d!1170498 c!685404) b!3946001))

(assert (= (and d!1170498 (not c!685404)) b!3946000))

(assert (= (and b!3946001 res!1596745) b!3946002))

(declare-fun m!4514815 () Bool)

(assert (=> b!3945998 m!4514815))

(declare-fun m!4514817 () Bool)

(assert (=> d!1170498 m!4514817))

(assert (=> d!1170498 m!4514537))

(declare-fun m!4514819 () Bool)

(assert (=> b!3946001 m!4514819))

(assert (=> b!3946001 m!4514647))

(declare-fun m!4514821 () Bool)

(assert (=> b!3946002 m!4514821))

(assert (=> b!3945732 d!1170498))

(declare-fun b!3946020 () Bool)

(declare-fun lt!1379615 () List!42036)

(declare-fun e!2441803 () Bool)

(assert (=> b!3946020 (= e!2441803 (or (not (= suffixTokens!72 Nil!41912)) (= lt!1379615 prefixTokens!80)))))

(declare-fun d!1170506 () Bool)

(assert (=> d!1170506 e!2441803))

(declare-fun res!1596756 () Bool)

(assert (=> d!1170506 (=> (not res!1596756) (not e!2441803))))

(declare-fun content!6345 (List!42036) (Set Token!12244))

(assert (=> d!1170506 (= res!1596756 (= (content!6345 lt!1379615) (set.union (content!6345 prefixTokens!80) (content!6345 suffixTokens!72))))))

(declare-fun e!2441804 () List!42036)

(assert (=> d!1170506 (= lt!1379615 e!2441804)))

(declare-fun c!685407 () Bool)

(assert (=> d!1170506 (= c!685407 (is-Nil!41912 prefixTokens!80))))

(assert (=> d!1170506 (= (++!10864 prefixTokens!80 suffixTokens!72) lt!1379615)))

(declare-fun b!3946017 () Bool)

(assert (=> b!3946017 (= e!2441804 suffixTokens!72)))

(declare-fun b!3946018 () Bool)

(assert (=> b!3946018 (= e!2441804 (Cons!41912 (h!47332 prefixTokens!80) (++!10864 (t!327699 prefixTokens!80) suffixTokens!72)))))

(declare-fun b!3946019 () Bool)

(declare-fun res!1596757 () Bool)

(assert (=> b!3946019 (=> (not res!1596757) (not e!2441803))))

(assert (=> b!3946019 (= res!1596757 (= (size!31431 lt!1379615) (+ (size!31431 prefixTokens!80) (size!31431 suffixTokens!72))))))

(assert (= (and d!1170506 c!685407) b!3946017))

(assert (= (and d!1170506 (not c!685407)) b!3946018))

(assert (= (and d!1170506 res!1596756) b!3946019))

(assert (= (and b!3946019 res!1596757) b!3946020))

(declare-fun m!4514827 () Bool)

(assert (=> d!1170506 m!4514827))

(declare-fun m!4514829 () Bool)

(assert (=> d!1170506 m!4514829))

(declare-fun m!4514831 () Bool)

(assert (=> d!1170506 m!4514831))

(declare-fun m!4514833 () Bool)

(assert (=> b!3946018 m!4514833))

(declare-fun m!4514835 () Bool)

(assert (=> b!3946019 m!4514835))

(declare-fun m!4514837 () Bool)

(assert (=> b!3946019 m!4514837))

(declare-fun m!4514839 () Bool)

(assert (=> b!3946019 m!4514839))

(assert (=> b!3945732 d!1170506))

(declare-fun d!1170510 () Bool)

(declare-fun e!2441806 () Bool)

(assert (=> d!1170510 e!2441806))

(declare-fun res!1596759 () Bool)

(assert (=> d!1170510 (=> (not res!1596759) (not e!2441806))))

(declare-fun lt!1379616 () List!42034)

(assert (=> d!1170510 (= res!1596759 (= (content!6344 lt!1379616) (set.union (content!6344 prefix!426) (content!6344 suffix!1176))))))

(declare-fun e!2441805 () List!42034)

(assert (=> d!1170510 (= lt!1379616 e!2441805)))

(declare-fun c!685408 () Bool)

(assert (=> d!1170510 (= c!685408 (is-Nil!41910 prefix!426))))

(assert (=> d!1170510 (= (++!10863 prefix!426 suffix!1176) lt!1379616)))

(declare-fun b!3946021 () Bool)

(assert (=> b!3946021 (= e!2441805 suffix!1176)))

(declare-fun b!3946024 () Bool)

(assert (=> b!3946024 (= e!2441806 (or (not (= suffix!1176 Nil!41910)) (= lt!1379616 prefix!426)))))

(declare-fun b!3946022 () Bool)

(assert (=> b!3946022 (= e!2441805 (Cons!41910 (h!47330 prefix!426) (++!10863 (t!327697 prefix!426) suffix!1176)))))

(declare-fun b!3946023 () Bool)

(declare-fun res!1596758 () Bool)

(assert (=> b!3946023 (=> (not res!1596758) (not e!2441806))))

(assert (=> b!3946023 (= res!1596758 (= (size!31428 lt!1379616) (+ (size!31428 prefix!426) (size!31428 suffix!1176))))))

(assert (= (and d!1170510 c!685408) b!3946021))

(assert (= (and d!1170510 (not c!685408)) b!3946022))

(assert (= (and d!1170510 res!1596759) b!3946023))

(assert (= (and b!3946023 res!1596758) b!3946024))

(declare-fun m!4514841 () Bool)

(assert (=> d!1170510 m!4514841))

(declare-fun m!4514843 () Bool)

(assert (=> d!1170510 m!4514843))

(declare-fun m!4514845 () Bool)

(assert (=> d!1170510 m!4514845))

(declare-fun m!4514847 () Bool)

(assert (=> b!3946022 m!4514847))

(declare-fun m!4514849 () Bool)

(assert (=> b!3946023 m!4514849))

(declare-fun m!4514851 () Bool)

(assert (=> b!3946023 m!4514851))

(declare-fun m!4514853 () Bool)

(assert (=> b!3946023 m!4514853))

(assert (=> b!3945732 d!1170510))

(declare-fun d!1170512 () Bool)

(assert (=> d!1170512 (= (inv!56130 (tag!7413 (h!47331 rules!2768))) (= (mod (str.len (value!207395 (tag!7413 (h!47331 rules!2768)))) 2) 0))))

(assert (=> b!3945743 d!1170512))

(declare-fun d!1170514 () Bool)

(declare-fun res!1596760 () Bool)

(declare-fun e!2441807 () Bool)

(assert (=> d!1170514 (=> (not res!1596760) (not e!2441807))))

(assert (=> d!1170514 (= res!1596760 (semiInverseModEq!2824 (toChars!8884 (transformation!6553 (h!47331 rules!2768))) (toValue!9025 (transformation!6553 (h!47331 rules!2768)))))))

(assert (=> d!1170514 (= (inv!56134 (transformation!6553 (h!47331 rules!2768))) e!2441807)))

(declare-fun b!3946025 () Bool)

(assert (=> b!3946025 (= e!2441807 (equivClasses!2723 (toChars!8884 (transformation!6553 (h!47331 rules!2768))) (toValue!9025 (transformation!6553 (h!47331 rules!2768)))))))

(assert (= (and d!1170514 res!1596760) b!3946025))

(declare-fun m!4514855 () Bool)

(assert (=> d!1170514 m!4514855))

(declare-fun m!4514857 () Bool)

(assert (=> b!3946025 m!4514857))

(assert (=> b!3945743 d!1170514))

(declare-fun b!3946026 () Bool)

(declare-fun e!2441808 () tuple2!41200)

(declare-fun lt!1379619 () Option!8973)

(declare-fun lt!1379617 () tuple2!41200)

(assert (=> b!3946026 (= e!2441808 (tuple2!41201 (Cons!41912 (_1!23733 (v!39310 lt!1379619)) (_1!23734 lt!1379617)) (_2!23734 lt!1379617)))))

(assert (=> b!3946026 (= lt!1379617 (lexList!1910 thiss!20629 rules!2768 (_2!23733 (v!39310 lt!1379619))))))

(declare-fun b!3946027 () Bool)

(assert (=> b!3946027 (= e!2441808 (tuple2!41201 Nil!41912 suffix!1176))))

(declare-fun d!1170516 () Bool)

(declare-fun e!2441810 () Bool)

(assert (=> d!1170516 e!2441810))

(declare-fun c!685410 () Bool)

(declare-fun lt!1379618 () tuple2!41200)

(assert (=> d!1170516 (= c!685410 (> (size!31431 (_1!23734 lt!1379618)) 0))))

(assert (=> d!1170516 (= lt!1379618 e!2441808)))

(declare-fun c!685409 () Bool)

(assert (=> d!1170516 (= c!685409 (is-Some!8972 lt!1379619))))

(assert (=> d!1170516 (= lt!1379619 (maxPrefix!3446 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1170516 (= (lexList!1910 thiss!20629 rules!2768 suffix!1176) lt!1379618)))

(declare-fun b!3946028 () Bool)

(assert (=> b!3946028 (= e!2441810 (= (_2!23734 lt!1379618) suffix!1176))))

(declare-fun b!3946029 () Bool)

(declare-fun e!2441809 () Bool)

(assert (=> b!3946029 (= e!2441810 e!2441809)))

(declare-fun res!1596761 () Bool)

(assert (=> b!3946029 (= res!1596761 (< (size!31428 (_2!23734 lt!1379618)) (size!31428 suffix!1176)))))

(assert (=> b!3946029 (=> (not res!1596761) (not e!2441809))))

(declare-fun b!3946030 () Bool)

(assert (=> b!3946030 (= e!2441809 (not (isEmpty!25015 (_1!23734 lt!1379618))))))

(assert (= (and d!1170516 c!685409) b!3946026))

(assert (= (and d!1170516 (not c!685409)) b!3946027))

(assert (= (and d!1170516 c!685410) b!3946029))

(assert (= (and d!1170516 (not c!685410)) b!3946028))

(assert (= (and b!3946029 res!1596761) b!3946030))

(declare-fun m!4514859 () Bool)

(assert (=> b!3946026 m!4514859))

(declare-fun m!4514861 () Bool)

(assert (=> d!1170516 m!4514861))

(declare-fun m!4514863 () Bool)

(assert (=> d!1170516 m!4514863))

(declare-fun m!4514865 () Bool)

(assert (=> b!3946029 m!4514865))

(assert (=> b!3946029 m!4514853))

(declare-fun m!4514867 () Bool)

(assert (=> b!3946030 m!4514867))

(assert (=> b!3945744 d!1170516))

(declare-fun b!3946035 () Bool)

(declare-fun e!2441813 () Bool)

(declare-fun tp!1201322 () Bool)

(assert (=> b!3946035 (= e!2441813 (and tp_is_empty!19887 tp!1201322))))

(assert (=> b!3945745 (= tp!1201256 e!2441813)))

(assert (= (and b!3945745 (is-Cons!41910 (t!327697 prefix!426))) b!3946035))

(declare-fun b!3946057 () Bool)

(declare-fun b_free!108137 () Bool)

(declare-fun b_next!108841 () Bool)

(assert (=> b!3946057 (= b_free!108137 (not b_next!108841))))

(declare-fun t!327747 () Bool)

(declare-fun tb!236975 () Bool)

(assert (=> (and b!3946057 (= (toValue!9025 (transformation!6553 (rule!9517 (h!47332 (t!327699 prefixTokens!80))))) (toValue!9025 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525)))))) t!327747) tb!236975))

(declare-fun result!287028 () Bool)

(assert (= result!287028 result!287002))

(assert (=> d!1170478 t!327747))

(declare-fun tp!1201337 () Bool)

(declare-fun b_and!301913 () Bool)

(assert (=> b!3946057 (= tp!1201337 (and (=> t!327747 result!287028) b_and!301913))))

(declare-fun b_free!108139 () Bool)

(declare-fun b_next!108843 () Bool)

(assert (=> b!3946057 (= b_free!108139 (not b_next!108843))))

(declare-fun t!327749 () Bool)

(declare-fun tb!236977 () Bool)

(assert (=> (and b!3946057 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 prefixTokens!80))))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80))))) t!327749) tb!236977))

(declare-fun result!287030 () Bool)

(assert (= result!287030 result!286974))

(assert (=> b!3945826 t!327749))

(declare-fun tb!236979 () Bool)

(declare-fun t!327751 () Bool)

(assert (=> (and b!3946057 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 prefixTokens!80))))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72))))) t!327751) tb!236979))

(declare-fun result!287032 () Bool)

(assert (= result!287032 result!286986))

(assert (=> b!3945907 t!327751))

(declare-fun t!327753 () Bool)

(declare-fun tb!236981 () Bool)

(assert (=> (and b!3946057 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 prefixTokens!80))))) (toChars!8884 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525)))))) t!327753) tb!236981))

(declare-fun result!287034 () Bool)

(assert (= result!287034 result!286996))

(assert (=> d!1170460 t!327753))

(declare-fun b_and!301915 () Bool)

(declare-fun tp!1201335 () Bool)

(assert (=> b!3946057 (= tp!1201335 (and (=> t!327749 result!287030) (=> t!327751 result!287032) (=> t!327753 result!287034) b_and!301915))))

(declare-fun b!3946056 () Bool)

(declare-fun e!2441833 () Bool)

(declare-fun e!2441831 () Bool)

(declare-fun tp!1201334 () Bool)

(assert (=> b!3946056 (= e!2441831 (and tp!1201334 (inv!56130 (tag!7413 (rule!9517 (h!47332 (t!327699 prefixTokens!80))))) (inv!56134 (transformation!6553 (rule!9517 (h!47332 (t!327699 prefixTokens!80))))) e!2441833))))

(declare-fun e!2441832 () Bool)

(assert (=> b!3945746 (= tp!1201243 e!2441832)))

(declare-fun b!3946055 () Bool)

(declare-fun tp!1201336 () Bool)

(declare-fun e!2441835 () Bool)

(assert (=> b!3946055 (= e!2441835 (and (inv!21 (value!207396 (h!47332 (t!327699 prefixTokens!80)))) e!2441831 tp!1201336))))

(assert (=> b!3946057 (= e!2441833 (and tp!1201337 tp!1201335))))

(declare-fun b!3946054 () Bool)

(declare-fun tp!1201333 () Bool)

(assert (=> b!3946054 (= e!2441832 (and (inv!56133 (h!47332 (t!327699 prefixTokens!80))) e!2441835 tp!1201333))))

(assert (= b!3946056 b!3946057))

(assert (= b!3946055 b!3946056))

(assert (= b!3946054 b!3946055))

(assert (= (and b!3945746 (is-Cons!41912 (t!327699 prefixTokens!80))) b!3946054))

(declare-fun m!4514869 () Bool)

(assert (=> b!3946056 m!4514869))

(declare-fun m!4514871 () Bool)

(assert (=> b!3946056 m!4514871))

(declare-fun m!4514873 () Bool)

(assert (=> b!3946055 m!4514873))

(declare-fun m!4514875 () Bool)

(assert (=> b!3946054 m!4514875))

(declare-fun b!3946058 () Bool)

(declare-fun e!2441836 () Bool)

(declare-fun tp!1201338 () Bool)

(assert (=> b!3946058 (= e!2441836 (and tp_is_empty!19887 tp!1201338))))

(assert (=> b!3945737 (= tp!1201259 e!2441836)))

(assert (= (and b!3945737 (is-Cons!41910 (t!327697 suffix!1176))) b!3946058))

(declare-fun b!3946070 () Bool)

(declare-fun e!2441839 () Bool)

(declare-fun tp!1201349 () Bool)

(declare-fun tp!1201353 () Bool)

(assert (=> b!3946070 (= e!2441839 (and tp!1201349 tp!1201353))))

(declare-fun b!3946072 () Bool)

(declare-fun tp!1201351 () Bool)

(declare-fun tp!1201352 () Bool)

(assert (=> b!3946072 (= e!2441839 (and tp!1201351 tp!1201352))))

(declare-fun b!3946071 () Bool)

(declare-fun tp!1201350 () Bool)

(assert (=> b!3946071 (= e!2441839 tp!1201350)))

(declare-fun b!3946069 () Bool)

(assert (=> b!3946069 (= e!2441839 tp_is_empty!19887)))

(assert (=> b!3945748 (= tp!1201252 e!2441839)))

(assert (= (and b!3945748 (is-ElementMatch!11458 (regex!6553 (rule!9517 (h!47332 suffixTokens!72))))) b!3946069))

(assert (= (and b!3945748 (is-Concat!18242 (regex!6553 (rule!9517 (h!47332 suffixTokens!72))))) b!3946070))

(assert (= (and b!3945748 (is-Star!11458 (regex!6553 (rule!9517 (h!47332 suffixTokens!72))))) b!3946071))

(assert (= (and b!3945748 (is-Union!11458 (regex!6553 (rule!9517 (h!47332 suffixTokens!72))))) b!3946072))

(declare-fun b!3946077 () Bool)

(declare-fun e!2441842 () Bool)

(declare-fun tp!1201354 () Bool)

(assert (=> b!3946077 (= e!2441842 (and tp_is_empty!19887 tp!1201354))))

(assert (=> b!3945738 (= tp!1201248 e!2441842)))

(assert (= (and b!3945738 (is-Cons!41910 (originalCharacters!7153 (h!47332 prefixTokens!80)))) b!3946077))

(declare-fun b!3946088 () Bool)

(declare-fun b_free!108141 () Bool)

(declare-fun b_next!108845 () Bool)

(assert (=> b!3946088 (= b_free!108141 (not b_next!108845))))

(declare-fun t!327755 () Bool)

(declare-fun tb!236983 () Bool)

(assert (=> (and b!3946088 (= (toValue!9025 (transformation!6553 (h!47331 (t!327698 rules!2768)))) (toValue!9025 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525)))))) t!327755) tb!236983))

(declare-fun result!287040 () Bool)

(assert (= result!287040 result!287002))

(assert (=> d!1170478 t!327755))

(declare-fun tp!1201364 () Bool)

(declare-fun b_and!301917 () Bool)

(assert (=> b!3946088 (= tp!1201364 (and (=> t!327755 result!287040) b_and!301917))))

(declare-fun b_free!108143 () Bool)

(declare-fun b_next!108847 () Bool)

(assert (=> b!3946088 (= b_free!108143 (not b_next!108847))))

(declare-fun t!327757 () Bool)

(declare-fun tb!236985 () Bool)

(assert (=> (and b!3946088 (= (toChars!8884 (transformation!6553 (h!47331 (t!327698 rules!2768)))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80))))) t!327757) tb!236985))

(declare-fun result!287042 () Bool)

(assert (= result!287042 result!286974))

(assert (=> b!3945826 t!327757))

(declare-fun t!327759 () Bool)

(declare-fun tb!236987 () Bool)

(assert (=> (and b!3946088 (= (toChars!8884 (transformation!6553 (h!47331 (t!327698 rules!2768)))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72))))) t!327759) tb!236987))

(declare-fun result!287044 () Bool)

(assert (= result!287044 result!286986))

(assert (=> b!3945907 t!327759))

(declare-fun t!327761 () Bool)

(declare-fun tb!236989 () Bool)

(assert (=> (and b!3946088 (= (toChars!8884 (transformation!6553 (h!47331 (t!327698 rules!2768)))) (toChars!8884 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525)))))) t!327761) tb!236989))

(declare-fun result!287046 () Bool)

(assert (= result!287046 result!286996))

(assert (=> d!1170460 t!327761))

(declare-fun tp!1201366 () Bool)

(declare-fun b_and!301919 () Bool)

(assert (=> b!3946088 (= tp!1201366 (and (=> t!327757 result!287042) (=> t!327759 result!287044) (=> t!327761 result!287046) b_and!301919))))

(declare-fun e!2441851 () Bool)

(assert (=> b!3946088 (= e!2441851 (and tp!1201364 tp!1201366))))

(declare-fun b!3946087 () Bool)

(declare-fun e!2441853 () Bool)

(declare-fun tp!1201365 () Bool)

(assert (=> b!3946087 (= e!2441853 (and tp!1201365 (inv!56130 (tag!7413 (h!47331 (t!327698 rules!2768)))) (inv!56134 (transformation!6553 (h!47331 (t!327698 rules!2768)))) e!2441851))))

(declare-fun b!3946086 () Bool)

(declare-fun e!2441852 () Bool)

(declare-fun tp!1201363 () Bool)

(assert (=> b!3946086 (= e!2441852 (and e!2441853 tp!1201363))))

(assert (=> b!3945750 (= tp!1201254 e!2441852)))

(assert (= b!3946087 b!3946088))

(assert (= b!3946086 b!3946087))

(assert (= (and b!3945750 (is-Cons!41911 (t!327698 rules!2768))) b!3946086))

(declare-fun m!4514889 () Bool)

(assert (=> b!3946087 m!4514889))

(declare-fun m!4514891 () Bool)

(assert (=> b!3946087 m!4514891))

(declare-fun b!3946092 () Bool)

(declare-fun b_free!108145 () Bool)

(declare-fun b_next!108849 () Bool)

(assert (=> b!3946092 (= b_free!108145 (not b_next!108849))))

(declare-fun t!327763 () Bool)

(declare-fun tb!236991 () Bool)

(assert (=> (and b!3946092 (= (toValue!9025 (transformation!6553 (rule!9517 (h!47332 (t!327699 suffixTokens!72))))) (toValue!9025 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525)))))) t!327763) tb!236991))

(declare-fun result!287048 () Bool)

(assert (= result!287048 result!287002))

(assert (=> d!1170478 t!327763))

(declare-fun b_and!301921 () Bool)

(declare-fun tp!1201371 () Bool)

(assert (=> b!3946092 (= tp!1201371 (and (=> t!327763 result!287048) b_and!301921))))

(declare-fun b_free!108147 () Bool)

(declare-fun b_next!108851 () Bool)

(assert (=> b!3946092 (= b_free!108147 (not b_next!108851))))

(declare-fun t!327765 () Bool)

(declare-fun tb!236993 () Bool)

(assert (=> (and b!3946092 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 suffixTokens!72))))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80))))) t!327765) tb!236993))

(declare-fun result!287050 () Bool)

(assert (= result!287050 result!286974))

(assert (=> b!3945826 t!327765))

(declare-fun t!327767 () Bool)

(declare-fun tb!236995 () Bool)

(assert (=> (and b!3946092 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 suffixTokens!72))))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72))))) t!327767) tb!236995))

(declare-fun result!287052 () Bool)

(assert (= result!287052 result!286986))

(assert (=> b!3945907 t!327767))

(declare-fun t!327769 () Bool)

(declare-fun tb!236997 () Bool)

(assert (=> (and b!3946092 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 suffixTokens!72))))) (toChars!8884 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525)))))) t!327769) tb!236997))

(declare-fun result!287054 () Bool)

(assert (= result!287054 result!286996))

(assert (=> d!1170460 t!327769))

(declare-fun b_and!301923 () Bool)

(declare-fun tp!1201369 () Bool)

(assert (=> b!3946092 (= tp!1201369 (and (=> t!327765 result!287050) (=> t!327767 result!287052) (=> t!327769 result!287054) b_and!301923))))

(declare-fun b!3946091 () Bool)

(declare-fun e!2441856 () Bool)

(declare-fun tp!1201368 () Bool)

(declare-fun e!2441858 () Bool)

(assert (=> b!3946091 (= e!2441856 (and tp!1201368 (inv!56130 (tag!7413 (rule!9517 (h!47332 (t!327699 suffixTokens!72))))) (inv!56134 (transformation!6553 (rule!9517 (h!47332 (t!327699 suffixTokens!72))))) e!2441858))))

(declare-fun e!2441857 () Bool)

(assert (=> b!3945740 (= tp!1201257 e!2441857)))

(declare-fun tp!1201370 () Bool)

(declare-fun e!2441860 () Bool)

(declare-fun b!3946090 () Bool)

(assert (=> b!3946090 (= e!2441860 (and (inv!21 (value!207396 (h!47332 (t!327699 suffixTokens!72)))) e!2441856 tp!1201370))))

(assert (=> b!3946092 (= e!2441858 (and tp!1201371 tp!1201369))))

(declare-fun tp!1201367 () Bool)

(declare-fun b!3946089 () Bool)

(assert (=> b!3946089 (= e!2441857 (and (inv!56133 (h!47332 (t!327699 suffixTokens!72))) e!2441860 tp!1201367))))

(assert (= b!3946091 b!3946092))

(assert (= b!3946090 b!3946091))

(assert (= b!3946089 b!3946090))

(assert (= (and b!3945740 (is-Cons!41912 (t!327699 suffixTokens!72))) b!3946089))

(declare-fun m!4514895 () Bool)

(assert (=> b!3946091 m!4514895))

(declare-fun m!4514897 () Bool)

(assert (=> b!3946091 m!4514897))

(declare-fun m!4514899 () Bool)

(assert (=> b!3946090 m!4514899))

(declare-fun m!4514901 () Bool)

(assert (=> b!3946089 m!4514901))

(declare-fun b!3946093 () Bool)

(declare-fun e!2441861 () Bool)

(declare-fun tp!1201372 () Bool)

(assert (=> b!3946093 (= e!2441861 (and tp_is_empty!19887 tp!1201372))))

(assert (=> b!3945741 (= tp!1201250 e!2441861)))

(assert (= (and b!3945741 (is-Cons!41910 (t!327697 suffixResult!91))) b!3946093))

(declare-fun b!3946094 () Bool)

(declare-fun e!2441862 () Bool)

(declare-fun tp!1201373 () Bool)

(assert (=> b!3946094 (= e!2441862 (and tp_is_empty!19887 tp!1201373))))

(assert (=> b!3945752 (= tp!1201258 e!2441862)))

(assert (= (and b!3945752 (is-Cons!41910 (originalCharacters!7153 (h!47332 suffixTokens!72)))) b!3946094))

(declare-fun b!3946096 () Bool)

(declare-fun e!2441863 () Bool)

(declare-fun tp!1201374 () Bool)

(declare-fun tp!1201378 () Bool)

(assert (=> b!3946096 (= e!2441863 (and tp!1201374 tp!1201378))))

(declare-fun b!3946098 () Bool)

(declare-fun tp!1201376 () Bool)

(declare-fun tp!1201377 () Bool)

(assert (=> b!3946098 (= e!2441863 (and tp!1201376 tp!1201377))))

(declare-fun b!3946097 () Bool)

(declare-fun tp!1201375 () Bool)

(assert (=> b!3946097 (= e!2441863 tp!1201375)))

(declare-fun b!3946095 () Bool)

(assert (=> b!3946095 (= e!2441863 tp_is_empty!19887)))

(assert (=> b!3945742 (= tp!1201249 e!2441863)))

(assert (= (and b!3945742 (is-ElementMatch!11458 (regex!6553 (rule!9517 (h!47332 prefixTokens!80))))) b!3946095))

(assert (= (and b!3945742 (is-Concat!18242 (regex!6553 (rule!9517 (h!47332 prefixTokens!80))))) b!3946096))

(assert (= (and b!3945742 (is-Star!11458 (regex!6553 (rule!9517 (h!47332 prefixTokens!80))))) b!3946097))

(assert (= (and b!3945742 (is-Union!11458 (regex!6553 (rule!9517 (h!47332 prefixTokens!80))))) b!3946098))

(declare-fun b!3946100 () Bool)

(declare-fun e!2441864 () Bool)

(declare-fun tp!1201379 () Bool)

(declare-fun tp!1201383 () Bool)

(assert (=> b!3946100 (= e!2441864 (and tp!1201379 tp!1201383))))

(declare-fun b!3946102 () Bool)

(declare-fun tp!1201381 () Bool)

(declare-fun tp!1201382 () Bool)

(assert (=> b!3946102 (= e!2441864 (and tp!1201381 tp!1201382))))

(declare-fun b!3946101 () Bool)

(declare-fun tp!1201380 () Bool)

(assert (=> b!3946101 (= e!2441864 tp!1201380)))

(declare-fun b!3946099 () Bool)

(assert (=> b!3946099 (= e!2441864 tp_is_empty!19887)))

(assert (=> b!3945743 (= tp!1201246 e!2441864)))

(assert (= (and b!3945743 (is-ElementMatch!11458 (regex!6553 (h!47331 rules!2768)))) b!3946099))

(assert (= (and b!3945743 (is-Concat!18242 (regex!6553 (h!47331 rules!2768)))) b!3946100))

(assert (= (and b!3945743 (is-Star!11458 (regex!6553 (h!47331 rules!2768)))) b!3946101))

(assert (= (and b!3945743 (is-Union!11458 (regex!6553 (h!47331 rules!2768)))) b!3946102))

(declare-fun b_lambda!115417 () Bool)

(assert (= b_lambda!115407 (or (and b!3946092 b_free!108147 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 suffixTokens!72))))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72)))))) (and b!3945733 b_free!108115 (= (toChars!8884 (transformation!6553 (h!47331 rules!2768))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72)))))) (and b!3946057 b_free!108139 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 prefixTokens!80))))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72)))))) (and b!3946088 b_free!108143 (= (toChars!8884 (transformation!6553 (h!47331 (t!327698 rules!2768)))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72)))))) (and b!3945751 b_free!108123) (and b!3945734 b_free!108119 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80)))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72)))))) b_lambda!115417)))

(declare-fun b_lambda!115419 () Bool)

(assert (= b_lambda!115403 (or (and b!3946057 b_free!108139 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 prefixTokens!80))))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80)))))) (and b!3945733 b_free!108115 (= (toChars!8884 (transformation!6553 (h!47331 rules!2768))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80)))))) (and b!3945751 b_free!108123 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72)))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80)))))) (and b!3946088 b_free!108143 (= (toChars!8884 (transformation!6553 (h!47331 (t!327698 rules!2768)))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80)))))) (and b!3945734 b_free!108119) (and b!3946092 b_free!108147 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 suffixTokens!72))))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80)))))) b_lambda!115419)))

(push 1)

(assert (not b!3946025))

(assert (not b_next!108849))

(assert (not b!3946077))

(assert (not b!3945940))

(assert (not b!3945970))

(assert (not b_next!108845))

(assert (not b_next!108847))

(assert (not b!3946072))

(assert (not b!3946097))

(assert (not b!3945913))

(assert (not b!3945908))

(assert (not d!1170498))

(assert (not d!1170454))

(assert b_and!301923)

(assert (not d!1170462))

(assert b_and!301895)

(assert (not d!1170486))

(assert b_and!301899)

(assert (not b!3946018))

(assert (not d!1170438))

(assert (not b!3946029))

(assert (not tb!236957))

(assert (not b_lambda!115417))

(assert (not b!3946026))

(assert (not b_next!108823))

(assert (not b!3946001))

(assert (not b_next!108817))

(assert (not b!3946055))

(assert (not b!3945912))

(assert (not d!1170434))

(assert b_and!301889)

(assert (not b!3946098))

(assert b_and!301893)

(assert (not b!3945867))

(assert (not b!3946022))

(assert (not b!3945903))

(assert (not d!1170506))

(assert (not b!3945866))

(assert (not b!3946054))

(assert (not d!1170516))

(assert (not b_next!108843))

(assert (not b!3946058))

(assert (not b!3946071))

(assert (not bm!285140))

(assert (not b!3945973))

(assert (not b_next!108851))

(assert (not b!3945826))

(assert (not d!1170474))

(assert tp_is_empty!19887)

(assert (not tb!236951))

(assert (not b!3946091))

(assert b_and!301915)

(assert (not b!3945905))

(assert b_and!301913)

(assert (not b!3946030))

(assert (not b!3945869))

(assert b_and!301921)

(assert (not b!3945915))

(assert (not b!3946089))

(assert (not b!3945958))

(assert (not b!3945884))

(assert (not d!1170436))

(assert (not b!3945868))

(assert (not tb!236943))

(assert (not d!1170496))

(assert (not b!3946056))

(assert (not b!3945827))

(assert (not b_lambda!115409))

(assert (not b!3946102))

(assert (not b!3945907))

(assert (not b!3945972))

(assert (not b!3945904))

(assert (not b!3946087))

(assert (not d!1170466))

(assert (not b!3946090))

(assert (not b!3946096))

(assert (not b!3946094))

(assert (not b!3946070))

(assert (not d!1170468))

(assert (not b!3945864))

(assert (not d!1170460))

(assert (not d!1170482))

(assert (not b!3945941))

(assert (not d!1170514))

(assert (not b!3945971))

(assert (not b_next!108825))

(assert (not b!3946023))

(assert b_and!301897)

(assert (not b!3945998))

(assert (not b!3945832))

(assert b_and!301919)

(assert (not b!3945861))

(assert (not b!3946035))

(assert (not b!3945909))

(assert (not d!1170510))

(assert (not b_next!108819))

(assert (not b!3946100))

(assert (not b!3945877))

(assert (not b!3945865))

(assert (not b_next!108827))

(assert (not d!1170488))

(assert (not b!3946093))

(assert (not d!1170476))

(assert (not b!3946002))

(assert (not d!1170464))

(assert (not tb!236933))

(assert (not b_lambda!115419))

(assert (not b!3945952))

(assert (not b!3945863))

(assert (not b!3946086))

(assert (not b!3945914))

(assert (not b_next!108821))

(assert (not d!1170446))

(assert (not b_lambda!115411))

(assert (not b!3946019))

(assert b_and!301917)

(assert (not b_next!108841))

(assert b_and!301891)

(assert (not b!3946101))

(check-sat)

(pop 1)

(push 1)

(assert b_and!301899)

(assert (not b_next!108849))

(assert (not b_next!108843))

(assert (not b_next!108851))

(assert b_and!301915)

(assert b_and!301913)

(assert b_and!301921)

(assert (not b_next!108819))

(assert (not b_next!108827))

(assert (not b_next!108821))

(assert (not b_next!108845))

(assert (not b_next!108847))

(assert b_and!301923)

(assert b_and!301895)

(assert (not b_next!108823))

(assert (not b_next!108817))

(assert b_and!301889)

(assert b_and!301893)

(assert (not b_next!108825))

(assert b_and!301897)

(assert b_and!301919)

(assert b_and!301917)

(assert (not b_next!108841))

(assert b_and!301891)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1170552 () Bool)

(assert (=> d!1170552 (= (isEmpty!25015 (_1!23734 lt!1379618)) (is-Nil!41912 (_1!23734 lt!1379618)))))

(assert (=> b!3946030 d!1170552))

(declare-fun d!1170554 () Bool)

(assert (=> d!1170554 (= (isEmpty!25014 (originalCharacters!7153 (h!47332 prefixTokens!80))) (is-Nil!41910 (originalCharacters!7153 (h!47332 prefixTokens!80))))))

(assert (=> d!1170434 d!1170554))

(assert (=> d!1170476 d!1170488))

(declare-fun d!1170556 () Bool)

(assert (=> d!1170556 (ruleValid!2495 thiss!20629 (rule!9517 (_1!23733 (v!39310 lt!1379525))))))

(assert (=> d!1170556 true))

(declare-fun _$65!1401 () Unit!60447)

(assert (=> d!1170556 (= (choose!23543 thiss!20629 (rule!9517 (_1!23733 (v!39310 lt!1379525))) rules!2768) _$65!1401)))

(declare-fun bs!586869 () Bool)

(assert (= bs!586869 d!1170556))

(assert (=> bs!586869 m!4514495))

(assert (=> d!1170476 d!1170556))

(declare-fun d!1170558 () Bool)

(declare-fun lt!1379656 () Bool)

(declare-fun content!6348 (List!42035) (Set Rule!12906))

(assert (=> d!1170558 (= lt!1379656 (set.member (rule!9517 (_1!23733 (v!39310 lt!1379525))) (content!6348 rules!2768)))))

(declare-fun e!2441948 () Bool)

(assert (=> d!1170558 (= lt!1379656 e!2441948)))

(declare-fun res!1596808 () Bool)

(assert (=> d!1170558 (=> (not res!1596808) (not e!2441948))))

(assert (=> d!1170558 (= res!1596808 (is-Cons!41911 rules!2768))))

(assert (=> d!1170558 (= (contains!8393 rules!2768 (rule!9517 (_1!23733 (v!39310 lt!1379525)))) lt!1379656)))

(declare-fun b!3946231 () Bool)

(declare-fun e!2441947 () Bool)

(assert (=> b!3946231 (= e!2441948 e!2441947)))

(declare-fun res!1596807 () Bool)

(assert (=> b!3946231 (=> res!1596807 e!2441947)))

(assert (=> b!3946231 (= res!1596807 (= (h!47331 rules!2768) (rule!9517 (_1!23733 (v!39310 lt!1379525)))))))

(declare-fun b!3946232 () Bool)

(assert (=> b!3946232 (= e!2441947 (contains!8393 (t!327698 rules!2768) (rule!9517 (_1!23733 (v!39310 lt!1379525)))))))

(assert (= (and d!1170558 res!1596808) b!3946231))

(assert (= (and b!3946231 (not res!1596807)) b!3946232))

(declare-fun m!4515033 () Bool)

(assert (=> d!1170558 m!4515033))

(declare-fun m!4515035 () Bool)

(assert (=> d!1170558 m!4515035))

(declare-fun m!4515037 () Bool)

(assert (=> b!3946232 m!4515037))

(assert (=> d!1170476 d!1170558))

(declare-fun d!1170560 () Bool)

(declare-fun c!685430 () Bool)

(assert (=> d!1170560 (= c!685430 (is-Node!12764 (c!685366 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72)))) (value!207396 (h!47332 suffixTokens!72))))))))

(declare-fun e!2441953 () Bool)

(assert (=> d!1170560 (= (inv!56137 (c!685366 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72)))) (value!207396 (h!47332 suffixTokens!72))))) e!2441953)))

(declare-fun b!3946239 () Bool)

(declare-fun inv!56141 (Conc!12764) Bool)

(assert (=> b!3946239 (= e!2441953 (inv!56141 (c!685366 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72)))) (value!207396 (h!47332 suffixTokens!72))))))))

(declare-fun b!3946240 () Bool)

(declare-fun e!2441954 () Bool)

(assert (=> b!3946240 (= e!2441953 e!2441954)))

(declare-fun res!1596811 () Bool)

(assert (=> b!3946240 (= res!1596811 (not (is-Leaf!19748 (c!685366 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72)))) (value!207396 (h!47332 suffixTokens!72)))))))))

(assert (=> b!3946240 (=> res!1596811 e!2441954)))

(declare-fun b!3946241 () Bool)

(declare-fun inv!56142 (Conc!12764) Bool)

(assert (=> b!3946241 (= e!2441954 (inv!56142 (c!685366 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72)))) (value!207396 (h!47332 suffixTokens!72))))))))

(assert (= (and d!1170560 c!685430) b!3946239))

(assert (= (and d!1170560 (not c!685430)) b!3946240))

(assert (= (and b!3946240 (not res!1596811)) b!3946241))

(declare-fun m!4515039 () Bool)

(assert (=> b!3946239 m!4515039))

(declare-fun m!4515041 () Bool)

(assert (=> b!3946241 m!4515041))

(assert (=> b!3945909 d!1170560))

(declare-fun d!1170562 () Bool)

(assert (=> d!1170562 true))

(declare-fun lambda!126734 () Int)

(declare-fun order!22367 () Int)

(declare-fun order!22369 () Int)

(declare-fun dynLambda!17960 (Int Int) Int)

(declare-fun dynLambda!17961 (Int Int) Int)

(assert (=> d!1170562 (< (dynLambda!17960 order!22367 (toChars!8884 (transformation!6553 (h!47331 rules!2768)))) (dynLambda!17961 order!22369 lambda!126734))))

(assert (=> d!1170562 true))

(declare-fun order!22371 () Int)

(declare-fun dynLambda!17962 (Int Int) Int)

(assert (=> d!1170562 (< (dynLambda!17962 order!22371 (toValue!9025 (transformation!6553 (h!47331 rules!2768)))) (dynLambda!17961 order!22369 lambda!126734))))

(declare-fun Forall!1457 (Int) Bool)

(assert (=> d!1170562 (= (semiInverseModEq!2824 (toChars!8884 (transformation!6553 (h!47331 rules!2768))) (toValue!9025 (transformation!6553 (h!47331 rules!2768)))) (Forall!1457 lambda!126734))))

(declare-fun bs!586870 () Bool)

(assert (= bs!586870 d!1170562))

(declare-fun m!4515043 () Bool)

(assert (=> bs!586870 m!4515043))

(assert (=> d!1170514 d!1170562))

(declare-fun d!1170564 () Bool)

(assert (=> d!1170564 (= (get!13842 lt!1379570) (v!39310 lt!1379570))))

(assert (=> b!3945869 d!1170564))

(declare-fun d!1170566 () Bool)

(assert (=> d!1170566 (= (apply!9784 (transformation!6553 (rule!9517 (_1!23733 (get!13842 lt!1379570)))) (seqFromList!4812 (originalCharacters!7153 (_1!23733 (get!13842 lt!1379570))))) (dynLambda!17957 (toValue!9025 (transformation!6553 (rule!9517 (_1!23733 (get!13842 lt!1379570))))) (seqFromList!4812 (originalCharacters!7153 (_1!23733 (get!13842 lt!1379570))))))))

(declare-fun b_lambda!115427 () Bool)

(assert (=> (not b_lambda!115427) (not d!1170566)))

(declare-fun tb!237029 () Bool)

(declare-fun t!327803 () Bool)

(assert (=> (and b!3946092 (= (toValue!9025 (transformation!6553 (rule!9517 (h!47332 (t!327699 suffixTokens!72))))) (toValue!9025 (transformation!6553 (rule!9517 (_1!23733 (get!13842 lt!1379570)))))) t!327803) tb!237029))

(declare-fun result!287094 () Bool)

(assert (=> tb!237029 (= result!287094 (inv!21 (dynLambda!17957 (toValue!9025 (transformation!6553 (rule!9517 (_1!23733 (get!13842 lt!1379570))))) (seqFromList!4812 (originalCharacters!7153 (_1!23733 (get!13842 lt!1379570)))))))))

(declare-fun m!4515045 () Bool)

(assert (=> tb!237029 m!4515045))

(assert (=> d!1170566 t!327803))

(declare-fun b_and!301943 () Bool)

(assert (= b_and!301921 (and (=> t!327803 result!287094) b_and!301943)))

(declare-fun tb!237031 () Bool)

(declare-fun t!327805 () Bool)

(assert (=> (and b!3945734 (= (toValue!9025 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80)))) (toValue!9025 (transformation!6553 (rule!9517 (_1!23733 (get!13842 lt!1379570)))))) t!327805) tb!237031))

(declare-fun result!287096 () Bool)

(assert (= result!287096 result!287094))

(assert (=> d!1170566 t!327805))

(declare-fun b_and!301945 () Bool)

(assert (= b_and!301897 (and (=> t!327805 result!287096) b_and!301945)))

(declare-fun tb!237033 () Bool)

(declare-fun t!327807 () Bool)

(assert (=> (and b!3946088 (= (toValue!9025 (transformation!6553 (h!47331 (t!327698 rules!2768)))) (toValue!9025 (transformation!6553 (rule!9517 (_1!23733 (get!13842 lt!1379570)))))) t!327807) tb!237033))

(declare-fun result!287098 () Bool)

(assert (= result!287098 result!287094))

(assert (=> d!1170566 t!327807))

(declare-fun b_and!301947 () Bool)

(assert (= b_and!301917 (and (=> t!327807 result!287098) b_and!301947)))

(declare-fun tb!237035 () Bool)

(declare-fun t!327809 () Bool)

(assert (=> (and b!3946057 (= (toValue!9025 (transformation!6553 (rule!9517 (h!47332 (t!327699 prefixTokens!80))))) (toValue!9025 (transformation!6553 (rule!9517 (_1!23733 (get!13842 lt!1379570)))))) t!327809) tb!237035))

(declare-fun result!287100 () Bool)

(assert (= result!287100 result!287094))

(assert (=> d!1170566 t!327809))

(declare-fun b_and!301949 () Bool)

(assert (= b_and!301913 (and (=> t!327809 result!287100) b_and!301949)))

(declare-fun tb!237037 () Bool)

(declare-fun t!327811 () Bool)

(assert (=> (and b!3945733 (= (toValue!9025 (transformation!6553 (h!47331 rules!2768))) (toValue!9025 (transformation!6553 (rule!9517 (_1!23733 (get!13842 lt!1379570)))))) t!327811) tb!237037))

(declare-fun result!287102 () Bool)

(assert (= result!287102 result!287094))

(assert (=> d!1170566 t!327811))

(declare-fun b_and!301951 () Bool)

(assert (= b_and!301895 (and (=> t!327811 result!287102) b_and!301951)))

(declare-fun t!327813 () Bool)

(declare-fun tb!237039 () Bool)

(assert (=> (and b!3945751 (= (toValue!9025 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72)))) (toValue!9025 (transformation!6553 (rule!9517 (_1!23733 (get!13842 lt!1379570)))))) t!327813) tb!237039))

(declare-fun result!287104 () Bool)

(assert (= result!287104 result!287094))

(assert (=> d!1170566 t!327813))

(declare-fun b_and!301953 () Bool)

(assert (= b_and!301899 (and (=> t!327813 result!287104) b_and!301953)))

(assert (=> d!1170566 m!4514621))

(declare-fun m!4515047 () Bool)

(assert (=> d!1170566 m!4515047))

(assert (=> b!3945869 d!1170566))

(declare-fun d!1170568 () Bool)

(assert (=> d!1170568 (= (seqFromList!4812 (originalCharacters!7153 (_1!23733 (get!13842 lt!1379570)))) (fromListB!2225 (originalCharacters!7153 (_1!23733 (get!13842 lt!1379570)))))))

(declare-fun bs!586871 () Bool)

(assert (= bs!586871 d!1170568))

(declare-fun m!4515049 () Bool)

(assert (=> bs!586871 m!4515049))

(assert (=> b!3945869 d!1170568))

(declare-fun d!1170570 () Bool)

(declare-fun lt!1379659 () Int)

(assert (=> d!1170570 (>= lt!1379659 0)))

(declare-fun e!2441958 () Int)

(assert (=> d!1170570 (= lt!1379659 e!2441958)))

(declare-fun c!685433 () Bool)

(assert (=> d!1170570 (= c!685433 (is-Nil!41910 (originalCharacters!7153 (h!47332 suffixTokens!72))))))

(assert (=> d!1170570 (= (size!31428 (originalCharacters!7153 (h!47332 suffixTokens!72))) lt!1379659)))

(declare-fun b!3946250 () Bool)

(assert (=> b!3946250 (= e!2441958 0)))

(declare-fun b!3946251 () Bool)

(assert (=> b!3946251 (= e!2441958 (+ 1 (size!31428 (t!327697 (originalCharacters!7153 (h!47332 suffixTokens!72))))))))

(assert (= (and d!1170570 c!685433) b!3946250))

(assert (= (and d!1170570 (not c!685433)) b!3946251))

(declare-fun m!4515051 () Bool)

(assert (=> b!3946251 m!4515051))

(assert (=> b!3945908 d!1170570))

(declare-fun b!3946252 () Bool)

(declare-fun e!2441961 () Bool)

(declare-fun e!2441960 () Bool)

(assert (=> b!3946252 (= e!2441961 e!2441960)))

(declare-fun res!1596816 () Bool)

(assert (=> b!3946252 (=> (not res!1596816) (not e!2441960))))

(declare-fun lt!1379664 () Option!8973)

(assert (=> b!3946252 (= res!1596816 (isDefined!6970 lt!1379664))))

(declare-fun b!3946253 () Bool)

(declare-fun e!2441959 () Option!8973)

(declare-fun call!285149 () Option!8973)

(assert (=> b!3946253 (= e!2441959 call!285149)))

(declare-fun b!3946254 () Bool)

(declare-fun res!1596813 () Bool)

(assert (=> b!3946254 (=> (not res!1596813) (not e!2441960))))

(assert (=> b!3946254 (= res!1596813 (= (list!15567 (charsOf!4371 (_1!23733 (get!13842 lt!1379664)))) (originalCharacters!7153 (_1!23733 (get!13842 lt!1379664)))))))

(declare-fun b!3946255 () Bool)

(declare-fun res!1596817 () Bool)

(assert (=> b!3946255 (=> (not res!1596817) (not e!2441960))))

(assert (=> b!3946255 (= res!1596817 (matchR!5503 (regex!6553 (rule!9517 (_1!23733 (get!13842 lt!1379664)))) (list!15567 (charsOf!4371 (_1!23733 (get!13842 lt!1379664))))))))

(declare-fun b!3946256 () Bool)

(declare-fun res!1596812 () Bool)

(assert (=> b!3946256 (=> (not res!1596812) (not e!2441960))))

(assert (=> b!3946256 (= res!1596812 (< (size!31428 (_2!23733 (get!13842 lt!1379664))) (size!31428 lt!1379523)))))

(declare-fun b!3946257 () Bool)

(assert (=> b!3946257 (= e!2441960 (contains!8393 (t!327698 rules!2768) (rule!9517 (_1!23733 (get!13842 lt!1379664)))))))

(declare-fun d!1170572 () Bool)

(assert (=> d!1170572 e!2441961))

(declare-fun res!1596818 () Bool)

(assert (=> d!1170572 (=> res!1596818 e!2441961)))

(assert (=> d!1170572 (= res!1596818 (isEmpty!25019 lt!1379664))))

(assert (=> d!1170572 (= lt!1379664 e!2441959)))

(declare-fun c!685434 () Bool)

(assert (=> d!1170572 (= c!685434 (and (is-Cons!41911 (t!327698 rules!2768)) (is-Nil!41911 (t!327698 (t!327698 rules!2768)))))))

(declare-fun lt!1379660 () Unit!60447)

(declare-fun lt!1379662 () Unit!60447)

(assert (=> d!1170572 (= lt!1379660 lt!1379662)))

(assert (=> d!1170572 (isPrefix!3642 lt!1379523 lt!1379523)))

(assert (=> d!1170572 (= lt!1379662 (lemmaIsPrefixRefl!2301 lt!1379523 lt!1379523))))

(assert (=> d!1170572 (rulesValidInductive!2371 thiss!20629 (t!327698 rules!2768))))

(assert (=> d!1170572 (= (maxPrefix!3446 thiss!20629 (t!327698 rules!2768) lt!1379523) lt!1379664)))

(declare-fun b!3946258 () Bool)

(declare-fun lt!1379661 () Option!8973)

(declare-fun lt!1379663 () Option!8973)

(assert (=> b!3946258 (= e!2441959 (ite (and (is-None!8972 lt!1379661) (is-None!8972 lt!1379663)) None!8972 (ite (is-None!8972 lt!1379663) lt!1379661 (ite (is-None!8972 lt!1379661) lt!1379663 (ite (>= (size!31426 (_1!23733 (v!39310 lt!1379661))) (size!31426 (_1!23733 (v!39310 lt!1379663)))) lt!1379661 lt!1379663)))))))

(assert (=> b!3946258 (= lt!1379661 call!285149)))

(assert (=> b!3946258 (= lt!1379663 (maxPrefix!3446 thiss!20629 (t!327698 (t!327698 rules!2768)) lt!1379523))))

(declare-fun b!3946259 () Bool)

(declare-fun res!1596815 () Bool)

(assert (=> b!3946259 (=> (not res!1596815) (not e!2441960))))

(assert (=> b!3946259 (= res!1596815 (= (++!10863 (list!15567 (charsOf!4371 (_1!23733 (get!13842 lt!1379664)))) (_2!23733 (get!13842 lt!1379664))) lt!1379523))))

(declare-fun b!3946260 () Bool)

(declare-fun res!1596814 () Bool)

(assert (=> b!3946260 (=> (not res!1596814) (not e!2441960))))

(assert (=> b!3946260 (= res!1596814 (= (value!207396 (_1!23733 (get!13842 lt!1379664))) (apply!9784 (transformation!6553 (rule!9517 (_1!23733 (get!13842 lt!1379664)))) (seqFromList!4812 (originalCharacters!7153 (_1!23733 (get!13842 lt!1379664)))))))))

(declare-fun bm!285144 () Bool)

(assert (=> bm!285144 (= call!285149 (maxPrefixOneRule!2508 thiss!20629 (h!47331 (t!327698 rules!2768)) lt!1379523))))

(assert (= (and d!1170572 c!685434) b!3946253))

(assert (= (and d!1170572 (not c!685434)) b!3946258))

(assert (= (or b!3946253 b!3946258) bm!285144))

(assert (= (and d!1170572 (not res!1596818)) b!3946252))

(assert (= (and b!3946252 res!1596816) b!3946254))

(assert (= (and b!3946254 res!1596813) b!3946256))

(assert (= (and b!3946256 res!1596812) b!3946259))

(assert (= (and b!3946259 res!1596815) b!3946260))

(assert (= (and b!3946260 res!1596814) b!3946255))

(assert (= (and b!3946255 res!1596817) b!3946257))

(declare-fun m!4515053 () Bool)

(assert (=> b!3946252 m!4515053))

(declare-fun m!4515055 () Bool)

(assert (=> b!3946260 m!4515055))

(declare-fun m!4515057 () Bool)

(assert (=> b!3946260 m!4515057))

(assert (=> b!3946260 m!4515057))

(declare-fun m!4515059 () Bool)

(assert (=> b!3946260 m!4515059))

(assert (=> b!3946259 m!4515055))

(declare-fun m!4515061 () Bool)

(assert (=> b!3946259 m!4515061))

(assert (=> b!3946259 m!4515061))

(declare-fun m!4515063 () Bool)

(assert (=> b!3946259 m!4515063))

(assert (=> b!3946259 m!4515063))

(declare-fun m!4515065 () Bool)

(assert (=> b!3946259 m!4515065))

(declare-fun m!4515067 () Bool)

(assert (=> b!3946258 m!4515067))

(assert (=> b!3946255 m!4515055))

(assert (=> b!3946255 m!4515061))

(assert (=> b!3946255 m!4515061))

(assert (=> b!3946255 m!4515063))

(assert (=> b!3946255 m!4515063))

(declare-fun m!4515069 () Bool)

(assert (=> b!3946255 m!4515069))

(assert (=> b!3946257 m!4515055))

(declare-fun m!4515071 () Bool)

(assert (=> b!3946257 m!4515071))

(declare-fun m!4515073 () Bool)

(assert (=> d!1170572 m!4515073))

(assert (=> d!1170572 m!4514639))

(assert (=> d!1170572 m!4514641))

(declare-fun m!4515075 () Bool)

(assert (=> d!1170572 m!4515075))

(assert (=> b!3946256 m!4515055))

(declare-fun m!4515077 () Bool)

(assert (=> b!3946256 m!4515077))

(assert (=> b!3946256 m!4514647))

(assert (=> b!3946254 m!4515055))

(assert (=> b!3946254 m!4515061))

(assert (=> b!3946254 m!4515061))

(assert (=> b!3946254 m!4515063))

(declare-fun m!4515079 () Bool)

(assert (=> bm!285144 m!4515079))

(assert (=> b!3945867 d!1170572))

(declare-fun d!1170574 () Bool)

(declare-fun charsToBigInt!0 (List!42033 Int) Int)

(assert (=> d!1170574 (= (inv!15 (value!207396 (h!47332 suffixTokens!72))) (= (charsToBigInt!0 (text!47930 (value!207396 (h!47332 suffixTokens!72))) 0) (value!207391 (value!207396 (h!47332 suffixTokens!72)))))))

(declare-fun bs!586872 () Bool)

(assert (= bs!586872 d!1170574))

(declare-fun m!4515081 () Bool)

(assert (=> bs!586872 m!4515081))

(assert (=> b!3945914 d!1170574))

(declare-fun b!3946261 () Bool)

(declare-fun e!2441962 () tuple2!41200)

(declare-fun lt!1379667 () Option!8973)

(declare-fun lt!1379665 () tuple2!41200)

(assert (=> b!3946261 (= e!2441962 (tuple2!41201 (Cons!41912 (_1!23733 (v!39310 lt!1379667)) (_1!23734 lt!1379665)) (_2!23734 lt!1379665)))))

(assert (=> b!3946261 (= lt!1379665 (lexList!1910 thiss!20629 rules!2768 (_2!23733 (v!39310 lt!1379667))))))

(declare-fun b!3946262 () Bool)

(assert (=> b!3946262 (= e!2441962 (tuple2!41201 Nil!41912 (_2!23733 (v!39310 lt!1379619))))))

(declare-fun d!1170576 () Bool)

(declare-fun e!2441964 () Bool)

(assert (=> d!1170576 e!2441964))

(declare-fun c!685436 () Bool)

(declare-fun lt!1379666 () tuple2!41200)

(assert (=> d!1170576 (= c!685436 (> (size!31431 (_1!23734 lt!1379666)) 0))))

(assert (=> d!1170576 (= lt!1379666 e!2441962)))

(declare-fun c!685435 () Bool)

(assert (=> d!1170576 (= c!685435 (is-Some!8972 lt!1379667))))

(assert (=> d!1170576 (= lt!1379667 (maxPrefix!3446 thiss!20629 rules!2768 (_2!23733 (v!39310 lt!1379619))))))

(assert (=> d!1170576 (= (lexList!1910 thiss!20629 rules!2768 (_2!23733 (v!39310 lt!1379619))) lt!1379666)))

(declare-fun b!3946263 () Bool)

(assert (=> b!3946263 (= e!2441964 (= (_2!23734 lt!1379666) (_2!23733 (v!39310 lt!1379619))))))

(declare-fun b!3946264 () Bool)

(declare-fun e!2441963 () Bool)

(assert (=> b!3946264 (= e!2441964 e!2441963)))

(declare-fun res!1596819 () Bool)

(assert (=> b!3946264 (= res!1596819 (< (size!31428 (_2!23734 lt!1379666)) (size!31428 (_2!23733 (v!39310 lt!1379619)))))))

(assert (=> b!3946264 (=> (not res!1596819) (not e!2441963))))

(declare-fun b!3946265 () Bool)

(assert (=> b!3946265 (= e!2441963 (not (isEmpty!25015 (_1!23734 lt!1379666))))))

(assert (= (and d!1170576 c!685435) b!3946261))

(assert (= (and d!1170576 (not c!685435)) b!3946262))

(assert (= (and d!1170576 c!685436) b!3946264))

(assert (= (and d!1170576 (not c!685436)) b!3946263))

(assert (= (and b!3946264 res!1596819) b!3946265))

(declare-fun m!4515083 () Bool)

(assert (=> b!3946261 m!4515083))

(declare-fun m!4515085 () Bool)

(assert (=> d!1170576 m!4515085))

(declare-fun m!4515087 () Bool)

(assert (=> d!1170576 m!4515087))

(declare-fun m!4515089 () Bool)

(assert (=> b!3946264 m!4515089))

(declare-fun m!4515091 () Bool)

(assert (=> b!3946264 m!4515091))

(declare-fun m!4515093 () Bool)

(assert (=> b!3946265 m!4515093))

(assert (=> b!3946026 d!1170576))

(declare-fun lt!1379668 () List!42036)

(declare-fun b!3946269 () Bool)

(declare-fun e!2441965 () Bool)

(assert (=> b!3946269 (= e!2441965 (or (not (= suffixTokens!72 Nil!41912)) (= lt!1379668 (t!327699 prefixTokens!80))))))

(declare-fun d!1170578 () Bool)

(assert (=> d!1170578 e!2441965))

(declare-fun res!1596820 () Bool)

(assert (=> d!1170578 (=> (not res!1596820) (not e!2441965))))

(assert (=> d!1170578 (= res!1596820 (= (content!6345 lt!1379668) (set.union (content!6345 (t!327699 prefixTokens!80)) (content!6345 suffixTokens!72))))))

(declare-fun e!2441966 () List!42036)

(assert (=> d!1170578 (= lt!1379668 e!2441966)))

(declare-fun c!685437 () Bool)

(assert (=> d!1170578 (= c!685437 (is-Nil!41912 (t!327699 prefixTokens!80)))))

(assert (=> d!1170578 (= (++!10864 (t!327699 prefixTokens!80) suffixTokens!72) lt!1379668)))

(declare-fun b!3946266 () Bool)

(assert (=> b!3946266 (= e!2441966 suffixTokens!72)))

(declare-fun b!3946267 () Bool)

(assert (=> b!3946267 (= e!2441966 (Cons!41912 (h!47332 (t!327699 prefixTokens!80)) (++!10864 (t!327699 (t!327699 prefixTokens!80)) suffixTokens!72)))))

(declare-fun b!3946268 () Bool)

(declare-fun res!1596821 () Bool)

(assert (=> b!3946268 (=> (not res!1596821) (not e!2441965))))

(assert (=> b!3946268 (= res!1596821 (= (size!31431 lt!1379668) (+ (size!31431 (t!327699 prefixTokens!80)) (size!31431 suffixTokens!72))))))

(assert (= (and d!1170578 c!685437) b!3946266))

(assert (= (and d!1170578 (not c!685437)) b!3946267))

(assert (= (and d!1170578 res!1596820) b!3946268))

(assert (= (and b!3946268 res!1596821) b!3946269))

(declare-fun m!4515095 () Bool)

(assert (=> d!1170578 m!4515095))

(declare-fun m!4515097 () Bool)

(assert (=> d!1170578 m!4515097))

(assert (=> d!1170578 m!4514831))

(declare-fun m!4515099 () Bool)

(assert (=> b!3946267 m!4515099))

(declare-fun m!4515101 () Bool)

(assert (=> b!3946268 m!4515101))

(declare-fun m!4515103 () Bool)

(assert (=> b!3946268 m!4515103))

(assert (=> b!3946268 m!4514839))

(assert (=> b!3946018 d!1170578))

(declare-fun d!1170580 () Bool)

(assert (=> d!1170580 (= (list!15567 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80)))) (value!207396 (h!47332 prefixTokens!80)))) (list!15569 (c!685366 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80)))) (value!207396 (h!47332 prefixTokens!80))))))))

(declare-fun bs!586873 () Bool)

(assert (= bs!586873 d!1170580))

(declare-fun m!4515105 () Bool)

(assert (=> bs!586873 m!4515105))

(assert (=> b!3945826 d!1170580))

(declare-fun d!1170582 () Bool)

(declare-fun lt!1379669 () Int)

(assert (=> d!1170582 (>= lt!1379669 0)))

(declare-fun e!2441967 () Int)

(assert (=> d!1170582 (= lt!1379669 e!2441967)))

(declare-fun c!685438 () Bool)

(assert (=> d!1170582 (= c!685438 (is-Nil!41910 lt!1379582))))

(assert (=> d!1170582 (= (size!31428 lt!1379582) lt!1379669)))

(declare-fun b!3946270 () Bool)

(assert (=> b!3946270 (= e!2441967 0)))

(declare-fun b!3946271 () Bool)

(assert (=> b!3946271 (= e!2441967 (+ 1 (size!31428 (t!327697 lt!1379582))))))

(assert (= (and d!1170582 c!685438) b!3946270))

(assert (= (and d!1170582 (not c!685438)) b!3946271))

(declare-fun m!4515107 () Bool)

(assert (=> b!3946271 m!4515107))

(assert (=> b!3945941 d!1170582))

(declare-fun d!1170584 () Bool)

(declare-fun lt!1379670 () Int)

(assert (=> d!1170584 (>= lt!1379670 0)))

(declare-fun e!2441968 () Int)

(assert (=> d!1170584 (= lt!1379670 e!2441968)))

(declare-fun c!685439 () Bool)

(assert (=> d!1170584 (= c!685439 (is-Nil!41910 lt!1379518))))

(assert (=> d!1170584 (= (size!31428 lt!1379518) lt!1379670)))

(declare-fun b!3946272 () Bool)

(assert (=> b!3946272 (= e!2441968 0)))

(declare-fun b!3946273 () Bool)

(assert (=> b!3946273 (= e!2441968 (+ 1 (size!31428 (t!327697 lt!1379518))))))

(assert (= (and d!1170584 c!685439) b!3946272))

(assert (= (and d!1170584 (not c!685439)) b!3946273))

(declare-fun m!4515109 () Bool)

(assert (=> b!3946273 m!4515109))

(assert (=> b!3945941 d!1170584))

(declare-fun d!1170586 () Bool)

(declare-fun lt!1379671 () Int)

(assert (=> d!1170586 (>= lt!1379671 0)))

(declare-fun e!2441969 () Int)

(assert (=> d!1170586 (= lt!1379671 e!2441969)))

(declare-fun c!685440 () Bool)

(assert (=> d!1170586 (= c!685440 (is-Nil!41910 (_2!23733 (v!39310 lt!1379525))))))

(assert (=> d!1170586 (= (size!31428 (_2!23733 (v!39310 lt!1379525))) lt!1379671)))

(declare-fun b!3946274 () Bool)

(assert (=> b!3946274 (= e!2441969 0)))

(declare-fun b!3946275 () Bool)

(assert (=> b!3946275 (= e!2441969 (+ 1 (size!31428 (t!327697 (_2!23733 (v!39310 lt!1379525))))))))

(assert (= (and d!1170586 c!685440) b!3946274))

(assert (= (and d!1170586 (not c!685440)) b!3946275))

(declare-fun m!4515111 () Bool)

(assert (=> b!3946275 m!4515111))

(assert (=> b!3945941 d!1170586))

(declare-fun d!1170588 () Bool)

(declare-fun res!1596822 () Bool)

(declare-fun e!2441970 () Bool)

(assert (=> d!1170588 (=> (not res!1596822) (not e!2441970))))

(assert (=> d!1170588 (= res!1596822 (not (isEmpty!25014 (originalCharacters!7153 (h!47332 (t!327699 suffixTokens!72))))))))

(assert (=> d!1170588 (= (inv!56133 (h!47332 (t!327699 suffixTokens!72))) e!2441970)))

(declare-fun b!3946276 () Bool)

(declare-fun res!1596823 () Bool)

(assert (=> b!3946276 (=> (not res!1596823) (not e!2441970))))

(assert (=> b!3946276 (= res!1596823 (= (originalCharacters!7153 (h!47332 (t!327699 suffixTokens!72))) (list!15567 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 suffixTokens!72))))) (value!207396 (h!47332 (t!327699 suffixTokens!72)))))))))

(declare-fun b!3946277 () Bool)

(assert (=> b!3946277 (= e!2441970 (= (size!31426 (h!47332 (t!327699 suffixTokens!72))) (size!31428 (originalCharacters!7153 (h!47332 (t!327699 suffixTokens!72))))))))

(assert (= (and d!1170588 res!1596822) b!3946276))

(assert (= (and b!3946276 res!1596823) b!3946277))

(declare-fun b_lambda!115429 () Bool)

(assert (=> (not b_lambda!115429) (not b!3946276)))

(declare-fun t!327815 () Bool)

(declare-fun tb!237041 () Bool)

(assert (=> (and b!3945751 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72)))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 suffixTokens!72)))))) t!327815) tb!237041))

(declare-fun b!3946278 () Bool)

(declare-fun e!2441971 () Bool)

(declare-fun tp!1201449 () Bool)

(assert (=> b!3946278 (= e!2441971 (and (inv!56137 (c!685366 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 suffixTokens!72))))) (value!207396 (h!47332 (t!327699 suffixTokens!72)))))) tp!1201449))))

(declare-fun result!287106 () Bool)

(assert (=> tb!237041 (= result!287106 (and (inv!56138 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 suffixTokens!72))))) (value!207396 (h!47332 (t!327699 suffixTokens!72))))) e!2441971))))

(assert (= tb!237041 b!3946278))

(declare-fun m!4515113 () Bool)

(assert (=> b!3946278 m!4515113))

(declare-fun m!4515115 () Bool)

(assert (=> tb!237041 m!4515115))

(assert (=> b!3946276 t!327815))

(declare-fun b_and!301955 () Bool)

(assert (= b_and!301893 (and (=> t!327815 result!287106) b_and!301955)))

(declare-fun tb!237043 () Bool)

(declare-fun t!327817 () Bool)

(assert (=> (and b!3946088 (= (toChars!8884 (transformation!6553 (h!47331 (t!327698 rules!2768)))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 suffixTokens!72)))))) t!327817) tb!237043))

(declare-fun result!287108 () Bool)

(assert (= result!287108 result!287106))

(assert (=> b!3946276 t!327817))

(declare-fun b_and!301957 () Bool)

(assert (= b_and!301919 (and (=> t!327817 result!287108) b_and!301957)))

(declare-fun tb!237045 () Bool)

(declare-fun t!327819 () Bool)

(assert (=> (and b!3945733 (= (toChars!8884 (transformation!6553 (h!47331 rules!2768))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 suffixTokens!72)))))) t!327819) tb!237045))

(declare-fun result!287110 () Bool)

(assert (= result!287110 result!287106))

(assert (=> b!3946276 t!327819))

(declare-fun b_and!301959 () Bool)

(assert (= b_and!301889 (and (=> t!327819 result!287110) b_and!301959)))

(declare-fun t!327821 () Bool)

(declare-fun tb!237047 () Bool)

(assert (=> (and b!3945734 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80)))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 suffixTokens!72)))))) t!327821) tb!237047))

(declare-fun result!287112 () Bool)

(assert (= result!287112 result!287106))

(assert (=> b!3946276 t!327821))

(declare-fun b_and!301961 () Bool)

(assert (= b_and!301891 (and (=> t!327821 result!287112) b_and!301961)))

(declare-fun t!327823 () Bool)

(declare-fun tb!237049 () Bool)

(assert (=> (and b!3946092 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 suffixTokens!72))))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 suffixTokens!72)))))) t!327823) tb!237049))

(declare-fun result!287114 () Bool)

(assert (= result!287114 result!287106))

(assert (=> b!3946276 t!327823))

(declare-fun b_and!301963 () Bool)

(assert (= b_and!301923 (and (=> t!327823 result!287114) b_and!301963)))

(declare-fun t!327825 () Bool)

(declare-fun tb!237051 () Bool)

(assert (=> (and b!3946057 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 prefixTokens!80))))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 suffixTokens!72)))))) t!327825) tb!237051))

(declare-fun result!287116 () Bool)

(assert (= result!287116 result!287106))

(assert (=> b!3946276 t!327825))

(declare-fun b_and!301965 () Bool)

(assert (= b_and!301915 (and (=> t!327825 result!287116) b_and!301965)))

(declare-fun m!4515117 () Bool)

(assert (=> d!1170588 m!4515117))

(declare-fun m!4515119 () Bool)

(assert (=> b!3946276 m!4515119))

(assert (=> b!3946276 m!4515119))

(declare-fun m!4515121 () Bool)

(assert (=> b!3946276 m!4515121))

(declare-fun m!4515123 () Bool)

(assert (=> b!3946277 m!4515123))

(assert (=> b!3946089 d!1170588))

(declare-fun d!1170590 () Bool)

(declare-fun nullableFct!1136 (Regex!11458) Bool)

(assert (=> d!1170590 (= (nullable!4020 (regex!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))) (nullableFct!1136 (regex!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))))))

(declare-fun bs!586874 () Bool)

(assert (= bs!586874 d!1170590))

(declare-fun m!4515125 () Bool)

(assert (=> bs!586874 m!4515125))

(assert (=> b!3945958 d!1170590))

(declare-fun d!1170592 () Bool)

(declare-fun lt!1379672 () Int)

(assert (=> d!1170592 (>= lt!1379672 0)))

(declare-fun e!2441972 () Int)

(assert (=> d!1170592 (= lt!1379672 e!2441972)))

(declare-fun c!685441 () Bool)

(assert (=> d!1170592 (= c!685441 (is-Nil!41910 (++!10863 lt!1379518 (_2!23733 (v!39310 lt!1379525)))))))

(assert (=> d!1170592 (= (size!31428 (++!10863 lt!1379518 (_2!23733 (v!39310 lt!1379525)))) lt!1379672)))

(declare-fun b!3946279 () Bool)

(assert (=> b!3946279 (= e!2441972 0)))

(declare-fun b!3946280 () Bool)

(assert (=> b!3946280 (= e!2441972 (+ 1 (size!31428 (t!327697 (++!10863 lt!1379518 (_2!23733 (v!39310 lt!1379525)))))))))

(assert (= (and d!1170592 c!685441) b!3946279))

(assert (= (and d!1170592 (not c!685441)) b!3946280))

(declare-fun m!4515127 () Bool)

(assert (=> b!3946280 m!4515127))

(assert (=> b!3945972 d!1170592))

(assert (=> b!3945972 d!1170584))

(declare-fun d!1170594 () Bool)

(declare-fun c!685444 () Bool)

(assert (=> d!1170594 (= c!685444 (is-Nil!41910 lt!1379582))))

(declare-fun e!2441975 () (Set C!23102))

(assert (=> d!1170594 (= (content!6344 lt!1379582) e!2441975)))

(declare-fun b!3946285 () Bool)

(assert (=> b!3946285 (= e!2441975 (as set.empty (Set C!23102)))))

(declare-fun b!3946286 () Bool)

(assert (=> b!3946286 (= e!2441975 (set.union (set.insert (h!47330 lt!1379582) (as set.empty (Set C!23102))) (content!6344 (t!327697 lt!1379582))))))

(assert (= (and d!1170594 c!685444) b!3946285))

(assert (= (and d!1170594 (not c!685444)) b!3946286))

(declare-fun m!4515129 () Bool)

(assert (=> b!3946286 m!4515129))

(declare-fun m!4515131 () Bool)

(assert (=> b!3946286 m!4515131))

(assert (=> d!1170468 d!1170594))

(declare-fun d!1170596 () Bool)

(declare-fun c!685445 () Bool)

(assert (=> d!1170596 (= c!685445 (is-Nil!41910 lt!1379518))))

(declare-fun e!2441976 () (Set C!23102))

(assert (=> d!1170596 (= (content!6344 lt!1379518) e!2441976)))

(declare-fun b!3946287 () Bool)

(assert (=> b!3946287 (= e!2441976 (as set.empty (Set C!23102)))))

(declare-fun b!3946288 () Bool)

(assert (=> b!3946288 (= e!2441976 (set.union (set.insert (h!47330 lt!1379518) (as set.empty (Set C!23102))) (content!6344 (t!327697 lt!1379518))))))

(assert (= (and d!1170596 c!685445) b!3946287))

(assert (= (and d!1170596 (not c!685445)) b!3946288))

(declare-fun m!4515133 () Bool)

(assert (=> b!3946288 m!4515133))

(declare-fun m!4515135 () Bool)

(assert (=> b!3946288 m!4515135))

(assert (=> d!1170468 d!1170596))

(declare-fun d!1170598 () Bool)

(declare-fun c!685446 () Bool)

(assert (=> d!1170598 (= c!685446 (is-Nil!41910 (_2!23733 (v!39310 lt!1379525))))))

(declare-fun e!2441977 () (Set C!23102))

(assert (=> d!1170598 (= (content!6344 (_2!23733 (v!39310 lt!1379525))) e!2441977)))

(declare-fun b!3946289 () Bool)

(assert (=> b!3946289 (= e!2441977 (as set.empty (Set C!23102)))))

(declare-fun b!3946290 () Bool)

(assert (=> b!3946290 (= e!2441977 (set.union (set.insert (h!47330 (_2!23733 (v!39310 lt!1379525))) (as set.empty (Set C!23102))) (content!6344 (t!327697 (_2!23733 (v!39310 lt!1379525))))))))

(assert (= (and d!1170598 c!685446) b!3946289))

(assert (= (and d!1170598 (not c!685446)) b!3946290))

(declare-fun m!4515137 () Bool)

(assert (=> b!3946290 m!4515137))

(declare-fun m!4515139 () Bool)

(assert (=> b!3946290 m!4515139))

(assert (=> d!1170468 d!1170598))

(declare-fun d!1170600 () Bool)

(declare-fun c!685449 () Bool)

(assert (=> d!1170600 (= c!685449 (is-Nil!41912 lt!1379615))))

(declare-fun e!2441980 () (Set Token!12244))

(assert (=> d!1170600 (= (content!6345 lt!1379615) e!2441980)))

(declare-fun b!3946295 () Bool)

(assert (=> b!3946295 (= e!2441980 (as set.empty (Set Token!12244)))))

(declare-fun b!3946296 () Bool)

(assert (=> b!3946296 (= e!2441980 (set.union (set.insert (h!47332 lt!1379615) (as set.empty (Set Token!12244))) (content!6345 (t!327699 lt!1379615))))))

(assert (= (and d!1170600 c!685449) b!3946295))

(assert (= (and d!1170600 (not c!685449)) b!3946296))

(declare-fun m!4515141 () Bool)

(assert (=> b!3946296 m!4515141))

(declare-fun m!4515143 () Bool)

(assert (=> b!3946296 m!4515143))

(assert (=> d!1170506 d!1170600))

(declare-fun d!1170602 () Bool)

(declare-fun c!685450 () Bool)

(assert (=> d!1170602 (= c!685450 (is-Nil!41912 prefixTokens!80))))

(declare-fun e!2441981 () (Set Token!12244))

(assert (=> d!1170602 (= (content!6345 prefixTokens!80) e!2441981)))

(declare-fun b!3946297 () Bool)

(assert (=> b!3946297 (= e!2441981 (as set.empty (Set Token!12244)))))

(declare-fun b!3946298 () Bool)

(assert (=> b!3946298 (= e!2441981 (set.union (set.insert (h!47332 prefixTokens!80) (as set.empty (Set Token!12244))) (content!6345 (t!327699 prefixTokens!80))))))

(assert (= (and d!1170602 c!685450) b!3946297))

(assert (= (and d!1170602 (not c!685450)) b!3946298))

(declare-fun m!4515145 () Bool)

(assert (=> b!3946298 m!4515145))

(assert (=> b!3946298 m!4515097))

(assert (=> d!1170506 d!1170602))

(declare-fun d!1170604 () Bool)

(declare-fun c!685451 () Bool)

(assert (=> d!1170604 (= c!685451 (is-Nil!41912 suffixTokens!72))))

(declare-fun e!2441982 () (Set Token!12244))

(assert (=> d!1170604 (= (content!6345 suffixTokens!72) e!2441982)))

(declare-fun b!3946299 () Bool)

(assert (=> b!3946299 (= e!2441982 (as set.empty (Set Token!12244)))))

(declare-fun b!3946300 () Bool)

(assert (=> b!3946300 (= e!2441982 (set.union (set.insert (h!47332 suffixTokens!72) (as set.empty (Set Token!12244))) (content!6345 (t!327699 suffixTokens!72))))))

(assert (= (and d!1170604 c!685451) b!3946299))

(assert (= (and d!1170604 (not c!685451)) b!3946300))

(declare-fun m!4515147 () Bool)

(assert (=> b!3946300 m!4515147))

(declare-fun m!4515149 () Bool)

(assert (=> b!3946300 m!4515149))

(assert (=> d!1170506 d!1170604))

(declare-fun d!1170606 () Bool)

(declare-fun c!685452 () Bool)

(assert (=> d!1170606 (= c!685452 (is-Node!12764 (c!685366 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))) (value!207396 (_1!23733 (v!39310 lt!1379525)))))))))

(declare-fun e!2441983 () Bool)

(assert (=> d!1170606 (= (inv!56137 (c!685366 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))) (value!207396 (_1!23733 (v!39310 lt!1379525)))))) e!2441983)))

(declare-fun b!3946301 () Bool)

(assert (=> b!3946301 (= e!2441983 (inv!56141 (c!685366 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))) (value!207396 (_1!23733 (v!39310 lt!1379525)))))))))

(declare-fun b!3946302 () Bool)

(declare-fun e!2441984 () Bool)

(assert (=> b!3946302 (= e!2441983 e!2441984)))

(declare-fun res!1596824 () Bool)

(assert (=> b!3946302 (= res!1596824 (not (is-Leaf!19748 (c!685366 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))) (value!207396 (_1!23733 (v!39310 lt!1379525))))))))))

(assert (=> b!3946302 (=> res!1596824 e!2441984)))

(declare-fun b!3946303 () Bool)

(assert (=> b!3946303 (= e!2441984 (inv!56142 (c!685366 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))) (value!207396 (_1!23733 (v!39310 lt!1379525)))))))))

(assert (= (and d!1170606 c!685452) b!3946301))

(assert (= (and d!1170606 (not c!685452)) b!3946302))

(assert (= (and b!3946302 (not res!1596824)) b!3946303))

(declare-fun m!4515151 () Bool)

(assert (=> b!3946301 m!4515151))

(declare-fun m!4515153 () Bool)

(assert (=> b!3946303 m!4515153))

(assert (=> b!3945915 d!1170606))

(declare-fun d!1170608 () Bool)

(assert (=> d!1170608 (= (head!8382 lt!1379518) (h!47330 lt!1379518))))

(assert (=> b!3945970 d!1170608))

(declare-fun d!1170610 () Bool)

(assert (=> d!1170610 (= (head!8382 (++!10863 lt!1379518 (_2!23733 (v!39310 lt!1379525)))) (h!47330 (++!10863 lt!1379518 (_2!23733 (v!39310 lt!1379525)))))))

(assert (=> b!3945970 d!1170610))

(declare-fun d!1170612 () Bool)

(declare-fun lt!1379673 () Int)

(assert (=> d!1170612 (>= lt!1379673 0)))

(declare-fun e!2441985 () Int)

(assert (=> d!1170612 (= lt!1379673 e!2441985)))

(declare-fun c!685453 () Bool)

(assert (=> d!1170612 (= c!685453 (is-Nil!41910 lt!1379616))))

(assert (=> d!1170612 (= (size!31428 lt!1379616) lt!1379673)))

(declare-fun b!3946304 () Bool)

(assert (=> b!3946304 (= e!2441985 0)))

(declare-fun b!3946305 () Bool)

(assert (=> b!3946305 (= e!2441985 (+ 1 (size!31428 (t!327697 lt!1379616))))))

(assert (= (and d!1170612 c!685453) b!3946304))

(assert (= (and d!1170612 (not c!685453)) b!3946305))

(declare-fun m!4515155 () Bool)

(assert (=> b!3946305 m!4515155))

(assert (=> b!3946023 d!1170612))

(declare-fun d!1170614 () Bool)

(declare-fun lt!1379674 () Int)

(assert (=> d!1170614 (>= lt!1379674 0)))

(declare-fun e!2441986 () Int)

(assert (=> d!1170614 (= lt!1379674 e!2441986)))

(declare-fun c!685454 () Bool)

(assert (=> d!1170614 (= c!685454 (is-Nil!41910 prefix!426))))

(assert (=> d!1170614 (= (size!31428 prefix!426) lt!1379674)))

(declare-fun b!3946306 () Bool)

(assert (=> b!3946306 (= e!2441986 0)))

(declare-fun b!3946307 () Bool)

(assert (=> b!3946307 (= e!2441986 (+ 1 (size!31428 (t!327697 prefix!426))))))

(assert (= (and d!1170614 c!685454) b!3946306))

(assert (= (and d!1170614 (not c!685454)) b!3946307))

(declare-fun m!4515157 () Bool)

(assert (=> b!3946307 m!4515157))

(assert (=> b!3946023 d!1170614))

(declare-fun d!1170616 () Bool)

(declare-fun lt!1379675 () Int)

(assert (=> d!1170616 (>= lt!1379675 0)))

(declare-fun e!2441987 () Int)

(assert (=> d!1170616 (= lt!1379675 e!2441987)))

(declare-fun c!685455 () Bool)

(assert (=> d!1170616 (= c!685455 (is-Nil!41910 suffix!1176))))

(assert (=> d!1170616 (= (size!31428 suffix!1176) lt!1379675)))

(declare-fun b!3946308 () Bool)

(assert (=> b!3946308 (= e!2441987 0)))

(declare-fun b!3946309 () Bool)

(assert (=> b!3946309 (= e!2441987 (+ 1 (size!31428 (t!327697 suffix!1176))))))

(assert (= (and d!1170616 c!685455) b!3946308))

(assert (= (and d!1170616 (not c!685455)) b!3946309))

(declare-fun m!4515159 () Bool)

(assert (=> b!3946309 m!4515159))

(assert (=> b!3946023 d!1170616))

(declare-fun bs!586875 () Bool)

(declare-fun d!1170618 () Bool)

(assert (= bs!586875 (and d!1170618 d!1170562)))

(declare-fun lambda!126735 () Int)

(assert (=> bs!586875 (= (and (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80)))) (toChars!8884 (transformation!6553 (h!47331 rules!2768)))) (= (toValue!9025 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80)))) (toValue!9025 (transformation!6553 (h!47331 rules!2768))))) (= lambda!126735 lambda!126734))))

(assert (=> d!1170618 true))

(assert (=> d!1170618 (< (dynLambda!17960 order!22367 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80))))) (dynLambda!17961 order!22369 lambda!126735))))

(assert (=> d!1170618 true))

(assert (=> d!1170618 (< (dynLambda!17962 order!22371 (toValue!9025 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80))))) (dynLambda!17961 order!22369 lambda!126735))))

(assert (=> d!1170618 (= (semiInverseModEq!2824 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80)))) (toValue!9025 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80))))) (Forall!1457 lambda!126735))))

(declare-fun bs!586876 () Bool)

(assert (= bs!586876 d!1170618))

(declare-fun m!4515161 () Bool)

(assert (=> bs!586876 m!4515161))

(assert (=> d!1170496 d!1170618))

(declare-fun d!1170620 () Bool)

(assert (=> d!1170620 true))

(declare-fun order!22373 () Int)

(declare-fun lambda!126738 () Int)

(declare-fun dynLambda!17963 (Int Int) Int)

(assert (=> d!1170620 (< (dynLambda!17962 order!22371 (toValue!9025 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72))))) (dynLambda!17963 order!22373 lambda!126738))))

(declare-fun Forall2!1056 (Int) Bool)

(assert (=> d!1170620 (= (equivClasses!2723 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72)))) (toValue!9025 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72))))) (Forall2!1056 lambda!126738))))

(declare-fun bs!586877 () Bool)

(assert (= bs!586877 d!1170620))

(declare-fun m!4515163 () Bool)

(assert (=> bs!586877 m!4515163))

(assert (=> b!3945884 d!1170620))

(assert (=> d!1170486 d!1170490))

(assert (=> d!1170486 d!1170468))

(declare-fun d!1170622 () Bool)

(assert (=> d!1170622 (isPrefix!3642 lt!1379518 (++!10863 lt!1379518 (_2!23733 (v!39310 lt!1379525))))))

(assert (=> d!1170622 true))

(declare-fun _$46!1600 () Unit!60447)

(assert (=> d!1170622 (= (choose!23544 lt!1379518 (_2!23733 (v!39310 lt!1379525))) _$46!1600)))

(declare-fun bs!586878 () Bool)

(assert (= bs!586878 d!1170622))

(assert (=> bs!586878 m!4514515))

(assert (=> bs!586878 m!4514515))

(assert (=> bs!586878 m!4514517))

(assert (=> d!1170486 d!1170622))

(declare-fun d!1170624 () Bool)

(assert (=> d!1170624 (= (isEmpty!25019 lt!1379570) (not (is-Some!8972 lt!1379570)))))

(assert (=> d!1170436 d!1170624))

(declare-fun d!1170626 () Bool)

(declare-fun e!2441990 () Bool)

(assert (=> d!1170626 e!2441990))

(declare-fun res!1596827 () Bool)

(assert (=> d!1170626 (=> res!1596827 e!2441990)))

(declare-fun lt!1379676 () Bool)

(assert (=> d!1170626 (= res!1596827 (not lt!1379676))))

(declare-fun e!2441992 () Bool)

(assert (=> d!1170626 (= lt!1379676 e!2441992)))

(declare-fun res!1596828 () Bool)

(assert (=> d!1170626 (=> res!1596828 e!2441992)))

(assert (=> d!1170626 (= res!1596828 (is-Nil!41910 lt!1379523))))

(assert (=> d!1170626 (= (isPrefix!3642 lt!1379523 lt!1379523) lt!1379676)))

(declare-fun b!3946317 () Bool)

(assert (=> b!3946317 (= e!2441990 (>= (size!31428 lt!1379523) (size!31428 lt!1379523)))))

(declare-fun b!3946315 () Bool)

(declare-fun res!1596830 () Bool)

(declare-fun e!2441991 () Bool)

(assert (=> b!3946315 (=> (not res!1596830) (not e!2441991))))

(assert (=> b!3946315 (= res!1596830 (= (head!8382 lt!1379523) (head!8382 lt!1379523)))))

(declare-fun b!3946316 () Bool)

(assert (=> b!3946316 (= e!2441991 (isPrefix!3642 (tail!6108 lt!1379523) (tail!6108 lt!1379523)))))

(declare-fun b!3946314 () Bool)

(assert (=> b!3946314 (= e!2441992 e!2441991)))

(declare-fun res!1596829 () Bool)

(assert (=> b!3946314 (=> (not res!1596829) (not e!2441991))))

(assert (=> b!3946314 (= res!1596829 (not (is-Nil!41910 lt!1379523)))))

(assert (= (and d!1170626 (not res!1596828)) b!3946314))

(assert (= (and b!3946314 res!1596829) b!3946315))

(assert (= (and b!3946315 res!1596830) b!3946316))

(assert (= (and d!1170626 (not res!1596827)) b!3946317))

(assert (=> b!3946317 m!4514647))

(assert (=> b!3946317 m!4514647))

(declare-fun m!4515165 () Bool)

(assert (=> b!3946315 m!4515165))

(assert (=> b!3946315 m!4515165))

(assert (=> b!3946316 m!4514761))

(assert (=> b!3946316 m!4514761))

(assert (=> b!3946316 m!4514761))

(assert (=> b!3946316 m!4514761))

(declare-fun m!4515167 () Bool)

(assert (=> b!3946316 m!4515167))

(assert (=> d!1170436 d!1170626))

(declare-fun d!1170628 () Bool)

(assert (=> d!1170628 (isPrefix!3642 lt!1379523 lt!1379523)))

(declare-fun lt!1379679 () Unit!60447)

(declare-fun choose!23548 (List!42034 List!42034) Unit!60447)

(assert (=> d!1170628 (= lt!1379679 (choose!23548 lt!1379523 lt!1379523))))

(assert (=> d!1170628 (= (lemmaIsPrefixRefl!2301 lt!1379523 lt!1379523) lt!1379679)))

(declare-fun bs!586879 () Bool)

(assert (= bs!586879 d!1170628))

(assert (=> bs!586879 m!4514639))

(declare-fun m!4515169 () Bool)

(assert (=> bs!586879 m!4515169))

(assert (=> d!1170436 d!1170628))

(declare-fun d!1170630 () Bool)

(assert (=> d!1170630 true))

(declare-fun lt!1379682 () Bool)

(declare-fun lambda!126741 () Int)

(declare-fun forall!8324 (List!42035 Int) Bool)

(assert (=> d!1170630 (= lt!1379682 (forall!8324 rules!2768 lambda!126741))))

(declare-fun e!2441997 () Bool)

(assert (=> d!1170630 (= lt!1379682 e!2441997)))

(declare-fun res!1596835 () Bool)

(assert (=> d!1170630 (=> res!1596835 e!2441997)))

(assert (=> d!1170630 (= res!1596835 (not (is-Cons!41911 rules!2768)))))

(assert (=> d!1170630 (= (rulesValidInductive!2371 thiss!20629 rules!2768) lt!1379682)))

(declare-fun b!3946322 () Bool)

(declare-fun e!2441998 () Bool)

(assert (=> b!3946322 (= e!2441997 e!2441998)))

(declare-fun res!1596836 () Bool)

(assert (=> b!3946322 (=> (not res!1596836) (not e!2441998))))

(assert (=> b!3946322 (= res!1596836 (ruleValid!2495 thiss!20629 (h!47331 rules!2768)))))

(declare-fun b!3946323 () Bool)

(assert (=> b!3946323 (= e!2441998 (rulesValidInductive!2371 thiss!20629 (t!327698 rules!2768)))))

(assert (= (and d!1170630 (not res!1596835)) b!3946322))

(assert (= (and b!3946322 res!1596836) b!3946323))

(declare-fun m!4515171 () Bool)

(assert (=> d!1170630 m!4515171))

(declare-fun m!4515173 () Bool)

(assert (=> b!3946322 m!4515173))

(assert (=> b!3946323 m!4515075))

(assert (=> d!1170436 d!1170630))

(declare-fun bs!586880 () Bool)

(declare-fun d!1170632 () Bool)

(assert (= bs!586880 (and d!1170632 d!1170562)))

(declare-fun lambda!126742 () Int)

(assert (=> bs!586880 (= (and (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72)))) (toChars!8884 (transformation!6553 (h!47331 rules!2768)))) (= (toValue!9025 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72)))) (toValue!9025 (transformation!6553 (h!47331 rules!2768))))) (= lambda!126742 lambda!126734))))

(declare-fun bs!586881 () Bool)

(assert (= bs!586881 (and d!1170632 d!1170618)))

(assert (=> bs!586881 (= (and (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72)))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80))))) (= (toValue!9025 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72)))) (toValue!9025 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80)))))) (= lambda!126742 lambda!126735))))

(assert (=> d!1170632 true))

(assert (=> d!1170632 (< (dynLambda!17960 order!22367 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72))))) (dynLambda!17961 order!22369 lambda!126742))))

(assert (=> d!1170632 true))

(assert (=> d!1170632 (< (dynLambda!17962 order!22371 (toValue!9025 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72))))) (dynLambda!17961 order!22369 lambda!126742))))

(assert (=> d!1170632 (= (semiInverseModEq!2824 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72)))) (toValue!9025 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72))))) (Forall!1457 lambda!126742))))

(declare-fun bs!586882 () Bool)

(assert (= bs!586882 d!1170632))

(declare-fun m!4515175 () Bool)

(assert (=> bs!586882 m!4515175))

(assert (=> d!1170446 d!1170632))

(declare-fun d!1170634 () Bool)

(assert (=> d!1170634 (= (inv!56130 (tag!7413 (rule!9517 (h!47332 (t!327699 suffixTokens!72))))) (= (mod (str.len (value!207395 (tag!7413 (rule!9517 (h!47332 (t!327699 suffixTokens!72)))))) 2) 0))))

(assert (=> b!3946091 d!1170634))

(declare-fun d!1170636 () Bool)

(declare-fun res!1596837 () Bool)

(declare-fun e!2441999 () Bool)

(assert (=> d!1170636 (=> (not res!1596837) (not e!2441999))))

(assert (=> d!1170636 (= res!1596837 (semiInverseModEq!2824 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 suffixTokens!72))))) (toValue!9025 (transformation!6553 (rule!9517 (h!47332 (t!327699 suffixTokens!72)))))))))

(assert (=> d!1170636 (= (inv!56134 (transformation!6553 (rule!9517 (h!47332 (t!327699 suffixTokens!72))))) e!2441999)))

(declare-fun b!3946326 () Bool)

(assert (=> b!3946326 (= e!2441999 (equivClasses!2723 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 suffixTokens!72))))) (toValue!9025 (transformation!6553 (rule!9517 (h!47332 (t!327699 suffixTokens!72)))))))))

(assert (= (and d!1170636 res!1596837) b!3946326))

(declare-fun m!4515177 () Bool)

(assert (=> d!1170636 m!4515177))

(declare-fun m!4515179 () Bool)

(assert (=> b!3946326 m!4515179))

(assert (=> b!3946091 d!1170636))

(declare-fun d!1170638 () Bool)

(assert (=> d!1170638 (= (_2!23733 (v!39310 lt!1379525)) lt!1379524)))

(assert (=> d!1170638 true))

(declare-fun _$63!1006 () Unit!60447)

(assert (=> d!1170638 (= (choose!23542 lt!1379518 (_2!23733 (v!39310 lt!1379525)) lt!1379518 lt!1379524 lt!1379523) _$63!1006)))

(assert (=> d!1170466 d!1170638))

(declare-fun d!1170640 () Bool)

(declare-fun e!2442000 () Bool)

(assert (=> d!1170640 e!2442000))

(declare-fun res!1596838 () Bool)

(assert (=> d!1170640 (=> res!1596838 e!2442000)))

(declare-fun lt!1379683 () Bool)

(assert (=> d!1170640 (= res!1596838 (not lt!1379683))))

(declare-fun e!2442002 () Bool)

(assert (=> d!1170640 (= lt!1379683 e!2442002)))

(declare-fun res!1596839 () Bool)

(assert (=> d!1170640 (=> res!1596839 e!2442002)))

(assert (=> d!1170640 (= res!1596839 (is-Nil!41910 lt!1379518))))

(assert (=> d!1170640 (= (isPrefix!3642 lt!1379518 lt!1379523) lt!1379683)))

(declare-fun b!3946330 () Bool)

(assert (=> b!3946330 (= e!2442000 (>= (size!31428 lt!1379523) (size!31428 lt!1379518)))))

(declare-fun b!3946328 () Bool)

(declare-fun res!1596841 () Bool)

(declare-fun e!2442001 () Bool)

(assert (=> b!3946328 (=> (not res!1596841) (not e!2442001))))

(assert (=> b!3946328 (= res!1596841 (= (head!8382 lt!1379518) (head!8382 lt!1379523)))))

(declare-fun b!3946329 () Bool)

(assert (=> b!3946329 (= e!2442001 (isPrefix!3642 (tail!6108 lt!1379518) (tail!6108 lt!1379523)))))

(declare-fun b!3946327 () Bool)

(assert (=> b!3946327 (= e!2442002 e!2442001)))

(declare-fun res!1596840 () Bool)

(assert (=> b!3946327 (=> (not res!1596840) (not e!2442001))))

(assert (=> b!3946327 (= res!1596840 (not (is-Nil!41910 lt!1379523)))))

(assert (= (and d!1170640 (not res!1596839)) b!3946327))

(assert (= (and b!3946327 res!1596840) b!3946328))

(assert (= (and b!3946328 res!1596841) b!3946329))

(assert (= (and d!1170640 (not res!1596838)) b!3946330))

(assert (=> b!3946330 m!4514647))

(assert (=> b!3946330 m!4514739))

(assert (=> b!3946328 m!4514781))

(assert (=> b!3946328 m!4515165))

(assert (=> b!3946329 m!4514785))

(assert (=> b!3946329 m!4514761))

(assert (=> b!3946329 m!4514785))

(assert (=> b!3946329 m!4514761))

(declare-fun m!4515181 () Bool)

(assert (=> b!3946329 m!4515181))

(assert (=> d!1170466 d!1170640))

(declare-fun d!1170642 () Bool)

(assert (=> d!1170642 (= (list!15567 lt!1379576) (list!15569 (c!685366 lt!1379576)))))

(declare-fun bs!586883 () Bool)

(assert (= bs!586883 d!1170642))

(declare-fun m!4515183 () Bool)

(assert (=> bs!586883 m!4515183))

(assert (=> d!1170460 d!1170642))

(declare-fun d!1170644 () Bool)

(declare-fun charsToBigInt!1 (List!42033) Int)

(assert (=> d!1170644 (= (inv!17 (value!207396 (h!47332 suffixTokens!72))) (= (charsToBigInt!1 (text!47929 (value!207396 (h!47332 suffixTokens!72)))) (value!207388 (value!207396 (h!47332 suffixTokens!72)))))))

(declare-fun bs!586884 () Bool)

(assert (= bs!586884 d!1170644))

(declare-fun m!4515185 () Bool)

(assert (=> bs!586884 m!4515185))

(assert (=> b!3945913 d!1170644))

(declare-fun d!1170646 () Bool)

(declare-fun e!2442004 () Bool)

(assert (=> d!1170646 e!2442004))

(declare-fun res!1596843 () Bool)

(assert (=> d!1170646 (=> (not res!1596843) (not e!2442004))))

(declare-fun lt!1379684 () List!42034)

(assert (=> d!1170646 (= res!1596843 (= (content!6344 lt!1379684) (set.union (content!6344 (t!327697 lt!1379518)) (content!6344 (_2!23733 (v!39310 lt!1379525))))))))

(declare-fun e!2442003 () List!42034)

(assert (=> d!1170646 (= lt!1379684 e!2442003)))

(declare-fun c!685456 () Bool)

(assert (=> d!1170646 (= c!685456 (is-Nil!41910 (t!327697 lt!1379518)))))

(assert (=> d!1170646 (= (++!10863 (t!327697 lt!1379518) (_2!23733 (v!39310 lt!1379525))) lt!1379684)))

(declare-fun b!3946331 () Bool)

(assert (=> b!3946331 (= e!2442003 (_2!23733 (v!39310 lt!1379525)))))

(declare-fun b!3946334 () Bool)

(assert (=> b!3946334 (= e!2442004 (or (not (= (_2!23733 (v!39310 lt!1379525)) Nil!41910)) (= lt!1379684 (t!327697 lt!1379518))))))

(declare-fun b!3946332 () Bool)

(assert (=> b!3946332 (= e!2442003 (Cons!41910 (h!47330 (t!327697 lt!1379518)) (++!10863 (t!327697 (t!327697 lt!1379518)) (_2!23733 (v!39310 lt!1379525)))))))

(declare-fun b!3946333 () Bool)

(declare-fun res!1596842 () Bool)

(assert (=> b!3946333 (=> (not res!1596842) (not e!2442004))))

(assert (=> b!3946333 (= res!1596842 (= (size!31428 lt!1379684) (+ (size!31428 (t!327697 lt!1379518)) (size!31428 (_2!23733 (v!39310 lt!1379525))))))))

(assert (= (and d!1170646 c!685456) b!3946331))

(assert (= (and d!1170646 (not c!685456)) b!3946332))

(assert (= (and d!1170646 res!1596843) b!3946333))

(assert (= (and b!3946333 res!1596842) b!3946334))

(declare-fun m!4515187 () Bool)

(assert (=> d!1170646 m!4515187))

(assert (=> d!1170646 m!4515135))

(assert (=> d!1170646 m!4514733))

(declare-fun m!4515189 () Bool)

(assert (=> b!3946332 m!4515189))

(declare-fun m!4515191 () Bool)

(assert (=> b!3946333 m!4515191))

(assert (=> b!3946333 m!4515109))

(assert (=> b!3946333 m!4514741))

(assert (=> b!3945940 d!1170646))

(declare-fun b!3946363 () Bool)

(declare-fun e!2442025 () Bool)

(declare-fun e!2442019 () Bool)

(assert (=> b!3946363 (= e!2442025 e!2442019)))

(declare-fun res!1596865 () Bool)

(assert (=> b!3946363 (=> res!1596865 e!2442019)))

(declare-fun call!285152 () Bool)

(assert (=> b!3946363 (= res!1596865 call!285152)))

(declare-fun b!3946364 () Bool)

(declare-fun e!2442024 () Bool)

(declare-fun lt!1379687 () Bool)

(assert (=> b!3946364 (= e!2442024 (not lt!1379687))))

(declare-fun b!3946365 () Bool)

(declare-fun res!1596866 () Bool)

(assert (=> b!3946365 (=> res!1596866 e!2442019)))

(assert (=> b!3946365 (= res!1596866 (not (isEmpty!25014 (tail!6108 (list!15567 (charsOf!4371 (_1!23733 (get!13842 lt!1379570))))))))))

(declare-fun b!3946366 () Bool)

(declare-fun e!2442023 () Bool)

(assert (=> b!3946366 (= e!2442023 (nullable!4020 (regex!6553 (rule!9517 (_1!23733 (get!13842 lt!1379570))))))))

(declare-fun b!3946367 () Bool)

(declare-fun res!1596867 () Bool)

(declare-fun e!2442021 () Bool)

(assert (=> b!3946367 (=> res!1596867 e!2442021)))

(assert (=> b!3946367 (= res!1596867 (not (is-ElementMatch!11458 (regex!6553 (rule!9517 (_1!23733 (get!13842 lt!1379570)))))))))

(assert (=> b!3946367 (= e!2442024 e!2442021)))

(declare-fun b!3946368 () Bool)

(declare-fun e!2442020 () Bool)

(assert (=> b!3946368 (= e!2442020 e!2442024)))

(declare-fun c!685465 () Bool)

(assert (=> b!3946368 (= c!685465 (is-EmptyLang!11458 (regex!6553 (rule!9517 (_1!23733 (get!13842 lt!1379570))))))))

(declare-fun b!3946370 () Bool)

(declare-fun e!2442022 () Bool)

(assert (=> b!3946370 (= e!2442022 (= (head!8382 (list!15567 (charsOf!4371 (_1!23733 (get!13842 lt!1379570))))) (c!685365 (regex!6553 (rule!9517 (_1!23733 (get!13842 lt!1379570)))))))))

(declare-fun b!3946371 () Bool)

(declare-fun derivativeStep!3460 (Regex!11458 C!23102) Regex!11458)

(assert (=> b!3946371 (= e!2442023 (matchR!5503 (derivativeStep!3460 (regex!6553 (rule!9517 (_1!23733 (get!13842 lt!1379570)))) (head!8382 (list!15567 (charsOf!4371 (_1!23733 (get!13842 lt!1379570)))))) (tail!6108 (list!15567 (charsOf!4371 (_1!23733 (get!13842 lt!1379570)))))))))

(declare-fun bm!285147 () Bool)

(assert (=> bm!285147 (= call!285152 (isEmpty!25014 (list!15567 (charsOf!4371 (_1!23733 (get!13842 lt!1379570))))))))

(declare-fun b!3946372 () Bool)

(assert (=> b!3946372 (= e!2442020 (= lt!1379687 call!285152))))

(declare-fun b!3946373 () Bool)

(assert (=> b!3946373 (= e!2442019 (not (= (head!8382 (list!15567 (charsOf!4371 (_1!23733 (get!13842 lt!1379570))))) (c!685365 (regex!6553 (rule!9517 (_1!23733 (get!13842 lt!1379570))))))))))

(declare-fun b!3946374 () Bool)

(declare-fun res!1596862 () Bool)

(assert (=> b!3946374 (=> (not res!1596862) (not e!2442022))))

(assert (=> b!3946374 (= res!1596862 (isEmpty!25014 (tail!6108 (list!15567 (charsOf!4371 (_1!23733 (get!13842 lt!1379570)))))))))

(declare-fun b!3946375 () Bool)

(declare-fun res!1596861 () Bool)

(assert (=> b!3946375 (=> res!1596861 e!2442021)))

(assert (=> b!3946375 (= res!1596861 e!2442022)))

(declare-fun res!1596863 () Bool)

(assert (=> b!3946375 (=> (not res!1596863) (not e!2442022))))

(assert (=> b!3946375 (= res!1596863 lt!1379687)))

(declare-fun b!3946376 () Bool)

(assert (=> b!3946376 (= e!2442021 e!2442025)))

(declare-fun res!1596864 () Bool)

(assert (=> b!3946376 (=> (not res!1596864) (not e!2442025))))

(assert (=> b!3946376 (= res!1596864 (not lt!1379687))))

(declare-fun d!1170648 () Bool)

(assert (=> d!1170648 e!2442020))

(declare-fun c!685464 () Bool)

(assert (=> d!1170648 (= c!685464 (is-EmptyExpr!11458 (regex!6553 (rule!9517 (_1!23733 (get!13842 lt!1379570))))))))

(assert (=> d!1170648 (= lt!1379687 e!2442023)))

(declare-fun c!685463 () Bool)

(assert (=> d!1170648 (= c!685463 (isEmpty!25014 (list!15567 (charsOf!4371 (_1!23733 (get!13842 lt!1379570))))))))

(assert (=> d!1170648 (validRegex!5219 (regex!6553 (rule!9517 (_1!23733 (get!13842 lt!1379570)))))))

(assert (=> d!1170648 (= (matchR!5503 (regex!6553 (rule!9517 (_1!23733 (get!13842 lt!1379570)))) (list!15567 (charsOf!4371 (_1!23733 (get!13842 lt!1379570))))) lt!1379687)))

(declare-fun b!3946369 () Bool)

(declare-fun res!1596860 () Bool)

(assert (=> b!3946369 (=> (not res!1596860) (not e!2442022))))

(assert (=> b!3946369 (= res!1596860 (not call!285152))))

(assert (= (and d!1170648 c!685463) b!3946366))

(assert (= (and d!1170648 (not c!685463)) b!3946371))

(assert (= (and d!1170648 c!685464) b!3946372))

(assert (= (and d!1170648 (not c!685464)) b!3946368))

(assert (= (and b!3946368 c!685465) b!3946364))

(assert (= (and b!3946368 (not c!685465)) b!3946367))

(assert (= (and b!3946367 (not res!1596867)) b!3946375))

(assert (= (and b!3946375 res!1596863) b!3946369))

(assert (= (and b!3946369 res!1596860) b!3946374))

(assert (= (and b!3946374 res!1596862) b!3946370))

(assert (= (and b!3946375 (not res!1596861)) b!3946376))

(assert (= (and b!3946376 res!1596864) b!3946363))

(assert (= (and b!3946363 (not res!1596865)) b!3946365))

(assert (= (and b!3946365 (not res!1596866)) b!3946373))

(assert (= (or b!3946372 b!3946363 b!3946369) bm!285147))

(assert (=> d!1170648 m!4514627))

(declare-fun m!4515193 () Bool)

(assert (=> d!1170648 m!4515193))

(declare-fun m!4515195 () Bool)

(assert (=> d!1170648 m!4515195))

(assert (=> bm!285147 m!4514627))

(assert (=> bm!285147 m!4515193))

(assert (=> b!3946371 m!4514627))

(declare-fun m!4515197 () Bool)

(assert (=> b!3946371 m!4515197))

(assert (=> b!3946371 m!4515197))

(declare-fun m!4515199 () Bool)

(assert (=> b!3946371 m!4515199))

(assert (=> b!3946371 m!4514627))

(declare-fun m!4515201 () Bool)

(assert (=> b!3946371 m!4515201))

(assert (=> b!3946371 m!4515199))

(assert (=> b!3946371 m!4515201))

(declare-fun m!4515203 () Bool)

(assert (=> b!3946371 m!4515203))

(assert (=> b!3946374 m!4514627))

(assert (=> b!3946374 m!4515201))

(assert (=> b!3946374 m!4515201))

(declare-fun m!4515205 () Bool)

(assert (=> b!3946374 m!4515205))

(declare-fun m!4515207 () Bool)

(assert (=> b!3946366 m!4515207))

(assert (=> b!3946370 m!4514627))

(assert (=> b!3946370 m!4515197))

(assert (=> b!3946365 m!4514627))

(assert (=> b!3946365 m!4515201))

(assert (=> b!3946365 m!4515201))

(assert (=> b!3946365 m!4515205))

(assert (=> b!3946373 m!4514627))

(assert (=> b!3946373 m!4515197))

(assert (=> b!3945864 d!1170648))

(assert (=> b!3945864 d!1170564))

(declare-fun d!1170650 () Bool)

(assert (=> d!1170650 (= (list!15567 (charsOf!4371 (_1!23733 (get!13842 lt!1379570)))) (list!15569 (c!685366 (charsOf!4371 (_1!23733 (get!13842 lt!1379570))))))))

(declare-fun bs!586885 () Bool)

(assert (= bs!586885 d!1170650))

(declare-fun m!4515209 () Bool)

(assert (=> bs!586885 m!4515209))

(assert (=> b!3945864 d!1170650))

(declare-fun d!1170652 () Bool)

(declare-fun lt!1379688 () BalanceConc!25122)

(assert (=> d!1170652 (= (list!15567 lt!1379688) (originalCharacters!7153 (_1!23733 (get!13842 lt!1379570))))))

(assert (=> d!1170652 (= lt!1379688 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (_1!23733 (get!13842 lt!1379570))))) (value!207396 (_1!23733 (get!13842 lt!1379570)))))))

(assert (=> d!1170652 (= (charsOf!4371 (_1!23733 (get!13842 lt!1379570))) lt!1379688)))

(declare-fun b_lambda!115431 () Bool)

(assert (=> (not b_lambda!115431) (not d!1170652)))

(declare-fun t!327827 () Bool)

(declare-fun tb!237053 () Bool)

(assert (=> (and b!3945734 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80)))) (toChars!8884 (transformation!6553 (rule!9517 (_1!23733 (get!13842 lt!1379570)))))) t!327827) tb!237053))

(declare-fun b!3946377 () Bool)

(declare-fun e!2442026 () Bool)

(declare-fun tp!1201450 () Bool)

(assert (=> b!3946377 (= e!2442026 (and (inv!56137 (c!685366 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (_1!23733 (get!13842 lt!1379570))))) (value!207396 (_1!23733 (get!13842 lt!1379570)))))) tp!1201450))))

(declare-fun result!287118 () Bool)

(assert (=> tb!237053 (= result!287118 (and (inv!56138 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (_1!23733 (get!13842 lt!1379570))))) (value!207396 (_1!23733 (get!13842 lt!1379570))))) e!2442026))))

(assert (= tb!237053 b!3946377))

(declare-fun m!4515211 () Bool)

(assert (=> b!3946377 m!4515211))

(declare-fun m!4515213 () Bool)

(assert (=> tb!237053 m!4515213))

(assert (=> d!1170652 t!327827))

(declare-fun b_and!301967 () Bool)

(assert (= b_and!301961 (and (=> t!327827 result!287118) b_and!301967)))

(declare-fun tb!237055 () Bool)

(declare-fun t!327829 () Bool)

(assert (=> (and b!3946088 (= (toChars!8884 (transformation!6553 (h!47331 (t!327698 rules!2768)))) (toChars!8884 (transformation!6553 (rule!9517 (_1!23733 (get!13842 lt!1379570)))))) t!327829) tb!237055))

(declare-fun result!287120 () Bool)

(assert (= result!287120 result!287118))

(assert (=> d!1170652 t!327829))

(declare-fun b_and!301969 () Bool)

(assert (= b_and!301957 (and (=> t!327829 result!287120) b_and!301969)))

(declare-fun t!327831 () Bool)

(declare-fun tb!237057 () Bool)

(assert (=> (and b!3946057 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 prefixTokens!80))))) (toChars!8884 (transformation!6553 (rule!9517 (_1!23733 (get!13842 lt!1379570)))))) t!327831) tb!237057))

(declare-fun result!287122 () Bool)

(assert (= result!287122 result!287118))

(assert (=> d!1170652 t!327831))

(declare-fun b_and!301971 () Bool)

(assert (= b_and!301965 (and (=> t!327831 result!287122) b_and!301971)))

(declare-fun tb!237059 () Bool)

(declare-fun t!327833 () Bool)

(assert (=> (and b!3946092 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 suffixTokens!72))))) (toChars!8884 (transformation!6553 (rule!9517 (_1!23733 (get!13842 lt!1379570)))))) t!327833) tb!237059))

(declare-fun result!287124 () Bool)

(assert (= result!287124 result!287118))

(assert (=> d!1170652 t!327833))

(declare-fun b_and!301973 () Bool)

(assert (= b_and!301963 (and (=> t!327833 result!287124) b_and!301973)))

(declare-fun t!327835 () Bool)

(declare-fun tb!237061 () Bool)

(assert (=> (and b!3945751 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72)))) (toChars!8884 (transformation!6553 (rule!9517 (_1!23733 (get!13842 lt!1379570)))))) t!327835) tb!237061))

(declare-fun result!287126 () Bool)

(assert (= result!287126 result!287118))

(assert (=> d!1170652 t!327835))

(declare-fun b_and!301975 () Bool)

(assert (= b_and!301955 (and (=> t!327835 result!287126) b_and!301975)))

(declare-fun tb!237063 () Bool)

(declare-fun t!327837 () Bool)

(assert (=> (and b!3945733 (= (toChars!8884 (transformation!6553 (h!47331 rules!2768))) (toChars!8884 (transformation!6553 (rule!9517 (_1!23733 (get!13842 lt!1379570)))))) t!327837) tb!237063))

(declare-fun result!287128 () Bool)

(assert (= result!287128 result!287118))

(assert (=> d!1170652 t!327837))

(declare-fun b_and!301977 () Bool)

(assert (= b_and!301959 (and (=> t!327837 result!287128) b_and!301977)))

(declare-fun m!4515215 () Bool)

(assert (=> d!1170652 m!4515215))

(declare-fun m!4515217 () Bool)

(assert (=> d!1170652 m!4515217))

(assert (=> b!3945864 d!1170652))

(declare-fun d!1170654 () Bool)

(assert (=> d!1170654 (= (inv!15 (value!207396 (h!47332 prefixTokens!80))) (= (charsToBigInt!0 (text!47930 (value!207396 (h!47332 prefixTokens!80))) 0) (value!207391 (value!207396 (h!47332 prefixTokens!80)))))))

(declare-fun bs!586886 () Bool)

(assert (= bs!586886 d!1170654))

(declare-fun m!4515219 () Bool)

(assert (=> bs!586886 m!4515219))

(assert (=> b!3945905 d!1170654))

(declare-fun d!1170656 () Bool)

(assert (=> d!1170656 (= (isEmpty!25014 (originalCharacters!7153 (h!47332 suffixTokens!72))) (is-Nil!41910 (originalCharacters!7153 (h!47332 suffixTokens!72))))))

(assert (=> d!1170454 d!1170656))

(declare-fun d!1170658 () Bool)

(declare-fun c!685466 () Bool)

(assert (=> d!1170658 (= c!685466 (is-Nil!41910 lt!1379616))))

(declare-fun e!2442027 () (Set C!23102))

(assert (=> d!1170658 (= (content!6344 lt!1379616) e!2442027)))

(declare-fun b!3946378 () Bool)

(assert (=> b!3946378 (= e!2442027 (as set.empty (Set C!23102)))))

(declare-fun b!3946379 () Bool)

(assert (=> b!3946379 (= e!2442027 (set.union (set.insert (h!47330 lt!1379616) (as set.empty (Set C!23102))) (content!6344 (t!327697 lt!1379616))))))

(assert (= (and d!1170658 c!685466) b!3946378))

(assert (= (and d!1170658 (not c!685466)) b!3946379))

(declare-fun m!4515221 () Bool)

(assert (=> b!3946379 m!4515221))

(declare-fun m!4515223 () Bool)

(assert (=> b!3946379 m!4515223))

(assert (=> d!1170510 d!1170658))

(declare-fun d!1170660 () Bool)

(declare-fun c!685467 () Bool)

(assert (=> d!1170660 (= c!685467 (is-Nil!41910 prefix!426))))

(declare-fun e!2442028 () (Set C!23102))

(assert (=> d!1170660 (= (content!6344 prefix!426) e!2442028)))

(declare-fun b!3946380 () Bool)

(assert (=> b!3946380 (= e!2442028 (as set.empty (Set C!23102)))))

(declare-fun b!3946381 () Bool)

(assert (=> b!3946381 (= e!2442028 (set.union (set.insert (h!47330 prefix!426) (as set.empty (Set C!23102))) (content!6344 (t!327697 prefix!426))))))

(assert (= (and d!1170660 c!685467) b!3946380))

(assert (= (and d!1170660 (not c!685467)) b!3946381))

(declare-fun m!4515225 () Bool)

(assert (=> b!3946381 m!4515225))

(declare-fun m!4515227 () Bool)

(assert (=> b!3946381 m!4515227))

(assert (=> d!1170510 d!1170660))

(declare-fun d!1170662 () Bool)

(declare-fun c!685468 () Bool)

(assert (=> d!1170662 (= c!685468 (is-Nil!41910 suffix!1176))))

(declare-fun e!2442029 () (Set C!23102))

(assert (=> d!1170662 (= (content!6344 suffix!1176) e!2442029)))

(declare-fun b!3946382 () Bool)

(assert (=> b!3946382 (= e!2442029 (as set.empty (Set C!23102)))))

(declare-fun b!3946383 () Bool)

(assert (=> b!3946383 (= e!2442029 (set.union (set.insert (h!47330 suffix!1176) (as set.empty (Set C!23102))) (content!6344 (t!327697 suffix!1176))))))

(assert (= (and d!1170662 c!685468) b!3946382))

(assert (= (and d!1170662 (not c!685468)) b!3946383))

(declare-fun m!4515229 () Bool)

(assert (=> b!3946383 m!4515229))

(declare-fun m!4515231 () Bool)

(assert (=> b!3946383 m!4515231))

(assert (=> d!1170510 d!1170662))

(declare-fun d!1170664 () Bool)

(declare-fun isBalanced!3648 (Conc!12764) Bool)

(assert (=> d!1170664 (= (inv!56138 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72)))) (value!207396 (h!47332 suffixTokens!72)))) (isBalanced!3648 (c!685366 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72)))) (value!207396 (h!47332 suffixTokens!72))))))))

(declare-fun bs!586887 () Bool)

(assert (= bs!586887 d!1170664))

(declare-fun m!4515233 () Bool)

(assert (=> bs!586887 m!4515233))

(assert (=> tb!236943 d!1170664))

(declare-fun d!1170666 () Bool)

(declare-fun lt!1379689 () Int)

(assert (=> d!1170666 (>= lt!1379689 0)))

(declare-fun e!2442030 () Int)

(assert (=> d!1170666 (= lt!1379689 e!2442030)))

(declare-fun c!685469 () Bool)

(assert (=> d!1170666 (= c!685469 (is-Nil!41910 (_2!23734 lt!1379611)))))

(assert (=> d!1170666 (= (size!31428 (_2!23734 lt!1379611)) lt!1379689)))

(declare-fun b!3946384 () Bool)

(assert (=> b!3946384 (= e!2442030 0)))

(declare-fun b!3946385 () Bool)

(assert (=> b!3946385 (= e!2442030 (+ 1 (size!31428 (t!327697 (_2!23734 lt!1379611)))))))

(assert (= (and d!1170666 c!685469) b!3946384))

(assert (= (and d!1170666 (not c!685469)) b!3946385))

(declare-fun m!4515235 () Bool)

(assert (=> b!3946385 m!4515235))

(assert (=> b!3946001 d!1170666))

(declare-fun d!1170668 () Bool)

(declare-fun lt!1379690 () Int)

(assert (=> d!1170668 (>= lt!1379690 0)))

(declare-fun e!2442031 () Int)

(assert (=> d!1170668 (= lt!1379690 e!2442031)))

(declare-fun c!685470 () Bool)

(assert (=> d!1170668 (= c!685470 (is-Nil!41910 lt!1379523))))

(assert (=> d!1170668 (= (size!31428 lt!1379523) lt!1379690)))

(declare-fun b!3946386 () Bool)

(assert (=> b!3946386 (= e!2442031 0)))

(declare-fun b!3946387 () Bool)

(assert (=> b!3946387 (= e!2442031 (+ 1 (size!31428 (t!327697 lt!1379523))))))

(assert (= (and d!1170668 c!685470) b!3946386))

(assert (= (and d!1170668 (not c!685470)) b!3946387))

(declare-fun m!4515237 () Bool)

(assert (=> b!3946387 m!4515237))

(assert (=> b!3946001 d!1170668))

(declare-fun b!3946388 () Bool)

(declare-fun e!2442034 () Bool)

(declare-fun e!2442032 () Bool)

(assert (=> b!3946388 (= e!2442034 e!2442032)))

(declare-fun c!685471 () Bool)

(assert (=> b!3946388 (= c!685471 (is-IntegerValue!20350 (value!207396 (h!47332 (t!327699 prefixTokens!80)))))))

(declare-fun b!3946389 () Bool)

(declare-fun res!1596868 () Bool)

(declare-fun e!2442033 () Bool)

(assert (=> b!3946389 (=> res!1596868 e!2442033)))

(assert (=> b!3946389 (= res!1596868 (not (is-IntegerValue!20351 (value!207396 (h!47332 (t!327699 prefixTokens!80))))))))

(assert (=> b!3946389 (= e!2442032 e!2442033)))

(declare-fun b!3946390 () Bool)

(assert (=> b!3946390 (= e!2442034 (inv!16 (value!207396 (h!47332 (t!327699 prefixTokens!80)))))))

(declare-fun b!3946391 () Bool)

(assert (=> b!3946391 (= e!2442032 (inv!17 (value!207396 (h!47332 (t!327699 prefixTokens!80)))))))

(declare-fun b!3946392 () Bool)

(assert (=> b!3946392 (= e!2442033 (inv!15 (value!207396 (h!47332 (t!327699 prefixTokens!80)))))))

(declare-fun d!1170670 () Bool)

(declare-fun c!685472 () Bool)

(assert (=> d!1170670 (= c!685472 (is-IntegerValue!20349 (value!207396 (h!47332 (t!327699 prefixTokens!80)))))))

(assert (=> d!1170670 (= (inv!21 (value!207396 (h!47332 (t!327699 prefixTokens!80)))) e!2442034)))

(assert (= (and d!1170670 c!685472) b!3946390))

(assert (= (and d!1170670 (not c!685472)) b!3946388))

(assert (= (and b!3946388 c!685471) b!3946391))

(assert (= (and b!3946388 (not c!685471)) b!3946389))

(assert (= (and b!3946389 (not res!1596868)) b!3946392))

(declare-fun m!4515239 () Bool)

(assert (=> b!3946390 m!4515239))

(declare-fun m!4515241 () Bool)

(assert (=> b!3946391 m!4515241))

(declare-fun m!4515243 () Bool)

(assert (=> b!3946392 m!4515243))

(assert (=> b!3946055 d!1170670))

(declare-fun d!1170672 () Bool)

(declare-fun charsToInt!0 (List!42033) (_ BitVec 32))

(assert (=> d!1170672 (= (inv!16 (value!207396 (h!47332 prefixTokens!80))) (= (charsToInt!0 (text!47928 (value!207396 (h!47332 prefixTokens!80)))) (value!207387 (value!207396 (h!47332 prefixTokens!80)))))))

(declare-fun bs!586888 () Bool)

(assert (= bs!586888 d!1170672))

(declare-fun m!4515245 () Bool)

(assert (=> bs!586888 m!4515245))

(assert (=> b!3945903 d!1170672))

(declare-fun d!1170674 () Bool)

(declare-fun lt!1379691 () List!42034)

(assert (=> d!1170674 (= (++!10863 (t!327697 lt!1379518) lt!1379691) (tail!6108 lt!1379523))))

(declare-fun e!2442035 () List!42034)

(assert (=> d!1170674 (= lt!1379691 e!2442035)))

(declare-fun c!685473 () Bool)

(assert (=> d!1170674 (= c!685473 (is-Cons!41910 (t!327697 lt!1379518)))))

(assert (=> d!1170674 (>= (size!31428 (tail!6108 lt!1379523)) (size!31428 (t!327697 lt!1379518)))))

(assert (=> d!1170674 (= (getSuffix!2093 (tail!6108 lt!1379523) (t!327697 lt!1379518)) lt!1379691)))

(declare-fun b!3946393 () Bool)

(assert (=> b!3946393 (= e!2442035 (getSuffix!2093 (tail!6108 (tail!6108 lt!1379523)) (t!327697 (t!327697 lt!1379518))))))

(declare-fun b!3946394 () Bool)

(assert (=> b!3946394 (= e!2442035 (tail!6108 lt!1379523))))

(assert (= (and d!1170674 c!685473) b!3946393))

(assert (= (and d!1170674 (not c!685473)) b!3946394))

(declare-fun m!4515247 () Bool)

(assert (=> d!1170674 m!4515247))

(assert (=> d!1170674 m!4514761))

(declare-fun m!4515249 () Bool)

(assert (=> d!1170674 m!4515249))

(assert (=> d!1170674 m!4515109))

(assert (=> b!3946393 m!4514761))

(declare-fun m!4515251 () Bool)

(assert (=> b!3946393 m!4515251))

(assert (=> b!3946393 m!4515251))

(declare-fun m!4515253 () Bool)

(assert (=> b!3946393 m!4515253))

(assert (=> b!3945952 d!1170674))

(declare-fun d!1170676 () Bool)

(assert (=> d!1170676 (= (tail!6108 lt!1379523) (t!327697 lt!1379523))))

(assert (=> b!3945952 d!1170676))

(declare-fun d!1170678 () Bool)

(declare-fun e!2442037 () Bool)

(assert (=> d!1170678 e!2442037))

(declare-fun res!1596870 () Bool)

(assert (=> d!1170678 (=> (not res!1596870) (not e!2442037))))

(declare-fun lt!1379692 () List!42034)

(assert (=> d!1170678 (= res!1596870 (= (content!6344 lt!1379692) (set.union (content!6344 (t!327697 prefix!426)) (content!6344 suffix!1176))))))

(declare-fun e!2442036 () List!42034)

(assert (=> d!1170678 (= lt!1379692 e!2442036)))

(declare-fun c!685474 () Bool)

(assert (=> d!1170678 (= c!685474 (is-Nil!41910 (t!327697 prefix!426)))))

(assert (=> d!1170678 (= (++!10863 (t!327697 prefix!426) suffix!1176) lt!1379692)))

(declare-fun b!3946395 () Bool)

(assert (=> b!3946395 (= e!2442036 suffix!1176)))

(declare-fun b!3946398 () Bool)

(assert (=> b!3946398 (= e!2442037 (or (not (= suffix!1176 Nil!41910)) (= lt!1379692 (t!327697 prefix!426))))))

(declare-fun b!3946396 () Bool)

(assert (=> b!3946396 (= e!2442036 (Cons!41910 (h!47330 (t!327697 prefix!426)) (++!10863 (t!327697 (t!327697 prefix!426)) suffix!1176)))))

(declare-fun b!3946397 () Bool)

(declare-fun res!1596869 () Bool)

(assert (=> b!3946397 (=> (not res!1596869) (not e!2442037))))

(assert (=> b!3946397 (= res!1596869 (= (size!31428 lt!1379692) (+ (size!31428 (t!327697 prefix!426)) (size!31428 suffix!1176))))))

(assert (= (and d!1170678 c!685474) b!3946395))

(assert (= (and d!1170678 (not c!685474)) b!3946396))

(assert (= (and d!1170678 res!1596870) b!3946397))

(assert (= (and b!3946397 res!1596869) b!3946398))

(declare-fun m!4515255 () Bool)

(assert (=> d!1170678 m!4515255))

(assert (=> d!1170678 m!4515227))

(assert (=> d!1170678 m!4514845))

(declare-fun m!4515257 () Bool)

(assert (=> b!3946396 m!4515257))

(declare-fun m!4515259 () Bool)

(assert (=> b!3946397 m!4515259))

(assert (=> b!3946397 m!4515157))

(assert (=> b!3946397 m!4514853))

(assert (=> b!3946022 d!1170678))

(declare-fun b!3946417 () Bool)

(declare-fun res!1596884 () Bool)

(declare-fun e!2442058 () Bool)

(assert (=> b!3946417 (=> (not res!1596884) (not e!2442058))))

(declare-fun call!285161 () Bool)

(assert (=> b!3946417 (= res!1596884 call!285161)))

(declare-fun e!2442055 () Bool)

(assert (=> b!3946417 (= e!2442055 e!2442058)))

(declare-fun b!3946418 () Bool)

(declare-fun e!2442053 () Bool)

(declare-fun e!2442052 () Bool)

(assert (=> b!3946418 (= e!2442053 e!2442052)))

(declare-fun res!1596881 () Bool)

(assert (=> b!3946418 (=> (not res!1596881) (not e!2442052))))

(declare-fun call!285160 () Bool)

(assert (=> b!3946418 (= res!1596881 call!285160)))

(declare-fun b!3946419 () Bool)

(declare-fun e!2442054 () Bool)

(declare-fun e!2442057 () Bool)

(assert (=> b!3946419 (= e!2442054 e!2442057)))

(declare-fun res!1596883 () Bool)

(assert (=> b!3946419 (= res!1596883 (not (nullable!4020 (reg!11787 (regex!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))))))))

(assert (=> b!3946419 (=> (not res!1596883) (not e!2442057))))

(declare-fun bm!285154 () Bool)

(declare-fun c!685479 () Bool)

(assert (=> bm!285154 (= call!285160 (validRegex!5219 (ite c!685479 (regTwo!23429 (regex!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))) (regOne!23428 (regex!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))))))))

(declare-fun b!3946420 () Bool)

(assert (=> b!3946420 (= e!2442054 e!2442055)))

(assert (=> b!3946420 (= c!685479 (is-Union!11458 (regex!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))))))

(declare-fun c!685480 () Bool)

(declare-fun call!285159 () Bool)

(declare-fun bm!285155 () Bool)

(assert (=> bm!285155 (= call!285159 (validRegex!5219 (ite c!685480 (reg!11787 (regex!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))) (ite c!685479 (regOne!23429 (regex!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))) (regTwo!23428 (regex!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525)))))))))))

(declare-fun b!3946421 () Bool)

(assert (=> b!3946421 (= e!2442052 call!285161)))

(declare-fun b!3946422 () Bool)

(declare-fun res!1596882 () Bool)

(assert (=> b!3946422 (=> res!1596882 e!2442053)))

(assert (=> b!3946422 (= res!1596882 (not (is-Concat!18242 (regex!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525)))))))))

(assert (=> b!3946422 (= e!2442055 e!2442053)))

(declare-fun b!3946423 () Bool)

(declare-fun e!2442056 () Bool)

(assert (=> b!3946423 (= e!2442056 e!2442054)))

(assert (=> b!3946423 (= c!685480 (is-Star!11458 (regex!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))))))

(declare-fun d!1170680 () Bool)

(declare-fun res!1596885 () Bool)

(assert (=> d!1170680 (=> res!1596885 e!2442056)))

(assert (=> d!1170680 (= res!1596885 (is-ElementMatch!11458 (regex!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))))))

(assert (=> d!1170680 (= (validRegex!5219 (regex!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))) e!2442056)))

(declare-fun b!3946424 () Bool)

(assert (=> b!3946424 (= e!2442057 call!285159)))

(declare-fun bm!285156 () Bool)

(assert (=> bm!285156 (= call!285161 call!285159)))

(declare-fun b!3946425 () Bool)

(assert (=> b!3946425 (= e!2442058 call!285160)))

(assert (= (and d!1170680 (not res!1596885)) b!3946423))

(assert (= (and b!3946423 c!685480) b!3946419))

(assert (= (and b!3946423 (not c!685480)) b!3946420))

(assert (= (and b!3946419 res!1596883) b!3946424))

(assert (= (and b!3946420 c!685479) b!3946417))

(assert (= (and b!3946420 (not c!685479)) b!3946422))

(assert (= (and b!3946417 res!1596884) b!3946425))

(assert (= (and b!3946422 (not res!1596882)) b!3946418))

(assert (= (and b!3946418 res!1596881) b!3946421))

(assert (= (or b!3946425 b!3946418) bm!285154))

(assert (= (or b!3946417 b!3946421) bm!285156))

(assert (= (or b!3946424 bm!285156) bm!285155))

(declare-fun m!4515261 () Bool)

(assert (=> b!3946419 m!4515261))

(declare-fun m!4515263 () Bool)

(assert (=> bm!285154 m!4515263))

(declare-fun m!4515265 () Bool)

(assert (=> bm!285155 m!4515265))

(assert (=> d!1170488 d!1170680))

(declare-fun d!1170682 () Bool)

(declare-fun e!2442070 () Bool)

(assert (=> d!1170682 e!2442070))

(declare-fun res!1596906 () Bool)

(assert (=> d!1170682 (=> res!1596906 e!2442070)))

(declare-fun lt!1379708 () Option!8973)

(assert (=> d!1170682 (= res!1596906 (isEmpty!25019 lt!1379708))))

(declare-fun e!2442072 () Option!8973)

(assert (=> d!1170682 (= lt!1379708 e!2442072)))

(declare-fun c!685484 () Bool)

(declare-datatypes ((tuple2!41206 0))(
  ( (tuple2!41207 (_1!23737 List!42034) (_2!23737 List!42034)) )
))
(declare-fun lt!1379709 () tuple2!41206)

(assert (=> d!1170682 (= c!685484 (isEmpty!25014 (_1!23737 lt!1379709)))))

(declare-fun findLongestMatch!1192 (Regex!11458 List!42034) tuple2!41206)

(assert (=> d!1170682 (= lt!1379709 (findLongestMatch!1192 (regex!6553 (h!47331 rules!2768)) lt!1379523))))

(assert (=> d!1170682 (ruleValid!2495 thiss!20629 (h!47331 rules!2768))))

(assert (=> d!1170682 (= (maxPrefixOneRule!2508 thiss!20629 (h!47331 rules!2768) lt!1379523) lt!1379708)))

(declare-fun b!3946449 () Bool)

(declare-fun res!1596908 () Bool)

(declare-fun e!2442073 () Bool)

(assert (=> b!3946449 (=> (not res!1596908) (not e!2442073))))

(assert (=> b!3946449 (= res!1596908 (< (size!31428 (_2!23733 (get!13842 lt!1379708))) (size!31428 lt!1379523)))))

(declare-fun b!3946450 () Bool)

(declare-fun e!2442071 () Bool)

(declare-fun findLongestMatchInner!1279 (Regex!11458 List!42034 Int List!42034 List!42034 Int) tuple2!41206)

(assert (=> b!3946450 (= e!2442071 (matchR!5503 (regex!6553 (h!47331 rules!2768)) (_1!23737 (findLongestMatchInner!1279 (regex!6553 (h!47331 rules!2768)) Nil!41910 (size!31428 Nil!41910) lt!1379523 lt!1379523 (size!31428 lt!1379523)))))))

(declare-fun b!3946451 () Bool)

(assert (=> b!3946451 (= e!2442072 None!8972)))

(declare-fun b!3946452 () Bool)

(assert (=> b!3946452 (= e!2442070 e!2442073)))

(declare-fun res!1596907 () Bool)

(assert (=> b!3946452 (=> (not res!1596907) (not e!2442073))))

(assert (=> b!3946452 (= res!1596907 (matchR!5503 (regex!6553 (h!47331 rules!2768)) (list!15567 (charsOf!4371 (_1!23733 (get!13842 lt!1379708))))))))

(declare-fun b!3946453 () Bool)

(declare-fun res!1596905 () Bool)

(assert (=> b!3946453 (=> (not res!1596905) (not e!2442073))))

(assert (=> b!3946453 (= res!1596905 (= (value!207396 (_1!23733 (get!13842 lt!1379708))) (apply!9784 (transformation!6553 (rule!9517 (_1!23733 (get!13842 lt!1379708)))) (seqFromList!4812 (originalCharacters!7153 (_1!23733 (get!13842 lt!1379708)))))))))

(declare-fun b!3946454 () Bool)

(declare-fun res!1596904 () Bool)

(assert (=> b!3946454 (=> (not res!1596904) (not e!2442073))))

(assert (=> b!3946454 (= res!1596904 (= (++!10863 (list!15567 (charsOf!4371 (_1!23733 (get!13842 lt!1379708)))) (_2!23733 (get!13842 lt!1379708))) lt!1379523))))

(declare-fun b!3946455 () Bool)

(declare-fun res!1596902 () Bool)

(assert (=> b!3946455 (=> (not res!1596902) (not e!2442073))))

(assert (=> b!3946455 (= res!1596902 (= (rule!9517 (_1!23733 (get!13842 lt!1379708))) (h!47331 rules!2768)))))

(declare-fun b!3946456 () Bool)

(declare-fun size!31432 (BalanceConc!25122) Int)

(assert (=> b!3946456 (= e!2442072 (Some!8972 (tuple2!41199 (Token!12245 (apply!9784 (transformation!6553 (h!47331 rules!2768)) (seqFromList!4812 (_1!23737 lt!1379709))) (h!47331 rules!2768) (size!31432 (seqFromList!4812 (_1!23737 lt!1379709))) (_1!23737 lt!1379709)) (_2!23737 lt!1379709))))))

(declare-fun lt!1379707 () Unit!60447)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1252 (Regex!11458 List!42034) Unit!60447)

(assert (=> b!3946456 (= lt!1379707 (longestMatchIsAcceptedByMatchOrIsEmpty!1252 (regex!6553 (h!47331 rules!2768)) lt!1379523))))

(declare-fun res!1596903 () Bool)

(assert (=> b!3946456 (= res!1596903 (isEmpty!25014 (_1!23737 (findLongestMatchInner!1279 (regex!6553 (h!47331 rules!2768)) Nil!41910 (size!31428 Nil!41910) lt!1379523 lt!1379523 (size!31428 lt!1379523)))))))

(assert (=> b!3946456 (=> res!1596903 e!2442071)))

(assert (=> b!3946456 e!2442071))

(declare-fun lt!1379706 () Unit!60447)

(assert (=> b!3946456 (= lt!1379706 lt!1379707)))

(declare-fun lt!1379705 () Unit!60447)

(declare-fun lemmaSemiInverse!1785 (TokenValueInjection!12994 BalanceConc!25122) Unit!60447)

(assert (=> b!3946456 (= lt!1379705 (lemmaSemiInverse!1785 (transformation!6553 (h!47331 rules!2768)) (seqFromList!4812 (_1!23737 lt!1379709))))))

(declare-fun b!3946457 () Bool)

(assert (=> b!3946457 (= e!2442073 (= (size!31426 (_1!23733 (get!13842 lt!1379708))) (size!31428 (originalCharacters!7153 (_1!23733 (get!13842 lt!1379708))))))))

(assert (= (and d!1170682 c!685484) b!3946451))

(assert (= (and d!1170682 (not c!685484)) b!3946456))

(assert (= (and b!3946456 (not res!1596903)) b!3946450))

(assert (= (and d!1170682 (not res!1596906)) b!3946452))

(assert (= (and b!3946452 res!1596907) b!3946454))

(assert (= (and b!3946454 res!1596904) b!3946449))

(assert (= (and b!3946449 res!1596908) b!3946455))

(assert (= (and b!3946455 res!1596902) b!3946453))

(assert (= (and b!3946453 res!1596905) b!3946457))

(declare-fun m!4515287 () Bool)

(assert (=> b!3946457 m!4515287))

(declare-fun m!4515289 () Bool)

(assert (=> b!3946457 m!4515289))

(assert (=> b!3946454 m!4515287))

(declare-fun m!4515291 () Bool)

(assert (=> b!3946454 m!4515291))

(assert (=> b!3946454 m!4515291))

(declare-fun m!4515293 () Bool)

(assert (=> b!3946454 m!4515293))

(assert (=> b!3946454 m!4515293))

(declare-fun m!4515295 () Bool)

(assert (=> b!3946454 m!4515295))

(assert (=> b!3946453 m!4515287))

(declare-fun m!4515297 () Bool)

(assert (=> b!3946453 m!4515297))

(assert (=> b!3946453 m!4515297))

(declare-fun m!4515299 () Bool)

(assert (=> b!3946453 m!4515299))

(declare-fun m!4515301 () Bool)

(assert (=> b!3946456 m!4515301))

(assert (=> b!3946456 m!4514647))

(declare-fun m!4515303 () Bool)

(assert (=> b!3946456 m!4515303))

(declare-fun m!4515305 () Bool)

(assert (=> b!3946456 m!4515305))

(declare-fun m!4515307 () Bool)

(assert (=> b!3946456 m!4515307))

(assert (=> b!3946456 m!4515303))

(declare-fun m!4515309 () Bool)

(assert (=> b!3946456 m!4515309))

(assert (=> b!3946456 m!4515301))

(assert (=> b!3946456 m!4514647))

(declare-fun m!4515311 () Bool)

(assert (=> b!3946456 m!4515311))

(assert (=> b!3946456 m!4515303))

(declare-fun m!4515313 () Bool)

(assert (=> b!3946456 m!4515313))

(assert (=> b!3946456 m!4515303))

(declare-fun m!4515315 () Bool)

(assert (=> b!3946456 m!4515315))

(assert (=> b!3946452 m!4515287))

(assert (=> b!3946452 m!4515291))

(assert (=> b!3946452 m!4515291))

(assert (=> b!3946452 m!4515293))

(assert (=> b!3946452 m!4515293))

(declare-fun m!4515317 () Bool)

(assert (=> b!3946452 m!4515317))

(assert (=> b!3946455 m!4515287))

(assert (=> b!3946449 m!4515287))

(declare-fun m!4515319 () Bool)

(assert (=> b!3946449 m!4515319))

(assert (=> b!3946449 m!4514647))

(declare-fun m!4515321 () Bool)

(assert (=> d!1170682 m!4515321))

(declare-fun m!4515323 () Bool)

(assert (=> d!1170682 m!4515323))

(declare-fun m!4515325 () Bool)

(assert (=> d!1170682 m!4515325))

(assert (=> d!1170682 m!4515173))

(assert (=> b!3946450 m!4515301))

(assert (=> b!3946450 m!4514647))

(assert (=> b!3946450 m!4515301))

(assert (=> b!3946450 m!4514647))

(assert (=> b!3946450 m!4515311))

(declare-fun m!4515327 () Bool)

(assert (=> b!3946450 m!4515327))

(assert (=> bm!285140 d!1170682))

(declare-fun d!1170694 () Bool)

(declare-fun lt!1379710 () Int)

(assert (=> d!1170694 (>= lt!1379710 0)))

(declare-fun e!2442074 () Int)

(assert (=> d!1170694 (= lt!1379710 e!2442074)))

(declare-fun c!685485 () Bool)

(assert (=> d!1170694 (= c!685485 (is-Nil!41910 (_2!23734 lt!1379618)))))

(assert (=> d!1170694 (= (size!31428 (_2!23734 lt!1379618)) lt!1379710)))

(declare-fun b!3946458 () Bool)

(assert (=> b!3946458 (= e!2442074 0)))

(declare-fun b!3946459 () Bool)

(assert (=> b!3946459 (= e!2442074 (+ 1 (size!31428 (t!327697 (_2!23734 lt!1379618)))))))

(assert (= (and d!1170694 c!685485) b!3946458))

(assert (= (and d!1170694 (not c!685485)) b!3946459))

(declare-fun m!4515329 () Bool)

(assert (=> b!3946459 m!4515329))

(assert (=> b!3946029 d!1170694))

(assert (=> b!3946029 d!1170616))

(declare-fun b!3946460 () Bool)

(declare-fun e!2442077 () Bool)

(declare-fun e!2442075 () Bool)

(assert (=> b!3946460 (= e!2442077 e!2442075)))

(declare-fun c!685486 () Bool)

(assert (=> b!3946460 (= c!685486 (is-IntegerValue!20350 (dynLambda!17957 (toValue!9025 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))) (seqFromList!4812 lt!1379518))))))

(declare-fun b!3946461 () Bool)

(declare-fun res!1596909 () Bool)

(declare-fun e!2442076 () Bool)

(assert (=> b!3946461 (=> res!1596909 e!2442076)))

(assert (=> b!3946461 (= res!1596909 (not (is-IntegerValue!20351 (dynLambda!17957 (toValue!9025 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))) (seqFromList!4812 lt!1379518)))))))

(assert (=> b!3946461 (= e!2442075 e!2442076)))

(declare-fun b!3946462 () Bool)

(assert (=> b!3946462 (= e!2442077 (inv!16 (dynLambda!17957 (toValue!9025 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))) (seqFromList!4812 lt!1379518))))))

(declare-fun b!3946463 () Bool)

(assert (=> b!3946463 (= e!2442075 (inv!17 (dynLambda!17957 (toValue!9025 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))) (seqFromList!4812 lt!1379518))))))

(declare-fun b!3946464 () Bool)

(assert (=> b!3946464 (= e!2442076 (inv!15 (dynLambda!17957 (toValue!9025 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))) (seqFromList!4812 lt!1379518))))))

(declare-fun d!1170696 () Bool)

(declare-fun c!685487 () Bool)

(assert (=> d!1170696 (= c!685487 (is-IntegerValue!20349 (dynLambda!17957 (toValue!9025 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))) (seqFromList!4812 lt!1379518))))))

(assert (=> d!1170696 (= (inv!21 (dynLambda!17957 (toValue!9025 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))) (seqFromList!4812 lt!1379518))) e!2442077)))

(assert (= (and d!1170696 c!685487) b!3946462))

(assert (= (and d!1170696 (not c!685487)) b!3946460))

(assert (= (and b!3946460 c!685486) b!3946463))

(assert (= (and b!3946460 (not c!685486)) b!3946461))

(assert (= (and b!3946461 (not res!1596909)) b!3946464))

(declare-fun m!4515331 () Bool)

(assert (=> b!3946462 m!4515331))

(declare-fun m!4515333 () Bool)

(assert (=> b!3946463 m!4515333))

(declare-fun m!4515335 () Bool)

(assert (=> b!3946464 m!4515335))

(assert (=> tb!236957 d!1170696))

(declare-fun d!1170698 () Bool)

(declare-fun c!685488 () Bool)

(assert (=> d!1170698 (= c!685488 (is-Node!12764 (c!685366 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80)))) (value!207396 (h!47332 prefixTokens!80))))))))

(declare-fun e!2442078 () Bool)

(assert (=> d!1170698 (= (inv!56137 (c!685366 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80)))) (value!207396 (h!47332 prefixTokens!80))))) e!2442078)))

(declare-fun b!3946465 () Bool)

(assert (=> b!3946465 (= e!2442078 (inv!56141 (c!685366 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80)))) (value!207396 (h!47332 prefixTokens!80))))))))

(declare-fun b!3946466 () Bool)

(declare-fun e!2442079 () Bool)

(assert (=> b!3946466 (= e!2442078 e!2442079)))

(declare-fun res!1596910 () Bool)

(assert (=> b!3946466 (= res!1596910 (not (is-Leaf!19748 (c!685366 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80)))) (value!207396 (h!47332 prefixTokens!80)))))))))

(assert (=> b!3946466 (=> res!1596910 e!2442079)))

(declare-fun b!3946467 () Bool)

(assert (=> b!3946467 (= e!2442079 (inv!56142 (c!685366 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80)))) (value!207396 (h!47332 prefixTokens!80))))))))

(assert (= (and d!1170698 c!685488) b!3946465))

(assert (= (and d!1170698 (not c!685488)) b!3946466))

(assert (= (and b!3946466 (not res!1596910)) b!3946467))

(declare-fun m!4515337 () Bool)

(assert (=> b!3946465 m!4515337))

(declare-fun m!4515339 () Bool)

(assert (=> b!3946467 m!4515339))

(assert (=> b!3945832 d!1170698))

(declare-fun d!1170700 () Bool)

(declare-fun e!2442081 () Bool)

(assert (=> d!1170700 e!2442081))

(declare-fun res!1596912 () Bool)

(assert (=> d!1170700 (=> (not res!1596912) (not e!2442081))))

(declare-fun lt!1379711 () List!42034)

(assert (=> d!1170700 (= res!1596912 (= (content!6344 lt!1379711) (set.union (content!6344 (list!15567 (charsOf!4371 (_1!23733 (get!13842 lt!1379570))))) (content!6344 (_2!23733 (get!13842 lt!1379570))))))))

(declare-fun e!2442080 () List!42034)

(assert (=> d!1170700 (= lt!1379711 e!2442080)))

(declare-fun c!685489 () Bool)

(assert (=> d!1170700 (= c!685489 (is-Nil!41910 (list!15567 (charsOf!4371 (_1!23733 (get!13842 lt!1379570))))))))

(assert (=> d!1170700 (= (++!10863 (list!15567 (charsOf!4371 (_1!23733 (get!13842 lt!1379570)))) (_2!23733 (get!13842 lt!1379570))) lt!1379711)))

(declare-fun b!3946468 () Bool)

(assert (=> b!3946468 (= e!2442080 (_2!23733 (get!13842 lt!1379570)))))

(declare-fun b!3946471 () Bool)

(assert (=> b!3946471 (= e!2442081 (or (not (= (_2!23733 (get!13842 lt!1379570)) Nil!41910)) (= lt!1379711 (list!15567 (charsOf!4371 (_1!23733 (get!13842 lt!1379570)))))))))

(declare-fun b!3946469 () Bool)

(assert (=> b!3946469 (= e!2442080 (Cons!41910 (h!47330 (list!15567 (charsOf!4371 (_1!23733 (get!13842 lt!1379570))))) (++!10863 (t!327697 (list!15567 (charsOf!4371 (_1!23733 (get!13842 lt!1379570))))) (_2!23733 (get!13842 lt!1379570)))))))

(declare-fun b!3946470 () Bool)

(declare-fun res!1596911 () Bool)

(assert (=> b!3946470 (=> (not res!1596911) (not e!2442081))))

(assert (=> b!3946470 (= res!1596911 (= (size!31428 lt!1379711) (+ (size!31428 (list!15567 (charsOf!4371 (_1!23733 (get!13842 lt!1379570))))) (size!31428 (_2!23733 (get!13842 lt!1379570))))))))

(assert (= (and d!1170700 c!685489) b!3946468))

(assert (= (and d!1170700 (not c!685489)) b!3946469))

(assert (= (and d!1170700 res!1596912) b!3946470))

(assert (= (and b!3946470 res!1596911) b!3946471))

(declare-fun m!4515341 () Bool)

(assert (=> d!1170700 m!4515341))

(assert (=> d!1170700 m!4514627))

(declare-fun m!4515343 () Bool)

(assert (=> d!1170700 m!4515343))

(declare-fun m!4515345 () Bool)

(assert (=> d!1170700 m!4515345))

(declare-fun m!4515347 () Bool)

(assert (=> b!3946469 m!4515347))

(declare-fun m!4515349 () Bool)

(assert (=> b!3946470 m!4515349))

(assert (=> b!3946470 m!4514627))

(declare-fun m!4515351 () Bool)

(assert (=> b!3946470 m!4515351))

(assert (=> b!3946470 m!4514645))

(assert (=> b!3945868 d!1170700))

(assert (=> b!3945868 d!1170650))

(assert (=> b!3945868 d!1170652))

(assert (=> b!3945868 d!1170564))

(declare-fun d!1170702 () Bool)

(assert (=> d!1170702 (= (inv!56138 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))) (value!207396 (_1!23733 (v!39310 lt!1379525))))) (isBalanced!3648 (c!685366 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))) (value!207396 (_1!23733 (v!39310 lt!1379525)))))))))

(declare-fun bs!586890 () Bool)

(assert (= bs!586890 d!1170702))

(declare-fun m!4515353 () Bool)

(assert (=> bs!586890 m!4515353))

(assert (=> tb!236951 d!1170702))

(declare-fun d!1170704 () Bool)

(declare-fun res!1596917 () Bool)

(declare-fun e!2442086 () Bool)

(assert (=> d!1170704 (=> res!1596917 e!2442086)))

(assert (=> d!1170704 (= res!1596917 (is-Nil!41911 rules!2768))))

(assert (=> d!1170704 (= (noDuplicateTag!2559 thiss!20629 rules!2768 Nil!41917) e!2442086)))

(declare-fun b!3946476 () Bool)

(declare-fun e!2442087 () Bool)

(assert (=> b!3946476 (= e!2442086 e!2442087)))

(declare-fun res!1596918 () Bool)

(assert (=> b!3946476 (=> (not res!1596918) (not e!2442087))))

(declare-fun contains!8395 (List!42041 String!47635) Bool)

(assert (=> b!3946476 (= res!1596918 (not (contains!8395 Nil!41917 (tag!7413 (h!47331 rules!2768)))))))

(declare-fun b!3946477 () Bool)

(assert (=> b!3946477 (= e!2442087 (noDuplicateTag!2559 thiss!20629 (t!327698 rules!2768) (Cons!41917 (tag!7413 (h!47331 rules!2768)) Nil!41917)))))

(assert (= (and d!1170704 (not res!1596917)) b!3946476))

(assert (= (and b!3946476 res!1596918) b!3946477))

(declare-fun m!4515355 () Bool)

(assert (=> b!3946476 m!4515355))

(declare-fun m!4515357 () Bool)

(assert (=> b!3946477 m!4515357))

(assert (=> b!3945877 d!1170704))

(declare-fun d!1170706 () Bool)

(declare-fun lt!1379712 () Int)

(assert (=> d!1170706 (>= lt!1379712 0)))

(declare-fun e!2442088 () Int)

(assert (=> d!1170706 (= lt!1379712 e!2442088)))

(declare-fun c!685490 () Bool)

(assert (=> d!1170706 (= c!685490 (is-Nil!41910 (originalCharacters!7153 (h!47332 prefixTokens!80))))))

(assert (=> d!1170706 (= (size!31428 (originalCharacters!7153 (h!47332 prefixTokens!80))) lt!1379712)))

(declare-fun b!3946478 () Bool)

(assert (=> b!3946478 (= e!2442088 0)))

(declare-fun b!3946479 () Bool)

(assert (=> b!3946479 (= e!2442088 (+ 1 (size!31428 (t!327697 (originalCharacters!7153 (h!47332 prefixTokens!80))))))))

(assert (= (and d!1170706 c!685490) b!3946478))

(assert (= (and d!1170706 (not c!685490)) b!3946479))

(declare-fun m!4515359 () Bool)

(assert (=> b!3946479 m!4515359))

(assert (=> b!3945827 d!1170706))

(declare-fun d!1170708 () Bool)

(assert (=> d!1170708 (= (list!15567 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72)))) (value!207396 (h!47332 suffixTokens!72)))) (list!15569 (c!685366 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72)))) (value!207396 (h!47332 suffixTokens!72))))))))

(declare-fun bs!586891 () Bool)

(assert (= bs!586891 d!1170708))

(declare-fun m!4515361 () Bool)

(assert (=> bs!586891 m!4515361))

(assert (=> b!3945907 d!1170708))

(declare-fun d!1170710 () Bool)

(declare-fun lt!1379715 () Int)

(assert (=> d!1170710 (>= lt!1379715 0)))

(declare-fun e!2442091 () Int)

(assert (=> d!1170710 (= lt!1379715 e!2442091)))

(declare-fun c!685493 () Bool)

(assert (=> d!1170710 (= c!685493 (is-Nil!41912 lt!1379615))))

(assert (=> d!1170710 (= (size!31431 lt!1379615) lt!1379715)))

(declare-fun b!3946484 () Bool)

(assert (=> b!3946484 (= e!2442091 0)))

(declare-fun b!3946485 () Bool)

(assert (=> b!3946485 (= e!2442091 (+ 1 (size!31431 (t!327699 lt!1379615))))))

(assert (= (and d!1170710 c!685493) b!3946484))

(assert (= (and d!1170710 (not c!685493)) b!3946485))

(declare-fun m!4515363 () Bool)

(assert (=> b!3946485 m!4515363))

(assert (=> b!3946019 d!1170710))

(declare-fun d!1170712 () Bool)

(declare-fun lt!1379716 () Int)

(assert (=> d!1170712 (>= lt!1379716 0)))

(declare-fun e!2442092 () Int)

(assert (=> d!1170712 (= lt!1379716 e!2442092)))

(declare-fun c!685494 () Bool)

(assert (=> d!1170712 (= c!685494 (is-Nil!41912 prefixTokens!80))))

(assert (=> d!1170712 (= (size!31431 prefixTokens!80) lt!1379716)))

(declare-fun b!3946486 () Bool)

(assert (=> b!3946486 (= e!2442092 0)))

(declare-fun b!3946487 () Bool)

(assert (=> b!3946487 (= e!2442092 (+ 1 (size!31431 (t!327699 prefixTokens!80))))))

(assert (= (and d!1170712 c!685494) b!3946486))

(assert (= (and d!1170712 (not c!685494)) b!3946487))

(assert (=> b!3946487 m!4515103))

(assert (=> b!3946019 d!1170712))

(declare-fun d!1170714 () Bool)

(declare-fun lt!1379717 () Int)

(assert (=> d!1170714 (>= lt!1379717 0)))

(declare-fun e!2442093 () Int)

(assert (=> d!1170714 (= lt!1379717 e!2442093)))

(declare-fun c!685495 () Bool)

(assert (=> d!1170714 (= c!685495 (is-Nil!41912 suffixTokens!72))))

(assert (=> d!1170714 (= (size!31431 suffixTokens!72) lt!1379717)))

(declare-fun b!3946488 () Bool)

(assert (=> b!3946488 (= e!2442093 0)))

(declare-fun b!3946489 () Bool)

(assert (=> b!3946489 (= e!2442093 (+ 1 (size!31431 (t!327699 suffixTokens!72))))))

(assert (= (and d!1170714 c!685495) b!3946488))

(assert (= (and d!1170714 (not c!685495)) b!3946489))

(declare-fun m!4515365 () Bool)

(assert (=> b!3946489 m!4515365))

(assert (=> b!3946019 d!1170714))

(declare-fun d!1170716 () Bool)

(declare-fun lt!1379718 () Bool)

(assert (=> d!1170716 (= lt!1379718 (set.member (rule!9517 (_1!23733 (get!13842 lt!1379570))) (content!6348 rules!2768)))))

(declare-fun e!2442095 () Bool)

(assert (=> d!1170716 (= lt!1379718 e!2442095)))

(declare-fun res!1596920 () Bool)

(assert (=> d!1170716 (=> (not res!1596920) (not e!2442095))))

(assert (=> d!1170716 (= res!1596920 (is-Cons!41911 rules!2768))))

(assert (=> d!1170716 (= (contains!8393 rules!2768 (rule!9517 (_1!23733 (get!13842 lt!1379570)))) lt!1379718)))

(declare-fun b!3946490 () Bool)

(declare-fun e!2442094 () Bool)

(assert (=> b!3946490 (= e!2442095 e!2442094)))

(declare-fun res!1596919 () Bool)

(assert (=> b!3946490 (=> res!1596919 e!2442094)))

(assert (=> b!3946490 (= res!1596919 (= (h!47331 rules!2768) (rule!9517 (_1!23733 (get!13842 lt!1379570)))))))

(declare-fun b!3946491 () Bool)

(assert (=> b!3946491 (= e!2442094 (contains!8393 (t!327698 rules!2768) (rule!9517 (_1!23733 (get!13842 lt!1379570)))))))

(assert (= (and d!1170716 res!1596920) b!3946490))

(assert (= (and b!3946490 (not res!1596919)) b!3946491))

(assert (=> d!1170716 m!4515033))

(declare-fun m!4515367 () Bool)

(assert (=> d!1170716 m!4515367))

(declare-fun m!4515369 () Bool)

(assert (=> b!3946491 m!4515369))

(assert (=> b!3945866 d!1170716))

(assert (=> b!3945866 d!1170564))

(declare-fun bs!586892 () Bool)

(declare-fun d!1170718 () Bool)

(assert (= bs!586892 (and d!1170718 d!1170620)))

(declare-fun lambda!126743 () Int)

(assert (=> bs!586892 (= (= (toValue!9025 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80)))) (toValue!9025 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72))))) (= lambda!126743 lambda!126738))))

(assert (=> d!1170718 true))

(assert (=> d!1170718 (< (dynLambda!17962 order!22371 (toValue!9025 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80))))) (dynLambda!17963 order!22373 lambda!126743))))

(assert (=> d!1170718 (= (equivClasses!2723 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80)))) (toValue!9025 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80))))) (Forall2!1056 lambda!126743))))

(declare-fun bs!586893 () Bool)

(assert (= bs!586893 d!1170718))

(declare-fun m!4515371 () Bool)

(assert (=> bs!586893 m!4515371))

(assert (=> b!3945973 d!1170718))

(declare-fun d!1170720 () Bool)

(assert (=> d!1170720 (= (inv!56138 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80)))) (value!207396 (h!47332 prefixTokens!80)))) (isBalanced!3648 (c!685366 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80)))) (value!207396 (h!47332 prefixTokens!80))))))))

(declare-fun bs!586894 () Bool)

(assert (= bs!586894 d!1170720))

(declare-fun m!4515373 () Bool)

(assert (=> bs!586894 m!4515373))

(assert (=> tb!236933 d!1170720))

(declare-fun d!1170722 () Bool)

(declare-fun e!2442096 () Bool)

(assert (=> d!1170722 e!2442096))

(declare-fun res!1596921 () Bool)

(assert (=> d!1170722 (=> res!1596921 e!2442096)))

(declare-fun lt!1379719 () Bool)

(assert (=> d!1170722 (= res!1596921 (not lt!1379719))))

(declare-fun e!2442098 () Bool)

(assert (=> d!1170722 (= lt!1379719 e!2442098)))

(declare-fun res!1596922 () Bool)

(assert (=> d!1170722 (=> res!1596922 e!2442098)))

(assert (=> d!1170722 (= res!1596922 (is-Nil!41910 (tail!6108 lt!1379518)))))

(assert (=> d!1170722 (= (isPrefix!3642 (tail!6108 lt!1379518) (tail!6108 (++!10863 lt!1379518 (_2!23733 (v!39310 lt!1379525))))) lt!1379719)))

(declare-fun b!3946495 () Bool)

(assert (=> b!3946495 (= e!2442096 (>= (size!31428 (tail!6108 (++!10863 lt!1379518 (_2!23733 (v!39310 lt!1379525))))) (size!31428 (tail!6108 lt!1379518))))))

(declare-fun b!3946493 () Bool)

(declare-fun res!1596924 () Bool)

(declare-fun e!2442097 () Bool)

(assert (=> b!3946493 (=> (not res!1596924) (not e!2442097))))

(assert (=> b!3946493 (= res!1596924 (= (head!8382 (tail!6108 lt!1379518)) (head!8382 (tail!6108 (++!10863 lt!1379518 (_2!23733 (v!39310 lt!1379525)))))))))

(declare-fun b!3946494 () Bool)

(assert (=> b!3946494 (= e!2442097 (isPrefix!3642 (tail!6108 (tail!6108 lt!1379518)) (tail!6108 (tail!6108 (++!10863 lt!1379518 (_2!23733 (v!39310 lt!1379525)))))))))

(declare-fun b!3946492 () Bool)

(assert (=> b!3946492 (= e!2442098 e!2442097)))

(declare-fun res!1596923 () Bool)

(assert (=> b!3946492 (=> (not res!1596923) (not e!2442097))))

(assert (=> b!3946492 (= res!1596923 (not (is-Nil!41910 (tail!6108 (++!10863 lt!1379518 (_2!23733 (v!39310 lt!1379525)))))))))

(assert (= (and d!1170722 (not res!1596922)) b!3946492))

(assert (= (and b!3946492 res!1596923) b!3946493))

(assert (= (and b!3946493 res!1596924) b!3946494))

(assert (= (and d!1170722 (not res!1596921)) b!3946495))

(assert (=> b!3946495 m!4514787))

(declare-fun m!4515375 () Bool)

(assert (=> b!3946495 m!4515375))

(assert (=> b!3946495 m!4514785))

(declare-fun m!4515377 () Bool)

(assert (=> b!3946495 m!4515377))

(assert (=> b!3946493 m!4514785))

(declare-fun m!4515379 () Bool)

(assert (=> b!3946493 m!4515379))

(assert (=> b!3946493 m!4514787))

(declare-fun m!4515381 () Bool)

(assert (=> b!3946493 m!4515381))

(assert (=> b!3946494 m!4514785))

(declare-fun m!4515383 () Bool)

(assert (=> b!3946494 m!4515383))

(assert (=> b!3946494 m!4514787))

(declare-fun m!4515385 () Bool)

(assert (=> b!3946494 m!4515385))

(assert (=> b!3946494 m!4515383))

(assert (=> b!3946494 m!4515385))

(declare-fun m!4515387 () Bool)

(assert (=> b!3946494 m!4515387))

(assert (=> b!3945971 d!1170722))

(declare-fun d!1170724 () Bool)

(assert (=> d!1170724 (= (tail!6108 lt!1379518) (t!327697 lt!1379518))))

(assert (=> b!3945971 d!1170724))

(declare-fun d!1170726 () Bool)

(assert (=> d!1170726 (= (tail!6108 (++!10863 lt!1379518 (_2!23733 (v!39310 lt!1379525)))) (t!327697 (++!10863 lt!1379518 (_2!23733 (v!39310 lt!1379525)))))))

(assert (=> b!3945971 d!1170726))

(declare-fun bs!586895 () Bool)

(declare-fun d!1170728 () Bool)

(assert (= bs!586895 (and d!1170728 d!1170620)))

(declare-fun lambda!126744 () Int)

(assert (=> bs!586895 (= (= (toValue!9025 (transformation!6553 (h!47331 rules!2768))) (toValue!9025 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72))))) (= lambda!126744 lambda!126738))))

(declare-fun bs!586896 () Bool)

(assert (= bs!586896 (and d!1170728 d!1170718)))

(assert (=> bs!586896 (= (= (toValue!9025 (transformation!6553 (h!47331 rules!2768))) (toValue!9025 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80))))) (= lambda!126744 lambda!126743))))

(assert (=> d!1170728 true))

(assert (=> d!1170728 (< (dynLambda!17962 order!22371 (toValue!9025 (transformation!6553 (h!47331 rules!2768)))) (dynLambda!17963 order!22373 lambda!126744))))

(assert (=> d!1170728 (= (equivClasses!2723 (toChars!8884 (transformation!6553 (h!47331 rules!2768))) (toValue!9025 (transformation!6553 (h!47331 rules!2768)))) (Forall2!1056 lambda!126744))))

(declare-fun bs!586897 () Bool)

(assert (= bs!586897 d!1170728))

(declare-fun m!4515389 () Bool)

(assert (=> bs!586897 m!4515389))

(assert (=> b!3946025 d!1170728))

(declare-fun d!1170730 () Bool)

(declare-fun lt!1379720 () Int)

(assert (=> d!1170730 (>= lt!1379720 0)))

(declare-fun e!2442099 () Int)

(assert (=> d!1170730 (= lt!1379720 e!2442099)))

(declare-fun c!685496 () Bool)

(assert (=> d!1170730 (= c!685496 (is-Nil!41912 (_1!23734 lt!1379611)))))

(assert (=> d!1170730 (= (size!31431 (_1!23734 lt!1379611)) lt!1379720)))

(declare-fun b!3946496 () Bool)

(assert (=> b!3946496 (= e!2442099 0)))

(declare-fun b!3946497 () Bool)

(assert (=> b!3946497 (= e!2442099 (+ 1 (size!31431 (t!327699 (_1!23734 lt!1379611)))))))

(assert (= (and d!1170730 c!685496) b!3946496))

(assert (= (and d!1170730 (not c!685496)) b!3946497))

(declare-fun m!4515391 () Bool)

(assert (=> b!3946497 m!4515391))

(assert (=> d!1170498 d!1170730))

(assert (=> d!1170498 d!1170436))

(declare-fun b!3946498 () Bool)

(declare-fun e!2442100 () tuple2!41200)

(declare-fun lt!1379723 () Option!8973)

(declare-fun lt!1379721 () tuple2!41200)

(assert (=> b!3946498 (= e!2442100 (tuple2!41201 (Cons!41912 (_1!23733 (v!39310 lt!1379723)) (_1!23734 lt!1379721)) (_2!23734 lt!1379721)))))

(assert (=> b!3946498 (= lt!1379721 (lexList!1910 thiss!20629 rules!2768 (_2!23733 (v!39310 lt!1379723))))))

(declare-fun b!3946499 () Bool)

(assert (=> b!3946499 (= e!2442100 (tuple2!41201 Nil!41912 (_2!23733 (v!39310 lt!1379612))))))

(declare-fun d!1170732 () Bool)

(declare-fun e!2442102 () Bool)

(assert (=> d!1170732 e!2442102))

(declare-fun c!685498 () Bool)

(declare-fun lt!1379722 () tuple2!41200)

(assert (=> d!1170732 (= c!685498 (> (size!31431 (_1!23734 lt!1379722)) 0))))

(assert (=> d!1170732 (= lt!1379722 e!2442100)))

(declare-fun c!685497 () Bool)

(assert (=> d!1170732 (= c!685497 (is-Some!8972 lt!1379723))))

(assert (=> d!1170732 (= lt!1379723 (maxPrefix!3446 thiss!20629 rules!2768 (_2!23733 (v!39310 lt!1379612))))))

(assert (=> d!1170732 (= (lexList!1910 thiss!20629 rules!2768 (_2!23733 (v!39310 lt!1379612))) lt!1379722)))

(declare-fun b!3946500 () Bool)

(assert (=> b!3946500 (= e!2442102 (= (_2!23734 lt!1379722) (_2!23733 (v!39310 lt!1379612))))))

(declare-fun b!3946501 () Bool)

(declare-fun e!2442101 () Bool)

(assert (=> b!3946501 (= e!2442102 e!2442101)))

(declare-fun res!1596925 () Bool)

(assert (=> b!3946501 (= res!1596925 (< (size!31428 (_2!23734 lt!1379722)) (size!31428 (_2!23733 (v!39310 lt!1379612)))))))

(assert (=> b!3946501 (=> (not res!1596925) (not e!2442101))))

(declare-fun b!3946502 () Bool)

(assert (=> b!3946502 (= e!2442101 (not (isEmpty!25015 (_1!23734 lt!1379722))))))

(assert (= (and d!1170732 c!685497) b!3946498))

(assert (= (and d!1170732 (not c!685497)) b!3946499))

(assert (= (and d!1170732 c!685498) b!3946501))

(assert (= (and d!1170732 (not c!685498)) b!3946500))

(assert (= (and b!3946501 res!1596925) b!3946502))

(declare-fun m!4515393 () Bool)

(assert (=> b!3946498 m!4515393))

(declare-fun m!4515395 () Bool)

(assert (=> d!1170732 m!4515395))

(declare-fun m!4515397 () Bool)

(assert (=> d!1170732 m!4515397))

(declare-fun m!4515399 () Bool)

(assert (=> b!3946501 m!4515399))

(declare-fun m!4515401 () Bool)

(assert (=> b!3946501 m!4515401))

(declare-fun m!4515403 () Bool)

(assert (=> b!3946502 m!4515403))

(assert (=> b!3945998 d!1170732))

(declare-fun bs!586898 () Bool)

(declare-fun d!1170734 () Bool)

(assert (= bs!586898 (and d!1170734 d!1170630)))

(declare-fun lambda!126747 () Int)

(assert (=> bs!586898 (= lambda!126747 lambda!126741)))

(assert (=> d!1170734 true))

(declare-fun lt!1379726 () Bool)

(assert (=> d!1170734 (= lt!1379726 (rulesValidInductive!2371 thiss!20629 rules!2768))))

(assert (=> d!1170734 (= lt!1379726 (forall!8324 rules!2768 lambda!126747))))

(assert (=> d!1170734 (= (rulesValid!2558 thiss!20629 rules!2768) lt!1379726)))

(declare-fun bs!586899 () Bool)

(assert (= bs!586899 d!1170734))

(assert (=> bs!586899 m!4514643))

(declare-fun m!4515405 () Bool)

(assert (=> bs!586899 m!4515405))

(assert (=> d!1170438 d!1170734))

(declare-fun d!1170736 () Bool)

(declare-fun lt!1379727 () Int)

(assert (=> d!1170736 (>= lt!1379727 0)))

(declare-fun e!2442103 () Int)

(assert (=> d!1170736 (= lt!1379727 e!2442103)))

(declare-fun c!685499 () Bool)

(assert (=> d!1170736 (= c!685499 (is-Nil!41910 (originalCharacters!7153 (_1!23733 (v!39310 lt!1379525)))))))

(assert (=> d!1170736 (= (size!31428 (originalCharacters!7153 (_1!23733 (v!39310 lt!1379525)))) lt!1379727)))

(declare-fun b!3946503 () Bool)

(assert (=> b!3946503 (= e!2442103 0)))

(declare-fun b!3946504 () Bool)

(assert (=> b!3946504 (= e!2442103 (+ 1 (size!31428 (t!327697 (originalCharacters!7153 (_1!23733 (v!39310 lt!1379525)))))))))

(assert (= (and d!1170736 c!685499) b!3946503))

(assert (= (and d!1170736 (not c!685499)) b!3946504))

(declare-fun m!4515407 () Bool)

(assert (=> b!3946504 m!4515407))

(assert (=> d!1170462 d!1170736))

(declare-fun d!1170738 () Bool)

(declare-fun lt!1379728 () Int)

(assert (=> d!1170738 (>= lt!1379728 0)))

(declare-fun e!2442104 () Int)

(assert (=> d!1170738 (= lt!1379728 e!2442104)))

(declare-fun c!685500 () Bool)

(assert (=> d!1170738 (= c!685500 (is-Nil!41912 (_1!23734 lt!1379618)))))

(assert (=> d!1170738 (= (size!31431 (_1!23734 lt!1379618)) lt!1379728)))

(declare-fun b!3946505 () Bool)

(assert (=> b!3946505 (= e!2442104 0)))

(declare-fun b!3946506 () Bool)

(assert (=> b!3946506 (= e!2442104 (+ 1 (size!31431 (t!327699 (_1!23734 lt!1379618)))))))

(assert (= (and d!1170738 c!685500) b!3946505))

(assert (= (and d!1170738 (not c!685500)) b!3946506))

(declare-fun m!4515409 () Bool)

(assert (=> b!3946506 m!4515409))

(assert (=> d!1170516 d!1170738))

(declare-fun b!3946507 () Bool)

(declare-fun e!2442107 () Bool)

(declare-fun e!2442106 () Bool)

(assert (=> b!3946507 (= e!2442107 e!2442106)))

(declare-fun res!1596930 () Bool)

(assert (=> b!3946507 (=> (not res!1596930) (not e!2442106))))

(declare-fun lt!1379733 () Option!8973)

(assert (=> b!3946507 (= res!1596930 (isDefined!6970 lt!1379733))))

(declare-fun b!3946508 () Bool)

(declare-fun e!2442105 () Option!8973)

(declare-fun call!285162 () Option!8973)

(assert (=> b!3946508 (= e!2442105 call!285162)))

(declare-fun b!3946509 () Bool)

(declare-fun res!1596927 () Bool)

(assert (=> b!3946509 (=> (not res!1596927) (not e!2442106))))

(assert (=> b!3946509 (= res!1596927 (= (list!15567 (charsOf!4371 (_1!23733 (get!13842 lt!1379733)))) (originalCharacters!7153 (_1!23733 (get!13842 lt!1379733)))))))

(declare-fun b!3946510 () Bool)

(declare-fun res!1596931 () Bool)

(assert (=> b!3946510 (=> (not res!1596931) (not e!2442106))))

(assert (=> b!3946510 (= res!1596931 (matchR!5503 (regex!6553 (rule!9517 (_1!23733 (get!13842 lt!1379733)))) (list!15567 (charsOf!4371 (_1!23733 (get!13842 lt!1379733))))))))

(declare-fun b!3946511 () Bool)

(declare-fun res!1596926 () Bool)

(assert (=> b!3946511 (=> (not res!1596926) (not e!2442106))))

(assert (=> b!3946511 (= res!1596926 (< (size!31428 (_2!23733 (get!13842 lt!1379733))) (size!31428 suffix!1176)))))

(declare-fun b!3946512 () Bool)

(assert (=> b!3946512 (= e!2442106 (contains!8393 rules!2768 (rule!9517 (_1!23733 (get!13842 lt!1379733)))))))

(declare-fun d!1170740 () Bool)

(assert (=> d!1170740 e!2442107))

(declare-fun res!1596932 () Bool)

(assert (=> d!1170740 (=> res!1596932 e!2442107)))

(assert (=> d!1170740 (= res!1596932 (isEmpty!25019 lt!1379733))))

(assert (=> d!1170740 (= lt!1379733 e!2442105)))

(declare-fun c!685501 () Bool)

(assert (=> d!1170740 (= c!685501 (and (is-Cons!41911 rules!2768) (is-Nil!41911 (t!327698 rules!2768))))))

(declare-fun lt!1379729 () Unit!60447)

(declare-fun lt!1379731 () Unit!60447)

(assert (=> d!1170740 (= lt!1379729 lt!1379731)))

(assert (=> d!1170740 (isPrefix!3642 suffix!1176 suffix!1176)))

(assert (=> d!1170740 (= lt!1379731 (lemmaIsPrefixRefl!2301 suffix!1176 suffix!1176))))

(assert (=> d!1170740 (rulesValidInductive!2371 thiss!20629 rules!2768)))

(assert (=> d!1170740 (= (maxPrefix!3446 thiss!20629 rules!2768 suffix!1176) lt!1379733)))

(declare-fun b!3946513 () Bool)

(declare-fun lt!1379730 () Option!8973)

(declare-fun lt!1379732 () Option!8973)

(assert (=> b!3946513 (= e!2442105 (ite (and (is-None!8972 lt!1379730) (is-None!8972 lt!1379732)) None!8972 (ite (is-None!8972 lt!1379732) lt!1379730 (ite (is-None!8972 lt!1379730) lt!1379732 (ite (>= (size!31426 (_1!23733 (v!39310 lt!1379730))) (size!31426 (_1!23733 (v!39310 lt!1379732)))) lt!1379730 lt!1379732)))))))

(assert (=> b!3946513 (= lt!1379730 call!285162)))

(assert (=> b!3946513 (= lt!1379732 (maxPrefix!3446 thiss!20629 (t!327698 rules!2768) suffix!1176))))

(declare-fun b!3946514 () Bool)

(declare-fun res!1596929 () Bool)

(assert (=> b!3946514 (=> (not res!1596929) (not e!2442106))))

(assert (=> b!3946514 (= res!1596929 (= (++!10863 (list!15567 (charsOf!4371 (_1!23733 (get!13842 lt!1379733)))) (_2!23733 (get!13842 lt!1379733))) suffix!1176))))

(declare-fun b!3946515 () Bool)

(declare-fun res!1596928 () Bool)

(assert (=> b!3946515 (=> (not res!1596928) (not e!2442106))))

(assert (=> b!3946515 (= res!1596928 (= (value!207396 (_1!23733 (get!13842 lt!1379733))) (apply!9784 (transformation!6553 (rule!9517 (_1!23733 (get!13842 lt!1379733)))) (seqFromList!4812 (originalCharacters!7153 (_1!23733 (get!13842 lt!1379733)))))))))

(declare-fun bm!285157 () Bool)

(assert (=> bm!285157 (= call!285162 (maxPrefixOneRule!2508 thiss!20629 (h!47331 rules!2768) suffix!1176))))

(assert (= (and d!1170740 c!685501) b!3946508))

(assert (= (and d!1170740 (not c!685501)) b!3946513))

(assert (= (or b!3946508 b!3946513) bm!285157))

(assert (= (and d!1170740 (not res!1596932)) b!3946507))

(assert (= (and b!3946507 res!1596930) b!3946509))

(assert (= (and b!3946509 res!1596927) b!3946511))

(assert (= (and b!3946511 res!1596926) b!3946514))

(assert (= (and b!3946514 res!1596929) b!3946515))

(assert (= (and b!3946515 res!1596928) b!3946510))

(assert (= (and b!3946510 res!1596931) b!3946512))

(declare-fun m!4515411 () Bool)

(assert (=> b!3946507 m!4515411))

(declare-fun m!4515413 () Bool)

(assert (=> b!3946515 m!4515413))

(declare-fun m!4515415 () Bool)

(assert (=> b!3946515 m!4515415))

(assert (=> b!3946515 m!4515415))

(declare-fun m!4515417 () Bool)

(assert (=> b!3946515 m!4515417))

(assert (=> b!3946514 m!4515413))

(declare-fun m!4515419 () Bool)

(assert (=> b!3946514 m!4515419))

(assert (=> b!3946514 m!4515419))

(declare-fun m!4515421 () Bool)

(assert (=> b!3946514 m!4515421))

(assert (=> b!3946514 m!4515421))

(declare-fun m!4515423 () Bool)

(assert (=> b!3946514 m!4515423))

(declare-fun m!4515425 () Bool)

(assert (=> b!3946513 m!4515425))

(assert (=> b!3946510 m!4515413))

(assert (=> b!3946510 m!4515419))

(assert (=> b!3946510 m!4515419))

(assert (=> b!3946510 m!4515421))

(assert (=> b!3946510 m!4515421))

(declare-fun m!4515427 () Bool)

(assert (=> b!3946510 m!4515427))

(assert (=> b!3946512 m!4515413))

(declare-fun m!4515429 () Bool)

(assert (=> b!3946512 m!4515429))

(declare-fun m!4515431 () Bool)

(assert (=> d!1170740 m!4515431))

(declare-fun m!4515433 () Bool)

(assert (=> d!1170740 m!4515433))

(declare-fun m!4515435 () Bool)

(assert (=> d!1170740 m!4515435))

(assert (=> d!1170740 m!4514643))

(assert (=> b!3946511 m!4515413))

(declare-fun m!4515437 () Bool)

(assert (=> b!3946511 m!4515437))

(assert (=> b!3946511 m!4514853))

(assert (=> b!3946509 m!4515413))

(assert (=> b!3946509 m!4515419))

(assert (=> b!3946509 m!4515419))

(assert (=> b!3946509 m!4515421))

(declare-fun m!4515439 () Bool)

(assert (=> bm!285157 m!4515439))

(assert (=> d!1170516 d!1170740))

(declare-fun b!3946516 () Bool)

(declare-fun e!2442110 () Bool)

(declare-fun e!2442108 () Bool)

(assert (=> b!3946516 (= e!2442110 e!2442108)))

(declare-fun c!685502 () Bool)

(assert (=> b!3946516 (= c!685502 (is-IntegerValue!20350 (value!207396 (h!47332 (t!327699 suffixTokens!72)))))))

(declare-fun b!3946517 () Bool)

(declare-fun res!1596933 () Bool)

(declare-fun e!2442109 () Bool)

(assert (=> b!3946517 (=> res!1596933 e!2442109)))

(assert (=> b!3946517 (= res!1596933 (not (is-IntegerValue!20351 (value!207396 (h!47332 (t!327699 suffixTokens!72))))))))

(assert (=> b!3946517 (= e!2442108 e!2442109)))

(declare-fun b!3946518 () Bool)

(assert (=> b!3946518 (= e!2442110 (inv!16 (value!207396 (h!47332 (t!327699 suffixTokens!72)))))))

(declare-fun b!3946519 () Bool)

(assert (=> b!3946519 (= e!2442108 (inv!17 (value!207396 (h!47332 (t!327699 suffixTokens!72)))))))

(declare-fun b!3946520 () Bool)

(assert (=> b!3946520 (= e!2442109 (inv!15 (value!207396 (h!47332 (t!327699 suffixTokens!72)))))))

(declare-fun d!1170742 () Bool)

(declare-fun c!685503 () Bool)

(assert (=> d!1170742 (= c!685503 (is-IntegerValue!20349 (value!207396 (h!47332 (t!327699 suffixTokens!72)))))))

(assert (=> d!1170742 (= (inv!21 (value!207396 (h!47332 (t!327699 suffixTokens!72)))) e!2442110)))

(assert (= (and d!1170742 c!685503) b!3946518))

(assert (= (and d!1170742 (not c!685503)) b!3946516))

(assert (= (and b!3946516 c!685502) b!3946519))

(assert (= (and b!3946516 (not c!685502)) b!3946517))

(assert (= (and b!3946517 (not res!1596933)) b!3946520))

(declare-fun m!4515441 () Bool)

(assert (=> b!3946518 m!4515441))

(declare-fun m!4515443 () Bool)

(assert (=> b!3946519 m!4515443))

(declare-fun m!4515445 () Bool)

(assert (=> b!3946520 m!4515445))

(assert (=> b!3946090 d!1170742))

(declare-fun d!1170744 () Bool)

(declare-fun lt!1379734 () Int)

(assert (=> d!1170744 (>= lt!1379734 0)))

(declare-fun e!2442111 () Int)

(assert (=> d!1170744 (= lt!1379734 e!2442111)))

(declare-fun c!685504 () Bool)

(assert (=> d!1170744 (= c!685504 (is-Nil!41910 (_2!23733 (get!13842 lt!1379570))))))

(assert (=> d!1170744 (= (size!31428 (_2!23733 (get!13842 lt!1379570))) lt!1379734)))

(declare-fun b!3946521 () Bool)

(assert (=> b!3946521 (= e!2442111 0)))

(declare-fun b!3946522 () Bool)

(assert (=> b!3946522 (= e!2442111 (+ 1 (size!31428 (t!327697 (_2!23733 (get!13842 lt!1379570))))))))

(assert (= (and d!1170744 c!685504) b!3946521))

(assert (= (and d!1170744 (not c!685504)) b!3946522))

(declare-fun m!4515447 () Bool)

(assert (=> b!3946522 m!4515447))

(assert (=> b!3945865 d!1170744))

(assert (=> b!3945865 d!1170564))

(assert (=> b!3945865 d!1170668))

(declare-fun d!1170746 () Bool)

(assert (=> d!1170746 (= (inv!16 (value!207396 (h!47332 suffixTokens!72))) (= (charsToInt!0 (text!47928 (value!207396 (h!47332 suffixTokens!72)))) (value!207387 (value!207396 (h!47332 suffixTokens!72)))))))

(declare-fun bs!586900 () Bool)

(assert (= bs!586900 d!1170746))

(declare-fun m!4515449 () Bool)

(assert (=> bs!586900 m!4515449))

(assert (=> b!3945912 d!1170746))

(declare-fun d!1170748 () Bool)

(assert (=> d!1170748 (= (inv!56130 (tag!7413 (rule!9517 (h!47332 (t!327699 prefixTokens!80))))) (= (mod (str.len (value!207395 (tag!7413 (rule!9517 (h!47332 (t!327699 prefixTokens!80)))))) 2) 0))))

(assert (=> b!3946056 d!1170748))

(declare-fun d!1170750 () Bool)

(declare-fun res!1596934 () Bool)

(declare-fun e!2442112 () Bool)

(assert (=> d!1170750 (=> (not res!1596934) (not e!2442112))))

(assert (=> d!1170750 (= res!1596934 (semiInverseModEq!2824 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 prefixTokens!80))))) (toValue!9025 (transformation!6553 (rule!9517 (h!47332 (t!327699 prefixTokens!80)))))))))

(assert (=> d!1170750 (= (inv!56134 (transformation!6553 (rule!9517 (h!47332 (t!327699 prefixTokens!80))))) e!2442112)))

(declare-fun b!3946523 () Bool)

(assert (=> b!3946523 (= e!2442112 (equivClasses!2723 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 prefixTokens!80))))) (toValue!9025 (transformation!6553 (rule!9517 (h!47332 (t!327699 prefixTokens!80)))))))))

(assert (= (and d!1170750 res!1596934) b!3946523))

(declare-fun m!4515451 () Bool)

(assert (=> d!1170750 m!4515451))

(declare-fun m!4515453 () Bool)

(assert (=> b!3946523 m!4515453))

(assert (=> b!3946056 d!1170750))

(assert (=> b!3945863 d!1170650))

(assert (=> b!3945863 d!1170652))

(assert (=> b!3945863 d!1170564))

(declare-fun b!3946535 () Bool)

(declare-fun e!2442118 () List!42034)

(assert (=> b!3946535 (= e!2442118 (++!10863 (list!15569 (left!31915 (c!685366 (charsOf!4371 (_1!23733 (v!39310 lt!1379525)))))) (list!15569 (right!32245 (c!685366 (charsOf!4371 (_1!23733 (v!39310 lt!1379525))))))))))

(declare-fun b!3946534 () Bool)

(declare-fun list!15571 (IArray!25533) List!42034)

(assert (=> b!3946534 (= e!2442118 (list!15571 (xs!16070 (c!685366 (charsOf!4371 (_1!23733 (v!39310 lt!1379525)))))))))

(declare-fun d!1170752 () Bool)

(declare-fun c!685509 () Bool)

(assert (=> d!1170752 (= c!685509 (is-Empty!12764 (c!685366 (charsOf!4371 (_1!23733 (v!39310 lt!1379525))))))))

(declare-fun e!2442117 () List!42034)

(assert (=> d!1170752 (= (list!15569 (c!685366 (charsOf!4371 (_1!23733 (v!39310 lt!1379525))))) e!2442117)))

(declare-fun b!3946533 () Bool)

(assert (=> b!3946533 (= e!2442117 e!2442118)))

(declare-fun c!685510 () Bool)

(assert (=> b!3946533 (= c!685510 (is-Leaf!19748 (c!685366 (charsOf!4371 (_1!23733 (v!39310 lt!1379525))))))))

(declare-fun b!3946532 () Bool)

(assert (=> b!3946532 (= e!2442117 Nil!41910)))

(assert (= (and d!1170752 c!685509) b!3946532))

(assert (= (and d!1170752 (not c!685509)) b!3946533))

(assert (= (and b!3946533 c!685510) b!3946534))

(assert (= (and b!3946533 (not c!685510)) b!3946535))

(declare-fun m!4515455 () Bool)

(assert (=> b!3946535 m!4515455))

(declare-fun m!4515457 () Bool)

(assert (=> b!3946535 m!4515457))

(assert (=> b!3946535 m!4515455))

(assert (=> b!3946535 m!4515457))

(declare-fun m!4515459 () Bool)

(assert (=> b!3946535 m!4515459))

(declare-fun m!4515461 () Bool)

(assert (=> b!3946534 m!4515461))

(assert (=> d!1170464 d!1170752))

(declare-fun d!1170754 () Bool)

(assert (=> d!1170754 (= (isEmpty!25015 (_1!23734 lt!1379611)) (is-Nil!41912 (_1!23734 lt!1379611)))))

(assert (=> b!3946002 d!1170754))

(declare-fun d!1170756 () Bool)

(assert (=> d!1170756 (= (inv!56130 (tag!7413 (h!47331 (t!327698 rules!2768)))) (= (mod (str.len (value!207395 (tag!7413 (h!47331 (t!327698 rules!2768))))) 2) 0))))

(assert (=> b!3946087 d!1170756))

(declare-fun d!1170758 () Bool)

(declare-fun res!1596935 () Bool)

(declare-fun e!2442119 () Bool)

(assert (=> d!1170758 (=> (not res!1596935) (not e!2442119))))

(assert (=> d!1170758 (= res!1596935 (semiInverseModEq!2824 (toChars!8884 (transformation!6553 (h!47331 (t!327698 rules!2768)))) (toValue!9025 (transformation!6553 (h!47331 (t!327698 rules!2768))))))))

(assert (=> d!1170758 (= (inv!56134 (transformation!6553 (h!47331 (t!327698 rules!2768)))) e!2442119)))

(declare-fun b!3946536 () Bool)

(assert (=> b!3946536 (= e!2442119 (equivClasses!2723 (toChars!8884 (transformation!6553 (h!47331 (t!327698 rules!2768)))) (toValue!9025 (transformation!6553 (h!47331 (t!327698 rules!2768))))))))

(assert (= (and d!1170758 res!1596935) b!3946536))

(declare-fun m!4515463 () Bool)

(assert (=> d!1170758 m!4515463))

(declare-fun m!4515465 () Bool)

(assert (=> b!3946536 m!4515465))

(assert (=> b!3946087 d!1170758))

(declare-fun d!1170760 () Bool)

(declare-fun e!2442121 () Bool)

(assert (=> d!1170760 e!2442121))

(declare-fun res!1596937 () Bool)

(assert (=> d!1170760 (=> (not res!1596937) (not e!2442121))))

(declare-fun lt!1379735 () List!42034)

(assert (=> d!1170760 (= res!1596937 (= (content!6344 lt!1379735) (set.union (content!6344 lt!1379518) (content!6344 lt!1379591))))))

(declare-fun e!2442120 () List!42034)

(assert (=> d!1170760 (= lt!1379735 e!2442120)))

(declare-fun c!685511 () Bool)

(assert (=> d!1170760 (= c!685511 (is-Nil!41910 lt!1379518))))

(assert (=> d!1170760 (= (++!10863 lt!1379518 lt!1379591) lt!1379735)))

(declare-fun b!3946537 () Bool)

(assert (=> b!3946537 (= e!2442120 lt!1379591)))

(declare-fun b!3946540 () Bool)

(assert (=> b!3946540 (= e!2442121 (or (not (= lt!1379591 Nil!41910)) (= lt!1379735 lt!1379518)))))

(declare-fun b!3946538 () Bool)

(assert (=> b!3946538 (= e!2442120 (Cons!41910 (h!47330 lt!1379518) (++!10863 (t!327697 lt!1379518) lt!1379591)))))

(declare-fun b!3946539 () Bool)

(declare-fun res!1596936 () Bool)

(assert (=> b!3946539 (=> (not res!1596936) (not e!2442121))))

(assert (=> b!3946539 (= res!1596936 (= (size!31428 lt!1379735) (+ (size!31428 lt!1379518) (size!31428 lt!1379591))))))

(assert (= (and d!1170760 c!685511) b!3946537))

(assert (= (and d!1170760 (not c!685511)) b!3946538))

(assert (= (and d!1170760 res!1596937) b!3946539))

(assert (= (and b!3946539 res!1596936) b!3946540))

(declare-fun m!4515467 () Bool)

(assert (=> d!1170760 m!4515467))

(assert (=> d!1170760 m!4514731))

(declare-fun m!4515469 () Bool)

(assert (=> d!1170760 m!4515469))

(declare-fun m!4515471 () Bool)

(assert (=> b!3946538 m!4515471))

(declare-fun m!4515473 () Bool)

(assert (=> b!3946539 m!4515473))

(assert (=> b!3946539 m!4514739))

(declare-fun m!4515475 () Bool)

(assert (=> b!3946539 m!4515475))

(assert (=> d!1170482 d!1170760))

(assert (=> d!1170482 d!1170668))

(assert (=> d!1170482 d!1170584))

(declare-fun d!1170762 () Bool)

(assert (=> d!1170762 (= (inv!17 (value!207396 (h!47332 prefixTokens!80))) (= (charsToBigInt!1 (text!47929 (value!207396 (h!47332 prefixTokens!80)))) (value!207388 (value!207396 (h!47332 prefixTokens!80)))))))

(declare-fun bs!586901 () Bool)

(assert (= bs!586901 d!1170762))

(declare-fun m!4515477 () Bool)

(assert (=> bs!586901 m!4515477))

(assert (=> b!3945904 d!1170762))

(declare-fun d!1170764 () Bool)

(declare-fun e!2442124 () Bool)

(assert (=> d!1170764 e!2442124))

(declare-fun res!1596940 () Bool)

(assert (=> d!1170764 (=> (not res!1596940) (not e!2442124))))

(declare-fun lt!1379738 () BalanceConc!25122)

(assert (=> d!1170764 (= res!1596940 (= (list!15567 lt!1379738) lt!1379518))))

(declare-fun fromList!832 (List!42034) Conc!12764)

(assert (=> d!1170764 (= lt!1379738 (BalanceConc!25123 (fromList!832 lt!1379518)))))

(assert (=> d!1170764 (= (fromListB!2225 lt!1379518) lt!1379738)))

(declare-fun b!3946543 () Bool)

(assert (=> b!3946543 (= e!2442124 (isBalanced!3648 (fromList!832 lt!1379518)))))

(assert (= (and d!1170764 res!1596940) b!3946543))

(declare-fun m!4515479 () Bool)

(assert (=> d!1170764 m!4515479))

(declare-fun m!4515481 () Bool)

(assert (=> d!1170764 m!4515481))

(assert (=> b!3946543 m!4515481))

(assert (=> b!3946543 m!4515481))

(declare-fun m!4515483 () Bool)

(assert (=> b!3946543 m!4515483))

(assert (=> d!1170474 d!1170764))

(declare-fun d!1170766 () Bool)

(declare-fun res!1596941 () Bool)

(declare-fun e!2442125 () Bool)

(assert (=> d!1170766 (=> (not res!1596941) (not e!2442125))))

(assert (=> d!1170766 (= res!1596941 (not (isEmpty!25014 (originalCharacters!7153 (h!47332 (t!327699 prefixTokens!80))))))))

(assert (=> d!1170766 (= (inv!56133 (h!47332 (t!327699 prefixTokens!80))) e!2442125)))

(declare-fun b!3946544 () Bool)

(declare-fun res!1596942 () Bool)

(assert (=> b!3946544 (=> (not res!1596942) (not e!2442125))))

(assert (=> b!3946544 (= res!1596942 (= (originalCharacters!7153 (h!47332 (t!327699 prefixTokens!80))) (list!15567 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 prefixTokens!80))))) (value!207396 (h!47332 (t!327699 prefixTokens!80)))))))))

(declare-fun b!3946545 () Bool)

(assert (=> b!3946545 (= e!2442125 (= (size!31426 (h!47332 (t!327699 prefixTokens!80))) (size!31428 (originalCharacters!7153 (h!47332 (t!327699 prefixTokens!80))))))))

(assert (= (and d!1170766 res!1596941) b!3946544))

(assert (= (and b!3946544 res!1596942) b!3946545))

(declare-fun b_lambda!115435 () Bool)

(assert (=> (not b_lambda!115435) (not b!3946544)))

(declare-fun t!327852 () Bool)

(declare-fun tb!237077 () Bool)

(assert (=> (and b!3945734 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80)))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 prefixTokens!80)))))) t!327852) tb!237077))

(declare-fun b!3946546 () Bool)

(declare-fun e!2442126 () Bool)

(declare-fun tp!1201452 () Bool)

(assert (=> b!3946546 (= e!2442126 (and (inv!56137 (c!685366 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 prefixTokens!80))))) (value!207396 (h!47332 (t!327699 prefixTokens!80)))))) tp!1201452))))

(declare-fun result!287142 () Bool)

(assert (=> tb!237077 (= result!287142 (and (inv!56138 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 prefixTokens!80))))) (value!207396 (h!47332 (t!327699 prefixTokens!80))))) e!2442126))))

(assert (= tb!237077 b!3946546))

(declare-fun m!4515485 () Bool)

(assert (=> b!3946546 m!4515485))

(declare-fun m!4515487 () Bool)

(assert (=> tb!237077 m!4515487))

(assert (=> b!3946544 t!327852))

(declare-fun b_and!301991 () Bool)

(assert (= b_and!301967 (and (=> t!327852 result!287142) b_and!301991)))

(declare-fun t!327854 () Bool)

(declare-fun tb!237079 () Bool)

(assert (=> (and b!3945733 (= (toChars!8884 (transformation!6553 (h!47331 rules!2768))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 prefixTokens!80)))))) t!327854) tb!237079))

(declare-fun result!287144 () Bool)

(assert (= result!287144 result!287142))

(assert (=> b!3946544 t!327854))

(declare-fun b_and!301993 () Bool)

(assert (= b_and!301977 (and (=> t!327854 result!287144) b_and!301993)))

(declare-fun tb!237081 () Bool)

(declare-fun t!327856 () Bool)

(assert (=> (and b!3946088 (= (toChars!8884 (transformation!6553 (h!47331 (t!327698 rules!2768)))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 prefixTokens!80)))))) t!327856) tb!237081))

(declare-fun result!287146 () Bool)

(assert (= result!287146 result!287142))

(assert (=> b!3946544 t!327856))

(declare-fun b_and!301995 () Bool)

(assert (= b_and!301969 (and (=> t!327856 result!287146) b_and!301995)))

(declare-fun t!327858 () Bool)

(declare-fun tb!237083 () Bool)

(assert (=> (and b!3946057 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 prefixTokens!80))))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 prefixTokens!80)))))) t!327858) tb!237083))

(declare-fun result!287148 () Bool)

(assert (= result!287148 result!287142))

(assert (=> b!3946544 t!327858))

(declare-fun b_and!301997 () Bool)

(assert (= b_and!301971 (and (=> t!327858 result!287148) b_and!301997)))

(declare-fun tb!237085 () Bool)

(declare-fun t!327860 () Bool)

(assert (=> (and b!3946092 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 suffixTokens!72))))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 prefixTokens!80)))))) t!327860) tb!237085))

(declare-fun result!287150 () Bool)

(assert (= result!287150 result!287142))

(assert (=> b!3946544 t!327860))

(declare-fun b_and!301999 () Bool)

(assert (= b_and!301973 (and (=> t!327860 result!287150) b_and!301999)))

(declare-fun tb!237087 () Bool)

(declare-fun t!327862 () Bool)

(assert (=> (and b!3945751 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72)))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 prefixTokens!80)))))) t!327862) tb!237087))

(declare-fun result!287152 () Bool)

(assert (= result!287152 result!287142))

(assert (=> b!3946544 t!327862))

(declare-fun b_and!302001 () Bool)

(assert (= b_and!301975 (and (=> t!327862 result!287152) b_and!302001)))

(declare-fun m!4515489 () Bool)

(assert (=> d!1170766 m!4515489))

(declare-fun m!4515491 () Bool)

(assert (=> b!3946544 m!4515491))

(assert (=> b!3946544 m!4515491))

(declare-fun m!4515493 () Bool)

(assert (=> b!3946544 m!4515493))

(declare-fun m!4515495 () Bool)

(assert (=> b!3946545 m!4515495))

(assert (=> b!3946054 d!1170766))

(declare-fun d!1170768 () Bool)

(assert (=> d!1170768 (= (isDefined!6970 lt!1379570) (not (isEmpty!25019 lt!1379570)))))

(declare-fun bs!586902 () Bool)

(assert (= bs!586902 d!1170768))

(assert (=> bs!586902 m!4514637))

(assert (=> b!3945861 d!1170768))

(declare-fun b!3946547 () Bool)

(declare-fun e!2442127 () Bool)

(declare-fun tp!1201453 () Bool)

(assert (=> b!3946547 (= e!2442127 (and tp_is_empty!19887 tp!1201453))))

(assert (=> b!3946094 (= tp!1201373 e!2442127)))

(assert (= (and b!3946094 (is-Cons!41910 (t!327697 (originalCharacters!7153 (h!47332 suffixTokens!72))))) b!3946547))

(declare-fun tp!1201460 () Bool)

(declare-fun b!3946556 () Bool)

(declare-fun tp!1201461 () Bool)

(declare-fun e!2442132 () Bool)

(assert (=> b!3946556 (= e!2442132 (and (inv!56137 (left!31915 (c!685366 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72)))) (value!207396 (h!47332 suffixTokens!72)))))) tp!1201461 (inv!56137 (right!32245 (c!685366 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72)))) (value!207396 (h!47332 suffixTokens!72)))))) tp!1201460))))

(declare-fun b!3946558 () Bool)

(declare-fun e!2442133 () Bool)

(declare-fun tp!1201462 () Bool)

(assert (=> b!3946558 (= e!2442133 tp!1201462)))

(declare-fun b!3946557 () Bool)

(declare-fun inv!56143 (IArray!25533) Bool)

(assert (=> b!3946557 (= e!2442132 (and (inv!56143 (xs!16070 (c!685366 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72)))) (value!207396 (h!47332 suffixTokens!72)))))) e!2442133))))

(assert (=> b!3945909 (= tp!1201317 (and (inv!56137 (c!685366 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72)))) (value!207396 (h!47332 suffixTokens!72))))) e!2442132))))

(assert (= (and b!3945909 (is-Node!12764 (c!685366 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72)))) (value!207396 (h!47332 suffixTokens!72)))))) b!3946556))

(assert (= b!3946557 b!3946558))

(assert (= (and b!3945909 (is-Leaf!19748 (c!685366 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72)))) (value!207396 (h!47332 suffixTokens!72)))))) b!3946557))

(declare-fun m!4515497 () Bool)

(assert (=> b!3946556 m!4515497))

(declare-fun m!4515499 () Bool)

(assert (=> b!3946556 m!4515499))

(declare-fun m!4515501 () Bool)

(assert (=> b!3946557 m!4515501))

(assert (=> b!3945909 m!4514681))

(declare-fun b!3946559 () Bool)

(declare-fun e!2442134 () Bool)

(declare-fun tp!1201463 () Bool)

(assert (=> b!3946559 (= e!2442134 (and tp_is_empty!19887 tp!1201463))))

(assert (=> b!3946058 (= tp!1201338 e!2442134)))

(assert (= (and b!3946058 (is-Cons!41910 (t!327697 (t!327697 suffix!1176)))) b!3946559))

(declare-fun e!2442135 () Bool)

(declare-fun tp!1201465 () Bool)

(declare-fun b!3946560 () Bool)

(declare-fun tp!1201464 () Bool)

(assert (=> b!3946560 (= e!2442135 (and (inv!56137 (left!31915 (c!685366 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80)))) (value!207396 (h!47332 prefixTokens!80)))))) tp!1201465 (inv!56137 (right!32245 (c!685366 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80)))) (value!207396 (h!47332 prefixTokens!80)))))) tp!1201464))))

(declare-fun b!3946562 () Bool)

(declare-fun e!2442136 () Bool)

(declare-fun tp!1201466 () Bool)

(assert (=> b!3946562 (= e!2442136 tp!1201466)))

(declare-fun b!3946561 () Bool)

(assert (=> b!3946561 (= e!2442135 (and (inv!56143 (xs!16070 (c!685366 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80)))) (value!207396 (h!47332 prefixTokens!80)))))) e!2442136))))

(assert (=> b!3945832 (= tp!1201313 (and (inv!56137 (c!685366 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80)))) (value!207396 (h!47332 prefixTokens!80))))) e!2442135))))

(assert (= (and b!3945832 (is-Node!12764 (c!685366 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80)))) (value!207396 (h!47332 prefixTokens!80)))))) b!3946560))

(assert (= b!3946561 b!3946562))

(assert (= (and b!3945832 (is-Leaf!19748 (c!685366 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80)))) (value!207396 (h!47332 prefixTokens!80)))))) b!3946561))

(declare-fun m!4515503 () Bool)

(assert (=> b!3946560 m!4515503))

(declare-fun m!4515505 () Bool)

(assert (=> b!3946560 m!4515505))

(declare-fun m!4515507 () Bool)

(assert (=> b!3946561 m!4515507))

(assert (=> b!3945832 m!4514605))

(declare-fun b!3946564 () Bool)

(declare-fun e!2442137 () Bool)

(declare-fun tp!1201467 () Bool)

(declare-fun tp!1201471 () Bool)

(assert (=> b!3946564 (= e!2442137 (and tp!1201467 tp!1201471))))

(declare-fun b!3946566 () Bool)

(declare-fun tp!1201469 () Bool)

(declare-fun tp!1201470 () Bool)

(assert (=> b!3946566 (= e!2442137 (and tp!1201469 tp!1201470))))

(declare-fun b!3946565 () Bool)

(declare-fun tp!1201468 () Bool)

(assert (=> b!3946565 (= e!2442137 tp!1201468)))

(declare-fun b!3946563 () Bool)

(assert (=> b!3946563 (= e!2442137 tp_is_empty!19887)))

(assert (=> b!3946102 (= tp!1201381 e!2442137)))

(assert (= (and b!3946102 (is-ElementMatch!11458 (regOne!23429 (regex!6553 (h!47331 rules!2768))))) b!3946563))

(assert (= (and b!3946102 (is-Concat!18242 (regOne!23429 (regex!6553 (h!47331 rules!2768))))) b!3946564))

(assert (= (and b!3946102 (is-Star!11458 (regOne!23429 (regex!6553 (h!47331 rules!2768))))) b!3946565))

(assert (= (and b!3946102 (is-Union!11458 (regOne!23429 (regex!6553 (h!47331 rules!2768))))) b!3946566))

(declare-fun b!3946568 () Bool)

(declare-fun e!2442138 () Bool)

(declare-fun tp!1201472 () Bool)

(declare-fun tp!1201476 () Bool)

(assert (=> b!3946568 (= e!2442138 (and tp!1201472 tp!1201476))))

(declare-fun b!3946570 () Bool)

(declare-fun tp!1201474 () Bool)

(declare-fun tp!1201475 () Bool)

(assert (=> b!3946570 (= e!2442138 (and tp!1201474 tp!1201475))))

(declare-fun b!3946569 () Bool)

(declare-fun tp!1201473 () Bool)

(assert (=> b!3946569 (= e!2442138 tp!1201473)))

(declare-fun b!3946567 () Bool)

(assert (=> b!3946567 (= e!2442138 tp_is_empty!19887)))

(assert (=> b!3946102 (= tp!1201382 e!2442138)))

(assert (= (and b!3946102 (is-ElementMatch!11458 (regTwo!23429 (regex!6553 (h!47331 rules!2768))))) b!3946567))

(assert (= (and b!3946102 (is-Concat!18242 (regTwo!23429 (regex!6553 (h!47331 rules!2768))))) b!3946568))

(assert (= (and b!3946102 (is-Star!11458 (regTwo!23429 (regex!6553 (h!47331 rules!2768))))) b!3946569))

(assert (= (and b!3946102 (is-Union!11458 (regTwo!23429 (regex!6553 (h!47331 rules!2768))))) b!3946570))

(declare-fun b!3946572 () Bool)

(declare-fun e!2442139 () Bool)

(declare-fun tp!1201477 () Bool)

(declare-fun tp!1201481 () Bool)

(assert (=> b!3946572 (= e!2442139 (and tp!1201477 tp!1201481))))

(declare-fun b!3946574 () Bool)

(declare-fun tp!1201479 () Bool)

(declare-fun tp!1201480 () Bool)

(assert (=> b!3946574 (= e!2442139 (and tp!1201479 tp!1201480))))

(declare-fun b!3946573 () Bool)

(declare-fun tp!1201478 () Bool)

(assert (=> b!3946573 (= e!2442139 tp!1201478)))

(declare-fun b!3946571 () Bool)

(assert (=> b!3946571 (= e!2442139 tp_is_empty!19887)))

(assert (=> b!3946101 (= tp!1201380 e!2442139)))

(assert (= (and b!3946101 (is-ElementMatch!11458 (reg!11787 (regex!6553 (h!47331 rules!2768))))) b!3946571))

(assert (= (and b!3946101 (is-Concat!18242 (reg!11787 (regex!6553 (h!47331 rules!2768))))) b!3946572))

(assert (= (and b!3946101 (is-Star!11458 (reg!11787 (regex!6553 (h!47331 rules!2768))))) b!3946573))

(assert (= (and b!3946101 (is-Union!11458 (reg!11787 (regex!6553 (h!47331 rules!2768))))) b!3946574))

(declare-fun b!3946575 () Bool)

(declare-fun e!2442140 () Bool)

(declare-fun tp!1201482 () Bool)

(assert (=> b!3946575 (= e!2442140 (and tp_is_empty!19887 tp!1201482))))

(assert (=> b!3946093 (= tp!1201372 e!2442140)))

(assert (= (and b!3946093 (is-Cons!41910 (t!327697 (t!327697 suffixResult!91)))) b!3946575))

(declare-fun b!3946577 () Bool)

(declare-fun e!2442141 () Bool)

(declare-fun tp!1201483 () Bool)

(declare-fun tp!1201487 () Bool)

(assert (=> b!3946577 (= e!2442141 (and tp!1201483 tp!1201487))))

(declare-fun b!3946579 () Bool)

(declare-fun tp!1201485 () Bool)

(declare-fun tp!1201486 () Bool)

(assert (=> b!3946579 (= e!2442141 (and tp!1201485 tp!1201486))))

(declare-fun b!3946578 () Bool)

(declare-fun tp!1201484 () Bool)

(assert (=> b!3946578 (= e!2442141 tp!1201484)))

(declare-fun b!3946576 () Bool)

(assert (=> b!3946576 (= e!2442141 tp_is_empty!19887)))

(assert (=> b!3946100 (= tp!1201379 e!2442141)))

(assert (= (and b!3946100 (is-ElementMatch!11458 (regOne!23428 (regex!6553 (h!47331 rules!2768))))) b!3946576))

(assert (= (and b!3946100 (is-Concat!18242 (regOne!23428 (regex!6553 (h!47331 rules!2768))))) b!3946577))

(assert (= (and b!3946100 (is-Star!11458 (regOne!23428 (regex!6553 (h!47331 rules!2768))))) b!3946578))

(assert (= (and b!3946100 (is-Union!11458 (regOne!23428 (regex!6553 (h!47331 rules!2768))))) b!3946579))

(declare-fun b!3946581 () Bool)

(declare-fun e!2442142 () Bool)

(declare-fun tp!1201488 () Bool)

(declare-fun tp!1201492 () Bool)

(assert (=> b!3946581 (= e!2442142 (and tp!1201488 tp!1201492))))

(declare-fun b!3946583 () Bool)

(declare-fun tp!1201490 () Bool)

(declare-fun tp!1201491 () Bool)

(assert (=> b!3946583 (= e!2442142 (and tp!1201490 tp!1201491))))

(declare-fun b!3946582 () Bool)

(declare-fun tp!1201489 () Bool)

(assert (=> b!3946582 (= e!2442142 tp!1201489)))

(declare-fun b!3946580 () Bool)

(assert (=> b!3946580 (= e!2442142 tp_is_empty!19887)))

(assert (=> b!3946100 (= tp!1201383 e!2442142)))

(assert (= (and b!3946100 (is-ElementMatch!11458 (regTwo!23428 (regex!6553 (h!47331 rules!2768))))) b!3946580))

(assert (= (and b!3946100 (is-Concat!18242 (regTwo!23428 (regex!6553 (h!47331 rules!2768))))) b!3946581))

(assert (= (and b!3946100 (is-Star!11458 (regTwo!23428 (regex!6553 (h!47331 rules!2768))))) b!3946582))

(assert (= (and b!3946100 (is-Union!11458 (regTwo!23428 (regex!6553 (h!47331 rules!2768))))) b!3946583))

(declare-fun b!3946587 () Bool)

(declare-fun b_free!108161 () Bool)

(declare-fun b_next!108865 () Bool)

(assert (=> b!3946587 (= b_free!108161 (not b_next!108865))))

(declare-fun tb!237089 () Bool)

(declare-fun t!327864 () Bool)

(assert (=> (and b!3946587 (= (toValue!9025 (transformation!6553 (rule!9517 (h!47332 (t!327699 (t!327699 suffixTokens!72)))))) (toValue!9025 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525)))))) t!327864) tb!237089))

(declare-fun result!287156 () Bool)

(assert (= result!287156 result!287002))

(assert (=> d!1170478 t!327864))

(declare-fun tb!237091 () Bool)

(declare-fun t!327866 () Bool)

(assert (=> (and b!3946587 (= (toValue!9025 (transformation!6553 (rule!9517 (h!47332 (t!327699 (t!327699 suffixTokens!72)))))) (toValue!9025 (transformation!6553 (rule!9517 (_1!23733 (get!13842 lt!1379570)))))) t!327866) tb!237091))

(declare-fun result!287158 () Bool)

(assert (= result!287158 result!287094))

(assert (=> d!1170566 t!327866))

(declare-fun tp!1201497 () Bool)

(declare-fun b_and!302003 () Bool)

(assert (=> b!3946587 (= tp!1201497 (and (=> t!327864 result!287156) (=> t!327866 result!287158) b_and!302003))))

(declare-fun b_free!108163 () Bool)

(declare-fun b_next!108867 () Bool)

(assert (=> b!3946587 (= b_free!108163 (not b_next!108867))))

(declare-fun tb!237093 () Bool)

(declare-fun t!327868 () Bool)

(assert (=> (and b!3946587 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 (t!327699 suffixTokens!72)))))) (toChars!8884 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525)))))) t!327868) tb!237093))

(declare-fun result!287160 () Bool)

(assert (= result!287160 result!286996))

(assert (=> d!1170460 t!327868))

(declare-fun t!327870 () Bool)

(declare-fun tb!237095 () Bool)

(assert (=> (and b!3946587 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 (t!327699 suffixTokens!72)))))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72))))) t!327870) tb!237095))

(declare-fun result!287162 () Bool)

(assert (= result!287162 result!286986))

(assert (=> b!3945907 t!327870))

(declare-fun t!327872 () Bool)

(declare-fun tb!237097 () Bool)

(assert (=> (and b!3946587 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 (t!327699 suffixTokens!72)))))) (toChars!8884 (transformation!6553 (rule!9517 (_1!23733 (get!13842 lt!1379570)))))) t!327872) tb!237097))

(declare-fun result!287164 () Bool)

(assert (= result!287164 result!287118))

(assert (=> d!1170652 t!327872))

(declare-fun tb!237099 () Bool)

(declare-fun t!327874 () Bool)

(assert (=> (and b!3946587 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 (t!327699 suffixTokens!72)))))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 prefixTokens!80)))))) t!327874) tb!237099))

(declare-fun result!287166 () Bool)

(assert (= result!287166 result!287142))

(assert (=> b!3946544 t!327874))

(declare-fun t!327876 () Bool)

(declare-fun tb!237101 () Bool)

(assert (=> (and b!3946587 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 (t!327699 suffixTokens!72)))))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 suffixTokens!72)))))) t!327876) tb!237101))

(declare-fun result!287168 () Bool)

(assert (= result!287168 result!287106))

(assert (=> b!3946276 t!327876))

(declare-fun tb!237103 () Bool)

(declare-fun t!327878 () Bool)

(assert (=> (and b!3946587 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 (t!327699 suffixTokens!72)))))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80))))) t!327878) tb!237103))

(declare-fun result!287170 () Bool)

(assert (= result!287170 result!286974))

(assert (=> b!3945826 t!327878))

(declare-fun b_and!302005 () Bool)

(declare-fun tp!1201495 () Bool)

(assert (=> b!3946587 (= tp!1201495 (and (=> t!327870 result!287162) (=> t!327868 result!287160) (=> t!327876 result!287168) (=> t!327878 result!287170) (=> t!327874 result!287166) (=> t!327872 result!287164) b_and!302005))))

(declare-fun tp!1201494 () Bool)

(declare-fun e!2442146 () Bool)

(declare-fun e!2442144 () Bool)

(declare-fun b!3946586 () Bool)

(assert (=> b!3946586 (= e!2442144 (and tp!1201494 (inv!56130 (tag!7413 (rule!9517 (h!47332 (t!327699 (t!327699 suffixTokens!72)))))) (inv!56134 (transformation!6553 (rule!9517 (h!47332 (t!327699 (t!327699 suffixTokens!72)))))) e!2442146))))

(declare-fun e!2442145 () Bool)

(assert (=> b!3946089 (= tp!1201367 e!2442145)))

(declare-fun e!2442148 () Bool)

(declare-fun b!3946585 () Bool)

(declare-fun tp!1201496 () Bool)

(assert (=> b!3946585 (= e!2442148 (and (inv!21 (value!207396 (h!47332 (t!327699 (t!327699 suffixTokens!72))))) e!2442144 tp!1201496))))

(assert (=> b!3946587 (= e!2442146 (and tp!1201497 tp!1201495))))

(declare-fun tp!1201493 () Bool)

(declare-fun b!3946584 () Bool)

(assert (=> b!3946584 (= e!2442145 (and (inv!56133 (h!47332 (t!327699 (t!327699 suffixTokens!72)))) e!2442148 tp!1201493))))

(assert (= b!3946586 b!3946587))

(assert (= b!3946585 b!3946586))

(assert (= b!3946584 b!3946585))

(assert (= (and b!3946089 (is-Cons!41912 (t!327699 (t!327699 suffixTokens!72)))) b!3946584))

(declare-fun m!4515509 () Bool)

(assert (=> b!3946586 m!4515509))

(declare-fun m!4515511 () Bool)

(assert (=> b!3946586 m!4515511))

(declare-fun m!4515513 () Bool)

(assert (=> b!3946585 m!4515513))

(declare-fun m!4515515 () Bool)

(assert (=> b!3946584 m!4515515))

(declare-fun b!3946588 () Bool)

(declare-fun e!2442149 () Bool)

(declare-fun tp!1201498 () Bool)

(assert (=> b!3946588 (= e!2442149 (and tp_is_empty!19887 tp!1201498))))

(assert (=> b!3946035 (= tp!1201322 e!2442149)))

(assert (= (and b!3946035 (is-Cons!41910 (t!327697 (t!327697 prefix!426)))) b!3946588))

(declare-fun b!3946589 () Bool)

(declare-fun e!2442150 () Bool)

(declare-fun tp!1201499 () Bool)

(assert (=> b!3946589 (= e!2442150 (and tp_is_empty!19887 tp!1201499))))

(assert (=> b!3946077 (= tp!1201354 e!2442150)))

(assert (= (and b!3946077 (is-Cons!41910 (t!327697 (originalCharacters!7153 (h!47332 prefixTokens!80))))) b!3946589))

(declare-fun e!2442151 () Bool)

(declare-fun tp!1201500 () Bool)

(declare-fun tp!1201501 () Bool)

(declare-fun b!3946590 () Bool)

(assert (=> b!3946590 (= e!2442151 (and (inv!56137 (left!31915 (c!685366 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))) (value!207396 (_1!23733 (v!39310 lt!1379525))))))) tp!1201501 (inv!56137 (right!32245 (c!685366 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))) (value!207396 (_1!23733 (v!39310 lt!1379525))))))) tp!1201500))))

(declare-fun b!3946592 () Bool)

(declare-fun e!2442152 () Bool)

(declare-fun tp!1201502 () Bool)

(assert (=> b!3946592 (= e!2442152 tp!1201502)))

(declare-fun b!3946591 () Bool)

(assert (=> b!3946591 (= e!2442151 (and (inv!56143 (xs!16070 (c!685366 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))) (value!207396 (_1!23733 (v!39310 lt!1379525))))))) e!2442152))))

(assert (=> b!3945915 (= tp!1201318 (and (inv!56137 (c!685366 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))) (value!207396 (_1!23733 (v!39310 lt!1379525)))))) e!2442151))))

(assert (= (and b!3945915 (is-Node!12764 (c!685366 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))) (value!207396 (_1!23733 (v!39310 lt!1379525))))))) b!3946590))

(assert (= b!3946591 b!3946592))

(assert (= (and b!3945915 (is-Leaf!19748 (c!685366 (dynLambda!17956 (toChars!8884 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))) (value!207396 (_1!23733 (v!39310 lt!1379525))))))) b!3946591))

(declare-fun m!4515517 () Bool)

(assert (=> b!3946590 m!4515517))

(declare-fun m!4515519 () Bool)

(assert (=> b!3946590 m!4515519))

(declare-fun m!4515521 () Bool)

(assert (=> b!3946591 m!4515521))

(assert (=> b!3945915 m!4514707))

(declare-fun b!3946594 () Bool)

(declare-fun e!2442153 () Bool)

(declare-fun tp!1201503 () Bool)

(declare-fun tp!1201507 () Bool)

(assert (=> b!3946594 (= e!2442153 (and tp!1201503 tp!1201507))))

(declare-fun b!3946596 () Bool)

(declare-fun tp!1201505 () Bool)

(declare-fun tp!1201506 () Bool)

(assert (=> b!3946596 (= e!2442153 (and tp!1201505 tp!1201506))))

(declare-fun b!3946595 () Bool)

(declare-fun tp!1201504 () Bool)

(assert (=> b!3946595 (= e!2442153 tp!1201504)))

(declare-fun b!3946593 () Bool)

(assert (=> b!3946593 (= e!2442153 tp_is_empty!19887)))

(assert (=> b!3946070 (= tp!1201349 e!2442153)))

(assert (= (and b!3946070 (is-ElementMatch!11458 (regOne!23428 (regex!6553 (rule!9517 (h!47332 suffixTokens!72)))))) b!3946593))

(assert (= (and b!3946070 (is-Concat!18242 (regOne!23428 (regex!6553 (rule!9517 (h!47332 suffixTokens!72)))))) b!3946594))

(assert (= (and b!3946070 (is-Star!11458 (regOne!23428 (regex!6553 (rule!9517 (h!47332 suffixTokens!72)))))) b!3946595))

(assert (= (and b!3946070 (is-Union!11458 (regOne!23428 (regex!6553 (rule!9517 (h!47332 suffixTokens!72)))))) b!3946596))

(declare-fun b!3946598 () Bool)

(declare-fun e!2442154 () Bool)

(declare-fun tp!1201508 () Bool)

(declare-fun tp!1201512 () Bool)

(assert (=> b!3946598 (= e!2442154 (and tp!1201508 tp!1201512))))

(declare-fun b!3946600 () Bool)

(declare-fun tp!1201510 () Bool)

(declare-fun tp!1201511 () Bool)

(assert (=> b!3946600 (= e!2442154 (and tp!1201510 tp!1201511))))

(declare-fun b!3946599 () Bool)

(declare-fun tp!1201509 () Bool)

(assert (=> b!3946599 (= e!2442154 tp!1201509)))

(declare-fun b!3946597 () Bool)

(assert (=> b!3946597 (= e!2442154 tp_is_empty!19887)))

(assert (=> b!3946070 (= tp!1201353 e!2442154)))

(assert (= (and b!3946070 (is-ElementMatch!11458 (regTwo!23428 (regex!6553 (rule!9517 (h!47332 suffixTokens!72)))))) b!3946597))

(assert (= (and b!3946070 (is-Concat!18242 (regTwo!23428 (regex!6553 (rule!9517 (h!47332 suffixTokens!72)))))) b!3946598))

(assert (= (and b!3946070 (is-Star!11458 (regTwo!23428 (regex!6553 (rule!9517 (h!47332 suffixTokens!72)))))) b!3946599))

(assert (= (and b!3946070 (is-Union!11458 (regTwo!23428 (regex!6553 (rule!9517 (h!47332 suffixTokens!72)))))) b!3946600))

(declare-fun b!3946602 () Bool)

(declare-fun e!2442155 () Bool)

(declare-fun tp!1201513 () Bool)

(declare-fun tp!1201517 () Bool)

(assert (=> b!3946602 (= e!2442155 (and tp!1201513 tp!1201517))))

(declare-fun b!3946604 () Bool)

(declare-fun tp!1201515 () Bool)

(declare-fun tp!1201516 () Bool)

(assert (=> b!3946604 (= e!2442155 (and tp!1201515 tp!1201516))))

(declare-fun b!3946603 () Bool)

(declare-fun tp!1201514 () Bool)

(assert (=> b!3946603 (= e!2442155 tp!1201514)))

(declare-fun b!3946601 () Bool)

(assert (=> b!3946601 (= e!2442155 tp_is_empty!19887)))

(assert (=> b!3946098 (= tp!1201376 e!2442155)))

(assert (= (and b!3946098 (is-ElementMatch!11458 (regOne!23429 (regex!6553 (rule!9517 (h!47332 prefixTokens!80)))))) b!3946601))

(assert (= (and b!3946098 (is-Concat!18242 (regOne!23429 (regex!6553 (rule!9517 (h!47332 prefixTokens!80)))))) b!3946602))

(assert (= (and b!3946098 (is-Star!11458 (regOne!23429 (regex!6553 (rule!9517 (h!47332 prefixTokens!80)))))) b!3946603))

(assert (= (and b!3946098 (is-Union!11458 (regOne!23429 (regex!6553 (rule!9517 (h!47332 prefixTokens!80)))))) b!3946604))

(declare-fun b!3946606 () Bool)

(declare-fun e!2442156 () Bool)

(declare-fun tp!1201518 () Bool)

(declare-fun tp!1201522 () Bool)

(assert (=> b!3946606 (= e!2442156 (and tp!1201518 tp!1201522))))

(declare-fun b!3946608 () Bool)

(declare-fun tp!1201520 () Bool)

(declare-fun tp!1201521 () Bool)

(assert (=> b!3946608 (= e!2442156 (and tp!1201520 tp!1201521))))

(declare-fun b!3946607 () Bool)

(declare-fun tp!1201519 () Bool)

(assert (=> b!3946607 (= e!2442156 tp!1201519)))

(declare-fun b!3946605 () Bool)

(assert (=> b!3946605 (= e!2442156 tp_is_empty!19887)))

(assert (=> b!3946098 (= tp!1201377 e!2442156)))

(assert (= (and b!3946098 (is-ElementMatch!11458 (regTwo!23429 (regex!6553 (rule!9517 (h!47332 prefixTokens!80)))))) b!3946605))

(assert (= (and b!3946098 (is-Concat!18242 (regTwo!23429 (regex!6553 (rule!9517 (h!47332 prefixTokens!80)))))) b!3946606))

(assert (= (and b!3946098 (is-Star!11458 (regTwo!23429 (regex!6553 (rule!9517 (h!47332 prefixTokens!80)))))) b!3946607))

(assert (= (and b!3946098 (is-Union!11458 (regTwo!23429 (regex!6553 (rule!9517 (h!47332 prefixTokens!80)))))) b!3946608))

(declare-fun b!3946610 () Bool)

(declare-fun e!2442157 () Bool)

(declare-fun tp!1201523 () Bool)

(declare-fun tp!1201527 () Bool)

(assert (=> b!3946610 (= e!2442157 (and tp!1201523 tp!1201527))))

(declare-fun b!3946612 () Bool)

(declare-fun tp!1201525 () Bool)

(declare-fun tp!1201526 () Bool)

(assert (=> b!3946612 (= e!2442157 (and tp!1201525 tp!1201526))))

(declare-fun b!3946611 () Bool)

(declare-fun tp!1201524 () Bool)

(assert (=> b!3946611 (= e!2442157 tp!1201524)))

(declare-fun b!3946609 () Bool)

(assert (=> b!3946609 (= e!2442157 tp_is_empty!19887)))

(assert (=> b!3946097 (= tp!1201375 e!2442157)))

(assert (= (and b!3946097 (is-ElementMatch!11458 (reg!11787 (regex!6553 (rule!9517 (h!47332 prefixTokens!80)))))) b!3946609))

(assert (= (and b!3946097 (is-Concat!18242 (reg!11787 (regex!6553 (rule!9517 (h!47332 prefixTokens!80)))))) b!3946610))

(assert (= (and b!3946097 (is-Star!11458 (reg!11787 (regex!6553 (rule!9517 (h!47332 prefixTokens!80)))))) b!3946611))

(assert (= (and b!3946097 (is-Union!11458 (reg!11787 (regex!6553 (rule!9517 (h!47332 prefixTokens!80)))))) b!3946612))

(declare-fun b!3946614 () Bool)

(declare-fun e!2442158 () Bool)

(declare-fun tp!1201528 () Bool)

(declare-fun tp!1201532 () Bool)

(assert (=> b!3946614 (= e!2442158 (and tp!1201528 tp!1201532))))

(declare-fun b!3946616 () Bool)

(declare-fun tp!1201530 () Bool)

(declare-fun tp!1201531 () Bool)

(assert (=> b!3946616 (= e!2442158 (and tp!1201530 tp!1201531))))

(declare-fun b!3946615 () Bool)

(declare-fun tp!1201529 () Bool)

(assert (=> b!3946615 (= e!2442158 tp!1201529)))

(declare-fun b!3946613 () Bool)

(assert (=> b!3946613 (= e!2442158 tp_is_empty!19887)))

(assert (=> b!3946091 (= tp!1201368 e!2442158)))

(assert (= (and b!3946091 (is-ElementMatch!11458 (regex!6553 (rule!9517 (h!47332 (t!327699 suffixTokens!72)))))) b!3946613))

(assert (= (and b!3946091 (is-Concat!18242 (regex!6553 (rule!9517 (h!47332 (t!327699 suffixTokens!72)))))) b!3946614))

(assert (= (and b!3946091 (is-Star!11458 (regex!6553 (rule!9517 (h!47332 (t!327699 suffixTokens!72)))))) b!3946615))

(assert (= (and b!3946091 (is-Union!11458 (regex!6553 (rule!9517 (h!47332 (t!327699 suffixTokens!72)))))) b!3946616))

(declare-fun b!3946618 () Bool)

(declare-fun e!2442159 () Bool)

(declare-fun tp!1201533 () Bool)

(declare-fun tp!1201537 () Bool)

(assert (=> b!3946618 (= e!2442159 (and tp!1201533 tp!1201537))))

(declare-fun b!3946620 () Bool)

(declare-fun tp!1201535 () Bool)

(declare-fun tp!1201536 () Bool)

(assert (=> b!3946620 (= e!2442159 (and tp!1201535 tp!1201536))))

(declare-fun b!3946619 () Bool)

(declare-fun tp!1201534 () Bool)

(assert (=> b!3946619 (= e!2442159 tp!1201534)))

(declare-fun b!3946617 () Bool)

(assert (=> b!3946617 (= e!2442159 tp_is_empty!19887)))

(assert (=> b!3946096 (= tp!1201374 e!2442159)))

(assert (= (and b!3946096 (is-ElementMatch!11458 (regOne!23428 (regex!6553 (rule!9517 (h!47332 prefixTokens!80)))))) b!3946617))

(assert (= (and b!3946096 (is-Concat!18242 (regOne!23428 (regex!6553 (rule!9517 (h!47332 prefixTokens!80)))))) b!3946618))

(assert (= (and b!3946096 (is-Star!11458 (regOne!23428 (regex!6553 (rule!9517 (h!47332 prefixTokens!80)))))) b!3946619))

(assert (= (and b!3946096 (is-Union!11458 (regOne!23428 (regex!6553 (rule!9517 (h!47332 prefixTokens!80)))))) b!3946620))

(declare-fun b!3946622 () Bool)

(declare-fun e!2442160 () Bool)

(declare-fun tp!1201538 () Bool)

(declare-fun tp!1201542 () Bool)

(assert (=> b!3946622 (= e!2442160 (and tp!1201538 tp!1201542))))

(declare-fun b!3946624 () Bool)

(declare-fun tp!1201540 () Bool)

(declare-fun tp!1201541 () Bool)

(assert (=> b!3946624 (= e!2442160 (and tp!1201540 tp!1201541))))

(declare-fun b!3946623 () Bool)

(declare-fun tp!1201539 () Bool)

(assert (=> b!3946623 (= e!2442160 tp!1201539)))

(declare-fun b!3946621 () Bool)

(assert (=> b!3946621 (= e!2442160 tp_is_empty!19887)))

(assert (=> b!3946096 (= tp!1201378 e!2442160)))

(assert (= (and b!3946096 (is-ElementMatch!11458 (regTwo!23428 (regex!6553 (rule!9517 (h!47332 prefixTokens!80)))))) b!3946621))

(assert (= (and b!3946096 (is-Concat!18242 (regTwo!23428 (regex!6553 (rule!9517 (h!47332 prefixTokens!80)))))) b!3946622))

(assert (= (and b!3946096 (is-Star!11458 (regTwo!23428 (regex!6553 (rule!9517 (h!47332 prefixTokens!80)))))) b!3946623))

(assert (= (and b!3946096 (is-Union!11458 (regTwo!23428 (regex!6553 (rule!9517 (h!47332 prefixTokens!80)))))) b!3946624))

(declare-fun b!3946625 () Bool)

(declare-fun e!2442161 () Bool)

(declare-fun tp!1201543 () Bool)

(assert (=> b!3946625 (= e!2442161 (and tp_is_empty!19887 tp!1201543))))

(assert (=> b!3946090 (= tp!1201370 e!2442161)))

(assert (= (and b!3946090 (is-Cons!41910 (originalCharacters!7153 (h!47332 (t!327699 suffixTokens!72))))) b!3946625))

(declare-fun b!3946627 () Bool)

(declare-fun e!2442162 () Bool)

(declare-fun tp!1201544 () Bool)

(declare-fun tp!1201548 () Bool)

(assert (=> b!3946627 (= e!2442162 (and tp!1201544 tp!1201548))))

(declare-fun b!3946629 () Bool)

(declare-fun tp!1201546 () Bool)

(declare-fun tp!1201547 () Bool)

(assert (=> b!3946629 (= e!2442162 (and tp!1201546 tp!1201547))))

(declare-fun b!3946628 () Bool)

(declare-fun tp!1201545 () Bool)

(assert (=> b!3946628 (= e!2442162 tp!1201545)))

(declare-fun b!3946626 () Bool)

(assert (=> b!3946626 (= e!2442162 tp_is_empty!19887)))

(assert (=> b!3946056 (= tp!1201334 e!2442162)))

(assert (= (and b!3946056 (is-ElementMatch!11458 (regex!6553 (rule!9517 (h!47332 (t!327699 prefixTokens!80)))))) b!3946626))

(assert (= (and b!3946056 (is-Concat!18242 (regex!6553 (rule!9517 (h!47332 (t!327699 prefixTokens!80)))))) b!3946627))

(assert (= (and b!3946056 (is-Star!11458 (regex!6553 (rule!9517 (h!47332 (t!327699 prefixTokens!80)))))) b!3946628))

(assert (= (and b!3946056 (is-Union!11458 (regex!6553 (rule!9517 (h!47332 (t!327699 prefixTokens!80)))))) b!3946629))

(declare-fun b!3946631 () Bool)

(declare-fun e!2442163 () Bool)

(declare-fun tp!1201549 () Bool)

(declare-fun tp!1201553 () Bool)

(assert (=> b!3946631 (= e!2442163 (and tp!1201549 tp!1201553))))

(declare-fun b!3946633 () Bool)

(declare-fun tp!1201551 () Bool)

(declare-fun tp!1201552 () Bool)

(assert (=> b!3946633 (= e!2442163 (and tp!1201551 tp!1201552))))

(declare-fun b!3946632 () Bool)

(declare-fun tp!1201550 () Bool)

(assert (=> b!3946632 (= e!2442163 tp!1201550)))

(declare-fun b!3946630 () Bool)

(assert (=> b!3946630 (= e!2442163 tp_is_empty!19887)))

(assert (=> b!3946087 (= tp!1201365 e!2442163)))

(assert (= (and b!3946087 (is-ElementMatch!11458 (regex!6553 (h!47331 (t!327698 rules!2768))))) b!3946630))

(assert (= (and b!3946087 (is-Concat!18242 (regex!6553 (h!47331 (t!327698 rules!2768))))) b!3946631))

(assert (= (and b!3946087 (is-Star!11458 (regex!6553 (h!47331 (t!327698 rules!2768))))) b!3946632))

(assert (= (and b!3946087 (is-Union!11458 (regex!6553 (h!47331 (t!327698 rules!2768))))) b!3946633))

(declare-fun b!3946635 () Bool)

(declare-fun e!2442164 () Bool)

(declare-fun tp!1201554 () Bool)

(declare-fun tp!1201558 () Bool)

(assert (=> b!3946635 (= e!2442164 (and tp!1201554 tp!1201558))))

(declare-fun b!3946637 () Bool)

(declare-fun tp!1201556 () Bool)

(declare-fun tp!1201557 () Bool)

(assert (=> b!3946637 (= e!2442164 (and tp!1201556 tp!1201557))))

(declare-fun b!3946636 () Bool)

(declare-fun tp!1201555 () Bool)

(assert (=> b!3946636 (= e!2442164 tp!1201555)))

(declare-fun b!3946634 () Bool)

(assert (=> b!3946634 (= e!2442164 tp_is_empty!19887)))

(assert (=> b!3946072 (= tp!1201351 e!2442164)))

(assert (= (and b!3946072 (is-ElementMatch!11458 (regOne!23429 (regex!6553 (rule!9517 (h!47332 suffixTokens!72)))))) b!3946634))

(assert (= (and b!3946072 (is-Concat!18242 (regOne!23429 (regex!6553 (rule!9517 (h!47332 suffixTokens!72)))))) b!3946635))

(assert (= (and b!3946072 (is-Star!11458 (regOne!23429 (regex!6553 (rule!9517 (h!47332 suffixTokens!72)))))) b!3946636))

(assert (= (and b!3946072 (is-Union!11458 (regOne!23429 (regex!6553 (rule!9517 (h!47332 suffixTokens!72)))))) b!3946637))

(declare-fun b!3946639 () Bool)

(declare-fun e!2442165 () Bool)

(declare-fun tp!1201559 () Bool)

(declare-fun tp!1201563 () Bool)

(assert (=> b!3946639 (= e!2442165 (and tp!1201559 tp!1201563))))

(declare-fun b!3946641 () Bool)

(declare-fun tp!1201561 () Bool)

(declare-fun tp!1201562 () Bool)

(assert (=> b!3946641 (= e!2442165 (and tp!1201561 tp!1201562))))

(declare-fun b!3946640 () Bool)

(declare-fun tp!1201560 () Bool)

(assert (=> b!3946640 (= e!2442165 tp!1201560)))

(declare-fun b!3946638 () Bool)

(assert (=> b!3946638 (= e!2442165 tp_is_empty!19887)))

(assert (=> b!3946072 (= tp!1201352 e!2442165)))

(assert (= (and b!3946072 (is-ElementMatch!11458 (regTwo!23429 (regex!6553 (rule!9517 (h!47332 suffixTokens!72)))))) b!3946638))

(assert (= (and b!3946072 (is-Concat!18242 (regTwo!23429 (regex!6553 (rule!9517 (h!47332 suffixTokens!72)))))) b!3946639))

(assert (= (and b!3946072 (is-Star!11458 (regTwo!23429 (regex!6553 (rule!9517 (h!47332 suffixTokens!72)))))) b!3946640))

(assert (= (and b!3946072 (is-Union!11458 (regTwo!23429 (regex!6553 (rule!9517 (h!47332 suffixTokens!72)))))) b!3946641))

(declare-fun b!3946644 () Bool)

(declare-fun b_free!108165 () Bool)

(declare-fun b_next!108869 () Bool)

(assert (=> b!3946644 (= b_free!108165 (not b_next!108869))))

(declare-fun t!327880 () Bool)

(declare-fun tb!237105 () Bool)

(assert (=> (and b!3946644 (= (toValue!9025 (transformation!6553 (h!47331 (t!327698 (t!327698 rules!2768))))) (toValue!9025 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525)))))) t!327880) tb!237105))

(declare-fun result!287172 () Bool)

(assert (= result!287172 result!287002))

(assert (=> d!1170478 t!327880))

(declare-fun t!327882 () Bool)

(declare-fun tb!237107 () Bool)

(assert (=> (and b!3946644 (= (toValue!9025 (transformation!6553 (h!47331 (t!327698 (t!327698 rules!2768))))) (toValue!9025 (transformation!6553 (rule!9517 (_1!23733 (get!13842 lt!1379570)))))) t!327882) tb!237107))

(declare-fun result!287174 () Bool)

(assert (= result!287174 result!287094))

(assert (=> d!1170566 t!327882))

(declare-fun b_and!302007 () Bool)

(declare-fun tp!1201565 () Bool)

(assert (=> b!3946644 (= tp!1201565 (and (=> t!327880 result!287172) (=> t!327882 result!287174) b_and!302007))))

(declare-fun b_free!108167 () Bool)

(declare-fun b_next!108871 () Bool)

(assert (=> b!3946644 (= b_free!108167 (not b_next!108871))))

(declare-fun tb!237109 () Bool)

(declare-fun t!327884 () Bool)

(assert (=> (and b!3946644 (= (toChars!8884 (transformation!6553 (h!47331 (t!327698 (t!327698 rules!2768))))) (toChars!8884 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525)))))) t!327884) tb!237109))

(declare-fun result!287176 () Bool)

(assert (= result!287176 result!286996))

(assert (=> d!1170460 t!327884))

(declare-fun tb!237111 () Bool)

(declare-fun t!327886 () Bool)

(assert (=> (and b!3946644 (= (toChars!8884 (transformation!6553 (h!47331 (t!327698 (t!327698 rules!2768))))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72))))) t!327886) tb!237111))

(declare-fun result!287178 () Bool)

(assert (= result!287178 result!286986))

(assert (=> b!3945907 t!327886))

(declare-fun tb!237113 () Bool)

(declare-fun t!327888 () Bool)

(assert (=> (and b!3946644 (= (toChars!8884 (transformation!6553 (h!47331 (t!327698 (t!327698 rules!2768))))) (toChars!8884 (transformation!6553 (rule!9517 (_1!23733 (get!13842 lt!1379570)))))) t!327888) tb!237113))

(declare-fun result!287180 () Bool)

(assert (= result!287180 result!287118))

(assert (=> d!1170652 t!327888))

(declare-fun t!327890 () Bool)

(declare-fun tb!237115 () Bool)

(assert (=> (and b!3946644 (= (toChars!8884 (transformation!6553 (h!47331 (t!327698 (t!327698 rules!2768))))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 prefixTokens!80)))))) t!327890) tb!237115))

(declare-fun result!287182 () Bool)

(assert (= result!287182 result!287142))

(assert (=> b!3946544 t!327890))

(declare-fun tb!237117 () Bool)

(declare-fun t!327892 () Bool)

(assert (=> (and b!3946644 (= (toChars!8884 (transformation!6553 (h!47331 (t!327698 (t!327698 rules!2768))))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 suffixTokens!72)))))) t!327892) tb!237117))

(declare-fun result!287184 () Bool)

(assert (= result!287184 result!287106))

(assert (=> b!3946276 t!327892))

(declare-fun tb!237119 () Bool)

(declare-fun t!327894 () Bool)

(assert (=> (and b!3946644 (= (toChars!8884 (transformation!6553 (h!47331 (t!327698 (t!327698 rules!2768))))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80))))) t!327894) tb!237119))

(declare-fun result!287186 () Bool)

(assert (= result!287186 result!286974))

(assert (=> b!3945826 t!327894))

(declare-fun tp!1201567 () Bool)

(declare-fun b_and!302009 () Bool)

(assert (=> b!3946644 (= tp!1201567 (and (=> t!327894 result!287186) (=> t!327890 result!287182) (=> t!327884 result!287176) (=> t!327892 result!287184) (=> t!327888 result!287180) (=> t!327886 result!287178) b_and!302009))))

(declare-fun e!2442166 () Bool)

(assert (=> b!3946644 (= e!2442166 (and tp!1201565 tp!1201567))))

(declare-fun e!2442168 () Bool)

(declare-fun tp!1201566 () Bool)

(declare-fun b!3946643 () Bool)

(assert (=> b!3946643 (= e!2442168 (and tp!1201566 (inv!56130 (tag!7413 (h!47331 (t!327698 (t!327698 rules!2768))))) (inv!56134 (transformation!6553 (h!47331 (t!327698 (t!327698 rules!2768))))) e!2442166))))

(declare-fun b!3946642 () Bool)

(declare-fun e!2442167 () Bool)

(declare-fun tp!1201564 () Bool)

(assert (=> b!3946642 (= e!2442167 (and e!2442168 tp!1201564))))

(assert (=> b!3946086 (= tp!1201363 e!2442167)))

(assert (= b!3946643 b!3946644))

(assert (= b!3946642 b!3946643))

(assert (= (and b!3946086 (is-Cons!41911 (t!327698 (t!327698 rules!2768)))) b!3946642))

(declare-fun m!4515523 () Bool)

(assert (=> b!3946643 m!4515523))

(declare-fun m!4515525 () Bool)

(assert (=> b!3946643 m!4515525))

(declare-fun b!3946645 () Bool)

(declare-fun e!2442170 () Bool)

(declare-fun tp!1201568 () Bool)

(assert (=> b!3946645 (= e!2442170 (and tp_is_empty!19887 tp!1201568))))

(assert (=> b!3946055 (= tp!1201336 e!2442170)))

(assert (= (and b!3946055 (is-Cons!41910 (originalCharacters!7153 (h!47332 (t!327699 prefixTokens!80))))) b!3946645))

(declare-fun b!3946649 () Bool)

(declare-fun b_free!108169 () Bool)

(declare-fun b_next!108873 () Bool)

(assert (=> b!3946649 (= b_free!108169 (not b_next!108873))))

(declare-fun tb!237121 () Bool)

(declare-fun t!327896 () Bool)

(assert (=> (and b!3946649 (= (toValue!9025 (transformation!6553 (rule!9517 (h!47332 (t!327699 (t!327699 prefixTokens!80)))))) (toValue!9025 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525)))))) t!327896) tb!237121))

(declare-fun result!287188 () Bool)

(assert (= result!287188 result!287002))

(assert (=> d!1170478 t!327896))

(declare-fun tb!237123 () Bool)

(declare-fun t!327898 () Bool)

(assert (=> (and b!3946649 (= (toValue!9025 (transformation!6553 (rule!9517 (h!47332 (t!327699 (t!327699 prefixTokens!80)))))) (toValue!9025 (transformation!6553 (rule!9517 (_1!23733 (get!13842 lt!1379570)))))) t!327898) tb!237123))

(declare-fun result!287190 () Bool)

(assert (= result!287190 result!287094))

(assert (=> d!1170566 t!327898))

(declare-fun b_and!302011 () Bool)

(declare-fun tp!1201573 () Bool)

(assert (=> b!3946649 (= tp!1201573 (and (=> t!327896 result!287188) (=> t!327898 result!287190) b_and!302011))))

(declare-fun b_free!108171 () Bool)

(declare-fun b_next!108875 () Bool)

(assert (=> b!3946649 (= b_free!108171 (not b_next!108875))))

(declare-fun tb!237125 () Bool)

(declare-fun t!327900 () Bool)

(assert (=> (and b!3946649 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 (t!327699 prefixTokens!80)))))) (toChars!8884 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525)))))) t!327900) tb!237125))

(declare-fun result!287192 () Bool)

(assert (= result!287192 result!286996))

(assert (=> d!1170460 t!327900))

(declare-fun tb!237127 () Bool)

(declare-fun t!327902 () Bool)

(assert (=> (and b!3946649 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 (t!327699 prefixTokens!80)))))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72))))) t!327902) tb!237127))

(declare-fun result!287194 () Bool)

(assert (= result!287194 result!286986))

(assert (=> b!3945907 t!327902))

(declare-fun tb!237129 () Bool)

(declare-fun t!327904 () Bool)

(assert (=> (and b!3946649 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 (t!327699 prefixTokens!80)))))) (toChars!8884 (transformation!6553 (rule!9517 (_1!23733 (get!13842 lt!1379570)))))) t!327904) tb!237129))

(declare-fun result!287196 () Bool)

(assert (= result!287196 result!287118))

(assert (=> d!1170652 t!327904))

(declare-fun t!327906 () Bool)

(declare-fun tb!237131 () Bool)

(assert (=> (and b!3946649 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 (t!327699 prefixTokens!80)))))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 prefixTokens!80)))))) t!327906) tb!237131))

(declare-fun result!287198 () Bool)

(assert (= result!287198 result!287142))

(assert (=> b!3946544 t!327906))

(declare-fun t!327908 () Bool)

(declare-fun tb!237133 () Bool)

(assert (=> (and b!3946649 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 (t!327699 prefixTokens!80)))))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 suffixTokens!72)))))) t!327908) tb!237133))

(declare-fun result!287200 () Bool)

(assert (= result!287200 result!287106))

(assert (=> b!3946276 t!327908))

(declare-fun t!327910 () Bool)

(declare-fun tb!237135 () Bool)

(assert (=> (and b!3946649 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 (t!327699 prefixTokens!80)))))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80))))) t!327910) tb!237135))

(declare-fun result!287202 () Bool)

(assert (= result!287202 result!286974))

(assert (=> b!3945826 t!327910))

(declare-fun tp!1201571 () Bool)

(declare-fun b_and!302013 () Bool)

(assert (=> b!3946649 (= tp!1201571 (and (=> t!327900 result!287192) (=> t!327910 result!287202) (=> t!327908 result!287200) (=> t!327904 result!287196) (=> t!327906 result!287198) (=> t!327902 result!287194) b_and!302013))))

(declare-fun tp!1201570 () Bool)

(declare-fun e!2442174 () Bool)

(declare-fun b!3946648 () Bool)

(declare-fun e!2442172 () Bool)

(assert (=> b!3946648 (= e!2442172 (and tp!1201570 (inv!56130 (tag!7413 (rule!9517 (h!47332 (t!327699 (t!327699 prefixTokens!80)))))) (inv!56134 (transformation!6553 (rule!9517 (h!47332 (t!327699 (t!327699 prefixTokens!80)))))) e!2442174))))

(declare-fun e!2442173 () Bool)

(assert (=> b!3946054 (= tp!1201333 e!2442173)))

(declare-fun e!2442176 () Bool)

(declare-fun tp!1201572 () Bool)

(declare-fun b!3946647 () Bool)

(assert (=> b!3946647 (= e!2442176 (and (inv!21 (value!207396 (h!47332 (t!327699 (t!327699 prefixTokens!80))))) e!2442172 tp!1201572))))

(assert (=> b!3946649 (= e!2442174 (and tp!1201573 tp!1201571))))

(declare-fun tp!1201569 () Bool)

(declare-fun b!3946646 () Bool)

(assert (=> b!3946646 (= e!2442173 (and (inv!56133 (h!47332 (t!327699 (t!327699 prefixTokens!80)))) e!2442176 tp!1201569))))

(assert (= b!3946648 b!3946649))

(assert (= b!3946647 b!3946648))

(assert (= b!3946646 b!3946647))

(assert (= (and b!3946054 (is-Cons!41912 (t!327699 (t!327699 prefixTokens!80)))) b!3946646))

(declare-fun m!4515527 () Bool)

(assert (=> b!3946648 m!4515527))

(declare-fun m!4515529 () Bool)

(assert (=> b!3946648 m!4515529))

(declare-fun m!4515531 () Bool)

(assert (=> b!3946647 m!4515531))

(declare-fun m!4515533 () Bool)

(assert (=> b!3946646 m!4515533))

(declare-fun b!3946651 () Bool)

(declare-fun e!2442177 () Bool)

(declare-fun tp!1201574 () Bool)

(declare-fun tp!1201578 () Bool)

(assert (=> b!3946651 (= e!2442177 (and tp!1201574 tp!1201578))))

(declare-fun b!3946653 () Bool)

(declare-fun tp!1201576 () Bool)

(declare-fun tp!1201577 () Bool)

(assert (=> b!3946653 (= e!2442177 (and tp!1201576 tp!1201577))))

(declare-fun b!3946652 () Bool)

(declare-fun tp!1201575 () Bool)

(assert (=> b!3946652 (= e!2442177 tp!1201575)))

(declare-fun b!3946650 () Bool)

(assert (=> b!3946650 (= e!2442177 tp_is_empty!19887)))

(assert (=> b!3946071 (= tp!1201350 e!2442177)))

(assert (= (and b!3946071 (is-ElementMatch!11458 (reg!11787 (regex!6553 (rule!9517 (h!47332 suffixTokens!72)))))) b!3946650))

(assert (= (and b!3946071 (is-Concat!18242 (reg!11787 (regex!6553 (rule!9517 (h!47332 suffixTokens!72)))))) b!3946651))

(assert (= (and b!3946071 (is-Star!11458 (reg!11787 (regex!6553 (rule!9517 (h!47332 suffixTokens!72)))))) b!3946652))

(assert (= (and b!3946071 (is-Union!11458 (reg!11787 (regex!6553 (rule!9517 (h!47332 suffixTokens!72)))))) b!3946653))

(declare-fun b_lambda!115437 () Bool)

(assert (= b_lambda!115429 (or (and b!3946587 b_free!108163 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 (t!327699 suffixTokens!72)))))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 suffixTokens!72))))))) (and b!3946057 b_free!108139 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 prefixTokens!80))))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 suffixTokens!72))))))) (and b!3946649 b_free!108171 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 (t!327699 prefixTokens!80)))))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 suffixTokens!72))))))) (and b!3945751 b_free!108123 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72)))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 suffixTokens!72))))))) (and b!3946092 b_free!108147) (and b!3945734 b_free!108119 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80)))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 suffixTokens!72))))))) (and b!3946088 b_free!108143 (= (toChars!8884 (transformation!6553 (h!47331 (t!327698 rules!2768)))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 suffixTokens!72))))))) (and b!3945733 b_free!108115 (= (toChars!8884 (transformation!6553 (h!47331 rules!2768))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 suffixTokens!72))))))) (and b!3946644 b_free!108167 (= (toChars!8884 (transformation!6553 (h!47331 (t!327698 (t!327698 rules!2768))))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 suffixTokens!72))))))) b_lambda!115437)))

(declare-fun b_lambda!115439 () Bool)

(assert (= b_lambda!115435 (or (and b!3946649 b_free!108171 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 (t!327699 prefixTokens!80)))))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 prefixTokens!80))))))) (and b!3946587 b_free!108163 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 (t!327699 suffixTokens!72)))))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 prefixTokens!80))))))) (and b!3945733 b_free!108115 (= (toChars!8884 (transformation!6553 (h!47331 rules!2768))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 prefixTokens!80))))))) (and b!3946057 b_free!108139) (and b!3946644 b_free!108167 (= (toChars!8884 (transformation!6553 (h!47331 (t!327698 (t!327698 rules!2768))))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 prefixTokens!80))))))) (and b!3946092 b_free!108147 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 suffixTokens!72))))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 prefixTokens!80))))))) (and b!3946088 b_free!108143 (= (toChars!8884 (transformation!6553 (h!47331 (t!327698 rules!2768)))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 prefixTokens!80))))))) (and b!3945734 b_free!108119 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80)))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 prefixTokens!80))))))) (and b!3945751 b_free!108123 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72)))) (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 prefixTokens!80))))))) b_lambda!115439)))

(declare-fun b_lambda!115441 () Bool)

(assert (= b_lambda!115411 (or (and b!3946088 b_free!108141 (= (toValue!9025 (transformation!6553 (h!47331 (t!327698 rules!2768)))) (toValue!9025 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))))) (and b!3946057 b_free!108137 (= (toValue!9025 (transformation!6553 (rule!9517 (h!47332 (t!327699 prefixTokens!80))))) (toValue!9025 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))))) (and b!3945734 b_free!108117 (= (toValue!9025 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80)))) (toValue!9025 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))))) (and b!3946092 b_free!108145 (= (toValue!9025 (transformation!6553 (rule!9517 (h!47332 (t!327699 suffixTokens!72))))) (toValue!9025 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))))) (and b!3946649 b_free!108169 (= (toValue!9025 (transformation!6553 (rule!9517 (h!47332 (t!327699 (t!327699 prefixTokens!80)))))) (toValue!9025 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))))) (and b!3945751 b_free!108121 (= (toValue!9025 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72)))) (toValue!9025 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))))) (and b!3946587 b_free!108161 (= (toValue!9025 (transformation!6553 (rule!9517 (h!47332 (t!327699 (t!327699 suffixTokens!72)))))) (toValue!9025 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))))) (and b!3946644 b_free!108165 (= (toValue!9025 (transformation!6553 (h!47331 (t!327698 (t!327698 rules!2768))))) (toValue!9025 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))))) (and b!3945733 b_free!108113 (= (toValue!9025 (transformation!6553 (h!47331 rules!2768))) (toValue!9025 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))))) b_lambda!115441)))

(declare-fun b_lambda!115443 () Bool)

(assert (= b_lambda!115409 (or (and b!3946057 b_free!108139 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 prefixTokens!80))))) (toChars!8884 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))))) (and b!3945734 b_free!108119 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 prefixTokens!80)))) (toChars!8884 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))))) (and b!3946088 b_free!108143 (= (toChars!8884 (transformation!6553 (h!47331 (t!327698 rules!2768)))) (toChars!8884 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))))) (and b!3946587 b_free!108163 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 (t!327699 suffixTokens!72)))))) (toChars!8884 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))))) (and b!3945751 b_free!108123 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 suffixTokens!72)))) (toChars!8884 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))))) (and b!3945733 b_free!108115 (= (toChars!8884 (transformation!6553 (h!47331 rules!2768))) (toChars!8884 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))))) (and b!3946092 b_free!108147 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 suffixTokens!72))))) (toChars!8884 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))))) (and b!3946649 b_free!108171 (= (toChars!8884 (transformation!6553 (rule!9517 (h!47332 (t!327699 (t!327699 prefixTokens!80)))))) (toChars!8884 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))))) (and b!3946644 b_free!108167 (= (toChars!8884 (transformation!6553 (h!47331 (t!327698 (t!327698 rules!2768))))) (toChars!8884 (transformation!6553 (rule!9517 (_1!23733 (v!39310 lt!1379525))))))) b_lambda!115443)))

(push 1)

(assert (not d!1170768))

(assert (not b!3946278))

(assert (not b!3946648))

(assert (not b!3946459))

(assert (not b_next!108867))

(assert (not b_next!108845))

(assert (not b!3946258))

(assert (not b!3946502))

(assert (not b!3946366))

(assert (not b!3946579))

(assert (not b_next!108847))

(assert (not b!3946596))

(assert (not b!3946610))

(assert (not b!3946307))

(assert (not b!3946275))

(assert (not b!3946564))

(assert (not d!1170618))

(assert (not b!3946232))

(assert (not bm!285147))

(assert (not b!3946582))

(assert (not b!3946522))

(assert (not d!1170642))

(assert (not b!3946565))

(assert (not d!1170702))

(assert (not b!3946607))

(assert (not b_lambda!115431))

(assert b_and!302007)

(assert (not b!3946255))

(assert (not b!3946598))

(assert (not b!3946383))

(assert (not b!3946455))

(assert (not d!1170734))

(assert (not b!3946315))

(assert (not b!3946536))

(assert (not b!3946254))

(assert (not b!3946464))

(assert (not b!3946513))

(assert b_and!301999)

(assert (not b!3946604))

(assert (not b!3946577))

(assert (not b!3946309))

(assert (not b!3946317))

(assert (not b!3946374))

(assert (not b!3946257))

(assert (not b!3946592))

(assert (not b!3946381))

(assert (not d!1170718))

(assert (not b!3946501))

(assert (not d!1170630))

(assert (not b!3946328))

(assert (not b!3946632))

(assert (not b!3946585))

(assert b_and!301991)

(assert (not d!1170590))

(assert (not b!3946633))

(assert (not b!3946569))

(assert (not b!3946265))

(assert (not b!3946261))

(assert (not b!3946539))

(assert (not bm!285157))

(assert (not b!3946518))

(assert (not b!3946393))

(assert (not b!3946497))

(assert (not b!3946396))

(assert (not b_next!108849))

(assert (not b!3946631))

(assert (not b!3946639))

(assert (not b!3946606))

(assert (not d!1170672))

(assert (not d!1170558))

(assert (not b_lambda!115417))

(assert (not b!3946506))

(assert (not b!3946280))

(assert (not b_next!108823))

(assert (not b!3946583))

(assert (not d!1170758))

(assert (not b_next!108817))

(assert (not b!3946365))

(assert (not tb!237077))

(assert (not d!1170766))

(assert (not b!3946491))

(assert (not b!3946629))

(assert (not b!3946493))

(assert (not bm!285144))

(assert (not b!3946544))

(assert (not b!3946453))

(assert (not b!3946574))

(assert (not b!3946322))

(assert (not b!3946296))

(assert (not b!3946602))

(assert (not b!3946618))

(assert (not d!1170632))

(assert (not d!1170636))

(assert (not b!3946651))

(assert (not b!3946511))

(assert (not b!3946387))

(assert (not b!3946570))

(assert (not b!3946560))

(assert (not b!3946390))

(assert b_and!301953)

(assert (not d!1170648))

(assert (not b_next!108873))

(assert (not d!1170574))

(assert (not b!3946625))

(assert (not b!3946611))

(assert (not b!3946512))

(assert (not d!1170578))

(assert (not b!3946333))

(assert (not d!1170620))

(assert (not b!3946509))

(assert (not d!1170746))

(assert (not d!1170568))

(assert (not d!1170556))

(assert (not b!3946608))

(assert (not b_next!108875))

(assert (not b_next!108843))

(assert (not d!1170716))

(assert (not b!3946627))

(assert (not b!3946479))

(assert (not b!3946469))

(assert (not b!3946419))

(assert (not d!1170760))

(assert (not b_next!108865))

(assert (not d!1170674))

(assert (not b!3946467))

(assert (not d!1170572))

(assert b_and!302001)

(assert (not b!3946545))

(assert (not b!3946370))

(assert (not b!3946463))

(assert (not b!3946489))

(assert (not b!3946519))

(assert b_and!301995)

(assert (not bm!285154))

(assert (not b!3946636))

(assert (not d!1170762))

(assert (not d!1170740))

(assert (not b!3946371))

(assert (not b!3946523))

(assert (not b_next!108869))

(assert b_and!301951)

(assert (not b!3946276))

(assert (not b!3946290))

(assert (not b!3946622))

(assert (not b_next!108851))

(assert (not d!1170562))

(assert (not d!1170650))

(assert (not b!3946239))

(assert (not b!3946603))

(assert b_and!301947)

(assert tp_is_empty!19887)

(assert (not b!3946507))

(assert (not d!1170750))

(assert (not b!3946646))

(assert (not d!1170654))

(assert (not b!3946329))

(assert (not d!1170652))

(assert (not b!3946590))

(assert (not b!3946572))

(assert b_and!301949)

(assert (not b!3946495))

(assert (not b!3946594))

(assert (not b!3946584))

(assert (not b!3946456))

(assert (not b!3946373))

(assert (not b!3946462))

(assert (not d!1170732))

(assert (not b!3945915))

(assert (not d!1170682))

(assert (not b!3946591))

(assert (not b!3946498))

(assert (not b!3946520))

(assert (not b!3946470))

(assert (not b!3946452))

(assert (not b!3946557))

(assert (not b_lambda!115437))

(assert b_and!301997)

(assert (not b!3946298))

(assert (not b!3946271))

(assert (not b!3946241))

(assert (not b!3946267))

(assert (not b!3946251))

(assert (not b!3946546))

(assert (not b!3946288))

(assert (not b!3946252))

(assert (not b!3946485))

(assert (not b!3946510))

(assert (not b!3946620))

(assert (not b!3946477))

(assert (not b!3946595))

(assert (not b!3946562))

(assert (not b!3946330))

(assert (not b!3946645))

(assert (not b!3946652))

(assert (not b!3946392))

(assert (not d!1170644))

(assert (not b!3946641))

(assert (not d!1170622))

(assert (not tb!237041))

(assert b_and!302005)

(assert (not b!3946465))

(assert (not b!3946277))

(assert b_and!302011)

(assert (not b!3946578))

(assert (not b!3946457))

(assert (not b!3946615))

(assert (not b!3946543))

(assert (not b!3946379))

(assert (not b!3946614))

(assert (not b!3946637))

(assert (not b!3946588))

(assert (not b!3946535))

(assert (not b!3946616))

(assert (not b!3946260))

(assert (not b!3946538))

(assert (not d!1170720))

(assert (not tb!237029))

(assert (not d!1170764))

(assert (not b!3946647))

(assert (not b!3946494))

(assert (not b!3946305))

(assert (not b!3946586))

(assert (not b!3946316))

(assert (not b!3946559))

(assert (not b!3946385))

(assert (not b_next!108871))

(assert b_and!301943)

(assert (not b_lambda!115443))

(assert (not b!3946534))

(assert (not b!3946623))

(assert (not d!1170708))

(assert (not d!1170664))

(assert (not b!3946628))

(assert (not b!3946643))

(assert (not b!3946619))

(assert (not b!3946624))

(assert (not b!3946589))

(assert (not b_lambda!115427))

(assert b_and!302003)

(assert (not b_next!108825))

(assert (not b!3946476))

(assert (not d!1170580))

(assert (not b!3945832))

(assert (not b!3946581))

(assert (not b!3946256))

(assert (not b!3946450))

(assert (not b!3945909))

(assert (not b!3946397))

(assert (not b!3946286))

(assert (not b_next!108819))

(assert (not b!3946566))

(assert (not b!3946259))

(assert (not d!1170646))

(assert (not b!3946377))

(assert (not b!3946268))

(assert (not b!3946515))

(assert (not b!3946273))

(assert (not b!3946573))

(assert (not b!3946504))

(assert (not b!3946323))

(assert (not b!3946599))

(assert (not b_lambda!115441))

(assert (not b!3946642))

(assert (not d!1170576))

(assert (not b!3946568))

(assert (not b!3946600))

(assert b_and!302009)

(assert (not d!1170700))

(assert (not b!3946653))

(assert (not b!3946487))

(assert (not b!3946326))

(assert (not b_next!108827))

(assert (not d!1170588))

(assert (not b_lambda!115419))

(assert (not b!3946300))

(assert (not b!3946264))

(assert b_and!301993)

(assert (not d!1170678))

(assert b_and!301945)

(assert (not b!3946301))

(assert (not d!1170628))

(assert (not b!3946558))

(assert (not b!3946561))

(assert (not bm!285155))

(assert b_and!302013)

(assert (not b!3946556))

(assert (not b!3946391))

(assert (not b!3946514))

(assert (not b!3946635))

(assert (not b!3946575))

(assert (not b!3946612))

(assert (not b!3946332))

(assert (not b!3946547))

(assert (not b_next!108821))

(assert (not tb!237053))

(assert (not b_lambda!115439))

(assert (not d!1170728))

(assert (not b!3946303))

(assert (not b_next!108841))

(assert (not b!3946640))

(assert (not b!3946449))

(assert (not b!3946454))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!108867))

(assert b_and!302007)

(assert b_and!301999)

(assert b_and!301991)

(assert (not b_next!108849))

(assert b_and!301995)

(assert b_and!301947)

(assert b_and!301949)

(assert b_and!301997)

(assert b_and!302005)

(assert b_and!302011)

(assert (not b_next!108819))

(assert (not b_next!108841))

(assert (not b_next!108845))

(assert (not b_next!108847))

(assert (not b_next!108823))

(assert (not b_next!108817))

(assert b_and!301953)

(assert (not b_next!108873))

(assert (not b_next!108875))

(assert (not b_next!108843))

(assert b_and!302001)

(assert (not b_next!108865))

(assert (not b_next!108851))

(assert (not b_next!108869))

(assert b_and!301951)

(assert (not b_next!108871))

(assert b_and!301943)

(assert b_and!302003)

(assert (not b_next!108825))

(assert (not b_next!108827))

(assert b_and!302009)

(assert b_and!301993)

(assert b_and!301945)

(assert (not b_next!108821))

(assert b_and!302013)

(check-sat)

(pop 1)

