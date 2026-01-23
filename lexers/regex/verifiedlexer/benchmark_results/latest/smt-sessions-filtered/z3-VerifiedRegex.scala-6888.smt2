; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!362760 () Bool)

(assert start!362760)

(declare-fun b!3867094 () Bool)

(declare-fun b_free!104269 () Bool)

(declare-fun b_next!104973 () Bool)

(assert (=> b!3867094 (= b_free!104269 (not b_next!104973))))

(declare-fun tp!1172526 () Bool)

(declare-fun b_and!289731 () Bool)

(assert (=> b!3867094 (= tp!1172526 b_and!289731)))

(declare-fun b_free!104271 () Bool)

(declare-fun b_next!104975 () Bool)

(assert (=> b!3867094 (= b_free!104271 (not b_next!104975))))

(declare-fun tp!1172529 () Bool)

(declare-fun b_and!289733 () Bool)

(assert (=> b!3867094 (= tp!1172529 b_and!289733)))

(declare-fun b!3867087 () Bool)

(declare-fun b_free!104273 () Bool)

(declare-fun b_next!104977 () Bool)

(assert (=> b!3867087 (= b_free!104273 (not b_next!104977))))

(declare-fun tp!1172528 () Bool)

(declare-fun b_and!289735 () Bool)

(assert (=> b!3867087 (= tp!1172528 b_and!289735)))

(declare-fun b_free!104275 () Bool)

(declare-fun b_next!104979 () Bool)

(assert (=> b!3867087 (= b_free!104275 (not b_next!104979))))

(declare-fun tp!1172517 () Bool)

(declare-fun b_and!289737 () Bool)

(assert (=> b!3867087 (= tp!1172517 b_and!289737)))

(declare-fun b!3867075 () Bool)

(declare-fun b_free!104277 () Bool)

(declare-fun b_next!104981 () Bool)

(assert (=> b!3867075 (= b_free!104277 (not b_next!104981))))

(declare-fun tp!1172523 () Bool)

(declare-fun b_and!289739 () Bool)

(assert (=> b!3867075 (= tp!1172523 b_and!289739)))

(declare-fun b_free!104279 () Bool)

(declare-fun b_next!104983 () Bool)

(assert (=> b!3867075 (= b_free!104279 (not b_next!104983))))

(declare-fun tp!1172522 () Bool)

(declare-fun b_and!289741 () Bool)

(assert (=> b!3867075 (= tp!1172522 b_and!289741)))

(declare-fun b!3867072 () Bool)

(declare-fun res!1566129 () Bool)

(declare-fun e!2391464 () Bool)

(assert (=> b!3867072 (=> (not res!1566129) (not e!2391464))))

(declare-datatypes ((List!41182 0))(
  ( (Nil!41058) (Cons!41058 (h!46478 (_ BitVec 16)) (t!314057 List!41182)) )
))
(declare-datatypes ((TokenValue!6594 0))(
  ( (FloatLiteralValue!13188 (text!46603 List!41182)) (TokenValueExt!6593 (__x!25405 Int)) (Broken!32970 (value!201982 List!41182)) (Object!6717) (End!6594) (Def!6594) (Underscore!6594) (Match!6594) (Else!6594) (Error!6594) (Case!6594) (If!6594) (Extends!6594) (Abstract!6594) (Class!6594) (Val!6594) (DelimiterValue!13188 (del!6654 List!41182)) (KeywordValue!6600 (value!201983 List!41182)) (CommentValue!13188 (value!201984 List!41182)) (WhitespaceValue!13188 (value!201985 List!41182)) (IndentationValue!6594 (value!201986 List!41182)) (String!46687) (Int32!6594) (Broken!32971 (value!201987 List!41182)) (Boolean!6595) (Unit!58800) (OperatorValue!6597 (op!6654 List!41182)) (IdentifierValue!13188 (value!201988 List!41182)) (IdentifierValue!13189 (value!201989 List!41182)) (WhitespaceValue!13189 (value!201990 List!41182)) (True!13188) (False!13188) (Broken!32972 (value!201991 List!41182)) (Broken!32973 (value!201992 List!41182)) (True!13189) (RightBrace!6594) (RightBracket!6594) (Colon!6594) (Null!6594) (Comma!6594) (LeftBracket!6594) (False!13189) (LeftBrace!6594) (ImaginaryLiteralValue!6594 (text!46604 List!41182)) (StringLiteralValue!19782 (value!201993 List!41182)) (EOFValue!6594 (value!201994 List!41182)) (IdentValue!6594 (value!201995 List!41182)) (DelimiterValue!13189 (value!201996 List!41182)) (DedentValue!6594 (value!201997 List!41182)) (NewLineValue!6594 (value!201998 List!41182)) (IntegerValue!19782 (value!201999 (_ BitVec 32)) (text!46605 List!41182)) (IntegerValue!19783 (value!202000 Int) (text!46606 List!41182)) (Times!6594) (Or!6594) (Equal!6594) (Minus!6594) (Broken!32974 (value!202001 List!41182)) (And!6594) (Div!6594) (LessEqual!6594) (Mod!6594) (Concat!17863) (Not!6594) (Plus!6594) (SpaceValue!6594 (value!202002 List!41182)) (IntegerValue!19784 (value!202003 Int) (text!46607 List!41182)) (StringLiteralValue!19783 (text!46608 List!41182)) (FloatLiteralValue!13189 (text!46609 List!41182)) (BytesLiteralValue!6594 (value!202004 List!41182)) (CommentValue!13189 (value!202005 List!41182)) (StringLiteralValue!19784 (value!202006 List!41182)) (ErrorTokenValue!6594 (msg!6655 List!41182)) )
))
(declare-datatypes ((C!22724 0))(
  ( (C!22725 (val!13456 Int)) )
))
(declare-datatypes ((Regex!11269 0))(
  ( (ElementMatch!11269 (c!673034 C!22724)) (Concat!17864 (regOne!23050 Regex!11269) (regTwo!23050 Regex!11269)) (EmptyExpr!11269) (Star!11269 (reg!11598 Regex!11269)) (EmptyLang!11269) (Union!11269 (regOne!23051 Regex!11269) (regTwo!23051 Regex!11269)) )
))
(declare-datatypes ((String!46688 0))(
  ( (String!46689 (value!202007 String)) )
))
(declare-datatypes ((List!41183 0))(
  ( (Nil!41059) (Cons!41059 (h!46479 C!22724) (t!314058 List!41183)) )
))
(declare-datatypes ((IArray!25155 0))(
  ( (IArray!25156 (innerList!12635 List!41183)) )
))
(declare-datatypes ((Conc!12575 0))(
  ( (Node!12575 (left!31575 Conc!12575) (right!31905 Conc!12575) (csize!25380 Int) (cheight!12786 Int)) (Leaf!19464 (xs!15881 IArray!25155) (csize!25381 Int)) (Empty!12575) )
))
(declare-datatypes ((BalanceConc!24744 0))(
  ( (BalanceConc!24745 (c!673035 Conc!12575)) )
))
(declare-datatypes ((TokenValueInjection!12616 0))(
  ( (TokenValueInjection!12617 (toValue!8792 Int) (toChars!8651 Int)) )
))
(declare-datatypes ((Rule!12528 0))(
  ( (Rule!12529 (regex!6364 Regex!11269) (tag!7224 String!46688) (isSeparator!6364 Bool) (transformation!6364 TokenValueInjection!12616)) )
))
(declare-datatypes ((Token!11866 0))(
  ( (Token!11867 (value!202008 TokenValue!6594) (rule!9244 Rule!12528) (size!30865 Int) (originalCharacters!6964 List!41183)) )
))
(declare-datatypes ((List!41184 0))(
  ( (Nil!41060) (Cons!41060 (h!46480 Token!11866) (t!314059 List!41184)) )
))
(declare-fun prefixTokens!80 () List!41184)

