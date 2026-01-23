; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!511584 () Bool)

(assert start!511584)

(declare-fun b!4887648 () Bool)

(declare-fun b_free!131343 () Bool)

(declare-fun b_next!132133 () Bool)

(assert (=> b!4887648 (= b_free!131343 (not b_next!132133))))

(declare-fun tp!1375545 () Bool)

(declare-fun b_and!344175 () Bool)

(assert (=> b!4887648 (= tp!1375545 b_and!344175)))

(declare-fun b_free!131345 () Bool)

(declare-fun b_next!132135 () Bool)

(assert (=> b!4887648 (= b_free!131345 (not b_next!132135))))

(declare-fun tp!1375544 () Bool)

(declare-fun b_and!344177 () Bool)

(assert (=> b!4887648 (= tp!1375544 b_and!344177)))

(declare-fun b!4887640 () Bool)

(declare-fun e!3055400 () Bool)

(declare-fun e!3055399 () Bool)

(assert (=> b!4887640 (= e!3055400 e!3055399)))

(declare-fun res!2087303 () Bool)

(assert (=> b!4887640 (=> res!2087303 e!3055399)))

(declare-datatypes ((C!26648 0))(
  ( (C!26649 (val!22658 Int)) )
))
(declare-datatypes ((List!56455 0))(
  ( (Nil!56331) (Cons!56331 (h!62779 C!26648) (t!365101 List!56455)) )
))
(declare-datatypes ((String!63741 0))(
  ( (String!63742 (value!261401 String)) )
))
(declare-datatypes ((IArray!29497 0))(
  ( (IArray!29498 (innerList!14806 List!56455)) )
))
(declare-datatypes ((Conc!14718 0))(
  ( (Node!14718 (left!40915 Conc!14718) (right!41245 Conc!14718) (csize!29666 Int) (cheight!14929 Int)) (Leaf!24510 (xs!18034 IArray!29497) (csize!29667 Int)) (Empty!14718) )
))
(declare-datatypes ((BalanceConc!28866 0))(
  ( (BalanceConc!28867 (c!830841 Conc!14718)) )
))
(declare-datatypes ((List!56456 0))(
  ( (Nil!56332) (Cons!56332 (h!62780 (_ BitVec 16)) (t!365102 List!56456)) )
))
(declare-datatypes ((TokenValue!8460 0))(
  ( (FloatLiteralValue!16920 (text!59665 List!56456)) (TokenValueExt!8459 (__x!34213 Int)) (Broken!42300 (value!261402 List!56456)) (Object!8583) (End!8460) (Def!8460) (Underscore!8460) (Match!8460) (Else!8460) (Error!8460) (Case!8460) (If!8460) (Extends!8460) (Abstract!8460) (Class!8460) (Val!8460) (DelimiterValue!16920 (del!8520 List!56456)) (KeywordValue!8466 (value!261403 List!56456)) (CommentValue!16920 (value!261404 List!56456)) (WhitespaceValue!16920 (value!261405 List!56456)) (IndentationValue!8460 (value!261406 List!56456)) (String!63743) (Int32!8460) (Broken!42301 (value!261407 List!56456)) (Boolean!8461) (Unit!146321) (OperatorValue!8463 (op!8520 List!56456)) (IdentifierValue!16920 (value!261408 List!56456)) (IdentifierValue!16921 (value!261409 List!56456)) (WhitespaceValue!16921 (value!261410 List!56456)) (True!16920) (False!16920) (Broken!42302 (value!261411 List!56456)) (Broken!42303 (value!261412 List!56456)) (True!16921) (RightBrace!8460) (RightBracket!8460) (Colon!8460) (Null!8460) (Comma!8460) (LeftBracket!8460) (False!16921) (LeftBrace!8460) (ImaginaryLiteralValue!8460 (text!59666 List!56456)) (StringLiteralValue!25380 (value!261413 List!56456)) (EOFValue!8460 (value!261414 List!56456)) (IdentValue!8460 (value!261415 List!56456)) (DelimiterValue!16921 (value!261416 List!56456)) (DedentValue!8460 (value!261417 List!56456)) (NewLineValue!8460 (value!261418 List!56456)) (IntegerValue!25380 (value!261419 (_ BitVec 32)) (text!59667 List!56456)) (IntegerValue!25381 (value!261420 Int) (text!59668 List!56456)) (Times!8460) (Or!8460) (Equal!8460) (Minus!8460) (Broken!42304 (value!261421 List!56456)) (And!8460) (Div!8460) (LessEqual!8460) (Mod!8460) (Concat!21685) (Not!8460) (Plus!8460) (SpaceValue!8460 (value!261422 List!56456)) (IntegerValue!25382 (value!261423 Int) (text!59669 List!56456)) (StringLiteralValue!25381 (text!59670 List!56456)) (FloatLiteralValue!16921 (text!59671 List!56456)) (BytesLiteralValue!8460 (value!261424 List!56456)) (CommentValue!16921 (value!261425 List!56456)) (StringLiteralValue!25382 (value!261426 List!56456)) (ErrorTokenValue!8460 (msg!8521 List!56456)) )
))
(declare-datatypes ((Regex!13225 0))(
  ( (ElementMatch!13225 (c!830842 C!26648)) (Concat!21686 (regOne!26962 Regex!13225) (regTwo!26962 Regex!13225)) (EmptyExpr!13225) (Star!13225 (reg!13554 Regex!13225)) (EmptyLang!13225) (Union!13225 (regOne!26963 Regex!13225) (regTwo!26963 Regex!13225)) )
))
(declare-datatypes ((TokenValueInjection!16228 0))(
  ( (TokenValueInjection!16229 (toValue!11037 Int) (toChars!10896 Int)) )
))
(declare-datatypes ((Rule!16100 0))(
  ( (Rule!16101 (regex!8150 Regex!13225) (tag!9014 String!63741) (isSeparator!8150 Bool) (transformation!8150 TokenValueInjection!16228)) )
))
(declare-datatypes ((Token!14868 0))(
  ( (Token!14869 (value!261427 TokenValue!8460) (rule!11326 Rule!16100) (size!37092 Int) (originalCharacters!8465 List!56455)) )
))
(declare-datatypes ((tuple2!60336 0))(
  ( (tuple2!60337 (_1!33471 Token!14868) (_2!33471 BalanceConc!28866)) )
))
(declare-datatypes ((Option!13983 0))(
  ( (None!13982) (Some!13982 (v!49932 tuple2!60336)) )
))
(declare-fun lt!2003131 () Option!13983)

