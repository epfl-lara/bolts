; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!152350 () Bool)

(assert start!152350)

(declare-fun b!1612967 () Bool)

(declare-fun b_free!43383 () Bool)

(declare-fun b_next!44087 () Bool)

(assert (=> b!1612967 (= b_free!43383 (not b_next!44087))))

(declare-fun tp!470421 () Bool)

(declare-fun b_and!114365 () Bool)

(assert (=> b!1612967 (= tp!470421 b_and!114365)))

(declare-fun b_free!43385 () Bool)

(declare-fun b_next!44089 () Bool)

(assert (=> b!1612967 (= b_free!43385 (not b_next!44089))))

(declare-fun tp!470418 () Bool)

(declare-fun b_and!114367 () Bool)

(assert (=> b!1612967 (= tp!470418 b_and!114367)))

(declare-fun b!1612987 () Bool)

(declare-fun b_free!43387 () Bool)

(declare-fun b_next!44091 () Bool)

(assert (=> b!1612987 (= b_free!43387 (not b_next!44091))))

(declare-fun tp!470420 () Bool)

(declare-fun b_and!114369 () Bool)

(assert (=> b!1612987 (= tp!470420 b_and!114369)))

(declare-fun b_free!43389 () Bool)

(declare-fun b_next!44093 () Bool)

(assert (=> b!1612987 (= b_free!43389 (not b_next!44093))))

(declare-fun tp!470416 () Bool)

(declare-fun b_and!114371 () Bool)

(assert (=> b!1612987 (= tp!470416 b_and!114371)))

(declare-fun e!1034526 () Bool)

(declare-fun b!1612964 () Bool)

(declare-fun tp!470419 () Bool)

(declare-datatypes ((List!17689 0))(
  ( (Nil!17619) (Cons!17619 (h!23020 (_ BitVec 16)) (t!148078 List!17689)) )
))
(declare-datatypes ((TokenValue!3193 0))(
  ( (FloatLiteralValue!6386 (text!22796 List!17689)) (TokenValueExt!3192 (__x!11688 Int)) (Broken!15965 (value!98082 List!17689)) (Object!3262) (End!3193) (Def!3193) (Underscore!3193) (Match!3193) (Else!3193) (Error!3193) (Case!3193) (If!3193) (Extends!3193) (Abstract!3193) (Class!3193) (Val!3193) (DelimiterValue!6386 (del!3253 List!17689)) (KeywordValue!3199 (value!98083 List!17689)) (CommentValue!6386 (value!98084 List!17689)) (WhitespaceValue!6386 (value!98085 List!17689)) (IndentationValue!3193 (value!98086 List!17689)) (String!20296) (Int32!3193) (Broken!15966 (value!98087 List!17689)) (Boolean!3194) (Unit!28302) (OperatorValue!3196 (op!3253 List!17689)) (IdentifierValue!6386 (value!98088 List!17689)) (IdentifierValue!6387 (value!98089 List!17689)) (WhitespaceValue!6387 (value!98090 List!17689)) (True!6386) (False!6386) (Broken!15967 (value!98091 List!17689)) (Broken!15968 (value!98092 List!17689)) (True!6387) (RightBrace!3193) (RightBracket!3193) (Colon!3193) (Null!3193) (Comma!3193) (LeftBracket!3193) (False!6387) (LeftBrace!3193) (ImaginaryLiteralValue!3193 (text!22797 List!17689)) (StringLiteralValue!9579 (value!98093 List!17689)) (EOFValue!3193 (value!98094 List!17689)) (IdentValue!3193 (value!98095 List!17689)) (DelimiterValue!6387 (value!98096 List!17689)) (DedentValue!3193 (value!98097 List!17689)) (NewLineValue!3193 (value!98098 List!17689)) (IntegerValue!9579 (value!98099 (_ BitVec 32)) (text!22798 List!17689)) (IntegerValue!9580 (value!98100 Int) (text!22799 List!17689)) (Times!3193) (Or!3193) (Equal!3193) (Minus!3193) (Broken!15969 (value!98101 List!17689)) (And!3193) (Div!3193) (LessEqual!3193) (Mod!3193) (Concat!7624) (Not!3193) (Plus!3193) (SpaceValue!3193 (value!98102 List!17689)) (IntegerValue!9581 (value!98103 Int) (text!22800 List!17689)) (StringLiteralValue!9580 (text!22801 List!17689)) (FloatLiteralValue!6387 (text!22802 List!17689)) (BytesLiteralValue!3193 (value!98104 List!17689)) (CommentValue!6387 (value!98105 List!17689)) (StringLiteralValue!9581 (value!98106 List!17689)) (ErrorTokenValue!3193 (msg!3254 List!17689)) )
))
(declare-datatypes ((C!9036 0))(
  ( (C!9037 (val!5114 Int)) )
))
(declare-datatypes ((List!17690 0))(
  ( (Nil!17620) (Cons!17620 (h!23021 C!9036) (t!148079 List!17690)) )
))
(declare-datatypes ((IArray!11713 0))(
  ( (IArray!11714 (innerList!5914 List!17690)) )
))
(declare-datatypes ((Conc!5854 0))(
  ( (Node!5854 (left!14199 Conc!5854) (right!14529 Conc!5854) (csize!11938 Int) (cheight!6065 Int)) (Leaf!8626 (xs!8682 IArray!11713) (csize!11939 Int)) (Empty!5854) )
))
(declare-datatypes ((BalanceConc!11652 0))(
  ( (BalanceConc!11653 (c!262813 Conc!5854)) )
))
(declare-datatypes ((Regex!4431 0))(
  ( (ElementMatch!4431 (c!262814 C!9036)) (Concat!7625 (regOne!9374 Regex!4431) (regTwo!9374 Regex!4431)) (EmptyExpr!4431) (Star!4431 (reg!4760 Regex!4431)) (EmptyLang!4431) (Union!4431 (regOne!9375 Regex!4431) (regTwo!9375 Regex!4431)) )
))
(declare-datatypes ((String!20297 0))(
  ( (String!20298 (value!98107 String)) )
))
(declare-datatypes ((TokenValueInjection!6046 0))(
  ( (TokenValueInjection!6047 (toValue!4526 Int) (toChars!4385 Int)) )
))
(declare-datatypes ((Rule!6006 0))(
  ( (Rule!6007 (regex!3103 Regex!4431) (tag!3379 String!20297) (isSeparator!3103 Bool) (transformation!3103 TokenValueInjection!6046)) )
))
(declare-datatypes ((Token!5772 0))(
  ( (Token!5773 (value!98108 TokenValue!3193) (rule!4923 Rule!6006) (size!14160 Int) (originalCharacters!3917 List!17690)) )
))
(declare-datatypes ((List!17691 0))(
  ( (Nil!17621) (Cons!17621 (h!23022 Token!5772) (t!148080 List!17691)) )
))
(declare-fun tokens!457 () List!17691)

(declare-fun e!1034525 () Bool)

(declare-fun inv!21 (TokenValue!3193) Bool)

(assert (=> b!1612964 (= e!1034526 (and (inv!21 (value!98108 (h!23022 tokens!457))) e!1034525 tp!470419))))

(declare-fun b!1612965 () Bool)

(declare-fun res!719413 () Bool)

(declare-fun e!1034513 () Bool)

(assert (=> b!1612965 (=> (not res!719413) (not e!1034513))))

(declare-datatypes ((List!17692 0))(
  ( (Nil!17622) (Cons!17622 (h!23023 Rule!6006) (t!148081 List!17692)) )
))
(declare-fun rules!1846 () List!17692)

(declare-datatypes ((LexerInterface!2732 0))(
  ( (LexerInterfaceExt!2729 (__x!11689 Int)) (Lexer!2730) )
))
(declare-fun thiss!17113 () LexerInterface!2732)

(declare-fun rulesProduceEachTokenIndividuallyList!934 (LexerInterface!2732 List!17692 List!17691) Bool)

(assert (=> b!1612965 (= res!719413 (rulesProduceEachTokenIndividuallyList!934 thiss!17113 rules!1846 tokens!457))))

(declare-fun tp!470417 () Bool)

(declare-fun e!1034511 () Bool)

(declare-fun b!1612966 () Bool)

(declare-fun e!1034528 () Bool)

(declare-fun inv!23028 (String!20297) Bool)

(declare-fun inv!23031 (TokenValueInjection!6046) Bool)

(assert (=> b!1612966 (= e!1034511 (and tp!470417 (inv!23028 (tag!3379 (h!23023 rules!1846))) (inv!23031 (transformation!3103 (h!23023 rules!1846))) e!1034528))))

(declare-fun b!1612968 () Bool)

(declare-fun e!1034512 () Bool)

(declare-fun e!1034527 () Bool)

(assert (=> b!1612968 (= e!1034512 e!1034527)))

(declare-fun res!719420 () Bool)

(assert (=> b!1612968 (=> res!719420 e!1034527)))

(declare-datatypes ((tuple2!17126 0))(
  ( (tuple2!17127 (_1!9965 Token!5772) (_2!9965 List!17690)) )
))
(declare-datatypes ((Option!3209 0))(
  ( (None!3208) (Some!3208 (v!24179 tuple2!17126)) )
))
(declare-fun lt!576220 () Option!3209)

(declare-fun isDefined!2576 (Option!3209) Bool)

(assert (=> b!1612968 (= res!719420 (not (isDefined!2576 lt!576220)))))

(declare-fun lt!576221 () List!17690)

(declare-fun lt!576235 () List!17690)

(declare-datatypes ((Unit!28303 0))(
  ( (Unit!28304) )
))
(declare-fun lt!576234 () Unit!28303)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!306 (LexerInterface!2732 List!17692 List!17690 List!17690) Unit!28303)

(assert (=> b!1612968 (= lt!576234 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!306 thiss!17113 rules!1846 lt!576221 lt!576235))))

(declare-fun b!1612969 () Bool)

(declare-fun res!719407 () Bool)

(assert (=> b!1612969 (=> res!719407 e!1034512)))

(declare-fun rulesProduceIndividualToken!1384 (LexerInterface!2732 List!17692 Token!5772) Bool)

(assert (=> b!1612969 (= res!719407 (not (rulesProduceIndividualToken!1384 thiss!17113 rules!1846 (h!23022 tokens!457))))))

(declare-fun b!1612970 () Bool)

(declare-fun tp!470422 () Bool)

(declare-fun e!1034520 () Bool)

(declare-fun inv!23032 (Token!5772) Bool)

(assert (=> b!1612970 (= e!1034520 (and (inv!23032 (h!23022 tokens!457)) e!1034526 tp!470422))))

(declare-fun b!1612971 () Bool)

(declare-fun e!1034522 () Bool)

(assert (=> b!1612971 (= e!1034513 e!1034522)))

(declare-fun res!719409 () Bool)

(assert (=> b!1612971 (=> (not res!719409) (not e!1034522))))

(declare-fun lt!576225 () List!17690)

(declare-fun lt!576230 () List!17690)

(assert (=> b!1612971 (= res!719409 (= lt!576225 lt!576230))))

(declare-fun ++!4641 (List!17690 List!17690) List!17690)

(assert (=> b!1612971 (= lt!576230 (++!4641 lt!576221 lt!576235))))

(declare-fun lt!576224 () BalanceConc!11652)

(declare-fun list!6879 (BalanceConc!11652) List!17690)

(assert (=> b!1612971 (= lt!576225 (list!6879 lt!576224))))

(declare-fun lt!576217 () BalanceConc!11652)

(assert (=> b!1612971 (= lt!576235 (list!6879 lt!576217))))

(declare-fun lt!576229 () BalanceConc!11652)

(assert (=> b!1612971 (= lt!576221 (list!6879 lt!576229))))

(declare-fun charsOf!1752 (Token!5772) BalanceConc!11652)

(assert (=> b!1612971 (= lt!576229 (charsOf!1752 (h!23022 tokens!457)))))

(declare-datatypes ((IArray!11715 0))(
  ( (IArray!11716 (innerList!5915 List!17691)) )
))
(declare-datatypes ((Conc!5855 0))(
  ( (Node!5855 (left!14200 Conc!5855) (right!14530 Conc!5855) (csize!11940 Int) (cheight!6066 Int)) (Leaf!8627 (xs!8683 IArray!11715) (csize!11941 Int)) (Empty!5855) )
))
(declare-datatypes ((BalanceConc!11654 0))(
  ( (BalanceConc!11655 (c!262815 Conc!5855)) )
))
(declare-datatypes ((tuple2!17128 0))(
  ( (tuple2!17129 (_1!9966 BalanceConc!11654) (_2!9966 BalanceConc!11652)) )
))
(declare-fun lt!576228 () tuple2!17128)

(declare-fun lex!1216 (LexerInterface!2732 List!17692 BalanceConc!11652) tuple2!17128)

(assert (=> b!1612971 (= lt!576228 (lex!1216 thiss!17113 rules!1846 lt!576217))))

(declare-fun lt!576236 () BalanceConc!11654)

(declare-fun print!1263 (LexerInterface!2732 BalanceConc!11654) BalanceConc!11652)

(assert (=> b!1612971 (= lt!576217 (print!1263 thiss!17113 lt!576236))))

(declare-fun seqFromList!1955 (List!17691) BalanceConc!11654)

(assert (=> b!1612971 (= lt!576236 (seqFromList!1955 (t!148080 tokens!457)))))

(assert (=> b!1612971 (= lt!576224 (print!1263 thiss!17113 (seqFromList!1955 tokens!457)))))

(declare-fun b!1612972 () Bool)

(declare-fun e!1034517 () Bool)

(assert (=> b!1612972 (= e!1034527 e!1034517)))

(declare-fun res!719417 () Bool)

(assert (=> b!1612972 (=> res!719417 e!1034517)))

(declare-fun lt!576240 () BalanceConc!11652)

(declare-fun lt!576222 () Regex!4431)

(declare-fun prefixMatchZipperSequence!471 (Regex!4431 BalanceConc!11652) Bool)

(declare-fun ++!4642 (BalanceConc!11652 BalanceConc!11652) BalanceConc!11652)

(assert (=> b!1612972 (= res!719417 (prefixMatchZipperSequence!471 lt!576222 (++!4642 lt!576229 lt!576240)))))

(declare-fun singletonSeq!1484 (C!9036) BalanceConc!11652)

(declare-fun apply!4412 (BalanceConc!11652 Int) C!9036)

(assert (=> b!1612972 (= lt!576240 (singletonSeq!1484 (apply!4412 (charsOf!1752 (h!23022 (t!148080 tokens!457))) 0)))))

(declare-fun rulesRegex!493 (LexerInterface!2732 List!17692) Regex!4431)

(assert (=> b!1612972 (= lt!576222 (rulesRegex!493 thiss!17113 rules!1846))))

(declare-fun b!1612973 () Bool)

(declare-fun res!719424 () Bool)

(declare-fun e!1034510 () Bool)

(assert (=> b!1612973 (=> (not res!719424) (not e!1034510))))

(declare-fun lt!576232 () List!17690)

(declare-fun head!3318 (List!17690) C!9036)

(assert (=> b!1612973 (= res!719424 (= lt!576232 (Cons!17620 (head!3318 lt!576235) Nil!17620)))))

(declare-fun b!1612974 () Bool)

(declare-fun res!719421 () Bool)

(assert (=> b!1612974 (=> (not res!719421) (not e!1034510))))

(assert (=> b!1612974 (= res!719421 (= lt!576232 (Cons!17620 (head!3318 (originalCharacters!3917 (h!23022 (t!148080 tokens!457)))) Nil!17620)))))

(declare-fun b!1612975 () Bool)

(declare-fun res!719412 () Bool)

(assert (=> b!1612975 (=> res!719412 e!1034512)))

(declare-fun isEmpty!10644 (BalanceConc!11654) Bool)

(declare-fun seqFromList!1956 (List!17690) BalanceConc!11652)

(assert (=> b!1612975 (= res!719412 (isEmpty!10644 (_1!9966 (lex!1216 thiss!17113 rules!1846 (seqFromList!1956 lt!576221)))))))

(declare-fun b!1612976 () Bool)

(declare-fun res!719423 () Bool)

(assert (=> b!1612976 (=> (not res!719423) (not e!1034513))))

(declare-fun rulesInvariant!2401 (LexerInterface!2732 List!17692) Bool)

(assert (=> b!1612976 (= res!719423 (rulesInvariant!2401 thiss!17113 rules!1846))))

(declare-fun b!1612977 () Bool)

(declare-fun e!1034524 () Bool)

(declare-fun tp!470415 () Bool)

(assert (=> b!1612977 (= e!1034524 (and e!1034511 tp!470415))))

(declare-fun e!1034515 () Bool)

(assert (=> b!1612967 (= e!1034515 (and tp!470421 tp!470418))))

(declare-fun res!719408 () Bool)

(assert (=> start!152350 (=> (not res!719408) (not e!1034513))))

(get-info :version)

(assert (=> start!152350 (= res!719408 ((_ is Lexer!2730) thiss!17113))))

(assert (=> start!152350 e!1034513))

(assert (=> start!152350 true))

(assert (=> start!152350 e!1034524))

(assert (=> start!152350 e!1034520))

(declare-fun b!1612978 () Bool)

(declare-fun e!1034509 () Bool)

(declare-fun rulesValidInductive!946 (LexerInterface!2732 List!17692) Bool)

(assert (=> b!1612978 (= e!1034509 (rulesValidInductive!946 thiss!17113 rules!1846))))

(declare-fun maxPrefix!1296 (LexerInterface!2732 List!17692 List!17690) Option!3209)

(assert (=> b!1612978 (isDefined!2576 (maxPrefix!1296 thiss!17113 rules!1846 (originalCharacters!3917 (h!23022 tokens!457))))))

(declare-fun b!1612979 () Bool)

(declare-fun res!719411 () Bool)