(declare-fun isEmpty!24346 (List!41184) Bool)

(assert (=> b!3867072 (= res!1566129 (not (isEmpty!24346 prefixTokens!80)))))

(declare-fun b!3867073 () Bool)

(declare-fun e!2391452 () Bool)

(assert (=> b!3867073 (= e!2391452 true)))

(declare-fun lt!1344967 () Bool)

(declare-fun lt!1344952 () List!41183)

(declare-fun lt!1344946 () List!41183)

(declare-fun isPrefix!3463 (List!41183 List!41183) Bool)

(assert (=> b!3867073 (= lt!1344967 (isPrefix!3463 lt!1344952 lt!1344946))))

(declare-fun lt!1344938 () List!41183)

(assert (=> b!3867073 (isPrefix!3463 lt!1344952 lt!1344938)))

(declare-datatypes ((Unit!58801 0))(
  ( (Unit!58802) )
))
(declare-fun lt!1344959 () Unit!58801)

(declare-fun lt!1344945 () List!41183)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2326 (List!41183 List!41183) Unit!58801)

(assert (=> b!3867073 (= lt!1344959 (lemmaConcatTwoListThenFirstIsPrefix!2326 lt!1344952 lt!1344945))))

(declare-fun b!3867074 () Bool)

(declare-fun e!2391476 () Unit!58801)

(declare-fun Unit!58803 () Unit!58801)

(assert (=> b!3867074 (= e!2391476 Unit!58803)))

(declare-fun e!2391475 () Bool)

(assert (=> b!3867075 (= e!2391475 (and tp!1172523 tp!1172522))))

(declare-fun b!3867076 () Bool)

(declare-fun e!2391478 () Bool)

(assert (=> b!3867076 (= e!2391478 e!2391452)))

(declare-fun res!1566128 () Bool)

(assert (=> b!3867076 (=> res!1566128 e!2391452)))

(declare-fun lt!1344972 () List!41183)

(declare-fun lt!1344939 () List!41183)

(assert (=> b!3867076 (= res!1566128 (or (not (= lt!1344946 lt!1344972)) (not (= lt!1344946 lt!1344938)) (not (= lt!1344939 lt!1344938))))))

(assert (=> b!3867076 (= lt!1344972 lt!1344938)))

(declare-fun ++!10485 (List!41183 List!41183) List!41183)

(assert (=> b!3867076 (= lt!1344938 (++!10485 lt!1344952 lt!1344945))))

(declare-fun lt!1344941 () List!41183)

(declare-fun suffix!1176 () List!41183)

(assert (=> b!3867076 (= lt!1344945 (++!10485 lt!1344941 suffix!1176))))

(declare-fun lt!1344960 () Unit!58801)

(declare-fun lemmaConcatAssociativity!2210 (List!41183 List!41183 List!41183) Unit!58801)

(assert (=> b!3867076 (= lt!1344960 (lemmaConcatAssociativity!2210 lt!1344952 lt!1344941 suffix!1176))))

(declare-fun b!3867077 () Bool)

(declare-fun e!2391484 () Unit!58801)

(declare-fun Unit!58804 () Unit!58801)

(assert (=> b!3867077 (= e!2391484 Unit!58804)))

(declare-fun suffixResult!91 () List!41183)

(declare-datatypes ((LexerInterface!5953 0))(
  ( (LexerInterfaceExt!5950 (__x!25406 Int)) (Lexer!5951) )
))
(declare-fun thiss!20629 () LexerInterface!5953)

(declare-datatypes ((tuple2!40274 0))(
  ( (tuple2!40275 (_1!23271 Token!11866) (_2!23271 List!41183)) )
))
(declare-fun lt!1344965 () tuple2!40274)

