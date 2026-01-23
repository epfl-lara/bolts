; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!368380 () Bool)

(assert start!368380)

(declare-fun b!3927511 () Bool)

(declare-fun b_free!107117 () Bool)

(declare-fun b_next!107821 () Bool)

(assert (=> b!3927511 (= b_free!107117 (not b_next!107821))))

(declare-fun tp!1195742 () Bool)

(declare-fun b_and!299567 () Bool)

(assert (=> b!3927511 (= tp!1195742 b_and!299567)))

(declare-fun b_free!107119 () Bool)

(declare-fun b_next!107823 () Bool)

(assert (=> b!3927511 (= b_free!107119 (not b_next!107823))))

(declare-fun tp!1195735 () Bool)

(declare-fun b_and!299569 () Bool)

(assert (=> b!3927511 (= tp!1195735 b_and!299569)))

(declare-fun b!3927510 () Bool)

(declare-fun b_free!107121 () Bool)

(declare-fun b_next!107825 () Bool)

(assert (=> b!3927510 (= b_free!107121 (not b_next!107825))))

(declare-fun tp!1195732 () Bool)

(declare-fun b_and!299571 () Bool)

(assert (=> b!3927510 (= tp!1195732 b_and!299571)))

(declare-fun b_free!107123 () Bool)

(declare-fun b_next!107827 () Bool)

(assert (=> b!3927510 (= b_free!107123 (not b_next!107827))))

(declare-fun tp!1195746 () Bool)

(declare-fun b_and!299573 () Bool)

(assert (=> b!3927510 (= tp!1195746 b_and!299573)))

(declare-fun b!3927487 () Bool)

(declare-fun b_free!107125 () Bool)

(declare-fun b_next!107829 () Bool)

(assert (=> b!3927487 (= b_free!107125 (not b_next!107829))))

(declare-fun tp!1195743 () Bool)

(declare-fun b_and!299575 () Bool)

(assert (=> b!3927487 (= tp!1195743 b_and!299575)))

(declare-fun b_free!107127 () Bool)

(declare-fun b_next!107831 () Bool)

(assert (=> b!3927487 (= b_free!107127 (not b_next!107831))))

(declare-fun tp!1195737 () Bool)

(declare-fun b_and!299577 () Bool)

(assert (=> b!3927487 (= tp!1195737 b_and!299577)))

(declare-fun b!3927468 () Bool)

(declare-datatypes ((Unit!60043 0))(
  ( (Unit!60044) )
))
(declare-fun e!2429455 () Unit!60043)

(declare-fun Unit!60045 () Unit!60043)

(assert (=> b!3927468 (= e!2429455 Unit!60045)))

(declare-fun lt!1370954 () Unit!60043)

(declare-datatypes ((C!23012 0))(
  ( (C!23013 (val!13600 Int)) )
))
(declare-datatypes ((List!41825 0))(
  ( (Nil!41701) (Cons!41701 (h!47121 C!23012) (t!325152 List!41825)) )
))
(declare-fun prefix!426 () List!41825)

(declare-fun suffix!1176 () List!41825)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2466 (List!41825 List!41825) Unit!60043)

(assert (=> b!3927468 (= lt!1370954 (lemmaConcatTwoListThenFirstIsPrefix!2466 prefix!426 suffix!1176))))

(declare-fun lt!1370931 () List!41825)

(declare-fun isPrefix!3603 (List!41825 List!41825) Bool)

(assert (=> b!3927468 (isPrefix!3603 prefix!426 lt!1370931)))

(declare-fun lt!1370946 () Unit!60043)

(declare-fun lt!1370927 () List!41825)

(declare-fun lemmaIsPrefixSameLengthThenSameList!799 (List!41825 List!41825 List!41825) Unit!60043)

(assert (=> b!3927468 (= lt!1370946 (lemmaIsPrefixSameLengthThenSameList!799 lt!1370927 prefix!426 lt!1370931))))

(assert (=> b!3927468 (= lt!1370927 prefix!426)))

(declare-fun lt!1370943 () Unit!60043)

(declare-datatypes ((List!41826 0))(
  ( (Nil!41702) (Cons!41702 (h!47122 (_ BitVec 16)) (t!325153 List!41826)) )
))
(declare-datatypes ((TokenValue!6738 0))(
  ( (FloatLiteralValue!13476 (text!47611 List!41826)) (TokenValueExt!6737 (__x!25693 Int)) (Broken!33690 (value!206086 List!41826)) (Object!6861) (End!6738) (Def!6738) (Underscore!6738) (Match!6738) (Else!6738) (Error!6738) (Case!6738) (If!6738) (Extends!6738) (Abstract!6738) (Class!6738) (Val!6738) (DelimiterValue!13476 (del!6798 List!41826)) (KeywordValue!6744 (value!206087 List!41826)) (CommentValue!13476 (value!206088 List!41826)) (WhitespaceValue!13476 (value!206089 List!41826)) (IndentationValue!6738 (value!206090 List!41826)) (String!47407) (Int32!6738) (Broken!33691 (value!206091 List!41826)) (Boolean!6739) (Unit!60046) (OperatorValue!6741 (op!6798 List!41826)) (IdentifierValue!13476 (value!206092 List!41826)) (IdentifierValue!13477 (value!206093 List!41826)) (WhitespaceValue!13477 (value!206094 List!41826)) (True!13476) (False!13476) (Broken!33692 (value!206095 List!41826)) (Broken!33693 (value!206096 List!41826)) (True!13477) (RightBrace!6738) (RightBracket!6738) (Colon!6738) (Null!6738) (Comma!6738) (LeftBracket!6738) (False!13477) (LeftBrace!6738) (ImaginaryLiteralValue!6738 (text!47612 List!41826)) (StringLiteralValue!20214 (value!206097 List!41826)) (EOFValue!6738 (value!206098 List!41826)) (IdentValue!6738 (value!206099 List!41826)) (DelimiterValue!13477 (value!206100 List!41826)) (DedentValue!6738 (value!206101 List!41826)) (NewLineValue!6738 (value!206102 List!41826)) (IntegerValue!20214 (value!206103 (_ BitVec 32)) (text!47613 List!41826)) (IntegerValue!20215 (value!206104 Int) (text!47614 List!41826)) (Times!6738) (Or!6738) (Equal!6738) (Minus!6738) (Broken!33694 (value!206105 List!41826)) (And!6738) (Div!6738) (LessEqual!6738) (Mod!6738) (Concat!18151) (Not!6738) (Plus!6738) (SpaceValue!6738 (value!206106 List!41826)) (IntegerValue!20216 (value!206107 Int) (text!47615 List!41826)) (StringLiteralValue!20215 (text!47616 List!41826)) (FloatLiteralValue!13477 (text!47617 List!41826)) (BytesLiteralValue!6738 (value!206108 List!41826)) (CommentValue!13477 (value!206109 List!41826)) (StringLiteralValue!20216 (value!206110 List!41826)) (ErrorTokenValue!6738 (msg!6799 List!41826)) )
))
(declare-datatypes ((Regex!11413 0))(
  ( (ElementMatch!11413 (c!682354 C!23012)) (Concat!18152 (regOne!23338 Regex!11413) (regTwo!23338 Regex!11413)) (EmptyExpr!11413) (Star!11413 (reg!11742 Regex!11413)) (EmptyLang!11413) (Union!11413 (regOne!23339 Regex!11413) (regTwo!23339 Regex!11413)) )
))
(declare-datatypes ((String!47408 0))(
  ( (String!47409 (value!206111 String)) )
))
(declare-datatypes ((IArray!25443 0))(
  ( (IArray!25444 (innerList!12779 List!41825)) )
))
(declare-datatypes ((Conc!12719 0))(
  ( (Node!12719 (left!31823 Conc!12719) (right!32153 Conc!12719) (csize!25668 Int) (cheight!12930 Int)) (Leaf!19680 (xs!16025 IArray!25443) (csize!25669 Int)) (Empty!12719) )
))
(declare-datatypes ((BalanceConc!25032 0))(
  ( (BalanceConc!25033 (c!682355 Conc!12719)) )
))
(declare-datatypes ((TokenValueInjection!12904 0))(
  ( (TokenValueInjection!12905 (toValue!8960 Int) (toChars!8819 Int)) )
))
(declare-datatypes ((Rule!12816 0))(
  ( (Rule!12817 (regex!6508 Regex!11413) (tag!7368 String!47408) (isSeparator!6508 Bool) (transformation!6508 TokenValueInjection!12904)) )
))
(declare-datatypes ((Token!12154 0))(
  ( (Token!12155 (value!206112 TokenValue!6738) (rule!9450 Rule!12816) (size!31289 Int) (originalCharacters!7108 List!41825)) )
))
(declare-datatypes ((tuple2!40974 0))(
  ( (tuple2!40975 (_1!23621 Token!12154) (_2!23621 List!41825)) )
))
(declare-datatypes ((Option!8928 0))(
  ( (None!8927) (Some!8927 (v!39253 tuple2!40974)) )
))
(declare-fun lt!1370939 () Option!8928)

(declare-fun lemmaSamePrefixThenSameSuffix!1824 (List!41825 List!41825 List!41825 List!41825 List!41825) Unit!60043)

(assert (=> b!3927468 (= lt!1370943 (lemmaSamePrefixThenSameSuffix!1824 lt!1370927 (_2!23621 (v!39253 lt!1370939)) prefix!426 suffix!1176 lt!1370931))))

(assert (=> b!3927468 false))

(declare-fun b!3927469 () Bool)

(declare-fun res!1589005 () Bool)

(declare-fun e!2429457 () Bool)

(assert (=> b!3927469 (=> (not res!1589005) (not e!2429457))))

(declare-datatypes ((List!41827 0))(
  ( (Nil!41703) (Cons!41703 (h!47123 Token!12154) (t!325154 List!41827)) )
))
(declare-fun prefixTokens!80 () List!41827)

(declare-fun isEmpty!24852 (List!41827) Bool)

(assert (=> b!3927469 (= res!1589005 (not (isEmpty!24852 prefixTokens!80)))))

(declare-fun e!2429453 () Bool)

(declare-fun b!3927470 () Bool)

(declare-fun e!2429469 () Bool)

(declare-fun tp!1195739 () Bool)

(declare-fun inv!21 (TokenValue!6738) Bool)

(assert (=> b!3927470 (= e!2429469 (and (inv!21 (value!206112 (h!47123 prefixTokens!80))) e!2429453 tp!1195739))))

(declare-fun b!3927471 () Bool)

(declare-fun e!2429464 () Bool)

(declare-fun e!2429482 () Bool)

(assert (=> b!3927471 (= e!2429464 e!2429482)))

(declare-fun res!1589003 () Bool)

(assert (=> b!3927471 (=> res!1589003 e!2429482)))

(declare-fun lt!1370925 () List!41825)

(declare-fun lt!1370950 () List!41825)

(assert (=> b!3927471 (= res!1589003 (or (not (= lt!1370925 lt!1370931)) (not (= lt!1370925 lt!1370950))))))

(declare-fun lt!1370936 () List!41825)

(declare-fun ++!10773 (List!41825 List!41825) List!41825)

(assert (=> b!3927471 (= lt!1370925 (++!10773 lt!1370936 suffix!1176))))

(declare-fun b!3927472 () Bool)

(declare-fun e!2429470 () Unit!60043)

(declare-fun Unit!60047 () Unit!60043)

(assert (=> b!3927472 (= e!2429470 Unit!60047)))

(declare-fun b!3927473 () Bool)

(declare-fun res!1588995 () Bool)

(declare-fun e!2429475 () Bool)

(assert (=> b!3927473 (=> res!1588995 e!2429475)))

(declare-datatypes ((tuple2!40976 0))(
  ( (tuple2!40977 (_1!23622 List!41827) (_2!23622 List!41825)) )
))
(declare-fun lt!1370930 () tuple2!40976)

(assert (=> b!3927473 (= res!1588995 (or (not (= lt!1370930 (tuple2!40977 (_1!23622 lt!1370930) (_2!23622 lt!1370930)))) (= (_2!23621 (v!39253 lt!1370939)) suffix!1176)))))

(declare-fun b!3927474 () Bool)

(declare-fun e!2429467 () Bool)

(declare-fun tp_is_empty!19797 () Bool)

(declare-fun tp!1195745 () Bool)

(assert (=> b!3927474 (= e!2429467 (and tp_is_empty!19797 tp!1195745))))

(declare-fun b!3927476 () Bool)

(declare-fun Unit!60048 () Unit!60043)

(assert (=> b!3927476 (= e!2429455 Unit!60048)))

(declare-fun b!3927477 () Bool)

(declare-fun e!2429477 () Bool)

(declare-fun tp!1195733 () Bool)

(assert (=> b!3927477 (= e!2429477 (and tp_is_empty!19797 tp!1195733))))

(declare-fun b!3927478 () Bool)

(declare-fun res!1588994 () Bool)

(assert (=> b!3927478 (=> (not res!1588994) (not e!2429457))))

(declare-datatypes ((List!41828 0))(
  ( (Nil!41704) (Cons!41704 (h!47124 Rule!12816) (t!325155 List!41828)) )
))
(declare-fun rules!2768 () List!41828)

(declare-fun isEmpty!24853 (List!41828) Bool)

(assert (=> b!3927478 (= res!1588994 (not (isEmpty!24853 rules!2768)))))

(declare-fun b!3927479 () Bool)

(declare-fun e!2429448 () Unit!60043)

(declare-fun Unit!60049 () Unit!60043)

(assert (=> b!3927479 (= e!2429448 Unit!60049)))

(declare-fun lt!1370952 () Int)

(declare-fun size!31290 (List!41825) Int)

(assert (=> b!3927479 (= lt!1370952 (size!31290 lt!1370931))))

(declare-datatypes ((LexerInterface!6097 0))(
  ( (LexerInterfaceExt!6094 (__x!25694 Int)) (Lexer!6095) )
))
(declare-fun thiss!20629 () LexerInterface!6097)

(declare-fun lt!1370940 () Unit!60043)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1339 (LexerInterface!6097 List!41828 List!41825 List!41825 List!41825 Rule!12816) Unit!60043)

(assert (=> b!3927479 (= lt!1370940 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1339 thiss!20629 rules!2768 lt!1370927 lt!1370931 (_2!23621 (v!39253 lt!1370939)) (rule!9450 (_1!23621 (v!39253 lt!1370939)))))))

(declare-fun lt!1370934 () Int)

(declare-fun lt!1370938 () TokenValue!6738)

(declare-fun maxPrefixOneRule!2471 (LexerInterface!6097 Rule!12816 List!41825) Option!8928)

(assert (=> b!3927479 (= (maxPrefixOneRule!2471 thiss!20629 (rule!9450 (_1!23621 (v!39253 lt!1370939))) lt!1370931) (Some!8927 (tuple2!40975 (Token!12155 lt!1370938 (rule!9450 (_1!23621 (v!39253 lt!1370939))) lt!1370934 lt!1370927) (_2!23621 (v!39253 lt!1370939)))))))

(declare-fun lt!1370963 () tuple2!40974)

(declare-fun get!13782 (Option!8928) tuple2!40974)

(assert (=> b!3927479 (= lt!1370963 (get!13782 lt!1370939))))

(declare-fun c!682352 () Bool)

(declare-fun lt!1370962 () Int)

(assert (=> b!3927479 (= c!682352 (< (size!31290 (_2!23621 lt!1370963)) lt!1370962))))

(declare-fun lt!1370945 () Unit!60043)

(assert (=> b!3927479 (= lt!1370945 e!2429470)))

(assert (=> b!3927479 false))

(declare-fun b!3927480 () Bool)

(declare-fun e!2429450 () Bool)

(assert (=> b!3927480 (= e!2429450 false)))

(declare-fun b!3927481 () Bool)

(declare-fun e!2429449 () Bool)

(assert (=> b!3927481 (= e!2429449 e!2429475)))

(declare-fun res!1589009 () Bool)

(assert (=> b!3927481 (=> res!1589009 e!2429475)))

(declare-fun lt!1370951 () tuple2!40976)

(declare-fun lt!1370956 () List!41827)

(declare-fun ++!10774 (List!41827 List!41827) List!41827)

(assert (=> b!3927481 (= res!1589009 (not (= lt!1370951 (tuple2!40977 (++!10774 lt!1370956 (_1!23622 lt!1370930)) (_2!23622 lt!1370930)))))))

(assert (=> b!3927481 (= lt!1370956 (Cons!41703 (_1!23621 (v!39253 lt!1370939)) Nil!41703))))

(declare-fun b!3927482 () Bool)

(declare-fun e!2429483 () Bool)

(declare-fun e!2429452 () Bool)

(assert (=> b!3927482 (= e!2429483 e!2429452)))

(declare-fun res!1588996 () Bool)

(assert (=> b!3927482 (=> res!1588996 e!2429452)))

(declare-fun suffixResult!91 () List!41825)

(declare-fun suffixTokens!72 () List!41827)

(declare-fun lt!1370957 () List!41827)

(assert (=> b!3927482 (= res!1588996 (not (= lt!1370930 (tuple2!40977 (++!10774 lt!1370957 suffixTokens!72) suffixResult!91))))))

(declare-fun tail!6057 (List!41827) List!41827)

(assert (=> b!3927482 (= lt!1370957 (tail!6057 prefixTokens!80))))

(declare-fun lt!1370948 () List!41825)

(declare-fun lt!1370926 () List!41825)

(assert (=> b!3927482 (isPrefix!3603 lt!1370948 lt!1370926)))

(declare-fun lt!1370959 () Unit!60043)

(assert (=> b!3927482 (= lt!1370959 (lemmaConcatTwoListThenFirstIsPrefix!2466 lt!1370948 suffix!1176))))

(declare-fun e!2429466 () Bool)

(declare-fun b!3927483 () Bool)

(declare-fun tp!1195738 () Bool)

(declare-fun inv!55891 (String!47408) Bool)

(declare-fun inv!55894 (TokenValueInjection!12904) Bool)

(assert (=> b!3927483 (= e!2429453 (and tp!1195738 (inv!55891 (tag!7368 (rule!9450 (h!47123 prefixTokens!80)))) (inv!55894 (transformation!6508 (rule!9450 (h!47123 prefixTokens!80)))) e!2429466))))

(declare-fun b!3927484 () Bool)

(declare-fun res!1589004 () Bool)

(assert (=> b!3927484 (=> (not res!1589004) (not e!2429457))))

(declare-fun isEmpty!24854 (List!41825) Bool)

(assert (=> b!3927484 (= res!1589004 (not (isEmpty!24854 prefix!426)))))

(declare-fun b!3927485 () Bool)

(declare-fun res!1588998 () Bool)

(assert (=> b!3927485 (=> (not res!1588998) (not e!2429457))))

(declare-fun rulesInvariant!5440 (LexerInterface!6097 List!41828) Bool)

(assert (=> b!3927485 (= res!1588998 (rulesInvariant!5440 thiss!20629 rules!2768))))

(declare-fun b!3927486 () Bool)

(declare-fun e!2429473 () Bool)

(assert (=> b!3927486 (= e!2429473 false)))

(declare-fun e!2429480 () Bool)

(assert (=> b!3927487 (= e!2429480 (and tp!1195743 tp!1195737))))

(declare-fun b!3927488 () Bool)

(declare-fun e!2429479 () Bool)

(assert (=> b!3927488 (= e!2429479 e!2429464)))

(declare-fun res!1589006 () Bool)

(assert (=> b!3927488 (=> res!1589006 e!2429464)))

(assert (=> b!3927488 (= res!1589006 (not (= lt!1370936 prefix!426)))))

(assert (=> b!3927488 (= lt!1370936 (++!10773 lt!1370927 lt!1370948))))

(declare-fun getSuffix!2058 (List!41825 List!41825) List!41825)

(assert (=> b!3927488 (= lt!1370948 (getSuffix!2058 prefix!426 lt!1370927))))

(declare-fun b!3927489 () Bool)

(declare-fun tp!1195741 () Bool)

(declare-fun e!2429481 () Bool)

(declare-fun e!2429471 () Bool)

(declare-fun inv!55895 (Token!12154) Bool)

(assert (=> b!3927489 (= e!2429471 (and (inv!55895 (h!47123 suffixTokens!72)) e!2429481 tp!1195741))))

(declare-fun b!3927490 () Bool)

(declare-fun e!2429446 () Bool)

(declare-fun e!2429462 () Bool)

(declare-fun tp!1195731 () Bool)

(assert (=> b!3927490 (= e!2429446 (and e!2429462 tp!1195731))))

(declare-fun b!3927491 () Bool)

(declare-fun Unit!60050 () Unit!60043)

(assert (=> b!3927491 (= e!2429448 Unit!60050)))

(declare-fun b!3927492 () Bool)

(declare-fun c!682350 () Bool)

(declare-fun lt!1370921 () List!41827)

(assert (=> b!3927492 (= c!682350 (isEmpty!24852 lt!1370921))))

(assert (=> b!3927492 (= lt!1370921 (tail!6057 prefixTokens!80))))

(declare-fun e!2429465 () Unit!60043)

(assert (=> b!3927492 (= e!2429470 e!2429465)))

(declare-fun tp!1195734 () Bool)

(declare-fun b!3927493 () Bool)

(assert (=> b!3927493 (= e!2429462 (and tp!1195734 (inv!55891 (tag!7368 (h!47124 rules!2768))) (inv!55894 (transformation!6508 (h!47124 rules!2768))) e!2429480))))

(declare-fun call!284740 () tuple2!40976)

(declare-fun bm!284735 () Bool)

(declare-fun lexList!1865 (LexerInterface!6097 List!41828 List!41825) tuple2!40976)

(assert (=> bm!284735 (= call!284740 (lexList!1865 thiss!20629 rules!2768 (_2!23621 lt!1370963)))))

(declare-fun b!3927494 () Bool)

(declare-fun e!2429459 () Bool)

(assert (=> b!3927494 (= e!2429459 (not e!2429449))))

(declare-fun res!1588997 () Bool)

(assert (=> b!3927494 (=> res!1588997 e!2429449)))

(assert (=> b!3927494 (= res!1588997 (not (= lt!1370950 lt!1370931)))))

(assert (=> b!3927494 (= lt!1370930 (lexList!1865 thiss!20629 rules!2768 (_2!23621 (v!39253 lt!1370939))))))

(declare-fun lt!1370960 () List!41825)

(assert (=> b!3927494 (and (= (size!31289 (_1!23621 (v!39253 lt!1370939))) lt!1370934) (= (originalCharacters!7108 (_1!23621 (v!39253 lt!1370939))) lt!1370927) (= (v!39253 lt!1370939) (tuple2!40975 (Token!12155 lt!1370938 (rule!9450 (_1!23621 (v!39253 lt!1370939))) lt!1370934 lt!1370927) lt!1370960)))))

(assert (=> b!3927494 (= lt!1370934 (size!31290 lt!1370927))))

(declare-fun e!2429456 () Bool)

(assert (=> b!3927494 e!2429456))

(declare-fun res!1589010 () Bool)

(assert (=> b!3927494 (=> (not res!1589010) (not e!2429456))))

(assert (=> b!3927494 (= res!1589010 (= (value!206112 (_1!23621 (v!39253 lt!1370939))) lt!1370938))))

(declare-fun apply!9747 (TokenValueInjection!12904 BalanceConc!25032) TokenValue!6738)

(declare-fun seqFromList!4775 (List!41825) BalanceConc!25032)

(assert (=> b!3927494 (= lt!1370938 (apply!9747 (transformation!6508 (rule!9450 (_1!23621 (v!39253 lt!1370939)))) (seqFromList!4775 lt!1370927)))))

(assert (=> b!3927494 (= (_2!23621 (v!39253 lt!1370939)) lt!1370960)))

(declare-fun lt!1370947 () Unit!60043)

(assert (=> b!3927494 (= lt!1370947 (lemmaSamePrefixThenSameSuffix!1824 lt!1370927 (_2!23621 (v!39253 lt!1370939)) lt!1370927 lt!1370960 lt!1370931))))

(assert (=> b!3927494 (= lt!1370960 (getSuffix!2058 lt!1370931 lt!1370927))))

(assert (=> b!3927494 (isPrefix!3603 lt!1370927 lt!1370950)))

(assert (=> b!3927494 (= lt!1370950 (++!10773 lt!1370927 (_2!23621 (v!39253 lt!1370939))))))

(declare-fun lt!1370923 () Unit!60043)

(assert (=> b!3927494 (= lt!1370923 (lemmaConcatTwoListThenFirstIsPrefix!2466 lt!1370927 (_2!23621 (v!39253 lt!1370939))))))

(declare-fun list!15495 (BalanceConc!25032) List!41825)

(declare-fun charsOf!4332 (Token!12154) BalanceConc!25032)

(assert (=> b!3927494 (= lt!1370927 (list!15495 (charsOf!4332 (_1!23621 (v!39253 lt!1370939)))))))

(declare-fun ruleValid!2456 (LexerInterface!6097 Rule!12816) Bool)

(assert (=> b!3927494 (ruleValid!2456 thiss!20629 (rule!9450 (_1!23621 (v!39253 lt!1370939))))))

(declare-fun lt!1370949 () Unit!60043)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1536 (LexerInterface!6097 Rule!12816 List!41828) Unit!60043)

(assert (=> b!3927494 (= lt!1370949 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1536 thiss!20629 (rule!9450 (_1!23621 (v!39253 lt!1370939))) rules!2768))))

(declare-fun lt!1370941 () Unit!60043)

(declare-fun lemmaCharactersSize!1165 (Token!12154) Unit!60043)

(assert (=> b!3927494 (= lt!1370941 (lemmaCharactersSize!1165 (_1!23621 (v!39253 lt!1370939))))))

