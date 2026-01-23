; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!368532 () Bool)

(assert start!368532)

(declare-fun b!3928963 () Bool)

(declare-fun b_free!107213 () Bool)

(declare-fun b_next!107917 () Bool)

(assert (=> b!3928963 (= b_free!107213 (not b_next!107917))))

(declare-fun tp!1196175 () Bool)

(declare-fun b_and!299711 () Bool)

(assert (=> b!3928963 (= tp!1196175 b_and!299711)))

(declare-fun b_free!107215 () Bool)

(declare-fun b_next!107919 () Bool)

(assert (=> b!3928963 (= b_free!107215 (not b_next!107919))))

(declare-fun tp!1196189 () Bool)

(declare-fun b_and!299713 () Bool)

(assert (=> b!3928963 (= tp!1196189 b_and!299713)))

(declare-fun b!3928965 () Bool)

(declare-fun b_free!107217 () Bool)

(declare-fun b_next!107921 () Bool)

(assert (=> b!3928965 (= b_free!107217 (not b_next!107921))))

(declare-fun tp!1196177 () Bool)

(declare-fun b_and!299715 () Bool)

(assert (=> b!3928965 (= tp!1196177 b_and!299715)))

(declare-fun b_free!107219 () Bool)

(declare-fun b_next!107923 () Bool)

(assert (=> b!3928965 (= b_free!107219 (not b_next!107923))))

(declare-fun tp!1196183 () Bool)

(declare-fun b_and!299717 () Bool)

(assert (=> b!3928965 (= tp!1196183 b_and!299717)))

(declare-fun b!3928921 () Bool)

(declare-fun b_free!107221 () Bool)

(declare-fun b_next!107925 () Bool)

(assert (=> b!3928921 (= b_free!107221 (not b_next!107925))))

(declare-fun tp!1196187 () Bool)

(declare-fun b_and!299719 () Bool)

(assert (=> b!3928921 (= tp!1196187 b_and!299719)))

(declare-fun b_free!107223 () Bool)

(declare-fun b_next!107927 () Bool)

(assert (=> b!3928921 (= b_free!107223 (not b_next!107927))))

(declare-fun tp!1196181 () Bool)

(declare-fun b_and!299721 () Bool)

(assert (=> b!3928921 (= tp!1196181 b_and!299721)))

(declare-fun e!2430583 () Bool)

(assert (=> b!3928921 (= e!2430583 (and tp!1196187 tp!1196181))))

(declare-fun res!1589698 () Bool)

(declare-fun e!2430571 () Bool)

(assert (=> start!368532 (=> (not res!1589698) (not e!2430571))))

(declare-datatypes ((LexerInterface!6103 0))(
  ( (LexerInterfaceExt!6100 (__x!25705 Int)) (Lexer!6101) )
))
(declare-fun thiss!20629 () LexerInterface!6103)

(get-info :version)

(assert (=> start!368532 (= res!1589698 ((_ is Lexer!6101) thiss!20629))))

(assert (=> start!368532 e!2430571))

(declare-fun e!2430559 () Bool)

(assert (=> start!368532 e!2430559))

(assert (=> start!368532 true))

(declare-fun e!2430560 () Bool)

(assert (=> start!368532 e!2430560))

(declare-fun e!2430558 () Bool)

(assert (=> start!368532 e!2430558))

(declare-fun e!2430581 () Bool)

(assert (=> start!368532 e!2430581))

(declare-fun e!2430566 () Bool)

(assert (=> start!368532 e!2430566))

(declare-fun e!2430575 () Bool)

(assert (=> start!368532 e!2430575))

(declare-fun b!3928922 () Bool)

(declare-datatypes ((Unit!60115 0))(
  ( (Unit!60116) )
))
(declare-fun e!2430546 () Unit!60115)

(declare-fun Unit!60117 () Unit!60115)

(assert (=> b!3928922 (= e!2430546 Unit!60117)))

(declare-datatypes ((C!23024 0))(
  ( (C!23025 (val!13606 Int)) )
))
(declare-datatypes ((List!41851 0))(
  ( (Nil!41727) (Cons!41727 (h!47147 C!23024) (t!325274 List!41851)) )
))
(declare-datatypes ((IArray!25455 0))(
  ( (IArray!25456 (innerList!12785 List!41851)) )
))
(declare-datatypes ((Conc!12725 0))(
  ( (Node!12725 (left!31832 Conc!12725) (right!32162 Conc!12725) (csize!25680 Int) (cheight!12936 Int)) (Leaf!19689 (xs!16031 IArray!25455) (csize!25681 Int)) (Empty!12725) )
))
(declare-datatypes ((BalanceConc!25044 0))(
  ( (BalanceConc!25045 (c!682568 Conc!12725)) )
))
(declare-datatypes ((List!41852 0))(
  ( (Nil!41728) (Cons!41728 (h!47148 (_ BitVec 16)) (t!325275 List!41852)) )
))
(declare-datatypes ((TokenValue!6744 0))(
  ( (FloatLiteralValue!13488 (text!47653 List!41852)) (TokenValueExt!6743 (__x!25706 Int)) (Broken!33720 (value!206257 List!41852)) (Object!6867) (End!6744) (Def!6744) (Underscore!6744) (Match!6744) (Else!6744) (Error!6744) (Case!6744) (If!6744) (Extends!6744) (Abstract!6744) (Class!6744) (Val!6744) (DelimiterValue!13488 (del!6804 List!41852)) (KeywordValue!6750 (value!206258 List!41852)) (CommentValue!13488 (value!206259 List!41852)) (WhitespaceValue!13488 (value!206260 List!41852)) (IndentationValue!6744 (value!206261 List!41852)) (String!47437) (Int32!6744) (Broken!33721 (value!206262 List!41852)) (Boolean!6745) (Unit!60118) (OperatorValue!6747 (op!6804 List!41852)) (IdentifierValue!13488 (value!206263 List!41852)) (IdentifierValue!13489 (value!206264 List!41852)) (WhitespaceValue!13489 (value!206265 List!41852)) (True!13488) (False!13488) (Broken!33722 (value!206266 List!41852)) (Broken!33723 (value!206267 List!41852)) (True!13489) (RightBrace!6744) (RightBracket!6744) (Colon!6744) (Null!6744) (Comma!6744) (LeftBracket!6744) (False!13489) (LeftBrace!6744) (ImaginaryLiteralValue!6744 (text!47654 List!41852)) (StringLiteralValue!20232 (value!206268 List!41852)) (EOFValue!6744 (value!206269 List!41852)) (IdentValue!6744 (value!206270 List!41852)) (DelimiterValue!13489 (value!206271 List!41852)) (DedentValue!6744 (value!206272 List!41852)) (NewLineValue!6744 (value!206273 List!41852)) (IntegerValue!20232 (value!206274 (_ BitVec 32)) (text!47655 List!41852)) (IntegerValue!20233 (value!206275 Int) (text!47656 List!41852)) (Times!6744) (Or!6744) (Equal!6744) (Minus!6744) (Broken!33724 (value!206276 List!41852)) (And!6744) (Div!6744) (LessEqual!6744) (Mod!6744) (Concat!18163) (Not!6744) (Plus!6744) (SpaceValue!6744 (value!206277 List!41852)) (IntegerValue!20234 (value!206278 Int) (text!47657 List!41852)) (StringLiteralValue!20233 (text!47658 List!41852)) (FloatLiteralValue!13489 (text!47659 List!41852)) (BytesLiteralValue!6744 (value!206279 List!41852)) (CommentValue!13489 (value!206280 List!41852)) (StringLiteralValue!20234 (value!206281 List!41852)) (ErrorTokenValue!6744 (msg!6805 List!41852)) )
))
(declare-datatypes ((Regex!11419 0))(
  ( (ElementMatch!11419 (c!682569 C!23024)) (Concat!18164 (regOne!23350 Regex!11419) (regTwo!23350 Regex!11419)) (EmptyExpr!11419) (Star!11419 (reg!11748 Regex!11419)) (EmptyLang!11419) (Union!11419 (regOne!23351 Regex!11419) (regTwo!23351 Regex!11419)) )
))
(declare-datatypes ((String!47438 0))(
  ( (String!47439 (value!206282 String)) )
))
(declare-datatypes ((TokenValueInjection!12916 0))(
  ( (TokenValueInjection!12917 (toValue!8966 Int) (toChars!8825 Int)) )
))
(declare-datatypes ((Rule!12828 0))(
  ( (Rule!12829 (regex!6514 Regex!11419) (tag!7374 String!47438) (isSeparator!6514 Bool) (transformation!6514 TokenValueInjection!12916)) )
))
(declare-datatypes ((Token!12166 0))(
  ( (Token!12167 (value!206283 TokenValue!6744) (rule!9458 Rule!12828) (size!31305 Int) (originalCharacters!7114 List!41851)) )
))
(declare-datatypes ((List!41853 0))(
  ( (Nil!41729) (Cons!41729 (h!47149 Token!12166) (t!325276 List!41853)) )
))
(declare-fun lt!1372073 () List!41853)

