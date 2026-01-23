; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!156326 () Bool)

(assert start!156326)

(declare-fun b!1637298 () Bool)

(declare-fun b_free!44279 () Bool)

(declare-fun b_next!44983 () Bool)

(assert (=> b!1637298 (= b_free!44279 (not b_next!44983))))

(declare-fun tp!474670 () Bool)

(declare-fun b_and!116045 () Bool)

(assert (=> b!1637298 (= tp!474670 b_and!116045)))

(declare-fun b_free!44281 () Bool)

(declare-fun b_next!44985 () Bool)

(assert (=> b!1637298 (= b_free!44281 (not b_next!44985))))

(declare-fun tp!474665 () Bool)

(declare-fun b_and!116047 () Bool)

(assert (=> b!1637298 (= tp!474665 b_and!116047)))

(declare-fun b!1637269 () Bool)

(declare-fun b_free!44283 () Bool)

(declare-fun b_next!44987 () Bool)

(assert (=> b!1637269 (= b_free!44283 (not b_next!44987))))

(declare-fun tp!474663 () Bool)

(declare-fun b_and!116049 () Bool)

(assert (=> b!1637269 (= tp!474663 b_and!116049)))

(declare-fun b_free!44285 () Bool)

(declare-fun b_next!44989 () Bool)

(assert (=> b!1637269 (= b_free!44285 (not b_next!44989))))

(declare-fun tp!474668 () Bool)

(declare-fun b_and!116051 () Bool)

(assert (=> b!1637269 (= tp!474668 b_and!116051)))

(declare-fun e!1050013 () Bool)

(assert (=> b!1637269 (= e!1050013 (and tp!474663 tp!474668))))

(declare-fun b!1637270 () Bool)

(declare-fun e!1050008 () Bool)

(declare-fun e!1050007 () Bool)

(assert (=> b!1637270 (= e!1050008 e!1050007)))

(declare-fun res!733333 () Bool)

(assert (=> b!1637270 (=> res!733333 e!1050007)))

(declare-datatypes ((C!9180 0))(
  ( (C!9181 (val!5186 Int)) )
))
(declare-datatypes ((Regex!4503 0))(
  ( (ElementMatch!4503 (c!266363 C!9180)) (Concat!7768 (regOne!9518 Regex!4503) (regTwo!9518 Regex!4503)) (EmptyExpr!4503) (Star!4503 (reg!4832 Regex!4503)) (EmptyLang!4503) (Union!4503 (regOne!9519 Regex!4503) (regTwo!9519 Regex!4503)) )
))
(declare-fun lt!599404 () Regex!4503)

(declare-datatypes ((List!18085 0))(
  ( (Nil!18015) (Cons!18015 (h!23416 C!9180) (t!149794 List!18085)) )
))
(declare-fun lt!599401 () List!18085)

(declare-datatypes ((List!18086 0))(
  ( (Nil!18016) (Cons!18016 (h!23417 (_ BitVec 16)) (t!149795 List!18086)) )
))
(declare-datatypes ((TokenValue!3265 0))(
  ( (FloatLiteralValue!6530 (text!23300 List!18086)) (TokenValueExt!3264 (__x!11832 Int)) (Broken!16325 (value!100134 List!18086)) (Object!3334) (End!3265) (Def!3265) (Underscore!3265) (Match!3265) (Else!3265) (Error!3265) (Case!3265) (If!3265) (Extends!3265) (Abstract!3265) (Class!3265) (Val!3265) (DelimiterValue!6530 (del!3325 List!18086)) (KeywordValue!3271 (value!100135 List!18086)) (CommentValue!6530 (value!100136 List!18086)) (WhitespaceValue!6530 (value!100137 List!18086)) (IndentationValue!3265 (value!100138 List!18086)) (String!20656) (Int32!3265) (Broken!16326 (value!100139 List!18086)) (Boolean!3266) (Unit!29505) (OperatorValue!3268 (op!3325 List!18086)) (IdentifierValue!6530 (value!100140 List!18086)) (IdentifierValue!6531 (value!100141 List!18086)) (WhitespaceValue!6531 (value!100142 List!18086)) (True!6530) (False!6530) (Broken!16327 (value!100143 List!18086)) (Broken!16328 (value!100144 List!18086)) (True!6531) (RightBrace!3265) (RightBracket!3265) (Colon!3265) (Null!3265) (Comma!3265) (LeftBracket!3265) (False!6531) (LeftBrace!3265) (ImaginaryLiteralValue!3265 (text!23301 List!18086)) (StringLiteralValue!9795 (value!100145 List!18086)) (EOFValue!3265 (value!100146 List!18086)) (IdentValue!3265 (value!100147 List!18086)) (DelimiterValue!6531 (value!100148 List!18086)) (DedentValue!3265 (value!100149 List!18086)) (NewLineValue!3265 (value!100150 List!18086)) (IntegerValue!9795 (value!100151 (_ BitVec 32)) (text!23302 List!18086)) (IntegerValue!9796 (value!100152 Int) (text!23303 List!18086)) (Times!3265) (Or!3265) (Equal!3265) (Minus!3265) (Broken!16329 (value!100153 List!18086)) (And!3265) (Div!3265) (LessEqual!3265) (Mod!3265) (Concat!7769) (Not!3265) (Plus!3265) (SpaceValue!3265 (value!100154 List!18086)) (IntegerValue!9797 (value!100155 Int) (text!23304 List!18086)) (StringLiteralValue!9796 (text!23305 List!18086)) (FloatLiteralValue!6531 (text!23306 List!18086)) (BytesLiteralValue!3265 (value!100156 List!18086)) (CommentValue!6531 (value!100157 List!18086)) (StringLiteralValue!9797 (value!100158 List!18086)) (ErrorTokenValue!3265 (msg!3326 List!18086)) )
))
(declare-datatypes ((IArray!12001 0))(
  ( (IArray!12002 (innerList!6058 List!18085)) )
))
(declare-datatypes ((Conc!5998 0))(
  ( (Node!5998 (left!14451 Conc!5998) (right!14781 Conc!5998) (csize!12226 Int) (cheight!6209 Int)) (Leaf!8806 (xs!8834 IArray!12001) (csize!12227 Int)) (Empty!5998) )
))
(declare-datatypes ((BalanceConc!11940 0))(
  ( (BalanceConc!11941 (c!266364 Conc!5998)) )
))
(declare-datatypes ((String!20657 0))(
  ( (String!20658 (value!100159 String)) )
))
(declare-datatypes ((TokenValueInjection!6190 0))(
  ( (TokenValueInjection!6191 (toValue!4606 Int) (toChars!4465 Int)) )
))
(declare-datatypes ((Rule!6150 0))(
  ( (Rule!6151 (regex!3175 Regex!4503) (tag!3455 String!20657) (isSeparator!3175 Bool) (transformation!3175 TokenValueInjection!6190)) )
))
(declare-datatypes ((Token!5916 0))(
  ( (Token!5917 (value!100160 TokenValue!3265) (rule!5019 Rule!6150) (size!14360 Int) (originalCharacters!3989 List!18085)) )
))
(declare-datatypes ((List!18087 0))(
  ( (Nil!18017) (Cons!18017 (h!23418 Token!5916) (t!149796 List!18087)) )
))
(declare-fun tokens!457 () List!18087)

(declare-fun prefixMatch!438 (Regex!4503 List!18085) Bool)

(declare-fun ++!4829 (List!18085 List!18085) List!18085)

(assert (=> b!1637270 (= res!733333 (prefixMatch!438 lt!599404 (++!4829 (originalCharacters!3989 (h!23418 tokens!457)) lt!599401)))))

(declare-fun e!1050002 () Bool)

(assert (=> b!1637270 e!1050002))

(declare-fun res!733330 () Bool)

(assert (=> b!1637270 (=> (not res!733330) (not e!1050002))))

(declare-datatypes ((tuple2!17646 0))(
  ( (tuple2!17647 (_1!10225 Token!5916) (_2!10225 List!18085)) )
))
(declare-fun lt!599388 () tuple2!17646)

(assert (=> b!1637270 (= res!733330 (= (_1!10225 lt!599388) (h!23418 tokens!457)))))

(declare-datatypes ((Option!3389 0))(
  ( (None!3388) (Some!3388 (v!24477 tuple2!17646)) )
))
(declare-fun lt!599379 () Option!3389)

(declare-fun get!5228 (Option!3389) tuple2!17646)

(assert (=> b!1637270 (= lt!599388 (get!5228 lt!599379))))

(declare-fun isDefined!2756 (Option!3389) Bool)

(assert (=> b!1637270 (isDefined!2756 lt!599379)))

(declare-fun lt!599381 () List!18085)

(declare-datatypes ((List!18088 0))(
  ( (Nil!18018) (Cons!18018 (h!23419 Rule!6150) (t!149797 List!18088)) )
))
(declare-fun rules!1846 () List!18088)

(declare-datatypes ((LexerInterface!2804 0))(
  ( (LexerInterfaceExt!2801 (__x!11833 Int)) (Lexer!2802) )
))
(declare-fun thiss!17113 () LexerInterface!2804)

(declare-fun maxPrefix!1368 (LexerInterface!2804 List!18088 List!18085) Option!3389)

(assert (=> b!1637270 (= lt!599379 (maxPrefix!1368 thiss!17113 rules!1846 lt!599381))))

(assert (=> b!1637270 (isDefined!2756 (maxPrefix!1368 thiss!17113 rules!1846 (originalCharacters!3989 (h!23418 tokens!457))))))

(declare-fun b!1637271 () Bool)

(declare-fun e!1050004 () Bool)

(declare-fun e!1050014 () Bool)

(declare-fun tp!474662 () Bool)

(assert (=> b!1637271 (= e!1050004 (and e!1050014 tp!474662))))

(declare-fun res!733323 () Bool)

(declare-fun e!1049993 () Bool)

(assert (=> start!156326 (=> (not res!733323) (not e!1049993))))

(get-info :version)

(assert (=> start!156326 (= res!733323 ((_ is Lexer!2802) thiss!17113))))

(assert (=> start!156326 e!1049993))

(assert (=> start!156326 true))

(assert (=> start!156326 e!1050004))

(declare-fun e!1050000 () Bool)

(assert (=> start!156326 e!1050000))

(declare-fun b!1637272 () Bool)

(declare-fun res!733331 () Bool)

(declare-fun e!1050005 () Bool)

(assert (=> b!1637272 (=> res!733331 e!1050005)))

(declare-fun lt!599405 () tuple2!17646)

(declare-datatypes ((tuple2!17648 0))(
  ( (tuple2!17649 (_1!10226 Token!5916) (_2!10226 BalanceConc!11940)) )
))
(declare-fun lt!599382 () tuple2!17648)

(declare-fun list!7103 (BalanceConc!11940) List!18085)

(assert (=> b!1637272 (= res!733331 (not (= (_2!10225 lt!599405) (list!7103 (_2!10226 lt!599382)))))))

(declare-fun b!1637273 () Bool)

(declare-fun res!733327 () Bool)

(assert (=> b!1637273 (=> (not res!733327) (not e!1049993))))

(declare-fun rulesProduceEachTokenIndividuallyList!1006 (LexerInterface!2804 List!18088 List!18087) Bool)

