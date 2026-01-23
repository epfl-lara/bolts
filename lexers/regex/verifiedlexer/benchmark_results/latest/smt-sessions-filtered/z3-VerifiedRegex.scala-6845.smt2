; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!359784 () Bool)

(assert start!359784)

(declare-fun b!3842789 () Bool)

(declare-fun b_free!102625 () Bool)

(declare-fun b_next!103329 () Bool)

(assert (=> b!3842789 (= b_free!102625 (not b_next!103329))))

(declare-fun tp!1164327 () Bool)

(declare-fun b_and!286383 () Bool)

(assert (=> b!3842789 (= tp!1164327 b_and!286383)))

(declare-fun b_free!102627 () Bool)

(declare-fun b_next!103331 () Bool)

(assert (=> b!3842789 (= b_free!102627 (not b_next!103331))))

(declare-fun tp!1164324 () Bool)

(declare-fun b_and!286385 () Bool)

(assert (=> b!3842789 (= tp!1164324 b_and!286385)))

(declare-fun b!3842765 () Bool)

(declare-fun b_free!102629 () Bool)

(declare-fun b_next!103333 () Bool)

(assert (=> b!3842765 (= b_free!102629 (not b_next!103333))))

(declare-fun tp!1164326 () Bool)

(declare-fun b_and!286387 () Bool)

(assert (=> b!3842765 (= tp!1164326 b_and!286387)))

(declare-fun b_free!102631 () Bool)

(declare-fun b_next!103335 () Bool)

(assert (=> b!3842765 (= b_free!102631 (not b_next!103335))))

(declare-fun tp!1164342 () Bool)

(declare-fun b_and!286389 () Bool)

(assert (=> b!3842765 (= tp!1164342 b_and!286389)))

(declare-fun b!3842770 () Bool)

(declare-fun b_free!102633 () Bool)

(declare-fun b_next!103337 () Bool)

(assert (=> b!3842770 (= b_free!102633 (not b_next!103337))))

(declare-fun tp!1164328 () Bool)

(declare-fun b_and!286391 () Bool)

(assert (=> b!3842770 (= tp!1164328 b_and!286391)))

(declare-fun b_free!102635 () Bool)

(declare-fun b_next!103339 () Bool)

(assert (=> b!3842770 (= b_free!102635 (not b_next!103339))))

(declare-fun tp!1164341 () Bool)

(declare-fun b_and!286393 () Bool)

(assert (=> b!3842770 (= tp!1164341 b_and!286393)))

(declare-fun b!3842784 () Bool)

(declare-fun b_free!102637 () Bool)

(declare-fun b_next!103341 () Bool)

(assert (=> b!3842784 (= b_free!102637 (not b_next!103341))))

(declare-fun tp!1164333 () Bool)

(declare-fun b_and!286395 () Bool)

(assert (=> b!3842784 (= tp!1164333 b_and!286395)))

(declare-fun b_free!102639 () Bool)

(declare-fun b_next!103343 () Bool)

(assert (=> b!3842784 (= b_free!102639 (not b_next!103343))))

(declare-fun tp!1164338 () Bool)

(declare-fun b_and!286397 () Bool)

(assert (=> b!3842784 (= tp!1164338 b_and!286397)))

(declare-fun bm!281989 () Bool)

(declare-datatypes ((C!22552 0))(
  ( (C!22553 (val!13370 Int)) )
))
(declare-datatypes ((List!40798 0))(
  ( (Nil!40674) (Cons!40674 (h!46094 C!22552) (t!310607 List!40798)) )
))
(declare-fun lt!1333952 () List!40798)

(declare-datatypes ((LexerInterface!5867 0))(
  ( (LexerInterfaceExt!5864 (__x!25233 Int)) (Lexer!5865) )
))
(declare-fun thiss!20629 () LexerInterface!5867)