(declare-fun suffixResult!91 () List!41851)

(declare-fun suffix!1176 () List!41851)

(declare-datatypes ((List!41854 0))(
  ( (Nil!41730) (Cons!41730 (h!47150 Rule!12828) (t!325277 List!41854)) )
))
(declare-fun rules!2768 () List!41854)

(declare-datatypes ((tuple2!41002 0))(
  ( (tuple2!41003 (_1!23635 Token!12166) (_2!23635 List!41851)) )
))
(declare-fun lt!1372050 () tuple2!41002)

(declare-fun lt!1372074 () Unit!60115)

(declare-fun suffixTokens!72 () List!41853)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!114 (LexerInterface!6103 List!41854 List!41851 List!41851 List!41853 List!41851 List!41853) Unit!60115)

(assert (=> b!3928922 (= lt!1372074 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!114 thiss!20629 rules!2768 suffix!1176 (_2!23635 lt!1372050) suffixTokens!72 suffixResult!91 lt!1372073))))

(declare-fun res!1589685 () Bool)

(declare-datatypes ((tuple2!41004 0))(
  ( (tuple2!41005 (_1!23636 List!41853) (_2!23636 List!41851)) )
))
(declare-fun call!284764 () tuple2!41004)

(declare-fun ++!10785 (List!41853 List!41853) List!41853)

(assert (=> b!3928922 (= res!1589685 (not (= call!284764 (tuple2!41005 (++!10785 lt!1372073 suffixTokens!72) suffixResult!91))))))

(declare-fun e!2430563 () Bool)

(assert (=> b!3928922 (=> (not res!1589685) (not e!2430563))))

(assert (=> b!3928922 e!2430563))

(declare-fun b!3928923 () Bool)

(declare-fun e!2430562 () Bool)

(declare-fun e!2430551 () Bool)

(assert (=> b!3928923 (= e!2430562 e!2430551)))

(declare-fun res!1589678 () Bool)

(assert (=> b!3928923 (=> res!1589678 e!2430551)))

(declare-fun lt!1372045 () List!41851)

(declare-fun lt!1372082 () List!41851)

(declare-fun lt!1372058 () List!41851)

(declare-fun lt!1372039 () List!41851)

(assert (=> b!3928923 (= res!1589678 (or (not (= lt!1372039 lt!1372058)) (not (= lt!1372039 lt!1372082)) (not (= lt!1372045 lt!1372082))))))

(assert (=> b!3928923 (= lt!1372058 lt!1372082)))

(declare-fun lt!1372041 () List!41851)

(declare-fun lt!1372047 () List!41851)

(declare-fun ++!10786 (List!41851 List!41851) List!41851)

(assert (=> b!3928923 (= lt!1372082 (++!10786 lt!1372041 lt!1372047))))

(declare-fun lt!1372063 () List!41851)

(assert (=> b!3928923 (= lt!1372047 (++!10786 lt!1372063 suffix!1176))))

(declare-fun lt!1372049 () Unit!60115)

(declare-fun lemmaConcatAssociativity!2315 (List!41851 List!41851 List!41851) Unit!60115)

(assert (=> b!3928923 (= lt!1372049 (lemmaConcatAssociativity!2315 lt!1372041 lt!1372063 suffix!1176))))

(declare-fun b!3928924 () Bool)

(declare-fun res!1589692 () Bool)

(assert (=> b!3928924 (=> (not res!1589692) (not e!2430571))))

(declare-fun prefix!426 () List!41851)

(declare-fun isEmpty!24872 (List!41851) Bool)

(assert (=> b!3928924 (= res!1589692 (not (isEmpty!24872 prefix!426)))))

(declare-fun b!3928925 () Bool)

(declare-fun e!2430578 () Bool)

(assert (=> b!3928925 (= e!2430578 e!2430562)))

(declare-fun res!1589682 () Bool)

(assert (=> b!3928925 (=> res!1589682 e!2430562)))

(assert (=> b!3928925 (= res!1589682 (or (not (= lt!1372058 lt!1372039)) (not (= lt!1372058 lt!1372045))))))

(declare-fun lt!1372057 () List!41851)

(assert (=> b!3928925 (= lt!1372058 (++!10786 lt!1372057 suffix!1176))))