(assert (=> b!1637273 (= res!733327 (rulesProduceEachTokenIndividuallyList!1006 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1637274 () Bool)

(declare-fun res!733325 () Bool)

(assert (=> b!1637274 (=> (not res!733325) (not e!1049993))))

(declare-fun rulesInvariant!2473 (LexerInterface!2804 List!18088) Bool)

(assert (=> b!1637274 (= res!733325 (rulesInvariant!2473 thiss!17113 rules!1846))))

(declare-fun b!1637275 () Bool)

(declare-fun e!1049999 () Bool)

(assert (=> b!1637275 (= e!1049993 e!1049999)))

(declare-fun res!733336 () Bool)

(assert (=> b!1637275 (=> (not res!733336) (not e!1049999))))

(declare-fun lt!599384 () List!18085)

(declare-fun lt!599397 () List!18085)

(assert (=> b!1637275 (= res!733336 (= lt!599384 lt!599397))))

(declare-fun lt!599377 () List!18085)

(assert (=> b!1637275 (= lt!599397 (++!4829 lt!599381 lt!599377))))

(declare-fun lt!599406 () BalanceConc!11940)

(assert (=> b!1637275 (= lt!599384 (list!7103 lt!599406))))

(declare-fun lt!599391 () BalanceConc!11940)

(assert (=> b!1637275 (= lt!599377 (list!7103 lt!599391))))

(declare-fun lt!599396 () BalanceConc!11940)

(assert (=> b!1637275 (= lt!599381 (list!7103 lt!599396))))

(declare-fun charsOf!1824 (Token!5916) BalanceConc!11940)

(assert (=> b!1637275 (= lt!599396 (charsOf!1824 (h!23418 tokens!457)))))

(declare-datatypes ((IArray!12003 0))(
  ( (IArray!12004 (innerList!6059 List!18087)) )
))
(declare-datatypes ((Conc!5999 0))(
  ( (Node!5999 (left!14452 Conc!5999) (right!14782 Conc!5999) (csize!12228 Int) (cheight!6210 Int)) (Leaf!8807 (xs!8835 IArray!12003) (csize!12229 Int)) (Empty!5999) )
))
(declare-datatypes ((BalanceConc!11942 0))(
  ( (BalanceConc!11943 (c!266365 Conc!5999)) )
))
(declare-datatypes ((tuple2!17650 0))(
  ( (tuple2!17651 (_1!10227 BalanceConc!11942) (_2!10227 BalanceConc!11940)) )
))
(declare-fun lt!599394 () tuple2!17650)

(declare-fun lex!1288 (LexerInterface!2804 List!18088 BalanceConc!11940) tuple2!17650)

(assert (=> b!1637275 (= lt!599394 (lex!1288 thiss!17113 rules!1846 lt!599391))))

(declare-fun lt!599389 () BalanceConc!11942)

(declare-fun print!1335 (LexerInterface!2804 BalanceConc!11942) BalanceConc!11940)

(assert (=> b!1637275 (= lt!599391 (print!1335 thiss!17113 lt!599389))))

(declare-fun seqFromList!2099 (List!18087) BalanceConc!11942)

(assert (=> b!1637275 (= lt!599389 (seqFromList!2099 (t!149796 tokens!457)))))

(assert (=> b!1637275 (= lt!599406 (print!1335 thiss!17113 (seqFromList!2099 tokens!457)))))

(declare-fun b!1637276 () Bool)

(declare-fun res!733346 () Bool)

(declare-fun e!1049998 () Bool)

(assert (=> b!1637276 (=> res!733346 e!1049998)))

(declare-fun isEmpty!11047 (BalanceConc!11942) Bool)

(declare-fun seqFromList!2100 (List!18085) BalanceConc!11940)

(assert (=> b!1637276 (= res!733346 (isEmpty!11047 (_1!10227 (lex!1288 thiss!17113 rules!1846 (seqFromList!2100 lt!599381)))))))

(declare-fun b!1637277 () Bool)

(declare-fun res!733329 () Bool)

(declare-fun e!1050011 () Bool)

(assert (=> b!1637277 (=> (not res!733329) (not e!1050011))))

(declare-fun lt!599403 () List!18085)

(declare-fun head!3538 (List!18085) C!9180)

(assert (=> b!1637277 (= res!733329 (= lt!599403 (Cons!18015 (head!3538 (originalCharacters!3989 (h!23418 (t!149796 tokens!457)))) Nil!18015)))))

(declare-fun b!1637278 () Bool)

(declare-fun e!1049996 () Bool)

(declare-fun e!1050010 () Bool)

(assert (=> b!1637278 (= e!1049996 e!1050010)))

(declare-fun res!733339 () Bool)

(assert (=> b!1637278 (=> res!733339 e!1050010)))

(declare-fun lt!599392 () List!18087)

(declare-fun lt!599386 () List!18087)

(declare-fun lt!599399 () List!18087)

(assert (=> b!1637278 (= res!733339 (or (not (= lt!599399 lt!599392)) (not (= lt!599392 lt!599386))))))

(declare-fun list!7104 (BalanceConc!11942) List!18087)

(assert (=> b!1637278 (= lt!599392 (list!7104 lt!599389))))

(assert (=> b!1637278 (= lt!599399 lt!599386)))

(declare-fun prepend!717 (BalanceConc!11942 Token!5916) BalanceConc!11942)

(assert (=> b!1637278 (= lt!599386 (list!7104 (prepend!717 (seqFromList!2099 (t!149796 (t!149796 tokens!457))) (h!23418 (t!149796 tokens!457)))))))

(declare-datatypes ((Unit!29506 0))(
  ( (Unit!29507) )
))
(declare-fun lt!599402 () Unit!29506)

(declare-fun seqFromListBHdTlConstructive!252 (Token!5916 List!18087 BalanceConc!11942) Unit!29506)

(assert (=> b!1637278 (= lt!599402 (seqFromListBHdTlConstructive!252 (h!23418 (t!149796 tokens!457)) (t!149796 (t!149796 tokens!457)) (_1!10227 lt!599394)))))

(declare-fun b!1637279 () Bool)

(declare-fun res!733332 () Bool)

(assert (=> b!1637279 (=> (not res!733332) (not e!1049993))))

(assert (=> b!1637279 (= res!733332 (and (not ((_ is Nil!18017) tokens!457)) (not ((_ is Nil!18017) (t!149796 tokens!457)))))))

(declare-fun tp!474664 () Bool)

(declare-fun e!1050009 () Bool)

(declare-fun b!1637280 () Bool)

(declare-fun e!1049997 () Bool)

(declare-fun inv!21 (TokenValue!3265) Bool)

(assert (=> b!1637280 (= e!1049997 (and (inv!21 (value!100160 (h!23418 tokens!457))) e!1050009 tp!474664))))

(declare-fun b!1637281 () Bool)

(assert (=> b!1637281 (= e!1049999 (not e!1049996))))

(declare-fun res!733342 () Bool)

(assert (=> b!1637281 (=> res!733342 e!1049996)))

(assert (=> b!1637281 (= res!733342 (not (= lt!599399 (t!149796 tokens!457))))))

(assert (=> b!1637281 (= lt!599399 (list!7104 (_1!10227 lt!599394)))))

(declare-fun lt!599380 () Unit!29506)

(declare-fun theoremInvertabilityWhenTokenListSeparable!249 (LexerInterface!2804 List!18088 List!18087) Unit!29506)

(assert (=> b!1637281 (= lt!599380 (theoremInvertabilityWhenTokenListSeparable!249 thiss!17113 rules!1846 (t!149796 tokens!457)))))

(declare-fun isPrefix!1435 (List!18085 List!18085) Bool)

(assert (=> b!1637281 (isPrefix!1435 lt!599381 lt!599397)))

(declare-fun lt!599378 () Unit!29506)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!960 (List!18085 List!18085) Unit!29506)

(assert (=> b!1637281 (= lt!599378 (lemmaConcatTwoListThenFirstIsPrefix!960 lt!599381 lt!599377))))

(declare-fun b!1637282 () Bool)

(declare-fun res!733345 () Bool)

(assert (=> b!1637282 (=> (not res!733345) (not e!1049993))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!497 (LexerInterface!2804 List!18087 List!18088) Bool)

(assert (=> b!1637282 (= res!733345 (tokensListTwoByTwoPredicateSeparableList!497 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1637283 () Bool)

(declare-fun matchR!2002 (Regex!4503 List!18085) Bool)

(assert (=> b!1637283 (= e!1050002 (matchR!2002 (regex!3175 (rule!5019 (h!23418 tokens!457))) lt!599381))))

(declare-fun b!1637284 () Bool)

(declare-fun res!733337 () Bool)

(declare-fun e!1050003 () Bool)

(assert (=> b!1637284 (=> res!733337 e!1050003)))

(declare-fun maxPrefixZipper!332 (LexerInterface!2804 List!18088 List!18085) Option!3389)

(assert (=> b!1637284 (= res!733337 (not (= (h!23418 tokens!457) (_1!10225 (get!5228 (maxPrefixZipper!332 thiss!17113 rules!1846 lt!599384))))))))

(declare-fun b!1637285 () Bool)

(declare-fun res!733324 () Bool)

(assert (=> b!1637285 (=> res!733324 e!1050007)))

(assert (=> b!1637285 (= res!733324 (prefixMatch!438 lt!599404 (++!4829 lt!599381 lt!599401)))))

(declare-fun b!1637286 () Bool)

(assert (=> b!1637286 (= e!1050011 (= lt!599403 (Cons!18015 (head!3538 lt!599377) Nil!18015)))))

(declare-fun b!1637287 () Bool)

(assert (=> b!1637287 (= e!1050007 e!1050003)))

(declare-fun res!733344 () Bool)

(assert (=> b!1637287 (=> res!733344 e!1050003)))

(assert (=> b!1637287 (= res!733344 (or (not (= (_1!10225 lt!599405) (h!23418 tokens!457))) (not (= (_2!10225 lt!599405) lt!599377))))))

(declare-fun lt!599400 () Option!3389)

(assert (=> b!1637287 (= lt!599405 (get!5228 lt!599400))))

(declare-fun lt!599387 () Unit!29506)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!140 (LexerInterface!2804 List!18088 Token!5916 Rule!6150 List!18085) Unit!29506)

(assert (=> b!1637287 (= lt!599387 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!140 thiss!17113 rules!1846 (h!23418 tokens!457) (rule!5019 (h!23418 tokens!457)) lt!599377))))

(declare-fun b!1637288 () Bool)

(declare-fun res!733340 () Bool)

(assert (=> b!1637288 (=> res!733340 e!1050010)))

(declare-fun separableTokensPredicate!746 (LexerInterface!2804 Token!5916 Token!5916 List!18088) Bool)

(assert (=> b!1637288 (= res!733340 (not (separableTokensPredicate!746 thiss!17113 (h!23418 tokens!457) (h!23418 (t!149796 tokens!457)) rules!1846)))))

(declare-fun b!1637289 () Bool)

(assert (=> b!1637289 (= e!1050003 e!1050005)))

(declare-fun res!733341 () Bool)

(assert (=> b!1637289 (=> res!733341 e!1050005)))

(assert (=> b!1637289 (= res!733341 (not (= (h!23418 tokens!457) (_1!10226 lt!599382))))))

(declare-datatypes ((Option!3390 0))(
  ( (None!3389) (Some!3389 (v!24478 tuple2!17648)) )
))
(declare-fun get!5229 (Option!3390) tuple2!17648)

(declare-fun maxPrefixZipperSequence!699 (LexerInterface!2804 List!18088 BalanceConc!11940) Option!3390)

(assert (=> b!1637289 (= lt!599382 (get!5229 (maxPrefixZipperSequence!699 thiss!17113 rules!1846 lt!599406)))))

(declare-fun tp!474669 () Bool)

(declare-fun b!1637290 () Bool)

(declare-fun inv!23364 (String!20657) Bool)

(declare-fun inv!23367 (TokenValueInjection!6190) Bool)

(assert (=> b!1637290 (= e!1050009 (and tp!474669 (inv!23364 (tag!3455 (rule!5019 (h!23418 tokens!457)))) (inv!23367 (transformation!3175 (rule!5019 (h!23418 tokens!457)))) e!1050013))))

(declare-fun b!1637291 () Bool)

(declare-fun e!1050006 () Bool)

(assert (=> b!1637291 (= e!1050006 e!1050008)))

(declare-fun res!733328 () Bool)

(assert (=> b!1637291 (=> res!733328 e!1050008)))

(declare-fun isDefined!2757 (Option!3390) Bool)

(assert (=> b!1637291 (= res!733328 (not (isDefined!2757 (maxPrefixZipperSequence!699 thiss!17113 rules!1846 (seqFromList!2100 (originalCharacters!3989 (h!23418 tokens!457)))))))))

(assert (=> b!1637291 (= lt!599403 lt!599401)))

(declare-fun head!3539 (BalanceConc!11940) C!9180)

(assert (=> b!1637291 (= lt!599401 (Cons!18015 (head!3539 lt!599391) Nil!18015))))

(assert (=> b!1637291 e!1050011))

(declare-fun res!733320 () Bool)

(assert (=> b!1637291 (=> (not res!733320) (not e!1050011))))

(assert (=> b!1637291 (= res!733320 (= lt!599381 (originalCharacters!3989 (h!23418 tokens!457))))))

(declare-fun b!1637292 () Bool)

(declare-fun res!733321 () Bool)

(assert (=> b!1637292 (=> res!733321 e!1049998)))

(declare-fun rulesProduceIndividualToken!1456 (LexerInterface!2804 List!18088 Token!5916) Bool)

(assert (=> b!1637292 (= res!733321 (not (rulesProduceIndividualToken!1456 thiss!17113 rules!1846 (h!23418 tokens!457))))))

(declare-fun b!1637293 () Bool)

(assert (=> b!1637293 (= e!1050010 e!1049998)))

(declare-fun res!733334 () Bool)

(assert (=> b!1637293 (=> res!733334 e!1049998)))

(declare-fun lt!599393 () List!18085)

(declare-fun lt!599385 () List!18085)

(assert (=> b!1637293 (= res!733334 (or (not (= lt!599393 lt!599385)) (not (= lt!599385 lt!599381)) (not (= lt!599393 lt!599381))))))

(declare-fun printList!919 (LexerInterface!2804 List!18087) List!18085)

(assert (=> b!1637293 (= lt!599385 (printList!919 thiss!17113 (Cons!18017 (h!23418 tokens!457) Nil!18017)))))

(declare-fun lt!599395 () BalanceConc!11940)

(assert (=> b!1637293 (= lt!599393 (list!7103 lt!599395))))

(declare-fun lt!599398 () BalanceConc!11942)

(declare-fun printTailRec!857 (LexerInterface!2804 BalanceConc!11942 Int BalanceConc!11940) BalanceConc!11940)

(assert (=> b!1637293 (= lt!599395 (printTailRec!857 thiss!17113 lt!599398 0 (BalanceConc!11941 Empty!5998)))))

(assert (=> b!1637293 (= lt!599395 (print!1335 thiss!17113 lt!599398))))

(declare-fun singletonSeq!1628 (Token!5916) BalanceConc!11942)

(assert (=> b!1637293 (= lt!599398 (singletonSeq!1628 (h!23418 tokens!457)))))

(assert (=> b!1637293 (= lt!599400 (maxPrefix!1368 thiss!17113 rules!1846 lt!599384))))

(declare-fun b!1637294 () Bool)

(declare-fun res!733338 () Bool)

(assert (=> b!1637294 (=> (not res!733338) (not e!1050002))))

(declare-fun isEmpty!11048 (List!18085) Bool)

(assert (=> b!1637294 (= res!733338 (isEmpty!11048 (_2!10225 lt!599388)))))

(declare-fun b!1637295 () Bool)

(declare-fun e!1050012 () Bool)

(assert (=> b!1637295 (= e!1050012 e!1050006)))

(declare-fun res!733335 () Bool)

(assert (=> b!1637295 (=> res!733335 e!1050006)))

(assert (=> b!1637295 (= res!733335 (prefixMatch!438 lt!599404 (++!4829 lt!599381 lt!599403)))))

(declare-fun lt!599390 () BalanceConc!11940)

(assert (=> b!1637295 (= lt!599403 (list!7103 lt!599390))))

(declare-fun b!1637296 () Bool)

(declare-fun e!1050001 () Bool)

(declare-fun tp!474667 () Bool)

(assert (=> b!1637296 (= e!1050014 (and tp!474667 (inv!23364 (tag!3455 (h!23419 rules!1846))) (inv!23367 (transformation!3175 (h!23419 rules!1846))) e!1050001))))

(declare-fun b!1637297 () Bool)

(declare-fun res!733322 () Bool)

(assert (=> b!1637297 (=> (not res!733322) (not e!1049993))))

(declare-fun isEmpty!11049 (List!18088) Bool)

(assert (=> b!1637297 (= res!733322 (not (isEmpty!11049 rules!1846)))))

(assert (=> b!1637298 (= e!1050001 (and tp!474670 tp!474665))))

(declare-fun tp!474666 () Bool)

(declare-fun b!1637299 () Bool)

(declare-fun inv!23368 (Token!5916) Bool)

(assert (=> b!1637299 (= e!1050000 (and (inv!23368 (h!23418 tokens!457)) e!1049997 tp!474666))))

(declare-fun b!1637300 () Bool)

(declare-fun rulesValidInductive!994 (LexerInterface!2804 List!18088) Bool)

(assert (=> b!1637300 (= e!1050005 (rulesValidInductive!994 thiss!17113 rules!1846))))

(declare-fun b!1637301 () Bool)

(declare-fun e!1049995 () Bool)

(assert (=> b!1637301 (= e!1049998 e!1049995)))

(declare-fun res!733343 () Bool)

(assert (=> b!1637301 (=> res!733343 e!1049995)))

(assert (=> b!1637301 (= res!733343 (not (isDefined!2756 lt!599400)))))

(declare-fun lt!599383 () Unit!29506)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!378 (LexerInterface!2804 List!18088 List!18085 List!18085) Unit!29506)

(assert (=> b!1637301 (= lt!599383 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!378 thiss!17113 rules!1846 lt!599381 lt!599377))))

(declare-fun b!1637302 () Bool)

(assert (=> b!1637302 (= e!1049995 e!1050012)))

(declare-fun res!733326 () Bool)

(assert (=> b!1637302 (=> res!733326 e!1050012)))

(declare-fun prefixMatchZipperSequence!579 (Regex!4503 BalanceConc!11940) Bool)

(declare-fun ++!4830 (BalanceConc!11940 BalanceConc!11940) BalanceConc!11940)

(assert (=> b!1637302 (= res!733326 (prefixMatchZipperSequence!579 lt!599404 (++!4830 lt!599396 lt!599390)))))

(declare-fun singletonSeq!1629 (C!9180) BalanceConc!11940)

(declare-fun apply!4670 (BalanceConc!11940 Int) C!9180)

(assert (=> b!1637302 (= lt!599390 (singletonSeq!1629 (apply!4670 (charsOf!1824 (h!23418 (t!149796 tokens!457))) 0)))))

(declare-fun rulesRegex!565 (LexerInterface!2804 List!18088) Regex!4503)

(assert (=> b!1637302 (= lt!599404 (rulesRegex!565 thiss!17113 rules!1846))))

(assert (= (and start!156326 res!733323) b!1637297))

(assert (= (and b!1637297 res!733322) b!1637274))

(assert (= (and b!1637274 res!733325) b!1637273))

(assert (= (and b!1637273 res!733327) b!1637282))

(assert (= (and b!1637282 res!733345) b!1637279))

(assert (= (and b!1637279 res!733332) b!1637275))

(assert (= (and b!1637275 res!733336) b!1637281))

(assert (= (and b!1637281 (not res!733342)) b!1637278))

(assert (= (and b!1637278 (not res!733339)) b!1637288))

(assert (= (and b!1637288 (not res!733340)) b!1637293))

(assert (= (and b!1637293 (not res!733334)) b!1637292))

(assert (= (and b!1637292 (not res!733321)) b!1637276))

(assert (= (and b!1637276 (not res!733346)) b!1637301))

(assert (= (and b!1637301 (not res!733343)) b!1637302))

(assert (= (and b!1637302 (not res!733326)) b!1637295))

(assert (= (and b!1637295 (not res!733335)) b!1637291))

(assert (= (and b!1637291 res!733320) b!1637277))

(assert (= (and b!1637277 res!733329) b!1637286))

(assert (= (and b!1637291 (not res!733328)) b!1637270))

(assert (= (and b!1637270 res!733330) b!1637294))

(assert (= (and b!1637294 res!733338) b!1637283))

(assert (= (and b!1637270 (not res!733333)) b!1637285))

(assert (= (and b!1637285 (not res!733324)) b!1637287))

(assert (= (and b!1637287 (not res!733344)) b!1637284))

(assert (= (and b!1637284 (not res!733337)) b!1637289))

(assert (= (and b!1637289 (not res!733341)) b!1637272))

(assert (= (and b!1637272 (not res!733331)) b!1637300))

(assert (= b!1637296 b!1637298))

(assert (= b!1637271 b!1637296))

(assert (= (and start!156326 ((_ is Cons!18018) rules!1846)) b!1637271))

(assert (= b!1637290 b!1637269))

(assert (= b!1637280 b!1637290))

(assert (= b!1637299 b!1637280))

(assert (= (and start!156326 ((_ is Cons!18017) tokens!457)) b!1637299))

(declare-fun m!1975117 () Bool)

(assert (=> b!1637295 m!1975117))

(assert (=> b!1637295 m!1975117))

(declare-fun m!1975119 () Bool)

(assert (=> b!1637295 m!1975119))

(declare-fun m!1975121 () Bool)

(assert (=> b!1637295 m!1975121))

(declare-fun m!1975123 () Bool)

(assert (=> b!1637297 m!1975123))

(declare-fun m!1975125 () Bool)

(assert (=> b!1637289 m!1975125))

(assert (=> b!1637289 m!1975125))

(declare-fun m!1975127 () Bool)

(assert (=> b!1637289 m!1975127))

(declare-fun m!1975129 () Bool)

(assert (=> b!1637302 m!1975129))

(declare-fun m!1975131 () Bool)

(assert (=> b!1637302 m!1975131))

(declare-fun m!1975133 () Bool)

(assert (=> b!1637302 m!1975133))

(assert (=> b!1637302 m!1975133))

(declare-fun m!1975135 () Bool)

(assert (=> b!1637302 m!1975135))

(declare-fun m!1975137 () Bool)

(assert (=> b!1637302 m!1975137))

(declare-fun m!1975139 () Bool)

(assert (=> b!1637302 m!1975139))

(assert (=> b!1637302 m!1975129))

(assert (=> b!1637302 m!1975139))

(declare-fun m!1975141 () Bool)

(assert (=> b!1637291 m!1975141))

(assert (=> b!1637291 m!1975141))

(declare-fun m!1975143 () Bool)

(assert (=> b!1637291 m!1975143))

(assert (=> b!1637291 m!1975143))

(declare-fun m!1975145 () Bool)

(assert (=> b!1637291 m!1975145))

(declare-fun m!1975147 () Bool)

(assert (=> b!1637291 m!1975147))

(declare-fun m!1975149 () Bool)

(assert (=> b!1637301 m!1975149))

(declare-fun m!1975151 () Bool)

(assert (=> b!1637301 m!1975151))

(declare-fun m!1975153 () Bool)

(assert (=> b!1637275 m!1975153))

(declare-fun m!1975155 () Bool)

(assert (=> b!1637275 m!1975155))

(declare-fun m!1975157 () Bool)

(assert (=> b!1637275 m!1975157))

(declare-fun m!1975159 () Bool)

(assert (=> b!1637275 m!1975159))

(declare-fun m!1975161 () Bool)

(assert (=> b!1637275 m!1975161))

(declare-fun m!1975163 () Bool)

(assert (=> b!1637275 m!1975163))

(declare-fun m!1975165 () Bool)

(assert (=> b!1637275 m!1975165))

(assert (=> b!1637275 m!1975161))

(declare-fun m!1975167 () Bool)

(assert (=> b!1637275 m!1975167))

(declare-fun m!1975169 () Bool)

(assert (=> b!1637275 m!1975169))

(declare-fun m!1975171 () Bool)

(assert (=> b!1637275 m!1975171))

(declare-fun m!1975173 () Bool)

(assert (=> b!1637281 m!1975173))

(declare-fun m!1975175 () Bool)

(assert (=> b!1637281 m!1975175))

(declare-fun m!1975177 () Bool)

(assert (=> b!1637281 m!1975177))

(declare-fun m!1975179 () Bool)

(assert (=> b!1637281 m!1975179))

(declare-fun m!1975181 () Bool)

(assert (=> b!1637294 m!1975181))

(declare-fun m!1975183 () Bool)

(assert (=> b!1637285 m!1975183))

(assert (=> b!1637285 m!1975183))

(declare-fun m!1975185 () Bool)

(assert (=> b!1637285 m!1975185))

(declare-fun m!1975187 () Bool)

(assert (=> b!1637273 m!1975187))

(declare-fun m!1975189 () Bool)

(assert (=> b!1637284 m!1975189))

(assert (=> b!1637284 m!1975189))

(declare-fun m!1975191 () Bool)

(assert (=> b!1637284 m!1975191))

(declare-fun m!1975193 () Bool)

(assert (=> b!1637283 m!1975193))

(declare-fun m!1975195 () Bool)

(assert (=> b!1637280 m!1975195))

(declare-fun m!1975197 () Bool)

(assert (=> b!1637282 m!1975197))

(declare-fun m!1975199 () Bool)

(assert (=> b!1637300 m!1975199))

(declare-fun m!1975201 () Bool)

(assert (=> b!1637290 m!1975201))

(declare-fun m!1975203 () Bool)

(assert (=> b!1637290 m!1975203))

(declare-fun m!1975205 () Bool)

(assert (=> b!1637286 m!1975205))

(declare-fun m!1975207 () Bool)

(assert (=> b!1637296 m!1975207))

(declare-fun m!1975209 () Bool)

(assert (=> b!1637296 m!1975209))

(declare-fun m!1975211 () Bool)

(assert (=> b!1637276 m!1975211))

(assert (=> b!1637276 m!1975211))

(declare-fun m!1975213 () Bool)

(assert (=> b!1637276 m!1975213))

(declare-fun m!1975215 () Bool)

(assert (=> b!1637276 m!1975215))

(declare-fun m!1975217 () Bool)

(assert (=> b!1637277 m!1975217))

(declare-fun m!1975219 () Bool)

(assert (=> b!1637272 m!1975219))

(declare-fun m!1975221 () Bool)

(assert (=> b!1637287 m!1975221))

(declare-fun m!1975223 () Bool)

(assert (=> b!1637287 m!1975223))

(declare-fun m!1975225 () Bool)

(assert (=> b!1637299 m!1975225))

(declare-fun m!1975227 () Bool)

(assert (=> b!1637288 m!1975227))

(declare-fun m!1975229 () Bool)

(assert (=> b!1637293 m!1975229))

(declare-fun m!1975231 () Bool)

(assert (=> b!1637293 m!1975231))

(declare-fun m!1975233 () Bool)

(assert (=> b!1637293 m!1975233))

(declare-fun m!1975235 () Bool)

(assert (=> b!1637293 m!1975235))

(declare-fun m!1975237 () Bool)

(assert (=> b!1637293 m!1975237))

(declare-fun m!1975239 () Bool)

(assert (=> b!1637293 m!1975239))

(declare-fun m!1975241 () Bool)

(assert (=> b!1637270 m!1975241))

(declare-fun m!1975243 () Bool)

(assert (=> b!1637270 m!1975243))

(declare-fun m!1975245 () Bool)

(assert (=> b!1637270 m!1975245))

(assert (=> b!1637270 m!1975245))

(declare-fun m!1975247 () Bool)

(assert (=> b!1637270 m!1975247))

(declare-fun m!1975249 () Bool)

(assert (=> b!1637270 m!1975249))

(declare-fun m!1975251 () Bool)

(assert (=> b!1637270 m!1975251))

(assert (=> b!1637270 m!1975249))

(declare-fun m!1975253 () Bool)

(assert (=> b!1637270 m!1975253))

(declare-fun m!1975255 () Bool)

(assert (=> b!1637292 m!1975255))

(declare-fun m!1975257 () Bool)

(assert (=> b!1637274 m!1975257))

(declare-fun m!1975259 () Bool)

(assert (=> b!1637278 m!1975259))

(declare-fun m!1975261 () Bool)

(assert (=> b!1637278 m!1975261))

(declare-fun m!1975263 () Bool)

(assert (=> b!1637278 m!1975263))

(declare-fun m!1975265 () Bool)

(assert (=> b!1637278 m!1975265))

(assert (=> b!1637278 m!1975261))

(assert (=> b!1637278 m!1975263))

(declare-fun m!1975267 () Bool)

(assert (=> b!1637278 m!1975267))

(check-sat (not b!1637297) (not b!1637284) (not b!1637287) (not b!1637292) b_and!116047 (not b!1637276) b_and!116049 (not b!1637299) (not b_next!44985) (not b!1637283) (not b!1637300) (not b!1637270) (not b!1637293) (not b!1637290) (not b!1637285) (not b!1637274) (not b!1637288) b_and!116045 (not b_next!44983) (not b!1637277) b_and!116051 (not b!1637289) (not b!1637296) (not b!1637275) (not b!1637301) (not b!1637278) (not b!1637302) (not b!1637272) (not b!1637280) (not b_next!44987) (not b!1637282) (not b!1637281) (not b!1637271) (not b_next!44989) (not b!1637295) (not b!1637294) (not b!1637273) (not b!1637291) (not b!1637286))
(check-sat b_and!116045 b_and!116047 b_and!116049 (not b_next!44987) (not b_next!44985) (not b_next!44989) (not b_next!44983) b_and!116051)
(get-model)

(declare-fun d!492914 () Bool)

(declare-fun res!733361 () Bool)

(declare-fun e!1050019 () Bool)

(assert (=> d!492914 (=> res!733361 e!1050019)))

(assert (=> d!492914 (= res!733361 (or (not ((_ is Cons!18017) tokens!457)) (not ((_ is Cons!18017) (t!149796 tokens!457)))))))

(assert (=> d!492914 (= (tokensListTwoByTwoPredicateSeparableList!497 thiss!17113 tokens!457 rules!1846) e!1050019)))

(declare-fun b!1637307 () Bool)

(declare-fun e!1050020 () Bool)

(assert (=> b!1637307 (= e!1050019 e!1050020)))

(declare-fun res!733360 () Bool)

(assert (=> b!1637307 (=> (not res!733360) (not e!1050020))))

(assert (=> b!1637307 (= res!733360 (separableTokensPredicate!746 thiss!17113 (h!23418 tokens!457) (h!23418 (t!149796 tokens!457)) rules!1846))))

(declare-fun lt!599424 () Unit!29506)

(declare-fun Unit!29524 () Unit!29506)

(assert (=> b!1637307 (= lt!599424 Unit!29524)))

(declare-fun size!14364 (BalanceConc!11940) Int)

(assert (=> b!1637307 (> (size!14364 (charsOf!1824 (h!23418 (t!149796 tokens!457)))) 0)))

(declare-fun lt!599422 () Unit!29506)

(declare-fun Unit!29525 () Unit!29506)

(assert (=> b!1637307 (= lt!599422 Unit!29525)))

(assert (=> b!1637307 (rulesProduceIndividualToken!1456 thiss!17113 rules!1846 (h!23418 (t!149796 tokens!457)))))

(declare-fun lt!599427 () Unit!29506)

(declare-fun Unit!29526 () Unit!29506)

(assert (=> b!1637307 (= lt!599427 Unit!29526)))

(assert (=> b!1637307 (rulesProduceIndividualToken!1456 thiss!17113 rules!1846 (h!23418 tokens!457))))

(declare-fun lt!599425 () Unit!29506)

(declare-fun lt!599426 () Unit!29506)

(assert (=> b!1637307 (= lt!599425 lt!599426)))

(assert (=> b!1637307 (rulesProduceIndividualToken!1456 thiss!17113 rules!1846 (h!23418 (t!149796 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!581 (LexerInterface!2804 List!18088 List!18087 Token!5916) Unit!29506)

(assert (=> b!1637307 (= lt!599426 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!581 thiss!17113 rules!1846 tokens!457 (h!23418 (t!149796 tokens!457))))))

(declare-fun lt!599421 () Unit!29506)

(declare-fun lt!599423 () Unit!29506)

(assert (=> b!1637307 (= lt!599421 lt!599423)))

(assert (=> b!1637307 (rulesProduceIndividualToken!1456 thiss!17113 rules!1846 (h!23418 tokens!457))))

(assert (=> b!1637307 (= lt!599423 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!581 thiss!17113 rules!1846 tokens!457 (h!23418 tokens!457)))))

(declare-fun b!1637308 () Bool)

(assert (=> b!1637308 (= e!1050020 (tokensListTwoByTwoPredicateSeparableList!497 thiss!17113 (Cons!18017 (h!23418 (t!149796 tokens!457)) (t!149796 (t!149796 tokens!457))) rules!1846))))

(assert (= (and d!492914 (not res!733361)) b!1637307))

(assert (= (and b!1637307 res!733360) b!1637308))

(declare-fun m!1975269 () Bool)

(assert (=> b!1637307 m!1975269))

(assert (=> b!1637307 m!1975255))

(declare-fun m!1975271 () Bool)

(assert (=> b!1637307 m!1975271))

(assert (=> b!1637307 m!1975227))

(assert (=> b!1637307 m!1975139))

(declare-fun m!1975273 () Bool)

(assert (=> b!1637307 m!1975273))

(assert (=> b!1637307 m!1975139))

(declare-fun m!1975275 () Bool)

(assert (=> b!1637307 m!1975275))

(declare-fun m!1975277 () Bool)

(assert (=> b!1637308 m!1975277))

(assert (=> b!1637282 d!492914))

(declare-fun b!1637337 () Bool)

(declare-fun e!1050040 () Bool)

(assert (=> b!1637337 (= e!1050040 (= (head!3538 lt!599381) (c!266363 (regex!3175 (rule!5019 (h!23418 tokens!457))))))))

(declare-fun bm!105664 () Bool)

(declare-fun call!105669 () Bool)

(assert (=> bm!105664 (= call!105669 (isEmpty!11048 lt!599381))))

(declare-fun b!1637338 () Bool)

(declare-fun e!1050041 () Bool)

(declare-fun e!1050039 () Bool)

(assert (=> b!1637338 (= e!1050041 e!1050039)))

(declare-fun c!266373 () Bool)

(assert (=> b!1637338 (= c!266373 ((_ is EmptyLang!4503) (regex!3175 (rule!5019 (h!23418 tokens!457)))))))

(declare-fun b!1637339 () Bool)

(declare-fun res!733378 () Bool)

(assert (=> b!1637339 (=> (not res!733378) (not e!1050040))))

(declare-fun tail!2395 (List!18085) List!18085)

(assert (=> b!1637339 (= res!733378 (isEmpty!11048 (tail!2395 lt!599381)))))

(declare-fun b!1637340 () Bool)

(declare-fun res!733382 () Bool)

(declare-fun e!1050037 () Bool)

(assert (=> b!1637340 (=> res!733382 e!1050037)))

(assert (=> b!1637340 (= res!733382 e!1050040)))

(declare-fun res!733380 () Bool)

(assert (=> b!1637340 (=> (not res!733380) (not e!1050040))))

(declare-fun lt!599430 () Bool)

(assert (=> b!1637340 (= res!733380 lt!599430)))

(declare-fun b!1637341 () Bool)

(declare-fun res!733384 () Bool)

(assert (=> b!1637341 (=> res!733384 e!1050037)))

(assert (=> b!1637341 (= res!733384 (not ((_ is ElementMatch!4503) (regex!3175 (rule!5019 (h!23418 tokens!457))))))))

(assert (=> b!1637341 (= e!1050039 e!1050037)))

(declare-fun b!1637342 () Bool)

(declare-fun e!1050038 () Bool)

(declare-fun e!1050036 () Bool)

(assert (=> b!1637342 (= e!1050038 e!1050036)))

(declare-fun res!733381 () Bool)

(assert (=> b!1637342 (=> res!733381 e!1050036)))

(assert (=> b!1637342 (= res!733381 call!105669)))

(declare-fun d!492916 () Bool)

(assert (=> d!492916 e!1050041))

(declare-fun c!266372 () Bool)

(assert (=> d!492916 (= c!266372 ((_ is EmptyExpr!4503) (regex!3175 (rule!5019 (h!23418 tokens!457)))))))

(declare-fun e!1050035 () Bool)

(assert (=> d!492916 (= lt!599430 e!1050035)))

(declare-fun c!266374 () Bool)

(assert (=> d!492916 (= c!266374 (isEmpty!11048 lt!599381))))

(declare-fun validRegex!1793 (Regex!4503) Bool)

(assert (=> d!492916 (validRegex!1793 (regex!3175 (rule!5019 (h!23418 tokens!457))))))

(assert (=> d!492916 (= (matchR!2002 (regex!3175 (rule!5019 (h!23418 tokens!457))) lt!599381) lt!599430)))

(declare-fun b!1637343 () Bool)

(declare-fun res!733385 () Bool)

(assert (=> b!1637343 (=> res!733385 e!1050036)))

(assert (=> b!1637343 (= res!733385 (not (isEmpty!11048 (tail!2395 lt!599381))))))

(declare-fun b!1637344 () Bool)

(assert (=> b!1637344 (= e!1050037 e!1050038)))

(declare-fun res!733383 () Bool)

(assert (=> b!1637344 (=> (not res!733383) (not e!1050038))))

(assert (=> b!1637344 (= res!733383 (not lt!599430))))

(declare-fun b!1637345 () Bool)

(declare-fun res!733379 () Bool)

(assert (=> b!1637345 (=> (not res!733379) (not e!1050040))))

(assert (=> b!1637345 (= res!733379 (not call!105669))))

(declare-fun b!1637346 () Bool)

(declare-fun derivativeStep!1098 (Regex!4503 C!9180) Regex!4503)

(assert (=> b!1637346 (= e!1050035 (matchR!2002 (derivativeStep!1098 (regex!3175 (rule!5019 (h!23418 tokens!457))) (head!3538 lt!599381)) (tail!2395 lt!599381)))))

(declare-fun b!1637347 () Bool)

(declare-fun nullable!1333 (Regex!4503) Bool)

(assert (=> b!1637347 (= e!1050035 (nullable!1333 (regex!3175 (rule!5019 (h!23418 tokens!457)))))))

(declare-fun b!1637348 () Bool)

(assert (=> b!1637348 (= e!1050039 (not lt!599430))))

(declare-fun b!1637349 () Bool)

(assert (=> b!1637349 (= e!1050041 (= lt!599430 call!105669))))

(declare-fun b!1637350 () Bool)

(assert (=> b!1637350 (= e!1050036 (not (= (head!3538 lt!599381) (c!266363 (regex!3175 (rule!5019 (h!23418 tokens!457)))))))))

(assert (= (and d!492916 c!266374) b!1637347))

(assert (= (and d!492916 (not c!266374)) b!1637346))

(assert (= (and d!492916 c!266372) b!1637349))

(assert (= (and d!492916 (not c!266372)) b!1637338))

(assert (= (and b!1637338 c!266373) b!1637348))

(assert (= (and b!1637338 (not c!266373)) b!1637341))

(assert (= (and b!1637341 (not res!733384)) b!1637340))

(assert (= (and b!1637340 res!733380) b!1637345))

(assert (= (and b!1637345 res!733379) b!1637339))

(assert (= (and b!1637339 res!733378) b!1637337))

(assert (= (and b!1637340 (not res!733382)) b!1637344))

(assert (= (and b!1637344 res!733383) b!1637342))

(assert (= (and b!1637342 (not res!733381)) b!1637343))

(assert (= (and b!1637343 (not res!733385)) b!1637350))

(assert (= (or b!1637349 b!1637342 b!1637345) bm!105664))

(declare-fun m!1975279 () Bool)

(assert (=> b!1637350 m!1975279))

(declare-fun m!1975281 () Bool)

(assert (=> d!492916 m!1975281))

(declare-fun m!1975283 () Bool)

(assert (=> d!492916 m!1975283))

(declare-fun m!1975285 () Bool)

(assert (=> b!1637347 m!1975285))

(assert (=> b!1637346 m!1975279))

(assert (=> b!1637346 m!1975279))

(declare-fun m!1975287 () Bool)

(assert (=> b!1637346 m!1975287))

(declare-fun m!1975289 () Bool)

(assert (=> b!1637346 m!1975289))

(assert (=> b!1637346 m!1975287))

(assert (=> b!1637346 m!1975289))

(declare-fun m!1975291 () Bool)

(assert (=> b!1637346 m!1975291))

(assert (=> bm!105664 m!1975281))

(assert (=> b!1637339 m!1975289))

(assert (=> b!1637339 m!1975289))

(declare-fun m!1975293 () Bool)

(assert (=> b!1637339 m!1975293))

(assert (=> b!1637343 m!1975289))

(assert (=> b!1637343 m!1975289))

(assert (=> b!1637343 m!1975293))

(assert (=> b!1637337 m!1975279))

(assert (=> b!1637283 d!492916))

(declare-fun d!492918 () Bool)

(declare-fun list!7106 (Conc!5999) List!18087)

(assert (=> d!492918 (= (list!7104 (_1!10227 lt!599394)) (list!7106 (c!266365 (_1!10227 lt!599394))))))

(declare-fun bs!395448 () Bool)

(assert (= bs!395448 d!492918))

(declare-fun m!1975295 () Bool)

(assert (=> bs!395448 m!1975295))

(assert (=> b!1637281 d!492918))

(declare-fun d!492920 () Bool)

(declare-fun e!1050046 () Bool)

(assert (=> d!492920 e!1050046))

(declare-fun res!733388 () Bool)

(assert (=> d!492920 (=> (not res!733388) (not e!1050046))))

(assert (=> d!492920 (= res!733388 (= (list!7104 (_1!10227 (lex!1288 thiss!17113 rules!1846 (print!1335 thiss!17113 (seqFromList!2099 (t!149796 tokens!457)))))) (t!149796 tokens!457)))))

(declare-fun lt!599500 () Unit!29506)

(declare-fun e!1050047 () Unit!29506)

(assert (=> d!492920 (= lt!599500 e!1050047)))

(declare-fun c!266377 () Bool)

(assert (=> d!492920 (= c!266377 (or ((_ is Nil!18017) (t!149796 tokens!457)) ((_ is Nil!18017) (t!149796 (t!149796 tokens!457)))))))

(assert (=> d!492920 (not (isEmpty!11049 rules!1846))))

(assert (=> d!492920 (= (theoremInvertabilityWhenTokenListSeparable!249 thiss!17113 rules!1846 (t!149796 tokens!457)) lt!599500)))

(declare-fun b!1637357 () Bool)

(declare-fun Unit!29527 () Unit!29506)

(assert (=> b!1637357 (= e!1050047 Unit!29527)))

(declare-fun b!1637358 () Bool)

(declare-fun Unit!29528 () Unit!29506)

(assert (=> b!1637358 (= e!1050047 Unit!29528)))

(declare-fun lt!599485 () BalanceConc!11940)

(assert (=> b!1637358 (= lt!599485 (print!1335 thiss!17113 (seqFromList!2099 (t!149796 tokens!457))))))

(declare-fun lt!599507 () BalanceConc!11940)

(assert (=> b!1637358 (= lt!599507 (print!1335 thiss!17113 (seqFromList!2099 (t!149796 (t!149796 tokens!457)))))))

(declare-fun lt!599501 () tuple2!17650)

(assert (=> b!1637358 (= lt!599501 (lex!1288 thiss!17113 rules!1846 lt!599507))))

(declare-fun lt!599496 () List!18085)

(assert (=> b!1637358 (= lt!599496 (list!7103 (charsOf!1824 (h!23418 (t!149796 tokens!457)))))))

(declare-fun lt!599490 () List!18085)

(assert (=> b!1637358 (= lt!599490 (list!7103 lt!599507))))

(declare-fun lt!599486 () Unit!29506)

(assert (=> b!1637358 (= lt!599486 (lemmaConcatTwoListThenFirstIsPrefix!960 lt!599496 lt!599490))))

(assert (=> b!1637358 (isPrefix!1435 lt!599496 (++!4829 lt!599496 lt!599490))))

(declare-fun lt!599504 () Unit!29506)

(assert (=> b!1637358 (= lt!599504 lt!599486)))

(declare-fun lt!599502 () Unit!29506)

(assert (=> b!1637358 (= lt!599502 (theoremInvertabilityWhenTokenListSeparable!249 thiss!17113 rules!1846 (t!149796 (t!149796 tokens!457))))))

(declare-fun lt!599497 () Unit!29506)

(assert (=> b!1637358 (= lt!599497 (seqFromListBHdTlConstructive!252 (h!23418 (t!149796 (t!149796 tokens!457))) (t!149796 (t!149796 (t!149796 tokens!457))) (_1!10227 lt!599501)))))

(assert (=> b!1637358 (= (list!7104 (_1!10227 lt!599501)) (list!7104 (prepend!717 (seqFromList!2099 (t!149796 (t!149796 (t!149796 tokens!457)))) (h!23418 (t!149796 (t!149796 tokens!457))))))))

(declare-fun lt!599499 () Unit!29506)

(assert (=> b!1637358 (= lt!599499 lt!599497)))

(declare-fun lt!599498 () Option!3389)

(assert (=> b!1637358 (= lt!599498 (maxPrefix!1368 thiss!17113 rules!1846 (list!7103 lt!599485)))))

(assert (=> b!1637358 (= (print!1335 thiss!17113 (singletonSeq!1628 (h!23418 (t!149796 tokens!457)))) (printTailRec!857 thiss!17113 (singletonSeq!1628 (h!23418 (t!149796 tokens!457))) 0 (BalanceConc!11941 Empty!5998)))))

(declare-fun lt!599488 () Unit!29506)

(declare-fun Unit!29529 () Unit!29506)

(assert (=> b!1637358 (= lt!599488 Unit!29529)))

(declare-fun lt!599489 () Unit!29506)

(assert (=> b!1637358 (= lt!599489 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!378 thiss!17113 rules!1846 (list!7103 (charsOf!1824 (h!23418 (t!149796 tokens!457)))) (list!7103 lt!599507)))))

(assert (=> b!1637358 (= (list!7103 (charsOf!1824 (h!23418 (t!149796 tokens!457)))) (originalCharacters!3989 (h!23418 (t!149796 tokens!457))))))

(declare-fun lt!599495 () Unit!29506)

(declare-fun Unit!29530 () Unit!29506)

(assert (=> b!1637358 (= lt!599495 Unit!29530)))

(assert (=> b!1637358 (= (list!7103 (singletonSeq!1629 (apply!4670 (charsOf!1824 (h!23418 (t!149796 (t!149796 tokens!457)))) 0))) (Cons!18015 (head!3538 (originalCharacters!3989 (h!23418 (t!149796 (t!149796 tokens!457))))) Nil!18015))))

(declare-fun lt!599508 () Unit!29506)

(declare-fun Unit!29531 () Unit!29506)

(assert (=> b!1637358 (= lt!599508 Unit!29531)))

(assert (=> b!1637358 (= (list!7103 (singletonSeq!1629 (apply!4670 (charsOf!1824 (h!23418 (t!149796 (t!149796 tokens!457)))) 0))) (Cons!18015 (head!3538 (list!7103 lt!599507)) Nil!18015))))

(declare-fun lt!599506 () Unit!29506)

(declare-fun Unit!29532 () Unit!29506)

(assert (=> b!1637358 (= lt!599506 Unit!29532)))

(assert (=> b!1637358 (= (list!7103 (singletonSeq!1629 (apply!4670 (charsOf!1824 (h!23418 (t!149796 (t!149796 tokens!457)))) 0))) (Cons!18015 (head!3539 lt!599507) Nil!18015))))

(declare-fun lt!599492 () Unit!29506)

(declare-fun Unit!29533 () Unit!29506)

(assert (=> b!1637358 (= lt!599492 Unit!29533)))

(assert (=> b!1637358 (isDefined!2756 (maxPrefix!1368 thiss!17113 rules!1846 (originalCharacters!3989 (h!23418 (t!149796 tokens!457)))))))

(declare-fun lt!599493 () Unit!29506)

(declare-fun Unit!29534 () Unit!29506)

(assert (=> b!1637358 (= lt!599493 Unit!29534)))

(assert (=> b!1637358 (isDefined!2756 (maxPrefix!1368 thiss!17113 rules!1846 (list!7103 (charsOf!1824 (h!23418 (t!149796 tokens!457))))))))

(declare-fun lt!599487 () Unit!29506)

(declare-fun Unit!29535 () Unit!29506)

(assert (=> b!1637358 (= lt!599487 Unit!29535)))

(declare-fun lt!599494 () Unit!29506)

(declare-fun Unit!29536 () Unit!29506)

(assert (=> b!1637358 (= lt!599494 Unit!29536)))

(assert (=> b!1637358 (= (_1!10225 (get!5228 (maxPrefix!1368 thiss!17113 rules!1846 (list!7103 (charsOf!1824 (h!23418 (t!149796 tokens!457))))))) (h!23418 (t!149796 tokens!457)))))

(declare-fun lt!599503 () Unit!29506)

(declare-fun Unit!29537 () Unit!29506)

(assert (=> b!1637358 (= lt!599503 Unit!29537)))

(assert (=> b!1637358 (isEmpty!11048 (_2!10225 (get!5228 (maxPrefix!1368 thiss!17113 rules!1846 (list!7103 (charsOf!1824 (h!23418 (t!149796 tokens!457))))))))))

(declare-fun lt!599505 () Unit!29506)

(declare-fun Unit!29538 () Unit!29506)

(assert (=> b!1637358 (= lt!599505 Unit!29538)))

(assert (=> b!1637358 (matchR!2002 (regex!3175 (rule!5019 (h!23418 (t!149796 tokens!457)))) (list!7103 (charsOf!1824 (h!23418 (t!149796 tokens!457)))))))

(declare-fun lt!599484 () Unit!29506)

(declare-fun Unit!29539 () Unit!29506)

(assert (=> b!1637358 (= lt!599484 Unit!29539)))

(assert (=> b!1637358 (= (rule!5019 (h!23418 (t!149796 tokens!457))) (rule!5019 (h!23418 (t!149796 tokens!457))))))

(declare-fun lt!599483 () Unit!29506)

(declare-fun Unit!29540 () Unit!29506)

(assert (=> b!1637358 (= lt!599483 Unit!29540)))

(declare-fun lt!599491 () Unit!29506)

(assert (=> b!1637358 (= lt!599491 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!140 thiss!17113 rules!1846 (h!23418 (t!149796 tokens!457)) (rule!5019 (h!23418 (t!149796 tokens!457))) (list!7103 lt!599507)))))

(declare-fun b!1637359 () Bool)

(declare-fun isEmpty!11052 (BalanceConc!11940) Bool)

(assert (=> b!1637359 (= e!1050046 (isEmpty!11052 (_2!10227 (lex!1288 thiss!17113 rules!1846 (print!1335 thiss!17113 (seqFromList!2099 (t!149796 tokens!457)))))))))

(assert (= (and d!492920 c!266377) b!1637357))

(assert (= (and d!492920 (not c!266377)) b!1637358))

(assert (= (and d!492920 res!733388) b!1637359))

(declare-fun m!1975297 () Bool)

(assert (=> d!492920 m!1975297))

(declare-fun m!1975299 () Bool)

(assert (=> d!492920 m!1975299))

(assert (=> d!492920 m!1975157))

(assert (=> d!492920 m!1975123))

(declare-fun m!1975301 () Bool)

(assert (=> d!492920 m!1975301))

(assert (=> d!492920 m!1975157))

(assert (=> d!492920 m!1975297))

(declare-fun m!1975303 () Bool)

(assert (=> b!1637358 m!1975303))

(assert (=> b!1637358 m!1975157))

(assert (=> b!1637358 m!1975297))

(assert (=> b!1637358 m!1975157))

(declare-fun m!1975305 () Bool)

(assert (=> b!1637358 m!1975305))

(declare-fun m!1975307 () Bool)

(assert (=> b!1637358 m!1975307))

(assert (=> b!1637358 m!1975139))

(assert (=> b!1637358 m!1975261))

(declare-fun m!1975309 () Bool)

(assert (=> b!1637358 m!1975309))

(assert (=> b!1637358 m!1975261))

(declare-fun m!1975311 () Bool)

(assert (=> b!1637358 m!1975311))

(declare-fun m!1975313 () Bool)

(assert (=> b!1637358 m!1975313))

(assert (=> b!1637358 m!1975307))

(declare-fun m!1975315 () Bool)

(assert (=> b!1637358 m!1975315))

(declare-fun m!1975317 () Bool)

(assert (=> b!1637358 m!1975317))

(declare-fun m!1975319 () Bool)

(assert (=> b!1637358 m!1975319))

(declare-fun m!1975321 () Bool)

(assert (=> b!1637358 m!1975321))

(declare-fun m!1975323 () Bool)

(assert (=> b!1637358 m!1975323))

(assert (=> b!1637358 m!1975305))

(declare-fun m!1975325 () Bool)

(assert (=> b!1637358 m!1975325))

(declare-fun m!1975327 () Bool)

(assert (=> b!1637358 m!1975327))

(declare-fun m!1975329 () Bool)

(assert (=> b!1637358 m!1975329))

(declare-fun m!1975331 () Bool)

(assert (=> b!1637358 m!1975331))

(declare-fun m!1975333 () Bool)

(assert (=> b!1637358 m!1975333))

(assert (=> b!1637358 m!1975323))

(declare-fun m!1975335 () Bool)

(assert (=> b!1637358 m!1975335))

(assert (=> b!1637358 m!1975333))

(declare-fun m!1975337 () Bool)

(assert (=> b!1637358 m!1975337))

(assert (=> b!1637358 m!1975319))

(declare-fun m!1975339 () Bool)

(assert (=> b!1637358 m!1975339))

(declare-fun m!1975341 () Bool)

(assert (=> b!1637358 m!1975341))

(declare-fun m!1975343 () Bool)

(assert (=> b!1637358 m!1975343))

(assert (=> b!1637358 m!1975307))

(declare-fun m!1975345 () Bool)

(assert (=> b!1637358 m!1975345))

(assert (=> b!1637358 m!1975333))

(declare-fun m!1975347 () Bool)

(assert (=> b!1637358 m!1975347))

(assert (=> b!1637358 m!1975305))

(assert (=> b!1637358 m!1975319))

(declare-fun m!1975349 () Bool)

(assert (=> b!1637358 m!1975349))

(declare-fun m!1975351 () Bool)

(assert (=> b!1637358 m!1975351))

(assert (=> b!1637358 m!1975317))

(declare-fun m!1975353 () Bool)

(assert (=> b!1637358 m!1975353))

(assert (=> b!1637358 m!1975353))

(assert (=> b!1637358 m!1975329))

(declare-fun m!1975355 () Bool)

(assert (=> b!1637358 m!1975355))

(declare-fun m!1975357 () Bool)

(assert (=> b!1637358 m!1975357))

(assert (=> b!1637358 m!1975327))

(declare-fun m!1975359 () Bool)

(assert (=> b!1637358 m!1975359))

(assert (=> b!1637358 m!1975139))

(assert (=> b!1637358 m!1975305))

(declare-fun m!1975361 () Bool)

(assert (=> b!1637358 m!1975361))

(assert (=> b!1637358 m!1975341))

(declare-fun m!1975363 () Bool)

(assert (=> b!1637358 m!1975363))

(declare-fun m!1975365 () Bool)

(assert (=> b!1637358 m!1975365))

(declare-fun m!1975367 () Bool)

(assert (=> b!1637358 m!1975367))

(assert (=> b!1637358 m!1975319))

(declare-fun m!1975369 () Bool)

(assert (=> b!1637358 m!1975369))

(assert (=> b!1637358 m!1975361))

(assert (=> b!1637358 m!1975365))

(assert (=> b!1637359 m!1975157))

(assert (=> b!1637359 m!1975157))

(assert (=> b!1637359 m!1975297))

(assert (=> b!1637359 m!1975297))

(assert (=> b!1637359 m!1975299))

(declare-fun m!1975371 () Bool)

(assert (=> b!1637359 m!1975371))

(assert (=> b!1637281 d!492920))

(declare-fun b!1637368 () Bool)

(declare-fun e!1050054 () Bool)

(declare-fun e!1050055 () Bool)

(assert (=> b!1637368 (= e!1050054 e!1050055)))

(declare-fun res!733400 () Bool)

(assert (=> b!1637368 (=> (not res!733400) (not e!1050055))))

(assert (=> b!1637368 (= res!733400 (not ((_ is Nil!18015) lt!599397)))))

(declare-fun b!1637371 () Bool)

(declare-fun e!1050056 () Bool)

(declare-fun size!14365 (List!18085) Int)

(assert (=> b!1637371 (= e!1050056 (>= (size!14365 lt!599397) (size!14365 lt!599381)))))

(declare-fun b!1637370 () Bool)

(assert (=> b!1637370 (= e!1050055 (isPrefix!1435 (tail!2395 lt!599381) (tail!2395 lt!599397)))))

(declare-fun b!1637369 () Bool)

(declare-fun res!733399 () Bool)

(assert (=> b!1637369 (=> (not res!733399) (not e!1050055))))

(assert (=> b!1637369 (= res!733399 (= (head!3538 lt!599381) (head!3538 lt!599397)))))

(declare-fun d!492922 () Bool)

(assert (=> d!492922 e!1050056))

(declare-fun res!733397 () Bool)

(assert (=> d!492922 (=> res!733397 e!1050056)))

(declare-fun lt!599511 () Bool)

(assert (=> d!492922 (= res!733397 (not lt!599511))))

(assert (=> d!492922 (= lt!599511 e!1050054)))

(declare-fun res!733398 () Bool)

(assert (=> d!492922 (=> res!733398 e!1050054)))

(assert (=> d!492922 (= res!733398 ((_ is Nil!18015) lt!599381))))

(assert (=> d!492922 (= (isPrefix!1435 lt!599381 lt!599397) lt!599511)))

(assert (= (and d!492922 (not res!733398)) b!1637368))

(assert (= (and b!1637368 res!733400) b!1637369))

(assert (= (and b!1637369 res!733399) b!1637370))

(assert (= (and d!492922 (not res!733397)) b!1637371))

(declare-fun m!1975373 () Bool)

(assert (=> b!1637371 m!1975373))

(declare-fun m!1975375 () Bool)

(assert (=> b!1637371 m!1975375))

(assert (=> b!1637370 m!1975289))

(declare-fun m!1975377 () Bool)

(assert (=> b!1637370 m!1975377))

(assert (=> b!1637370 m!1975289))

(assert (=> b!1637370 m!1975377))

(declare-fun m!1975379 () Bool)

(assert (=> b!1637370 m!1975379))

(assert (=> b!1637369 m!1975279))

(declare-fun m!1975381 () Bool)

(assert (=> b!1637369 m!1975381))

(assert (=> b!1637281 d!492922))

(declare-fun d!492924 () Bool)

(assert (=> d!492924 (isPrefix!1435 lt!599381 (++!4829 lt!599381 lt!599377))))

(declare-fun lt!599514 () Unit!29506)

(declare-fun choose!9834 (List!18085 List!18085) Unit!29506)

(assert (=> d!492924 (= lt!599514 (choose!9834 lt!599381 lt!599377))))

(assert (=> d!492924 (= (lemmaConcatTwoListThenFirstIsPrefix!960 lt!599381 lt!599377) lt!599514)))

(declare-fun bs!395449 () Bool)

(assert (= bs!395449 d!492924))

(assert (=> bs!395449 m!1975155))

(assert (=> bs!395449 m!1975155))

(declare-fun m!1975383 () Bool)

(assert (=> bs!395449 m!1975383))

(declare-fun m!1975385 () Bool)

(assert (=> bs!395449 m!1975385))

(assert (=> b!1637281 d!492924))

(declare-fun d!492926 () Bool)

(declare-fun e!1050059 () Bool)

(assert (=> d!492926 e!1050059))

(declare-fun res!733403 () Bool)

(assert (=> d!492926 (=> (not res!733403) (not e!1050059))))

(declare-fun lt!599517 () BalanceConc!11940)

(assert (=> d!492926 (= res!733403 (= (list!7103 lt!599517) (Cons!18015 (apply!4670 (charsOf!1824 (h!23418 (t!149796 tokens!457))) 0) Nil!18015)))))

(declare-fun singleton!699 (C!9180) BalanceConc!11940)

(assert (=> d!492926 (= lt!599517 (singleton!699 (apply!4670 (charsOf!1824 (h!23418 (t!149796 tokens!457))) 0)))))

(assert (=> d!492926 (= (singletonSeq!1629 (apply!4670 (charsOf!1824 (h!23418 (t!149796 tokens!457))) 0)) lt!599517)))

(declare-fun b!1637374 () Bool)

(declare-fun isBalanced!1820 (Conc!5998) Bool)

(assert (=> b!1637374 (= e!1050059 (isBalanced!1820 (c!266364 lt!599517)))))

(assert (= (and d!492926 res!733403) b!1637374))

(declare-fun m!1975387 () Bool)

(assert (=> d!492926 m!1975387))

(assert (=> d!492926 m!1975129))

(declare-fun m!1975389 () Bool)

(assert (=> d!492926 m!1975389))

(declare-fun m!1975391 () Bool)

(assert (=> b!1637374 m!1975391))

(assert (=> b!1637302 d!492926))

(declare-fun lt!599544 () Bool)

(declare-fun d!492928 () Bool)

(assert (=> d!492928 (= lt!599544 (prefixMatch!438 lt!599404 (list!7103 (++!4830 lt!599396 lt!599390))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!18089 0))(
  ( (Nil!18019) (Cons!18019 (h!23420 Regex!4503) (t!149840 List!18089)) )
))
(declare-datatypes ((Context!1764 0))(
  ( (Context!1765 (exprs!1382 List!18089)) )
))
(declare-fun prefixMatchZipperSequence!580 ((InoxSet Context!1764) BalanceConc!11940 Int) Bool)

(declare-fun focus!188 (Regex!4503) (InoxSet Context!1764))

(assert (=> d!492928 (= lt!599544 (prefixMatchZipperSequence!580 (focus!188 lt!599404) (++!4830 lt!599396 lt!599390) 0))))

(declare-fun lt!599541 () Unit!29506)

(declare-fun lt!599538 () Unit!29506)

(assert (=> d!492928 (= lt!599541 lt!599538)))

(declare-fun lt!599546 () List!18085)

(declare-fun lt!599545 () (InoxSet Context!1764))

(declare-fun prefixMatchZipper!167 ((InoxSet Context!1764) List!18085) Bool)

(assert (=> d!492928 (= (prefixMatch!438 lt!599404 lt!599546) (prefixMatchZipper!167 lt!599545 lt!599546))))

(declare-datatypes ((List!18090 0))(
  ( (Nil!18020) (Cons!18020 (h!23421 Context!1764) (t!149841 List!18090)) )
))
(declare-fun lt!599547 () List!18090)

(declare-fun prefixMatchZipperRegexEquiv!167 ((InoxSet Context!1764) List!18090 Regex!4503 List!18085) Unit!29506)

(assert (=> d!492928 (= lt!599538 (prefixMatchZipperRegexEquiv!167 lt!599545 lt!599547 lt!599404 lt!599546))))

(assert (=> d!492928 (= lt!599546 (list!7103 (++!4830 lt!599396 lt!599390)))))

(declare-fun toList!928 ((InoxSet Context!1764)) List!18090)

(assert (=> d!492928 (= lt!599547 (toList!928 (focus!188 lt!599404)))))

(assert (=> d!492928 (= lt!599545 (focus!188 lt!599404))))

(declare-fun lt!599539 () Unit!29506)

(declare-fun lt!599543 () Unit!29506)

(assert (=> d!492928 (= lt!599539 lt!599543)))

(declare-fun lt!599540 () Int)

(declare-fun lt!599542 () (InoxSet Context!1764))

(declare-fun dropList!637 (BalanceConc!11940 Int) List!18085)

(assert (=> d!492928 (= (prefixMatchZipper!167 lt!599542 (dropList!637 (++!4830 lt!599396 lt!599390) lt!599540)) (prefixMatchZipperSequence!580 lt!599542 (++!4830 lt!599396 lt!599390) lt!599540))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!167 ((InoxSet Context!1764) BalanceConc!11940 Int) Unit!29506)

(assert (=> d!492928 (= lt!599543 (lemmaprefixMatchZipperSequenceEquivalent!167 lt!599542 (++!4830 lt!599396 lt!599390) lt!599540))))

(assert (=> d!492928 (= lt!599540 0)))

(assert (=> d!492928 (= lt!599542 (focus!188 lt!599404))))

(assert (=> d!492928 (validRegex!1793 lt!599404)))

(assert (=> d!492928 (= (prefixMatchZipperSequence!579 lt!599404 (++!4830 lt!599396 lt!599390)) lt!599544)))

(declare-fun bs!395450 () Bool)

(assert (= bs!395450 d!492928))

(declare-fun m!1975393 () Bool)

(assert (=> bs!395450 m!1975393))

(declare-fun m!1975395 () Bool)

(assert (=> bs!395450 m!1975395))

(assert (=> bs!395450 m!1975133))

(declare-fun m!1975397 () Bool)

(assert (=> bs!395450 m!1975397))

(assert (=> bs!395450 m!1975133))

(declare-fun m!1975399 () Bool)

(assert (=> bs!395450 m!1975399))

(declare-fun m!1975401 () Bool)

(assert (=> bs!395450 m!1975401))

(declare-fun m!1975403 () Bool)

(assert (=> bs!395450 m!1975403))

(assert (=> bs!395450 m!1975133))

(declare-fun m!1975405 () Bool)

(assert (=> bs!395450 m!1975405))

(declare-fun m!1975407 () Bool)

(assert (=> bs!395450 m!1975407))

(assert (=> bs!395450 m!1975403))

(assert (=> bs!395450 m!1975403))

(declare-fun m!1975409 () Bool)

(assert (=> bs!395450 m!1975409))

(declare-fun m!1975411 () Bool)

(assert (=> bs!395450 m!1975411))

(assert (=> bs!395450 m!1975133))

(declare-fun m!1975413 () Bool)

(assert (=> bs!395450 m!1975413))

(assert (=> bs!395450 m!1975413))

(declare-fun m!1975415 () Bool)

(assert (=> bs!395450 m!1975415))

(declare-fun m!1975417 () Bool)

(assert (=> bs!395450 m!1975417))

(assert (=> bs!395450 m!1975133))

(assert (=> bs!395450 m!1975393))

(assert (=> b!1637302 d!492928))

(declare-fun d!492930 () Bool)

(declare-fun e!1050062 () Bool)

(assert (=> d!492930 e!1050062))

(declare-fun res!733412 () Bool)

(assert (=> d!492930 (=> (not res!733412) (not e!1050062))))

(declare-fun appendAssocInst!450 (Conc!5998 Conc!5998) Bool)

(assert (=> d!492930 (= res!733412 (appendAssocInst!450 (c!266364 lt!599396) (c!266364 lt!599390)))))

(declare-fun lt!599550 () BalanceConc!11940)

(declare-fun ++!4831 (Conc!5998 Conc!5998) Conc!5998)

(assert (=> d!492930 (= lt!599550 (BalanceConc!11941 (++!4831 (c!266364 lt!599396) (c!266364 lt!599390))))))

(assert (=> d!492930 (= (++!4830 lt!599396 lt!599390) lt!599550)))

(declare-fun b!1637384 () Bool)

(declare-fun res!733415 () Bool)

(assert (=> b!1637384 (=> (not res!733415) (not e!1050062))))

(declare-fun height!922 (Conc!5998) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1637384 (= res!733415 (<= (height!922 (++!4831 (c!266364 lt!599396) (c!266364 lt!599390))) (+ (max!0 (height!922 (c!266364 lt!599396)) (height!922 (c!266364 lt!599390))) 1)))))

(declare-fun b!1637385 () Bool)

(declare-fun res!733414 () Bool)

(assert (=> b!1637385 (=> (not res!733414) (not e!1050062))))

(assert (=> b!1637385 (= res!733414 (>= (height!922 (++!4831 (c!266364 lt!599396) (c!266364 lt!599390))) (max!0 (height!922 (c!266364 lt!599396)) (height!922 (c!266364 lt!599390)))))))

(declare-fun b!1637383 () Bool)

(declare-fun res!733413 () Bool)

(assert (=> b!1637383 (=> (not res!733413) (not e!1050062))))

(assert (=> b!1637383 (= res!733413 (isBalanced!1820 (++!4831 (c!266364 lt!599396) (c!266364 lt!599390))))))

(declare-fun b!1637386 () Bool)

(assert (=> b!1637386 (= e!1050062 (= (list!7103 lt!599550) (++!4829 (list!7103 lt!599396) (list!7103 lt!599390))))))

(assert (= (and d!492930 res!733412) b!1637383))

(assert (= (and b!1637383 res!733413) b!1637384))

(assert (= (and b!1637384 res!733415) b!1637385))

(assert (= (and b!1637385 res!733414) b!1637386))

(declare-fun m!1975419 () Bool)

(assert (=> b!1637385 m!1975419))

(declare-fun m!1975421 () Bool)

(assert (=> b!1637385 m!1975421))

(declare-fun m!1975423 () Bool)

(assert (=> b!1637385 m!1975423))

(declare-fun m!1975425 () Bool)

(assert (=> b!1637385 m!1975425))

(assert (=> b!1637385 m!1975421))

(assert (=> b!1637385 m!1975419))

(assert (=> b!1637385 m!1975425))

(declare-fun m!1975427 () Bool)

(assert (=> b!1637385 m!1975427))

(declare-fun m!1975429 () Bool)

(assert (=> b!1637386 m!1975429))

(assert (=> b!1637386 m!1975153))

(assert (=> b!1637386 m!1975121))

(assert (=> b!1637386 m!1975153))

(assert (=> b!1637386 m!1975121))

(declare-fun m!1975431 () Bool)

(assert (=> b!1637386 m!1975431))

(declare-fun m!1975433 () Bool)

(assert (=> d!492930 m!1975433))

(assert (=> d!492930 m!1975421))

(assert (=> b!1637384 m!1975419))

(assert (=> b!1637384 m!1975421))

(assert (=> b!1637384 m!1975423))

(assert (=> b!1637384 m!1975425))

(assert (=> b!1637384 m!1975421))

(assert (=> b!1637384 m!1975419))

(assert (=> b!1637384 m!1975425))

(assert (=> b!1637384 m!1975427))

(assert (=> b!1637383 m!1975421))

(assert (=> b!1637383 m!1975421))

(declare-fun m!1975435 () Bool)

(assert (=> b!1637383 m!1975435))

(assert (=> b!1637302 d!492930))

(declare-fun d!492932 () Bool)

(declare-fun lt!599553 () C!9180)

(declare-fun apply!4672 (List!18085 Int) C!9180)

(assert (=> d!492932 (= lt!599553 (apply!4672 (list!7103 (charsOf!1824 (h!23418 (t!149796 tokens!457)))) 0))))

(declare-fun apply!4673 (Conc!5998 Int) C!9180)

(assert (=> d!492932 (= lt!599553 (apply!4673 (c!266364 (charsOf!1824 (h!23418 (t!149796 tokens!457)))) 0))))

(declare-fun e!1050065 () Bool)

(assert (=> d!492932 e!1050065))

(declare-fun res!733418 () Bool)

(assert (=> d!492932 (=> (not res!733418) (not e!1050065))))

(assert (=> d!492932 (= res!733418 (<= 0 0))))

(assert (=> d!492932 (= (apply!4670 (charsOf!1824 (h!23418 (t!149796 tokens!457))) 0) lt!599553)))

(declare-fun b!1637389 () Bool)

(assert (=> b!1637389 (= e!1050065 (< 0 (size!14364 (charsOf!1824 (h!23418 (t!149796 tokens!457))))))))

(assert (= (and d!492932 res!733418) b!1637389))

(assert (=> d!492932 m!1975139))

(assert (=> d!492932 m!1975305))

(assert (=> d!492932 m!1975305))

(declare-fun m!1975437 () Bool)

(assert (=> d!492932 m!1975437))

(declare-fun m!1975439 () Bool)

(assert (=> d!492932 m!1975439))

(assert (=> b!1637389 m!1975139))

(assert (=> b!1637389 m!1975273))

(assert (=> b!1637302 d!492932))

(declare-fun d!492934 () Bool)

(declare-fun lt!599556 () Unit!29506)

(declare-fun lemma!253 (List!18088 LexerInterface!2804 List!18088) Unit!29506)

(assert (=> d!492934 (= lt!599556 (lemma!253 rules!1846 thiss!17113 rules!1846))))

(declare-fun lambda!67427 () Int)

(declare-fun generalisedUnion!261 (List!18089) Regex!4503)

(declare-fun map!3720 (List!18088 Int) List!18089)

(assert (=> d!492934 (= (rulesRegex!565 thiss!17113 rules!1846) (generalisedUnion!261 (map!3720 rules!1846 lambda!67427)))))

(declare-fun bs!395451 () Bool)

(assert (= bs!395451 d!492934))

(declare-fun m!1975441 () Bool)

(assert (=> bs!395451 m!1975441))

(declare-fun m!1975443 () Bool)

(assert (=> bs!395451 m!1975443))

(assert (=> bs!395451 m!1975443))

(declare-fun m!1975445 () Bool)

(assert (=> bs!395451 m!1975445))

(assert (=> b!1637302 d!492934))

(declare-fun d!492936 () Bool)

(declare-fun lt!599559 () BalanceConc!11940)

(assert (=> d!492936 (= (list!7103 lt!599559) (originalCharacters!3989 (h!23418 (t!149796 tokens!457))))))

(declare-fun dynLambda!8030 (Int TokenValue!3265) BalanceConc!11940)

(assert (=> d!492936 (= lt!599559 (dynLambda!8030 (toChars!4465 (transformation!3175 (rule!5019 (h!23418 (t!149796 tokens!457))))) (value!100160 (h!23418 (t!149796 tokens!457)))))))

(assert (=> d!492936 (= (charsOf!1824 (h!23418 (t!149796 tokens!457))) lt!599559)))

(declare-fun b_lambda!51461 () Bool)

(assert (=> (not b_lambda!51461) (not d!492936)))

(declare-fun tb!93815 () Bool)

(declare-fun t!149800 () Bool)

(assert (=> (and b!1637298 (= (toChars!4465 (transformation!3175 (h!23419 rules!1846))) (toChars!4465 (transformation!3175 (rule!5019 (h!23418 (t!149796 tokens!457)))))) t!149800) tb!93815))

(declare-fun b!1637394 () Bool)

(declare-fun e!1050068 () Bool)

(declare-fun tp!474673 () Bool)

(declare-fun inv!23371 (Conc!5998) Bool)

(assert (=> b!1637394 (= e!1050068 (and (inv!23371 (c!266364 (dynLambda!8030 (toChars!4465 (transformation!3175 (rule!5019 (h!23418 (t!149796 tokens!457))))) (value!100160 (h!23418 (t!149796 tokens!457)))))) tp!474673))))

(declare-fun result!113202 () Bool)

(declare-fun inv!23372 (BalanceConc!11940) Bool)

(assert (=> tb!93815 (= result!113202 (and (inv!23372 (dynLambda!8030 (toChars!4465 (transformation!3175 (rule!5019 (h!23418 (t!149796 tokens!457))))) (value!100160 (h!23418 (t!149796 tokens!457))))) e!1050068))))

(assert (= tb!93815 b!1637394))

(declare-fun m!1975447 () Bool)

(assert (=> b!1637394 m!1975447))

(declare-fun m!1975449 () Bool)

(assert (=> tb!93815 m!1975449))

(assert (=> d!492936 t!149800))

(declare-fun b_and!116053 () Bool)

(assert (= b_and!116047 (and (=> t!149800 result!113202) b_and!116053)))

(declare-fun t!149802 () Bool)

(declare-fun tb!93817 () Bool)

(assert (=> (and b!1637269 (= (toChars!4465 (transformation!3175 (rule!5019 (h!23418 tokens!457)))) (toChars!4465 (transformation!3175 (rule!5019 (h!23418 (t!149796 tokens!457)))))) t!149802) tb!93817))

(declare-fun result!113206 () Bool)

(assert (= result!113206 result!113202))

(assert (=> d!492936 t!149802))

(declare-fun b_and!116055 () Bool)

(assert (= b_and!116051 (and (=> t!149802 result!113206) b_and!116055)))

(declare-fun m!1975451 () Bool)

(assert (=> d!492936 m!1975451))

(declare-fun m!1975453 () Bool)

(assert (=> d!492936 m!1975453))

(assert (=> b!1637302 d!492936))

(declare-fun d!492938 () Bool)

(declare-fun isEmpty!11053 (Option!3389) Bool)

(assert (=> d!492938 (= (isDefined!2756 lt!599400) (not (isEmpty!11053 lt!599400)))))

(declare-fun bs!395452 () Bool)

(assert (= bs!395452 d!492938))

(declare-fun m!1975455 () Bool)

(assert (=> bs!395452 m!1975455))

(assert (=> b!1637301 d!492938))

(declare-fun e!1050074 () Bool)

(declare-fun lt!599608 () Token!5916)

(declare-fun b!1637404 () Bool)

(declare-datatypes ((Option!3392 0))(
  ( (None!3391) (Some!3391 (v!24486 Rule!6150)) )
))
(declare-fun get!5231 (Option!3392) Rule!6150)

(declare-fun getRuleFromTag!300 (LexerInterface!2804 List!18088 String!20657) Option!3392)

(assert (=> b!1637404 (= e!1050074 (= (rule!5019 lt!599608) (get!5231 (getRuleFromTag!300 thiss!17113 rules!1846 (tag!3455 (rule!5019 lt!599608))))))))

(declare-fun b!1637405 () Bool)

(declare-fun e!1050073 () Unit!29506)

(declare-fun Unit!29541 () Unit!29506)

(assert (=> b!1637405 (= e!1050073 Unit!29541)))

(declare-fun lt!599604 () List!18085)

(assert (=> b!1637405 (= lt!599604 (++!4829 lt!599381 lt!599377))))

(declare-fun lt!599600 () Unit!29506)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!193 (LexerInterface!2804 Rule!6150 List!18088 List!18085) Unit!29506)

(assert (=> b!1637405 (= lt!599600 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!193 thiss!17113 (rule!5019 lt!599608) rules!1846 lt!599604))))

(declare-fun maxPrefixOneRule!791 (LexerInterface!2804 Rule!6150 List!18085) Option!3389)

(assert (=> b!1637405 (isEmpty!11053 (maxPrefixOneRule!791 thiss!17113 (rule!5019 lt!599608) lt!599604))))

(declare-fun lt!599597 () Unit!29506)

(assert (=> b!1637405 (= lt!599597 lt!599600)))

(declare-fun lt!599601 () List!18085)

(assert (=> b!1637405 (= lt!599601 (list!7103 (charsOf!1824 lt!599608)))))

(declare-fun lt!599596 () Unit!29506)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!189 (LexerInterface!2804 Rule!6150 List!18085 List!18085) Unit!29506)

