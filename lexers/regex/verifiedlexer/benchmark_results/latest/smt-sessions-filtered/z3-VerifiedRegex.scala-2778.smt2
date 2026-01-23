; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!152874 () Bool)

(assert start!152874)

(declare-fun b!1615972 () Bool)

(declare-fun b_free!43543 () Bool)

(declare-fun b_next!44247 () Bool)

(assert (=> b!1615972 (= b_free!43543 (not b_next!44247))))

(declare-fun tp!471120 () Bool)

(declare-fun b_and!114597 () Bool)

(assert (=> b!1615972 (= tp!471120 b_and!114597)))

(declare-fun b_free!43545 () Bool)

(declare-fun b_next!44249 () Bool)

(assert (=> b!1615972 (= b_free!43545 (not b_next!44249))))

(declare-fun tp!471121 () Bool)

(declare-fun b_and!114599 () Bool)

(assert (=> b!1615972 (= tp!471121 b_and!114599)))

(declare-fun b!1615978 () Bool)

(declare-fun b_free!43547 () Bool)

(declare-fun b_next!44251 () Bool)

(assert (=> b!1615978 (= b_free!43547 (not b_next!44251))))

(declare-fun tp!471119 () Bool)

(declare-fun b_and!114601 () Bool)

(assert (=> b!1615978 (= tp!471119 b_and!114601)))

(declare-fun b_free!43549 () Bool)

(declare-fun b_next!44253 () Bool)

(assert (=> b!1615978 (= b_free!43549 (not b_next!44253))))

(declare-fun tp!471123 () Bool)

(declare-fun b_and!114603 () Bool)

(assert (=> b!1615978 (= tp!471123 b_and!114603)))

(declare-fun b!1615957 () Bool)

(declare-fun res!721294 () Bool)

(declare-fun e!1036558 () Bool)

(assert (=> b!1615957 (=> (not res!721294) (not e!1036558))))

(declare-datatypes ((LexerInterface!2746 0))(
  ( (LexerInterfaceExt!2743 (__x!11716 Int)) (Lexer!2744) )
))
(declare-fun thiss!17113 () LexerInterface!2746)