(declare-datatypes ((String!46257 0))(
  ( (String!46258 (value!199531 String)) )
))
(declare-datatypes ((IArray!24983 0))(
  ( (IArray!24984 (innerList!12549 List!40798)) )
))
(declare-datatypes ((Conc!12489 0))(
  ( (Node!12489 (left!31406 Conc!12489) (right!31736 Conc!12489) (csize!25208 Int) (cheight!12700 Int)) (Leaf!19335 (xs!15795 IArray!24983) (csize!25209 Int)) (Empty!12489) )
))
(declare-datatypes ((BalanceConc!24572 0))(
  ( (BalanceConc!24573 (c!669612 Conc!12489)) )
))
(declare-datatypes ((List!40799 0))(
  ( (Nil!40675) (Cons!40675 (h!46095 (_ BitVec 16)) (t!310608 List!40799)) )
))
(declare-datatypes ((TokenValue!6508 0))(
  ( (FloatLiteralValue!13016 (text!46001 List!40799)) (TokenValueExt!6507 (__x!25234 Int)) (Broken!32540 (value!199532 List!40799)) (Object!6631) (End!6508) (Def!6508) (Underscore!6508) (Match!6508) (Else!6508) (Error!6508) (Case!6508) (If!6508) (Extends!6508) (Abstract!6508) (Class!6508) (Val!6508) (DelimiterValue!13016 (del!6568 List!40799)) (KeywordValue!6514 (value!199533 List!40799)) (CommentValue!13016 (value!199534 List!40799)) (WhitespaceValue!13016 (value!199535 List!40799)) (IndentationValue!6508 (value!199536 List!40799)) (String!46259) (Int32!6508) (Broken!32541 (value!199537 List!40799)) (Boolean!6509) (Unit!58371) (OperatorValue!6511 (op!6568 List!40799)) (IdentifierValue!13016 (value!199538 List!40799)) (IdentifierValue!13017 (value!199539 List!40799)) (WhitespaceValue!13017 (value!199540 List!40799)) (True!13016) (False!13016) (Broken!32542 (value!199541 List!40799)) (Broken!32543 (value!199542 List!40799)) (True!13017) (RightBrace!6508) (RightBracket!6508) (Colon!6508) (Null!6508) (Comma!6508) (LeftBracket!6508) (False!13017) (LeftBrace!6508) (ImaginaryLiteralValue!6508 (text!46002 List!40799)) (StringLiteralValue!19524 (value!199543 List!40799)) (EOFValue!6508 (value!199544 List!40799)) (IdentValue!6508 (value!199545 List!40799)) (DelimiterValue!13017 (value!199546 List!40799)) (DedentValue!6508 (value!199547 List!40799)) (NewLineValue!6508 (value!199548 List!40799)) (IntegerValue!19524 (value!199549 (_ BitVec 32)) (text!46003 List!40799)) (IntegerValue!19525 (value!199550 Int) (text!46004 List!40799)) (Times!6508) (Or!6508) (Equal!6508) (Minus!6508) (Broken!32544 (value!199551 List!40799)) (And!6508) (Div!6508) (LessEqual!6508) (Mod!6508) (Concat!17691) (Not!6508) (Plus!6508) (SpaceValue!6508 (value!199552 List!40799)) (IntegerValue!19526 (value!199553 Int) (text!46005 List!40799)) (StringLiteralValue!19525 (text!46006 List!40799)) (FloatLiteralValue!13017 (text!46007 List!40799)) (BytesLiteralValue!6508 (value!199554 List!40799)) (CommentValue!13017 (value!199555 List!40799)) (StringLiteralValue!19526 (value!199556 List!40799)) (ErrorTokenValue!6508 (msg!6569 List!40799)) )
))
(declare-datatypes ((Regex!11183 0))(
  ( (ElementMatch!11183 (c!669613 C!22552)) (Concat!17692 (regOne!22878 Regex!11183) (regTwo!22878 Regex!11183)) (EmptyExpr!11183) (Star!11183 (reg!11512 Regex!11183)) (EmptyLang!11183) (Union!11183 (regOne!22879 Regex!11183) (regTwo!22879 Regex!11183)) )
))
(declare-datatypes ((TokenValueInjection!12444 0))(
  ( (TokenValueInjection!12445 (toValue!8694 Int) (toChars!8553 Int)) )
))
(declare-datatypes ((Rule!12356 0))(
  ( (Rule!12357 (regex!6278 Regex!11183) (tag!7138 String!46257) (isSeparator!6278 Bool) (transformation!6278 TokenValueInjection!12444)) )
))
(declare-datatypes ((List!40800 0))(
  ( (Nil!40676) (Cons!40676 (h!46096 Rule!12356) (t!310609 List!40800)) )
))
(declare-fun rules!2768 () List!40800)

(declare-datatypes ((Token!11694 0))(
  ( (Token!11695 (value!199557 TokenValue!6508) (rule!9118 Rule!12356) (size!30607 Int) (originalCharacters!6878 List!40798)) )
))
(declare-datatypes ((tuple2!39850 0))(
  ( (tuple2!39851 (_1!23059 Token!11694) (_2!23059 List!40798)) )
))
(declare-datatypes ((Option!8696 0))(
  ( (None!8695) (Some!8695 (v!38987 tuple2!39850)) )
))
(declare-fun call!281994 () Option!8696)

(declare-fun maxPrefixOneRule!2255 (LexerInterface!5867 Rule!12356 List!40798) Option!8696)

(assert (=> bm!281989 (= call!281994 (maxPrefixOneRule!2255 thiss!20629 (h!46096 rules!2768) lt!1333952))))

(declare-fun b!3842764 () Bool)

(declare-fun res!1555355 () Bool)

(declare-fun e!2374420 () Bool)

(assert (=> b!3842764 (=> (not res!1555355) (not e!2374420))))

(declare-fun isEmpty!24048 (List!40800) Bool)

(assert (=> b!3842764 (= res!1555355 (not (isEmpty!24048 rules!2768)))))

(declare-fun e!2374387 () Bool)

(assert (=> b!3842765 (= e!2374387 (and tp!1164326 tp!1164342))))

(declare-fun b!3842766 () Bool)