(declare-fun b!3928926 () Bool)

(declare-fun e!2430545 () Bool)

(declare-fun e!2430574 () Bool)

(assert (=> b!3928926 (= e!2430545 e!2430574)))

(declare-fun res!1589697 () Bool)

(assert (=> b!3928926 (=> res!1589697 e!2430574)))

(declare-fun lt!1372048 () tuple2!41004)

(declare-fun lt!1372042 () List!41853)

(declare-fun lt!1372075 () tuple2!41004)

(assert (=> b!3928926 (= res!1589697 (not (= lt!1372048 (tuple2!41005 (++!10785 lt!1372042 (_1!23636 lt!1372075)) (_2!23636 lt!1372075)))))))

(declare-datatypes ((Option!8934 0))(
  ( (None!8933) (Some!8933 (v!39259 tuple2!41002)) )
))
(declare-fun lt!1372060 () Option!8934)

(assert (=> b!3928926 (= lt!1372042 (Cons!41729 (_1!23635 (v!39259 lt!1372060)) Nil!41729))))

(declare-fun b!3928927 () Bool)

(declare-fun e!2430547 () Bool)

(assert (=> b!3928927 (= e!2430574 e!2430547)))

(declare-fun res!1589675 () Bool)

(assert (=> b!3928927 (=> res!1589675 e!2430547)))

(declare-fun lt!1372079 () Int)

(declare-fun lt!1372038 () Int)

(assert (=> b!3928927 (= res!1589675 (<= lt!1372079 lt!1372038))))

(declare-fun lt!1372084 () Unit!60115)

(declare-fun e!2430582 () Unit!60115)

(assert (=> b!3928927 (= lt!1372084 e!2430582)))

(declare-fun c!682566 () Bool)

(assert (=> b!3928927 (= c!682566 (= lt!1372079 lt!1372038))))

(declare-fun lt!1372076 () Unit!60115)

(declare-fun e!2430564 () Unit!60115)

(assert (=> b!3928927 (= lt!1372076 e!2430564)))

(declare-fun c!682564 () Bool)

(assert (=> b!3928927 (= c!682564 (< lt!1372079 lt!1372038))))

(declare-fun size!31306 (List!41851) Int)

(assert (=> b!3928927 (= lt!1372038 (size!31306 suffix!1176))))

(assert (=> b!3928927 (= lt!1372079 (size!31306 (_2!23635 (v!39259 lt!1372060))))))

(declare-fun b!3928928 () Bool)

(declare-fun c!682567 () Bool)

(declare-fun isEmpty!24873 (List!41853) Bool)

(assert (=> b!3928928 (= c!682567 (isEmpty!24873 lt!1372073))))

(declare-fun prefixTokens!80 () List!41853)

(declare-fun tail!6065 (List!41853) List!41853)

(assert (=> b!3928928 (= lt!1372073 (tail!6065 prefixTokens!80))))

(declare-fun e!2430579 () Unit!60115)

(assert (=> b!3928928 (= e!2430579 e!2430546)))

(declare-fun b!3928929 () Bool)

(declare-fun e!2430544 () Bool)

(assert (=> b!3928929 (= e!2430571 e!2430544)))

(declare-fun res!1589677 () Bool)

(assert (=> b!3928929 (=> (not res!1589677) (not e!2430544))))

(declare-fun lt!1372081 () List!41853)

(assert (=> b!3928929 (= res!1589677 (= lt!1372048 (tuple2!41005 lt!1372081 suffixResult!91)))))

(declare-fun lexList!1871 (LexerInterface!6103 List!41854 List!41851) tuple2!41004)

(assert (=> b!3928929 (= lt!1372048 (lexList!1871 thiss!20629 rules!2768 lt!1372039))))

(assert (=> b!3928929 (= lt!1372081 (++!10785 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3928929 (= lt!1372039 (++!10786 prefix!426 suffix!1176))))

(declare-fun b!3928930 () Bool)

(declare-fun e!2430576 () Bool)

(assert (=> b!3928930 (= e!2430576 (= lt!1372060 (Some!8933 (tuple2!41003 (_1!23635 (v!39259 lt!1372060)) (_2!23635 (v!39259 lt!1372060))))))))

(declare-fun lt!1372051 () List!41853)

(assert (=> b!3928930 (= (lexList!1871 thiss!20629 rules!2768 lt!1372063) (tuple2!41005 lt!1372051 Nil!41727))))

(declare-fun lt!1372053 () Unit!60115)

(declare-fun lemmaLexThenLexPrefix!599 (LexerInterface!6103 List!41854 List!41851 List!41851 List!41853 List!41853 List!41851) Unit!60115)

(assert (=> b!3928930 (= lt!1372053 (lemmaLexThenLexPrefix!599 thiss!20629 rules!2768 lt!1372063 suffix!1176 lt!1372051 suffixTokens!72 suffixResult!91))))

(declare-fun b!3928931 () Bool)

(declare-fun Unit!60119 () Unit!60115)

(assert (=> b!3928931 (= e!2430582 Unit!60119)))

(declare-fun b!3928932 () Bool)

(declare-fun e!2430553 () Bool)

(assert (=> b!3928932 (= e!2430553 e!2430578)))

(declare-fun res!1589686 () Bool)

(assert (=> b!3928932 (=> res!1589686 e!2430578)))

(assert (=> b!3928932 (= res!1589686 (not (= lt!1372057 prefix!426)))))

(assert (=> b!3928932 (= lt!1372057 (++!10786 lt!1372041 lt!1372063))))

(declare-fun getSuffix!2064 (List!41851 List!41851) List!41851)

(assert (=> b!3928932 (= lt!1372063 (getSuffix!2064 prefix!426 lt!1372041))))

(declare-fun b!3928933 () Bool)

(declare-fun e!2430561 () Bool)

(declare-fun e!2430552 () Bool)

(declare-fun tp!1196182 () Bool)

(declare-fun inv!21 (TokenValue!6744) Bool)

(assert (=> b!3928933 (= e!2430561 (and (inv!21 (value!206283 (h!47149 suffixTokens!72))) e!2430552 tp!1196182))))

(declare-fun b!3928934 () Bool)

(declare-fun tp_is_empty!19809 () Bool)

(declare-fun tp!1196178 () Bool)

(assert (=> b!3928934 (= e!2430559 (and tp_is_empty!19809 tp!1196178))))

(declare-fun b!3928935 () Bool)

(declare-fun e!2430565 () Bool)

(assert (=> b!3928935 (= e!2430565 e!2430576)))

(declare-fun res!1589680 () Bool)

(assert (=> b!3928935 (=> res!1589680 e!2430576)))

(declare-fun lt!1372085 () List!41853)

(assert (=> b!3928935 (= res!1589680 (not (= lt!1372085 lt!1372081)))))

(declare-fun lt!1372040 () List!41853)

(assert (=> b!3928935 (= lt!1372085 (++!10785 lt!1372042 lt!1372040))))

(assert (=> b!3928935 (= lt!1372085 (++!10785 (++!10785 lt!1372042 lt!1372051) suffixTokens!72))))

(declare-fun lt!1372070 () Unit!60115)

(declare-fun lemmaConcatAssociativity!2316 (List!41853 List!41853 List!41853) Unit!60115)

(assert (=> b!3928935 (= lt!1372070 (lemmaConcatAssociativity!2316 lt!1372042 lt!1372051 suffixTokens!72))))

(declare-fun lt!1372078 () Unit!60115)

(declare-fun e!2430548 () Unit!60115)

(assert (=> b!3928935 (= lt!1372078 e!2430548)))

(declare-fun c!682565 () Bool)

(assert (=> b!3928935 (= c!682565 (isEmpty!24873 lt!1372051))))

(declare-fun tp!1196184 () Bool)

(declare-fun b!3928936 () Bool)

(declare-fun e!2430573 () Bool)

(declare-fun inv!55916 (String!47438) Bool)

(declare-fun inv!55919 (TokenValueInjection!12916) Bool)

(assert (=> b!3928936 (= e!2430552 (and tp!1196184 (inv!55916 (tag!7374 (rule!9458 (h!47149 suffixTokens!72)))) (inv!55919 (transformation!6514 (rule!9458 (h!47149 suffixTokens!72)))) e!2430573))))

(declare-fun b!3928937 () Bool)

(declare-fun Unit!60120 () Unit!60115)

(assert (=> b!3928937 (= e!2430546 Unit!60120)))

(declare-fun lt!1372067 () Unit!60115)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!562 (List!41851 List!41851 List!41851 List!41851) Unit!60115)

(assert (=> b!3928937 (= lt!1372067 (lemmaConcatSameAndSameSizesThenSameLists!562 lt!1372041 (_2!23635 (v!39259 lt!1372060)) lt!1372041 (_2!23635 lt!1372050)))))

(assert (=> b!3928937 (= (_2!23635 (v!39259 lt!1372060)) (_2!23635 lt!1372050))))

(declare-fun lt!1372036 () Unit!60115)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!114 (LexerInterface!6103 List!41854 List!41851 List!41851 List!41853 List!41851) Unit!60115)