(declare-datatypes ((List!17763 0))(
  ( (Nil!17693) (Cons!17693 (h!23094 (_ BitVec 16)) (t!148278 List!17763)) )
))
(declare-datatypes ((TokenValue!3207 0))(
  ( (FloatLiteralValue!6414 (text!22894 List!17763)) (TokenValueExt!3206 (__x!11717 Int)) (Broken!16035 (value!98481 List!17763)) (Object!3276) (End!3207) (Def!3207) (Underscore!3207) (Match!3207) (Else!3207) (Error!3207) (Case!3207) (If!3207) (Extends!3207) (Abstract!3207) (Class!3207) (Val!3207) (DelimiterValue!6414 (del!3267 List!17763)) (KeywordValue!3213 (value!98482 List!17763)) (CommentValue!6414 (value!98483 List!17763)) (WhitespaceValue!6414 (value!98484 List!17763)) (IndentationValue!3207 (value!98485 List!17763)) (String!20366) (Int32!3207) (Broken!16036 (value!98486 List!17763)) (Boolean!3208) (Unit!28458) (OperatorValue!3210 (op!3267 List!17763)) (IdentifierValue!6414 (value!98487 List!17763)) (IdentifierValue!6415 (value!98488 List!17763)) (WhitespaceValue!6415 (value!98489 List!17763)) (True!6414) (False!6414) (Broken!16037 (value!98490 List!17763)) (Broken!16038 (value!98491 List!17763)) (True!6415) (RightBrace!3207) (RightBracket!3207) (Colon!3207) (Null!3207) (Comma!3207) (LeftBracket!3207) (False!6415) (LeftBrace!3207) (ImaginaryLiteralValue!3207 (text!22895 List!17763)) (StringLiteralValue!9621 (value!98492 List!17763)) (EOFValue!3207 (value!98493 List!17763)) (IdentValue!3207 (value!98494 List!17763)) (DelimiterValue!6415 (value!98495 List!17763)) (DedentValue!3207 (value!98496 List!17763)) (NewLineValue!3207 (value!98497 List!17763)) (IntegerValue!9621 (value!98498 (_ BitVec 32)) (text!22896 List!17763)) (IntegerValue!9622 (value!98499 Int) (text!22897 List!17763)) (Times!3207) (Or!3207) (Equal!3207) (Minus!3207) (Broken!16039 (value!98500 List!17763)) (And!3207) (Div!3207) (LessEqual!3207) (Mod!3207) (Concat!7652) (Not!3207) (Plus!3207) (SpaceValue!3207 (value!98501 List!17763)) (IntegerValue!9623 (value!98502 Int) (text!22898 List!17763)) (StringLiteralValue!9622 (text!22899 List!17763)) (FloatLiteralValue!6415 (text!22900 List!17763)) (BytesLiteralValue!3207 (value!98503 List!17763)) (CommentValue!6415 (value!98504 List!17763)) (StringLiteralValue!9623 (value!98505 List!17763)) (ErrorTokenValue!3207 (msg!3268 List!17763)) )
))
(declare-datatypes ((C!9064 0))(
  ( (C!9065 (val!5128 Int)) )
))
(declare-datatypes ((List!17764 0))(
  ( (Nil!17694) (Cons!17694 (h!23095 C!9064) (t!148279 List!17764)) )
))
(declare-datatypes ((IArray!11769 0))(
  ( (IArray!11770 (innerList!5942 List!17764)) )
))
(declare-datatypes ((Conc!5882 0))(
  ( (Node!5882 (left!14246 Conc!5882) (right!14576 Conc!5882) (csize!11994 Int) (cheight!6093 Int)) (Leaf!8661 (xs!8710 IArray!11769) (csize!11995 Int)) (Empty!5882) )
))
(declare-datatypes ((BalanceConc!11708 0))(
  ( (BalanceConc!11709 (c!263113 Conc!5882)) )
))
(declare-datatypes ((Regex!4445 0))(
  ( (ElementMatch!4445 (c!263114 C!9064)) (Concat!7653 (regOne!9402 Regex!4445) (regTwo!9402 Regex!4445)) (EmptyExpr!4445) (Star!4445 (reg!4774 Regex!4445)) (EmptyLang!4445) (Union!4445 (regOne!9403 Regex!4445) (regTwo!9403 Regex!4445)) )
))
(declare-datatypes ((String!20367 0))(
  ( (String!20368 (value!98506 String)) )
))
(declare-datatypes ((TokenValueInjection!6074 0))(
  ( (TokenValueInjection!6075 (toValue!4540 Int) (toChars!4399 Int)) )
))
(declare-datatypes ((Rule!6034 0))(
  ( (Rule!6035 (regex!3117 Regex!4445) (tag!3393 String!20367) (isSeparator!3117 Bool) (transformation!3117 TokenValueInjection!6074)) )
))
(declare-datatypes ((Token!5800 0))(
  ( (Token!5801 (value!98507 TokenValue!3207) (rule!4937 Rule!6034) (size!14192 Int) (originalCharacters!3931 List!17764)) )
))
(declare-datatypes ((List!17765 0))(
  ( (Nil!17695) (Cons!17695 (h!23096 Token!5800) (t!148280 List!17765)) )
))
(declare-fun tokens!457 () List!17765)

(declare-datatypes ((List!17766 0))(
  ( (Nil!17696) (Cons!17696 (h!23097 Rule!6034) (t!148281 List!17766)) )
))
(declare-fun rules!1846 () List!17766)

(declare-fun tokensListTwoByTwoPredicateSeparableList!439 (LexerInterface!2746 List!17765 List!17766) Bool)