(declare-fun lt!2003136 () Option!13983)

(get-info :version)

(assert (=> b!4887640 (= res!2087303 (or (and ((_ is None!13982) lt!2003131) ((_ is None!13982) lt!2003136)) ((_ is None!13982) lt!2003136) ((_ is None!13982) lt!2003131) (>= (size!37092 (_1!33471 (v!49932 lt!2003131))) (size!37092 (_1!33471 (v!49932 lt!2003136))))))))

(declare-datatypes ((LexerInterface!7742 0))(
  ( (LexerInterfaceExt!7739 (__x!34214 Int)) (Lexer!7740) )
))
(declare-fun thiss!14805 () LexerInterface!7742)

(declare-fun input!1236 () BalanceConc!28866)

(declare-datatypes ((List!56457 0))(
  ( (Nil!56333) (Cons!56333 (h!62781 Rule!16100) (t!365103 List!56457)) )
))
(declare-fun rulesArg!165 () List!56457)

(declare-fun maxPrefixZipperSequence!1311 (LexerInterface!7742 List!56457 BalanceConc!28866) Option!13983)

(assert (=> b!4887640 (= lt!2003136 (maxPrefixZipperSequence!1311 thiss!14805 (t!365103 rulesArg!165) input!1236))))

(declare-fun maxPrefixOneRuleZipperSequence!676 (LexerInterface!7742 Rule!16100 BalanceConc!28866) Option!13983)

(assert (=> b!4887640 (= lt!2003131 (maxPrefixOneRuleZipperSequence!676 thiss!14805 (h!62781 rulesArg!165) input!1236))))

(declare-fun b!4887641 () Bool)

(declare-fun res!2087297 () Bool)

(declare-fun e!3055396 () Bool)

(assert (=> b!4887641 (=> (not res!2087297) (not e!3055396))))

(declare-fun rulesValidInductive!3129 (LexerInterface!7742 List!56457) Bool)

(assert (=> b!4887641 (= res!2087297 (rulesValidInductive!3129 thiss!14805 rulesArg!165))))

(declare-fun b!4887642 () Bool)

(declare-fun res!2087295 () Bool)

(declare-fun e!3055392 () Bool)

(assert (=> b!4887642 (=> res!2087295 e!3055392)))

(declare-fun lt!2003128 () Bool)

(assert (=> b!4887642 (= res!2087295 lt!2003128)))

(declare-fun b!4887643 () Bool)

(declare-fun res!2087301 () Bool)

(assert (=> b!4887643 (=> (not res!2087301) (not e!3055396))))

(declare-fun isEmpty!30196 (List!56457) Bool)

(assert (=> b!4887643 (= res!2087301 (not (isEmpty!30196 rulesArg!165)))))

(declare-fun b!4887644 () Bool)

