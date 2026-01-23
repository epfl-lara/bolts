; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!152702 () Bool)

(assert start!152702)

(declare-fun b!1615179 () Bool)

(declare-fun b_free!43511 () Bool)

(declare-fun b_next!44215 () Bool)

(assert (=> b!1615179 (= b_free!43511 (not b_next!44215))))

(declare-fun tp!470955 () Bool)

(declare-fun b_and!114541 () Bool)

(assert (=> b!1615179 (= tp!470955 b_and!114541)))

(declare-fun b_free!43513 () Bool)

(declare-fun b_next!44217 () Bool)

(assert (=> b!1615179 (= b_free!43513 (not b_next!44217))))

(declare-fun tp!470958 () Bool)

(declare-fun b_and!114543 () Bool)

(assert (=> b!1615179 (= tp!470958 b_and!114543)))

(declare-fun b!1615176 () Bool)

(declare-fun b_free!43515 () Bool)

(declare-fun b_next!44219 () Bool)

(assert (=> b!1615176 (= b_free!43515 (not b_next!44219))))

(declare-fun tp!470962 () Bool)

(declare-fun b_and!114545 () Bool)

(assert (=> b!1615176 (= tp!470962 b_and!114545)))

(declare-fun b_free!43517 () Bool)

(declare-fun b_next!44221 () Bool)

(assert (=> b!1615176 (= b_free!43517 (not b_next!44221))))

(declare-fun tp!470961 () Bool)

(declare-fun b_and!114547 () Bool)

(assert (=> b!1615176 (= tp!470961 b_and!114547)))

(declare-fun b!1615175 () Bool)

(declare-fun e!1036043 () Bool)

(declare-datatypes ((List!17749 0))(
  ( (Nil!17679) (Cons!17679 (h!23080 (_ BitVec 16)) (t!148222 List!17749)) )
))
(declare-datatypes ((TokenValue!3205 0))(
  ( (FloatLiteralValue!6410 (text!22880 List!17749)) (TokenValueExt!3204 (__x!11712 Int)) (Broken!16025 (value!98424 List!17749)) (Object!3274) (End!3205) (Def!3205) (Underscore!3205) (Match!3205) (Else!3205) (Error!3205) (Case!3205) (If!3205) (Extends!3205) (Abstract!3205) (Class!3205) (Val!3205) (DelimiterValue!6410 (del!3265 List!17749)) (KeywordValue!3211 (value!98425 List!17749)) (CommentValue!6410 (value!98426 List!17749)) (WhitespaceValue!6410 (value!98427 List!17749)) (IndentationValue!3205 (value!98428 List!17749)) (String!20356) (Int32!3205) (Broken!16026 (value!98429 List!17749)) (Boolean!3206) (Unit!28414) (OperatorValue!3208 (op!3265 List!17749)) (IdentifierValue!6410 (value!98430 List!17749)) (IdentifierValue!6411 (value!98431 List!17749)) (WhitespaceValue!6411 (value!98432 List!17749)) (True!6410) (False!6410) (Broken!16027 (value!98433 List!17749)) (Broken!16028 (value!98434 List!17749)) (True!6411) (RightBrace!3205) (RightBracket!3205) (Colon!3205) (Null!3205) (Comma!3205) (LeftBracket!3205) (False!6411) (LeftBrace!3205) (ImaginaryLiteralValue!3205 (text!22881 List!17749)) (StringLiteralValue!9615 (value!98435 List!17749)) (EOFValue!3205 (value!98436 List!17749)) (IdentValue!3205 (value!98437 List!17749)) (DelimiterValue!6411 (value!98438 List!17749)) (DedentValue!3205 (value!98439 List!17749)) (NewLineValue!3205 (value!98440 List!17749)) (IntegerValue!9615 (value!98441 (_ BitVec 32)) (text!22882 List!17749)) (IntegerValue!9616 (value!98442 Int) (text!22883 List!17749)) (Times!3205) (Or!3205) (Equal!3205) (Minus!3205) (Broken!16029 (value!98443 List!17749)) (And!3205) (Div!3205) (LessEqual!3205) (Mod!3205) (Concat!7648) (Not!3205) (Plus!3205) (SpaceValue!3205 (value!98444 List!17749)) (IntegerValue!9617 (value!98445 Int) (text!22884 List!17749)) (StringLiteralValue!9616 (text!22885 List!17749)) (FloatLiteralValue!6411 (text!22886 List!17749)) (BytesLiteralValue!3205 (value!98446 List!17749)) (CommentValue!6411 (value!98447 List!17749)) (StringLiteralValue!9617 (value!98448 List!17749)) (ErrorTokenValue!3205 (msg!3266 List!17749)) )
))
(declare-datatypes ((C!9060 0))(
  ( (C!9061 (val!5126 Int)) )
))
(declare-datatypes ((List!17750 0))(
  ( (Nil!17680) (Cons!17680 (h!23081 C!9060) (t!148223 List!17750)) )
))
(declare-datatypes ((IArray!11761 0))(
  ( (IArray!11762 (innerList!5938 List!17750)) )
))
(declare-datatypes ((Conc!5878 0))(
  ( (Node!5878 (left!14237 Conc!5878) (right!14567 Conc!5878) (csize!11986 Int) (cheight!6089 Int)) (Leaf!8656 (xs!8706 IArray!11761) (csize!11987 Int)) (Empty!5878) )
))
(declare-datatypes ((BalanceConc!11700 0))(
  ( (BalanceConc!11701 (c!263023 Conc!5878)) )
))
(declare-datatypes ((Regex!4443 0))(
  ( (ElementMatch!4443 (c!263024 C!9060)) (Concat!7649 (regOne!9398 Regex!4443) (regTwo!9398 Regex!4443)) (EmptyExpr!4443) (Star!4443 (reg!4772 Regex!4443)) (EmptyLang!4443) (Union!4443 (regOne!9399 Regex!4443) (regTwo!9399 Regex!4443)) )
))
(declare-datatypes ((String!20357 0))(
  ( (String!20358 (value!98449 String)) )
))
(declare-datatypes ((TokenValueInjection!6070 0))(
  ( (TokenValueInjection!6071 (toValue!4538 Int) (toChars!4397 Int)) )
))
(declare-datatypes ((Rule!6030 0))(
  ( (Rule!6031 (regex!3115 Regex!4443) (tag!3391 String!20357) (isSeparator!3115 Bool) (transformation!3115 TokenValueInjection!6070)) )
))
(declare-datatypes ((Token!5796 0))(
  ( (Token!5797 (value!98450 TokenValue!3205) (rule!4935 Rule!6030) (size!14184 Int) (originalCharacters!3929 List!17750)) )
))
(declare-datatypes ((tuple2!17206 0))(
  ( (tuple2!17207 (_1!10005 Token!5796) (_2!10005 List!17750)) )
))
(declare-datatypes ((Option!3237 0))(
  ( (None!3236) (Some!3236 (v!24219 tuple2!17206)) )
))
(declare-fun lt!578331 () Option!3237)

(declare-datatypes ((List!17751 0))(
  ( (Nil!17681) (Cons!17681 (h!23082 Token!5796) (t!148224 List!17751)) )
))
(declare-fun tokens!457 () List!17751)

(declare-fun get!5069 (Option!3237) tuple2!17206)

(assert (=> b!1615175 (= e!1036043 (= (_1!10005 (get!5069 lt!578331)) (h!23082 tokens!457)))))

(declare-fun e!1036031 () Bool)

(assert (=> b!1615176 (= e!1036031 (and tp!470962 tp!470961))))

(declare-fun b!1615177 () Bool)

(declare-fun e!1036035 () Bool)

(declare-fun e!1036036 () Bool)

(assert (=> b!1615177 (= e!1036035 e!1036036)))

(declare-fun res!720815 () Bool)

(assert (=> b!1615177 (=> res!720815 e!1036036)))

(declare-fun lt!578346 () List!17750)

(declare-fun lt!578347 () List!17750)

(declare-fun lt!578350 () Regex!4443)

(declare-fun prefixMatch!378 (Regex!4443 List!17750) Bool)

(declare-fun ++!4669 (List!17750 List!17750) List!17750)

(assert (=> b!1615177 (= res!720815 (prefixMatch!378 lt!578350 (++!4669 lt!578346 lt!578347)))))

(declare-fun lt!578351 () BalanceConc!11700)

(declare-fun list!6911 (BalanceConc!11700) List!17750)

(assert (=> b!1615177 (= lt!578347 (list!6911 lt!578351))))

(declare-fun res!720828 () Bool)

(declare-fun e!1036037 () Bool)

(assert (=> start!152702 (=> (not res!720828) (not e!1036037))))

(declare-datatypes ((LexerInterface!2744 0))(
  ( (LexerInterfaceExt!2741 (__x!11713 Int)) (Lexer!2742) )
))
(declare-fun thiss!17113 () LexerInterface!2744)

(get-info :version)

(assert (=> start!152702 (= res!720828 ((_ is Lexer!2742) thiss!17113))))

(assert (=> start!152702 e!1036037))

(assert (=> start!152702 true))

(declare-fun e!1036034 () Bool)

(assert (=> start!152702 e!1036034))

(declare-fun e!1036041 () Bool)

(assert (=> start!152702 e!1036041))

(declare-fun b!1615178 () Bool)

(declare-fun e!1036038 () Bool)

(assert (=> b!1615178 (= e!1036038 e!1036035)))

(declare-fun res!720831 () Bool)

(assert (=> b!1615178 (=> res!720831 e!1036035)))

(declare-fun lt!578348 () BalanceConc!11700)

(declare-fun prefixMatchZipperSequence!487 (Regex!4443 BalanceConc!11700) Bool)

(declare-fun ++!4670 (BalanceConc!11700 BalanceConc!11700) BalanceConc!11700)

(assert (=> b!1615178 (= res!720831 (prefixMatchZipperSequence!487 lt!578350 (++!4670 lt!578348 lt!578351)))))

(declare-fun singletonSeq!1508 (C!9060) BalanceConc!11700)

(declare-fun apply!4444 (BalanceConc!11700 Int) C!9060)

(declare-fun charsOf!1764 (Token!5796) BalanceConc!11700)

(assert (=> b!1615178 (= lt!578351 (singletonSeq!1508 (apply!4444 (charsOf!1764 (h!23082 (t!148224 tokens!457))) 0)))))

(declare-datatypes ((List!17752 0))(
  ( (Nil!17682) (Cons!17682 (h!23083 Rule!6030) (t!148225 List!17752)) )
))
(declare-fun rules!1846 () List!17752)

(declare-fun rulesRegex!505 (LexerInterface!2744 List!17752) Regex!4443)

(assert (=> b!1615178 (= lt!578350 (rulesRegex!505 thiss!17113 rules!1846))))

(declare-fun e!1036044 () Bool)

(assert (=> b!1615179 (= e!1036044 (and tp!470955 tp!470958))))

(declare-fun b!1615180 () Bool)

(declare-fun res!720819 () Bool)

(assert (=> b!1615180 (=> (not res!720819) (not e!1036037))))

(assert (=> b!1615180 (= res!720819 (and (not ((_ is Nil!17681) tokens!457)) (not ((_ is Nil!17681) (t!148224 tokens!457)))))))

(declare-fun b!1615181 () Bool)

(declare-fun res!720829 () Bool)

(declare-fun e!1036045 () Bool)

(assert (=> b!1615181 (=> (not res!720829) (not e!1036045))))

(declare-fun head!3350 (List!17750) C!9060)

(assert (=> b!1615181 (= res!720829 (= lt!578347 (Cons!17680 (head!3350 (originalCharacters!3929 (h!23082 (t!148224 tokens!457)))) Nil!17680)))))

(declare-fun b!1615182 () Bool)

(declare-fun res!720832 () Bool)

(assert (=> b!1615182 (=> (not res!720832) (not e!1036037))))

(declare-fun rulesProduceEachTokenIndividuallyList!946 (LexerInterface!2744 List!17752 List!17751) Bool)