(declare-fun b!3927495 () Bool)

(assert (=> b!3927495 (= e!2429456 (= (size!31289 (_1!23621 (v!39253 lt!1370939))) (size!31290 (originalCharacters!7108 (_1!23621 (v!39253 lt!1370939))))))))

(declare-fun b!3927496 () Bool)

(declare-fun res!1589000 () Bool)

(declare-fun e!2429454 () Bool)

(assert (=> b!3927496 (=> res!1589000 e!2429454)))

(declare-fun head!8331 (List!41827) Token!12154)

(assert (=> b!3927496 (= res!1589000 (not (= (head!8331 prefixTokens!80) (_1!23621 (v!39253 lt!1370939)))))))

(declare-fun e!2429484 () Bool)

(declare-fun b!3927497 () Bool)

(declare-fun tp!1195740 () Bool)

(declare-fun e!2429476 () Bool)

(assert (=> b!3927497 (= e!2429476 (and tp!1195740 (inv!55891 (tag!7368 (rule!9450 (h!47123 suffixTokens!72)))) (inv!55894 (transformation!6508 (rule!9450 (h!47123 suffixTokens!72)))) e!2429484))))

(declare-fun b!3927498 () Bool)

(declare-fun e!2429478 () Bool)

(assert (=> b!3927498 (= e!2429457 e!2429478)))

(declare-fun res!1588993 () Bool)

(assert (=> b!3927498 (=> (not res!1588993) (not e!2429478))))

(declare-fun lt!1370933 () List!41827)

(assert (=> b!3927498 (= res!1588993 (= lt!1370951 (tuple2!40977 lt!1370933 suffixResult!91)))))

(assert (=> b!3927498 (= lt!1370951 (lexList!1865 thiss!20629 rules!2768 lt!1370931))))

(assert (=> b!3927498 (= lt!1370933 (++!10774 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3927498 (= lt!1370931 (++!10773 prefix!426 suffix!1176))))

(declare-fun b!3927499 () Bool)

(declare-fun e!2429468 () Bool)

(assert (=> b!3927499 (= e!2429482 e!2429468)))

(declare-fun res!1589011 () Bool)

(assert (=> b!3927499 (=> res!1589011 e!2429468)))

(declare-fun lt!1370937 () List!41825)

(assert (=> b!3927499 (= res!1589011 (or (not (= lt!1370931 lt!1370925)) (not (= lt!1370931 lt!1370937)) (not (= lt!1370950 lt!1370937))))))

(assert (=> b!3927499 (= lt!1370925 lt!1370937)))

(assert (=> b!3927499 (= lt!1370937 (++!10773 lt!1370927 lt!1370926))))

(assert (=> b!3927499 (= lt!1370926 (++!10773 lt!1370948 suffix!1176))))

(declare-fun lt!1370929 () Unit!60043)

(declare-fun lemmaConcatAssociativity!2304 (List!41825 List!41825 List!41825) Unit!60043)

(assert (=> b!3927499 (= lt!1370929 (lemmaConcatAssociativity!2304 lt!1370927 lt!1370948 suffix!1176))))

(declare-fun b!3927500 () Bool)

(assert (=> b!3927500 (= e!2429475 e!2429454)))

(declare-fun res!1588999 () Bool)

(assert (=> b!3927500 (=> res!1588999 e!2429454)))

(declare-fun lt!1370953 () Int)

(assert (=> b!3927500 (= res!1588999 (<= lt!1370953 lt!1370962))))

(declare-fun lt!1370955 () Unit!60043)

(assert (=> b!3927500 (= lt!1370955 e!2429455)))

(declare-fun c!682351 () Bool)

(assert (=> b!3927500 (= c!682351 (= lt!1370953 lt!1370962))))

(declare-fun lt!1370944 () Unit!60043)

(assert (=> b!3927500 (= lt!1370944 e!2429448)))

(declare-fun c!682353 () Bool)

(assert (=> b!3927500 (= c!682353 (< lt!1370953 lt!1370962))))

(assert (=> b!3927500 (= lt!1370962 (size!31290 suffix!1176))))

(assert (=> b!3927500 (= lt!1370953 (size!31290 (_2!23621 (v!39253 lt!1370939))))))

(declare-fun b!3927475 () Bool)

(declare-fun e!2429447 () Bool)

(assert (=> b!3927475 (= e!2429447 e!2429459)))

(declare-fun res!1589008 () Bool)

(assert (=> b!3927475 (=> (not res!1589008) (not e!2429459))))

(get-info :version)

(assert (=> b!3927475 (= res!1589008 ((_ is Some!8927) lt!1370939))))

(declare-fun maxPrefix!3401 (LexerInterface!6097 List!41828 List!41825) Option!8928)

(assert (=> b!3927475 (= lt!1370939 (maxPrefix!3401 thiss!20629 rules!2768 lt!1370931))))

(declare-fun res!1589015 () Bool)

(assert (=> start!368380 (=> (not res!1589015) (not e!2429457))))

(assert (=> start!368380 (= res!1589015 ((_ is Lexer!6095) thiss!20629))))

(assert (=> start!368380 e!2429457))

(declare-fun e!2429460 () Bool)

(assert (=> start!368380 e!2429460))

(assert (=> start!368380 true))

(assert (=> start!368380 e!2429467))

(assert (=> start!368380 e!2429446))

(declare-fun e!2429451 () Bool)

(assert (=> start!368380 e!2429451))

(assert (=> start!368380 e!2429471))

(assert (=> start!368380 e!2429477))

(declare-fun b!3927501 () Bool)

(declare-fun Unit!60051 () Unit!60043)

(assert (=> b!3927501 (= e!2429465 Unit!60051)))

(declare-fun lt!1370942 () Unit!60043)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!108 (LexerInterface!6097 List!41828 List!41825 List!41825 List!41827 List!41825 List!41827) Unit!60043)

(assert (=> b!3927501 (= lt!1370942 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!108 thiss!20629 rules!2768 suffix!1176 (_2!23621 lt!1370963) suffixTokens!72 suffixResult!91 lt!1370921))))

(declare-fun res!1589012 () Bool)

(assert (=> b!3927501 (= res!1589012 (not (= call!284740 (tuple2!40977 (++!10774 lt!1370921 suffixTokens!72) suffixResult!91))))))

(assert (=> b!3927501 (=> (not res!1589012) (not e!2429450))))

(assert (=> b!3927501 e!2429450))

(declare-fun b!3927502 () Bool)

(declare-fun tp!1195730 () Bool)

(assert (=> b!3927502 (= e!2429460 (and tp_is_empty!19797 tp!1195730))))

(declare-fun b!3927503 () Bool)

(assert (=> b!3927503 (= e!2429468 e!2429483)))

(declare-fun res!1589007 () Bool)

(assert (=> b!3927503 (=> res!1589007 e!2429483)))

(assert (=> b!3927503 (= res!1589007 (not (= lt!1370926 (_2!23621 (v!39253 lt!1370939)))))))

(assert (=> b!3927503 (= (_2!23621 (v!39253 lt!1370939)) lt!1370926)))

(declare-fun lt!1370958 () Unit!60043)

(assert (=> b!3927503 (= lt!1370958 (lemmaSamePrefixThenSameSuffix!1824 lt!1370927 (_2!23621 (v!39253 lt!1370939)) lt!1370927 lt!1370926 lt!1370931))))

(assert (=> b!3927503 (isPrefix!3603 lt!1370927 lt!1370937)))

(declare-fun lt!1370922 () Unit!60043)

(assert (=> b!3927503 (= lt!1370922 (lemmaConcatTwoListThenFirstIsPrefix!2466 lt!1370927 lt!1370926))))

(declare-fun b!3927504 () Bool)

(assert (=> b!3927504 (= e!2429454 e!2429479)))

(declare-fun res!1589002 () Bool)

(assert (=> b!3927504 (=> res!1589002 e!2429479)))

(assert (=> b!3927504 (= res!1589002 (>= lt!1370934 (size!31290 prefix!426)))))

(assert (=> b!3927504 (isPrefix!3603 lt!1370927 prefix!426)))

(declare-fun lt!1370932 () Unit!60043)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!281 (List!41825 List!41825 List!41825) Unit!60043)

(assert (=> b!3927504 (= lt!1370932 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!281 prefix!426 lt!1370927 lt!1370931))))

(assert (=> b!3927504 (isPrefix!3603 prefix!426 lt!1370931)))

(declare-fun lt!1370935 () Unit!60043)

(assert (=> b!3927504 (= lt!1370935 (lemmaConcatTwoListThenFirstIsPrefix!2466 prefix!426 suffix!1176))))

(declare-fun b!3927505 () Bool)

(declare-fun Unit!60052 () Unit!60043)

(assert (=> b!3927505 (= e!2429465 Unit!60052)))

(declare-fun lt!1370961 () Unit!60043)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!556 (List!41825 List!41825 List!41825 List!41825) Unit!60043)

(assert (=> b!3927505 (= lt!1370961 (lemmaConcatSameAndSameSizesThenSameLists!556 lt!1370927 (_2!23621 (v!39253 lt!1370939)) lt!1370927 (_2!23621 lt!1370963)))))

(assert (=> b!3927505 (= (_2!23621 (v!39253 lt!1370939)) (_2!23621 lt!1370963))))

(declare-fun lt!1370928 () Unit!60043)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!108 (LexerInterface!6097 List!41828 List!41825 List!41825 List!41827 List!41825) Unit!60043)

(assert (=> b!3927505 (= lt!1370928 (lemmaLexWithSmallerInputCannotProduceSameResults!108 thiss!20629 rules!2768 suffix!1176 (_2!23621 lt!1370963) suffixTokens!72 suffixResult!91))))

(declare-fun res!1589014 () Bool)

(declare-fun lt!1370924 () tuple2!40976)

(assert (=> b!3927505 (= res!1589014 (not (= call!284740 lt!1370924)))))

(assert (=> b!3927505 (=> (not res!1589014) (not e!2429473))))

(assert (=> b!3927505 e!2429473))

(declare-fun b!3927506 () Bool)

(declare-fun res!1589001 () Bool)

(assert (=> b!3927506 (=> res!1589001 e!2429452)))

(assert (=> b!3927506 (= res!1589001 (not (isEmpty!24852 lt!1370957)))))

(declare-fun tp!1195736 () Bool)

(declare-fun b!3927507 () Bool)

(assert (=> b!3927507 (= e!2429451 (and (inv!55895 (h!47123 prefixTokens!80)) e!2429469 tp!1195736))))

(declare-fun tp!1195744 () Bool)

(declare-fun b!3927508 () Bool)

(assert (=> b!3927508 (= e!2429481 (and (inv!21 (value!206112 (h!47123 suffixTokens!72))) e!2429476 tp!1195744))))

(declare-fun b!3927509 () Bool)

(assert (=> b!3927509 (= e!2429452 (or (not (= prefixTokens!80 lt!1370956)) (= lt!1370930 lt!1370924)))))

(assert (=> b!3927510 (= e!2429466 (and tp!1195732 tp!1195746))))

(assert (=> b!3927511 (= e!2429484 (and tp!1195742 tp!1195735))))

(declare-fun b!3927512 () Bool)

(assert (=> b!3927512 (= e!2429478 e!2429447)))

(declare-fun res!1589013 () Bool)

(assert (=> b!3927512 (=> (not res!1589013) (not e!2429447))))

(assert (=> b!3927512 (= res!1589013 (= (lexList!1865 thiss!20629 rules!2768 suffix!1176) lt!1370924))))

(assert (=> b!3927512 (= lt!1370924 (tuple2!40977 suffixTokens!72 suffixResult!91))))

(assert (= (and start!368380 res!1589015) b!3927478))

(assert (= (and b!3927478 res!1588994) b!3927485))

(assert (= (and b!3927485 res!1588998) b!3927469))

(assert (= (and b!3927469 res!1589005) b!3927484))

(assert (= (and b!3927484 res!1589004) b!3927498))

(assert (= (and b!3927498 res!1588993) b!3927512))

(assert (= (and b!3927512 res!1589013) b!3927475))

(assert (= (and b!3927475 res!1589008) b!3927494))

(assert (= (and b!3927494 res!1589010) b!3927495))

(assert (= (and b!3927494 (not res!1588997)) b!3927481))

(assert (= (and b!3927481 (not res!1589009)) b!3927473))

(assert (= (and b!3927473 (not res!1588995)) b!3927500))

(assert (= (and b!3927500 c!682353) b!3927479))

(assert (= (and b!3927500 (not c!682353)) b!3927491))

(assert (= (and b!3927479 c!682352) b!3927492))

(assert (= (and b!3927479 (not c!682352)) b!3927472))

(assert (= (and b!3927492 c!682350) b!3927505))

(assert (= (and b!3927492 (not c!682350)) b!3927501))

(assert (= (and b!3927505 res!1589014) b!3927486))

(assert (= (and b!3927501 res!1589012) b!3927480))

(assert (= (or b!3927505 b!3927501) bm!284735))

(assert (= (and b!3927500 c!682351) b!3927468))

(assert (= (and b!3927500 (not c!682351)) b!3927476))

(assert (= (and b!3927500 (not res!1588999)) b!3927496))

(assert (= (and b!3927496 (not res!1589000)) b!3927504))

(assert (= (and b!3927504 (not res!1589002)) b!3927488))

(assert (= (and b!3927488 (not res!1589006)) b!3927471))

(assert (= (and b!3927471 (not res!1589003)) b!3927499))

(assert (= (and b!3927499 (not res!1589011)) b!3927503))

(assert (= (and b!3927503 (not res!1589007)) b!3927482))

(assert (= (and b!3927482 (not res!1588996)) b!3927506))

(assert (= (and b!3927506 (not res!1589001)) b!3927509))

(assert (= (and start!368380 ((_ is Cons!41701) suffixResult!91)) b!3927502))

(assert (= (and start!368380 ((_ is Cons!41701) suffix!1176)) b!3927474))

(assert (= b!3927493 b!3927487))

(assert (= b!3927490 b!3927493))

(assert (= (and start!368380 ((_ is Cons!41704) rules!2768)) b!3927490))

(assert (= b!3927483 b!3927510))

(assert (= b!3927470 b!3927483))

(assert (= b!3927507 b!3927470))

(assert (= (and start!368380 ((_ is Cons!41703) prefixTokens!80)) b!3927507))

(assert (= b!3927497 b!3927511))

(assert (= b!3927508 b!3927497))

(assert (= b!3927489 b!3927508))

(assert (= (and start!368380 ((_ is Cons!41703) suffixTokens!72)) b!3927489))

(assert (= (and start!368380 ((_ is Cons!41701) prefix!426)) b!3927477))

(declare-fun m!4492069 () Bool)

(assert (=> b!3927488 m!4492069))

(declare-fun m!4492071 () Bool)

(assert (=> b!3927488 m!4492071))

(declare-fun m!4492073 () Bool)

(assert (=> b!3927500 m!4492073))

(declare-fun m!4492075 () Bool)

(assert (=> b!3927500 m!4492075))

(declare-fun m!4492077 () Bool)

(assert (=> b!3927507 m!4492077))

(declare-fun m!4492079 () Bool)

(assert (=> b!3927499 m!4492079))

(declare-fun m!4492081 () Bool)

(assert (=> b!3927499 m!4492081))

(declare-fun m!4492083 () Bool)

(assert (=> b!3927499 m!4492083))

(declare-fun m!4492085 () Bool)

(assert (=> b!3927471 m!4492085))

(declare-fun m!4492087 () Bool)

(assert (=> b!3927508 m!4492087))

(declare-fun m!4492089 () Bool)

(assert (=> b!3927470 m!4492089))

(declare-fun m!4492091 () Bool)

(assert (=> b!3927483 m!4492091))

(declare-fun m!4492093 () Bool)

(assert (=> b!3927483 m!4492093))

(declare-fun m!4492095 () Bool)

(assert (=> b!3927496 m!4492095))

(declare-fun m!4492097 () Bool)

(assert (=> bm!284735 m!4492097))

(declare-fun m!4492099 () Bool)

(assert (=> b!3927484 m!4492099))

(declare-fun m!4492101 () Bool)

(assert (=> b!3927512 m!4492101))

(declare-fun m!4492103 () Bool)

(assert (=> b!3927469 m!4492103))

(declare-fun m!4492105 () Bool)

(assert (=> b!3927485 m!4492105))

(declare-fun m!4492107 () Bool)

(assert (=> b!3927494 m!4492107))

(declare-fun m!4492109 () Bool)

(assert (=> b!3927494 m!4492109))

(declare-fun m!4492111 () Bool)

(assert (=> b!3927494 m!4492111))

(declare-fun m!4492113 () Bool)

(assert (=> b!3927494 m!4492113))

(declare-fun m!4492115 () Bool)

(assert (=> b!3927494 m!4492115))

(declare-fun m!4492117 () Bool)

(assert (=> b!3927494 m!4492117))

(declare-fun m!4492119 () Bool)

(assert (=> b!3927494 m!4492119))

(declare-fun m!4492121 () Bool)

(assert (=> b!3927494 m!4492121))

(declare-fun m!4492123 () Bool)

(assert (=> b!3927494 m!4492123))

(declare-fun m!4492125 () Bool)

(assert (=> b!3927494 m!4492125))

(assert (=> b!3927494 m!4492115))

(declare-fun m!4492127 () Bool)

(assert (=> b!3927494 m!4492127))

(assert (=> b!3927494 m!4492113))

(declare-fun m!4492129 () Bool)

(assert (=> b!3927494 m!4492129))

(declare-fun m!4492131 () Bool)

(assert (=> b!3927494 m!4492131))

(declare-fun m!4492133 () Bool)

(assert (=> b!3927494 m!4492133))

(declare-fun m!4492135 () Bool)

(assert (=> b!3927498 m!4492135))

(declare-fun m!4492137 () Bool)

(assert (=> b!3927498 m!4492137))

(declare-fun m!4492139 () Bool)

(assert (=> b!3927498 m!4492139))

(declare-fun m!4492141 () Bool)

(assert (=> b!3927492 m!4492141))

(declare-fun m!4492143 () Bool)

(assert (=> b!3927492 m!4492143))

(declare-fun m!4492145 () Bool)

(assert (=> b!3927475 m!4492145))

(declare-fun m!4492147 () Bool)

(assert (=> b!3927468 m!4492147))

(declare-fun m!4492149 () Bool)

(assert (=> b!3927468 m!4492149))

(declare-fun m!4492151 () Bool)

(assert (=> b!3927468 m!4492151))

(declare-fun m!4492153 () Bool)

(assert (=> b!3927468 m!4492153))

(declare-fun m!4492155 () Bool)

(assert (=> b!3927482 m!4492155))

(assert (=> b!3927482 m!4492143))

(declare-fun m!4492157 () Bool)

(assert (=> b!3927482 m!4492157))

(declare-fun m!4492159 () Bool)

(assert (=> b!3927482 m!4492159))

(declare-fun m!4492161 () Bool)

(assert (=> b!3927495 m!4492161))

(declare-fun m!4492163 () Bool)

(assert (=> b!3927479 m!4492163))

(declare-fun m!4492165 () Bool)

(assert (=> b!3927479 m!4492165))

(declare-fun m!4492167 () Bool)

(assert (=> b!3927479 m!4492167))

(declare-fun m!4492169 () Bool)

(assert (=> b!3927479 m!4492169))

(declare-fun m!4492171 () Bool)

(assert (=> b!3927479 m!4492171))

(declare-fun m!4492173 () Bool)

(assert (=> b!3927503 m!4492173))

(declare-fun m!4492175 () Bool)

(assert (=> b!3927503 m!4492175))

(declare-fun m!4492177 () Bool)

(assert (=> b!3927503 m!4492177))

(declare-fun m!4492179 () Bool)

(assert (=> b!3927504 m!4492179))

(declare-fun m!4492181 () Bool)

(assert (=> b!3927504 m!4492181))

(assert (=> b!3927504 m!4492147))

(assert (=> b!3927504 m!4492149))

(declare-fun m!4492183 () Bool)

(assert (=> b!3927504 m!4492183))

(declare-fun m!4492185 () Bool)

(assert (=> b!3927497 m!4492185))

(declare-fun m!4492187 () Bool)

(assert (=> b!3927497 m!4492187))

(declare-fun m!4492189 () Bool)

(assert (=> b!3927506 m!4492189))

(declare-fun m!4492191 () Bool)

(assert (=> b!3927493 m!4492191))

(declare-fun m!4492193 () Bool)

(assert (=> b!3927493 m!4492193))

(declare-fun m!4492195 () Bool)

(assert (=> b!3927505 m!4492195))

(declare-fun m!4492197 () Bool)

(assert (=> b!3927505 m!4492197))

(declare-fun m!4492199 () Bool)

(assert (=> b!3927478 m!4492199))

(declare-fun m!4492201 () Bool)

(assert (=> b!3927481 m!4492201))

(declare-fun m!4492203 () Bool)

(assert (=> b!3927501 m!4492203))

(declare-fun m!4492205 () Bool)

(assert (=> b!3927501 m!4492205))

(declare-fun m!4492207 () Bool)

(assert (=> b!3927489 m!4492207))

(check-sat (not b!3927474) (not b!3927470) (not b!3927494) (not b!3927501) (not b_next!107823) (not b!3927498) (not b!3927503) (not b!3927496) b_and!299571 b_and!299575 (not b!3927500) (not b!3927495) (not b!3927482) (not b!3927483) (not b!3927493) (not b!3927508) (not b!3927506) (not b!3927479) b_and!299567 b_and!299569 b_and!299573 (not b!3927489) (not b_next!107821) tp_is_empty!19797 (not b!3927502) (not b!3927481) (not b!3927490) (not b_next!107831) (not b!3927475) (not b_next!107827) (not b!3927477) (not b!3927485) (not b!3927469) (not b!3927507) (not b!3927505) (not b!3927478) (not b!3927468) (not b_next!107825) (not b!3927512) (not b!3927484) (not b!3927492) (not b_next!107829) (not b!3927499) b_and!299577 (not bm!284735) (not b!3927471) (not b!3927504) (not b!3927497) (not b!3927488))
(check-sat (not b_next!107823) b_and!299567 (not b_next!107821) (not b_next!107825) b_and!299571 b_and!299575 b_and!299569 b_and!299573 (not b_next!107831) (not b_next!107827) (not b_next!107829) b_and!299577)
(get-model)

(declare-fun d!1164181 () Bool)

(declare-fun res!1589026 () Bool)

(declare-fun e!2429487 () Bool)

(assert (=> d!1164181 (=> (not res!1589026) (not e!2429487))))

(assert (=> d!1164181 (= res!1589026 (not (isEmpty!24854 (originalCharacters!7108 (h!47123 prefixTokens!80)))))))

(assert (=> d!1164181 (= (inv!55895 (h!47123 prefixTokens!80)) e!2429487)))

(declare-fun b!3927517 () Bool)

(declare-fun res!1589027 () Bool)

(assert (=> b!3927517 (=> (not res!1589027) (not e!2429487))))

(declare-fun dynLambda!17873 (Int TokenValue!6738) BalanceConc!25032)

(assert (=> b!3927517 (= res!1589027 (= (originalCharacters!7108 (h!47123 prefixTokens!80)) (list!15495 (dynLambda!17873 (toChars!8819 (transformation!6508 (rule!9450 (h!47123 prefixTokens!80)))) (value!206112 (h!47123 prefixTokens!80))))))))

(declare-fun b!3927518 () Bool)

(assert (=> b!3927518 (= e!2429487 (= (size!31289 (h!47123 prefixTokens!80)) (size!31290 (originalCharacters!7108 (h!47123 prefixTokens!80)))))))

(assert (= (and d!1164181 res!1589026) b!3927517))

(assert (= (and b!3927517 res!1589027) b!3927518))

(declare-fun b_lambda!114919 () Bool)

(assert (=> (not b_lambda!114919) (not b!3927517)))

(declare-fun t!325157 () Bool)

(declare-fun tb!234605 () Bool)

(assert (=> (and b!3927511 (= (toChars!8819 (transformation!6508 (rule!9450 (h!47123 suffixTokens!72)))) (toChars!8819 (transformation!6508 (rule!9450 (h!47123 prefixTokens!80))))) t!325157) tb!234605))

(declare-fun b!3927523 () Bool)

(declare-fun e!2429490 () Bool)

(declare-fun tp!1195749 () Bool)

(declare-fun inv!55898 (Conc!12719) Bool)

(assert (=> b!3927523 (= e!2429490 (and (inv!55898 (c!682355 (dynLambda!17873 (toChars!8819 (transformation!6508 (rule!9450 (h!47123 prefixTokens!80)))) (value!206112 (h!47123 prefixTokens!80))))) tp!1195749))))

(declare-fun result!284302 () Bool)

(declare-fun inv!55899 (BalanceConc!25032) Bool)

(assert (=> tb!234605 (= result!284302 (and (inv!55899 (dynLambda!17873 (toChars!8819 (transformation!6508 (rule!9450 (h!47123 prefixTokens!80)))) (value!206112 (h!47123 prefixTokens!80)))) e!2429490))))

(assert (= tb!234605 b!3927523))

(declare-fun m!4492209 () Bool)

(assert (=> b!3927523 m!4492209))

(declare-fun m!4492211 () Bool)

(assert (=> tb!234605 m!4492211))

(assert (=> b!3927517 t!325157))

(declare-fun b_and!299579 () Bool)

(assert (= b_and!299569 (and (=> t!325157 result!284302) b_and!299579)))

(declare-fun t!325159 () Bool)

(declare-fun tb!234607 () Bool)

(assert (=> (and b!3927510 (= (toChars!8819 (transformation!6508 (rule!9450 (h!47123 prefixTokens!80)))) (toChars!8819 (transformation!6508 (rule!9450 (h!47123 prefixTokens!80))))) t!325159) tb!234607))

