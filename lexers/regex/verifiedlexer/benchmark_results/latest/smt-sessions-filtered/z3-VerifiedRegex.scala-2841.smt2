; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!162054 () Bool)

(assert start!162054)

(declare-fun b!1670230 () Bool)

(declare-fun b_free!45415 () Bool)

(declare-fun b_next!46119 () Bool)

(assert (=> b!1670230 (= b_free!45415 (not b_next!46119))))

(declare-fun tp!482147 () Bool)

(declare-fun b_and!118773 () Bool)

(assert (=> b!1670230 (= tp!482147 b_and!118773)))

(declare-fun b_free!45417 () Bool)

(declare-fun b_next!46121 () Bool)

(assert (=> b!1670230 (= b_free!45417 (not b_next!46121))))

(declare-fun tp!482149 () Bool)

(declare-fun b_and!118775 () Bool)

(assert (=> b!1670230 (= tp!482149 b_and!118775)))

(declare-fun b!1670237 () Bool)

(declare-fun b_free!45419 () Bool)

(declare-fun b_next!46123 () Bool)

(assert (=> b!1670237 (= b_free!45419 (not b_next!46123))))

(declare-fun tp!482148 () Bool)

(declare-fun b_and!118777 () Bool)

(assert (=> b!1670237 (= tp!482148 b_and!118777)))

(declare-fun b_free!45421 () Bool)

(declare-fun b_next!46125 () Bool)

(assert (=> b!1670237 (= b_free!45421 (not b_next!46125))))

(declare-fun tp!482146 () Bool)

(declare-fun b_and!118779 () Bool)

(assert (=> b!1670237 (= tp!482146 b_and!118779)))

(declare-fun e!1070296 () Bool)

(assert (=> b!1670230 (= e!1070296 (and tp!482147 tp!482149))))

(declare-fun b!1670231 () Bool)

(declare-fun res!748952 () Bool)

(declare-fun e!1070307 () Bool)

(assert (=> b!1670231 (=> res!748952 e!1070307)))

(declare-datatypes ((List!18477 0))(
  ( (Nil!18407) (Cons!18407 (h!23808 (_ BitVec 16)) (t!152586 List!18477)) )
))
(declare-datatypes ((TokenValue!3333 0))(
  ( (FloatLiteralValue!6666 (text!23776 List!18477)) (TokenValueExt!3332 (__x!11968 Int)) (Broken!16665 (value!102072 List!18477)) (Object!3402) (End!3333) (Def!3333) (Underscore!3333) (Match!3333) (Else!3333) (Error!3333) (Case!3333) (If!3333) (Extends!3333) (Abstract!3333) (Class!3333) (Val!3333) (DelimiterValue!6666 (del!3393 List!18477)) (KeywordValue!3339 (value!102073 List!18477)) (CommentValue!6666 (value!102074 List!18477)) (WhitespaceValue!6666 (value!102075 List!18477)) (IndentationValue!3333 (value!102076 List!18477)) (String!20996) (Int32!3333) (Broken!16666 (value!102077 List!18477)) (Boolean!3334) (Unit!31284) (OperatorValue!3336 (op!3393 List!18477)) (IdentifierValue!6666 (value!102078 List!18477)) (IdentifierValue!6667 (value!102079 List!18477)) (WhitespaceValue!6667 (value!102080 List!18477)) (True!6666) (False!6666) (Broken!16667 (value!102081 List!18477)) (Broken!16668 (value!102082 List!18477)) (True!6667) (RightBrace!3333) (RightBracket!3333) (Colon!3333) (Null!3333) (Comma!3333) (LeftBracket!3333) (False!6667) (LeftBrace!3333) (ImaginaryLiteralValue!3333 (text!23777 List!18477)) (StringLiteralValue!9999 (value!102083 List!18477)) (EOFValue!3333 (value!102084 List!18477)) (IdentValue!3333 (value!102085 List!18477)) (DelimiterValue!6667 (value!102086 List!18477)) (DedentValue!3333 (value!102087 List!18477)) (NewLineValue!3333 (value!102088 List!18477)) (IntegerValue!9999 (value!102089 (_ BitVec 32)) (text!23778 List!18477)) (IntegerValue!10000 (value!102090 Int) (text!23779 List!18477)) (Times!3333) (Or!3333) (Equal!3333) (Minus!3333) (Broken!16669 (value!102091 List!18477)) (And!3333) (Div!3333) (LessEqual!3333) (Mod!3333) (Concat!7904) (Not!3333) (Plus!3333) (SpaceValue!3333 (value!102092 List!18477)) (IntegerValue!10001 (value!102093 Int) (text!23780 List!18477)) (StringLiteralValue!10000 (text!23781 List!18477)) (FloatLiteralValue!6667 (text!23782 List!18477)) (BytesLiteralValue!3333 (value!102094 List!18477)) (CommentValue!6667 (value!102095 List!18477)) (StringLiteralValue!10001 (value!102096 List!18477)) (ErrorTokenValue!3333 (msg!3394 List!18477)) )
))
(declare-datatypes ((C!9316 0))(
  ( (C!9317 (val!5254 Int)) )
))
(declare-datatypes ((List!18478 0))(
  ( (Nil!18408) (Cons!18408 (h!23809 C!9316) (t!152587 List!18478)) )
))
(declare-datatypes ((IArray!12273 0))(
  ( (IArray!12274 (innerList!6194 List!18478)) )
))
(declare-datatypes ((Conc!6134 0))(
  ( (Node!6134 (left!14725 Conc!6134) (right!15055 Conc!6134) (csize!12498 Int) (cheight!6345 Int)) (Leaf!8976 (xs!8978 IArray!12273) (csize!12499 Int)) (Empty!6134) )
))
(declare-datatypes ((BalanceConc!12212 0))(
  ( (BalanceConc!12213 (c!271795 Conc!6134)) )
))
(declare-datatypes ((Regex!4571 0))(
  ( (ElementMatch!4571 (c!271796 C!9316)) (Concat!7905 (regOne!9654 Regex!4571) (regTwo!9654 Regex!4571)) (EmptyExpr!4571) (Star!4571 (reg!4900 Regex!4571)) (EmptyLang!4571) (Union!4571 (regOne!9655 Regex!4571) (regTwo!9655 Regex!4571)) )
))
(declare-datatypes ((String!20997 0))(
  ( (String!20998 (value!102097 String)) )
))
(declare-datatypes ((TokenValueInjection!6326 0))(
  ( (TokenValueInjection!6327 (toValue!4710 Int) (toChars!4569 Int)) )
))
(declare-datatypes ((Rule!6286 0))(
  ( (Rule!6287 (regex!3243 Regex!4571) (tag!3527 String!20997) (isSeparator!3243 Bool) (transformation!3243 TokenValueInjection!6326)) )
))
(declare-datatypes ((List!18479 0))(
  ( (Nil!18409) (Cons!18409 (h!23810 Rule!6286) (t!152588 List!18479)) )
))
(declare-fun rules!1846 () List!18479)

(declare-datatypes ((LexerInterface!2872 0))(
  ( (LexerInterfaceExt!2869 (__x!11969 Int)) (Lexer!2870) )
))
(declare-fun thiss!17113 () LexerInterface!2872)

(declare-datatypes ((Token!6052 0))(
  ( (Token!6053 (value!102098 TokenValue!3333) (rule!5133 Rule!6286) (size!14646 Int) (originalCharacters!4057 List!18478)) )
))
(declare-datatypes ((List!18480 0))(
  ( (Nil!18410) (Cons!18410 (h!23811 Token!6052) (t!152589 List!18480)) )
))
(declare-fun tokens!457 () List!18480)

(declare-fun rulesProduceIndividualToken!1520 (LexerInterface!2872 List!18479 Token!6052) Bool)

(assert (=> b!1670231 (= res!748952 (not (rulesProduceIndividualToken!1520 thiss!17113 rules!1846 (h!23811 tokens!457))))))

(declare-fun b!1670233 () Bool)

(declare-fun e!1070298 () Bool)

(declare-fun tp!482150 () Bool)

(declare-fun e!1070305 () Bool)

(declare-fun inv!23760 (String!20997) Bool)

(declare-fun inv!23763 (TokenValueInjection!6326) Bool)

(assert (=> b!1670233 (= e!1070298 (and tp!482150 (inv!23760 (tag!3527 (h!23810 rules!1846))) (inv!23763 (transformation!3243 (h!23810 rules!1846))) e!1070305))))

(declare-fun b!1670234 () Bool)

(declare-fun res!748963 () Bool)

(declare-fun e!1070308 () Bool)