(declare-fun e!2374416 () Bool)

(declare-fun e!2374410 () Bool)

(assert (=> b!3842766 (= e!2374416 e!2374410)))

(declare-fun res!1555348 () Bool)

(assert (=> b!3842766 (=> res!1555348 e!2374410)))

(declare-fun lt!1333969 () Option!8696)

(declare-datatypes ((List!40801 0))(
  ( (Nil!40677) (Cons!40677 (h!46097 Token!11694) (t!310610 List!40801)) )
))
(declare-datatypes ((tuple2!39852 0))(
  ( (tuple2!39853 (_1!23060 List!40801) (_2!23060 List!40798)) )
))
(declare-fun lt!1333967 () tuple2!39852)

(declare-fun lt!1333962 () tuple2!39852)

(declare-fun lt!1333964 () List!40801)

(declare-fun suffix!1176 () List!40798)

(assert (=> b!3842766 (= res!1555348 (or (not (= lt!1333962 (tuple2!39853 lt!1333964 (_2!23060 lt!1333967)))) (not (= lt!1333967 (tuple2!39853 (_1!23060 lt!1333967) (_2!23060 lt!1333967)))) (not (= (_2!23059 (v!38987 lt!1333969)) suffix!1176))))))

(declare-fun lt!1333954 () List!40801)

(declare-fun ++!10313 (List!40801 List!40801) List!40801)

(assert (=> b!3842766 (= lt!1333964 (++!10313 lt!1333954 (_1!23060 lt!1333967)))))

(assert (=> b!3842766 (= lt!1333954 (Cons!40677 (_1!23059 (v!38987 lt!1333969)) Nil!40677))))

(declare-fun e!2374415 () Bool)

(declare-fun b!3842767 () Bool)

(declare-fun e!2374390 () Bool)

(declare-fun suffixTokens!72 () List!40801)

(declare-fun tp!1164339 () Bool)

(declare-fun inv!54820 (Token!11694) Bool)

(assert (=> b!3842767 (= e!2374390 (and (inv!54820 (h!46097 suffixTokens!72)) e!2374415 tp!1164339))))

(declare-fun tp!1164335 () Bool)

(declare-fun e!2374385 () Bool)

(declare-fun e!2374395 () Bool)

(declare-fun b!3842768 () Bool)

(declare-fun err!4265 () Option!8696)

(declare-fun inv!21 (TokenValue!6508) Bool)

(assert (=> b!3842768 (= e!2374395 (and (inv!21 (value!199557 (_1!23059 (v!38987 err!4265)))) e!2374385 tp!1164335))))

(declare-fun b!3842769 () Bool)

(declare-fun tp!1164331 () Bool)

(declare-fun prefixTokens!80 () List!40801)

(declare-fun e!2374386 () Bool)

(declare-fun e!2374419 () Bool)

(declare-fun inv!54817 (String!46257) Bool)

(declare-fun inv!54821 (TokenValueInjection!12444) Bool)

(assert (=> b!3842769 (= e!2374419 (and tp!1164331 (inv!54817 (tag!7138 (rule!9118 (h!46097 prefixTokens!80)))) (inv!54821 (transformation!6278 (rule!9118 (h!46097 prefixTokens!80)))) e!2374386))))

(assert (=> b!3842770 (= e!2374386 (and tp!1164328 tp!1164341))))

(declare-fun b!3842771 () Bool)

(declare-fun e!2374404 () Bool)

(declare-fun e!2374400 () Bool)

(assert (=> b!3842771 (= e!2374404 e!2374400)))

(declare-fun res!1555358 () Bool)

(assert (=> b!3842771 (=> res!1555358 e!2374400)))

(declare-fun lt!1333957 () List!40801)

(declare-fun prefix!426 () List!40798)

(declare-fun lt!1333961 () List!40798)

(assert (=> b!3842771 (= res!1555358 (or (not (= lt!1333957 (_1!23060 lt!1333962))) (not (= lt!1333957 lt!1333964)) (not (= prefixTokens!80 lt!1333954)) (not (= prefix!426 lt!1333961))))))

(assert (=> b!3842771 (= lt!1333961 prefix!426)))

(declare-datatypes ((Unit!58372 0))(
  ( (Unit!58373) )
))
(declare-fun lt!1333953 () Unit!58372)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!406 (List!40798 List!40798 List!40798 List!40798) Unit!58372)

(assert (=> b!3842771 (= lt!1333953 (lemmaConcatSameAndSameSizesThenSameLists!406 lt!1333961 (_2!23059 (v!38987 lt!1333969)) prefix!426 suffix!1176))))

(declare-fun e!2374418 () Bool)

(declare-fun tp!1164321 () Bool)

(declare-fun e!2374405 () Bool)

(declare-fun b!3842772 () Bool)

(assert (=> b!3842772 (= e!2374418 (and tp!1164321 (inv!54817 (tag!7138 (rule!9118 (h!46097 suffixTokens!72)))) (inv!54821 (transformation!6278 (rule!9118 (h!46097 suffixTokens!72)))) e!2374405))))