(assert (=> b!1637405 (= lt!599596 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!189 thiss!17113 (rule!5019 lt!599608) lt!599601 (++!4829 lt!599381 lt!599377)))))

(assert (=> b!1637405 (not (matchR!2002 (regex!3175 (rule!5019 lt!599608)) lt!599601))))

(declare-fun lt!599599 () Unit!29506)

(assert (=> b!1637405 (= lt!599599 lt!599596)))

(assert (=> b!1637405 false))

(declare-fun d!492940 () Bool)

(assert (=> d!492940 (isDefined!2756 (maxPrefix!1368 thiss!17113 rules!1846 (++!4829 lt!599381 lt!599377)))))

(declare-fun lt!599602 () Unit!29506)

(assert (=> d!492940 (= lt!599602 e!1050073)))

(declare-fun c!266383 () Bool)

(assert (=> d!492940 (= c!266383 (isEmpty!11053 (maxPrefix!1368 thiss!17113 rules!1846 (++!4829 lt!599381 lt!599377))))))

(declare-fun lt!599595 () Unit!29506)

(declare-fun lt!599605 () Unit!29506)

(assert (=> d!492940 (= lt!599595 lt!599605)))

(assert (=> d!492940 e!1050074))

(declare-fun res!733423 () Bool)

(assert (=> d!492940 (=> (not res!733423) (not e!1050074))))

(declare-fun isDefined!2759 (Option!3392) Bool)