(assert (=> b!1615957 (= res!721294 (tokensListTwoByTwoPredicateSeparableList!439 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1615958 () Bool)

(declare-fun res!721279 () Bool)

(declare-fun e!1036561 () Bool)

(assert (=> b!1615958 (=> res!721279 e!1036561)))

(declare-fun rulesProduceIndividualToken!1398 (LexerInterface!2746 List!17766 Token!5800) Bool)

(assert (=> b!1615958 (= res!721279 (not (rulesProduceIndividualToken!1398 thiss!17113 rules!1846 (h!23096 tokens!457))))))

(declare-fun tp!471118 () Bool)

(declare-fun e!1036559 () Bool)

(declare-fun b!1615959 () Bool)

(declare-fun e!1036555 () Bool)

(declare-fun inv!23089 (String!20367) Bool)

(declare-fun inv!23092 (TokenValueInjection!6074) Bool)

(assert (=> b!1615959 (= e!1036555 (and tp!471118 (inv!23089 (tag!3393 (h!23097 rules!1846))) (inv!23092 (transformation!3117 (h!23097 rules!1846))) e!1036559))))

(declare-fun b!1615960 () Bool)

(declare-fun e!1036553 () Bool)

(declare-datatypes ((tuple2!17222 0))(
  ( (tuple2!17223 (_1!10013 Token!5800) (_2!10013 List!17764)) )
))
(declare-datatypes ((Option!3243 0))(
  ( (None!3242) (Some!3242 (v!24231 tuple2!17222)) )
))
(declare-fun lt!579118 () Option!3243)

(declare-fun get!5076 (Option!3243) tuple2!17222)

(assert (=> b!1615960 (= e!1036553 (= (_1!10013 (get!5076 lt!579118)) (h!23096 tokens!457)))))

(declare-fun b!1615961 () Bool)

(declare-fun e!1036544 () Bool)

(declare-fun e!1036549 () Bool)

(assert (=> b!1615961 (= e!1036544 e!1036549)))

(declare-fun res!721286 () Bool)

(assert (=> b!1615961 (=> res!721286 e!1036549)))

(declare-fun lt!579123 () List!17764)

(declare-fun lt!579120 () List!17764)

(declare-fun lt!579106 () Regex!4445)

(declare-fun prefixMatch!380 (Regex!4445 List!17764) Bool)

(declare-fun ++!4675 (List!17764 List!17764) List!17764)

(assert (=> b!1615961 (= res!721286 (prefixMatch!380 lt!579106 (++!4675 lt!579123 lt!579120)))))

(declare-fun lt!579108 () BalanceConc!11708)

(declare-fun list!6919 (BalanceConc!11708) List!17764)

(assert (=> b!1615961 (= lt!579120 (list!6919 lt!579108))))

(declare-fun b!1615962 () Bool)

(declare-fun e!1036548 () Bool)

(assert (=> b!1615962 (= e!1036548 e!1036544)))

(declare-fun res!721298 () Bool)

(assert (=> b!1615962 (=> res!721298 e!1036544)))

(declare-fun lt!579126 () BalanceConc!11708)

(declare-fun prefixMatchZipperSequence!491 (Regex!4445 BalanceConc!11708) Bool)

(declare-fun ++!4676 (BalanceConc!11708 BalanceConc!11708) BalanceConc!11708)

(assert (=> b!1615962 (= res!721298 (prefixMatchZipperSequence!491 lt!579106 (++!4676 lt!579126 lt!579108)))))

(declare-fun singletonSeq!1512 (C!9064) BalanceConc!11708)

(declare-fun apply!4456 (BalanceConc!11708 Int) C!9064)

(declare-fun charsOf!1766 (Token!5800) BalanceConc!11708)

(assert (=> b!1615962 (= lt!579108 (singletonSeq!1512 (apply!4456 (charsOf!1766 (h!23096 (t!148280 tokens!457))) 0)))))

(declare-fun rulesRegex!507 (LexerInterface!2746 List!17766) Regex!4445)

(assert (=> b!1615962 (= lt!579106 (rulesRegex!507 thiss!17113 rules!1846))))

(declare-fun b!1615963 () Bool)

(declare-fun res!721288 () Bool)

(assert (=> b!1615963 (=> (not res!721288) (not e!1036558))))

(get-info :version)

(assert (=> b!1615963 (= res!721288 (and (not ((_ is Nil!17695) tokens!457)) (not ((_ is Nil!17695) (t!148280 tokens!457)))))))

(declare-fun b!1615964 () Bool)

(declare-fun res!721293 () Bool)

(assert (=> b!1615964 (=> (not res!721293) (not e!1036558))))

(declare-fun rulesInvariant!2415 (LexerInterface!2746 List!17766) Bool)

(assert (=> b!1615964 (= res!721293 (rulesInvariant!2415 thiss!17113 rules!1846))))

(declare-fun b!1615965 () Bool)

(declare-fun e!1036542 () Bool)

(declare-fun e!1036562 () Bool)

(assert (=> b!1615965 (= e!1036542 (not e!1036562))))

(declare-fun res!721283 () Bool)

(assert (=> b!1615965 (=> res!721283 e!1036562)))

(declare-fun lt!579115 () List!17765)

(assert (=> b!1615965 (= res!721283 (not (= lt!579115 (t!148280 tokens!457))))))

(declare-datatypes ((IArray!11771 0))(
  ( (IArray!11772 (innerList!5943 List!17765)) )
))
(declare-datatypes ((Conc!5883 0))(
  ( (Node!5883 (left!14247 Conc!5883) (right!14577 Conc!5883) (csize!11996 Int) (cheight!6094 Int)) (Leaf!8662 (xs!8711 IArray!11771) (csize!11997 Int)) (Empty!5883) )
))
(declare-datatypes ((BalanceConc!11710 0))(
  ( (BalanceConc!11711 (c!263115 Conc!5883)) )
))
(declare-datatypes ((tuple2!17224 0))(
  ( (tuple2!17225 (_1!10014 BalanceConc!11710) (_2!10014 BalanceConc!11708)) )
))
(declare-fun lt!579125 () tuple2!17224)

(declare-fun list!6920 (BalanceConc!11710) List!17765)

(assert (=> b!1615965 (= lt!579115 (list!6920 (_1!10014 lt!579125)))))

(declare-datatypes ((Unit!28459 0))(
  ( (Unit!28460) )
))
(declare-fun lt!579110 () Unit!28459)

(declare-fun theoremInvertabilityWhenTokenListSeparable!191 (LexerInterface!2746 List!17766 List!17765) Unit!28459)

(assert (=> b!1615965 (= lt!579110 (theoremInvertabilityWhenTokenListSeparable!191 thiss!17113 rules!1846 (t!148280 tokens!457)))))

(declare-fun lt!579107 () List!17764)

(declare-fun isPrefix!1377 (List!17764 List!17764) Bool)

(assert (=> b!1615965 (isPrefix!1377 lt!579123 lt!579107)))

(declare-fun lt!579127 () Unit!28459)

(declare-fun lt!579119 () List!17764)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!902 (List!17764 List!17764) Unit!28459)

(assert (=> b!1615965 (= lt!579127 (lemmaConcatTwoListThenFirstIsPrefix!902 lt!579123 lt!579119))))

(declare-fun b!1615967 () Bool)

(declare-fun res!721282 () Bool)

(declare-fun e!1036546 () Bool)

(assert (=> b!1615967 (=> res!721282 e!1036546)))

(declare-fun separableTokensPredicate!688 (LexerInterface!2746 Token!5800 Token!5800 List!17766) Bool)

(assert (=> b!1615967 (= res!721282 (not (separableTokensPredicate!688 thiss!17113 (h!23096 tokens!457) (h!23096 (t!148280 tokens!457)) rules!1846)))))

(declare-fun b!1615968 () Bool)

(declare-fun res!721292 () Bool)

(declare-fun e!1036554 () Bool)

(assert (=> b!1615968 (=> (not res!721292) (not e!1036554))))

(declare-fun head!3358 (List!17764) C!9064)

(assert (=> b!1615968 (= res!721292 (= lt!579120 (Cons!17694 (head!3358 (originalCharacters!3931 (h!23096 (t!148280 tokens!457)))) Nil!17694)))))

(declare-fun b!1615969 () Bool)

(declare-fun res!721284 () Bool)

(assert (=> b!1615969 (=> (not res!721284) (not e!1036554))))

(assert (=> b!1615969 (= res!721284 (= lt!579120 (Cons!17694 (head!3358 lt!579119) Nil!17694)))))

(declare-fun b!1615970 () Bool)

(assert (=> b!1615970 (= e!1036558 e!1036542)))

(declare-fun res!721291 () Bool)

(assert (=> b!1615970 (=> (not res!721291) (not e!1036542))))

(declare-fun lt!579111 () List!17764)

(assert (=> b!1615970 (= res!721291 (= lt!579111 lt!579107))))

(assert (=> b!1615970 (= lt!579107 (++!4675 lt!579123 lt!579119))))

(declare-fun lt!579103 () BalanceConc!11708)

(assert (=> b!1615970 (= lt!579111 (list!6919 lt!579103))))

(declare-fun lt!579121 () BalanceConc!11708)

(assert (=> b!1615970 (= lt!579119 (list!6919 lt!579121))))

(assert (=> b!1615970 (= lt!579123 (list!6919 lt!579126))))

(assert (=> b!1615970 (= lt!579126 (charsOf!1766 (h!23096 tokens!457)))))

(declare-fun lex!1230 (LexerInterface!2746 List!17766 BalanceConc!11708) tuple2!17224)

(assert (=> b!1615970 (= lt!579125 (lex!1230 thiss!17113 rules!1846 lt!579121))))

(declare-fun lt!579117 () BalanceConc!11710)

(declare-fun print!1277 (LexerInterface!2746 BalanceConc!11710) BalanceConc!11708)

(assert (=> b!1615970 (= lt!579121 (print!1277 thiss!17113 lt!579117))))

(declare-fun seqFromList!1983 (List!17765) BalanceConc!11710)

(assert (=> b!1615970 (= lt!579117 (seqFromList!1983 (t!148280 tokens!457)))))

(assert (=> b!1615970 (= lt!579103 (print!1277 thiss!17113 (seqFromList!1983 tokens!457)))))

(declare-fun e!1036552 () Bool)

(declare-fun e!1036543 () Bool)

(declare-fun b!1615971 () Bool)

(declare-fun tp!471116 () Bool)

(assert (=> b!1615971 (= e!1036552 (and tp!471116 (inv!23089 (tag!3393 (rule!4937 (h!23096 tokens!457)))) (inv!23092 (transformation!3117 (rule!4937 (h!23096 tokens!457)))) e!1036543))))

(assert (=> b!1615972 (= e!1036543 (and tp!471120 tp!471121))))

(declare-fun b!1615973 () Bool)

(assert (=> b!1615973 (= e!1036546 e!1036561)))

(declare-fun res!721296 () Bool)

(assert (=> b!1615973 (=> res!721296 e!1036561)))

(declare-fun lt!579122 () List!17764)

(declare-fun lt!579128 () List!17764)

(assert (=> b!1615973 (= res!721296 (or (not (= lt!579122 lt!579128)) (not (= lt!579128 lt!579123)) (not (= lt!579122 lt!579123))))))

(declare-fun printList!861 (LexerInterface!2746 List!17765) List!17764)

(assert (=> b!1615973 (= lt!579128 (printList!861 thiss!17113 (Cons!17695 (h!23096 tokens!457) Nil!17695)))))

(declare-fun lt!579105 () BalanceConc!11708)

(assert (=> b!1615973 (= lt!579122 (list!6919 lt!579105))))

(declare-fun lt!579104 () BalanceConc!11710)

(declare-fun printTailRec!799 (LexerInterface!2746 BalanceConc!11710 Int BalanceConc!11708) BalanceConc!11708)

(assert (=> b!1615973 (= lt!579105 (printTailRec!799 thiss!17113 lt!579104 0 (BalanceConc!11709 Empty!5882)))))

(assert (=> b!1615973 (= lt!579105 (print!1277 thiss!17113 lt!579104))))

(declare-fun singletonSeq!1513 (Token!5800) BalanceConc!11710)

(assert (=> b!1615973 (= lt!579104 (singletonSeq!1513 (h!23096 tokens!457)))))

(declare-fun lt!579113 () Option!3243)

(declare-fun maxPrefix!1310 (LexerInterface!2746 List!17766 List!17764) Option!3243)

(assert (=> b!1615973 (= lt!579113 (maxPrefix!1310 thiss!17113 rules!1846 lt!579111))))

(declare-fun b!1615974 () Bool)

(declare-fun tp!471122 () Bool)

(declare-fun e!1036556 () Bool)

(declare-fun inv!21 (TokenValue!3207) Bool)

(assert (=> b!1615974 (= e!1036556 (and (inv!21 (value!98507 (h!23096 tokens!457))) e!1036552 tp!471122))))

(declare-fun b!1615975 () Bool)

(declare-fun head!3359 (BalanceConc!11708) C!9064)

(assert (=> b!1615975 (= e!1036554 (= lt!579120 (Cons!17694 (head!3359 lt!579121) Nil!17694)))))

(declare-fun b!1615976 () Bool)

(assert (=> b!1615976 (= e!1036562 e!1036546)))

(declare-fun res!721280 () Bool)

(assert (=> b!1615976 (=> res!721280 e!1036546)))

(declare-fun lt!579109 () List!17765)

(declare-fun lt!579112 () List!17765)

(assert (=> b!1615976 (= res!721280 (or (not (= lt!579115 lt!579112)) (not (= lt!579112 lt!579109))))))

(assert (=> b!1615976 (= lt!579112 (list!6920 lt!579117))))

(assert (=> b!1615976 (= lt!579115 lt!579109)))

(declare-fun prepend!629 (BalanceConc!11710 Token!5800) BalanceConc!11710)

(assert (=> b!1615976 (= lt!579109 (list!6920 (prepend!629 (seqFromList!1983 (t!148280 (t!148280 tokens!457))) (h!23096 (t!148280 tokens!457)))))))

(declare-fun lt!579114 () Unit!28459)

(declare-fun seqFromListBHdTlConstructive!194 (Token!5800 List!17765 BalanceConc!11710) Unit!28459)

(assert (=> b!1615976 (= lt!579114 (seqFromListBHdTlConstructive!194 (h!23096 (t!148280 tokens!457)) (t!148280 (t!148280 tokens!457)) (_1!10014 lt!579125)))))

(declare-fun b!1615977 () Bool)

(declare-fun res!721297 () Bool)

(assert (=> b!1615977 (=> res!721297 e!1036561)))

(declare-fun isEmpty!10708 (BalanceConc!11710) Bool)

(declare-fun seqFromList!1984 (List!17764) BalanceConc!11708)

(assert (=> b!1615977 (= res!721297 (isEmpty!10708 (_1!10014 (lex!1230 thiss!17113 rules!1846 (seqFromList!1984 lt!579123)))))))

(assert (=> b!1615978 (= e!1036559 (and tp!471119 tp!471123))))

(declare-fun b!1615979 () Bool)

(declare-fun res!721285 () Bool)

(assert (=> b!1615979 (=> (not res!721285) (not e!1036558))))

(declare-fun isEmpty!10709 (List!17766) Bool)

(assert (=> b!1615979 (= res!721285 (not (isEmpty!10709 rules!1846)))))

(declare-fun b!1615966 () Bool)

(assert (=> b!1615966 (= e!1036561 e!1036548)))

(declare-fun res!721290 () Bool)

(assert (=> b!1615966 (=> res!721290 e!1036548)))

(declare-fun isDefined!2610 (Option!3243) Bool)

(assert (=> b!1615966 (= res!721290 (not (isDefined!2610 lt!579113)))))

(declare-fun lt!579124 () Unit!28459)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!320 (LexerInterface!2746 List!17766 List!17764 List!17764) Unit!28459)

(assert (=> b!1615966 (= lt!579124 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!320 thiss!17113 rules!1846 lt!579123 lt!579119))))