(declare-fun b!3842773 () Bool)

(declare-fun e!2374398 () Bool)

(declare-fun size!30608 (List!40798) Int)

(assert (=> b!3842773 (= e!2374398 (= (size!30607 (_1!23059 (v!38987 lt!1333969))) (size!30608 (originalCharacters!6878 (_1!23059 (v!38987 lt!1333969))))))))

(declare-fun res!1555350 () Bool)

(assert (=> start!359784 (=> (not res!1555350) (not e!2374420))))

(get-info :version)

(assert (=> start!359784 (= res!1555350 ((_ is Lexer!5865) thiss!20629))))

(assert (=> start!359784 e!2374420))

(declare-fun e!2374393 () Bool)

(assert (=> start!359784 e!2374393))

(assert (=> start!359784 true))

(declare-fun e!2374406 () Bool)

(assert (=> start!359784 e!2374406))

(declare-fun e!2374401 () Bool)

(assert (=> start!359784 e!2374401))

(declare-fun e!2374394 () Bool)

(assert (=> start!359784 e!2374394))

(assert (=> start!359784 e!2374390))

(declare-fun e!2374407 () Bool)

(assert (=> start!359784 e!2374407))

(declare-fun b!3842774 () Bool)

(assert (=> b!3842774 true))

(declare-fun e!2374402 () Bool)

(assert (=> b!3842774 e!2374402))

(declare-fun e!2374397 () Option!8696)

(assert (=> b!3842774 (= e!2374397 err!4265)))

(declare-fun b!3842775 () Bool)

(declare-fun tp!1164329 () Bool)

(assert (=> b!3842775 (= e!2374402 (and (inv!54820 (_1!23059 (v!38987 err!4265))) e!2374395 tp!1164329))))

(declare-fun b!3842776 () Bool)

(declare-fun e!2374413 () Bool)

(declare-fun e!2374391 () Option!8696)

(assert (=> b!3842776 (= e!2374413 (= lt!1333969 e!2374391))))

(declare-fun c!669611 () Bool)

(assert (=> b!3842776 (= c!669611 (and ((_ is Cons!40676) rules!2768) ((_ is Nil!40676) (t!310609 rules!2768))))))

(declare-fun b!3842777 () Bool)

(assert (=> b!3842777 (= e!2374391 e!2374397)))

(declare-fun c!669610 () Bool)

(assert (=> b!3842777 (= c!669610 ((_ is Cons!40676) rules!2768))))

(declare-fun b!3842778 () Bool)

(declare-fun res!1555352 () Bool)

(assert (=> b!3842778 (=> (not res!1555352) (not e!2374420))))

(declare-fun rulesInvariant!5210 (LexerInterface!5867 List!40800) Bool)

(assert (=> b!3842778 (= res!1555352 (rulesInvariant!5210 thiss!20629 rules!2768))))

(declare-fun b!3842779 () Bool)

(declare-fun res!1555349 () Bool)

(assert (=> b!3842779 (=> (not res!1555349) (not e!2374420))))

(declare-fun isEmpty!24049 (List!40798) Bool)

(assert (=> b!3842779 (= res!1555349 (not (isEmpty!24049 prefix!426)))))

(declare-fun b!3842780 () Bool)

(declare-fun e!2374392 () Bool)

(assert (=> b!3842780 (= e!2374392 (not e!2374416))))

(declare-fun res!1555344 () Bool)

(assert (=> b!3842780 (=> res!1555344 e!2374416)))

(declare-fun lt!1333966 () List!40798)

(assert (=> b!3842780 (= res!1555344 (not (= lt!1333966 lt!1333952)))))

(declare-fun lexList!1635 (LexerInterface!5867 List!40800 List!40798) tuple2!39852)

(assert (=> b!3842780 (= lt!1333967 (lexList!1635 thiss!20629 rules!2768 (_2!23059 (v!38987 lt!1333969))))))

(declare-fun lt!1333950 () TokenValue!6508)

(declare-fun lt!1333948 () List!40798)

(declare-fun lt!1333963 () Int)

(assert (=> b!3842780 (and (= (size!30607 (_1!23059 (v!38987 lt!1333969))) lt!1333963) (= (originalCharacters!6878 (_1!23059 (v!38987 lt!1333969))) lt!1333961) (= (tuple2!39851 (_1!23059 (v!38987 lt!1333969)) (_2!23059 (v!38987 lt!1333969))) (tuple2!39851 (Token!11695 lt!1333950 (rule!9118 (_1!23059 (v!38987 lt!1333969))) lt!1333963 lt!1333961) lt!1333948)))))

(assert (=> b!3842780 (= lt!1333963 (size!30608 lt!1333961))))

(assert (=> b!3842780 e!2374398))

(declare-fun res!1555345 () Bool)

(assert (=> b!3842780 (=> (not res!1555345) (not e!2374398))))

(assert (=> b!3842780 (= res!1555345 (= (value!199557 (_1!23059 (v!38987 lt!1333969))) lt!1333950))))

