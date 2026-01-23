; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!154658 () Bool)

(assert start!154658)

(declare-fun b!1626382 () Bool)

(declare-fun b_free!43911 () Bool)

(declare-fun b_next!44615 () Bool)

(assert (=> b!1626382 (= b_free!43911 (not b_next!44615))))

(declare-fun tp!472920 () Bool)

(declare-fun b_and!115333 () Bool)

(assert (=> b!1626382 (= tp!472920 b_and!115333)))

(declare-fun b_free!43913 () Bool)

(declare-fun b_next!44617 () Bool)

(assert (=> b!1626382 (= b_free!43913 (not b_next!44617))))

(declare-fun tp!472923 () Bool)

(declare-fun b_and!115335 () Bool)

(assert (=> b!1626382 (= tp!472923 b_and!115335)))

(declare-fun b!1626369 () Bool)

(declare-fun b_free!43915 () Bool)

(declare-fun b_next!44619 () Bool)

(assert (=> b!1626369 (= b_free!43915 (not b_next!44619))))

(declare-fun tp!472924 () Bool)

(declare-fun b_and!115337 () Bool)

(assert (=> b!1626369 (= tp!472924 b_and!115337)))

(declare-fun b_free!43917 () Bool)

(declare-fun b_next!44621 () Bool)

(assert (=> b!1626369 (= b_free!43917 (not b_next!44621))))

(declare-fun tp!472921 () Bool)

(declare-fun b_and!115339 () Bool)

(assert (=> b!1626369 (= tp!472921 b_and!115339)))

(declare-fun b!1626362 () Bool)

(declare-fun e!1043179 () Bool)

(declare-fun e!1043180 () Bool)

(declare-fun tp!472919 () Bool)

(assert (=> b!1626362 (= e!1043179 (and e!1043180 tp!472919))))

(declare-fun b!1626363 () Bool)

(declare-fun res!727257 () Bool)

(declare-fun e!1043164 () Bool)

(assert (=> b!1626363 (=> (not res!727257) (not e!1043164))))

(declare-datatypes ((List!17923 0))(
  ( (Nil!17853) (Cons!17853 (h!23254 (_ BitVec 16)) (t!149056 List!17923)) )
))
(declare-datatypes ((TokenValue!3235 0))(
  ( (FloatLiteralValue!6470 (text!23090 List!17923)) (TokenValueExt!3234 (__x!11772 Int)) (Broken!16175 (value!99279 List!17923)) (Object!3304) (End!3235) (Def!3235) (Underscore!3235) (Match!3235) (Else!3235) (Error!3235) (Case!3235) (If!3235) (Extends!3235) (Abstract!3235) (Class!3235) (Val!3235) (DelimiterValue!6470 (del!3295 List!17923)) (KeywordValue!3241 (value!99280 List!17923)) (CommentValue!6470 (value!99281 List!17923)) (WhitespaceValue!6470 (value!99282 List!17923)) (IndentationValue!3235 (value!99283 List!17923)) (String!20506) (Int32!3235) (Broken!16176 (value!99284 List!17923)) (Boolean!3236) (Unit!28922) (OperatorValue!3238 (op!3295 List!17923)) (IdentifierValue!6470 (value!99285 List!17923)) (IdentifierValue!6471 (value!99286 List!17923)) (WhitespaceValue!6471 (value!99287 List!17923)) (True!6470) (False!6470) (Broken!16177 (value!99288 List!17923)) (Broken!16178 (value!99289 List!17923)) (True!6471) (RightBrace!3235) (RightBracket!3235) (Colon!3235) (Null!3235) (Comma!3235) (LeftBracket!3235) (False!6471) (LeftBrace!3235) (ImaginaryLiteralValue!3235 (text!23091 List!17923)) (StringLiteralValue!9705 (value!99290 List!17923)) (EOFValue!3235 (value!99291 List!17923)) (IdentValue!3235 (value!99292 List!17923)) (DelimiterValue!6471 (value!99293 List!17923)) (DedentValue!3235 (value!99294 List!17923)) (NewLineValue!3235 (value!99295 List!17923)) (IntegerValue!9705 (value!99296 (_ BitVec 32)) (text!23092 List!17923)) (IntegerValue!9706 (value!99297 Int) (text!23093 List!17923)) (Times!3235) (Or!3235) (Equal!3235) (Minus!3235) (Broken!16179 (value!99298 List!17923)) (And!3235) (Div!3235) (LessEqual!3235) (Mod!3235) (Concat!7708) (Not!3235) (Plus!3235) (SpaceValue!3235 (value!99299 List!17923)) (IntegerValue!9707 (value!99300 Int) (text!23094 List!17923)) (StringLiteralValue!9706 (text!23095 List!17923)) (FloatLiteralValue!6471 (text!23096 List!17923)) (BytesLiteralValue!3235 (value!99301 List!17923)) (CommentValue!6471 (value!99302 List!17923)) (StringLiteralValue!9707 (value!99303 List!17923)) (ErrorTokenValue!3235 (msg!3296 List!17923)) )
))
(declare-datatypes ((C!9120 0))(
  ( (C!9121 (val!5156 Int)) )
))
(declare-datatypes ((List!17924 0))(
  ( (Nil!17854) (Cons!17854 (h!23255 C!9120) (t!149057 List!17924)) )
))
(declare-datatypes ((IArray!11881 0))(
  ( (IArray!11882 (innerList!5998 List!17924)) )
))
(declare-datatypes ((Conc!5938 0))(
  ( (Node!5938 (left!14348 Conc!5938) (right!14678 Conc!5938) (csize!12106 Int) (cheight!6149 Int)) (Leaf!8731 (xs!8770 IArray!11881) (csize!12107 Int)) (Empty!5938) )
))
(declare-datatypes ((BalanceConc!11820 0))(
  ( (BalanceConc!11821 (c!264623 Conc!5938)) )
))
(declare-datatypes ((String!20507 0))(
  ( (String!20508 (value!99304 String)) )
))
(declare-datatypes ((Regex!4473 0))(
  ( (ElementMatch!4473 (c!264624 C!9120)) (Concat!7709 (regOne!9458 Regex!4473) (regTwo!9458 Regex!4473)) (EmptyExpr!4473) (Star!4473 (reg!4802 Regex!4473)) (EmptyLang!4473) (Union!4473 (regOne!9459 Regex!4473) (regTwo!9459 Regex!4473)) )
))
(declare-datatypes ((TokenValueInjection!6130 0))(
  ( (TokenValueInjection!6131 (toValue!4572 Int) (toChars!4431 Int)) )
))
(declare-datatypes ((Rule!6090 0))(
  ( (Rule!6091 (regex!3145 Regex!4473) (tag!3423 String!20507) (isSeparator!3145 Bool) (transformation!3145 TokenValueInjection!6130)) )
))
(declare-datatypes ((List!17925 0))(
  ( (Nil!17855) (Cons!17855 (h!23256 Rule!6090) (t!149058 List!17925)) )
))
(declare-fun rules!1846 () List!17925)

(declare-datatypes ((LexerInterface!2774 0))(
  ( (LexerInterfaceExt!2771 (__x!11773 Int)) (Lexer!2772) )
))
(declare-fun thiss!17113 () LexerInterface!2774)

(declare-datatypes ((Token!5856 0))(
  ( (Token!5857 (value!99305 TokenValue!3235) (rule!4971 Rule!6090) (size!14278 Int) (originalCharacters!3959 List!17924)) )
))
(declare-datatypes ((List!17926 0))(
  ( (Nil!17856) (Cons!17856 (h!23257 Token!5856) (t!149059 List!17926)) )
))
(declare-fun tokens!457 () List!17926)

(declare-fun tokensListTwoByTwoPredicateSeparableList!467 (LexerInterface!2774 List!17926 List!17925) Bool)

(assert (=> b!1626363 (= res!727257 (tokensListTwoByTwoPredicateSeparableList!467 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1626364 () Bool)

(declare-fun e!1043167 () Bool)

(declare-fun e!1043174 () Bool)

(assert (=> b!1626364 (= e!1043167 e!1043174)))

(declare-fun res!727242 () Bool)

(assert (=> b!1626364 (=> res!727242 e!1043174)))

(declare-fun lt!587996 () List!17924)

(declare-fun lt!587975 () Regex!4473)

(declare-fun lt!587980 () List!17924)

(declare-fun prefixMatch!408 (Regex!4473 List!17924) Bool)

(declare-fun ++!4751 (List!17924 List!17924) List!17924)

(assert (=> b!1626364 (= res!727242 (prefixMatch!408 lt!587975 (++!4751 lt!587996 lt!587980)))))

(declare-fun lt!587976 () BalanceConc!11820)

(declare-fun list!7011 (BalanceConc!11820) List!17924)

(assert (=> b!1626364 (= lt!587980 (list!7011 lt!587976))))

(declare-fun b!1626365 () Bool)

(declare-fun e!1043172 () Bool)

(assert (=> b!1626365 (= e!1043164 e!1043172)))

(declare-fun res!727262 () Bool)

(assert (=> b!1626365 (=> (not res!727262) (not e!1043172))))

(declare-fun lt!587986 () List!17924)

(declare-fun lt!587988 () List!17924)

(assert (=> b!1626365 (= res!727262 (= lt!587986 lt!587988))))

(declare-fun lt!587994 () List!17924)

(assert (=> b!1626365 (= lt!587988 (++!4751 lt!587996 lt!587994))))

(declare-fun lt!587998 () BalanceConc!11820)

(assert (=> b!1626365 (= lt!587986 (list!7011 lt!587998))))

(declare-fun lt!587989 () BalanceConc!11820)

(assert (=> b!1626365 (= lt!587994 (list!7011 lt!587989))))

(declare-fun lt!587987 () BalanceConc!11820)

(assert (=> b!1626365 (= lt!587996 (list!7011 lt!587987))))

(declare-fun charsOf!1794 (Token!5856) BalanceConc!11820)

(assert (=> b!1626365 (= lt!587987 (charsOf!1794 (h!23257 tokens!457)))))

(declare-datatypes ((IArray!11883 0))(
  ( (IArray!11884 (innerList!5999 List!17926)) )
))
(declare-datatypes ((Conc!5939 0))(
  ( (Node!5939 (left!14349 Conc!5939) (right!14679 Conc!5939) (csize!12108 Int) (cheight!6150 Int)) (Leaf!8732 (xs!8771 IArray!11883) (csize!12109 Int)) (Empty!5939) )
))
(declare-datatypes ((BalanceConc!11822 0))(
  ( (BalanceConc!11823 (c!264625 Conc!5939)) )
))
(declare-datatypes ((tuple2!17430 0))(
  ( (tuple2!17431 (_1!10117 BalanceConc!11822) (_2!10117 BalanceConc!11820)) )
))
(declare-fun lt!587979 () tuple2!17430)

(declare-fun lex!1258 (LexerInterface!2774 List!17925 BalanceConc!11820) tuple2!17430)

(assert (=> b!1626365 (= lt!587979 (lex!1258 thiss!17113 rules!1846 lt!587989))))

(declare-fun lt!587990 () BalanceConc!11822)

(declare-fun print!1305 (LexerInterface!2774 BalanceConc!11822) BalanceConc!11820)

(assert (=> b!1626365 (= lt!587989 (print!1305 thiss!17113 lt!587990))))

(declare-fun seqFromList!2039 (List!17926) BalanceConc!11822)

(assert (=> b!1626365 (= lt!587990 (seqFromList!2039 (t!149059 tokens!457)))))

(assert (=> b!1626365 (= lt!587998 (print!1305 thiss!17113 (seqFromList!2039 tokens!457)))))

(declare-fun b!1626366 () Bool)

(declare-fun e!1043170 () Bool)

(declare-fun isEmpty!10881 (List!17924) Bool)

(assert (=> b!1626366 (= e!1043170 (not (isEmpty!10881 lt!587994)))))

(declare-fun ruleValid!739 (LexerInterface!2774 Rule!6090) Bool)

(assert (=> b!1626366 (ruleValid!739 thiss!17113 (rule!4971 (h!23257 tokens!457)))))

(declare-datatypes ((Unit!28923 0))(
  ( (Unit!28924) )
))
(declare-fun lt!587992 () Unit!28923)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!300 (LexerInterface!2774 Rule!6090 List!17925) Unit!28923)

(assert (=> b!1626366 (= lt!587992 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!300 thiss!17113 (rule!4971 (h!23257 tokens!457)) rules!1846))))

(declare-fun b!1626367 () Bool)

(declare-fun res!727245 () Bool)

(assert (=> b!1626367 (=> (not res!727245) (not e!1043164))))

(declare-fun rulesInvariant!2443 (LexerInterface!2774 List!17925) Bool)

(assert (=> b!1626367 (= res!727245 (rulesInvariant!2443 thiss!17113 rules!1846))))

(declare-fun e!1043165 () Bool)

(assert (=> b!1626369 (= e!1043165 (and tp!472924 tp!472921))))

(declare-fun b!1626370 () Bool)

(declare-fun res!727246 () Bool)

(assert (=> b!1626370 (=> (not res!727246) (not e!1043164))))

(declare-fun rulesProduceEachTokenIndividuallyList!976 (LexerInterface!2774 List!17925 List!17926) Bool)

(assert (=> b!1626370 (= res!727246 (rulesProduceEachTokenIndividuallyList!976 thiss!17113 rules!1846 tokens!457))))

(declare-fun tp!472922 () Bool)

(declare-fun b!1626371 () Bool)

(declare-fun inv!23225 (String!20507) Bool)

(declare-fun inv!23228 (TokenValueInjection!6130) Bool)

(assert (=> b!1626371 (= e!1043180 (and tp!472922 (inv!23225 (tag!3423 (h!23256 rules!1846))) (inv!23228 (transformation!3145 (h!23256 rules!1846))) e!1043165))))

(declare-fun b!1626372 () Bool)

(declare-fun e!1043182 () Bool)

(assert (=> b!1626372 (= e!1043174 e!1043182)))

(declare-fun res!727240 () Bool)

(assert (=> b!1626372 (=> res!727240 e!1043182)))

(declare-datatypes ((tuple2!17432 0))(
  ( (tuple2!17433 (_1!10118 Token!5856) (_2!10118 BalanceConc!11820)) )
))
(declare-datatypes ((Option!3315 0))(
  ( (None!3314) (Some!3314 (v!24357 tuple2!17432)) )
))
(declare-fun isDefined!2682 (Option!3315) Bool)

(declare-fun maxPrefixZipperSequence!669 (LexerInterface!2774 List!17925 BalanceConc!11820) Option!3315)

(declare-fun seqFromList!2040 (List!17924) BalanceConc!11820)

(assert (=> b!1626372 (= res!727240 (not (isDefined!2682 (maxPrefixZipperSequence!669 thiss!17113 rules!1846 (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457)))))))))

(declare-fun lt!588000 () List!17924)

(assert (=> b!1626372 (= lt!587980 lt!588000)))

(declare-fun head!3448 (BalanceConc!11820) C!9120)

(assert (=> b!1626372 (= lt!588000 (Cons!17854 (head!3448 lt!587989) Nil!17854))))

(declare-fun e!1043181 () Bool)

(assert (=> b!1626372 e!1043181))

(declare-fun res!727253 () Bool)

(assert (=> b!1626372 (=> (not res!727253) (not e!1043181))))

(assert (=> b!1626372 (= res!727253 (= lt!587996 (originalCharacters!3959 (h!23257 tokens!457))))))

(declare-fun b!1626373 () Bool)

(declare-fun res!727252 () Bool)

(assert (=> b!1626373 (=> res!727252 e!1043170)))

(assert (=> b!1626373 (= res!727252 (prefixMatch!408 lt!587975 (++!4751 lt!587996 lt!588000)))))

(declare-fun b!1626374 () Bool)

(declare-fun e!1043183 () Bool)

(declare-fun e!1043168 () Bool)

(declare-fun tp!472917 () Bool)

(declare-fun inv!21 (TokenValue!3235) Bool)

(assert (=> b!1626374 (= e!1043168 (and (inv!21 (value!99305 (h!23257 tokens!457))) e!1043183 tp!472917))))

(declare-fun b!1626375 () Bool)

(declare-fun res!727241 () Bool)

(declare-fun e!1043184 () Bool)

(assert (=> b!1626375 (=> res!727241 e!1043184)))

(declare-fun isEmpty!10882 (BalanceConc!11822) Bool)

(assert (=> b!1626375 (= res!727241 (isEmpty!10882 (_1!10117 (lex!1258 thiss!17113 rules!1846 (seqFromList!2040 lt!587996)))))))

(declare-fun b!1626376 () Bool)

(declare-fun res!727251 () Bool)

(assert (=> b!1626376 (=> res!727251 e!1043170)))

(declare-fun contains!3120 (List!17925 Rule!6090) Bool)

(assert (=> b!1626376 (= res!727251 (not (contains!3120 rules!1846 (rule!4971 (h!23257 tokens!457)))))))

(declare-fun b!1626377 () Bool)

(declare-fun res!727249 () Bool)

(declare-fun e!1043176 () Bool)

(assert (=> b!1626377 (=> (not res!727249) (not e!1043176))))

(declare-datatypes ((tuple2!17434 0))(
  ( (tuple2!17435 (_1!10119 Token!5856) (_2!10119 List!17924)) )
))
(declare-fun lt!587997 () tuple2!17434)

(assert (=> b!1626377 (= res!727249 (isEmpty!10881 (_2!10119 lt!587997)))))

(declare-fun b!1626378 () Bool)

(declare-fun res!727256 () Bool)

(assert (=> b!1626378 (=> (not res!727256) (not e!1043164))))

(declare-fun isEmpty!10883 (List!17925) Bool)

(assert (=> b!1626378 (= res!727256 (not (isEmpty!10883 rules!1846)))))

(declare-fun b!1626379 () Bool)

(declare-fun e!1043175 () Bool)

(assert (=> b!1626379 (= e!1043172 (not e!1043175))))

(declare-fun res!727247 () Bool)

(assert (=> b!1626379 (=> res!727247 e!1043175)))

(declare-fun lt!587973 () List!17926)

(assert (=> b!1626379 (= res!727247 (not (= lt!587973 (t!149059 tokens!457))))))

(declare-fun list!7012 (BalanceConc!11822) List!17926)

(assert (=> b!1626379 (= lt!587973 (list!7012 (_1!10117 lt!587979)))))

(declare-fun lt!587984 () Unit!28923)

(declare-fun theoremInvertabilityWhenTokenListSeparable!219 (LexerInterface!2774 List!17925 List!17926) Unit!28923)

(assert (=> b!1626379 (= lt!587984 (theoremInvertabilityWhenTokenListSeparable!219 thiss!17113 rules!1846 (t!149059 tokens!457)))))

(declare-fun isPrefix!1405 (List!17924 List!17924) Bool)

(assert (=> b!1626379 (isPrefix!1405 lt!587996 lt!587988)))

(declare-fun lt!587995 () Unit!28923)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!930 (List!17924 List!17924) Unit!28923)

(assert (=> b!1626379 (= lt!587995 (lemmaConcatTwoListThenFirstIsPrefix!930 lt!587996 lt!587994))))

(declare-fun tp!472916 () Bool)

(declare-fun b!1626380 () Bool)

(declare-fun e!1043169 () Bool)

(declare-fun inv!23229 (Token!5856) Bool)

(assert (=> b!1626380 (= e!1043169 (and (inv!23229 (h!23257 tokens!457)) e!1043168 tp!472916))))

(declare-fun b!1626381 () Bool)

(declare-fun res!727263 () Bool)

(assert (=> b!1626381 (=> (not res!727263) (not e!1043181))))

(declare-fun head!3449 (List!17924) C!9120)

(assert (=> b!1626381 (= res!727263 (= lt!587980 (Cons!17854 (head!3449 (originalCharacters!3959 (h!23257 (t!149059 tokens!457)))) Nil!17854)))))

(declare-fun e!1043166 () Bool)

(assert (=> b!1626382 (= e!1043166 (and tp!472920 tp!472923))))

(declare-fun b!1626383 () Bool)

(declare-fun tp!472918 () Bool)

(assert (=> b!1626383 (= e!1043183 (and tp!472918 (inv!23225 (tag!3423 (rule!4971 (h!23257 tokens!457)))) (inv!23228 (transformation!3145 (rule!4971 (h!23257 tokens!457)))) e!1043166))))

(declare-fun res!727259 () Bool)

(assert (=> start!154658 (=> (not res!727259) (not e!1043164))))

(get-info :version)

(assert (=> start!154658 (= res!727259 ((_ is Lexer!2772) thiss!17113))))

(assert (=> start!154658 e!1043164))

(assert (=> start!154658 true))

(assert (=> start!154658 e!1043179))

(assert (=> start!154658 e!1043169))

(declare-fun b!1626368 () Bool)

(declare-fun e!1043163 () Bool)

(assert (=> b!1626368 (= e!1043184 e!1043163)))

(declare-fun res!727258 () Bool)

(assert (=> b!1626368 (=> res!727258 e!1043163)))

(declare-datatypes ((Option!3316 0))(
  ( (None!3315) (Some!3315 (v!24358 tuple2!17434)) )
))
(declare-fun lt!587991 () Option!3316)

(declare-fun isDefined!2683 (Option!3316) Bool)

(assert (=> b!1626368 (= res!727258 (not (isDefined!2683 lt!587991)))))

(declare-fun lt!587982 () Unit!28923)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!348 (LexerInterface!2774 List!17925 List!17924 List!17924) Unit!28923)

(assert (=> b!1626368 (= lt!587982 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!348 thiss!17113 rules!1846 lt!587996 lt!587994))))

(declare-fun b!1626384 () Bool)

(declare-fun e!1043173 () Bool)

(assert (=> b!1626384 (= e!1043173 e!1043184)))

(declare-fun res!727243 () Bool)

(assert (=> b!1626384 (=> res!727243 e!1043184)))

(declare-fun lt!587993 () List!17924)

(declare-fun lt!587981 () List!17924)

(assert (=> b!1626384 (= res!727243 (or (not (= lt!587981 lt!587993)) (not (= lt!587993 lt!587996)) (not (= lt!587981 lt!587996))))))

(declare-fun printList!889 (LexerInterface!2774 List!17926) List!17924)

(assert (=> b!1626384 (= lt!587993 (printList!889 thiss!17113 (Cons!17856 (h!23257 tokens!457) Nil!17856)))))

(declare-fun lt!587977 () BalanceConc!11820)

(assert (=> b!1626384 (= lt!587981 (list!7011 lt!587977))))

(declare-fun lt!587983 () BalanceConc!11822)

(declare-fun printTailRec!827 (LexerInterface!2774 BalanceConc!11822 Int BalanceConc!11820) BalanceConc!11820)

(assert (=> b!1626384 (= lt!587977 (printTailRec!827 thiss!17113 lt!587983 0 (BalanceConc!11821 Empty!5938)))))

(assert (=> b!1626384 (= lt!587977 (print!1305 thiss!17113 lt!587983))))

(declare-fun singletonSeq!1568 (Token!5856) BalanceConc!11822)

(assert (=> b!1626384 (= lt!587983 (singletonSeq!1568 (h!23257 tokens!457)))))

(declare-fun maxPrefix!1338 (LexerInterface!2774 List!17925 List!17924) Option!3316)

(assert (=> b!1626384 (= lt!587991 (maxPrefix!1338 thiss!17113 rules!1846 lt!587986))))

(declare-fun b!1626385 () Bool)

(declare-fun res!727254 () Bool)

(assert (=> b!1626385 (=> res!727254 e!1043184)))

(declare-fun rulesProduceIndividualToken!1426 (LexerInterface!2774 List!17925 Token!5856) Bool)

(assert (=> b!1626385 (= res!727254 (not (rulesProduceIndividualToken!1426 thiss!17113 rules!1846 (h!23257 tokens!457))))))

(declare-fun b!1626386 () Bool)

(declare-fun res!727260 () Bool)

(assert (=> b!1626386 (=> res!727260 e!1043173)))

(declare-fun separableTokensPredicate!716 (LexerInterface!2774 Token!5856 Token!5856 List!17925) Bool)

(assert (=> b!1626386 (= res!727260 (not (separableTokensPredicate!716 thiss!17113 (h!23257 tokens!457) (h!23257 (t!149059 tokens!457)) rules!1846)))))

(declare-fun b!1626387 () Bool)

(declare-fun matchR!1972 (Regex!4473 List!17924) Bool)

(assert (=> b!1626387 (= e!1043176 (matchR!1972 (regex!3145 (rule!4971 (h!23257 tokens!457))) lt!587996))))

(declare-fun b!1626388 () Bool)

(declare-fun res!727248 () Bool)

(assert (=> b!1626388 (=> (not res!727248) (not e!1043164))))

(assert (=> b!1626388 (= res!727248 (and (not ((_ is Nil!17856) tokens!457)) (not ((_ is Nil!17856) (t!149059 tokens!457)))))))

(declare-fun b!1626389 () Bool)

(assert (=> b!1626389 (= e!1043182 e!1043170)))

(declare-fun res!727255 () Bool)

(assert (=> b!1626389 (=> res!727255 e!1043170)))

(assert (=> b!1626389 (= res!727255 (prefixMatch!408 lt!587975 (++!4751 (originalCharacters!3959 (h!23257 tokens!457)) lt!588000)))))

(assert (=> b!1626389 e!1043176))

(declare-fun res!727250 () Bool)

(assert (=> b!1626389 (=> (not res!727250) (not e!1043176))))

(assert (=> b!1626389 (= res!727250 (= (_1!10119 lt!587997) (h!23257 tokens!457)))))

(declare-fun lt!587999 () Option!3316)

(declare-fun get!5150 (Option!3316) tuple2!17434)

(assert (=> b!1626389 (= lt!587997 (get!5150 lt!587999))))

(assert (=> b!1626389 (isDefined!2683 lt!587999)))

(assert (=> b!1626389 (= lt!587999 (maxPrefix!1338 thiss!17113 rules!1846 lt!587996))))

(assert (=> b!1626389 (isDefined!2683 (maxPrefix!1338 thiss!17113 rules!1846 (originalCharacters!3959 (h!23257 tokens!457))))))

(declare-fun b!1626390 () Bool)

(assert (=> b!1626390 (= e!1043181 (= lt!587980 (Cons!17854 (head!3449 lt!587994) Nil!17854)))))

(declare-fun b!1626391 () Bool)

(assert (=> b!1626391 (= e!1043163 e!1043167)))

(declare-fun res!727244 () Bool)

(assert (=> b!1626391 (=> res!727244 e!1043167)))

(declare-fun prefixMatchZipperSequence!535 (Regex!4473 BalanceConc!11820) Bool)

(declare-fun ++!4752 (BalanceConc!11820 BalanceConc!11820) BalanceConc!11820)

(assert (=> b!1626391 (= res!727244 (prefixMatchZipperSequence!535 lt!587975 (++!4752 lt!587987 lt!587976)))))

(declare-fun singletonSeq!1569 (C!9120) BalanceConc!11820)

(declare-fun apply!4568 (BalanceConc!11820 Int) C!9120)

(assert (=> b!1626391 (= lt!587976 (singletonSeq!1569 (apply!4568 (charsOf!1794 (h!23257 (t!149059 tokens!457))) 0)))))

(declare-fun rulesRegex!535 (LexerInterface!2774 List!17925) Regex!4473)

(assert (=> b!1626391 (= lt!587975 (rulesRegex!535 thiss!17113 rules!1846))))

(declare-fun b!1626392 () Bool)

(assert (=> b!1626392 (= e!1043175 e!1043173)))

(declare-fun res!727261 () Bool)

(assert (=> b!1626392 (=> res!727261 e!1043173)))

(declare-fun lt!587974 () List!17926)

(declare-fun lt!587978 () List!17926)

(assert (=> b!1626392 (= res!727261 (or (not (= lt!587973 lt!587978)) (not (= lt!587978 lt!587974))))))

(assert (=> b!1626392 (= lt!587978 (list!7012 lt!587990))))

(assert (=> b!1626392 (= lt!587973 lt!587974)))

(declare-fun prepend!673 (BalanceConc!11822 Token!5856) BalanceConc!11822)

(assert (=> b!1626392 (= lt!587974 (list!7012 (prepend!673 (seqFromList!2039 (t!149059 (t!149059 tokens!457))) (h!23257 (t!149059 tokens!457)))))))

(declare-fun lt!587985 () Unit!28923)

(declare-fun seqFromListBHdTlConstructive!222 (Token!5856 List!17926 BalanceConc!11822) Unit!28923)

(assert (=> b!1626392 (= lt!587985 (seqFromListBHdTlConstructive!222 (h!23257 (t!149059 tokens!457)) (t!149059 (t!149059 tokens!457)) (_1!10117 lt!587979)))))

(assert (= (and start!154658 res!727259) b!1626378))

(assert (= (and b!1626378 res!727256) b!1626367))

(assert (= (and b!1626367 res!727245) b!1626370))

(assert (= (and b!1626370 res!727246) b!1626363))

(assert (= (and b!1626363 res!727257) b!1626388))

(assert (= (and b!1626388 res!727248) b!1626365))

(assert (= (and b!1626365 res!727262) b!1626379))

(assert (= (and b!1626379 (not res!727247)) b!1626392))

(assert (= (and b!1626392 (not res!727261)) b!1626386))

(assert (= (and b!1626386 (not res!727260)) b!1626384))

(assert (= (and b!1626384 (not res!727243)) b!1626385))

(assert (= (and b!1626385 (not res!727254)) b!1626375))

(assert (= (and b!1626375 (not res!727241)) b!1626368))

(assert (= (and b!1626368 (not res!727258)) b!1626391))

(assert (= (and b!1626391 (not res!727244)) b!1626364))

(assert (= (and b!1626364 (not res!727242)) b!1626372))

(assert (= (and b!1626372 res!727253) b!1626381))

(assert (= (and b!1626381 res!727263) b!1626390))

(assert (= (and b!1626372 (not res!727240)) b!1626389))

(assert (= (and b!1626389 res!727250) b!1626377))

(assert (= (and b!1626377 res!727249) b!1626387))

(assert (= (and b!1626389 (not res!727255)) b!1626373))

(assert (= (and b!1626373 (not res!727252)) b!1626376))

(assert (= (and b!1626376 (not res!727251)) b!1626366))

(assert (= b!1626371 b!1626369))

(assert (= b!1626362 b!1626371))

(assert (= (and start!154658 ((_ is Cons!17855) rules!1846)) b!1626362))

(assert (= b!1626383 b!1626382))

(assert (= b!1626374 b!1626383))

(assert (= b!1626380 b!1626374))

(assert (= (and start!154658 ((_ is Cons!17856) tokens!457)) b!1626380))

(declare-fun m!1954897 () Bool)

(assert (=> b!1626371 m!1954897))

(declare-fun m!1954899 () Bool)

(assert (=> b!1626371 m!1954899))

(declare-fun m!1954901 () Bool)

(assert (=> b!1626378 m!1954901))

(declare-fun m!1954903 () Bool)

(assert (=> b!1626376 m!1954903))

(declare-fun m!1954905 () Bool)

(assert (=> b!1626387 m!1954905))

(declare-fun m!1954907 () Bool)

(assert (=> b!1626377 m!1954907))

(declare-fun m!1954909 () Bool)

(assert (=> b!1626386 m!1954909))

(declare-fun m!1954911 () Bool)

(assert (=> b!1626384 m!1954911))

(declare-fun m!1954913 () Bool)

(assert (=> b!1626384 m!1954913))

(declare-fun m!1954915 () Bool)

(assert (=> b!1626384 m!1954915))

(declare-fun m!1954917 () Bool)

(assert (=> b!1626384 m!1954917))

(declare-fun m!1954919 () Bool)

(assert (=> b!1626384 m!1954919))

(declare-fun m!1954921 () Bool)

(assert (=> b!1626384 m!1954921))

(declare-fun m!1954923 () Bool)

(assert (=> b!1626389 m!1954923))

(declare-fun m!1954925 () Bool)

(assert (=> b!1626389 m!1954925))

(declare-fun m!1954927 () Bool)

(assert (=> b!1626389 m!1954927))

(declare-fun m!1954929 () Bool)

(assert (=> b!1626389 m!1954929))

(declare-fun m!1954931 () Bool)

(assert (=> b!1626389 m!1954931))

(assert (=> b!1626389 m!1954929))

(assert (=> b!1626389 m!1954923))

(declare-fun m!1954933 () Bool)

(assert (=> b!1626389 m!1954933))

(declare-fun m!1954935 () Bool)

(assert (=> b!1626389 m!1954935))

(declare-fun m!1954937 () Bool)

(assert (=> b!1626365 m!1954937))

(declare-fun m!1954939 () Bool)

(assert (=> b!1626365 m!1954939))

(declare-fun m!1954941 () Bool)

(assert (=> b!1626365 m!1954941))

(declare-fun m!1954943 () Bool)

(assert (=> b!1626365 m!1954943))

(declare-fun m!1954945 () Bool)

(assert (=> b!1626365 m!1954945))

(declare-fun m!1954947 () Bool)

(assert (=> b!1626365 m!1954947))

(declare-fun m!1954949 () Bool)

(assert (=> b!1626365 m!1954949))

(assert (=> b!1626365 m!1954945))

(declare-fun m!1954951 () Bool)

(assert (=> b!1626365 m!1954951))

(declare-fun m!1954953 () Bool)

(assert (=> b!1626365 m!1954953))

(declare-fun m!1954955 () Bool)

(assert (=> b!1626365 m!1954955))

(declare-fun m!1954957 () Bool)

(assert (=> b!1626366 m!1954957))

(declare-fun m!1954959 () Bool)

(assert (=> b!1626366 m!1954959))

(declare-fun m!1954961 () Bool)

(assert (=> b!1626366 m!1954961))

(declare-fun m!1954963 () Bool)

(assert (=> b!1626364 m!1954963))

(assert (=> b!1626364 m!1954963))

(declare-fun m!1954965 () Bool)

(assert (=> b!1626364 m!1954965))

(declare-fun m!1954967 () Bool)

(assert (=> b!1626364 m!1954967))

(declare-fun m!1954969 () Bool)

(assert (=> b!1626381 m!1954969))

(declare-fun m!1954971 () Bool)

(assert (=> b!1626363 m!1954971))

(declare-fun m!1954973 () Bool)

(assert (=> b!1626390 m!1954973))

(declare-fun m!1954975 () Bool)

(assert (=> b!1626374 m!1954975))

(declare-fun m!1954977 () Bool)

(assert (=> b!1626391 m!1954977))

(declare-fun m!1954979 () Bool)

(assert (=> b!1626391 m!1954979))

(declare-fun m!1954981 () Bool)

(assert (=> b!1626391 m!1954981))

(declare-fun m!1954983 () Bool)

(assert (=> b!1626391 m!1954983))

(declare-fun m!1954985 () Bool)

(assert (=> b!1626391 m!1954985))

(assert (=> b!1626391 m!1954983))

(declare-fun m!1954987 () Bool)

(assert (=> b!1626391 m!1954987))

(assert (=> b!1626391 m!1954979))

(assert (=> b!1626391 m!1954987))

(declare-fun m!1954989 () Bool)

(assert (=> b!1626380 m!1954989))

(declare-fun m!1954991 () Bool)

(assert (=> b!1626367 m!1954991))

(declare-fun m!1954993 () Bool)

(assert (=> b!1626368 m!1954993))

(declare-fun m!1954995 () Bool)

(assert (=> b!1626368 m!1954995))

(declare-fun m!1954997 () Bool)

(assert (=> b!1626392 m!1954997))

(declare-fun m!1954999 () Bool)

(assert (=> b!1626392 m!1954999))

(declare-fun m!1955001 () Bool)

(assert (=> b!1626392 m!1955001))

(declare-fun m!1955003 () Bool)

(assert (=> b!1626392 m!1955003))

(declare-fun m!1955005 () Bool)

(assert (=> b!1626392 m!1955005))

(assert (=> b!1626392 m!1955001))

(assert (=> b!1626392 m!1955003))

(declare-fun m!1955007 () Bool)

(assert (=> b!1626370 m!1955007))

(declare-fun m!1955009 () Bool)

(assert (=> b!1626372 m!1955009))

(assert (=> b!1626372 m!1955009))

(declare-fun m!1955011 () Bool)

(assert (=> b!1626372 m!1955011))

(assert (=> b!1626372 m!1955011))

(declare-fun m!1955013 () Bool)

(assert (=> b!1626372 m!1955013))

(declare-fun m!1955015 () Bool)

(assert (=> b!1626372 m!1955015))

(declare-fun m!1955017 () Bool)

(assert (=> b!1626385 m!1955017))

(declare-fun m!1955019 () Bool)

(assert (=> b!1626373 m!1955019))

(assert (=> b!1626373 m!1955019))

(declare-fun m!1955021 () Bool)

(assert (=> b!1626373 m!1955021))

(declare-fun m!1955023 () Bool)

(assert (=> b!1626375 m!1955023))

(assert (=> b!1626375 m!1955023))

(declare-fun m!1955025 () Bool)

(assert (=> b!1626375 m!1955025))

(declare-fun m!1955027 () Bool)

(assert (=> b!1626375 m!1955027))

(declare-fun m!1955029 () Bool)

(assert (=> b!1626379 m!1955029))

(declare-fun m!1955031 () Bool)

(assert (=> b!1626379 m!1955031))

(declare-fun m!1955033 () Bool)

(assert (=> b!1626379 m!1955033))

(declare-fun m!1955035 () Bool)

(assert (=> b!1626379 m!1955035))

(declare-fun m!1955037 () Bool)

(assert (=> b!1626383 m!1955037))

(declare-fun m!1955039 () Bool)

(assert (=> b!1626383 m!1955039))

(check-sat (not b!1626371) (not b_next!44621) (not b!1626375) (not b!1626386) (not b!1626392) (not b!1626370) (not b!1626391) (not b!1626383) (not b!1626364) (not b!1626379) (not b!1626377) (not b!1626373) (not b!1626385) (not b!1626368) (not b!1626378) (not b!1626363) b_and!115335 (not b_next!44619) (not b_next!44617) (not b!1626362) (not b!1626374) (not b!1626372) (not b!1626366) (not b!1626384) (not b!1626389) (not b!1626381) (not b!1626376) (not b_next!44615) b_and!115333 b_and!115339 (not b!1626390) (not b!1626365) (not b!1626380) (not b!1626367) (not b!1626387) b_and!115337)
(check-sat (not b_next!44621) (not b_next!44617) (not b_next!44615) b_and!115337 b_and!115335 (not b_next!44619) b_and!115333 b_and!115339)
(get-model)

(declare-fun d!489535 () Bool)

(declare-fun list!7014 (Conc!5939) List!17926)

(assert (=> d!489535 (= (list!7012 (_1!10117 lt!587979)) (list!7014 (c!264625 (_1!10117 lt!587979))))))

(declare-fun bs!394803 () Bool)

(assert (= bs!394803 d!489535))

(declare-fun m!1955045 () Bool)

(assert (=> bs!394803 m!1955045))

(assert (=> b!1626379 d!489535))

(declare-fun d!489537 () Bool)

(declare-fun e!1043246 () Bool)

(assert (=> d!489537 e!1043246))

(declare-fun res!727338 () Bool)

(assert (=> d!489537 (=> (not res!727338) (not e!1043246))))

(assert (=> d!489537 (= res!727338 (= (list!7012 (_1!10117 (lex!1258 thiss!17113 rules!1846 (print!1305 thiss!17113 (seqFromList!2039 (t!149059 tokens!457)))))) (t!149059 tokens!457)))))

(declare-fun lt!588165 () Unit!28923)

(declare-fun e!1043247 () Unit!28923)

(assert (=> d!489537 (= lt!588165 e!1043247)))

(declare-fun c!264646 () Bool)

(assert (=> d!489537 (= c!264646 (or ((_ is Nil!17856) (t!149059 tokens!457)) ((_ is Nil!17856) (t!149059 (t!149059 tokens!457)))))))

(assert (=> d!489537 (not (isEmpty!10883 rules!1846))))

(assert (=> d!489537 (= (theoremInvertabilityWhenTokenListSeparable!219 thiss!17113 rules!1846 (t!149059 tokens!457)) lt!588165)))

(declare-fun b!1626498 () Bool)

(declare-fun Unit!28928 () Unit!28923)

(assert (=> b!1626498 (= e!1043247 Unit!28928)))

(declare-fun b!1626499 () Bool)

(declare-fun Unit!28929 () Unit!28923)

(assert (=> b!1626499 (= e!1043247 Unit!28929)))

(declare-fun lt!588166 () BalanceConc!11820)

(assert (=> b!1626499 (= lt!588166 (print!1305 thiss!17113 (seqFromList!2039 (t!149059 tokens!457))))))

(declare-fun lt!588149 () BalanceConc!11820)

(assert (=> b!1626499 (= lt!588149 (print!1305 thiss!17113 (seqFromList!2039 (t!149059 (t!149059 tokens!457)))))))

(declare-fun lt!588171 () tuple2!17430)

(assert (=> b!1626499 (= lt!588171 (lex!1258 thiss!17113 rules!1846 lt!588149))))

(declare-fun lt!588158 () List!17924)

(assert (=> b!1626499 (= lt!588158 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457)))))))

(declare-fun lt!588163 () List!17924)

(assert (=> b!1626499 (= lt!588163 (list!7011 lt!588149))))

(declare-fun lt!588157 () Unit!28923)

(assert (=> b!1626499 (= lt!588157 (lemmaConcatTwoListThenFirstIsPrefix!930 lt!588158 lt!588163))))

(assert (=> b!1626499 (isPrefix!1405 lt!588158 (++!4751 lt!588158 lt!588163))))

(declare-fun lt!588160 () Unit!28923)

(assert (=> b!1626499 (= lt!588160 lt!588157)))

(declare-fun lt!588168 () Unit!28923)

(assert (=> b!1626499 (= lt!588168 (theoremInvertabilityWhenTokenListSeparable!219 thiss!17113 rules!1846 (t!149059 (t!149059 tokens!457))))))

(declare-fun lt!588150 () Unit!28923)

(assert (=> b!1626499 (= lt!588150 (seqFromListBHdTlConstructive!222 (h!23257 (t!149059 (t!149059 tokens!457))) (t!149059 (t!149059 (t!149059 tokens!457))) (_1!10117 lt!588171)))))

(assert (=> b!1626499 (= (list!7012 (_1!10117 lt!588171)) (list!7012 (prepend!673 (seqFromList!2039 (t!149059 (t!149059 (t!149059 tokens!457)))) (h!23257 (t!149059 (t!149059 tokens!457))))))))

(declare-fun lt!588148 () Unit!28923)

(assert (=> b!1626499 (= lt!588148 lt!588150)))

(declare-fun lt!588154 () Option!3316)

(assert (=> b!1626499 (= lt!588154 (maxPrefix!1338 thiss!17113 rules!1846 (list!7011 lt!588166)))))

(assert (=> b!1626499 (= (print!1305 thiss!17113 (singletonSeq!1568 (h!23257 (t!149059 tokens!457)))) (printTailRec!827 thiss!17113 (singletonSeq!1568 (h!23257 (t!149059 tokens!457))) 0 (BalanceConc!11821 Empty!5938)))))

(declare-fun lt!588152 () Unit!28923)

(declare-fun Unit!28930 () Unit!28923)

(assert (=> b!1626499 (= lt!588152 Unit!28930)))

(declare-fun lt!588147 () Unit!28923)

(assert (=> b!1626499 (= lt!588147 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!348 thiss!17113 rules!1846 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457)))) (list!7011 lt!588149)))))

(assert (=> b!1626499 (= (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457)))) (originalCharacters!3959 (h!23257 (t!149059 tokens!457))))))

(declare-fun lt!588151 () Unit!28923)

(declare-fun Unit!28931 () Unit!28923)

(assert (=> b!1626499 (= lt!588151 Unit!28931)))

(assert (=> b!1626499 (= (list!7011 (singletonSeq!1569 (apply!4568 (charsOf!1794 (h!23257 (t!149059 (t!149059 tokens!457)))) 0))) (Cons!17854 (head!3449 (originalCharacters!3959 (h!23257 (t!149059 (t!149059 tokens!457))))) Nil!17854))))

(declare-fun lt!588162 () Unit!28923)

(declare-fun Unit!28932 () Unit!28923)

(assert (=> b!1626499 (= lt!588162 Unit!28932)))

(assert (=> b!1626499 (= (list!7011 (singletonSeq!1569 (apply!4568 (charsOf!1794 (h!23257 (t!149059 (t!149059 tokens!457)))) 0))) (Cons!17854 (head!3449 (list!7011 lt!588149)) Nil!17854))))

(declare-fun lt!588167 () Unit!28923)

(declare-fun Unit!28933 () Unit!28923)

(assert (=> b!1626499 (= lt!588167 Unit!28933)))

(assert (=> b!1626499 (= (list!7011 (singletonSeq!1569 (apply!4568 (charsOf!1794 (h!23257 (t!149059 (t!149059 tokens!457)))) 0))) (Cons!17854 (head!3448 lt!588149) Nil!17854))))

(declare-fun lt!588161 () Unit!28923)

(declare-fun Unit!28934 () Unit!28923)

(assert (=> b!1626499 (= lt!588161 Unit!28934)))

(assert (=> b!1626499 (isDefined!2683 (maxPrefix!1338 thiss!17113 rules!1846 (originalCharacters!3959 (h!23257 (t!149059 tokens!457)))))))

(declare-fun lt!588156 () Unit!28923)

(declare-fun Unit!28935 () Unit!28923)

(assert (=> b!1626499 (= lt!588156 Unit!28935)))

(assert (=> b!1626499 (isDefined!2683 (maxPrefix!1338 thiss!17113 rules!1846 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457))))))))

(declare-fun lt!588146 () Unit!28923)

(declare-fun Unit!28936 () Unit!28923)

(assert (=> b!1626499 (= lt!588146 Unit!28936)))

(declare-fun lt!588170 () Unit!28923)

(declare-fun Unit!28937 () Unit!28923)

(assert (=> b!1626499 (= lt!588170 Unit!28937)))

(assert (=> b!1626499 (= (_1!10119 (get!5150 (maxPrefix!1338 thiss!17113 rules!1846 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457))))))) (h!23257 (t!149059 tokens!457)))))

(declare-fun lt!588169 () Unit!28923)

(declare-fun Unit!28938 () Unit!28923)

(assert (=> b!1626499 (= lt!588169 Unit!28938)))

(assert (=> b!1626499 (isEmpty!10881 (_2!10119 (get!5150 (maxPrefix!1338 thiss!17113 rules!1846 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457))))))))))

(declare-fun lt!588159 () Unit!28923)

(declare-fun Unit!28939 () Unit!28923)

(assert (=> b!1626499 (= lt!588159 Unit!28939)))

(assert (=> b!1626499 (matchR!1972 (regex!3145 (rule!4971 (h!23257 (t!149059 tokens!457)))) (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457)))))))

(declare-fun lt!588164 () Unit!28923)

(declare-fun Unit!28940 () Unit!28923)

(assert (=> b!1626499 (= lt!588164 Unit!28940)))

(assert (=> b!1626499 (= (rule!4971 (h!23257 (t!149059 tokens!457))) (rule!4971 (h!23257 (t!149059 tokens!457))))))

(declare-fun lt!588153 () Unit!28923)

(declare-fun Unit!28941 () Unit!28923)

(assert (=> b!1626499 (= lt!588153 Unit!28941)))

(declare-fun lt!588155 () Unit!28923)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!111 (LexerInterface!2774 List!17925 Token!5856 Rule!6090 List!17924) Unit!28923)

(assert (=> b!1626499 (= lt!588155 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!111 thiss!17113 rules!1846 (h!23257 (t!149059 tokens!457)) (rule!4971 (h!23257 (t!149059 tokens!457))) (list!7011 lt!588149)))))

(declare-fun b!1626500 () Bool)

(declare-fun isEmpty!10887 (BalanceConc!11820) Bool)

(assert (=> b!1626500 (= e!1043246 (isEmpty!10887 (_2!10117 (lex!1258 thiss!17113 rules!1846 (print!1305 thiss!17113 (seqFromList!2039 (t!149059 tokens!457)))))))))

(assert (= (and d!489537 c!264646) b!1626498))

(assert (= (and d!489537 (not c!264646)) b!1626499))

(assert (= (and d!489537 res!727338) b!1626500))

(declare-fun m!1955217 () Bool)

(assert (=> d!489537 m!1955217))

(declare-fun m!1955219 () Bool)

(assert (=> d!489537 m!1955219))

(declare-fun m!1955221 () Bool)

(assert (=> d!489537 m!1955221))

(assert (=> d!489537 m!1954901))

(assert (=> d!489537 m!1954943))

(assert (=> d!489537 m!1955217))

(assert (=> d!489537 m!1954943))

(declare-fun m!1955223 () Bool)

(assert (=> b!1626499 m!1955223))

(declare-fun m!1955225 () Bool)

(assert (=> b!1626499 m!1955225))

(declare-fun m!1955227 () Bool)

(assert (=> b!1626499 m!1955227))

(declare-fun m!1955229 () Bool)

(assert (=> b!1626499 m!1955229))

(declare-fun m!1955231 () Bool)

(assert (=> b!1626499 m!1955231))

(declare-fun m!1955233 () Bool)

(assert (=> b!1626499 m!1955233))

(declare-fun m!1955235 () Bool)

(assert (=> b!1626499 m!1955235))

(declare-fun m!1955237 () Bool)

(assert (=> b!1626499 m!1955237))

(assert (=> b!1626499 m!1955233))

(declare-fun m!1955239 () Bool)

(assert (=> b!1626499 m!1955239))

(declare-fun m!1955241 () Bool)

(assert (=> b!1626499 m!1955241))

(declare-fun m!1955243 () Bool)

(assert (=> b!1626499 m!1955243))

(declare-fun m!1955245 () Bool)

(assert (=> b!1626499 m!1955245))

(assert (=> b!1626499 m!1955241))

(assert (=> b!1626499 m!1955001))

(assert (=> b!1626499 m!1954987))

(assert (=> b!1626499 m!1955229))

(declare-fun m!1955247 () Bool)

(assert (=> b!1626499 m!1955247))

(assert (=> b!1626499 m!1954943))

(declare-fun m!1955249 () Bool)

(assert (=> b!1626499 m!1955249))

(declare-fun m!1955251 () Bool)

(assert (=> b!1626499 m!1955251))

(declare-fun m!1955253 () Bool)

(assert (=> b!1626499 m!1955253))

(assert (=> b!1626499 m!1955001))

(declare-fun m!1955255 () Bool)

(assert (=> b!1626499 m!1955255))

(assert (=> b!1626499 m!1955229))

(declare-fun m!1955257 () Bool)

(assert (=> b!1626499 m!1955257))

(declare-fun m!1955259 () Bool)

(assert (=> b!1626499 m!1955259))

(assert (=> b!1626499 m!1955245))

(declare-fun m!1955261 () Bool)

(assert (=> b!1626499 m!1955261))

(assert (=> b!1626499 m!1955231))

(assert (=> b!1626499 m!1955225))

(declare-fun m!1955263 () Bool)

(assert (=> b!1626499 m!1955263))

(declare-fun m!1955265 () Bool)

(assert (=> b!1626499 m!1955265))

(assert (=> b!1626499 m!1955225))

(declare-fun m!1955267 () Bool)

(assert (=> b!1626499 m!1955267))

(declare-fun m!1955269 () Bool)

(assert (=> b!1626499 m!1955269))

(declare-fun m!1955271 () Bool)

(assert (=> b!1626499 m!1955271))

(assert (=> b!1626499 m!1955237))

(declare-fun m!1955273 () Bool)

(assert (=> b!1626499 m!1955273))

(assert (=> b!1626499 m!1955231))

(declare-fun m!1955275 () Bool)

(assert (=> b!1626499 m!1955275))

(assert (=> b!1626499 m!1955233))

(declare-fun m!1955277 () Bool)

(assert (=> b!1626499 m!1955277))

(assert (=> b!1626499 m!1955259))

(declare-fun m!1955279 () Bool)

(assert (=> b!1626499 m!1955279))

(declare-fun m!1955281 () Bool)

(assert (=> b!1626499 m!1955281))

(assert (=> b!1626499 m!1955225))

(assert (=> b!1626499 m!1955251))

(assert (=> b!1626499 m!1954943))

(assert (=> b!1626499 m!1955217))

(assert (=> b!1626499 m!1955279))

(assert (=> b!1626499 m!1955269))

(assert (=> b!1626499 m!1955265))

(declare-fun m!1955283 () Bool)

(assert (=> b!1626499 m!1955283))

(declare-fun m!1955285 () Bool)

(assert (=> b!1626499 m!1955285))

(declare-fun m!1955287 () Bool)

(assert (=> b!1626499 m!1955287))

(assert (=> b!1626499 m!1954987))

(assert (=> b!1626499 m!1955231))

(declare-fun m!1955289 () Bool)

(assert (=> b!1626499 m!1955289))

(assert (=> b!1626500 m!1954943))

(assert (=> b!1626500 m!1954943))

(assert (=> b!1626500 m!1955217))

(assert (=> b!1626500 m!1955217))

(assert (=> b!1626500 m!1955219))

(declare-fun m!1955291 () Bool)

(assert (=> b!1626500 m!1955291))

(assert (=> b!1626379 d!489537))

(declare-fun b!1626515 () Bool)

(declare-fun e!1043258 () Bool)

(declare-fun e!1043260 () Bool)

(assert (=> b!1626515 (= e!1043258 e!1043260)))

(declare-fun res!727353 () Bool)

(assert (=> b!1626515 (=> (not res!727353) (not e!1043260))))

(assert (=> b!1626515 (= res!727353 (not ((_ is Nil!17854) lt!587988)))))

(declare-fun b!1626517 () Bool)

(declare-fun tail!2367 (List!17924) List!17924)

(assert (=> b!1626517 (= e!1043260 (isPrefix!1405 (tail!2367 lt!587996) (tail!2367 lt!587988)))))

(declare-fun b!1626516 () Bool)

(declare-fun res!727356 () Bool)

(assert (=> b!1626516 (=> (not res!727356) (not e!1043260))))

(assert (=> b!1626516 (= res!727356 (= (head!3449 lt!587996) (head!3449 lt!587988)))))

(declare-fun d!489573 () Bool)

(declare-fun e!1043259 () Bool)

(assert (=> d!489573 e!1043259))

(declare-fun res!727354 () Bool)

(assert (=> d!489573 (=> res!727354 e!1043259)))

(declare-fun lt!588178 () Bool)

(assert (=> d!489573 (= res!727354 (not lt!588178))))

(assert (=> d!489573 (= lt!588178 e!1043258)))

(declare-fun res!727355 () Bool)

(assert (=> d!489573 (=> res!727355 e!1043258)))

(assert (=> d!489573 (= res!727355 ((_ is Nil!17854) lt!587996))))

(assert (=> d!489573 (= (isPrefix!1405 lt!587996 lt!587988) lt!588178)))

(declare-fun b!1626518 () Bool)

(declare-fun size!14282 (List!17924) Int)

(assert (=> b!1626518 (= e!1043259 (>= (size!14282 lt!587988) (size!14282 lt!587996)))))

(assert (= (and d!489573 (not res!727355)) b!1626515))

(assert (= (and b!1626515 res!727353) b!1626516))

(assert (= (and b!1626516 res!727356) b!1626517))

(assert (= (and d!489573 (not res!727354)) b!1626518))

(declare-fun m!1955293 () Bool)

(assert (=> b!1626517 m!1955293))

(declare-fun m!1955295 () Bool)

(assert (=> b!1626517 m!1955295))

(assert (=> b!1626517 m!1955293))

(assert (=> b!1626517 m!1955295))

(declare-fun m!1955297 () Bool)

(assert (=> b!1626517 m!1955297))

(declare-fun m!1955299 () Bool)

(assert (=> b!1626516 m!1955299))

(declare-fun m!1955301 () Bool)

(assert (=> b!1626516 m!1955301))

(declare-fun m!1955303 () Bool)

(assert (=> b!1626518 m!1955303))

(declare-fun m!1955305 () Bool)

(assert (=> b!1626518 m!1955305))

(assert (=> b!1626379 d!489573))

(declare-fun d!489575 () Bool)

(assert (=> d!489575 (isPrefix!1405 lt!587996 (++!4751 lt!587996 lt!587994))))

(declare-fun lt!588183 () Unit!28923)

(declare-fun choose!9778 (List!17924 List!17924) Unit!28923)

(assert (=> d!489575 (= lt!588183 (choose!9778 lt!587996 lt!587994))))

(assert (=> d!489575 (= (lemmaConcatTwoListThenFirstIsPrefix!930 lt!587996 lt!587994) lt!588183)))

(declare-fun bs!394811 () Bool)

(assert (= bs!394811 d!489575))

(assert (=> bs!394811 m!1954953))

(assert (=> bs!394811 m!1954953))

(declare-fun m!1955321 () Bool)

(assert (=> bs!394811 m!1955321))

(declare-fun m!1955323 () Bool)

(assert (=> bs!394811 m!1955323))

(assert (=> b!1626379 d!489575))

(declare-fun d!489577 () Bool)

(declare-fun res!727364 () Bool)

(declare-fun e!1043265 () Bool)

(assert (=> d!489577 (=> (not res!727364) (not e!1043265))))

(assert (=> d!489577 (= res!727364 (not (isEmpty!10881 (originalCharacters!3959 (h!23257 tokens!457)))))))

(assert (=> d!489577 (= (inv!23229 (h!23257 tokens!457)) e!1043265)))

(declare-fun b!1626526 () Bool)

(declare-fun res!727365 () Bool)

(assert (=> b!1626526 (=> (not res!727365) (not e!1043265))))

(declare-fun dynLambda!7961 (Int TokenValue!3235) BalanceConc!11820)

(assert (=> b!1626526 (= res!727365 (= (originalCharacters!3959 (h!23257 tokens!457)) (list!7011 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (h!23257 tokens!457)))) (value!99305 (h!23257 tokens!457))))))))

(declare-fun b!1626527 () Bool)

(assert (=> b!1626527 (= e!1043265 (= (size!14278 (h!23257 tokens!457)) (size!14282 (originalCharacters!3959 (h!23257 tokens!457)))))))

(assert (= (and d!489577 res!727364) b!1626526))

(assert (= (and b!1626526 res!727365) b!1626527))

(declare-fun b_lambda!51225 () Bool)

(assert (=> (not b_lambda!51225) (not b!1626526)))

(declare-fun t!149064 () Bool)

(declare-fun tb!93335 () Bool)

(assert (=> (and b!1626382 (= (toChars!4431 (transformation!3145 (rule!4971 (h!23257 tokens!457)))) (toChars!4431 (transformation!3145 (rule!4971 (h!23257 tokens!457))))) t!149064) tb!93335))

(declare-fun b!1626535 () Bool)

(declare-fun e!1043271 () Bool)

(declare-fun tp!472927 () Bool)

(declare-fun inv!23232 (Conc!5938) Bool)

(assert (=> b!1626535 (= e!1043271 (and (inv!23232 (c!264623 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (h!23257 tokens!457)))) (value!99305 (h!23257 tokens!457))))) tp!472927))))

(declare-fun result!112574 () Bool)

(declare-fun inv!23233 (BalanceConc!11820) Bool)

(assert (=> tb!93335 (= result!112574 (and (inv!23233 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (h!23257 tokens!457)))) (value!99305 (h!23257 tokens!457)))) e!1043271))))

(assert (= tb!93335 b!1626535))

(declare-fun m!1955333 () Bool)

(assert (=> b!1626535 m!1955333))

(declare-fun m!1955335 () Bool)

(assert (=> tb!93335 m!1955335))

(assert (=> b!1626526 t!149064))

(declare-fun b_and!115341 () Bool)

(assert (= b_and!115335 (and (=> t!149064 result!112574) b_and!115341)))

(declare-fun tb!93337 () Bool)

(declare-fun t!149066 () Bool)

(assert (=> (and b!1626369 (= (toChars!4431 (transformation!3145 (h!23256 rules!1846))) (toChars!4431 (transformation!3145 (rule!4971 (h!23257 tokens!457))))) t!149066) tb!93337))

(declare-fun result!112578 () Bool)

(assert (= result!112578 result!112574))

(assert (=> b!1626526 t!149066))

(declare-fun b_and!115343 () Bool)

(assert (= b_and!115339 (and (=> t!149066 result!112578) b_and!115343)))

(declare-fun m!1955337 () Bool)

(assert (=> d!489577 m!1955337))

(declare-fun m!1955339 () Bool)

(assert (=> b!1626526 m!1955339))

(assert (=> b!1626526 m!1955339))

(declare-fun m!1955341 () Bool)

(assert (=> b!1626526 m!1955341))

(declare-fun m!1955343 () Bool)

(assert (=> b!1626527 m!1955343))

(assert (=> b!1626380 d!489577))

(declare-fun d!489583 () Bool)

(assert (=> d!489583 (= (isEmpty!10883 rules!1846) ((_ is Nil!17855) rules!1846))))

(assert (=> b!1626378 d!489583))

(declare-fun d!489585 () Bool)

(assert (=> d!489585 (= (isEmpty!10881 (_2!10119 lt!587997)) ((_ is Nil!17854) (_2!10119 lt!587997)))))

(assert (=> b!1626377 d!489585))

(declare-fun d!489587 () Bool)

(declare-fun lt!588189 () Bool)

(declare-fun isEmpty!10888 (List!17926) Bool)

(assert (=> d!489587 (= lt!588189 (isEmpty!10888 (list!7012 (_1!10117 (lex!1258 thiss!17113 rules!1846 (seqFromList!2040 lt!587996))))))))

(declare-fun isEmpty!10889 (Conc!5939) Bool)

(assert (=> d!489587 (= lt!588189 (isEmpty!10889 (c!264625 (_1!10117 (lex!1258 thiss!17113 rules!1846 (seqFromList!2040 lt!587996))))))))

(assert (=> d!489587 (= (isEmpty!10882 (_1!10117 (lex!1258 thiss!17113 rules!1846 (seqFromList!2040 lt!587996)))) lt!588189)))

(declare-fun bs!394812 () Bool)

(assert (= bs!394812 d!489587))

(declare-fun m!1955345 () Bool)

(assert (=> bs!394812 m!1955345))

(assert (=> bs!394812 m!1955345))

(declare-fun m!1955347 () Bool)

(assert (=> bs!394812 m!1955347))

(declare-fun m!1955349 () Bool)

(assert (=> bs!394812 m!1955349))

(assert (=> b!1626375 d!489587))

(declare-fun d!489589 () Bool)

(declare-fun e!1043297 () Bool)

(assert (=> d!489589 e!1043297))

(declare-fun res!727393 () Bool)

(assert (=> d!489589 (=> (not res!727393) (not e!1043297))))

(declare-fun e!1043298 () Bool)

(assert (=> d!489589 (= res!727393 e!1043298)))

(declare-fun c!264658 () Bool)

(declare-fun lt!588234 () tuple2!17430)

(declare-fun size!14283 (BalanceConc!11822) Int)

(assert (=> d!489589 (= c!264658 (> (size!14283 (_1!10117 lt!588234)) 0))))

(declare-fun lexTailRecV2!553 (LexerInterface!2774 List!17925 BalanceConc!11820 BalanceConc!11820 BalanceConc!11820 BalanceConc!11822) tuple2!17430)

(assert (=> d!489589 (= lt!588234 (lexTailRecV2!553 thiss!17113 rules!1846 (seqFromList!2040 lt!587996) (BalanceConc!11821 Empty!5938) (seqFromList!2040 lt!587996) (BalanceConc!11823 Empty!5939)))))

(assert (=> d!489589 (= (lex!1258 thiss!17113 rules!1846 (seqFromList!2040 lt!587996)) lt!588234)))

(declare-fun b!1626581 () Bool)

(declare-fun e!1043296 () Bool)

(assert (=> b!1626581 (= e!1043296 (not (isEmpty!10882 (_1!10117 lt!588234))))))

(declare-fun b!1626582 () Bool)

(declare-fun res!727394 () Bool)

(assert (=> b!1626582 (=> (not res!727394) (not e!1043297))))

(declare-datatypes ((tuple2!17436 0))(
  ( (tuple2!17437 (_1!10120 List!17926) (_2!10120 List!17924)) )
))
(declare-fun lexList!830 (LexerInterface!2774 List!17925 List!17924) tuple2!17436)

(assert (=> b!1626582 (= res!727394 (= (list!7012 (_1!10117 lt!588234)) (_1!10120 (lexList!830 thiss!17113 rules!1846 (list!7011 (seqFromList!2040 lt!587996))))))))

(declare-fun b!1626583 () Bool)

(assert (=> b!1626583 (= e!1043298 e!1043296)))

(declare-fun res!727395 () Bool)

(declare-fun size!14284 (BalanceConc!11820) Int)

(assert (=> b!1626583 (= res!727395 (< (size!14284 (_2!10117 lt!588234)) (size!14284 (seqFromList!2040 lt!587996))))))

(assert (=> b!1626583 (=> (not res!727395) (not e!1043296))))

(declare-fun b!1626584 () Bool)

(assert (=> b!1626584 (= e!1043297 (= (list!7011 (_2!10117 lt!588234)) (_2!10120 (lexList!830 thiss!17113 rules!1846 (list!7011 (seqFromList!2040 lt!587996))))))))

(declare-fun b!1626585 () Bool)

(assert (=> b!1626585 (= e!1043298 (= (_2!10117 lt!588234) (seqFromList!2040 lt!587996)))))

(assert (= (and d!489589 c!264658) b!1626583))

(assert (= (and d!489589 (not c!264658)) b!1626585))

(assert (= (and b!1626583 res!727395) b!1626581))

(assert (= (and d!489589 res!727393) b!1626582))

(assert (= (and b!1626582 res!727394) b!1626584))

(declare-fun m!1955423 () Bool)

(assert (=> b!1626584 m!1955423))

(assert (=> b!1626584 m!1955023))

(declare-fun m!1955425 () Bool)

(assert (=> b!1626584 m!1955425))

(assert (=> b!1626584 m!1955425))

(declare-fun m!1955427 () Bool)

(assert (=> b!1626584 m!1955427))

(declare-fun m!1955429 () Bool)

(assert (=> b!1626582 m!1955429))

(assert (=> b!1626582 m!1955023))

(assert (=> b!1626582 m!1955425))

(assert (=> b!1626582 m!1955425))

(assert (=> b!1626582 m!1955427))

(declare-fun m!1955431 () Bool)

(assert (=> d!489589 m!1955431))

(assert (=> d!489589 m!1955023))

(assert (=> d!489589 m!1955023))

(declare-fun m!1955433 () Bool)

(assert (=> d!489589 m!1955433))

(declare-fun m!1955435 () Bool)

(assert (=> b!1626583 m!1955435))

(assert (=> b!1626583 m!1955023))

(declare-fun m!1955437 () Bool)

(assert (=> b!1626583 m!1955437))

(declare-fun m!1955439 () Bool)

(assert (=> b!1626581 m!1955439))

(assert (=> b!1626375 d!489589))

(declare-fun d!489605 () Bool)

(declare-fun fromListB!897 (List!17924) BalanceConc!11820)

(assert (=> d!489605 (= (seqFromList!2040 lt!587996) (fromListB!897 lt!587996))))

(declare-fun bs!394816 () Bool)

(assert (= bs!394816 d!489605))

(declare-fun m!1955441 () Bool)

(assert (=> bs!394816 m!1955441))

(assert (=> b!1626375 d!489605))

(declare-fun d!489607 () Bool)

(declare-fun lt!588237 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2475 (List!17925) (InoxSet Rule!6090))

(assert (=> d!489607 (= lt!588237 (select (content!2475 rules!1846) (rule!4971 (h!23257 tokens!457))))))

(declare-fun e!1043303 () Bool)

(assert (=> d!489607 (= lt!588237 e!1043303)))

(declare-fun res!727401 () Bool)

(assert (=> d!489607 (=> (not res!727401) (not e!1043303))))

(assert (=> d!489607 (= res!727401 ((_ is Cons!17855) rules!1846))))

(assert (=> d!489607 (= (contains!3120 rules!1846 (rule!4971 (h!23257 tokens!457))) lt!588237)))

(declare-fun b!1626590 () Bool)

(declare-fun e!1043304 () Bool)

(assert (=> b!1626590 (= e!1043303 e!1043304)))

(declare-fun res!727400 () Bool)

(assert (=> b!1626590 (=> res!727400 e!1043304)))

(assert (=> b!1626590 (= res!727400 (= (h!23256 rules!1846) (rule!4971 (h!23257 tokens!457))))))

(declare-fun b!1626591 () Bool)

(assert (=> b!1626591 (= e!1043304 (contains!3120 (t!149058 rules!1846) (rule!4971 (h!23257 tokens!457))))))

(assert (= (and d!489607 res!727401) b!1626590))

(assert (= (and b!1626590 (not res!727400)) b!1626591))

(declare-fun m!1955443 () Bool)

(assert (=> d!489607 m!1955443))

(declare-fun m!1955445 () Bool)

(assert (=> d!489607 m!1955445))

(declare-fun m!1955447 () Bool)

(assert (=> b!1626591 m!1955447))

(assert (=> b!1626376 d!489607))

(declare-fun d!489609 () Bool)

(declare-fun res!727410 () Bool)

(declare-fun e!1043314 () Bool)

(assert (=> d!489609 (=> res!727410 e!1043314)))

(assert (=> d!489609 (= res!727410 (or (not ((_ is Cons!17856) tokens!457)) (not ((_ is Cons!17856) (t!149059 tokens!457)))))))

(assert (=> d!489609 (= (tokensListTwoByTwoPredicateSeparableList!467 thiss!17113 tokens!457 rules!1846) e!1043314)))

(declare-fun b!1626604 () Bool)

(declare-fun e!1043313 () Bool)

(assert (=> b!1626604 (= e!1043314 e!1043313)))

(declare-fun res!727411 () Bool)

(assert (=> b!1626604 (=> (not res!727411) (not e!1043313))))

(assert (=> b!1626604 (= res!727411 (separableTokensPredicate!716 thiss!17113 (h!23257 tokens!457) (h!23257 (t!149059 tokens!457)) rules!1846))))

(declare-fun lt!588288 () Unit!28923)

(declare-fun Unit!28944 () Unit!28923)

(assert (=> b!1626604 (= lt!588288 Unit!28944)))

(assert (=> b!1626604 (> (size!14284 (charsOf!1794 (h!23257 (t!149059 tokens!457)))) 0)))

(declare-fun lt!588291 () Unit!28923)

(declare-fun Unit!28945 () Unit!28923)

(assert (=> b!1626604 (= lt!588291 Unit!28945)))

(assert (=> b!1626604 (rulesProduceIndividualToken!1426 thiss!17113 rules!1846 (h!23257 (t!149059 tokens!457)))))

(declare-fun lt!588290 () Unit!28923)

(declare-fun Unit!28946 () Unit!28923)

(assert (=> b!1626604 (= lt!588290 Unit!28946)))

(assert (=> b!1626604 (rulesProduceIndividualToken!1426 thiss!17113 rules!1846 (h!23257 tokens!457))))

(declare-fun lt!588287 () Unit!28923)

(declare-fun lt!588289 () Unit!28923)

(assert (=> b!1626604 (= lt!588287 lt!588289)))

(assert (=> b!1626604 (rulesProduceIndividualToken!1426 thiss!17113 rules!1846 (h!23257 (t!149059 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!567 (LexerInterface!2774 List!17925 List!17926 Token!5856) Unit!28923)

(assert (=> b!1626604 (= lt!588289 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!567 thiss!17113 rules!1846 tokens!457 (h!23257 (t!149059 tokens!457))))))

(declare-fun lt!588292 () Unit!28923)

(declare-fun lt!588286 () Unit!28923)

(assert (=> b!1626604 (= lt!588292 lt!588286)))

(assert (=> b!1626604 (rulesProduceIndividualToken!1426 thiss!17113 rules!1846 (h!23257 tokens!457))))

(assert (=> b!1626604 (= lt!588286 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!567 thiss!17113 rules!1846 tokens!457 (h!23257 tokens!457)))))

(declare-fun b!1626605 () Bool)

(assert (=> b!1626605 (= e!1043313 (tokensListTwoByTwoPredicateSeparableList!467 thiss!17113 (Cons!17856 (h!23257 (t!149059 tokens!457)) (t!149059 (t!149059 tokens!457))) rules!1846))))

(assert (= (and d!489609 (not res!727410)) b!1626604))

(assert (= (and b!1626604 res!727411) b!1626605))

(assert (=> b!1626604 m!1954987))

(declare-fun m!1955449 () Bool)

(assert (=> b!1626604 m!1955449))

(assert (=> b!1626604 m!1954987))

(declare-fun m!1955451 () Bool)

(assert (=> b!1626604 m!1955451))

(declare-fun m!1955453 () Bool)

(assert (=> b!1626604 m!1955453))

(declare-fun m!1955455 () Bool)

(assert (=> b!1626604 m!1955455))

(assert (=> b!1626604 m!1954909))

(assert (=> b!1626604 m!1955017))

(declare-fun m!1955457 () Bool)

(assert (=> b!1626605 m!1955457))

(assert (=> b!1626363 d!489609))

(declare-fun d!489611 () Bool)

(declare-fun lt!588322 () Bool)

(declare-fun e!1043326 () Bool)

(assert (=> d!489611 (= lt!588322 e!1043326)))

(declare-fun res!727426 () Bool)

(assert (=> d!489611 (=> (not res!727426) (not e!1043326))))

(assert (=> d!489611 (= res!727426 (= (list!7012 (_1!10117 (lex!1258 thiss!17113 rules!1846 (print!1305 thiss!17113 (singletonSeq!1568 (h!23257 tokens!457)))))) (list!7012 (singletonSeq!1568 (h!23257 tokens!457)))))))

(declare-fun e!1043327 () Bool)

(assert (=> d!489611 (= lt!588322 e!1043327)))

(declare-fun res!727427 () Bool)

(assert (=> d!489611 (=> (not res!727427) (not e!1043327))))

(declare-fun lt!588323 () tuple2!17430)

(assert (=> d!489611 (= res!727427 (= (size!14283 (_1!10117 lt!588323)) 1))))

(assert (=> d!489611 (= lt!588323 (lex!1258 thiss!17113 rules!1846 (print!1305 thiss!17113 (singletonSeq!1568 (h!23257 tokens!457)))))))

(assert (=> d!489611 (not (isEmpty!10883 rules!1846))))

(assert (=> d!489611 (= (rulesProduceIndividualToken!1426 thiss!17113 rules!1846 (h!23257 tokens!457)) lt!588322)))

(declare-fun b!1626623 () Bool)

(declare-fun res!727425 () Bool)

(assert (=> b!1626623 (=> (not res!727425) (not e!1043327))))

(declare-fun apply!4574 (BalanceConc!11822 Int) Token!5856)

(assert (=> b!1626623 (= res!727425 (= (apply!4574 (_1!10117 lt!588323) 0) (h!23257 tokens!457)))))

(declare-fun b!1626624 () Bool)

(assert (=> b!1626624 (= e!1043327 (isEmpty!10887 (_2!10117 lt!588323)))))

(declare-fun b!1626625 () Bool)

(assert (=> b!1626625 (= e!1043326 (isEmpty!10887 (_2!10117 (lex!1258 thiss!17113 rules!1846 (print!1305 thiss!17113 (singletonSeq!1568 (h!23257 tokens!457)))))))))

(assert (= (and d!489611 res!727427) b!1626623))

(assert (= (and b!1626623 res!727425) b!1626624))

(assert (= (and d!489611 res!727426) b!1626625))

(declare-fun m!1955551 () Bool)

(assert (=> d!489611 m!1955551))

(assert (=> d!489611 m!1954915))

(declare-fun m!1955553 () Bool)

(assert (=> d!489611 m!1955553))

(assert (=> d!489611 m!1954901))

(assert (=> d!489611 m!1954915))

(assert (=> d!489611 m!1955553))

(declare-fun m!1955555 () Bool)

(assert (=> d!489611 m!1955555))

(assert (=> d!489611 m!1954915))

(declare-fun m!1955557 () Bool)

(assert (=> d!489611 m!1955557))

(declare-fun m!1955559 () Bool)

(assert (=> d!489611 m!1955559))

(declare-fun m!1955561 () Bool)

(assert (=> b!1626623 m!1955561))

(declare-fun m!1955563 () Bool)

(assert (=> b!1626624 m!1955563))

(assert (=> b!1626625 m!1954915))

(assert (=> b!1626625 m!1954915))

(assert (=> b!1626625 m!1955553))

(assert (=> b!1626625 m!1955553))

(assert (=> b!1626625 m!1955555))

(declare-fun m!1955565 () Bool)

(assert (=> b!1626625 m!1955565))

(assert (=> b!1626385 d!489611))

(declare-fun d!489637 () Bool)

(declare-fun c!264666 () Bool)

(assert (=> d!489637 (= c!264666 (isEmpty!10881 (++!4751 lt!587996 lt!587980)))))

(declare-fun e!1043330 () Bool)

(assert (=> d!489637 (= (prefixMatch!408 lt!587975 (++!4751 lt!587996 lt!587980)) e!1043330)))

(declare-fun b!1626630 () Bool)

(declare-fun lostCause!440 (Regex!4473) Bool)

(assert (=> b!1626630 (= e!1043330 (not (lostCause!440 lt!587975)))))

(declare-fun b!1626631 () Bool)

(declare-fun derivativeStep!1084 (Regex!4473 C!9120) Regex!4473)

(assert (=> b!1626631 (= e!1043330 (prefixMatch!408 (derivativeStep!1084 lt!587975 (head!3449 (++!4751 lt!587996 lt!587980))) (tail!2367 (++!4751 lt!587996 lt!587980))))))

(assert (= (and d!489637 c!264666) b!1626630))

(assert (= (and d!489637 (not c!264666)) b!1626631))

(assert (=> d!489637 m!1954963))

(declare-fun m!1955567 () Bool)

(assert (=> d!489637 m!1955567))

(declare-fun m!1955569 () Bool)

(assert (=> b!1626630 m!1955569))

(assert (=> b!1626631 m!1954963))

(declare-fun m!1955571 () Bool)

(assert (=> b!1626631 m!1955571))

(assert (=> b!1626631 m!1955571))

(declare-fun m!1955573 () Bool)

(assert (=> b!1626631 m!1955573))

(assert (=> b!1626631 m!1954963))

(declare-fun m!1955575 () Bool)

(assert (=> b!1626631 m!1955575))

(assert (=> b!1626631 m!1955573))

(assert (=> b!1626631 m!1955575))

(declare-fun m!1955577 () Bool)

(assert (=> b!1626631 m!1955577))

(assert (=> b!1626364 d!489637))

(declare-fun d!489639 () Bool)

(declare-fun e!1043342 () Bool)

(assert (=> d!489639 e!1043342))

(declare-fun res!727436 () Bool)

(assert (=> d!489639 (=> (not res!727436) (not e!1043342))))

(declare-fun lt!588328 () List!17924)

(declare-fun content!2476 (List!17924) (InoxSet C!9120))

(assert (=> d!489639 (= res!727436 (= (content!2476 lt!588328) ((_ map or) (content!2476 lt!587996) (content!2476 lt!587980))))))

(declare-fun e!1043341 () List!17924)

(assert (=> d!489639 (= lt!588328 e!1043341)))

(declare-fun c!264671 () Bool)

(assert (=> d!489639 (= c!264671 ((_ is Nil!17854) lt!587996))))

(assert (=> d!489639 (= (++!4751 lt!587996 lt!587980) lt!588328)))

(declare-fun b!1626646 () Bool)

(assert (=> b!1626646 (= e!1043341 lt!587980)))

(declare-fun b!1626648 () Bool)

(declare-fun res!727437 () Bool)

(assert (=> b!1626648 (=> (not res!727437) (not e!1043342))))

(assert (=> b!1626648 (= res!727437 (= (size!14282 lt!588328) (+ (size!14282 lt!587996) (size!14282 lt!587980))))))

(declare-fun b!1626647 () Bool)

(assert (=> b!1626647 (= e!1043341 (Cons!17854 (h!23255 lt!587996) (++!4751 (t!149057 lt!587996) lt!587980)))))

(declare-fun b!1626649 () Bool)

(assert (=> b!1626649 (= e!1043342 (or (not (= lt!587980 Nil!17854)) (= lt!588328 lt!587996)))))

(assert (= (and d!489639 c!264671) b!1626646))

(assert (= (and d!489639 (not c!264671)) b!1626647))

(assert (= (and d!489639 res!727436) b!1626648))

(assert (= (and b!1626648 res!727437) b!1626649))

(declare-fun m!1955579 () Bool)

(assert (=> d!489639 m!1955579))

(declare-fun m!1955581 () Bool)

(assert (=> d!489639 m!1955581))

(declare-fun m!1955583 () Bool)

(assert (=> d!489639 m!1955583))

(declare-fun m!1955585 () Bool)

(assert (=> b!1626648 m!1955585))

(assert (=> b!1626648 m!1955305))

(declare-fun m!1955587 () Bool)

(assert (=> b!1626648 m!1955587))

(declare-fun m!1955589 () Bool)

(assert (=> b!1626647 m!1955589))

(assert (=> b!1626364 d!489639))

(declare-fun d!489641 () Bool)

(declare-fun list!7016 (Conc!5938) List!17924)

(assert (=> d!489641 (= (list!7011 lt!587976) (list!7016 (c!264623 lt!587976)))))

(declare-fun bs!394825 () Bool)

(assert (= bs!394825 d!489641))

(declare-fun m!1955591 () Bool)

(assert (=> bs!394825 m!1955591))

(assert (=> b!1626364 d!489641))

(declare-fun d!489643 () Bool)

(assert (=> d!489643 (= (inv!23225 (tag!3423 (rule!4971 (h!23257 tokens!457)))) (= (mod (str.len (value!99304 (tag!3423 (rule!4971 (h!23257 tokens!457))))) 2) 0))))

(assert (=> b!1626383 d!489643))

(declare-fun d!489645 () Bool)

(declare-fun res!727445 () Bool)

(declare-fun e!1043349 () Bool)

(assert (=> d!489645 (=> (not res!727445) (not e!1043349))))

(declare-fun semiInverseModEq!1201 (Int Int) Bool)

(assert (=> d!489645 (= res!727445 (semiInverseModEq!1201 (toChars!4431 (transformation!3145 (rule!4971 (h!23257 tokens!457)))) (toValue!4572 (transformation!3145 (rule!4971 (h!23257 tokens!457))))))))

(assert (=> d!489645 (= (inv!23228 (transformation!3145 (rule!4971 (h!23257 tokens!457)))) e!1043349)))

(declare-fun b!1626662 () Bool)

(declare-fun equivClasses!1142 (Int Int) Bool)

(assert (=> b!1626662 (= e!1043349 (equivClasses!1142 (toChars!4431 (transformation!3145 (rule!4971 (h!23257 tokens!457)))) (toValue!4572 (transformation!3145 (rule!4971 (h!23257 tokens!457))))))))

(assert (= (and d!489645 res!727445) b!1626662))

(declare-fun m!1955625 () Bool)

(assert (=> d!489645 m!1955625))

(declare-fun m!1955627 () Bool)

(assert (=> b!1626662 m!1955627))

(assert (=> b!1626383 d!489645))

(declare-fun b!1626681 () Bool)

(declare-fun e!1043357 () Bool)

(declare-fun e!1043358 () Bool)

(assert (=> b!1626681 (= e!1043357 e!1043358)))

(declare-fun res!727462 () Bool)

(assert (=> b!1626681 (=> (not res!727462) (not e!1043358))))

(declare-fun lt!588346 () Option!3316)

(assert (=> b!1626681 (= res!727462 (isDefined!2683 lt!588346))))

(declare-fun b!1626682 () Bool)

(declare-fun res!727464 () Bool)

(assert (=> b!1626682 (=> (not res!727464) (not e!1043358))))

(assert (=> b!1626682 (= res!727464 (= (++!4751 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588346)))) (_2!10119 (get!5150 lt!588346))) lt!587986))))

(declare-fun b!1626683 () Bool)

(declare-fun e!1043356 () Option!3316)

(declare-fun lt!588343 () Option!3316)

(declare-fun lt!588342 () Option!3316)

(assert (=> b!1626683 (= e!1043356 (ite (and ((_ is None!3315) lt!588343) ((_ is None!3315) lt!588342)) None!3315 (ite ((_ is None!3315) lt!588342) lt!588343 (ite ((_ is None!3315) lt!588343) lt!588342 (ite (>= (size!14278 (_1!10119 (v!24358 lt!588343))) (size!14278 (_1!10119 (v!24358 lt!588342)))) lt!588343 lt!588342)))))))

(declare-fun call!105263 () Option!3316)

(assert (=> b!1626683 (= lt!588343 call!105263)))

(assert (=> b!1626683 (= lt!588342 (maxPrefix!1338 thiss!17113 (t!149058 rules!1846) lt!587986))))

(declare-fun d!489657 () Bool)

(assert (=> d!489657 e!1043357))

(declare-fun res!727463 () Bool)

(assert (=> d!489657 (=> res!727463 e!1043357)))

(declare-fun isEmpty!10890 (Option!3316) Bool)

(assert (=> d!489657 (= res!727463 (isEmpty!10890 lt!588346))))

(assert (=> d!489657 (= lt!588346 e!1043356)))

(declare-fun c!264675 () Bool)

(assert (=> d!489657 (= c!264675 (and ((_ is Cons!17855) rules!1846) ((_ is Nil!17855) (t!149058 rules!1846))))))

(declare-fun lt!588344 () Unit!28923)

(declare-fun lt!588345 () Unit!28923)

(assert (=> d!489657 (= lt!588344 lt!588345)))

(assert (=> d!489657 (isPrefix!1405 lt!587986 lt!587986)))

(declare-fun lemmaIsPrefixRefl!962 (List!17924 List!17924) Unit!28923)

(assert (=> d!489657 (= lt!588345 (lemmaIsPrefixRefl!962 lt!587986 lt!587986))))

(declare-fun rulesValidInductive!974 (LexerInterface!2774 List!17925) Bool)

(assert (=> d!489657 (rulesValidInductive!974 thiss!17113 rules!1846)))

(assert (=> d!489657 (= (maxPrefix!1338 thiss!17113 rules!1846 lt!587986) lt!588346)))

(declare-fun b!1626684 () Bool)

(declare-fun res!727465 () Bool)

(assert (=> b!1626684 (=> (not res!727465) (not e!1043358))))

(assert (=> b!1626684 (= res!727465 (matchR!1972 (regex!3145 (rule!4971 (_1!10119 (get!5150 lt!588346)))) (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588346))))))))

(declare-fun b!1626685 () Bool)

(declare-fun res!727460 () Bool)

(assert (=> b!1626685 (=> (not res!727460) (not e!1043358))))

(declare-fun apply!4575 (TokenValueInjection!6130 BalanceConc!11820) TokenValue!3235)

(assert (=> b!1626685 (= res!727460 (= (value!99305 (_1!10119 (get!5150 lt!588346))) (apply!4575 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588346)))) (seqFromList!2040 (originalCharacters!3959 (_1!10119 (get!5150 lt!588346)))))))))

(declare-fun b!1626686 () Bool)

(declare-fun res!727461 () Bool)

(assert (=> b!1626686 (=> (not res!727461) (not e!1043358))))

(assert (=> b!1626686 (= res!727461 (= (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588346)))) (originalCharacters!3959 (_1!10119 (get!5150 lt!588346)))))))

(declare-fun bm!105258 () Bool)

(declare-fun maxPrefixOneRule!777 (LexerInterface!2774 Rule!6090 List!17924) Option!3316)

(assert (=> bm!105258 (= call!105263 (maxPrefixOneRule!777 thiss!17113 (h!23256 rules!1846) lt!587986))))

(declare-fun b!1626687 () Bool)

(assert (=> b!1626687 (= e!1043358 (contains!3120 rules!1846 (rule!4971 (_1!10119 (get!5150 lt!588346)))))))

(declare-fun b!1626688 () Bool)

(assert (=> b!1626688 (= e!1043356 call!105263)))

(declare-fun b!1626689 () Bool)

(declare-fun res!727466 () Bool)

(assert (=> b!1626689 (=> (not res!727466) (not e!1043358))))

(assert (=> b!1626689 (= res!727466 (< (size!14282 (_2!10119 (get!5150 lt!588346))) (size!14282 lt!587986)))))

(assert (= (and d!489657 c!264675) b!1626688))

(assert (= (and d!489657 (not c!264675)) b!1626683))

(assert (= (or b!1626688 b!1626683) bm!105258))

(assert (= (and d!489657 (not res!727463)) b!1626681))

(assert (= (and b!1626681 res!727462) b!1626686))

(assert (= (and b!1626686 res!727461) b!1626689))

(assert (= (and b!1626689 res!727466) b!1626682))

(assert (= (and b!1626682 res!727464) b!1626685))

(assert (= (and b!1626685 res!727460) b!1626684))

(assert (= (and b!1626684 res!727465) b!1626687))

(declare-fun m!1955631 () Bool)

(assert (=> b!1626683 m!1955631))

(declare-fun m!1955633 () Bool)

(assert (=> b!1626689 m!1955633))

(declare-fun m!1955635 () Bool)

(assert (=> b!1626689 m!1955635))

(declare-fun m!1955637 () Bool)

(assert (=> b!1626689 m!1955637))

(assert (=> b!1626684 m!1955633))

(declare-fun m!1955639 () Bool)

(assert (=> b!1626684 m!1955639))

(assert (=> b!1626684 m!1955639))

(declare-fun m!1955641 () Bool)

(assert (=> b!1626684 m!1955641))

(assert (=> b!1626684 m!1955641))

(declare-fun m!1955643 () Bool)

(assert (=> b!1626684 m!1955643))

(assert (=> b!1626687 m!1955633))

(declare-fun m!1955645 () Bool)

(assert (=> b!1626687 m!1955645))

(declare-fun m!1955647 () Bool)

(assert (=> d!489657 m!1955647))

(declare-fun m!1955649 () Bool)

(assert (=> d!489657 m!1955649))

(declare-fun m!1955651 () Bool)

(assert (=> d!489657 m!1955651))

(declare-fun m!1955653 () Bool)

(assert (=> d!489657 m!1955653))

(assert (=> b!1626685 m!1955633))

(declare-fun m!1955655 () Bool)

(assert (=> b!1626685 m!1955655))

(assert (=> b!1626685 m!1955655))

(declare-fun m!1955657 () Bool)

(assert (=> b!1626685 m!1955657))

(assert (=> b!1626686 m!1955633))

(assert (=> b!1626686 m!1955639))

(assert (=> b!1626686 m!1955639))

(assert (=> b!1626686 m!1955641))

(declare-fun m!1955659 () Bool)

(assert (=> bm!105258 m!1955659))

(declare-fun m!1955661 () Bool)

(assert (=> b!1626681 m!1955661))

(assert (=> b!1626682 m!1955633))

(assert (=> b!1626682 m!1955639))

(assert (=> b!1626682 m!1955639))

(assert (=> b!1626682 m!1955641))

(assert (=> b!1626682 m!1955641))

(declare-fun m!1955663 () Bool)

(assert (=> b!1626682 m!1955663))

(assert (=> b!1626384 d!489657))

(declare-fun d!489659 () Bool)

(assert (=> d!489659 (= (list!7011 lt!587977) (list!7016 (c!264623 lt!587977)))))

(declare-fun bs!394829 () Bool)

(assert (= bs!394829 d!489659))

(declare-fun m!1955665 () Bool)

(assert (=> bs!394829 m!1955665))

(assert (=> b!1626384 d!489659))

(declare-fun d!489661 () Bool)

(declare-fun lt!588349 () BalanceConc!11820)

(assert (=> d!489661 (= (list!7011 lt!588349) (printList!889 thiss!17113 (list!7012 lt!587983)))))

(assert (=> d!489661 (= lt!588349 (printTailRec!827 thiss!17113 lt!587983 0 (BalanceConc!11821 Empty!5938)))))

(assert (=> d!489661 (= (print!1305 thiss!17113 lt!587983) lt!588349)))

(declare-fun bs!394830 () Bool)

(assert (= bs!394830 d!489661))

(declare-fun m!1955667 () Bool)

(assert (=> bs!394830 m!1955667))

(declare-fun m!1955669 () Bool)

(assert (=> bs!394830 m!1955669))

(assert (=> bs!394830 m!1955669))

(declare-fun m!1955671 () Bool)

(assert (=> bs!394830 m!1955671))

(assert (=> bs!394830 m!1954911))

(assert (=> b!1626384 d!489661))

(declare-fun d!489663 () Bool)

(declare-fun c!264678 () Bool)

(assert (=> d!489663 (= c!264678 ((_ is Cons!17856) (Cons!17856 (h!23257 tokens!457) Nil!17856)))))

(declare-fun e!1043361 () List!17924)

(assert (=> d!489663 (= (printList!889 thiss!17113 (Cons!17856 (h!23257 tokens!457) Nil!17856)) e!1043361)))

(declare-fun b!1626694 () Bool)

(assert (=> b!1626694 (= e!1043361 (++!4751 (list!7011 (charsOf!1794 (h!23257 (Cons!17856 (h!23257 tokens!457) Nil!17856)))) (printList!889 thiss!17113 (t!149059 (Cons!17856 (h!23257 tokens!457) Nil!17856)))))))

(declare-fun b!1626695 () Bool)

(assert (=> b!1626695 (= e!1043361 Nil!17854)))

(assert (= (and d!489663 c!264678) b!1626694))

(assert (= (and d!489663 (not c!264678)) b!1626695))

(declare-fun m!1955673 () Bool)

(assert (=> b!1626694 m!1955673))

(assert (=> b!1626694 m!1955673))

(declare-fun m!1955675 () Bool)

(assert (=> b!1626694 m!1955675))

(declare-fun m!1955677 () Bool)

(assert (=> b!1626694 m!1955677))

(assert (=> b!1626694 m!1955675))

(assert (=> b!1626694 m!1955677))

(declare-fun m!1955679 () Bool)

(assert (=> b!1626694 m!1955679))

(assert (=> b!1626384 d!489663))

(declare-fun d!489665 () Bool)

(declare-fun lt!588370 () BalanceConc!11820)

(declare-fun printListTailRec!357 (LexerInterface!2774 List!17926 List!17924) List!17924)

(declare-fun dropList!611 (BalanceConc!11822 Int) List!17926)

(assert (=> d!489665 (= (list!7011 lt!588370) (printListTailRec!357 thiss!17113 (dropList!611 lt!587983 0) (list!7011 (BalanceConc!11821 Empty!5938))))))

(declare-fun e!1043366 () BalanceConc!11820)

(assert (=> d!489665 (= lt!588370 e!1043366)))

(declare-fun c!264681 () Bool)

(assert (=> d!489665 (= c!264681 (>= 0 (size!14283 lt!587983)))))

(declare-fun e!1043367 () Bool)

(assert (=> d!489665 e!1043367))

(declare-fun res!727469 () Bool)

(assert (=> d!489665 (=> (not res!727469) (not e!1043367))))

(assert (=> d!489665 (= res!727469 (>= 0 0))))

(assert (=> d!489665 (= (printTailRec!827 thiss!17113 lt!587983 0 (BalanceConc!11821 Empty!5938)) lt!588370)))

(declare-fun b!1626702 () Bool)

(assert (=> b!1626702 (= e!1043367 (<= 0 (size!14283 lt!587983)))))

(declare-fun b!1626703 () Bool)

(assert (=> b!1626703 (= e!1043366 (BalanceConc!11821 Empty!5938))))

(declare-fun b!1626704 () Bool)

(assert (=> b!1626704 (= e!1043366 (printTailRec!827 thiss!17113 lt!587983 (+ 0 1) (++!4752 (BalanceConc!11821 Empty!5938) (charsOf!1794 (apply!4574 lt!587983 0)))))))

(declare-fun lt!588366 () List!17926)

(assert (=> b!1626704 (= lt!588366 (list!7012 lt!587983))))

(declare-fun lt!588367 () Unit!28923)

(declare-fun lemmaDropApply!564 (List!17926 Int) Unit!28923)

(assert (=> b!1626704 (= lt!588367 (lemmaDropApply!564 lt!588366 0))))

(declare-fun head!3452 (List!17926) Token!5856)

(declare-fun drop!874 (List!17926 Int) List!17926)

(declare-fun apply!4576 (List!17926 Int) Token!5856)

(assert (=> b!1626704 (= (head!3452 (drop!874 lt!588366 0)) (apply!4576 lt!588366 0))))

(declare-fun lt!588365 () Unit!28923)

(assert (=> b!1626704 (= lt!588365 lt!588367)))

(declare-fun lt!588369 () List!17926)

(assert (=> b!1626704 (= lt!588369 (list!7012 lt!587983))))

(declare-fun lt!588368 () Unit!28923)

(declare-fun lemmaDropTail!544 (List!17926 Int) Unit!28923)

(assert (=> b!1626704 (= lt!588368 (lemmaDropTail!544 lt!588369 0))))

(declare-fun tail!2368 (List!17926) List!17926)

(assert (=> b!1626704 (= (tail!2368 (drop!874 lt!588369 0)) (drop!874 lt!588369 (+ 0 1)))))

(declare-fun lt!588364 () Unit!28923)

(assert (=> b!1626704 (= lt!588364 lt!588368)))

(assert (= (and d!489665 res!727469) b!1626702))

(assert (= (and d!489665 c!264681) b!1626703))

(assert (= (and d!489665 (not c!264681)) b!1626704))

(declare-fun m!1955681 () Bool)

(assert (=> d!489665 m!1955681))

(declare-fun m!1955683 () Bool)

(assert (=> d!489665 m!1955683))

(declare-fun m!1955685 () Bool)

(assert (=> d!489665 m!1955685))

(declare-fun m!1955687 () Bool)

(assert (=> d!489665 m!1955687))

(assert (=> d!489665 m!1955685))

(declare-fun m!1955689 () Bool)

(assert (=> d!489665 m!1955689))

(assert (=> d!489665 m!1955687))

(assert (=> b!1626702 m!1955681))

(declare-fun m!1955691 () Bool)

(assert (=> b!1626704 m!1955691))

(declare-fun m!1955693 () Bool)

(assert (=> b!1626704 m!1955693))

(declare-fun m!1955695 () Bool)

(assert (=> b!1626704 m!1955695))

(declare-fun m!1955697 () Bool)

(assert (=> b!1626704 m!1955697))

(declare-fun m!1955699 () Bool)

(assert (=> b!1626704 m!1955699))

(assert (=> b!1626704 m!1955697))

(assert (=> b!1626704 m!1955669))

(declare-fun m!1955701 () Bool)

(assert (=> b!1626704 m!1955701))

(assert (=> b!1626704 m!1955699))

(declare-fun m!1955703 () Bool)

(assert (=> b!1626704 m!1955703))

(assert (=> b!1626704 m!1955695))

(declare-fun m!1955705 () Bool)

(assert (=> b!1626704 m!1955705))

(assert (=> b!1626704 m!1955703))

(declare-fun m!1955707 () Bool)

(assert (=> b!1626704 m!1955707))

(declare-fun m!1955709 () Bool)

(assert (=> b!1626704 m!1955709))

(assert (=> b!1626704 m!1955691))

(declare-fun m!1955711 () Bool)

(assert (=> b!1626704 m!1955711))

(declare-fun m!1955713 () Bool)

(assert (=> b!1626704 m!1955713))

(assert (=> b!1626384 d!489665))

(declare-fun d!489667 () Bool)

(declare-fun e!1043370 () Bool)

(assert (=> d!489667 e!1043370))

(declare-fun res!727472 () Bool)

(assert (=> d!489667 (=> (not res!727472) (not e!1043370))))

(declare-fun lt!588373 () BalanceConc!11822)

(assert (=> d!489667 (= res!727472 (= (list!7012 lt!588373) (Cons!17856 (h!23257 tokens!457) Nil!17856)))))

(declare-fun singleton!673 (Token!5856) BalanceConc!11822)

(assert (=> d!489667 (= lt!588373 (singleton!673 (h!23257 tokens!457)))))

(assert (=> d!489667 (= (singletonSeq!1568 (h!23257 tokens!457)) lt!588373)))

(declare-fun b!1626707 () Bool)

(declare-fun isBalanced!1793 (Conc!5939) Bool)

(assert (=> b!1626707 (= e!1043370 (isBalanced!1793 (c!264625 lt!588373)))))

(assert (= (and d!489667 res!727472) b!1626707))

(declare-fun m!1955715 () Bool)

(assert (=> d!489667 m!1955715))

(declare-fun m!1955717 () Bool)

(assert (=> d!489667 m!1955717))

(declare-fun m!1955719 () Bool)

(assert (=> b!1626707 m!1955719))

(assert (=> b!1626384 d!489667))

(declare-fun d!489669 () Bool)

(assert (=> d!489669 (= (head!3449 (originalCharacters!3959 (h!23257 (t!149059 tokens!457)))) (h!23255 (originalCharacters!3959 (h!23257 (t!149059 tokens!457)))))))

(assert (=> b!1626381 d!489669))

(declare-fun d!489671 () Bool)

(assert (=> d!489671 (= (head!3449 lt!587994) (h!23255 lt!587994))))

(assert (=> b!1626390 d!489671))

(declare-fun d!489673 () Bool)

(declare-fun res!727479 () Bool)

(declare-fun e!1043377 () Bool)

(assert (=> d!489673 (=> (not res!727479) (not e!1043377))))

(declare-fun rulesValid!1129 (LexerInterface!2774 List!17925) Bool)

(assert (=> d!489673 (= res!727479 (rulesValid!1129 thiss!17113 rules!1846))))

(assert (=> d!489673 (= (rulesInvariant!2443 thiss!17113 rules!1846) e!1043377)))

(declare-fun b!1626714 () Bool)

(declare-datatypes ((List!17929 0))(
  ( (Nil!17859) (Cons!17859 (h!23260 String!20507) (t!149104 List!17929)) )
))
(declare-fun noDuplicateTag!1129 (LexerInterface!2774 List!17925 List!17929) Bool)

(assert (=> b!1626714 (= e!1043377 (noDuplicateTag!1129 thiss!17113 rules!1846 Nil!17859))))

(assert (= (and d!489673 res!727479) b!1626714))

(declare-fun m!1955721 () Bool)

(assert (=> d!489673 m!1955721))

(declare-fun m!1955723 () Bool)

(assert (=> b!1626714 m!1955723))

(assert (=> b!1626367 d!489673))

(declare-fun d!489675 () Bool)

(assert (=> d!489675 (= (get!5150 lt!587999) (v!24358 lt!587999))))

(assert (=> b!1626389 d!489675))

(declare-fun d!489677 () Bool)

(assert (=> d!489677 (= (isDefined!2683 (maxPrefix!1338 thiss!17113 rules!1846 (originalCharacters!3959 (h!23257 tokens!457)))) (not (isEmpty!10890 (maxPrefix!1338 thiss!17113 rules!1846 (originalCharacters!3959 (h!23257 tokens!457))))))))

(declare-fun bs!394831 () Bool)

(assert (= bs!394831 d!489677))

(assert (=> bs!394831 m!1954923))

(declare-fun m!1955725 () Bool)

(assert (=> bs!394831 m!1955725))

(assert (=> b!1626389 d!489677))

(declare-fun d!489679 () Bool)

(declare-fun e!1043379 () Bool)

(assert (=> d!489679 e!1043379))

(declare-fun res!727480 () Bool)

(assert (=> d!489679 (=> (not res!727480) (not e!1043379))))

(declare-fun lt!588376 () List!17924)

(assert (=> d!489679 (= res!727480 (= (content!2476 lt!588376) ((_ map or) (content!2476 (originalCharacters!3959 (h!23257 tokens!457))) (content!2476 lt!588000))))))

(declare-fun e!1043378 () List!17924)

(assert (=> d!489679 (= lt!588376 e!1043378)))

(declare-fun c!264682 () Bool)

(assert (=> d!489679 (= c!264682 ((_ is Nil!17854) (originalCharacters!3959 (h!23257 tokens!457))))))

(assert (=> d!489679 (= (++!4751 (originalCharacters!3959 (h!23257 tokens!457)) lt!588000) lt!588376)))

(declare-fun b!1626715 () Bool)

(assert (=> b!1626715 (= e!1043378 lt!588000)))

(declare-fun b!1626717 () Bool)

(declare-fun res!727481 () Bool)

(assert (=> b!1626717 (=> (not res!727481) (not e!1043379))))

(assert (=> b!1626717 (= res!727481 (= (size!14282 lt!588376) (+ (size!14282 (originalCharacters!3959 (h!23257 tokens!457))) (size!14282 lt!588000))))))

(declare-fun b!1626716 () Bool)

(assert (=> b!1626716 (= e!1043378 (Cons!17854 (h!23255 (originalCharacters!3959 (h!23257 tokens!457))) (++!4751 (t!149057 (originalCharacters!3959 (h!23257 tokens!457))) lt!588000)))))

(declare-fun b!1626718 () Bool)

(assert (=> b!1626718 (= e!1043379 (or (not (= lt!588000 Nil!17854)) (= lt!588376 (originalCharacters!3959 (h!23257 tokens!457)))))))

(assert (= (and d!489679 c!264682) b!1626715))

(assert (= (and d!489679 (not c!264682)) b!1626716))

(assert (= (and d!489679 res!727480) b!1626717))

(assert (= (and b!1626717 res!727481) b!1626718))

(declare-fun m!1955727 () Bool)

(assert (=> d!489679 m!1955727))

(declare-fun m!1955729 () Bool)

(assert (=> d!489679 m!1955729))

(declare-fun m!1955731 () Bool)

(assert (=> d!489679 m!1955731))

(declare-fun m!1955733 () Bool)

(assert (=> b!1626717 m!1955733))

(assert (=> b!1626717 m!1955343))

(declare-fun m!1955735 () Bool)

(assert (=> b!1626717 m!1955735))

(declare-fun m!1955737 () Bool)

(assert (=> b!1626716 m!1955737))

(assert (=> b!1626389 d!489679))

(declare-fun d!489681 () Bool)

(declare-fun c!264683 () Bool)

(assert (=> d!489681 (= c!264683 (isEmpty!10881 (++!4751 (originalCharacters!3959 (h!23257 tokens!457)) lt!588000)))))

(declare-fun e!1043380 () Bool)

(assert (=> d!489681 (= (prefixMatch!408 lt!587975 (++!4751 (originalCharacters!3959 (h!23257 tokens!457)) lt!588000)) e!1043380)))

(declare-fun b!1626719 () Bool)

(assert (=> b!1626719 (= e!1043380 (not (lostCause!440 lt!587975)))))

(declare-fun b!1626720 () Bool)

(assert (=> b!1626720 (= e!1043380 (prefixMatch!408 (derivativeStep!1084 lt!587975 (head!3449 (++!4751 (originalCharacters!3959 (h!23257 tokens!457)) lt!588000))) (tail!2367 (++!4751 (originalCharacters!3959 (h!23257 tokens!457)) lt!588000))))))

(assert (= (and d!489681 c!264683) b!1626719))

(assert (= (and d!489681 (not c!264683)) b!1626720))

(assert (=> d!489681 m!1954929))

(declare-fun m!1955739 () Bool)

(assert (=> d!489681 m!1955739))

(assert (=> b!1626719 m!1955569))

(assert (=> b!1626720 m!1954929))

(declare-fun m!1955741 () Bool)

(assert (=> b!1626720 m!1955741))

(assert (=> b!1626720 m!1955741))

(declare-fun m!1955743 () Bool)

(assert (=> b!1626720 m!1955743))

(assert (=> b!1626720 m!1954929))

(declare-fun m!1955745 () Bool)

(assert (=> b!1626720 m!1955745))

(assert (=> b!1626720 m!1955743))

(assert (=> b!1626720 m!1955745))

(declare-fun m!1955747 () Bool)

(assert (=> b!1626720 m!1955747))

(assert (=> b!1626389 d!489681))

(declare-fun d!489683 () Bool)

(assert (=> d!489683 (= (isDefined!2683 lt!587999) (not (isEmpty!10890 lt!587999)))))

(declare-fun bs!394832 () Bool)

(assert (= bs!394832 d!489683))

(declare-fun m!1955749 () Bool)

(assert (=> bs!394832 m!1955749))

(assert (=> b!1626389 d!489683))

(declare-fun b!1626721 () Bool)

(declare-fun e!1043382 () Bool)

(declare-fun e!1043383 () Bool)

(assert (=> b!1626721 (= e!1043382 e!1043383)))

(declare-fun res!727484 () Bool)

(assert (=> b!1626721 (=> (not res!727484) (not e!1043383))))

(declare-fun lt!588381 () Option!3316)

(assert (=> b!1626721 (= res!727484 (isDefined!2683 lt!588381))))

(declare-fun b!1626722 () Bool)

(declare-fun res!727486 () Bool)

(assert (=> b!1626722 (=> (not res!727486) (not e!1043383))))

(assert (=> b!1626722 (= res!727486 (= (++!4751 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588381)))) (_2!10119 (get!5150 lt!588381))) lt!587996))))

(declare-fun b!1626723 () Bool)

(declare-fun e!1043381 () Option!3316)

(declare-fun lt!588378 () Option!3316)

(declare-fun lt!588377 () Option!3316)

(assert (=> b!1626723 (= e!1043381 (ite (and ((_ is None!3315) lt!588378) ((_ is None!3315) lt!588377)) None!3315 (ite ((_ is None!3315) lt!588377) lt!588378 (ite ((_ is None!3315) lt!588378) lt!588377 (ite (>= (size!14278 (_1!10119 (v!24358 lt!588378))) (size!14278 (_1!10119 (v!24358 lt!588377)))) lt!588378 lt!588377)))))))

(declare-fun call!105264 () Option!3316)

(assert (=> b!1626723 (= lt!588378 call!105264)))

(assert (=> b!1626723 (= lt!588377 (maxPrefix!1338 thiss!17113 (t!149058 rules!1846) lt!587996))))

(declare-fun d!489685 () Bool)

(assert (=> d!489685 e!1043382))

(declare-fun res!727485 () Bool)

(assert (=> d!489685 (=> res!727485 e!1043382)))

(assert (=> d!489685 (= res!727485 (isEmpty!10890 lt!588381))))

(assert (=> d!489685 (= lt!588381 e!1043381)))

(declare-fun c!264684 () Bool)

(assert (=> d!489685 (= c!264684 (and ((_ is Cons!17855) rules!1846) ((_ is Nil!17855) (t!149058 rules!1846))))))

(declare-fun lt!588379 () Unit!28923)

(declare-fun lt!588380 () Unit!28923)

(assert (=> d!489685 (= lt!588379 lt!588380)))

(assert (=> d!489685 (isPrefix!1405 lt!587996 lt!587996)))

(assert (=> d!489685 (= lt!588380 (lemmaIsPrefixRefl!962 lt!587996 lt!587996))))

(assert (=> d!489685 (rulesValidInductive!974 thiss!17113 rules!1846)))

(assert (=> d!489685 (= (maxPrefix!1338 thiss!17113 rules!1846 lt!587996) lt!588381)))

(declare-fun b!1626724 () Bool)

(declare-fun res!727487 () Bool)

(assert (=> b!1626724 (=> (not res!727487) (not e!1043383))))

(assert (=> b!1626724 (= res!727487 (matchR!1972 (regex!3145 (rule!4971 (_1!10119 (get!5150 lt!588381)))) (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588381))))))))

(declare-fun b!1626725 () Bool)

(declare-fun res!727482 () Bool)

(assert (=> b!1626725 (=> (not res!727482) (not e!1043383))))

(assert (=> b!1626725 (= res!727482 (= (value!99305 (_1!10119 (get!5150 lt!588381))) (apply!4575 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588381)))) (seqFromList!2040 (originalCharacters!3959 (_1!10119 (get!5150 lt!588381)))))))))

(declare-fun b!1626726 () Bool)

(declare-fun res!727483 () Bool)

(assert (=> b!1626726 (=> (not res!727483) (not e!1043383))))

(assert (=> b!1626726 (= res!727483 (= (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588381)))) (originalCharacters!3959 (_1!10119 (get!5150 lt!588381)))))))

(declare-fun bm!105259 () Bool)

(assert (=> bm!105259 (= call!105264 (maxPrefixOneRule!777 thiss!17113 (h!23256 rules!1846) lt!587996))))

(declare-fun b!1626727 () Bool)

(assert (=> b!1626727 (= e!1043383 (contains!3120 rules!1846 (rule!4971 (_1!10119 (get!5150 lt!588381)))))))

(declare-fun b!1626728 () Bool)

(assert (=> b!1626728 (= e!1043381 call!105264)))

(declare-fun b!1626729 () Bool)

(declare-fun res!727488 () Bool)

(assert (=> b!1626729 (=> (not res!727488) (not e!1043383))))

(assert (=> b!1626729 (= res!727488 (< (size!14282 (_2!10119 (get!5150 lt!588381))) (size!14282 lt!587996)))))

(assert (= (and d!489685 c!264684) b!1626728))

(assert (= (and d!489685 (not c!264684)) b!1626723))

(assert (= (or b!1626728 b!1626723) bm!105259))

(assert (= (and d!489685 (not res!727485)) b!1626721))

(assert (= (and b!1626721 res!727484) b!1626726))

(assert (= (and b!1626726 res!727483) b!1626729))

(assert (= (and b!1626729 res!727488) b!1626722))

(assert (= (and b!1626722 res!727486) b!1626725))

(assert (= (and b!1626725 res!727482) b!1626724))

(assert (= (and b!1626724 res!727487) b!1626727))

(declare-fun m!1955751 () Bool)

(assert (=> b!1626723 m!1955751))

(declare-fun m!1955753 () Bool)

(assert (=> b!1626729 m!1955753))

(declare-fun m!1955755 () Bool)

(assert (=> b!1626729 m!1955755))

(assert (=> b!1626729 m!1955305))

(assert (=> b!1626724 m!1955753))

(declare-fun m!1955757 () Bool)

(assert (=> b!1626724 m!1955757))

(assert (=> b!1626724 m!1955757))

(declare-fun m!1955759 () Bool)

(assert (=> b!1626724 m!1955759))

(assert (=> b!1626724 m!1955759))

(declare-fun m!1955761 () Bool)

(assert (=> b!1626724 m!1955761))

(assert (=> b!1626727 m!1955753))

(declare-fun m!1955763 () Bool)

(assert (=> b!1626727 m!1955763))

(declare-fun m!1955765 () Bool)

(assert (=> d!489685 m!1955765))

(declare-fun m!1955767 () Bool)

(assert (=> d!489685 m!1955767))

(declare-fun m!1955769 () Bool)

(assert (=> d!489685 m!1955769))

(assert (=> d!489685 m!1955653))

(assert (=> b!1626725 m!1955753))

(declare-fun m!1955771 () Bool)

(assert (=> b!1626725 m!1955771))

(assert (=> b!1626725 m!1955771))

(declare-fun m!1955773 () Bool)

(assert (=> b!1626725 m!1955773))

(assert (=> b!1626726 m!1955753))

(assert (=> b!1626726 m!1955757))

(assert (=> b!1626726 m!1955757))

(assert (=> b!1626726 m!1955759))

(declare-fun m!1955775 () Bool)

(assert (=> bm!105259 m!1955775))

(declare-fun m!1955777 () Bool)

(assert (=> b!1626721 m!1955777))

(assert (=> b!1626722 m!1955753))

(assert (=> b!1626722 m!1955757))

(assert (=> b!1626722 m!1955757))

(assert (=> b!1626722 m!1955759))

(assert (=> b!1626722 m!1955759))

(declare-fun m!1955779 () Bool)

(assert (=> b!1626722 m!1955779))

(assert (=> b!1626389 d!489685))

(declare-fun b!1626730 () Bool)

(declare-fun e!1043385 () Bool)

(declare-fun e!1043386 () Bool)

(assert (=> b!1626730 (= e!1043385 e!1043386)))

(declare-fun res!727491 () Bool)

(assert (=> b!1626730 (=> (not res!727491) (not e!1043386))))

(declare-fun lt!588386 () Option!3316)

(assert (=> b!1626730 (= res!727491 (isDefined!2683 lt!588386))))

(declare-fun b!1626731 () Bool)

(declare-fun res!727493 () Bool)

(assert (=> b!1626731 (=> (not res!727493) (not e!1043386))))

(assert (=> b!1626731 (= res!727493 (= (++!4751 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588386)))) (_2!10119 (get!5150 lt!588386))) (originalCharacters!3959 (h!23257 tokens!457))))))

(declare-fun b!1626732 () Bool)

(declare-fun e!1043384 () Option!3316)

(declare-fun lt!588383 () Option!3316)

(declare-fun lt!588382 () Option!3316)

(assert (=> b!1626732 (= e!1043384 (ite (and ((_ is None!3315) lt!588383) ((_ is None!3315) lt!588382)) None!3315 (ite ((_ is None!3315) lt!588382) lt!588383 (ite ((_ is None!3315) lt!588383) lt!588382 (ite (>= (size!14278 (_1!10119 (v!24358 lt!588383))) (size!14278 (_1!10119 (v!24358 lt!588382)))) lt!588383 lt!588382)))))))

(declare-fun call!105265 () Option!3316)

(assert (=> b!1626732 (= lt!588383 call!105265)))

(assert (=> b!1626732 (= lt!588382 (maxPrefix!1338 thiss!17113 (t!149058 rules!1846) (originalCharacters!3959 (h!23257 tokens!457))))))

(declare-fun d!489687 () Bool)

(assert (=> d!489687 e!1043385))

(declare-fun res!727492 () Bool)

(assert (=> d!489687 (=> res!727492 e!1043385)))

(assert (=> d!489687 (= res!727492 (isEmpty!10890 lt!588386))))

(assert (=> d!489687 (= lt!588386 e!1043384)))

(declare-fun c!264685 () Bool)

(assert (=> d!489687 (= c!264685 (and ((_ is Cons!17855) rules!1846) ((_ is Nil!17855) (t!149058 rules!1846))))))

(declare-fun lt!588384 () Unit!28923)

(declare-fun lt!588385 () Unit!28923)

(assert (=> d!489687 (= lt!588384 lt!588385)))

(assert (=> d!489687 (isPrefix!1405 (originalCharacters!3959 (h!23257 tokens!457)) (originalCharacters!3959 (h!23257 tokens!457)))))

(assert (=> d!489687 (= lt!588385 (lemmaIsPrefixRefl!962 (originalCharacters!3959 (h!23257 tokens!457)) (originalCharacters!3959 (h!23257 tokens!457))))))

(assert (=> d!489687 (rulesValidInductive!974 thiss!17113 rules!1846)))

(assert (=> d!489687 (= (maxPrefix!1338 thiss!17113 rules!1846 (originalCharacters!3959 (h!23257 tokens!457))) lt!588386)))

(declare-fun b!1626733 () Bool)

(declare-fun res!727494 () Bool)

(assert (=> b!1626733 (=> (not res!727494) (not e!1043386))))

(assert (=> b!1626733 (= res!727494 (matchR!1972 (regex!3145 (rule!4971 (_1!10119 (get!5150 lt!588386)))) (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588386))))))))

(declare-fun b!1626734 () Bool)

(declare-fun res!727489 () Bool)

(assert (=> b!1626734 (=> (not res!727489) (not e!1043386))))

(assert (=> b!1626734 (= res!727489 (= (value!99305 (_1!10119 (get!5150 lt!588386))) (apply!4575 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588386)))) (seqFromList!2040 (originalCharacters!3959 (_1!10119 (get!5150 lt!588386)))))))))

(declare-fun b!1626735 () Bool)

(declare-fun res!727490 () Bool)

(assert (=> b!1626735 (=> (not res!727490) (not e!1043386))))

(assert (=> b!1626735 (= res!727490 (= (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588386)))) (originalCharacters!3959 (_1!10119 (get!5150 lt!588386)))))))

(declare-fun bm!105260 () Bool)

(assert (=> bm!105260 (= call!105265 (maxPrefixOneRule!777 thiss!17113 (h!23256 rules!1846) (originalCharacters!3959 (h!23257 tokens!457))))))

(declare-fun b!1626736 () Bool)

(assert (=> b!1626736 (= e!1043386 (contains!3120 rules!1846 (rule!4971 (_1!10119 (get!5150 lt!588386)))))))

(declare-fun b!1626737 () Bool)

(assert (=> b!1626737 (= e!1043384 call!105265)))

(declare-fun b!1626738 () Bool)

(declare-fun res!727495 () Bool)

(assert (=> b!1626738 (=> (not res!727495) (not e!1043386))))

(assert (=> b!1626738 (= res!727495 (< (size!14282 (_2!10119 (get!5150 lt!588386))) (size!14282 (originalCharacters!3959 (h!23257 tokens!457)))))))

(assert (= (and d!489687 c!264685) b!1626737))

(assert (= (and d!489687 (not c!264685)) b!1626732))

(assert (= (or b!1626737 b!1626732) bm!105260))

(assert (= (and d!489687 (not res!727492)) b!1626730))

(assert (= (and b!1626730 res!727491) b!1626735))

(assert (= (and b!1626735 res!727490) b!1626738))

(assert (= (and b!1626738 res!727495) b!1626731))

(assert (= (and b!1626731 res!727493) b!1626734))

(assert (= (and b!1626734 res!727489) b!1626733))

(assert (= (and b!1626733 res!727494) b!1626736))

(declare-fun m!1955781 () Bool)

(assert (=> b!1626732 m!1955781))

(declare-fun m!1955783 () Bool)

(assert (=> b!1626738 m!1955783))

(declare-fun m!1955785 () Bool)

(assert (=> b!1626738 m!1955785))

(assert (=> b!1626738 m!1955343))

(assert (=> b!1626733 m!1955783))

(declare-fun m!1955787 () Bool)

(assert (=> b!1626733 m!1955787))

(assert (=> b!1626733 m!1955787))

(declare-fun m!1955789 () Bool)

(assert (=> b!1626733 m!1955789))

(assert (=> b!1626733 m!1955789))

(declare-fun m!1955791 () Bool)

(assert (=> b!1626733 m!1955791))

(assert (=> b!1626736 m!1955783))

(declare-fun m!1955793 () Bool)

(assert (=> b!1626736 m!1955793))

(declare-fun m!1955795 () Bool)

(assert (=> d!489687 m!1955795))

(declare-fun m!1955797 () Bool)

(assert (=> d!489687 m!1955797))

(declare-fun m!1955799 () Bool)

(assert (=> d!489687 m!1955799))

(assert (=> d!489687 m!1955653))

(assert (=> b!1626734 m!1955783))

(declare-fun m!1955801 () Bool)

(assert (=> b!1626734 m!1955801))

(assert (=> b!1626734 m!1955801))

(declare-fun m!1955803 () Bool)

(assert (=> b!1626734 m!1955803))

(assert (=> b!1626735 m!1955783))

(assert (=> b!1626735 m!1955787))

(assert (=> b!1626735 m!1955787))

(assert (=> b!1626735 m!1955789))

(declare-fun m!1955805 () Bool)

(assert (=> bm!105260 m!1955805))

(declare-fun m!1955807 () Bool)

(assert (=> b!1626730 m!1955807))

(assert (=> b!1626731 m!1955783))

(assert (=> b!1626731 m!1955787))

(assert (=> b!1626731 m!1955787))

(assert (=> b!1626731 m!1955789))

(assert (=> b!1626731 m!1955789))

(declare-fun m!1955809 () Bool)

(assert (=> b!1626731 m!1955809))

(assert (=> b!1626389 d!489687))

(declare-fun d!489689 () Bool)

(assert (=> d!489689 (= (isDefined!2683 lt!587991) (not (isEmpty!10890 lt!587991)))))

(declare-fun bs!394833 () Bool)

(assert (= bs!394833 d!489689))

(declare-fun m!1955811 () Bool)

(assert (=> bs!394833 m!1955811))

(assert (=> b!1626368 d!489689))

(declare-fun b!1626747 () Bool)

(declare-fun res!727500 () Bool)

(declare-fun e!1043392 () Bool)

(assert (=> b!1626747 (=> (not res!727500) (not e!1043392))))

(declare-fun lt!588424 () Token!5856)

(declare-datatypes ((Option!3318 0))(
  ( (None!3317) (Some!3317 (v!24368 Rule!6090)) )
))
(declare-fun get!5153 (Option!3318) Rule!6090)

(declare-fun getRuleFromTag!286 (LexerInterface!2774 List!17925 String!20507) Option!3318)

(assert (=> b!1626747 (= res!727500 (matchR!1972 (regex!3145 (get!5153 (getRuleFromTag!286 thiss!17113 rules!1846 (tag!3423 (rule!4971 lt!588424))))) (list!7011 (charsOf!1794 lt!588424))))))

(declare-fun d!489691 () Bool)

(assert (=> d!489691 (isDefined!2683 (maxPrefix!1338 thiss!17113 rules!1846 (++!4751 lt!587996 lt!587994)))))

(declare-fun lt!588426 () Unit!28923)

(declare-fun e!1043391 () Unit!28923)

(assert (=> d!489691 (= lt!588426 e!1043391)))

(declare-fun c!264688 () Bool)

(assert (=> d!489691 (= c!264688 (isEmpty!10890 (maxPrefix!1338 thiss!17113 rules!1846 (++!4751 lt!587996 lt!587994))))))

(declare-fun lt!588436 () Unit!28923)

(declare-fun lt!588425 () Unit!28923)

(assert (=> d!489691 (= lt!588436 lt!588425)))

(assert (=> d!489691 e!1043392))

(declare-fun res!727501 () Bool)

(assert (=> d!489691 (=> (not res!727501) (not e!1043392))))

(declare-fun isDefined!2685 (Option!3318) Bool)

(assert (=> d!489691 (= res!727501 (isDefined!2685 (getRuleFromTag!286 thiss!17113 rules!1846 (tag!3423 (rule!4971 lt!588424)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!286 (LexerInterface!2774 List!17925 List!17924 Token!5856) Unit!28923)

(assert (=> d!489691 (= lt!588425 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!286 thiss!17113 rules!1846 lt!587996 lt!588424))))

(declare-fun lt!588435 () Unit!28923)

(declare-fun lt!588431 () Unit!28923)

(assert (=> d!489691 (= lt!588435 lt!588431)))

(declare-fun lt!588421 () List!17924)

(assert (=> d!489691 (isPrefix!1405 lt!588421 (++!4751 lt!587996 lt!587994))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!172 (List!17924 List!17924 List!17924) Unit!28923)

(assert (=> d!489691 (= lt!588431 (lemmaPrefixStaysPrefixWhenAddingToSuffix!172 lt!588421 lt!587996 lt!587994))))

(assert (=> d!489691 (= lt!588421 (list!7011 (charsOf!1794 lt!588424)))))

(declare-fun lt!588428 () Unit!28923)

(declare-fun lt!588430 () Unit!28923)

(assert (=> d!489691 (= lt!588428 lt!588430)))

(declare-fun lt!588429 () List!17924)

(declare-fun lt!588423 () List!17924)

(assert (=> d!489691 (isPrefix!1405 lt!588429 (++!4751 lt!588429 lt!588423))))

(assert (=> d!489691 (= lt!588430 (lemmaConcatTwoListThenFirstIsPrefix!930 lt!588429 lt!588423))))

(assert (=> d!489691 (= lt!588423 (_2!10119 (get!5150 (maxPrefix!1338 thiss!17113 rules!1846 lt!587996))))))

(assert (=> d!489691 (= lt!588429 (list!7011 (charsOf!1794 lt!588424)))))

(assert (=> d!489691 (= lt!588424 (head!3452 (list!7012 (_1!10117 (lex!1258 thiss!17113 rules!1846 (seqFromList!2040 lt!587996))))))))

(assert (=> d!489691 (not (isEmpty!10883 rules!1846))))

(assert (=> d!489691 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!348 thiss!17113 rules!1846 lt!587996 lt!587994) lt!588426)))

(declare-fun b!1626748 () Bool)

(assert (=> b!1626748 (= e!1043392 (= (rule!4971 lt!588424) (get!5153 (getRuleFromTag!286 thiss!17113 rules!1846 (tag!3423 (rule!4971 lt!588424))))))))

(declare-fun b!1626749 () Bool)

(declare-fun Unit!28947 () Unit!28923)

(assert (=> b!1626749 (= e!1043391 Unit!28947)))

(declare-fun lt!588437 () List!17924)

(assert (=> b!1626749 (= lt!588437 (++!4751 lt!587996 lt!587994))))

(declare-fun lt!588434 () Unit!28923)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!180 (LexerInterface!2774 Rule!6090 List!17925 List!17924) Unit!28923)

(assert (=> b!1626749 (= lt!588434 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!180 thiss!17113 (rule!4971 lt!588424) rules!1846 lt!588437))))

(assert (=> b!1626749 (isEmpty!10890 (maxPrefixOneRule!777 thiss!17113 (rule!4971 lt!588424) lt!588437))))

(declare-fun lt!588427 () Unit!28923)

(assert (=> b!1626749 (= lt!588427 lt!588434)))

(declare-fun lt!588433 () List!17924)

(assert (=> b!1626749 (= lt!588433 (list!7011 (charsOf!1794 lt!588424)))))

(declare-fun lt!588432 () Unit!28923)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!176 (LexerInterface!2774 Rule!6090 List!17924 List!17924) Unit!28923)

(assert (=> b!1626749 (= lt!588432 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!176 thiss!17113 (rule!4971 lt!588424) lt!588433 (++!4751 lt!587996 lt!587994)))))

(assert (=> b!1626749 (not (matchR!1972 (regex!3145 (rule!4971 lt!588424)) lt!588433))))

(declare-fun lt!588422 () Unit!28923)

(assert (=> b!1626749 (= lt!588422 lt!588432)))

(assert (=> b!1626749 false))

(declare-fun b!1626750 () Bool)

(declare-fun Unit!28948 () Unit!28923)

(assert (=> b!1626750 (= e!1043391 Unit!28948)))

(assert (= (and d!489691 res!727501) b!1626747))

(assert (= (and b!1626747 res!727500) b!1626748))

(assert (= (and d!489691 c!264688) b!1626749))

(assert (= (and d!489691 (not c!264688)) b!1626750))

(declare-fun m!1955813 () Bool)

(assert (=> b!1626747 m!1955813))

(declare-fun m!1955815 () Bool)

(assert (=> b!1626747 m!1955815))

(declare-fun m!1955817 () Bool)

(assert (=> b!1626747 m!1955817))

(declare-fun m!1955819 () Bool)

(assert (=> b!1626747 m!1955819))

(assert (=> b!1626747 m!1955817))

(declare-fun m!1955821 () Bool)

(assert (=> b!1626747 m!1955821))

(assert (=> b!1626747 m!1955819))

(assert (=> b!1626747 m!1955813))

(assert (=> d!489691 m!1954953))

(declare-fun m!1955823 () Bool)

(assert (=> d!489691 m!1955823))

(declare-fun m!1955825 () Bool)

(assert (=> d!489691 m!1955825))

(assert (=> d!489691 m!1955023))

(assert (=> d!489691 m!1955025))

(assert (=> d!489691 m!1954927))

(declare-fun m!1955827 () Bool)

(assert (=> d!489691 m!1955827))

(declare-fun m!1955829 () Bool)

(assert (=> d!489691 m!1955829))

(declare-fun m!1955831 () Bool)

(assert (=> d!489691 m!1955831))

(assert (=> d!489691 m!1954953))

(assert (=> d!489691 m!1955817))

(declare-fun m!1955833 () Bool)

(assert (=> d!489691 m!1955833))

(assert (=> d!489691 m!1955345))

(declare-fun m!1955835 () Bool)

(assert (=> d!489691 m!1955835))

(assert (=> d!489691 m!1954901))

(assert (=> d!489691 m!1954953))

(assert (=> d!489691 m!1955829))

(assert (=> d!489691 m!1955829))

(declare-fun m!1955837 () Bool)

(assert (=> d!489691 m!1955837))

(declare-fun m!1955839 () Bool)

(assert (=> d!489691 m!1955839))

(declare-fun m!1955841 () Bool)

(assert (=> d!489691 m!1955841))

(assert (=> d!489691 m!1955345))

(assert (=> d!489691 m!1955817))

(declare-fun m!1955843 () Bool)

(assert (=> d!489691 m!1955843))

(assert (=> d!489691 m!1955819))

(assert (=> d!489691 m!1955839))

(declare-fun m!1955845 () Bool)

(assert (=> d!489691 m!1955845))

(assert (=> d!489691 m!1954927))

(assert (=> d!489691 m!1955023))

(assert (=> d!489691 m!1955819))

(assert (=> d!489691 m!1955813))

(assert (=> b!1626748 m!1955817))

(assert (=> b!1626748 m!1955817))

(assert (=> b!1626748 m!1955821))

(declare-fun m!1955847 () Bool)

(assert (=> b!1626749 m!1955847))

(declare-fun m!1955849 () Bool)

(assert (=> b!1626749 m!1955849))

(declare-fun m!1955851 () Bool)

(assert (=> b!1626749 m!1955851))

(assert (=> b!1626749 m!1954953))

(declare-fun m!1955853 () Bool)

(assert (=> b!1626749 m!1955853))

(assert (=> b!1626749 m!1955819))

(assert (=> b!1626749 m!1955819))

(assert (=> b!1626749 m!1955813))

(assert (=> b!1626749 m!1954953))

(declare-fun m!1955855 () Bool)

(assert (=> b!1626749 m!1955855))

(assert (=> b!1626749 m!1955849))

(assert (=> b!1626368 d!489691))

(declare-fun b!1626779 () Bool)

(declare-fun e!1043409 () Bool)

(declare-fun e!1043407 () Bool)

(assert (=> b!1626779 (= e!1043409 e!1043407)))

(declare-fun c!264697 () Bool)

(assert (=> b!1626779 (= c!264697 ((_ is EmptyLang!4473) (regex!3145 (rule!4971 (h!23257 tokens!457)))))))

(declare-fun b!1626780 () Bool)

(declare-fun lt!588440 () Bool)

(assert (=> b!1626780 (= e!1043407 (not lt!588440))))

(declare-fun b!1626781 () Bool)

(declare-fun res!727522 () Bool)

(declare-fun e!1043411 () Bool)

(assert (=> b!1626781 (=> (not res!727522) (not e!1043411))))

(declare-fun call!105268 () Bool)

(assert (=> b!1626781 (= res!727522 (not call!105268))))

(declare-fun bm!105263 () Bool)

(assert (=> bm!105263 (= call!105268 (isEmpty!10881 lt!587996))))

(declare-fun b!1626782 () Bool)

(declare-fun res!727523 () Bool)

(declare-fun e!1043410 () Bool)

(assert (=> b!1626782 (=> res!727523 e!1043410)))

(assert (=> b!1626782 (= res!727523 (not (isEmpty!10881 (tail!2367 lt!587996))))))

(declare-fun b!1626783 () Bool)

(declare-fun e!1043408 () Bool)

(assert (=> b!1626783 (= e!1043408 (matchR!1972 (derivativeStep!1084 (regex!3145 (rule!4971 (h!23257 tokens!457))) (head!3449 lt!587996)) (tail!2367 lt!587996)))))

(declare-fun b!1626784 () Bool)

(declare-fun res!727520 () Bool)

(assert (=> b!1626784 (=> (not res!727520) (not e!1043411))))

(assert (=> b!1626784 (= res!727520 (isEmpty!10881 (tail!2367 lt!587996)))))

(declare-fun b!1626785 () Bool)

(declare-fun res!727519 () Bool)

(declare-fun e!1043413 () Bool)

(assert (=> b!1626785 (=> res!727519 e!1043413)))

(assert (=> b!1626785 (= res!727519 e!1043411)))

(declare-fun res!727518 () Bool)

(assert (=> b!1626785 (=> (not res!727518) (not e!1043411))))

(assert (=> b!1626785 (= res!727518 lt!588440)))

(declare-fun b!1626786 () Bool)

(assert (=> b!1626786 (= e!1043409 (= lt!588440 call!105268))))

(declare-fun b!1626787 () Bool)

(assert (=> b!1626787 (= e!1043411 (= (head!3449 lt!587996) (c!264624 (regex!3145 (rule!4971 (h!23257 tokens!457))))))))

(declare-fun b!1626789 () Bool)

(assert (=> b!1626789 (= e!1043410 (not (= (head!3449 lt!587996) (c!264624 (regex!3145 (rule!4971 (h!23257 tokens!457)))))))))

(declare-fun b!1626790 () Bool)

(declare-fun nullable!1319 (Regex!4473) Bool)

(assert (=> b!1626790 (= e!1043408 (nullable!1319 (regex!3145 (rule!4971 (h!23257 tokens!457)))))))

(declare-fun b!1626791 () Bool)

(declare-fun e!1043412 () Bool)

(assert (=> b!1626791 (= e!1043413 e!1043412)))

(declare-fun res!727524 () Bool)

(assert (=> b!1626791 (=> (not res!727524) (not e!1043412))))

(assert (=> b!1626791 (= res!727524 (not lt!588440))))

(declare-fun b!1626792 () Bool)

(declare-fun res!727521 () Bool)

(assert (=> b!1626792 (=> res!727521 e!1043413)))

(assert (=> b!1626792 (= res!727521 (not ((_ is ElementMatch!4473) (regex!3145 (rule!4971 (h!23257 tokens!457))))))))

(assert (=> b!1626792 (= e!1043407 e!1043413)))

(declare-fun d!489693 () Bool)

(assert (=> d!489693 e!1043409))

(declare-fun c!264695 () Bool)

(assert (=> d!489693 (= c!264695 ((_ is EmptyExpr!4473) (regex!3145 (rule!4971 (h!23257 tokens!457)))))))

(assert (=> d!489693 (= lt!588440 e!1043408)))

(declare-fun c!264696 () Bool)

(assert (=> d!489693 (= c!264696 (isEmpty!10881 lt!587996))))

(declare-fun validRegex!1780 (Regex!4473) Bool)

(assert (=> d!489693 (validRegex!1780 (regex!3145 (rule!4971 (h!23257 tokens!457))))))

(assert (=> d!489693 (= (matchR!1972 (regex!3145 (rule!4971 (h!23257 tokens!457))) lt!587996) lt!588440)))

(declare-fun b!1626788 () Bool)

(assert (=> b!1626788 (= e!1043412 e!1043410)))

(declare-fun res!727525 () Bool)

(assert (=> b!1626788 (=> res!727525 e!1043410)))

(assert (=> b!1626788 (= res!727525 call!105268)))

(assert (= (and d!489693 c!264696) b!1626790))

(assert (= (and d!489693 (not c!264696)) b!1626783))

(assert (= (and d!489693 c!264695) b!1626786))

(assert (= (and d!489693 (not c!264695)) b!1626779))

(assert (= (and b!1626779 c!264697) b!1626780))

(assert (= (and b!1626779 (not c!264697)) b!1626792))

(assert (= (and b!1626792 (not res!727521)) b!1626785))

(assert (= (and b!1626785 res!727518) b!1626781))

(assert (= (and b!1626781 res!727522) b!1626784))

(assert (= (and b!1626784 res!727520) b!1626787))

(assert (= (and b!1626785 (not res!727519)) b!1626791))

(assert (= (and b!1626791 res!727524) b!1626788))

(assert (= (and b!1626788 (not res!727525)) b!1626782))

(assert (= (and b!1626782 (not res!727523)) b!1626789))

(assert (= (or b!1626786 b!1626781 b!1626788) bm!105263))

(declare-fun m!1955857 () Bool)

(assert (=> b!1626790 m!1955857))

(assert (=> b!1626789 m!1955299))

(assert (=> b!1626782 m!1955293))

(assert (=> b!1626782 m!1955293))

(declare-fun m!1955859 () Bool)

(assert (=> b!1626782 m!1955859))

(assert (=> b!1626784 m!1955293))

(assert (=> b!1626784 m!1955293))

(assert (=> b!1626784 m!1955859))

(assert (=> b!1626783 m!1955299))

(assert (=> b!1626783 m!1955299))

(declare-fun m!1955861 () Bool)

(assert (=> b!1626783 m!1955861))

(assert (=> b!1626783 m!1955293))

(assert (=> b!1626783 m!1955861))

(assert (=> b!1626783 m!1955293))

(declare-fun m!1955863 () Bool)

(assert (=> b!1626783 m!1955863))

(declare-fun m!1955865 () Bool)

(assert (=> bm!105263 m!1955865))

(assert (=> b!1626787 m!1955299))

(assert (=> d!489693 m!1955865))

(declare-fun m!1955867 () Bool)

(assert (=> d!489693 m!1955867))

(assert (=> b!1626387 d!489693))

(declare-fun d!489695 () Bool)

(assert (=> d!489695 (= (isEmpty!10881 lt!587994) ((_ is Nil!17854) lt!587994))))

(assert (=> b!1626366 d!489695))

(declare-fun d!489697 () Bool)

(declare-fun res!727530 () Bool)

(declare-fun e!1043416 () Bool)

(assert (=> d!489697 (=> (not res!727530) (not e!1043416))))

(assert (=> d!489697 (= res!727530 (validRegex!1780 (regex!3145 (rule!4971 (h!23257 tokens!457)))))))

(assert (=> d!489697 (= (ruleValid!739 thiss!17113 (rule!4971 (h!23257 tokens!457))) e!1043416)))

(declare-fun b!1626797 () Bool)

(declare-fun res!727531 () Bool)

(assert (=> b!1626797 (=> (not res!727531) (not e!1043416))))

(assert (=> b!1626797 (= res!727531 (not (nullable!1319 (regex!3145 (rule!4971 (h!23257 tokens!457))))))))

(declare-fun b!1626798 () Bool)

(assert (=> b!1626798 (= e!1043416 (not (= (tag!3423 (rule!4971 (h!23257 tokens!457))) (String!20508 ""))))))

(assert (= (and d!489697 res!727530) b!1626797))

(assert (= (and b!1626797 res!727531) b!1626798))

(assert (=> d!489697 m!1955867))

(assert (=> b!1626797 m!1955857))

(assert (=> b!1626366 d!489697))

(declare-fun d!489699 () Bool)

(assert (=> d!489699 (ruleValid!739 thiss!17113 (rule!4971 (h!23257 tokens!457)))))

(declare-fun lt!588443 () Unit!28923)

(declare-fun choose!9780 (LexerInterface!2774 Rule!6090 List!17925) Unit!28923)

(assert (=> d!489699 (= lt!588443 (choose!9780 thiss!17113 (rule!4971 (h!23257 tokens!457)) rules!1846))))

(assert (=> d!489699 (contains!3120 rules!1846 (rule!4971 (h!23257 tokens!457)))))

(assert (=> d!489699 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!300 thiss!17113 (rule!4971 (h!23257 tokens!457)) rules!1846) lt!588443)))

(declare-fun bs!394834 () Bool)

(assert (= bs!394834 d!489699))

(assert (=> bs!394834 m!1954959))

(declare-fun m!1955869 () Bool)

(assert (=> bs!394834 m!1955869))

(assert (=> bs!394834 m!1954903))

(assert (=> b!1626366 d!489699))

(declare-fun d!489701 () Bool)

(assert (=> d!489701 (= (separableTokensPredicate!716 thiss!17113 (h!23257 tokens!457) (h!23257 (t!149059 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!535 (rulesRegex!535 thiss!17113 rules!1846) (++!4752 (charsOf!1794 (h!23257 tokens!457)) (singletonSeq!1569 (apply!4568 (charsOf!1794 (h!23257 (t!149059 tokens!457))) 0))))))))

(declare-fun bs!394835 () Bool)

(assert (= bs!394835 d!489701))

(assert (=> bs!394835 m!1954979))

(assert (=> bs!394835 m!1954981))

(assert (=> bs!394835 m!1954977))

(declare-fun m!1955871 () Bool)

(assert (=> bs!394835 m!1955871))

(declare-fun m!1955873 () Bool)

(assert (=> bs!394835 m!1955873))

(assert (=> bs!394835 m!1954987))

(assert (=> bs!394835 m!1954979))

(assert (=> bs!394835 m!1954987))

(assert (=> bs!394835 m!1954941))

(assert (=> bs!394835 m!1954941))

(assert (=> bs!394835 m!1954981))

(assert (=> bs!394835 m!1955871))

(assert (=> bs!394835 m!1954977))

(assert (=> b!1626386 d!489701))

(declare-fun d!489703 () Bool)

(declare-fun lt!588444 () BalanceConc!11820)

(assert (=> d!489703 (= (list!7011 lt!588444) (printList!889 thiss!17113 (list!7012 (seqFromList!2039 tokens!457))))))

(assert (=> d!489703 (= lt!588444 (printTailRec!827 thiss!17113 (seqFromList!2039 tokens!457) 0 (BalanceConc!11821 Empty!5938)))))

(assert (=> d!489703 (= (print!1305 thiss!17113 (seqFromList!2039 tokens!457)) lt!588444)))

(declare-fun bs!394836 () Bool)

(assert (= bs!394836 d!489703))

(declare-fun m!1955875 () Bool)

(assert (=> bs!394836 m!1955875))

(assert (=> bs!394836 m!1954945))

(declare-fun m!1955877 () Bool)

(assert (=> bs!394836 m!1955877))

(assert (=> bs!394836 m!1955877))

(declare-fun m!1955879 () Bool)

(assert (=> bs!394836 m!1955879))

(assert (=> bs!394836 m!1954945))

(declare-fun m!1955881 () Bool)

(assert (=> bs!394836 m!1955881))

(assert (=> b!1626365 d!489703))

(declare-fun d!489705 () Bool)

(assert (=> d!489705 (= (list!7011 lt!587989) (list!7016 (c!264623 lt!587989)))))

(declare-fun bs!394837 () Bool)

(assert (= bs!394837 d!489705))

(declare-fun m!1955883 () Bool)

(assert (=> bs!394837 m!1955883))

(assert (=> b!1626365 d!489705))

(declare-fun d!489707 () Bool)

(declare-fun e!1043418 () Bool)

(assert (=> d!489707 e!1043418))

(declare-fun res!727532 () Bool)

(assert (=> d!489707 (=> (not res!727532) (not e!1043418))))

(declare-fun e!1043419 () Bool)

(assert (=> d!489707 (= res!727532 e!1043419)))

(declare-fun c!264698 () Bool)

(declare-fun lt!588445 () tuple2!17430)

(assert (=> d!489707 (= c!264698 (> (size!14283 (_1!10117 lt!588445)) 0))))

(assert (=> d!489707 (= lt!588445 (lexTailRecV2!553 thiss!17113 rules!1846 lt!587989 (BalanceConc!11821 Empty!5938) lt!587989 (BalanceConc!11823 Empty!5939)))))

(assert (=> d!489707 (= (lex!1258 thiss!17113 rules!1846 lt!587989) lt!588445)))

(declare-fun b!1626799 () Bool)

(declare-fun e!1043417 () Bool)

(assert (=> b!1626799 (= e!1043417 (not (isEmpty!10882 (_1!10117 lt!588445))))))

(declare-fun b!1626800 () Bool)

(declare-fun res!727533 () Bool)

(assert (=> b!1626800 (=> (not res!727533) (not e!1043418))))

(assert (=> b!1626800 (= res!727533 (= (list!7012 (_1!10117 lt!588445)) (_1!10120 (lexList!830 thiss!17113 rules!1846 (list!7011 lt!587989)))))))

(declare-fun b!1626801 () Bool)

(assert (=> b!1626801 (= e!1043419 e!1043417)))

(declare-fun res!727534 () Bool)

(assert (=> b!1626801 (= res!727534 (< (size!14284 (_2!10117 lt!588445)) (size!14284 lt!587989)))))

(assert (=> b!1626801 (=> (not res!727534) (not e!1043417))))

(declare-fun b!1626802 () Bool)

(assert (=> b!1626802 (= e!1043418 (= (list!7011 (_2!10117 lt!588445)) (_2!10120 (lexList!830 thiss!17113 rules!1846 (list!7011 lt!587989)))))))

(declare-fun b!1626803 () Bool)

(assert (=> b!1626803 (= e!1043419 (= (_2!10117 lt!588445) lt!587989))))

(assert (= (and d!489707 c!264698) b!1626801))

(assert (= (and d!489707 (not c!264698)) b!1626803))

(assert (= (and b!1626801 res!727534) b!1626799))

(assert (= (and d!489707 res!727532) b!1626800))

(assert (= (and b!1626800 res!727533) b!1626802))

(declare-fun m!1955885 () Bool)

(assert (=> b!1626802 m!1955885))

(assert (=> b!1626802 m!1954949))

(assert (=> b!1626802 m!1954949))

(declare-fun m!1955887 () Bool)

(assert (=> b!1626802 m!1955887))

(declare-fun m!1955889 () Bool)

(assert (=> b!1626800 m!1955889))

(assert (=> b!1626800 m!1954949))

(assert (=> b!1626800 m!1954949))

(assert (=> b!1626800 m!1955887))

(declare-fun m!1955891 () Bool)

(assert (=> d!489707 m!1955891))

(declare-fun m!1955893 () Bool)

(assert (=> d!489707 m!1955893))

(declare-fun m!1955895 () Bool)

(assert (=> b!1626801 m!1955895))

(declare-fun m!1955897 () Bool)

(assert (=> b!1626801 m!1955897))

(declare-fun m!1955899 () Bool)

(assert (=> b!1626799 m!1955899))

(assert (=> b!1626365 d!489707))

(declare-fun d!489709 () Bool)

(assert (=> d!489709 (= (list!7011 lt!587998) (list!7016 (c!264623 lt!587998)))))

(declare-fun bs!394838 () Bool)

(assert (= bs!394838 d!489709))

(declare-fun m!1955901 () Bool)

(assert (=> bs!394838 m!1955901))

(assert (=> b!1626365 d!489709))

(declare-fun d!489711 () Bool)

(assert (=> d!489711 (= (list!7011 lt!587987) (list!7016 (c!264623 lt!587987)))))

(declare-fun bs!394839 () Bool)

(assert (= bs!394839 d!489711))

(declare-fun m!1955903 () Bool)

(assert (=> bs!394839 m!1955903))

(assert (=> b!1626365 d!489711))

(declare-fun d!489713 () Bool)

(declare-fun lt!588446 () BalanceConc!11820)

(assert (=> d!489713 (= (list!7011 lt!588446) (printList!889 thiss!17113 (list!7012 lt!587990)))))

(assert (=> d!489713 (= lt!588446 (printTailRec!827 thiss!17113 lt!587990 0 (BalanceConc!11821 Empty!5938)))))

(assert (=> d!489713 (= (print!1305 thiss!17113 lt!587990) lt!588446)))

(declare-fun bs!394840 () Bool)

(assert (= bs!394840 d!489713))

(declare-fun m!1955905 () Bool)

(assert (=> bs!394840 m!1955905))

(assert (=> bs!394840 m!1954999))

(assert (=> bs!394840 m!1954999))

(declare-fun m!1955907 () Bool)

(assert (=> bs!394840 m!1955907))

(declare-fun m!1955909 () Bool)

(assert (=> bs!394840 m!1955909))

(assert (=> b!1626365 d!489713))

(declare-fun d!489715 () Bool)

(declare-fun e!1043421 () Bool)

(assert (=> d!489715 e!1043421))

(declare-fun res!727535 () Bool)

(assert (=> d!489715 (=> (not res!727535) (not e!1043421))))

(declare-fun lt!588447 () List!17924)

(assert (=> d!489715 (= res!727535 (= (content!2476 lt!588447) ((_ map or) (content!2476 lt!587996) (content!2476 lt!587994))))))

(declare-fun e!1043420 () List!17924)

(assert (=> d!489715 (= lt!588447 e!1043420)))

(declare-fun c!264699 () Bool)

(assert (=> d!489715 (= c!264699 ((_ is Nil!17854) lt!587996))))

(assert (=> d!489715 (= (++!4751 lt!587996 lt!587994) lt!588447)))

(declare-fun b!1626804 () Bool)

(assert (=> b!1626804 (= e!1043420 lt!587994)))

(declare-fun b!1626806 () Bool)

(declare-fun res!727536 () Bool)

(assert (=> b!1626806 (=> (not res!727536) (not e!1043421))))

(assert (=> b!1626806 (= res!727536 (= (size!14282 lt!588447) (+ (size!14282 lt!587996) (size!14282 lt!587994))))))

(declare-fun b!1626805 () Bool)

(assert (=> b!1626805 (= e!1043420 (Cons!17854 (h!23255 lt!587996) (++!4751 (t!149057 lt!587996) lt!587994)))))

(declare-fun b!1626807 () Bool)

(assert (=> b!1626807 (= e!1043421 (or (not (= lt!587994 Nil!17854)) (= lt!588447 lt!587996)))))

(assert (= (and d!489715 c!264699) b!1626804))

(assert (= (and d!489715 (not c!264699)) b!1626805))

(assert (= (and d!489715 res!727535) b!1626806))

(assert (= (and b!1626806 res!727536) b!1626807))

(declare-fun m!1955911 () Bool)

(assert (=> d!489715 m!1955911))

(assert (=> d!489715 m!1955581))

(declare-fun m!1955913 () Bool)

(assert (=> d!489715 m!1955913))

(declare-fun m!1955915 () Bool)

(assert (=> b!1626806 m!1955915))

(assert (=> b!1626806 m!1955305))

(declare-fun m!1955917 () Bool)

(assert (=> b!1626806 m!1955917))

(declare-fun m!1955919 () Bool)

(assert (=> b!1626805 m!1955919))

(assert (=> b!1626365 d!489715))

(declare-fun d!489717 () Bool)

(declare-fun fromListB!899 (List!17926) BalanceConc!11822)

(assert (=> d!489717 (= (seqFromList!2039 tokens!457) (fromListB!899 tokens!457))))

(declare-fun bs!394841 () Bool)

(assert (= bs!394841 d!489717))

(declare-fun m!1955921 () Bool)

(assert (=> bs!394841 m!1955921))

(assert (=> b!1626365 d!489717))

(declare-fun d!489719 () Bool)

(declare-fun lt!588450 () BalanceConc!11820)

(assert (=> d!489719 (= (list!7011 lt!588450) (originalCharacters!3959 (h!23257 tokens!457)))))

(assert (=> d!489719 (= lt!588450 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (h!23257 tokens!457)))) (value!99305 (h!23257 tokens!457))))))

(assert (=> d!489719 (= (charsOf!1794 (h!23257 tokens!457)) lt!588450)))

(declare-fun b_lambda!51231 () Bool)

(assert (=> (not b_lambda!51231) (not d!489719)))

(assert (=> d!489719 t!149064))

(declare-fun b_and!115353 () Bool)

(assert (= b_and!115341 (and (=> t!149064 result!112574) b_and!115353)))

(assert (=> d!489719 t!149066))

(declare-fun b_and!115355 () Bool)

(assert (= b_and!115343 (and (=> t!149066 result!112578) b_and!115355)))

(declare-fun m!1955923 () Bool)

(assert (=> d!489719 m!1955923))

(assert (=> d!489719 m!1955339))

(assert (=> b!1626365 d!489719))

(declare-fun d!489721 () Bool)

(assert (=> d!489721 (= (seqFromList!2039 (t!149059 tokens!457)) (fromListB!899 (t!149059 tokens!457)))))

(declare-fun bs!394842 () Bool)

(assert (= bs!394842 d!489721))

(declare-fun m!1955925 () Bool)

(assert (=> bs!394842 m!1955925))

(assert (=> b!1626365 d!489721))

(declare-fun b!1626818 () Bool)

(declare-fun e!1043429 () Bool)

(declare-fun inv!15 (TokenValue!3235) Bool)

(assert (=> b!1626818 (= e!1043429 (inv!15 (value!99305 (h!23257 tokens!457))))))

(declare-fun b!1626819 () Bool)

(declare-fun res!727539 () Bool)

(assert (=> b!1626819 (=> res!727539 e!1043429)))

(assert (=> b!1626819 (= res!727539 (not ((_ is IntegerValue!9707) (value!99305 (h!23257 tokens!457)))))))

(declare-fun e!1043428 () Bool)

(assert (=> b!1626819 (= e!1043428 e!1043429)))

(declare-fun b!1626820 () Bool)

(declare-fun e!1043430 () Bool)

(assert (=> b!1626820 (= e!1043430 e!1043428)))

(declare-fun c!264704 () Bool)

(assert (=> b!1626820 (= c!264704 ((_ is IntegerValue!9706) (value!99305 (h!23257 tokens!457))))))

(declare-fun b!1626821 () Bool)

(declare-fun inv!17 (TokenValue!3235) Bool)

(assert (=> b!1626821 (= e!1043428 (inv!17 (value!99305 (h!23257 tokens!457))))))

(declare-fun b!1626822 () Bool)

(declare-fun inv!16 (TokenValue!3235) Bool)

(assert (=> b!1626822 (= e!1043430 (inv!16 (value!99305 (h!23257 tokens!457))))))

(declare-fun d!489723 () Bool)

(declare-fun c!264705 () Bool)

(assert (=> d!489723 (= c!264705 ((_ is IntegerValue!9705) (value!99305 (h!23257 tokens!457))))))

(assert (=> d!489723 (= (inv!21 (value!99305 (h!23257 tokens!457))) e!1043430)))

(assert (= (and d!489723 c!264705) b!1626822))

(assert (= (and d!489723 (not c!264705)) b!1626820))

(assert (= (and b!1626820 c!264704) b!1626821))

(assert (= (and b!1626820 (not c!264704)) b!1626819))

(assert (= (and b!1626819 (not res!727539)) b!1626818))

(declare-fun m!1955927 () Bool)

(assert (=> b!1626818 m!1955927))

(declare-fun m!1955929 () Bool)

(assert (=> b!1626821 m!1955929))

(declare-fun m!1955931 () Bool)

(assert (=> b!1626822 m!1955931))

(assert (=> b!1626374 d!489723))

(declare-fun d!489725 () Bool)

(declare-fun c!264706 () Bool)

(assert (=> d!489725 (= c!264706 (isEmpty!10881 (++!4751 lt!587996 lt!588000)))))

(declare-fun e!1043431 () Bool)

(assert (=> d!489725 (= (prefixMatch!408 lt!587975 (++!4751 lt!587996 lt!588000)) e!1043431)))

(declare-fun b!1626823 () Bool)

(assert (=> b!1626823 (= e!1043431 (not (lostCause!440 lt!587975)))))

(declare-fun b!1626824 () Bool)

(assert (=> b!1626824 (= e!1043431 (prefixMatch!408 (derivativeStep!1084 lt!587975 (head!3449 (++!4751 lt!587996 lt!588000))) (tail!2367 (++!4751 lt!587996 lt!588000))))))

(assert (= (and d!489725 c!264706) b!1626823))

(assert (= (and d!489725 (not c!264706)) b!1626824))

(assert (=> d!489725 m!1955019))

(declare-fun m!1955933 () Bool)

(assert (=> d!489725 m!1955933))

(assert (=> b!1626823 m!1955569))

(assert (=> b!1626824 m!1955019))

(declare-fun m!1955935 () Bool)

(assert (=> b!1626824 m!1955935))

(assert (=> b!1626824 m!1955935))

(declare-fun m!1955937 () Bool)

(assert (=> b!1626824 m!1955937))

(assert (=> b!1626824 m!1955019))

(declare-fun m!1955939 () Bool)

(assert (=> b!1626824 m!1955939))

(assert (=> b!1626824 m!1955937))

(assert (=> b!1626824 m!1955939))

(declare-fun m!1955941 () Bool)

(assert (=> b!1626824 m!1955941))

(assert (=> b!1626373 d!489725))

(declare-fun d!489727 () Bool)

(declare-fun e!1043433 () Bool)

(assert (=> d!489727 e!1043433))

(declare-fun res!727540 () Bool)

(assert (=> d!489727 (=> (not res!727540) (not e!1043433))))

(declare-fun lt!588451 () List!17924)

(assert (=> d!489727 (= res!727540 (= (content!2476 lt!588451) ((_ map or) (content!2476 lt!587996) (content!2476 lt!588000))))))

(declare-fun e!1043432 () List!17924)

(assert (=> d!489727 (= lt!588451 e!1043432)))

(declare-fun c!264707 () Bool)

(assert (=> d!489727 (= c!264707 ((_ is Nil!17854) lt!587996))))

(assert (=> d!489727 (= (++!4751 lt!587996 lt!588000) lt!588451)))

(declare-fun b!1626825 () Bool)

(assert (=> b!1626825 (= e!1043432 lt!588000)))

(declare-fun b!1626827 () Bool)

(declare-fun res!727541 () Bool)

(assert (=> b!1626827 (=> (not res!727541) (not e!1043433))))

(assert (=> b!1626827 (= res!727541 (= (size!14282 lt!588451) (+ (size!14282 lt!587996) (size!14282 lt!588000))))))

(declare-fun b!1626826 () Bool)

(assert (=> b!1626826 (= e!1043432 (Cons!17854 (h!23255 lt!587996) (++!4751 (t!149057 lt!587996) lt!588000)))))

(declare-fun b!1626828 () Bool)

(assert (=> b!1626828 (= e!1043433 (or (not (= lt!588000 Nil!17854)) (= lt!588451 lt!587996)))))

(assert (= (and d!489727 c!264707) b!1626825))

(assert (= (and d!489727 (not c!264707)) b!1626826))

(assert (= (and d!489727 res!727540) b!1626827))

(assert (= (and b!1626827 res!727541) b!1626828))

(declare-fun m!1955943 () Bool)

(assert (=> d!489727 m!1955943))

(assert (=> d!489727 m!1955581))

(assert (=> d!489727 m!1955731))

(declare-fun m!1955945 () Bool)

(assert (=> b!1626827 m!1955945))

(assert (=> b!1626827 m!1955305))

(assert (=> b!1626827 m!1955735))

(declare-fun m!1955947 () Bool)

(assert (=> b!1626826 m!1955947))

(assert (=> b!1626373 d!489727))

(declare-fun d!489729 () Bool)

(assert (=> d!489729 (= (inv!23225 (tag!3423 (h!23256 rules!1846))) (= (mod (str.len (value!99304 (tag!3423 (h!23256 rules!1846)))) 2) 0))))

(assert (=> b!1626371 d!489729))

(declare-fun d!489731 () Bool)

(declare-fun res!727542 () Bool)

(declare-fun e!1043434 () Bool)

(assert (=> d!489731 (=> (not res!727542) (not e!1043434))))

(assert (=> d!489731 (= res!727542 (semiInverseModEq!1201 (toChars!4431 (transformation!3145 (h!23256 rules!1846))) (toValue!4572 (transformation!3145 (h!23256 rules!1846)))))))

(assert (=> d!489731 (= (inv!23228 (transformation!3145 (h!23256 rules!1846))) e!1043434)))

(declare-fun b!1626829 () Bool)

(assert (=> b!1626829 (= e!1043434 (equivClasses!1142 (toChars!4431 (transformation!3145 (h!23256 rules!1846))) (toValue!4572 (transformation!3145 (h!23256 rules!1846)))))))

(assert (= (and d!489731 res!727542) b!1626829))

(declare-fun m!1955949 () Bool)

(assert (=> d!489731 m!1955949))

(declare-fun m!1955951 () Bool)

(assert (=> b!1626829 m!1955951))

(assert (=> b!1626371 d!489731))

(declare-fun d!489733 () Bool)

(declare-fun isEmpty!10891 (Option!3315) Bool)

(assert (=> d!489733 (= (isDefined!2682 (maxPrefixZipperSequence!669 thiss!17113 rules!1846 (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457))))) (not (isEmpty!10891 (maxPrefixZipperSequence!669 thiss!17113 rules!1846 (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457)))))))))

(declare-fun bs!394843 () Bool)

(assert (= bs!394843 d!489733))

(assert (=> bs!394843 m!1955011))

(declare-fun m!1955953 () Bool)

(assert (=> bs!394843 m!1955953))

(assert (=> b!1626372 d!489733))

(declare-fun b!1626917 () Bool)

(declare-fun e!1043488 () Bool)

(declare-fun e!1043492 () Bool)

(assert (=> b!1626917 (= e!1043488 e!1043492)))

(declare-fun res!727595 () Bool)

(assert (=> b!1626917 (=> res!727595 e!1043492)))

(declare-fun lt!588477 () Option!3315)

(assert (=> b!1626917 (= res!727595 (not (isDefined!2682 lt!588477)))))

(declare-fun e!1043489 () Bool)

(declare-fun b!1626918 () Bool)

(declare-fun get!5154 (Option!3315) tuple2!17432)

(assert (=> b!1626918 (= e!1043489 (= (list!7011 (_2!10118 (get!5154 lt!588477))) (_2!10119 (get!5150 (maxPrefix!1338 thiss!17113 rules!1846 (list!7011 (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457)))))))))))

(declare-fun b!1626919 () Bool)

(declare-fun e!1043487 () Bool)

(declare-fun e!1043491 () Bool)

(assert (=> b!1626919 (= e!1043487 e!1043491)))

(declare-fun res!727591 () Bool)

(assert (=> b!1626919 (=> (not res!727591) (not e!1043491))))

(declare-fun maxPrefixZipper!308 (LexerInterface!2774 List!17925 List!17924) Option!3316)

(assert (=> b!1626919 (= res!727591 (= (_1!10118 (get!5154 lt!588477)) (_1!10119 (get!5150 (maxPrefixZipper!308 thiss!17113 rules!1846 (list!7011 (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457)))))))))))

(declare-fun b!1626920 () Bool)

(assert (=> b!1626920 (= e!1043491 (= (list!7011 (_2!10118 (get!5154 lt!588477))) (_2!10119 (get!5150 (maxPrefixZipper!308 thiss!17113 rules!1846 (list!7011 (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457)))))))))))

(declare-fun b!1626921 () Bool)

(declare-fun e!1043490 () Option!3315)

(declare-fun lt!588474 () Option!3315)

(declare-fun lt!588476 () Option!3315)

(assert (=> b!1626921 (= e!1043490 (ite (and ((_ is None!3314) lt!588474) ((_ is None!3314) lt!588476)) None!3314 (ite ((_ is None!3314) lt!588476) lt!588474 (ite ((_ is None!3314) lt!588474) lt!588476 (ite (>= (size!14278 (_1!10118 (v!24357 lt!588474))) (size!14278 (_1!10118 (v!24357 lt!588476)))) lt!588474 lt!588476)))))))

(declare-fun call!105274 () Option!3315)

(assert (=> b!1626921 (= lt!588474 call!105274)))

(assert (=> b!1626921 (= lt!588476 (maxPrefixZipperSequence!669 thiss!17113 (t!149058 rules!1846) (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457)))))))

(declare-fun b!1626922 () Bool)

(assert (=> b!1626922 (= e!1043490 call!105274)))

(declare-fun bm!105269 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!318 (LexerInterface!2774 Rule!6090 BalanceConc!11820) Option!3315)

(assert (=> bm!105269 (= call!105274 (maxPrefixOneRuleZipperSequence!318 thiss!17113 (h!23256 rules!1846) (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457)))))))

(declare-fun b!1626923 () Bool)

(declare-fun res!727594 () Bool)

(assert (=> b!1626923 (=> (not res!727594) (not e!1043488))))

(assert (=> b!1626923 (= res!727594 e!1043487)))

(declare-fun res!727592 () Bool)

(assert (=> b!1626923 (=> res!727592 e!1043487)))

(assert (=> b!1626923 (= res!727592 (not (isDefined!2682 lt!588477)))))

(declare-fun d!489735 () Bool)

(assert (=> d!489735 e!1043488))

(declare-fun res!727593 () Bool)

(assert (=> d!489735 (=> (not res!727593) (not e!1043488))))

(assert (=> d!489735 (= res!727593 (= (isDefined!2682 lt!588477) (isDefined!2683 (maxPrefixZipper!308 thiss!17113 rules!1846 (list!7011 (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457))))))))))

(assert (=> d!489735 (= lt!588477 e!1043490)))

(declare-fun c!264721 () Bool)

(assert (=> d!489735 (= c!264721 (and ((_ is Cons!17855) rules!1846) ((_ is Nil!17855) (t!149058 rules!1846))))))

(declare-fun lt!588473 () Unit!28923)

(declare-fun lt!588471 () Unit!28923)

(assert (=> d!489735 (= lt!588473 lt!588471)))

(declare-fun lt!588475 () List!17924)

(declare-fun lt!588472 () List!17924)

(assert (=> d!489735 (isPrefix!1405 lt!588475 lt!588472)))

(assert (=> d!489735 (= lt!588471 (lemmaIsPrefixRefl!962 lt!588475 lt!588472))))

(assert (=> d!489735 (= lt!588472 (list!7011 (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457)))))))

(assert (=> d!489735 (= lt!588475 (list!7011 (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457)))))))

(assert (=> d!489735 (rulesValidInductive!974 thiss!17113 rules!1846)))

(assert (=> d!489735 (= (maxPrefixZipperSequence!669 thiss!17113 rules!1846 (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457)))) lt!588477)))

(declare-fun b!1626924 () Bool)

(assert (=> b!1626924 (= e!1043492 e!1043489)))

(declare-fun res!727596 () Bool)

(assert (=> b!1626924 (=> (not res!727596) (not e!1043489))))

(assert (=> b!1626924 (= res!727596 (= (_1!10118 (get!5154 lt!588477)) (_1!10119 (get!5150 (maxPrefix!1338 thiss!17113 rules!1846 (list!7011 (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457)))))))))))

(assert (= (and d!489735 c!264721) b!1626922))

(assert (= (and d!489735 (not c!264721)) b!1626921))

(assert (= (or b!1626922 b!1626921) bm!105269))

(assert (= (and d!489735 res!727593) b!1626923))

(assert (= (and b!1626923 (not res!727592)) b!1626919))

(assert (= (and b!1626919 res!727591) b!1626920))

(assert (= (and b!1626923 res!727594) b!1626917))

(assert (= (and b!1626917 (not res!727595)) b!1626924))

(assert (= (and b!1626924 res!727596) b!1626918))

(declare-fun m!1956001 () Bool)

(assert (=> b!1626919 m!1956001))

(assert (=> b!1626919 m!1955009))

(declare-fun m!1956003 () Bool)

(assert (=> b!1626919 m!1956003))

(assert (=> b!1626919 m!1956003))

(declare-fun m!1956005 () Bool)

(assert (=> b!1626919 m!1956005))

(assert (=> b!1626919 m!1956005))

(declare-fun m!1956007 () Bool)

(assert (=> b!1626919 m!1956007))

(declare-fun m!1956009 () Bool)

(assert (=> b!1626917 m!1956009))

(assert (=> b!1626923 m!1956009))

(assert (=> d!489735 m!1956005))

(declare-fun m!1956011 () Bool)

(assert (=> d!489735 m!1956011))

(assert (=> d!489735 m!1955653))

(assert (=> d!489735 m!1956003))

(assert (=> d!489735 m!1956005))

(assert (=> d!489735 m!1956009))

(declare-fun m!1956013 () Bool)

(assert (=> d!489735 m!1956013))

(assert (=> d!489735 m!1955009))

(assert (=> d!489735 m!1956003))

(declare-fun m!1956015 () Bool)

(assert (=> d!489735 m!1956015))

(assert (=> b!1626921 m!1955009))

(declare-fun m!1956017 () Bool)

(assert (=> b!1626921 m!1956017))

(assert (=> b!1626918 m!1956001))

(assert (=> b!1626918 m!1955009))

(assert (=> b!1626918 m!1956003))

(assert (=> b!1626918 m!1956003))

(declare-fun m!1956019 () Bool)

(assert (=> b!1626918 m!1956019))

(assert (=> b!1626918 m!1956019))

(declare-fun m!1956021 () Bool)

(assert (=> b!1626918 m!1956021))

(declare-fun m!1956023 () Bool)

(assert (=> b!1626918 m!1956023))

(assert (=> b!1626920 m!1956001))

(assert (=> b!1626920 m!1956005))

(assert (=> b!1626920 m!1956007))

(assert (=> b!1626920 m!1955009))

(assert (=> b!1626920 m!1956003))

(assert (=> b!1626920 m!1956003))

(assert (=> b!1626920 m!1956005))

(assert (=> b!1626920 m!1956023))

(assert (=> bm!105269 m!1955009))

(declare-fun m!1956025 () Bool)

(assert (=> bm!105269 m!1956025))

(assert (=> b!1626924 m!1956001))

(assert (=> b!1626924 m!1955009))

(assert (=> b!1626924 m!1956003))

(assert (=> b!1626924 m!1956003))

(assert (=> b!1626924 m!1956019))

(assert (=> b!1626924 m!1956019))

(assert (=> b!1626924 m!1956021))

(assert (=> b!1626372 d!489735))

(declare-fun d!489755 () Bool)

(assert (=> d!489755 (= (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457))) (fromListB!897 (originalCharacters!3959 (h!23257 tokens!457))))))

(declare-fun bs!394844 () Bool)

(assert (= bs!394844 d!489755))

(declare-fun m!1956027 () Bool)

(assert (=> bs!394844 m!1956027))

(assert (=> b!1626372 d!489755))

(declare-fun d!489757 () Bool)

(declare-fun lt!588488 () C!9120)

(assert (=> d!489757 (= lt!588488 (head!3449 (list!7011 lt!587989)))))

(declare-fun head!3453 (Conc!5938) C!9120)

(assert (=> d!489757 (= lt!588488 (head!3453 (c!264623 lt!587989)))))

(assert (=> d!489757 (not (isEmpty!10887 lt!587989))))

(assert (=> d!489757 (= (head!3448 lt!587989) lt!588488)))

(declare-fun bs!394845 () Bool)

(assert (= bs!394845 d!489757))

(assert (=> bs!394845 m!1954949))

(assert (=> bs!394845 m!1954949))

(declare-fun m!1956049 () Bool)

(assert (=> bs!394845 m!1956049))

(declare-fun m!1956053 () Bool)

(assert (=> bs!394845 m!1956053))

(declare-fun m!1956055 () Bool)

(assert (=> bs!394845 m!1956055))

(assert (=> b!1626372 d!489757))

(declare-fun d!489765 () Bool)

(declare-fun e!1043511 () Bool)

(assert (=> d!489765 e!1043511))

(declare-fun res!727623 () Bool)

(assert (=> d!489765 (=> (not res!727623) (not e!1043511))))

(declare-fun lt!588497 () BalanceConc!11820)

(assert (=> d!489765 (= res!727623 (= (list!7011 lt!588497) (Cons!17854 (apply!4568 (charsOf!1794 (h!23257 (t!149059 tokens!457))) 0) Nil!17854)))))

(declare-fun singleton!674 (C!9120) BalanceConc!11820)

(assert (=> d!489765 (= lt!588497 (singleton!674 (apply!4568 (charsOf!1794 (h!23257 (t!149059 tokens!457))) 0)))))

(assert (=> d!489765 (= (singletonSeq!1569 (apply!4568 (charsOf!1794 (h!23257 (t!149059 tokens!457))) 0)) lt!588497)))

(declare-fun b!1626957 () Bool)

(declare-fun isBalanced!1794 (Conc!5938) Bool)

(assert (=> b!1626957 (= e!1043511 (isBalanced!1794 (c!264623 lt!588497)))))

(assert (= (and d!489765 res!727623) b!1626957))

(declare-fun m!1956095 () Bool)

(assert (=> d!489765 m!1956095))

(assert (=> d!489765 m!1954979))

(declare-fun m!1956097 () Bool)

(assert (=> d!489765 m!1956097))

(declare-fun m!1956099 () Bool)

(assert (=> b!1626957 m!1956099))

(assert (=> b!1626391 d!489765))

(declare-fun d!489775 () Bool)

(declare-fun lt!588520 () Bool)

(assert (=> d!489775 (= lt!588520 (prefixMatch!408 lt!587975 (list!7011 (++!4752 lt!587987 lt!587976))))))

(declare-datatypes ((List!17931 0))(
  ( (Nil!17861) (Cons!17861 (h!23262 Regex!4473) (t!149106 List!17931)) )
))
(declare-datatypes ((Context!1738 0))(
  ( (Context!1739 (exprs!1369 List!17931)) )
))
(declare-fun prefixMatchZipperSequence!537 ((InoxSet Context!1738) BalanceConc!11820 Int) Bool)

(declare-fun focus!175 (Regex!4473) (InoxSet Context!1738))

(assert (=> d!489775 (= lt!588520 (prefixMatchZipperSequence!537 (focus!175 lt!587975) (++!4752 lt!587987 lt!587976) 0))))

(declare-fun lt!588519 () Unit!28923)

(declare-fun lt!588524 () Unit!28923)

(assert (=> d!489775 (= lt!588519 lt!588524)))

(declare-fun lt!588525 () List!17924)

(declare-fun lt!588521 () (InoxSet Context!1738))

(declare-fun prefixMatchZipper!154 ((InoxSet Context!1738) List!17924) Bool)

(assert (=> d!489775 (= (prefixMatch!408 lt!587975 lt!588525) (prefixMatchZipper!154 lt!588521 lt!588525))))

(declare-datatypes ((List!17932 0))(
  ( (Nil!17862) (Cons!17862 (h!23263 Context!1738) (t!149107 List!17932)) )
))
(declare-fun lt!588526 () List!17932)

(declare-fun prefixMatchZipperRegexEquiv!154 ((InoxSet Context!1738) List!17932 Regex!4473 List!17924) Unit!28923)

(assert (=> d!489775 (= lt!588524 (prefixMatchZipperRegexEquiv!154 lt!588521 lt!588526 lt!587975 lt!588525))))

(assert (=> d!489775 (= lt!588525 (list!7011 (++!4752 lt!587987 lt!587976)))))

(declare-fun toList!915 ((InoxSet Context!1738)) List!17932)

(assert (=> d!489775 (= lt!588526 (toList!915 (focus!175 lt!587975)))))

(assert (=> d!489775 (= lt!588521 (focus!175 lt!587975))))

(declare-fun lt!588522 () Unit!28923)

(declare-fun lt!588523 () Unit!28923)

(assert (=> d!489775 (= lt!588522 lt!588523)))

(declare-fun lt!588527 () Int)

(declare-fun lt!588518 () (InoxSet Context!1738))

(declare-fun dropList!612 (BalanceConc!11820 Int) List!17924)

(assert (=> d!489775 (= (prefixMatchZipper!154 lt!588518 (dropList!612 (++!4752 lt!587987 lt!587976) lt!588527)) (prefixMatchZipperSequence!537 lt!588518 (++!4752 lt!587987 lt!587976) lt!588527))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!154 ((InoxSet Context!1738) BalanceConc!11820 Int) Unit!28923)

(assert (=> d!489775 (= lt!588523 (lemmaprefixMatchZipperSequenceEquivalent!154 lt!588518 (++!4752 lt!587987 lt!587976) lt!588527))))

(assert (=> d!489775 (= lt!588527 0)))

(assert (=> d!489775 (= lt!588518 (focus!175 lt!587975))))

(assert (=> d!489775 (validRegex!1780 lt!587975)))

(assert (=> d!489775 (= (prefixMatchZipperSequence!535 lt!587975 (++!4752 lt!587987 lt!587976)) lt!588520)))

(declare-fun bs!394849 () Bool)

(assert (= bs!394849 d!489775))

(assert (=> bs!394849 m!1954983))

(declare-fun m!1956139 () Bool)

(assert (=> bs!394849 m!1956139))

(declare-fun m!1956141 () Bool)

(assert (=> bs!394849 m!1956141))

(declare-fun m!1956143 () Bool)

(assert (=> bs!394849 m!1956143))

(assert (=> bs!394849 m!1954983))

(declare-fun m!1956145 () Bool)

(assert (=> bs!394849 m!1956145))

(assert (=> bs!394849 m!1956139))

(declare-fun m!1956147 () Bool)

(assert (=> bs!394849 m!1956147))

(assert (=> bs!394849 m!1954983))

(declare-fun m!1956149 () Bool)

(assert (=> bs!394849 m!1956149))

(assert (=> bs!394849 m!1956149))

(declare-fun m!1956151 () Bool)

(assert (=> bs!394849 m!1956151))

(declare-fun m!1956153 () Bool)

(assert (=> bs!394849 m!1956153))

(declare-fun m!1956155 () Bool)

(assert (=> bs!394849 m!1956155))

(assert (=> bs!394849 m!1954983))

(declare-fun m!1956157 () Bool)

(assert (=> bs!394849 m!1956157))

(declare-fun m!1956159 () Bool)

(assert (=> bs!394849 m!1956159))

(assert (=> bs!394849 m!1956143))

(declare-fun m!1956161 () Bool)

(assert (=> bs!394849 m!1956161))

(assert (=> bs!394849 m!1956143))

(assert (=> bs!394849 m!1954983))

(declare-fun m!1956163 () Bool)

(assert (=> bs!394849 m!1956163))

(assert (=> b!1626391 d!489775))

(declare-fun d!489787 () Bool)

(declare-fun lt!588530 () Unit!28923)

(declare-fun lemma!241 (List!17925 LexerInterface!2774 List!17925) Unit!28923)

(assert (=> d!489787 (= lt!588530 (lemma!241 rules!1846 thiss!17113 rules!1846))))

(declare-fun lambda!67273 () Int)

(declare-fun generalisedUnion!249 (List!17931) Regex!4473)

(declare-fun map!3693 (List!17925 Int) List!17931)

(assert (=> d!489787 (= (rulesRegex!535 thiss!17113 rules!1846) (generalisedUnion!249 (map!3693 rules!1846 lambda!67273)))))

(declare-fun bs!394850 () Bool)

(assert (= bs!394850 d!489787))

(declare-fun m!1956165 () Bool)

(assert (=> bs!394850 m!1956165))

(declare-fun m!1956167 () Bool)

(assert (=> bs!394850 m!1956167))

(assert (=> bs!394850 m!1956167))

(declare-fun m!1956169 () Bool)

(assert (=> bs!394850 m!1956169))

(assert (=> b!1626391 d!489787))

(declare-fun d!489789 () Bool)

(declare-fun lt!588531 () BalanceConc!11820)

(assert (=> d!489789 (= (list!7011 lt!588531) (originalCharacters!3959 (h!23257 (t!149059 tokens!457))))))

(assert (=> d!489789 (= lt!588531 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 tokens!457))))) (value!99305 (h!23257 (t!149059 tokens!457)))))))

(assert (=> d!489789 (= (charsOf!1794 (h!23257 (t!149059 tokens!457))) lt!588531)))

(declare-fun b_lambda!51235 () Bool)

(assert (=> (not b_lambda!51235) (not d!489789)))

(declare-fun t!149081 () Bool)

(declare-fun tb!93347 () Bool)

(assert (=> (and b!1626382 (= (toChars!4431 (transformation!3145 (rule!4971 (h!23257 tokens!457)))) (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 tokens!457)))))) t!149081) tb!93347))

(declare-fun b!1626963 () Bool)

(declare-fun e!1043516 () Bool)

(declare-fun tp!472932 () Bool)

(assert (=> b!1626963 (= e!1043516 (and (inv!23232 (c!264623 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 tokens!457))))) (value!99305 (h!23257 (t!149059 tokens!457)))))) tp!472932))))

(declare-fun result!112590 () Bool)

(assert (=> tb!93347 (= result!112590 (and (inv!23233 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 tokens!457))))) (value!99305 (h!23257 (t!149059 tokens!457))))) e!1043516))))

(assert (= tb!93347 b!1626963))

(declare-fun m!1956171 () Bool)

(assert (=> b!1626963 m!1956171))

(declare-fun m!1956173 () Bool)

(assert (=> tb!93347 m!1956173))

(assert (=> d!489789 t!149081))

(declare-fun b_and!115361 () Bool)

(assert (= b_and!115353 (and (=> t!149081 result!112590) b_and!115361)))

(declare-fun tb!93349 () Bool)

(declare-fun t!149083 () Bool)

(assert (=> (and b!1626369 (= (toChars!4431 (transformation!3145 (h!23256 rules!1846))) (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 tokens!457)))))) t!149083) tb!93349))

(declare-fun result!112592 () Bool)

(assert (= result!112592 result!112590))

(assert (=> d!489789 t!149083))

(declare-fun b_and!115363 () Bool)

(assert (= b_and!115355 (and (=> t!149083 result!112592) b_and!115363)))

(declare-fun m!1956175 () Bool)

(assert (=> d!489789 m!1956175))

(declare-fun m!1956177 () Bool)

(assert (=> d!489789 m!1956177))

(assert (=> b!1626391 d!489789))

(declare-fun d!489791 () Bool)

(declare-fun lt!588534 () C!9120)

(declare-fun apply!4577 (List!17924 Int) C!9120)

(assert (=> d!489791 (= lt!588534 (apply!4577 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457)))) 0))))

(declare-fun apply!4578 (Conc!5938 Int) C!9120)

(assert (=> d!489791 (= lt!588534 (apply!4578 (c!264623 (charsOf!1794 (h!23257 (t!149059 tokens!457)))) 0))))

(declare-fun e!1043519 () Bool)

(assert (=> d!489791 e!1043519))

(declare-fun res!727629 () Bool)

(assert (=> d!489791 (=> (not res!727629) (not e!1043519))))

(assert (=> d!489791 (= res!727629 (<= 0 0))))

(assert (=> d!489791 (= (apply!4568 (charsOf!1794 (h!23257 (t!149059 tokens!457))) 0) lt!588534)))

(declare-fun b!1626966 () Bool)

(assert (=> b!1626966 (= e!1043519 (< 0 (size!14284 (charsOf!1794 (h!23257 (t!149059 tokens!457))))))))

(assert (= (and d!489791 res!727629) b!1626966))

(assert (=> d!489791 m!1954987))

(assert (=> d!489791 m!1955231))

(assert (=> d!489791 m!1955231))

(declare-fun m!1956179 () Bool)

(assert (=> d!489791 m!1956179))

(declare-fun m!1956181 () Bool)

(assert (=> d!489791 m!1956181))

(assert (=> b!1626966 m!1954987))

(assert (=> b!1626966 m!1955449))

(assert (=> b!1626391 d!489791))

(declare-fun d!489793 () Bool)

(declare-fun e!1043522 () Bool)

(assert (=> d!489793 e!1043522))

(declare-fun res!727639 () Bool)

(assert (=> d!489793 (=> (not res!727639) (not e!1043522))))

(declare-fun appendAssocInst!437 (Conc!5938 Conc!5938) Bool)

(assert (=> d!489793 (= res!727639 (appendAssocInst!437 (c!264623 lt!587987) (c!264623 lt!587976)))))

(declare-fun lt!588537 () BalanceConc!11820)

(declare-fun ++!4754 (Conc!5938 Conc!5938) Conc!5938)

(assert (=> d!489793 (= lt!588537 (BalanceConc!11821 (++!4754 (c!264623 lt!587987) (c!264623 lt!587976))))))

(assert (=> d!489793 (= (++!4752 lt!587987 lt!587976) lt!588537)))

(declare-fun b!1626975 () Bool)

(declare-fun res!727640 () Bool)

(assert (=> b!1626975 (=> (not res!727640) (not e!1043522))))

(assert (=> b!1626975 (= res!727640 (isBalanced!1794 (++!4754 (c!264623 lt!587987) (c!264623 lt!587976))))))

(declare-fun b!1626978 () Bool)

(assert (=> b!1626978 (= e!1043522 (= (list!7011 lt!588537) (++!4751 (list!7011 lt!587987) (list!7011 lt!587976))))))

(declare-fun b!1626977 () Bool)

(declare-fun res!727638 () Bool)

(assert (=> b!1626977 (=> (not res!727638) (not e!1043522))))

(declare-fun height!907 (Conc!5938) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1626977 (= res!727638 (>= (height!907 (++!4754 (c!264623 lt!587987) (c!264623 lt!587976))) (max!0 (height!907 (c!264623 lt!587987)) (height!907 (c!264623 lt!587976)))))))

(declare-fun b!1626976 () Bool)

(declare-fun res!727641 () Bool)

(assert (=> b!1626976 (=> (not res!727641) (not e!1043522))))

(assert (=> b!1626976 (= res!727641 (<= (height!907 (++!4754 (c!264623 lt!587987) (c!264623 lt!587976))) (+ (max!0 (height!907 (c!264623 lt!587987)) (height!907 (c!264623 lt!587976))) 1)))))

(assert (= (and d!489793 res!727639) b!1626975))

(assert (= (and b!1626975 res!727640) b!1626976))

(assert (= (and b!1626976 res!727641) b!1626977))

(assert (= (and b!1626977 res!727638) b!1626978))

(declare-fun m!1956183 () Bool)

(assert (=> b!1626977 m!1956183))

(declare-fun m!1956185 () Bool)

(assert (=> b!1626977 m!1956185))

(declare-fun m!1956187 () Bool)

(assert (=> b!1626977 m!1956187))

(declare-fun m!1956189 () Bool)

(assert (=> b!1626977 m!1956189))

(assert (=> b!1626977 m!1956183))

(assert (=> b!1626977 m!1956185))

(declare-fun m!1956191 () Bool)

(assert (=> b!1626977 m!1956191))

(assert (=> b!1626977 m!1956187))

(declare-fun m!1956193 () Bool)

(assert (=> b!1626978 m!1956193))

(assert (=> b!1626978 m!1954955))

(assert (=> b!1626978 m!1954967))

(assert (=> b!1626978 m!1954955))

(assert (=> b!1626978 m!1954967))

(declare-fun m!1956195 () Bool)

(assert (=> b!1626978 m!1956195))

(assert (=> b!1626976 m!1956183))

(assert (=> b!1626976 m!1956185))

(assert (=> b!1626976 m!1956187))

(assert (=> b!1626976 m!1956189))

(assert (=> b!1626976 m!1956183))

(assert (=> b!1626976 m!1956185))

(assert (=> b!1626976 m!1956191))

(assert (=> b!1626976 m!1956187))

(declare-fun m!1956197 () Bool)

(assert (=> d!489793 m!1956197))

(assert (=> d!489793 m!1956187))

(assert (=> b!1626975 m!1956187))

(assert (=> b!1626975 m!1956187))

(declare-fun m!1956199 () Bool)

(assert (=> b!1626975 m!1956199))

(assert (=> b!1626391 d!489793))

(declare-fun b!1627069 () Bool)

(declare-fun e!1043592 () Bool)

(assert (=> b!1627069 (= e!1043592 true)))

(declare-fun b!1627068 () Bool)

(declare-fun e!1043591 () Bool)

(assert (=> b!1627068 (= e!1043591 e!1043592)))

(declare-fun b!1627067 () Bool)

(declare-fun e!1043590 () Bool)

(assert (=> b!1627067 (= e!1043590 e!1043591)))

(declare-fun d!489795 () Bool)

(assert (=> d!489795 e!1043590))

(assert (= b!1627068 b!1627069))

(assert (= b!1627067 b!1627068))

(assert (= (and d!489795 ((_ is Cons!17855) rules!1846)) b!1627067))

(declare-fun lambda!67276 () Int)

(declare-fun order!10593 () Int)

(declare-fun order!10591 () Int)

(declare-fun dynLambda!7965 (Int Int) Int)

(declare-fun dynLambda!7966 (Int Int) Int)

(assert (=> b!1627069 (< (dynLambda!7965 order!10591 (toValue!4572 (transformation!3145 (h!23256 rules!1846)))) (dynLambda!7966 order!10593 lambda!67276))))

(declare-fun order!10595 () Int)

(declare-fun dynLambda!7967 (Int Int) Int)

(assert (=> b!1627069 (< (dynLambda!7967 order!10595 (toChars!4431 (transformation!3145 (h!23256 rules!1846)))) (dynLambda!7966 order!10593 lambda!67276))))

(assert (=> d!489795 true))

(declare-fun lt!588628 () Bool)

(declare-fun forall!4086 (List!17926 Int) Bool)

(assert (=> d!489795 (= lt!588628 (forall!4086 tokens!457 lambda!67276))))

(declare-fun e!1043582 () Bool)

(assert (=> d!489795 (= lt!588628 e!1043582)))

(declare-fun res!727664 () Bool)

(assert (=> d!489795 (=> res!727664 e!1043582)))

(assert (=> d!489795 (= res!727664 (not ((_ is Cons!17856) tokens!457)))))

(assert (=> d!489795 (not (isEmpty!10883 rules!1846))))

(assert (=> d!489795 (= (rulesProduceEachTokenIndividuallyList!976 thiss!17113 rules!1846 tokens!457) lt!588628)))

(declare-fun b!1627057 () Bool)

(declare-fun e!1043583 () Bool)

(assert (=> b!1627057 (= e!1043582 e!1043583)))

(declare-fun res!727665 () Bool)

(assert (=> b!1627057 (=> (not res!727665) (not e!1043583))))

(assert (=> b!1627057 (= res!727665 (rulesProduceIndividualToken!1426 thiss!17113 rules!1846 (h!23257 tokens!457)))))

(declare-fun b!1627058 () Bool)

(assert (=> b!1627058 (= e!1043583 (rulesProduceEachTokenIndividuallyList!976 thiss!17113 rules!1846 (t!149059 tokens!457)))))

(assert (= (and d!489795 (not res!727664)) b!1627057))

(assert (= (and b!1627057 res!727665) b!1627058))

(declare-fun m!1956323 () Bool)

(assert (=> d!489795 m!1956323))

(assert (=> d!489795 m!1954901))

(assert (=> b!1627057 m!1955017))

(declare-fun m!1956325 () Bool)

(assert (=> b!1627058 m!1956325))

(assert (=> b!1626370 d!489795))

(declare-fun d!489809 () Bool)

(declare-fun e!1043595 () Bool)

(assert (=> d!489809 e!1043595))

(declare-fun res!727668 () Bool)

(assert (=> d!489809 (=> (not res!727668) (not e!1043595))))

(declare-fun prepend!675 (Conc!5939 Token!5856) Conc!5939)

(assert (=> d!489809 (= res!727668 (isBalanced!1793 (prepend!675 (c!264625 (seqFromList!2039 (t!149059 (t!149059 tokens!457)))) (h!23257 (t!149059 tokens!457)))))))

(declare-fun lt!588631 () BalanceConc!11822)

(assert (=> d!489809 (= lt!588631 (BalanceConc!11823 (prepend!675 (c!264625 (seqFromList!2039 (t!149059 (t!149059 tokens!457)))) (h!23257 (t!149059 tokens!457)))))))

(assert (=> d!489809 (= (prepend!673 (seqFromList!2039 (t!149059 (t!149059 tokens!457))) (h!23257 (t!149059 tokens!457))) lt!588631)))

(declare-fun b!1627074 () Bool)

(assert (=> b!1627074 (= e!1043595 (= (list!7012 lt!588631) (Cons!17856 (h!23257 (t!149059 tokens!457)) (list!7012 (seqFromList!2039 (t!149059 (t!149059 tokens!457)))))))))

(assert (= (and d!489809 res!727668) b!1627074))

(declare-fun m!1956327 () Bool)

(assert (=> d!489809 m!1956327))

(assert (=> d!489809 m!1956327))

(declare-fun m!1956329 () Bool)

(assert (=> d!489809 m!1956329))

(declare-fun m!1956331 () Bool)

(assert (=> b!1627074 m!1956331))

(assert (=> b!1627074 m!1955001))

(declare-fun m!1956333 () Bool)

(assert (=> b!1627074 m!1956333))

(assert (=> b!1626392 d!489809))

(declare-fun d!489811 () Bool)

(assert (=> d!489811 (= (list!7012 (prepend!673 (seqFromList!2039 (t!149059 (t!149059 tokens!457))) (h!23257 (t!149059 tokens!457)))) (list!7014 (c!264625 (prepend!673 (seqFromList!2039 (t!149059 (t!149059 tokens!457))) (h!23257 (t!149059 tokens!457))))))))

(declare-fun bs!394854 () Bool)

(assert (= bs!394854 d!489811))

(declare-fun m!1956335 () Bool)

(assert (=> bs!394854 m!1956335))

(assert (=> b!1626392 d!489811))

(declare-fun d!489813 () Bool)

(assert (=> d!489813 (= (list!7012 (_1!10117 lt!587979)) (list!7012 (prepend!673 (seqFromList!2039 (t!149059 (t!149059 tokens!457))) (h!23257 (t!149059 tokens!457)))))))

(declare-fun lt!588634 () Unit!28923)

(declare-fun choose!9782 (Token!5856 List!17926 BalanceConc!11822) Unit!28923)

(assert (=> d!489813 (= lt!588634 (choose!9782 (h!23257 (t!149059 tokens!457)) (t!149059 (t!149059 tokens!457)) (_1!10117 lt!587979)))))

(declare-fun $colon$colon!331 (List!17926 Token!5856) List!17926)

(assert (=> d!489813 (= (list!7012 (_1!10117 lt!587979)) (list!7012 (seqFromList!2039 ($colon$colon!331 (t!149059 (t!149059 tokens!457)) (h!23257 (t!149059 tokens!457))))))))

(assert (=> d!489813 (= (seqFromListBHdTlConstructive!222 (h!23257 (t!149059 tokens!457)) (t!149059 (t!149059 tokens!457)) (_1!10117 lt!587979)) lt!588634)))

(declare-fun bs!394855 () Bool)

(assert (= bs!394855 d!489813))

(assert (=> bs!394855 m!1955001))

(assert (=> bs!394855 m!1955003))

(declare-fun m!1956337 () Bool)

(assert (=> bs!394855 m!1956337))

(declare-fun m!1956339 () Bool)

(assert (=> bs!394855 m!1956339))

(assert (=> bs!394855 m!1955029))

(declare-fun m!1956341 () Bool)

(assert (=> bs!394855 m!1956341))

(declare-fun m!1956343 () Bool)

(assert (=> bs!394855 m!1956343))

(assert (=> bs!394855 m!1955003))

(assert (=> bs!394855 m!1955005))

(assert (=> bs!394855 m!1955001))

(assert (=> bs!394855 m!1956341))

(assert (=> bs!394855 m!1956337))

(assert (=> b!1626392 d!489813))

(declare-fun d!489815 () Bool)

(assert (=> d!489815 (= (seqFromList!2039 (t!149059 (t!149059 tokens!457))) (fromListB!899 (t!149059 (t!149059 tokens!457))))))

(declare-fun bs!394856 () Bool)

(assert (= bs!394856 d!489815))

(declare-fun m!1956345 () Bool)

(assert (=> bs!394856 m!1956345))

(assert (=> b!1626392 d!489815))

(declare-fun d!489817 () Bool)

(assert (=> d!489817 (= (list!7012 lt!587990) (list!7014 (c!264625 lt!587990)))))

(declare-fun bs!394857 () Bool)

(assert (= bs!394857 d!489817))

(declare-fun m!1956347 () Bool)

(assert (=> bs!394857 m!1956347))

(assert (=> b!1626392 d!489817))

(declare-fun b!1627079 () Bool)

(declare-fun e!1043598 () Bool)

(declare-fun tp_is_empty!7285 () Bool)

(declare-fun tp!472985 () Bool)

(assert (=> b!1627079 (= e!1043598 (and tp_is_empty!7285 tp!472985))))

(assert (=> b!1626374 (= tp!472917 e!1043598)))

(assert (= (and b!1626374 ((_ is Cons!17854) (originalCharacters!3959 (h!23257 tokens!457)))) b!1627079))

(declare-fun b!1627093 () Bool)

(declare-fun b_free!43927 () Bool)

(declare-fun b_next!44631 () Bool)

(assert (=> b!1627093 (= b_free!43927 (not b_next!44631))))

(declare-fun tp!472999 () Bool)

(declare-fun b_and!115373 () Bool)

(assert (=> b!1627093 (= tp!472999 b_and!115373)))

(declare-fun b_free!43929 () Bool)

(declare-fun b_next!44633 () Bool)

(assert (=> b!1627093 (= b_free!43929 (not b_next!44633))))

(declare-fun t!149095 () Bool)

(declare-fun tb!93359 () Bool)

(assert (=> (and b!1627093 (= (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 tokens!457))))) (toChars!4431 (transformation!3145 (rule!4971 (h!23257 tokens!457))))) t!149095) tb!93359))

(declare-fun result!112614 () Bool)

(assert (= result!112614 result!112574))

(assert (=> b!1626526 t!149095))

(assert (=> d!489719 t!149095))

(declare-fun t!149097 () Bool)

(declare-fun tb!93361 () Bool)

(assert (=> (and b!1627093 (= (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 tokens!457))))) (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 tokens!457)))))) t!149097) tb!93361))

(declare-fun result!112616 () Bool)

(assert (= result!112616 result!112590))

(assert (=> d!489789 t!149097))

(declare-fun tp!472997 () Bool)

(declare-fun b_and!115375 () Bool)

(assert (=> b!1627093 (= tp!472997 (and (=> t!149095 result!112614) (=> t!149097 result!112616) b_and!115375))))

(declare-fun e!1043615 () Bool)

(assert (=> b!1626380 (= tp!472916 e!1043615)))

(declare-fun e!1043616 () Bool)

(declare-fun b!1627092 () Bool)

(declare-fun e!1043612 () Bool)

(declare-fun tp!472998 () Bool)

(assert (=> b!1627092 (= e!1043616 (and tp!472998 (inv!23225 (tag!3423 (rule!4971 (h!23257 (t!149059 tokens!457))))) (inv!23228 (transformation!3145 (rule!4971 (h!23257 (t!149059 tokens!457))))) e!1043612))))

(declare-fun tp!473000 () Bool)

(declare-fun b!1627090 () Bool)

(declare-fun e!1043611 () Bool)

(assert (=> b!1627090 (= e!1043615 (and (inv!23229 (h!23257 (t!149059 tokens!457))) e!1043611 tp!473000))))

(declare-fun tp!472996 () Bool)

(declare-fun b!1627091 () Bool)

(assert (=> b!1627091 (= e!1043611 (and (inv!21 (value!99305 (h!23257 (t!149059 tokens!457)))) e!1043616 tp!472996))))

(assert (=> b!1627093 (= e!1043612 (and tp!472999 tp!472997))))

(assert (= b!1627092 b!1627093))

(assert (= b!1627091 b!1627092))

(assert (= b!1627090 b!1627091))

(assert (= (and b!1626380 ((_ is Cons!17856) (t!149059 tokens!457))) b!1627090))

(declare-fun m!1956349 () Bool)

(assert (=> b!1627092 m!1956349))

(declare-fun m!1956351 () Bool)

(assert (=> b!1627092 m!1956351))

(declare-fun m!1956353 () Bool)

(assert (=> b!1627090 m!1956353))

(declare-fun m!1956355 () Bool)

(assert (=> b!1627091 m!1956355))

(declare-fun b!1627107 () Bool)

(declare-fun e!1043619 () Bool)

(declare-fun tp!473014 () Bool)

(declare-fun tp!473012 () Bool)

(assert (=> b!1627107 (= e!1043619 (and tp!473014 tp!473012))))

(declare-fun b!1627104 () Bool)

(assert (=> b!1627104 (= e!1043619 tp_is_empty!7285)))

(assert (=> b!1626383 (= tp!472918 e!1043619)))

(declare-fun b!1627106 () Bool)

(declare-fun tp!473011 () Bool)

(assert (=> b!1627106 (= e!1043619 tp!473011)))

(declare-fun b!1627105 () Bool)

(declare-fun tp!473015 () Bool)

(declare-fun tp!473013 () Bool)

(assert (=> b!1627105 (= e!1043619 (and tp!473015 tp!473013))))

(assert (= (and b!1626383 ((_ is ElementMatch!4473) (regex!3145 (rule!4971 (h!23257 tokens!457))))) b!1627104))

(assert (= (and b!1626383 ((_ is Concat!7709) (regex!3145 (rule!4971 (h!23257 tokens!457))))) b!1627105))

(assert (= (and b!1626383 ((_ is Star!4473) (regex!3145 (rule!4971 (h!23257 tokens!457))))) b!1627106))

(assert (= (and b!1626383 ((_ is Union!4473) (regex!3145 (rule!4971 (h!23257 tokens!457))))) b!1627107))

(declare-fun b!1627118 () Bool)

(declare-fun b_free!43931 () Bool)

(declare-fun b_next!44635 () Bool)

(assert (=> b!1627118 (= b_free!43931 (not b_next!44635))))

(declare-fun tp!473026 () Bool)

(declare-fun b_and!115377 () Bool)

(assert (=> b!1627118 (= tp!473026 b_and!115377)))

(declare-fun b_free!43933 () Bool)

(declare-fun b_next!44637 () Bool)

(assert (=> b!1627118 (= b_free!43933 (not b_next!44637))))

(declare-fun t!149100 () Bool)

(declare-fun tb!93363 () Bool)

(assert (=> (and b!1627118 (= (toChars!4431 (transformation!3145 (h!23256 (t!149058 rules!1846)))) (toChars!4431 (transformation!3145 (rule!4971 (h!23257 tokens!457))))) t!149100) tb!93363))

(declare-fun result!112622 () Bool)

(assert (= result!112622 result!112574))

(assert (=> b!1626526 t!149100))

(assert (=> d!489719 t!149100))

(declare-fun t!149103 () Bool)

(declare-fun tb!93365 () Bool)

(assert (=> (and b!1627118 (= (toChars!4431 (transformation!3145 (h!23256 (t!149058 rules!1846)))) (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 tokens!457)))))) t!149103) tb!93365))

(declare-fun result!112624 () Bool)

(assert (= result!112624 result!112590))

(assert (=> d!489789 t!149103))

(declare-fun tp!473025 () Bool)

(declare-fun b_and!115379 () Bool)

(assert (=> b!1627118 (= tp!473025 (and (=> t!149100 result!112622) (=> t!149103 result!112624) b_and!115379))))

(declare-fun e!1043630 () Bool)

(assert (=> b!1627118 (= e!1043630 (and tp!473026 tp!473025))))

(declare-fun b!1627117 () Bool)

(declare-fun tp!473024 () Bool)

(declare-fun e!1043628 () Bool)

(assert (=> b!1627117 (= e!1043628 (and tp!473024 (inv!23225 (tag!3423 (h!23256 (t!149058 rules!1846)))) (inv!23228 (transformation!3145 (h!23256 (t!149058 rules!1846)))) e!1043630))))

(declare-fun b!1627116 () Bool)

(declare-fun e!1043631 () Bool)

(declare-fun tp!473027 () Bool)

(assert (=> b!1627116 (= e!1043631 (and e!1043628 tp!473027))))

(assert (=> b!1626362 (= tp!472919 e!1043631)))

(assert (= b!1627117 b!1627118))

(assert (= b!1627116 b!1627117))

(assert (= (and b!1626362 ((_ is Cons!17855) (t!149058 rules!1846))) b!1627116))

(declare-fun m!1956357 () Bool)

(assert (=> b!1627117 m!1956357))

(declare-fun m!1956359 () Bool)

(assert (=> b!1627117 m!1956359))

(declare-fun b!1627122 () Bool)

(declare-fun e!1043632 () Bool)

(declare-fun tp!473031 () Bool)

(declare-fun tp!473029 () Bool)

(assert (=> b!1627122 (= e!1043632 (and tp!473031 tp!473029))))

(declare-fun b!1627119 () Bool)

(assert (=> b!1627119 (= e!1043632 tp_is_empty!7285)))

(assert (=> b!1626371 (= tp!472922 e!1043632)))

(declare-fun b!1627121 () Bool)

(declare-fun tp!473028 () Bool)

(assert (=> b!1627121 (= e!1043632 tp!473028)))

(declare-fun b!1627120 () Bool)

(declare-fun tp!473032 () Bool)

(declare-fun tp!473030 () Bool)

(assert (=> b!1627120 (= e!1043632 (and tp!473032 tp!473030))))

(assert (= (and b!1626371 ((_ is ElementMatch!4473) (regex!3145 (h!23256 rules!1846)))) b!1627119))

(assert (= (and b!1626371 ((_ is Concat!7709) (regex!3145 (h!23256 rules!1846)))) b!1627120))

(assert (= (and b!1626371 ((_ is Star!4473) (regex!3145 (h!23256 rules!1846)))) b!1627121))

(assert (= (and b!1626371 ((_ is Union!4473) (regex!3145 (h!23256 rules!1846)))) b!1627122))

(declare-fun b_lambda!51243 () Bool)

(assert (= b_lambda!51225 (or (and b!1626382 b_free!43913) (and b!1626369 b_free!43917 (= (toChars!4431 (transformation!3145 (h!23256 rules!1846))) (toChars!4431 (transformation!3145 (rule!4971 (h!23257 tokens!457)))))) (and b!1627093 b_free!43929 (= (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 tokens!457))))) (toChars!4431 (transformation!3145 (rule!4971 (h!23257 tokens!457)))))) (and b!1627118 b_free!43933 (= (toChars!4431 (transformation!3145 (h!23256 (t!149058 rules!1846)))) (toChars!4431 (transformation!3145 (rule!4971 (h!23257 tokens!457)))))) b_lambda!51243)))

(declare-fun b_lambda!51245 () Bool)

(assert (= b_lambda!51235 (or (and b!1626382 b_free!43913 (= (toChars!4431 (transformation!3145 (rule!4971 (h!23257 tokens!457)))) (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 tokens!457))))))) (and b!1626369 b_free!43917 (= (toChars!4431 (transformation!3145 (h!23256 rules!1846))) (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 tokens!457))))))) (and b!1627093 b_free!43929) (and b!1627118 b_free!43933 (= (toChars!4431 (transformation!3145 (h!23256 (t!149058 rules!1846)))) (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 tokens!457))))))) b_lambda!51245)))

(declare-fun b_lambda!51247 () Bool)

(assert (= b_lambda!51231 (or (and b!1626382 b_free!43913) (and b!1626369 b_free!43917 (= (toChars!4431 (transformation!3145 (h!23256 rules!1846))) (toChars!4431 (transformation!3145 (rule!4971 (h!23257 tokens!457)))))) (and b!1627093 b_free!43929 (= (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 tokens!457))))) (toChars!4431 (transformation!3145 (rule!4971 (h!23257 tokens!457)))))) (and b!1627118 b_free!43933 (= (toChars!4431 (transformation!3145 (h!23256 (t!149058 rules!1846)))) (toChars!4431 (transformation!3145 (rule!4971 (h!23257 tokens!457)))))) b_lambda!51247)))

(check-sat (not d!489727) (not bm!105260) (not d!489721) (not b!1626806) (not b!1626977) (not b!1626732) (not d!489605) (not b!1626631) (not b!1626799) (not b!1626827) b_and!115373 b_and!115363 (not d!489713) (not b!1626689) (not b_next!44621) (not d!489703) (not b!1626730) (not b!1626683) (not d!489673) (not b!1626707) (not b!1626625) (not b!1626726) (not d!489817) (not d!489811) (not bm!105263) (not b!1627121) (not b!1626749) (not b!1626957) (not b!1626727) (not b!1627092) (not d!489575) (not b!1626829) (not bm!105259) (not b!1626518) (not d!489657) (not d!489665) (not b!1626802) (not d!489681) (not d!489719) (not b!1627067) (not b!1626581) (not b!1626824) (not d!489815) (not d!489775) (not d!489577) (not b!1626747) (not b!1626721) (not b!1626687) (not b!1626535) (not b!1627107) (not b!1626623) (not b!1626582) (not b!1626591) (not b!1627091) (not b!1626917) (not d!489717) (not b!1626738) (not b!1626801) (not b!1627074) (not b!1627105) (not b!1626923) (not b!1626919) (not b!1626704) (not d!489691) (not d!489699) (not b!1626826) (not d!489683) (not d!489661) (not b!1626823) (not b_next!44619) (not d!489701) (not b!1627122) (not b_next!44631) (not b!1626787) (not bm!105269) (not d!489731) (not d!489795) (not b!1626966) (not b!1626978) (not b!1626725) (not b!1626731) (not d!489637) (not b!1626499) (not d!489645) (not b!1626714) (not b_next!44617) (not d!489641) (not b!1627079) (not b_lambda!51245) (not d!489809) (not d!489679) (not b!1626729) (not b!1626975) (not d!489789) (not b!1627120) (not b!1627117) (not d!489813) (not b!1626733) (not b!1626647) (not b!1626719) (not b!1626500) (not b!1626527) (not b!1626702) (not b!1626918) (not bm!105258) (not b!1626516) (not d!489733) (not b!1626686) (not b!1626716) (not b!1627090) (not b!1626717) (not d!489697) (not b!1626784) (not b!1626736) (not b!1626963) (not d!489787) (not b_next!44637) (not d!489765) (not b_next!44615) (not b!1626735) (not b_next!44635) (not d!489707) (not b!1626723) (not b!1627116) (not b!1627057) (not d!489735) (not b!1626920) (not d!489687) (not d!489725) b_and!115379 (not d!489535) (not b!1626821) (not b!1626924) (not d!489667) (not b!1626800) (not b!1626976) (not b!1626684) tp_is_empty!7285 b_and!115333 (not b!1626797) b_and!115377 (not d!489757) (not b!1626605) (not d!489755) (not tb!93335) (not b!1627058) (not d!489689) (not b!1626517) (not d!489589) (not b!1626526) (not b!1626685) (not d!489693) (not b!1626748) (not b!1626583) (not b!1626822) (not d!489659) (not b!1626624) (not b!1627106) (not b!1626783) (not d!489793) (not b!1626682) (not tb!93347) (not b!1626734) (not d!489587) (not b!1626584) (not b!1626630) (not b!1626921) (not b_lambda!51243) (not d!489711) (not b!1626720) (not b!1626789) (not d!489607) (not d!489705) (not d!489791) (not b!1626604) (not b!1626648) (not d!489639) b_and!115337 (not b!1626805) (not d!489685) (not d!489537) (not d!489611) (not b!1626662) (not b_lambda!51247) (not b!1626818) b_and!115375 (not b!1626790) (not d!489677) (not b!1626724) b_and!115361 (not b!1626694) (not b_next!44633) (not b!1626722) (not b!1626681) (not d!489715) (not b!1626782) (not d!489709))
(check-sat (not b_next!44619) (not b_next!44631) (not b_next!44617) (not b_next!44637) b_and!115379 b_and!115337 b_and!115375 (not b_next!44621) b_and!115373 b_and!115363 (not b_next!44615) (not b_next!44635) b_and!115333 b_and!115377 b_and!115361 (not b_next!44633))
(get-model)

(declare-fun d!489845 () Bool)

(declare-fun e!1043681 () Bool)

(assert (=> d!489845 e!1043681))

(declare-fun res!727698 () Bool)

(assert (=> d!489845 (=> (not res!727698) (not e!1043681))))

(declare-fun lt!588672 () List!17924)

(assert (=> d!489845 (= res!727698 (= (content!2476 lt!588672) ((_ map or) (content!2476 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588386))))) (content!2476 (_2!10119 (get!5150 lt!588386))))))))

(declare-fun e!1043680 () List!17924)

(assert (=> d!489845 (= lt!588672 e!1043680)))

(declare-fun c!264760 () Bool)

(assert (=> d!489845 (= c!264760 ((_ is Nil!17854) (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588386))))))))

(assert (=> d!489845 (= (++!4751 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588386)))) (_2!10119 (get!5150 lt!588386))) lt!588672)))

(declare-fun b!1627202 () Bool)

(assert (=> b!1627202 (= e!1043680 (_2!10119 (get!5150 lt!588386)))))

(declare-fun b!1627204 () Bool)

(declare-fun res!727699 () Bool)

(assert (=> b!1627204 (=> (not res!727699) (not e!1043681))))

(assert (=> b!1627204 (= res!727699 (= (size!14282 lt!588672) (+ (size!14282 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588386))))) (size!14282 (_2!10119 (get!5150 lt!588386))))))))

(declare-fun b!1627203 () Bool)

(assert (=> b!1627203 (= e!1043680 (Cons!17854 (h!23255 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588386))))) (++!4751 (t!149057 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588386))))) (_2!10119 (get!5150 lt!588386)))))))

(declare-fun b!1627205 () Bool)

(assert (=> b!1627205 (= e!1043681 (or (not (= (_2!10119 (get!5150 lt!588386)) Nil!17854)) (= lt!588672 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588386)))))))))

(assert (= (and d!489845 c!264760) b!1627202))

(assert (= (and d!489845 (not c!264760)) b!1627203))

(assert (= (and d!489845 res!727698) b!1627204))

(assert (= (and b!1627204 res!727699) b!1627205))

(declare-fun m!1956455 () Bool)

(assert (=> d!489845 m!1956455))

(assert (=> d!489845 m!1955789))

(declare-fun m!1956457 () Bool)

(assert (=> d!489845 m!1956457))

(declare-fun m!1956459 () Bool)

(assert (=> d!489845 m!1956459))

(declare-fun m!1956461 () Bool)

(assert (=> b!1627204 m!1956461))

(assert (=> b!1627204 m!1955789))

(declare-fun m!1956463 () Bool)

(assert (=> b!1627204 m!1956463))

(assert (=> b!1627204 m!1955785))

(declare-fun m!1956465 () Bool)

(assert (=> b!1627203 m!1956465))

(assert (=> b!1626731 d!489845))

(declare-fun d!489847 () Bool)

(assert (=> d!489847 (= (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588386)))) (list!7016 (c!264623 (charsOf!1794 (_1!10119 (get!5150 lt!588386))))))))

(declare-fun bs!394864 () Bool)

(assert (= bs!394864 d!489847))

(declare-fun m!1956467 () Bool)

(assert (=> bs!394864 m!1956467))

(assert (=> b!1626731 d!489847))

(declare-fun d!489849 () Bool)

(declare-fun lt!588673 () BalanceConc!11820)

(assert (=> d!489849 (= (list!7011 lt!588673) (originalCharacters!3959 (_1!10119 (get!5150 lt!588386))))))

(assert (=> d!489849 (= lt!588673 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588386))))) (value!99305 (_1!10119 (get!5150 lt!588386)))))))

(assert (=> d!489849 (= (charsOf!1794 (_1!10119 (get!5150 lt!588386))) lt!588673)))

(declare-fun b_lambda!51249 () Bool)

(assert (=> (not b_lambda!51249) (not d!489849)))

(declare-fun t!149111 () Bool)

(declare-fun tb!93367 () Bool)

(assert (=> (and b!1626382 (= (toChars!4431 (transformation!3145 (rule!4971 (h!23257 tokens!457)))) (toChars!4431 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588386)))))) t!149111) tb!93367))

(declare-fun b!1627206 () Bool)

(declare-fun e!1043682 () Bool)

(declare-fun tp!473033 () Bool)

(assert (=> b!1627206 (= e!1043682 (and (inv!23232 (c!264623 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588386))))) (value!99305 (_1!10119 (get!5150 lt!588386)))))) tp!473033))))

(declare-fun result!112626 () Bool)

(assert (=> tb!93367 (= result!112626 (and (inv!23233 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588386))))) (value!99305 (_1!10119 (get!5150 lt!588386))))) e!1043682))))

(assert (= tb!93367 b!1627206))

(declare-fun m!1956469 () Bool)

(assert (=> b!1627206 m!1956469))

(declare-fun m!1956471 () Bool)

(assert (=> tb!93367 m!1956471))

(assert (=> d!489849 t!149111))

(declare-fun b_and!115381 () Bool)

(assert (= b_and!115361 (and (=> t!149111 result!112626) b_and!115381)))

(declare-fun tb!93369 () Bool)

(declare-fun t!149113 () Bool)

(assert (=> (and b!1626369 (= (toChars!4431 (transformation!3145 (h!23256 rules!1846))) (toChars!4431 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588386)))))) t!149113) tb!93369))

(declare-fun result!112628 () Bool)

(assert (= result!112628 result!112626))

(assert (=> d!489849 t!149113))

(declare-fun b_and!115383 () Bool)

(assert (= b_and!115363 (and (=> t!149113 result!112628) b_and!115383)))

(declare-fun tb!93371 () Bool)

(declare-fun t!149115 () Bool)

(assert (=> (and b!1627093 (= (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 tokens!457))))) (toChars!4431 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588386)))))) t!149115) tb!93371))

(declare-fun result!112630 () Bool)

(assert (= result!112630 result!112626))

(assert (=> d!489849 t!149115))

(declare-fun b_and!115385 () Bool)

(assert (= b_and!115375 (and (=> t!149115 result!112630) b_and!115385)))

(declare-fun tb!93373 () Bool)

(declare-fun t!149117 () Bool)

(assert (=> (and b!1627118 (= (toChars!4431 (transformation!3145 (h!23256 (t!149058 rules!1846)))) (toChars!4431 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588386)))))) t!149117) tb!93373))

(declare-fun result!112632 () Bool)

(assert (= result!112632 result!112626))

(assert (=> d!489849 t!149117))

(declare-fun b_and!115387 () Bool)

(assert (= b_and!115379 (and (=> t!149117 result!112632) b_and!115387)))

(declare-fun m!1956473 () Bool)

(assert (=> d!489849 m!1956473))

(declare-fun m!1956475 () Bool)

(assert (=> d!489849 m!1956475))

(assert (=> b!1626731 d!489849))

(declare-fun d!489851 () Bool)

(assert (=> d!489851 (= (get!5150 lt!588386) (v!24358 lt!588386))))

(assert (=> b!1626731 d!489851))

(declare-fun d!489853 () Bool)

(assert (=> d!489853 (= (head!3449 (list!7011 lt!587989)) (h!23255 (list!7011 lt!587989)))))

(assert (=> d!489757 d!489853))

(assert (=> d!489757 d!489705))

(declare-fun d!489855 () Bool)

(declare-fun lt!588679 () C!9120)

(assert (=> d!489855 (= lt!588679 (head!3449 (list!7016 (c!264623 lt!587989))))))

(declare-fun e!1043703 () C!9120)

(assert (=> d!489855 (= lt!588679 e!1043703)))

(declare-fun c!264775 () Bool)

(assert (=> d!489855 (= c!264775 ((_ is Leaf!8731) (c!264623 lt!587989)))))

(assert (=> d!489855 (isBalanced!1794 (c!264623 lt!587989))))

(assert (=> d!489855 (= (head!3453 (c!264623 lt!587989)) lt!588679)))

(declare-fun b!1627241 () Bool)

(declare-fun apply!4579 (IArray!11881 Int) C!9120)

(assert (=> b!1627241 (= e!1043703 (apply!4579 (xs!8770 (c!264623 lt!587989)) 0))))

(declare-fun b!1627242 () Bool)

(assert (=> b!1627242 (= e!1043703 (head!3453 (left!14348 (c!264623 lt!587989))))))

(assert (= (and d!489855 c!264775) b!1627241))

(assert (= (and d!489855 (not c!264775)) b!1627242))

(assert (=> d!489855 m!1955883))

(assert (=> d!489855 m!1955883))

(declare-fun m!1956497 () Bool)

(assert (=> d!489855 m!1956497))

(declare-fun m!1956499 () Bool)

(assert (=> d!489855 m!1956499))

(declare-fun m!1956501 () Bool)

(assert (=> b!1627241 m!1956501))

(declare-fun m!1956503 () Bool)

(assert (=> b!1627242 m!1956503))

(assert (=> d!489757 d!489855))

(declare-fun d!489859 () Bool)

(declare-fun lt!588684 () Bool)

(assert (=> d!489859 (= lt!588684 (isEmpty!10881 (list!7011 lt!587989)))))

(declare-fun isEmpty!10896 (Conc!5938) Bool)

(assert (=> d!489859 (= lt!588684 (isEmpty!10896 (c!264623 lt!587989)))))

(assert (=> d!489859 (= (isEmpty!10887 lt!587989) lt!588684)))

(declare-fun bs!394866 () Bool)

(assert (= bs!394866 d!489859))

(assert (=> bs!394866 m!1954949))

(assert (=> bs!394866 m!1954949))

(declare-fun m!1956505 () Bool)

(assert (=> bs!394866 m!1956505))

(declare-fun m!1956507 () Bool)

(assert (=> bs!394866 m!1956507))

(assert (=> d!489757 d!489859))

(declare-fun d!489861 () Bool)

(assert (=> d!489861 (= (isEmpty!10881 lt!587996) ((_ is Nil!17854) lt!587996))))

(assert (=> bm!105263 d!489861))

(assert (=> b!1627057 d!489611))

(declare-fun d!489863 () Bool)

(assert (=> d!489863 (= (list!7011 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (h!23257 tokens!457)))) (value!99305 (h!23257 tokens!457)))) (list!7016 (c!264623 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (h!23257 tokens!457)))) (value!99305 (h!23257 tokens!457))))))))

(declare-fun bs!394867 () Bool)

(assert (= bs!394867 d!489863))

(declare-fun m!1956509 () Bool)

(assert (=> bs!394867 m!1956509))

(assert (=> b!1626526 d!489863))

(declare-fun d!489865 () Bool)

(declare-fun lt!588688 () Int)

(assert (=> d!489865 (>= lt!588688 0)))

(declare-fun e!1043710 () Int)

(assert (=> d!489865 (= lt!588688 e!1043710)))

(declare-fun c!264782 () Bool)

(assert (=> d!489865 (= c!264782 ((_ is Nil!17854) lt!588447))))

(assert (=> d!489865 (= (size!14282 lt!588447) lt!588688)))

(declare-fun b!1627255 () Bool)

(assert (=> b!1627255 (= e!1043710 0)))

(declare-fun b!1627256 () Bool)

(assert (=> b!1627256 (= e!1043710 (+ 1 (size!14282 (t!149057 lt!588447))))))

(assert (= (and d!489865 c!264782) b!1627255))

(assert (= (and d!489865 (not c!264782)) b!1627256))

(declare-fun m!1956533 () Bool)

(assert (=> b!1627256 m!1956533))

(assert (=> b!1626806 d!489865))

(declare-fun d!489875 () Bool)

(declare-fun lt!588689 () Int)

(assert (=> d!489875 (>= lt!588689 0)))

(declare-fun e!1043711 () Int)

(assert (=> d!489875 (= lt!588689 e!1043711)))

(declare-fun c!264783 () Bool)

(assert (=> d!489875 (= c!264783 ((_ is Nil!17854) lt!587996))))

(assert (=> d!489875 (= (size!14282 lt!587996) lt!588689)))

(declare-fun b!1627257 () Bool)

(assert (=> b!1627257 (= e!1043711 0)))

(declare-fun b!1627258 () Bool)

(assert (=> b!1627258 (= e!1043711 (+ 1 (size!14282 (t!149057 lt!587996))))))

(assert (= (and d!489875 c!264783) b!1627257))

(assert (= (and d!489875 (not c!264783)) b!1627258))

(declare-fun m!1956535 () Bool)

(assert (=> b!1627258 m!1956535))

(assert (=> b!1626806 d!489875))

(declare-fun d!489877 () Bool)

(declare-fun lt!588690 () Int)

(assert (=> d!489877 (>= lt!588690 0)))

(declare-fun e!1043712 () Int)

(assert (=> d!489877 (= lt!588690 e!1043712)))

(declare-fun c!264784 () Bool)

(assert (=> d!489877 (= c!264784 ((_ is Nil!17854) lt!587994))))

(assert (=> d!489877 (= (size!14282 lt!587994) lt!588690)))

(declare-fun b!1627259 () Bool)

(assert (=> b!1627259 (= e!1043712 0)))

(declare-fun b!1627260 () Bool)

(assert (=> b!1627260 (= e!1043712 (+ 1 (size!14282 (t!149057 lt!587994))))))

(assert (= (and d!489877 c!264784) b!1627259))

(assert (= (and d!489877 (not c!264784)) b!1627260))

(declare-fun m!1956537 () Bool)

(assert (=> b!1627260 m!1956537))

(assert (=> b!1626806 d!489877))

(declare-fun d!489879 () Bool)

(assert (=> d!489879 (= (isDefined!2683 lt!588346) (not (isEmpty!10890 lt!588346)))))

(declare-fun bs!394870 () Bool)

(assert (= bs!394870 d!489879))

(assert (=> bs!394870 m!1955647))

(assert (=> b!1626681 d!489879))

(declare-fun d!489881 () Bool)

(assert (=> d!489881 (= (list!7011 lt!588450) (list!7016 (c!264623 lt!588450)))))

(declare-fun bs!394871 () Bool)

(assert (= bs!394871 d!489881))

(declare-fun m!1956539 () Bool)

(assert (=> bs!394871 m!1956539))

(assert (=> d!489719 d!489881))

(declare-fun d!489883 () Bool)

(assert (=> d!489883 (= (get!5154 lt!588477) (v!24357 lt!588477))))

(assert (=> b!1626918 d!489883))

(declare-fun d!489885 () Bool)

(assert (=> d!489885 (= (list!7011 (_2!10118 (get!5154 lt!588477))) (list!7016 (c!264623 (_2!10118 (get!5154 lt!588477)))))))

(declare-fun bs!394872 () Bool)

(assert (= bs!394872 d!489885))

(declare-fun m!1956541 () Bool)

(assert (=> bs!394872 m!1956541))

(assert (=> b!1626918 d!489885))

(declare-fun d!489887 () Bool)

(assert (=> d!489887 (= (get!5150 (maxPrefix!1338 thiss!17113 rules!1846 (list!7011 (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457)))))) (v!24358 (maxPrefix!1338 thiss!17113 rules!1846 (list!7011 (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457)))))))))

(assert (=> b!1626918 d!489887))

(declare-fun d!489889 () Bool)

(assert (=> d!489889 (= (list!7011 (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457)))) (list!7016 (c!264623 (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457))))))))

(declare-fun bs!394873 () Bool)

(assert (= bs!394873 d!489889))

(declare-fun m!1956543 () Bool)

(assert (=> bs!394873 m!1956543))

(assert (=> b!1626918 d!489889))

(declare-fun b!1627261 () Bool)

(declare-fun e!1043714 () Bool)

(declare-fun e!1043715 () Bool)

(assert (=> b!1627261 (= e!1043714 e!1043715)))

(declare-fun res!727708 () Bool)

(assert (=> b!1627261 (=> (not res!727708) (not e!1043715))))

(declare-fun lt!588697 () Option!3316)

(assert (=> b!1627261 (= res!727708 (isDefined!2683 lt!588697))))

(declare-fun b!1627262 () Bool)

(declare-fun res!727710 () Bool)

(assert (=> b!1627262 (=> (not res!727710) (not e!1043715))))

(assert (=> b!1627262 (= res!727710 (= (++!4751 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588697)))) (_2!10119 (get!5150 lt!588697))) (list!7011 (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457))))))))

(declare-fun b!1627263 () Bool)

(declare-fun e!1043713 () Option!3316)

(declare-fun lt!588694 () Option!3316)

(declare-fun lt!588693 () Option!3316)

(assert (=> b!1627263 (= e!1043713 (ite (and ((_ is None!3315) lt!588694) ((_ is None!3315) lt!588693)) None!3315 (ite ((_ is None!3315) lt!588693) lt!588694 (ite ((_ is None!3315) lt!588694) lt!588693 (ite (>= (size!14278 (_1!10119 (v!24358 lt!588694))) (size!14278 (_1!10119 (v!24358 lt!588693)))) lt!588694 lt!588693)))))))

(declare-fun call!105277 () Option!3316)

(assert (=> b!1627263 (= lt!588694 call!105277)))

(assert (=> b!1627263 (= lt!588693 (maxPrefix!1338 thiss!17113 (t!149058 rules!1846) (list!7011 (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457))))))))

(declare-fun d!489891 () Bool)

(assert (=> d!489891 e!1043714))

(declare-fun res!727709 () Bool)

(assert (=> d!489891 (=> res!727709 e!1043714)))

(assert (=> d!489891 (= res!727709 (isEmpty!10890 lt!588697))))

(assert (=> d!489891 (= lt!588697 e!1043713)))

(declare-fun c!264785 () Bool)

(assert (=> d!489891 (= c!264785 (and ((_ is Cons!17855) rules!1846) ((_ is Nil!17855) (t!149058 rules!1846))))))

(declare-fun lt!588695 () Unit!28923)

(declare-fun lt!588696 () Unit!28923)

(assert (=> d!489891 (= lt!588695 lt!588696)))

(assert (=> d!489891 (isPrefix!1405 (list!7011 (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457)))) (list!7011 (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457)))))))

(assert (=> d!489891 (= lt!588696 (lemmaIsPrefixRefl!962 (list!7011 (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457)))) (list!7011 (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457))))))))

(assert (=> d!489891 (rulesValidInductive!974 thiss!17113 rules!1846)))

(assert (=> d!489891 (= (maxPrefix!1338 thiss!17113 rules!1846 (list!7011 (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457))))) lt!588697)))

(declare-fun b!1627264 () Bool)

(declare-fun res!727711 () Bool)

(assert (=> b!1627264 (=> (not res!727711) (not e!1043715))))

(assert (=> b!1627264 (= res!727711 (matchR!1972 (regex!3145 (rule!4971 (_1!10119 (get!5150 lt!588697)))) (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588697))))))))

(declare-fun b!1627265 () Bool)

(declare-fun res!727706 () Bool)

(assert (=> b!1627265 (=> (not res!727706) (not e!1043715))))

(assert (=> b!1627265 (= res!727706 (= (value!99305 (_1!10119 (get!5150 lt!588697))) (apply!4575 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588697)))) (seqFromList!2040 (originalCharacters!3959 (_1!10119 (get!5150 lt!588697)))))))))

(declare-fun b!1627266 () Bool)

(declare-fun res!727707 () Bool)

(assert (=> b!1627266 (=> (not res!727707) (not e!1043715))))

(assert (=> b!1627266 (= res!727707 (= (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588697)))) (originalCharacters!3959 (_1!10119 (get!5150 lt!588697)))))))

(declare-fun bm!105272 () Bool)

(assert (=> bm!105272 (= call!105277 (maxPrefixOneRule!777 thiss!17113 (h!23256 rules!1846) (list!7011 (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457))))))))

(declare-fun b!1627267 () Bool)

(assert (=> b!1627267 (= e!1043715 (contains!3120 rules!1846 (rule!4971 (_1!10119 (get!5150 lt!588697)))))))

(declare-fun b!1627268 () Bool)

(assert (=> b!1627268 (= e!1043713 call!105277)))

(declare-fun b!1627269 () Bool)

(declare-fun res!727712 () Bool)

(assert (=> b!1627269 (=> (not res!727712) (not e!1043715))))

(assert (=> b!1627269 (= res!727712 (< (size!14282 (_2!10119 (get!5150 lt!588697))) (size!14282 (list!7011 (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457)))))))))

(assert (= (and d!489891 c!264785) b!1627268))

(assert (= (and d!489891 (not c!264785)) b!1627263))

(assert (= (or b!1627268 b!1627263) bm!105272))

(assert (= (and d!489891 (not res!727709)) b!1627261))

(assert (= (and b!1627261 res!727708) b!1627266))

(assert (= (and b!1627266 res!727707) b!1627269))

(assert (= (and b!1627269 res!727712) b!1627262))

(assert (= (and b!1627262 res!727710) b!1627265))

(assert (= (and b!1627265 res!727706) b!1627264))

(assert (= (and b!1627264 res!727711) b!1627267))

(assert (=> b!1627263 m!1956003))

(declare-fun m!1956555 () Bool)

(assert (=> b!1627263 m!1956555))

(declare-fun m!1956557 () Bool)

(assert (=> b!1627269 m!1956557))

(declare-fun m!1956559 () Bool)

(assert (=> b!1627269 m!1956559))

(assert (=> b!1627269 m!1956003))

(declare-fun m!1956561 () Bool)

(assert (=> b!1627269 m!1956561))

(assert (=> b!1627264 m!1956557))

(declare-fun m!1956563 () Bool)

(assert (=> b!1627264 m!1956563))

(assert (=> b!1627264 m!1956563))

(declare-fun m!1956565 () Bool)

(assert (=> b!1627264 m!1956565))

(assert (=> b!1627264 m!1956565))

(declare-fun m!1956567 () Bool)

(assert (=> b!1627264 m!1956567))

(assert (=> b!1627267 m!1956557))

(declare-fun m!1956569 () Bool)

(assert (=> b!1627267 m!1956569))

(declare-fun m!1956571 () Bool)

(assert (=> d!489891 m!1956571))

(assert (=> d!489891 m!1956003))

(assert (=> d!489891 m!1956003))

(declare-fun m!1956573 () Bool)

(assert (=> d!489891 m!1956573))

(assert (=> d!489891 m!1956003))

(assert (=> d!489891 m!1956003))

(declare-fun m!1956575 () Bool)

(assert (=> d!489891 m!1956575))

(assert (=> d!489891 m!1955653))

(assert (=> b!1627265 m!1956557))

(declare-fun m!1956577 () Bool)

(assert (=> b!1627265 m!1956577))

(assert (=> b!1627265 m!1956577))

(declare-fun m!1956579 () Bool)

(assert (=> b!1627265 m!1956579))

(assert (=> b!1627266 m!1956557))

(assert (=> b!1627266 m!1956563))

(assert (=> b!1627266 m!1956563))

(assert (=> b!1627266 m!1956565))

(assert (=> bm!105272 m!1956003))

(declare-fun m!1956585 () Bool)

(assert (=> bm!105272 m!1956585))

(declare-fun m!1956587 () Bool)

(assert (=> b!1627261 m!1956587))

(assert (=> b!1627262 m!1956557))

(assert (=> b!1627262 m!1956563))

(assert (=> b!1627262 m!1956563))

(assert (=> b!1627262 m!1956565))

(assert (=> b!1627262 m!1956565))

(declare-fun m!1956589 () Bool)

(assert (=> b!1627262 m!1956589))

(assert (=> b!1626918 d!489891))

(declare-fun d!489901 () Bool)

(assert (=> d!489901 (= (get!5153 (getRuleFromTag!286 thiss!17113 rules!1846 (tag!3423 (rule!4971 lt!588424)))) (v!24368 (getRuleFromTag!286 thiss!17113 rules!1846 (tag!3423 (rule!4971 lt!588424)))))))

(assert (=> b!1626747 d!489901))

(declare-fun d!489903 () Bool)

(declare-fun lt!588703 () BalanceConc!11820)

(assert (=> d!489903 (= (list!7011 lt!588703) (originalCharacters!3959 lt!588424))))

(assert (=> d!489903 (= lt!588703 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 lt!588424))) (value!99305 lt!588424)))))

(assert (=> d!489903 (= (charsOf!1794 lt!588424) lt!588703)))

(declare-fun b_lambda!51253 () Bool)

(assert (=> (not b_lambda!51253) (not d!489903)))

(declare-fun t!149120 () Bool)

(declare-fun tb!93375 () Bool)

(assert (=> (and b!1626382 (= (toChars!4431 (transformation!3145 (rule!4971 (h!23257 tokens!457)))) (toChars!4431 (transformation!3145 (rule!4971 lt!588424)))) t!149120) tb!93375))

(declare-fun b!1627272 () Bool)

(declare-fun e!1043718 () Bool)

(declare-fun tp!473034 () Bool)

(assert (=> b!1627272 (= e!1043718 (and (inv!23232 (c!264623 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 lt!588424))) (value!99305 lt!588424)))) tp!473034))))

(declare-fun result!112634 () Bool)

(assert (=> tb!93375 (= result!112634 (and (inv!23233 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 lt!588424))) (value!99305 lt!588424))) e!1043718))))

(assert (= tb!93375 b!1627272))

(declare-fun m!1956591 () Bool)

(assert (=> b!1627272 m!1956591))

(declare-fun m!1956593 () Bool)

(assert (=> tb!93375 m!1956593))

(assert (=> d!489903 t!149120))

(declare-fun b_and!115389 () Bool)

(assert (= b_and!115381 (and (=> t!149120 result!112634) b_and!115389)))

(declare-fun t!149122 () Bool)

(declare-fun tb!93377 () Bool)

(assert (=> (and b!1626369 (= (toChars!4431 (transformation!3145 (h!23256 rules!1846))) (toChars!4431 (transformation!3145 (rule!4971 lt!588424)))) t!149122) tb!93377))

(declare-fun result!112636 () Bool)

(assert (= result!112636 result!112634))

(assert (=> d!489903 t!149122))

(declare-fun b_and!115391 () Bool)

(assert (= b_and!115383 (and (=> t!149122 result!112636) b_and!115391)))

(declare-fun tb!93379 () Bool)

(declare-fun t!149124 () Bool)

(assert (=> (and b!1627093 (= (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 tokens!457))))) (toChars!4431 (transformation!3145 (rule!4971 lt!588424)))) t!149124) tb!93379))

(declare-fun result!112638 () Bool)

(assert (= result!112638 result!112634))

(assert (=> d!489903 t!149124))

(declare-fun b_and!115393 () Bool)

(assert (= b_and!115385 (and (=> t!149124 result!112638) b_and!115393)))

(declare-fun tb!93381 () Bool)

(declare-fun t!149126 () Bool)

(assert (=> (and b!1627118 (= (toChars!4431 (transformation!3145 (h!23256 (t!149058 rules!1846)))) (toChars!4431 (transformation!3145 (rule!4971 lt!588424)))) t!149126) tb!93381))

(declare-fun result!112640 () Bool)

(assert (= result!112640 result!112634))

(assert (=> d!489903 t!149126))

(declare-fun b_and!115395 () Bool)

(assert (= b_and!115387 (and (=> t!149126 result!112640) b_and!115395)))

(declare-fun m!1956595 () Bool)

(assert (=> d!489903 m!1956595))

(declare-fun m!1956597 () Bool)

(assert (=> d!489903 m!1956597))

(assert (=> b!1626747 d!489903))

(declare-fun d!489905 () Bool)

(assert (=> d!489905 (= (list!7011 (charsOf!1794 lt!588424)) (list!7016 (c!264623 (charsOf!1794 lt!588424))))))

(declare-fun bs!394876 () Bool)

(assert (= bs!394876 d!489905))

(declare-fun m!1956599 () Bool)

(assert (=> bs!394876 m!1956599))

(assert (=> b!1626747 d!489905))

(declare-fun b!1627285 () Bool)

(declare-fun e!1043729 () Option!3318)

(declare-fun e!1043728 () Option!3318)

(assert (=> b!1627285 (= e!1043729 e!1043728)))

(declare-fun c!264791 () Bool)

(assert (=> b!1627285 (= c!264791 (and ((_ is Cons!17855) rules!1846) (not (= (tag!3423 (h!23256 rules!1846)) (tag!3423 (rule!4971 lt!588424))))))))

(declare-fun b!1627286 () Bool)

(assert (=> b!1627286 (= e!1043729 (Some!3317 (h!23256 rules!1846)))))

(declare-fun b!1627287 () Bool)

(declare-fun e!1043730 () Bool)

(declare-fun lt!588710 () Option!3318)

(assert (=> b!1627287 (= e!1043730 (= (tag!3423 (get!5153 lt!588710)) (tag!3423 (rule!4971 lt!588424))))))

(declare-fun d!489907 () Bool)

(declare-fun e!1043727 () Bool)

(assert (=> d!489907 e!1043727))

(declare-fun res!727719 () Bool)

(assert (=> d!489907 (=> res!727719 e!1043727)))

(declare-fun isEmpty!10897 (Option!3318) Bool)

(assert (=> d!489907 (= res!727719 (isEmpty!10897 lt!588710))))

(assert (=> d!489907 (= lt!588710 e!1043729)))

(declare-fun c!264790 () Bool)

(assert (=> d!489907 (= c!264790 (and ((_ is Cons!17855) rules!1846) (= (tag!3423 (h!23256 rules!1846)) (tag!3423 (rule!4971 lt!588424)))))))

(assert (=> d!489907 (rulesInvariant!2443 thiss!17113 rules!1846)))

(assert (=> d!489907 (= (getRuleFromTag!286 thiss!17113 rules!1846 (tag!3423 (rule!4971 lt!588424))) lt!588710)))

(declare-fun b!1627288 () Bool)

(declare-fun lt!588712 () Unit!28923)

(declare-fun lt!588711 () Unit!28923)

(assert (=> b!1627288 (= lt!588712 lt!588711)))

(assert (=> b!1627288 (rulesInvariant!2443 thiss!17113 (t!149058 rules!1846))))

(declare-fun lemmaInvariantOnRulesThenOnTail!101 (LexerInterface!2774 Rule!6090 List!17925) Unit!28923)

(assert (=> b!1627288 (= lt!588711 (lemmaInvariantOnRulesThenOnTail!101 thiss!17113 (h!23256 rules!1846) (t!149058 rules!1846)))))

(assert (=> b!1627288 (= e!1043728 (getRuleFromTag!286 thiss!17113 (t!149058 rules!1846) (tag!3423 (rule!4971 lt!588424))))))

(declare-fun b!1627289 () Bool)

(assert (=> b!1627289 (= e!1043727 e!1043730)))

(declare-fun res!727720 () Bool)

(assert (=> b!1627289 (=> (not res!727720) (not e!1043730))))

(assert (=> b!1627289 (= res!727720 (contains!3120 rules!1846 (get!5153 lt!588710)))))

(declare-fun b!1627290 () Bool)

(assert (=> b!1627290 (= e!1043728 None!3317)))

(assert (= (and d!489907 c!264790) b!1627286))

(assert (= (and d!489907 (not c!264790)) b!1627285))

(assert (= (and b!1627285 c!264791) b!1627288))

(assert (= (and b!1627285 (not c!264791)) b!1627290))

(assert (= (and d!489907 (not res!727719)) b!1627289))

(assert (= (and b!1627289 res!727720) b!1627287))

(declare-fun m!1956601 () Bool)

(assert (=> b!1627287 m!1956601))

(declare-fun m!1956603 () Bool)

(assert (=> d!489907 m!1956603))

(assert (=> d!489907 m!1954991))

(declare-fun m!1956605 () Bool)

(assert (=> b!1627288 m!1956605))

(declare-fun m!1956607 () Bool)

(assert (=> b!1627288 m!1956607))

(declare-fun m!1956609 () Bool)

(assert (=> b!1627288 m!1956609))

(assert (=> b!1627289 m!1956601))

(assert (=> b!1627289 m!1956601))

(declare-fun m!1956611 () Bool)

(assert (=> b!1627289 m!1956611))

(assert (=> b!1626747 d!489907))

(declare-fun b!1627291 () Bool)

(declare-fun e!1043733 () Bool)

(declare-fun e!1043731 () Bool)

(assert (=> b!1627291 (= e!1043733 e!1043731)))

(declare-fun c!264794 () Bool)

(assert (=> b!1627291 (= c!264794 ((_ is EmptyLang!4473) (regex!3145 (get!5153 (getRuleFromTag!286 thiss!17113 rules!1846 (tag!3423 (rule!4971 lt!588424)))))))))

(declare-fun b!1627292 () Bool)

(declare-fun lt!588713 () Bool)

(assert (=> b!1627292 (= e!1043731 (not lt!588713))))

(declare-fun b!1627293 () Bool)

(declare-fun res!727725 () Bool)

(declare-fun e!1043735 () Bool)

(assert (=> b!1627293 (=> (not res!727725) (not e!1043735))))

(declare-fun call!105278 () Bool)

(assert (=> b!1627293 (= res!727725 (not call!105278))))

(declare-fun bm!105273 () Bool)

(assert (=> bm!105273 (= call!105278 (isEmpty!10881 (list!7011 (charsOf!1794 lt!588424))))))

(declare-fun b!1627294 () Bool)

(declare-fun res!727726 () Bool)

(declare-fun e!1043734 () Bool)

(assert (=> b!1627294 (=> res!727726 e!1043734)))

(assert (=> b!1627294 (= res!727726 (not (isEmpty!10881 (tail!2367 (list!7011 (charsOf!1794 lt!588424))))))))

(declare-fun b!1627295 () Bool)

(declare-fun e!1043732 () Bool)

(assert (=> b!1627295 (= e!1043732 (matchR!1972 (derivativeStep!1084 (regex!3145 (get!5153 (getRuleFromTag!286 thiss!17113 rules!1846 (tag!3423 (rule!4971 lt!588424))))) (head!3449 (list!7011 (charsOf!1794 lt!588424)))) (tail!2367 (list!7011 (charsOf!1794 lt!588424)))))))

(declare-fun b!1627296 () Bool)

(declare-fun res!727723 () Bool)

(assert (=> b!1627296 (=> (not res!727723) (not e!1043735))))

(assert (=> b!1627296 (= res!727723 (isEmpty!10881 (tail!2367 (list!7011 (charsOf!1794 lt!588424)))))))

(declare-fun b!1627297 () Bool)

(declare-fun res!727722 () Bool)

(declare-fun e!1043737 () Bool)

(assert (=> b!1627297 (=> res!727722 e!1043737)))

(assert (=> b!1627297 (= res!727722 e!1043735)))

(declare-fun res!727721 () Bool)

(assert (=> b!1627297 (=> (not res!727721) (not e!1043735))))

(assert (=> b!1627297 (= res!727721 lt!588713)))

(declare-fun b!1627298 () Bool)

(assert (=> b!1627298 (= e!1043733 (= lt!588713 call!105278))))

(declare-fun b!1627299 () Bool)

(assert (=> b!1627299 (= e!1043735 (= (head!3449 (list!7011 (charsOf!1794 lt!588424))) (c!264624 (regex!3145 (get!5153 (getRuleFromTag!286 thiss!17113 rules!1846 (tag!3423 (rule!4971 lt!588424))))))))))

(declare-fun b!1627301 () Bool)

(assert (=> b!1627301 (= e!1043734 (not (= (head!3449 (list!7011 (charsOf!1794 lt!588424))) (c!264624 (regex!3145 (get!5153 (getRuleFromTag!286 thiss!17113 rules!1846 (tag!3423 (rule!4971 lt!588424)))))))))))

(declare-fun b!1627302 () Bool)

(assert (=> b!1627302 (= e!1043732 (nullable!1319 (regex!3145 (get!5153 (getRuleFromTag!286 thiss!17113 rules!1846 (tag!3423 (rule!4971 lt!588424)))))))))

(declare-fun b!1627303 () Bool)

(declare-fun e!1043736 () Bool)

(assert (=> b!1627303 (= e!1043737 e!1043736)))

(declare-fun res!727727 () Bool)

(assert (=> b!1627303 (=> (not res!727727) (not e!1043736))))

(assert (=> b!1627303 (= res!727727 (not lt!588713))))

(declare-fun b!1627304 () Bool)

(declare-fun res!727724 () Bool)

(assert (=> b!1627304 (=> res!727724 e!1043737)))

(assert (=> b!1627304 (= res!727724 (not ((_ is ElementMatch!4473) (regex!3145 (get!5153 (getRuleFromTag!286 thiss!17113 rules!1846 (tag!3423 (rule!4971 lt!588424))))))))))

(assert (=> b!1627304 (= e!1043731 e!1043737)))

(declare-fun d!489909 () Bool)

(assert (=> d!489909 e!1043733))

(declare-fun c!264792 () Bool)

(assert (=> d!489909 (= c!264792 ((_ is EmptyExpr!4473) (regex!3145 (get!5153 (getRuleFromTag!286 thiss!17113 rules!1846 (tag!3423 (rule!4971 lt!588424)))))))))

(assert (=> d!489909 (= lt!588713 e!1043732)))

(declare-fun c!264793 () Bool)

(assert (=> d!489909 (= c!264793 (isEmpty!10881 (list!7011 (charsOf!1794 lt!588424))))))

(assert (=> d!489909 (validRegex!1780 (regex!3145 (get!5153 (getRuleFromTag!286 thiss!17113 rules!1846 (tag!3423 (rule!4971 lt!588424))))))))

(assert (=> d!489909 (= (matchR!1972 (regex!3145 (get!5153 (getRuleFromTag!286 thiss!17113 rules!1846 (tag!3423 (rule!4971 lt!588424))))) (list!7011 (charsOf!1794 lt!588424))) lt!588713)))

(declare-fun b!1627300 () Bool)

(assert (=> b!1627300 (= e!1043736 e!1043734)))

(declare-fun res!727728 () Bool)

(assert (=> b!1627300 (=> res!727728 e!1043734)))

(assert (=> b!1627300 (= res!727728 call!105278)))

(assert (= (and d!489909 c!264793) b!1627302))

(assert (= (and d!489909 (not c!264793)) b!1627295))

(assert (= (and d!489909 c!264792) b!1627298))

(assert (= (and d!489909 (not c!264792)) b!1627291))

(assert (= (and b!1627291 c!264794) b!1627292))

(assert (= (and b!1627291 (not c!264794)) b!1627304))

(assert (= (and b!1627304 (not res!727724)) b!1627297))

(assert (= (and b!1627297 res!727721) b!1627293))

(assert (= (and b!1627293 res!727725) b!1627296))

(assert (= (and b!1627296 res!727723) b!1627299))

(assert (= (and b!1627297 (not res!727722)) b!1627303))

(assert (= (and b!1627303 res!727727) b!1627300))

(assert (= (and b!1627300 (not res!727728)) b!1627294))

(assert (= (and b!1627294 (not res!727726)) b!1627301))

(assert (= (or b!1627298 b!1627293 b!1627300) bm!105273))

(declare-fun m!1956613 () Bool)

(assert (=> b!1627302 m!1956613))

(assert (=> b!1627301 m!1955813))

(declare-fun m!1956615 () Bool)

(assert (=> b!1627301 m!1956615))

(assert (=> b!1627294 m!1955813))

(declare-fun m!1956617 () Bool)

(assert (=> b!1627294 m!1956617))

(assert (=> b!1627294 m!1956617))

(declare-fun m!1956619 () Bool)

(assert (=> b!1627294 m!1956619))

(assert (=> b!1627296 m!1955813))

(assert (=> b!1627296 m!1956617))

(assert (=> b!1627296 m!1956617))

(assert (=> b!1627296 m!1956619))

(assert (=> b!1627295 m!1955813))

(assert (=> b!1627295 m!1956615))

(assert (=> b!1627295 m!1956615))

(declare-fun m!1956621 () Bool)

(assert (=> b!1627295 m!1956621))

(assert (=> b!1627295 m!1955813))

(assert (=> b!1627295 m!1956617))

(assert (=> b!1627295 m!1956621))

(assert (=> b!1627295 m!1956617))

(declare-fun m!1956623 () Bool)

(assert (=> b!1627295 m!1956623))

(assert (=> bm!105273 m!1955813))

(declare-fun m!1956625 () Bool)

(assert (=> bm!105273 m!1956625))

(assert (=> b!1627299 m!1955813))

(assert (=> b!1627299 m!1956615))

(assert (=> d!489909 m!1955813))

(assert (=> d!489909 m!1956625))

(declare-fun m!1956627 () Bool)

(assert (=> d!489909 m!1956627))

(assert (=> b!1626747 d!489909))

(declare-fun d!489911 () Bool)

(declare-fun lt!588716 () Int)

(assert (=> d!489911 (= lt!588716 (size!14282 (list!7011 (_2!10117 lt!588234))))))

(declare-fun size!14290 (Conc!5938) Int)

(assert (=> d!489911 (= lt!588716 (size!14290 (c!264623 (_2!10117 lt!588234))))))

(assert (=> d!489911 (= (size!14284 (_2!10117 lt!588234)) lt!588716)))

(declare-fun bs!394877 () Bool)

(assert (= bs!394877 d!489911))

(assert (=> bs!394877 m!1955423))

(assert (=> bs!394877 m!1955423))

(declare-fun m!1956629 () Bool)

(assert (=> bs!394877 m!1956629))

(declare-fun m!1956631 () Bool)

(assert (=> bs!394877 m!1956631))

(assert (=> b!1626583 d!489911))

(declare-fun d!489913 () Bool)

(declare-fun lt!588717 () Int)

(assert (=> d!489913 (= lt!588717 (size!14282 (list!7011 (seqFromList!2040 lt!587996))))))

(assert (=> d!489913 (= lt!588717 (size!14290 (c!264623 (seqFromList!2040 lt!587996))))))

(assert (=> d!489913 (= (size!14284 (seqFromList!2040 lt!587996)) lt!588717)))

(declare-fun bs!394878 () Bool)

(assert (= bs!394878 d!489913))

(assert (=> bs!394878 m!1955023))

(assert (=> bs!394878 m!1955425))

(assert (=> bs!394878 m!1955425))

(declare-fun m!1956633 () Bool)

(assert (=> bs!394878 m!1956633))

(declare-fun m!1956635 () Bool)

(assert (=> bs!394878 m!1956635))

(assert (=> b!1626583 d!489913))

(assert (=> b!1626735 d!489847))

(assert (=> b!1626735 d!489849))

(assert (=> b!1626735 d!489851))

(declare-fun d!489915 () Bool)

(assert (=> d!489915 (= (head!3449 lt!587996) (h!23255 lt!587996))))

(assert (=> b!1626789 d!489915))

(assert (=> d!489813 d!489809))

(assert (=> d!489813 d!489811))

(declare-fun d!489917 () Bool)

(assert (=> d!489917 (= (list!7012 (seqFromList!2039 ($colon$colon!331 (t!149059 (t!149059 tokens!457)) (h!23257 (t!149059 tokens!457))))) (list!7014 (c!264625 (seqFromList!2039 ($colon$colon!331 (t!149059 (t!149059 tokens!457)) (h!23257 (t!149059 tokens!457)))))))))

(declare-fun bs!394879 () Bool)

(assert (= bs!394879 d!489917))

(declare-fun m!1956637 () Bool)

(assert (=> bs!394879 m!1956637))

(assert (=> d!489813 d!489917))

(declare-fun d!489919 () Bool)

(assert (=> d!489919 (= (list!7012 (_1!10117 lt!587979)) (list!7012 (prepend!673 (seqFromList!2039 (t!149059 (t!149059 tokens!457))) (h!23257 (t!149059 tokens!457)))))))

(assert (=> d!489919 true))

(declare-fun _$1!10025 () Unit!28923)

(assert (=> d!489919 (= (choose!9782 (h!23257 (t!149059 tokens!457)) (t!149059 (t!149059 tokens!457)) (_1!10117 lt!587979)) _$1!10025)))

(declare-fun bs!394880 () Bool)

(assert (= bs!394880 d!489919))

(assert (=> bs!394880 m!1955029))

(assert (=> bs!394880 m!1955001))

(assert (=> bs!394880 m!1955001))

(assert (=> bs!394880 m!1955003))

(assert (=> bs!394880 m!1955003))

(assert (=> bs!394880 m!1955005))

(assert (=> d!489813 d!489919))

(assert (=> d!489813 d!489815))

(declare-fun d!489921 () Bool)

(assert (=> d!489921 (= ($colon$colon!331 (t!149059 (t!149059 tokens!457)) (h!23257 (t!149059 tokens!457))) (Cons!17856 (h!23257 (t!149059 tokens!457)) (t!149059 (t!149059 tokens!457))))))

(assert (=> d!489813 d!489921))

(declare-fun d!489923 () Bool)

(assert (=> d!489923 (= (seqFromList!2039 ($colon$colon!331 (t!149059 (t!149059 tokens!457)) (h!23257 (t!149059 tokens!457)))) (fromListB!899 ($colon$colon!331 (t!149059 (t!149059 tokens!457)) (h!23257 (t!149059 tokens!457)))))))

(declare-fun bs!394881 () Bool)

(assert (= bs!394881 d!489923))

(assert (=> bs!394881 m!1956341))

(declare-fun m!1956639 () Bool)

(assert (=> bs!394881 m!1956639))

(assert (=> d!489813 d!489923))

(assert (=> d!489813 d!489535))

(declare-fun d!489925 () Bool)

(assert (=> d!489925 (= (list!7011 lt!588349) (list!7016 (c!264623 lt!588349)))))

(declare-fun bs!394882 () Bool)

(assert (= bs!394882 d!489925))

(declare-fun m!1956641 () Bool)

(assert (=> bs!394882 m!1956641))

(assert (=> d!489661 d!489925))

(declare-fun d!489927 () Bool)

(declare-fun c!264795 () Bool)

(assert (=> d!489927 (= c!264795 ((_ is Cons!17856) (list!7012 lt!587983)))))

(declare-fun e!1043738 () List!17924)

(assert (=> d!489927 (= (printList!889 thiss!17113 (list!7012 lt!587983)) e!1043738)))

(declare-fun b!1627305 () Bool)

(assert (=> b!1627305 (= e!1043738 (++!4751 (list!7011 (charsOf!1794 (h!23257 (list!7012 lt!587983)))) (printList!889 thiss!17113 (t!149059 (list!7012 lt!587983)))))))

(declare-fun b!1627306 () Bool)

(assert (=> b!1627306 (= e!1043738 Nil!17854)))

(assert (= (and d!489927 c!264795) b!1627305))

(assert (= (and d!489927 (not c!264795)) b!1627306))

(declare-fun m!1956643 () Bool)

(assert (=> b!1627305 m!1956643))

(assert (=> b!1627305 m!1956643))

(declare-fun m!1956645 () Bool)

(assert (=> b!1627305 m!1956645))

(declare-fun m!1956647 () Bool)

(assert (=> b!1627305 m!1956647))

(assert (=> b!1627305 m!1956645))

(assert (=> b!1627305 m!1956647))

(declare-fun m!1956649 () Bool)

(assert (=> b!1627305 m!1956649))

(assert (=> d!489661 d!489927))

(declare-fun d!489929 () Bool)

(assert (=> d!489929 (= (list!7012 lt!587983) (list!7014 (c!264625 lt!587983)))))

(declare-fun bs!394883 () Bool)

(assert (= bs!394883 d!489929))

(declare-fun m!1956651 () Bool)

(assert (=> bs!394883 m!1956651))

(assert (=> d!489661 d!489929))

(assert (=> d!489661 d!489665))

(declare-fun d!489931 () Bool)

(declare-fun e!1043740 () Bool)

(assert (=> d!489931 e!1043740))

(declare-fun res!727729 () Bool)

(assert (=> d!489931 (=> (not res!727729) (not e!1043740))))

(declare-fun lt!588718 () List!17924)

(assert (=> d!489931 (= res!727729 (= (content!2476 lt!588718) ((_ map or) (content!2476 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588381))))) (content!2476 (_2!10119 (get!5150 lt!588381))))))))

(declare-fun e!1043739 () List!17924)

(assert (=> d!489931 (= lt!588718 e!1043739)))

(declare-fun c!264796 () Bool)

(assert (=> d!489931 (= c!264796 ((_ is Nil!17854) (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588381))))))))

(assert (=> d!489931 (= (++!4751 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588381)))) (_2!10119 (get!5150 lt!588381))) lt!588718)))

(declare-fun b!1627307 () Bool)

(assert (=> b!1627307 (= e!1043739 (_2!10119 (get!5150 lt!588381)))))

(declare-fun b!1627309 () Bool)

(declare-fun res!727730 () Bool)

(assert (=> b!1627309 (=> (not res!727730) (not e!1043740))))

(assert (=> b!1627309 (= res!727730 (= (size!14282 lt!588718) (+ (size!14282 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588381))))) (size!14282 (_2!10119 (get!5150 lt!588381))))))))

(declare-fun b!1627308 () Bool)

(assert (=> b!1627308 (= e!1043739 (Cons!17854 (h!23255 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588381))))) (++!4751 (t!149057 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588381))))) (_2!10119 (get!5150 lt!588381)))))))

(declare-fun b!1627310 () Bool)

(assert (=> b!1627310 (= e!1043740 (or (not (= (_2!10119 (get!5150 lt!588381)) Nil!17854)) (= lt!588718 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588381)))))))))

(assert (= (and d!489931 c!264796) b!1627307))

(assert (= (and d!489931 (not c!264796)) b!1627308))

(assert (= (and d!489931 res!727729) b!1627309))

(assert (= (and b!1627309 res!727730) b!1627310))

(declare-fun m!1956653 () Bool)

(assert (=> d!489931 m!1956653))

(assert (=> d!489931 m!1955759))

(declare-fun m!1956655 () Bool)

(assert (=> d!489931 m!1956655))

(declare-fun m!1956657 () Bool)

(assert (=> d!489931 m!1956657))

(declare-fun m!1956659 () Bool)

(assert (=> b!1627309 m!1956659))

(assert (=> b!1627309 m!1955759))

(declare-fun m!1956661 () Bool)

(assert (=> b!1627309 m!1956661))

(assert (=> b!1627309 m!1955755))

(declare-fun m!1956663 () Bool)

(assert (=> b!1627308 m!1956663))

(assert (=> b!1626722 d!489931))

(declare-fun d!489933 () Bool)

(assert (=> d!489933 (= (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588381)))) (list!7016 (c!264623 (charsOf!1794 (_1!10119 (get!5150 lt!588381))))))))

(declare-fun bs!394884 () Bool)

(assert (= bs!394884 d!489933))

(declare-fun m!1956665 () Bool)

(assert (=> bs!394884 m!1956665))

(assert (=> b!1626722 d!489933))

(declare-fun d!489935 () Bool)

(declare-fun lt!588719 () BalanceConc!11820)

(assert (=> d!489935 (= (list!7011 lt!588719) (originalCharacters!3959 (_1!10119 (get!5150 lt!588381))))))

(assert (=> d!489935 (= lt!588719 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588381))))) (value!99305 (_1!10119 (get!5150 lt!588381)))))))

(assert (=> d!489935 (= (charsOf!1794 (_1!10119 (get!5150 lt!588381))) lt!588719)))

(declare-fun b_lambda!51255 () Bool)

(assert (=> (not b_lambda!51255) (not d!489935)))

(declare-fun tb!93383 () Bool)

(declare-fun t!149129 () Bool)

(assert (=> (and b!1626382 (= (toChars!4431 (transformation!3145 (rule!4971 (h!23257 tokens!457)))) (toChars!4431 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588381)))))) t!149129) tb!93383))

(declare-fun b!1627311 () Bool)

(declare-fun e!1043741 () Bool)

(declare-fun tp!473035 () Bool)

(assert (=> b!1627311 (= e!1043741 (and (inv!23232 (c!264623 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588381))))) (value!99305 (_1!10119 (get!5150 lt!588381)))))) tp!473035))))

(declare-fun result!112642 () Bool)

(assert (=> tb!93383 (= result!112642 (and (inv!23233 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588381))))) (value!99305 (_1!10119 (get!5150 lt!588381))))) e!1043741))))

(assert (= tb!93383 b!1627311))

(declare-fun m!1956667 () Bool)

(assert (=> b!1627311 m!1956667))

(declare-fun m!1956669 () Bool)

(assert (=> tb!93383 m!1956669))

(assert (=> d!489935 t!149129))

(declare-fun b_and!115397 () Bool)

(assert (= b_and!115389 (and (=> t!149129 result!112642) b_and!115397)))

(declare-fun tb!93385 () Bool)

(declare-fun t!149131 () Bool)

(assert (=> (and b!1626369 (= (toChars!4431 (transformation!3145 (h!23256 rules!1846))) (toChars!4431 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588381)))))) t!149131) tb!93385))

(declare-fun result!112644 () Bool)

(assert (= result!112644 result!112642))

(assert (=> d!489935 t!149131))

(declare-fun b_and!115399 () Bool)

(assert (= b_and!115391 (and (=> t!149131 result!112644) b_and!115399)))

(declare-fun tb!93387 () Bool)

(declare-fun t!149133 () Bool)

(assert (=> (and b!1627093 (= (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 tokens!457))))) (toChars!4431 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588381)))))) t!149133) tb!93387))

(declare-fun result!112646 () Bool)

(assert (= result!112646 result!112642))

(assert (=> d!489935 t!149133))

(declare-fun b_and!115401 () Bool)

(assert (= b_and!115393 (and (=> t!149133 result!112646) b_and!115401)))

(declare-fun t!149135 () Bool)

(declare-fun tb!93389 () Bool)

(assert (=> (and b!1627118 (= (toChars!4431 (transformation!3145 (h!23256 (t!149058 rules!1846)))) (toChars!4431 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588381)))))) t!149135) tb!93389))

(declare-fun result!112648 () Bool)

(assert (= result!112648 result!112642))

(assert (=> d!489935 t!149135))

(declare-fun b_and!115403 () Bool)

(assert (= b_and!115395 (and (=> t!149135 result!112648) b_and!115403)))

(declare-fun m!1956671 () Bool)

(assert (=> d!489935 m!1956671))

(declare-fun m!1956673 () Bool)

(assert (=> d!489935 m!1956673))

(assert (=> b!1626722 d!489935))

(declare-fun d!489937 () Bool)

(assert (=> d!489937 (= (get!5150 lt!588381) (v!24358 lt!588381))))

(assert (=> b!1626722 d!489937))

(declare-fun d!489939 () Bool)

(assert (=> d!489939 (= (get!5150 lt!588346) (v!24358 lt!588346))))

(assert (=> b!1626685 d!489939))

(declare-fun d!489941 () Bool)

(declare-fun dynLambda!7970 (Int BalanceConc!11820) TokenValue!3235)

(assert (=> d!489941 (= (apply!4575 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588346)))) (seqFromList!2040 (originalCharacters!3959 (_1!10119 (get!5150 lt!588346))))) (dynLambda!7970 (toValue!4572 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588346))))) (seqFromList!2040 (originalCharacters!3959 (_1!10119 (get!5150 lt!588346))))))))

(declare-fun b_lambda!51257 () Bool)

(assert (=> (not b_lambda!51257) (not d!489941)))

(declare-fun t!149137 () Bool)

(declare-fun tb!93391 () Bool)

(assert (=> (and b!1626382 (= (toValue!4572 (transformation!3145 (rule!4971 (h!23257 tokens!457)))) (toValue!4572 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588346)))))) t!149137) tb!93391))

(declare-fun result!112650 () Bool)

(assert (=> tb!93391 (= result!112650 (inv!21 (dynLambda!7970 (toValue!4572 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588346))))) (seqFromList!2040 (originalCharacters!3959 (_1!10119 (get!5150 lt!588346)))))))))

(declare-fun m!1956675 () Bool)

(assert (=> tb!93391 m!1956675))

(assert (=> d!489941 t!149137))

(declare-fun b_and!115405 () Bool)

(assert (= b_and!115333 (and (=> t!149137 result!112650) b_and!115405)))

(declare-fun tb!93393 () Bool)

(declare-fun t!149139 () Bool)

(assert (=> (and b!1626369 (= (toValue!4572 (transformation!3145 (h!23256 rules!1846))) (toValue!4572 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588346)))))) t!149139) tb!93393))

(declare-fun result!112654 () Bool)

(assert (= result!112654 result!112650))

(assert (=> d!489941 t!149139))

(declare-fun b_and!115407 () Bool)

(assert (= b_and!115337 (and (=> t!149139 result!112654) b_and!115407)))

(declare-fun t!149141 () Bool)

(declare-fun tb!93395 () Bool)

(assert (=> (and b!1627093 (= (toValue!4572 (transformation!3145 (rule!4971 (h!23257 (t!149059 tokens!457))))) (toValue!4572 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588346)))))) t!149141) tb!93395))

(declare-fun result!112656 () Bool)

(assert (= result!112656 result!112650))

(assert (=> d!489941 t!149141))

(declare-fun b_and!115409 () Bool)

(assert (= b_and!115373 (and (=> t!149141 result!112656) b_and!115409)))

(declare-fun t!149143 () Bool)

(declare-fun tb!93397 () Bool)

(assert (=> (and b!1627118 (= (toValue!4572 (transformation!3145 (h!23256 (t!149058 rules!1846)))) (toValue!4572 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588346)))))) t!149143) tb!93397))

(declare-fun result!112658 () Bool)

(assert (= result!112658 result!112650))

(assert (=> d!489941 t!149143))

(declare-fun b_and!115411 () Bool)

(assert (= b_and!115377 (and (=> t!149143 result!112658) b_and!115411)))

(assert (=> d!489941 m!1955655))

(declare-fun m!1956677 () Bool)

(assert (=> d!489941 m!1956677))

(assert (=> b!1626685 d!489941))

(declare-fun d!489943 () Bool)

(assert (=> d!489943 (= (seqFromList!2040 (originalCharacters!3959 (_1!10119 (get!5150 lt!588346)))) (fromListB!897 (originalCharacters!3959 (_1!10119 (get!5150 lt!588346)))))))

(declare-fun bs!394885 () Bool)

(assert (= bs!394885 d!489943))

(declare-fun m!1956679 () Bool)

(assert (=> bs!394885 m!1956679))

(assert (=> b!1626685 d!489943))

(declare-fun b!1627326 () Bool)

(declare-fun res!727748 () Bool)

(declare-fun e!1043750 () Bool)

(assert (=> b!1627326 (=> (not res!727748) (not e!1043750))))

(assert (=> b!1627326 (= res!727748 (not (isEmpty!10896 (left!14348 (c!264623 lt!588497)))))))

(declare-fun b!1627327 () Bool)

(declare-fun res!727746 () Bool)

(assert (=> b!1627327 (=> (not res!727746) (not e!1043750))))

(assert (=> b!1627327 (= res!727746 (<= (- (height!907 (left!14348 (c!264623 lt!588497))) (height!907 (right!14678 (c!264623 lt!588497)))) 1))))

(declare-fun b!1627328 () Bool)

(assert (=> b!1627328 (= e!1043750 (not (isEmpty!10896 (right!14678 (c!264623 lt!588497)))))))

(declare-fun b!1627329 () Bool)

(declare-fun e!1043749 () Bool)

(assert (=> b!1627329 (= e!1043749 e!1043750)))

(declare-fun res!727747 () Bool)

(assert (=> b!1627329 (=> (not res!727747) (not e!1043750))))

(assert (=> b!1627329 (= res!727747 (<= (- 1) (- (height!907 (left!14348 (c!264623 lt!588497))) (height!907 (right!14678 (c!264623 lt!588497))))))))

(declare-fun b!1627330 () Bool)

(declare-fun res!727744 () Bool)

(assert (=> b!1627330 (=> (not res!727744) (not e!1043750))))

(assert (=> b!1627330 (= res!727744 (isBalanced!1794 (left!14348 (c!264623 lt!588497))))))

(declare-fun b!1627331 () Bool)

(declare-fun res!727745 () Bool)

(assert (=> b!1627331 (=> (not res!727745) (not e!1043750))))

(assert (=> b!1627331 (= res!727745 (isBalanced!1794 (right!14678 (c!264623 lt!588497))))))

(declare-fun d!489945 () Bool)

(declare-fun res!727743 () Bool)

(assert (=> d!489945 (=> res!727743 e!1043749)))

(assert (=> d!489945 (= res!727743 (not ((_ is Node!5938) (c!264623 lt!588497))))))

(assert (=> d!489945 (= (isBalanced!1794 (c!264623 lt!588497)) e!1043749)))

(assert (= (and d!489945 (not res!727743)) b!1627329))

(assert (= (and b!1627329 res!727747) b!1627327))

(assert (= (and b!1627327 res!727746) b!1627330))

(assert (= (and b!1627330 res!727744) b!1627331))

(assert (= (and b!1627331 res!727745) b!1627326))

(assert (= (and b!1627326 res!727748) b!1627328))

(declare-fun m!1956681 () Bool)

(assert (=> b!1627330 m!1956681))

(declare-fun m!1956683 () Bool)

(assert (=> b!1627327 m!1956683))

(declare-fun m!1956685 () Bool)

(assert (=> b!1627327 m!1956685))

(assert (=> b!1627329 m!1956683))

(assert (=> b!1627329 m!1956685))

(declare-fun m!1956687 () Bool)

(assert (=> b!1627326 m!1956687))

(declare-fun m!1956689 () Bool)

(assert (=> b!1627328 m!1956689))

(declare-fun m!1956691 () Bool)

(assert (=> b!1627331 m!1956691))

(assert (=> b!1626957 d!489945))

(declare-fun d!489947 () Bool)

(declare-fun lt!588720 () Int)

(assert (=> d!489947 (>= lt!588720 0)))

(declare-fun e!1043751 () Int)

(assert (=> d!489947 (= lt!588720 e!1043751)))

(declare-fun c!264797 () Bool)

(assert (=> d!489947 (= c!264797 ((_ is Nil!17854) lt!587988))))

(assert (=> d!489947 (= (size!14282 lt!587988) lt!588720)))

(declare-fun b!1627332 () Bool)

(assert (=> b!1627332 (= e!1043751 0)))

(declare-fun b!1627333 () Bool)

(assert (=> b!1627333 (= e!1043751 (+ 1 (size!14282 (t!149057 lt!587988))))))

(assert (= (and d!489947 c!264797) b!1627332))

(assert (= (and d!489947 (not c!264797)) b!1627333))

(declare-fun m!1956693 () Bool)

(assert (=> b!1627333 m!1956693))

(assert (=> b!1626518 d!489947))

(assert (=> b!1626518 d!489875))

(declare-fun d!489949 () Bool)

(declare-fun lt!588721 () Bool)

(assert (=> d!489949 (= lt!588721 (select (content!2475 (t!149058 rules!1846)) (rule!4971 (h!23257 tokens!457))))))

(declare-fun e!1043752 () Bool)

(assert (=> d!489949 (= lt!588721 e!1043752)))

(declare-fun res!727750 () Bool)

(assert (=> d!489949 (=> (not res!727750) (not e!1043752))))

(assert (=> d!489949 (= res!727750 ((_ is Cons!17855) (t!149058 rules!1846)))))

(assert (=> d!489949 (= (contains!3120 (t!149058 rules!1846) (rule!4971 (h!23257 tokens!457))) lt!588721)))

(declare-fun b!1627334 () Bool)

(declare-fun e!1043753 () Bool)

(assert (=> b!1627334 (= e!1043752 e!1043753)))

(declare-fun res!727749 () Bool)

(assert (=> b!1627334 (=> res!727749 e!1043753)))

(assert (=> b!1627334 (= res!727749 (= (h!23256 (t!149058 rules!1846)) (rule!4971 (h!23257 tokens!457))))))

(declare-fun b!1627335 () Bool)

(assert (=> b!1627335 (= e!1043753 (contains!3120 (t!149058 (t!149058 rules!1846)) (rule!4971 (h!23257 tokens!457))))))

(assert (= (and d!489949 res!727750) b!1627334))

(assert (= (and b!1627334 (not res!727749)) b!1627335))

(declare-fun m!1956695 () Bool)

(assert (=> d!489949 m!1956695))

(declare-fun m!1956697 () Bool)

(assert (=> d!489949 m!1956697))

(declare-fun m!1956699 () Bool)

(assert (=> b!1627335 m!1956699))

(assert (=> b!1626591 d!489949))

(declare-fun b!1627354 () Bool)

(declare-fun e!1043763 () Bool)

(declare-datatypes ((tuple2!17444 0))(
  ( (tuple2!17445 (_1!10124 List!17924) (_2!10124 List!17924)) )
))
(declare-fun findLongestMatchInner!361 (Regex!4473 List!17924 Int List!17924 List!17924 Int) tuple2!17444)

(assert (=> b!1627354 (= e!1043763 (matchR!1972 (regex!3145 (h!23256 rules!1846)) (_1!10124 (findLongestMatchInner!361 (regex!3145 (h!23256 rules!1846)) Nil!17854 (size!14282 Nil!17854) lt!587996 lt!587996 (size!14282 lt!587996)))))))

(declare-fun b!1627355 () Bool)

(declare-fun e!1043765 () Option!3316)

(declare-fun lt!588733 () tuple2!17444)

(assert (=> b!1627355 (= e!1043765 (Some!3315 (tuple2!17435 (Token!5857 (apply!4575 (transformation!3145 (h!23256 rules!1846)) (seqFromList!2040 (_1!10124 lt!588733))) (h!23256 rules!1846) (size!14284 (seqFromList!2040 (_1!10124 lt!588733))) (_1!10124 lt!588733)) (_2!10124 lt!588733))))))

(declare-fun lt!588735 () Unit!28923)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!345 (Regex!4473 List!17924) Unit!28923)

(assert (=> b!1627355 (= lt!588735 (longestMatchIsAcceptedByMatchOrIsEmpty!345 (regex!3145 (h!23256 rules!1846)) lt!587996))))

(declare-fun res!727765 () Bool)

(assert (=> b!1627355 (= res!727765 (isEmpty!10881 (_1!10124 (findLongestMatchInner!361 (regex!3145 (h!23256 rules!1846)) Nil!17854 (size!14282 Nil!17854) lt!587996 lt!587996 (size!14282 lt!587996)))))))

(assert (=> b!1627355 (=> res!727765 e!1043763)))

(assert (=> b!1627355 e!1043763))

(declare-fun lt!588732 () Unit!28923)

(assert (=> b!1627355 (= lt!588732 lt!588735)))

(declare-fun lt!588736 () Unit!28923)

(declare-fun lemmaSemiInverse!394 (TokenValueInjection!6130 BalanceConc!11820) Unit!28923)

(assert (=> b!1627355 (= lt!588736 (lemmaSemiInverse!394 (transformation!3145 (h!23256 rules!1846)) (seqFromList!2040 (_1!10124 lt!588733))))))

(declare-fun d!489951 () Bool)

(declare-fun e!1043762 () Bool)

(assert (=> d!489951 e!1043762))

(declare-fun res!727771 () Bool)

(assert (=> d!489951 (=> res!727771 e!1043762)))

(declare-fun lt!588734 () Option!3316)

(assert (=> d!489951 (= res!727771 (isEmpty!10890 lt!588734))))

(assert (=> d!489951 (= lt!588734 e!1043765)))

(declare-fun c!264800 () Bool)

(assert (=> d!489951 (= c!264800 (isEmpty!10881 (_1!10124 lt!588733)))))

(declare-fun findLongestMatch!288 (Regex!4473 List!17924) tuple2!17444)

(assert (=> d!489951 (= lt!588733 (findLongestMatch!288 (regex!3145 (h!23256 rules!1846)) lt!587996))))

(assert (=> d!489951 (ruleValid!739 thiss!17113 (h!23256 rules!1846))))

(assert (=> d!489951 (= (maxPrefixOneRule!777 thiss!17113 (h!23256 rules!1846) lt!587996) lt!588734)))

(declare-fun b!1627356 () Bool)

(declare-fun e!1043764 () Bool)

(assert (=> b!1627356 (= e!1043764 (= (size!14278 (_1!10119 (get!5150 lt!588734))) (size!14282 (originalCharacters!3959 (_1!10119 (get!5150 lt!588734))))))))

(declare-fun b!1627357 () Bool)

(declare-fun res!727769 () Bool)

(assert (=> b!1627357 (=> (not res!727769) (not e!1043764))))

(assert (=> b!1627357 (= res!727769 (= (rule!4971 (_1!10119 (get!5150 lt!588734))) (h!23256 rules!1846)))))

(declare-fun b!1627358 () Bool)

(assert (=> b!1627358 (= e!1043762 e!1043764)))

(declare-fun res!727770 () Bool)

(assert (=> b!1627358 (=> (not res!727770) (not e!1043764))))

(assert (=> b!1627358 (= res!727770 (matchR!1972 (regex!3145 (h!23256 rules!1846)) (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588734))))))))

(declare-fun b!1627359 () Bool)

(declare-fun res!727767 () Bool)

(assert (=> b!1627359 (=> (not res!727767) (not e!1043764))))

(assert (=> b!1627359 (= res!727767 (< (size!14282 (_2!10119 (get!5150 lt!588734))) (size!14282 lt!587996)))))

(declare-fun b!1627360 () Bool)

(declare-fun res!727766 () Bool)

(assert (=> b!1627360 (=> (not res!727766) (not e!1043764))))

(assert (=> b!1627360 (= res!727766 (= (++!4751 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588734)))) (_2!10119 (get!5150 lt!588734))) lt!587996))))

(declare-fun b!1627361 () Bool)

(declare-fun res!727768 () Bool)

(assert (=> b!1627361 (=> (not res!727768) (not e!1043764))))

(assert (=> b!1627361 (= res!727768 (= (value!99305 (_1!10119 (get!5150 lt!588734))) (apply!4575 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588734)))) (seqFromList!2040 (originalCharacters!3959 (_1!10119 (get!5150 lt!588734)))))))))

(declare-fun b!1627362 () Bool)

(assert (=> b!1627362 (= e!1043765 None!3315)))

(assert (= (and d!489951 c!264800) b!1627362))

(assert (= (and d!489951 (not c!264800)) b!1627355))

(assert (= (and b!1627355 (not res!727765)) b!1627354))

(assert (= (and d!489951 (not res!727771)) b!1627358))

(assert (= (and b!1627358 res!727770) b!1627360))

(assert (= (and b!1627360 res!727766) b!1627359))

(assert (= (and b!1627359 res!727767) b!1627357))

(assert (= (and b!1627357 res!727769) b!1627361))

(assert (= (and b!1627361 res!727768) b!1627356))

(declare-fun m!1956701 () Bool)

(assert (=> b!1627356 m!1956701))

(declare-fun m!1956703 () Bool)

(assert (=> b!1627356 m!1956703))

(declare-fun m!1956705 () Bool)

(assert (=> b!1627354 m!1956705))

(assert (=> b!1627354 m!1955305))

(assert (=> b!1627354 m!1956705))

(assert (=> b!1627354 m!1955305))

(declare-fun m!1956707 () Bool)

(assert (=> b!1627354 m!1956707))

(declare-fun m!1956709 () Bool)

(assert (=> b!1627354 m!1956709))

(assert (=> b!1627359 m!1956701))

(declare-fun m!1956711 () Bool)

(assert (=> b!1627359 m!1956711))

(assert (=> b!1627359 m!1955305))

(declare-fun m!1956713 () Bool)

(assert (=> b!1627355 m!1956713))

(declare-fun m!1956715 () Bool)

(assert (=> b!1627355 m!1956715))

(assert (=> b!1627355 m!1956713))

(declare-fun m!1956717 () Bool)

(assert (=> b!1627355 m!1956717))

(assert (=> b!1627355 m!1956705))

(assert (=> b!1627355 m!1955305))

(assert (=> b!1627355 m!1956707))

(assert (=> b!1627355 m!1956713))

(declare-fun m!1956719 () Bool)

(assert (=> b!1627355 m!1956719))

(declare-fun m!1956721 () Bool)

(assert (=> b!1627355 m!1956721))

(declare-fun m!1956723 () Bool)

(assert (=> b!1627355 m!1956723))

(assert (=> b!1627355 m!1955305))

(assert (=> b!1627355 m!1956713))

(assert (=> b!1627355 m!1956705))

(assert (=> b!1627357 m!1956701))

(declare-fun m!1956725 () Bool)

(assert (=> d!489951 m!1956725))

(declare-fun m!1956727 () Bool)

(assert (=> d!489951 m!1956727))

(declare-fun m!1956729 () Bool)

(assert (=> d!489951 m!1956729))

(declare-fun m!1956731 () Bool)

(assert (=> d!489951 m!1956731))

(assert (=> b!1627358 m!1956701))

(declare-fun m!1956733 () Bool)

(assert (=> b!1627358 m!1956733))

(assert (=> b!1627358 m!1956733))

(declare-fun m!1956735 () Bool)

(assert (=> b!1627358 m!1956735))

(assert (=> b!1627358 m!1956735))

(declare-fun m!1956737 () Bool)

(assert (=> b!1627358 m!1956737))

(assert (=> b!1627360 m!1956701))

(assert (=> b!1627360 m!1956733))

(assert (=> b!1627360 m!1956733))

(assert (=> b!1627360 m!1956735))

(assert (=> b!1627360 m!1956735))

(declare-fun m!1956739 () Bool)

(assert (=> b!1627360 m!1956739))

(assert (=> b!1627361 m!1956701))

(declare-fun m!1956741 () Bool)

(assert (=> b!1627361 m!1956741))

(assert (=> b!1627361 m!1956741))

(declare-fun m!1956743 () Bool)

(assert (=> b!1627361 m!1956743))

(assert (=> bm!105259 d!489951))

(declare-fun d!489953 () Bool)

(assert (=> d!489953 (= (list!7012 lt!588631) (list!7014 (c!264625 lt!588631)))))

(declare-fun bs!394886 () Bool)

(assert (= bs!394886 d!489953))

(declare-fun m!1956745 () Bool)

(assert (=> bs!394886 m!1956745))

(assert (=> b!1627074 d!489953))

(declare-fun d!489955 () Bool)

(assert (=> d!489955 (= (list!7012 (seqFromList!2039 (t!149059 (t!149059 tokens!457)))) (list!7014 (c!264625 (seqFromList!2039 (t!149059 (t!149059 tokens!457))))))))

(declare-fun bs!394887 () Bool)

(assert (= bs!394887 d!489955))

(declare-fun m!1956747 () Bool)

(assert (=> bs!394887 m!1956747))

(assert (=> b!1627074 d!489955))

(declare-fun d!489957 () Bool)

(declare-fun lostCauseFct!161 (Regex!4473) Bool)

(assert (=> d!489957 (= (lostCause!440 lt!587975) (lostCauseFct!161 lt!587975))))

(declare-fun bs!394888 () Bool)

(assert (= bs!394888 d!489957))

(declare-fun m!1956749 () Bool)

(assert (=> bs!394888 m!1956749))

(assert (=> b!1626719 d!489957))

(declare-fun d!489959 () Bool)

(declare-fun e!1043768 () Bool)

(assert (=> d!489959 e!1043768))

(declare-fun res!727774 () Bool)

(assert (=> d!489959 (=> (not res!727774) (not e!1043768))))

(declare-fun lt!588739 () BalanceConc!11822)

(assert (=> d!489959 (= res!727774 (= (list!7012 lt!588739) tokens!457))))

(declare-fun fromList!384 (List!17926) Conc!5939)

(assert (=> d!489959 (= lt!588739 (BalanceConc!11823 (fromList!384 tokens!457)))))

(assert (=> d!489959 (= (fromListB!899 tokens!457) lt!588739)))

(declare-fun b!1627365 () Bool)

(assert (=> b!1627365 (= e!1043768 (isBalanced!1793 (fromList!384 tokens!457)))))

(assert (= (and d!489959 res!727774) b!1627365))

(declare-fun m!1956751 () Bool)

(assert (=> d!489959 m!1956751))

(declare-fun m!1956753 () Bool)

(assert (=> d!489959 m!1956753))

(assert (=> b!1627365 m!1956753))

(assert (=> b!1627365 m!1956753))

(declare-fun m!1956755 () Bool)

(assert (=> b!1627365 m!1956755))

(assert (=> d!489717 d!489959))

(declare-fun d!489961 () Bool)

(assert (=> d!489961 (= (list!7012 (_1!10117 lt!588445)) (list!7014 (c!264625 (_1!10117 lt!588445))))))

(declare-fun bs!394889 () Bool)

(assert (= bs!394889 d!489961))

(declare-fun m!1956757 () Bool)

(assert (=> bs!394889 m!1956757))

(assert (=> b!1626800 d!489961))

(declare-fun b!1627376 () Bool)

(declare-fun e!1043776 () Bool)

(declare-fun lt!588747 () tuple2!17436)

(assert (=> b!1627376 (= e!1043776 (not (isEmpty!10888 (_1!10120 lt!588747))))))

(declare-fun d!489963 () Bool)

(declare-fun e!1043775 () Bool)

(assert (=> d!489963 e!1043775))

(declare-fun c!264807 () Bool)

(declare-fun size!14291 (List!17926) Int)

(assert (=> d!489963 (= c!264807 (> (size!14291 (_1!10120 lt!588747)) 0))))

(declare-fun e!1043777 () tuple2!17436)

(assert (=> d!489963 (= lt!588747 e!1043777)))

(declare-fun c!264806 () Bool)

(declare-fun lt!588748 () Option!3316)

(assert (=> d!489963 (= c!264806 ((_ is Some!3315) lt!588748))))

(assert (=> d!489963 (= lt!588748 (maxPrefix!1338 thiss!17113 rules!1846 (list!7011 lt!587989)))))

(assert (=> d!489963 (= (lexList!830 thiss!17113 rules!1846 (list!7011 lt!587989)) lt!588747)))

(declare-fun b!1627377 () Bool)

(assert (=> b!1627377 (= e!1043775 (= (_2!10120 lt!588747) (list!7011 lt!587989)))))

(declare-fun b!1627378 () Bool)

(assert (=> b!1627378 (= e!1043775 e!1043776)))

(declare-fun res!727777 () Bool)

(assert (=> b!1627378 (= res!727777 (< (size!14282 (_2!10120 lt!588747)) (size!14282 (list!7011 lt!587989))))))

(assert (=> b!1627378 (=> (not res!727777) (not e!1043776))))

(declare-fun b!1627379 () Bool)

(assert (=> b!1627379 (= e!1043777 (tuple2!17437 Nil!17856 (list!7011 lt!587989)))))

(declare-fun b!1627380 () Bool)

(declare-fun lt!588746 () tuple2!17436)

(assert (=> b!1627380 (= e!1043777 (tuple2!17437 (Cons!17856 (_1!10119 (v!24358 lt!588748)) (_1!10120 lt!588746)) (_2!10120 lt!588746)))))

(assert (=> b!1627380 (= lt!588746 (lexList!830 thiss!17113 rules!1846 (_2!10119 (v!24358 lt!588748))))))

(assert (= (and d!489963 c!264806) b!1627380))

(assert (= (and d!489963 (not c!264806)) b!1627379))

(assert (= (and d!489963 c!264807) b!1627378))

(assert (= (and d!489963 (not c!264807)) b!1627377))

(assert (= (and b!1627378 res!727777) b!1627376))

(declare-fun m!1956759 () Bool)

(assert (=> b!1627376 m!1956759))

(declare-fun m!1956761 () Bool)

(assert (=> d!489963 m!1956761))

(assert (=> d!489963 m!1954949))

(declare-fun m!1956763 () Bool)

(assert (=> d!489963 m!1956763))

(declare-fun m!1956765 () Bool)

(assert (=> b!1627378 m!1956765))

(assert (=> b!1627378 m!1954949))

(declare-fun m!1956767 () Bool)

(assert (=> b!1627378 m!1956767))

(declare-fun m!1956769 () Bool)

(assert (=> b!1627380 m!1956769))

(assert (=> b!1626800 d!489963))

(assert (=> b!1626800 d!489705))

(declare-fun b!1627391 () Bool)

(declare-fun e!1043783 () List!17924)

(declare-fun list!7019 (IArray!11881) List!17924)

(assert (=> b!1627391 (= e!1043783 (list!7019 (xs!8770 (c!264623 lt!587998))))))

(declare-fun d!489965 () Bool)

(declare-fun c!264812 () Bool)

(assert (=> d!489965 (= c!264812 ((_ is Empty!5938) (c!264623 lt!587998)))))

(declare-fun e!1043782 () List!17924)

(assert (=> d!489965 (= (list!7016 (c!264623 lt!587998)) e!1043782)))

(declare-fun b!1627389 () Bool)

(assert (=> b!1627389 (= e!1043782 Nil!17854)))

(declare-fun b!1627392 () Bool)

(assert (=> b!1627392 (= e!1043783 (++!4751 (list!7016 (left!14348 (c!264623 lt!587998))) (list!7016 (right!14678 (c!264623 lt!587998)))))))

(declare-fun b!1627390 () Bool)

(assert (=> b!1627390 (= e!1043782 e!1043783)))

(declare-fun c!264813 () Bool)

(assert (=> b!1627390 (= c!264813 ((_ is Leaf!8731) (c!264623 lt!587998)))))

(assert (= (and d!489965 c!264812) b!1627389))

(assert (= (and d!489965 (not c!264812)) b!1627390))

(assert (= (and b!1627390 c!264813) b!1627391))

(assert (= (and b!1627390 (not c!264813)) b!1627392))

(declare-fun m!1956771 () Bool)

(assert (=> b!1627391 m!1956771))

(declare-fun m!1956773 () Bool)

(assert (=> b!1627392 m!1956773))

(declare-fun m!1956775 () Bool)

(assert (=> b!1627392 m!1956775))

(assert (=> b!1627392 m!1956773))

(assert (=> b!1627392 m!1956775))

(declare-fun m!1956777 () Bool)

(assert (=> b!1627392 m!1956777))

(assert (=> d!489709 d!489965))

(declare-fun b!1627395 () Bool)

(declare-fun res!727783 () Bool)

(declare-fun e!1043785 () Bool)

(assert (=> b!1627395 (=> (not res!727783) (not e!1043785))))

(assert (=> b!1627395 (= res!727783 (not (isEmpty!10896 (left!14348 (++!4754 (c!264623 lt!587987) (c!264623 lt!587976))))))))

(declare-fun b!1627396 () Bool)

(declare-fun res!727781 () Bool)

(assert (=> b!1627396 (=> (not res!727781) (not e!1043785))))

(assert (=> b!1627396 (= res!727781 (<= (- (height!907 (left!14348 (++!4754 (c!264623 lt!587987) (c!264623 lt!587976)))) (height!907 (right!14678 (++!4754 (c!264623 lt!587987) (c!264623 lt!587976))))) 1))))

(declare-fun b!1627397 () Bool)

(assert (=> b!1627397 (= e!1043785 (not (isEmpty!10896 (right!14678 (++!4754 (c!264623 lt!587987) (c!264623 lt!587976))))))))

(declare-fun b!1627398 () Bool)

(declare-fun e!1043784 () Bool)

(assert (=> b!1627398 (= e!1043784 e!1043785)))

(declare-fun res!727782 () Bool)

(assert (=> b!1627398 (=> (not res!727782) (not e!1043785))))

(assert (=> b!1627398 (= res!727782 (<= (- 1) (- (height!907 (left!14348 (++!4754 (c!264623 lt!587987) (c!264623 lt!587976)))) (height!907 (right!14678 (++!4754 (c!264623 lt!587987) (c!264623 lt!587976)))))))))

(declare-fun b!1627399 () Bool)

(declare-fun res!727779 () Bool)

(assert (=> b!1627399 (=> (not res!727779) (not e!1043785))))

(assert (=> b!1627399 (= res!727779 (isBalanced!1794 (left!14348 (++!4754 (c!264623 lt!587987) (c!264623 lt!587976)))))))

(declare-fun b!1627400 () Bool)

(declare-fun res!727780 () Bool)

(assert (=> b!1627400 (=> (not res!727780) (not e!1043785))))

(assert (=> b!1627400 (= res!727780 (isBalanced!1794 (right!14678 (++!4754 (c!264623 lt!587987) (c!264623 lt!587976)))))))

(declare-fun d!489967 () Bool)

(declare-fun res!727778 () Bool)

(assert (=> d!489967 (=> res!727778 e!1043784)))

(assert (=> d!489967 (= res!727778 (not ((_ is Node!5938) (++!4754 (c!264623 lt!587987) (c!264623 lt!587976)))))))

(assert (=> d!489967 (= (isBalanced!1794 (++!4754 (c!264623 lt!587987) (c!264623 lt!587976))) e!1043784)))

(assert (= (and d!489967 (not res!727778)) b!1627398))

(assert (= (and b!1627398 res!727782) b!1627396))

(assert (= (and b!1627396 res!727781) b!1627399))

(assert (= (and b!1627399 res!727779) b!1627400))

(assert (= (and b!1627400 res!727780) b!1627395))

(assert (= (and b!1627395 res!727783) b!1627397))

(declare-fun m!1956779 () Bool)

(assert (=> b!1627399 m!1956779))

(declare-fun m!1956781 () Bool)

(assert (=> b!1627396 m!1956781))

(declare-fun m!1956783 () Bool)

(assert (=> b!1627396 m!1956783))

(assert (=> b!1627398 m!1956781))

(assert (=> b!1627398 m!1956783))

(declare-fun m!1956785 () Bool)

(assert (=> b!1627395 m!1956785))

(declare-fun m!1956787 () Bool)

(assert (=> b!1627397 m!1956787))

(declare-fun m!1956789 () Bool)

(assert (=> b!1627400 m!1956789))

(assert (=> b!1626975 d!489967))

(declare-fun b!1627472 () Bool)

(declare-fun e!1043828 () Conc!5938)

(declare-fun e!1043825 () Conc!5938)

(assert (=> b!1627472 (= e!1043828 e!1043825)))

(declare-fun c!264850 () Bool)

(assert (=> b!1627472 (= c!264850 (= (c!264623 lt!587976) Empty!5938))))

(declare-fun bm!105306 () Bool)

(declare-fun call!105324 () Conc!5938)

(declare-fun call!105314 () Conc!5938)

(assert (=> bm!105306 (= call!105324 call!105314)))

(declare-fun b!1627473 () Bool)

(declare-fun e!1043826 () Conc!5938)

(declare-fun e!1043829 () Conc!5938)

(assert (=> b!1627473 (= e!1043826 e!1043829)))

(declare-fun c!264849 () Bool)

(declare-fun lt!588867 () Int)

(assert (=> b!1627473 (= c!264849 (< lt!588867 (- 1)))))

(declare-fun bm!105307 () Bool)

(declare-fun call!105321 () Conc!5938)

(declare-fun call!105318 () Conc!5938)

(assert (=> bm!105307 (= call!105321 call!105318)))

(declare-fun bm!105309 () Bool)

(declare-fun call!105322 () Conc!5938)

(assert (=> bm!105309 (= call!105318 call!105322)))

(declare-fun bm!105310 () Bool)

(declare-fun call!105316 () Conc!5938)

(declare-fun call!105325 () Conc!5938)

(assert (=> bm!105310 (= call!105316 call!105325)))

(declare-fun b!1627474 () Bool)

(declare-fun e!1043827 () Conc!5938)

(declare-fun call!105313 () Conc!5938)

(assert (=> b!1627474 (= e!1043827 call!105313)))

(declare-fun call!105315 () Conc!5938)

(declare-fun c!264843 () Bool)

(declare-fun c!264848 () Bool)

(declare-fun bm!105311 () Bool)

(declare-fun lt!588866 () Conc!5938)

(declare-fun lt!588865 () Conc!5938)

(declare-fun <>!139 (Conc!5938 Conc!5938) Conc!5938)

(assert (=> bm!105311 (= call!105314 (<>!139 (ite c!264849 (ite c!264843 (left!14348 (c!264623 lt!587987)) call!105315) (ite c!264848 lt!588866 (right!14678 (left!14348 (c!264623 lt!587976))))) (ite c!264849 (ite c!264843 call!105315 lt!588865) (ite c!264848 (right!14678 (left!14348 (c!264623 lt!587976))) (right!14678 (c!264623 lt!587976))))))))

(declare-fun b!1627475 () Bool)

(declare-fun e!1043832 () Conc!5938)

(assert (=> b!1627475 (= e!1043832 call!105321)))

(declare-fun c!264845 () Bool)

(declare-fun c!264846 () Bool)

(declare-fun call!105311 () Conc!5938)

(declare-fun call!105317 () Conc!5938)

(declare-fun c!264844 () Bool)

(declare-fun call!105312 () Conc!5938)

(declare-fun bm!105312 () Bool)

(assert (=> bm!105312 (= call!105312 (<>!139 (ite c!264846 (c!264623 lt!587987) (ite c!264849 (ite c!264844 (left!14348 (c!264623 lt!587987)) (ite c!264843 (left!14348 (right!14678 (c!264623 lt!587987))) (left!14348 (c!264623 lt!587987)))) (ite c!264845 call!105316 (ite c!264848 call!105317 lt!588866)))) (ite c!264846 (c!264623 lt!587976) (ite c!264849 (ite c!264844 call!105311 (ite c!264843 lt!588865 (left!14348 (right!14678 (c!264623 lt!587987))))) (ite (or c!264845 c!264848) (right!14678 (c!264623 lt!587976)) call!105317)))))))

(declare-fun b!1627476 () Bool)

(assert (=> b!1627476 (= e!1043828 (c!264623 lt!587976))))

(declare-fun bm!105313 () Bool)

(declare-fun call!105323 () Int)

(assert (=> bm!105313 (= call!105323 (height!907 (ite c!264849 (right!14678 (c!264623 lt!587987)) (left!14348 (c!264623 lt!587976)))))))

(declare-fun b!1627477 () Bool)

(declare-fun res!727802 () Bool)

(declare-fun e!1043830 () Bool)

(assert (=> b!1627477 (=> (not res!727802) (not e!1043830))))

(declare-fun lt!588868 () Conc!5938)

(assert (=> b!1627477 (= res!727802 (>= (height!907 lt!588868) (max!0 (height!907 (c!264623 lt!587987)) (height!907 (c!264623 lt!587976)))))))

(declare-fun bm!105314 () Bool)

(assert (=> bm!105314 (= call!105317 call!105314)))

(declare-fun b!1627478 () Bool)

(declare-fun e!1043831 () Bool)

(assert (=> b!1627478 (= e!1043831 (isBalanced!1794 (c!264623 lt!587976)))))

(declare-fun b!1627479 () Bool)

(assert (=> b!1627479 (= e!1043825 (c!264623 lt!587987))))

(declare-fun b!1627480 () Bool)

(declare-fun e!1043833 () Conc!5938)

(assert (=> b!1627480 (= e!1043833 call!105324)))

(declare-fun bm!105315 () Bool)

(assert (=> bm!105315 (= call!105311 call!105325)))

(declare-fun bm!105316 () Bool)

(assert (=> bm!105316 (= call!105313 call!105322)))

(declare-fun call!105320 () Int)

(declare-fun bm!105317 () Bool)

(assert (=> bm!105317 (= call!105320 (height!907 (ite c!264849 (left!14348 (c!264623 lt!587987)) (right!14678 (c!264623 lt!587976)))))))

(declare-fun b!1627481 () Bool)

(declare-fun res!727801 () Bool)

(assert (=> b!1627481 (=> (not res!727801) (not e!1043830))))

(assert (=> b!1627481 (= res!727801 (isBalanced!1794 lt!588868))))

(declare-fun b!1627482 () Bool)

(declare-fun e!1043824 () Conc!5938)

(assert (=> b!1627482 (= e!1043824 call!105318)))

(declare-fun b!1627483 () Bool)

(assert (=> b!1627483 (= e!1043827 e!1043833)))

(assert (=> b!1627483 (= lt!588865 call!105311)))

(declare-fun call!105326 () Int)

(declare-fun call!105319 () Int)

(assert (=> b!1627483 (= c!264843 (= call!105326 (- call!105319 3)))))

(declare-fun b!1627484 () Bool)

(assert (=> b!1627484 (= e!1043833 call!105324)))

(declare-fun b!1627485 () Bool)

(assert (=> b!1627485 (= e!1043826 call!105312)))

(declare-fun b!1627486 () Bool)

(assert (=> b!1627486 (= c!264845 (>= call!105320 call!105323))))

(assert (=> b!1627486 (= e!1043829 e!1043824)))

(declare-fun bm!105318 () Bool)

(assert (=> bm!105318 (= call!105322 call!105312)))

(declare-fun bm!105308 () Bool)

(assert (=> bm!105308 (= call!105315 call!105313)))

(declare-fun d!489969 () Bool)

(assert (=> d!489969 e!1043830))

(declare-fun res!727803 () Bool)

(assert (=> d!489969 (=> (not res!727803) (not e!1043830))))

(assert (=> d!489969 (= res!727803 (appendAssocInst!437 (c!264623 lt!587987) (c!264623 lt!587976)))))

(assert (=> d!489969 (= lt!588868 e!1043828)))

(declare-fun c!264847 () Bool)

(assert (=> d!489969 (= c!264847 (= (c!264623 lt!587987) Empty!5938))))

(assert (=> d!489969 e!1043831))

(declare-fun res!727800 () Bool)

(assert (=> d!489969 (=> (not res!727800) (not e!1043831))))

(assert (=> d!489969 (= res!727800 (isBalanced!1794 (c!264623 lt!587987)))))

(assert (=> d!489969 (= (++!4754 (c!264623 lt!587987) (c!264623 lt!587976)) lt!588868)))

(declare-fun b!1627487 () Bool)

(declare-fun res!727799 () Bool)

(assert (=> b!1627487 (=> (not res!727799) (not e!1043830))))

(assert (=> b!1627487 (= res!727799 (<= (height!907 lt!588868) (+ (max!0 (height!907 (c!264623 lt!587987)) (height!907 (c!264623 lt!587976))) 1)))))

(declare-fun b!1627488 () Bool)

(assert (=> b!1627488 (= e!1043832 call!105321)))

(declare-fun bm!105319 () Bool)

(assert (=> bm!105319 (= call!105319 (height!907 (ite c!264849 (c!264623 lt!587987) lt!588866)))))

(declare-fun bm!105320 () Bool)

(assert (=> bm!105320 (= call!105326 (height!907 (ite c!264849 lt!588865 (c!264623 lt!587976))))))

(declare-fun b!1627489 () Bool)

(assert (=> b!1627489 (= e!1043824 e!1043832)))

(assert (=> b!1627489 (= lt!588866 call!105316)))

(assert (=> b!1627489 (= c!264848 (= call!105319 (- call!105326 3)))))

(declare-fun b!1627490 () Bool)

(assert (=> b!1627490 (= e!1043830 (= (list!7016 lt!588868) (++!4751 (list!7016 (c!264623 lt!587987)) (list!7016 (c!264623 lt!587976)))))))

(declare-fun b!1627491 () Bool)

(assert (=> b!1627491 (= c!264844 (>= call!105320 call!105323))))

(assert (=> b!1627491 (= e!1043829 e!1043827)))

(declare-fun b!1627492 () Bool)

(assert (=> b!1627492 (= c!264846 (and (<= (- 1) lt!588867) (<= lt!588867 1)))))

(assert (=> b!1627492 (= lt!588867 (- (height!907 (c!264623 lt!587976)) (height!907 (c!264623 lt!587987))))))

(assert (=> b!1627492 (= e!1043825 e!1043826)))

(declare-fun bm!105321 () Bool)

(assert (=> bm!105321 (= call!105325 (++!4754 (ite c!264849 (ite c!264844 (right!14678 (c!264623 lt!587987)) (right!14678 (right!14678 (c!264623 lt!587987)))) (c!264623 lt!587987)) (ite c!264849 (c!264623 lt!587976) (ite c!264845 (left!14348 (c!264623 lt!587976)) (left!14348 (left!14348 (c!264623 lt!587976)))))))))

(assert (= (and d!489969 res!727800) b!1627478))

(assert (= (and d!489969 c!264847) b!1627476))

(assert (= (and d!489969 (not c!264847)) b!1627472))

(assert (= (and b!1627472 c!264850) b!1627479))

(assert (= (and b!1627472 (not c!264850)) b!1627492))

(assert (= (and b!1627492 c!264846) b!1627485))

(assert (= (and b!1627492 (not c!264846)) b!1627473))

(assert (= (and b!1627473 c!264849) b!1627491))

(assert (= (and b!1627473 (not c!264849)) b!1627486))

(assert (= (and b!1627491 c!264844) b!1627474))

(assert (= (and b!1627491 (not c!264844)) b!1627483))

(assert (= (and b!1627483 c!264843) b!1627480))

(assert (= (and b!1627483 (not c!264843)) b!1627484))

(assert (= (or b!1627480 b!1627484) bm!105308))

(assert (= (or b!1627480 b!1627484) bm!105306))

(assert (= (or b!1627474 b!1627483) bm!105315))

(assert (= (or b!1627474 bm!105308) bm!105316))

(assert (= (and b!1627486 c!264845) b!1627482))

(assert (= (and b!1627486 (not c!264845)) b!1627489))

(assert (= (and b!1627489 c!264848) b!1627488))

(assert (= (and b!1627489 (not c!264848)) b!1627475))

(assert (= (or b!1627488 b!1627475) bm!105314))

(assert (= (or b!1627488 b!1627475) bm!105307))

(assert (= (or b!1627482 b!1627489) bm!105310))

(assert (= (or b!1627482 bm!105307) bm!105309))

(assert (= (or bm!105315 bm!105310) bm!105321))

(assert (= (or b!1627483 b!1627489) bm!105319))

(assert (= (or bm!105316 bm!105309) bm!105318))

(assert (= (or b!1627491 b!1627486) bm!105317))

(assert (= (or b!1627491 b!1627486) bm!105313))

(assert (= (or b!1627483 b!1627489) bm!105320))

(assert (= (or bm!105306 bm!105314) bm!105311))

(assert (= (or b!1627485 bm!105318) bm!105312))

(assert (= (and d!489969 res!727803) b!1627481))

(assert (= (and b!1627481 res!727801) b!1627487))

(assert (= (and b!1627487 res!727799) b!1627477))

(assert (= (and b!1627477 res!727802) b!1627490))

(assert (=> b!1627492 m!1956185))

(assert (=> b!1627492 m!1956183))

(declare-fun m!1956885 () Bool)

(assert (=> bm!105320 m!1956885))

(declare-fun m!1956893 () Bool)

(assert (=> bm!105321 m!1956893))

(declare-fun m!1956895 () Bool)

(assert (=> b!1627490 m!1956895))

(assert (=> b!1627490 m!1955903))

(assert (=> b!1627490 m!1955591))

(assert (=> b!1627490 m!1955903))

(assert (=> b!1627490 m!1955591))

(declare-fun m!1956899 () Bool)

(assert (=> b!1627490 m!1956899))

(assert (=> d!489969 m!1956197))

(declare-fun m!1956901 () Bool)

(assert (=> d!489969 m!1956901))

(declare-fun m!1956903 () Bool)

(assert (=> bm!105313 m!1956903))

(declare-fun m!1956907 () Bool)

(assert (=> b!1627477 m!1956907))

(assert (=> b!1627477 m!1956183))

(assert (=> b!1627477 m!1956185))

(assert (=> b!1627477 m!1956183))

(assert (=> b!1627477 m!1956185))

(assert (=> b!1627477 m!1956191))

(declare-fun m!1956909 () Bool)

(assert (=> bm!105319 m!1956909))

(assert (=> b!1627487 m!1956907))

(assert (=> b!1627487 m!1956183))

(assert (=> b!1627487 m!1956185))

(assert (=> b!1627487 m!1956183))

(assert (=> b!1627487 m!1956185))

(assert (=> b!1627487 m!1956191))

(declare-fun m!1956911 () Bool)

(assert (=> b!1627478 m!1956911))

(declare-fun m!1956913 () Bool)

(assert (=> bm!105312 m!1956913))

(declare-fun m!1956915 () Bool)

(assert (=> bm!105317 m!1956915))

(declare-fun m!1956917 () Bool)

(assert (=> b!1627481 m!1956917))

(declare-fun m!1956919 () Bool)

(assert (=> bm!105311 m!1956919))

(assert (=> b!1626975 d!489969))

(declare-fun d!489979 () Bool)

(declare-fun res!727809 () Bool)

(declare-fun e!1043841 () Bool)

(assert (=> d!489979 (=> res!727809 e!1043841)))

(assert (=> d!489979 (= res!727809 ((_ is Nil!17855) rules!1846))))

(assert (=> d!489979 (= (noDuplicateTag!1129 thiss!17113 rules!1846 Nil!17859) e!1043841)))

(declare-fun b!1627502 () Bool)

(declare-fun e!1043842 () Bool)

(assert (=> b!1627502 (= e!1043841 e!1043842)))

(declare-fun res!727810 () Bool)

(assert (=> b!1627502 (=> (not res!727810) (not e!1043842))))

(declare-fun contains!3121 (List!17929 String!20507) Bool)

(assert (=> b!1627502 (= res!727810 (not (contains!3121 Nil!17859 (tag!3423 (h!23256 rules!1846)))))))

(declare-fun b!1627503 () Bool)

(assert (=> b!1627503 (= e!1043842 (noDuplicateTag!1129 thiss!17113 (t!149058 rules!1846) (Cons!17859 (tag!3423 (h!23256 rules!1846)) Nil!17859)))))

(assert (= (and d!489979 (not res!727809)) b!1627502))

(assert (= (and b!1627502 res!727810) b!1627503))

(declare-fun m!1956925 () Bool)

(assert (=> b!1627502 m!1956925))

(declare-fun m!1956927 () Bool)

(assert (=> b!1627503 m!1956927))

(assert (=> b!1626714 d!489979))

(declare-fun d!489983 () Bool)

(declare-fun lt!588875 () Int)

(assert (=> d!489983 (>= lt!588875 0)))

(declare-fun e!1043843 () Int)

(assert (=> d!489983 (= lt!588875 e!1043843)))

(declare-fun c!264853 () Bool)

(assert (=> d!489983 (= c!264853 ((_ is Nil!17854) (_2!10119 (get!5150 lt!588346))))))

(assert (=> d!489983 (= (size!14282 (_2!10119 (get!5150 lt!588346))) lt!588875)))

(declare-fun b!1627504 () Bool)

(assert (=> b!1627504 (= e!1043843 0)))

(declare-fun b!1627505 () Bool)

(assert (=> b!1627505 (= e!1043843 (+ 1 (size!14282 (t!149057 (_2!10119 (get!5150 lt!588346))))))))

(assert (= (and d!489983 c!264853) b!1627504))

(assert (= (and d!489983 (not c!264853)) b!1627505))

(declare-fun m!1956929 () Bool)

(assert (=> b!1627505 m!1956929))

(assert (=> b!1626689 d!489983))

(assert (=> b!1626689 d!489939))

(declare-fun d!489985 () Bool)

(declare-fun lt!588876 () Int)

(assert (=> d!489985 (>= lt!588876 0)))

(declare-fun e!1043844 () Int)

(assert (=> d!489985 (= lt!588876 e!1043844)))

(declare-fun c!264854 () Bool)

(assert (=> d!489985 (= c!264854 ((_ is Nil!17854) lt!587986))))

(assert (=> d!489985 (= (size!14282 lt!587986) lt!588876)))

(declare-fun b!1627506 () Bool)

(assert (=> b!1627506 (= e!1043844 0)))

(declare-fun b!1627507 () Bool)

(assert (=> b!1627507 (= e!1043844 (+ 1 (size!14282 (t!149057 lt!587986))))))

(assert (= (and d!489985 c!264854) b!1627506))

(assert (= (and d!489985 (not c!264854)) b!1627507))

(declare-fun m!1956931 () Bool)

(assert (=> b!1627507 m!1956931))

(assert (=> b!1626689 d!489985))

(declare-fun d!489987 () Bool)

(assert (=> d!489987 (= (inv!23233 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (h!23257 tokens!457)))) (value!99305 (h!23257 tokens!457)))) (isBalanced!1794 (c!264623 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (h!23257 tokens!457)))) (value!99305 (h!23257 tokens!457))))))))

(declare-fun bs!394893 () Bool)

(assert (= bs!394893 d!489987))

(declare-fun m!1956933 () Bool)

(assert (=> bs!394893 m!1956933))

(assert (=> tb!93335 d!489987))

(declare-fun d!489989 () Bool)

(assert (=> d!489989 (= (isEmpty!10888 (list!7012 (_1!10117 (lex!1258 thiss!17113 rules!1846 (seqFromList!2040 lt!587996))))) ((_ is Nil!17856) (list!7012 (_1!10117 (lex!1258 thiss!17113 rules!1846 (seqFromList!2040 lt!587996))))))))

(assert (=> d!489587 d!489989))

(declare-fun d!489991 () Bool)

(assert (=> d!489991 (= (list!7012 (_1!10117 (lex!1258 thiss!17113 rules!1846 (seqFromList!2040 lt!587996)))) (list!7014 (c!264625 (_1!10117 (lex!1258 thiss!17113 rules!1846 (seqFromList!2040 lt!587996))))))))

(declare-fun bs!394894 () Bool)

(assert (= bs!394894 d!489991))

(declare-fun m!1956935 () Bool)

(assert (=> bs!394894 m!1956935))

(assert (=> d!489587 d!489991))

(declare-fun d!489993 () Bool)

(declare-fun lt!588879 () Bool)

(assert (=> d!489993 (= lt!588879 (isEmpty!10888 (list!7014 (c!264625 (_1!10117 (lex!1258 thiss!17113 rules!1846 (seqFromList!2040 lt!587996)))))))))

(declare-fun size!14292 (Conc!5939) Int)

(assert (=> d!489993 (= lt!588879 (= (size!14292 (c!264625 (_1!10117 (lex!1258 thiss!17113 rules!1846 (seqFromList!2040 lt!587996))))) 0))))

(assert (=> d!489993 (= (isEmpty!10889 (c!264625 (_1!10117 (lex!1258 thiss!17113 rules!1846 (seqFromList!2040 lt!587996))))) lt!588879)))

(declare-fun bs!394895 () Bool)

(assert (= bs!394895 d!489993))

(assert (=> bs!394895 m!1956935))

(assert (=> bs!394895 m!1956935))

(declare-fun m!1956937 () Bool)

(assert (=> bs!394895 m!1956937))

(declare-fun m!1956939 () Bool)

(assert (=> bs!394895 m!1956939))

(assert (=> d!489587 d!489993))

(assert (=> b!1626630 d!489957))

(declare-fun d!489995 () Bool)

(assert (=> d!489995 (= (isDefined!2683 (maxPrefixZipper!308 thiss!17113 rules!1846 (list!7011 (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457)))))) (not (isEmpty!10890 (maxPrefixZipper!308 thiss!17113 rules!1846 (list!7011 (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457))))))))))

(declare-fun bs!394896 () Bool)

(assert (= bs!394896 d!489995))

(assert (=> bs!394896 m!1956005))

(declare-fun m!1956941 () Bool)

(assert (=> bs!394896 m!1956941))

(assert (=> d!489735 d!489995))

(declare-fun d!489997 () Bool)

(declare-fun lt!588891 () Option!3316)

(assert (=> d!489997 (= lt!588891 (maxPrefix!1338 thiss!17113 rules!1846 (list!7011 (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457))))))))

(declare-fun e!1043847 () Option!3316)

(assert (=> d!489997 (= lt!588891 e!1043847)))

(declare-fun c!264857 () Bool)

(assert (=> d!489997 (= c!264857 (and ((_ is Cons!17855) rules!1846) ((_ is Nil!17855) (t!149058 rules!1846))))))

(declare-fun lt!588892 () Unit!28923)

(declare-fun lt!588894 () Unit!28923)

(assert (=> d!489997 (= lt!588892 lt!588894)))

(assert (=> d!489997 (isPrefix!1405 (list!7011 (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457)))) (list!7011 (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457)))))))

(assert (=> d!489997 (= lt!588894 (lemmaIsPrefixRefl!962 (list!7011 (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457)))) (list!7011 (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457))))))))

(assert (=> d!489997 (rulesValidInductive!974 thiss!17113 rules!1846)))

(assert (=> d!489997 (= (maxPrefixZipper!308 thiss!17113 rules!1846 (list!7011 (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457))))) lt!588891)))

(declare-fun call!105329 () Option!3316)

(declare-fun bm!105324 () Bool)

(declare-fun maxPrefixOneRuleZipper!107 (LexerInterface!2774 Rule!6090 List!17924) Option!3316)

(assert (=> bm!105324 (= call!105329 (maxPrefixOneRuleZipper!107 thiss!17113 (h!23256 rules!1846) (list!7011 (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457))))))))

(declare-fun b!1627512 () Bool)

(assert (=> b!1627512 (= e!1043847 call!105329)))

(declare-fun b!1627513 () Bool)

(declare-fun lt!588890 () Option!3316)

(declare-fun lt!588893 () Option!3316)

(assert (=> b!1627513 (= e!1043847 (ite (and ((_ is None!3315) lt!588890) ((_ is None!3315) lt!588893)) None!3315 (ite ((_ is None!3315) lt!588893) lt!588890 (ite ((_ is None!3315) lt!588890) lt!588893 (ite (>= (size!14278 (_1!10119 (v!24358 lt!588890))) (size!14278 (_1!10119 (v!24358 lt!588893)))) lt!588890 lt!588893)))))))

(assert (=> b!1627513 (= lt!588890 call!105329)))

(assert (=> b!1627513 (= lt!588893 (maxPrefixZipper!308 thiss!17113 (t!149058 rules!1846) (list!7011 (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457))))))))

(assert (= (and d!489997 c!264857) b!1627512))

(assert (= (and d!489997 (not c!264857)) b!1627513))

(assert (= (or b!1627512 b!1627513) bm!105324))

(assert (=> d!489997 m!1956003))

(assert (=> d!489997 m!1956019))

(assert (=> d!489997 m!1956003))

(assert (=> d!489997 m!1956003))

(assert (=> d!489997 m!1956573))

(assert (=> d!489997 m!1956003))

(assert (=> d!489997 m!1956003))

(assert (=> d!489997 m!1956575))

(assert (=> d!489997 m!1955653))

(assert (=> bm!105324 m!1956003))

(declare-fun m!1956943 () Bool)

(assert (=> bm!105324 m!1956943))

(assert (=> b!1627513 m!1956003))

(declare-fun m!1956945 () Bool)

(assert (=> b!1627513 m!1956945))

(assert (=> d!489735 d!489997))

(declare-fun d!489999 () Bool)

(assert (=> d!489999 (isPrefix!1405 lt!588475 lt!588472)))

(declare-fun lt!588897 () Unit!28923)

(declare-fun choose!9788 (List!17924 List!17924) Unit!28923)

(assert (=> d!489999 (= lt!588897 (choose!9788 lt!588475 lt!588472))))

(assert (=> d!489999 (= (lemmaIsPrefixRefl!962 lt!588475 lt!588472) lt!588897)))

(declare-fun bs!394897 () Bool)

(assert (= bs!394897 d!489999))

(assert (=> bs!394897 m!1956013))

(declare-fun m!1956947 () Bool)

(assert (=> bs!394897 m!1956947))

(assert (=> d!489735 d!489999))

(declare-fun b!1627514 () Bool)

(declare-fun e!1043848 () Bool)

(declare-fun e!1043850 () Bool)

(assert (=> b!1627514 (= e!1043848 e!1043850)))

(declare-fun res!727811 () Bool)

(assert (=> b!1627514 (=> (not res!727811) (not e!1043850))))

(assert (=> b!1627514 (= res!727811 (not ((_ is Nil!17854) lt!588472)))))

(declare-fun b!1627516 () Bool)

(assert (=> b!1627516 (= e!1043850 (isPrefix!1405 (tail!2367 lt!588475) (tail!2367 lt!588472)))))

(declare-fun b!1627515 () Bool)

(declare-fun res!727814 () Bool)

(assert (=> b!1627515 (=> (not res!727814) (not e!1043850))))

(assert (=> b!1627515 (= res!727814 (= (head!3449 lt!588475) (head!3449 lt!588472)))))

(declare-fun d!490001 () Bool)

(declare-fun e!1043849 () Bool)

(assert (=> d!490001 e!1043849))

(declare-fun res!727812 () Bool)

(assert (=> d!490001 (=> res!727812 e!1043849)))

(declare-fun lt!588898 () Bool)

(assert (=> d!490001 (= res!727812 (not lt!588898))))

(assert (=> d!490001 (= lt!588898 e!1043848)))

(declare-fun res!727813 () Bool)

(assert (=> d!490001 (=> res!727813 e!1043848)))

(assert (=> d!490001 (= res!727813 ((_ is Nil!17854) lt!588475))))

(assert (=> d!490001 (= (isPrefix!1405 lt!588475 lt!588472) lt!588898)))

(declare-fun b!1627517 () Bool)

(assert (=> b!1627517 (= e!1043849 (>= (size!14282 lt!588472) (size!14282 lt!588475)))))

(assert (= (and d!490001 (not res!727813)) b!1627514))

(assert (= (and b!1627514 res!727811) b!1627515))

(assert (= (and b!1627515 res!727814) b!1627516))

(assert (= (and d!490001 (not res!727812)) b!1627517))

(declare-fun m!1956949 () Bool)

(assert (=> b!1627516 m!1956949))

(declare-fun m!1956951 () Bool)

(assert (=> b!1627516 m!1956951))

(assert (=> b!1627516 m!1956949))

(assert (=> b!1627516 m!1956951))

(declare-fun m!1956953 () Bool)

(assert (=> b!1627516 m!1956953))

(declare-fun m!1956955 () Bool)

(assert (=> b!1627515 m!1956955))

(declare-fun m!1956957 () Bool)

(assert (=> b!1627515 m!1956957))

(declare-fun m!1956959 () Bool)

(assert (=> b!1627517 m!1956959))

(declare-fun m!1956961 () Bool)

(assert (=> b!1627517 m!1956961))

(assert (=> d!489735 d!490001))

(assert (=> d!489735 d!489889))

(declare-fun d!490003 () Bool)

(assert (=> d!490003 (= (isDefined!2682 lt!588477) (not (isEmpty!10891 lt!588477)))))

(declare-fun bs!394898 () Bool)

(assert (= bs!394898 d!490003))

(declare-fun m!1956963 () Bool)

(assert (=> bs!394898 m!1956963))

(assert (=> d!489735 d!490003))

(declare-fun d!490005 () Bool)

(assert (=> d!490005 true))

(declare-fun lt!588901 () Bool)

(declare-fun lambda!67296 () Int)

(declare-fun forall!4089 (List!17925 Int) Bool)

(assert (=> d!490005 (= lt!588901 (forall!4089 rules!1846 lambda!67296))))

(declare-fun e!1043855 () Bool)

(assert (=> d!490005 (= lt!588901 e!1043855)))

(declare-fun res!727819 () Bool)

(assert (=> d!490005 (=> res!727819 e!1043855)))

(assert (=> d!490005 (= res!727819 (not ((_ is Cons!17855) rules!1846)))))

(assert (=> d!490005 (= (rulesValidInductive!974 thiss!17113 rules!1846) lt!588901)))

(declare-fun b!1627522 () Bool)

(declare-fun e!1043856 () Bool)

(assert (=> b!1627522 (= e!1043855 e!1043856)))

(declare-fun res!727820 () Bool)

(assert (=> b!1627522 (=> (not res!727820) (not e!1043856))))

(assert (=> b!1627522 (= res!727820 (ruleValid!739 thiss!17113 (h!23256 rules!1846)))))

(declare-fun b!1627523 () Bool)

(assert (=> b!1627523 (= e!1043856 (rulesValidInductive!974 thiss!17113 (t!149058 rules!1846)))))

(assert (= (and d!490005 (not res!727819)) b!1627522))

(assert (= (and b!1627522 res!727820) b!1627523))

(declare-fun m!1956965 () Bool)

(assert (=> d!490005 m!1956965))

(assert (=> b!1627522 m!1956731))

(declare-fun m!1956967 () Bool)

(assert (=> b!1627523 m!1956967))

(assert (=> d!489735 d!490005))

(declare-fun b!1627544 () Bool)

(declare-fun e!1043875 () Bool)

(declare-fun e!1043881 () Bool)

(assert (=> b!1627544 (= e!1043875 e!1043881)))

(declare-fun res!727844 () Bool)

(assert (=> b!1627544 (=> (not res!727844) (not e!1043881))))

(declare-fun appendAssoc!107 (List!17924 List!17924 List!17924) Bool)

(assert (=> b!1627544 (= res!727844 (appendAssoc!107 (list!7016 (c!264623 lt!587987)) (list!7016 (left!14348 (left!14348 (c!264623 lt!587976)))) (list!7016 (right!14678 (left!14348 (c!264623 lt!587976))))))))

(declare-fun b!1627545 () Bool)

(declare-fun e!1043880 () Bool)

(declare-fun e!1043879 () Bool)

(assert (=> b!1627545 (= e!1043880 e!1043879)))

(declare-fun res!727842 () Bool)

(assert (=> b!1627545 (=> (not res!727842) (not e!1043879))))

(assert (=> b!1627545 (= res!727842 (appendAssoc!107 (list!7016 (left!14348 (right!14678 (c!264623 lt!587987)))) (list!7016 (right!14678 (right!14678 (c!264623 lt!587987)))) (list!7016 (c!264623 lt!587976))))))

(declare-fun d!490007 () Bool)

(declare-fun e!1043883 () Bool)

(assert (=> d!490007 e!1043883))

(declare-fun res!727843 () Bool)

(assert (=> d!490007 (=> (not res!727843) (not e!1043883))))

(declare-fun e!1043882 () Bool)

(assert (=> d!490007 (= res!727843 e!1043882)))

(declare-fun res!727840 () Bool)

(assert (=> d!490007 (=> res!727840 e!1043882)))

(assert (=> d!490007 (= res!727840 (not ((_ is Node!5938) (c!264623 lt!587987))))))

(assert (=> d!490007 (= (appendAssocInst!437 (c!264623 lt!587987) (c!264623 lt!587976)) true)))

(declare-fun b!1627546 () Bool)

(declare-fun e!1043878 () Bool)

(assert (=> b!1627546 (= e!1043882 e!1043878)))

(declare-fun res!727841 () Bool)

(assert (=> b!1627546 (=> (not res!727841) (not e!1043878))))

(assert (=> b!1627546 (= res!727841 (appendAssoc!107 (list!7016 (left!14348 (c!264623 lt!587987))) (list!7016 (right!14678 (c!264623 lt!587987))) (list!7016 (c!264623 lt!587976))))))

(declare-fun b!1627547 () Bool)

(declare-fun e!1043877 () Bool)

(assert (=> b!1627547 (= e!1043877 e!1043875)))

(declare-fun res!727845 () Bool)

(assert (=> b!1627547 (=> res!727845 e!1043875)))

(assert (=> b!1627547 (= res!727845 (not ((_ is Node!5938) (left!14348 (c!264623 lt!587976)))))))

(declare-fun b!1627548 () Bool)

(assert (=> b!1627548 (= e!1043878 e!1043880)))

(declare-fun res!727846 () Bool)

(assert (=> b!1627548 (=> res!727846 e!1043880)))

(assert (=> b!1627548 (= res!727846 (not ((_ is Node!5938) (right!14678 (c!264623 lt!587987)))))))

(declare-fun b!1627549 () Bool)

(assert (=> b!1627549 (= e!1043879 (appendAssoc!107 (list!7016 (left!14348 (c!264623 lt!587987))) (list!7016 (left!14348 (right!14678 (c!264623 lt!587987)))) (++!4751 (list!7016 (right!14678 (right!14678 (c!264623 lt!587987)))) (list!7016 (c!264623 lt!587976)))))))

(declare-fun b!1627550 () Bool)

(declare-fun e!1043876 () Bool)

(assert (=> b!1627550 (= e!1043876 e!1043877)))

(declare-fun res!727839 () Bool)

(assert (=> b!1627550 (=> (not res!727839) (not e!1043877))))

(assert (=> b!1627550 (= res!727839 (appendAssoc!107 (list!7016 (c!264623 lt!587987)) (list!7016 (left!14348 (c!264623 lt!587976))) (list!7016 (right!14678 (c!264623 lt!587976)))))))

(declare-fun b!1627551 () Bool)

(assert (=> b!1627551 (= e!1043881 (appendAssoc!107 (++!4751 (list!7016 (c!264623 lt!587987)) (list!7016 (left!14348 (left!14348 (c!264623 lt!587976))))) (list!7016 (right!14678 (left!14348 (c!264623 lt!587976)))) (list!7016 (right!14678 (c!264623 lt!587976)))))))

(declare-fun b!1627552 () Bool)

(assert (=> b!1627552 (= e!1043883 e!1043876)))

(declare-fun res!727847 () Bool)

(assert (=> b!1627552 (=> res!727847 e!1043876)))

(assert (=> b!1627552 (= res!727847 (not ((_ is Node!5938) (c!264623 lt!587976))))))

(assert (= (and d!490007 (not res!727840)) b!1627546))

(assert (= (and b!1627546 res!727841) b!1627548))

(assert (= (and b!1627548 (not res!727846)) b!1627545))

(assert (= (and b!1627545 res!727842) b!1627549))

(assert (= (and d!490007 res!727843) b!1627552))

(assert (= (and b!1627552 (not res!727847)) b!1627550))

(assert (= (and b!1627550 res!727839) b!1627547))

(assert (= (and b!1627547 (not res!727845)) b!1627544))

(assert (= (and b!1627544 res!727844) b!1627551))

(declare-fun m!1956969 () Bool)

(assert (=> b!1627551 m!1956969))

(assert (=> b!1627551 m!1955903))

(declare-fun m!1956971 () Bool)

(assert (=> b!1627551 m!1956971))

(declare-fun m!1956973 () Bool)

(assert (=> b!1627551 m!1956973))

(assert (=> b!1627551 m!1956971))

(assert (=> b!1627551 m!1956969))

(declare-fun m!1956975 () Bool)

(assert (=> b!1627551 m!1956975))

(declare-fun m!1956977 () Bool)

(assert (=> b!1627551 m!1956977))

(assert (=> b!1627551 m!1955903))

(assert (=> b!1627551 m!1956977))

(assert (=> b!1627551 m!1956973))

(declare-fun m!1956979 () Bool)

(assert (=> b!1627546 m!1956979))

(declare-fun m!1956981 () Bool)

(assert (=> b!1627546 m!1956981))

(assert (=> b!1627546 m!1955591))

(assert (=> b!1627546 m!1956979))

(assert (=> b!1627546 m!1956981))

(assert (=> b!1627546 m!1955591))

(declare-fun m!1956983 () Bool)

(assert (=> b!1627546 m!1956983))

(declare-fun m!1956985 () Bool)

(assert (=> b!1627545 m!1956985))

(declare-fun m!1956987 () Bool)

(assert (=> b!1627545 m!1956987))

(assert (=> b!1627545 m!1955591))

(assert (=> b!1627545 m!1956985))

(assert (=> b!1627545 m!1956987))

(assert (=> b!1627545 m!1955591))

(declare-fun m!1956989 () Bool)

(assert (=> b!1627545 m!1956989))

(assert (=> b!1627549 m!1956979))

(assert (=> b!1627549 m!1956985))

(declare-fun m!1956991 () Bool)

(assert (=> b!1627549 m!1956991))

(declare-fun m!1956993 () Bool)

(assert (=> b!1627549 m!1956993))

(assert (=> b!1627549 m!1955591))

(assert (=> b!1627549 m!1956985))

(assert (=> b!1627549 m!1956987))

(assert (=> b!1627549 m!1955591))

(assert (=> b!1627549 m!1956991))

(assert (=> b!1627549 m!1956979))

(assert (=> b!1627549 m!1956987))

(assert (=> b!1627550 m!1955903))

(declare-fun m!1956995 () Bool)

(assert (=> b!1627550 m!1956995))

(assert (=> b!1627550 m!1956969))

(assert (=> b!1627550 m!1955903))

(assert (=> b!1627550 m!1956995))

(assert (=> b!1627550 m!1956969))

(declare-fun m!1956997 () Bool)

(assert (=> b!1627550 m!1956997))

(assert (=> b!1627544 m!1955903))

(assert (=> b!1627544 m!1956977))

(assert (=> b!1627544 m!1956971))

(assert (=> b!1627544 m!1955903))

(assert (=> b!1627544 m!1956977))

(assert (=> b!1627544 m!1956971))

(declare-fun m!1956999 () Bool)

(assert (=> b!1627544 m!1956999))

(assert (=> d!489793 d!490007))

(assert (=> d!489793 d!489969))

(declare-fun d!490009 () Bool)

(declare-fun lt!588902 () Bool)

(assert (=> d!490009 (= lt!588902 (isEmpty!10881 (list!7011 (_2!10117 lt!588323))))))

(assert (=> d!490009 (= lt!588902 (isEmpty!10896 (c!264623 (_2!10117 lt!588323))))))

(assert (=> d!490009 (= (isEmpty!10887 (_2!10117 lt!588323)) lt!588902)))

(declare-fun bs!394899 () Bool)

(assert (= bs!394899 d!490009))

(declare-fun m!1957001 () Bool)

(assert (=> bs!394899 m!1957001))

(assert (=> bs!394899 m!1957001))

(declare-fun m!1957003 () Bool)

(assert (=> bs!394899 m!1957003))

(declare-fun m!1957005 () Bool)

(assert (=> bs!394899 m!1957005))

(assert (=> b!1626624 d!490009))

(declare-fun d!490011 () Bool)

(declare-fun c!264860 () Bool)

(assert (=> d!490011 (= c!264860 ((_ is Node!5938) (c!264623 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (h!23257 tokens!457)))) (value!99305 (h!23257 tokens!457))))))))

(declare-fun e!1043888 () Bool)

(assert (=> d!490011 (= (inv!23232 (c!264623 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (h!23257 tokens!457)))) (value!99305 (h!23257 tokens!457))))) e!1043888)))

(declare-fun b!1627559 () Bool)

(declare-fun inv!23236 (Conc!5938) Bool)

(assert (=> b!1627559 (= e!1043888 (inv!23236 (c!264623 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (h!23257 tokens!457)))) (value!99305 (h!23257 tokens!457))))))))

(declare-fun b!1627560 () Bool)

(declare-fun e!1043889 () Bool)

(assert (=> b!1627560 (= e!1043888 e!1043889)))

(declare-fun res!727850 () Bool)

(assert (=> b!1627560 (= res!727850 (not ((_ is Leaf!8731) (c!264623 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (h!23257 tokens!457)))) (value!99305 (h!23257 tokens!457)))))))))

(assert (=> b!1627560 (=> res!727850 e!1043889)))

(declare-fun b!1627561 () Bool)

(declare-fun inv!23237 (Conc!5938) Bool)

(assert (=> b!1627561 (= e!1043889 (inv!23237 (c!264623 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (h!23257 tokens!457)))) (value!99305 (h!23257 tokens!457))))))))

(assert (= (and d!490011 c!264860) b!1627559))

(assert (= (and d!490011 (not c!264860)) b!1627560))

(assert (= (and b!1627560 (not res!727850)) b!1627561))

(declare-fun m!1957007 () Bool)

(assert (=> b!1627559 m!1957007))

(declare-fun m!1957009 () Bool)

(assert (=> b!1627561 m!1957009))

(assert (=> b!1626535 d!490011))

(declare-fun bs!394900 () Bool)

(declare-fun d!490013 () Bool)

(assert (= bs!394900 (and d!490013 d!490005)))

(declare-fun lambda!67299 () Int)

(assert (=> bs!394900 (= lambda!67299 lambda!67296)))

(assert (=> d!490013 true))

(declare-fun lt!588907 () Bool)

(assert (=> d!490013 (= lt!588907 (rulesValidInductive!974 thiss!17113 rules!1846))))

(assert (=> d!490013 (= lt!588907 (forall!4089 rules!1846 lambda!67299))))

(assert (=> d!490013 (= (rulesValid!1129 thiss!17113 rules!1846) lt!588907)))

(declare-fun bs!394901 () Bool)

(assert (= bs!394901 d!490013))

(assert (=> bs!394901 m!1955653))

(declare-fun m!1957011 () Bool)

(assert (=> bs!394901 m!1957011))

(assert (=> d!489673 d!490013))

(declare-fun d!490015 () Bool)

(declare-fun c!264861 () Bool)

(assert (=> d!490015 (= c!264861 ((_ is Node!5938) (c!264623 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 tokens!457))))) (value!99305 (h!23257 (t!149059 tokens!457)))))))))

(declare-fun e!1043890 () Bool)

(assert (=> d!490015 (= (inv!23232 (c!264623 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 tokens!457))))) (value!99305 (h!23257 (t!149059 tokens!457)))))) e!1043890)))

(declare-fun b!1627562 () Bool)

(assert (=> b!1627562 (= e!1043890 (inv!23236 (c!264623 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 tokens!457))))) (value!99305 (h!23257 (t!149059 tokens!457)))))))))

(declare-fun b!1627563 () Bool)

(declare-fun e!1043891 () Bool)

(assert (=> b!1627563 (= e!1043890 e!1043891)))

(declare-fun res!727851 () Bool)

(assert (=> b!1627563 (= res!727851 (not ((_ is Leaf!8731) (c!264623 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 tokens!457))))) (value!99305 (h!23257 (t!149059 tokens!457))))))))))

(assert (=> b!1627563 (=> res!727851 e!1043891)))

(declare-fun b!1627564 () Bool)

(assert (=> b!1627564 (= e!1043891 (inv!23237 (c!264623 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 tokens!457))))) (value!99305 (h!23257 (t!149059 tokens!457)))))))))

(assert (= (and d!490015 c!264861) b!1627562))

(assert (= (and d!490015 (not c!264861)) b!1627563))

(assert (= (and b!1627563 (not res!727851)) b!1627564))

(declare-fun m!1957015 () Bool)

(assert (=> b!1627562 m!1957015))

(declare-fun m!1957017 () Bool)

(assert (=> b!1627564 m!1957017))

(assert (=> b!1626963 d!490015))

(declare-fun d!490019 () Bool)

(assert (=> d!490019 (= (list!7011 lt!588497) (list!7016 (c!264623 lt!588497)))))

(declare-fun bs!394903 () Bool)

(assert (= bs!394903 d!490019))

(declare-fun m!1957019 () Bool)

(assert (=> bs!394903 m!1957019))

(assert (=> d!489765 d!490019))

(declare-fun d!490021 () Bool)

(declare-fun e!1043899 () Bool)

(assert (=> d!490021 e!1043899))

(declare-fun res!727861 () Bool)

(assert (=> d!490021 (=> (not res!727861) (not e!1043899))))

(declare-fun lt!588915 () BalanceConc!11820)

(assert (=> d!490021 (= res!727861 (= (list!7011 lt!588915) (Cons!17854 (apply!4568 (charsOf!1794 (h!23257 (t!149059 tokens!457))) 0) Nil!17854)))))

(declare-fun choose!9789 (C!9120) BalanceConc!11820)

(assert (=> d!490021 (= lt!588915 (choose!9789 (apply!4568 (charsOf!1794 (h!23257 (t!149059 tokens!457))) 0)))))

(assert (=> d!490021 (= (singleton!674 (apply!4568 (charsOf!1794 (h!23257 (t!149059 tokens!457))) 0)) lt!588915)))

(declare-fun b!1627574 () Bool)

(assert (=> b!1627574 (= e!1043899 (isBalanced!1794 (c!264623 lt!588915)))))

(assert (= (and d!490021 res!727861) b!1627574))

(declare-fun m!1957045 () Bool)

(assert (=> d!490021 m!1957045))

(assert (=> d!490021 m!1954979))

(declare-fun m!1957047 () Bool)

(assert (=> d!490021 m!1957047))

(declare-fun m!1957049 () Bool)

(assert (=> b!1627574 m!1957049))

(assert (=> d!489765 d!490021))

(declare-fun d!490029 () Bool)

(assert (=> d!490029 true))

(declare-fun lambda!67302 () Int)

(declare-fun order!10599 () Int)

(declare-fun dynLambda!7971 (Int Int) Int)

(assert (=> d!490029 (< (dynLambda!7967 order!10595 (toChars!4431 (transformation!3145 (h!23256 rules!1846)))) (dynLambda!7971 order!10599 lambda!67302))))

(assert (=> d!490029 true))

(assert (=> d!490029 (< (dynLambda!7965 order!10591 (toValue!4572 (transformation!3145 (h!23256 rules!1846)))) (dynLambda!7971 order!10599 lambda!67302))))

(declare-fun Forall!644 (Int) Bool)

(assert (=> d!490029 (= (semiInverseModEq!1201 (toChars!4431 (transformation!3145 (h!23256 rules!1846))) (toValue!4572 (transformation!3145 (h!23256 rules!1846)))) (Forall!644 lambda!67302))))

(declare-fun bs!394909 () Bool)

(assert (= bs!394909 d!490029))

(declare-fun m!1957065 () Bool)

(assert (=> bs!394909 m!1957065))

(assert (=> d!489731 d!490029))

(assert (=> b!1626604 d!489611))

(assert (=> b!1626604 d!489701))

(declare-fun d!490043 () Bool)

(declare-fun lt!588917 () Int)

(assert (=> d!490043 (= lt!588917 (size!14282 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457))))))))

(assert (=> d!490043 (= lt!588917 (size!14290 (c!264623 (charsOf!1794 (h!23257 (t!149059 tokens!457))))))))

(assert (=> d!490043 (= (size!14284 (charsOf!1794 (h!23257 (t!149059 tokens!457)))) lt!588917)))

(declare-fun bs!394910 () Bool)

(assert (= bs!394910 d!490043))

(assert (=> bs!394910 m!1954987))

(assert (=> bs!394910 m!1955231))

(assert (=> bs!394910 m!1955231))

(declare-fun m!1957067 () Bool)

(assert (=> bs!394910 m!1957067))

(declare-fun m!1957069 () Bool)

(assert (=> bs!394910 m!1957069))

(assert (=> b!1626604 d!490043))

(declare-fun d!490045 () Bool)

(assert (=> d!490045 (rulesProduceIndividualToken!1426 thiss!17113 rules!1846 (h!23257 tokens!457))))

(declare-fun lt!588964 () Unit!28923)

(declare-fun choose!9790 (LexerInterface!2774 List!17925 List!17926 Token!5856) Unit!28923)

(assert (=> d!490045 (= lt!588964 (choose!9790 thiss!17113 rules!1846 tokens!457 (h!23257 tokens!457)))))

(assert (=> d!490045 (not (isEmpty!10883 rules!1846))))

(assert (=> d!490045 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!567 thiss!17113 rules!1846 tokens!457 (h!23257 tokens!457)) lt!588964)))

(declare-fun bs!394913 () Bool)

(assert (= bs!394913 d!490045))

(assert (=> bs!394913 m!1955017))

(declare-fun m!1957243 () Bool)

(assert (=> bs!394913 m!1957243))

(assert (=> bs!394913 m!1954901))

(assert (=> b!1626604 d!490045))

(assert (=> b!1626604 d!489789))

(declare-fun d!490087 () Bool)

(declare-fun lt!588965 () Bool)

(declare-fun e!1043971 () Bool)

(assert (=> d!490087 (= lt!588965 e!1043971)))

(declare-fun res!727940 () Bool)

(assert (=> d!490087 (=> (not res!727940) (not e!1043971))))

(assert (=> d!490087 (= res!727940 (= (list!7012 (_1!10117 (lex!1258 thiss!17113 rules!1846 (print!1305 thiss!17113 (singletonSeq!1568 (h!23257 (t!149059 tokens!457))))))) (list!7012 (singletonSeq!1568 (h!23257 (t!149059 tokens!457))))))))

(declare-fun e!1043972 () Bool)

(assert (=> d!490087 (= lt!588965 e!1043972)))

(declare-fun res!727941 () Bool)

(assert (=> d!490087 (=> (not res!727941) (not e!1043972))))

(declare-fun lt!588966 () tuple2!17430)

(assert (=> d!490087 (= res!727941 (= (size!14283 (_1!10117 lt!588966)) 1))))

(assert (=> d!490087 (= lt!588966 (lex!1258 thiss!17113 rules!1846 (print!1305 thiss!17113 (singletonSeq!1568 (h!23257 (t!149059 tokens!457))))))))

(assert (=> d!490087 (not (isEmpty!10883 rules!1846))))

(assert (=> d!490087 (= (rulesProduceIndividualToken!1426 thiss!17113 rules!1846 (h!23257 (t!149059 tokens!457))) lt!588965)))

(declare-fun b!1627693 () Bool)

(declare-fun res!727939 () Bool)

(assert (=> b!1627693 (=> (not res!727939) (not e!1043972))))

(assert (=> b!1627693 (= res!727939 (= (apply!4574 (_1!10117 lt!588966) 0) (h!23257 (t!149059 tokens!457))))))

(declare-fun b!1627694 () Bool)

(assert (=> b!1627694 (= e!1043972 (isEmpty!10887 (_2!10117 lt!588966)))))

(declare-fun b!1627695 () Bool)

(assert (=> b!1627695 (= e!1043971 (isEmpty!10887 (_2!10117 (lex!1258 thiss!17113 rules!1846 (print!1305 thiss!17113 (singletonSeq!1568 (h!23257 (t!149059 tokens!457))))))))))

(assert (= (and d!490087 res!727941) b!1627693))

(assert (= (and b!1627693 res!727939) b!1627694))

(assert (= (and d!490087 res!727940) b!1627695))

(declare-fun m!1957245 () Bool)

(assert (=> d!490087 m!1957245))

(assert (=> d!490087 m!1955229))

(assert (=> d!490087 m!1955247))

(assert (=> d!490087 m!1954901))

(assert (=> d!490087 m!1955229))

(assert (=> d!490087 m!1955247))

(declare-fun m!1957247 () Bool)

(assert (=> d!490087 m!1957247))

(assert (=> d!490087 m!1955229))

(declare-fun m!1957249 () Bool)

(assert (=> d!490087 m!1957249))

(declare-fun m!1957251 () Bool)

(assert (=> d!490087 m!1957251))

(declare-fun m!1957253 () Bool)

(assert (=> b!1627693 m!1957253))

(declare-fun m!1957255 () Bool)

(assert (=> b!1627694 m!1957255))

(assert (=> b!1627695 m!1955229))

(assert (=> b!1627695 m!1955229))

(assert (=> b!1627695 m!1955247))

(assert (=> b!1627695 m!1955247))

(assert (=> b!1627695 m!1957247))

(declare-fun m!1957257 () Bool)

(assert (=> b!1627695 m!1957257))

(assert (=> b!1626604 d!490087))

(declare-fun d!490089 () Bool)

(assert (=> d!490089 (rulesProduceIndividualToken!1426 thiss!17113 rules!1846 (h!23257 (t!149059 tokens!457)))))

(declare-fun lt!588970 () Unit!28923)

(assert (=> d!490089 (= lt!588970 (choose!9790 thiss!17113 rules!1846 tokens!457 (h!23257 (t!149059 tokens!457))))))

(assert (=> d!490089 (not (isEmpty!10883 rules!1846))))

(assert (=> d!490089 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!567 thiss!17113 rules!1846 tokens!457 (h!23257 (t!149059 tokens!457))) lt!588970)))

(declare-fun bs!394915 () Bool)

(assert (= bs!394915 d!490089))

(assert (=> bs!394915 m!1955455))

(declare-fun m!1957261 () Bool)

(assert (=> bs!394915 m!1957261))

(assert (=> bs!394915 m!1954901))

(assert (=> b!1626604 d!490089))

(declare-fun d!490093 () Bool)

(assert (=> d!490093 (= (inv!23225 (tag!3423 (rule!4971 (h!23257 (t!149059 tokens!457))))) (= (mod (str.len (value!99304 (tag!3423 (rule!4971 (h!23257 (t!149059 tokens!457)))))) 2) 0))))

(assert (=> b!1627092 d!490093))

(declare-fun d!490095 () Bool)

(declare-fun res!727949 () Bool)

(declare-fun e!1043977 () Bool)

(assert (=> d!490095 (=> (not res!727949) (not e!1043977))))

(assert (=> d!490095 (= res!727949 (semiInverseModEq!1201 (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 tokens!457))))) (toValue!4572 (transformation!3145 (rule!4971 (h!23257 (t!149059 tokens!457)))))))))

(assert (=> d!490095 (= (inv!23228 (transformation!3145 (rule!4971 (h!23257 (t!149059 tokens!457))))) e!1043977)))

(declare-fun b!1627705 () Bool)

(assert (=> b!1627705 (= e!1043977 (equivClasses!1142 (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 tokens!457))))) (toValue!4572 (transformation!3145 (rule!4971 (h!23257 (t!149059 tokens!457)))))))))

(assert (= (and d!490095 res!727949) b!1627705))

(declare-fun m!1957263 () Bool)

(assert (=> d!490095 m!1957263))

(declare-fun m!1957265 () Bool)

(assert (=> b!1627705 m!1957265))

(assert (=> b!1627092 d!490095))

(declare-fun d!490097 () Bool)

(declare-fun e!1043979 () Bool)

(assert (=> d!490097 e!1043979))

(declare-fun res!727950 () Bool)

(assert (=> d!490097 (=> (not res!727950) (not e!1043979))))

(declare-fun lt!588976 () List!17924)

(assert (=> d!490097 (= res!727950 (= (content!2476 lt!588976) ((_ map or) (content!2476 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588346))))) (content!2476 (_2!10119 (get!5150 lt!588346))))))))

(declare-fun e!1043978 () List!17924)

(assert (=> d!490097 (= lt!588976 e!1043978)))

(declare-fun c!264880 () Bool)

(assert (=> d!490097 (= c!264880 ((_ is Nil!17854) (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588346))))))))

(assert (=> d!490097 (= (++!4751 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588346)))) (_2!10119 (get!5150 lt!588346))) lt!588976)))

(declare-fun b!1627706 () Bool)

(assert (=> b!1627706 (= e!1043978 (_2!10119 (get!5150 lt!588346)))))

(declare-fun b!1627708 () Bool)

(declare-fun res!727951 () Bool)

(assert (=> b!1627708 (=> (not res!727951) (not e!1043979))))

(assert (=> b!1627708 (= res!727951 (= (size!14282 lt!588976) (+ (size!14282 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588346))))) (size!14282 (_2!10119 (get!5150 lt!588346))))))))

(declare-fun b!1627707 () Bool)

(assert (=> b!1627707 (= e!1043978 (Cons!17854 (h!23255 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588346))))) (++!4751 (t!149057 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588346))))) (_2!10119 (get!5150 lt!588346)))))))

(declare-fun b!1627709 () Bool)

(assert (=> b!1627709 (= e!1043979 (or (not (= (_2!10119 (get!5150 lt!588346)) Nil!17854)) (= lt!588976 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588346)))))))))

(assert (= (and d!490097 c!264880) b!1627706))

(assert (= (and d!490097 (not c!264880)) b!1627707))

(assert (= (and d!490097 res!727950) b!1627708))

(assert (= (and b!1627708 res!727951) b!1627709))

(declare-fun m!1957267 () Bool)

(assert (=> d!490097 m!1957267))

(assert (=> d!490097 m!1955641))

(declare-fun m!1957269 () Bool)

(assert (=> d!490097 m!1957269))

(declare-fun m!1957271 () Bool)

(assert (=> d!490097 m!1957271))

(declare-fun m!1957273 () Bool)

(assert (=> b!1627708 m!1957273))

(assert (=> b!1627708 m!1955641))

(declare-fun m!1957275 () Bool)

(assert (=> b!1627708 m!1957275))

(assert (=> b!1627708 m!1955635))

(declare-fun m!1957277 () Bool)

(assert (=> b!1627707 m!1957277))

(assert (=> b!1626682 d!490097))

(declare-fun d!490099 () Bool)

(assert (=> d!490099 (= (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588346)))) (list!7016 (c!264623 (charsOf!1794 (_1!10119 (get!5150 lt!588346))))))))

(declare-fun bs!394916 () Bool)

(assert (= bs!394916 d!490099))

(declare-fun m!1957283 () Bool)

(assert (=> bs!394916 m!1957283))

(assert (=> b!1626682 d!490099))

(declare-fun d!490101 () Bool)

(declare-fun lt!588977 () BalanceConc!11820)

(assert (=> d!490101 (= (list!7011 lt!588977) (originalCharacters!3959 (_1!10119 (get!5150 lt!588346))))))

(assert (=> d!490101 (= lt!588977 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588346))))) (value!99305 (_1!10119 (get!5150 lt!588346)))))))

(assert (=> d!490101 (= (charsOf!1794 (_1!10119 (get!5150 lt!588346))) lt!588977)))

(declare-fun b_lambda!51265 () Bool)

(assert (=> (not b_lambda!51265) (not d!490101)))

(declare-fun tb!93423 () Bool)

(declare-fun t!149176 () Bool)

(assert (=> (and b!1626382 (= (toChars!4431 (transformation!3145 (rule!4971 (h!23257 tokens!457)))) (toChars!4431 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588346)))))) t!149176) tb!93423))

(declare-fun b!1627710 () Bool)

(declare-fun e!1043980 () Bool)

(declare-fun tp!473039 () Bool)

(assert (=> b!1627710 (= e!1043980 (and (inv!23232 (c!264623 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588346))))) (value!99305 (_1!10119 (get!5150 lt!588346)))))) tp!473039))))

(declare-fun result!112684 () Bool)

(assert (=> tb!93423 (= result!112684 (and (inv!23233 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588346))))) (value!99305 (_1!10119 (get!5150 lt!588346))))) e!1043980))))

(assert (= tb!93423 b!1627710))

(declare-fun m!1957309 () Bool)

(assert (=> b!1627710 m!1957309))

(declare-fun m!1957313 () Bool)

(assert (=> tb!93423 m!1957313))

(assert (=> d!490101 t!149176))

(declare-fun b_and!115437 () Bool)

(assert (= b_and!115397 (and (=> t!149176 result!112684) b_and!115437)))

(declare-fun tb!93425 () Bool)

(declare-fun t!149178 () Bool)

(assert (=> (and b!1626369 (= (toChars!4431 (transformation!3145 (h!23256 rules!1846))) (toChars!4431 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588346)))))) t!149178) tb!93425))

(declare-fun result!112686 () Bool)

(assert (= result!112686 result!112684))

(assert (=> d!490101 t!149178))

(declare-fun b_and!115439 () Bool)

(assert (= b_and!115399 (and (=> t!149178 result!112686) b_and!115439)))

(declare-fun tb!93427 () Bool)

(declare-fun t!149180 () Bool)

(assert (=> (and b!1627093 (= (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 tokens!457))))) (toChars!4431 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588346)))))) t!149180) tb!93427))

(declare-fun result!112688 () Bool)

(assert (= result!112688 result!112684))

(assert (=> d!490101 t!149180))

(declare-fun b_and!115441 () Bool)

(assert (= b_and!115401 (and (=> t!149180 result!112688) b_and!115441)))

(declare-fun t!149182 () Bool)

(declare-fun tb!93429 () Bool)

(assert (=> (and b!1627118 (= (toChars!4431 (transformation!3145 (h!23256 (t!149058 rules!1846)))) (toChars!4431 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588346)))))) t!149182) tb!93429))

(declare-fun result!112690 () Bool)

(assert (= result!112690 result!112684))

(assert (=> d!490101 t!149182))

(declare-fun b_and!115443 () Bool)

(assert (= b_and!115403 (and (=> t!149182 result!112690) b_and!115443)))

(declare-fun m!1957327 () Bool)

(assert (=> d!490101 m!1957327))

(declare-fun m!1957329 () Bool)

(assert (=> d!490101 m!1957329))

(assert (=> b!1626682 d!490101))

(assert (=> b!1626682 d!489939))

(assert (=> b!1626919 d!489883))

(declare-fun d!490103 () Bool)

(assert (=> d!490103 (= (get!5150 (maxPrefixZipper!308 thiss!17113 rules!1846 (list!7011 (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457)))))) (v!24358 (maxPrefixZipper!308 thiss!17113 rules!1846 (list!7011 (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457)))))))))

(assert (=> b!1626919 d!490103))

(assert (=> b!1626919 d!489997))

(assert (=> b!1626919 d!489889))

(declare-fun d!490107 () Bool)

(declare-fun c!264890 () Bool)

(assert (=> d!490107 (= c!264890 (= lt!588527 (size!14284 (++!4752 lt!587987 lt!587976))))))

(declare-fun e!1043995 () Bool)

(assert (=> d!490107 (= (prefixMatchZipperSequence!537 lt!588518 (++!4752 lt!587987 lt!587976) lt!588527) e!1043995)))

(declare-fun b!1627739 () Bool)

(declare-fun lostCauseZipper!32 ((InoxSet Context!1738)) Bool)

(assert (=> b!1627739 (= e!1043995 (not (lostCauseZipper!32 lt!588518)))))

(declare-fun b!1627740 () Bool)

(declare-fun derivationStepZipper!56 ((InoxSet Context!1738) C!9120) (InoxSet Context!1738))

(assert (=> b!1627740 (= e!1043995 (prefixMatchZipperSequence!537 (derivationStepZipper!56 lt!588518 (apply!4568 (++!4752 lt!587987 lt!587976) lt!588527)) (++!4752 lt!587987 lt!587976) (+ lt!588527 1)))))

(assert (= (and d!490107 c!264890) b!1627739))

(assert (= (and d!490107 (not c!264890)) b!1627740))

(assert (=> d!490107 m!1954983))

(declare-fun m!1957369 () Bool)

(assert (=> d!490107 m!1957369))

(declare-fun m!1957371 () Bool)

(assert (=> b!1627739 m!1957371))

(assert (=> b!1627740 m!1954983))

(declare-fun m!1957373 () Bool)

(assert (=> b!1627740 m!1957373))

(assert (=> b!1627740 m!1957373))

(declare-fun m!1957377 () Bool)

(assert (=> b!1627740 m!1957377))

(assert (=> b!1627740 m!1957377))

(assert (=> b!1627740 m!1954983))

(declare-fun m!1957379 () Bool)

(assert (=> b!1627740 m!1957379))

(assert (=> d!489775 d!490107))

(declare-fun b!1627764 () Bool)

(declare-fun e!1044013 () Bool)

(declare-fun call!105350 () Bool)

(assert (=> b!1627764 (= e!1044013 call!105350)))

(declare-fun b!1627765 () Bool)

(declare-fun e!1044014 () Bool)

(declare-fun e!1044018 () Bool)

(assert (=> b!1627765 (= e!1044014 e!1044018)))

(declare-fun res!727975 () Bool)

(assert (=> b!1627765 (= res!727975 (not (nullable!1319 (reg!4802 lt!587975))))))

(assert (=> b!1627765 (=> (not res!727975) (not e!1044018))))

(declare-fun bm!105343 () Bool)

(declare-fun call!105348 () Bool)

(declare-fun call!105349 () Bool)

(assert (=> bm!105343 (= call!105348 call!105349)))

(declare-fun bm!105344 () Bool)

(declare-fun c!264898 () Bool)

(assert (=> bm!105344 (= call!105350 (validRegex!1780 (ite c!264898 (regOne!9459 lt!587975) (regTwo!9458 lt!587975))))))

(declare-fun b!1627766 () Bool)

(declare-fun e!1044015 () Bool)

(assert (=> b!1627766 (= e!1044015 e!1044013)))

(declare-fun res!727973 () Bool)

(assert (=> b!1627766 (=> (not res!727973) (not e!1044013))))

(assert (=> b!1627766 (= res!727973 call!105348)))

(declare-fun b!1627767 () Bool)

(declare-fun res!727974 () Bool)

(declare-fun e!1044019 () Bool)

(assert (=> b!1627767 (=> (not res!727974) (not e!1044019))))

(assert (=> b!1627767 (= res!727974 call!105350)))

(declare-fun e!1044016 () Bool)

(assert (=> b!1627767 (= e!1044016 e!1044019)))

(declare-fun c!264897 () Bool)

(declare-fun bm!105345 () Bool)

(assert (=> bm!105345 (= call!105349 (validRegex!1780 (ite c!264897 (reg!4802 lt!587975) (ite c!264898 (regTwo!9459 lt!587975) (regOne!9458 lt!587975)))))))

(declare-fun b!1627768 () Bool)

(assert (=> b!1627768 (= e!1044014 e!1044016)))

(assert (=> b!1627768 (= c!264898 ((_ is Union!4473) lt!587975))))

(declare-fun b!1627769 () Bool)

(declare-fun e!1044017 () Bool)

(assert (=> b!1627769 (= e!1044017 e!1044014)))

(assert (=> b!1627769 (= c!264897 ((_ is Star!4473) lt!587975))))

(declare-fun b!1627770 () Bool)

(declare-fun res!727972 () Bool)

(assert (=> b!1627770 (=> res!727972 e!1044015)))

(assert (=> b!1627770 (= res!727972 (not ((_ is Concat!7709) lt!587975)))))

(assert (=> b!1627770 (= e!1044016 e!1044015)))

(declare-fun d!490125 () Bool)

(declare-fun res!727976 () Bool)

(assert (=> d!490125 (=> res!727976 e!1044017)))

(assert (=> d!490125 (= res!727976 ((_ is ElementMatch!4473) lt!587975))))

(assert (=> d!490125 (= (validRegex!1780 lt!587975) e!1044017)))

(declare-fun b!1627771 () Bool)

(assert (=> b!1627771 (= e!1044018 call!105349)))

(declare-fun b!1627772 () Bool)

(assert (=> b!1627772 (= e!1044019 call!105348)))

(assert (= (and d!490125 (not res!727976)) b!1627769))

(assert (= (and b!1627769 c!264897) b!1627765))

(assert (= (and b!1627769 (not c!264897)) b!1627768))

(assert (= (and b!1627765 res!727975) b!1627771))

(assert (= (and b!1627768 c!264898) b!1627767))

(assert (= (and b!1627768 (not c!264898)) b!1627770))

(assert (= (and b!1627767 res!727974) b!1627772))

(assert (= (and b!1627770 (not res!727972)) b!1627766))

(assert (= (and b!1627766 res!727973) b!1627764))

(assert (= (or b!1627772 b!1627766) bm!105343))

(assert (= (or b!1627767 b!1627764) bm!105344))

(assert (= (or b!1627771 bm!105343) bm!105345))

(declare-fun m!1957391 () Bool)

(assert (=> b!1627765 m!1957391))

(declare-fun m!1957393 () Bool)

(assert (=> bm!105344 m!1957393))

(declare-fun m!1957395 () Bool)

(assert (=> bm!105345 m!1957395))

(assert (=> d!489775 d!490125))

(declare-fun d!490139 () Bool)

(declare-fun c!264901 () Bool)

(assert (=> d!490139 (= c!264901 (isEmpty!10881 lt!588525))))

(declare-fun e!1044022 () Bool)

(assert (=> d!490139 (= (prefixMatchZipper!154 lt!588521 lt!588525) e!1044022)))

(declare-fun b!1627777 () Bool)

(assert (=> b!1627777 (= e!1044022 (not (lostCauseZipper!32 lt!588521)))))

(declare-fun b!1627778 () Bool)

(assert (=> b!1627778 (= e!1044022 (prefixMatchZipper!154 (derivationStepZipper!56 lt!588521 (head!3449 lt!588525)) (tail!2367 lt!588525)))))

(assert (= (and d!490139 c!264901) b!1627777))

(assert (= (and d!490139 (not c!264901)) b!1627778))

(declare-fun m!1957397 () Bool)

(assert (=> d!490139 m!1957397))

(declare-fun m!1957399 () Bool)

(assert (=> b!1627777 m!1957399))

(declare-fun m!1957401 () Bool)

(assert (=> b!1627778 m!1957401))

(assert (=> b!1627778 m!1957401))

(declare-fun m!1957403 () Bool)

(assert (=> b!1627778 m!1957403))

(declare-fun m!1957405 () Bool)

(assert (=> b!1627778 m!1957405))

(assert (=> b!1627778 m!1957403))

(assert (=> b!1627778 m!1957405))

(declare-fun m!1957407 () Bool)

(assert (=> b!1627778 m!1957407))

(assert (=> d!489775 d!490139))

(declare-fun d!490141 () Bool)

(declare-fun e!1044027 () Bool)

(assert (=> d!490141 e!1044027))

(declare-fun res!727982 () Bool)

(assert (=> d!490141 (=> (not res!727982) (not e!1044027))))

(assert (=> d!490141 (= res!727982 (validRegex!1780 lt!587975))))

(assert (=> d!490141 (= (focus!175 lt!587975) (store ((as const (Array Context!1738 Bool)) false) (Context!1739 (Cons!17861 lt!587975 Nil!17861)) true))))

(declare-fun b!1627783 () Bool)

(declare-fun unfocusZipper!32 (List!17932) Regex!4473)

(assert (=> b!1627783 (= e!1044027 (= (unfocusZipper!32 (toList!915 (store ((as const (Array Context!1738 Bool)) false) (Context!1739 (Cons!17861 lt!587975 Nil!17861)) true))) lt!587975))))

(assert (= (and d!490141 res!727982) b!1627783))

(assert (=> d!490141 m!1956141))

(declare-fun m!1957409 () Bool)

(assert (=> d!490141 m!1957409))

(assert (=> b!1627783 m!1957409))

(assert (=> b!1627783 m!1957409))

(declare-fun m!1957411 () Bool)

(assert (=> b!1627783 m!1957411))

(assert (=> b!1627783 m!1957411))

(declare-fun m!1957413 () Bool)

(assert (=> b!1627783 m!1957413))

(assert (=> d!489775 d!490141))

(declare-fun d!490143 () Bool)

(declare-fun drop!875 (List!17924 Int) List!17924)

(assert (=> d!490143 (= (dropList!612 (++!4752 lt!587987 lt!587976) lt!588527) (drop!875 (list!7016 (c!264623 (++!4752 lt!587987 lt!587976))) lt!588527))))

(declare-fun bs!394920 () Bool)

(assert (= bs!394920 d!490143))

(declare-fun m!1957415 () Bool)

(assert (=> bs!394920 m!1957415))

(assert (=> bs!394920 m!1957415))

(declare-fun m!1957417 () Bool)

(assert (=> bs!394920 m!1957417))

(assert (=> d!489775 d!490143))

(declare-fun c!264914 () Bool)

(declare-fun d!490145 () Bool)

(assert (=> d!490145 (= c!264914 (isEmpty!10881 (dropList!612 (++!4752 lt!587987 lt!587976) lt!588527)))))

(declare-fun e!1044040 () Bool)

(assert (=> d!490145 (= (prefixMatchZipper!154 lt!588518 (dropList!612 (++!4752 lt!587987 lt!587976) lt!588527)) e!1044040)))

(declare-fun b!1627808 () Bool)

(assert (=> b!1627808 (= e!1044040 (not (lostCauseZipper!32 lt!588518)))))

(declare-fun b!1627809 () Bool)

(assert (=> b!1627809 (= e!1044040 (prefixMatchZipper!154 (derivationStepZipper!56 lt!588518 (head!3449 (dropList!612 (++!4752 lt!587987 lt!587976) lt!588527))) (tail!2367 (dropList!612 (++!4752 lt!587987 lt!587976) lt!588527))))))

(assert (= (and d!490145 c!264914) b!1627808))

(assert (= (and d!490145 (not c!264914)) b!1627809))

(assert (=> d!490145 m!1956139))

(declare-fun m!1957419 () Bool)

(assert (=> d!490145 m!1957419))

(assert (=> b!1627808 m!1957371))

(assert (=> b!1627809 m!1956139))

(declare-fun m!1957421 () Bool)

(assert (=> b!1627809 m!1957421))

(assert (=> b!1627809 m!1957421))

(declare-fun m!1957423 () Bool)

(assert (=> b!1627809 m!1957423))

(assert (=> b!1627809 m!1956139))

(declare-fun m!1957425 () Bool)

(assert (=> b!1627809 m!1957425))

(assert (=> b!1627809 m!1957423))

(assert (=> b!1627809 m!1957425))

(declare-fun m!1957427 () Bool)

(assert (=> b!1627809 m!1957427))

(assert (=> d!489775 d!490145))

(declare-fun d!490147 () Bool)

(assert (=> d!490147 (= (prefixMatch!408 lt!587975 lt!588525) (prefixMatchZipper!154 lt!588521 lt!588525))))

(declare-fun lt!588999 () Unit!28923)

(declare-fun choose!9791 ((InoxSet Context!1738) List!17932 Regex!4473 List!17924) Unit!28923)

(assert (=> d!490147 (= lt!588999 (choose!9791 lt!588521 lt!588526 lt!587975 lt!588525))))

(assert (=> d!490147 (validRegex!1780 lt!587975)))

(assert (=> d!490147 (= (prefixMatchZipperRegexEquiv!154 lt!588521 lt!588526 lt!587975 lt!588525) lt!588999)))

(declare-fun bs!394921 () Bool)

(assert (= bs!394921 d!490147))

(assert (=> bs!394921 m!1956153))

(assert (=> bs!394921 m!1956155))

(declare-fun m!1957429 () Bool)

(assert (=> bs!394921 m!1957429))

(assert (=> bs!394921 m!1956141))

(assert (=> d!489775 d!490147))

(declare-fun d!490149 () Bool)

(declare-fun c!264919 () Bool)

(assert (=> d!490149 (= c!264919 (isEmpty!10881 lt!588525))))

(declare-fun e!1044045 () Bool)

(assert (=> d!490149 (= (prefixMatch!408 lt!587975 lt!588525) e!1044045)))

(declare-fun b!1627818 () Bool)

(assert (=> b!1627818 (= e!1044045 (not (lostCause!440 lt!587975)))))

(declare-fun b!1627819 () Bool)

(assert (=> b!1627819 (= e!1044045 (prefixMatch!408 (derivativeStep!1084 lt!587975 (head!3449 lt!588525)) (tail!2367 lt!588525)))))

(assert (= (and d!490149 c!264919) b!1627818))

(assert (= (and d!490149 (not c!264919)) b!1627819))

(assert (=> d!490149 m!1957397))

(assert (=> b!1627818 m!1955569))

(assert (=> b!1627819 m!1957401))

(assert (=> b!1627819 m!1957401))

(declare-fun m!1957431 () Bool)

(assert (=> b!1627819 m!1957431))

(assert (=> b!1627819 m!1957405))

(assert (=> b!1627819 m!1957431))

(assert (=> b!1627819 m!1957405))

(declare-fun m!1957433 () Bool)

(assert (=> b!1627819 m!1957433))

(assert (=> d!489775 d!490149))

(declare-fun d!490151 () Bool)

(declare-fun e!1044050 () Bool)

(assert (=> d!490151 e!1044050))

(declare-fun res!727993 () Bool)

(assert (=> d!490151 (=> (not res!727993) (not e!1044050))))

(declare-fun lt!589002 () List!17932)

(declare-fun noDuplicate!251 (List!17932) Bool)

(assert (=> d!490151 (= res!727993 (noDuplicate!251 lt!589002))))

(declare-fun choose!9792 ((InoxSet Context!1738)) List!17932)

(assert (=> d!490151 (= lt!589002 (choose!9792 (focus!175 lt!587975)))))

(assert (=> d!490151 (= (toList!915 (focus!175 lt!587975)) lt!589002)))

(declare-fun b!1627830 () Bool)

(declare-fun content!2478 (List!17932) (InoxSet Context!1738))

(assert (=> b!1627830 (= e!1044050 (= (content!2478 lt!589002) (focus!175 lt!587975)))))

(assert (= (and d!490151 res!727993) b!1627830))

(declare-fun m!1957435 () Bool)

(assert (=> d!490151 m!1957435))

(assert (=> d!490151 m!1956143))

(declare-fun m!1957437 () Bool)

(assert (=> d!490151 m!1957437))

(declare-fun m!1957439 () Bool)

(assert (=> b!1627830 m!1957439))

(assert (=> d!489775 d!490151))

(declare-fun d!490153 () Bool)

(declare-fun c!264920 () Bool)

(assert (=> d!490153 (= c!264920 (= 0 (size!14284 (++!4752 lt!587987 lt!587976))))))

(declare-fun e!1044051 () Bool)

(assert (=> d!490153 (= (prefixMatchZipperSequence!537 (focus!175 lt!587975) (++!4752 lt!587987 lt!587976) 0) e!1044051)))

(declare-fun b!1627831 () Bool)

(assert (=> b!1627831 (= e!1044051 (not (lostCauseZipper!32 (focus!175 lt!587975))))))

(declare-fun b!1627832 () Bool)

(assert (=> b!1627832 (= e!1044051 (prefixMatchZipperSequence!537 (derivationStepZipper!56 (focus!175 lt!587975) (apply!4568 (++!4752 lt!587987 lt!587976) 0)) (++!4752 lt!587987 lt!587976) (+ 0 1)))))

(assert (= (and d!490153 c!264920) b!1627831))

(assert (= (and d!490153 (not c!264920)) b!1627832))

(assert (=> d!490153 m!1954983))

(assert (=> d!490153 m!1957369))

(assert (=> b!1627831 m!1956143))

(declare-fun m!1957441 () Bool)

(assert (=> b!1627831 m!1957441))

(assert (=> b!1627832 m!1954983))

(declare-fun m!1957443 () Bool)

(assert (=> b!1627832 m!1957443))

(assert (=> b!1627832 m!1956143))

(assert (=> b!1627832 m!1957443))

(declare-fun m!1957445 () Bool)

(assert (=> b!1627832 m!1957445))

(assert (=> b!1627832 m!1957445))

(assert (=> b!1627832 m!1954983))

(declare-fun m!1957447 () Bool)

(assert (=> b!1627832 m!1957447))

(assert (=> d!489775 d!490153))

(declare-fun d!490155 () Bool)

(declare-fun c!264921 () Bool)

(assert (=> d!490155 (= c!264921 (isEmpty!10881 (list!7011 (++!4752 lt!587987 lt!587976))))))

(declare-fun e!1044052 () Bool)

(assert (=> d!490155 (= (prefixMatch!408 lt!587975 (list!7011 (++!4752 lt!587987 lt!587976))) e!1044052)))

(declare-fun b!1627833 () Bool)

(assert (=> b!1627833 (= e!1044052 (not (lostCause!440 lt!587975)))))

(declare-fun b!1627834 () Bool)

(assert (=> b!1627834 (= e!1044052 (prefixMatch!408 (derivativeStep!1084 lt!587975 (head!3449 (list!7011 (++!4752 lt!587987 lt!587976)))) (tail!2367 (list!7011 (++!4752 lt!587987 lt!587976)))))))

(assert (= (and d!490155 c!264921) b!1627833))

(assert (= (and d!490155 (not c!264921)) b!1627834))

(assert (=> d!490155 m!1956149))

(declare-fun m!1957449 () Bool)

(assert (=> d!490155 m!1957449))

(assert (=> b!1627833 m!1955569))

(assert (=> b!1627834 m!1956149))

(declare-fun m!1957451 () Bool)

(assert (=> b!1627834 m!1957451))

(assert (=> b!1627834 m!1957451))

(declare-fun m!1957453 () Bool)

(assert (=> b!1627834 m!1957453))

(assert (=> b!1627834 m!1956149))

(declare-fun m!1957455 () Bool)

(assert (=> b!1627834 m!1957455))

(assert (=> b!1627834 m!1957453))

(assert (=> b!1627834 m!1957455))

(declare-fun m!1957457 () Bool)

(assert (=> b!1627834 m!1957457))

(assert (=> d!489775 d!490155))

(declare-fun d!490157 () Bool)

(assert (=> d!490157 (= (prefixMatchZipper!154 lt!588518 (dropList!612 (++!4752 lt!587987 lt!587976) lt!588527)) (prefixMatchZipperSequence!537 lt!588518 (++!4752 lt!587987 lt!587976) lt!588527))))

(declare-fun lt!589012 () Unit!28923)

(declare-fun choose!9793 ((InoxSet Context!1738) BalanceConc!11820 Int) Unit!28923)

(assert (=> d!490157 (= lt!589012 (choose!9793 lt!588518 (++!4752 lt!587987 lt!587976) lt!588527))))

(declare-fun e!1044073 () Bool)

(assert (=> d!490157 e!1044073))

(declare-fun res!728011 () Bool)

(assert (=> d!490157 (=> (not res!728011) (not e!1044073))))

(assert (=> d!490157 (= res!728011 (>= lt!588527 0))))

(assert (=> d!490157 (= (lemmaprefixMatchZipperSequenceEquivalent!154 lt!588518 (++!4752 lt!587987 lt!587976) lt!588527) lt!589012)))

(declare-fun b!1627870 () Bool)

(assert (=> b!1627870 (= e!1044073 (<= lt!588527 (size!14284 (++!4752 lt!587987 lt!587976))))))

(assert (= (and d!490157 res!728011) b!1627870))

(assert (=> d!490157 m!1954983))

(assert (=> d!490157 m!1956139))

(assert (=> d!490157 m!1956139))

(assert (=> d!490157 m!1956147))

(assert (=> d!490157 m!1954983))

(assert (=> d!490157 m!1956157))

(assert (=> d!490157 m!1954983))

(declare-fun m!1957519 () Bool)

(assert (=> d!490157 m!1957519))

(assert (=> b!1627870 m!1954983))

(assert (=> b!1627870 m!1957369))

(assert (=> d!489775 d!490157))

(declare-fun d!490171 () Bool)

(assert (=> d!490171 (= (list!7011 (++!4752 lt!587987 lt!587976)) (list!7016 (c!264623 (++!4752 lt!587987 lt!587976))))))

(declare-fun bs!394922 () Bool)

(assert (= bs!394922 d!490171))

(assert (=> bs!394922 m!1957415))

(assert (=> d!489775 d!490171))

(declare-fun d!490173 () Bool)

(assert (=> d!490173 (= (list!7011 (_2!10117 lt!588234)) (list!7016 (c!264623 (_2!10117 lt!588234))))))

(declare-fun bs!394923 () Bool)

(assert (= bs!394923 d!490173))

(declare-fun m!1957521 () Bool)

(assert (=> bs!394923 m!1957521))

(assert (=> b!1626584 d!490173))

(declare-fun b!1627871 () Bool)

(declare-fun e!1044075 () Bool)

(declare-fun lt!589014 () tuple2!17436)

(assert (=> b!1627871 (= e!1044075 (not (isEmpty!10888 (_1!10120 lt!589014))))))

(declare-fun d!490175 () Bool)

(declare-fun e!1044074 () Bool)

(assert (=> d!490175 e!1044074))

(declare-fun c!264932 () Bool)

(assert (=> d!490175 (= c!264932 (> (size!14291 (_1!10120 lt!589014)) 0))))

(declare-fun e!1044076 () tuple2!17436)

(assert (=> d!490175 (= lt!589014 e!1044076)))

(declare-fun c!264931 () Bool)

(declare-fun lt!589015 () Option!3316)

(assert (=> d!490175 (= c!264931 ((_ is Some!3315) lt!589015))))

(assert (=> d!490175 (= lt!589015 (maxPrefix!1338 thiss!17113 rules!1846 (list!7011 (seqFromList!2040 lt!587996))))))

(assert (=> d!490175 (= (lexList!830 thiss!17113 rules!1846 (list!7011 (seqFromList!2040 lt!587996))) lt!589014)))

(declare-fun b!1627872 () Bool)

(assert (=> b!1627872 (= e!1044074 (= (_2!10120 lt!589014) (list!7011 (seqFromList!2040 lt!587996))))))

(declare-fun b!1627873 () Bool)

(assert (=> b!1627873 (= e!1044074 e!1044075)))

(declare-fun res!728012 () Bool)

(assert (=> b!1627873 (= res!728012 (< (size!14282 (_2!10120 lt!589014)) (size!14282 (list!7011 (seqFromList!2040 lt!587996)))))))

(assert (=> b!1627873 (=> (not res!728012) (not e!1044075))))

(declare-fun b!1627874 () Bool)

(assert (=> b!1627874 (= e!1044076 (tuple2!17437 Nil!17856 (list!7011 (seqFromList!2040 lt!587996))))))

(declare-fun b!1627875 () Bool)

(declare-fun lt!589013 () tuple2!17436)

(assert (=> b!1627875 (= e!1044076 (tuple2!17437 (Cons!17856 (_1!10119 (v!24358 lt!589015)) (_1!10120 lt!589013)) (_2!10120 lt!589013)))))

(assert (=> b!1627875 (= lt!589013 (lexList!830 thiss!17113 rules!1846 (_2!10119 (v!24358 lt!589015))))))

(assert (= (and d!490175 c!264931) b!1627875))

(assert (= (and d!490175 (not c!264931)) b!1627874))

(assert (= (and d!490175 c!264932) b!1627873))

(assert (= (and d!490175 (not c!264932)) b!1627872))

(assert (= (and b!1627873 res!728012) b!1627871))

(declare-fun m!1957525 () Bool)

(assert (=> b!1627871 m!1957525))

(declare-fun m!1957527 () Bool)

(assert (=> d!490175 m!1957527))

(assert (=> d!490175 m!1955425))

(declare-fun m!1957529 () Bool)

(assert (=> d!490175 m!1957529))

(declare-fun m!1957531 () Bool)

(assert (=> b!1627873 m!1957531))

(assert (=> b!1627873 m!1955425))

(assert (=> b!1627873 m!1956633))

(declare-fun m!1957533 () Bool)

(assert (=> b!1627875 m!1957533))

(assert (=> b!1626584 d!490175))

(declare-fun d!490179 () Bool)

(assert (=> d!490179 (= (list!7011 (seqFromList!2040 lt!587996)) (list!7016 (c!264623 (seqFromList!2040 lt!587996))))))

(declare-fun bs!394925 () Bool)

(assert (= bs!394925 d!490179))

(declare-fun m!1957535 () Bool)

(assert (=> bs!394925 m!1957535))

(assert (=> b!1626584 d!490179))

(declare-fun d!490181 () Bool)

(declare-fun e!1044081 () Bool)

(assert (=> d!490181 e!1044081))

(declare-fun res!728020 () Bool)

(assert (=> d!490181 (=> (not res!728020) (not e!1044081))))

(declare-fun lt!589021 () List!17924)

(assert (=> d!490181 (= res!728020 (= (content!2476 lt!589021) ((_ map or) (content!2476 (t!149057 lt!587996)) (content!2476 lt!587980))))))

(declare-fun e!1044080 () List!17924)

(assert (=> d!490181 (= lt!589021 e!1044080)))

(declare-fun c!264934 () Bool)

(assert (=> d!490181 (= c!264934 ((_ is Nil!17854) (t!149057 lt!587996)))))

(assert (=> d!490181 (= (++!4751 (t!149057 lt!587996) lt!587980) lt!589021)))

(declare-fun b!1627885 () Bool)

(assert (=> b!1627885 (= e!1044080 lt!587980)))

(declare-fun b!1627887 () Bool)

(declare-fun res!728021 () Bool)

(assert (=> b!1627887 (=> (not res!728021) (not e!1044081))))

(assert (=> b!1627887 (= res!728021 (= (size!14282 lt!589021) (+ (size!14282 (t!149057 lt!587996)) (size!14282 lt!587980))))))

(declare-fun b!1627886 () Bool)

(assert (=> b!1627886 (= e!1044080 (Cons!17854 (h!23255 (t!149057 lt!587996)) (++!4751 (t!149057 (t!149057 lt!587996)) lt!587980)))))

(declare-fun b!1627888 () Bool)

(assert (=> b!1627888 (= e!1044081 (or (not (= lt!587980 Nil!17854)) (= lt!589021 (t!149057 lt!587996))))))

(assert (= (and d!490181 c!264934) b!1627885))

(assert (= (and d!490181 (not c!264934)) b!1627886))

(assert (= (and d!490181 res!728020) b!1627887))

(assert (= (and b!1627887 res!728021) b!1627888))

(declare-fun m!1957537 () Bool)

(assert (=> d!490181 m!1957537))

(declare-fun m!1957539 () Bool)

(assert (=> d!490181 m!1957539))

(assert (=> d!490181 m!1955583))

(declare-fun m!1957541 () Bool)

(assert (=> b!1627887 m!1957541))

(assert (=> b!1627887 m!1956535))

(assert (=> b!1627887 m!1955587))

(declare-fun m!1957543 () Bool)

(assert (=> b!1627886 m!1957543))

(assert (=> b!1626647 d!490181))

(assert (=> b!1626748 d!489901))

(assert (=> b!1626748 d!489907))

(declare-fun d!490183 () Bool)

(declare-fun e!1044083 () Bool)

(assert (=> d!490183 e!1044083))

(declare-fun res!728022 () Bool)

(assert (=> d!490183 (=> (not res!728022) (not e!1044083))))

(declare-fun lt!589022 () List!17924)

(assert (=> d!490183 (= res!728022 (= (content!2476 lt!589022) ((_ map or) (content!2476 (t!149057 lt!587996)) (content!2476 lt!588000))))))

(declare-fun e!1044082 () List!17924)

(assert (=> d!490183 (= lt!589022 e!1044082)))

(declare-fun c!264935 () Bool)

(assert (=> d!490183 (= c!264935 ((_ is Nil!17854) (t!149057 lt!587996)))))

(assert (=> d!490183 (= (++!4751 (t!149057 lt!587996) lt!588000) lt!589022)))

(declare-fun b!1627889 () Bool)

(assert (=> b!1627889 (= e!1044082 lt!588000)))

(declare-fun b!1627891 () Bool)

(declare-fun res!728023 () Bool)

(assert (=> b!1627891 (=> (not res!728023) (not e!1044083))))

(assert (=> b!1627891 (= res!728023 (= (size!14282 lt!589022) (+ (size!14282 (t!149057 lt!587996)) (size!14282 lt!588000))))))

(declare-fun b!1627890 () Bool)

(assert (=> b!1627890 (= e!1044082 (Cons!17854 (h!23255 (t!149057 lt!587996)) (++!4751 (t!149057 (t!149057 lt!587996)) lt!588000)))))

(declare-fun b!1627892 () Bool)

(assert (=> b!1627892 (= e!1044083 (or (not (= lt!588000 Nil!17854)) (= lt!589022 (t!149057 lt!587996))))))

(assert (= (and d!490183 c!264935) b!1627889))

(assert (= (and d!490183 (not c!264935)) b!1627890))

(assert (= (and d!490183 res!728022) b!1627891))

(assert (= (and b!1627891 res!728023) b!1627892))

(declare-fun m!1957545 () Bool)

(assert (=> d!490183 m!1957545))

(assert (=> d!490183 m!1957539))

(assert (=> d!490183 m!1955731))

(declare-fun m!1957547 () Bool)

(assert (=> b!1627891 m!1957547))

(assert (=> b!1627891 m!1956535))

(assert (=> b!1627891 m!1955735))

(declare-fun m!1957549 () Bool)

(assert (=> b!1627890 m!1957549))

(assert (=> b!1626826 d!490183))

(declare-fun bs!394929 () Bool)

(declare-fun d!490185 () Bool)

(assert (= bs!394929 (and d!490185 d!489787)))

(declare-fun lambda!67310 () Int)

(assert (=> bs!394929 (= lambda!67310 lambda!67273)))

(declare-fun lambda!67311 () Int)

(declare-fun forall!4090 (List!17931 Int) Bool)

(assert (=> d!490185 (forall!4090 (map!3693 rules!1846 lambda!67310) lambda!67311)))

(declare-fun lt!589028 () Unit!28923)

(declare-fun e!1044086 () Unit!28923)

(assert (=> d!490185 (= lt!589028 e!1044086)))

(declare-fun c!264938 () Bool)

(assert (=> d!490185 (= c!264938 ((_ is Nil!17855) rules!1846))))

(assert (=> d!490185 (rulesValidInductive!974 thiss!17113 rules!1846)))

(assert (=> d!490185 (= (lemma!241 rules!1846 thiss!17113 rules!1846) lt!589028)))

(declare-fun b!1627897 () Bool)

(declare-fun Unit!28970 () Unit!28923)

(assert (=> b!1627897 (= e!1044086 Unit!28970)))

(declare-fun b!1627898 () Bool)

(declare-fun Unit!28971 () Unit!28923)

(assert (=> b!1627898 (= e!1044086 Unit!28971)))

(declare-fun lt!589029 () Unit!28923)

(assert (=> b!1627898 (= lt!589029 (lemma!241 rules!1846 thiss!17113 (t!149058 rules!1846)))))

(assert (= (and d!490185 c!264938) b!1627897))

(assert (= (and d!490185 (not c!264938)) b!1627898))

(declare-fun m!1957585 () Bool)

(assert (=> d!490185 m!1957585))

(assert (=> d!490185 m!1957585))

(declare-fun m!1957587 () Bool)

(assert (=> d!490185 m!1957587))

(assert (=> d!490185 m!1955653))

(declare-fun m!1957589 () Bool)

(assert (=> b!1627898 m!1957589))

(assert (=> d!489787 d!490185))

(declare-fun bs!394930 () Bool)

(declare-fun d!490197 () Bool)

(assert (= bs!394930 (and d!490197 d!490185)))

(declare-fun lambda!67314 () Int)

(assert (=> bs!394930 (= lambda!67314 lambda!67311)))

(declare-fun e!1044111 () Bool)

(assert (=> d!490197 e!1044111))

(declare-fun res!728034 () Bool)

(assert (=> d!490197 (=> (not res!728034) (not e!1044111))))

(declare-fun lt!589043 () Regex!4473)

(assert (=> d!490197 (= res!728034 (validRegex!1780 lt!589043))))

(declare-fun e!1044116 () Regex!4473)

(assert (=> d!490197 (= lt!589043 e!1044116)))

(declare-fun c!264955 () Bool)

(declare-fun e!1044115 () Bool)

(assert (=> d!490197 (= c!264955 e!1044115)))

(declare-fun res!728035 () Bool)

(assert (=> d!490197 (=> (not res!728035) (not e!1044115))))

(assert (=> d!490197 (= res!728035 ((_ is Cons!17861) (map!3693 rules!1846 lambda!67273)))))

(assert (=> d!490197 (forall!4090 (map!3693 rules!1846 lambda!67273) lambda!67314)))

(assert (=> d!490197 (= (generalisedUnion!249 (map!3693 rules!1846 lambda!67273)) lt!589043)))

(declare-fun b!1627937 () Bool)

(assert (=> b!1627937 (= e!1044116 (h!23262 (map!3693 rules!1846 lambda!67273)))))

(declare-fun b!1627938 () Bool)

(declare-fun e!1044112 () Regex!4473)

(assert (=> b!1627938 (= e!1044116 e!1044112)))

(declare-fun c!264954 () Bool)

(assert (=> b!1627938 (= c!264954 ((_ is Cons!17861) (map!3693 rules!1846 lambda!67273)))))

(declare-fun b!1627939 () Bool)

(declare-fun isEmpty!10899 (List!17931) Bool)

(assert (=> b!1627939 (= e!1044115 (isEmpty!10899 (t!149106 (map!3693 rules!1846 lambda!67273))))))

(declare-fun b!1627940 () Bool)

(declare-fun e!1044114 () Bool)

(assert (=> b!1627940 (= e!1044111 e!1044114)))

(declare-fun c!264956 () Bool)

(assert (=> b!1627940 (= c!264956 (isEmpty!10899 (map!3693 rules!1846 lambda!67273)))))

(declare-fun b!1627941 () Bool)

(declare-fun e!1044113 () Bool)

(assert (=> b!1627941 (= e!1044114 e!1044113)))

(declare-fun c!264953 () Bool)

(declare-fun tail!2370 (List!17931) List!17931)

(assert (=> b!1627941 (= c!264953 (isEmpty!10899 (tail!2370 (map!3693 rules!1846 lambda!67273))))))

(declare-fun b!1627942 () Bool)

(assert (=> b!1627942 (= e!1044112 (Union!4473 (h!23262 (map!3693 rules!1846 lambda!67273)) (generalisedUnion!249 (t!149106 (map!3693 rules!1846 lambda!67273)))))))

(declare-fun b!1627943 () Bool)

(declare-fun isEmptyLang!73 (Regex!4473) Bool)

(assert (=> b!1627943 (= e!1044114 (isEmptyLang!73 lt!589043))))

(declare-fun b!1627944 () Bool)

(declare-fun isUnion!73 (Regex!4473) Bool)

(assert (=> b!1627944 (= e!1044113 (isUnion!73 lt!589043))))

(declare-fun b!1627945 () Bool)

(assert (=> b!1627945 (= e!1044112 EmptyLang!4473)))

(declare-fun b!1627946 () Bool)

(declare-fun head!3455 (List!17931) Regex!4473)

(assert (=> b!1627946 (= e!1044113 (= lt!589043 (head!3455 (map!3693 rules!1846 lambda!67273))))))

(assert (= (and d!490197 res!728035) b!1627939))

(assert (= (and d!490197 c!264955) b!1627937))

(assert (= (and d!490197 (not c!264955)) b!1627938))

(assert (= (and b!1627938 c!264954) b!1627942))

(assert (= (and b!1627938 (not c!264954)) b!1627945))

(assert (= (and d!490197 res!728034) b!1627940))

(assert (= (and b!1627940 c!264956) b!1627943))

(assert (= (and b!1627940 (not c!264956)) b!1627941))

(assert (= (and b!1627941 c!264953) b!1627946))

(assert (= (and b!1627941 (not c!264953)) b!1627944))

(declare-fun m!1957607 () Bool)

(assert (=> b!1627944 m!1957607))

(assert (=> b!1627940 m!1956167))

(declare-fun m!1957609 () Bool)

(assert (=> b!1627940 m!1957609))

(declare-fun m!1957611 () Bool)

(assert (=> b!1627942 m!1957611))

(declare-fun m!1957613 () Bool)

(assert (=> d!490197 m!1957613))

(assert (=> d!490197 m!1956167))

(declare-fun m!1957615 () Bool)

(assert (=> d!490197 m!1957615))

(declare-fun m!1957617 () Bool)

(assert (=> b!1627943 m!1957617))

(assert (=> b!1627941 m!1956167))

(declare-fun m!1957619 () Bool)

(assert (=> b!1627941 m!1957619))

(assert (=> b!1627941 m!1957619))

(declare-fun m!1957621 () Bool)

(assert (=> b!1627941 m!1957621))

(assert (=> b!1627946 m!1956167))

(declare-fun m!1957623 () Bool)

(assert (=> b!1627946 m!1957623))

(declare-fun m!1957625 () Bool)

(assert (=> b!1627939 m!1957625))

(assert (=> d!489787 d!490197))

(declare-fun d!490203 () Bool)

(declare-fun lt!589047 () List!17931)

(declare-fun size!14293 (List!17931) Int)

(declare-fun size!14294 (List!17925) Int)

(assert (=> d!490203 (= (size!14293 lt!589047) (size!14294 rules!1846))))

(declare-fun e!1044119 () List!17931)

(assert (=> d!490203 (= lt!589047 e!1044119)))

(declare-fun c!264959 () Bool)

(assert (=> d!490203 (= c!264959 ((_ is Nil!17855) rules!1846))))

(assert (=> d!490203 (= (map!3693 rules!1846 lambda!67273) lt!589047)))

(declare-fun b!1627951 () Bool)

(assert (=> b!1627951 (= e!1044119 Nil!17861)))

(declare-fun b!1627952 () Bool)

(declare-fun $colon$colon!333 (List!17931 Regex!4473) List!17931)

(declare-fun dynLambda!7972 (Int Rule!6090) Regex!4473)

(assert (=> b!1627952 (= e!1044119 ($colon$colon!333 (map!3693 (t!149058 rules!1846) lambda!67273) (dynLambda!7972 lambda!67273 (h!23256 rules!1846))))))

(assert (= (and d!490203 c!264959) b!1627951))

(assert (= (and d!490203 (not c!264959)) b!1627952))

(declare-fun b_lambda!51269 () Bool)

(assert (=> (not b_lambda!51269) (not b!1627952)))

(declare-fun m!1957627 () Bool)

(assert (=> d!490203 m!1957627))

(declare-fun m!1957629 () Bool)

(assert (=> d!490203 m!1957629))

(declare-fun m!1957631 () Bool)

(assert (=> b!1627952 m!1957631))

(declare-fun m!1957633 () Bool)

(assert (=> b!1627952 m!1957633))

(assert (=> b!1627952 m!1957631))

(assert (=> b!1627952 m!1957633))

(declare-fun m!1957635 () Bool)

(assert (=> b!1627952 m!1957635))

(assert (=> d!489787 d!490203))

(declare-fun d!490205 () Bool)

(assert (=> d!490205 (= (isEmpty!10891 (maxPrefixZipperSequence!669 thiss!17113 rules!1846 (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457))))) (not ((_ is Some!3314) (maxPrefixZipperSequence!669 thiss!17113 rules!1846 (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457)))))))))

(assert (=> d!489733 d!490205))

(declare-fun d!490207 () Bool)

(declare-fun lt!589048 () Int)

(assert (=> d!490207 (>= lt!589048 0)))

(declare-fun e!1044120 () Int)

(assert (=> d!490207 (= lt!589048 e!1044120)))

(declare-fun c!264960 () Bool)

(assert (=> d!490207 (= c!264960 ((_ is Nil!17854) (originalCharacters!3959 (h!23257 tokens!457))))))

(assert (=> d!490207 (= (size!14282 (originalCharacters!3959 (h!23257 tokens!457))) lt!589048)))

(declare-fun b!1627953 () Bool)

(assert (=> b!1627953 (= e!1044120 0)))

(declare-fun b!1627954 () Bool)

(assert (=> b!1627954 (= e!1044120 (+ 1 (size!14282 (t!149057 (originalCharacters!3959 (h!23257 tokens!457))))))))

(assert (= (and d!490207 c!264960) b!1627953))

(assert (= (and d!490207 (not c!264960)) b!1627954))

(declare-fun m!1957637 () Bool)

(assert (=> b!1627954 m!1957637))

(assert (=> b!1626527 d!490207))

(declare-fun d!490209 () Bool)

(assert (=> d!490209 (= (isEmpty!10881 (tail!2367 lt!587996)) ((_ is Nil!17854) (tail!2367 lt!587996)))))

(assert (=> b!1626782 d!490209))

(declare-fun d!490211 () Bool)

(assert (=> d!490211 (= (tail!2367 lt!587996) (t!149057 lt!587996))))

(assert (=> b!1626782 d!490211))

(declare-fun lt!589051 () Bool)

(declare-fun d!490213 () Bool)

(assert (=> d!490213 (= lt!589051 (isEmpty!10881 (list!7011 (_2!10117 (lex!1258 thiss!17113 rules!1846 (print!1305 thiss!17113 (singletonSeq!1568 (h!23257 tokens!457))))))))))

(assert (=> d!490213 (= lt!589051 (isEmpty!10896 (c!264623 (_2!10117 (lex!1258 thiss!17113 rules!1846 (print!1305 thiss!17113 (singletonSeq!1568 (h!23257 tokens!457))))))))))

(assert (=> d!490213 (= (isEmpty!10887 (_2!10117 (lex!1258 thiss!17113 rules!1846 (print!1305 thiss!17113 (singletonSeq!1568 (h!23257 tokens!457)))))) lt!589051)))

(declare-fun bs!394932 () Bool)

(assert (= bs!394932 d!490213))

(declare-fun m!1957639 () Bool)

(assert (=> bs!394932 m!1957639))

(assert (=> bs!394932 m!1957639))

(declare-fun m!1957641 () Bool)

(assert (=> bs!394932 m!1957641))

(declare-fun m!1957643 () Bool)

(assert (=> bs!394932 m!1957643))

(assert (=> b!1626625 d!490213))

(declare-fun d!490215 () Bool)

(declare-fun e!1044124 () Bool)

(assert (=> d!490215 e!1044124))

(declare-fun res!728040 () Bool)

(assert (=> d!490215 (=> (not res!728040) (not e!1044124))))

(declare-fun e!1044125 () Bool)

(assert (=> d!490215 (= res!728040 e!1044125)))

(declare-fun c!264961 () Bool)

(declare-fun lt!589052 () tuple2!17430)

(assert (=> d!490215 (= c!264961 (> (size!14283 (_1!10117 lt!589052)) 0))))

(assert (=> d!490215 (= lt!589052 (lexTailRecV2!553 thiss!17113 rules!1846 (print!1305 thiss!17113 (singletonSeq!1568 (h!23257 tokens!457))) (BalanceConc!11821 Empty!5938) (print!1305 thiss!17113 (singletonSeq!1568 (h!23257 tokens!457))) (BalanceConc!11823 Empty!5939)))))

(assert (=> d!490215 (= (lex!1258 thiss!17113 rules!1846 (print!1305 thiss!17113 (singletonSeq!1568 (h!23257 tokens!457)))) lt!589052)))

(declare-fun b!1627959 () Bool)

(declare-fun e!1044123 () Bool)

(assert (=> b!1627959 (= e!1044123 (not (isEmpty!10882 (_1!10117 lt!589052))))))

(declare-fun b!1627960 () Bool)

(declare-fun res!728041 () Bool)

(assert (=> b!1627960 (=> (not res!728041) (not e!1044124))))

(assert (=> b!1627960 (= res!728041 (= (list!7012 (_1!10117 lt!589052)) (_1!10120 (lexList!830 thiss!17113 rules!1846 (list!7011 (print!1305 thiss!17113 (singletonSeq!1568 (h!23257 tokens!457))))))))))

(declare-fun b!1627961 () Bool)

(assert (=> b!1627961 (= e!1044125 e!1044123)))

(declare-fun res!728042 () Bool)

(assert (=> b!1627961 (= res!728042 (< (size!14284 (_2!10117 lt!589052)) (size!14284 (print!1305 thiss!17113 (singletonSeq!1568 (h!23257 tokens!457))))))))

(assert (=> b!1627961 (=> (not res!728042) (not e!1044123))))

(declare-fun b!1627962 () Bool)

(assert (=> b!1627962 (= e!1044124 (= (list!7011 (_2!10117 lt!589052)) (_2!10120 (lexList!830 thiss!17113 rules!1846 (list!7011 (print!1305 thiss!17113 (singletonSeq!1568 (h!23257 tokens!457))))))))))

(declare-fun b!1627963 () Bool)

(assert (=> b!1627963 (= e!1044125 (= (_2!10117 lt!589052) (print!1305 thiss!17113 (singletonSeq!1568 (h!23257 tokens!457)))))))

(assert (= (and d!490215 c!264961) b!1627961))

(assert (= (and d!490215 (not c!264961)) b!1627963))

(assert (= (and b!1627961 res!728042) b!1627959))

(assert (= (and d!490215 res!728040) b!1627960))

(assert (= (and b!1627960 res!728041) b!1627962))

(declare-fun m!1957645 () Bool)

(assert (=> b!1627962 m!1957645))

(assert (=> b!1627962 m!1955553))

(declare-fun m!1957647 () Bool)

(assert (=> b!1627962 m!1957647))

(assert (=> b!1627962 m!1957647))

(declare-fun m!1957649 () Bool)

(assert (=> b!1627962 m!1957649))

(declare-fun m!1957651 () Bool)

(assert (=> b!1627960 m!1957651))

(assert (=> b!1627960 m!1955553))

(assert (=> b!1627960 m!1957647))

(assert (=> b!1627960 m!1957647))

(assert (=> b!1627960 m!1957649))

(declare-fun m!1957653 () Bool)

(assert (=> d!490215 m!1957653))

(assert (=> d!490215 m!1955553))

(assert (=> d!490215 m!1955553))

(declare-fun m!1957655 () Bool)

(assert (=> d!490215 m!1957655))

(declare-fun m!1957657 () Bool)

(assert (=> b!1627961 m!1957657))

(assert (=> b!1627961 m!1955553))

(declare-fun m!1957659 () Bool)

(assert (=> b!1627961 m!1957659))

(declare-fun m!1957661 () Bool)

(assert (=> b!1627959 m!1957661))

(assert (=> b!1626625 d!490215))

(declare-fun d!490217 () Bool)

(declare-fun lt!589053 () BalanceConc!11820)

(assert (=> d!490217 (= (list!7011 lt!589053) (printList!889 thiss!17113 (list!7012 (singletonSeq!1568 (h!23257 tokens!457)))))))

(assert (=> d!490217 (= lt!589053 (printTailRec!827 thiss!17113 (singletonSeq!1568 (h!23257 tokens!457)) 0 (BalanceConc!11821 Empty!5938)))))

(assert (=> d!490217 (= (print!1305 thiss!17113 (singletonSeq!1568 (h!23257 tokens!457))) lt!589053)))

(declare-fun bs!394933 () Bool)

(assert (= bs!394933 d!490217))

(declare-fun m!1957663 () Bool)

(assert (=> bs!394933 m!1957663))

(assert (=> bs!394933 m!1954915))

(assert (=> bs!394933 m!1955557))

(assert (=> bs!394933 m!1955557))

(declare-fun m!1957665 () Bool)

(assert (=> bs!394933 m!1957665))

(assert (=> bs!394933 m!1954915))

(declare-fun m!1957667 () Bool)

(assert (=> bs!394933 m!1957667))

(assert (=> b!1626625 d!490217))

(assert (=> b!1626625 d!489667))

(declare-fun d!490219 () Bool)

(declare-fun e!1044138 () Bool)

(assert (=> d!490219 e!1044138))

(declare-fun res!728055 () Bool)

(assert (=> d!490219 (=> (not res!728055) (not e!1044138))))

(declare-fun lt!589058 () BalanceConc!11820)

(assert (=> d!490219 (= res!728055 (= (list!7011 lt!589058) lt!587996))))

(declare-fun fromList!385 (List!17924) Conc!5938)

(assert (=> d!490219 (= lt!589058 (BalanceConc!11821 (fromList!385 lt!587996)))))

(assert (=> d!490219 (= (fromListB!897 lt!587996) lt!589058)))

(declare-fun b!1627986 () Bool)

(assert (=> b!1627986 (= e!1044138 (isBalanced!1794 (fromList!385 lt!587996)))))

(assert (= (and d!490219 res!728055) b!1627986))

(declare-fun m!1957693 () Bool)

(assert (=> d!490219 m!1957693))

(declare-fun m!1957695 () Bool)

(assert (=> d!490219 m!1957695))

(assert (=> b!1627986 m!1957695))

(assert (=> b!1627986 m!1957695))

(declare-fun m!1957697 () Bool)

(assert (=> b!1627986 m!1957697))

(assert (=> d!489605 d!490219))

(declare-fun d!490229 () Bool)

(declare-fun e!1044139 () Bool)

(assert (=> d!490229 e!1044139))

(declare-fun res!728056 () Bool)

(assert (=> d!490229 (=> (not res!728056) (not e!1044139))))

(declare-fun lt!589059 () BalanceConc!11822)

(assert (=> d!490229 (= res!728056 (= (list!7012 lt!589059) (t!149059 (t!149059 tokens!457))))))

(assert (=> d!490229 (= lt!589059 (BalanceConc!11823 (fromList!384 (t!149059 (t!149059 tokens!457)))))))

(assert (=> d!490229 (= (fromListB!899 (t!149059 (t!149059 tokens!457))) lt!589059)))

(declare-fun b!1627987 () Bool)

(assert (=> b!1627987 (= e!1044139 (isBalanced!1793 (fromList!384 (t!149059 (t!149059 tokens!457)))))))

(assert (= (and d!490229 res!728056) b!1627987))

(declare-fun m!1957699 () Bool)

(assert (=> d!490229 m!1957699))

(declare-fun m!1957701 () Bool)

(assert (=> d!490229 m!1957701))

(assert (=> b!1627987 m!1957701))

(assert (=> b!1627987 m!1957701))

(declare-fun m!1957703 () Bool)

(assert (=> b!1627987 m!1957703))

(assert (=> d!489815 d!490229))

(declare-fun d!490231 () Bool)

(assert (=> d!490231 (= (list!7011 lt!588531) (list!7016 (c!264623 lt!588531)))))

(declare-fun bs!394934 () Bool)

(assert (= bs!394934 d!490231))

(declare-fun m!1957705 () Bool)

(assert (=> bs!394934 m!1957705))

(assert (=> d!489789 d!490231))

(assert (=> d!489611 d!490217))

(assert (=> d!489611 d!489583))

(declare-fun d!490233 () Bool)

(declare-fun lt!589062 () Int)

(assert (=> d!490233 (= lt!589062 (size!14291 (list!7012 (_1!10117 lt!588323))))))

(assert (=> d!490233 (= lt!589062 (size!14292 (c!264625 (_1!10117 lt!588323))))))

(assert (=> d!490233 (= (size!14283 (_1!10117 lt!588323)) lt!589062)))

(declare-fun bs!394935 () Bool)

(assert (= bs!394935 d!490233))

(declare-fun m!1957707 () Bool)

(assert (=> bs!394935 m!1957707))

(assert (=> bs!394935 m!1957707))

(declare-fun m!1957709 () Bool)

(assert (=> bs!394935 m!1957709))

(declare-fun m!1957711 () Bool)

(assert (=> bs!394935 m!1957711))

(assert (=> d!489611 d!490233))

(assert (=> d!489611 d!490215))

(declare-fun d!490235 () Bool)

(assert (=> d!490235 (= (list!7012 (_1!10117 (lex!1258 thiss!17113 rules!1846 (print!1305 thiss!17113 (singletonSeq!1568 (h!23257 tokens!457)))))) (list!7014 (c!264625 (_1!10117 (lex!1258 thiss!17113 rules!1846 (print!1305 thiss!17113 (singletonSeq!1568 (h!23257 tokens!457))))))))))

(declare-fun bs!394936 () Bool)

(assert (= bs!394936 d!490235))

(declare-fun m!1957713 () Bool)

(assert (=> bs!394936 m!1957713))

(assert (=> d!489611 d!490235))

(declare-fun d!490237 () Bool)

(assert (=> d!490237 (= (list!7012 (singletonSeq!1568 (h!23257 tokens!457))) (list!7014 (c!264625 (singletonSeq!1568 (h!23257 tokens!457)))))))

(declare-fun bs!394937 () Bool)

(assert (= bs!394937 d!490237))

(declare-fun m!1957715 () Bool)

(assert (=> bs!394937 m!1957715))

(assert (=> d!489611 d!490237))

(assert (=> d!489611 d!489667))

(declare-fun d!490239 () Bool)

(declare-fun nullableFct!310 (Regex!4473) Bool)

(assert (=> d!490239 (= (nullable!1319 (regex!3145 (rule!4971 (h!23257 tokens!457)))) (nullableFct!310 (regex!3145 (rule!4971 (h!23257 tokens!457)))))))

(declare-fun bs!394938 () Bool)

(assert (= bs!394938 d!490239))

(declare-fun m!1957717 () Bool)

(assert (=> bs!394938 m!1957717))

(assert (=> b!1626790 d!490239))

(declare-fun d!490241 () Bool)

(declare-fun c!264980 () Bool)

(assert (=> d!490241 (= c!264980 ((_ is Nil!17855) rules!1846))))

(declare-fun e!1044152 () (InoxSet Rule!6090))

(assert (=> d!490241 (= (content!2475 rules!1846) e!1044152)))

(declare-fun b!1628012 () Bool)

(assert (=> b!1628012 (= e!1044152 ((as const (Array Rule!6090 Bool)) false))))

(declare-fun b!1628013 () Bool)

(assert (=> b!1628013 (= e!1044152 ((_ map or) (store ((as const (Array Rule!6090 Bool)) false) (h!23256 rules!1846) true) (content!2475 (t!149058 rules!1846))))))

(assert (= (and d!490241 c!264980) b!1628012))

(assert (= (and d!490241 (not c!264980)) b!1628013))

(declare-fun m!1957719 () Bool)

(assert (=> b!1628013 m!1957719))

(assert (=> b!1628013 m!1956695))

(assert (=> d!489607 d!490241))

(declare-fun b!1628014 () Bool)

(declare-fun e!1044154 () Bool)

(assert (=> b!1628014 (= e!1044154 (matchR!1972 (regex!3145 (h!23256 rules!1846)) (_1!10124 (findLongestMatchInner!361 (regex!3145 (h!23256 rules!1846)) Nil!17854 (size!14282 Nil!17854) (originalCharacters!3959 (h!23257 tokens!457)) (originalCharacters!3959 (h!23257 tokens!457)) (size!14282 (originalCharacters!3959 (h!23257 tokens!457)))))))))

(declare-fun b!1628015 () Bool)

(declare-fun e!1044156 () Option!3316)

(declare-fun lt!589066 () tuple2!17444)

(assert (=> b!1628015 (= e!1044156 (Some!3315 (tuple2!17435 (Token!5857 (apply!4575 (transformation!3145 (h!23256 rules!1846)) (seqFromList!2040 (_1!10124 lt!589066))) (h!23256 rules!1846) (size!14284 (seqFromList!2040 (_1!10124 lt!589066))) (_1!10124 lt!589066)) (_2!10124 lt!589066))))))

(declare-fun lt!589068 () Unit!28923)

(assert (=> b!1628015 (= lt!589068 (longestMatchIsAcceptedByMatchOrIsEmpty!345 (regex!3145 (h!23256 rules!1846)) (originalCharacters!3959 (h!23257 tokens!457))))))

(declare-fun res!728057 () Bool)

(assert (=> b!1628015 (= res!728057 (isEmpty!10881 (_1!10124 (findLongestMatchInner!361 (regex!3145 (h!23256 rules!1846)) Nil!17854 (size!14282 Nil!17854) (originalCharacters!3959 (h!23257 tokens!457)) (originalCharacters!3959 (h!23257 tokens!457)) (size!14282 (originalCharacters!3959 (h!23257 tokens!457)))))))))

(assert (=> b!1628015 (=> res!728057 e!1044154)))

(assert (=> b!1628015 e!1044154))

(declare-fun lt!589065 () Unit!28923)

(assert (=> b!1628015 (= lt!589065 lt!589068)))

(declare-fun lt!589069 () Unit!28923)

(assert (=> b!1628015 (= lt!589069 (lemmaSemiInverse!394 (transformation!3145 (h!23256 rules!1846)) (seqFromList!2040 (_1!10124 lt!589066))))))

(declare-fun d!490243 () Bool)

(declare-fun e!1044153 () Bool)

(assert (=> d!490243 e!1044153))

(declare-fun res!728063 () Bool)

(assert (=> d!490243 (=> res!728063 e!1044153)))

(declare-fun lt!589067 () Option!3316)

(assert (=> d!490243 (= res!728063 (isEmpty!10890 lt!589067))))

(assert (=> d!490243 (= lt!589067 e!1044156)))

(declare-fun c!264981 () Bool)

(assert (=> d!490243 (= c!264981 (isEmpty!10881 (_1!10124 lt!589066)))))

(assert (=> d!490243 (= lt!589066 (findLongestMatch!288 (regex!3145 (h!23256 rules!1846)) (originalCharacters!3959 (h!23257 tokens!457))))))

(assert (=> d!490243 (ruleValid!739 thiss!17113 (h!23256 rules!1846))))

(assert (=> d!490243 (= (maxPrefixOneRule!777 thiss!17113 (h!23256 rules!1846) (originalCharacters!3959 (h!23257 tokens!457))) lt!589067)))

(declare-fun b!1628016 () Bool)

(declare-fun e!1044155 () Bool)

(assert (=> b!1628016 (= e!1044155 (= (size!14278 (_1!10119 (get!5150 lt!589067))) (size!14282 (originalCharacters!3959 (_1!10119 (get!5150 lt!589067))))))))

(declare-fun b!1628017 () Bool)

(declare-fun res!728061 () Bool)

(assert (=> b!1628017 (=> (not res!728061) (not e!1044155))))

(assert (=> b!1628017 (= res!728061 (= (rule!4971 (_1!10119 (get!5150 lt!589067))) (h!23256 rules!1846)))))

(declare-fun b!1628018 () Bool)

(assert (=> b!1628018 (= e!1044153 e!1044155)))

(declare-fun res!728062 () Bool)

(assert (=> b!1628018 (=> (not res!728062) (not e!1044155))))

(assert (=> b!1628018 (= res!728062 (matchR!1972 (regex!3145 (h!23256 rules!1846)) (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!589067))))))))

(declare-fun b!1628019 () Bool)

(declare-fun res!728059 () Bool)

(assert (=> b!1628019 (=> (not res!728059) (not e!1044155))))

(assert (=> b!1628019 (= res!728059 (< (size!14282 (_2!10119 (get!5150 lt!589067))) (size!14282 (originalCharacters!3959 (h!23257 tokens!457)))))))

(declare-fun b!1628020 () Bool)

(declare-fun res!728058 () Bool)

(assert (=> b!1628020 (=> (not res!728058) (not e!1044155))))

(assert (=> b!1628020 (= res!728058 (= (++!4751 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!589067)))) (_2!10119 (get!5150 lt!589067))) (originalCharacters!3959 (h!23257 tokens!457))))))

(declare-fun b!1628021 () Bool)

(declare-fun res!728060 () Bool)

(assert (=> b!1628021 (=> (not res!728060) (not e!1044155))))

(assert (=> b!1628021 (= res!728060 (= (value!99305 (_1!10119 (get!5150 lt!589067))) (apply!4575 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!589067)))) (seqFromList!2040 (originalCharacters!3959 (_1!10119 (get!5150 lt!589067)))))))))

(declare-fun b!1628022 () Bool)

(assert (=> b!1628022 (= e!1044156 None!3315)))

(assert (= (and d!490243 c!264981) b!1628022))

(assert (= (and d!490243 (not c!264981)) b!1628015))

(assert (= (and b!1628015 (not res!728057)) b!1628014))

(assert (= (and d!490243 (not res!728063)) b!1628018))

(assert (= (and b!1628018 res!728062) b!1628020))

(assert (= (and b!1628020 res!728058) b!1628019))

(assert (= (and b!1628019 res!728059) b!1628017))

(assert (= (and b!1628017 res!728061) b!1628021))

(assert (= (and b!1628021 res!728060) b!1628016))

(declare-fun m!1957721 () Bool)

(assert (=> b!1628016 m!1957721))

(declare-fun m!1957723 () Bool)

(assert (=> b!1628016 m!1957723))

(assert (=> b!1628014 m!1956705))

(assert (=> b!1628014 m!1955343))

(assert (=> b!1628014 m!1956705))

(assert (=> b!1628014 m!1955343))

(declare-fun m!1957725 () Bool)

(assert (=> b!1628014 m!1957725))

(declare-fun m!1957727 () Bool)

(assert (=> b!1628014 m!1957727))

(assert (=> b!1628019 m!1957721))

(declare-fun m!1957729 () Bool)

(assert (=> b!1628019 m!1957729))

(assert (=> b!1628019 m!1955343))

(declare-fun m!1957731 () Bool)

(assert (=> b!1628015 m!1957731))

(declare-fun m!1957733 () Bool)

(assert (=> b!1628015 m!1957733))

(assert (=> b!1628015 m!1957731))

(declare-fun m!1957735 () Bool)

(assert (=> b!1628015 m!1957735))

(assert (=> b!1628015 m!1956705))

(assert (=> b!1628015 m!1955343))

(assert (=> b!1628015 m!1957725))

(assert (=> b!1628015 m!1957731))

(declare-fun m!1957737 () Bool)

(assert (=> b!1628015 m!1957737))

(declare-fun m!1957739 () Bool)

(assert (=> b!1628015 m!1957739))

(declare-fun m!1957741 () Bool)

(assert (=> b!1628015 m!1957741))

(assert (=> b!1628015 m!1955343))

(assert (=> b!1628015 m!1957731))

(assert (=> b!1628015 m!1956705))

(assert (=> b!1628017 m!1957721))

(declare-fun m!1957743 () Bool)

(assert (=> d!490243 m!1957743))

(declare-fun m!1957745 () Bool)

(assert (=> d!490243 m!1957745))

(declare-fun m!1957747 () Bool)

(assert (=> d!490243 m!1957747))

(assert (=> d!490243 m!1956731))

(assert (=> b!1628018 m!1957721))

(declare-fun m!1957749 () Bool)

(assert (=> b!1628018 m!1957749))

(assert (=> b!1628018 m!1957749))

(declare-fun m!1957751 () Bool)

(assert (=> b!1628018 m!1957751))

(assert (=> b!1628018 m!1957751))

(declare-fun m!1957753 () Bool)

(assert (=> b!1628018 m!1957753))

(assert (=> b!1628020 m!1957721))

(assert (=> b!1628020 m!1957749))

(assert (=> b!1628020 m!1957749))

(assert (=> b!1628020 m!1957751))

(assert (=> b!1628020 m!1957751))

(declare-fun m!1957755 () Bool)

(assert (=> b!1628020 m!1957755))

(assert (=> b!1628021 m!1957721))

(declare-fun m!1957757 () Bool)

(assert (=> b!1628021 m!1957757))

(assert (=> b!1628021 m!1957757))

(declare-fun m!1957759 () Bool)

(assert (=> b!1628021 m!1957759))

(assert (=> bm!105260 d!490243))

(declare-fun b!1628023 () Bool)

(declare-fun e!1044158 () Bool)

(declare-fun e!1044159 () Bool)

(assert (=> b!1628023 (= e!1044158 e!1044159)))

(declare-fun res!728066 () Bool)

(assert (=> b!1628023 (=> (not res!728066) (not e!1044159))))

(declare-fun lt!589074 () Option!3316)

(assert (=> b!1628023 (= res!728066 (isDefined!2683 lt!589074))))

(declare-fun b!1628024 () Bool)

(declare-fun res!728068 () Bool)

(assert (=> b!1628024 (=> (not res!728068) (not e!1044159))))

(assert (=> b!1628024 (= res!728068 (= (++!4751 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!589074)))) (_2!10119 (get!5150 lt!589074))) lt!587996))))

(declare-fun b!1628025 () Bool)

(declare-fun e!1044157 () Option!3316)

(declare-fun lt!589071 () Option!3316)

(declare-fun lt!589070 () Option!3316)

(assert (=> b!1628025 (= e!1044157 (ite (and ((_ is None!3315) lt!589071) ((_ is None!3315) lt!589070)) None!3315 (ite ((_ is None!3315) lt!589070) lt!589071 (ite ((_ is None!3315) lt!589071) lt!589070 (ite (>= (size!14278 (_1!10119 (v!24358 lt!589071))) (size!14278 (_1!10119 (v!24358 lt!589070)))) lt!589071 lt!589070)))))))

(declare-fun call!105409 () Option!3316)

(assert (=> b!1628025 (= lt!589071 call!105409)))

(assert (=> b!1628025 (= lt!589070 (maxPrefix!1338 thiss!17113 (t!149058 (t!149058 rules!1846)) lt!587996))))

(declare-fun d!490245 () Bool)

(assert (=> d!490245 e!1044158))

(declare-fun res!728067 () Bool)

(assert (=> d!490245 (=> res!728067 e!1044158)))

(assert (=> d!490245 (= res!728067 (isEmpty!10890 lt!589074))))

(assert (=> d!490245 (= lt!589074 e!1044157)))

(declare-fun c!264982 () Bool)

(assert (=> d!490245 (= c!264982 (and ((_ is Cons!17855) (t!149058 rules!1846)) ((_ is Nil!17855) (t!149058 (t!149058 rules!1846)))))))

(declare-fun lt!589072 () Unit!28923)

(declare-fun lt!589073 () Unit!28923)

(assert (=> d!490245 (= lt!589072 lt!589073)))

(assert (=> d!490245 (isPrefix!1405 lt!587996 lt!587996)))

(assert (=> d!490245 (= lt!589073 (lemmaIsPrefixRefl!962 lt!587996 lt!587996))))

(assert (=> d!490245 (rulesValidInductive!974 thiss!17113 (t!149058 rules!1846))))

(assert (=> d!490245 (= (maxPrefix!1338 thiss!17113 (t!149058 rules!1846) lt!587996) lt!589074)))

(declare-fun b!1628026 () Bool)

(declare-fun res!728069 () Bool)

(assert (=> b!1628026 (=> (not res!728069) (not e!1044159))))

(assert (=> b!1628026 (= res!728069 (matchR!1972 (regex!3145 (rule!4971 (_1!10119 (get!5150 lt!589074)))) (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!589074))))))))

(declare-fun b!1628027 () Bool)

(declare-fun res!728064 () Bool)

(assert (=> b!1628027 (=> (not res!728064) (not e!1044159))))

(assert (=> b!1628027 (= res!728064 (= (value!99305 (_1!10119 (get!5150 lt!589074))) (apply!4575 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!589074)))) (seqFromList!2040 (originalCharacters!3959 (_1!10119 (get!5150 lt!589074)))))))))

(declare-fun b!1628028 () Bool)

(declare-fun res!728065 () Bool)

(assert (=> b!1628028 (=> (not res!728065) (not e!1044159))))

(assert (=> b!1628028 (= res!728065 (= (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!589074)))) (originalCharacters!3959 (_1!10119 (get!5150 lt!589074)))))))

(declare-fun bm!105404 () Bool)

(assert (=> bm!105404 (= call!105409 (maxPrefixOneRule!777 thiss!17113 (h!23256 (t!149058 rules!1846)) lt!587996))))

(declare-fun b!1628029 () Bool)

(assert (=> b!1628029 (= e!1044159 (contains!3120 (t!149058 rules!1846) (rule!4971 (_1!10119 (get!5150 lt!589074)))))))

(declare-fun b!1628030 () Bool)

(assert (=> b!1628030 (= e!1044157 call!105409)))

(declare-fun b!1628031 () Bool)

(declare-fun res!728070 () Bool)

(assert (=> b!1628031 (=> (not res!728070) (not e!1044159))))

(assert (=> b!1628031 (= res!728070 (< (size!14282 (_2!10119 (get!5150 lt!589074))) (size!14282 lt!587996)))))

(assert (= (and d!490245 c!264982) b!1628030))

(assert (= (and d!490245 (not c!264982)) b!1628025))

(assert (= (or b!1628030 b!1628025) bm!105404))

(assert (= (and d!490245 (not res!728067)) b!1628023))

(assert (= (and b!1628023 res!728066) b!1628028))

(assert (= (and b!1628028 res!728065) b!1628031))

(assert (= (and b!1628031 res!728070) b!1628024))

(assert (= (and b!1628024 res!728068) b!1628027))

(assert (= (and b!1628027 res!728064) b!1628026))

(assert (= (and b!1628026 res!728069) b!1628029))

(declare-fun m!1957761 () Bool)

(assert (=> b!1628025 m!1957761))

(declare-fun m!1957763 () Bool)

(assert (=> b!1628031 m!1957763))

(declare-fun m!1957765 () Bool)

(assert (=> b!1628031 m!1957765))

(assert (=> b!1628031 m!1955305))

(assert (=> b!1628026 m!1957763))

(declare-fun m!1957769 () Bool)

(assert (=> b!1628026 m!1957769))

(assert (=> b!1628026 m!1957769))

(declare-fun m!1957771 () Bool)

(assert (=> b!1628026 m!1957771))

(assert (=> b!1628026 m!1957771))

(declare-fun m!1957777 () Bool)

(assert (=> b!1628026 m!1957777))

(assert (=> b!1628029 m!1957763))

(declare-fun m!1957781 () Bool)

(assert (=> b!1628029 m!1957781))

(declare-fun m!1957783 () Bool)

(assert (=> d!490245 m!1957783))

(assert (=> d!490245 m!1955767))

(assert (=> d!490245 m!1955769))

(assert (=> d!490245 m!1956967))

(assert (=> b!1628027 m!1957763))

(declare-fun m!1957785 () Bool)

(assert (=> b!1628027 m!1957785))

(assert (=> b!1628027 m!1957785))

(declare-fun m!1957787 () Bool)

(assert (=> b!1628027 m!1957787))

(assert (=> b!1628028 m!1957763))

(assert (=> b!1628028 m!1957769))

(assert (=> b!1628028 m!1957769))

(assert (=> b!1628028 m!1957771))

(declare-fun m!1957789 () Bool)

(assert (=> bm!105404 m!1957789))

(declare-fun m!1957791 () Bool)

(assert (=> b!1628023 m!1957791))

(assert (=> b!1628024 m!1957763))

(assert (=> b!1628024 m!1957769))

(assert (=> b!1628024 m!1957769))

(assert (=> b!1628024 m!1957771))

(assert (=> b!1628024 m!1957771))

(declare-fun m!1957793 () Bool)

(assert (=> b!1628024 m!1957793))

(assert (=> b!1626723 d!490245))

(declare-fun bs!394939 () Bool)

(declare-fun d!490251 () Bool)

(assert (= bs!394939 (and d!490251 d!489795)))

(declare-fun lambda!67315 () Int)

(assert (=> bs!394939 (= lambda!67315 lambda!67276)))

(declare-fun b!1628054 () Bool)

(declare-fun e!1044174 () Bool)

(assert (=> b!1628054 (= e!1044174 true)))

(declare-fun b!1628052 () Bool)

(declare-fun e!1044173 () Bool)

(assert (=> b!1628052 (= e!1044173 e!1044174)))

(declare-fun b!1628050 () Bool)

(declare-fun e!1044171 () Bool)

(assert (=> b!1628050 (= e!1044171 e!1044173)))

(assert (=> d!490251 e!1044171))

(assert (= b!1628052 b!1628054))

(assert (= b!1628050 b!1628052))

(assert (= (and d!490251 ((_ is Cons!17855) rules!1846)) b!1628050))

(assert (=> b!1628054 (< (dynLambda!7965 order!10591 (toValue!4572 (transformation!3145 (h!23256 rules!1846)))) (dynLambda!7966 order!10593 lambda!67315))))

(assert (=> b!1628054 (< (dynLambda!7967 order!10595 (toChars!4431 (transformation!3145 (h!23256 rules!1846)))) (dynLambda!7966 order!10593 lambda!67315))))

(assert (=> d!490251 true))

(declare-fun lt!589076 () Bool)

(assert (=> d!490251 (= lt!589076 (forall!4086 (t!149059 tokens!457) lambda!67315))))

(declare-fun e!1044168 () Bool)

(assert (=> d!490251 (= lt!589076 e!1044168)))

(declare-fun res!728072 () Bool)

(assert (=> d!490251 (=> res!728072 e!1044168)))

(assert (=> d!490251 (= res!728072 (not ((_ is Cons!17856) (t!149059 tokens!457))))))

(assert (=> d!490251 (not (isEmpty!10883 rules!1846))))

(assert (=> d!490251 (= (rulesProduceEachTokenIndividuallyList!976 thiss!17113 rules!1846 (t!149059 tokens!457)) lt!589076)))

(declare-fun b!1628047 () Bool)

(declare-fun e!1044169 () Bool)

(assert (=> b!1628047 (= e!1044168 e!1044169)))

(declare-fun res!728073 () Bool)

(assert (=> b!1628047 (=> (not res!728073) (not e!1044169))))

(assert (=> b!1628047 (= res!728073 (rulesProduceIndividualToken!1426 thiss!17113 rules!1846 (h!23257 (t!149059 tokens!457))))))

(declare-fun b!1628048 () Bool)

(assert (=> b!1628048 (= e!1044169 (rulesProduceEachTokenIndividuallyList!976 thiss!17113 rules!1846 (t!149059 (t!149059 tokens!457))))))

(assert (= (and d!490251 (not res!728072)) b!1628047))

(assert (= (and b!1628047 res!728073) b!1628048))

(declare-fun m!1957811 () Bool)

(assert (=> d!490251 m!1957811))

(assert (=> d!490251 m!1954901))

(assert (=> b!1628047 m!1955455))

(declare-fun m!1957813 () Bool)

(assert (=> b!1628048 m!1957813))

(assert (=> b!1627058 d!490251))

(declare-fun b!1628056 () Bool)

(declare-fun e!1044176 () Bool)

(declare-fun e!1044177 () Bool)

(assert (=> b!1628056 (= e!1044176 e!1044177)))

(declare-fun res!728076 () Bool)

(assert (=> b!1628056 (=> (not res!728076) (not e!1044177))))

(declare-fun lt!589081 () Option!3316)

(assert (=> b!1628056 (= res!728076 (isDefined!2683 lt!589081))))

(declare-fun b!1628057 () Bool)

(declare-fun res!728078 () Bool)

(assert (=> b!1628057 (=> (not res!728078) (not e!1044177))))

(assert (=> b!1628057 (= res!728078 (= (++!4751 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!589081)))) (_2!10119 (get!5150 lt!589081))) (originalCharacters!3959 (h!23257 tokens!457))))))

(declare-fun b!1628058 () Bool)

(declare-fun e!1044175 () Option!3316)

(declare-fun lt!589078 () Option!3316)

(declare-fun lt!589077 () Option!3316)

(assert (=> b!1628058 (= e!1044175 (ite (and ((_ is None!3315) lt!589078) ((_ is None!3315) lt!589077)) None!3315 (ite ((_ is None!3315) lt!589077) lt!589078 (ite ((_ is None!3315) lt!589078) lt!589077 (ite (>= (size!14278 (_1!10119 (v!24358 lt!589078))) (size!14278 (_1!10119 (v!24358 lt!589077)))) lt!589078 lt!589077)))))))

(declare-fun call!105414 () Option!3316)

(assert (=> b!1628058 (= lt!589078 call!105414)))

(assert (=> b!1628058 (= lt!589077 (maxPrefix!1338 thiss!17113 (t!149058 (t!149058 rules!1846)) (originalCharacters!3959 (h!23257 tokens!457))))))

(declare-fun d!490259 () Bool)

(assert (=> d!490259 e!1044176))

(declare-fun res!728077 () Bool)

(assert (=> d!490259 (=> res!728077 e!1044176)))

(assert (=> d!490259 (= res!728077 (isEmpty!10890 lt!589081))))

(assert (=> d!490259 (= lt!589081 e!1044175)))

(declare-fun c!264992 () Bool)

(assert (=> d!490259 (= c!264992 (and ((_ is Cons!17855) (t!149058 rules!1846)) ((_ is Nil!17855) (t!149058 (t!149058 rules!1846)))))))

(declare-fun lt!589079 () Unit!28923)

(declare-fun lt!589080 () Unit!28923)

(assert (=> d!490259 (= lt!589079 lt!589080)))

(assert (=> d!490259 (isPrefix!1405 (originalCharacters!3959 (h!23257 tokens!457)) (originalCharacters!3959 (h!23257 tokens!457)))))

(assert (=> d!490259 (= lt!589080 (lemmaIsPrefixRefl!962 (originalCharacters!3959 (h!23257 tokens!457)) (originalCharacters!3959 (h!23257 tokens!457))))))

(assert (=> d!490259 (rulesValidInductive!974 thiss!17113 (t!149058 rules!1846))))

(assert (=> d!490259 (= (maxPrefix!1338 thiss!17113 (t!149058 rules!1846) (originalCharacters!3959 (h!23257 tokens!457))) lt!589081)))

(declare-fun b!1628059 () Bool)

(declare-fun res!728079 () Bool)

(assert (=> b!1628059 (=> (not res!728079) (not e!1044177))))

(assert (=> b!1628059 (= res!728079 (matchR!1972 (regex!3145 (rule!4971 (_1!10119 (get!5150 lt!589081)))) (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!589081))))))))

(declare-fun b!1628060 () Bool)

(declare-fun res!728074 () Bool)

(assert (=> b!1628060 (=> (not res!728074) (not e!1044177))))

(assert (=> b!1628060 (= res!728074 (= (value!99305 (_1!10119 (get!5150 lt!589081))) (apply!4575 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!589081)))) (seqFromList!2040 (originalCharacters!3959 (_1!10119 (get!5150 lt!589081)))))))))

(declare-fun b!1628061 () Bool)

(declare-fun res!728075 () Bool)

(assert (=> b!1628061 (=> (not res!728075) (not e!1044177))))

(assert (=> b!1628061 (= res!728075 (= (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!589081)))) (originalCharacters!3959 (_1!10119 (get!5150 lt!589081)))))))

(declare-fun bm!105409 () Bool)

(assert (=> bm!105409 (= call!105414 (maxPrefixOneRule!777 thiss!17113 (h!23256 (t!149058 rules!1846)) (originalCharacters!3959 (h!23257 tokens!457))))))

(declare-fun b!1628062 () Bool)

(assert (=> b!1628062 (= e!1044177 (contains!3120 (t!149058 rules!1846) (rule!4971 (_1!10119 (get!5150 lt!589081)))))))

(declare-fun b!1628063 () Bool)

(assert (=> b!1628063 (= e!1044175 call!105414)))

(declare-fun b!1628064 () Bool)

(declare-fun res!728080 () Bool)

(assert (=> b!1628064 (=> (not res!728080) (not e!1044177))))

(assert (=> b!1628064 (= res!728080 (< (size!14282 (_2!10119 (get!5150 lt!589081))) (size!14282 (originalCharacters!3959 (h!23257 tokens!457)))))))

(assert (= (and d!490259 c!264992) b!1628063))

(assert (= (and d!490259 (not c!264992)) b!1628058))

(assert (= (or b!1628063 b!1628058) bm!105409))

(assert (= (and d!490259 (not res!728077)) b!1628056))

(assert (= (and b!1628056 res!728076) b!1628061))

(assert (= (and b!1628061 res!728075) b!1628064))

(assert (= (and b!1628064 res!728080) b!1628057))

(assert (= (and b!1628057 res!728078) b!1628060))

(assert (= (and b!1628060 res!728074) b!1628059))

(assert (= (and b!1628059 res!728079) b!1628062))

(declare-fun m!1957817 () Bool)

(assert (=> b!1628058 m!1957817))

(declare-fun m!1957819 () Bool)

(assert (=> b!1628064 m!1957819))

(declare-fun m!1957821 () Bool)

(assert (=> b!1628064 m!1957821))

(assert (=> b!1628064 m!1955343))

(assert (=> b!1628059 m!1957819))

(declare-fun m!1957823 () Bool)

(assert (=> b!1628059 m!1957823))

(assert (=> b!1628059 m!1957823))

(declare-fun m!1957825 () Bool)

(assert (=> b!1628059 m!1957825))

(assert (=> b!1628059 m!1957825))

(declare-fun m!1957829 () Bool)

(assert (=> b!1628059 m!1957829))

(assert (=> b!1628062 m!1957819))

(declare-fun m!1957831 () Bool)

(assert (=> b!1628062 m!1957831))

(declare-fun m!1957835 () Bool)

(assert (=> d!490259 m!1957835))

(assert (=> d!490259 m!1955797))

(assert (=> d!490259 m!1955799))

(assert (=> d!490259 m!1956967))

(assert (=> b!1628060 m!1957819))

(declare-fun m!1957837 () Bool)

(assert (=> b!1628060 m!1957837))

(assert (=> b!1628060 m!1957837))

(declare-fun m!1957839 () Bool)

(assert (=> b!1628060 m!1957839))

(assert (=> b!1628061 m!1957819))

(assert (=> b!1628061 m!1957823))

(assert (=> b!1628061 m!1957823))

(assert (=> b!1628061 m!1957825))

(declare-fun m!1957841 () Bool)

(assert (=> bm!105409 m!1957841))

(declare-fun m!1957843 () Bool)

(assert (=> b!1628056 m!1957843))

(assert (=> b!1628057 m!1957819))

(assert (=> b!1628057 m!1957823))

(assert (=> b!1628057 m!1957823))

(assert (=> b!1628057 m!1957825))

(assert (=> b!1628057 m!1957825))

(declare-fun m!1957845 () Bool)

(assert (=> b!1628057 m!1957845))

(assert (=> b!1626732 d!490259))

(assert (=> b!1626823 d!489957))

(assert (=> b!1626686 d!490099))

(assert (=> b!1626686 d!490101))

(assert (=> b!1626686 d!489939))

(declare-fun bs!394947 () Bool)

(declare-fun b!1628090 () Bool)

(assert (= bs!394947 (and b!1628090 d!490029)))

(declare-fun lambda!67320 () Int)

(assert (=> bs!394947 (= lambda!67320 lambda!67302)))

(declare-fun b!1628109 () Bool)

(declare-fun e!1044214 () Bool)

(assert (=> b!1628109 (= e!1044214 true)))

(declare-fun b!1628108 () Bool)

(declare-fun e!1044213 () Bool)

(assert (=> b!1628108 (= e!1044213 e!1044214)))

(assert (=> b!1628090 e!1044213))

(assert (= b!1628108 b!1628109))

(assert (= b!1628090 b!1628108))

(assert (=> b!1628109 (< (dynLambda!7965 order!10591 (toValue!4572 (transformation!3145 (h!23256 rules!1846)))) (dynLambda!7971 order!10599 lambda!67320))))

(assert (=> b!1628109 (< (dynLambda!7967 order!10595 (toChars!4431 (transformation!3145 (h!23256 rules!1846)))) (dynLambda!7971 order!10599 lambda!67320))))

(declare-fun e!1044201 () Option!3315)

(declare-datatypes ((tuple2!17446 0))(
  ( (tuple2!17447 (_1!10125 BalanceConc!11820) (_2!10125 BalanceConc!11820)) )
))
(declare-fun lt!589128 () tuple2!17446)

(assert (=> b!1628090 (= e!1044201 (Some!3314 (tuple2!17433 (Token!5857 (apply!4575 (transformation!3145 (h!23256 rules!1846)) (_1!10125 lt!589128)) (h!23256 rules!1846) (size!14284 (_1!10125 lt!589128)) (list!7011 (_1!10125 lt!589128))) (_2!10125 lt!589128))))))

(declare-fun lt!589127 () List!17924)

(assert (=> b!1628090 (= lt!589127 (list!7011 (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457)))))))

(declare-fun lt!589129 () Unit!28923)

(assert (=> b!1628090 (= lt!589129 (longestMatchIsAcceptedByMatchOrIsEmpty!345 (regex!3145 (h!23256 rules!1846)) lt!589127))))

(declare-fun res!728093 () Bool)

(assert (=> b!1628090 (= res!728093 (isEmpty!10881 (_1!10124 (findLongestMatchInner!361 (regex!3145 (h!23256 rules!1846)) Nil!17854 (size!14282 Nil!17854) lt!589127 lt!589127 (size!14282 lt!589127)))))))

(declare-fun e!1044198 () Bool)

(assert (=> b!1628090 (=> res!728093 e!1044198)))

(assert (=> b!1628090 e!1044198))

(declare-fun lt!589125 () Unit!28923)

(assert (=> b!1628090 (= lt!589125 lt!589129)))

(declare-fun lt!589124 () Unit!28923)

(declare-fun lemmaInv!459 (TokenValueInjection!6130) Unit!28923)

(assert (=> b!1628090 (= lt!589124 (lemmaInv!459 (transformation!3145 (h!23256 rules!1846))))))

(declare-fun lt!589133 () Unit!28923)

(declare-fun ForallOf!234 (Int BalanceConc!11820) Unit!28923)

(assert (=> b!1628090 (= lt!589133 (ForallOf!234 lambda!67320 (_1!10125 lt!589128)))))

(declare-fun lt!589132 () Unit!28923)

(assert (=> b!1628090 (= lt!589132 (ForallOf!234 lambda!67320 (seqFromList!2040 (list!7011 (_1!10125 lt!589128)))))))

(declare-fun lt!589131 () Option!3315)

(assert (=> b!1628090 (= lt!589131 (Some!3314 (tuple2!17433 (Token!5857 (apply!4575 (transformation!3145 (h!23256 rules!1846)) (_1!10125 lt!589128)) (h!23256 rules!1846) (size!14284 (_1!10125 lt!589128)) (list!7011 (_1!10125 lt!589128))) (_2!10125 lt!589128))))))

(declare-fun lt!589126 () Unit!28923)

(declare-fun lemmaEqSameImage!179 (TokenValueInjection!6130 BalanceConc!11820 BalanceConc!11820) Unit!28923)

(assert (=> b!1628090 (= lt!589126 (lemmaEqSameImage!179 (transformation!3145 (h!23256 rules!1846)) (_1!10125 lt!589128) (seqFromList!2040 (list!7011 (_1!10125 lt!589128)))))))

(declare-fun b!1628091 () Bool)

(assert (=> b!1628091 (= e!1044198 (matchR!1972 (regex!3145 (h!23256 rules!1846)) (_1!10124 (findLongestMatchInner!361 (regex!3145 (h!23256 rules!1846)) Nil!17854 (size!14282 Nil!17854) lt!589127 lt!589127 (size!14282 lt!589127)))))))

(declare-fun b!1628092 () Bool)

(declare-fun e!1044199 () Bool)

(declare-fun e!1044202 () Bool)

(assert (=> b!1628092 (= e!1044199 e!1044202)))

(declare-fun res!728090 () Bool)

(assert (=> b!1628092 (=> (not res!728090) (not e!1044202))))

(declare-fun lt!589130 () Option!3315)

(assert (=> b!1628092 (= res!728090 (= (_1!10118 (get!5154 lt!589130)) (_1!10119 (get!5150 (maxPrefixOneRule!777 thiss!17113 (h!23256 rules!1846) (list!7011 (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457)))))))))))

(declare-fun b!1628093 () Bool)

(assert (=> b!1628093 (= e!1044202 (= (list!7011 (_2!10118 (get!5154 lt!589130))) (_2!10119 (get!5150 (maxPrefixOneRule!777 thiss!17113 (h!23256 rules!1846) (list!7011 (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457)))))))))))

(declare-fun b!1628094 () Bool)

(assert (=> b!1628094 (= e!1044201 None!3314)))

(declare-fun d!490265 () Bool)

(declare-fun e!1044200 () Bool)

(assert (=> d!490265 e!1044200))

(declare-fun res!728091 () Bool)

(assert (=> d!490265 (=> (not res!728091) (not e!1044200))))

(assert (=> d!490265 (= res!728091 (= (isDefined!2682 lt!589130) (isDefined!2683 (maxPrefixOneRule!777 thiss!17113 (h!23256 rules!1846) (list!7011 (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457))))))))))

(assert (=> d!490265 (= lt!589130 e!1044201)))

(declare-fun c!265000 () Bool)

(assert (=> d!490265 (= c!265000 (isEmpty!10887 (_1!10125 lt!589128)))))

(declare-fun findLongestMatchWithZipperSequence!119 (Regex!4473 BalanceConc!11820) tuple2!17446)

(assert (=> d!490265 (= lt!589128 (findLongestMatchWithZipperSequence!119 (regex!3145 (h!23256 rules!1846)) (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457)))))))

(assert (=> d!490265 (ruleValid!739 thiss!17113 (h!23256 rules!1846))))

(assert (=> d!490265 (= (maxPrefixOneRuleZipperSequence!318 thiss!17113 (h!23256 rules!1846) (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457)))) lt!589130)))

(declare-fun b!1628095 () Bool)

(assert (=> b!1628095 (= e!1044200 e!1044199)))

(declare-fun res!728092 () Bool)

(assert (=> b!1628095 (=> res!728092 e!1044199)))

(assert (=> b!1628095 (= res!728092 (not (isDefined!2682 lt!589130)))))

(assert (= (and d!490265 c!265000) b!1628094))

(assert (= (and d!490265 (not c!265000)) b!1628090))

(assert (= (and b!1628090 (not res!728093)) b!1628091))

(assert (= (and d!490265 res!728091) b!1628095))

(assert (= (and b!1628095 (not res!728092)) b!1628092))

(assert (= (and b!1628092 res!728090) b!1628093))

(declare-fun m!1957921 () Bool)

(assert (=> b!1628090 m!1957921))

(declare-fun m!1957923 () Bool)

(assert (=> b!1628090 m!1957923))

(declare-fun m!1957927 () Bool)

(assert (=> b!1628090 m!1957927))

(declare-fun m!1957929 () Bool)

(assert (=> b!1628090 m!1957929))

(declare-fun m!1957931 () Bool)

(assert (=> b!1628090 m!1957931))

(declare-fun m!1957933 () Bool)

(assert (=> b!1628090 m!1957933))

(assert (=> b!1628090 m!1955009))

(assert (=> b!1628090 m!1956003))

(assert (=> b!1628090 m!1956705))

(assert (=> b!1628090 m!1957931))

(declare-fun m!1957937 () Bool)

(assert (=> b!1628090 m!1957937))

(assert (=> b!1628090 m!1957933))

(declare-fun m!1957943 () Bool)

(assert (=> b!1628090 m!1957943))

(assert (=> b!1628090 m!1957933))

(declare-fun m!1957947 () Bool)

(assert (=> b!1628090 m!1957947))

(declare-fun m!1957951 () Bool)

(assert (=> b!1628090 m!1957951))

(assert (=> b!1628090 m!1956705))

(declare-fun m!1957957 () Bool)

(assert (=> b!1628090 m!1957957))

(declare-fun m!1957959 () Bool)

(assert (=> b!1628090 m!1957959))

(assert (=> b!1628090 m!1957957))

(assert (=> d!490265 m!1956585))

(declare-fun m!1957963 () Bool)

(assert (=> d!490265 m!1957963))

(declare-fun m!1957965 () Bool)

(assert (=> d!490265 m!1957965))

(assert (=> d!490265 m!1955009))

(assert (=> d!490265 m!1956003))

(declare-fun m!1957969 () Bool)

(assert (=> d!490265 m!1957969))

(assert (=> d!490265 m!1956731))

(assert (=> d!490265 m!1956003))

(assert (=> d!490265 m!1956585))

(assert (=> d!490265 m!1955009))

(declare-fun m!1957973 () Bool)

(assert (=> d!490265 m!1957973))

(assert (=> b!1628093 m!1956585))

(declare-fun m!1957977 () Bool)

(assert (=> b!1628093 m!1957977))

(assert (=> b!1628093 m!1955009))

(assert (=> b!1628093 m!1956003))

(assert (=> b!1628093 m!1956003))

(assert (=> b!1628093 m!1956585))

(declare-fun m!1957987 () Bool)

(assert (=> b!1628093 m!1957987))

(declare-fun m!1957989 () Bool)

(assert (=> b!1628093 m!1957989))

(assert (=> b!1628092 m!1957989))

(assert (=> b!1628092 m!1955009))

(assert (=> b!1628092 m!1956003))

(assert (=> b!1628092 m!1956003))

(assert (=> b!1628092 m!1956585))

(assert (=> b!1628092 m!1956585))

(assert (=> b!1628092 m!1957977))

(assert (=> b!1628091 m!1956705))

(assert (=> b!1628091 m!1957957))

(assert (=> b!1628091 m!1956705))

(assert (=> b!1628091 m!1957957))

(assert (=> b!1628091 m!1957959))

(declare-fun m!1957993 () Bool)

(assert (=> b!1628091 m!1957993))

(assert (=> b!1628095 m!1957965))

(assert (=> bm!105269 d!490265))

(declare-fun d!490299 () Bool)

(assert (=> d!490299 (= (isEmpty!10890 lt!587999) (not ((_ is Some!3315) lt!587999)))))

(assert (=> d!489683 d!490299))

(declare-fun d!490303 () Bool)

(assert (=> d!490303 (= (inv!23225 (tag!3423 (h!23256 (t!149058 rules!1846)))) (= (mod (str.len (value!99304 (tag!3423 (h!23256 (t!149058 rules!1846))))) 2) 0))))

(assert (=> b!1627117 d!490303))

(declare-fun d!490307 () Bool)

(declare-fun res!728111 () Bool)

(declare-fun e!1044222 () Bool)

(assert (=> d!490307 (=> (not res!728111) (not e!1044222))))

(assert (=> d!490307 (= res!728111 (semiInverseModEq!1201 (toChars!4431 (transformation!3145 (h!23256 (t!149058 rules!1846)))) (toValue!4572 (transformation!3145 (h!23256 (t!149058 rules!1846))))))))

(assert (=> d!490307 (= (inv!23228 (transformation!3145 (h!23256 (t!149058 rules!1846)))) e!1044222)))

(declare-fun b!1628123 () Bool)

(assert (=> b!1628123 (= e!1044222 (equivClasses!1142 (toChars!4431 (transformation!3145 (h!23256 (t!149058 rules!1846)))) (toValue!4572 (transformation!3145 (h!23256 (t!149058 rules!1846))))))))

(assert (= (and d!490307 res!728111) b!1628123))

(declare-fun m!1958009 () Bool)

(assert (=> d!490307 m!1958009))

(declare-fun m!1958011 () Bool)

(assert (=> b!1628123 m!1958011))

(assert (=> b!1627117 d!490307))

(declare-fun b!1628140 () Bool)

(declare-fun e!1044231 () List!17926)

(declare-fun ++!4756 (List!17926 List!17926) List!17926)

(assert (=> b!1628140 (= e!1044231 (++!4756 (list!7014 (left!14349 (c!264625 lt!587990))) (list!7014 (right!14679 (c!264625 lt!587990)))))))

(declare-fun d!490311 () Bool)

(declare-fun c!265007 () Bool)

(assert (=> d!490311 (= c!265007 ((_ is Empty!5939) (c!264625 lt!587990)))))

(declare-fun e!1044230 () List!17926)

(assert (=> d!490311 (= (list!7014 (c!264625 lt!587990)) e!1044230)))

(declare-fun b!1628137 () Bool)

(assert (=> b!1628137 (= e!1044230 Nil!17856)))

(declare-fun b!1628138 () Bool)

(assert (=> b!1628138 (= e!1044230 e!1044231)))

(declare-fun c!265008 () Bool)

(assert (=> b!1628138 (= c!265008 ((_ is Leaf!8732) (c!264625 lt!587990)))))

(declare-fun b!1628139 () Bool)

(declare-fun list!7020 (IArray!11883) List!17926)

(assert (=> b!1628139 (= e!1044231 (list!7020 (xs!8771 (c!264625 lt!587990))))))

(assert (= (and d!490311 c!265007) b!1628137))

(assert (= (and d!490311 (not c!265007)) b!1628138))

(assert (= (and b!1628138 c!265008) b!1628139))

(assert (= (and b!1628138 (not c!265008)) b!1628140))

(declare-fun m!1958045 () Bool)

(assert (=> b!1628140 m!1958045))

(declare-fun m!1958047 () Bool)

(assert (=> b!1628140 m!1958047))

(assert (=> b!1628140 m!1958045))

(assert (=> b!1628140 m!1958047))

(declare-fun m!1958049 () Bool)

(assert (=> b!1628140 m!1958049))

(declare-fun m!1958051 () Bool)

(assert (=> b!1628139 m!1958051))

(assert (=> d!489817 d!490311))

(declare-fun d!490323 () Bool)

(declare-fun charsToBigInt!1 (List!17923) Int)

(assert (=> d!490323 (= (inv!17 (value!99305 (h!23257 tokens!457))) (= (charsToBigInt!1 (text!23093 (value!99305 (h!23257 tokens!457)))) (value!99297 (value!99305 (h!23257 tokens!457)))))))

(declare-fun bs!394954 () Bool)

(assert (= bs!394954 d!490323))

(declare-fun m!1958053 () Bool)

(assert (=> bs!394954 m!1958053))

(assert (=> b!1626821 d!490323))

(declare-fun d!490325 () Bool)

(declare-fun lt!589146 () Bool)

(assert (=> d!490325 (= lt!589146 (select (content!2475 rules!1846) (rule!4971 (_1!10119 (get!5150 lt!588381)))))))

(declare-fun e!1044232 () Bool)

(assert (=> d!490325 (= lt!589146 e!1044232)))

(declare-fun res!728116 () Bool)

(assert (=> d!490325 (=> (not res!728116) (not e!1044232))))

(assert (=> d!490325 (= res!728116 ((_ is Cons!17855) rules!1846))))

(assert (=> d!490325 (= (contains!3120 rules!1846 (rule!4971 (_1!10119 (get!5150 lt!588381)))) lt!589146)))

(declare-fun b!1628141 () Bool)

(declare-fun e!1044233 () Bool)

(assert (=> b!1628141 (= e!1044232 e!1044233)))

(declare-fun res!728115 () Bool)

(assert (=> b!1628141 (=> res!728115 e!1044233)))

(assert (=> b!1628141 (= res!728115 (= (h!23256 rules!1846) (rule!4971 (_1!10119 (get!5150 lt!588381)))))))

(declare-fun b!1628142 () Bool)

(assert (=> b!1628142 (= e!1044233 (contains!3120 (t!149058 rules!1846) (rule!4971 (_1!10119 (get!5150 lt!588381)))))))

(assert (= (and d!490325 res!728116) b!1628141))

(assert (= (and b!1628141 (not res!728115)) b!1628142))

(assert (=> d!490325 m!1955443))

(declare-fun m!1958055 () Bool)

(assert (=> d!490325 m!1958055))

(declare-fun m!1958057 () Bool)

(assert (=> b!1628142 m!1958057))

(assert (=> b!1626727 d!490325))

(assert (=> b!1626727 d!489937))

(declare-fun d!490327 () Bool)

(declare-fun lt!589165 () List!17924)

(assert (=> d!490327 (= lt!589165 (++!4751 (list!7011 (BalanceConc!11821 Empty!5938)) (printList!889 thiss!17113 (dropList!611 lt!587983 0))))))

(declare-fun e!1044249 () List!17924)

(assert (=> d!490327 (= lt!589165 e!1044249)))

(declare-fun c!265019 () Bool)

(assert (=> d!490327 (= c!265019 ((_ is Cons!17856) (dropList!611 lt!587983 0)))))

(assert (=> d!490327 (= (printListTailRec!357 thiss!17113 (dropList!611 lt!587983 0) (list!7011 (BalanceConc!11821 Empty!5938))) lt!589165)))

(declare-fun b!1628168 () Bool)

(assert (=> b!1628168 (= e!1044249 (printListTailRec!357 thiss!17113 (t!149059 (dropList!611 lt!587983 0)) (++!4751 (list!7011 (BalanceConc!11821 Empty!5938)) (list!7011 (charsOf!1794 (h!23257 (dropList!611 lt!587983 0)))))))))

(declare-fun lt!589164 () List!17924)

(assert (=> b!1628168 (= lt!589164 (list!7011 (charsOf!1794 (h!23257 (dropList!611 lt!587983 0)))))))

(declare-fun lt!589162 () List!17924)

(assert (=> b!1628168 (= lt!589162 (printList!889 thiss!17113 (t!149059 (dropList!611 lt!587983 0))))))

(declare-fun lt!589166 () Unit!28923)

(declare-fun lemmaConcatAssociativity!1006 (List!17924 List!17924 List!17924) Unit!28923)

(assert (=> b!1628168 (= lt!589166 (lemmaConcatAssociativity!1006 (list!7011 (BalanceConc!11821 Empty!5938)) lt!589164 lt!589162))))

(assert (=> b!1628168 (= (++!4751 (++!4751 (list!7011 (BalanceConc!11821 Empty!5938)) lt!589164) lt!589162) (++!4751 (list!7011 (BalanceConc!11821 Empty!5938)) (++!4751 lt!589164 lt!589162)))))

(declare-fun lt!589163 () Unit!28923)

(assert (=> b!1628168 (= lt!589163 lt!589166)))

(declare-fun b!1628169 () Bool)

(assert (=> b!1628169 (= e!1044249 (list!7011 (BalanceConc!11821 Empty!5938)))))

(assert (= (and d!490327 c!265019) b!1628168))

(assert (= (and d!490327 (not c!265019)) b!1628169))

(assert (=> d!490327 m!1955687))

(declare-fun m!1958063 () Bool)

(assert (=> d!490327 m!1958063))

(assert (=> d!490327 m!1955685))

(assert (=> d!490327 m!1958063))

(declare-fun m!1958065 () Bool)

(assert (=> d!490327 m!1958065))

(declare-fun m!1958067 () Bool)

(assert (=> b!1628168 m!1958067))

(declare-fun m!1958069 () Bool)

(assert (=> b!1628168 m!1958069))

(assert (=> b!1628168 m!1955685))

(declare-fun m!1958071 () Bool)

(assert (=> b!1628168 m!1958071))

(declare-fun m!1958073 () Bool)

(assert (=> b!1628168 m!1958073))

(assert (=> b!1628168 m!1955685))

(assert (=> b!1628168 m!1958067))

(assert (=> b!1628168 m!1955685))

(declare-fun m!1958075 () Bool)

(assert (=> b!1628168 m!1958075))

(declare-fun m!1958077 () Bool)

(assert (=> b!1628168 m!1958077))

(assert (=> b!1628168 m!1955685))

(declare-fun m!1958079 () Bool)

(assert (=> b!1628168 m!1958079))

(declare-fun m!1958081 () Bool)

(assert (=> b!1628168 m!1958081))

(assert (=> b!1628168 m!1958075))

(declare-fun m!1958083 () Bool)

(assert (=> b!1628168 m!1958083))

(assert (=> b!1628168 m!1958079))

(assert (=> b!1628168 m!1958083))

(assert (=> b!1628168 m!1958081))

(declare-fun m!1958085 () Bool)

(assert (=> b!1628168 m!1958085))

(assert (=> d!489665 d!490327))

(declare-fun d!490331 () Bool)

(assert (=> d!490331 (= (list!7011 lt!588370) (list!7016 (c!264623 lt!588370)))))

(declare-fun bs!394955 () Bool)

(assert (= bs!394955 d!490331))

(declare-fun m!1958087 () Bool)

(assert (=> bs!394955 m!1958087))

(assert (=> d!489665 d!490331))

(declare-fun d!490333 () Bool)

(declare-fun lt!589167 () Int)

(assert (=> d!490333 (= lt!589167 (size!14291 (list!7012 lt!587983)))))

(assert (=> d!490333 (= lt!589167 (size!14292 (c!264625 lt!587983)))))

(assert (=> d!490333 (= (size!14283 lt!587983) lt!589167)))

(declare-fun bs!394956 () Bool)

(assert (= bs!394956 d!490333))

(assert (=> bs!394956 m!1955669))

(assert (=> bs!394956 m!1955669))

(declare-fun m!1958089 () Bool)

(assert (=> bs!394956 m!1958089))

(declare-fun m!1958091 () Bool)

(assert (=> bs!394956 m!1958091))

(assert (=> d!489665 d!490333))

(declare-fun d!490335 () Bool)

(assert (=> d!490335 (= (dropList!611 lt!587983 0) (drop!874 (list!7014 (c!264625 lt!587983)) 0))))

(declare-fun bs!394957 () Bool)

(assert (= bs!394957 d!490335))

(assert (=> bs!394957 m!1956651))

(assert (=> bs!394957 m!1956651))

(declare-fun m!1958103 () Bool)

(assert (=> bs!394957 m!1958103))

(assert (=> d!489665 d!490335))

(declare-fun d!490339 () Bool)

(assert (=> d!490339 (= (list!7011 (BalanceConc!11821 Empty!5938)) (list!7016 (c!264623 (BalanceConc!11821 Empty!5938))))))

(declare-fun bs!394958 () Bool)

(assert (= bs!394958 d!490339))

(declare-fun m!1958105 () Bool)

(assert (=> bs!394958 m!1958105))

(assert (=> d!489665 d!490339))

(declare-fun d!490341 () Bool)

(assert (=> d!490341 (= (isEmpty!10890 lt!588381) (not ((_ is Some!3315) lt!588381)))))

(assert (=> d!489685 d!490341))

(declare-fun b!1628179 () Bool)

(declare-fun e!1044255 () Bool)

(declare-fun e!1044257 () Bool)

(assert (=> b!1628179 (= e!1044255 e!1044257)))

(declare-fun res!728123 () Bool)

(assert (=> b!1628179 (=> (not res!728123) (not e!1044257))))

(assert (=> b!1628179 (= res!728123 (not ((_ is Nil!17854) lt!587996)))))

(declare-fun b!1628181 () Bool)

(assert (=> b!1628181 (= e!1044257 (isPrefix!1405 (tail!2367 lt!587996) (tail!2367 lt!587996)))))

(declare-fun b!1628180 () Bool)

(declare-fun res!728126 () Bool)

(assert (=> b!1628180 (=> (not res!728126) (not e!1044257))))

(assert (=> b!1628180 (= res!728126 (= (head!3449 lt!587996) (head!3449 lt!587996)))))

(declare-fun d!490343 () Bool)

(declare-fun e!1044256 () Bool)

(assert (=> d!490343 e!1044256))

(declare-fun res!728124 () Bool)

(assert (=> d!490343 (=> res!728124 e!1044256)))

(declare-fun lt!589169 () Bool)

(assert (=> d!490343 (= res!728124 (not lt!589169))))

(assert (=> d!490343 (= lt!589169 e!1044255)))

(declare-fun res!728125 () Bool)

(assert (=> d!490343 (=> res!728125 e!1044255)))

(assert (=> d!490343 (= res!728125 ((_ is Nil!17854) lt!587996))))

(assert (=> d!490343 (= (isPrefix!1405 lt!587996 lt!587996) lt!589169)))

(declare-fun b!1628182 () Bool)

(assert (=> b!1628182 (= e!1044256 (>= (size!14282 lt!587996) (size!14282 lt!587996)))))

(assert (= (and d!490343 (not res!728125)) b!1628179))

(assert (= (and b!1628179 res!728123) b!1628180))

(assert (= (and b!1628180 res!728126) b!1628181))

(assert (= (and d!490343 (not res!728124)) b!1628182))

(assert (=> b!1628181 m!1955293))

(assert (=> b!1628181 m!1955293))

(assert (=> b!1628181 m!1955293))

(assert (=> b!1628181 m!1955293))

(declare-fun m!1958107 () Bool)

(assert (=> b!1628181 m!1958107))

(assert (=> b!1628180 m!1955299))

(assert (=> b!1628180 m!1955299))

(assert (=> b!1628182 m!1955305))

(assert (=> b!1628182 m!1955305))

(assert (=> d!489685 d!490343))

(declare-fun d!490345 () Bool)

(assert (=> d!490345 (isPrefix!1405 lt!587996 lt!587996)))

(declare-fun lt!589170 () Unit!28923)

(assert (=> d!490345 (= lt!589170 (choose!9788 lt!587996 lt!587996))))

(assert (=> d!490345 (= (lemmaIsPrefixRefl!962 lt!587996 lt!587996) lt!589170)))

(declare-fun bs!394959 () Bool)

(assert (= bs!394959 d!490345))

(assert (=> bs!394959 m!1955767))

(declare-fun m!1958109 () Bool)

(assert (=> bs!394959 m!1958109))

(assert (=> d!489685 d!490345))

(assert (=> d!489685 d!490005))

(declare-fun b!1628189 () Bool)

(declare-fun e!1044264 () Bool)

(declare-fun e!1044262 () Bool)

(assert (=> b!1628189 (= e!1044264 e!1044262)))

(declare-fun c!265028 () Bool)

(assert (=> b!1628189 (= c!265028 ((_ is EmptyLang!4473) (regex!3145 (rule!4971 (_1!10119 (get!5150 lt!588381))))))))

(declare-fun b!1628190 () Bool)

(declare-fun lt!589173 () Bool)

(assert (=> b!1628190 (= e!1044262 (not lt!589173))))

(declare-fun b!1628191 () Bool)

(declare-fun res!728133 () Bool)

(declare-fun e!1044266 () Bool)

(assert (=> b!1628191 (=> (not res!728133) (not e!1044266))))

(declare-fun call!105421 () Bool)

(assert (=> b!1628191 (= res!728133 (not call!105421))))

(declare-fun bm!105416 () Bool)

(assert (=> bm!105416 (= call!105421 (isEmpty!10881 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588381))))))))

(declare-fun b!1628192 () Bool)

(declare-fun res!728134 () Bool)

(declare-fun e!1044265 () Bool)

(assert (=> b!1628192 (=> res!728134 e!1044265)))

(assert (=> b!1628192 (= res!728134 (not (isEmpty!10881 (tail!2367 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588381))))))))))

(declare-fun b!1628193 () Bool)

(declare-fun e!1044263 () Bool)

(assert (=> b!1628193 (= e!1044263 (matchR!1972 (derivativeStep!1084 (regex!3145 (rule!4971 (_1!10119 (get!5150 lt!588381)))) (head!3449 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588381)))))) (tail!2367 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588381)))))))))

(declare-fun b!1628194 () Bool)

(declare-fun res!728131 () Bool)

(assert (=> b!1628194 (=> (not res!728131) (not e!1044266))))

(assert (=> b!1628194 (= res!728131 (isEmpty!10881 (tail!2367 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588381)))))))))

(declare-fun b!1628195 () Bool)

(declare-fun res!728130 () Bool)

(declare-fun e!1044268 () Bool)

(assert (=> b!1628195 (=> res!728130 e!1044268)))

(assert (=> b!1628195 (= res!728130 e!1044266)))

(declare-fun res!728129 () Bool)

(assert (=> b!1628195 (=> (not res!728129) (not e!1044266))))

(assert (=> b!1628195 (= res!728129 lt!589173)))

(declare-fun b!1628196 () Bool)

(assert (=> b!1628196 (= e!1044264 (= lt!589173 call!105421))))

(declare-fun b!1628197 () Bool)

(assert (=> b!1628197 (= e!1044266 (= (head!3449 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588381))))) (c!264624 (regex!3145 (rule!4971 (_1!10119 (get!5150 lt!588381)))))))))

(declare-fun b!1628199 () Bool)

(assert (=> b!1628199 (= e!1044265 (not (= (head!3449 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588381))))) (c!264624 (regex!3145 (rule!4971 (_1!10119 (get!5150 lt!588381))))))))))

(declare-fun b!1628200 () Bool)

(assert (=> b!1628200 (= e!1044263 (nullable!1319 (regex!3145 (rule!4971 (_1!10119 (get!5150 lt!588381))))))))

(declare-fun b!1628201 () Bool)

(declare-fun e!1044267 () Bool)

(assert (=> b!1628201 (= e!1044268 e!1044267)))

(declare-fun res!728135 () Bool)

(assert (=> b!1628201 (=> (not res!728135) (not e!1044267))))

(assert (=> b!1628201 (= res!728135 (not lt!589173))))

(declare-fun b!1628202 () Bool)

(declare-fun res!728132 () Bool)

(assert (=> b!1628202 (=> res!728132 e!1044268)))

(assert (=> b!1628202 (= res!728132 (not ((_ is ElementMatch!4473) (regex!3145 (rule!4971 (_1!10119 (get!5150 lt!588381)))))))))

(assert (=> b!1628202 (= e!1044262 e!1044268)))

(declare-fun d!490347 () Bool)

(assert (=> d!490347 e!1044264))

(declare-fun c!265026 () Bool)

(assert (=> d!490347 (= c!265026 ((_ is EmptyExpr!4473) (regex!3145 (rule!4971 (_1!10119 (get!5150 lt!588381))))))))

(assert (=> d!490347 (= lt!589173 e!1044263)))

(declare-fun c!265027 () Bool)

(assert (=> d!490347 (= c!265027 (isEmpty!10881 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588381))))))))

(assert (=> d!490347 (validRegex!1780 (regex!3145 (rule!4971 (_1!10119 (get!5150 lt!588381)))))))

(assert (=> d!490347 (= (matchR!1972 (regex!3145 (rule!4971 (_1!10119 (get!5150 lt!588381)))) (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588381))))) lt!589173)))

(declare-fun b!1628198 () Bool)

(assert (=> b!1628198 (= e!1044267 e!1044265)))

(declare-fun res!728136 () Bool)

(assert (=> b!1628198 (=> res!728136 e!1044265)))

(assert (=> b!1628198 (= res!728136 call!105421)))

(assert (= (and d!490347 c!265027) b!1628200))

(assert (= (and d!490347 (not c!265027)) b!1628193))

(assert (= (and d!490347 c!265026) b!1628196))

(assert (= (and d!490347 (not c!265026)) b!1628189))

(assert (= (and b!1628189 c!265028) b!1628190))

(assert (= (and b!1628189 (not c!265028)) b!1628202))

(assert (= (and b!1628202 (not res!728132)) b!1628195))

(assert (= (and b!1628195 res!728129) b!1628191))

(assert (= (and b!1628191 res!728133) b!1628194))

(assert (= (and b!1628194 res!728131) b!1628197))

(assert (= (and b!1628195 (not res!728130)) b!1628201))

(assert (= (and b!1628201 res!728135) b!1628198))

(assert (= (and b!1628198 (not res!728136)) b!1628192))

(assert (= (and b!1628192 (not res!728134)) b!1628199))

(assert (= (or b!1628196 b!1628191 b!1628198) bm!105416))

(declare-fun m!1958111 () Bool)

(assert (=> b!1628200 m!1958111))

(assert (=> b!1628199 m!1955759))

(declare-fun m!1958113 () Bool)

(assert (=> b!1628199 m!1958113))

(assert (=> b!1628192 m!1955759))

(declare-fun m!1958115 () Bool)

(assert (=> b!1628192 m!1958115))

(assert (=> b!1628192 m!1958115))

(declare-fun m!1958117 () Bool)

(assert (=> b!1628192 m!1958117))

(assert (=> b!1628194 m!1955759))

(assert (=> b!1628194 m!1958115))

(assert (=> b!1628194 m!1958115))

(assert (=> b!1628194 m!1958117))

(assert (=> b!1628193 m!1955759))

(assert (=> b!1628193 m!1958113))

(assert (=> b!1628193 m!1958113))

(declare-fun m!1958119 () Bool)

(assert (=> b!1628193 m!1958119))

(assert (=> b!1628193 m!1955759))

(assert (=> b!1628193 m!1958115))

(assert (=> b!1628193 m!1958119))

(assert (=> b!1628193 m!1958115))

(declare-fun m!1958125 () Bool)

(assert (=> b!1628193 m!1958125))

(assert (=> bm!105416 m!1955759))

(declare-fun m!1958133 () Bool)

(assert (=> bm!105416 m!1958133))

(assert (=> b!1628197 m!1955759))

(assert (=> b!1628197 m!1958113))

(assert (=> d!490347 m!1955759))

(assert (=> d!490347 m!1958133))

(declare-fun m!1958135 () Bool)

(assert (=> d!490347 m!1958135))

(assert (=> b!1626724 d!490347))

(assert (=> b!1626724 d!489937))

(assert (=> b!1626724 d!489933))

(assert (=> b!1626724 d!489935))

(assert (=> b!1626976 d!489969))

(declare-fun d!490351 () Bool)

(assert (=> d!490351 (= (height!907 (++!4754 (c!264623 lt!587987) (c!264623 lt!587976))) (ite ((_ is Empty!5938) (++!4754 (c!264623 lt!587987) (c!264623 lt!587976))) 0 (ite ((_ is Leaf!8731) (++!4754 (c!264623 lt!587987) (c!264623 lt!587976))) 1 (cheight!6149 (++!4754 (c!264623 lt!587987) (c!264623 lt!587976))))))))

(assert (=> b!1626976 d!490351))

(declare-fun d!490353 () Bool)

(assert (=> d!490353 (= (height!907 (c!264623 lt!587976)) (ite ((_ is Empty!5938) (c!264623 lt!587976)) 0 (ite ((_ is Leaf!8731) (c!264623 lt!587976)) 1 (cheight!6149 (c!264623 lt!587976)))))))

(assert (=> b!1626976 d!490353))

(declare-fun d!490355 () Bool)

(assert (=> d!490355 (= (height!907 (c!264623 lt!587987)) (ite ((_ is Empty!5938) (c!264623 lt!587987)) 0 (ite ((_ is Leaf!8731) (c!264623 lt!587987)) 1 (cheight!6149 (c!264623 lt!587987)))))))

(assert (=> b!1626976 d!490355))

(declare-fun d!490357 () Bool)

(assert (=> d!490357 (= (max!0 (height!907 (c!264623 lt!587987)) (height!907 (c!264623 lt!587976))) (ite (< (height!907 (c!264623 lt!587987)) (height!907 (c!264623 lt!587976))) (height!907 (c!264623 lt!587976)) (height!907 (c!264623 lt!587987))))))

(assert (=> b!1626976 d!490357))

(declare-fun d!490359 () Bool)

(declare-fun c!265030 () Bool)

(assert (=> d!490359 (= c!265030 (isEmpty!10881 (tail!2367 (++!4751 lt!587996 lt!587980))))))

(declare-fun e!1044271 () Bool)

(assert (=> d!490359 (= (prefixMatch!408 (derivativeStep!1084 lt!587975 (head!3449 (++!4751 lt!587996 lt!587980))) (tail!2367 (++!4751 lt!587996 lt!587980))) e!1044271)))

(declare-fun b!1628206 () Bool)

(assert (=> b!1628206 (= e!1044271 (not (lostCause!440 (derivativeStep!1084 lt!587975 (head!3449 (++!4751 lt!587996 lt!587980))))))))

(declare-fun b!1628207 () Bool)

(assert (=> b!1628207 (= e!1044271 (prefixMatch!408 (derivativeStep!1084 (derivativeStep!1084 lt!587975 (head!3449 (++!4751 lt!587996 lt!587980))) (head!3449 (tail!2367 (++!4751 lt!587996 lt!587980)))) (tail!2367 (tail!2367 (++!4751 lt!587996 lt!587980)))))))

(assert (= (and d!490359 c!265030) b!1628206))

(assert (= (and d!490359 (not c!265030)) b!1628207))

(assert (=> d!490359 m!1955575))

(declare-fun m!1958137 () Bool)

(assert (=> d!490359 m!1958137))

(assert (=> b!1628206 m!1955573))

(declare-fun m!1958139 () Bool)

(assert (=> b!1628206 m!1958139))

(assert (=> b!1628207 m!1955575))

(declare-fun m!1958141 () Bool)

(assert (=> b!1628207 m!1958141))

(assert (=> b!1628207 m!1955573))

(assert (=> b!1628207 m!1958141))

(declare-fun m!1958143 () Bool)

(assert (=> b!1628207 m!1958143))

(assert (=> b!1628207 m!1955575))

(declare-fun m!1958145 () Bool)

(assert (=> b!1628207 m!1958145))

(assert (=> b!1628207 m!1958143))

(assert (=> b!1628207 m!1958145))

(declare-fun m!1958147 () Bool)

(assert (=> b!1628207 m!1958147))

(assert (=> b!1626631 d!490359))

(declare-fun bm!105427 () Bool)

(declare-fun call!105432 () Regex!4473)

(declare-fun c!265053 () Bool)

(declare-fun c!265051 () Bool)

(assert (=> bm!105427 (= call!105432 (derivativeStep!1084 (ite c!265051 (regTwo!9459 lt!587975) (ite c!265053 (regTwo!9458 lt!587975) (regOne!9458 lt!587975))) (head!3449 (++!4751 lt!587996 lt!587980))))))

(declare-fun b!1628260 () Bool)

(declare-fun e!1044303 () Regex!4473)

(assert (=> b!1628260 (= e!1044303 EmptyLang!4473)))

(declare-fun d!490361 () Bool)

(declare-fun lt!589195 () Regex!4473)

(assert (=> d!490361 (validRegex!1780 lt!589195)))

(assert (=> d!490361 (= lt!589195 e!1044303)))

(declare-fun c!265050 () Bool)

(assert (=> d!490361 (= c!265050 (or ((_ is EmptyExpr!4473) lt!587975) ((_ is EmptyLang!4473) lt!587975)))))

(assert (=> d!490361 (validRegex!1780 lt!587975)))

(assert (=> d!490361 (= (derivativeStep!1084 lt!587975 (head!3449 (++!4751 lt!587996 lt!587980))) lt!589195)))

(declare-fun bm!105428 () Bool)

(declare-fun call!105435 () Regex!4473)

(declare-fun call!105434 () Regex!4473)

(assert (=> bm!105428 (= call!105435 call!105434)))

(declare-fun call!105433 () Regex!4473)

(declare-fun b!1628261 () Bool)

(declare-fun e!1044304 () Regex!4473)

(assert (=> b!1628261 (= e!1044304 (Union!4473 (Concat!7709 call!105435 (regTwo!9458 lt!587975)) call!105433))))

(declare-fun b!1628262 () Bool)

(assert (=> b!1628262 (= c!265051 ((_ is Union!4473) lt!587975))))

(declare-fun e!1044307 () Regex!4473)

(declare-fun e!1044302 () Regex!4473)

(assert (=> b!1628262 (= e!1044307 e!1044302)))

(declare-fun b!1628263 () Bool)

(assert (=> b!1628263 (= e!1044304 (Union!4473 (Concat!7709 call!105433 (regTwo!9458 lt!587975)) EmptyLang!4473))))

(declare-fun b!1628264 () Bool)

(assert (=> b!1628264 (= e!1044302 (Union!4473 call!105434 call!105432))))

(declare-fun b!1628265 () Bool)

(declare-fun e!1044306 () Regex!4473)

(assert (=> b!1628265 (= e!1044302 e!1044306)))

(declare-fun c!265052 () Bool)

(assert (=> b!1628265 (= c!265052 ((_ is Star!4473) lt!587975))))

(declare-fun b!1628266 () Bool)

(assert (=> b!1628266 (= e!1044307 (ite (= (head!3449 (++!4751 lt!587996 lt!587980)) (c!264624 lt!587975)) EmptyExpr!4473 EmptyLang!4473))))

(declare-fun bm!105429 () Bool)

(assert (=> bm!105429 (= call!105434 (derivativeStep!1084 (ite c!265051 (regOne!9459 lt!587975) (ite c!265052 (reg!4802 lt!587975) (regOne!9458 lt!587975))) (head!3449 (++!4751 lt!587996 lt!587980))))))

(declare-fun b!1628267 () Bool)

(assert (=> b!1628267 (= e!1044306 (Concat!7709 call!105435 lt!587975))))

(declare-fun b!1628268 () Bool)

(assert (=> b!1628268 (= c!265053 (nullable!1319 (regOne!9458 lt!587975)))))

(assert (=> b!1628268 (= e!1044306 e!1044304)))

(declare-fun bm!105430 () Bool)

(assert (=> bm!105430 (= call!105433 call!105432)))

(declare-fun b!1628269 () Bool)

(assert (=> b!1628269 (= e!1044303 e!1044307)))

(declare-fun c!265054 () Bool)

(assert (=> b!1628269 (= c!265054 ((_ is ElementMatch!4473) lt!587975))))

(assert (= (and d!490361 c!265050) b!1628260))

(assert (= (and d!490361 (not c!265050)) b!1628269))

(assert (= (and b!1628269 c!265054) b!1628266))

(assert (= (and b!1628269 (not c!265054)) b!1628262))

(assert (= (and b!1628262 c!265051) b!1628264))

(assert (= (and b!1628262 (not c!265051)) b!1628265))

(assert (= (and b!1628265 c!265052) b!1628267))

(assert (= (and b!1628265 (not c!265052)) b!1628268))

(assert (= (and b!1628268 c!265053) b!1628261))

(assert (= (and b!1628268 (not c!265053)) b!1628263))

(assert (= (or b!1628261 b!1628263) bm!105430))

(assert (= (or b!1628267 b!1628261) bm!105428))

(assert (= (or b!1628264 bm!105428) bm!105429))

(assert (= (or b!1628264 bm!105430) bm!105427))

(assert (=> bm!105427 m!1955571))

(declare-fun m!1958237 () Bool)

(assert (=> bm!105427 m!1958237))

(declare-fun m!1958241 () Bool)

(assert (=> d!490361 m!1958241))

(assert (=> d!490361 m!1956141))

(assert (=> bm!105429 m!1955571))

(declare-fun m!1958247 () Bool)

(assert (=> bm!105429 m!1958247))

(declare-fun m!1958249 () Bool)

(assert (=> b!1628268 m!1958249))

(assert (=> b!1626631 d!490361))

(declare-fun d!490379 () Bool)

(assert (=> d!490379 (= (head!3449 (++!4751 lt!587996 lt!587980)) (h!23255 (++!4751 lt!587996 lt!587980)))))

(assert (=> b!1626631 d!490379))

(declare-fun d!490383 () Bool)

(assert (=> d!490383 (= (tail!2367 (++!4751 lt!587996 lt!587980)) (t!149057 (++!4751 lt!587996 lt!587980)))))

(assert (=> b!1626631 d!490383))

(declare-fun d!490385 () Bool)

(assert (=> d!490385 (= (isEmpty!10881 (++!4751 (originalCharacters!3959 (h!23257 tokens!457)) lt!588000)) ((_ is Nil!17854) (++!4751 (originalCharacters!3959 (h!23257 tokens!457)) lt!588000)))))

(assert (=> d!489681 d!490385))

(declare-fun b!1628277 () Bool)

(declare-fun e!1044311 () List!17924)

(assert (=> b!1628277 (= e!1044311 (list!7019 (xs!8770 (c!264623 lt!587987))))))

(declare-fun d!490387 () Bool)

(declare-fun c!265056 () Bool)

(assert (=> d!490387 (= c!265056 ((_ is Empty!5938) (c!264623 lt!587987)))))

(declare-fun e!1044310 () List!17924)

(assert (=> d!490387 (= (list!7016 (c!264623 lt!587987)) e!1044310)))

(declare-fun b!1628275 () Bool)

(assert (=> b!1628275 (= e!1044310 Nil!17854)))

(declare-fun b!1628278 () Bool)

(assert (=> b!1628278 (= e!1044311 (++!4751 (list!7016 (left!14348 (c!264623 lt!587987))) (list!7016 (right!14678 (c!264623 lt!587987)))))))

(declare-fun b!1628276 () Bool)

(assert (=> b!1628276 (= e!1044310 e!1044311)))

(declare-fun c!265057 () Bool)

(assert (=> b!1628276 (= c!265057 ((_ is Leaf!8731) (c!264623 lt!587987)))))

(assert (= (and d!490387 c!265056) b!1628275))

(assert (= (and d!490387 (not c!265056)) b!1628276))

(assert (= (and b!1628276 c!265057) b!1628277))

(assert (= (and b!1628276 (not c!265057)) b!1628278))

(declare-fun m!1958263 () Bool)

(assert (=> b!1628277 m!1958263))

(assert (=> b!1628278 m!1956979))

(assert (=> b!1628278 m!1956981))

(assert (=> b!1628278 m!1956979))

(assert (=> b!1628278 m!1956981))

(declare-fun m!1958269 () Bool)

(assert (=> b!1628278 m!1958269))

(assert (=> d!489711 d!490387))

(declare-fun d!490395 () Bool)

(declare-fun c!265059 () Bool)

(assert (=> d!490395 (= c!265059 (isEmpty!10881 (tail!2367 (++!4751 (originalCharacters!3959 (h!23257 tokens!457)) lt!588000))))))

(declare-fun e!1044315 () Bool)

(assert (=> d!490395 (= (prefixMatch!408 (derivativeStep!1084 lt!587975 (head!3449 (++!4751 (originalCharacters!3959 (h!23257 tokens!457)) lt!588000))) (tail!2367 (++!4751 (originalCharacters!3959 (h!23257 tokens!457)) lt!588000))) e!1044315)))

(declare-fun b!1628288 () Bool)

(assert (=> b!1628288 (= e!1044315 (not (lostCause!440 (derivativeStep!1084 lt!587975 (head!3449 (++!4751 (originalCharacters!3959 (h!23257 tokens!457)) lt!588000))))))))

(declare-fun b!1628289 () Bool)

(assert (=> b!1628289 (= e!1044315 (prefixMatch!408 (derivativeStep!1084 (derivativeStep!1084 lt!587975 (head!3449 (++!4751 (originalCharacters!3959 (h!23257 tokens!457)) lt!588000))) (head!3449 (tail!2367 (++!4751 (originalCharacters!3959 (h!23257 tokens!457)) lt!588000)))) (tail!2367 (tail!2367 (++!4751 (originalCharacters!3959 (h!23257 tokens!457)) lt!588000)))))))

(assert (= (and d!490395 c!265059) b!1628288))

(assert (= (and d!490395 (not c!265059)) b!1628289))

(assert (=> d!490395 m!1955745))

(declare-fun m!1958271 () Bool)

(assert (=> d!490395 m!1958271))

(assert (=> b!1628288 m!1955743))

(declare-fun m!1958273 () Bool)

(assert (=> b!1628288 m!1958273))

(assert (=> b!1628289 m!1955745))

(declare-fun m!1958275 () Bool)

(assert (=> b!1628289 m!1958275))

(assert (=> b!1628289 m!1955743))

(assert (=> b!1628289 m!1958275))

(declare-fun m!1958277 () Bool)

(assert (=> b!1628289 m!1958277))

(assert (=> b!1628289 m!1955745))

(declare-fun m!1958279 () Bool)

(assert (=> b!1628289 m!1958279))

(assert (=> b!1628289 m!1958277))

(assert (=> b!1628289 m!1958279))

(declare-fun m!1958281 () Bool)

(assert (=> b!1628289 m!1958281))

(assert (=> b!1626720 d!490395))

(declare-fun c!265063 () Bool)

(declare-fun bm!105432 () Bool)

(declare-fun c!265061 () Bool)

(declare-fun call!105437 () Regex!4473)

(assert (=> bm!105432 (= call!105437 (derivativeStep!1084 (ite c!265061 (regTwo!9459 lt!587975) (ite c!265063 (regTwo!9458 lt!587975) (regOne!9458 lt!587975))) (head!3449 (++!4751 (originalCharacters!3959 (h!23257 tokens!457)) lt!588000))))))

(declare-fun b!1628290 () Bool)

(declare-fun e!1044317 () Regex!4473)

(assert (=> b!1628290 (= e!1044317 EmptyLang!4473)))

(declare-fun d!490397 () Bool)

(declare-fun lt!589203 () Regex!4473)

(assert (=> d!490397 (validRegex!1780 lt!589203)))

(assert (=> d!490397 (= lt!589203 e!1044317)))

(declare-fun c!265060 () Bool)

(assert (=> d!490397 (= c!265060 (or ((_ is EmptyExpr!4473) lt!587975) ((_ is EmptyLang!4473) lt!587975)))))

(assert (=> d!490397 (validRegex!1780 lt!587975)))

(assert (=> d!490397 (= (derivativeStep!1084 lt!587975 (head!3449 (++!4751 (originalCharacters!3959 (h!23257 tokens!457)) lt!588000))) lt!589203)))

(declare-fun bm!105433 () Bool)

(declare-fun call!105440 () Regex!4473)

(declare-fun call!105439 () Regex!4473)

(assert (=> bm!105433 (= call!105440 call!105439)))

(declare-fun b!1628291 () Bool)

(declare-fun e!1044318 () Regex!4473)

(declare-fun call!105438 () Regex!4473)

(assert (=> b!1628291 (= e!1044318 (Union!4473 (Concat!7709 call!105440 (regTwo!9458 lt!587975)) call!105438))))

(declare-fun b!1628292 () Bool)

(assert (=> b!1628292 (= c!265061 ((_ is Union!4473) lt!587975))))

(declare-fun e!1044320 () Regex!4473)

(declare-fun e!1044316 () Regex!4473)

(assert (=> b!1628292 (= e!1044320 e!1044316)))

(declare-fun b!1628293 () Bool)

(assert (=> b!1628293 (= e!1044318 (Union!4473 (Concat!7709 call!105438 (regTwo!9458 lt!587975)) EmptyLang!4473))))

(declare-fun b!1628294 () Bool)

(assert (=> b!1628294 (= e!1044316 (Union!4473 call!105439 call!105437))))

(declare-fun b!1628295 () Bool)

(declare-fun e!1044319 () Regex!4473)

(assert (=> b!1628295 (= e!1044316 e!1044319)))

(declare-fun c!265062 () Bool)

(assert (=> b!1628295 (= c!265062 ((_ is Star!4473) lt!587975))))

(declare-fun b!1628296 () Bool)

(assert (=> b!1628296 (= e!1044320 (ite (= (head!3449 (++!4751 (originalCharacters!3959 (h!23257 tokens!457)) lt!588000)) (c!264624 lt!587975)) EmptyExpr!4473 EmptyLang!4473))))

(declare-fun bm!105434 () Bool)

(assert (=> bm!105434 (= call!105439 (derivativeStep!1084 (ite c!265061 (regOne!9459 lt!587975) (ite c!265062 (reg!4802 lt!587975) (regOne!9458 lt!587975))) (head!3449 (++!4751 (originalCharacters!3959 (h!23257 tokens!457)) lt!588000))))))

(declare-fun b!1628297 () Bool)

(assert (=> b!1628297 (= e!1044319 (Concat!7709 call!105440 lt!587975))))

(declare-fun b!1628298 () Bool)

(assert (=> b!1628298 (= c!265063 (nullable!1319 (regOne!9458 lt!587975)))))

(assert (=> b!1628298 (= e!1044319 e!1044318)))

(declare-fun bm!105435 () Bool)

(assert (=> bm!105435 (= call!105438 call!105437)))

(declare-fun b!1628299 () Bool)

(assert (=> b!1628299 (= e!1044317 e!1044320)))

(declare-fun c!265064 () Bool)

(assert (=> b!1628299 (= c!265064 ((_ is ElementMatch!4473) lt!587975))))

(assert (= (and d!490397 c!265060) b!1628290))

(assert (= (and d!490397 (not c!265060)) b!1628299))

(assert (= (and b!1628299 c!265064) b!1628296))

(assert (= (and b!1628299 (not c!265064)) b!1628292))

(assert (= (and b!1628292 c!265061) b!1628294))

(assert (= (and b!1628292 (not c!265061)) b!1628295))

(assert (= (and b!1628295 c!265062) b!1628297))

(assert (= (and b!1628295 (not c!265062)) b!1628298))

(assert (= (and b!1628298 c!265063) b!1628291))

(assert (= (and b!1628298 (not c!265063)) b!1628293))

(assert (= (or b!1628291 b!1628293) bm!105435))

(assert (= (or b!1628297 b!1628291) bm!105433))

(assert (= (or b!1628294 bm!105433) bm!105434))

(assert (= (or b!1628294 bm!105435) bm!105432))

(assert (=> bm!105432 m!1955741))

(declare-fun m!1958283 () Bool)

(assert (=> bm!105432 m!1958283))

(declare-fun m!1958285 () Bool)

(assert (=> d!490397 m!1958285))

(assert (=> d!490397 m!1956141))

(assert (=> bm!105434 m!1955741))

(declare-fun m!1958287 () Bool)

(assert (=> bm!105434 m!1958287))

(assert (=> b!1628298 m!1958249))

(assert (=> b!1626720 d!490397))

(declare-fun d!490399 () Bool)

(assert (=> d!490399 (= (head!3449 (++!4751 (originalCharacters!3959 (h!23257 tokens!457)) lt!588000)) (h!23255 (++!4751 (originalCharacters!3959 (h!23257 tokens!457)) lt!588000)))))

(assert (=> b!1626720 d!490399))

(declare-fun d!490401 () Bool)

(assert (=> d!490401 (= (tail!2367 (++!4751 (originalCharacters!3959 (h!23257 tokens!457)) lt!588000)) (t!149057 (++!4751 (originalCharacters!3959 (h!23257 tokens!457)) lt!588000)))))

(assert (=> b!1626720 d!490401))

(declare-fun d!490403 () Bool)

(declare-fun lt!589204 () Int)

(assert (=> d!490403 (= lt!589204 (size!14282 (list!7011 (_2!10117 lt!588445))))))

(assert (=> d!490403 (= lt!589204 (size!14290 (c!264623 (_2!10117 lt!588445))))))

(assert (=> d!490403 (= (size!14284 (_2!10117 lt!588445)) lt!589204)))

(declare-fun bs!394963 () Bool)

(assert (= bs!394963 d!490403))

(assert (=> bs!394963 m!1955885))

(assert (=> bs!394963 m!1955885))

(declare-fun m!1958299 () Bool)

(assert (=> bs!394963 m!1958299))

(declare-fun m!1958301 () Bool)

(assert (=> bs!394963 m!1958301))

(assert (=> b!1626801 d!490403))

(declare-fun d!490405 () Bool)

(declare-fun lt!589205 () Int)

(assert (=> d!490405 (= lt!589205 (size!14282 (list!7011 lt!587989)))))

(assert (=> d!490405 (= lt!589205 (size!14290 (c!264623 lt!587989)))))

(assert (=> d!490405 (= (size!14284 lt!587989) lt!589205)))

(declare-fun bs!394964 () Bool)

(assert (= bs!394964 d!490405))

(assert (=> bs!394964 m!1954949))

(assert (=> bs!394964 m!1954949))

(assert (=> bs!394964 m!1956767))

(declare-fun m!1958305 () Bool)

(assert (=> bs!394964 m!1958305))

(assert (=> b!1626801 d!490405))

(declare-fun d!490407 () Bool)

(declare-fun res!728161 () Bool)

(declare-fun e!1044322 () Bool)

(assert (=> d!490407 (=> res!728161 e!1044322)))

(assert (=> d!490407 (= res!728161 (or (not ((_ is Cons!17856) (Cons!17856 (h!23257 (t!149059 tokens!457)) (t!149059 (t!149059 tokens!457))))) (not ((_ is Cons!17856) (t!149059 (Cons!17856 (h!23257 (t!149059 tokens!457)) (t!149059 (t!149059 tokens!457))))))))))

(assert (=> d!490407 (= (tokensListTwoByTwoPredicateSeparableList!467 thiss!17113 (Cons!17856 (h!23257 (t!149059 tokens!457)) (t!149059 (t!149059 tokens!457))) rules!1846) e!1044322)))

(declare-fun b!1628300 () Bool)

(declare-fun e!1044321 () Bool)

(assert (=> b!1628300 (= e!1044322 e!1044321)))

(declare-fun res!728162 () Bool)

(assert (=> b!1628300 (=> (not res!728162) (not e!1044321))))

(assert (=> b!1628300 (= res!728162 (separableTokensPredicate!716 thiss!17113 (h!23257 (Cons!17856 (h!23257 (t!149059 tokens!457)) (t!149059 (t!149059 tokens!457)))) (h!23257 (t!149059 (Cons!17856 (h!23257 (t!149059 tokens!457)) (t!149059 (t!149059 tokens!457))))) rules!1846))))

(declare-fun lt!589208 () Unit!28923)

(declare-fun Unit!28972 () Unit!28923)

(assert (=> b!1628300 (= lt!589208 Unit!28972)))

(assert (=> b!1628300 (> (size!14284 (charsOf!1794 (h!23257 (t!149059 (Cons!17856 (h!23257 (t!149059 tokens!457)) (t!149059 (t!149059 tokens!457))))))) 0)))

(declare-fun lt!589211 () Unit!28923)

(declare-fun Unit!28973 () Unit!28923)

(assert (=> b!1628300 (= lt!589211 Unit!28973)))

(assert (=> b!1628300 (rulesProduceIndividualToken!1426 thiss!17113 rules!1846 (h!23257 (t!149059 (Cons!17856 (h!23257 (t!149059 tokens!457)) (t!149059 (t!149059 tokens!457))))))))

(declare-fun lt!589210 () Unit!28923)

(declare-fun Unit!28974 () Unit!28923)

(assert (=> b!1628300 (= lt!589210 Unit!28974)))

(assert (=> b!1628300 (rulesProduceIndividualToken!1426 thiss!17113 rules!1846 (h!23257 (Cons!17856 (h!23257 (t!149059 tokens!457)) (t!149059 (t!149059 tokens!457)))))))

(declare-fun lt!589207 () Unit!28923)

(declare-fun lt!589209 () Unit!28923)

(assert (=> b!1628300 (= lt!589207 lt!589209)))

(assert (=> b!1628300 (rulesProduceIndividualToken!1426 thiss!17113 rules!1846 (h!23257 (t!149059 (Cons!17856 (h!23257 (t!149059 tokens!457)) (t!149059 (t!149059 tokens!457))))))))

(assert (=> b!1628300 (= lt!589209 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!567 thiss!17113 rules!1846 (Cons!17856 (h!23257 (t!149059 tokens!457)) (t!149059 (t!149059 tokens!457))) (h!23257 (t!149059 (Cons!17856 (h!23257 (t!149059 tokens!457)) (t!149059 (t!149059 tokens!457)))))))))

(declare-fun lt!589212 () Unit!28923)

(declare-fun lt!589206 () Unit!28923)

(assert (=> b!1628300 (= lt!589212 lt!589206)))

(assert (=> b!1628300 (rulesProduceIndividualToken!1426 thiss!17113 rules!1846 (h!23257 (Cons!17856 (h!23257 (t!149059 tokens!457)) (t!149059 (t!149059 tokens!457)))))))

(assert (=> b!1628300 (= lt!589206 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!567 thiss!17113 rules!1846 (Cons!17856 (h!23257 (t!149059 tokens!457)) (t!149059 (t!149059 tokens!457))) (h!23257 (Cons!17856 (h!23257 (t!149059 tokens!457)) (t!149059 (t!149059 tokens!457))))))))

(declare-fun b!1628301 () Bool)

(assert (=> b!1628301 (= e!1044321 (tokensListTwoByTwoPredicateSeparableList!467 thiss!17113 (Cons!17856 (h!23257 (t!149059 (Cons!17856 (h!23257 (t!149059 tokens!457)) (t!149059 (t!149059 tokens!457))))) (t!149059 (t!149059 (Cons!17856 (h!23257 (t!149059 tokens!457)) (t!149059 (t!149059 tokens!457)))))) rules!1846))))

(assert (= (and d!490407 (not res!728161)) b!1628300))

(assert (= (and b!1628300 res!728162) b!1628301))

(declare-fun m!1958323 () Bool)

(assert (=> b!1628300 m!1958323))

(declare-fun m!1958325 () Bool)

(assert (=> b!1628300 m!1958325))

(assert (=> b!1628300 m!1958323))

(declare-fun m!1958331 () Bool)

(assert (=> b!1628300 m!1958331))

(declare-fun m!1958335 () Bool)

(assert (=> b!1628300 m!1958335))

(declare-fun m!1958339 () Bool)

(assert (=> b!1628300 m!1958339))

(declare-fun m!1958341 () Bool)

(assert (=> b!1628300 m!1958341))

(declare-fun m!1958345 () Bool)

(assert (=> b!1628300 m!1958345))

(declare-fun m!1958347 () Bool)

(assert (=> b!1628301 m!1958347))

(assert (=> b!1626605 d!490407))

(declare-fun b!1628362 () Bool)

(declare-fun e!1044355 () List!17926)

(assert (=> b!1628362 (= e!1044355 lt!588369)))

(declare-fun b!1628363 () Bool)

(declare-fun e!1044354 () Int)

(declare-fun call!105449 () Int)

(assert (=> b!1628363 (= e!1044354 call!105449)))

(declare-fun b!1628364 () Bool)

(assert (=> b!1628364 (= e!1044355 (drop!874 (t!149059 lt!588369) (- 0 1)))))

(declare-fun bm!105444 () Bool)

(assert (=> bm!105444 (= call!105449 (size!14291 lt!588369))))

(declare-fun d!490413 () Bool)

(declare-fun e!1044353 () Bool)

(assert (=> d!490413 e!1044353))

(declare-fun res!728182 () Bool)

(assert (=> d!490413 (=> (not res!728182) (not e!1044353))))

(declare-fun lt!589224 () List!17926)

(declare-fun content!2480 (List!17926) (InoxSet Token!5856))

(assert (=> d!490413 (= res!728182 (= ((_ map implies) (content!2480 lt!589224) (content!2480 lt!588369)) ((as const (InoxSet Token!5856)) true)))))

(declare-fun e!1044357 () List!17926)

(assert (=> d!490413 (= lt!589224 e!1044357)))

(declare-fun c!265086 () Bool)

(assert (=> d!490413 (= c!265086 ((_ is Nil!17856) lt!588369))))

(assert (=> d!490413 (= (drop!874 lt!588369 0) lt!589224)))

(declare-fun b!1628365 () Bool)

(declare-fun e!1044356 () Int)

(assert (=> b!1628365 (= e!1044356 0)))

(declare-fun b!1628366 () Bool)

(assert (=> b!1628366 (= e!1044354 e!1044356)))

(declare-fun c!265088 () Bool)

(assert (=> b!1628366 (= c!265088 (>= 0 call!105449))))

(declare-fun b!1628367 () Bool)

(assert (=> b!1628367 (= e!1044357 Nil!17856)))

(declare-fun b!1628368 () Bool)

(assert (=> b!1628368 (= e!1044353 (= (size!14291 lt!589224) e!1044354))))

(declare-fun c!265087 () Bool)

(assert (=> b!1628368 (= c!265087 (<= 0 0))))

(declare-fun b!1628369 () Bool)

(assert (=> b!1628369 (= e!1044357 e!1044355)))

(declare-fun c!265085 () Bool)

(assert (=> b!1628369 (= c!265085 (<= 0 0))))

(declare-fun b!1628370 () Bool)

(assert (=> b!1628370 (= e!1044356 (- call!105449 0))))

(assert (= (and d!490413 c!265086) b!1628367))

(assert (= (and d!490413 (not c!265086)) b!1628369))

(assert (= (and b!1628369 c!265085) b!1628362))

(assert (= (and b!1628369 (not c!265085)) b!1628364))

(assert (= (and d!490413 res!728182) b!1628368))

(assert (= (and b!1628368 c!265087) b!1628363))

(assert (= (and b!1628368 (not c!265087)) b!1628366))

(assert (= (and b!1628366 c!265088) b!1628365))

(assert (= (and b!1628366 (not c!265088)) b!1628370))

(assert (= (or b!1628363 b!1628366 b!1628370) bm!105444))

(declare-fun m!1958415 () Bool)

(assert (=> b!1628364 m!1958415))

(declare-fun m!1958417 () Bool)

(assert (=> bm!105444 m!1958417))

(declare-fun m!1958419 () Bool)

(assert (=> d!490413 m!1958419))

(declare-fun m!1958421 () Bool)

(assert (=> d!490413 m!1958421))

(declare-fun m!1958423 () Bool)

(assert (=> b!1628368 m!1958423))

(assert (=> b!1626704 d!490413))

(declare-fun d!490431 () Bool)

(assert (=> d!490431 (= (tail!2368 (drop!874 lt!588369 0)) (t!149059 (drop!874 lt!588369 0)))))

(assert (=> b!1626704 d!490431))

(declare-fun d!490433 () Bool)

(declare-fun lt!589225 () BalanceConc!11820)

(assert (=> d!490433 (= (list!7011 lt!589225) (originalCharacters!3959 (apply!4574 lt!587983 0)))))

(assert (=> d!490433 (= lt!589225 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (apply!4574 lt!587983 0)))) (value!99305 (apply!4574 lt!587983 0))))))

(assert (=> d!490433 (= (charsOf!1794 (apply!4574 lt!587983 0)) lt!589225)))

(declare-fun b_lambda!51281 () Bool)

(assert (=> (not b_lambda!51281) (not d!490433)))

(declare-fun tb!93471 () Bool)

(declare-fun t!149227 () Bool)

(assert (=> (and b!1626382 (= (toChars!4431 (transformation!3145 (rule!4971 (h!23257 tokens!457)))) (toChars!4431 (transformation!3145 (rule!4971 (apply!4574 lt!587983 0))))) t!149227) tb!93471))

(declare-fun b!1628371 () Bool)

(declare-fun e!1044358 () Bool)

(declare-fun tp!473043 () Bool)

(assert (=> b!1628371 (= e!1044358 (and (inv!23232 (c!264623 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (apply!4574 lt!587983 0)))) (value!99305 (apply!4574 lt!587983 0))))) tp!473043))))

(declare-fun result!112734 () Bool)

(assert (=> tb!93471 (= result!112734 (and (inv!23233 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (apply!4574 lt!587983 0)))) (value!99305 (apply!4574 lt!587983 0)))) e!1044358))))

(assert (= tb!93471 b!1628371))

(declare-fun m!1958445 () Bool)

(assert (=> b!1628371 m!1958445))

(declare-fun m!1958447 () Bool)

(assert (=> tb!93471 m!1958447))

(assert (=> d!490433 t!149227))

(declare-fun b_and!115485 () Bool)

(assert (= b_and!115437 (and (=> t!149227 result!112734) b_and!115485)))

(declare-fun t!149229 () Bool)

(declare-fun tb!93473 () Bool)

(assert (=> (and b!1626369 (= (toChars!4431 (transformation!3145 (h!23256 rules!1846))) (toChars!4431 (transformation!3145 (rule!4971 (apply!4574 lt!587983 0))))) t!149229) tb!93473))

(declare-fun result!112736 () Bool)

(assert (= result!112736 result!112734))

(assert (=> d!490433 t!149229))

(declare-fun b_and!115487 () Bool)

(assert (= b_and!115439 (and (=> t!149229 result!112736) b_and!115487)))

(declare-fun t!149231 () Bool)

(declare-fun tb!93475 () Bool)

(assert (=> (and b!1627093 (= (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 tokens!457))))) (toChars!4431 (transformation!3145 (rule!4971 (apply!4574 lt!587983 0))))) t!149231) tb!93475))

(declare-fun result!112738 () Bool)

(assert (= result!112738 result!112734))

(assert (=> d!490433 t!149231))

(declare-fun b_and!115489 () Bool)

(assert (= b_and!115441 (and (=> t!149231 result!112738) b_and!115489)))

(declare-fun tb!93477 () Bool)

(declare-fun t!149233 () Bool)

(assert (=> (and b!1627118 (= (toChars!4431 (transformation!3145 (h!23256 (t!149058 rules!1846)))) (toChars!4431 (transformation!3145 (rule!4971 (apply!4574 lt!587983 0))))) t!149233) tb!93477))

(declare-fun result!112740 () Bool)

(assert (= result!112740 result!112734))

(assert (=> d!490433 t!149233))

(declare-fun b_and!115491 () Bool)

(assert (= b_and!115443 (and (=> t!149233 result!112740) b_and!115491)))

(declare-fun m!1958457 () Bool)

(assert (=> d!490433 m!1958457))

(declare-fun m!1958463 () Bool)

(assert (=> d!490433 m!1958463))

(assert (=> b!1626704 d!490433))

(declare-fun d!490441 () Bool)

(declare-fun lt!589233 () Token!5856)

(assert (=> d!490441 (= lt!589233 (apply!4576 (list!7012 lt!587983) 0))))

(declare-fun apply!4581 (Conc!5939 Int) Token!5856)

(assert (=> d!490441 (= lt!589233 (apply!4581 (c!264625 lt!587983) 0))))

(declare-fun e!1044369 () Bool)

(assert (=> d!490441 e!1044369))

(declare-fun res!728191 () Bool)

(assert (=> d!490441 (=> (not res!728191) (not e!1044369))))

(assert (=> d!490441 (= res!728191 (<= 0 0))))

(assert (=> d!490441 (= (apply!4574 lt!587983 0) lt!589233)))

(declare-fun b!1628386 () Bool)

(assert (=> b!1628386 (= e!1044369 (< 0 (size!14283 lt!587983)))))

(assert (= (and d!490441 res!728191) b!1628386))

(assert (=> d!490441 m!1955669))

(assert (=> d!490441 m!1955669))

(declare-fun m!1958475 () Bool)

(assert (=> d!490441 m!1958475))

(declare-fun m!1958477 () Bool)

(assert (=> d!490441 m!1958477))

(assert (=> b!1628386 m!1955681))

(assert (=> b!1626704 d!490441))

(declare-fun d!490455 () Bool)

(declare-fun e!1044370 () Bool)

(assert (=> d!490455 e!1044370))

(declare-fun res!728193 () Bool)

(assert (=> d!490455 (=> (not res!728193) (not e!1044370))))

(assert (=> d!490455 (= res!728193 (appendAssocInst!437 (c!264623 (BalanceConc!11821 Empty!5938)) (c!264623 (charsOf!1794 (apply!4574 lt!587983 0)))))))

(declare-fun lt!589234 () BalanceConc!11820)

(assert (=> d!490455 (= lt!589234 (BalanceConc!11821 (++!4754 (c!264623 (BalanceConc!11821 Empty!5938)) (c!264623 (charsOf!1794 (apply!4574 lt!587983 0))))))))

(assert (=> d!490455 (= (++!4752 (BalanceConc!11821 Empty!5938) (charsOf!1794 (apply!4574 lt!587983 0))) lt!589234)))

(declare-fun b!1628387 () Bool)

(declare-fun res!728194 () Bool)

(assert (=> b!1628387 (=> (not res!728194) (not e!1044370))))

(assert (=> b!1628387 (= res!728194 (isBalanced!1794 (++!4754 (c!264623 (BalanceConc!11821 Empty!5938)) (c!264623 (charsOf!1794 (apply!4574 lt!587983 0))))))))

(declare-fun b!1628390 () Bool)

(assert (=> b!1628390 (= e!1044370 (= (list!7011 lt!589234) (++!4751 (list!7011 (BalanceConc!11821 Empty!5938)) (list!7011 (charsOf!1794 (apply!4574 lt!587983 0))))))))

(declare-fun b!1628389 () Bool)

(declare-fun res!728192 () Bool)

(assert (=> b!1628389 (=> (not res!728192) (not e!1044370))))

(assert (=> b!1628389 (= res!728192 (>= (height!907 (++!4754 (c!264623 (BalanceConc!11821 Empty!5938)) (c!264623 (charsOf!1794 (apply!4574 lt!587983 0))))) (max!0 (height!907 (c!264623 (BalanceConc!11821 Empty!5938))) (height!907 (c!264623 (charsOf!1794 (apply!4574 lt!587983 0)))))))))

(declare-fun b!1628388 () Bool)

(declare-fun res!728195 () Bool)

(assert (=> b!1628388 (=> (not res!728195) (not e!1044370))))

(assert (=> b!1628388 (= res!728195 (<= (height!907 (++!4754 (c!264623 (BalanceConc!11821 Empty!5938)) (c!264623 (charsOf!1794 (apply!4574 lt!587983 0))))) (+ (max!0 (height!907 (c!264623 (BalanceConc!11821 Empty!5938))) (height!907 (c!264623 (charsOf!1794 (apply!4574 lt!587983 0))))) 1)))))

(assert (= (and d!490455 res!728193) b!1628387))

(assert (= (and b!1628387 res!728194) b!1628388))

(assert (= (and b!1628388 res!728195) b!1628389))

(assert (= (and b!1628389 res!728192) b!1628390))

(declare-fun m!1958483 () Bool)

(assert (=> b!1628389 m!1958483))

(declare-fun m!1958485 () Bool)

(assert (=> b!1628389 m!1958485))

(declare-fun m!1958487 () Bool)

(assert (=> b!1628389 m!1958487))

(declare-fun m!1958489 () Bool)

(assert (=> b!1628389 m!1958489))

(assert (=> b!1628389 m!1958483))

(assert (=> b!1628389 m!1958485))

(declare-fun m!1958491 () Bool)

(assert (=> b!1628389 m!1958491))

(assert (=> b!1628389 m!1958487))

(declare-fun m!1958495 () Bool)

(assert (=> b!1628390 m!1958495))

(assert (=> b!1628390 m!1955685))

(assert (=> b!1628390 m!1955699))

(declare-fun m!1958497 () Bool)

(assert (=> b!1628390 m!1958497))

(assert (=> b!1628390 m!1955685))

(assert (=> b!1628390 m!1958497))

(declare-fun m!1958499 () Bool)

(assert (=> b!1628390 m!1958499))

(assert (=> b!1628388 m!1958483))

(assert (=> b!1628388 m!1958485))

(assert (=> b!1628388 m!1958487))

(assert (=> b!1628388 m!1958489))

(assert (=> b!1628388 m!1958483))

(assert (=> b!1628388 m!1958485))

(assert (=> b!1628388 m!1958491))

(assert (=> b!1628388 m!1958487))

(declare-fun m!1958503 () Bool)

(assert (=> d!490455 m!1958503))

(assert (=> d!490455 m!1958487))

(assert (=> b!1628387 m!1958487))

(assert (=> b!1628387 m!1958487))

(declare-fun m!1958505 () Bool)

(assert (=> b!1628387 m!1958505))

(assert (=> b!1626704 d!490455))

(declare-fun d!490467 () Bool)

(declare-fun lt!589240 () Token!5856)

(declare-fun contains!3123 (List!17926 Token!5856) Bool)

(assert (=> d!490467 (contains!3123 lt!588366 lt!589240)))

(declare-fun e!1044380 () Token!5856)

(assert (=> d!490467 (= lt!589240 e!1044380)))

(declare-fun c!265099 () Bool)

(assert (=> d!490467 (= c!265099 (= 0 0))))

(declare-fun e!1044381 () Bool)

(assert (=> d!490467 e!1044381))

(declare-fun res!728198 () Bool)

(assert (=> d!490467 (=> (not res!728198) (not e!1044381))))

(assert (=> d!490467 (= res!728198 (<= 0 0))))

(assert (=> d!490467 (= (apply!4576 lt!588366 0) lt!589240)))

(declare-fun b!1628409 () Bool)

(assert (=> b!1628409 (= e!1044381 (< 0 (size!14291 lt!588366)))))

(declare-fun b!1628410 () Bool)

(assert (=> b!1628410 (= e!1044380 (head!3452 lt!588366))))

(declare-fun b!1628411 () Bool)

(assert (=> b!1628411 (= e!1044380 (apply!4576 (tail!2368 lt!588366) (- 0 1)))))

(assert (= (and d!490467 res!728198) b!1628409))

(assert (= (and d!490467 c!265099) b!1628410))

(assert (= (and d!490467 (not c!265099)) b!1628411))

(declare-fun m!1958521 () Bool)

(assert (=> d!490467 m!1958521))

(declare-fun m!1958523 () Bool)

(assert (=> b!1628409 m!1958523))

(declare-fun m!1958525 () Bool)

(assert (=> b!1628410 m!1958525))

(declare-fun m!1958527 () Bool)

(assert (=> b!1628411 m!1958527))

(assert (=> b!1628411 m!1958527))

(declare-fun m!1958529 () Bool)

(assert (=> b!1628411 m!1958529))

(assert (=> b!1626704 d!490467))

(declare-fun b!1628412 () Bool)

(declare-fun e!1044384 () List!17926)

(assert (=> b!1628412 (= e!1044384 lt!588366)))

(declare-fun b!1628413 () Bool)

(declare-fun e!1044383 () Int)

(declare-fun call!105450 () Int)

(assert (=> b!1628413 (= e!1044383 call!105450)))

(declare-fun b!1628414 () Bool)

(assert (=> b!1628414 (= e!1044384 (drop!874 (t!149059 lt!588366) (- 0 1)))))

(declare-fun bm!105445 () Bool)

(assert (=> bm!105445 (= call!105450 (size!14291 lt!588366))))

(declare-fun d!490477 () Bool)

(declare-fun e!1044382 () Bool)

(assert (=> d!490477 e!1044382))

(declare-fun res!728199 () Bool)

(assert (=> d!490477 (=> (not res!728199) (not e!1044382))))

(declare-fun lt!589241 () List!17926)

(assert (=> d!490477 (= res!728199 (= ((_ map implies) (content!2480 lt!589241) (content!2480 lt!588366)) ((as const (InoxSet Token!5856)) true)))))

(declare-fun e!1044386 () List!17926)

(assert (=> d!490477 (= lt!589241 e!1044386)))

(declare-fun c!265101 () Bool)

(assert (=> d!490477 (= c!265101 ((_ is Nil!17856) lt!588366))))

(assert (=> d!490477 (= (drop!874 lt!588366 0) lt!589241)))

(declare-fun b!1628415 () Bool)

(declare-fun e!1044385 () Int)

(assert (=> b!1628415 (= e!1044385 0)))

(declare-fun b!1628416 () Bool)

(assert (=> b!1628416 (= e!1044383 e!1044385)))

(declare-fun c!265103 () Bool)

(assert (=> b!1628416 (= c!265103 (>= 0 call!105450))))

(declare-fun b!1628417 () Bool)

(assert (=> b!1628417 (= e!1044386 Nil!17856)))

(declare-fun b!1628418 () Bool)

(assert (=> b!1628418 (= e!1044382 (= (size!14291 lt!589241) e!1044383))))

(declare-fun c!265102 () Bool)

(assert (=> b!1628418 (= c!265102 (<= 0 0))))

(declare-fun b!1628419 () Bool)

(assert (=> b!1628419 (= e!1044386 e!1044384)))

(declare-fun c!265100 () Bool)

(assert (=> b!1628419 (= c!265100 (<= 0 0))))

(declare-fun b!1628420 () Bool)

(assert (=> b!1628420 (= e!1044385 (- call!105450 0))))

(assert (= (and d!490477 c!265101) b!1628417))

(assert (= (and d!490477 (not c!265101)) b!1628419))

(assert (= (and b!1628419 c!265100) b!1628412))

(assert (= (and b!1628419 (not c!265100)) b!1628414))

(assert (= (and d!490477 res!728199) b!1628418))

(assert (= (and b!1628418 c!265102) b!1628413))

(assert (= (and b!1628418 (not c!265102)) b!1628416))

(assert (= (and b!1628416 c!265103) b!1628415))

(assert (= (and b!1628416 (not c!265103)) b!1628420))

(assert (= (or b!1628413 b!1628416 b!1628420) bm!105445))

(declare-fun m!1958531 () Bool)

(assert (=> b!1628414 m!1958531))

(assert (=> bm!105445 m!1958523))

(declare-fun m!1958533 () Bool)

(assert (=> d!490477 m!1958533))

(declare-fun m!1958535 () Bool)

(assert (=> d!490477 m!1958535))

(declare-fun m!1958537 () Bool)

(assert (=> b!1628418 m!1958537))

(assert (=> b!1626704 d!490477))

(declare-fun d!490479 () Bool)

(assert (=> d!490479 (= (head!3452 (drop!874 lt!588366 0)) (h!23257 (drop!874 lt!588366 0)))))

(assert (=> b!1626704 d!490479))

(declare-fun b!1628427 () Bool)

(declare-fun e!1044393 () List!17926)

(assert (=> b!1628427 (= e!1044393 lt!588369)))

(declare-fun b!1628428 () Bool)

(declare-fun e!1044392 () Int)

(declare-fun call!105451 () Int)

(assert (=> b!1628428 (= e!1044392 call!105451)))

(declare-fun b!1628429 () Bool)

(assert (=> b!1628429 (= e!1044393 (drop!874 (t!149059 lt!588369) (- (+ 0 1) 1)))))

(declare-fun bm!105446 () Bool)

(assert (=> bm!105446 (= call!105451 (size!14291 lt!588369))))

(declare-fun d!490481 () Bool)

(declare-fun e!1044391 () Bool)

(assert (=> d!490481 e!1044391))

(declare-fun res!728202 () Bool)

(assert (=> d!490481 (=> (not res!728202) (not e!1044391))))

(declare-fun lt!589244 () List!17926)

(assert (=> d!490481 (= res!728202 (= ((_ map implies) (content!2480 lt!589244) (content!2480 lt!588369)) ((as const (InoxSet Token!5856)) true)))))

(declare-fun e!1044395 () List!17926)

(assert (=> d!490481 (= lt!589244 e!1044395)))

(declare-fun c!265107 () Bool)

(assert (=> d!490481 (= c!265107 ((_ is Nil!17856) lt!588369))))

(assert (=> d!490481 (= (drop!874 lt!588369 (+ 0 1)) lt!589244)))

(declare-fun b!1628430 () Bool)

(declare-fun e!1044394 () Int)

(assert (=> b!1628430 (= e!1044394 0)))

(declare-fun b!1628431 () Bool)

(assert (=> b!1628431 (= e!1044392 e!1044394)))

(declare-fun c!265109 () Bool)

(assert (=> b!1628431 (= c!265109 (>= (+ 0 1) call!105451))))

(declare-fun b!1628432 () Bool)

(assert (=> b!1628432 (= e!1044395 Nil!17856)))

(declare-fun b!1628433 () Bool)

(assert (=> b!1628433 (= e!1044391 (= (size!14291 lt!589244) e!1044392))))

(declare-fun c!265108 () Bool)

(assert (=> b!1628433 (= c!265108 (<= (+ 0 1) 0))))

(declare-fun b!1628434 () Bool)

(assert (=> b!1628434 (= e!1044395 e!1044393)))

(declare-fun c!265106 () Bool)

(assert (=> b!1628434 (= c!265106 (<= (+ 0 1) 0))))

(declare-fun b!1628435 () Bool)

(assert (=> b!1628435 (= e!1044394 (- call!105451 (+ 0 1)))))

(assert (= (and d!490481 c!265107) b!1628432))

(assert (= (and d!490481 (not c!265107)) b!1628434))

(assert (= (and b!1628434 c!265106) b!1628427))

(assert (= (and b!1628434 (not c!265106)) b!1628429))

(assert (= (and d!490481 res!728202) b!1628433))

(assert (= (and b!1628433 c!265108) b!1628428))

(assert (= (and b!1628433 (not c!265108)) b!1628431))

(assert (= (and b!1628431 c!265109) b!1628430))

(assert (= (and b!1628431 (not c!265109)) b!1628435))

(assert (= (or b!1628428 b!1628431 b!1628435) bm!105446))

(declare-fun m!1958539 () Bool)

(assert (=> b!1628429 m!1958539))

(assert (=> bm!105446 m!1958417))

(declare-fun m!1958541 () Bool)

(assert (=> d!490481 m!1958541))

(assert (=> d!490481 m!1958421))

(declare-fun m!1958543 () Bool)

(assert (=> b!1628433 m!1958543))

(assert (=> b!1626704 d!490481))

(declare-fun d!490483 () Bool)

(assert (=> d!490483 (= (head!3452 (drop!874 lt!588366 0)) (apply!4576 lt!588366 0))))

(declare-fun lt!589248 () Unit!28923)

(declare-fun choose!9798 (List!17926 Int) Unit!28923)

(assert (=> d!490483 (= lt!589248 (choose!9798 lt!588366 0))))

(declare-fun e!1044400 () Bool)

(assert (=> d!490483 e!1044400))

(declare-fun res!728206 () Bool)

(assert (=> d!490483 (=> (not res!728206) (not e!1044400))))

(assert (=> d!490483 (= res!728206 (>= 0 0))))

(assert (=> d!490483 (= (lemmaDropApply!564 lt!588366 0) lt!589248)))

(declare-fun b!1628441 () Bool)

(assert (=> b!1628441 (= e!1044400 (< 0 (size!14291 lt!588366)))))

(assert (= (and d!490483 res!728206) b!1628441))

(assert (=> d!490483 m!1955691))

(assert (=> d!490483 m!1955691))

(assert (=> d!490483 m!1955693))

(assert (=> d!490483 m!1955709))

(declare-fun m!1958555 () Bool)

(assert (=> d!490483 m!1958555))

(assert (=> b!1628441 m!1958523))

(assert (=> b!1626704 d!490483))

(declare-fun d!490489 () Bool)

(assert (=> d!490489 (= (tail!2368 (drop!874 lt!588369 0)) (drop!874 lt!588369 (+ 0 1)))))

(declare-fun lt!589251 () Unit!28923)

(declare-fun choose!9799 (List!17926 Int) Unit!28923)

(assert (=> d!490489 (= lt!589251 (choose!9799 lt!588369 0))))

(declare-fun e!1044403 () Bool)

(assert (=> d!490489 e!1044403))

(declare-fun res!728209 () Bool)

(assert (=> d!490489 (=> (not res!728209) (not e!1044403))))

(assert (=> d!490489 (= res!728209 (>= 0 0))))

(assert (=> d!490489 (= (lemmaDropTail!544 lt!588369 0) lt!589251)))

(declare-fun b!1628444 () Bool)

(assert (=> b!1628444 (= e!1044403 (< 0 (size!14291 lt!588369)))))

(assert (= (and d!490489 res!728209) b!1628444))

(assert (=> d!490489 m!1955695))

(assert (=> d!490489 m!1955695))

(assert (=> d!490489 m!1955705))

(assert (=> d!490489 m!1955711))

(declare-fun m!1958557 () Bool)

(assert (=> d!490489 m!1958557))

(assert (=> b!1628444 m!1958417))

(assert (=> b!1626704 d!490489))

(declare-fun d!490491 () Bool)

(declare-fun lt!589258 () BalanceConc!11820)

(assert (=> d!490491 (= (list!7011 lt!589258) (printListTailRec!357 thiss!17113 (dropList!611 lt!587983 (+ 0 1)) (list!7011 (++!4752 (BalanceConc!11821 Empty!5938) (charsOf!1794 (apply!4574 lt!587983 0))))))))

(declare-fun e!1044404 () BalanceConc!11820)

(assert (=> d!490491 (= lt!589258 e!1044404)))

(declare-fun c!265111 () Bool)

(assert (=> d!490491 (= c!265111 (>= (+ 0 1) (size!14283 lt!587983)))))

(declare-fun e!1044405 () Bool)

(assert (=> d!490491 e!1044405))

(declare-fun res!728210 () Bool)

(assert (=> d!490491 (=> (not res!728210) (not e!1044405))))

(assert (=> d!490491 (= res!728210 (>= (+ 0 1) 0))))

(assert (=> d!490491 (= (printTailRec!827 thiss!17113 lt!587983 (+ 0 1) (++!4752 (BalanceConc!11821 Empty!5938) (charsOf!1794 (apply!4574 lt!587983 0)))) lt!589258)))

(declare-fun b!1628445 () Bool)

(assert (=> b!1628445 (= e!1044405 (<= (+ 0 1) (size!14283 lt!587983)))))

(declare-fun b!1628446 () Bool)

(assert (=> b!1628446 (= e!1044404 (++!4752 (BalanceConc!11821 Empty!5938) (charsOf!1794 (apply!4574 lt!587983 0))))))

(declare-fun b!1628447 () Bool)

(assert (=> b!1628447 (= e!1044404 (printTailRec!827 thiss!17113 lt!587983 (+ 0 1 1) (++!4752 (++!4752 (BalanceConc!11821 Empty!5938) (charsOf!1794 (apply!4574 lt!587983 0))) (charsOf!1794 (apply!4574 lt!587983 (+ 0 1))))))))

(declare-fun lt!589254 () List!17926)

(assert (=> b!1628447 (= lt!589254 (list!7012 lt!587983))))

(declare-fun lt!589255 () Unit!28923)

(assert (=> b!1628447 (= lt!589255 (lemmaDropApply!564 lt!589254 (+ 0 1)))))

(assert (=> b!1628447 (= (head!3452 (drop!874 lt!589254 (+ 0 1))) (apply!4576 lt!589254 (+ 0 1)))))

(declare-fun lt!589253 () Unit!28923)

(assert (=> b!1628447 (= lt!589253 lt!589255)))

(declare-fun lt!589257 () List!17926)

(assert (=> b!1628447 (= lt!589257 (list!7012 lt!587983))))

(declare-fun lt!589256 () Unit!28923)

(assert (=> b!1628447 (= lt!589256 (lemmaDropTail!544 lt!589257 (+ 0 1)))))

(assert (=> b!1628447 (= (tail!2368 (drop!874 lt!589257 (+ 0 1))) (drop!874 lt!589257 (+ 0 1 1)))))

(declare-fun lt!589252 () Unit!28923)

(assert (=> b!1628447 (= lt!589252 lt!589256)))

(assert (= (and d!490491 res!728210) b!1628445))

(assert (= (and d!490491 c!265111) b!1628446))

(assert (= (and d!490491 (not c!265111)) b!1628447))

(assert (=> d!490491 m!1955681))

(declare-fun m!1958559 () Bool)

(assert (=> d!490491 m!1958559))

(assert (=> d!490491 m!1955703))

(declare-fun m!1958561 () Bool)

(assert (=> d!490491 m!1958561))

(declare-fun m!1958563 () Bool)

(assert (=> d!490491 m!1958563))

(assert (=> d!490491 m!1958561))

(declare-fun m!1958565 () Bool)

(assert (=> d!490491 m!1958565))

(assert (=> d!490491 m!1958563))

(assert (=> b!1628445 m!1955681))

(declare-fun m!1958567 () Bool)

(assert (=> b!1628447 m!1958567))

(declare-fun m!1958569 () Bool)

(assert (=> b!1628447 m!1958569))

(declare-fun m!1958571 () Bool)

(assert (=> b!1628447 m!1958571))

(declare-fun m!1958573 () Bool)

(assert (=> b!1628447 m!1958573))

(declare-fun m!1958575 () Bool)

(assert (=> b!1628447 m!1958575))

(assert (=> b!1628447 m!1958573))

(assert (=> b!1628447 m!1955669))

(declare-fun m!1958577 () Bool)

(assert (=> b!1628447 m!1958577))

(assert (=> b!1628447 m!1955703))

(assert (=> b!1628447 m!1958575))

(declare-fun m!1958579 () Bool)

(assert (=> b!1628447 m!1958579))

(assert (=> b!1628447 m!1958571))

(declare-fun m!1958581 () Bool)

(assert (=> b!1628447 m!1958581))

(assert (=> b!1628447 m!1958579))

(declare-fun m!1958583 () Bool)

(assert (=> b!1628447 m!1958583))

(declare-fun m!1958585 () Bool)

(assert (=> b!1628447 m!1958585))

(assert (=> b!1628447 m!1958567))

(declare-fun m!1958587 () Bool)

(assert (=> b!1628447 m!1958587))

(declare-fun m!1958589 () Bool)

(assert (=> b!1628447 m!1958589))

(assert (=> b!1626704 d!490491))

(assert (=> b!1626704 d!489929))

(declare-fun d!490493 () Bool)

(declare-fun c!265120 () Bool)

(assert (=> d!490493 (= c!265120 ((_ is Nil!17854) lt!588451))))

(declare-fun e!1044416 () (InoxSet C!9120))

(assert (=> d!490493 (= (content!2476 lt!588451) e!1044416)))

(declare-fun b!1628466 () Bool)

(assert (=> b!1628466 (= e!1044416 ((as const (Array C!9120 Bool)) false))))

(declare-fun b!1628467 () Bool)

(assert (=> b!1628467 (= e!1044416 ((_ map or) (store ((as const (Array C!9120 Bool)) false) (h!23255 lt!588451) true) (content!2476 (t!149057 lt!588451))))))

(assert (= (and d!490493 c!265120) b!1628466))

(assert (= (and d!490493 (not c!265120)) b!1628467))

(declare-fun m!1958591 () Bool)

(assert (=> b!1628467 m!1958591))

(declare-fun m!1958593 () Bool)

(assert (=> b!1628467 m!1958593))

(assert (=> d!489727 d!490493))

(declare-fun d!490495 () Bool)

(declare-fun c!265121 () Bool)

(assert (=> d!490495 (= c!265121 ((_ is Nil!17854) lt!587996))))

(declare-fun e!1044417 () (InoxSet C!9120))

(assert (=> d!490495 (= (content!2476 lt!587996) e!1044417)))

(declare-fun b!1628468 () Bool)

(assert (=> b!1628468 (= e!1044417 ((as const (Array C!9120 Bool)) false))))

(declare-fun b!1628469 () Bool)

(assert (=> b!1628469 (= e!1044417 ((_ map or) (store ((as const (Array C!9120 Bool)) false) (h!23255 lt!587996) true) (content!2476 (t!149057 lt!587996))))))

(assert (= (and d!490495 c!265121) b!1628468))

(assert (= (and d!490495 (not c!265121)) b!1628469))

(declare-fun m!1958595 () Bool)

(assert (=> b!1628469 m!1958595))

(assert (=> b!1628469 m!1957539))

(assert (=> d!489727 d!490495))

(declare-fun d!490497 () Bool)

(declare-fun c!265122 () Bool)

(assert (=> d!490497 (= c!265122 ((_ is Nil!17854) lt!588000))))

(declare-fun e!1044418 () (InoxSet C!9120))

(assert (=> d!490497 (= (content!2476 lt!588000) e!1044418)))

(declare-fun b!1628470 () Bool)

(assert (=> b!1628470 (= e!1044418 ((as const (Array C!9120 Bool)) false))))

(declare-fun b!1628471 () Bool)

(assert (=> b!1628471 (= e!1044418 ((_ map or) (store ((as const (Array C!9120 Bool)) false) (h!23255 lt!588000) true) (content!2476 (t!149057 lt!588000))))))

(assert (= (and d!490497 c!265122) b!1628470))

(assert (= (and d!490497 (not c!265122)) b!1628471))

(declare-fun m!1958597 () Bool)

(assert (=> b!1628471 m!1958597))

(declare-fun m!1958599 () Bool)

(assert (=> b!1628471 m!1958599))

(assert (=> d!489727 d!490497))

(declare-fun b!1628481 () Bool)

(declare-fun e!1044424 () List!17924)

(assert (=> b!1628481 (= e!1044424 (list!7019 (xs!8770 (c!264623 lt!587976))))))

(declare-fun d!490499 () Bool)

(declare-fun c!265126 () Bool)

(assert (=> d!490499 (= c!265126 ((_ is Empty!5938) (c!264623 lt!587976)))))

(declare-fun e!1044423 () List!17924)

(assert (=> d!490499 (= (list!7016 (c!264623 lt!587976)) e!1044423)))

(declare-fun b!1628479 () Bool)

(assert (=> b!1628479 (= e!1044423 Nil!17854)))

(declare-fun b!1628482 () Bool)

(assert (=> b!1628482 (= e!1044424 (++!4751 (list!7016 (left!14348 (c!264623 lt!587976))) (list!7016 (right!14678 (c!264623 lt!587976)))))))

(declare-fun b!1628480 () Bool)

(assert (=> b!1628480 (= e!1044423 e!1044424)))

(declare-fun c!265127 () Bool)

(assert (=> b!1628480 (= c!265127 ((_ is Leaf!8731) (c!264623 lt!587976)))))

(assert (= (and d!490499 c!265126) b!1628479))

(assert (= (and d!490499 (not c!265126)) b!1628480))

(assert (= (and b!1628480 c!265127) b!1628481))

(assert (= (and b!1628480 (not c!265127)) b!1628482))

(declare-fun m!1958601 () Bool)

(assert (=> b!1628481 m!1958601))

(assert (=> b!1628482 m!1956995))

(assert (=> b!1628482 m!1956969))

(assert (=> b!1628482 m!1956995))

(assert (=> b!1628482 m!1956969))

(declare-fun m!1958603 () Bool)

(assert (=> b!1628482 m!1958603))

(assert (=> d!489641 d!490499))

(assert (=> b!1626516 d!489915))

(declare-fun d!490501 () Bool)

(assert (=> d!490501 (= (head!3449 lt!587988) (h!23255 lt!587988))))

(assert (=> b!1626516 d!490501))

(declare-fun d!490503 () Bool)

(declare-fun lt!589265 () Int)

(assert (=> d!490503 (>= lt!589265 0)))

(declare-fun e!1044425 () Int)

(assert (=> d!490503 (= lt!589265 e!1044425)))

(declare-fun c!265128 () Bool)

(assert (=> d!490503 (= c!265128 ((_ is Nil!17854) lt!588328))))

(assert (=> d!490503 (= (size!14282 lt!588328) lt!589265)))

(declare-fun b!1628483 () Bool)

(assert (=> b!1628483 (= e!1044425 0)))

(declare-fun b!1628484 () Bool)

(assert (=> b!1628484 (= e!1044425 (+ 1 (size!14282 (t!149057 lt!588328))))))

(assert (= (and d!490503 c!265128) b!1628483))

(assert (= (and d!490503 (not c!265128)) b!1628484))

(declare-fun m!1958613 () Bool)

(assert (=> b!1628484 m!1958613))

(assert (=> b!1626648 d!490503))

(assert (=> b!1626648 d!489875))

(declare-fun d!490505 () Bool)

(declare-fun lt!589266 () Int)

(assert (=> d!490505 (>= lt!589266 0)))

(declare-fun e!1044426 () Int)

(assert (=> d!490505 (= lt!589266 e!1044426)))

(declare-fun c!265129 () Bool)

(assert (=> d!490505 (= c!265129 ((_ is Nil!17854) lt!587980))))

(assert (=> d!490505 (= (size!14282 lt!587980) lt!589266)))

(declare-fun b!1628485 () Bool)

(assert (=> b!1628485 (= e!1044426 0)))

(declare-fun b!1628486 () Bool)

(assert (=> b!1628486 (= e!1044426 (+ 1 (size!14282 (t!149057 lt!587980))))))

(assert (= (and d!490505 c!265129) b!1628485))

(assert (= (and d!490505 (not c!265129)) b!1628486))

(declare-fun m!1958621 () Bool)

(assert (=> b!1628486 m!1958621))

(assert (=> b!1626648 d!490505))

(assert (=> b!1626920 d!489883))

(assert (=> b!1626920 d!489885))

(assert (=> b!1626920 d!489997))

(assert (=> b!1626920 d!490103))

(assert (=> b!1626920 d!489889))

(declare-fun b!1628487 () Bool)

(declare-fun e!1044428 () Bool)

(assert (=> b!1628487 (= e!1044428 (matchR!1972 (regex!3145 (rule!4971 lt!588424)) (_1!10124 (findLongestMatchInner!361 (regex!3145 (rule!4971 lt!588424)) Nil!17854 (size!14282 Nil!17854) lt!588437 lt!588437 (size!14282 lt!588437)))))))

(declare-fun b!1628488 () Bool)

(declare-fun e!1044430 () Option!3316)

(declare-fun lt!589268 () tuple2!17444)

(assert (=> b!1628488 (= e!1044430 (Some!3315 (tuple2!17435 (Token!5857 (apply!4575 (transformation!3145 (rule!4971 lt!588424)) (seqFromList!2040 (_1!10124 lt!589268))) (rule!4971 lt!588424) (size!14284 (seqFromList!2040 (_1!10124 lt!589268))) (_1!10124 lt!589268)) (_2!10124 lt!589268))))))

(declare-fun lt!589270 () Unit!28923)

(assert (=> b!1628488 (= lt!589270 (longestMatchIsAcceptedByMatchOrIsEmpty!345 (regex!3145 (rule!4971 lt!588424)) lt!588437))))

(declare-fun res!728214 () Bool)

(assert (=> b!1628488 (= res!728214 (isEmpty!10881 (_1!10124 (findLongestMatchInner!361 (regex!3145 (rule!4971 lt!588424)) Nil!17854 (size!14282 Nil!17854) lt!588437 lt!588437 (size!14282 lt!588437)))))))

(assert (=> b!1628488 (=> res!728214 e!1044428)))

(assert (=> b!1628488 e!1044428))

(declare-fun lt!589267 () Unit!28923)

(assert (=> b!1628488 (= lt!589267 lt!589270)))

(declare-fun lt!589271 () Unit!28923)

(assert (=> b!1628488 (= lt!589271 (lemmaSemiInverse!394 (transformation!3145 (rule!4971 lt!588424)) (seqFromList!2040 (_1!10124 lt!589268))))))

(declare-fun d!490509 () Bool)

(declare-fun e!1044427 () Bool)

(assert (=> d!490509 e!1044427))

(declare-fun res!728220 () Bool)

(assert (=> d!490509 (=> res!728220 e!1044427)))

(declare-fun lt!589269 () Option!3316)

(assert (=> d!490509 (= res!728220 (isEmpty!10890 lt!589269))))

(assert (=> d!490509 (= lt!589269 e!1044430)))

(declare-fun c!265130 () Bool)

(assert (=> d!490509 (= c!265130 (isEmpty!10881 (_1!10124 lt!589268)))))

(assert (=> d!490509 (= lt!589268 (findLongestMatch!288 (regex!3145 (rule!4971 lt!588424)) lt!588437))))

(assert (=> d!490509 (ruleValid!739 thiss!17113 (rule!4971 lt!588424))))

(assert (=> d!490509 (= (maxPrefixOneRule!777 thiss!17113 (rule!4971 lt!588424) lt!588437) lt!589269)))

(declare-fun b!1628489 () Bool)

(declare-fun e!1044429 () Bool)

(assert (=> b!1628489 (= e!1044429 (= (size!14278 (_1!10119 (get!5150 lt!589269))) (size!14282 (originalCharacters!3959 (_1!10119 (get!5150 lt!589269))))))))

(declare-fun b!1628490 () Bool)

(declare-fun res!728218 () Bool)

(assert (=> b!1628490 (=> (not res!728218) (not e!1044429))))

(assert (=> b!1628490 (= res!728218 (= (rule!4971 (_1!10119 (get!5150 lt!589269))) (rule!4971 lt!588424)))))

(declare-fun b!1628491 () Bool)

(assert (=> b!1628491 (= e!1044427 e!1044429)))

(declare-fun res!728219 () Bool)

(assert (=> b!1628491 (=> (not res!728219) (not e!1044429))))

(assert (=> b!1628491 (= res!728219 (matchR!1972 (regex!3145 (rule!4971 lt!588424)) (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!589269))))))))

(declare-fun b!1628492 () Bool)

(declare-fun res!728216 () Bool)

(assert (=> b!1628492 (=> (not res!728216) (not e!1044429))))

(assert (=> b!1628492 (= res!728216 (< (size!14282 (_2!10119 (get!5150 lt!589269))) (size!14282 lt!588437)))))

(declare-fun b!1628493 () Bool)

(declare-fun res!728215 () Bool)

(assert (=> b!1628493 (=> (not res!728215) (not e!1044429))))

(assert (=> b!1628493 (= res!728215 (= (++!4751 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!589269)))) (_2!10119 (get!5150 lt!589269))) lt!588437))))

(declare-fun b!1628494 () Bool)

(declare-fun res!728217 () Bool)

(assert (=> b!1628494 (=> (not res!728217) (not e!1044429))))

(assert (=> b!1628494 (= res!728217 (= (value!99305 (_1!10119 (get!5150 lt!589269))) (apply!4575 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!589269)))) (seqFromList!2040 (originalCharacters!3959 (_1!10119 (get!5150 lt!589269)))))))))

(declare-fun b!1628495 () Bool)

(assert (=> b!1628495 (= e!1044430 None!3315)))

(assert (= (and d!490509 c!265130) b!1628495))

(assert (= (and d!490509 (not c!265130)) b!1628488))

(assert (= (and b!1628488 (not res!728214)) b!1628487))

(assert (= (and d!490509 (not res!728220)) b!1628491))

(assert (= (and b!1628491 res!728219) b!1628493))

(assert (= (and b!1628493 res!728215) b!1628492))

(assert (= (and b!1628492 res!728216) b!1628490))

(assert (= (and b!1628490 res!728218) b!1628494))

(assert (= (and b!1628494 res!728217) b!1628489))

(declare-fun m!1958629 () Bool)

(assert (=> b!1628489 m!1958629))

(declare-fun m!1958633 () Bool)

(assert (=> b!1628489 m!1958633))

(assert (=> b!1628487 m!1956705))

(declare-fun m!1958637 () Bool)

(assert (=> b!1628487 m!1958637))

(assert (=> b!1628487 m!1956705))

(assert (=> b!1628487 m!1958637))

(declare-fun m!1958639 () Bool)

(assert (=> b!1628487 m!1958639))

(declare-fun m!1958641 () Bool)

(assert (=> b!1628487 m!1958641))

(assert (=> b!1628492 m!1958629))

(declare-fun m!1958643 () Bool)

(assert (=> b!1628492 m!1958643))

(assert (=> b!1628492 m!1958637))

(declare-fun m!1958645 () Bool)

(assert (=> b!1628488 m!1958645))

(declare-fun m!1958647 () Bool)

(assert (=> b!1628488 m!1958647))

(assert (=> b!1628488 m!1958645))

(declare-fun m!1958649 () Bool)

(assert (=> b!1628488 m!1958649))

(assert (=> b!1628488 m!1956705))

(assert (=> b!1628488 m!1958637))

(assert (=> b!1628488 m!1958639))

(assert (=> b!1628488 m!1958645))

(declare-fun m!1958651 () Bool)

(assert (=> b!1628488 m!1958651))

(declare-fun m!1958653 () Bool)

(assert (=> b!1628488 m!1958653))

(declare-fun m!1958655 () Bool)

(assert (=> b!1628488 m!1958655))

(assert (=> b!1628488 m!1958637))

(assert (=> b!1628488 m!1958645))

(assert (=> b!1628488 m!1956705))

(assert (=> b!1628490 m!1958629))

(declare-fun m!1958657 () Bool)

(assert (=> d!490509 m!1958657))

(declare-fun m!1958659 () Bool)

(assert (=> d!490509 m!1958659))

(declare-fun m!1958661 () Bool)

(assert (=> d!490509 m!1958661))

(declare-fun m!1958663 () Bool)

(assert (=> d!490509 m!1958663))

(assert (=> b!1628491 m!1958629))

(declare-fun m!1958665 () Bool)

(assert (=> b!1628491 m!1958665))

(assert (=> b!1628491 m!1958665))

(declare-fun m!1958667 () Bool)

(assert (=> b!1628491 m!1958667))

(assert (=> b!1628491 m!1958667))

(declare-fun m!1958669 () Bool)

(assert (=> b!1628491 m!1958669))

(assert (=> b!1628493 m!1958629))

(assert (=> b!1628493 m!1958665))

(assert (=> b!1628493 m!1958665))

(assert (=> b!1628493 m!1958667))

(assert (=> b!1628493 m!1958667))

(declare-fun m!1958671 () Bool)

(assert (=> b!1628493 m!1958671))

(assert (=> b!1628494 m!1958629))

(declare-fun m!1958675 () Bool)

(assert (=> b!1628494 m!1958675))

(assert (=> b!1628494 m!1958675))

(declare-fun m!1958677 () Bool)

(assert (=> b!1628494 m!1958677))

(assert (=> b!1626749 d!490509))

(declare-fun d!490519 () Bool)

(assert (=> d!490519 (isEmpty!10890 (maxPrefixOneRule!777 thiss!17113 (rule!4971 lt!588424) lt!588437))))

(declare-fun lt!589275 () Unit!28923)

(declare-fun choose!9800 (LexerInterface!2774 Rule!6090 List!17925 List!17924) Unit!28923)

(assert (=> d!490519 (= lt!589275 (choose!9800 thiss!17113 (rule!4971 lt!588424) rules!1846 lt!588437))))

(assert (=> d!490519 (not (isEmpty!10883 rules!1846))))

(assert (=> d!490519 (= (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!180 thiss!17113 (rule!4971 lt!588424) rules!1846 lt!588437) lt!589275)))

(declare-fun bs!394979 () Bool)

(assert (= bs!394979 d!490519))

(assert (=> bs!394979 m!1955849))

(assert (=> bs!394979 m!1955849))

(assert (=> bs!394979 m!1955851))

(declare-fun m!1958685 () Bool)

(assert (=> bs!394979 m!1958685))

(assert (=> bs!394979 m!1954901))

(assert (=> b!1626749 d!490519))

(declare-fun b!1628503 () Bool)

(declare-fun e!1044439 () Bool)

(declare-fun e!1044437 () Bool)

(assert (=> b!1628503 (= e!1044439 e!1044437)))

(declare-fun c!265133 () Bool)

(assert (=> b!1628503 (= c!265133 ((_ is EmptyLang!4473) (regex!3145 (rule!4971 lt!588424))))))

(declare-fun b!1628504 () Bool)

(declare-fun lt!589276 () Bool)

(assert (=> b!1628504 (= e!1044437 (not lt!589276))))

(declare-fun b!1628505 () Bool)

(declare-fun res!728233 () Bool)

(declare-fun e!1044441 () Bool)

(assert (=> b!1628505 (=> (not res!728233) (not e!1044441))))

(declare-fun call!105455 () Bool)

(assert (=> b!1628505 (= res!728233 (not call!105455))))

(declare-fun bm!105450 () Bool)

(assert (=> bm!105450 (= call!105455 (isEmpty!10881 lt!588433))))

(declare-fun b!1628506 () Bool)

(declare-fun res!728234 () Bool)

(declare-fun e!1044440 () Bool)

(assert (=> b!1628506 (=> res!728234 e!1044440)))

(assert (=> b!1628506 (= res!728234 (not (isEmpty!10881 (tail!2367 lt!588433))))))

(declare-fun b!1628507 () Bool)

(declare-fun e!1044438 () Bool)

(assert (=> b!1628507 (= e!1044438 (matchR!1972 (derivativeStep!1084 (regex!3145 (rule!4971 lt!588424)) (head!3449 lt!588433)) (tail!2367 lt!588433)))))

(declare-fun b!1628508 () Bool)

(declare-fun res!728231 () Bool)

(assert (=> b!1628508 (=> (not res!728231) (not e!1044441))))

(assert (=> b!1628508 (= res!728231 (isEmpty!10881 (tail!2367 lt!588433)))))

(declare-fun b!1628509 () Bool)

(declare-fun res!728230 () Bool)

(declare-fun e!1044443 () Bool)

(assert (=> b!1628509 (=> res!728230 e!1044443)))

(assert (=> b!1628509 (= res!728230 e!1044441)))

(declare-fun res!728229 () Bool)

(assert (=> b!1628509 (=> (not res!728229) (not e!1044441))))

(assert (=> b!1628509 (= res!728229 lt!589276)))

(declare-fun b!1628510 () Bool)

(assert (=> b!1628510 (= e!1044439 (= lt!589276 call!105455))))

(declare-fun b!1628511 () Bool)

(assert (=> b!1628511 (= e!1044441 (= (head!3449 lt!588433) (c!264624 (regex!3145 (rule!4971 lt!588424)))))))

(declare-fun b!1628513 () Bool)

(assert (=> b!1628513 (= e!1044440 (not (= (head!3449 lt!588433) (c!264624 (regex!3145 (rule!4971 lt!588424))))))))

(declare-fun b!1628514 () Bool)

(assert (=> b!1628514 (= e!1044438 (nullable!1319 (regex!3145 (rule!4971 lt!588424))))))

(declare-fun b!1628515 () Bool)

(declare-fun e!1044442 () Bool)

(assert (=> b!1628515 (= e!1044443 e!1044442)))

(declare-fun res!728235 () Bool)

(assert (=> b!1628515 (=> (not res!728235) (not e!1044442))))

(assert (=> b!1628515 (= res!728235 (not lt!589276))))

(declare-fun b!1628516 () Bool)

(declare-fun res!728232 () Bool)

(assert (=> b!1628516 (=> res!728232 e!1044443)))

(assert (=> b!1628516 (= res!728232 (not ((_ is ElementMatch!4473) (regex!3145 (rule!4971 lt!588424)))))))

(assert (=> b!1628516 (= e!1044437 e!1044443)))

(declare-fun d!490523 () Bool)

(assert (=> d!490523 e!1044439))

(declare-fun c!265131 () Bool)

(assert (=> d!490523 (= c!265131 ((_ is EmptyExpr!4473) (regex!3145 (rule!4971 lt!588424))))))

(assert (=> d!490523 (= lt!589276 e!1044438)))

(declare-fun c!265132 () Bool)

(assert (=> d!490523 (= c!265132 (isEmpty!10881 lt!588433))))

(assert (=> d!490523 (validRegex!1780 (regex!3145 (rule!4971 lt!588424)))))

(assert (=> d!490523 (= (matchR!1972 (regex!3145 (rule!4971 lt!588424)) lt!588433) lt!589276)))

(declare-fun b!1628512 () Bool)

(assert (=> b!1628512 (= e!1044442 e!1044440)))

(declare-fun res!728236 () Bool)

(assert (=> b!1628512 (=> res!728236 e!1044440)))

(assert (=> b!1628512 (= res!728236 call!105455)))

(assert (= (and d!490523 c!265132) b!1628514))

(assert (= (and d!490523 (not c!265132)) b!1628507))

(assert (= (and d!490523 c!265131) b!1628510))

(assert (= (and d!490523 (not c!265131)) b!1628503))

(assert (= (and b!1628503 c!265133) b!1628504))

(assert (= (and b!1628503 (not c!265133)) b!1628516))

(assert (= (and b!1628516 (not res!728232)) b!1628509))

(assert (= (and b!1628509 res!728229) b!1628505))

(assert (= (and b!1628505 res!728233) b!1628508))

(assert (= (and b!1628508 res!728231) b!1628511))

(assert (= (and b!1628509 (not res!728230)) b!1628515))

(assert (= (and b!1628515 res!728235) b!1628512))

(assert (= (and b!1628512 (not res!728236)) b!1628506))

(assert (= (and b!1628506 (not res!728234)) b!1628513))

(assert (= (or b!1628510 b!1628505 b!1628512) bm!105450))

(declare-fun m!1958687 () Bool)

(assert (=> b!1628514 m!1958687))

(declare-fun m!1958689 () Bool)

(assert (=> b!1628513 m!1958689))

(declare-fun m!1958691 () Bool)

(assert (=> b!1628506 m!1958691))

(assert (=> b!1628506 m!1958691))

(declare-fun m!1958693 () Bool)

(assert (=> b!1628506 m!1958693))

(assert (=> b!1628508 m!1958691))

(assert (=> b!1628508 m!1958691))

(assert (=> b!1628508 m!1958693))

(assert (=> b!1628507 m!1958689))

(assert (=> b!1628507 m!1958689))

(declare-fun m!1958695 () Bool)

(assert (=> b!1628507 m!1958695))

(assert (=> b!1628507 m!1958691))

(assert (=> b!1628507 m!1958695))

(assert (=> b!1628507 m!1958691))

(declare-fun m!1958697 () Bool)

(assert (=> b!1628507 m!1958697))

(declare-fun m!1958699 () Bool)

(assert (=> bm!105450 m!1958699))

(assert (=> b!1628511 m!1958689))

(assert (=> d!490523 m!1958699))

(declare-fun m!1958701 () Bool)

(assert (=> d!490523 m!1958701))

(assert (=> b!1626749 d!490523))

(declare-fun d!490525 () Bool)

(assert (=> d!490525 (= (isEmpty!10890 (maxPrefixOneRule!777 thiss!17113 (rule!4971 lt!588424) lt!588437)) (not ((_ is Some!3315) (maxPrefixOneRule!777 thiss!17113 (rule!4971 lt!588424) lt!588437))))))

(assert (=> b!1626749 d!490525))

(assert (=> b!1626749 d!489903))

(assert (=> b!1626749 d!489905))

(declare-fun d!490527 () Bool)

(assert (=> d!490527 (not (matchR!1972 (regex!3145 (rule!4971 lt!588424)) lt!588433))))

(declare-fun lt!589282 () Unit!28923)

(declare-fun choose!9801 (LexerInterface!2774 Rule!6090 List!17924 List!17924) Unit!28923)

(assert (=> d!490527 (= lt!589282 (choose!9801 thiss!17113 (rule!4971 lt!588424) lt!588433 (++!4751 lt!587996 lt!587994)))))

(assert (=> d!490527 (isPrefix!1405 lt!588433 (++!4751 lt!587996 lt!587994))))

(assert (=> d!490527 (= (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!176 thiss!17113 (rule!4971 lt!588424) lt!588433 (++!4751 lt!587996 lt!587994)) lt!589282)))

(declare-fun bs!394980 () Bool)

(assert (= bs!394980 d!490527))

(assert (=> bs!394980 m!1955847))

(assert (=> bs!394980 m!1954953))

(declare-fun m!1958707 () Bool)

(assert (=> bs!394980 m!1958707))

(assert (=> bs!394980 m!1954953))

(declare-fun m!1958709 () Bool)

(assert (=> bs!394980 m!1958709))

(assert (=> b!1626749 d!490527))

(assert (=> b!1626749 d!489715))

(declare-fun d!490531 () Bool)

(assert (=> d!490531 (= (list!7011 lt!588446) (list!7016 (c!264623 lt!588446)))))

(declare-fun bs!394981 () Bool)

(assert (= bs!394981 d!490531))

(declare-fun m!1958711 () Bool)

(assert (=> bs!394981 m!1958711))

(assert (=> d!489713 d!490531))

(declare-fun d!490533 () Bool)

(declare-fun c!265134 () Bool)

(assert (=> d!490533 (= c!265134 ((_ is Cons!17856) (list!7012 lt!587990)))))

(declare-fun e!1044447 () List!17924)

(assert (=> d!490533 (= (printList!889 thiss!17113 (list!7012 lt!587990)) e!1044447)))

(declare-fun b!1628520 () Bool)

(assert (=> b!1628520 (= e!1044447 (++!4751 (list!7011 (charsOf!1794 (h!23257 (list!7012 lt!587990)))) (printList!889 thiss!17113 (t!149059 (list!7012 lt!587990)))))))

(declare-fun b!1628521 () Bool)

(assert (=> b!1628521 (= e!1044447 Nil!17854)))

(assert (= (and d!490533 c!265134) b!1628520))

(assert (= (and d!490533 (not c!265134)) b!1628521))

(declare-fun m!1958713 () Bool)

(assert (=> b!1628520 m!1958713))

(assert (=> b!1628520 m!1958713))

(declare-fun m!1958715 () Bool)

(assert (=> b!1628520 m!1958715))

(declare-fun m!1958717 () Bool)

(assert (=> b!1628520 m!1958717))

(assert (=> b!1628520 m!1958715))

(assert (=> b!1628520 m!1958717))

(declare-fun m!1958719 () Bool)

(assert (=> b!1628520 m!1958719))

(assert (=> d!489713 d!490533))

(assert (=> d!489713 d!489817))

(declare-fun d!490535 () Bool)

(declare-fun lt!589289 () BalanceConc!11820)

(assert (=> d!490535 (= (list!7011 lt!589289) (printListTailRec!357 thiss!17113 (dropList!611 lt!587990 0) (list!7011 (BalanceConc!11821 Empty!5938))))))

(declare-fun e!1044448 () BalanceConc!11820)

(assert (=> d!490535 (= lt!589289 e!1044448)))

(declare-fun c!265135 () Bool)

(assert (=> d!490535 (= c!265135 (>= 0 (size!14283 lt!587990)))))

(declare-fun e!1044449 () Bool)

(assert (=> d!490535 e!1044449))

(declare-fun res!728240 () Bool)

(assert (=> d!490535 (=> (not res!728240) (not e!1044449))))

(assert (=> d!490535 (= res!728240 (>= 0 0))))

(assert (=> d!490535 (= (printTailRec!827 thiss!17113 lt!587990 0 (BalanceConc!11821 Empty!5938)) lt!589289)))

(declare-fun b!1628522 () Bool)

(assert (=> b!1628522 (= e!1044449 (<= 0 (size!14283 lt!587990)))))

(declare-fun b!1628523 () Bool)

(assert (=> b!1628523 (= e!1044448 (BalanceConc!11821 Empty!5938))))

(declare-fun b!1628524 () Bool)

(assert (=> b!1628524 (= e!1044448 (printTailRec!827 thiss!17113 lt!587990 (+ 0 1) (++!4752 (BalanceConc!11821 Empty!5938) (charsOf!1794 (apply!4574 lt!587990 0)))))))

(declare-fun lt!589285 () List!17926)

(assert (=> b!1628524 (= lt!589285 (list!7012 lt!587990))))

(declare-fun lt!589286 () Unit!28923)

(assert (=> b!1628524 (= lt!589286 (lemmaDropApply!564 lt!589285 0))))

(assert (=> b!1628524 (= (head!3452 (drop!874 lt!589285 0)) (apply!4576 lt!589285 0))))

(declare-fun lt!589284 () Unit!28923)

(assert (=> b!1628524 (= lt!589284 lt!589286)))

(declare-fun lt!589288 () List!17926)

(assert (=> b!1628524 (= lt!589288 (list!7012 lt!587990))))

(declare-fun lt!589287 () Unit!28923)

(assert (=> b!1628524 (= lt!589287 (lemmaDropTail!544 lt!589288 0))))

(assert (=> b!1628524 (= (tail!2368 (drop!874 lt!589288 0)) (drop!874 lt!589288 (+ 0 1)))))

(declare-fun lt!589283 () Unit!28923)

(assert (=> b!1628524 (= lt!589283 lt!589287)))

(assert (= (and d!490535 res!728240) b!1628522))

(assert (= (and d!490535 c!265135) b!1628523))

(assert (= (and d!490535 (not c!265135)) b!1628524))

(declare-fun m!1958721 () Bool)

(assert (=> d!490535 m!1958721))

(declare-fun m!1958723 () Bool)

(assert (=> d!490535 m!1958723))

(assert (=> d!490535 m!1955685))

(declare-fun m!1958725 () Bool)

(assert (=> d!490535 m!1958725))

(assert (=> d!490535 m!1955685))

(declare-fun m!1958727 () Bool)

(assert (=> d!490535 m!1958727))

(assert (=> d!490535 m!1958725))

(assert (=> b!1628522 m!1958721))

(declare-fun m!1958729 () Bool)

(assert (=> b!1628524 m!1958729))

(declare-fun m!1958731 () Bool)

(assert (=> b!1628524 m!1958731))

(declare-fun m!1958733 () Bool)

(assert (=> b!1628524 m!1958733))

(declare-fun m!1958735 () Bool)

(assert (=> b!1628524 m!1958735))

(declare-fun m!1958737 () Bool)

(assert (=> b!1628524 m!1958737))

(assert (=> b!1628524 m!1958735))

(assert (=> b!1628524 m!1954999))

(declare-fun m!1958739 () Bool)

(assert (=> b!1628524 m!1958739))

(assert (=> b!1628524 m!1958737))

(declare-fun m!1958741 () Bool)

(assert (=> b!1628524 m!1958741))

(assert (=> b!1628524 m!1958733))

(declare-fun m!1958743 () Bool)

(assert (=> b!1628524 m!1958743))

(assert (=> b!1628524 m!1958741))

(declare-fun m!1958745 () Bool)

(assert (=> b!1628524 m!1958745))

(declare-fun m!1958747 () Bool)

(assert (=> b!1628524 m!1958747))

(assert (=> b!1628524 m!1958729))

(declare-fun m!1958749 () Bool)

(assert (=> b!1628524 m!1958749))

(declare-fun m!1958751 () Bool)

(assert (=> b!1628524 m!1958751))

(assert (=> d!489713 d!490535))

(declare-fun b!1628525 () Bool)

(declare-fun e!1044451 () Bool)

(declare-fun e!1044452 () Bool)

(assert (=> b!1628525 (= e!1044451 e!1044452)))

(declare-fun res!728243 () Bool)

(assert (=> b!1628525 (=> (not res!728243) (not e!1044452))))

(declare-fun lt!589294 () Option!3316)

(assert (=> b!1628525 (= res!728243 (isDefined!2683 lt!589294))))

(declare-fun b!1628526 () Bool)

(declare-fun res!728245 () Bool)

(assert (=> b!1628526 (=> (not res!728245) (not e!1044452))))

(assert (=> b!1628526 (= res!728245 (= (++!4751 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!589294)))) (_2!10119 (get!5150 lt!589294))) lt!587986))))

(declare-fun b!1628527 () Bool)

(declare-fun e!1044450 () Option!3316)

(declare-fun lt!589291 () Option!3316)

(declare-fun lt!589290 () Option!3316)

(assert (=> b!1628527 (= e!1044450 (ite (and ((_ is None!3315) lt!589291) ((_ is None!3315) lt!589290)) None!3315 (ite ((_ is None!3315) lt!589290) lt!589291 (ite ((_ is None!3315) lt!589291) lt!589290 (ite (>= (size!14278 (_1!10119 (v!24358 lt!589291))) (size!14278 (_1!10119 (v!24358 lt!589290)))) lt!589291 lt!589290)))))))

(declare-fun call!105456 () Option!3316)

(assert (=> b!1628527 (= lt!589291 call!105456)))

(assert (=> b!1628527 (= lt!589290 (maxPrefix!1338 thiss!17113 (t!149058 (t!149058 rules!1846)) lt!587986))))

(declare-fun d!490537 () Bool)

(assert (=> d!490537 e!1044451))

(declare-fun res!728244 () Bool)

(assert (=> d!490537 (=> res!728244 e!1044451)))

(assert (=> d!490537 (= res!728244 (isEmpty!10890 lt!589294))))

(assert (=> d!490537 (= lt!589294 e!1044450)))

(declare-fun c!265136 () Bool)

(assert (=> d!490537 (= c!265136 (and ((_ is Cons!17855) (t!149058 rules!1846)) ((_ is Nil!17855) (t!149058 (t!149058 rules!1846)))))))

(declare-fun lt!589292 () Unit!28923)

(declare-fun lt!589293 () Unit!28923)

(assert (=> d!490537 (= lt!589292 lt!589293)))

(assert (=> d!490537 (isPrefix!1405 lt!587986 lt!587986)))

(assert (=> d!490537 (= lt!589293 (lemmaIsPrefixRefl!962 lt!587986 lt!587986))))

(assert (=> d!490537 (rulesValidInductive!974 thiss!17113 (t!149058 rules!1846))))

(assert (=> d!490537 (= (maxPrefix!1338 thiss!17113 (t!149058 rules!1846) lt!587986) lt!589294)))

(declare-fun b!1628528 () Bool)

(declare-fun res!728246 () Bool)

(assert (=> b!1628528 (=> (not res!728246) (not e!1044452))))

(assert (=> b!1628528 (= res!728246 (matchR!1972 (regex!3145 (rule!4971 (_1!10119 (get!5150 lt!589294)))) (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!589294))))))))

(declare-fun b!1628529 () Bool)

(declare-fun res!728241 () Bool)

(assert (=> b!1628529 (=> (not res!728241) (not e!1044452))))

(assert (=> b!1628529 (= res!728241 (= (value!99305 (_1!10119 (get!5150 lt!589294))) (apply!4575 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!589294)))) (seqFromList!2040 (originalCharacters!3959 (_1!10119 (get!5150 lt!589294)))))))))

(declare-fun b!1628530 () Bool)

(declare-fun res!728242 () Bool)

(assert (=> b!1628530 (=> (not res!728242) (not e!1044452))))

(assert (=> b!1628530 (= res!728242 (= (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!589294)))) (originalCharacters!3959 (_1!10119 (get!5150 lt!589294)))))))

(declare-fun bm!105451 () Bool)

(assert (=> bm!105451 (= call!105456 (maxPrefixOneRule!777 thiss!17113 (h!23256 (t!149058 rules!1846)) lt!587986))))

(declare-fun b!1628531 () Bool)

(assert (=> b!1628531 (= e!1044452 (contains!3120 (t!149058 rules!1846) (rule!4971 (_1!10119 (get!5150 lt!589294)))))))

(declare-fun b!1628532 () Bool)

(assert (=> b!1628532 (= e!1044450 call!105456)))

(declare-fun b!1628533 () Bool)

(declare-fun res!728247 () Bool)

(assert (=> b!1628533 (=> (not res!728247) (not e!1044452))))

(assert (=> b!1628533 (= res!728247 (< (size!14282 (_2!10119 (get!5150 lt!589294))) (size!14282 lt!587986)))))

(assert (= (and d!490537 c!265136) b!1628532))

(assert (= (and d!490537 (not c!265136)) b!1628527))

(assert (= (or b!1628532 b!1628527) bm!105451))

(assert (= (and d!490537 (not res!728244)) b!1628525))

(assert (= (and b!1628525 res!728243) b!1628530))

(assert (= (and b!1628530 res!728242) b!1628533))

(assert (= (and b!1628533 res!728247) b!1628526))

(assert (= (and b!1628526 res!728245) b!1628529))

(assert (= (and b!1628529 res!728241) b!1628528))

(assert (= (and b!1628528 res!728246) b!1628531))

(declare-fun m!1958753 () Bool)

(assert (=> b!1628527 m!1958753))

(declare-fun m!1958755 () Bool)

(assert (=> b!1628533 m!1958755))

(declare-fun m!1958757 () Bool)

(assert (=> b!1628533 m!1958757))

(assert (=> b!1628533 m!1955637))

(assert (=> b!1628528 m!1958755))

(declare-fun m!1958759 () Bool)

(assert (=> b!1628528 m!1958759))

(assert (=> b!1628528 m!1958759))

(declare-fun m!1958761 () Bool)

(assert (=> b!1628528 m!1958761))

(assert (=> b!1628528 m!1958761))

(declare-fun m!1958763 () Bool)

(assert (=> b!1628528 m!1958763))

(assert (=> b!1628531 m!1958755))

(declare-fun m!1958765 () Bool)

(assert (=> b!1628531 m!1958765))

(declare-fun m!1958767 () Bool)

(assert (=> d!490537 m!1958767))

(assert (=> d!490537 m!1955649))

(assert (=> d!490537 m!1955651))

(assert (=> d!490537 m!1956967))

(assert (=> b!1628529 m!1958755))

(declare-fun m!1958771 () Bool)

(assert (=> b!1628529 m!1958771))

(assert (=> b!1628529 m!1958771))

(declare-fun m!1958779 () Bool)

(assert (=> b!1628529 m!1958779))

(assert (=> b!1628530 m!1958755))

(assert (=> b!1628530 m!1958759))

(assert (=> b!1628530 m!1958759))

(assert (=> b!1628530 m!1958761))

(declare-fun m!1958785 () Bool)

(assert (=> bm!105451 m!1958785))

(declare-fun m!1958787 () Bool)

(assert (=> b!1628525 m!1958787))

(assert (=> b!1628526 m!1958755))

(assert (=> b!1628526 m!1958759))

(assert (=> b!1628526 m!1958759))

(assert (=> b!1628526 m!1958761))

(assert (=> b!1628526 m!1958761))

(declare-fun m!1958789 () Bool)

(assert (=> b!1628526 m!1958789))

(assert (=> b!1626683 d!490537))

(declare-fun b!1628544 () Bool)

(declare-fun e!1044458 () List!17924)

(assert (=> b!1628544 (= e!1044458 (list!7019 (xs!8770 (c!264623 lt!587989))))))

(declare-fun d!490541 () Bool)

(declare-fun c!265141 () Bool)

(assert (=> d!490541 (= c!265141 ((_ is Empty!5938) (c!264623 lt!587989)))))

(declare-fun e!1044457 () List!17924)

(assert (=> d!490541 (= (list!7016 (c!264623 lt!587989)) e!1044457)))

(declare-fun b!1628542 () Bool)

(assert (=> b!1628542 (= e!1044457 Nil!17854)))

(declare-fun b!1628545 () Bool)

(assert (=> b!1628545 (= e!1044458 (++!4751 (list!7016 (left!14348 (c!264623 lt!587989))) (list!7016 (right!14678 (c!264623 lt!587989)))))))

(declare-fun b!1628543 () Bool)

(assert (=> b!1628543 (= e!1044457 e!1044458)))

(declare-fun c!265142 () Bool)

(assert (=> b!1628543 (= c!265142 ((_ is Leaf!8731) (c!264623 lt!587989)))))

(assert (= (and d!490541 c!265141) b!1628542))

(assert (= (and d!490541 (not c!265141)) b!1628543))

(assert (= (and b!1628543 c!265142) b!1628544))

(assert (= (and b!1628543 (not c!265142)) b!1628545))

(declare-fun m!1958803 () Bool)

(assert (=> b!1628544 m!1958803))

(declare-fun m!1958805 () Bool)

(assert (=> b!1628545 m!1958805))

(declare-fun m!1958807 () Bool)

(assert (=> b!1628545 m!1958807))

(assert (=> b!1628545 m!1958805))

(assert (=> b!1628545 m!1958807))

(declare-fun m!1958809 () Bool)

(assert (=> b!1628545 m!1958809))

(assert (=> d!489705 d!490541))

(declare-fun d!490545 () Bool)

(assert (=> d!490545 (= (isEmpty!10890 lt!587991) (not ((_ is Some!3315) lt!587991)))))

(assert (=> d!489689 d!490545))

(declare-fun d!490547 () Bool)

(assert (=> d!490547 (= (isEmpty!10881 (++!4751 lt!587996 lt!588000)) ((_ is Nil!17854) (++!4751 lt!587996 lt!588000)))))

(assert (=> d!489725 d!490547))

(declare-fun b!1628546 () Bool)

(declare-fun e!1044461 () Bool)

(declare-fun e!1044459 () Bool)

(assert (=> b!1628546 (= e!1044461 e!1044459)))

(declare-fun c!265145 () Bool)

(assert (=> b!1628546 (= c!265145 ((_ is EmptyLang!4473) (derivativeStep!1084 (regex!3145 (rule!4971 (h!23257 tokens!457))) (head!3449 lt!587996))))))

(declare-fun b!1628547 () Bool)

(declare-fun lt!589295 () Bool)

(assert (=> b!1628547 (= e!1044459 (not lt!589295))))

(declare-fun b!1628548 () Bool)

(declare-fun res!728252 () Bool)

(declare-fun e!1044463 () Bool)

(assert (=> b!1628548 (=> (not res!728252) (not e!1044463))))

(declare-fun call!105457 () Bool)

(assert (=> b!1628548 (= res!728252 (not call!105457))))

(declare-fun bm!105452 () Bool)

(assert (=> bm!105452 (= call!105457 (isEmpty!10881 (tail!2367 lt!587996)))))

(declare-fun b!1628549 () Bool)

(declare-fun res!728253 () Bool)

(declare-fun e!1044462 () Bool)

(assert (=> b!1628549 (=> res!728253 e!1044462)))

(assert (=> b!1628549 (= res!728253 (not (isEmpty!10881 (tail!2367 (tail!2367 lt!587996)))))))

(declare-fun b!1628550 () Bool)

(declare-fun e!1044460 () Bool)

(assert (=> b!1628550 (= e!1044460 (matchR!1972 (derivativeStep!1084 (derivativeStep!1084 (regex!3145 (rule!4971 (h!23257 tokens!457))) (head!3449 lt!587996)) (head!3449 (tail!2367 lt!587996))) (tail!2367 (tail!2367 lt!587996))))))

(declare-fun b!1628551 () Bool)

(declare-fun res!728250 () Bool)

(assert (=> b!1628551 (=> (not res!728250) (not e!1044463))))

(assert (=> b!1628551 (= res!728250 (isEmpty!10881 (tail!2367 (tail!2367 lt!587996))))))

(declare-fun b!1628552 () Bool)

(declare-fun res!728249 () Bool)

(declare-fun e!1044465 () Bool)

(assert (=> b!1628552 (=> res!728249 e!1044465)))

(assert (=> b!1628552 (= res!728249 e!1044463)))

(declare-fun res!728248 () Bool)

(assert (=> b!1628552 (=> (not res!728248) (not e!1044463))))

(assert (=> b!1628552 (= res!728248 lt!589295)))

(declare-fun b!1628553 () Bool)

(assert (=> b!1628553 (= e!1044461 (= lt!589295 call!105457))))

(declare-fun b!1628554 () Bool)

(assert (=> b!1628554 (= e!1044463 (= (head!3449 (tail!2367 lt!587996)) (c!264624 (derivativeStep!1084 (regex!3145 (rule!4971 (h!23257 tokens!457))) (head!3449 lt!587996)))))))

(declare-fun b!1628556 () Bool)

(assert (=> b!1628556 (= e!1044462 (not (= (head!3449 (tail!2367 lt!587996)) (c!264624 (derivativeStep!1084 (regex!3145 (rule!4971 (h!23257 tokens!457))) (head!3449 lt!587996))))))))

(declare-fun b!1628557 () Bool)

(assert (=> b!1628557 (= e!1044460 (nullable!1319 (derivativeStep!1084 (regex!3145 (rule!4971 (h!23257 tokens!457))) (head!3449 lt!587996))))))

(declare-fun b!1628558 () Bool)

(declare-fun e!1044464 () Bool)

(assert (=> b!1628558 (= e!1044465 e!1044464)))

(declare-fun res!728254 () Bool)

(assert (=> b!1628558 (=> (not res!728254) (not e!1044464))))

(assert (=> b!1628558 (= res!728254 (not lt!589295))))

(declare-fun b!1628559 () Bool)

(declare-fun res!728251 () Bool)

(assert (=> b!1628559 (=> res!728251 e!1044465)))

(assert (=> b!1628559 (= res!728251 (not ((_ is ElementMatch!4473) (derivativeStep!1084 (regex!3145 (rule!4971 (h!23257 tokens!457))) (head!3449 lt!587996)))))))

(assert (=> b!1628559 (= e!1044459 e!1044465)))

(declare-fun d!490549 () Bool)

(assert (=> d!490549 e!1044461))

(declare-fun c!265143 () Bool)

(assert (=> d!490549 (= c!265143 ((_ is EmptyExpr!4473) (derivativeStep!1084 (regex!3145 (rule!4971 (h!23257 tokens!457))) (head!3449 lt!587996))))))

(assert (=> d!490549 (= lt!589295 e!1044460)))

(declare-fun c!265144 () Bool)

(assert (=> d!490549 (= c!265144 (isEmpty!10881 (tail!2367 lt!587996)))))

(assert (=> d!490549 (validRegex!1780 (derivativeStep!1084 (regex!3145 (rule!4971 (h!23257 tokens!457))) (head!3449 lt!587996)))))

(assert (=> d!490549 (= (matchR!1972 (derivativeStep!1084 (regex!3145 (rule!4971 (h!23257 tokens!457))) (head!3449 lt!587996)) (tail!2367 lt!587996)) lt!589295)))

(declare-fun b!1628555 () Bool)

(assert (=> b!1628555 (= e!1044464 e!1044462)))

(declare-fun res!728255 () Bool)

(assert (=> b!1628555 (=> res!728255 e!1044462)))

(assert (=> b!1628555 (= res!728255 call!105457)))

(assert (= (and d!490549 c!265144) b!1628557))

(assert (= (and d!490549 (not c!265144)) b!1628550))

(assert (= (and d!490549 c!265143) b!1628553))

(assert (= (and d!490549 (not c!265143)) b!1628546))

(assert (= (and b!1628546 c!265145) b!1628547))

(assert (= (and b!1628546 (not c!265145)) b!1628559))

(assert (= (and b!1628559 (not res!728251)) b!1628552))

(assert (= (and b!1628552 res!728248) b!1628548))

(assert (= (and b!1628548 res!728252) b!1628551))

(assert (= (and b!1628551 res!728250) b!1628554))

(assert (= (and b!1628552 (not res!728249)) b!1628558))

(assert (= (and b!1628558 res!728254) b!1628555))

(assert (= (and b!1628555 (not res!728255)) b!1628549))

(assert (= (and b!1628549 (not res!728253)) b!1628556))

(assert (= (or b!1628553 b!1628548 b!1628555) bm!105452))

(assert (=> b!1628557 m!1955861))

(declare-fun m!1958811 () Bool)

(assert (=> b!1628557 m!1958811))

(assert (=> b!1628556 m!1955293))

(declare-fun m!1958813 () Bool)

(assert (=> b!1628556 m!1958813))

(assert (=> b!1628549 m!1955293))

(declare-fun m!1958815 () Bool)

(assert (=> b!1628549 m!1958815))

(assert (=> b!1628549 m!1958815))

(declare-fun m!1958817 () Bool)

(assert (=> b!1628549 m!1958817))

(assert (=> b!1628551 m!1955293))

(assert (=> b!1628551 m!1958815))

(assert (=> b!1628551 m!1958815))

(assert (=> b!1628551 m!1958817))

(assert (=> b!1628550 m!1955293))

(assert (=> b!1628550 m!1958813))

(assert (=> b!1628550 m!1955861))

(assert (=> b!1628550 m!1958813))

(declare-fun m!1958819 () Bool)

(assert (=> b!1628550 m!1958819))

(assert (=> b!1628550 m!1955293))

(assert (=> b!1628550 m!1958815))

(assert (=> b!1628550 m!1958819))

(assert (=> b!1628550 m!1958815))

(declare-fun m!1958821 () Bool)

(assert (=> b!1628550 m!1958821))

(assert (=> bm!105452 m!1955293))

(assert (=> bm!105452 m!1955859))

(assert (=> b!1628554 m!1955293))

(assert (=> b!1628554 m!1958813))

(assert (=> d!490549 m!1955293))

(assert (=> d!490549 m!1955859))

(assert (=> d!490549 m!1955861))

(declare-fun m!1958823 () Bool)

(assert (=> d!490549 m!1958823))

(assert (=> b!1626783 d!490549))

(declare-fun call!105458 () Regex!4473)

(declare-fun bm!105453 () Bool)

(declare-fun c!265149 () Bool)

(declare-fun c!265147 () Bool)

(assert (=> bm!105453 (= call!105458 (derivativeStep!1084 (ite c!265147 (regTwo!9459 (regex!3145 (rule!4971 (h!23257 tokens!457)))) (ite c!265149 (regTwo!9458 (regex!3145 (rule!4971 (h!23257 tokens!457)))) (regOne!9458 (regex!3145 (rule!4971 (h!23257 tokens!457)))))) (head!3449 lt!587996)))))

(declare-fun b!1628560 () Bool)

(declare-fun e!1044467 () Regex!4473)

(assert (=> b!1628560 (= e!1044467 EmptyLang!4473)))

(declare-fun d!490551 () Bool)

(declare-fun lt!589296 () Regex!4473)

(assert (=> d!490551 (validRegex!1780 lt!589296)))

(assert (=> d!490551 (= lt!589296 e!1044467)))

(declare-fun c!265146 () Bool)

(assert (=> d!490551 (= c!265146 (or ((_ is EmptyExpr!4473) (regex!3145 (rule!4971 (h!23257 tokens!457)))) ((_ is EmptyLang!4473) (regex!3145 (rule!4971 (h!23257 tokens!457))))))))

(assert (=> d!490551 (validRegex!1780 (regex!3145 (rule!4971 (h!23257 tokens!457))))))

(assert (=> d!490551 (= (derivativeStep!1084 (regex!3145 (rule!4971 (h!23257 tokens!457))) (head!3449 lt!587996)) lt!589296)))

(declare-fun bm!105454 () Bool)

(declare-fun call!105461 () Regex!4473)

(declare-fun call!105460 () Regex!4473)

(assert (=> bm!105454 (= call!105461 call!105460)))

(declare-fun b!1628561 () Bool)

(declare-fun call!105459 () Regex!4473)

(declare-fun e!1044468 () Regex!4473)

(assert (=> b!1628561 (= e!1044468 (Union!4473 (Concat!7709 call!105461 (regTwo!9458 (regex!3145 (rule!4971 (h!23257 tokens!457))))) call!105459))))

(declare-fun b!1628562 () Bool)

(assert (=> b!1628562 (= c!265147 ((_ is Union!4473) (regex!3145 (rule!4971 (h!23257 tokens!457)))))))

(declare-fun e!1044470 () Regex!4473)

(declare-fun e!1044466 () Regex!4473)

(assert (=> b!1628562 (= e!1044470 e!1044466)))

(declare-fun b!1628563 () Bool)

(assert (=> b!1628563 (= e!1044468 (Union!4473 (Concat!7709 call!105459 (regTwo!9458 (regex!3145 (rule!4971 (h!23257 tokens!457))))) EmptyLang!4473))))

(declare-fun b!1628564 () Bool)

(assert (=> b!1628564 (= e!1044466 (Union!4473 call!105460 call!105458))))

(declare-fun b!1628565 () Bool)

(declare-fun e!1044469 () Regex!4473)

(assert (=> b!1628565 (= e!1044466 e!1044469)))

(declare-fun c!265148 () Bool)

(assert (=> b!1628565 (= c!265148 ((_ is Star!4473) (regex!3145 (rule!4971 (h!23257 tokens!457)))))))

(declare-fun b!1628566 () Bool)

(assert (=> b!1628566 (= e!1044470 (ite (= (head!3449 lt!587996) (c!264624 (regex!3145 (rule!4971 (h!23257 tokens!457))))) EmptyExpr!4473 EmptyLang!4473))))

(declare-fun bm!105455 () Bool)

(assert (=> bm!105455 (= call!105460 (derivativeStep!1084 (ite c!265147 (regOne!9459 (regex!3145 (rule!4971 (h!23257 tokens!457)))) (ite c!265148 (reg!4802 (regex!3145 (rule!4971 (h!23257 tokens!457)))) (regOne!9458 (regex!3145 (rule!4971 (h!23257 tokens!457)))))) (head!3449 lt!587996)))))

(declare-fun b!1628567 () Bool)

(assert (=> b!1628567 (= e!1044469 (Concat!7709 call!105461 (regex!3145 (rule!4971 (h!23257 tokens!457)))))))

(declare-fun b!1628568 () Bool)

(assert (=> b!1628568 (= c!265149 (nullable!1319 (regOne!9458 (regex!3145 (rule!4971 (h!23257 tokens!457))))))))

(assert (=> b!1628568 (= e!1044469 e!1044468)))

(declare-fun bm!105456 () Bool)

(assert (=> bm!105456 (= call!105459 call!105458)))

(declare-fun b!1628569 () Bool)

(assert (=> b!1628569 (= e!1044467 e!1044470)))

(declare-fun c!265150 () Bool)

(assert (=> b!1628569 (= c!265150 ((_ is ElementMatch!4473) (regex!3145 (rule!4971 (h!23257 tokens!457)))))))

(assert (= (and d!490551 c!265146) b!1628560))

(assert (= (and d!490551 (not c!265146)) b!1628569))

(assert (= (and b!1628569 c!265150) b!1628566))

(assert (= (and b!1628569 (not c!265150)) b!1628562))

(assert (= (and b!1628562 c!265147) b!1628564))

(assert (= (and b!1628562 (not c!265147)) b!1628565))

(assert (= (and b!1628565 c!265148) b!1628567))

(assert (= (and b!1628565 (not c!265148)) b!1628568))

(assert (= (and b!1628568 c!265149) b!1628561))

(assert (= (and b!1628568 (not c!265149)) b!1628563))

(assert (= (or b!1628561 b!1628563) bm!105456))

(assert (= (or b!1628567 b!1628561) bm!105454))

(assert (= (or b!1628564 bm!105454) bm!105455))

(assert (= (or b!1628564 bm!105456) bm!105453))

(assert (=> bm!105453 m!1955299))

(declare-fun m!1958825 () Bool)

(assert (=> bm!105453 m!1958825))

(declare-fun m!1958827 () Bool)

(assert (=> d!490551 m!1958827))

(assert (=> d!490551 m!1955867))

(assert (=> bm!105455 m!1955299))

(declare-fun m!1958829 () Bool)

(assert (=> bm!105455 m!1958829))

(declare-fun m!1958831 () Bool)

(assert (=> b!1628568 m!1958831))

(assert (=> b!1626783 d!490551))

(assert (=> b!1626783 d!489915))

(assert (=> b!1626783 d!490211))

(declare-fun b!1628570 () Bool)

(declare-fun e!1044472 () Bool)

(assert (=> b!1628570 (= e!1044472 (matchR!1972 (regex!3145 (h!23256 rules!1846)) (_1!10124 (findLongestMatchInner!361 (regex!3145 (h!23256 rules!1846)) Nil!17854 (size!14282 Nil!17854) lt!587986 lt!587986 (size!14282 lt!587986)))))))

(declare-fun b!1628571 () Bool)

(declare-fun e!1044474 () Option!3316)

(declare-fun lt!589298 () tuple2!17444)

(assert (=> b!1628571 (= e!1044474 (Some!3315 (tuple2!17435 (Token!5857 (apply!4575 (transformation!3145 (h!23256 rules!1846)) (seqFromList!2040 (_1!10124 lt!589298))) (h!23256 rules!1846) (size!14284 (seqFromList!2040 (_1!10124 lt!589298))) (_1!10124 lt!589298)) (_2!10124 lt!589298))))))

(declare-fun lt!589300 () Unit!28923)

(assert (=> b!1628571 (= lt!589300 (longestMatchIsAcceptedByMatchOrIsEmpty!345 (regex!3145 (h!23256 rules!1846)) lt!587986))))

(declare-fun res!728256 () Bool)

(assert (=> b!1628571 (= res!728256 (isEmpty!10881 (_1!10124 (findLongestMatchInner!361 (regex!3145 (h!23256 rules!1846)) Nil!17854 (size!14282 Nil!17854) lt!587986 lt!587986 (size!14282 lt!587986)))))))

(assert (=> b!1628571 (=> res!728256 e!1044472)))

(assert (=> b!1628571 e!1044472))

(declare-fun lt!589297 () Unit!28923)

(assert (=> b!1628571 (= lt!589297 lt!589300)))

(declare-fun lt!589301 () Unit!28923)

(assert (=> b!1628571 (= lt!589301 (lemmaSemiInverse!394 (transformation!3145 (h!23256 rules!1846)) (seqFromList!2040 (_1!10124 lt!589298))))))

(declare-fun d!490553 () Bool)

(declare-fun e!1044471 () Bool)

(assert (=> d!490553 e!1044471))

(declare-fun res!728262 () Bool)

(assert (=> d!490553 (=> res!728262 e!1044471)))

(declare-fun lt!589299 () Option!3316)

(assert (=> d!490553 (= res!728262 (isEmpty!10890 lt!589299))))

(assert (=> d!490553 (= lt!589299 e!1044474)))

(declare-fun c!265151 () Bool)

(assert (=> d!490553 (= c!265151 (isEmpty!10881 (_1!10124 lt!589298)))))

(assert (=> d!490553 (= lt!589298 (findLongestMatch!288 (regex!3145 (h!23256 rules!1846)) lt!587986))))

(assert (=> d!490553 (ruleValid!739 thiss!17113 (h!23256 rules!1846))))

(assert (=> d!490553 (= (maxPrefixOneRule!777 thiss!17113 (h!23256 rules!1846) lt!587986) lt!589299)))

(declare-fun b!1628572 () Bool)

(declare-fun e!1044473 () Bool)

(assert (=> b!1628572 (= e!1044473 (= (size!14278 (_1!10119 (get!5150 lt!589299))) (size!14282 (originalCharacters!3959 (_1!10119 (get!5150 lt!589299))))))))

(declare-fun b!1628573 () Bool)

(declare-fun res!728260 () Bool)

(assert (=> b!1628573 (=> (not res!728260) (not e!1044473))))

(assert (=> b!1628573 (= res!728260 (= (rule!4971 (_1!10119 (get!5150 lt!589299))) (h!23256 rules!1846)))))

(declare-fun b!1628574 () Bool)

(assert (=> b!1628574 (= e!1044471 e!1044473)))

(declare-fun res!728261 () Bool)

(assert (=> b!1628574 (=> (not res!728261) (not e!1044473))))

(assert (=> b!1628574 (= res!728261 (matchR!1972 (regex!3145 (h!23256 rules!1846)) (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!589299))))))))

(declare-fun b!1628575 () Bool)

(declare-fun res!728258 () Bool)

(assert (=> b!1628575 (=> (not res!728258) (not e!1044473))))

(assert (=> b!1628575 (= res!728258 (< (size!14282 (_2!10119 (get!5150 lt!589299))) (size!14282 lt!587986)))))

(declare-fun b!1628576 () Bool)

(declare-fun res!728257 () Bool)

(assert (=> b!1628576 (=> (not res!728257) (not e!1044473))))

(assert (=> b!1628576 (= res!728257 (= (++!4751 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!589299)))) (_2!10119 (get!5150 lt!589299))) lt!587986))))

(declare-fun b!1628577 () Bool)

(declare-fun res!728259 () Bool)

(assert (=> b!1628577 (=> (not res!728259) (not e!1044473))))

(assert (=> b!1628577 (= res!728259 (= (value!99305 (_1!10119 (get!5150 lt!589299))) (apply!4575 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!589299)))) (seqFromList!2040 (originalCharacters!3959 (_1!10119 (get!5150 lt!589299)))))))))

(declare-fun b!1628578 () Bool)

(assert (=> b!1628578 (= e!1044474 None!3315)))

(assert (= (and d!490553 c!265151) b!1628578))

(assert (= (and d!490553 (not c!265151)) b!1628571))

(assert (= (and b!1628571 (not res!728256)) b!1628570))

(assert (= (and d!490553 (not res!728262)) b!1628574))

(assert (= (and b!1628574 res!728261) b!1628576))

(assert (= (and b!1628576 res!728257) b!1628575))

(assert (= (and b!1628575 res!728258) b!1628573))

(assert (= (and b!1628573 res!728260) b!1628577))

(assert (= (and b!1628577 res!728259) b!1628572))

(declare-fun m!1958833 () Bool)

(assert (=> b!1628572 m!1958833))

(declare-fun m!1958835 () Bool)

(assert (=> b!1628572 m!1958835))

(assert (=> b!1628570 m!1956705))

(assert (=> b!1628570 m!1955637))

(assert (=> b!1628570 m!1956705))

(assert (=> b!1628570 m!1955637))

(declare-fun m!1958837 () Bool)

(assert (=> b!1628570 m!1958837))

(declare-fun m!1958839 () Bool)

(assert (=> b!1628570 m!1958839))

(assert (=> b!1628575 m!1958833))

(declare-fun m!1958841 () Bool)

(assert (=> b!1628575 m!1958841))

(assert (=> b!1628575 m!1955637))

(declare-fun m!1958843 () Bool)

(assert (=> b!1628571 m!1958843))

(declare-fun m!1958845 () Bool)

(assert (=> b!1628571 m!1958845))

(assert (=> b!1628571 m!1958843))

(declare-fun m!1958847 () Bool)

(assert (=> b!1628571 m!1958847))

(assert (=> b!1628571 m!1956705))

(assert (=> b!1628571 m!1955637))

(assert (=> b!1628571 m!1958837))

(assert (=> b!1628571 m!1958843))

(declare-fun m!1958849 () Bool)

(assert (=> b!1628571 m!1958849))

(declare-fun m!1958851 () Bool)

(assert (=> b!1628571 m!1958851))

(declare-fun m!1958853 () Bool)

(assert (=> b!1628571 m!1958853))

(assert (=> b!1628571 m!1955637))

(assert (=> b!1628571 m!1958843))

(assert (=> b!1628571 m!1956705))

(assert (=> b!1628573 m!1958833))

(declare-fun m!1958855 () Bool)

(assert (=> d!490553 m!1958855))

(declare-fun m!1958857 () Bool)

(assert (=> d!490553 m!1958857))

(declare-fun m!1958859 () Bool)

(assert (=> d!490553 m!1958859))

(assert (=> d!490553 m!1956731))

(assert (=> b!1628574 m!1958833))

(declare-fun m!1958861 () Bool)

(assert (=> b!1628574 m!1958861))

(assert (=> b!1628574 m!1958861))

(declare-fun m!1958863 () Bool)

(assert (=> b!1628574 m!1958863))

(assert (=> b!1628574 m!1958863))

(declare-fun m!1958865 () Bool)

(assert (=> b!1628574 m!1958865))

(assert (=> b!1628576 m!1958833))

(assert (=> b!1628576 m!1958861))

(assert (=> b!1628576 m!1958861))

(assert (=> b!1628576 m!1958863))

(assert (=> b!1628576 m!1958863))

(declare-fun m!1958867 () Bool)

(assert (=> b!1628576 m!1958867))

(assert (=> b!1628577 m!1958833))

(declare-fun m!1958869 () Bool)

(assert (=> b!1628577 m!1958869))

(assert (=> b!1628577 m!1958869))

(declare-fun m!1958871 () Bool)

(assert (=> b!1628577 m!1958871))

(assert (=> bm!105258 d!490553))

(declare-fun d!490555 () Bool)

(assert (=> d!490555 true))

(declare-fun lambda!67327 () Int)

(declare-fun order!10603 () Int)

(declare-fun dynLambda!7976 (Int Int) Int)

(assert (=> d!490555 (< (dynLambda!7965 order!10591 (toValue!4572 (transformation!3145 (rule!4971 (h!23257 tokens!457))))) (dynLambda!7976 order!10603 lambda!67327))))

(declare-fun Forall2!515 (Int) Bool)

(assert (=> d!490555 (= (equivClasses!1142 (toChars!4431 (transformation!3145 (rule!4971 (h!23257 tokens!457)))) (toValue!4572 (transformation!3145 (rule!4971 (h!23257 tokens!457))))) (Forall2!515 lambda!67327))))

(declare-fun bs!394983 () Bool)

(assert (= bs!394983 d!490555))

(declare-fun m!1958885 () Bool)

(assert (=> bs!394983 m!1958885))

(assert (=> b!1626662 d!490555))

(declare-fun d!490561 () Bool)

(declare-fun lt!589305 () Bool)

(assert (=> d!490561 (= lt!589305 (select (content!2475 rules!1846) (rule!4971 (_1!10119 (get!5150 lt!588386)))))))

(declare-fun e!1044478 () Bool)

(assert (=> d!490561 (= lt!589305 e!1044478)))

(declare-fun res!728266 () Bool)

(assert (=> d!490561 (=> (not res!728266) (not e!1044478))))

(assert (=> d!490561 (= res!728266 ((_ is Cons!17855) rules!1846))))

(assert (=> d!490561 (= (contains!3120 rules!1846 (rule!4971 (_1!10119 (get!5150 lt!588386)))) lt!589305)))

(declare-fun b!1628585 () Bool)

(declare-fun e!1044479 () Bool)

(assert (=> b!1628585 (= e!1044478 e!1044479)))

(declare-fun res!728265 () Bool)

(assert (=> b!1628585 (=> res!728265 e!1044479)))

(assert (=> b!1628585 (= res!728265 (= (h!23256 rules!1846) (rule!4971 (_1!10119 (get!5150 lt!588386)))))))

(declare-fun b!1628586 () Bool)

(assert (=> b!1628586 (= e!1044479 (contains!3120 (t!149058 rules!1846) (rule!4971 (_1!10119 (get!5150 lt!588386)))))))

(assert (= (and d!490561 res!728266) b!1628585))

(assert (= (and b!1628585 (not res!728265)) b!1628586))

(assert (=> d!490561 m!1955443))

(declare-fun m!1958887 () Bool)

(assert (=> d!490561 m!1958887))

(declare-fun m!1958889 () Bool)

(assert (=> b!1628586 m!1958889))

(assert (=> b!1626736 d!490561))

(assert (=> b!1626736 d!489851))

(declare-fun b!1628587 () Bool)

(declare-fun e!1044480 () Bool)

(declare-fun call!105464 () Bool)

(assert (=> b!1628587 (= e!1044480 call!105464)))

(declare-fun b!1628588 () Bool)

(declare-fun e!1044481 () Bool)

(declare-fun e!1044485 () Bool)

(assert (=> b!1628588 (= e!1044481 e!1044485)))

(declare-fun res!728270 () Bool)

(assert (=> b!1628588 (= res!728270 (not (nullable!1319 (reg!4802 (regex!3145 (rule!4971 (h!23257 tokens!457)))))))))

(assert (=> b!1628588 (=> (not res!728270) (not e!1044485))))

(declare-fun bm!105457 () Bool)

(declare-fun call!105462 () Bool)

(declare-fun call!105463 () Bool)

(assert (=> bm!105457 (= call!105462 call!105463)))

(declare-fun bm!105458 () Bool)

(declare-fun c!265154 () Bool)

(assert (=> bm!105458 (= call!105464 (validRegex!1780 (ite c!265154 (regOne!9459 (regex!3145 (rule!4971 (h!23257 tokens!457)))) (regTwo!9458 (regex!3145 (rule!4971 (h!23257 tokens!457)))))))))

(declare-fun b!1628589 () Bool)

(declare-fun e!1044482 () Bool)

(assert (=> b!1628589 (= e!1044482 e!1044480)))

(declare-fun res!728268 () Bool)

(assert (=> b!1628589 (=> (not res!728268) (not e!1044480))))

(assert (=> b!1628589 (= res!728268 call!105462)))

(declare-fun b!1628590 () Bool)

(declare-fun res!728269 () Bool)

(declare-fun e!1044486 () Bool)

(assert (=> b!1628590 (=> (not res!728269) (not e!1044486))))

(assert (=> b!1628590 (= res!728269 call!105464)))

(declare-fun e!1044483 () Bool)

(assert (=> b!1628590 (= e!1044483 e!1044486)))

(declare-fun c!265153 () Bool)

(declare-fun bm!105459 () Bool)

(assert (=> bm!105459 (= call!105463 (validRegex!1780 (ite c!265153 (reg!4802 (regex!3145 (rule!4971 (h!23257 tokens!457)))) (ite c!265154 (regTwo!9459 (regex!3145 (rule!4971 (h!23257 tokens!457)))) (regOne!9458 (regex!3145 (rule!4971 (h!23257 tokens!457))))))))))

(declare-fun b!1628591 () Bool)

(assert (=> b!1628591 (= e!1044481 e!1044483)))

(assert (=> b!1628591 (= c!265154 ((_ is Union!4473) (regex!3145 (rule!4971 (h!23257 tokens!457)))))))

(declare-fun b!1628592 () Bool)

(declare-fun e!1044484 () Bool)

(assert (=> b!1628592 (= e!1044484 e!1044481)))

(assert (=> b!1628592 (= c!265153 ((_ is Star!4473) (regex!3145 (rule!4971 (h!23257 tokens!457)))))))

(declare-fun b!1628593 () Bool)

(declare-fun res!728267 () Bool)

(assert (=> b!1628593 (=> res!728267 e!1044482)))

(assert (=> b!1628593 (= res!728267 (not ((_ is Concat!7709) (regex!3145 (rule!4971 (h!23257 tokens!457))))))))

(assert (=> b!1628593 (= e!1044483 e!1044482)))

(declare-fun d!490563 () Bool)

(declare-fun res!728271 () Bool)

(assert (=> d!490563 (=> res!728271 e!1044484)))

(assert (=> d!490563 (= res!728271 ((_ is ElementMatch!4473) (regex!3145 (rule!4971 (h!23257 tokens!457)))))))

(assert (=> d!490563 (= (validRegex!1780 (regex!3145 (rule!4971 (h!23257 tokens!457)))) e!1044484)))

(declare-fun b!1628594 () Bool)

(assert (=> b!1628594 (= e!1044485 call!105463)))

(declare-fun b!1628595 () Bool)

(assert (=> b!1628595 (= e!1044486 call!105462)))

(assert (= (and d!490563 (not res!728271)) b!1628592))

(assert (= (and b!1628592 c!265153) b!1628588))

(assert (= (and b!1628592 (not c!265153)) b!1628591))

(assert (= (and b!1628588 res!728270) b!1628594))

(assert (= (and b!1628591 c!265154) b!1628590))

(assert (= (and b!1628591 (not c!265154)) b!1628593))

(assert (= (and b!1628590 res!728269) b!1628595))

(assert (= (and b!1628593 (not res!728267)) b!1628589))

(assert (= (and b!1628589 res!728268) b!1628587))

(assert (= (or b!1628595 b!1628589) bm!105457))

(assert (= (or b!1628590 b!1628587) bm!105458))

(assert (= (or b!1628594 bm!105457) bm!105459))

(declare-fun m!1958891 () Bool)

(assert (=> b!1628588 m!1958891))

(declare-fun m!1958893 () Bool)

(assert (=> bm!105458 m!1958893))

(declare-fun m!1958895 () Bool)

(assert (=> bm!105459 m!1958895))

(assert (=> d!489697 d!490563))

(assert (=> d!489699 d!489697))

(declare-fun d!490565 () Bool)

(assert (=> d!490565 (ruleValid!739 thiss!17113 (rule!4971 (h!23257 tokens!457)))))

(assert (=> d!490565 true))

(declare-fun _$65!903 () Unit!28923)

(assert (=> d!490565 (= (choose!9780 thiss!17113 (rule!4971 (h!23257 tokens!457)) rules!1846) _$65!903)))

(declare-fun bs!394984 () Bool)

(assert (= bs!394984 d!490565))

(assert (=> bs!394984 m!1954959))

(assert (=> d!489699 d!490565))

(assert (=> d!489699 d!489607))

(declare-fun b!1628596 () Bool)

(declare-fun e!1044489 () Bool)

(declare-fun e!1044487 () Bool)

(assert (=> b!1628596 (= e!1044489 e!1044487)))

(declare-fun c!265157 () Bool)

(assert (=> b!1628596 (= c!265157 ((_ is EmptyLang!4473) (regex!3145 (rule!4971 (_1!10119 (get!5150 lt!588386))))))))

(declare-fun b!1628597 () Bool)

(declare-fun lt!589306 () Bool)

(assert (=> b!1628597 (= e!1044487 (not lt!589306))))

(declare-fun b!1628598 () Bool)

(declare-fun res!728276 () Bool)

(declare-fun e!1044491 () Bool)

(assert (=> b!1628598 (=> (not res!728276) (not e!1044491))))

(declare-fun call!105465 () Bool)

(assert (=> b!1628598 (= res!728276 (not call!105465))))

(declare-fun bm!105460 () Bool)

(assert (=> bm!105460 (= call!105465 (isEmpty!10881 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588386))))))))

(declare-fun b!1628599 () Bool)

(declare-fun res!728277 () Bool)

(declare-fun e!1044490 () Bool)

(assert (=> b!1628599 (=> res!728277 e!1044490)))

(assert (=> b!1628599 (= res!728277 (not (isEmpty!10881 (tail!2367 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588386))))))))))

(declare-fun b!1628600 () Bool)

(declare-fun e!1044488 () Bool)

(assert (=> b!1628600 (= e!1044488 (matchR!1972 (derivativeStep!1084 (regex!3145 (rule!4971 (_1!10119 (get!5150 lt!588386)))) (head!3449 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588386)))))) (tail!2367 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588386)))))))))

(declare-fun b!1628601 () Bool)

(declare-fun res!728274 () Bool)

(assert (=> b!1628601 (=> (not res!728274) (not e!1044491))))

(assert (=> b!1628601 (= res!728274 (isEmpty!10881 (tail!2367 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588386)))))))))

(declare-fun b!1628602 () Bool)

(declare-fun res!728273 () Bool)

(declare-fun e!1044493 () Bool)

(assert (=> b!1628602 (=> res!728273 e!1044493)))

(assert (=> b!1628602 (= res!728273 e!1044491)))

(declare-fun res!728272 () Bool)

(assert (=> b!1628602 (=> (not res!728272) (not e!1044491))))

(assert (=> b!1628602 (= res!728272 lt!589306)))

(declare-fun b!1628603 () Bool)

(assert (=> b!1628603 (= e!1044489 (= lt!589306 call!105465))))

(declare-fun b!1628604 () Bool)

(assert (=> b!1628604 (= e!1044491 (= (head!3449 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588386))))) (c!264624 (regex!3145 (rule!4971 (_1!10119 (get!5150 lt!588386)))))))))

(declare-fun b!1628606 () Bool)

(assert (=> b!1628606 (= e!1044490 (not (= (head!3449 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588386))))) (c!264624 (regex!3145 (rule!4971 (_1!10119 (get!5150 lt!588386))))))))))

(declare-fun b!1628607 () Bool)

(assert (=> b!1628607 (= e!1044488 (nullable!1319 (regex!3145 (rule!4971 (_1!10119 (get!5150 lt!588386))))))))

(declare-fun b!1628608 () Bool)

(declare-fun e!1044492 () Bool)

(assert (=> b!1628608 (= e!1044493 e!1044492)))

(declare-fun res!728278 () Bool)

(assert (=> b!1628608 (=> (not res!728278) (not e!1044492))))

(assert (=> b!1628608 (= res!728278 (not lt!589306))))

(declare-fun b!1628609 () Bool)

(declare-fun res!728275 () Bool)

(assert (=> b!1628609 (=> res!728275 e!1044493)))

(assert (=> b!1628609 (= res!728275 (not ((_ is ElementMatch!4473) (regex!3145 (rule!4971 (_1!10119 (get!5150 lt!588386)))))))))

(assert (=> b!1628609 (= e!1044487 e!1044493)))

(declare-fun d!490567 () Bool)

(assert (=> d!490567 e!1044489))

(declare-fun c!265155 () Bool)

(assert (=> d!490567 (= c!265155 ((_ is EmptyExpr!4473) (regex!3145 (rule!4971 (_1!10119 (get!5150 lt!588386))))))))

(assert (=> d!490567 (= lt!589306 e!1044488)))

(declare-fun c!265156 () Bool)

(assert (=> d!490567 (= c!265156 (isEmpty!10881 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588386))))))))

(assert (=> d!490567 (validRegex!1780 (regex!3145 (rule!4971 (_1!10119 (get!5150 lt!588386)))))))

(assert (=> d!490567 (= (matchR!1972 (regex!3145 (rule!4971 (_1!10119 (get!5150 lt!588386)))) (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588386))))) lt!589306)))

(declare-fun b!1628605 () Bool)

(assert (=> b!1628605 (= e!1044492 e!1044490)))

(declare-fun res!728279 () Bool)

(assert (=> b!1628605 (=> res!728279 e!1044490)))

(assert (=> b!1628605 (= res!728279 call!105465)))

(assert (= (and d!490567 c!265156) b!1628607))

(assert (= (and d!490567 (not c!265156)) b!1628600))

(assert (= (and d!490567 c!265155) b!1628603))

(assert (= (and d!490567 (not c!265155)) b!1628596))

(assert (= (and b!1628596 c!265157) b!1628597))

(assert (= (and b!1628596 (not c!265157)) b!1628609))

(assert (= (and b!1628609 (not res!728275)) b!1628602))

(assert (= (and b!1628602 res!728272) b!1628598))

(assert (= (and b!1628598 res!728276) b!1628601))

(assert (= (and b!1628601 res!728274) b!1628604))

(assert (= (and b!1628602 (not res!728273)) b!1628608))

(assert (= (and b!1628608 res!728278) b!1628605))

(assert (= (and b!1628605 (not res!728279)) b!1628599))

(assert (= (and b!1628599 (not res!728277)) b!1628606))

(assert (= (or b!1628603 b!1628598 b!1628605) bm!105460))

(declare-fun m!1958897 () Bool)

(assert (=> b!1628607 m!1958897))

(assert (=> b!1628606 m!1955789))

(declare-fun m!1958899 () Bool)

(assert (=> b!1628606 m!1958899))

(assert (=> b!1628599 m!1955789))

(declare-fun m!1958901 () Bool)

(assert (=> b!1628599 m!1958901))

(assert (=> b!1628599 m!1958901))

(declare-fun m!1958903 () Bool)

(assert (=> b!1628599 m!1958903))

(assert (=> b!1628601 m!1955789))

(assert (=> b!1628601 m!1958901))

(assert (=> b!1628601 m!1958901))

(assert (=> b!1628601 m!1958903))

(assert (=> b!1628600 m!1955789))

(assert (=> b!1628600 m!1958899))

(assert (=> b!1628600 m!1958899))

(declare-fun m!1958905 () Bool)

(assert (=> b!1628600 m!1958905))

(assert (=> b!1628600 m!1955789))

(assert (=> b!1628600 m!1958901))

(assert (=> b!1628600 m!1958905))

(assert (=> b!1628600 m!1958901))

(declare-fun m!1958907 () Bool)

(assert (=> b!1628600 m!1958907))

(assert (=> bm!105460 m!1955789))

(declare-fun m!1958909 () Bool)

(assert (=> bm!105460 m!1958909))

(assert (=> b!1628604 m!1955789))

(assert (=> b!1628604 m!1958899))

(assert (=> d!490567 m!1955789))

(assert (=> d!490567 m!1958909))

(declare-fun m!1958911 () Bool)

(assert (=> d!490567 m!1958911))

(assert (=> b!1626733 d!490567))

(assert (=> b!1626733 d!489851))

(assert (=> b!1626733 d!489847))

(assert (=> b!1626733 d!489849))

(declare-fun d!490569 () Bool)

(declare-fun c!265161 () Bool)

(assert (=> d!490569 (= c!265161 (isEmpty!10881 (tail!2367 (++!4751 lt!587996 lt!588000))))))

(declare-fun e!1044497 () Bool)

(assert (=> d!490569 (= (prefixMatch!408 (derivativeStep!1084 lt!587975 (head!3449 (++!4751 lt!587996 lt!588000))) (tail!2367 (++!4751 lt!587996 lt!588000))) e!1044497)))

(declare-fun b!1628616 () Bool)

(assert (=> b!1628616 (= e!1044497 (not (lostCause!440 (derivativeStep!1084 lt!587975 (head!3449 (++!4751 lt!587996 lt!588000))))))))

(declare-fun b!1628617 () Bool)

(assert (=> b!1628617 (= e!1044497 (prefixMatch!408 (derivativeStep!1084 (derivativeStep!1084 lt!587975 (head!3449 (++!4751 lt!587996 lt!588000))) (head!3449 (tail!2367 (++!4751 lt!587996 lt!588000)))) (tail!2367 (tail!2367 (++!4751 lt!587996 lt!588000)))))))

(assert (= (and d!490569 c!265161) b!1628616))

(assert (= (and d!490569 (not c!265161)) b!1628617))

(assert (=> d!490569 m!1955939))

(declare-fun m!1958919 () Bool)

(assert (=> d!490569 m!1958919))

(assert (=> b!1628616 m!1955937))

(declare-fun m!1958921 () Bool)

(assert (=> b!1628616 m!1958921))

(assert (=> b!1628617 m!1955939))

(declare-fun m!1958923 () Bool)

(assert (=> b!1628617 m!1958923))

(assert (=> b!1628617 m!1955937))

(assert (=> b!1628617 m!1958923))

(declare-fun m!1958925 () Bool)

(assert (=> b!1628617 m!1958925))

(assert (=> b!1628617 m!1955939))

(declare-fun m!1958927 () Bool)

(assert (=> b!1628617 m!1958927))

(assert (=> b!1628617 m!1958925))

(assert (=> b!1628617 m!1958927))

(declare-fun m!1958929 () Bool)

(assert (=> b!1628617 m!1958929))

(assert (=> b!1626824 d!490569))

(declare-fun c!265164 () Bool)

(declare-fun c!265166 () Bool)

(declare-fun bm!105461 () Bool)

(declare-fun call!105466 () Regex!4473)

(assert (=> bm!105461 (= call!105466 (derivativeStep!1084 (ite c!265164 (regTwo!9459 lt!587975) (ite c!265166 (regTwo!9458 lt!587975) (regOne!9458 lt!587975))) (head!3449 (++!4751 lt!587996 lt!588000))))))

(declare-fun b!1628620 () Bool)

(declare-fun e!1044500 () Regex!4473)

(assert (=> b!1628620 (= e!1044500 EmptyLang!4473)))

(declare-fun d!490573 () Bool)

(declare-fun lt!589307 () Regex!4473)

(assert (=> d!490573 (validRegex!1780 lt!589307)))

(assert (=> d!490573 (= lt!589307 e!1044500)))

(declare-fun c!265163 () Bool)

(assert (=> d!490573 (= c!265163 (or ((_ is EmptyExpr!4473) lt!587975) ((_ is EmptyLang!4473) lt!587975)))))

(assert (=> d!490573 (validRegex!1780 lt!587975)))

(assert (=> d!490573 (= (derivativeStep!1084 lt!587975 (head!3449 (++!4751 lt!587996 lt!588000))) lt!589307)))

(declare-fun bm!105462 () Bool)

(declare-fun call!105469 () Regex!4473)

(declare-fun call!105468 () Regex!4473)

(assert (=> bm!105462 (= call!105469 call!105468)))

(declare-fun b!1628621 () Bool)

(declare-fun call!105467 () Regex!4473)

(declare-fun e!1044501 () Regex!4473)

(assert (=> b!1628621 (= e!1044501 (Union!4473 (Concat!7709 call!105469 (regTwo!9458 lt!587975)) call!105467))))

(declare-fun b!1628622 () Bool)

(assert (=> b!1628622 (= c!265164 ((_ is Union!4473) lt!587975))))

(declare-fun e!1044503 () Regex!4473)

(declare-fun e!1044499 () Regex!4473)

(assert (=> b!1628622 (= e!1044503 e!1044499)))

(declare-fun b!1628623 () Bool)

(assert (=> b!1628623 (= e!1044501 (Union!4473 (Concat!7709 call!105467 (regTwo!9458 lt!587975)) EmptyLang!4473))))

(declare-fun b!1628624 () Bool)

(assert (=> b!1628624 (= e!1044499 (Union!4473 call!105468 call!105466))))

(declare-fun b!1628625 () Bool)

(declare-fun e!1044502 () Regex!4473)

(assert (=> b!1628625 (= e!1044499 e!1044502)))

(declare-fun c!265165 () Bool)

(assert (=> b!1628625 (= c!265165 ((_ is Star!4473) lt!587975))))

(declare-fun b!1628626 () Bool)

(assert (=> b!1628626 (= e!1044503 (ite (= (head!3449 (++!4751 lt!587996 lt!588000)) (c!264624 lt!587975)) EmptyExpr!4473 EmptyLang!4473))))

(declare-fun bm!105463 () Bool)

(assert (=> bm!105463 (= call!105468 (derivativeStep!1084 (ite c!265164 (regOne!9459 lt!587975) (ite c!265165 (reg!4802 lt!587975) (regOne!9458 lt!587975))) (head!3449 (++!4751 lt!587996 lt!588000))))))

(declare-fun b!1628627 () Bool)

(assert (=> b!1628627 (= e!1044502 (Concat!7709 call!105469 lt!587975))))

(declare-fun b!1628628 () Bool)

(assert (=> b!1628628 (= c!265166 (nullable!1319 (regOne!9458 lt!587975)))))

(assert (=> b!1628628 (= e!1044502 e!1044501)))

(declare-fun bm!105464 () Bool)

(assert (=> bm!105464 (= call!105467 call!105466)))

(declare-fun b!1628629 () Bool)

(assert (=> b!1628629 (= e!1044500 e!1044503)))

(declare-fun c!265167 () Bool)

(assert (=> b!1628629 (= c!265167 ((_ is ElementMatch!4473) lt!587975))))

(assert (= (and d!490573 c!265163) b!1628620))

(assert (= (and d!490573 (not c!265163)) b!1628629))

(assert (= (and b!1628629 c!265167) b!1628626))

(assert (= (and b!1628629 (not c!265167)) b!1628622))

(assert (= (and b!1628622 c!265164) b!1628624))

(assert (= (and b!1628622 (not c!265164)) b!1628625))

(assert (= (and b!1628625 c!265165) b!1628627))

(assert (= (and b!1628625 (not c!265165)) b!1628628))

(assert (= (and b!1628628 c!265166) b!1628621))

(assert (= (and b!1628628 (not c!265166)) b!1628623))

(assert (= (or b!1628621 b!1628623) bm!105464))

(assert (= (or b!1628627 b!1628621) bm!105462))

(assert (= (or b!1628624 bm!105462) bm!105463))

(assert (= (or b!1628624 bm!105464) bm!105461))

(assert (=> bm!105461 m!1955935))

(declare-fun m!1958941 () Bool)

(assert (=> bm!105461 m!1958941))

(declare-fun m!1958943 () Bool)

(assert (=> d!490573 m!1958943))

(assert (=> d!490573 m!1956141))

(assert (=> bm!105463 m!1955935))

(declare-fun m!1958945 () Bool)

(assert (=> bm!105463 m!1958945))

(assert (=> b!1628628 m!1958249))

(assert (=> b!1626824 d!490573))

(declare-fun d!490579 () Bool)

(assert (=> d!490579 (= (head!3449 (++!4751 lt!587996 lt!588000)) (h!23255 (++!4751 lt!587996 lt!588000)))))

(assert (=> b!1626824 d!490579))

(declare-fun d!490581 () Bool)

(assert (=> d!490581 (= (tail!2367 (++!4751 lt!587996 lt!588000)) (t!149057 (++!4751 lt!587996 lt!588000)))))

(assert (=> b!1626824 d!490581))

(assert (=> b!1626787 d!489915))

(declare-fun d!490583 () Bool)

(declare-fun lt!589308 () Int)

(assert (=> d!490583 (>= lt!589308 0)))

(declare-fun e!1044504 () Int)

(assert (=> d!490583 (= lt!589308 e!1044504)))

(declare-fun c!265168 () Bool)

(assert (=> d!490583 (= c!265168 ((_ is Nil!17854) lt!588451))))

(assert (=> d!490583 (= (size!14282 lt!588451) lt!589308)))

(declare-fun b!1628630 () Bool)

(assert (=> b!1628630 (= e!1044504 0)))

(declare-fun b!1628631 () Bool)

(assert (=> b!1628631 (= e!1044504 (+ 1 (size!14282 (t!149057 lt!588451))))))

(assert (= (and d!490583 c!265168) b!1628630))

(assert (= (and d!490583 (not c!265168)) b!1628631))

(declare-fun m!1958947 () Bool)

(assert (=> b!1628631 m!1958947))

(assert (=> b!1626827 d!490583))

(assert (=> b!1626827 d!489875))

(declare-fun d!490585 () Bool)

(declare-fun lt!589309 () Int)

(assert (=> d!490585 (>= lt!589309 0)))

(declare-fun e!1044505 () Int)

(assert (=> d!490585 (= lt!589309 e!1044505)))

(declare-fun c!265169 () Bool)

(assert (=> d!490585 (= c!265169 ((_ is Nil!17854) lt!588000))))

(assert (=> d!490585 (= (size!14282 lt!588000) lt!589309)))

(declare-fun b!1628632 () Bool)

(assert (=> b!1628632 (= e!1044505 0)))

(declare-fun b!1628633 () Bool)

(assert (=> b!1628633 (= e!1044505 (+ 1 (size!14282 (t!149057 lt!588000))))))

(assert (= (and d!490585 c!265169) b!1628632))

(assert (= (and d!490585 (not c!265169)) b!1628633))

(declare-fun m!1958949 () Bool)

(assert (=> b!1628633 m!1958949))

(assert (=> b!1626827 d!490585))

(declare-fun d!490587 () Bool)

(assert (=> d!490587 (= (isEmpty!10890 lt!588386) (not ((_ is Some!3315) lt!588386)))))

(assert (=> d!489687 d!490587))

(declare-fun b!1628634 () Bool)

(declare-fun e!1044506 () Bool)

(declare-fun e!1044508 () Bool)

(assert (=> b!1628634 (= e!1044506 e!1044508)))

(declare-fun res!728280 () Bool)

(assert (=> b!1628634 (=> (not res!728280) (not e!1044508))))

(assert (=> b!1628634 (= res!728280 (not ((_ is Nil!17854) (originalCharacters!3959 (h!23257 tokens!457)))))))

(declare-fun b!1628636 () Bool)

(assert (=> b!1628636 (= e!1044508 (isPrefix!1405 (tail!2367 (originalCharacters!3959 (h!23257 tokens!457))) (tail!2367 (originalCharacters!3959 (h!23257 tokens!457)))))))

(declare-fun b!1628635 () Bool)

(declare-fun res!728283 () Bool)

(assert (=> b!1628635 (=> (not res!728283) (not e!1044508))))

(assert (=> b!1628635 (= res!728283 (= (head!3449 (originalCharacters!3959 (h!23257 tokens!457))) (head!3449 (originalCharacters!3959 (h!23257 tokens!457)))))))

(declare-fun d!490589 () Bool)

(declare-fun e!1044507 () Bool)

(assert (=> d!490589 e!1044507))

(declare-fun res!728281 () Bool)

(assert (=> d!490589 (=> res!728281 e!1044507)))

(declare-fun lt!589310 () Bool)

(assert (=> d!490589 (= res!728281 (not lt!589310))))

(assert (=> d!490589 (= lt!589310 e!1044506)))

(declare-fun res!728282 () Bool)

(assert (=> d!490589 (=> res!728282 e!1044506)))

(assert (=> d!490589 (= res!728282 ((_ is Nil!17854) (originalCharacters!3959 (h!23257 tokens!457))))))

(assert (=> d!490589 (= (isPrefix!1405 (originalCharacters!3959 (h!23257 tokens!457)) (originalCharacters!3959 (h!23257 tokens!457))) lt!589310)))

(declare-fun b!1628637 () Bool)

(assert (=> b!1628637 (= e!1044507 (>= (size!14282 (originalCharacters!3959 (h!23257 tokens!457))) (size!14282 (originalCharacters!3959 (h!23257 tokens!457)))))))

(assert (= (and d!490589 (not res!728282)) b!1628634))

(assert (= (and b!1628634 res!728280) b!1628635))

(assert (= (and b!1628635 res!728283) b!1628636))

(assert (= (and d!490589 (not res!728281)) b!1628637))

(declare-fun m!1958953 () Bool)

(assert (=> b!1628636 m!1958953))

(assert (=> b!1628636 m!1958953))

(assert (=> b!1628636 m!1958953))

(assert (=> b!1628636 m!1958953))

(declare-fun m!1958955 () Bool)

(assert (=> b!1628636 m!1958955))

(declare-fun m!1958957 () Bool)

(assert (=> b!1628635 m!1958957))

(assert (=> b!1628635 m!1958957))

(assert (=> b!1628637 m!1955343))

(assert (=> b!1628637 m!1955343))

(assert (=> d!489687 d!490589))

(declare-fun d!490593 () Bool)

(assert (=> d!490593 (isPrefix!1405 (originalCharacters!3959 (h!23257 tokens!457)) (originalCharacters!3959 (h!23257 tokens!457)))))

(declare-fun lt!589311 () Unit!28923)

(assert (=> d!490593 (= lt!589311 (choose!9788 (originalCharacters!3959 (h!23257 tokens!457)) (originalCharacters!3959 (h!23257 tokens!457))))))

(assert (=> d!490593 (= (lemmaIsPrefixRefl!962 (originalCharacters!3959 (h!23257 tokens!457)) (originalCharacters!3959 (h!23257 tokens!457))) lt!589311)))

(declare-fun bs!394987 () Bool)

(assert (= bs!394987 d!490593))

(assert (=> bs!394987 m!1955797))

(declare-fun m!1958959 () Bool)

(assert (=> bs!394987 m!1958959))

(assert (=> d!489687 d!490593))

(assert (=> d!489687 d!490005))

(assert (=> b!1626923 d!490003))

(assert (=> b!1626966 d!490043))

(declare-fun d!490595 () Bool)

(declare-fun charsToInt!0 (List!17923) (_ BitVec 32))

(assert (=> d!490595 (= (inv!16 (value!99305 (h!23257 tokens!457))) (= (charsToInt!0 (text!23092 (value!99305 (h!23257 tokens!457)))) (value!99296 (value!99305 (h!23257 tokens!457)))))))

(declare-fun bs!394988 () Bool)

(assert (= bs!394988 d!490595))

(declare-fun m!1958967 () Bool)

(assert (=> bs!394988 m!1958967))

(assert (=> b!1626822 d!490595))

(declare-fun d!490599 () Bool)

(assert (=> d!490599 (= (isEmpty!10890 lt!588346) (not ((_ is Some!3315) lt!588346)))))

(assert (=> d!489657 d!490599))

(declare-fun b!1628647 () Bool)

(declare-fun e!1044516 () Bool)

(declare-fun e!1044518 () Bool)

(assert (=> b!1628647 (= e!1044516 e!1044518)))

(declare-fun res!728289 () Bool)

(assert (=> b!1628647 (=> (not res!728289) (not e!1044518))))

(assert (=> b!1628647 (= res!728289 (not ((_ is Nil!17854) lt!587986)))))

(declare-fun b!1628649 () Bool)

(assert (=> b!1628649 (= e!1044518 (isPrefix!1405 (tail!2367 lt!587986) (tail!2367 lt!587986)))))

(declare-fun b!1628648 () Bool)

(declare-fun res!728292 () Bool)

(assert (=> b!1628648 (=> (not res!728292) (not e!1044518))))

(assert (=> b!1628648 (= res!728292 (= (head!3449 lt!587986) (head!3449 lt!587986)))))

(declare-fun d!490601 () Bool)

(declare-fun e!1044517 () Bool)

(assert (=> d!490601 e!1044517))

(declare-fun res!728290 () Bool)

(assert (=> d!490601 (=> res!728290 e!1044517)))

(declare-fun lt!589312 () Bool)

(assert (=> d!490601 (= res!728290 (not lt!589312))))

(assert (=> d!490601 (= lt!589312 e!1044516)))

(declare-fun res!728291 () Bool)

(assert (=> d!490601 (=> res!728291 e!1044516)))

(assert (=> d!490601 (= res!728291 ((_ is Nil!17854) lt!587986))))

(assert (=> d!490601 (= (isPrefix!1405 lt!587986 lt!587986) lt!589312)))

(declare-fun b!1628650 () Bool)

(assert (=> b!1628650 (= e!1044517 (>= (size!14282 lt!587986) (size!14282 lt!587986)))))

(assert (= (and d!490601 (not res!728291)) b!1628647))

(assert (= (and b!1628647 res!728289) b!1628648))

(assert (= (and b!1628648 res!728292) b!1628649))

(assert (= (and d!490601 (not res!728290)) b!1628650))

(declare-fun m!1958969 () Bool)

(assert (=> b!1628649 m!1958969))

(assert (=> b!1628649 m!1958969))

(assert (=> b!1628649 m!1958969))

(assert (=> b!1628649 m!1958969))

(declare-fun m!1958971 () Bool)

(assert (=> b!1628649 m!1958971))

(declare-fun m!1958973 () Bool)

(assert (=> b!1628648 m!1958973))

(assert (=> b!1628648 m!1958973))

(assert (=> b!1628650 m!1955637))

(assert (=> b!1628650 m!1955637))

(assert (=> d!489657 d!490601))

(declare-fun d!490603 () Bool)

(assert (=> d!490603 (isPrefix!1405 lt!587986 lt!587986)))

(declare-fun lt!589315 () Unit!28923)

(assert (=> d!490603 (= lt!589315 (choose!9788 lt!587986 lt!587986))))

(assert (=> d!490603 (= (lemmaIsPrefixRefl!962 lt!587986 lt!587986) lt!589315)))

(declare-fun bs!394989 () Bool)

(assert (= bs!394989 d!490603))

(assert (=> bs!394989 m!1955649))

(declare-fun m!1958975 () Bool)

(assert (=> bs!394989 m!1958975))

(assert (=> d!489657 d!490603))

(assert (=> d!489657 d!490005))

(declare-fun d!490605 () Bool)

(declare-fun charsToBigInt!0 (List!17923 Int) Int)

(assert (=> d!490605 (= (inv!15 (value!99305 (h!23257 tokens!457))) (= (charsToBigInt!0 (text!23094 (value!99305 (h!23257 tokens!457))) 0) (value!99300 (value!99305 (h!23257 tokens!457)))))))

(declare-fun bs!394990 () Bool)

(assert (= bs!394990 d!490605))

(declare-fun m!1958987 () Bool)

(assert (=> bs!394990 m!1958987))

(assert (=> b!1626818 d!490605))

(declare-fun d!490611 () Bool)

(assert (=> d!490611 (= (isDefined!2683 (maxPrefix!1338 thiss!17113 rules!1846 (originalCharacters!3959 (h!23257 (t!149059 tokens!457))))) (not (isEmpty!10890 (maxPrefix!1338 thiss!17113 rules!1846 (originalCharacters!3959 (h!23257 (t!149059 tokens!457)))))))))

(declare-fun bs!394991 () Bool)

(assert (= bs!394991 d!490611))

(assert (=> bs!394991 m!1955237))

(declare-fun m!1958989 () Bool)

(assert (=> bs!394991 m!1958989))

(assert (=> b!1626499 d!490611))

(declare-fun b!1628656 () Bool)

(declare-fun e!1044525 () Bool)

(declare-fun e!1044523 () Bool)

(assert (=> b!1628656 (= e!1044525 e!1044523)))

(declare-fun c!265175 () Bool)

(assert (=> b!1628656 (= c!265175 ((_ is EmptyLang!4473) (regex!3145 (rule!4971 (h!23257 (t!149059 tokens!457))))))))

(declare-fun b!1628657 () Bool)

(declare-fun lt!589317 () Bool)

(assert (=> b!1628657 (= e!1044523 (not lt!589317))))

(declare-fun b!1628658 () Bool)

(declare-fun res!728300 () Bool)

(declare-fun e!1044527 () Bool)

(assert (=> b!1628658 (=> (not res!728300) (not e!1044527))))

(declare-fun call!105473 () Bool)

(assert (=> b!1628658 (= res!728300 (not call!105473))))

(declare-fun bm!105468 () Bool)

(assert (=> bm!105468 (= call!105473 (isEmpty!10881 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457))))))))

(declare-fun b!1628659 () Bool)

(declare-fun res!728301 () Bool)

(declare-fun e!1044526 () Bool)

(assert (=> b!1628659 (=> res!728301 e!1044526)))

(assert (=> b!1628659 (= res!728301 (not (isEmpty!10881 (tail!2367 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457))))))))))

(declare-fun b!1628660 () Bool)

(declare-fun e!1044524 () Bool)

(assert (=> b!1628660 (= e!1044524 (matchR!1972 (derivativeStep!1084 (regex!3145 (rule!4971 (h!23257 (t!149059 tokens!457)))) (head!3449 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457)))))) (tail!2367 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457)))))))))

(declare-fun b!1628661 () Bool)

(declare-fun res!728298 () Bool)

(assert (=> b!1628661 (=> (not res!728298) (not e!1044527))))

(assert (=> b!1628661 (= res!728298 (isEmpty!10881 (tail!2367 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457)))))))))

(declare-fun b!1628662 () Bool)

(declare-fun res!728297 () Bool)

(declare-fun e!1044529 () Bool)

(assert (=> b!1628662 (=> res!728297 e!1044529)))

(assert (=> b!1628662 (= res!728297 e!1044527)))

(declare-fun res!728296 () Bool)

(assert (=> b!1628662 (=> (not res!728296) (not e!1044527))))

(assert (=> b!1628662 (= res!728296 lt!589317)))

(declare-fun b!1628663 () Bool)

(assert (=> b!1628663 (= e!1044525 (= lt!589317 call!105473))))

(declare-fun b!1628664 () Bool)

(assert (=> b!1628664 (= e!1044527 (= (head!3449 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457))))) (c!264624 (regex!3145 (rule!4971 (h!23257 (t!149059 tokens!457)))))))))

(declare-fun b!1628666 () Bool)

(assert (=> b!1628666 (= e!1044526 (not (= (head!3449 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457))))) (c!264624 (regex!3145 (rule!4971 (h!23257 (t!149059 tokens!457))))))))))

(declare-fun b!1628667 () Bool)

(assert (=> b!1628667 (= e!1044524 (nullable!1319 (regex!3145 (rule!4971 (h!23257 (t!149059 tokens!457))))))))

(declare-fun b!1628668 () Bool)

(declare-fun e!1044528 () Bool)

(assert (=> b!1628668 (= e!1044529 e!1044528)))

(declare-fun res!728302 () Bool)

(assert (=> b!1628668 (=> (not res!728302) (not e!1044528))))

(assert (=> b!1628668 (= res!728302 (not lt!589317))))

(declare-fun b!1628669 () Bool)

(declare-fun res!728299 () Bool)

(assert (=> b!1628669 (=> res!728299 e!1044529)))

(assert (=> b!1628669 (= res!728299 (not ((_ is ElementMatch!4473) (regex!3145 (rule!4971 (h!23257 (t!149059 tokens!457)))))))))

(assert (=> b!1628669 (= e!1044523 e!1044529)))

(declare-fun d!490613 () Bool)

(assert (=> d!490613 e!1044525))

(declare-fun c!265173 () Bool)

(assert (=> d!490613 (= c!265173 ((_ is EmptyExpr!4473) (regex!3145 (rule!4971 (h!23257 (t!149059 tokens!457))))))))

(assert (=> d!490613 (= lt!589317 e!1044524)))

(declare-fun c!265174 () Bool)

(assert (=> d!490613 (= c!265174 (isEmpty!10881 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457))))))))

(assert (=> d!490613 (validRegex!1780 (regex!3145 (rule!4971 (h!23257 (t!149059 tokens!457)))))))

(assert (=> d!490613 (= (matchR!1972 (regex!3145 (rule!4971 (h!23257 (t!149059 tokens!457)))) (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457))))) lt!589317)))

(declare-fun b!1628665 () Bool)

(assert (=> b!1628665 (= e!1044528 e!1044526)))

(declare-fun res!728303 () Bool)

(assert (=> b!1628665 (=> res!728303 e!1044526)))

(assert (=> b!1628665 (= res!728303 call!105473)))

(assert (= (and d!490613 c!265174) b!1628667))

(assert (= (and d!490613 (not c!265174)) b!1628660))

(assert (= (and d!490613 c!265173) b!1628663))

(assert (= (and d!490613 (not c!265173)) b!1628656))

(assert (= (and b!1628656 c!265175) b!1628657))

(assert (= (and b!1628656 (not c!265175)) b!1628669))

(assert (= (and b!1628669 (not res!728299)) b!1628662))

(assert (= (and b!1628662 res!728296) b!1628658))

(assert (= (and b!1628658 res!728300) b!1628661))

(assert (= (and b!1628661 res!728298) b!1628664))

(assert (= (and b!1628662 (not res!728297)) b!1628668))

(assert (= (and b!1628668 res!728302) b!1628665))

(assert (= (and b!1628665 (not res!728303)) b!1628659))

(assert (= (and b!1628659 (not res!728301)) b!1628666))

(assert (= (or b!1628663 b!1628658 b!1628665) bm!105468))

(declare-fun m!1958991 () Bool)

(assert (=> b!1628667 m!1958991))

(assert (=> b!1628666 m!1955231))

(declare-fun m!1958993 () Bool)

(assert (=> b!1628666 m!1958993))

(assert (=> b!1628659 m!1955231))

(declare-fun m!1958995 () Bool)

(assert (=> b!1628659 m!1958995))

(assert (=> b!1628659 m!1958995))

(declare-fun m!1958997 () Bool)

(assert (=> b!1628659 m!1958997))

(assert (=> b!1628661 m!1955231))

(assert (=> b!1628661 m!1958995))

(assert (=> b!1628661 m!1958995))

(assert (=> b!1628661 m!1958997))

(assert (=> b!1628660 m!1955231))

(assert (=> b!1628660 m!1958993))

(assert (=> b!1628660 m!1958993))

(declare-fun m!1958999 () Bool)

(assert (=> b!1628660 m!1958999))

(assert (=> b!1628660 m!1955231))

(assert (=> b!1628660 m!1958995))

(assert (=> b!1628660 m!1958999))

(assert (=> b!1628660 m!1958995))

(declare-fun m!1959001 () Bool)

(assert (=> b!1628660 m!1959001))

(assert (=> bm!105468 m!1955231))

(declare-fun m!1959003 () Bool)

(assert (=> bm!105468 m!1959003))

(assert (=> b!1628664 m!1955231))

(assert (=> b!1628664 m!1958993))

(assert (=> d!490613 m!1955231))

(assert (=> d!490613 m!1959003))

(declare-fun m!1959005 () Bool)

(assert (=> d!490613 m!1959005))

(assert (=> b!1626499 d!490613))

(declare-fun d!490615 () Bool)

(assert (=> d!490615 (= (list!7012 (_1!10117 lt!588171)) (list!7012 (prepend!673 (seqFromList!2039 (t!149059 (t!149059 (t!149059 tokens!457)))) (h!23257 (t!149059 (t!149059 tokens!457))))))))

(declare-fun lt!589318 () Unit!28923)

(assert (=> d!490615 (= lt!589318 (choose!9782 (h!23257 (t!149059 (t!149059 tokens!457))) (t!149059 (t!149059 (t!149059 tokens!457))) (_1!10117 lt!588171)))))

(assert (=> d!490615 (= (list!7012 (_1!10117 lt!588171)) (list!7012 (seqFromList!2039 ($colon$colon!331 (t!149059 (t!149059 (t!149059 tokens!457))) (h!23257 (t!149059 (t!149059 tokens!457)))))))))

(assert (=> d!490615 (= (seqFromListBHdTlConstructive!222 (h!23257 (t!149059 (t!149059 tokens!457))) (t!149059 (t!149059 (t!149059 tokens!457))) (_1!10117 lt!588171)) lt!589318)))

(declare-fun bs!394992 () Bool)

(assert (= bs!394992 d!490615))

(assert (=> bs!394992 m!1955279))

(assert (=> bs!394992 m!1955269))

(declare-fun m!1959007 () Bool)

(assert (=> bs!394992 m!1959007))

(declare-fun m!1959009 () Bool)

(assert (=> bs!394992 m!1959009))

(assert (=> bs!394992 m!1955235))

(declare-fun m!1959011 () Bool)

(assert (=> bs!394992 m!1959011))

(declare-fun m!1959013 () Bool)

(assert (=> bs!394992 m!1959013))

(assert (=> bs!394992 m!1955269))

(assert (=> bs!394992 m!1955271))

(assert (=> bs!394992 m!1955279))

(assert (=> bs!394992 m!1959011))

(assert (=> bs!394992 m!1959007))

(assert (=> b!1626499 d!490615))

(assert (=> b!1626499 d!489815))

(declare-fun d!490617 () Bool)

(assert (=> d!490617 (= (seqFromList!2039 (t!149059 (t!149059 (t!149059 tokens!457)))) (fromListB!899 (t!149059 (t!149059 (t!149059 tokens!457)))))))

(declare-fun bs!394993 () Bool)

(assert (= bs!394993 d!490617))

(declare-fun m!1959015 () Bool)

(assert (=> bs!394993 m!1959015))

(assert (=> b!1626499 d!490617))

(declare-fun d!490619 () Bool)

(declare-fun lt!589319 () C!9120)

(assert (=> d!490619 (= lt!589319 (apply!4577 (list!7011 (charsOf!1794 (h!23257 (t!149059 (t!149059 tokens!457))))) 0))))

(assert (=> d!490619 (= lt!589319 (apply!4578 (c!264623 (charsOf!1794 (h!23257 (t!149059 (t!149059 tokens!457))))) 0))))

(declare-fun e!1044534 () Bool)

(assert (=> d!490619 e!1044534))

(declare-fun res!728316 () Bool)

(assert (=> d!490619 (=> (not res!728316) (not e!1044534))))

(assert (=> d!490619 (= res!728316 (<= 0 0))))

(assert (=> d!490619 (= (apply!4568 (charsOf!1794 (h!23257 (t!149059 (t!149059 tokens!457)))) 0) lt!589319)))

(declare-fun b!1628682 () Bool)

(assert (=> b!1628682 (= e!1044534 (< 0 (size!14284 (charsOf!1794 (h!23257 (t!149059 (t!149059 tokens!457)))))))))

(assert (= (and d!490619 res!728316) b!1628682))

(assert (=> d!490619 m!1955259))

(declare-fun m!1959017 () Bool)

(assert (=> d!490619 m!1959017))

(assert (=> d!490619 m!1959017))

(declare-fun m!1959019 () Bool)

(assert (=> d!490619 m!1959019))

(declare-fun m!1959021 () Bool)

(assert (=> d!490619 m!1959021))

(assert (=> b!1628682 m!1955259))

(declare-fun m!1959023 () Bool)

(assert (=> b!1628682 m!1959023))

(assert (=> b!1626499 d!490619))

(assert (=> b!1626499 d!489789))

(declare-fun d!490621 () Bool)

(assert (=> d!490621 (= (get!5150 (maxPrefix!1338 thiss!17113 rules!1846 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457)))))) (v!24358 (maxPrefix!1338 thiss!17113 rules!1846 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457)))))))))

(assert (=> b!1626499 d!490621))

(declare-fun d!490623 () Bool)

(assert (=> d!490623 (= (isEmpty!10881 (_2!10119 (get!5150 (maxPrefix!1338 thiss!17113 rules!1846 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457)))))))) ((_ is Nil!17854) (_2!10119 (get!5150 (maxPrefix!1338 thiss!17113 rules!1846 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457)))))))))))

(assert (=> b!1626499 d!490623))

(declare-fun d!490625 () Bool)

(assert (=> d!490625 (= (list!7011 lt!588149) (list!7016 (c!264623 lt!588149)))))

(declare-fun bs!394994 () Bool)

(assert (= bs!394994 d!490625))

(declare-fun m!1959025 () Bool)

(assert (=> bs!394994 m!1959025))

(assert (=> b!1626499 d!490625))

(declare-fun d!490627 () Bool)

(assert (=> d!490627 (= (list!7011 (singletonSeq!1569 (apply!4568 (charsOf!1794 (h!23257 (t!149059 (t!149059 tokens!457)))) 0))) (list!7016 (c!264623 (singletonSeq!1569 (apply!4568 (charsOf!1794 (h!23257 (t!149059 (t!149059 tokens!457)))) 0)))))))

(declare-fun bs!394995 () Bool)

(assert (= bs!394995 d!490627))

(declare-fun m!1959027 () Bool)

(assert (=> bs!394995 m!1959027))

(assert (=> b!1626499 d!490627))

(declare-fun d!490629 () Bool)

(declare-fun lt!589320 () BalanceConc!11820)

(assert (=> d!490629 (= (list!7011 lt!589320) (printList!889 thiss!17113 (list!7012 (seqFromList!2039 (t!149059 (t!149059 tokens!457))))))))

(assert (=> d!490629 (= lt!589320 (printTailRec!827 thiss!17113 (seqFromList!2039 (t!149059 (t!149059 tokens!457))) 0 (BalanceConc!11821 Empty!5938)))))

(assert (=> d!490629 (= (print!1305 thiss!17113 (seqFromList!2039 (t!149059 (t!149059 tokens!457)))) lt!589320)))

(declare-fun bs!394996 () Bool)

(assert (= bs!394996 d!490629))

(declare-fun m!1959029 () Bool)

(assert (=> bs!394996 m!1959029))

(assert (=> bs!394996 m!1955001))

(assert (=> bs!394996 m!1956333))

(assert (=> bs!394996 m!1956333))

(declare-fun m!1959031 () Bool)

(assert (=> bs!394996 m!1959031))

(assert (=> bs!394996 m!1955001))

(declare-fun m!1959033 () Bool)

(assert (=> bs!394996 m!1959033))

(assert (=> b!1626499 d!490629))

(declare-fun d!490631 () Bool)

(declare-fun e!1044535 () Bool)

(assert (=> d!490631 e!1044535))

(declare-fun res!728317 () Bool)

(assert (=> d!490631 (=> (not res!728317) (not e!1044535))))

(declare-fun lt!589321 () BalanceConc!11822)

(assert (=> d!490631 (= res!728317 (= (list!7012 lt!589321) (Cons!17856 (h!23257 (t!149059 tokens!457)) Nil!17856)))))

(assert (=> d!490631 (= lt!589321 (singleton!673 (h!23257 (t!149059 tokens!457))))))

(assert (=> d!490631 (= (singletonSeq!1568 (h!23257 (t!149059 tokens!457))) lt!589321)))

(declare-fun b!1628683 () Bool)

(assert (=> b!1628683 (= e!1044535 (isBalanced!1793 (c!264625 lt!589321)))))

(assert (= (and d!490631 res!728317) b!1628683))

(declare-fun m!1959035 () Bool)

(assert (=> d!490631 m!1959035))

(declare-fun m!1959037 () Bool)

(assert (=> d!490631 m!1959037))

(declare-fun m!1959039 () Bool)

(assert (=> b!1628683 m!1959039))

(assert (=> b!1626499 d!490631))

(declare-fun b!1628690 () Bool)

(declare-fun e!1044539 () Bool)

(declare-fun e!1044540 () Bool)

(assert (=> b!1628690 (= e!1044539 e!1044540)))

(declare-fun res!728326 () Bool)

(assert (=> b!1628690 (=> (not res!728326) (not e!1044540))))

(declare-fun lt!589326 () Option!3316)

(assert (=> b!1628690 (= res!728326 (isDefined!2683 lt!589326))))

(declare-fun b!1628691 () Bool)

(declare-fun res!728328 () Bool)

(assert (=> b!1628691 (=> (not res!728328) (not e!1044540))))

(assert (=> b!1628691 (= res!728328 (= (++!4751 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!589326)))) (_2!10119 (get!5150 lt!589326))) (list!7011 lt!588166)))))

(declare-fun b!1628692 () Bool)

(declare-fun e!1044538 () Option!3316)

(declare-fun lt!589323 () Option!3316)

(declare-fun lt!589322 () Option!3316)

(assert (=> b!1628692 (= e!1044538 (ite (and ((_ is None!3315) lt!589323) ((_ is None!3315) lt!589322)) None!3315 (ite ((_ is None!3315) lt!589322) lt!589323 (ite ((_ is None!3315) lt!589323) lt!589322 (ite (>= (size!14278 (_1!10119 (v!24358 lt!589323))) (size!14278 (_1!10119 (v!24358 lt!589322)))) lt!589323 lt!589322)))))))

(declare-fun call!105474 () Option!3316)

(assert (=> b!1628692 (= lt!589323 call!105474)))

(assert (=> b!1628692 (= lt!589322 (maxPrefix!1338 thiss!17113 (t!149058 rules!1846) (list!7011 lt!588166)))))

(declare-fun d!490633 () Bool)

(assert (=> d!490633 e!1044539))

(declare-fun res!728327 () Bool)

(assert (=> d!490633 (=> res!728327 e!1044539)))

(assert (=> d!490633 (= res!728327 (isEmpty!10890 lt!589326))))

(assert (=> d!490633 (= lt!589326 e!1044538)))

(declare-fun c!265176 () Bool)

(assert (=> d!490633 (= c!265176 (and ((_ is Cons!17855) rules!1846) ((_ is Nil!17855) (t!149058 rules!1846))))))

(declare-fun lt!589324 () Unit!28923)

(declare-fun lt!589325 () Unit!28923)

(assert (=> d!490633 (= lt!589324 lt!589325)))

(assert (=> d!490633 (isPrefix!1405 (list!7011 lt!588166) (list!7011 lt!588166))))

(assert (=> d!490633 (= lt!589325 (lemmaIsPrefixRefl!962 (list!7011 lt!588166) (list!7011 lt!588166)))))

(assert (=> d!490633 (rulesValidInductive!974 thiss!17113 rules!1846)))

(assert (=> d!490633 (= (maxPrefix!1338 thiss!17113 rules!1846 (list!7011 lt!588166)) lt!589326)))

(declare-fun b!1628693 () Bool)

(declare-fun res!728329 () Bool)

(assert (=> b!1628693 (=> (not res!728329) (not e!1044540))))

(assert (=> b!1628693 (= res!728329 (matchR!1972 (regex!3145 (rule!4971 (_1!10119 (get!5150 lt!589326)))) (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!589326))))))))

(declare-fun b!1628694 () Bool)

(declare-fun res!728324 () Bool)

(assert (=> b!1628694 (=> (not res!728324) (not e!1044540))))

(assert (=> b!1628694 (= res!728324 (= (value!99305 (_1!10119 (get!5150 lt!589326))) (apply!4575 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!589326)))) (seqFromList!2040 (originalCharacters!3959 (_1!10119 (get!5150 lt!589326)))))))))

(declare-fun b!1628695 () Bool)

(declare-fun res!728325 () Bool)

(assert (=> b!1628695 (=> (not res!728325) (not e!1044540))))

(assert (=> b!1628695 (= res!728325 (= (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!589326)))) (originalCharacters!3959 (_1!10119 (get!5150 lt!589326)))))))

(declare-fun bm!105469 () Bool)

(assert (=> bm!105469 (= call!105474 (maxPrefixOneRule!777 thiss!17113 (h!23256 rules!1846) (list!7011 lt!588166)))))

(declare-fun b!1628696 () Bool)

(assert (=> b!1628696 (= e!1044540 (contains!3120 rules!1846 (rule!4971 (_1!10119 (get!5150 lt!589326)))))))

(declare-fun b!1628697 () Bool)

(assert (=> b!1628697 (= e!1044538 call!105474)))

(declare-fun b!1628698 () Bool)

(declare-fun res!728330 () Bool)

(assert (=> b!1628698 (=> (not res!728330) (not e!1044540))))

(assert (=> b!1628698 (= res!728330 (< (size!14282 (_2!10119 (get!5150 lt!589326))) (size!14282 (list!7011 lt!588166))))))

(assert (= (and d!490633 c!265176) b!1628697))

(assert (= (and d!490633 (not c!265176)) b!1628692))

(assert (= (or b!1628697 b!1628692) bm!105469))

(assert (= (and d!490633 (not res!728327)) b!1628690))

(assert (= (and b!1628690 res!728326) b!1628695))

(assert (= (and b!1628695 res!728325) b!1628698))

(assert (= (and b!1628698 res!728330) b!1628691))

(assert (= (and b!1628691 res!728328) b!1628694))

(assert (= (and b!1628694 res!728324) b!1628693))

(assert (= (and b!1628693 res!728329) b!1628696))

(assert (=> b!1628692 m!1955251))

(declare-fun m!1959053 () Bool)

(assert (=> b!1628692 m!1959053))

(declare-fun m!1959055 () Bool)

(assert (=> b!1628698 m!1959055))

(declare-fun m!1959057 () Bool)

(assert (=> b!1628698 m!1959057))

(assert (=> b!1628698 m!1955251))

(declare-fun m!1959059 () Bool)

(assert (=> b!1628698 m!1959059))

(assert (=> b!1628693 m!1959055))

(declare-fun m!1959061 () Bool)

(assert (=> b!1628693 m!1959061))

(assert (=> b!1628693 m!1959061))

(declare-fun m!1959063 () Bool)

(assert (=> b!1628693 m!1959063))

(assert (=> b!1628693 m!1959063))

(declare-fun m!1959065 () Bool)

(assert (=> b!1628693 m!1959065))

(assert (=> b!1628696 m!1959055))

(declare-fun m!1959067 () Bool)

(assert (=> b!1628696 m!1959067))

(declare-fun m!1959069 () Bool)

(assert (=> d!490633 m!1959069))

(assert (=> d!490633 m!1955251))

(assert (=> d!490633 m!1955251))

(declare-fun m!1959071 () Bool)

(assert (=> d!490633 m!1959071))

(assert (=> d!490633 m!1955251))

(assert (=> d!490633 m!1955251))

(declare-fun m!1959073 () Bool)

(assert (=> d!490633 m!1959073))

(assert (=> d!490633 m!1955653))

(assert (=> b!1628694 m!1959055))

(declare-fun m!1959075 () Bool)

(assert (=> b!1628694 m!1959075))

(assert (=> b!1628694 m!1959075))

(declare-fun m!1959077 () Bool)

(assert (=> b!1628694 m!1959077))

(assert (=> b!1628695 m!1959055))

(assert (=> b!1628695 m!1959061))

(assert (=> b!1628695 m!1959061))

(assert (=> b!1628695 m!1959063))

(assert (=> bm!105469 m!1955251))

(declare-fun m!1959079 () Bool)

(assert (=> bm!105469 m!1959079))

(declare-fun m!1959081 () Bool)

(assert (=> b!1628690 m!1959081))

(assert (=> b!1628691 m!1959055))

(assert (=> b!1628691 m!1959061))

(assert (=> b!1628691 m!1959061))

(assert (=> b!1628691 m!1959063))

(assert (=> b!1628691 m!1959063))

(declare-fun m!1959083 () Bool)

(assert (=> b!1628691 m!1959083))

(assert (=> b!1626499 d!490633))

(declare-fun d!490637 () Bool)

(assert (=> d!490637 (= (list!7012 (_1!10117 lt!588171)) (list!7014 (c!264625 (_1!10117 lt!588171))))))

(declare-fun bs!394997 () Bool)

(assert (= bs!394997 d!490637))

(declare-fun m!1959085 () Bool)

(assert (=> bs!394997 m!1959085))

(assert (=> b!1626499 d!490637))

(declare-fun d!490639 () Bool)

(declare-fun lt!589327 () BalanceConc!11820)

(assert (=> d!490639 (= (list!7011 lt!589327) (printList!889 thiss!17113 (list!7012 (singletonSeq!1568 (h!23257 (t!149059 tokens!457))))))))

(assert (=> d!490639 (= lt!589327 (printTailRec!827 thiss!17113 (singletonSeq!1568 (h!23257 (t!149059 tokens!457))) 0 (BalanceConc!11821 Empty!5938)))))

(assert (=> d!490639 (= (print!1305 thiss!17113 (singletonSeq!1568 (h!23257 (t!149059 tokens!457)))) lt!589327)))

(declare-fun bs!394998 () Bool)

(assert (= bs!394998 d!490639))

(declare-fun m!1959087 () Bool)

(assert (=> bs!394998 m!1959087))

(assert (=> bs!394998 m!1955229))

(assert (=> bs!394998 m!1957249))

(assert (=> bs!394998 m!1957249))

(declare-fun m!1959089 () Bool)

(assert (=> bs!394998 m!1959089))

(assert (=> bs!394998 m!1955229))

(assert (=> bs!394998 m!1955257))

(assert (=> b!1626499 d!490639))

(declare-fun d!490641 () Bool)

(declare-fun lt!589328 () BalanceConc!11820)

(assert (=> d!490641 (= (list!7011 lt!589328) (originalCharacters!3959 (h!23257 (t!149059 (t!149059 tokens!457)))))))

(assert (=> d!490641 (= lt!589328 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 (t!149059 tokens!457)))))) (value!99305 (h!23257 (t!149059 (t!149059 tokens!457))))))))

(assert (=> d!490641 (= (charsOf!1794 (h!23257 (t!149059 (t!149059 tokens!457)))) lt!589328)))

(declare-fun b_lambda!51283 () Bool)

(assert (=> (not b_lambda!51283) (not d!490641)))

(declare-fun t!149237 () Bool)

(declare-fun tb!93479 () Bool)

(assert (=> (and b!1626382 (= (toChars!4431 (transformation!3145 (rule!4971 (h!23257 tokens!457)))) (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 (t!149059 tokens!457))))))) t!149237) tb!93479))

(declare-fun b!1628699 () Bool)

(declare-fun e!1044541 () Bool)

(declare-fun tp!473044 () Bool)

(assert (=> b!1628699 (= e!1044541 (and (inv!23232 (c!264623 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 (t!149059 tokens!457)))))) (value!99305 (h!23257 (t!149059 (t!149059 tokens!457))))))) tp!473044))))

(declare-fun result!112742 () Bool)

(assert (=> tb!93479 (= result!112742 (and (inv!23233 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 (t!149059 tokens!457)))))) (value!99305 (h!23257 (t!149059 (t!149059 tokens!457)))))) e!1044541))))

(assert (= tb!93479 b!1628699))

(declare-fun m!1959091 () Bool)

(assert (=> b!1628699 m!1959091))

(declare-fun m!1959093 () Bool)

(assert (=> tb!93479 m!1959093))

(assert (=> d!490641 t!149237))

(declare-fun b_and!115493 () Bool)

(assert (= b_and!115485 (and (=> t!149237 result!112742) b_and!115493)))

(declare-fun tb!93481 () Bool)

(declare-fun t!149239 () Bool)

(assert (=> (and b!1626369 (= (toChars!4431 (transformation!3145 (h!23256 rules!1846))) (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 (t!149059 tokens!457))))))) t!149239) tb!93481))

(declare-fun result!112744 () Bool)

(assert (= result!112744 result!112742))

(assert (=> d!490641 t!149239))

(declare-fun b_and!115495 () Bool)

(assert (= b_and!115487 (and (=> t!149239 result!112744) b_and!115495)))

(declare-fun t!149241 () Bool)

(declare-fun tb!93483 () Bool)

(assert (=> (and b!1627093 (= (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 tokens!457))))) (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 (t!149059 tokens!457))))))) t!149241) tb!93483))

(declare-fun result!112746 () Bool)

(assert (= result!112746 result!112742))

(assert (=> d!490641 t!149241))

(declare-fun b_and!115497 () Bool)

(assert (= b_and!115489 (and (=> t!149241 result!112746) b_and!115497)))

(declare-fun t!149243 () Bool)

(declare-fun tb!93485 () Bool)

(assert (=> (and b!1627118 (= (toChars!4431 (transformation!3145 (h!23256 (t!149058 rules!1846)))) (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 (t!149059 tokens!457))))))) t!149243) tb!93485))

(declare-fun result!112748 () Bool)

(assert (= result!112748 result!112742))

(assert (=> d!490641 t!149243))

(declare-fun b_and!115499 () Bool)

(assert (= b_and!115491 (and (=> t!149243 result!112748) b_and!115499)))

(declare-fun m!1959095 () Bool)

(assert (=> d!490641 m!1959095))

(declare-fun m!1959097 () Bool)

(assert (=> d!490641 m!1959097))

(assert (=> b!1626499 d!490641))

(declare-fun d!490643 () Bool)

(declare-fun lt!589329 () C!9120)

(assert (=> d!490643 (= lt!589329 (head!3449 (list!7011 lt!588149)))))

(assert (=> d!490643 (= lt!589329 (head!3453 (c!264623 lt!588149)))))

(assert (=> d!490643 (not (isEmpty!10887 lt!588149))))

(assert (=> d!490643 (= (head!3448 lt!588149) lt!589329)))

(declare-fun bs!394999 () Bool)

(assert (= bs!394999 d!490643))

(assert (=> bs!394999 m!1955225))

(assert (=> bs!394999 m!1955225))

(assert (=> bs!394999 m!1955227))

(declare-fun m!1959099 () Bool)

(assert (=> bs!394999 m!1959099))

(declare-fun m!1959101 () Bool)

(assert (=> bs!394999 m!1959101))

(assert (=> b!1626499 d!490643))

(declare-fun d!490645 () Bool)

(declare-fun e!1044543 () Bool)

(assert (=> d!490645 e!1044543))

(declare-fun res!728331 () Bool)

(assert (=> d!490645 (=> (not res!728331) (not e!1044543))))

(declare-fun e!1044544 () Bool)

(assert (=> d!490645 (= res!728331 e!1044544)))

(declare-fun c!265177 () Bool)

(declare-fun lt!589330 () tuple2!17430)

(assert (=> d!490645 (= c!265177 (> (size!14283 (_1!10117 lt!589330)) 0))))

(assert (=> d!490645 (= lt!589330 (lexTailRecV2!553 thiss!17113 rules!1846 lt!588149 (BalanceConc!11821 Empty!5938) lt!588149 (BalanceConc!11823 Empty!5939)))))

(assert (=> d!490645 (= (lex!1258 thiss!17113 rules!1846 lt!588149) lt!589330)))

(declare-fun b!1628700 () Bool)

(declare-fun e!1044542 () Bool)

(assert (=> b!1628700 (= e!1044542 (not (isEmpty!10882 (_1!10117 lt!589330))))))

(declare-fun b!1628701 () Bool)

(declare-fun res!728332 () Bool)

(assert (=> b!1628701 (=> (not res!728332) (not e!1044543))))

(assert (=> b!1628701 (= res!728332 (= (list!7012 (_1!10117 lt!589330)) (_1!10120 (lexList!830 thiss!17113 rules!1846 (list!7011 lt!588149)))))))

(declare-fun b!1628702 () Bool)

(assert (=> b!1628702 (= e!1044544 e!1044542)))

(declare-fun res!728333 () Bool)

(assert (=> b!1628702 (= res!728333 (< (size!14284 (_2!10117 lt!589330)) (size!14284 lt!588149)))))

(assert (=> b!1628702 (=> (not res!728333) (not e!1044542))))

(declare-fun b!1628703 () Bool)

(assert (=> b!1628703 (= e!1044543 (= (list!7011 (_2!10117 lt!589330)) (_2!10120 (lexList!830 thiss!17113 rules!1846 (list!7011 lt!588149)))))))

(declare-fun b!1628704 () Bool)

(assert (=> b!1628704 (= e!1044544 (= (_2!10117 lt!589330) lt!588149))))

(assert (= (and d!490645 c!265177) b!1628702))

(assert (= (and d!490645 (not c!265177)) b!1628704))

(assert (= (and b!1628702 res!728333) b!1628700))

(assert (= (and d!490645 res!728331) b!1628701))

(assert (= (and b!1628701 res!728332) b!1628703))

(declare-fun m!1959103 () Bool)

(assert (=> b!1628703 m!1959103))

(assert (=> b!1628703 m!1955225))

(assert (=> b!1628703 m!1955225))

(declare-fun m!1959105 () Bool)

(assert (=> b!1628703 m!1959105))

(declare-fun m!1959107 () Bool)

(assert (=> b!1628701 m!1959107))

(assert (=> b!1628701 m!1955225))

(assert (=> b!1628701 m!1955225))

(assert (=> b!1628701 m!1959105))

(declare-fun m!1959109 () Bool)

(assert (=> d!490645 m!1959109))

(declare-fun m!1959111 () Bool)

(assert (=> d!490645 m!1959111))

(declare-fun m!1959113 () Bool)

(assert (=> b!1628702 m!1959113))

(declare-fun m!1959115 () Bool)

(assert (=> b!1628702 m!1959115))

(declare-fun m!1959117 () Bool)

(assert (=> b!1628700 m!1959117))

(assert (=> b!1626499 d!490645))

(declare-fun d!490647 () Bool)

(assert (=> d!490647 (= (head!3449 (originalCharacters!3959 (h!23257 (t!149059 (t!149059 tokens!457))))) (h!23255 (originalCharacters!3959 (h!23257 (t!149059 (t!149059 tokens!457))))))))

(assert (=> b!1626499 d!490647))

(declare-fun d!490649 () Bool)

(declare-fun e!1044548 () Bool)

(assert (=> d!490649 e!1044548))

(declare-fun res!728336 () Bool)

(assert (=> d!490649 (=> (not res!728336) (not e!1044548))))

(declare-fun lt!589333 () List!17924)

(assert (=> d!490649 (= res!728336 (= (content!2476 lt!589333) ((_ map or) (content!2476 lt!588158) (content!2476 lt!588163))))))

(declare-fun e!1044547 () List!17924)

(assert (=> d!490649 (= lt!589333 e!1044547)))

(declare-fun c!265178 () Bool)

(assert (=> d!490649 (= c!265178 ((_ is Nil!17854) lt!588158))))

(assert (=> d!490649 (= (++!4751 lt!588158 lt!588163) lt!589333)))

(declare-fun b!1628707 () Bool)

(assert (=> b!1628707 (= e!1044547 lt!588163)))

(declare-fun b!1628709 () Bool)

(declare-fun res!728337 () Bool)

(assert (=> b!1628709 (=> (not res!728337) (not e!1044548))))

(assert (=> b!1628709 (= res!728337 (= (size!14282 lt!589333) (+ (size!14282 lt!588158) (size!14282 lt!588163))))))

(declare-fun b!1628708 () Bool)

(assert (=> b!1628708 (= e!1044547 (Cons!17854 (h!23255 lt!588158) (++!4751 (t!149057 lt!588158) lt!588163)))))

(declare-fun b!1628710 () Bool)

(assert (=> b!1628710 (= e!1044548 (or (not (= lt!588163 Nil!17854)) (= lt!589333 lt!588158)))))

(assert (= (and d!490649 c!265178) b!1628707))

(assert (= (and d!490649 (not c!265178)) b!1628708))

(assert (= (and d!490649 res!728336) b!1628709))

(assert (= (and b!1628709 res!728337) b!1628710))

(declare-fun m!1959119 () Bool)

(assert (=> d!490649 m!1959119))

(declare-fun m!1959123 () Bool)

(assert (=> d!490649 m!1959123))

(declare-fun m!1959125 () Bool)

(assert (=> d!490649 m!1959125))

(declare-fun m!1959129 () Bool)

(assert (=> b!1628709 m!1959129))

(declare-fun m!1959131 () Bool)

(assert (=> b!1628709 m!1959131))

(declare-fun m!1959133 () Bool)

(assert (=> b!1628709 m!1959133))

(declare-fun m!1959137 () Bool)

(assert (=> b!1628708 m!1959137))

(assert (=> b!1626499 d!490649))

(declare-fun d!490651 () Bool)

(declare-fun e!1044550 () Bool)

(assert (=> d!490651 e!1044550))

(declare-fun res!728339 () Bool)

(assert (=> d!490651 (=> (not res!728339) (not e!1044550))))

(assert (=> d!490651 (= res!728339 (isBalanced!1793 (prepend!675 (c!264625 (seqFromList!2039 (t!149059 (t!149059 (t!149059 tokens!457))))) (h!23257 (t!149059 (t!149059 tokens!457))))))))

(declare-fun lt!589335 () BalanceConc!11822)

(assert (=> d!490651 (= lt!589335 (BalanceConc!11823 (prepend!675 (c!264625 (seqFromList!2039 (t!149059 (t!149059 (t!149059 tokens!457))))) (h!23257 (t!149059 (t!149059 tokens!457))))))))

(assert (=> d!490651 (= (prepend!673 (seqFromList!2039 (t!149059 (t!149059 (t!149059 tokens!457)))) (h!23257 (t!149059 (t!149059 tokens!457)))) lt!589335)))

(declare-fun b!1628712 () Bool)

(assert (=> b!1628712 (= e!1044550 (= (list!7012 lt!589335) (Cons!17856 (h!23257 (t!149059 (t!149059 tokens!457))) (list!7012 (seqFromList!2039 (t!149059 (t!149059 (t!149059 tokens!457))))))))))

(assert (= (and d!490651 res!728339) b!1628712))

(declare-fun m!1959143 () Bool)

(assert (=> d!490651 m!1959143))

(assert (=> d!490651 m!1959143))

(declare-fun m!1959145 () Bool)

(assert (=> d!490651 m!1959145))

(declare-fun m!1959147 () Bool)

(assert (=> b!1628712 m!1959147))

(assert (=> b!1628712 m!1955279))

(declare-fun m!1959149 () Bool)

(assert (=> b!1628712 m!1959149))

(assert (=> b!1626499 d!490651))

(declare-fun d!490655 () Bool)

(assert (=> d!490655 (isPrefix!1405 lt!588158 (++!4751 lt!588158 lt!588163))))

(declare-fun lt!589336 () Unit!28923)

(assert (=> d!490655 (= lt!589336 (choose!9778 lt!588158 lt!588163))))

(assert (=> d!490655 (= (lemmaConcatTwoListThenFirstIsPrefix!930 lt!588158 lt!588163) lt!589336)))

(declare-fun bs!395000 () Bool)

(assert (= bs!395000 d!490655))

(assert (=> bs!395000 m!1955265))

(assert (=> bs!395000 m!1955265))

(assert (=> bs!395000 m!1955283))

(declare-fun m!1959151 () Bool)

(assert (=> bs!395000 m!1959151))

(assert (=> b!1626499 d!490655))

(declare-fun b!1628713 () Bool)

(declare-fun res!728340 () Bool)

(declare-fun e!1044552 () Bool)

(assert (=> b!1628713 (=> (not res!728340) (not e!1044552))))

(declare-fun lt!589340 () Token!5856)

(assert (=> b!1628713 (= res!728340 (matchR!1972 (regex!3145 (get!5153 (getRuleFromTag!286 thiss!17113 rules!1846 (tag!3423 (rule!4971 lt!589340))))) (list!7011 (charsOf!1794 lt!589340))))))

(declare-fun d!490657 () Bool)

(assert (=> d!490657 (isDefined!2683 (maxPrefix!1338 thiss!17113 rules!1846 (++!4751 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457)))) (list!7011 lt!588149))))))

(declare-fun lt!589342 () Unit!28923)

(declare-fun e!1044551 () Unit!28923)

(assert (=> d!490657 (= lt!589342 e!1044551)))

(declare-fun c!265179 () Bool)

(assert (=> d!490657 (= c!265179 (isEmpty!10890 (maxPrefix!1338 thiss!17113 rules!1846 (++!4751 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457)))) (list!7011 lt!588149)))))))

(declare-fun lt!589352 () Unit!28923)

(declare-fun lt!589341 () Unit!28923)

(assert (=> d!490657 (= lt!589352 lt!589341)))

(assert (=> d!490657 e!1044552))

(declare-fun res!728341 () Bool)

(assert (=> d!490657 (=> (not res!728341) (not e!1044552))))

(assert (=> d!490657 (= res!728341 (isDefined!2685 (getRuleFromTag!286 thiss!17113 rules!1846 (tag!3423 (rule!4971 lt!589340)))))))

(assert (=> d!490657 (= lt!589341 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!286 thiss!17113 rules!1846 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457)))) lt!589340))))

(declare-fun lt!589351 () Unit!28923)

(declare-fun lt!589347 () Unit!28923)

(assert (=> d!490657 (= lt!589351 lt!589347)))

(declare-fun lt!589337 () List!17924)

(assert (=> d!490657 (isPrefix!1405 lt!589337 (++!4751 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457)))) (list!7011 lt!588149)))))

(assert (=> d!490657 (= lt!589347 (lemmaPrefixStaysPrefixWhenAddingToSuffix!172 lt!589337 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457)))) (list!7011 lt!588149)))))

(assert (=> d!490657 (= lt!589337 (list!7011 (charsOf!1794 lt!589340)))))

(declare-fun lt!589344 () Unit!28923)

(declare-fun lt!589346 () Unit!28923)

(assert (=> d!490657 (= lt!589344 lt!589346)))

(declare-fun lt!589345 () List!17924)

(declare-fun lt!589339 () List!17924)

(assert (=> d!490657 (isPrefix!1405 lt!589345 (++!4751 lt!589345 lt!589339))))

(assert (=> d!490657 (= lt!589346 (lemmaConcatTwoListThenFirstIsPrefix!930 lt!589345 lt!589339))))

(assert (=> d!490657 (= lt!589339 (_2!10119 (get!5150 (maxPrefix!1338 thiss!17113 rules!1846 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457))))))))))

(assert (=> d!490657 (= lt!589345 (list!7011 (charsOf!1794 lt!589340)))))

(assert (=> d!490657 (= lt!589340 (head!3452 (list!7012 (_1!10117 (lex!1258 thiss!17113 rules!1846 (seqFromList!2040 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457))))))))))))

(assert (=> d!490657 (not (isEmpty!10883 rules!1846))))

(assert (=> d!490657 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!348 thiss!17113 rules!1846 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457)))) (list!7011 lt!588149)) lt!589342)))

(declare-fun b!1628714 () Bool)

(assert (=> b!1628714 (= e!1044552 (= (rule!4971 lt!589340) (get!5153 (getRuleFromTag!286 thiss!17113 rules!1846 (tag!3423 (rule!4971 lt!589340))))))))

(declare-fun b!1628715 () Bool)

(declare-fun Unit!28975 () Unit!28923)

(assert (=> b!1628715 (= e!1044551 Unit!28975)))

(declare-fun lt!589353 () List!17924)

(assert (=> b!1628715 (= lt!589353 (++!4751 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457)))) (list!7011 lt!588149)))))

(declare-fun lt!589350 () Unit!28923)

(assert (=> b!1628715 (= lt!589350 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!180 thiss!17113 (rule!4971 lt!589340) rules!1846 lt!589353))))

(assert (=> b!1628715 (isEmpty!10890 (maxPrefixOneRule!777 thiss!17113 (rule!4971 lt!589340) lt!589353))))

(declare-fun lt!589343 () Unit!28923)

(assert (=> b!1628715 (= lt!589343 lt!589350)))

(declare-fun lt!589349 () List!17924)

(assert (=> b!1628715 (= lt!589349 (list!7011 (charsOf!1794 lt!589340)))))

(declare-fun lt!589348 () Unit!28923)

(assert (=> b!1628715 (= lt!589348 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!176 thiss!17113 (rule!4971 lt!589340) lt!589349 (++!4751 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457)))) (list!7011 lt!588149))))))

(assert (=> b!1628715 (not (matchR!1972 (regex!3145 (rule!4971 lt!589340)) lt!589349))))

(declare-fun lt!589338 () Unit!28923)

(assert (=> b!1628715 (= lt!589338 lt!589348)))

(assert (=> b!1628715 false))

(declare-fun b!1628716 () Bool)

(declare-fun Unit!28976 () Unit!28923)

(assert (=> b!1628716 (= e!1044551 Unit!28976)))

(assert (= (and d!490657 res!728341) b!1628713))

(assert (= (and b!1628713 res!728340) b!1628714))

(assert (= (and d!490657 c!265179) b!1628715))

(assert (= (and d!490657 (not c!265179)) b!1628716))

(declare-fun m!1959153 () Bool)

(assert (=> b!1628713 m!1959153))

(declare-fun m!1959155 () Bool)

(assert (=> b!1628713 m!1959155))

(declare-fun m!1959157 () Bool)

(assert (=> b!1628713 m!1959157))

(declare-fun m!1959159 () Bool)

(assert (=> b!1628713 m!1959159))

(assert (=> b!1628713 m!1959157))

(declare-fun m!1959161 () Bool)

(assert (=> b!1628713 m!1959161))

(assert (=> b!1628713 m!1959159))

(assert (=> b!1628713 m!1959153))

(declare-fun m!1959163 () Bool)

(assert (=> d!490657 m!1959163))

(declare-fun m!1959165 () Bool)

(assert (=> d!490657 m!1959165))

(declare-fun m!1959167 () Bool)

(assert (=> d!490657 m!1959167))

(declare-fun m!1959169 () Bool)

(assert (=> d!490657 m!1959169))

(declare-fun m!1959171 () Bool)

(assert (=> d!490657 m!1959171))

(assert (=> d!490657 m!1955233))

(assert (=> d!490657 m!1955277))

(declare-fun m!1959173 () Bool)

(assert (=> d!490657 m!1959173))

(declare-fun m!1959175 () Bool)

(assert (=> d!490657 m!1959175))

(assert (=> d!490657 m!1955231))

(assert (=> d!490657 m!1955225))

(assert (=> d!490657 m!1959163))

(assert (=> d!490657 m!1959157))

(assert (=> d!490657 m!1955231))

(assert (=> d!490657 m!1955225))

(declare-fun m!1959177 () Bool)

(assert (=> d!490657 m!1959177))

(declare-fun m!1959179 () Bool)

(assert (=> d!490657 m!1959179))

(declare-fun m!1959181 () Bool)

(assert (=> d!490657 m!1959181))

(assert (=> d!490657 m!1954901))

(assert (=> d!490657 m!1959163))

(assert (=> d!490657 m!1959173))

(assert (=> d!490657 m!1959173))

(declare-fun m!1959183 () Bool)

(assert (=> d!490657 m!1959183))

(declare-fun m!1959185 () Bool)

(assert (=> d!490657 m!1959185))

(assert (=> d!490657 m!1955231))

(declare-fun m!1959187 () Bool)

(assert (=> d!490657 m!1959187))

(assert (=> d!490657 m!1959179))

(assert (=> d!490657 m!1959157))

(declare-fun m!1959189 () Bool)

(assert (=> d!490657 m!1959189))

(assert (=> d!490657 m!1959159))

(assert (=> d!490657 m!1959185))

(declare-fun m!1959191 () Bool)

(assert (=> d!490657 m!1959191))

(assert (=> d!490657 m!1955231))

(assert (=> d!490657 m!1955233))

(assert (=> d!490657 m!1955231))

(assert (=> d!490657 m!1959169))

(assert (=> d!490657 m!1959159))

(assert (=> d!490657 m!1959153))

(assert (=> b!1628714 m!1959157))

(assert (=> b!1628714 m!1959157))

(assert (=> b!1628714 m!1959161))

(declare-fun m!1959193 () Bool)

(assert (=> b!1628715 m!1959193))

(declare-fun m!1959195 () Bool)

(assert (=> b!1628715 m!1959195))

(declare-fun m!1959197 () Bool)

(assert (=> b!1628715 m!1959197))

(assert (=> b!1628715 m!1955231))

(assert (=> b!1628715 m!1955225))

(assert (=> b!1628715 m!1959163))

(declare-fun m!1959199 () Bool)

(assert (=> b!1628715 m!1959199))

(assert (=> b!1628715 m!1959159))

(assert (=> b!1628715 m!1959159))

(assert (=> b!1628715 m!1959153))

(assert (=> b!1628715 m!1959163))

(declare-fun m!1959201 () Bool)

(assert (=> b!1628715 m!1959201))

(assert (=> b!1628715 m!1959195))

(assert (=> b!1626499 d!490657))

(declare-fun d!490659 () Bool)

(assert (=> d!490659 (= (head!3449 (list!7011 lt!588149)) (h!23255 (list!7011 lt!588149)))))

(assert (=> b!1626499 d!490659))

(declare-fun d!490661 () Bool)

(assert (=> d!490661 (= (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457)))) (list!7016 (c!264623 (charsOf!1794 (h!23257 (t!149059 tokens!457))))))))

(declare-fun bs!395001 () Bool)

(assert (= bs!395001 d!490661))

(declare-fun m!1959203 () Bool)

(assert (=> bs!395001 m!1959203))

(assert (=> b!1626499 d!490661))

(declare-fun b!1628721 () Bool)

(declare-fun e!1044556 () Bool)

(declare-fun e!1044557 () Bool)

(assert (=> b!1628721 (= e!1044556 e!1044557)))

(declare-fun res!728344 () Bool)

(assert (=> b!1628721 (=> (not res!728344) (not e!1044557))))

(declare-fun lt!589368 () Option!3316)

(assert (=> b!1628721 (= res!728344 (isDefined!2683 lt!589368))))

(declare-fun b!1628722 () Bool)

(declare-fun res!728346 () Bool)

(assert (=> b!1628722 (=> (not res!728346) (not e!1044557))))

(assert (=> b!1628722 (= res!728346 (= (++!4751 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!589368)))) (_2!10119 (get!5150 lt!589368))) (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457))))))))

(declare-fun b!1628723 () Bool)

(declare-fun e!1044555 () Option!3316)

(declare-fun lt!589365 () Option!3316)

(declare-fun lt!589364 () Option!3316)

(assert (=> b!1628723 (= e!1044555 (ite (and ((_ is None!3315) lt!589365) ((_ is None!3315) lt!589364)) None!3315 (ite ((_ is None!3315) lt!589364) lt!589365 (ite ((_ is None!3315) lt!589365) lt!589364 (ite (>= (size!14278 (_1!10119 (v!24358 lt!589365))) (size!14278 (_1!10119 (v!24358 lt!589364)))) lt!589365 lt!589364)))))))

(declare-fun call!105475 () Option!3316)

(assert (=> b!1628723 (= lt!589365 call!105475)))

(assert (=> b!1628723 (= lt!589364 (maxPrefix!1338 thiss!17113 (t!149058 rules!1846) (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457))))))))

(declare-fun d!490663 () Bool)

(assert (=> d!490663 e!1044556))

(declare-fun res!728345 () Bool)

(assert (=> d!490663 (=> res!728345 e!1044556)))

(assert (=> d!490663 (= res!728345 (isEmpty!10890 lt!589368))))

(assert (=> d!490663 (= lt!589368 e!1044555)))

(declare-fun c!265182 () Bool)

(assert (=> d!490663 (= c!265182 (and ((_ is Cons!17855) rules!1846) ((_ is Nil!17855) (t!149058 rules!1846))))))

(declare-fun lt!589366 () Unit!28923)

(declare-fun lt!589367 () Unit!28923)

(assert (=> d!490663 (= lt!589366 lt!589367)))

(assert (=> d!490663 (isPrefix!1405 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457)))) (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457)))))))

(assert (=> d!490663 (= lt!589367 (lemmaIsPrefixRefl!962 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457)))) (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457))))))))

(assert (=> d!490663 (rulesValidInductive!974 thiss!17113 rules!1846)))

(assert (=> d!490663 (= (maxPrefix!1338 thiss!17113 rules!1846 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457))))) lt!589368)))

(declare-fun b!1628724 () Bool)

(declare-fun res!728347 () Bool)

(assert (=> b!1628724 (=> (not res!728347) (not e!1044557))))

(assert (=> b!1628724 (= res!728347 (matchR!1972 (regex!3145 (rule!4971 (_1!10119 (get!5150 lt!589368)))) (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!589368))))))))

(declare-fun b!1628725 () Bool)

(declare-fun res!728342 () Bool)

(assert (=> b!1628725 (=> (not res!728342) (not e!1044557))))

(assert (=> b!1628725 (= res!728342 (= (value!99305 (_1!10119 (get!5150 lt!589368))) (apply!4575 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!589368)))) (seqFromList!2040 (originalCharacters!3959 (_1!10119 (get!5150 lt!589368)))))))))

(declare-fun b!1628726 () Bool)

(declare-fun res!728343 () Bool)

(assert (=> b!1628726 (=> (not res!728343) (not e!1044557))))

(assert (=> b!1628726 (= res!728343 (= (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!589368)))) (originalCharacters!3959 (_1!10119 (get!5150 lt!589368)))))))

(declare-fun bm!105470 () Bool)

(assert (=> bm!105470 (= call!105475 (maxPrefixOneRule!777 thiss!17113 (h!23256 rules!1846) (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457))))))))

(declare-fun b!1628727 () Bool)

(assert (=> b!1628727 (= e!1044557 (contains!3120 rules!1846 (rule!4971 (_1!10119 (get!5150 lt!589368)))))))

(declare-fun b!1628728 () Bool)

(assert (=> b!1628728 (= e!1044555 call!105475)))

(declare-fun b!1628729 () Bool)

(declare-fun res!728348 () Bool)

(assert (=> b!1628729 (=> (not res!728348) (not e!1044557))))

(assert (=> b!1628729 (= res!728348 (< (size!14282 (_2!10119 (get!5150 lt!589368))) (size!14282 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457)))))))))

(assert (= (and d!490663 c!265182) b!1628728))

(assert (= (and d!490663 (not c!265182)) b!1628723))

(assert (= (or b!1628728 b!1628723) bm!105470))

(assert (= (and d!490663 (not res!728345)) b!1628721))

(assert (= (and b!1628721 res!728344) b!1628726))

(assert (= (and b!1628726 res!728343) b!1628729))

(assert (= (and b!1628729 res!728348) b!1628722))

(assert (= (and b!1628722 res!728346) b!1628725))

(assert (= (and b!1628725 res!728342) b!1628724))

(assert (= (and b!1628724 res!728347) b!1628727))

(assert (=> b!1628723 m!1955231))

(declare-fun m!1959205 () Bool)

(assert (=> b!1628723 m!1959205))

(declare-fun m!1959207 () Bool)

(assert (=> b!1628729 m!1959207))

(declare-fun m!1959209 () Bool)

(assert (=> b!1628729 m!1959209))

(assert (=> b!1628729 m!1955231))

(assert (=> b!1628729 m!1957067))

(assert (=> b!1628724 m!1959207))

(declare-fun m!1959211 () Bool)

(assert (=> b!1628724 m!1959211))

(assert (=> b!1628724 m!1959211))

(declare-fun m!1959213 () Bool)

(assert (=> b!1628724 m!1959213))

(assert (=> b!1628724 m!1959213))

(declare-fun m!1959215 () Bool)

(assert (=> b!1628724 m!1959215))

(assert (=> b!1628727 m!1959207))

(declare-fun m!1959217 () Bool)

(assert (=> b!1628727 m!1959217))

(declare-fun m!1959219 () Bool)

(assert (=> d!490663 m!1959219))

(assert (=> d!490663 m!1955231))

(assert (=> d!490663 m!1955231))

(declare-fun m!1959221 () Bool)

(assert (=> d!490663 m!1959221))

(assert (=> d!490663 m!1955231))

(assert (=> d!490663 m!1955231))

(declare-fun m!1959223 () Bool)

(assert (=> d!490663 m!1959223))

(assert (=> d!490663 m!1955653))

(assert (=> b!1628725 m!1959207))

(declare-fun m!1959225 () Bool)

(assert (=> b!1628725 m!1959225))

(assert (=> b!1628725 m!1959225))

(declare-fun m!1959231 () Bool)

(assert (=> b!1628725 m!1959231))

(assert (=> b!1628726 m!1959207))

(assert (=> b!1628726 m!1959211))

(assert (=> b!1628726 m!1959211))

(assert (=> b!1628726 m!1959213))

(assert (=> bm!105470 m!1955231))

(declare-fun m!1959243 () Bool)

(assert (=> bm!105470 m!1959243))

(declare-fun m!1959245 () Bool)

(assert (=> b!1628721 m!1959245))

(assert (=> b!1628722 m!1959207))

(assert (=> b!1628722 m!1959211))

(assert (=> b!1628722 m!1959211))

(assert (=> b!1628722 m!1959213))

(assert (=> b!1628722 m!1959213))

(declare-fun m!1959251 () Bool)

(assert (=> b!1628722 m!1959251))

(assert (=> b!1626499 d!490663))

(declare-fun d!490665 () Bool)

(assert (=> d!490665 (= (isDefined!2683 (maxPrefix!1338 thiss!17113 rules!1846 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457)))))) (not (isEmpty!10890 (maxPrefix!1338 thiss!17113 rules!1846 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457))))))))))

(declare-fun bs!395002 () Bool)

(assert (= bs!395002 d!490665))

(assert (=> bs!395002 m!1955233))

(declare-fun m!1959259 () Bool)

(assert (=> bs!395002 m!1959259))

(assert (=> b!1626499 d!490665))

(declare-fun d!490669 () Bool)

(declare-fun e!1044559 () Bool)

(assert (=> d!490669 e!1044559))

(declare-fun res!728349 () Bool)

(assert (=> d!490669 (=> (not res!728349) (not e!1044559))))

(assert (=> d!490669 (= res!728349 (= (list!7012 (_1!10117 (lex!1258 thiss!17113 rules!1846 (print!1305 thiss!17113 (seqFromList!2039 (t!149059 (t!149059 tokens!457))))))) (t!149059 (t!149059 tokens!457))))))

(declare-fun lt!589393 () Unit!28923)

(declare-fun e!1044560 () Unit!28923)

(assert (=> d!490669 (= lt!589393 e!1044560)))

(declare-fun c!265184 () Bool)

(assert (=> d!490669 (= c!265184 (or ((_ is Nil!17856) (t!149059 (t!149059 tokens!457))) ((_ is Nil!17856) (t!149059 (t!149059 (t!149059 tokens!457))))))))

(assert (=> d!490669 (not (isEmpty!10883 rules!1846))))

(assert (=> d!490669 (= (theoremInvertabilityWhenTokenListSeparable!219 thiss!17113 rules!1846 (t!149059 (t!149059 tokens!457))) lt!589393)))

(declare-fun b!1628732 () Bool)

(declare-fun Unit!28977 () Unit!28923)

(assert (=> b!1628732 (= e!1044560 Unit!28977)))

(declare-fun b!1628733 () Bool)

(declare-fun Unit!28978 () Unit!28923)

(assert (=> b!1628733 (= e!1044560 Unit!28978)))

(declare-fun lt!589394 () BalanceConc!11820)

(assert (=> b!1628733 (= lt!589394 (print!1305 thiss!17113 (seqFromList!2039 (t!149059 (t!149059 tokens!457)))))))

(declare-fun lt!589377 () BalanceConc!11820)

(assert (=> b!1628733 (= lt!589377 (print!1305 thiss!17113 (seqFromList!2039 (t!149059 (t!149059 (t!149059 tokens!457))))))))

(declare-fun lt!589399 () tuple2!17430)

(assert (=> b!1628733 (= lt!589399 (lex!1258 thiss!17113 rules!1846 lt!589377))))

(declare-fun lt!589386 () List!17924)

(assert (=> b!1628733 (= lt!589386 (list!7011 (charsOf!1794 (h!23257 (t!149059 (t!149059 tokens!457))))))))

(declare-fun lt!589391 () List!17924)

(assert (=> b!1628733 (= lt!589391 (list!7011 lt!589377))))

(declare-fun lt!589385 () Unit!28923)

(assert (=> b!1628733 (= lt!589385 (lemmaConcatTwoListThenFirstIsPrefix!930 lt!589386 lt!589391))))

(assert (=> b!1628733 (isPrefix!1405 lt!589386 (++!4751 lt!589386 lt!589391))))

(declare-fun lt!589388 () Unit!28923)

(assert (=> b!1628733 (= lt!589388 lt!589385)))

(declare-fun lt!589396 () Unit!28923)

(assert (=> b!1628733 (= lt!589396 (theoremInvertabilityWhenTokenListSeparable!219 thiss!17113 rules!1846 (t!149059 (t!149059 (t!149059 tokens!457)))))))

(declare-fun lt!589378 () Unit!28923)

(assert (=> b!1628733 (= lt!589378 (seqFromListBHdTlConstructive!222 (h!23257 (t!149059 (t!149059 (t!149059 tokens!457)))) (t!149059 (t!149059 (t!149059 (t!149059 tokens!457)))) (_1!10117 lt!589399)))))

(assert (=> b!1628733 (= (list!7012 (_1!10117 lt!589399)) (list!7012 (prepend!673 (seqFromList!2039 (t!149059 (t!149059 (t!149059 (t!149059 tokens!457))))) (h!23257 (t!149059 (t!149059 (t!149059 tokens!457)))))))))

(declare-fun lt!589376 () Unit!28923)

(assert (=> b!1628733 (= lt!589376 lt!589378)))

(declare-fun lt!589382 () Option!3316)

(assert (=> b!1628733 (= lt!589382 (maxPrefix!1338 thiss!17113 rules!1846 (list!7011 lt!589394)))))

(assert (=> b!1628733 (= (print!1305 thiss!17113 (singletonSeq!1568 (h!23257 (t!149059 (t!149059 tokens!457))))) (printTailRec!827 thiss!17113 (singletonSeq!1568 (h!23257 (t!149059 (t!149059 tokens!457)))) 0 (BalanceConc!11821 Empty!5938)))))

(declare-fun lt!589380 () Unit!28923)

(declare-fun Unit!28979 () Unit!28923)

(assert (=> b!1628733 (= lt!589380 Unit!28979)))

(declare-fun lt!589375 () Unit!28923)

(assert (=> b!1628733 (= lt!589375 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!348 thiss!17113 rules!1846 (list!7011 (charsOf!1794 (h!23257 (t!149059 (t!149059 tokens!457))))) (list!7011 lt!589377)))))

(assert (=> b!1628733 (= (list!7011 (charsOf!1794 (h!23257 (t!149059 (t!149059 tokens!457))))) (originalCharacters!3959 (h!23257 (t!149059 (t!149059 tokens!457)))))))

(declare-fun lt!589379 () Unit!28923)

(declare-fun Unit!28980 () Unit!28923)

(assert (=> b!1628733 (= lt!589379 Unit!28980)))

(assert (=> b!1628733 (= (list!7011 (singletonSeq!1569 (apply!4568 (charsOf!1794 (h!23257 (t!149059 (t!149059 (t!149059 tokens!457))))) 0))) (Cons!17854 (head!3449 (originalCharacters!3959 (h!23257 (t!149059 (t!149059 (t!149059 tokens!457)))))) Nil!17854))))

(declare-fun lt!589390 () Unit!28923)

(declare-fun Unit!28981 () Unit!28923)

(assert (=> b!1628733 (= lt!589390 Unit!28981)))

(assert (=> b!1628733 (= (list!7011 (singletonSeq!1569 (apply!4568 (charsOf!1794 (h!23257 (t!149059 (t!149059 (t!149059 tokens!457))))) 0))) (Cons!17854 (head!3449 (list!7011 lt!589377)) Nil!17854))))

(declare-fun lt!589395 () Unit!28923)

(declare-fun Unit!28982 () Unit!28923)

(assert (=> b!1628733 (= lt!589395 Unit!28982)))

(assert (=> b!1628733 (= (list!7011 (singletonSeq!1569 (apply!4568 (charsOf!1794 (h!23257 (t!149059 (t!149059 (t!149059 tokens!457))))) 0))) (Cons!17854 (head!3448 lt!589377) Nil!17854))))

(declare-fun lt!589389 () Unit!28923)

(declare-fun Unit!28983 () Unit!28923)

(assert (=> b!1628733 (= lt!589389 Unit!28983)))

(assert (=> b!1628733 (isDefined!2683 (maxPrefix!1338 thiss!17113 rules!1846 (originalCharacters!3959 (h!23257 (t!149059 (t!149059 tokens!457))))))))

(declare-fun lt!589384 () Unit!28923)

(declare-fun Unit!28984 () Unit!28923)

(assert (=> b!1628733 (= lt!589384 Unit!28984)))

(assert (=> b!1628733 (isDefined!2683 (maxPrefix!1338 thiss!17113 rules!1846 (list!7011 (charsOf!1794 (h!23257 (t!149059 (t!149059 tokens!457)))))))))

(declare-fun lt!589374 () Unit!28923)

(declare-fun Unit!28985 () Unit!28923)

(assert (=> b!1628733 (= lt!589374 Unit!28985)))

(declare-fun lt!589398 () Unit!28923)

(declare-fun Unit!28986 () Unit!28923)

(assert (=> b!1628733 (= lt!589398 Unit!28986)))

(assert (=> b!1628733 (= (_1!10119 (get!5150 (maxPrefix!1338 thiss!17113 rules!1846 (list!7011 (charsOf!1794 (h!23257 (t!149059 (t!149059 tokens!457)))))))) (h!23257 (t!149059 (t!149059 tokens!457))))))

(declare-fun lt!589397 () Unit!28923)

(declare-fun Unit!28987 () Unit!28923)

(assert (=> b!1628733 (= lt!589397 Unit!28987)))

(assert (=> b!1628733 (isEmpty!10881 (_2!10119 (get!5150 (maxPrefix!1338 thiss!17113 rules!1846 (list!7011 (charsOf!1794 (h!23257 (t!149059 (t!149059 tokens!457)))))))))))

(declare-fun lt!589387 () Unit!28923)

(declare-fun Unit!28988 () Unit!28923)

(assert (=> b!1628733 (= lt!589387 Unit!28988)))

(assert (=> b!1628733 (matchR!1972 (regex!3145 (rule!4971 (h!23257 (t!149059 (t!149059 tokens!457))))) (list!7011 (charsOf!1794 (h!23257 (t!149059 (t!149059 tokens!457))))))))

(declare-fun lt!589392 () Unit!28923)

(declare-fun Unit!28989 () Unit!28923)

(assert (=> b!1628733 (= lt!589392 Unit!28989)))

(assert (=> b!1628733 (= (rule!4971 (h!23257 (t!149059 (t!149059 tokens!457)))) (rule!4971 (h!23257 (t!149059 (t!149059 tokens!457)))))))

(declare-fun lt!589381 () Unit!28923)

(declare-fun Unit!28990 () Unit!28923)

(assert (=> b!1628733 (= lt!589381 Unit!28990)))

(declare-fun lt!589383 () Unit!28923)

(assert (=> b!1628733 (= lt!589383 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!111 thiss!17113 rules!1846 (h!23257 (t!149059 (t!149059 tokens!457))) (rule!4971 (h!23257 (t!149059 (t!149059 tokens!457)))) (list!7011 lt!589377)))))

(declare-fun b!1628734 () Bool)

(assert (=> b!1628734 (= e!1044559 (isEmpty!10887 (_2!10117 (lex!1258 thiss!17113 rules!1846 (print!1305 thiss!17113 (seqFromList!2039 (t!149059 (t!149059 tokens!457))))))))))

(assert (= (and d!490669 c!265184) b!1628732))

(assert (= (and d!490669 (not c!265184)) b!1628733))

(assert (= (and d!490669 res!728349) b!1628734))

(assert (=> d!490669 m!1955255))

(declare-fun m!1959271 () Bool)

(assert (=> d!490669 m!1959271))

(declare-fun m!1959273 () Bool)

(assert (=> d!490669 m!1959273))

(assert (=> d!490669 m!1954901))

(assert (=> d!490669 m!1955001))

(assert (=> d!490669 m!1955255))

(assert (=> d!490669 m!1955001))

(declare-fun m!1959275 () Bool)

(assert (=> b!1628733 m!1959275))

(declare-fun m!1959277 () Bool)

(assert (=> b!1628733 m!1959277))

(declare-fun m!1959281 () Bool)

(assert (=> b!1628733 m!1959281))

(declare-fun m!1959283 () Bool)

(assert (=> b!1628733 m!1959283))

(assert (=> b!1628733 m!1959017))

(declare-fun m!1959287 () Bool)

(assert (=> b!1628733 m!1959287))

(declare-fun m!1959289 () Bool)

(assert (=> b!1628733 m!1959289))

(declare-fun m!1959291 () Bool)

(assert (=> b!1628733 m!1959291))

(assert (=> b!1628733 m!1959287))

(declare-fun m!1959293 () Bool)

(assert (=> b!1628733 m!1959293))

(declare-fun m!1959295 () Bool)

(assert (=> b!1628733 m!1959295))

(declare-fun m!1959297 () Bool)

(assert (=> b!1628733 m!1959297))

(declare-fun m!1959299 () Bool)

(assert (=> b!1628733 m!1959299))

(assert (=> b!1628733 m!1959295))

(assert (=> b!1628733 m!1955279))

(assert (=> b!1628733 m!1955259))

(assert (=> b!1628733 m!1959283))

(declare-fun m!1959301 () Bool)

(assert (=> b!1628733 m!1959301))

(assert (=> b!1628733 m!1955001))

(declare-fun m!1959303 () Bool)

(assert (=> b!1628733 m!1959303))

(declare-fun m!1959305 () Bool)

(assert (=> b!1628733 m!1959305))

(declare-fun m!1959307 () Bool)

(assert (=> b!1628733 m!1959307))

(assert (=> b!1628733 m!1955279))

(declare-fun m!1959309 () Bool)

(assert (=> b!1628733 m!1959309))

(assert (=> b!1628733 m!1959283))

(declare-fun m!1959311 () Bool)

(assert (=> b!1628733 m!1959311))

(declare-fun m!1959313 () Bool)

(assert (=> b!1628733 m!1959313))

(assert (=> b!1628733 m!1959299))

(declare-fun m!1959315 () Bool)

(assert (=> b!1628733 m!1959315))

(assert (=> b!1628733 m!1959017))

(assert (=> b!1628733 m!1959277))

(declare-fun m!1959317 () Bool)

(assert (=> b!1628733 m!1959317))

(declare-fun m!1959319 () Bool)

(assert (=> b!1628733 m!1959319))

(assert (=> b!1628733 m!1959277))

(declare-fun m!1959321 () Bool)

(assert (=> b!1628733 m!1959321))

(declare-fun m!1959323 () Bool)

(assert (=> b!1628733 m!1959323))

(declare-fun m!1959325 () Bool)

(assert (=> b!1628733 m!1959325))

(assert (=> b!1628733 m!1959291))

(declare-fun m!1959327 () Bool)

(assert (=> b!1628733 m!1959327))

(assert (=> b!1628733 m!1959017))

(declare-fun m!1959329 () Bool)

(assert (=> b!1628733 m!1959329))

(assert (=> b!1628733 m!1959287))

(declare-fun m!1959331 () Bool)

(assert (=> b!1628733 m!1959331))

(assert (=> b!1628733 m!1959313))

(declare-fun m!1959333 () Bool)

(assert (=> b!1628733 m!1959333))

(declare-fun m!1959335 () Bool)

(assert (=> b!1628733 m!1959335))

(assert (=> b!1628733 m!1959277))

(assert (=> b!1628733 m!1959305))

(assert (=> b!1628733 m!1955001))

(assert (=> b!1628733 m!1955255))

(assert (=> b!1628733 m!1959333))

(assert (=> b!1628733 m!1959323))

(assert (=> b!1628733 m!1959319))

(declare-fun m!1959337 () Bool)

(assert (=> b!1628733 m!1959337))

(declare-fun m!1959339 () Bool)

(assert (=> b!1628733 m!1959339))

(declare-fun m!1959341 () Bool)

(assert (=> b!1628733 m!1959341))

(assert (=> b!1628733 m!1955259))

(assert (=> b!1628733 m!1959017))

(declare-fun m!1959343 () Bool)

(assert (=> b!1628733 m!1959343))

(assert (=> b!1628734 m!1955001))

(assert (=> b!1628734 m!1955001))

(assert (=> b!1628734 m!1955255))

(assert (=> b!1628734 m!1955255))

(assert (=> b!1628734 m!1959271))

(declare-fun m!1959345 () Bool)

(assert (=> b!1628734 m!1959345))

(assert (=> b!1626499 d!490669))

(declare-fun d!490685 () Bool)

(declare-fun lt!589407 () BalanceConc!11820)

(assert (=> d!490685 (= (list!7011 lt!589407) (printListTailRec!357 thiss!17113 (dropList!611 (singletonSeq!1568 (h!23257 (t!149059 tokens!457))) 0) (list!7011 (BalanceConc!11821 Empty!5938))))))

(declare-fun e!1044562 () BalanceConc!11820)

(assert (=> d!490685 (= lt!589407 e!1044562)))

(declare-fun c!265185 () Bool)

(assert (=> d!490685 (= c!265185 (>= 0 (size!14283 (singletonSeq!1568 (h!23257 (t!149059 tokens!457))))))))

(declare-fun e!1044563 () Bool)

(assert (=> d!490685 e!1044563))

(declare-fun res!728351 () Bool)

(assert (=> d!490685 (=> (not res!728351) (not e!1044563))))

(assert (=> d!490685 (= res!728351 (>= 0 0))))

(assert (=> d!490685 (= (printTailRec!827 thiss!17113 (singletonSeq!1568 (h!23257 (t!149059 tokens!457))) 0 (BalanceConc!11821 Empty!5938)) lt!589407)))

(declare-fun b!1628736 () Bool)

(assert (=> b!1628736 (= e!1044563 (<= 0 (size!14283 (singletonSeq!1568 (h!23257 (t!149059 tokens!457))))))))

(declare-fun b!1628737 () Bool)

(assert (=> b!1628737 (= e!1044562 (BalanceConc!11821 Empty!5938))))

(declare-fun b!1628738 () Bool)

(assert (=> b!1628738 (= e!1044562 (printTailRec!827 thiss!17113 (singletonSeq!1568 (h!23257 (t!149059 tokens!457))) (+ 0 1) (++!4752 (BalanceConc!11821 Empty!5938) (charsOf!1794 (apply!4574 (singletonSeq!1568 (h!23257 (t!149059 tokens!457))) 0)))))))

(declare-fun lt!589403 () List!17926)

(assert (=> b!1628738 (= lt!589403 (list!7012 (singletonSeq!1568 (h!23257 (t!149059 tokens!457)))))))

(declare-fun lt!589404 () Unit!28923)

(assert (=> b!1628738 (= lt!589404 (lemmaDropApply!564 lt!589403 0))))

(assert (=> b!1628738 (= (head!3452 (drop!874 lt!589403 0)) (apply!4576 lt!589403 0))))

(declare-fun lt!589402 () Unit!28923)

(assert (=> b!1628738 (= lt!589402 lt!589404)))

(declare-fun lt!589406 () List!17926)

(assert (=> b!1628738 (= lt!589406 (list!7012 (singletonSeq!1568 (h!23257 (t!149059 tokens!457)))))))

(declare-fun lt!589405 () Unit!28923)

(assert (=> b!1628738 (= lt!589405 (lemmaDropTail!544 lt!589406 0))))

(assert (=> b!1628738 (= (tail!2368 (drop!874 lt!589406 0)) (drop!874 lt!589406 (+ 0 1)))))

(declare-fun lt!589401 () Unit!28923)

(assert (=> b!1628738 (= lt!589401 lt!589405)))

(assert (= (and d!490685 res!728351) b!1628736))

(assert (= (and d!490685 c!265185) b!1628737))

(assert (= (and d!490685 (not c!265185)) b!1628738))

(assert (=> d!490685 m!1955229))

(declare-fun m!1959347 () Bool)

(assert (=> d!490685 m!1959347))

(declare-fun m!1959349 () Bool)

(assert (=> d!490685 m!1959349))

(assert (=> d!490685 m!1955685))

(declare-fun m!1959351 () Bool)

(assert (=> d!490685 m!1959351))

(assert (=> d!490685 m!1955685))

(declare-fun m!1959353 () Bool)

(assert (=> d!490685 m!1959353))

(assert (=> d!490685 m!1955229))

(assert (=> d!490685 m!1959351))

(assert (=> b!1628736 m!1955229))

(assert (=> b!1628736 m!1959347))

(declare-fun m!1959355 () Bool)

(assert (=> b!1628738 m!1959355))

(declare-fun m!1959357 () Bool)

(assert (=> b!1628738 m!1959357))

(declare-fun m!1959359 () Bool)

(assert (=> b!1628738 m!1959359))

(declare-fun m!1959361 () Bool)

(assert (=> b!1628738 m!1959361))

(declare-fun m!1959363 () Bool)

(assert (=> b!1628738 m!1959363))

(assert (=> b!1628738 m!1955229))

(assert (=> b!1628738 m!1959361))

(assert (=> b!1628738 m!1955229))

(assert (=> b!1628738 m!1957249))

(declare-fun m!1959365 () Bool)

(assert (=> b!1628738 m!1959365))

(assert (=> b!1628738 m!1959363))

(declare-fun m!1959367 () Bool)

(assert (=> b!1628738 m!1959367))

(assert (=> b!1628738 m!1959359))

(declare-fun m!1959369 () Bool)

(assert (=> b!1628738 m!1959369))

(assert (=> b!1628738 m!1955229))

(assert (=> b!1628738 m!1959367))

(declare-fun m!1959371 () Bool)

(assert (=> b!1628738 m!1959371))

(declare-fun m!1959373 () Bool)

(assert (=> b!1628738 m!1959373))

(assert (=> b!1628738 m!1959355))

(declare-fun m!1959375 () Bool)

(assert (=> b!1628738 m!1959375))

(declare-fun m!1959377 () Bool)

(assert (=> b!1628738 m!1959377))

(assert (=> b!1626499 d!490685))

(declare-fun d!490687 () Bool)

(declare-fun lt!589408 () BalanceConc!11820)

(assert (=> d!490687 (= (list!7011 lt!589408) (printList!889 thiss!17113 (list!7012 (seqFromList!2039 (t!149059 tokens!457)))))))

(assert (=> d!490687 (= lt!589408 (printTailRec!827 thiss!17113 (seqFromList!2039 (t!149059 tokens!457)) 0 (BalanceConc!11821 Empty!5938)))))

(assert (=> d!490687 (= (print!1305 thiss!17113 (seqFromList!2039 (t!149059 tokens!457))) lt!589408)))

(declare-fun bs!395007 () Bool)

(assert (= bs!395007 d!490687))

(declare-fun m!1959379 () Bool)

(assert (=> bs!395007 m!1959379))

(assert (=> bs!395007 m!1954943))

(declare-fun m!1959381 () Bool)

(assert (=> bs!395007 m!1959381))

(assert (=> bs!395007 m!1959381))

(declare-fun m!1959383 () Bool)

(assert (=> bs!395007 m!1959383))

(assert (=> bs!395007 m!1954943))

(declare-fun m!1959385 () Bool)

(assert (=> bs!395007 m!1959385))

(assert (=> b!1626499 d!490687))

(declare-fun d!490689 () Bool)

(assert (=> d!490689 (= (list!7011 lt!588166) (list!7016 (c!264623 lt!588166)))))

(declare-fun bs!395008 () Bool)

(assert (= bs!395008 d!490689))

(declare-fun m!1959387 () Bool)

(assert (=> bs!395008 m!1959387))

(assert (=> b!1626499 d!490689))

(declare-fun b!1628739 () Bool)

(declare-fun e!1044565 () Bool)

(declare-fun e!1044566 () Bool)

(assert (=> b!1628739 (= e!1044565 e!1044566)))

(declare-fun res!728354 () Bool)

(assert (=> b!1628739 (=> (not res!728354) (not e!1044566))))

(declare-fun lt!589413 () Option!3316)

(assert (=> b!1628739 (= res!728354 (isDefined!2683 lt!589413))))

(declare-fun b!1628740 () Bool)

(declare-fun res!728356 () Bool)

(assert (=> b!1628740 (=> (not res!728356) (not e!1044566))))

(assert (=> b!1628740 (= res!728356 (= (++!4751 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!589413)))) (_2!10119 (get!5150 lt!589413))) (originalCharacters!3959 (h!23257 (t!149059 tokens!457)))))))

(declare-fun b!1628741 () Bool)

(declare-fun e!1044564 () Option!3316)

(declare-fun lt!589410 () Option!3316)

(declare-fun lt!589409 () Option!3316)

(assert (=> b!1628741 (= e!1044564 (ite (and ((_ is None!3315) lt!589410) ((_ is None!3315) lt!589409)) None!3315 (ite ((_ is None!3315) lt!589409) lt!589410 (ite ((_ is None!3315) lt!589410) lt!589409 (ite (>= (size!14278 (_1!10119 (v!24358 lt!589410))) (size!14278 (_1!10119 (v!24358 lt!589409)))) lt!589410 lt!589409)))))))

(declare-fun call!105476 () Option!3316)

(assert (=> b!1628741 (= lt!589410 call!105476)))

(assert (=> b!1628741 (= lt!589409 (maxPrefix!1338 thiss!17113 (t!149058 rules!1846) (originalCharacters!3959 (h!23257 (t!149059 tokens!457)))))))

(declare-fun d!490691 () Bool)

(assert (=> d!490691 e!1044565))

(declare-fun res!728355 () Bool)

(assert (=> d!490691 (=> res!728355 e!1044565)))

(assert (=> d!490691 (= res!728355 (isEmpty!10890 lt!589413))))

(assert (=> d!490691 (= lt!589413 e!1044564)))

(declare-fun c!265186 () Bool)

(assert (=> d!490691 (= c!265186 (and ((_ is Cons!17855) rules!1846) ((_ is Nil!17855) (t!149058 rules!1846))))))

(declare-fun lt!589411 () Unit!28923)

(declare-fun lt!589412 () Unit!28923)

(assert (=> d!490691 (= lt!589411 lt!589412)))

(assert (=> d!490691 (isPrefix!1405 (originalCharacters!3959 (h!23257 (t!149059 tokens!457))) (originalCharacters!3959 (h!23257 (t!149059 tokens!457))))))

(assert (=> d!490691 (= lt!589412 (lemmaIsPrefixRefl!962 (originalCharacters!3959 (h!23257 (t!149059 tokens!457))) (originalCharacters!3959 (h!23257 (t!149059 tokens!457)))))))

(assert (=> d!490691 (rulesValidInductive!974 thiss!17113 rules!1846)))

(assert (=> d!490691 (= (maxPrefix!1338 thiss!17113 rules!1846 (originalCharacters!3959 (h!23257 (t!149059 tokens!457)))) lt!589413)))

(declare-fun b!1628742 () Bool)

(declare-fun res!728357 () Bool)

(assert (=> b!1628742 (=> (not res!728357) (not e!1044566))))

(assert (=> b!1628742 (= res!728357 (matchR!1972 (regex!3145 (rule!4971 (_1!10119 (get!5150 lt!589413)))) (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!589413))))))))

(declare-fun b!1628743 () Bool)

(declare-fun res!728352 () Bool)

(assert (=> b!1628743 (=> (not res!728352) (not e!1044566))))

(assert (=> b!1628743 (= res!728352 (= (value!99305 (_1!10119 (get!5150 lt!589413))) (apply!4575 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!589413)))) (seqFromList!2040 (originalCharacters!3959 (_1!10119 (get!5150 lt!589413)))))))))

(declare-fun b!1628744 () Bool)

(declare-fun res!728353 () Bool)

(assert (=> b!1628744 (=> (not res!728353) (not e!1044566))))

(assert (=> b!1628744 (= res!728353 (= (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!589413)))) (originalCharacters!3959 (_1!10119 (get!5150 lt!589413)))))))

(declare-fun bm!105471 () Bool)

(assert (=> bm!105471 (= call!105476 (maxPrefixOneRule!777 thiss!17113 (h!23256 rules!1846) (originalCharacters!3959 (h!23257 (t!149059 tokens!457)))))))

(declare-fun b!1628745 () Bool)

(assert (=> b!1628745 (= e!1044566 (contains!3120 rules!1846 (rule!4971 (_1!10119 (get!5150 lt!589413)))))))

(declare-fun b!1628746 () Bool)

(assert (=> b!1628746 (= e!1044564 call!105476)))

(declare-fun b!1628747 () Bool)

(declare-fun res!728358 () Bool)

(assert (=> b!1628747 (=> (not res!728358) (not e!1044566))))

(assert (=> b!1628747 (= res!728358 (< (size!14282 (_2!10119 (get!5150 lt!589413))) (size!14282 (originalCharacters!3959 (h!23257 (t!149059 tokens!457))))))))

(assert (= (and d!490691 c!265186) b!1628746))

(assert (= (and d!490691 (not c!265186)) b!1628741))

(assert (= (or b!1628746 b!1628741) bm!105471))

(assert (= (and d!490691 (not res!728355)) b!1628739))

(assert (= (and b!1628739 res!728354) b!1628744))

(assert (= (and b!1628744 res!728353) b!1628747))

(assert (= (and b!1628747 res!728358) b!1628740))

(assert (= (and b!1628740 res!728356) b!1628743))

(assert (= (and b!1628743 res!728352) b!1628742))

(assert (= (and b!1628742 res!728357) b!1628745))

(declare-fun m!1959389 () Bool)

(assert (=> b!1628741 m!1959389))

(declare-fun m!1959391 () Bool)

(assert (=> b!1628747 m!1959391))

(declare-fun m!1959393 () Bool)

(assert (=> b!1628747 m!1959393))

(declare-fun m!1959395 () Bool)

(assert (=> b!1628747 m!1959395))

(assert (=> b!1628742 m!1959391))

(declare-fun m!1959397 () Bool)

(assert (=> b!1628742 m!1959397))

(assert (=> b!1628742 m!1959397))

(declare-fun m!1959399 () Bool)

(assert (=> b!1628742 m!1959399))

(assert (=> b!1628742 m!1959399))

(declare-fun m!1959401 () Bool)

(assert (=> b!1628742 m!1959401))

(assert (=> b!1628745 m!1959391))

(declare-fun m!1959403 () Bool)

(assert (=> b!1628745 m!1959403))

(declare-fun m!1959405 () Bool)

(assert (=> d!490691 m!1959405))

(declare-fun m!1959407 () Bool)

(assert (=> d!490691 m!1959407))

(declare-fun m!1959409 () Bool)

(assert (=> d!490691 m!1959409))

(assert (=> d!490691 m!1955653))

(assert (=> b!1628743 m!1959391))

(declare-fun m!1959411 () Bool)

(assert (=> b!1628743 m!1959411))

(assert (=> b!1628743 m!1959411))

(declare-fun m!1959413 () Bool)

(assert (=> b!1628743 m!1959413))

(assert (=> b!1628744 m!1959391))

(assert (=> b!1628744 m!1959397))

(assert (=> b!1628744 m!1959397))

(assert (=> b!1628744 m!1959399))

(declare-fun m!1959415 () Bool)

(assert (=> bm!105471 m!1959415))

(declare-fun m!1959417 () Bool)

(assert (=> b!1628739 m!1959417))

(assert (=> b!1628740 m!1959391))

(assert (=> b!1628740 m!1959397))

(assert (=> b!1628740 m!1959397))

(assert (=> b!1628740 m!1959399))

(assert (=> b!1628740 m!1959399))

(declare-fun m!1959419 () Bool)

(assert (=> b!1628740 m!1959419))

(assert (=> b!1626499 d!490691))

(declare-fun b!1628766 () Bool)

(declare-fun e!1044585 () Bool)

(declare-fun e!1044587 () Bool)

(assert (=> b!1628766 (= e!1044585 e!1044587)))

(declare-fun res!728377 () Bool)

(assert (=> b!1628766 (=> (not res!728377) (not e!1044587))))

(assert (=> b!1628766 (= res!728377 (not ((_ is Nil!17854) (++!4751 lt!588158 lt!588163))))))

(declare-fun b!1628768 () Bool)

(assert (=> b!1628768 (= e!1044587 (isPrefix!1405 (tail!2367 lt!588158) (tail!2367 (++!4751 lt!588158 lt!588163))))))

(declare-fun b!1628767 () Bool)

(declare-fun res!728380 () Bool)

(assert (=> b!1628767 (=> (not res!728380) (not e!1044587))))

(assert (=> b!1628767 (= res!728380 (= (head!3449 lt!588158) (head!3449 (++!4751 lt!588158 lt!588163))))))

(declare-fun d!490693 () Bool)

(declare-fun e!1044586 () Bool)

(assert (=> d!490693 e!1044586))

(declare-fun res!728378 () Bool)

(assert (=> d!490693 (=> res!728378 e!1044586)))

(declare-fun lt!589414 () Bool)

(assert (=> d!490693 (= res!728378 (not lt!589414))))

(assert (=> d!490693 (= lt!589414 e!1044585)))

(declare-fun res!728379 () Bool)

(assert (=> d!490693 (=> res!728379 e!1044585)))

(assert (=> d!490693 (= res!728379 ((_ is Nil!17854) lt!588158))))

(assert (=> d!490693 (= (isPrefix!1405 lt!588158 (++!4751 lt!588158 lt!588163)) lt!589414)))

(declare-fun b!1628769 () Bool)

(assert (=> b!1628769 (= e!1044586 (>= (size!14282 (++!4751 lt!588158 lt!588163)) (size!14282 lt!588158)))))

(assert (= (and d!490693 (not res!728379)) b!1628766))

(assert (= (and b!1628766 res!728377) b!1628767))

(assert (= (and b!1628767 res!728380) b!1628768))

(assert (= (and d!490693 (not res!728378)) b!1628769))

(declare-fun m!1959421 () Bool)

(assert (=> b!1628768 m!1959421))

(assert (=> b!1628768 m!1955265))

(declare-fun m!1959423 () Bool)

(assert (=> b!1628768 m!1959423))

(assert (=> b!1628768 m!1959421))

(assert (=> b!1628768 m!1959423))

(declare-fun m!1959425 () Bool)

(assert (=> b!1628768 m!1959425))

(declare-fun m!1959427 () Bool)

(assert (=> b!1628767 m!1959427))

(assert (=> b!1628767 m!1955265))

(declare-fun m!1959429 () Bool)

(assert (=> b!1628767 m!1959429))

(assert (=> b!1628769 m!1955265))

(declare-fun m!1959431 () Bool)

(assert (=> b!1628769 m!1959431))

(assert (=> b!1628769 m!1959131))

(assert (=> b!1626499 d!490693))

(declare-fun b!1628968 () Bool)

(declare-fun e!1044693 () Unit!28923)

(declare-fun Unit!28991 () Unit!28923)

(assert (=> b!1628968 (= e!1044693 Unit!28991)))

(declare-fun c!265238 () Bool)

(declare-fun lt!589698 () Token!5856)

(declare-fun getIndex!97 (List!17925 Rule!6090) Int)

(assert (=> b!1628968 (= c!265238 (< (getIndex!97 rules!1846 (rule!4971 (h!23257 (t!149059 tokens!457)))) (getIndex!97 rules!1846 (rule!4971 lt!589698))))))

(declare-fun lt!589721 () Unit!28923)

(declare-fun e!1044695 () Unit!28923)

(assert (=> b!1628968 (= lt!589721 e!1044695)))

(declare-fun c!265239 () Bool)

(assert (=> b!1628968 (= c!265239 (< (getIndex!97 rules!1846 (rule!4971 lt!589698)) (getIndex!97 rules!1846 (rule!4971 (h!23257 (t!149059 tokens!457))))))))

(declare-fun lt!589729 () Unit!28923)

(declare-fun e!1044696 () Unit!28923)

(assert (=> b!1628968 (= lt!589729 e!1044696)))

(declare-fun c!265235 () Bool)

(assert (=> b!1628968 (= c!265235 (= (getIndex!97 rules!1846 (rule!4971 lt!589698)) (getIndex!97 rules!1846 (rule!4971 (h!23257 (t!149059 tokens!457))))))))

(declare-fun lt!589723 () Unit!28923)

(declare-fun e!1044692 () Unit!28923)

(assert (=> b!1628968 (= lt!589723 e!1044692)))

(assert (=> b!1628968 false))

(declare-fun b!1628969 () Bool)

(declare-fun e!1044690 () Unit!28923)

(declare-fun Unit!28992 () Unit!28923)

(assert (=> b!1628969 (= e!1044690 Unit!28992)))

(declare-fun b!1628970 () Bool)

(declare-fun Unit!28993 () Unit!28923)

(assert (=> b!1628970 (= e!1044692 Unit!28993)))

(declare-fun b!1628971 () Bool)

(declare-fun Unit!28994 () Unit!28923)

(assert (=> b!1628971 (= e!1044693 Unit!28994)))

(declare-fun e!1044691 () Bool)

(declare-fun b!1628972 () Bool)

(assert (=> b!1628972 (= e!1044691 (= (rule!4971 lt!589698) (get!5153 (getRuleFromTag!286 thiss!17113 rules!1846 (tag!3423 (rule!4971 lt!589698))))))))

(declare-fun b!1628973 () Bool)

(assert (=> b!1628973 false))

(declare-fun lt!589720 () Unit!28923)

(declare-fun lt!589726 () Unit!28923)

(assert (=> b!1628973 (= lt!589720 lt!589726)))

(declare-fun lt!589735 () List!17924)

(assert (=> b!1628973 (not (matchR!1972 (regex!3145 (rule!4971 (h!23257 (t!149059 tokens!457)))) lt!589735))))

(declare-fun lt!589737 () List!17924)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!69 (LexerInterface!2774 List!17925 Rule!6090 List!17924 List!17924 Rule!6090) Unit!28923)

(assert (=> b!1628973 (= lt!589726 (lemmaMaxPrefNoSmallerRuleMatches!69 thiss!17113 rules!1846 (rule!4971 lt!589698) lt!589735 lt!589737 (rule!4971 (h!23257 (t!149059 tokens!457)))))))

(assert (=> b!1628973 (= lt!589735 (list!7011 (charsOf!1794 lt!589698)))))

(declare-fun Unit!28995 () Unit!28923)

(assert (=> b!1628973 (= e!1044695 Unit!28995)))

(declare-fun b!1628974 () Bool)

(declare-fun Unit!28996 () Unit!28923)

(assert (=> b!1628974 (= e!1044696 Unit!28996)))

(declare-fun b!1628975 () Bool)

(assert (=> b!1628975 false))

(declare-fun lt!589715 () Unit!28923)

(declare-fun lt!589725 () Unit!28923)

(assert (=> b!1628975 (= lt!589715 lt!589725)))

(declare-fun lt!589683 () List!17924)

(assert (=> b!1628975 (not (matchR!1972 (regex!3145 (rule!4971 lt!589698)) lt!589683))))

(assert (=> b!1628975 (= lt!589725 (lemmaMaxPrefNoSmallerRuleMatches!69 thiss!17113 rules!1846 (rule!4971 (h!23257 (t!149059 tokens!457))) lt!589683 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457)))) (rule!4971 lt!589698)))))

(assert (=> b!1628975 (= lt!589683 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457)))))))

(declare-fun Unit!28997 () Unit!28923)

(assert (=> b!1628975 (= e!1044696 Unit!28997)))

(declare-fun d!490695 () Bool)

(assert (=> d!490695 (= (maxPrefix!1338 thiss!17113 rules!1846 (++!4751 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457)))) (list!7011 lt!588149))) (Some!3315 (tuple2!17435 (h!23257 (t!149059 tokens!457)) (list!7011 lt!588149))))))

(declare-fun lt!589730 () Unit!28923)

(declare-fun Unit!28998 () Unit!28923)

(assert (=> d!490695 (= lt!589730 Unit!28998)))

(declare-fun lt!589710 () Unit!28923)

(assert (=> d!490695 (= lt!589710 e!1044693)))

(declare-fun c!265234 () Bool)

(assert (=> d!490695 (= c!265234 (not (= (rule!4971 lt!589698) (rule!4971 (h!23257 (t!149059 tokens!457))))))))

(declare-fun lt!589728 () Unit!28923)

(declare-fun lt!589684 () Unit!28923)

(assert (=> d!490695 (= lt!589728 lt!589684)))

(declare-fun lt!589718 () List!17924)

(assert (=> d!490695 (= (list!7011 lt!588149) lt!589718)))

(declare-fun lemmaSamePrefixThenSameSuffix!651 (List!17924 List!17924 List!17924 List!17924 List!17924) Unit!28923)

(assert (=> d!490695 (= lt!589684 (lemmaSamePrefixThenSameSuffix!651 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457)))) (list!7011 lt!588149) (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457)))) lt!589718 lt!589737))))

(declare-fun lt!589716 () Unit!28923)

(declare-fun lt!589689 () Unit!28923)

(assert (=> d!490695 (= lt!589716 lt!589689)))

(declare-fun lt!589734 () List!17924)

(declare-fun lt!589724 () List!17924)

(assert (=> d!490695 (= lt!589734 lt!589724)))

(declare-fun lemmaIsPrefixSameLengthThenSameList!153 (List!17924 List!17924 List!17924) Unit!28923)

(assert (=> d!490695 (= lt!589689 (lemmaIsPrefixSameLengthThenSameList!153 lt!589734 lt!589724 lt!589737))))

(assert (=> d!490695 (= lt!589724 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457)))))))

(assert (=> d!490695 (= lt!589734 (list!7011 (charsOf!1794 lt!589698)))))

(declare-fun lt!589678 () Unit!28923)

(declare-fun e!1044694 () Unit!28923)

(assert (=> d!490695 (= lt!589678 e!1044694)))

(declare-fun c!265237 () Bool)

(assert (=> d!490695 (= c!265237 (< (size!14284 (charsOf!1794 lt!589698)) (size!14284 (charsOf!1794 (h!23257 (t!149059 tokens!457))))))))

(declare-fun lt!589692 () Unit!28923)

(assert (=> d!490695 (= lt!589692 e!1044690)))

(declare-fun c!265236 () Bool)

(assert (=> d!490695 (= c!265236 (> (size!14284 (charsOf!1794 lt!589698)) (size!14284 (charsOf!1794 (h!23257 (t!149059 tokens!457))))))))

(declare-fun lt!589682 () Unit!28923)

(declare-fun lt!589744 () Unit!28923)

(assert (=> d!490695 (= lt!589682 lt!589744)))

(assert (=> d!490695 (matchR!1972 (rulesRegex!535 thiss!17113 rules!1846) (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457)))))))

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!29 (LexerInterface!2774 List!17925 List!17924 Token!5856 Rule!6090 List!17924) Unit!28923)

(assert (=> d!490695 (= lt!589744 (lemmaMaxPrefixThenMatchesRulesRegex!29 thiss!17113 rules!1846 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457)))) (h!23257 (t!149059 tokens!457)) (rule!4971 (h!23257 (t!149059 tokens!457))) Nil!17854))))

(declare-fun lt!589696 () Unit!28923)

(declare-fun lt!589727 () Unit!28923)

(assert (=> d!490695 (= lt!589696 lt!589727)))

(declare-fun lt!589742 () List!17924)

(assert (=> d!490695 (= lt!589718 lt!589742)))

(declare-fun lt!589687 () List!17924)

(declare-fun lt!589704 () List!17924)

(assert (=> d!490695 (= lt!589727 (lemmaSamePrefixThenSameSuffix!651 lt!589687 lt!589718 lt!589704 lt!589742 lt!589737))))

(declare-fun getSuffix!699 (List!17924 List!17924) List!17924)

(assert (=> d!490695 (= lt!589742 (getSuffix!699 lt!589737 (list!7011 (charsOf!1794 lt!589698))))))

(assert (=> d!490695 (= lt!589704 (list!7011 (charsOf!1794 lt!589698)))))

(assert (=> d!490695 (= lt!589687 (list!7011 (charsOf!1794 lt!589698)))))

(declare-fun lt!589731 () Unit!28923)

(declare-fun lt!589738 () Unit!28923)

(assert (=> d!490695 (= lt!589731 lt!589738)))

(declare-fun lt!589712 () List!17924)

(assert (=> d!490695 (= (maxPrefixOneRule!777 thiss!17113 (rule!4971 lt!589698) lt!589737) (Some!3315 (tuple2!17435 (Token!5857 (apply!4575 (transformation!3145 (rule!4971 lt!589698)) (seqFromList!2040 lt!589712)) (rule!4971 lt!589698) (size!14282 lt!589712) lt!589712) lt!589718)))))

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!219 (LexerInterface!2774 List!17925 List!17924 List!17924 List!17924 Rule!6090) Unit!28923)

(assert (=> d!490695 (= lt!589738 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!219 thiss!17113 rules!1846 lt!589712 lt!589737 lt!589718 (rule!4971 lt!589698)))))

(assert (=> d!490695 (= lt!589712 (list!7011 (charsOf!1794 lt!589698)))))

(declare-fun lt!589717 () Unit!28923)

(declare-fun lemmaCharactersSize!325 (Token!5856) Unit!28923)

(assert (=> d!490695 (= lt!589717 (lemmaCharactersSize!325 lt!589698))))

(declare-fun lt!589688 () Unit!28923)

(assert (=> d!490695 (= lt!589688 (lemmaEqSameImage!179 (transformation!3145 (rule!4971 lt!589698)) (charsOf!1794 lt!589698) (seqFromList!2040 (originalCharacters!3959 lt!589698))))))

(declare-fun lt!589733 () Unit!28923)

(assert (=> d!490695 (= lt!589733 (lemmaSemiInverse!394 (transformation!3145 (rule!4971 lt!589698)) (charsOf!1794 lt!589698)))))

(declare-fun lt!589740 () Unit!28923)

(assert (=> d!490695 (= lt!589740 (lemmaInv!459 (transformation!3145 (rule!4971 lt!589698))))))

(declare-fun lt!589699 () Unit!28923)

(declare-fun lt!589707 () Unit!28923)

(assert (=> d!490695 (= lt!589699 lt!589707)))

(declare-fun lt!589719 () List!17924)

(assert (=> d!490695 (isPrefix!1405 lt!589719 (++!4751 lt!589719 lt!589718))))

(assert (=> d!490695 (= lt!589707 (lemmaConcatTwoListThenFirstIsPrefix!930 lt!589719 lt!589718))))

(assert (=> d!490695 (= lt!589719 (list!7011 (charsOf!1794 lt!589698)))))

(declare-fun lt!589685 () Unit!28923)

(declare-fun lt!589694 () Unit!28923)

(assert (=> d!490695 (= lt!589685 lt!589694)))

(assert (=> d!490695 e!1044691))

(declare-fun res!728485 () Bool)

(assert (=> d!490695 (=> (not res!728485) (not e!1044691))))

(assert (=> d!490695 (= res!728485 (isDefined!2685 (getRuleFromTag!286 thiss!17113 rules!1846 (tag!3423 (rule!4971 lt!589698)))))))

(assert (=> d!490695 (= lt!589694 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!286 thiss!17113 rules!1846 lt!589737 lt!589698))))

(declare-fun lt!589691 () Option!3316)

(assert (=> d!490695 (= lt!589718 (_2!10119 (get!5150 lt!589691)))))

(assert (=> d!490695 (= lt!589698 (_1!10119 (get!5150 lt!589691)))))

(declare-fun lt!589701 () Unit!28923)

(assert (=> d!490695 (= lt!589701 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!348 thiss!17113 rules!1846 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457)))) (list!7011 lt!588149)))))

(assert (=> d!490695 (= lt!589691 (maxPrefix!1338 thiss!17113 rules!1846 lt!589737))))

(declare-fun lt!589709 () Unit!28923)

(declare-fun lt!589741 () Unit!28923)

(assert (=> d!490695 (= lt!589709 lt!589741)))

(declare-fun lt!589736 () List!17924)

(assert (=> d!490695 (isPrefix!1405 lt!589736 (++!4751 lt!589736 (list!7011 lt!588149)))))

(assert (=> d!490695 (= lt!589741 (lemmaConcatTwoListThenFirstIsPrefix!930 lt!589736 (list!7011 lt!588149)))))

(assert (=> d!490695 (= lt!589736 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457)))))))

(assert (=> d!490695 (= lt!589737 (++!4751 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457)))) (list!7011 lt!588149)))))

(assert (=> d!490695 (not (isEmpty!10883 rules!1846))))

(assert (=> d!490695 (= (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!111 thiss!17113 rules!1846 (h!23257 (t!149059 tokens!457)) (rule!4971 (h!23257 (t!149059 tokens!457))) (list!7011 lt!588149)) lt!589730)))

(declare-fun b!1628976 () Bool)

(assert (=> b!1628976 false))

(declare-fun lt!589676 () Unit!28923)

(declare-fun lt!589680 () Unit!28923)

(assert (=> b!1628976 (= lt!589676 lt!589680)))

(assert (=> b!1628976 (= (rule!4971 lt!589698) (rule!4971 (h!23257 (t!149059 tokens!457))))))

(declare-fun lemmaSameIndexThenSameElement!45 (List!17925 Rule!6090 Rule!6090) Unit!28923)

(assert (=> b!1628976 (= lt!589680 (lemmaSameIndexThenSameElement!45 rules!1846 (rule!4971 lt!589698) (rule!4971 (h!23257 (t!149059 tokens!457)))))))

(declare-fun Unit!28999 () Unit!28923)

(assert (=> b!1628976 (= e!1044692 Unit!28999)))

(declare-fun b!1628977 () Bool)

(declare-fun Unit!29000 () Unit!28923)

(assert (=> b!1628977 (= e!1044695 Unit!29000)))

(declare-fun b!1628978 () Bool)

(declare-fun res!728484 () Bool)

(assert (=> b!1628978 (=> (not res!728484) (not e!1044691))))

(assert (=> b!1628978 (= res!728484 (matchR!1972 (regex!3145 (get!5153 (getRuleFromTag!286 thiss!17113 rules!1846 (tag!3423 (rule!4971 lt!589698))))) (list!7011 (charsOf!1794 lt!589698))))))

(declare-fun b!1628979 () Bool)

(declare-fun Unit!29001 () Unit!28923)

(assert (=> b!1628979 (= e!1044694 Unit!29001)))

(declare-fun b!1628980 () Bool)

(declare-fun Unit!29002 () Unit!28923)

(assert (=> b!1628980 (= e!1044690 Unit!29002)))

(declare-fun lt!589693 () Unit!28923)

(assert (=> b!1628980 (= lt!589693 (lemmaMaxPrefixThenMatchesRulesRegex!29 thiss!17113 rules!1846 lt!589737 lt!589698 (rule!4971 lt!589698) lt!589718))))

(assert (=> b!1628980 (matchR!1972 (rulesRegex!535 thiss!17113 rules!1846) (list!7011 (charsOf!1794 lt!589698)))))

(declare-fun lt!589722 () Unit!28923)

(assert (=> b!1628980 (= lt!589722 lt!589693)))

(declare-fun lt!589690 () List!17924)

(assert (=> b!1628980 (= lt!589690 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457)))))))

(declare-fun lt!589713 () List!17924)

(assert (=> b!1628980 (= lt!589713 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457)))))))

(declare-fun lt!589675 () List!17924)

(assert (=> b!1628980 (= lt!589675 (getSuffix!699 lt!589737 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457))))))))

(declare-fun lt!589677 () Unit!28923)

(assert (=> b!1628980 (= lt!589677 (lemmaSamePrefixThenSameSuffix!651 lt!589690 (list!7011 lt!588149) lt!589713 lt!589675 lt!589737))))

(assert (=> b!1628980 (= (list!7011 lt!588149) lt!589675)))

(declare-fun lt!589674 () Unit!28923)

(assert (=> b!1628980 (= lt!589674 lt!589677)))

(declare-fun lt!589739 () List!17924)

(assert (=> b!1628980 (= lt!589739 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457)))))))

(declare-fun lt!589679 () Unit!28923)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!142 (List!17924 List!17924) Unit!28923)

(assert (=> b!1628980 (= lt!589679 (lemmaAddHeadSuffixToPrefixStillPrefix!142 lt!589739 lt!589737))))

(assert (=> b!1628980 (isPrefix!1405 (++!4751 lt!589739 (Cons!17854 (head!3449 (getSuffix!699 lt!589737 lt!589739)) Nil!17854)) lt!589737)))

(declare-fun lt!589708 () Unit!28923)

(assert (=> b!1628980 (= lt!589708 lt!589679)))

(declare-fun lt!589703 () List!17924)

(assert (=> b!1628980 (= lt!589703 (list!7011 (charsOf!1794 lt!589698)))))

(declare-fun lt!589714 () List!17924)

(assert (=> b!1628980 (= lt!589714 (++!4751 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457)))) (Cons!17854 (head!3449 (list!7011 lt!588149)) Nil!17854)))))

(declare-fun lt!589686 () Unit!28923)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!29 (List!17924 List!17924 List!17924) Unit!28923)

(assert (=> b!1628980 (= lt!589686 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!29 lt!589703 lt!589714 lt!589737))))

(assert (=> b!1628980 (isPrefix!1405 lt!589714 lt!589703)))

(declare-fun lt!589700 () Unit!28923)

(assert (=> b!1628980 (= lt!589700 lt!589686)))

(declare-fun lt!589743 () Regex!4473)

(assert (=> b!1628980 (= lt!589743 (rulesRegex!535 thiss!17113 rules!1846))))

(declare-fun lt!589706 () List!17924)

(assert (=> b!1628980 (= lt!589706 (++!4751 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457)))) (Cons!17854 (head!3449 (list!7011 lt!588149)) Nil!17854)))))

(declare-fun lt!589705 () List!17924)

(assert (=> b!1628980 (= lt!589705 (list!7011 (charsOf!1794 lt!589698)))))

(declare-fun lt!589695 () Unit!28923)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!30 (Regex!4473 List!17924 List!17924) Unit!28923)

(assert (=> b!1628980 (= lt!589695 (lemmaNotPrefixMatchThenCannotMatchLonger!30 lt!589743 lt!589706 lt!589705))))

(assert (=> b!1628980 (not (matchR!1972 lt!589743 lt!589705))))

(declare-fun lt!589702 () Unit!28923)

(assert (=> b!1628980 (= lt!589702 lt!589695)))

(assert (=> b!1628980 false))

(declare-fun b!1628981 () Bool)

(declare-fun Unit!29003 () Unit!28923)

(assert (=> b!1628981 (= e!1044694 Unit!29003)))

(declare-fun lt!589711 () List!17924)

(assert (=> b!1628981 (= lt!589711 (list!7011 (charsOf!1794 lt!589698)))))

(declare-fun lt!589732 () List!17924)

(assert (=> b!1628981 (= lt!589732 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457)))))))

(declare-fun lt!589697 () Unit!28923)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!119 (LexerInterface!2774 List!17925 Rule!6090 List!17924 List!17924 List!17924 Rule!6090) Unit!28923)

(assert (=> b!1628981 (= lt!589697 (lemmaMaxPrefixOutputsMaxPrefix!119 thiss!17113 rules!1846 (rule!4971 lt!589698) lt!589711 lt!589737 lt!589732 (rule!4971 (h!23257 (t!149059 tokens!457)))))))

(assert (=> b!1628981 (not (matchR!1972 (regex!3145 (rule!4971 (h!23257 (t!149059 tokens!457)))) lt!589732))))

(declare-fun lt!589681 () Unit!28923)

(assert (=> b!1628981 (= lt!589681 lt!589697)))

(assert (=> b!1628981 false))

(assert (= (and d!490695 res!728485) b!1628978))

(assert (= (and b!1628978 res!728484) b!1628972))

(assert (= (and d!490695 c!265236) b!1628980))

(assert (= (and d!490695 (not c!265236)) b!1628969))

(assert (= (and d!490695 c!265237) b!1628981))

(assert (= (and d!490695 (not c!265237)) b!1628979))

(assert (= (and d!490695 c!265234) b!1628968))

(assert (= (and d!490695 (not c!265234)) b!1628971))

(assert (= (and b!1628968 c!265238) b!1628973))

(assert (= (and b!1628968 (not c!265238)) b!1628977))

(assert (= (and b!1628968 c!265239) b!1628975))

(assert (= (and b!1628968 (not c!265239)) b!1628974))

(assert (= (and b!1628968 c!265235) b!1628976))

(assert (= (and b!1628968 (not c!265235)) b!1628970))

(declare-fun m!1960061 () Bool)

(assert (=> b!1628980 m!1960061))

(declare-fun m!1960063 () Bool)

(assert (=> b!1628980 m!1960063))

(assert (=> b!1628980 m!1954977))

(declare-fun m!1960065 () Bool)

(assert (=> b!1628980 m!1960065))

(declare-fun m!1960067 () Bool)

(assert (=> b!1628980 m!1960067))

(declare-fun m!1960069 () Bool)

(assert (=> b!1628980 m!1960069))

(declare-fun m!1960071 () Bool)

(assert (=> b!1628980 m!1960071))

(assert (=> b!1628980 m!1955231))

(declare-fun m!1960073 () Bool)

(assert (=> b!1628980 m!1960073))

(assert (=> b!1628980 m!1955225))

(assert (=> b!1628980 m!1955227))

(assert (=> b!1628980 m!1954987))

(assert (=> b!1628980 m!1955231))

(assert (=> b!1628980 m!1955231))

(declare-fun m!1960075 () Bool)

(assert (=> b!1628980 m!1960075))

(declare-fun m!1960077 () Bool)

(assert (=> b!1628980 m!1960077))

(assert (=> b!1628980 m!1954977))

(assert (=> b!1628980 m!1960071))

(declare-fun m!1960079 () Bool)

(assert (=> b!1628980 m!1960079))

(assert (=> b!1628980 m!1955225))

(declare-fun m!1960081 () Bool)

(assert (=> b!1628980 m!1960081))

(declare-fun m!1960083 () Bool)

(assert (=> b!1628980 m!1960083))

(assert (=> b!1628980 m!1960061))

(assert (=> b!1628980 m!1960065))

(declare-fun m!1960085 () Bool)

(assert (=> b!1628980 m!1960085))

(assert (=> b!1628980 m!1960069))

(declare-fun m!1960087 () Bool)

(assert (=> b!1628980 m!1960087))

(declare-fun m!1960089 () Bool)

(assert (=> b!1628980 m!1960089))

(declare-fun m!1960091 () Bool)

(assert (=> b!1628980 m!1960091))

(assert (=> b!1628980 m!1954987))

(declare-fun m!1960093 () Bool)

(assert (=> b!1628976 m!1960093))

(declare-fun m!1960095 () Bool)

(assert (=> b!1628973 m!1960095))

(declare-fun m!1960097 () Bool)

(assert (=> b!1628973 m!1960097))

(assert (=> b!1628973 m!1960069))

(assert (=> b!1628973 m!1960069))

(assert (=> b!1628973 m!1960071))

(declare-fun m!1960099 () Bool)

(assert (=> b!1628972 m!1960099))

(assert (=> b!1628972 m!1960099))

(declare-fun m!1960101 () Bool)

(assert (=> b!1628972 m!1960101))

(assert (=> b!1628981 m!1960069))

(assert (=> b!1628981 m!1960071))

(declare-fun m!1960103 () Bool)

(assert (=> b!1628981 m!1960103))

(assert (=> b!1628981 m!1954987))

(assert (=> b!1628981 m!1954987))

(assert (=> b!1628981 m!1955231))

(assert (=> b!1628981 m!1960069))

(declare-fun m!1960105 () Bool)

(assert (=> b!1628981 m!1960105))

(declare-fun m!1960107 () Bool)

(assert (=> b!1628975 m!1960107))

(assert (=> b!1628975 m!1954987))

(assert (=> b!1628975 m!1954987))

(assert (=> b!1628975 m!1955231))

(assert (=> b!1628975 m!1955231))

(declare-fun m!1960109 () Bool)

(assert (=> b!1628975 m!1960109))

(assert (=> d!490695 m!1955231))

(assert (=> d!490695 m!1955225))

(assert (=> d!490695 m!1955263))

(declare-fun m!1960111 () Bool)

(assert (=> d!490695 m!1960111))

(assert (=> d!490695 m!1954977))

(assert (=> d!490695 m!1955225))

(declare-fun m!1960113 () Bool)

(assert (=> d!490695 m!1960113))

(declare-fun m!1960115 () Bool)

(assert (=> d!490695 m!1960115))

(declare-fun m!1960117 () Bool)

(assert (=> d!490695 m!1960117))

(assert (=> d!490695 m!1960069))

(assert (=> d!490695 m!1960113))

(declare-fun m!1960119 () Bool)

(assert (=> d!490695 m!1960119))

(declare-fun m!1960121 () Bool)

(assert (=> d!490695 m!1960121))

(assert (=> d!490695 m!1955231))

(declare-fun m!1960123 () Bool)

(assert (=> d!490695 m!1960123))

(declare-fun m!1960125 () Bool)

(assert (=> d!490695 m!1960125))

(declare-fun m!1960127 () Bool)

(assert (=> d!490695 m!1960127))

(declare-fun m!1960129 () Bool)

(assert (=> d!490695 m!1960129))

(assert (=> d!490695 m!1954901))

(assert (=> d!490695 m!1955231))

(assert (=> d!490695 m!1955225))

(assert (=> d!490695 m!1959163))

(assert (=> d!490695 m!1960117))

(declare-fun m!1960131 () Bool)

(assert (=> d!490695 m!1960131))

(assert (=> d!490695 m!1954987))

(assert (=> d!490695 m!1955449))

(assert (=> d!490695 m!1960069))

(declare-fun m!1960133 () Bool)

(assert (=> d!490695 m!1960133))

(declare-fun m!1960135 () Bool)

(assert (=> d!490695 m!1960135))

(assert (=> d!490695 m!1960069))

(assert (=> d!490695 m!1960071))

(assert (=> d!490695 m!1954977))

(assert (=> d!490695 m!1955231))

(declare-fun m!1960137 () Bool)

(assert (=> d!490695 m!1960137))

(assert (=> d!490695 m!1955225))

(declare-fun m!1960139 () Bool)

(assert (=> d!490695 m!1960139))

(declare-fun m!1960141 () Bool)

(assert (=> d!490695 m!1960141))

(assert (=> d!490695 m!1954987))

(assert (=> d!490695 m!1960071))

(declare-fun m!1960143 () Bool)

(assert (=> d!490695 m!1960143))

(declare-fun m!1960145 () Bool)

(assert (=> d!490695 m!1960145))

(assert (=> d!490695 m!1955231))

(assert (=> d!490695 m!1955225))

(assert (=> d!490695 m!1955231))

(declare-fun m!1960147 () Bool)

(assert (=> d!490695 m!1960147))

(assert (=> d!490695 m!1959163))

(assert (=> d!490695 m!1959173))

(declare-fun m!1960149 () Bool)

(assert (=> d!490695 m!1960149))

(assert (=> d!490695 m!1960069))

(declare-fun m!1960151 () Bool)

(assert (=> d!490695 m!1960151))

(assert (=> d!490695 m!1954987))

(assert (=> d!490695 m!1955231))

(declare-fun m!1960153 () Bool)

(assert (=> d!490695 m!1960153))

(assert (=> d!490695 m!1960069))

(assert (=> d!490695 m!1960127))

(declare-fun m!1960155 () Bool)

(assert (=> d!490695 m!1960155))

(assert (=> d!490695 m!1960099))

(declare-fun m!1960157 () Bool)

(assert (=> d!490695 m!1960157))

(assert (=> d!490695 m!1960099))

(assert (=> d!490695 m!1960115))

(declare-fun m!1960159 () Bool)

(assert (=> d!490695 m!1960159))

(declare-fun m!1960161 () Bool)

(assert (=> d!490695 m!1960161))

(declare-fun m!1960163 () Bool)

(assert (=> d!490695 m!1960163))

(assert (=> b!1628978 m!1960099))

(assert (=> b!1628978 m!1960101))

(assert (=> b!1628978 m!1960069))

(assert (=> b!1628978 m!1960099))

(assert (=> b!1628978 m!1960069))

(assert (=> b!1628978 m!1960071))

(assert (=> b!1628978 m!1960071))

(declare-fun m!1960165 () Bool)

(assert (=> b!1628978 m!1960165))

(declare-fun m!1960167 () Bool)

(assert (=> b!1628968 m!1960167))

(declare-fun m!1960169 () Bool)

(assert (=> b!1628968 m!1960169))

(assert (=> b!1626499 d!490695))

(assert (=> b!1626499 d!489721))

(declare-fun d!490827 () Bool)

(assert (=> d!490827 (= (list!7012 (prepend!673 (seqFromList!2039 (t!149059 (t!149059 (t!149059 tokens!457)))) (h!23257 (t!149059 (t!149059 tokens!457))))) (list!7014 (c!264625 (prepend!673 (seqFromList!2039 (t!149059 (t!149059 (t!149059 tokens!457)))) (h!23257 (t!149059 (t!149059 tokens!457)))))))))

(declare-fun bs!395029 () Bool)

(assert (= bs!395029 d!490827))

(declare-fun m!1960171 () Bool)

(assert (=> bs!395029 m!1960171))

(assert (=> b!1626499 d!490827))

(declare-fun d!490829 () Bool)

(declare-fun e!1044697 () Bool)

(assert (=> d!490829 e!1044697))

(declare-fun res!728486 () Bool)

(assert (=> d!490829 (=> (not res!728486) (not e!1044697))))

(declare-fun lt!589745 () BalanceConc!11820)

(assert (=> d!490829 (= res!728486 (= (list!7011 lt!589745) (Cons!17854 (apply!4568 (charsOf!1794 (h!23257 (t!149059 (t!149059 tokens!457)))) 0) Nil!17854)))))

(assert (=> d!490829 (= lt!589745 (singleton!674 (apply!4568 (charsOf!1794 (h!23257 (t!149059 (t!149059 tokens!457)))) 0)))))

(assert (=> d!490829 (= (singletonSeq!1569 (apply!4568 (charsOf!1794 (h!23257 (t!149059 (t!149059 tokens!457)))) 0)) lt!589745)))

(declare-fun b!1628982 () Bool)

(assert (=> b!1628982 (= e!1044697 (isBalanced!1794 (c!264623 lt!589745)))))

(assert (= (and d!490829 res!728486) b!1628982))

(declare-fun m!1960173 () Bool)

(assert (=> d!490829 m!1960173))

(assert (=> d!490829 m!1955245))

(declare-fun m!1960175 () Bool)

(assert (=> d!490829 m!1960175))

(declare-fun m!1960177 () Bool)

(assert (=> b!1628982 m!1960177))

(assert (=> b!1626499 d!490829))

(assert (=> b!1626725 d!489937))

(declare-fun d!490831 () Bool)

(assert (=> d!490831 (= (apply!4575 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588381)))) (seqFromList!2040 (originalCharacters!3959 (_1!10119 (get!5150 lt!588381))))) (dynLambda!7970 (toValue!4572 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588381))))) (seqFromList!2040 (originalCharacters!3959 (_1!10119 (get!5150 lt!588381))))))))

(declare-fun b_lambda!51289 () Bool)

(assert (=> (not b_lambda!51289) (not d!490831)))

(declare-fun t!149263 () Bool)

(declare-fun tb!93503 () Bool)

(assert (=> (and b!1626382 (= (toValue!4572 (transformation!3145 (rule!4971 (h!23257 tokens!457)))) (toValue!4572 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588381)))))) t!149263) tb!93503))

(declare-fun result!112766 () Bool)

(assert (=> tb!93503 (= result!112766 (inv!21 (dynLambda!7970 (toValue!4572 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588381))))) (seqFromList!2040 (originalCharacters!3959 (_1!10119 (get!5150 lt!588381)))))))))

(declare-fun m!1960179 () Bool)

(assert (=> tb!93503 m!1960179))

(assert (=> d!490831 t!149263))

(declare-fun b_and!115517 () Bool)

(assert (= b_and!115405 (and (=> t!149263 result!112766) b_and!115517)))

(declare-fun t!149265 () Bool)

(declare-fun tb!93505 () Bool)

(assert (=> (and b!1626369 (= (toValue!4572 (transformation!3145 (h!23256 rules!1846))) (toValue!4572 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588381)))))) t!149265) tb!93505))

(declare-fun result!112768 () Bool)

(assert (= result!112768 result!112766))

(assert (=> d!490831 t!149265))

(declare-fun b_and!115519 () Bool)

(assert (= b_and!115407 (and (=> t!149265 result!112768) b_and!115519)))

(declare-fun tb!93507 () Bool)

(declare-fun t!149267 () Bool)

(assert (=> (and b!1627093 (= (toValue!4572 (transformation!3145 (rule!4971 (h!23257 (t!149059 tokens!457))))) (toValue!4572 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588381)))))) t!149267) tb!93507))

(declare-fun result!112770 () Bool)

(assert (= result!112770 result!112766))

(assert (=> d!490831 t!149267))

(declare-fun b_and!115521 () Bool)

(assert (= b_and!115409 (and (=> t!149267 result!112770) b_and!115521)))

(declare-fun t!149269 () Bool)

(declare-fun tb!93509 () Bool)

(assert (=> (and b!1627118 (= (toValue!4572 (transformation!3145 (h!23256 (t!149058 rules!1846)))) (toValue!4572 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588381)))))) t!149269) tb!93509))

(declare-fun result!112772 () Bool)

(assert (= result!112772 result!112766))

(assert (=> d!490831 t!149269))

(declare-fun b_and!115523 () Bool)

(assert (= b_and!115411 (and (=> t!149269 result!112772) b_and!115523)))

(assert (=> d!490831 m!1955771))

(declare-fun m!1960181 () Bool)

(assert (=> d!490831 m!1960181))

(assert (=> b!1626725 d!490831))

(declare-fun d!490833 () Bool)

(assert (=> d!490833 (= (seqFromList!2040 (originalCharacters!3959 (_1!10119 (get!5150 lt!588381)))) (fromListB!897 (originalCharacters!3959 (_1!10119 (get!5150 lt!588381)))))))

(declare-fun bs!395030 () Bool)

(assert (= bs!395030 d!490833))

(declare-fun m!1960183 () Bool)

(assert (=> bs!395030 m!1960183))

(assert (=> b!1626725 d!490833))

(declare-fun d!490835 () Bool)

(declare-fun res!728491 () Bool)

(declare-fun e!1044703 () Bool)

(assert (=> d!490835 (=> res!728491 e!1044703)))

(assert (=> d!490835 (= res!728491 ((_ is Nil!17856) tokens!457))))

(assert (=> d!490835 (= (forall!4086 tokens!457 lambda!67276) e!1044703)))

(declare-fun b!1628987 () Bool)

(declare-fun e!1044704 () Bool)

(assert (=> b!1628987 (= e!1044703 e!1044704)))

(declare-fun res!728492 () Bool)

(assert (=> b!1628987 (=> (not res!728492) (not e!1044704))))

(declare-fun dynLambda!7977 (Int Token!5856) Bool)

(assert (=> b!1628987 (= res!728492 (dynLambda!7977 lambda!67276 (h!23257 tokens!457)))))

(declare-fun b!1628988 () Bool)

(assert (=> b!1628988 (= e!1044704 (forall!4086 (t!149059 tokens!457) lambda!67276))))

(assert (= (and d!490835 (not res!728491)) b!1628987))

(assert (= (and b!1628987 res!728492) b!1628988))

(declare-fun b_lambda!51291 () Bool)

(assert (=> (not b_lambda!51291) (not b!1628987)))

(declare-fun m!1960185 () Bool)

(assert (=> b!1628987 m!1960185))

(declare-fun m!1960187 () Bool)

(assert (=> b!1628988 m!1960187))

(assert (=> d!489795 d!490835))

(assert (=> d!489795 d!489583))

(assert (=> b!1626977 d!489969))

(assert (=> b!1626977 d!490351))

(assert (=> b!1626977 d!490353))

(assert (=> b!1626977 d!490355))

(assert (=> b!1626977 d!490357))

(declare-fun d!490837 () Bool)

(declare-fun lt!589746 () Bool)

(assert (=> d!490837 (= lt!589746 (isEmpty!10888 (list!7012 (_1!10117 lt!588234))))))

(assert (=> d!490837 (= lt!589746 (isEmpty!10889 (c!264625 (_1!10117 lt!588234))))))

(assert (=> d!490837 (= (isEmpty!10882 (_1!10117 lt!588234)) lt!589746)))

(declare-fun bs!395031 () Bool)

(assert (= bs!395031 d!490837))

(assert (=> bs!395031 m!1955429))

(assert (=> bs!395031 m!1955429))

(declare-fun m!1960189 () Bool)

(assert (=> bs!395031 m!1960189))

(declare-fun m!1960191 () Bool)

(assert (=> bs!395031 m!1960191))

(assert (=> b!1626581 d!490837))

(declare-fun d!490839 () Bool)

(declare-fun res!728493 () Bool)

(declare-fun e!1044705 () Bool)

(assert (=> d!490839 (=> (not res!728493) (not e!1044705))))

(assert (=> d!490839 (= res!728493 (not (isEmpty!10881 (originalCharacters!3959 (h!23257 (t!149059 tokens!457))))))))

(assert (=> d!490839 (= (inv!23229 (h!23257 (t!149059 tokens!457))) e!1044705)))

(declare-fun b!1628989 () Bool)

(declare-fun res!728494 () Bool)

(assert (=> b!1628989 (=> (not res!728494) (not e!1044705))))

(assert (=> b!1628989 (= res!728494 (= (originalCharacters!3959 (h!23257 (t!149059 tokens!457))) (list!7011 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 tokens!457))))) (value!99305 (h!23257 (t!149059 tokens!457)))))))))

(declare-fun b!1628990 () Bool)

(assert (=> b!1628990 (= e!1044705 (= (size!14278 (h!23257 (t!149059 tokens!457))) (size!14282 (originalCharacters!3959 (h!23257 (t!149059 tokens!457))))))))

(assert (= (and d!490839 res!728493) b!1628989))

(assert (= (and b!1628989 res!728494) b!1628990))

(declare-fun b_lambda!51293 () Bool)

(assert (=> (not b_lambda!51293) (not b!1628989)))

(assert (=> b!1628989 t!149081))

(declare-fun b_and!115525 () Bool)

(assert (= b_and!115493 (and (=> t!149081 result!112590) b_and!115525)))

(assert (=> b!1628989 t!149083))

(declare-fun b_and!115527 () Bool)

(assert (= b_and!115495 (and (=> t!149083 result!112592) b_and!115527)))

(assert (=> b!1628989 t!149097))

(declare-fun b_and!115529 () Bool)

(assert (= b_and!115497 (and (=> t!149097 result!112616) b_and!115529)))

(assert (=> b!1628989 t!149103))

(declare-fun b_and!115531 () Bool)

(assert (= b_and!115499 (and (=> t!149103 result!112624) b_and!115531)))

(declare-fun m!1960193 () Bool)

(assert (=> d!490839 m!1960193))

(assert (=> b!1628989 m!1956177))

(assert (=> b!1628989 m!1956177))

(declare-fun m!1960195 () Bool)

(assert (=> b!1628989 m!1960195))

(assert (=> b!1628990 m!1959395))

(assert (=> b!1627090 d!490839))

(declare-fun bs!395032 () Bool)

(declare-fun d!490841 () Bool)

(assert (= bs!395032 (and d!490841 d!490029)))

(declare-fun lambda!67331 () Int)

(assert (=> bs!395032 (= (and (= (toChars!4431 (transformation!3145 (rule!4971 (h!23257 tokens!457)))) (toChars!4431 (transformation!3145 (h!23256 rules!1846)))) (= (toValue!4572 (transformation!3145 (rule!4971 (h!23257 tokens!457)))) (toValue!4572 (transformation!3145 (h!23256 rules!1846))))) (= lambda!67331 lambda!67302))))

(declare-fun bs!395033 () Bool)

(assert (= bs!395033 (and d!490841 b!1628090)))

(assert (=> bs!395033 (= (and (= (toChars!4431 (transformation!3145 (rule!4971 (h!23257 tokens!457)))) (toChars!4431 (transformation!3145 (h!23256 rules!1846)))) (= (toValue!4572 (transformation!3145 (rule!4971 (h!23257 tokens!457)))) (toValue!4572 (transformation!3145 (h!23256 rules!1846))))) (= lambda!67331 lambda!67320))))

(assert (=> d!490841 true))

(assert (=> d!490841 (< (dynLambda!7967 order!10595 (toChars!4431 (transformation!3145 (rule!4971 (h!23257 tokens!457))))) (dynLambda!7971 order!10599 lambda!67331))))

(assert (=> d!490841 true))

(assert (=> d!490841 (< (dynLambda!7965 order!10591 (toValue!4572 (transformation!3145 (rule!4971 (h!23257 tokens!457))))) (dynLambda!7971 order!10599 lambda!67331))))

(assert (=> d!490841 (= (semiInverseModEq!1201 (toChars!4431 (transformation!3145 (rule!4971 (h!23257 tokens!457)))) (toValue!4572 (transformation!3145 (rule!4971 (h!23257 tokens!457))))) (Forall!644 lambda!67331))))

(declare-fun bs!395034 () Bool)

(assert (= bs!395034 d!490841))

(declare-fun m!1960197 () Bool)

(assert (=> bs!395034 m!1960197))

(assert (=> d!489645 d!490841))

(declare-fun d!490843 () Bool)

(assert (=> d!490843 (= (list!7011 (_2!10117 lt!588445)) (list!7016 (c!264623 (_2!10117 lt!588445))))))

(declare-fun bs!395035 () Bool)

(assert (= bs!395035 d!490843))

(declare-fun m!1960199 () Bool)

(assert (=> bs!395035 m!1960199))

(assert (=> b!1626802 d!490843))

(assert (=> b!1626802 d!489963))

(assert (=> b!1626802 d!489705))

(declare-fun d!490845 () Bool)

(assert (=> d!490845 (= (isEmpty!10881 (++!4751 lt!587996 lt!587980)) ((_ is Nil!17854) (++!4751 lt!587996 lt!587980)))))

(assert (=> d!489637 d!490845))

(declare-fun d!490847 () Bool)

(declare-fun e!1044707 () Bool)

(assert (=> d!490847 e!1044707))

(declare-fun res!728495 () Bool)

(assert (=> d!490847 (=> (not res!728495) (not e!1044707))))

(declare-fun lt!589747 () List!17924)

(assert (=> d!490847 (= res!728495 (= (content!2476 lt!589747) ((_ map or) (content!2476 (t!149057 (originalCharacters!3959 (h!23257 tokens!457)))) (content!2476 lt!588000))))))

(declare-fun e!1044706 () List!17924)

(assert (=> d!490847 (= lt!589747 e!1044706)))

(declare-fun c!265240 () Bool)

(assert (=> d!490847 (= c!265240 ((_ is Nil!17854) (t!149057 (originalCharacters!3959 (h!23257 tokens!457)))))))

(assert (=> d!490847 (= (++!4751 (t!149057 (originalCharacters!3959 (h!23257 tokens!457))) lt!588000) lt!589747)))

(declare-fun b!1628991 () Bool)

(assert (=> b!1628991 (= e!1044706 lt!588000)))

(declare-fun b!1628993 () Bool)

(declare-fun res!728496 () Bool)

(assert (=> b!1628993 (=> (not res!728496) (not e!1044707))))

(assert (=> b!1628993 (= res!728496 (= (size!14282 lt!589747) (+ (size!14282 (t!149057 (originalCharacters!3959 (h!23257 tokens!457)))) (size!14282 lt!588000))))))

(declare-fun b!1628992 () Bool)

(assert (=> b!1628992 (= e!1044706 (Cons!17854 (h!23255 (t!149057 (originalCharacters!3959 (h!23257 tokens!457)))) (++!4751 (t!149057 (t!149057 (originalCharacters!3959 (h!23257 tokens!457)))) lt!588000)))))

(declare-fun b!1628994 () Bool)

(assert (=> b!1628994 (= e!1044707 (or (not (= lt!588000 Nil!17854)) (= lt!589747 (t!149057 (originalCharacters!3959 (h!23257 tokens!457))))))))

(assert (= (and d!490847 c!265240) b!1628991))

(assert (= (and d!490847 (not c!265240)) b!1628992))

(assert (= (and d!490847 res!728495) b!1628993))

(assert (= (and b!1628993 res!728496) b!1628994))

(declare-fun m!1960201 () Bool)

(assert (=> d!490847 m!1960201))

(declare-fun m!1960203 () Bool)

(assert (=> d!490847 m!1960203))

(assert (=> d!490847 m!1955731))

(declare-fun m!1960205 () Bool)

(assert (=> b!1628993 m!1960205))

(assert (=> b!1628993 m!1957637))

(assert (=> b!1628993 m!1955735))

(declare-fun m!1960207 () Bool)

(assert (=> b!1628992 m!1960207))

(assert (=> b!1626716 d!490847))

(assert (=> d!489701 d!489765))

(declare-fun d!490849 () Bool)

(declare-fun lt!589750 () Bool)

(assert (=> d!490849 (= lt!589750 (prefixMatch!408 (rulesRegex!535 thiss!17113 rules!1846) (list!7011 (++!4752 (charsOf!1794 (h!23257 tokens!457)) (singletonSeq!1569 (apply!4568 (charsOf!1794 (h!23257 (t!149059 tokens!457))) 0))))))))

(assert (=> d!490849 (= lt!589750 (prefixMatchZipperSequence!537 (focus!175 (rulesRegex!535 thiss!17113 rules!1846)) (++!4752 (charsOf!1794 (h!23257 tokens!457)) (singletonSeq!1569 (apply!4568 (charsOf!1794 (h!23257 (t!149059 tokens!457))) 0))) 0))))

(declare-fun lt!589749 () Unit!28923)

(declare-fun lt!589754 () Unit!28923)

(assert (=> d!490849 (= lt!589749 lt!589754)))

(declare-fun lt!589755 () List!17924)

(declare-fun lt!589751 () (InoxSet Context!1738))

(assert (=> d!490849 (= (prefixMatch!408 (rulesRegex!535 thiss!17113 rules!1846) lt!589755) (prefixMatchZipper!154 lt!589751 lt!589755))))

(declare-fun lt!589756 () List!17932)

(assert (=> d!490849 (= lt!589754 (prefixMatchZipperRegexEquiv!154 lt!589751 lt!589756 (rulesRegex!535 thiss!17113 rules!1846) lt!589755))))

(assert (=> d!490849 (= lt!589755 (list!7011 (++!4752 (charsOf!1794 (h!23257 tokens!457)) (singletonSeq!1569 (apply!4568 (charsOf!1794 (h!23257 (t!149059 tokens!457))) 0)))))))

(assert (=> d!490849 (= lt!589756 (toList!915 (focus!175 (rulesRegex!535 thiss!17113 rules!1846))))))

(assert (=> d!490849 (= lt!589751 (focus!175 (rulesRegex!535 thiss!17113 rules!1846)))))

(declare-fun lt!589752 () Unit!28923)

(declare-fun lt!589753 () Unit!28923)

(assert (=> d!490849 (= lt!589752 lt!589753)))

(declare-fun lt!589748 () (InoxSet Context!1738))

(declare-fun lt!589757 () Int)

(assert (=> d!490849 (= (prefixMatchZipper!154 lt!589748 (dropList!612 (++!4752 (charsOf!1794 (h!23257 tokens!457)) (singletonSeq!1569 (apply!4568 (charsOf!1794 (h!23257 (t!149059 tokens!457))) 0))) lt!589757)) (prefixMatchZipperSequence!537 lt!589748 (++!4752 (charsOf!1794 (h!23257 tokens!457)) (singletonSeq!1569 (apply!4568 (charsOf!1794 (h!23257 (t!149059 tokens!457))) 0))) lt!589757))))

(assert (=> d!490849 (= lt!589753 (lemmaprefixMatchZipperSequenceEquivalent!154 lt!589748 (++!4752 (charsOf!1794 (h!23257 tokens!457)) (singletonSeq!1569 (apply!4568 (charsOf!1794 (h!23257 (t!149059 tokens!457))) 0))) lt!589757))))

(assert (=> d!490849 (= lt!589757 0)))

(assert (=> d!490849 (= lt!589748 (focus!175 (rulesRegex!535 thiss!17113 rules!1846)))))

(assert (=> d!490849 (validRegex!1780 (rulesRegex!535 thiss!17113 rules!1846))))

(assert (=> d!490849 (= (prefixMatchZipperSequence!535 (rulesRegex!535 thiss!17113 rules!1846) (++!4752 (charsOf!1794 (h!23257 tokens!457)) (singletonSeq!1569 (apply!4568 (charsOf!1794 (h!23257 (t!149059 tokens!457))) 0)))) lt!589750)))

(declare-fun bs!395036 () Bool)

(assert (= bs!395036 d!490849))

(assert (=> bs!395036 m!1955871))

(declare-fun m!1960209 () Bool)

(assert (=> bs!395036 m!1960209))

(assert (=> bs!395036 m!1954977))

(declare-fun m!1960211 () Bool)

(assert (=> bs!395036 m!1960211))

(declare-fun m!1960213 () Bool)

(assert (=> bs!395036 m!1960213))

(assert (=> bs!395036 m!1955871))

(declare-fun m!1960215 () Bool)

(assert (=> bs!395036 m!1960215))

(assert (=> bs!395036 m!1960209))

(declare-fun m!1960217 () Bool)

(assert (=> bs!395036 m!1960217))

(assert (=> bs!395036 m!1955871))

(declare-fun m!1960219 () Bool)

(assert (=> bs!395036 m!1960219))

(assert (=> bs!395036 m!1954977))

(assert (=> bs!395036 m!1960219))

(declare-fun m!1960221 () Bool)

(assert (=> bs!395036 m!1960221))

(assert (=> bs!395036 m!1954977))

(declare-fun m!1960223 () Bool)

(assert (=> bs!395036 m!1960223))

(declare-fun m!1960225 () Bool)

(assert (=> bs!395036 m!1960225))

(assert (=> bs!395036 m!1955871))

(declare-fun m!1960227 () Bool)

(assert (=> bs!395036 m!1960227))

(assert (=> bs!395036 m!1954977))

(declare-fun m!1960229 () Bool)

(assert (=> bs!395036 m!1960229))

(assert (=> bs!395036 m!1960213))

(declare-fun m!1960231 () Bool)

(assert (=> bs!395036 m!1960231))

(assert (=> bs!395036 m!1954977))

(assert (=> bs!395036 m!1960213))

(assert (=> bs!395036 m!1955871))

(declare-fun m!1960233 () Bool)

(assert (=> bs!395036 m!1960233))

(assert (=> d!489701 d!490849))

(declare-fun d!490851 () Bool)

(declare-fun e!1044708 () Bool)

(assert (=> d!490851 e!1044708))

(declare-fun res!728498 () Bool)

(assert (=> d!490851 (=> (not res!728498) (not e!1044708))))

(assert (=> d!490851 (= res!728498 (appendAssocInst!437 (c!264623 (charsOf!1794 (h!23257 tokens!457))) (c!264623 (singletonSeq!1569 (apply!4568 (charsOf!1794 (h!23257 (t!149059 tokens!457))) 0)))))))

(declare-fun lt!589758 () BalanceConc!11820)

(assert (=> d!490851 (= lt!589758 (BalanceConc!11821 (++!4754 (c!264623 (charsOf!1794 (h!23257 tokens!457))) (c!264623 (singletonSeq!1569 (apply!4568 (charsOf!1794 (h!23257 (t!149059 tokens!457))) 0))))))))

(assert (=> d!490851 (= (++!4752 (charsOf!1794 (h!23257 tokens!457)) (singletonSeq!1569 (apply!4568 (charsOf!1794 (h!23257 (t!149059 tokens!457))) 0))) lt!589758)))

(declare-fun b!1628995 () Bool)

(declare-fun res!728499 () Bool)

(assert (=> b!1628995 (=> (not res!728499) (not e!1044708))))

(assert (=> b!1628995 (= res!728499 (isBalanced!1794 (++!4754 (c!264623 (charsOf!1794 (h!23257 tokens!457))) (c!264623 (singletonSeq!1569 (apply!4568 (charsOf!1794 (h!23257 (t!149059 tokens!457))) 0))))))))

(declare-fun b!1628998 () Bool)

(assert (=> b!1628998 (= e!1044708 (= (list!7011 lt!589758) (++!4751 (list!7011 (charsOf!1794 (h!23257 tokens!457))) (list!7011 (singletonSeq!1569 (apply!4568 (charsOf!1794 (h!23257 (t!149059 tokens!457))) 0))))))))

(declare-fun b!1628997 () Bool)

(declare-fun res!728497 () Bool)

(assert (=> b!1628997 (=> (not res!728497) (not e!1044708))))

(assert (=> b!1628997 (= res!728497 (>= (height!907 (++!4754 (c!264623 (charsOf!1794 (h!23257 tokens!457))) (c!264623 (singletonSeq!1569 (apply!4568 (charsOf!1794 (h!23257 (t!149059 tokens!457))) 0))))) (max!0 (height!907 (c!264623 (charsOf!1794 (h!23257 tokens!457)))) (height!907 (c!264623 (singletonSeq!1569 (apply!4568 (charsOf!1794 (h!23257 (t!149059 tokens!457))) 0)))))))))

(declare-fun b!1628996 () Bool)

(declare-fun res!728500 () Bool)

(assert (=> b!1628996 (=> (not res!728500) (not e!1044708))))

(assert (=> b!1628996 (= res!728500 (<= (height!907 (++!4754 (c!264623 (charsOf!1794 (h!23257 tokens!457))) (c!264623 (singletonSeq!1569 (apply!4568 (charsOf!1794 (h!23257 (t!149059 tokens!457))) 0))))) (+ (max!0 (height!907 (c!264623 (charsOf!1794 (h!23257 tokens!457)))) (height!907 (c!264623 (singletonSeq!1569 (apply!4568 (charsOf!1794 (h!23257 (t!149059 tokens!457))) 0))))) 1)))))

(assert (= (and d!490851 res!728498) b!1628995))

(assert (= (and b!1628995 res!728499) b!1628996))

(assert (= (and b!1628996 res!728500) b!1628997))

(assert (= (and b!1628997 res!728497) b!1628998))

(declare-fun m!1960235 () Bool)

(assert (=> b!1628997 m!1960235))

(declare-fun m!1960237 () Bool)

(assert (=> b!1628997 m!1960237))

(declare-fun m!1960239 () Bool)

(assert (=> b!1628997 m!1960239))

(declare-fun m!1960241 () Bool)

(assert (=> b!1628997 m!1960241))

(assert (=> b!1628997 m!1960235))

(assert (=> b!1628997 m!1960237))

(declare-fun m!1960243 () Bool)

(assert (=> b!1628997 m!1960243))

(assert (=> b!1628997 m!1960239))

(declare-fun m!1960245 () Bool)

(assert (=> b!1628998 m!1960245))

(assert (=> b!1628998 m!1954941))

(declare-fun m!1960247 () Bool)

(assert (=> b!1628998 m!1960247))

(assert (=> b!1628998 m!1954981))

(declare-fun m!1960249 () Bool)

(assert (=> b!1628998 m!1960249))

(assert (=> b!1628998 m!1960247))

(assert (=> b!1628998 m!1960249))

(declare-fun m!1960251 () Bool)

(assert (=> b!1628998 m!1960251))

(assert (=> b!1628996 m!1960235))

(assert (=> b!1628996 m!1960237))

(assert (=> b!1628996 m!1960239))

(assert (=> b!1628996 m!1960241))

(assert (=> b!1628996 m!1960235))

(assert (=> b!1628996 m!1960237))

(assert (=> b!1628996 m!1960243))

(assert (=> b!1628996 m!1960239))

(declare-fun m!1960253 () Bool)

(assert (=> d!490851 m!1960253))

(assert (=> d!490851 m!1960239))

(assert (=> b!1628995 m!1960239))

(assert (=> b!1628995 m!1960239))

(declare-fun m!1960255 () Bool)

(assert (=> b!1628995 m!1960255))

(assert (=> d!489701 d!490851))

(assert (=> d!489701 d!489719))

(assert (=> d!489701 d!489791))

(assert (=> d!489701 d!489787))

(assert (=> d!489701 d!489789))

(assert (=> b!1626784 d!490209))

(assert (=> b!1626784 d!490211))

(declare-fun b!1629002 () Bool)

(declare-fun e!1044710 () List!17926)

(assert (=> b!1629002 (= e!1044710 (++!4756 (list!7014 (left!14349 (c!264625 (prepend!673 (seqFromList!2039 (t!149059 (t!149059 tokens!457))) (h!23257 (t!149059 tokens!457)))))) (list!7014 (right!14679 (c!264625 (prepend!673 (seqFromList!2039 (t!149059 (t!149059 tokens!457))) (h!23257 (t!149059 tokens!457))))))))))

(declare-fun d!490853 () Bool)

(declare-fun c!265241 () Bool)

(assert (=> d!490853 (= c!265241 ((_ is Empty!5939) (c!264625 (prepend!673 (seqFromList!2039 (t!149059 (t!149059 tokens!457))) (h!23257 (t!149059 tokens!457))))))))

(declare-fun e!1044709 () List!17926)

(assert (=> d!490853 (= (list!7014 (c!264625 (prepend!673 (seqFromList!2039 (t!149059 (t!149059 tokens!457))) (h!23257 (t!149059 tokens!457))))) e!1044709)))

(declare-fun b!1628999 () Bool)

(assert (=> b!1628999 (= e!1044709 Nil!17856)))

(declare-fun b!1629000 () Bool)

(assert (=> b!1629000 (= e!1044709 e!1044710)))

(declare-fun c!265242 () Bool)

(assert (=> b!1629000 (= c!265242 ((_ is Leaf!8732) (c!264625 (prepend!673 (seqFromList!2039 (t!149059 (t!149059 tokens!457))) (h!23257 (t!149059 tokens!457))))))))

(declare-fun b!1629001 () Bool)

(assert (=> b!1629001 (= e!1044710 (list!7020 (xs!8771 (c!264625 (prepend!673 (seqFromList!2039 (t!149059 (t!149059 tokens!457))) (h!23257 (t!149059 tokens!457)))))))))

(assert (= (and d!490853 c!265241) b!1628999))

(assert (= (and d!490853 (not c!265241)) b!1629000))

(assert (= (and b!1629000 c!265242) b!1629001))

(assert (= (and b!1629000 (not c!265242)) b!1629002))

(declare-fun m!1960257 () Bool)

(assert (=> b!1629002 m!1960257))

(declare-fun m!1960259 () Bool)

(assert (=> b!1629002 m!1960259))

(assert (=> b!1629002 m!1960257))

(assert (=> b!1629002 m!1960259))

(declare-fun m!1960261 () Bool)

(assert (=> b!1629002 m!1960261))

(declare-fun m!1960263 () Bool)

(assert (=> b!1629001 m!1960263))

(assert (=> d!489811 d!490853))

(declare-fun d!490855 () Bool)

(assert (=> d!490855 (= (isDefined!2683 lt!588386) (not (isEmpty!10890 lt!588386)))))

(declare-fun bs!395037 () Bool)

(assert (= bs!395037 d!490855))

(assert (=> bs!395037 m!1955795))

(assert (=> b!1626730 d!490855))

(declare-fun b!1629003 () Bool)

(declare-fun e!1044711 () Bool)

(declare-fun e!1044713 () Bool)

(assert (=> b!1629003 (= e!1044711 e!1044713)))

(declare-fun res!728501 () Bool)

(assert (=> b!1629003 (=> (not res!728501) (not e!1044713))))

(assert (=> b!1629003 (= res!728501 (not ((_ is Nil!17854) (tail!2367 lt!587988))))))

(declare-fun b!1629005 () Bool)

(assert (=> b!1629005 (= e!1044713 (isPrefix!1405 (tail!2367 (tail!2367 lt!587996)) (tail!2367 (tail!2367 lt!587988))))))

(declare-fun b!1629004 () Bool)

(declare-fun res!728504 () Bool)

(assert (=> b!1629004 (=> (not res!728504) (not e!1044713))))

(assert (=> b!1629004 (= res!728504 (= (head!3449 (tail!2367 lt!587996)) (head!3449 (tail!2367 lt!587988))))))

(declare-fun d!490857 () Bool)

(declare-fun e!1044712 () Bool)

(assert (=> d!490857 e!1044712))

(declare-fun res!728502 () Bool)

(assert (=> d!490857 (=> res!728502 e!1044712)))

(declare-fun lt!589759 () Bool)

(assert (=> d!490857 (= res!728502 (not lt!589759))))

(assert (=> d!490857 (= lt!589759 e!1044711)))

(declare-fun res!728503 () Bool)

(assert (=> d!490857 (=> res!728503 e!1044711)))

(assert (=> d!490857 (= res!728503 ((_ is Nil!17854) (tail!2367 lt!587996)))))

(assert (=> d!490857 (= (isPrefix!1405 (tail!2367 lt!587996) (tail!2367 lt!587988)) lt!589759)))

(declare-fun b!1629006 () Bool)

(assert (=> b!1629006 (= e!1044712 (>= (size!14282 (tail!2367 lt!587988)) (size!14282 (tail!2367 lt!587996))))))

(assert (= (and d!490857 (not res!728503)) b!1629003))

(assert (= (and b!1629003 res!728501) b!1629004))

(assert (= (and b!1629004 res!728504) b!1629005))

(assert (= (and d!490857 (not res!728502)) b!1629006))

(assert (=> b!1629005 m!1955293))

(assert (=> b!1629005 m!1958815))

(assert (=> b!1629005 m!1955295))

(declare-fun m!1960265 () Bool)

(assert (=> b!1629005 m!1960265))

(assert (=> b!1629005 m!1958815))

(assert (=> b!1629005 m!1960265))

(declare-fun m!1960267 () Bool)

(assert (=> b!1629005 m!1960267))

(assert (=> b!1629004 m!1955293))

(assert (=> b!1629004 m!1958813))

(assert (=> b!1629004 m!1955295))

(declare-fun m!1960269 () Bool)

(assert (=> b!1629004 m!1960269))

(assert (=> b!1629006 m!1955295))

(declare-fun m!1960271 () Bool)

(assert (=> b!1629006 m!1960271))

(assert (=> b!1629006 m!1955293))

(declare-fun m!1960273 () Bool)

(assert (=> b!1629006 m!1960273))

(assert (=> b!1626517 d!490857))

(assert (=> b!1626517 d!490211))

(declare-fun d!490859 () Bool)

(assert (=> d!490859 (= (tail!2367 lt!587988) (t!149057 lt!587988))))

(assert (=> b!1626517 d!490859))

(declare-fun b!1629007 () Bool)

(declare-fun e!1044715 () Bool)

(declare-fun e!1044719 () Bool)

(assert (=> b!1629007 (= e!1044715 e!1044719)))

(declare-fun res!728509 () Bool)

(assert (=> b!1629007 (=> res!728509 e!1044719)))

(declare-fun lt!589766 () Option!3315)

(assert (=> b!1629007 (= res!728509 (not (isDefined!2682 lt!589766)))))

(declare-fun e!1044716 () Bool)

(declare-fun b!1629008 () Bool)

(assert (=> b!1629008 (= e!1044716 (= (list!7011 (_2!10118 (get!5154 lt!589766))) (_2!10119 (get!5150 (maxPrefix!1338 thiss!17113 (t!149058 rules!1846) (list!7011 (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457)))))))))))

(declare-fun b!1629009 () Bool)

(declare-fun e!1044714 () Bool)

(declare-fun e!1044718 () Bool)

(assert (=> b!1629009 (= e!1044714 e!1044718)))

(declare-fun res!728505 () Bool)

(assert (=> b!1629009 (=> (not res!728505) (not e!1044718))))

(assert (=> b!1629009 (= res!728505 (= (_1!10118 (get!5154 lt!589766)) (_1!10119 (get!5150 (maxPrefixZipper!308 thiss!17113 (t!149058 rules!1846) (list!7011 (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457)))))))))))

(declare-fun b!1629010 () Bool)

(assert (=> b!1629010 (= e!1044718 (= (list!7011 (_2!10118 (get!5154 lt!589766))) (_2!10119 (get!5150 (maxPrefixZipper!308 thiss!17113 (t!149058 rules!1846) (list!7011 (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457)))))))))))

(declare-fun b!1629011 () Bool)

(declare-fun e!1044717 () Option!3315)

(declare-fun lt!589763 () Option!3315)

(declare-fun lt!589765 () Option!3315)

(assert (=> b!1629011 (= e!1044717 (ite (and ((_ is None!3314) lt!589763) ((_ is None!3314) lt!589765)) None!3314 (ite ((_ is None!3314) lt!589765) lt!589763 (ite ((_ is None!3314) lt!589763) lt!589765 (ite (>= (size!14278 (_1!10118 (v!24357 lt!589763))) (size!14278 (_1!10118 (v!24357 lt!589765)))) lt!589763 lt!589765)))))))

(declare-fun call!105487 () Option!3315)

(assert (=> b!1629011 (= lt!589763 call!105487)))

(assert (=> b!1629011 (= lt!589765 (maxPrefixZipperSequence!669 thiss!17113 (t!149058 (t!149058 rules!1846)) (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457)))))))

(declare-fun b!1629012 () Bool)

(assert (=> b!1629012 (= e!1044717 call!105487)))

(declare-fun bm!105482 () Bool)

(assert (=> bm!105482 (= call!105487 (maxPrefixOneRuleZipperSequence!318 thiss!17113 (h!23256 (t!149058 rules!1846)) (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457)))))))

(declare-fun b!1629013 () Bool)

(declare-fun res!728508 () Bool)

(assert (=> b!1629013 (=> (not res!728508) (not e!1044715))))

(assert (=> b!1629013 (= res!728508 e!1044714)))

(declare-fun res!728506 () Bool)

(assert (=> b!1629013 (=> res!728506 e!1044714)))

(assert (=> b!1629013 (= res!728506 (not (isDefined!2682 lt!589766)))))

(declare-fun d!490861 () Bool)

(assert (=> d!490861 e!1044715))

(declare-fun res!728507 () Bool)

(assert (=> d!490861 (=> (not res!728507) (not e!1044715))))

(assert (=> d!490861 (= res!728507 (= (isDefined!2682 lt!589766) (isDefined!2683 (maxPrefixZipper!308 thiss!17113 (t!149058 rules!1846) (list!7011 (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457))))))))))

(assert (=> d!490861 (= lt!589766 e!1044717)))

(declare-fun c!265243 () Bool)

(assert (=> d!490861 (= c!265243 (and ((_ is Cons!17855) (t!149058 rules!1846)) ((_ is Nil!17855) (t!149058 (t!149058 rules!1846)))))))

(declare-fun lt!589762 () Unit!28923)

(declare-fun lt!589760 () Unit!28923)

(assert (=> d!490861 (= lt!589762 lt!589760)))

(declare-fun lt!589764 () List!17924)

(declare-fun lt!589761 () List!17924)

(assert (=> d!490861 (isPrefix!1405 lt!589764 lt!589761)))

(assert (=> d!490861 (= lt!589760 (lemmaIsPrefixRefl!962 lt!589764 lt!589761))))

(assert (=> d!490861 (= lt!589761 (list!7011 (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457)))))))

(assert (=> d!490861 (= lt!589764 (list!7011 (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457)))))))

(assert (=> d!490861 (rulesValidInductive!974 thiss!17113 (t!149058 rules!1846))))

(assert (=> d!490861 (= (maxPrefixZipperSequence!669 thiss!17113 (t!149058 rules!1846) (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457)))) lt!589766)))

(declare-fun b!1629014 () Bool)

(assert (=> b!1629014 (= e!1044719 e!1044716)))

(declare-fun res!728510 () Bool)

(assert (=> b!1629014 (=> (not res!728510) (not e!1044716))))

(assert (=> b!1629014 (= res!728510 (= (_1!10118 (get!5154 lt!589766)) (_1!10119 (get!5150 (maxPrefix!1338 thiss!17113 (t!149058 rules!1846) (list!7011 (seqFromList!2040 (originalCharacters!3959 (h!23257 tokens!457)))))))))))

(assert (= (and d!490861 c!265243) b!1629012))

(assert (= (and d!490861 (not c!265243)) b!1629011))

(assert (= (or b!1629012 b!1629011) bm!105482))

(assert (= (and d!490861 res!728507) b!1629013))

(assert (= (and b!1629013 (not res!728506)) b!1629009))

(assert (= (and b!1629009 res!728505) b!1629010))

(assert (= (and b!1629013 res!728508) b!1629007))

(assert (= (and b!1629007 (not res!728509)) b!1629014))

(assert (= (and b!1629014 res!728510) b!1629008))

(declare-fun m!1960275 () Bool)

(assert (=> b!1629009 m!1960275))

(assert (=> b!1629009 m!1955009))

(assert (=> b!1629009 m!1956003))

(assert (=> b!1629009 m!1956003))

(assert (=> b!1629009 m!1956945))

(assert (=> b!1629009 m!1956945))

(declare-fun m!1960277 () Bool)

(assert (=> b!1629009 m!1960277))

(declare-fun m!1960279 () Bool)

(assert (=> b!1629007 m!1960279))

(assert (=> b!1629013 m!1960279))

(assert (=> d!490861 m!1956945))

(declare-fun m!1960281 () Bool)

(assert (=> d!490861 m!1960281))

(assert (=> d!490861 m!1956967))

(assert (=> d!490861 m!1956003))

(assert (=> d!490861 m!1956945))

(assert (=> d!490861 m!1960279))

(declare-fun m!1960283 () Bool)

(assert (=> d!490861 m!1960283))

(assert (=> d!490861 m!1955009))

(assert (=> d!490861 m!1956003))

(declare-fun m!1960285 () Bool)

(assert (=> d!490861 m!1960285))

(assert (=> b!1629011 m!1955009))

(declare-fun m!1960287 () Bool)

(assert (=> b!1629011 m!1960287))

(assert (=> b!1629008 m!1960275))

(assert (=> b!1629008 m!1955009))

(assert (=> b!1629008 m!1956003))

(assert (=> b!1629008 m!1956003))

(assert (=> b!1629008 m!1956555))

(assert (=> b!1629008 m!1956555))

(declare-fun m!1960289 () Bool)

(assert (=> b!1629008 m!1960289))

(declare-fun m!1960291 () Bool)

(assert (=> b!1629008 m!1960291))

(assert (=> b!1629010 m!1960275))

(assert (=> b!1629010 m!1956945))

(assert (=> b!1629010 m!1960277))

(assert (=> b!1629010 m!1955009))

(assert (=> b!1629010 m!1956003))

(assert (=> b!1629010 m!1956003))

(assert (=> b!1629010 m!1956945))

(assert (=> b!1629010 m!1960291))

(assert (=> bm!105482 m!1955009))

(declare-fun m!1960293 () Bool)

(assert (=> bm!105482 m!1960293))

(assert (=> b!1629014 m!1960275))

(assert (=> b!1629014 m!1955009))

(assert (=> b!1629014 m!1956003))

(assert (=> b!1629014 m!1956003))

(assert (=> b!1629014 m!1956555))

(assert (=> b!1629014 m!1956555))

(assert (=> b!1629014 m!1960289))

(assert (=> b!1626921 d!490861))

(declare-fun b!1629017 () Bool)

(declare-fun e!1044721 () List!17924)

(assert (=> b!1629017 (= e!1044721 (list!7019 (xs!8770 (c!264623 lt!587977))))))

(declare-fun d!490863 () Bool)

(declare-fun c!265244 () Bool)

(assert (=> d!490863 (= c!265244 ((_ is Empty!5938) (c!264623 lt!587977)))))

(declare-fun e!1044720 () List!17924)

(assert (=> d!490863 (= (list!7016 (c!264623 lt!587977)) e!1044720)))

(declare-fun b!1629015 () Bool)

(assert (=> b!1629015 (= e!1044720 Nil!17854)))

(declare-fun b!1629018 () Bool)

(assert (=> b!1629018 (= e!1044721 (++!4751 (list!7016 (left!14348 (c!264623 lt!587977))) (list!7016 (right!14678 (c!264623 lt!587977)))))))

(declare-fun b!1629016 () Bool)

(assert (=> b!1629016 (= e!1044720 e!1044721)))

(declare-fun c!265245 () Bool)

(assert (=> b!1629016 (= c!265245 ((_ is Leaf!8731) (c!264623 lt!587977)))))

(assert (= (and d!490863 c!265244) b!1629015))

(assert (= (and d!490863 (not c!265244)) b!1629016))

(assert (= (and b!1629016 c!265245) b!1629017))

(assert (= (and b!1629016 (not c!265245)) b!1629018))

(declare-fun m!1960295 () Bool)

(assert (=> b!1629017 m!1960295))

(declare-fun m!1960297 () Bool)

(assert (=> b!1629018 m!1960297))

(declare-fun m!1960299 () Bool)

(assert (=> b!1629018 m!1960299))

(assert (=> b!1629018 m!1960297))

(assert (=> b!1629018 m!1960299))

(declare-fun m!1960301 () Bool)

(assert (=> b!1629018 m!1960301))

(assert (=> d!489659 d!490863))

(declare-fun d!490865 () Bool)

(assert (=> d!490865 (= (list!7012 (_1!10117 lt!588234)) (list!7014 (c!264625 (_1!10117 lt!588234))))))

(declare-fun bs!395038 () Bool)

(assert (= bs!395038 d!490865))

(declare-fun m!1960303 () Bool)

(assert (=> bs!395038 m!1960303))

(assert (=> b!1626582 d!490865))

(assert (=> b!1626582 d!490175))

(assert (=> b!1626582 d!490179))

(declare-fun d!490867 () Bool)

(declare-fun e!1044723 () Bool)

(assert (=> d!490867 e!1044723))

(declare-fun res!728511 () Bool)

(assert (=> d!490867 (=> (not res!728511) (not e!1044723))))

(declare-fun lt!589771 () List!17924)

(assert (=> d!490867 (= res!728511 (= (content!2476 lt!589771) ((_ map or) (content!2476 (list!7011 (charsOf!1794 (h!23257 (Cons!17856 (h!23257 tokens!457) Nil!17856))))) (content!2476 (printList!889 thiss!17113 (t!149059 (Cons!17856 (h!23257 tokens!457) Nil!17856)))))))))

(declare-fun e!1044722 () List!17924)

(assert (=> d!490867 (= lt!589771 e!1044722)))

(declare-fun c!265246 () Bool)

(assert (=> d!490867 (= c!265246 ((_ is Nil!17854) (list!7011 (charsOf!1794 (h!23257 (Cons!17856 (h!23257 tokens!457) Nil!17856))))))))

(assert (=> d!490867 (= (++!4751 (list!7011 (charsOf!1794 (h!23257 (Cons!17856 (h!23257 tokens!457) Nil!17856)))) (printList!889 thiss!17113 (t!149059 (Cons!17856 (h!23257 tokens!457) Nil!17856)))) lt!589771)))

(declare-fun b!1629019 () Bool)

(assert (=> b!1629019 (= e!1044722 (printList!889 thiss!17113 (t!149059 (Cons!17856 (h!23257 tokens!457) Nil!17856))))))

(declare-fun b!1629021 () Bool)

(declare-fun res!728512 () Bool)

(assert (=> b!1629021 (=> (not res!728512) (not e!1044723))))

(assert (=> b!1629021 (= res!728512 (= (size!14282 lt!589771) (+ (size!14282 (list!7011 (charsOf!1794 (h!23257 (Cons!17856 (h!23257 tokens!457) Nil!17856))))) (size!14282 (printList!889 thiss!17113 (t!149059 (Cons!17856 (h!23257 tokens!457) Nil!17856)))))))))

(declare-fun b!1629020 () Bool)

(assert (=> b!1629020 (= e!1044722 (Cons!17854 (h!23255 (list!7011 (charsOf!1794 (h!23257 (Cons!17856 (h!23257 tokens!457) Nil!17856))))) (++!4751 (t!149057 (list!7011 (charsOf!1794 (h!23257 (Cons!17856 (h!23257 tokens!457) Nil!17856))))) (printList!889 thiss!17113 (t!149059 (Cons!17856 (h!23257 tokens!457) Nil!17856))))))))

(declare-fun b!1629022 () Bool)

(assert (=> b!1629022 (= e!1044723 (or (not (= (printList!889 thiss!17113 (t!149059 (Cons!17856 (h!23257 tokens!457) Nil!17856))) Nil!17854)) (= lt!589771 (list!7011 (charsOf!1794 (h!23257 (Cons!17856 (h!23257 tokens!457) Nil!17856)))))))))

(assert (= (and d!490867 c!265246) b!1629019))

(assert (= (and d!490867 (not c!265246)) b!1629020))

(assert (= (and d!490867 res!728511) b!1629021))

(assert (= (and b!1629021 res!728512) b!1629022))

(declare-fun m!1960305 () Bool)

(assert (=> d!490867 m!1960305))

(assert (=> d!490867 m!1955675))

(declare-fun m!1960307 () Bool)

(assert (=> d!490867 m!1960307))

(assert (=> d!490867 m!1955677))

(declare-fun m!1960309 () Bool)

(assert (=> d!490867 m!1960309))

(declare-fun m!1960311 () Bool)

(assert (=> b!1629021 m!1960311))

(assert (=> b!1629021 m!1955675))

(declare-fun m!1960313 () Bool)

(assert (=> b!1629021 m!1960313))

(assert (=> b!1629021 m!1955677))

(declare-fun m!1960315 () Bool)

(assert (=> b!1629021 m!1960315))

(assert (=> b!1629020 m!1955677))

(declare-fun m!1960317 () Bool)

(assert (=> b!1629020 m!1960317))

(assert (=> b!1626694 d!490867))

(declare-fun d!490869 () Bool)

(assert (=> d!490869 (= (list!7011 (charsOf!1794 (h!23257 (Cons!17856 (h!23257 tokens!457) Nil!17856)))) (list!7016 (c!264623 (charsOf!1794 (h!23257 (Cons!17856 (h!23257 tokens!457) Nil!17856))))))))

(declare-fun bs!395039 () Bool)

(assert (= bs!395039 d!490869))

(declare-fun m!1960319 () Bool)

(assert (=> bs!395039 m!1960319))

(assert (=> b!1626694 d!490869))

(declare-fun d!490871 () Bool)

(declare-fun lt!589780 () BalanceConc!11820)

(assert (=> d!490871 (= (list!7011 lt!589780) (originalCharacters!3959 (h!23257 (Cons!17856 (h!23257 tokens!457) Nil!17856))))))

(assert (=> d!490871 (= lt!589780 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (Cons!17856 (h!23257 tokens!457) Nil!17856))))) (value!99305 (h!23257 (Cons!17856 (h!23257 tokens!457) Nil!17856)))))))

(assert (=> d!490871 (= (charsOf!1794 (h!23257 (Cons!17856 (h!23257 tokens!457) Nil!17856))) lt!589780)))

(declare-fun b_lambda!51295 () Bool)

(assert (=> (not b_lambda!51295) (not d!490871)))

(declare-fun t!149271 () Bool)

(declare-fun tb!93511 () Bool)

(assert (=> (and b!1626382 (= (toChars!4431 (transformation!3145 (rule!4971 (h!23257 tokens!457)))) (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (Cons!17856 (h!23257 tokens!457) Nil!17856)))))) t!149271) tb!93511))

(declare-fun b!1629023 () Bool)

(declare-fun e!1044724 () Bool)

(declare-fun tp!473046 () Bool)

(assert (=> b!1629023 (= e!1044724 (and (inv!23232 (c!264623 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (Cons!17856 (h!23257 tokens!457) Nil!17856))))) (value!99305 (h!23257 (Cons!17856 (h!23257 tokens!457) Nil!17856)))))) tp!473046))))

(declare-fun result!112774 () Bool)

(assert (=> tb!93511 (= result!112774 (and (inv!23233 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (Cons!17856 (h!23257 tokens!457) Nil!17856))))) (value!99305 (h!23257 (Cons!17856 (h!23257 tokens!457) Nil!17856))))) e!1044724))))

(assert (= tb!93511 b!1629023))

(declare-fun m!1960321 () Bool)

(assert (=> b!1629023 m!1960321))

(declare-fun m!1960323 () Bool)

(assert (=> tb!93511 m!1960323))

(assert (=> d!490871 t!149271))

(declare-fun b_and!115533 () Bool)

(assert (= b_and!115525 (and (=> t!149271 result!112774) b_and!115533)))

(declare-fun tb!93513 () Bool)

(declare-fun t!149273 () Bool)

(assert (=> (and b!1626369 (= (toChars!4431 (transformation!3145 (h!23256 rules!1846))) (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (Cons!17856 (h!23257 tokens!457) Nil!17856)))))) t!149273) tb!93513))

(declare-fun result!112776 () Bool)

(assert (= result!112776 result!112774))

(assert (=> d!490871 t!149273))

(declare-fun b_and!115535 () Bool)

(assert (= b_and!115527 (and (=> t!149273 result!112776) b_and!115535)))

(declare-fun t!149275 () Bool)

(declare-fun tb!93515 () Bool)

(assert (=> (and b!1627093 (= (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 tokens!457))))) (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (Cons!17856 (h!23257 tokens!457) Nil!17856)))))) t!149275) tb!93515))

(declare-fun result!112778 () Bool)

(assert (= result!112778 result!112774))

(assert (=> d!490871 t!149275))

(declare-fun b_and!115537 () Bool)

(assert (= b_and!115529 (and (=> t!149275 result!112778) b_and!115537)))

(declare-fun t!149277 () Bool)

(declare-fun tb!93517 () Bool)

(assert (=> (and b!1627118 (= (toChars!4431 (transformation!3145 (h!23256 (t!149058 rules!1846)))) (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (Cons!17856 (h!23257 tokens!457) Nil!17856)))))) t!149277) tb!93517))

(declare-fun result!112780 () Bool)

(assert (= result!112780 result!112774))

(assert (=> d!490871 t!149277))

(declare-fun b_and!115539 () Bool)

(assert (= b_and!115531 (and (=> t!149277 result!112780) b_and!115539)))

(declare-fun m!1960325 () Bool)

(assert (=> d!490871 m!1960325))

(declare-fun m!1960327 () Bool)

(assert (=> d!490871 m!1960327))

(assert (=> b!1626694 d!490871))

(declare-fun d!490873 () Bool)

(declare-fun c!265247 () Bool)

(assert (=> d!490873 (= c!265247 ((_ is Cons!17856) (t!149059 (Cons!17856 (h!23257 tokens!457) Nil!17856))))))

(declare-fun e!1044725 () List!17924)

(assert (=> d!490873 (= (printList!889 thiss!17113 (t!149059 (Cons!17856 (h!23257 tokens!457) Nil!17856))) e!1044725)))

(declare-fun b!1629024 () Bool)

(assert (=> b!1629024 (= e!1044725 (++!4751 (list!7011 (charsOf!1794 (h!23257 (t!149059 (Cons!17856 (h!23257 tokens!457) Nil!17856))))) (printList!889 thiss!17113 (t!149059 (t!149059 (Cons!17856 (h!23257 tokens!457) Nil!17856))))))))

(declare-fun b!1629025 () Bool)

(assert (=> b!1629025 (= e!1044725 Nil!17854)))

(assert (= (and d!490873 c!265247) b!1629024))

(assert (= (and d!490873 (not c!265247)) b!1629025))

(declare-fun m!1960329 () Bool)

(assert (=> b!1629024 m!1960329))

(assert (=> b!1629024 m!1960329))

(declare-fun m!1960331 () Bool)

(assert (=> b!1629024 m!1960331))

(declare-fun m!1960333 () Bool)

(assert (=> b!1629024 m!1960333))

(assert (=> b!1629024 m!1960331))

(assert (=> b!1629024 m!1960333))

(declare-fun m!1960335 () Bool)

(assert (=> b!1629024 m!1960335))

(assert (=> b!1626694 d!490873))

(assert (=> b!1626917 d!490003))

(declare-fun b!1629026 () Bool)

(declare-fun e!1044726 () Bool)

(declare-fun e!1044728 () Bool)

(assert (=> b!1629026 (= e!1044726 e!1044728)))

(declare-fun res!728513 () Bool)

(assert (=> b!1629026 (=> (not res!728513) (not e!1044728))))

(assert (=> b!1629026 (= res!728513 (not ((_ is Nil!17854) (++!4751 lt!587996 lt!587994))))))

(declare-fun b!1629028 () Bool)

(assert (=> b!1629028 (= e!1044728 (isPrefix!1405 (tail!2367 lt!587996) (tail!2367 (++!4751 lt!587996 lt!587994))))))

(declare-fun b!1629027 () Bool)

(declare-fun res!728516 () Bool)

(assert (=> b!1629027 (=> (not res!728516) (not e!1044728))))

(assert (=> b!1629027 (= res!728516 (= (head!3449 lt!587996) (head!3449 (++!4751 lt!587996 lt!587994))))))

(declare-fun d!490875 () Bool)

(declare-fun e!1044727 () Bool)

(assert (=> d!490875 e!1044727))

(declare-fun res!728514 () Bool)

(assert (=> d!490875 (=> res!728514 e!1044727)))

(declare-fun lt!589787 () Bool)

(assert (=> d!490875 (= res!728514 (not lt!589787))))

(assert (=> d!490875 (= lt!589787 e!1044726)))

(declare-fun res!728515 () Bool)

(assert (=> d!490875 (=> res!728515 e!1044726)))

(assert (=> d!490875 (= res!728515 ((_ is Nil!17854) lt!587996))))

(assert (=> d!490875 (= (isPrefix!1405 lt!587996 (++!4751 lt!587996 lt!587994)) lt!589787)))

(declare-fun b!1629029 () Bool)

(assert (=> b!1629029 (= e!1044727 (>= (size!14282 (++!4751 lt!587996 lt!587994)) (size!14282 lt!587996)))))

(assert (= (and d!490875 (not res!728515)) b!1629026))

(assert (= (and b!1629026 res!728513) b!1629027))

(assert (= (and b!1629027 res!728516) b!1629028))

(assert (= (and d!490875 (not res!728514)) b!1629029))

(assert (=> b!1629028 m!1955293))

(assert (=> b!1629028 m!1954953))

(declare-fun m!1960337 () Bool)

(assert (=> b!1629028 m!1960337))

(assert (=> b!1629028 m!1955293))

(assert (=> b!1629028 m!1960337))

(declare-fun m!1960339 () Bool)

(assert (=> b!1629028 m!1960339))

(assert (=> b!1629027 m!1955299))

(assert (=> b!1629027 m!1954953))

(declare-fun m!1960341 () Bool)

(assert (=> b!1629027 m!1960341))

(assert (=> b!1629029 m!1954953))

(declare-fun m!1960343 () Bool)

(assert (=> b!1629029 m!1960343))

(assert (=> b!1629029 m!1955305))

(assert (=> d!489575 d!490875))

(assert (=> d!489575 d!489715))

(declare-fun d!490877 () Bool)

(assert (=> d!490877 (isPrefix!1405 lt!587996 (++!4751 lt!587996 lt!587994))))

(assert (=> d!490877 true))

(declare-fun _$46!1091 () Unit!28923)

(assert (=> d!490877 (= (choose!9778 lt!587996 lt!587994) _$46!1091)))

(declare-fun bs!395040 () Bool)

(assert (= bs!395040 d!490877))

(assert (=> bs!395040 m!1954953))

(assert (=> bs!395040 m!1954953))

(assert (=> bs!395040 m!1955321))

(assert (=> d!489575 d!490877))

(declare-fun d!490879 () Bool)

(declare-fun e!1044732 () Bool)

(assert (=> d!490879 e!1044732))

(declare-fun res!728521 () Bool)

(assert (=> d!490879 (=> (not res!728521) (not e!1044732))))

(declare-fun lt!589802 () List!17924)

(assert (=> d!490879 (= res!728521 (= (content!2476 lt!589802) ((_ map or) (content!2476 (t!149057 lt!587996)) (content!2476 lt!587994))))))

(declare-fun e!1044731 () List!17924)

(assert (=> d!490879 (= lt!589802 e!1044731)))

(declare-fun c!265248 () Bool)

(assert (=> d!490879 (= c!265248 ((_ is Nil!17854) (t!149057 lt!587996)))))

(assert (=> d!490879 (= (++!4751 (t!149057 lt!587996) lt!587994) lt!589802)))

(declare-fun b!1629034 () Bool)

(assert (=> b!1629034 (= e!1044731 lt!587994)))

(declare-fun b!1629036 () Bool)

(declare-fun res!728522 () Bool)

(assert (=> b!1629036 (=> (not res!728522) (not e!1044732))))

(assert (=> b!1629036 (= res!728522 (= (size!14282 lt!589802) (+ (size!14282 (t!149057 lt!587996)) (size!14282 lt!587994))))))

(declare-fun b!1629035 () Bool)

(assert (=> b!1629035 (= e!1044731 (Cons!17854 (h!23255 (t!149057 lt!587996)) (++!4751 (t!149057 (t!149057 lt!587996)) lt!587994)))))

(declare-fun b!1629037 () Bool)

(assert (=> b!1629037 (= e!1044732 (or (not (= lt!587994 Nil!17854)) (= lt!589802 (t!149057 lt!587996))))))

(assert (= (and d!490879 c!265248) b!1629034))

(assert (= (and d!490879 (not c!265248)) b!1629035))

(assert (= (and d!490879 res!728521) b!1629036))

(assert (= (and b!1629036 res!728522) b!1629037))

(declare-fun m!1960345 () Bool)

(assert (=> d!490879 m!1960345))

(assert (=> d!490879 m!1957539))

(assert (=> d!490879 m!1955913))

(declare-fun m!1960347 () Bool)

(assert (=> b!1629036 m!1960347))

(assert (=> b!1629036 m!1956535))

(assert (=> b!1629036 m!1955917))

(declare-fun m!1960349 () Bool)

(assert (=> b!1629035 m!1960349))

(assert (=> b!1626805 d!490879))

(declare-fun b!1629041 () Bool)

(declare-fun e!1044734 () List!17926)

(assert (=> b!1629041 (= e!1044734 (++!4756 (list!7014 (left!14349 (c!264625 (_1!10117 lt!587979)))) (list!7014 (right!14679 (c!264625 (_1!10117 lt!587979))))))))

(declare-fun d!490881 () Bool)

(declare-fun c!265249 () Bool)

(assert (=> d!490881 (= c!265249 ((_ is Empty!5939) (c!264625 (_1!10117 lt!587979))))))

(declare-fun e!1044733 () List!17926)

(assert (=> d!490881 (= (list!7014 (c!264625 (_1!10117 lt!587979))) e!1044733)))

(declare-fun b!1629038 () Bool)

(assert (=> b!1629038 (= e!1044733 Nil!17856)))

(declare-fun b!1629039 () Bool)

(assert (=> b!1629039 (= e!1044733 e!1044734)))

(declare-fun c!265250 () Bool)

(assert (=> b!1629039 (= c!265250 ((_ is Leaf!8732) (c!264625 (_1!10117 lt!587979))))))

(declare-fun b!1629040 () Bool)

(assert (=> b!1629040 (= e!1044734 (list!7020 (xs!8771 (c!264625 (_1!10117 lt!587979)))))))

(assert (= (and d!490881 c!265249) b!1629038))

(assert (= (and d!490881 (not c!265249)) b!1629039))

(assert (= (and b!1629039 c!265250) b!1629040))

(assert (= (and b!1629039 (not c!265250)) b!1629041))

(declare-fun m!1960351 () Bool)

(assert (=> b!1629041 m!1960351))

(declare-fun m!1960353 () Bool)

(assert (=> b!1629041 m!1960353))

(assert (=> b!1629041 m!1960351))

(assert (=> b!1629041 m!1960353))

(declare-fun m!1960355 () Bool)

(assert (=> b!1629041 m!1960355))

(declare-fun m!1960357 () Bool)

(assert (=> b!1629040 m!1960357))

(assert (=> d!489535 d!490881))

(declare-fun d!490883 () Bool)

(assert (=> d!490883 (= (isEmpty!10890 (maxPrefix!1338 thiss!17113 rules!1846 (originalCharacters!3959 (h!23257 tokens!457)))) (not ((_ is Some!3315) (maxPrefix!1338 thiss!17113 rules!1846 (originalCharacters!3959 (h!23257 tokens!457))))))))

(assert (=> d!489677 d!490883))

(assert (=> b!1626797 d!490239))

(declare-fun d!490885 () Bool)

(assert (=> d!490885 (= (isDefined!2683 lt!588381) (not (isEmpty!10890 lt!588381)))))

(declare-fun bs!395041 () Bool)

(assert (= bs!395041 d!490885))

(assert (=> bs!395041 m!1955765))

(assert (=> b!1626721 d!490885))

(assert (=> b!1626924 d!489883))

(assert (=> b!1626924 d!489887))

(assert (=> b!1626924 d!489891))

(assert (=> b!1626924 d!489889))

(assert (=> d!489693 d!489861))

(assert (=> d!489693 d!490563))

(assert (=> d!489537 d!489583))

(declare-fun d!490887 () Bool)

(declare-fun e!1044736 () Bool)

(assert (=> d!490887 e!1044736))

(declare-fun res!728523 () Bool)

(assert (=> d!490887 (=> (not res!728523) (not e!1044736))))

(declare-fun e!1044737 () Bool)

(assert (=> d!490887 (= res!728523 e!1044737)))

(declare-fun c!265251 () Bool)

(declare-fun lt!589817 () tuple2!17430)

(assert (=> d!490887 (= c!265251 (> (size!14283 (_1!10117 lt!589817)) 0))))

(assert (=> d!490887 (= lt!589817 (lexTailRecV2!553 thiss!17113 rules!1846 (print!1305 thiss!17113 (seqFromList!2039 (t!149059 tokens!457))) (BalanceConc!11821 Empty!5938) (print!1305 thiss!17113 (seqFromList!2039 (t!149059 tokens!457))) (BalanceConc!11823 Empty!5939)))))

(assert (=> d!490887 (= (lex!1258 thiss!17113 rules!1846 (print!1305 thiss!17113 (seqFromList!2039 (t!149059 tokens!457)))) lt!589817)))

(declare-fun b!1629042 () Bool)

(declare-fun e!1044735 () Bool)

(assert (=> b!1629042 (= e!1044735 (not (isEmpty!10882 (_1!10117 lt!589817))))))

(declare-fun b!1629043 () Bool)

(declare-fun res!728524 () Bool)

(assert (=> b!1629043 (=> (not res!728524) (not e!1044736))))

(assert (=> b!1629043 (= res!728524 (= (list!7012 (_1!10117 lt!589817)) (_1!10120 (lexList!830 thiss!17113 rules!1846 (list!7011 (print!1305 thiss!17113 (seqFromList!2039 (t!149059 tokens!457))))))))))

(declare-fun b!1629044 () Bool)

(assert (=> b!1629044 (= e!1044737 e!1044735)))

(declare-fun res!728525 () Bool)

(assert (=> b!1629044 (= res!728525 (< (size!14284 (_2!10117 lt!589817)) (size!14284 (print!1305 thiss!17113 (seqFromList!2039 (t!149059 tokens!457))))))))

(assert (=> b!1629044 (=> (not res!728525) (not e!1044735))))

(declare-fun b!1629045 () Bool)

(assert (=> b!1629045 (= e!1044736 (= (list!7011 (_2!10117 lt!589817)) (_2!10120 (lexList!830 thiss!17113 rules!1846 (list!7011 (print!1305 thiss!17113 (seqFromList!2039 (t!149059 tokens!457))))))))))

(declare-fun b!1629046 () Bool)

(assert (=> b!1629046 (= e!1044737 (= (_2!10117 lt!589817) (print!1305 thiss!17113 (seqFromList!2039 (t!149059 tokens!457)))))))

(assert (= (and d!490887 c!265251) b!1629044))

(assert (= (and d!490887 (not c!265251)) b!1629046))

(assert (= (and b!1629044 res!728525) b!1629042))

(assert (= (and d!490887 res!728523) b!1629043))

(assert (= (and b!1629043 res!728524) b!1629045))

(declare-fun m!1960359 () Bool)

(assert (=> b!1629045 m!1960359))

(assert (=> b!1629045 m!1955217))

(declare-fun m!1960361 () Bool)

(assert (=> b!1629045 m!1960361))

(assert (=> b!1629045 m!1960361))

(declare-fun m!1960363 () Bool)

(assert (=> b!1629045 m!1960363))

(declare-fun m!1960365 () Bool)

(assert (=> b!1629043 m!1960365))

(assert (=> b!1629043 m!1955217))

(assert (=> b!1629043 m!1960361))

(assert (=> b!1629043 m!1960361))

(assert (=> b!1629043 m!1960363))

(declare-fun m!1960367 () Bool)

(assert (=> d!490887 m!1960367))

(assert (=> d!490887 m!1955217))

(assert (=> d!490887 m!1955217))

(declare-fun m!1960369 () Bool)

(assert (=> d!490887 m!1960369))

(declare-fun m!1960371 () Bool)

(assert (=> b!1629044 m!1960371))

(assert (=> b!1629044 m!1955217))

(declare-fun m!1960373 () Bool)

(assert (=> b!1629044 m!1960373))

(declare-fun m!1960375 () Bool)

(assert (=> b!1629042 m!1960375))

(assert (=> d!489537 d!490887))

(assert (=> d!489537 d!490687))

(assert (=> d!489537 d!489721))

(declare-fun d!490889 () Bool)

(assert (=> d!490889 (= (list!7012 (_1!10117 (lex!1258 thiss!17113 rules!1846 (print!1305 thiss!17113 (seqFromList!2039 (t!149059 tokens!457)))))) (list!7014 (c!264625 (_1!10117 (lex!1258 thiss!17113 rules!1846 (print!1305 thiss!17113 (seqFromList!2039 (t!149059 tokens!457))))))))))

(declare-fun bs!395042 () Bool)

(assert (= bs!395042 d!490889))

(declare-fun m!1960377 () Bool)

(assert (=> bs!395042 m!1960377))

(assert (=> d!489537 d!490889))

(declare-fun d!490891 () Bool)

(declare-fun c!265254 () Bool)

(assert (=> d!490891 (= c!265254 ((_ is Nil!17854) lt!588376))))

(declare-fun e!1044740 () (InoxSet C!9120))

(assert (=> d!490891 (= (content!2476 lt!588376) e!1044740)))

(declare-fun b!1629051 () Bool)

(assert (=> b!1629051 (= e!1044740 ((as const (Array C!9120 Bool)) false))))

(declare-fun b!1629052 () Bool)

(assert (=> b!1629052 (= e!1044740 ((_ map or) (store ((as const (Array C!9120 Bool)) false) (h!23255 lt!588376) true) (content!2476 (t!149057 lt!588376))))))

(assert (= (and d!490891 c!265254) b!1629051))

(assert (= (and d!490891 (not c!265254)) b!1629052))

(declare-fun m!1960379 () Bool)

(assert (=> b!1629052 m!1960379))

(declare-fun m!1960381 () Bool)

(assert (=> b!1629052 m!1960381))

(assert (=> d!489679 d!490891))

(declare-fun d!490893 () Bool)

(declare-fun c!265255 () Bool)

(assert (=> d!490893 (= c!265255 ((_ is Nil!17854) (originalCharacters!3959 (h!23257 tokens!457))))))

(declare-fun e!1044741 () (InoxSet C!9120))

(assert (=> d!490893 (= (content!2476 (originalCharacters!3959 (h!23257 tokens!457))) e!1044741)))

(declare-fun b!1629053 () Bool)

(assert (=> b!1629053 (= e!1044741 ((as const (Array C!9120 Bool)) false))))

(declare-fun b!1629054 () Bool)

(assert (=> b!1629054 (= e!1044741 ((_ map or) (store ((as const (Array C!9120 Bool)) false) (h!23255 (originalCharacters!3959 (h!23257 tokens!457))) true) (content!2476 (t!149057 (originalCharacters!3959 (h!23257 tokens!457))))))))

(assert (= (and d!490893 c!265255) b!1629053))

(assert (= (and d!490893 (not c!265255)) b!1629054))

(declare-fun m!1960383 () Bool)

(assert (=> b!1629054 m!1960383))

(assert (=> b!1629054 m!1960203))

(assert (=> d!489679 d!490893))

(assert (=> d!489679 d!490497))

(declare-fun d!490895 () Bool)

(declare-fun lt!589868 () Bool)

(assert (=> d!490895 (= lt!589868 (select (content!2475 rules!1846) (rule!4971 (_1!10119 (get!5150 lt!588346)))))))

(declare-fun e!1044742 () Bool)

(assert (=> d!490895 (= lt!589868 e!1044742)))

(declare-fun res!728527 () Bool)

(assert (=> d!490895 (=> (not res!728527) (not e!1044742))))

(assert (=> d!490895 (= res!728527 ((_ is Cons!17855) rules!1846))))

(assert (=> d!490895 (= (contains!3120 rules!1846 (rule!4971 (_1!10119 (get!5150 lt!588346)))) lt!589868)))

(declare-fun b!1629055 () Bool)

(declare-fun e!1044743 () Bool)

(assert (=> b!1629055 (= e!1044742 e!1044743)))

(declare-fun res!728526 () Bool)

(assert (=> b!1629055 (=> res!728526 e!1044743)))

(assert (=> b!1629055 (= res!728526 (= (h!23256 rules!1846) (rule!4971 (_1!10119 (get!5150 lt!588346)))))))

(declare-fun b!1629056 () Bool)

(assert (=> b!1629056 (= e!1044743 (contains!3120 (t!149058 rules!1846) (rule!4971 (_1!10119 (get!5150 lt!588346)))))))

(assert (= (and d!490895 res!728527) b!1629055))

(assert (= (and b!1629055 (not res!728526)) b!1629056))

(assert (=> d!490895 m!1955443))

(declare-fun m!1960385 () Bool)

(assert (=> d!490895 m!1960385))

(declare-fun m!1960387 () Bool)

(assert (=> b!1629056 m!1960387))

(assert (=> b!1626687 d!490895))

(assert (=> b!1626687 d!489939))

(declare-fun b!1629089 () Bool)

(declare-fun res!728541 () Bool)

(declare-fun e!1044758 () Bool)

(assert (=> b!1629089 (=> (not res!728541) (not e!1044758))))

(assert (=> b!1629089 (= res!728541 (isBalanced!1793 (right!14679 (c!264625 lt!588373))))))

(declare-fun b!1629090 () Bool)

(declare-fun res!728543 () Bool)

(assert (=> b!1629090 (=> (not res!728543) (not e!1044758))))

(declare-fun height!909 (Conc!5939) Int)

(assert (=> b!1629090 (= res!728543 (<= (- (height!909 (left!14349 (c!264625 lt!588373))) (height!909 (right!14679 (c!264625 lt!588373)))) 1))))

(declare-fun d!490897 () Bool)

(declare-fun res!728540 () Bool)

(declare-fun e!1044759 () Bool)

(assert (=> d!490897 (=> res!728540 e!1044759)))

(assert (=> d!490897 (= res!728540 (not ((_ is Node!5939) (c!264625 lt!588373))))))

(assert (=> d!490897 (= (isBalanced!1793 (c!264625 lt!588373)) e!1044759)))

(declare-fun b!1629091 () Bool)

(declare-fun res!728545 () Bool)

(assert (=> b!1629091 (=> (not res!728545) (not e!1044758))))

(assert (=> b!1629091 (= res!728545 (isBalanced!1793 (left!14349 (c!264625 lt!588373))))))

(declare-fun b!1629092 () Bool)

(declare-fun res!728544 () Bool)

(assert (=> b!1629092 (=> (not res!728544) (not e!1044758))))

(assert (=> b!1629092 (= res!728544 (not (isEmpty!10889 (left!14349 (c!264625 lt!588373)))))))

(declare-fun b!1629093 () Bool)

(assert (=> b!1629093 (= e!1044759 e!1044758)))

(declare-fun res!728542 () Bool)

(assert (=> b!1629093 (=> (not res!728542) (not e!1044758))))

(assert (=> b!1629093 (= res!728542 (<= (- 1) (- (height!909 (left!14349 (c!264625 lt!588373))) (height!909 (right!14679 (c!264625 lt!588373))))))))

(declare-fun b!1629094 () Bool)

(assert (=> b!1629094 (= e!1044758 (not (isEmpty!10889 (right!14679 (c!264625 lt!588373)))))))

(assert (= (and d!490897 (not res!728540)) b!1629093))

(assert (= (and b!1629093 res!728542) b!1629090))

(assert (= (and b!1629090 res!728543) b!1629091))

(assert (= (and b!1629091 res!728545) b!1629089))

(assert (= (and b!1629089 res!728541) b!1629092))

(assert (= (and b!1629092 res!728544) b!1629094))

(declare-fun m!1960389 () Bool)

(assert (=> b!1629092 m!1960389))

(declare-fun m!1960391 () Bool)

(assert (=> b!1629090 m!1960391))

(declare-fun m!1960393 () Bool)

(assert (=> b!1629090 m!1960393))

(assert (=> b!1629093 m!1960391))

(assert (=> b!1629093 m!1960393))

(declare-fun m!1960395 () Bool)

(assert (=> b!1629091 m!1960395))

(declare-fun m!1960397 () Bool)

(assert (=> b!1629089 m!1960397))

(declare-fun m!1960399 () Bool)

(assert (=> b!1629094 m!1960399))

(assert (=> b!1626707 d!490897))

(declare-fun d!490899 () Bool)

(assert (=> d!490899 (= (list!7011 lt!588444) (list!7016 (c!264623 lt!588444)))))

(declare-fun bs!395043 () Bool)

(assert (= bs!395043 d!490899))

(declare-fun m!1960401 () Bool)

(assert (=> bs!395043 m!1960401))

(assert (=> d!489703 d!490899))

(declare-fun d!490901 () Bool)

(declare-fun c!265266 () Bool)

(assert (=> d!490901 (= c!265266 ((_ is Cons!17856) (list!7012 (seqFromList!2039 tokens!457))))))

(declare-fun e!1044760 () List!17924)

(assert (=> d!490901 (= (printList!889 thiss!17113 (list!7012 (seqFromList!2039 tokens!457))) e!1044760)))

(declare-fun b!1629095 () Bool)

(assert (=> b!1629095 (= e!1044760 (++!4751 (list!7011 (charsOf!1794 (h!23257 (list!7012 (seqFromList!2039 tokens!457))))) (printList!889 thiss!17113 (t!149059 (list!7012 (seqFromList!2039 tokens!457))))))))

(declare-fun b!1629096 () Bool)

(assert (=> b!1629096 (= e!1044760 Nil!17854)))

(assert (= (and d!490901 c!265266) b!1629095))

(assert (= (and d!490901 (not c!265266)) b!1629096))

(declare-fun m!1960403 () Bool)

(assert (=> b!1629095 m!1960403))

(assert (=> b!1629095 m!1960403))

(declare-fun m!1960405 () Bool)

(assert (=> b!1629095 m!1960405))

(declare-fun m!1960407 () Bool)

(assert (=> b!1629095 m!1960407))

(assert (=> b!1629095 m!1960405))

(assert (=> b!1629095 m!1960407))

(declare-fun m!1960409 () Bool)

(assert (=> b!1629095 m!1960409))

(assert (=> d!489703 d!490901))

(declare-fun d!490903 () Bool)

(assert (=> d!490903 (= (list!7012 (seqFromList!2039 tokens!457)) (list!7014 (c!264625 (seqFromList!2039 tokens!457))))))

(declare-fun bs!395044 () Bool)

(assert (= bs!395044 d!490903))

(declare-fun m!1960411 () Bool)

(assert (=> bs!395044 m!1960411))

(assert (=> d!489703 d!490903))

(declare-fun d!490905 () Bool)

(declare-fun lt!589921 () BalanceConc!11820)

(assert (=> d!490905 (= (list!7011 lt!589921) (printListTailRec!357 thiss!17113 (dropList!611 (seqFromList!2039 tokens!457) 0) (list!7011 (BalanceConc!11821 Empty!5938))))))

(declare-fun e!1044761 () BalanceConc!11820)

(assert (=> d!490905 (= lt!589921 e!1044761)))

(declare-fun c!265267 () Bool)

(assert (=> d!490905 (= c!265267 (>= 0 (size!14283 (seqFromList!2039 tokens!457))))))

(declare-fun e!1044762 () Bool)

(assert (=> d!490905 e!1044762))

(declare-fun res!728546 () Bool)

(assert (=> d!490905 (=> (not res!728546) (not e!1044762))))

(assert (=> d!490905 (= res!728546 (>= 0 0))))

(assert (=> d!490905 (= (printTailRec!827 thiss!17113 (seqFromList!2039 tokens!457) 0 (BalanceConc!11821 Empty!5938)) lt!589921)))

(declare-fun b!1629097 () Bool)

(assert (=> b!1629097 (= e!1044762 (<= 0 (size!14283 (seqFromList!2039 tokens!457))))))

(declare-fun b!1629098 () Bool)

(assert (=> b!1629098 (= e!1044761 (BalanceConc!11821 Empty!5938))))

(declare-fun b!1629099 () Bool)

(assert (=> b!1629099 (= e!1044761 (printTailRec!827 thiss!17113 (seqFromList!2039 tokens!457) (+ 0 1) (++!4752 (BalanceConc!11821 Empty!5938) (charsOf!1794 (apply!4574 (seqFromList!2039 tokens!457) 0)))))))

(declare-fun lt!589917 () List!17926)

(assert (=> b!1629099 (= lt!589917 (list!7012 (seqFromList!2039 tokens!457)))))

(declare-fun lt!589918 () Unit!28923)

(assert (=> b!1629099 (= lt!589918 (lemmaDropApply!564 lt!589917 0))))

(assert (=> b!1629099 (= (head!3452 (drop!874 lt!589917 0)) (apply!4576 lt!589917 0))))

(declare-fun lt!589916 () Unit!28923)

(assert (=> b!1629099 (= lt!589916 lt!589918)))

(declare-fun lt!589920 () List!17926)

(assert (=> b!1629099 (= lt!589920 (list!7012 (seqFromList!2039 tokens!457)))))

(declare-fun lt!589919 () Unit!28923)

(assert (=> b!1629099 (= lt!589919 (lemmaDropTail!544 lt!589920 0))))

(assert (=> b!1629099 (= (tail!2368 (drop!874 lt!589920 0)) (drop!874 lt!589920 (+ 0 1)))))

(declare-fun lt!589915 () Unit!28923)

(assert (=> b!1629099 (= lt!589915 lt!589919)))

(assert (= (and d!490905 res!728546) b!1629097))

(assert (= (and d!490905 c!265267) b!1629098))

(assert (= (and d!490905 (not c!265267)) b!1629099))

(assert (=> d!490905 m!1954945))

(declare-fun m!1960413 () Bool)

(assert (=> d!490905 m!1960413))

(declare-fun m!1960415 () Bool)

(assert (=> d!490905 m!1960415))

(assert (=> d!490905 m!1955685))

(declare-fun m!1960417 () Bool)

(assert (=> d!490905 m!1960417))

(assert (=> d!490905 m!1955685))

(declare-fun m!1960419 () Bool)

(assert (=> d!490905 m!1960419))

(assert (=> d!490905 m!1954945))

(assert (=> d!490905 m!1960417))

(assert (=> b!1629097 m!1954945))

(assert (=> b!1629097 m!1960413))

(declare-fun m!1960421 () Bool)

(assert (=> b!1629099 m!1960421))

(declare-fun m!1960423 () Bool)

(assert (=> b!1629099 m!1960423))

(declare-fun m!1960425 () Bool)

(assert (=> b!1629099 m!1960425))

(declare-fun m!1960427 () Bool)

(assert (=> b!1629099 m!1960427))

(declare-fun m!1960429 () Bool)

(assert (=> b!1629099 m!1960429))

(assert (=> b!1629099 m!1954945))

(assert (=> b!1629099 m!1960427))

(assert (=> b!1629099 m!1954945))

(assert (=> b!1629099 m!1955877))

(declare-fun m!1960431 () Bool)

(assert (=> b!1629099 m!1960431))

(assert (=> b!1629099 m!1960429))

(declare-fun m!1960433 () Bool)

(assert (=> b!1629099 m!1960433))

(assert (=> b!1629099 m!1960425))

(declare-fun m!1960435 () Bool)

(assert (=> b!1629099 m!1960435))

(assert (=> b!1629099 m!1954945))

(assert (=> b!1629099 m!1960433))

(declare-fun m!1960437 () Bool)

(assert (=> b!1629099 m!1960437))

(declare-fun m!1960439 () Bool)

(assert (=> b!1629099 m!1960439))

(assert (=> b!1629099 m!1960421))

(declare-fun m!1960441 () Bool)

(assert (=> b!1629099 m!1960441))

(declare-fun m!1960443 () Bool)

(assert (=> b!1629099 m!1960443))

(assert (=> d!489703 d!490905))

(declare-fun d!490907 () Bool)

(declare-fun lt!589922 () Int)

(assert (=> d!490907 (= lt!589922 (size!14291 (list!7012 (_1!10117 lt!588445))))))

(assert (=> d!490907 (= lt!589922 (size!14292 (c!264625 (_1!10117 lt!588445))))))

(assert (=> d!490907 (= (size!14283 (_1!10117 lt!588445)) lt!589922)))

(declare-fun bs!395045 () Bool)

(assert (= bs!395045 d!490907))

(assert (=> bs!395045 m!1955889))

(assert (=> bs!395045 m!1955889))

(declare-fun m!1960445 () Bool)

(assert (=> bs!395045 m!1960445))

(declare-fun m!1960447 () Bool)

(assert (=> bs!395045 m!1960447))

(assert (=> d!489707 d!490907))

(declare-fun d!490909 () Bool)

(declare-fun e!1044896 () Bool)

(assert (=> d!490909 e!1044896))

(declare-fun res!728618 () Bool)

(assert (=> d!490909 (=> (not res!728618) (not e!1044896))))

(declare-fun lt!590175 () tuple2!17430)

(declare-fun lexRec!365 (LexerInterface!2774 List!17925 BalanceConc!11820) tuple2!17430)

(assert (=> d!490909 (= res!728618 (= (list!7012 (_1!10117 lt!590175)) (list!7012 (_1!10117 (lexRec!365 thiss!17113 rules!1846 lt!587989)))))))

(declare-fun e!1044894 () tuple2!17430)

(assert (=> d!490909 (= lt!590175 e!1044894)))

(declare-fun c!265314 () Bool)

(declare-fun lt!590152 () Option!3315)

(assert (=> d!490909 (= c!265314 ((_ is Some!3314) lt!590152))))

(declare-fun maxPrefixZipperSequenceV2!260 (LexerInterface!2774 List!17925 BalanceConc!11820 BalanceConc!11820) Option!3315)

(assert (=> d!490909 (= lt!590152 (maxPrefixZipperSequenceV2!260 thiss!17113 rules!1846 lt!587989 lt!587989))))

(declare-fun lt!590165 () Unit!28923)

(declare-fun lt!590164 () Unit!28923)

(assert (=> d!490909 (= lt!590165 lt!590164)))

(declare-fun lt!590171 () List!17924)

(declare-fun lt!590143 () List!17924)

(declare-fun isSuffix!411 (List!17924 List!17924) Bool)

(assert (=> d!490909 (isSuffix!411 lt!590171 (++!4751 lt!590143 lt!590171))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!312 (List!17924 List!17924) Unit!28923)

(assert (=> d!490909 (= lt!590164 (lemmaConcatTwoListThenFSndIsSuffix!312 lt!590143 lt!590171))))

(assert (=> d!490909 (= lt!590171 (list!7011 lt!587989))))

(assert (=> d!490909 (= lt!590143 (list!7011 (BalanceConc!11821 Empty!5938)))))

(assert (=> d!490909 (= (lexTailRecV2!553 thiss!17113 rules!1846 lt!587989 (BalanceConc!11821 Empty!5938) lt!587989 (BalanceConc!11823 Empty!5939)) lt!590175)))

(declare-fun lt!590173 () Option!3315)

(declare-fun b!1629336 () Bool)

(declare-fun lt!590151 () tuple2!17430)

(assert (=> b!1629336 (= lt!590151 (lexRec!365 thiss!17113 rules!1846 (_2!10118 (v!24357 lt!590173))))))

(declare-fun e!1044895 () tuple2!17430)

(assert (=> b!1629336 (= e!1044895 (tuple2!17431 (prepend!673 (_1!10117 lt!590151) (_1!10118 (v!24357 lt!590173))) (_2!10117 lt!590151)))))

(declare-fun b!1629337 () Bool)

(declare-fun e!1044893 () tuple2!17430)

(declare-fun lt!590146 () BalanceConc!11820)

(assert (=> b!1629337 (= e!1044893 (tuple2!17431 (BalanceConc!11823 Empty!5939) lt!590146))))

(declare-fun b!1629338 () Bool)

(assert (=> b!1629338 (= e!1044895 (tuple2!17431 (BalanceConc!11823 Empty!5939) lt!587989))))

(declare-fun b!1629339 () Bool)

(declare-fun lt!590155 () BalanceConc!11820)

(declare-fun append!548 (BalanceConc!11822 Token!5856) BalanceConc!11822)

(assert (=> b!1629339 (= e!1044894 (lexTailRecV2!553 thiss!17113 rules!1846 lt!587989 lt!590155 (_2!10118 (v!24357 lt!590152)) (append!548 (BalanceConc!11823 Empty!5939) (_1!10118 (v!24357 lt!590152)))))))

(declare-fun lt!590167 () tuple2!17430)

(assert (=> b!1629339 (= lt!590167 (lexRec!365 thiss!17113 rules!1846 (_2!10118 (v!24357 lt!590152))))))

(declare-fun lt!590144 () List!17924)

(assert (=> b!1629339 (= lt!590144 (list!7011 (BalanceConc!11821 Empty!5938)))))

(declare-fun lt!590157 () List!17924)

(assert (=> b!1629339 (= lt!590157 (list!7011 (charsOf!1794 (_1!10118 (v!24357 lt!590152)))))))

(declare-fun lt!590174 () List!17924)

(assert (=> b!1629339 (= lt!590174 (list!7011 (_2!10118 (v!24357 lt!590152))))))

(declare-fun lt!590156 () Unit!28923)

(assert (=> b!1629339 (= lt!590156 (lemmaConcatAssociativity!1006 lt!590144 lt!590157 lt!590174))))

(assert (=> b!1629339 (= (++!4751 (++!4751 lt!590144 lt!590157) lt!590174) (++!4751 lt!590144 (++!4751 lt!590157 lt!590174)))))

(declare-fun lt!590170 () Unit!28923)

(assert (=> b!1629339 (= lt!590170 lt!590156)))

(assert (=> b!1629339 (= lt!590173 (maxPrefixZipperSequence!669 thiss!17113 rules!1846 lt!587989))))

(declare-fun c!265313 () Bool)

(assert (=> b!1629339 (= c!265313 ((_ is Some!3314) lt!590173))))

(assert (=> b!1629339 (= (lexRec!365 thiss!17113 rules!1846 lt!587989) e!1044895)))

(declare-fun lt!590162 () Unit!28923)

(declare-fun Unit!29013 () Unit!28923)

(assert (=> b!1629339 (= lt!590162 Unit!29013)))

(declare-fun lt!590172 () List!17926)

(assert (=> b!1629339 (= lt!590172 (list!7012 (BalanceConc!11823 Empty!5939)))))

(declare-fun lt!590166 () List!17926)

(assert (=> b!1629339 (= lt!590166 (Cons!17856 (_1!10118 (v!24357 lt!590152)) Nil!17856))))

(declare-fun lt!590142 () List!17926)

(assert (=> b!1629339 (= lt!590142 (list!7012 (_1!10117 lt!590167)))))

(declare-fun lt!590163 () Unit!28923)

(declare-fun lemmaConcatAssociativity!1007 (List!17926 List!17926 List!17926) Unit!28923)

(assert (=> b!1629339 (= lt!590163 (lemmaConcatAssociativity!1007 lt!590172 lt!590166 lt!590142))))

(assert (=> b!1629339 (= (++!4756 (++!4756 lt!590172 lt!590166) lt!590142) (++!4756 lt!590172 (++!4756 lt!590166 lt!590142)))))

(declare-fun lt!590154 () Unit!28923)

(assert (=> b!1629339 (= lt!590154 lt!590163)))

(declare-fun lt!590147 () List!17924)

(assert (=> b!1629339 (= lt!590147 (++!4751 (list!7011 (BalanceConc!11821 Empty!5938)) (list!7011 (charsOf!1794 (_1!10118 (v!24357 lt!590152))))))))

(declare-fun lt!590149 () List!17924)

(assert (=> b!1629339 (= lt!590149 (list!7011 (_2!10118 (v!24357 lt!590152))))))

(declare-fun lt!590148 () List!17926)

(assert (=> b!1629339 (= lt!590148 (list!7012 (append!548 (BalanceConc!11823 Empty!5939) (_1!10118 (v!24357 lt!590152)))))))

(declare-fun lt!590160 () Unit!28923)

(declare-fun lemmaLexThenLexPrefix!253 (LexerInterface!2774 List!17925 List!17924 List!17924 List!17926 List!17926 List!17924) Unit!28923)

(assert (=> b!1629339 (= lt!590160 (lemmaLexThenLexPrefix!253 thiss!17113 rules!1846 lt!590147 lt!590149 lt!590148 (list!7012 (_1!10117 lt!590167)) (list!7011 (_2!10117 lt!590167))))))

(assert (=> b!1629339 (= (lexList!830 thiss!17113 rules!1846 lt!590147) (tuple2!17437 lt!590148 Nil!17854))))

(declare-fun lt!590145 () Unit!28923)

(assert (=> b!1629339 (= lt!590145 lt!590160)))

(assert (=> b!1629339 (= lt!590146 (++!4752 (BalanceConc!11821 Empty!5938) (charsOf!1794 (_1!10118 (v!24357 lt!590152)))))))

(declare-fun lt!590161 () Option!3315)

(assert (=> b!1629339 (= lt!590161 (maxPrefixZipperSequence!669 thiss!17113 rules!1846 lt!590146))))

(declare-fun c!265315 () Bool)

(assert (=> b!1629339 (= c!265315 ((_ is Some!3314) lt!590161))))

(assert (=> b!1629339 (= (lexRec!365 thiss!17113 rules!1846 (++!4752 (BalanceConc!11821 Empty!5938) (charsOf!1794 (_1!10118 (v!24357 lt!590152))))) e!1044893)))

(declare-fun lt!590169 () Unit!28923)

(declare-fun Unit!29021 () Unit!28923)

(assert (=> b!1629339 (= lt!590169 Unit!29021)))

(assert (=> b!1629339 (= lt!590155 (++!4752 (BalanceConc!11821 Empty!5938) (charsOf!1794 (_1!10118 (v!24357 lt!590152)))))))

(declare-fun lt!590159 () List!17924)

(assert (=> b!1629339 (= lt!590159 (list!7011 lt!590155))))

(declare-fun lt!590150 () List!17924)

(assert (=> b!1629339 (= lt!590150 (list!7011 (_2!10118 (v!24357 lt!590152))))))

(declare-fun lt!590158 () Unit!28923)

(assert (=> b!1629339 (= lt!590158 (lemmaConcatTwoListThenFSndIsSuffix!312 lt!590159 lt!590150))))

(assert (=> b!1629339 (isSuffix!411 lt!590150 (++!4751 lt!590159 lt!590150))))

(declare-fun lt!590153 () Unit!28923)

(assert (=> b!1629339 (= lt!590153 lt!590158)))

(declare-fun b!1629340 () Bool)

(assert (=> b!1629340 (= e!1044896 (= (list!7011 (_2!10117 lt!590175)) (list!7011 (_2!10117 (lexRec!365 thiss!17113 rules!1846 lt!587989)))))))

(declare-fun b!1629341 () Bool)

(assert (=> b!1629341 (= e!1044894 (tuple2!17431 (BalanceConc!11823 Empty!5939) lt!587989))))

(declare-fun b!1629342 () Bool)

(declare-fun lt!590168 () tuple2!17430)

(assert (=> b!1629342 (= lt!590168 (lexRec!365 thiss!17113 rules!1846 (_2!10118 (v!24357 lt!590161))))))

(assert (=> b!1629342 (= e!1044893 (tuple2!17431 (prepend!673 (_1!10117 lt!590168) (_1!10118 (v!24357 lt!590161))) (_2!10117 lt!590168)))))

(assert (= (and d!490909 c!265314) b!1629339))

(assert (= (and d!490909 (not c!265314)) b!1629341))

(assert (= (and b!1629339 c!265313) b!1629336))

(assert (= (and b!1629339 (not c!265313)) b!1629338))

(assert (= (and b!1629339 c!265315) b!1629342))

(assert (= (and b!1629339 (not c!265315)) b!1629337))

(assert (= (and d!490909 res!728618) b!1629340))

(declare-fun m!1960977 () Bool)

(assert (=> b!1629336 m!1960977))

(declare-fun m!1960979 () Bool)

(assert (=> b!1629336 m!1960979))

(declare-fun m!1960981 () Bool)

(assert (=> b!1629340 m!1960981))

(declare-fun m!1960983 () Bool)

(assert (=> b!1629340 m!1960983))

(declare-fun m!1960985 () Bool)

(assert (=> b!1629340 m!1960985))

(declare-fun m!1960987 () Bool)

(assert (=> b!1629342 m!1960987))

(declare-fun m!1960989 () Bool)

(assert (=> b!1629342 m!1960989))

(declare-fun m!1960991 () Bool)

(assert (=> d!490909 m!1960991))

(declare-fun m!1960993 () Bool)

(assert (=> d!490909 m!1960993))

(declare-fun m!1960995 () Bool)

(assert (=> d!490909 m!1960995))

(declare-fun m!1960997 () Bool)

(assert (=> d!490909 m!1960997))

(assert (=> d!490909 m!1960983))

(declare-fun m!1960999 () Bool)

(assert (=> d!490909 m!1960999))

(assert (=> d!490909 m!1955685))

(declare-fun m!1961001 () Bool)

(assert (=> d!490909 m!1961001))

(assert (=> d!490909 m!1954949))

(assert (=> d!490909 m!1960995))

(declare-fun m!1961003 () Bool)

(assert (=> b!1629339 m!1961003))

(declare-fun m!1961005 () Bool)

(assert (=> b!1629339 m!1961005))

(declare-fun m!1961007 () Bool)

(assert (=> b!1629339 m!1961007))

(declare-fun m!1961009 () Bool)

(assert (=> b!1629339 m!1961009))

(declare-fun m!1961011 () Bool)

(assert (=> b!1629339 m!1961011))

(declare-fun m!1961013 () Bool)

(assert (=> b!1629339 m!1961013))

(assert (=> b!1629339 m!1961007))

(declare-fun m!1961015 () Bool)

(assert (=> b!1629339 m!1961015))

(declare-fun m!1961017 () Bool)

(assert (=> b!1629339 m!1961017))

(declare-fun m!1961019 () Bool)

(assert (=> b!1629339 m!1961019))

(assert (=> b!1629339 m!1961011))

(assert (=> b!1629339 m!1955685))

(declare-fun m!1961021 () Bool)

(assert (=> b!1629339 m!1961021))

(declare-fun m!1961023 () Bool)

(assert (=> b!1629339 m!1961023))

(assert (=> b!1629339 m!1961009))

(declare-fun m!1961025 () Bool)

(assert (=> b!1629339 m!1961025))

(assert (=> b!1629339 m!1961011))

(assert (=> b!1629339 m!1961021))

(declare-fun m!1961027 () Bool)

(assert (=> b!1629339 m!1961027))

(declare-fun m!1961029 () Bool)

(assert (=> b!1629339 m!1961029))

(declare-fun m!1961031 () Bool)

(assert (=> b!1629339 m!1961031))

(assert (=> b!1629339 m!1961027))

(declare-fun m!1961033 () Bool)

(assert (=> b!1629339 m!1961033))

(declare-fun m!1961035 () Bool)

(assert (=> b!1629339 m!1961035))

(declare-fun m!1961037 () Bool)

(assert (=> b!1629339 m!1961037))

(declare-fun m!1961039 () Bool)

(assert (=> b!1629339 m!1961039))

(declare-fun m!1961041 () Bool)

(assert (=> b!1629339 m!1961041))

(assert (=> b!1629339 m!1961027))

(declare-fun m!1961043 () Bool)

(assert (=> b!1629339 m!1961043))

(declare-fun m!1961045 () Bool)

(assert (=> b!1629339 m!1961045))

(declare-fun m!1961047 () Bool)

(assert (=> b!1629339 m!1961047))

(assert (=> b!1629339 m!1961039))

(assert (=> b!1629339 m!1961003))

(declare-fun m!1961049 () Bool)

(assert (=> b!1629339 m!1961049))

(declare-fun m!1961051 () Bool)

(assert (=> b!1629339 m!1961051))

(declare-fun m!1961053 () Bool)

(assert (=> b!1629339 m!1961053))

(assert (=> b!1629339 m!1955685))

(assert (=> b!1629339 m!1961043))

(assert (=> b!1629339 m!1961013))

(declare-fun m!1961055 () Bool)

(assert (=> b!1629339 m!1961055))

(assert (=> b!1629339 m!1961005))

(declare-fun m!1961057 () Bool)

(assert (=> b!1629339 m!1961057))

(assert (=> b!1629339 m!1960983))

(declare-fun m!1961059 () Bool)

(assert (=> b!1629339 m!1961059))

(declare-fun m!1961061 () Bool)

(assert (=> b!1629339 m!1961061))

(assert (=> b!1629339 m!1961041))

(declare-fun m!1961063 () Bool)

(assert (=> b!1629339 m!1961063))

(assert (=> d!489707 d!490909))

(declare-fun b!1629343 () Bool)

(declare-fun e!1044899 () Bool)

(declare-fun e!1044897 () Bool)

(assert (=> b!1629343 (= e!1044899 e!1044897)))

(declare-fun c!265318 () Bool)

(assert (=> b!1629343 (= c!265318 ((_ is EmptyLang!4473) (regex!3145 (rule!4971 (_1!10119 (get!5150 lt!588346))))))))

(declare-fun b!1629344 () Bool)

(declare-fun lt!590176 () Bool)

(assert (=> b!1629344 (= e!1044897 (not lt!590176))))

(declare-fun b!1629345 () Bool)

(declare-fun res!728623 () Bool)

(declare-fun e!1044901 () Bool)

(assert (=> b!1629345 (=> (not res!728623) (not e!1044901))))

(declare-fun call!105494 () Bool)

(assert (=> b!1629345 (= res!728623 (not call!105494))))

(declare-fun bm!105489 () Bool)

(assert (=> bm!105489 (= call!105494 (isEmpty!10881 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588346))))))))

(declare-fun b!1629346 () Bool)

(declare-fun res!728624 () Bool)

(declare-fun e!1044900 () Bool)

(assert (=> b!1629346 (=> res!728624 e!1044900)))

(assert (=> b!1629346 (= res!728624 (not (isEmpty!10881 (tail!2367 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588346))))))))))

(declare-fun b!1629347 () Bool)

(declare-fun e!1044898 () Bool)

(assert (=> b!1629347 (= e!1044898 (matchR!1972 (derivativeStep!1084 (regex!3145 (rule!4971 (_1!10119 (get!5150 lt!588346)))) (head!3449 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588346)))))) (tail!2367 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588346)))))))))

(declare-fun b!1629348 () Bool)

(declare-fun res!728621 () Bool)

(assert (=> b!1629348 (=> (not res!728621) (not e!1044901))))

(assert (=> b!1629348 (= res!728621 (isEmpty!10881 (tail!2367 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588346)))))))))

(declare-fun b!1629349 () Bool)

(declare-fun res!728620 () Bool)

(declare-fun e!1044903 () Bool)

(assert (=> b!1629349 (=> res!728620 e!1044903)))

(assert (=> b!1629349 (= res!728620 e!1044901)))

(declare-fun res!728619 () Bool)

(assert (=> b!1629349 (=> (not res!728619) (not e!1044901))))

(assert (=> b!1629349 (= res!728619 lt!590176)))

(declare-fun b!1629350 () Bool)

(assert (=> b!1629350 (= e!1044899 (= lt!590176 call!105494))))

(declare-fun b!1629351 () Bool)

(assert (=> b!1629351 (= e!1044901 (= (head!3449 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588346))))) (c!264624 (regex!3145 (rule!4971 (_1!10119 (get!5150 lt!588346)))))))))

(declare-fun b!1629353 () Bool)

(assert (=> b!1629353 (= e!1044900 (not (= (head!3449 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588346))))) (c!264624 (regex!3145 (rule!4971 (_1!10119 (get!5150 lt!588346))))))))))

(declare-fun b!1629354 () Bool)

(assert (=> b!1629354 (= e!1044898 (nullable!1319 (regex!3145 (rule!4971 (_1!10119 (get!5150 lt!588346))))))))

(declare-fun b!1629355 () Bool)

(declare-fun e!1044902 () Bool)

(assert (=> b!1629355 (= e!1044903 e!1044902)))

(declare-fun res!728625 () Bool)

(assert (=> b!1629355 (=> (not res!728625) (not e!1044902))))

(assert (=> b!1629355 (= res!728625 (not lt!590176))))

(declare-fun b!1629356 () Bool)

(declare-fun res!728622 () Bool)

(assert (=> b!1629356 (=> res!728622 e!1044903)))

(assert (=> b!1629356 (= res!728622 (not ((_ is ElementMatch!4473) (regex!3145 (rule!4971 (_1!10119 (get!5150 lt!588346)))))))))

(assert (=> b!1629356 (= e!1044897 e!1044903)))

(declare-fun d!491049 () Bool)

(assert (=> d!491049 e!1044899))

(declare-fun c!265316 () Bool)

(assert (=> d!491049 (= c!265316 ((_ is EmptyExpr!4473) (regex!3145 (rule!4971 (_1!10119 (get!5150 lt!588346))))))))

(assert (=> d!491049 (= lt!590176 e!1044898)))

(declare-fun c!265317 () Bool)

(assert (=> d!491049 (= c!265317 (isEmpty!10881 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588346))))))))

(assert (=> d!491049 (validRegex!1780 (regex!3145 (rule!4971 (_1!10119 (get!5150 lt!588346)))))))

(assert (=> d!491049 (= (matchR!1972 (regex!3145 (rule!4971 (_1!10119 (get!5150 lt!588346)))) (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!588346))))) lt!590176)))

(declare-fun b!1629352 () Bool)

(assert (=> b!1629352 (= e!1044902 e!1044900)))

(declare-fun res!728626 () Bool)

(assert (=> b!1629352 (=> res!728626 e!1044900)))

(assert (=> b!1629352 (= res!728626 call!105494)))

(assert (= (and d!491049 c!265317) b!1629354))

(assert (= (and d!491049 (not c!265317)) b!1629347))

(assert (= (and d!491049 c!265316) b!1629350))

(assert (= (and d!491049 (not c!265316)) b!1629343))

(assert (= (and b!1629343 c!265318) b!1629344))

(assert (= (and b!1629343 (not c!265318)) b!1629356))

(assert (= (and b!1629356 (not res!728622)) b!1629349))

(assert (= (and b!1629349 res!728619) b!1629345))

(assert (= (and b!1629345 res!728623) b!1629348))

(assert (= (and b!1629348 res!728621) b!1629351))

(assert (= (and b!1629349 (not res!728620)) b!1629355))

(assert (= (and b!1629355 res!728625) b!1629352))

(assert (= (and b!1629352 (not res!728626)) b!1629346))

(assert (= (and b!1629346 (not res!728624)) b!1629353))

(assert (= (or b!1629350 b!1629345 b!1629352) bm!105489))

(declare-fun m!1961065 () Bool)

(assert (=> b!1629354 m!1961065))

(assert (=> b!1629353 m!1955641))

(declare-fun m!1961067 () Bool)

(assert (=> b!1629353 m!1961067))

(assert (=> b!1629346 m!1955641))

(declare-fun m!1961069 () Bool)

(assert (=> b!1629346 m!1961069))

(assert (=> b!1629346 m!1961069))

(declare-fun m!1961071 () Bool)

(assert (=> b!1629346 m!1961071))

(assert (=> b!1629348 m!1955641))

(assert (=> b!1629348 m!1961069))

(assert (=> b!1629348 m!1961069))

(assert (=> b!1629348 m!1961071))

(assert (=> b!1629347 m!1955641))

(assert (=> b!1629347 m!1961067))

(assert (=> b!1629347 m!1961067))

(declare-fun m!1961073 () Bool)

(assert (=> b!1629347 m!1961073))

(assert (=> b!1629347 m!1955641))

(assert (=> b!1629347 m!1961069))

(assert (=> b!1629347 m!1961073))

(assert (=> b!1629347 m!1961069))

(declare-fun m!1961075 () Bool)

(assert (=> b!1629347 m!1961075))

(assert (=> bm!105489 m!1955641))

(declare-fun m!1961077 () Bool)

(assert (=> bm!105489 m!1961077))

(assert (=> b!1629351 m!1955641))

(assert (=> b!1629351 m!1961067))

(assert (=> d!491049 m!1955641))

(assert (=> d!491049 m!1961077))

(declare-fun m!1961079 () Bool)

(assert (=> d!491049 m!1961079))

(assert (=> b!1626684 d!491049))

(assert (=> b!1626684 d!489939))

(assert (=> b!1626684 d!490099))

(assert (=> b!1626684 d!490101))

(declare-fun d!491051 () Bool)

(declare-fun lt!590177 () Int)

(assert (=> d!491051 (= lt!590177 (size!14291 (list!7012 (_1!10117 lt!588234))))))

(assert (=> d!491051 (= lt!590177 (size!14292 (c!264625 (_1!10117 lt!588234))))))

(assert (=> d!491051 (= (size!14283 (_1!10117 lt!588234)) lt!590177)))

(declare-fun bs!395073 () Bool)

(assert (= bs!395073 d!491051))

(assert (=> bs!395073 m!1955429))

(assert (=> bs!395073 m!1955429))

(declare-fun m!1961081 () Bool)

(assert (=> bs!395073 m!1961081))

(declare-fun m!1961083 () Bool)

(assert (=> bs!395073 m!1961083))

(assert (=> d!489589 d!491051))

(declare-fun d!491053 () Bool)

(declare-fun e!1044907 () Bool)

(assert (=> d!491053 e!1044907))

(declare-fun res!728627 () Bool)

(assert (=> d!491053 (=> (not res!728627) (not e!1044907))))

(declare-fun lt!590211 () tuple2!17430)

(assert (=> d!491053 (= res!728627 (= (list!7012 (_1!10117 lt!590211)) (list!7012 (_1!10117 (lexRec!365 thiss!17113 rules!1846 (seqFromList!2040 lt!587996))))))))

(declare-fun e!1044905 () tuple2!17430)

(assert (=> d!491053 (= lt!590211 e!1044905)))

(declare-fun c!265320 () Bool)

(declare-fun lt!590188 () Option!3315)

(assert (=> d!491053 (= c!265320 ((_ is Some!3314) lt!590188))))

(assert (=> d!491053 (= lt!590188 (maxPrefixZipperSequenceV2!260 thiss!17113 rules!1846 (seqFromList!2040 lt!587996) (seqFromList!2040 lt!587996)))))

(declare-fun lt!590201 () Unit!28923)

(declare-fun lt!590200 () Unit!28923)

(assert (=> d!491053 (= lt!590201 lt!590200)))

(declare-fun lt!590207 () List!17924)

(declare-fun lt!590179 () List!17924)

(assert (=> d!491053 (isSuffix!411 lt!590207 (++!4751 lt!590179 lt!590207))))

(assert (=> d!491053 (= lt!590200 (lemmaConcatTwoListThenFSndIsSuffix!312 lt!590179 lt!590207))))

(assert (=> d!491053 (= lt!590207 (list!7011 (seqFromList!2040 lt!587996)))))

(assert (=> d!491053 (= lt!590179 (list!7011 (BalanceConc!11821 Empty!5938)))))

(assert (=> d!491053 (= (lexTailRecV2!553 thiss!17113 rules!1846 (seqFromList!2040 lt!587996) (BalanceConc!11821 Empty!5938) (seqFromList!2040 lt!587996) (BalanceConc!11823 Empty!5939)) lt!590211)))

(declare-fun lt!590209 () Option!3315)

(declare-fun b!1629357 () Bool)

(declare-fun lt!590187 () tuple2!17430)

(assert (=> b!1629357 (= lt!590187 (lexRec!365 thiss!17113 rules!1846 (_2!10118 (v!24357 lt!590209))))))

(declare-fun e!1044906 () tuple2!17430)

(assert (=> b!1629357 (= e!1044906 (tuple2!17431 (prepend!673 (_1!10117 lt!590187) (_1!10118 (v!24357 lt!590209))) (_2!10117 lt!590187)))))

(declare-fun b!1629358 () Bool)

(declare-fun e!1044904 () tuple2!17430)

(declare-fun lt!590182 () BalanceConc!11820)

(assert (=> b!1629358 (= e!1044904 (tuple2!17431 (BalanceConc!11823 Empty!5939) lt!590182))))

(declare-fun b!1629359 () Bool)

(assert (=> b!1629359 (= e!1044906 (tuple2!17431 (BalanceConc!11823 Empty!5939) (seqFromList!2040 lt!587996)))))

(declare-fun lt!590191 () BalanceConc!11820)

(declare-fun b!1629360 () Bool)

(assert (=> b!1629360 (= e!1044905 (lexTailRecV2!553 thiss!17113 rules!1846 (seqFromList!2040 lt!587996) lt!590191 (_2!10118 (v!24357 lt!590188)) (append!548 (BalanceConc!11823 Empty!5939) (_1!10118 (v!24357 lt!590188)))))))

(declare-fun lt!590203 () tuple2!17430)

(assert (=> b!1629360 (= lt!590203 (lexRec!365 thiss!17113 rules!1846 (_2!10118 (v!24357 lt!590188))))))

(declare-fun lt!590180 () List!17924)

(assert (=> b!1629360 (= lt!590180 (list!7011 (BalanceConc!11821 Empty!5938)))))

(declare-fun lt!590193 () List!17924)

(assert (=> b!1629360 (= lt!590193 (list!7011 (charsOf!1794 (_1!10118 (v!24357 lt!590188)))))))

(declare-fun lt!590210 () List!17924)

(assert (=> b!1629360 (= lt!590210 (list!7011 (_2!10118 (v!24357 lt!590188))))))

(declare-fun lt!590192 () Unit!28923)

(assert (=> b!1629360 (= lt!590192 (lemmaConcatAssociativity!1006 lt!590180 lt!590193 lt!590210))))

(assert (=> b!1629360 (= (++!4751 (++!4751 lt!590180 lt!590193) lt!590210) (++!4751 lt!590180 (++!4751 lt!590193 lt!590210)))))

(declare-fun lt!590206 () Unit!28923)

(assert (=> b!1629360 (= lt!590206 lt!590192)))

(assert (=> b!1629360 (= lt!590209 (maxPrefixZipperSequence!669 thiss!17113 rules!1846 (seqFromList!2040 lt!587996)))))

(declare-fun c!265319 () Bool)

(assert (=> b!1629360 (= c!265319 ((_ is Some!3314) lt!590209))))

(assert (=> b!1629360 (= (lexRec!365 thiss!17113 rules!1846 (seqFromList!2040 lt!587996)) e!1044906)))

(declare-fun lt!590198 () Unit!28923)

(declare-fun Unit!29028 () Unit!28923)

(assert (=> b!1629360 (= lt!590198 Unit!29028)))

(declare-fun lt!590208 () List!17926)

(assert (=> b!1629360 (= lt!590208 (list!7012 (BalanceConc!11823 Empty!5939)))))

(declare-fun lt!590202 () List!17926)

(assert (=> b!1629360 (= lt!590202 (Cons!17856 (_1!10118 (v!24357 lt!590188)) Nil!17856))))

(declare-fun lt!590178 () List!17926)

(assert (=> b!1629360 (= lt!590178 (list!7012 (_1!10117 lt!590203)))))

(declare-fun lt!590199 () Unit!28923)

(assert (=> b!1629360 (= lt!590199 (lemmaConcatAssociativity!1007 lt!590208 lt!590202 lt!590178))))

(assert (=> b!1629360 (= (++!4756 (++!4756 lt!590208 lt!590202) lt!590178) (++!4756 lt!590208 (++!4756 lt!590202 lt!590178)))))

(declare-fun lt!590190 () Unit!28923)

(assert (=> b!1629360 (= lt!590190 lt!590199)))

(declare-fun lt!590183 () List!17924)

(assert (=> b!1629360 (= lt!590183 (++!4751 (list!7011 (BalanceConc!11821 Empty!5938)) (list!7011 (charsOf!1794 (_1!10118 (v!24357 lt!590188))))))))

(declare-fun lt!590185 () List!17924)

(assert (=> b!1629360 (= lt!590185 (list!7011 (_2!10118 (v!24357 lt!590188))))))

(declare-fun lt!590184 () List!17926)

(assert (=> b!1629360 (= lt!590184 (list!7012 (append!548 (BalanceConc!11823 Empty!5939) (_1!10118 (v!24357 lt!590188)))))))

(declare-fun lt!590196 () Unit!28923)

(assert (=> b!1629360 (= lt!590196 (lemmaLexThenLexPrefix!253 thiss!17113 rules!1846 lt!590183 lt!590185 lt!590184 (list!7012 (_1!10117 lt!590203)) (list!7011 (_2!10117 lt!590203))))))

(assert (=> b!1629360 (= (lexList!830 thiss!17113 rules!1846 lt!590183) (tuple2!17437 lt!590184 Nil!17854))))

(declare-fun lt!590181 () Unit!28923)

(assert (=> b!1629360 (= lt!590181 lt!590196)))

(assert (=> b!1629360 (= lt!590182 (++!4752 (BalanceConc!11821 Empty!5938) (charsOf!1794 (_1!10118 (v!24357 lt!590188)))))))

(declare-fun lt!590197 () Option!3315)

(assert (=> b!1629360 (= lt!590197 (maxPrefixZipperSequence!669 thiss!17113 rules!1846 lt!590182))))

(declare-fun c!265321 () Bool)

(assert (=> b!1629360 (= c!265321 ((_ is Some!3314) lt!590197))))

(assert (=> b!1629360 (= (lexRec!365 thiss!17113 rules!1846 (++!4752 (BalanceConc!11821 Empty!5938) (charsOf!1794 (_1!10118 (v!24357 lt!590188))))) e!1044904)))

(declare-fun lt!590205 () Unit!28923)

(declare-fun Unit!29031 () Unit!28923)

(assert (=> b!1629360 (= lt!590205 Unit!29031)))

(assert (=> b!1629360 (= lt!590191 (++!4752 (BalanceConc!11821 Empty!5938) (charsOf!1794 (_1!10118 (v!24357 lt!590188)))))))

(declare-fun lt!590195 () List!17924)

(assert (=> b!1629360 (= lt!590195 (list!7011 lt!590191))))

(declare-fun lt!590186 () List!17924)

(assert (=> b!1629360 (= lt!590186 (list!7011 (_2!10118 (v!24357 lt!590188))))))

(declare-fun lt!590194 () Unit!28923)

(assert (=> b!1629360 (= lt!590194 (lemmaConcatTwoListThenFSndIsSuffix!312 lt!590195 lt!590186))))

(assert (=> b!1629360 (isSuffix!411 lt!590186 (++!4751 lt!590195 lt!590186))))

(declare-fun lt!590189 () Unit!28923)

(assert (=> b!1629360 (= lt!590189 lt!590194)))

(declare-fun b!1629361 () Bool)

(assert (=> b!1629361 (= e!1044907 (= (list!7011 (_2!10117 lt!590211)) (list!7011 (_2!10117 (lexRec!365 thiss!17113 rules!1846 (seqFromList!2040 lt!587996))))))))

(declare-fun b!1629362 () Bool)

(assert (=> b!1629362 (= e!1044905 (tuple2!17431 (BalanceConc!11823 Empty!5939) (seqFromList!2040 lt!587996)))))

(declare-fun lt!590204 () tuple2!17430)

(declare-fun b!1629363 () Bool)

(assert (=> b!1629363 (= lt!590204 (lexRec!365 thiss!17113 rules!1846 (_2!10118 (v!24357 lt!590197))))))

(assert (=> b!1629363 (= e!1044904 (tuple2!17431 (prepend!673 (_1!10117 lt!590204) (_1!10118 (v!24357 lt!590197))) (_2!10117 lt!590204)))))

(assert (= (and d!491053 c!265320) b!1629360))

(assert (= (and d!491053 (not c!265320)) b!1629362))

(assert (= (and b!1629360 c!265319) b!1629357))

(assert (= (and b!1629360 (not c!265319)) b!1629359))

(assert (= (and b!1629360 c!265321) b!1629363))

(assert (= (and b!1629360 (not c!265321)) b!1629358))

(assert (= (and d!491053 res!728627) b!1629361))

(declare-fun m!1961085 () Bool)

(assert (=> b!1629357 m!1961085))

(declare-fun m!1961087 () Bool)

(assert (=> b!1629357 m!1961087))

(declare-fun m!1961089 () Bool)

(assert (=> b!1629361 m!1961089))

(assert (=> b!1629361 m!1955023))

(declare-fun m!1961091 () Bool)

(assert (=> b!1629361 m!1961091))

(declare-fun m!1961093 () Bool)

(assert (=> b!1629361 m!1961093))

(declare-fun m!1961095 () Bool)

(assert (=> b!1629363 m!1961095))

(declare-fun m!1961097 () Bool)

(assert (=> b!1629363 m!1961097))

(assert (=> d!491053 m!1955023))

(assert (=> d!491053 m!1955023))

(declare-fun m!1961099 () Bool)

(assert (=> d!491053 m!1961099))

(declare-fun m!1961101 () Bool)

(assert (=> d!491053 m!1961101))

(declare-fun m!1961103 () Bool)

(assert (=> d!491053 m!1961103))

(declare-fun m!1961105 () Bool)

(assert (=> d!491053 m!1961105))

(assert (=> d!491053 m!1955023))

(assert (=> d!491053 m!1961091))

(declare-fun m!1961107 () Bool)

(assert (=> d!491053 m!1961107))

(assert (=> d!491053 m!1955685))

(declare-fun m!1961109 () Bool)

(assert (=> d!491053 m!1961109))

(assert (=> d!491053 m!1955023))

(assert (=> d!491053 m!1955425))

(assert (=> d!491053 m!1961103))

(declare-fun m!1961111 () Bool)

(assert (=> b!1629360 m!1961111))

(declare-fun m!1961113 () Bool)

(assert (=> b!1629360 m!1961113))

(declare-fun m!1961115 () Bool)

(assert (=> b!1629360 m!1961115))

(declare-fun m!1961117 () Bool)

(assert (=> b!1629360 m!1961117))

(declare-fun m!1961119 () Bool)

(assert (=> b!1629360 m!1961119))

(declare-fun m!1961121 () Bool)

(assert (=> b!1629360 m!1961121))

(assert (=> b!1629360 m!1961115))

(declare-fun m!1961123 () Bool)

(assert (=> b!1629360 m!1961123))

(assert (=> b!1629360 m!1955023))

(declare-fun m!1961125 () Bool)

(assert (=> b!1629360 m!1961125))

(declare-fun m!1961127 () Bool)

(assert (=> b!1629360 m!1961127))

(assert (=> b!1629360 m!1961119))

(assert (=> b!1629360 m!1955685))

(declare-fun m!1961129 () Bool)

(assert (=> b!1629360 m!1961129))

(declare-fun m!1961131 () Bool)

(assert (=> b!1629360 m!1961131))

(assert (=> b!1629360 m!1961117))

(declare-fun m!1961133 () Bool)

(assert (=> b!1629360 m!1961133))

(assert (=> b!1629360 m!1961119))

(assert (=> b!1629360 m!1961129))

(assert (=> b!1629360 m!1955023))

(declare-fun m!1961135 () Bool)

(assert (=> b!1629360 m!1961135))

(declare-fun m!1961137 () Bool)

(assert (=> b!1629360 m!1961137))

(declare-fun m!1961139 () Bool)

(assert (=> b!1629360 m!1961139))

(assert (=> b!1629360 m!1961135))

(declare-fun m!1961141 () Bool)

(assert (=> b!1629360 m!1961141))

(declare-fun m!1961143 () Bool)

(assert (=> b!1629360 m!1961143))

(declare-fun m!1961145 () Bool)

(assert (=> b!1629360 m!1961145))

(declare-fun m!1961147 () Bool)

(assert (=> b!1629360 m!1961147))

(declare-fun m!1961149 () Bool)

(assert (=> b!1629360 m!1961149))

(assert (=> b!1629360 m!1961135))

(declare-fun m!1961151 () Bool)

(assert (=> b!1629360 m!1961151))

(declare-fun m!1961153 () Bool)

(assert (=> b!1629360 m!1961153))

(declare-fun m!1961155 () Bool)

(assert (=> b!1629360 m!1961155))

(assert (=> b!1629360 m!1961147))

(assert (=> b!1629360 m!1961111))

(declare-fun m!1961157 () Bool)

(assert (=> b!1629360 m!1961157))

(declare-fun m!1961159 () Bool)

(assert (=> b!1629360 m!1961159))

(declare-fun m!1961161 () Bool)

(assert (=> b!1629360 m!1961161))

(assert (=> b!1629360 m!1955685))

(assert (=> b!1629360 m!1961151))

(assert (=> b!1629360 m!1961121))

(declare-fun m!1961163 () Bool)

(assert (=> b!1629360 m!1961163))

(assert (=> b!1629360 m!1961113))

(declare-fun m!1961165 () Bool)

(assert (=> b!1629360 m!1961165))

(assert (=> b!1629360 m!1955023))

(assert (=> b!1629360 m!1961091))

(assert (=> b!1629360 m!1961059))

(declare-fun m!1961167 () Bool)

(assert (=> b!1629360 m!1961167))

(assert (=> b!1629360 m!1961149))

(declare-fun m!1961169 () Bool)

(assert (=> b!1629360 m!1961169))

(assert (=> d!489589 d!491053))

(declare-fun d!491055 () Bool)

(declare-fun c!265322 () Bool)

(assert (=> d!491055 (= c!265322 ((_ is Nil!17854) lt!588328))))

(declare-fun e!1044908 () (InoxSet C!9120))

(assert (=> d!491055 (= (content!2476 lt!588328) e!1044908)))

(declare-fun b!1629364 () Bool)

(assert (=> b!1629364 (= e!1044908 ((as const (Array C!9120 Bool)) false))))

(declare-fun b!1629365 () Bool)

(assert (=> b!1629365 (= e!1044908 ((_ map or) (store ((as const (Array C!9120 Bool)) false) (h!23255 lt!588328) true) (content!2476 (t!149057 lt!588328))))))

(assert (= (and d!491055 c!265322) b!1629364))

(assert (= (and d!491055 (not c!265322)) b!1629365))

(declare-fun m!1961171 () Bool)

(assert (=> b!1629365 m!1961171))

(declare-fun m!1961173 () Bool)

(assert (=> b!1629365 m!1961173))

(assert (=> d!489639 d!491055))

(assert (=> d!489639 d!490495))

(declare-fun d!491057 () Bool)

(declare-fun c!265323 () Bool)

(assert (=> d!491057 (= c!265323 ((_ is Nil!17854) lt!587980))))

(declare-fun e!1044909 () (InoxSet C!9120))

(assert (=> d!491057 (= (content!2476 lt!587980) e!1044909)))

(declare-fun b!1629366 () Bool)

(assert (=> b!1629366 (= e!1044909 ((as const (Array C!9120 Bool)) false))))

(declare-fun b!1629367 () Bool)

(assert (=> b!1629367 (= e!1044909 ((_ map or) (store ((as const (Array C!9120 Bool)) false) (h!23255 lt!587980) true) (content!2476 (t!149057 lt!587980))))))

(assert (= (and d!491057 c!265323) b!1629366))

(assert (= (and d!491057 (not c!265323)) b!1629367))

(declare-fun m!1961175 () Bool)

(assert (=> b!1629367 m!1961175))

(declare-fun m!1961177 () Bool)

(assert (=> b!1629367 m!1961177))

(assert (=> d!489639 d!491057))

(assert (=> d!489691 d!489991))

(declare-fun b!1629368 () Bool)

(declare-fun e!1044910 () Bool)

(declare-fun e!1044912 () Bool)

(assert (=> b!1629368 (= e!1044910 e!1044912)))

(declare-fun res!728628 () Bool)

(assert (=> b!1629368 (=> (not res!728628) (not e!1044912))))

(assert (=> b!1629368 (= res!728628 (not ((_ is Nil!17854) (++!4751 lt!588429 lt!588423))))))

(declare-fun b!1629370 () Bool)

(assert (=> b!1629370 (= e!1044912 (isPrefix!1405 (tail!2367 lt!588429) (tail!2367 (++!4751 lt!588429 lt!588423))))))

(declare-fun b!1629369 () Bool)

(declare-fun res!728631 () Bool)

(assert (=> b!1629369 (=> (not res!728631) (not e!1044912))))

(assert (=> b!1629369 (= res!728631 (= (head!3449 lt!588429) (head!3449 (++!4751 lt!588429 lt!588423))))))

(declare-fun d!491059 () Bool)

(declare-fun e!1044911 () Bool)

(assert (=> d!491059 e!1044911))

(declare-fun res!728629 () Bool)

(assert (=> d!491059 (=> res!728629 e!1044911)))

(declare-fun lt!590212 () Bool)

(assert (=> d!491059 (= res!728629 (not lt!590212))))

(assert (=> d!491059 (= lt!590212 e!1044910)))

(declare-fun res!728630 () Bool)

(assert (=> d!491059 (=> res!728630 e!1044910)))

(assert (=> d!491059 (= res!728630 ((_ is Nil!17854) lt!588429))))

(assert (=> d!491059 (= (isPrefix!1405 lt!588429 (++!4751 lt!588429 lt!588423)) lt!590212)))

(declare-fun b!1629371 () Bool)

(assert (=> b!1629371 (= e!1044911 (>= (size!14282 (++!4751 lt!588429 lt!588423)) (size!14282 lt!588429)))))

(assert (= (and d!491059 (not res!728630)) b!1629368))

(assert (= (and b!1629368 res!728628) b!1629369))

(assert (= (and b!1629369 res!728631) b!1629370))

(assert (= (and d!491059 (not res!728629)) b!1629371))

(declare-fun m!1961179 () Bool)

(assert (=> b!1629370 m!1961179))

(assert (=> b!1629370 m!1955839))

(declare-fun m!1961181 () Bool)

(assert (=> b!1629370 m!1961181))

(assert (=> b!1629370 m!1961179))

(assert (=> b!1629370 m!1961181))

(declare-fun m!1961183 () Bool)

(assert (=> b!1629370 m!1961183))

(declare-fun m!1961185 () Bool)

(assert (=> b!1629369 m!1961185))

(assert (=> b!1629369 m!1955839))

(declare-fun m!1961187 () Bool)

(assert (=> b!1629369 m!1961187))

(assert (=> b!1629371 m!1955839))

(declare-fun m!1961189 () Bool)

(assert (=> b!1629371 m!1961189))

(declare-fun m!1961191 () Bool)

(assert (=> b!1629371 m!1961191))

(assert (=> d!489691 d!491059))

(assert (=> d!489691 d!489605))

(declare-fun d!491061 () Bool)

(assert (=> d!491061 (= (get!5150 (maxPrefix!1338 thiss!17113 rules!1846 lt!587996)) (v!24358 (maxPrefix!1338 thiss!17113 rules!1846 lt!587996)))))

(assert (=> d!489691 d!491061))

(declare-fun d!491063 () Bool)

(assert (=> d!491063 (= (isEmpty!10890 (maxPrefix!1338 thiss!17113 rules!1846 (++!4751 lt!587996 lt!587994))) (not ((_ is Some!3315) (maxPrefix!1338 thiss!17113 rules!1846 (++!4751 lt!587996 lt!587994)))))))

(assert (=> d!489691 d!491063))

(assert (=> d!489691 d!489583))

(declare-fun d!491065 () Bool)

(declare-fun e!1044914 () Bool)

(assert (=> d!491065 e!1044914))

(declare-fun res!728632 () Bool)

(assert (=> d!491065 (=> (not res!728632) (not e!1044914))))

(declare-fun lt!590213 () List!17924)

(assert (=> d!491065 (= res!728632 (= (content!2476 lt!590213) ((_ map or) (content!2476 lt!588429) (content!2476 lt!588423))))))

(declare-fun e!1044913 () List!17924)

(assert (=> d!491065 (= lt!590213 e!1044913)))

(declare-fun c!265324 () Bool)

(assert (=> d!491065 (= c!265324 ((_ is Nil!17854) lt!588429))))

(assert (=> d!491065 (= (++!4751 lt!588429 lt!588423) lt!590213)))

(declare-fun b!1629372 () Bool)

(assert (=> b!1629372 (= e!1044913 lt!588423)))

(declare-fun b!1629374 () Bool)

(declare-fun res!728633 () Bool)

(assert (=> b!1629374 (=> (not res!728633) (not e!1044914))))

(assert (=> b!1629374 (= res!728633 (= (size!14282 lt!590213) (+ (size!14282 lt!588429) (size!14282 lt!588423))))))

(declare-fun b!1629373 () Bool)

(assert (=> b!1629373 (= e!1044913 (Cons!17854 (h!23255 lt!588429) (++!4751 (t!149057 lt!588429) lt!588423)))))

(declare-fun b!1629375 () Bool)

(assert (=> b!1629375 (= e!1044914 (or (not (= lt!588423 Nil!17854)) (= lt!590213 lt!588429)))))

(assert (= (and d!491065 c!265324) b!1629372))

(assert (= (and d!491065 (not c!265324)) b!1629373))

(assert (= (and d!491065 res!728632) b!1629374))

(assert (= (and b!1629374 res!728633) b!1629375))

(declare-fun m!1961193 () Bool)

(assert (=> d!491065 m!1961193))

(declare-fun m!1961195 () Bool)

(assert (=> d!491065 m!1961195))

(declare-fun m!1961197 () Bool)

(assert (=> d!491065 m!1961197))

(declare-fun m!1961199 () Bool)

(assert (=> b!1629374 m!1961199))

(assert (=> b!1629374 m!1961191))

(declare-fun m!1961201 () Bool)

(assert (=> b!1629374 m!1961201))

(declare-fun m!1961203 () Bool)

(assert (=> b!1629373 m!1961203))

(assert (=> d!489691 d!491065))

(declare-fun b!1629376 () Bool)

(declare-fun e!1044915 () Bool)

(declare-fun e!1044917 () Bool)

(assert (=> b!1629376 (= e!1044915 e!1044917)))

(declare-fun res!728634 () Bool)

(assert (=> b!1629376 (=> (not res!728634) (not e!1044917))))

(assert (=> b!1629376 (= res!728634 (not ((_ is Nil!17854) (++!4751 lt!587996 lt!587994))))))

(declare-fun b!1629378 () Bool)

(assert (=> b!1629378 (= e!1044917 (isPrefix!1405 (tail!2367 lt!588421) (tail!2367 (++!4751 lt!587996 lt!587994))))))

(declare-fun b!1629377 () Bool)

(declare-fun res!728637 () Bool)

(assert (=> b!1629377 (=> (not res!728637) (not e!1044917))))

(assert (=> b!1629377 (= res!728637 (= (head!3449 lt!588421) (head!3449 (++!4751 lt!587996 lt!587994))))))

(declare-fun d!491067 () Bool)

(declare-fun e!1044916 () Bool)

(assert (=> d!491067 e!1044916))

(declare-fun res!728635 () Bool)

(assert (=> d!491067 (=> res!728635 e!1044916)))

(declare-fun lt!590214 () Bool)

(assert (=> d!491067 (= res!728635 (not lt!590214))))

(assert (=> d!491067 (= lt!590214 e!1044915)))

(declare-fun res!728636 () Bool)

(assert (=> d!491067 (=> res!728636 e!1044915)))

(assert (=> d!491067 (= res!728636 ((_ is Nil!17854) lt!588421))))

(assert (=> d!491067 (= (isPrefix!1405 lt!588421 (++!4751 lt!587996 lt!587994)) lt!590214)))

(declare-fun b!1629379 () Bool)

(assert (=> b!1629379 (= e!1044916 (>= (size!14282 (++!4751 lt!587996 lt!587994)) (size!14282 lt!588421)))))

(assert (= (and d!491067 (not res!728636)) b!1629376))

(assert (= (and b!1629376 res!728634) b!1629377))

(assert (= (and b!1629377 res!728637) b!1629378))

(assert (= (and d!491067 (not res!728635)) b!1629379))

(declare-fun m!1961205 () Bool)

(assert (=> b!1629378 m!1961205))

(assert (=> b!1629378 m!1954953))

(assert (=> b!1629378 m!1960337))

(assert (=> b!1629378 m!1961205))

(assert (=> b!1629378 m!1960337))

(declare-fun m!1961207 () Bool)

(assert (=> b!1629378 m!1961207))

(declare-fun m!1961209 () Bool)

(assert (=> b!1629377 m!1961209))

(assert (=> b!1629377 m!1954953))

(assert (=> b!1629377 m!1960341))

(assert (=> b!1629379 m!1954953))

(assert (=> b!1629379 m!1960343))

(declare-fun m!1961211 () Bool)

(assert (=> b!1629379 m!1961211))

(assert (=> d!489691 d!491067))

(assert (=> d!489691 d!489715))

(declare-fun d!491069 () Bool)

(assert (=> d!491069 (= (isDefined!2683 (maxPrefix!1338 thiss!17113 rules!1846 (++!4751 lt!587996 lt!587994))) (not (isEmpty!10890 (maxPrefix!1338 thiss!17113 rules!1846 (++!4751 lt!587996 lt!587994)))))))

(declare-fun bs!395074 () Bool)

(assert (= bs!395074 d!491069))

(assert (=> bs!395074 m!1955829))

(assert (=> bs!395074 m!1955837))

(assert (=> d!489691 d!491069))

(assert (=> d!489691 d!489905))

(declare-fun d!491071 () Bool)

(assert (=> d!491071 (= (isDefined!2685 (getRuleFromTag!286 thiss!17113 rules!1846 (tag!3423 (rule!4971 lt!588424)))) (not (isEmpty!10897 (getRuleFromTag!286 thiss!17113 rules!1846 (tag!3423 (rule!4971 lt!588424))))))))

(declare-fun bs!395075 () Bool)

(assert (= bs!395075 d!491071))

(assert (=> bs!395075 m!1955817))

(declare-fun m!1961213 () Bool)

(assert (=> bs!395075 m!1961213))

(assert (=> d!489691 d!491071))

(assert (=> d!489691 d!489907))

(declare-fun d!491073 () Bool)

(assert (=> d!491073 (isPrefix!1405 lt!588421 (++!4751 lt!587996 lt!587994))))

(declare-fun lt!590217 () Unit!28923)

(declare-fun choose!9805 (List!17924 List!17924 List!17924) Unit!28923)

(assert (=> d!491073 (= lt!590217 (choose!9805 lt!588421 lt!587996 lt!587994))))

(assert (=> d!491073 (isPrefix!1405 lt!588421 lt!587996)))

(assert (=> d!491073 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!172 lt!588421 lt!587996 lt!587994) lt!590217)))

(declare-fun bs!395076 () Bool)

(assert (= bs!395076 d!491073))

(assert (=> bs!395076 m!1954953))

(assert (=> bs!395076 m!1954953))

(assert (=> bs!395076 m!1955823))

(declare-fun m!1961215 () Bool)

(assert (=> bs!395076 m!1961215))

(declare-fun m!1961217 () Bool)

(assert (=> bs!395076 m!1961217))

(assert (=> d!489691 d!491073))

(assert (=> d!489691 d!489685))

(declare-fun d!491075 () Bool)

(declare-fun e!1044920 () Bool)

(assert (=> d!491075 e!1044920))

(declare-fun res!728642 () Bool)

(assert (=> d!491075 (=> (not res!728642) (not e!1044920))))

(assert (=> d!491075 (= res!728642 (isDefined!2685 (getRuleFromTag!286 thiss!17113 rules!1846 (tag!3423 (rule!4971 lt!588424)))))))

(declare-fun lt!590220 () Unit!28923)

(declare-fun choose!9806 (LexerInterface!2774 List!17925 List!17924 Token!5856) Unit!28923)

(assert (=> d!491075 (= lt!590220 (choose!9806 thiss!17113 rules!1846 lt!587996 lt!588424))))

(assert (=> d!491075 (rulesInvariant!2443 thiss!17113 rules!1846)))

(assert (=> d!491075 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!286 thiss!17113 rules!1846 lt!587996 lt!588424) lt!590220)))

(declare-fun b!1629384 () Bool)

(declare-fun res!728643 () Bool)

(assert (=> b!1629384 (=> (not res!728643) (not e!1044920))))

(assert (=> b!1629384 (= res!728643 (matchR!1972 (regex!3145 (get!5153 (getRuleFromTag!286 thiss!17113 rules!1846 (tag!3423 (rule!4971 lt!588424))))) (list!7011 (charsOf!1794 lt!588424))))))

(declare-fun b!1629385 () Bool)

(assert (=> b!1629385 (= e!1044920 (= (rule!4971 lt!588424) (get!5153 (getRuleFromTag!286 thiss!17113 rules!1846 (tag!3423 (rule!4971 lt!588424))))))))

(assert (= (and d!491075 res!728642) b!1629384))

(assert (= (and b!1629384 res!728643) b!1629385))

(assert (=> d!491075 m!1955817))

(assert (=> d!491075 m!1955817))

(assert (=> d!491075 m!1955843))

(declare-fun m!1961219 () Bool)

(assert (=> d!491075 m!1961219))

(assert (=> d!491075 m!1954991))

(assert (=> b!1629384 m!1955819))

(assert (=> b!1629384 m!1955817))

(assert (=> b!1629384 m!1955821))

(assert (=> b!1629384 m!1955813))

(assert (=> b!1629384 m!1955815))

(assert (=> b!1629384 m!1955817))

(assert (=> b!1629384 m!1955819))

(assert (=> b!1629384 m!1955813))

(assert (=> b!1629385 m!1955817))

(assert (=> b!1629385 m!1955817))

(assert (=> b!1629385 m!1955821))

(assert (=> d!489691 d!491075))

(declare-fun b!1629386 () Bool)

(declare-fun e!1044922 () Bool)

(declare-fun e!1044923 () Bool)

(assert (=> b!1629386 (= e!1044922 e!1044923)))

(declare-fun res!728646 () Bool)

(assert (=> b!1629386 (=> (not res!728646) (not e!1044923))))

(declare-fun lt!590225 () Option!3316)

(assert (=> b!1629386 (= res!728646 (isDefined!2683 lt!590225))))

(declare-fun b!1629387 () Bool)

(declare-fun res!728648 () Bool)

(assert (=> b!1629387 (=> (not res!728648) (not e!1044923))))

(assert (=> b!1629387 (= res!728648 (= (++!4751 (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!590225)))) (_2!10119 (get!5150 lt!590225))) (++!4751 lt!587996 lt!587994)))))

(declare-fun b!1629388 () Bool)

(declare-fun e!1044921 () Option!3316)

(declare-fun lt!590222 () Option!3316)

(declare-fun lt!590221 () Option!3316)

(assert (=> b!1629388 (= e!1044921 (ite (and ((_ is None!3315) lt!590222) ((_ is None!3315) lt!590221)) None!3315 (ite ((_ is None!3315) lt!590221) lt!590222 (ite ((_ is None!3315) lt!590222) lt!590221 (ite (>= (size!14278 (_1!10119 (v!24358 lt!590222))) (size!14278 (_1!10119 (v!24358 lt!590221)))) lt!590222 lt!590221)))))))

(declare-fun call!105495 () Option!3316)

(assert (=> b!1629388 (= lt!590222 call!105495)))

(assert (=> b!1629388 (= lt!590221 (maxPrefix!1338 thiss!17113 (t!149058 rules!1846) (++!4751 lt!587996 lt!587994)))))

(declare-fun d!491077 () Bool)

(assert (=> d!491077 e!1044922))

(declare-fun res!728647 () Bool)

(assert (=> d!491077 (=> res!728647 e!1044922)))

(assert (=> d!491077 (= res!728647 (isEmpty!10890 lt!590225))))

(assert (=> d!491077 (= lt!590225 e!1044921)))

(declare-fun c!265325 () Bool)

(assert (=> d!491077 (= c!265325 (and ((_ is Cons!17855) rules!1846) ((_ is Nil!17855) (t!149058 rules!1846))))))

(declare-fun lt!590223 () Unit!28923)

(declare-fun lt!590224 () Unit!28923)

(assert (=> d!491077 (= lt!590223 lt!590224)))

(assert (=> d!491077 (isPrefix!1405 (++!4751 lt!587996 lt!587994) (++!4751 lt!587996 lt!587994))))

(assert (=> d!491077 (= lt!590224 (lemmaIsPrefixRefl!962 (++!4751 lt!587996 lt!587994) (++!4751 lt!587996 lt!587994)))))

(assert (=> d!491077 (rulesValidInductive!974 thiss!17113 rules!1846)))

(assert (=> d!491077 (= (maxPrefix!1338 thiss!17113 rules!1846 (++!4751 lt!587996 lt!587994)) lt!590225)))

(declare-fun b!1629389 () Bool)

(declare-fun res!728649 () Bool)

(assert (=> b!1629389 (=> (not res!728649) (not e!1044923))))

(assert (=> b!1629389 (= res!728649 (matchR!1972 (regex!3145 (rule!4971 (_1!10119 (get!5150 lt!590225)))) (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!590225))))))))

(declare-fun b!1629390 () Bool)

(declare-fun res!728644 () Bool)

(assert (=> b!1629390 (=> (not res!728644) (not e!1044923))))

(assert (=> b!1629390 (= res!728644 (= (value!99305 (_1!10119 (get!5150 lt!590225))) (apply!4575 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!590225)))) (seqFromList!2040 (originalCharacters!3959 (_1!10119 (get!5150 lt!590225)))))))))

(declare-fun b!1629391 () Bool)

(declare-fun res!728645 () Bool)

(assert (=> b!1629391 (=> (not res!728645) (not e!1044923))))

(assert (=> b!1629391 (= res!728645 (= (list!7011 (charsOf!1794 (_1!10119 (get!5150 lt!590225)))) (originalCharacters!3959 (_1!10119 (get!5150 lt!590225)))))))

(declare-fun bm!105490 () Bool)

(assert (=> bm!105490 (= call!105495 (maxPrefixOneRule!777 thiss!17113 (h!23256 rules!1846) (++!4751 lt!587996 lt!587994)))))

(declare-fun b!1629392 () Bool)

(assert (=> b!1629392 (= e!1044923 (contains!3120 rules!1846 (rule!4971 (_1!10119 (get!5150 lt!590225)))))))

(declare-fun b!1629393 () Bool)

(assert (=> b!1629393 (= e!1044921 call!105495)))

(declare-fun b!1629394 () Bool)

(declare-fun res!728650 () Bool)

(assert (=> b!1629394 (=> (not res!728650) (not e!1044923))))

(assert (=> b!1629394 (= res!728650 (< (size!14282 (_2!10119 (get!5150 lt!590225))) (size!14282 (++!4751 lt!587996 lt!587994))))))

(assert (= (and d!491077 c!265325) b!1629393))

(assert (= (and d!491077 (not c!265325)) b!1629388))

(assert (= (or b!1629393 b!1629388) bm!105490))

(assert (= (and d!491077 (not res!728647)) b!1629386))

(assert (= (and b!1629386 res!728646) b!1629391))

(assert (= (and b!1629391 res!728645) b!1629394))

(assert (= (and b!1629394 res!728650) b!1629387))

(assert (= (and b!1629387 res!728648) b!1629390))

(assert (= (and b!1629390 res!728644) b!1629389))

(assert (= (and b!1629389 res!728649) b!1629392))

(assert (=> b!1629388 m!1954953))

(declare-fun m!1961221 () Bool)

(assert (=> b!1629388 m!1961221))

(declare-fun m!1961223 () Bool)

(assert (=> b!1629394 m!1961223))

(declare-fun m!1961225 () Bool)

(assert (=> b!1629394 m!1961225))

(assert (=> b!1629394 m!1954953))

(assert (=> b!1629394 m!1960343))

(assert (=> b!1629389 m!1961223))

(declare-fun m!1961227 () Bool)

(assert (=> b!1629389 m!1961227))

(assert (=> b!1629389 m!1961227))

(declare-fun m!1961229 () Bool)

(assert (=> b!1629389 m!1961229))

(assert (=> b!1629389 m!1961229))

(declare-fun m!1961231 () Bool)

(assert (=> b!1629389 m!1961231))

(assert (=> b!1629392 m!1961223))

(declare-fun m!1961233 () Bool)

(assert (=> b!1629392 m!1961233))

(declare-fun m!1961235 () Bool)

(assert (=> d!491077 m!1961235))

(assert (=> d!491077 m!1954953))

(assert (=> d!491077 m!1954953))

(declare-fun m!1961237 () Bool)

(assert (=> d!491077 m!1961237))

(assert (=> d!491077 m!1954953))

(assert (=> d!491077 m!1954953))

(declare-fun m!1961239 () Bool)

(assert (=> d!491077 m!1961239))

(assert (=> d!491077 m!1955653))

(assert (=> b!1629390 m!1961223))

(declare-fun m!1961241 () Bool)

(assert (=> b!1629390 m!1961241))

(assert (=> b!1629390 m!1961241))

(declare-fun m!1961243 () Bool)

(assert (=> b!1629390 m!1961243))

(assert (=> b!1629391 m!1961223))

(assert (=> b!1629391 m!1961227))

(assert (=> b!1629391 m!1961227))

(assert (=> b!1629391 m!1961229))

(assert (=> bm!105490 m!1954953))

(declare-fun m!1961245 () Bool)

(assert (=> bm!105490 m!1961245))

(declare-fun m!1961247 () Bool)

(assert (=> b!1629386 m!1961247))

(assert (=> b!1629387 m!1961223))

(assert (=> b!1629387 m!1961227))

(assert (=> b!1629387 m!1961227))

(assert (=> b!1629387 m!1961229))

(assert (=> b!1629387 m!1961229))

(declare-fun m!1961249 () Bool)

(assert (=> b!1629387 m!1961249))

(assert (=> d!489691 d!491077))

(assert (=> d!489691 d!489903))

(assert (=> d!489691 d!489589))

(declare-fun d!491079 () Bool)

(assert (=> d!491079 (isPrefix!1405 lt!588429 (++!4751 lt!588429 lt!588423))))

(declare-fun lt!590226 () Unit!28923)

(assert (=> d!491079 (= lt!590226 (choose!9778 lt!588429 lt!588423))))

(assert (=> d!491079 (= (lemmaConcatTwoListThenFirstIsPrefix!930 lt!588429 lt!588423) lt!590226)))

(declare-fun bs!395077 () Bool)

(assert (= bs!395077 d!491079))

(assert (=> bs!395077 m!1955839))

(assert (=> bs!395077 m!1955839))

(assert (=> bs!395077 m!1955845))

(declare-fun m!1961251 () Bool)

(assert (=> bs!395077 m!1961251))

(assert (=> d!489691 d!491079))

(declare-fun d!491081 () Bool)

(assert (=> d!491081 (= (head!3452 (list!7012 (_1!10117 (lex!1258 thiss!17113 rules!1846 (seqFromList!2040 lt!587996))))) (h!23257 (list!7012 (_1!10117 (lex!1258 thiss!17113 rules!1846 (seqFromList!2040 lt!587996))))))))

(assert (=> d!489691 d!491081))

(assert (=> b!1626734 d!489851))

(declare-fun d!491083 () Bool)

(assert (=> d!491083 (= (apply!4575 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588386)))) (seqFromList!2040 (originalCharacters!3959 (_1!10119 (get!5150 lt!588386))))) (dynLambda!7970 (toValue!4572 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588386))))) (seqFromList!2040 (originalCharacters!3959 (_1!10119 (get!5150 lt!588386))))))))

(declare-fun b_lambda!51307 () Bool)

(assert (=> (not b_lambda!51307) (not d!491083)))

(declare-fun tb!93567 () Bool)

(declare-fun t!149332 () Bool)

(assert (=> (and b!1626382 (= (toValue!4572 (transformation!3145 (rule!4971 (h!23257 tokens!457)))) (toValue!4572 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588386)))))) t!149332) tb!93567))

(declare-fun result!112832 () Bool)

(assert (=> tb!93567 (= result!112832 (inv!21 (dynLambda!7970 (toValue!4572 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588386))))) (seqFromList!2040 (originalCharacters!3959 (_1!10119 (get!5150 lt!588386)))))))))

(declare-fun m!1961253 () Bool)

(assert (=> tb!93567 m!1961253))

(assert (=> d!491083 t!149332))

(declare-fun b_and!115557 () Bool)

(assert (= b_and!115517 (and (=> t!149332 result!112832) b_and!115557)))

(declare-fun t!149334 () Bool)

(declare-fun tb!93569 () Bool)

(assert (=> (and b!1626369 (= (toValue!4572 (transformation!3145 (h!23256 rules!1846))) (toValue!4572 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588386)))))) t!149334) tb!93569))

(declare-fun result!112834 () Bool)

(assert (= result!112834 result!112832))

(assert (=> d!491083 t!149334))

(declare-fun b_and!115559 () Bool)

(assert (= b_and!115519 (and (=> t!149334 result!112834) b_and!115559)))

(declare-fun t!149336 () Bool)

(declare-fun tb!93571 () Bool)

(assert (=> (and b!1627093 (= (toValue!4572 (transformation!3145 (rule!4971 (h!23257 (t!149059 tokens!457))))) (toValue!4572 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588386)))))) t!149336) tb!93571))

(declare-fun result!112836 () Bool)

(assert (= result!112836 result!112832))

(assert (=> d!491083 t!149336))

(declare-fun b_and!115561 () Bool)

(assert (= b_and!115521 (and (=> t!149336 result!112836) b_and!115561)))

(declare-fun t!149338 () Bool)

(declare-fun tb!93573 () Bool)

(assert (=> (and b!1627118 (= (toValue!4572 (transformation!3145 (h!23256 (t!149058 rules!1846)))) (toValue!4572 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588386)))))) t!149338) tb!93573))

(declare-fun result!112838 () Bool)

(assert (= result!112838 result!112832))

(assert (=> d!491083 t!149338))

(declare-fun b_and!115563 () Bool)

(assert (= b_and!115523 (and (=> t!149338 result!112838) b_and!115563)))

(assert (=> d!491083 m!1955801))

(declare-fun m!1961255 () Bool)

(assert (=> d!491083 m!1961255))

(assert (=> b!1626734 d!491083))

(declare-fun d!491085 () Bool)

(assert (=> d!491085 (= (seqFromList!2040 (originalCharacters!3959 (_1!10119 (get!5150 lt!588386)))) (fromListB!897 (originalCharacters!3959 (_1!10119 (get!5150 lt!588386)))))))

(declare-fun bs!395078 () Bool)

(assert (= bs!395078 d!491085))

(declare-fun m!1961257 () Bool)

(assert (=> bs!395078 m!1961257))

(assert (=> b!1626734 d!491085))

(assert (=> b!1626726 d!489933))

(assert (=> b!1626726 d!489935))

(assert (=> b!1626726 d!489937))

(declare-fun d!491087 () Bool)

(assert (=> d!491087 (= (list!7011 lt!588537) (list!7016 (c!264623 lt!588537)))))

(declare-fun bs!395079 () Bool)

(assert (= bs!395079 d!491087))

(declare-fun m!1961259 () Bool)

(assert (=> bs!395079 m!1961259))

(assert (=> b!1626978 d!491087))

(declare-fun d!491089 () Bool)

(declare-fun e!1044926 () Bool)

(assert (=> d!491089 e!1044926))

(declare-fun res!728651 () Bool)

(assert (=> d!491089 (=> (not res!728651) (not e!1044926))))

(declare-fun lt!590227 () List!17924)

(assert (=> d!491089 (= res!728651 (= (content!2476 lt!590227) ((_ map or) (content!2476 (list!7011 lt!587987)) (content!2476 (list!7011 lt!587976)))))))

(declare-fun e!1044925 () List!17924)

(assert (=> d!491089 (= lt!590227 e!1044925)))

(declare-fun c!265326 () Bool)

(assert (=> d!491089 (= c!265326 ((_ is Nil!17854) (list!7011 lt!587987)))))

(assert (=> d!491089 (= (++!4751 (list!7011 lt!587987) (list!7011 lt!587976)) lt!590227)))

(declare-fun b!1629395 () Bool)

(assert (=> b!1629395 (= e!1044925 (list!7011 lt!587976))))

(declare-fun b!1629397 () Bool)

(declare-fun res!728652 () Bool)

(assert (=> b!1629397 (=> (not res!728652) (not e!1044926))))

(assert (=> b!1629397 (= res!728652 (= (size!14282 lt!590227) (+ (size!14282 (list!7011 lt!587987)) (size!14282 (list!7011 lt!587976)))))))

(declare-fun b!1629396 () Bool)

(assert (=> b!1629396 (= e!1044925 (Cons!17854 (h!23255 (list!7011 lt!587987)) (++!4751 (t!149057 (list!7011 lt!587987)) (list!7011 lt!587976))))))

(declare-fun b!1629398 () Bool)

(assert (=> b!1629398 (= e!1044926 (or (not (= (list!7011 lt!587976) Nil!17854)) (= lt!590227 (list!7011 lt!587987))))))

(assert (= (and d!491089 c!265326) b!1629395))

(assert (= (and d!491089 (not c!265326)) b!1629396))

(assert (= (and d!491089 res!728651) b!1629397))

(assert (= (and b!1629397 res!728652) b!1629398))

(declare-fun m!1961261 () Bool)

(assert (=> d!491089 m!1961261))

(assert (=> d!491089 m!1954955))

(declare-fun m!1961263 () Bool)

(assert (=> d!491089 m!1961263))

(assert (=> d!491089 m!1954967))

(declare-fun m!1961265 () Bool)

(assert (=> d!491089 m!1961265))

(declare-fun m!1961267 () Bool)

(assert (=> b!1629397 m!1961267))

(assert (=> b!1629397 m!1954955))

(declare-fun m!1961269 () Bool)

(assert (=> b!1629397 m!1961269))

(assert (=> b!1629397 m!1954967))

(declare-fun m!1961271 () Bool)

(assert (=> b!1629397 m!1961271))

(assert (=> b!1629396 m!1954967))

(declare-fun m!1961273 () Bool)

(assert (=> b!1629396 m!1961273))

(assert (=> b!1626978 d!491089))

(assert (=> b!1626978 d!489711))

(assert (=> b!1626978 d!489641))

(declare-fun d!491091 () Bool)

(declare-fun c!265327 () Bool)

(assert (=> d!491091 (= c!265327 ((_ is Nil!17854) lt!588447))))

(declare-fun e!1044927 () (InoxSet C!9120))

(assert (=> d!491091 (= (content!2476 lt!588447) e!1044927)))

(declare-fun b!1629399 () Bool)

(assert (=> b!1629399 (= e!1044927 ((as const (Array C!9120 Bool)) false))))

(declare-fun b!1629400 () Bool)

(assert (=> b!1629400 (= e!1044927 ((_ map or) (store ((as const (Array C!9120 Bool)) false) (h!23255 lt!588447) true) (content!2476 (t!149057 lt!588447))))))

(assert (= (and d!491091 c!265327) b!1629399))

(assert (= (and d!491091 (not c!265327)) b!1629400))

(declare-fun m!1961275 () Bool)

(assert (=> b!1629400 m!1961275))

(declare-fun m!1961277 () Bool)

(assert (=> b!1629400 m!1961277))

(assert (=> d!489715 d!491091))

(assert (=> d!489715 d!490495))

(declare-fun d!491093 () Bool)

(declare-fun c!265328 () Bool)

(assert (=> d!491093 (= c!265328 ((_ is Nil!17854) lt!587994))))

(declare-fun e!1044928 () (InoxSet C!9120))

(assert (=> d!491093 (= (content!2476 lt!587994) e!1044928)))

(declare-fun b!1629401 () Bool)

(assert (=> b!1629401 (= e!1044928 ((as const (Array C!9120 Bool)) false))))

(declare-fun b!1629402 () Bool)

(assert (=> b!1629402 (= e!1044928 ((_ map or) (store ((as const (Array C!9120 Bool)) false) (h!23255 lt!587994) true) (content!2476 (t!149057 lt!587994))))))

(assert (= (and d!491093 c!265328) b!1629401))

(assert (= (and d!491093 (not c!265328)) b!1629402))

(declare-fun m!1961279 () Bool)

(assert (=> b!1629402 m!1961279))

(declare-fun m!1961281 () Bool)

(assert (=> b!1629402 m!1961281))

(assert (=> d!489715 d!491093))

(declare-fun d!491095 () Bool)

(declare-fun lt!590228 () Bool)

(assert (=> d!491095 (= lt!590228 (isEmpty!10888 (list!7012 (_1!10117 lt!588445))))))

(assert (=> d!491095 (= lt!590228 (isEmpty!10889 (c!264625 (_1!10117 lt!588445))))))

(assert (=> d!491095 (= (isEmpty!10882 (_1!10117 lt!588445)) lt!590228)))

(declare-fun bs!395080 () Bool)

(assert (= bs!395080 d!491095))

(assert (=> bs!395080 m!1955889))

(assert (=> bs!395080 m!1955889))

(declare-fun m!1961283 () Bool)

(assert (=> bs!395080 m!1961283))

(declare-fun m!1961285 () Bool)

(assert (=> bs!395080 m!1961285))

(assert (=> b!1626799 d!491095))

(declare-fun d!491097 () Bool)

(assert (=> d!491097 (= (inv!23233 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 tokens!457))))) (value!99305 (h!23257 (t!149059 tokens!457))))) (isBalanced!1794 (c!264623 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 tokens!457))))) (value!99305 (h!23257 (t!149059 tokens!457)))))))))

(declare-fun bs!395081 () Bool)

(assert (= bs!395081 d!491097))

(declare-fun m!1961287 () Bool)

(assert (=> bs!395081 m!1961287))

(assert (=> tb!93347 d!491097))

(declare-fun d!491099 () Bool)

(declare-fun lt!590229 () Bool)

(assert (=> d!491099 (= lt!590229 (isEmpty!10881 (list!7011 (_2!10117 (lex!1258 thiss!17113 rules!1846 (print!1305 thiss!17113 (seqFromList!2039 (t!149059 tokens!457))))))))))

(assert (=> d!491099 (= lt!590229 (isEmpty!10896 (c!264623 (_2!10117 (lex!1258 thiss!17113 rules!1846 (print!1305 thiss!17113 (seqFromList!2039 (t!149059 tokens!457))))))))))

(assert (=> d!491099 (= (isEmpty!10887 (_2!10117 (lex!1258 thiss!17113 rules!1846 (print!1305 thiss!17113 (seqFromList!2039 (t!149059 tokens!457)))))) lt!590229)))

(declare-fun bs!395082 () Bool)

(assert (= bs!395082 d!491099))

(declare-fun m!1961289 () Bool)

(assert (=> bs!395082 m!1961289))

(assert (=> bs!395082 m!1961289))

(declare-fun m!1961291 () Bool)

(assert (=> bs!395082 m!1961291))

(declare-fun m!1961293 () Bool)

(assert (=> bs!395082 m!1961293))

(assert (=> b!1626500 d!491099))

(assert (=> b!1626500 d!490887))

(assert (=> b!1626500 d!490687))

(assert (=> b!1626500 d!489721))

(declare-fun b!1629403 () Bool)

(declare-fun res!728654 () Bool)

(declare-fun e!1044929 () Bool)

(assert (=> b!1629403 (=> (not res!728654) (not e!1044929))))

(assert (=> b!1629403 (= res!728654 (isBalanced!1793 (right!14679 (prepend!675 (c!264625 (seqFromList!2039 (t!149059 (t!149059 tokens!457)))) (h!23257 (t!149059 tokens!457))))))))

(declare-fun b!1629404 () Bool)

(declare-fun res!728656 () Bool)

(assert (=> b!1629404 (=> (not res!728656) (not e!1044929))))

(assert (=> b!1629404 (= res!728656 (<= (- (height!909 (left!14349 (prepend!675 (c!264625 (seqFromList!2039 (t!149059 (t!149059 tokens!457)))) (h!23257 (t!149059 tokens!457))))) (height!909 (right!14679 (prepend!675 (c!264625 (seqFromList!2039 (t!149059 (t!149059 tokens!457)))) (h!23257 (t!149059 tokens!457)))))) 1))))

(declare-fun d!491101 () Bool)

(declare-fun res!728653 () Bool)

(declare-fun e!1044930 () Bool)

(assert (=> d!491101 (=> res!728653 e!1044930)))

(assert (=> d!491101 (= res!728653 (not ((_ is Node!5939) (prepend!675 (c!264625 (seqFromList!2039 (t!149059 (t!149059 tokens!457)))) (h!23257 (t!149059 tokens!457))))))))

(assert (=> d!491101 (= (isBalanced!1793 (prepend!675 (c!264625 (seqFromList!2039 (t!149059 (t!149059 tokens!457)))) (h!23257 (t!149059 tokens!457)))) e!1044930)))

(declare-fun b!1629405 () Bool)

(declare-fun res!728658 () Bool)

(assert (=> b!1629405 (=> (not res!728658) (not e!1044929))))

(assert (=> b!1629405 (= res!728658 (isBalanced!1793 (left!14349 (prepend!675 (c!264625 (seqFromList!2039 (t!149059 (t!149059 tokens!457)))) (h!23257 (t!149059 tokens!457))))))))

(declare-fun b!1629406 () Bool)

(declare-fun res!728657 () Bool)

(assert (=> b!1629406 (=> (not res!728657) (not e!1044929))))

(assert (=> b!1629406 (= res!728657 (not (isEmpty!10889 (left!14349 (prepend!675 (c!264625 (seqFromList!2039 (t!149059 (t!149059 tokens!457)))) (h!23257 (t!149059 tokens!457)))))))))

(declare-fun b!1629407 () Bool)

(assert (=> b!1629407 (= e!1044930 e!1044929)))

(declare-fun res!728655 () Bool)

(assert (=> b!1629407 (=> (not res!728655) (not e!1044929))))

(assert (=> b!1629407 (= res!728655 (<= (- 1) (- (height!909 (left!14349 (prepend!675 (c!264625 (seqFromList!2039 (t!149059 (t!149059 tokens!457)))) (h!23257 (t!149059 tokens!457))))) (height!909 (right!14679 (prepend!675 (c!264625 (seqFromList!2039 (t!149059 (t!149059 tokens!457)))) (h!23257 (t!149059 tokens!457))))))))))

(declare-fun b!1629408 () Bool)

(assert (=> b!1629408 (= e!1044929 (not (isEmpty!10889 (right!14679 (prepend!675 (c!264625 (seqFromList!2039 (t!149059 (t!149059 tokens!457)))) (h!23257 (t!149059 tokens!457)))))))))

(assert (= (and d!491101 (not res!728653)) b!1629407))

(assert (= (and b!1629407 res!728655) b!1629404))

(assert (= (and b!1629404 res!728656) b!1629405))

(assert (= (and b!1629405 res!728658) b!1629403))

(assert (= (and b!1629403 res!728654) b!1629406))

(assert (= (and b!1629406 res!728657) b!1629408))

(declare-fun m!1961295 () Bool)

(assert (=> b!1629406 m!1961295))

(declare-fun m!1961297 () Bool)

(assert (=> b!1629404 m!1961297))

(declare-fun m!1961299 () Bool)

(assert (=> b!1629404 m!1961299))

(assert (=> b!1629407 m!1961297))

(assert (=> b!1629407 m!1961299))

(declare-fun m!1961301 () Bool)

(assert (=> b!1629405 m!1961301))

(declare-fun m!1961303 () Bool)

(assert (=> b!1629403 m!1961303))

(declare-fun m!1961305 () Bool)

(assert (=> b!1629408 m!1961305))

(assert (=> d!489809 d!491101))

(declare-fun d!491103 () Bool)

(declare-fun e!1044933 () Bool)

(assert (=> d!491103 e!1044933))

(declare-fun res!728661 () Bool)

(assert (=> d!491103 (=> (not res!728661) (not e!1044933))))

(declare-fun lt!590232 () Conc!5939)

(assert (=> d!491103 (= res!728661 (isBalanced!1793 lt!590232))))

(declare-fun ++!4758 (Conc!5939 Conc!5939) Conc!5939)

(declare-fun fill!98 (Int Token!5856) IArray!11883)

(assert (=> d!491103 (= lt!590232 (++!4758 (Leaf!8732 (fill!98 1 (h!23257 (t!149059 tokens!457))) 1) (c!264625 (seqFromList!2039 (t!149059 (t!149059 tokens!457))))))))

(assert (=> d!491103 (isBalanced!1793 (c!264625 (seqFromList!2039 (t!149059 (t!149059 tokens!457)))))))

(assert (=> d!491103 (= (prepend!675 (c!264625 (seqFromList!2039 (t!149059 (t!149059 tokens!457)))) (h!23257 (t!149059 tokens!457))) lt!590232)))

(declare-fun b!1629411 () Bool)

(assert (=> b!1629411 (= e!1044933 (= (list!7014 lt!590232) (Cons!17856 (h!23257 (t!149059 tokens!457)) (list!7014 (c!264625 (seqFromList!2039 (t!149059 (t!149059 tokens!457))))))))))

(assert (= (and d!491103 res!728661) b!1629411))

(declare-fun m!1961307 () Bool)

(assert (=> d!491103 m!1961307))

(declare-fun m!1961309 () Bool)

(assert (=> d!491103 m!1961309))

(declare-fun m!1961311 () Bool)

(assert (=> d!491103 m!1961311))

(declare-fun m!1961313 () Bool)

(assert (=> d!491103 m!1961313))

(declare-fun m!1961315 () Bool)

(assert (=> b!1629411 m!1961315))

(assert (=> b!1629411 m!1956747))

(assert (=> d!489809 d!491103))

(declare-fun d!491105 () Bool)

(assert (=> d!491105 (= (list!7012 lt!588373) (list!7014 (c!264625 lt!588373)))))

(declare-fun bs!395083 () Bool)

(assert (= bs!395083 d!491105))

(declare-fun m!1961317 () Bool)

(assert (=> bs!395083 m!1961317))

(assert (=> d!489667 d!491105))

(declare-fun d!491107 () Bool)

(declare-fun e!1044936 () Bool)

(assert (=> d!491107 e!1044936))

(declare-fun res!728664 () Bool)

(assert (=> d!491107 (=> (not res!728664) (not e!1044936))))

(declare-fun lt!590235 () BalanceConc!11822)

(assert (=> d!491107 (= res!728664 (= (list!7012 lt!590235) (Cons!17856 (h!23257 tokens!457) Nil!17856)))))

(declare-fun choose!9807 (Token!5856) BalanceConc!11822)

(assert (=> d!491107 (= lt!590235 (choose!9807 (h!23257 tokens!457)))))

(assert (=> d!491107 (= (singleton!673 (h!23257 tokens!457)) lt!590235)))

(declare-fun b!1629414 () Bool)

(assert (=> b!1629414 (= e!1044936 (isBalanced!1793 (c!264625 lt!590235)))))

(assert (= (and d!491107 res!728664) b!1629414))

(declare-fun m!1961319 () Bool)

(assert (=> d!491107 m!1961319))

(declare-fun m!1961321 () Bool)

(assert (=> d!491107 m!1961321))

(declare-fun m!1961323 () Bool)

(assert (=> b!1629414 m!1961323))

(assert (=> d!489667 d!491107))

(declare-fun d!491109 () Bool)

(declare-fun lt!590236 () Int)

(assert (=> d!491109 (>= lt!590236 0)))

(declare-fun e!1044937 () Int)

(assert (=> d!491109 (= lt!590236 e!1044937)))

(declare-fun c!265329 () Bool)

(assert (=> d!491109 (= c!265329 ((_ is Nil!17854) (_2!10119 (get!5150 lt!588386))))))

(assert (=> d!491109 (= (size!14282 (_2!10119 (get!5150 lt!588386))) lt!590236)))

(declare-fun b!1629415 () Bool)

(assert (=> b!1629415 (= e!1044937 0)))

(declare-fun b!1629416 () Bool)

(assert (=> b!1629416 (= e!1044937 (+ 1 (size!14282 (t!149057 (_2!10119 (get!5150 lt!588386))))))))

(assert (= (and d!491109 c!265329) b!1629415))

(assert (= (and d!491109 (not c!265329)) b!1629416))

(declare-fun m!1961325 () Bool)

(assert (=> b!1629416 m!1961325))

(assert (=> b!1626738 d!491109))

(assert (=> b!1626738 d!489851))

(assert (=> b!1626738 d!490207))

(declare-fun d!491111 () Bool)

(declare-fun lt!590237 () Token!5856)

(assert (=> d!491111 (= lt!590237 (apply!4576 (list!7012 (_1!10117 lt!588323)) 0))))

(assert (=> d!491111 (= lt!590237 (apply!4581 (c!264625 (_1!10117 lt!588323)) 0))))

(declare-fun e!1044938 () Bool)

(assert (=> d!491111 e!1044938))

(declare-fun res!728665 () Bool)

(assert (=> d!491111 (=> (not res!728665) (not e!1044938))))

(assert (=> d!491111 (= res!728665 (<= 0 0))))

(assert (=> d!491111 (= (apply!4574 (_1!10117 lt!588323) 0) lt!590237)))

(declare-fun b!1629417 () Bool)

(assert (=> b!1629417 (= e!1044938 (< 0 (size!14283 (_1!10117 lt!588323))))))

(assert (= (and d!491111 res!728665) b!1629417))

(assert (=> d!491111 m!1957707))

(assert (=> d!491111 m!1957707))

(declare-fun m!1961327 () Bool)

(assert (=> d!491111 m!1961327))

(declare-fun m!1961329 () Bool)

(assert (=> d!491111 m!1961329))

(assert (=> b!1629417 m!1955551))

(assert (=> b!1626623 d!491111))

(declare-fun d!491113 () Bool)

(declare-fun lt!590240 () C!9120)

(declare-fun contains!3125 (List!17924 C!9120) Bool)

(assert (=> d!491113 (contains!3125 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457)))) lt!590240)))

(declare-fun e!1044943 () C!9120)

(assert (=> d!491113 (= lt!590240 e!1044943)))

(declare-fun c!265332 () Bool)

(assert (=> d!491113 (= c!265332 (= 0 0))))

(declare-fun e!1044944 () Bool)

(assert (=> d!491113 e!1044944))

(declare-fun res!728668 () Bool)

(assert (=> d!491113 (=> (not res!728668) (not e!1044944))))

(assert (=> d!491113 (= res!728668 (<= 0 0))))

(assert (=> d!491113 (= (apply!4577 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457)))) 0) lt!590240)))

(declare-fun b!1629424 () Bool)

(assert (=> b!1629424 (= e!1044944 (< 0 (size!14282 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457)))))))))

(declare-fun b!1629425 () Bool)

(assert (=> b!1629425 (= e!1044943 (head!3449 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457))))))))

(declare-fun b!1629426 () Bool)

(assert (=> b!1629426 (= e!1044943 (apply!4577 (tail!2367 (list!7011 (charsOf!1794 (h!23257 (t!149059 tokens!457))))) (- 0 1)))))

(assert (= (and d!491113 res!728668) b!1629424))

(assert (= (and d!491113 c!265332) b!1629425))

(assert (= (and d!491113 (not c!265332)) b!1629426))

(assert (=> d!491113 m!1955231))

(declare-fun m!1961331 () Bool)

(assert (=> d!491113 m!1961331))

(assert (=> b!1629424 m!1955231))

(assert (=> b!1629424 m!1957067))

(assert (=> b!1629425 m!1955231))

(assert (=> b!1629425 m!1958993))

(assert (=> b!1629426 m!1955231))

(assert (=> b!1629426 m!1958995))

(assert (=> b!1629426 m!1958995))

(declare-fun m!1961333 () Bool)

(assert (=> b!1629426 m!1961333))

(assert (=> d!489791 d!491113))

(assert (=> d!489791 d!490661))

(declare-fun d!491115 () Bool)

(declare-fun lt!590245 () C!9120)

(assert (=> d!491115 (= lt!590245 (apply!4577 (list!7016 (c!264623 (charsOf!1794 (h!23257 (t!149059 tokens!457))))) 0))))

(declare-fun e!1044953 () C!9120)

(assert (=> d!491115 (= lt!590245 e!1044953)))

(declare-fun c!265340 () Bool)

(assert (=> d!491115 (= c!265340 ((_ is Leaf!8731) (c!264623 (charsOf!1794 (h!23257 (t!149059 tokens!457))))))))

(declare-fun e!1044955 () Bool)

(assert (=> d!491115 e!1044955))

(declare-fun res!728671 () Bool)

(assert (=> d!491115 (=> (not res!728671) (not e!1044955))))

(assert (=> d!491115 (= res!728671 (<= 0 0))))

(assert (=> d!491115 (= (apply!4578 (c!264623 (charsOf!1794 (h!23257 (t!149059 tokens!457)))) 0) lt!590245)))

(declare-fun b!1629441 () Bool)

(declare-fun e!1044954 () Int)

(assert (=> b!1629441 (= e!1044954 0)))

(declare-fun bm!105493 () Bool)

(declare-fun c!265341 () Bool)

(declare-fun c!265339 () Bool)

(assert (=> bm!105493 (= c!265341 c!265339)))

(declare-fun call!105498 () C!9120)

(assert (=> bm!105493 (= call!105498 (apply!4578 (ite c!265339 (left!14348 (c!264623 (charsOf!1794 (h!23257 (t!149059 tokens!457))))) (right!14678 (c!264623 (charsOf!1794 (h!23257 (t!149059 tokens!457)))))) e!1044954))))

(declare-fun b!1629442 () Bool)

(assert (=> b!1629442 (= e!1044954 (- 0 (size!14290 (left!14348 (c!264623 (charsOf!1794 (h!23257 (t!149059 tokens!457))))))))))

(declare-fun b!1629443 () Bool)

(assert (=> b!1629443 (= e!1044953 (apply!4579 (xs!8770 (c!264623 (charsOf!1794 (h!23257 (t!149059 tokens!457))))) 0))))

(declare-fun b!1629444 () Bool)

(declare-fun e!1044956 () C!9120)

(assert (=> b!1629444 (= e!1044956 call!105498)))

(declare-fun b!1629445 () Bool)

(assert (=> b!1629445 (= e!1044953 e!1044956)))

(declare-fun lt!590246 () Bool)

(declare-fun appendIndex!211 (List!17924 List!17924 Int) Bool)

(assert (=> b!1629445 (= lt!590246 (appendIndex!211 (list!7016 (left!14348 (c!264623 (charsOf!1794 (h!23257 (t!149059 tokens!457)))))) (list!7016 (right!14678 (c!264623 (charsOf!1794 (h!23257 (t!149059 tokens!457)))))) 0))))

(assert (=> b!1629445 (= c!265339 (< 0 (size!14290 (left!14348 (c!264623 (charsOf!1794 (h!23257 (t!149059 tokens!457))))))))))

(declare-fun b!1629446 () Bool)

(assert (=> b!1629446 (= e!1044956 call!105498)))

(declare-fun b!1629447 () Bool)

(assert (=> b!1629447 (= e!1044955 (< 0 (size!14290 (c!264623 (charsOf!1794 (h!23257 (t!149059 tokens!457)))))))))

(assert (= (and d!491115 res!728671) b!1629447))

(assert (= (and d!491115 c!265340) b!1629443))

(assert (= (and d!491115 (not c!265340)) b!1629445))

(assert (= (and b!1629445 c!265339) b!1629444))

(assert (= (and b!1629445 (not c!265339)) b!1629446))

(assert (= (or b!1629444 b!1629446) bm!105493))

(assert (= (and bm!105493 c!265341) b!1629441))

(assert (= (and bm!105493 (not c!265341)) b!1629442))

(declare-fun m!1961335 () Bool)

(assert (=> b!1629445 m!1961335))

(declare-fun m!1961337 () Bool)

(assert (=> b!1629445 m!1961337))

(assert (=> b!1629445 m!1961335))

(assert (=> b!1629445 m!1961337))

(declare-fun m!1961339 () Bool)

(assert (=> b!1629445 m!1961339))

(declare-fun m!1961341 () Bool)

(assert (=> b!1629445 m!1961341))

(declare-fun m!1961343 () Bool)

(assert (=> bm!105493 m!1961343))

(declare-fun m!1961345 () Bool)

(assert (=> b!1629443 m!1961345))

(assert (=> b!1629442 m!1961341))

(assert (=> b!1629447 m!1957069))

(assert (=> d!491115 m!1959203))

(assert (=> d!491115 m!1959203))

(declare-fun m!1961347 () Bool)

(assert (=> d!491115 m!1961347))

(assert (=> d!489791 d!491115))

(declare-fun b!1629448 () Bool)

(declare-fun e!1044958 () Bool)

(assert (=> b!1629448 (= e!1044958 (inv!15 (value!99305 (h!23257 (t!149059 tokens!457)))))))

(declare-fun b!1629449 () Bool)

(declare-fun res!728672 () Bool)

(assert (=> b!1629449 (=> res!728672 e!1044958)))

(assert (=> b!1629449 (= res!728672 (not ((_ is IntegerValue!9707) (value!99305 (h!23257 (t!149059 tokens!457))))))))

(declare-fun e!1044957 () Bool)

(assert (=> b!1629449 (= e!1044957 e!1044958)))

(declare-fun b!1629450 () Bool)

(declare-fun e!1044959 () Bool)

(assert (=> b!1629450 (= e!1044959 e!1044957)))

(declare-fun c!265342 () Bool)

(assert (=> b!1629450 (= c!265342 ((_ is IntegerValue!9706) (value!99305 (h!23257 (t!149059 tokens!457)))))))

(declare-fun b!1629451 () Bool)

(assert (=> b!1629451 (= e!1044957 (inv!17 (value!99305 (h!23257 (t!149059 tokens!457)))))))

(declare-fun b!1629452 () Bool)

(assert (=> b!1629452 (= e!1044959 (inv!16 (value!99305 (h!23257 (t!149059 tokens!457)))))))

(declare-fun d!491117 () Bool)

(declare-fun c!265343 () Bool)

(assert (=> d!491117 (= c!265343 ((_ is IntegerValue!9705) (value!99305 (h!23257 (t!149059 tokens!457)))))))

(assert (=> d!491117 (= (inv!21 (value!99305 (h!23257 (t!149059 tokens!457)))) e!1044959)))

(assert (= (and d!491117 c!265343) b!1629452))

(assert (= (and d!491117 (not c!265343)) b!1629450))

(assert (= (and b!1629450 c!265342) b!1629451))

(assert (= (and b!1629450 (not c!265342)) b!1629449))

(assert (= (and b!1629449 (not res!728672)) b!1629448))

(declare-fun m!1961349 () Bool)

(assert (=> b!1629448 m!1961349))

(declare-fun m!1961351 () Bool)

(assert (=> b!1629451 m!1961351))

(declare-fun m!1961353 () Bool)

(assert (=> b!1629452 m!1961353))

(assert (=> b!1627091 d!491117))

(declare-fun bs!395084 () Bool)

(declare-fun d!491119 () Bool)

(assert (= bs!395084 (and d!491119 d!490555)))

(declare-fun lambda!67334 () Int)

(assert (=> bs!395084 (= (= (toValue!4572 (transformation!3145 (h!23256 rules!1846))) (toValue!4572 (transformation!3145 (rule!4971 (h!23257 tokens!457))))) (= lambda!67334 lambda!67327))))

(assert (=> d!491119 true))

(assert (=> d!491119 (< (dynLambda!7965 order!10591 (toValue!4572 (transformation!3145 (h!23256 rules!1846)))) (dynLambda!7976 order!10603 lambda!67334))))

(assert (=> d!491119 (= (equivClasses!1142 (toChars!4431 (transformation!3145 (h!23256 rules!1846))) (toValue!4572 (transformation!3145 (h!23256 rules!1846)))) (Forall2!515 lambda!67334))))

(declare-fun bs!395085 () Bool)

(assert (= bs!395085 d!491119))

(declare-fun m!1961355 () Bool)

(assert (=> bs!395085 m!1961355))

(assert (=> b!1626829 d!491119))

(declare-fun d!491121 () Bool)

(declare-fun e!1044960 () Bool)

(assert (=> d!491121 e!1044960))

(declare-fun res!728673 () Bool)

(assert (=> d!491121 (=> (not res!728673) (not e!1044960))))

(declare-fun lt!590247 () BalanceConc!11820)

(assert (=> d!491121 (= res!728673 (= (list!7011 lt!590247) (originalCharacters!3959 (h!23257 tokens!457))))))

(assert (=> d!491121 (= lt!590247 (BalanceConc!11821 (fromList!385 (originalCharacters!3959 (h!23257 tokens!457)))))))

(assert (=> d!491121 (= (fromListB!897 (originalCharacters!3959 (h!23257 tokens!457))) lt!590247)))

(declare-fun b!1629453 () Bool)

(assert (=> b!1629453 (= e!1044960 (isBalanced!1794 (fromList!385 (originalCharacters!3959 (h!23257 tokens!457)))))))

(assert (= (and d!491121 res!728673) b!1629453))

(declare-fun m!1961357 () Bool)

(assert (=> d!491121 m!1961357))

(declare-fun m!1961359 () Bool)

(assert (=> d!491121 m!1961359))

(assert (=> b!1629453 m!1961359))

(assert (=> b!1629453 m!1961359))

(declare-fun m!1961361 () Bool)

(assert (=> b!1629453 m!1961361))

(assert (=> d!489755 d!491121))

(assert (=> b!1626702 d!490333))

(declare-fun d!491123 () Bool)

(assert (=> d!491123 (= (isEmpty!10881 (originalCharacters!3959 (h!23257 tokens!457))) ((_ is Nil!17854) (originalCharacters!3959 (h!23257 tokens!457))))))

(assert (=> d!489577 d!491123))

(declare-fun d!491125 () Bool)

(declare-fun lt!590248 () Int)

(assert (=> d!491125 (>= lt!590248 0)))

(declare-fun e!1044961 () Int)

(assert (=> d!491125 (= lt!590248 e!1044961)))

(declare-fun c!265344 () Bool)

(assert (=> d!491125 (= c!265344 ((_ is Nil!17854) (_2!10119 (get!5150 lt!588381))))))

(assert (=> d!491125 (= (size!14282 (_2!10119 (get!5150 lt!588381))) lt!590248)))

(declare-fun b!1629454 () Bool)

(assert (=> b!1629454 (= e!1044961 0)))

(declare-fun b!1629455 () Bool)

(assert (=> b!1629455 (= e!1044961 (+ 1 (size!14282 (t!149057 (_2!10119 (get!5150 lt!588381))))))))

(assert (= (and d!491125 c!265344) b!1629454))

(assert (= (and d!491125 (not c!265344)) b!1629455))

(declare-fun m!1961363 () Bool)

(assert (=> b!1629455 m!1961363))

(assert (=> b!1626729 d!491125))

(assert (=> b!1626729 d!489937))

(assert (=> b!1626729 d!489875))

(declare-fun d!491127 () Bool)

(declare-fun e!1044962 () Bool)

(assert (=> d!491127 e!1044962))

(declare-fun res!728674 () Bool)

(assert (=> d!491127 (=> (not res!728674) (not e!1044962))))

(declare-fun lt!590249 () BalanceConc!11822)

(assert (=> d!491127 (= res!728674 (= (list!7012 lt!590249) (t!149059 tokens!457)))))

(assert (=> d!491127 (= lt!590249 (BalanceConc!11823 (fromList!384 (t!149059 tokens!457))))))

(assert (=> d!491127 (= (fromListB!899 (t!149059 tokens!457)) lt!590249)))

(declare-fun b!1629456 () Bool)

(assert (=> b!1629456 (= e!1044962 (isBalanced!1793 (fromList!384 (t!149059 tokens!457))))))

(assert (= (and d!491127 res!728674) b!1629456))

(declare-fun m!1961365 () Bool)

(assert (=> d!491127 m!1961365))

(declare-fun m!1961367 () Bool)

(assert (=> d!491127 m!1961367))

(assert (=> b!1629456 m!1961367))

(assert (=> b!1629456 m!1961367))

(declare-fun m!1961369 () Bool)

(assert (=> b!1629456 m!1961369))

(assert (=> d!489721 d!491127))

(declare-fun d!491129 () Bool)

(declare-fun lt!590250 () Int)

(assert (=> d!491129 (>= lt!590250 0)))

(declare-fun e!1044963 () Int)

(assert (=> d!491129 (= lt!590250 e!1044963)))

(declare-fun c!265345 () Bool)

(assert (=> d!491129 (= c!265345 ((_ is Nil!17854) lt!588376))))

(assert (=> d!491129 (= (size!14282 lt!588376) lt!590250)))

(declare-fun b!1629457 () Bool)

(assert (=> b!1629457 (= e!1044963 0)))

(declare-fun b!1629458 () Bool)

(assert (=> b!1629458 (= e!1044963 (+ 1 (size!14282 (t!149057 lt!588376))))))

(assert (= (and d!491129 c!265345) b!1629457))

(assert (= (and d!491129 (not c!265345)) b!1629458))

(declare-fun m!1961371 () Bool)

(assert (=> b!1629458 m!1961371))

(assert (=> b!1626717 d!491129))

(assert (=> b!1626717 d!490207))

(assert (=> b!1626717 d!490585))

(declare-fun b!1629461 () Bool)

(declare-fun e!1044966 () Bool)

(assert (=> b!1629461 (= e!1044966 true)))

(declare-fun b!1629460 () Bool)

(declare-fun e!1044965 () Bool)

(assert (=> b!1629460 (= e!1044965 e!1044966)))

(declare-fun b!1629459 () Bool)

(declare-fun e!1044964 () Bool)

(assert (=> b!1629459 (= e!1044964 e!1044965)))

(assert (=> b!1627067 e!1044964))

(assert (= b!1629460 b!1629461))

(assert (= b!1629459 b!1629460))

(assert (= (and b!1627067 ((_ is Cons!17855) (t!149058 rules!1846))) b!1629459))

(assert (=> b!1629461 (< (dynLambda!7965 order!10591 (toValue!4572 (transformation!3145 (h!23256 (t!149058 rules!1846))))) (dynLambda!7966 order!10593 lambda!67276))))

(assert (=> b!1629461 (< (dynLambda!7967 order!10595 (toChars!4431 (transformation!3145 (h!23256 (t!149058 rules!1846))))) (dynLambda!7966 order!10593 lambda!67276))))

(declare-fun b!1629462 () Bool)

(declare-fun e!1044967 () Bool)

(declare-fun tp!473130 () Bool)

(assert (=> b!1629462 (= e!1044967 (and tp_is_empty!7285 tp!473130))))

(assert (=> b!1627079 (= tp!472985 e!1044967)))

(assert (= (and b!1627079 ((_ is Cons!17854) (t!149057 (originalCharacters!3959 (h!23257 tokens!457))))) b!1629462))

(declare-fun b!1629466 () Bool)

(declare-fun e!1044968 () Bool)

(declare-fun tp!473134 () Bool)

(declare-fun tp!473132 () Bool)

(assert (=> b!1629466 (= e!1044968 (and tp!473134 tp!473132))))

(declare-fun b!1629463 () Bool)

(assert (=> b!1629463 (= e!1044968 tp_is_empty!7285)))

(assert (=> b!1627107 (= tp!473014 e!1044968)))

(declare-fun b!1629465 () Bool)

(declare-fun tp!473131 () Bool)

(assert (=> b!1629465 (= e!1044968 tp!473131)))

(declare-fun b!1629464 () Bool)

(declare-fun tp!473135 () Bool)

(declare-fun tp!473133 () Bool)

(assert (=> b!1629464 (= e!1044968 (and tp!473135 tp!473133))))

(assert (= (and b!1627107 ((_ is ElementMatch!4473) (regOne!9459 (regex!3145 (rule!4971 (h!23257 tokens!457)))))) b!1629463))

(assert (= (and b!1627107 ((_ is Concat!7709) (regOne!9459 (regex!3145 (rule!4971 (h!23257 tokens!457)))))) b!1629464))

(assert (= (and b!1627107 ((_ is Star!4473) (regOne!9459 (regex!3145 (rule!4971 (h!23257 tokens!457)))))) b!1629465))

(assert (= (and b!1627107 ((_ is Union!4473) (regOne!9459 (regex!3145 (rule!4971 (h!23257 tokens!457)))))) b!1629466))

(declare-fun b!1629470 () Bool)

(declare-fun e!1044969 () Bool)

(declare-fun tp!473139 () Bool)

(declare-fun tp!473137 () Bool)

(assert (=> b!1629470 (= e!1044969 (and tp!473139 tp!473137))))

(declare-fun b!1629467 () Bool)

(assert (=> b!1629467 (= e!1044969 tp_is_empty!7285)))

(assert (=> b!1627107 (= tp!473012 e!1044969)))

(declare-fun b!1629469 () Bool)

(declare-fun tp!473136 () Bool)

(assert (=> b!1629469 (= e!1044969 tp!473136)))

(declare-fun b!1629468 () Bool)

(declare-fun tp!473140 () Bool)

(declare-fun tp!473138 () Bool)

(assert (=> b!1629468 (= e!1044969 (and tp!473140 tp!473138))))

(assert (= (and b!1627107 ((_ is ElementMatch!4473) (regTwo!9459 (regex!3145 (rule!4971 (h!23257 tokens!457)))))) b!1629467))

(assert (= (and b!1627107 ((_ is Concat!7709) (regTwo!9459 (regex!3145 (rule!4971 (h!23257 tokens!457)))))) b!1629468))

(assert (= (and b!1627107 ((_ is Star!4473) (regTwo!9459 (regex!3145 (rule!4971 (h!23257 tokens!457)))))) b!1629469))

(assert (= (and b!1627107 ((_ is Union!4473) (regTwo!9459 (regex!3145 (rule!4971 (h!23257 tokens!457)))))) b!1629470))

(declare-fun b!1629473 () Bool)

(declare-fun b_free!43943 () Bool)

(declare-fun b_next!44647 () Bool)

(assert (=> b!1629473 (= b_free!43943 (not b_next!44647))))

(declare-fun tb!93575 () Bool)

(declare-fun t!149343 () Bool)

(assert (=> (and b!1629473 (= (toValue!4572 (transformation!3145 (h!23256 (t!149058 (t!149058 rules!1846))))) (toValue!4572 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588346)))))) t!149343) tb!93575))

(declare-fun result!112840 () Bool)

(assert (= result!112840 result!112650))

(assert (=> d!489941 t!149343))

(declare-fun tb!93577 () Bool)

(declare-fun t!149345 () Bool)

(assert (=> (and b!1629473 (= (toValue!4572 (transformation!3145 (h!23256 (t!149058 (t!149058 rules!1846))))) (toValue!4572 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588381)))))) t!149345) tb!93577))

(declare-fun result!112842 () Bool)

(assert (= result!112842 result!112766))

(assert (=> d!490831 t!149345))

(declare-fun tb!93579 () Bool)

(declare-fun t!149347 () Bool)

(assert (=> (and b!1629473 (= (toValue!4572 (transformation!3145 (h!23256 (t!149058 (t!149058 rules!1846))))) (toValue!4572 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588386)))))) t!149347) tb!93579))

(declare-fun result!112844 () Bool)

(assert (= result!112844 result!112832))

(assert (=> d!491083 t!149347))

(declare-fun b_and!115565 () Bool)

(declare-fun tp!473143 () Bool)

(assert (=> b!1629473 (= tp!473143 (and (=> t!149343 result!112840) (=> t!149345 result!112842) (=> t!149347 result!112844) b_and!115565))))

(declare-fun b_free!43945 () Bool)

(declare-fun b_next!44649 () Bool)

(assert (=> b!1629473 (= b_free!43945 (not b_next!44649))))

(declare-fun tb!93581 () Bool)

(declare-fun t!149349 () Bool)

(assert (=> (and b!1629473 (= (toChars!4431 (transformation!3145 (h!23256 (t!149058 (t!149058 rules!1846))))) (toChars!4431 (transformation!3145 (rule!4971 (h!23257 tokens!457))))) t!149349) tb!93581))

(declare-fun result!112846 () Bool)

(assert (= result!112846 result!112574))

(assert (=> b!1626526 t!149349))

(declare-fun t!149351 () Bool)

(declare-fun tb!93583 () Bool)

(assert (=> (and b!1629473 (= (toChars!4431 (transformation!3145 (h!23256 (t!149058 (t!149058 rules!1846))))) (toChars!4431 (transformation!3145 (rule!4971 lt!588424)))) t!149351) tb!93583))

(declare-fun result!112848 () Bool)

(assert (= result!112848 result!112634))

(assert (=> d!489903 t!149351))

(declare-fun tb!93585 () Bool)

(declare-fun t!149353 () Bool)

(assert (=> (and b!1629473 (= (toChars!4431 (transformation!3145 (h!23256 (t!149058 (t!149058 rules!1846))))) (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (Cons!17856 (h!23257 tokens!457) Nil!17856)))))) t!149353) tb!93585))

(declare-fun result!112850 () Bool)

(assert (= result!112850 result!112774))

(assert (=> d!490871 t!149353))

(declare-fun tb!93587 () Bool)

(declare-fun t!149355 () Bool)

(assert (=> (and b!1629473 (= (toChars!4431 (transformation!3145 (h!23256 (t!149058 (t!149058 rules!1846))))) (toChars!4431 (transformation!3145 (rule!4971 (apply!4574 lt!587983 0))))) t!149355) tb!93587))

(declare-fun result!112852 () Bool)

(assert (= result!112852 result!112734))

(assert (=> d!490433 t!149355))

(declare-fun t!149357 () Bool)

(declare-fun tb!93589 () Bool)

(assert (=> (and b!1629473 (= (toChars!4431 (transformation!3145 (h!23256 (t!149058 (t!149058 rules!1846))))) (toChars!4431 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588386)))))) t!149357) tb!93589))

(declare-fun result!112854 () Bool)

(assert (= result!112854 result!112626))

(assert (=> d!489849 t!149357))

(declare-fun tb!93591 () Bool)

(declare-fun t!149359 () Bool)

(assert (=> (and b!1629473 (= (toChars!4431 (transformation!3145 (h!23256 (t!149058 (t!149058 rules!1846))))) (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 (t!149059 tokens!457))))))) t!149359) tb!93591))

(declare-fun result!112856 () Bool)

(assert (= result!112856 result!112742))

(assert (=> d!490641 t!149359))

(declare-fun t!149361 () Bool)

(declare-fun tb!93593 () Bool)

(assert (=> (and b!1629473 (= (toChars!4431 (transformation!3145 (h!23256 (t!149058 (t!149058 rules!1846))))) (toChars!4431 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588381)))))) t!149361) tb!93593))

(declare-fun result!112858 () Bool)

(assert (= result!112858 result!112642))

(assert (=> d!489935 t!149361))

(declare-fun t!149363 () Bool)

(declare-fun tb!93595 () Bool)

(assert (=> (and b!1629473 (= (toChars!4431 (transformation!3145 (h!23256 (t!149058 (t!149058 rules!1846))))) (toChars!4431 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588346)))))) t!149363) tb!93595))

(declare-fun result!112860 () Bool)

(assert (= result!112860 result!112684))

(assert (=> d!490101 t!149363))

(declare-fun t!149365 () Bool)

(declare-fun tb!93597 () Bool)

(assert (=> (and b!1629473 (= (toChars!4431 (transformation!3145 (h!23256 (t!149058 (t!149058 rules!1846))))) (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 tokens!457)))))) t!149365) tb!93597))

(declare-fun result!112862 () Bool)

(assert (= result!112862 result!112590))

(assert (=> b!1628989 t!149365))

(assert (=> d!489719 t!149349))

(assert (=> d!489789 t!149365))

(declare-fun b_and!115567 () Bool)

(declare-fun tp!473142 () Bool)

(assert (=> b!1629473 (= tp!473142 (and (=> t!149359 result!112856) (=> t!149351 result!112848) (=> t!149363 result!112860) (=> t!149353 result!112850) (=> t!149357 result!112854) (=> t!149361 result!112858) (=> t!149365 result!112862) (=> t!149349 result!112846) (=> t!149355 result!112852) b_and!115567))))

(declare-fun e!1044972 () Bool)

(assert (=> b!1629473 (= e!1044972 (and tp!473143 tp!473142))))

(declare-fun tp!473141 () Bool)

(declare-fun b!1629472 () Bool)

(declare-fun e!1044970 () Bool)

(assert (=> b!1629472 (= e!1044970 (and tp!473141 (inv!23225 (tag!3423 (h!23256 (t!149058 (t!149058 rules!1846))))) (inv!23228 (transformation!3145 (h!23256 (t!149058 (t!149058 rules!1846))))) e!1044972))))

(declare-fun b!1629471 () Bool)

(declare-fun e!1044973 () Bool)

(declare-fun tp!473144 () Bool)

(assert (=> b!1629471 (= e!1044973 (and e!1044970 tp!473144))))

(assert (=> b!1627116 (= tp!473027 e!1044973)))

(assert (= b!1629472 b!1629473))

(assert (= b!1629471 b!1629472))

(assert (= (and b!1627116 ((_ is Cons!17855) (t!149058 (t!149058 rules!1846)))) b!1629471))

(declare-fun m!1961373 () Bool)

(assert (=> b!1629472 m!1961373))

(declare-fun m!1961375 () Bool)

(assert (=> b!1629472 m!1961375))

(declare-fun b!1629474 () Bool)

(declare-fun e!1044974 () Bool)

(declare-fun tp!473145 () Bool)

(assert (=> b!1629474 (= e!1044974 (and tp_is_empty!7285 tp!473145))))

(assert (=> b!1627091 (= tp!472996 e!1044974)))

(assert (= (and b!1627091 ((_ is Cons!17854) (originalCharacters!3959 (h!23257 (t!149059 tokens!457))))) b!1629474))

(declare-fun tp!473152 () Bool)

(declare-fun e!1044980 () Bool)

(declare-fun tp!473154 () Bool)

(declare-fun b!1629483 () Bool)

(assert (=> b!1629483 (= e!1044980 (and (inv!23232 (left!14348 (c!264623 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (h!23257 tokens!457)))) (value!99305 (h!23257 tokens!457)))))) tp!473152 (inv!23232 (right!14678 (c!264623 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (h!23257 tokens!457)))) (value!99305 (h!23257 tokens!457)))))) tp!473154))))

(declare-fun b!1629485 () Bool)

(declare-fun e!1044979 () Bool)

(declare-fun tp!473153 () Bool)

(assert (=> b!1629485 (= e!1044979 tp!473153)))

(declare-fun b!1629484 () Bool)

(declare-fun inv!23238 (IArray!11881) Bool)

(assert (=> b!1629484 (= e!1044980 (and (inv!23238 (xs!8770 (c!264623 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (h!23257 tokens!457)))) (value!99305 (h!23257 tokens!457)))))) e!1044979))))

(assert (=> b!1626535 (= tp!472927 (and (inv!23232 (c!264623 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (h!23257 tokens!457)))) (value!99305 (h!23257 tokens!457))))) e!1044980))))

(assert (= (and b!1626535 ((_ is Node!5938) (c!264623 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (h!23257 tokens!457)))) (value!99305 (h!23257 tokens!457)))))) b!1629483))

(assert (= b!1629484 b!1629485))

(assert (= (and b!1626535 ((_ is Leaf!8731) (c!264623 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (h!23257 tokens!457)))) (value!99305 (h!23257 tokens!457)))))) b!1629484))

(declare-fun m!1961377 () Bool)

(assert (=> b!1629483 m!1961377))

(declare-fun m!1961379 () Bool)

(assert (=> b!1629483 m!1961379))

(declare-fun m!1961381 () Bool)

(assert (=> b!1629484 m!1961381))

(assert (=> b!1626535 m!1955333))

(declare-fun tp!473155 () Bool)

(declare-fun tp!473157 () Bool)

(declare-fun e!1044982 () Bool)

(declare-fun b!1629486 () Bool)

(assert (=> b!1629486 (= e!1044982 (and (inv!23232 (left!14348 (c!264623 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 tokens!457))))) (value!99305 (h!23257 (t!149059 tokens!457))))))) tp!473155 (inv!23232 (right!14678 (c!264623 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 tokens!457))))) (value!99305 (h!23257 (t!149059 tokens!457))))))) tp!473157))))

(declare-fun b!1629488 () Bool)

(declare-fun e!1044981 () Bool)

(declare-fun tp!473156 () Bool)

(assert (=> b!1629488 (= e!1044981 tp!473156)))

(declare-fun b!1629487 () Bool)

(assert (=> b!1629487 (= e!1044982 (and (inv!23238 (xs!8770 (c!264623 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 tokens!457))))) (value!99305 (h!23257 (t!149059 tokens!457))))))) e!1044981))))

(assert (=> b!1626963 (= tp!472932 (and (inv!23232 (c!264623 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 tokens!457))))) (value!99305 (h!23257 (t!149059 tokens!457)))))) e!1044982))))

(assert (= (and b!1626963 ((_ is Node!5938) (c!264623 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 tokens!457))))) (value!99305 (h!23257 (t!149059 tokens!457))))))) b!1629486))

(assert (= b!1629487 b!1629488))

(assert (= (and b!1626963 ((_ is Leaf!8731) (c!264623 (dynLambda!7961 (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 tokens!457))))) (value!99305 (h!23257 (t!149059 tokens!457))))))) b!1629487))

(declare-fun m!1961383 () Bool)

(assert (=> b!1629486 m!1961383))

(declare-fun m!1961385 () Bool)

(assert (=> b!1629486 m!1961385))

(declare-fun m!1961387 () Bool)

(assert (=> b!1629487 m!1961387))

(assert (=> b!1626963 m!1956171))

(declare-fun b!1629492 () Bool)

(declare-fun b_free!43947 () Bool)

(declare-fun b_next!44651 () Bool)

(assert (=> b!1629492 (= b_free!43947 (not b_next!44651))))

(declare-fun t!149367 () Bool)

(declare-fun tb!93599 () Bool)

(assert (=> (and b!1629492 (= (toValue!4572 (transformation!3145 (rule!4971 (h!23257 (t!149059 (t!149059 tokens!457)))))) (toValue!4572 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588346)))))) t!149367) tb!93599))

(declare-fun result!112866 () Bool)

(assert (= result!112866 result!112650))

(assert (=> d!489941 t!149367))

(declare-fun t!149369 () Bool)

(declare-fun tb!93601 () Bool)

(assert (=> (and b!1629492 (= (toValue!4572 (transformation!3145 (rule!4971 (h!23257 (t!149059 (t!149059 tokens!457)))))) (toValue!4572 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588381)))))) t!149369) tb!93601))

(declare-fun result!112868 () Bool)

(assert (= result!112868 result!112766))

(assert (=> d!490831 t!149369))

(declare-fun t!149371 () Bool)

(declare-fun tb!93603 () Bool)

(assert (=> (and b!1629492 (= (toValue!4572 (transformation!3145 (rule!4971 (h!23257 (t!149059 (t!149059 tokens!457)))))) (toValue!4572 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588386)))))) t!149371) tb!93603))

(declare-fun result!112870 () Bool)

(assert (= result!112870 result!112832))

(assert (=> d!491083 t!149371))

(declare-fun b_and!115569 () Bool)

(declare-fun tp!473161 () Bool)

(assert (=> b!1629492 (= tp!473161 (and (=> t!149367 result!112866) (=> t!149369 result!112868) (=> t!149371 result!112870) b_and!115569))))

(declare-fun b_free!43949 () Bool)

(declare-fun b_next!44653 () Bool)

(assert (=> b!1629492 (= b_free!43949 (not b_next!44653))))

(declare-fun t!149373 () Bool)

(declare-fun tb!93605 () Bool)

(assert (=> (and b!1629492 (= (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 (t!149059 tokens!457)))))) (toChars!4431 (transformation!3145 (rule!4971 (h!23257 tokens!457))))) t!149373) tb!93605))

(declare-fun result!112872 () Bool)

(assert (= result!112872 result!112574))

(assert (=> b!1626526 t!149373))

(declare-fun t!149375 () Bool)

(declare-fun tb!93607 () Bool)

(assert (=> (and b!1629492 (= (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 (t!149059 tokens!457)))))) (toChars!4431 (transformation!3145 (rule!4971 lt!588424)))) t!149375) tb!93607))

(declare-fun result!112874 () Bool)

(assert (= result!112874 result!112634))

(assert (=> d!489903 t!149375))

(declare-fun t!149377 () Bool)

(declare-fun tb!93609 () Bool)

(assert (=> (and b!1629492 (= (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 (t!149059 tokens!457)))))) (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (Cons!17856 (h!23257 tokens!457) Nil!17856)))))) t!149377) tb!93609))

(declare-fun result!112876 () Bool)

(assert (= result!112876 result!112774))

(assert (=> d!490871 t!149377))

(declare-fun t!149379 () Bool)

(declare-fun tb!93611 () Bool)

(assert (=> (and b!1629492 (= (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 (t!149059 tokens!457)))))) (toChars!4431 (transformation!3145 (rule!4971 (apply!4574 lt!587983 0))))) t!149379) tb!93611))

(declare-fun result!112878 () Bool)

(assert (= result!112878 result!112734))

(assert (=> d!490433 t!149379))

(declare-fun t!149381 () Bool)

(declare-fun tb!93613 () Bool)

(assert (=> (and b!1629492 (= (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 (t!149059 tokens!457)))))) (toChars!4431 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588386)))))) t!149381) tb!93613))

(declare-fun result!112880 () Bool)

(assert (= result!112880 result!112626))

(assert (=> d!489849 t!149381))

(declare-fun t!149383 () Bool)

(declare-fun tb!93615 () Bool)

(assert (=> (and b!1629492 (= (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 (t!149059 tokens!457)))))) (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 (t!149059 tokens!457))))))) t!149383) tb!93615))

(declare-fun result!112882 () Bool)

(assert (= result!112882 result!112742))

(assert (=> d!490641 t!149383))

(declare-fun tb!93617 () Bool)

(declare-fun t!149385 () Bool)

(assert (=> (and b!1629492 (= (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 (t!149059 tokens!457)))))) (toChars!4431 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588381)))))) t!149385) tb!93617))

(declare-fun result!112884 () Bool)

(assert (= result!112884 result!112642))

(assert (=> d!489935 t!149385))

(declare-fun tb!93619 () Bool)

(declare-fun t!149387 () Bool)

(assert (=> (and b!1629492 (= (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 (t!149059 tokens!457)))))) (toChars!4431 (transformation!3145 (rule!4971 (_1!10119 (get!5150 lt!588346)))))) t!149387) tb!93619))

(declare-fun result!112886 () Bool)

(assert (= result!112886 result!112684))

(assert (=> d!490101 t!149387))

(declare-fun t!149389 () Bool)

(declare-fun tb!93621 () Bool)

(assert (=> (and b!1629492 (= (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 (t!149059 tokens!457)))))) (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 tokens!457)))))) t!149389) tb!93621))

(declare-fun result!112888 () Bool)

(assert (= result!112888 result!112590))

(assert (=> b!1628989 t!149389))

(assert (=> d!489719 t!149373))

(assert (=> d!489789 t!149389))

(declare-fun b_and!115571 () Bool)

(declare-fun tp!473159 () Bool)

(assert (=> b!1629492 (= tp!473159 (and (=> t!149389 result!112888) (=> t!149375 result!112874) (=> t!149383 result!112882) (=> t!149379 result!112878) (=> t!149377 result!112876) (=> t!149381 result!112880) (=> t!149385 result!112884) (=> t!149373 result!112872) (=> t!149387 result!112886) b_and!115571))))

(declare-fun e!1044987 () Bool)

(assert (=> b!1627090 (= tp!473000 e!1044987)))

(declare-fun e!1044988 () Bool)

(declare-fun e!1044984 () Bool)

(declare-fun tp!473160 () Bool)

(declare-fun b!1629491 () Bool)

(assert (=> b!1629491 (= e!1044988 (and tp!473160 (inv!23225 (tag!3423 (rule!4971 (h!23257 (t!149059 (t!149059 tokens!457)))))) (inv!23228 (transformation!3145 (rule!4971 (h!23257 (t!149059 (t!149059 tokens!457)))))) e!1044984))))

(declare-fun b!1629489 () Bool)

(declare-fun tp!473162 () Bool)

(declare-fun e!1044983 () Bool)

(assert (=> b!1629489 (= e!1044987 (and (inv!23229 (h!23257 (t!149059 (t!149059 tokens!457)))) e!1044983 tp!473162))))

(declare-fun tp!473158 () Bool)

(declare-fun b!1629490 () Bool)

(assert (=> b!1629490 (= e!1044983 (and (inv!21 (value!99305 (h!23257 (t!149059 (t!149059 tokens!457))))) e!1044988 tp!473158))))

(assert (=> b!1629492 (= e!1044984 (and tp!473161 tp!473159))))

(assert (= b!1629491 b!1629492))

(assert (= b!1629490 b!1629491))

(assert (= b!1629489 b!1629490))

(assert (= (and b!1627090 ((_ is Cons!17856) (t!149059 (t!149059 tokens!457)))) b!1629489))

(declare-fun m!1961389 () Bool)

(assert (=> b!1629491 m!1961389))

(declare-fun m!1961391 () Bool)

(assert (=> b!1629491 m!1961391))

(declare-fun m!1961393 () Bool)

(assert (=> b!1629489 m!1961393))

(declare-fun m!1961395 () Bool)

(assert (=> b!1629490 m!1961395))

(declare-fun b!1629496 () Bool)

(declare-fun e!1044989 () Bool)

(declare-fun tp!473166 () Bool)

(declare-fun tp!473164 () Bool)

(assert (=> b!1629496 (= e!1044989 (and tp!473166 tp!473164))))

(declare-fun b!1629493 () Bool)

(assert (=> b!1629493 (= e!1044989 tp_is_empty!7285)))

(assert (=> b!1627106 (= tp!473011 e!1044989)))

(declare-fun b!1629495 () Bool)

(declare-fun tp!473163 () Bool)

(assert (=> b!1629495 (= e!1044989 tp!473163)))

(declare-fun b!1629494 () Bool)

(declare-fun tp!473167 () Bool)

(declare-fun tp!473165 () Bool)

(assert (=> b!1629494 (= e!1044989 (and tp!473167 tp!473165))))

(assert (= (and b!1627106 ((_ is ElementMatch!4473) (reg!4802 (regex!3145 (rule!4971 (h!23257 tokens!457)))))) b!1629493))

(assert (= (and b!1627106 ((_ is Concat!7709) (reg!4802 (regex!3145 (rule!4971 (h!23257 tokens!457)))))) b!1629494))

(assert (= (and b!1627106 ((_ is Star!4473) (reg!4802 (regex!3145 (rule!4971 (h!23257 tokens!457)))))) b!1629495))

(assert (= (and b!1627106 ((_ is Union!4473) (reg!4802 (regex!3145 (rule!4971 (h!23257 tokens!457)))))) b!1629496))

(declare-fun b!1629500 () Bool)

(declare-fun e!1044990 () Bool)

(declare-fun tp!473171 () Bool)

(declare-fun tp!473169 () Bool)

(assert (=> b!1629500 (= e!1044990 (and tp!473171 tp!473169))))

(declare-fun b!1629497 () Bool)

(assert (=> b!1629497 (= e!1044990 tp_is_empty!7285)))

(assert (=> b!1627122 (= tp!473031 e!1044990)))

(declare-fun b!1629499 () Bool)

(declare-fun tp!473168 () Bool)

(assert (=> b!1629499 (= e!1044990 tp!473168)))

(declare-fun b!1629498 () Bool)

(declare-fun tp!473172 () Bool)

(declare-fun tp!473170 () Bool)

(assert (=> b!1629498 (= e!1044990 (and tp!473172 tp!473170))))

(assert (= (and b!1627122 ((_ is ElementMatch!4473) (regOne!9459 (regex!3145 (h!23256 rules!1846))))) b!1629497))

(assert (= (and b!1627122 ((_ is Concat!7709) (regOne!9459 (regex!3145 (h!23256 rules!1846))))) b!1629498))

(assert (= (and b!1627122 ((_ is Star!4473) (regOne!9459 (regex!3145 (h!23256 rules!1846))))) b!1629499))

(assert (= (and b!1627122 ((_ is Union!4473) (regOne!9459 (regex!3145 (h!23256 rules!1846))))) b!1629500))

(declare-fun b!1629504 () Bool)

(declare-fun e!1044991 () Bool)

(declare-fun tp!473176 () Bool)

(declare-fun tp!473174 () Bool)

(assert (=> b!1629504 (= e!1044991 (and tp!473176 tp!473174))))

(declare-fun b!1629501 () Bool)

(assert (=> b!1629501 (= e!1044991 tp_is_empty!7285)))

(assert (=> b!1627122 (= tp!473029 e!1044991)))

(declare-fun b!1629503 () Bool)

(declare-fun tp!473173 () Bool)

(assert (=> b!1629503 (= e!1044991 tp!473173)))

(declare-fun b!1629502 () Bool)

(declare-fun tp!473177 () Bool)

(declare-fun tp!473175 () Bool)

(assert (=> b!1629502 (= e!1044991 (and tp!473177 tp!473175))))

(assert (= (and b!1627122 ((_ is ElementMatch!4473) (regTwo!9459 (regex!3145 (h!23256 rules!1846))))) b!1629501))

(assert (= (and b!1627122 ((_ is Concat!7709) (regTwo!9459 (regex!3145 (h!23256 rules!1846))))) b!1629502))

(assert (= (and b!1627122 ((_ is Star!4473) (regTwo!9459 (regex!3145 (h!23256 rules!1846))))) b!1629503))

(assert (= (and b!1627122 ((_ is Union!4473) (regTwo!9459 (regex!3145 (h!23256 rules!1846))))) b!1629504))

(declare-fun b!1629508 () Bool)

(declare-fun e!1044992 () Bool)

(declare-fun tp!473181 () Bool)

(declare-fun tp!473179 () Bool)

(assert (=> b!1629508 (= e!1044992 (and tp!473181 tp!473179))))

(declare-fun b!1629505 () Bool)

(assert (=> b!1629505 (= e!1044992 tp_is_empty!7285)))

(assert (=> b!1627105 (= tp!473015 e!1044992)))

(declare-fun b!1629507 () Bool)

(declare-fun tp!473178 () Bool)

(assert (=> b!1629507 (= e!1044992 tp!473178)))

(declare-fun b!1629506 () Bool)

(declare-fun tp!473182 () Bool)

(declare-fun tp!473180 () Bool)

(assert (=> b!1629506 (= e!1044992 (and tp!473182 tp!473180))))

(assert (= (and b!1627105 ((_ is ElementMatch!4473) (regOne!9458 (regex!3145 (rule!4971 (h!23257 tokens!457)))))) b!1629505))

(assert (= (and b!1627105 ((_ is Concat!7709) (regOne!9458 (regex!3145 (rule!4971 (h!23257 tokens!457)))))) b!1629506))

(assert (= (and b!1627105 ((_ is Star!4473) (regOne!9458 (regex!3145 (rule!4971 (h!23257 tokens!457)))))) b!1629507))

(assert (= (and b!1627105 ((_ is Union!4473) (regOne!9458 (regex!3145 (rule!4971 (h!23257 tokens!457)))))) b!1629508))

(declare-fun b!1629512 () Bool)

(declare-fun e!1044993 () Bool)

(declare-fun tp!473186 () Bool)

(declare-fun tp!473184 () Bool)

(assert (=> b!1629512 (= e!1044993 (and tp!473186 tp!473184))))

(declare-fun b!1629509 () Bool)

(assert (=> b!1629509 (= e!1044993 tp_is_empty!7285)))

(assert (=> b!1627105 (= tp!473013 e!1044993)))

(declare-fun b!1629511 () Bool)

(declare-fun tp!473183 () Bool)

(assert (=> b!1629511 (= e!1044993 tp!473183)))

(declare-fun b!1629510 () Bool)

(declare-fun tp!473187 () Bool)

(declare-fun tp!473185 () Bool)

(assert (=> b!1629510 (= e!1044993 (and tp!473187 tp!473185))))

(assert (= (and b!1627105 ((_ is ElementMatch!4473) (regTwo!9458 (regex!3145 (rule!4971 (h!23257 tokens!457)))))) b!1629509))

(assert (= (and b!1627105 ((_ is Concat!7709) (regTwo!9458 (regex!3145 (rule!4971 (h!23257 tokens!457)))))) b!1629510))

(assert (= (and b!1627105 ((_ is Star!4473) (regTwo!9458 (regex!3145 (rule!4971 (h!23257 tokens!457)))))) b!1629511))

(assert (= (and b!1627105 ((_ is Union!4473) (regTwo!9458 (regex!3145 (rule!4971 (h!23257 tokens!457)))))) b!1629512))

(declare-fun b!1629516 () Bool)

(declare-fun e!1044994 () Bool)

(declare-fun tp!473191 () Bool)

(declare-fun tp!473189 () Bool)

(assert (=> b!1629516 (= e!1044994 (and tp!473191 tp!473189))))

(declare-fun b!1629513 () Bool)

(assert (=> b!1629513 (= e!1044994 tp_is_empty!7285)))

(assert (=> b!1627121 (= tp!473028 e!1044994)))

(declare-fun b!1629515 () Bool)

(declare-fun tp!473188 () Bool)

(assert (=> b!1629515 (= e!1044994 tp!473188)))

(declare-fun b!1629514 () Bool)

(declare-fun tp!473192 () Bool)

(declare-fun tp!473190 () Bool)

(assert (=> b!1629514 (= e!1044994 (and tp!473192 tp!473190))))

(assert (= (and b!1627121 ((_ is ElementMatch!4473) (reg!4802 (regex!3145 (h!23256 rules!1846))))) b!1629513))

(assert (= (and b!1627121 ((_ is Concat!7709) (reg!4802 (regex!3145 (h!23256 rules!1846))))) b!1629514))

(assert (= (and b!1627121 ((_ is Star!4473) (reg!4802 (regex!3145 (h!23256 rules!1846))))) b!1629515))

(assert (= (and b!1627121 ((_ is Union!4473) (reg!4802 (regex!3145 (h!23256 rules!1846))))) b!1629516))

(declare-fun b!1629520 () Bool)

(declare-fun e!1044995 () Bool)

(declare-fun tp!473196 () Bool)

(declare-fun tp!473194 () Bool)

(assert (=> b!1629520 (= e!1044995 (and tp!473196 tp!473194))))

(declare-fun b!1629517 () Bool)

(assert (=> b!1629517 (= e!1044995 tp_is_empty!7285)))

(assert (=> b!1627117 (= tp!473024 e!1044995)))

(declare-fun b!1629519 () Bool)

(declare-fun tp!473193 () Bool)

(assert (=> b!1629519 (= e!1044995 tp!473193)))

(declare-fun b!1629518 () Bool)

(declare-fun tp!473197 () Bool)

(declare-fun tp!473195 () Bool)

(assert (=> b!1629518 (= e!1044995 (and tp!473197 tp!473195))))

(assert (= (and b!1627117 ((_ is ElementMatch!4473) (regex!3145 (h!23256 (t!149058 rules!1846))))) b!1629517))

(assert (= (and b!1627117 ((_ is Concat!7709) (regex!3145 (h!23256 (t!149058 rules!1846))))) b!1629518))

(assert (= (and b!1627117 ((_ is Star!4473) (regex!3145 (h!23256 (t!149058 rules!1846))))) b!1629519))

(assert (= (and b!1627117 ((_ is Union!4473) (regex!3145 (h!23256 (t!149058 rules!1846))))) b!1629520))

(declare-fun b!1629524 () Bool)

(declare-fun e!1044996 () Bool)

(declare-fun tp!473201 () Bool)

(declare-fun tp!473199 () Bool)

(assert (=> b!1629524 (= e!1044996 (and tp!473201 tp!473199))))

(declare-fun b!1629521 () Bool)

(assert (=> b!1629521 (= e!1044996 tp_is_empty!7285)))

(assert (=> b!1627092 (= tp!472998 e!1044996)))

(declare-fun b!1629523 () Bool)

(declare-fun tp!473198 () Bool)

(assert (=> b!1629523 (= e!1044996 tp!473198)))

(declare-fun b!1629522 () Bool)

(declare-fun tp!473202 () Bool)

(declare-fun tp!473200 () Bool)

(assert (=> b!1629522 (= e!1044996 (and tp!473202 tp!473200))))

(assert (= (and b!1627092 ((_ is ElementMatch!4473) (regex!3145 (rule!4971 (h!23257 (t!149059 tokens!457)))))) b!1629521))

(assert (= (and b!1627092 ((_ is Concat!7709) (regex!3145 (rule!4971 (h!23257 (t!149059 tokens!457)))))) b!1629522))

(assert (= (and b!1627092 ((_ is Star!4473) (regex!3145 (rule!4971 (h!23257 (t!149059 tokens!457)))))) b!1629523))

(assert (= (and b!1627092 ((_ is Union!4473) (regex!3145 (rule!4971 (h!23257 (t!149059 tokens!457)))))) b!1629524))

(declare-fun b!1629528 () Bool)

(declare-fun e!1044997 () Bool)

(declare-fun tp!473206 () Bool)

(declare-fun tp!473204 () Bool)

(assert (=> b!1629528 (= e!1044997 (and tp!473206 tp!473204))))

(declare-fun b!1629525 () Bool)

(assert (=> b!1629525 (= e!1044997 tp_is_empty!7285)))

(assert (=> b!1627120 (= tp!473032 e!1044997)))

(declare-fun b!1629527 () Bool)

(declare-fun tp!473203 () Bool)

(assert (=> b!1629527 (= e!1044997 tp!473203)))

(declare-fun b!1629526 () Bool)

(declare-fun tp!473207 () Bool)

(declare-fun tp!473205 () Bool)

(assert (=> b!1629526 (= e!1044997 (and tp!473207 tp!473205))))

(assert (= (and b!1627120 ((_ is ElementMatch!4473) (regOne!9458 (regex!3145 (h!23256 rules!1846))))) b!1629525))

(assert (= (and b!1627120 ((_ is Concat!7709) (regOne!9458 (regex!3145 (h!23256 rules!1846))))) b!1629526))

(assert (= (and b!1627120 ((_ is Star!4473) (regOne!9458 (regex!3145 (h!23256 rules!1846))))) b!1629527))

(assert (= (and b!1627120 ((_ is Union!4473) (regOne!9458 (regex!3145 (h!23256 rules!1846))))) b!1629528))

(declare-fun b!1629532 () Bool)

(declare-fun e!1044998 () Bool)

(declare-fun tp!473211 () Bool)

(declare-fun tp!473209 () Bool)

(assert (=> b!1629532 (= e!1044998 (and tp!473211 tp!473209))))

(declare-fun b!1629529 () Bool)

(assert (=> b!1629529 (= e!1044998 tp_is_empty!7285)))

(assert (=> b!1627120 (= tp!473030 e!1044998)))

(declare-fun b!1629531 () Bool)

(declare-fun tp!473208 () Bool)

(assert (=> b!1629531 (= e!1044998 tp!473208)))

(declare-fun b!1629530 () Bool)

(declare-fun tp!473212 () Bool)

(declare-fun tp!473210 () Bool)

(assert (=> b!1629530 (= e!1044998 (and tp!473212 tp!473210))))

(assert (= (and b!1627120 ((_ is ElementMatch!4473) (regTwo!9458 (regex!3145 (h!23256 rules!1846))))) b!1629529))

(assert (= (and b!1627120 ((_ is Concat!7709) (regTwo!9458 (regex!3145 (h!23256 rules!1846))))) b!1629530))

(assert (= (and b!1627120 ((_ is Star!4473) (regTwo!9458 (regex!3145 (h!23256 rules!1846))))) b!1629531))

(assert (= (and b!1627120 ((_ is Union!4473) (regTwo!9458 (regex!3145 (h!23256 rules!1846))))) b!1629532))

(declare-fun b_lambda!51309 () Bool)

(assert (= b_lambda!51293 (or (and b!1626382 b_free!43913 (= (toChars!4431 (transformation!3145 (rule!4971 (h!23257 tokens!457)))) (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 tokens!457))))))) (and b!1627093 b_free!43929) (and b!1629492 b_free!43949 (= (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 (t!149059 tokens!457)))))) (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 tokens!457))))))) (and b!1627118 b_free!43933 (= (toChars!4431 (transformation!3145 (h!23256 (t!149058 rules!1846)))) (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 tokens!457))))))) (and b!1629473 b_free!43945 (= (toChars!4431 (transformation!3145 (h!23256 (t!149058 (t!149058 rules!1846))))) (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 tokens!457))))))) (and b!1626369 b_free!43917 (= (toChars!4431 (transformation!3145 (h!23256 rules!1846))) (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 tokens!457))))))) b_lambda!51309)))

(declare-fun b_lambda!51311 () Bool)

(assert (= b_lambda!51283 (or (and b!1629473 b_free!43945 (= (toChars!4431 (transformation!3145 (h!23256 (t!149058 (t!149058 rules!1846))))) (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 (t!149059 tokens!457)))))))) (and b!1627093 b_free!43929 (= (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 tokens!457))))) (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 (t!149059 tokens!457)))))))) (and b!1629492 b_free!43949) (and b!1626382 b_free!43913 (= (toChars!4431 (transformation!3145 (rule!4971 (h!23257 tokens!457)))) (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 (t!149059 tokens!457)))))))) (and b!1627118 b_free!43933 (= (toChars!4431 (transformation!3145 (h!23256 (t!149058 rules!1846)))) (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 (t!149059 tokens!457)))))))) (and b!1626369 b_free!43917 (= (toChars!4431 (transformation!3145 (h!23256 rules!1846))) (toChars!4431 (transformation!3145 (rule!4971 (h!23257 (t!149059 (t!149059 tokens!457)))))))) b_lambda!51311)))

(declare-fun b_lambda!51313 () Bool)

(assert (= b_lambda!51291 (or d!489795 b_lambda!51313)))

(declare-fun bs!395086 () Bool)

(declare-fun d!491131 () Bool)

(assert (= bs!395086 (and d!491131 d!489795)))

(assert (=> bs!395086 (= (dynLambda!7977 lambda!67276 (h!23257 tokens!457)) (rulesProduceIndividualToken!1426 thiss!17113 rules!1846 (h!23257 tokens!457)))))

(assert (=> bs!395086 m!1955017))

(assert (=> b!1628987 d!491131))

(declare-fun b_lambda!51315 () Bool)

(assert (= b_lambda!51269 (or d!489787 b_lambda!51315)))

(declare-fun bs!395087 () Bool)

(declare-fun d!491133 () Bool)

(assert (= bs!395087 (and d!491133 d!489787)))

(assert (=> bs!395087 (= (dynLambda!7972 lambda!67273 (h!23256 rules!1846)) (regex!3145 (h!23256 rules!1846)))))

(assert (=> b!1627952 d!491133))

(check-sat (not b!1628025) (not d!490619) (not d!490029) (not d!490907) (not b!1629465) (not bm!105459) (not d!490615) (not b!1627503) (not d!489879) (not b!1628020) (not b!1628747) (not d!490019) (not d!490335) (not d!490851) (not b!1628721) (not d!490213) (not b!1627378) (not b!1627943) (not b!1629511) (not b!1627260) (not b!1629471) (not b_lambda!51249) (not b!1628447) b_and!115563 (not d!490655) (not b!1628016) (not b!1629360) (not d!489935) (not d!491111) (not d!490099) (not b!1627562) (not b!1629455) (not d!490637) (not d!490665) (not d!490887) (not d!490535) (not bm!105493) (not bm!105453) (not b!1629470) (not b!1629387) (not b!1628520) (not d!490491) (not b!1627832) (not b!1628433) (not b!1628061) (not d!489881) (not b!1628666) (not b!1629353) (not b!1628550) (not b_next!44621) (not b!1627289) (not d!490645) (not d!490903) (not b!1627256) (not d!491103) (not b!1628545) (not b!1628696) (not d!490045) (not d!490885) (not b!1629464) (not d!490095) (not b!1628522) (not bm!105458) (not b!1628703) (not b!1628511) (not b!1628181) (not b!1629010) (not d!490325) (not b!1627360) (not b!1627296) (not b!1628056) (not b!1629400) (not b!1629469) (not b!1627204) (not bm!105429) (not b!1627357) (not d!489859) (not b!1628726) (not b!1629489) (not b!1627695) (not b!1628617) (not b!1628288) (not b!1627359) (not b!1629013) (not b!1629363) (not b!1627778) (not b!1629027) (not d!490603) (not b!1628095) (not b!1628489) (not b!1628487) (not b!1629095) (not b!1628492) (not b!1629515) (not b!1628062) (not b!1627818) (not b!1627392) (not b!1628207) (not b!1627331) (not d!489849) (not b!1628982) (not tb!93423) (not d!489961) (not d!490307) (not b!1628690) (not d!490643) (not b!1628027) (not b!1628992) (not b!1627492) (not b!1629494) (not b!1627397) (not d!490639) (not d!490837) (not b!1629029) (not b!1627267) (not b!1629089) (not d!490489) (not b!1629462) (not b!1627870) (not b!1628206) (not d!490231) (not b!1628740) (not b!1627809) (not b!1629339) (not d!490651) (not d!490865) (not d!491051) (not b!1629503) (not b!1628997) (not tb!93479) (not b!1628988) (not b!1629041) (not b!1627545) (not b!1628742) (not d!490879) (not b!1627396) (not d!489959) (not b!1627400) (not bm!105317) (not d!490869) (not bm!105445) (not d!490889) (not b!1627739) (not b!1628725) (not bm!105427) (not b!1629499) (not b!1628628) (not d!490633) (not b!1629377) (not tb!93511) (not b!1628713) (not b!1628192) (not b!1628013) (not d!490669) (not b_lambda!51253) (not b!1629522) (not b_lambda!51289) (not bm!105455) (not b!1629002) (not b!1628514) (not d!490219) (not d!491073) (not d!490531) (not bm!105434) (not b!1628683) (not b!1629391) (not b!1627564) (not b!1627399) (not b!1629448) (not d!490243) (not d!490909) (not b!1628031) (not b!1626535) (not b!1629466) (not d!489909) (not b!1627549) (not b!1627890) (not b!1628709) (not d!490101) (not b!1629007) (not b!1628123) (not b!1629531) (not b!1629500) (not bm!105311) (not d!490661) (not d!490555) (not d!491049) (not b!1628736) (not b!1629496) (not b!1628649) (not d!490483) (not bm!105482) (not d!490359) (not b!1629001) (not b!1627481) (not d!490215) (not b!1627391) (not d!490149) (not b!1627302) (not b!1628300) (not d!491089) (not b!1627875) (not b!1627241) (not b!1628506) (not b!1629453) b_and!115565 (not b!1627705) (not b!1629443) (not b!1629510) (not b!1628989) (not b!1628699) (not b!1628050) (not d!490553) (not b!1627777) (not d!491071) (not b!1628527) (not d!489907) (not b!1627819) (not b!1628444) (not b!1629402) (not b_next!44653) (not b!1627308) (not b!1627559) (not d!490611) (not b!1629491) (not d!490841) (not b!1628021) (not b!1629459) (not b!1628513) (not b!1627330) (not tb!93375) (not b!1628572) (not b!1627507) (not b!1627834) (not b!1629392) (not d!490649) (not d!490433) (not d!490333) (not b!1628429) (not b!1628722) b_and!115539 (not b_lambda!51295) (not d!489997) (not d!490861) (not b!1628386) (not d!489905) (not d!490235) (not b!1628530) (not b!1629044) (not b!1627710) (not b!1628024) (not bm!105460) (not b!1628682) (not d!490197) (not b!1628410) (not b!1629021) (not b!1629092) (not d!490573) (not b!1628047) (not bm!105409) b_and!115533 (not bm!105490) (not d!490561) (not b!1628493) (not b!1627358) (not b!1628968) (not b!1628769) (not b!1628368) (not b!1627264) (not b_next!44619) (not b!1628733) (not d!489855) (not d!490151) (not b!1628058) (not b!1628570) (not b!1629406) (not b!1627546) (not b!1627708) (not d!490871) (not b!1629371) (not bm!105468) (not d!490827) (not b!1629374) (not b!1628289) (not d!489963) (not b!1627954) (not b!1628194) (not b_lambda!51313) (not d!489991) (not b!1628418) (not b_next!44631) (not b!1629099) (not b!1627478) (not b!1629036) (not b!1627517) (not d!490641) (not b!1629385) (not b!1627395) (not d!489913) (not d!490625) (not d!490843) (not d!490537) (not b!1628635) (not b!1629024) (not b!1627808) (not b!1629056) (not tb!93367) (not b!1627502) (not d!490481) (not b!1627326) (not d!491115) (not d!490629) (not d!489903) (not b!1629336) (not d!490021) (not bm!105345) (not d!490829) (not b!1629508) (not bm!105272) (not b!1629445) (not b!1629045) (not d!490245) (not b!1627523) (not d!490339) (not b!1628494) (not bm!105321) (not b!1628482) (not b!1629028) (not b!1628057) (not b!1628741) (not d!489933) (not b!1628693) (not bs!395086) (not b!1628481) (not b!1628014) (not b!1628998) (not bm!105432) (not b!1628738) (not b!1628093) (not bm!105463) (not d!489993) (not d!490631) (not b!1628577) (not tb!93471) (not b!1629532) (not b!1628661) (not d!489987) (not d!490251) (not b!1628637) (not bm!105471) (not b!1628180) (not b!1628026) (not b!1627265) (not b_lambda!51255) (not d!490691) (not b_next!44617) (not d!489957) (not b!1629347) (not d!490147) (not b!1628723) (not d!490519) (not d!490509) (not b!1629340) (not b_lambda!51245) (not b_lambda!51265) (not d!489929) (not d!490899) (not b!1628387) (not b!1629052) (not d!490171) (not d!490549) (not b!1629528) (not b!1627356) (not b!1628200) (not b!1629495) (not d!490403) (not b!1629468) (not b!1628588) (not b!1628390) (not d!490087) (not b!1627487) (not tb!93391) (not b!1628712) (not b!1628714) (not b!1628445) (not bm!105452) (not d!490687) (not d!490181) (not b!1629040) (not d!490203) (not b!1629043) (not b!1628664) b_and!115537 (not b!1628090) (not b!1628268) (not d!489949) (not b!1628698) (not b!1629005) (not b!1627946) (not b!1627694) (not d!489891) (not d!490107) (not d!489923) (not tb!93503) (not b!1627939) (not b!1628743) (not d!490097) (not b!1628727) (not b!1628023) (not d!490145) (not b!1628524) (not d!491119) (not b!1628091) (not b!1629373) (not b!1628767) (not b!1628488) (not d!490327) (not d!489951) (not b!1627522) (not bm!105319) (not b!1628139) (not b!1628048) (not bm!105344) (not d!490855) (not b!1628557) (not b!1629442) (not b!1627707) (not d!489845) (not b!1627740) (not b!1628507) (not b!1628574) (not b!1628409) (not d!491107) (not b!1627959) (not b!1628739) (not b!1628978) (not b!1627871) (not b!1629369) (not d!490005) (not b!1629093) (not b!1627513) (not bm!105450) (not b!1628549) (not d!490617) (not d!491127) (not b!1627376) (not d!490467) (not b!1627206) (not b!1628168) (not b!1628140) (not b!1629507) (not b!1629447) (not d!490157) (not b!1628616) (not b!1629354) (not b!1627269) (not b_next!44647) (not b!1628691) (not b!1628576) (not b!1627301) (not d!491065) (not b!1628972) (not b!1628568) (not b!1629516) (not d!490905) (not b!1629008) (not b!1629006) (not b!1629407) (not bm!105469) (not b_next!44637) (not b!1626963) (not d!490143) (not d!490657) (not b!1627242) (not b!1628600) (not b!1628601) (not d!490185) (not b!1628993) (not d!490689) (not b!1629518) (not d!489995) (not b!1628708) (not b!1627940) (not b!1629394) (not b!1628526) (not b!1628604) (not b!1627544) b_and!115571 (not b!1628554) (not b!1628745) (not b!1628571) (not b!1628702) (not b!1628544) (not b_next!44651) (not b!1628667) (not b_next!44615) (not b!1629490) (not b!1627355) (not b_next!44635) (not b!1629472) (not d!489943) b_and!115535 (not d!490849) (not b!1628607) (not d!490567) (not b_lambda!51257) (not b!1628996) (not b!1629405) (not b!1628531) (not d!490347) (not b!1629411) (not b!1629018) (not b!1627831) (not b!1628573) (not b!1627287) (not b!1628533) (not b!1629426) (not b!1629524) (not d!490153) b_and!115567 (not d!490685) (not b!1627561) (not b!1627490) (not d!490455) (not b_lambda!51309) (not d!490593) (not bm!105416) (not b!1628701) (not b!1629530) (not b!1629365) (not b!1627398) (not b!1628182) (not b!1629519) (not b!1629414) (not b!1628278) (not b!1627262) (not d!490217) (not d!489919) (not d!490155) (not b!1627961) (not b!1628995) (not b!1629384) (not d!489955) (not b!1628015) (not d!490361) (not b!1628017) (not b!1628715) (not b!1627335) (not d!490839) (not d!490173) (not b!1627550) (not d!491095) (not d!491099) (not b!1627299) (not d!491105) (not b!1629527) (not b!1628301) (not b!1629379) (not b!1629416) (not d!490179) (not b!1627944) (not bm!105324) (not b!1627361) tp_is_empty!7285 (not b!1627505) (not d!489863) (not b!1627886) (not b!1627258) (not b!1629342) (not b!1628491) (not bm!105273) (not b!1628631) (not b!1627986) (not b!1627551) (not d!490183) (not b!1628528) b_and!115561 (not d!491077) (not b!1629408) (not d!490003) (not b!1627765) (not b!1628142) (not b!1629035) (not b!1627305) (not b!1628633) (not bm!105312) (not b!1627288) (not b!1629014) (not b!1629388) (not b!1629504) (not d!490663) (not d!490237) (not b!1628411) (not b!1628650) (not b!1627952) (not b!1628029) b_and!115569 b_and!115559 (not b!1628980) (not b!1627309) (not b!1627887) (not b!1627354) (not d!490089) (not d!490345) (not d!490441) (not d!490523) (not d!490895) (not b!1628277) (not b!1629483) (not d!491087) (not b!1628389) (not b!1628467) (not b!1628636) (not b!1628484) (not b_lambda!51307) (not d!490175) (not b!1629474) (not b!1629520) (not tb!93383) (not d!491079) (not b_next!44649) (not b!1628586) (not b!1627328) (not d!489931) (not b!1629004) (not b!1628990) (not bm!105313) (not d!489885) (not b!1627266) (not b!1627941) (not b!1629357) (not bm!105461) (not b!1627898) (not b!1629514) (not bm!105320) (not bm!105446) (not d!490695) (not b!1627365) (not b!1627987) (not bm!105489) (not d!490595) (not b!1628973) (not d!490569) (not b!1629498) (not d!490397) (not b!1628064) (not b!1628019) (not d!489911) (not b!1629488) (not b!1627783) (not b!1627333) (not d!490477) (not b!1628724) (not b!1628659) (not b!1628700) (not d!490259) (not d!490229) (not b!1629351) (not d!491085) (not b!1628199) (not d!489953) (not b!1627693) (not b!1629011) (not b!1628744) (not b!1627327) (not d!490551) (not d!489969) (not d!490847) (not d!490867) (not tb!93567) (not d!490877) (not b!1629425) (not b!1628059) (not b!1629487) (not b!1629523) (not b!1628193) (not bm!105470) (not b!1627203) (not b_lambda!51243) (not d!490833) (not b!1629094) (not b!1629091) (not d!490413) (not b!1628197) (not b!1629396) (not b!1628981) (not b!1627873) (not b!1629386) (not b!1628648) (not b!1629417) (not bm!105451) (not d!491075) (not b!1629042) (not b!1627311) (not b!1629346) (not b!1629424) (not b!1627272) (not b!1629397) (not b!1629389) (not b!1628734) (not b!1627295) (not b!1629361) (not b!1628975) (not b!1628486) (not d!490265) (not d!490627) (not b!1628692) (not d!491097) (not b!1627516) (not b!1629020) (not b!1629378) (not b!1628490) (not d!490239) (not b!1628525) (not b!1629452) (not b!1628414) (not b!1628092) (not b_lambda!51281) (not b!1627891) (not b!1628660) (not b!1627942) (not d!489917) (not b!1629390) (not b!1629512) (not b!1629486) (not b!1628060) (not b!1628469) (not d!490605) (not b!1628695) (not b!1629348) b_and!115557 (not b!1627833) (not b!1628976) (not b!1629404) (not b_lambda!51247) (not b!1627380) (not b!1627261) (not b!1629485) (not d!490233) (not b!1629009) (not d!490323) (not b!1627960) (not b!1627574) (not d!490527) (not b!1629458) (not b_lambda!51311) (not b!1629090) (not b!1628729) (not d!490013) (not b!1627329) (not d!489999) (not d!491053) (not b!1628298) (not b!1627294) (not b!1629484) (not b_next!44633) (not d!490141) (not b!1628551) (not b!1628028) (not b!1628018) (not b!1627515) (not b!1628575) (not bm!105404) (not d!490331) (not b!1628768) (not b!1629097) (not b!1627477) (not b!1629367) (not bm!105444) (not d!489925) (not b!1627830) (not b!1628508) (not d!489847) (not b!1628364) (not b!1628471) (not b!1629451) (not d!490565) (not b!1628606) (not d!490395) (not b!1628556) (not b!1629403) (not b!1629526) (not b!1628529) (not b!1628441) (not b!1629502) (not d!490405) (not b!1628371) (not d!490009) (not b!1629506) (not d!490613) (not b!1629023) (not d!491069) (not b!1628599) (not b!1627263) (not d!489889) (not b!1629456) (not b!1629370) (not d!491113) (not b!1629017) (not b!1627962) (not b!1628694) (not d!490139) (not b!1628388) (not b_lambda!51315) (not d!490043) (not d!491121) (not b!1629054))
(check-sat b_and!115563 (not b_next!44621) b_and!115539 b_and!115533 (not b_next!44619) (not b_next!44631) (not b_next!44617) b_and!115537 b_and!115561 (not b_next!44649) b_and!115557 (not b_next!44633) b_and!115565 (not b_next!44653) (not b_next!44647) (not b_next!44637) b_and!115571 (not b_next!44651) (not b_next!44615) (not b_next!44635) b_and!115535 b_and!115567 b_and!115569 b_and!115559)