(declare-fun result!284306 () Bool)

(assert (= result!284306 result!284302))

(assert (=> b!3927517 t!325159))

(declare-fun b_and!299581 () Bool)

(assert (= b_and!299573 (and (=> t!325159 result!284306) b_and!299581)))

(declare-fun tb!234609 () Bool)

(declare-fun t!325161 () Bool)

(assert (=> (and b!3927487 (= (toChars!8819 (transformation!6508 (h!47124 rules!2768))) (toChars!8819 (transformation!6508 (rule!9450 (h!47123 prefixTokens!80))))) t!325161) tb!234609))

(declare-fun result!284308 () Bool)

(assert (= result!284308 result!284302))

(assert (=> b!3927517 t!325161))

(declare-fun b_and!299583 () Bool)

(assert (= b_and!299577 (and (=> t!325161 result!284308) b_and!299583)))

(declare-fun m!4492213 () Bool)

(assert (=> d!1164181 m!4492213))

(declare-fun m!4492215 () Bool)

(assert (=> b!3927517 m!4492215))

(assert (=> b!3927517 m!4492215))

(declare-fun m!4492217 () Bool)

(assert (=> b!3927517 m!4492217))

(declare-fun m!4492219 () Bool)

(assert (=> b!3927518 m!4492219))

(assert (=> b!3927507 d!1164181))

(declare-fun b!3927534 () Bool)

(declare-fun e!2429498 () Bool)

(declare-fun inv!17 (TokenValue!6738) Bool)

(assert (=> b!3927534 (= e!2429498 (inv!17 (value!206112 (h!47123 suffixTokens!72))))))

(declare-fun b!3927535 () Bool)

(declare-fun res!1589033 () Bool)

(declare-fun e!2429499 () Bool)

(assert (=> b!3927535 (=> res!1589033 e!2429499)))

(assert (=> b!3927535 (= res!1589033 (not ((_ is IntegerValue!20216) (value!206112 (h!47123 suffixTokens!72)))))))

(assert (=> b!3927535 (= e!2429498 e!2429499)))

(declare-fun d!1164183 () Bool)

(declare-fun c!682361 () Bool)

(assert (=> d!1164183 (= c!682361 ((_ is IntegerValue!20214) (value!206112 (h!47123 suffixTokens!72))))))

(declare-fun e!2429497 () Bool)

(assert (=> d!1164183 (= (inv!21 (value!206112 (h!47123 suffixTokens!72))) e!2429497)))

(declare-fun b!3927536 () Bool)

(declare-fun inv!15 (TokenValue!6738) Bool)

(assert (=> b!3927536 (= e!2429499 (inv!15 (value!206112 (h!47123 suffixTokens!72))))))

(declare-fun b!3927537 () Bool)

(assert (=> b!3927537 (= e!2429497 e!2429498)))

(declare-fun c!682360 () Bool)

(assert (=> b!3927537 (= c!682360 ((_ is IntegerValue!20215) (value!206112 (h!47123 suffixTokens!72))))))

(declare-fun b!3927538 () Bool)

(declare-fun inv!16 (TokenValue!6738) Bool)

(assert (=> b!3927538 (= e!2429497 (inv!16 (value!206112 (h!47123 suffixTokens!72))))))

(assert (= (and d!1164183 c!682361) b!3927538))

(assert (= (and d!1164183 (not c!682361)) b!3927537))

(assert (= (and b!3927537 c!682360) b!3927534))

(assert (= (and b!3927537 (not c!682360)) b!3927535))

(assert (= (and b!3927535 (not res!1589033)) b!3927536))

(declare-fun m!4492221 () Bool)

(assert (=> b!3927534 m!4492221))

(declare-fun m!4492223 () Bool)

(assert (=> b!3927536 m!4492223))

(declare-fun m!4492225 () Bool)

(assert (=> b!3927538 m!4492225))

(assert (=> b!3927508 d!1164183))

(declare-fun e!2429522 () Bool)

(declare-fun lt!1370971 () List!41825)

(declare-fun b!3927577 () Bool)

(assert (=> b!3927577 (= e!2429522 (or (not (= lt!1370948 Nil!41701)) (= lt!1370971 lt!1370927)))))

(declare-fun d!1164187 () Bool)

(assert (=> d!1164187 e!2429522))

(declare-fun res!1589054 () Bool)