(declare-fun res!721289 () Bool)

(assert (=> start!152874 (=> (not res!721289) (not e!1036558))))

(assert (=> start!152874 (= res!721289 ((_ is Lexer!2744) thiss!17113))))

(assert (=> start!152874 e!1036558))

(assert (=> start!152874 true))

(declare-fun e!1036557 () Bool)

(assert (=> start!152874 e!1036557))

(declare-fun e!1036547 () Bool)

(assert (=> start!152874 e!1036547))

(declare-fun b!1615980 () Bool)

(declare-fun tp!471124 () Bool)

(declare-fun inv!23093 (Token!5800) Bool)

(assert (=> b!1615980 (= e!1036547 (and (inv!23093 (h!23096 tokens!457)) e!1036556 tp!471124))))

(declare-fun b!1615981 () Bool)

(declare-fun e!1036551 () Bool)

(assert (=> b!1615981 (= e!1036549 e!1036551)))

(declare-fun res!721295 () Bool)

(assert (=> b!1615981 (=> res!721295 e!1036551)))

(declare-datatypes ((tuple2!17226 0))(
  ( (tuple2!17227 (_1!10015 Token!5800) (_2!10015 BalanceConc!11708)) )
))
(declare-datatypes ((Option!3244 0))(
  ( (None!3243) (Some!3243 (v!24232 tuple2!17226)) )
))
(declare-fun isDefined!2611 (Option!3244) Bool)