(declare-fun apply!9521 (TokenValueInjection!12444 BalanceConc!24572) TokenValue!6508)

(declare-fun seqFromList!4549 (List!40798) BalanceConc!24572)

(assert (=> b!3842780 (= lt!1333950 (apply!9521 (transformation!6278 (rule!9118 (_1!23059 (v!38987 lt!1333969)))) (seqFromList!4549 lt!1333961)))))

(assert (=> b!3842780 (= (_2!23059 (v!38987 lt!1333969)) lt!1333948)))

(declare-fun lt!1333960 () Unit!58372)

(declare-fun lemmaSamePrefixThenSameSuffix!1598 (List!40798 List!40798 List!40798 List!40798 List!40798) Unit!58372)

(assert (=> b!3842780 (= lt!1333960 (lemmaSamePrefixThenSameSuffix!1598 lt!1333961 (_2!23059 (v!38987 lt!1333969)) lt!1333961 lt!1333948 lt!1333952))))

(declare-fun getSuffix!1832 (List!40798 List!40798) List!40798)

(assert (=> b!3842780 (= lt!1333948 (getSuffix!1832 lt!1333952 lt!1333961))))

(declare-fun isPrefix!3377 (List!40798 List!40798) Bool)

(assert (=> b!3842780 (isPrefix!3377 lt!1333961 lt!1333966)))

(declare-fun ++!10314 (List!40798 List!40798) List!40798)

(assert (=> b!3842780 (= lt!1333966 (++!10314 lt!1333961 (_2!23059 (v!38987 lt!1333969))))))

(declare-fun lt!1333955 () Unit!58372)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2240 (List!40798 List!40798) Unit!58372)

(assert (=> b!3842780 (= lt!1333955 (lemmaConcatTwoListThenFirstIsPrefix!2240 lt!1333961 (_2!23059 (v!38987 lt!1333969))))))

(declare-fun list!15144 (BalanceConc!24572) List!40798)

(declare-fun charsOf!4106 (Token!11694) BalanceConc!24572)

(assert (=> b!3842780 (= lt!1333961 (list!15144 (charsOf!4106 (_1!23059 (v!38987 lt!1333969)))))))

(declare-fun ruleValid!2230 (LexerInterface!5867 Rule!12356) Bool)

(assert (=> b!3842780 (ruleValid!2230 thiss!20629 (rule!9118 (_1!23059 (v!38987 lt!1333969))))))

(declare-fun lt!1333959 () Unit!58372)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1310 (LexerInterface!5867 Rule!12356 List!40800) Unit!58372)

(assert (=> b!3842780 (= lt!1333959 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1310 thiss!20629 (rule!9118 (_1!23059 (v!38987 lt!1333969))) rules!2768))))

(declare-fun lt!1333949 () Unit!58372)

(declare-fun lemmaCharactersSize!939 (Token!11694) Unit!58372)

(assert (=> b!3842780 (= lt!1333949 (lemmaCharactersSize!939 (_1!23059 (v!38987 lt!1333969))))))

(declare-fun b!3842781 () Bool)

(declare-fun res!1555354 () Bool)

(assert (=> b!3842781 (=> res!1555354 e!2374400)))

(assert (=> b!3842781 (= res!1555354 (not (isPrefix!3377 Nil!40674 suffix!1176)))))

(declare-fun b!3842782 () Bool)

(assert (=> b!3842782 (= e!2374400 true)))

(declare-fun lt!1333951 () Option!8696)

(declare-fun maxPrefix!3171 (LexerInterface!5867 List!40800 List!40798) Option!8696)

(assert (=> b!3842782 (= lt!1333951 (maxPrefix!3171 thiss!20629 rules!2768 prefix!426))))

(assert (=> b!3842782 (= (maxPrefix!3171 thiss!20629 rules!2768 (++!10314 prefix!426 Nil!40674)) (Some!8695 (tuple2!39851 (_1!23059 (v!38987 lt!1333969)) Nil!40674)))))

(declare-fun lt!1333956 () Unit!58372)

(declare-fun lemmaMaxPrefixThenWithShorterSuffix!8 (LexerInterface!5867 List!40800 List!40798 List!40798 List!40798 Token!11694 List!40798 List!40798) Unit!58372)

(assert (=> b!3842782 (= lt!1333956 (lemmaMaxPrefixThenWithShorterSuffix!8 thiss!20629 rules!2768 prefix!426 suffix!1176 Nil!40674 (_1!23059 (v!38987 lt!1333969)) suffix!1176 Nil!40674))))

(declare-fun b!3842783 () Bool)

(declare-fun e!2374414 () Bool)

(assert (=> b!3842783 (= e!2374420 e!2374414)))

(declare-fun res!1555346 () Bool)

(assert (=> b!3842783 (=> (not res!1555346) (not e!2374414))))

(declare-fun suffixResult!91 () List!40798)

(assert (=> b!3842783 (= res!1555346 (= lt!1333962 (tuple2!39853 lt!1333957 suffixResult!91)))))