(declare-datatypes ((List!41185 0))(
  ( (Nil!41061) (Cons!41061 (h!46481 Rule!12528) (t!314060 List!41185)) )
))
(declare-fun rules!2768 () List!41185)

(declare-fun suffixTokens!72 () List!41184)

(declare-fun lt!1344934 () List!41184)

(declare-fun lt!1344943 () Unit!58801)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!24 (LexerInterface!5953 List!41185 List!41183 List!41183 List!41184 List!41183 List!41184) Unit!58801)

(assert (=> b!3867077 (= lt!1344943 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!24 thiss!20629 rules!2768 suffix!1176 (_2!23271 lt!1344965) suffixTokens!72 suffixResult!91 lt!1344934))))

(declare-datatypes ((tuple2!40276 0))(
  ( (tuple2!40277 (_1!23272 List!41184) (_2!23272 List!41183)) )
))
(declare-fun call!282666 () tuple2!40276)

(declare-fun res!1566118 () Bool)

(declare-fun ++!10486 (List!41184 List!41184) List!41184)

(assert (=> b!3867077 (= res!1566118 (not (= call!282666 (tuple2!40277 (++!10486 lt!1344934 suffixTokens!72) suffixResult!91))))))

(declare-fun e!2391473 () Bool)

(assert (=> b!3867077 (=> (not res!1566118) (not e!2391473))))

(assert (=> b!3867077 e!2391473))

(declare-fun b!3867078 () Bool)

(declare-fun res!1566125 () Bool)

(assert (=> b!3867078 (=> (not res!1566125) (not e!2391464))))

(declare-fun rulesInvariant!5296 (LexerInterface!5953 List!41185) Bool)

(assert (=> b!3867078 (= res!1566125 (rulesInvariant!5296 thiss!20629 rules!2768))))

(declare-fun b!3867079 () Bool)

(declare-fun res!1566130 () Bool)

(declare-fun e!2391474 () Bool)

(assert (=> b!3867079 (=> res!1566130 e!2391474)))

(declare-fun lt!1344957 () tuple2!40276)

(declare-fun lt!1344949 () tuple2!40276)

(declare-datatypes ((Option!8782 0))(
  ( (None!8781) (Some!8781 (v!39079 tuple2!40274)) )
))
(declare-fun lt!1344973 () Option!8782)

(assert (=> b!3867079 (= res!1566130 (not (= lt!1344949 (tuple2!40277 (++!10486 (Cons!41060 (_1!23271 (v!39079 lt!1344973)) Nil!41060) (_1!23272 lt!1344957)) (_2!23272 lt!1344957)))))))

(declare-fun e!2391471 () Bool)

(declare-fun b!3867080 () Bool)

(declare-fun tp!1172521 () Bool)

(declare-fun e!2391459 () Bool)

(declare-fun inv!21 (TokenValue!6594) Bool)

(assert (=> b!3867080 (= e!2391471 (and (inv!21 (value!202008 (h!46480 suffixTokens!72))) e!2391459 tp!1172521))))

(declare-fun b!3867081 () Bool)

(declare-fun e!2391454 () Unit!58801)

(declare-fun Unit!58805 () Unit!58801)

(assert (=> b!3867081 (= e!2391454 Unit!58805)))

(declare-fun b!3867082 () Bool)

(declare-fun res!1566132 () Bool)

(assert (=> b!3867082 (=> (not res!1566132) (not e!2391464))))

(declare-fun prefix!426 () List!41183)

(declare-fun isEmpty!24347 (List!41183) Bool)

(assert (=> b!3867082 (= res!1566132 (not (isEmpty!24347 prefix!426)))))

(declare-fun res!1566120 () Bool)

(assert (=> start!362760 (=> (not res!1566120) (not e!2391464))))

(get-info :version)

(assert (=> start!362760 (= res!1566120 ((_ is Lexer!5951) thiss!20629))))

(assert (=> start!362760 e!2391464))

(declare-fun e!2391451 () Bool)

(assert (=> start!362760 e!2391451))

(assert (=> start!362760 true))

(declare-fun e!2391462 () Bool)

(assert (=> start!362760 e!2391462))

(declare-fun e!2391483 () Bool)

(assert (=> start!362760 e!2391483))

(declare-fun e!2391460 () Bool)

(assert (=> start!362760 e!2391460))

(declare-fun e!2391477 () Bool)

(assert (=> start!362760 e!2391477))

(declare-fun e!2391480 () Bool)

(assert (=> start!362760 e!2391480))

(declare-fun b!3867071 () Bool)

(declare-fun e!2391463 () Bool)

(declare-fun tp!1172525 () Bool)

(assert (=> b!3867071 (= e!2391483 (and e!2391463 tp!1172525))))

(declare-fun tp!1172530 () Bool)

(declare-fun b!3867083 () Bool)

(declare-fun e!2391466 () Bool)

(declare-fun inv!55215 (String!46688) Bool)

(declare-fun inv!55218 (TokenValueInjection!12616) Bool)

(assert (=> b!3867083 (= e!2391459 (and tp!1172530 (inv!55215 (tag!7224 (rule!9244 (h!46480 suffixTokens!72)))) (inv!55218 (transformation!6364 (rule!9244 (h!46480 suffixTokens!72)))) e!2391466))))

(declare-fun b!3867084 () Bool)

(declare-fun e!2391456 () Bool)

(declare-fun e!2391482 () Bool)

(assert (=> b!3867084 (= e!2391456 e!2391482)))

(declare-fun res!1566134 () Bool)

(assert (=> b!3867084 (=> res!1566134 e!2391482)))

(declare-fun lt!1344935 () List!41183)

(assert (=> b!3867084 (= res!1566134 (not (= lt!1344935 prefix!426)))))

(assert (=> b!3867084 (= lt!1344935 (++!10485 lt!1344952 lt!1344941))))