(declare-fun e!3055391 () Bool)

(declare-fun e!3055402 () Bool)

(assert (=> b!4887644 (= e!3055391 e!3055402)))

(declare-fun res!2087302 () Bool)

(assert (=> b!4887644 (=> res!2087302 e!3055402)))

(declare-fun lt!2003129 () tuple2!60336)

(declare-datatypes ((tuple2!60338 0))(
  ( (tuple2!60339 (_1!33472 Token!14868) (_2!33472 List!56455)) )
))
(declare-fun lt!2003130 () tuple2!60338)

(assert (=> b!4887644 (= res!2087302 (not (= (_1!33471 lt!2003129) (_1!33472 lt!2003130))))))

(declare-datatypes ((Option!13984 0))(
  ( (None!13983) (Some!13983 (v!49933 tuple2!60338)) )
))
(declare-fun lt!2003132 () Option!13984)

(declare-fun get!19430 (Option!13984) tuple2!60338)

(assert (=> b!4887644 (= lt!2003130 (get!19430 lt!2003132))))

(declare-fun get!19431 (Option!13983) tuple2!60336)

(assert (=> b!4887644 (= lt!2003129 (get!19431 lt!2003136))))

(declare-fun b!4887645 () Bool)

(declare-fun e!3055401 () Bool)

(declare-fun e!3055398 () Bool)

(declare-fun tp!1375543 () Bool)

(assert (=> b!4887645 (= e!3055401 (and e!3055398 tp!1375543))))

(declare-fun b!4887646 () Bool)

(declare-fun e!3055395 () Bool)

(assert (=> b!4887646 (= e!3055395 e!3055392)))

(declare-fun res!2087298 () Bool)

(assert (=> b!4887646 (=> res!2087298 e!3055392)))

(assert (=> b!4887646 (= res!2087298 e!3055391)))

(declare-fun res!2087299 () Bool)

(assert (=> b!4887646 (=> (not res!2087299) (not e!3055391))))

(assert (=> b!4887646 (= res!2087299 (not lt!2003128))))

(declare-fun lt!2003135 () Bool)

(assert (=> b!4887646 (= lt!2003128 (not lt!2003135))))

(declare-fun res!2087300 () Bool)

(assert (=> start!511584 (=> (not res!2087300) (not e!3055396))))

(assert (=> start!511584 (= res!2087300 ((_ is Lexer!7740) thiss!14805))))

(assert (=> start!511584 e!3055396))

(assert (=> start!511584 true))

(assert (=> start!511584 e!3055401))

(declare-fun e!3055394 () Bool)

(declare-fun inv!72532 (BalanceConc!28866) Bool)

(assert (=> start!511584 (and (inv!72532 input!1236) e!3055394)))

(declare-fun tp!1375541 () Bool)

(declare-fun b!4887647 () Bool)

(declare-fun e!3055397 () Bool)

(declare-fun inv!72528 (String!63741) Bool)

(declare-fun inv!72533 (TokenValueInjection!16228) Bool)

(assert (=> b!4887647 (= e!3055398 (and tp!1375541 (inv!72528 (tag!9014 (h!62781 rulesArg!165))) (inv!72533 (transformation!8150 (h!62781 rulesArg!165))) e!3055397))))

(assert (=> b!4887648 (= e!3055397 (and tp!1375545 tp!1375544))))

(declare-fun b!4887649 () Bool)

(assert (=> b!4887649 (= e!3055396 (not e!3055400))))

(declare-fun res!2087296 () Bool)

(assert (=> b!4887649 (=> res!2087296 e!3055400)))

(assert (=> b!4887649 (= res!2087296 (or (and ((_ is Cons!56333) rulesArg!165) ((_ is Nil!56333) (t!365103 rulesArg!165))) (not ((_ is Cons!56333) rulesArg!165))))))

(declare-fun lt!2003134 () List!56455)

(declare-fun isPrefix!4872 (List!56455 List!56455) Bool)

(assert (=> b!4887649 (isPrefix!4872 lt!2003134 lt!2003134)))

(declare-datatypes ((Unit!146322 0))(
  ( (Unit!146323) )
))
(declare-fun lt!2003133 () Unit!146322)

(declare-fun lemmaIsPrefixRefl!3269 (List!56455 List!56455) Unit!146322)

(assert (=> b!4887649 (= lt!2003133 (lemmaIsPrefixRefl!3269 lt!2003134 lt!2003134))))

(declare-fun list!17688 (BalanceConc!28866) List!56455)

(assert (=> b!4887649 (= lt!2003134 (list!17688 input!1236))))

(declare-fun b!4887650 () Bool)

(assert (=> b!4887650 (= e!3055392 true)))