(assert (=> b!3928937 (= lt!1372036 (lemmaLexWithSmallerInputCannotProduceSameResults!114 thiss!20629 rules!2768 suffix!1176 (_2!23635 lt!1372050) suffixTokens!72 suffixResult!91))))

(declare-fun res!1589690 () Bool)

(declare-fun lt!1372056 () tuple2!41004)

(assert (=> b!3928937 (= res!1589690 (not (= call!284764 lt!1372056)))))

(declare-fun e!2430569 () Bool)

(assert (=> b!3928937 (=> (not res!1589690) (not e!2430569))))

(assert (=> b!3928937 e!2430569))

(declare-fun b!3928938 () Bool)

(declare-fun res!1589689 () Bool)

(assert (=> b!3928938 (=> res!1589689 e!2430547)))

(declare-fun head!8339 (List!41853) Token!12166)

(assert (=> b!3928938 (= res!1589689 (not (= (head!8339 prefixTokens!80) (_1!23635 (v!39259 lt!1372060)))))))

(declare-fun b!3928939 () Bool)

(assert (=> b!3928939 (= e!2430563 false)))

(declare-fun b!3928940 () Bool)

(declare-fun res!1589681 () Bool)

(assert (=> b!3928940 (=> (not res!1589681) (not e!2430571))))

(declare-fun rulesInvariant!5446 (LexerInterface!6103 List!41854) Bool)

(assert (=> b!3928940 (= res!1589681 (rulesInvariant!5446 thiss!20629 rules!2768))))

(declare-fun bm!284759 () Bool)

(assert (=> bm!284759 (= call!284764 (lexList!1871 thiss!20629 rules!2768 (_2!23635 lt!1372050)))))

(declare-fun b!3928941 () Bool)

(declare-fun Unit!60121 () Unit!60115)

(assert (=> b!3928941 (= e!2430548 Unit!60121)))

(declare-fun lt!1372068 () Unit!60115)

(assert (=> b!3928941 (= lt!1372068 (lemmaLexWithSmallerInputCannotProduceSameResults!114 thiss!20629 rules!2768 (_2!23635 (v!39259 lt!1372060)) suffix!1176 suffixTokens!72 suffixResult!91))))

(assert (=> b!3928941 false))

(declare-fun tp!1196188 () Bool)

(declare-fun e!2430555 () Bool)

(declare-fun b!3928942 () Bool)

(declare-fun e!2430557 () Bool)

(assert (=> b!3928942 (= e!2430555 (and (inv!21 (value!206283 (h!47149 prefixTokens!80))) e!2430557 tp!1196188))))

(declare-fun b!3928943 () Bool)

(declare-fun e!2430568 () Bool)

(assert (=> b!3928943 (= e!2430568 (not e!2430545))))

(declare-fun res!1589679 () Bool)

(assert (=> b!3928943 (=> res!1589679 e!2430545)))

(assert (=> b!3928943 (= res!1589679 (not (= lt!1372045 lt!1372039)))))

(assert (=> b!3928943 (= lt!1372075 (lexList!1871 thiss!20629 rules!2768 (_2!23635 (v!39259 lt!1372060))))))

(declare-fun lt!1372052 () TokenValue!6744)

(declare-fun lt!1372083 () Int)

(declare-fun lt!1372066 () List!41851)

(assert (=> b!3928943 (and (= (size!31305 (_1!23635 (v!39259 lt!1372060))) lt!1372083) (= (originalCharacters!7114 (_1!23635 (v!39259 lt!1372060))) lt!1372041) (= (tuple2!41003 (_1!23635 (v!39259 lt!1372060)) (_2!23635 (v!39259 lt!1372060))) (tuple2!41003 (Token!12167 lt!1372052 (rule!9458 (_1!23635 (v!39259 lt!1372060))) lt!1372083 lt!1372041) lt!1372066)))))

(assert (=> b!3928943 (= lt!1372083 (size!31306 lt!1372041))))

(declare-fun e!2430567 () Bool)

(assert (=> b!3928943 e!2430567))

(declare-fun res!1589695 () Bool)

(assert (=> b!3928943 (=> (not res!1589695) (not e!2430567))))

(assert (=> b!3928943 (= res!1589695 (= (value!206283 (_1!23635 (v!39259 lt!1372060))) lt!1372052))))