(declare-fun getSuffix!1918 (List!41183 List!41183) List!41183)

(assert (=> b!3867084 (= lt!1344941 (getSuffix!1918 prefix!426 lt!1344952))))

(declare-fun b!3867085 () Bool)

(declare-fun Unit!58806 () Unit!58801)

(assert (=> b!3867085 (= e!2391484 Unit!58806)))

(declare-fun lt!1344944 () Unit!58801)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!448 (List!41183 List!41183 List!41183 List!41183) Unit!58801)

(assert (=> b!3867085 (= lt!1344944 (lemmaConcatSameAndSameSizesThenSameLists!448 lt!1344952 (_2!23271 (v!39079 lt!1344973)) lt!1344952 (_2!23271 lt!1344965)))))

(assert (=> b!3867085 (= (_2!23271 (v!39079 lt!1344973)) (_2!23271 lt!1344965))))

(declare-fun lt!1344954 () Unit!58801)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!24 (LexerInterface!5953 List!41185 List!41183 List!41183 List!41184 List!41183) Unit!58801)

(assert (=> b!3867085 (= lt!1344954 (lemmaLexWithSmallerInputCannotProduceSameResults!24 thiss!20629 rules!2768 suffix!1176 (_2!23271 lt!1344965) suffixTokens!72 suffixResult!91))))

(declare-fun res!1566135 () Bool)

(declare-fun lt!1344936 () tuple2!40276)

(assert (=> b!3867085 (= res!1566135 (not (= call!282666 lt!1344936)))))

(declare-fun e!2391461 () Bool)

(assert (=> b!3867085 (=> (not res!1566135) (not e!2391461))))

(assert (=> b!3867085 e!2391461))

(declare-fun b!3867086 () Bool)

(declare-fun Unit!58807 () Unit!58801)

(assert (=> b!3867086 (= e!2391454 Unit!58807)))

(declare-fun lt!1344969 () Int)

(declare-fun size!30866 (List!41183) Int)

(assert (=> b!3867086 (= lt!1344969 (size!30866 lt!1344946))))

(declare-fun lt!1344961 () Unit!58801)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1237 (LexerInterface!5953 List!41185 List!41183 List!41183 List!41183 Rule!12528) Unit!58801)

(assert (=> b!3867086 (= lt!1344961 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1237 thiss!20629 rules!2768 lt!1344952 lt!1344946 (_2!23271 (v!39079 lt!1344973)) (rule!9244 (_1!23271 (v!39079 lt!1344973)))))))

(declare-fun lt!1344948 () TokenValue!6594)

(declare-fun lt!1344951 () Int)

(declare-fun maxPrefixOneRule!2339 (LexerInterface!5953 Rule!12528 List!41183) Option!8782)

(assert (=> b!3867086 (= (maxPrefixOneRule!2339 thiss!20629 (rule!9244 (_1!23271 (v!39079 lt!1344973))) lt!1344946) (Some!8781 (tuple2!40275 (Token!11867 lt!1344948 (rule!9244 (_1!23271 (v!39079 lt!1344973))) lt!1344951 lt!1344952) (_2!23271 (v!39079 lt!1344973)))))))

(declare-fun get!13586 (Option!8782) tuple2!40274)

(assert (=> b!3867086 (= lt!1344965 (get!13586 lt!1344973))))

(declare-fun c!673033 () Bool)

(declare-fun lt!1344958 () Int)

(assert (=> b!3867086 (= c!673033 (< (size!30866 (_2!23271 lt!1344965)) lt!1344958))))

(declare-fun lt!1344953 () Unit!58801)

(declare-fun e!2391467 () Unit!58801)

(assert (=> b!3867086 (= lt!1344953 e!2391467)))

(assert (=> b!3867086 false))

(declare-fun e!2391486 () Bool)

(assert (=> b!3867087 (= e!2391486 (and tp!1172528 tp!1172517))))

(declare-fun b!3867088 () Bool)

(declare-fun tp!1172518 () Bool)

(assert (=> b!3867088 (= e!2391463 (and tp!1172518 (inv!55215 (tag!7224 (h!46481 rules!2768))) (inv!55218 (transformation!6364 (h!46481 rules!2768))) e!2391475))))

(declare-fun b!3867089 () Bool)

(declare-fun tp_is_empty!19509 () Bool)

(declare-fun tp!1172516 () Bool)

(assert (=> b!3867089 (= e!2391480 (and tp_is_empty!19509 tp!1172516))))

(declare-fun b!3867090 () Bool)

(declare-fun e!2391453 () Bool)

(assert (=> b!3867090 (= e!2391474 e!2391453)))

(declare-fun res!1566123 () Bool)

(assert (=> b!3867090 (=> res!1566123 e!2391453)))

(declare-fun lt!1344942 () Int)

(assert (=> b!3867090 (= res!1566123 (<= lt!1344942 lt!1344958))))

(declare-fun lt!1344940 () Unit!58801)

(assert (=> b!3867090 (= lt!1344940 e!2391476)))

(declare-fun c!673031 () Bool)

(assert (=> b!3867090 (= c!673031 (= lt!1344942 lt!1344958))))

(declare-fun lt!1344950 () Unit!58801)

(assert (=> b!3867090 (= lt!1344950 e!2391454)))

(declare-fun c!673032 () Bool)

(assert (=> b!3867090 (= c!673032 (< lt!1344942 lt!1344958))))

(assert (=> b!3867090 (= lt!1344958 (size!30866 suffix!1176))))

(assert (=> b!3867090 (= lt!1344942 (size!30866 (_2!23271 (v!39079 lt!1344973))))))

(declare-fun bm!282661 () Bool)

(declare-fun lexList!1721 (LexerInterface!5953 List!41185 List!41183) tuple2!40276)

(assert (=> bm!282661 (= call!282666 (lexList!1721 thiss!20629 rules!2768 (_2!23271 lt!1344965)))))