(declare-fun maxPrefixZipperSequence!641 (LexerInterface!2746 List!17766 BalanceConc!11708) Option!3244)

(assert (=> b!1615981 (= res!721295 (not (isDefined!2611 (maxPrefixZipperSequence!641 thiss!17113 rules!1846 (seqFromList!1984 (originalCharacters!3931 (h!23096 tokens!457)))))))))

(assert (=> b!1615981 e!1036554))

(declare-fun res!721287 () Bool)

(assert (=> b!1615981 (=> (not res!721287) (not e!1036554))))

(assert (=> b!1615981 (= res!721287 (= lt!579123 (originalCharacters!3931 (h!23096 tokens!457))))))

(declare-fun b!1615982 () Bool)

(declare-fun tp!471117 () Bool)

(assert (=> b!1615982 (= e!1036557 (and e!1036555 tp!471117))))

(declare-fun b!1615983 () Bool)

(assert (=> b!1615983 (= e!1036551 true)))

(declare-fun lt!579116 () Bool)

(declare-fun rulesValidInductive!956 (LexerInterface!2746 List!17766) Bool)

(assert (=> b!1615983 (= lt!579116 (rulesValidInductive!956 thiss!17113 rules!1846))))

(assert (=> b!1615983 e!1036553))

(declare-fun res!721278 () Bool)