(declare-fun lt!2003137 () Option!13984)

(declare-fun maxPrefix!4591 (LexerInterface!7742 List!56457 List!56455) Option!13984)

(assert (=> b!4887650 (= lt!2003137 (maxPrefix!4591 thiss!14805 rulesArg!165 lt!2003134))))

(declare-fun b!4887651 () Bool)

(assert (=> b!4887651 (= e!3055399 e!3055395)))

(declare-fun res!2087294 () Bool)

(assert (=> b!4887651 (=> res!2087294 e!3055395)))

(declare-fun isDefined!10998 (Option!13984) Bool)

(assert (=> b!4887651 (= res!2087294 (not (= lt!2003135 (isDefined!10998 lt!2003132))))))

(declare-fun isDefined!10999 (Option!13983) Bool)

(assert (=> b!4887651 (= lt!2003135 (isDefined!10999 lt!2003136))))

(declare-fun maxPrefixZipper!653 (LexerInterface!7742 List!56457 List!56455) Option!13984)

(assert (=> b!4887651 (= lt!2003132 (maxPrefixZipper!653 thiss!14805 rulesArg!165 lt!2003134))))

(declare-fun b!4887652 () Bool)

(declare-fun tp!1375542 () Bool)

(declare-fun inv!72534 (Conc!14718) Bool)

(assert (=> b!4887652 (= e!3055394 (and (inv!72534 (c!830841 input!1236)) tp!1375542))))

(declare-fun b!4887653 () Bool)

(assert (=> b!4887653 (= e!3055402 (not (= (list!17688 (_2!33471 lt!2003129)) (_2!33472 lt!2003130))))))

(assert (= (and start!511584 res!2087300) b!4887641))

(assert (= (and b!4887641 res!2087297) b!4887643))

(assert (= (and b!4887643 res!2087301) b!4887649))

(assert (= (and b!4887649 (not res!2087296)) b!4887640))

(assert (= (and b!4887640 (not res!2087303)) b!4887651))

(assert (= (and b!4887651 (not res!2087294)) b!4887646))

(assert (= (and b!4887646 res!2087299) b!4887644))

(assert (= (and b!4887644 (not res!2087302)) b!4887653))

(assert (= (and b!4887646 (not res!2087298)) b!4887642))

(assert (= (and b!4887642 (not res!2087295)) b!4887650))

(assert (= b!4887647 b!4887648))

(assert (= b!4887645 b!4887647))

(assert (= (and start!511584 ((_ is Cons!56333) rulesArg!165)) b!4887645))

(assert (= start!511584 b!4887652))

(declare-fun m!5891344 () Bool)

(assert (=> b!4887640 m!5891344))

(declare-fun m!5891346 () Bool)

(assert (=> b!4887640 m!5891346))

(declare-fun m!5891348 () Bool)

(assert (=> b!4887647 m!5891348))

(declare-fun m!5891350 () Bool)

(assert (=> b!4887647 m!5891350))

(declare-fun m!5891352 () Bool)

(assert (=> b!4887649 m!5891352))

(declare-fun m!5891354 () Bool)

(assert (=> b!4887649 m!5891354))

(declare-fun m!5891356 () Bool)

(assert (=> b!4887649 m!5891356))

(declare-fun m!5891358 () Bool)

(assert (=> b!4887651 m!5891358))

(declare-fun m!5891360 () Bool)

(assert (=> b!4887651 m!5891360))

(declare-fun m!5891362 () Bool)

(assert (=> b!4887651 m!5891362))

(declare-fun m!5891364 () Bool)

(assert (=> b!4887641 m!5891364))

(declare-fun m!5891366 () Bool)

(assert (=> b!4887643 m!5891366))

(declare-fun m!5891368 () Bool)

(assert (=> b!4887652 m!5891368))

(declare-fun m!5891370 () Bool)

(assert (=> b!4887644 m!5891370))

(declare-fun m!5891372 () Bool)

(assert (=> b!4887644 m!5891372))

(declare-fun m!5891374 () Bool)

(assert (=> b!4887653 m!5891374))

(declare-fun m!5891376 () Bool)

(assert (=> b!4887650 m!5891376))

(declare-fun m!5891378 () Bool)

(assert (=> start!511584 m!5891378))

(check-sat (not b!4887652) (not start!511584) (not b!4887641) (not b!4887651) (not b!4887650) b_and!344175 (not b!4887643) (not b!4887649) (not b!4887653) (not b!4887644) (not b_next!132133) (not b!4887645) (not b_next!132135) (not b!4887640) b_and!344177 (not b!4887647))
(check-sat b_and!344177 b_and!344175 (not b_next!132133) (not b_next!132135))
