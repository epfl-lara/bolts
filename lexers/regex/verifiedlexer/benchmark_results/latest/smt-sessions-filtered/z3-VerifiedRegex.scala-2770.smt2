; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!152346 () Bool)

(assert start!152346)

(declare-fun b!1612818 () Bool)

(declare-fun b_free!43367 () Bool)

(declare-fun b_next!44071 () Bool)

(assert (=> b!1612818 (= b_free!43367 (not b_next!44071))))

(declare-fun tp!470362 () Bool)

(declare-fun b_and!114349 () Bool)

(assert (=> b!1612818 (= tp!470362 b_and!114349)))

(declare-fun b_free!43369 () Bool)

(declare-fun b_next!44073 () Bool)

(assert (=> b!1612818 (= b_free!43369 (not b_next!44073))))

(declare-fun tp!470361 () Bool)

(declare-fun b_and!114351 () Bool)

(assert (=> b!1612818 (= tp!470361 b_and!114351)))

(declare-fun b!1612805 () Bool)

(declare-fun b_free!43371 () Bool)

(declare-fun b_next!44075 () Bool)

(assert (=> b!1612805 (= b_free!43371 (not b_next!44075))))

(declare-fun tp!470363 () Bool)

(declare-fun b_and!114353 () Bool)

(assert (=> b!1612805 (= tp!470363 b_and!114353)))

(declare-fun b_free!43373 () Bool)

(declare-fun b_next!44077 () Bool)

(assert (=> b!1612805 (= b_free!43373 (not b_next!44077))))

(declare-fun tp!470365 () Bool)

(declare-fun b_and!114355 () Bool)

(assert (=> b!1612805 (= tp!470365 b_and!114355)))

(declare-fun b!1612802 () Bool)

(declare-fun e!1034405 () Bool)

(declare-fun e!1034402 () Bool)

(assert (=> b!1612802 (= e!1034405 e!1034402)))

(declare-fun res!719292 () Bool)

(assert (=> b!1612802 (=> res!719292 e!1034402)))