(assert (=> d!492940 (= res!733423 (isDefined!2759 (getRuleFromTag!300 thiss!17113 rules!1846 (tag!3455 (rule!5019 lt!599608)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!300 (LexerInterface!2804 List!18088 List!18085 Token!5916) Unit!29506)

(assert (=> d!492940 (= lt!599605 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!300 thiss!17113 rules!1846 lt!599381 lt!599608))))

(declare-fun lt!599598 () Unit!29506)

(declare-fun lt!599607 () Unit!29506)

(assert (=> d!492940 (= lt!599598 lt!599607)))

(declare-fun lt!599609 () List!18085)

(assert (=> d!492940 (isPrefix!1435 lt!599609 (++!4829 lt!599381 lt!599377))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!185 (List!18085 List!18085 List!18085) Unit!29506)

(assert (=> d!492940 (= lt!599607 (lemmaPrefixStaysPrefixWhenAddingToSuffix!185 lt!599609 lt!599381 lt!599377))))

(assert (=> d!492940 (= lt!599609 (list!7103 (charsOf!1824 lt!599608)))))

(declare-fun lt!599603 () Unit!29506)

(declare-fun lt!599594 () Unit!29506)

(assert (=> d!492940 (= lt!599603 lt!599594)))

(declare-fun lt!599606 () List!18085)

(declare-fun lt!599610 () List!18085)

(assert (=> d!492940 (isPrefix!1435 lt!599606 (++!4829 lt!599606 lt!599610))))

(assert (=> d!492940 (= lt!599594 (lemmaConcatTwoListThenFirstIsPrefix!960 lt!599606 lt!599610))))

(assert (=> d!492940 (= lt!599610 (_2!10225 (get!5228 (maxPrefix!1368 thiss!17113 rules!1846 lt!599381))))))

(assert (=> d!492940 (= lt!599606 (list!7103 (charsOf!1824 lt!599608)))))

(declare-fun head!3540 (List!18087) Token!5916)

(assert (=> d!492940 (= lt!599608 (head!3540 (list!7104 (_1!10227 (lex!1288 thiss!17113 rules!1846 (seqFromList!2100 lt!599381))))))))

(assert (=> d!492940 (not (isEmpty!11049 rules!1846))))

(assert (=> d!492940 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!378 thiss!17113 rules!1846 lt!599381 lt!599377) lt!599602)))

(declare-fun b!1637403 () Bool)

(declare-fun res!733424 () Bool)

(assert (=> b!1637403 (=> (not res!733424) (not e!1050074))))

(assert (=> b!1637403 (= res!733424 (matchR!2002 (regex!3175 (get!5231 (getRuleFromTag!300 thiss!17113 rules!1846 (tag!3455 (rule!5019 lt!599608))))) (list!7103 (charsOf!1824 lt!599608))))))

(declare-fun b!1637406 () Bool)

(declare-fun Unit!29547 () Unit!29506)

(assert (=> b!1637406 (= e!1050073 Unit!29547)))

(assert (= (and d!492940 res!733423) b!1637403))

(assert (= (and b!1637403 res!733424) b!1637404))

(assert (= (and d!492940 c!266383) b!1637405))

(assert (= (and d!492940 (not c!266383)) b!1637406))

(declare-fun m!1975457 () Bool)

(assert (=> b!1637404 m!1975457))

(assert (=> b!1637404 m!1975457))

(declare-fun m!1975459 () Bool)

(assert (=> b!1637404 m!1975459))

(declare-fun m!1975461 () Bool)

(assert (=> b!1637405 m!1975461))

(declare-fun m!1975463 () Bool)

(assert (=> b!1637405 m!1975463))

(declare-fun m!1975465 () Bool)

(assert (=> b!1637405 m!1975465))

(declare-fun m!1975467 () Bool)

(assert (=> b!1637405 m!1975467))

(declare-fun m!1975469 () Bool)

(assert (=> b!1637405 m!1975469))

(assert (=> b!1637405 m!1975461))

(assert (=> b!1637405 m!1975465))

(assert (=> b!1637405 m!1975155))

(declare-fun m!1975471 () Bool)

(assert (=> b!1637405 m!1975471))

(assert (=> b!1637405 m!1975155))

(declare-fun m!1975473 () Bool)

(assert (=> b!1637405 m!1975473))

(declare-fun m!1975475 () Bool)

(assert (=> d!492940 m!1975475))

(assert (=> d!492940 m!1975243))

(declare-fun m!1975477 () Bool)

(assert (=> d!492940 m!1975477))

(assert (=> d!492940 m!1975465))

(assert (=> d!492940 m!1975467))

(declare-fun m!1975479 () Bool)

(assert (=> d!492940 m!1975479))

(assert (=> d!492940 m!1975155))

(declare-fun m!1975481 () Bool)

(assert (=> d!492940 m!1975481))

(declare-fun m!1975483 () Bool)

(assert (=> d!492940 m!1975483))

(assert (=> d!492940 m!1975465))

(declare-fun m!1975485 () Bool)

(assert (=> d!492940 m!1975485))

(assert (=> d!492940 m!1975123))

(declare-fun m!1975487 () Bool)

(assert (=> d!492940 m!1975487))

(declare-fun m!1975489 () Bool)

(assert (=> d!492940 m!1975489))

(assert (=> d!492940 m!1975487))

(declare-fun m!1975491 () Bool)

(assert (=> d!492940 m!1975491))

(assert (=> d!492940 m!1975155))

(assert (=> d!492940 m!1975155))

(assert (=> d!492940 m!1975487))

(declare-fun m!1975493 () Bool)

(assert (=> d!492940 m!1975493))

(assert (=> d!492940 m!1975211))

(assert (=> d!492940 m!1975213))

(assert (=> d!492940 m!1975243))

(assert (=> d!492940 m!1975479))

(declare-fun m!1975495 () Bool)

(assert (=> d!492940 m!1975495))

(assert (=> d!492940 m!1975457))

(assert (=> d!492940 m!1975457))

(declare-fun m!1975497 () Bool)

(assert (=> d!492940 m!1975497))

(assert (=> d!492940 m!1975475))

(declare-fun m!1975499 () Bool)

(assert (=> d!492940 m!1975499))

(assert (=> d!492940 m!1975211))

(assert (=> b!1637403 m!1975465))

(assert (=> b!1637403 m!1975467))

(assert (=> b!1637403 m!1975457))

(assert (=> b!1637403 m!1975465))

(assert (=> b!1637403 m!1975467))

(declare-fun m!1975501 () Bool)

(assert (=> b!1637403 m!1975501))

(assert (=> b!1637403 m!1975457))

(assert (=> b!1637403 m!1975459))

(assert (=> b!1637301 d!492940))

(declare-fun b!1637417 () Bool)

(declare-fun e!1050083 () Bool)

(declare-fun inv!17 (TokenValue!3265) Bool)

(assert (=> b!1637417 (= e!1050083 (inv!17 (value!100160 (h!23418 tokens!457))))))

(declare-fun b!1637418 () Bool)

(declare-fun e!1050082 () Bool)

(declare-fun inv!15 (TokenValue!3265) Bool)

(assert (=> b!1637418 (= e!1050082 (inv!15 (value!100160 (h!23418 tokens!457))))))

(declare-fun b!1637419 () Bool)

(declare-fun res!733427 () Bool)

(assert (=> b!1637419 (=> res!733427 e!1050082)))

(assert (=> b!1637419 (= res!733427 (not ((_ is IntegerValue!9797) (value!100160 (h!23418 tokens!457)))))))

(assert (=> b!1637419 (= e!1050083 e!1050082)))

(declare-fun d!492942 () Bool)

(declare-fun c!266388 () Bool)

(assert (=> d!492942 (= c!266388 ((_ is IntegerValue!9795) (value!100160 (h!23418 tokens!457))))))

(declare-fun e!1050081 () Bool)

(assert (=> d!492942 (= (inv!21 (value!100160 (h!23418 tokens!457))) e!1050081)))

(declare-fun b!1637420 () Bool)

(declare-fun inv!16 (TokenValue!3265) Bool)

(assert (=> b!1637420 (= e!1050081 (inv!16 (value!100160 (h!23418 tokens!457))))))

(declare-fun b!1637421 () Bool)

(assert (=> b!1637421 (= e!1050081 e!1050083)))

(declare-fun c!266389 () Bool)

(assert (=> b!1637421 (= c!266389 ((_ is IntegerValue!9796) (value!100160 (h!23418 tokens!457))))))

(assert (= (and d!492942 c!266388) b!1637420))

(assert (= (and d!492942 (not c!266388)) b!1637421))

(assert (= (and b!1637421 c!266389) b!1637417))

(assert (= (and b!1637421 (not c!266389)) b!1637419))

(assert (= (and b!1637419 (not res!733427)) b!1637418))

(declare-fun m!1975503 () Bool)

(assert (=> b!1637417 m!1975503))

(declare-fun m!1975505 () Bool)

(assert (=> b!1637418 m!1975505))

(declare-fun m!1975507 () Bool)

(assert (=> b!1637420 m!1975507))

(assert (=> b!1637280 d!492942))

(declare-fun d!492944 () Bool)

(declare-fun e!1050086 () Bool)

(assert (=> d!492944 e!1050086))

(declare-fun res!733430 () Bool)

(assert (=> d!492944 (=> (not res!733430) (not e!1050086))))

(declare-fun isBalanced!1821 (Conc!5999) Bool)

(declare-fun prepend!719 (Conc!5999 Token!5916) Conc!5999)

(assert (=> d!492944 (= res!733430 (isBalanced!1821 (prepend!719 (c!266365 (seqFromList!2099 (t!149796 (t!149796 tokens!457)))) (h!23418 (t!149796 tokens!457)))))))

(declare-fun lt!599613 () BalanceConc!11942)

(assert (=> d!492944 (= lt!599613 (BalanceConc!11943 (prepend!719 (c!266365 (seqFromList!2099 (t!149796 (t!149796 tokens!457)))) (h!23418 (t!149796 tokens!457)))))))

(assert (=> d!492944 (= (prepend!717 (seqFromList!2099 (t!149796 (t!149796 tokens!457))) (h!23418 (t!149796 tokens!457))) lt!599613)))

(declare-fun b!1637424 () Bool)

(assert (=> b!1637424 (= e!1050086 (= (list!7104 lt!599613) (Cons!18017 (h!23418 (t!149796 tokens!457)) (list!7104 (seqFromList!2099 (t!149796 (t!149796 tokens!457)))))))))

(assert (= (and d!492944 res!733430) b!1637424))

(declare-fun m!1975509 () Bool)

(assert (=> d!492944 m!1975509))

(assert (=> d!492944 m!1975509))

(declare-fun m!1975511 () Bool)

(assert (=> d!492944 m!1975511))

(declare-fun m!1975513 () Bool)

(assert (=> b!1637424 m!1975513))

(assert (=> b!1637424 m!1975261))

(declare-fun m!1975515 () Bool)

(assert (=> b!1637424 m!1975515))

(assert (=> b!1637278 d!492944))

(declare-fun d!492946 () Bool)

(assert (=> d!492946 (= (list!7104 (prepend!717 (seqFromList!2099 (t!149796 (t!149796 tokens!457))) (h!23418 (t!149796 tokens!457)))) (list!7106 (c!266365 (prepend!717 (seqFromList!2099 (t!149796 (t!149796 tokens!457))) (h!23418 (t!149796 tokens!457))))))))

(declare-fun bs!395453 () Bool)

(assert (= bs!395453 d!492946))

(declare-fun m!1975517 () Bool)

(assert (=> bs!395453 m!1975517))

(assert (=> b!1637278 d!492946))

(declare-fun d!492948 () Bool)

(declare-fun fromListB!926 (List!18087) BalanceConc!11942)

(assert (=> d!492948 (= (seqFromList!2099 (t!149796 (t!149796 tokens!457))) (fromListB!926 (t!149796 (t!149796 tokens!457))))))

(declare-fun bs!395454 () Bool)

(assert (= bs!395454 d!492948))

(declare-fun m!1975519 () Bool)

(assert (=> bs!395454 m!1975519))

(assert (=> b!1637278 d!492948))

(declare-fun d!492950 () Bool)

(assert (=> d!492950 (= (list!7104 (_1!10227 lt!599394)) (list!7104 (prepend!717 (seqFromList!2099 (t!149796 (t!149796 tokens!457))) (h!23418 (t!149796 tokens!457)))))))

(declare-fun lt!599616 () Unit!29506)

(declare-fun choose!9835 (Token!5916 List!18087 BalanceConc!11942) Unit!29506)

(assert (=> d!492950 (= lt!599616 (choose!9835 (h!23418 (t!149796 tokens!457)) (t!149796 (t!149796 tokens!457)) (_1!10227 lt!599394)))))

(declare-fun $colon$colon!347 (List!18087 Token!5916) List!18087)

(assert (=> d!492950 (= (list!7104 (_1!10227 lt!599394)) (list!7104 (seqFromList!2099 ($colon$colon!347 (t!149796 (t!149796 tokens!457)) (h!23418 (t!149796 tokens!457))))))))

(assert (=> d!492950 (= (seqFromListBHdTlConstructive!252 (h!23418 (t!149796 tokens!457)) (t!149796 (t!149796 tokens!457)) (_1!10227 lt!599394)) lt!599616)))

(declare-fun bs!395455 () Bool)

(assert (= bs!395455 d!492950))

(assert (=> bs!395455 m!1975173))

(declare-fun m!1975521 () Bool)

(assert (=> bs!395455 m!1975521))

(assert (=> bs!395455 m!1975261))

(assert (=> bs!395455 m!1975263))

(assert (=> bs!395455 m!1975261))

(assert (=> bs!395455 m!1975521))

(declare-fun m!1975523 () Bool)

(assert (=> bs!395455 m!1975523))

(assert (=> bs!395455 m!1975263))

(assert (=> bs!395455 m!1975265))

(assert (=> bs!395455 m!1975523))

(declare-fun m!1975525 () Bool)

(assert (=> bs!395455 m!1975525))

(declare-fun m!1975527 () Bool)

(assert (=> bs!395455 m!1975527))

(assert (=> b!1637278 d!492950))

(declare-fun d!492952 () Bool)

(assert (=> d!492952 (= (list!7104 lt!599389) (list!7106 (c!266365 lt!599389)))))

(declare-fun bs!395456 () Bool)

(assert (= bs!395456 d!492952))

(declare-fun m!1975529 () Bool)

(assert (=> bs!395456 m!1975529))

(assert (=> b!1637278 d!492952))

(declare-fun d!492954 () Bool)

(assert (=> d!492954 true))

(declare-fun lt!599847 () Bool)

(declare-fun lambda!67430 () Int)

(declare-fun forall!4111 (List!18088 Int) Bool)

(assert (=> d!492954 (= lt!599847 (forall!4111 rules!1846 lambda!67430))))

(declare-fun e!1050115 () Bool)

(assert (=> d!492954 (= lt!599847 e!1050115)))

(declare-fun res!733442 () Bool)

(assert (=> d!492954 (=> res!733442 e!1050115)))

(assert (=> d!492954 (= res!733442 (not ((_ is Cons!18018) rules!1846)))))

(assert (=> d!492954 (= (rulesValidInductive!994 thiss!17113 rules!1846) lt!599847)))

(declare-fun b!1637477 () Bool)

(declare-fun e!1050116 () Bool)

(assert (=> b!1637477 (= e!1050115 e!1050116)))

(declare-fun res!733441 () Bool)

(assert (=> b!1637477 (=> (not res!733441) (not e!1050116))))

(declare-fun ruleValid!749 (LexerInterface!2804 Rule!6150) Bool)

(assert (=> b!1637477 (= res!733441 (ruleValid!749 thiss!17113 (h!23419 rules!1846)))))

(declare-fun b!1637478 () Bool)

(assert (=> b!1637478 (= e!1050116 (rulesValidInductive!994 thiss!17113 (t!149797 rules!1846)))))

(assert (= (and d!492954 (not res!733442)) b!1637477))

(assert (= (and b!1637477 res!733441) b!1637478))

(declare-fun m!1975659 () Bool)

(assert (=> d!492954 m!1975659))

(declare-fun m!1975661 () Bool)

(assert (=> b!1637477 m!1975661))

(declare-fun m!1975663 () Bool)

(assert (=> b!1637478 m!1975663))

(assert (=> b!1637300 d!492954))

(declare-fun d!492962 () Bool)

(assert (=> d!492962 (= (head!3538 (originalCharacters!3989 (h!23418 (t!149796 tokens!457)))) (h!23416 (originalCharacters!3989 (h!23418 (t!149796 tokens!457)))))))

(assert (=> b!1637277 d!492962))

(declare-fun d!492964 () Bool)

(declare-fun res!733452 () Bool)

(declare-fun e!1050130 () Bool)

(assert (=> d!492964 (=> (not res!733452) (not e!1050130))))

(assert (=> d!492964 (= res!733452 (not (isEmpty!11048 (originalCharacters!3989 (h!23418 tokens!457)))))))

(assert (=> d!492964 (= (inv!23368 (h!23418 tokens!457)) e!1050130)))

(declare-fun b!1637502 () Bool)

(declare-fun res!733453 () Bool)

(assert (=> b!1637502 (=> (not res!733453) (not e!1050130))))

(assert (=> b!1637502 (= res!733453 (= (originalCharacters!3989 (h!23418 tokens!457)) (list!7103 (dynLambda!8030 (toChars!4465 (transformation!3175 (rule!5019 (h!23418 tokens!457)))) (value!100160 (h!23418 tokens!457))))))))

(declare-fun b!1637503 () Bool)

(assert (=> b!1637503 (= e!1050130 (= (size!14360 (h!23418 tokens!457)) (size!14365 (originalCharacters!3989 (h!23418 tokens!457)))))))

(assert (= (and d!492964 res!733452) b!1637502))

(assert (= (and b!1637502 res!733453) b!1637503))

(declare-fun b_lambda!51463 () Bool)

(assert (=> (not b_lambda!51463) (not b!1637502)))

(declare-fun tb!93819 () Bool)

(declare-fun t!149804 () Bool)

(assert (=> (and b!1637298 (= (toChars!4465 (transformation!3175 (h!23419 rules!1846))) (toChars!4465 (transformation!3175 (rule!5019 (h!23418 tokens!457))))) t!149804) tb!93819))

(declare-fun b!1637505 () Bool)

(declare-fun e!1050132 () Bool)

(declare-fun tp!474674 () Bool)

(assert (=> b!1637505 (= e!1050132 (and (inv!23371 (c!266364 (dynLambda!8030 (toChars!4465 (transformation!3175 (rule!5019 (h!23418 tokens!457)))) (value!100160 (h!23418 tokens!457))))) tp!474674))))

(declare-fun result!113208 () Bool)

(assert (=> tb!93819 (= result!113208 (and (inv!23372 (dynLambda!8030 (toChars!4465 (transformation!3175 (rule!5019 (h!23418 tokens!457)))) (value!100160 (h!23418 tokens!457)))) e!1050132))))

(assert (= tb!93819 b!1637505))

(declare-fun m!1975675 () Bool)

(assert (=> b!1637505 m!1975675))

(declare-fun m!1975677 () Bool)

(assert (=> tb!93819 m!1975677))

(assert (=> b!1637502 t!149804))

(declare-fun b_and!116057 () Bool)

(assert (= b_and!116053 (and (=> t!149804 result!113208) b_and!116057)))

(declare-fun t!149806 () Bool)

(declare-fun tb!93821 () Bool)

(assert (=> (and b!1637269 (= (toChars!4465 (transformation!3175 (rule!5019 (h!23418 tokens!457)))) (toChars!4465 (transformation!3175 (rule!5019 (h!23418 tokens!457))))) t!149806) tb!93821))

(declare-fun result!113210 () Bool)

(assert (= result!113210 result!113208))

(assert (=> b!1637502 t!149806))

(declare-fun b_and!116059 () Bool)

(assert (= b_and!116055 (and (=> t!149806 result!113210) b_and!116059)))

(declare-fun m!1975679 () Bool)

(assert (=> d!492964 m!1975679))

(declare-fun m!1975681 () Bool)

(assert (=> b!1637502 m!1975681))

(assert (=> b!1637502 m!1975681))

(declare-fun m!1975683 () Bool)

(assert (=> b!1637502 m!1975683))

(declare-fun m!1975685 () Bool)

(assert (=> b!1637503 m!1975685))

(assert (=> b!1637299 d!492964))

(declare-fun d!492972 () Bool)

(assert (=> d!492972 (= (isEmpty!11049 rules!1846) ((_ is Nil!18018) rules!1846))))

(assert (=> b!1637297 d!492972))

(declare-fun d!492974 () Bool)

(declare-fun lt!599850 () Bool)

(declare-fun isEmpty!11055 (List!18087) Bool)

(assert (=> d!492974 (= lt!599850 (isEmpty!11055 (list!7104 (_1!10227 (lex!1288 thiss!17113 rules!1846 (seqFromList!2100 lt!599381))))))))

(declare-fun isEmpty!11056 (Conc!5999) Bool)

(assert (=> d!492974 (= lt!599850 (isEmpty!11056 (c!266365 (_1!10227 (lex!1288 thiss!17113 rules!1846 (seqFromList!2100 lt!599381))))))))

(assert (=> d!492974 (= (isEmpty!11047 (_1!10227 (lex!1288 thiss!17113 rules!1846 (seqFromList!2100 lt!599381)))) lt!599850)))

(declare-fun bs!395457 () Bool)

(assert (= bs!395457 d!492974))

(assert (=> bs!395457 m!1975479))

(assert (=> bs!395457 m!1975479))

(declare-fun m!1975687 () Bool)

(assert (=> bs!395457 m!1975687))

(declare-fun m!1975689 () Bool)

(assert (=> bs!395457 m!1975689))

(assert (=> b!1637276 d!492974))

(declare-fun b!1637516 () Bool)

(declare-fun e!1050141 () Bool)

(declare-fun lt!599853 () tuple2!17650)

(assert (=> b!1637516 (= e!1050141 (= (_2!10227 lt!599853) (seqFromList!2100 lt!599381)))))

(declare-fun b!1637517 () Bool)

(declare-fun e!1050140 () Bool)

(assert (=> b!1637517 (= e!1050141 e!1050140)))

(declare-fun res!733462 () Bool)

(assert (=> b!1637517 (= res!733462 (< (size!14364 (_2!10227 lt!599853)) (size!14364 (seqFromList!2100 lt!599381))))))

(assert (=> b!1637517 (=> (not res!733462) (not e!1050140))))

(declare-fun b!1637518 () Bool)

(assert (=> b!1637518 (= e!1050140 (not (isEmpty!11047 (_1!10227 lt!599853))))))

(declare-fun b!1637519 () Bool)

(declare-fun res!733461 () Bool)

(declare-fun e!1050139 () Bool)

(assert (=> b!1637519 (=> (not res!733461) (not e!1050139))))

(declare-datatypes ((tuple2!17654 0))(
  ( (tuple2!17655 (_1!10229 List!18087) (_2!10229 List!18085)) )
))
(declare-fun lexList!845 (LexerInterface!2804 List!18088 List!18085) tuple2!17654)

(assert (=> b!1637519 (= res!733461 (= (list!7104 (_1!10227 lt!599853)) (_1!10229 (lexList!845 thiss!17113 rules!1846 (list!7103 (seqFromList!2100 lt!599381))))))))

(declare-fun b!1637520 () Bool)

(assert (=> b!1637520 (= e!1050139 (= (list!7103 (_2!10227 lt!599853)) (_2!10229 (lexList!845 thiss!17113 rules!1846 (list!7103 (seqFromList!2100 lt!599381))))))))

(declare-fun d!492976 () Bool)

(assert (=> d!492976 e!1050139))

(declare-fun res!733463 () Bool)

(assert (=> d!492976 (=> (not res!733463) (not e!1050139))))

(assert (=> d!492976 (= res!733463 e!1050141)))

(declare-fun c!266420 () Bool)

(declare-fun size!14366 (BalanceConc!11942) Int)

(assert (=> d!492976 (= c!266420 (> (size!14366 (_1!10227 lt!599853)) 0))))

(declare-fun lexTailRecV2!568 (LexerInterface!2804 List!18088 BalanceConc!11940 BalanceConc!11940 BalanceConc!11940 BalanceConc!11942) tuple2!17650)

(assert (=> d!492976 (= lt!599853 (lexTailRecV2!568 thiss!17113 rules!1846 (seqFromList!2100 lt!599381) (BalanceConc!11941 Empty!5998) (seqFromList!2100 lt!599381) (BalanceConc!11943 Empty!5999)))))

(assert (=> d!492976 (= (lex!1288 thiss!17113 rules!1846 (seqFromList!2100 lt!599381)) lt!599853)))

(assert (= (and d!492976 c!266420) b!1637517))

(assert (= (and d!492976 (not c!266420)) b!1637516))

(assert (= (and b!1637517 res!733462) b!1637518))

(assert (= (and d!492976 res!733463) b!1637519))

(assert (= (and b!1637519 res!733461) b!1637520))

(declare-fun m!1975691 () Bool)

(assert (=> b!1637518 m!1975691))

(declare-fun m!1975693 () Bool)

(assert (=> b!1637520 m!1975693))

(assert (=> b!1637520 m!1975211))

(declare-fun m!1975695 () Bool)

(assert (=> b!1637520 m!1975695))

(assert (=> b!1637520 m!1975695))

(declare-fun m!1975697 () Bool)

(assert (=> b!1637520 m!1975697))

(declare-fun m!1975699 () Bool)

(assert (=> b!1637519 m!1975699))

(assert (=> b!1637519 m!1975211))

(assert (=> b!1637519 m!1975695))

(assert (=> b!1637519 m!1975695))

(assert (=> b!1637519 m!1975697))

(declare-fun m!1975701 () Bool)

(assert (=> d!492976 m!1975701))

(assert (=> d!492976 m!1975211))

(assert (=> d!492976 m!1975211))

(declare-fun m!1975703 () Bool)

(assert (=> d!492976 m!1975703))

(declare-fun m!1975705 () Bool)

(assert (=> b!1637517 m!1975705))

(assert (=> b!1637517 m!1975211))

(declare-fun m!1975707 () Bool)

(assert (=> b!1637517 m!1975707))

(assert (=> b!1637276 d!492976))

(declare-fun d!492978 () Bool)

(declare-fun fromListB!927 (List!18085) BalanceConc!11940)

(assert (=> d!492978 (= (seqFromList!2100 lt!599381) (fromListB!927 lt!599381))))

(declare-fun bs!395458 () Bool)

(assert (= bs!395458 d!492978))

(declare-fun m!1975709 () Bool)

(assert (=> bs!395458 m!1975709))

(assert (=> b!1637276 d!492978))

(declare-fun d!492980 () Bool)

(declare-fun res!733466 () Bool)

(declare-fun e!1050144 () Bool)

(assert (=> d!492980 (=> (not res!733466) (not e!1050144))))

(declare-fun rulesValid!1143 (LexerInterface!2804 List!18088) Bool)

(assert (=> d!492980 (= res!733466 (rulesValid!1143 thiss!17113 rules!1846))))

(assert (=> d!492980 (= (rulesInvariant!2473 thiss!17113 rules!1846) e!1050144)))

(declare-fun b!1637523 () Bool)

(declare-datatypes ((List!18091 0))(
  ( (Nil!18021) (Cons!18021 (h!23422 String!20657) (t!149842 List!18091)) )
))
(declare-fun noDuplicateTag!1143 (LexerInterface!2804 List!18088 List!18091) Bool)

(assert (=> b!1637523 (= e!1050144 (noDuplicateTag!1143 thiss!17113 rules!1846 Nil!18021))))

(assert (= (and d!492980 res!733466) b!1637523))

(declare-fun m!1975711 () Bool)

(assert (=> d!492980 m!1975711))

(declare-fun m!1975713 () Bool)

(assert (=> b!1637523 m!1975713))

(assert (=> b!1637274 d!492980))

(declare-fun d!492982 () Bool)

(declare-fun lt!599880 () BalanceConc!11940)

(assert (=> d!492982 (= (list!7103 lt!599880) (printList!919 thiss!17113 (list!7104 (seqFromList!2099 tokens!457))))))

(assert (=> d!492982 (= lt!599880 (printTailRec!857 thiss!17113 (seqFromList!2099 tokens!457) 0 (BalanceConc!11941 Empty!5998)))))

(assert (=> d!492982 (= (print!1335 thiss!17113 (seqFromList!2099 tokens!457)) lt!599880)))

(declare-fun bs!395460 () Bool)

(assert (= bs!395460 d!492982))

(declare-fun m!1975731 () Bool)

(assert (=> bs!395460 m!1975731))

(assert (=> bs!395460 m!1975161))

(declare-fun m!1975733 () Bool)

(assert (=> bs!395460 m!1975733))

(assert (=> bs!395460 m!1975733))

(declare-fun m!1975735 () Bool)

(assert (=> bs!395460 m!1975735))

(assert (=> bs!395460 m!1975161))

(declare-fun m!1975737 () Bool)

(assert (=> bs!395460 m!1975737))

(assert (=> b!1637275 d!492982))

(declare-fun d!492988 () Bool)

(declare-fun list!7108 (Conc!5998) List!18085)

(assert (=> d!492988 (= (list!7103 lt!599406) (list!7108 (c!266364 lt!599406)))))

(declare-fun bs!395461 () Bool)

(assert (= bs!395461 d!492988))

(declare-fun m!1975739 () Bool)

(assert (=> bs!395461 m!1975739))

(assert (=> b!1637275 d!492988))

(declare-fun d!492990 () Bool)

(assert (=> d!492990 (= (list!7103 lt!599396) (list!7108 (c!266364 lt!599396)))))

(declare-fun bs!395462 () Bool)

(assert (= bs!395462 d!492990))

(declare-fun m!1975741 () Bool)

(assert (=> bs!395462 m!1975741))

(assert (=> b!1637275 d!492990))

(declare-fun b!1637540 () Bool)

(declare-fun res!733478 () Bool)

(declare-fun e!1050156 () Bool)

(assert (=> b!1637540 (=> (not res!733478) (not e!1050156))))

(declare-fun lt!599883 () List!18085)

(assert (=> b!1637540 (= res!733478 (= (size!14365 lt!599883) (+ (size!14365 lt!599381) (size!14365 lt!599377))))))

(declare-fun b!1637541 () Bool)

(assert (=> b!1637541 (= e!1050156 (or (not (= lt!599377 Nil!18015)) (= lt!599883 lt!599381)))))

(declare-fun b!1637539 () Bool)

(declare-fun e!1050155 () List!18085)

(assert (=> b!1637539 (= e!1050155 (Cons!18015 (h!23416 lt!599381) (++!4829 (t!149794 lt!599381) lt!599377)))))

(declare-fun d!492992 () Bool)

(assert (=> d!492992 e!1050156))

(declare-fun res!733477 () Bool)

(assert (=> d!492992 (=> (not res!733477) (not e!1050156))))

(declare-fun content!2495 (List!18085) (InoxSet C!9180))

(assert (=> d!492992 (= res!733477 (= (content!2495 lt!599883) ((_ map or) (content!2495 lt!599381) (content!2495 lt!599377))))))

(assert (=> d!492992 (= lt!599883 e!1050155)))

(declare-fun c!266423 () Bool)

(assert (=> d!492992 (= c!266423 ((_ is Nil!18015) lt!599381))))

(assert (=> d!492992 (= (++!4829 lt!599381 lt!599377) lt!599883)))

(declare-fun b!1637538 () Bool)

(assert (=> b!1637538 (= e!1050155 lt!599377)))

(assert (= (and d!492992 c!266423) b!1637538))

(assert (= (and d!492992 (not c!266423)) b!1637539))

(assert (= (and d!492992 res!733477) b!1637540))

(assert (= (and b!1637540 res!733478) b!1637541))

(declare-fun m!1975743 () Bool)

(assert (=> b!1637540 m!1975743))

(assert (=> b!1637540 m!1975375))

(declare-fun m!1975745 () Bool)

(assert (=> b!1637540 m!1975745))

(declare-fun m!1975747 () Bool)

(assert (=> b!1637539 m!1975747))

(declare-fun m!1975749 () Bool)

(assert (=> d!492992 m!1975749))

(declare-fun m!1975751 () Bool)

(assert (=> d!492992 m!1975751))

(declare-fun m!1975753 () Bool)

(assert (=> d!492992 m!1975753))

(assert (=> b!1637275 d!492992))

(declare-fun b!1637542 () Bool)

(declare-fun e!1050159 () Bool)

(declare-fun lt!599884 () tuple2!17650)

(assert (=> b!1637542 (= e!1050159 (= (_2!10227 lt!599884) lt!599391))))

(declare-fun b!1637543 () Bool)

(declare-fun e!1050158 () Bool)

(assert (=> b!1637543 (= e!1050159 e!1050158)))

(declare-fun res!733480 () Bool)

(assert (=> b!1637543 (= res!733480 (< (size!14364 (_2!10227 lt!599884)) (size!14364 lt!599391)))))

(assert (=> b!1637543 (=> (not res!733480) (not e!1050158))))

(declare-fun b!1637544 () Bool)

(assert (=> b!1637544 (= e!1050158 (not (isEmpty!11047 (_1!10227 lt!599884))))))

(declare-fun b!1637545 () Bool)

(declare-fun res!733479 () Bool)

(declare-fun e!1050157 () Bool)

(assert (=> b!1637545 (=> (not res!733479) (not e!1050157))))

(assert (=> b!1637545 (= res!733479 (= (list!7104 (_1!10227 lt!599884)) (_1!10229 (lexList!845 thiss!17113 rules!1846 (list!7103 lt!599391)))))))

(declare-fun b!1637546 () Bool)

(assert (=> b!1637546 (= e!1050157 (= (list!7103 (_2!10227 lt!599884)) (_2!10229 (lexList!845 thiss!17113 rules!1846 (list!7103 lt!599391)))))))

(declare-fun d!492994 () Bool)

(assert (=> d!492994 e!1050157))

(declare-fun res!733481 () Bool)

(assert (=> d!492994 (=> (not res!733481) (not e!1050157))))

(assert (=> d!492994 (= res!733481 e!1050159)))

(declare-fun c!266424 () Bool)

(assert (=> d!492994 (= c!266424 (> (size!14366 (_1!10227 lt!599884)) 0))))

(assert (=> d!492994 (= lt!599884 (lexTailRecV2!568 thiss!17113 rules!1846 lt!599391 (BalanceConc!11941 Empty!5998) lt!599391 (BalanceConc!11943 Empty!5999)))))

(assert (=> d!492994 (= (lex!1288 thiss!17113 rules!1846 lt!599391) lt!599884)))

(assert (= (and d!492994 c!266424) b!1637543))

(assert (= (and d!492994 (not c!266424)) b!1637542))

(assert (= (and b!1637543 res!733480) b!1637544))

(assert (= (and d!492994 res!733481) b!1637545))

(assert (= (and b!1637545 res!733479) b!1637546))

(declare-fun m!1975755 () Bool)

(assert (=> b!1637544 m!1975755))

(declare-fun m!1975757 () Bool)

(assert (=> b!1637546 m!1975757))

(assert (=> b!1637546 m!1975167))

(assert (=> b!1637546 m!1975167))

(declare-fun m!1975759 () Bool)

(assert (=> b!1637546 m!1975759))

(declare-fun m!1975761 () Bool)

(assert (=> b!1637545 m!1975761))

(assert (=> b!1637545 m!1975167))

(assert (=> b!1637545 m!1975167))

(assert (=> b!1637545 m!1975759))

(declare-fun m!1975763 () Bool)

(assert (=> d!492994 m!1975763))

(declare-fun m!1975765 () Bool)

(assert (=> d!492994 m!1975765))

(declare-fun m!1975767 () Bool)

(assert (=> b!1637543 m!1975767))

(declare-fun m!1975769 () Bool)

(assert (=> b!1637543 m!1975769))

(assert (=> b!1637275 d!492994))

(declare-fun d!492996 () Bool)

(declare-fun lt!599885 () BalanceConc!11940)

(assert (=> d!492996 (= (list!7103 lt!599885) (printList!919 thiss!17113 (list!7104 lt!599389)))))

(assert (=> d!492996 (= lt!599885 (printTailRec!857 thiss!17113 lt!599389 0 (BalanceConc!11941 Empty!5998)))))

(assert (=> d!492996 (= (print!1335 thiss!17113 lt!599389) lt!599885)))

(declare-fun bs!395463 () Bool)

(assert (= bs!395463 d!492996))

(declare-fun m!1975771 () Bool)

(assert (=> bs!395463 m!1975771))

(assert (=> bs!395463 m!1975267))

(assert (=> bs!395463 m!1975267))

(declare-fun m!1975773 () Bool)

(assert (=> bs!395463 m!1975773))

(declare-fun m!1975775 () Bool)

(assert (=> bs!395463 m!1975775))

(assert (=> b!1637275 d!492996))

(declare-fun d!492998 () Bool)

(assert (=> d!492998 (= (seqFromList!2099 tokens!457) (fromListB!926 tokens!457))))

(declare-fun bs!395464 () Bool)

(assert (= bs!395464 d!492998))

(declare-fun m!1975777 () Bool)

(assert (=> bs!395464 m!1975777))

(assert (=> b!1637275 d!492998))

(declare-fun d!493000 () Bool)

(assert (=> d!493000 (= (list!7103 lt!599391) (list!7108 (c!266364 lt!599391)))))

(declare-fun bs!395465 () Bool)

(assert (= bs!395465 d!493000))

(declare-fun m!1975779 () Bool)

(assert (=> bs!395465 m!1975779))

(assert (=> b!1637275 d!493000))

(declare-fun d!493002 () Bool)

(declare-fun lt!599886 () BalanceConc!11940)

(assert (=> d!493002 (= (list!7103 lt!599886) (originalCharacters!3989 (h!23418 tokens!457)))))

(assert (=> d!493002 (= lt!599886 (dynLambda!8030 (toChars!4465 (transformation!3175 (rule!5019 (h!23418 tokens!457)))) (value!100160 (h!23418 tokens!457))))))

(assert (=> d!493002 (= (charsOf!1824 (h!23418 tokens!457)) lt!599886)))

(declare-fun b_lambda!51465 () Bool)

(assert (=> (not b_lambda!51465) (not d!493002)))

(assert (=> d!493002 t!149804))

(declare-fun b_and!116061 () Bool)

(assert (= b_and!116057 (and (=> t!149804 result!113208) b_and!116061)))

(assert (=> d!493002 t!149806))

(declare-fun b_and!116063 () Bool)

(assert (= b_and!116059 (and (=> t!149806 result!113210) b_and!116063)))

(declare-fun m!1975781 () Bool)

(assert (=> d!493002 m!1975781))

(assert (=> d!493002 m!1975681))

(assert (=> b!1637275 d!493002))

(declare-fun d!493004 () Bool)

(assert (=> d!493004 (= (seqFromList!2099 (t!149796 tokens!457)) (fromListB!926 (t!149796 tokens!457)))))

(declare-fun bs!395466 () Bool)

(assert (= bs!395466 d!493004))

(declare-fun m!1975783 () Bool)

(assert (=> bs!395466 m!1975783))

(assert (=> b!1637275 d!493004))

(declare-fun d!493006 () Bool)

(assert (=> d!493006 (= (inv!23364 (tag!3455 (h!23419 rules!1846))) (= (mod (str.len (value!100159 (tag!3455 (h!23419 rules!1846)))) 2) 0))))

(assert (=> b!1637296 d!493006))

(declare-fun d!493008 () Bool)

(declare-fun res!733484 () Bool)

(declare-fun e!1050162 () Bool)

(assert (=> d!493008 (=> (not res!733484) (not e!1050162))))

(declare-fun semiInverseModEq!1216 (Int Int) Bool)

(assert (=> d!493008 (= res!733484 (semiInverseModEq!1216 (toChars!4465 (transformation!3175 (h!23419 rules!1846))) (toValue!4606 (transformation!3175 (h!23419 rules!1846)))))))

(assert (=> d!493008 (= (inv!23367 (transformation!3175 (h!23419 rules!1846))) e!1050162)))

(declare-fun b!1637549 () Bool)

(declare-fun equivClasses!1157 (Int Int) Bool)

(assert (=> b!1637549 (= e!1050162 (equivClasses!1157 (toChars!4465 (transformation!3175 (h!23419 rules!1846))) (toValue!4606 (transformation!3175 (h!23419 rules!1846)))))))

(assert (= (and d!493008 res!733484) b!1637549))

(declare-fun m!1975785 () Bool)

(assert (=> d!493008 m!1975785))

(declare-fun m!1975787 () Bool)

(assert (=> b!1637549 m!1975787))

(assert (=> b!1637296 d!493008))

(declare-fun b!1637623 () Bool)

(declare-fun e!1050207 () Bool)

(assert (=> b!1637623 (= e!1050207 true)))

(declare-fun b!1637622 () Bool)

(declare-fun e!1050206 () Bool)

(assert (=> b!1637622 (= e!1050206 e!1050207)))

(declare-fun b!1637621 () Bool)

(declare-fun e!1050205 () Bool)

(assert (=> b!1637621 (= e!1050205 e!1050206)))

(declare-fun d!493010 () Bool)

(assert (=> d!493010 e!1050205))

(assert (= b!1637622 b!1637623))

(assert (= b!1637621 b!1637622))

(assert (= (and d!493010 ((_ is Cons!18018) rules!1846)) b!1637621))

(declare-fun order!10679 () Int)

(declare-fun order!10677 () Int)

(declare-fun lambda!67433 () Int)

(declare-fun dynLambda!8031 (Int Int) Int)

(declare-fun dynLambda!8032 (Int Int) Int)

(assert (=> b!1637623 (< (dynLambda!8031 order!10677 (toValue!4606 (transformation!3175 (h!23419 rules!1846)))) (dynLambda!8032 order!10679 lambda!67433))))

(declare-fun order!10681 () Int)

(declare-fun dynLambda!8033 (Int Int) Int)

(assert (=> b!1637623 (< (dynLambda!8033 order!10681 (toChars!4465 (transformation!3175 (h!23419 rules!1846)))) (dynLambda!8032 order!10679 lambda!67433))))

(assert (=> d!493010 true))

(declare-fun lt!599897 () Bool)

(declare-fun forall!4112 (List!18087 Int) Bool)

(assert (=> d!493010 (= lt!599897 (forall!4112 tokens!457 lambda!67433))))

(declare-fun e!1050198 () Bool)

(assert (=> d!493010 (= lt!599897 e!1050198)))

(declare-fun res!733523 () Bool)

(assert (=> d!493010 (=> res!733523 e!1050198)))

(assert (=> d!493010 (= res!733523 (not ((_ is Cons!18017) tokens!457)))))

(assert (=> d!493010 (not (isEmpty!11049 rules!1846))))

(assert (=> d!493010 (= (rulesProduceEachTokenIndividuallyList!1006 thiss!17113 rules!1846 tokens!457) lt!599897)))

(declare-fun b!1637611 () Bool)

(declare-fun e!1050197 () Bool)

(assert (=> b!1637611 (= e!1050198 e!1050197)))

(declare-fun res!733522 () Bool)

(assert (=> b!1637611 (=> (not res!733522) (not e!1050197))))

(assert (=> b!1637611 (= res!733522 (rulesProduceIndividualToken!1456 thiss!17113 rules!1846 (h!23418 tokens!457)))))

(declare-fun b!1637612 () Bool)

(assert (=> b!1637612 (= e!1050197 (rulesProduceEachTokenIndividuallyList!1006 thiss!17113 rules!1846 (t!149796 tokens!457)))))

(assert (= (and d!493010 (not res!733523)) b!1637611))

(assert (= (and b!1637611 res!733522) b!1637612))

(declare-fun m!1975835 () Bool)

(assert (=> d!493010 m!1975835))

(assert (=> d!493010 m!1975123))

(assert (=> b!1637611 m!1975255))

(declare-fun m!1975837 () Bool)

(assert (=> b!1637612 m!1975837))

(assert (=> b!1637273 d!493010))

(declare-fun d!493022 () Bool)

(assert (=> d!493022 (= (isEmpty!11048 (_2!10225 lt!599388)) ((_ is Nil!18015) (_2!10225 lt!599388)))))

(assert (=> b!1637294 d!493022))

(declare-fun d!493024 () Bool)

(declare-fun c!266440 () Bool)

(assert (=> d!493024 (= c!266440 (isEmpty!11048 (++!4829 lt!599381 lt!599403)))))

(declare-fun e!1050213 () Bool)

(assert (=> d!493024 (= (prefixMatch!438 lt!599404 (++!4829 lt!599381 lt!599403)) e!1050213)))

(declare-fun b!1637633 () Bool)

(declare-fun lostCause!454 (Regex!4503) Bool)

(assert (=> b!1637633 (= e!1050213 (not (lostCause!454 lt!599404)))))

(declare-fun b!1637634 () Bool)

(assert (=> b!1637634 (= e!1050213 (prefixMatch!438 (derivativeStep!1098 lt!599404 (head!3538 (++!4829 lt!599381 lt!599403))) (tail!2395 (++!4829 lt!599381 lt!599403))))))

(assert (= (and d!493024 c!266440) b!1637633))

(assert (= (and d!493024 (not c!266440)) b!1637634))

(assert (=> d!493024 m!1975117))

(declare-fun m!1975847 () Bool)

(assert (=> d!493024 m!1975847))

(declare-fun m!1975849 () Bool)

(assert (=> b!1637633 m!1975849))

(assert (=> b!1637634 m!1975117))

(declare-fun m!1975851 () Bool)

(assert (=> b!1637634 m!1975851))

(assert (=> b!1637634 m!1975851))

(declare-fun m!1975853 () Bool)

(assert (=> b!1637634 m!1975853))

(assert (=> b!1637634 m!1975117))

(declare-fun m!1975855 () Bool)

(assert (=> b!1637634 m!1975855))

(assert (=> b!1637634 m!1975853))

(assert (=> b!1637634 m!1975855))

(declare-fun m!1975857 () Bool)

(assert (=> b!1637634 m!1975857))

(assert (=> b!1637295 d!493024))

(declare-fun b!1637637 () Bool)

(declare-fun res!733528 () Bool)

(declare-fun e!1050215 () Bool)

(assert (=> b!1637637 (=> (not res!733528) (not e!1050215))))

(declare-fun lt!599902 () List!18085)

(assert (=> b!1637637 (= res!733528 (= (size!14365 lt!599902) (+ (size!14365 lt!599381) (size!14365 lt!599403))))))

(declare-fun b!1637638 () Bool)

(assert (=> b!1637638 (= e!1050215 (or (not (= lt!599403 Nil!18015)) (= lt!599902 lt!599381)))))

(declare-fun b!1637636 () Bool)

(declare-fun e!1050214 () List!18085)

(assert (=> b!1637636 (= e!1050214 (Cons!18015 (h!23416 lt!599381) (++!4829 (t!149794 lt!599381) lt!599403)))))

(declare-fun d!493028 () Bool)

(assert (=> d!493028 e!1050215))

(declare-fun res!733527 () Bool)

(assert (=> d!493028 (=> (not res!733527) (not e!1050215))))

(assert (=> d!493028 (= res!733527 (= (content!2495 lt!599902) ((_ map or) (content!2495 lt!599381) (content!2495 lt!599403))))))

(assert (=> d!493028 (= lt!599902 e!1050214)))

(declare-fun c!266441 () Bool)

(assert (=> d!493028 (= c!266441 ((_ is Nil!18015) lt!599381))))

(assert (=> d!493028 (= (++!4829 lt!599381 lt!599403) lt!599902)))

(declare-fun b!1637635 () Bool)

(assert (=> b!1637635 (= e!1050214 lt!599403)))

(assert (= (and d!493028 c!266441) b!1637635))

(assert (= (and d!493028 (not c!266441)) b!1637636))

(assert (= (and d!493028 res!733527) b!1637637))

(assert (= (and b!1637637 res!733528) b!1637638))

(declare-fun m!1975859 () Bool)

(assert (=> b!1637637 m!1975859))

(assert (=> b!1637637 m!1975375))

(declare-fun m!1975861 () Bool)

(assert (=> b!1637637 m!1975861))

(declare-fun m!1975863 () Bool)

(assert (=> b!1637636 m!1975863))

(declare-fun m!1975865 () Bool)

(assert (=> d!493028 m!1975865))

(assert (=> d!493028 m!1975751))

(declare-fun m!1975867 () Bool)

(assert (=> d!493028 m!1975867))

(assert (=> b!1637295 d!493028))

(declare-fun d!493030 () Bool)

(assert (=> d!493030 (= (list!7103 lt!599390) (list!7108 (c!266364 lt!599390)))))

(declare-fun bs!395470 () Bool)

(assert (= bs!395470 d!493030))

(declare-fun m!1975869 () Bool)

(assert (=> bs!395470 m!1975869))

(assert (=> b!1637295 d!493030))

(declare-fun d!493032 () Bool)

(declare-fun lt!599903 () BalanceConc!11940)

(assert (=> d!493032 (= (list!7103 lt!599903) (printList!919 thiss!17113 (list!7104 lt!599398)))))

(assert (=> d!493032 (= lt!599903 (printTailRec!857 thiss!17113 lt!599398 0 (BalanceConc!11941 Empty!5998)))))

(assert (=> d!493032 (= (print!1335 thiss!17113 lt!599398) lt!599903)))

(declare-fun bs!395472 () Bool)

(assert (= bs!395472 d!493032))

(declare-fun m!1975873 () Bool)

(assert (=> bs!395472 m!1975873))

(declare-fun m!1975875 () Bool)

(assert (=> bs!395472 m!1975875))

(assert (=> bs!395472 m!1975875))

(declare-fun m!1975877 () Bool)

(assert (=> bs!395472 m!1975877))

(assert (=> bs!395472 m!1975231))

(assert (=> b!1637293 d!493032))

(declare-fun d!493036 () Bool)

(declare-fun lt!599918 () BalanceConc!11940)

(declare-fun printListTailRec!370 (LexerInterface!2804 List!18087 List!18085) List!18085)

(declare-fun dropList!639 (BalanceConc!11942 Int) List!18087)

(assert (=> d!493036 (= (list!7103 lt!599918) (printListTailRec!370 thiss!17113 (dropList!639 lt!599398 0) (list!7103 (BalanceConc!11941 Empty!5998))))))

(declare-fun e!1050221 () BalanceConc!11940)

(assert (=> d!493036 (= lt!599918 e!1050221)))

(declare-fun c!266444 () Bool)

(assert (=> d!493036 (= c!266444 (>= 0 (size!14366 lt!599398)))))

(declare-fun e!1050220 () Bool)

(assert (=> d!493036 e!1050220))

(declare-fun res!733531 () Bool)

(assert (=> d!493036 (=> (not res!733531) (not e!1050220))))

(assert (=> d!493036 (= res!733531 (>= 0 0))))

(assert (=> d!493036 (= (printTailRec!857 thiss!17113 lt!599398 0 (BalanceConc!11941 Empty!5998)) lt!599918)))

(declare-fun b!1637645 () Bool)

(assert (=> b!1637645 (= e!1050220 (<= 0 (size!14366 lt!599398)))))

(declare-fun b!1637646 () Bool)

(assert (=> b!1637646 (= e!1050221 (BalanceConc!11941 Empty!5998))))

(declare-fun b!1637647 () Bool)

(declare-fun apply!4675 (BalanceConc!11942 Int) Token!5916)

(assert (=> b!1637647 (= e!1050221 (printTailRec!857 thiss!17113 lt!599398 (+ 0 1) (++!4830 (BalanceConc!11941 Empty!5998) (charsOf!1824 (apply!4675 lt!599398 0)))))))

(declare-fun lt!599921 () List!18087)

(assert (=> b!1637647 (= lt!599921 (list!7104 lt!599398))))

(declare-fun lt!599922 () Unit!29506)

(declare-fun lemmaDropApply!577 (List!18087 Int) Unit!29506)

(assert (=> b!1637647 (= lt!599922 (lemmaDropApply!577 lt!599921 0))))

(declare-fun drop!889 (List!18087 Int) List!18087)

(declare-fun apply!4677 (List!18087 Int) Token!5916)

(assert (=> b!1637647 (= (head!3540 (drop!889 lt!599921 0)) (apply!4677 lt!599921 0))))

(declare-fun lt!599924 () Unit!29506)

(assert (=> b!1637647 (= lt!599924 lt!599922)))

(declare-fun lt!599920 () List!18087)

(assert (=> b!1637647 (= lt!599920 (list!7104 lt!599398))))

(declare-fun lt!599923 () Unit!29506)

(declare-fun lemmaDropTail!557 (List!18087 Int) Unit!29506)

(assert (=> b!1637647 (= lt!599923 (lemmaDropTail!557 lt!599920 0))))

(declare-fun tail!2397 (List!18087) List!18087)

(assert (=> b!1637647 (= (tail!2397 (drop!889 lt!599920 0)) (drop!889 lt!599920 (+ 0 1)))))

(declare-fun lt!599919 () Unit!29506)

(assert (=> b!1637647 (= lt!599919 lt!599923)))

(assert (= (and d!493036 res!733531) b!1637645))

(assert (= (and d!493036 c!266444) b!1637646))

(assert (= (and d!493036 (not c!266444)) b!1637647))

(declare-fun m!1975893 () Bool)

(assert (=> d!493036 m!1975893))

(declare-fun m!1975895 () Bool)

(assert (=> d!493036 m!1975895))

(assert (=> d!493036 m!1975895))

(assert (=> d!493036 m!1975893))

(declare-fun m!1975897 () Bool)

(assert (=> d!493036 m!1975897))

(declare-fun m!1975899 () Bool)

(assert (=> d!493036 m!1975899))

(declare-fun m!1975901 () Bool)

(assert (=> d!493036 m!1975901))

(assert (=> b!1637645 m!1975899))

(declare-fun m!1975903 () Bool)

(assert (=> b!1637647 m!1975903))

(declare-fun m!1975905 () Bool)

(assert (=> b!1637647 m!1975905))

(declare-fun m!1975907 () Bool)

(assert (=> b!1637647 m!1975907))

(assert (=> b!1637647 m!1975907))

(declare-fun m!1975909 () Bool)

(assert (=> b!1637647 m!1975909))

(declare-fun m!1975911 () Bool)

(assert (=> b!1637647 m!1975911))

(declare-fun m!1975913 () Bool)

(assert (=> b!1637647 m!1975913))

(declare-fun m!1975915 () Bool)

(assert (=> b!1637647 m!1975915))

(assert (=> b!1637647 m!1975905))

(declare-fun m!1975917 () Bool)

(assert (=> b!1637647 m!1975917))

(assert (=> b!1637647 m!1975875))

(declare-fun m!1975919 () Bool)

(assert (=> b!1637647 m!1975919))

(declare-fun m!1975921 () Bool)

(assert (=> b!1637647 m!1975921))

(assert (=> b!1637647 m!1975903))

(declare-fun m!1975923 () Bool)

(assert (=> b!1637647 m!1975923))

(assert (=> b!1637647 m!1975917))

(assert (=> b!1637647 m!1975919))

(declare-fun m!1975925 () Bool)

(assert (=> b!1637647 m!1975925))

(assert (=> b!1637293 d!493036))

(declare-fun d!493050 () Bool)

(assert (=> d!493050 (= (list!7103 lt!599395) (list!7108 (c!266364 lt!599395)))))

(declare-fun bs!395479 () Bool)

(assert (= bs!395479 d!493050))

(declare-fun m!1975927 () Bool)

(assert (=> bs!395479 m!1975927))

(assert (=> b!1637293 d!493050))

(declare-fun d!493052 () Bool)

(declare-fun c!266447 () Bool)

(assert (=> d!493052 (= c!266447 ((_ is Cons!18017) (Cons!18017 (h!23418 tokens!457) Nil!18017)))))

(declare-fun e!1050224 () List!18085)

(assert (=> d!493052 (= (printList!919 thiss!17113 (Cons!18017 (h!23418 tokens!457) Nil!18017)) e!1050224)))

(declare-fun b!1637652 () Bool)

(assert (=> b!1637652 (= e!1050224 (++!4829 (list!7103 (charsOf!1824 (h!23418 (Cons!18017 (h!23418 tokens!457) Nil!18017)))) (printList!919 thiss!17113 (t!149796 (Cons!18017 (h!23418 tokens!457) Nil!18017)))))))

(declare-fun b!1637653 () Bool)

(assert (=> b!1637653 (= e!1050224 Nil!18015)))

(assert (= (and d!493052 c!266447) b!1637652))

(assert (= (and d!493052 (not c!266447)) b!1637653))

(declare-fun m!1975929 () Bool)

(assert (=> b!1637652 m!1975929))

(assert (=> b!1637652 m!1975929))

(declare-fun m!1975931 () Bool)

(assert (=> b!1637652 m!1975931))

(declare-fun m!1975933 () Bool)

(assert (=> b!1637652 m!1975933))

(assert (=> b!1637652 m!1975931))

(assert (=> b!1637652 m!1975933))

(declare-fun m!1975935 () Bool)

(assert (=> b!1637652 m!1975935))

(assert (=> b!1637293 d!493052))

(declare-fun b!1637700 () Bool)

(declare-fun res!733561 () Bool)

(declare-fun e!1050248 () Bool)

(assert (=> b!1637700 (=> (not res!733561) (not e!1050248))))

(declare-fun lt!599949 () Option!3389)

(assert (=> b!1637700 (= res!733561 (< (size!14365 (_2!10225 (get!5228 lt!599949))) (size!14365 lt!599384)))))

(declare-fun b!1637701 () Bool)

(declare-fun res!733563 () Bool)

(assert (=> b!1637701 (=> (not res!733563) (not e!1050248))))

(assert (=> b!1637701 (= res!733563 (= (list!7103 (charsOf!1824 (_1!10225 (get!5228 lt!599949)))) (originalCharacters!3989 (_1!10225 (get!5228 lt!599949)))))))

(declare-fun b!1637702 () Bool)

(declare-fun contains!3142 (List!18088 Rule!6150) Bool)

(assert (=> b!1637702 (= e!1050248 (contains!3142 rules!1846 (rule!5019 (_1!10225 (get!5228 lt!599949)))))))

(declare-fun call!105678 () Option!3389)

(declare-fun bm!105673 () Bool)

(assert (=> bm!105673 (= call!105678 (maxPrefixOneRule!791 thiss!17113 (h!23419 rules!1846) lt!599384))))

(declare-fun b!1637703 () Bool)

(declare-fun e!1050246 () Option!3389)

(declare-fun lt!599947 () Option!3389)

(declare-fun lt!599950 () Option!3389)

(assert (=> b!1637703 (= e!1050246 (ite (and ((_ is None!3388) lt!599947) ((_ is None!3388) lt!599950)) None!3388 (ite ((_ is None!3388) lt!599950) lt!599947 (ite ((_ is None!3388) lt!599947) lt!599950 (ite (>= (size!14360 (_1!10225 (v!24477 lt!599947))) (size!14360 (_1!10225 (v!24477 lt!599950)))) lt!599947 lt!599950)))))))

(assert (=> b!1637703 (= lt!599947 call!105678)))

(assert (=> b!1637703 (= lt!599950 (maxPrefix!1368 thiss!17113 (t!149797 rules!1846) lt!599384))))

(declare-fun b!1637704 () Bool)

(declare-fun res!733565 () Bool)

(assert (=> b!1637704 (=> (not res!733565) (not e!1050248))))

(assert (=> b!1637704 (= res!733565 (= (++!4829 (list!7103 (charsOf!1824 (_1!10225 (get!5228 lt!599949)))) (_2!10225 (get!5228 lt!599949))) lt!599384))))

(declare-fun b!1637706 () Bool)

(assert (=> b!1637706 (= e!1050246 call!105678)))

(declare-fun b!1637707 () Bool)

(declare-fun e!1050247 () Bool)

(assert (=> b!1637707 (= e!1050247 e!1050248)))

(declare-fun res!733566 () Bool)

(assert (=> b!1637707 (=> (not res!733566) (not e!1050248))))

(assert (=> b!1637707 (= res!733566 (isDefined!2756 lt!599949))))

(declare-fun b!1637708 () Bool)

(declare-fun res!733562 () Bool)

(assert (=> b!1637708 (=> (not res!733562) (not e!1050248))))

(assert (=> b!1637708 (= res!733562 (matchR!2002 (regex!3175 (rule!5019 (_1!10225 (get!5228 lt!599949)))) (list!7103 (charsOf!1824 (_1!10225 (get!5228 lt!599949))))))))

(declare-fun b!1637705 () Bool)

(declare-fun res!733567 () Bool)

(assert (=> b!1637705 (=> (not res!733567) (not e!1050248))))

(declare-fun apply!4678 (TokenValueInjection!6190 BalanceConc!11940) TokenValue!3265)

(assert (=> b!1637705 (= res!733567 (= (value!100160 (_1!10225 (get!5228 lt!599949))) (apply!4678 (transformation!3175 (rule!5019 (_1!10225 (get!5228 lt!599949)))) (seqFromList!2100 (originalCharacters!3989 (_1!10225 (get!5228 lt!599949)))))))))

(declare-fun d!493054 () Bool)

(assert (=> d!493054 e!1050247))

(declare-fun res!733564 () Bool)

(assert (=> d!493054 (=> res!733564 e!1050247)))

(assert (=> d!493054 (= res!733564 (isEmpty!11053 lt!599949))))

(assert (=> d!493054 (= lt!599949 e!1050246)))

(declare-fun c!266454 () Bool)

(assert (=> d!493054 (= c!266454 (and ((_ is Cons!18018) rules!1846) ((_ is Nil!18018) (t!149797 rules!1846))))))

(declare-fun lt!599948 () Unit!29506)

(declare-fun lt!599946 () Unit!29506)

(assert (=> d!493054 (= lt!599948 lt!599946)))

(assert (=> d!493054 (isPrefix!1435 lt!599384 lt!599384)))

(declare-fun lemmaIsPrefixRefl!976 (List!18085 List!18085) Unit!29506)

(assert (=> d!493054 (= lt!599946 (lemmaIsPrefixRefl!976 lt!599384 lt!599384))))

(assert (=> d!493054 (rulesValidInductive!994 thiss!17113 rules!1846)))

(assert (=> d!493054 (= (maxPrefix!1368 thiss!17113 rules!1846 lt!599384) lt!599949)))

(assert (= (and d!493054 c!266454) b!1637706))

(assert (= (and d!493054 (not c!266454)) b!1637703))

(assert (= (or b!1637706 b!1637703) bm!105673))

(assert (= (and d!493054 (not res!733564)) b!1637707))

(assert (= (and b!1637707 res!733566) b!1637701))

(assert (= (and b!1637701 res!733563) b!1637700))

(assert (= (and b!1637700 res!733561) b!1637704))

(assert (= (and b!1637704 res!733565) b!1637705))

(assert (= (and b!1637705 res!733567) b!1637708))

(assert (= (and b!1637708 res!733562) b!1637702))

(declare-fun m!1975999 () Bool)

(assert (=> b!1637700 m!1975999))

(declare-fun m!1976001 () Bool)

(assert (=> b!1637700 m!1976001))

(declare-fun m!1976003 () Bool)

(assert (=> b!1637700 m!1976003))

(assert (=> b!1637705 m!1975999))

(declare-fun m!1976005 () Bool)

(assert (=> b!1637705 m!1976005))

(assert (=> b!1637705 m!1976005))

(declare-fun m!1976007 () Bool)

(assert (=> b!1637705 m!1976007))

(declare-fun m!1976009 () Bool)

(assert (=> d!493054 m!1976009))

(declare-fun m!1976011 () Bool)

(assert (=> d!493054 m!1976011))

(declare-fun m!1976013 () Bool)

(assert (=> d!493054 m!1976013))

(assert (=> d!493054 m!1975199))

(assert (=> b!1637701 m!1975999))

(declare-fun m!1976015 () Bool)

(assert (=> b!1637701 m!1976015))

(assert (=> b!1637701 m!1976015))

(declare-fun m!1976017 () Bool)

(assert (=> b!1637701 m!1976017))

(assert (=> b!1637702 m!1975999))

(declare-fun m!1976019 () Bool)

(assert (=> b!1637702 m!1976019))

(declare-fun m!1976021 () Bool)

(assert (=> bm!105673 m!1976021))

(assert (=> b!1637708 m!1975999))

(assert (=> b!1637708 m!1976015))

(assert (=> b!1637708 m!1976015))

(assert (=> b!1637708 m!1976017))

(assert (=> b!1637708 m!1976017))

(declare-fun m!1976023 () Bool)

(assert (=> b!1637708 m!1976023))

(declare-fun m!1976025 () Bool)

(assert (=> b!1637703 m!1976025))

(assert (=> b!1637704 m!1975999))

(assert (=> b!1637704 m!1976015))

(assert (=> b!1637704 m!1976015))

(assert (=> b!1637704 m!1976017))

(assert (=> b!1637704 m!1976017))

(declare-fun m!1976027 () Bool)

(assert (=> b!1637704 m!1976027))

(declare-fun m!1976029 () Bool)

(assert (=> b!1637707 m!1976029))

(assert (=> b!1637293 d!493054))

(declare-fun d!493072 () Bool)

(declare-fun e!1050251 () Bool)

(assert (=> d!493072 e!1050251))

(declare-fun res!733570 () Bool)

(assert (=> d!493072 (=> (not res!733570) (not e!1050251))))

(declare-fun lt!599953 () BalanceConc!11942)

(assert (=> d!493072 (= res!733570 (= (list!7104 lt!599953) (Cons!18017 (h!23418 tokens!457) Nil!18017)))))

(declare-fun singleton!701 (Token!5916) BalanceConc!11942)

(assert (=> d!493072 (= lt!599953 (singleton!701 (h!23418 tokens!457)))))

(assert (=> d!493072 (= (singletonSeq!1628 (h!23418 tokens!457)) lt!599953)))

(declare-fun b!1637711 () Bool)

(assert (=> b!1637711 (= e!1050251 (isBalanced!1821 (c!266365 lt!599953)))))

(assert (= (and d!493072 res!733570) b!1637711))

(declare-fun m!1976031 () Bool)

(assert (=> d!493072 m!1976031))

(declare-fun m!1976033 () Bool)

(assert (=> d!493072 m!1976033))

(declare-fun m!1976035 () Bool)

(assert (=> b!1637711 m!1976035))

(assert (=> b!1637293 d!493072))

(declare-fun d!493074 () Bool)

(assert (=> d!493074 (= (list!7103 (_2!10226 lt!599382)) (list!7108 (c!266364 (_2!10226 lt!599382))))))

(declare-fun bs!395484 () Bool)

(assert (= bs!395484 d!493074))

(declare-fun m!1976037 () Bool)

(assert (=> bs!395484 m!1976037))

(assert (=> b!1637272 d!493074))

(declare-fun d!493076 () Bool)

(assert (=> d!493076 (= (isDefined!2756 lt!599379) (not (isEmpty!11053 lt!599379)))))

(declare-fun bs!395485 () Bool)

(assert (= bs!395485 d!493076))

(declare-fun m!1976039 () Bool)

(assert (=> bs!395485 m!1976039))

(assert (=> b!1637270 d!493076))

(declare-fun b!1637712 () Bool)

(declare-fun res!733571 () Bool)

(declare-fun e!1050254 () Bool)

(assert (=> b!1637712 (=> (not res!733571) (not e!1050254))))

(declare-fun lt!599957 () Option!3389)

(assert (=> b!1637712 (= res!733571 (< (size!14365 (_2!10225 (get!5228 lt!599957))) (size!14365 (originalCharacters!3989 (h!23418 tokens!457)))))))

(declare-fun b!1637713 () Bool)

(declare-fun res!733573 () Bool)

(assert (=> b!1637713 (=> (not res!733573) (not e!1050254))))

(assert (=> b!1637713 (= res!733573 (= (list!7103 (charsOf!1824 (_1!10225 (get!5228 lt!599957)))) (originalCharacters!3989 (_1!10225 (get!5228 lt!599957)))))))

(declare-fun b!1637714 () Bool)

(assert (=> b!1637714 (= e!1050254 (contains!3142 rules!1846 (rule!5019 (_1!10225 (get!5228 lt!599957)))))))

(declare-fun call!105679 () Option!3389)

(declare-fun bm!105674 () Bool)

(assert (=> bm!105674 (= call!105679 (maxPrefixOneRule!791 thiss!17113 (h!23419 rules!1846) (originalCharacters!3989 (h!23418 tokens!457))))))

(declare-fun b!1637715 () Bool)

(declare-fun e!1050252 () Option!3389)

(declare-fun lt!599955 () Option!3389)

(declare-fun lt!599958 () Option!3389)

(assert (=> b!1637715 (= e!1050252 (ite (and ((_ is None!3388) lt!599955) ((_ is None!3388) lt!599958)) None!3388 (ite ((_ is None!3388) lt!599958) lt!599955 (ite ((_ is None!3388) lt!599955) lt!599958 (ite (>= (size!14360 (_1!10225 (v!24477 lt!599955))) (size!14360 (_1!10225 (v!24477 lt!599958)))) lt!599955 lt!599958)))))))

(assert (=> b!1637715 (= lt!599955 call!105679)))

(assert (=> b!1637715 (= lt!599958 (maxPrefix!1368 thiss!17113 (t!149797 rules!1846) (originalCharacters!3989 (h!23418 tokens!457))))))

(declare-fun b!1637716 () Bool)

(declare-fun res!733575 () Bool)

(assert (=> b!1637716 (=> (not res!733575) (not e!1050254))))

(assert (=> b!1637716 (= res!733575 (= (++!4829 (list!7103 (charsOf!1824 (_1!10225 (get!5228 lt!599957)))) (_2!10225 (get!5228 lt!599957))) (originalCharacters!3989 (h!23418 tokens!457))))))

(declare-fun b!1637718 () Bool)

(assert (=> b!1637718 (= e!1050252 call!105679)))

(declare-fun b!1637719 () Bool)

(declare-fun e!1050253 () Bool)

(assert (=> b!1637719 (= e!1050253 e!1050254)))

(declare-fun res!733576 () Bool)

(assert (=> b!1637719 (=> (not res!733576) (not e!1050254))))

(assert (=> b!1637719 (= res!733576 (isDefined!2756 lt!599957))))

(declare-fun b!1637720 () Bool)

(declare-fun res!733572 () Bool)

(assert (=> b!1637720 (=> (not res!733572) (not e!1050254))))

(assert (=> b!1637720 (= res!733572 (matchR!2002 (regex!3175 (rule!5019 (_1!10225 (get!5228 lt!599957)))) (list!7103 (charsOf!1824 (_1!10225 (get!5228 lt!599957))))))))

(declare-fun b!1637717 () Bool)

(declare-fun res!733577 () Bool)

(assert (=> b!1637717 (=> (not res!733577) (not e!1050254))))

(assert (=> b!1637717 (= res!733577 (= (value!100160 (_1!10225 (get!5228 lt!599957))) (apply!4678 (transformation!3175 (rule!5019 (_1!10225 (get!5228 lt!599957)))) (seqFromList!2100 (originalCharacters!3989 (_1!10225 (get!5228 lt!599957)))))))))

(declare-fun d!493078 () Bool)

(assert (=> d!493078 e!1050253))

(declare-fun res!733574 () Bool)

(assert (=> d!493078 (=> res!733574 e!1050253)))

(assert (=> d!493078 (= res!733574 (isEmpty!11053 lt!599957))))

(assert (=> d!493078 (= lt!599957 e!1050252)))

(declare-fun c!266455 () Bool)

(assert (=> d!493078 (= c!266455 (and ((_ is Cons!18018) rules!1846) ((_ is Nil!18018) (t!149797 rules!1846))))))

(declare-fun lt!599956 () Unit!29506)

(declare-fun lt!599954 () Unit!29506)

(assert (=> d!493078 (= lt!599956 lt!599954)))

(assert (=> d!493078 (isPrefix!1435 (originalCharacters!3989 (h!23418 tokens!457)) (originalCharacters!3989 (h!23418 tokens!457)))))

(assert (=> d!493078 (= lt!599954 (lemmaIsPrefixRefl!976 (originalCharacters!3989 (h!23418 tokens!457)) (originalCharacters!3989 (h!23418 tokens!457))))))

(assert (=> d!493078 (rulesValidInductive!994 thiss!17113 rules!1846)))

(assert (=> d!493078 (= (maxPrefix!1368 thiss!17113 rules!1846 (originalCharacters!3989 (h!23418 tokens!457))) lt!599957)))

(assert (= (and d!493078 c!266455) b!1637718))

(assert (= (and d!493078 (not c!266455)) b!1637715))

(assert (= (or b!1637718 b!1637715) bm!105674))

(assert (= (and d!493078 (not res!733574)) b!1637719))

(assert (= (and b!1637719 res!733576) b!1637713))

(assert (= (and b!1637713 res!733573) b!1637712))

(assert (= (and b!1637712 res!733571) b!1637716))

(assert (= (and b!1637716 res!733575) b!1637717))

(assert (= (and b!1637717 res!733577) b!1637720))

(assert (= (and b!1637720 res!733572) b!1637714))

(declare-fun m!1976041 () Bool)

(assert (=> b!1637712 m!1976041))

(declare-fun m!1976043 () Bool)

(assert (=> b!1637712 m!1976043))

(assert (=> b!1637712 m!1975685))

(assert (=> b!1637717 m!1976041))

(declare-fun m!1976045 () Bool)

(assert (=> b!1637717 m!1976045))

(assert (=> b!1637717 m!1976045))

(declare-fun m!1976047 () Bool)

(assert (=> b!1637717 m!1976047))

(declare-fun m!1976049 () Bool)

(assert (=> d!493078 m!1976049))

(declare-fun m!1976051 () Bool)

(assert (=> d!493078 m!1976051))

(declare-fun m!1976053 () Bool)

(assert (=> d!493078 m!1976053))

(assert (=> d!493078 m!1975199))

(assert (=> b!1637713 m!1976041))

(declare-fun m!1976055 () Bool)

(assert (=> b!1637713 m!1976055))

(assert (=> b!1637713 m!1976055))

(declare-fun m!1976057 () Bool)

(assert (=> b!1637713 m!1976057))

(assert (=> b!1637714 m!1976041))

(declare-fun m!1976059 () Bool)

(assert (=> b!1637714 m!1976059))

(declare-fun m!1976061 () Bool)

(assert (=> bm!105674 m!1976061))

(assert (=> b!1637720 m!1976041))

(assert (=> b!1637720 m!1976055))

(assert (=> b!1637720 m!1976055))

(assert (=> b!1637720 m!1976057))

(assert (=> b!1637720 m!1976057))

(declare-fun m!1976063 () Bool)

(assert (=> b!1637720 m!1976063))

(declare-fun m!1976065 () Bool)

(assert (=> b!1637715 m!1976065))

(assert (=> b!1637716 m!1976041))

(assert (=> b!1637716 m!1976055))

(assert (=> b!1637716 m!1976055))

(assert (=> b!1637716 m!1976057))

(assert (=> b!1637716 m!1976057))

(declare-fun m!1976067 () Bool)

(assert (=> b!1637716 m!1976067))

(declare-fun m!1976069 () Bool)

(assert (=> b!1637719 m!1976069))

(assert (=> b!1637270 d!493078))

(declare-fun d!493080 () Bool)

(declare-fun c!266456 () Bool)

(assert (=> d!493080 (= c!266456 (isEmpty!11048 (++!4829 (originalCharacters!3989 (h!23418 tokens!457)) lt!599401)))))

(declare-fun e!1050255 () Bool)

(assert (=> d!493080 (= (prefixMatch!438 lt!599404 (++!4829 (originalCharacters!3989 (h!23418 tokens!457)) lt!599401)) e!1050255)))

(declare-fun b!1637721 () Bool)

(assert (=> b!1637721 (= e!1050255 (not (lostCause!454 lt!599404)))))

(declare-fun b!1637722 () Bool)

(assert (=> b!1637722 (= e!1050255 (prefixMatch!438 (derivativeStep!1098 lt!599404 (head!3538 (++!4829 (originalCharacters!3989 (h!23418 tokens!457)) lt!599401))) (tail!2395 (++!4829 (originalCharacters!3989 (h!23418 tokens!457)) lt!599401))))))

(assert (= (and d!493080 c!266456) b!1637721))

(assert (= (and d!493080 (not c!266456)) b!1637722))

(assert (=> d!493080 m!1975245))

(declare-fun m!1976071 () Bool)

(assert (=> d!493080 m!1976071))

(assert (=> b!1637721 m!1975849))

(assert (=> b!1637722 m!1975245))

(declare-fun m!1976073 () Bool)

(assert (=> b!1637722 m!1976073))

(assert (=> b!1637722 m!1976073))

(declare-fun m!1976075 () Bool)

(assert (=> b!1637722 m!1976075))

(assert (=> b!1637722 m!1975245))

(declare-fun m!1976077 () Bool)

(assert (=> b!1637722 m!1976077))

(assert (=> b!1637722 m!1976075))

(assert (=> b!1637722 m!1976077))

(declare-fun m!1976079 () Bool)

(assert (=> b!1637722 m!1976079))

(assert (=> b!1637270 d!493080))

(declare-fun b!1637725 () Bool)

(declare-fun res!733579 () Bool)

(declare-fun e!1050257 () Bool)

(assert (=> b!1637725 (=> (not res!733579) (not e!1050257))))

(declare-fun lt!599959 () List!18085)

(assert (=> b!1637725 (= res!733579 (= (size!14365 lt!599959) (+ (size!14365 (originalCharacters!3989 (h!23418 tokens!457))) (size!14365 lt!599401))))))

(declare-fun b!1637726 () Bool)

(assert (=> b!1637726 (= e!1050257 (or (not (= lt!599401 Nil!18015)) (= lt!599959 (originalCharacters!3989 (h!23418 tokens!457)))))))

(declare-fun b!1637724 () Bool)

(declare-fun e!1050256 () List!18085)

(assert (=> b!1637724 (= e!1050256 (Cons!18015 (h!23416 (originalCharacters!3989 (h!23418 tokens!457))) (++!4829 (t!149794 (originalCharacters!3989 (h!23418 tokens!457))) lt!599401)))))

(declare-fun d!493082 () Bool)

(assert (=> d!493082 e!1050257))

(declare-fun res!733578 () Bool)

(assert (=> d!493082 (=> (not res!733578) (not e!1050257))))

(assert (=> d!493082 (= res!733578 (= (content!2495 lt!599959) ((_ map or) (content!2495 (originalCharacters!3989 (h!23418 tokens!457))) (content!2495 lt!599401))))))

(assert (=> d!493082 (= lt!599959 e!1050256)))

(declare-fun c!266457 () Bool)

(assert (=> d!493082 (= c!266457 ((_ is Nil!18015) (originalCharacters!3989 (h!23418 tokens!457))))))

(assert (=> d!493082 (= (++!4829 (originalCharacters!3989 (h!23418 tokens!457)) lt!599401) lt!599959)))

(declare-fun b!1637723 () Bool)

(assert (=> b!1637723 (= e!1050256 lt!599401)))

(assert (= (and d!493082 c!266457) b!1637723))

(assert (= (and d!493082 (not c!266457)) b!1637724))

(assert (= (and d!493082 res!733578) b!1637725))

(assert (= (and b!1637725 res!733579) b!1637726))

(declare-fun m!1976081 () Bool)

(assert (=> b!1637725 m!1976081))

(assert (=> b!1637725 m!1975685))

(declare-fun m!1976083 () Bool)

(assert (=> b!1637725 m!1976083))

(declare-fun m!1976085 () Bool)

(assert (=> b!1637724 m!1976085))

(declare-fun m!1976087 () Bool)

(assert (=> d!493082 m!1976087))

(declare-fun m!1976089 () Bool)

(assert (=> d!493082 m!1976089))

(declare-fun m!1976091 () Bool)

(assert (=> d!493082 m!1976091))

(assert (=> b!1637270 d!493082))

(declare-fun d!493084 () Bool)

(assert (=> d!493084 (= (get!5228 lt!599379) (v!24477 lt!599379))))

(assert (=> b!1637270 d!493084))

(declare-fun d!493086 () Bool)

(assert (=> d!493086 (= (isDefined!2756 (maxPrefix!1368 thiss!17113 rules!1846 (originalCharacters!3989 (h!23418 tokens!457)))) (not (isEmpty!11053 (maxPrefix!1368 thiss!17113 rules!1846 (originalCharacters!3989 (h!23418 tokens!457))))))))

(declare-fun bs!395486 () Bool)

(assert (= bs!395486 d!493086))

(assert (=> bs!395486 m!1975249))

(declare-fun m!1976093 () Bool)

(assert (=> bs!395486 m!1976093))

(assert (=> b!1637270 d!493086))

(declare-fun b!1637727 () Bool)

(declare-fun res!733580 () Bool)

(declare-fun e!1050260 () Bool)

(assert (=> b!1637727 (=> (not res!733580) (not e!1050260))))

(declare-fun lt!599963 () Option!3389)

(assert (=> b!1637727 (= res!733580 (< (size!14365 (_2!10225 (get!5228 lt!599963))) (size!14365 lt!599381)))))

(declare-fun b!1637728 () Bool)

(declare-fun res!733582 () Bool)

(assert (=> b!1637728 (=> (not res!733582) (not e!1050260))))

(assert (=> b!1637728 (= res!733582 (= (list!7103 (charsOf!1824 (_1!10225 (get!5228 lt!599963)))) (originalCharacters!3989 (_1!10225 (get!5228 lt!599963)))))))

(declare-fun b!1637729 () Bool)

(assert (=> b!1637729 (= e!1050260 (contains!3142 rules!1846 (rule!5019 (_1!10225 (get!5228 lt!599963)))))))

(declare-fun bm!105675 () Bool)

(declare-fun call!105680 () Option!3389)

(assert (=> bm!105675 (= call!105680 (maxPrefixOneRule!791 thiss!17113 (h!23419 rules!1846) lt!599381))))

(declare-fun b!1637730 () Bool)

(declare-fun e!1050258 () Option!3389)

(declare-fun lt!599961 () Option!3389)

(declare-fun lt!599964 () Option!3389)

(assert (=> b!1637730 (= e!1050258 (ite (and ((_ is None!3388) lt!599961) ((_ is None!3388) lt!599964)) None!3388 (ite ((_ is None!3388) lt!599964) lt!599961 (ite ((_ is None!3388) lt!599961) lt!599964 (ite (>= (size!14360 (_1!10225 (v!24477 lt!599961))) (size!14360 (_1!10225 (v!24477 lt!599964)))) lt!599961 lt!599964)))))))

(assert (=> b!1637730 (= lt!599961 call!105680)))

(assert (=> b!1637730 (= lt!599964 (maxPrefix!1368 thiss!17113 (t!149797 rules!1846) lt!599381))))

(declare-fun b!1637731 () Bool)

(declare-fun res!733584 () Bool)

(assert (=> b!1637731 (=> (not res!733584) (not e!1050260))))

(assert (=> b!1637731 (= res!733584 (= (++!4829 (list!7103 (charsOf!1824 (_1!10225 (get!5228 lt!599963)))) (_2!10225 (get!5228 lt!599963))) lt!599381))))

(declare-fun b!1637733 () Bool)

(assert (=> b!1637733 (= e!1050258 call!105680)))

(declare-fun b!1637734 () Bool)

(declare-fun e!1050259 () Bool)

(assert (=> b!1637734 (= e!1050259 e!1050260)))

(declare-fun res!733585 () Bool)

(assert (=> b!1637734 (=> (not res!733585) (not e!1050260))))

(assert (=> b!1637734 (= res!733585 (isDefined!2756 lt!599963))))

(declare-fun b!1637735 () Bool)

(declare-fun res!733581 () Bool)

(assert (=> b!1637735 (=> (not res!733581) (not e!1050260))))

(assert (=> b!1637735 (= res!733581 (matchR!2002 (regex!3175 (rule!5019 (_1!10225 (get!5228 lt!599963)))) (list!7103 (charsOf!1824 (_1!10225 (get!5228 lt!599963))))))))

(declare-fun b!1637732 () Bool)

(declare-fun res!733586 () Bool)

(assert (=> b!1637732 (=> (not res!733586) (not e!1050260))))

(assert (=> b!1637732 (= res!733586 (= (value!100160 (_1!10225 (get!5228 lt!599963))) (apply!4678 (transformation!3175 (rule!5019 (_1!10225 (get!5228 lt!599963)))) (seqFromList!2100 (originalCharacters!3989 (_1!10225 (get!5228 lt!599963)))))))))

(declare-fun d!493088 () Bool)

(assert (=> d!493088 e!1050259))

(declare-fun res!733583 () Bool)

(assert (=> d!493088 (=> res!733583 e!1050259)))

(assert (=> d!493088 (= res!733583 (isEmpty!11053 lt!599963))))

(assert (=> d!493088 (= lt!599963 e!1050258)))

(declare-fun c!266458 () Bool)

(assert (=> d!493088 (= c!266458 (and ((_ is Cons!18018) rules!1846) ((_ is Nil!18018) (t!149797 rules!1846))))))

(declare-fun lt!599962 () Unit!29506)

(declare-fun lt!599960 () Unit!29506)

(assert (=> d!493088 (= lt!599962 lt!599960)))

(assert (=> d!493088 (isPrefix!1435 lt!599381 lt!599381)))

(assert (=> d!493088 (= lt!599960 (lemmaIsPrefixRefl!976 lt!599381 lt!599381))))

(assert (=> d!493088 (rulesValidInductive!994 thiss!17113 rules!1846)))

(assert (=> d!493088 (= (maxPrefix!1368 thiss!17113 rules!1846 lt!599381) lt!599963)))

(assert (= (and d!493088 c!266458) b!1637733))

(assert (= (and d!493088 (not c!266458)) b!1637730))

(assert (= (or b!1637733 b!1637730) bm!105675))

(assert (= (and d!493088 (not res!733583)) b!1637734))

(assert (= (and b!1637734 res!733585) b!1637728))

(assert (= (and b!1637728 res!733582) b!1637727))

(assert (= (and b!1637727 res!733580) b!1637731))

(assert (= (and b!1637731 res!733584) b!1637732))

(assert (= (and b!1637732 res!733586) b!1637735))

(assert (= (and b!1637735 res!733581) b!1637729))

(declare-fun m!1976095 () Bool)

(assert (=> b!1637727 m!1976095))

(declare-fun m!1976097 () Bool)

(assert (=> b!1637727 m!1976097))

(assert (=> b!1637727 m!1975375))

(assert (=> b!1637732 m!1976095))

(declare-fun m!1976099 () Bool)

(assert (=> b!1637732 m!1976099))

(assert (=> b!1637732 m!1976099))

(declare-fun m!1976101 () Bool)

(assert (=> b!1637732 m!1976101))

(declare-fun m!1976103 () Bool)

(assert (=> d!493088 m!1976103))

(declare-fun m!1976105 () Bool)

(assert (=> d!493088 m!1976105))

(declare-fun m!1976107 () Bool)

(assert (=> d!493088 m!1976107))

(assert (=> d!493088 m!1975199))

(assert (=> b!1637728 m!1976095))

(declare-fun m!1976109 () Bool)

(assert (=> b!1637728 m!1976109))

(assert (=> b!1637728 m!1976109))

(declare-fun m!1976111 () Bool)

(assert (=> b!1637728 m!1976111))

(assert (=> b!1637729 m!1976095))

(declare-fun m!1976113 () Bool)

(assert (=> b!1637729 m!1976113))

(declare-fun m!1976115 () Bool)

(assert (=> bm!105675 m!1976115))

(assert (=> b!1637735 m!1976095))

(assert (=> b!1637735 m!1976109))

(assert (=> b!1637735 m!1976109))

(assert (=> b!1637735 m!1976111))

(assert (=> b!1637735 m!1976111))

(declare-fun m!1976117 () Bool)

(assert (=> b!1637735 m!1976117))

(declare-fun m!1976119 () Bool)

(assert (=> b!1637730 m!1976119))

(assert (=> b!1637731 m!1976095))

(assert (=> b!1637731 m!1976109))

(assert (=> b!1637731 m!1976109))

(assert (=> b!1637731 m!1976111))

(assert (=> b!1637731 m!1976111))

(declare-fun m!1976121 () Bool)

(assert (=> b!1637731 m!1976121))

(declare-fun m!1976123 () Bool)

(assert (=> b!1637734 m!1976123))

(assert (=> b!1637270 d!493088))

(declare-fun d!493090 () Bool)

(declare-fun lt!599971 () Bool)

(declare-fun e!1050269 () Bool)

(assert (=> d!493090 (= lt!599971 e!1050269)))

(declare-fun res!733598 () Bool)

(assert (=> d!493090 (=> (not res!733598) (not e!1050269))))

(assert (=> d!493090 (= res!733598 (= (list!7104 (_1!10227 (lex!1288 thiss!17113 rules!1846 (print!1335 thiss!17113 (singletonSeq!1628 (h!23418 tokens!457)))))) (list!7104 (singletonSeq!1628 (h!23418 tokens!457)))))))

(declare-fun e!1050270 () Bool)

(assert (=> d!493090 (= lt!599971 e!1050270)))

(declare-fun res!733599 () Bool)

(assert (=> d!493090 (=> (not res!733599) (not e!1050270))))

(declare-fun lt!599972 () tuple2!17650)

(assert (=> d!493090 (= res!733599 (= (size!14366 (_1!10227 lt!599972)) 1))))

(assert (=> d!493090 (= lt!599972 (lex!1288 thiss!17113 rules!1846 (print!1335 thiss!17113 (singletonSeq!1628 (h!23418 tokens!457)))))))

(assert (=> d!493090 (not (isEmpty!11049 rules!1846))))

(assert (=> d!493090 (= (rulesProduceIndividualToken!1456 thiss!17113 rules!1846 (h!23418 tokens!457)) lt!599971)))

(declare-fun b!1637746 () Bool)

(declare-fun res!733597 () Bool)

(assert (=> b!1637746 (=> (not res!733597) (not e!1050270))))

(assert (=> b!1637746 (= res!733597 (= (apply!4675 (_1!10227 lt!599972) 0) (h!23418 tokens!457)))))

(declare-fun b!1637747 () Bool)

(assert (=> b!1637747 (= e!1050270 (isEmpty!11052 (_2!10227 lt!599972)))))

(declare-fun b!1637748 () Bool)

(assert (=> b!1637748 (= e!1050269 (isEmpty!11052 (_2!10227 (lex!1288 thiss!17113 rules!1846 (print!1335 thiss!17113 (singletonSeq!1628 (h!23418 tokens!457)))))))))

(assert (= (and d!493090 res!733599) b!1637746))

(assert (= (and b!1637746 res!733597) b!1637747))

(assert (= (and d!493090 res!733598) b!1637748))

(assert (=> d!493090 m!1975123))

(declare-fun m!1976125 () Bool)

(assert (=> d!493090 m!1976125))

(declare-fun m!1976127 () Bool)

(assert (=> d!493090 m!1976127))

(assert (=> d!493090 m!1975237))

(declare-fun m!1976129 () Bool)

(assert (=> d!493090 m!1976129))

(assert (=> d!493090 m!1975237))

(assert (=> d!493090 m!1975237))

(declare-fun m!1976131 () Bool)

(assert (=> d!493090 m!1976131))

(assert (=> d!493090 m!1976131))

(declare-fun m!1976133 () Bool)

(assert (=> d!493090 m!1976133))

(declare-fun m!1976135 () Bool)

(assert (=> b!1637746 m!1976135))

(declare-fun m!1976137 () Bool)

(assert (=> b!1637747 m!1976137))

(assert (=> b!1637748 m!1975237))

(assert (=> b!1637748 m!1975237))

(assert (=> b!1637748 m!1976131))

(assert (=> b!1637748 m!1976131))

(assert (=> b!1637748 m!1976133))

(declare-fun m!1976139 () Bool)

(assert (=> b!1637748 m!1976139))

(assert (=> b!1637292 d!493090))

(declare-fun d!493092 () Bool)

(assert (=> d!493092 (= (inv!23364 (tag!3455 (rule!5019 (h!23418 tokens!457)))) (= (mod (str.len (value!100159 (tag!3455 (rule!5019 (h!23418 tokens!457))))) 2) 0))))

(assert (=> b!1637290 d!493092))

(declare-fun d!493094 () Bool)

(declare-fun res!733600 () Bool)

(declare-fun e!1050271 () Bool)

(assert (=> d!493094 (=> (not res!733600) (not e!1050271))))

(assert (=> d!493094 (= res!733600 (semiInverseModEq!1216 (toChars!4465 (transformation!3175 (rule!5019 (h!23418 tokens!457)))) (toValue!4606 (transformation!3175 (rule!5019 (h!23418 tokens!457))))))))

(assert (=> d!493094 (= (inv!23367 (transformation!3175 (rule!5019 (h!23418 tokens!457)))) e!1050271)))

(declare-fun b!1637749 () Bool)

(assert (=> b!1637749 (= e!1050271 (equivClasses!1157 (toChars!4465 (transformation!3175 (rule!5019 (h!23418 tokens!457)))) (toValue!4606 (transformation!3175 (rule!5019 (h!23418 tokens!457))))))))

(assert (= (and d!493094 res!733600) b!1637749))

(declare-fun m!1976141 () Bool)

(assert (=> d!493094 m!1976141))

(declare-fun m!1976143 () Bool)

(assert (=> b!1637749 m!1976143))

(assert (=> b!1637290 d!493094))

(declare-fun d!493096 () Bool)

(declare-fun isEmpty!11058 (Option!3390) Bool)

(assert (=> d!493096 (= (isDefined!2757 (maxPrefixZipperSequence!699 thiss!17113 rules!1846 (seqFromList!2100 (originalCharacters!3989 (h!23418 tokens!457))))) (not (isEmpty!11058 (maxPrefixZipperSequence!699 thiss!17113 rules!1846 (seqFromList!2100 (originalCharacters!3989 (h!23418 tokens!457)))))))))

(declare-fun bs!395487 () Bool)

(assert (= bs!395487 d!493096))

(assert (=> bs!395487 m!1975143))

(declare-fun m!1976145 () Bool)

(assert (=> bs!395487 m!1976145))

(assert (=> b!1637291 d!493096))

(declare-fun b!1637766 () Bool)

(declare-fun res!733614 () Bool)

(declare-fun e!1050287 () Bool)

(assert (=> b!1637766 (=> (not res!733614) (not e!1050287))))

(declare-fun e!1050286 () Bool)

(assert (=> b!1637766 (= res!733614 e!1050286)))

(declare-fun res!733618 () Bool)

(assert (=> b!1637766 (=> res!733618 e!1050286)))

(declare-fun lt!599989 () Option!3390)

(assert (=> b!1637766 (= res!733618 (not (isDefined!2757 lt!599989)))))

(declare-fun b!1637767 () Bool)

(declare-fun e!1050284 () Option!3390)

(declare-fun call!105683 () Option!3390)

(assert (=> b!1637767 (= e!1050284 call!105683)))

(declare-fun b!1637768 () Bool)

(declare-fun e!1050285 () Bool)

(assert (=> b!1637768 (= e!1050286 e!1050285)))

(declare-fun res!733616 () Bool)

(assert (=> b!1637768 (=> (not res!733616) (not e!1050285))))

(assert (=> b!1637768 (= res!733616 (= (_1!10226 (get!5229 lt!599989)) (_1!10225 (get!5228 (maxPrefixZipper!332 thiss!17113 rules!1846 (list!7103 (seqFromList!2100 (originalCharacters!3989 (h!23418 tokens!457)))))))))))

(declare-fun bm!105678 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!332 (LexerInterface!2804 Rule!6150 BalanceConc!11940) Option!3390)

(assert (=> bm!105678 (= call!105683 (maxPrefixOneRuleZipperSequence!332 thiss!17113 (h!23419 rules!1846) (seqFromList!2100 (originalCharacters!3989 (h!23418 tokens!457)))))))

(declare-fun b!1637769 () Bool)

(declare-fun e!1050288 () Bool)

(assert (=> b!1637769 (= e!1050287 e!1050288)))

(declare-fun res!733617 () Bool)

(assert (=> b!1637769 (=> res!733617 e!1050288)))

(assert (=> b!1637769 (= res!733617 (not (isDefined!2757 lt!599989)))))

(declare-fun b!1637771 () Bool)

(assert (=> b!1637771 (= e!1050285 (= (list!7103 (_2!10226 (get!5229 lt!599989))) (_2!10225 (get!5228 (maxPrefixZipper!332 thiss!17113 rules!1846 (list!7103 (seqFromList!2100 (originalCharacters!3989 (h!23418 tokens!457)))))))))))

(declare-fun b!1637772 () Bool)

(declare-fun e!1050289 () Bool)

(assert (=> b!1637772 (= e!1050289 (= (list!7103 (_2!10226 (get!5229 lt!599989))) (_2!10225 (get!5228 (maxPrefix!1368 thiss!17113 rules!1846 (list!7103 (seqFromList!2100 (originalCharacters!3989 (h!23418 tokens!457)))))))))))

(declare-fun b!1637773 () Bool)

(assert (=> b!1637773 (= e!1050288 e!1050289)))

(declare-fun res!733613 () Bool)

(assert (=> b!1637773 (=> (not res!733613) (not e!1050289))))

(assert (=> b!1637773 (= res!733613 (= (_1!10226 (get!5229 lt!599989)) (_1!10225 (get!5228 (maxPrefix!1368 thiss!17113 rules!1846 (list!7103 (seqFromList!2100 (originalCharacters!3989 (h!23418 tokens!457)))))))))))

(declare-fun b!1637770 () Bool)

(declare-fun lt!599992 () Option!3390)

(declare-fun lt!599993 () Option!3390)

(assert (=> b!1637770 (= e!1050284 (ite (and ((_ is None!3389) lt!599992) ((_ is None!3389) lt!599993)) None!3389 (ite ((_ is None!3389) lt!599993) lt!599992 (ite ((_ is None!3389) lt!599992) lt!599993 (ite (>= (size!14360 (_1!10226 (v!24478 lt!599992))) (size!14360 (_1!10226 (v!24478 lt!599993)))) lt!599992 lt!599993)))))))

(assert (=> b!1637770 (= lt!599992 call!105683)))

(assert (=> b!1637770 (= lt!599993 (maxPrefixZipperSequence!699 thiss!17113 (t!149797 rules!1846) (seqFromList!2100 (originalCharacters!3989 (h!23418 tokens!457)))))))

(declare-fun d!493098 () Bool)

(assert (=> d!493098 e!1050287))

(declare-fun res!733615 () Bool)

(assert (=> d!493098 (=> (not res!733615) (not e!1050287))))

(assert (=> d!493098 (= res!733615 (= (isDefined!2757 lt!599989) (isDefined!2756 (maxPrefixZipper!332 thiss!17113 rules!1846 (list!7103 (seqFromList!2100 (originalCharacters!3989 (h!23418 tokens!457))))))))))

(assert (=> d!493098 (= lt!599989 e!1050284)))

(declare-fun c!266461 () Bool)

(assert (=> d!493098 (= c!266461 (and ((_ is Cons!18018) rules!1846) ((_ is Nil!18018) (t!149797 rules!1846))))))

(declare-fun lt!599987 () Unit!29506)

(declare-fun lt!599988 () Unit!29506)

(assert (=> d!493098 (= lt!599987 lt!599988)))

(declare-fun lt!599991 () List!18085)

(declare-fun lt!599990 () List!18085)

(assert (=> d!493098 (isPrefix!1435 lt!599991 lt!599990)))

(assert (=> d!493098 (= lt!599988 (lemmaIsPrefixRefl!976 lt!599991 lt!599990))))

(assert (=> d!493098 (= lt!599990 (list!7103 (seqFromList!2100 (originalCharacters!3989 (h!23418 tokens!457)))))))

(assert (=> d!493098 (= lt!599991 (list!7103 (seqFromList!2100 (originalCharacters!3989 (h!23418 tokens!457)))))))

(assert (=> d!493098 (rulesValidInductive!994 thiss!17113 rules!1846)))

(assert (=> d!493098 (= (maxPrefixZipperSequence!699 thiss!17113 rules!1846 (seqFromList!2100 (originalCharacters!3989 (h!23418 tokens!457)))) lt!599989)))

(assert (= (and d!493098 c!266461) b!1637767))

(assert (= (and d!493098 (not c!266461)) b!1637770))

(assert (= (or b!1637767 b!1637770) bm!105678))

(assert (= (and d!493098 res!733615) b!1637766))

(assert (= (and b!1637766 (not res!733618)) b!1637768))

(assert (= (and b!1637768 res!733616) b!1637771))

(assert (= (and b!1637766 res!733614) b!1637769))

(assert (= (and b!1637769 (not res!733617)) b!1637773))

(assert (= (and b!1637773 res!733613) b!1637772))

(declare-fun m!1976147 () Bool)

(assert (=> b!1637772 m!1976147))

(declare-fun m!1976149 () Bool)

(assert (=> b!1637772 m!1976149))

(declare-fun m!1976151 () Bool)

(assert (=> b!1637772 m!1976151))

(assert (=> b!1637772 m!1976147))

(assert (=> b!1637772 m!1975141))

(assert (=> b!1637772 m!1976151))

(declare-fun m!1976153 () Bool)

(assert (=> b!1637772 m!1976153))

(declare-fun m!1976155 () Bool)

(assert (=> b!1637772 m!1976155))

(assert (=> b!1637770 m!1975141))

(declare-fun m!1976157 () Bool)

(assert (=> b!1637770 m!1976157))

(assert (=> b!1637768 m!1976153))

(assert (=> b!1637768 m!1975141))

(assert (=> b!1637768 m!1976151))

(assert (=> b!1637768 m!1976151))

(declare-fun m!1976159 () Bool)

(assert (=> b!1637768 m!1976159))

(assert (=> b!1637768 m!1976159))

(declare-fun m!1976161 () Bool)

(assert (=> b!1637768 m!1976161))

(assert (=> bm!105678 m!1975141))

(declare-fun m!1976163 () Bool)

(assert (=> bm!105678 m!1976163))

(declare-fun m!1976165 () Bool)

(assert (=> b!1637766 m!1976165))

(assert (=> b!1637769 m!1976165))

(assert (=> b!1637771 m!1976151))

(assert (=> b!1637771 m!1976159))

(assert (=> b!1637771 m!1976159))

(assert (=> b!1637771 m!1976161))

(assert (=> b!1637771 m!1975141))

(assert (=> b!1637771 m!1976151))

(assert (=> b!1637771 m!1976153))

(assert (=> b!1637771 m!1976155))

(assert (=> b!1637773 m!1976153))

(assert (=> b!1637773 m!1975141))

(assert (=> b!1637773 m!1976151))

(assert (=> b!1637773 m!1976151))

(assert (=> b!1637773 m!1976147))

(assert (=> b!1637773 m!1976147))

(assert (=> b!1637773 m!1976149))

(declare-fun m!1976167 () Bool)

(assert (=> d!493098 m!1976167))

(assert (=> d!493098 m!1976159))

(declare-fun m!1976169 () Bool)

(assert (=> d!493098 m!1976169))

(assert (=> d!493098 m!1976151))

(assert (=> d!493098 m!1976159))

(assert (=> d!493098 m!1976165))

(declare-fun m!1976171 () Bool)

(assert (=> d!493098 m!1976171))

(assert (=> d!493098 m!1975199))

(assert (=> d!493098 m!1975141))

(assert (=> d!493098 m!1976151))

(assert (=> b!1637291 d!493098))

(declare-fun d!493100 () Bool)

(assert (=> d!493100 (= (seqFromList!2100 (originalCharacters!3989 (h!23418 tokens!457))) (fromListB!927 (originalCharacters!3989 (h!23418 tokens!457))))))

(declare-fun bs!395488 () Bool)

(assert (= bs!395488 d!493100))

(declare-fun m!1976173 () Bool)

(assert (=> bs!395488 m!1976173))

(assert (=> b!1637291 d!493100))

(declare-fun d!493102 () Bool)

(declare-fun lt!599996 () C!9180)

(assert (=> d!493102 (= lt!599996 (head!3538 (list!7103 lt!599391)))))

(declare-fun head!3542 (Conc!5998) C!9180)

(assert (=> d!493102 (= lt!599996 (head!3542 (c!266364 lt!599391)))))

(assert (=> d!493102 (not (isEmpty!11052 lt!599391))))

(assert (=> d!493102 (= (head!3539 lt!599391) lt!599996)))

(declare-fun bs!395489 () Bool)

(assert (= bs!395489 d!493102))

(assert (=> bs!395489 m!1975167))

(assert (=> bs!395489 m!1975167))

(declare-fun m!1976175 () Bool)

(assert (=> bs!395489 m!1976175))

(declare-fun m!1976177 () Bool)

(assert (=> bs!395489 m!1976177))

(declare-fun m!1976179 () Bool)

(assert (=> bs!395489 m!1976179))

(assert (=> b!1637291 d!493102))

(declare-fun d!493104 () Bool)

(assert (=> d!493104 (= (get!5229 (maxPrefixZipperSequence!699 thiss!17113 rules!1846 lt!599406)) (v!24478 (maxPrefixZipperSequence!699 thiss!17113 rules!1846 lt!599406)))))

(assert (=> b!1637289 d!493104))

(declare-fun b!1637774 () Bool)

(declare-fun res!733620 () Bool)

(declare-fun e!1050293 () Bool)

(assert (=> b!1637774 (=> (not res!733620) (not e!1050293))))

(declare-fun e!1050292 () Bool)

(assert (=> b!1637774 (= res!733620 e!1050292)))

(declare-fun res!733624 () Bool)

(assert (=> b!1637774 (=> res!733624 e!1050292)))

(declare-fun lt!599999 () Option!3390)

(assert (=> b!1637774 (= res!733624 (not (isDefined!2757 lt!599999)))))

(declare-fun b!1637775 () Bool)

(declare-fun e!1050290 () Option!3390)

(declare-fun call!105684 () Option!3390)

(assert (=> b!1637775 (= e!1050290 call!105684)))

(declare-fun b!1637776 () Bool)

(declare-fun e!1050291 () Bool)

(assert (=> b!1637776 (= e!1050292 e!1050291)))

(declare-fun res!733622 () Bool)

(assert (=> b!1637776 (=> (not res!733622) (not e!1050291))))

(assert (=> b!1637776 (= res!733622 (= (_1!10226 (get!5229 lt!599999)) (_1!10225 (get!5228 (maxPrefixZipper!332 thiss!17113 rules!1846 (list!7103 lt!599406))))))))

(declare-fun bm!105679 () Bool)

(assert (=> bm!105679 (= call!105684 (maxPrefixOneRuleZipperSequence!332 thiss!17113 (h!23419 rules!1846) lt!599406))))

(declare-fun b!1637777 () Bool)

(declare-fun e!1050294 () Bool)

(assert (=> b!1637777 (= e!1050293 e!1050294)))

(declare-fun res!733623 () Bool)

(assert (=> b!1637777 (=> res!733623 e!1050294)))

(assert (=> b!1637777 (= res!733623 (not (isDefined!2757 lt!599999)))))

(declare-fun b!1637779 () Bool)

(assert (=> b!1637779 (= e!1050291 (= (list!7103 (_2!10226 (get!5229 lt!599999))) (_2!10225 (get!5228 (maxPrefixZipper!332 thiss!17113 rules!1846 (list!7103 lt!599406))))))))

(declare-fun b!1637780 () Bool)

(declare-fun e!1050295 () Bool)

(assert (=> b!1637780 (= e!1050295 (= (list!7103 (_2!10226 (get!5229 lt!599999))) (_2!10225 (get!5228 (maxPrefix!1368 thiss!17113 rules!1846 (list!7103 lt!599406))))))))

(declare-fun b!1637781 () Bool)

(assert (=> b!1637781 (= e!1050294 e!1050295)))

(declare-fun res!733619 () Bool)

(assert (=> b!1637781 (=> (not res!733619) (not e!1050295))))

(assert (=> b!1637781 (= res!733619 (= (_1!10226 (get!5229 lt!599999)) (_1!10225 (get!5228 (maxPrefix!1368 thiss!17113 rules!1846 (list!7103 lt!599406))))))))

(declare-fun b!1637778 () Bool)

(declare-fun lt!600002 () Option!3390)

(declare-fun lt!600003 () Option!3390)

(assert (=> b!1637778 (= e!1050290 (ite (and ((_ is None!3389) lt!600002) ((_ is None!3389) lt!600003)) None!3389 (ite ((_ is None!3389) lt!600003) lt!600002 (ite ((_ is None!3389) lt!600002) lt!600003 (ite (>= (size!14360 (_1!10226 (v!24478 lt!600002))) (size!14360 (_1!10226 (v!24478 lt!600003)))) lt!600002 lt!600003)))))))

(assert (=> b!1637778 (= lt!600002 call!105684)))

(assert (=> b!1637778 (= lt!600003 (maxPrefixZipperSequence!699 thiss!17113 (t!149797 rules!1846) lt!599406))))

(declare-fun d!493106 () Bool)

(assert (=> d!493106 e!1050293))

(declare-fun res!733621 () Bool)

(assert (=> d!493106 (=> (not res!733621) (not e!1050293))))

(assert (=> d!493106 (= res!733621 (= (isDefined!2757 lt!599999) (isDefined!2756 (maxPrefixZipper!332 thiss!17113 rules!1846 (list!7103 lt!599406)))))))

(assert (=> d!493106 (= lt!599999 e!1050290)))

(declare-fun c!266462 () Bool)

(assert (=> d!493106 (= c!266462 (and ((_ is Cons!18018) rules!1846) ((_ is Nil!18018) (t!149797 rules!1846))))))

(declare-fun lt!599997 () Unit!29506)

(declare-fun lt!599998 () Unit!29506)

(assert (=> d!493106 (= lt!599997 lt!599998)))

(declare-fun lt!600001 () List!18085)

(declare-fun lt!600000 () List!18085)

(assert (=> d!493106 (isPrefix!1435 lt!600001 lt!600000)))

(assert (=> d!493106 (= lt!599998 (lemmaIsPrefixRefl!976 lt!600001 lt!600000))))

(assert (=> d!493106 (= lt!600000 (list!7103 lt!599406))))

(assert (=> d!493106 (= lt!600001 (list!7103 lt!599406))))

(assert (=> d!493106 (rulesValidInductive!994 thiss!17113 rules!1846)))

(assert (=> d!493106 (= (maxPrefixZipperSequence!699 thiss!17113 rules!1846 lt!599406) lt!599999)))

(assert (= (and d!493106 c!266462) b!1637775))

(assert (= (and d!493106 (not c!266462)) b!1637778))

(assert (= (or b!1637775 b!1637778) bm!105679))

(assert (= (and d!493106 res!733621) b!1637774))

(assert (= (and b!1637774 (not res!733624)) b!1637776))

(assert (= (and b!1637776 res!733622) b!1637779))

(assert (= (and b!1637774 res!733620) b!1637777))

(assert (= (and b!1637777 (not res!733623)) b!1637781))

(assert (= (and b!1637781 res!733619) b!1637780))

(declare-fun m!1976181 () Bool)

(assert (=> b!1637780 m!1976181))

(declare-fun m!1976183 () Bool)

(assert (=> b!1637780 m!1976183))

(assert (=> b!1637780 m!1975165))

(assert (=> b!1637780 m!1976181))

(assert (=> b!1637780 m!1975165))

(declare-fun m!1976185 () Bool)

(assert (=> b!1637780 m!1976185))

(declare-fun m!1976187 () Bool)

(assert (=> b!1637780 m!1976187))

(declare-fun m!1976189 () Bool)

(assert (=> b!1637778 m!1976189))

(assert (=> b!1637776 m!1976185))

(assert (=> b!1637776 m!1975165))

(assert (=> b!1637776 m!1975165))

(declare-fun m!1976191 () Bool)

(assert (=> b!1637776 m!1976191))

(assert (=> b!1637776 m!1976191))

(declare-fun m!1976193 () Bool)

(assert (=> b!1637776 m!1976193))

(declare-fun m!1976195 () Bool)

(assert (=> bm!105679 m!1976195))

(declare-fun m!1976197 () Bool)

(assert (=> b!1637774 m!1976197))

(assert (=> b!1637777 m!1976197))

(assert (=> b!1637779 m!1975165))

(assert (=> b!1637779 m!1976191))

(assert (=> b!1637779 m!1976191))

(assert (=> b!1637779 m!1976193))

(assert (=> b!1637779 m!1975165))

(assert (=> b!1637779 m!1976185))

(assert (=> b!1637779 m!1976187))

(assert (=> b!1637781 m!1976185))

(assert (=> b!1637781 m!1975165))

(assert (=> b!1637781 m!1975165))

(assert (=> b!1637781 m!1976181))

(assert (=> b!1637781 m!1976181))

(assert (=> b!1637781 m!1976183))

(declare-fun m!1976199 () Bool)

(assert (=> d!493106 m!1976199))

(assert (=> d!493106 m!1976191))

(declare-fun m!1976201 () Bool)

(assert (=> d!493106 m!1976201))

(assert (=> d!493106 m!1975165))

(assert (=> d!493106 m!1976191))

(assert (=> d!493106 m!1976197))

(declare-fun m!1976203 () Bool)

(assert (=> d!493106 m!1976203))

(assert (=> d!493106 m!1975199))

(assert (=> d!493106 m!1975165))

(assert (=> b!1637289 d!493106))

(declare-fun d!493108 () Bool)

(assert (=> d!493108 (= (separableTokensPredicate!746 thiss!17113 (h!23418 tokens!457) (h!23418 (t!149796 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!579 (rulesRegex!565 thiss!17113 rules!1846) (++!4830 (charsOf!1824 (h!23418 tokens!457)) (singletonSeq!1629 (apply!4670 (charsOf!1824 (h!23418 (t!149796 tokens!457))) 0))))))))

(declare-fun bs!395490 () Bool)

(assert (= bs!395490 d!493108))

(assert (=> bs!395490 m!1975129))

(assert (=> bs!395490 m!1975131))

(assert (=> bs!395490 m!1975171))

(assert (=> bs!395490 m!1975131))

(declare-fun m!1976205 () Bool)

(assert (=> bs!395490 m!1976205))

(assert (=> bs!395490 m!1975137))

(assert (=> bs!395490 m!1976205))

(declare-fun m!1976207 () Bool)

(assert (=> bs!395490 m!1976207))

(assert (=> bs!395490 m!1975171))

(assert (=> bs!395490 m!1975137))

(assert (=> bs!395490 m!1975139))

(assert (=> bs!395490 m!1975129))

(assert (=> bs!395490 m!1975139))

(assert (=> b!1637288 d!493108))

(declare-fun d!493110 () Bool)

(assert (=> d!493110 (= (head!3538 lt!599377) (h!23416 lt!599377))))

(assert (=> b!1637286 d!493110))

(declare-fun d!493112 () Bool)

(assert (=> d!493112 (= (get!5228 lt!599400) (v!24477 lt!599400))))

(assert (=> b!1637287 d!493112))

(declare-fun b!1638063 () Bool)

(declare-fun e!1050471 () Unit!29506)

(declare-fun Unit!29559 () Unit!29506)

(assert (=> b!1638063 (= e!1050471 Unit!29559)))

(declare-fun lt!600468 () Token!5916)

(declare-fun c!266507 () Bool)

(declare-fun getIndex!112 (List!18088 Rule!6150) Int)

(assert (=> b!1638063 (= c!266507 (< (getIndex!112 rules!1846 (rule!5019 (h!23418 tokens!457))) (getIndex!112 rules!1846 (rule!5019 lt!600468))))))

(declare-fun lt!600451 () Unit!29506)

(declare-fun e!1050468 () Unit!29506)

(assert (=> b!1638063 (= lt!600451 e!1050468)))

(declare-fun c!266512 () Bool)

(assert (=> b!1638063 (= c!266512 (< (getIndex!112 rules!1846 (rule!5019 lt!600468)) (getIndex!112 rules!1846 (rule!5019 (h!23418 tokens!457)))))))

(declare-fun lt!600432 () Unit!29506)

(declare-fun e!1050473 () Unit!29506)

(assert (=> b!1638063 (= lt!600432 e!1050473)))

(declare-fun c!266511 () Bool)

(assert (=> b!1638063 (= c!266511 (= (getIndex!112 rules!1846 (rule!5019 lt!600468)) (getIndex!112 rules!1846 (rule!5019 (h!23418 tokens!457)))))))

(declare-fun lt!600474 () Unit!29506)

(declare-fun e!1050472 () Unit!29506)

(assert (=> b!1638063 (= lt!600474 e!1050472)))

(assert (=> b!1638063 false))

(declare-fun b!1638064 () Bool)

(declare-fun e!1050467 () Unit!29506)

(declare-fun Unit!29560 () Unit!29506)

(assert (=> b!1638064 (= e!1050467 Unit!29560)))

(declare-fun lt!600458 () List!18085)

(declare-fun lt!600436 () Unit!29506)

(declare-fun lt!600423 () List!18085)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!44 (LexerInterface!2804 List!18088 List!18085 Token!5916 Rule!6150 List!18085) Unit!29506)

(assert (=> b!1638064 (= lt!600436 (lemmaMaxPrefixThenMatchesRulesRegex!44 thiss!17113 rules!1846 lt!600458 lt!600468 (rule!5019 lt!600468) lt!600423))))

(assert (=> b!1638064 (matchR!2002 (rulesRegex!565 thiss!17113 rules!1846) (list!7103 (charsOf!1824 lt!600468)))))

(declare-fun lt!600470 () Unit!29506)

(assert (=> b!1638064 (= lt!600470 lt!600436)))

(declare-fun lt!600480 () List!18085)

(assert (=> b!1638064 (= lt!600480 (list!7103 (charsOf!1824 (h!23418 tokens!457))))))

(declare-fun lt!600430 () List!18085)

(assert (=> b!1638064 (= lt!600430 (list!7103 (charsOf!1824 (h!23418 tokens!457))))))

(declare-fun lt!600446 () List!18085)

(declare-fun getSuffix!714 (List!18085 List!18085) List!18085)

(assert (=> b!1638064 (= lt!600446 (getSuffix!714 lt!600458 (list!7103 (charsOf!1824 (h!23418 tokens!457)))))))

(declare-fun lt!600447 () Unit!29506)

(declare-fun lemmaSamePrefixThenSameSuffix!666 (List!18085 List!18085 List!18085 List!18085 List!18085) Unit!29506)

(assert (=> b!1638064 (= lt!600447 (lemmaSamePrefixThenSameSuffix!666 lt!600480 lt!599377 lt!600430 lt!600446 lt!600458))))

(assert (=> b!1638064 (= lt!599377 lt!600446)))

(declare-fun lt!600485 () Unit!29506)

(assert (=> b!1638064 (= lt!600485 lt!600447)))

(declare-fun lt!600462 () List!18085)

(assert (=> b!1638064 (= lt!600462 (list!7103 (charsOf!1824 (h!23418 tokens!457))))))

(declare-fun lt!600428 () Unit!29506)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!157 (List!18085 List!18085) Unit!29506)

(assert (=> b!1638064 (= lt!600428 (lemmaAddHeadSuffixToPrefixStillPrefix!157 lt!600462 lt!600458))))

(assert (=> b!1638064 (isPrefix!1435 (++!4829 lt!600462 (Cons!18015 (head!3538 (getSuffix!714 lt!600458 lt!600462)) Nil!18015)) lt!600458)))

(declare-fun lt!600418 () Unit!29506)

(assert (=> b!1638064 (= lt!600418 lt!600428)))

(declare-fun lt!600454 () List!18085)

(assert (=> b!1638064 (= lt!600454 (list!7103 (charsOf!1824 lt!600468)))))

(declare-fun lt!600419 () List!18085)

(assert (=> b!1638064 (= lt!600419 (++!4829 (list!7103 (charsOf!1824 (h!23418 tokens!457))) (Cons!18015 (head!3538 lt!599377) Nil!18015)))))

(declare-fun lt!600477 () Unit!29506)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!43 (List!18085 List!18085 List!18085) Unit!29506)

(assert (=> b!1638064 (= lt!600477 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!43 lt!600454 lt!600419 lt!600458))))