(declare-fun apply!9753 (TokenValueInjection!12916 BalanceConc!25044) TokenValue!6744)

(declare-fun seqFromList!4781 (List!41851) BalanceConc!25044)

(assert (=> b!3928943 (= lt!1372052 (apply!9753 (transformation!6514 (rule!9458 (_1!23635 (v!39259 lt!1372060)))) (seqFromList!4781 lt!1372041)))))

(assert (=> b!3928943 (= (_2!23635 (v!39259 lt!1372060)) lt!1372066)))

(declare-fun lt!1372069 () Unit!60115)

(declare-fun lemmaSamePrefixThenSameSuffix!1830 (List!41851 List!41851 List!41851 List!41851 List!41851) Unit!60115)

(assert (=> b!3928943 (= lt!1372069 (lemmaSamePrefixThenSameSuffix!1830 lt!1372041 (_2!23635 (v!39259 lt!1372060)) lt!1372041 lt!1372066 lt!1372039))))

(assert (=> b!3928943 (= lt!1372066 (getSuffix!2064 lt!1372039 lt!1372041))))

(declare-fun isPrefix!3609 (List!41851 List!41851) Bool)

(assert (=> b!3928943 (isPrefix!3609 lt!1372041 lt!1372045)))

(assert (=> b!3928943 (= lt!1372045 (++!10786 lt!1372041 (_2!23635 (v!39259 lt!1372060))))))

(declare-fun lt!1372044 () Unit!60115)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2472 (List!41851 List!41851) Unit!60115)

(assert (=> b!3928943 (= lt!1372044 (lemmaConcatTwoListThenFirstIsPrefix!2472 lt!1372041 (_2!23635 (v!39259 lt!1372060))))))

(declare-fun list!15503 (BalanceConc!25044) List!41851)

(declare-fun charsOf!4338 (Token!12166) BalanceConc!25044)

(assert (=> b!3928943 (= lt!1372041 (list!15503 (charsOf!4338 (_1!23635 (v!39259 lt!1372060)))))))

(declare-fun ruleValid!2462 (LexerInterface!6103 Rule!12828) Bool)

(assert (=> b!3928943 (ruleValid!2462 thiss!20629 (rule!9458 (_1!23635 (v!39259 lt!1372060))))))

(declare-fun lt!1372077 () Unit!60115)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1542 (LexerInterface!6103 Rule!12828 List!41854) Unit!60115)

(assert (=> b!3928943 (= lt!1372077 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1542 thiss!20629 (rule!9458 (_1!23635 (v!39259 lt!1372060))) rules!2768))))

(declare-fun lt!1372071 () Unit!60115)

(declare-fun lemmaCharactersSize!1171 (Token!12166) Unit!60115)

(assert (=> b!3928943 (= lt!1372071 (lemmaCharactersSize!1171 (_1!23635 (v!39259 lt!1372060))))))

(declare-fun b!3928944 () Bool)

(assert (=> b!3928944 (= e!2430567 (= (size!31305 (_1!23635 (v!39259 lt!1372060))) (size!31306 (originalCharacters!7114 (_1!23635 (v!39259 lt!1372060))))))))

(declare-fun b!3928945 () Bool)

(declare-fun Unit!60122 () Unit!60115)

(assert (=> b!3928945 (= e!2430564 Unit!60122)))

(declare-fun b!3928946 () Bool)

(declare-fun Unit!60123 () Unit!60115)

(assert (=> b!3928946 (= e!2430582 Unit!60123)))

(declare-fun lt!1372061 () Unit!60115)

(assert (=> b!3928946 (= lt!1372061 (lemmaConcatTwoListThenFirstIsPrefix!2472 prefix!426 suffix!1176))))

(assert (=> b!3928946 (isPrefix!3609 prefix!426 lt!1372039)))

(declare-fun lt!1372054 () Unit!60115)

(declare-fun lemmaIsPrefixSameLengthThenSameList!805 (List!41851 List!41851 List!41851) Unit!60115)

(assert (=> b!3928946 (= lt!1372054 (lemmaIsPrefixSameLengthThenSameList!805 lt!1372041 prefix!426 lt!1372039))))

(assert (=> b!3928946 (= lt!1372041 prefix!426)))

(declare-fun lt!1372065 () Unit!60115)

(assert (=> b!3928946 (= lt!1372065 (lemmaSamePrefixThenSameSuffix!1830 lt!1372041 (_2!23635 (v!39259 lt!1372060)) prefix!426 suffix!1176 lt!1372039))))

(assert (=> b!3928946 false))

(declare-fun b!3928947 () Bool)

(declare-fun Unit!60124 () Unit!60115)

(assert (=> b!3928947 (= e!2430579 Unit!60124)))

(declare-fun b!3928948 () Bool)

(declare-fun res!1589688 () Bool)

(assert (=> b!3928948 (=> (not res!1589688) (not e!2430571))))

(declare-fun isEmpty!24874 (List!41854) Bool)

(assert (=> b!3928948 (= res!1589688 (not (isEmpty!24874 rules!2768)))))

(declare-fun b!3928949 () Bool)

(declare-fun res!1589694 () Bool)

(assert (=> b!3928949 (=> (not res!1589694) (not e!2430571))))

(assert (=> b!3928949 (= res!1589694 (not (isEmpty!24873 prefixTokens!80)))))

(declare-fun b!3928950 () Bool)

(declare-fun e!2430584 () Bool)

(assert (=> b!3928950 (= e!2430584 e!2430568)))

(declare-fun res!1589696 () Bool)

(assert (=> b!3928950 (=> (not res!1589696) (not e!2430568))))

(assert (=> b!3928950 (= res!1589696 ((_ is Some!8933) lt!1372060))))

(declare-fun maxPrefix!3407 (LexerInterface!6103 List!41854 List!41851) Option!8934)

(assert (=> b!3928950 (= lt!1372060 (maxPrefix!3407 thiss!20629 rules!2768 lt!1372039))))

(declare-fun b!3928951 () Bool)

(declare-fun Unit!60125 () Unit!60115)

(assert (=> b!3928951 (= e!2430564 Unit!60125)))

(declare-fun lt!1372043 () Int)

(assert (=> b!3928951 (= lt!1372043 (size!31306 lt!1372039))))

(declare-fun lt!1372064 () Unit!60115)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1345 (LexerInterface!6103 List!41854 List!41851 List!41851 List!41851 Rule!12828) Unit!60115)

(assert (=> b!3928951 (= lt!1372064 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1345 thiss!20629 rules!2768 lt!1372041 lt!1372039 (_2!23635 (v!39259 lt!1372060)) (rule!9458 (_1!23635 (v!39259 lt!1372060)))))))

