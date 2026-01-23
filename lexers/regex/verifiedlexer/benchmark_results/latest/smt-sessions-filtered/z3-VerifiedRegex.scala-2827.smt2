; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!159134 () Bool)

(assert start!159134)

(declare-fun b!1652550 () Bool)

(declare-fun b_free!44903 () Bool)

(declare-fun b_next!45607 () Bool)

(assert (=> b!1652550 (= b_free!44903 (not b_next!45607))))

(declare-fun tp!478083 () Bool)

(declare-fun b_and!117349 () Bool)

(assert (=> b!1652550 (= tp!478083 b_and!117349)))

(declare-fun b_free!44905 () Bool)

(declare-fun b_next!45609 () Bool)

(assert (=> b!1652550 (= b_free!44905 (not b_next!45609))))

(declare-fun tp!478084 () Bool)

(declare-fun b_and!117351 () Bool)

(assert (=> b!1652550 (= tp!478084 b_and!117351)))

(declare-fun b!1652552 () Bool)

(declare-fun b_free!44907 () Bool)

(declare-fun b_next!45611 () Bool)

(assert (=> b!1652552 (= b_free!44907 (not b_next!45611))))

(declare-fun tp!478081 () Bool)

(declare-fun b_and!117353 () Bool)

(assert (=> b!1652552 (= tp!478081 b_and!117353)))

(declare-fun b_free!44909 () Bool)

(declare-fun b_next!45613 () Bool)

(assert (=> b!1652552 (= b_free!44909 (not b_next!45613))))

(declare-fun tp!478086 () Bool)

(declare-fun b_and!117355 () Bool)

(assert (=> b!1652552 (= tp!478086 b_and!117355)))

(declare-fun b!1652546 () Bool)

(declare-fun e!1059705 () Bool)

(declare-fun e!1059706 () Bool)

(assert (=> b!1652546 (= e!1059705 e!1059706)))

(declare-fun res!740699 () Bool)

(assert (=> b!1652546 (=> res!740699 e!1059706)))

(declare-datatypes ((C!9260 0))(
  ( (C!9261 (val!5226 Int)) )
))
(declare-datatypes ((List!18301 0))(
  ( (Nil!18231) (Cons!18231 (h!23632 C!9260) (t!151054 List!18301)) )
))
(declare-datatypes ((IArray!12161 0))(
  ( (IArray!12162 (innerList!6138 List!18301)) )
))
(declare-datatypes ((Conc!6078 0))(
  ( (Node!6078 (left!14607 Conc!6078) (right!14937 Conc!6078) (csize!12386 Int) (cheight!6289 Int)) (Leaf!8906 (xs!8918 IArray!12161) (csize!12387 Int)) (Empty!6078) )
))
(declare-datatypes ((BalanceConc!12100 0))(
  ( (BalanceConc!12101 (c!268833 Conc!6078)) )
))
(declare-datatypes ((List!18302 0))(
  ( (Nil!18232) (Cons!18232 (h!23633 (_ BitVec 16)) (t!151055 List!18302)) )
))
(declare-datatypes ((TokenValue!3305 0))(
  ( (FloatLiteralValue!6610 (text!23580 List!18302)) (TokenValueExt!3304 (__x!11912 Int)) (Broken!16525 (value!101274 List!18302)) (Object!3374) (End!3305) (Def!3305) (Underscore!3305) (Match!3305) (Else!3305) (Error!3305) (Case!3305) (If!3305) (Extends!3305) (Abstract!3305) (Class!3305) (Val!3305) (DelimiterValue!6610 (del!3365 List!18302)) (KeywordValue!3311 (value!101275 List!18302)) (CommentValue!6610 (value!101276 List!18302)) (WhitespaceValue!6610 (value!101277 List!18302)) (IndentationValue!3305 (value!101278 List!18302)) (String!20856) (Int32!3305) (Broken!16526 (value!101279 List!18302)) (Boolean!3306) (Unit!30440) (OperatorValue!3308 (op!3365 List!18302)) (IdentifierValue!6610 (value!101280 List!18302)) (IdentifierValue!6611 (value!101281 List!18302)) (WhitespaceValue!6611 (value!101282 List!18302)) (True!6610) (False!6610) (Broken!16527 (value!101283 List!18302)) (Broken!16528 (value!101284 List!18302)) (True!6611) (RightBrace!3305) (RightBracket!3305) (Colon!3305) (Null!3305) (Comma!3305) (LeftBracket!3305) (False!6611) (LeftBrace!3305) (ImaginaryLiteralValue!3305 (text!23581 List!18302)) (StringLiteralValue!9915 (value!101285 List!18302)) (EOFValue!3305 (value!101286 List!18302)) (IdentValue!3305 (value!101287 List!18302)) (DelimiterValue!6611 (value!101288 List!18302)) (DedentValue!3305 (value!101289 List!18302)) (NewLineValue!3305 (value!101290 List!18302)) (IntegerValue!9915 (value!101291 (_ BitVec 32)) (text!23582 List!18302)) (IntegerValue!9916 (value!101292 Int) (text!23583 List!18302)) (Times!3305) (Or!3305) (Equal!3305) (Minus!3305) (Broken!16529 (value!101293 List!18302)) (And!3305) (Div!3305) (LessEqual!3305) (Mod!3305) (Concat!7848) (Not!3305) (Plus!3305) (SpaceValue!3305 (value!101294 List!18302)) (IntegerValue!9917 (value!101295 Int) (text!23584 List!18302)) (StringLiteralValue!9916 (text!23585 List!18302)) (FloatLiteralValue!6611 (text!23586 List!18302)) (BytesLiteralValue!3305 (value!101296 List!18302)) (CommentValue!6611 (value!101297 List!18302)) (StringLiteralValue!9917 (value!101298 List!18302)) (ErrorTokenValue!3305 (msg!3366 List!18302)) )
))
(declare-datatypes ((Regex!4543 0))(
  ( (ElementMatch!4543 (c!268834 C!9260)) (Concat!7849 (regOne!9598 Regex!4543) (regTwo!9598 Regex!4543)) (EmptyExpr!4543) (Star!4543 (reg!4872 Regex!4543)) (EmptyLang!4543) (Union!4543 (regOne!9599 Regex!4543) (regTwo!9599 Regex!4543)) )
))
(declare-datatypes ((String!20857 0))(
  ( (String!20858 (value!101299 String)) )
))
(declare-datatypes ((TokenValueInjection!6270 0))(
  ( (TokenValueInjection!6271 (toValue!4666 Int) (toChars!4525 Int)) )
))
(declare-datatypes ((Rule!6230 0))(
  ( (Rule!6231 (regex!3215 Regex!4543) (tag!3497 String!20857) (isSeparator!3215 Bool) (transformation!3215 TokenValueInjection!6270)) )
))
(declare-datatypes ((Token!5996 0))(
  ( (Token!5997 (value!101300 TokenValue!3305) (rule!5079 Rule!6230) (size!14518 Int) (originalCharacters!4029 List!18301)) )
))
(declare-datatypes ((List!18303 0))(
  ( (Nil!18233) (Cons!18233 (h!23634 Token!5996) (t!151056 List!18303)) )
))
(declare-fun lt!614060 () List!18303)