(assert (=> b!1615983 (=> (not res!721278) (not e!1036553))))

(assert (=> b!1615983 (= res!721278 (isDefined!2610 lt!579118))))

(assert (=> b!1615983 (= lt!579118 (maxPrefix!1310 thiss!17113 rules!1846 lt!579123))))

(assert (=> b!1615983 (isDefined!2610 (maxPrefix!1310 thiss!17113 rules!1846 (originalCharacters!3931 (h!23096 tokens!457))))))

(declare-fun b!1615984 () Bool)

(declare-fun res!721281 () Bool)

(assert (=> b!1615984 (=> (not res!721281) (not e!1036558))))

(declare-fun rulesProduceEachTokenIndividuallyList!948 (LexerInterface!2746 List!17766 List!17765) Bool)

(assert (=> b!1615984 (= res!721281 (rulesProduceEachTokenIndividuallyList!948 thiss!17113 rules!1846 tokens!457))))

(assert (= (and start!152874 res!721289) b!1615979))

(assert (= (and b!1615979 res!721285) b!1615964))

(assert (= (and b!1615964 res!721293) b!1615984))

(assert (= (and b!1615984 res!721281) b!1615957))

(assert (= (and b!1615957 res!721294) b!1615963))

(assert (= (and b!1615963 res!721288) b!1615970))