(declare-fun maxPrefixOneRule!2477 (LexerInterface!6103 Rule!12828 List!41851) Option!8934)

(assert (=> b!3928951 (= (maxPrefixOneRule!2477 thiss!20629 (rule!9458 (_1!23635 (v!39259 lt!1372060))) lt!1372039) (Some!8933 (tuple2!41003 (Token!12167 lt!1372052 (rule!9458 (_1!23635 (v!39259 lt!1372060))) lt!1372083 lt!1372041) (_2!23635 (v!39259 lt!1372060)))))))

(declare-fun get!13791 (Option!8934) tuple2!41002)

(assert (=> b!3928951 (= lt!1372050 (get!13791 lt!1372060))))

(declare-fun c!682563 () Bool)

(assert (=> b!3928951 (= c!682563 (< (size!31306 (_2!23635 lt!1372050)) lt!1372038))))

(declare-fun lt!1372046 () Unit!60115)

(assert (=> b!3928951 (= lt!1372046 e!2430579)))

(assert (=> b!3928951 false))

(declare-fun b!3928952 () Bool)

(assert (=> b!3928952 (= e!2430544 e!2430584)))

(declare-fun res!1589676 () Bool)

(assert (=> b!3928952 (=> (not res!1589676) (not e!2430584))))

(assert (=> b!3928952 (= res!1589676 (= (lexList!1871 thiss!20629 rules!2768 suffix!1176) lt!1372056))))

(assert (=> b!3928952 (= lt!1372056 (tuple2!41005 suffixTokens!72 suffixResult!91))))

(declare-fun b!3928953 () Bool)

(declare-fun Unit!60126 () Unit!60115)

(assert (=> b!3928953 (= e!2430548 Unit!60126)))

(declare-fun b!3928954 () Bool)

(declare-fun tp!1196185 () Bool)

(assert (=> b!3928954 (= e!2430575 (and tp_is_empty!19809 tp!1196185))))

(declare-fun b!3928955 () Bool)

(assert (=> b!3928955 (= e!2430569 false)))

(declare-fun b!3928956 () Bool)

(declare-fun res!1589687 () Bool)

(assert (=> b!3928956 (=> res!1589687 e!2430576)))

(declare-fun lt!1372072 () tuple2!41004)

(assert (=> b!3928956 (= res!1589687 (not (= (lexList!1871 thiss!20629 rules!2768 lt!1372047) lt!1372072)))))

(declare-fun tp!1196186 () Bool)

(declare-fun b!3928957 () Bool)

(declare-fun inv!55920 (Token!12166) Bool)

(assert (=> b!3928957 (= e!2430581 (and (inv!55920 (h!47149 prefixTokens!80)) e!2430555 tp!1196186))))

(declare-fun b!3928958 () Bool)

(declare-fun e!2430580 () Bool)

(assert (=> b!3928958 (= e!2430551 e!2430580)))

(declare-fun res!1589683 () Bool)

(assert (=> b!3928958 (=> res!1589683 e!2430580)))

(assert (=> b!3928958 (= res!1589683 (not (= lt!1372047 (_2!23635 (v!39259 lt!1372060)))))))

(assert (=> b!3928958 (= (_2!23635 (v!39259 lt!1372060)) lt!1372047)))

(declare-fun lt!1372055 () Unit!60115)

(assert (=> b!3928958 (= lt!1372055 (lemmaSamePrefixThenSameSuffix!1830 lt!1372041 (_2!23635 (v!39259 lt!1372060)) lt!1372041 lt!1372047 lt!1372039))))

(assert (=> b!3928958 (isPrefix!3609 lt!1372041 lt!1372082)))

(declare-fun lt!1372037 () Unit!60115)

(assert (=> b!3928958 (= lt!1372037 (lemmaConcatTwoListThenFirstIsPrefix!2472 lt!1372041 lt!1372047))))

(declare-fun b!3928959 () Bool)

(declare-fun e!2430556 () Bool)

(declare-fun tp!1196179 () Bool)

(assert (=> b!3928959 (= e!2430558 (and e!2430556 tp!1196179))))

(declare-fun b!3928960 () Bool)

(assert (=> b!3928960 (= e!2430580 e!2430565)))

(declare-fun res!1589684 () Bool)

(assert (=> b!3928960 (=> res!1589684 e!2430565)))

(assert (=> b!3928960 (= res!1589684 (not (= lt!1372075 lt!1372072)))))

(assert (=> b!3928960 (= lt!1372072 (tuple2!41005 lt!1372040 suffixResult!91))))

(assert (=> b!3928960 (= lt!1372040 (++!10785 lt!1372051 suffixTokens!72))))

(assert (=> b!3928960 (= lt!1372051 (tail!6065 prefixTokens!80))))

(assert (=> b!3928960 (isPrefix!3609 lt!1372063 lt!1372047)))

(declare-fun lt!1372062 () Unit!60115)

(assert (=> b!3928960 (= lt!1372062 (lemmaConcatTwoListThenFirstIsPrefix!2472 lt!1372063 suffix!1176))))

(declare-fun tp!1196174 () Bool)

(declare-fun b!3928961 () Bool)

(assert (=> b!3928961 (= e!2430566 (and (inv!55920 (h!47149 suffixTokens!72)) e!2430561 tp!1196174))))

(declare-fun b!3928962 () Bool)

(declare-fun res!1589693 () Bool)

(assert (=> b!3928962 (=> res!1589693 e!2430574)))

(assert (=> b!3928962 (= res!1589693 (or (not (= lt!1372075 (tuple2!41005 (_1!23636 lt!1372075) (_2!23636 lt!1372075)))) (= (_2!23635 (v!39259 lt!1372060)) suffix!1176)))))

(assert (=> b!3928963 (= e!2430573 (and tp!1196175 tp!1196189))))

(declare-fun tp!1196176 () Bool)

(declare-fun b!3928964 () Bool)

(assert (=> b!3928964 (= e!2430556 (and tp!1196176 (inv!55916 (tag!7374 (h!47150 rules!2768))) (inv!55919 (transformation!6514 (h!47150 rules!2768))) e!2430583))))

(declare-fun e!2430554 () Bool)

(assert (=> b!3928965 (= e!2430554 (and tp!1196177 tp!1196183))))

(declare-fun b!3928966 () Bool)

(declare-fun tp!1196190 () Bool)

(assert (=> b!3928966 (= e!2430557 (and tp!1196190 (inv!55916 (tag!7374 (rule!9458 (h!47149 prefixTokens!80)))) (inv!55919 (transformation!6514 (rule!9458 (h!47149 prefixTokens!80)))) e!2430554))))