(declare-fun lt!614043 () List!18303)

(declare-fun lt!614062 () List!18303)

(assert (=> b!1652546 (= res!740699 (or (not (= lt!614043 lt!614060)) (not (= lt!614060 lt!614062))))))

(declare-datatypes ((IArray!12163 0))(
  ( (IArray!12164 (innerList!6139 List!18303)) )
))
(declare-datatypes ((Conc!6079 0))(
  ( (Node!6079 (left!14608 Conc!6079) (right!14938 Conc!6079) (csize!12388 Int) (cheight!6290 Int)) (Leaf!8907 (xs!8919 IArray!12163) (csize!12389 Int)) (Empty!6079) )
))
(declare-datatypes ((BalanceConc!12102 0))(
  ( (BalanceConc!12103 (c!268835 Conc!6079)) )
))
(declare-fun lt!614053 () BalanceConc!12102)

(declare-fun list!7257 (BalanceConc!12102) List!18303)

(assert (=> b!1652546 (= lt!614060 (list!7257 lt!614053))))

(assert (=> b!1652546 (= lt!614043 lt!614062)))

(declare-fun tokens!457 () List!18303)

(declare-fun prepend!781 (BalanceConc!12102 Token!5996) BalanceConc!12102)

(declare-fun seqFromList!2169 (List!18303) BalanceConc!12102)

(assert (=> b!1652546 (= lt!614062 (list!7257 (prepend!781 (seqFromList!2169 (t!151056 (t!151056 tokens!457))) (h!23634 (t!151056 tokens!457)))))))

(declare-datatypes ((Unit!30441 0))(
  ( (Unit!30442) )
))
(declare-fun lt!614040 () Unit!30441)

(declare-datatypes ((tuple2!17918 0))(
  ( (tuple2!17919 (_1!10361 BalanceConc!12102) (_2!10361 BalanceConc!12100)) )
))
(declare-fun lt!614045 () tuple2!17918)

(declare-fun seqFromListBHdTlConstructive!290 (Token!5996 List!18303 BalanceConc!12102) Unit!30441)

(assert (=> b!1652546 (= lt!614040 (seqFromListBHdTlConstructive!290 (h!23634 (t!151056 tokens!457)) (t!151056 (t!151056 tokens!457)) (_1!10361 lt!614045)))))

(declare-fun b!1652547 () Bool)