(declare-fun b!3867091 () Bool)

(declare-fun Unit!58808 () Unit!58801)

(assert (=> b!3867091 (= e!2391476 Unit!58808)))

(declare-fun lt!1344968 () Unit!58801)

(assert (=> b!3867091 (= lt!1344968 (lemmaConcatTwoListThenFirstIsPrefix!2326 prefix!426 suffix!1176))))

(assert (=> b!3867091 (isPrefix!3463 prefix!426 lt!1344946)))

(declare-fun lt!1344956 () Unit!58801)

(declare-fun lemmaIsPrefixSameLengthThenSameList!715 (List!41183 List!41183 List!41183) Unit!58801)

(assert (=> b!3867091 (= lt!1344956 (lemmaIsPrefixSameLengthThenSameList!715 lt!1344952 prefix!426 lt!1344946))))

(assert (=> b!3867091 (= lt!1344952 prefix!426)))

(declare-fun lt!1344964 () Unit!58801)

(declare-fun lemmaSamePrefixThenSameSuffix!1684 (List!41183 List!41183 List!41183 List!41183 List!41183) Unit!58801)

(assert (=> b!3867091 (= lt!1344964 (lemmaSamePrefixThenSameSuffix!1684 lt!1344952 (_2!23271 (v!39079 lt!1344973)) prefix!426 suffix!1176 lt!1344946))))

(assert (=> b!3867091 false))

(declare-fun b!3867092 () Bool)

(declare-fun res!1566116 () Bool)

(assert (=> b!3867092 (=> res!1566116 e!2391453)))

(declare-fun head!8174 (List!41184) Token!11866)

(assert (=> b!3867092 (= res!1566116 (not (= (head!8174 prefixTokens!80) (_1!23271 (v!39079 lt!1344973)))))))

(declare-fun b!3867093 () Bool)

(declare-fun tp!1172532 () Bool)

(declare-fun inv!55219 (Token!11866) Bool)

(assert (=> b!3867093 (= e!2391477 (and (inv!55219 (h!46480 suffixTokens!72)) e!2391471 tp!1172532))))

(assert (=> b!3867094 (= e!2391466 (and tp!1172526 tp!1172529))))

(declare-fun b!3867095 () Bool)

(declare-fun e!2391481 () Bool)

(declare-fun e!2391485 () Bool)

(assert (=> b!3867095 (= e!2391481 e!2391485)))

(declare-fun res!1566121 () Bool)

(assert (=> b!3867095 (=> (not res!1566121) (not e!2391485))))

(assert (=> b!3867095 (= res!1566121 ((_ is Some!8781) lt!1344973))))

(declare-fun maxPrefix!3257 (LexerInterface!5953 List!41185 List!41183) Option!8782)

(assert (=> b!3867095 (= lt!1344973 (maxPrefix!3257 thiss!20629 rules!2768 lt!1344946))))

(declare-fun b!3867096 () Bool)

(declare-fun tp!1172524 () Bool)

(assert (=> b!3867096 (= e!2391462 (and tp_is_empty!19509 tp!1172524))))

(declare-fun e!2391455 () Bool)

(declare-fun b!3867097 () Bool)

(declare-fun tp!1172531 () Bool)

(assert (=> b!3867097 (= e!2391460 (and (inv!55219 (h!46480 prefixTokens!80)) e!2391455 tp!1172531))))

(declare-fun b!3867098 () Bool)

(declare-fun tp!1172527 () Bool)

(declare-fun e!2391457 () Bool)

(assert (=> b!3867098 (= e!2391455 (and (inv!21 (value!202008 (h!46480 prefixTokens!80))) e!2391457 tp!1172527))))

(declare-fun b!3867099 () Bool)

(declare-fun res!1566131 () Bool)

(assert (=> b!3867099 (=> (not res!1566131) (not e!2391464))))

(declare-fun isEmpty!24348 (List!41185) Bool)

(assert (=> b!3867099 (= res!1566131 (not (isEmpty!24348 rules!2768)))))

(declare-fun b!3867100 () Bool)

(assert (=> b!3867100 (= e!2391485 (not e!2391474))))

(declare-fun res!1566119 () Bool)

(assert (=> b!3867100 (=> res!1566119 e!2391474)))

(assert (=> b!3867100 (= res!1566119 (not (= lt!1344939 lt!1344946)))))

(assert (=> b!3867100 (= lt!1344957 (lexList!1721 thiss!20629 rules!2768 (_2!23271 (v!39079 lt!1344973))))))

(declare-fun lt!1344962 () List!41183)

(assert (=> b!3867100 (and (= (size!30865 (_1!23271 (v!39079 lt!1344973))) lt!1344951) (= (originalCharacters!6964 (_1!23271 (v!39079 lt!1344973))) lt!1344952) (= (v!39079 lt!1344973) (tuple2!40275 (Token!11867 lt!1344948 (rule!9244 (_1!23271 (v!39079 lt!1344973))) lt!1344951 lt!1344952) lt!1344962)))))

(assert (=> b!3867100 (= lt!1344951 (size!30866 lt!1344952))))

(declare-fun e!2391479 () Bool)

(assert (=> b!3867100 e!2391479))

(declare-fun res!1566124 () Bool)

(assert (=> b!3867100 (=> (not res!1566124) (not e!2391479))))

(assert (=> b!3867100 (= res!1566124 (= (value!202008 (_1!23271 (v!39079 lt!1344973))) lt!1344948))))

(declare-fun apply!9607 (TokenValueInjection!12616 BalanceConc!24744) TokenValue!6594)

(declare-fun seqFromList!4635 (List!41183) BalanceConc!24744)

(assert (=> b!3867100 (= lt!1344948 (apply!9607 (transformation!6364 (rule!9244 (_1!23271 (v!39079 lt!1344973)))) (seqFromList!4635 lt!1344952)))))