(assert (=> b!1670234 (=> (not res!748963) (not e!1070308))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!565 (LexerInterface!2872 List!18480 List!18479) Bool)

(assert (=> b!1670234 (= res!748963 (tokensListTwoByTwoPredicateSeparableList!565 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1670235 () Bool)

(declare-fun e!1070302 () Bool)

(declare-fun lt!629869 () List!18478)

(assert (=> b!1670235 (= e!1070302 (= lt!629869 (originalCharacters!4057 (h!23811 tokens!457))))))

(declare-fun b!1670236 () Bool)

(declare-fun e!1070294 () Bool)

(assert (=> b!1670236 (= e!1070308 e!1070294)))

(declare-fun res!748954 () Bool)

(assert (=> b!1670236 (=> (not res!748954) (not e!1070294))))

(declare-fun lt!629863 () List!18478)

(declare-fun lt!629873 () List!18478)

(assert (=> b!1670236 (= res!748954 (= lt!629863 lt!629873))))

(declare-fun lt!629866 () List!18478)

(declare-fun ++!5019 (List!18478 List!18478) List!18478)

(assert (=> b!1670236 (= lt!629873 (++!5019 lt!629869 lt!629866))))

(declare-fun lt!629871 () BalanceConc!12212)

(declare-fun list!7375 (BalanceConc!12212) List!18478)

(assert (=> b!1670236 (= lt!629863 (list!7375 lt!629871))))

(declare-fun lt!629876 () BalanceConc!12212)

(assert (=> b!1670236 (= lt!629866 (list!7375 lt!629876))))

(declare-fun lt!629879 () BalanceConc!12212)

(assert (=> b!1670236 (= lt!629869 (list!7375 lt!629879))))

(declare-fun charsOf!1892 (Token!6052) BalanceConc!12212)

(assert (=> b!1670236 (= lt!629879 (charsOf!1892 (h!23811 tokens!457)))))

(declare-datatypes ((IArray!12275 0))(
  ( (IArray!12276 (innerList!6195 List!18480)) )
))
(declare-datatypes ((Conc!6135 0))(
  ( (Node!6135 (left!14726 Conc!6135) (right!15056 Conc!6135) (csize!12500 Int) (cheight!6346 Int)) (Leaf!8977 (xs!8979 IArray!12275) (csize!12501 Int)) (Empty!6135) )
))
(declare-datatypes ((BalanceConc!12214 0))(
  ( (BalanceConc!12215 (c!271797 Conc!6135)) )
))
(declare-datatypes ((tuple2!18132 0))(
  ( (tuple2!18133 (_1!10468 BalanceConc!12214) (_2!10468 BalanceConc!12212)) )
))
(declare-fun lt!629862 () tuple2!18132)

(declare-fun lex!1356 (LexerInterface!2872 List!18479 BalanceConc!12212) tuple2!18132)

(assert (=> b!1670236 (= lt!629862 (lex!1356 thiss!17113 rules!1846 lt!629876))))

(declare-fun lt!629883 () BalanceConc!12214)

(declare-fun print!1403 (LexerInterface!2872 BalanceConc!12214) BalanceConc!12212)

(assert (=> b!1670236 (= lt!629876 (print!1403 thiss!17113 lt!629883))))

(declare-fun seqFromList!2223 (List!18480) BalanceConc!12214)

(assert (=> b!1670236 (= lt!629883 (seqFromList!2223 (t!152589 tokens!457)))))

(assert (=> b!1670236 (= lt!629871 (print!1403 thiss!17113 (seqFromList!2223 tokens!457)))))

(assert (=> b!1670237 (= e!1070305 (and tp!482148 tp!482146))))

(declare-fun b!1670238 () Bool)

(declare-fun e!1070301 () Bool)

(assert (=> b!1670238 (= e!1070301 e!1070302)))

(declare-fun res!748958 () Bool)

(assert (=> b!1670238 (=> res!748958 e!1070302)))

(declare-fun lt!629864 () Regex!4571)

(declare-fun lt!629875 () BalanceConc!12212)

(declare-fun prefixMatchZipperSequence!673 (Regex!4571 BalanceConc!12212) Bool)

(declare-fun ++!5020 (BalanceConc!12212 BalanceConc!12212) BalanceConc!12212)

(assert (=> b!1670238 (= res!748958 (prefixMatchZipperSequence!673 lt!629864 (++!5020 lt!629879 lt!629875)))))

(declare-fun singletonSeq!1754 (C!9316) BalanceConc!12212)

(declare-fun apply!4960 (BalanceConc!12212 Int) C!9316)

(assert (=> b!1670238 (= lt!629875 (singletonSeq!1754 (apply!4960 (charsOf!1892 (h!23811 (t!152589 tokens!457))) 0)))))

(declare-fun rulesRegex!625 (LexerInterface!2872 List!18479) Regex!4571)

(assert (=> b!1670238 (= lt!629864 (rulesRegex!625 thiss!17113 rules!1846))))

(declare-fun b!1670239 () Bool)

(declare-fun res!748953 () Bool)

(declare-fun e!1070293 () Bool)

(assert (=> b!1670239 (=> res!748953 e!1070293)))

(declare-fun separableTokensPredicate!812 (LexerInterface!2872 Token!6052 Token!6052 List!18479) Bool)

(assert (=> b!1670239 (= res!748953 (not (separableTokensPredicate!812 thiss!17113 (h!23811 tokens!457) (h!23811 (t!152589 tokens!457)) rules!1846)))))

(declare-fun b!1670240 () Bool)

(declare-fun res!748962 () Bool)

(assert (=> b!1670240 (=> res!748962 e!1070302)))

(declare-fun prefixMatch!484 (Regex!4571 List!18478) Bool)

(assert (=> b!1670240 (= res!748962 (prefixMatch!484 lt!629864 (++!5019 lt!629869 (list!7375 lt!629875))))))

(declare-fun b!1670241 () Bool)

(assert (=> b!1670241 (= e!1070307 e!1070301)))

(declare-fun res!748955 () Bool)

(assert (=> b!1670241 (=> res!748955 e!1070301)))

(declare-datatypes ((tuple2!18134 0))(
  ( (tuple2!18135 (_1!10469 Token!6052) (_2!10469 List!18478)) )
))
(declare-datatypes ((Option!3536 0))(
  ( (None!3535) (Some!3535 (v!24802 tuple2!18134)) )
))
(declare-fun lt!629880 () Option!3536)

(declare-fun isDefined!2889 (Option!3536) Bool)

(assert (=> b!1670241 (= res!748955 (not (isDefined!2889 lt!629880)))))

(declare-datatypes ((Unit!31285 0))(
  ( (Unit!31286) )
))
(declare-fun lt!629881 () Unit!31285)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!434 (LexerInterface!2872 List!18479 List!18478 List!18478) Unit!31285)

(assert (=> b!1670241 (= lt!629881 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!434 thiss!17113 rules!1846 lt!629869 lt!629866))))

(declare-fun b!1670242 () Bool)

(declare-fun res!748964 () Bool)

(assert (=> b!1670242 (=> (not res!748964) (not e!1070308))))

(declare-fun isEmpty!11466 (List!18479) Bool)

(assert (=> b!1670242 (= res!748964 (not (isEmpty!11466 rules!1846)))))

(declare-fun b!1670243 () Bool)

(declare-fun res!748960 () Bool)

(assert (=> b!1670243 (=> (not res!748960) (not e!1070308))))

(get-info :version)

(assert (=> b!1670243 (= res!748960 (and (not ((_ is Nil!18410) tokens!457)) (not ((_ is Nil!18410) (t!152589 tokens!457)))))))

(declare-fun b!1670244 () Bool)

(declare-fun res!748950 () Bool)

(assert (=> b!1670244 (=> (not res!748950) (not e!1070308))))

(declare-fun rulesInvariant!2541 (LexerInterface!2872 List!18479) Bool)

(assert (=> b!1670244 (= res!748950 (rulesInvariant!2541 thiss!17113 rules!1846))))

(declare-fun res!748957 () Bool)

(assert (=> start!162054 (=> (not res!748957) (not e!1070308))))

(assert (=> start!162054 (= res!748957 ((_ is Lexer!2870) thiss!17113))))

(assert (=> start!162054 e!1070308))

(assert (=> start!162054 true))

(declare-fun e!1070297 () Bool)

(assert (=> start!162054 e!1070297))

(declare-fun e!1070295 () Bool)

(assert (=> start!162054 e!1070295))

(declare-fun b!1670232 () Bool)

(assert (=> b!1670232 (= e!1070293 e!1070307)))

(declare-fun res!748959 () Bool)

(assert (=> b!1670232 (=> res!748959 e!1070307)))

(declare-fun lt!629872 () List!18478)

(declare-fun lt!629884 () List!18478)

(assert (=> b!1670232 (= res!748959 (or (not (= lt!629872 lt!629884)) (not (= lt!629884 lt!629869)) (not (= lt!629872 lt!629869))))))

(declare-fun printList!985 (LexerInterface!2872 List!18480) List!18478)

(assert (=> b!1670232 (= lt!629884 (printList!985 thiss!17113 (Cons!18410 (h!23811 tokens!457) Nil!18410)))))

(declare-fun lt!629865 () BalanceConc!12212)

(assert (=> b!1670232 (= lt!629872 (list!7375 lt!629865))))

(declare-fun lt!629878 () BalanceConc!12214)

(declare-fun printTailRec!923 (LexerInterface!2872 BalanceConc!12214 Int BalanceConc!12212) BalanceConc!12212)

(assert (=> b!1670232 (= lt!629865 (printTailRec!923 thiss!17113 lt!629878 0 (BalanceConc!12213 Empty!6134)))))

(assert (=> b!1670232 (= lt!629865 (print!1403 thiss!17113 lt!629878))))

(declare-fun singletonSeq!1755 (Token!6052) BalanceConc!12214)

(assert (=> b!1670232 (= lt!629878 (singletonSeq!1755 (h!23811 tokens!457)))))

(declare-fun maxPrefix!1432 (LexerInterface!2872 List!18479 List!18478) Option!3536)

(assert (=> b!1670232 (= lt!629880 (maxPrefix!1432 thiss!17113 rules!1846 lt!629863))))

(declare-fun b!1670245 () Bool)

(declare-fun tp!482142 () Bool)

(assert (=> b!1670245 (= e!1070297 (and e!1070298 tp!482142))))

(declare-fun b!1670246 () Bool)

(declare-fun e!1070303 () Bool)

(declare-fun tp!482144 () Bool)

(assert (=> b!1670246 (= e!1070303 (and tp!482144 (inv!23760 (tag!3527 (rule!5133 (h!23811 tokens!457)))) (inv!23763 (transformation!3243 (rule!5133 (h!23811 tokens!457)))) e!1070296))))

(declare-fun e!1070292 () Bool)

(declare-fun tp!482143 () Bool)

(declare-fun b!1670247 () Bool)

(declare-fun inv!23764 (Token!6052) Bool)

(assert (=> b!1670247 (= e!1070295 (and (inv!23764 (h!23811 tokens!457)) e!1070292 tp!482143))))

(declare-fun tp!482145 () Bool)

(declare-fun b!1670248 () Bool)

(declare-fun inv!21 (TokenValue!3333) Bool)

(assert (=> b!1670248 (= e!1070292 (and (inv!21 (value!102098 (h!23811 tokens!457))) e!1070303 tp!482145))))

(declare-fun b!1670249 () Bool)

(declare-fun e!1070306 () Bool)

(assert (=> b!1670249 (= e!1070294 (not e!1070306))))

(declare-fun res!748951 () Bool)

(assert (=> b!1670249 (=> res!748951 e!1070306)))

(declare-fun lt!629868 () List!18480)

(assert (=> b!1670249 (= res!748951 (not (= lt!629868 (t!152589 tokens!457))))))

(declare-fun list!7376 (BalanceConc!12214) List!18480)

(assert (=> b!1670249 (= lt!629868 (list!7376 (_1!10468 lt!629862)))))

(declare-fun lt!629870 () Unit!31285)

(declare-fun theoremInvertabilityWhenTokenListSeparable!309 (LexerInterface!2872 List!18479 List!18480) Unit!31285)

(assert (=> b!1670249 (= lt!629870 (theoremInvertabilityWhenTokenListSeparable!309 thiss!17113 rules!1846 (t!152589 tokens!457)))))

(declare-fun isPrefix!1501 (List!18478 List!18478) Bool)

(assert (=> b!1670249 (isPrefix!1501 lt!629869 lt!629873)))

(declare-fun lt!629877 () Unit!31285)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1022 (List!18478 List!18478) Unit!31285)

(assert (=> b!1670249 (= lt!629877 (lemmaConcatTwoListThenFirstIsPrefix!1022 lt!629869 lt!629866))))

(declare-fun b!1670250 () Bool)

(declare-fun res!748949 () Bool)

(assert (=> b!1670250 (=> (not res!748949) (not e!1070308))))

(declare-fun rulesProduceEachTokenIndividuallyList!1074 (LexerInterface!2872 List!18479 List!18480) Bool)

(assert (=> b!1670250 (= res!748949 (rulesProduceEachTokenIndividuallyList!1074 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1670251 () Bool)

(assert (=> b!1670251 (= e!1070306 e!1070293)))

(declare-fun res!748961 () Bool)

(assert (=> b!1670251 (=> res!748961 e!1070293)))

(declare-fun lt!629867 () List!18480)

(declare-fun lt!629874 () List!18480)

(assert (=> b!1670251 (= res!748961 (or (not (= lt!629868 lt!629874)) (not (= lt!629874 lt!629867))))))

(assert (=> b!1670251 (= lt!629874 (list!7376 lt!629883))))

(assert (=> b!1670251 (= lt!629868 lt!629867)))

(declare-fun prepend!829 (BalanceConc!12214 Token!6052) BalanceConc!12214)

(assert (=> b!1670251 (= lt!629867 (list!7376 (prepend!829 (seqFromList!2223 (t!152589 (t!152589 tokens!457))) (h!23811 (t!152589 tokens!457)))))))

(declare-fun lt!629882 () Unit!31285)

(declare-fun seqFromListBHdTlConstructive!312 (Token!6052 List!18480 BalanceConc!12214) Unit!31285)

(assert (=> b!1670251 (= lt!629882 (seqFromListBHdTlConstructive!312 (h!23811 (t!152589 tokens!457)) (t!152589 (t!152589 tokens!457)) (_1!10468 lt!629862)))))

(declare-fun b!1670252 () Bool)

(declare-fun res!748956 () Bool)

(assert (=> b!1670252 (=> res!748956 e!1070307)))

(declare-fun isEmpty!11467 (BalanceConc!12214) Bool)

(declare-fun seqFromList!2224 (List!18478) BalanceConc!12212)

(assert (=> b!1670252 (= res!748956 (isEmpty!11467 (_1!10468 (lex!1356 thiss!17113 rules!1846 (seqFromList!2224 lt!629869)))))))

(assert (= (and start!162054 res!748957) b!1670242))

(assert (= (and b!1670242 res!748964) b!1670244))

(assert (= (and b!1670244 res!748950) b!1670250))

(assert (= (and b!1670250 res!748949) b!1670234))

(assert (= (and b!1670234 res!748963) b!1670243))

(assert (= (and b!1670243 res!748960) b!1670236))

(assert (= (and b!1670236 res!748954) b!1670249))

(assert (= (and b!1670249 (not res!748951)) b!1670251))

(assert (= (and b!1670251 (not res!748961)) b!1670239))

(assert (= (and b!1670239 (not res!748953)) b!1670232))

(assert (= (and b!1670232 (not res!748959)) b!1670231))

(assert (= (and b!1670231 (not res!748952)) b!1670252))

(assert (= (and b!1670252 (not res!748956)) b!1670241))

(assert (= (and b!1670241 (not res!748955)) b!1670238))

(assert (= (and b!1670238 (not res!748958)) b!1670240))

(assert (= (and b!1670240 (not res!748962)) b!1670235))

(assert (= b!1670233 b!1670237))

(assert (= b!1670245 b!1670233))

(assert (= (and start!162054 ((_ is Cons!18409) rules!1846)) b!1670245))

(assert (= b!1670246 b!1670230))

(assert (= b!1670248 b!1670246))

(assert (= b!1670247 b!1670248))

(assert (= (and start!162054 ((_ is Cons!18410) tokens!457)) b!1670247))

(declare-fun m!2035899 () Bool)

(assert (=> b!1670250 m!2035899))

(declare-fun m!2035901 () Bool)

(assert (=> b!1670238 m!2035901))

(declare-fun m!2035903 () Bool)

(assert (=> b!1670238 m!2035903))

(declare-fun m!2035905 () Bool)

(assert (=> b!1670238 m!2035905))

(declare-fun m!2035907 () Bool)

(assert (=> b!1670238 m!2035907))

(declare-fun m!2035909 () Bool)

(assert (=> b!1670238 m!2035909))

(assert (=> b!1670238 m!2035903))

(declare-fun m!2035911 () Bool)

(assert (=> b!1670238 m!2035911))

(assert (=> b!1670238 m!2035907))

(assert (=> b!1670238 m!2035911))

(declare-fun m!2035913 () Bool)

(assert (=> b!1670240 m!2035913))

(assert (=> b!1670240 m!2035913))

(declare-fun m!2035915 () Bool)

(assert (=> b!1670240 m!2035915))

(assert (=> b!1670240 m!2035915))

(declare-fun m!2035917 () Bool)

(assert (=> b!1670240 m!2035917))

(declare-fun m!2035919 () Bool)

(assert (=> b!1670248 m!2035919))

(declare-fun m!2035921 () Bool)

(assert (=> b!1670252 m!2035921))

(assert (=> b!1670252 m!2035921))

(declare-fun m!2035923 () Bool)

(assert (=> b!1670252 m!2035923))

(declare-fun m!2035925 () Bool)

(assert (=> b!1670252 m!2035925))

(declare-fun m!2035927 () Bool)

(assert (=> b!1670242 m!2035927))

(declare-fun m!2035929 () Bool)

(assert (=> b!1670247 m!2035929))

(declare-fun m!2035931 () Bool)

(assert (=> b!1670251 m!2035931))

(declare-fun m!2035933 () Bool)

(assert (=> b!1670251 m!2035933))

(declare-fun m!2035935 () Bool)

(assert (=> b!1670251 m!2035935))

(declare-fun m!2035937 () Bool)

(assert (=> b!1670251 m!2035937))

(declare-fun m!2035939 () Bool)

(assert (=> b!1670251 m!2035939))

(assert (=> b!1670251 m!2035935))

(assert (=> b!1670251 m!2035937))

(declare-fun m!2035941 () Bool)

(assert (=> b!1670241 m!2035941))

(declare-fun m!2035943 () Bool)

(assert (=> b!1670241 m!2035943))

(declare-fun m!2035945 () Bool)

(assert (=> b!1670246 m!2035945))

(declare-fun m!2035947 () Bool)

(assert (=> b!1670246 m!2035947))

(declare-fun m!2035949 () Bool)

(assert (=> b!1670239 m!2035949))

(declare-fun m!2035951 () Bool)

(assert (=> b!1670232 m!2035951))

(declare-fun m!2035953 () Bool)

(assert (=> b!1670232 m!2035953))

(declare-fun m!2035955 () Bool)

(assert (=> b!1670232 m!2035955))

(declare-fun m!2035957 () Bool)

(assert (=> b!1670232 m!2035957))

(declare-fun m!2035959 () Bool)

(assert (=> b!1670232 m!2035959))

(declare-fun m!2035961 () Bool)

(assert (=> b!1670232 m!2035961))

(declare-fun m!2035963 () Bool)

(assert (=> b!1670233 m!2035963))

(declare-fun m!2035965 () Bool)

(assert (=> b!1670233 m!2035965))

(declare-fun m!2035967 () Bool)

(assert (=> b!1670236 m!2035967))

(declare-fun m!2035969 () Bool)

(assert (=> b!1670236 m!2035969))

(declare-fun m!2035971 () Bool)

(assert (=> b!1670236 m!2035971))

(declare-fun m!2035973 () Bool)

(assert (=> b!1670236 m!2035973))

(declare-fun m!2035975 () Bool)

(assert (=> b!1670236 m!2035975))

(declare-fun m!2035977 () Bool)

(assert (=> b!1670236 m!2035977))

(declare-fun m!2035979 () Bool)

(assert (=> b!1670236 m!2035979))

(declare-fun m!2035981 () Bool)

(assert (=> b!1670236 m!2035981))

(declare-fun m!2035983 () Bool)

(assert (=> b!1670236 m!2035983))

(declare-fun m!2035985 () Bool)

(assert (=> b!1670236 m!2035985))

(assert (=> b!1670236 m!2035977))

(declare-fun m!2035987 () Bool)

(assert (=> b!1670249 m!2035987))

(declare-fun m!2035989 () Bool)

(assert (=> b!1670249 m!2035989))

(declare-fun m!2035991 () Bool)

(assert (=> b!1670249 m!2035991))

(declare-fun m!2035993 () Bool)

(assert (=> b!1670249 m!2035993))

(declare-fun m!2035995 () Bool)

(assert (=> b!1670244 m!2035995))

(declare-fun m!2035997 () Bool)

(assert (=> b!1670231 m!2035997))

(declare-fun m!2035999 () Bool)

(assert (=> b!1670234 m!2035999))

(check-sat (not b_next!46125) (not b!1670231) b_and!118773 (not b!1670234) (not b_next!46119) (not b!1670252) (not b!1670240) (not b!1670245) (not b!1670238) (not b_next!46121) (not b!1670248) (not b!1670247) (not b!1670244) (not b!1670249) (not b!1670250) b_and!118775 (not b!1670241) (not b!1670239) (not b!1670246) (not b!1670251) b_and!118777 b_and!118779 (not b!1670236) (not b!1670232) (not b_next!46123) (not b!1670242) (not b!1670233))
(check-sat (not b_next!46125) b_and!118775 b_and!118773 (not b_next!46119) (not b_next!46123) (not b_next!46121) b_and!118777 b_and!118779)
(get-model)

(declare-fun d!505164 () Bool)

(declare-fun e!1070320 () Bool)

(assert (=> d!505164 e!1070320))

(declare-fun res!748980 () Bool)

(assert (=> d!505164 (=> (not res!748980) (not e!1070320))))

(declare-fun lt!629890 () BalanceConc!12212)

(assert (=> d!505164 (= res!748980 (= (list!7375 lt!629890) (Cons!18408 (apply!4960 (charsOf!1892 (h!23811 (t!152589 tokens!457))) 0) Nil!18408)))))

(declare-fun singleton!782 (C!9316) BalanceConc!12212)

(assert (=> d!505164 (= lt!629890 (singleton!782 (apply!4960 (charsOf!1892 (h!23811 (t!152589 tokens!457))) 0)))))

(assert (=> d!505164 (= (singletonSeq!1754 (apply!4960 (charsOf!1892 (h!23811 (t!152589 tokens!457))) 0)) lt!629890)))

(declare-fun b!1670273 () Bool)

(declare-fun isBalanced!1908 (Conc!6134) Bool)

(assert (=> b!1670273 (= e!1070320 (isBalanced!1908 (c!271795 lt!629890)))))

(assert (= (and d!505164 res!748980) b!1670273))

(declare-fun m!2036029 () Bool)

(assert (=> d!505164 m!2036029))

(assert (=> d!505164 m!2035907))

(declare-fun m!2036031 () Bool)

(assert (=> d!505164 m!2036031))

(declare-fun m!2036033 () Bool)

(assert (=> b!1670273 m!2036033))

(assert (=> b!1670238 d!505164))

(declare-fun d!505166 () Bool)

(declare-fun lt!629942 () Bool)

(assert (=> d!505166 (= lt!629942 (prefixMatch!484 lt!629864 (list!7375 (++!5020 lt!629879 lt!629875))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!18481 0))(
  ( (Nil!18411) (Cons!18411 (h!23812 Regex!4571) (t!152632 List!18481)) )
))
(declare-datatypes ((Context!1832 0))(
  ( (Context!1833 (exprs!1416 List!18481)) )
))
(declare-fun prefixMatchZipperSequence!674 ((InoxSet Context!1832) BalanceConc!12212 Int) Bool)

(declare-fun focus!222 (Regex!4571) (InoxSet Context!1832))

(assert (=> d!505166 (= lt!629942 (prefixMatchZipperSequence!674 (focus!222 lt!629864) (++!5020 lt!629879 lt!629875) 0))))

(declare-fun lt!629944 () Unit!31285)

(declare-fun lt!629940 () Unit!31285)

(assert (=> d!505166 (= lt!629944 lt!629940)))

(declare-fun lt!629941 () List!18478)

(declare-fun lt!629935 () (InoxSet Context!1832))

(declare-fun prefixMatchZipper!201 ((InoxSet Context!1832) List!18478) Bool)

(assert (=> d!505166 (= (prefixMatch!484 lt!629864 lt!629941) (prefixMatchZipper!201 lt!629935 lt!629941))))

(declare-datatypes ((List!18482 0))(
  ( (Nil!18412) (Cons!18412 (h!23813 Context!1832) (t!152633 List!18482)) )
))
(declare-fun lt!629936 () List!18482)

(declare-fun prefixMatchZipperRegexEquiv!201 ((InoxSet Context!1832) List!18482 Regex!4571 List!18478) Unit!31285)

(assert (=> d!505166 (= lt!629940 (prefixMatchZipperRegexEquiv!201 lt!629935 lt!629936 lt!629864 lt!629941))))

(assert (=> d!505166 (= lt!629941 (list!7375 (++!5020 lt!629879 lt!629875)))))

(declare-fun toList!962 ((InoxSet Context!1832)) List!18482)

(assert (=> d!505166 (= lt!629936 (toList!962 (focus!222 lt!629864)))))

(assert (=> d!505166 (= lt!629935 (focus!222 lt!629864))))

(declare-fun lt!629937 () Unit!31285)

(declare-fun lt!629938 () Unit!31285)

(assert (=> d!505166 (= lt!629937 lt!629938)))

(declare-fun lt!629939 () Int)

(declare-fun lt!629943 () (InoxSet Context!1832))

(declare-fun dropList!718 (BalanceConc!12212 Int) List!18478)

(assert (=> d!505166 (= (prefixMatchZipper!201 lt!629943 (dropList!718 (++!5020 lt!629879 lt!629875) lt!629939)) (prefixMatchZipperSequence!674 lt!629943 (++!5020 lt!629879 lt!629875) lt!629939))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!201 ((InoxSet Context!1832) BalanceConc!12212 Int) Unit!31285)

(assert (=> d!505166 (= lt!629938 (lemmaprefixMatchZipperSequenceEquivalent!201 lt!629943 (++!5020 lt!629879 lt!629875) lt!629939))))

(assert (=> d!505166 (= lt!629939 0)))

(assert (=> d!505166 (= lt!629943 (focus!222 lt!629864))))

(declare-fun validRegex!1831 (Regex!4571) Bool)

(assert (=> d!505166 (validRegex!1831 lt!629864)))

(assert (=> d!505166 (= (prefixMatchZipperSequence!673 lt!629864 (++!5020 lt!629879 lt!629875)) lt!629942)))

(declare-fun bs!398047 () Bool)

(assert (= bs!398047 d!505166))

(declare-fun m!2036053 () Bool)

(assert (=> bs!398047 m!2036053))

(declare-fun m!2036055 () Bool)

(assert (=> bs!398047 m!2036055))

(assert (=> bs!398047 m!2035903))

(declare-fun m!2036059 () Bool)

(assert (=> bs!398047 m!2036059))

(declare-fun m!2036061 () Bool)

(assert (=> bs!398047 m!2036061))

(declare-fun m!2036063 () Bool)

(assert (=> bs!398047 m!2036063))

(declare-fun m!2036065 () Bool)

(assert (=> bs!398047 m!2036065))

(assert (=> bs!398047 m!2035903))

(declare-fun m!2036067 () Bool)

(assert (=> bs!398047 m!2036067))

(assert (=> bs!398047 m!2036065))

(declare-fun m!2036069 () Bool)

(assert (=> bs!398047 m!2036069))

(assert (=> bs!398047 m!2036065))

(assert (=> bs!398047 m!2035903))

(declare-fun m!2036071 () Bool)

(assert (=> bs!398047 m!2036071))

(assert (=> bs!398047 m!2036059))

(declare-fun m!2036073 () Bool)

(assert (=> bs!398047 m!2036073))

(declare-fun m!2036075 () Bool)

(assert (=> bs!398047 m!2036075))

(declare-fun m!2036077 () Bool)

(assert (=> bs!398047 m!2036077))

(assert (=> bs!398047 m!2035903))

(declare-fun m!2036079 () Bool)

(assert (=> bs!398047 m!2036079))

(assert (=> bs!398047 m!2035903))

(assert (=> bs!398047 m!2036075))

(assert (=> b!1670238 d!505166))

(declare-fun b!1670292 () Bool)

(declare-fun res!748998 () Bool)

(declare-fun e!1070332 () Bool)

(assert (=> b!1670292 (=> (not res!748998) (not e!1070332))))

(declare-fun height!970 (Conc!6134) Int)

(declare-fun ++!5021 (Conc!6134 Conc!6134) Conc!6134)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1670292 (= res!748998 (<= (height!970 (++!5021 (c!271795 lt!629879) (c!271795 lt!629875))) (+ (max!0 (height!970 (c!271795 lt!629879)) (height!970 (c!271795 lt!629875))) 1)))))

(declare-fun b!1670291 () Bool)

(declare-fun res!748999 () Bool)

(assert (=> b!1670291 (=> (not res!748999) (not e!1070332))))

(assert (=> b!1670291 (= res!748999 (isBalanced!1908 (++!5021 (c!271795 lt!629879) (c!271795 lt!629875))))))

(declare-fun d!505174 () Bool)

(assert (=> d!505174 e!1070332))

(declare-fun res!749001 () Bool)

(assert (=> d!505174 (=> (not res!749001) (not e!1070332))))

(declare-fun appendAssocInst!484 (Conc!6134 Conc!6134) Bool)

(assert (=> d!505174 (= res!749001 (appendAssocInst!484 (c!271795 lt!629879) (c!271795 lt!629875)))))

(declare-fun lt!629953 () BalanceConc!12212)

(assert (=> d!505174 (= lt!629953 (BalanceConc!12213 (++!5021 (c!271795 lt!629879) (c!271795 lt!629875))))))

(assert (=> d!505174 (= (++!5020 lt!629879 lt!629875) lt!629953)))

(declare-fun b!1670294 () Bool)

(assert (=> b!1670294 (= e!1070332 (= (list!7375 lt!629953) (++!5019 (list!7375 lt!629879) (list!7375 lt!629875))))))

(declare-fun b!1670293 () Bool)

(declare-fun res!749000 () Bool)

(assert (=> b!1670293 (=> (not res!749000) (not e!1070332))))

(assert (=> b!1670293 (= res!749000 (>= (height!970 (++!5021 (c!271795 lt!629879) (c!271795 lt!629875))) (max!0 (height!970 (c!271795 lt!629879)) (height!970 (c!271795 lt!629875)))))))

(assert (= (and d!505174 res!749001) b!1670291))

(assert (= (and b!1670291 res!748999) b!1670292))

(assert (= (and b!1670292 res!748998) b!1670293))

(assert (= (and b!1670293 res!749000) b!1670294))

(declare-fun m!2036099 () Bool)

(assert (=> d!505174 m!2036099))

(declare-fun m!2036101 () Bool)

(assert (=> d!505174 m!2036101))

(declare-fun m!2036103 () Bool)

(assert (=> b!1670294 m!2036103))

(assert (=> b!1670294 m!2035967))

(assert (=> b!1670294 m!2035913))

(assert (=> b!1670294 m!2035967))

(assert (=> b!1670294 m!2035913))

(declare-fun m!2036105 () Bool)

(assert (=> b!1670294 m!2036105))

(assert (=> b!1670291 m!2036101))

(assert (=> b!1670291 m!2036101))

(declare-fun m!2036107 () Bool)

(assert (=> b!1670291 m!2036107))

(declare-fun m!2036109 () Bool)

(assert (=> b!1670293 m!2036109))

(declare-fun m!2036111 () Bool)

(assert (=> b!1670293 m!2036111))

(declare-fun m!2036113 () Bool)

(assert (=> b!1670293 m!2036113))

(assert (=> b!1670293 m!2036101))

(declare-fun m!2036115 () Bool)

(assert (=> b!1670293 m!2036115))

(assert (=> b!1670293 m!2036109))

(assert (=> b!1670293 m!2036111))

(assert (=> b!1670293 m!2036101))

(assert (=> b!1670292 m!2036109))

(assert (=> b!1670292 m!2036111))

(assert (=> b!1670292 m!2036113))

(assert (=> b!1670292 m!2036101))

(assert (=> b!1670292 m!2036115))

(assert (=> b!1670292 m!2036109))

(assert (=> b!1670292 m!2036111))

(assert (=> b!1670292 m!2036101))

(assert (=> b!1670238 d!505174))

(declare-fun d!505184 () Bool)

(declare-fun lt!629956 () C!9316)

(declare-fun apply!4964 (List!18478 Int) C!9316)

(assert (=> d!505184 (= lt!629956 (apply!4964 (list!7375 (charsOf!1892 (h!23811 (t!152589 tokens!457)))) 0))))

(declare-fun apply!4965 (Conc!6134 Int) C!9316)

(assert (=> d!505184 (= lt!629956 (apply!4965 (c!271795 (charsOf!1892 (h!23811 (t!152589 tokens!457)))) 0))))

(declare-fun e!1070335 () Bool)

(assert (=> d!505184 e!1070335))

(declare-fun res!749004 () Bool)

(assert (=> d!505184 (=> (not res!749004) (not e!1070335))))

(assert (=> d!505184 (= res!749004 (<= 0 0))))

(assert (=> d!505184 (= (apply!4960 (charsOf!1892 (h!23811 (t!152589 tokens!457))) 0) lt!629956)))

(declare-fun b!1670297 () Bool)

(declare-fun size!14650 (BalanceConc!12212) Int)

(assert (=> b!1670297 (= e!1070335 (< 0 (size!14650 (charsOf!1892 (h!23811 (t!152589 tokens!457))))))))

(assert (= (and d!505184 res!749004) b!1670297))

(assert (=> d!505184 m!2035911))

(declare-fun m!2036117 () Bool)

(assert (=> d!505184 m!2036117))

(assert (=> d!505184 m!2036117))

(declare-fun m!2036119 () Bool)

(assert (=> d!505184 m!2036119))

(declare-fun m!2036121 () Bool)

(assert (=> d!505184 m!2036121))

(assert (=> b!1670297 m!2035911))

(declare-fun m!2036123 () Bool)

(assert (=> b!1670297 m!2036123))

(assert (=> b!1670238 d!505184))

(declare-fun d!505186 () Bool)

(declare-fun lt!629959 () Unit!31285)

(declare-fun lemma!287 (List!18479 LexerInterface!2872 List!18479) Unit!31285)

(assert (=> d!505186 (= lt!629959 (lemma!287 rules!1846 thiss!17113 rules!1846))))

(declare-fun lambda!68033 () Int)

(declare-fun generalisedUnion!295 (List!18481) Regex!4571)

(declare-fun map!3788 (List!18479 Int) List!18481)

(assert (=> d!505186 (= (rulesRegex!625 thiss!17113 rules!1846) (generalisedUnion!295 (map!3788 rules!1846 lambda!68033)))))

(declare-fun bs!398053 () Bool)

(assert (= bs!398053 d!505186))

(declare-fun m!2036125 () Bool)

(assert (=> bs!398053 m!2036125))

(declare-fun m!2036127 () Bool)

(assert (=> bs!398053 m!2036127))

(assert (=> bs!398053 m!2036127))

(declare-fun m!2036129 () Bool)

(assert (=> bs!398053 m!2036129))

(assert (=> b!1670238 d!505186))

(declare-fun d!505188 () Bool)

(declare-fun lt!629962 () BalanceConc!12212)

(assert (=> d!505188 (= (list!7375 lt!629962) (originalCharacters!4057 (h!23811 (t!152589 tokens!457))))))

(declare-fun dynLambda!8305 (Int TokenValue!3333) BalanceConc!12212)

(assert (=> d!505188 (= lt!629962 (dynLambda!8305 (toChars!4569 (transformation!3243 (rule!5133 (h!23811 (t!152589 tokens!457))))) (value!102098 (h!23811 (t!152589 tokens!457)))))))

(assert (=> d!505188 (= (charsOf!1892 (h!23811 (t!152589 tokens!457))) lt!629962)))

(declare-fun b_lambda!52461 () Bool)

(assert (=> (not b_lambda!52461) (not d!505188)))

(declare-fun t!152592 () Bool)

(declare-fun tb!95839 () Bool)

(assert (=> (and b!1670230 (= (toChars!4569 (transformation!3243 (rule!5133 (h!23811 tokens!457)))) (toChars!4569 (transformation!3243 (rule!5133 (h!23811 (t!152589 tokens!457)))))) t!152592) tb!95839))

(declare-fun b!1670302 () Bool)

(declare-fun e!1070338 () Bool)

(declare-fun tp!482153 () Bool)

(declare-fun inv!23767 (Conc!6134) Bool)

(assert (=> b!1670302 (= e!1070338 (and (inv!23767 (c!271795 (dynLambda!8305 (toChars!4569 (transformation!3243 (rule!5133 (h!23811 (t!152589 tokens!457))))) (value!102098 (h!23811 (t!152589 tokens!457)))))) tp!482153))))

(declare-fun result!115798 () Bool)

(declare-fun inv!23768 (BalanceConc!12212) Bool)

(assert (=> tb!95839 (= result!115798 (and (inv!23768 (dynLambda!8305 (toChars!4569 (transformation!3243 (rule!5133 (h!23811 (t!152589 tokens!457))))) (value!102098 (h!23811 (t!152589 tokens!457))))) e!1070338))))

(assert (= tb!95839 b!1670302))

(declare-fun m!2036131 () Bool)

(assert (=> b!1670302 m!2036131))

(declare-fun m!2036133 () Bool)

(assert (=> tb!95839 m!2036133))

(assert (=> d!505188 t!152592))

(declare-fun b_and!118781 () Bool)

(assert (= b_and!118775 (and (=> t!152592 result!115798) b_and!118781)))

(declare-fun t!152594 () Bool)

(declare-fun tb!95841 () Bool)

(assert (=> (and b!1670237 (= (toChars!4569 (transformation!3243 (h!23810 rules!1846))) (toChars!4569 (transformation!3243 (rule!5133 (h!23811 (t!152589 tokens!457)))))) t!152594) tb!95841))

(declare-fun result!115802 () Bool)

(assert (= result!115802 result!115798))

(assert (=> d!505188 t!152594))

(declare-fun b_and!118783 () Bool)

(assert (= b_and!118779 (and (=> t!152594 result!115802) b_and!118783)))

(declare-fun m!2036135 () Bool)

(assert (=> d!505188 m!2036135))

(declare-fun m!2036137 () Bool)

(assert (=> d!505188 m!2036137))

(assert (=> b!1670238 d!505188))

(declare-fun b!1670313 () Bool)

(declare-fun e!1070345 () Bool)

(declare-fun inv!16 (TokenValue!3333) Bool)

(assert (=> b!1670313 (= e!1070345 (inv!16 (value!102098 (h!23811 tokens!457))))))

(declare-fun b!1670314 () Bool)

(declare-fun e!1070346 () Bool)

(declare-fun inv!15 (TokenValue!3333) Bool)

(assert (=> b!1670314 (= e!1070346 (inv!15 (value!102098 (h!23811 tokens!457))))))

(declare-fun b!1670315 () Bool)

(declare-fun e!1070347 () Bool)

(declare-fun inv!17 (TokenValue!3333) Bool)

(assert (=> b!1670315 (= e!1070347 (inv!17 (value!102098 (h!23811 tokens!457))))))

(declare-fun b!1670316 () Bool)

(assert (=> b!1670316 (= e!1070345 e!1070347)))

(declare-fun c!271813 () Bool)

(assert (=> b!1670316 (= c!271813 ((_ is IntegerValue!10000) (value!102098 (h!23811 tokens!457))))))

(declare-fun d!505190 () Bool)

(declare-fun c!271812 () Bool)

(assert (=> d!505190 (= c!271812 ((_ is IntegerValue!9999) (value!102098 (h!23811 tokens!457))))))

(assert (=> d!505190 (= (inv!21 (value!102098 (h!23811 tokens!457))) e!1070345)))

(declare-fun b!1670317 () Bool)

(declare-fun res!749007 () Bool)

(assert (=> b!1670317 (=> res!749007 e!1070346)))

(assert (=> b!1670317 (= res!749007 (not ((_ is IntegerValue!10001) (value!102098 (h!23811 tokens!457)))))))

(assert (=> b!1670317 (= e!1070347 e!1070346)))

(assert (= (and d!505190 c!271812) b!1670313))

(assert (= (and d!505190 (not c!271812)) b!1670316))

(assert (= (and b!1670316 c!271813) b!1670315))

(assert (= (and b!1670316 (not c!271813)) b!1670317))

(assert (= (and b!1670317 (not res!749007)) b!1670314))

(declare-fun m!2036139 () Bool)

(assert (=> b!1670313 m!2036139))

(declare-fun m!2036141 () Bool)

(assert (=> b!1670314 m!2036141))

(declare-fun m!2036143 () Bool)

(assert (=> b!1670315 m!2036143))

(assert (=> b!1670248 d!505190))

(declare-fun d!505192 () Bool)

(assert (=> d!505192 (= (separableTokensPredicate!812 thiss!17113 (h!23811 tokens!457) (h!23811 (t!152589 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!673 (rulesRegex!625 thiss!17113 rules!1846) (++!5020 (charsOf!1892 (h!23811 tokens!457)) (singletonSeq!1754 (apply!4960 (charsOf!1892 (h!23811 (t!152589 tokens!457))) 0))))))))

(declare-fun bs!398054 () Bool)

(assert (= bs!398054 d!505192))

(assert (=> bs!398054 m!2035901))

(declare-fun m!2036163 () Bool)

(assert (=> bs!398054 m!2036163))

(declare-fun m!2036165 () Bool)

(assert (=> bs!398054 m!2036165))

(assert (=> bs!398054 m!2035911))

(assert (=> bs!398054 m!2035911))

(assert (=> bs!398054 m!2035907))

(assert (=> bs!398054 m!2035901))

(assert (=> bs!398054 m!2035971))

(assert (=> bs!398054 m!2035909))

(assert (=> bs!398054 m!2036163))

(assert (=> bs!398054 m!2035907))

(assert (=> bs!398054 m!2035909))

(assert (=> bs!398054 m!2035971))

(assert (=> b!1670239 d!505192))

(declare-fun b!1670433 () Bool)

(declare-fun e!1070417 () Bool)

(assert (=> b!1670433 (= e!1070417 true)))

(declare-fun b!1670432 () Bool)

(declare-fun e!1070416 () Bool)

(assert (=> b!1670432 (= e!1070416 e!1070417)))

(declare-fun b!1670431 () Bool)

(declare-fun e!1070415 () Bool)

(assert (=> b!1670431 (= e!1070415 e!1070416)))

(declare-fun d!505196 () Bool)

(assert (=> d!505196 e!1070415))

(assert (= b!1670432 b!1670433))

(assert (= b!1670431 b!1670432))

(assert (= (and d!505196 ((_ is Cons!18409) rules!1846)) b!1670431))

(declare-fun lambda!68036 () Int)

(declare-fun order!11063 () Int)

(declare-fun order!11061 () Int)

(declare-fun dynLambda!8306 (Int Int) Int)

(declare-fun dynLambda!8307 (Int Int) Int)

(assert (=> b!1670433 (< (dynLambda!8306 order!11061 (toValue!4710 (transformation!3243 (h!23810 rules!1846)))) (dynLambda!8307 order!11063 lambda!68036))))

(declare-fun order!11065 () Int)

(declare-fun dynLambda!8308 (Int Int) Int)

(assert (=> b!1670433 (< (dynLambda!8308 order!11065 (toChars!4569 (transformation!3243 (h!23810 rules!1846)))) (dynLambda!8307 order!11063 lambda!68036))))

(assert (=> d!505196 true))

(declare-fun lt!630016 () Bool)

(declare-fun forall!4185 (List!18480 Int) Bool)

(assert (=> d!505196 (= lt!630016 (forall!4185 tokens!457 lambda!68036))))

(declare-fun e!1070408 () Bool)

(assert (=> d!505196 (= lt!630016 e!1070408)))

(declare-fun res!749071 () Bool)

(assert (=> d!505196 (=> res!749071 e!1070408)))

(assert (=> d!505196 (= res!749071 (not ((_ is Cons!18410) tokens!457)))))

(assert (=> d!505196 (not (isEmpty!11466 rules!1846))))

(assert (=> d!505196 (= (rulesProduceEachTokenIndividuallyList!1074 thiss!17113 rules!1846 tokens!457) lt!630016)))

(declare-fun b!1670421 () Bool)

(declare-fun e!1070407 () Bool)

(assert (=> b!1670421 (= e!1070408 e!1070407)))

(declare-fun res!749070 () Bool)

(assert (=> b!1670421 (=> (not res!749070) (not e!1070407))))

(assert (=> b!1670421 (= res!749070 (rulesProduceIndividualToken!1520 thiss!17113 rules!1846 (h!23811 tokens!457)))))

(declare-fun b!1670422 () Bool)

(assert (=> b!1670422 (= e!1070407 (rulesProduceEachTokenIndividuallyList!1074 thiss!17113 rules!1846 (t!152589 tokens!457)))))

(assert (= (and d!505196 (not res!749071)) b!1670421))

(assert (= (and b!1670421 res!749070) b!1670422))

(declare-fun m!2036303 () Bool)

(assert (=> d!505196 m!2036303))

(assert (=> d!505196 m!2035927))

(assert (=> b!1670421 m!2035997))

(declare-fun m!2036305 () Bool)

(assert (=> b!1670422 m!2036305))

(assert (=> b!1670250 d!505196))

(declare-fun d!505228 () Bool)

(declare-fun list!7379 (Conc!6135) List!18480)

(assert (=> d!505228 (= (list!7376 (_1!10468 lt!629862)) (list!7379 (c!271797 (_1!10468 lt!629862))))))

(declare-fun bs!398059 () Bool)

(assert (= bs!398059 d!505228))

(declare-fun m!2036307 () Bool)

(assert (=> bs!398059 m!2036307))

(assert (=> b!1670249 d!505228))

(declare-fun d!505230 () Bool)

(declare-fun e!1070451 () Bool)

(assert (=> d!505230 e!1070451))

(declare-fun res!749110 () Bool)

(assert (=> d!505230 (=> (not res!749110) (not e!1070451))))

(assert (=> d!505230 (= res!749110 (= (list!7376 (_1!10468 (lex!1356 thiss!17113 rules!1846 (print!1403 thiss!17113 (seqFromList!2223 (t!152589 tokens!457)))))) (t!152589 tokens!457)))))

(declare-fun lt!630218 () Unit!31285)

(declare-fun e!1070450 () Unit!31285)

(assert (=> d!505230 (= lt!630218 e!1070450)))

(declare-fun c!271840 () Bool)

(assert (=> d!505230 (= c!271840 (or ((_ is Nil!18410) (t!152589 tokens!457)) ((_ is Nil!18410) (t!152589 (t!152589 tokens!457)))))))

(assert (=> d!505230 (not (isEmpty!11466 rules!1846))))

(assert (=> d!505230 (= (theoremInvertabilityWhenTokenListSeparable!309 thiss!17113 rules!1846 (t!152589 tokens!457)) lt!630218)))

(declare-fun b!1670485 () Bool)

(declare-fun Unit!31304 () Unit!31285)

(assert (=> b!1670485 (= e!1070450 Unit!31304)))

(declare-fun b!1670486 () Bool)

(declare-fun Unit!31305 () Unit!31285)

(assert (=> b!1670486 (= e!1070450 Unit!31305)))

(declare-fun lt!630221 () BalanceConc!12212)

(assert (=> b!1670486 (= lt!630221 (print!1403 thiss!17113 (seqFromList!2223 (t!152589 tokens!457))))))

(declare-fun lt!630211 () BalanceConc!12212)

(assert (=> b!1670486 (= lt!630211 (print!1403 thiss!17113 (seqFromList!2223 (t!152589 (t!152589 tokens!457)))))))

(declare-fun lt!630212 () tuple2!18132)

(assert (=> b!1670486 (= lt!630212 (lex!1356 thiss!17113 rules!1846 lt!630211))))

(declare-fun lt!630220 () List!18478)

(assert (=> b!1670486 (= lt!630220 (list!7375 (charsOf!1892 (h!23811 (t!152589 tokens!457)))))))

(declare-fun lt!630202 () List!18478)

(assert (=> b!1670486 (= lt!630202 (list!7375 lt!630211))))

(declare-fun lt!630199 () Unit!31285)

(assert (=> b!1670486 (= lt!630199 (lemmaConcatTwoListThenFirstIsPrefix!1022 lt!630220 lt!630202))))

(assert (=> b!1670486 (isPrefix!1501 lt!630220 (++!5019 lt!630220 lt!630202))))

(declare-fun lt!630205 () Unit!31285)

(assert (=> b!1670486 (= lt!630205 lt!630199)))

(declare-fun lt!630210 () Unit!31285)

(assert (=> b!1670486 (= lt!630210 (theoremInvertabilityWhenTokenListSeparable!309 thiss!17113 rules!1846 (t!152589 (t!152589 tokens!457))))))

(declare-fun lt!630217 () Unit!31285)

(assert (=> b!1670486 (= lt!630217 (seqFromListBHdTlConstructive!312 (h!23811 (t!152589 (t!152589 tokens!457))) (t!152589 (t!152589 (t!152589 tokens!457))) (_1!10468 lt!630212)))))

(assert (=> b!1670486 (= (list!7376 (_1!10468 lt!630212)) (list!7376 (prepend!829 (seqFromList!2223 (t!152589 (t!152589 (t!152589 tokens!457)))) (h!23811 (t!152589 (t!152589 tokens!457))))))))

(declare-fun lt!630201 () Unit!31285)

(assert (=> b!1670486 (= lt!630201 lt!630217)))

(declare-fun lt!630215 () Option!3536)

(assert (=> b!1670486 (= lt!630215 (maxPrefix!1432 thiss!17113 rules!1846 (list!7375 lt!630221)))))

(assert (=> b!1670486 (= (print!1403 thiss!17113 (singletonSeq!1755 (h!23811 (t!152589 tokens!457)))) (printTailRec!923 thiss!17113 (singletonSeq!1755 (h!23811 (t!152589 tokens!457))) 0 (BalanceConc!12213 Empty!6134)))))

(declare-fun lt!630214 () Unit!31285)

(declare-fun Unit!31306 () Unit!31285)

(assert (=> b!1670486 (= lt!630214 Unit!31306)))

(declare-fun lt!630198 () Unit!31285)

(assert (=> b!1670486 (= lt!630198 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!434 thiss!17113 rules!1846 (list!7375 (charsOf!1892 (h!23811 (t!152589 tokens!457)))) (list!7375 lt!630211)))))

(assert (=> b!1670486 (= (list!7375 (charsOf!1892 (h!23811 (t!152589 tokens!457)))) (originalCharacters!4057 (h!23811 (t!152589 tokens!457))))))

(declare-fun lt!630216 () Unit!31285)

(declare-fun Unit!31307 () Unit!31285)

(assert (=> b!1670486 (= lt!630216 Unit!31307)))

(declare-fun head!3733 (List!18478) C!9316)

(assert (=> b!1670486 (= (list!7375 (singletonSeq!1754 (apply!4960 (charsOf!1892 (h!23811 (t!152589 (t!152589 tokens!457)))) 0))) (Cons!18408 (head!3733 (originalCharacters!4057 (h!23811 (t!152589 (t!152589 tokens!457))))) Nil!18408))))

(declare-fun lt!630222 () Unit!31285)

(declare-fun Unit!31308 () Unit!31285)

(assert (=> b!1670486 (= lt!630222 Unit!31308)))

(assert (=> b!1670486 (= (list!7375 (singletonSeq!1754 (apply!4960 (charsOf!1892 (h!23811 (t!152589 (t!152589 tokens!457)))) 0))) (Cons!18408 (head!3733 (list!7375 lt!630211)) Nil!18408))))

(declare-fun lt!630219 () Unit!31285)

(declare-fun Unit!31309 () Unit!31285)

(assert (=> b!1670486 (= lt!630219 Unit!31309)))

(declare-fun head!3734 (BalanceConc!12212) C!9316)

(assert (=> b!1670486 (= (list!7375 (singletonSeq!1754 (apply!4960 (charsOf!1892 (h!23811 (t!152589 (t!152589 tokens!457)))) 0))) (Cons!18408 (head!3734 lt!630211) Nil!18408))))

(declare-fun lt!630203 () Unit!31285)

(declare-fun Unit!31310 () Unit!31285)

(assert (=> b!1670486 (= lt!630203 Unit!31310)))

(assert (=> b!1670486 (isDefined!2889 (maxPrefix!1432 thiss!17113 rules!1846 (originalCharacters!4057 (h!23811 (t!152589 tokens!457)))))))

(declare-fun lt!630204 () Unit!31285)

(declare-fun Unit!31311 () Unit!31285)

(assert (=> b!1670486 (= lt!630204 Unit!31311)))

(assert (=> b!1670486 (isDefined!2889 (maxPrefix!1432 thiss!17113 rules!1846 (list!7375 (charsOf!1892 (h!23811 (t!152589 tokens!457))))))))

(declare-fun lt!630209 () Unit!31285)

(declare-fun Unit!31312 () Unit!31285)

(assert (=> b!1670486 (= lt!630209 Unit!31312)))

(declare-fun lt!630206 () Unit!31285)

(declare-fun Unit!31313 () Unit!31285)

(assert (=> b!1670486 (= lt!630206 Unit!31313)))

(declare-fun get!5391 (Option!3536) tuple2!18134)

(assert (=> b!1670486 (= (_1!10469 (get!5391 (maxPrefix!1432 thiss!17113 rules!1846 (list!7375 (charsOf!1892 (h!23811 (t!152589 tokens!457))))))) (h!23811 (t!152589 tokens!457)))))

(declare-fun lt!630200 () Unit!31285)

(declare-fun Unit!31314 () Unit!31285)

(assert (=> b!1670486 (= lt!630200 Unit!31314)))

(declare-fun isEmpty!11473 (List!18478) Bool)

(assert (=> b!1670486 (isEmpty!11473 (_2!10469 (get!5391 (maxPrefix!1432 thiss!17113 rules!1846 (list!7375 (charsOf!1892 (h!23811 (t!152589 tokens!457))))))))))

(declare-fun lt!630208 () Unit!31285)

(declare-fun Unit!31315 () Unit!31285)

(assert (=> b!1670486 (= lt!630208 Unit!31315)))

(declare-fun matchR!2062 (Regex!4571 List!18478) Bool)

(assert (=> b!1670486 (matchR!2062 (regex!3243 (rule!5133 (h!23811 (t!152589 tokens!457)))) (list!7375 (charsOf!1892 (h!23811 (t!152589 tokens!457)))))))

(declare-fun lt!630223 () Unit!31285)

(declare-fun Unit!31316 () Unit!31285)

(assert (=> b!1670486 (= lt!630223 Unit!31316)))

(assert (=> b!1670486 (= (rule!5133 (h!23811 (t!152589 tokens!457))) (rule!5133 (h!23811 (t!152589 tokens!457))))))

(declare-fun lt!630207 () Unit!31285)

(declare-fun Unit!31317 () Unit!31285)

(assert (=> b!1670486 (= lt!630207 Unit!31317)))

(declare-fun lt!630213 () Unit!31285)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!192 (LexerInterface!2872 List!18479 Token!6052 Rule!6286 List!18478) Unit!31285)

(assert (=> b!1670486 (= lt!630213 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!192 thiss!17113 rules!1846 (h!23811 (t!152589 tokens!457)) (rule!5133 (h!23811 (t!152589 tokens!457))) (list!7375 lt!630211)))))

(declare-fun b!1670487 () Bool)

(declare-fun isEmpty!11474 (BalanceConc!12212) Bool)

(assert (=> b!1670487 (= e!1070451 (isEmpty!11474 (_2!10468 (lex!1356 thiss!17113 rules!1846 (print!1403 thiss!17113 (seqFromList!2223 (t!152589 tokens!457)))))))))

(assert (= (and d!505230 c!271840) b!1670485))

(assert (= (and d!505230 (not c!271840)) b!1670486))

(assert (= (and d!505230 res!749110) b!1670487))

(assert (=> d!505230 m!2035975))

(declare-fun m!2036479 () Bool)

(assert (=> d!505230 m!2036479))

(assert (=> d!505230 m!2036479))

(declare-fun m!2036481 () Bool)

(assert (=> d!505230 m!2036481))

(assert (=> d!505230 m!2035975))

(assert (=> d!505230 m!2035927))

(declare-fun m!2036483 () Bool)

(assert (=> d!505230 m!2036483))

(declare-fun m!2036485 () Bool)

(assert (=> b!1670486 m!2036485))

(assert (=> b!1670486 m!2035975))

(assert (=> b!1670486 m!2036479))

(declare-fun m!2036487 () Bool)

(assert (=> b!1670486 m!2036487))

(declare-fun m!2036489 () Bool)

(assert (=> b!1670486 m!2036489))

(assert (=> b!1670486 m!2036117))

(declare-fun m!2036491 () Bool)

(assert (=> b!1670486 m!2036491))

(declare-fun m!2036493 () Bool)

(assert (=> b!1670486 m!2036493))

(declare-fun m!2036495 () Bool)

(assert (=> b!1670486 m!2036495))

(assert (=> b!1670486 m!2036493))

(declare-fun m!2036497 () Bool)

(assert (=> b!1670486 m!2036497))

(declare-fun m!2036499 () Bool)

(assert (=> b!1670486 m!2036499))

(assert (=> b!1670486 m!2036117))

(declare-fun m!2036501 () Bool)

(assert (=> b!1670486 m!2036501))

(declare-fun m!2036503 () Bool)

(assert (=> b!1670486 m!2036503))

(assert (=> b!1670486 m!2036117))

(assert (=> b!1670486 m!2036493))

(declare-fun m!2036505 () Bool)

(assert (=> b!1670486 m!2036505))

(assert (=> b!1670486 m!2035911))

(assert (=> b!1670486 m!2036117))

(assert (=> b!1670486 m!2036491))

(declare-fun m!2036507 () Bool)

(assert (=> b!1670486 m!2036507))

(declare-fun m!2036509 () Bool)

(assert (=> b!1670486 m!2036509))

(declare-fun m!2036511 () Bool)

(assert (=> b!1670486 m!2036511))

(declare-fun m!2036513 () Bool)

(assert (=> b!1670486 m!2036513))

(declare-fun m!2036515 () Bool)

(assert (=> b!1670486 m!2036515))

(declare-fun m!2036517 () Bool)

(assert (=> b!1670486 m!2036517))

(declare-fun m!2036519 () Bool)

(assert (=> b!1670486 m!2036519))

(declare-fun m!2036521 () Bool)

(assert (=> b!1670486 m!2036521))

(declare-fun m!2036523 () Bool)

(assert (=> b!1670486 m!2036523))

(declare-fun m!2036525 () Bool)

(assert (=> b!1670486 m!2036525))

(assert (=> b!1670486 m!2036519))

(declare-fun m!2036527 () Bool)

(assert (=> b!1670486 m!2036527))

(assert (=> b!1670486 m!2036509))

(declare-fun m!2036529 () Bool)

(assert (=> b!1670486 m!2036529))

(declare-fun m!2036531 () Bool)

(assert (=> b!1670486 m!2036531))

(declare-fun m!2036533 () Bool)

(assert (=> b!1670486 m!2036533))

(assert (=> b!1670486 m!2035975))

(assert (=> b!1670486 m!2035935))

(declare-fun m!2036535 () Bool)

(assert (=> b!1670486 m!2036535))

(assert (=> b!1670486 m!2036509))

(declare-fun m!2036537 () Bool)

(assert (=> b!1670486 m!2036537))

(assert (=> b!1670486 m!2035935))

(assert (=> b!1670486 m!2036513))

(declare-fun m!2036539 () Bool)

(assert (=> b!1670486 m!2036539))

(assert (=> b!1670486 m!2036517))

(declare-fun m!2036541 () Bool)

(assert (=> b!1670486 m!2036541))

(assert (=> b!1670486 m!2036523))

(assert (=> b!1670486 m!2035911))

(declare-fun m!2036543 () Bool)

(assert (=> b!1670486 m!2036543))

(assert (=> b!1670486 m!2036539))

(assert (=> b!1670486 m!2036493))

(assert (=> b!1670486 m!2036491))

(declare-fun m!2036545 () Bool)

(assert (=> b!1670486 m!2036545))

(assert (=> b!1670486 m!2036503))

(declare-fun m!2036547 () Bool)

(assert (=> b!1670486 m!2036547))

(assert (=> b!1670486 m!2036487))

(declare-fun m!2036549 () Bool)

(assert (=> b!1670486 m!2036549))

(assert (=> b!1670486 m!2036541))

(assert (=> b!1670487 m!2035975))

(assert (=> b!1670487 m!2035975))

(assert (=> b!1670487 m!2036479))

(assert (=> b!1670487 m!2036479))

(assert (=> b!1670487 m!2036481))

(declare-fun m!2036551 () Bool)

(assert (=> b!1670487 m!2036551))

(assert (=> b!1670249 d!505230))

(declare-fun d!505256 () Bool)

(declare-fun e!1070459 () Bool)

(assert (=> d!505256 e!1070459))

(declare-fun res!749121 () Bool)

(assert (=> d!505256 (=> res!749121 e!1070459)))

(declare-fun lt!630226 () Bool)

(assert (=> d!505256 (= res!749121 (not lt!630226))))

(declare-fun e!1070460 () Bool)

(assert (=> d!505256 (= lt!630226 e!1070460)))

(declare-fun res!749122 () Bool)

(assert (=> d!505256 (=> res!749122 e!1070460)))

(assert (=> d!505256 (= res!749122 ((_ is Nil!18408) lt!629869))))

(assert (=> d!505256 (= (isPrefix!1501 lt!629869 lt!629873) lt!630226)))

(declare-fun b!1670498 () Bool)

(declare-fun e!1070458 () Bool)

(declare-fun tail!2493 (List!18478) List!18478)

(assert (=> b!1670498 (= e!1070458 (isPrefix!1501 (tail!2493 lt!629869) (tail!2493 lt!629873)))))

(declare-fun b!1670497 () Bool)

(declare-fun res!749119 () Bool)

(assert (=> b!1670497 (=> (not res!749119) (not e!1070458))))

(assert (=> b!1670497 (= res!749119 (= (head!3733 lt!629869) (head!3733 lt!629873)))))

(declare-fun b!1670496 () Bool)

(assert (=> b!1670496 (= e!1070460 e!1070458)))

(declare-fun res!749120 () Bool)

(assert (=> b!1670496 (=> (not res!749120) (not e!1070458))))

(assert (=> b!1670496 (= res!749120 (not ((_ is Nil!18408) lt!629873)))))

(declare-fun b!1670499 () Bool)

(declare-fun size!14651 (List!18478) Int)

(assert (=> b!1670499 (= e!1070459 (>= (size!14651 lt!629873) (size!14651 lt!629869)))))

(assert (= (and d!505256 (not res!749122)) b!1670496))

(assert (= (and b!1670496 res!749120) b!1670497))

(assert (= (and b!1670497 res!749119) b!1670498))

(assert (= (and d!505256 (not res!749121)) b!1670499))

(declare-fun m!2036553 () Bool)

(assert (=> b!1670498 m!2036553))

(declare-fun m!2036555 () Bool)

(assert (=> b!1670498 m!2036555))

(assert (=> b!1670498 m!2036553))

(assert (=> b!1670498 m!2036555))

(declare-fun m!2036557 () Bool)

(assert (=> b!1670498 m!2036557))

(declare-fun m!2036559 () Bool)

(assert (=> b!1670497 m!2036559))

(declare-fun m!2036561 () Bool)

(assert (=> b!1670497 m!2036561))

(declare-fun m!2036563 () Bool)

(assert (=> b!1670499 m!2036563))

(declare-fun m!2036565 () Bool)

(assert (=> b!1670499 m!2036565))

(assert (=> b!1670249 d!505256))

(declare-fun d!505258 () Bool)

(assert (=> d!505258 (isPrefix!1501 lt!629869 (++!5019 lt!629869 lt!629866))))

(declare-fun lt!630229 () Unit!31285)

(declare-fun choose!10060 (List!18478 List!18478) Unit!31285)

(assert (=> d!505258 (= lt!630229 (choose!10060 lt!629869 lt!629866))))

(assert (=> d!505258 (= (lemmaConcatTwoListThenFirstIsPrefix!1022 lt!629869 lt!629866) lt!630229)))

(declare-fun bs!398065 () Bool)

(assert (= bs!398065 d!505258))

(assert (=> bs!398065 m!2035973))

(assert (=> bs!398065 m!2035973))

(declare-fun m!2036567 () Bool)

(assert (=> bs!398065 m!2036567))

(declare-fun m!2036569 () Bool)

(assert (=> bs!398065 m!2036569))

(assert (=> b!1670249 d!505258))

(declare-fun d!505260 () Bool)

(assert (=> d!505260 (= (list!7376 (prepend!829 (seqFromList!2223 (t!152589 (t!152589 tokens!457))) (h!23811 (t!152589 tokens!457)))) (list!7379 (c!271797 (prepend!829 (seqFromList!2223 (t!152589 (t!152589 tokens!457))) (h!23811 (t!152589 tokens!457))))))))

(declare-fun bs!398066 () Bool)

(assert (= bs!398066 d!505260))

(declare-fun m!2036571 () Bool)

(assert (=> bs!398066 m!2036571))

(assert (=> b!1670251 d!505260))

(declare-fun d!505262 () Bool)

(declare-fun fromListB!1010 (List!18480) BalanceConc!12214)

(assert (=> d!505262 (= (seqFromList!2223 (t!152589 (t!152589 tokens!457))) (fromListB!1010 (t!152589 (t!152589 tokens!457))))))

(declare-fun bs!398067 () Bool)

(assert (= bs!398067 d!505262))

(declare-fun m!2036573 () Bool)

(assert (=> bs!398067 m!2036573))

(assert (=> b!1670251 d!505262))

(declare-fun d!505264 () Bool)

(assert (=> d!505264 (= (list!7376 lt!629883) (list!7379 (c!271797 lt!629883)))))

(declare-fun bs!398068 () Bool)

(assert (= bs!398068 d!505264))

(declare-fun m!2036575 () Bool)

(assert (=> bs!398068 m!2036575))

(assert (=> b!1670251 d!505264))

(declare-fun d!505266 () Bool)

(assert (=> d!505266 (= (list!7376 (_1!10468 lt!629862)) (list!7376 (prepend!829 (seqFromList!2223 (t!152589 (t!152589 tokens!457))) (h!23811 (t!152589 tokens!457)))))))

(declare-fun lt!630232 () Unit!31285)

(declare-fun choose!10061 (Token!6052 List!18480 BalanceConc!12214) Unit!31285)

(assert (=> d!505266 (= lt!630232 (choose!10061 (h!23811 (t!152589 tokens!457)) (t!152589 (t!152589 tokens!457)) (_1!10468 lt!629862)))))

(declare-fun $colon$colon!392 (List!18480 Token!6052) List!18480)

(assert (=> d!505266 (= (list!7376 (_1!10468 lt!629862)) (list!7376 (seqFromList!2223 ($colon$colon!392 (t!152589 (t!152589 tokens!457)) (h!23811 (t!152589 tokens!457))))))))

(assert (=> d!505266 (= (seqFromListBHdTlConstructive!312 (h!23811 (t!152589 tokens!457)) (t!152589 (t!152589 tokens!457)) (_1!10468 lt!629862)) lt!630232)))

(declare-fun bs!398069 () Bool)

(assert (= bs!398069 d!505266))

(declare-fun m!2036577 () Bool)

(assert (=> bs!398069 m!2036577))

(assert (=> bs!398069 m!2035935))

(assert (=> bs!398069 m!2035937))

(assert (=> bs!398069 m!2035987))

(assert (=> bs!398069 m!2035937))

(assert (=> bs!398069 m!2035939))

(declare-fun m!2036579 () Bool)

(assert (=> bs!398069 m!2036579))

(declare-fun m!2036581 () Bool)

(assert (=> bs!398069 m!2036581))

(declare-fun m!2036583 () Bool)

(assert (=> bs!398069 m!2036583))

(assert (=> bs!398069 m!2036579))

(assert (=> bs!398069 m!2036581))

(assert (=> bs!398069 m!2035935))

(assert (=> b!1670251 d!505266))

(declare-fun d!505268 () Bool)

(declare-fun e!1070463 () Bool)

(assert (=> d!505268 e!1070463))

(declare-fun res!749125 () Bool)

(assert (=> d!505268 (=> (not res!749125) (not e!1070463))))

(declare-fun isBalanced!1910 (Conc!6135) Bool)

(declare-fun prepend!831 (Conc!6135 Token!6052) Conc!6135)

(assert (=> d!505268 (= res!749125 (isBalanced!1910 (prepend!831 (c!271797 (seqFromList!2223 (t!152589 (t!152589 tokens!457)))) (h!23811 (t!152589 tokens!457)))))))

(declare-fun lt!630235 () BalanceConc!12214)

(assert (=> d!505268 (= lt!630235 (BalanceConc!12215 (prepend!831 (c!271797 (seqFromList!2223 (t!152589 (t!152589 tokens!457)))) (h!23811 (t!152589 tokens!457)))))))

(assert (=> d!505268 (= (prepend!829 (seqFromList!2223 (t!152589 (t!152589 tokens!457))) (h!23811 (t!152589 tokens!457))) lt!630235)))

(declare-fun b!1670502 () Bool)

(assert (=> b!1670502 (= e!1070463 (= (list!7376 lt!630235) (Cons!18410 (h!23811 (t!152589 tokens!457)) (list!7376 (seqFromList!2223 (t!152589 (t!152589 tokens!457)))))))))

(assert (= (and d!505268 res!749125) b!1670502))

(declare-fun m!2036585 () Bool)

(assert (=> d!505268 m!2036585))

(assert (=> d!505268 m!2036585))

(declare-fun m!2036587 () Bool)

(assert (=> d!505268 m!2036587))

(declare-fun m!2036589 () Bool)

(assert (=> b!1670502 m!2036589))

(assert (=> b!1670502 m!2035935))

(declare-fun m!2036591 () Bool)

(assert (=> b!1670502 m!2036591))

(assert (=> b!1670251 d!505268))

(declare-fun d!505270 () Bool)

(declare-fun c!271844 () Bool)

(assert (=> d!505270 (= c!271844 (isEmpty!11473 (++!5019 lt!629869 (list!7375 lt!629875))))))

(declare-fun e!1070466 () Bool)

(assert (=> d!505270 (= (prefixMatch!484 lt!629864 (++!5019 lt!629869 (list!7375 lt!629875))) e!1070466)))

(declare-fun b!1670507 () Bool)

(declare-fun lostCause!478 (Regex!4571) Bool)

(assert (=> b!1670507 (= e!1070466 (not (lostCause!478 lt!629864)))))

(declare-fun b!1670508 () Bool)

(declare-fun derivativeStep!1130 (Regex!4571 C!9316) Regex!4571)

(assert (=> b!1670508 (= e!1070466 (prefixMatch!484 (derivativeStep!1130 lt!629864 (head!3733 (++!5019 lt!629869 (list!7375 lt!629875)))) (tail!2493 (++!5019 lt!629869 (list!7375 lt!629875)))))))

(assert (= (and d!505270 c!271844) b!1670507))

(assert (= (and d!505270 (not c!271844)) b!1670508))

(assert (=> d!505270 m!2035915))

(declare-fun m!2036593 () Bool)

(assert (=> d!505270 m!2036593))

(declare-fun m!2036595 () Bool)

(assert (=> b!1670507 m!2036595))

(assert (=> b!1670508 m!2035915))

(declare-fun m!2036597 () Bool)

(assert (=> b!1670508 m!2036597))

(assert (=> b!1670508 m!2036597))

(declare-fun m!2036599 () Bool)

(assert (=> b!1670508 m!2036599))

(assert (=> b!1670508 m!2035915))

(declare-fun m!2036601 () Bool)

(assert (=> b!1670508 m!2036601))

(assert (=> b!1670508 m!2036599))

(assert (=> b!1670508 m!2036601))

(declare-fun m!2036603 () Bool)

(assert (=> b!1670508 m!2036603))

(assert (=> b!1670240 d!505270))

(declare-fun b!1670519 () Bool)

(declare-fun res!749131 () Bool)

(declare-fun e!1070472 () Bool)

(assert (=> b!1670519 (=> (not res!749131) (not e!1070472))))

(declare-fun lt!630238 () List!18478)

(assert (=> b!1670519 (= res!749131 (= (size!14651 lt!630238) (+ (size!14651 lt!629869) (size!14651 (list!7375 lt!629875)))))))

(declare-fun b!1670518 () Bool)

(declare-fun e!1070471 () List!18478)

(assert (=> b!1670518 (= e!1070471 (Cons!18408 (h!23809 lt!629869) (++!5019 (t!152587 lt!629869) (list!7375 lt!629875))))))

(declare-fun b!1670520 () Bool)

(assert (=> b!1670520 (= e!1070472 (or (not (= (list!7375 lt!629875) Nil!18408)) (= lt!630238 lt!629869)))))

(declare-fun b!1670517 () Bool)

(assert (=> b!1670517 (= e!1070471 (list!7375 lt!629875))))

(declare-fun d!505272 () Bool)

(assert (=> d!505272 e!1070472))

(declare-fun res!749130 () Bool)

(assert (=> d!505272 (=> (not res!749130) (not e!1070472))))

(declare-fun content!2575 (List!18478) (InoxSet C!9316))

(assert (=> d!505272 (= res!749130 (= (content!2575 lt!630238) ((_ map or) (content!2575 lt!629869) (content!2575 (list!7375 lt!629875)))))))

(assert (=> d!505272 (= lt!630238 e!1070471)))

(declare-fun c!271847 () Bool)

(assert (=> d!505272 (= c!271847 ((_ is Nil!18408) lt!629869))))

(assert (=> d!505272 (= (++!5019 lt!629869 (list!7375 lt!629875)) lt!630238)))

(assert (= (and d!505272 c!271847) b!1670517))

(assert (= (and d!505272 (not c!271847)) b!1670518))

(assert (= (and d!505272 res!749130) b!1670519))

(assert (= (and b!1670519 res!749131) b!1670520))

(declare-fun m!2036605 () Bool)

(assert (=> b!1670519 m!2036605))

(assert (=> b!1670519 m!2036565))

(assert (=> b!1670519 m!2035913))

(declare-fun m!2036607 () Bool)

(assert (=> b!1670519 m!2036607))

(assert (=> b!1670518 m!2035913))

(declare-fun m!2036609 () Bool)

(assert (=> b!1670518 m!2036609))

(declare-fun m!2036611 () Bool)

(assert (=> d!505272 m!2036611))

(declare-fun m!2036613 () Bool)

(assert (=> d!505272 m!2036613))

(assert (=> d!505272 m!2035913))

(declare-fun m!2036615 () Bool)

(assert (=> d!505272 m!2036615))

(assert (=> b!1670240 d!505272))

(declare-fun d!505274 () Bool)

(declare-fun list!7380 (Conc!6134) List!18478)

(assert (=> d!505274 (= (list!7375 lt!629875) (list!7380 (c!271795 lt!629875)))))

(declare-fun bs!398070 () Bool)

(assert (= bs!398070 d!505274))

(declare-fun m!2036617 () Bool)

(assert (=> bs!398070 m!2036617))

(assert (=> b!1670240 d!505274))

(declare-fun d!505276 () Bool)

(declare-fun lt!630295 () Bool)

(declare-fun e!1070484 () Bool)

(assert (=> d!505276 (= lt!630295 e!1070484)))

(declare-fun res!749144 () Bool)

(assert (=> d!505276 (=> (not res!749144) (not e!1070484))))

(assert (=> d!505276 (= res!749144 (= (list!7376 (_1!10468 (lex!1356 thiss!17113 rules!1846 (print!1403 thiss!17113 (singletonSeq!1755 (h!23811 tokens!457)))))) (list!7376 (singletonSeq!1755 (h!23811 tokens!457)))))))

(declare-fun e!1070483 () Bool)

(assert (=> d!505276 (= lt!630295 e!1070483)))

(declare-fun res!749146 () Bool)

(assert (=> d!505276 (=> (not res!749146) (not e!1070483))))

(declare-fun lt!630294 () tuple2!18132)

(declare-fun size!14652 (BalanceConc!12214) Int)

(assert (=> d!505276 (= res!749146 (= (size!14652 (_1!10468 lt!630294)) 1))))

(assert (=> d!505276 (= lt!630294 (lex!1356 thiss!17113 rules!1846 (print!1403 thiss!17113 (singletonSeq!1755 (h!23811 tokens!457)))))))

(assert (=> d!505276 (not (isEmpty!11466 rules!1846))))

(assert (=> d!505276 (= (rulesProduceIndividualToken!1520 thiss!17113 rules!1846 (h!23811 tokens!457)) lt!630295)))

(declare-fun b!1670539 () Bool)

(declare-fun res!749145 () Bool)

(assert (=> b!1670539 (=> (not res!749145) (not e!1070483))))

(declare-fun apply!4968 (BalanceConc!12214 Int) Token!6052)

(assert (=> b!1670539 (= res!749145 (= (apply!4968 (_1!10468 lt!630294) 0) (h!23811 tokens!457)))))

(declare-fun b!1670540 () Bool)

(assert (=> b!1670540 (= e!1070483 (isEmpty!11474 (_2!10468 lt!630294)))))

(declare-fun b!1670541 () Bool)

(assert (=> b!1670541 (= e!1070484 (isEmpty!11474 (_2!10468 (lex!1356 thiss!17113 rules!1846 (print!1403 thiss!17113 (singletonSeq!1755 (h!23811 tokens!457)))))))))

(assert (= (and d!505276 res!749146) b!1670539))

(assert (= (and b!1670539 res!749145) b!1670540))

(assert (= (and d!505276 res!749144) b!1670541))

(assert (=> d!505276 m!2035959))

(declare-fun m!2036665 () Bool)

(assert (=> d!505276 m!2036665))

(assert (=> d!505276 m!2035959))

(declare-fun m!2036667 () Bool)

(assert (=> d!505276 m!2036667))

(declare-fun m!2036669 () Bool)

(assert (=> d!505276 m!2036669))

(declare-fun m!2036671 () Bool)

(assert (=> d!505276 m!2036671))

(declare-fun m!2036673 () Bool)

(assert (=> d!505276 m!2036673))

(assert (=> d!505276 m!2035959))

(assert (=> d!505276 m!2036671))

(assert (=> d!505276 m!2035927))

(declare-fun m!2036675 () Bool)

(assert (=> b!1670539 m!2036675))

(declare-fun m!2036677 () Bool)

(assert (=> b!1670540 m!2036677))

(assert (=> b!1670541 m!2035959))

(assert (=> b!1670541 m!2035959))

(assert (=> b!1670541 m!2036671))

(assert (=> b!1670541 m!2036671))

(assert (=> b!1670541 m!2036673))

(declare-fun m!2036679 () Bool)

(assert (=> b!1670541 m!2036679))

(assert (=> b!1670231 d!505276))

(declare-fun d!505280 () Bool)

(assert (=> d!505280 (= (isEmpty!11466 rules!1846) ((_ is Nil!18409) rules!1846))))

(assert (=> b!1670242 d!505280))

(declare-fun d!505282 () Bool)

(declare-fun isEmpty!11475 (Option!3536) Bool)

(assert (=> d!505282 (= (isDefined!2889 lt!629880) (not (isEmpty!11475 lt!629880)))))

(declare-fun bs!398071 () Bool)

(assert (= bs!398071 d!505282))

(declare-fun m!2036681 () Bool)

(assert (=> bs!398071 m!2036681))

(assert (=> b!1670241 d!505282))

(declare-fun b!1670557 () Bool)

(declare-fun e!1070493 () Unit!31285)

(declare-fun Unit!31320 () Unit!31285)

(assert (=> b!1670557 (= e!1070493 Unit!31320)))

(declare-fun b!1670554 () Bool)

(declare-fun res!749156 () Bool)

(declare-fun e!1070494 () Bool)

(assert (=> b!1670554 (=> (not res!749156) (not e!1070494))))

(declare-fun lt!630333 () Token!6052)

(declare-datatypes ((Option!3538 0))(
  ( (None!3537) (Some!3537 (v!24810 Rule!6286)) )
))
(declare-fun get!5393 (Option!3538) Rule!6286)

(declare-fun getRuleFromTag!336 (LexerInterface!2872 List!18479 String!20997) Option!3538)

(assert (=> b!1670554 (= res!749156 (matchR!2062 (regex!3243 (get!5393 (getRuleFromTag!336 thiss!17113 rules!1846 (tag!3527 (rule!5133 lt!630333))))) (list!7375 (charsOf!1892 lt!630333))))))

(declare-fun b!1670556 () Bool)

(declare-fun Unit!31321 () Unit!31285)

(assert (=> b!1670556 (= e!1070493 Unit!31321)))

(declare-fun lt!630344 () List!18478)

(assert (=> b!1670556 (= lt!630344 (++!5019 lt!629869 lt!629866))))

(declare-fun lt!630332 () Unit!31285)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!230 (LexerInterface!2872 Rule!6286 List!18479 List!18478) Unit!31285)

(assert (=> b!1670556 (= lt!630332 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!230 thiss!17113 (rule!5133 lt!630333) rules!1846 lt!630344))))