(assert (=> d!1164187 (=> (not res!1589054) (not e!2429522))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6278 (List!41825) (InoxSet C!23012))

(assert (=> d!1164187 (= res!1589054 (= (content!6278 lt!1370971) ((_ map or) (content!6278 lt!1370927) (content!6278 lt!1370948))))))

(declare-fun e!2429523 () List!41825)

(assert (=> d!1164187 (= lt!1370971 e!2429523)))

(declare-fun c!682370 () Bool)

(assert (=> d!1164187 (= c!682370 ((_ is Nil!41701) lt!1370927))))

(assert (=> d!1164187 (= (++!10773 lt!1370927 lt!1370948) lt!1370971)))

(declare-fun b!3927576 () Bool)

(declare-fun res!1589053 () Bool)

(assert (=> b!3927576 (=> (not res!1589053) (not e!2429522))))

(assert (=> b!3927576 (= res!1589053 (= (size!31290 lt!1370971) (+ (size!31290 lt!1370927) (size!31290 lt!1370948))))))

(declare-fun b!3927574 () Bool)

(assert (=> b!3927574 (= e!2429523 lt!1370948)))

(declare-fun b!3927575 () Bool)

(assert (=> b!3927575 (= e!2429523 (Cons!41701 (h!47121 lt!1370927) (++!10773 (t!325152 lt!1370927) lt!1370948)))))

(assert (= (and d!1164187 c!682370) b!3927574))

(assert (= (and d!1164187 (not c!682370)) b!3927575))

(assert (= (and d!1164187 res!1589054) b!3927576))

(assert (= (and b!3927576 res!1589053) b!3927577))

(declare-fun m!4492247 () Bool)

(assert (=> d!1164187 m!4492247))

(declare-fun m!4492249 () Bool)

(assert (=> d!1164187 m!4492249))

(declare-fun m!4492251 () Bool)

(assert (=> d!1164187 m!4492251))

(declare-fun m!4492253 () Bool)

(assert (=> b!3927576 m!4492253))

(assert (=> b!3927576 m!4492109))

(declare-fun m!4492255 () Bool)

(assert (=> b!3927576 m!4492255))

(declare-fun m!4492257 () Bool)

(assert (=> b!3927575 m!4492257))

(assert (=> b!3927488 d!1164187))

(declare-fun d!1164195 () Bool)

(declare-fun lt!1370984 () List!41825)

(assert (=> d!1164195 (= (++!10773 lt!1370927 lt!1370984) prefix!426)))

(declare-fun e!2429536 () List!41825)

(assert (=> d!1164195 (= lt!1370984 e!2429536)))

(declare-fun c!682378 () Bool)

(assert (=> d!1164195 (= c!682378 ((_ is Cons!41701) lt!1370927))))

(assert (=> d!1164195 (>= (size!31290 prefix!426) (size!31290 lt!1370927))))

(assert (=> d!1164195 (= (getSuffix!2058 prefix!426 lt!1370927) lt!1370984)))

(declare-fun b!3927600 () Bool)

(declare-fun tail!6059 (List!41825) List!41825)

(assert (=> b!3927600 (= e!2429536 (getSuffix!2058 (tail!6059 prefix!426) (t!325152 lt!1370927)))))

(declare-fun b!3927601 () Bool)

(assert (=> b!3927601 (= e!2429536 prefix!426)))

(assert (= (and d!1164195 c!682378) b!3927600))

(assert (= (and d!1164195 (not c!682378)) b!3927601))

(declare-fun m!4492269 () Bool)

(assert (=> d!1164195 m!4492269))

(assert (=> d!1164195 m!4492179))

(assert (=> d!1164195 m!4492109))

(declare-fun m!4492271 () Bool)

(assert (=> b!3927600 m!4492271))

(assert (=> b!3927600 m!4492271))

(declare-fun m!4492273 () Bool)

(assert (=> b!3927600 m!4492273))

(assert (=> b!3927488 d!1164195))

(declare-fun d!1164203 () Bool)

(declare-fun res!1589065 () Bool)

(declare-fun e!2429539 () Bool)

(assert (=> d!1164203 (=> (not res!1589065) (not e!2429539))))

(assert (=> d!1164203 (= res!1589065 (not (isEmpty!24854 (originalCharacters!7108 (h!47123 suffixTokens!72)))))))

(assert (=> d!1164203 (= (inv!55895 (h!47123 suffixTokens!72)) e!2429539)))

(declare-fun b!3927606 () Bool)

(declare-fun res!1589066 () Bool)

(assert (=> b!3927606 (=> (not res!1589066) (not e!2429539))))

(assert (=> b!3927606 (= res!1589066 (= (originalCharacters!7108 (h!47123 suffixTokens!72)) (list!15495 (dynLambda!17873 (toChars!8819 (transformation!6508 (rule!9450 (h!47123 suffixTokens!72)))) (value!206112 (h!47123 suffixTokens!72))))))))

(declare-fun b!3927607 () Bool)

(assert (=> b!3927607 (= e!2429539 (= (size!31289 (h!47123 suffixTokens!72)) (size!31290 (originalCharacters!7108 (h!47123 suffixTokens!72)))))))

(assert (= (and d!1164203 res!1589065) b!3927606))

(assert (= (and b!3927606 res!1589066) b!3927607))

(declare-fun b_lambda!114921 () Bool)

(assert (=> (not b_lambda!114921) (not b!3927606)))

(declare-fun t!325163 () Bool)

(declare-fun tb!234611 () Bool)

(assert (=> (and b!3927511 (= (toChars!8819 (transformation!6508 (rule!9450 (h!47123 suffixTokens!72)))) (toChars!8819 (transformation!6508 (rule!9450 (h!47123 suffixTokens!72))))) t!325163) tb!234611))

(declare-fun b!3927608 () Bool)

(declare-fun e!2429540 () Bool)

(declare-fun tp!1195750 () Bool)

(assert (=> b!3927608 (= e!2429540 (and (inv!55898 (c!682355 (dynLambda!17873 (toChars!8819 (transformation!6508 (rule!9450 (h!47123 suffixTokens!72)))) (value!206112 (h!47123 suffixTokens!72))))) tp!1195750))))

(declare-fun result!284310 () Bool)

(assert (=> tb!234611 (= result!284310 (and (inv!55899 (dynLambda!17873 (toChars!8819 (transformation!6508 (rule!9450 (h!47123 suffixTokens!72)))) (value!206112 (h!47123 suffixTokens!72)))) e!2429540))))

(assert (= tb!234611 b!3927608))

(declare-fun m!4492287 () Bool)

(assert (=> b!3927608 m!4492287))

(declare-fun m!4492289 () Bool)

(assert (=> tb!234611 m!4492289))

(assert (=> b!3927606 t!325163))

(declare-fun b_and!299585 () Bool)

(assert (= b_and!299579 (and (=> t!325163 result!284310) b_and!299585)))

(declare-fun t!325165 () Bool)

(declare-fun tb!234613 () Bool)

(assert (=> (and b!3927510 (= (toChars!8819 (transformation!6508 (rule!9450 (h!47123 prefixTokens!80)))) (toChars!8819 (transformation!6508 (rule!9450 (h!47123 suffixTokens!72))))) t!325165) tb!234613))

(declare-fun result!284312 () Bool)

(assert (= result!284312 result!284310))

(assert (=> b!3927606 t!325165))

(declare-fun b_and!299587 () Bool)

(assert (= b_and!299581 (and (=> t!325165 result!284312) b_and!299587)))

(declare-fun t!325167 () Bool)

(declare-fun tb!234615 () Bool)

(assert (=> (and b!3927487 (= (toChars!8819 (transformation!6508 (h!47124 rules!2768))) (toChars!8819 (transformation!6508 (rule!9450 (h!47123 suffixTokens!72))))) t!325167) tb!234615))

(declare-fun result!284314 () Bool)

(assert (= result!284314 result!284310))

(assert (=> b!3927606 t!325167))

(declare-fun b_and!299589 () Bool)

(assert (= b_and!299583 (and (=> t!325167 result!284314) b_and!299589)))

(declare-fun m!4492291 () Bool)

(assert (=> d!1164203 m!4492291))

(declare-fun m!4492293 () Bool)

(assert (=> b!3927606 m!4492293))

(assert (=> b!3927606 m!4492293))

(declare-fun m!4492295 () Bool)

(assert (=> b!3927606 m!4492295))

(declare-fun m!4492297 () Bool)

(assert (=> b!3927607 m!4492297))

(assert (=> b!3927489 d!1164203))

(declare-fun d!1164211 () Bool)

(assert (=> d!1164211 (isPrefix!3603 prefix!426 (++!10773 prefix!426 suffix!1176))))

(declare-fun lt!1370990 () Unit!60043)

(declare-fun choose!23334 (List!41825 List!41825) Unit!60043)

(assert (=> d!1164211 (= lt!1370990 (choose!23334 prefix!426 suffix!1176))))

(assert (=> d!1164211 (= (lemmaConcatTwoListThenFirstIsPrefix!2466 prefix!426 suffix!1176) lt!1370990)))

(declare-fun bs!586051 () Bool)

(assert (= bs!586051 d!1164211))

(assert (=> bs!586051 m!4492139))

(assert (=> bs!586051 m!4492139))

(declare-fun m!4492305 () Bool)

(assert (=> bs!586051 m!4492305))

(declare-fun m!4492309 () Bool)

(assert (=> bs!586051 m!4492309))

(assert (=> b!3927468 d!1164211))

(declare-fun b!3927628 () Bool)

(declare-fun e!2429558 () Bool)

(declare-fun e!2429556 () Bool)

(assert (=> b!3927628 (= e!2429558 e!2429556)))

(declare-fun res!1589084 () Bool)

(assert (=> b!3927628 (=> (not res!1589084) (not e!2429556))))

(assert (=> b!3927628 (= res!1589084 (not ((_ is Nil!41701) lt!1370931)))))

(declare-fun b!3927631 () Bool)

(declare-fun e!2429557 () Bool)

(assert (=> b!3927631 (= e!2429557 (>= (size!31290 lt!1370931) (size!31290 prefix!426)))))

(declare-fun b!3927630 () Bool)

(assert (=> b!3927630 (= e!2429556 (isPrefix!3603 (tail!6059 prefix!426) (tail!6059 lt!1370931)))))

(declare-fun d!1164217 () Bool)

(assert (=> d!1164217 e!2429557))

(declare-fun res!1589087 () Bool)

(assert (=> d!1164217 (=> res!1589087 e!2429557)))

(declare-fun lt!1370997 () Bool)

(assert (=> d!1164217 (= res!1589087 (not lt!1370997))))

(assert (=> d!1164217 (= lt!1370997 e!2429558)))

(declare-fun res!1589086 () Bool)

(assert (=> d!1164217 (=> res!1589086 e!2429558)))

(assert (=> d!1164217 (= res!1589086 ((_ is Nil!41701) prefix!426))))

(assert (=> d!1164217 (= (isPrefix!3603 prefix!426 lt!1370931) lt!1370997)))

(declare-fun b!3927629 () Bool)

(declare-fun res!1589085 () Bool)

(assert (=> b!3927629 (=> (not res!1589085) (not e!2429556))))

(declare-fun head!8333 (List!41825) C!23012)

(assert (=> b!3927629 (= res!1589085 (= (head!8333 prefix!426) (head!8333 lt!1370931)))))

(assert (= (and d!1164217 (not res!1589086)) b!3927628))

(assert (= (and b!3927628 res!1589084) b!3927629))

(assert (= (and b!3927629 res!1589085) b!3927630))

(assert (= (and d!1164217 (not res!1589087)) b!3927631))

(assert (=> b!3927631 m!4492165))

(assert (=> b!3927631 m!4492179))

(assert (=> b!3927630 m!4492271))

(declare-fun m!4492323 () Bool)

(assert (=> b!3927630 m!4492323))

(assert (=> b!3927630 m!4492271))

(assert (=> b!3927630 m!4492323))

(declare-fun m!4492325 () Bool)

(assert (=> b!3927630 m!4492325))

(declare-fun m!4492327 () Bool)

(assert (=> b!3927629 m!4492327))

(declare-fun m!4492329 () Bool)

(assert (=> b!3927629 m!4492329))

(assert (=> b!3927468 d!1164217))

(declare-fun d!1164229 () Bool)

(assert (=> d!1164229 (= lt!1370927 prefix!426)))

(declare-fun lt!1371006 () Unit!60043)

(declare-fun choose!23335 (List!41825 List!41825 List!41825) Unit!60043)

(assert (=> d!1164229 (= lt!1371006 (choose!23335 lt!1370927 prefix!426 lt!1370931))))

(assert (=> d!1164229 (isPrefix!3603 lt!1370927 lt!1370931)))

(assert (=> d!1164229 (= (lemmaIsPrefixSameLengthThenSameList!799 lt!1370927 prefix!426 lt!1370931) lt!1371006)))

(declare-fun bs!586056 () Bool)

(assert (= bs!586056 d!1164229))

(declare-fun m!4492359 () Bool)

(assert (=> bs!586056 m!4492359))

(declare-fun m!4492361 () Bool)

(assert (=> bs!586056 m!4492361))

(assert (=> b!3927468 d!1164229))

(declare-fun d!1164239 () Bool)

(assert (=> d!1164239 (= (_2!23621 (v!39253 lt!1370939)) suffix!1176)))

(declare-fun lt!1371014 () Unit!60043)

(declare-fun choose!23336 (List!41825 List!41825 List!41825 List!41825 List!41825) Unit!60043)

(assert (=> d!1164239 (= lt!1371014 (choose!23336 lt!1370927 (_2!23621 (v!39253 lt!1370939)) prefix!426 suffix!1176 lt!1370931))))

(assert (=> d!1164239 (isPrefix!3603 lt!1370927 lt!1370931)))

(assert (=> d!1164239 (= (lemmaSamePrefixThenSameSuffix!1824 lt!1370927 (_2!23621 (v!39253 lt!1370939)) prefix!426 suffix!1176 lt!1370931) lt!1371014)))

(declare-fun bs!586058 () Bool)

(assert (= bs!586058 d!1164239))

(declare-fun m!4492367 () Bool)

(assert (=> bs!586058 m!4492367))

(assert (=> bs!586058 m!4492361))

(assert (=> b!3927468 d!1164239))

(declare-fun d!1164243 () Bool)

(assert (=> d!1164243 (= (isEmpty!24852 prefixTokens!80) ((_ is Nil!41703) prefixTokens!80))))

(assert (=> b!3927469 d!1164243))

(declare-fun d!1164249 () Bool)

(declare-fun e!2429615 () Bool)

(assert (=> d!1164249 e!2429615))

(declare-fun c!682407 () Bool)

(declare-fun lt!1371049 () tuple2!40976)

(declare-fun size!31292 (List!41827) Int)

(assert (=> d!1164249 (= c!682407 (> (size!31292 (_1!23622 lt!1371049)) 0))))

(declare-fun e!2429614 () tuple2!40976)

(assert (=> d!1164249 (= lt!1371049 e!2429614)))

(declare-fun c!682408 () Bool)

(declare-fun lt!1371051 () Option!8928)

(assert (=> d!1164249 (= c!682408 ((_ is Some!8927) lt!1371051))))

(assert (=> d!1164249 (= lt!1371051 (maxPrefix!3401 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1164249 (= (lexList!1865 thiss!20629 rules!2768 suffix!1176) lt!1371049)))

(declare-fun b!3927729 () Bool)

(declare-fun lt!1371050 () tuple2!40976)

(assert (=> b!3927729 (= e!2429614 (tuple2!40977 (Cons!41703 (_1!23621 (v!39253 lt!1371051)) (_1!23622 lt!1371050)) (_2!23622 lt!1371050)))))

(assert (=> b!3927729 (= lt!1371050 (lexList!1865 thiss!20629 rules!2768 (_2!23621 (v!39253 lt!1371051))))))

(declare-fun b!3927730 () Bool)

(assert (=> b!3927730 (= e!2429614 (tuple2!40977 Nil!41703 suffix!1176))))

(declare-fun b!3927731 () Bool)

(assert (=> b!3927731 (= e!2429615 (= (_2!23622 lt!1371049) suffix!1176))))

(declare-fun b!3927732 () Bool)

(declare-fun e!2429616 () Bool)

(assert (=> b!3927732 (= e!2429616 (not (isEmpty!24852 (_1!23622 lt!1371049))))))

(declare-fun b!3927733 () Bool)

(assert (=> b!3927733 (= e!2429615 e!2429616)))

(declare-fun res!1589125 () Bool)

(assert (=> b!3927733 (= res!1589125 (< (size!31290 (_2!23622 lt!1371049)) (size!31290 suffix!1176)))))

(assert (=> b!3927733 (=> (not res!1589125) (not e!2429616))))

(assert (= (and d!1164249 c!682408) b!3927729))

(assert (= (and d!1164249 (not c!682408)) b!3927730))

(assert (= (and d!1164249 c!682407) b!3927733))

(assert (= (and d!1164249 (not c!682407)) b!3927731))

(assert (= (and b!3927733 res!1589125) b!3927732))

(declare-fun m!4492489 () Bool)

(assert (=> d!1164249 m!4492489))

(declare-fun m!4492491 () Bool)

(assert (=> d!1164249 m!4492491))

(declare-fun m!4492493 () Bool)

(assert (=> b!3927729 m!4492493))

(declare-fun m!4492495 () Bool)

(assert (=> b!3927732 m!4492495))

(declare-fun m!4492499 () Bool)

(assert (=> b!3927733 m!4492499))

(assert (=> b!3927733 m!4492073))

(assert (=> b!3927512 d!1164249))

(declare-fun b!3927734 () Bool)

(declare-fun e!2429618 () Bool)

(assert (=> b!3927734 (= e!2429618 (inv!17 (value!206112 (h!47123 prefixTokens!80))))))

(declare-fun b!3927735 () Bool)

(declare-fun res!1589126 () Bool)

(declare-fun e!2429619 () Bool)

(assert (=> b!3927735 (=> res!1589126 e!2429619)))

(assert (=> b!3927735 (= res!1589126 (not ((_ is IntegerValue!20216) (value!206112 (h!47123 prefixTokens!80)))))))

(assert (=> b!3927735 (= e!2429618 e!2429619)))

(declare-fun d!1164285 () Bool)

(declare-fun c!682410 () Bool)

(assert (=> d!1164285 (= c!682410 ((_ is IntegerValue!20214) (value!206112 (h!47123 prefixTokens!80))))))

(declare-fun e!2429617 () Bool)

(assert (=> d!1164285 (= (inv!21 (value!206112 (h!47123 prefixTokens!80))) e!2429617)))

(declare-fun b!3927736 () Bool)

(assert (=> b!3927736 (= e!2429619 (inv!15 (value!206112 (h!47123 prefixTokens!80))))))

(declare-fun b!3927737 () Bool)

(assert (=> b!3927737 (= e!2429617 e!2429618)))

(declare-fun c!682409 () Bool)

(assert (=> b!3927737 (= c!682409 ((_ is IntegerValue!20215) (value!206112 (h!47123 prefixTokens!80))))))

(declare-fun b!3927738 () Bool)

(assert (=> b!3927738 (= e!2429617 (inv!16 (value!206112 (h!47123 prefixTokens!80))))))

(assert (= (and d!1164285 c!682410) b!3927738))

(assert (= (and d!1164285 (not c!682410)) b!3927737))

(assert (= (and b!3927737 c!682409) b!3927734))

(assert (= (and b!3927737 (not c!682409)) b!3927735))

(assert (= (and b!3927735 (not res!1589126)) b!3927736))

(declare-fun m!4492505 () Bool)

(assert (=> b!3927734 m!4492505))

(declare-fun m!4492507 () Bool)

(assert (=> b!3927736 m!4492507))

(declare-fun m!4492509 () Bool)

(assert (=> b!3927738 m!4492509))

(assert (=> b!3927470 d!1164285))

(declare-fun lt!1371055 () List!41825)

(declare-fun e!2429620 () Bool)

(declare-fun b!3927742 () Bool)

(assert (=> b!3927742 (= e!2429620 (or (not (= suffix!1176 Nil!41701)) (= lt!1371055 lt!1370936)))))

(declare-fun d!1164289 () Bool)

(assert (=> d!1164289 e!2429620))

(declare-fun res!1589128 () Bool)

(assert (=> d!1164289 (=> (not res!1589128) (not e!2429620))))

(assert (=> d!1164289 (= res!1589128 (= (content!6278 lt!1371055) ((_ map or) (content!6278 lt!1370936) (content!6278 suffix!1176))))))

(declare-fun e!2429621 () List!41825)

(assert (=> d!1164289 (= lt!1371055 e!2429621)))

(declare-fun c!682411 () Bool)

(assert (=> d!1164289 (= c!682411 ((_ is Nil!41701) lt!1370936))))

(assert (=> d!1164289 (= (++!10773 lt!1370936 suffix!1176) lt!1371055)))

(declare-fun b!3927741 () Bool)

(declare-fun res!1589127 () Bool)

(assert (=> b!3927741 (=> (not res!1589127) (not e!2429620))))

(assert (=> b!3927741 (= res!1589127 (= (size!31290 lt!1371055) (+ (size!31290 lt!1370936) (size!31290 suffix!1176))))))

(declare-fun b!3927739 () Bool)

(assert (=> b!3927739 (= e!2429621 suffix!1176)))

(declare-fun b!3927740 () Bool)

(assert (=> b!3927740 (= e!2429621 (Cons!41701 (h!47121 lt!1370936) (++!10773 (t!325152 lt!1370936) suffix!1176)))))

(assert (= (and d!1164289 c!682411) b!3927739))

(assert (= (and d!1164289 (not c!682411)) b!3927740))

(assert (= (and d!1164289 res!1589128) b!3927741))

(assert (= (and b!3927741 res!1589127) b!3927742))

(declare-fun m!4492511 () Bool)

(assert (=> d!1164289 m!4492511))

(declare-fun m!4492513 () Bool)

(assert (=> d!1164289 m!4492513))

(declare-fun m!4492515 () Bool)

(assert (=> d!1164289 m!4492515))

(declare-fun m!4492517 () Bool)

(assert (=> b!3927741 m!4492517))

(declare-fun m!4492519 () Bool)

(assert (=> b!3927741 m!4492519))

(assert (=> b!3927741 m!4492073))

(declare-fun m!4492521 () Bool)

(assert (=> b!3927740 m!4492521))

(assert (=> b!3927471 d!1164289))

(declare-fun d!1164291 () Bool)

(assert (=> d!1164291 (= (isEmpty!24852 lt!1370921) ((_ is Nil!41703) lt!1370921))))

(assert (=> b!3927492 d!1164291))

(declare-fun d!1164293 () Bool)

(assert (=> d!1164293 (= (tail!6057 prefixTokens!80) (t!325154 prefixTokens!80))))

(assert (=> b!3927492 d!1164293))

(declare-fun d!1164295 () Bool)

(assert (=> d!1164295 (= (inv!55891 (tag!7368 (h!47124 rules!2768))) (= (mod (str.len (value!206111 (tag!7368 (h!47124 rules!2768)))) 2) 0))))

(assert (=> b!3927493 d!1164295))

(declare-fun d!1164297 () Bool)

(declare-fun res!1589131 () Bool)

(declare-fun e!2429624 () Bool)

(assert (=> d!1164297 (=> (not res!1589131) (not e!2429624))))

(declare-fun semiInverseModEq!2797 (Int Int) Bool)

(assert (=> d!1164297 (= res!1589131 (semiInverseModEq!2797 (toChars!8819 (transformation!6508 (h!47124 rules!2768))) (toValue!8960 (transformation!6508 (h!47124 rules!2768)))))))

(assert (=> d!1164297 (= (inv!55894 (transformation!6508 (h!47124 rules!2768))) e!2429624)))

(declare-fun b!3927745 () Bool)

(declare-fun equivClasses!2696 (Int Int) Bool)

(assert (=> b!3927745 (= e!2429624 (equivClasses!2696 (toChars!8819 (transformation!6508 (h!47124 rules!2768))) (toValue!8960 (transformation!6508 (h!47124 rules!2768)))))))

(assert (= (and d!1164297 res!1589131) b!3927745))

(declare-fun m!4492523 () Bool)

(assert (=> d!1164297 m!4492523))

(declare-fun m!4492525 () Bool)

(assert (=> b!3927745 m!4492525))

(assert (=> b!3927493 d!1164297))

(declare-fun d!1164299 () Bool)

(declare-fun e!2429626 () Bool)

(assert (=> d!1164299 e!2429626))

(declare-fun c!682412 () Bool)

(declare-fun lt!1371056 () tuple2!40976)

(assert (=> d!1164299 (= c!682412 (> (size!31292 (_1!23622 lt!1371056)) 0))))

(declare-fun e!2429625 () tuple2!40976)

(assert (=> d!1164299 (= lt!1371056 e!2429625)))

(declare-fun c!682413 () Bool)

(declare-fun lt!1371058 () Option!8928)

(assert (=> d!1164299 (= c!682413 ((_ is Some!8927) lt!1371058))))

(assert (=> d!1164299 (= lt!1371058 (maxPrefix!3401 thiss!20629 rules!2768 (_2!23621 lt!1370963)))))

(assert (=> d!1164299 (= (lexList!1865 thiss!20629 rules!2768 (_2!23621 lt!1370963)) lt!1371056)))

(declare-fun b!3927746 () Bool)

(declare-fun lt!1371057 () tuple2!40976)

(assert (=> b!3927746 (= e!2429625 (tuple2!40977 (Cons!41703 (_1!23621 (v!39253 lt!1371058)) (_1!23622 lt!1371057)) (_2!23622 lt!1371057)))))

(assert (=> b!3927746 (= lt!1371057 (lexList!1865 thiss!20629 rules!2768 (_2!23621 (v!39253 lt!1371058))))))

(declare-fun b!3927747 () Bool)

(assert (=> b!3927747 (= e!2429625 (tuple2!40977 Nil!41703 (_2!23621 lt!1370963)))))

(declare-fun b!3927748 () Bool)

(assert (=> b!3927748 (= e!2429626 (= (_2!23622 lt!1371056) (_2!23621 lt!1370963)))))

(declare-fun b!3927749 () Bool)

(declare-fun e!2429627 () Bool)

(assert (=> b!3927749 (= e!2429627 (not (isEmpty!24852 (_1!23622 lt!1371056))))))

(declare-fun b!3927750 () Bool)

(assert (=> b!3927750 (= e!2429626 e!2429627)))

(declare-fun res!1589132 () Bool)

(assert (=> b!3927750 (= res!1589132 (< (size!31290 (_2!23622 lt!1371056)) (size!31290 (_2!23621 lt!1370963))))))

(assert (=> b!3927750 (=> (not res!1589132) (not e!2429627))))

(assert (= (and d!1164299 c!682413) b!3927746))

(assert (= (and d!1164299 (not c!682413)) b!3927747))

(assert (= (and d!1164299 c!682412) b!3927750))

(assert (= (and d!1164299 (not c!682412)) b!3927748))

(assert (= (and b!3927750 res!1589132) b!3927749))

(declare-fun m!4492527 () Bool)

(assert (=> d!1164299 m!4492527))

(declare-fun m!4492529 () Bool)

(assert (=> d!1164299 m!4492529))

(declare-fun m!4492531 () Bool)

(assert (=> b!3927746 m!4492531))

(declare-fun m!4492533 () Bool)

(assert (=> b!3927749 m!4492533))

(declare-fun m!4492535 () Bool)

(assert (=> b!3927750 m!4492535))

(assert (=> b!3927750 m!4492163))

(assert (=> bm!284735 d!1164299))

(declare-fun d!1164301 () Bool)

(assert (=> d!1164301 (= (size!31289 (_1!23621 (v!39253 lt!1370939))) (size!31290 (originalCharacters!7108 (_1!23621 (v!39253 lt!1370939)))))))

(declare-fun Unit!60054 () Unit!60043)

(assert (=> d!1164301 (= (lemmaCharactersSize!1165 (_1!23621 (v!39253 lt!1370939))) Unit!60054)))

(declare-fun bs!586064 () Bool)

(assert (= bs!586064 d!1164301))

(assert (=> bs!586064 m!4492161))

(assert (=> b!3927494 d!1164301))

(declare-fun b!3927751 () Bool)

(declare-fun e!2429630 () Bool)

(declare-fun e!2429628 () Bool)

(assert (=> b!3927751 (= e!2429630 e!2429628)))

(declare-fun res!1589133 () Bool)

(assert (=> b!3927751 (=> (not res!1589133) (not e!2429628))))

(assert (=> b!3927751 (= res!1589133 (not ((_ is Nil!41701) lt!1370950)))))

(declare-fun b!3927754 () Bool)

(declare-fun e!2429629 () Bool)

(assert (=> b!3927754 (= e!2429629 (>= (size!31290 lt!1370950) (size!31290 lt!1370927)))))

(declare-fun b!3927753 () Bool)

(assert (=> b!3927753 (= e!2429628 (isPrefix!3603 (tail!6059 lt!1370927) (tail!6059 lt!1370950)))))

(declare-fun d!1164303 () Bool)

(assert (=> d!1164303 e!2429629))

(declare-fun res!1589136 () Bool)

(assert (=> d!1164303 (=> res!1589136 e!2429629)))

(declare-fun lt!1371059 () Bool)

(assert (=> d!1164303 (= res!1589136 (not lt!1371059))))

(assert (=> d!1164303 (= lt!1371059 e!2429630)))

(declare-fun res!1589135 () Bool)

(assert (=> d!1164303 (=> res!1589135 e!2429630)))

(assert (=> d!1164303 (= res!1589135 ((_ is Nil!41701) lt!1370927))))

(assert (=> d!1164303 (= (isPrefix!3603 lt!1370927 lt!1370950) lt!1371059)))

(declare-fun b!3927752 () Bool)

(declare-fun res!1589134 () Bool)

(assert (=> b!3927752 (=> (not res!1589134) (not e!2429628))))

(assert (=> b!3927752 (= res!1589134 (= (head!8333 lt!1370927) (head!8333 lt!1370950)))))

(assert (= (and d!1164303 (not res!1589135)) b!3927751))

(assert (= (and b!3927751 res!1589133) b!3927752))

(assert (= (and b!3927752 res!1589134) b!3927753))

(assert (= (and d!1164303 (not res!1589136)) b!3927754))

(declare-fun m!4492537 () Bool)

(assert (=> b!3927754 m!4492537))

(assert (=> b!3927754 m!4492109))

(declare-fun m!4492539 () Bool)

(assert (=> b!3927753 m!4492539))

(declare-fun m!4492541 () Bool)

(assert (=> b!3927753 m!4492541))

(assert (=> b!3927753 m!4492539))

(assert (=> b!3927753 m!4492541))

(declare-fun m!4492543 () Bool)

(assert (=> b!3927753 m!4492543))

(declare-fun m!4492545 () Bool)

(assert (=> b!3927752 m!4492545))

(declare-fun m!4492547 () Bool)

(assert (=> b!3927752 m!4492547))

(assert (=> b!3927494 d!1164303))

(declare-fun d!1164305 () Bool)

(assert (=> d!1164305 (ruleValid!2456 thiss!20629 (rule!9450 (_1!23621 (v!39253 lt!1370939))))))

(declare-fun lt!1371062 () Unit!60043)

(declare-fun choose!23337 (LexerInterface!6097 Rule!12816 List!41828) Unit!60043)

(assert (=> d!1164305 (= lt!1371062 (choose!23337 thiss!20629 (rule!9450 (_1!23621 (v!39253 lt!1370939))) rules!2768))))

(declare-fun contains!8361 (List!41828 Rule!12816) Bool)

(assert (=> d!1164305 (contains!8361 rules!2768 (rule!9450 (_1!23621 (v!39253 lt!1370939))))))

(assert (=> d!1164305 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1536 thiss!20629 (rule!9450 (_1!23621 (v!39253 lt!1370939))) rules!2768) lt!1371062)))

(declare-fun bs!586065 () Bool)

(assert (= bs!586065 d!1164305))

(assert (=> bs!586065 m!4492123))

(declare-fun m!4492549 () Bool)

(assert (=> bs!586065 m!4492549))

(declare-fun m!4492551 () Bool)

(assert (=> bs!586065 m!4492551))

(assert (=> b!3927494 d!1164305))

(declare-fun d!1164307 () Bool)

(declare-fun lt!1371065 () BalanceConc!25032)

(assert (=> d!1164307 (= (list!15495 lt!1371065) (originalCharacters!7108 (_1!23621 (v!39253 lt!1370939))))))

(assert (=> d!1164307 (= lt!1371065 (dynLambda!17873 (toChars!8819 (transformation!6508 (rule!9450 (_1!23621 (v!39253 lt!1370939))))) (value!206112 (_1!23621 (v!39253 lt!1370939)))))))

(assert (=> d!1164307 (= (charsOf!4332 (_1!23621 (v!39253 lt!1370939))) lt!1371065)))

(declare-fun b_lambda!114929 () Bool)

(assert (=> (not b_lambda!114929) (not d!1164307)))

(declare-fun t!325187 () Bool)

(declare-fun tb!234635 () Bool)

(assert (=> (and b!3927511 (= (toChars!8819 (transformation!6508 (rule!9450 (h!47123 suffixTokens!72)))) (toChars!8819 (transformation!6508 (rule!9450 (_1!23621 (v!39253 lt!1370939)))))) t!325187) tb!234635))

(declare-fun b!3927755 () Bool)

(declare-fun e!2429631 () Bool)

(declare-fun tp!1195755 () Bool)

(assert (=> b!3927755 (= e!2429631 (and (inv!55898 (c!682355 (dynLambda!17873 (toChars!8819 (transformation!6508 (rule!9450 (_1!23621 (v!39253 lt!1370939))))) (value!206112 (_1!23621 (v!39253 lt!1370939)))))) tp!1195755))))

(declare-fun result!284338 () Bool)

(assert (=> tb!234635 (= result!284338 (and (inv!55899 (dynLambda!17873 (toChars!8819 (transformation!6508 (rule!9450 (_1!23621 (v!39253 lt!1370939))))) (value!206112 (_1!23621 (v!39253 lt!1370939))))) e!2429631))))

(assert (= tb!234635 b!3927755))

(declare-fun m!4492553 () Bool)

(assert (=> b!3927755 m!4492553))

(declare-fun m!4492555 () Bool)

(assert (=> tb!234635 m!4492555))

(assert (=> d!1164307 t!325187))

(declare-fun b_and!299609 () Bool)

(assert (= b_and!299585 (and (=> t!325187 result!284338) b_and!299609)))

(declare-fun t!325189 () Bool)

(declare-fun tb!234637 () Bool)

(assert (=> (and b!3927510 (= (toChars!8819 (transformation!6508 (rule!9450 (h!47123 prefixTokens!80)))) (toChars!8819 (transformation!6508 (rule!9450 (_1!23621 (v!39253 lt!1370939)))))) t!325189) tb!234637))

(declare-fun result!284340 () Bool)

(assert (= result!284340 result!284338))

(assert (=> d!1164307 t!325189))

(declare-fun b_and!299611 () Bool)

(assert (= b_and!299587 (and (=> t!325189 result!284340) b_and!299611)))

(declare-fun tb!234639 () Bool)

(declare-fun t!325191 () Bool)

(assert (=> (and b!3927487 (= (toChars!8819 (transformation!6508 (h!47124 rules!2768))) (toChars!8819 (transformation!6508 (rule!9450 (_1!23621 (v!39253 lt!1370939)))))) t!325191) tb!234639))

(declare-fun result!284342 () Bool)

(assert (= result!284342 result!284338))

(assert (=> d!1164307 t!325191))

(declare-fun b_and!299613 () Bool)

(assert (= b_and!299589 (and (=> t!325191 result!284342) b_and!299613)))

(declare-fun m!4492557 () Bool)

(assert (=> d!1164307 m!4492557))

(declare-fun m!4492559 () Bool)

(assert (=> d!1164307 m!4492559))

(assert (=> b!3927494 d!1164307))

(declare-fun b!3927763 () Bool)

(declare-fun e!2429634 () Bool)

(declare-fun lt!1371076 () List!41825)

(assert (=> b!3927763 (= e!2429634 (or (not (= (_2!23621 (v!39253 lt!1370939)) Nil!41701)) (= lt!1371076 lt!1370927)))))

(declare-fun d!1164309 () Bool)

(assert (=> d!1164309 e!2429634))

(declare-fun res!1589138 () Bool)

(assert (=> d!1164309 (=> (not res!1589138) (not e!2429634))))

(assert (=> d!1164309 (= res!1589138 (= (content!6278 lt!1371076) ((_ map or) (content!6278 lt!1370927) (content!6278 (_2!23621 (v!39253 lt!1370939))))))))

(declare-fun e!2429635 () List!41825)

(assert (=> d!1164309 (= lt!1371076 e!2429635)))

(declare-fun c!682416 () Bool)

(assert (=> d!1164309 (= c!682416 ((_ is Nil!41701) lt!1370927))))

(assert (=> d!1164309 (= (++!10773 lt!1370927 (_2!23621 (v!39253 lt!1370939))) lt!1371076)))

(declare-fun b!3927762 () Bool)

(declare-fun res!1589137 () Bool)

(assert (=> b!3927762 (=> (not res!1589137) (not e!2429634))))

(assert (=> b!3927762 (= res!1589137 (= (size!31290 lt!1371076) (+ (size!31290 lt!1370927) (size!31290 (_2!23621 (v!39253 lt!1370939))))))))

(declare-fun b!3927760 () Bool)

(assert (=> b!3927760 (= e!2429635 (_2!23621 (v!39253 lt!1370939)))))

(declare-fun b!3927761 () Bool)

(assert (=> b!3927761 (= e!2429635 (Cons!41701 (h!47121 lt!1370927) (++!10773 (t!325152 lt!1370927) (_2!23621 (v!39253 lt!1370939)))))))

(assert (= (and d!1164309 c!682416) b!3927760))

(assert (= (and d!1164309 (not c!682416)) b!3927761))

(assert (= (and d!1164309 res!1589138) b!3927762))

(assert (= (and b!3927762 res!1589137) b!3927763))

(declare-fun m!4492561 () Bool)

(assert (=> d!1164309 m!4492561))

(assert (=> d!1164309 m!4492249))

(declare-fun m!4492563 () Bool)

(assert (=> d!1164309 m!4492563))

(declare-fun m!4492565 () Bool)

(assert (=> b!3927762 m!4492565))

(assert (=> b!3927762 m!4492109))

(assert (=> b!3927762 m!4492075))

(declare-fun m!4492567 () Bool)

(assert (=> b!3927761 m!4492567))

(assert (=> b!3927494 d!1164309))

(declare-fun d!1164311 () Bool)

(declare-fun lt!1371077 () List!41825)

(assert (=> d!1164311 (= (++!10773 lt!1370927 lt!1371077) lt!1370931)))

(declare-fun e!2429640 () List!41825)

(assert (=> d!1164311 (= lt!1371077 e!2429640)))

(declare-fun c!682417 () Bool)

(assert (=> d!1164311 (= c!682417 ((_ is Cons!41701) lt!1370927))))

(assert (=> d!1164311 (>= (size!31290 lt!1370931) (size!31290 lt!1370927))))

(assert (=> d!1164311 (= (getSuffix!2058 lt!1370931 lt!1370927) lt!1371077)))

(declare-fun b!3927778 () Bool)

(assert (=> b!3927778 (= e!2429640 (getSuffix!2058 (tail!6059 lt!1370931) (t!325152 lt!1370927)))))

(declare-fun b!3927779 () Bool)

(assert (=> b!3927779 (= e!2429640 lt!1370931)))

(assert (= (and d!1164311 c!682417) b!3927778))

(assert (= (and d!1164311 (not c!682417)) b!3927779))

(declare-fun m!4492569 () Bool)

(assert (=> d!1164311 m!4492569))

(assert (=> d!1164311 m!4492165))

(assert (=> d!1164311 m!4492109))

(assert (=> b!3927778 m!4492323))

(assert (=> b!3927778 m!4492323))

(declare-fun m!4492571 () Bool)

(assert (=> b!3927778 m!4492571))

(assert (=> b!3927494 d!1164311))

(declare-fun d!1164313 () Bool)

(declare-fun lt!1371080 () Int)

(assert (=> d!1164313 (>= lt!1371080 0)))

(declare-fun e!2429643 () Int)

(assert (=> d!1164313 (= lt!1371080 e!2429643)))

(declare-fun c!682420 () Bool)

(assert (=> d!1164313 (= c!682420 ((_ is Nil!41701) lt!1370927))))

(assert (=> d!1164313 (= (size!31290 lt!1370927) lt!1371080)))

(declare-fun b!3927784 () Bool)

(assert (=> b!3927784 (= e!2429643 0)))

(declare-fun b!3927785 () Bool)

(assert (=> b!3927785 (= e!2429643 (+ 1 (size!31290 (t!325152 lt!1370927))))))

(assert (= (and d!1164313 c!682420) b!3927784))

(assert (= (and d!1164313 (not c!682420)) b!3927785))

(declare-fun m!4492573 () Bool)

(assert (=> b!3927785 m!4492573))

(assert (=> b!3927494 d!1164313))

(declare-fun d!1164315 () Bool)

(assert (=> d!1164315 (= (_2!23621 (v!39253 lt!1370939)) lt!1370960)))

(declare-fun lt!1371081 () Unit!60043)

(assert (=> d!1164315 (= lt!1371081 (choose!23336 lt!1370927 (_2!23621 (v!39253 lt!1370939)) lt!1370927 lt!1370960 lt!1370931))))

(assert (=> d!1164315 (isPrefix!3603 lt!1370927 lt!1370931)))

(assert (=> d!1164315 (= (lemmaSamePrefixThenSameSuffix!1824 lt!1370927 (_2!23621 (v!39253 lt!1370939)) lt!1370927 lt!1370960 lt!1370931) lt!1371081)))

(declare-fun bs!586066 () Bool)

(assert (= bs!586066 d!1164315))

(declare-fun m!4492575 () Bool)

(assert (=> bs!586066 m!4492575))

(assert (=> bs!586066 m!4492361))

(assert (=> b!3927494 d!1164315))

(declare-fun d!1164317 () Bool)

(declare-fun list!15497 (Conc!12719) List!41825)

(assert (=> d!1164317 (= (list!15495 (charsOf!4332 (_1!23621 (v!39253 lt!1370939)))) (list!15497 (c!682355 (charsOf!4332 (_1!23621 (v!39253 lt!1370939))))))))

(declare-fun bs!586067 () Bool)

(assert (= bs!586067 d!1164317))

(declare-fun m!4492581 () Bool)

(assert (=> bs!586067 m!4492581))

(assert (=> b!3927494 d!1164317))

(declare-fun d!1164319 () Bool)

(declare-fun dynLambda!17874 (Int BalanceConc!25032) TokenValue!6738)

(assert (=> d!1164319 (= (apply!9747 (transformation!6508 (rule!9450 (_1!23621 (v!39253 lt!1370939)))) (seqFromList!4775 lt!1370927)) (dynLambda!17874 (toValue!8960 (transformation!6508 (rule!9450 (_1!23621 (v!39253 lt!1370939))))) (seqFromList!4775 lt!1370927)))))

(declare-fun b_lambda!114931 () Bool)

(assert (=> (not b_lambda!114931) (not d!1164319)))

(declare-fun tb!234641 () Bool)

(declare-fun t!325193 () Bool)

(assert (=> (and b!3927511 (= (toValue!8960 (transformation!6508 (rule!9450 (h!47123 suffixTokens!72)))) (toValue!8960 (transformation!6508 (rule!9450 (_1!23621 (v!39253 lt!1370939)))))) t!325193) tb!234641))

(declare-fun result!284344 () Bool)

(assert (=> tb!234641 (= result!284344 (inv!21 (dynLambda!17874 (toValue!8960 (transformation!6508 (rule!9450 (_1!23621 (v!39253 lt!1370939))))) (seqFromList!4775 lt!1370927))))))

(declare-fun m!4492611 () Bool)

(assert (=> tb!234641 m!4492611))

(assert (=> d!1164319 t!325193))

(declare-fun b_and!299615 () Bool)

(assert (= b_and!299567 (and (=> t!325193 result!284344) b_and!299615)))

(declare-fun tb!234643 () Bool)

(declare-fun t!325195 () Bool)

(assert (=> (and b!3927510 (= (toValue!8960 (transformation!6508 (rule!9450 (h!47123 prefixTokens!80)))) (toValue!8960 (transformation!6508 (rule!9450 (_1!23621 (v!39253 lt!1370939)))))) t!325195) tb!234643))

(declare-fun result!284348 () Bool)

(assert (= result!284348 result!284344))

(assert (=> d!1164319 t!325195))

(declare-fun b_and!299617 () Bool)

(assert (= b_and!299571 (and (=> t!325195 result!284348) b_and!299617)))

(declare-fun t!325197 () Bool)

(declare-fun tb!234645 () Bool)

(assert (=> (and b!3927487 (= (toValue!8960 (transformation!6508 (h!47124 rules!2768))) (toValue!8960 (transformation!6508 (rule!9450 (_1!23621 (v!39253 lt!1370939)))))) t!325197) tb!234645))

(declare-fun result!284350 () Bool)

(assert (= result!284350 result!284344))

(assert (=> d!1164319 t!325197))

(declare-fun b_and!299619 () Bool)

(assert (= b_and!299575 (and (=> t!325197 result!284350) b_and!299619)))

(assert (=> d!1164319 m!4492115))

(declare-fun m!4492613 () Bool)

(assert (=> d!1164319 m!4492613))

(assert (=> b!3927494 d!1164319))

(declare-fun d!1164323 () Bool)

(declare-fun e!2429654 () Bool)

(assert (=> d!1164323 e!2429654))

(declare-fun c!682422 () Bool)

(declare-fun lt!1371087 () tuple2!40976)

(assert (=> d!1164323 (= c!682422 (> (size!31292 (_1!23622 lt!1371087)) 0))))

(declare-fun e!2429653 () tuple2!40976)

(assert (=> d!1164323 (= lt!1371087 e!2429653)))

(declare-fun c!682423 () Bool)

(declare-fun lt!1371089 () Option!8928)

(assert (=> d!1164323 (= c!682423 ((_ is Some!8927) lt!1371089))))

(assert (=> d!1164323 (= lt!1371089 (maxPrefix!3401 thiss!20629 rules!2768 (_2!23621 (v!39253 lt!1370939))))))

(assert (=> d!1164323 (= (lexList!1865 thiss!20629 rules!2768 (_2!23621 (v!39253 lt!1370939))) lt!1371087)))

(declare-fun b!3927800 () Bool)

(declare-fun lt!1371088 () tuple2!40976)

(assert (=> b!3927800 (= e!2429653 (tuple2!40977 (Cons!41703 (_1!23621 (v!39253 lt!1371089)) (_1!23622 lt!1371088)) (_2!23622 lt!1371088)))))

(assert (=> b!3927800 (= lt!1371088 (lexList!1865 thiss!20629 rules!2768 (_2!23621 (v!39253 lt!1371089))))))

(declare-fun b!3927801 () Bool)

(assert (=> b!3927801 (= e!2429653 (tuple2!40977 Nil!41703 (_2!23621 (v!39253 lt!1370939))))))

(declare-fun b!3927802 () Bool)

(assert (=> b!3927802 (= e!2429654 (= (_2!23622 lt!1371087) (_2!23621 (v!39253 lt!1370939))))))

(declare-fun b!3927803 () Bool)

(declare-fun e!2429655 () Bool)

(assert (=> b!3927803 (= e!2429655 (not (isEmpty!24852 (_1!23622 lt!1371087))))))

(declare-fun b!3927804 () Bool)

(assert (=> b!3927804 (= e!2429654 e!2429655)))

(declare-fun res!1589163 () Bool)

(assert (=> b!3927804 (= res!1589163 (< (size!31290 (_2!23622 lt!1371087)) (size!31290 (_2!23621 (v!39253 lt!1370939)))))))

(assert (=> b!3927804 (=> (not res!1589163) (not e!2429655))))

(assert (= (and d!1164323 c!682423) b!3927800))

(assert (= (and d!1164323 (not c!682423)) b!3927801))

(assert (= (and d!1164323 c!682422) b!3927804))

(assert (= (and d!1164323 (not c!682422)) b!3927802))

(assert (= (and b!3927804 res!1589163) b!3927803))

(declare-fun m!4492629 () Bool)

(assert (=> d!1164323 m!4492629))

(declare-fun m!4492631 () Bool)

(assert (=> d!1164323 m!4492631))

(declare-fun m!4492637 () Bool)

(assert (=> b!3927800 m!4492637))

(declare-fun m!4492639 () Bool)

(assert (=> b!3927803 m!4492639))

(declare-fun m!4492641 () Bool)

(assert (=> b!3927804 m!4492641))

(assert (=> b!3927804 m!4492075))

(assert (=> b!3927494 d!1164323))

(declare-fun d!1164333 () Bool)

(assert (=> d!1164333 (isPrefix!3603 lt!1370927 (++!10773 lt!1370927 (_2!23621 (v!39253 lt!1370939))))))

(declare-fun lt!1371094 () Unit!60043)

(assert (=> d!1164333 (= lt!1371094 (choose!23334 lt!1370927 (_2!23621 (v!39253 lt!1370939))))))

(assert (=> d!1164333 (= (lemmaConcatTwoListThenFirstIsPrefix!2466 lt!1370927 (_2!23621 (v!39253 lt!1370939))) lt!1371094)))

(declare-fun bs!586070 () Bool)

(assert (= bs!586070 d!1164333))

(assert (=> bs!586070 m!4492119))

(assert (=> bs!586070 m!4492119))

(declare-fun m!4492647 () Bool)

(assert (=> bs!586070 m!4492647))

(declare-fun m!4492649 () Bool)

(assert (=> bs!586070 m!4492649))

(assert (=> b!3927494 d!1164333))

(declare-fun d!1164339 () Bool)

(declare-fun fromListB!2206 (List!41825) BalanceConc!25032)

(assert (=> d!1164339 (= (seqFromList!4775 lt!1370927) (fromListB!2206 lt!1370927))))

(declare-fun bs!586072 () Bool)

(assert (= bs!586072 d!1164339))

(declare-fun m!4492655 () Bool)

(assert (=> bs!586072 m!4492655))

(assert (=> b!3927494 d!1164339))

(declare-fun d!1164343 () Bool)

(declare-fun res!1589172 () Bool)

(declare-fun e!2429663 () Bool)

(assert (=> d!1164343 (=> (not res!1589172) (not e!2429663))))

(declare-fun validRegex!5196 (Regex!11413) Bool)

(assert (=> d!1164343 (= res!1589172 (validRegex!5196 (regex!6508 (rule!9450 (_1!23621 (v!39253 lt!1370939))))))))

(assert (=> d!1164343 (= (ruleValid!2456 thiss!20629 (rule!9450 (_1!23621 (v!39253 lt!1370939)))) e!2429663)))

(declare-fun b!3927817 () Bool)

(declare-fun res!1589173 () Bool)

(assert (=> b!3927817 (=> (not res!1589173) (not e!2429663))))

(declare-fun nullable!3997 (Regex!11413) Bool)

(assert (=> b!3927817 (= res!1589173 (not (nullable!3997 (regex!6508 (rule!9450 (_1!23621 (v!39253 lt!1370939)))))))))

(declare-fun b!3927818 () Bool)

(assert (=> b!3927818 (= e!2429663 (not (= (tag!7368 (rule!9450 (_1!23621 (v!39253 lt!1370939)))) (String!47409 ""))))))

(assert (= (and d!1164343 res!1589172) b!3927817))

(assert (= (and b!3927817 res!1589173) b!3927818))

(declare-fun m!4492657 () Bool)

(assert (=> d!1164343 m!4492657))

(declare-fun m!4492659 () Bool)

(assert (=> b!3927817 m!4492659))

(assert (=> b!3927494 d!1164343))

(declare-fun d!1164345 () Bool)

(declare-fun e!2429676 () Bool)

(assert (=> d!1164345 e!2429676))

(declare-fun res!1589190 () Bool)

(assert (=> d!1164345 (=> res!1589190 e!2429676)))

(declare-fun lt!1371123 () Option!8928)

(declare-fun isEmpty!24856 (Option!8928) Bool)

(assert (=> d!1164345 (= res!1589190 (isEmpty!24856 lt!1371123))))

(declare-fun e!2429677 () Option!8928)

(assert (=> d!1164345 (= lt!1371123 e!2429677)))

(declare-fun c!682432 () Bool)

(assert (=> d!1164345 (= c!682432 (and ((_ is Cons!41704) rules!2768) ((_ is Nil!41704) (t!325155 rules!2768))))))

(declare-fun lt!1371121 () Unit!60043)

(declare-fun lt!1371124 () Unit!60043)

(assert (=> d!1164345 (= lt!1371121 lt!1371124)))

(assert (=> d!1164345 (isPrefix!3603 lt!1370931 lt!1370931)))

(declare-fun lemmaIsPrefixRefl!2276 (List!41825 List!41825) Unit!60043)

(assert (=> d!1164345 (= lt!1371124 (lemmaIsPrefixRefl!2276 lt!1370931 lt!1370931))))

(declare-fun rulesValidInductive!2346 (LexerInterface!6097 List!41828) Bool)

(assert (=> d!1164345 (rulesValidInductive!2346 thiss!20629 rules!2768)))

(assert (=> d!1164345 (= (maxPrefix!3401 thiss!20629 rules!2768 lt!1370931) lt!1371123)))

(declare-fun b!3927847 () Bool)

(declare-fun res!1589196 () Bool)

(declare-fun e!2429678 () Bool)

(assert (=> b!3927847 (=> (not res!1589196) (not e!2429678))))

(assert (=> b!3927847 (= res!1589196 (< (size!31290 (_2!23621 (get!13782 lt!1371123))) (size!31290 lt!1370931)))))

(declare-fun b!3927848 () Bool)

(declare-fun res!1589191 () Bool)

(assert (=> b!3927848 (=> (not res!1589191) (not e!2429678))))

(declare-fun matchR!5478 (Regex!11413 List!41825) Bool)

(assert (=> b!3927848 (= res!1589191 (matchR!5478 (regex!6508 (rule!9450 (_1!23621 (get!13782 lt!1371123)))) (list!15495 (charsOf!4332 (_1!23621 (get!13782 lt!1371123))))))))

(declare-fun b!3927849 () Bool)

(declare-fun call!284746 () Option!8928)

(assert (=> b!3927849 (= e!2429677 call!284746)))

(declare-fun b!3927850 () Bool)

(declare-fun res!1589194 () Bool)

(assert (=> b!3927850 (=> (not res!1589194) (not e!2429678))))

(assert (=> b!3927850 (= res!1589194 (= (value!206112 (_1!23621 (get!13782 lt!1371123))) (apply!9747 (transformation!6508 (rule!9450 (_1!23621 (get!13782 lt!1371123)))) (seqFromList!4775 (originalCharacters!7108 (_1!23621 (get!13782 lt!1371123)))))))))

(declare-fun b!3927851 () Bool)

(declare-fun lt!1371120 () Option!8928)

(declare-fun lt!1371122 () Option!8928)

(assert (=> b!3927851 (= e!2429677 (ite (and ((_ is None!8927) lt!1371120) ((_ is None!8927) lt!1371122)) None!8927 (ite ((_ is None!8927) lt!1371122) lt!1371120 (ite ((_ is None!8927) lt!1371120) lt!1371122 (ite (>= (size!31289 (_1!23621 (v!39253 lt!1371120))) (size!31289 (_1!23621 (v!39253 lt!1371122)))) lt!1371120 lt!1371122)))))))

(assert (=> b!3927851 (= lt!1371120 call!284746)))

(assert (=> b!3927851 (= lt!1371122 (maxPrefix!3401 thiss!20629 (t!325155 rules!2768) lt!1370931))))

(declare-fun bm!284741 () Bool)

(assert (=> bm!284741 (= call!284746 (maxPrefixOneRule!2471 thiss!20629 (h!47124 rules!2768) lt!1370931))))

(declare-fun b!3927852 () Bool)

(declare-fun res!1589195 () Bool)

(assert (=> b!3927852 (=> (not res!1589195) (not e!2429678))))

(assert (=> b!3927852 (= res!1589195 (= (++!10773 (list!15495 (charsOf!4332 (_1!23621 (get!13782 lt!1371123)))) (_2!23621 (get!13782 lt!1371123))) lt!1370931))))

(declare-fun b!3927853 () Bool)

(assert (=> b!3927853 (= e!2429678 (contains!8361 rules!2768 (rule!9450 (_1!23621 (get!13782 lt!1371123)))))))

(declare-fun b!3927854 () Bool)

(declare-fun res!1589193 () Bool)

(assert (=> b!3927854 (=> (not res!1589193) (not e!2429678))))

(assert (=> b!3927854 (= res!1589193 (= (list!15495 (charsOf!4332 (_1!23621 (get!13782 lt!1371123)))) (originalCharacters!7108 (_1!23621 (get!13782 lt!1371123)))))))

(declare-fun b!3927855 () Bool)

(assert (=> b!3927855 (= e!2429676 e!2429678)))

(declare-fun res!1589192 () Bool)

(assert (=> b!3927855 (=> (not res!1589192) (not e!2429678))))

(declare-fun isDefined!6945 (Option!8928) Bool)

(assert (=> b!3927855 (= res!1589192 (isDefined!6945 lt!1371123))))

(assert (= (and d!1164345 c!682432) b!3927849))

(assert (= (and d!1164345 (not c!682432)) b!3927851))

(assert (= (or b!3927849 b!3927851) bm!284741))

(assert (= (and d!1164345 (not res!1589190)) b!3927855))

(assert (= (and b!3927855 res!1589192) b!3927854))

(assert (= (and b!3927854 res!1589193) b!3927847))

(assert (= (and b!3927847 res!1589196) b!3927852))

(assert (= (and b!3927852 res!1589195) b!3927850))

(assert (= (and b!3927850 res!1589194) b!3927848))

(assert (= (and b!3927848 res!1589191) b!3927853))

(declare-fun m!4492683 () Bool)

(assert (=> b!3927855 m!4492683))

(declare-fun m!4492685 () Bool)

(assert (=> b!3927852 m!4492685))

(declare-fun m!4492687 () Bool)

(assert (=> b!3927852 m!4492687))

(assert (=> b!3927852 m!4492687))

(declare-fun m!4492689 () Bool)

(assert (=> b!3927852 m!4492689))

(assert (=> b!3927852 m!4492689))

(declare-fun m!4492691 () Bool)

(assert (=> b!3927852 m!4492691))

(assert (=> b!3927854 m!4492685))

(assert (=> b!3927854 m!4492687))

(assert (=> b!3927854 m!4492687))

(assert (=> b!3927854 m!4492689))

(declare-fun m!4492693 () Bool)

(assert (=> bm!284741 m!4492693))

(declare-fun m!4492695 () Bool)

(assert (=> d!1164345 m!4492695))

(declare-fun m!4492697 () Bool)

(assert (=> d!1164345 m!4492697))

(declare-fun m!4492699 () Bool)

(assert (=> d!1164345 m!4492699))

(declare-fun m!4492701 () Bool)

(assert (=> d!1164345 m!4492701))

(assert (=> b!3927847 m!4492685))

(declare-fun m!4492703 () Bool)

(assert (=> b!3927847 m!4492703))

(assert (=> b!3927847 m!4492165))

(assert (=> b!3927848 m!4492685))

(assert (=> b!3927848 m!4492687))

(assert (=> b!3927848 m!4492687))

(assert (=> b!3927848 m!4492689))

(assert (=> b!3927848 m!4492689))

(declare-fun m!4492705 () Bool)

(assert (=> b!3927848 m!4492705))

(declare-fun m!4492707 () Bool)

(assert (=> b!3927851 m!4492707))

(assert (=> b!3927853 m!4492685))

(declare-fun m!4492709 () Bool)

(assert (=> b!3927853 m!4492709))

(assert (=> b!3927850 m!4492685))

(declare-fun m!4492711 () Bool)

(assert (=> b!3927850 m!4492711))

(assert (=> b!3927850 m!4492711))

(declare-fun m!4492713 () Bool)

(assert (=> b!3927850 m!4492713))

(assert (=> b!3927475 d!1164345))

(declare-fun d!1164365 () Bool)

(declare-fun lt!1371125 () Int)

(assert (=> d!1164365 (>= lt!1371125 0)))

(declare-fun e!2429679 () Int)

(assert (=> d!1164365 (= lt!1371125 e!2429679)))

(declare-fun c!682433 () Bool)

(assert (=> d!1164365 (= c!682433 ((_ is Nil!41701) (originalCharacters!7108 (_1!23621 (v!39253 lt!1370939)))))))

(assert (=> d!1164365 (= (size!31290 (originalCharacters!7108 (_1!23621 (v!39253 lt!1370939)))) lt!1371125)))

(declare-fun b!3927856 () Bool)

(assert (=> b!3927856 (= e!2429679 0)))

(declare-fun b!3927857 () Bool)

(assert (=> b!3927857 (= e!2429679 (+ 1 (size!31290 (t!325152 (originalCharacters!7108 (_1!23621 (v!39253 lt!1370939)))))))))

(assert (= (and d!1164365 c!682433) b!3927856))

(assert (= (and d!1164365 (not c!682433)) b!3927857))

(declare-fun m!4492715 () Bool)

(assert (=> b!3927857 m!4492715))

(assert (=> b!3927495 d!1164365))

(declare-fun d!1164367 () Bool)

(assert (=> d!1164367 (= (head!8331 prefixTokens!80) (h!47123 prefixTokens!80))))

(assert (=> b!3927496 d!1164367))

(declare-fun d!1164369 () Bool)

(assert (=> d!1164369 (= (inv!55891 (tag!7368 (rule!9450 (h!47123 suffixTokens!72)))) (= (mod (str.len (value!206111 (tag!7368 (rule!9450 (h!47123 suffixTokens!72))))) 2) 0))))

(assert (=> b!3927497 d!1164369))

(declare-fun d!1164371 () Bool)

(declare-fun res!1589197 () Bool)

(declare-fun e!2429680 () Bool)

(assert (=> d!1164371 (=> (not res!1589197) (not e!2429680))))

(assert (=> d!1164371 (= res!1589197 (semiInverseModEq!2797 (toChars!8819 (transformation!6508 (rule!9450 (h!47123 suffixTokens!72)))) (toValue!8960 (transformation!6508 (rule!9450 (h!47123 suffixTokens!72))))))))

(assert (=> d!1164371 (= (inv!55894 (transformation!6508 (rule!9450 (h!47123 suffixTokens!72)))) e!2429680)))

(declare-fun b!3927858 () Bool)

(assert (=> b!3927858 (= e!2429680 (equivClasses!2696 (toChars!8819 (transformation!6508 (rule!9450 (h!47123 suffixTokens!72)))) (toValue!8960 (transformation!6508 (rule!9450 (h!47123 suffixTokens!72))))))))

(assert (= (and d!1164371 res!1589197) b!3927858))

(declare-fun m!4492717 () Bool)

(assert (=> d!1164371 m!4492717))

(declare-fun m!4492719 () Bool)

(assert (=> b!3927858 m!4492719))

(assert (=> b!3927497 d!1164371))

(declare-fun d!1164373 () Bool)

(declare-fun e!2429682 () Bool)

(assert (=> d!1164373 e!2429682))

(declare-fun c!682434 () Bool)

(declare-fun lt!1371126 () tuple2!40976)

(assert (=> d!1164373 (= c!682434 (> (size!31292 (_1!23622 lt!1371126)) 0))))

(declare-fun e!2429681 () tuple2!40976)

(assert (=> d!1164373 (= lt!1371126 e!2429681)))

(declare-fun c!682435 () Bool)

(declare-fun lt!1371128 () Option!8928)

(assert (=> d!1164373 (= c!682435 ((_ is Some!8927) lt!1371128))))

(assert (=> d!1164373 (= lt!1371128 (maxPrefix!3401 thiss!20629 rules!2768 lt!1370931))))

(assert (=> d!1164373 (= (lexList!1865 thiss!20629 rules!2768 lt!1370931) lt!1371126)))

(declare-fun b!3927859 () Bool)

(declare-fun lt!1371127 () tuple2!40976)

(assert (=> b!3927859 (= e!2429681 (tuple2!40977 (Cons!41703 (_1!23621 (v!39253 lt!1371128)) (_1!23622 lt!1371127)) (_2!23622 lt!1371127)))))

(assert (=> b!3927859 (= lt!1371127 (lexList!1865 thiss!20629 rules!2768 (_2!23621 (v!39253 lt!1371128))))))

(declare-fun b!3927860 () Bool)

(assert (=> b!3927860 (= e!2429681 (tuple2!40977 Nil!41703 lt!1370931))))

(declare-fun b!3927861 () Bool)

(assert (=> b!3927861 (= e!2429682 (= (_2!23622 lt!1371126) lt!1370931))))

(declare-fun b!3927862 () Bool)

(declare-fun e!2429683 () Bool)

(assert (=> b!3927862 (= e!2429683 (not (isEmpty!24852 (_1!23622 lt!1371126))))))

(declare-fun b!3927863 () Bool)

(assert (=> b!3927863 (= e!2429682 e!2429683)))

(declare-fun res!1589198 () Bool)

(assert (=> b!3927863 (= res!1589198 (< (size!31290 (_2!23622 lt!1371126)) (size!31290 lt!1370931)))))

(assert (=> b!3927863 (=> (not res!1589198) (not e!2429683))))

(assert (= (and d!1164373 c!682435) b!3927859))

(assert (= (and d!1164373 (not c!682435)) b!3927860))

(assert (= (and d!1164373 c!682434) b!3927863))

(assert (= (and d!1164373 (not c!682434)) b!3927861))

(assert (= (and b!3927863 res!1589198) b!3927862))

(declare-fun m!4492721 () Bool)

(assert (=> d!1164373 m!4492721))

(assert (=> d!1164373 m!4492145))

(declare-fun m!4492723 () Bool)

(assert (=> b!3927859 m!4492723))

(declare-fun m!4492725 () Bool)

(assert (=> b!3927862 m!4492725))

(declare-fun m!4492727 () Bool)

(assert (=> b!3927863 m!4492727))

(assert (=> b!3927863 m!4492165))

(assert (=> b!3927498 d!1164373))

(declare-fun b!3927872 () Bool)

(declare-fun e!2429689 () List!41827)

(assert (=> b!3927872 (= e!2429689 suffixTokens!72)))

(declare-fun b!3927874 () Bool)

(declare-fun res!1589203 () Bool)

(declare-fun e!2429688 () Bool)

(assert (=> b!3927874 (=> (not res!1589203) (not e!2429688))))

(declare-fun lt!1371131 () List!41827)

(assert (=> b!3927874 (= res!1589203 (= (size!31292 lt!1371131) (+ (size!31292 prefixTokens!80) (size!31292 suffixTokens!72))))))

(declare-fun b!3927875 () Bool)

(assert (=> b!3927875 (= e!2429688 (or (not (= suffixTokens!72 Nil!41703)) (= lt!1371131 prefixTokens!80)))))

(declare-fun b!3927873 () Bool)

(assert (=> b!3927873 (= e!2429689 (Cons!41703 (h!47123 prefixTokens!80) (++!10774 (t!325154 prefixTokens!80) suffixTokens!72)))))

(declare-fun d!1164375 () Bool)

(assert (=> d!1164375 e!2429688))

(declare-fun res!1589204 () Bool)

(assert (=> d!1164375 (=> (not res!1589204) (not e!2429688))))

(declare-fun content!6280 (List!41827) (InoxSet Token!12154))

(assert (=> d!1164375 (= res!1589204 (= (content!6280 lt!1371131) ((_ map or) (content!6280 prefixTokens!80) (content!6280 suffixTokens!72))))))

(assert (=> d!1164375 (= lt!1371131 e!2429689)))

(declare-fun c!682438 () Bool)

(assert (=> d!1164375 (= c!682438 ((_ is Nil!41703) prefixTokens!80))))

(assert (=> d!1164375 (= (++!10774 prefixTokens!80 suffixTokens!72) lt!1371131)))

(assert (= (and d!1164375 c!682438) b!3927872))

(assert (= (and d!1164375 (not c!682438)) b!3927873))

(assert (= (and d!1164375 res!1589204) b!3927874))

(assert (= (and b!3927874 res!1589203) b!3927875))

(declare-fun m!4492729 () Bool)

(assert (=> b!3927874 m!4492729))

(declare-fun m!4492731 () Bool)

(assert (=> b!3927874 m!4492731))

(declare-fun m!4492733 () Bool)

(assert (=> b!3927874 m!4492733))

(declare-fun m!4492735 () Bool)

(assert (=> b!3927873 m!4492735))

(declare-fun m!4492737 () Bool)

(assert (=> d!1164375 m!4492737))

(declare-fun m!4492739 () Bool)

(assert (=> d!1164375 m!4492739))

(declare-fun m!4492741 () Bool)

(assert (=> d!1164375 m!4492741))

(assert (=> b!3927498 d!1164375))

(declare-fun e!2429690 () Bool)

(declare-fun lt!1371132 () List!41825)

(declare-fun b!3927879 () Bool)

(assert (=> b!3927879 (= e!2429690 (or (not (= suffix!1176 Nil!41701)) (= lt!1371132 prefix!426)))))

(declare-fun d!1164377 () Bool)

(assert (=> d!1164377 e!2429690))

(declare-fun res!1589206 () Bool)

(assert (=> d!1164377 (=> (not res!1589206) (not e!2429690))))

(assert (=> d!1164377 (= res!1589206 (= (content!6278 lt!1371132) ((_ map or) (content!6278 prefix!426) (content!6278 suffix!1176))))))

(declare-fun e!2429691 () List!41825)

(assert (=> d!1164377 (= lt!1371132 e!2429691)))

(declare-fun c!682439 () Bool)

(assert (=> d!1164377 (= c!682439 ((_ is Nil!41701) prefix!426))))

(assert (=> d!1164377 (= (++!10773 prefix!426 suffix!1176) lt!1371132)))

(declare-fun b!3927878 () Bool)

(declare-fun res!1589205 () Bool)

(assert (=> b!3927878 (=> (not res!1589205) (not e!2429690))))

(assert (=> b!3927878 (= res!1589205 (= (size!31290 lt!1371132) (+ (size!31290 prefix!426) (size!31290 suffix!1176))))))

(declare-fun b!3927876 () Bool)

(assert (=> b!3927876 (= e!2429691 suffix!1176)))

(declare-fun b!3927877 () Bool)

(assert (=> b!3927877 (= e!2429691 (Cons!41701 (h!47121 prefix!426) (++!10773 (t!325152 prefix!426) suffix!1176)))))

(assert (= (and d!1164377 c!682439) b!3927876))

(assert (= (and d!1164377 (not c!682439)) b!3927877))

(assert (= (and d!1164377 res!1589206) b!3927878))

(assert (= (and b!3927878 res!1589205) b!3927879))

(declare-fun m!4492743 () Bool)

(assert (=> d!1164377 m!4492743))

(declare-fun m!4492745 () Bool)

(assert (=> d!1164377 m!4492745))

(assert (=> d!1164377 m!4492515))

(declare-fun m!4492747 () Bool)

(assert (=> b!3927878 m!4492747))

(assert (=> b!3927878 m!4492179))

(assert (=> b!3927878 m!4492073))

(declare-fun m!4492749 () Bool)

(assert (=> b!3927877 m!4492749))

(assert (=> b!3927498 d!1164377))

(declare-fun d!1164379 () Bool)

(assert (=> d!1164379 (= (isEmpty!24853 rules!2768) ((_ is Nil!41704) rules!2768))))

(assert (=> b!3927478 d!1164379))

(declare-fun d!1164381 () Bool)

(assert (=> d!1164381 (= (get!13782 lt!1370939) (v!39253 lt!1370939))))

(assert (=> b!3927479 d!1164381))

(declare-fun b!3927944 () Bool)

(declare-fun e!2429724 () Bool)

(declare-fun e!2429723 () Bool)

(assert (=> b!3927944 (= e!2429724 e!2429723)))

(declare-fun res!1589251 () Bool)

(assert (=> b!3927944 (=> (not res!1589251) (not e!2429723))))

(declare-fun lt!1371165 () Option!8928)

(assert (=> b!3927944 (= res!1589251 (matchR!5478 (regex!6508 (rule!9450 (_1!23621 (v!39253 lt!1370939)))) (list!15495 (charsOf!4332 (_1!23621 (get!13782 lt!1371165))))))))

(declare-fun b!3927945 () Bool)

(declare-fun res!1589253 () Bool)

(assert (=> b!3927945 (=> (not res!1589253) (not e!2429723))))

(assert (=> b!3927945 (= res!1589253 (= (++!10773 (list!15495 (charsOf!4332 (_1!23621 (get!13782 lt!1371165)))) (_2!23621 (get!13782 lt!1371165))) lt!1370931))))

(declare-fun b!3927946 () Bool)

(declare-fun e!2429726 () Option!8928)

(assert (=> b!3927946 (= e!2429726 None!8927)))

(declare-fun b!3927947 () Bool)

(assert (=> b!3927947 (= e!2429723 (= (size!31289 (_1!23621 (get!13782 lt!1371165))) (size!31290 (originalCharacters!7108 (_1!23621 (get!13782 lt!1371165))))))))

(declare-fun b!3927948 () Bool)

(declare-fun e!2429725 () Bool)

(declare-datatypes ((tuple2!40978 0))(
  ( (tuple2!40979 (_1!23623 List!41825) (_2!23623 List!41825)) )
))
(declare-fun findLongestMatchInner!1257 (Regex!11413 List!41825 Int List!41825 List!41825 Int) tuple2!40978)

(assert (=> b!3927948 (= e!2429725 (matchR!5478 (regex!6508 (rule!9450 (_1!23621 (v!39253 lt!1370939)))) (_1!23623 (findLongestMatchInner!1257 (regex!6508 (rule!9450 (_1!23621 (v!39253 lt!1370939)))) Nil!41701 (size!31290 Nil!41701) lt!1370931 lt!1370931 (size!31290 lt!1370931)))))))

(declare-fun d!1164383 () Bool)

(assert (=> d!1164383 e!2429724))

(declare-fun res!1589250 () Bool)

(assert (=> d!1164383 (=> res!1589250 e!2429724)))

(assert (=> d!1164383 (= res!1589250 (isEmpty!24856 lt!1371165))))

(assert (=> d!1164383 (= lt!1371165 e!2429726)))

(declare-fun c!682450 () Bool)

(declare-fun lt!1371163 () tuple2!40978)

(assert (=> d!1164383 (= c!682450 (isEmpty!24854 (_1!23623 lt!1371163)))))

(declare-fun findLongestMatch!1170 (Regex!11413 List!41825) tuple2!40978)

(assert (=> d!1164383 (= lt!1371163 (findLongestMatch!1170 (regex!6508 (rule!9450 (_1!23621 (v!39253 lt!1370939)))) lt!1370931))))

(assert (=> d!1164383 (ruleValid!2456 thiss!20629 (rule!9450 (_1!23621 (v!39253 lt!1370939))))))

(assert (=> d!1164383 (= (maxPrefixOneRule!2471 thiss!20629 (rule!9450 (_1!23621 (v!39253 lt!1370939))) lt!1370931) lt!1371165)))

(declare-fun b!3927949 () Bool)

(declare-fun res!1589254 () Bool)

(assert (=> b!3927949 (=> (not res!1589254) (not e!2429723))))

(assert (=> b!3927949 (= res!1589254 (< (size!31290 (_2!23621 (get!13782 lt!1371165))) (size!31290 lt!1370931)))))

(declare-fun b!3927950 () Bool)

(declare-fun res!1589252 () Bool)

(assert (=> b!3927950 (=> (not res!1589252) (not e!2429723))))

(assert (=> b!3927950 (= res!1589252 (= (value!206112 (_1!23621 (get!13782 lt!1371165))) (apply!9747 (transformation!6508 (rule!9450 (_1!23621 (get!13782 lt!1371165)))) (seqFromList!4775 (originalCharacters!7108 (_1!23621 (get!13782 lt!1371165)))))))))

(declare-fun b!3927951 () Bool)

(declare-fun res!1589256 () Bool)

(assert (=> b!3927951 (=> (not res!1589256) (not e!2429723))))

(assert (=> b!3927951 (= res!1589256 (= (rule!9450 (_1!23621 (get!13782 lt!1371165))) (rule!9450 (_1!23621 (v!39253 lt!1370939)))))))

(declare-fun b!3927952 () Bool)

(declare-fun size!31293 (BalanceConc!25032) Int)

(assert (=> b!3927952 (= e!2429726 (Some!8927 (tuple2!40975 (Token!12155 (apply!9747 (transformation!6508 (rule!9450 (_1!23621 (v!39253 lt!1370939)))) (seqFromList!4775 (_1!23623 lt!1371163))) (rule!9450 (_1!23621 (v!39253 lt!1370939))) (size!31293 (seqFromList!4775 (_1!23623 lt!1371163))) (_1!23623 lt!1371163)) (_2!23623 lt!1371163))))))

(declare-fun lt!1371161 () Unit!60043)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1230 (Regex!11413 List!41825) Unit!60043)