(assert (=> b!3867100 (= (_2!23271 (v!39079 lt!1344973)) lt!1344962)))

(declare-fun lt!1344966 () Unit!58801)

(assert (=> b!3867100 (= lt!1344966 (lemmaSamePrefixThenSameSuffix!1684 lt!1344952 (_2!23271 (v!39079 lt!1344973)) lt!1344952 lt!1344962 lt!1344946))))

(assert (=> b!3867100 (= lt!1344962 (getSuffix!1918 lt!1344946 lt!1344952))))

(assert (=> b!3867100 (isPrefix!3463 lt!1344952 lt!1344939)))

(assert (=> b!3867100 (= lt!1344939 (++!10485 lt!1344952 (_2!23271 (v!39079 lt!1344973))))))

(declare-fun lt!1344963 () Unit!58801)

(assert (=> b!3867100 (= lt!1344963 (lemmaConcatTwoListThenFirstIsPrefix!2326 lt!1344952 (_2!23271 (v!39079 lt!1344973))))))

(declare-fun list!15276 (BalanceConc!24744) List!41183)

(declare-fun charsOf!4192 (Token!11866) BalanceConc!24744)

(assert (=> b!3867100 (= lt!1344952 (list!15276 (charsOf!4192 (_1!23271 (v!39079 lt!1344973)))))))

(declare-fun ruleValid!2316 (LexerInterface!5953 Rule!12528) Bool)

(assert (=> b!3867100 (ruleValid!2316 thiss!20629 (rule!9244 (_1!23271 (v!39079 lt!1344973))))))

(declare-fun lt!1344970 () Unit!58801)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1396 (LexerInterface!5953 Rule!12528 List!41185) Unit!58801)

(assert (=> b!3867100 (= lt!1344970 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1396 thiss!20629 (rule!9244 (_1!23271 (v!39079 lt!1344973))) rules!2768))))

(declare-fun lt!1344937 () Unit!58801)

(declare-fun lemmaCharactersSize!1025 (Token!11866) Unit!58801)

(assert (=> b!3867100 (= lt!1344937 (lemmaCharactersSize!1025 (_1!23271 (v!39079 lt!1344973))))))

(declare-fun b!3867101 () Bool)

(declare-fun e!2391458 () Bool)

(assert (=> b!3867101 (= e!2391464 e!2391458)))

(declare-fun res!1566127 () Bool)

(assert (=> b!3867101 (=> (not res!1566127) (not e!2391458))))

(declare-fun lt!1344947 () List!41184)

(assert (=> b!3867101 (= res!1566127 (= lt!1344949 (tuple2!40277 lt!1344947 suffixResult!91)))))

(assert (=> b!3867101 (= lt!1344949 (lexList!1721 thiss!20629 rules!2768 lt!1344946))))

(assert (=> b!3867101 (= lt!1344947 (++!10486 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3867101 (= lt!1344946 (++!10485 prefix!426 suffix!1176))))

(declare-fun b!3867102 () Bool)

(declare-fun c!673030 () Bool)

(assert (=> b!3867102 (= c!673030 (isEmpty!24346 lt!1344934))))

(declare-fun tail!5891 (List!41184) List!41184)

(assert (=> b!3867102 (= lt!1344934 (tail!5891 prefixTokens!80))))

(assert (=> b!3867102 (= e!2391467 e!2391484)))

(declare-fun b!3867103 () Bool)

(assert (=> b!3867103 (= e!2391458 e!2391481)))

(declare-fun res!1566122 () Bool)

(assert (=> b!3867103 (=> (not res!1566122) (not e!2391481))))

(assert (=> b!3867103 (= res!1566122 (= (lexList!1721 thiss!20629 rules!2768 suffix!1176) lt!1344936))))

(assert (=> b!3867103 (= lt!1344936 (tuple2!40277 suffixTokens!72 suffixResult!91))))

(declare-fun b!3867104 () Bool)

(declare-fun tp!1172519 () Bool)

(assert (=> b!3867104 (= e!2391451 (and tp_is_empty!19509 tp!1172519))))

(declare-fun b!3867105 () Bool)

(assert (=> b!3867105 (= e!2391461 false)))

(declare-fun b!3867106 () Bool)

(declare-fun Unit!58809 () Unit!58801)

(assert (=> b!3867106 (= e!2391467 Unit!58809)))

(declare-fun b!3867107 () Bool)

(assert (=> b!3867107 (= e!2391473 false)))

(declare-fun b!3867108 () Bool)

(declare-fun res!1566117 () Bool)

(assert (=> b!3867108 (=> res!1566117 e!2391474)))

(assert (=> b!3867108 (= res!1566117 (or (not (= lt!1344957 (tuple2!40277 (_1!23272 lt!1344957) (_2!23272 lt!1344957)))) (= (_2!23271 (v!39079 lt!1344973)) suffix!1176)))))

(declare-fun b!3867109 () Bool)

(assert (=> b!3867109 (= e!2391479 (= (size!30865 (_1!23271 (v!39079 lt!1344973))) (size!30866 (originalCharacters!6964 (_1!23271 (v!39079 lt!1344973))))))))

(declare-fun b!3867110 () Bool)

(assert (=> b!3867110 (= e!2391453 e!2391456)))

(declare-fun res!1566133 () Bool)

(assert (=> b!3867110 (=> res!1566133 e!2391456)))

(assert (=> b!3867110 (= res!1566133 (>= lt!1344951 (size!30866 prefix!426)))))

(assert (=> b!3867110 (isPrefix!3463 lt!1344952 prefix!426)))

(declare-fun lt!1344971 () Unit!58801)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!213 (List!41183 List!41183 List!41183) Unit!58801)

(assert (=> b!3867110 (= lt!1344971 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!213 prefix!426 lt!1344952 lt!1344946))))