(declare-fun b!3928967 () Bool)

(declare-fun tp!1196180 () Bool)

(assert (=> b!3928967 (= e!2430560 (and tp_is_empty!19809 tp!1196180))))

(declare-fun b!3928968 () Bool)

(assert (=> b!3928968 (= e!2430547 e!2430553)))

(declare-fun res!1589691 () Bool)

(assert (=> b!3928968 (=> res!1589691 e!2430553)))

(assert (=> b!3928968 (= res!1589691 (>= lt!1372083 (size!31306 prefix!426)))))

(assert (=> b!3928968 (isPrefix!3609 lt!1372041 prefix!426)))

(declare-fun lt!1372059 () Unit!60115)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!287 (List!41851 List!41851 List!41851) Unit!60115)

(assert (=> b!3928968 (= lt!1372059 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!287 prefix!426 lt!1372041 lt!1372039))))

(assert (=> b!3928968 (isPrefix!3609 prefix!426 lt!1372039)))

(declare-fun lt!1372080 () Unit!60115)

(assert (=> b!3928968 (= lt!1372080 (lemmaConcatTwoListThenFirstIsPrefix!2472 prefix!426 suffix!1176))))

(assert (= (and start!368532 res!1589698) b!3928948))

(assert (= (and b!3928948 res!1589688) b!3928940))

(assert (= (and b!3928940 res!1589681) b!3928949))

(assert (= (and b!3928949 res!1589694) b!3928924))

(assert (= (and b!3928924 res!1589692) b!3928929))

(assert (= (and b!3928929 res!1589677) b!3928952))

(assert (= (and b!3928952 res!1589676) b!3928950))

(assert (= (and b!3928950 res!1589696) b!3928943))

(assert (= (and b!3928943 res!1589695) b!3928944))

(assert (= (and b!3928943 (not res!1589679)) b!3928926))

(assert (= (and b!3928926 (not res!1589697)) b!3928962))

(assert (= (and b!3928962 (not res!1589693)) b!3928927))

(assert (= (and b!3928927 c!682564) b!3928951))

(assert (= (and b!3928927 (not c!682564)) b!3928945))

(assert (= (and b!3928951 c!682563) b!3928928))

(assert (= (and b!3928951 (not c!682563)) b!3928947))

(assert (= (and b!3928928 c!682567) b!3928937))

(assert (= (and b!3928928 (not c!682567)) b!3928922))

(assert (= (and b!3928937 res!1589690) b!3928955))

(assert (= (and b!3928922 res!1589685) b!3928939))

(assert (= (or b!3928937 b!3928922) bm!284759))

(assert (= (and b!3928927 c!682566) b!3928946))

(assert (= (and b!3928927 (not c!682566)) b!3928931))

(assert (= (and b!3928927 (not res!1589675)) b!3928938))

(assert (= (and b!3928938 (not res!1589689)) b!3928968))

(assert (= (and b!3928968 (not res!1589691)) b!3928932))

(assert (= (and b!3928932 (not res!1589686)) b!3928925))

(assert (= (and b!3928925 (not res!1589682)) b!3928923))

(assert (= (and b!3928923 (not res!1589678)) b!3928958))

(assert (= (and b!3928958 (not res!1589683)) b!3928960))

(assert (= (and b!3928960 (not res!1589684)) b!3928935))

(assert (= (and b!3928935 c!682565) b!3928941))

(assert (= (and b!3928935 (not c!682565)) b!3928953))

(assert (= (and b!3928935 (not res!1589680)) b!3928956))

(assert (= (and b!3928956 (not res!1589687)) b!3928930))

(assert (= (and start!368532 ((_ is Cons!41727) suffixResult!91)) b!3928934))

(assert (= (and start!368532 ((_ is Cons!41727) suffix!1176)) b!3928967))

(assert (= b!3928964 b!3928921))

(assert (= b!3928959 b!3928964))

(assert (= (and start!368532 ((_ is Cons!41730) rules!2768)) b!3928959))

(assert (= b!3928966 b!3928965))

(assert (= b!3928942 b!3928966))

(assert (= b!3928957 b!3928942))

(assert (= (and start!368532 ((_ is Cons!41729) prefixTokens!80)) b!3928957))

(assert (= b!3928936 b!3928963))

(assert (= b!3928933 b!3928936))

(assert (= b!3928961 b!3928933))

(assert (= (and start!368532 ((_ is Cons!41729) suffixTokens!72)) b!3928961))

(assert (= (and start!368532 ((_ is Cons!41727) prefix!426)) b!3928954))

(declare-fun m!4493809 () Bool)

(assert (=> b!3928930 m!4493809))

(declare-fun m!4493811 () Bool)

(assert (=> b!3928930 m!4493811))

(declare-fun m!4493813 () Bool)

(assert (=> b!3928933 m!4493813))

(declare-fun m!4493815 () Bool)

(assert (=> b!3928926 m!4493815))

(declare-fun m!4493817 () Bool)

(assert (=> b!3928958 m!4493817))

(declare-fun m!4493819 () Bool)

(assert (=> b!3928958 m!4493819))

(declare-fun m!4493821 () Bool)

(assert (=> b!3928958 m!4493821))

(declare-fun m!4493823 () Bool)

(assert (=> b!3928948 m!4493823))

(declare-fun m!4493825 () Bool)

(assert (=> b!3928922 m!4493825))

(declare-fun m!4493827 () Bool)

(assert (=> b!3928922 m!4493827))

(declare-fun m!4493829 () Bool)

(assert (=> b!3928932 m!4493829))

(declare-fun m!4493831 () Bool)

(assert (=> b!3928932 m!4493831))

(declare-fun m!4493833 () Bool)

(assert (=> b!3928924 m!4493833))

(declare-fun m!4493835 () Bool)

(assert (=> b!3928952 m!4493835))

(declare-fun m!4493837 () Bool)

(assert (=> b!3928923 m!4493837))

(declare-fun m!4493839 () Bool)

(assert (=> b!3928923 m!4493839))

(declare-fun m!4493841 () Bool)

(assert (=> b!3928923 m!4493841))

(declare-fun m!4493843 () Bool)

(assert (=> b!3928968 m!4493843))

(declare-fun m!4493845 () Bool)

(assert (=> b!3928968 m!4493845))

(declare-fun m!4493847 () Bool)

(assert (=> b!3928968 m!4493847))

(declare-fun m!4493849 () Bool)

(assert (=> b!3928968 m!4493849))

(declare-fun m!4493851 () Bool)

(assert (=> b!3928968 m!4493851))

(declare-fun m!4493853 () Bool)

(assert (=> b!3928940 m!4493853))