(declare-fun res!740698 () Bool)

(declare-fun e!1059720 () Bool)

(assert (=> b!1652547 (=> (not res!740698) (not e!1059720))))

(declare-datatypes ((List!18304 0))(
  ( (Nil!18234) (Cons!18234 (h!23635 Rule!6230) (t!151057 List!18304)) )
))
(declare-fun rules!1846 () List!18304)

(declare-fun isEmpty!11267 (List!18304) Bool)

(assert (=> b!1652547 (= res!740698 (not (isEmpty!11267 rules!1846)))))

(declare-fun b!1652548 () Bool)

(declare-fun res!740705 () Bool)

(declare-fun e!1059726 () Bool)

(assert (=> b!1652548 (=> res!740705 e!1059726)))

(declare-datatypes ((LexerInterface!2844 0))(
  ( (LexerInterfaceExt!2841 (__x!11913 Int)) (Lexer!2842) )
))
(declare-fun thiss!17113 () LexerInterface!2844)

(declare-fun rulesProduceIndividualToken!1492 (LexerInterface!2844 List!18304 Token!5996) Bool)

(assert (=> b!1652548 (= res!740705 (not (rulesProduceIndividualToken!1492 thiss!17113 rules!1846 (h!23634 tokens!457))))))

(declare-fun b!1652549 () Bool)

(assert (=> b!1652549 (= e!1059706 e!1059726)))

(declare-fun res!740703 () Bool)

(assert (=> b!1652549 (=> res!740703 e!1059726)))

(declare-fun lt!614044 () List!18301)

(declare-fun lt!614063 () List!18301)

(declare-fun lt!614064 () List!18301)

(assert (=> b!1652549 (= res!740703 (or (not (= lt!614064 lt!614063)) (not (= lt!614063 lt!614044)) (not (= lt!614064 lt!614044))))))

(declare-fun printList!957 (LexerInterface!2844 List!18303) List!18301)

(assert (=> b!1652549 (= lt!614063 (printList!957 thiss!17113 (Cons!18233 (h!23634 tokens!457) Nil!18233)))))

(declare-fun lt!614057 () BalanceConc!12100)

(declare-fun list!7258 (BalanceConc!12100) List!18301)

(assert (=> b!1652549 (= lt!614064 (list!7258 lt!614057))))

(declare-fun lt!614049 () BalanceConc!12102)

(declare-fun printTailRec!895 (LexerInterface!2844 BalanceConc!12102 Int BalanceConc!12100) BalanceConc!12100)

(assert (=> b!1652549 (= lt!614057 (printTailRec!895 thiss!17113 lt!614049 0 (BalanceConc!12101 Empty!6078)))))

(declare-fun print!1375 (LexerInterface!2844 BalanceConc!12102) BalanceConc!12100)

(assert (=> b!1652549 (= lt!614057 (print!1375 thiss!17113 lt!614049))))

(declare-fun singletonSeq!1702 (Token!5996) BalanceConc!12102)

(assert (=> b!1652549 (= lt!614049 (singletonSeq!1702 (h!23634 tokens!457)))))

(declare-datatypes ((tuple2!17920 0))(
  ( (tuple2!17921 (_1!10362 Token!5996) (_2!10362 List!18301)) )
))
(declare-datatypes ((Option!3467 0))(
  ( (None!3466) (Some!3466 (v!24645 tuple2!17920)) )
))
(declare-fun lt!614047 () Option!3467)

(declare-fun lt!614038 () List!18301)

(declare-fun maxPrefix!1406 (LexerInterface!2844 List!18304 List!18301) Option!3467)

(assert (=> b!1652549 (= lt!614047 (maxPrefix!1406 thiss!17113 rules!1846 lt!614038))))

(declare-fun e!1059719 () Bool)

(assert (=> b!1652550 (= e!1059719 (and tp!478083 tp!478084))))

(declare-fun b!1652551 () Bool)

(declare-fun e!1059714 () Bool)

(assert (=> b!1652551 (= e!1059720 e!1059714)))

(declare-fun res!740697 () Bool)

(assert (=> b!1652551 (=> (not res!740697) (not e!1059714))))

(declare-fun lt!614051 () List!18301)

(assert (=> b!1652551 (= res!740697 (= lt!614038 lt!614051))))

(declare-fun lt!614048 () List!18301)

(declare-fun ++!4935 (List!18301 List!18301) List!18301)

(assert (=> b!1652551 (= lt!614051 (++!4935 lt!614044 lt!614048))))

(declare-fun lt!614058 () BalanceConc!12100)

(assert (=> b!1652551 (= lt!614038 (list!7258 lt!614058))))

(declare-fun lt!614059 () BalanceConc!12100)

(assert (=> b!1652551 (= lt!614048 (list!7258 lt!614059))))