(assert (= (and b!1615970 res!721291) b!1615965))

(assert (= (and b!1615965 (not res!721283)) b!1615976))

(assert (= (and b!1615976 (not res!721280)) b!1615967))

(assert (= (and b!1615967 (not res!721282)) b!1615973))

(assert (= (and b!1615973 (not res!721296)) b!1615958))

(assert (= (and b!1615958 (not res!721279)) b!1615977))

(assert (= (and b!1615977 (not res!721297)) b!1615966))

(assert (= (and b!1615966 (not res!721290)) b!1615962))

(assert (= (and b!1615962 (not res!721298)) b!1615961))

(assert (= (and b!1615961 (not res!721286)) b!1615981))

(assert (= (and b!1615981 res!721287) b!1615968))

(assert (= (and b!1615968 res!721292) b!1615969))

(assert (= (and b!1615969 res!721284) b!1615975))

(assert (= (and b!1615981 (not res!721295)) b!1615983))

(assert (= (and b!1615983 res!721278) b!1615960))

(assert (= b!1615959 b!1615978))

(assert (= b!1615982 b!1615959))

(assert (= (and start!152874 ((_ is Cons!17696) rules!1846)) b!1615982))

(assert (= b!1615971 b!1615972))

(assert (= b!1615974 b!1615971))

(assert (= b!1615980 b!1615974))

(assert (= (and start!152874 ((_ is Cons!17695) tokens!457)) b!1615980))

(declare-fun m!1936183 () Bool)

(assert (=> b!1615964 m!1936183))

(declare-fun m!1936185 () Bool)

(assert (=> b!1615966 m!1936185))

(declare-fun m!1936187 () Bool)

(assert (=> b!1615966 m!1936187))

(declare-fun m!1936189 () Bool)

(assert (=> b!1615961 m!1936189))

(assert (=> b!1615961 m!1936189))

(declare-fun m!1936191 () Bool)

(assert (=> b!1615961 m!1936191))

(declare-fun m!1936193 () Bool)

(assert (=> b!1615961 m!1936193))

(declare-fun m!1936195 () Bool)

(assert (=> b!1615965 m!1936195))

(declare-fun m!1936197 () Bool)

(assert (=> b!1615965 m!1936197))

(declare-fun m!1936199 () Bool)

(assert (=> b!1615965 m!1936199))

(declare-fun m!1936201 () Bool)

(assert (=> b!1615965 m!1936201))

(declare-fun m!1936203 () Bool)

(assert (=> b!1615960 m!1936203))

(declare-fun m!1936205 () Bool)

(assert (=> b!1615969 m!1936205))

(declare-fun m!1936207 () Bool)

(assert (=> b!1615971 m!1936207))

(declare-fun m!1936209 () Bool)

(assert (=> b!1615971 m!1936209))

(declare-fun m!1936211 () Bool)

(assert (=> b!1615979 m!1936211))

(declare-fun m!1936213 () Bool)

(assert (=> b!1615977 m!1936213))

(assert (=> b!1615977 m!1936213))

(declare-fun m!1936215 () Bool)

(assert (=> b!1615977 m!1936215))

(declare-fun m!1936217 () Bool)

(assert (=> b!1615977 m!1936217))

(declare-fun m!1936219 () Bool)

(assert (=> b!1615967 m!1936219))

(declare-fun m!1936221 () Bool)

(assert (=> b!1615958 m!1936221))

(declare-fun m!1936223 () Bool)

(assert (=> b!1615970 m!1936223))

(declare-fun m!1936225 () Bool)

(assert (=> b!1615970 m!1936225))

(declare-fun m!1936227 () Bool)

(assert (=> b!1615970 m!1936227))

(declare-fun m!1936229 () Bool)

(assert (=> b!1615970 m!1936229))

(declare-fun m!1936231 () Bool)

(assert (=> b!1615970 m!1936231))

(declare-fun m!1936233 () Bool)

(assert (=> b!1615970 m!1936233))

(declare-fun m!1936235 () Bool)

(assert (=> b!1615970 m!1936235))