(assert (=> b!1612979 (=> (not res!719411) (not e!1034513))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!425 (LexerInterface!2732 List!17691 List!17692) Bool)

(assert (=> b!1612979 (= res!719411 (tokensListTwoByTwoPredicateSeparableList!425 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1612980 () Bool)

(declare-fun res!719426 () Bool)

(assert (=> b!1612980 (=> (not res!719426) (not e!1034513))))

(assert (=> b!1612980 (= res!719426 (and (not ((_ is Nil!17621) tokens!457)) (not ((_ is Nil!17621) (t!148080 tokens!457)))))))

(declare-fun tp!470414 () Bool)

(declare-fun b!1612981 () Bool)

(assert (=> b!1612981 (= e!1034525 (and tp!470414 (inv!23028 (tag!3379 (rule!4923 (h!23022 tokens!457)))) (inv!23031 (transformation!3103 (rule!4923 (h!23022 tokens!457)))) e!1034515))))

(declare-fun b!1612982 () Bool)

(declare-fun head!3319 (BalanceConc!11652) C!9036)

(assert (=> b!1612982 (= e!1034510 (= lt!576232 (Cons!17620 (head!3319 lt!576217) Nil!17620)))))

(declare-fun b!1612983 () Bool)

(declare-fun e!1034523 () Bool)

(assert (=> b!1612983 (= e!1034517 e!1034523)))

(declare-fun res!719422 () Bool)

(assert (=> b!1612983 (=> res!719422 e!1034523)))

(declare-fun prefixMatch!366 (Regex!4431 List!17690) Bool)

(assert (=> b!1612983 (= res!719422 (prefixMatch!366 lt!576222 (++!4641 lt!576221 lt!576232)))))

(assert (=> b!1612983 (= lt!576232 (list!6879 lt!576240))))

(declare-fun b!1612984 () Bool)

(declare-fun e!1034521 () Bool)

(assert (=> b!1612984 (= e!1034521 e!1034512)))

(declare-fun res!719410 () Bool)

(assert (=> b!1612984 (=> res!719410 e!1034512)))

(declare-fun lt!576219 () List!17690)

(declare-fun lt!576231 () List!17690)

(assert (=> b!1612984 (= res!719410 (or (not (= lt!576219 lt!576231)) (not (= lt!576231 lt!576221)) (not (= lt!576219 lt!576221))))))

(declare-fun printList!847 (LexerInterface!2732 List!17691) List!17690)

(assert (=> b!1612984 (= lt!576231 (printList!847 thiss!17113 (Cons!17621 (h!23022 tokens!457) Nil!17621)))))

(declare-fun lt!576239 () BalanceConc!11652)

(assert (=> b!1612984 (= lt!576219 (list!6879 lt!576239))))

(declare-fun lt!576223 () BalanceConc!11654)

(declare-fun printTailRec!785 (LexerInterface!2732 BalanceConc!11654 Int BalanceConc!11652) BalanceConc!11652)

(assert (=> b!1612984 (= lt!576239 (printTailRec!785 thiss!17113 lt!576223 0 (BalanceConc!11653 Empty!5854)))))

(assert (=> b!1612984 (= lt!576239 (print!1263 thiss!17113 lt!576223))))

(declare-fun singletonSeq!1485 (Token!5772) BalanceConc!11654)

(assert (=> b!1612984 (= lt!576223 (singletonSeq!1485 (h!23022 tokens!457)))))

(assert (=> b!1612984 (= lt!576220 (maxPrefix!1296 thiss!17113 rules!1846 lt!576225))))

(declare-fun b!1612985 () Bool)

(declare-fun e!1034514 () Bool)

(assert (=> b!1612985 (= e!1034514 e!1034521)))

(declare-fun res!719419 () Bool)

(assert (=> b!1612985 (=> res!719419 e!1034521)))

(declare-fun lt!576226 () List!17691)

(declare-fun lt!576238 () List!17691)

(declare-fun lt!576218 () List!17691)

(assert (=> b!1612985 (= res!719419 (or (not (= lt!576226 lt!576218)) (not (= lt!576218 lt!576238))))))

(declare-fun list!6880 (BalanceConc!11654) List!17691)

(assert (=> b!1612985 (= lt!576218 (list!6880 lt!576236))))

(assert (=> b!1612985 (= lt!576226 lt!576238)))

(declare-fun prepend!609 (BalanceConc!11654 Token!5772) BalanceConc!11654)

(assert (=> b!1612985 (= lt!576238 (list!6880 (prepend!609 (seqFromList!1955 (t!148080 (t!148080 tokens!457))) (h!23022 (t!148080 tokens!457)))))))

(declare-fun lt!576237 () Unit!28303)

(declare-fun seqFromListBHdTlConstructive!180 (Token!5772 List!17691 BalanceConc!11654) Unit!28303)

(assert (=> b!1612985 (= lt!576237 (seqFromListBHdTlConstructive!180 (h!23022 (t!148080 tokens!457)) (t!148080 (t!148080 tokens!457)) (_1!9966 lt!576228)))))

(declare-fun b!1612986 () Bool)

(declare-fun res!719415 () Bool)

(assert (=> b!1612986 (=> res!719415 e!1034521)))

(declare-fun separableTokensPredicate!674 (LexerInterface!2732 Token!5772 Token!5772 List!17692) Bool)

(assert (=> b!1612986 (= res!719415 (not (separableTokensPredicate!674 thiss!17113 (h!23022 tokens!457) (h!23022 (t!148080 tokens!457)) rules!1846)))))

(assert (=> b!1612987 (= e!1034528 (and tp!470420 tp!470416))))

(declare-fun b!1612988 () Bool)

(declare-fun res!719416 () Bool)

(assert (=> b!1612988 (=> (not res!719416) (not e!1034513))))

(declare-fun isEmpty!10645 (List!17692) Bool)

(assert (=> b!1612988 (= res!719416 (not (isEmpty!10645 rules!1846)))))

(declare-fun b!1612989 () Bool)

(assert (=> b!1612989 (= e!1034523 e!1034509)))

(declare-fun res!719418 () Bool)

(assert (=> b!1612989 (=> res!719418 e!1034509)))

(declare-datatypes ((tuple2!17130 0))(
  ( (tuple2!17131 (_1!9967 Token!5772) (_2!9967 BalanceConc!11652)) )
))
(declare-datatypes ((Option!3210 0))(
  ( (None!3209) (Some!3209 (v!24180 tuple2!17130)) )
))
(declare-fun isDefined!2577 (Option!3210) Bool)

(declare-fun maxPrefixZipperSequence!627 (LexerInterface!2732 List!17692 BalanceConc!11652) Option!3210)

(assert (=> b!1612989 (= res!719418 (not (isDefined!2577 (maxPrefixZipperSequence!627 thiss!17113 rules!1846 (seqFromList!1956 (originalCharacters!3917 (h!23022 tokens!457)))))))))

(assert (=> b!1612989 e!1034510))

(declare-fun res!719414 () Bool)

(assert (=> b!1612989 (=> (not res!719414) (not e!1034510))))

(assert (=> b!1612989 (= res!719414 (= lt!576221 (originalCharacters!3917 (h!23022 tokens!457))))))

(declare-fun b!1612990 () Bool)

(assert (=> b!1612990 (= e!1034522 (not e!1034514))))

(declare-fun res!719425 () Bool)

(assert (=> b!1612990 (=> res!719425 e!1034514)))

(assert (=> b!1612990 (= res!719425 (not (= lt!576226 (t!148080 tokens!457))))))

(assert (=> b!1612990 (= lt!576226 (list!6880 (_1!9966 lt!576228)))))

(declare-fun lt!576227 () Unit!28303)

(declare-fun theoremInvertabilityWhenTokenListSeparable!177 (LexerInterface!2732 List!17692 List!17691) Unit!28303)

(assert (=> b!1612990 (= lt!576227 (theoremInvertabilityWhenTokenListSeparable!177 thiss!17113 rules!1846 (t!148080 tokens!457)))))

(declare-fun isPrefix!1363 (List!17690 List!17690) Bool)

(assert (=> b!1612990 (isPrefix!1363 lt!576221 lt!576230)))

(declare-fun lt!576233 () Unit!28303)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!888 (List!17690 List!17690) Unit!28303)

(assert (=> b!1612990 (= lt!576233 (lemmaConcatTwoListThenFirstIsPrefix!888 lt!576221 lt!576235))))

(assert (= (and start!152350 res!719408) b!1612988))

(assert (= (and b!1612988 res!719416) b!1612976))

(assert (= (and b!1612976 res!719423) b!1612965))

(assert (= (and b!1612965 res!719413) b!1612979))

(assert (= (and b!1612979 res!719411) b!1612980))

(assert (= (and b!1612980 res!719426) b!1612971))

(assert (= (and b!1612971 res!719409) b!1612990))

(assert (= (and b!1612990 (not res!719425)) b!1612985))

(assert (= (and b!1612985 (not res!719419)) b!1612986))

(assert (= (and b!1612986 (not res!719415)) b!1612984))

(assert (= (and b!1612984 (not res!719410)) b!1612969))

(assert (= (and b!1612969 (not res!719407)) b!1612975))

(assert (= (and b!1612975 (not res!719412)) b!1612968))

(assert (= (and b!1612968 (not res!719420)) b!1612972))

(assert (= (and b!1612972 (not res!719417)) b!1612983))

(assert (= (and b!1612983 (not res!719422)) b!1612989))

(assert (= (and b!1612989 res!719414) b!1612974))

(assert (= (and b!1612974 res!719421) b!1612973))

(assert (= (and b!1612973 res!719424) b!1612982))

(assert (= (and b!1612989 (not res!719418)) b!1612978))

(assert (= b!1612966 b!1612987))

(assert (= b!1612977 b!1612966))

(assert (= (and start!152350 ((_ is Cons!17622) rules!1846)) b!1612977))

(assert (= b!1612981 b!1612967))

(assert (= b!1612964 b!1612981))

(assert (= b!1612970 b!1612964))

(assert (= (and start!152350 ((_ is Cons!17621) tokens!457)) b!1612970))

(declare-fun m!1930881 () Bool)

(assert (=> b!1612964 m!1930881))

(declare-fun m!1930883 () Bool)

(assert (=> b!1612973 m!1930883))

(declare-fun m!1930885 () Bool)

(assert (=> b!1612972 m!1930885))

(declare-fun m!1930887 () Bool)

(assert (=> b!1612972 m!1930887))

(declare-fun m!1930889 () Bool)

(assert (=> b!1612972 m!1930889))

(declare-fun m!1930891 () Bool)

(assert (=> b!1612972 m!1930891))

(declare-fun m!1930893 () Bool)

(assert (=> b!1612972 m!1930893))

(assert (=> b!1612972 m!1930887))

(declare-fun m!1930895 () Bool)

(assert (=> b!1612972 m!1930895))

(assert (=> b!1612972 m!1930891))

(assert (=> b!1612972 m!1930895))

(declare-fun m!1930897 () Bool)

(assert (=> b!1612990 m!1930897))

(declare-fun m!1930899 () Bool)

(assert (=> b!1612990 m!1930899))

(declare-fun m!1930901 () Bool)

(assert (=> b!1612990 m!1930901))

(declare-fun m!1930903 () Bool)

(assert (=> b!1612990 m!1930903))

(declare-fun m!1930905 () Bool)

(assert (=> b!1612970 m!1930905))

(declare-fun m!1930907 () Bool)

(assert (=> b!1612975 m!1930907))

(assert (=> b!1612975 m!1930907))

(declare-fun m!1930909 () Bool)

(assert (=> b!1612975 m!1930909))

(declare-fun m!1930911 () Bool)

(assert (=> b!1612975 m!1930911))

(declare-fun m!1930913 () Bool)

(assert (=> b!1612979 m!1930913))

(declare-fun m!1930915 () Bool)

(assert (=> b!1612978 m!1930915))

(declare-fun m!1930917 () Bool)

(assert (=> b!1612978 m!1930917))

(assert (=> b!1612978 m!1930917))

(declare-fun m!1930919 () Bool)

(assert (=> b!1612978 m!1930919))

(declare-fun m!1930921 () Bool)

(assert (=> b!1612968 m!1930921))

(declare-fun m!1930923 () Bool)

(assert (=> b!1612968 m!1930923))

(declare-fun m!1930925 () Bool)

(assert (=> b!1612969 m!1930925))

(declare-fun m!1930927 () Bool)

(assert (=> b!1612984 m!1930927))

(declare-fun m!1930929 () Bool)

(assert (=> b!1612984 m!1930929))

(declare-fun m!1930931 () Bool)

(assert (=> b!1612984 m!1930931))

(declare-fun m!1930933 () Bool)

(assert (=> b!1612984 m!1930933))

(declare-fun m!1930935 () Bool)

(assert (=> b!1612984 m!1930935))

(declare-fun m!1930937 () Bool)

(assert (=> b!1612984 m!1930937))

(declare-fun m!1930939 () Bool)

(assert (=> b!1612988 m!1930939))

(declare-fun m!1930941 () Bool)

(assert (=> b!1612976 m!1930941))

(declare-fun m!1930943 () Bool)

(assert (=> b!1612981 m!1930943))

(declare-fun m!1930945 () Bool)

(assert (=> b!1612981 m!1930945))

(declare-fun m!1930947 () Bool)

(assert (=> b!1612986 m!1930947))

(declare-fun m!1930949 () Bool)

(assert (=> b!1612974 m!1930949))

(declare-fun m!1930951 () Bool)

(assert (=> b!1612965 m!1930951))

(declare-fun m!1930953 () Bool)

(assert (=> b!1612983 m!1930953))

(assert (=> b!1612983 m!1930953))

(declare-fun m!1930955 () Bool)

(assert (=> b!1612983 m!1930955))

(declare-fun m!1930957 () Bool)

(assert (=> b!1612983 m!1930957))

(declare-fun m!1930959 () Bool)

(assert (=> b!1612971 m!1930959))

(declare-fun m!1930961 () Bool)

(assert (=> b!1612971 m!1930961))

(declare-fun m!1930963 () Bool)

(assert (=> b!1612971 m!1930963))

(declare-fun m!1930965 () Bool)

(assert (=> b!1612971 m!1930965))

(declare-fun m!1930967 () Bool)

(assert (=> b!1612971 m!1930967))

(declare-fun m!1930969 () Bool)

(assert (=> b!1612971 m!1930969))

(declare-fun m!1930971 () Bool)

(assert (=> b!1612971 m!1930971))

(declare-fun m!1930973 () Bool)

(assert (=> b!1612971 m!1930973))

(declare-fun m!1930975 () Bool)

(assert (=> b!1612971 m!1930975))

(declare-fun m!1930977 () Bool)

(assert (=> b!1612971 m!1930977))

(assert (=> b!1612971 m!1930971))

(declare-fun m!1930979 () Bool)

(assert (=> b!1612966 m!1930979))

(declare-fun m!1930981 () Bool)

(assert (=> b!1612966 m!1930981))

(declare-fun m!1930983 () Bool)

(assert (=> b!1612989 m!1930983))

(assert (=> b!1612989 m!1930983))

(declare-fun m!1930985 () Bool)

(assert (=> b!1612989 m!1930985))

(assert (=> b!1612989 m!1930985))

(declare-fun m!1930987 () Bool)

(assert (=> b!1612989 m!1930987))

(declare-fun m!1930989 () Bool)

(assert (=> b!1612985 m!1930989))

(declare-fun m!1930991 () Bool)

(assert (=> b!1612985 m!1930991))

(declare-fun m!1930993 () Bool)

(assert (=> b!1612985 m!1930993))

(declare-fun m!1930995 () Bool)

(assert (=> b!1612985 m!1930995))

(declare-fun m!1930997 () Bool)

(assert (=> b!1612985 m!1930997))

(assert (=> b!1612985 m!1930993))

(assert (=> b!1612985 m!1930995))

(declare-fun m!1930999 () Bool)

(assert (=> b!1612982 m!1930999))

(check-sat (not b!1612969) (not b!1612975) (not b!1612976) (not b!1612990) (not b_next!44093) (not b!1612979) (not b!1612970) (not b!1612983) (not b!1612988) (not b!1612984) (not b!1612968) (not b!1612965) b_and!114369 (not b!1612973) (not b_next!44089) (not b!1612972) b_and!114365 (not b!1612966) b_and!114367 (not b!1612978) (not b_next!44087) (not b!1612989) (not b!1612982) (not b!1612964) (not b!1612981) (not b_next!44091) (not b!1612985) (not b!1612971) (not b!1612986) (not b!1612974) b_and!114371 (not b!1612977))
(check-sat b_and!114369 (not b_next!44089) b_and!114365 b_and!114367 (not b_next!44087) (not b_next!44093) (not b_next!44091) b_and!114371)
(get-model)

(declare-fun d!485434 () Bool)

(declare-fun lt!576243 () Bool)

(declare-fun isEmpty!10651 (List!17691) Bool)

(assert (=> d!485434 (= lt!576243 (isEmpty!10651 (list!6880 (_1!9966 (lex!1216 thiss!17113 rules!1846 (seqFromList!1956 lt!576221))))))))

(declare-fun isEmpty!10652 (Conc!5855) Bool)

(assert (=> d!485434 (= lt!576243 (isEmpty!10652 (c!262815 (_1!9966 (lex!1216 thiss!17113 rules!1846 (seqFromList!1956 lt!576221))))))))

(assert (=> d!485434 (= (isEmpty!10644 (_1!9966 (lex!1216 thiss!17113 rules!1846 (seqFromList!1956 lt!576221)))) lt!576243)))

(declare-fun bs!393937 () Bool)

(assert (= bs!393937 d!485434))

(declare-fun m!1931003 () Bool)

(assert (=> bs!393937 m!1931003))

(assert (=> bs!393937 m!1931003))

(declare-fun m!1931005 () Bool)

(assert (=> bs!393937 m!1931005))

(declare-fun m!1931007 () Bool)

(assert (=> bs!393937 m!1931007))

(assert (=> b!1612975 d!485434))

(declare-fun b!1613060 () Bool)

(declare-fun e!1034571 () Bool)

(declare-fun e!1034573 () Bool)

(assert (=> b!1613060 (= e!1034571 e!1034573)))

(declare-fun res!719473 () Bool)

(declare-fun lt!576313 () tuple2!17128)

(declare-fun size!14164 (BalanceConc!11652) Int)

(assert (=> b!1613060 (= res!719473 (< (size!14164 (_2!9966 lt!576313)) (size!14164 (seqFromList!1956 lt!576221))))))

(assert (=> b!1613060 (=> (not res!719473) (not e!1034573))))

(declare-fun d!485436 () Bool)

(declare-fun e!1034572 () Bool)

(assert (=> d!485436 e!1034572))

(declare-fun res!719474 () Bool)

(assert (=> d!485436 (=> (not res!719474) (not e!1034572))))

(assert (=> d!485436 (= res!719474 e!1034571)))

(declare-fun c!262830 () Bool)

(declare-fun size!14165 (BalanceConc!11654) Int)

(assert (=> d!485436 (= c!262830 (> (size!14165 (_1!9966 lt!576313)) 0))))

(declare-fun lexTailRecV2!532 (LexerInterface!2732 List!17692 BalanceConc!11652 BalanceConc!11652 BalanceConc!11652 BalanceConc!11654) tuple2!17128)

(assert (=> d!485436 (= lt!576313 (lexTailRecV2!532 thiss!17113 rules!1846 (seqFromList!1956 lt!576221) (BalanceConc!11653 Empty!5854) (seqFromList!1956 lt!576221) (BalanceConc!11655 Empty!5855)))))

(assert (=> d!485436 (= (lex!1216 thiss!17113 rules!1846 (seqFromList!1956 lt!576221)) lt!576313)))

(declare-fun b!1613061 () Bool)

(assert (=> b!1613061 (= e!1034573 (not (isEmpty!10644 (_1!9966 lt!576313))))))

(declare-fun b!1613062 () Bool)

(assert (=> b!1613062 (= e!1034571 (= (_2!9966 lt!576313) (seqFromList!1956 lt!576221)))))

(declare-fun b!1613063 () Bool)

(declare-datatypes ((tuple2!17134 0))(
  ( (tuple2!17135 (_1!9969 List!17691) (_2!9969 List!17690)) )
))
(declare-fun lexList!809 (LexerInterface!2732 List!17692 List!17690) tuple2!17134)

(assert (=> b!1613063 (= e!1034572 (= (list!6879 (_2!9966 lt!576313)) (_2!9969 (lexList!809 thiss!17113 rules!1846 (list!6879 (seqFromList!1956 lt!576221))))))))

(declare-fun b!1613064 () Bool)

(declare-fun res!719472 () Bool)

(assert (=> b!1613064 (=> (not res!719472) (not e!1034572))))

(assert (=> b!1613064 (= res!719472 (= (list!6880 (_1!9966 lt!576313)) (_1!9969 (lexList!809 thiss!17113 rules!1846 (list!6879 (seqFromList!1956 lt!576221))))))))

(assert (= (and d!485436 c!262830) b!1613060))

(assert (= (and d!485436 (not c!262830)) b!1613062))

(assert (= (and b!1613060 res!719473) b!1613061))

(assert (= (and d!485436 res!719474) b!1613064))

(assert (= (and b!1613064 res!719472) b!1613063))

(declare-fun m!1931131 () Bool)

(assert (=> b!1613064 m!1931131))

(assert (=> b!1613064 m!1930907))

(declare-fun m!1931133 () Bool)

(assert (=> b!1613064 m!1931133))

(assert (=> b!1613064 m!1931133))

(declare-fun m!1931135 () Bool)

(assert (=> b!1613064 m!1931135))

(declare-fun m!1931137 () Bool)

(assert (=> d!485436 m!1931137))

(assert (=> d!485436 m!1930907))

(assert (=> d!485436 m!1930907))

(declare-fun m!1931139 () Bool)

(assert (=> d!485436 m!1931139))

(declare-fun m!1931141 () Bool)

(assert (=> b!1613060 m!1931141))

(assert (=> b!1613060 m!1930907))

(declare-fun m!1931143 () Bool)

(assert (=> b!1613060 m!1931143))

(declare-fun m!1931145 () Bool)

(assert (=> b!1613061 m!1931145))

(declare-fun m!1931147 () Bool)

(assert (=> b!1613063 m!1931147))

(assert (=> b!1613063 m!1930907))

(assert (=> b!1613063 m!1931133))

(assert (=> b!1613063 m!1931133))

(assert (=> b!1613063 m!1931135))

(assert (=> b!1612975 d!485436))

(declare-fun d!485468 () Bool)

(declare-fun fromListB!854 (List!17690) BalanceConc!11652)

(assert (=> d!485468 (= (seqFromList!1956 lt!576221) (fromListB!854 lt!576221))))

(declare-fun bs!393944 () Bool)

(assert (= bs!393944 d!485468))

(declare-fun m!1931149 () Bool)

(assert (=> bs!393944 m!1931149))

(assert (=> b!1612975 d!485468))

(declare-fun b!1613075 () Bool)

(declare-fun res!719477 () Bool)

(declare-fun e!1034580 () Bool)

(assert (=> b!1613075 (=> res!719477 e!1034580)))

(assert (=> b!1613075 (= res!719477 (not ((_ is IntegerValue!9581) (value!98108 (h!23022 tokens!457)))))))

(declare-fun e!1034582 () Bool)

(assert (=> b!1613075 (= e!1034582 e!1034580)))

(declare-fun d!485470 () Bool)

(declare-fun c!262836 () Bool)

(assert (=> d!485470 (= c!262836 ((_ is IntegerValue!9579) (value!98108 (h!23022 tokens!457))))))

(declare-fun e!1034581 () Bool)

(assert (=> d!485470 (= (inv!21 (value!98108 (h!23022 tokens!457))) e!1034581)))

(declare-fun b!1613076 () Bool)

(declare-fun inv!15 (TokenValue!3193) Bool)

(assert (=> b!1613076 (= e!1034580 (inv!15 (value!98108 (h!23022 tokens!457))))))

(declare-fun b!1613077 () Bool)

(assert (=> b!1613077 (= e!1034581 e!1034582)))

(declare-fun c!262835 () Bool)

(assert (=> b!1613077 (= c!262835 ((_ is IntegerValue!9580) (value!98108 (h!23022 tokens!457))))))

(declare-fun b!1613078 () Bool)

(declare-fun inv!16 (TokenValue!3193) Bool)

(assert (=> b!1613078 (= e!1034581 (inv!16 (value!98108 (h!23022 tokens!457))))))

(declare-fun b!1613079 () Bool)

(declare-fun inv!17 (TokenValue!3193) Bool)

(assert (=> b!1613079 (= e!1034582 (inv!17 (value!98108 (h!23022 tokens!457))))))

(assert (= (and d!485470 c!262836) b!1613078))

(assert (= (and d!485470 (not c!262836)) b!1613077))

(assert (= (and b!1613077 c!262835) b!1613079))

(assert (= (and b!1613077 (not c!262835)) b!1613075))

(assert (= (and b!1613075 (not res!719477)) b!1613076))

(declare-fun m!1931151 () Bool)

(assert (=> b!1613076 m!1931151))

(declare-fun m!1931153 () Bool)

(assert (=> b!1613078 m!1931153))

(declare-fun m!1931155 () Bool)

(assert (=> b!1613079 m!1931155))

(assert (=> b!1612964 d!485470))

(declare-fun b!1613217 () Bool)

(declare-fun e!1034666 () Bool)

(assert (=> b!1613217 (= e!1034666 true)))

(declare-fun b!1613216 () Bool)

(declare-fun e!1034665 () Bool)

(assert (=> b!1613216 (= e!1034665 e!1034666)))

(declare-fun b!1613215 () Bool)

(declare-fun e!1034664 () Bool)

(assert (=> b!1613215 (= e!1034664 e!1034665)))

(declare-fun d!485472 () Bool)

(assert (=> d!485472 e!1034664))

(assert (= b!1613216 b!1613217))

(assert (= b!1613215 b!1613216))

(assert (= (and d!485472 ((_ is Cons!17622) rules!1846)) b!1613215))

(declare-fun order!10447 () Int)

(declare-fun order!10445 () Int)

(declare-fun lambda!67050 () Int)

(declare-fun dynLambda!7863 (Int Int) Int)

(declare-fun dynLambda!7864 (Int Int) Int)

(assert (=> b!1613217 (< (dynLambda!7863 order!10445 (toValue!4526 (transformation!3103 (h!23023 rules!1846)))) (dynLambda!7864 order!10447 lambda!67050))))

(declare-fun order!10449 () Int)

(declare-fun dynLambda!7865 (Int Int) Int)

(assert (=> b!1613217 (< (dynLambda!7865 order!10449 (toChars!4385 (transformation!3103 (h!23023 rules!1846)))) (dynLambda!7864 order!10447 lambda!67050))))

(assert (=> d!485472 true))

(declare-fun lt!576437 () Bool)

(declare-fun forall!4049 (List!17691 Int) Bool)

(assert (=> d!485472 (= lt!576437 (forall!4049 tokens!457 lambda!67050))))

(declare-fun e!1034656 () Bool)

(assert (=> d!485472 (= lt!576437 e!1034656)))

(declare-fun res!719562 () Bool)

(assert (=> d!485472 (=> res!719562 e!1034656)))

(assert (=> d!485472 (= res!719562 (not ((_ is Cons!17621) tokens!457)))))

(assert (=> d!485472 (not (isEmpty!10645 rules!1846))))

(assert (=> d!485472 (= (rulesProduceEachTokenIndividuallyList!934 thiss!17113 rules!1846 tokens!457) lt!576437)))

(declare-fun b!1613205 () Bool)

(declare-fun e!1034657 () Bool)

(assert (=> b!1613205 (= e!1034656 e!1034657)))

(declare-fun res!719563 () Bool)

(assert (=> b!1613205 (=> (not res!719563) (not e!1034657))))

(assert (=> b!1613205 (= res!719563 (rulesProduceIndividualToken!1384 thiss!17113 rules!1846 (h!23022 tokens!457)))))

(declare-fun b!1613206 () Bool)

(assert (=> b!1613206 (= e!1034657 (rulesProduceEachTokenIndividuallyList!934 thiss!17113 rules!1846 (t!148080 tokens!457)))))

(assert (= (and d!485472 (not res!719562)) b!1613205))

(assert (= (and b!1613205 res!719563) b!1613206))

(declare-fun m!1931441 () Bool)

(assert (=> d!485472 m!1931441))

(assert (=> d!485472 m!1930939))

(assert (=> b!1613205 m!1930925))

(declare-fun m!1931443 () Bool)

(assert (=> b!1613206 m!1931443))

(assert (=> b!1612965 d!485472))

(declare-fun d!485532 () Bool)

(assert (=> d!485532 (= (separableTokensPredicate!674 thiss!17113 (h!23022 tokens!457) (h!23022 (t!148080 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!471 (rulesRegex!493 thiss!17113 rules!1846) (++!4642 (charsOf!1752 (h!23022 tokens!457)) (singletonSeq!1484 (apply!4412 (charsOf!1752 (h!23022 (t!148080 tokens!457))) 0))))))))

(declare-fun bs!393960 () Bool)

(assert (= bs!393960 d!485532))

(assert (=> bs!393960 m!1930965))

(assert (=> bs!393960 m!1930885))

(assert (=> bs!393960 m!1930965))

(assert (=> bs!393960 m!1930893))

(declare-fun m!1931445 () Bool)

(assert (=> bs!393960 m!1931445))

(assert (=> bs!393960 m!1930895))

(assert (=> bs!393960 m!1930891))

(assert (=> bs!393960 m!1930893))

(assert (=> bs!393960 m!1930895))

(assert (=> bs!393960 m!1930891))

(assert (=> bs!393960 m!1930885))

(assert (=> bs!393960 m!1931445))

(declare-fun m!1931447 () Bool)

(assert (=> bs!393960 m!1931447))

(assert (=> b!1612986 d!485532))

(declare-fun b!1613242 () Bool)

(declare-fun e!1034678 () Bool)

(declare-fun e!1034677 () Bool)

(assert (=> b!1613242 (= e!1034678 e!1034677)))

(declare-fun res!719588 () Bool)

(assert (=> b!1613242 (=> (not res!719588) (not e!1034677))))

(declare-fun lt!576454 () Option!3209)

(assert (=> b!1613242 (= res!719588 (isDefined!2576 lt!576454))))

(declare-fun b!1613243 () Bool)

(declare-fun res!719583 () Bool)

(assert (=> b!1613243 (=> (not res!719583) (not e!1034677))))

(declare-fun matchR!1940 (Regex!4431 List!17690) Bool)

(declare-fun get!5051 (Option!3209) tuple2!17126)

(assert (=> b!1613243 (= res!719583 (matchR!1940 (regex!3103 (rule!4923 (_1!9965 (get!5051 lt!576454)))) (list!6879 (charsOf!1752 (_1!9965 (get!5051 lt!576454))))))))

(declare-fun b!1613244 () Bool)

(declare-fun e!1034679 () Option!3209)

(declare-fun call!104799 () Option!3209)

(assert (=> b!1613244 (= e!1034679 call!104799)))

(declare-fun b!1613245 () Bool)

(declare-fun lt!576450 () Option!3209)

(declare-fun lt!576452 () Option!3209)

(assert (=> b!1613245 (= e!1034679 (ite (and ((_ is None!3208) lt!576450) ((_ is None!3208) lt!576452)) None!3208 (ite ((_ is None!3208) lt!576452) lt!576450 (ite ((_ is None!3208) lt!576450) lt!576452 (ite (>= (size!14160 (_1!9965 (v!24179 lt!576450))) (size!14160 (_1!9965 (v!24179 lt!576452)))) lt!576450 lt!576452)))))))

(assert (=> b!1613245 (= lt!576450 call!104799)))

(assert (=> b!1613245 (= lt!576452 (maxPrefix!1296 thiss!17113 (t!148081 rules!1846) lt!576225))))

(declare-fun b!1613246 () Bool)

(declare-fun res!719582 () Bool)

(assert (=> b!1613246 (=> (not res!719582) (not e!1034677))))

(declare-fun apply!4417 (TokenValueInjection!6046 BalanceConc!11652) TokenValue!3193)

(assert (=> b!1613246 (= res!719582 (= (value!98108 (_1!9965 (get!5051 lt!576454))) (apply!4417 (transformation!3103 (rule!4923 (_1!9965 (get!5051 lt!576454)))) (seqFromList!1956 (originalCharacters!3917 (_1!9965 (get!5051 lt!576454)))))))))

(declare-fun b!1613247 () Bool)

(declare-fun res!719585 () Bool)

(assert (=> b!1613247 (=> (not res!719585) (not e!1034677))))

(assert (=> b!1613247 (= res!719585 (= (list!6879 (charsOf!1752 (_1!9965 (get!5051 lt!576454)))) (originalCharacters!3917 (_1!9965 (get!5051 lt!576454)))))))

(declare-fun b!1613248 () Bool)

(declare-fun res!719584 () Bool)

(assert (=> b!1613248 (=> (not res!719584) (not e!1034677))))

(assert (=> b!1613248 (= res!719584 (= (++!4641 (list!6879 (charsOf!1752 (_1!9965 (get!5051 lt!576454)))) (_2!9965 (get!5051 lt!576454))) lt!576225))))

(declare-fun d!485534 () Bool)

(assert (=> d!485534 e!1034678))

(declare-fun res!719586 () Bool)

(assert (=> d!485534 (=> res!719586 e!1034678)))

(declare-fun isEmpty!10654 (Option!3209) Bool)

(assert (=> d!485534 (= res!719586 (isEmpty!10654 lt!576454))))

(assert (=> d!485534 (= lt!576454 e!1034679)))

(declare-fun c!262863 () Bool)

(assert (=> d!485534 (= c!262863 (and ((_ is Cons!17622) rules!1846) ((_ is Nil!17622) (t!148081 rules!1846))))))

(declare-fun lt!576453 () Unit!28303)

(declare-fun lt!576451 () Unit!28303)

(assert (=> d!485534 (= lt!576453 lt!576451)))

(assert (=> d!485534 (isPrefix!1363 lt!576225 lt!576225)))

(declare-fun lemmaIsPrefixRefl!940 (List!17690 List!17690) Unit!28303)

(assert (=> d!485534 (= lt!576451 (lemmaIsPrefixRefl!940 lt!576225 lt!576225))))

(assert (=> d!485534 (rulesValidInductive!946 thiss!17113 rules!1846)))

(assert (=> d!485534 (= (maxPrefix!1296 thiss!17113 rules!1846 lt!576225) lt!576454)))

(declare-fun b!1613249 () Bool)

(declare-fun contains!3088 (List!17692 Rule!6006) Bool)

(assert (=> b!1613249 (= e!1034677 (contains!3088 rules!1846 (rule!4923 (_1!9965 (get!5051 lt!576454)))))))

(declare-fun b!1613250 () Bool)

(declare-fun res!719587 () Bool)

(assert (=> b!1613250 (=> (not res!719587) (not e!1034677))))

(declare-fun size!14166 (List!17690) Int)

(assert (=> b!1613250 (= res!719587 (< (size!14166 (_2!9965 (get!5051 lt!576454))) (size!14166 lt!576225)))))

(declare-fun bm!104794 () Bool)

(declare-fun maxPrefixOneRule!755 (LexerInterface!2732 Rule!6006 List!17690) Option!3209)

(assert (=> bm!104794 (= call!104799 (maxPrefixOneRule!755 thiss!17113 (h!23023 rules!1846) lt!576225))))

(assert (= (and d!485534 c!262863) b!1613244))

(assert (= (and d!485534 (not c!262863)) b!1613245))

(assert (= (or b!1613244 b!1613245) bm!104794))

(assert (= (and d!485534 (not res!719586)) b!1613242))

(assert (= (and b!1613242 res!719588) b!1613247))

(assert (= (and b!1613247 res!719585) b!1613250))

(assert (= (and b!1613250 res!719587) b!1613248))

(assert (= (and b!1613248 res!719584) b!1613246))

(assert (= (and b!1613246 res!719582) b!1613243))

(assert (= (and b!1613243 res!719583) b!1613249))

(declare-fun m!1931449 () Bool)

(assert (=> b!1613243 m!1931449))

(declare-fun m!1931451 () Bool)

(assert (=> b!1613243 m!1931451))

(assert (=> b!1613243 m!1931451))

(declare-fun m!1931453 () Bool)

(assert (=> b!1613243 m!1931453))

(assert (=> b!1613243 m!1931453))

(declare-fun m!1931455 () Bool)

(assert (=> b!1613243 m!1931455))

(declare-fun m!1931457 () Bool)

(assert (=> b!1613245 m!1931457))

(declare-fun m!1931459 () Bool)

(assert (=> bm!104794 m!1931459))

(assert (=> b!1613250 m!1931449))

(declare-fun m!1931461 () Bool)

(assert (=> b!1613250 m!1931461))

(declare-fun m!1931463 () Bool)

(assert (=> b!1613250 m!1931463))

(assert (=> b!1613246 m!1931449))

(declare-fun m!1931465 () Bool)

(assert (=> b!1613246 m!1931465))

(assert (=> b!1613246 m!1931465))

(declare-fun m!1931467 () Bool)

(assert (=> b!1613246 m!1931467))

(declare-fun m!1931469 () Bool)

(assert (=> b!1613242 m!1931469))

(assert (=> b!1613247 m!1931449))

(assert (=> b!1613247 m!1931451))

(assert (=> b!1613247 m!1931451))

(assert (=> b!1613247 m!1931453))

(assert (=> b!1613249 m!1931449))

(declare-fun m!1931471 () Bool)

(assert (=> b!1613249 m!1931471))

(declare-fun m!1931473 () Bool)

(assert (=> d!485534 m!1931473))

(declare-fun m!1931475 () Bool)

(assert (=> d!485534 m!1931475))

(declare-fun m!1931477 () Bool)

(assert (=> d!485534 m!1931477))

(assert (=> d!485534 m!1930915))

(assert (=> b!1613248 m!1931449))

(assert (=> b!1613248 m!1931451))

(assert (=> b!1613248 m!1931451))

(assert (=> b!1613248 m!1931453))

(assert (=> b!1613248 m!1931453))

(declare-fun m!1931479 () Bool)

(assert (=> b!1613248 m!1931479))

(assert (=> b!1612984 d!485534))

(declare-fun d!485536 () Bool)

(declare-fun lt!576473 () BalanceConc!11652)

(declare-fun printListTailRec!335 (LexerInterface!2732 List!17691 List!17690) List!17690)

(declare-fun dropList!567 (BalanceConc!11654 Int) List!17691)

(assert (=> d!485536 (= (list!6879 lt!576473) (printListTailRec!335 thiss!17113 (dropList!567 lt!576223 0) (list!6879 (BalanceConc!11653 Empty!5854))))))

(declare-fun e!1034684 () BalanceConc!11652)

(assert (=> d!485536 (= lt!576473 e!1034684)))

(declare-fun c!262866 () Bool)

(assert (=> d!485536 (= c!262866 (>= 0 (size!14165 lt!576223)))))

(declare-fun e!1034685 () Bool)

(assert (=> d!485536 e!1034685))

(declare-fun res!719591 () Bool)

(assert (=> d!485536 (=> (not res!719591) (not e!1034685))))

(assert (=> d!485536 (= res!719591 (>= 0 0))))

(assert (=> d!485536 (= (printTailRec!785 thiss!17113 lt!576223 0 (BalanceConc!11653 Empty!5854)) lt!576473)))

(declare-fun b!1613257 () Bool)

(assert (=> b!1613257 (= e!1034685 (<= 0 (size!14165 lt!576223)))))

(declare-fun b!1613258 () Bool)

(assert (=> b!1613258 (= e!1034684 (BalanceConc!11653 Empty!5854))))

(declare-fun b!1613259 () Bool)

(declare-fun apply!4419 (BalanceConc!11654 Int) Token!5772)

(assert (=> b!1613259 (= e!1034684 (printTailRec!785 thiss!17113 lt!576223 (+ 0 1) (++!4642 (BalanceConc!11653 Empty!5854) (charsOf!1752 (apply!4419 lt!576223 0)))))))

(declare-fun lt!576472 () List!17691)

(assert (=> b!1613259 (= lt!576472 (list!6880 lt!576223))))

(declare-fun lt!576474 () Unit!28303)

(declare-fun lemmaDropApply!542 (List!17691 Int) Unit!28303)

(assert (=> b!1613259 (= lt!576474 (lemmaDropApply!542 lt!576472 0))))

(declare-fun head!3321 (List!17691) Token!5772)

(declare-fun drop!850 (List!17691 Int) List!17691)

(declare-fun apply!4420 (List!17691 Int) Token!5772)

(assert (=> b!1613259 (= (head!3321 (drop!850 lt!576472 0)) (apply!4420 lt!576472 0))))

(declare-fun lt!576470 () Unit!28303)

(assert (=> b!1613259 (= lt!576470 lt!576474)))

(declare-fun lt!576469 () List!17691)

(assert (=> b!1613259 (= lt!576469 (list!6880 lt!576223))))

(declare-fun lt!576475 () Unit!28303)

(declare-fun lemmaDropTail!522 (List!17691 Int) Unit!28303)

(assert (=> b!1613259 (= lt!576475 (lemmaDropTail!522 lt!576469 0))))

(declare-fun tail!2321 (List!17691) List!17691)

(assert (=> b!1613259 (= (tail!2321 (drop!850 lt!576469 0)) (drop!850 lt!576469 (+ 0 1)))))

(declare-fun lt!576471 () Unit!28303)

(assert (=> b!1613259 (= lt!576471 lt!576475)))

(assert (= (and d!485536 res!719591) b!1613257))

(assert (= (and d!485536 c!262866) b!1613258))

(assert (= (and d!485536 (not c!262866)) b!1613259))

(declare-fun m!1931481 () Bool)

(assert (=> d!485536 m!1931481))

(declare-fun m!1931483 () Bool)

(assert (=> d!485536 m!1931483))

(declare-fun m!1931485 () Bool)

(assert (=> d!485536 m!1931485))

(assert (=> d!485536 m!1931481))

(assert (=> d!485536 m!1931485))

(declare-fun m!1931487 () Bool)

(assert (=> d!485536 m!1931487))

(declare-fun m!1931489 () Bool)

(assert (=> d!485536 m!1931489))

(assert (=> b!1613257 m!1931483))

(declare-fun m!1931491 () Bool)

(assert (=> b!1613259 m!1931491))

(declare-fun m!1931493 () Bool)

(assert (=> b!1613259 m!1931493))

(declare-fun m!1931495 () Bool)

(assert (=> b!1613259 m!1931495))

(declare-fun m!1931497 () Bool)

(assert (=> b!1613259 m!1931497))

(declare-fun m!1931499 () Bool)

(assert (=> b!1613259 m!1931499))

(declare-fun m!1931501 () Bool)

(assert (=> b!1613259 m!1931501))

(declare-fun m!1931503 () Bool)

(assert (=> b!1613259 m!1931503))

(assert (=> b!1613259 m!1931493))

(assert (=> b!1613259 m!1931499))

(assert (=> b!1613259 m!1931497))

(declare-fun m!1931505 () Bool)

(assert (=> b!1613259 m!1931505))

(declare-fun m!1931507 () Bool)

(assert (=> b!1613259 m!1931507))

(declare-fun m!1931509 () Bool)

(assert (=> b!1613259 m!1931509))

(assert (=> b!1613259 m!1931491))

(assert (=> b!1613259 m!1931503))

(declare-fun m!1931511 () Bool)

(assert (=> b!1613259 m!1931511))

(declare-fun m!1931513 () Bool)

(assert (=> b!1613259 m!1931513))

(declare-fun m!1931515 () Bool)

(assert (=> b!1613259 m!1931515))

(assert (=> b!1612984 d!485536))

(declare-fun d!485538 () Bool)

(declare-fun lt!576478 () BalanceConc!11652)

(assert (=> d!485538 (= (list!6879 lt!576478) (printList!847 thiss!17113 (list!6880 lt!576223)))))

(assert (=> d!485538 (= lt!576478 (printTailRec!785 thiss!17113 lt!576223 0 (BalanceConc!11653 Empty!5854)))))

(assert (=> d!485538 (= (print!1263 thiss!17113 lt!576223) lt!576478)))

(declare-fun bs!393961 () Bool)

(assert (= bs!393961 d!485538))

(declare-fun m!1931517 () Bool)

(assert (=> bs!393961 m!1931517))

(assert (=> bs!393961 m!1931513))

(assert (=> bs!393961 m!1931513))

(declare-fun m!1931519 () Bool)

(assert (=> bs!393961 m!1931519))

(assert (=> bs!393961 m!1930927))

(assert (=> b!1612984 d!485538))

(declare-fun d!485540 () Bool)

(declare-fun list!6882 (Conc!5854) List!17690)

(assert (=> d!485540 (= (list!6879 lt!576239) (list!6882 (c!262813 lt!576239)))))

(declare-fun bs!393962 () Bool)

(assert (= bs!393962 d!485540))

(declare-fun m!1931521 () Bool)

(assert (=> bs!393962 m!1931521))

(assert (=> b!1612984 d!485540))

(declare-fun d!485542 () Bool)

(declare-fun c!262869 () Bool)

(assert (=> d!485542 (= c!262869 ((_ is Cons!17621) (Cons!17621 (h!23022 tokens!457) Nil!17621)))))

(declare-fun e!1034688 () List!17690)

(assert (=> d!485542 (= (printList!847 thiss!17113 (Cons!17621 (h!23022 tokens!457) Nil!17621)) e!1034688)))

(declare-fun b!1613264 () Bool)

(assert (=> b!1613264 (= e!1034688 (++!4641 (list!6879 (charsOf!1752 (h!23022 (Cons!17621 (h!23022 tokens!457) Nil!17621)))) (printList!847 thiss!17113 (t!148080 (Cons!17621 (h!23022 tokens!457) Nil!17621)))))))

(declare-fun b!1613265 () Bool)

(assert (=> b!1613265 (= e!1034688 Nil!17620)))

(assert (= (and d!485542 c!262869) b!1613264))

(assert (= (and d!485542 (not c!262869)) b!1613265))

(declare-fun m!1931523 () Bool)

(assert (=> b!1613264 m!1931523))

(assert (=> b!1613264 m!1931523))

(declare-fun m!1931525 () Bool)

(assert (=> b!1613264 m!1931525))

(declare-fun m!1931527 () Bool)

(assert (=> b!1613264 m!1931527))

(assert (=> b!1613264 m!1931525))

(assert (=> b!1613264 m!1931527))

(declare-fun m!1931529 () Bool)

(assert (=> b!1613264 m!1931529))

(assert (=> b!1612984 d!485542))

(declare-fun d!485544 () Bool)

(declare-fun e!1034691 () Bool)

(assert (=> d!485544 e!1034691))

(declare-fun res!719594 () Bool)

(assert (=> d!485544 (=> (not res!719594) (not e!1034691))))

(declare-fun lt!576481 () BalanceConc!11654)

(assert (=> d!485544 (= res!719594 (= (list!6880 lt!576481) (Cons!17621 (h!23022 tokens!457) Nil!17621)))))

(declare-fun singleton!629 (Token!5772) BalanceConc!11654)

(assert (=> d!485544 (= lt!576481 (singleton!629 (h!23022 tokens!457)))))

(assert (=> d!485544 (= (singletonSeq!1485 (h!23022 tokens!457)) lt!576481)))

(declare-fun b!1613268 () Bool)

(declare-fun isBalanced!1749 (Conc!5855) Bool)

(assert (=> b!1613268 (= e!1034691 (isBalanced!1749 (c!262815 lt!576481)))))

(assert (= (and d!485544 res!719594) b!1613268))

(declare-fun m!1931531 () Bool)

(assert (=> d!485544 m!1931531))

(declare-fun m!1931533 () Bool)

(assert (=> d!485544 m!1931533))

(declare-fun m!1931535 () Bool)

(assert (=> b!1613268 m!1931535))

(assert (=> b!1612984 d!485544))

(declare-fun d!485546 () Bool)

(declare-fun list!6884 (Conc!5855) List!17691)

(assert (=> d!485546 (= (list!6880 lt!576236) (list!6884 (c!262815 lt!576236)))))

(declare-fun bs!393963 () Bool)

(assert (= bs!393963 d!485546))

(declare-fun m!1931537 () Bool)

(assert (=> bs!393963 m!1931537))

(assert (=> b!1612985 d!485546))

(declare-fun d!485548 () Bool)

(declare-fun e!1034694 () Bool)

(assert (=> d!485548 e!1034694))

(declare-fun res!719597 () Bool)

(assert (=> d!485548 (=> (not res!719597) (not e!1034694))))

(declare-fun prepend!611 (Conc!5855 Token!5772) Conc!5855)

(assert (=> d!485548 (= res!719597 (isBalanced!1749 (prepend!611 (c!262815 (seqFromList!1955 (t!148080 (t!148080 tokens!457)))) (h!23022 (t!148080 tokens!457)))))))

(declare-fun lt!576484 () BalanceConc!11654)

(assert (=> d!485548 (= lt!576484 (BalanceConc!11655 (prepend!611 (c!262815 (seqFromList!1955 (t!148080 (t!148080 tokens!457)))) (h!23022 (t!148080 tokens!457)))))))

(assert (=> d!485548 (= (prepend!609 (seqFromList!1955 (t!148080 (t!148080 tokens!457))) (h!23022 (t!148080 tokens!457))) lt!576484)))

(declare-fun b!1613271 () Bool)

(assert (=> b!1613271 (= e!1034694 (= (list!6880 lt!576484) (Cons!17621 (h!23022 (t!148080 tokens!457)) (list!6880 (seqFromList!1955 (t!148080 (t!148080 tokens!457)))))))))

(assert (= (and d!485548 res!719597) b!1613271))

(declare-fun m!1931539 () Bool)

(assert (=> d!485548 m!1931539))

(assert (=> d!485548 m!1931539))

(declare-fun m!1931541 () Bool)

(assert (=> d!485548 m!1931541))

(declare-fun m!1931543 () Bool)

(assert (=> b!1613271 m!1931543))

(assert (=> b!1613271 m!1930993))

(declare-fun m!1931545 () Bool)

(assert (=> b!1613271 m!1931545))

(assert (=> b!1612985 d!485548))

(declare-fun d!485550 () Bool)

(assert (=> d!485550 (= (list!6880 (prepend!609 (seqFromList!1955 (t!148080 (t!148080 tokens!457))) (h!23022 (t!148080 tokens!457)))) (list!6884 (c!262815 (prepend!609 (seqFromList!1955 (t!148080 (t!148080 tokens!457))) (h!23022 (t!148080 tokens!457))))))))

(declare-fun bs!393964 () Bool)

(assert (= bs!393964 d!485550))

(declare-fun m!1931547 () Bool)

(assert (=> bs!393964 m!1931547))

(assert (=> b!1612985 d!485550))

(declare-fun d!485552 () Bool)

(declare-fun fromListB!855 (List!17691) BalanceConc!11654)

(assert (=> d!485552 (= (seqFromList!1955 (t!148080 (t!148080 tokens!457))) (fromListB!855 (t!148080 (t!148080 tokens!457))))))

(declare-fun bs!393965 () Bool)

(assert (= bs!393965 d!485552))

(declare-fun m!1931549 () Bool)

(assert (=> bs!393965 m!1931549))

(assert (=> b!1612985 d!485552))

(declare-fun d!485554 () Bool)

(assert (=> d!485554 (= (list!6880 (_1!9966 lt!576228)) (list!6880 (prepend!609 (seqFromList!1955 (t!148080 (t!148080 tokens!457))) (h!23022 (t!148080 tokens!457)))))))

(declare-fun lt!576487 () Unit!28303)

(declare-fun choose!9708 (Token!5772 List!17691 BalanceConc!11654) Unit!28303)

(assert (=> d!485554 (= lt!576487 (choose!9708 (h!23022 (t!148080 tokens!457)) (t!148080 (t!148080 tokens!457)) (_1!9966 lt!576228)))))

(declare-fun $colon$colon!307 (List!17691 Token!5772) List!17691)

(assert (=> d!485554 (= (list!6880 (_1!9966 lt!576228)) (list!6880 (seqFromList!1955 ($colon$colon!307 (t!148080 (t!148080 tokens!457)) (h!23022 (t!148080 tokens!457))))))))

(assert (=> d!485554 (= (seqFromListBHdTlConstructive!180 (h!23022 (t!148080 tokens!457)) (t!148080 (t!148080 tokens!457)) (_1!9966 lt!576228)) lt!576487)))

(declare-fun bs!393966 () Bool)

(assert (= bs!393966 d!485554))

(assert (=> bs!393966 m!1930995))

(assert (=> bs!393966 m!1930997))

(assert (=> bs!393966 m!1930993))

(assert (=> bs!393966 m!1930995))

(declare-fun m!1931551 () Bool)

(assert (=> bs!393966 m!1931551))

(declare-fun m!1931553 () Bool)

(assert (=> bs!393966 m!1931553))

(assert (=> bs!393966 m!1930897))

(assert (=> bs!393966 m!1930993))

(assert (=> bs!393966 m!1931553))

(declare-fun m!1931555 () Bool)

(assert (=> bs!393966 m!1931555))

(assert (=> bs!393966 m!1931551))

(declare-fun m!1931557 () Bool)

(assert (=> bs!393966 m!1931557))

(assert (=> b!1612985 d!485554))

(declare-fun d!485556 () Bool)

(assert (=> d!485556 (= (head!3318 (originalCharacters!3917 (h!23022 (t!148080 tokens!457)))) (h!23021 (originalCharacters!3917 (h!23022 (t!148080 tokens!457)))))))

(assert (=> b!1612974 d!485556))

(declare-fun d!485558 () Bool)

(declare-fun c!262873 () Bool)

(declare-fun isEmpty!10655 (List!17690) Bool)

(assert (=> d!485558 (= c!262873 (isEmpty!10655 (++!4641 lt!576221 lt!576232)))))

(declare-fun e!1034697 () Bool)

(assert (=> d!485558 (= (prefixMatch!366 lt!576222 (++!4641 lt!576221 lt!576232)) e!1034697)))

(declare-fun b!1613276 () Bool)

(declare-fun lostCause!418 (Regex!4431) Bool)

(assert (=> b!1613276 (= e!1034697 (not (lostCause!418 lt!576222)))))

(declare-fun b!1613277 () Bool)

(declare-fun derivativeStep!1062 (Regex!4431 C!9036) Regex!4431)

(declare-fun tail!2322 (List!17690) List!17690)

(assert (=> b!1613277 (= e!1034697 (prefixMatch!366 (derivativeStep!1062 lt!576222 (head!3318 (++!4641 lt!576221 lt!576232))) (tail!2322 (++!4641 lt!576221 lt!576232))))))

(assert (= (and d!485558 c!262873) b!1613276))

(assert (= (and d!485558 (not c!262873)) b!1613277))

(assert (=> d!485558 m!1930953))

(declare-fun m!1931559 () Bool)

(assert (=> d!485558 m!1931559))

(declare-fun m!1931561 () Bool)

(assert (=> b!1613276 m!1931561))

(assert (=> b!1613277 m!1930953))

(declare-fun m!1931563 () Bool)

(assert (=> b!1613277 m!1931563))

(assert (=> b!1613277 m!1931563))

(declare-fun m!1931565 () Bool)

(assert (=> b!1613277 m!1931565))

(assert (=> b!1613277 m!1930953))

(declare-fun m!1931567 () Bool)

(assert (=> b!1613277 m!1931567))

(assert (=> b!1613277 m!1931565))

(assert (=> b!1613277 m!1931567))

(declare-fun m!1931569 () Bool)

(assert (=> b!1613277 m!1931569))

(assert (=> b!1612983 d!485558))

(declare-fun b!1613286 () Bool)

(declare-fun e!1034703 () List!17690)

(assert (=> b!1613286 (= e!1034703 lt!576232)))

(declare-fun e!1034702 () Bool)

(declare-fun lt!576490 () List!17690)

(declare-fun b!1613289 () Bool)

(assert (=> b!1613289 (= e!1034702 (or (not (= lt!576232 Nil!17620)) (= lt!576490 lt!576221)))))

(declare-fun b!1613288 () Bool)

(declare-fun res!719602 () Bool)

(assert (=> b!1613288 (=> (not res!719602) (not e!1034702))))

(assert (=> b!1613288 (= res!719602 (= (size!14166 lt!576490) (+ (size!14166 lt!576221) (size!14166 lt!576232))))))

(declare-fun b!1613287 () Bool)

(assert (=> b!1613287 (= e!1034703 (Cons!17620 (h!23021 lt!576221) (++!4641 (t!148079 lt!576221) lt!576232)))))

(declare-fun d!485560 () Bool)

(assert (=> d!485560 e!1034702))

(declare-fun res!719603 () Bool)

(assert (=> d!485560 (=> (not res!719603) (not e!1034702))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2445 (List!17690) (InoxSet C!9036))

(assert (=> d!485560 (= res!719603 (= (content!2445 lt!576490) ((_ map or) (content!2445 lt!576221) (content!2445 lt!576232))))))

(assert (=> d!485560 (= lt!576490 e!1034703)))

(declare-fun c!262876 () Bool)

(assert (=> d!485560 (= c!262876 ((_ is Nil!17620) lt!576221))))

(assert (=> d!485560 (= (++!4641 lt!576221 lt!576232) lt!576490)))

(assert (= (and d!485560 c!262876) b!1613286))

(assert (= (and d!485560 (not c!262876)) b!1613287))

(assert (= (and d!485560 res!719603) b!1613288))

(assert (= (and b!1613288 res!719602) b!1613289))

(declare-fun m!1931571 () Bool)

(assert (=> b!1613288 m!1931571))

(declare-fun m!1931573 () Bool)

(assert (=> b!1613288 m!1931573))

(declare-fun m!1931575 () Bool)

(assert (=> b!1613288 m!1931575))

(declare-fun m!1931577 () Bool)

(assert (=> b!1613287 m!1931577))

(declare-fun m!1931579 () Bool)

(assert (=> d!485560 m!1931579))

(declare-fun m!1931581 () Bool)

(assert (=> d!485560 m!1931581))

(declare-fun m!1931583 () Bool)

(assert (=> d!485560 m!1931583))

(assert (=> b!1612983 d!485560))

(declare-fun d!485562 () Bool)

(assert (=> d!485562 (= (list!6879 lt!576240) (list!6882 (c!262813 lt!576240)))))

(declare-fun bs!393967 () Bool)

(assert (= bs!393967 d!485562))

(declare-fun m!1931585 () Bool)

(assert (=> bs!393967 m!1931585))

(assert (=> b!1612983 d!485562))

(declare-fun d!485564 () Bool)

(declare-fun e!1034706 () Bool)

(assert (=> d!485564 e!1034706))

(declare-fun res!719606 () Bool)

(assert (=> d!485564 (=> (not res!719606) (not e!1034706))))

(declare-fun lt!576493 () BalanceConc!11652)

(assert (=> d!485564 (= res!719606 (= (list!6879 lt!576493) (Cons!17620 (apply!4412 (charsOf!1752 (h!23022 (t!148080 tokens!457))) 0) Nil!17620)))))

(declare-fun singleton!630 (C!9036) BalanceConc!11652)

(assert (=> d!485564 (= lt!576493 (singleton!630 (apply!4412 (charsOf!1752 (h!23022 (t!148080 tokens!457))) 0)))))

(assert (=> d!485564 (= (singletonSeq!1484 (apply!4412 (charsOf!1752 (h!23022 (t!148080 tokens!457))) 0)) lt!576493)))

(declare-fun b!1613292 () Bool)

(declare-fun isBalanced!1750 (Conc!5854) Bool)

(assert (=> b!1613292 (= e!1034706 (isBalanced!1750 (c!262813 lt!576493)))))

(assert (= (and d!485564 res!719606) b!1613292))

(declare-fun m!1931587 () Bool)

(assert (=> d!485564 m!1931587))

(assert (=> d!485564 m!1930891))

(declare-fun m!1931589 () Bool)

(assert (=> d!485564 m!1931589))

(declare-fun m!1931591 () Bool)

(assert (=> b!1613292 m!1931591))

(assert (=> b!1612972 d!485564))

(declare-fun b!1613303 () Bool)

(declare-fun res!719615 () Bool)

(declare-fun e!1034709 () Bool)

(assert (=> b!1613303 (=> (not res!719615) (not e!1034709))))

(declare-fun height!883 (Conc!5854) Int)

(declare-fun ++!4644 (Conc!5854 Conc!5854) Conc!5854)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1613303 (= res!719615 (>= (height!883 (++!4644 (c!262813 lt!576229) (c!262813 lt!576240))) (max!0 (height!883 (c!262813 lt!576229)) (height!883 (c!262813 lt!576240)))))))

(declare-fun lt!576496 () BalanceConc!11652)

(declare-fun b!1613304 () Bool)

(assert (=> b!1613304 (= e!1034709 (= (list!6879 lt!576496) (++!4641 (list!6879 lt!576229) (list!6879 lt!576240))))))

(declare-fun b!1613302 () Bool)

(declare-fun res!719616 () Bool)

(assert (=> b!1613302 (=> (not res!719616) (not e!1034709))))

(assert (=> b!1613302 (= res!719616 (<= (height!883 (++!4644 (c!262813 lt!576229) (c!262813 lt!576240))) (+ (max!0 (height!883 (c!262813 lt!576229)) (height!883 (c!262813 lt!576240))) 1)))))

(declare-fun d!485566 () Bool)

(assert (=> d!485566 e!1034709))

(declare-fun res!719618 () Bool)

(assert (=> d!485566 (=> (not res!719618) (not e!1034709))))

(declare-fun appendAssocInst!415 (Conc!5854 Conc!5854) Bool)

(assert (=> d!485566 (= res!719618 (appendAssocInst!415 (c!262813 lt!576229) (c!262813 lt!576240)))))

(assert (=> d!485566 (= lt!576496 (BalanceConc!11653 (++!4644 (c!262813 lt!576229) (c!262813 lt!576240))))))

(assert (=> d!485566 (= (++!4642 lt!576229 lt!576240) lt!576496)))

(declare-fun b!1613301 () Bool)

(declare-fun res!719617 () Bool)

(assert (=> b!1613301 (=> (not res!719617) (not e!1034709))))

(assert (=> b!1613301 (= res!719617 (isBalanced!1750 (++!4644 (c!262813 lt!576229) (c!262813 lt!576240))))))

(assert (= (and d!485566 res!719618) b!1613301))

(assert (= (and b!1613301 res!719617) b!1613302))

(assert (= (and b!1613302 res!719616) b!1613303))

(assert (= (and b!1613303 res!719615) b!1613304))

(declare-fun m!1931593 () Bool)

(assert (=> d!485566 m!1931593))

(declare-fun m!1931595 () Bool)

(assert (=> d!485566 m!1931595))

(declare-fun m!1931597 () Bool)

(assert (=> b!1613302 m!1931597))

(declare-fun m!1931599 () Bool)

(assert (=> b!1613302 m!1931599))

(declare-fun m!1931601 () Bool)

(assert (=> b!1613302 m!1931601))

(assert (=> b!1613302 m!1931595))

(assert (=> b!1613302 m!1931599))

(assert (=> b!1613302 m!1931597))

(assert (=> b!1613302 m!1931595))

(declare-fun m!1931603 () Bool)

(assert (=> b!1613302 m!1931603))

(declare-fun m!1931605 () Bool)

(assert (=> b!1613304 m!1931605))

(assert (=> b!1613304 m!1930977))

(assert (=> b!1613304 m!1930957))

(assert (=> b!1613304 m!1930977))

(assert (=> b!1613304 m!1930957))

(declare-fun m!1931607 () Bool)

(assert (=> b!1613304 m!1931607))

(assert (=> b!1613301 m!1931595))

(assert (=> b!1613301 m!1931595))

(declare-fun m!1931609 () Bool)

(assert (=> b!1613301 m!1931609))

(assert (=> b!1613303 m!1931597))

(assert (=> b!1613303 m!1931599))

(assert (=> b!1613303 m!1931601))

(assert (=> b!1613303 m!1931595))

(assert (=> b!1613303 m!1931599))

(assert (=> b!1613303 m!1931597))

(assert (=> b!1613303 m!1931595))

(assert (=> b!1613303 m!1931603))

(assert (=> b!1612972 d!485566))

(declare-fun d!485568 () Bool)

(declare-fun lt!576499 () Unit!28303)

(declare-fun lemma!219 (List!17692 LexerInterface!2732 List!17692) Unit!28303)

(assert (=> d!485568 (= lt!576499 (lemma!219 rules!1846 thiss!17113 rules!1846))))

(declare-fun lambda!67053 () Int)

(declare-datatypes ((List!17696 0))(
  ( (Nil!17626) (Cons!17626 (h!23027 Regex!4431) (t!148127 List!17696)) )
))
(declare-fun generalisedUnion!227 (List!17696) Regex!4431)

(declare-fun map!3650 (List!17692 Int) List!17696)

(assert (=> d!485568 (= (rulesRegex!493 thiss!17113 rules!1846) (generalisedUnion!227 (map!3650 rules!1846 lambda!67053)))))

(declare-fun bs!393968 () Bool)

(assert (= bs!393968 d!485568))

(declare-fun m!1931611 () Bool)

(assert (=> bs!393968 m!1931611))

(declare-fun m!1931613 () Bool)

(assert (=> bs!393968 m!1931613))

(assert (=> bs!393968 m!1931613))

(declare-fun m!1931615 () Bool)

(assert (=> bs!393968 m!1931615))

(assert (=> b!1612972 d!485568))

(declare-fun d!485570 () Bool)

(declare-fun lt!576502 () BalanceConc!11652)

(assert (=> d!485570 (= (list!6879 lt!576502) (originalCharacters!3917 (h!23022 (t!148080 tokens!457))))))

(declare-fun dynLambda!7869 (Int TokenValue!3193) BalanceConc!11652)

(assert (=> d!485570 (= lt!576502 (dynLambda!7869 (toChars!4385 (transformation!3103 (rule!4923 (h!23022 (t!148080 tokens!457))))) (value!98108 (h!23022 (t!148080 tokens!457)))))))

(assert (=> d!485570 (= (charsOf!1752 (h!23022 (t!148080 tokens!457))) lt!576502)))

(declare-fun b_lambda!50897 () Bool)

(assert (=> (not b_lambda!50897) (not d!485570)))

(declare-fun t!148100 () Bool)

(declare-fun tb!92735 () Bool)

(assert (=> (and b!1612967 (= (toChars!4385 (transformation!3103 (rule!4923 (h!23022 tokens!457)))) (toChars!4385 (transformation!3103 (rule!4923 (h!23022 (t!148080 tokens!457)))))) t!148100) tb!92735))

(declare-fun b!1613309 () Bool)

(declare-fun e!1034712 () Bool)

(declare-fun tp!470429 () Bool)

(declare-fun inv!23035 (Conc!5854) Bool)

(assert (=> b!1613309 (= e!1034712 (and (inv!23035 (c!262813 (dynLambda!7869 (toChars!4385 (transformation!3103 (rule!4923 (h!23022 (t!148080 tokens!457))))) (value!98108 (h!23022 (t!148080 tokens!457)))))) tp!470429))))

(declare-fun result!111748 () Bool)

(declare-fun inv!23036 (BalanceConc!11652) Bool)

(assert (=> tb!92735 (= result!111748 (and (inv!23036 (dynLambda!7869 (toChars!4385 (transformation!3103 (rule!4923 (h!23022 (t!148080 tokens!457))))) (value!98108 (h!23022 (t!148080 tokens!457))))) e!1034712))))

(assert (= tb!92735 b!1613309))

(declare-fun m!1931617 () Bool)

(assert (=> b!1613309 m!1931617))

(declare-fun m!1931619 () Bool)

(assert (=> tb!92735 m!1931619))

(assert (=> d!485570 t!148100))

(declare-fun b_and!114381 () Bool)

(assert (= b_and!114367 (and (=> t!148100 result!111748) b_and!114381)))

(declare-fun tb!92737 () Bool)

(declare-fun t!148102 () Bool)

(assert (=> (and b!1612987 (= (toChars!4385 (transformation!3103 (h!23023 rules!1846))) (toChars!4385 (transformation!3103 (rule!4923 (h!23022 (t!148080 tokens!457)))))) t!148102) tb!92737))

(declare-fun result!111752 () Bool)

(assert (= result!111752 result!111748))

(assert (=> d!485570 t!148102))

(declare-fun b_and!114383 () Bool)

(assert (= b_and!114371 (and (=> t!148102 result!111752) b_and!114383)))

(declare-fun m!1931621 () Bool)

(assert (=> d!485570 m!1931621))

(declare-fun m!1931623 () Bool)

(assert (=> d!485570 m!1931623))

(assert (=> b!1612972 d!485570))

(declare-fun d!485572 () Bool)

(declare-fun lt!576505 () C!9036)

(declare-fun apply!4421 (List!17690 Int) C!9036)

(assert (=> d!485572 (= lt!576505 (apply!4421 (list!6879 (charsOf!1752 (h!23022 (t!148080 tokens!457)))) 0))))

(declare-fun apply!4422 (Conc!5854 Int) C!9036)

(assert (=> d!485572 (= lt!576505 (apply!4422 (c!262813 (charsOf!1752 (h!23022 (t!148080 tokens!457)))) 0))))

(declare-fun e!1034715 () Bool)

(assert (=> d!485572 e!1034715))

(declare-fun res!719621 () Bool)

(assert (=> d!485572 (=> (not res!719621) (not e!1034715))))

(assert (=> d!485572 (= res!719621 (<= 0 0))))

(assert (=> d!485572 (= (apply!4412 (charsOf!1752 (h!23022 (t!148080 tokens!457))) 0) lt!576505)))

(declare-fun b!1613312 () Bool)

(assert (=> b!1613312 (= e!1034715 (< 0 (size!14164 (charsOf!1752 (h!23022 (t!148080 tokens!457))))))))

(assert (= (and d!485572 res!719621) b!1613312))

(assert (=> d!485572 m!1930895))

(declare-fun m!1931625 () Bool)

(assert (=> d!485572 m!1931625))

(assert (=> d!485572 m!1931625))

(declare-fun m!1931627 () Bool)

(assert (=> d!485572 m!1931627))

(declare-fun m!1931629 () Bool)

(assert (=> d!485572 m!1931629))

(assert (=> b!1613312 m!1930895))

(declare-fun m!1931631 () Bool)

(assert (=> b!1613312 m!1931631))

(assert (=> b!1612972 d!485572))

(declare-fun lt!576532 () Bool)

(declare-fun d!485574 () Bool)

(assert (=> d!485574 (= lt!576532 (prefixMatch!366 lt!576222 (list!6879 (++!4642 lt!576229 lt!576240))))))

(declare-datatypes ((Context!1694 0))(
  ( (Context!1695 (exprs!1347 List!17696)) )
))
(declare-fun prefixMatchZipperSequence!473 ((InoxSet Context!1694) BalanceConc!11652 Int) Bool)

(declare-fun focus!153 (Regex!4431) (InoxSet Context!1694))

(assert (=> d!485574 (= lt!576532 (prefixMatchZipperSequence!473 (focus!153 lt!576222) (++!4642 lt!576229 lt!576240) 0))))

(declare-fun lt!576529 () Unit!28303)

(declare-fun lt!576528 () Unit!28303)

(assert (=> d!485574 (= lt!576529 lt!576528)))

(declare-fun lt!576526 () List!17690)

(declare-fun lt!576533 () (InoxSet Context!1694))

(declare-fun prefixMatchZipper!132 ((InoxSet Context!1694) List!17690) Bool)

(assert (=> d!485574 (= (prefixMatch!366 lt!576222 lt!576526) (prefixMatchZipper!132 lt!576533 lt!576526))))

(declare-datatypes ((List!17697 0))(
  ( (Nil!17627) (Cons!17627 (h!23028 Context!1694) (t!148128 List!17697)) )
))
(declare-fun lt!576530 () List!17697)

(declare-fun prefixMatchZipperRegexEquiv!132 ((InoxSet Context!1694) List!17697 Regex!4431 List!17690) Unit!28303)

(assert (=> d!485574 (= lt!576528 (prefixMatchZipperRegexEquiv!132 lt!576533 lt!576530 lt!576222 lt!576526))))

(assert (=> d!485574 (= lt!576526 (list!6879 (++!4642 lt!576229 lt!576240)))))

(declare-fun toList!893 ((InoxSet Context!1694)) List!17697)

(assert (=> d!485574 (= lt!576530 (toList!893 (focus!153 lt!576222)))))

(assert (=> d!485574 (= lt!576533 (focus!153 lt!576222))))

(declare-fun lt!576527 () Unit!28303)

(declare-fun lt!576535 () Unit!28303)

(assert (=> d!485574 (= lt!576527 lt!576535)))

(declare-fun lt!576534 () (InoxSet Context!1694))

(declare-fun lt!576531 () Int)

(declare-fun dropList!568 (BalanceConc!11652 Int) List!17690)

(assert (=> d!485574 (= (prefixMatchZipper!132 lt!576534 (dropList!568 (++!4642 lt!576229 lt!576240) lt!576531)) (prefixMatchZipperSequence!473 lt!576534 (++!4642 lt!576229 lt!576240) lt!576531))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!132 ((InoxSet Context!1694) BalanceConc!11652 Int) Unit!28303)

(assert (=> d!485574 (= lt!576535 (lemmaprefixMatchZipperSequenceEquivalent!132 lt!576534 (++!4642 lt!576229 lt!576240) lt!576531))))

(assert (=> d!485574 (= lt!576531 0)))

(assert (=> d!485574 (= lt!576534 (focus!153 lt!576222))))

(declare-fun validRegex!1758 (Regex!4431) Bool)

(assert (=> d!485574 (validRegex!1758 lt!576222)))

(assert (=> d!485574 (= (prefixMatchZipperSequence!471 lt!576222 (++!4642 lt!576229 lt!576240)) lt!576532)))

(declare-fun bs!393969 () Bool)

(assert (= bs!393969 d!485574))

(declare-fun m!1931633 () Bool)

(assert (=> bs!393969 m!1931633))

(declare-fun m!1931635 () Bool)

(assert (=> bs!393969 m!1931635))

(declare-fun m!1931637 () Bool)

(assert (=> bs!393969 m!1931637))

(assert (=> bs!393969 m!1930887))

(declare-fun m!1931639 () Bool)

(assert (=> bs!393969 m!1931639))

(assert (=> bs!393969 m!1930887))

(declare-fun m!1931641 () Bool)

(assert (=> bs!393969 m!1931641))

(assert (=> bs!393969 m!1931641))

(declare-fun m!1931643 () Bool)

(assert (=> bs!393969 m!1931643))

(declare-fun m!1931645 () Bool)

(assert (=> bs!393969 m!1931645))

(declare-fun m!1931647 () Bool)

(assert (=> bs!393969 m!1931647))

(declare-fun m!1931649 () Bool)

(assert (=> bs!393969 m!1931649))

(declare-fun m!1931651 () Bool)

(assert (=> bs!393969 m!1931651))

(assert (=> bs!393969 m!1930887))

(assert (=> bs!393969 m!1931645))

(assert (=> bs!393969 m!1931635))

(assert (=> bs!393969 m!1930887))

(declare-fun m!1931653 () Bool)

(assert (=> bs!393969 m!1931653))

(assert (=> bs!393969 m!1930887))

(declare-fun m!1931655 () Bool)

(assert (=> bs!393969 m!1931655))

(declare-fun m!1931657 () Bool)

(assert (=> bs!393969 m!1931657))

(assert (=> bs!393969 m!1931635))

(assert (=> b!1612972 d!485574))

(declare-fun d!485576 () Bool)

(assert (=> d!485576 (= (head!3318 lt!576235) (h!23021 lt!576235))))

(assert (=> b!1612973 d!485576))

(declare-fun d!485578 () Bool)

(declare-fun lt!576536 () BalanceConc!11652)

(assert (=> d!485578 (= (list!6879 lt!576536) (printList!847 thiss!17113 (list!6880 (seqFromList!1955 tokens!457))))))

(assert (=> d!485578 (= lt!576536 (printTailRec!785 thiss!17113 (seqFromList!1955 tokens!457) 0 (BalanceConc!11653 Empty!5854)))))

(assert (=> d!485578 (= (print!1263 thiss!17113 (seqFromList!1955 tokens!457)) lt!576536)))

(declare-fun bs!393970 () Bool)

(assert (= bs!393970 d!485578))

(declare-fun m!1931659 () Bool)

(assert (=> bs!393970 m!1931659))

(assert (=> bs!393970 m!1930971))

(declare-fun m!1931661 () Bool)

(assert (=> bs!393970 m!1931661))

(assert (=> bs!393970 m!1931661))

(declare-fun m!1931663 () Bool)

(assert (=> bs!393970 m!1931663))

(assert (=> bs!393970 m!1930971))

(declare-fun m!1931665 () Bool)

(assert (=> bs!393970 m!1931665))

(assert (=> b!1612971 d!485578))

(declare-fun d!485580 () Bool)

(assert (=> d!485580 (= (list!6879 lt!576224) (list!6882 (c!262813 lt!576224)))))

(declare-fun bs!393971 () Bool)

(assert (= bs!393971 d!485580))

(declare-fun m!1931667 () Bool)

(assert (=> bs!393971 m!1931667))

(assert (=> b!1612971 d!485580))

(declare-fun d!485582 () Bool)

(assert (=> d!485582 (= (list!6879 lt!576217) (list!6882 (c!262813 lt!576217)))))

(declare-fun bs!393972 () Bool)

(assert (= bs!393972 d!485582))

(declare-fun m!1931669 () Bool)

(assert (=> bs!393972 m!1931669))

(assert (=> b!1612971 d!485582))

(declare-fun d!485584 () Bool)

(assert (=> d!485584 (= (list!6879 lt!576229) (list!6882 (c!262813 lt!576229)))))

(declare-fun bs!393973 () Bool)

(assert (= bs!393973 d!485584))

(declare-fun m!1931671 () Bool)

(assert (=> bs!393973 m!1931671))

(assert (=> b!1612971 d!485584))

(declare-fun b!1613313 () Bool)

(declare-fun e!1034716 () Bool)

(declare-fun e!1034718 () Bool)

(assert (=> b!1613313 (= e!1034716 e!1034718)))

(declare-fun res!719623 () Bool)

(declare-fun lt!576537 () tuple2!17128)

(assert (=> b!1613313 (= res!719623 (< (size!14164 (_2!9966 lt!576537)) (size!14164 lt!576217)))))

(assert (=> b!1613313 (=> (not res!719623) (not e!1034718))))

(declare-fun d!485586 () Bool)

(declare-fun e!1034717 () Bool)

(assert (=> d!485586 e!1034717))

(declare-fun res!719624 () Bool)

(assert (=> d!485586 (=> (not res!719624) (not e!1034717))))

(assert (=> d!485586 (= res!719624 e!1034716)))

(declare-fun c!262880 () Bool)

(assert (=> d!485586 (= c!262880 (> (size!14165 (_1!9966 lt!576537)) 0))))

(assert (=> d!485586 (= lt!576537 (lexTailRecV2!532 thiss!17113 rules!1846 lt!576217 (BalanceConc!11653 Empty!5854) lt!576217 (BalanceConc!11655 Empty!5855)))))

(assert (=> d!485586 (= (lex!1216 thiss!17113 rules!1846 lt!576217) lt!576537)))

(declare-fun b!1613314 () Bool)

(assert (=> b!1613314 (= e!1034718 (not (isEmpty!10644 (_1!9966 lt!576537))))))

(declare-fun b!1613315 () Bool)

(assert (=> b!1613315 (= e!1034716 (= (_2!9966 lt!576537) lt!576217))))

(declare-fun b!1613316 () Bool)

(assert (=> b!1613316 (= e!1034717 (= (list!6879 (_2!9966 lt!576537)) (_2!9969 (lexList!809 thiss!17113 rules!1846 (list!6879 lt!576217)))))))

(declare-fun b!1613317 () Bool)

(declare-fun res!719622 () Bool)

(assert (=> b!1613317 (=> (not res!719622) (not e!1034717))))

(assert (=> b!1613317 (= res!719622 (= (list!6880 (_1!9966 lt!576537)) (_1!9969 (lexList!809 thiss!17113 rules!1846 (list!6879 lt!576217)))))))

(assert (= (and d!485586 c!262880) b!1613313))

(assert (= (and d!485586 (not c!262880)) b!1613315))

(assert (= (and b!1613313 res!719623) b!1613314))

(assert (= (and d!485586 res!719624) b!1613317))

(assert (= (and b!1613317 res!719622) b!1613316))

(declare-fun m!1931673 () Bool)

(assert (=> b!1613317 m!1931673))

(assert (=> b!1613317 m!1930969))

(assert (=> b!1613317 m!1930969))

(declare-fun m!1931675 () Bool)

(assert (=> b!1613317 m!1931675))

(declare-fun m!1931677 () Bool)

(assert (=> d!485586 m!1931677))

(declare-fun m!1931679 () Bool)

(assert (=> d!485586 m!1931679))

(declare-fun m!1931681 () Bool)

(assert (=> b!1613313 m!1931681))

(declare-fun m!1931683 () Bool)

(assert (=> b!1613313 m!1931683))

(declare-fun m!1931685 () Bool)

(assert (=> b!1613314 m!1931685))

(declare-fun m!1931687 () Bool)

(assert (=> b!1613316 m!1931687))

(assert (=> b!1613316 m!1930969))

(assert (=> b!1613316 m!1930969))

(assert (=> b!1613316 m!1931675))

(assert (=> b!1612971 d!485586))

(declare-fun d!485588 () Bool)

(declare-fun lt!576538 () BalanceConc!11652)

(assert (=> d!485588 (= (list!6879 lt!576538) (originalCharacters!3917 (h!23022 tokens!457)))))

(assert (=> d!485588 (= lt!576538 (dynLambda!7869 (toChars!4385 (transformation!3103 (rule!4923 (h!23022 tokens!457)))) (value!98108 (h!23022 tokens!457))))))

(assert (=> d!485588 (= (charsOf!1752 (h!23022 tokens!457)) lt!576538)))

(declare-fun b_lambda!50899 () Bool)

(assert (=> (not b_lambda!50899) (not d!485588)))

(declare-fun t!148104 () Bool)

(declare-fun tb!92739 () Bool)

(assert (=> (and b!1612967 (= (toChars!4385 (transformation!3103 (rule!4923 (h!23022 tokens!457)))) (toChars!4385 (transformation!3103 (rule!4923 (h!23022 tokens!457))))) t!148104) tb!92739))

(declare-fun b!1613318 () Bool)

(declare-fun e!1034719 () Bool)

(declare-fun tp!470430 () Bool)

(assert (=> b!1613318 (= e!1034719 (and (inv!23035 (c!262813 (dynLambda!7869 (toChars!4385 (transformation!3103 (rule!4923 (h!23022 tokens!457)))) (value!98108 (h!23022 tokens!457))))) tp!470430))))

(declare-fun result!111754 () Bool)

(assert (=> tb!92739 (= result!111754 (and (inv!23036 (dynLambda!7869 (toChars!4385 (transformation!3103 (rule!4923 (h!23022 tokens!457)))) (value!98108 (h!23022 tokens!457)))) e!1034719))))

(assert (= tb!92739 b!1613318))

(declare-fun m!1931689 () Bool)

(assert (=> b!1613318 m!1931689))

(declare-fun m!1931691 () Bool)

(assert (=> tb!92739 m!1931691))

(assert (=> d!485588 t!148104))

(declare-fun b_and!114385 () Bool)

(assert (= b_and!114381 (and (=> t!148104 result!111754) b_and!114385)))

(declare-fun tb!92741 () Bool)

(declare-fun t!148106 () Bool)

(assert (=> (and b!1612987 (= (toChars!4385 (transformation!3103 (h!23023 rules!1846))) (toChars!4385 (transformation!3103 (rule!4923 (h!23022 tokens!457))))) t!148106) tb!92741))

(declare-fun result!111756 () Bool)

(assert (= result!111756 result!111754))

(assert (=> d!485588 t!148106))

(declare-fun b_and!114387 () Bool)

(assert (= b_and!114383 (and (=> t!148106 result!111756) b_and!114387)))

(declare-fun m!1931693 () Bool)

(assert (=> d!485588 m!1931693))

(declare-fun m!1931695 () Bool)

(assert (=> d!485588 m!1931695))

(assert (=> b!1612971 d!485588))

(declare-fun b!1613319 () Bool)

(declare-fun e!1034721 () List!17690)

(assert (=> b!1613319 (= e!1034721 lt!576235)))

(declare-fun b!1613322 () Bool)

(declare-fun lt!576539 () List!17690)

(declare-fun e!1034720 () Bool)

(assert (=> b!1613322 (= e!1034720 (or (not (= lt!576235 Nil!17620)) (= lt!576539 lt!576221)))))

(declare-fun b!1613321 () Bool)

(declare-fun res!719625 () Bool)

(assert (=> b!1613321 (=> (not res!719625) (not e!1034720))))

(assert (=> b!1613321 (= res!719625 (= (size!14166 lt!576539) (+ (size!14166 lt!576221) (size!14166 lt!576235))))))

(declare-fun b!1613320 () Bool)

(assert (=> b!1613320 (= e!1034721 (Cons!17620 (h!23021 lt!576221) (++!4641 (t!148079 lt!576221) lt!576235)))))

(declare-fun d!485590 () Bool)

(assert (=> d!485590 e!1034720))

(declare-fun res!719626 () Bool)

(assert (=> d!485590 (=> (not res!719626) (not e!1034720))))

(assert (=> d!485590 (= res!719626 (= (content!2445 lt!576539) ((_ map or) (content!2445 lt!576221) (content!2445 lt!576235))))))

(assert (=> d!485590 (= lt!576539 e!1034721)))

(declare-fun c!262881 () Bool)

(assert (=> d!485590 (= c!262881 ((_ is Nil!17620) lt!576221))))

(assert (=> d!485590 (= (++!4641 lt!576221 lt!576235) lt!576539)))

(assert (= (and d!485590 c!262881) b!1613319))

(assert (= (and d!485590 (not c!262881)) b!1613320))

(assert (= (and d!485590 res!719626) b!1613321))

(assert (= (and b!1613321 res!719625) b!1613322))

(declare-fun m!1931697 () Bool)

(assert (=> b!1613321 m!1931697))

(assert (=> b!1613321 m!1931573))

(declare-fun m!1931699 () Bool)

(assert (=> b!1613321 m!1931699))

(declare-fun m!1931701 () Bool)

(assert (=> b!1613320 m!1931701))

(declare-fun m!1931703 () Bool)

(assert (=> d!485590 m!1931703))

(assert (=> d!485590 m!1931581))

(declare-fun m!1931705 () Bool)

(assert (=> d!485590 m!1931705))

(assert (=> b!1612971 d!485590))

(declare-fun d!485592 () Bool)

(assert (=> d!485592 (= (seqFromList!1955 (t!148080 tokens!457)) (fromListB!855 (t!148080 tokens!457)))))

(declare-fun bs!393974 () Bool)

(assert (= bs!393974 d!485592))

(declare-fun m!1931707 () Bool)

(assert (=> bs!393974 m!1931707))

(assert (=> b!1612971 d!485592))

(declare-fun d!485594 () Bool)

(assert (=> d!485594 (= (seqFromList!1955 tokens!457) (fromListB!855 tokens!457))))

(declare-fun bs!393975 () Bool)

(assert (= bs!393975 d!485594))

(declare-fun m!1931709 () Bool)

(assert (=> bs!393975 m!1931709))

(assert (=> b!1612971 d!485594))

(declare-fun d!485596 () Bool)

(declare-fun lt!576540 () BalanceConc!11652)

(assert (=> d!485596 (= (list!6879 lt!576540) (printList!847 thiss!17113 (list!6880 lt!576236)))))

(assert (=> d!485596 (= lt!576540 (printTailRec!785 thiss!17113 lt!576236 0 (BalanceConc!11653 Empty!5854)))))

(assert (=> d!485596 (= (print!1263 thiss!17113 lt!576236) lt!576540)))

(declare-fun bs!393976 () Bool)

(assert (= bs!393976 d!485596))

(declare-fun m!1931711 () Bool)

(assert (=> bs!393976 m!1931711))

(assert (=> bs!393976 m!1930991))

(assert (=> bs!393976 m!1930991))

(declare-fun m!1931713 () Bool)

(assert (=> bs!393976 m!1931713))

(declare-fun m!1931715 () Bool)

(assert (=> bs!393976 m!1931715))

(assert (=> b!1612971 d!485596))

(declare-fun d!485598 () Bool)

(declare-fun lt!576543 () C!9036)

(assert (=> d!485598 (= lt!576543 (head!3318 (list!6879 lt!576217)))))

(declare-fun head!3323 (Conc!5854) C!9036)

(assert (=> d!485598 (= lt!576543 (head!3323 (c!262813 lt!576217)))))

(declare-fun isEmpty!10656 (BalanceConc!11652) Bool)

(assert (=> d!485598 (not (isEmpty!10656 lt!576217))))

(assert (=> d!485598 (= (head!3319 lt!576217) lt!576543)))

(declare-fun bs!393977 () Bool)

(assert (= bs!393977 d!485598))

(assert (=> bs!393977 m!1930969))

(assert (=> bs!393977 m!1930969))

(declare-fun m!1931717 () Bool)

(assert (=> bs!393977 m!1931717))

(declare-fun m!1931719 () Bool)

(assert (=> bs!393977 m!1931719))

(declare-fun m!1931721 () Bool)

(assert (=> bs!393977 m!1931721))

(assert (=> b!1612982 d!485598))

(declare-fun d!485600 () Bool)

(assert (=> d!485600 (= (inv!23028 (tag!3379 (rule!4923 (h!23022 tokens!457)))) (= (mod (str.len (value!98107 (tag!3379 (rule!4923 (h!23022 tokens!457))))) 2) 0))))

(assert (=> b!1612981 d!485600))

(declare-fun d!485602 () Bool)

(declare-fun res!719629 () Bool)

(declare-fun e!1034724 () Bool)

(assert (=> d!485602 (=> (not res!719629) (not e!1034724))))

(declare-fun semiInverseModEq!1180 (Int Int) Bool)

(assert (=> d!485602 (= res!719629 (semiInverseModEq!1180 (toChars!4385 (transformation!3103 (rule!4923 (h!23022 tokens!457)))) (toValue!4526 (transformation!3103 (rule!4923 (h!23022 tokens!457))))))))

(assert (=> d!485602 (= (inv!23031 (transformation!3103 (rule!4923 (h!23022 tokens!457)))) e!1034724)))

(declare-fun b!1613325 () Bool)

(declare-fun equivClasses!1121 (Int Int) Bool)

(assert (=> b!1613325 (= e!1034724 (equivClasses!1121 (toChars!4385 (transformation!3103 (rule!4923 (h!23022 tokens!457)))) (toValue!4526 (transformation!3103 (rule!4923 (h!23022 tokens!457))))))))

(assert (= (and d!485602 res!719629) b!1613325))

(declare-fun m!1931723 () Bool)

(assert (=> d!485602 m!1931723))

(declare-fun m!1931725 () Bool)

(assert (=> b!1613325 m!1931725))

(assert (=> b!1612981 d!485602))

(declare-fun d!485604 () Bool)

(declare-fun res!719634 () Bool)

(declare-fun e!1034727 () Bool)

(assert (=> d!485604 (=> (not res!719634) (not e!1034727))))

(assert (=> d!485604 (= res!719634 (not (isEmpty!10655 (originalCharacters!3917 (h!23022 tokens!457)))))))

(assert (=> d!485604 (= (inv!23032 (h!23022 tokens!457)) e!1034727)))

(declare-fun b!1613330 () Bool)

(declare-fun res!719635 () Bool)

(assert (=> b!1613330 (=> (not res!719635) (not e!1034727))))

(assert (=> b!1613330 (= res!719635 (= (originalCharacters!3917 (h!23022 tokens!457)) (list!6879 (dynLambda!7869 (toChars!4385 (transformation!3103 (rule!4923 (h!23022 tokens!457)))) (value!98108 (h!23022 tokens!457))))))))

(declare-fun b!1613331 () Bool)

(assert (=> b!1613331 (= e!1034727 (= (size!14160 (h!23022 tokens!457)) (size!14166 (originalCharacters!3917 (h!23022 tokens!457)))))))

(assert (= (and d!485604 res!719634) b!1613330))

(assert (= (and b!1613330 res!719635) b!1613331))

(declare-fun b_lambda!50901 () Bool)

(assert (=> (not b_lambda!50901) (not b!1613330)))

(assert (=> b!1613330 t!148104))

(declare-fun b_and!114389 () Bool)

(assert (= b_and!114385 (and (=> t!148104 result!111754) b_and!114389)))

(assert (=> b!1613330 t!148106))

(declare-fun b_and!114391 () Bool)

(assert (= b_and!114387 (and (=> t!148106 result!111756) b_and!114391)))

(declare-fun m!1931727 () Bool)

(assert (=> d!485604 m!1931727))

(assert (=> b!1613330 m!1931695))

(assert (=> b!1613330 m!1931695))

(declare-fun m!1931729 () Bool)

(assert (=> b!1613330 m!1931729))

(declare-fun m!1931731 () Bool)

(assert (=> b!1613331 m!1931731))

(assert (=> b!1612970 d!485604))

(declare-fun d!485606 () Bool)

(declare-fun res!719643 () Bool)

(declare-fun e!1034744 () Bool)

(assert (=> d!485606 (=> res!719643 e!1034744)))

(assert (=> d!485606 (= res!719643 (or (not ((_ is Cons!17621) tokens!457)) (not ((_ is Cons!17621) (t!148080 tokens!457)))))))

(assert (=> d!485606 (= (tokensListTwoByTwoPredicateSeparableList!425 thiss!17113 tokens!457 rules!1846) e!1034744)))

(declare-fun b!1613351 () Bool)

(declare-fun e!1034743 () Bool)

(assert (=> b!1613351 (= e!1034744 e!1034743)))

(declare-fun res!719642 () Bool)

(assert (=> b!1613351 (=> (not res!719642) (not e!1034743))))

(assert (=> b!1613351 (= res!719642 (separableTokensPredicate!674 thiss!17113 (h!23022 tokens!457) (h!23022 (t!148080 tokens!457)) rules!1846))))

(declare-fun lt!576564 () Unit!28303)

(declare-fun Unit!28324 () Unit!28303)

(assert (=> b!1613351 (= lt!576564 Unit!28324)))

(assert (=> b!1613351 (> (size!14164 (charsOf!1752 (h!23022 (t!148080 tokens!457)))) 0)))

(declare-fun lt!576561 () Unit!28303)

(declare-fun Unit!28325 () Unit!28303)

(assert (=> b!1613351 (= lt!576561 Unit!28325)))

(assert (=> b!1613351 (rulesProduceIndividualToken!1384 thiss!17113 rules!1846 (h!23022 (t!148080 tokens!457)))))

(declare-fun lt!576565 () Unit!28303)

(declare-fun Unit!28326 () Unit!28303)

(assert (=> b!1613351 (= lt!576565 Unit!28326)))

(assert (=> b!1613351 (rulesProduceIndividualToken!1384 thiss!17113 rules!1846 (h!23022 tokens!457))))

(declare-fun lt!576559 () Unit!28303)

(declare-fun lt!576562 () Unit!28303)

(assert (=> b!1613351 (= lt!576559 lt!576562)))

(assert (=> b!1613351 (rulesProduceIndividualToken!1384 thiss!17113 rules!1846 (h!23022 (t!148080 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!545 (LexerInterface!2732 List!17692 List!17691 Token!5772) Unit!28303)

(assert (=> b!1613351 (= lt!576562 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!545 thiss!17113 rules!1846 tokens!457 (h!23022 (t!148080 tokens!457))))))

(declare-fun lt!576563 () Unit!28303)

(declare-fun lt!576560 () Unit!28303)

(assert (=> b!1613351 (= lt!576563 lt!576560)))

(assert (=> b!1613351 (rulesProduceIndividualToken!1384 thiss!17113 rules!1846 (h!23022 tokens!457))))

(assert (=> b!1613351 (= lt!576560 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!545 thiss!17113 rules!1846 tokens!457 (h!23022 tokens!457)))))

(declare-fun b!1613352 () Bool)

(assert (=> b!1613352 (= e!1034743 (tokensListTwoByTwoPredicateSeparableList!425 thiss!17113 (Cons!17621 (h!23022 (t!148080 tokens!457)) (t!148080 (t!148080 tokens!457))) rules!1846))))

(assert (= (and d!485606 (not res!719643)) b!1613351))

(assert (= (and b!1613351 res!719642) b!1613352))

(declare-fun m!1931737 () Bool)

(assert (=> b!1613351 m!1931737))

(assert (=> b!1613351 m!1930925))

(declare-fun m!1931739 () Bool)

(assert (=> b!1613351 m!1931739))

(assert (=> b!1613351 m!1930895))

(assert (=> b!1613351 m!1930895))

(assert (=> b!1613351 m!1931631))

(assert (=> b!1613351 m!1930947))

(declare-fun m!1931741 () Bool)

(assert (=> b!1613351 m!1931741))

(declare-fun m!1931743 () Bool)

(assert (=> b!1613352 m!1931743))

(assert (=> b!1612979 d!485606))

(declare-fun d!485610 () Bool)

(assert (=> d!485610 (= (isDefined!2576 lt!576220) (not (isEmpty!10654 lt!576220)))))

(declare-fun bs!393978 () Bool)

(assert (= bs!393978 d!485610))

(declare-fun m!1931745 () Bool)

(assert (=> bs!393978 m!1931745))

(assert (=> b!1612968 d!485610))

(declare-fun b!1613392 () Bool)

(declare-fun lt!576645 () Token!5772)

(declare-fun e!1034768 () Bool)

(declare-datatypes ((Option!3212 0))(
  ( (None!3211) (Some!3211 (v!24188 Rule!6006)) )
))
(declare-fun get!5052 (Option!3212) Rule!6006)

(declare-fun getRuleFromTag!264 (LexerInterface!2732 List!17692 String!20297) Option!3212)

(assert (=> b!1613392 (= e!1034768 (= (rule!4923 lt!576645) (get!5052 (getRuleFromTag!264 thiss!17113 rules!1846 (tag!3379 (rule!4923 lt!576645))))))))

(declare-fun b!1613393 () Bool)

(declare-fun e!1034769 () Unit!28303)

(declare-fun Unit!28327 () Unit!28303)

(assert (=> b!1613393 (= e!1034769 Unit!28327)))

(declare-fun lt!576642 () List!17690)

(assert (=> b!1613393 (= lt!576642 (++!4641 lt!576221 lt!576235))))

(declare-fun lt!576644 () Unit!28303)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!158 (LexerInterface!2732 Rule!6006 List!17692 List!17690) Unit!28303)

(assert (=> b!1613393 (= lt!576644 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!158 thiss!17113 (rule!4923 lt!576645) rules!1846 lt!576642))))

(assert (=> b!1613393 (isEmpty!10654 (maxPrefixOneRule!755 thiss!17113 (rule!4923 lt!576645) lt!576642))))

(declare-fun lt!576636 () Unit!28303)

(assert (=> b!1613393 (= lt!576636 lt!576644)))

(declare-fun lt!576633 () List!17690)

(assert (=> b!1613393 (= lt!576633 (list!6879 (charsOf!1752 lt!576645)))))

(declare-fun lt!576632 () Unit!28303)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!154 (LexerInterface!2732 Rule!6006 List!17690 List!17690) Unit!28303)

(assert (=> b!1613393 (= lt!576632 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!154 thiss!17113 (rule!4923 lt!576645) lt!576633 (++!4641 lt!576221 lt!576235)))))

(assert (=> b!1613393 (not (matchR!1940 (regex!3103 (rule!4923 lt!576645)) lt!576633))))

(declare-fun lt!576640 () Unit!28303)

(assert (=> b!1613393 (= lt!576640 lt!576632)))

(assert (=> b!1613393 false))

(declare-fun b!1613391 () Bool)

(declare-fun res!719674 () Bool)

(assert (=> b!1613391 (=> (not res!719674) (not e!1034768))))

(assert (=> b!1613391 (= res!719674 (matchR!1940 (regex!3103 (get!5052 (getRuleFromTag!264 thiss!17113 rules!1846 (tag!3379 (rule!4923 lt!576645))))) (list!6879 (charsOf!1752 lt!576645))))))

(declare-fun d!485612 () Bool)

(assert (=> d!485612 (isDefined!2576 (maxPrefix!1296 thiss!17113 rules!1846 (++!4641 lt!576221 lt!576235)))))

(declare-fun lt!576639 () Unit!28303)

(assert (=> d!485612 (= lt!576639 e!1034769)))

(declare-fun c!262885 () Bool)

(assert (=> d!485612 (= c!262885 (isEmpty!10654 (maxPrefix!1296 thiss!17113 rules!1846 (++!4641 lt!576221 lt!576235))))))

(declare-fun lt!576635 () Unit!28303)

(declare-fun lt!576634 () Unit!28303)

(assert (=> d!485612 (= lt!576635 lt!576634)))

(assert (=> d!485612 e!1034768))

(declare-fun res!719675 () Bool)

(assert (=> d!485612 (=> (not res!719675) (not e!1034768))))

(declare-fun isDefined!2579 (Option!3212) Bool)

(assert (=> d!485612 (= res!719675 (isDefined!2579 (getRuleFromTag!264 thiss!17113 rules!1846 (tag!3379 (rule!4923 lt!576645)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!264 (LexerInterface!2732 List!17692 List!17690 Token!5772) Unit!28303)

(assert (=> d!485612 (= lt!576634 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!264 thiss!17113 rules!1846 lt!576221 lt!576645))))

(declare-fun lt!576641 () Unit!28303)

(declare-fun lt!576629 () Unit!28303)

(assert (=> d!485612 (= lt!576641 lt!576629)))

(declare-fun lt!576643 () List!17690)

(assert (=> d!485612 (isPrefix!1363 lt!576643 (++!4641 lt!576221 lt!576235))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!150 (List!17690 List!17690 List!17690) Unit!28303)

(assert (=> d!485612 (= lt!576629 (lemmaPrefixStaysPrefixWhenAddingToSuffix!150 lt!576643 lt!576221 lt!576235))))

(assert (=> d!485612 (= lt!576643 (list!6879 (charsOf!1752 lt!576645)))))

(declare-fun lt!576631 () Unit!28303)

(declare-fun lt!576638 () Unit!28303)

(assert (=> d!485612 (= lt!576631 lt!576638)))

(declare-fun lt!576630 () List!17690)

(declare-fun lt!576637 () List!17690)

(assert (=> d!485612 (isPrefix!1363 lt!576630 (++!4641 lt!576630 lt!576637))))

(assert (=> d!485612 (= lt!576638 (lemmaConcatTwoListThenFirstIsPrefix!888 lt!576630 lt!576637))))

(assert (=> d!485612 (= lt!576637 (_2!9965 (get!5051 (maxPrefix!1296 thiss!17113 rules!1846 lt!576221))))))

(assert (=> d!485612 (= lt!576630 (list!6879 (charsOf!1752 lt!576645)))))

(assert (=> d!485612 (= lt!576645 (head!3321 (list!6880 (_1!9966 (lex!1216 thiss!17113 rules!1846 (seqFromList!1956 lt!576221))))))))

(assert (=> d!485612 (not (isEmpty!10645 rules!1846))))

(assert (=> d!485612 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!306 thiss!17113 rules!1846 lt!576221 lt!576235) lt!576639)))

(declare-fun b!1613394 () Bool)

(declare-fun Unit!28328 () Unit!28303)

(assert (=> b!1613394 (= e!1034769 Unit!28328)))

(assert (= (and d!485612 res!719675) b!1613391))

(assert (= (and b!1613391 res!719674) b!1613392))

(assert (= (and d!485612 c!262885) b!1613393))

(assert (= (and d!485612 (not c!262885)) b!1613394))

(declare-fun m!1931809 () Bool)

(assert (=> b!1613392 m!1931809))

(assert (=> b!1613392 m!1931809))

(declare-fun m!1931811 () Bool)

(assert (=> b!1613392 m!1931811))

(declare-fun m!1931813 () Bool)

(assert (=> b!1613393 m!1931813))

(declare-fun m!1931815 () Bool)

(assert (=> b!1613393 m!1931815))

(declare-fun m!1931817 () Bool)

(assert (=> b!1613393 m!1931817))

(declare-fun m!1931819 () Bool)

(assert (=> b!1613393 m!1931819))

(assert (=> b!1613393 m!1931819))

(declare-fun m!1931821 () Bool)

(assert (=> b!1613393 m!1931821))

(assert (=> b!1613393 m!1930959))

(declare-fun m!1931823 () Bool)

(assert (=> b!1613393 m!1931823))

(assert (=> b!1613393 m!1931815))

(declare-fun m!1931825 () Bool)

(assert (=> b!1613393 m!1931825))

(assert (=> b!1613393 m!1930959))

(assert (=> b!1613391 m!1931821))

(declare-fun m!1931827 () Bool)

(assert (=> b!1613391 m!1931827))

(assert (=> b!1613391 m!1931809))

(assert (=> b!1613391 m!1931819))

(assert (=> b!1613391 m!1931809))

(assert (=> b!1613391 m!1931811))

(assert (=> b!1613391 m!1931819))

(assert (=> b!1613391 m!1931821))

(declare-fun m!1931829 () Bool)

(assert (=> d!485612 m!1931829))

(declare-fun m!1931831 () Bool)

(assert (=> d!485612 m!1931831))

(declare-fun m!1931833 () Bool)

(assert (=> d!485612 m!1931833))

(assert (=> d!485612 m!1930939))

(declare-fun m!1931835 () Bool)

(assert (=> d!485612 m!1931835))

(declare-fun m!1931837 () Bool)

(assert (=> d!485612 m!1931837))

(declare-fun m!1931839 () Bool)

(assert (=> d!485612 m!1931839))

(declare-fun m!1931841 () Bool)

(assert (=> d!485612 m!1931841))

(assert (=> d!485612 m!1931003))

(assert (=> d!485612 m!1931833))

(declare-fun m!1931843 () Bool)

(assert (=> d!485612 m!1931843))

(assert (=> d!485612 m!1930959))

(declare-fun m!1931845 () Bool)

(assert (=> d!485612 m!1931845))

(assert (=> d!485612 m!1931835))

(declare-fun m!1931847 () Bool)

(assert (=> d!485612 m!1931847))

(assert (=> d!485612 m!1930959))

(assert (=> d!485612 m!1931835))

(assert (=> d!485612 m!1931819))

(assert (=> d!485612 m!1931819))

(assert (=> d!485612 m!1931821))

(assert (=> d!485612 m!1931809))

(declare-fun m!1931849 () Bool)

(assert (=> d!485612 m!1931849))

(declare-fun m!1931851 () Bool)

(assert (=> d!485612 m!1931851))

(assert (=> d!485612 m!1931809))

(assert (=> d!485612 m!1931839))

(assert (=> d!485612 m!1930907))

(assert (=> d!485612 m!1930907))

(assert (=> d!485612 m!1930909))

(assert (=> d!485612 m!1931003))

(declare-fun m!1931853 () Bool)

(assert (=> d!485612 m!1931853))

(assert (=> d!485612 m!1930959))

(assert (=> b!1612968 d!485612))

(declare-fun d!485636 () Bool)

(declare-fun lt!576650 () Bool)

(declare-fun e!1034775 () Bool)

(assert (=> d!485636 (= lt!576650 e!1034775)))

(declare-fun res!719683 () Bool)

(assert (=> d!485636 (=> (not res!719683) (not e!1034775))))

(assert (=> d!485636 (= res!719683 (= (list!6880 (_1!9966 (lex!1216 thiss!17113 rules!1846 (print!1263 thiss!17113 (singletonSeq!1485 (h!23022 tokens!457)))))) (list!6880 (singletonSeq!1485 (h!23022 tokens!457)))))))

(declare-fun e!1034774 () Bool)

(assert (=> d!485636 (= lt!576650 e!1034774)))

(declare-fun res!719684 () Bool)

(assert (=> d!485636 (=> (not res!719684) (not e!1034774))))

(declare-fun lt!576651 () tuple2!17128)

(assert (=> d!485636 (= res!719684 (= (size!14165 (_1!9966 lt!576651)) 1))))

(assert (=> d!485636 (= lt!576651 (lex!1216 thiss!17113 rules!1846 (print!1263 thiss!17113 (singletonSeq!1485 (h!23022 tokens!457)))))))

(assert (=> d!485636 (not (isEmpty!10645 rules!1846))))

(assert (=> d!485636 (= (rulesProduceIndividualToken!1384 thiss!17113 rules!1846 (h!23022 tokens!457)) lt!576650)))

(declare-fun b!1613401 () Bool)

(declare-fun res!719682 () Bool)

(assert (=> b!1613401 (=> (not res!719682) (not e!1034774))))

(assert (=> b!1613401 (= res!719682 (= (apply!4419 (_1!9966 lt!576651) 0) (h!23022 tokens!457)))))

(declare-fun b!1613402 () Bool)

(assert (=> b!1613402 (= e!1034774 (isEmpty!10656 (_2!9966 lt!576651)))))

(declare-fun b!1613403 () Bool)

(assert (=> b!1613403 (= e!1034775 (isEmpty!10656 (_2!9966 (lex!1216 thiss!17113 rules!1846 (print!1263 thiss!17113 (singletonSeq!1485 (h!23022 tokens!457)))))))))

(assert (= (and d!485636 res!719684) b!1613401))

(assert (= (and b!1613401 res!719682) b!1613402))

(assert (= (and d!485636 res!719683) b!1613403))

(assert (=> d!485636 m!1930935))

(declare-fun m!1931855 () Bool)

(assert (=> d!485636 m!1931855))

(declare-fun m!1931857 () Bool)

(assert (=> d!485636 m!1931857))

(declare-fun m!1931859 () Bool)

(assert (=> d!485636 m!1931859))

(assert (=> d!485636 m!1930939))

(declare-fun m!1931861 () Bool)

(assert (=> d!485636 m!1931861))

(assert (=> d!485636 m!1930935))

(assert (=> d!485636 m!1931857))

(assert (=> d!485636 m!1930935))

(declare-fun m!1931863 () Bool)

(assert (=> d!485636 m!1931863))

(declare-fun m!1931865 () Bool)

(assert (=> b!1613401 m!1931865))

(declare-fun m!1931867 () Bool)

(assert (=> b!1613402 m!1931867))

(assert (=> b!1613403 m!1930935))

(assert (=> b!1613403 m!1930935))

(assert (=> b!1613403 m!1931857))

(assert (=> b!1613403 m!1931857))

(assert (=> b!1613403 m!1931859))

(declare-fun m!1931869 () Bool)

(assert (=> b!1613403 m!1931869))

(assert (=> b!1612969 d!485636))

(declare-fun d!485638 () Bool)

(assert (=> d!485638 (= (list!6880 (_1!9966 lt!576228)) (list!6884 (c!262815 (_1!9966 lt!576228))))))

(declare-fun bs!393982 () Bool)

(assert (= bs!393982 d!485638))

(declare-fun m!1931871 () Bool)

(assert (=> bs!393982 m!1931871))

(assert (=> b!1612990 d!485638))

(declare-fun d!485640 () Bool)

(declare-fun e!1034833 () Bool)

(assert (=> d!485640 e!1034833))

(declare-fun res!719702 () Bool)

(assert (=> d!485640 (=> (not res!719702) (not e!1034833))))

(assert (=> d!485640 (= res!719702 (= (list!6880 (_1!9966 (lex!1216 thiss!17113 rules!1846 (print!1263 thiss!17113 (seqFromList!1955 (t!148080 tokens!457)))))) (t!148080 tokens!457)))))

(declare-fun lt!576794 () Unit!28303)

(declare-fun e!1034832 () Unit!28303)

(assert (=> d!485640 (= lt!576794 e!1034832)))

(declare-fun c!262891 () Bool)

(assert (=> d!485640 (= c!262891 (or ((_ is Nil!17621) (t!148080 tokens!457)) ((_ is Nil!17621) (t!148080 (t!148080 tokens!457)))))))

(assert (=> d!485640 (not (isEmpty!10645 rules!1846))))

(assert (=> d!485640 (= (theoremInvertabilityWhenTokenListSeparable!177 thiss!17113 rules!1846 (t!148080 tokens!457)) lt!576794)))

(declare-fun b!1613479 () Bool)

(declare-fun Unit!28329 () Unit!28303)

(assert (=> b!1613479 (= e!1034832 Unit!28329)))

(declare-fun b!1613480 () Bool)

(declare-fun Unit!28330 () Unit!28303)

(assert (=> b!1613480 (= e!1034832 Unit!28330)))

(declare-fun lt!576801 () BalanceConc!11652)

(assert (=> b!1613480 (= lt!576801 (print!1263 thiss!17113 (seqFromList!1955 (t!148080 tokens!457))))))

(declare-fun lt!576810 () BalanceConc!11652)

(assert (=> b!1613480 (= lt!576810 (print!1263 thiss!17113 (seqFromList!1955 (t!148080 (t!148080 tokens!457)))))))

(declare-fun lt!576790 () tuple2!17128)

(assert (=> b!1613480 (= lt!576790 (lex!1216 thiss!17113 rules!1846 lt!576810))))

(declare-fun lt!576803 () List!17690)

(assert (=> b!1613480 (= lt!576803 (list!6879 (charsOf!1752 (h!23022 (t!148080 tokens!457)))))))

(declare-fun lt!576809 () List!17690)

(assert (=> b!1613480 (= lt!576809 (list!6879 lt!576810))))

(declare-fun lt!576800 () Unit!28303)

(assert (=> b!1613480 (= lt!576800 (lemmaConcatTwoListThenFirstIsPrefix!888 lt!576803 lt!576809))))

(assert (=> b!1613480 (isPrefix!1363 lt!576803 (++!4641 lt!576803 lt!576809))))

(declare-fun lt!576813 () Unit!28303)

(assert (=> b!1613480 (= lt!576813 lt!576800)))

(declare-fun lt!576804 () Unit!28303)

(assert (=> b!1613480 (= lt!576804 (theoremInvertabilityWhenTokenListSeparable!177 thiss!17113 rules!1846 (t!148080 (t!148080 tokens!457))))))

(declare-fun lt!576802 () Unit!28303)

(assert (=> b!1613480 (= lt!576802 (seqFromListBHdTlConstructive!180 (h!23022 (t!148080 (t!148080 tokens!457))) (t!148080 (t!148080 (t!148080 tokens!457))) (_1!9966 lt!576790)))))

(assert (=> b!1613480 (= (list!6880 (_1!9966 lt!576790)) (list!6880 (prepend!609 (seqFromList!1955 (t!148080 (t!148080 (t!148080 tokens!457)))) (h!23022 (t!148080 (t!148080 tokens!457))))))))

(declare-fun lt!576792 () Unit!28303)

(assert (=> b!1613480 (= lt!576792 lt!576802)))

(declare-fun lt!576795 () Option!3209)

(assert (=> b!1613480 (= lt!576795 (maxPrefix!1296 thiss!17113 rules!1846 (list!6879 lt!576801)))))

(assert (=> b!1613480 (= (print!1263 thiss!17113 (singletonSeq!1485 (h!23022 (t!148080 tokens!457)))) (printTailRec!785 thiss!17113 (singletonSeq!1485 (h!23022 (t!148080 tokens!457))) 0 (BalanceConc!11653 Empty!5854)))))

(declare-fun lt!576807 () Unit!28303)

(declare-fun Unit!28331 () Unit!28303)

(assert (=> b!1613480 (= lt!576807 Unit!28331)))

(declare-fun lt!576797 () Unit!28303)

(assert (=> b!1613480 (= lt!576797 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!306 thiss!17113 rules!1846 (list!6879 (charsOf!1752 (h!23022 (t!148080 tokens!457)))) (list!6879 lt!576810)))))

(assert (=> b!1613480 (= (list!6879 (charsOf!1752 (h!23022 (t!148080 tokens!457)))) (originalCharacters!3917 (h!23022 (t!148080 tokens!457))))))

(declare-fun lt!576805 () Unit!28303)

(declare-fun Unit!28332 () Unit!28303)

(assert (=> b!1613480 (= lt!576805 Unit!28332)))

(assert (=> b!1613480 (= (list!6879 (singletonSeq!1484 (apply!4412 (charsOf!1752 (h!23022 (t!148080 (t!148080 tokens!457)))) 0))) (Cons!17620 (head!3318 (originalCharacters!3917 (h!23022 (t!148080 (t!148080 tokens!457))))) Nil!17620))))

(declare-fun lt!576812 () Unit!28303)

(declare-fun Unit!28333 () Unit!28303)

(assert (=> b!1613480 (= lt!576812 Unit!28333)))

(assert (=> b!1613480 (= (list!6879 (singletonSeq!1484 (apply!4412 (charsOf!1752 (h!23022 (t!148080 (t!148080 tokens!457)))) 0))) (Cons!17620 (head!3318 (list!6879 lt!576810)) Nil!17620))))

(declare-fun lt!576799 () Unit!28303)

(declare-fun Unit!28334 () Unit!28303)

(assert (=> b!1613480 (= lt!576799 Unit!28334)))

(assert (=> b!1613480 (= (list!6879 (singletonSeq!1484 (apply!4412 (charsOf!1752 (h!23022 (t!148080 (t!148080 tokens!457)))) 0))) (Cons!17620 (head!3319 lt!576810) Nil!17620))))

(declare-fun lt!576798 () Unit!28303)

(declare-fun Unit!28335 () Unit!28303)

(assert (=> b!1613480 (= lt!576798 Unit!28335)))

(assert (=> b!1613480 (isDefined!2576 (maxPrefix!1296 thiss!17113 rules!1846 (originalCharacters!3917 (h!23022 (t!148080 tokens!457)))))))

(declare-fun lt!576808 () Unit!28303)

(declare-fun Unit!28336 () Unit!28303)

(assert (=> b!1613480 (= lt!576808 Unit!28336)))

(assert (=> b!1613480 (isDefined!2576 (maxPrefix!1296 thiss!17113 rules!1846 (list!6879 (charsOf!1752 (h!23022 (t!148080 tokens!457))))))))

(declare-fun lt!576793 () Unit!28303)

(declare-fun Unit!28337 () Unit!28303)

(assert (=> b!1613480 (= lt!576793 Unit!28337)))

(declare-fun lt!576788 () Unit!28303)

(declare-fun Unit!28338 () Unit!28303)

(assert (=> b!1613480 (= lt!576788 Unit!28338)))

(assert (=> b!1613480 (= (_1!9965 (get!5051 (maxPrefix!1296 thiss!17113 rules!1846 (list!6879 (charsOf!1752 (h!23022 (t!148080 tokens!457))))))) (h!23022 (t!148080 tokens!457)))))

(declare-fun lt!576791 () Unit!28303)

(declare-fun Unit!28339 () Unit!28303)

(assert (=> b!1613480 (= lt!576791 Unit!28339)))

(assert (=> b!1613480 (isEmpty!10655 (_2!9965 (get!5051 (maxPrefix!1296 thiss!17113 rules!1846 (list!6879 (charsOf!1752 (h!23022 (t!148080 tokens!457))))))))))

(declare-fun lt!576789 () Unit!28303)

(declare-fun Unit!28340 () Unit!28303)

(assert (=> b!1613480 (= lt!576789 Unit!28340)))

(assert (=> b!1613480 (matchR!1940 (regex!3103 (rule!4923 (h!23022 (t!148080 tokens!457)))) (list!6879 (charsOf!1752 (h!23022 (t!148080 tokens!457)))))))

(declare-fun lt!576811 () Unit!28303)

(declare-fun Unit!28341 () Unit!28303)

(assert (=> b!1613480 (= lt!576811 Unit!28341)))

(assert (=> b!1613480 (= (rule!4923 (h!23022 (t!148080 tokens!457))) (rule!4923 (h!23022 (t!148080 tokens!457))))))

(declare-fun lt!576806 () Unit!28303)

(declare-fun Unit!28342 () Unit!28303)

(assert (=> b!1613480 (= lt!576806 Unit!28342)))

(declare-fun lt!576796 () Unit!28303)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!90 (LexerInterface!2732 List!17692 Token!5772 Rule!6006 List!17690) Unit!28303)

(assert (=> b!1613480 (= lt!576796 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!90 thiss!17113 rules!1846 (h!23022 (t!148080 tokens!457)) (rule!4923 (h!23022 (t!148080 tokens!457))) (list!6879 lt!576810)))))

(declare-fun b!1613481 () Bool)

(assert (=> b!1613481 (= e!1034833 (isEmpty!10656 (_2!9966 (lex!1216 thiss!17113 rules!1846 (print!1263 thiss!17113 (seqFromList!1955 (t!148080 tokens!457)))))))))

(assert (= (and d!485640 c!262891) b!1613479))

(assert (= (and d!485640 (not c!262891)) b!1613480))

(assert (= (and d!485640 res!719702) b!1613481))

(assert (=> d!485640 m!1930939))

(assert (=> d!485640 m!1930967))

(declare-fun m!1931975 () Bool)

(assert (=> d!485640 m!1931975))

(declare-fun m!1931977 () Bool)

(assert (=> d!485640 m!1931977))

(assert (=> d!485640 m!1930967))

(assert (=> d!485640 m!1931975))

(declare-fun m!1931979 () Bool)

(assert (=> d!485640 m!1931979))

(assert (=> b!1613480 m!1930967))

(declare-fun m!1931981 () Bool)

(assert (=> b!1613480 m!1931981))

(declare-fun m!1931983 () Bool)

(assert (=> b!1613480 m!1931983))

(assert (=> b!1613480 m!1930967))

(assert (=> b!1613480 m!1931975))

(declare-fun m!1931985 () Bool)

(assert (=> b!1613480 m!1931985))

(declare-fun m!1931987 () Bool)

(assert (=> b!1613480 m!1931987))

(assert (=> b!1613480 m!1931981))

(declare-fun m!1931989 () Bool)

(assert (=> b!1613480 m!1931989))

(declare-fun m!1931991 () Bool)

(assert (=> b!1613480 m!1931991))

(declare-fun m!1931993 () Bool)

(assert (=> b!1613480 m!1931993))

(declare-fun m!1931995 () Bool)

(assert (=> b!1613480 m!1931995))

(declare-fun m!1931997 () Bool)

(assert (=> b!1613480 m!1931997))

(assert (=> b!1613480 m!1931625))

(assert (=> b!1613480 m!1931981))

(declare-fun m!1931999 () Bool)

(assert (=> b!1613480 m!1931999))

(assert (=> b!1613480 m!1930895))

(assert (=> b!1613480 m!1931997))

(declare-fun m!1932001 () Bool)

(assert (=> b!1613480 m!1932001))

(declare-fun m!1932003 () Bool)

(assert (=> b!1613480 m!1932003))

(declare-fun m!1932005 () Bool)

(assert (=> b!1613480 m!1932005))

(declare-fun m!1932007 () Bool)

(assert (=> b!1613480 m!1932007))

(assert (=> b!1613480 m!1931991))

(assert (=> b!1613480 m!1932007))

(assert (=> b!1613480 m!1931995))

(assert (=> b!1613480 m!1931993))

(declare-fun m!1932009 () Bool)

(assert (=> b!1613480 m!1932009))

(declare-fun m!1932011 () Bool)

(assert (=> b!1613480 m!1932011))

(declare-fun m!1932013 () Bool)

(assert (=> b!1613480 m!1932013))

(declare-fun m!1932015 () Bool)

(assert (=> b!1613480 m!1932015))

(declare-fun m!1932017 () Bool)

(assert (=> b!1613480 m!1932017))

(assert (=> b!1613480 m!1931625))

(assert (=> b!1613480 m!1931985))

(declare-fun m!1932019 () Bool)

(assert (=> b!1613480 m!1932019))

(declare-fun m!1932021 () Bool)

(assert (=> b!1613480 m!1932021))

(declare-fun m!1932023 () Bool)

(assert (=> b!1613480 m!1932023))

(assert (=> b!1613480 m!1930993))

(assert (=> b!1613480 m!1932003))

(declare-fun m!1932025 () Bool)

(assert (=> b!1613480 m!1932025))

(assert (=> b!1613480 m!1930993))

(declare-fun m!1932027 () Bool)

(assert (=> b!1613480 m!1932027))

(declare-fun m!1932029 () Bool)

(assert (=> b!1613480 m!1932029))

(declare-fun m!1932031 () Bool)

(assert (=> b!1613480 m!1932031))

(assert (=> b!1613480 m!1931981))

(assert (=> b!1613480 m!1930895))

(assert (=> b!1613480 m!1931625))

(assert (=> b!1613480 m!1932015))

(declare-fun m!1932033 () Bool)

(assert (=> b!1613480 m!1932033))

(declare-fun m!1932035 () Bool)

(assert (=> b!1613480 m!1932035))

(assert (=> b!1613480 m!1932019))

(declare-fun m!1932037 () Bool)

(assert (=> b!1613480 m!1932037))

(assert (=> b!1613480 m!1932019))

(declare-fun m!1932039 () Bool)

(assert (=> b!1613480 m!1932039))

(assert (=> b!1613480 m!1931985))

(declare-fun m!1932041 () Bool)

(assert (=> b!1613480 m!1932041))

(assert (=> b!1613480 m!1931625))

(declare-fun m!1932043 () Bool)

(assert (=> b!1613480 m!1932043))

(assert (=> b!1613480 m!1932029))

(declare-fun m!1932045 () Bool)

(assert (=> b!1613480 m!1932045))

(assert (=> b!1613481 m!1930967))

(assert (=> b!1613481 m!1930967))

(assert (=> b!1613481 m!1931975))

(assert (=> b!1613481 m!1931975))

(assert (=> b!1613481 m!1931977))

(declare-fun m!1932047 () Bool)

(assert (=> b!1613481 m!1932047))

(assert (=> b!1612990 d!485640))

(declare-fun d!485646 () Bool)

(declare-fun e!1034840 () Bool)

(assert (=> d!485646 e!1034840))

(declare-fun res!719712 () Bool)

(assert (=> d!485646 (=> res!719712 e!1034840)))

(declare-fun lt!576816 () Bool)

(assert (=> d!485646 (= res!719712 (not lt!576816))))

(declare-fun e!1034841 () Bool)

(assert (=> d!485646 (= lt!576816 e!1034841)))

(declare-fun res!719711 () Bool)

(assert (=> d!485646 (=> res!719711 e!1034841)))

(assert (=> d!485646 (= res!719711 ((_ is Nil!17620) lt!576221))))

(assert (=> d!485646 (= (isPrefix!1363 lt!576221 lt!576230) lt!576816)))

(declare-fun b!1613492 () Bool)

(declare-fun e!1034842 () Bool)

(assert (=> b!1613492 (= e!1034842 (isPrefix!1363 (tail!2322 lt!576221) (tail!2322 lt!576230)))))

(declare-fun b!1613493 () Bool)

(assert (=> b!1613493 (= e!1034840 (>= (size!14166 lt!576230) (size!14166 lt!576221)))))

(declare-fun b!1613491 () Bool)

(declare-fun res!719713 () Bool)

(assert (=> b!1613491 (=> (not res!719713) (not e!1034842))))

(assert (=> b!1613491 (= res!719713 (= (head!3318 lt!576221) (head!3318 lt!576230)))))

(declare-fun b!1613490 () Bool)

(assert (=> b!1613490 (= e!1034841 e!1034842)))

(declare-fun res!719714 () Bool)

(assert (=> b!1613490 (=> (not res!719714) (not e!1034842))))

(assert (=> b!1613490 (= res!719714 (not ((_ is Nil!17620) lt!576230)))))

(assert (= (and d!485646 (not res!719711)) b!1613490))

(assert (= (and b!1613490 res!719714) b!1613491))

(assert (= (and b!1613491 res!719713) b!1613492))

(assert (= (and d!485646 (not res!719712)) b!1613493))

(declare-fun m!1932049 () Bool)

(assert (=> b!1613492 m!1932049))

(declare-fun m!1932051 () Bool)

(assert (=> b!1613492 m!1932051))

(assert (=> b!1613492 m!1932049))

(assert (=> b!1613492 m!1932051))

(declare-fun m!1932053 () Bool)

(assert (=> b!1613492 m!1932053))

(declare-fun m!1932055 () Bool)

(assert (=> b!1613493 m!1932055))

(assert (=> b!1613493 m!1931573))

(declare-fun m!1932057 () Bool)

(assert (=> b!1613491 m!1932057))

(declare-fun m!1932059 () Bool)

(assert (=> b!1613491 m!1932059))

(assert (=> b!1612990 d!485646))

(declare-fun d!485648 () Bool)

(assert (=> d!485648 (isPrefix!1363 lt!576221 (++!4641 lt!576221 lt!576235))))

(declare-fun lt!576819 () Unit!28303)

(declare-fun choose!9710 (List!17690 List!17690) Unit!28303)

(assert (=> d!485648 (= lt!576819 (choose!9710 lt!576221 lt!576235))))

(assert (=> d!485648 (= (lemmaConcatTwoListThenFirstIsPrefix!888 lt!576221 lt!576235) lt!576819)))

(declare-fun bs!393984 () Bool)

(assert (= bs!393984 d!485648))

(assert (=> bs!393984 m!1930959))

(assert (=> bs!393984 m!1930959))

(declare-fun m!1932061 () Bool)

(assert (=> bs!393984 m!1932061))

(declare-fun m!1932063 () Bool)

(assert (=> bs!393984 m!1932063))

(assert (=> b!1612990 d!485648))

(declare-fun d!485650 () Bool)

(assert (=> d!485650 (= (isEmpty!10645 rules!1846) ((_ is Nil!17622) rules!1846))))

(assert (=> b!1612988 d!485650))

(declare-fun d!485652 () Bool)

(declare-fun isEmpty!10657 (Option!3210) Bool)

(assert (=> d!485652 (= (isDefined!2577 (maxPrefixZipperSequence!627 thiss!17113 rules!1846 (seqFromList!1956 (originalCharacters!3917 (h!23022 tokens!457))))) (not (isEmpty!10657 (maxPrefixZipperSequence!627 thiss!17113 rules!1846 (seqFromList!1956 (originalCharacters!3917 (h!23022 tokens!457)))))))))

(declare-fun bs!393985 () Bool)

(assert (= bs!393985 d!485652))

(assert (=> bs!393985 m!1930985))

(declare-fun m!1932065 () Bool)

(assert (=> bs!393985 m!1932065))

(assert (=> b!1612989 d!485652))

(declare-fun b!1613510 () Bool)

(declare-fun e!1034855 () Bool)

(declare-fun e!1034858 () Bool)

(assert (=> b!1613510 (= e!1034855 e!1034858)))

(declare-fun res!719728 () Bool)

(assert (=> b!1613510 (=> (not res!719728) (not e!1034858))))

(declare-fun lt!576836 () Option!3210)

(declare-fun get!5053 (Option!3210) tuple2!17130)

(assert (=> b!1613510 (= res!719728 (= (_1!9967 (get!5053 lt!576836)) (_1!9965 (get!5051 (maxPrefix!1296 thiss!17113 rules!1846 (list!6879 (seqFromList!1956 (originalCharacters!3917 (h!23022 tokens!457)))))))))))

(declare-fun b!1613511 () Bool)

(declare-fun e!1034860 () Bool)

(assert (=> b!1613511 (= e!1034860 e!1034855)))

(declare-fun res!719727 () Bool)

(assert (=> b!1613511 (=> res!719727 e!1034855)))

(assert (=> b!1613511 (= res!719727 (not (isDefined!2577 lt!576836)))))

(declare-fun b!1613512 () Bool)

(declare-fun e!1034856 () Bool)

(declare-fun e!1034859 () Bool)

(assert (=> b!1613512 (= e!1034856 e!1034859)))

(declare-fun res!719729 () Bool)

(assert (=> b!1613512 (=> (not res!719729) (not e!1034859))))

(declare-fun maxPrefixZipper!286 (LexerInterface!2732 List!17692 List!17690) Option!3209)

(assert (=> b!1613512 (= res!719729 (= (_1!9967 (get!5053 lt!576836)) (_1!9965 (get!5051 (maxPrefixZipper!286 thiss!17113 rules!1846 (list!6879 (seqFromList!1956 (originalCharacters!3917 (h!23022 tokens!457)))))))))))

(declare-fun b!1613513 () Bool)

(declare-fun e!1034857 () Option!3210)

(declare-fun lt!576839 () Option!3210)

(declare-fun lt!576840 () Option!3210)

(assert (=> b!1613513 (= e!1034857 (ite (and ((_ is None!3209) lt!576839) ((_ is None!3209) lt!576840)) None!3209 (ite ((_ is None!3209) lt!576840) lt!576839 (ite ((_ is None!3209) lt!576839) lt!576840 (ite (>= (size!14160 (_1!9967 (v!24180 lt!576839))) (size!14160 (_1!9967 (v!24180 lt!576840)))) lt!576839 lt!576840)))))))

(declare-fun call!104803 () Option!3210)

(assert (=> b!1613513 (= lt!576839 call!104803)))

(assert (=> b!1613513 (= lt!576840 (maxPrefixZipperSequence!627 thiss!17113 (t!148081 rules!1846) (seqFromList!1956 (originalCharacters!3917 (h!23022 tokens!457)))))))

(declare-fun b!1613514 () Bool)

(assert (=> b!1613514 (= e!1034858 (= (list!6879 (_2!9967 (get!5053 lt!576836))) (_2!9965 (get!5051 (maxPrefix!1296 thiss!17113 rules!1846 (list!6879 (seqFromList!1956 (originalCharacters!3917 (h!23022 tokens!457)))))))))))

(declare-fun b!1613515 () Bool)

(assert (=> b!1613515 (= e!1034857 call!104803)))

(declare-fun b!1613516 () Bool)

(assert (=> b!1613516 (= e!1034859 (= (list!6879 (_2!9967 (get!5053 lt!576836))) (_2!9965 (get!5051 (maxPrefixZipper!286 thiss!17113 rules!1846 (list!6879 (seqFromList!1956 (originalCharacters!3917 (h!23022 tokens!457)))))))))))

(declare-fun d!485654 () Bool)

(assert (=> d!485654 e!1034860))

(declare-fun res!719732 () Bool)

(assert (=> d!485654 (=> (not res!719732) (not e!1034860))))

(assert (=> d!485654 (= res!719732 (= (isDefined!2577 lt!576836) (isDefined!2576 (maxPrefixZipper!286 thiss!17113 rules!1846 (list!6879 (seqFromList!1956 (originalCharacters!3917 (h!23022 tokens!457))))))))))

(assert (=> d!485654 (= lt!576836 e!1034857)))

(declare-fun c!262894 () Bool)

(assert (=> d!485654 (= c!262894 (and ((_ is Cons!17622) rules!1846) ((_ is Nil!17622) (t!148081 rules!1846))))))

(declare-fun lt!576837 () Unit!28303)

(declare-fun lt!576838 () Unit!28303)

(assert (=> d!485654 (= lt!576837 lt!576838)))

(declare-fun lt!576834 () List!17690)

(declare-fun lt!576835 () List!17690)

(assert (=> d!485654 (isPrefix!1363 lt!576834 lt!576835)))

(assert (=> d!485654 (= lt!576838 (lemmaIsPrefixRefl!940 lt!576834 lt!576835))))

(assert (=> d!485654 (= lt!576835 (list!6879 (seqFromList!1956 (originalCharacters!3917 (h!23022 tokens!457)))))))

(assert (=> d!485654 (= lt!576834 (list!6879 (seqFromList!1956 (originalCharacters!3917 (h!23022 tokens!457)))))))

(assert (=> d!485654 (rulesValidInductive!946 thiss!17113 rules!1846)))

(assert (=> d!485654 (= (maxPrefixZipperSequence!627 thiss!17113 rules!1846 (seqFromList!1956 (originalCharacters!3917 (h!23022 tokens!457)))) lt!576836)))

(declare-fun bm!104798 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!296 (LexerInterface!2732 Rule!6006 BalanceConc!11652) Option!3210)

(assert (=> bm!104798 (= call!104803 (maxPrefixOneRuleZipperSequence!296 thiss!17113 (h!23023 rules!1846) (seqFromList!1956 (originalCharacters!3917 (h!23022 tokens!457)))))))

(declare-fun b!1613517 () Bool)

(declare-fun res!719730 () Bool)

(assert (=> b!1613517 (=> (not res!719730) (not e!1034860))))

(assert (=> b!1613517 (= res!719730 e!1034856)))

(declare-fun res!719731 () Bool)

(assert (=> b!1613517 (=> res!719731 e!1034856)))

(assert (=> b!1613517 (= res!719731 (not (isDefined!2577 lt!576836)))))

(assert (= (and d!485654 c!262894) b!1613515))

(assert (= (and d!485654 (not c!262894)) b!1613513))

(assert (= (or b!1613515 b!1613513) bm!104798))

(assert (= (and d!485654 res!719732) b!1613517))

(assert (= (and b!1613517 (not res!719731)) b!1613512))

(assert (= (and b!1613512 res!719729) b!1613516))

(assert (= (and b!1613517 res!719730) b!1613511))

(assert (= (and b!1613511 (not res!719727)) b!1613510))

(assert (= (and b!1613510 res!719728) b!1613514))

(declare-fun m!1932067 () Bool)

(assert (=> b!1613512 m!1932067))

(assert (=> b!1613512 m!1930983))

(declare-fun m!1932069 () Bool)

(assert (=> b!1613512 m!1932069))

(assert (=> b!1613512 m!1932069))

(declare-fun m!1932071 () Bool)

(assert (=> b!1613512 m!1932071))

(assert (=> b!1613512 m!1932071))

(declare-fun m!1932073 () Bool)

(assert (=> b!1613512 m!1932073))

(assert (=> b!1613513 m!1930983))

(declare-fun m!1932075 () Bool)

(assert (=> b!1613513 m!1932075))

(assert (=> b!1613514 m!1932067))

(assert (=> b!1613514 m!1930983))

(assert (=> b!1613514 m!1932069))

(declare-fun m!1932077 () Bool)

(assert (=> b!1613514 m!1932077))

(assert (=> b!1613514 m!1932069))

(declare-fun m!1932079 () Bool)

(assert (=> b!1613514 m!1932079))

(assert (=> b!1613514 m!1932079))

(declare-fun m!1932081 () Bool)

(assert (=> b!1613514 m!1932081))

(assert (=> d!485654 m!1930915))

(assert (=> d!485654 m!1932071))

(declare-fun m!1932083 () Bool)

(assert (=> d!485654 m!1932083))

(assert (=> d!485654 m!1930983))

(assert (=> d!485654 m!1932069))

(declare-fun m!1932085 () Bool)

(assert (=> d!485654 m!1932085))

(declare-fun m!1932087 () Bool)

(assert (=> d!485654 m!1932087))

(declare-fun m!1932089 () Bool)

(assert (=> d!485654 m!1932089))

(assert (=> d!485654 m!1932069))

(assert (=> d!485654 m!1932071))

(assert (=> bm!104798 m!1930983))

(declare-fun m!1932091 () Bool)

(assert (=> bm!104798 m!1932091))

(assert (=> b!1613516 m!1932067))

(assert (=> b!1613516 m!1930983))

(assert (=> b!1613516 m!1932069))

(assert (=> b!1613516 m!1932077))

(assert (=> b!1613516 m!1932071))

(assert (=> b!1613516 m!1932073))

(assert (=> b!1613516 m!1932069))

(assert (=> b!1613516 m!1932071))

(assert (=> b!1613517 m!1932085))

(assert (=> b!1613511 m!1932085))

(assert (=> b!1613510 m!1932067))

(assert (=> b!1613510 m!1930983))

(assert (=> b!1613510 m!1932069))

(assert (=> b!1613510 m!1932069))

(assert (=> b!1613510 m!1932079))

(assert (=> b!1613510 m!1932079))

(assert (=> b!1613510 m!1932081))

(assert (=> b!1612989 d!485654))

(declare-fun d!485656 () Bool)

(assert (=> d!485656 (= (seqFromList!1956 (originalCharacters!3917 (h!23022 tokens!457))) (fromListB!854 (originalCharacters!3917 (h!23022 tokens!457))))))

(declare-fun bs!393986 () Bool)

(assert (= bs!393986 d!485656))

(declare-fun m!1932093 () Bool)

(assert (=> bs!393986 m!1932093))

(assert (=> b!1612989 d!485656))

(declare-fun d!485658 () Bool)

(assert (=> d!485658 true))

(declare-fun lt!576843 () Bool)

(declare-fun lambda!67062 () Int)

(declare-fun forall!4052 (List!17692 Int) Bool)

(assert (=> d!485658 (= lt!576843 (forall!4052 rules!1846 lambda!67062))))

(declare-fun e!1034866 () Bool)

(assert (=> d!485658 (= lt!576843 e!1034866)))

(declare-fun res!719738 () Bool)

(assert (=> d!485658 (=> res!719738 e!1034866)))

(assert (=> d!485658 (= res!719738 (not ((_ is Cons!17622) rules!1846)))))

(assert (=> d!485658 (= (rulesValidInductive!946 thiss!17113 rules!1846) lt!576843)))

(declare-fun b!1613522 () Bool)

(declare-fun e!1034865 () Bool)

(assert (=> b!1613522 (= e!1034866 e!1034865)))

(declare-fun res!719737 () Bool)

(assert (=> b!1613522 (=> (not res!719737) (not e!1034865))))

(declare-fun ruleValid!725 (LexerInterface!2732 Rule!6006) Bool)

(assert (=> b!1613522 (= res!719737 (ruleValid!725 thiss!17113 (h!23023 rules!1846)))))

(declare-fun b!1613523 () Bool)

(assert (=> b!1613523 (= e!1034865 (rulesValidInductive!946 thiss!17113 (t!148081 rules!1846)))))

(assert (= (and d!485658 (not res!719738)) b!1613522))

(assert (= (and b!1613522 res!719737) b!1613523))

(declare-fun m!1932095 () Bool)

(assert (=> d!485658 m!1932095))

(declare-fun m!1932097 () Bool)

(assert (=> b!1613522 m!1932097))

(declare-fun m!1932099 () Bool)

(assert (=> b!1613523 m!1932099))

(assert (=> b!1612978 d!485658))

(declare-fun d!485660 () Bool)

(assert (=> d!485660 (= (isDefined!2576 (maxPrefix!1296 thiss!17113 rules!1846 (originalCharacters!3917 (h!23022 tokens!457)))) (not (isEmpty!10654 (maxPrefix!1296 thiss!17113 rules!1846 (originalCharacters!3917 (h!23022 tokens!457))))))))

(declare-fun bs!393987 () Bool)

(assert (= bs!393987 d!485660))

(assert (=> bs!393987 m!1930917))

(declare-fun m!1932101 () Bool)

(assert (=> bs!393987 m!1932101))

(assert (=> b!1612978 d!485660))

(declare-fun b!1613526 () Bool)

(declare-fun e!1034868 () Bool)

(declare-fun e!1034867 () Bool)

(assert (=> b!1613526 (= e!1034868 e!1034867)))

(declare-fun res!719745 () Bool)

(assert (=> b!1613526 (=> (not res!719745) (not e!1034867))))

(declare-fun lt!576848 () Option!3209)

(assert (=> b!1613526 (= res!719745 (isDefined!2576 lt!576848))))

(declare-fun b!1613527 () Bool)

(declare-fun res!719740 () Bool)

(assert (=> b!1613527 (=> (not res!719740) (not e!1034867))))

(assert (=> b!1613527 (= res!719740 (matchR!1940 (regex!3103 (rule!4923 (_1!9965 (get!5051 lt!576848)))) (list!6879 (charsOf!1752 (_1!9965 (get!5051 lt!576848))))))))

(declare-fun b!1613528 () Bool)

(declare-fun e!1034869 () Option!3209)

(declare-fun call!104804 () Option!3209)

(assert (=> b!1613528 (= e!1034869 call!104804)))

(declare-fun b!1613529 () Bool)

(declare-fun lt!576844 () Option!3209)

(declare-fun lt!576846 () Option!3209)

(assert (=> b!1613529 (= e!1034869 (ite (and ((_ is None!3208) lt!576844) ((_ is None!3208) lt!576846)) None!3208 (ite ((_ is None!3208) lt!576846) lt!576844 (ite ((_ is None!3208) lt!576844) lt!576846 (ite (>= (size!14160 (_1!9965 (v!24179 lt!576844))) (size!14160 (_1!9965 (v!24179 lt!576846)))) lt!576844 lt!576846)))))))

(assert (=> b!1613529 (= lt!576844 call!104804)))

(assert (=> b!1613529 (= lt!576846 (maxPrefix!1296 thiss!17113 (t!148081 rules!1846) (originalCharacters!3917 (h!23022 tokens!457))))))

(declare-fun b!1613530 () Bool)

(declare-fun res!719739 () Bool)

(assert (=> b!1613530 (=> (not res!719739) (not e!1034867))))

(assert (=> b!1613530 (= res!719739 (= (value!98108 (_1!9965 (get!5051 lt!576848))) (apply!4417 (transformation!3103 (rule!4923 (_1!9965 (get!5051 lt!576848)))) (seqFromList!1956 (originalCharacters!3917 (_1!9965 (get!5051 lt!576848)))))))))

(declare-fun b!1613531 () Bool)

(declare-fun res!719742 () Bool)

(assert (=> b!1613531 (=> (not res!719742) (not e!1034867))))

(assert (=> b!1613531 (= res!719742 (= (list!6879 (charsOf!1752 (_1!9965 (get!5051 lt!576848)))) (originalCharacters!3917 (_1!9965 (get!5051 lt!576848)))))))

(declare-fun b!1613532 () Bool)

(declare-fun res!719741 () Bool)

(assert (=> b!1613532 (=> (not res!719741) (not e!1034867))))

(assert (=> b!1613532 (= res!719741 (= (++!4641 (list!6879 (charsOf!1752 (_1!9965 (get!5051 lt!576848)))) (_2!9965 (get!5051 lt!576848))) (originalCharacters!3917 (h!23022 tokens!457))))))

(declare-fun d!485662 () Bool)

(assert (=> d!485662 e!1034868))

(declare-fun res!719743 () Bool)

(assert (=> d!485662 (=> res!719743 e!1034868)))

(assert (=> d!485662 (= res!719743 (isEmpty!10654 lt!576848))))

(assert (=> d!485662 (= lt!576848 e!1034869)))

(declare-fun c!262895 () Bool)

(assert (=> d!485662 (= c!262895 (and ((_ is Cons!17622) rules!1846) ((_ is Nil!17622) (t!148081 rules!1846))))))

(declare-fun lt!576847 () Unit!28303)

(declare-fun lt!576845 () Unit!28303)

(assert (=> d!485662 (= lt!576847 lt!576845)))

(assert (=> d!485662 (isPrefix!1363 (originalCharacters!3917 (h!23022 tokens!457)) (originalCharacters!3917 (h!23022 tokens!457)))))

(assert (=> d!485662 (= lt!576845 (lemmaIsPrefixRefl!940 (originalCharacters!3917 (h!23022 tokens!457)) (originalCharacters!3917 (h!23022 tokens!457))))))

(assert (=> d!485662 (rulesValidInductive!946 thiss!17113 rules!1846)))

(assert (=> d!485662 (= (maxPrefix!1296 thiss!17113 rules!1846 (originalCharacters!3917 (h!23022 tokens!457))) lt!576848)))

(declare-fun b!1613533 () Bool)

(assert (=> b!1613533 (= e!1034867 (contains!3088 rules!1846 (rule!4923 (_1!9965 (get!5051 lt!576848)))))))

(declare-fun b!1613534 () Bool)

(declare-fun res!719744 () Bool)

(assert (=> b!1613534 (=> (not res!719744) (not e!1034867))))

(assert (=> b!1613534 (= res!719744 (< (size!14166 (_2!9965 (get!5051 lt!576848))) (size!14166 (originalCharacters!3917 (h!23022 tokens!457)))))))

(declare-fun bm!104799 () Bool)

(assert (=> bm!104799 (= call!104804 (maxPrefixOneRule!755 thiss!17113 (h!23023 rules!1846) (originalCharacters!3917 (h!23022 tokens!457))))))

(assert (= (and d!485662 c!262895) b!1613528))

(assert (= (and d!485662 (not c!262895)) b!1613529))

(assert (= (or b!1613528 b!1613529) bm!104799))

(assert (= (and d!485662 (not res!719743)) b!1613526))

(assert (= (and b!1613526 res!719745) b!1613531))

(assert (= (and b!1613531 res!719742) b!1613534))

(assert (= (and b!1613534 res!719744) b!1613532))

(assert (= (and b!1613532 res!719741) b!1613530))

(assert (= (and b!1613530 res!719739) b!1613527))

(assert (= (and b!1613527 res!719740) b!1613533))

(declare-fun m!1932103 () Bool)

(assert (=> b!1613527 m!1932103))

(declare-fun m!1932105 () Bool)

(assert (=> b!1613527 m!1932105))

(assert (=> b!1613527 m!1932105))

(declare-fun m!1932107 () Bool)

(assert (=> b!1613527 m!1932107))

(assert (=> b!1613527 m!1932107))

(declare-fun m!1932109 () Bool)

(assert (=> b!1613527 m!1932109))

(declare-fun m!1932111 () Bool)

(assert (=> b!1613529 m!1932111))

(declare-fun m!1932113 () Bool)

(assert (=> bm!104799 m!1932113))

(assert (=> b!1613534 m!1932103))

(declare-fun m!1932115 () Bool)

(assert (=> b!1613534 m!1932115))

(assert (=> b!1613534 m!1931731))

(assert (=> b!1613530 m!1932103))

(declare-fun m!1932117 () Bool)

(assert (=> b!1613530 m!1932117))

(assert (=> b!1613530 m!1932117))

(declare-fun m!1932119 () Bool)

(assert (=> b!1613530 m!1932119))

(declare-fun m!1932121 () Bool)

(assert (=> b!1613526 m!1932121))

(assert (=> b!1613531 m!1932103))

(assert (=> b!1613531 m!1932105))

(assert (=> b!1613531 m!1932105))

(assert (=> b!1613531 m!1932107))

(assert (=> b!1613533 m!1932103))

(declare-fun m!1932123 () Bool)

(assert (=> b!1613533 m!1932123))

(declare-fun m!1932125 () Bool)

(assert (=> d!485662 m!1932125))

(declare-fun m!1932127 () Bool)

(assert (=> d!485662 m!1932127))

(declare-fun m!1932129 () Bool)

(assert (=> d!485662 m!1932129))

(assert (=> d!485662 m!1930915))

(assert (=> b!1613532 m!1932103))

(assert (=> b!1613532 m!1932105))

(assert (=> b!1613532 m!1932105))

(assert (=> b!1613532 m!1932107))

(assert (=> b!1613532 m!1932107))

(declare-fun m!1932131 () Bool)

(assert (=> b!1613532 m!1932131))

(assert (=> b!1612978 d!485662))

(declare-fun d!485664 () Bool)

(declare-fun res!719748 () Bool)

(declare-fun e!1034872 () Bool)

(assert (=> d!485664 (=> (not res!719748) (not e!1034872))))

(declare-fun rulesValid!1108 (LexerInterface!2732 List!17692) Bool)

(assert (=> d!485664 (= res!719748 (rulesValid!1108 thiss!17113 rules!1846))))

(assert (=> d!485664 (= (rulesInvariant!2401 thiss!17113 rules!1846) e!1034872)))

(declare-fun b!1613537 () Bool)

(declare-datatypes ((List!17698 0))(
  ( (Nil!17628) (Cons!17628 (h!23029 String!20297) (t!148129 List!17698)) )
))
(declare-fun noDuplicateTag!1108 (LexerInterface!2732 List!17692 List!17698) Bool)

(assert (=> b!1613537 (= e!1034872 (noDuplicateTag!1108 thiss!17113 rules!1846 Nil!17628))))

(assert (= (and d!485664 res!719748) b!1613537))

(declare-fun m!1932133 () Bool)

(assert (=> d!485664 m!1932133))

(declare-fun m!1932135 () Bool)

(assert (=> b!1613537 m!1932135))

(assert (=> b!1612976 d!485664))

(declare-fun d!485666 () Bool)

(assert (=> d!485666 (= (inv!23028 (tag!3379 (h!23023 rules!1846))) (= (mod (str.len (value!98107 (tag!3379 (h!23023 rules!1846)))) 2) 0))))

(assert (=> b!1612966 d!485666))

(declare-fun d!485668 () Bool)

(declare-fun res!719749 () Bool)

(declare-fun e!1034873 () Bool)

(assert (=> d!485668 (=> (not res!719749) (not e!1034873))))

(assert (=> d!485668 (= res!719749 (semiInverseModEq!1180 (toChars!4385 (transformation!3103 (h!23023 rules!1846))) (toValue!4526 (transformation!3103 (h!23023 rules!1846)))))))

(assert (=> d!485668 (= (inv!23031 (transformation!3103 (h!23023 rules!1846))) e!1034873)))

(declare-fun b!1613538 () Bool)

(assert (=> b!1613538 (= e!1034873 (equivClasses!1121 (toChars!4385 (transformation!3103 (h!23023 rules!1846))) (toValue!4526 (transformation!3103 (h!23023 rules!1846)))))))

(assert (= (and d!485668 res!719749) b!1613538))

(declare-fun m!1932137 () Bool)

(assert (=> d!485668 m!1932137))

(declare-fun m!1932139 () Bool)

(assert (=> b!1613538 m!1932139))

(assert (=> b!1612966 d!485668))

(declare-fun b!1613543 () Bool)

(declare-fun e!1034876 () Bool)

(declare-fun tp_is_empty!7241 () Bool)

(declare-fun tp!470483 () Bool)

(assert (=> b!1613543 (= e!1034876 (and tp_is_empty!7241 tp!470483))))

(assert (=> b!1612964 (= tp!470419 e!1034876)))

(assert (= (and b!1612964 ((_ is Cons!17620) (originalCharacters!3917 (h!23022 tokens!457)))) b!1613543))

(declare-fun b!1613555 () Bool)

(declare-fun e!1034879 () Bool)

(declare-fun tp!470496 () Bool)

(declare-fun tp!470494 () Bool)

(assert (=> b!1613555 (= e!1034879 (and tp!470496 tp!470494))))

(declare-fun b!1613556 () Bool)

(declare-fun tp!470497 () Bool)

(assert (=> b!1613556 (= e!1034879 tp!470497)))

(assert (=> b!1612981 (= tp!470414 e!1034879)))

(declare-fun b!1613557 () Bool)

(declare-fun tp!470495 () Bool)

(declare-fun tp!470498 () Bool)

(assert (=> b!1613557 (= e!1034879 (and tp!470495 tp!470498))))

(declare-fun b!1613554 () Bool)

(assert (=> b!1613554 (= e!1034879 tp_is_empty!7241)))

(assert (= (and b!1612981 ((_ is ElementMatch!4431) (regex!3103 (rule!4923 (h!23022 tokens!457))))) b!1613554))

(assert (= (and b!1612981 ((_ is Concat!7625) (regex!3103 (rule!4923 (h!23022 tokens!457))))) b!1613555))

(assert (= (and b!1612981 ((_ is Star!4431) (regex!3103 (rule!4923 (h!23022 tokens!457))))) b!1613556))

(assert (= (and b!1612981 ((_ is Union!4431) (regex!3103 (rule!4923 (h!23022 tokens!457))))) b!1613557))

(declare-fun b!1613571 () Bool)

(declare-fun b_free!43399 () Bool)

(declare-fun b_next!44103 () Bool)

(assert (=> b!1613571 (= b_free!43399 (not b_next!44103))))

(declare-fun tp!470511 () Bool)

(declare-fun b_and!114405 () Bool)

(assert (=> b!1613571 (= tp!470511 b_and!114405)))

(declare-fun b_free!43401 () Bool)

(declare-fun b_next!44105 () Bool)

(assert (=> b!1613571 (= b_free!43401 (not b_next!44105))))

(declare-fun t!148120 () Bool)

(declare-fun tb!92751 () Bool)

(assert (=> (and b!1613571 (= (toChars!4385 (transformation!3103 (rule!4923 (h!23022 (t!148080 tokens!457))))) (toChars!4385 (transformation!3103 (rule!4923 (h!23022 (t!148080 tokens!457)))))) t!148120) tb!92751))

(declare-fun result!111780 () Bool)

(assert (= result!111780 result!111748))

(assert (=> d!485570 t!148120))

(declare-fun t!148122 () Bool)

(declare-fun tb!92753 () Bool)

(assert (=> (and b!1613571 (= (toChars!4385 (transformation!3103 (rule!4923 (h!23022 (t!148080 tokens!457))))) (toChars!4385 (transformation!3103 (rule!4923 (h!23022 tokens!457))))) t!148122) tb!92753))

(declare-fun result!111782 () Bool)

(assert (= result!111782 result!111754))

(assert (=> d!485588 t!148122))

(assert (=> b!1613330 t!148122))

(declare-fun tp!470512 () Bool)

(declare-fun b_and!114407 () Bool)

(assert (=> b!1613571 (= tp!470512 (and (=> t!148120 result!111780) (=> t!148122 result!111782) b_and!114407))))

(declare-fun e!1034896 () Bool)

(declare-fun b!1613570 () Bool)

(declare-fun tp!470510 () Bool)

(declare-fun e!1034895 () Bool)

(assert (=> b!1613570 (= e!1034895 (and tp!470510 (inv!23028 (tag!3379 (rule!4923 (h!23022 (t!148080 tokens!457))))) (inv!23031 (transformation!3103 (rule!4923 (h!23022 (t!148080 tokens!457))))) e!1034896))))

(declare-fun tp!470513 () Bool)

(declare-fun e!1034894 () Bool)

(declare-fun b!1613569 () Bool)

(assert (=> b!1613569 (= e!1034894 (and (inv!21 (value!98108 (h!23022 (t!148080 tokens!457)))) e!1034895 tp!470513))))

(declare-fun e!1034897 () Bool)

(assert (=> b!1612970 (= tp!470422 e!1034897)))

(declare-fun b!1613568 () Bool)

(declare-fun tp!470509 () Bool)

(assert (=> b!1613568 (= e!1034897 (and (inv!23032 (h!23022 (t!148080 tokens!457))) e!1034894 tp!470509))))

(assert (=> b!1613571 (= e!1034896 (and tp!470511 tp!470512))))

(assert (= b!1613570 b!1613571))

(assert (= b!1613569 b!1613570))

(assert (= b!1613568 b!1613569))

(assert (= (and b!1612970 ((_ is Cons!17621) (t!148080 tokens!457))) b!1613568))

(declare-fun m!1932141 () Bool)

(assert (=> b!1613570 m!1932141))

(declare-fun m!1932143 () Bool)

(assert (=> b!1613570 m!1932143))

(declare-fun m!1932145 () Bool)

(assert (=> b!1613569 m!1932145))

(declare-fun m!1932147 () Bool)

(assert (=> b!1613568 m!1932147))

(declare-fun b!1613582 () Bool)

(declare-fun b_free!43403 () Bool)

(declare-fun b_next!44107 () Bool)

(assert (=> b!1613582 (= b_free!43403 (not b_next!44107))))

(declare-fun tp!470525 () Bool)

(declare-fun b_and!114409 () Bool)

(assert (=> b!1613582 (= tp!470525 b_and!114409)))

(declare-fun b_free!43405 () Bool)

(declare-fun b_next!44109 () Bool)

(assert (=> b!1613582 (= b_free!43405 (not b_next!44109))))

(declare-fun t!148124 () Bool)

(declare-fun tb!92755 () Bool)

(assert (=> (and b!1613582 (= (toChars!4385 (transformation!3103 (h!23023 (t!148081 rules!1846)))) (toChars!4385 (transformation!3103 (rule!4923 (h!23022 (t!148080 tokens!457)))))) t!148124) tb!92755))

(declare-fun result!111786 () Bool)

(assert (= result!111786 result!111748))

(assert (=> d!485570 t!148124))

(declare-fun tb!92757 () Bool)

(declare-fun t!148126 () Bool)

(assert (=> (and b!1613582 (= (toChars!4385 (transformation!3103 (h!23023 (t!148081 rules!1846)))) (toChars!4385 (transformation!3103 (rule!4923 (h!23022 tokens!457))))) t!148126) tb!92757))

(declare-fun result!111788 () Bool)

(assert (= result!111788 result!111754))

(assert (=> d!485588 t!148126))

(assert (=> b!1613330 t!148126))

(declare-fun b_and!114411 () Bool)

(declare-fun tp!470523 () Bool)

(assert (=> b!1613582 (= tp!470523 (and (=> t!148124 result!111786) (=> t!148126 result!111788) b_and!114411))))

(declare-fun e!1034907 () Bool)

(assert (=> b!1613582 (= e!1034907 (and tp!470525 tp!470523))))

(declare-fun tp!470522 () Bool)

(declare-fun b!1613581 () Bool)

(declare-fun e!1034908 () Bool)

(assert (=> b!1613581 (= e!1034908 (and tp!470522 (inv!23028 (tag!3379 (h!23023 (t!148081 rules!1846)))) (inv!23031 (transformation!3103 (h!23023 (t!148081 rules!1846)))) e!1034907))))

(declare-fun b!1613580 () Bool)

(declare-fun e!1034906 () Bool)

(declare-fun tp!470524 () Bool)

(assert (=> b!1613580 (= e!1034906 (and e!1034908 tp!470524))))

(assert (=> b!1612977 (= tp!470415 e!1034906)))

(assert (= b!1613581 b!1613582))

(assert (= b!1613580 b!1613581))

(assert (= (and b!1612977 ((_ is Cons!17622) (t!148081 rules!1846))) b!1613580))

(declare-fun m!1932149 () Bool)

(assert (=> b!1613581 m!1932149))

(declare-fun m!1932151 () Bool)

(assert (=> b!1613581 m!1932151))

(declare-fun b!1613584 () Bool)

(declare-fun e!1034910 () Bool)

(declare-fun tp!470528 () Bool)

(declare-fun tp!470526 () Bool)

(assert (=> b!1613584 (= e!1034910 (and tp!470528 tp!470526))))

(declare-fun b!1613585 () Bool)

(declare-fun tp!470529 () Bool)

(assert (=> b!1613585 (= e!1034910 tp!470529)))

(assert (=> b!1612966 (= tp!470417 e!1034910)))

(declare-fun b!1613586 () Bool)

(declare-fun tp!470527 () Bool)

(declare-fun tp!470530 () Bool)

(assert (=> b!1613586 (= e!1034910 (and tp!470527 tp!470530))))

(declare-fun b!1613583 () Bool)

(assert (=> b!1613583 (= e!1034910 tp_is_empty!7241)))

(assert (= (and b!1612966 ((_ is ElementMatch!4431) (regex!3103 (h!23023 rules!1846)))) b!1613583))

(assert (= (and b!1612966 ((_ is Concat!7625) (regex!3103 (h!23023 rules!1846)))) b!1613584))

(assert (= (and b!1612966 ((_ is Star!4431) (regex!3103 (h!23023 rules!1846)))) b!1613585))

(assert (= (and b!1612966 ((_ is Union!4431) (regex!3103 (h!23023 rules!1846)))) b!1613586))

(declare-fun b_lambda!50911 () Bool)

(assert (= b_lambda!50897 (or (and b!1612967 b_free!43385 (= (toChars!4385 (transformation!3103 (rule!4923 (h!23022 tokens!457)))) (toChars!4385 (transformation!3103 (rule!4923 (h!23022 (t!148080 tokens!457))))))) (and b!1612987 b_free!43389 (= (toChars!4385 (transformation!3103 (h!23023 rules!1846))) (toChars!4385 (transformation!3103 (rule!4923 (h!23022 (t!148080 tokens!457))))))) (and b!1613571 b_free!43401) (and b!1613582 b_free!43405 (= (toChars!4385 (transformation!3103 (h!23023 (t!148081 rules!1846)))) (toChars!4385 (transformation!3103 (rule!4923 (h!23022 (t!148080 tokens!457))))))) b_lambda!50911)))

(declare-fun b_lambda!50913 () Bool)

(assert (= b_lambda!50901 (or (and b!1612967 b_free!43385) (and b!1612987 b_free!43389 (= (toChars!4385 (transformation!3103 (h!23023 rules!1846))) (toChars!4385 (transformation!3103 (rule!4923 (h!23022 tokens!457)))))) (and b!1613571 b_free!43401 (= (toChars!4385 (transformation!3103 (rule!4923 (h!23022 (t!148080 tokens!457))))) (toChars!4385 (transformation!3103 (rule!4923 (h!23022 tokens!457)))))) (and b!1613582 b_free!43405 (= (toChars!4385 (transformation!3103 (h!23023 (t!148081 rules!1846)))) (toChars!4385 (transformation!3103 (rule!4923 (h!23022 tokens!457)))))) b_lambda!50913)))

(declare-fun b_lambda!50915 () Bool)

(assert (= b_lambda!50899 (or (and b!1612967 b_free!43385) (and b!1612987 b_free!43389 (= (toChars!4385 (transformation!3103 (h!23023 rules!1846))) (toChars!4385 (transformation!3103 (rule!4923 (h!23022 tokens!457)))))) (and b!1613571 b_free!43401 (= (toChars!4385 (transformation!3103 (rule!4923 (h!23022 (t!148080 tokens!457))))) (toChars!4385 (transformation!3103 (rule!4923 (h!23022 tokens!457)))))) (and b!1613582 b_free!43405 (= (toChars!4385 (transformation!3103 (h!23023 (t!148081 rules!1846)))) (toChars!4385 (transformation!3103 (rule!4923 (h!23022 tokens!457)))))) b_lambda!50915)))

(check-sat (not b!1613586) (not b_next!44109) (not b!1613492) (not b!1613317) (not b!1613527) (not b!1613257) (not b!1613511) (not b!1613526) (not b!1613247) (not b!1613532) b_and!114369 tp_is_empty!7241 (not b!1613292) (not b!1613301) (not d!485584) (not d!485592) (not b!1613537) (not d!485550) (not b!1613242) (not bm!104798) (not d!485534) (not b!1613314) (not d!485568) b_and!114389 (not d!485612) (not d!485580) b_and!114409 (not b!1613393) (not b!1613206) (not d!485590) (not b!1613205) (not b_next!44089) (not b!1613480) (not b!1613557) (not b!1613568) (not d!485668) (not b!1613313) (not b_next!44103) (not d!485610) (not b!1613516) (not b!1613517) (not d!485468) (not b!1613276) (not b!1613271) (not d!485654) (not b!1613318) b_and!114411 (not b!1613351) (not b_lambda!50913) (not b!1613304) (not d!485532) (not b!1613268) (not d!485472) (not bm!104794) (not b_lambda!50911) (not b_next!44107) (not tb!92735) (not d!485588) (not b!1613330) (not d!485436) (not b!1613401) (not b!1613064) (not b!1613277) (not b!1613585) b_and!114365 (not b!1613060) (not b!1613529) (not bm!104799) (not b!1613584) (not b!1613352) (not d!485636) (not d!485574) (not tb!92739) (not b!1613493) (not b!1613215) (not b!1613403) (not d!485558) (not d!485640) (not b!1613402) (not d!485564) (not d!485578) (not b!1613264) (not d!485572) (not d!485536) (not b!1613512) (not b!1613534) (not b!1613076) (not b!1613061) (not b!1613302) (not b!1613522) (not b!1613555) (not b_next!44087) (not b!1613514) (not b!1613287) (not d!485594) (not d!485562) b_and!114405 (not d!485660) (not b!1613250) (not d!485596) (not d!485638) (not b!1613569) (not b!1613491) (not d!485602) (not d!485560) (not b!1613570) (not b!1613245) (not d!485538) (not d!485544) (not b!1613531) (not b!1613391) (not b_next!44093) (not d!485586) (not b_next!44091) (not b!1613392) (not b!1613513) (not b!1613309) (not b!1613288) (not d!485540) (not d!485656) (not b!1613249) (not b!1613248) (not d!485652) (not b_lambda!50915) (not b!1613543) b_and!114407 (not d!485598) (not b!1613538) (not b!1613079) (not b!1613481) (not d!485662) (not b!1613063) (not b!1613078) (not b!1613331) (not d!485648) (not b!1613243) (not b!1613320) (not b!1613325) (not b!1613321) (not d!485546) (not b!1613530) (not b!1613246) (not d!485566) (not b!1613259) (not b!1613533) (not d!485552) (not d!485548) (not b!1613316) (not d!485434) (not b!1613580) b_and!114391 (not b!1613510) (not d!485554) (not b_next!44105) (not d!485604) (not d!485582) (not b!1613303) (not b!1613523) (not d!485664) (not d!485570) (not b!1613312) (not b!1613556) (not b!1613581) (not d!485658))
(check-sat b_and!114369 (not b_next!44089) (not b_next!44103) b_and!114411 (not b_next!44107) b_and!114365 (not b_next!44087) b_and!114405 (not b_next!44093) (not b_next!44091) b_and!114407 (not b_next!44109) b_and!114389 b_and!114409 (not b_next!44105) b_and!114391)