(declare-fun lt!614052 () BalanceConc!12100)

(assert (=> b!1652551 (= lt!614044 (list!7258 lt!614052))))

(declare-fun charsOf!1864 (Token!5996) BalanceConc!12100)

(assert (=> b!1652551 (= lt!614052 (charsOf!1864 (h!23634 tokens!457)))))

(declare-fun lex!1328 (LexerInterface!2844 List!18304 BalanceConc!12100) tuple2!17918)

(assert (=> b!1652551 (= lt!614045 (lex!1328 thiss!17113 rules!1846 lt!614059))))

(assert (=> b!1652551 (= lt!614059 (print!1375 thiss!17113 lt!614053))))

(assert (=> b!1652551 (= lt!614053 (seqFromList!2169 (t!151056 tokens!457)))))

(assert (=> b!1652551 (= lt!614058 (print!1375 thiss!17113 (seqFromList!2169 tokens!457)))))

(declare-fun e!1059711 () Bool)

(assert (=> b!1652552 (= e!1059711 (and tp!478081 tp!478086))))

(declare-fun b!1652553 () Bool)

(declare-fun e!1059707 () Bool)

(declare-fun e!1059715 () Bool)

(assert (=> b!1652553 (= e!1059707 e!1059715)))

(declare-fun res!740695 () Bool)

(assert (=> b!1652553 (=> res!740695 e!1059715)))

(declare-fun lt!614056 () Regex!4543)

(declare-fun lt!614050 () List!18301)

(declare-fun prefixMatch!460 (Regex!4543 List!18301) Bool)

(assert (=> b!1652553 (= res!740695 (prefixMatch!460 lt!614056 (++!4935 lt!614044 lt!614050)))))

(declare-fun lt!614055 () BalanceConc!12100)

(assert (=> b!1652553 (= lt!614050 (list!7258 lt!614055))))

(declare-fun b!1652554 () Bool)

(declare-fun res!740708 () Bool)

(assert (=> b!1652554 (=> res!740708 e!1059706)))

(declare-fun separableTokensPredicate!784 (LexerInterface!2844 Token!5996 Token!5996 List!18304) Bool)

(assert (=> b!1652554 (= res!740708 (not (separableTokensPredicate!784 thiss!17113 (h!23634 tokens!457) (h!23634 (t!151056 tokens!457)) rules!1846)))))

(declare-fun b!1652555 () Bool)

(declare-fun e!1059713 () Bool)

(declare-fun e!1059708 () Bool)

(assert (=> b!1652555 (= e!1059713 e!1059708)))

(declare-fun res!740693 () Bool)

(assert (=> b!1652555 (=> res!740693 e!1059708)))

(declare-fun lt!614054 () List!18301)

(assert (=> b!1652555 (= res!740693 (prefixMatch!460 lt!614056 (++!4935 (originalCharacters!4029 (h!23634 tokens!457)) lt!614054)))))

(declare-fun e!1059717 () Bool)

(assert (=> b!1652555 e!1059717))

(declare-fun res!740710 () Bool)

(assert (=> b!1652555 (=> (not res!740710) (not e!1059717))))

(declare-fun lt!614039 () tuple2!17920)

(assert (=> b!1652555 (= res!740710 (= (_1!10362 lt!614039) (h!23634 tokens!457)))))

(declare-fun lt!614046 () Option!3467)

(declare-fun get!5311 (Option!3467) tuple2!17920)

(assert (=> b!1652555 (= lt!614039 (get!5311 lt!614046))))

(declare-fun isDefined!2822 (Option!3467) Bool)

(assert (=> b!1652555 (isDefined!2822 lt!614046)))

(assert (=> b!1652555 (= lt!614046 (maxPrefix!1406 thiss!17113 rules!1846 lt!614044))))

(assert (=> b!1652555 (isDefined!2822 (maxPrefix!1406 thiss!17113 rules!1846 (originalCharacters!4029 (h!23634 tokens!457))))))

(declare-fun b!1652556 () Bool)

(declare-fun res!740694 () Bool)

(assert (=> b!1652556 (=> res!740694 e!1059726)))

(declare-fun isEmpty!11268 (BalanceConc!12102) Bool)

(declare-fun seqFromList!2170 (List!18301) BalanceConc!12100)

(assert (=> b!1652556 (= res!740694 (isEmpty!11268 (_1!10361 (lex!1328 thiss!17113 rules!1846 (seqFromList!2170 lt!614044)))))))

(declare-fun b!1652557 () Bool)

(declare-fun res!740691 () Bool)