(declare-datatypes ((List!17681 0))(
  ( (Nil!17611) (Cons!17611 (h!23012 (_ BitVec 16)) (t!148070 List!17681)) )
))
(declare-datatypes ((TokenValue!3191 0))(
  ( (FloatLiteralValue!6382 (text!22782 List!17681)) (TokenValueExt!3190 (__x!11684 Int)) (Broken!15955 (value!98025 List!17681)) (Object!3260) (End!3191) (Def!3191) (Underscore!3191) (Match!3191) (Else!3191) (Error!3191) (Case!3191) (If!3191) (Extends!3191) (Abstract!3191) (Class!3191) (Val!3191) (DelimiterValue!6382 (del!3251 List!17681)) (KeywordValue!3197 (value!98026 List!17681)) (CommentValue!6382 (value!98027 List!17681)) (WhitespaceValue!6382 (value!98028 List!17681)) (IndentationValue!3191 (value!98029 List!17681)) (String!20286) (Int32!3191) (Broken!15956 (value!98030 List!17681)) (Boolean!3192) (Unit!28296) (OperatorValue!3194 (op!3251 List!17681)) (IdentifierValue!6382 (value!98031 List!17681)) (IdentifierValue!6383 (value!98032 List!17681)) (WhitespaceValue!6383 (value!98033 List!17681)) (True!6382) (False!6382) (Broken!15957 (value!98034 List!17681)) (Broken!15958 (value!98035 List!17681)) (True!6383) (RightBrace!3191) (RightBracket!3191) (Colon!3191) (Null!3191) (Comma!3191) (LeftBracket!3191) (False!6383) (LeftBrace!3191) (ImaginaryLiteralValue!3191 (text!22783 List!17681)) (StringLiteralValue!9573 (value!98036 List!17681)) (EOFValue!3191 (value!98037 List!17681)) (IdentValue!3191 (value!98038 List!17681)) (DelimiterValue!6383 (value!98039 List!17681)) (DedentValue!3191 (value!98040 List!17681)) (NewLineValue!3191 (value!98041 List!17681)) (IntegerValue!9573 (value!98042 (_ BitVec 32)) (text!22784 List!17681)) (IntegerValue!9574 (value!98043 Int) (text!22785 List!17681)) (Times!3191) (Or!3191) (Equal!3191) (Minus!3191) (Broken!15959 (value!98044 List!17681)) (And!3191) (Div!3191) (LessEqual!3191) (Mod!3191) (Concat!7620) (Not!3191) (Plus!3191) (SpaceValue!3191 (value!98045 List!17681)) (IntegerValue!9575 (value!98046 Int) (text!22786 List!17681)) (StringLiteralValue!9574 (text!22787 List!17681)) (FloatLiteralValue!6383 (text!22788 List!17681)) (BytesLiteralValue!3191 (value!98047 List!17681)) (CommentValue!6383 (value!98048 List!17681)) (StringLiteralValue!9575 (value!98049 List!17681)) (ErrorTokenValue!3191 (msg!3252 List!17681)) )
))
(declare-datatypes ((C!9032 0))(
  ( (C!9033 (val!5112 Int)) )
))
(declare-datatypes ((List!17682 0))(
  ( (Nil!17612) (Cons!17612 (h!23013 C!9032) (t!148071 List!17682)) )
))
(declare-datatypes ((IArray!11705 0))(
  ( (IArray!11706 (innerList!5910 List!17682)) )
))
(declare-datatypes ((Conc!5850 0))(
  ( (Node!5850 (left!14194 Conc!5850) (right!14524 Conc!5850) (csize!11930 Int) (cheight!6061 Int)) (Leaf!8621 (xs!8678 IArray!11705) (csize!11931 Int)) (Empty!5850) )
))
(declare-datatypes ((BalanceConc!11644 0))(
  ( (BalanceConc!11645 (c!262805 Conc!5850)) )
))
(declare-datatypes ((Regex!4429 0))(
  ( (ElementMatch!4429 (c!262806 C!9032)) (Concat!7621 (regOne!9370 Regex!4429) (regTwo!9370 Regex!4429)) (EmptyExpr!4429) (Star!4429 (reg!4758 Regex!4429)) (EmptyLang!4429) (Union!4429 (regOne!9371 Regex!4429) (regTwo!9371 Regex!4429)) )
))
(declare-datatypes ((String!20287 0))(
  ( (String!20288 (value!98050 String)) )
))
(declare-datatypes ((TokenValueInjection!6042 0))(
  ( (TokenValueInjection!6043 (toValue!4524 Int) (toChars!4383 Int)) )
))
(declare-datatypes ((Rule!6002 0))(
  ( (Rule!6003 (regex!3101 Regex!4429) (tag!3377 String!20287) (isSeparator!3101 Bool) (transformation!3101 TokenValueInjection!6042)) )
))
(declare-datatypes ((Token!5768 0))(
  ( (Token!5769 (value!98051 TokenValue!3191) (rule!4921 Rule!6002) (size!14158 Int) (originalCharacters!3915 List!17682)) )
))
(declare-datatypes ((tuple2!17114 0))(
  ( (tuple2!17115 (_1!9959 Token!5768) (_2!9959 List!17682)) )
))
(declare-datatypes ((Option!3205 0))(
  ( (None!3204) (Some!3204 (v!24175 tuple2!17114)) )
))
(declare-fun lt!576096 () Option!3205)

(declare-fun isDefined!2572 (Option!3205) Bool)

(assert (=> b!1612802 (= res!719292 (not (isDefined!2572 lt!576096)))))

(declare-fun lt!576075 () List!17682)

(declare-fun lt!576084 () List!17682)

(declare-datatypes ((List!17683 0))(
  ( (Nil!17613) (Cons!17613 (h!23014 Rule!6002) (t!148072 List!17683)) )
))
(declare-fun rules!1846 () List!17683)

(declare-datatypes ((Unit!28297 0))(
  ( (Unit!28298) )
))
(declare-fun lt!576090 () Unit!28297)

(declare-datatypes ((LexerInterface!2730 0))(
  ( (LexerInterfaceExt!2727 (__x!11685 Int)) (Lexer!2728) )
))
(declare-fun thiss!17113 () LexerInterface!2730)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!304 (LexerInterface!2730 List!17683 List!17682 List!17682) Unit!28297)

(assert (=> b!1612802 (= lt!576090 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!304 thiss!17113 rules!1846 lt!576084 lt!576075))))

(declare-fun b!1612803 () Bool)

(declare-fun res!719299 () Bool)

(declare-fun e!1034399 () Bool)

(assert (=> b!1612803 (=> (not res!719299) (not e!1034399))))

(declare-fun isEmpty!10640 (List!17683) Bool)

(assert (=> b!1612803 (= res!719299 (not (isEmpty!10640 rules!1846)))))