(assert (=> b!3927952 (= lt!1371161 (longestMatchIsAcceptedByMatchOrIsEmpty!1230 (regex!6508 (rule!9450 (_1!23621 (v!39253 lt!1370939)))) lt!1370931))))

(declare-fun res!1589255 () Bool)

(assert (=> b!3927952 (= res!1589255 (isEmpty!24854 (_1!23623 (findLongestMatchInner!1257 (regex!6508 (rule!9450 (_1!23621 (v!39253 lt!1370939)))) Nil!41701 (size!31290 Nil!41701) lt!1370931 lt!1370931 (size!31290 lt!1370931)))))))

(assert (=> b!3927952 (=> res!1589255 e!2429725)))

(assert (=> b!3927952 e!2429725))

(declare-fun lt!1371162 () Unit!60043)

(assert (=> b!3927952 (= lt!1371162 lt!1371161)))

(declare-fun lt!1371164 () Unit!60043)

(declare-fun lemmaSemiInverse!1763 (TokenValueInjection!12904 BalanceConc!25032) Unit!60043)

(assert (=> b!3927952 (= lt!1371164 (lemmaSemiInverse!1763 (transformation!6508 (rule!9450 (_1!23621 (v!39253 lt!1370939)))) (seqFromList!4775 (_1!23623 lt!1371163))))))