(assert (=> b!1652557 (=> (not res!740691) (not e!1059720))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!537 (LexerInterface!2844 List!18303 List!18304) Bool)

(assert (=> b!1652557 (= res!740691 (tokensListTwoByTwoPredicateSeparableList!537 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1652558 () Bool)

(declare-fun res!740706 () Bool)

(assert (=> b!1652558 (=> (not res!740706) (not e!1059717))))

(declare-fun isEmpty!11269 (List!18301) Bool)

(assert (=> b!1652558 (= res!740706 (isEmpty!11269 (_2!10362 lt!614039)))))

(declare-fun b!1652559 () Bool)

(declare-fun res!740701 () Bool)

(assert (=> b!1652559 (=> (not res!740701) (not e!1059720))))

(declare-fun rulesInvariant!2513 (LexerInterface!2844 List!18304) Bool)

(assert (=> b!1652559 (= res!740701 (rulesInvariant!2513 thiss!17113 rules!1846))))

(declare-fun res!740700 () Bool)

(assert (=> start!159134 (=> (not res!740700) (not e!1059720))))

(get-info :version)

(assert (=> start!159134 (= res!740700 ((_ is Lexer!2842) thiss!17113))))

(assert (=> start!159134 e!1059720))

(assert (=> start!159134 true))

(declare-fun e!1059710 () Bool)

(assert (=> start!159134 e!1059710))

(declare-fun e!1059722 () Bool)

(assert (=> start!159134 e!1059722))

(declare-fun b!1652560 () Bool)

(declare-fun e!1059709 () Bool)

(declare-fun tp!478085 () Bool)

(assert (=> b!1652560 (= e!1059710 (and e!1059709 tp!478085))))

(declare-fun b!1652561 () Bool)

(assert (=> b!1652561 (= e!1059714 (not e!1059705))))

(declare-fun res!740707 () Bool)

(assert (=> b!1652561 (=> res!740707 e!1059705)))

(assert (=> b!1652561 (= res!740707 (not (= lt!614043 (t!151056 tokens!457))))))

(assert (=> b!1652561 (= lt!614043 (list!7257 (_1!10361 lt!614045)))))

(declare-fun lt!614061 () Unit!30441)

(declare-fun theoremInvertabilityWhenTokenListSeparable!287 (LexerInterface!2844 List!18304 List!18303) Unit!30441)

(assert (=> b!1652561 (= lt!614061 (theoremInvertabilityWhenTokenListSeparable!287 thiss!17113 rules!1846 (t!151056 tokens!457)))))

(declare-fun isPrefix!1473 (List!18301 List!18301) Bool)

(assert (=> b!1652561 (isPrefix!1473 lt!614044 lt!614051)))

(declare-fun lt!614041 () Unit!30441)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!998 (List!18301 List!18301) Unit!30441)

(assert (=> b!1652561 (= lt!614041 (lemmaConcatTwoListThenFirstIsPrefix!998 lt!614044 lt!614048))))

(declare-fun b!1652562 () Bool)

(declare-fun res!740711 () Bool)

(assert (=> b!1652562 (=> (not res!740711) (not e!1059720))))

(assert (=> b!1652562 (= res!740711 (and (not ((_ is Nil!18233) tokens!457)) (not ((_ is Nil!18233) (t!151056 tokens!457)))))))

(declare-fun b!1652563 () Bool)

(declare-fun matchR!2036 (Regex!4543 List!18301) Bool)

(assert (=> b!1652563 (= e!1059717 (matchR!2036 (regex!3215 (rule!5079 (h!23634 tokens!457))) lt!614044))))

(declare-fun b!1652564 () Bool)

(declare-fun res!740690 () Bool)

(declare-fun e!1059716 () Bool)

(assert (=> b!1652564 (=> (not res!740690) (not e!1059716))))

(declare-fun head!3644 (List!18301) C!9260)

(assert (=> b!1652564 (= res!740690 (= lt!614050 (Cons!18231 (head!3644 (originalCharacters!4029 (h!23634 (t!151056 tokens!457)))) Nil!18231)))))

(declare-fun b!1652565 () Bool)

(assert (=> b!1652565 (= e!1059715 e!1059713)))

(declare-fun res!740692 () Bool)

(assert (=> b!1652565 (=> res!740692 e!1059713)))

(declare-datatypes ((tuple2!17922 0))(
  ( (tuple2!17923 (_1!10363 Token!5996) (_2!10363 BalanceConc!12100)) )
))
(declare-datatypes ((Option!3468 0))(
  ( (None!3467) (Some!3467 (v!24646 tuple2!17922)) )
))
(declare-fun isDefined!2823 (Option!3468) Bool)

(declare-fun maxPrefixZipperSequence!721 (LexerInterface!2844 List!18304 BalanceConc!12100) Option!3468)

(assert (=> b!1652565 (= res!740692 (not (isDefined!2823 (maxPrefixZipperSequence!721 thiss!17113 rules!1846 (seqFromList!2170 (originalCharacters!4029 (h!23634 tokens!457)))))))))

(assert (=> b!1652565 (= lt!614050 lt!614054)))

(declare-fun head!3645 (BalanceConc!12100) C!9260)

(assert (=> b!1652565 (= lt!614054 (Cons!18231 (head!3645 lt!614059) Nil!18231))))

(assert (=> b!1652565 e!1059716))

(declare-fun res!740704 () Bool)

(assert (=> b!1652565 (=> (not res!740704) (not e!1059716))))

(assert (=> b!1652565 (= res!740704 (= lt!614044 (originalCharacters!4029 (h!23634 tokens!457))))))

(declare-fun b!1652566 () Bool)

(declare-fun e!1059721 () Bool)

(assert (=> b!1652566 (= e!1059721 e!1059707)))

(declare-fun res!740702 () Bool)

(assert (=> b!1652566 (=> res!740702 e!1059707)))

(declare-fun prefixMatchZipperSequence!627 (Regex!4543 BalanceConc!12100) Bool)

(declare-fun ++!4936 (BalanceConc!12100 BalanceConc!12100) BalanceConc!12100)

(assert (=> b!1652566 (= res!740702 (prefixMatchZipperSequence!627 lt!614056 (++!4936 lt!614052 lt!614055)))))

(declare-fun singletonSeq!1703 (C!9260) BalanceConc!12100)

(declare-fun apply!4816 (BalanceConc!12100 Int) C!9260)

(assert (=> b!1652566 (= lt!614055 (singletonSeq!1703 (apply!4816 (charsOf!1864 (h!23634 (t!151056 tokens!457))) 0)))))

(declare-fun rulesRegex!599 (LexerInterface!2844 List!18304) Regex!4543)

(assert (=> b!1652566 (= lt!614056 (rulesRegex!599 thiss!17113 rules!1846))))

(declare-fun e!1059724 () Bool)

(declare-fun e!1059725 () Bool)

(declare-fun b!1652567 () Bool)

(declare-fun tp!478082 () Bool)

(declare-fun inv!21 (TokenValue!3305) Bool)

(assert (=> b!1652567 (= e!1059725 (and (inv!21 (value!101300 (h!23634 tokens!457))) e!1059724 tp!478082))))

(declare-fun b!1652568 () Bool)

(assert (=> b!1652568 (= e!1059716 (= lt!614050 (Cons!18231 (head!3644 lt!614048) Nil!18231)))))

(declare-fun b!1652569 () Bool)

(assert (=> b!1652569 (= e!1059726 e!1059721)))

(declare-fun res!740696 () Bool)

(assert (=> b!1652569 (=> res!740696 e!1059721)))

(assert (=> b!1652569 (= res!740696 (not (isDefined!2822 lt!614047)))))

(declare-fun lt!614042 () Unit!30441)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!412 (LexerInterface!2844 List!18304 List!18301 List!18301) Unit!30441)

(assert (=> b!1652569 (= lt!614042 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!412 thiss!17113 rules!1846 lt!614044 lt!614048))))

(declare-fun b!1652570 () Bool)

(assert (=> b!1652570 (= e!1059708 (not (prefixMatch!460 lt!614056 (++!4935 lt!614044 lt!614054))))))

(declare-fun tp!478078 () Bool)

(declare-fun b!1652571 () Bool)

(declare-fun inv!23590 (String!20857) Bool)

(declare-fun inv!23593 (TokenValueInjection!6270) Bool)

(assert (=> b!1652571 (= e!1059709 (and tp!478078 (inv!23590 (tag!3497 (h!23635 rules!1846))) (inv!23593 (transformation!3215 (h!23635 rules!1846))) e!1059711))))

(declare-fun b!1652572 () Bool)

(declare-fun res!740709 () Bool)

(assert (=> b!1652572 (=> (not res!740709) (not e!1059720))))

(declare-fun rulesProduceEachTokenIndividuallyList!1046 (LexerInterface!2844 List!18304 List!18303) Bool)

(assert (=> b!1652572 (= res!740709 (rulesProduceEachTokenIndividuallyList!1046 thiss!17113 rules!1846 tokens!457))))

(declare-fun tp!478080 () Bool)

(declare-fun b!1652573 () Bool)

(assert (=> b!1652573 (= e!1059724 (and tp!478080 (inv!23590 (tag!3497 (rule!5079 (h!23634 tokens!457)))) (inv!23593 (transformation!3215 (rule!5079 (h!23634 tokens!457)))) e!1059719))))

(declare-fun b!1652574 () Bool)

(declare-fun tp!478079 () Bool)

(declare-fun inv!23594 (Token!5996) Bool)

(assert (=> b!1652574 (= e!1059722 (and (inv!23594 (h!23634 tokens!457)) e!1059725 tp!478079))))

(assert (= (and start!159134 res!740700) b!1652547))

(assert (= (and b!1652547 res!740698) b!1652559))

(assert (= (and b!1652559 res!740701) b!1652572))

(assert (= (and b!1652572 res!740709) b!1652557))

(assert (= (and b!1652557 res!740691) b!1652562))

(assert (= (and b!1652562 res!740711) b!1652551))

(assert (= (and b!1652551 res!740697) b!1652561))

(assert (= (and b!1652561 (not res!740707)) b!1652546))

(assert (= (and b!1652546 (not res!740699)) b!1652554))

(assert (= (and b!1652554 (not res!740708)) b!1652549))

(assert (= (and b!1652549 (not res!740703)) b!1652548))

(assert (= (and b!1652548 (not res!740705)) b!1652556))

(assert (= (and b!1652556 (not res!740694)) b!1652569))

(assert (= (and b!1652569 (not res!740696)) b!1652566))

(assert (= (and b!1652566 (not res!740702)) b!1652553))

(assert (= (and b!1652553 (not res!740695)) b!1652565))

(assert (= (and b!1652565 res!740704) b!1652564))

(assert (= (and b!1652564 res!740690) b!1652568))

(assert (= (and b!1652565 (not res!740692)) b!1652555))

(assert (= (and b!1652555 res!740710) b!1652558))

(assert (= (and b!1652558 res!740706) b!1652563))

(assert (= (and b!1652555 (not res!740693)) b!1652570))

(assert (= b!1652571 b!1652552))

(assert (= b!1652560 b!1652571))

(assert (= (and start!159134 ((_ is Cons!18234) rules!1846)) b!1652560))

(assert (= b!1652573 b!1652550))

(assert (= b!1652567 b!1652573))

(assert (= b!1652574 b!1652567))

(assert (= (and start!159134 ((_ is Cons!18233) tokens!457)) b!1652574))

(declare-fun m!2003797 () Bool)

(assert (=> b!1652568 m!2003797))

(declare-fun m!2003799 () Bool)

(assert (=> b!1652564 m!2003799))

(declare-fun m!2003801 () Bool)

(assert (=> b!1652559 m!2003801))

(declare-fun m!2003803 () Bool)

(assert (=> b!1652563 m!2003803))

(declare-fun m!2003805 () Bool)

(assert (=> b!1652565 m!2003805))

(assert (=> b!1652565 m!2003805))

(declare-fun m!2003807 () Bool)

(assert (=> b!1652565 m!2003807))

(assert (=> b!1652565 m!2003807))

(declare-fun m!2003809 () Bool)

(assert (=> b!1652565 m!2003809))

(declare-fun m!2003811 () Bool)

(assert (=> b!1652565 m!2003811))

(declare-fun m!2003813 () Bool)

(assert (=> b!1652554 m!2003813))

(declare-fun m!2003815 () Bool)

(assert (=> b!1652549 m!2003815))

(declare-fun m!2003817 () Bool)

(assert (=> b!1652549 m!2003817))

(declare-fun m!2003819 () Bool)

(assert (=> b!1652549 m!2003819))

(declare-fun m!2003821 () Bool)

(assert (=> b!1652549 m!2003821))

(declare-fun m!2003823 () Bool)

(assert (=> b!1652549 m!2003823))

(declare-fun m!2003825 () Bool)

(assert (=> b!1652549 m!2003825))

(declare-fun m!2003827 () Bool)

(assert (=> b!1652553 m!2003827))

(assert (=> b!1652553 m!2003827))

(declare-fun m!2003829 () Bool)

(assert (=> b!1652553 m!2003829))

(declare-fun m!2003831 () Bool)

(assert (=> b!1652553 m!2003831))

(declare-fun m!2003833 () Bool)

(assert (=> b!1652548 m!2003833))

(declare-fun m!2003835 () Bool)

(assert (=> b!1652569 m!2003835))

(declare-fun m!2003837 () Bool)

(assert (=> b!1652569 m!2003837))

(declare-fun m!2003839 () Bool)

(assert (=> b!1652567 m!2003839))

(declare-fun m!2003841 () Bool)

(assert (=> b!1652573 m!2003841))

(declare-fun m!2003843 () Bool)

(assert (=> b!1652573 m!2003843))

(declare-fun m!2003845 () Bool)

(assert (=> b!1652558 m!2003845))

(declare-fun m!2003847 () Bool)

(assert (=> b!1652571 m!2003847))

(declare-fun m!2003849 () Bool)

(assert (=> b!1652571 m!2003849))

(declare-fun m!2003851 () Bool)

(assert (=> b!1652574 m!2003851))

(declare-fun m!2003853 () Bool)

(assert (=> b!1652546 m!2003853))

(declare-fun m!2003855 () Bool)

(assert (=> b!1652546 m!2003855))

(declare-fun m!2003857 () Bool)

(assert (=> b!1652546 m!2003857))

(declare-fun m!2003859 () Bool)

(assert (=> b!1652546 m!2003859))

(declare-fun m!2003861 () Bool)

(assert (=> b!1652546 m!2003861))

(assert (=> b!1652546 m!2003857))

(assert (=> b!1652546 m!2003859))

(declare-fun m!2003863 () Bool)

(assert (=> b!1652551 m!2003863))

(declare-fun m!2003865 () Bool)

(assert (=> b!1652551 m!2003865))

(declare-fun m!2003867 () Bool)

(assert (=> b!1652551 m!2003867))

(declare-fun m!2003869 () Bool)

(assert (=> b!1652551 m!2003869))

(declare-fun m!2003871 () Bool)

(assert (=> b!1652551 m!2003871))

(declare-fun m!2003873 () Bool)

(assert (=> b!1652551 m!2003873))

(declare-fun m!2003875 () Bool)

(assert (=> b!1652551 m!2003875))

(declare-fun m!2003877 () Bool)

(assert (=> b!1652551 m!2003877))

(declare-fun m!2003879 () Bool)

(assert (=> b!1652551 m!2003879))

(assert (=> b!1652551 m!2003871))

(declare-fun m!2003881 () Bool)

(assert (=> b!1652551 m!2003881))

(declare-fun m!2003883 () Bool)

(assert (=> b!1652556 m!2003883))

(assert (=> b!1652556 m!2003883))

(declare-fun m!2003885 () Bool)

(assert (=> b!1652556 m!2003885))

(declare-fun m!2003887 () Bool)

(assert (=> b!1652556 m!2003887))

(declare-fun m!2003889 () Bool)

(assert (=> b!1652561 m!2003889))

(declare-fun m!2003891 () Bool)

(assert (=> b!1652561 m!2003891))

(declare-fun m!2003893 () Bool)

(assert (=> b!1652561 m!2003893))

(declare-fun m!2003895 () Bool)

(assert (=> b!1652561 m!2003895))

(declare-fun m!2003897 () Bool)

(assert (=> b!1652572 m!2003897))

(declare-fun m!2003899 () Bool)

(assert (=> b!1652555 m!2003899))

(assert (=> b!1652555 m!2003899))

(declare-fun m!2003901 () Bool)

(assert (=> b!1652555 m!2003901))

(declare-fun m!2003903 () Bool)

(assert (=> b!1652555 m!2003903))

(declare-fun m!2003905 () Bool)

(assert (=> b!1652555 m!2003905))

(declare-fun m!2003907 () Bool)

(assert (=> b!1652555 m!2003907))

(declare-fun m!2003909 () Bool)

(assert (=> b!1652555 m!2003909))

(declare-fun m!2003911 () Bool)

(assert (=> b!1652555 m!2003911))

(assert (=> b!1652555 m!2003905))

(declare-fun m!2003913 () Bool)

(assert (=> b!1652547 m!2003913))

(declare-fun m!2003915 () Bool)

(assert (=> b!1652566 m!2003915))

(declare-fun m!2003917 () Bool)

(assert (=> b!1652566 m!2003917))

(declare-fun m!2003919 () Bool)

(assert (=> b!1652566 m!2003919))

(declare-fun m!2003921 () Bool)

(assert (=> b!1652566 m!2003921))

(declare-fun m!2003923 () Bool)

(assert (=> b!1652566 m!2003923))

(assert (=> b!1652566 m!2003921))

(declare-fun m!2003925 () Bool)

(assert (=> b!1652566 m!2003925))

(assert (=> b!1652566 m!2003917))

(assert (=> b!1652566 m!2003925))

(declare-fun m!2003927 () Bool)

(assert (=> b!1652570 m!2003927))

(assert (=> b!1652570 m!2003927))

(declare-fun m!2003929 () Bool)

(assert (=> b!1652570 m!2003929))

(declare-fun m!2003931 () Bool)

(assert (=> b!1652557 m!2003931))

(check-sat (not b!1652568) (not b!1652551) (not b!1652559) b_and!117353 (not b!1652558) (not b!1652557) (not b!1652565) (not b!1652573) b_and!117351 b_and!117355 (not b_next!45609) (not b!1652561) (not b!1652571) (not b!1652553) b_and!117349 (not b_next!45607) (not b!1652567) (not b!1652560) (not b!1652555) (not b!1652556) (not b!1652549) (not b_next!45613) (not b!1652564) (not b!1652566) (not b!1652547) (not b!1652574) (not b!1652572) (not b!1652570) (not b!1652554) (not b_next!45611) (not b!1652563) (not b!1652546) (not b!1652569) (not b!1652548))
(check-sat (not b_next!45607) b_and!117353 (not b_next!45613) b_and!117351 b_and!117355 (not b_next!45609) b_and!117349 (not b_next!45611))