(declare-fun e!1034389 () Bool)

(declare-fun e!1034398 () Bool)

(declare-datatypes ((List!17684 0))(
  ( (Nil!17614) (Cons!17614 (h!23015 Token!5768) (t!148073 List!17684)) )
))
(declare-fun tokens!457 () List!17684)

(declare-fun b!1612804 () Bool)

(declare-fun tp!470368 () Bool)

(declare-fun inv!21 (TokenValue!3191) Bool)

(assert (=> b!1612804 (= e!1034398 (and (inv!21 (value!98051 (h!23015 tokens!457))) e!1034389 tp!470368))))

(declare-fun e!1034397 () Bool)

(assert (=> b!1612805 (= e!1034397 (and tp!470363 tp!470365))))

(declare-fun b!1612806 () Bool)

(declare-fun res!719304 () Bool)

(assert (=> b!1612806 (=> (not res!719304) (not e!1034399))))

(get-info :version)

(assert (=> b!1612806 (= res!719304 (and (not ((_ is Nil!17614) tokens!457)) (not ((_ is Nil!17614) (t!148073 tokens!457)))))))

(declare-fun b!1612807 () Bool)

(declare-fun res!719290 () Bool)

(assert (=> b!1612807 (=> res!719290 e!1034405)))

(declare-datatypes ((IArray!11707 0))(
  ( (IArray!11708 (innerList!5911 List!17684)) )
))
(declare-datatypes ((Conc!5851 0))(
  ( (Node!5851 (left!14195 Conc!5851) (right!14525 Conc!5851) (csize!11932 Int) (cheight!6062 Int)) (Leaf!8622 (xs!8679 IArray!11707) (csize!11933 Int)) (Empty!5851) )
))
(declare-datatypes ((BalanceConc!11646 0))(
  ( (BalanceConc!11647 (c!262807 Conc!5851)) )
))
(declare-fun isEmpty!10641 (BalanceConc!11646) Bool)

(declare-datatypes ((tuple2!17116 0))(
  ( (tuple2!17117 (_1!9960 BalanceConc!11646) (_2!9960 BalanceConc!11644)) )
))
(declare-fun lex!1214 (LexerInterface!2730 List!17683 BalanceConc!11644) tuple2!17116)

(declare-fun seqFromList!1951 (List!17682) BalanceConc!11644)

(assert (=> b!1612807 (= res!719290 (isEmpty!10641 (_1!9960 (lex!1214 thiss!17113 rules!1846 (seqFromList!1951 lt!576084)))))))

(declare-fun b!1612808 () Bool)

(declare-fun e!1034406 () Bool)

(assert (=> b!1612808 (= e!1034402 e!1034406)))

(declare-fun res!719291 () Bool)

(assert (=> b!1612808 (=> res!719291 e!1034406)))

(declare-fun lt!576092 () Regex!4429)

(declare-fun lt!576078 () BalanceConc!11644)

(declare-fun lt!576080 () BalanceConc!11644)

(declare-fun prefixMatchZipperSequence!469 (Regex!4429 BalanceConc!11644) Bool)

(declare-fun ++!4637 (BalanceConc!11644 BalanceConc!11644) BalanceConc!11644)

(assert (=> b!1612808 (= res!719291 (prefixMatchZipperSequence!469 lt!576092 (++!4637 lt!576078 lt!576080)))))

(declare-fun singletonSeq!1480 (C!9032) BalanceConc!11644)

(declare-fun apply!4410 (BalanceConc!11644 Int) C!9032)

(declare-fun charsOf!1750 (Token!5768) BalanceConc!11644)

(assert (=> b!1612808 (= lt!576080 (singletonSeq!1480 (apply!4410 (charsOf!1750 (h!23015 (t!148073 tokens!457))) 0)))))

(declare-fun rulesRegex!491 (LexerInterface!2730 List!17683) Regex!4429)

(assert (=> b!1612808 (= lt!576092 (rulesRegex!491 thiss!17113 rules!1846))))

(declare-fun b!1612809 () Bool)

(declare-fun e!1034395 () Bool)

(declare-fun e!1034408 () Bool)

(assert (=> b!1612809 (= e!1034395 e!1034408)))

(declare-fun res!719289 () Bool)

(assert (=> b!1612809 (=> res!719289 e!1034408)))