(assert (= (and d!1164383 c!682450) b!3927946))

(assert (= (and d!1164383 (not c!682450)) b!3927952))

(assert (= (and b!3927952 (not res!1589255)) b!3927948))

(assert (= (and d!1164383 (not res!1589250)) b!3927944))

(assert (= (and b!3927944 res!1589251) b!3927945))

(assert (= (and b!3927945 res!1589253) b!3927949))

(assert (= (and b!3927949 res!1589254) b!3927951))

(assert (= (and b!3927951 res!1589256) b!3927950))

(assert (= (and b!3927950 res!1589252) b!3927947))

(declare-fun m!4492839 () Bool)

(assert (=> b!3927952 m!4492839))

(declare-fun m!4492841 () Bool)

(assert (=> b!3927952 m!4492841))

(declare-fun m!4492843 () Bool)

(assert (=> b!3927952 m!4492843))

(declare-fun m!4492845 () Bool)

(assert (=> b!3927952 m!4492845))

(assert (=> b!3927952 m!4492839))

(assert (=> b!3927952 m!4492845))

(assert (=> b!3927952 m!4492165))

(declare-fun m!4492847 () Bool)

(assert (=> b!3927952 m!4492847))

(assert (=> b!3927952 m!4492839))

(declare-fun m!4492849 () Bool)

(assert (=> b!3927952 m!4492849))

(declare-fun m!4492851 () Bool)

(assert (=> b!3927952 m!4492851))

(assert (=> b!3927952 m!4492839))

(declare-fun m!4492853 () Bool)

(assert (=> b!3927952 m!4492853))

(assert (=> b!3927952 m!4492165))

(declare-fun m!4492855 () Bool)

(assert (=> b!3927944 m!4492855))

(declare-fun m!4492857 () Bool)

(assert (=> b!3927944 m!4492857))

(assert (=> b!3927944 m!4492857))

(declare-fun m!4492859 () Bool)

(assert (=> b!3927944 m!4492859))

(assert (=> b!3927944 m!4492859))

(declare-fun m!4492861 () Bool)

(assert (=> b!3927944 m!4492861))

(assert (=> b!3927950 m!4492855))

(declare-fun m!4492863 () Bool)

(assert (=> b!3927950 m!4492863))

(assert (=> b!3927950 m!4492863))

(declare-fun m!4492865 () Bool)

(assert (=> b!3927950 m!4492865))

(declare-fun m!4492867 () Bool)

(assert (=> d!1164383 m!4492867))

(declare-fun m!4492869 () Bool)

(assert (=> d!1164383 m!4492869))

(declare-fun m!4492871 () Bool)

(assert (=> d!1164383 m!4492871))

(assert (=> d!1164383 m!4492123))

(assert (=> b!3927951 m!4492855))

(assert (=> b!3927949 m!4492855))

(declare-fun m!4492873 () Bool)

(assert (=> b!3927949 m!4492873))

(assert (=> b!3927949 m!4492165))

(assert (=> b!3927948 m!4492845))

(assert (=> b!3927948 m!4492165))

(assert (=> b!3927948 m!4492845))

(assert (=> b!3927948 m!4492165))

(assert (=> b!3927948 m!4492847))

(declare-fun m!4492875 () Bool)

(assert (=> b!3927948 m!4492875))

(assert (=> b!3927945 m!4492855))

(assert (=> b!3927945 m!4492857))

(assert (=> b!3927945 m!4492857))

(assert (=> b!3927945 m!4492859))

(assert (=> b!3927945 m!4492859))

(declare-fun m!4492877 () Bool)

(assert (=> b!3927945 m!4492877))

(assert (=> b!3927947 m!4492855))

(declare-fun m!4492879 () Bool)

(assert (=> b!3927947 m!4492879))

(assert (=> b!3927479 d!1164383))

(declare-fun d!1164405 () Bool)

(declare-fun lt!1371166 () Int)

(assert (=> d!1164405 (>= lt!1371166 0)))

(declare-fun e!2429727 () Int)

(assert (=> d!1164405 (= lt!1371166 e!2429727)))

(declare-fun c!682451 () Bool)

(assert (=> d!1164405 (= c!682451 ((_ is Nil!41701) lt!1370931))))

(assert (=> d!1164405 (= (size!31290 lt!1370931) lt!1371166)))

(declare-fun b!3927953 () Bool)

(assert (=> b!3927953 (= e!2429727 0)))

(declare-fun b!3927954 () Bool)

(assert (=> b!3927954 (= e!2429727 (+ 1 (size!31290 (t!325152 lt!1370931))))))

(assert (= (and d!1164405 c!682451) b!3927953))

(assert (= (and d!1164405 (not c!682451)) b!3927954))

(declare-fun m!4492881 () Bool)

(assert (=> b!3927954 m!4492881))

(assert (=> b!3927479 d!1164405))

(declare-fun d!1164407 () Bool)

(assert (=> d!1164407 (= (maxPrefixOneRule!2471 thiss!20629 (rule!9450 (_1!23621 (v!39253 lt!1370939))) lt!1370931) (Some!8927 (tuple2!40975 (Token!12155 (apply!9747 (transformation!6508 (rule!9450 (_1!23621 (v!39253 lt!1370939)))) (seqFromList!4775 lt!1370927)) (rule!9450 (_1!23621 (v!39253 lt!1370939))) (size!31290 lt!1370927) lt!1370927) (_2!23621 (v!39253 lt!1370939)))))))

(declare-fun lt!1371173 () Unit!60043)

(declare-fun choose!23342 (LexerInterface!6097 List!41828 List!41825 List!41825 List!41825 Rule!12816) Unit!60043)

(assert (=> d!1164407 (= lt!1371173 (choose!23342 thiss!20629 rules!2768 lt!1370927 lt!1370931 (_2!23621 (v!39253 lt!1370939)) (rule!9450 (_1!23621 (v!39253 lt!1370939)))))))

(assert (=> d!1164407 (not (isEmpty!24853 rules!2768))))

(assert (=> d!1164407 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1339 thiss!20629 rules!2768 lt!1370927 lt!1370931 (_2!23621 (v!39253 lt!1370939)) (rule!9450 (_1!23621 (v!39253 lt!1370939)))) lt!1371173)))

(declare-fun bs!586076 () Bool)

(assert (= bs!586076 d!1164407))

(assert (=> bs!586076 m!4492169))

(declare-fun m!4492907 () Bool)

(assert (=> bs!586076 m!4492907))

(assert (=> bs!586076 m!4492115))

(assert (=> bs!586076 m!4492109))

(assert (=> bs!586076 m!4492199))

(assert (=> bs!586076 m!4492115))

(assert (=> bs!586076 m!4492127))

(assert (=> b!3927479 d!1164407))

(declare-fun d!1164411 () Bool)

(declare-fun lt!1371174 () Int)

(assert (=> d!1164411 (>= lt!1371174 0)))

(declare-fun e!2429774 () Int)

(assert (=> d!1164411 (= lt!1371174 e!2429774)))

(declare-fun c!682453 () Bool)

(assert (=> d!1164411 (= c!682453 ((_ is Nil!41701) (_2!23621 lt!1370963)))))

(assert (=> d!1164411 (= (size!31290 (_2!23621 lt!1370963)) lt!1371174)))

(declare-fun b!3928012 () Bool)

(assert (=> b!3928012 (= e!2429774 0)))

(declare-fun b!3928013 () Bool)

(assert (=> b!3928013 (= e!2429774 (+ 1 (size!31290 (t!325152 (_2!23621 lt!1370963)))))))

(assert (= (and d!1164411 c!682453) b!3928012))

(assert (= (and d!1164411 (not c!682453)) b!3928013))

(declare-fun m!4492909 () Bool)

(assert (=> b!3928013 m!4492909))

(assert (=> b!3927479 d!1164411))

(declare-fun b!3928017 () Bool)

(declare-fun lt!1371175 () List!41825)

(declare-fun e!2429775 () Bool)

(assert (=> b!3928017 (= e!2429775 (or (not (= lt!1370926 Nil!41701)) (= lt!1371175 lt!1370927)))))

(declare-fun d!1164413 () Bool)

(assert (=> d!1164413 e!2429775))

(declare-fun res!1589260 () Bool)

(assert (=> d!1164413 (=> (not res!1589260) (not e!2429775))))

(assert (=> d!1164413 (= res!1589260 (= (content!6278 lt!1371175) ((_ map or) (content!6278 lt!1370927) (content!6278 lt!1370926))))))

(declare-fun e!2429776 () List!41825)

(assert (=> d!1164413 (= lt!1371175 e!2429776)))

(declare-fun c!682454 () Bool)

(assert (=> d!1164413 (= c!682454 ((_ is Nil!41701) lt!1370927))))

(assert (=> d!1164413 (= (++!10773 lt!1370927 lt!1370926) lt!1371175)))

(declare-fun b!3928016 () Bool)

(declare-fun res!1589259 () Bool)

(assert (=> b!3928016 (=> (not res!1589259) (not e!2429775))))

(assert (=> b!3928016 (= res!1589259 (= (size!31290 lt!1371175) (+ (size!31290 lt!1370927) (size!31290 lt!1370926))))))

(declare-fun b!3928014 () Bool)

(assert (=> b!3928014 (= e!2429776 lt!1370926)))

(declare-fun b!3928015 () Bool)

(assert (=> b!3928015 (= e!2429776 (Cons!41701 (h!47121 lt!1370927) (++!10773 (t!325152 lt!1370927) lt!1370926)))))

(assert (= (and d!1164413 c!682454) b!3928014))

(assert (= (and d!1164413 (not c!682454)) b!3928015))

(assert (= (and d!1164413 res!1589260) b!3928016))

(assert (= (and b!3928016 res!1589259) b!3928017))

(declare-fun m!4492919 () Bool)

(assert (=> d!1164413 m!4492919))

(assert (=> d!1164413 m!4492249))

(declare-fun m!4492921 () Bool)

(assert (=> d!1164413 m!4492921))

(declare-fun m!4492923 () Bool)

(assert (=> b!3928016 m!4492923))

(assert (=> b!3928016 m!4492109))

(declare-fun m!4492925 () Bool)

(assert (=> b!3928016 m!4492925))

(declare-fun m!4492927 () Bool)

(assert (=> b!3928015 m!4492927))

(assert (=> b!3927499 d!1164413))

(declare-fun b!3928024 () Bool)

(declare-fun lt!1371176 () List!41825)

(declare-fun e!2429779 () Bool)

(assert (=> b!3928024 (= e!2429779 (or (not (= suffix!1176 Nil!41701)) (= lt!1371176 lt!1370948)))))

(declare-fun d!1164415 () Bool)

(assert (=> d!1164415 e!2429779))

(declare-fun res!1589262 () Bool)

(assert (=> d!1164415 (=> (not res!1589262) (not e!2429779))))

(assert (=> d!1164415 (= res!1589262 (= (content!6278 lt!1371176) ((_ map or) (content!6278 lt!1370948) (content!6278 suffix!1176))))))

(declare-fun e!2429781 () List!41825)

(assert (=> d!1164415 (= lt!1371176 e!2429781)))

(declare-fun c!682455 () Bool)

(assert (=> d!1164415 (= c!682455 ((_ is Nil!41701) lt!1370948))))

(assert (=> d!1164415 (= (++!10773 lt!1370948 suffix!1176) lt!1371176)))

(declare-fun b!3928023 () Bool)

(declare-fun res!1589261 () Bool)

(assert (=> b!3928023 (=> (not res!1589261) (not e!2429779))))

(assert (=> b!3928023 (= res!1589261 (= (size!31290 lt!1371176) (+ (size!31290 lt!1370948) (size!31290 suffix!1176))))))

(declare-fun b!3928021 () Bool)

(assert (=> b!3928021 (= e!2429781 suffix!1176)))

(declare-fun b!3928022 () Bool)

(assert (=> b!3928022 (= e!2429781 (Cons!41701 (h!47121 lt!1370948) (++!10773 (t!325152 lt!1370948) suffix!1176)))))

(assert (= (and d!1164415 c!682455) b!3928021))

(assert (= (and d!1164415 (not c!682455)) b!3928022))

(assert (= (and d!1164415 res!1589262) b!3928023))

(assert (= (and b!3928023 res!1589261) b!3928024))

(declare-fun m!4492929 () Bool)

(assert (=> d!1164415 m!4492929))

(assert (=> d!1164415 m!4492251))

(assert (=> d!1164415 m!4492515))

(declare-fun m!4492931 () Bool)

(assert (=> b!3928023 m!4492931))

(assert (=> b!3928023 m!4492255))

(assert (=> b!3928023 m!4492073))

(declare-fun m!4492933 () Bool)

(assert (=> b!3928022 m!4492933))

(assert (=> b!3927499 d!1164415))

(declare-fun d!1164417 () Bool)

(assert (=> d!1164417 (= (++!10773 (++!10773 lt!1370927 lt!1370948) suffix!1176) (++!10773 lt!1370927 (++!10773 lt!1370948 suffix!1176)))))

(declare-fun lt!1371179 () Unit!60043)

(declare-fun choose!23343 (List!41825 List!41825 List!41825) Unit!60043)

(assert (=> d!1164417 (= lt!1371179 (choose!23343 lt!1370927 lt!1370948 suffix!1176))))

(assert (=> d!1164417 (= (lemmaConcatAssociativity!2304 lt!1370927 lt!1370948 suffix!1176) lt!1371179)))

(declare-fun bs!586077 () Bool)

(assert (= bs!586077 d!1164417))

(assert (=> bs!586077 m!4492069))

(declare-fun m!4492935 () Bool)

(assert (=> bs!586077 m!4492935))

(assert (=> bs!586077 m!4492081))

(assert (=> bs!586077 m!4492069))

(assert (=> bs!586077 m!4492081))

(declare-fun m!4492937 () Bool)

(assert (=> bs!586077 m!4492937))

(declare-fun m!4492939 () Bool)

(assert (=> bs!586077 m!4492939))

(assert (=> b!3927499 d!1164417))

(declare-fun d!1164419 () Bool)

(declare-fun lt!1371180 () Int)

(assert (=> d!1164419 (>= lt!1371180 0)))

(declare-fun e!2429783 () Int)

(assert (=> d!1164419 (= lt!1371180 e!2429783)))

(declare-fun c!682456 () Bool)

(assert (=> d!1164419 (= c!682456 ((_ is Nil!41701) suffix!1176))))

(assert (=> d!1164419 (= (size!31290 suffix!1176) lt!1371180)))

(declare-fun b!3928029 () Bool)

(assert (=> b!3928029 (= e!2429783 0)))

(declare-fun b!3928030 () Bool)

(assert (=> b!3928030 (= e!2429783 (+ 1 (size!31290 (t!325152 suffix!1176))))))

(assert (= (and d!1164419 c!682456) b!3928029))

(assert (= (and d!1164419 (not c!682456)) b!3928030))

(declare-fun m!4492941 () Bool)

(assert (=> b!3928030 m!4492941))

(assert (=> b!3927500 d!1164419))

(declare-fun d!1164421 () Bool)

(declare-fun lt!1371181 () Int)

(assert (=> d!1164421 (>= lt!1371181 0)))

(declare-fun e!2429784 () Int)

(assert (=> d!1164421 (= lt!1371181 e!2429784)))

(declare-fun c!682457 () Bool)

(assert (=> d!1164421 (= c!682457 ((_ is Nil!41701) (_2!23621 (v!39253 lt!1370939))))))

(assert (=> d!1164421 (= (size!31290 (_2!23621 (v!39253 lt!1370939))) lt!1371181)))

(declare-fun b!3928031 () Bool)

(assert (=> b!3928031 (= e!2429784 0)))

(declare-fun b!3928032 () Bool)

(assert (=> b!3928032 (= e!2429784 (+ 1 (size!31290 (t!325152 (_2!23621 (v!39253 lt!1370939))))))))

(assert (= (and d!1164421 c!682457) b!3928031))

(assert (= (and d!1164421 (not c!682457)) b!3928032))

(declare-fun m!4492943 () Bool)

(assert (=> b!3928032 m!4492943))

(assert (=> b!3927500 d!1164421))

(declare-fun b!3928033 () Bool)

(declare-fun e!2429786 () List!41827)

(assert (=> b!3928033 (= e!2429786 (_1!23622 lt!1370930))))

(declare-fun b!3928035 () Bool)

(declare-fun res!1589263 () Bool)

(declare-fun e!2429785 () Bool)

(assert (=> b!3928035 (=> (not res!1589263) (not e!2429785))))

(declare-fun lt!1371182 () List!41827)

(assert (=> b!3928035 (= res!1589263 (= (size!31292 lt!1371182) (+ (size!31292 lt!1370956) (size!31292 (_1!23622 lt!1370930)))))))

(declare-fun b!3928036 () Bool)

(assert (=> b!3928036 (= e!2429785 (or (not (= (_1!23622 lt!1370930) Nil!41703)) (= lt!1371182 lt!1370956)))))

(declare-fun b!3928034 () Bool)

(assert (=> b!3928034 (= e!2429786 (Cons!41703 (h!47123 lt!1370956) (++!10774 (t!325154 lt!1370956) (_1!23622 lt!1370930))))))

(declare-fun d!1164423 () Bool)

(assert (=> d!1164423 e!2429785))

(declare-fun res!1589264 () Bool)

(assert (=> d!1164423 (=> (not res!1589264) (not e!2429785))))

(assert (=> d!1164423 (= res!1589264 (= (content!6280 lt!1371182) ((_ map or) (content!6280 lt!1370956) (content!6280 (_1!23622 lt!1370930)))))))

(assert (=> d!1164423 (= lt!1371182 e!2429786)))

(declare-fun c!682458 () Bool)

(assert (=> d!1164423 (= c!682458 ((_ is Nil!41703) lt!1370956))))

(assert (=> d!1164423 (= (++!10774 lt!1370956 (_1!23622 lt!1370930)) lt!1371182)))

(assert (= (and d!1164423 c!682458) b!3928033))

(assert (= (and d!1164423 (not c!682458)) b!3928034))

(assert (= (and d!1164423 res!1589264) b!3928035))

(assert (= (and b!3928035 res!1589263) b!3928036))

(declare-fun m!4492945 () Bool)

(assert (=> b!3928035 m!4492945))

(declare-fun m!4492947 () Bool)

(assert (=> b!3928035 m!4492947))

(declare-fun m!4492949 () Bool)

(assert (=> b!3928035 m!4492949))

(declare-fun m!4492951 () Bool)

(assert (=> b!3928034 m!4492951))

(declare-fun m!4492953 () Bool)

(assert (=> d!1164423 m!4492953))

(declare-fun m!4492955 () Bool)

(assert (=> d!1164423 m!4492955))

(declare-fun m!4492957 () Bool)

(assert (=> d!1164423 m!4492957))

(assert (=> b!3927481 d!1164423))

(declare-fun d!1164425 () Bool)

(assert (=> d!1164425 (not (= (lexList!1865 thiss!20629 rules!2768 (_2!23621 lt!1370963)) (tuple2!40977 (++!10774 lt!1370921 suffixTokens!72) suffixResult!91)))))

(declare-fun lt!1371185 () Unit!60043)

(declare-fun choose!23344 (LexerInterface!6097 List!41828 List!41825 List!41825 List!41827 List!41825 List!41827) Unit!60043)

(assert (=> d!1164425 (= lt!1371185 (choose!23344 thiss!20629 rules!2768 suffix!1176 (_2!23621 lt!1370963) suffixTokens!72 suffixResult!91 lt!1370921))))

(assert (=> d!1164425 (not (isEmpty!24853 rules!2768))))