(assert (=> b!1638064 (isPrefix!1435 lt!600419 lt!600454)))

(declare-fun lt!600467 () Unit!29506)

(assert (=> b!1638064 (= lt!600467 lt!600477)))

(declare-fun lt!600421 () Regex!4503)

(assert (=> b!1638064 (= lt!600421 (rulesRegex!565 thiss!17113 rules!1846))))

(declare-fun lt!600471 () List!18085)

(assert (=> b!1638064 (= lt!600471 (++!4829 (list!7103 (charsOf!1824 (h!23418 tokens!457))) (Cons!18015 (head!3538 lt!599377) Nil!18015)))))

(declare-fun lt!600439 () List!18085)

(assert (=> b!1638064 (= lt!600439 (list!7103 (charsOf!1824 lt!600468)))))

(declare-fun lt!600426 () Unit!29506)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!44 (Regex!4503 List!18085 List!18085) Unit!29506)

(assert (=> b!1638064 (= lt!600426 (lemmaNotPrefixMatchThenCannotMatchLonger!44 lt!600421 lt!600471 lt!600439))))

(assert (=> b!1638064 (not (matchR!2002 lt!600421 lt!600439))))

(declare-fun lt!600420 () Unit!29506)

(assert (=> b!1638064 (= lt!600420 lt!600426)))