(declare-datatypes ((tuple2!17118 0))(
  ( (tuple2!17119 (_1!9961 Token!5768) (_2!9961 BalanceConc!11644)) )
))
(declare-datatypes ((Option!3206 0))(
  ( (None!3205) (Some!3205 (v!24176 tuple2!17118)) )
))
(declare-fun isDefined!2573 (Option!3206) Bool)

(declare-fun maxPrefixZipperSequence!625 (LexerInterface!2730 List!17683 BalanceConc!11644) Option!3206)

(assert (=> b!1612809 (= res!719289 (not (isDefined!2573 (maxPrefixZipperSequence!625 thiss!17113 rules!1846 (seqFromList!1951 (originalCharacters!3915 (h!23015 tokens!457)))))))))

(declare-fun e!1034390 () Bool)

(assert (=> b!1612809 e!1034390))

(declare-fun res!719288 () Bool)

(assert (=> b!1612809 (=> (not res!719288) (not e!1034390))))

(assert (=> b!1612809 (= res!719288 (= lt!576084 (originalCharacters!3915 (h!23015 tokens!457))))))

(declare-fun b!1612810 () Bool)

(declare-fun lt!576093 () List!17682)

(declare-fun lt!576074 () BalanceConc!11644)

(declare-fun head!3314 (BalanceConc!11644) C!9032)

(assert (=> b!1612810 (= e!1034390 (= lt!576093 (Cons!17612 (head!3314 lt!576074) Nil!17612)))))

(declare-fun b!1612811 () Bool)

(declare-fun e!1034394 () Bool)

(declare-fun e!1034391 () Bool)

(declare-fun tp!470364 () Bool)

(assert (=> b!1612811 (= e!1034394 (and e!1034391 tp!470364))))

(declare-fun b!1612812 () Bool)

(declare-fun res!719287 () Bool)

(assert (=> b!1612812 (=> (not res!719287) (not e!1034390))))

(declare-fun head!3315 (List!17682) C!9032)

(assert (=> b!1612812 (= res!719287 (= lt!576093 (Cons!17612 (head!3315 (originalCharacters!3915 (h!23015 (t!148073 tokens!457)))) Nil!17612)))))

(declare-fun res!719294 () Bool)

(assert (=> start!152346 (=> (not res!719294) (not e!1034399))))

(assert (=> start!152346 (= res!719294 ((_ is Lexer!2728) thiss!17113))))

(assert (=> start!152346 e!1034399))

(assert (=> start!152346 true))

(assert (=> start!152346 e!1034394))

(declare-fun e!1034400 () Bool)

(assert (=> start!152346 e!1034400))

(declare-fun b!1612813 () Bool)

(declare-fun res!719295 () Bool)

(assert (=> b!1612813 (=> (not res!719295) (not e!1034399))))

(declare-fun rulesInvariant!2399 (LexerInterface!2730 List!17683) Bool)

(assert (=> b!1612813 (= res!719295 (rulesInvariant!2399 thiss!17113 rules!1846))))

(declare-fun b!1612814 () Bool)

(declare-fun e!1034407 () Bool)

(declare-fun e!1034403 () Bool)

(assert (=> b!1612814 (= e!1034407 (not e!1034403))))

(declare-fun res!719293 () Bool)

(assert (=> b!1612814 (=> res!719293 e!1034403)))

(declare-fun lt!576094 () List!17684)

(assert (=> b!1612814 (= res!719293 (not (= lt!576094 (t!148073 tokens!457))))))

(declare-fun lt!576083 () tuple2!17116)

(declare-fun list!6875 (BalanceConc!11646) List!17684)

(assert (=> b!1612814 (= lt!576094 (list!6875 (_1!9960 lt!576083)))))

(declare-fun lt!576086 () Unit!28297)

(declare-fun theoremInvertabilityWhenTokenListSeparable!175 (LexerInterface!2730 List!17683 List!17684) Unit!28297)

(assert (=> b!1612814 (= lt!576086 (theoremInvertabilityWhenTokenListSeparable!175 thiss!17113 rules!1846 (t!148073 tokens!457)))))

(declare-fun lt!576081 () List!17682)

(declare-fun isPrefix!1361 (List!17682 List!17682) Bool)

(assert (=> b!1612814 (isPrefix!1361 lt!576084 lt!576081)))

(declare-fun lt!576082 () Unit!28297)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!886 (List!17682 List!17682) Unit!28297)

(assert (=> b!1612814 (= lt!576082 (lemmaConcatTwoListThenFirstIsPrefix!886 lt!576084 lt!576075))))