(assert (=> d!1164425 (= (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!108 thiss!20629 rules!2768 suffix!1176 (_2!23621 lt!1370963) suffixTokens!72 suffixResult!91 lt!1370921) lt!1371185)))

(declare-fun bs!586078 () Bool)

(assert (= bs!586078 d!1164425))

(assert (=> bs!586078 m!4492097))

(assert (=> bs!586078 m!4492205))

(declare-fun m!4492959 () Bool)

(assert (=> bs!586078 m!4492959))

(assert (=> bs!586078 m!4492199))

(assert (=> b!3927501 d!1164425))

(declare-fun b!3928037 () Bool)

(declare-fun e!2429788 () List!41827)

(assert (=> b!3928037 (= e!2429788 suffixTokens!72)))

(declare-fun b!3928039 () Bool)

(declare-fun res!1589265 () Bool)

(declare-fun e!2429787 () Bool)

(assert (=> b!3928039 (=> (not res!1589265) (not e!2429787))))

(declare-fun lt!1371186 () List!41827)

(assert (=> b!3928039 (= res!1589265 (= (size!31292 lt!1371186) (+ (size!31292 lt!1370921) (size!31292 suffixTokens!72))))))

(declare-fun b!3928040 () Bool)

(assert (=> b!3928040 (= e!2429787 (or (not (= suffixTokens!72 Nil!41703)) (= lt!1371186 lt!1370921)))))

(declare-fun b!3928038 () Bool)

(assert (=> b!3928038 (= e!2429788 (Cons!41703 (h!47123 lt!1370921) (++!10774 (t!325154 lt!1370921) suffixTokens!72)))))

(declare-fun d!1164427 () Bool)

(assert (=> d!1164427 e!2429787))

(declare-fun res!1589266 () Bool)

(assert (=> d!1164427 (=> (not res!1589266) (not e!2429787))))

(assert (=> d!1164427 (= res!1589266 (= (content!6280 lt!1371186) ((_ map or) (content!6280 lt!1370921) (content!6280 suffixTokens!72))))))

(assert (=> d!1164427 (= lt!1371186 e!2429788)))

(declare-fun c!682459 () Bool)

(assert (=> d!1164427 (= c!682459 ((_ is Nil!41703) lt!1370921))))

(assert (=> d!1164427 (= (++!10774 lt!1370921 suffixTokens!72) lt!1371186)))

(assert (= (and d!1164427 c!682459) b!3928037))

(assert (= (and d!1164427 (not c!682459)) b!3928038))

(assert (= (and d!1164427 res!1589266) b!3928039))

(assert (= (and b!3928039 res!1589265) b!3928040))

(declare-fun m!4492961 () Bool)

(assert (=> b!3928039 m!4492961))

(declare-fun m!4492963 () Bool)

(assert (=> b!3928039 m!4492963))

(assert (=> b!3928039 m!4492733))

(declare-fun m!4492965 () Bool)

(assert (=> b!3928038 m!4492965))

(declare-fun m!4492967 () Bool)

(assert (=> d!1164427 m!4492967))

(declare-fun m!4492969 () Bool)

(assert (=> d!1164427 m!4492969))

(assert (=> d!1164427 m!4492741))

(assert (=> b!3927501 d!1164427))

(declare-fun b!3928041 () Bool)

(declare-fun e!2429790 () List!41827)

(assert (=> b!3928041 (= e!2429790 suffixTokens!72)))

(declare-fun b!3928043 () Bool)

(declare-fun res!1589267 () Bool)

(declare-fun e!2429789 () Bool)

(assert (=> b!3928043 (=> (not res!1589267) (not e!2429789))))

(declare-fun lt!1371187 () List!41827)

(assert (=> b!3928043 (= res!1589267 (= (size!31292 lt!1371187) (+ (size!31292 lt!1370957) (size!31292 suffixTokens!72))))))

(declare-fun b!3928044 () Bool)

(assert (=> b!3928044 (= e!2429789 (or (not (= suffixTokens!72 Nil!41703)) (= lt!1371187 lt!1370957)))))

(declare-fun b!3928042 () Bool)

(assert (=> b!3928042 (= e!2429790 (Cons!41703 (h!47123 lt!1370957) (++!10774 (t!325154 lt!1370957) suffixTokens!72)))))

(declare-fun d!1164429 () Bool)

(assert (=> d!1164429 e!2429789))

(declare-fun res!1589268 () Bool)

(assert (=> d!1164429 (=> (not res!1589268) (not e!2429789))))

(assert (=> d!1164429 (= res!1589268 (= (content!6280 lt!1371187) ((_ map or) (content!6280 lt!1370957) (content!6280 suffixTokens!72))))))

(assert (=> d!1164429 (= lt!1371187 e!2429790)))

(declare-fun c!682460 () Bool)

(assert (=> d!1164429 (= c!682460 ((_ is Nil!41703) lt!1370957))))

(assert (=> d!1164429 (= (++!10774 lt!1370957 suffixTokens!72) lt!1371187)))

(assert (= (and d!1164429 c!682460) b!3928041))

(assert (= (and d!1164429 (not c!682460)) b!3928042))

(assert (= (and d!1164429 res!1589268) b!3928043))

(assert (= (and b!3928043 res!1589267) b!3928044))

(declare-fun m!4492971 () Bool)

(assert (=> b!3928043 m!4492971))

(declare-fun m!4492973 () Bool)

(assert (=> b!3928043 m!4492973))

(assert (=> b!3928043 m!4492733))

(declare-fun m!4492975 () Bool)

(assert (=> b!3928042 m!4492975))

(declare-fun m!4492977 () Bool)

(assert (=> d!1164429 m!4492977))

(declare-fun m!4492979 () Bool)

(assert (=> d!1164429 m!4492979))

(assert (=> d!1164429 m!4492741))

(assert (=> b!3927482 d!1164429))

(assert (=> b!3927482 d!1164293))

(declare-fun b!3928045 () Bool)

(declare-fun e!2429793 () Bool)

(declare-fun e!2429791 () Bool)

(assert (=> b!3928045 (= e!2429793 e!2429791)))

(declare-fun res!1589269 () Bool)

(assert (=> b!3928045 (=> (not res!1589269) (not e!2429791))))

(assert (=> b!3928045 (= res!1589269 (not ((_ is Nil!41701) lt!1370926)))))

(declare-fun b!3928048 () Bool)

(declare-fun e!2429792 () Bool)

(assert (=> b!3928048 (= e!2429792 (>= (size!31290 lt!1370926) (size!31290 lt!1370948)))))

(declare-fun b!3928047 () Bool)

(assert (=> b!3928047 (= e!2429791 (isPrefix!3603 (tail!6059 lt!1370948) (tail!6059 lt!1370926)))))

(declare-fun d!1164431 () Bool)

(assert (=> d!1164431 e!2429792))

(declare-fun res!1589272 () Bool)

(assert (=> d!1164431 (=> res!1589272 e!2429792)))

(declare-fun lt!1371188 () Bool)

(assert (=> d!1164431 (= res!1589272 (not lt!1371188))))

(assert (=> d!1164431 (= lt!1371188 e!2429793)))

(declare-fun res!1589271 () Bool)

(assert (=> d!1164431 (=> res!1589271 e!2429793)))

(assert (=> d!1164431 (= res!1589271 ((_ is Nil!41701) lt!1370948))))

(assert (=> d!1164431 (= (isPrefix!3603 lt!1370948 lt!1370926) lt!1371188)))

(declare-fun b!3928046 () Bool)

(declare-fun res!1589270 () Bool)

(assert (=> b!3928046 (=> (not res!1589270) (not e!2429791))))

(assert (=> b!3928046 (= res!1589270 (= (head!8333 lt!1370948) (head!8333 lt!1370926)))))

(assert (= (and d!1164431 (not res!1589271)) b!3928045))

(assert (= (and b!3928045 res!1589269) b!3928046))

(assert (= (and b!3928046 res!1589270) b!3928047))

(assert (= (and d!1164431 (not res!1589272)) b!3928048))

(assert (=> b!3928048 m!4492925))

(assert (=> b!3928048 m!4492255))

(declare-fun m!4492981 () Bool)

(assert (=> b!3928047 m!4492981))

(declare-fun m!4492983 () Bool)

(assert (=> b!3928047 m!4492983))

(assert (=> b!3928047 m!4492981))

(assert (=> b!3928047 m!4492983))

(declare-fun m!4492985 () Bool)

(assert (=> b!3928047 m!4492985))

(declare-fun m!4492987 () Bool)

(assert (=> b!3928046 m!4492987))

(declare-fun m!4492989 () Bool)

(assert (=> b!3928046 m!4492989))

(assert (=> b!3927482 d!1164431))

(declare-fun d!1164433 () Bool)

(assert (=> d!1164433 (isPrefix!3603 lt!1370948 (++!10773 lt!1370948 suffix!1176))))

(declare-fun lt!1371189 () Unit!60043)

(assert (=> d!1164433 (= lt!1371189 (choose!23334 lt!1370948 suffix!1176))))

(assert (=> d!1164433 (= (lemmaConcatTwoListThenFirstIsPrefix!2466 lt!1370948 suffix!1176) lt!1371189)))

(declare-fun bs!586079 () Bool)

(assert (= bs!586079 d!1164433))

(assert (=> bs!586079 m!4492081))

(assert (=> bs!586079 m!4492081))

(declare-fun m!4492991 () Bool)

(assert (=> bs!586079 m!4492991))

(declare-fun m!4492993 () Bool)

(assert (=> bs!586079 m!4492993))

(assert (=> b!3927482 d!1164433))

(declare-fun d!1164435 () Bool)

(assert (=> d!1164435 (= (inv!55891 (tag!7368 (rule!9450 (h!47123 prefixTokens!80)))) (= (mod (str.len (value!206111 (tag!7368 (rule!9450 (h!47123 prefixTokens!80))))) 2) 0))))

(assert (=> b!3927483 d!1164435))

(declare-fun d!1164437 () Bool)

(declare-fun res!1589273 () Bool)

(declare-fun e!2429794 () Bool)

(assert (=> d!1164437 (=> (not res!1589273) (not e!2429794))))

(assert (=> d!1164437 (= res!1589273 (semiInverseModEq!2797 (toChars!8819 (transformation!6508 (rule!9450 (h!47123 prefixTokens!80)))) (toValue!8960 (transformation!6508 (rule!9450 (h!47123 prefixTokens!80))))))))

(assert (=> d!1164437 (= (inv!55894 (transformation!6508 (rule!9450 (h!47123 prefixTokens!80)))) e!2429794)))

(declare-fun b!3928049 () Bool)

(assert (=> b!3928049 (= e!2429794 (equivClasses!2696 (toChars!8819 (transformation!6508 (rule!9450 (h!47123 prefixTokens!80)))) (toValue!8960 (transformation!6508 (rule!9450 (h!47123 prefixTokens!80))))))))

(assert (= (and d!1164437 res!1589273) b!3928049))

(declare-fun m!4492995 () Bool)

(assert (=> d!1164437 m!4492995))

(declare-fun m!4492997 () Bool)

(assert (=> b!3928049 m!4492997))

(assert (=> b!3927483 d!1164437))

(declare-fun d!1164439 () Bool)

(assert (=> d!1164439 (= (_2!23621 (v!39253 lt!1370939)) lt!1370926)))

(declare-fun lt!1371190 () Unit!60043)

(assert (=> d!1164439 (= lt!1371190 (choose!23336 lt!1370927 (_2!23621 (v!39253 lt!1370939)) lt!1370927 lt!1370926 lt!1370931))))

(assert (=> d!1164439 (isPrefix!3603 lt!1370927 lt!1370931)))

(assert (=> d!1164439 (= (lemmaSamePrefixThenSameSuffix!1824 lt!1370927 (_2!23621 (v!39253 lt!1370939)) lt!1370927 lt!1370926 lt!1370931) lt!1371190)))

(declare-fun bs!586080 () Bool)

(assert (= bs!586080 d!1164439))

(declare-fun m!4492999 () Bool)

(assert (=> bs!586080 m!4492999))

(assert (=> bs!586080 m!4492361))

(assert (=> b!3927503 d!1164439))

(declare-fun b!3928050 () Bool)

(declare-fun e!2429797 () Bool)

(declare-fun e!2429795 () Bool)

(assert (=> b!3928050 (= e!2429797 e!2429795)))

(declare-fun res!1589274 () Bool)

(assert (=> b!3928050 (=> (not res!1589274) (not e!2429795))))

(assert (=> b!3928050 (= res!1589274 (not ((_ is Nil!41701) lt!1370937)))))

(declare-fun b!3928053 () Bool)

(declare-fun e!2429796 () Bool)

(assert (=> b!3928053 (= e!2429796 (>= (size!31290 lt!1370937) (size!31290 lt!1370927)))))

(declare-fun b!3928052 () Bool)

(assert (=> b!3928052 (= e!2429795 (isPrefix!3603 (tail!6059 lt!1370927) (tail!6059 lt!1370937)))))

(declare-fun d!1164441 () Bool)

(assert (=> d!1164441 e!2429796))

(declare-fun res!1589277 () Bool)

(assert (=> d!1164441 (=> res!1589277 e!2429796)))

(declare-fun lt!1371191 () Bool)

(assert (=> d!1164441 (= res!1589277 (not lt!1371191))))

(assert (=> d!1164441 (= lt!1371191 e!2429797)))

(declare-fun res!1589276 () Bool)

(assert (=> d!1164441 (=> res!1589276 e!2429797)))

(assert (=> d!1164441 (= res!1589276 ((_ is Nil!41701) lt!1370927))))

(assert (=> d!1164441 (= (isPrefix!3603 lt!1370927 lt!1370937) lt!1371191)))

(declare-fun b!3928051 () Bool)

(declare-fun res!1589275 () Bool)

(assert (=> b!3928051 (=> (not res!1589275) (not e!2429795))))

(assert (=> b!3928051 (= res!1589275 (= (head!8333 lt!1370927) (head!8333 lt!1370937)))))

(assert (= (and d!1164441 (not res!1589276)) b!3928050))

(assert (= (and b!3928050 res!1589274) b!3928051))

(assert (= (and b!3928051 res!1589275) b!3928052))

(assert (= (and d!1164441 (not res!1589277)) b!3928053))

(declare-fun m!4493001 () Bool)

(assert (=> b!3928053 m!4493001))

(assert (=> b!3928053 m!4492109))

(assert (=> b!3928052 m!4492539))

(declare-fun m!4493003 () Bool)

(assert (=> b!3928052 m!4493003))

(assert (=> b!3928052 m!4492539))

(assert (=> b!3928052 m!4493003))

(declare-fun m!4493005 () Bool)

(assert (=> b!3928052 m!4493005))

(assert (=> b!3928051 m!4492545))

(declare-fun m!4493007 () Bool)

(assert (=> b!3928051 m!4493007))

(assert (=> b!3927503 d!1164441))

(declare-fun d!1164443 () Bool)

(assert (=> d!1164443 (isPrefix!3603 lt!1370927 (++!10773 lt!1370927 lt!1370926))))

(declare-fun lt!1371192 () Unit!60043)

(assert (=> d!1164443 (= lt!1371192 (choose!23334 lt!1370927 lt!1370926))))

(assert (=> d!1164443 (= (lemmaConcatTwoListThenFirstIsPrefix!2466 lt!1370927 lt!1370926) lt!1371192)))

(declare-fun bs!586081 () Bool)

(assert (= bs!586081 d!1164443))

(assert (=> bs!586081 m!4492079))

(assert (=> bs!586081 m!4492079))

(declare-fun m!4493009 () Bool)

(assert (=> bs!586081 m!4493009))

(declare-fun m!4493011 () Bool)

(assert (=> bs!586081 m!4493011))

(assert (=> b!3927503 d!1164443))

(declare-fun d!1164445 () Bool)

(assert (=> d!1164445 (isPrefix!3603 lt!1370927 prefix!426)))

(declare-fun lt!1371195 () Unit!60043)

(declare-fun choose!23346 (List!41825 List!41825 List!41825) Unit!60043)

(assert (=> d!1164445 (= lt!1371195 (choose!23346 prefix!426 lt!1370927 lt!1370931))))

(assert (=> d!1164445 (isPrefix!3603 prefix!426 lt!1370931)))

(assert (=> d!1164445 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!281 prefix!426 lt!1370927 lt!1370931) lt!1371195)))

(declare-fun bs!586082 () Bool)

(assert (= bs!586082 d!1164445))

(assert (=> bs!586082 m!4492181))

(declare-fun m!4493013 () Bool)

(assert (=> bs!586082 m!4493013))

(assert (=> bs!586082 m!4492149))

(assert (=> b!3927504 d!1164445))

(declare-fun b!3928054 () Bool)

(declare-fun e!2429800 () Bool)

(declare-fun e!2429798 () Bool)

(assert (=> b!3928054 (= e!2429800 e!2429798)))

(declare-fun res!1589278 () Bool)

(assert (=> b!3928054 (=> (not res!1589278) (not e!2429798))))

(assert (=> b!3928054 (= res!1589278 (not ((_ is Nil!41701) prefix!426)))))

(declare-fun b!3928057 () Bool)

(declare-fun e!2429799 () Bool)

(assert (=> b!3928057 (= e!2429799 (>= (size!31290 prefix!426) (size!31290 lt!1370927)))))

(declare-fun b!3928056 () Bool)

(assert (=> b!3928056 (= e!2429798 (isPrefix!3603 (tail!6059 lt!1370927) (tail!6059 prefix!426)))))

(declare-fun d!1164447 () Bool)

(assert (=> d!1164447 e!2429799))

(declare-fun res!1589281 () Bool)

(assert (=> d!1164447 (=> res!1589281 e!2429799)))

(declare-fun lt!1371196 () Bool)

(assert (=> d!1164447 (= res!1589281 (not lt!1371196))))

(assert (=> d!1164447 (= lt!1371196 e!2429800)))

(declare-fun res!1589280 () Bool)

(assert (=> d!1164447 (=> res!1589280 e!2429800)))

(assert (=> d!1164447 (= res!1589280 ((_ is Nil!41701) lt!1370927))))

(assert (=> d!1164447 (= (isPrefix!3603 lt!1370927 prefix!426) lt!1371196)))

(declare-fun b!3928055 () Bool)

(declare-fun res!1589279 () Bool)

(assert (=> b!3928055 (=> (not res!1589279) (not e!2429798))))

(assert (=> b!3928055 (= res!1589279 (= (head!8333 lt!1370927) (head!8333 prefix!426)))))

(assert (= (and d!1164447 (not res!1589280)) b!3928054))

(assert (= (and b!3928054 res!1589278) b!3928055))

(assert (= (and b!3928055 res!1589279) b!3928056))

(assert (= (and d!1164447 (not res!1589281)) b!3928057))

(assert (=> b!3928057 m!4492179))

(assert (=> b!3928057 m!4492109))

(assert (=> b!3928056 m!4492539))

(assert (=> b!3928056 m!4492271))

(assert (=> b!3928056 m!4492539))

(assert (=> b!3928056 m!4492271))

(declare-fun m!4493015 () Bool)

(assert (=> b!3928056 m!4493015))

(assert (=> b!3928055 m!4492545))

(assert (=> b!3928055 m!4492327))

(assert (=> b!3927504 d!1164447))

(assert (=> b!3927504 d!1164211))

(assert (=> b!3927504 d!1164217))

(declare-fun d!1164449 () Bool)

(declare-fun lt!1371197 () Int)

(assert (=> d!1164449 (>= lt!1371197 0)))

(declare-fun e!2429801 () Int)

(assert (=> d!1164449 (= lt!1371197 e!2429801)))

(declare-fun c!682461 () Bool)

(assert (=> d!1164449 (= c!682461 ((_ is Nil!41701) prefix!426))))

(assert (=> d!1164449 (= (size!31290 prefix!426) lt!1371197)))

(declare-fun b!3928058 () Bool)

(assert (=> b!3928058 (= e!2429801 0)))

(declare-fun b!3928059 () Bool)

(assert (=> b!3928059 (= e!2429801 (+ 1 (size!31290 (t!325152 prefix!426))))))

(assert (= (and d!1164449 c!682461) b!3928058))

(assert (= (and d!1164449 (not c!682461)) b!3928059))

(declare-fun m!4493017 () Bool)

(assert (=> b!3928059 m!4493017))

(assert (=> b!3927504 d!1164449))

(declare-fun d!1164451 () Bool)

(assert (=> d!1164451 (= (isEmpty!24854 prefix!426) ((_ is Nil!41701) prefix!426))))

(assert (=> b!3927484 d!1164451))

(declare-fun d!1164453 () Bool)

(declare-fun res!1589284 () Bool)

(declare-fun e!2429804 () Bool)

(assert (=> d!1164453 (=> (not res!1589284) (not e!2429804))))

(declare-fun rulesValid!2531 (LexerInterface!6097 List!41828) Bool)

(assert (=> d!1164453 (= res!1589284 (rulesValid!2531 thiss!20629 rules!2768))))

(assert (=> d!1164453 (= (rulesInvariant!5440 thiss!20629 rules!2768) e!2429804)))

(declare-fun b!3928062 () Bool)

(declare-datatypes ((List!41830 0))(
  ( (Nil!41706) (Cons!41706 (h!47126 String!47408) (t!325253 List!41830)) )
))
(declare-fun noDuplicateTag!2532 (LexerInterface!6097 List!41828 List!41830) Bool)

(assert (=> b!3928062 (= e!2429804 (noDuplicateTag!2532 thiss!20629 rules!2768 Nil!41706))))

(assert (= (and d!1164453 res!1589284) b!3928062))

(declare-fun m!4493019 () Bool)

(assert (=> d!1164453 m!4493019))

(declare-fun m!4493021 () Bool)

(assert (=> b!3928062 m!4493021))

(assert (=> b!3927485 d!1164453))

(declare-fun d!1164455 () Bool)

(assert (=> d!1164455 (and (= lt!1370927 lt!1370927) (= (_2!23621 (v!39253 lt!1370939)) (_2!23621 lt!1370963)))))

(declare-fun lt!1371200 () Unit!60043)

(declare-fun choose!23347 (List!41825 List!41825 List!41825 List!41825) Unit!60043)

(assert (=> d!1164455 (= lt!1371200 (choose!23347 lt!1370927 (_2!23621 (v!39253 lt!1370939)) lt!1370927 (_2!23621 lt!1370963)))))

(assert (=> d!1164455 (= (++!10773 lt!1370927 (_2!23621 (v!39253 lt!1370939))) (++!10773 lt!1370927 (_2!23621 lt!1370963)))))

(assert (=> d!1164455 (= (lemmaConcatSameAndSameSizesThenSameLists!556 lt!1370927 (_2!23621 (v!39253 lt!1370939)) lt!1370927 (_2!23621 lt!1370963)) lt!1371200)))

(declare-fun bs!586083 () Bool)

(assert (= bs!586083 d!1164455))

(declare-fun m!4493023 () Bool)

(assert (=> bs!586083 m!4493023))

(assert (=> bs!586083 m!4492119))

(declare-fun m!4493025 () Bool)

(assert (=> bs!586083 m!4493025))

(assert (=> b!3927505 d!1164455))

(declare-fun d!1164457 () Bool)

(assert (=> d!1164457 (not (= (lexList!1865 thiss!20629 rules!2768 (_2!23621 lt!1370963)) (tuple2!40977 suffixTokens!72 suffixResult!91)))))

(declare-fun lt!1371203 () Unit!60043)

(declare-fun choose!23348 (LexerInterface!6097 List!41828 List!41825 List!41825 List!41827 List!41825) Unit!60043)

(assert (=> d!1164457 (= lt!1371203 (choose!23348 thiss!20629 rules!2768 suffix!1176 (_2!23621 lt!1370963) suffixTokens!72 suffixResult!91))))

(assert (=> d!1164457 (not (isEmpty!24853 rules!2768))))

(assert (=> d!1164457 (= (lemmaLexWithSmallerInputCannotProduceSameResults!108 thiss!20629 rules!2768 suffix!1176 (_2!23621 lt!1370963) suffixTokens!72 suffixResult!91) lt!1371203)))

(declare-fun bs!586084 () Bool)

(assert (= bs!586084 d!1164457))

(assert (=> bs!586084 m!4492097))

(declare-fun m!4493027 () Bool)

(assert (=> bs!586084 m!4493027))

(assert (=> bs!586084 m!4492199))

(assert (=> b!3927505 d!1164457))

(declare-fun d!1164459 () Bool)

(assert (=> d!1164459 (= (isEmpty!24852 lt!1370957) ((_ is Nil!41703) lt!1370957))))

(assert (=> b!3927506 d!1164459))

(declare-fun b!3928076 () Bool)

(declare-fun b_free!107141 () Bool)

(declare-fun b_next!107845 () Bool)

(assert (=> b!3928076 (= b_free!107141 (not b_next!107845))))

(declare-fun t!325229 () Bool)

(declare-fun tb!234677 () Bool)

(assert (=> (and b!3928076 (= (toValue!8960 (transformation!6508 (rule!9450 (h!47123 (t!325154 prefixTokens!80))))) (toValue!8960 (transformation!6508 (rule!9450 (_1!23621 (v!39253 lt!1370939)))))) t!325229) tb!234677))

(declare-fun result!284392 () Bool)

(assert (= result!284392 result!284344))

(assert (=> d!1164319 t!325229))

(declare-fun b_and!299639 () Bool)

(declare-fun tp!1195835 () Bool)

(assert (=> b!3928076 (= tp!1195835 (and (=> t!325229 result!284392) b_and!299639))))

(declare-fun b_free!107143 () Bool)

(declare-fun b_next!107847 () Bool)