(declare-fun maxPrefixOneRule!835 (LexerInterface!2872 Rule!6286 List!18478) Option!3536)

(assert (=> b!1670556 (isEmpty!11475 (maxPrefixOneRule!835 thiss!17113 (rule!5133 lt!630333) lt!630344))))

(declare-fun lt!630343 () Unit!31285)

(assert (=> b!1670556 (= lt!630343 lt!630332)))

(declare-fun lt!630345 () List!18478)

(assert (=> b!1670556 (= lt!630345 (list!7375 (charsOf!1892 lt!630333)))))

(declare-fun lt!630348 () Unit!31285)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!226 (LexerInterface!2872 Rule!6286 List!18478 List!18478) Unit!31285)

(assert (=> b!1670556 (= lt!630348 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!226 thiss!17113 (rule!5133 lt!630333) lt!630345 (++!5019 lt!629869 lt!629866)))))

(assert (=> b!1670556 (not (matchR!2062 (regex!3243 (rule!5133 lt!630333)) lt!630345))))

(declare-fun lt!630340 () Unit!31285)

(assert (=> b!1670556 (= lt!630340 lt!630348)))

(assert (=> b!1670556 false))

(declare-fun d!505284 () Bool)

(assert (=> d!505284 (isDefined!2889 (maxPrefix!1432 thiss!17113 rules!1846 (++!5019 lt!629869 lt!629866)))))