(declare-fun b!1612815 () Bool)

(declare-fun tp!470367 () Bool)

(declare-fun inv!23021 (String!20287) Bool)

(declare-fun inv!23024 (TokenValueInjection!6042) Bool)

(assert (=> b!1612815 (= e!1034391 (and tp!470367 (inv!23021 (tag!3377 (h!23014 rules!1846))) (inv!23024 (transformation!3101 (h!23014 rules!1846))) e!1034397))))

(declare-fun b!1612816 () Bool)

(declare-fun e!1034401 () Bool)

(assert (=> b!1612816 (= e!1034401 e!1034405)))

(declare-fun res!719301 () Bool)

(assert (=> b!1612816 (=> res!719301 e!1034405)))

(declare-fun lt!576073 () List!17682)

(declare-fun lt!576076 () List!17682)

(assert (=> b!1612816 (= res!719301 (or (not (= lt!576073 lt!576076)) (not (= lt!576076 lt!576084)) (not (= lt!576073 lt!576084))))))

(declare-fun printList!845 (LexerInterface!2730 List!17684) List!17682)

(assert (=> b!1612816 (= lt!576076 (printList!845 thiss!17113 (Cons!17614 (h!23015 tokens!457) Nil!17614)))))

(declare-fun lt!576089 () BalanceConc!11644)

(declare-fun list!6876 (BalanceConc!11644) List!17682)

(assert (=> b!1612816 (= lt!576073 (list!6876 lt!576089))))

(declare-fun lt!576077 () BalanceConc!11646)

(declare-fun printTailRec!783 (LexerInterface!2730 BalanceConc!11646 Int BalanceConc!11644) BalanceConc!11644)

(assert (=> b!1612816 (= lt!576089 (printTailRec!783 thiss!17113 lt!576077 0 (BalanceConc!11645 Empty!5850)))))

(declare-fun print!1261 (LexerInterface!2730 BalanceConc!11646) BalanceConc!11644)

(assert (=> b!1612816 (= lt!576089 (print!1261 thiss!17113 lt!576077))))

(declare-fun singletonSeq!1481 (Token!5768) BalanceConc!11646)

(assert (=> b!1612816 (= lt!576077 (singletonSeq!1481 (h!23015 tokens!457)))))

(declare-fun lt!576085 () List!17682)

(declare-fun maxPrefix!1294 (LexerInterface!2730 List!17683 List!17682) Option!3205)

(assert (=> b!1612816 (= lt!576096 (maxPrefix!1294 thiss!17113 rules!1846 lt!576085))))

(declare-fun b!1612817 () Bool)

(declare-fun res!719298 () Bool)

(assert (=> b!1612817 (=> (not res!719298) (not e!1034390))))

(assert (=> b!1612817 (= res!719298 (= lt!576093 (Cons!17612 (head!3315 lt!576075) Nil!17612)))))

(declare-fun e!1034393 () Bool)

(assert (=> b!1612818 (= e!1034393 (and tp!470362 tp!470361))))

(declare-fun b!1612819 () Bool)

(declare-fun res!719296 () Bool)

(assert (=> b!1612819 (=> res!719296 e!1034401)))

(declare-fun separableTokensPredicate!672 (LexerInterface!2730 Token!5768 Token!5768 List!17683) Bool)

(assert (=> b!1612819 (= res!719296 (not (separableTokensPredicate!672 thiss!17113 (h!23015 tokens!457) (h!23015 (t!148073 tokens!457)) rules!1846)))))

(declare-fun b!1612820 () Bool)

(declare-fun res!719302 () Bool)

(assert (=> b!1612820 (=> res!719302 e!1034405)))

(declare-fun rulesProduceIndividualToken!1382 (LexerInterface!2730 List!17683 Token!5768) Bool)

(assert (=> b!1612820 (= res!719302 (not (rulesProduceIndividualToken!1382 thiss!17113 rules!1846 (h!23015 tokens!457))))))

(declare-fun b!1612821 () Bool)

(assert (=> b!1612821 (= e!1034403 e!1034401)))

(declare-fun res!719306 () Bool)

(assert (=> b!1612821 (=> res!719306 e!1034401)))

(declare-fun lt!576087 () List!17684)

(declare-fun lt!576095 () List!17684)

(assert (=> b!1612821 (= res!719306 (or (not (= lt!576094 lt!576087)) (not (= lt!576087 lt!576095))))))