(assert (=> b!1615182 (= res!720832 (rulesProduceEachTokenIndividuallyList!946 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1615183 () Bool)

(declare-fun e!1036042 () Bool)

(declare-fun e!1036048 () Bool)

(assert (=> b!1615183 (= e!1036042 e!1036048)))

(declare-fun res!720822 () Bool)

(assert (=> b!1615183 (=> res!720822 e!1036048)))

(declare-fun lt!578352 () List!17750)

(declare-fun lt!578344 () List!17750)

(assert (=> b!1615183 (= res!720822 (or (not (= lt!578344 lt!578352)) (not (= lt!578352 lt!578346)) (not (= lt!578344 lt!578346))))))

(declare-fun printList!859 (LexerInterface!2744 List!17751) List!17750)

(assert (=> b!1615183 (= lt!578352 (printList!859 thiss!17113 (Cons!17681 (h!23082 tokens!457) Nil!17681)))))

(declare-fun lt!578330 () BalanceConc!11700)

(assert (=> b!1615183 (= lt!578344 (list!6911 lt!578330))))

(declare-datatypes ((IArray!11763 0))(
  ( (IArray!11764 (innerList!5939 List!17751)) )
))
(declare-datatypes ((Conc!5879 0))(
  ( (Node!5879 (left!14238 Conc!5879) (right!14568 Conc!5879) (csize!11988 Int) (cheight!6090 Int)) (Leaf!8657 (xs!8707 IArray!11763) (csize!11989 Int)) (Empty!5879) )
))
(declare-datatypes ((BalanceConc!11702 0))(
  ( (BalanceConc!11703 (c!263025 Conc!5879)) )
))
(declare-fun lt!578341 () BalanceConc!11702)

(declare-fun printTailRec!797 (LexerInterface!2744 BalanceConc!11702 Int BalanceConc!11700) BalanceConc!11700)

(assert (=> b!1615183 (= lt!578330 (printTailRec!797 thiss!17113 lt!578341 0 (BalanceConc!11701 Empty!5878)))))

(declare-fun print!1275 (LexerInterface!2744 BalanceConc!11702) BalanceConc!11700)

(assert (=> b!1615183 (= lt!578330 (print!1275 thiss!17113 lt!578341))))

(declare-fun singletonSeq!1509 (Token!5796) BalanceConc!11702)

(assert (=> b!1615183 (= lt!578341 (singletonSeq!1509 (h!23082 tokens!457)))))

(declare-fun lt!578339 () Option!3237)

(declare-fun lt!578340 () List!17750)

(declare-fun maxPrefix!1308 (LexerInterface!2744 List!17752 List!17750) Option!3237)

(assert (=> b!1615183 (= lt!578339 (maxPrefix!1308 thiss!17113 rules!1846 lt!578340))))

(declare-fun b!1615184 () Bool)

(declare-fun res!720833 () Bool)

(assert (=> b!1615184 (=> res!720833 e!1036048)))

(declare-fun rulesProduceIndividualToken!1396 (LexerInterface!2744 List!17752 Token!5796) Bool)

(assert (=> b!1615184 (= res!720833 (not (rulesProduceIndividualToken!1396 thiss!17113 rules!1846 (h!23082 tokens!457))))))

(declare-fun b!1615185 () Bool)

(assert (=> b!1615185 (= e!1036048 e!1036038)))

(declare-fun res!720824 () Bool)

(assert (=> b!1615185 (=> res!720824 e!1036038)))

(declare-fun isDefined!2604 (Option!3237) Bool)

(assert (=> b!1615185 (= res!720824 (not (isDefined!2604 lt!578339)))))

(declare-datatypes ((Unit!28415 0))(
  ( (Unit!28416) )
))
(declare-fun lt!578342 () Unit!28415)

(declare-fun lt!578343 () List!17750)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!318 (LexerInterface!2744 List!17752 List!17750 List!17750) Unit!28415)

(assert (=> b!1615185 (= lt!578342 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!318 thiss!17113 rules!1846 lt!578346 lt!578343))))

(declare-fun b!1615186 () Bool)

(declare-fun tp!470959 () Bool)

(declare-fun e!1036030 () Bool)

(declare-fun inv!23081 (Token!5796) Bool)

(assert (=> b!1615186 (= e!1036041 (and (inv!23081 (h!23082 tokens!457)) e!1036030 tp!470959))))

(declare-fun b!1615187 () Bool)

(declare-fun lt!578353 () BalanceConc!11700)

(declare-fun head!3351 (BalanceConc!11700) C!9060)

(assert (=> b!1615187 (= e!1036045 (= lt!578347 (Cons!17680 (head!3351 lt!578353) Nil!17680)))))

(declare-fun b!1615188 () Bool)

(declare-fun e!1036039 () Bool)

(declare-fun rulesValidInductive!954 (LexerInterface!2744 List!17752) Bool)

(assert (=> b!1615188 (= e!1036039 (rulesValidInductive!954 thiss!17113 rules!1846))))

(assert (=> b!1615188 e!1036043))

(declare-fun res!720817 () Bool)

(assert (=> b!1615188 (=> (not res!720817) (not e!1036043))))

(assert (=> b!1615188 (= res!720817 (isDefined!2604 lt!578331))))

(assert (=> b!1615188 (= lt!578331 (maxPrefix!1308 thiss!17113 rules!1846 lt!578346))))

(assert (=> b!1615188 (isDefined!2604 (maxPrefix!1308 thiss!17113 rules!1846 (originalCharacters!3929 (h!23082 tokens!457))))))

(declare-fun b!1615189 () Bool)

(declare-fun res!720821 () Bool)

(assert (=> b!1615189 (=> (not res!720821) (not e!1036037))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!437 (LexerInterface!2744 List!17751 List!17752) Bool)

(assert (=> b!1615189 (= res!720821 (tokensListTwoByTwoPredicateSeparableList!437 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1615190 () Bool)

(declare-fun res!720830 () Bool)

(assert (=> b!1615190 (=> (not res!720830) (not e!1036037))))

(declare-fun isEmpty!10692 (List!17752) Bool)

(assert (=> b!1615190 (= res!720830 (not (isEmpty!10692 rules!1846)))))

(declare-fun b!1615191 () Bool)

(declare-fun res!720818 () Bool)

(assert (=> b!1615191 (=> res!720818 e!1036048)))

(declare-fun isEmpty!10693 (BalanceConc!11702) Bool)

(declare-datatypes ((tuple2!17208 0))(
  ( (tuple2!17209 (_1!10006 BalanceConc!11702) (_2!10006 BalanceConc!11700)) )
))
(declare-fun lex!1228 (LexerInterface!2744 List!17752 BalanceConc!11700) tuple2!17208)

(declare-fun seqFromList!1979 (List!17750) BalanceConc!11700)

(assert (=> b!1615191 (= res!720818 (isEmpty!10693 (_1!10006 (lex!1228 thiss!17113 rules!1846 (seqFromList!1979 lt!578346)))))))

(declare-fun b!1615192 () Bool)

(declare-fun e!1036040 () Bool)

(declare-fun e!1036047 () Bool)

(assert (=> b!1615192 (= e!1036040 (not e!1036047))))

(declare-fun res!720820 () Bool)

(assert (=> b!1615192 (=> res!720820 e!1036047)))

(declare-fun lt!578334 () List!17751)

(assert (=> b!1615192 (= res!720820 (not (= lt!578334 (t!148224 tokens!457))))))

(declare-fun lt!578337 () tuple2!17208)

(declare-fun list!6912 (BalanceConc!11702) List!17751)

(assert (=> b!1615192 (= lt!578334 (list!6912 (_1!10006 lt!578337)))))

(declare-fun lt!578345 () Unit!28415)

(declare-fun theoremInvertabilityWhenTokenListSeparable!189 (LexerInterface!2744 List!17752 List!17751) Unit!28415)

(assert (=> b!1615192 (= lt!578345 (theoremInvertabilityWhenTokenListSeparable!189 thiss!17113 rules!1846 (t!148224 tokens!457)))))

(declare-fun lt!578335 () List!17750)

(declare-fun isPrefix!1375 (List!17750 List!17750) Bool)

(assert (=> b!1615192 (isPrefix!1375 lt!578346 lt!578335)))

(declare-fun lt!578349 () Unit!28415)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!900 (List!17750 List!17750) Unit!28415)

(assert (=> b!1615192 (= lt!578349 (lemmaConcatTwoListThenFirstIsPrefix!900 lt!578346 lt!578343))))

(declare-fun tp!470957 () Bool)

(declare-fun e!1036028 () Bool)

(declare-fun b!1615193 () Bool)

(declare-fun inv!23078 (String!20357) Bool)

(declare-fun inv!23082 (TokenValueInjection!6070) Bool)

(assert (=> b!1615193 (= e!1036028 (and tp!470957 (inv!23078 (tag!3391 (rule!4935 (h!23082 tokens!457)))) (inv!23082 (transformation!3115 (rule!4935 (h!23082 tokens!457)))) e!1036044))))

(declare-fun tp!470954 () Bool)

(declare-fun e!1036029 () Bool)

(declare-fun b!1615194 () Bool)

(assert (=> b!1615194 (= e!1036029 (and tp!470954 (inv!23078 (tag!3391 (h!23083 rules!1846))) (inv!23082 (transformation!3115 (h!23083 rules!1846))) e!1036031))))

(declare-fun b!1615195 () Bool)

(declare-fun res!720826 () Bool)

(assert (=> b!1615195 (=> (not res!720826) (not e!1036045))))

(assert (=> b!1615195 (= res!720826 (= lt!578347 (Cons!17680 (head!3350 lt!578343) Nil!17680)))))

(declare-fun b!1615196 () Bool)

(assert (=> b!1615196 (= e!1036047 e!1036042)))

(declare-fun res!720827 () Bool)

(assert (=> b!1615196 (=> res!720827 e!1036042)))

(declare-fun lt!578336 () List!17751)

(declare-fun lt!578354 () List!17751)

(assert (=> b!1615196 (= res!720827 (or (not (= lt!578334 lt!578336)) (not (= lt!578336 lt!578354))))))

(declare-fun lt!578332 () BalanceConc!11702)

(assert (=> b!1615196 (= lt!578336 (list!6912 lt!578332))))

(assert (=> b!1615196 (= lt!578334 lt!578354)))

(declare-fun prepend!625 (BalanceConc!11702 Token!5796) BalanceConc!11702)

(declare-fun seqFromList!1980 (List!17751) BalanceConc!11702)

(assert (=> b!1615196 (= lt!578354 (list!6912 (prepend!625 (seqFromList!1980 (t!148224 (t!148224 tokens!457))) (h!23082 (t!148224 tokens!457)))))))

(declare-fun lt!578338 () Unit!28415)

(declare-fun seqFromListBHdTlConstructive!192 (Token!5796 List!17751 BalanceConc!11702) Unit!28415)

(assert (=> b!1615196 (= lt!578338 (seqFromListBHdTlConstructive!192 (h!23082 (t!148224 tokens!457)) (t!148224 (t!148224 tokens!457)) (_1!10006 lt!578337)))))

(declare-fun b!1615197 () Bool)

(assert (=> b!1615197 (= e!1036037 e!1036040)))

(declare-fun res!720816 () Bool)

(assert (=> b!1615197 (=> (not res!720816) (not e!1036040))))

(assert (=> b!1615197 (= res!720816 (= lt!578340 lt!578335))))

(assert (=> b!1615197 (= lt!578335 (++!4669 lt!578346 lt!578343))))

(declare-fun lt!578333 () BalanceConc!11700)

(assert (=> b!1615197 (= lt!578340 (list!6911 lt!578333))))

(assert (=> b!1615197 (= lt!578343 (list!6911 lt!578353))))

(assert (=> b!1615197 (= lt!578346 (list!6911 lt!578348))))

(assert (=> b!1615197 (= lt!578348 (charsOf!1764 (h!23082 tokens!457)))))

(assert (=> b!1615197 (= lt!578337 (lex!1228 thiss!17113 rules!1846 lt!578353))))

(assert (=> b!1615197 (= lt!578353 (print!1275 thiss!17113 lt!578332))))

(assert (=> b!1615197 (= lt!578332 (seqFromList!1980 (t!148224 tokens!457)))))

(assert (=> b!1615197 (= lt!578333 (print!1275 thiss!17113 (seqFromList!1980 tokens!457)))))

(declare-fun b!1615198 () Bool)

(declare-fun tp!470956 () Bool)

(assert (=> b!1615198 (= e!1036034 (and e!1036029 tp!470956))))

(declare-fun b!1615199 () Bool)

(assert (=> b!1615199 (= e!1036036 e!1036039)))

(declare-fun res!720825 () Bool)

(assert (=> b!1615199 (=> res!720825 e!1036039)))

(declare-datatypes ((tuple2!17210 0))(
  ( (tuple2!17211 (_1!10007 Token!5796) (_2!10007 BalanceConc!11700)) )
))
(declare-datatypes ((Option!3238 0))(
  ( (None!3237) (Some!3237 (v!24220 tuple2!17210)) )
))
(declare-fun isDefined!2605 (Option!3238) Bool)

(declare-fun maxPrefixZipperSequence!639 (LexerInterface!2744 List!17752 BalanceConc!11700) Option!3238)

(assert (=> b!1615199 (= res!720825 (not (isDefined!2605 (maxPrefixZipperSequence!639 thiss!17113 rules!1846 (seqFromList!1979 (originalCharacters!3929 (h!23082 tokens!457)))))))))

(assert (=> b!1615199 e!1036045))

(declare-fun res!720823 () Bool)

(assert (=> b!1615199 (=> (not res!720823) (not e!1036045))))

(assert (=> b!1615199 (= res!720823 (= lt!578346 (originalCharacters!3929 (h!23082 tokens!457))))))

(declare-fun b!1615200 () Bool)

(declare-fun res!720834 () Bool)

(assert (=> b!1615200 (=> res!720834 e!1036042)))

(declare-fun separableTokensPredicate!686 (LexerInterface!2744 Token!5796 Token!5796 List!17752) Bool)

(assert (=> b!1615200 (= res!720834 (not (separableTokensPredicate!686 thiss!17113 (h!23082 tokens!457) (h!23082 (t!148224 tokens!457)) rules!1846)))))

(declare-fun tp!470960 () Bool)

(declare-fun b!1615201 () Bool)

(declare-fun inv!21 (TokenValue!3205) Bool)

(assert (=> b!1615201 (= e!1036030 (and (inv!21 (value!98450 (h!23082 tokens!457))) e!1036028 tp!470960))))

(declare-fun b!1615202 () Bool)

(declare-fun res!720835 () Bool)

(assert (=> b!1615202 (=> (not res!720835) (not e!1036037))))

(declare-fun rulesInvariant!2413 (LexerInterface!2744 List!17752) Bool)

(assert (=> b!1615202 (= res!720835 (rulesInvariant!2413 thiss!17113 rules!1846))))

(assert (= (and start!152702 res!720828) b!1615190))

(assert (= (and b!1615190 res!720830) b!1615202))

(assert (= (and b!1615202 res!720835) b!1615182))

(assert (= (and b!1615182 res!720832) b!1615189))

(assert (= (and b!1615189 res!720821) b!1615180))

(assert (= (and b!1615180 res!720819) b!1615197))

(assert (= (and b!1615197 res!720816) b!1615192))

(assert (= (and b!1615192 (not res!720820)) b!1615196))

(assert (= (and b!1615196 (not res!720827)) b!1615200))

(assert (= (and b!1615200 (not res!720834)) b!1615183))

(assert (= (and b!1615183 (not res!720822)) b!1615184))

(assert (= (and b!1615184 (not res!720833)) b!1615191))

(assert (= (and b!1615191 (not res!720818)) b!1615185))

(assert (= (and b!1615185 (not res!720824)) b!1615178))

(assert (= (and b!1615178 (not res!720831)) b!1615177))

(assert (= (and b!1615177 (not res!720815)) b!1615199))

(assert (= (and b!1615199 res!720823) b!1615181))

(assert (= (and b!1615181 res!720829) b!1615195))

(assert (= (and b!1615195 res!720826) b!1615187))

(assert (= (and b!1615199 (not res!720825)) b!1615188))

(assert (= (and b!1615188 res!720817) b!1615175))

(assert (= b!1615194 b!1615176))

(assert (= b!1615198 b!1615194))

(assert (= (and start!152702 ((_ is Cons!17682) rules!1846)) b!1615198))

(assert (= b!1615193 b!1615179))

(assert (= b!1615201 b!1615193))

(assert (= b!1615186 b!1615201))

(assert (= (and start!152702 ((_ is Cons!17681) tokens!457)) b!1615186))

(declare-fun m!1934719 () Bool)

(assert (=> b!1615189 m!1934719))

(declare-fun m!1934721 () Bool)

(assert (=> b!1615184 m!1934721))

(declare-fun m!1934723 () Bool)

(assert (=> b!1615181 m!1934723))

(declare-fun m!1934725 () Bool)

(assert (=> b!1615177 m!1934725))

(assert (=> b!1615177 m!1934725))

(declare-fun m!1934727 () Bool)

(assert (=> b!1615177 m!1934727))

(declare-fun m!1934729 () Bool)

(assert (=> b!1615177 m!1934729))

(declare-fun m!1934731 () Bool)

(assert (=> b!1615191 m!1934731))

(assert (=> b!1615191 m!1934731))

(declare-fun m!1934733 () Bool)

(assert (=> b!1615191 m!1934733))

(declare-fun m!1934735 () Bool)

(assert (=> b!1615191 m!1934735))

(declare-fun m!1934737 () Bool)

(assert (=> b!1615202 m!1934737))

(declare-fun m!1934739 () Bool)

(assert (=> b!1615182 m!1934739))

(declare-fun m!1934741 () Bool)

(assert (=> b!1615196 m!1934741))

(declare-fun m!1934743 () Bool)

(assert (=> b!1615196 m!1934743))

(declare-fun m!1934745 () Bool)

(assert (=> b!1615196 m!1934745))

(declare-fun m!1934747 () Bool)

(assert (=> b!1615196 m!1934747))

(declare-fun m!1934749 () Bool)

(assert (=> b!1615196 m!1934749))

(assert (=> b!1615196 m!1934745))

(assert (=> b!1615196 m!1934747))

(declare-fun m!1934751 () Bool)

(assert (=> b!1615200 m!1934751))

(declare-fun m!1934753 () Bool)

(assert (=> b!1615183 m!1934753))

(declare-fun m!1934755 () Bool)

(assert (=> b!1615183 m!1934755))

(declare-fun m!1934757 () Bool)

(assert (=> b!1615183 m!1934757))

(declare-fun m!1934759 () Bool)

(assert (=> b!1615183 m!1934759))

(declare-fun m!1934761 () Bool)

(assert (=> b!1615183 m!1934761))

(declare-fun m!1934763 () Bool)

(assert (=> b!1615183 m!1934763))

(declare-fun m!1934765 () Bool)

(assert (=> b!1615192 m!1934765))

(declare-fun m!1934767 () Bool)

(assert (=> b!1615192 m!1934767))

(declare-fun m!1934769 () Bool)

(assert (=> b!1615192 m!1934769))

(declare-fun m!1934771 () Bool)

(assert (=> b!1615192 m!1934771))

(declare-fun m!1934773 () Bool)

(assert (=> b!1615185 m!1934773))

(declare-fun m!1934775 () Bool)

(assert (=> b!1615185 m!1934775))

(declare-fun m!1934777 () Bool)

(assert (=> b!1615193 m!1934777))

(declare-fun m!1934779 () Bool)

(assert (=> b!1615193 m!1934779))

(declare-fun m!1934781 () Bool)

(assert (=> b!1615178 m!1934781))

(declare-fun m!1934783 () Bool)

(assert (=> b!1615178 m!1934783))

(declare-fun m!1934785 () Bool)

(assert (=> b!1615178 m!1934785))

(declare-fun m!1934787 () Bool)

(assert (=> b!1615178 m!1934787))

(declare-fun m!1934789 () Bool)

(assert (=> b!1615178 m!1934789))

(assert (=> b!1615178 m!1934783))

(declare-fun m!1934791 () Bool)

(assert (=> b!1615178 m!1934791))

(assert (=> b!1615178 m!1934787))

(assert (=> b!1615178 m!1934791))

(declare-fun m!1934793 () Bool)

(assert (=> b!1615190 m!1934793))

(declare-fun m!1934795 () Bool)

(assert (=> b!1615195 m!1934795))

(declare-fun m!1934797 () Bool)

(assert (=> b!1615201 m!1934797))

(declare-fun m!1934799 () Bool)

(assert (=> b!1615197 m!1934799))

(declare-fun m!1934801 () Bool)

(assert (=> b!1615197 m!1934801))

(declare-fun m!1934803 () Bool)

(assert (=> b!1615197 m!1934803))

(declare-fun m!1934805 () Bool)

(assert (=> b!1615197 m!1934805))

(declare-fun m!1934807 () Bool)

(assert (=> b!1615197 m!1934807))

(declare-fun m!1934809 () Bool)

(assert (=> b!1615197 m!1934809))

(declare-fun m!1934811 () Bool)

(assert (=> b!1615197 m!1934811))

(assert (=> b!1615197 m!1934805))

(declare-fun m!1934813 () Bool)

(assert (=> b!1615197 m!1934813))

(declare-fun m!1934815 () Bool)

(assert (=> b!1615197 m!1934815))

(declare-fun m!1934817 () Bool)

(assert (=> b!1615197 m!1934817))

(declare-fun m!1934819 () Bool)

(assert (=> b!1615188 m!1934819))

(declare-fun m!1934821 () Bool)

(assert (=> b!1615188 m!1934821))

(declare-fun m!1934823 () Bool)

(assert (=> b!1615188 m!1934823))

(declare-fun m!1934825 () Bool)

(assert (=> b!1615188 m!1934825))

(declare-fun m!1934827 () Bool)

(assert (=> b!1615188 m!1934827))

(assert (=> b!1615188 m!1934821))

(declare-fun m!1934829 () Bool)

(assert (=> b!1615187 m!1934829))

(declare-fun m!1934831 () Bool)

(assert (=> b!1615186 m!1934831))

(declare-fun m!1934833 () Bool)

(assert (=> b!1615194 m!1934833))

(declare-fun m!1934835 () Bool)

(assert (=> b!1615194 m!1934835))

(declare-fun m!1934837 () Bool)

(assert (=> b!1615175 m!1934837))

(declare-fun m!1934839 () Bool)

(assert (=> b!1615199 m!1934839))

(assert (=> b!1615199 m!1934839))

(declare-fun m!1934841 () Bool)

(assert (=> b!1615199 m!1934841))

(assert (=> b!1615199 m!1934841))

(declare-fun m!1934843 () Bool)

(assert (=> b!1615199 m!1934843))

(check-sat (not b!1615192) b_and!114545 (not b!1615193) (not b_next!44217) b_and!114543 (not b!1615184) (not b!1615182) (not b!1615195) (not b!1615181) (not b!1615194) (not b!1615186) (not b!1615190) (not b!1615201) (not b!1615199) (not b!1615185) (not b_next!44215) (not b_next!44219) (not b!1615187) (not b!1615189) (not b!1615200) (not b!1615175) (not b!1615197) (not b!1615196) b_and!114547 (not b!1615191) (not b!1615202) (not b!1615177) (not b!1615178) (not b!1615183) b_and!114541 (not b!1615188) (not b!1615198) (not b_next!44221))
(check-sat b_and!114545 (not b_next!44215) (not b_next!44217) b_and!114543 (not b_next!44219) b_and!114547 b_and!114541 (not b_next!44221))
(get-model)

(declare-fun d!485924 () Bool)

(declare-fun res!720844 () Bool)

(declare-fun e!1036051 () Bool)

(assert (=> d!485924 (=> (not res!720844) (not e!1036051))))

(declare-fun rulesValid!1111 (LexerInterface!2744 List!17752) Bool)

(assert (=> d!485924 (= res!720844 (rulesValid!1111 thiss!17113 rules!1846))))

(assert (=> d!485924 (= (rulesInvariant!2413 thiss!17113 rules!1846) e!1036051)))

(declare-fun b!1615205 () Bool)

(declare-datatypes ((List!17755 0))(
  ( (Nil!17685) (Cons!17685 (h!23086 String!20357) (t!148270 List!17755)) )
))
(declare-fun noDuplicateTag!1111 (LexerInterface!2744 List!17752 List!17755) Bool)

(assert (=> b!1615205 (= e!1036051 (noDuplicateTag!1111 thiss!17113 rules!1846 Nil!17685))))

(assert (= (and d!485924 res!720844) b!1615205))

(declare-fun m!1934845 () Bool)

(assert (=> d!485924 m!1934845))

(declare-fun m!1934847 () Bool)

(assert (=> b!1615205 m!1934847))

(assert (=> b!1615202 d!485924))

(declare-fun d!485926 () Bool)

(assert (=> d!485926 (= (head!3350 (originalCharacters!3929 (h!23082 (t!148224 tokens!457)))) (h!23081 (originalCharacters!3929 (h!23082 (t!148224 tokens!457)))))))

(assert (=> b!1615181 d!485926))

(declare-fun d!485928 () Bool)

(assert (=> d!485928 (= (separableTokensPredicate!686 thiss!17113 (h!23082 tokens!457) (h!23082 (t!148224 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!487 (rulesRegex!505 thiss!17113 rules!1846) (++!4670 (charsOf!1764 (h!23082 tokens!457)) (singletonSeq!1508 (apply!4444 (charsOf!1764 (h!23082 (t!148224 tokens!457))) 0))))))))

(declare-fun bs!394054 () Bool)

(assert (= bs!394054 d!485928))

(assert (=> bs!394054 m!1934791))

(assert (=> bs!394054 m!1934787))

(assert (=> bs!394054 m!1934791))

(assert (=> bs!394054 m!1934787))

(assert (=> bs!394054 m!1934789))

(assert (=> bs!394054 m!1934803))

(assert (=> bs!394054 m!1934803))

(assert (=> bs!394054 m!1934789))

(declare-fun m!1934873 () Bool)

(assert (=> bs!394054 m!1934873))

(assert (=> bs!394054 m!1934781))

(assert (=> bs!394054 m!1934781))

(assert (=> bs!394054 m!1934873))

(declare-fun m!1934875 () Bool)

(assert (=> bs!394054 m!1934875))

(assert (=> b!1615200 d!485928))

(declare-fun b!1615231 () Bool)

(declare-fun e!1036066 () Bool)

(declare-fun inv!17 (TokenValue!3205) Bool)

(assert (=> b!1615231 (= e!1036066 (inv!17 (value!98450 (h!23082 tokens!457))))))

(declare-fun b!1615232 () Bool)

(declare-fun e!1036065 () Bool)

(declare-fun inv!16 (TokenValue!3205) Bool)

(assert (=> b!1615232 (= e!1036065 (inv!16 (value!98450 (h!23082 tokens!457))))))

(declare-fun d!485936 () Bool)

(declare-fun c!263033 () Bool)

(assert (=> d!485936 (= c!263033 ((_ is IntegerValue!9615) (value!98450 (h!23082 tokens!457))))))

(assert (=> d!485936 (= (inv!21 (value!98450 (h!23082 tokens!457))) e!1036065)))

(declare-fun b!1615233 () Bool)

(assert (=> b!1615233 (= e!1036065 e!1036066)))

(declare-fun c!263034 () Bool)

(assert (=> b!1615233 (= c!263034 ((_ is IntegerValue!9616) (value!98450 (h!23082 tokens!457))))))

(declare-fun b!1615234 () Bool)

(declare-fun e!1036064 () Bool)

(declare-fun inv!15 (TokenValue!3205) Bool)

(assert (=> b!1615234 (= e!1036064 (inv!15 (value!98450 (h!23082 tokens!457))))))

(declare-fun b!1615235 () Bool)

(declare-fun res!720865 () Bool)

(assert (=> b!1615235 (=> res!720865 e!1036064)))

(assert (=> b!1615235 (= res!720865 (not ((_ is IntegerValue!9617) (value!98450 (h!23082 tokens!457)))))))

(assert (=> b!1615235 (= e!1036066 e!1036064)))

(assert (= (and d!485936 c!263033) b!1615232))

(assert (= (and d!485936 (not c!263033)) b!1615233))

(assert (= (and b!1615233 c!263034) b!1615231))

(assert (= (and b!1615233 (not c!263034)) b!1615235))

(assert (= (and b!1615235 (not res!720865)) b!1615234))

(declare-fun m!1934877 () Bool)

(assert (=> b!1615231 m!1934877))

(declare-fun m!1934879 () Bool)

(assert (=> b!1615232 m!1934879))

(declare-fun m!1934881 () Bool)

(assert (=> b!1615234 m!1934881))

(assert (=> b!1615201 d!485936))

(declare-fun d!485938 () Bool)

(declare-fun isEmpty!10696 (Option!3238) Bool)

(assert (=> d!485938 (= (isDefined!2605 (maxPrefixZipperSequence!639 thiss!17113 rules!1846 (seqFromList!1979 (originalCharacters!3929 (h!23082 tokens!457))))) (not (isEmpty!10696 (maxPrefixZipperSequence!639 thiss!17113 rules!1846 (seqFromList!1979 (originalCharacters!3929 (h!23082 tokens!457)))))))))

(declare-fun bs!394055 () Bool)

(assert (= bs!394055 d!485938))

(assert (=> bs!394055 m!1934841))

(declare-fun m!1934883 () Bool)

(assert (=> bs!394055 m!1934883))

(assert (=> b!1615199 d!485938))

(declare-fun b!1615310 () Bool)

(declare-fun e!1036118 () Bool)

(declare-fun e!1036119 () Bool)

(assert (=> b!1615310 (= e!1036118 e!1036119)))

(declare-fun res!720914 () Bool)

(assert (=> b!1615310 (=> res!720914 e!1036119)))

(declare-fun lt!578446 () Option!3238)

(assert (=> b!1615310 (= res!720914 (not (isDefined!2605 lt!578446)))))

(declare-fun b!1615311 () Bool)

(declare-fun e!1036123 () Bool)

(declare-fun e!1036121 () Bool)

(assert (=> b!1615311 (= e!1036123 e!1036121)))

(declare-fun res!720915 () Bool)

(assert (=> b!1615311 (=> (not res!720915) (not e!1036121))))

(declare-fun get!5071 (Option!3238) tuple2!17210)

(declare-fun maxPrefixZipper!290 (LexerInterface!2744 List!17752 List!17750) Option!3237)

(assert (=> b!1615311 (= res!720915 (= (_1!10007 (get!5071 lt!578446)) (_1!10005 (get!5069 (maxPrefixZipper!290 thiss!17113 rules!1846 (list!6911 (seqFromList!1979 (originalCharacters!3929 (h!23082 tokens!457)))))))))))

(declare-fun b!1615312 () Bool)

(declare-fun e!1036120 () Bool)

(assert (=> b!1615312 (= e!1036119 e!1036120)))

(declare-fun res!720910 () Bool)

(assert (=> b!1615312 (=> (not res!720910) (not e!1036120))))

(assert (=> b!1615312 (= res!720910 (= (_1!10007 (get!5071 lt!578446)) (_1!10005 (get!5069 (maxPrefix!1308 thiss!17113 rules!1846 (list!6911 (seqFromList!1979 (originalCharacters!3929 (h!23082 tokens!457)))))))))))

(declare-fun b!1615313 () Bool)

(declare-fun res!720911 () Bool)

(assert (=> b!1615313 (=> (not res!720911) (not e!1036118))))

(assert (=> b!1615313 (= res!720911 e!1036123)))

(declare-fun res!720913 () Bool)

(assert (=> b!1615313 (=> res!720913 e!1036123)))

(assert (=> b!1615313 (= res!720913 (not (isDefined!2605 lt!578446)))))

(declare-fun d!485940 () Bool)

(assert (=> d!485940 e!1036118))

(declare-fun res!720912 () Bool)

(assert (=> d!485940 (=> (not res!720912) (not e!1036118))))

(assert (=> d!485940 (= res!720912 (= (isDefined!2605 lt!578446) (isDefined!2604 (maxPrefixZipper!290 thiss!17113 rules!1846 (list!6911 (seqFromList!1979 (originalCharacters!3929 (h!23082 tokens!457))))))))))

(declare-fun e!1036122 () Option!3238)

(assert (=> d!485940 (= lt!578446 e!1036122)))

(declare-fun c!263047 () Bool)

(assert (=> d!485940 (= c!263047 (and ((_ is Cons!17682) rules!1846) ((_ is Nil!17682) (t!148225 rules!1846))))))

(declare-fun lt!578444 () Unit!28415)

(declare-fun lt!578448 () Unit!28415)

(assert (=> d!485940 (= lt!578444 lt!578448)))

(declare-fun lt!578447 () List!17750)

(declare-fun lt!578445 () List!17750)

(assert (=> d!485940 (isPrefix!1375 lt!578447 lt!578445)))

(declare-fun lemmaIsPrefixRefl!944 (List!17750 List!17750) Unit!28415)

(assert (=> d!485940 (= lt!578448 (lemmaIsPrefixRefl!944 lt!578447 lt!578445))))

(assert (=> d!485940 (= lt!578445 (list!6911 (seqFromList!1979 (originalCharacters!3929 (h!23082 tokens!457)))))))

(assert (=> d!485940 (= lt!578447 (list!6911 (seqFromList!1979 (originalCharacters!3929 (h!23082 tokens!457)))))))

(assert (=> d!485940 (rulesValidInductive!954 thiss!17113 rules!1846)))

(assert (=> d!485940 (= (maxPrefixZipperSequence!639 thiss!17113 rules!1846 (seqFromList!1979 (originalCharacters!3929 (h!23082 tokens!457)))) lt!578446)))

(declare-fun b!1615314 () Bool)

(declare-fun lt!578449 () Option!3238)

(declare-fun lt!578450 () Option!3238)

(assert (=> b!1615314 (= e!1036122 (ite (and ((_ is None!3237) lt!578449) ((_ is None!3237) lt!578450)) None!3237 (ite ((_ is None!3237) lt!578450) lt!578449 (ite ((_ is None!3237) lt!578449) lt!578450 (ite (>= (size!14184 (_1!10007 (v!24220 lt!578449))) (size!14184 (_1!10007 (v!24220 lt!578450)))) lt!578449 lt!578450)))))))

(declare-fun call!104826 () Option!3238)

(assert (=> b!1615314 (= lt!578449 call!104826)))

(assert (=> b!1615314 (= lt!578450 (maxPrefixZipperSequence!639 thiss!17113 (t!148225 rules!1846) (seqFromList!1979 (originalCharacters!3929 (h!23082 tokens!457)))))))

(declare-fun bm!104821 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!300 (LexerInterface!2744 Rule!6030 BalanceConc!11700) Option!3238)

(assert (=> bm!104821 (= call!104826 (maxPrefixOneRuleZipperSequence!300 thiss!17113 (h!23083 rules!1846) (seqFromList!1979 (originalCharacters!3929 (h!23082 tokens!457)))))))

(declare-fun b!1615315 () Bool)

(assert (=> b!1615315 (= e!1036121 (= (list!6911 (_2!10007 (get!5071 lt!578446))) (_2!10005 (get!5069 (maxPrefixZipper!290 thiss!17113 rules!1846 (list!6911 (seqFromList!1979 (originalCharacters!3929 (h!23082 tokens!457)))))))))))

(declare-fun b!1615316 () Bool)

(assert (=> b!1615316 (= e!1036122 call!104826)))

(declare-fun b!1615317 () Bool)

(assert (=> b!1615317 (= e!1036120 (= (list!6911 (_2!10007 (get!5071 lt!578446))) (_2!10005 (get!5069 (maxPrefix!1308 thiss!17113 rules!1846 (list!6911 (seqFromList!1979 (originalCharacters!3929 (h!23082 tokens!457)))))))))))

(assert (= (and d!485940 c!263047) b!1615316))

(assert (= (and d!485940 (not c!263047)) b!1615314))

(assert (= (or b!1615316 b!1615314) bm!104821))

(assert (= (and d!485940 res!720912) b!1615313))

(assert (= (and b!1615313 (not res!720913)) b!1615311))

(assert (= (and b!1615311 res!720915) b!1615315))

(assert (= (and b!1615313 res!720911) b!1615310))

(assert (= (and b!1615310 (not res!720914)) b!1615312))

(assert (= (and b!1615312 res!720910) b!1615317))

(declare-fun m!1935035 () Bool)

(assert (=> d!485940 m!1935035))

(declare-fun m!1935037 () Bool)

(assert (=> d!485940 m!1935037))

(assert (=> d!485940 m!1934827))

(assert (=> d!485940 m!1934839))

(assert (=> d!485940 m!1935035))

(declare-fun m!1935039 () Bool)

(assert (=> d!485940 m!1935039))

(declare-fun m!1935041 () Bool)

(assert (=> d!485940 m!1935041))

(declare-fun m!1935043 () Bool)

(assert (=> d!485940 m!1935043))

(assert (=> d!485940 m!1935037))

(declare-fun m!1935045 () Bool)

(assert (=> d!485940 m!1935045))

(assert (=> b!1615313 m!1935041))

(declare-fun m!1935047 () Bool)

(assert (=> b!1615311 m!1935047))

(assert (=> b!1615311 m!1934839))

(assert (=> b!1615311 m!1935035))

(assert (=> b!1615311 m!1935035))

(assert (=> b!1615311 m!1935037))

(assert (=> b!1615311 m!1935037))

(declare-fun m!1935049 () Bool)

(assert (=> b!1615311 m!1935049))

(assert (=> b!1615314 m!1934839))

(declare-fun m!1935051 () Bool)

(assert (=> b!1615314 m!1935051))

(assert (=> b!1615315 m!1935035))

(assert (=> b!1615315 m!1935037))

(declare-fun m!1935053 () Bool)

(assert (=> b!1615315 m!1935053))

(assert (=> b!1615315 m!1935037))

(assert (=> b!1615315 m!1935049))

(assert (=> b!1615315 m!1934839))

(assert (=> b!1615315 m!1935035))

(assert (=> b!1615315 m!1935047))

(assert (=> b!1615310 m!1935041))

(declare-fun m!1935055 () Bool)

(assert (=> b!1615317 m!1935055))

(declare-fun m!1935057 () Bool)

(assert (=> b!1615317 m!1935057))

(assert (=> b!1615317 m!1935053))

(assert (=> b!1615317 m!1935035))

(assert (=> b!1615317 m!1935055))

(assert (=> b!1615317 m!1934839))

(assert (=> b!1615317 m!1935035))

(assert (=> b!1615317 m!1935047))

(assert (=> bm!104821 m!1934839))

(declare-fun m!1935059 () Bool)

(assert (=> bm!104821 m!1935059))

(assert (=> b!1615312 m!1935047))

(assert (=> b!1615312 m!1934839))

(assert (=> b!1615312 m!1935035))

(assert (=> b!1615312 m!1935035))

(assert (=> b!1615312 m!1935055))

(assert (=> b!1615312 m!1935055))

(assert (=> b!1615312 m!1935057))

(assert (=> b!1615199 d!485940))

(declare-fun d!485982 () Bool)

(declare-fun fromListB!862 (List!17750) BalanceConc!11700)

(assert (=> d!485982 (= (seqFromList!1979 (originalCharacters!3929 (h!23082 tokens!457))) (fromListB!862 (originalCharacters!3929 (h!23082 tokens!457))))))

(declare-fun bs!394067 () Bool)

(assert (= bs!394067 d!485982))

(declare-fun m!1935061 () Bool)

(assert (=> bs!394067 m!1935061))

(assert (=> b!1615199 d!485982))

(declare-fun d!485984 () Bool)

(declare-fun e!1036126 () Bool)

(assert (=> d!485984 e!1036126))

(declare-fun res!720918 () Bool)

(assert (=> d!485984 (=> (not res!720918) (not e!1036126))))

(declare-fun lt!578453 () BalanceConc!11700)

(assert (=> d!485984 (= res!720918 (= (list!6911 lt!578453) (Cons!17680 (apply!4444 (charsOf!1764 (h!23082 (t!148224 tokens!457))) 0) Nil!17680)))))

(declare-fun singleton!636 (C!9060) BalanceConc!11700)

(assert (=> d!485984 (= lt!578453 (singleton!636 (apply!4444 (charsOf!1764 (h!23082 (t!148224 tokens!457))) 0)))))

(assert (=> d!485984 (= (singletonSeq!1508 (apply!4444 (charsOf!1764 (h!23082 (t!148224 tokens!457))) 0)) lt!578453)))

(declare-fun b!1615320 () Bool)

(declare-fun isBalanced!1756 (Conc!5878) Bool)

(assert (=> b!1615320 (= e!1036126 (isBalanced!1756 (c!263023 lt!578453)))))

(assert (= (and d!485984 res!720918) b!1615320))

(declare-fun m!1935063 () Bool)

(assert (=> d!485984 m!1935063))

(assert (=> d!485984 m!1934787))

(declare-fun m!1935065 () Bool)

(assert (=> d!485984 m!1935065))

(declare-fun m!1935067 () Bool)

(assert (=> b!1615320 m!1935067))

(assert (=> b!1615178 d!485984))

(declare-fun b!1615332 () Bool)

(declare-fun lt!578456 () BalanceConc!11700)

(declare-fun e!1036129 () Bool)

(assert (=> b!1615332 (= e!1036129 (= (list!6911 lt!578456) (++!4669 (list!6911 lt!578348) (list!6911 lt!578351))))))

(declare-fun d!485986 () Bool)

(assert (=> d!485986 e!1036129))

(declare-fun res!720927 () Bool)

(assert (=> d!485986 (=> (not res!720927) (not e!1036129))))

(declare-fun appendAssocInst!419 (Conc!5878 Conc!5878) Bool)

(assert (=> d!485986 (= res!720927 (appendAssocInst!419 (c!263023 lt!578348) (c!263023 lt!578351)))))

(declare-fun ++!4672 (Conc!5878 Conc!5878) Conc!5878)

(assert (=> d!485986 (= lt!578456 (BalanceConc!11701 (++!4672 (c!263023 lt!578348) (c!263023 lt!578351))))))

(assert (=> d!485986 (= (++!4670 lt!578348 lt!578351) lt!578456)))

(declare-fun b!1615329 () Bool)

(declare-fun res!720930 () Bool)

(assert (=> b!1615329 (=> (not res!720930) (not e!1036129))))

(assert (=> b!1615329 (= res!720930 (isBalanced!1756 (++!4672 (c!263023 lt!578348) (c!263023 lt!578351))))))

(declare-fun b!1615330 () Bool)

(declare-fun res!720929 () Bool)

(assert (=> b!1615330 (=> (not res!720929) (not e!1036129))))

(declare-fun height!887 (Conc!5878) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1615330 (= res!720929 (<= (height!887 (++!4672 (c!263023 lt!578348) (c!263023 lt!578351))) (+ (max!0 (height!887 (c!263023 lt!578348)) (height!887 (c!263023 lt!578351))) 1)))))

(declare-fun b!1615331 () Bool)

(declare-fun res!720928 () Bool)

(assert (=> b!1615331 (=> (not res!720928) (not e!1036129))))

(assert (=> b!1615331 (= res!720928 (>= (height!887 (++!4672 (c!263023 lt!578348) (c!263023 lt!578351))) (max!0 (height!887 (c!263023 lt!578348)) (height!887 (c!263023 lt!578351)))))))

(assert (= (and d!485986 res!720927) b!1615329))

(assert (= (and b!1615329 res!720930) b!1615330))

(assert (= (and b!1615330 res!720929) b!1615331))

(assert (= (and b!1615331 res!720928) b!1615332))

(declare-fun m!1935069 () Bool)

(assert (=> d!485986 m!1935069))

(declare-fun m!1935071 () Bool)

(assert (=> d!485986 m!1935071))

(assert (=> b!1615329 m!1935071))

(assert (=> b!1615329 m!1935071))

(declare-fun m!1935073 () Bool)

(assert (=> b!1615329 m!1935073))

(declare-fun m!1935075 () Bool)

(assert (=> b!1615330 m!1935075))

(declare-fun m!1935077 () Bool)

(assert (=> b!1615330 m!1935077))

(declare-fun m!1935079 () Bool)

(assert (=> b!1615330 m!1935079))

(assert (=> b!1615330 m!1935071))

(declare-fun m!1935081 () Bool)

(assert (=> b!1615330 m!1935081))

(assert (=> b!1615330 m!1935071))

(assert (=> b!1615330 m!1935077))

(assert (=> b!1615330 m!1935075))

(assert (=> b!1615331 m!1935075))

(assert (=> b!1615331 m!1935077))

(assert (=> b!1615331 m!1935079))

(assert (=> b!1615331 m!1935071))

(assert (=> b!1615331 m!1935081))

(assert (=> b!1615331 m!1935071))

(assert (=> b!1615331 m!1935077))

(assert (=> b!1615331 m!1935075))

(declare-fun m!1935083 () Bool)

(assert (=> b!1615332 m!1935083))

(assert (=> b!1615332 m!1934801))

(assert (=> b!1615332 m!1934729))

(assert (=> b!1615332 m!1934801))

(assert (=> b!1615332 m!1934729))

(declare-fun m!1935085 () Bool)

(assert (=> b!1615332 m!1935085))

(assert (=> b!1615178 d!485986))

(declare-fun d!485988 () Bool)

(declare-fun lt!578478 () Bool)

(assert (=> d!485988 (= lt!578478 (prefixMatch!378 lt!578350 (list!6911 (++!4670 lt!578348 lt!578351))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!17756 0))(
  ( (Nil!17686) (Cons!17686 (h!23087 Regex!4443) (t!148271 List!17756)) )
))
(declare-datatypes ((Context!1702 0))(
  ( (Context!1703 (exprs!1351 List!17756)) )
))
(declare-fun prefixMatchZipperSequence!489 ((InoxSet Context!1702) BalanceConc!11700 Int) Bool)

(declare-fun focus!157 (Regex!4443) (InoxSet Context!1702))

(assert (=> d!485988 (= lt!578478 (prefixMatchZipperSequence!489 (focus!157 lt!578350) (++!4670 lt!578348 lt!578351) 0))))

(declare-fun lt!578479 () Unit!28415)

(declare-fun lt!578485 () Unit!28415)

(assert (=> d!485988 (= lt!578479 lt!578485)))

(declare-fun lt!578480 () List!17750)

(declare-fun lt!578483 () (InoxSet Context!1702))

(declare-fun prefixMatchZipper!136 ((InoxSet Context!1702) List!17750) Bool)

(assert (=> d!485988 (= (prefixMatch!378 lt!578350 lt!578480) (prefixMatchZipper!136 lt!578483 lt!578480))))

(declare-datatypes ((List!17757 0))(
  ( (Nil!17687) (Cons!17687 (h!23088 Context!1702) (t!148272 List!17757)) )
))
(declare-fun lt!578477 () List!17757)

(declare-fun prefixMatchZipperRegexEquiv!136 ((InoxSet Context!1702) List!17757 Regex!4443 List!17750) Unit!28415)

(assert (=> d!485988 (= lt!578485 (prefixMatchZipperRegexEquiv!136 lt!578483 lt!578477 lt!578350 lt!578480))))

(assert (=> d!485988 (= lt!578480 (list!6911 (++!4670 lt!578348 lt!578351)))))

(declare-fun toList!897 ((InoxSet Context!1702)) List!17757)

(assert (=> d!485988 (= lt!578477 (toList!897 (focus!157 lt!578350)))))

(assert (=> d!485988 (= lt!578483 (focus!157 lt!578350))))

(declare-fun lt!578481 () Unit!28415)

(declare-fun lt!578486 () Unit!28415)

(assert (=> d!485988 (= lt!578481 lt!578486)))

(declare-fun lt!578484 () Int)

(declare-fun lt!578482 () (InoxSet Context!1702))

(declare-fun dropList!574 (BalanceConc!11700 Int) List!17750)

(assert (=> d!485988 (= (prefixMatchZipper!136 lt!578482 (dropList!574 (++!4670 lt!578348 lt!578351) lt!578484)) (prefixMatchZipperSequence!489 lt!578482 (++!4670 lt!578348 lt!578351) lt!578484))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!136 ((InoxSet Context!1702) BalanceConc!11700 Int) Unit!28415)

(assert (=> d!485988 (= lt!578486 (lemmaprefixMatchZipperSequenceEquivalent!136 lt!578482 (++!4670 lt!578348 lt!578351) lt!578484))))

(assert (=> d!485988 (= lt!578484 0)))

(assert (=> d!485988 (= lt!578482 (focus!157 lt!578350))))

(declare-fun validRegex!1762 (Regex!4443) Bool)

(assert (=> d!485988 (validRegex!1762 lt!578350)))

(assert (=> d!485988 (= (prefixMatchZipperSequence!487 lt!578350 (++!4670 lt!578348 lt!578351)) lt!578478)))

(declare-fun bs!394068 () Bool)

(assert (= bs!394068 d!485988))

(declare-fun m!1935087 () Bool)

(assert (=> bs!394068 m!1935087))

(declare-fun m!1935089 () Bool)

(assert (=> bs!394068 m!1935089))

(declare-fun m!1935091 () Bool)

(assert (=> bs!394068 m!1935091))

(assert (=> bs!394068 m!1934783))

(declare-fun m!1935093 () Bool)

(assert (=> bs!394068 m!1935093))

(declare-fun m!1935095 () Bool)

(assert (=> bs!394068 m!1935095))

(declare-fun m!1935097 () Bool)

(assert (=> bs!394068 m!1935097))

(assert (=> bs!394068 m!1934783))

(declare-fun m!1935099 () Bool)

(assert (=> bs!394068 m!1935099))

(declare-fun m!1935101 () Bool)

(assert (=> bs!394068 m!1935101))

(assert (=> bs!394068 m!1934783))

(assert (=> bs!394068 m!1935095))

(assert (=> bs!394068 m!1935091))

(assert (=> bs!394068 m!1934783))

(declare-fun m!1935103 () Bool)

(assert (=> bs!394068 m!1935103))

(assert (=> bs!394068 m!1935093))

(declare-fun m!1935105 () Bool)

(assert (=> bs!394068 m!1935105))

(assert (=> bs!394068 m!1934783))

(declare-fun m!1935107 () Bool)

(assert (=> bs!394068 m!1935107))

(declare-fun m!1935109 () Bool)

(assert (=> bs!394068 m!1935109))

(assert (=> bs!394068 m!1935091))

(declare-fun m!1935111 () Bool)

(assert (=> bs!394068 m!1935111))

(assert (=> b!1615178 d!485988))

(declare-fun d!485990 () Bool)

(declare-fun lt!578489 () C!9060)

(declare-fun apply!4447 (List!17750 Int) C!9060)

(assert (=> d!485990 (= lt!578489 (apply!4447 (list!6911 (charsOf!1764 (h!23082 (t!148224 tokens!457)))) 0))))

(declare-fun apply!4448 (Conc!5878 Int) C!9060)

(assert (=> d!485990 (= lt!578489 (apply!4448 (c!263023 (charsOf!1764 (h!23082 (t!148224 tokens!457)))) 0))))

(declare-fun e!1036132 () Bool)

(assert (=> d!485990 e!1036132))

(declare-fun res!720933 () Bool)

(assert (=> d!485990 (=> (not res!720933) (not e!1036132))))

(assert (=> d!485990 (= res!720933 (<= 0 0))))

(assert (=> d!485990 (= (apply!4444 (charsOf!1764 (h!23082 (t!148224 tokens!457))) 0) lt!578489)))

(declare-fun b!1615335 () Bool)

(declare-fun size!14188 (BalanceConc!11700) Int)

(assert (=> b!1615335 (= e!1036132 (< 0 (size!14188 (charsOf!1764 (h!23082 (t!148224 tokens!457))))))))

(assert (= (and d!485990 res!720933) b!1615335))

(assert (=> d!485990 m!1934791))

(declare-fun m!1935113 () Bool)

(assert (=> d!485990 m!1935113))

(assert (=> d!485990 m!1935113))

(declare-fun m!1935115 () Bool)

(assert (=> d!485990 m!1935115))

(declare-fun m!1935117 () Bool)

(assert (=> d!485990 m!1935117))

(assert (=> b!1615335 m!1934791))

(declare-fun m!1935119 () Bool)

(assert (=> b!1615335 m!1935119))

(assert (=> b!1615178 d!485990))

(declare-fun d!485992 () Bool)

(declare-fun lt!578495 () Unit!28415)

(declare-fun lemma!223 (List!17752 LexerInterface!2744 List!17752) Unit!28415)

(assert (=> d!485992 (= lt!578495 (lemma!223 rules!1846 thiss!17113 rules!1846))))

(declare-fun lambda!67086 () Int)

(declare-fun generalisedUnion!231 (List!17756) Regex!4443)

(declare-fun map!3660 (List!17752 Int) List!17756)

(assert (=> d!485992 (= (rulesRegex!505 thiss!17113 rules!1846) (generalisedUnion!231 (map!3660 rules!1846 lambda!67086)))))

(declare-fun bs!394069 () Bool)

(assert (= bs!394069 d!485992))

(declare-fun m!1935121 () Bool)

(assert (=> bs!394069 m!1935121))

(declare-fun m!1935123 () Bool)

(assert (=> bs!394069 m!1935123))

(assert (=> bs!394069 m!1935123))

(declare-fun m!1935125 () Bool)

(assert (=> bs!394069 m!1935125))

(assert (=> b!1615178 d!485992))

(declare-fun d!485994 () Bool)

(declare-fun lt!578498 () BalanceConc!11700)

(assert (=> d!485994 (= (list!6911 lt!578498) (originalCharacters!3929 (h!23082 (t!148224 tokens!457))))))

(declare-fun dynLambda!7882 (Int TokenValue!3205) BalanceConc!11700)

(assert (=> d!485994 (= lt!578498 (dynLambda!7882 (toChars!4397 (transformation!3115 (rule!4935 (h!23082 (t!148224 tokens!457))))) (value!98450 (h!23082 (t!148224 tokens!457)))))))

(assert (=> d!485994 (= (charsOf!1764 (h!23082 (t!148224 tokens!457))) lt!578498)))

(declare-fun b_lambda!50945 () Bool)

(assert (=> (not b_lambda!50945) (not d!485994)))

(declare-fun t!148237 () Bool)

(declare-fun tb!92799 () Bool)

(assert (=> (and b!1615179 (= (toChars!4397 (transformation!3115 (rule!4935 (h!23082 tokens!457)))) (toChars!4397 (transformation!3115 (rule!4935 (h!23082 (t!148224 tokens!457)))))) t!148237) tb!92799))

(declare-fun b!1615355 () Bool)

(declare-fun e!1036144 () Bool)

(declare-fun tp!470969 () Bool)

(declare-fun inv!23085 (Conc!5878) Bool)

(assert (=> b!1615355 (= e!1036144 (and (inv!23085 (c!263023 (dynLambda!7882 (toChars!4397 (transformation!3115 (rule!4935 (h!23082 (t!148224 tokens!457))))) (value!98450 (h!23082 (t!148224 tokens!457)))))) tp!470969))))

(declare-fun result!111852 () Bool)

(declare-fun inv!23086 (BalanceConc!11700) Bool)

(assert (=> tb!92799 (= result!111852 (and (inv!23086 (dynLambda!7882 (toChars!4397 (transformation!3115 (rule!4935 (h!23082 (t!148224 tokens!457))))) (value!98450 (h!23082 (t!148224 tokens!457))))) e!1036144))))

(assert (= tb!92799 b!1615355))

(declare-fun m!1935145 () Bool)

(assert (=> b!1615355 m!1935145))

(declare-fun m!1935147 () Bool)

(assert (=> tb!92799 m!1935147))

(assert (=> d!485994 t!148237))

(declare-fun b_and!114557 () Bool)

(assert (= b_and!114543 (and (=> t!148237 result!111852) b_and!114557)))

(declare-fun t!148239 () Bool)

(declare-fun tb!92801 () Bool)

(assert (=> (and b!1615176 (= (toChars!4397 (transformation!3115 (h!23083 rules!1846))) (toChars!4397 (transformation!3115 (rule!4935 (h!23082 (t!148224 tokens!457)))))) t!148239) tb!92801))

(declare-fun result!111856 () Bool)

(assert (= result!111856 result!111852))

(assert (=> d!485994 t!148239))

(declare-fun b_and!114559 () Bool)

(assert (= b_and!114547 (and (=> t!148239 result!111856) b_and!114559)))

(declare-fun m!1935149 () Bool)

(assert (=> d!485994 m!1935149))

(declare-fun m!1935151 () Bool)

(assert (=> d!485994 m!1935151))

(assert (=> b!1615178 d!485994))

(declare-fun d!486000 () Bool)

(declare-fun c!263056 () Bool)

(declare-fun isEmpty!10698 (List!17750) Bool)

(assert (=> d!486000 (= c!263056 (isEmpty!10698 (++!4669 lt!578346 lt!578347)))))

(declare-fun e!1036147 () Bool)

(assert (=> d!486000 (= (prefixMatch!378 lt!578350 (++!4669 lt!578346 lt!578347)) e!1036147)))

(declare-fun b!1615360 () Bool)

(declare-fun lostCause!422 (Regex!4443) Bool)

(assert (=> b!1615360 (= e!1036147 (not (lostCause!422 lt!578350)))))

(declare-fun b!1615361 () Bool)

(declare-fun derivativeStep!1066 (Regex!4443 C!9060) Regex!4443)

(declare-fun tail!2328 (List!17750) List!17750)

(assert (=> b!1615361 (= e!1036147 (prefixMatch!378 (derivativeStep!1066 lt!578350 (head!3350 (++!4669 lt!578346 lt!578347))) (tail!2328 (++!4669 lt!578346 lt!578347))))))

(assert (= (and d!486000 c!263056) b!1615360))

(assert (= (and d!486000 (not c!263056)) b!1615361))

(assert (=> d!486000 m!1934725))

(declare-fun m!1935153 () Bool)

(assert (=> d!486000 m!1935153))

(declare-fun m!1935155 () Bool)

(assert (=> b!1615360 m!1935155))

(assert (=> b!1615361 m!1934725))

(declare-fun m!1935157 () Bool)

(assert (=> b!1615361 m!1935157))

(assert (=> b!1615361 m!1935157))

(declare-fun m!1935159 () Bool)

(assert (=> b!1615361 m!1935159))

(assert (=> b!1615361 m!1934725))

(declare-fun m!1935161 () Bool)

(assert (=> b!1615361 m!1935161))

(assert (=> b!1615361 m!1935159))

(assert (=> b!1615361 m!1935161))

(declare-fun m!1935163 () Bool)

(assert (=> b!1615361 m!1935163))

(assert (=> b!1615177 d!486000))

(declare-fun e!1036152 () Bool)

(declare-fun lt!578501 () List!17750)

(declare-fun b!1615373 () Bool)

(assert (=> b!1615373 (= e!1036152 (or (not (= lt!578347 Nil!17680)) (= lt!578501 lt!578346)))))

(declare-fun b!1615371 () Bool)

(declare-fun e!1036153 () List!17750)

(assert (=> b!1615371 (= e!1036153 (Cons!17680 (h!23081 lt!578346) (++!4669 (t!148223 lt!578346) lt!578347)))))

(declare-fun b!1615372 () Bool)

(declare-fun res!720948 () Bool)

(assert (=> b!1615372 (=> (not res!720948) (not e!1036152))))

(declare-fun size!14189 (List!17750) Int)

(assert (=> b!1615372 (= res!720948 (= (size!14189 lt!578501) (+ (size!14189 lt!578346) (size!14189 lt!578347))))))

(declare-fun d!486002 () Bool)

(assert (=> d!486002 e!1036152))

(declare-fun res!720947 () Bool)

(assert (=> d!486002 (=> (not res!720947) (not e!1036152))))

(declare-fun content!2449 (List!17750) (InoxSet C!9060))

(assert (=> d!486002 (= res!720947 (= (content!2449 lt!578501) ((_ map or) (content!2449 lt!578346) (content!2449 lt!578347))))))

(assert (=> d!486002 (= lt!578501 e!1036153)))

(declare-fun c!263059 () Bool)

(assert (=> d!486002 (= c!263059 ((_ is Nil!17680) lt!578346))))

(assert (=> d!486002 (= (++!4669 lt!578346 lt!578347) lt!578501)))

(declare-fun b!1615370 () Bool)

(assert (=> b!1615370 (= e!1036153 lt!578347)))

(assert (= (and d!486002 c!263059) b!1615370))

(assert (= (and d!486002 (not c!263059)) b!1615371))

(assert (= (and d!486002 res!720947) b!1615372))

(assert (= (and b!1615372 res!720948) b!1615373))

(declare-fun m!1935165 () Bool)

(assert (=> b!1615371 m!1935165))

(declare-fun m!1935167 () Bool)

(assert (=> b!1615372 m!1935167))

(declare-fun m!1935169 () Bool)

(assert (=> b!1615372 m!1935169))

(declare-fun m!1935171 () Bool)

(assert (=> b!1615372 m!1935171))

(declare-fun m!1935173 () Bool)

(assert (=> d!486002 m!1935173))

(declare-fun m!1935175 () Bool)

(assert (=> d!486002 m!1935175))

(declare-fun m!1935177 () Bool)

(assert (=> d!486002 m!1935177))

(assert (=> b!1615177 d!486002))

(declare-fun d!486004 () Bool)

(declare-fun list!6915 (Conc!5878) List!17750)

(assert (=> d!486004 (= (list!6911 lt!578351) (list!6915 (c!263023 lt!578351)))))

(declare-fun bs!394071 () Bool)

(assert (= bs!394071 d!486004))

(declare-fun m!1935179 () Bool)

(assert (=> bs!394071 m!1935179))

(assert (=> b!1615177 d!486004))

(declare-fun d!486006 () Bool)

(declare-fun e!1036156 () Bool)

(assert (=> d!486006 e!1036156))

(declare-fun res!720951 () Bool)

(assert (=> d!486006 (=> (not res!720951) (not e!1036156))))

(declare-fun isBalanced!1757 (Conc!5879) Bool)

(declare-fun prepend!626 (Conc!5879 Token!5796) Conc!5879)

(assert (=> d!486006 (= res!720951 (isBalanced!1757 (prepend!626 (c!263025 (seqFromList!1980 (t!148224 (t!148224 tokens!457)))) (h!23082 (t!148224 tokens!457)))))))

(declare-fun lt!578504 () BalanceConc!11702)

(assert (=> d!486006 (= lt!578504 (BalanceConc!11703 (prepend!626 (c!263025 (seqFromList!1980 (t!148224 (t!148224 tokens!457)))) (h!23082 (t!148224 tokens!457)))))))

(assert (=> d!486006 (= (prepend!625 (seqFromList!1980 (t!148224 (t!148224 tokens!457))) (h!23082 (t!148224 tokens!457))) lt!578504)))

(declare-fun b!1615376 () Bool)

(assert (=> b!1615376 (= e!1036156 (= (list!6912 lt!578504) (Cons!17681 (h!23082 (t!148224 tokens!457)) (list!6912 (seqFromList!1980 (t!148224 (t!148224 tokens!457)))))))))

(assert (= (and d!486006 res!720951) b!1615376))

(declare-fun m!1935181 () Bool)

(assert (=> d!486006 m!1935181))

(assert (=> d!486006 m!1935181))

(declare-fun m!1935183 () Bool)

(assert (=> d!486006 m!1935183))

(declare-fun m!1935185 () Bool)

(assert (=> b!1615376 m!1935185))

(assert (=> b!1615376 m!1934745))

(declare-fun m!1935187 () Bool)

(assert (=> b!1615376 m!1935187))

(assert (=> b!1615196 d!486006))

(declare-fun d!486008 () Bool)

(declare-fun fromListB!863 (List!17751) BalanceConc!11702)

(assert (=> d!486008 (= (seqFromList!1980 (t!148224 (t!148224 tokens!457))) (fromListB!863 (t!148224 (t!148224 tokens!457))))))

(declare-fun bs!394072 () Bool)

(assert (= bs!394072 d!486008))

(declare-fun m!1935189 () Bool)

(assert (=> bs!394072 m!1935189))

(assert (=> b!1615196 d!486008))

(declare-fun d!486010 () Bool)

(declare-fun list!6916 (Conc!5879) List!17751)

(assert (=> d!486010 (= (list!6912 lt!578332) (list!6916 (c!263025 lt!578332)))))

(declare-fun bs!394073 () Bool)

(assert (= bs!394073 d!486010))

(declare-fun m!1935191 () Bool)

(assert (=> bs!394073 m!1935191))

(assert (=> b!1615196 d!486010))

(declare-fun d!486012 () Bool)

(assert (=> d!486012 (= (list!6912 (_1!10006 lt!578337)) (list!6912 (prepend!625 (seqFromList!1980 (t!148224 (t!148224 tokens!457))) (h!23082 (t!148224 tokens!457)))))))

(declare-fun lt!578507 () Unit!28415)

(declare-fun choose!9715 (Token!5796 List!17751 BalanceConc!11702) Unit!28415)

(assert (=> d!486012 (= lt!578507 (choose!9715 (h!23082 (t!148224 tokens!457)) (t!148224 (t!148224 tokens!457)) (_1!10006 lt!578337)))))

(declare-fun $colon$colon!310 (List!17751 Token!5796) List!17751)

(assert (=> d!486012 (= (list!6912 (_1!10006 lt!578337)) (list!6912 (seqFromList!1980 ($colon$colon!310 (t!148224 (t!148224 tokens!457)) (h!23082 (t!148224 tokens!457))))))))

(assert (=> d!486012 (= (seqFromListBHdTlConstructive!192 (h!23082 (t!148224 tokens!457)) (t!148224 (t!148224 tokens!457)) (_1!10006 lt!578337)) lt!578507)))

(declare-fun bs!394074 () Bool)

(assert (= bs!394074 d!486012))

(declare-fun m!1935193 () Bool)

(assert (=> bs!394074 m!1935193))

(declare-fun m!1935195 () Bool)

(assert (=> bs!394074 m!1935195))

(assert (=> bs!394074 m!1934745))

(assert (=> bs!394074 m!1934747))

(declare-fun m!1935197 () Bool)

(assert (=> bs!394074 m!1935197))

(assert (=> bs!394074 m!1935193))

(assert (=> bs!394074 m!1934765))

(assert (=> bs!394074 m!1934747))

(assert (=> bs!394074 m!1934749))

(declare-fun m!1935199 () Bool)

(assert (=> bs!394074 m!1935199))

(assert (=> bs!394074 m!1935197))

(assert (=> bs!394074 m!1934745))

(assert (=> b!1615196 d!486012))

(declare-fun d!486014 () Bool)

(assert (=> d!486014 (= (list!6912 (prepend!625 (seqFromList!1980 (t!148224 (t!148224 tokens!457))) (h!23082 (t!148224 tokens!457)))) (list!6916 (c!263025 (prepend!625 (seqFromList!1980 (t!148224 (t!148224 tokens!457))) (h!23082 (t!148224 tokens!457))))))))

(declare-fun bs!394075 () Bool)

(assert (= bs!394075 d!486014))

(declare-fun m!1935201 () Bool)

(assert (=> bs!394075 m!1935201))

(assert (=> b!1615196 d!486014))

(declare-fun d!486016 () Bool)

(assert (=> d!486016 (= (get!5069 lt!578331) (v!24219 lt!578331))))

(assert (=> b!1615175 d!486016))

(declare-fun d!486018 () Bool)

(declare-fun lt!578510 () BalanceConc!11700)

(assert (=> d!486018 (= (list!6911 lt!578510) (printList!859 thiss!17113 (list!6912 (seqFromList!1980 tokens!457))))))

(assert (=> d!486018 (= lt!578510 (printTailRec!797 thiss!17113 (seqFromList!1980 tokens!457) 0 (BalanceConc!11701 Empty!5878)))))

(assert (=> d!486018 (= (print!1275 thiss!17113 (seqFromList!1980 tokens!457)) lt!578510)))

(declare-fun bs!394076 () Bool)

(assert (= bs!394076 d!486018))

(declare-fun m!1935203 () Bool)

(assert (=> bs!394076 m!1935203))

(assert (=> bs!394076 m!1934805))

(declare-fun m!1935205 () Bool)

(assert (=> bs!394076 m!1935205))

(assert (=> bs!394076 m!1935205))

(declare-fun m!1935207 () Bool)

(assert (=> bs!394076 m!1935207))

(assert (=> bs!394076 m!1934805))

(declare-fun m!1935209 () Bool)

(assert (=> bs!394076 m!1935209))

(assert (=> b!1615197 d!486018))

(declare-fun b!1615391 () Bool)

(declare-fun lt!578515 () tuple2!17208)

(declare-fun e!1036168 () Bool)

(declare-datatypes ((tuple2!17214 0))(
  ( (tuple2!17215 (_1!10009 List!17751) (_2!10009 List!17750)) )
))
(declare-fun lexList!813 (LexerInterface!2744 List!17752 List!17750) tuple2!17214)

(assert (=> b!1615391 (= e!1036168 (= (list!6911 (_2!10006 lt!578515)) (_2!10009 (lexList!813 thiss!17113 rules!1846 (list!6911 lt!578353)))))))

(declare-fun d!486020 () Bool)

(assert (=> d!486020 e!1036168))

(declare-fun res!720962 () Bool)

(assert (=> d!486020 (=> (not res!720962) (not e!1036168))))

(declare-fun e!1036167 () Bool)

(assert (=> d!486020 (= res!720962 e!1036167)))

(declare-fun c!263063 () Bool)

(declare-fun size!14190 (BalanceConc!11702) Int)

(assert (=> d!486020 (= c!263063 (> (size!14190 (_1!10006 lt!578515)) 0))))

(declare-fun lexTailRecV2!536 (LexerInterface!2744 List!17752 BalanceConc!11700 BalanceConc!11700 BalanceConc!11700 BalanceConc!11702) tuple2!17208)

(assert (=> d!486020 (= lt!578515 (lexTailRecV2!536 thiss!17113 rules!1846 lt!578353 (BalanceConc!11701 Empty!5878) lt!578353 (BalanceConc!11703 Empty!5879)))))

(assert (=> d!486020 (= (lex!1228 thiss!17113 rules!1846 lt!578353) lt!578515)))

(declare-fun b!1615392 () Bool)

(declare-fun e!1036169 () Bool)

(assert (=> b!1615392 (= e!1036169 (not (isEmpty!10693 (_1!10006 lt!578515))))))

(declare-fun b!1615393 () Bool)

(declare-fun res!720963 () Bool)

(assert (=> b!1615393 (=> (not res!720963) (not e!1036168))))

(assert (=> b!1615393 (= res!720963 (= (list!6912 (_1!10006 lt!578515)) (_1!10009 (lexList!813 thiss!17113 rules!1846 (list!6911 lt!578353)))))))

(declare-fun b!1615394 () Bool)

(assert (=> b!1615394 (= e!1036167 e!1036169)))

(declare-fun res!720964 () Bool)

(assert (=> b!1615394 (= res!720964 (< (size!14188 (_2!10006 lt!578515)) (size!14188 lt!578353)))))

(assert (=> b!1615394 (=> (not res!720964) (not e!1036169))))

(declare-fun b!1615395 () Bool)

(assert (=> b!1615395 (= e!1036167 (= (_2!10006 lt!578515) lt!578353))))

(assert (= (and d!486020 c!263063) b!1615394))

(assert (= (and d!486020 (not c!263063)) b!1615395))

(assert (= (and b!1615394 res!720964) b!1615392))

(assert (= (and d!486020 res!720962) b!1615393))

(assert (= (and b!1615393 res!720963) b!1615391))

(declare-fun m!1935211 () Bool)

(assert (=> b!1615394 m!1935211))

(declare-fun m!1935213 () Bool)

(assert (=> b!1615394 m!1935213))

(declare-fun m!1935215 () Bool)

(assert (=> b!1615393 m!1935215))

(assert (=> b!1615393 m!1934813))

(assert (=> b!1615393 m!1934813))

(declare-fun m!1935217 () Bool)

(assert (=> b!1615393 m!1935217))

(declare-fun m!1935219 () Bool)

(assert (=> b!1615391 m!1935219))

(assert (=> b!1615391 m!1934813))

(assert (=> b!1615391 m!1934813))

(assert (=> b!1615391 m!1935217))

(declare-fun m!1935221 () Bool)

(assert (=> b!1615392 m!1935221))

(declare-fun m!1935223 () Bool)

(assert (=> d!486020 m!1935223))

(declare-fun m!1935225 () Bool)

(assert (=> d!486020 m!1935225))

(assert (=> b!1615197 d!486020))

(declare-fun b!1615399 () Bool)

(declare-fun e!1036170 () Bool)

(declare-fun lt!578516 () List!17750)

(assert (=> b!1615399 (= e!1036170 (or (not (= lt!578343 Nil!17680)) (= lt!578516 lt!578346)))))

(declare-fun b!1615397 () Bool)

(declare-fun e!1036171 () List!17750)

(assert (=> b!1615397 (= e!1036171 (Cons!17680 (h!23081 lt!578346) (++!4669 (t!148223 lt!578346) lt!578343)))))

(declare-fun b!1615398 () Bool)

(declare-fun res!720966 () Bool)

(assert (=> b!1615398 (=> (not res!720966) (not e!1036170))))

(assert (=> b!1615398 (= res!720966 (= (size!14189 lt!578516) (+ (size!14189 lt!578346) (size!14189 lt!578343))))))

(declare-fun d!486022 () Bool)

(assert (=> d!486022 e!1036170))

(declare-fun res!720965 () Bool)

(assert (=> d!486022 (=> (not res!720965) (not e!1036170))))

(assert (=> d!486022 (= res!720965 (= (content!2449 lt!578516) ((_ map or) (content!2449 lt!578346) (content!2449 lt!578343))))))

(assert (=> d!486022 (= lt!578516 e!1036171)))

(declare-fun c!263064 () Bool)

(assert (=> d!486022 (= c!263064 ((_ is Nil!17680) lt!578346))))

(assert (=> d!486022 (= (++!4669 lt!578346 lt!578343) lt!578516)))

(declare-fun b!1615396 () Bool)

(assert (=> b!1615396 (= e!1036171 lt!578343)))

(assert (= (and d!486022 c!263064) b!1615396))

(assert (= (and d!486022 (not c!263064)) b!1615397))

(assert (= (and d!486022 res!720965) b!1615398))

(assert (= (and b!1615398 res!720966) b!1615399))

(declare-fun m!1935227 () Bool)

(assert (=> b!1615397 m!1935227))

(declare-fun m!1935229 () Bool)

(assert (=> b!1615398 m!1935229))

(assert (=> b!1615398 m!1935169))

(declare-fun m!1935231 () Bool)

(assert (=> b!1615398 m!1935231))

(declare-fun m!1935233 () Bool)

(assert (=> d!486022 m!1935233))

(assert (=> d!486022 m!1935175))

(declare-fun m!1935235 () Bool)

(assert (=> d!486022 m!1935235))

(assert (=> b!1615197 d!486022))

(declare-fun d!486024 () Bool)

(assert (=> d!486024 (= (list!6911 lt!578348) (list!6915 (c!263023 lt!578348)))))

(declare-fun bs!394077 () Bool)

(assert (= bs!394077 d!486024))

(declare-fun m!1935237 () Bool)

(assert (=> bs!394077 m!1935237))

(assert (=> b!1615197 d!486024))

(declare-fun d!486026 () Bool)

(assert (=> d!486026 (= (list!6911 lt!578353) (list!6915 (c!263023 lt!578353)))))

(declare-fun bs!394078 () Bool)

(assert (= bs!394078 d!486026))

(declare-fun m!1935239 () Bool)

(assert (=> bs!394078 m!1935239))

(assert (=> b!1615197 d!486026))

(declare-fun d!486028 () Bool)

(assert (=> d!486028 (= (list!6911 lt!578333) (list!6915 (c!263023 lt!578333)))))

(declare-fun bs!394079 () Bool)

(assert (= bs!394079 d!486028))

(declare-fun m!1935241 () Bool)

(assert (=> bs!394079 m!1935241))

(assert (=> b!1615197 d!486028))

(declare-fun d!486030 () Bool)

(assert (=> d!486030 (= (seqFromList!1980 tokens!457) (fromListB!863 tokens!457))))

(declare-fun bs!394080 () Bool)

(assert (= bs!394080 d!486030))

(declare-fun m!1935243 () Bool)

(assert (=> bs!394080 m!1935243))

(assert (=> b!1615197 d!486030))

(declare-fun d!486032 () Bool)

(assert (=> d!486032 (= (seqFromList!1980 (t!148224 tokens!457)) (fromListB!863 (t!148224 tokens!457)))))

(declare-fun bs!394081 () Bool)

(assert (= bs!394081 d!486032))

(declare-fun m!1935245 () Bool)

(assert (=> bs!394081 m!1935245))

(assert (=> b!1615197 d!486032))

(declare-fun d!486034 () Bool)

(declare-fun lt!578517 () BalanceConc!11700)

(assert (=> d!486034 (= (list!6911 lt!578517) (originalCharacters!3929 (h!23082 tokens!457)))))

(assert (=> d!486034 (= lt!578517 (dynLambda!7882 (toChars!4397 (transformation!3115 (rule!4935 (h!23082 tokens!457)))) (value!98450 (h!23082 tokens!457))))))

(assert (=> d!486034 (= (charsOf!1764 (h!23082 tokens!457)) lt!578517)))

(declare-fun b_lambda!50947 () Bool)

(assert (=> (not b_lambda!50947) (not d!486034)))

(declare-fun t!148243 () Bool)

(declare-fun tb!92803 () Bool)

(assert (=> (and b!1615179 (= (toChars!4397 (transformation!3115 (rule!4935 (h!23082 tokens!457)))) (toChars!4397 (transformation!3115 (rule!4935 (h!23082 tokens!457))))) t!148243) tb!92803))

(declare-fun b!1615400 () Bool)

(declare-fun e!1036172 () Bool)

(declare-fun tp!470970 () Bool)

(assert (=> b!1615400 (= e!1036172 (and (inv!23085 (c!263023 (dynLambda!7882 (toChars!4397 (transformation!3115 (rule!4935 (h!23082 tokens!457)))) (value!98450 (h!23082 tokens!457))))) tp!470970))))

(declare-fun result!111858 () Bool)

(assert (=> tb!92803 (= result!111858 (and (inv!23086 (dynLambda!7882 (toChars!4397 (transformation!3115 (rule!4935 (h!23082 tokens!457)))) (value!98450 (h!23082 tokens!457)))) e!1036172))))

(assert (= tb!92803 b!1615400))

(declare-fun m!1935247 () Bool)

(assert (=> b!1615400 m!1935247))

(declare-fun m!1935249 () Bool)

(assert (=> tb!92803 m!1935249))

(assert (=> d!486034 t!148243))

(declare-fun b_and!114561 () Bool)

(assert (= b_and!114557 (and (=> t!148243 result!111858) b_and!114561)))

(declare-fun tb!92805 () Bool)

(declare-fun t!148245 () Bool)

(assert (=> (and b!1615176 (= (toChars!4397 (transformation!3115 (h!23083 rules!1846))) (toChars!4397 (transformation!3115 (rule!4935 (h!23082 tokens!457))))) t!148245) tb!92805))

(declare-fun result!111860 () Bool)

(assert (= result!111860 result!111858))

(assert (=> d!486034 t!148245))

(declare-fun b_and!114563 () Bool)

(assert (= b_and!114559 (and (=> t!148245 result!111860) b_and!114563)))

(declare-fun m!1935251 () Bool)

(assert (=> d!486034 m!1935251))

(declare-fun m!1935253 () Bool)

(assert (=> d!486034 m!1935253))

(assert (=> b!1615197 d!486034))

(declare-fun d!486036 () Bool)

(declare-fun lt!578518 () BalanceConc!11700)

(assert (=> d!486036 (= (list!6911 lt!578518) (printList!859 thiss!17113 (list!6912 lt!578332)))))

(assert (=> d!486036 (= lt!578518 (printTailRec!797 thiss!17113 lt!578332 0 (BalanceConc!11701 Empty!5878)))))

(assert (=> d!486036 (= (print!1275 thiss!17113 lt!578332) lt!578518)))

(declare-fun bs!394082 () Bool)

(assert (= bs!394082 d!486036))

(declare-fun m!1935255 () Bool)

(assert (=> bs!394082 m!1935255))

(assert (=> bs!394082 m!1934741))

(assert (=> bs!394082 m!1934741))

(declare-fun m!1935257 () Bool)

(assert (=> bs!394082 m!1935257))

(declare-fun m!1935259 () Bool)

(assert (=> bs!394082 m!1935259))

(assert (=> b!1615197 d!486036))

(declare-fun d!486038 () Bool)

(assert (=> d!486038 (= (head!3350 lt!578343) (h!23081 lt!578343))))

(assert (=> b!1615195 d!486038))

(declare-fun d!486040 () Bool)

(assert (=> d!486040 (= (inv!23078 (tag!3391 (h!23083 rules!1846))) (= (mod (str.len (value!98449 (tag!3391 (h!23083 rules!1846)))) 2) 0))))

(assert (=> b!1615194 d!486040))

(declare-fun d!486042 () Bool)

(declare-fun res!720969 () Bool)

(declare-fun e!1036175 () Bool)

(assert (=> d!486042 (=> (not res!720969) (not e!1036175))))

(declare-fun semiInverseModEq!1184 (Int Int) Bool)

(assert (=> d!486042 (= res!720969 (semiInverseModEq!1184 (toChars!4397 (transformation!3115 (h!23083 rules!1846))) (toValue!4538 (transformation!3115 (h!23083 rules!1846)))))))

(assert (=> d!486042 (= (inv!23082 (transformation!3115 (h!23083 rules!1846))) e!1036175)))

(declare-fun b!1615403 () Bool)

(declare-fun equivClasses!1125 (Int Int) Bool)

(assert (=> b!1615403 (= e!1036175 (equivClasses!1125 (toChars!4397 (transformation!3115 (h!23083 rules!1846))) (toValue!4538 (transformation!3115 (h!23083 rules!1846)))))))

(assert (= (and d!486042 res!720969) b!1615403))

(declare-fun m!1935261 () Bool)

(assert (=> d!486042 m!1935261))

(declare-fun m!1935263 () Bool)

(assert (=> b!1615403 m!1935263))

(assert (=> b!1615194 d!486042))

(declare-fun d!486044 () Bool)

(assert (=> d!486044 (= (list!6912 (_1!10006 lt!578337)) (list!6916 (c!263025 (_1!10006 lt!578337))))))

(declare-fun bs!394083 () Bool)

(assert (= bs!394083 d!486044))

(declare-fun m!1935265 () Bool)

(assert (=> bs!394083 m!1935265))

(assert (=> b!1615192 d!486044))

(declare-fun d!486046 () Bool)

(declare-fun e!1036192 () Bool)

(assert (=> d!486046 e!1036192))

(declare-fun res!720974 () Bool)

(assert (=> d!486046 (=> (not res!720974) (not e!1036192))))

(assert (=> d!486046 (= res!720974 (= (list!6912 (_1!10006 (lex!1228 thiss!17113 rules!1846 (print!1275 thiss!17113 (seqFromList!1980 (t!148224 tokens!457)))))) (t!148224 tokens!457)))))

(declare-fun lt!578575 () Unit!28415)

(declare-fun e!1036191 () Unit!28415)

(assert (=> d!486046 (= lt!578575 e!1036191)))

(declare-fun c!263067 () Bool)

(assert (=> d!486046 (= c!263067 (or ((_ is Nil!17681) (t!148224 tokens!457)) ((_ is Nil!17681) (t!148224 (t!148224 tokens!457)))))))

(assert (=> d!486046 (not (isEmpty!10692 rules!1846))))

(assert (=> d!486046 (= (theoremInvertabilityWhenTokenListSeparable!189 thiss!17113 rules!1846 (t!148224 tokens!457)) lt!578575)))

(declare-fun b!1615425 () Bool)

(declare-fun Unit!28431 () Unit!28415)

(assert (=> b!1615425 (= e!1036191 Unit!28431)))

(declare-fun b!1615426 () Bool)

(declare-fun Unit!28432 () Unit!28415)

(assert (=> b!1615426 (= e!1036191 Unit!28432)))

(declare-fun lt!578599 () BalanceConc!11700)

(assert (=> b!1615426 (= lt!578599 (print!1275 thiss!17113 (seqFromList!1980 (t!148224 tokens!457))))))

(declare-fun lt!578579 () BalanceConc!11700)

(assert (=> b!1615426 (= lt!578579 (print!1275 thiss!17113 (seqFromList!1980 (t!148224 (t!148224 tokens!457)))))))

(declare-fun lt!578594 () tuple2!17208)

(assert (=> b!1615426 (= lt!578594 (lex!1228 thiss!17113 rules!1846 lt!578579))))

(declare-fun lt!578588 () List!17750)

(assert (=> b!1615426 (= lt!578588 (list!6911 (charsOf!1764 (h!23082 (t!148224 tokens!457)))))))

(declare-fun lt!578585 () List!17750)

(assert (=> b!1615426 (= lt!578585 (list!6911 lt!578579))))

(declare-fun lt!578598 () Unit!28415)

(assert (=> b!1615426 (= lt!578598 (lemmaConcatTwoListThenFirstIsPrefix!900 lt!578588 lt!578585))))

(assert (=> b!1615426 (isPrefix!1375 lt!578588 (++!4669 lt!578588 lt!578585))))

(declare-fun lt!578582 () Unit!28415)

(assert (=> b!1615426 (= lt!578582 lt!578598)))

(declare-fun lt!578591 () Unit!28415)

(assert (=> b!1615426 (= lt!578591 (theoremInvertabilityWhenTokenListSeparable!189 thiss!17113 rules!1846 (t!148224 (t!148224 tokens!457))))))

(declare-fun lt!578586 () Unit!28415)

(assert (=> b!1615426 (= lt!578586 (seqFromListBHdTlConstructive!192 (h!23082 (t!148224 (t!148224 tokens!457))) (t!148224 (t!148224 (t!148224 tokens!457))) (_1!10006 lt!578594)))))

(assert (=> b!1615426 (= (list!6912 (_1!10006 lt!578594)) (list!6912 (prepend!625 (seqFromList!1980 (t!148224 (t!148224 (t!148224 tokens!457)))) (h!23082 (t!148224 (t!148224 tokens!457))))))))

(declare-fun lt!578580 () Unit!28415)

(assert (=> b!1615426 (= lt!578580 lt!578586)))

(declare-fun lt!578578 () Option!3237)

(assert (=> b!1615426 (= lt!578578 (maxPrefix!1308 thiss!17113 rules!1846 (list!6911 lt!578599)))))

(assert (=> b!1615426 (= (print!1275 thiss!17113 (singletonSeq!1509 (h!23082 (t!148224 tokens!457)))) (printTailRec!797 thiss!17113 (singletonSeq!1509 (h!23082 (t!148224 tokens!457))) 0 (BalanceConc!11701 Empty!5878)))))

(declare-fun lt!578596 () Unit!28415)

(declare-fun Unit!28433 () Unit!28415)

(assert (=> b!1615426 (= lt!578596 Unit!28433)))

(declare-fun lt!578600 () Unit!28415)

(assert (=> b!1615426 (= lt!578600 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!318 thiss!17113 rules!1846 (list!6911 (charsOf!1764 (h!23082 (t!148224 tokens!457)))) (list!6911 lt!578579)))))

(assert (=> b!1615426 (= (list!6911 (charsOf!1764 (h!23082 (t!148224 tokens!457)))) (originalCharacters!3929 (h!23082 (t!148224 tokens!457))))))

(declare-fun lt!578584 () Unit!28415)

(declare-fun Unit!28434 () Unit!28415)

(assert (=> b!1615426 (= lt!578584 Unit!28434)))

(assert (=> b!1615426 (= (list!6911 (singletonSeq!1508 (apply!4444 (charsOf!1764 (h!23082 (t!148224 (t!148224 tokens!457)))) 0))) (Cons!17680 (head!3350 (originalCharacters!3929 (h!23082 (t!148224 (t!148224 tokens!457))))) Nil!17680))))

(declare-fun lt!578577 () Unit!28415)

(declare-fun Unit!28435 () Unit!28415)

(assert (=> b!1615426 (= lt!578577 Unit!28435)))

(assert (=> b!1615426 (= (list!6911 (singletonSeq!1508 (apply!4444 (charsOf!1764 (h!23082 (t!148224 (t!148224 tokens!457)))) 0))) (Cons!17680 (head!3350 (list!6911 lt!578579)) Nil!17680))))

(declare-fun lt!578587 () Unit!28415)

(declare-fun Unit!28436 () Unit!28415)

(assert (=> b!1615426 (= lt!578587 Unit!28436)))

(assert (=> b!1615426 (= (list!6911 (singletonSeq!1508 (apply!4444 (charsOf!1764 (h!23082 (t!148224 (t!148224 tokens!457)))) 0))) (Cons!17680 (head!3351 lt!578579) Nil!17680))))

(declare-fun lt!578595 () Unit!28415)

(declare-fun Unit!28437 () Unit!28415)

(assert (=> b!1615426 (= lt!578595 Unit!28437)))

(assert (=> b!1615426 (isDefined!2604 (maxPrefix!1308 thiss!17113 rules!1846 (originalCharacters!3929 (h!23082 (t!148224 tokens!457)))))))

(declare-fun lt!578593 () Unit!28415)

(declare-fun Unit!28438 () Unit!28415)

(assert (=> b!1615426 (= lt!578593 Unit!28438)))

(assert (=> b!1615426 (isDefined!2604 (maxPrefix!1308 thiss!17113 rules!1846 (list!6911 (charsOf!1764 (h!23082 (t!148224 tokens!457))))))))

(declare-fun lt!578597 () Unit!28415)

(declare-fun Unit!28439 () Unit!28415)

(assert (=> b!1615426 (= lt!578597 Unit!28439)))

(declare-fun lt!578583 () Unit!28415)

(declare-fun Unit!28440 () Unit!28415)

(assert (=> b!1615426 (= lt!578583 Unit!28440)))

(assert (=> b!1615426 (= (_1!10005 (get!5069 (maxPrefix!1308 thiss!17113 rules!1846 (list!6911 (charsOf!1764 (h!23082 (t!148224 tokens!457))))))) (h!23082 (t!148224 tokens!457)))))

(declare-fun lt!578589 () Unit!28415)

(declare-fun Unit!28441 () Unit!28415)

(assert (=> b!1615426 (= lt!578589 Unit!28441)))

(assert (=> b!1615426 (isEmpty!10698 (_2!10005 (get!5069 (maxPrefix!1308 thiss!17113 rules!1846 (list!6911 (charsOf!1764 (h!23082 (t!148224 tokens!457))))))))))

(declare-fun lt!578576 () Unit!28415)

(declare-fun Unit!28442 () Unit!28415)

(assert (=> b!1615426 (= lt!578576 Unit!28442)))

(declare-fun matchR!1944 (Regex!4443 List!17750) Bool)

(assert (=> b!1615426 (matchR!1944 (regex!3115 (rule!4935 (h!23082 (t!148224 tokens!457)))) (list!6911 (charsOf!1764 (h!23082 (t!148224 tokens!457)))))))

(declare-fun lt!578592 () Unit!28415)

(declare-fun Unit!28443 () Unit!28415)

(assert (=> b!1615426 (= lt!578592 Unit!28443)))

(assert (=> b!1615426 (= (rule!4935 (h!23082 (t!148224 tokens!457))) (rule!4935 (h!23082 (t!148224 tokens!457))))))

(declare-fun lt!578590 () Unit!28415)

(declare-fun Unit!28444 () Unit!28415)

(assert (=> b!1615426 (= lt!578590 Unit!28444)))

(declare-fun lt!578581 () Unit!28415)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!94 (LexerInterface!2744 List!17752 Token!5796 Rule!6030 List!17750) Unit!28415)

(assert (=> b!1615426 (= lt!578581 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!94 thiss!17113 rules!1846 (h!23082 (t!148224 tokens!457)) (rule!4935 (h!23082 (t!148224 tokens!457))) (list!6911 lt!578579)))))

(declare-fun b!1615427 () Bool)

(declare-fun isEmpty!10700 (BalanceConc!11700) Bool)

(assert (=> b!1615427 (= e!1036192 (isEmpty!10700 (_2!10006 (lex!1228 thiss!17113 rules!1846 (print!1275 thiss!17113 (seqFromList!1980 (t!148224 tokens!457)))))))))

(assert (= (and d!486046 c!263067) b!1615425))

(assert (= (and d!486046 (not c!263067)) b!1615426))

(assert (= (and d!486046 res!720974) b!1615427))

(declare-fun m!1935279 () Bool)

(assert (=> d!486046 m!1935279))

(declare-fun m!1935281 () Bool)

(assert (=> d!486046 m!1935281))

(assert (=> d!486046 m!1934793))

(assert (=> d!486046 m!1934817))

(assert (=> d!486046 m!1934817))

(assert (=> d!486046 m!1935279))

(declare-fun m!1935283 () Bool)

(assert (=> d!486046 m!1935283))

(assert (=> b!1615426 m!1935113))

(declare-fun m!1935285 () Bool)

(assert (=> b!1615426 m!1935285))

(declare-fun m!1935287 () Bool)

(assert (=> b!1615426 m!1935287))

(declare-fun m!1935289 () Bool)

(assert (=> b!1615426 m!1935289))

(assert (=> b!1615426 m!1934791))

(assert (=> b!1615426 m!1935113))

(declare-fun m!1935291 () Bool)

(assert (=> b!1615426 m!1935291))

(declare-fun m!1935293 () Bool)

(assert (=> b!1615426 m!1935293))

(declare-fun m!1935295 () Bool)

(assert (=> b!1615426 m!1935295))

(declare-fun m!1935297 () Bool)

(assert (=> b!1615426 m!1935297))

(declare-fun m!1935299 () Bool)

(assert (=> b!1615426 m!1935299))

(declare-fun m!1935301 () Bool)

(assert (=> b!1615426 m!1935301))

(declare-fun m!1935303 () Bool)

(assert (=> b!1615426 m!1935303))

(declare-fun m!1935305 () Bool)

(assert (=> b!1615426 m!1935305))

(declare-fun m!1935307 () Bool)

(assert (=> b!1615426 m!1935307))

(assert (=> b!1615426 m!1935113))

(assert (=> b!1615426 m!1935303))

(declare-fun m!1935309 () Bool)

(assert (=> b!1615426 m!1935309))

(assert (=> b!1615426 m!1934791))

(declare-fun m!1935311 () Bool)

(assert (=> b!1615426 m!1935311))

(declare-fun m!1935313 () Bool)

(assert (=> b!1615426 m!1935313))

(assert (=> b!1615426 m!1935311))

(declare-fun m!1935315 () Bool)

(assert (=> b!1615426 m!1935315))

(assert (=> b!1615426 m!1935299))

(declare-fun m!1935317 () Bool)

(assert (=> b!1615426 m!1935317))

(declare-fun m!1935319 () Bool)

(assert (=> b!1615426 m!1935319))

(declare-fun m!1935321 () Bool)

(assert (=> b!1615426 m!1935321))

(declare-fun m!1935323 () Bool)

(assert (=> b!1615426 m!1935323))

(assert (=> b!1615426 m!1935301))

(declare-fun m!1935325 () Bool)

(assert (=> b!1615426 m!1935325))

(assert (=> b!1615426 m!1935291))

(assert (=> b!1615426 m!1935113))

(assert (=> b!1615426 m!1935311))

(declare-fun m!1935327 () Bool)

(assert (=> b!1615426 m!1935327))

(declare-fun m!1935329 () Bool)

(assert (=> b!1615426 m!1935329))

(declare-fun m!1935331 () Bool)

(assert (=> b!1615426 m!1935331))

(declare-fun m!1935333 () Bool)

(assert (=> b!1615426 m!1935333))

(assert (=> b!1615426 m!1935303))

(declare-fun m!1935335 () Bool)

(assert (=> b!1615426 m!1935335))

(assert (=> b!1615426 m!1935295))

(declare-fun m!1935337 () Bool)

(assert (=> b!1615426 m!1935337))

(assert (=> b!1615426 m!1935319))

(assert (=> b!1615426 m!1934817))

(assert (=> b!1615426 m!1935289))

(declare-fun m!1935339 () Bool)

(assert (=> b!1615426 m!1935339))

(assert (=> b!1615426 m!1935289))

(declare-fun m!1935341 () Bool)

(assert (=> b!1615426 m!1935341))

(assert (=> b!1615426 m!1934745))

(declare-fun m!1935343 () Bool)

(assert (=> b!1615426 m!1935343))

(assert (=> b!1615426 m!1935303))

(declare-fun m!1935345 () Bool)

(assert (=> b!1615426 m!1935345))

(assert (=> b!1615426 m!1935331))

(assert (=> b!1615426 m!1934745))

(declare-fun m!1935347 () Bool)

(assert (=> b!1615426 m!1935347))

(assert (=> b!1615426 m!1935307))

(assert (=> b!1615426 m!1935337))

(assert (=> b!1615426 m!1934817))

(assert (=> b!1615426 m!1935279))

(declare-fun m!1935349 () Bool)

(assert (=> b!1615426 m!1935349))

(assert (=> b!1615427 m!1934817))

(assert (=> b!1615427 m!1934817))

(assert (=> b!1615427 m!1935279))

(assert (=> b!1615427 m!1935279))

(assert (=> b!1615427 m!1935281))

(declare-fun m!1935351 () Bool)

(assert (=> b!1615427 m!1935351))

(assert (=> b!1615192 d!486046))

(declare-fun b!1615437 () Bool)

(declare-fun res!720985 () Bool)

(declare-fun e!1036201 () Bool)

(assert (=> b!1615437 (=> (not res!720985) (not e!1036201))))

(assert (=> b!1615437 (= res!720985 (= (head!3350 lt!578346) (head!3350 lt!578335)))))

(declare-fun b!1615438 () Bool)

(assert (=> b!1615438 (= e!1036201 (isPrefix!1375 (tail!2328 lt!578346) (tail!2328 lt!578335)))))

(declare-fun b!1615439 () Bool)

(declare-fun e!1036200 () Bool)

(assert (=> b!1615439 (= e!1036200 (>= (size!14189 lt!578335) (size!14189 lt!578346)))))

(declare-fun d!486058 () Bool)

(assert (=> d!486058 e!1036200))

(declare-fun res!720984 () Bool)

(assert (=> d!486058 (=> res!720984 e!1036200)))

(declare-fun lt!578603 () Bool)

(assert (=> d!486058 (= res!720984 (not lt!578603))))

(declare-fun e!1036199 () Bool)

(assert (=> d!486058 (= lt!578603 e!1036199)))

(declare-fun res!720983 () Bool)

(assert (=> d!486058 (=> res!720983 e!1036199)))

(assert (=> d!486058 (= res!720983 ((_ is Nil!17680) lt!578346))))

(assert (=> d!486058 (= (isPrefix!1375 lt!578346 lt!578335) lt!578603)))

(declare-fun b!1615436 () Bool)

(assert (=> b!1615436 (= e!1036199 e!1036201)))

(declare-fun res!720986 () Bool)

(assert (=> b!1615436 (=> (not res!720986) (not e!1036201))))

(assert (=> b!1615436 (= res!720986 (not ((_ is Nil!17680) lt!578335)))))

(assert (= (and d!486058 (not res!720983)) b!1615436))

(assert (= (and b!1615436 res!720986) b!1615437))

(assert (= (and b!1615437 res!720985) b!1615438))

(assert (= (and d!486058 (not res!720984)) b!1615439))

(declare-fun m!1935353 () Bool)

(assert (=> b!1615437 m!1935353))

(declare-fun m!1935355 () Bool)

(assert (=> b!1615437 m!1935355))

(declare-fun m!1935357 () Bool)

(assert (=> b!1615438 m!1935357))

(declare-fun m!1935359 () Bool)

(assert (=> b!1615438 m!1935359))

(assert (=> b!1615438 m!1935357))

(assert (=> b!1615438 m!1935359))

(declare-fun m!1935361 () Bool)

(assert (=> b!1615438 m!1935361))

(declare-fun m!1935363 () Bool)

(assert (=> b!1615439 m!1935363))

(assert (=> b!1615439 m!1935169))

(assert (=> b!1615192 d!486058))

(declare-fun d!486060 () Bool)

(assert (=> d!486060 (isPrefix!1375 lt!578346 (++!4669 lt!578346 lt!578343))))

(declare-fun lt!578606 () Unit!28415)

(declare-fun choose!9717 (List!17750 List!17750) Unit!28415)

(assert (=> d!486060 (= lt!578606 (choose!9717 lt!578346 lt!578343))))

(assert (=> d!486060 (= (lemmaConcatTwoListThenFirstIsPrefix!900 lt!578346 lt!578343) lt!578606)))

(declare-fun bs!394086 () Bool)

(assert (= bs!394086 d!486060))

(assert (=> bs!394086 m!1934809))

(assert (=> bs!394086 m!1934809))

(declare-fun m!1935365 () Bool)

(assert (=> bs!394086 m!1935365))

(declare-fun m!1935367 () Bool)

(assert (=> bs!394086 m!1935367))

(assert (=> b!1615192 d!486060))

(declare-fun d!486062 () Bool)

(assert (=> d!486062 (= (inv!23078 (tag!3391 (rule!4935 (h!23082 tokens!457)))) (= (mod (str.len (value!98449 (tag!3391 (rule!4935 (h!23082 tokens!457))))) 2) 0))))

(assert (=> b!1615193 d!486062))

(declare-fun d!486064 () Bool)

(declare-fun res!720987 () Bool)

(declare-fun e!1036202 () Bool)

(assert (=> d!486064 (=> (not res!720987) (not e!1036202))))

(assert (=> d!486064 (= res!720987 (semiInverseModEq!1184 (toChars!4397 (transformation!3115 (rule!4935 (h!23082 tokens!457)))) (toValue!4538 (transformation!3115 (rule!4935 (h!23082 tokens!457))))))))

(assert (=> d!486064 (= (inv!23082 (transformation!3115 (rule!4935 (h!23082 tokens!457)))) e!1036202)))

(declare-fun b!1615440 () Bool)

(assert (=> b!1615440 (= e!1036202 (equivClasses!1125 (toChars!4397 (transformation!3115 (rule!4935 (h!23082 tokens!457)))) (toValue!4538 (transformation!3115 (rule!4935 (h!23082 tokens!457))))))))

(assert (= (and d!486064 res!720987) b!1615440))

(declare-fun m!1935369 () Bool)

(assert (=> d!486064 m!1935369))

(declare-fun m!1935371 () Bool)

(assert (=> b!1615440 m!1935371))

(assert (=> b!1615193 d!486064))

(declare-fun d!486066 () Bool)

(declare-fun lt!578609 () Bool)

(declare-fun isEmpty!10701 (List!17751) Bool)

(assert (=> d!486066 (= lt!578609 (isEmpty!10701 (list!6912 (_1!10006 (lex!1228 thiss!17113 rules!1846 (seqFromList!1979 lt!578346))))))))

(declare-fun isEmpty!10702 (Conc!5879) Bool)

(assert (=> d!486066 (= lt!578609 (isEmpty!10702 (c!263025 (_1!10006 (lex!1228 thiss!17113 rules!1846 (seqFromList!1979 lt!578346))))))))

(assert (=> d!486066 (= (isEmpty!10693 (_1!10006 (lex!1228 thiss!17113 rules!1846 (seqFromList!1979 lt!578346)))) lt!578609)))

(declare-fun bs!394087 () Bool)

(assert (= bs!394087 d!486066))

(declare-fun m!1935373 () Bool)

(assert (=> bs!394087 m!1935373))

(assert (=> bs!394087 m!1935373))

(declare-fun m!1935375 () Bool)

(assert (=> bs!394087 m!1935375))

(declare-fun m!1935377 () Bool)

(assert (=> bs!394087 m!1935377))

(assert (=> b!1615191 d!486066))

(declare-fun b!1615441 () Bool)

(declare-fun lt!578610 () tuple2!17208)

(declare-fun e!1036204 () Bool)

(assert (=> b!1615441 (= e!1036204 (= (list!6911 (_2!10006 lt!578610)) (_2!10009 (lexList!813 thiss!17113 rules!1846 (list!6911 (seqFromList!1979 lt!578346))))))))

(declare-fun d!486068 () Bool)

(assert (=> d!486068 e!1036204))

(declare-fun res!720988 () Bool)

(assert (=> d!486068 (=> (not res!720988) (not e!1036204))))

(declare-fun e!1036203 () Bool)

(assert (=> d!486068 (= res!720988 e!1036203)))

(declare-fun c!263068 () Bool)

(assert (=> d!486068 (= c!263068 (> (size!14190 (_1!10006 lt!578610)) 0))))

(assert (=> d!486068 (= lt!578610 (lexTailRecV2!536 thiss!17113 rules!1846 (seqFromList!1979 lt!578346) (BalanceConc!11701 Empty!5878) (seqFromList!1979 lt!578346) (BalanceConc!11703 Empty!5879)))))

(assert (=> d!486068 (= (lex!1228 thiss!17113 rules!1846 (seqFromList!1979 lt!578346)) lt!578610)))

(declare-fun b!1615442 () Bool)

(declare-fun e!1036205 () Bool)

(assert (=> b!1615442 (= e!1036205 (not (isEmpty!10693 (_1!10006 lt!578610))))))

(declare-fun b!1615443 () Bool)

(declare-fun res!720989 () Bool)

(assert (=> b!1615443 (=> (not res!720989) (not e!1036204))))

(assert (=> b!1615443 (= res!720989 (= (list!6912 (_1!10006 lt!578610)) (_1!10009 (lexList!813 thiss!17113 rules!1846 (list!6911 (seqFromList!1979 lt!578346))))))))

(declare-fun b!1615444 () Bool)

(assert (=> b!1615444 (= e!1036203 e!1036205)))

(declare-fun res!720990 () Bool)

(assert (=> b!1615444 (= res!720990 (< (size!14188 (_2!10006 lt!578610)) (size!14188 (seqFromList!1979 lt!578346))))))

(assert (=> b!1615444 (=> (not res!720990) (not e!1036205))))

(declare-fun b!1615445 () Bool)

(assert (=> b!1615445 (= e!1036203 (= (_2!10006 lt!578610) (seqFromList!1979 lt!578346)))))

(assert (= (and d!486068 c!263068) b!1615444))

(assert (= (and d!486068 (not c!263068)) b!1615445))

(assert (= (and b!1615444 res!720990) b!1615442))

(assert (= (and d!486068 res!720988) b!1615443))

(assert (= (and b!1615443 res!720989) b!1615441))

(declare-fun m!1935379 () Bool)

(assert (=> b!1615444 m!1935379))

(assert (=> b!1615444 m!1934731))

(declare-fun m!1935381 () Bool)

(assert (=> b!1615444 m!1935381))

(declare-fun m!1935383 () Bool)

(assert (=> b!1615443 m!1935383))

(assert (=> b!1615443 m!1934731))

(declare-fun m!1935385 () Bool)

(assert (=> b!1615443 m!1935385))

(assert (=> b!1615443 m!1935385))

(declare-fun m!1935387 () Bool)

(assert (=> b!1615443 m!1935387))

(declare-fun m!1935389 () Bool)

(assert (=> b!1615441 m!1935389))

(assert (=> b!1615441 m!1934731))

(assert (=> b!1615441 m!1935385))

(assert (=> b!1615441 m!1935385))

(assert (=> b!1615441 m!1935387))

(declare-fun m!1935391 () Bool)

(assert (=> b!1615442 m!1935391))

(declare-fun m!1935393 () Bool)

(assert (=> d!486068 m!1935393))

(assert (=> d!486068 m!1934731))

(assert (=> d!486068 m!1934731))

(declare-fun m!1935395 () Bool)

(assert (=> d!486068 m!1935395))

(assert (=> b!1615191 d!486068))

(declare-fun d!486070 () Bool)

(assert (=> d!486070 (= (seqFromList!1979 lt!578346) (fromListB!862 lt!578346))))

(declare-fun bs!394088 () Bool)

(assert (= bs!394088 d!486070))

(declare-fun m!1935397 () Bool)

(assert (=> bs!394088 m!1935397))

(assert (=> b!1615191 d!486070))

(declare-fun d!486072 () Bool)

(assert (=> d!486072 (= (isEmpty!10692 rules!1846) ((_ is Nil!17682) rules!1846))))

(assert (=> b!1615190 d!486072))

(declare-fun b!1615464 () Bool)

(declare-fun res!721006 () Bool)

(declare-fun e!1036212 () Bool)

(assert (=> b!1615464 (=> (not res!721006) (not e!1036212))))

(declare-fun lt!578624 () Option!3237)

(assert (=> b!1615464 (= res!721006 (= (++!4669 (list!6911 (charsOf!1764 (_1!10005 (get!5069 lt!578624)))) (_2!10005 (get!5069 lt!578624))) (originalCharacters!3929 (h!23082 tokens!457))))))

(declare-fun b!1615465 () Bool)

(declare-fun res!721010 () Bool)

(assert (=> b!1615465 (=> (not res!721010) (not e!1036212))))

(assert (=> b!1615465 (= res!721010 (matchR!1944 (regex!3115 (rule!4935 (_1!10005 (get!5069 lt!578624)))) (list!6911 (charsOf!1764 (_1!10005 (get!5069 lt!578624))))))))

(declare-fun b!1615466 () Bool)

(declare-fun e!1036214 () Option!3237)

(declare-fun lt!578622 () Option!3237)

(declare-fun lt!578625 () Option!3237)

(assert (=> b!1615466 (= e!1036214 (ite (and ((_ is None!3236) lt!578622) ((_ is None!3236) lt!578625)) None!3236 (ite ((_ is None!3236) lt!578625) lt!578622 (ite ((_ is None!3236) lt!578622) lt!578625 (ite (>= (size!14184 (_1!10005 (v!24219 lt!578622))) (size!14184 (_1!10005 (v!24219 lt!578625)))) lt!578622 lt!578625)))))))

(declare-fun call!104829 () Option!3237)

(assert (=> b!1615466 (= lt!578622 call!104829)))

(assert (=> b!1615466 (= lt!578625 (maxPrefix!1308 thiss!17113 (t!148225 rules!1846) (originalCharacters!3929 (h!23082 tokens!457))))))

(declare-fun b!1615467 () Bool)

(declare-fun res!721007 () Bool)

(assert (=> b!1615467 (=> (not res!721007) (not e!1036212))))

(declare-fun apply!4450 (TokenValueInjection!6070 BalanceConc!11700) TokenValue!3205)

(assert (=> b!1615467 (= res!721007 (= (value!98450 (_1!10005 (get!5069 lt!578624))) (apply!4450 (transformation!3115 (rule!4935 (_1!10005 (get!5069 lt!578624)))) (seqFromList!1979 (originalCharacters!3929 (_1!10005 (get!5069 lt!578624)))))))))

(declare-fun b!1615468 () Bool)

(declare-fun contains!3092 (List!17752 Rule!6030) Bool)

(assert (=> b!1615468 (= e!1036212 (contains!3092 rules!1846 (rule!4935 (_1!10005 (get!5069 lt!578624)))))))

(declare-fun bm!104824 () Bool)

(declare-fun maxPrefixOneRule!759 (LexerInterface!2744 Rule!6030 List!17750) Option!3237)

(assert (=> bm!104824 (= call!104829 (maxPrefixOneRule!759 thiss!17113 (h!23083 rules!1846) (originalCharacters!3929 (h!23082 tokens!457))))))

(declare-fun b!1615469 () Bool)

(declare-fun res!721009 () Bool)

(assert (=> b!1615469 (=> (not res!721009) (not e!1036212))))

(assert (=> b!1615469 (= res!721009 (= (list!6911 (charsOf!1764 (_1!10005 (get!5069 lt!578624)))) (originalCharacters!3929 (_1!10005 (get!5069 lt!578624)))))))

(declare-fun b!1615470 () Bool)

(declare-fun e!1036213 () Bool)

(assert (=> b!1615470 (= e!1036213 e!1036212)))

(declare-fun res!721005 () Bool)

(assert (=> b!1615470 (=> (not res!721005) (not e!1036212))))

(assert (=> b!1615470 (= res!721005 (isDefined!2604 lt!578624))))

(declare-fun b!1615471 () Bool)

(declare-fun res!721011 () Bool)

(assert (=> b!1615471 (=> (not res!721011) (not e!1036212))))

(assert (=> b!1615471 (= res!721011 (< (size!14189 (_2!10005 (get!5069 lt!578624))) (size!14189 (originalCharacters!3929 (h!23082 tokens!457)))))))

(declare-fun b!1615472 () Bool)

(assert (=> b!1615472 (= e!1036214 call!104829)))

(declare-fun d!486074 () Bool)

(assert (=> d!486074 e!1036213))

(declare-fun res!721008 () Bool)

(assert (=> d!486074 (=> res!721008 e!1036213)))

(declare-fun isEmpty!10703 (Option!3237) Bool)

(assert (=> d!486074 (= res!721008 (isEmpty!10703 lt!578624))))

(assert (=> d!486074 (= lt!578624 e!1036214)))

(declare-fun c!263071 () Bool)

(assert (=> d!486074 (= c!263071 (and ((_ is Cons!17682) rules!1846) ((_ is Nil!17682) (t!148225 rules!1846))))))

(declare-fun lt!578623 () Unit!28415)

(declare-fun lt!578621 () Unit!28415)

(assert (=> d!486074 (= lt!578623 lt!578621)))

(assert (=> d!486074 (isPrefix!1375 (originalCharacters!3929 (h!23082 tokens!457)) (originalCharacters!3929 (h!23082 tokens!457)))))

(assert (=> d!486074 (= lt!578621 (lemmaIsPrefixRefl!944 (originalCharacters!3929 (h!23082 tokens!457)) (originalCharacters!3929 (h!23082 tokens!457))))))

(assert (=> d!486074 (rulesValidInductive!954 thiss!17113 rules!1846)))

(assert (=> d!486074 (= (maxPrefix!1308 thiss!17113 rules!1846 (originalCharacters!3929 (h!23082 tokens!457))) lt!578624)))

(assert (= (and d!486074 c!263071) b!1615472))

(assert (= (and d!486074 (not c!263071)) b!1615466))

(assert (= (or b!1615472 b!1615466) bm!104824))

(assert (= (and d!486074 (not res!721008)) b!1615470))

(assert (= (and b!1615470 res!721005) b!1615469))

(assert (= (and b!1615469 res!721009) b!1615471))

(assert (= (and b!1615471 res!721011) b!1615464))

(assert (= (and b!1615464 res!721006) b!1615467))

(assert (= (and b!1615467 res!721007) b!1615465))

(assert (= (and b!1615465 res!721010) b!1615468))

(declare-fun m!1935399 () Bool)

(assert (=> b!1615465 m!1935399))

(declare-fun m!1935401 () Bool)

(assert (=> b!1615465 m!1935401))

(assert (=> b!1615465 m!1935401))

(declare-fun m!1935403 () Bool)

(assert (=> b!1615465 m!1935403))

(assert (=> b!1615465 m!1935403))

(declare-fun m!1935405 () Bool)

(assert (=> b!1615465 m!1935405))

(declare-fun m!1935407 () Bool)

(assert (=> d!486074 m!1935407))

(declare-fun m!1935409 () Bool)

(assert (=> d!486074 m!1935409))

(declare-fun m!1935411 () Bool)

(assert (=> d!486074 m!1935411))

(assert (=> d!486074 m!1934827))

(declare-fun m!1935413 () Bool)

(assert (=> bm!104824 m!1935413))

(assert (=> b!1615471 m!1935399))

(declare-fun m!1935415 () Bool)

(assert (=> b!1615471 m!1935415))

(declare-fun m!1935417 () Bool)

(assert (=> b!1615471 m!1935417))

(assert (=> b!1615468 m!1935399))

(declare-fun m!1935419 () Bool)

(assert (=> b!1615468 m!1935419))

(assert (=> b!1615464 m!1935399))

(assert (=> b!1615464 m!1935401))

(assert (=> b!1615464 m!1935401))

(assert (=> b!1615464 m!1935403))

(assert (=> b!1615464 m!1935403))

(declare-fun m!1935421 () Bool)

(assert (=> b!1615464 m!1935421))

(assert (=> b!1615467 m!1935399))

(declare-fun m!1935423 () Bool)

(assert (=> b!1615467 m!1935423))

(assert (=> b!1615467 m!1935423))

(declare-fun m!1935425 () Bool)

(assert (=> b!1615467 m!1935425))

(assert (=> b!1615469 m!1935399))

(assert (=> b!1615469 m!1935401))

(assert (=> b!1615469 m!1935401))

(assert (=> b!1615469 m!1935403))

(declare-fun m!1935427 () Bool)

(assert (=> b!1615466 m!1935427))

(declare-fun m!1935429 () Bool)

(assert (=> b!1615470 m!1935429))

(assert (=> b!1615188 d!486074))

(declare-fun d!486076 () Bool)

(assert (=> d!486076 (= (isDefined!2604 (maxPrefix!1308 thiss!17113 rules!1846 (originalCharacters!3929 (h!23082 tokens!457)))) (not (isEmpty!10703 (maxPrefix!1308 thiss!17113 rules!1846 (originalCharacters!3929 (h!23082 tokens!457))))))))

(declare-fun bs!394089 () Bool)

(assert (= bs!394089 d!486076))

(assert (=> bs!394089 m!1934821))

(declare-fun m!1935431 () Bool)

(assert (=> bs!394089 m!1935431))

(assert (=> b!1615188 d!486076))

(declare-fun d!486078 () Bool)

(assert (=> d!486078 true))

(declare-fun lt!578735 () Bool)

(declare-fun lambda!67095 () Int)

(declare-fun forall!4059 (List!17752 Int) Bool)

(assert (=> d!486078 (= lt!578735 (forall!4059 rules!1846 lambda!67095))))

(declare-fun e!1036261 () Bool)

(assert (=> d!486078 (= lt!578735 e!1036261)))

(declare-fun res!721069 () Bool)

(assert (=> d!486078 (=> res!721069 e!1036261)))

(assert (=> d!486078 (= res!721069 (not ((_ is Cons!17682) rules!1846)))))

(assert (=> d!486078 (= (rulesValidInductive!954 thiss!17113 rules!1846) lt!578735)))

(declare-fun b!1615557 () Bool)

(declare-fun e!1036262 () Bool)

(assert (=> b!1615557 (= e!1036261 e!1036262)))

(declare-fun res!721068 () Bool)

(assert (=> b!1615557 (=> (not res!721068) (not e!1036262))))

(declare-fun ruleValid!729 (LexerInterface!2744 Rule!6030) Bool)

(assert (=> b!1615557 (= res!721068 (ruleValid!729 thiss!17113 (h!23083 rules!1846)))))

(declare-fun b!1615558 () Bool)

(assert (=> b!1615558 (= e!1036262 (rulesValidInductive!954 thiss!17113 (t!148225 rules!1846)))))

(assert (= (and d!486078 (not res!721069)) b!1615557))

(assert (= (and b!1615557 res!721068) b!1615558))

(declare-fun m!1935603 () Bool)

(assert (=> d!486078 m!1935603))

(declare-fun m!1935605 () Bool)

(assert (=> b!1615557 m!1935605))

(declare-fun m!1935607 () Bool)

(assert (=> b!1615558 m!1935607))

(assert (=> b!1615188 d!486078))

(declare-fun d!486104 () Bool)

(assert (=> d!486104 (= (isDefined!2604 lt!578331) (not (isEmpty!10703 lt!578331)))))

(declare-fun bs!394094 () Bool)

(assert (= bs!394094 d!486104))

(declare-fun m!1935609 () Bool)

(assert (=> bs!394094 m!1935609))

(assert (=> b!1615188 d!486104))

(declare-fun b!1615561 () Bool)

(declare-fun res!721071 () Bool)

(declare-fun e!1036263 () Bool)

(assert (=> b!1615561 (=> (not res!721071) (not e!1036263))))

(declare-fun lt!578739 () Option!3237)

(assert (=> b!1615561 (= res!721071 (= (++!4669 (list!6911 (charsOf!1764 (_1!10005 (get!5069 lt!578739)))) (_2!10005 (get!5069 lt!578739))) lt!578346))))

(declare-fun b!1615562 () Bool)

(declare-fun res!721075 () Bool)

(assert (=> b!1615562 (=> (not res!721075) (not e!1036263))))

(assert (=> b!1615562 (= res!721075 (matchR!1944 (regex!3115 (rule!4935 (_1!10005 (get!5069 lt!578739)))) (list!6911 (charsOf!1764 (_1!10005 (get!5069 lt!578739))))))))

(declare-fun b!1615563 () Bool)

(declare-fun e!1036265 () Option!3237)

(declare-fun lt!578737 () Option!3237)

(declare-fun lt!578740 () Option!3237)

(assert (=> b!1615563 (= e!1036265 (ite (and ((_ is None!3236) lt!578737) ((_ is None!3236) lt!578740)) None!3236 (ite ((_ is None!3236) lt!578740) lt!578737 (ite ((_ is None!3236) lt!578737) lt!578740 (ite (>= (size!14184 (_1!10005 (v!24219 lt!578737))) (size!14184 (_1!10005 (v!24219 lt!578740)))) lt!578737 lt!578740)))))))

(declare-fun call!104834 () Option!3237)

(assert (=> b!1615563 (= lt!578737 call!104834)))

(assert (=> b!1615563 (= lt!578740 (maxPrefix!1308 thiss!17113 (t!148225 rules!1846) lt!578346))))

(declare-fun b!1615564 () Bool)

(declare-fun res!721072 () Bool)

(assert (=> b!1615564 (=> (not res!721072) (not e!1036263))))

(assert (=> b!1615564 (= res!721072 (= (value!98450 (_1!10005 (get!5069 lt!578739))) (apply!4450 (transformation!3115 (rule!4935 (_1!10005 (get!5069 lt!578739)))) (seqFromList!1979 (originalCharacters!3929 (_1!10005 (get!5069 lt!578739)))))))))

(declare-fun b!1615565 () Bool)

(assert (=> b!1615565 (= e!1036263 (contains!3092 rules!1846 (rule!4935 (_1!10005 (get!5069 lt!578739)))))))

(declare-fun bm!104829 () Bool)

(assert (=> bm!104829 (= call!104834 (maxPrefixOneRule!759 thiss!17113 (h!23083 rules!1846) lt!578346))))

(declare-fun b!1615566 () Bool)

(declare-fun res!721074 () Bool)

(assert (=> b!1615566 (=> (not res!721074) (not e!1036263))))

(assert (=> b!1615566 (= res!721074 (= (list!6911 (charsOf!1764 (_1!10005 (get!5069 lt!578739)))) (originalCharacters!3929 (_1!10005 (get!5069 lt!578739)))))))

(declare-fun b!1615567 () Bool)

(declare-fun e!1036264 () Bool)

(assert (=> b!1615567 (= e!1036264 e!1036263)))

(declare-fun res!721070 () Bool)

(assert (=> b!1615567 (=> (not res!721070) (not e!1036263))))

(assert (=> b!1615567 (= res!721070 (isDefined!2604 lt!578739))))

(declare-fun b!1615568 () Bool)

(declare-fun res!721076 () Bool)

(assert (=> b!1615568 (=> (not res!721076) (not e!1036263))))

(assert (=> b!1615568 (= res!721076 (< (size!14189 (_2!10005 (get!5069 lt!578739))) (size!14189 lt!578346)))))

(declare-fun b!1615569 () Bool)

(assert (=> b!1615569 (= e!1036265 call!104834)))

(declare-fun d!486106 () Bool)

(assert (=> d!486106 e!1036264))

(declare-fun res!721073 () Bool)

(assert (=> d!486106 (=> res!721073 e!1036264)))

(assert (=> d!486106 (= res!721073 (isEmpty!10703 lt!578739))))

(assert (=> d!486106 (= lt!578739 e!1036265)))

(declare-fun c!263085 () Bool)

(assert (=> d!486106 (= c!263085 (and ((_ is Cons!17682) rules!1846) ((_ is Nil!17682) (t!148225 rules!1846))))))

(declare-fun lt!578738 () Unit!28415)

(declare-fun lt!578736 () Unit!28415)

(assert (=> d!486106 (= lt!578738 lt!578736)))

(assert (=> d!486106 (isPrefix!1375 lt!578346 lt!578346)))

(assert (=> d!486106 (= lt!578736 (lemmaIsPrefixRefl!944 lt!578346 lt!578346))))

(assert (=> d!486106 (rulesValidInductive!954 thiss!17113 rules!1846)))

(assert (=> d!486106 (= (maxPrefix!1308 thiss!17113 rules!1846 lt!578346) lt!578739)))

(assert (= (and d!486106 c!263085) b!1615569))

(assert (= (and d!486106 (not c!263085)) b!1615563))

(assert (= (or b!1615569 b!1615563) bm!104829))

(assert (= (and d!486106 (not res!721073)) b!1615567))

(assert (= (and b!1615567 res!721070) b!1615566))

(assert (= (and b!1615566 res!721074) b!1615568))

(assert (= (and b!1615568 res!721076) b!1615561))

(assert (= (and b!1615561 res!721071) b!1615564))

(assert (= (and b!1615564 res!721072) b!1615562))

(assert (= (and b!1615562 res!721075) b!1615565))

(declare-fun m!1935611 () Bool)

(assert (=> b!1615562 m!1935611))

(declare-fun m!1935613 () Bool)

(assert (=> b!1615562 m!1935613))

(assert (=> b!1615562 m!1935613))

(declare-fun m!1935615 () Bool)

(assert (=> b!1615562 m!1935615))

(assert (=> b!1615562 m!1935615))

(declare-fun m!1935617 () Bool)

(assert (=> b!1615562 m!1935617))

(declare-fun m!1935619 () Bool)

(assert (=> d!486106 m!1935619))

(declare-fun m!1935621 () Bool)

(assert (=> d!486106 m!1935621))

(declare-fun m!1935623 () Bool)

(assert (=> d!486106 m!1935623))

(assert (=> d!486106 m!1934827))

(declare-fun m!1935625 () Bool)

(assert (=> bm!104829 m!1935625))

(assert (=> b!1615568 m!1935611))

(declare-fun m!1935627 () Bool)

(assert (=> b!1615568 m!1935627))

(assert (=> b!1615568 m!1935169))

(assert (=> b!1615565 m!1935611))

(declare-fun m!1935629 () Bool)

(assert (=> b!1615565 m!1935629))

(assert (=> b!1615561 m!1935611))

(assert (=> b!1615561 m!1935613))

(assert (=> b!1615561 m!1935613))

(assert (=> b!1615561 m!1935615))

(assert (=> b!1615561 m!1935615))

(declare-fun m!1935631 () Bool)

(assert (=> b!1615561 m!1935631))

(assert (=> b!1615564 m!1935611))

(declare-fun m!1935633 () Bool)

(assert (=> b!1615564 m!1935633))

(assert (=> b!1615564 m!1935633))

(declare-fun m!1935635 () Bool)

(assert (=> b!1615564 m!1935635))

(assert (=> b!1615566 m!1935611))

(assert (=> b!1615566 m!1935613))

(assert (=> b!1615566 m!1935613))

(assert (=> b!1615566 m!1935615))

(declare-fun m!1935637 () Bool)

(assert (=> b!1615563 m!1935637))

(declare-fun m!1935639 () Bool)

(assert (=> b!1615567 m!1935639))

(assert (=> b!1615188 d!486106))

(declare-fun d!486108 () Bool)

(declare-fun res!721086 () Bool)

(declare-fun e!1036274 () Bool)

(assert (=> d!486108 (=> res!721086 e!1036274)))

(assert (=> d!486108 (= res!721086 (or (not ((_ is Cons!17681) tokens!457)) (not ((_ is Cons!17681) (t!148224 tokens!457)))))))

(assert (=> d!486108 (= (tokensListTwoByTwoPredicateSeparableList!437 thiss!17113 tokens!457 rules!1846) e!1036274)))

(declare-fun b!1615582 () Bool)

(declare-fun e!1036275 () Bool)

(assert (=> b!1615582 (= e!1036274 e!1036275)))

(declare-fun res!721085 () Bool)

(assert (=> b!1615582 (=> (not res!721085) (not e!1036275))))

(assert (=> b!1615582 (= res!721085 (separableTokensPredicate!686 thiss!17113 (h!23082 tokens!457) (h!23082 (t!148224 tokens!457)) rules!1846))))

(declare-fun lt!578794 () Unit!28415)

(declare-fun Unit!28450 () Unit!28415)

(assert (=> b!1615582 (= lt!578794 Unit!28450)))

(assert (=> b!1615582 (> (size!14188 (charsOf!1764 (h!23082 (t!148224 tokens!457)))) 0)))

(declare-fun lt!578789 () Unit!28415)

(declare-fun Unit!28451 () Unit!28415)

(assert (=> b!1615582 (= lt!578789 Unit!28451)))

(assert (=> b!1615582 (rulesProduceIndividualToken!1396 thiss!17113 rules!1846 (h!23082 (t!148224 tokens!457)))))

(declare-fun lt!578792 () Unit!28415)

(declare-fun Unit!28452 () Unit!28415)

(assert (=> b!1615582 (= lt!578792 Unit!28452)))

(assert (=> b!1615582 (rulesProduceIndividualToken!1396 thiss!17113 rules!1846 (h!23082 tokens!457))))

(declare-fun lt!578795 () Unit!28415)

(declare-fun lt!578793 () Unit!28415)

(assert (=> b!1615582 (= lt!578795 lt!578793)))

(assert (=> b!1615582 (rulesProduceIndividualToken!1396 thiss!17113 rules!1846 (h!23082 (t!148224 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!549 (LexerInterface!2744 List!17752 List!17751 Token!5796) Unit!28415)

(assert (=> b!1615582 (= lt!578793 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!549 thiss!17113 rules!1846 tokens!457 (h!23082 (t!148224 tokens!457))))))

(declare-fun lt!578790 () Unit!28415)

(declare-fun lt!578791 () Unit!28415)

(assert (=> b!1615582 (= lt!578790 lt!578791)))

(assert (=> b!1615582 (rulesProduceIndividualToken!1396 thiss!17113 rules!1846 (h!23082 tokens!457))))

(assert (=> b!1615582 (= lt!578791 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!549 thiss!17113 rules!1846 tokens!457 (h!23082 tokens!457)))))

(declare-fun b!1615583 () Bool)

(assert (=> b!1615583 (= e!1036275 (tokensListTwoByTwoPredicateSeparableList!437 thiss!17113 (Cons!17681 (h!23082 (t!148224 tokens!457)) (t!148224 (t!148224 tokens!457))) rules!1846))))

(assert (= (and d!486108 (not res!721086)) b!1615582))

(assert (= (and b!1615582 res!721085) b!1615583))

(declare-fun m!1935641 () Bool)

(assert (=> b!1615582 m!1935641))

(assert (=> b!1615582 m!1934791))

(assert (=> b!1615582 m!1935119))

(assert (=> b!1615582 m!1934721))

(assert (=> b!1615582 m!1934791))

(declare-fun m!1935643 () Bool)

(assert (=> b!1615582 m!1935643))

(assert (=> b!1615582 m!1934751))

(declare-fun m!1935645 () Bool)

(assert (=> b!1615582 m!1935645))

(declare-fun m!1935647 () Bool)

(assert (=> b!1615583 m!1935647))

(assert (=> b!1615189 d!486108))

(declare-fun d!486110 () Bool)

(declare-fun lt!578798 () C!9060)

(assert (=> d!486110 (= lt!578798 (head!3350 (list!6911 lt!578353)))))

(declare-fun head!3354 (Conc!5878) C!9060)

(assert (=> d!486110 (= lt!578798 (head!3354 (c!263023 lt!578353)))))

(assert (=> d!486110 (not (isEmpty!10700 lt!578353))))

(assert (=> d!486110 (= (head!3351 lt!578353) lt!578798)))

(declare-fun bs!394095 () Bool)

(assert (= bs!394095 d!486110))

(assert (=> bs!394095 m!1934813))

(assert (=> bs!394095 m!1934813))

(declare-fun m!1935649 () Bool)

(assert (=> bs!394095 m!1935649))

(declare-fun m!1935651 () Bool)

(assert (=> bs!394095 m!1935651))

(declare-fun m!1935653 () Bool)

(assert (=> bs!394095 m!1935653))

(assert (=> b!1615187 d!486110))

(declare-fun d!486112 () Bool)

(declare-fun res!721093 () Bool)

(declare-fun e!1036280 () Bool)

(assert (=> d!486112 (=> (not res!721093) (not e!1036280))))

(assert (=> d!486112 (= res!721093 (not (isEmpty!10698 (originalCharacters!3929 (h!23082 tokens!457)))))))

(assert (=> d!486112 (= (inv!23081 (h!23082 tokens!457)) e!1036280)))

(declare-fun b!1615592 () Bool)

(declare-fun res!721094 () Bool)

(assert (=> b!1615592 (=> (not res!721094) (not e!1036280))))

(assert (=> b!1615592 (= res!721094 (= (originalCharacters!3929 (h!23082 tokens!457)) (list!6911 (dynLambda!7882 (toChars!4397 (transformation!3115 (rule!4935 (h!23082 tokens!457)))) (value!98450 (h!23082 tokens!457))))))))

(declare-fun b!1615593 () Bool)

(assert (=> b!1615593 (= e!1036280 (= (size!14184 (h!23082 tokens!457)) (size!14189 (originalCharacters!3929 (h!23082 tokens!457)))))))

(assert (= (and d!486112 res!721093) b!1615592))

(assert (= (and b!1615592 res!721094) b!1615593))

(declare-fun b_lambda!50949 () Bool)

(assert (=> (not b_lambda!50949) (not b!1615592)))

(assert (=> b!1615592 t!148243))

(declare-fun b_and!114565 () Bool)

(assert (= b_and!114561 (and (=> t!148243 result!111858) b_and!114565)))

(assert (=> b!1615592 t!148245))

(declare-fun b_and!114567 () Bool)

(assert (= b_and!114563 (and (=> t!148245 result!111860) b_and!114567)))

(declare-fun m!1935701 () Bool)

(assert (=> d!486112 m!1935701))

(assert (=> b!1615592 m!1935253))

(assert (=> b!1615592 m!1935253))

(declare-fun m!1935703 () Bool)

(assert (=> b!1615592 m!1935703))

(assert (=> b!1615593 m!1935417))

(assert (=> b!1615186 d!486112))

(declare-fun d!486116 () Bool)

(declare-fun lt!578827 () Bool)

(declare-fun e!1036289 () Bool)

(assert (=> d!486116 (= lt!578827 e!1036289)))

(declare-fun res!721106 () Bool)

(assert (=> d!486116 (=> (not res!721106) (not e!1036289))))

(assert (=> d!486116 (= res!721106 (= (list!6912 (_1!10006 (lex!1228 thiss!17113 rules!1846 (print!1275 thiss!17113 (singletonSeq!1509 (h!23082 tokens!457)))))) (list!6912 (singletonSeq!1509 (h!23082 tokens!457)))))))

(declare-fun e!1036288 () Bool)

(assert (=> d!486116 (= lt!578827 e!1036288)))

(declare-fun res!721105 () Bool)

(assert (=> d!486116 (=> (not res!721105) (not e!1036288))))

(declare-fun lt!578826 () tuple2!17208)

(assert (=> d!486116 (= res!721105 (= (size!14190 (_1!10006 lt!578826)) 1))))

(assert (=> d!486116 (= lt!578826 (lex!1228 thiss!17113 rules!1846 (print!1275 thiss!17113 (singletonSeq!1509 (h!23082 tokens!457)))))))

(assert (=> d!486116 (not (isEmpty!10692 rules!1846))))

(assert (=> d!486116 (= (rulesProduceIndividualToken!1396 thiss!17113 rules!1846 (h!23082 tokens!457)) lt!578827)))

(declare-fun b!1615603 () Bool)

(declare-fun res!721104 () Bool)

(assert (=> b!1615603 (=> (not res!721104) (not e!1036288))))

(declare-fun apply!4453 (BalanceConc!11702 Int) Token!5796)

(assert (=> b!1615603 (= res!721104 (= (apply!4453 (_1!10006 lt!578826) 0) (h!23082 tokens!457)))))

(declare-fun b!1615604 () Bool)

(assert (=> b!1615604 (= e!1036288 (isEmpty!10700 (_2!10006 lt!578826)))))

(declare-fun b!1615605 () Bool)

(assert (=> b!1615605 (= e!1036289 (isEmpty!10700 (_2!10006 (lex!1228 thiss!17113 rules!1846 (print!1275 thiss!17113 (singletonSeq!1509 (h!23082 tokens!457)))))))))

(assert (= (and d!486116 res!721105) b!1615603))

(assert (= (and b!1615603 res!721104) b!1615604))

(assert (= (and d!486116 res!721106) b!1615605))

(assert (=> d!486116 m!1934761))

(declare-fun m!1935727 () Bool)

(assert (=> d!486116 m!1935727))

(declare-fun m!1935729 () Bool)

(assert (=> d!486116 m!1935729))

(assert (=> d!486116 m!1934761))

(assert (=> d!486116 m!1934793))

(declare-fun m!1935731 () Bool)

(assert (=> d!486116 m!1935731))

(declare-fun m!1935733 () Bool)

(assert (=> d!486116 m!1935733))

(declare-fun m!1935735 () Bool)

(assert (=> d!486116 m!1935735))

(assert (=> d!486116 m!1934761))

(assert (=> d!486116 m!1935733))

(declare-fun m!1935737 () Bool)

(assert (=> b!1615603 m!1935737))

(declare-fun m!1935739 () Bool)

(assert (=> b!1615604 m!1935739))

(assert (=> b!1615605 m!1934761))

(assert (=> b!1615605 m!1934761))

(assert (=> b!1615605 m!1935733))

(assert (=> b!1615605 m!1935733))

(assert (=> b!1615605 m!1935735))

(declare-fun m!1935741 () Bool)

(assert (=> b!1615605 m!1935741))

(assert (=> b!1615184 d!486116))

(declare-fun d!486128 () Bool)

(assert (=> d!486128 (= (isDefined!2604 lt!578339) (not (isEmpty!10703 lt!578339)))))

(declare-fun bs!394100 () Bool)

(assert (= bs!394100 d!486128))

(declare-fun m!1935743 () Bool)

(assert (=> bs!394100 m!1935743))

(assert (=> b!1615185 d!486128))

(declare-fun b!1615642 () Bool)

(declare-fun e!1036312 () Unit!28415)

(declare-fun Unit!28453 () Unit!28415)

(assert (=> b!1615642 (= e!1036312 Unit!28453)))

(declare-fun lt!578904 () List!17750)

(assert (=> b!1615642 (= lt!578904 (++!4669 lt!578346 lt!578343))))

(declare-fun lt!578900 () Unit!28415)

(declare-fun lt!578909 () Token!5796)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!162 (LexerInterface!2744 Rule!6030 List!17752 List!17750) Unit!28415)

(assert (=> b!1615642 (= lt!578900 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!162 thiss!17113 (rule!4935 lt!578909) rules!1846 lt!578904))))

(assert (=> b!1615642 (isEmpty!10703 (maxPrefixOneRule!759 thiss!17113 (rule!4935 lt!578909) lt!578904))))

(declare-fun lt!578895 () Unit!28415)

(assert (=> b!1615642 (= lt!578895 lt!578900)))

(declare-fun lt!578902 () List!17750)

(assert (=> b!1615642 (= lt!578902 (list!6911 (charsOf!1764 lt!578909)))))

(declare-fun lt!578906 () Unit!28415)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!158 (LexerInterface!2744 Rule!6030 List!17750 List!17750) Unit!28415)

(assert (=> b!1615642 (= lt!578906 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!158 thiss!17113 (rule!4935 lt!578909) lt!578902 (++!4669 lt!578346 lt!578343)))))

(assert (=> b!1615642 (not (matchR!1944 (regex!3115 (rule!4935 lt!578909)) lt!578902))))

(declare-fun lt!578894 () Unit!28415)

(assert (=> b!1615642 (= lt!578894 lt!578906)))

(assert (=> b!1615642 false))

(declare-fun b!1615640 () Bool)

(declare-fun res!721135 () Bool)

(declare-fun e!1036313 () Bool)

(assert (=> b!1615640 (=> (not res!721135) (not e!1036313))))

(declare-datatypes ((Option!3240 0))(
  ( (None!3239) (Some!3239 (v!24228 Rule!6030)) )
))
(declare-fun get!5073 (Option!3240) Rule!6030)

(declare-fun getRuleFromTag!268 (LexerInterface!2744 List!17752 String!20357) Option!3240)

(assert (=> b!1615640 (= res!721135 (matchR!1944 (regex!3115 (get!5073 (getRuleFromTag!268 thiss!17113 rules!1846 (tag!3391 (rule!4935 lt!578909))))) (list!6911 (charsOf!1764 lt!578909))))))

(declare-fun b!1615643 () Bool)

(declare-fun Unit!28454 () Unit!28415)

(assert (=> b!1615643 (= e!1036312 Unit!28454)))

(declare-fun d!486130 () Bool)

(assert (=> d!486130 (isDefined!2604 (maxPrefix!1308 thiss!17113 rules!1846 (++!4669 lt!578346 lt!578343)))))

(declare-fun lt!578901 () Unit!28415)

(assert (=> d!486130 (= lt!578901 e!1036312)))

(declare-fun c!263093 () Bool)

(assert (=> d!486130 (= c!263093 (isEmpty!10703 (maxPrefix!1308 thiss!17113 rules!1846 (++!4669 lt!578346 lt!578343))))))

(declare-fun lt!578898 () Unit!28415)

(declare-fun lt!578899 () Unit!28415)

(assert (=> d!486130 (= lt!578898 lt!578899)))

(assert (=> d!486130 e!1036313))

(declare-fun res!721136 () Bool)

(assert (=> d!486130 (=> (not res!721136) (not e!1036313))))

(declare-fun isDefined!2607 (Option!3240) Bool)

(assert (=> d!486130 (= res!721136 (isDefined!2607 (getRuleFromTag!268 thiss!17113 rules!1846 (tag!3391 (rule!4935 lt!578909)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!268 (LexerInterface!2744 List!17752 List!17750 Token!5796) Unit!28415)

(assert (=> d!486130 (= lt!578899 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!268 thiss!17113 rules!1846 lt!578346 lt!578909))))

(declare-fun lt!578893 () Unit!28415)

(declare-fun lt!578896 () Unit!28415)

(assert (=> d!486130 (= lt!578893 lt!578896)))

(declare-fun lt!578908 () List!17750)

(assert (=> d!486130 (isPrefix!1375 lt!578908 (++!4669 lt!578346 lt!578343))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!154 (List!17750 List!17750 List!17750) Unit!28415)

(assert (=> d!486130 (= lt!578896 (lemmaPrefixStaysPrefixWhenAddingToSuffix!154 lt!578908 lt!578346 lt!578343))))

(assert (=> d!486130 (= lt!578908 (list!6911 (charsOf!1764 lt!578909)))))

(declare-fun lt!578905 () Unit!28415)

(declare-fun lt!578897 () Unit!28415)

(assert (=> d!486130 (= lt!578905 lt!578897)))

(declare-fun lt!578903 () List!17750)

(declare-fun lt!578907 () List!17750)

(assert (=> d!486130 (isPrefix!1375 lt!578903 (++!4669 lt!578903 lt!578907))))

(assert (=> d!486130 (= lt!578897 (lemmaConcatTwoListThenFirstIsPrefix!900 lt!578903 lt!578907))))

(assert (=> d!486130 (= lt!578907 (_2!10005 (get!5069 (maxPrefix!1308 thiss!17113 rules!1846 lt!578346))))))

(assert (=> d!486130 (= lt!578903 (list!6911 (charsOf!1764 lt!578909)))))

(declare-fun head!3355 (List!17751) Token!5796)

(assert (=> d!486130 (= lt!578909 (head!3355 (list!6912 (_1!10006 (lex!1228 thiss!17113 rules!1846 (seqFromList!1979 lt!578346))))))))

(assert (=> d!486130 (not (isEmpty!10692 rules!1846))))

(assert (=> d!486130 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!318 thiss!17113 rules!1846 lt!578346 lt!578343) lt!578901)))

(declare-fun b!1615641 () Bool)

(assert (=> b!1615641 (= e!1036313 (= (rule!4935 lt!578909) (get!5073 (getRuleFromTag!268 thiss!17113 rules!1846 (tag!3391 (rule!4935 lt!578909))))))))

(assert (= (and d!486130 res!721136) b!1615640))

(assert (= (and b!1615640 res!721135) b!1615641))

(assert (= (and d!486130 c!263093) b!1615642))

(assert (= (and d!486130 (not c!263093)) b!1615643))

(declare-fun m!1935797 () Bool)

(assert (=> b!1615642 m!1935797))

(declare-fun m!1935799 () Bool)

(assert (=> b!1615642 m!1935799))

(assert (=> b!1615642 m!1934809))

(declare-fun m!1935801 () Bool)

(assert (=> b!1615642 m!1935801))

(assert (=> b!1615642 m!1934809))

(declare-fun m!1935803 () Bool)

(assert (=> b!1615642 m!1935803))

(declare-fun m!1935805 () Bool)

(assert (=> b!1615642 m!1935805))

(assert (=> b!1615642 m!1935799))

(declare-fun m!1935807 () Bool)

(assert (=> b!1615642 m!1935807))

(assert (=> b!1615642 m!1935805))

(declare-fun m!1935809 () Bool)

(assert (=> b!1615642 m!1935809))

(assert (=> b!1615640 m!1935799))

(assert (=> b!1615640 m!1935807))

(declare-fun m!1935811 () Bool)

(assert (=> b!1615640 m!1935811))

(declare-fun m!1935813 () Bool)

(assert (=> b!1615640 m!1935813))

(declare-fun m!1935815 () Bool)

(assert (=> b!1615640 m!1935815))

(assert (=> b!1615640 m!1935813))

(assert (=> b!1615640 m!1935799))

(assert (=> b!1615640 m!1935807))

(assert (=> d!486130 m!1934819))

(assert (=> d!486130 m!1934809))

(declare-fun m!1935817 () Bool)

(assert (=> d!486130 m!1935817))

(declare-fun m!1935819 () Bool)

(assert (=> d!486130 m!1935819))

(declare-fun m!1935821 () Bool)

(assert (=> d!486130 m!1935821))

(declare-fun m!1935823 () Bool)

(assert (=> d!486130 m!1935823))

(declare-fun m!1935825 () Bool)

(assert (=> d!486130 m!1935825))

(declare-fun m!1935827 () Bool)

(assert (=> d!486130 m!1935827))

(assert (=> d!486130 m!1935819))

(assert (=> d!486130 m!1935373))

(assert (=> d!486130 m!1935825))

(declare-fun m!1935829 () Bool)

(assert (=> d!486130 m!1935829))

(assert (=> d!486130 m!1934819))

(declare-fun m!1935831 () Bool)

(assert (=> d!486130 m!1935831))

(assert (=> d!486130 m!1935813))

(declare-fun m!1935833 () Bool)

(assert (=> d!486130 m!1935833))

(assert (=> d!486130 m!1934809))

(declare-fun m!1935835 () Bool)

(assert (=> d!486130 m!1935835))

(assert (=> d!486130 m!1934731))

(assert (=> d!486130 m!1934733))

(assert (=> d!486130 m!1934809))

(assert (=> d!486130 m!1935825))

(assert (=> d!486130 m!1935799))

(assert (=> d!486130 m!1935813))

(declare-fun m!1935837 () Bool)

(assert (=> d!486130 m!1935837))

(assert (=> d!486130 m!1934731))

(assert (=> d!486130 m!1935373))

(declare-fun m!1935839 () Bool)

(assert (=> d!486130 m!1935839))

(assert (=> d!486130 m!1934793))

(assert (=> d!486130 m!1935799))

(assert (=> d!486130 m!1935807))

(assert (=> b!1615641 m!1935813))

(assert (=> b!1615641 m!1935813))

(assert (=> b!1615641 m!1935815))

(assert (=> b!1615185 d!486130))

(declare-fun d!486144 () Bool)

(declare-fun lt!578910 () BalanceConc!11700)

(assert (=> d!486144 (= (list!6911 lt!578910) (printList!859 thiss!17113 (list!6912 lt!578341)))))

(assert (=> d!486144 (= lt!578910 (printTailRec!797 thiss!17113 lt!578341 0 (BalanceConc!11701 Empty!5878)))))

(assert (=> d!486144 (= (print!1275 thiss!17113 lt!578341) lt!578910)))

(declare-fun bs!394103 () Bool)

(assert (= bs!394103 d!486144))

(declare-fun m!1935841 () Bool)

(assert (=> bs!394103 m!1935841))

(declare-fun m!1935843 () Bool)

(assert (=> bs!394103 m!1935843))

(assert (=> bs!394103 m!1935843))

(declare-fun m!1935845 () Bool)

(assert (=> bs!394103 m!1935845))

(assert (=> bs!394103 m!1934759))

(assert (=> b!1615183 d!486144))

(declare-fun d!486146 () Bool)

(assert (=> d!486146 (= (list!6911 lt!578330) (list!6915 (c!263023 lt!578330)))))

(declare-fun bs!394104 () Bool)

(assert (= bs!394104 d!486146))

(declare-fun m!1935847 () Bool)

(assert (=> bs!394104 m!1935847))

(assert (=> b!1615183 d!486146))

(declare-fun d!486148 () Bool)

(declare-fun lt!578931 () BalanceConc!11700)

(declare-fun printListTailRec!339 (LexerInterface!2744 List!17751 List!17750) List!17750)

(declare-fun dropList!576 (BalanceConc!11702 Int) List!17751)

(assert (=> d!486148 (= (list!6911 lt!578931) (printListTailRec!339 thiss!17113 (dropList!576 lt!578341 0) (list!6911 (BalanceConc!11701 Empty!5878))))))

(declare-fun e!1036321 () BalanceConc!11700)

(assert (=> d!486148 (= lt!578931 e!1036321)))

(declare-fun c!263096 () Bool)

(assert (=> d!486148 (= c!263096 (>= 0 (size!14190 lt!578341)))))

(declare-fun e!1036322 () Bool)

(assert (=> d!486148 e!1036322))

(declare-fun res!721142 () Bool)

(assert (=> d!486148 (=> (not res!721142) (not e!1036322))))

(assert (=> d!486148 (= res!721142 (>= 0 0))))

(assert (=> d!486148 (= (printTailRec!797 thiss!17113 lt!578341 0 (BalanceConc!11701 Empty!5878)) lt!578931)))

(declare-fun b!1615653 () Bool)

(assert (=> b!1615653 (= e!1036322 (<= 0 (size!14190 lt!578341)))))

(declare-fun b!1615654 () Bool)

(assert (=> b!1615654 (= e!1036321 (BalanceConc!11701 Empty!5878))))

(declare-fun b!1615655 () Bool)

(assert (=> b!1615655 (= e!1036321 (printTailRec!797 thiss!17113 lt!578341 (+ 0 1) (++!4670 (BalanceConc!11701 Empty!5878) (charsOf!1764 (apply!4453 lt!578341 0)))))))

(declare-fun lt!578927 () List!17751)

(assert (=> b!1615655 (= lt!578927 (list!6912 lt!578341))))

(declare-fun lt!578928 () Unit!28415)

(declare-fun lemmaDropApply!546 (List!17751 Int) Unit!28415)

(assert (=> b!1615655 (= lt!578928 (lemmaDropApply!546 lt!578927 0))))

(declare-fun drop!854 (List!17751 Int) List!17751)

(declare-fun apply!4454 (List!17751 Int) Token!5796)

(assert (=> b!1615655 (= (head!3355 (drop!854 lt!578927 0)) (apply!4454 lt!578927 0))))

(declare-fun lt!578930 () Unit!28415)

(assert (=> b!1615655 (= lt!578930 lt!578928)))

(declare-fun lt!578929 () List!17751)

(assert (=> b!1615655 (= lt!578929 (list!6912 lt!578341))))

(declare-fun lt!578932 () Unit!28415)

(declare-fun lemmaDropTail!526 (List!17751 Int) Unit!28415)

(assert (=> b!1615655 (= lt!578932 (lemmaDropTail!526 lt!578929 0))))

(declare-fun tail!2330 (List!17751) List!17751)

(assert (=> b!1615655 (= (tail!2330 (drop!854 lt!578929 0)) (drop!854 lt!578929 (+ 0 1)))))

(declare-fun lt!578926 () Unit!28415)

(assert (=> b!1615655 (= lt!578926 lt!578932)))

(assert (= (and d!486148 res!721142) b!1615653))

(assert (= (and d!486148 c!263096) b!1615654))

(assert (= (and d!486148 (not c!263096)) b!1615655))

(declare-fun m!1935863 () Bool)

(assert (=> d!486148 m!1935863))

(declare-fun m!1935865 () Bool)

(assert (=> d!486148 m!1935865))

(declare-fun m!1935867 () Bool)

(assert (=> d!486148 m!1935867))

(assert (=> d!486148 m!1935865))

(assert (=> d!486148 m!1935863))

(declare-fun m!1935869 () Bool)

(assert (=> d!486148 m!1935869))

(declare-fun m!1935871 () Bool)

(assert (=> d!486148 m!1935871))

(assert (=> b!1615653 m!1935867))

(declare-fun m!1935873 () Bool)

(assert (=> b!1615655 m!1935873))

(declare-fun m!1935875 () Bool)

(assert (=> b!1615655 m!1935875))

(assert (=> b!1615655 m!1935873))

(declare-fun m!1935877 () Bool)

(assert (=> b!1615655 m!1935877))

(declare-fun m!1935879 () Bool)

(assert (=> b!1615655 m!1935879))

(declare-fun m!1935881 () Bool)

(assert (=> b!1615655 m!1935881))

(declare-fun m!1935883 () Bool)

(assert (=> b!1615655 m!1935883))

(assert (=> b!1615655 m!1935877))

(assert (=> b!1615655 m!1935879))

(declare-fun m!1935885 () Bool)

(assert (=> b!1615655 m!1935885))

(declare-fun m!1935887 () Bool)

(assert (=> b!1615655 m!1935887))

(declare-fun m!1935889 () Bool)

(assert (=> b!1615655 m!1935889))

(assert (=> b!1615655 m!1935881))

(declare-fun m!1935891 () Bool)

(assert (=> b!1615655 m!1935891))

(assert (=> b!1615655 m!1935843))

(assert (=> b!1615655 m!1935887))

(declare-fun m!1935893 () Bool)

(assert (=> b!1615655 m!1935893))

(declare-fun m!1935895 () Bool)

(assert (=> b!1615655 m!1935895))

(assert (=> b!1615183 d!486148))

(declare-fun b!1615656 () Bool)

(declare-fun res!721144 () Bool)

(declare-fun e!1036323 () Bool)

(assert (=> b!1615656 (=> (not res!721144) (not e!1036323))))

(declare-fun lt!578936 () Option!3237)

(assert (=> b!1615656 (= res!721144 (= (++!4669 (list!6911 (charsOf!1764 (_1!10005 (get!5069 lt!578936)))) (_2!10005 (get!5069 lt!578936))) lt!578340))))

(declare-fun b!1615657 () Bool)

(declare-fun res!721148 () Bool)

(assert (=> b!1615657 (=> (not res!721148) (not e!1036323))))

(assert (=> b!1615657 (= res!721148 (matchR!1944 (regex!3115 (rule!4935 (_1!10005 (get!5069 lt!578936)))) (list!6911 (charsOf!1764 (_1!10005 (get!5069 lt!578936))))))))

(declare-fun b!1615658 () Bool)

(declare-fun e!1036325 () Option!3237)

(declare-fun lt!578934 () Option!3237)

(declare-fun lt!578937 () Option!3237)

(assert (=> b!1615658 (= e!1036325 (ite (and ((_ is None!3236) lt!578934) ((_ is None!3236) lt!578937)) None!3236 (ite ((_ is None!3236) lt!578937) lt!578934 (ite ((_ is None!3236) lt!578934) lt!578937 (ite (>= (size!14184 (_1!10005 (v!24219 lt!578934))) (size!14184 (_1!10005 (v!24219 lt!578937)))) lt!578934 lt!578937)))))))

(declare-fun call!104835 () Option!3237)

(assert (=> b!1615658 (= lt!578934 call!104835)))

(assert (=> b!1615658 (= lt!578937 (maxPrefix!1308 thiss!17113 (t!148225 rules!1846) lt!578340))))

(declare-fun b!1615659 () Bool)

(declare-fun res!721145 () Bool)

(assert (=> b!1615659 (=> (not res!721145) (not e!1036323))))

(assert (=> b!1615659 (= res!721145 (= (value!98450 (_1!10005 (get!5069 lt!578936))) (apply!4450 (transformation!3115 (rule!4935 (_1!10005 (get!5069 lt!578936)))) (seqFromList!1979 (originalCharacters!3929 (_1!10005 (get!5069 lt!578936)))))))))

(declare-fun b!1615660 () Bool)

(assert (=> b!1615660 (= e!1036323 (contains!3092 rules!1846 (rule!4935 (_1!10005 (get!5069 lt!578936)))))))

(declare-fun bm!104830 () Bool)

(assert (=> bm!104830 (= call!104835 (maxPrefixOneRule!759 thiss!17113 (h!23083 rules!1846) lt!578340))))

(declare-fun b!1615661 () Bool)

(declare-fun res!721147 () Bool)

(assert (=> b!1615661 (=> (not res!721147) (not e!1036323))))

(assert (=> b!1615661 (= res!721147 (= (list!6911 (charsOf!1764 (_1!10005 (get!5069 lt!578936)))) (originalCharacters!3929 (_1!10005 (get!5069 lt!578936)))))))

(declare-fun b!1615662 () Bool)

(declare-fun e!1036324 () Bool)

(assert (=> b!1615662 (= e!1036324 e!1036323)))

(declare-fun res!721143 () Bool)

(assert (=> b!1615662 (=> (not res!721143) (not e!1036323))))

(assert (=> b!1615662 (= res!721143 (isDefined!2604 lt!578936))))

(declare-fun b!1615663 () Bool)

(declare-fun res!721149 () Bool)

(assert (=> b!1615663 (=> (not res!721149) (not e!1036323))))

(assert (=> b!1615663 (= res!721149 (< (size!14189 (_2!10005 (get!5069 lt!578936))) (size!14189 lt!578340)))))

(declare-fun b!1615664 () Bool)

(assert (=> b!1615664 (= e!1036325 call!104835)))

(declare-fun d!486156 () Bool)

(assert (=> d!486156 e!1036324))

(declare-fun res!721146 () Bool)

(assert (=> d!486156 (=> res!721146 e!1036324)))

(assert (=> d!486156 (= res!721146 (isEmpty!10703 lt!578936))))

(assert (=> d!486156 (= lt!578936 e!1036325)))

(declare-fun c!263097 () Bool)

(assert (=> d!486156 (= c!263097 (and ((_ is Cons!17682) rules!1846) ((_ is Nil!17682) (t!148225 rules!1846))))))

(declare-fun lt!578935 () Unit!28415)

(declare-fun lt!578933 () Unit!28415)

(assert (=> d!486156 (= lt!578935 lt!578933)))

(assert (=> d!486156 (isPrefix!1375 lt!578340 lt!578340)))

(assert (=> d!486156 (= lt!578933 (lemmaIsPrefixRefl!944 lt!578340 lt!578340))))

(assert (=> d!486156 (rulesValidInductive!954 thiss!17113 rules!1846)))

(assert (=> d!486156 (= (maxPrefix!1308 thiss!17113 rules!1846 lt!578340) lt!578936)))

(assert (= (and d!486156 c!263097) b!1615664))

(assert (= (and d!486156 (not c!263097)) b!1615658))

(assert (= (or b!1615664 b!1615658) bm!104830))

(assert (= (and d!486156 (not res!721146)) b!1615662))

(assert (= (and b!1615662 res!721143) b!1615661))

(assert (= (and b!1615661 res!721147) b!1615663))

(assert (= (and b!1615663 res!721149) b!1615656))

(assert (= (and b!1615656 res!721144) b!1615659))

(assert (= (and b!1615659 res!721145) b!1615657))

(assert (= (and b!1615657 res!721148) b!1615660))

(declare-fun m!1935897 () Bool)

(assert (=> b!1615657 m!1935897))

(declare-fun m!1935899 () Bool)

(assert (=> b!1615657 m!1935899))

(assert (=> b!1615657 m!1935899))

(declare-fun m!1935901 () Bool)

(assert (=> b!1615657 m!1935901))

(assert (=> b!1615657 m!1935901))

(declare-fun m!1935903 () Bool)

(assert (=> b!1615657 m!1935903))

(declare-fun m!1935905 () Bool)

(assert (=> d!486156 m!1935905))

(declare-fun m!1935907 () Bool)

(assert (=> d!486156 m!1935907))

(declare-fun m!1935909 () Bool)

(assert (=> d!486156 m!1935909))

(assert (=> d!486156 m!1934827))

(declare-fun m!1935911 () Bool)

(assert (=> bm!104830 m!1935911))

(assert (=> b!1615663 m!1935897))

(declare-fun m!1935913 () Bool)

(assert (=> b!1615663 m!1935913))

(declare-fun m!1935915 () Bool)

(assert (=> b!1615663 m!1935915))

(assert (=> b!1615660 m!1935897))

(declare-fun m!1935917 () Bool)

(assert (=> b!1615660 m!1935917))

(assert (=> b!1615656 m!1935897))

(assert (=> b!1615656 m!1935899))

(assert (=> b!1615656 m!1935899))

(assert (=> b!1615656 m!1935901))

(assert (=> b!1615656 m!1935901))

(declare-fun m!1935919 () Bool)

(assert (=> b!1615656 m!1935919))

(assert (=> b!1615659 m!1935897))

(declare-fun m!1935921 () Bool)

(assert (=> b!1615659 m!1935921))

(assert (=> b!1615659 m!1935921))

(declare-fun m!1935923 () Bool)

(assert (=> b!1615659 m!1935923))

(assert (=> b!1615661 m!1935897))

(assert (=> b!1615661 m!1935899))

(assert (=> b!1615661 m!1935899))

(assert (=> b!1615661 m!1935901))

(declare-fun m!1935925 () Bool)

(assert (=> b!1615658 m!1935925))

(declare-fun m!1935927 () Bool)

(assert (=> b!1615662 m!1935927))

(assert (=> b!1615183 d!486156))

(declare-fun d!486158 () Bool)

(declare-fun c!263102 () Bool)

(assert (=> d!486158 (= c!263102 ((_ is Cons!17681) (Cons!17681 (h!23082 tokens!457) Nil!17681)))))

(declare-fun e!1036332 () List!17750)

(assert (=> d!486158 (= (printList!859 thiss!17113 (Cons!17681 (h!23082 tokens!457) Nil!17681)) e!1036332)))

(declare-fun b!1615675 () Bool)

(assert (=> b!1615675 (= e!1036332 (++!4669 (list!6911 (charsOf!1764 (h!23082 (Cons!17681 (h!23082 tokens!457) Nil!17681)))) (printList!859 thiss!17113 (t!148224 (Cons!17681 (h!23082 tokens!457) Nil!17681)))))))

(declare-fun b!1615676 () Bool)

(assert (=> b!1615676 (= e!1036332 Nil!17680)))

(assert (= (and d!486158 c!263102) b!1615675))

(assert (= (and d!486158 (not c!263102)) b!1615676))

(declare-fun m!1935929 () Bool)

(assert (=> b!1615675 m!1935929))

(assert (=> b!1615675 m!1935929))

(declare-fun m!1935931 () Bool)

(assert (=> b!1615675 m!1935931))

(declare-fun m!1935933 () Bool)

(assert (=> b!1615675 m!1935933))

(assert (=> b!1615675 m!1935931))

(assert (=> b!1615675 m!1935933))

(declare-fun m!1935935 () Bool)

(assert (=> b!1615675 m!1935935))

(assert (=> b!1615183 d!486158))

(declare-fun d!486160 () Bool)

(declare-fun e!1036339 () Bool)

(assert (=> d!486160 e!1036339))

(declare-fun res!721155 () Bool)

(assert (=> d!486160 (=> (not res!721155) (not e!1036339))))

(declare-fun lt!578961 () BalanceConc!11702)

(assert (=> d!486160 (= res!721155 (= (list!6912 lt!578961) (Cons!17681 (h!23082 tokens!457) Nil!17681)))))

(declare-fun singleton!638 (Token!5796) BalanceConc!11702)

(assert (=> d!486160 (= lt!578961 (singleton!638 (h!23082 tokens!457)))))

(assert (=> d!486160 (= (singletonSeq!1509 (h!23082 tokens!457)) lt!578961)))

(declare-fun b!1615686 () Bool)

(assert (=> b!1615686 (= e!1036339 (isBalanced!1757 (c!263025 lt!578961)))))

(assert (= (and d!486160 res!721155) b!1615686))

(declare-fun m!1935971 () Bool)

(assert (=> d!486160 m!1935971))

(declare-fun m!1935973 () Bool)

(assert (=> d!486160 m!1935973))

(declare-fun m!1935975 () Bool)

(assert (=> b!1615686 m!1935975))

(assert (=> b!1615183 d!486160))

(declare-fun b!1615766 () Bool)

(declare-fun e!1036399 () Bool)

(assert (=> b!1615766 (= e!1036399 true)))

(declare-fun b!1615765 () Bool)

(declare-fun e!1036398 () Bool)

(assert (=> b!1615765 (= e!1036398 e!1036399)))

(declare-fun b!1615764 () Bool)

(declare-fun e!1036397 () Bool)

(assert (=> b!1615764 (= e!1036397 e!1036398)))

(declare-fun d!486164 () Bool)

(assert (=> d!486164 e!1036397))

(assert (= b!1615765 b!1615766))

(assert (= b!1615764 b!1615765))

(assert (= (and d!486164 ((_ is Cons!17682) rules!1846)) b!1615764))

(declare-fun order!10477 () Int)

(declare-fun lambda!67098 () Int)

(declare-fun order!10475 () Int)

(declare-fun dynLambda!7883 (Int Int) Int)

(declare-fun dynLambda!7884 (Int Int) Int)

(assert (=> b!1615766 (< (dynLambda!7883 order!10475 (toValue!4538 (transformation!3115 (h!23083 rules!1846)))) (dynLambda!7884 order!10477 lambda!67098))))

(declare-fun order!10479 () Int)

(declare-fun dynLambda!7885 (Int Int) Int)

(assert (=> b!1615766 (< (dynLambda!7885 order!10479 (toChars!4397 (transformation!3115 (h!23083 rules!1846)))) (dynLambda!7884 order!10477 lambda!67098))))

(assert (=> d!486164 true))

(declare-fun lt!578972 () Bool)

(declare-fun forall!4060 (List!17751 Int) Bool)

(assert (=> d!486164 (= lt!578972 (forall!4060 tokens!457 lambda!67098))))

(declare-fun e!1036390 () Bool)

(assert (=> d!486164 (= lt!578972 e!1036390)))

(declare-fun res!721171 () Bool)

(assert (=> d!486164 (=> res!721171 e!1036390)))

(assert (=> d!486164 (= res!721171 (not ((_ is Cons!17681) tokens!457)))))

(assert (=> d!486164 (not (isEmpty!10692 rules!1846))))

(assert (=> d!486164 (= (rulesProduceEachTokenIndividuallyList!946 thiss!17113 rules!1846 tokens!457) lt!578972)))

(declare-fun b!1615754 () Bool)

(declare-fun e!1036389 () Bool)

(assert (=> b!1615754 (= e!1036390 e!1036389)))

(declare-fun res!721172 () Bool)

(assert (=> b!1615754 (=> (not res!721172) (not e!1036389))))

(assert (=> b!1615754 (= res!721172 (rulesProduceIndividualToken!1396 thiss!17113 rules!1846 (h!23082 tokens!457)))))

(declare-fun b!1615755 () Bool)

(assert (=> b!1615755 (= e!1036389 (rulesProduceEachTokenIndividuallyList!946 thiss!17113 rules!1846 (t!148224 tokens!457)))))

(assert (= (and d!486164 (not res!721171)) b!1615754))

(assert (= (and b!1615754 res!721172) b!1615755))

(declare-fun m!1936041 () Bool)

(assert (=> d!486164 m!1936041))

(assert (=> d!486164 m!1934793))

(assert (=> b!1615754 m!1934721))

(declare-fun m!1936043 () Bool)

(assert (=> b!1615755 m!1936043))

(assert (=> b!1615182 d!486164))

(declare-fun b!1615782 () Bool)

(declare-fun b_free!43527 () Bool)

(declare-fun b_next!44231 () Bool)

(assert (=> b!1615782 (= b_free!43527 (not b_next!44231))))

(declare-fun tp!471033 () Bool)

(declare-fun b_and!114581 () Bool)

(assert (=> b!1615782 (= tp!471033 b_and!114581)))

(declare-fun b_free!43529 () Bool)

(declare-fun b_next!44233 () Bool)

(assert (=> b!1615782 (= b_free!43529 (not b_next!44233))))

(declare-fun t!148263 () Bool)

(declare-fun tb!92815 () Bool)

(assert (=> (and b!1615782 (= (toChars!4397 (transformation!3115 (rule!4935 (h!23082 (t!148224 tokens!457))))) (toChars!4397 (transformation!3115 (rule!4935 (h!23082 (t!148224 tokens!457)))))) t!148263) tb!92815))

(declare-fun result!111880 () Bool)

(assert (= result!111880 result!111852))

(assert (=> d!485994 t!148263))

(declare-fun t!148265 () Bool)

(declare-fun tb!92817 () Bool)

(assert (=> (and b!1615782 (= (toChars!4397 (transformation!3115 (rule!4935 (h!23082 (t!148224 tokens!457))))) (toChars!4397 (transformation!3115 (rule!4935 (h!23082 tokens!457))))) t!148265) tb!92817))

(declare-fun result!111882 () Bool)

(assert (= result!111882 result!111858))

(assert (=> d!486034 t!148265))

(assert (=> b!1615592 t!148265))

(declare-fun b_and!114583 () Bool)

(declare-fun tp!471035 () Bool)

(assert (=> b!1615782 (= tp!471035 (and (=> t!148263 result!111880) (=> t!148265 result!111882) b_and!114583))))

(declare-fun e!1036414 () Bool)

(declare-fun tp!471031 () Bool)

(declare-fun b!1615779 () Bool)

(declare-fun e!1036412 () Bool)

(assert (=> b!1615779 (= e!1036412 (and (inv!23081 (h!23082 (t!148224 tokens!457))) e!1036414 tp!471031))))

(declare-fun b!1615781 () Bool)

(declare-fun e!1036415 () Bool)

(declare-fun e!1036413 () Bool)

(declare-fun tp!471032 () Bool)

(assert (=> b!1615781 (= e!1036415 (and tp!471032 (inv!23078 (tag!3391 (rule!4935 (h!23082 (t!148224 tokens!457))))) (inv!23082 (transformation!3115 (rule!4935 (h!23082 (t!148224 tokens!457))))) e!1036413))))

(declare-fun b!1615780 () Bool)

(declare-fun tp!471034 () Bool)

(assert (=> b!1615780 (= e!1036414 (and (inv!21 (value!98450 (h!23082 (t!148224 tokens!457)))) e!1036415 tp!471034))))

(assert (=> b!1615782 (= e!1036413 (and tp!471033 tp!471035))))

(assert (=> b!1615186 (= tp!470959 e!1036412)))

(assert (= b!1615781 b!1615782))

(assert (= b!1615780 b!1615781))

(assert (= b!1615779 b!1615780))

(assert (= (and b!1615186 ((_ is Cons!17681) (t!148224 tokens!457))) b!1615779))

(declare-fun m!1936045 () Bool)

(assert (=> b!1615779 m!1936045))

(declare-fun m!1936047 () Bool)

(assert (=> b!1615781 m!1936047))

(declare-fun m!1936049 () Bool)

(assert (=> b!1615781 m!1936049))

(declare-fun m!1936051 () Bool)

(assert (=> b!1615780 m!1936051))

(declare-fun b!1615787 () Bool)

(declare-fun e!1036420 () Bool)

(declare-fun tp_is_empty!7249 () Bool)

(declare-fun tp!471038 () Bool)

(assert (=> b!1615787 (= e!1036420 (and tp_is_empty!7249 tp!471038))))

(assert (=> b!1615201 (= tp!470960 e!1036420)))

(assert (= (and b!1615201 ((_ is Cons!17680) (originalCharacters!3929 (h!23082 tokens!457)))) b!1615787))

(declare-fun b!1615801 () Bool)

(declare-fun e!1036423 () Bool)

(declare-fun tp!471051 () Bool)

(declare-fun tp!471050 () Bool)

(assert (=> b!1615801 (= e!1036423 (and tp!471051 tp!471050))))

(declare-fun b!1615798 () Bool)

(assert (=> b!1615798 (= e!1036423 tp_is_empty!7249)))

(declare-fun b!1615800 () Bool)

(declare-fun tp!471053 () Bool)

(assert (=> b!1615800 (= e!1036423 tp!471053)))

(declare-fun b!1615799 () Bool)

(declare-fun tp!471049 () Bool)

(declare-fun tp!471052 () Bool)

(assert (=> b!1615799 (= e!1036423 (and tp!471049 tp!471052))))

(assert (=> b!1615194 (= tp!470954 e!1036423)))

(assert (= (and b!1615194 ((_ is ElementMatch!4443) (regex!3115 (h!23083 rules!1846)))) b!1615798))

(assert (= (and b!1615194 ((_ is Concat!7649) (regex!3115 (h!23083 rules!1846)))) b!1615799))

(assert (= (and b!1615194 ((_ is Star!4443) (regex!3115 (h!23083 rules!1846)))) b!1615800))

(assert (= (and b!1615194 ((_ is Union!4443) (regex!3115 (h!23083 rules!1846)))) b!1615801))

(declare-fun b!1615812 () Bool)

(declare-fun b_free!43531 () Bool)

(declare-fun b_next!44235 () Bool)

(assert (=> b!1615812 (= b_free!43531 (not b_next!44235))))

(declare-fun tp!471064 () Bool)

(declare-fun b_and!114585 () Bool)

(assert (=> b!1615812 (= tp!471064 b_and!114585)))

(declare-fun b_free!43533 () Bool)

(declare-fun b_next!44237 () Bool)

(assert (=> b!1615812 (= b_free!43533 (not b_next!44237))))

(declare-fun t!148267 () Bool)

(declare-fun tb!92819 () Bool)

(assert (=> (and b!1615812 (= (toChars!4397 (transformation!3115 (h!23083 (t!148225 rules!1846)))) (toChars!4397 (transformation!3115 (rule!4935 (h!23082 (t!148224 tokens!457)))))) t!148267) tb!92819))

(declare-fun result!111890 () Bool)

(assert (= result!111890 result!111852))

(assert (=> d!485994 t!148267))

(declare-fun t!148269 () Bool)

(declare-fun tb!92821 () Bool)

(assert (=> (and b!1615812 (= (toChars!4397 (transformation!3115 (h!23083 (t!148225 rules!1846)))) (toChars!4397 (transformation!3115 (rule!4935 (h!23082 tokens!457))))) t!148269) tb!92821))

(declare-fun result!111892 () Bool)

(assert (= result!111892 result!111858))

(assert (=> d!486034 t!148269))

(assert (=> b!1615592 t!148269))

(declare-fun tp!471063 () Bool)

(declare-fun b_and!114587 () Bool)

(assert (=> b!1615812 (= tp!471063 (and (=> t!148267 result!111890) (=> t!148269 result!111892) b_and!114587))))

(declare-fun e!1036435 () Bool)

(assert (=> b!1615812 (= e!1036435 (and tp!471064 tp!471063))))

(declare-fun b!1615811 () Bool)

(declare-fun tp!471065 () Bool)

(declare-fun e!1036434 () Bool)

(assert (=> b!1615811 (= e!1036434 (and tp!471065 (inv!23078 (tag!3391 (h!23083 (t!148225 rules!1846)))) (inv!23082 (transformation!3115 (h!23083 (t!148225 rules!1846)))) e!1036435))))

(declare-fun b!1615810 () Bool)

(declare-fun e!1036432 () Bool)

(declare-fun tp!471062 () Bool)

(assert (=> b!1615810 (= e!1036432 (and e!1036434 tp!471062))))

(assert (=> b!1615198 (= tp!470956 e!1036432)))

(assert (= b!1615811 b!1615812))

(assert (= b!1615810 b!1615811))

(assert (= (and b!1615198 ((_ is Cons!17682) (t!148225 rules!1846))) b!1615810))

(declare-fun m!1936053 () Bool)

(assert (=> b!1615811 m!1936053))

(declare-fun m!1936055 () Bool)

(assert (=> b!1615811 m!1936055))

(declare-fun b!1615816 () Bool)

(declare-fun e!1036436 () Bool)

(declare-fun tp!471068 () Bool)

(declare-fun tp!471067 () Bool)

(assert (=> b!1615816 (= e!1036436 (and tp!471068 tp!471067))))

(declare-fun b!1615813 () Bool)

(assert (=> b!1615813 (= e!1036436 tp_is_empty!7249)))

(declare-fun b!1615815 () Bool)

(declare-fun tp!471070 () Bool)

(assert (=> b!1615815 (= e!1036436 tp!471070)))

(declare-fun b!1615814 () Bool)

(declare-fun tp!471066 () Bool)

(declare-fun tp!471069 () Bool)

(assert (=> b!1615814 (= e!1036436 (and tp!471066 tp!471069))))

(assert (=> b!1615193 (= tp!470957 e!1036436)))

(assert (= (and b!1615193 ((_ is ElementMatch!4443) (regex!3115 (rule!4935 (h!23082 tokens!457))))) b!1615813))

(assert (= (and b!1615193 ((_ is Concat!7649) (regex!3115 (rule!4935 (h!23082 tokens!457))))) b!1615814))

(assert (= (and b!1615193 ((_ is Star!4443) (regex!3115 (rule!4935 (h!23082 tokens!457))))) b!1615815))

(assert (= (and b!1615193 ((_ is Union!4443) (regex!3115 (rule!4935 (h!23082 tokens!457))))) b!1615816))

(declare-fun b_lambda!50959 () Bool)

(assert (= b_lambda!50947 (or (and b!1615179 b_free!43513) (and b!1615176 b_free!43517 (= (toChars!4397 (transformation!3115 (h!23083 rules!1846))) (toChars!4397 (transformation!3115 (rule!4935 (h!23082 tokens!457)))))) (and b!1615782 b_free!43529 (= (toChars!4397 (transformation!3115 (rule!4935 (h!23082 (t!148224 tokens!457))))) (toChars!4397 (transformation!3115 (rule!4935 (h!23082 tokens!457)))))) (and b!1615812 b_free!43533 (= (toChars!4397 (transformation!3115 (h!23083 (t!148225 rules!1846)))) (toChars!4397 (transformation!3115 (rule!4935 (h!23082 tokens!457)))))) b_lambda!50959)))

(declare-fun b_lambda!50961 () Bool)

(assert (= b_lambda!50945 (or (and b!1615179 b_free!43513 (= (toChars!4397 (transformation!3115 (rule!4935 (h!23082 tokens!457)))) (toChars!4397 (transformation!3115 (rule!4935 (h!23082 (t!148224 tokens!457))))))) (and b!1615176 b_free!43517 (= (toChars!4397 (transformation!3115 (h!23083 rules!1846))) (toChars!4397 (transformation!3115 (rule!4935 (h!23082 (t!148224 tokens!457))))))) (and b!1615782 b_free!43529) (and b!1615812 b_free!43533 (= (toChars!4397 (transformation!3115 (h!23083 (t!148225 rules!1846)))) (toChars!4397 (transformation!3115 (rule!4935 (h!23082 (t!148224 tokens!457))))))) b_lambda!50961)))

(declare-fun b_lambda!50963 () Bool)

(assert (= b_lambda!50949 (or (and b!1615179 b_free!43513) (and b!1615176 b_free!43517 (= (toChars!4397 (transformation!3115 (h!23083 rules!1846))) (toChars!4397 (transformation!3115 (rule!4935 (h!23082 tokens!457)))))) (and b!1615782 b_free!43529 (= (toChars!4397 (transformation!3115 (rule!4935 (h!23082 (t!148224 tokens!457))))) (toChars!4397 (transformation!3115 (rule!4935 (h!23082 tokens!457)))))) (and b!1615812 b_free!43533 (= (toChars!4397 (transformation!3115 (h!23083 (t!148225 rules!1846)))) (toChars!4397 (transformation!3115 (rule!4935 (h!23082 tokens!457)))))) b_lambda!50963)))

(check-sat (not b!1615376) (not b!1615441) (not b!1615400) (not d!486004) (not b!1615662) (not d!486156) (not b!1615234) (not d!486010) (not b_next!44233) (not d!485940) (not b!1615398) (not b!1615564) b_and!114545 (not b!1615799) (not d!486022) (not b!1615317) (not b_next!44215) (not bm!104824) (not b!1615557) (not b_lambda!50961) (not b!1615754) (not d!485928) (not d!486112) (not b!1615642) (not b!1615468) b_and!114583 (not b_next!44217) (not b_next!44231) (not d!485982) (not b!1615372) (not bm!104830) (not b!1615686) (not b!1615397) (not d!486076) (not b!1615392) (not b!1615205) (not d!486000) (not d!485994) (not b!1615310) (not d!486146) (not b!1615335) (not d!486002) (not d!486024) (not b!1615563) (not b!1615394) (not b!1615361) (not b_next!44219) (not b_lambda!50963) (not b!1615443) (not b!1615653) (not b!1615438) (not b_lambda!50959) (not b!1615566) (not d!486036) (not d!486148) (not d!486078) (not b!1615565) (not b!1615403) b_and!114565 (not d!486116) b_and!114587 (not d!486042) (not b!1615444) (not d!486006) (not d!486060) (not d!486130) (not b!1615661) (not b!1615582) (not b!1615593) (not b!1615312) (not b!1615320) (not b!1615439) (not d!486034) (not b!1615815) (not d!485990) (not b!1615780) (not d!486064) (not b!1615663) (not b!1615232) (not d!486030) (not b!1615814) (not b!1615781) (not d!485986) (not b!1615755) (not b!1615603) (not b!1615562) (not b_next!44235) (not b!1615332) (not b!1615442) (not b_next!44237) (not b!1615656) (not b!1615393) (not b!1615437) (not b!1615659) (not d!486026) (not b!1615592) (not d!486032) (not d!486046) (not d!486068) (not b!1615561) (not d!486104) (not bm!104829) (not b!1615811) (not d!485988) (not b!1615558) (not d!485938) b_and!114567 (not d!486144) (not b!1615371) b_and!114581 (not d!486128) (not d!486164) (not d!485924) (not d!486066) (not b!1615427) (not b!1615801) (not b!1615655) (not b!1615313) (not b!1615675) (not b!1615470) (not d!485984) (not d!486020) (not b!1615391) (not d!486074) (not b!1615465) (not b!1615810) (not b!1615640) (not d!486008) (not b!1615800) (not b!1615315) (not b!1615360) (not b!1615604) (not tb!92803) (not b!1615583) (not d!485992) (not b!1615464) b_and!114585 (not b!1615657) (not b!1615330) (not d!486106) (not b!1615567) tp_is_empty!7249 (not b!1615787) (not b!1615355) (not b!1615331) (not b!1615231) (not tb!92799) (not b!1615660) b_and!114541 (not b!1615779) (not b!1615426) (not b!1615641) (not b!1615605) (not b!1615440) (not b!1615658) (not d!486044) (not d!486018) (not b!1615311) (not d!486028) (not b!1615471) (not b!1615314) (not b!1615816) (not d!486160) (not bm!104821) (not d!486110) (not d!486014) (not b_next!44221) (not b!1615329) (not d!486012) (not d!486070) (not b!1615467) (not b!1615466) (not b!1615469) (not b!1615568) (not b!1615764))
(check-sat (not b_next!44215) (not b_next!44219) (not b_next!44235) (not b_next!44237) b_and!114567 b_and!114581 b_and!114585 b_and!114541 (not b_next!44221) (not b_next!44233) b_and!114545 b_and!114583 (not b_next!44217) (not b_next!44231) b_and!114565 b_and!114587)