(declare-fun m!1936237 () Bool)

(assert (=> b!1615970 m!1936237))

(assert (=> b!1615970 m!1936233))

(declare-fun m!1936239 () Bool)

(assert (=> b!1615970 m!1936239))

(declare-fun m!1936241 () Bool)

(assert (=> b!1615970 m!1936241))

(declare-fun m!1936243 () Bool)

(assert (=> b!1615962 m!1936243))

(declare-fun m!1936245 () Bool)

(assert (=> b!1615962 m!1936245))

(declare-fun m!1936247 () Bool)

(assert (=> b!1615962 m!1936247))

(declare-fun m!1936249 () Bool)

(assert (=> b!1615962 m!1936249))

(declare-fun m!1936251 () Bool)

(assert (=> b!1615962 m!1936251))

(assert (=> b!1615962 m!1936247))

(declare-fun m!1936253 () Bool)

(assert (=> b!1615962 m!1936253))

(assert (=> b!1615962 m!1936243))

(assert (=> b!1615962 m!1936253))

(declare-fun m!1936255 () Bool)

(assert (=> b!1615968 m!1936255))

(declare-fun m!1936257 () Bool)

(assert (=> b!1615983 m!1936257))

(declare-fun m!1936259 () Bool)

(assert (=> b!1615983 m!1936259))

(declare-fun m!1936261 () Bool)

(assert (=> b!1615983 m!1936261))

(declare-fun m!1936263 () Bool)

(assert (=> b!1615983 m!1936263))

(declare-fun m!1936265 () Bool)

(assert (=> b!1615983 m!1936265))

(assert (=> b!1615983 m!1936259))

(declare-fun m!1936267 () Bool)

(assert (=> b!1615984 m!1936267))

(declare-fun m!1936269 () Bool)

(assert (=> b!1615959 m!1936269))

(declare-fun m!1936271 () Bool)

(assert (=> b!1615959 m!1936271))

(declare-fun m!1936273 () Bool)

(assert (=> b!1615975 m!1936273))

(declare-fun m!1936275 () Bool)

(assert (=> b!1615973 m!1936275))

(declare-fun m!1936277 () Bool)

(assert (=> b!1615973 m!1936277))

(declare-fun m!1936279 () Bool)

(assert (=> b!1615973 m!1936279))

(declare-fun m!1936281 () Bool)

(assert (=> b!1615973 m!1936281))

(declare-fun m!1936283 () Bool)

(assert (=> b!1615973 m!1936283))

(declare-fun m!1936285 () Bool)

(assert (=> b!1615973 m!1936285))

(declare-fun m!1936287 () Bool)

(assert (=> b!1615974 m!1936287))

(declare-fun m!1936289 () Bool)

(assert (=> b!1615980 m!1936289))

(declare-fun m!1936291 () Bool)

(assert (=> b!1615976 m!1936291))

(declare-fun m!1936293 () Bool)

(assert (=> b!1615976 m!1936293))

(declare-fun m!1936295 () Bool)

(assert (=> b!1615976 m!1936295))

(declare-fun m!1936297 () Bool)

(assert (=> b!1615976 m!1936297))

(declare-fun m!1936299 () Bool)

(assert (=> b!1615976 m!1936299))

(assert (=> b!1615976 m!1936291))

(assert (=> b!1615976 m!1936297))

(declare-fun m!1936301 () Bool)

(assert (=> b!1615981 m!1936301))

(assert (=> b!1615981 m!1936301))

(declare-fun m!1936303 () Bool)

(assert (=> b!1615981 m!1936303))

(assert (=> b!1615981 m!1936303))

(declare-fun m!1936305 () Bool)

(assert (=> b!1615981 m!1936305))

(declare-fun m!1936307 () Bool)

(assert (=> b!1615957 m!1936307))

(check-sat (not b!1615974) (not b!1615976) (not b!1615959) b_and!114603 (not b_next!44253) (not b!1615970) b_and!114599 (not b!1615966) (not b!1615973) (not b!1615960) (not b!1615980) (not b_next!44251) (not b!1615981) (not b!1615958) (not b!1615967) b_and!114601 (not b!1615965) (not b_next!44249) (not b_next!44247) (not b!1615975) (not b!1615979) (not b!1615983) (not b!1615982) b_and!114597 (not b!1615977) (not b!1615984) (not b!1615964) (not b!1615961) (not b!1615971) (not b!1615962) (not b!1615968) (not b!1615969) (not b!1615957))
(check-sat b_and!114601 b_and!114597 b_and!114603 (not b_next!44253) b_and!114599 (not b_next!44251) (not b_next!44249) (not b_next!44247))