(declare-fun lt!576091 () BalanceConc!11646)

(assert (=> b!1612821 (= lt!576087 (list!6875 lt!576091))))

(assert (=> b!1612821 (= lt!576094 lt!576095)))

(declare-fun prepend!607 (BalanceConc!11646 Token!5768) BalanceConc!11646)

(declare-fun seqFromList!1952 (List!17684) BalanceConc!11646)

(assert (=> b!1612821 (= lt!576095 (list!6875 (prepend!607 (seqFromList!1952 (t!148073 (t!148073 tokens!457))) (h!23015 (t!148073 tokens!457)))))))

(declare-fun lt!576088 () Unit!28297)

(declare-fun seqFromListBHdTlConstructive!178 (Token!5768 List!17684 BalanceConc!11646) Unit!28297)

(assert (=> b!1612821 (= lt!576088 (seqFromListBHdTlConstructive!178 (h!23015 (t!148073 tokens!457)) (t!148073 (t!148073 tokens!457)) (_1!9960 lt!576083)))))

(declare-fun b!1612822 () Bool)

(assert (=> b!1612822 (= e!1034399 e!1034407)))

(declare-fun res!719300 () Bool)

(assert (=> b!1612822 (=> (not res!719300) (not e!1034407))))

(assert (=> b!1612822 (= res!719300 (= lt!576085 lt!576081))))

(declare-fun ++!4638 (List!17682 List!17682) List!17682)

(assert (=> b!1612822 (= lt!576081 (++!4638 lt!576084 lt!576075))))

(declare-fun lt!576079 () BalanceConc!11644)

(assert (=> b!1612822 (= lt!576085 (list!6876 lt!576079))))

(assert (=> b!1612822 (= lt!576075 (list!6876 lt!576074))))

(assert (=> b!1612822 (= lt!576084 (list!6876 lt!576078))))

(assert (=> b!1612822 (= lt!576078 (charsOf!1750 (h!23015 tokens!457)))))

(assert (=> b!1612822 (= lt!576083 (lex!1214 thiss!17113 rules!1846 lt!576074))))

(assert (=> b!1612822 (= lt!576074 (print!1261 thiss!17113 lt!576091))))

(assert (=> b!1612822 (= lt!576091 (seqFromList!1952 (t!148073 tokens!457)))))

(assert (=> b!1612822 (= lt!576079 (print!1261 thiss!17113 (seqFromList!1952 tokens!457)))))

(declare-fun tp!470360 () Bool)

(declare-fun b!1612823 () Bool)

(declare-fun inv!23025 (Token!5768) Bool)

(assert (=> b!1612823 (= e!1034400 (and (inv!23025 (h!23015 tokens!457)) e!1034398 tp!470360))))

(declare-fun b!1612824 () Bool)

(assert (=> b!1612824 (= e!1034408 true)))

(assert (=> b!1612824 (isDefined!2572 (maxPrefix!1294 thiss!17113 rules!1846 (originalCharacters!3915 (h!23015 tokens!457))))))

(declare-fun b!1612825 () Bool)

(declare-fun res!719305 () Bool)