(assert (=> b!1638064 false))

(declare-fun b!1638065 () Bool)

(declare-fun Unit!29561 () Unit!29506)

(assert (=> b!1638065 (= e!1050472 Unit!29561)))

(declare-fun b!1638066 () Bool)

(assert (=> b!1638066 false))

(declare-fun lt!600456 () Unit!29506)

(declare-fun lt!600441 () Unit!29506)

(assert (=> b!1638066 (= lt!600456 lt!600441)))

(declare-fun lt!600429 () List!18085)

(assert (=> b!1638066 (not (matchR!2002 (regex!3175 (rule!5019 (h!23418 tokens!457))) lt!600429))))

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!84 (LexerInterface!2804 List!18088 Rule!6150 List!18085 List!18085 Rule!6150) Unit!29506)

(assert (=> b!1638066 (= lt!600441 (lemmaMaxPrefNoSmallerRuleMatches!84 thiss!17113 rules!1846 (rule!5019 lt!600468) lt!600429 lt!600458 (rule!5019 (h!23418 tokens!457))))))

(assert (=> b!1638066 (= lt!600429 (list!7103 (charsOf!1824 lt!600468)))))

(declare-fun Unit!29562 () Unit!29506)

(assert (=> b!1638066 (= e!1050468 Unit!29562)))