(assert (=> b!3928076 (= b_free!107143 (not b_next!107847))))

(declare-fun t!325231 () Bool)

(declare-fun tb!234679 () Bool)

(assert (=> (and b!3928076 (= (toChars!8819 (transformation!6508 (rule!9450 (h!47123 (t!325154 prefixTokens!80))))) (toChars!8819 (transformation!6508 (rule!9450 (h!47123 prefixTokens!80))))) t!325231) tb!234679))

(declare-fun result!284394 () Bool)

(assert (= result!284394 result!284302))

(assert (=> b!3927517 t!325231))

(declare-fun tb!234681 () Bool)

(declare-fun t!325233 () Bool)

(assert (=> (and b!3928076 (= (toChars!8819 (transformation!6508 (rule!9450 (h!47123 (t!325154 prefixTokens!80))))) (toChars!8819 (transformation!6508 (rule!9450 (h!47123 suffixTokens!72))))) t!325233) tb!234681))

(declare-fun result!284396 () Bool)

(assert (= result!284396 result!284310))

(assert (=> b!3927606 t!325233))

(declare-fun t!325235 () Bool)

(declare-fun tb!234683 () Bool)

(assert (=> (and b!3928076 (= (toChars!8819 (transformation!6508 (rule!9450 (h!47123 (t!325154 prefixTokens!80))))) (toChars!8819 (transformation!6508 (rule!9450 (_1!23621 (v!39253 lt!1370939)))))) t!325235) tb!234683))

(declare-fun result!284398 () Bool)

(assert (= result!284398 result!284338))

(assert (=> d!1164307 t!325235))

(declare-fun tp!1195834 () Bool)

(declare-fun b_and!299641 () Bool)

(assert (=> b!3928076 (= tp!1195834 (and (=> t!325231 result!284394) (=> t!325233 result!284396) (=> t!325235 result!284398) b_and!299641))))

(declare-fun tp!1195832 () Bool)

(declare-fun e!2429817 () Bool)

(declare-fun b!3928075 () Bool)

(declare-fun e!2429820 () Bool)

(assert (=> b!3928075 (= e!2429817 (and tp!1195832 (inv!55891 (tag!7368 (rule!9450 (h!47123 (t!325154 prefixTokens!80))))) (inv!55894 (transformation!6508 (rule!9450 (h!47123 (t!325154 prefixTokens!80))))) e!2429820))))

(declare-fun tp!1195833 () Bool)

(declare-fun e!2429821 () Bool)

(declare-fun b!3928074 () Bool)

(assert (=> b!3928074 (= e!2429821 (and (inv!21 (value!206112 (h!47123 (t!325154 prefixTokens!80)))) e!2429817 tp!1195833))))

(declare-fun tp!1195831 () Bool)

(declare-fun b!3928073 () Bool)

(declare-fun e!2429822 () Bool)

(assert (=> b!3928073 (= e!2429822 (and (inv!55895 (h!47123 (t!325154 prefixTokens!80))) e!2429821 tp!1195831))))

(assert (=> b!3928076 (= e!2429820 (and tp!1195835 tp!1195834))))

(assert (=> b!3927507 (= tp!1195736 e!2429822)))

(assert (= b!3928075 b!3928076))

(assert (= b!3928074 b!3928075))

(assert (= b!3928073 b!3928074))

(assert (= (and b!3927507 ((_ is Cons!41703) (t!325154 prefixTokens!80))) b!3928073))

(declare-fun m!4493029 () Bool)

(assert (=> b!3928075 m!4493029))

(declare-fun m!4493031 () Bool)

(assert (=> b!3928075 m!4493031))

(declare-fun m!4493033 () Bool)

(assert (=> b!3928074 m!4493033))

(declare-fun m!4493035 () Bool)

(assert (=> b!3928073 m!4493035))

(declare-fun b!3928081 () Bool)

(declare-fun e!2429825 () Bool)

(declare-fun tp!1195838 () Bool)

(assert (=> b!3928081 (= e!2429825 (and tp_is_empty!19797 tp!1195838))))

(assert (=> b!3927477 (= tp!1195733 e!2429825)))

(assert (= (and b!3927477 ((_ is Cons!41701) (t!325152 prefix!426))) b!3928081))

(declare-fun b!3928082 () Bool)

(declare-fun e!2429826 () Bool)

(declare-fun tp!1195839 () Bool)

(assert (=> b!3928082 (= e!2429826 (and tp_is_empty!19797 tp!1195839))))

(assert (=> b!3927508 (= tp!1195744 e!2429826)))

(assert (= (and b!3927508 ((_ is Cons!41701) (originalCharacters!7108 (h!47123 suffixTokens!72)))) b!3928082))

(declare-fun b!3928095 () Bool)

(declare-fun e!2429829 () Bool)

(declare-fun tp!1195851 () Bool)

(assert (=> b!3928095 (= e!2429829 tp!1195851)))

(assert (=> b!3927497 (= tp!1195740 e!2429829)))

(declare-fun b!3928093 () Bool)

(assert (=> b!3928093 (= e!2429829 tp_is_empty!19797)))

(declare-fun b!3928096 () Bool)

(declare-fun tp!1195852 () Bool)

(declare-fun tp!1195854 () Bool)

(assert (=> b!3928096 (= e!2429829 (and tp!1195852 tp!1195854))))

(declare-fun b!3928094 () Bool)

(declare-fun tp!1195853 () Bool)

(declare-fun tp!1195850 () Bool)

(assert (=> b!3928094 (= e!2429829 (and tp!1195853 tp!1195850))))

(assert (= (and b!3927497 ((_ is ElementMatch!11413) (regex!6508 (rule!9450 (h!47123 suffixTokens!72))))) b!3928093))

(assert (= (and b!3927497 ((_ is Concat!18152) (regex!6508 (rule!9450 (h!47123 suffixTokens!72))))) b!3928094))

(assert (= (and b!3927497 ((_ is Star!11413) (regex!6508 (rule!9450 (h!47123 suffixTokens!72))))) b!3928095))

(assert (= (and b!3927497 ((_ is Union!11413) (regex!6508 (rule!9450 (h!47123 suffixTokens!72))))) b!3928096))

(declare-fun b!3928100 () Bool)

(declare-fun b_free!107145 () Bool)

(declare-fun b_next!107849 () Bool)

(assert (=> b!3928100 (= b_free!107145 (not b_next!107849))))

(declare-fun t!325237 () Bool)

(declare-fun tb!234685 () Bool)

(assert (=> (and b!3928100 (= (toValue!8960 (transformation!6508 (rule!9450 (h!47123 (t!325154 suffixTokens!72))))) (toValue!8960 (transformation!6508 (rule!9450 (_1!23621 (v!39253 lt!1370939)))))) t!325237) tb!234685))

(declare-fun result!284404 () Bool)

(assert (= result!284404 result!284344))

(assert (=> d!1164319 t!325237))

(declare-fun b_and!299643 () Bool)

(declare-fun tp!1195859 () Bool)

(assert (=> b!3928100 (= tp!1195859 (and (=> t!325237 result!284404) b_and!299643))))

(declare-fun b_free!107147 () Bool)

(declare-fun b_next!107851 () Bool)

(assert (=> b!3928100 (= b_free!107147 (not b_next!107851))))

(declare-fun t!325239 () Bool)

(declare-fun tb!234687 () Bool)

(assert (=> (and b!3928100 (= (toChars!8819 (transformation!6508 (rule!9450 (h!47123 (t!325154 suffixTokens!72))))) (toChars!8819 (transformation!6508 (rule!9450 (h!47123 prefixTokens!80))))) t!325239) tb!234687))

(declare-fun result!284406 () Bool)

(assert (= result!284406 result!284302))

(assert (=> b!3927517 t!325239))

(declare-fun t!325241 () Bool)

(declare-fun tb!234689 () Bool)

(assert (=> (and b!3928100 (= (toChars!8819 (transformation!6508 (rule!9450 (h!47123 (t!325154 suffixTokens!72))))) (toChars!8819 (transformation!6508 (rule!9450 (h!47123 suffixTokens!72))))) t!325241) tb!234689))

(declare-fun result!284408 () Bool)

(assert (= result!284408 result!284310))

(assert (=> b!3927606 t!325241))

(declare-fun tb!234691 () Bool)

(declare-fun t!325243 () Bool)

(assert (=> (and b!3928100 (= (toChars!8819 (transformation!6508 (rule!9450 (h!47123 (t!325154 suffixTokens!72))))) (toChars!8819 (transformation!6508 (rule!9450 (_1!23621 (v!39253 lt!1370939)))))) t!325243) tb!234691))

(declare-fun result!284410 () Bool)

(assert (= result!284410 result!284338))

(assert (=> d!1164307 t!325243))

(declare-fun tp!1195858 () Bool)

(declare-fun b_and!299645 () Bool)

(assert (=> b!3928100 (= tp!1195858 (and (=> t!325239 result!284406) (=> t!325241 result!284408) (=> t!325243 result!284410) b_and!299645))))

(declare-fun e!2429833 () Bool)

(declare-fun tp!1195856 () Bool)

(declare-fun e!2429830 () Bool)

(declare-fun b!3928099 () Bool)

(assert (=> b!3928099 (= e!2429830 (and tp!1195856 (inv!55891 (tag!7368 (rule!9450 (h!47123 (t!325154 suffixTokens!72))))) (inv!55894 (transformation!6508 (rule!9450 (h!47123 (t!325154 suffixTokens!72))))) e!2429833))))

(declare-fun e!2429834 () Bool)

(declare-fun tp!1195857 () Bool)

(declare-fun b!3928098 () Bool)

(assert (=> b!3928098 (= e!2429834 (and (inv!21 (value!206112 (h!47123 (t!325154 suffixTokens!72)))) e!2429830 tp!1195857))))

(declare-fun tp!1195855 () Bool)

(declare-fun e!2429835 () Bool)

(declare-fun b!3928097 () Bool)

(assert (=> b!3928097 (= e!2429835 (and (inv!55895 (h!47123 (t!325154 suffixTokens!72))) e!2429834 tp!1195855))))

(assert (=> b!3928100 (= e!2429833 (and tp!1195859 tp!1195858))))

(assert (=> b!3927489 (= tp!1195741 e!2429835)))

(assert (= b!3928099 b!3928100))

(assert (= b!3928098 b!3928099))

(assert (= b!3928097 b!3928098))

(assert (= (and b!3927489 ((_ is Cons!41703) (t!325154 suffixTokens!72))) b!3928097))

(declare-fun m!4493037 () Bool)

(assert (=> b!3928099 m!4493037))

(declare-fun m!4493039 () Bool)

(assert (=> b!3928099 m!4493039))

(declare-fun m!4493041 () Bool)

(assert (=> b!3928098 m!4493041))

(declare-fun m!4493043 () Bool)

(assert (=> b!3928097 m!4493043))

(declare-fun b!3928111 () Bool)

(declare-fun b_free!107149 () Bool)

(declare-fun b_next!107853 () Bool)

(assert (=> b!3928111 (= b_free!107149 (not b_next!107853))))

(declare-fun tb!234693 () Bool)

(declare-fun t!325245 () Bool)

(assert (=> (and b!3928111 (= (toValue!8960 (transformation!6508 (h!47124 (t!325155 rules!2768)))) (toValue!8960 (transformation!6508 (rule!9450 (_1!23621 (v!39253 lt!1370939)))))) t!325245) tb!234693))

(declare-fun result!284414 () Bool)

(assert (= result!284414 result!284344))

(assert (=> d!1164319 t!325245))

(declare-fun tp!1195868 () Bool)

(declare-fun b_and!299647 () Bool)

(assert (=> b!3928111 (= tp!1195868 (and (=> t!325245 result!284414) b_and!299647))))

(declare-fun b_free!107151 () Bool)

(declare-fun b_next!107855 () Bool)

(assert (=> b!3928111 (= b_free!107151 (not b_next!107855))))

(declare-fun t!325247 () Bool)

(declare-fun tb!234695 () Bool)

(assert (=> (and b!3928111 (= (toChars!8819 (transformation!6508 (h!47124 (t!325155 rules!2768)))) (toChars!8819 (transformation!6508 (rule!9450 (h!47123 prefixTokens!80))))) t!325247) tb!234695))

(declare-fun result!284416 () Bool)

(assert (= result!284416 result!284302))

(assert (=> b!3927517 t!325247))

(declare-fun tb!234697 () Bool)

(declare-fun t!325249 () Bool)

(assert (=> (and b!3928111 (= (toChars!8819 (transformation!6508 (h!47124 (t!325155 rules!2768)))) (toChars!8819 (transformation!6508 (rule!9450 (h!47123 suffixTokens!72))))) t!325249) tb!234697))

(declare-fun result!284418 () Bool)

(assert (= result!284418 result!284310))

(assert (=> b!3927606 t!325249))

(declare-fun tb!234699 () Bool)

(declare-fun t!325251 () Bool)

(assert (=> (and b!3928111 (= (toChars!8819 (transformation!6508 (h!47124 (t!325155 rules!2768)))) (toChars!8819 (transformation!6508 (rule!9450 (_1!23621 (v!39253 lt!1370939)))))) t!325251) tb!234699))

(declare-fun result!284420 () Bool)

(assert (= result!284420 result!284338))

(assert (=> d!1164307 t!325251))

(declare-fun tp!1195871 () Bool)

(declare-fun b_and!299649 () Bool)

(assert (=> b!3928111 (= tp!1195871 (and (=> t!325247 result!284416) (=> t!325249 result!284418) (=> t!325251 result!284420) b_and!299649))))

(declare-fun e!2429847 () Bool)

(assert (=> b!3928111 (= e!2429847 (and tp!1195868 tp!1195871))))

(declare-fun tp!1195870 () Bool)

(declare-fun e!2429844 () Bool)

(declare-fun b!3928110 () Bool)

(assert (=> b!3928110 (= e!2429844 (and tp!1195870 (inv!55891 (tag!7368 (h!47124 (t!325155 rules!2768)))) (inv!55894 (transformation!6508 (h!47124 (t!325155 rules!2768)))) e!2429847))))

(declare-fun b!3928109 () Bool)

(declare-fun e!2429845 () Bool)

(declare-fun tp!1195869 () Bool)

(assert (=> b!3928109 (= e!2429845 (and e!2429844 tp!1195869))))

(assert (=> b!3927490 (= tp!1195731 e!2429845)))

(assert (= b!3928110 b!3928111))

(assert (= b!3928109 b!3928110))

(assert (= (and b!3927490 ((_ is Cons!41704) (t!325155 rules!2768))) b!3928109))

(declare-fun m!4493045 () Bool)

(assert (=> b!3928110 m!4493045))

(declare-fun m!4493047 () Bool)

(assert (=> b!3928110 m!4493047))

(declare-fun b!3928112 () Bool)

(declare-fun e!2429848 () Bool)

(declare-fun tp!1195872 () Bool)

(assert (=> b!3928112 (= e!2429848 (and tp_is_empty!19797 tp!1195872))))

(assert (=> b!3927470 (= tp!1195739 e!2429848)))

(assert (= (and b!3927470 ((_ is Cons!41701) (originalCharacters!7108 (h!47123 prefixTokens!80)))) b!3928112))

(declare-fun b!3928113 () Bool)

(declare-fun e!2429849 () Bool)

(declare-fun tp!1195873 () Bool)

(assert (=> b!3928113 (= e!2429849 (and tp_is_empty!19797 tp!1195873))))

(assert (=> b!3927502 (= tp!1195730 e!2429849)))

(assert (= (and b!3927502 ((_ is Cons!41701) (t!325152 suffixResult!91))) b!3928113))

(declare-fun b!3928116 () Bool)

(declare-fun e!2429850 () Bool)

(declare-fun tp!1195875 () Bool)

(assert (=> b!3928116 (= e!2429850 tp!1195875)))

(assert (=> b!3927493 (= tp!1195734 e!2429850)))

(declare-fun b!3928114 () Bool)

(assert (=> b!3928114 (= e!2429850 tp_is_empty!19797)))

(declare-fun b!3928117 () Bool)

(declare-fun tp!1195876 () Bool)

(declare-fun tp!1195878 () Bool)

(assert (=> b!3928117 (= e!2429850 (and tp!1195876 tp!1195878))))

(declare-fun b!3928115 () Bool)

(declare-fun tp!1195877 () Bool)

(declare-fun tp!1195874 () Bool)

(assert (=> b!3928115 (= e!2429850 (and tp!1195877 tp!1195874))))

(assert (= (and b!3927493 ((_ is ElementMatch!11413) (regex!6508 (h!47124 rules!2768)))) b!3928114))

(assert (= (and b!3927493 ((_ is Concat!18152) (regex!6508 (h!47124 rules!2768)))) b!3928115))

(assert (= (and b!3927493 ((_ is Star!11413) (regex!6508 (h!47124 rules!2768)))) b!3928116))

(assert (= (and b!3927493 ((_ is Union!11413) (regex!6508 (h!47124 rules!2768)))) b!3928117))

(declare-fun b!3928120 () Bool)

(declare-fun e!2429851 () Bool)

(declare-fun tp!1195880 () Bool)

(assert (=> b!3928120 (= e!2429851 tp!1195880)))

(assert (=> b!3927483 (= tp!1195738 e!2429851)))

(declare-fun b!3928118 () Bool)

(assert (=> b!3928118 (= e!2429851 tp_is_empty!19797)))

(declare-fun b!3928121 () Bool)

(declare-fun tp!1195881 () Bool)

(declare-fun tp!1195883 () Bool)

(assert (=> b!3928121 (= e!2429851 (and tp!1195881 tp!1195883))))

(declare-fun b!3928119 () Bool)

(declare-fun tp!1195882 () Bool)

(declare-fun tp!1195879 () Bool)

(assert (=> b!3928119 (= e!2429851 (and tp!1195882 tp!1195879))))

(assert (= (and b!3927483 ((_ is ElementMatch!11413) (regex!6508 (rule!9450 (h!47123 prefixTokens!80))))) b!3928118))

(assert (= (and b!3927483 ((_ is Concat!18152) (regex!6508 (rule!9450 (h!47123 prefixTokens!80))))) b!3928119))

(assert (= (and b!3927483 ((_ is Star!11413) (regex!6508 (rule!9450 (h!47123 prefixTokens!80))))) b!3928120))

(assert (= (and b!3927483 ((_ is Union!11413) (regex!6508 (rule!9450 (h!47123 prefixTokens!80))))) b!3928121))

(declare-fun b!3928122 () Bool)

(declare-fun e!2429852 () Bool)

(declare-fun tp!1195884 () Bool)

(assert (=> b!3928122 (= e!2429852 (and tp_is_empty!19797 tp!1195884))))

(assert (=> b!3927474 (= tp!1195745 e!2429852)))

(assert (= (and b!3927474 ((_ is Cons!41701) (t!325152 suffix!1176))) b!3928122))

(declare-fun b_lambda!114939 () Bool)

(assert (= b_lambda!114921 (or (and b!3927510 b_free!107123 (= (toChars!8819 (transformation!6508 (rule!9450 (h!47123 prefixTokens!80)))) (toChars!8819 (transformation!6508 (rule!9450 (h!47123 suffixTokens!72)))))) (and b!3927511 b_free!107119) (and b!3928076 b_free!107143 (= (toChars!8819 (transformation!6508 (rule!9450 (h!47123 (t!325154 prefixTokens!80))))) (toChars!8819 (transformation!6508 (rule!9450 (h!47123 suffixTokens!72)))))) (and b!3927487 b_free!107127 (= (toChars!8819 (transformation!6508 (h!47124 rules!2768))) (toChars!8819 (transformation!6508 (rule!9450 (h!47123 suffixTokens!72)))))) (and b!3928111 b_free!107151 (= (toChars!8819 (transformation!6508 (h!47124 (t!325155 rules!2768)))) (toChars!8819 (transformation!6508 (rule!9450 (h!47123 suffixTokens!72)))))) (and b!3928100 b_free!107147 (= (toChars!8819 (transformation!6508 (rule!9450 (h!47123 (t!325154 suffixTokens!72))))) (toChars!8819 (transformation!6508 (rule!9450 (h!47123 suffixTokens!72)))))) b_lambda!114939)))

(declare-fun b_lambda!114941 () Bool)

(assert (= b_lambda!114919 (or (and b!3928100 b_free!107147 (= (toChars!8819 (transformation!6508 (rule!9450 (h!47123 (t!325154 suffixTokens!72))))) (toChars!8819 (transformation!6508 (rule!9450 (h!47123 prefixTokens!80)))))) (and b!3927511 b_free!107119 (= (toChars!8819 (transformation!6508 (rule!9450 (h!47123 suffixTokens!72)))) (toChars!8819 (transformation!6508 (rule!9450 (h!47123 prefixTokens!80)))))) (and b!3927487 b_free!107127 (= (toChars!8819 (transformation!6508 (h!47124 rules!2768))) (toChars!8819 (transformation!6508 (rule!9450 (h!47123 prefixTokens!80)))))) (and b!3928076 b_free!107143 (= (toChars!8819 (transformation!6508 (rule!9450 (h!47123 (t!325154 prefixTokens!80))))) (toChars!8819 (transformation!6508 (rule!9450 (h!47123 prefixTokens!80)))))) (and b!3928111 b_free!107151 (= (toChars!8819 (transformation!6508 (h!47124 (t!325155 rules!2768)))) (toChars!8819 (transformation!6508 (rule!9450 (h!47123 prefixTokens!80)))))) (and b!3927510 b_free!107123) b_lambda!114941)))

(check-sat (not b!3927857) (not b!3927847) (not b!3927761) (not b!3928097) (not b!3927518) (not b!3928043) (not d!1164457) (not d!1164433) (not b!3927608) (not b!3928109) (not d!1164407) (not b!3928032) (not b_next!107853) (not b!3928121) (not b!3928115) (not d!1164309) (not d!1164307) (not tb!234641) (not b!3927729) (not d!1164373) b_and!299639 (not b!3928119) (not d!1164203) (not b_next!107847) b_and!299645 (not d!1164311) (not b_next!107823) (not b!3927734) (not b!3927947) (not b!3928113) (not d!1164249) (not b!3927517) (not b!3927948) (not b!3927536) (not b!3927878) (not d!1164371) (not d!1164343) (not b!3928051) (not b!3927732) (not b!3927859) (not d!1164437) (not b!3928062) (not b!3928015) (not b!3927951) (not b!3928116) (not b_next!107855) (not d!1164229) b_and!299615 (not b!3928096) (not b_lambda!114929) (not b!3927954) (not d!1164453) (not b!3927740) (not d!1164425) (not d!1164301) b_and!299613 (not b!3927753) (not d!1164439) (not b!3928042) (not b!3927534) (not d!1164383) (not b!3927575) (not b!3927754) (not b!3928038) (not d!1164299) (not d!1164375) (not b_next!107851) (not b!3928039) b_and!299611 (not d!1164239) (not b_lambda!114931) (not b!3928099) (not b!3927817) (not b!3928049) (not b!3927600) (not b!3927736) (not d!1164415) (not d!1164317) (not b!3928122) (not d!1164333) (not b!3928055) (not b!3928030) (not b!3928075) (not b!3927631) (not tb!234611) (not b_next!107821) tp_is_empty!19797 (not b!3928034) (not b!3928082) (not b!3927950) (not b!3927863) (not b!3928053) (not b!3927874) (not b!3928110) (not b!3927852) (not d!1164345) (not b!3928056) (not b!3928046) (not b!3927949) (not b_lambda!114941) (not b_next!107831) (not d!1164297) b_and!299641 (not b_next!107827) b_and!299643 (not d!1164323) (not b!3927853) (not b!3927803) (not tb!234605) (not b!3928047) (not b!3928035) (not b!3927800) (not d!1164187) (not b!3928094) (not d!1164413) (not b!3927755) b_and!299619 (not d!1164429) (not b_lambda!114939) (not tb!234635) (not b_next!107845) (not b!3927855) (not b!3927629) (not d!1164181) (not b!3927749) (not b!3928098) (not b!3927850) (not b!3928112) (not b!3927607) (not d!1164211) (not b_next!107825) (not d!1164339) b_and!299617 (not b!3928023) (not b!3927854) (not b!3927538) (not d!1164443) (not b!3927873) (not b!3927851) (not b!3928095) (not b!3927750) (not b!3927944) (not b!3928120) (not b!3927778) (not b!3927738) b_and!299647 (not d!1164427) (not b!3928013) (not b!3927762) (not d!1164445) (not b!3928074) (not b!3927952) (not b!3927862) (not d!1164289) (not b!3928052) (not b!3927733) (not b!3927630) (not d!1164377) (not b!3928073) (not b!3927741) (not d!1164305) (not b_next!107829) (not b!3927576) (not d!1164315) (not d!1164195) (not b!3927606) (not b!3928016) (not b!3928048) b_and!299609 (not d!1164417) (not b!3928081) (not b!3927848) (not b!3927858) (not b!3927877) (not b!3927523) (not b!3928022) (not d!1164423) (not b_next!107849) (not bm!284741) (not b!3928059) (not b!3927745) (not b!3927945) b_and!299649 (not b!3928057) (not b!3927746) (not b!3927752) (not d!1164455) (not b!3927804) (not b!3928117) (not b!3927785))
(check-sat (not b_next!107853) b_and!299639 (not b_next!107823) (not b_next!107821) b_and!299643 b_and!299619 (not b_next!107845) (not b_next!107825) b_and!299617 b_and!299647 (not b_next!107829) b_and!299609 (not b_next!107847) b_and!299645 (not b_next!107855) b_and!299615 b_and!299613 (not b_next!107851) b_and!299611 (not b_next!107831) b_and!299641 (not b_next!107827) b_and!299649 (not b_next!107849))