(assert (=> b!1612825 (=> (not res!719305) (not e!1034399))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!423 (LexerInterface!2730 List!17684 List!17683) Bool)

(assert (=> b!1612825 (= res!719305 (tokensListTwoByTwoPredicateSeparableList!423 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1612826 () Bool)

(assert (=> b!1612826 (= e!1034406 e!1034395)))

(declare-fun res!719303 () Bool)

(assert (=> b!1612826 (=> res!719303 e!1034395)))

(declare-fun prefixMatch!364 (Regex!4429 List!17682) Bool)

(assert (=> b!1612826 (= res!719303 (prefixMatch!364 lt!576092 (++!4638 lt!576084 lt!576093)))))

(assert (=> b!1612826 (= lt!576093 (list!6876 lt!576080))))

(declare-fun b!1612827 () Bool)

(declare-fun res!719297 () Bool)

(assert (=> b!1612827 (=> (not res!719297) (not e!1034399))))

(declare-fun rulesProduceEachTokenIndividuallyList!932 (LexerInterface!2730 List!17683 List!17684) Bool)

(assert (=> b!1612827 (= res!719297 (rulesProduceEachTokenIndividuallyList!932 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1612828 () Bool)

(declare-fun tp!470366 () Bool)

(assert (=> b!1612828 (= e!1034389 (and tp!470366 (inv!23021 (tag!3377 (rule!4921 (h!23015 tokens!457)))) (inv!23024 (transformation!3101 (rule!4921 (h!23015 tokens!457)))) e!1034393))))

(assert (= (and start!152346 res!719294) b!1612803))

(assert (= (and b!1612803 res!719299) b!1612813))

(assert (= (and b!1612813 res!719295) b!1612827))

(assert (= (and b!1612827 res!719297) b!1612825))

(assert (= (and b!1612825 res!719305) b!1612806))

(assert (= (and b!1612806 res!719304) b!1612822))

(assert (= (and b!1612822 res!719300) b!1612814))

(assert (= (and b!1612814 (not res!719293)) b!1612821))

(assert (= (and b!1612821 (not res!719306)) b!1612819))

(assert (= (and b!1612819 (not res!719296)) b!1612816))

(assert (= (and b!1612816 (not res!719301)) b!1612820))

(assert (= (and b!1612820 (not res!719302)) b!1612807))

(assert (= (and b!1612807 (not res!719290)) b!1612802))

(assert (= (and b!1612802 (not res!719292)) b!1612808))

(assert (= (and b!1612808 (not res!719291)) b!1612826))

(assert (= (and b!1612826 (not res!719303)) b!1612809))

(assert (= (and b!1612809 res!719288) b!1612812))

(assert (= (and b!1612812 res!719287) b!1612817))

(assert (= (and b!1612817 res!719298) b!1612810))

(assert (= (and b!1612809 (not res!719289)) b!1612824))

(assert (= b!1612815 b!1612805))

(assert (= b!1612811 b!1612815))

(assert (= (and start!152346 ((_ is Cons!17613) rules!1846)) b!1612811))

(assert (= b!1612828 b!1612818))

(assert (= b!1612804 b!1612828))

(assert (= b!1612823 b!1612804))

(assert (= (and start!152346 ((_ is Cons!17614) tokens!457)) b!1612823))

(declare-fun m!1930643 () Bool)

(assert (=> b!1612813 m!1930643))

(declare-fun m!1930645 () Bool)

(assert (=> b!1612817 m!1930645))

(declare-fun m!1930647 () Bool)

(assert (=> b!1612803 m!1930647))

(declare-fun m!1930649 () Bool)

(assert (=> b!1612815 m!1930649))

(declare-fun m!1930651 () Bool)

(assert (=> b!1612815 m!1930651))

(declare-fun m!1930653 () Bool)

(assert (=> b!1612814 m!1930653))

(declare-fun m!1930655 () Bool)

(assert (=> b!1612814 m!1930655))

(declare-fun m!1930657 () Bool)

(assert (=> b!1612814 m!1930657))

(declare-fun m!1930659 () Bool)

(assert (=> b!1612814 m!1930659))

(declare-fun m!1930661 () Bool)

(assert (=> b!1612823 m!1930661))

(declare-fun m!1930663 () Bool)

(assert (=> b!1612826 m!1930663))

(assert (=> b!1612826 m!1930663))

(declare-fun m!1930665 () Bool)

(assert (=> b!1612826 m!1930665))

(declare-fun m!1930667 () Bool)

(assert (=> b!1612826 m!1930667))

(declare-fun m!1930669 () Bool)

(assert (=> b!1612822 m!1930669))

(declare-fun m!1930671 () Bool)

(assert (=> b!1612822 m!1930671))

(declare-fun m!1930673 () Bool)

(assert (=> b!1612822 m!1930673))

(declare-fun m!1930675 () Bool)

(assert (=> b!1612822 m!1930675))

(declare-fun m!1930677 () Bool)

(assert (=> b!1612822 m!1930677))

(declare-fun m!1930679 () Bool)

(assert (=> b!1612822 m!1930679))

(declare-fun m!1930681 () Bool)

(assert (=> b!1612822 m!1930681))

(declare-fun m!1930683 () Bool)

(assert (=> b!1612822 m!1930683))

(declare-fun m!1930685 () Bool)

(assert (=> b!1612822 m!1930685))

(assert (=> b!1612822 m!1930679))

(declare-fun m!1930687 () Bool)

(assert (=> b!1612822 m!1930687))

(declare-fun m!1930689 () Bool)

(assert (=> b!1612804 m!1930689))

(declare-fun m!1930691 () Bool)

(assert (=> b!1612820 m!1930691))

(declare-fun m!1930693 () Bool)

(assert (=> b!1612809 m!1930693))

(assert (=> b!1612809 m!1930693))

(declare-fun m!1930695 () Bool)

(assert (=> b!1612809 m!1930695))

(assert (=> b!1612809 m!1930695))

(declare-fun m!1930697 () Bool)

(assert (=> b!1612809 m!1930697))

(declare-fun m!1930699 () Bool)

(assert (=> b!1612819 m!1930699))

(declare-fun m!1930701 () Bool)

(assert (=> b!1612828 m!1930701))

(declare-fun m!1930703 () Bool)

(assert (=> b!1612828 m!1930703))

(declare-fun m!1930705 () Bool)

(assert (=> b!1612812 m!1930705))

(declare-fun m!1930707 () Bool)

(assert (=> b!1612802 m!1930707))

(declare-fun m!1930709 () Bool)

(assert (=> b!1612802 m!1930709))

(declare-fun m!1930711 () Bool)

(assert (=> b!1612824 m!1930711))

(assert (=> b!1612824 m!1930711))

(declare-fun m!1930713 () Bool)

(assert (=> b!1612824 m!1930713))

(declare-fun m!1930715 () Bool)

(assert (=> b!1612821 m!1930715))

(declare-fun m!1930717 () Bool)

(assert (=> b!1612821 m!1930717))

(declare-fun m!1930719 () Bool)

(assert (=> b!1612821 m!1930719))

(declare-fun m!1930721 () Bool)

(assert (=> b!1612821 m!1930721))

(assert (=> b!1612821 m!1930717))

(assert (=> b!1612821 m!1930719))

(declare-fun m!1930723 () Bool)

(assert (=> b!1612821 m!1930723))

(declare-fun m!1930725 () Bool)

(assert (=> b!1612827 m!1930725))

(declare-fun m!1930727 () Bool)

(assert (=> b!1612807 m!1930727))

(assert (=> b!1612807 m!1930727))

(declare-fun m!1930729 () Bool)

(assert (=> b!1612807 m!1930729))

(declare-fun m!1930731 () Bool)

(assert (=> b!1612807 m!1930731))

(declare-fun m!1930733 () Bool)

(assert (=> b!1612808 m!1930733))

(declare-fun m!1930735 () Bool)

(assert (=> b!1612808 m!1930735))

(declare-fun m!1930737 () Bool)

(assert (=> b!1612808 m!1930737))

(declare-fun m!1930739 () Bool)

(assert (=> b!1612808 m!1930739))

(assert (=> b!1612808 m!1930739))

(declare-fun m!1930741 () Bool)

(assert (=> b!1612808 m!1930741))

(declare-fun m!1930743 () Bool)

(assert (=> b!1612808 m!1930743))

(assert (=> b!1612808 m!1930735))

(assert (=> b!1612808 m!1930743))

(declare-fun m!1930745 () Bool)

(assert (=> b!1612810 m!1930745))

(declare-fun m!1930747 () Bool)

(assert (=> b!1612816 m!1930747))

(declare-fun m!1930749 () Bool)

(assert (=> b!1612816 m!1930749))

(declare-fun m!1930751 () Bool)

(assert (=> b!1612816 m!1930751))

(declare-fun m!1930753 () Bool)

(assert (=> b!1612816 m!1930753))

(declare-fun m!1930755 () Bool)

(assert (=> b!1612816 m!1930755))

(declare-fun m!1930757 () Bool)

(assert (=> b!1612816 m!1930757))

(declare-fun m!1930759 () Bool)

(assert (=> b!1612825 m!1930759))

(check-sat (not b!1612828) (not b!1612816) (not b!1612807) (not b_next!44073) (not b!1612812) (not b!1612808) b_and!114349 (not b!1612803) (not b!1612819) b_and!114355 (not b!1612813) (not b!1612804) (not b!1612809) (not b!1612817) (not b!1612810) (not b!1612824) (not b!1612827) (not b!1612815) (not b_next!44075) (not b!1612821) (not b!1612822) b_and!114351 (not b!1612820) (not b!1612826) b_and!114353 (not b!1612825) (not b_next!44071) (not b!1612823) (not b!1612811) (not b!1612814) (not b!1612802) (not b_next!44077))
(check-sat (not b_next!44073) (not b_next!44075) b_and!114349 b_and!114355 b_and!114351 b_and!114353 (not b_next!44071) (not b_next!44077))