(assert (=> b!3867110 (isPrefix!3463 prefix!426 lt!1344946)))

(declare-fun lt!1344955 () Unit!58801)

(assert (=> b!3867110 (= lt!1344955 (lemmaConcatTwoListThenFirstIsPrefix!2326 prefix!426 suffix!1176))))

(declare-fun b!3867111 () Bool)

(assert (=> b!3867111 (= e!2391482 e!2391478)))

(declare-fun res!1566126 () Bool)

(assert (=> b!3867111 (=> res!1566126 e!2391478)))

(assert (=> b!3867111 (= res!1566126 (or (not (= lt!1344972 lt!1344946)) (not (= lt!1344972 lt!1344939))))))

(assert (=> b!3867111 (= lt!1344972 (++!10485 lt!1344935 suffix!1176))))

(declare-fun tp!1172520 () Bool)

(declare-fun b!3867112 () Bool)

(assert (=> b!3867112 (= e!2391457 (and tp!1172520 (inv!55215 (tag!7224 (rule!9244 (h!46480 prefixTokens!80)))) (inv!55218 (transformation!6364 (rule!9244 (h!46480 prefixTokens!80)))) e!2391486))))

(assert (= (and start!362760 res!1566120) b!3867099))

(assert (= (and b!3867099 res!1566131) b!3867078))

(assert (= (and b!3867078 res!1566125) b!3867072))

(assert (= (and b!3867072 res!1566129) b!3867082))

(assert (= (and b!3867082 res!1566132) b!3867101))

(assert (= (and b!3867101 res!1566127) b!3867103))

(assert (= (and b!3867103 res!1566122) b!3867095))

(assert (= (and b!3867095 res!1566121) b!3867100))

(assert (= (and b!3867100 res!1566124) b!3867109))

(assert (= (and b!3867100 (not res!1566119)) b!3867079))

(assert (= (and b!3867079 (not res!1566130)) b!3867108))

(assert (= (and b!3867108 (not res!1566117)) b!3867090))

(assert (= (and b!3867090 c!673032) b!3867086))

(assert (= (and b!3867090 (not c!673032)) b!3867081))

(assert (= (and b!3867086 c!673033) b!3867102))

(assert (= (and b!3867086 (not c!673033)) b!3867106))

(assert (= (and b!3867102 c!673030) b!3867085))

(assert (= (and b!3867102 (not c!673030)) b!3867077))

(assert (= (and b!3867085 res!1566135) b!3867105))

(assert (= (and b!3867077 res!1566118) b!3867107))

(assert (= (or b!3867085 b!3867077) bm!282661))

(assert (= (and b!3867090 c!673031) b!3867091))

(assert (= (and b!3867090 (not c!673031)) b!3867074))

(assert (= (and b!3867090 (not res!1566123)) b!3867092))

(assert (= (and b!3867092 (not res!1566116)) b!3867110))

(assert (= (and b!3867110 (not res!1566133)) b!3867084))

(assert (= (and b!3867084 (not res!1566134)) b!3867111))

(assert (= (and b!3867111 (not res!1566126)) b!3867076))

(assert (= (and b!3867076 (not res!1566128)) b!3867073))

(assert (= (and start!362760 ((_ is Cons!41059) suffixResult!91)) b!3867104))

(assert (= (and start!362760 ((_ is Cons!41059) suffix!1176)) b!3867096))

(assert (= b!3867088 b!3867075))

(assert (= b!3867071 b!3867088))

(assert (= (and start!362760 ((_ is Cons!41061) rules!2768)) b!3867071))

(assert (= b!3867112 b!3867087))

(assert (= b!3867098 b!3867112))

(assert (= b!3867097 b!3867098))

(assert (= (and start!362760 ((_ is Cons!41060) prefixTokens!80)) b!3867097))

(assert (= b!3867083 b!3867094))

(assert (= b!3867080 b!3867083))

(assert (= b!3867093 b!3867080))

(assert (= (and start!362760 ((_ is Cons!41060) suffixTokens!72)) b!3867093))

(assert (= (and start!362760 ((_ is Cons!41059) prefix!426)) b!3867089))

(declare-fun m!4422641 () Bool)

(assert (=> b!3867101 m!4422641))

(declare-fun m!4422643 () Bool)

(assert (=> b!3867101 m!4422643))

(declare-fun m!4422645 () Bool)

(assert (=> b!3867101 m!4422645))

(declare-fun m!4422647 () Bool)

(assert (=> b!3867109 m!4422647))

(declare-fun m!4422649 () Bool)

(assert (=> b!3867110 m!4422649))

(declare-fun m!4422651 () Bool)

(assert (=> b!3867110 m!4422651))

(declare-fun m!4422653 () Bool)

(assert (=> b!3867110 m!4422653))

(declare-fun m!4422655 () Bool)

(assert (=> b!3867110 m!4422655))

(declare-fun m!4422657 () Bool)

(assert (=> b!3867110 m!4422657))

(declare-fun m!4422659 () Bool)

(assert (=> b!3867090 m!4422659))

(declare-fun m!4422661 () Bool)

(assert (=> b!3867090 m!4422661))

(declare-fun m!4422663 () Bool)

(assert (=> b!3867085 m!4422663))

(declare-fun m!4422665 () Bool)

(assert (=> b!3867085 m!4422665))

(declare-fun m!4422667 () Bool)

(assert (=> b!3867097 m!4422667))

(declare-fun m!4422669 () Bool)

(assert (=> b!3867100 m!4422669))

(declare-fun m!4422671 () Bool)

(assert (=> b!3867100 m!4422671))

(declare-fun m!4422673 () Bool)

(assert (=> b!3867100 m!4422673))

(declare-fun m!4422675 () Bool)

(assert (=> b!3867100 m!4422675))

(declare-fun m!4422677 () Bool)