(declare-fun b!1638067 () Bool)

(declare-fun e!1050470 () Bool)

(assert (=> b!1638067 (= e!1050470 (= (rule!5019 lt!600468) (get!5231 (getRuleFromTag!300 thiss!17113 rules!1846 (tag!3455 (rule!5019 lt!600468))))))))

(declare-fun b!1638069 () Bool)

(assert (=> b!1638069 false))

(declare-fun lt!600473 () Unit!29506)

(declare-fun lt!600455 () Unit!29506)

(assert (=> b!1638069 (= lt!600473 lt!600455)))

(declare-fun lt!600445 () List!18085)

(assert (=> b!1638069 (not (matchR!2002 (regex!3175 (rule!5019 lt!600468)) lt!600445))))

(assert (=> b!1638069 (= lt!600455 (lemmaMaxPrefNoSmallerRuleMatches!84 thiss!17113 rules!1846 (rule!5019 (h!23418 tokens!457)) lt!600445 (list!7103 (charsOf!1824 (h!23418 tokens!457))) (rule!5019 lt!600468)))))

(assert (=> b!1638069 (= lt!600445 (list!7103 (charsOf!1824 (h!23418 tokens!457))))))

(declare-fun Unit!29563 () Unit!29506)

(assert (=> b!1638069 (= e!1050473 Unit!29563)))

(declare-fun b!1638070 () Bool)

(declare-fun Unit!29564 () Unit!29506)

(assert (=> b!1638070 (= e!1050467 Unit!29564)))

(declare-fun b!1638071 () Bool)

(declare-fun Unit!29565 () Unit!29506)

(assert (=> b!1638071 (= e!1050471 Unit!29565)))

(declare-fun b!1638072 () Bool)

(declare-fun e!1050469 () Unit!29506)

(declare-fun Unit!29566 () Unit!29506)

(assert (=> b!1638072 (= e!1050469 Unit!29566)))

(declare-fun lt!600440 () List!18085)

(assert (=> b!1638072 (= lt!600440 (list!7103 (charsOf!1824 lt!600468)))))

(declare-fun lt!600488 () List!18085)

(assert (=> b!1638072 (= lt!600488 (list!7103 (charsOf!1824 (h!23418 tokens!457))))))

(declare-fun lt!600452 () Unit!29506)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!134 (LexerInterface!2804 List!18088 Rule!6150 List!18085 List!18085 List!18085 Rule!6150) Unit!29506)

(assert (=> b!1638072 (= lt!600452 (lemmaMaxPrefixOutputsMaxPrefix!134 thiss!17113 rules!1846 (rule!5019 lt!600468) lt!600440 lt!600458 lt!600488 (rule!5019 (h!23418 tokens!457))))))

(assert (=> b!1638072 (not (matchR!2002 (regex!3175 (rule!5019 (h!23418 tokens!457))) lt!600488))))

(declare-fun lt!600457 () Unit!29506)

(assert (=> b!1638072 (= lt!600457 lt!600452)))

(assert (=> b!1638072 false))

(declare-fun b!1638073 () Bool)

(assert (=> b!1638073 false))

(declare-fun lt!600437 () Unit!29506)

(declare-fun lt!600481 () Unit!29506)

(assert (=> b!1638073 (= lt!600437 lt!600481)))

(assert (=> b!1638073 (= (rule!5019 lt!600468) (rule!5019 (h!23418 tokens!457)))))

(declare-fun lemmaSameIndexThenSameElement!60 (List!18088 Rule!6150 Rule!6150) Unit!29506)

(assert (=> b!1638073 (= lt!600481 (lemmaSameIndexThenSameElement!60 rules!1846 (rule!5019 lt!600468) (rule!5019 (h!23418 tokens!457))))))

(declare-fun Unit!29567 () Unit!29506)

(assert (=> b!1638073 (= e!1050472 Unit!29567)))

(declare-fun b!1638074 () Bool)

(declare-fun Unit!29568 () Unit!29506)

(assert (=> b!1638074 (= e!1050468 Unit!29568)))

(declare-fun b!1638075 () Bool)

(declare-fun res!733761 () Bool)

(assert (=> b!1638075 (=> (not res!733761) (not e!1050470))))

(assert (=> b!1638075 (= res!733761 (matchR!2002 (regex!3175 (get!5231 (getRuleFromTag!300 thiss!17113 rules!1846 (tag!3455 (rule!5019 lt!600468))))) (list!7103 (charsOf!1824 lt!600468))))))

(declare-fun b!1638076 () Bool)

(declare-fun Unit!29569 () Unit!29506)

(assert (=> b!1638076 (= e!1050473 Unit!29569)))

(declare-fun d!493114 () Bool)

(assert (=> d!493114 (= (maxPrefix!1368 thiss!17113 rules!1846 (++!4829 (list!7103 (charsOf!1824 (h!23418 tokens!457))) lt!599377)) (Some!3388 (tuple2!17647 (h!23418 tokens!457) lt!599377)))))

(declare-fun lt!600475 () Unit!29506)

(declare-fun Unit!29570 () Unit!29506)

(assert (=> d!493114 (= lt!600475 Unit!29570)))

(declare-fun lt!600425 () Unit!29506)

(assert (=> d!493114 (= lt!600425 e!1050471)))

(declare-fun c!266510 () Bool)

(assert (=> d!493114 (= c!266510 (not (= (rule!5019 lt!600468) (rule!5019 (h!23418 tokens!457)))))))

(declare-fun lt!600476 () Unit!29506)

(declare-fun lt!600435 () Unit!29506)

(assert (=> d!493114 (= lt!600476 lt!600435)))

(assert (=> d!493114 (= lt!599377 lt!600423)))

(assert (=> d!493114 (= lt!600435 (lemmaSamePrefixThenSameSuffix!666 (list!7103 (charsOf!1824 (h!23418 tokens!457))) lt!599377 (list!7103 (charsOf!1824 (h!23418 tokens!457))) lt!600423 lt!600458))))

(declare-fun lt!600487 () Unit!29506)

(declare-fun lt!600478 () Unit!29506)

(assert (=> d!493114 (= lt!600487 lt!600478)))

(declare-fun lt!600482 () List!18085)

(declare-fun lt!600464 () List!18085)

(assert (=> d!493114 (= lt!600482 lt!600464)))

(declare-fun lemmaIsPrefixSameLengthThenSameList!167 (List!18085 List!18085 List!18085) Unit!29506)

(assert (=> d!493114 (= lt!600478 (lemmaIsPrefixSameLengthThenSameList!167 lt!600482 lt!600464 lt!600458))))

(assert (=> d!493114 (= lt!600464 (list!7103 (charsOf!1824 (h!23418 tokens!457))))))

(assert (=> d!493114 (= lt!600482 (list!7103 (charsOf!1824 lt!600468)))))

(declare-fun lt!600438 () Unit!29506)

(assert (=> d!493114 (= lt!600438 e!1050469)))

(declare-fun c!266509 () Bool)

(assert (=> d!493114 (= c!266509 (< (size!14364 (charsOf!1824 lt!600468)) (size!14364 (charsOf!1824 (h!23418 tokens!457)))))))

(declare-fun lt!600431 () Unit!29506)

(assert (=> d!493114 (= lt!600431 e!1050467)))

(declare-fun c!266508 () Bool)

(assert (=> d!493114 (= c!266508 (> (size!14364 (charsOf!1824 lt!600468)) (size!14364 (charsOf!1824 (h!23418 tokens!457)))))))

(declare-fun lt!600484 () Unit!29506)

(declare-fun lt!600433 () Unit!29506)

(assert (=> d!493114 (= lt!600484 lt!600433)))

(assert (=> d!493114 (matchR!2002 (rulesRegex!565 thiss!17113 rules!1846) (list!7103 (charsOf!1824 (h!23418 tokens!457))))))

(assert (=> d!493114 (= lt!600433 (lemmaMaxPrefixThenMatchesRulesRegex!44 thiss!17113 rules!1846 (list!7103 (charsOf!1824 (h!23418 tokens!457))) (h!23418 tokens!457) (rule!5019 (h!23418 tokens!457)) Nil!18015))))

(declare-fun lt!600460 () Unit!29506)

(declare-fun lt!600422 () Unit!29506)

(assert (=> d!493114 (= lt!600460 lt!600422)))

(declare-fun lt!600483 () List!18085)

(assert (=> d!493114 (= lt!600423 lt!600483)))

(declare-fun lt!600424 () List!18085)

(declare-fun lt!600448 () List!18085)

(assert (=> d!493114 (= lt!600422 (lemmaSamePrefixThenSameSuffix!666 lt!600448 lt!600423 lt!600424 lt!600483 lt!600458))))

(assert (=> d!493114 (= lt!600483 (getSuffix!714 lt!600458 (list!7103 (charsOf!1824 lt!600468))))))

(assert (=> d!493114 (= lt!600424 (list!7103 (charsOf!1824 lt!600468)))))

(assert (=> d!493114 (= lt!600448 (list!7103 (charsOf!1824 lt!600468)))))

(declare-fun lt!600450 () Unit!29506)

(declare-fun lt!600453 () Unit!29506)

(assert (=> d!493114 (= lt!600450 lt!600453)))

(declare-fun lt!600466 () List!18085)

(assert (=> d!493114 (= (maxPrefixOneRule!791 thiss!17113 (rule!5019 lt!600468) lt!600458) (Some!3388 (tuple2!17647 (Token!5917 (apply!4678 (transformation!3175 (rule!5019 lt!600468)) (seqFromList!2100 lt!600466)) (rule!5019 lt!600468) (size!14365 lt!600466) lt!600466) lt!600423)))))

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!233 (LexerInterface!2804 List!18088 List!18085 List!18085 List!18085 Rule!6150) Unit!29506)

(assert (=> d!493114 (= lt!600453 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!233 thiss!17113 rules!1846 lt!600466 lt!600458 lt!600423 (rule!5019 lt!600468)))))

(assert (=> d!493114 (= lt!600466 (list!7103 (charsOf!1824 lt!600468)))))

(declare-fun lt!600472 () Unit!29506)

(declare-fun lemmaCharactersSize!339 (Token!5916) Unit!29506)

(assert (=> d!493114 (= lt!600472 (lemmaCharactersSize!339 lt!600468))))

(declare-fun lt!600459 () Unit!29506)

(declare-fun lemmaEqSameImage!192 (TokenValueInjection!6190 BalanceConc!11940 BalanceConc!11940) Unit!29506)

(assert (=> d!493114 (= lt!600459 (lemmaEqSameImage!192 (transformation!3175 (rule!5019 lt!600468)) (charsOf!1824 lt!600468) (seqFromList!2100 (originalCharacters!3989 lt!600468))))))

(declare-fun lt!600442 () Unit!29506)

(declare-fun lemmaSemiInverse!407 (TokenValueInjection!6190 BalanceConc!11940) Unit!29506)

(assert (=> d!493114 (= lt!600442 (lemmaSemiInverse!407 (transformation!3175 (rule!5019 lt!600468)) (charsOf!1824 lt!600468)))))

(declare-fun lt!600434 () Unit!29506)

(declare-fun lemmaInv!472 (TokenValueInjection!6190) Unit!29506)

(assert (=> d!493114 (= lt!600434 (lemmaInv!472 (transformation!3175 (rule!5019 lt!600468))))))

(declare-fun lt!600465 () Unit!29506)

(declare-fun lt!600479 () Unit!29506)

(assert (=> d!493114 (= lt!600465 lt!600479)))

(declare-fun lt!600486 () List!18085)

(assert (=> d!493114 (isPrefix!1435 lt!600486 (++!4829 lt!600486 lt!600423))))

(assert (=> d!493114 (= lt!600479 (lemmaConcatTwoListThenFirstIsPrefix!960 lt!600486 lt!600423))))

(assert (=> d!493114 (= lt!600486 (list!7103 (charsOf!1824 lt!600468)))))

(declare-fun lt!600427 () Unit!29506)

(declare-fun lt!600461 () Unit!29506)

(assert (=> d!493114 (= lt!600427 lt!600461)))

(assert (=> d!493114 e!1050470))

(declare-fun res!733760 () Bool)

(assert (=> d!493114 (=> (not res!733760) (not e!1050470))))

(assert (=> d!493114 (= res!733760 (isDefined!2759 (getRuleFromTag!300 thiss!17113 rules!1846 (tag!3455 (rule!5019 lt!600468)))))))

(assert (=> d!493114 (= lt!600461 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!300 thiss!17113 rules!1846 lt!600458 lt!600468))))

(declare-fun lt!600463 () Option!3389)

(assert (=> d!493114 (= lt!600423 (_2!10225 (get!5228 lt!600463)))))

(assert (=> d!493114 (= lt!600468 (_1!10225 (get!5228 lt!600463)))))

(declare-fun lt!600449 () Unit!29506)

(assert (=> d!493114 (= lt!600449 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!378 thiss!17113 rules!1846 (list!7103 (charsOf!1824 (h!23418 tokens!457))) lt!599377))))

(assert (=> d!493114 (= lt!600463 (maxPrefix!1368 thiss!17113 rules!1846 lt!600458))))

(declare-fun lt!600443 () Unit!29506)

(declare-fun lt!600444 () Unit!29506)

(assert (=> d!493114 (= lt!600443 lt!600444)))

(declare-fun lt!600469 () List!18085)

(assert (=> d!493114 (isPrefix!1435 lt!600469 (++!4829 lt!600469 lt!599377))))

(assert (=> d!493114 (= lt!600444 (lemmaConcatTwoListThenFirstIsPrefix!960 lt!600469 lt!599377))))

(assert (=> d!493114 (= lt!600469 (list!7103 (charsOf!1824 (h!23418 tokens!457))))))

(assert (=> d!493114 (= lt!600458 (++!4829 (list!7103 (charsOf!1824 (h!23418 tokens!457))) lt!599377))))

(assert (=> d!493114 (not (isEmpty!11049 rules!1846))))

(assert (=> d!493114 (= (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!140 thiss!17113 rules!1846 (h!23418 tokens!457) (rule!5019 (h!23418 tokens!457)) lt!599377) lt!600475)))

(declare-fun b!1638068 () Bool)

(declare-fun Unit!29571 () Unit!29506)

(assert (=> b!1638068 (= e!1050469 Unit!29571)))

(assert (= (and d!493114 res!733760) b!1638075))

(assert (= (and b!1638075 res!733761) b!1638067))

(assert (= (and d!493114 c!266508) b!1638064))