(declare-fun lt!630347 () Unit!31285)

(assert (=> d!505284 (= lt!630347 e!1070493)))

(declare-fun c!271853 () Bool)

(assert (=> d!505284 (= c!271853 (isEmpty!11475 (maxPrefix!1432 thiss!17113 rules!1846 (++!5019 lt!629869 lt!629866))))))

(declare-fun lt!630338 () Unit!31285)

(declare-fun lt!630342 () Unit!31285)

(assert (=> d!505284 (= lt!630338 lt!630342)))

(assert (=> d!505284 e!1070494))

(declare-fun res!749155 () Bool)

(assert (=> d!505284 (=> (not res!749155) (not e!1070494))))

(declare-fun isDefined!2891 (Option!3538) Bool)

(assert (=> d!505284 (= res!749155 (isDefined!2891 (getRuleFromTag!336 thiss!17113 rules!1846 (tag!3527 (rule!5133 lt!630333)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!336 (LexerInterface!2872 List!18479 List!18478 Token!6052) Unit!31285)

(assert (=> d!505284 (= lt!630342 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!336 thiss!17113 rules!1846 lt!629869 lt!630333))))

(declare-fun lt!630341 () Unit!31285)

(declare-fun lt!630339 () Unit!31285)

(assert (=> d!505284 (= lt!630341 lt!630339)))

(declare-fun lt!630335 () List!18478)

(assert (=> d!505284 (isPrefix!1501 lt!630335 (++!5019 lt!629869 lt!629866))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!222 (List!18478 List!18478 List!18478) Unit!31285)

(assert (=> d!505284 (= lt!630339 (lemmaPrefixStaysPrefixWhenAddingToSuffix!222 lt!630335 lt!629869 lt!629866))))

(assert (=> d!505284 (= lt!630335 (list!7375 (charsOf!1892 lt!630333)))))

(declare-fun lt!630337 () Unit!31285)

(declare-fun lt!630336 () Unit!31285)

(assert (=> d!505284 (= lt!630337 lt!630336)))

(declare-fun lt!630346 () List!18478)

(declare-fun lt!630334 () List!18478)

(assert (=> d!505284 (isPrefix!1501 lt!630346 (++!5019 lt!630346 lt!630334))))

(assert (=> d!505284 (= lt!630336 (lemmaConcatTwoListThenFirstIsPrefix!1022 lt!630346 lt!630334))))

(assert (=> d!505284 (= lt!630334 (_2!10469 (get!5391 (maxPrefix!1432 thiss!17113 rules!1846 lt!629869))))))

(assert (=> d!505284 (= lt!630346 (list!7375 (charsOf!1892 lt!630333)))))

(declare-fun head!3735 (List!18480) Token!6052)

(assert (=> d!505284 (= lt!630333 (head!3735 (list!7376 (_1!10468 (lex!1356 thiss!17113 rules!1846 (seqFromList!2224 lt!629869))))))))

(assert (=> d!505284 (not (isEmpty!11466 rules!1846))))

(assert (=> d!505284 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!434 thiss!17113 rules!1846 lt!629869 lt!629866) lt!630347)))

(declare-fun b!1670555 () Bool)

(assert (=> b!1670555 (= e!1070494 (= (rule!5133 lt!630333) (get!5393 (getRuleFromTag!336 thiss!17113 rules!1846 (tag!3527 (rule!5133 lt!630333))))))))

(assert (= (and d!505284 res!749155) b!1670554))

(assert (= (and b!1670554 res!749156) b!1670555))

(assert (= (and d!505284 c!271853) b!1670556))

(assert (= (and d!505284 (not c!271853)) b!1670557))

(declare-fun m!2036683 () Bool)

(assert (=> b!1670554 m!2036683))

(assert (=> b!1670554 m!2036683))

(declare-fun m!2036685 () Bool)

(assert (=> b!1670554 m!2036685))

(declare-fun m!2036687 () Bool)

(assert (=> b!1670554 m!2036687))

(declare-fun m!2036689 () Bool)

(assert (=> b!1670554 m!2036689))

(assert (=> b!1670554 m!2036685))

(declare-fun m!2036691 () Bool)

(assert (=> b!1670554 m!2036691))

(assert (=> b!1670554 m!2036687))

(declare-fun m!2036693 () Bool)

(assert (=> b!1670556 m!2036693))

(assert (=> b!1670556 m!2036683))

(assert (=> b!1670556 m!2036685))

(assert (=> b!1670556 m!2035973))

(declare-fun m!2036695 () Bool)

(assert (=> b!1670556 m!2036695))

(declare-fun m!2036697 () Bool)

(assert (=> b!1670556 m!2036697))

(assert (=> b!1670556 m!2035973))

(assert (=> b!1670556 m!2036697))

(declare-fun m!2036699 () Bool)

(assert (=> b!1670556 m!2036699))

(declare-fun m!2036701 () Bool)

(assert (=> b!1670556 m!2036701))

(assert (=> b!1670556 m!2036683))

(assert (=> d!505284 m!2035973))

(declare-fun m!2036703 () Bool)

(assert (=> d!505284 m!2036703))

(assert (=> d!505284 m!2036683))

(assert (=> d!505284 m!2036683))

(assert (=> d!505284 m!2036685))

(declare-fun m!2036705 () Bool)

(assert (=> d!505284 m!2036705))

(declare-fun m!2036707 () Bool)

(assert (=> d!505284 m!2036707))

(assert (=> d!505284 m!2035973))

(assert (=> d!505284 m!2035973))

(declare-fun m!2036709 () Bool)

(assert (=> d!505284 m!2036709))

(assert (=> d!505284 m!2036687))

(declare-fun m!2036711 () Bool)

(assert (=> d!505284 m!2036711))

(declare-fun m!2036713 () Bool)

(assert (=> d!505284 m!2036713))

(declare-fun m!2036715 () Bool)

(assert (=> d!505284 m!2036715))

(declare-fun m!2036717 () Bool)

(assert (=> d!505284 m!2036717))

(assert (=> d!505284 m!2035927))

(declare-fun m!2036719 () Bool)

(assert (=> d!505284 m!2036719))

(assert (=> d!505284 m!2036687))

(declare-fun m!2036721 () Bool)

(assert (=> d!505284 m!2036721))

(assert (=> d!505284 m!2036715))

(assert (=> d!505284 m!2036705))

(declare-fun m!2036723 () Bool)

(assert (=> d!505284 m!2036723))

(assert (=> d!505284 m!2036703))

(declare-fun m!2036725 () Bool)

(assert (=> d!505284 m!2036725))

(assert (=> d!505284 m!2036703))

(declare-fun m!2036727 () Bool)

(assert (=> d!505284 m!2036727))

(assert (=> d!505284 m!2036707))

(declare-fun m!2036729 () Bool)

(assert (=> d!505284 m!2036729))

(assert (=> d!505284 m!2035921))

(assert (=> d!505284 m!2035923))

(assert (=> d!505284 m!2035921))

(assert (=> b!1670555 m!2036687))

(assert (=> b!1670555 m!2036687))

(assert (=> b!1670555 m!2036689))

(assert (=> b!1670241 d!505284))

(declare-fun d!505286 () Bool)

(declare-fun lt!630351 () Bool)

(declare-fun isEmpty!11476 (List!18480) Bool)

(assert (=> d!505286 (= lt!630351 (isEmpty!11476 (list!7376 (_1!10468 (lex!1356 thiss!17113 rules!1846 (seqFromList!2224 lt!629869))))))))

(declare-fun isEmpty!11477 (Conc!6135) Bool)

(assert (=> d!505286 (= lt!630351 (isEmpty!11477 (c!271797 (_1!10468 (lex!1356 thiss!17113 rules!1846 (seqFromList!2224 lt!629869))))))))

(assert (=> d!505286 (= (isEmpty!11467 (_1!10468 (lex!1356 thiss!17113 rules!1846 (seqFromList!2224 lt!629869)))) lt!630351)))

(declare-fun bs!398072 () Bool)

(assert (= bs!398072 d!505286))

(assert (=> bs!398072 m!2036705))

(assert (=> bs!398072 m!2036705))

(declare-fun m!2036731 () Bool)

(assert (=> bs!398072 m!2036731))

(declare-fun m!2036733 () Bool)

(assert (=> bs!398072 m!2036733))

(assert (=> b!1670252 d!505286))

(declare-fun b!1670568 () Bool)

(declare-fun e!1070502 () Bool)

(declare-fun e!1070503 () Bool)

(assert (=> b!1670568 (= e!1070502 e!1070503)))

(declare-fun res!749165 () Bool)

(declare-fun lt!630354 () tuple2!18132)

(assert (=> b!1670568 (= res!749165 (< (size!14650 (_2!10468 lt!630354)) (size!14650 (seqFromList!2224 lt!629869))))))

(assert (=> b!1670568 (=> (not res!749165) (not e!1070503))))

(declare-fun d!505288 () Bool)

(declare-fun e!1070501 () Bool)

(assert (=> d!505288 e!1070501))

(declare-fun res!749163 () Bool)

(assert (=> d!505288 (=> (not res!749163) (not e!1070501))))

(assert (=> d!505288 (= res!749163 e!1070502)))

(declare-fun c!271856 () Bool)

(assert (=> d!505288 (= c!271856 (> (size!14652 (_1!10468 lt!630354)) 0))))

(declare-fun lexTailRecV2!620 (LexerInterface!2872 List!18479 BalanceConc!12212 BalanceConc!12212 BalanceConc!12212 BalanceConc!12214) tuple2!18132)

(assert (=> d!505288 (= lt!630354 (lexTailRecV2!620 thiss!17113 rules!1846 (seqFromList!2224 lt!629869) (BalanceConc!12213 Empty!6134) (seqFromList!2224 lt!629869) (BalanceConc!12215 Empty!6135)))))

(assert (=> d!505288 (= (lex!1356 thiss!17113 rules!1846 (seqFromList!2224 lt!629869)) lt!630354)))

(declare-fun b!1670569 () Bool)

(assert (=> b!1670569 (= e!1070503 (not (isEmpty!11467 (_1!10468 lt!630354))))))

(declare-fun b!1670570 () Bool)

(declare-fun res!749164 () Bool)

(assert (=> b!1670570 (=> (not res!749164) (not e!1070501))))

(declare-datatypes ((tuple2!18138 0))(
  ( (tuple2!18139 (_1!10471 List!18480) (_2!10471 List!18478)) )
))
(declare-fun lexList!897 (LexerInterface!2872 List!18479 List!18478) tuple2!18138)

(assert (=> b!1670570 (= res!749164 (= (list!7376 (_1!10468 lt!630354)) (_1!10471 (lexList!897 thiss!17113 rules!1846 (list!7375 (seqFromList!2224 lt!629869))))))))

(declare-fun b!1670571 () Bool)

(assert (=> b!1670571 (= e!1070501 (= (list!7375 (_2!10468 lt!630354)) (_2!10471 (lexList!897 thiss!17113 rules!1846 (list!7375 (seqFromList!2224 lt!629869))))))))

(declare-fun b!1670572 () Bool)

(assert (=> b!1670572 (= e!1070502 (= (_2!10468 lt!630354) (seqFromList!2224 lt!629869)))))

(assert (= (and d!505288 c!271856) b!1670568))

(assert (= (and d!505288 (not c!271856)) b!1670572))

(assert (= (and b!1670568 res!749165) b!1670569))

(assert (= (and d!505288 res!749163) b!1670570))

(assert (= (and b!1670570 res!749164) b!1670571))

(declare-fun m!2036735 () Bool)

(assert (=> b!1670570 m!2036735))

(assert (=> b!1670570 m!2035921))

(declare-fun m!2036737 () Bool)

(assert (=> b!1670570 m!2036737))

(assert (=> b!1670570 m!2036737))

(declare-fun m!2036739 () Bool)

(assert (=> b!1670570 m!2036739))

(declare-fun m!2036741 () Bool)

(assert (=> d!505288 m!2036741))

(assert (=> d!505288 m!2035921))

(assert (=> d!505288 m!2035921))

(declare-fun m!2036743 () Bool)

(assert (=> d!505288 m!2036743))

(declare-fun m!2036745 () Bool)

(assert (=> b!1670568 m!2036745))

(assert (=> b!1670568 m!2035921))

(declare-fun m!2036747 () Bool)

(assert (=> b!1670568 m!2036747))

(declare-fun m!2036749 () Bool)

(assert (=> b!1670569 m!2036749))

(declare-fun m!2036751 () Bool)

(assert (=> b!1670571 m!2036751))

(assert (=> b!1670571 m!2035921))

(assert (=> b!1670571 m!2036737))

(assert (=> b!1670571 m!2036737))

(assert (=> b!1670571 m!2036739))

(assert (=> b!1670252 d!505288))

(declare-fun d!505290 () Bool)

(declare-fun fromListB!1011 (List!18478) BalanceConc!12212)

(assert (=> d!505290 (= (seqFromList!2224 lt!629869) (fromListB!1011 lt!629869))))

(declare-fun bs!398073 () Bool)

(assert (= bs!398073 d!505290))

(declare-fun m!2036753 () Bool)

(assert (=> bs!398073 m!2036753))

(assert (=> b!1670252 d!505290))

(declare-fun b!1670591 () Bool)

(declare-fun e!1070511 () Bool)

(declare-fun e!1070512 () Bool)

(assert (=> b!1670591 (= e!1070511 e!1070512)))

(declare-fun res!749185 () Bool)

(assert (=> b!1670591 (=> (not res!749185) (not e!1070512))))

(declare-fun lt!630369 () Option!3536)

(assert (=> b!1670591 (= res!749185 (isDefined!2889 lt!630369))))

(declare-fun b!1670592 () Bool)

(declare-fun e!1070510 () Option!3536)

(declare-fun call!106584 () Option!3536)

(assert (=> b!1670592 (= e!1070510 call!106584)))

(declare-fun b!1670593 () Bool)

(declare-fun res!749183 () Bool)

(assert (=> b!1670593 (=> (not res!749183) (not e!1070512))))

(assert (=> b!1670593 (= res!749183 (< (size!14651 (_2!10469 (get!5391 lt!630369))) (size!14651 lt!629863)))))

(declare-fun d!505292 () Bool)

(assert (=> d!505292 e!1070511))

(declare-fun res!749182 () Bool)

(assert (=> d!505292 (=> res!749182 e!1070511)))

(assert (=> d!505292 (= res!749182 (isEmpty!11475 lt!630369))))

(assert (=> d!505292 (= lt!630369 e!1070510)))

(declare-fun c!271859 () Bool)

(assert (=> d!505292 (= c!271859 (and ((_ is Cons!18409) rules!1846) ((_ is Nil!18409) (t!152588 rules!1846))))))

(declare-fun lt!630366 () Unit!31285)

(declare-fun lt!630365 () Unit!31285)

(assert (=> d!505292 (= lt!630366 lt!630365)))

(assert (=> d!505292 (isPrefix!1501 lt!629863 lt!629863)))

(declare-fun lemmaIsPrefixRefl!1020 (List!18478 List!18478) Unit!31285)

(assert (=> d!505292 (= lt!630365 (lemmaIsPrefixRefl!1020 lt!629863 lt!629863))))

(declare-fun rulesValidInductive!1042 (LexerInterface!2872 List!18479) Bool)

(assert (=> d!505292 (rulesValidInductive!1042 thiss!17113 rules!1846)))

(assert (=> d!505292 (= (maxPrefix!1432 thiss!17113 rules!1846 lt!629863) lt!630369)))

(declare-fun b!1670594 () Bool)

(declare-fun contains!3220 (List!18479 Rule!6286) Bool)

(assert (=> b!1670594 (= e!1070512 (contains!3220 rules!1846 (rule!5133 (_1!10469 (get!5391 lt!630369)))))))

(declare-fun b!1670595 () Bool)

(declare-fun lt!630368 () Option!3536)

(declare-fun lt!630367 () Option!3536)

(assert (=> b!1670595 (= e!1070510 (ite (and ((_ is None!3535) lt!630368) ((_ is None!3535) lt!630367)) None!3535 (ite ((_ is None!3535) lt!630367) lt!630368 (ite ((_ is None!3535) lt!630368) lt!630367 (ite (>= (size!14646 (_1!10469 (v!24802 lt!630368))) (size!14646 (_1!10469 (v!24802 lt!630367)))) lt!630368 lt!630367)))))))

(assert (=> b!1670595 (= lt!630368 call!106584)))

(assert (=> b!1670595 (= lt!630367 (maxPrefix!1432 thiss!17113 (t!152588 rules!1846) lt!629863))))

(declare-fun b!1670596 () Bool)

(declare-fun res!749184 () Bool)

(assert (=> b!1670596 (=> (not res!749184) (not e!1070512))))

(declare-fun apply!4969 (TokenValueInjection!6326 BalanceConc!12212) TokenValue!3333)

(assert (=> b!1670596 (= res!749184 (= (value!102098 (_1!10469 (get!5391 lt!630369))) (apply!4969 (transformation!3243 (rule!5133 (_1!10469 (get!5391 lt!630369)))) (seqFromList!2224 (originalCharacters!4057 (_1!10469 (get!5391 lt!630369)))))))))

(declare-fun b!1670597 () Bool)

(declare-fun res!749186 () Bool)

(assert (=> b!1670597 (=> (not res!749186) (not e!1070512))))

(assert (=> b!1670597 (= res!749186 (= (++!5019 (list!7375 (charsOf!1892 (_1!10469 (get!5391 lt!630369)))) (_2!10469 (get!5391 lt!630369))) lt!629863))))

(declare-fun b!1670598 () Bool)

(declare-fun res!749180 () Bool)

(assert (=> b!1670598 (=> (not res!749180) (not e!1070512))))

(assert (=> b!1670598 (= res!749180 (= (list!7375 (charsOf!1892 (_1!10469 (get!5391 lt!630369)))) (originalCharacters!4057 (_1!10469 (get!5391 lt!630369)))))))

(declare-fun bm!106579 () Bool)

(assert (=> bm!106579 (= call!106584 (maxPrefixOneRule!835 thiss!17113 (h!23810 rules!1846) lt!629863))))

(declare-fun b!1670599 () Bool)

(declare-fun res!749181 () Bool)

(assert (=> b!1670599 (=> (not res!749181) (not e!1070512))))

(assert (=> b!1670599 (= res!749181 (matchR!2062 (regex!3243 (rule!5133 (_1!10469 (get!5391 lt!630369)))) (list!7375 (charsOf!1892 (_1!10469 (get!5391 lt!630369))))))))

(assert (= (and d!505292 c!271859) b!1670592))

(assert (= (and d!505292 (not c!271859)) b!1670595))

(assert (= (or b!1670592 b!1670595) bm!106579))

(assert (= (and d!505292 (not res!749182)) b!1670591))

(assert (= (and b!1670591 res!749185) b!1670598))

(assert (= (and b!1670598 res!749180) b!1670593))

(assert (= (and b!1670593 res!749183) b!1670597))

(assert (= (and b!1670597 res!749186) b!1670596))

(assert (= (and b!1670596 res!749184) b!1670599))

(assert (= (and b!1670599 res!749181) b!1670594))

(declare-fun m!2036755 () Bool)

(assert (=> b!1670599 m!2036755))

(declare-fun m!2036757 () Bool)

(assert (=> b!1670599 m!2036757))

(assert (=> b!1670599 m!2036757))

(declare-fun m!2036759 () Bool)

(assert (=> b!1670599 m!2036759))

(assert (=> b!1670599 m!2036759))

(declare-fun m!2036761 () Bool)

(assert (=> b!1670599 m!2036761))

(declare-fun m!2036763 () Bool)

(assert (=> b!1670595 m!2036763))

(assert (=> b!1670594 m!2036755))

(declare-fun m!2036765 () Bool)

(assert (=> b!1670594 m!2036765))

(assert (=> b!1670596 m!2036755))

(declare-fun m!2036767 () Bool)

(assert (=> b!1670596 m!2036767))

(assert (=> b!1670596 m!2036767))

(declare-fun m!2036769 () Bool)

(assert (=> b!1670596 m!2036769))

(assert (=> b!1670597 m!2036755))

(assert (=> b!1670597 m!2036757))

(assert (=> b!1670597 m!2036757))

(assert (=> b!1670597 m!2036759))

(assert (=> b!1670597 m!2036759))

(declare-fun m!2036771 () Bool)

(assert (=> b!1670597 m!2036771))

(declare-fun m!2036773 () Bool)

(assert (=> d!505292 m!2036773))

(declare-fun m!2036775 () Bool)

(assert (=> d!505292 m!2036775))

(declare-fun m!2036777 () Bool)

(assert (=> d!505292 m!2036777))

(declare-fun m!2036779 () Bool)

(assert (=> d!505292 m!2036779))

(assert (=> b!1670598 m!2036755))

(assert (=> b!1670598 m!2036757))

(assert (=> b!1670598 m!2036757))

(assert (=> b!1670598 m!2036759))

(declare-fun m!2036781 () Bool)

(assert (=> bm!106579 m!2036781))

(assert (=> b!1670593 m!2036755))

(declare-fun m!2036783 () Bool)

(assert (=> b!1670593 m!2036783))

(declare-fun m!2036785 () Bool)

(assert (=> b!1670593 m!2036785))

(declare-fun m!2036787 () Bool)

(assert (=> b!1670591 m!2036787))

(assert (=> b!1670232 d!505292))

(declare-fun d!505294 () Bool)

(assert (=> d!505294 (= (list!7375 lt!629865) (list!7380 (c!271795 lt!629865)))))

(declare-fun bs!398074 () Bool)

(assert (= bs!398074 d!505294))

(declare-fun m!2036789 () Bool)

(assert (=> bs!398074 m!2036789))

(assert (=> b!1670232 d!505294))

(declare-fun d!505296 () Bool)

(declare-fun lt!630396 () BalanceConc!12212)

(declare-fun printListTailRec!417 (LexerInterface!2872 List!18480 List!18478) List!18478)

(declare-fun dropList!720 (BalanceConc!12214 Int) List!18480)

(assert (=> d!505296 (= (list!7375 lt!630396) (printListTailRec!417 thiss!17113 (dropList!720 lt!629878 0) (list!7375 (BalanceConc!12213 Empty!6134))))))

(declare-fun e!1070542 () BalanceConc!12212)

(assert (=> d!505296 (= lt!630396 e!1070542)))

(declare-fun c!271864 () Bool)

(assert (=> d!505296 (= c!271864 (>= 0 (size!14652 lt!629878)))))

(declare-fun e!1070541 () Bool)

(assert (=> d!505296 e!1070541))

(declare-fun res!749196 () Bool)

(assert (=> d!505296 (=> (not res!749196) (not e!1070541))))

(assert (=> d!505296 (= res!749196 (>= 0 0))))

(assert (=> d!505296 (= (printTailRec!923 thiss!17113 lt!629878 0 (BalanceConc!12213 Empty!6134)) lt!630396)))

(declare-fun b!1670638 () Bool)

(assert (=> b!1670638 (= e!1070541 (<= 0 (size!14652 lt!629878)))))

(declare-fun b!1670639 () Bool)

(assert (=> b!1670639 (= e!1070542 (BalanceConc!12213 Empty!6134))))

(declare-fun b!1670640 () Bool)

(assert (=> b!1670640 (= e!1070542 (printTailRec!923 thiss!17113 lt!629878 (+ 0 1) (++!5020 (BalanceConc!12213 Empty!6134) (charsOf!1892 (apply!4968 lt!629878 0)))))))

(declare-fun lt!630392 () List!18480)

(assert (=> b!1670640 (= lt!630392 (list!7376 lt!629878))))

(declare-fun lt!630395 () Unit!31285)

(declare-fun lemmaDropApply!624 (List!18480 Int) Unit!31285)

(assert (=> b!1670640 (= lt!630395 (lemmaDropApply!624 lt!630392 0))))

(declare-fun drop!944 (List!18480 Int) List!18480)

(declare-fun apply!4970 (List!18480 Int) Token!6052)

(assert (=> b!1670640 (= (head!3735 (drop!944 lt!630392 0)) (apply!4970 lt!630392 0))))

(declare-fun lt!630391 () Unit!31285)

(assert (=> b!1670640 (= lt!630391 lt!630395)))

(declare-fun lt!630393 () List!18480)

(assert (=> b!1670640 (= lt!630393 (list!7376 lt!629878))))

(declare-fun lt!630390 () Unit!31285)

(declare-fun lemmaDropTail!604 (List!18480 Int) Unit!31285)

(assert (=> b!1670640 (= lt!630390 (lemmaDropTail!604 lt!630393 0))))

(declare-fun tail!2494 (List!18480) List!18480)

(assert (=> b!1670640 (= (tail!2494 (drop!944 lt!630393 0)) (drop!944 lt!630393 (+ 0 1)))))

(declare-fun lt!630394 () Unit!31285)

(assert (=> b!1670640 (= lt!630394 lt!630390)))

(assert (= (and d!505296 res!749196) b!1670638))

(assert (= (and d!505296 c!271864) b!1670639))

(assert (= (and d!505296 (not c!271864)) b!1670640))

(declare-fun m!2036847 () Bool)

(assert (=> d!505296 m!2036847))

(assert (=> d!505296 m!2036847))

(declare-fun m!2036849 () Bool)

(assert (=> d!505296 m!2036849))

(declare-fun m!2036851 () Bool)

(assert (=> d!505296 m!2036851))

(declare-fun m!2036853 () Bool)

(assert (=> d!505296 m!2036853))

(declare-fun m!2036855 () Bool)

(assert (=> d!505296 m!2036855))

(assert (=> d!505296 m!2036849))

(assert (=> b!1670638 m!2036855))

(declare-fun m!2036857 () Bool)

(assert (=> b!1670640 m!2036857))

(declare-fun m!2036859 () Bool)

(assert (=> b!1670640 m!2036859))

(declare-fun m!2036861 () Bool)

(assert (=> b!1670640 m!2036861))

(declare-fun m!2036863 () Bool)

(assert (=> b!1670640 m!2036863))

(declare-fun m!2036865 () Bool)

(assert (=> b!1670640 m!2036865))

(declare-fun m!2036867 () Bool)

(assert (=> b!1670640 m!2036867))

(assert (=> b!1670640 m!2036863))

(declare-fun m!2036869 () Bool)

(assert (=> b!1670640 m!2036869))

(declare-fun m!2036871 () Bool)

(assert (=> b!1670640 m!2036871))

(assert (=> b!1670640 m!2036869))

(assert (=> b!1670640 m!2036865))

(declare-fun m!2036873 () Bool)

(assert (=> b!1670640 m!2036873))

(declare-fun m!2036875 () Bool)

(assert (=> b!1670640 m!2036875))

(assert (=> b!1670640 m!2036875))

(declare-fun m!2036877 () Bool)

(assert (=> b!1670640 m!2036877))

(declare-fun m!2036879 () Bool)

(assert (=> b!1670640 m!2036879))

(assert (=> b!1670640 m!2036871))

(declare-fun m!2036881 () Bool)

(assert (=> b!1670640 m!2036881))

(assert (=> b!1670232 d!505296))

(declare-fun d!505320 () Bool)

(declare-fun c!271867 () Bool)

(assert (=> d!505320 (= c!271867 ((_ is Cons!18410) (Cons!18410 (h!23811 tokens!457) Nil!18410)))))

(declare-fun e!1070557 () List!18478)

(assert (=> d!505320 (= (printList!985 thiss!17113 (Cons!18410 (h!23811 tokens!457) Nil!18410)) e!1070557)))

(declare-fun b!1670661 () Bool)

(assert (=> b!1670661 (= e!1070557 (++!5019 (list!7375 (charsOf!1892 (h!23811 (Cons!18410 (h!23811 tokens!457) Nil!18410)))) (printList!985 thiss!17113 (t!152589 (Cons!18410 (h!23811 tokens!457) Nil!18410)))))))

(declare-fun b!1670662 () Bool)

(assert (=> b!1670662 (= e!1070557 Nil!18408)))

(assert (= (and d!505320 c!271867) b!1670661))

(assert (= (and d!505320 (not c!271867)) b!1670662))

(declare-fun m!2036891 () Bool)

(assert (=> b!1670661 m!2036891))

(assert (=> b!1670661 m!2036891))

(declare-fun m!2036893 () Bool)

(assert (=> b!1670661 m!2036893))

(declare-fun m!2036895 () Bool)

(assert (=> b!1670661 m!2036895))

(assert (=> b!1670661 m!2036893))

(assert (=> b!1670661 m!2036895))

(declare-fun m!2036897 () Bool)

(assert (=> b!1670661 m!2036897))

(assert (=> b!1670232 d!505320))

(declare-fun d!505322 () Bool)

(declare-fun e!1070577 () Bool)

(assert (=> d!505322 e!1070577))

(declare-fun res!749199 () Bool)

(assert (=> d!505322 (=> (not res!749199) (not e!1070577))))

(declare-fun lt!630399 () BalanceConc!12214)

(assert (=> d!505322 (= res!749199 (= (list!7376 lt!630399) (Cons!18410 (h!23811 tokens!457) Nil!18410)))))

(declare-fun singleton!784 (Token!6052) BalanceConc!12214)

(assert (=> d!505322 (= lt!630399 (singleton!784 (h!23811 tokens!457)))))

(assert (=> d!505322 (= (singletonSeq!1755 (h!23811 tokens!457)) lt!630399)))

(declare-fun b!1670689 () Bool)

(assert (=> b!1670689 (= e!1070577 (isBalanced!1910 (c!271797 lt!630399)))))

(assert (= (and d!505322 res!749199) b!1670689))

(declare-fun m!2036903 () Bool)

(assert (=> d!505322 m!2036903))

(declare-fun m!2036905 () Bool)

(assert (=> d!505322 m!2036905))

(declare-fun m!2036907 () Bool)

(assert (=> b!1670689 m!2036907))

(assert (=> b!1670232 d!505322))

(declare-fun d!505324 () Bool)

(declare-fun lt!630402 () BalanceConc!12212)

(assert (=> d!505324 (= (list!7375 lt!630402) (printList!985 thiss!17113 (list!7376 lt!629878)))))

(assert (=> d!505324 (= lt!630402 (printTailRec!923 thiss!17113 lt!629878 0 (BalanceConc!12213 Empty!6134)))))

(assert (=> d!505324 (= (print!1403 thiss!17113 lt!629878) lt!630402)))

(declare-fun bs!398082 () Bool)

(assert (= bs!398082 d!505324))

(declare-fun m!2036909 () Bool)

(assert (=> bs!398082 m!2036909))

(assert (=> bs!398082 m!2036857))

(assert (=> bs!398082 m!2036857))

(declare-fun m!2036911 () Bool)

(assert (=> bs!398082 m!2036911))

(assert (=> bs!398082 m!2035951))

(assert (=> b!1670232 d!505324))

(declare-fun d!505326 () Bool)

(declare-fun res!749205 () Bool)

(declare-fun e!1070582 () Bool)

(assert (=> d!505326 (=> res!749205 e!1070582)))

(assert (=> d!505326 (= res!749205 (or (not ((_ is Cons!18410) tokens!457)) (not ((_ is Cons!18410) (t!152589 tokens!457)))))))

(assert (=> d!505326 (= (tokensListTwoByTwoPredicateSeparableList!565 thiss!17113 tokens!457 rules!1846) e!1070582)))

(declare-fun b!1670694 () Bool)

(declare-fun e!1070583 () Bool)

(assert (=> b!1670694 (= e!1070582 e!1070583)))

(declare-fun res!749204 () Bool)

(assert (=> b!1670694 (=> (not res!749204) (not e!1070583))))

(assert (=> b!1670694 (= res!749204 (separableTokensPredicate!812 thiss!17113 (h!23811 tokens!457) (h!23811 (t!152589 tokens!457)) rules!1846))))

(declare-fun lt!630423 () Unit!31285)

(declare-fun Unit!31322 () Unit!31285)

(assert (=> b!1670694 (= lt!630423 Unit!31322)))

(assert (=> b!1670694 (> (size!14650 (charsOf!1892 (h!23811 (t!152589 tokens!457)))) 0)))

(declare-fun lt!630419 () Unit!31285)

(declare-fun Unit!31323 () Unit!31285)

(assert (=> b!1670694 (= lt!630419 Unit!31323)))

(assert (=> b!1670694 (rulesProduceIndividualToken!1520 thiss!17113 rules!1846 (h!23811 (t!152589 tokens!457)))))

(declare-fun lt!630418 () Unit!31285)

(declare-fun Unit!31324 () Unit!31285)

(assert (=> b!1670694 (= lt!630418 Unit!31324)))

(assert (=> b!1670694 (rulesProduceIndividualToken!1520 thiss!17113 rules!1846 (h!23811 tokens!457))))

(declare-fun lt!630420 () Unit!31285)

(declare-fun lt!630422 () Unit!31285)

(assert (=> b!1670694 (= lt!630420 lt!630422)))

(assert (=> b!1670694 (rulesProduceIndividualToken!1520 thiss!17113 rules!1846 (h!23811 (t!152589 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!632 (LexerInterface!2872 List!18479 List!18480 Token!6052) Unit!31285)

(assert (=> b!1670694 (= lt!630422 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!632 thiss!17113 rules!1846 tokens!457 (h!23811 (t!152589 tokens!457))))))

(declare-fun lt!630421 () Unit!31285)

(declare-fun lt!630417 () Unit!31285)

(assert (=> b!1670694 (= lt!630421 lt!630417)))

(assert (=> b!1670694 (rulesProduceIndividualToken!1520 thiss!17113 rules!1846 (h!23811 tokens!457))))

(assert (=> b!1670694 (= lt!630417 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!632 thiss!17113 rules!1846 tokens!457 (h!23811 tokens!457)))))

(declare-fun b!1670695 () Bool)

(assert (=> b!1670695 (= e!1070583 (tokensListTwoByTwoPredicateSeparableList!565 thiss!17113 (Cons!18410 (h!23811 (t!152589 tokens!457)) (t!152589 (t!152589 tokens!457))) rules!1846))))

(assert (= (and d!505326 (not res!749205)) b!1670694))

(assert (= (and b!1670694 res!749204) b!1670695))

(declare-fun m!2036913 () Bool)

(assert (=> b!1670694 m!2036913))

(assert (=> b!1670694 m!2035911))

(assert (=> b!1670694 m!2035949))

(assert (=> b!1670694 m!2035997))

(declare-fun m!2036915 () Bool)

(assert (=> b!1670694 m!2036915))

(declare-fun m!2036917 () Bool)

(assert (=> b!1670694 m!2036917))

(assert (=> b!1670694 m!2035911))

(assert (=> b!1670694 m!2036123))

(declare-fun m!2036919 () Bool)

(assert (=> b!1670695 m!2036919))

(assert (=> b!1670234 d!505326))

(declare-fun d!505328 () Bool)

(assert (=> d!505328 (= (inv!23760 (tag!3527 (h!23810 rules!1846))) (= (mod (str.len (value!102097 (tag!3527 (h!23810 rules!1846)))) 2) 0))))

(assert (=> b!1670233 d!505328))

(declare-fun d!505330 () Bool)

(declare-fun res!749208 () Bool)

(declare-fun e!1070586 () Bool)

(assert (=> d!505330 (=> (not res!749208) (not e!1070586))))

(declare-fun semiInverseModEq!1268 (Int Int) Bool)

(assert (=> d!505330 (= res!749208 (semiInverseModEq!1268 (toChars!4569 (transformation!3243 (h!23810 rules!1846))) (toValue!4710 (transformation!3243 (h!23810 rules!1846)))))))

(assert (=> d!505330 (= (inv!23763 (transformation!3243 (h!23810 rules!1846))) e!1070586)))

(declare-fun b!1670698 () Bool)

(declare-fun equivClasses!1209 (Int Int) Bool)

(assert (=> b!1670698 (= e!1070586 (equivClasses!1209 (toChars!4569 (transformation!3243 (h!23810 rules!1846))) (toValue!4710 (transformation!3243 (h!23810 rules!1846)))))))

(assert (= (and d!505330 res!749208) b!1670698))

(declare-fun m!2036921 () Bool)

(assert (=> d!505330 m!2036921))

(declare-fun m!2036923 () Bool)

(assert (=> b!1670698 m!2036923))

(assert (=> b!1670233 d!505330))

(declare-fun d!505332 () Bool)

(declare-fun res!749211 () Bool)

(declare-fun e!1070589 () Bool)

(assert (=> d!505332 (=> (not res!749211) (not e!1070589))))

(declare-fun rulesValid!1196 (LexerInterface!2872 List!18479) Bool)

(assert (=> d!505332 (= res!749211 (rulesValid!1196 thiss!17113 rules!1846))))

(assert (=> d!505332 (= (rulesInvariant!2541 thiss!17113 rules!1846) e!1070589)))

(declare-fun b!1670701 () Bool)

(declare-datatypes ((List!18486 0))(
  ( (Nil!18416) (Cons!18416 (h!23817 String!20997) (t!152637 List!18486)) )
))
(declare-fun noDuplicateTag!1196 (LexerInterface!2872 List!18479 List!18486) Bool)

(assert (=> b!1670701 (= e!1070589 (noDuplicateTag!1196 thiss!17113 rules!1846 Nil!18416))))

(assert (= (and d!505332 res!749211) b!1670701))

(declare-fun m!2036925 () Bool)

(assert (=> d!505332 m!2036925))

(declare-fun m!2036927 () Bool)

(assert (=> b!1670701 m!2036927))

(assert (=> b!1670244 d!505332))

(declare-fun d!505334 () Bool)

(assert (=> d!505334 (= (inv!23760 (tag!3527 (rule!5133 (h!23811 tokens!457)))) (= (mod (str.len (value!102097 (tag!3527 (rule!5133 (h!23811 tokens!457))))) 2) 0))))

(assert (=> b!1670246 d!505334))

(declare-fun d!505336 () Bool)

(declare-fun res!749212 () Bool)

(declare-fun e!1070590 () Bool)

(assert (=> d!505336 (=> (not res!749212) (not e!1070590))))

(assert (=> d!505336 (= res!749212 (semiInverseModEq!1268 (toChars!4569 (transformation!3243 (rule!5133 (h!23811 tokens!457)))) (toValue!4710 (transformation!3243 (rule!5133 (h!23811 tokens!457))))))))

(assert (=> d!505336 (= (inv!23763 (transformation!3243 (rule!5133 (h!23811 tokens!457)))) e!1070590)))

(declare-fun b!1670702 () Bool)

(assert (=> b!1670702 (= e!1070590 (equivClasses!1209 (toChars!4569 (transformation!3243 (rule!5133 (h!23811 tokens!457)))) (toValue!4710 (transformation!3243 (rule!5133 (h!23811 tokens!457))))))))

(assert (= (and d!505336 res!749212) b!1670702))

(declare-fun m!2036929 () Bool)

(assert (=> d!505336 m!2036929))

(declare-fun m!2036931 () Bool)

(assert (=> b!1670702 m!2036931))

(assert (=> b!1670246 d!505336))

(declare-fun d!505338 () Bool)

(declare-fun res!749217 () Bool)

(declare-fun e!1070593 () Bool)

(assert (=> d!505338 (=> (not res!749217) (not e!1070593))))

(assert (=> d!505338 (= res!749217 (not (isEmpty!11473 (originalCharacters!4057 (h!23811 tokens!457)))))))

(assert (=> d!505338 (= (inv!23764 (h!23811 tokens!457)) e!1070593)))

(declare-fun b!1670707 () Bool)

(declare-fun res!749218 () Bool)

(assert (=> b!1670707 (=> (not res!749218) (not e!1070593))))

(assert (=> b!1670707 (= res!749218 (= (originalCharacters!4057 (h!23811 tokens!457)) (list!7375 (dynLambda!8305 (toChars!4569 (transformation!3243 (rule!5133 (h!23811 tokens!457)))) (value!102098 (h!23811 tokens!457))))))))

(declare-fun b!1670708 () Bool)

(assert (=> b!1670708 (= e!1070593 (= (size!14646 (h!23811 tokens!457)) (size!14651 (originalCharacters!4057 (h!23811 tokens!457)))))))

(assert (= (and d!505338 res!749217) b!1670707))

(assert (= (and b!1670707 res!749218) b!1670708))

(declare-fun b_lambda!52475 () Bool)

(assert (=> (not b_lambda!52475) (not b!1670707)))

(declare-fun t!152621 () Bool)

(declare-fun tb!95859 () Bool)

(assert (=> (and b!1670230 (= (toChars!4569 (transformation!3243 (rule!5133 (h!23811 tokens!457)))) (toChars!4569 (transformation!3243 (rule!5133 (h!23811 tokens!457))))) t!152621) tb!95859))

(declare-fun b!1670709 () Bool)

(declare-fun e!1070594 () Bool)

(declare-fun tp!482208 () Bool)

(assert (=> b!1670709 (= e!1070594 (and (inv!23767 (c!271795 (dynLambda!8305 (toChars!4569 (transformation!3243 (rule!5133 (h!23811 tokens!457)))) (value!102098 (h!23811 tokens!457))))) tp!482208))))

(declare-fun result!115830 () Bool)

(assert (=> tb!95859 (= result!115830 (and (inv!23768 (dynLambda!8305 (toChars!4569 (transformation!3243 (rule!5133 (h!23811 tokens!457)))) (value!102098 (h!23811 tokens!457)))) e!1070594))))

(assert (= tb!95859 b!1670709))

(declare-fun m!2036933 () Bool)

(assert (=> b!1670709 m!2036933))

(declare-fun m!2036935 () Bool)

(assert (=> tb!95859 m!2036935))

(assert (=> b!1670707 t!152621))

(declare-fun b_and!118805 () Bool)

(assert (= b_and!118781 (and (=> t!152621 result!115830) b_and!118805)))

(declare-fun t!152623 () Bool)

(declare-fun tb!95861 () Bool)

(assert (=> (and b!1670237 (= (toChars!4569 (transformation!3243 (h!23810 rules!1846))) (toChars!4569 (transformation!3243 (rule!5133 (h!23811 tokens!457))))) t!152623) tb!95861))

(declare-fun result!115832 () Bool)

(assert (= result!115832 result!115830))

(assert (=> b!1670707 t!152623))

(declare-fun b_and!118807 () Bool)

(assert (= b_and!118783 (and (=> t!152623 result!115832) b_and!118807)))

(declare-fun m!2036937 () Bool)

(assert (=> d!505338 m!2036937))

(declare-fun m!2036939 () Bool)

(assert (=> b!1670707 m!2036939))

(assert (=> b!1670707 m!2036939))

(declare-fun m!2036941 () Bool)

(assert (=> b!1670707 m!2036941))

(declare-fun m!2036943 () Bool)

(assert (=> b!1670708 m!2036943))

(assert (=> b!1670247 d!505338))

(declare-fun d!505340 () Bool)

(declare-fun lt!630424 () BalanceConc!12212)

(assert (=> d!505340 (= (list!7375 lt!630424) (printList!985 thiss!17113 (list!7376 (seqFromList!2223 tokens!457))))))

(assert (=> d!505340 (= lt!630424 (printTailRec!923 thiss!17113 (seqFromList!2223 tokens!457) 0 (BalanceConc!12213 Empty!6134)))))

(assert (=> d!505340 (= (print!1403 thiss!17113 (seqFromList!2223 tokens!457)) lt!630424)))

(declare-fun bs!398083 () Bool)

(assert (= bs!398083 d!505340))

(declare-fun m!2036945 () Bool)

(assert (=> bs!398083 m!2036945))

(assert (=> bs!398083 m!2035977))

(declare-fun m!2036947 () Bool)

(assert (=> bs!398083 m!2036947))

(assert (=> bs!398083 m!2036947))

(declare-fun m!2036949 () Bool)

(assert (=> bs!398083 m!2036949))

(assert (=> bs!398083 m!2035977))

(declare-fun m!2036951 () Bool)

(assert (=> bs!398083 m!2036951))

(assert (=> b!1670236 d!505340))

(declare-fun d!505342 () Bool)

(assert (=> d!505342 (= (list!7375 lt!629871) (list!7380 (c!271795 lt!629871)))))

(declare-fun bs!398084 () Bool)

(assert (= bs!398084 d!505342))

(declare-fun m!2036953 () Bool)

(assert (=> bs!398084 m!2036953))

(assert (=> b!1670236 d!505342))

(declare-fun d!505344 () Bool)

(assert (=> d!505344 (= (list!7375 lt!629879) (list!7380 (c!271795 lt!629879)))))

(declare-fun bs!398085 () Bool)

(assert (= bs!398085 d!505344))

(declare-fun m!2036955 () Bool)

(assert (=> bs!398085 m!2036955))

(assert (=> b!1670236 d!505344))

(declare-fun d!505346 () Bool)

(assert (=> d!505346 (= (list!7375 lt!629876) (list!7380 (c!271795 lt!629876)))))

(declare-fun bs!398086 () Bool)

(assert (= bs!398086 d!505346))

(declare-fun m!2036957 () Bool)

(assert (=> bs!398086 m!2036957))

(assert (=> b!1670236 d!505346))

(declare-fun d!505348 () Bool)

(assert (=> d!505348 (= (seqFromList!2223 tokens!457) (fromListB!1010 tokens!457))))

(declare-fun bs!398087 () Bool)

(assert (= bs!398087 d!505348))

(declare-fun m!2036959 () Bool)

(assert (=> bs!398087 m!2036959))

(assert (=> b!1670236 d!505348))

(declare-fun b!1670710 () Bool)

(declare-fun e!1070596 () Bool)

(declare-fun e!1070597 () Bool)

(assert (=> b!1670710 (= e!1070596 e!1070597)))

(declare-fun res!749221 () Bool)

(declare-fun lt!630425 () tuple2!18132)

(assert (=> b!1670710 (= res!749221 (< (size!14650 (_2!10468 lt!630425)) (size!14650 lt!629876)))))

(assert (=> b!1670710 (=> (not res!749221) (not e!1070597))))

(declare-fun d!505350 () Bool)

(declare-fun e!1070595 () Bool)

(assert (=> d!505350 e!1070595))

(declare-fun res!749219 () Bool)

(assert (=> d!505350 (=> (not res!749219) (not e!1070595))))

(assert (=> d!505350 (= res!749219 e!1070596)))

(declare-fun c!271868 () Bool)

(assert (=> d!505350 (= c!271868 (> (size!14652 (_1!10468 lt!630425)) 0))))

(assert (=> d!505350 (= lt!630425 (lexTailRecV2!620 thiss!17113 rules!1846 lt!629876 (BalanceConc!12213 Empty!6134) lt!629876 (BalanceConc!12215 Empty!6135)))))

(assert (=> d!505350 (= (lex!1356 thiss!17113 rules!1846 lt!629876) lt!630425)))

(declare-fun b!1670711 () Bool)

(assert (=> b!1670711 (= e!1070597 (not (isEmpty!11467 (_1!10468 lt!630425))))))

(declare-fun b!1670712 () Bool)

(declare-fun res!749220 () Bool)

(assert (=> b!1670712 (=> (not res!749220) (not e!1070595))))

(assert (=> b!1670712 (= res!749220 (= (list!7376 (_1!10468 lt!630425)) (_1!10471 (lexList!897 thiss!17113 rules!1846 (list!7375 lt!629876)))))))

(declare-fun b!1670713 () Bool)

(assert (=> b!1670713 (= e!1070595 (= (list!7375 (_2!10468 lt!630425)) (_2!10471 (lexList!897 thiss!17113 rules!1846 (list!7375 lt!629876)))))))

(declare-fun b!1670714 () Bool)

(assert (=> b!1670714 (= e!1070596 (= (_2!10468 lt!630425) lt!629876))))

(assert (= (and d!505350 c!271868) b!1670710))

(assert (= (and d!505350 (not c!271868)) b!1670714))

(assert (= (and b!1670710 res!749221) b!1670711))

(assert (= (and d!505350 res!749219) b!1670712))

(assert (= (and b!1670712 res!749220) b!1670713))

(declare-fun m!2036961 () Bool)

(assert (=> b!1670712 m!2036961))

(assert (=> b!1670712 m!2035969))

(assert (=> b!1670712 m!2035969))

(declare-fun m!2036963 () Bool)

(assert (=> b!1670712 m!2036963))

(declare-fun m!2036965 () Bool)

(assert (=> d!505350 m!2036965))

(declare-fun m!2036967 () Bool)

(assert (=> d!505350 m!2036967))

(declare-fun m!2036969 () Bool)

(assert (=> b!1670710 m!2036969))

(declare-fun m!2036971 () Bool)

(assert (=> b!1670710 m!2036971))

(declare-fun m!2036973 () Bool)

(assert (=> b!1670711 m!2036973))

(declare-fun m!2036975 () Bool)

(assert (=> b!1670713 m!2036975))

(assert (=> b!1670713 m!2035969))

(assert (=> b!1670713 m!2035969))

(assert (=> b!1670713 m!2036963))

(assert (=> b!1670236 d!505350))

(declare-fun d!505352 () Bool)

(declare-fun lt!630426 () BalanceConc!12212)

(assert (=> d!505352 (= (list!7375 lt!630426) (originalCharacters!4057 (h!23811 tokens!457)))))

(assert (=> d!505352 (= lt!630426 (dynLambda!8305 (toChars!4569 (transformation!3243 (rule!5133 (h!23811 tokens!457)))) (value!102098 (h!23811 tokens!457))))))

(assert (=> d!505352 (= (charsOf!1892 (h!23811 tokens!457)) lt!630426)))

(declare-fun b_lambda!52477 () Bool)

(assert (=> (not b_lambda!52477) (not d!505352)))

(assert (=> d!505352 t!152621))

(declare-fun b_and!118809 () Bool)

(assert (= b_and!118805 (and (=> t!152621 result!115830) b_and!118809)))

(assert (=> d!505352 t!152623))

(declare-fun b_and!118811 () Bool)

(assert (= b_and!118807 (and (=> t!152623 result!115832) b_and!118811)))

(declare-fun m!2036977 () Bool)

(assert (=> d!505352 m!2036977))

(assert (=> d!505352 m!2036939))

(assert (=> b!1670236 d!505352))

(declare-fun d!505354 () Bool)

(declare-fun lt!630427 () BalanceConc!12212)

(assert (=> d!505354 (= (list!7375 lt!630427) (printList!985 thiss!17113 (list!7376 lt!629883)))))

(assert (=> d!505354 (= lt!630427 (printTailRec!923 thiss!17113 lt!629883 0 (BalanceConc!12213 Empty!6134)))))

(assert (=> d!505354 (= (print!1403 thiss!17113 lt!629883) lt!630427)))

(declare-fun bs!398088 () Bool)

(assert (= bs!398088 d!505354))

(declare-fun m!2036979 () Bool)

(assert (=> bs!398088 m!2036979))

(assert (=> bs!398088 m!2035933))

(assert (=> bs!398088 m!2035933))

(declare-fun m!2036981 () Bool)

(assert (=> bs!398088 m!2036981))

(declare-fun m!2036983 () Bool)

(assert (=> bs!398088 m!2036983))

(assert (=> b!1670236 d!505354))

(declare-fun b!1670717 () Bool)

(declare-fun res!749223 () Bool)

(declare-fun e!1070599 () Bool)

(assert (=> b!1670717 (=> (not res!749223) (not e!1070599))))

(declare-fun lt!630428 () List!18478)

(assert (=> b!1670717 (= res!749223 (= (size!14651 lt!630428) (+ (size!14651 lt!629869) (size!14651 lt!629866))))))

(declare-fun b!1670716 () Bool)

(declare-fun e!1070598 () List!18478)

(assert (=> b!1670716 (= e!1070598 (Cons!18408 (h!23809 lt!629869) (++!5019 (t!152587 lt!629869) lt!629866)))))

(declare-fun b!1670718 () Bool)

(assert (=> b!1670718 (= e!1070599 (or (not (= lt!629866 Nil!18408)) (= lt!630428 lt!629869)))))

(declare-fun b!1670715 () Bool)

(assert (=> b!1670715 (= e!1070598 lt!629866)))

(declare-fun d!505356 () Bool)

(assert (=> d!505356 e!1070599))

(declare-fun res!749222 () Bool)

(assert (=> d!505356 (=> (not res!749222) (not e!1070599))))

(assert (=> d!505356 (= res!749222 (= (content!2575 lt!630428) ((_ map or) (content!2575 lt!629869) (content!2575 lt!629866))))))

(assert (=> d!505356 (= lt!630428 e!1070598)))

(declare-fun c!271869 () Bool)

(assert (=> d!505356 (= c!271869 ((_ is Nil!18408) lt!629869))))

(assert (=> d!505356 (= (++!5019 lt!629869 lt!629866) lt!630428)))

(assert (= (and d!505356 c!271869) b!1670715))

(assert (= (and d!505356 (not c!271869)) b!1670716))

(assert (= (and d!505356 res!749222) b!1670717))

(assert (= (and b!1670717 res!749223) b!1670718))

(declare-fun m!2036985 () Bool)

(assert (=> b!1670717 m!2036985))

(assert (=> b!1670717 m!2036565))

(declare-fun m!2036987 () Bool)

(assert (=> b!1670717 m!2036987))

(declare-fun m!2036989 () Bool)

(assert (=> b!1670716 m!2036989))

(declare-fun m!2036991 () Bool)

(assert (=> d!505356 m!2036991))

(assert (=> d!505356 m!2036613))

(declare-fun m!2036993 () Bool)

(assert (=> d!505356 m!2036993))

(assert (=> b!1670236 d!505356))

(declare-fun d!505358 () Bool)

(assert (=> d!505358 (= (seqFromList!2223 (t!152589 tokens!457)) (fromListB!1010 (t!152589 tokens!457)))))

(declare-fun bs!398089 () Bool)

(assert (= bs!398089 d!505358))

(declare-fun m!2036995 () Bool)

(assert (=> bs!398089 m!2036995))

(assert (=> b!1670236 d!505358))

(declare-fun b!1670723 () Bool)

(declare-fun e!1070602 () Bool)

(declare-fun tp_is_empty!7417 () Bool)

(declare-fun tp!482211 () Bool)

(assert (=> b!1670723 (= e!1070602 (and tp_is_empty!7417 tp!482211))))

(assert (=> b!1670248 (= tp!482145 e!1070602)))

(assert (= (and b!1670248 ((_ is Cons!18408) (originalCharacters!4057 (h!23811 tokens!457)))) b!1670723))

(declare-fun b!1670737 () Bool)

(declare-fun e!1070605 () Bool)

(declare-fun tp!482224 () Bool)

(declare-fun tp!482223 () Bool)

(assert (=> b!1670737 (= e!1070605 (and tp!482224 tp!482223))))

(assert (=> b!1670233 (= tp!482150 e!1070605)))

(declare-fun b!1670734 () Bool)

(assert (=> b!1670734 (= e!1070605 tp_is_empty!7417)))

(declare-fun b!1670735 () Bool)

(declare-fun tp!482222 () Bool)

(declare-fun tp!482225 () Bool)

(assert (=> b!1670735 (= e!1070605 (and tp!482222 tp!482225))))

(declare-fun b!1670736 () Bool)

(declare-fun tp!482226 () Bool)

(assert (=> b!1670736 (= e!1070605 tp!482226)))

(assert (= (and b!1670233 ((_ is ElementMatch!4571) (regex!3243 (h!23810 rules!1846)))) b!1670734))

(assert (= (and b!1670233 ((_ is Concat!7905) (regex!3243 (h!23810 rules!1846)))) b!1670735))

(assert (= (and b!1670233 ((_ is Star!4571) (regex!3243 (h!23810 rules!1846)))) b!1670736))

(assert (= (and b!1670233 ((_ is Union!4571) (regex!3243 (h!23810 rules!1846)))) b!1670737))

(declare-fun b!1670741 () Bool)

(declare-fun e!1070606 () Bool)

(declare-fun tp!482229 () Bool)

(declare-fun tp!482228 () Bool)

(assert (=> b!1670741 (= e!1070606 (and tp!482229 tp!482228))))

(assert (=> b!1670246 (= tp!482144 e!1070606)))

(declare-fun b!1670738 () Bool)

(assert (=> b!1670738 (= e!1070606 tp_is_empty!7417)))

(declare-fun b!1670739 () Bool)

(declare-fun tp!482227 () Bool)

(declare-fun tp!482230 () Bool)

(assert (=> b!1670739 (= e!1070606 (and tp!482227 tp!482230))))

(declare-fun b!1670740 () Bool)

(declare-fun tp!482231 () Bool)

(assert (=> b!1670740 (= e!1070606 tp!482231)))

(assert (= (and b!1670246 ((_ is ElementMatch!4571) (regex!3243 (rule!5133 (h!23811 tokens!457))))) b!1670738))

(assert (= (and b!1670246 ((_ is Concat!7905) (regex!3243 (rule!5133 (h!23811 tokens!457))))) b!1670739))

(assert (= (and b!1670246 ((_ is Star!4571) (regex!3243 (rule!5133 (h!23811 tokens!457))))) b!1670740))

(assert (= (and b!1670246 ((_ is Union!4571) (regex!3243 (rule!5133 (h!23811 tokens!457))))) b!1670741))

(declare-fun b!1670752 () Bool)

(declare-fun b_free!45431 () Bool)

(declare-fun b_next!46135 () Bool)

(assert (=> b!1670752 (= b_free!45431 (not b_next!46135))))

(declare-fun tp!482241 () Bool)

(declare-fun b_and!118813 () Bool)

(assert (=> b!1670752 (= tp!482241 b_and!118813)))

(declare-fun b_free!45433 () Bool)

(declare-fun b_next!46137 () Bool)

(assert (=> b!1670752 (= b_free!45433 (not b_next!46137))))

(declare-fun tb!95863 () Bool)

(declare-fun t!152625 () Bool)

(assert (=> (and b!1670752 (= (toChars!4569 (transformation!3243 (h!23810 (t!152588 rules!1846)))) (toChars!4569 (transformation!3243 (rule!5133 (h!23811 (t!152589 tokens!457)))))) t!152625) tb!95863))

(declare-fun result!115840 () Bool)

(assert (= result!115840 result!115798))

(assert (=> d!505188 t!152625))

(declare-fun tb!95865 () Bool)

(declare-fun t!152627 () Bool)

(assert (=> (and b!1670752 (= (toChars!4569 (transformation!3243 (h!23810 (t!152588 rules!1846)))) (toChars!4569 (transformation!3243 (rule!5133 (h!23811 tokens!457))))) t!152627) tb!95865))

(declare-fun result!115842 () Bool)

(assert (= result!115842 result!115830))

(assert (=> b!1670707 t!152627))

(assert (=> d!505352 t!152627))

(declare-fun b_and!118815 () Bool)

(declare-fun tp!482242 () Bool)

(assert (=> b!1670752 (= tp!482242 (and (=> t!152625 result!115840) (=> t!152627 result!115842) b_and!118815))))

(declare-fun e!1070617 () Bool)

(assert (=> b!1670752 (= e!1070617 (and tp!482241 tp!482242))))

(declare-fun tp!482243 () Bool)

(declare-fun b!1670751 () Bool)

(declare-fun e!1070616 () Bool)

(assert (=> b!1670751 (= e!1070616 (and tp!482243 (inv!23760 (tag!3527 (h!23810 (t!152588 rules!1846)))) (inv!23763 (transformation!3243 (h!23810 (t!152588 rules!1846)))) e!1070617))))

(declare-fun b!1670750 () Bool)

(declare-fun e!1070615 () Bool)

(declare-fun tp!482240 () Bool)

(assert (=> b!1670750 (= e!1070615 (and e!1070616 tp!482240))))

(assert (=> b!1670245 (= tp!482142 e!1070615)))

(assert (= b!1670751 b!1670752))

(assert (= b!1670750 b!1670751))

(assert (= (and b!1670245 ((_ is Cons!18409) (t!152588 rules!1846))) b!1670750))

(declare-fun m!2036997 () Bool)

(assert (=> b!1670751 m!2036997))

(declare-fun m!2036999 () Bool)

(assert (=> b!1670751 m!2036999))

(declare-fun b!1670766 () Bool)

(declare-fun b_free!45435 () Bool)

(declare-fun b_next!46139 () Bool)

(assert (=> b!1670766 (= b_free!45435 (not b_next!46139))))

(declare-fun tp!482254 () Bool)

(declare-fun b_and!118817 () Bool)

(assert (=> b!1670766 (= tp!482254 b_and!118817)))

(declare-fun b_free!45437 () Bool)

(declare-fun b_next!46141 () Bool)

(assert (=> b!1670766 (= b_free!45437 (not b_next!46141))))

(declare-fun t!152629 () Bool)

(declare-fun tb!95867 () Bool)

(assert (=> (and b!1670766 (= (toChars!4569 (transformation!3243 (rule!5133 (h!23811 (t!152589 tokens!457))))) (toChars!4569 (transformation!3243 (rule!5133 (h!23811 (t!152589 tokens!457)))))) t!152629) tb!95867))

(declare-fun result!115846 () Bool)

(assert (= result!115846 result!115798))

(assert (=> d!505188 t!152629))

(declare-fun t!152631 () Bool)

(declare-fun tb!95869 () Bool)

(assert (=> (and b!1670766 (= (toChars!4569 (transformation!3243 (rule!5133 (h!23811 (t!152589 tokens!457))))) (toChars!4569 (transformation!3243 (rule!5133 (h!23811 tokens!457))))) t!152631) tb!95869))

(declare-fun result!115848 () Bool)

(assert (= result!115848 result!115830))

(assert (=> b!1670707 t!152631))

(assert (=> d!505352 t!152631))

(declare-fun tp!482257 () Bool)

(declare-fun b_and!118819 () Bool)

(assert (=> b!1670766 (= tp!482257 (and (=> t!152629 result!115846) (=> t!152631 result!115848) b_and!118819))))

(declare-fun e!1070632 () Bool)

(declare-fun b!1670763 () Bool)

(declare-fun e!1070635 () Bool)

(declare-fun tp!482256 () Bool)

(assert (=> b!1670763 (= e!1070632 (and (inv!23764 (h!23811 (t!152589 tokens!457))) e!1070635 tp!482256))))

(declare-fun e!1070631 () Bool)

(assert (=> b!1670766 (= e!1070631 (and tp!482254 tp!482257))))

(declare-fun e!1070636 () Bool)

(declare-fun b!1670764 () Bool)

(declare-fun tp!482258 () Bool)

(assert (=> b!1670764 (= e!1070635 (and (inv!21 (value!102098 (h!23811 (t!152589 tokens!457)))) e!1070636 tp!482258))))

(declare-fun tp!482255 () Bool)

(declare-fun b!1670765 () Bool)

(assert (=> b!1670765 (= e!1070636 (and tp!482255 (inv!23760 (tag!3527 (rule!5133 (h!23811 (t!152589 tokens!457))))) (inv!23763 (transformation!3243 (rule!5133 (h!23811 (t!152589 tokens!457))))) e!1070631))))

(assert (=> b!1670247 (= tp!482143 e!1070632)))

(assert (= b!1670765 b!1670766))

(assert (= b!1670764 b!1670765))

(assert (= b!1670763 b!1670764))

(assert (= (and b!1670247 ((_ is Cons!18410) (t!152589 tokens!457))) b!1670763))

(declare-fun m!2037001 () Bool)

(assert (=> b!1670763 m!2037001))

(declare-fun m!2037003 () Bool)

(assert (=> b!1670764 m!2037003))

(declare-fun m!2037005 () Bool)

(assert (=> b!1670765 m!2037005))

(declare-fun m!2037007 () Bool)

(assert (=> b!1670765 m!2037007))

(declare-fun b_lambda!52479 () Bool)

(assert (= b_lambda!52475 (or (and b!1670230 b_free!45417) (and b!1670237 b_free!45421 (= (toChars!4569 (transformation!3243 (h!23810 rules!1846))) (toChars!4569 (transformation!3243 (rule!5133 (h!23811 tokens!457)))))) (and b!1670752 b_free!45433 (= (toChars!4569 (transformation!3243 (h!23810 (t!152588 rules!1846)))) (toChars!4569 (transformation!3243 (rule!5133 (h!23811 tokens!457)))))) (and b!1670766 b_free!45437 (= (toChars!4569 (transformation!3243 (rule!5133 (h!23811 (t!152589 tokens!457))))) (toChars!4569 (transformation!3243 (rule!5133 (h!23811 tokens!457)))))) b_lambda!52479)))

(declare-fun b_lambda!52481 () Bool)

(assert (= b_lambda!52461 (or (and b!1670230 b_free!45417 (= (toChars!4569 (transformation!3243 (rule!5133 (h!23811 tokens!457)))) (toChars!4569 (transformation!3243 (rule!5133 (h!23811 (t!152589 tokens!457))))))) (and b!1670237 b_free!45421 (= (toChars!4569 (transformation!3243 (h!23810 rules!1846))) (toChars!4569 (transformation!3243 (rule!5133 (h!23811 (t!152589 tokens!457))))))) (and b!1670752 b_free!45433 (= (toChars!4569 (transformation!3243 (h!23810 (t!152588 rules!1846)))) (toChars!4569 (transformation!3243 (rule!5133 (h!23811 (t!152589 tokens!457))))))) (and b!1670766 b_free!45437) b_lambda!52481)))

(declare-fun b_lambda!52483 () Bool)

(assert (= b_lambda!52477 (or (and b!1670230 b_free!45417) (and b!1670237 b_free!45421 (= (toChars!4569 (transformation!3243 (h!23810 rules!1846))) (toChars!4569 (transformation!3243 (rule!5133 (h!23811 tokens!457)))))) (and b!1670752 b_free!45433 (= (toChars!4569 (transformation!3243 (h!23810 (t!152588 rules!1846)))) (toChars!4569 (transformation!3243 (rule!5133 (h!23811 tokens!457)))))) (and b!1670766 b_free!45437 (= (toChars!4569 (transformation!3243 (rule!5133 (h!23811 (t!152589 tokens!457))))) (toChars!4569 (transformation!3243 (rule!5133 (h!23811 tokens!457)))))) b_lambda!52483)))

(check-sat (not d!505338) (not b!1670716) (not b!1670294) (not b_next!46125) (not b!1670502) (not b!1670315) (not d!505324) (not b!1670292) (not tb!95839) (not d!505336) (not d!505186) (not b!1670297) (not b!1670431) (not d!505274) (not d!505330) (not b!1670708) (not d!505264) (not b!1670302) (not b!1670711) (not b!1670508) (not b!1670702) (not b!1670713) (not d!505344) (not b!1670507) (not b!1670487) (not d!505342) (not b!1670709) (not b!1670741) (not b!1670591) (not d!505356) (not d!505358) (not b!1670314) (not b!1670540) (not b!1670737) (not b!1670499) b_and!118777 b_and!118819 (not b!1670595) (not b_next!46137) (not b!1670640) (not d!505262) (not b!1670596) (not d!505266) (not b!1670735) (not b!1670539) (not b!1670593) (not b!1670569) (not d!505332) (not b!1670739) (not d!505228) (not d!505284) (not b!1670497) (not d!505294) b_and!118773 b_and!118817 (not d!505354) (not b!1670710) (not bm!106579) (not b!1670498) (not d!505184) (not b!1670554) (not b!1670707) (not d!505164) (not d!505188) (not b_next!46141) (not b!1670291) (not b!1670555) (not b_next!46119) (not b!1670661) (not b!1670717) tp_is_empty!7417 (not b!1670723) (not b!1670518) (not b!1670568) (not d!505192) (not d!505352) (not b_next!46123) (not b!1670712) b_and!118815 (not b!1670765) (not b!1670638) (not b!1670519) (not d!505286) (not d!505276) (not b!1670541) (not b!1670701) (not d!505322) (not tb!95859) (not b!1670751) (not b!1670736) (not b_lambda!52481) (not b!1670694) (not d!505258) (not b_next!46135) (not b!1670750) (not d!505272) (not d!505174) (not d!505340) (not d!505268) (not b!1670599) (not d!505166) (not b_next!46139) (not d!505230) (not b!1670695) (not d!505350) (not b!1670421) b_and!118809 (not b!1670598) (not d!505346) (not d!505282) (not b!1670313) (not b!1670689) (not b!1670597) (not b!1670763) b_and!118813 (not b!1670571) (not d!505296) (not d!505292) (not b!1670273) (not b_next!46121) (not d!505270) (not b!1670698) (not d!505290) (not b!1670570) (not b!1670556) (not d!505348) (not b!1670740) (not b_lambda!52483) (not d!505288) b_and!118811 (not b!1670594) (not b_lambda!52479) (not b!1670486) (not d!505196) (not b!1670422) (not d!505260) (not b!1670293) (not b!1670764))
(check-sat (not b_next!46125) b_and!118773 b_and!118817 (not b_next!46141) (not b_next!46119) (not b_next!46135) (not b_next!46139) b_and!118809 b_and!118813 (not b_next!46121) b_and!118811 b_and!118777 b_and!118819 (not b_next!46137) (not b_next!46123) b_and!118815)