(assert (=> b!3867100 m!4422677))

(declare-fun m!4422679 () Bool)

(assert (=> b!3867100 m!4422679))

(declare-fun m!4422681 () Bool)

(assert (=> b!3867100 m!4422681))

(declare-fun m!4422683 () Bool)

(assert (=> b!3867100 m!4422683))

(declare-fun m!4422685 () Bool)

(assert (=> b!3867100 m!4422685))

(assert (=> b!3867100 m!4422675))

(declare-fun m!4422687 () Bool)

(assert (=> b!3867100 m!4422687))

(declare-fun m!4422689 () Bool)

(assert (=> b!3867100 m!4422689))

(declare-fun m!4422691 () Bool)

(assert (=> b!3867100 m!4422691))

(assert (=> b!3867100 m!4422679))

(declare-fun m!4422693 () Bool)

(assert (=> b!3867100 m!4422693))

(declare-fun m!4422695 () Bool)

(assert (=> b!3867100 m!4422695))

(declare-fun m!4422697 () Bool)

(assert (=> b!3867080 m!4422697))

(declare-fun m!4422699 () Bool)

(assert (=> b!3867082 m!4422699))

(declare-fun m!4422701 () Bool)

(assert (=> b!3867103 m!4422701))

(declare-fun m!4422703 () Bool)

(assert (=> b!3867112 m!4422703))

(declare-fun m!4422705 () Bool)

(assert (=> b!3867112 m!4422705))

(declare-fun m!4422707 () Bool)

(assert (=> b!3867072 m!4422707))

(declare-fun m!4422709 () Bool)

(assert (=> b!3867073 m!4422709))

(declare-fun m!4422711 () Bool)

(assert (=> b!3867073 m!4422711))

(declare-fun m!4422713 () Bool)

(assert (=> b!3867073 m!4422713))

(declare-fun m!4422715 () Bool)

(assert (=> b!3867092 m!4422715))

(declare-fun m!4422717 () Bool)

(assert (=> b!3867086 m!4422717))

(declare-fun m!4422719 () Bool)

(assert (=> b!3867086 m!4422719))

(declare-fun m!4422721 () Bool)

(assert (=> b!3867086 m!4422721))

(declare-fun m!4422723 () Bool)

(assert (=> b!3867086 m!4422723))

(declare-fun m!4422725 () Bool)

(assert (=> b!3867086 m!4422725))

(declare-fun m!4422727 () Bool)

(assert (=> b!3867102 m!4422727))

(declare-fun m!4422729 () Bool)

(assert (=> b!3867102 m!4422729))

(declare-fun m!4422731 () Bool)

(assert (=> b!3867098 m!4422731))

(declare-fun m!4422733 () Bool)

(assert (=> b!3867079 m!4422733))

(declare-fun m!4422735 () Bool)

(assert (=> b!3867076 m!4422735))

(declare-fun m!4422737 () Bool)

(assert (=> b!3867076 m!4422737))

(declare-fun m!4422739 () Bool)

(assert (=> b!3867076 m!4422739))

(declare-fun m!4422741 () Bool)

(assert (=> b!3867099 m!4422741))

(declare-fun m!4422743 () Bool)

(assert (=> b!3867077 m!4422743))

(declare-fun m!4422745 () Bool)

(assert (=> b!3867077 m!4422745))

(declare-fun m!4422747 () Bool)

(assert (=> b!3867083 m!4422747))

(declare-fun m!4422749 () Bool)

(assert (=> b!3867083 m!4422749))

(assert (=> b!3867091 m!4422651))

(assert (=> b!3867091 m!4422657))

(declare-fun m!4422751 () Bool)

(assert (=> b!3867091 m!4422751))

(declare-fun m!4422753 () Bool)

(assert (=> b!3867091 m!4422753))

(declare-fun m!4422755 () Bool)

(assert (=> b!3867093 m!4422755))

(declare-fun m!4422757 () Bool)

(assert (=> b!3867088 m!4422757))

(declare-fun m!4422759 () Bool)

(assert (=> b!3867088 m!4422759))

(declare-fun m!4422761 () Bool)

(assert (=> b!3867078 m!4422761))

(declare-fun m!4422763 () Bool)

(assert (=> b!3867111 m!4422763))

(declare-fun m!4422765 () Bool)

(assert (=> b!3867095 m!4422765))

(declare-fun m!4422767 () Bool)

(assert (=> b!3867084 m!4422767))

(declare-fun m!4422769 () Bool)

(assert (=> b!3867084 m!4422769))

(declare-fun m!4422771 () Bool)

(assert (=> bm!282661 m!4422771))

(check-sat (not b!3867109) b_and!289739 (not b_next!104973) (not b!3867088) (not b!3867083) (not b_next!104977) (not b!3867096) (not b!3867077) (not b_next!104975) (not b!3867089) (not b!3867111) (not b!3867080) (not b!3867078) (not b!3867091) (not b!3867100) (not b_next!104979) (not b!3867079) (not b!3867092) (not b!3867095) (not b!3867082) (not b!3867102) (not b!3867076) (not b!3867090) (not b!3867099) (not bm!282661) b_and!289741 (not b!3867104) (not b!3867072) (not b_next!104983) (not b!3867112) (not b!3867098) b_and!289733 b_and!289737 tp_is_empty!19509 b_and!289735 (not b!3867086) (not b_next!104981) (not b!3867071) b_and!289731 (not b!3867110) (not b!3867085) (not b!3867073) (not b!3867093) (not b!3867103) (not b!3867097) (not b!3867084) (not b!3867101))
(check-sat b_and!289739 (not b_next!104979) (not b_next!104973) b_and!289741 (not b_next!104977) (not b_next!104975) (not b_next!104983) b_and!289733 b_and!289737 b_and!289731 b_and!289735 (not b_next!104981))