(assert (= (and d!493114 (not c!266508)) b!1638070))

(assert (= (and d!493114 c!266509) b!1638072))

(assert (= (and d!493114 (not c!266509)) b!1638068))

(assert (= (and d!493114 c!266510) b!1638063))

(assert (= (and d!493114 (not c!266510)) b!1638071))

(assert (= (and b!1638063 c!266507) b!1638066))

(assert (= (and b!1638063 (not c!266507)) b!1638074))

(assert (= (and b!1638063 c!266512) b!1638069))

(assert (= (and b!1638063 (not c!266512)) b!1638076))

(assert (= (and b!1638063 c!266511) b!1638073))

(assert (= (and b!1638063 (not c!266511)) b!1638065))

(assert (=> b!1638064 m!1975137))

(declare-fun m!1976729 () Bool)

(assert (=> b!1638064 m!1976729))

(declare-fun m!1976731 () Bool)

(assert (=> b!1638064 m!1976731))

(declare-fun m!1976733 () Bool)

(assert (=> b!1638064 m!1976733))

(declare-fun m!1976735 () Bool)

(assert (=> b!1638064 m!1976735))

(assert (=> b!1638064 m!1975137))

(assert (=> b!1638064 m!1975205))

(declare-fun m!1976737 () Bool)

(assert (=> b!1638064 m!1976737))

(declare-fun m!1976739 () Bool)

(assert (=> b!1638064 m!1976739))

(declare-fun m!1976741 () Bool)

(assert (=> b!1638064 m!1976741))

(assert (=> b!1638064 m!1975171))

(declare-fun m!1976743 () Bool)

(assert (=> b!1638064 m!1976743))

(declare-fun m!1976745 () Bool)

(assert (=> b!1638064 m!1976745))

(assert (=> b!1638064 m!1976729))

(declare-fun m!1976747 () Bool)

(assert (=> b!1638064 m!1976747))

(declare-fun m!1976749 () Bool)

(assert (=> b!1638064 m!1976749))

(declare-fun m!1976751 () Bool)

(assert (=> b!1638064 m!1976751))

(assert (=> b!1638064 m!1976733))

(declare-fun m!1976753 () Bool)

(assert (=> b!1638064 m!1976753))

(assert (=> b!1638064 m!1976745))

(assert (=> b!1638064 m!1976749))

(declare-fun m!1976755 () Bool)

(assert (=> b!1638064 m!1976755))

(declare-fun m!1976757 () Bool)

(assert (=> b!1638064 m!1976757))

(declare-fun m!1976759 () Bool)

(assert (=> b!1638064 m!1976759))

(assert (=> b!1638064 m!1975171))

(assert (=> b!1638064 m!1976749))

(assert (=> b!1638064 m!1976735))

(declare-fun m!1976761 () Bool)

(assert (=> b!1638064 m!1976761))

(declare-fun m!1976763 () Bool)

(assert (=> b!1638073 m!1976763))

(declare-fun m!1976765 () Bool)

(assert (=> d!493114 m!1976765))

(declare-fun m!1976767 () Bool)

(assert (=> d!493114 m!1976767))

(assert (=> d!493114 m!1976749))

(declare-fun m!1976769 () Bool)

(assert (=> d!493114 m!1976769))

(declare-fun m!1976771 () Bool)

(assert (=> d!493114 m!1976771))

(assert (=> d!493114 m!1976745))

(declare-fun m!1976773 () Bool)

(assert (=> d!493114 m!1976773))

(declare-fun m!1976775 () Bool)

(assert (=> d!493114 m!1976775))

(declare-fun m!1976777 () Bool)

(assert (=> d!493114 m!1976777))

(assert (=> d!493114 m!1975171))

(assert (=> d!493114 m!1976749))

(declare-fun m!1976779 () Bool)

(assert (=> d!493114 m!1976779))

(assert (=> d!493114 m!1976749))

(declare-fun m!1976781 () Bool)

(assert (=> d!493114 m!1976781))

(assert (=> d!493114 m!1976745))

(declare-fun m!1976783 () Bool)

(assert (=> d!493114 m!1976783))

(declare-fun m!1976785 () Bool)

(assert (=> d!493114 m!1976785))

(assert (=> d!493114 m!1976745))

(declare-fun m!1976787 () Bool)

(assert (=> d!493114 m!1976787))

(declare-fun m!1976789 () Bool)

(assert (=> d!493114 m!1976789))

(assert (=> d!493114 m!1976749))

(declare-fun m!1976791 () Bool)

(assert (=> d!493114 m!1976791))

(declare-fun m!1976793 () Bool)

(assert (=> d!493114 m!1976793))

(declare-fun m!1976795 () Bool)

(assert (=> d!493114 m!1976795))

(declare-fun m!1976797 () Bool)

(assert (=> d!493114 m!1976797))

(assert (=> d!493114 m!1976777))

(declare-fun m!1976799 () Bool)

(assert (=> d!493114 m!1976799))

(assert (=> d!493114 m!1976745))

(declare-fun m!1976801 () Bool)

(assert (=> d!493114 m!1976801))

(assert (=> d!493114 m!1975137))

(declare-fun m!1976803 () Bool)

(assert (=> d!493114 m!1976803))

(declare-fun m!1976805 () Bool)

(assert (=> d!493114 m!1976805))

(assert (=> d!493114 m!1976803))

(declare-fun m!1976807 () Bool)

(assert (=> d!493114 m!1976807))

(assert (=> d!493114 m!1975137))

(assert (=> d!493114 m!1976749))

(declare-fun m!1976809 () Bool)

(assert (=> d!493114 m!1976809))

(declare-fun m!1976811 () Bool)

(assert (=> d!493114 m!1976811))

(assert (=> d!493114 m!1976729))

(declare-fun m!1976813 () Bool)

(assert (=> d!493114 m!1976813))

(assert (=> d!493114 m!1975171))

(declare-fun m!1976815 () Bool)

(assert (=> d!493114 m!1976815))

(declare-fun m!1976817 () Bool)

(assert (=> d!493114 m!1976817))

(assert (=> d!493114 m!1976781))

(declare-fun m!1976819 () Bool)

(assert (=> d!493114 m!1976819))

(assert (=> d!493114 m!1975123))

(assert (=> d!493114 m!1976773))

(assert (=> d!493114 m!1976797))

(declare-fun m!1976821 () Bool)

(assert (=> d!493114 m!1976821))

(assert (=> d!493114 m!1975171))

(assert (=> d!493114 m!1976749))

(assert (=> d!493114 m!1976749))

(declare-fun m!1976823 () Bool)

(assert (=> d!493114 m!1976823))

(assert (=> d!493114 m!1976745))

(assert (=> d!493114 m!1976729))

(declare-fun m!1976825 () Bool)

(assert (=> d!493114 m!1976825))

(assert (=> d!493114 m!1976795))

(declare-fun m!1976827 () Bool)

(assert (=> d!493114 m!1976827))

(assert (=> b!1638067 m!1976795))

(assert (=> b!1638067 m!1976795))

(declare-fun m!1976829 () Bool)

(assert (=> b!1638067 m!1976829))

(declare-fun m!1976831 () Bool)

(assert (=> b!1638069 m!1976831))

(assert (=> b!1638069 m!1975171))

(assert (=> b!1638069 m!1975171))

(assert (=> b!1638069 m!1976749))

(assert (=> b!1638069 m!1976749))

(declare-fun m!1976833 () Bool)

(assert (=> b!1638069 m!1976833))

(declare-fun m!1976835 () Bool)

(assert (=> b!1638063 m!1976835))

(declare-fun m!1976837 () Bool)

(assert (=> b!1638063 m!1976837))

(assert (=> b!1638075 m!1976795))

(assert (=> b!1638075 m!1976795))

(assert (=> b!1638075 m!1976829))

(assert (=> b!1638075 m!1976745))

(assert (=> b!1638075 m!1976729))

(declare-fun m!1976839 () Bool)

(assert (=> b!1638075 m!1976839))

(assert (=> b!1638075 m!1976745))

(assert (=> b!1638075 m!1976729))

(declare-fun m!1976841 () Bool)

(assert (=> b!1638066 m!1976841))

(declare-fun m!1976843 () Bool)

(assert (=> b!1638066 m!1976843))

(assert (=> b!1638066 m!1976745))

(assert (=> b!1638066 m!1976745))

(assert (=> b!1638066 m!1976729))

(assert (=> b!1638072 m!1976745))

(declare-fun m!1976845 () Bool)

(assert (=> b!1638072 m!1976845))

(declare-fun m!1976847 () Bool)

(assert (=> b!1638072 m!1976847))

(assert (=> b!1638072 m!1975171))

(assert (=> b!1638072 m!1976749))

(assert (=> b!1638072 m!1975171))

(assert (=> b!1638072 m!1976745))

(assert (=> b!1638072 m!1976729))

(assert (=> b!1637287 d!493114))

(declare-fun d!493206 () Bool)

(declare-fun c!266513 () Bool)

(assert (=> d!493206 (= c!266513 (isEmpty!11048 (++!4829 lt!599381 lt!599401)))))

(declare-fun e!1050474 () Bool)

(assert (=> d!493206 (= (prefixMatch!438 lt!599404 (++!4829 lt!599381 lt!599401)) e!1050474)))

(declare-fun b!1638077 () Bool)

(assert (=> b!1638077 (= e!1050474 (not (lostCause!454 lt!599404)))))

(declare-fun b!1638078 () Bool)

(assert (=> b!1638078 (= e!1050474 (prefixMatch!438 (derivativeStep!1098 lt!599404 (head!3538 (++!4829 lt!599381 lt!599401))) (tail!2395 (++!4829 lt!599381 lt!599401))))))

(assert (= (and d!493206 c!266513) b!1638077))

(assert (= (and d!493206 (not c!266513)) b!1638078))

(assert (=> d!493206 m!1975183))

(declare-fun m!1976849 () Bool)

(assert (=> d!493206 m!1976849))

(assert (=> b!1638077 m!1975849))

(assert (=> b!1638078 m!1975183))

(declare-fun m!1976851 () Bool)

(assert (=> b!1638078 m!1976851))

(assert (=> b!1638078 m!1976851))

(declare-fun m!1976853 () Bool)

(assert (=> b!1638078 m!1976853))

(assert (=> b!1638078 m!1975183))

(declare-fun m!1976855 () Bool)

(assert (=> b!1638078 m!1976855))

(assert (=> b!1638078 m!1976853))

(assert (=> b!1638078 m!1976855))

(declare-fun m!1976857 () Bool)

(assert (=> b!1638078 m!1976857))

(assert (=> b!1637285 d!493206))

(declare-fun b!1638081 () Bool)

(declare-fun res!733763 () Bool)

(declare-fun e!1050476 () Bool)

(assert (=> b!1638081 (=> (not res!733763) (not e!1050476))))

(declare-fun lt!600489 () List!18085)

(assert (=> b!1638081 (= res!733763 (= (size!14365 lt!600489) (+ (size!14365 lt!599381) (size!14365 lt!599401))))))

(declare-fun b!1638082 () Bool)

(assert (=> b!1638082 (= e!1050476 (or (not (= lt!599401 Nil!18015)) (= lt!600489 lt!599381)))))

(declare-fun b!1638080 () Bool)

(declare-fun e!1050475 () List!18085)

(assert (=> b!1638080 (= e!1050475 (Cons!18015 (h!23416 lt!599381) (++!4829 (t!149794 lt!599381) lt!599401)))))

(declare-fun d!493208 () Bool)

(assert (=> d!493208 e!1050476))

(declare-fun res!733762 () Bool)

(assert (=> d!493208 (=> (not res!733762) (not e!1050476))))

(assert (=> d!493208 (= res!733762 (= (content!2495 lt!600489) ((_ map or) (content!2495 lt!599381) (content!2495 lt!599401))))))

(assert (=> d!493208 (= lt!600489 e!1050475)))

(declare-fun c!266514 () Bool)

(assert (=> d!493208 (= c!266514 ((_ is Nil!18015) lt!599381))))

(assert (=> d!493208 (= (++!4829 lt!599381 lt!599401) lt!600489)))

(declare-fun b!1638079 () Bool)

(assert (=> b!1638079 (= e!1050475 lt!599401)))

(assert (= (and d!493208 c!266514) b!1638079))

(assert (= (and d!493208 (not c!266514)) b!1638080))

(assert (= (and d!493208 res!733762) b!1638081))

(assert (= (and b!1638081 res!733763) b!1638082))

(declare-fun m!1976859 () Bool)

(assert (=> b!1638081 m!1976859))

(assert (=> b!1638081 m!1975375))

(assert (=> b!1638081 m!1976083))

(declare-fun m!1976861 () Bool)

(assert (=> b!1638080 m!1976861))

(declare-fun m!1976863 () Bool)

(assert (=> d!493208 m!1976863))

(assert (=> d!493208 m!1975751))

(assert (=> d!493208 m!1976091))

(assert (=> b!1637285 d!493208))

(declare-fun d!493210 () Bool)

(assert (=> d!493210 (= (get!5228 (maxPrefixZipper!332 thiss!17113 rules!1846 lt!599384)) (v!24477 (maxPrefixZipper!332 thiss!17113 rules!1846 lt!599384)))))

(assert (=> b!1637284 d!493210))

(declare-fun lt!600502 () Option!3389)

(declare-fun d!493212 () Bool)

(assert (=> d!493212 (= lt!600502 (maxPrefix!1368 thiss!17113 rules!1846 lt!599384))))

(declare-fun e!1050479 () Option!3389)

(assert (=> d!493212 (= lt!600502 e!1050479)))

(declare-fun c!266517 () Bool)

(assert (=> d!493212 (= c!266517 (and ((_ is Cons!18018) rules!1846) ((_ is Nil!18018) (t!149797 rules!1846))))))

(declare-fun lt!600500 () Unit!29506)

(declare-fun lt!600503 () Unit!29506)

(assert (=> d!493212 (= lt!600500 lt!600503)))

(assert (=> d!493212 (isPrefix!1435 lt!599384 lt!599384)))

(assert (=> d!493212 (= lt!600503 (lemmaIsPrefixRefl!976 lt!599384 lt!599384))))

(assert (=> d!493212 (rulesValidInductive!994 thiss!17113 rules!1846)))

(assert (=> d!493212 (= (maxPrefixZipper!332 thiss!17113 rules!1846 lt!599384) lt!600502)))

(declare-fun bm!105691 () Bool)

(declare-fun call!105696 () Option!3389)

(declare-fun maxPrefixOneRuleZipper!119 (LexerInterface!2804 Rule!6150 List!18085) Option!3389)

(assert (=> bm!105691 (= call!105696 (maxPrefixOneRuleZipper!119 thiss!17113 (h!23419 rules!1846) lt!599384))))

(declare-fun b!1638087 () Bool)

(assert (=> b!1638087 (= e!1050479 call!105696)))

(declare-fun b!1638088 () Bool)

(declare-fun lt!600504 () Option!3389)

(declare-fun lt!600501 () Option!3389)

(assert (=> b!1638088 (= e!1050479 (ite (and ((_ is None!3388) lt!600504) ((_ is None!3388) lt!600501)) None!3388 (ite ((_ is None!3388) lt!600501) lt!600504 (ite ((_ is None!3388) lt!600504) lt!600501 (ite (>= (size!14360 (_1!10225 (v!24477 lt!600504))) (size!14360 (_1!10225 (v!24477 lt!600501)))) lt!600504 lt!600501)))))))

(assert (=> b!1638088 (= lt!600504 call!105696)))

(assert (=> b!1638088 (= lt!600501 (maxPrefixZipper!332 thiss!17113 (t!149797 rules!1846) lt!599384))))

(assert (= (and d!493212 c!266517) b!1638087))

(assert (= (and d!493212 (not c!266517)) b!1638088))

(assert (= (or b!1638087 b!1638088) bm!105691))

(assert (=> d!493212 m!1975235))

(assert (=> d!493212 m!1976011))

(assert (=> d!493212 m!1976013))

(assert (=> d!493212 m!1975199))

(declare-fun m!1976865 () Bool)

(assert (=> bm!105691 m!1976865))

(declare-fun m!1976867 () Bool)

(assert (=> b!1638088 m!1976867))

(assert (=> b!1637284 d!493212))

(declare-fun b!1638102 () Bool)

(declare-fun b_free!44295 () Bool)

(declare-fun b_next!44999 () Bool)

(assert (=> b!1638102 (= b_free!44295 (not b_next!44999))))

(declare-fun tp!474743 () Bool)

(declare-fun b_and!116085 () Bool)

(assert (=> b!1638102 (= tp!474743 b_and!116085)))

(declare-fun b_free!44297 () Bool)

(declare-fun b_next!45001 () Bool)

(assert (=> b!1638102 (= b_free!44297 (not b_next!45001))))

(declare-fun t!149833 () Bool)

(declare-fun tb!93839 () Bool)

(assert (=> (and b!1638102 (= (toChars!4465 (transformation!3175 (rule!5019 (h!23418 (t!149796 tokens!457))))) (toChars!4465 (transformation!3175 (rule!5019 (h!23418 (t!149796 tokens!457)))))) t!149833) tb!93839))

(declare-fun result!113240 () Bool)

(assert (= result!113240 result!113202))

(assert (=> d!492936 t!149833))

(declare-fun t!149835 () Bool)

(declare-fun tb!93841 () Bool)

(assert (=> (and b!1638102 (= (toChars!4465 (transformation!3175 (rule!5019 (h!23418 (t!149796 tokens!457))))) (toChars!4465 (transformation!3175 (rule!5019 (h!23418 tokens!457))))) t!149835) tb!93841))

(declare-fun result!113242 () Bool)

(assert (= result!113242 result!113208))

(assert (=> b!1637502 t!149835))

(assert (=> d!493002 t!149835))

(declare-fun tp!474740 () Bool)

(declare-fun b_and!116087 () Bool)

(assert (=> b!1638102 (= tp!474740 (and (=> t!149833 result!113240) (=> t!149835 result!113242) b_and!116087))))

(declare-fun e!1050496 () Bool)

(assert (=> b!1637299 (= tp!474666 e!1050496)))

(declare-fun e!1050492 () Bool)

(declare-fun tp!474741 () Bool)

(declare-fun b!1638099 () Bool)

(assert (=> b!1638099 (= e!1050496 (and (inv!23368 (h!23418 (t!149796 tokens!457))) e!1050492 tp!474741))))

(declare-fun tp!474742 () Bool)

(declare-fun b!1638100 () Bool)

(declare-fun e!1050495 () Bool)

(assert (=> b!1638100 (= e!1050492 (and (inv!21 (value!100160 (h!23418 (t!149796 tokens!457)))) e!1050495 tp!474742))))

(declare-fun e!1050497 () Bool)

(assert (=> b!1638102 (= e!1050497 (and tp!474743 tp!474740))))

(declare-fun b!1638101 () Bool)

(declare-fun tp!474739 () Bool)

(assert (=> b!1638101 (= e!1050495 (and tp!474739 (inv!23364 (tag!3455 (rule!5019 (h!23418 (t!149796 tokens!457))))) (inv!23367 (transformation!3175 (rule!5019 (h!23418 (t!149796 tokens!457))))) e!1050497))))

(assert (= b!1638101 b!1638102))

(assert (= b!1638100 b!1638101))

(assert (= b!1638099 b!1638100))

(assert (= (and b!1637299 ((_ is Cons!18017) (t!149796 tokens!457))) b!1638099))

(declare-fun m!1976869 () Bool)

(assert (=> b!1638099 m!1976869))

(declare-fun m!1976871 () Bool)

(assert (=> b!1638100 m!1976871))

(declare-fun m!1976873 () Bool)

(assert (=> b!1638101 m!1976873))

(declare-fun m!1976875 () Bool)

(assert (=> b!1638101 m!1976875))

(declare-fun b!1638113 () Bool)

(declare-fun b_free!44299 () Bool)

(declare-fun b_next!45003 () Bool)

(assert (=> b!1638113 (= b_free!44299 (not b_next!45003))))

(declare-fun tp!474752 () Bool)

(declare-fun b_and!116089 () Bool)

(assert (=> b!1638113 (= tp!474752 b_and!116089)))

(declare-fun b_free!44301 () Bool)

(declare-fun b_next!45005 () Bool)

(assert (=> b!1638113 (= b_free!44301 (not b_next!45005))))

(declare-fun t!149837 () Bool)

(declare-fun tb!93843 () Bool)

(assert (=> (and b!1638113 (= (toChars!4465 (transformation!3175 (h!23419 (t!149797 rules!1846)))) (toChars!4465 (transformation!3175 (rule!5019 (h!23418 (t!149796 tokens!457)))))) t!149837) tb!93843))

(declare-fun result!113246 () Bool)

(assert (= result!113246 result!113202))

(assert (=> d!492936 t!149837))

(declare-fun tb!93845 () Bool)

(declare-fun t!149839 () Bool)

(assert (=> (and b!1638113 (= (toChars!4465 (transformation!3175 (h!23419 (t!149797 rules!1846)))) (toChars!4465 (transformation!3175 (rule!5019 (h!23418 tokens!457))))) t!149839) tb!93845))

(declare-fun result!113248 () Bool)

(assert (= result!113248 result!113208))

(assert (=> b!1637502 t!149839))

(assert (=> d!493002 t!149839))

(declare-fun tp!474753 () Bool)

(declare-fun b_and!116091 () Bool)

(assert (=> b!1638113 (= tp!474753 (and (=> t!149837 result!113246) (=> t!149839 result!113248) b_and!116091))))

(declare-fun e!1050508 () Bool)

(assert (=> b!1638113 (= e!1050508 (and tp!474752 tp!474753))))

(declare-fun tp!474754 () Bool)

(declare-fun b!1638112 () Bool)

(declare-fun e!1050507 () Bool)

(assert (=> b!1638112 (= e!1050507 (and tp!474754 (inv!23364 (tag!3455 (h!23419 (t!149797 rules!1846)))) (inv!23367 (transformation!3175 (h!23419 (t!149797 rules!1846)))) e!1050508))))

(declare-fun b!1638111 () Bool)

(declare-fun e!1050506 () Bool)

(declare-fun tp!474755 () Bool)

(assert (=> b!1638111 (= e!1050506 (and e!1050507 tp!474755))))

(assert (=> b!1637271 (= tp!474662 e!1050506)))

(assert (= b!1638112 b!1638113))

(assert (= b!1638111 b!1638112))

(assert (= (and b!1637271 ((_ is Cons!18018) (t!149797 rules!1846))) b!1638111))

(declare-fun m!1976877 () Bool)

(assert (=> b!1638112 m!1976877))

(declare-fun m!1976879 () Bool)

(assert (=> b!1638112 m!1976879))

(declare-fun b!1638124 () Bool)

(declare-fun e!1050512 () Bool)

(declare-fun tp_is_empty!7313 () Bool)

(assert (=> b!1638124 (= e!1050512 tp_is_empty!7313)))

(assert (=> b!1637290 (= tp!474669 e!1050512)))

(declare-fun b!1638125 () Bool)

(declare-fun tp!474767 () Bool)

(declare-fun tp!474770 () Bool)

(assert (=> b!1638125 (= e!1050512 (and tp!474767 tp!474770))))

(declare-fun b!1638126 () Bool)

(declare-fun tp!474768 () Bool)

(assert (=> b!1638126 (= e!1050512 tp!474768)))

(declare-fun b!1638127 () Bool)

(declare-fun tp!474769 () Bool)

(declare-fun tp!474766 () Bool)

(assert (=> b!1638127 (= e!1050512 (and tp!474769 tp!474766))))

(assert (= (and b!1637290 ((_ is ElementMatch!4503) (regex!3175 (rule!5019 (h!23418 tokens!457))))) b!1638124))

(assert (= (and b!1637290 ((_ is Concat!7768) (regex!3175 (rule!5019 (h!23418 tokens!457))))) b!1638125))

(assert (= (and b!1637290 ((_ is Star!4503) (regex!3175 (rule!5019 (h!23418 tokens!457))))) b!1638126))

(assert (= (and b!1637290 ((_ is Union!4503) (regex!3175 (rule!5019 (h!23418 tokens!457))))) b!1638127))

(declare-fun b!1638132 () Bool)

(declare-fun e!1050515 () Bool)

(declare-fun tp!474773 () Bool)

(assert (=> b!1638132 (= e!1050515 (and tp_is_empty!7313 tp!474773))))

(assert (=> b!1637280 (= tp!474664 e!1050515)))

(assert (= (and b!1637280 ((_ is Cons!18015) (originalCharacters!3989 (h!23418 tokens!457)))) b!1638132))

(declare-fun b!1638133 () Bool)

(declare-fun e!1050516 () Bool)

(assert (=> b!1638133 (= e!1050516 tp_is_empty!7313)))

(assert (=> b!1637296 (= tp!474667 e!1050516)))

(declare-fun b!1638134 () Bool)

(declare-fun tp!474775 () Bool)

(declare-fun tp!474778 () Bool)

(assert (=> b!1638134 (= e!1050516 (and tp!474775 tp!474778))))

(declare-fun b!1638135 () Bool)

(declare-fun tp!474776 () Bool)

(assert (=> b!1638135 (= e!1050516 tp!474776)))

(declare-fun b!1638136 () Bool)

(declare-fun tp!474777 () Bool)

(declare-fun tp!474774 () Bool)

(assert (=> b!1638136 (= e!1050516 (and tp!474777 tp!474774))))

(assert (= (and b!1637296 ((_ is ElementMatch!4503) (regex!3175 (h!23419 rules!1846)))) b!1638133))

(assert (= (and b!1637296 ((_ is Concat!7768) (regex!3175 (h!23419 rules!1846)))) b!1638134))

(assert (= (and b!1637296 ((_ is Star!4503) (regex!3175 (h!23419 rules!1846)))) b!1638135))

(assert (= (and b!1637296 ((_ is Union!4503) (regex!3175 (h!23419 rules!1846)))) b!1638136))

(declare-fun b_lambda!51479 () Bool)

(assert (= b_lambda!51463 (or (and b!1637298 b_free!44281 (= (toChars!4465 (transformation!3175 (h!23419 rules!1846))) (toChars!4465 (transformation!3175 (rule!5019 (h!23418 tokens!457)))))) (and b!1637269 b_free!44285) (and b!1638102 b_free!44297 (= (toChars!4465 (transformation!3175 (rule!5019 (h!23418 (t!149796 tokens!457))))) (toChars!4465 (transformation!3175 (rule!5019 (h!23418 tokens!457)))))) (and b!1638113 b_free!44301 (= (toChars!4465 (transformation!3175 (h!23419 (t!149797 rules!1846)))) (toChars!4465 (transformation!3175 (rule!5019 (h!23418 tokens!457)))))) b_lambda!51479)))

(declare-fun b_lambda!51481 () Bool)

(assert (= b_lambda!51465 (or (and b!1637298 b_free!44281 (= (toChars!4465 (transformation!3175 (h!23419 rules!1846))) (toChars!4465 (transformation!3175 (rule!5019 (h!23418 tokens!457)))))) (and b!1637269 b_free!44285) (and b!1638102 b_free!44297 (= (toChars!4465 (transformation!3175 (rule!5019 (h!23418 (t!149796 tokens!457))))) (toChars!4465 (transformation!3175 (rule!5019 (h!23418 tokens!457)))))) (and b!1638113 b_free!44301 (= (toChars!4465 (transformation!3175 (h!23419 (t!149797 rules!1846)))) (toChars!4465 (transformation!3175 (rule!5019 (h!23418 tokens!457)))))) b_lambda!51481)))

(declare-fun b_lambda!51483 () Bool)

(assert (= b_lambda!51461 (or (and b!1637298 b_free!44281 (= (toChars!4465 (transformation!3175 (h!23419 rules!1846))) (toChars!4465 (transformation!3175 (rule!5019 (h!23418 (t!149796 tokens!457))))))) (and b!1637269 b_free!44285 (= (toChars!4465 (transformation!3175 (rule!5019 (h!23418 tokens!457)))) (toChars!4465 (transformation!3175 (rule!5019 (h!23418 (t!149796 tokens!457))))))) (and b!1638102 b_free!44297) (and b!1638113 b_free!44301 (= (toChars!4465 (transformation!3175 (h!23419 (t!149797 rules!1846)))) (toChars!4465 (transformation!3175 (rule!5019 (h!23418 (t!149796 tokens!457))))))) b_lambda!51483)))

(check-sat b_and!116061 (not b!1637347) (not b!1637358) (not b!1637386) (not d!493206) (not d!492930) (not b!1637544) (not b_lambda!51481) (not d!493108) (not b!1637374) (not b!1638073) (not b!1637523) (not b_lambda!51483) (not b!1637612) (not d!493050) (not d!492996) (not d!492976) (not d!492994) (not b!1637546) (not b!1638134) (not tb!93815) (not b!1637774) (not b!1637780) (not b!1637778) (not b!1637724) (not b!1638101) (not d!492998) (not d!492952) (not d!493028) b_and!116045 (not b!1637729) (not b_next!44983) (not b!1637722) (not d!493088) (not d!492932) (not b!1637337) (not b!1637385) (not b!1637405) (not b!1637519) (not bm!105673) (not b!1638088) (not b!1637777) (not d!493000) (not b!1638136) (not b!1637369) (not b!1637776) (not b!1637621) (not d!492992) (not d!493082) (not b!1637478) (not b!1637769) (not b!1638064) (not d!492990) (not b!1637611) (not d!493106) (not d!493032) (not d!492950) (not b_next!45005) (not b!1637747) b_and!116063 (not b!1637701) (not b_next!45001) (not d!493008) (not b!1637518) (not d!493024) (not b!1638078) (not b!1637770) (not b!1637383) (not b!1637417) (not d!493090) (not d!493036) (not b!1638075) (not d!493054) (not d!493030) (not b!1638069) (not b!1637634) (not b!1638081) (not bm!105664) (not d!493098) (not d!492946) (not b!1637731) (not b!1637424) (not b!1637477) (not d!493010) (not b_next!44999) (not b!1637768) (not b!1638132) (not b!1637549) (not b!1638077) (not b!1637715) (not b!1637766) (not b!1637728) b_and!116085 (not b!1637350) (not d!493072) (not b!1637545) (not bm!105691) (not b!1637543) (not b!1638125) (not b!1637734) (not d!493096) (not d!492988) (not d!492920) (not d!493080) (not d!492936) (not b_lambda!51479) (not b!1637721) (not b!1637702) (not b!1638067) (not b!1637502) (not b!1637517) (not d!492974) (not b!1637719) (not b!1637716) (not b!1637645) (not b!1637636) (not b!1637418) (not b!1637727) (not b!1637343) (not tb!93819) (not bm!105674) (not d!493114) (not b!1638080) (not b!1637404) (not b!1637403) (not b!1638126) (not b!1637371) b_and!116049 (not b!1637540) (not b!1637346) (not d!492934) (not b!1637746) (not b_next!45003) (not d!492940) (not b!1637394) (not b!1637370) (not bm!105679) (not b!1637748) (not b_next!44987) (not b!1637633) (not b!1637389) (not b!1637773) (not b!1638072) (not b!1637725) (not d!492944) (not b_next!44985) (not b!1637779) (not d!493100) (not d!493074) (not d!492928) (not b!1637505) (not b!1637713) (not d!492926) (not d!492924) (not b!1637339) (not b!1637712) tp_is_empty!7313 (not d!492978) (not d!492918) (not b!1637711) (not b!1637359) (not b!1638063) (not bm!105678) (not b!1637708) (not d!492980) (not b!1637652) (not b!1637503) (not b!1637520) (not b!1637781) (not b!1637749) (not b!1638066) (not b!1638111) (not d!493002) (not b_next!44989) (not d!493208) (not b!1637720) (not b!1637735) (not d!493076) (not b!1637700) (not b!1637772) (not b!1638099) (not b!1637705) (not b!1637307) b_and!116087 (not b!1638135) (not b!1637384) (not d!493102) (not d!492964) (not b!1637730) (not d!493004) (not d!493094) (not b!1637539) (not b!1637703) (not b!1637771) (not b!1637704) (not b!1637714) (not b!1638100) (not b!1637308) (not b!1637637) (not bm!105675) (not d!492916) (not d!492948) (not b!1637420) b_and!116091 (not b!1638112) (not b!1637647) (not d!492954) (not b!1637717) (not b!1637707) (not d!492982) (not d!493086) (not b!1638127) (not b!1637732) b_and!116089 (not d!493078) (not d!492938) (not d!493212))
(check-sat b_and!116061 b_and!116045 (not b_next!44983) (not b_next!45001) (not b_next!44999) b_and!116085 (not b_next!44987) (not b_next!44985) (not b_next!44989) b_and!116087 b_and!116091 b_and!116089 (not b_next!45005) b_and!116063 (not b_next!45003) b_and!116049)