(declare-fun m!4493855 () Bool)

(assert (=> b!3928960 m!4493855))

(declare-fun m!4493857 () Bool)

(assert (=> b!3928960 m!4493857))

(declare-fun m!4493859 () Bool)

(assert (=> b!3928960 m!4493859))

(declare-fun m!4493861 () Bool)

(assert (=> b!3928960 m!4493861))

(declare-fun m!4493863 () Bool)

(assert (=> b!3928937 m!4493863))

(declare-fun m!4493865 () Bool)

(assert (=> b!3928937 m!4493865))

(declare-fun m!4493867 () Bool)

(assert (=> b!3928942 m!4493867))

(declare-fun m!4493869 () Bool)

(assert (=> b!3928936 m!4493869))

(declare-fun m!4493871 () Bool)

(assert (=> b!3928936 m!4493871))

(declare-fun m!4493873 () Bool)

(assert (=> b!3928956 m!4493873))

(declare-fun m!4493875 () Bool)

(assert (=> b!3928929 m!4493875))

(declare-fun m!4493877 () Bool)

(assert (=> b!3928929 m!4493877))

(declare-fun m!4493879 () Bool)

(assert (=> b!3928929 m!4493879))

(declare-fun m!4493881 () Bool)

(assert (=> b!3928944 m!4493881))

(declare-fun m!4493883 () Bool)

(assert (=> b!3928943 m!4493883))

(declare-fun m!4493885 () Bool)

(assert (=> b!3928943 m!4493885))

(declare-fun m!4493887 () Bool)

(assert (=> b!3928943 m!4493887))

(declare-fun m!4493889 () Bool)

(assert (=> b!3928943 m!4493889))

(declare-fun m!4493891 () Bool)

(assert (=> b!3928943 m!4493891))

(assert (=> b!3928943 m!4493889))

(declare-fun m!4493893 () Bool)

(assert (=> b!3928943 m!4493893))

(declare-fun m!4493895 () Bool)

(assert (=> b!3928943 m!4493895))

(declare-fun m!4493897 () Bool)

(assert (=> b!3928943 m!4493897))

(declare-fun m!4493899 () Bool)

(assert (=> b!3928943 m!4493899))

(assert (=> b!3928943 m!4493887))

(declare-fun m!4493901 () Bool)

(assert (=> b!3928943 m!4493901))

(declare-fun m!4493903 () Bool)

(assert (=> b!3928943 m!4493903))

(declare-fun m!4493905 () Bool)

(assert (=> b!3928943 m!4493905))

(declare-fun m!4493907 () Bool)

(assert (=> b!3928943 m!4493907))

(declare-fun m!4493909 () Bool)

(assert (=> b!3928943 m!4493909))

(declare-fun m!4493911 () Bool)

(assert (=> b!3928957 m!4493911))

(declare-fun m!4493913 () Bool)

(assert (=> b!3928927 m!4493913))

(declare-fun m!4493915 () Bool)

(assert (=> b!3928927 m!4493915))

(declare-fun m!4493917 () Bool)

(assert (=> b!3928935 m!4493917))

(declare-fun m!4493919 () Bool)

(assert (=> b!3928935 m!4493919))

(assert (=> b!3928935 m!4493917))

(declare-fun m!4493921 () Bool)

(assert (=> b!3928935 m!4493921))

(declare-fun m!4493923 () Bool)

(assert (=> b!3928935 m!4493923))

(declare-fun m!4493925 () Bool)

(assert (=> b!3928935 m!4493925))

(declare-fun m!4493927 () Bool)

(assert (=> b!3928966 m!4493927))

(declare-fun m!4493929 () Bool)

(assert (=> b!3928966 m!4493929))

(declare-fun m!4493931 () Bool)

(assert (=> b!3928941 m!4493931))

(declare-fun m!4493933 () Bool)

(assert (=> b!3928928 m!4493933))

(assert (=> b!3928928 m!4493857))

(declare-fun m!4493935 () Bool)

(assert (=> b!3928949 m!4493935))

(declare-fun m!4493937 () Bool)

(assert (=> b!3928950 m!4493937))

(declare-fun m!4493939 () Bool)

(assert (=> b!3928964 m!4493939))

(declare-fun m!4493941 () Bool)

(assert (=> b!3928964 m!4493941))

(declare-fun m!4493943 () Bool)

(assert (=> bm!284759 m!4493943))

(declare-fun m!4493945 () Bool)

(assert (=> b!3928938 m!4493945))

(assert (=> b!3928946 m!4493847))

(assert (=> b!3928946 m!4493849))

(declare-fun m!4493947 () Bool)

(assert (=> b!3928946 m!4493947))

(declare-fun m!4493949 () Bool)

(assert (=> b!3928946 m!4493949))

(declare-fun m!4493951 () Bool)

(assert (=> b!3928925 m!4493951))

(declare-fun m!4493953 () Bool)

(assert (=> b!3928951 m!4493953))

(declare-fun m!4493955 () Bool)

(assert (=> b!3928951 m!4493955))

(declare-fun m!4493957 () Bool)

(assert (=> b!3928951 m!4493957))

(declare-fun m!4493959 () Bool)

(assert (=> b!3928951 m!4493959))

(declare-fun m!4493961 () Bool)

(assert (=> b!3928951 m!4493961))

(declare-fun m!4493963 () Bool)

(assert (=> b!3928961 m!4493963))

(check-sat (not b!3928923) (not b!3928957) (not b_next!107925) (not bm!284759) (not b!3928927) (not b!3928937) (not b!3928942) (not b!3928949) (not b_next!107917) (not b!3928966) (not b!3928929) (not b!3928924) (not b_next!107927) b_and!299717 (not b!3928946) (not b!3928935) (not b!3928968) (not b!3928928) (not b!3928960) tp_is_empty!19809 b_and!299721 (not b!3928925) (not b!3928958) (not b!3928936) b_and!299711 (not b!3928948) (not b_next!107923) (not b_next!107921) (not b!3928941) (not b!3928954) (not b!3928933) (not b!3928930) (not b!3928938) (not b!3928961) b_and!299713 (not b!3928944) (not b!3928943) (not b!3928967) (not b!3928956) (not b!3928934) (not b!3928964) b_and!299715 (not b!3928959) (not b!3928952) b_and!299719 (not b_next!107919) (not b!3928926) (not b!3928951) (not b!3928922) (not b!3928940) (not b!3928932) (not b!3928950))
(check-sat b_and!299717 b_and!299721 (not b_next!107925) b_and!299711 b_and!299713 b_and!299715 b_and!299719 (not b_next!107919) (not b_next!107917) (not b_next!107927) (not b_next!107923) (not b_next!107921))