(assert (=> b!3842783 (= lt!1333962 (lexList!1635 thiss!20629 rules!2768 lt!1333952))))

(assert (=> b!3842783 (= lt!1333957 (++!10313 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3842783 (= lt!1333952 (++!10314 prefix!426 suffix!1176))))

(assert (=> b!3842784 (= e!2374405 (and tp!1164333 tp!1164338))))

(declare-fun e!2374409 () Bool)

(declare-fun b!3842785 () Bool)

(declare-fun tp!1164332 () Bool)

(declare-fun e!2374412 () Bool)

(assert (=> b!3842785 (= e!2374409 (and tp!1164332 (inv!54817 (tag!7138 (h!46096 rules!2768))) (inv!54821 (transformation!6278 (h!46096 rules!2768))) e!2374412))))

(declare-fun lt!1333958 () Option!8696)

(declare-fun b!3842786 () Bool)

(assert (=> b!3842786 (= lt!1333958 (maxPrefix!3171 thiss!20629 (t!310609 rules!2768) lt!1333952))))

(declare-fun lt!1333968 () Option!8696)

(assert (=> b!3842786 (= lt!1333968 call!281994)))

(assert (=> b!3842786 (= e!2374397 (ite (and ((_ is None!8695) lt!1333968) ((_ is None!8695) lt!1333958)) None!8695 (ite ((_ is None!8695) lt!1333958) lt!1333968 (ite ((_ is None!8695) lt!1333968) lt!1333958 (ite (>= (size!30607 (_1!23059 (v!38987 lt!1333968))) (size!30607 (_1!23059 (v!38987 lt!1333958)))) (Some!8695 (v!38987 lt!1333968)) lt!1333958)))))))

(declare-fun tp!1164325 () Bool)

(declare-fun b!3842787 () Bool)

(declare-fun e!2374417 () Bool)

(assert (=> b!3842787 (= e!2374417 (and (inv!21 (value!199557 (h!46097 prefixTokens!80))) e!2374419 tp!1164325))))

(declare-fun b!3842788 () Bool)

(declare-fun tp_is_empty!19337 () Bool)

(declare-fun tp!1164340 () Bool)

(assert (=> b!3842788 (= e!2374406 (and tp_is_empty!19337 tp!1164340))))

(assert (=> b!3842789 (= e!2374412 (and tp!1164327 tp!1164324))))

(declare-fun b!3842790 () Bool)

(assert (=> b!3842790 (= e!2374414 e!2374392)))

(declare-fun res!1555353 () Bool)

(assert (=> b!3842790 (=> (not res!1555353) (not e!2374392))))

(assert (=> b!3842790 (= res!1555353 ((_ is Some!8695) lt!1333969))))

(assert (=> b!3842790 (= lt!1333969 (maxPrefix!3171 thiss!20629 rules!2768 lt!1333952))))

(declare-fun b!3842791 () Bool)

(declare-fun res!1555347 () Bool)

(assert (=> b!3842791 (=> (not res!1555347) (not e!2374414))))

(assert (=> b!3842791 (= res!1555347 (= (lexList!1635 thiss!20629 rules!2768 suffix!1176) (tuple2!39853 suffixTokens!72 suffixResult!91)))))

(declare-fun tp!1164322 () Bool)

(declare-fun b!3842792 () Bool)

(assert (=> b!3842792 (= e!2374385 (and tp!1164322 (inv!54817 (tag!7138 (rule!9118 (_1!23059 (v!38987 err!4265))))) (inv!54821 (transformation!6278 (rule!9118 (_1!23059 (v!38987 err!4265))))) e!2374387))))

(declare-fun b!3842793 () Bool)

(assert (=> b!3842793 (= e!2374410 e!2374404)))

(declare-fun res!1555356 () Bool)

(assert (=> b!3842793 (=> res!1555356 e!2374404)))

(assert (=> b!3842793 (= res!1555356 (not (= lt!1333969 (Some!8695 (tuple2!39851 (_1!23059 (v!38987 lt!1333969)) (_2!23059 (v!38987 lt!1333969)))))))))

(assert (=> b!3842793 e!2374413))

(declare-fun res!1555357 () Bool)

(assert (=> b!3842793 (=> (not res!1555357) (not e!2374413))))

(assert (=> b!3842793 (= res!1555357 (isPrefix!3377 lt!1333952 lt!1333952))))

(declare-fun lt!1333965 () Unit!58372)

(declare-fun lemmaIsPrefixRefl!2150 (List!40798 List!40798) Unit!58372)

(assert (=> b!3842793 (= lt!1333965 (lemmaIsPrefixRefl!2150 lt!1333952 lt!1333952))))

(assert (=> b!3842793 (= lt!1333962 (tuple2!39853 (Cons!40677 (_1!23059 (v!38987 lt!1333969)) (_1!23060 lt!1333967)) (_2!23060 lt!1333967)))))

(declare-fun b!3842794 () Bool)

(declare-fun tp!1164330 () Bool)

(assert (=> b!3842794 (= e!2374401 (and e!2374409 tp!1164330))))

(declare-fun b!3842795 () Bool)

(declare-fun tp!1164323 () Bool)

(assert (=> b!3842795 (= e!2374415 (and (inv!21 (value!199557 (h!46097 suffixTokens!72))) e!2374418 tp!1164323))))

(declare-fun b!3842796 () Bool)

(assert (=> b!3842796 (= e!2374391 call!281994)))

(declare-fun tp!1164337 () Bool)

(declare-fun b!3842797 () Bool)

(assert (=> b!3842797 (= e!2374394 (and (inv!54820 (h!46097 prefixTokens!80)) e!2374417 tp!1164337))))

(declare-fun b!3842798 () Bool)

(declare-fun res!1555351 () Bool)

(assert (=> b!3842798 (=> (not res!1555351) (not e!2374420))))

(declare-fun isEmpty!24050 (List!40801) Bool)

(assert (=> b!3842798 (= res!1555351 (not (isEmpty!24050 prefixTokens!80)))))

(declare-fun b!3842799 () Bool)

(declare-fun tp!1164334 () Bool)

(assert (=> b!3842799 (= e!2374393 (and tp_is_empty!19337 tp!1164334))))

(declare-fun b!3842800 () Bool)

(declare-fun tp!1164336 () Bool)

(assert (=> b!3842800 (= e!2374407 (and tp_is_empty!19337 tp!1164336))))

(assert (= (and start!359784 res!1555350) b!3842764))

(assert (= (and b!3842764 res!1555355) b!3842778))

(assert (= (and b!3842778 res!1555352) b!3842798))

(assert (= (and b!3842798 res!1555351) b!3842779))

(assert (= (and b!3842779 res!1555349) b!3842783))

(assert (= (and b!3842783 res!1555346) b!3842791))

(assert (= (and b!3842791 res!1555347) b!3842790))

(assert (= (and b!3842790 res!1555353) b!3842780))

(assert (= (and b!3842780 res!1555345) b!3842773))

(assert (= (and b!3842780 (not res!1555344)) b!3842766))

(assert (= (and b!3842766 (not res!1555348)) b!3842793))

(assert (= (and b!3842793 res!1555357) b!3842776))

(assert (= (and b!3842776 c!669611) b!3842796))

(assert (= (and b!3842776 (not c!669611)) b!3842777))

(assert (= (and b!3842777 c!669610) b!3842786))

(assert (= (and b!3842777 (not c!669610)) b!3842774))

(assert (= b!3842792 b!3842765))

(assert (= b!3842768 b!3842792))

(assert (= b!3842775 b!3842768))

(assert (= (and b!3842774 ((_ is Some!8695) err!4265)) b!3842775))

(assert (= (or b!3842796 b!3842786) bm!281989))

(assert (= (and b!3842793 (not res!1555356)) b!3842771))

(assert (= (and b!3842771 (not res!1555358)) b!3842781))

(assert (= (and b!3842781 (not res!1555354)) b!3842782))

(assert (= (and start!359784 ((_ is Cons!40674) suffixResult!91)) b!3842799))

(assert (= (and start!359784 ((_ is Cons!40674) suffix!1176)) b!3842788))

(assert (= b!3842785 b!3842789))

(assert (= b!3842794 b!3842785))

(assert (= (and start!359784 ((_ is Cons!40676) rules!2768)) b!3842794))

(assert (= b!3842769 b!3842770))

(assert (= b!3842787 b!3842769))

(assert (= b!3842797 b!3842787))

(assert (= (and start!359784 ((_ is Cons!40677) prefixTokens!80)) b!3842797))

(assert (= b!3842772 b!3842784))

(assert (= b!3842795 b!3842772))

(assert (= b!3842767 b!3842795))

(assert (= (and start!359784 ((_ is Cons!40677) suffixTokens!72)) b!3842767))

(assert (= (and start!359784 ((_ is Cons!40674) prefix!426)) b!3842800))

(declare-fun m!4397027 () Bool)

(assert (=> b!3842769 m!4397027))

(declare-fun m!4397029 () Bool)

(assert (=> b!3842769 m!4397029))

(declare-fun m!4397031 () Bool)

(assert (=> b!3842797 m!4397031))

(declare-fun m!4397033 () Bool)

(assert (=> b!3842781 m!4397033))

(declare-fun m!4397035 () Bool)

(assert (=> b!3842798 m!4397035))

(declare-fun m!4397037 () Bool)

(assert (=> b!3842772 m!4397037))

(declare-fun m!4397039 () Bool)

(assert (=> b!3842772 m!4397039))

(declare-fun m!4397041 () Bool)

(assert (=> b!3842790 m!4397041))

(declare-fun m!4397043 () Bool)

(assert (=> b!3842786 m!4397043))

(declare-fun m!4397045 () Bool)

(assert (=> b!3842782 m!4397045))

(declare-fun m!4397047 () Bool)

(assert (=> b!3842782 m!4397047))

(assert (=> b!3842782 m!4397047))

(declare-fun m!4397049 () Bool)

(assert (=> b!3842782 m!4397049))

(declare-fun m!4397051 () Bool)

(assert (=> b!3842782 m!4397051))

(declare-fun m!4397053 () Bool)

(assert (=> b!3842793 m!4397053))

(declare-fun m!4397055 () Bool)

(assert (=> b!3842793 m!4397055))

(declare-fun m!4397057 () Bool)

(assert (=> b!3842767 m!4397057))

(declare-fun m!4397059 () Bool)

(assert (=> b!3842775 m!4397059))

(declare-fun m!4397061 () Bool)

(assert (=> b!3842764 m!4397061))

(declare-fun m!4397063 () Bool)

(assert (=> b!3842791 m!4397063))

(declare-fun m!4397065 () Bool)

(assert (=> b!3842785 m!4397065))

(declare-fun m!4397067 () Bool)

(assert (=> b!3842785 m!4397067))

(declare-fun m!4397069 () Bool)

(assert (=> bm!281989 m!4397069))

(declare-fun m!4397071 () Bool)

(assert (=> b!3842792 m!4397071))

(declare-fun m!4397073 () Bool)

(assert (=> b!3842792 m!4397073))

(declare-fun m!4397075 () Bool)

(assert (=> b!3842783 m!4397075))

(declare-fun m!4397077 () Bool)

(assert (=> b!3842783 m!4397077))

(declare-fun m!4397079 () Bool)

(assert (=> b!3842783 m!4397079))

(declare-fun m!4397081 () Bool)

(assert (=> b!3842787 m!4397081))

(declare-fun m!4397083 () Bool)

(assert (=> b!3842780 m!4397083))

(declare-fun m!4397085 () Bool)

(assert (=> b!3842780 m!4397085))

(declare-fun m!4397087 () Bool)

(assert (=> b!3842780 m!4397087))

(declare-fun m!4397089 () Bool)

(assert (=> b!3842780 m!4397089))

(declare-fun m!4397091 () Bool)

(assert (=> b!3842780 m!4397091))

(declare-fun m!4397093 () Bool)

(assert (=> b!3842780 m!4397093))

(declare-fun m!4397095 () Bool)

(assert (=> b!3842780 m!4397095))

(declare-fun m!4397097 () Bool)

(assert (=> b!3842780 m!4397097))

(declare-fun m!4397099 () Bool)

(assert (=> b!3842780 m!4397099))

(declare-fun m!4397101 () Bool)

(assert (=> b!3842780 m!4397101))

(assert (=> b!3842780 m!4397095))

(declare-fun m!4397103 () Bool)

(assert (=> b!3842780 m!4397103))

(declare-fun m!4397105 () Bool)

(assert (=> b!3842780 m!4397105))

(assert (=> b!3842780 m!4397099))

(declare-fun m!4397107 () Bool)

(assert (=> b!3842780 m!4397107))

(declare-fun m!4397109 () Bool)

(assert (=> b!3842780 m!4397109))

(declare-fun m!4397111 () Bool)

(assert (=> b!3842766 m!4397111))

(declare-fun m!4397113 () Bool)

(assert (=> b!3842778 m!4397113))

(declare-fun m!4397115 () Bool)

(assert (=> b!3842771 m!4397115))

(declare-fun m!4397117 () Bool)

(assert (=> b!3842795 m!4397117))

(declare-fun m!4397119 () Bool)

(assert (=> b!3842779 m!4397119))

(declare-fun m!4397121 () Bool)

(assert (=> b!3842773 m!4397121))

(declare-fun m!4397123 () Bool)

(assert (=> b!3842768 m!4397123))

(check-sat (not b!3842794) b_and!286393 (not b!3842795) (not bm!281989) (not b_next!103343) (not b!3842791) (not b!3842786) b_and!286391 (not b!3842800) (not b!3842779) (not b_next!103333) (not b!3842799) (not b!3842772) b_and!286387 (not b!3842769) (not b!3842793) b_and!286397 (not b!3842768) tp_is_empty!19337 (not b!3842782) (not b!3842767) (not b!3842785) b_and!286389 (not b!3842787) b_and!286395 (not b!3842775) (not b!3842792) (not b!3842788) (not b!3842766) (not b!3842798) (not b!3842778) (not b!3842790) (not b_next!103341) (not b!3842773) (not b!3842783) (not b!3842771) (not b_next!103331) (not b!3842780) (not b!3842781) b_and!286385 (not b!3842797) b_and!286383 (not b!3842764) (not b_next!103337) (not b_next!103335) (not b_next!103339) (not b_next!103329))
(check-sat b_and!286393 (not b_next!103333) b_and!286387 (not b_next!103343) b_and!286397 b_and!286389 b_and!286395 b_and!286391 (not b_next!103341) (not b_next!103331) (not b_next!103337) b_and!286385 b_and!286383 (not b_next!103335) (not b_next!103339) (not b_next!103329))
