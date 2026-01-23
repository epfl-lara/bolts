; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!356240 () Bool)

(assert start!356240)

(declare-fun b!3803282 () Bool)

(declare-fun b_free!101341 () Bool)

(declare-fun b_next!102045 () Bool)

(assert (=> b!3803282 (= b_free!101341 (not b_next!102045))))

(declare-fun tp!1155363 () Bool)

(declare-fun b_and!282739 () Bool)

(assert (=> b!3803282 (= tp!1155363 b_and!282739)))

(declare-fun b_free!101343 () Bool)

(declare-fun b_next!102047 () Bool)

(assert (=> b!3803282 (= b_free!101343 (not b_next!102047))))

(declare-fun tp!1155358 () Bool)

(declare-fun b_and!282741 () Bool)

(assert (=> b!3803282 (= tp!1155358 b_and!282741)))

(declare-fun e!2350262 () Bool)

(declare-fun tp!1155359 () Bool)

(declare-fun b!3803278 () Bool)

(declare-fun e!2350265 () Bool)

(declare-datatypes ((List!40486 0))(
  ( (Nil!40362) (Cons!40362 (h!45782 (_ BitVec 16)) (t!307215 List!40486)) )
))
(declare-datatypes ((TokenValue!6442 0))(
  ( (FloatLiteralValue!12884 (text!45539 List!40486)) (TokenValueExt!6441 (__x!25101 Int)) (Broken!32210 (value!197623 List!40486)) (Object!6565) (End!6442) (Def!6442) (Underscore!6442) (Match!6442) (Else!6442) (Error!6442) (Case!6442) (If!6442) (Extends!6442) (Abstract!6442) (Class!6442) (Val!6442) (DelimiterValue!12884 (del!6502 List!40486)) (KeywordValue!6448 (value!197624 List!40486)) (CommentValue!12884 (value!197625 List!40486)) (WhitespaceValue!12884 (value!197626 List!40486)) (IndentationValue!6442 (value!197627 List!40486)) (String!45891) (Int32!6442) (Broken!32211 (value!197628 List!40486)) (Boolean!6443) (Unit!58103) (OperatorValue!6445 (op!6502 List!40486)) (IdentifierValue!12884 (value!197629 List!40486)) (IdentifierValue!12885 (value!197630 List!40486)) (WhitespaceValue!12885 (value!197631 List!40486)) (True!12884) (False!12884) (Broken!32212 (value!197632 List!40486)) (Broken!32213 (value!197633 List!40486)) (True!12885) (RightBrace!6442) (RightBracket!6442) (Colon!6442) (Null!6442) (Comma!6442) (LeftBracket!6442) (False!12885) (LeftBrace!6442) (ImaginaryLiteralValue!6442 (text!45540 List!40486)) (StringLiteralValue!19326 (value!197634 List!40486)) (EOFValue!6442 (value!197635 List!40486)) (IdentValue!6442 (value!197636 List!40486)) (DelimiterValue!12885 (value!197637 List!40486)) (DedentValue!6442 (value!197638 List!40486)) (NewLineValue!6442 (value!197639 List!40486)) (IntegerValue!19326 (value!197640 (_ BitVec 32)) (text!45541 List!40486)) (IntegerValue!19327 (value!197641 Int) (text!45542 List!40486)) (Times!6442) (Or!6442) (Equal!6442) (Minus!6442) (Broken!32214 (value!197642 List!40486)) (And!6442) (Div!6442) (LessEqual!6442) (Mod!6442) (Concat!17559) (Not!6442) (Plus!6442) (SpaceValue!6442 (value!197643 List!40486)) (IntegerValue!19328 (value!197644 Int) (text!45543 List!40486)) (StringLiteralValue!19327 (text!45544 List!40486)) (FloatLiteralValue!12885 (text!45545 List!40486)) (BytesLiteralValue!6442 (value!197645 List!40486)) (CommentValue!12885 (value!197646 List!40486)) (StringLiteralValue!19328 (value!197647 List!40486)) (ErrorTokenValue!6442 (msg!6503 List!40486)) )
))
(declare-datatypes ((C!22420 0))(
  ( (C!22421 (val!13286 Int)) )
))
(declare-datatypes ((Regex!11117 0))(
  ( (ElementMatch!11117 (c!661413 C!22420)) (Concat!17560 (regOne!22746 Regex!11117) (regTwo!22746 Regex!11117)) (EmptyExpr!11117) (Star!11117 (reg!11446 Regex!11117)) (EmptyLang!11117) (Union!11117 (regOne!22747 Regex!11117) (regTwo!22747 Regex!11117)) )
))
(declare-datatypes ((String!45892 0))(
  ( (String!45893 (value!197648 String)) )
))
(declare-datatypes ((List!40487 0))(
  ( (Nil!40363) (Cons!40363 (h!45783 C!22420) (t!307216 List!40487)) )
))
(declare-datatypes ((IArray!24801 0))(
  ( (IArray!24802 (innerList!12458 List!40487)) )
))
(declare-datatypes ((Conc!12398 0))(
  ( (Node!12398 (left!31229 Conc!12398) (right!31559 Conc!12398) (csize!25026 Int) (cheight!12609 Int)) (Leaf!19202 (xs!15664 IArray!24801) (csize!25027 Int)) (Empty!12398) )
))
(declare-datatypes ((BalanceConc!24390 0))(
  ( (BalanceConc!24391 (c!661414 Conc!12398)) )
))
(declare-datatypes ((TokenValueInjection!12312 0))(
  ( (TokenValueInjection!12313 (toValue!8596 Int) (toChars!8455 Int)) )
))
(declare-datatypes ((Rule!12224 0))(
  ( (Rule!12225 (regex!6212 Regex!11117) (tag!7072 String!45892) (isSeparator!6212 Bool) (transformation!6212 TokenValueInjection!12312)) )
))
(declare-datatypes ((List!40488 0))(
  ( (Nil!40364) (Cons!40364 (h!45784 Rule!12224) (t!307217 List!40488)) )
))
(declare-fun rules!1265 () List!40488)

(declare-fun inv!54320 (String!45892) Bool)

(declare-fun inv!54326 (TokenValueInjection!12312) Bool)

(assert (=> b!3803278 (= e!2350265 (and tp!1155359 (inv!54320 (tag!7072 (h!45784 rules!1265))) (inv!54326 (transformation!6212 (h!45784 rules!1265))) e!2350262))))

(declare-fun b!3803279 () Bool)

(declare-fun e!2350275 () Bool)

(declare-fun e!2350276 () Bool)

(assert (=> b!3803279 (= e!2350275 e!2350276)))

(declare-fun res!1539773 () Bool)

(assert (=> b!3803279 (=> (not res!1539773) (not e!2350276))))

(declare-datatypes ((Token!11562 0))(
  ( (Token!11563 (value!197649 TokenValue!6442) (rule!9008 Rule!12224) (size!30384 Int) (originalCharacters!6812 List!40487)) )
))
(declare-datatypes ((List!40489 0))(
  ( (Nil!40365) (Cons!40365 (h!45785 Token!11562) (t!307218 List!40489)) )
))
(declare-datatypes ((IArray!24803 0))(
  ( (IArray!24804 (innerList!12459 List!40489)) )
))
(declare-datatypes ((Conc!12399 0))(
  ( (Node!12399 (left!31230 Conc!12399) (right!31560 Conc!12399) (csize!25028 Int) (cheight!12610 Int)) (Leaf!19203 (xs!15665 IArray!24803) (csize!25029 Int)) (Empty!12399) )
))
(declare-datatypes ((BalanceConc!24392 0))(
  ( (BalanceConc!24393 (c!661415 Conc!12399)) )
))
(declare-fun acc!335 () BalanceConc!24392)

(declare-datatypes ((tuple2!39494 0))(
  ( (tuple2!39495 (_1!22881 BalanceConc!24392) (_2!22881 BalanceConc!24390)) )
))
(declare-fun lt!1318804 () tuple2!39494)

(declare-fun lt!1318791 () tuple2!39494)

(declare-fun list!14991 (BalanceConc!24392) List!40489)

(declare-fun ++!10132 (BalanceConc!24392 BalanceConc!24392) BalanceConc!24392)

(assert (=> b!3803279 (= res!1539773 (= (list!14991 (_1!22881 lt!1318804)) (list!14991 (++!10132 acc!335 (_1!22881 lt!1318791)))))))

(declare-fun input!678 () BalanceConc!24390)

(declare-datatypes ((LexerInterface!5801 0))(
  ( (LexerInterfaceExt!5798 (__x!25102 Int)) (Lexer!5799) )
))
(declare-fun thiss!11876 () LexerInterface!5801)

(declare-fun lexRec!825 (LexerInterface!5801 List!40488 BalanceConc!24390) tuple2!39494)

(assert (=> b!3803279 (= lt!1318791 (lexRec!825 thiss!11876 rules!1265 input!678))))

(declare-fun totalInput!335 () BalanceConc!24390)

(assert (=> b!3803279 (= lt!1318804 (lexRec!825 thiss!11876 rules!1265 totalInput!335))))

(declare-fun b!3803280 () Bool)

(declare-fun e!2350269 () Bool)

(declare-fun e!2350274 () Bool)

(assert (=> b!3803280 (= e!2350269 e!2350274)))

(declare-fun res!1539778 () Bool)

(assert (=> b!3803280 (=> (not res!1539778) (not e!2350274))))

(declare-fun lt!1318800 () List!40487)

(declare-fun lt!1318799 () List!40487)

(assert (=> b!3803280 (= res!1539778 (= lt!1318800 lt!1318799))))

(declare-fun lt!1318796 () List!40487)

(declare-fun lt!1318797 () List!40487)

(declare-fun ++!10133 (List!40487 List!40487) List!40487)

(assert (=> b!3803280 (= lt!1318799 (++!10133 lt!1318796 lt!1318797))))

(declare-fun list!14992 (BalanceConc!24390) List!40487)

(assert (=> b!3803280 (= lt!1318800 (list!14992 totalInput!335))))

(assert (=> b!3803280 (= lt!1318797 (list!14992 input!678))))

(declare-fun treated!13 () BalanceConc!24390)

(assert (=> b!3803280 (= lt!1318796 (list!14992 treated!13))))

(declare-fun b!3803281 () Bool)

(declare-fun res!1539776 () Bool)

(assert (=> b!3803281 (=> (not res!1539776) (not e!2350275))))

(declare-fun lt!1318803 () tuple2!39494)

(declare-fun isEmpty!23762 (List!40487) Bool)

(assert (=> b!3803281 (= res!1539776 (isEmpty!23762 (list!14992 (_2!22881 lt!1318803))))))

(assert (=> b!3803282 (= e!2350262 (and tp!1155363 tp!1155358))))

(declare-fun b!3803283 () Bool)

(declare-fun e!2350271 () Bool)

(declare-fun tp!1155360 () Bool)

(assert (=> b!3803283 (= e!2350271 (and e!2350265 tp!1155360))))

(declare-fun b!3803284 () Bool)

(declare-fun e!2350273 () Bool)

(declare-fun tp!1155357 () Bool)

(declare-fun inv!54327 (Conc!12399) Bool)

(assert (=> b!3803284 (= e!2350273 (and (inv!54327 (c!661415 acc!335)) tp!1155357))))

(declare-fun res!1539771 () Bool)

(assert (=> start!356240 (=> (not res!1539771) (not e!2350269))))

(get-info :version)

(assert (=> start!356240 (= res!1539771 ((_ is Lexer!5799) thiss!11876))))

(assert (=> start!356240 e!2350269))

(declare-fun e!2350263 () Bool)

(declare-fun inv!54328 (BalanceConc!24390) Bool)

(assert (=> start!356240 (and (inv!54328 input!678) e!2350263)))

(declare-fun inv!54329 (BalanceConc!24392) Bool)

(assert (=> start!356240 (and (inv!54329 acc!335) e!2350273)))

(declare-fun e!2350270 () Bool)

(assert (=> start!356240 (and (inv!54328 treated!13) e!2350270)))

(assert (=> start!356240 e!2350271))

(assert (=> start!356240 true))

(declare-fun e!2350267 () Bool)

(assert (=> start!356240 (and (inv!54328 totalInput!335) e!2350267)))

(declare-fun b!3803285 () Bool)

(declare-fun tp!1155361 () Bool)

(declare-fun inv!54330 (Conc!12398) Bool)

(assert (=> b!3803285 (= e!2350263 (and (inv!54330 (c!661414 input!678)) tp!1155361))))

(declare-fun b!3803286 () Bool)

(declare-fun tp!1155364 () Bool)

(assert (=> b!3803286 (= e!2350267 (and (inv!54330 (c!661414 totalInput!335)) tp!1155364))))

(declare-fun b!3803287 () Bool)

(declare-fun res!1539779 () Bool)

(assert (=> b!3803287 (=> (not res!1539779) (not e!2350276))))

(assert (=> b!3803287 (= res!1539779 (= (list!14992 (_2!22881 lt!1318804)) (list!14992 (_2!22881 lt!1318791))))))

(declare-fun b!3803288 () Bool)

(assert (=> b!3803288 (= e!2350274 e!2350275)))

(declare-fun res!1539780 () Bool)

(assert (=> b!3803288 (=> (not res!1539780) (not e!2350275))))

(declare-fun lt!1318798 () List!40489)

(declare-fun lt!1318801 () List!40489)

(assert (=> b!3803288 (= res!1539780 (= lt!1318798 lt!1318801))))

(assert (=> b!3803288 (= lt!1318801 (list!14991 acc!335))))

(assert (=> b!3803288 (= lt!1318798 (list!14991 (_1!22881 lt!1318803)))))

(assert (=> b!3803288 (= lt!1318803 (lexRec!825 thiss!11876 rules!1265 treated!13))))

(declare-fun b!3803289 () Bool)

(declare-fun e!2350266 () Bool)

(declare-fun lt!1318788 () List!40489)

(declare-fun isEmpty!23763 (List!40489) Bool)

(assert (=> b!3803289 (= e!2350266 (not (isEmpty!23763 lt!1318788)))))

(declare-fun lt!1318790 () List!40487)

(declare-fun lt!1318789 () tuple2!39494)

(assert (=> b!3803289 (= lt!1318790 (list!14992 (_2!22881 lt!1318789)))))

(declare-datatypes ((tuple2!39496 0))(
  ( (tuple2!39497 (_1!22882 Token!11562) (_2!22882 BalanceConc!24390)) )
))
(declare-datatypes ((Option!8624 0))(
  ( (None!8623) (Some!8623 (v!38847 tuple2!39496)) )
))
(declare-fun lt!1318792 () Option!8624)

(declare-fun append!1060 (BalanceConc!24392 Token!11562) BalanceConc!24392)

(assert (=> b!3803289 (= lt!1318788 (list!14991 (append!1060 acc!335 (_1!22882 (v!38847 lt!1318792)))))))

(declare-fun lt!1318784 () List!40489)

(declare-fun lt!1318802 () List!40489)

(declare-fun ++!10134 (List!40489 List!40489) List!40489)

(assert (=> b!3803289 (= (++!10134 (++!10134 lt!1318801 lt!1318784) lt!1318802) (++!10134 lt!1318801 (++!10134 lt!1318784 lt!1318802)))))

(declare-datatypes ((Unit!58104 0))(
  ( (Unit!58105) )
))
(declare-fun lt!1318795 () Unit!58104)

(declare-fun lemmaConcatAssociativity!2175 (List!40489 List!40489 List!40489) Unit!58104)

(assert (=> b!3803289 (= lt!1318795 (lemmaConcatAssociativity!2175 lt!1318801 lt!1318784 lt!1318802))))

(assert (=> b!3803289 (= lt!1318802 (list!14991 (_1!22881 lt!1318789)))))

(assert (=> b!3803289 (= lt!1318784 (Cons!40365 (_1!22882 (v!38847 lt!1318792)) Nil!40365))))

(declare-fun e!2350264 () tuple2!39494)

(assert (=> b!3803289 (= lt!1318791 e!2350264)))

(declare-fun c!661412 () Bool)

(declare-fun lt!1318793 () Option!8624)

(assert (=> b!3803289 (= c!661412 ((_ is Some!8623) lt!1318793))))

(declare-fun maxPrefixZipperSequence!1207 (LexerInterface!5801 List!40488 BalanceConc!24390) Option!8624)

(assert (=> b!3803289 (= lt!1318793 (maxPrefixZipperSequence!1207 thiss!11876 rules!1265 input!678))))

(declare-fun lt!1318787 () List!40487)

(declare-fun lt!1318786 () List!40487)

(assert (=> b!3803289 (= (++!10133 (++!10133 lt!1318796 lt!1318787) lt!1318786) (++!10133 lt!1318796 (++!10133 lt!1318787 lt!1318786)))))

(declare-fun lt!1318785 () Unit!58104)

(declare-fun lemmaConcatAssociativity!2176 (List!40487 List!40487 List!40487) Unit!58104)

(assert (=> b!3803289 (= lt!1318785 (lemmaConcatAssociativity!2176 lt!1318796 lt!1318787 lt!1318786))))

(assert (=> b!3803289 (= lt!1318786 (list!14992 (_2!22882 (v!38847 lt!1318792))))))

(declare-fun charsOf!4050 (Token!11562) BalanceConc!24390)

(assert (=> b!3803289 (= lt!1318787 (list!14992 (charsOf!4050 (_1!22882 (v!38847 lt!1318792)))))))

(assert (=> b!3803289 (= lt!1318789 (lexRec!825 thiss!11876 rules!1265 (_2!22882 (v!38847 lt!1318792))))))

(declare-fun b!3803290 () Bool)

(declare-fun res!1539774 () Bool)

(assert (=> b!3803290 (=> (not res!1539774) (not e!2350269))))

(declare-fun isEmpty!23764 (List!40488) Bool)

(assert (=> b!3803290 (= res!1539774 (not (isEmpty!23764 rules!1265)))))

(declare-fun b!3803291 () Bool)

(declare-fun res!1539775 () Bool)

(assert (=> b!3803291 (=> (not res!1539775) (not e!2350269))))

(declare-fun rulesInvariant!5144 (LexerInterface!5801 List!40488) Bool)

(assert (=> b!3803291 (= res!1539775 (rulesInvariant!5144 thiss!11876 rules!1265))))

(declare-fun b!3803292 () Bool)

(declare-fun tp!1155362 () Bool)

(assert (=> b!3803292 (= e!2350270 (and (inv!54330 (c!661414 treated!13)) tp!1155362))))

(declare-fun b!3803293 () Bool)

(declare-fun e!2350272 () Bool)

(assert (=> b!3803293 (= e!2350272 e!2350266)))

(declare-fun res!1539777 () Bool)

(assert (=> b!3803293 (=> res!1539777 e!2350266)))

(assert (=> b!3803293 (= res!1539777 (not ((_ is Some!8623) lt!1318792)))))

(declare-fun maxPrefixZipperSequenceV2!601 (LexerInterface!5801 List!40488 BalanceConc!24390 BalanceConc!24390) Option!8624)

(assert (=> b!3803293 (= lt!1318792 (maxPrefixZipperSequenceV2!601 thiss!11876 rules!1265 input!678 totalInput!335))))

(declare-fun b!3803294 () Bool)

(declare-fun lt!1318805 () tuple2!39494)

(declare-fun prepend!1356 (BalanceConc!24392 Token!11562) BalanceConc!24392)

(assert (=> b!3803294 (= e!2350264 (tuple2!39495 (prepend!1356 (_1!22881 lt!1318805) (_1!22882 (v!38847 lt!1318793))) (_2!22881 lt!1318805)))))

(assert (=> b!3803294 (= lt!1318805 (lexRec!825 thiss!11876 rules!1265 (_2!22882 (v!38847 lt!1318793))))))

(declare-fun b!3803295 () Bool)

(assert (=> b!3803295 (= e!2350276 (not e!2350272))))

(declare-fun res!1539772 () Bool)

(assert (=> b!3803295 (=> res!1539772 e!2350272)))

(declare-fun isSuffix!984 (List!40487 List!40487) Bool)

(assert (=> b!3803295 (= res!1539772 (not (isSuffix!984 lt!1318797 lt!1318800)))))

(assert (=> b!3803295 (isSuffix!984 lt!1318797 lt!1318799)))

(declare-fun lt!1318794 () Unit!58104)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!669 (List!40487 List!40487) Unit!58104)

(assert (=> b!3803295 (= lt!1318794 (lemmaConcatTwoListThenFSndIsSuffix!669 lt!1318796 lt!1318797))))

(declare-fun b!3803296 () Bool)

(assert (=> b!3803296 (= e!2350264 (tuple2!39495 (BalanceConc!24393 Empty!12399) input!678))))

(assert (= (and start!356240 res!1539771) b!3803290))

(assert (= (and b!3803290 res!1539774) b!3803291))

(assert (= (and b!3803291 res!1539775) b!3803280))

(assert (= (and b!3803280 res!1539778) b!3803288))

(assert (= (and b!3803288 res!1539780) b!3803281))

(assert (= (and b!3803281 res!1539776) b!3803279))

(assert (= (and b!3803279 res!1539773) b!3803287))

(assert (= (and b!3803287 res!1539779) b!3803295))

(assert (= (and b!3803295 (not res!1539772)) b!3803293))

(assert (= (and b!3803293 (not res!1539777)) b!3803289))

(assert (= (and b!3803289 c!661412) b!3803294))

(assert (= (and b!3803289 (not c!661412)) b!3803296))

(assert (= start!356240 b!3803285))

(assert (= start!356240 b!3803284))

(assert (= start!356240 b!3803292))

(assert (= b!3803278 b!3803282))

(assert (= b!3803283 b!3803278))

(assert (= (and start!356240 ((_ is Cons!40364) rules!1265)) b!3803283))

(assert (= start!356240 b!3803286))

(declare-fun m!4334359 () Bool)

(assert (=> b!3803278 m!4334359))

(declare-fun m!4334361 () Bool)

(assert (=> b!3803278 m!4334361))

(declare-fun m!4334363 () Bool)

(assert (=> b!3803292 m!4334363))

(declare-fun m!4334365 () Bool)

(assert (=> b!3803286 m!4334365))

(declare-fun m!4334367 () Bool)

(assert (=> b!3803295 m!4334367))

(declare-fun m!4334369 () Bool)

(assert (=> b!3803295 m!4334369))

(declare-fun m!4334371 () Bool)

(assert (=> b!3803295 m!4334371))

(declare-fun m!4334373 () Bool)

(assert (=> b!3803294 m!4334373))

(declare-fun m!4334375 () Bool)

(assert (=> b!3803294 m!4334375))

(declare-fun m!4334377 () Bool)

(assert (=> b!3803293 m!4334377))

(declare-fun m!4334379 () Bool)

(assert (=> b!3803289 m!4334379))

(declare-fun m!4334381 () Bool)

(assert (=> b!3803289 m!4334381))

(declare-fun m!4334383 () Bool)

(assert (=> b!3803289 m!4334383))

(declare-fun m!4334385 () Bool)

(assert (=> b!3803289 m!4334385))

(declare-fun m!4334387 () Bool)

(assert (=> b!3803289 m!4334387))

(declare-fun m!4334389 () Bool)

(assert (=> b!3803289 m!4334389))

(declare-fun m!4334391 () Bool)

(assert (=> b!3803289 m!4334391))

(declare-fun m!4334393 () Bool)

(assert (=> b!3803289 m!4334393))

(assert (=> b!3803289 m!4334391))

(declare-fun m!4334395 () Bool)

(assert (=> b!3803289 m!4334395))

(assert (=> b!3803289 m!4334381))

(declare-fun m!4334397 () Bool)

(assert (=> b!3803289 m!4334397))

(declare-fun m!4334399 () Bool)

(assert (=> b!3803289 m!4334399))

(declare-fun m!4334401 () Bool)

(assert (=> b!3803289 m!4334401))

(declare-fun m!4334403 () Bool)

(assert (=> b!3803289 m!4334403))

(declare-fun m!4334405 () Bool)

(assert (=> b!3803289 m!4334405))

(declare-fun m!4334407 () Bool)

(assert (=> b!3803289 m!4334407))

(declare-fun m!4334409 () Bool)

(assert (=> b!3803289 m!4334409))

(declare-fun m!4334411 () Bool)

(assert (=> b!3803289 m!4334411))

(assert (=> b!3803289 m!4334399))

(declare-fun m!4334413 () Bool)

(assert (=> b!3803289 m!4334413))

(assert (=> b!3803289 m!4334385))

(declare-fun m!4334415 () Bool)

(assert (=> b!3803289 m!4334415))

(assert (=> b!3803289 m!4334387))

(assert (=> b!3803289 m!4334405))

(declare-fun m!4334417 () Bool)

(assert (=> b!3803289 m!4334417))

(declare-fun m!4334419 () Bool)

(assert (=> b!3803287 m!4334419))

(declare-fun m!4334421 () Bool)

(assert (=> b!3803287 m!4334421))

(declare-fun m!4334423 () Bool)

(assert (=> start!356240 m!4334423))

(declare-fun m!4334425 () Bool)

(assert (=> start!356240 m!4334425))

(declare-fun m!4334427 () Bool)

(assert (=> start!356240 m!4334427))

(declare-fun m!4334429 () Bool)

(assert (=> start!356240 m!4334429))

(declare-fun m!4334431 () Bool)

(assert (=> b!3803280 m!4334431))

(declare-fun m!4334433 () Bool)

(assert (=> b!3803280 m!4334433))

(declare-fun m!4334435 () Bool)

(assert (=> b!3803280 m!4334435))

(declare-fun m!4334437 () Bool)

(assert (=> b!3803280 m!4334437))

(declare-fun m!4334439 () Bool)

(assert (=> b!3803284 m!4334439))

(declare-fun m!4334441 () Bool)

(assert (=> b!3803288 m!4334441))

(declare-fun m!4334443 () Bool)

(assert (=> b!3803288 m!4334443))

(declare-fun m!4334445 () Bool)

(assert (=> b!3803288 m!4334445))

(declare-fun m!4334447 () Bool)

(assert (=> b!3803291 m!4334447))

(declare-fun m!4334449 () Bool)

(assert (=> b!3803290 m!4334449))

(declare-fun m!4334451 () Bool)

(assert (=> b!3803279 m!4334451))

(declare-fun m!4334453 () Bool)

(assert (=> b!3803279 m!4334453))

(declare-fun m!4334455 () Bool)

(assert (=> b!3803279 m!4334455))

(assert (=> b!3803279 m!4334451))

(declare-fun m!4334457 () Bool)

(assert (=> b!3803279 m!4334457))

(declare-fun m!4334459 () Bool)

(assert (=> b!3803279 m!4334459))

(declare-fun m!4334461 () Bool)

(assert (=> b!3803285 m!4334461))

(declare-fun m!4334463 () Bool)

(assert (=> b!3803281 m!4334463))

(assert (=> b!3803281 m!4334463))

(declare-fun m!4334465 () Bool)

(assert (=> b!3803281 m!4334465))

(check-sat (not b!3803287) (not b!3803295) (not b_next!102047) b_and!282741 (not b!3803293) (not b!3803292) b_and!282739 (not b_next!102045) (not b!3803281) (not start!356240) (not b!3803291) (not b!3803289) (not b!3803284) (not b!3803279) (not b!3803290) (not b!3803294) (not b!3803285) (not b!3803283) (not b!3803280) (not b!3803286) (not b!3803278) (not b!3803288))
(check-sat b_and!282739 b_and!282741 (not b_next!102045) (not b_next!102047))
(get-model)

(declare-fun b!3803333 () Bool)

(declare-fun res!1539811 () Bool)

(declare-fun e!2350298 () Bool)

(assert (=> b!3803333 (=> (not res!1539811) (not e!2350298))))

(declare-fun isBalanced!3576 (Conc!12399) Bool)

(declare-fun ++!10136 (Conc!12399 Conc!12399) Conc!12399)

(assert (=> b!3803333 (= res!1539811 (isBalanced!3576 (++!10136 (c!661415 acc!335) (c!661415 (_1!22881 lt!1318791)))))))

(declare-fun lt!1318818 () BalanceConc!24392)

(declare-fun b!3803336 () Bool)

(assert (=> b!3803336 (= e!2350298 (= (list!14991 lt!1318818) (++!10134 (list!14991 acc!335) (list!14991 (_1!22881 lt!1318791)))))))

(declare-fun b!3803335 () Bool)

(declare-fun res!1539812 () Bool)

(assert (=> b!3803335 (=> (not res!1539812) (not e!2350298))))

(declare-fun height!1794 (Conc!12399) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!3803335 (= res!1539812 (>= (height!1794 (++!10136 (c!661415 acc!335) (c!661415 (_1!22881 lt!1318791)))) (max!0 (height!1794 (c!661415 acc!335)) (height!1794 (c!661415 (_1!22881 lt!1318791))))))))

(declare-fun d!1121850 () Bool)

(assert (=> d!1121850 e!2350298))

(declare-fun res!1539809 () Bool)

(assert (=> d!1121850 (=> (not res!1539809) (not e!2350298))))

(declare-fun appendAssocInst!859 (Conc!12399 Conc!12399) Bool)

(assert (=> d!1121850 (= res!1539809 (appendAssocInst!859 (c!661415 acc!335) (c!661415 (_1!22881 lt!1318791))))))

(assert (=> d!1121850 (= lt!1318818 (BalanceConc!24393 (++!10136 (c!661415 acc!335) (c!661415 (_1!22881 lt!1318791)))))))

(assert (=> d!1121850 (= (++!10132 acc!335 (_1!22881 lt!1318791)) lt!1318818)))

(declare-fun b!3803334 () Bool)

(declare-fun res!1539810 () Bool)

(assert (=> b!3803334 (=> (not res!1539810) (not e!2350298))))

(assert (=> b!3803334 (= res!1539810 (<= (height!1794 (++!10136 (c!661415 acc!335) (c!661415 (_1!22881 lt!1318791)))) (+ (max!0 (height!1794 (c!661415 acc!335)) (height!1794 (c!661415 (_1!22881 lt!1318791)))) 1)))))

(assert (= (and d!1121850 res!1539809) b!3803333))

(assert (= (and b!3803333 res!1539811) b!3803334))

(assert (= (and b!3803334 res!1539810) b!3803335))

(assert (= (and b!3803335 res!1539812) b!3803336))

(declare-fun m!4334507 () Bool)

(assert (=> b!3803335 m!4334507))

(declare-fun m!4334509 () Bool)

(assert (=> b!3803335 m!4334509))

(declare-fun m!4334511 () Bool)

(assert (=> b!3803335 m!4334511))

(assert (=> b!3803335 m!4334509))

(declare-fun m!4334513 () Bool)

(assert (=> b!3803335 m!4334513))

(assert (=> b!3803335 m!4334511))

(assert (=> b!3803335 m!4334507))

(declare-fun m!4334515 () Bool)

(assert (=> b!3803335 m!4334515))

(assert (=> b!3803333 m!4334507))

(assert (=> b!3803333 m!4334507))

(declare-fun m!4334517 () Bool)

(assert (=> b!3803333 m!4334517))

(declare-fun m!4334519 () Bool)

(assert (=> b!3803336 m!4334519))

(assert (=> b!3803336 m!4334441))

(declare-fun m!4334521 () Bool)

(assert (=> b!3803336 m!4334521))

(assert (=> b!3803336 m!4334441))

(assert (=> b!3803336 m!4334521))

(declare-fun m!4334523 () Bool)

(assert (=> b!3803336 m!4334523))

(declare-fun m!4334525 () Bool)

(assert (=> d!1121850 m!4334525))

(assert (=> d!1121850 m!4334507))

(assert (=> b!3803334 m!4334507))

(assert (=> b!3803334 m!4334509))

(assert (=> b!3803334 m!4334511))

(assert (=> b!3803334 m!4334509))

(assert (=> b!3803334 m!4334513))

(assert (=> b!3803334 m!4334511))

(assert (=> b!3803334 m!4334507))

(assert (=> b!3803334 m!4334515))

(assert (=> b!3803279 d!1121850))

(declare-fun b!3803505 () Bool)

(declare-fun e!2350400 () Bool)

(declare-fun lt!1318896 () tuple2!39494)

(declare-fun isEmpty!23766 (BalanceConc!24392) Bool)

(assert (=> b!3803505 (= e!2350400 (not (isEmpty!23766 (_1!22881 lt!1318896))))))

(declare-fun b!3803506 () Bool)

(declare-fun e!2350401 () Bool)

(assert (=> b!3803506 (= e!2350401 e!2350400)))

(declare-fun res!1539906 () Bool)

(declare-fun size!30389 (BalanceConc!24390) Int)

(assert (=> b!3803506 (= res!1539906 (< (size!30389 (_2!22881 lt!1318896)) (size!30389 totalInput!335)))))

(assert (=> b!3803506 (=> (not res!1539906) (not e!2350400))))

(declare-fun e!2350399 () Bool)

(declare-fun b!3803507 () Bool)

(declare-datatypes ((tuple2!39502 0))(
  ( (tuple2!39503 (_1!22885 List!40489) (_2!22885 List!40487)) )
))
(declare-fun lexList!1571 (LexerInterface!5801 List!40488 List!40487) tuple2!39502)

(assert (=> b!3803507 (= e!2350399 (= (list!14992 (_2!22881 lt!1318896)) (_2!22885 (lexList!1571 thiss!11876 rules!1265 (list!14992 totalInput!335)))))))

(declare-fun d!1121852 () Bool)

(assert (=> d!1121852 e!2350399))

(declare-fun res!1539905 () Bool)

(assert (=> d!1121852 (=> (not res!1539905) (not e!2350399))))

(assert (=> d!1121852 (= res!1539905 e!2350401)))

(declare-fun c!661468 () Bool)

(declare-fun size!30390 (BalanceConc!24392) Int)

(assert (=> d!1121852 (= c!661468 (> (size!30390 (_1!22881 lt!1318896)) 0))))

(declare-fun e!2350398 () tuple2!39494)

(assert (=> d!1121852 (= lt!1318896 e!2350398)))

(declare-fun c!661469 () Bool)

(declare-fun lt!1318897 () Option!8624)

(assert (=> d!1121852 (= c!661469 ((_ is Some!8623) lt!1318897))))

(assert (=> d!1121852 (= lt!1318897 (maxPrefixZipperSequence!1207 thiss!11876 rules!1265 totalInput!335))))

(assert (=> d!1121852 (= (lexRec!825 thiss!11876 rules!1265 totalInput!335) lt!1318896)))

(declare-fun b!3803508 () Bool)

(assert (=> b!3803508 (= e!2350401 (= (list!14992 (_2!22881 lt!1318896)) (list!14992 totalInput!335)))))

(declare-fun b!3803509 () Bool)

(declare-fun res!1539904 () Bool)

(assert (=> b!3803509 (=> (not res!1539904) (not e!2350399))))

(assert (=> b!3803509 (= res!1539904 (= (list!14991 (_1!22881 lt!1318896)) (_1!22885 (lexList!1571 thiss!11876 rules!1265 (list!14992 totalInput!335)))))))

(declare-fun b!3803510 () Bool)

(assert (=> b!3803510 (= e!2350398 (tuple2!39495 (BalanceConc!24393 Empty!12399) totalInput!335))))

(declare-fun b!3803511 () Bool)

(declare-fun lt!1318895 () tuple2!39494)

(assert (=> b!3803511 (= e!2350398 (tuple2!39495 (prepend!1356 (_1!22881 lt!1318895) (_1!22882 (v!38847 lt!1318897))) (_2!22881 lt!1318895)))))

(assert (=> b!3803511 (= lt!1318895 (lexRec!825 thiss!11876 rules!1265 (_2!22882 (v!38847 lt!1318897))))))

(assert (= (and d!1121852 c!661469) b!3803511))

(assert (= (and d!1121852 (not c!661469)) b!3803510))

(assert (= (and d!1121852 c!661468) b!3803506))

(assert (= (and d!1121852 (not c!661468)) b!3803508))

(assert (= (and b!3803506 res!1539906) b!3803505))

(assert (= (and d!1121852 res!1539905) b!3803509))

(assert (= (and b!3803509 res!1539904) b!3803507))

(declare-fun m!4334825 () Bool)

(assert (=> b!3803507 m!4334825))

(assert (=> b!3803507 m!4334433))

(assert (=> b!3803507 m!4334433))

(declare-fun m!4334827 () Bool)

(assert (=> b!3803507 m!4334827))

(declare-fun m!4334829 () Bool)

(assert (=> b!3803505 m!4334829))

(declare-fun m!4334831 () Bool)

(assert (=> b!3803506 m!4334831))

(declare-fun m!4334833 () Bool)

(assert (=> b!3803506 m!4334833))

(declare-fun m!4334835 () Bool)

(assert (=> b!3803509 m!4334835))

(assert (=> b!3803509 m!4334433))

(assert (=> b!3803509 m!4334433))

(assert (=> b!3803509 m!4334827))

(declare-fun m!4334837 () Bool)

(assert (=> b!3803511 m!4334837))

(declare-fun m!4334839 () Bool)

(assert (=> b!3803511 m!4334839))

(declare-fun m!4334841 () Bool)

(assert (=> d!1121852 m!4334841))

(declare-fun m!4334843 () Bool)

(assert (=> d!1121852 m!4334843))

(assert (=> b!3803508 m!4334825))

(assert (=> b!3803508 m!4334433))

(assert (=> b!3803279 d!1121852))

(declare-fun d!1121932 () Bool)

(declare-fun list!14995 (Conc!12399) List!40489)

(assert (=> d!1121932 (= (list!14991 (++!10132 acc!335 (_1!22881 lt!1318791))) (list!14995 (c!661415 (++!10132 acc!335 (_1!22881 lt!1318791)))))))

(declare-fun bs!579665 () Bool)

(assert (= bs!579665 d!1121932))

(declare-fun m!4334845 () Bool)

(assert (=> bs!579665 m!4334845))

(assert (=> b!3803279 d!1121932))

(declare-fun d!1121934 () Bool)

(assert (=> d!1121934 (= (list!14991 (_1!22881 lt!1318804)) (list!14995 (c!661415 (_1!22881 lt!1318804))))))

(declare-fun bs!579666 () Bool)

(assert (= bs!579666 d!1121934))

(declare-fun m!4334847 () Bool)

(assert (=> bs!579666 m!4334847))

(assert (=> b!3803279 d!1121934))

(declare-fun b!3803512 () Bool)

(declare-fun e!2350404 () Bool)

(declare-fun lt!1318899 () tuple2!39494)

(assert (=> b!3803512 (= e!2350404 (not (isEmpty!23766 (_1!22881 lt!1318899))))))

(declare-fun b!3803513 () Bool)

(declare-fun e!2350405 () Bool)

(assert (=> b!3803513 (= e!2350405 e!2350404)))

(declare-fun res!1539909 () Bool)

(assert (=> b!3803513 (= res!1539909 (< (size!30389 (_2!22881 lt!1318899)) (size!30389 input!678)))))

(assert (=> b!3803513 (=> (not res!1539909) (not e!2350404))))

(declare-fun e!2350403 () Bool)

(declare-fun b!3803514 () Bool)

(assert (=> b!3803514 (= e!2350403 (= (list!14992 (_2!22881 lt!1318899)) (_2!22885 (lexList!1571 thiss!11876 rules!1265 (list!14992 input!678)))))))

(declare-fun d!1121936 () Bool)

(assert (=> d!1121936 e!2350403))

(declare-fun res!1539908 () Bool)

(assert (=> d!1121936 (=> (not res!1539908) (not e!2350403))))

(assert (=> d!1121936 (= res!1539908 e!2350405)))

(declare-fun c!661470 () Bool)

(assert (=> d!1121936 (= c!661470 (> (size!30390 (_1!22881 lt!1318899)) 0))))

(declare-fun e!2350402 () tuple2!39494)

(assert (=> d!1121936 (= lt!1318899 e!2350402)))

(declare-fun c!661471 () Bool)

(declare-fun lt!1318900 () Option!8624)

(assert (=> d!1121936 (= c!661471 ((_ is Some!8623) lt!1318900))))

(assert (=> d!1121936 (= lt!1318900 (maxPrefixZipperSequence!1207 thiss!11876 rules!1265 input!678))))

(assert (=> d!1121936 (= (lexRec!825 thiss!11876 rules!1265 input!678) lt!1318899)))

(declare-fun b!3803515 () Bool)

(assert (=> b!3803515 (= e!2350405 (= (list!14992 (_2!22881 lt!1318899)) (list!14992 input!678)))))

(declare-fun b!3803516 () Bool)

(declare-fun res!1539907 () Bool)

(assert (=> b!3803516 (=> (not res!1539907) (not e!2350403))))

(assert (=> b!3803516 (= res!1539907 (= (list!14991 (_1!22881 lt!1318899)) (_1!22885 (lexList!1571 thiss!11876 rules!1265 (list!14992 input!678)))))))

(declare-fun b!3803517 () Bool)

(assert (=> b!3803517 (= e!2350402 (tuple2!39495 (BalanceConc!24393 Empty!12399) input!678))))

(declare-fun b!3803518 () Bool)

(declare-fun lt!1318898 () tuple2!39494)

(assert (=> b!3803518 (= e!2350402 (tuple2!39495 (prepend!1356 (_1!22881 lt!1318898) (_1!22882 (v!38847 lt!1318900))) (_2!22881 lt!1318898)))))

(assert (=> b!3803518 (= lt!1318898 (lexRec!825 thiss!11876 rules!1265 (_2!22882 (v!38847 lt!1318900))))))

(assert (= (and d!1121936 c!661471) b!3803518))

(assert (= (and d!1121936 (not c!661471)) b!3803517))

(assert (= (and d!1121936 c!661470) b!3803513))

(assert (= (and d!1121936 (not c!661470)) b!3803515))

(assert (= (and b!3803513 res!1539909) b!3803512))

(assert (= (and d!1121936 res!1539908) b!3803516))

(assert (= (and b!3803516 res!1539907) b!3803514))

(declare-fun m!4334849 () Bool)

(assert (=> b!3803514 m!4334849))

(assert (=> b!3803514 m!4334435))

(assert (=> b!3803514 m!4334435))

(declare-fun m!4334851 () Bool)

(assert (=> b!3803514 m!4334851))

(declare-fun m!4334853 () Bool)

(assert (=> b!3803512 m!4334853))

(declare-fun m!4334855 () Bool)

(assert (=> b!3803513 m!4334855))

(declare-fun m!4334857 () Bool)

(assert (=> b!3803513 m!4334857))

(declare-fun m!4334859 () Bool)

(assert (=> b!3803516 m!4334859))

(assert (=> b!3803516 m!4334435))

(assert (=> b!3803516 m!4334435))

(assert (=> b!3803516 m!4334851))

(declare-fun m!4334861 () Bool)

(assert (=> b!3803518 m!4334861))

(declare-fun m!4334863 () Bool)

(assert (=> b!3803518 m!4334863))

(declare-fun m!4334865 () Bool)

(assert (=> d!1121936 m!4334865))

(assert (=> d!1121936 m!4334411))

(assert (=> b!3803515 m!4334849))

(assert (=> b!3803515 m!4334435))

(assert (=> b!3803279 d!1121936))

(declare-fun d!1121938 () Bool)

(assert (=> d!1121938 (= (inv!54320 (tag!7072 (h!45784 rules!1265))) (= (mod (str.len (value!197648 (tag!7072 (h!45784 rules!1265)))) 2) 0))))

(assert (=> b!3803278 d!1121938))

(declare-fun d!1121940 () Bool)

(declare-fun res!1539912 () Bool)

(declare-fun e!2350408 () Bool)

(assert (=> d!1121940 (=> (not res!1539912) (not e!2350408))))

(declare-fun semiInverseModEq!2659 (Int Int) Bool)

(assert (=> d!1121940 (= res!1539912 (semiInverseModEq!2659 (toChars!8455 (transformation!6212 (h!45784 rules!1265))) (toValue!8596 (transformation!6212 (h!45784 rules!1265)))))))

(assert (=> d!1121940 (= (inv!54326 (transformation!6212 (h!45784 rules!1265))) e!2350408)))

(declare-fun b!3803521 () Bool)

(declare-fun equivClasses!2558 (Int Int) Bool)

(assert (=> b!3803521 (= e!2350408 (equivClasses!2558 (toChars!8455 (transformation!6212 (h!45784 rules!1265))) (toValue!8596 (transformation!6212 (h!45784 rules!1265)))))))

(assert (= (and d!1121940 res!1539912) b!3803521))

(declare-fun m!4334867 () Bool)

(assert (=> d!1121940 m!4334867))

(declare-fun m!4334869 () Bool)

(assert (=> b!3803521 m!4334869))

(assert (=> b!3803278 d!1121940))

(declare-fun b!3803532 () Bool)

(declare-fun res!1539918 () Bool)

(declare-fun e!2350413 () Bool)

(assert (=> b!3803532 (=> (not res!1539918) (not e!2350413))))

(declare-fun lt!1318903 () List!40489)

(declare-fun size!30391 (List!40489) Int)

(assert (=> b!3803532 (= res!1539918 (= (size!30391 lt!1318903) (+ (size!30391 lt!1318801) (size!30391 (++!10134 lt!1318784 lt!1318802)))))))

(declare-fun d!1121942 () Bool)

(assert (=> d!1121942 e!2350413))

(declare-fun res!1539917 () Bool)

(assert (=> d!1121942 (=> (not res!1539917) (not e!2350413))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5955 (List!40489) (InoxSet Token!11562))

(assert (=> d!1121942 (= res!1539917 (= (content!5955 lt!1318903) ((_ map or) (content!5955 lt!1318801) (content!5955 (++!10134 lt!1318784 lt!1318802)))))))

(declare-fun e!2350414 () List!40489)

(assert (=> d!1121942 (= lt!1318903 e!2350414)))

(declare-fun c!661474 () Bool)

(assert (=> d!1121942 (= c!661474 ((_ is Nil!40365) lt!1318801))))

(assert (=> d!1121942 (= (++!10134 lt!1318801 (++!10134 lt!1318784 lt!1318802)) lt!1318903)))

(declare-fun b!3803530 () Bool)

(assert (=> b!3803530 (= e!2350414 (++!10134 lt!1318784 lt!1318802))))

(declare-fun b!3803531 () Bool)

(assert (=> b!3803531 (= e!2350414 (Cons!40365 (h!45785 lt!1318801) (++!10134 (t!307218 lt!1318801) (++!10134 lt!1318784 lt!1318802))))))

(declare-fun b!3803533 () Bool)

(assert (=> b!3803533 (= e!2350413 (or (not (= (++!10134 lt!1318784 lt!1318802) Nil!40365)) (= lt!1318903 lt!1318801)))))

(assert (= (and d!1121942 c!661474) b!3803530))

(assert (= (and d!1121942 (not c!661474)) b!3803531))

(assert (= (and d!1121942 res!1539917) b!3803532))

(assert (= (and b!3803532 res!1539918) b!3803533))

(declare-fun m!4334871 () Bool)

(assert (=> b!3803532 m!4334871))

(declare-fun m!4334873 () Bool)

(assert (=> b!3803532 m!4334873))

(assert (=> b!3803532 m!4334405))

(declare-fun m!4334875 () Bool)

(assert (=> b!3803532 m!4334875))

(declare-fun m!4334877 () Bool)

(assert (=> d!1121942 m!4334877))

(declare-fun m!4334879 () Bool)

(assert (=> d!1121942 m!4334879))

(assert (=> d!1121942 m!4334405))

(declare-fun m!4334881 () Bool)

(assert (=> d!1121942 m!4334881))

(assert (=> b!3803531 m!4334405))

(declare-fun m!4334883 () Bool)

(assert (=> b!3803531 m!4334883))

(assert (=> b!3803289 d!1121942))

(declare-fun d!1121944 () Bool)

(assert (=> d!1121944 (= (++!10133 (++!10133 lt!1318796 lt!1318787) lt!1318786) (++!10133 lt!1318796 (++!10133 lt!1318787 lt!1318786)))))

(declare-fun lt!1318906 () Unit!58104)

(declare-fun choose!22428 (List!40487 List!40487 List!40487) Unit!58104)

(assert (=> d!1121944 (= lt!1318906 (choose!22428 lt!1318796 lt!1318787 lt!1318786))))

(assert (=> d!1121944 (= (lemmaConcatAssociativity!2176 lt!1318796 lt!1318787 lt!1318786) lt!1318906)))

(declare-fun bs!579667 () Bool)

(assert (= bs!579667 d!1121944))

(assert (=> bs!579667 m!4334385))

(assert (=> bs!579667 m!4334399))

(declare-fun m!4334885 () Bool)

(assert (=> bs!579667 m!4334885))

(assert (=> bs!579667 m!4334385))

(assert (=> bs!579667 m!4334415))

(assert (=> bs!579667 m!4334399))

(assert (=> bs!579667 m!4334413))

(assert (=> b!3803289 d!1121944))

(declare-fun d!1121946 () Bool)

(declare-fun e!2350417 () Bool)

(assert (=> d!1121946 e!2350417))

(declare-fun res!1539921 () Bool)

(assert (=> d!1121946 (=> (not res!1539921) (not e!2350417))))

(declare-fun append!1062 (Conc!12399 Token!11562) Conc!12399)

(assert (=> d!1121946 (= res!1539921 (isBalanced!3576 (append!1062 (c!661415 acc!335) (_1!22882 (v!38847 lt!1318792)))))))

(declare-fun lt!1318909 () BalanceConc!24392)

(assert (=> d!1121946 (= lt!1318909 (BalanceConc!24393 (append!1062 (c!661415 acc!335) (_1!22882 (v!38847 lt!1318792)))))))

(assert (=> d!1121946 (= (append!1060 acc!335 (_1!22882 (v!38847 lt!1318792))) lt!1318909)))

(declare-fun b!3803536 () Bool)

(declare-fun $colon+!273 (List!40489 Token!11562) List!40489)

(assert (=> b!3803536 (= e!2350417 (= (list!14991 lt!1318909) ($colon+!273 (list!14991 acc!335) (_1!22882 (v!38847 lt!1318792)))))))

(assert (= (and d!1121946 res!1539921) b!3803536))

(declare-fun m!4334887 () Bool)

(assert (=> d!1121946 m!4334887))

(assert (=> d!1121946 m!4334887))

(declare-fun m!4334889 () Bool)

(assert (=> d!1121946 m!4334889))

(declare-fun m!4334891 () Bool)

(assert (=> b!3803536 m!4334891))

(assert (=> b!3803536 m!4334441))

(assert (=> b!3803536 m!4334441))

(declare-fun m!4334893 () Bool)

(assert (=> b!3803536 m!4334893))

(assert (=> b!3803289 d!1121946))

(declare-fun e!2350423 () List!40487)

(declare-fun b!3803546 () Bool)

(assert (=> b!3803546 (= e!2350423 (Cons!40363 (h!45783 lt!1318796) (++!10133 (t!307216 lt!1318796) (++!10133 lt!1318787 lt!1318786))))))

(declare-fun e!2350422 () Bool)

(declare-fun lt!1318912 () List!40487)

(declare-fun b!3803548 () Bool)

(assert (=> b!3803548 (= e!2350422 (or (not (= (++!10133 lt!1318787 lt!1318786) Nil!40363)) (= lt!1318912 lt!1318796)))))

(declare-fun d!1121948 () Bool)

(assert (=> d!1121948 e!2350422))

(declare-fun res!1539926 () Bool)

(assert (=> d!1121948 (=> (not res!1539926) (not e!2350422))))

(declare-fun content!5956 (List!40487) (InoxSet C!22420))

(assert (=> d!1121948 (= res!1539926 (= (content!5956 lt!1318912) ((_ map or) (content!5956 lt!1318796) (content!5956 (++!10133 lt!1318787 lt!1318786)))))))

(assert (=> d!1121948 (= lt!1318912 e!2350423)))

(declare-fun c!661478 () Bool)

(assert (=> d!1121948 (= c!661478 ((_ is Nil!40363) lt!1318796))))

(assert (=> d!1121948 (= (++!10133 lt!1318796 (++!10133 lt!1318787 lt!1318786)) lt!1318912)))

(declare-fun b!3803545 () Bool)

(assert (=> b!3803545 (= e!2350423 (++!10133 lt!1318787 lt!1318786))))

(declare-fun b!3803547 () Bool)

(declare-fun res!1539927 () Bool)

(assert (=> b!3803547 (=> (not res!1539927) (not e!2350422))))

(declare-fun size!30392 (List!40487) Int)

(assert (=> b!3803547 (= res!1539927 (= (size!30392 lt!1318912) (+ (size!30392 lt!1318796) (size!30392 (++!10133 lt!1318787 lt!1318786)))))))

(assert (= (and d!1121948 c!661478) b!3803545))

(assert (= (and d!1121948 (not c!661478)) b!3803546))

(assert (= (and d!1121948 res!1539926) b!3803547))

(assert (= (and b!3803547 res!1539927) b!3803548))

(assert (=> b!3803546 m!4334385))

(declare-fun m!4334895 () Bool)

(assert (=> b!3803546 m!4334895))

(declare-fun m!4334897 () Bool)

(assert (=> d!1121948 m!4334897))

(declare-fun m!4334899 () Bool)

(assert (=> d!1121948 m!4334899))

(assert (=> d!1121948 m!4334385))

(declare-fun m!4334901 () Bool)

(assert (=> d!1121948 m!4334901))

(declare-fun m!4334903 () Bool)

(assert (=> b!3803547 m!4334903))

(declare-fun m!4334905 () Bool)

(assert (=> b!3803547 m!4334905))

(assert (=> b!3803547 m!4334385))

(declare-fun m!4334907 () Bool)

(assert (=> b!3803547 m!4334907))

(assert (=> b!3803289 d!1121948))

(declare-fun d!1121950 () Bool)

(declare-fun list!14996 (Conc!12398) List!40487)

(assert (=> d!1121950 (= (list!14992 (charsOf!4050 (_1!22882 (v!38847 lt!1318792)))) (list!14996 (c!661414 (charsOf!4050 (_1!22882 (v!38847 lt!1318792))))))))

(declare-fun bs!579668 () Bool)

(assert (= bs!579668 d!1121950))

(declare-fun m!4334909 () Bool)

(assert (=> bs!579668 m!4334909))

(assert (=> b!3803289 d!1121950))

(declare-fun e!2350425 () List!40487)

(declare-fun b!3803550 () Bool)

(assert (=> b!3803550 (= e!2350425 (Cons!40363 (h!45783 (++!10133 lt!1318796 lt!1318787)) (++!10133 (t!307216 (++!10133 lt!1318796 lt!1318787)) lt!1318786)))))

(declare-fun b!3803552 () Bool)

(declare-fun e!2350424 () Bool)

(declare-fun lt!1318913 () List!40487)

(assert (=> b!3803552 (= e!2350424 (or (not (= lt!1318786 Nil!40363)) (= lt!1318913 (++!10133 lt!1318796 lt!1318787))))))

(declare-fun d!1121952 () Bool)

(assert (=> d!1121952 e!2350424))

(declare-fun res!1539928 () Bool)

(assert (=> d!1121952 (=> (not res!1539928) (not e!2350424))))

(assert (=> d!1121952 (= res!1539928 (= (content!5956 lt!1318913) ((_ map or) (content!5956 (++!10133 lt!1318796 lt!1318787)) (content!5956 lt!1318786))))))

(assert (=> d!1121952 (= lt!1318913 e!2350425)))

(declare-fun c!661479 () Bool)

(assert (=> d!1121952 (= c!661479 ((_ is Nil!40363) (++!10133 lt!1318796 lt!1318787)))))

(assert (=> d!1121952 (= (++!10133 (++!10133 lt!1318796 lt!1318787) lt!1318786) lt!1318913)))

(declare-fun b!3803549 () Bool)

(assert (=> b!3803549 (= e!2350425 lt!1318786)))

(declare-fun b!3803551 () Bool)

(declare-fun res!1539929 () Bool)

(assert (=> b!3803551 (=> (not res!1539929) (not e!2350424))))

(assert (=> b!3803551 (= res!1539929 (= (size!30392 lt!1318913) (+ (size!30392 (++!10133 lt!1318796 lt!1318787)) (size!30392 lt!1318786))))))

(assert (= (and d!1121952 c!661479) b!3803549))

(assert (= (and d!1121952 (not c!661479)) b!3803550))

(assert (= (and d!1121952 res!1539928) b!3803551))

(assert (= (and b!3803551 res!1539929) b!3803552))

(declare-fun m!4334911 () Bool)

(assert (=> b!3803550 m!4334911))

(declare-fun m!4334913 () Bool)

(assert (=> d!1121952 m!4334913))

(assert (=> d!1121952 m!4334399))

(declare-fun m!4334915 () Bool)

(assert (=> d!1121952 m!4334915))

(declare-fun m!4334917 () Bool)

(assert (=> d!1121952 m!4334917))

(declare-fun m!4334919 () Bool)

(assert (=> b!3803551 m!4334919))

(assert (=> b!3803551 m!4334399))

(declare-fun m!4334921 () Bool)

(assert (=> b!3803551 m!4334921))

(declare-fun m!4334923 () Bool)

(assert (=> b!3803551 m!4334923))

(assert (=> b!3803289 d!1121952))

(declare-fun b!3803555 () Bool)

(declare-fun res!1539931 () Bool)

(declare-fun e!2350426 () Bool)

(assert (=> b!3803555 (=> (not res!1539931) (not e!2350426))))

(declare-fun lt!1318914 () List!40489)

(assert (=> b!3803555 (= res!1539931 (= (size!30391 lt!1318914) (+ (size!30391 lt!1318784) (size!30391 lt!1318802))))))

(declare-fun d!1121954 () Bool)

(assert (=> d!1121954 e!2350426))

(declare-fun res!1539930 () Bool)

(assert (=> d!1121954 (=> (not res!1539930) (not e!2350426))))

(assert (=> d!1121954 (= res!1539930 (= (content!5955 lt!1318914) ((_ map or) (content!5955 lt!1318784) (content!5955 lt!1318802))))))

(declare-fun e!2350427 () List!40489)

(assert (=> d!1121954 (= lt!1318914 e!2350427)))

(declare-fun c!661480 () Bool)

(assert (=> d!1121954 (= c!661480 ((_ is Nil!40365) lt!1318784))))

(assert (=> d!1121954 (= (++!10134 lt!1318784 lt!1318802) lt!1318914)))

(declare-fun b!3803553 () Bool)

(assert (=> b!3803553 (= e!2350427 lt!1318802)))

(declare-fun b!3803554 () Bool)

(assert (=> b!3803554 (= e!2350427 (Cons!40365 (h!45785 lt!1318784) (++!10134 (t!307218 lt!1318784) lt!1318802)))))

(declare-fun b!3803556 () Bool)

(assert (=> b!3803556 (= e!2350426 (or (not (= lt!1318802 Nil!40365)) (= lt!1318914 lt!1318784)))))

(assert (= (and d!1121954 c!661480) b!3803553))

(assert (= (and d!1121954 (not c!661480)) b!3803554))

(assert (= (and d!1121954 res!1539930) b!3803555))

(assert (= (and b!3803555 res!1539931) b!3803556))

(declare-fun m!4334925 () Bool)

(assert (=> b!3803555 m!4334925))

(declare-fun m!4334927 () Bool)

(assert (=> b!3803555 m!4334927))

(declare-fun m!4334929 () Bool)

(assert (=> b!3803555 m!4334929))

(declare-fun m!4334931 () Bool)

(assert (=> d!1121954 m!4334931))

(declare-fun m!4334933 () Bool)

(assert (=> d!1121954 m!4334933))

(declare-fun m!4334935 () Bool)

(assert (=> d!1121954 m!4334935))

(declare-fun m!4334937 () Bool)

(assert (=> b!3803554 m!4334937))

(assert (=> b!3803289 d!1121954))

(declare-fun d!1121956 () Bool)

(assert (=> d!1121956 (= (list!14991 (append!1060 acc!335 (_1!22882 (v!38847 lt!1318792)))) (list!14995 (c!661415 (append!1060 acc!335 (_1!22882 (v!38847 lt!1318792))))))))

(declare-fun bs!579669 () Bool)

(assert (= bs!579669 d!1121956))

(declare-fun m!4334939 () Bool)

(assert (=> bs!579669 m!4334939))

(assert (=> b!3803289 d!1121956))

(declare-fun d!1121958 () Bool)

(assert (=> d!1121958 (= (list!14991 (_1!22881 lt!1318789)) (list!14995 (c!661415 (_1!22881 lt!1318789))))))

(declare-fun bs!579670 () Bool)

(assert (= bs!579670 d!1121958))

(declare-fun m!4334941 () Bool)

(assert (=> bs!579670 m!4334941))

(assert (=> b!3803289 d!1121958))

(declare-fun b!3803558 () Bool)

(declare-fun e!2350429 () List!40487)

(assert (=> b!3803558 (= e!2350429 (Cons!40363 (h!45783 lt!1318787) (++!10133 (t!307216 lt!1318787) lt!1318786)))))

(declare-fun lt!1318915 () List!40487)

(declare-fun e!2350428 () Bool)

(declare-fun b!3803560 () Bool)

(assert (=> b!3803560 (= e!2350428 (or (not (= lt!1318786 Nil!40363)) (= lt!1318915 lt!1318787)))))

(declare-fun d!1121960 () Bool)

(assert (=> d!1121960 e!2350428))

(declare-fun res!1539932 () Bool)

(assert (=> d!1121960 (=> (not res!1539932) (not e!2350428))))

(assert (=> d!1121960 (= res!1539932 (= (content!5956 lt!1318915) ((_ map or) (content!5956 lt!1318787) (content!5956 lt!1318786))))))

(assert (=> d!1121960 (= lt!1318915 e!2350429)))

(declare-fun c!661481 () Bool)

(assert (=> d!1121960 (= c!661481 ((_ is Nil!40363) lt!1318787))))

(assert (=> d!1121960 (= (++!10133 lt!1318787 lt!1318786) lt!1318915)))

(declare-fun b!3803557 () Bool)

(assert (=> b!3803557 (= e!2350429 lt!1318786)))

(declare-fun b!3803559 () Bool)

(declare-fun res!1539933 () Bool)

(assert (=> b!3803559 (=> (not res!1539933) (not e!2350428))))

(assert (=> b!3803559 (= res!1539933 (= (size!30392 lt!1318915) (+ (size!30392 lt!1318787) (size!30392 lt!1318786))))))

(assert (= (and d!1121960 c!661481) b!3803557))

(assert (= (and d!1121960 (not c!661481)) b!3803558))

(assert (= (and d!1121960 res!1539932) b!3803559))

(assert (= (and b!3803559 res!1539933) b!3803560))

(declare-fun m!4334943 () Bool)

(assert (=> b!3803558 m!4334943))

(declare-fun m!4334945 () Bool)

(assert (=> d!1121960 m!4334945))

(declare-fun m!4334947 () Bool)

(assert (=> d!1121960 m!4334947))

(assert (=> d!1121960 m!4334917))

(declare-fun m!4334949 () Bool)

(assert (=> b!3803559 m!4334949))

(declare-fun m!4334951 () Bool)

(assert (=> b!3803559 m!4334951))

(assert (=> b!3803559 m!4334923))

(assert (=> b!3803289 d!1121960))

(declare-fun b!3803654 () Bool)

(declare-fun e!2350496 () Bool)

(declare-fun e!2350491 () Bool)

(assert (=> b!3803654 (= e!2350496 e!2350491)))

(declare-fun res!1539969 () Bool)

(assert (=> b!3803654 (=> (not res!1539969) (not e!2350491))))

(declare-fun lt!1318954 () Option!8624)

(declare-fun get!13382 (Option!8624) tuple2!39496)

(declare-datatypes ((tuple2!39504 0))(
  ( (tuple2!39505 (_1!22886 Token!11562) (_2!22886 List!40487)) )
))
(declare-datatypes ((Option!8626 0))(
  ( (None!8625) (Some!8625 (v!38853 tuple2!39504)) )
))
(declare-fun get!13383 (Option!8626) tuple2!39504)

(declare-fun maxPrefixZipper!545 (LexerInterface!5801 List!40488 List!40487) Option!8626)

(assert (=> b!3803654 (= res!1539969 (= (_1!22882 (get!13382 lt!1318954)) (_1!22886 (get!13383 (maxPrefixZipper!545 thiss!11876 rules!1265 (list!14992 input!678))))))))

(declare-fun call!279161 () Option!8624)

(declare-fun bm!279156 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!560 (LexerInterface!5801 Rule!12224 BalanceConc!24390) Option!8624)

(assert (=> bm!279156 (= call!279161 (maxPrefixOneRuleZipperSequence!560 thiss!11876 (h!45784 rules!1265) input!678))))

(declare-fun b!3803655 () Bool)

(declare-fun e!2350495 () Bool)

(declare-fun e!2350493 () Bool)

(assert (=> b!3803655 (= e!2350495 e!2350493)))

(declare-fun res!1539965 () Bool)

(assert (=> b!3803655 (=> res!1539965 e!2350493)))

(declare-fun isDefined!6786 (Option!8624) Bool)

(assert (=> b!3803655 (= res!1539965 (not (isDefined!6786 lt!1318954)))))

(declare-fun b!3803656 () Bool)

(declare-fun e!2350494 () Option!8624)

(declare-fun lt!1318957 () Option!8624)

(declare-fun lt!1318956 () Option!8624)

(assert (=> b!3803656 (= e!2350494 (ite (and ((_ is None!8623) lt!1318957) ((_ is None!8623) lt!1318956)) None!8623 (ite ((_ is None!8623) lt!1318956) lt!1318957 (ite ((_ is None!8623) lt!1318957) lt!1318956 (ite (>= (size!30384 (_1!22882 (v!38847 lt!1318957))) (size!30384 (_1!22882 (v!38847 lt!1318956)))) lt!1318957 lt!1318956)))))))

(assert (=> b!3803656 (= lt!1318957 call!279161)))

(assert (=> b!3803656 (= lt!1318956 (maxPrefixZipperSequence!1207 thiss!11876 (t!307217 rules!1265) input!678))))

(declare-fun b!3803657 () Bool)

(declare-fun res!1539964 () Bool)

(assert (=> b!3803657 (=> (not res!1539964) (not e!2350495))))

(assert (=> b!3803657 (= res!1539964 e!2350496)))

(declare-fun res!1539967 () Bool)

(assert (=> b!3803657 (=> res!1539967 e!2350496)))

(assert (=> b!3803657 (= res!1539967 (not (isDefined!6786 lt!1318954)))))

(declare-fun d!1121962 () Bool)

(assert (=> d!1121962 e!2350495))

(declare-fun res!1539968 () Bool)

(assert (=> d!1121962 (=> (not res!1539968) (not e!2350495))))

(declare-fun isDefined!6787 (Option!8626) Bool)

(assert (=> d!1121962 (= res!1539968 (= (isDefined!6786 lt!1318954) (isDefined!6787 (maxPrefixZipper!545 thiss!11876 rules!1265 (list!14992 input!678)))))))

(assert (=> d!1121962 (= lt!1318954 e!2350494)))

(declare-fun c!661487 () Bool)

(assert (=> d!1121962 (= c!661487 (and ((_ is Cons!40364) rules!1265) ((_ is Nil!40364) (t!307217 rules!1265))))))

(declare-fun lt!1318951 () Unit!58104)

(declare-fun lt!1318955 () Unit!58104)

(assert (=> d!1121962 (= lt!1318951 lt!1318955)))

(declare-fun lt!1318953 () List!40487)

(declare-fun lt!1318952 () List!40487)

(declare-fun isPrefix!3321 (List!40487 List!40487) Bool)

(assert (=> d!1121962 (isPrefix!3321 lt!1318953 lt!1318952)))

(declare-fun lemmaIsPrefixRefl!2106 (List!40487 List!40487) Unit!58104)

(assert (=> d!1121962 (= lt!1318955 (lemmaIsPrefixRefl!2106 lt!1318953 lt!1318952))))

(assert (=> d!1121962 (= lt!1318952 (list!14992 input!678))))

(assert (=> d!1121962 (= lt!1318953 (list!14992 input!678))))

(declare-fun rulesValidInductive!2180 (LexerInterface!5801 List!40488) Bool)

(assert (=> d!1121962 (rulesValidInductive!2180 thiss!11876 rules!1265)))

(assert (=> d!1121962 (= (maxPrefixZipperSequence!1207 thiss!11876 rules!1265 input!678) lt!1318954)))

(declare-fun b!3803658 () Bool)

(assert (=> b!3803658 (= e!2350494 call!279161)))

(declare-fun b!3803659 () Bool)

(declare-fun e!2350492 () Bool)

(assert (=> b!3803659 (= e!2350493 e!2350492)))

(declare-fun res!1539966 () Bool)

(assert (=> b!3803659 (=> (not res!1539966) (not e!2350492))))

(declare-fun maxPrefix!3113 (LexerInterface!5801 List!40488 List!40487) Option!8626)

(assert (=> b!3803659 (= res!1539966 (= (_1!22882 (get!13382 lt!1318954)) (_1!22886 (get!13383 (maxPrefix!3113 thiss!11876 rules!1265 (list!14992 input!678))))))))

(declare-fun b!3803660 () Bool)

(assert (=> b!3803660 (= e!2350492 (= (list!14992 (_2!22882 (get!13382 lt!1318954))) (_2!22886 (get!13383 (maxPrefix!3113 thiss!11876 rules!1265 (list!14992 input!678))))))))

(declare-fun b!3803661 () Bool)

(assert (=> b!3803661 (= e!2350491 (= (list!14992 (_2!22882 (get!13382 lt!1318954))) (_2!22886 (get!13383 (maxPrefixZipper!545 thiss!11876 rules!1265 (list!14992 input!678))))))))

(assert (= (and d!1121962 c!661487) b!3803658))

(assert (= (and d!1121962 (not c!661487)) b!3803656))

(assert (= (or b!3803658 b!3803656) bm!279156))

(assert (= (and d!1121962 res!1539968) b!3803657))

(assert (= (and b!3803657 (not res!1539967)) b!3803654))

(assert (= (and b!3803654 res!1539969) b!3803661))

(assert (= (and b!3803657 res!1539964) b!3803655))

(assert (= (and b!3803655 (not res!1539965)) b!3803659))

(assert (= (and b!3803659 res!1539966) b!3803660))

(declare-fun m!4335003 () Bool)

(assert (=> bm!279156 m!4335003))

(declare-fun m!4335005 () Bool)

(assert (=> b!3803661 m!4335005))

(declare-fun m!4335007 () Bool)

(assert (=> b!3803661 m!4335007))

(declare-fun m!4335009 () Bool)

(assert (=> b!3803661 m!4335009))

(assert (=> b!3803661 m!4334435))

(assert (=> b!3803661 m!4335005))

(assert (=> b!3803661 m!4334435))

(declare-fun m!4335011 () Bool)

(assert (=> b!3803661 m!4335011))

(declare-fun m!4335013 () Bool)

(assert (=> b!3803657 m!4335013))

(assert (=> b!3803660 m!4335009))

(assert (=> b!3803660 m!4334435))

(declare-fun m!4335015 () Bool)

(assert (=> b!3803660 m!4335015))

(assert (=> b!3803660 m!4335015))

(declare-fun m!4335017 () Bool)

(assert (=> b!3803660 m!4335017))

(assert (=> b!3803660 m!4334435))

(assert (=> b!3803660 m!4335011))

(declare-fun m!4335019 () Bool)

(assert (=> b!3803656 m!4335019))

(assert (=> b!3803654 m!4335011))

(assert (=> b!3803654 m!4334435))

(assert (=> b!3803654 m!4334435))

(assert (=> b!3803654 m!4335005))

(assert (=> b!3803654 m!4335005))

(assert (=> b!3803654 m!4335007))

(assert (=> b!3803659 m!4335011))

(assert (=> b!3803659 m!4334435))

(assert (=> b!3803659 m!4334435))

(assert (=> b!3803659 m!4335015))

(assert (=> b!3803659 m!4335015))

(assert (=> b!3803659 m!4335017))

(assert (=> b!3803655 m!4335013))

(assert (=> d!1121962 m!4334435))

(assert (=> d!1121962 m!4335013))

(declare-fun m!4335021 () Bool)

(assert (=> d!1121962 m!4335021))

(declare-fun m!4335023 () Bool)

(assert (=> d!1121962 m!4335023))

(assert (=> d!1121962 m!4335005))

(declare-fun m!4335025 () Bool)

(assert (=> d!1121962 m!4335025))

(declare-fun m!4335027 () Bool)

(assert (=> d!1121962 m!4335027))

(assert (=> d!1121962 m!4334435))

(assert (=> d!1121962 m!4335005))

(assert (=> b!3803289 d!1121962))

(declare-fun d!1121972 () Bool)

(declare-fun lt!1318960 () BalanceConc!24390)

(assert (=> d!1121972 (= (list!14992 lt!1318960) (originalCharacters!6812 (_1!22882 (v!38847 lt!1318792))))))

(declare-fun dynLambda!17442 (Int TokenValue!6442) BalanceConc!24390)

(assert (=> d!1121972 (= lt!1318960 (dynLambda!17442 (toChars!8455 (transformation!6212 (rule!9008 (_1!22882 (v!38847 lt!1318792))))) (value!197649 (_1!22882 (v!38847 lt!1318792)))))))

(assert (=> d!1121972 (= (charsOf!4050 (_1!22882 (v!38847 lt!1318792))) lt!1318960)))

(declare-fun b_lambda!111413 () Bool)

(assert (=> (not b_lambda!111413) (not d!1121972)))

(declare-fun tb!218177 () Bool)

(declare-fun t!307224 () Bool)

(assert (=> (and b!3803282 (= (toChars!8455 (transformation!6212 (h!45784 rules!1265))) (toChars!8455 (transformation!6212 (rule!9008 (_1!22882 (v!38847 lt!1318792)))))) t!307224) tb!218177))

(declare-fun b!3803666 () Bool)

(declare-fun e!2350499 () Bool)

(declare-fun tp!1155421 () Bool)

(assert (=> b!3803666 (= e!2350499 (and (inv!54330 (c!661414 (dynLambda!17442 (toChars!8455 (transformation!6212 (rule!9008 (_1!22882 (v!38847 lt!1318792))))) (value!197649 (_1!22882 (v!38847 lt!1318792)))))) tp!1155421))))

(declare-fun result!266124 () Bool)

(assert (=> tb!218177 (= result!266124 (and (inv!54328 (dynLambda!17442 (toChars!8455 (transformation!6212 (rule!9008 (_1!22882 (v!38847 lt!1318792))))) (value!197649 (_1!22882 (v!38847 lt!1318792))))) e!2350499))))

(assert (= tb!218177 b!3803666))

(declare-fun m!4335029 () Bool)

(assert (=> b!3803666 m!4335029))

(declare-fun m!4335031 () Bool)

(assert (=> tb!218177 m!4335031))

(assert (=> d!1121972 t!307224))

(declare-fun b_and!282749 () Bool)

(assert (= b_and!282741 (and (=> t!307224 result!266124) b_and!282749)))

(declare-fun m!4335033 () Bool)

(assert (=> d!1121972 m!4335033))

(declare-fun m!4335035 () Bool)

(assert (=> d!1121972 m!4335035))

(assert (=> b!3803289 d!1121972))

(declare-fun d!1121974 () Bool)

(assert (=> d!1121974 (= (list!14992 (_2!22882 (v!38847 lt!1318792))) (list!14996 (c!661414 (_2!22882 (v!38847 lt!1318792)))))))

(declare-fun bs!579675 () Bool)

(assert (= bs!579675 d!1121974))

(declare-fun m!4335037 () Bool)

(assert (=> bs!579675 m!4335037))

(assert (=> b!3803289 d!1121974))

(declare-fun b!3803669 () Bool)

(declare-fun res!1539971 () Bool)

(declare-fun e!2350500 () Bool)

(assert (=> b!3803669 (=> (not res!1539971) (not e!2350500))))

(declare-fun lt!1318961 () List!40489)

(assert (=> b!3803669 (= res!1539971 (= (size!30391 lt!1318961) (+ (size!30391 lt!1318801) (size!30391 lt!1318784))))))

(declare-fun d!1121976 () Bool)

(assert (=> d!1121976 e!2350500))

(declare-fun res!1539970 () Bool)

(assert (=> d!1121976 (=> (not res!1539970) (not e!2350500))))

(assert (=> d!1121976 (= res!1539970 (= (content!5955 lt!1318961) ((_ map or) (content!5955 lt!1318801) (content!5955 lt!1318784))))))

(declare-fun e!2350501 () List!40489)

(assert (=> d!1121976 (= lt!1318961 e!2350501)))

(declare-fun c!661488 () Bool)

(assert (=> d!1121976 (= c!661488 ((_ is Nil!40365) lt!1318801))))

(assert (=> d!1121976 (= (++!10134 lt!1318801 lt!1318784) lt!1318961)))

(declare-fun b!3803667 () Bool)

(assert (=> b!3803667 (= e!2350501 lt!1318784)))

(declare-fun b!3803668 () Bool)

(assert (=> b!3803668 (= e!2350501 (Cons!40365 (h!45785 lt!1318801) (++!10134 (t!307218 lt!1318801) lt!1318784)))))

(declare-fun b!3803670 () Bool)

(assert (=> b!3803670 (= e!2350500 (or (not (= lt!1318784 Nil!40365)) (= lt!1318961 lt!1318801)))))

(assert (= (and d!1121976 c!661488) b!3803667))

(assert (= (and d!1121976 (not c!661488)) b!3803668))

(assert (= (and d!1121976 res!1539970) b!3803669))

(assert (= (and b!3803669 res!1539971) b!3803670))

(declare-fun m!4335039 () Bool)

(assert (=> b!3803669 m!4335039))

(assert (=> b!3803669 m!4334873))

(assert (=> b!3803669 m!4334927))

(declare-fun m!4335041 () Bool)

(assert (=> d!1121976 m!4335041))

(assert (=> d!1121976 m!4334879))

(assert (=> d!1121976 m!4334933))

(declare-fun m!4335043 () Bool)

(assert (=> b!3803668 m!4335043))

(assert (=> b!3803289 d!1121976))

(declare-fun b!3803671 () Bool)

(declare-fun e!2350504 () Bool)

(declare-fun lt!1318963 () tuple2!39494)

(assert (=> b!3803671 (= e!2350504 (not (isEmpty!23766 (_1!22881 lt!1318963))))))

(declare-fun b!3803672 () Bool)

(declare-fun e!2350505 () Bool)

(assert (=> b!3803672 (= e!2350505 e!2350504)))

(declare-fun res!1539974 () Bool)

(assert (=> b!3803672 (= res!1539974 (< (size!30389 (_2!22881 lt!1318963)) (size!30389 (_2!22882 (v!38847 lt!1318792)))))))

(assert (=> b!3803672 (=> (not res!1539974) (not e!2350504))))

(declare-fun b!3803673 () Bool)

(declare-fun e!2350503 () Bool)

(assert (=> b!3803673 (= e!2350503 (= (list!14992 (_2!22881 lt!1318963)) (_2!22885 (lexList!1571 thiss!11876 rules!1265 (list!14992 (_2!22882 (v!38847 lt!1318792)))))))))

(declare-fun d!1121978 () Bool)

(assert (=> d!1121978 e!2350503))

(declare-fun res!1539973 () Bool)

(assert (=> d!1121978 (=> (not res!1539973) (not e!2350503))))

(assert (=> d!1121978 (= res!1539973 e!2350505)))

(declare-fun c!661489 () Bool)

(assert (=> d!1121978 (= c!661489 (> (size!30390 (_1!22881 lt!1318963)) 0))))

(declare-fun e!2350502 () tuple2!39494)

(assert (=> d!1121978 (= lt!1318963 e!2350502)))

(declare-fun c!661490 () Bool)

(declare-fun lt!1318964 () Option!8624)

(assert (=> d!1121978 (= c!661490 ((_ is Some!8623) lt!1318964))))

(assert (=> d!1121978 (= lt!1318964 (maxPrefixZipperSequence!1207 thiss!11876 rules!1265 (_2!22882 (v!38847 lt!1318792))))))

(assert (=> d!1121978 (= (lexRec!825 thiss!11876 rules!1265 (_2!22882 (v!38847 lt!1318792))) lt!1318963)))

(declare-fun b!3803674 () Bool)

(assert (=> b!3803674 (= e!2350505 (= (list!14992 (_2!22881 lt!1318963)) (list!14992 (_2!22882 (v!38847 lt!1318792)))))))

(declare-fun b!3803675 () Bool)

(declare-fun res!1539972 () Bool)

(assert (=> b!3803675 (=> (not res!1539972) (not e!2350503))))

(assert (=> b!3803675 (= res!1539972 (= (list!14991 (_1!22881 lt!1318963)) (_1!22885 (lexList!1571 thiss!11876 rules!1265 (list!14992 (_2!22882 (v!38847 lt!1318792)))))))))

(declare-fun b!3803676 () Bool)

(assert (=> b!3803676 (= e!2350502 (tuple2!39495 (BalanceConc!24393 Empty!12399) (_2!22882 (v!38847 lt!1318792))))))

(declare-fun b!3803677 () Bool)

(declare-fun lt!1318962 () tuple2!39494)

(assert (=> b!3803677 (= e!2350502 (tuple2!39495 (prepend!1356 (_1!22881 lt!1318962) (_1!22882 (v!38847 lt!1318964))) (_2!22881 lt!1318962)))))

(assert (=> b!3803677 (= lt!1318962 (lexRec!825 thiss!11876 rules!1265 (_2!22882 (v!38847 lt!1318964))))))

(assert (= (and d!1121978 c!661490) b!3803677))

(assert (= (and d!1121978 (not c!661490)) b!3803676))

(assert (= (and d!1121978 c!661489) b!3803672))

(assert (= (and d!1121978 (not c!661489)) b!3803674))

(assert (= (and b!3803672 res!1539974) b!3803671))

(assert (= (and d!1121978 res!1539973) b!3803675))

(assert (= (and b!3803675 res!1539972) b!3803673))

(declare-fun m!4335045 () Bool)

(assert (=> b!3803673 m!4335045))

(assert (=> b!3803673 m!4334407))

(assert (=> b!3803673 m!4334407))

(declare-fun m!4335047 () Bool)

(assert (=> b!3803673 m!4335047))

(declare-fun m!4335049 () Bool)

(assert (=> b!3803671 m!4335049))

(declare-fun m!4335051 () Bool)

(assert (=> b!3803672 m!4335051))

(declare-fun m!4335053 () Bool)

(assert (=> b!3803672 m!4335053))

(declare-fun m!4335055 () Bool)

(assert (=> b!3803675 m!4335055))

(assert (=> b!3803675 m!4334407))

(assert (=> b!3803675 m!4334407))

(assert (=> b!3803675 m!4335047))

(declare-fun m!4335057 () Bool)

(assert (=> b!3803677 m!4335057))

(declare-fun m!4335059 () Bool)

(assert (=> b!3803677 m!4335059))

(declare-fun m!4335061 () Bool)

(assert (=> d!1121978 m!4335061))

(declare-fun m!4335063 () Bool)

(assert (=> d!1121978 m!4335063))

(assert (=> b!3803674 m!4335045))

(assert (=> b!3803674 m!4334407))

(assert (=> b!3803289 d!1121978))

(declare-fun b!3803680 () Bool)

(declare-fun res!1539976 () Bool)

(declare-fun e!2350506 () Bool)

(assert (=> b!3803680 (=> (not res!1539976) (not e!2350506))))

(declare-fun lt!1318965 () List!40489)

(assert (=> b!3803680 (= res!1539976 (= (size!30391 lt!1318965) (+ (size!30391 (++!10134 lt!1318801 lt!1318784)) (size!30391 lt!1318802))))))

(declare-fun d!1121980 () Bool)

(assert (=> d!1121980 e!2350506))

(declare-fun res!1539975 () Bool)

(assert (=> d!1121980 (=> (not res!1539975) (not e!2350506))))

(assert (=> d!1121980 (= res!1539975 (= (content!5955 lt!1318965) ((_ map or) (content!5955 (++!10134 lt!1318801 lt!1318784)) (content!5955 lt!1318802))))))

(declare-fun e!2350507 () List!40489)

(assert (=> d!1121980 (= lt!1318965 e!2350507)))

(declare-fun c!661491 () Bool)

(assert (=> d!1121980 (= c!661491 ((_ is Nil!40365) (++!10134 lt!1318801 lt!1318784)))))

(assert (=> d!1121980 (= (++!10134 (++!10134 lt!1318801 lt!1318784) lt!1318802) lt!1318965)))

(declare-fun b!3803678 () Bool)

(assert (=> b!3803678 (= e!2350507 lt!1318802)))

(declare-fun b!3803679 () Bool)

(assert (=> b!3803679 (= e!2350507 (Cons!40365 (h!45785 (++!10134 lt!1318801 lt!1318784)) (++!10134 (t!307218 (++!10134 lt!1318801 lt!1318784)) lt!1318802)))))

(declare-fun b!3803681 () Bool)

(assert (=> b!3803681 (= e!2350506 (or (not (= lt!1318802 Nil!40365)) (= lt!1318965 (++!10134 lt!1318801 lt!1318784))))))

(assert (= (and d!1121980 c!661491) b!3803678))

(assert (= (and d!1121980 (not c!661491)) b!3803679))

(assert (= (and d!1121980 res!1539975) b!3803680))

(assert (= (and b!3803680 res!1539976) b!3803681))

(declare-fun m!4335065 () Bool)

(assert (=> b!3803680 m!4335065))

(assert (=> b!3803680 m!4334387))

(declare-fun m!4335067 () Bool)

(assert (=> b!3803680 m!4335067))

(assert (=> b!3803680 m!4334929))

(declare-fun m!4335069 () Bool)

(assert (=> d!1121980 m!4335069))

(assert (=> d!1121980 m!4334387))

(declare-fun m!4335071 () Bool)

(assert (=> d!1121980 m!4335071))

(assert (=> d!1121980 m!4334935))

(declare-fun m!4335073 () Bool)

(assert (=> b!3803679 m!4335073))

(assert (=> b!3803289 d!1121980))

(declare-fun b!3803683 () Bool)

(declare-fun e!2350509 () List!40487)

(assert (=> b!3803683 (= e!2350509 (Cons!40363 (h!45783 lt!1318796) (++!10133 (t!307216 lt!1318796) lt!1318787)))))

(declare-fun e!2350508 () Bool)

(declare-fun b!3803685 () Bool)

(declare-fun lt!1318966 () List!40487)

(assert (=> b!3803685 (= e!2350508 (or (not (= lt!1318787 Nil!40363)) (= lt!1318966 lt!1318796)))))

(declare-fun d!1121982 () Bool)

(assert (=> d!1121982 e!2350508))

(declare-fun res!1539977 () Bool)

(assert (=> d!1121982 (=> (not res!1539977) (not e!2350508))))

(assert (=> d!1121982 (= res!1539977 (= (content!5956 lt!1318966) ((_ map or) (content!5956 lt!1318796) (content!5956 lt!1318787))))))

(assert (=> d!1121982 (= lt!1318966 e!2350509)))

(declare-fun c!661492 () Bool)

(assert (=> d!1121982 (= c!661492 ((_ is Nil!40363) lt!1318796))))

(assert (=> d!1121982 (= (++!10133 lt!1318796 lt!1318787) lt!1318966)))

(declare-fun b!3803682 () Bool)

(assert (=> b!3803682 (= e!2350509 lt!1318787)))

(declare-fun b!3803684 () Bool)

(declare-fun res!1539978 () Bool)

(assert (=> b!3803684 (=> (not res!1539978) (not e!2350508))))

(assert (=> b!3803684 (= res!1539978 (= (size!30392 lt!1318966) (+ (size!30392 lt!1318796) (size!30392 lt!1318787))))))

(assert (= (and d!1121982 c!661492) b!3803682))

(assert (= (and d!1121982 (not c!661492)) b!3803683))

(assert (= (and d!1121982 res!1539977) b!3803684))

(assert (= (and b!3803684 res!1539978) b!3803685))

(declare-fun m!4335075 () Bool)

(assert (=> b!3803683 m!4335075))

(declare-fun m!4335077 () Bool)

(assert (=> d!1121982 m!4335077))

(assert (=> d!1121982 m!4334899))

(assert (=> d!1121982 m!4334947))

(declare-fun m!4335079 () Bool)

(assert (=> b!3803684 m!4335079))

(assert (=> b!3803684 m!4334905))

(assert (=> b!3803684 m!4334951))

(assert (=> b!3803289 d!1121982))

(declare-fun d!1121984 () Bool)

(assert (=> d!1121984 (= (++!10134 (++!10134 lt!1318801 lt!1318784) lt!1318802) (++!10134 lt!1318801 (++!10134 lt!1318784 lt!1318802)))))

(declare-fun lt!1318969 () Unit!58104)

(declare-fun choose!22429 (List!40489 List!40489 List!40489) Unit!58104)

(assert (=> d!1121984 (= lt!1318969 (choose!22429 lt!1318801 lt!1318784 lt!1318802))))

(assert (=> d!1121984 (= (lemmaConcatAssociativity!2175 lt!1318801 lt!1318784 lt!1318802) lt!1318969)))

(declare-fun bs!579676 () Bool)

(assert (= bs!579676 d!1121984))

(assert (=> bs!579676 m!4334387))

(assert (=> bs!579676 m!4334387))

(assert (=> bs!579676 m!4334389))

(assert (=> bs!579676 m!4334405))

(assert (=> bs!579676 m!4334417))

(declare-fun m!4335081 () Bool)

(assert (=> bs!579676 m!4335081))

(assert (=> bs!579676 m!4334405))

(assert (=> b!3803289 d!1121984))

(declare-fun d!1121986 () Bool)

(assert (=> d!1121986 (= (isEmpty!23763 lt!1318788) ((_ is Nil!40365) lt!1318788))))

(assert (=> b!3803289 d!1121986))

(declare-fun d!1121988 () Bool)

(assert (=> d!1121988 (= (list!14992 (_2!22881 lt!1318789)) (list!14996 (c!661414 (_2!22881 lt!1318789))))))

(declare-fun bs!579677 () Bool)

(assert (= bs!579677 d!1121988))

(declare-fun m!4335083 () Bool)

(assert (=> bs!579677 m!4335083))

(assert (=> b!3803289 d!1121988))

(declare-fun b!3803687 () Bool)

(declare-fun e!2350511 () List!40487)

(assert (=> b!3803687 (= e!2350511 (Cons!40363 (h!45783 lt!1318796) (++!10133 (t!307216 lt!1318796) lt!1318797)))))

(declare-fun lt!1318970 () List!40487)

(declare-fun b!3803689 () Bool)

(declare-fun e!2350510 () Bool)

(assert (=> b!3803689 (= e!2350510 (or (not (= lt!1318797 Nil!40363)) (= lt!1318970 lt!1318796)))))

(declare-fun d!1121990 () Bool)

(assert (=> d!1121990 e!2350510))

(declare-fun res!1539979 () Bool)

(assert (=> d!1121990 (=> (not res!1539979) (not e!2350510))))

(assert (=> d!1121990 (= res!1539979 (= (content!5956 lt!1318970) ((_ map or) (content!5956 lt!1318796) (content!5956 lt!1318797))))))

(assert (=> d!1121990 (= lt!1318970 e!2350511)))

(declare-fun c!661493 () Bool)

(assert (=> d!1121990 (= c!661493 ((_ is Nil!40363) lt!1318796))))

(assert (=> d!1121990 (= (++!10133 lt!1318796 lt!1318797) lt!1318970)))

(declare-fun b!3803686 () Bool)

(assert (=> b!3803686 (= e!2350511 lt!1318797)))

(declare-fun b!3803688 () Bool)

(declare-fun res!1539980 () Bool)

(assert (=> b!3803688 (=> (not res!1539980) (not e!2350510))))

(assert (=> b!3803688 (= res!1539980 (= (size!30392 lt!1318970) (+ (size!30392 lt!1318796) (size!30392 lt!1318797))))))

(assert (= (and d!1121990 c!661493) b!3803686))

(assert (= (and d!1121990 (not c!661493)) b!3803687))

(assert (= (and d!1121990 res!1539979) b!3803688))

(assert (= (and b!3803688 res!1539980) b!3803689))

(declare-fun m!4335085 () Bool)

(assert (=> b!3803687 m!4335085))

(declare-fun m!4335087 () Bool)

(assert (=> d!1121990 m!4335087))

(assert (=> d!1121990 m!4334899))

(declare-fun m!4335089 () Bool)

(assert (=> d!1121990 m!4335089))

(declare-fun m!4335091 () Bool)

(assert (=> b!3803688 m!4335091))

(assert (=> b!3803688 m!4334905))

(declare-fun m!4335093 () Bool)

(assert (=> b!3803688 m!4335093))

(assert (=> b!3803280 d!1121990))

(declare-fun d!1121992 () Bool)

(assert (=> d!1121992 (= (list!14992 totalInput!335) (list!14996 (c!661414 totalInput!335)))))

(declare-fun bs!579678 () Bool)

(assert (= bs!579678 d!1121992))

(declare-fun m!4335095 () Bool)

(assert (=> bs!579678 m!4335095))

(assert (=> b!3803280 d!1121992))

(declare-fun d!1121994 () Bool)

(assert (=> d!1121994 (= (list!14992 input!678) (list!14996 (c!661414 input!678)))))

(declare-fun bs!579679 () Bool)

(assert (= bs!579679 d!1121994))

(declare-fun m!4335097 () Bool)

(assert (=> bs!579679 m!4335097))

(assert (=> b!3803280 d!1121994))

(declare-fun d!1121996 () Bool)

(assert (=> d!1121996 (= (list!14992 treated!13) (list!14996 (c!661414 treated!13)))))

(declare-fun bs!579680 () Bool)

(assert (= bs!579680 d!1121996))

(declare-fun m!4335099 () Bool)

(assert (=> bs!579680 m!4335099))

(assert (=> b!3803280 d!1121996))

(declare-fun d!1121998 () Bool)

(declare-fun res!1539983 () Bool)

(declare-fun e!2350514 () Bool)

(assert (=> d!1121998 (=> (not res!1539983) (not e!2350514))))

(declare-fun rulesValid!2394 (LexerInterface!5801 List!40488) Bool)

(assert (=> d!1121998 (= res!1539983 (rulesValid!2394 thiss!11876 rules!1265))))

(assert (=> d!1121998 (= (rulesInvariant!5144 thiss!11876 rules!1265) e!2350514)))

(declare-fun b!3803692 () Bool)

(declare-datatypes ((List!40491 0))(
  ( (Nil!40367) (Cons!40367 (h!45787 String!45892) (t!307228 List!40491)) )
))
(declare-fun noDuplicateTag!2395 (LexerInterface!5801 List!40488 List!40491) Bool)

(assert (=> b!3803692 (= e!2350514 (noDuplicateTag!2395 thiss!11876 rules!1265 Nil!40367))))

(assert (= (and d!1121998 res!1539983) b!3803692))

(declare-fun m!4335101 () Bool)

(assert (=> d!1121998 m!4335101))

(declare-fun m!4335103 () Bool)

(assert (=> b!3803692 m!4335103))

(assert (=> b!3803291 d!1121998))

(declare-fun d!1122000 () Bool)

(assert (=> d!1122000 (= (isEmpty!23764 rules!1265) ((_ is Nil!40364) rules!1265))))

(assert (=> b!3803290 d!1122000))

(declare-fun d!1122002 () Bool)

(assert (=> d!1122002 (= (list!14992 (_2!22881 lt!1318804)) (list!14996 (c!661414 (_2!22881 lt!1318804))))))

(declare-fun bs!579681 () Bool)

(assert (= bs!579681 d!1122002))

(declare-fun m!4335105 () Bool)

(assert (=> bs!579681 m!4335105))

(assert (=> b!3803287 d!1122002))

(declare-fun d!1122004 () Bool)

(assert (=> d!1122004 (= (list!14992 (_2!22881 lt!1318791)) (list!14996 (c!661414 (_2!22881 lt!1318791))))))

(declare-fun bs!579682 () Bool)

(assert (= bs!579682 d!1122004))

(declare-fun m!4335107 () Bool)

(assert (=> bs!579682 m!4335107))

(assert (=> b!3803287 d!1122004))

(declare-fun d!1122006 () Bool)

(declare-fun c!661496 () Bool)

(assert (=> d!1122006 (= c!661496 ((_ is Node!12398) (c!661414 totalInput!335)))))

(declare-fun e!2350519 () Bool)

(assert (=> d!1122006 (= (inv!54330 (c!661414 totalInput!335)) e!2350519)))

(declare-fun b!3803699 () Bool)

(declare-fun inv!54337 (Conc!12398) Bool)

(assert (=> b!3803699 (= e!2350519 (inv!54337 (c!661414 totalInput!335)))))

(declare-fun b!3803700 () Bool)

(declare-fun e!2350520 () Bool)

(assert (=> b!3803700 (= e!2350519 e!2350520)))

(declare-fun res!1539986 () Bool)

(assert (=> b!3803700 (= res!1539986 (not ((_ is Leaf!19202) (c!661414 totalInput!335))))))

(assert (=> b!3803700 (=> res!1539986 e!2350520)))

(declare-fun b!3803701 () Bool)

(declare-fun inv!54338 (Conc!12398) Bool)

(assert (=> b!3803701 (= e!2350520 (inv!54338 (c!661414 totalInput!335)))))

(assert (= (and d!1122006 c!661496) b!3803699))

(assert (= (and d!1122006 (not c!661496)) b!3803700))

(assert (= (and b!3803700 (not res!1539986)) b!3803701))

(declare-fun m!4335109 () Bool)

(assert (=> b!3803699 m!4335109))

(declare-fun m!4335111 () Bool)

(assert (=> b!3803701 m!4335111))

(assert (=> b!3803286 d!1122006))

(declare-fun d!1122008 () Bool)

(assert (=> d!1122008 (= (list!14991 acc!335) (list!14995 (c!661415 acc!335)))))

(declare-fun bs!579683 () Bool)

(assert (= bs!579683 d!1122008))

(declare-fun m!4335113 () Bool)

(assert (=> bs!579683 m!4335113))

(assert (=> b!3803288 d!1122008))

(declare-fun d!1122010 () Bool)

(assert (=> d!1122010 (= (list!14991 (_1!22881 lt!1318803)) (list!14995 (c!661415 (_1!22881 lt!1318803))))))

(declare-fun bs!579684 () Bool)

(assert (= bs!579684 d!1122010))

(declare-fun m!4335115 () Bool)

(assert (=> bs!579684 m!4335115))

(assert (=> b!3803288 d!1122010))

(declare-fun b!3803702 () Bool)

(declare-fun e!2350523 () Bool)

(declare-fun lt!1318972 () tuple2!39494)

(assert (=> b!3803702 (= e!2350523 (not (isEmpty!23766 (_1!22881 lt!1318972))))))

(declare-fun b!3803703 () Bool)

(declare-fun e!2350524 () Bool)

(assert (=> b!3803703 (= e!2350524 e!2350523)))

(declare-fun res!1539989 () Bool)

(assert (=> b!3803703 (= res!1539989 (< (size!30389 (_2!22881 lt!1318972)) (size!30389 treated!13)))))

(assert (=> b!3803703 (=> (not res!1539989) (not e!2350523))))

(declare-fun e!2350522 () Bool)

(declare-fun b!3803704 () Bool)

(assert (=> b!3803704 (= e!2350522 (= (list!14992 (_2!22881 lt!1318972)) (_2!22885 (lexList!1571 thiss!11876 rules!1265 (list!14992 treated!13)))))))

(declare-fun d!1122012 () Bool)

(assert (=> d!1122012 e!2350522))

(declare-fun res!1539988 () Bool)

(assert (=> d!1122012 (=> (not res!1539988) (not e!2350522))))

(assert (=> d!1122012 (= res!1539988 e!2350524)))

(declare-fun c!661497 () Bool)

(assert (=> d!1122012 (= c!661497 (> (size!30390 (_1!22881 lt!1318972)) 0))))

(declare-fun e!2350521 () tuple2!39494)

(assert (=> d!1122012 (= lt!1318972 e!2350521)))

(declare-fun c!661498 () Bool)

(declare-fun lt!1318973 () Option!8624)

(assert (=> d!1122012 (= c!661498 ((_ is Some!8623) lt!1318973))))

(assert (=> d!1122012 (= lt!1318973 (maxPrefixZipperSequence!1207 thiss!11876 rules!1265 treated!13))))

(assert (=> d!1122012 (= (lexRec!825 thiss!11876 rules!1265 treated!13) lt!1318972)))

(declare-fun b!3803705 () Bool)

(assert (=> b!3803705 (= e!2350524 (= (list!14992 (_2!22881 lt!1318972)) (list!14992 treated!13)))))

(declare-fun b!3803706 () Bool)

(declare-fun res!1539987 () Bool)

(assert (=> b!3803706 (=> (not res!1539987) (not e!2350522))))

(assert (=> b!3803706 (= res!1539987 (= (list!14991 (_1!22881 lt!1318972)) (_1!22885 (lexList!1571 thiss!11876 rules!1265 (list!14992 treated!13)))))))

(declare-fun b!3803707 () Bool)

(assert (=> b!3803707 (= e!2350521 (tuple2!39495 (BalanceConc!24393 Empty!12399) treated!13))))

(declare-fun b!3803708 () Bool)

(declare-fun lt!1318971 () tuple2!39494)

(assert (=> b!3803708 (= e!2350521 (tuple2!39495 (prepend!1356 (_1!22881 lt!1318971) (_1!22882 (v!38847 lt!1318973))) (_2!22881 lt!1318971)))))

(assert (=> b!3803708 (= lt!1318971 (lexRec!825 thiss!11876 rules!1265 (_2!22882 (v!38847 lt!1318973))))))

(assert (= (and d!1122012 c!661498) b!3803708))

(assert (= (and d!1122012 (not c!661498)) b!3803707))

(assert (= (and d!1122012 c!661497) b!3803703))

(assert (= (and d!1122012 (not c!661497)) b!3803705))

(assert (= (and b!3803703 res!1539989) b!3803702))

(assert (= (and d!1122012 res!1539988) b!3803706))

(assert (= (and b!3803706 res!1539987) b!3803704))

(declare-fun m!4335117 () Bool)

(assert (=> b!3803704 m!4335117))

(assert (=> b!3803704 m!4334437))

(assert (=> b!3803704 m!4334437))

(declare-fun m!4335119 () Bool)

(assert (=> b!3803704 m!4335119))

(declare-fun m!4335121 () Bool)

(assert (=> b!3803702 m!4335121))

(declare-fun m!4335123 () Bool)

(assert (=> b!3803703 m!4335123))

(declare-fun m!4335125 () Bool)

(assert (=> b!3803703 m!4335125))

(declare-fun m!4335127 () Bool)

(assert (=> b!3803706 m!4335127))

(assert (=> b!3803706 m!4334437))

(assert (=> b!3803706 m!4334437))

(assert (=> b!3803706 m!4335119))

(declare-fun m!4335129 () Bool)

(assert (=> b!3803708 m!4335129))

(declare-fun m!4335131 () Bool)

(assert (=> b!3803708 m!4335131))

(declare-fun m!4335133 () Bool)

(assert (=> d!1122012 m!4335133))

(declare-fun m!4335135 () Bool)

(assert (=> d!1122012 m!4335135))

(assert (=> b!3803705 m!4335117))

(assert (=> b!3803705 m!4334437))

(assert (=> b!3803288 d!1122012))

(declare-fun d!1122014 () Bool)

(declare-fun c!661501 () Bool)

(assert (=> d!1122014 (= c!661501 ((_ is Node!12399) (c!661415 acc!335)))))

(declare-fun e!2350529 () Bool)

(assert (=> d!1122014 (= (inv!54327 (c!661415 acc!335)) e!2350529)))

(declare-fun b!3803715 () Bool)

(declare-fun inv!54339 (Conc!12399) Bool)

(assert (=> b!3803715 (= e!2350529 (inv!54339 (c!661415 acc!335)))))

(declare-fun b!3803716 () Bool)

(declare-fun e!2350530 () Bool)

(assert (=> b!3803716 (= e!2350529 e!2350530)))

(declare-fun res!1539992 () Bool)

(assert (=> b!3803716 (= res!1539992 (not ((_ is Leaf!19203) (c!661415 acc!335))))))

(assert (=> b!3803716 (=> res!1539992 e!2350530)))

(declare-fun b!3803717 () Bool)

(declare-fun inv!54340 (Conc!12399) Bool)

(assert (=> b!3803717 (= e!2350530 (inv!54340 (c!661415 acc!335)))))

(assert (= (and d!1122014 c!661501) b!3803715))

(assert (= (and d!1122014 (not c!661501)) b!3803716))

(assert (= (and b!3803716 (not res!1539992)) b!3803717))

(declare-fun m!4335137 () Bool)

(assert (=> b!3803715 m!4335137))

(declare-fun m!4335139 () Bool)

(assert (=> b!3803717 m!4335139))

(assert (=> b!3803284 d!1122014))

(declare-fun d!1122016 () Bool)

(declare-fun e!2350533 () Bool)

(assert (=> d!1122016 e!2350533))

(declare-fun res!1539995 () Bool)

(assert (=> d!1122016 (=> res!1539995 e!2350533)))

(declare-fun lt!1318976 () Bool)

(assert (=> d!1122016 (= res!1539995 (not lt!1318976))))

(declare-fun drop!2121 (List!40487 Int) List!40487)

(assert (=> d!1122016 (= lt!1318976 (= lt!1318797 (drop!2121 lt!1318800 (- (size!30392 lt!1318800) (size!30392 lt!1318797)))))))

(assert (=> d!1122016 (= (isSuffix!984 lt!1318797 lt!1318800) lt!1318976)))

(declare-fun b!3803720 () Bool)

(assert (=> b!3803720 (= e!2350533 (>= (size!30392 lt!1318800) (size!30392 lt!1318797)))))

(assert (= (and d!1122016 (not res!1539995)) b!3803720))

(declare-fun m!4335141 () Bool)

(assert (=> d!1122016 m!4335141))

(assert (=> d!1122016 m!4335093))

(declare-fun m!4335143 () Bool)

(assert (=> d!1122016 m!4335143))

(assert (=> b!3803720 m!4335141))

(assert (=> b!3803720 m!4335093))

(assert (=> b!3803295 d!1122016))

(declare-fun d!1122018 () Bool)

(declare-fun e!2350534 () Bool)

(assert (=> d!1122018 e!2350534))

(declare-fun res!1539996 () Bool)

(assert (=> d!1122018 (=> res!1539996 e!2350534)))

(declare-fun lt!1318977 () Bool)

(assert (=> d!1122018 (= res!1539996 (not lt!1318977))))

(assert (=> d!1122018 (= lt!1318977 (= lt!1318797 (drop!2121 lt!1318799 (- (size!30392 lt!1318799) (size!30392 lt!1318797)))))))

(assert (=> d!1122018 (= (isSuffix!984 lt!1318797 lt!1318799) lt!1318977)))

(declare-fun b!3803721 () Bool)

(assert (=> b!3803721 (= e!2350534 (>= (size!30392 lt!1318799) (size!30392 lt!1318797)))))

(assert (= (and d!1122018 (not res!1539996)) b!3803721))

(declare-fun m!4335145 () Bool)

(assert (=> d!1122018 m!4335145))

(assert (=> d!1122018 m!4335093))

(declare-fun m!4335147 () Bool)

(assert (=> d!1122018 m!4335147))

(assert (=> b!3803721 m!4335145))

(assert (=> b!3803721 m!4335093))

(assert (=> b!3803295 d!1122018))

(declare-fun d!1122020 () Bool)

(assert (=> d!1122020 (isSuffix!984 lt!1318797 (++!10133 lt!1318796 lt!1318797))))

(declare-fun lt!1318980 () Unit!58104)

(declare-fun choose!22430 (List!40487 List!40487) Unit!58104)

(assert (=> d!1122020 (= lt!1318980 (choose!22430 lt!1318796 lt!1318797))))

(assert (=> d!1122020 (= (lemmaConcatTwoListThenFSndIsSuffix!669 lt!1318796 lt!1318797) lt!1318980)))

(declare-fun bs!579685 () Bool)

(assert (= bs!579685 d!1122020))

(assert (=> bs!579685 m!4334431))

(assert (=> bs!579685 m!4334431))

(declare-fun m!4335149 () Bool)

(assert (=> bs!579685 m!4335149))

(declare-fun m!4335151 () Bool)

(assert (=> bs!579685 m!4335151))

(assert (=> b!3803295 d!1122020))

(declare-fun d!1122022 () Bool)

(declare-fun e!2350537 () Bool)

(assert (=> d!1122022 e!2350537))

(declare-fun res!1539999 () Bool)

(assert (=> d!1122022 (=> (not res!1539999) (not e!2350537))))

(declare-fun prepend!1358 (Conc!12399 Token!11562) Conc!12399)

(assert (=> d!1122022 (= res!1539999 (isBalanced!3576 (prepend!1358 (c!661415 (_1!22881 lt!1318805)) (_1!22882 (v!38847 lt!1318793)))))))

(declare-fun lt!1318983 () BalanceConc!24392)

(assert (=> d!1122022 (= lt!1318983 (BalanceConc!24393 (prepend!1358 (c!661415 (_1!22881 lt!1318805)) (_1!22882 (v!38847 lt!1318793)))))))

(assert (=> d!1122022 (= (prepend!1356 (_1!22881 lt!1318805) (_1!22882 (v!38847 lt!1318793))) lt!1318983)))

(declare-fun b!3803724 () Bool)

(assert (=> b!3803724 (= e!2350537 (= (list!14991 lt!1318983) (Cons!40365 (_1!22882 (v!38847 lt!1318793)) (list!14991 (_1!22881 lt!1318805)))))))

(assert (= (and d!1122022 res!1539999) b!3803724))

(declare-fun m!4335153 () Bool)

(assert (=> d!1122022 m!4335153))

(assert (=> d!1122022 m!4335153))

(declare-fun m!4335155 () Bool)

(assert (=> d!1122022 m!4335155))

(declare-fun m!4335157 () Bool)

(assert (=> b!3803724 m!4335157))

(declare-fun m!4335159 () Bool)

(assert (=> b!3803724 m!4335159))

(assert (=> b!3803294 d!1122022))

(declare-fun b!3803725 () Bool)

(declare-fun e!2350540 () Bool)

(declare-fun lt!1318985 () tuple2!39494)

(assert (=> b!3803725 (= e!2350540 (not (isEmpty!23766 (_1!22881 lt!1318985))))))

(declare-fun b!3803726 () Bool)

(declare-fun e!2350541 () Bool)

(assert (=> b!3803726 (= e!2350541 e!2350540)))

(declare-fun res!1540002 () Bool)

(assert (=> b!3803726 (= res!1540002 (< (size!30389 (_2!22881 lt!1318985)) (size!30389 (_2!22882 (v!38847 lt!1318793)))))))

(assert (=> b!3803726 (=> (not res!1540002) (not e!2350540))))

(declare-fun e!2350539 () Bool)

(declare-fun b!3803727 () Bool)

(assert (=> b!3803727 (= e!2350539 (= (list!14992 (_2!22881 lt!1318985)) (_2!22885 (lexList!1571 thiss!11876 rules!1265 (list!14992 (_2!22882 (v!38847 lt!1318793)))))))))

(declare-fun d!1122024 () Bool)

(assert (=> d!1122024 e!2350539))

(declare-fun res!1540001 () Bool)

(assert (=> d!1122024 (=> (not res!1540001) (not e!2350539))))

(assert (=> d!1122024 (= res!1540001 e!2350541)))

(declare-fun c!661503 () Bool)

(assert (=> d!1122024 (= c!661503 (> (size!30390 (_1!22881 lt!1318985)) 0))))

(declare-fun e!2350538 () tuple2!39494)

(assert (=> d!1122024 (= lt!1318985 e!2350538)))

(declare-fun c!661504 () Bool)

(declare-fun lt!1318986 () Option!8624)

(assert (=> d!1122024 (= c!661504 ((_ is Some!8623) lt!1318986))))

(assert (=> d!1122024 (= lt!1318986 (maxPrefixZipperSequence!1207 thiss!11876 rules!1265 (_2!22882 (v!38847 lt!1318793))))))

(assert (=> d!1122024 (= (lexRec!825 thiss!11876 rules!1265 (_2!22882 (v!38847 lt!1318793))) lt!1318985)))

(declare-fun b!3803728 () Bool)

(assert (=> b!3803728 (= e!2350541 (= (list!14992 (_2!22881 lt!1318985)) (list!14992 (_2!22882 (v!38847 lt!1318793)))))))

(declare-fun b!3803729 () Bool)

(declare-fun res!1540000 () Bool)

(assert (=> b!3803729 (=> (not res!1540000) (not e!2350539))))

(assert (=> b!3803729 (= res!1540000 (= (list!14991 (_1!22881 lt!1318985)) (_1!22885 (lexList!1571 thiss!11876 rules!1265 (list!14992 (_2!22882 (v!38847 lt!1318793)))))))))

(declare-fun b!3803730 () Bool)

(assert (=> b!3803730 (= e!2350538 (tuple2!39495 (BalanceConc!24393 Empty!12399) (_2!22882 (v!38847 lt!1318793))))))

(declare-fun b!3803731 () Bool)

(declare-fun lt!1318984 () tuple2!39494)

(assert (=> b!3803731 (= e!2350538 (tuple2!39495 (prepend!1356 (_1!22881 lt!1318984) (_1!22882 (v!38847 lt!1318986))) (_2!22881 lt!1318984)))))

(assert (=> b!3803731 (= lt!1318984 (lexRec!825 thiss!11876 rules!1265 (_2!22882 (v!38847 lt!1318986))))))

(assert (= (and d!1122024 c!661504) b!3803731))

(assert (= (and d!1122024 (not c!661504)) b!3803730))

(assert (= (and d!1122024 c!661503) b!3803726))

(assert (= (and d!1122024 (not c!661503)) b!3803728))

(assert (= (and b!3803726 res!1540002) b!3803725))

(assert (= (and d!1122024 res!1540001) b!3803729))

(assert (= (and b!3803729 res!1540000) b!3803727))

(declare-fun m!4335161 () Bool)

(assert (=> b!3803727 m!4335161))

(declare-fun m!4335163 () Bool)

(assert (=> b!3803727 m!4335163))

(assert (=> b!3803727 m!4335163))

(declare-fun m!4335165 () Bool)

(assert (=> b!3803727 m!4335165))

(declare-fun m!4335167 () Bool)

(assert (=> b!3803725 m!4335167))

(declare-fun m!4335169 () Bool)

(assert (=> b!3803726 m!4335169))

(declare-fun m!4335171 () Bool)

(assert (=> b!3803726 m!4335171))

(declare-fun m!4335173 () Bool)

(assert (=> b!3803729 m!4335173))

(assert (=> b!3803729 m!4335163))

(assert (=> b!3803729 m!4335163))

(assert (=> b!3803729 m!4335165))

(declare-fun m!4335175 () Bool)

(assert (=> b!3803731 m!4335175))

(declare-fun m!4335177 () Bool)

(assert (=> b!3803731 m!4335177))

(declare-fun m!4335179 () Bool)

(assert (=> d!1122024 m!4335179))

(declare-fun m!4335181 () Bool)

(assert (=> d!1122024 m!4335181))

(assert (=> b!3803728 m!4335161))

(assert (=> b!3803728 m!4335163))

(assert (=> b!3803294 d!1122024))

(declare-fun d!1122026 () Bool)

(declare-fun c!661505 () Bool)

(assert (=> d!1122026 (= c!661505 ((_ is Node!12398) (c!661414 input!678)))))

(declare-fun e!2350542 () Bool)

(assert (=> d!1122026 (= (inv!54330 (c!661414 input!678)) e!2350542)))

(declare-fun b!3803732 () Bool)

(assert (=> b!3803732 (= e!2350542 (inv!54337 (c!661414 input!678)))))

(declare-fun b!3803733 () Bool)

(declare-fun e!2350543 () Bool)

(assert (=> b!3803733 (= e!2350542 e!2350543)))

(declare-fun res!1540003 () Bool)

(assert (=> b!3803733 (= res!1540003 (not ((_ is Leaf!19202) (c!661414 input!678))))))

(assert (=> b!3803733 (=> res!1540003 e!2350543)))

(declare-fun b!3803734 () Bool)

(assert (=> b!3803734 (= e!2350543 (inv!54338 (c!661414 input!678)))))

(assert (= (and d!1122026 c!661505) b!3803732))

(assert (= (and d!1122026 (not c!661505)) b!3803733))

(assert (= (and b!3803733 (not res!1540003)) b!3803734))

(declare-fun m!4335183 () Bool)

(assert (=> b!3803732 m!4335183))

(declare-fun m!4335185 () Bool)

(assert (=> b!3803734 m!4335185))

(assert (=> b!3803285 d!1122026))

(declare-fun d!1122028 () Bool)

(declare-fun c!661506 () Bool)

(assert (=> d!1122028 (= c!661506 ((_ is Node!12398) (c!661414 treated!13)))))

(declare-fun e!2350544 () Bool)

(assert (=> d!1122028 (= (inv!54330 (c!661414 treated!13)) e!2350544)))

(declare-fun b!3803735 () Bool)

(assert (=> b!3803735 (= e!2350544 (inv!54337 (c!661414 treated!13)))))

(declare-fun b!3803736 () Bool)

(declare-fun e!2350545 () Bool)

(assert (=> b!3803736 (= e!2350544 e!2350545)))

(declare-fun res!1540004 () Bool)

(assert (=> b!3803736 (= res!1540004 (not ((_ is Leaf!19202) (c!661414 treated!13))))))

(assert (=> b!3803736 (=> res!1540004 e!2350545)))

(declare-fun b!3803737 () Bool)

(assert (=> b!3803737 (= e!2350545 (inv!54338 (c!661414 treated!13)))))

(assert (= (and d!1122028 c!661506) b!3803735))

(assert (= (and d!1122028 (not c!661506)) b!3803736))

(assert (= (and b!3803736 (not res!1540004)) b!3803737))

(declare-fun m!4335187 () Bool)

(assert (=> b!3803735 m!4335187))

(declare-fun m!4335189 () Bool)

(assert (=> b!3803737 m!4335189))

(assert (=> b!3803292 d!1122028))

(declare-fun d!1122030 () Bool)

(assert (=> d!1122030 (= (isEmpty!23762 (list!14992 (_2!22881 lt!1318803))) ((_ is Nil!40363) (list!14992 (_2!22881 lt!1318803))))))

(assert (=> b!3803281 d!1122030))

(declare-fun d!1122032 () Bool)

(assert (=> d!1122032 (= (list!14992 (_2!22881 lt!1318803)) (list!14996 (c!661414 (_2!22881 lt!1318803))))))

(declare-fun bs!579686 () Bool)

(assert (= bs!579686 d!1122032))

(declare-fun m!4335191 () Bool)

(assert (=> bs!579686 m!4335191))

(assert (=> b!3803281 d!1122032))

(declare-fun d!1122034 () Bool)

(declare-fun isBalanced!3578 (Conc!12398) Bool)

(assert (=> d!1122034 (= (inv!54328 input!678) (isBalanced!3578 (c!661414 input!678)))))

(declare-fun bs!579687 () Bool)

(assert (= bs!579687 d!1122034))

(declare-fun m!4335193 () Bool)

(assert (=> bs!579687 m!4335193))

(assert (=> start!356240 d!1122034))

(declare-fun d!1122036 () Bool)

(assert (=> d!1122036 (= (inv!54329 acc!335) (isBalanced!3576 (c!661415 acc!335)))))

(declare-fun bs!579688 () Bool)

(assert (= bs!579688 d!1122036))

(declare-fun m!4335195 () Bool)

(assert (=> bs!579688 m!4335195))

(assert (=> start!356240 d!1122036))

(declare-fun d!1122038 () Bool)

(assert (=> d!1122038 (= (inv!54328 treated!13) (isBalanced!3578 (c!661414 treated!13)))))

(declare-fun bs!579689 () Bool)

(assert (= bs!579689 d!1122038))

(declare-fun m!4335197 () Bool)

(assert (=> bs!579689 m!4335197))

(assert (=> start!356240 d!1122038))

(declare-fun d!1122040 () Bool)

(assert (=> d!1122040 (= (inv!54328 totalInput!335) (isBalanced!3578 (c!661414 totalInput!335)))))

(declare-fun bs!579690 () Bool)

(assert (= bs!579690 d!1122040))

(declare-fun m!4335199 () Bool)

(assert (=> bs!579690 m!4335199))

(assert (=> start!356240 d!1122040))

(declare-fun b!3803754 () Bool)

(declare-fun e!2350559 () Bool)

(declare-fun e!2350563 () Bool)

(assert (=> b!3803754 (= e!2350559 e!2350563)))

(declare-fun res!1540019 () Bool)

(assert (=> b!3803754 (=> (not res!1540019) (not e!2350563))))

(declare-fun lt!1319007 () Option!8624)

(assert (=> b!3803754 (= res!1540019 (= (_1!22882 (get!13382 lt!1319007)) (_1!22886 (get!13383 (maxPrefix!3113 thiss!11876 rules!1265 (list!14992 input!678))))))))

(declare-fun b!3803755 () Bool)

(declare-fun e!2350558 () Bool)

(assert (=> b!3803755 (= e!2350558 e!2350559)))

(declare-fun res!1540018 () Bool)

(assert (=> b!3803755 (=> res!1540018 e!2350559)))

(assert (=> b!3803755 (= res!1540018 (not (isDefined!6786 lt!1319007)))))

(declare-fun b!3803756 () Bool)

(declare-fun e!2350561 () Option!8624)

(declare-fun call!279164 () Option!8624)

(assert (=> b!3803756 (= e!2350561 call!279164)))

(declare-fun d!1122042 () Bool)

(assert (=> d!1122042 e!2350558))

(declare-fun res!1540022 () Bool)

(assert (=> d!1122042 (=> (not res!1540022) (not e!2350558))))

(assert (=> d!1122042 (= res!1540022 (= (isDefined!6786 lt!1319007) (isDefined!6787 (maxPrefixZipper!545 thiss!11876 rules!1265 (list!14992 input!678)))))))

(assert (=> d!1122042 (= lt!1319007 e!2350561)))

(declare-fun c!661509 () Bool)

(assert (=> d!1122042 (= c!661509 (and ((_ is Cons!40364) rules!1265) ((_ is Nil!40364) (t!307217 rules!1265))))))

(declare-fun lt!1319004 () Unit!58104)

(declare-fun lt!1319005 () Unit!58104)

(assert (=> d!1122042 (= lt!1319004 lt!1319005)))

(declare-fun lt!1319006 () List!40487)

(declare-fun lt!1319001 () List!40487)

(assert (=> d!1122042 (isPrefix!3321 lt!1319006 lt!1319001)))

(assert (=> d!1122042 (= lt!1319005 (lemmaIsPrefixRefl!2106 lt!1319006 lt!1319001))))

(assert (=> d!1122042 (= lt!1319001 (list!14992 input!678))))

(assert (=> d!1122042 (= lt!1319006 (list!14992 input!678))))

(assert (=> d!1122042 (rulesValidInductive!2180 thiss!11876 rules!1265)))

(assert (=> d!1122042 (= (maxPrefixZipperSequenceV2!601 thiss!11876 rules!1265 input!678 totalInput!335) lt!1319007)))

(declare-fun b!3803757 () Bool)

(assert (=> b!3803757 (= e!2350563 (= (list!14992 (_2!22882 (get!13382 lt!1319007))) (_2!22886 (get!13383 (maxPrefix!3113 thiss!11876 rules!1265 (list!14992 input!678))))))))

(declare-fun e!2350562 () Bool)

(declare-fun b!3803758 () Bool)

(assert (=> b!3803758 (= e!2350562 (= (list!14992 (_2!22882 (get!13382 lt!1319007))) (_2!22886 (get!13383 (maxPrefixZipper!545 thiss!11876 rules!1265 (list!14992 input!678))))))))

(declare-fun b!3803759 () Bool)

(declare-fun e!2350560 () Bool)

(assert (=> b!3803759 (= e!2350560 e!2350562)))

(declare-fun res!1540017 () Bool)

(assert (=> b!3803759 (=> (not res!1540017) (not e!2350562))))

(assert (=> b!3803759 (= res!1540017 (= (_1!22882 (get!13382 lt!1319007)) (_1!22886 (get!13383 (maxPrefixZipper!545 thiss!11876 rules!1265 (list!14992 input!678))))))))

(declare-fun b!3803760 () Bool)

(declare-fun res!1540021 () Bool)

(assert (=> b!3803760 (=> (not res!1540021) (not e!2350558))))

(assert (=> b!3803760 (= res!1540021 e!2350560)))

(declare-fun res!1540020 () Bool)

(assert (=> b!3803760 (=> res!1540020 e!2350560)))

(assert (=> b!3803760 (= res!1540020 (not (isDefined!6786 lt!1319007)))))

(declare-fun bm!279159 () Bool)

(declare-fun maxPrefixOneRuleZipperSequenceV2!239 (LexerInterface!5801 Rule!12224 BalanceConc!24390 BalanceConc!24390) Option!8624)

(assert (=> bm!279159 (= call!279164 (maxPrefixOneRuleZipperSequenceV2!239 thiss!11876 (h!45784 rules!1265) input!678 totalInput!335))))

(declare-fun b!3803761 () Bool)

(declare-fun lt!1319003 () Option!8624)

(declare-fun lt!1319002 () Option!8624)

(assert (=> b!3803761 (= e!2350561 (ite (and ((_ is None!8623) lt!1319003) ((_ is None!8623) lt!1319002)) None!8623 (ite ((_ is None!8623) lt!1319002) lt!1319003 (ite ((_ is None!8623) lt!1319003) lt!1319002 (ite (>= (size!30384 (_1!22882 (v!38847 lt!1319003))) (size!30384 (_1!22882 (v!38847 lt!1319002)))) lt!1319003 lt!1319002)))))))

(assert (=> b!3803761 (= lt!1319003 call!279164)))

(assert (=> b!3803761 (= lt!1319002 (maxPrefixZipperSequenceV2!601 thiss!11876 (t!307217 rules!1265) input!678 totalInput!335))))

(assert (= (and d!1122042 c!661509) b!3803756))

(assert (= (and d!1122042 (not c!661509)) b!3803761))

(assert (= (or b!3803756 b!3803761) bm!279159))

(assert (= (and d!1122042 res!1540022) b!3803760))

(assert (= (and b!3803760 (not res!1540020)) b!3803759))

(assert (= (and b!3803759 res!1540017) b!3803758))

(assert (= (and b!3803760 res!1540021) b!3803755))

(assert (= (and b!3803755 (not res!1540018)) b!3803754))

(assert (= (and b!3803754 res!1540019) b!3803757))

(declare-fun m!4335201 () Bool)

(assert (=> b!3803755 m!4335201))

(assert (=> b!3803760 m!4335201))

(assert (=> d!1122042 m!4334435))

(assert (=> d!1122042 m!4335005))

(assert (=> d!1122042 m!4335025))

(assert (=> d!1122042 m!4335023))

(declare-fun m!4335203 () Bool)

(assert (=> d!1122042 m!4335203))

(assert (=> d!1122042 m!4334435))

(assert (=> d!1122042 m!4335005))

(assert (=> d!1122042 m!4335201))

(declare-fun m!4335205 () Bool)

(assert (=> d!1122042 m!4335205))

(declare-fun m!4335207 () Bool)

(assert (=> b!3803758 m!4335207))

(assert (=> b!3803758 m!4334435))

(declare-fun m!4335209 () Bool)

(assert (=> b!3803758 m!4335209))

(assert (=> b!3803758 m!4335005))

(assert (=> b!3803758 m!4335007))

(assert (=> b!3803758 m!4334435))

(assert (=> b!3803758 m!4335005))

(declare-fun m!4335211 () Bool)

(assert (=> b!3803761 m!4335211))

(assert (=> b!3803759 m!4335207))

(assert (=> b!3803759 m!4334435))

(assert (=> b!3803759 m!4334435))

(assert (=> b!3803759 m!4335005))

(assert (=> b!3803759 m!4335005))

(assert (=> b!3803759 m!4335007))

(declare-fun m!4335213 () Bool)

(assert (=> bm!279159 m!4335213))

(assert (=> b!3803754 m!4335207))

(assert (=> b!3803754 m!4334435))

(assert (=> b!3803754 m!4334435))

(assert (=> b!3803754 m!4335015))

(assert (=> b!3803754 m!4335015))

(assert (=> b!3803754 m!4335017))

(assert (=> b!3803757 m!4335207))

(assert (=> b!3803757 m!4334435))

(assert (=> b!3803757 m!4335015))

(assert (=> b!3803757 m!4335017))

(assert (=> b!3803757 m!4335209))

(assert (=> b!3803757 m!4334435))

(assert (=> b!3803757 m!4335015))

(assert (=> b!3803293 d!1122042))

(declare-fun tp!1155430 () Bool)

(declare-fun b!3803770 () Bool)

(declare-fun e!2350569 () Bool)

(declare-fun tp!1155428 () Bool)

(assert (=> b!3803770 (= e!2350569 (and (inv!54327 (left!31230 (c!661415 acc!335))) tp!1155430 (inv!54327 (right!31560 (c!661415 acc!335))) tp!1155428))))

(declare-fun b!3803772 () Bool)

(declare-fun e!2350568 () Bool)

(declare-fun tp!1155429 () Bool)

(assert (=> b!3803772 (= e!2350568 tp!1155429)))

(declare-fun b!3803771 () Bool)

(declare-fun inv!54341 (IArray!24803) Bool)

(assert (=> b!3803771 (= e!2350569 (and (inv!54341 (xs!15665 (c!661415 acc!335))) e!2350568))))

(assert (=> b!3803284 (= tp!1155357 (and (inv!54327 (c!661415 acc!335)) e!2350569))))

(assert (= (and b!3803284 ((_ is Node!12399) (c!661415 acc!335))) b!3803770))

(assert (= b!3803771 b!3803772))

(assert (= (and b!3803284 ((_ is Leaf!19203) (c!661415 acc!335))) b!3803771))

(declare-fun m!4335215 () Bool)

(assert (=> b!3803770 m!4335215))

(declare-fun m!4335217 () Bool)

(assert (=> b!3803770 m!4335217))

(declare-fun m!4335219 () Bool)

(assert (=> b!3803771 m!4335219))

(assert (=> b!3803284 m!4334439))

(declare-fun b!3803783 () Bool)

(declare-fun e!2350572 () Bool)

(declare-fun tp_is_empty!19185 () Bool)

(assert (=> b!3803783 (= e!2350572 tp_is_empty!19185)))

(declare-fun b!3803785 () Bool)

(declare-fun tp!1155442 () Bool)

(assert (=> b!3803785 (= e!2350572 tp!1155442)))

(assert (=> b!3803278 (= tp!1155359 e!2350572)))

(declare-fun b!3803786 () Bool)

(declare-fun tp!1155443 () Bool)

(declare-fun tp!1155441 () Bool)

(assert (=> b!3803786 (= e!2350572 (and tp!1155443 tp!1155441))))

(declare-fun b!3803784 () Bool)

(declare-fun tp!1155445 () Bool)

(declare-fun tp!1155444 () Bool)

(assert (=> b!3803784 (= e!2350572 (and tp!1155445 tp!1155444))))

(assert (= (and b!3803278 ((_ is ElementMatch!11117) (regex!6212 (h!45784 rules!1265)))) b!3803783))

(assert (= (and b!3803278 ((_ is Concat!17560) (regex!6212 (h!45784 rules!1265)))) b!3803784))

(assert (= (and b!3803278 ((_ is Star!11117) (regex!6212 (h!45784 rules!1265)))) b!3803785))

(assert (= (and b!3803278 ((_ is Union!11117) (regex!6212 (h!45784 rules!1265)))) b!3803786))

(declare-fun tp!1155452 () Bool)

(declare-fun b!3803795 () Bool)

(declare-fun e!2350578 () Bool)

(declare-fun tp!1155454 () Bool)

(assert (=> b!3803795 (= e!2350578 (and (inv!54330 (left!31229 (c!661414 input!678))) tp!1155452 (inv!54330 (right!31559 (c!661414 input!678))) tp!1155454))))

(declare-fun b!3803797 () Bool)

(declare-fun e!2350577 () Bool)

(declare-fun tp!1155453 () Bool)

(assert (=> b!3803797 (= e!2350577 tp!1155453)))

(declare-fun b!3803796 () Bool)

(declare-fun inv!54342 (IArray!24801) Bool)

(assert (=> b!3803796 (= e!2350578 (and (inv!54342 (xs!15664 (c!661414 input!678))) e!2350577))))

(assert (=> b!3803285 (= tp!1155361 (and (inv!54330 (c!661414 input!678)) e!2350578))))

(assert (= (and b!3803285 ((_ is Node!12398) (c!661414 input!678))) b!3803795))

(assert (= b!3803796 b!3803797))

(assert (= (and b!3803285 ((_ is Leaf!19202) (c!661414 input!678))) b!3803796))

(declare-fun m!4335221 () Bool)

(assert (=> b!3803795 m!4335221))

(declare-fun m!4335223 () Bool)

(assert (=> b!3803795 m!4335223))

(declare-fun m!4335225 () Bool)

(assert (=> b!3803796 m!4335225))

(assert (=> b!3803285 m!4334461))

(declare-fun e!2350580 () Bool)

(declare-fun tp!1155455 () Bool)

(declare-fun tp!1155457 () Bool)

(declare-fun b!3803798 () Bool)

(assert (=> b!3803798 (= e!2350580 (and (inv!54330 (left!31229 (c!661414 treated!13))) tp!1155455 (inv!54330 (right!31559 (c!661414 treated!13))) tp!1155457))))

(declare-fun b!3803800 () Bool)

(declare-fun e!2350579 () Bool)

(declare-fun tp!1155456 () Bool)

(assert (=> b!3803800 (= e!2350579 tp!1155456)))

(declare-fun b!3803799 () Bool)

(assert (=> b!3803799 (= e!2350580 (and (inv!54342 (xs!15664 (c!661414 treated!13))) e!2350579))))

(assert (=> b!3803292 (= tp!1155362 (and (inv!54330 (c!661414 treated!13)) e!2350580))))

(assert (= (and b!3803292 ((_ is Node!12398) (c!661414 treated!13))) b!3803798))

(assert (= b!3803799 b!3803800))

(assert (= (and b!3803292 ((_ is Leaf!19202) (c!661414 treated!13))) b!3803799))

(declare-fun m!4335227 () Bool)

(assert (=> b!3803798 m!4335227))

(declare-fun m!4335229 () Bool)

(assert (=> b!3803798 m!4335229))

(declare-fun m!4335231 () Bool)

(assert (=> b!3803799 m!4335231))

(assert (=> b!3803292 m!4334363))

(declare-fun tp!1155458 () Bool)

(declare-fun e!2350582 () Bool)

(declare-fun tp!1155460 () Bool)

(declare-fun b!3803801 () Bool)

(assert (=> b!3803801 (= e!2350582 (and (inv!54330 (left!31229 (c!661414 totalInput!335))) tp!1155458 (inv!54330 (right!31559 (c!661414 totalInput!335))) tp!1155460))))

(declare-fun b!3803803 () Bool)

(declare-fun e!2350581 () Bool)

(declare-fun tp!1155459 () Bool)

(assert (=> b!3803803 (= e!2350581 tp!1155459)))

(declare-fun b!3803802 () Bool)

(assert (=> b!3803802 (= e!2350582 (and (inv!54342 (xs!15664 (c!661414 totalInput!335))) e!2350581))))

(assert (=> b!3803286 (= tp!1155364 (and (inv!54330 (c!661414 totalInput!335)) e!2350582))))

(assert (= (and b!3803286 ((_ is Node!12398) (c!661414 totalInput!335))) b!3803801))

(assert (= b!3803802 b!3803803))

(assert (= (and b!3803286 ((_ is Leaf!19202) (c!661414 totalInput!335))) b!3803802))

(declare-fun m!4335233 () Bool)

(assert (=> b!3803801 m!4335233))

(declare-fun m!4335235 () Bool)

(assert (=> b!3803801 m!4335235))

(declare-fun m!4335237 () Bool)

(assert (=> b!3803802 m!4335237))

(assert (=> b!3803286 m!4334365))

(declare-fun b!3803814 () Bool)

(declare-fun b_free!101349 () Bool)

(declare-fun b_next!102053 () Bool)

(assert (=> b!3803814 (= b_free!101349 (not b_next!102053))))

(declare-fun tp!1155470 () Bool)

(declare-fun b_and!282751 () Bool)

(assert (=> b!3803814 (= tp!1155470 b_and!282751)))

(declare-fun b_free!101351 () Bool)

(declare-fun b_next!102055 () Bool)

(assert (=> b!3803814 (= b_free!101351 (not b_next!102055))))

(declare-fun t!307227 () Bool)

(declare-fun tb!218179 () Bool)

(assert (=> (and b!3803814 (= (toChars!8455 (transformation!6212 (h!45784 (t!307217 rules!1265)))) (toChars!8455 (transformation!6212 (rule!9008 (_1!22882 (v!38847 lt!1318792)))))) t!307227) tb!218179))

(declare-fun result!266136 () Bool)

(assert (= result!266136 result!266124))

(assert (=> d!1121972 t!307227))

(declare-fun tp!1155469 () Bool)

(declare-fun b_and!282753 () Bool)

(assert (=> b!3803814 (= tp!1155469 (and (=> t!307227 result!266136) b_and!282753))))

(declare-fun e!2350591 () Bool)

(assert (=> b!3803814 (= e!2350591 (and tp!1155470 tp!1155469))))

(declare-fun tp!1155472 () Bool)

(declare-fun e!2350592 () Bool)

(declare-fun b!3803813 () Bool)

(assert (=> b!3803813 (= e!2350592 (and tp!1155472 (inv!54320 (tag!7072 (h!45784 (t!307217 rules!1265)))) (inv!54326 (transformation!6212 (h!45784 (t!307217 rules!1265)))) e!2350591))))

(declare-fun b!3803812 () Bool)

(declare-fun e!2350594 () Bool)

(declare-fun tp!1155471 () Bool)

(assert (=> b!3803812 (= e!2350594 (and e!2350592 tp!1155471))))

(assert (=> b!3803283 (= tp!1155360 e!2350594)))

(assert (= b!3803813 b!3803814))

(assert (= b!3803812 b!3803813))

(assert (= (and b!3803283 ((_ is Cons!40364) (t!307217 rules!1265))) b!3803812))

(declare-fun m!4335239 () Bool)

(assert (=> b!3803813 m!4335239))

(declare-fun m!4335241 () Bool)

(assert (=> b!3803813 m!4335241))

(check-sat (not b!3803732) (not b!3803724) (not d!1122018) (not b!3803677) (not d!1122034) (not d!1122016) (not b!3803715) (not b!3803508) (not d!1121988) (not b!3803735) (not b!3803514) (not b!3803708) (not b!3803731) (not d!1121946) (not b!3803803) (not d!1121976) (not b!3803812) (not b!3803335) (not b!3803546) (not b!3803757) (not b!3803536) (not d!1122010) (not b!3803334) (not b!3803660) (not b!3803726) tp_is_empty!19185 (not d!1121996) (not d!1121952) (not b!3803513) (not b!3803511) (not d!1121984) (not d!1121978) (not b!3803784) (not b!3803705) (not d!1122020) (not b!3803687) (not d!1122012) (not b!3803683) (not b!3803758) (not d!1122032) (not d!1121944) (not tb!218177) (not d!1121990) (not b!3803679) (not b!3803717) (not b_next!102053) (not b!3803692) (not d!1121992) (not b!3803521) (not b!3803515) (not b!3803674) b_and!282749 (not b!3803336) (not d!1121962) (not b!3803800) (not b!3803512) (not d!1122008) (not b!3803554) (not d!1121932) (not b!3803725) (not d!1121956) (not b!3803797) (not b!3803673) (not b!3803558) (not b!3803755) (not b!3803555) b_and!282751 (not b!3803284) (not d!1121936) (not b!3803657) (not b!3803796) (not b!3803509) (not b!3803727) (not d!1121972) (not b!3803661) (not b!3803699) (not b!3803785) (not b_next!102047) (not b!3803507) (not b!3803729) (not d!1122038) (not b!3803720) (not b!3803531) (not b!3803668) (not b!3803688) (not b!3803706) (not b!3803799) (not b!3803813) (not b!3803559) (not b!3803798) (not d!1122036) (not b!3803760) (not d!1121850) (not b!3803505) (not d!1122002) (not d!1122042) (not b!3803669) (not d!1121998) (not d!1121940) (not d!1122024) (not d!1121958) (not b!3803656) (not b!3803516) (not b!3803680) (not b!3803659) (not b!3803666) (not b!3803292) (not b!3803704) (not b!3803761) (not b_next!102055) (not b!3803721) (not b!3803672) (not b!3803506) (not bm!279156) (not bm!279159) (not b!3803684) (not b!3803759) (not b!3803547) (not b!3803671) (not b!3803285) (not d!1121994) (not d!1121852) (not b!3803786) (not d!1122040) (not b!3803654) (not d!1121980) (not d!1121934) (not b!3803675) (not b!3803770) (not d!1121942) (not b!3803333) b_and!282753 (not b!3803701) (not d!1121974) (not d!1122004) (not d!1121954) b_and!282739 (not b!3803532) (not d!1121950) (not d!1121960) (not d!1121982) (not d!1121948) (not b!3803551) (not b!3803771) (not b!3803728) (not b!3803734) (not b!3803754) (not b!3803550) (not b!3803772) (not b!3803702) (not b!3803795) (not b!3803802) (not b!3803737) (not b!3803703) (not b_next!102045) (not b!3803655) (not b!3803801) (not b!3803286) (not d!1122022) (not b!3803518) (not b_lambda!111413))
(check-sat (not b_next!102053) b_and!282749 b_and!282751 (not b_next!102047) (not b_next!102055) b_and!282753 b_and!282739 (not b_next!102045))
(get-model)

(declare-fun b!3803881 () Bool)

(declare-fun res!1540067 () Bool)

(declare-fun e!2350635 () Bool)

(assert (=> b!3803881 (=> (not res!1540067) (not e!2350635))))

(declare-fun lt!1319054 () List!40489)

(assert (=> b!3803881 (= res!1540067 (= (size!30391 lt!1319054) (+ (size!30391 (t!307218 lt!1318801)) (size!30391 (++!10134 lt!1318784 lt!1318802)))))))

(declare-fun d!1122074 () Bool)

(assert (=> d!1122074 e!2350635))

(declare-fun res!1540066 () Bool)

(assert (=> d!1122074 (=> (not res!1540066) (not e!2350635))))

(assert (=> d!1122074 (= res!1540066 (= (content!5955 lt!1319054) ((_ map or) (content!5955 (t!307218 lt!1318801)) (content!5955 (++!10134 lt!1318784 lt!1318802)))))))

(declare-fun e!2350636 () List!40489)

(assert (=> d!1122074 (= lt!1319054 e!2350636)))

(declare-fun c!661524 () Bool)

(assert (=> d!1122074 (= c!661524 ((_ is Nil!40365) (t!307218 lt!1318801)))))

(assert (=> d!1122074 (= (++!10134 (t!307218 lt!1318801) (++!10134 lt!1318784 lt!1318802)) lt!1319054)))

(declare-fun b!3803879 () Bool)

(assert (=> b!3803879 (= e!2350636 (++!10134 lt!1318784 lt!1318802))))

(declare-fun b!3803880 () Bool)

(assert (=> b!3803880 (= e!2350636 (Cons!40365 (h!45785 (t!307218 lt!1318801)) (++!10134 (t!307218 (t!307218 lt!1318801)) (++!10134 lt!1318784 lt!1318802))))))

(declare-fun b!3803882 () Bool)

(assert (=> b!3803882 (= e!2350635 (or (not (= (++!10134 lt!1318784 lt!1318802) Nil!40365)) (= lt!1319054 (t!307218 lt!1318801))))))

(assert (= (and d!1122074 c!661524) b!3803879))

(assert (= (and d!1122074 (not c!661524)) b!3803880))

(assert (= (and d!1122074 res!1540066) b!3803881))

(assert (= (and b!3803881 res!1540067) b!3803882))

(declare-fun m!4335325 () Bool)

(assert (=> b!3803881 m!4335325))

(declare-fun m!4335327 () Bool)

(assert (=> b!3803881 m!4335327))

(assert (=> b!3803881 m!4334405))

(assert (=> b!3803881 m!4334875))

(declare-fun m!4335329 () Bool)

(assert (=> d!1122074 m!4335329))

(declare-fun m!4335331 () Bool)

(assert (=> d!1122074 m!4335331))

(assert (=> d!1122074 m!4334405))

(assert (=> d!1122074 m!4334881))

(assert (=> b!3803880 m!4334405))

(declare-fun m!4335333 () Bool)

(assert (=> b!3803880 m!4335333))

(assert (=> b!3803531 d!1122074))

(declare-fun d!1122076 () Bool)

(declare-fun c!661530 () Bool)

(assert (=> d!1122076 (= c!661530 ((_ is Nil!40365) lt!1318965))))

(declare-fun e!2350644 () (InoxSet Token!11562))

(assert (=> d!1122076 (= (content!5955 lt!1318965) e!2350644)))

(declare-fun b!3803896 () Bool)

(assert (=> b!3803896 (= e!2350644 ((as const (Array Token!11562 Bool)) false))))

(declare-fun b!3803897 () Bool)

(assert (=> b!3803897 (= e!2350644 ((_ map or) (store ((as const (Array Token!11562 Bool)) false) (h!45785 lt!1318965) true) (content!5955 (t!307218 lt!1318965))))))

(assert (= (and d!1122076 c!661530) b!3803896))

(assert (= (and d!1122076 (not c!661530)) b!3803897))

(declare-fun m!4335357 () Bool)

(assert (=> b!3803897 m!4335357))

(declare-fun m!4335359 () Bool)

(assert (=> b!3803897 m!4335359))

(assert (=> d!1121980 d!1122076))

(declare-fun d!1122082 () Bool)

(declare-fun c!661531 () Bool)

(assert (=> d!1122082 (= c!661531 ((_ is Nil!40365) (++!10134 lt!1318801 lt!1318784)))))

(declare-fun e!2350645 () (InoxSet Token!11562))

(assert (=> d!1122082 (= (content!5955 (++!10134 lt!1318801 lt!1318784)) e!2350645)))

(declare-fun b!3803898 () Bool)

(assert (=> b!3803898 (= e!2350645 ((as const (Array Token!11562 Bool)) false))))

(declare-fun b!3803899 () Bool)

(assert (=> b!3803899 (= e!2350645 ((_ map or) (store ((as const (Array Token!11562 Bool)) false) (h!45785 (++!10134 lt!1318801 lt!1318784)) true) (content!5955 (t!307218 (++!10134 lt!1318801 lt!1318784)))))))

(assert (= (and d!1122082 c!661531) b!3803898))

(assert (= (and d!1122082 (not c!661531)) b!3803899))

(declare-fun m!4335361 () Bool)

(assert (=> b!3803899 m!4335361))

(declare-fun m!4335363 () Bool)

(assert (=> b!3803899 m!4335363))

(assert (=> d!1121980 d!1122082))

(declare-fun d!1122084 () Bool)

(declare-fun c!661532 () Bool)

(assert (=> d!1122084 (= c!661532 ((_ is Nil!40365) lt!1318802))))

(declare-fun e!2350646 () (InoxSet Token!11562))

(assert (=> d!1122084 (= (content!5955 lt!1318802) e!2350646)))

(declare-fun b!3803900 () Bool)

(assert (=> b!3803900 (= e!2350646 ((as const (Array Token!11562 Bool)) false))))

(declare-fun b!3803901 () Bool)

(assert (=> b!3803901 (= e!2350646 ((_ map or) (store ((as const (Array Token!11562 Bool)) false) (h!45785 lt!1318802) true) (content!5955 (t!307218 lt!1318802))))))

(assert (= (and d!1122084 c!661532) b!3803900))

(assert (= (and d!1122084 (not c!661532)) b!3803901))

(declare-fun m!4335365 () Bool)

(assert (=> b!3803901 m!4335365))

(declare-fun m!4335367 () Bool)

(assert (=> b!3803901 m!4335367))

(assert (=> d!1121980 d!1122084))

(declare-fun d!1122086 () Bool)

(assert (=> d!1122086 (= (list!14992 (_2!22881 lt!1318972)) (list!14996 (c!661414 (_2!22881 lt!1318972))))))

(declare-fun bs!579696 () Bool)

(assert (= bs!579696 d!1122086))

(declare-fun m!4335369 () Bool)

(assert (=> bs!579696 m!4335369))

(assert (=> b!3803705 d!1122086))

(assert (=> b!3803705 d!1121996))

(declare-fun d!1122088 () Bool)

(declare-fun c!661534 () Bool)

(assert (=> d!1122088 (= c!661534 ((_ is Nil!40365) lt!1318961))))

(declare-fun e!2350648 () (InoxSet Token!11562))

(assert (=> d!1122088 (= (content!5955 lt!1318961) e!2350648)))

(declare-fun b!3803906 () Bool)

(assert (=> b!3803906 (= e!2350648 ((as const (Array Token!11562 Bool)) false))))

(declare-fun b!3803907 () Bool)

(assert (=> b!3803907 (= e!2350648 ((_ map or) (store ((as const (Array Token!11562 Bool)) false) (h!45785 lt!1318961) true) (content!5955 (t!307218 lt!1318961))))))

(assert (= (and d!1122088 c!661534) b!3803906))

(assert (= (and d!1122088 (not c!661534)) b!3803907))

(declare-fun m!4335371 () Bool)

(assert (=> b!3803907 m!4335371))

(declare-fun m!4335373 () Bool)

(assert (=> b!3803907 m!4335373))

(assert (=> d!1121976 d!1122088))

(declare-fun d!1122090 () Bool)

(declare-fun c!661536 () Bool)

(assert (=> d!1122090 (= c!661536 ((_ is Nil!40365) lt!1318801))))

(declare-fun e!2350650 () (InoxSet Token!11562))

(assert (=> d!1122090 (= (content!5955 lt!1318801) e!2350650)))

(declare-fun b!3803908 () Bool)

(assert (=> b!3803908 (= e!2350650 ((as const (Array Token!11562 Bool)) false))))

(declare-fun b!3803909 () Bool)

(assert (=> b!3803909 (= e!2350650 ((_ map or) (store ((as const (Array Token!11562 Bool)) false) (h!45785 lt!1318801) true) (content!5955 (t!307218 lt!1318801))))))

(assert (= (and d!1122090 c!661536) b!3803908))

(assert (= (and d!1122090 (not c!661536)) b!3803909))

(declare-fun m!4335375 () Bool)

(assert (=> b!3803909 m!4335375))

(assert (=> b!3803909 m!4335331))

(assert (=> d!1121976 d!1122090))

(declare-fun d!1122092 () Bool)

(declare-fun c!661537 () Bool)

(assert (=> d!1122092 (= c!661537 ((_ is Nil!40365) lt!1318784))))

(declare-fun e!2350651 () (InoxSet Token!11562))

(assert (=> d!1122092 (= (content!5955 lt!1318784) e!2350651)))

(declare-fun b!3803910 () Bool)

(assert (=> b!3803910 (= e!2350651 ((as const (Array Token!11562 Bool)) false))))

(declare-fun b!3803911 () Bool)

(assert (=> b!3803911 (= e!2350651 ((_ map or) (store ((as const (Array Token!11562 Bool)) false) (h!45785 lt!1318784) true) (content!5955 (t!307218 lt!1318784))))))

(assert (= (and d!1122092 c!661537) b!3803910))

(assert (= (and d!1122092 (not c!661537)) b!3803911))

(declare-fun m!4335377 () Bool)

(assert (=> b!3803911 m!4335377))

(declare-fun m!4335379 () Bool)

(assert (=> b!3803911 m!4335379))

(assert (=> d!1121976 d!1122092))

(assert (=> b!3803286 d!1122006))

(declare-fun b!3803934 () Bool)

(declare-fun e!2350664 () List!40489)

(assert (=> b!3803934 (= e!2350664 Nil!40365)))

(declare-fun b!3803936 () Bool)

(declare-fun e!2350665 () List!40489)

(declare-fun list!14999 (IArray!24803) List!40489)

(assert (=> b!3803936 (= e!2350665 (list!14999 (xs!15665 (c!661415 (append!1060 acc!335 (_1!22882 (v!38847 lt!1318792)))))))))

(declare-fun b!3803937 () Bool)

(assert (=> b!3803937 (= e!2350665 (++!10134 (list!14995 (left!31230 (c!661415 (append!1060 acc!335 (_1!22882 (v!38847 lt!1318792)))))) (list!14995 (right!31560 (c!661415 (append!1060 acc!335 (_1!22882 (v!38847 lt!1318792))))))))))

(declare-fun d!1122094 () Bool)

(declare-fun c!661547 () Bool)

(assert (=> d!1122094 (= c!661547 ((_ is Empty!12399) (c!661415 (append!1060 acc!335 (_1!22882 (v!38847 lt!1318792))))))))

(assert (=> d!1122094 (= (list!14995 (c!661415 (append!1060 acc!335 (_1!22882 (v!38847 lt!1318792))))) e!2350664)))

(declare-fun b!3803935 () Bool)

(assert (=> b!3803935 (= e!2350664 e!2350665)))

(declare-fun c!661548 () Bool)

(assert (=> b!3803935 (= c!661548 ((_ is Leaf!19203) (c!661415 (append!1060 acc!335 (_1!22882 (v!38847 lt!1318792))))))))

(assert (= (and d!1122094 c!661547) b!3803934))

(assert (= (and d!1122094 (not c!661547)) b!3803935))

(assert (= (and b!3803935 c!661548) b!3803936))

(assert (= (and b!3803935 (not c!661548)) b!3803937))

(declare-fun m!4335397 () Bool)

(assert (=> b!3803936 m!4335397))

(declare-fun m!4335399 () Bool)

(assert (=> b!3803937 m!4335399))

(declare-fun m!4335401 () Bool)

(assert (=> b!3803937 m!4335401))

(assert (=> b!3803937 m!4335399))

(assert (=> b!3803937 m!4335401))

(declare-fun m!4335411 () Bool)

(assert (=> b!3803937 m!4335411))

(assert (=> d!1121956 d!1122094))

(declare-fun d!1122108 () Bool)

(assert (=> d!1122108 (= (list!14992 (_2!22881 lt!1318963)) (list!14996 (c!661414 (_2!22881 lt!1318963))))))

(declare-fun bs!579699 () Bool)

(assert (= bs!579699 d!1122108))

(declare-fun m!4335421 () Bool)

(assert (=> bs!579699 m!4335421))

(assert (=> b!3803674 d!1122108))

(assert (=> b!3803674 d!1121974))

(declare-fun d!1122110 () Bool)

(declare-fun lt!1319070 () Int)

(assert (=> d!1122110 (= lt!1319070 (size!30392 (list!14992 (_2!22881 lt!1318896))))))

(declare-fun size!30395 (Conc!12398) Int)

(assert (=> d!1122110 (= lt!1319070 (size!30395 (c!661414 (_2!22881 lt!1318896))))))

(assert (=> d!1122110 (= (size!30389 (_2!22881 lt!1318896)) lt!1319070)))

(declare-fun bs!579700 () Bool)

(assert (= bs!579700 d!1122110))

(assert (=> bs!579700 m!4334825))

(assert (=> bs!579700 m!4334825))

(declare-fun m!4335429 () Bool)

(assert (=> bs!579700 m!4335429))

(declare-fun m!4335431 () Bool)

(assert (=> bs!579700 m!4335431))

(assert (=> b!3803506 d!1122110))

(declare-fun d!1122114 () Bool)

(declare-fun lt!1319071 () Int)

(assert (=> d!1122114 (= lt!1319071 (size!30392 (list!14992 totalInput!335)))))

(assert (=> d!1122114 (= lt!1319071 (size!30395 (c!661414 totalInput!335)))))

(assert (=> d!1122114 (= (size!30389 totalInput!335) lt!1319071)))

(declare-fun bs!579701 () Bool)

(assert (= bs!579701 d!1122114))

(assert (=> bs!579701 m!4334433))

(assert (=> bs!579701 m!4334433))

(declare-fun m!4335433 () Bool)

(assert (=> bs!579701 m!4335433))

(declare-fun m!4335435 () Bool)

(assert (=> bs!579701 m!4335435))

(assert (=> b!3803506 d!1122114))

(declare-fun b!3803991 () Bool)

(declare-fun e!2350698 () List!40487)

(assert (=> b!3803991 (= e!2350698 Nil!40363)))

(declare-fun b!3803992 () Bool)

(declare-fun e!2350696 () List!40487)

(assert (=> b!3803992 (= e!2350696 lt!1318800)))

(declare-fun b!3803993 () Bool)

(declare-fun e!2350695 () Int)

(declare-fun e!2350697 () Int)

(assert (=> b!3803993 (= e!2350695 e!2350697)))

(declare-fun c!661574 () Bool)

(declare-fun call!279174 () Int)

(assert (=> b!3803993 (= c!661574 (>= (- (size!30392 lt!1318800) (size!30392 lt!1318797)) call!279174))))

(declare-fun b!3803994 () Bool)

(assert (=> b!3803994 (= e!2350696 (drop!2121 (t!307216 lt!1318800) (- (- (size!30392 lt!1318800) (size!30392 lt!1318797)) 1)))))

(declare-fun b!3803995 () Bool)

(assert (=> b!3803995 (= e!2350695 call!279174)))

(declare-fun b!3803996 () Bool)

(declare-fun e!2350699 () Bool)

(declare-fun lt!1319079 () List!40487)

(assert (=> b!3803996 (= e!2350699 (= (size!30392 lt!1319079) e!2350695))))

(declare-fun c!661573 () Bool)

(assert (=> b!3803996 (= c!661573 (<= (- (size!30392 lt!1318800) (size!30392 lt!1318797)) 0))))

(declare-fun b!3803997 () Bool)

(assert (=> b!3803997 (= e!2350698 e!2350696)))

(declare-fun c!661575 () Bool)

(assert (=> b!3803997 (= c!661575 (<= (- (size!30392 lt!1318800) (size!30392 lt!1318797)) 0))))

(declare-fun b!3803998 () Bool)

(assert (=> b!3803998 (= e!2350697 0)))

(declare-fun b!3803999 () Bool)

(assert (=> b!3803999 (= e!2350697 (- call!279174 (- (size!30392 lt!1318800) (size!30392 lt!1318797))))))

(declare-fun d!1122116 () Bool)

(assert (=> d!1122116 e!2350699))

(declare-fun res!1540080 () Bool)

(assert (=> d!1122116 (=> (not res!1540080) (not e!2350699))))

(assert (=> d!1122116 (= res!1540080 (= ((_ map implies) (content!5956 lt!1319079) (content!5956 lt!1318800)) ((as const (InoxSet C!22420)) true)))))

(assert (=> d!1122116 (= lt!1319079 e!2350698)))

(declare-fun c!661576 () Bool)

(assert (=> d!1122116 (= c!661576 ((_ is Nil!40363) lt!1318800))))

(assert (=> d!1122116 (= (drop!2121 lt!1318800 (- (size!30392 lt!1318800) (size!30392 lt!1318797))) lt!1319079)))

(declare-fun bm!279169 () Bool)

(assert (=> bm!279169 (= call!279174 (size!30392 lt!1318800))))

(assert (= (and d!1122116 c!661576) b!3803991))

(assert (= (and d!1122116 (not c!661576)) b!3803997))

(assert (= (and b!3803997 c!661575) b!3803992))

(assert (= (and b!3803997 (not c!661575)) b!3803994))

(assert (= (and d!1122116 res!1540080) b!3803996))

(assert (= (and b!3803996 c!661573) b!3803995))

(assert (= (and b!3803996 (not c!661573)) b!3803993))

(assert (= (and b!3803993 c!661574) b!3803998))

(assert (= (and b!3803993 (not c!661574)) b!3803999))

(assert (= (or b!3803995 b!3803993 b!3803999) bm!279169))

(declare-fun m!4335449 () Bool)

(assert (=> b!3803994 m!4335449))

(declare-fun m!4335451 () Bool)

(assert (=> b!3803996 m!4335451))

(declare-fun m!4335453 () Bool)

(assert (=> d!1122116 m!4335453))

(declare-fun m!4335455 () Bool)

(assert (=> d!1122116 m!4335455))

(assert (=> bm!279169 m!4335141))

(assert (=> d!1122016 d!1122116))

(declare-fun d!1122124 () Bool)

(declare-fun lt!1319083 () Int)

(assert (=> d!1122124 (>= lt!1319083 0)))

(declare-fun e!2350707 () Int)

(assert (=> d!1122124 (= lt!1319083 e!2350707)))

(declare-fun c!661583 () Bool)

(assert (=> d!1122124 (= c!661583 ((_ is Nil!40363) lt!1318800))))

(assert (=> d!1122124 (= (size!30392 lt!1318800) lt!1319083)))

(declare-fun b!3804014 () Bool)

(assert (=> b!3804014 (= e!2350707 0)))

(declare-fun b!3804015 () Bool)

(assert (=> b!3804015 (= e!2350707 (+ 1 (size!30392 (t!307216 lt!1318800))))))

(assert (= (and d!1122124 c!661583) b!3804014))

(assert (= (and d!1122124 (not c!661583)) b!3804015))

(declare-fun m!4335479 () Bool)

(assert (=> b!3804015 m!4335479))

(assert (=> d!1122016 d!1122124))

(declare-fun d!1122134 () Bool)

(declare-fun lt!1319084 () Int)

(assert (=> d!1122134 (>= lt!1319084 0)))

(declare-fun e!2350708 () Int)

(assert (=> d!1122134 (= lt!1319084 e!2350708)))

(declare-fun c!661584 () Bool)

(assert (=> d!1122134 (= c!661584 ((_ is Nil!40363) lt!1318797))))

(assert (=> d!1122134 (= (size!30392 lt!1318797) lt!1319084)))

(declare-fun b!3804016 () Bool)

(assert (=> b!3804016 (= e!2350708 0)))

(declare-fun b!3804017 () Bool)

(assert (=> b!3804017 (= e!2350708 (+ 1 (size!30392 (t!307216 lt!1318797))))))

(assert (= (and d!1122134 c!661584) b!3804016))

(assert (= (and d!1122134 (not c!661584)) b!3804017))

(declare-fun m!4335481 () Bool)

(assert (=> b!3804017 m!4335481))

(assert (=> d!1122016 d!1122134))

(declare-fun b!3804042 () Bool)

(declare-fun e!2350719 () Bool)

(declare-fun isEmpty!23771 (Conc!12399) Bool)

(assert (=> b!3804042 (= e!2350719 (not (isEmpty!23771 (right!31560 (prepend!1358 (c!661415 (_1!22881 lt!1318805)) (_1!22882 (v!38847 lt!1318793)))))))))

(declare-fun b!3804043 () Bool)

(declare-fun res!1540099 () Bool)

(assert (=> b!3804043 (=> (not res!1540099) (not e!2350719))))

(assert (=> b!3804043 (= res!1540099 (<= (- (height!1794 (left!31230 (prepend!1358 (c!661415 (_1!22881 lt!1318805)) (_1!22882 (v!38847 lt!1318793))))) (height!1794 (right!31560 (prepend!1358 (c!661415 (_1!22881 lt!1318805)) (_1!22882 (v!38847 lt!1318793)))))) 1))))

(declare-fun b!3804044 () Bool)

(declare-fun res!1540098 () Bool)

(assert (=> b!3804044 (=> (not res!1540098) (not e!2350719))))

(assert (=> b!3804044 (= res!1540098 (isBalanced!3576 (left!31230 (prepend!1358 (c!661415 (_1!22881 lt!1318805)) (_1!22882 (v!38847 lt!1318793))))))))

(declare-fun b!3804045 () Bool)

(declare-fun e!2350720 () Bool)

(assert (=> b!3804045 (= e!2350720 e!2350719)))

(declare-fun res!1540097 () Bool)

(assert (=> b!3804045 (=> (not res!1540097) (not e!2350719))))

(assert (=> b!3804045 (= res!1540097 (<= (- 1) (- (height!1794 (left!31230 (prepend!1358 (c!661415 (_1!22881 lt!1318805)) (_1!22882 (v!38847 lt!1318793))))) (height!1794 (right!31560 (prepend!1358 (c!661415 (_1!22881 lt!1318805)) (_1!22882 (v!38847 lt!1318793))))))))))

(declare-fun b!3804046 () Bool)

(declare-fun res!1540100 () Bool)

(assert (=> b!3804046 (=> (not res!1540100) (not e!2350719))))

(assert (=> b!3804046 (= res!1540100 (not (isEmpty!23771 (left!31230 (prepend!1358 (c!661415 (_1!22881 lt!1318805)) (_1!22882 (v!38847 lt!1318793)))))))))

(declare-fun d!1122136 () Bool)

(declare-fun res!1540096 () Bool)

(assert (=> d!1122136 (=> res!1540096 e!2350720)))

(assert (=> d!1122136 (= res!1540096 (not ((_ is Node!12399) (prepend!1358 (c!661415 (_1!22881 lt!1318805)) (_1!22882 (v!38847 lt!1318793))))))))

(assert (=> d!1122136 (= (isBalanced!3576 (prepend!1358 (c!661415 (_1!22881 lt!1318805)) (_1!22882 (v!38847 lt!1318793)))) e!2350720)))

(declare-fun b!3804047 () Bool)

(declare-fun res!1540095 () Bool)

(assert (=> b!3804047 (=> (not res!1540095) (not e!2350719))))

(assert (=> b!3804047 (= res!1540095 (isBalanced!3576 (right!31560 (prepend!1358 (c!661415 (_1!22881 lt!1318805)) (_1!22882 (v!38847 lt!1318793))))))))

(assert (= (and d!1122136 (not res!1540096)) b!3804045))

(assert (= (and b!3804045 res!1540097) b!3804043))

(assert (= (and b!3804043 res!1540099) b!3804044))

(assert (= (and b!3804044 res!1540098) b!3804047))

(assert (= (and b!3804047 res!1540095) b!3804046))

(assert (= (and b!3804046 res!1540100) b!3804042))

(declare-fun m!4335491 () Bool)

(assert (=> b!3804043 m!4335491))

(declare-fun m!4335493 () Bool)

(assert (=> b!3804043 m!4335493))

(declare-fun m!4335495 () Bool)

(assert (=> b!3804044 m!4335495))

(declare-fun m!4335497 () Bool)

(assert (=> b!3804042 m!4335497))

(assert (=> b!3804045 m!4335491))

(assert (=> b!3804045 m!4335493))

(declare-fun m!4335499 () Bool)

(assert (=> b!3804046 m!4335499))

(declare-fun m!4335501 () Bool)

(assert (=> b!3804047 m!4335501))

(assert (=> d!1122022 d!1122136))

(declare-fun d!1122144 () Bool)

(declare-fun e!2350723 () Bool)

(assert (=> d!1122144 e!2350723))

(declare-fun res!1540103 () Bool)

(assert (=> d!1122144 (=> (not res!1540103) (not e!2350723))))

(declare-fun lt!1319087 () Conc!12399)

(assert (=> d!1122144 (= res!1540103 (isBalanced!3576 lt!1319087))))

(declare-fun fill!187 (Int Token!11562) IArray!24803)

(assert (=> d!1122144 (= lt!1319087 (++!10136 (Leaf!19203 (fill!187 1 (_1!22882 (v!38847 lt!1318793))) 1) (c!661415 (_1!22881 lt!1318805))))))

(assert (=> d!1122144 (isBalanced!3576 (c!661415 (_1!22881 lt!1318805)))))

(assert (=> d!1122144 (= (prepend!1358 (c!661415 (_1!22881 lt!1318805)) (_1!22882 (v!38847 lt!1318793))) lt!1319087)))

(declare-fun b!3804050 () Bool)

(assert (=> b!3804050 (= e!2350723 (= (list!14995 lt!1319087) (Cons!40365 (_1!22882 (v!38847 lt!1318793)) (list!14995 (c!661415 (_1!22881 lt!1318805))))))))

(assert (= (and d!1122144 res!1540103) b!3804050))

(declare-fun m!4335503 () Bool)

(assert (=> d!1122144 m!4335503))

(declare-fun m!4335505 () Bool)

(assert (=> d!1122144 m!4335505))

(declare-fun m!4335507 () Bool)

(assert (=> d!1122144 m!4335507))

(declare-fun m!4335509 () Bool)

(assert (=> d!1122144 m!4335509))

(declare-fun m!4335511 () Bool)

(assert (=> b!3804050 m!4335511))

(declare-fun m!4335513 () Bool)

(assert (=> b!3804050 m!4335513))

(assert (=> d!1122022 d!1122144))

(declare-fun d!1122146 () Bool)

(declare-fun c!661593 () Bool)

(assert (=> d!1122146 (= c!661593 ((_ is Nil!40363) lt!1318970))))

(declare-fun e!2350726 () (InoxSet C!22420))

(assert (=> d!1122146 (= (content!5956 lt!1318970) e!2350726)))

(declare-fun b!3804055 () Bool)

(assert (=> b!3804055 (= e!2350726 ((as const (Array C!22420 Bool)) false))))

(declare-fun b!3804056 () Bool)

(assert (=> b!3804056 (= e!2350726 ((_ map or) (store ((as const (Array C!22420 Bool)) false) (h!45783 lt!1318970) true) (content!5956 (t!307216 lt!1318970))))))

(assert (= (and d!1122146 c!661593) b!3804055))

(assert (= (and d!1122146 (not c!661593)) b!3804056))

(declare-fun m!4335515 () Bool)

(assert (=> b!3804056 m!4335515))

(declare-fun m!4335517 () Bool)

(assert (=> b!3804056 m!4335517))

(assert (=> d!1121990 d!1122146))

(declare-fun d!1122148 () Bool)

(declare-fun c!661594 () Bool)

(assert (=> d!1122148 (= c!661594 ((_ is Nil!40363) lt!1318796))))

(declare-fun e!2350727 () (InoxSet C!22420))

(assert (=> d!1122148 (= (content!5956 lt!1318796) e!2350727)))

(declare-fun b!3804057 () Bool)

(assert (=> b!3804057 (= e!2350727 ((as const (Array C!22420 Bool)) false))))

(declare-fun b!3804058 () Bool)

(assert (=> b!3804058 (= e!2350727 ((_ map or) (store ((as const (Array C!22420 Bool)) false) (h!45783 lt!1318796) true) (content!5956 (t!307216 lt!1318796))))))

(assert (= (and d!1122148 c!661594) b!3804057))

(assert (= (and d!1122148 (not c!661594)) b!3804058))

(declare-fun m!4335519 () Bool)

(assert (=> b!3804058 m!4335519))

(declare-fun m!4335521 () Bool)

(assert (=> b!3804058 m!4335521))

(assert (=> d!1121990 d!1122148))

(declare-fun d!1122150 () Bool)

(declare-fun c!661595 () Bool)

(assert (=> d!1122150 (= c!661595 ((_ is Nil!40363) lt!1318797))))

(declare-fun e!2350728 () (InoxSet C!22420))

(assert (=> d!1122150 (= (content!5956 lt!1318797) e!2350728)))

(declare-fun b!3804059 () Bool)

(assert (=> b!3804059 (= e!2350728 ((as const (Array C!22420 Bool)) false))))

(declare-fun b!3804060 () Bool)

(assert (=> b!3804060 (= e!2350728 ((_ map or) (store ((as const (Array C!22420 Bool)) false) (h!45783 lt!1318797) true) (content!5956 (t!307216 lt!1318797))))))

(assert (= (and d!1122150 c!661595) b!3804059))

(assert (= (and d!1122150 (not c!661595)) b!3804060))

(declare-fun m!4335523 () Bool)

(assert (=> b!3804060 m!4335523))

(declare-fun m!4335525 () Bool)

(assert (=> b!3804060 m!4335525))

(assert (=> d!1121990 d!1122150))

(declare-fun d!1122152 () Bool)

(declare-fun lt!1319088 () Int)

(assert (=> d!1122152 (= lt!1319088 (size!30392 (list!14992 (_2!22881 lt!1318985))))))

(assert (=> d!1122152 (= lt!1319088 (size!30395 (c!661414 (_2!22881 lt!1318985))))))

(assert (=> d!1122152 (= (size!30389 (_2!22881 lt!1318985)) lt!1319088)))

(declare-fun bs!579702 () Bool)

(assert (= bs!579702 d!1122152))

(assert (=> bs!579702 m!4335161))

(assert (=> bs!579702 m!4335161))

(declare-fun m!4335527 () Bool)

(assert (=> bs!579702 m!4335527))

(declare-fun m!4335529 () Bool)

(assert (=> bs!579702 m!4335529))

(assert (=> b!3803726 d!1122152))

(declare-fun d!1122154 () Bool)

(declare-fun lt!1319089 () Int)

(assert (=> d!1122154 (= lt!1319089 (size!30392 (list!14992 (_2!22882 (v!38847 lt!1318793)))))))

(assert (=> d!1122154 (= lt!1319089 (size!30395 (c!661414 (_2!22882 (v!38847 lt!1318793)))))))

(assert (=> d!1122154 (= (size!30389 (_2!22882 (v!38847 lt!1318793))) lt!1319089)))

(declare-fun bs!579703 () Bool)

(assert (= bs!579703 d!1122154))

(assert (=> bs!579703 m!4335163))

(assert (=> bs!579703 m!4335163))

(declare-fun m!4335531 () Bool)

(assert (=> bs!579703 m!4335531))

(declare-fun m!4335533 () Bool)

(assert (=> bs!579703 m!4335533))

(assert (=> b!3803726 d!1122154))

(declare-fun d!1122156 () Bool)

(assert (=> d!1122156 true))

(declare-fun order!22025 () Int)

(declare-fun lambda!125661 () Int)

(declare-fun order!22023 () Int)

(declare-fun dynLambda!17447 (Int Int) Int)

(declare-fun dynLambda!17448 (Int Int) Int)

(assert (=> d!1122156 (< (dynLambda!17447 order!22023 (toChars!8455 (transformation!6212 (h!45784 rules!1265)))) (dynLambda!17448 order!22025 lambda!125661))))

(assert (=> d!1122156 true))

(declare-fun order!22027 () Int)

(declare-fun dynLambda!17449 (Int Int) Int)

(assert (=> d!1122156 (< (dynLambda!17449 order!22027 (toValue!8596 (transformation!6212 (h!45784 rules!1265)))) (dynLambda!17448 order!22025 lambda!125661))))

(declare-fun Forall!1416 (Int) Bool)

(assert (=> d!1122156 (= (semiInverseModEq!2659 (toChars!8455 (transformation!6212 (h!45784 rules!1265))) (toValue!8596 (transformation!6212 (h!45784 rules!1265)))) (Forall!1416 lambda!125661))))

(declare-fun bs!579728 () Bool)

(assert (= bs!579728 d!1122156))

(declare-fun m!4336077 () Bool)

(assert (=> bs!579728 m!4336077))

(assert (=> d!1121940 d!1122156))

(declare-fun d!1122342 () Bool)

(assert (=> d!1122342 (= (inv!54342 (xs!15664 (c!661414 treated!13))) (<= (size!30392 (innerList!12458 (xs!15664 (c!661414 treated!13)))) 2147483647))))

(declare-fun bs!579729 () Bool)

(assert (= bs!579729 d!1122342))

(declare-fun m!4336079 () Bool)

(assert (=> bs!579729 m!4336079))

(assert (=> b!3803799 d!1122342))

(declare-fun d!1122344 () Bool)

(declare-fun isEmpty!23772 (Option!8624) Bool)

(assert (=> d!1122344 (= (isDefined!6786 lt!1319007) (not (isEmpty!23772 lt!1319007)))))

(declare-fun bs!579730 () Bool)

(assert (= bs!579730 d!1122344))

(declare-fun m!4336081 () Bool)

(assert (=> bs!579730 m!4336081))

(assert (=> b!3803760 d!1122344))

(declare-fun d!1122346 () Bool)

(declare-fun e!2350934 () Bool)

(assert (=> d!1122346 e!2350934))

(declare-fun res!1540285 () Bool)

(assert (=> d!1122346 (=> (not res!1540285) (not e!2350934))))

(assert (=> d!1122346 (= res!1540285 (isBalanced!3576 (prepend!1358 (c!661415 (_1!22881 lt!1318898)) (_1!22882 (v!38847 lt!1318900)))))))

(declare-fun lt!1319226 () BalanceConc!24392)

(assert (=> d!1122346 (= lt!1319226 (BalanceConc!24393 (prepend!1358 (c!661415 (_1!22881 lt!1318898)) (_1!22882 (v!38847 lt!1318900)))))))

(assert (=> d!1122346 (= (prepend!1356 (_1!22881 lt!1318898) (_1!22882 (v!38847 lt!1318900))) lt!1319226)))

(declare-fun b!3804468 () Bool)

(assert (=> b!3804468 (= e!2350934 (= (list!14991 lt!1319226) (Cons!40365 (_1!22882 (v!38847 lt!1318900)) (list!14991 (_1!22881 lt!1318898)))))))

(assert (= (and d!1122346 res!1540285) b!3804468))

(declare-fun m!4336083 () Bool)

(assert (=> d!1122346 m!4336083))

(assert (=> d!1122346 m!4336083))

(declare-fun m!4336085 () Bool)

(assert (=> d!1122346 m!4336085))

(declare-fun m!4336087 () Bool)

(assert (=> b!3804468 m!4336087))

(declare-fun m!4336089 () Bool)

(assert (=> b!3804468 m!4336089))

(assert (=> b!3803518 d!1122346))

(declare-fun b!3804469 () Bool)

(declare-fun e!2350937 () Bool)

(declare-fun lt!1319228 () tuple2!39494)

(assert (=> b!3804469 (= e!2350937 (not (isEmpty!23766 (_1!22881 lt!1319228))))))

(declare-fun b!3804470 () Bool)

(declare-fun e!2350938 () Bool)

(assert (=> b!3804470 (= e!2350938 e!2350937)))

(declare-fun res!1540288 () Bool)

(assert (=> b!3804470 (= res!1540288 (< (size!30389 (_2!22881 lt!1319228)) (size!30389 (_2!22882 (v!38847 lt!1318900)))))))

(assert (=> b!3804470 (=> (not res!1540288) (not e!2350937))))

(declare-fun e!2350936 () Bool)

(declare-fun b!3804471 () Bool)

(assert (=> b!3804471 (= e!2350936 (= (list!14992 (_2!22881 lt!1319228)) (_2!22885 (lexList!1571 thiss!11876 rules!1265 (list!14992 (_2!22882 (v!38847 lt!1318900)))))))))

(declare-fun d!1122348 () Bool)

(assert (=> d!1122348 e!2350936))

(declare-fun res!1540287 () Bool)

(assert (=> d!1122348 (=> (not res!1540287) (not e!2350936))))

(assert (=> d!1122348 (= res!1540287 e!2350938)))

(declare-fun c!661704 () Bool)

(assert (=> d!1122348 (= c!661704 (> (size!30390 (_1!22881 lt!1319228)) 0))))

(declare-fun e!2350935 () tuple2!39494)

(assert (=> d!1122348 (= lt!1319228 e!2350935)))

(declare-fun c!661705 () Bool)

(declare-fun lt!1319229 () Option!8624)

(assert (=> d!1122348 (= c!661705 ((_ is Some!8623) lt!1319229))))

(assert (=> d!1122348 (= lt!1319229 (maxPrefixZipperSequence!1207 thiss!11876 rules!1265 (_2!22882 (v!38847 lt!1318900))))))

(assert (=> d!1122348 (= (lexRec!825 thiss!11876 rules!1265 (_2!22882 (v!38847 lt!1318900))) lt!1319228)))

(declare-fun b!3804472 () Bool)

(assert (=> b!3804472 (= e!2350938 (= (list!14992 (_2!22881 lt!1319228)) (list!14992 (_2!22882 (v!38847 lt!1318900)))))))

(declare-fun b!3804473 () Bool)

(declare-fun res!1540286 () Bool)

(assert (=> b!3804473 (=> (not res!1540286) (not e!2350936))))

(assert (=> b!3804473 (= res!1540286 (= (list!14991 (_1!22881 lt!1319228)) (_1!22885 (lexList!1571 thiss!11876 rules!1265 (list!14992 (_2!22882 (v!38847 lt!1318900)))))))))

(declare-fun b!3804474 () Bool)

(assert (=> b!3804474 (= e!2350935 (tuple2!39495 (BalanceConc!24393 Empty!12399) (_2!22882 (v!38847 lt!1318900))))))

(declare-fun b!3804475 () Bool)

(declare-fun lt!1319227 () tuple2!39494)

(assert (=> b!3804475 (= e!2350935 (tuple2!39495 (prepend!1356 (_1!22881 lt!1319227) (_1!22882 (v!38847 lt!1319229))) (_2!22881 lt!1319227)))))

(assert (=> b!3804475 (= lt!1319227 (lexRec!825 thiss!11876 rules!1265 (_2!22882 (v!38847 lt!1319229))))))

(assert (= (and d!1122348 c!661705) b!3804475))

(assert (= (and d!1122348 (not c!661705)) b!3804474))

(assert (= (and d!1122348 c!661704) b!3804470))

(assert (= (and d!1122348 (not c!661704)) b!3804472))

(assert (= (and b!3804470 res!1540288) b!3804469))

(assert (= (and d!1122348 res!1540287) b!3804473))

(assert (= (and b!3804473 res!1540286) b!3804471))

(declare-fun m!4336091 () Bool)

(assert (=> b!3804471 m!4336091))

(declare-fun m!4336093 () Bool)

(assert (=> b!3804471 m!4336093))

(assert (=> b!3804471 m!4336093))

(declare-fun m!4336095 () Bool)

(assert (=> b!3804471 m!4336095))

(declare-fun m!4336097 () Bool)

(assert (=> b!3804469 m!4336097))

(declare-fun m!4336099 () Bool)

(assert (=> b!3804470 m!4336099))

(declare-fun m!4336101 () Bool)

(assert (=> b!3804470 m!4336101))

(declare-fun m!4336103 () Bool)

(assert (=> b!3804473 m!4336103))

(assert (=> b!3804473 m!4336093))

(assert (=> b!3804473 m!4336093))

(assert (=> b!3804473 m!4336095))

(declare-fun m!4336105 () Bool)

(assert (=> b!3804475 m!4336105))

(declare-fun m!4336107 () Bool)

(assert (=> b!3804475 m!4336107))

(declare-fun m!4336109 () Bool)

(assert (=> d!1122348 m!4336109))

(declare-fun m!4336111 () Bool)

(assert (=> d!1122348 m!4336111))

(assert (=> b!3804472 m!4336091))

(assert (=> b!3804472 m!4336093))

(assert (=> b!3803518 d!1122348))

(declare-fun d!1122350 () Bool)

(declare-fun res!1540295 () Bool)

(declare-fun e!2350941 () Bool)

(assert (=> d!1122350 (=> (not res!1540295) (not e!2350941))))

(assert (=> d!1122350 (= res!1540295 (= (csize!25026 (c!661414 input!678)) (+ (size!30395 (left!31229 (c!661414 input!678))) (size!30395 (right!31559 (c!661414 input!678))))))))

(assert (=> d!1122350 (= (inv!54337 (c!661414 input!678)) e!2350941)))

(declare-fun b!3804482 () Bool)

(declare-fun res!1540296 () Bool)

(assert (=> b!3804482 (=> (not res!1540296) (not e!2350941))))

(assert (=> b!3804482 (= res!1540296 (and (not (= (left!31229 (c!661414 input!678)) Empty!12398)) (not (= (right!31559 (c!661414 input!678)) Empty!12398))))))

(declare-fun b!3804483 () Bool)

(declare-fun res!1540297 () Bool)

(assert (=> b!3804483 (=> (not res!1540297) (not e!2350941))))

(declare-fun height!1796 (Conc!12398) Int)

(assert (=> b!3804483 (= res!1540297 (= (cheight!12609 (c!661414 input!678)) (+ (max!0 (height!1796 (left!31229 (c!661414 input!678))) (height!1796 (right!31559 (c!661414 input!678)))) 1)))))

(declare-fun b!3804484 () Bool)

(assert (=> b!3804484 (= e!2350941 (<= 0 (cheight!12609 (c!661414 input!678))))))

(assert (= (and d!1122350 res!1540295) b!3804482))

(assert (= (and b!3804482 res!1540296) b!3804483))

(assert (= (and b!3804483 res!1540297) b!3804484))

(declare-fun m!4336113 () Bool)

(assert (=> d!1122350 m!4336113))

(declare-fun m!4336115 () Bool)

(assert (=> d!1122350 m!4336115))

(declare-fun m!4336117 () Bool)

(assert (=> b!3804483 m!4336117))

(declare-fun m!4336119 () Bool)

(assert (=> b!3804483 m!4336119))

(assert (=> b!3804483 m!4336117))

(assert (=> b!3804483 m!4336119))

(declare-fun m!4336121 () Bool)

(assert (=> b!3804483 m!4336121))

(assert (=> b!3803732 d!1122350))

(declare-fun d!1122352 () Bool)

(assert (=> d!1122352 (= (list!14992 (_2!22881 lt!1318899)) (list!14996 (c!661414 (_2!22881 lt!1318899))))))

(declare-fun bs!579731 () Bool)

(assert (= bs!579731 d!1122352))

(declare-fun m!4336123 () Bool)

(assert (=> bs!579731 m!4336123))

(assert (=> b!3803514 d!1122352))

(declare-fun b!3804495 () Bool)

(declare-fun e!2350948 () Bool)

(declare-fun lt!1319236 () tuple2!39502)

(assert (=> b!3804495 (= e!2350948 (= (_2!22885 lt!1319236) (list!14992 input!678)))))

(declare-fun b!3804496 () Bool)

(declare-fun e!2350949 () Bool)

(assert (=> b!3804496 (= e!2350948 e!2350949)))

(declare-fun res!1540300 () Bool)

(assert (=> b!3804496 (= res!1540300 (< (size!30392 (_2!22885 lt!1319236)) (size!30392 (list!14992 input!678))))))

(assert (=> b!3804496 (=> (not res!1540300) (not e!2350949))))

(declare-fun d!1122354 () Bool)

(assert (=> d!1122354 e!2350948))

(declare-fun c!661711 () Bool)

(assert (=> d!1122354 (= c!661711 (> (size!30391 (_1!22885 lt!1319236)) 0))))

(declare-fun e!2350950 () tuple2!39502)

(assert (=> d!1122354 (= lt!1319236 e!2350950)))

(declare-fun c!661710 () Bool)

(declare-fun lt!1319238 () Option!8626)

(assert (=> d!1122354 (= c!661710 ((_ is Some!8625) lt!1319238))))

(assert (=> d!1122354 (= lt!1319238 (maxPrefix!3113 thiss!11876 rules!1265 (list!14992 input!678)))))

(assert (=> d!1122354 (= (lexList!1571 thiss!11876 rules!1265 (list!14992 input!678)) lt!1319236)))

(declare-fun b!3804497 () Bool)

(declare-fun lt!1319237 () tuple2!39502)

(assert (=> b!3804497 (= e!2350950 (tuple2!39503 (Cons!40365 (_1!22886 (v!38853 lt!1319238)) (_1!22885 lt!1319237)) (_2!22885 lt!1319237)))))

(assert (=> b!3804497 (= lt!1319237 (lexList!1571 thiss!11876 rules!1265 (_2!22886 (v!38853 lt!1319238))))))

(declare-fun b!3804498 () Bool)

(assert (=> b!3804498 (= e!2350949 (not (isEmpty!23763 (_1!22885 lt!1319236))))))

(declare-fun b!3804499 () Bool)

(assert (=> b!3804499 (= e!2350950 (tuple2!39503 Nil!40365 (list!14992 input!678)))))

(assert (= (and d!1122354 c!661710) b!3804497))

(assert (= (and d!1122354 (not c!661710)) b!3804499))

(assert (= (and d!1122354 c!661711) b!3804496))

(assert (= (and d!1122354 (not c!661711)) b!3804495))

(assert (= (and b!3804496 res!1540300) b!3804498))

(declare-fun m!4336125 () Bool)

(assert (=> b!3804496 m!4336125))

(assert (=> b!3804496 m!4334435))

(declare-fun m!4336127 () Bool)

(assert (=> b!3804496 m!4336127))

(declare-fun m!4336129 () Bool)

(assert (=> d!1122354 m!4336129))

(assert (=> d!1122354 m!4334435))

(assert (=> d!1122354 m!4335015))

(declare-fun m!4336131 () Bool)

(assert (=> b!3804497 m!4336131))

(declare-fun m!4336133 () Bool)

(assert (=> b!3804498 m!4336133))

(assert (=> b!3803514 d!1122354))

(assert (=> b!3803514 d!1121994))

(declare-fun d!1122356 () Bool)

(declare-fun lt!1319280 () Option!8626)

(assert (=> d!1122356 (= lt!1319280 (maxPrefix!3113 thiss!11876 rules!1265 (list!14992 input!678)))))

(declare-fun e!2350976 () Option!8626)

(assert (=> d!1122356 (= lt!1319280 e!2350976)))

(declare-fun c!661717 () Bool)

(assert (=> d!1122356 (= c!661717 (and ((_ is Cons!40364) rules!1265) ((_ is Nil!40364) (t!307217 rules!1265))))))

(declare-fun lt!1319279 () Unit!58104)

(declare-fun lt!1319281 () Unit!58104)

(assert (=> d!1122356 (= lt!1319279 lt!1319281)))

(assert (=> d!1122356 (isPrefix!3321 (list!14992 input!678) (list!14992 input!678))))

(assert (=> d!1122356 (= lt!1319281 (lemmaIsPrefixRefl!2106 (list!14992 input!678) (list!14992 input!678)))))

(assert (=> d!1122356 (rulesValidInductive!2180 thiss!11876 rules!1265)))

(assert (=> d!1122356 (= (maxPrefixZipper!545 thiss!11876 rules!1265 (list!14992 input!678)) lt!1319280)))

(declare-fun call!279260 () Option!8626)

(declare-fun bm!279255 () Bool)

(declare-fun maxPrefixOneRuleZipper!211 (LexerInterface!5801 Rule!12224 List!40487) Option!8626)

(assert (=> bm!279255 (= call!279260 (maxPrefixOneRuleZipper!211 thiss!11876 (h!45784 rules!1265) (list!14992 input!678)))))

(declare-fun b!3804536 () Bool)

(assert (=> b!3804536 (= e!2350976 call!279260)))

(declare-fun b!3804537 () Bool)

(declare-fun lt!1319282 () Option!8626)

(declare-fun lt!1319283 () Option!8626)

(assert (=> b!3804537 (= e!2350976 (ite (and ((_ is None!8625) lt!1319282) ((_ is None!8625) lt!1319283)) None!8625 (ite ((_ is None!8625) lt!1319283) lt!1319282 (ite ((_ is None!8625) lt!1319282) lt!1319283 (ite (>= (size!30384 (_1!22886 (v!38853 lt!1319282))) (size!30384 (_1!22886 (v!38853 lt!1319283)))) lt!1319282 lt!1319283)))))))

(assert (=> b!3804537 (= lt!1319282 call!279260)))

(assert (=> b!3804537 (= lt!1319283 (maxPrefixZipper!545 thiss!11876 (t!307217 rules!1265) (list!14992 input!678)))))

(assert (= (and d!1122356 c!661717) b!3804536))

(assert (= (and d!1122356 (not c!661717)) b!3804537))

(assert (= (or b!3804536 b!3804537) bm!279255))

(assert (=> d!1122356 m!4334435))

(assert (=> d!1122356 m!4335015))

(assert (=> d!1122356 m!4334435))

(assert (=> d!1122356 m!4334435))

(declare-fun m!4336189 () Bool)

(assert (=> d!1122356 m!4336189))

(assert (=> d!1122356 m!4334435))

(assert (=> d!1122356 m!4334435))

(declare-fun m!4336191 () Bool)

(assert (=> d!1122356 m!4336191))

(assert (=> d!1122356 m!4335023))

(assert (=> bm!279255 m!4334435))

(declare-fun m!4336193 () Bool)

(assert (=> bm!279255 m!4336193))

(assert (=> b!3804537 m!4334435))

(declare-fun m!4336195 () Bool)

(assert (=> b!3804537 m!4336195))

(assert (=> b!3803661 d!1122356))

(declare-fun d!1122362 () Bool)

(assert (=> d!1122362 (= (get!13383 (maxPrefixZipper!545 thiss!11876 rules!1265 (list!14992 input!678))) (v!38853 (maxPrefixZipper!545 thiss!11876 rules!1265 (list!14992 input!678))))))

(assert (=> b!3803661 d!1122362))

(declare-fun d!1122364 () Bool)

(assert (=> d!1122364 (= (list!14992 (_2!22882 (get!13382 lt!1318954))) (list!14996 (c!661414 (_2!22882 (get!13382 lt!1318954)))))))

(declare-fun bs!579733 () Bool)

(assert (= bs!579733 d!1122364))

(declare-fun m!4336197 () Bool)

(assert (=> bs!579733 m!4336197))

(assert (=> b!3803661 d!1122364))

(assert (=> b!3803661 d!1121994))

(declare-fun d!1122366 () Bool)

(assert (=> d!1122366 (= (get!13382 lt!1318954) (v!38847 lt!1318954))))

(assert (=> b!3803661 d!1122366))

(declare-fun d!1122370 () Bool)

(declare-fun lt!1319289 () Int)

(assert (=> d!1122370 (>= lt!1319289 0)))

(declare-fun e!2350982 () Int)

(assert (=> d!1122370 (= lt!1319289 e!2350982)))

(declare-fun c!661720 () Bool)

(assert (=> d!1122370 (= c!661720 ((_ is Nil!40365) lt!1318961))))

(assert (=> d!1122370 (= (size!30391 lt!1318961) lt!1319289)))

(declare-fun b!3804545 () Bool)

(assert (=> b!3804545 (= e!2350982 0)))

(declare-fun b!3804546 () Bool)

(assert (=> b!3804546 (= e!2350982 (+ 1 (size!30391 (t!307218 lt!1318961))))))

(assert (= (and d!1122370 c!661720) b!3804545))

(assert (= (and d!1122370 (not c!661720)) b!3804546))

(declare-fun m!4336213 () Bool)

(assert (=> b!3804546 m!4336213))

(assert (=> b!3803669 d!1122370))

(declare-fun d!1122378 () Bool)

(declare-fun lt!1319291 () Int)

(assert (=> d!1122378 (>= lt!1319291 0)))

(declare-fun e!2350983 () Int)

(assert (=> d!1122378 (= lt!1319291 e!2350983)))

(declare-fun c!661721 () Bool)

(assert (=> d!1122378 (= c!661721 ((_ is Nil!40365) lt!1318801))))

(assert (=> d!1122378 (= (size!30391 lt!1318801) lt!1319291)))

(declare-fun b!3804547 () Bool)

(assert (=> b!3804547 (= e!2350983 0)))

(declare-fun b!3804548 () Bool)

(assert (=> b!3804548 (= e!2350983 (+ 1 (size!30391 (t!307218 lt!1318801))))))

(assert (= (and d!1122378 c!661721) b!3804547))

(assert (= (and d!1122378 (not c!661721)) b!3804548))

(assert (=> b!3804548 m!4335327))

(assert (=> b!3803669 d!1122378))

(declare-fun d!1122382 () Bool)

(declare-fun lt!1319292 () Int)

(assert (=> d!1122382 (>= lt!1319292 0)))

(declare-fun e!2350984 () Int)

(assert (=> d!1122382 (= lt!1319292 e!2350984)))

(declare-fun c!661722 () Bool)

(assert (=> d!1122382 (= c!661722 ((_ is Nil!40365) lt!1318784))))

(assert (=> d!1122382 (= (size!30391 lt!1318784) lt!1319292)))

(declare-fun b!3804549 () Bool)

(assert (=> b!3804549 (= e!2350984 0)))

(declare-fun b!3804550 () Bool)

(assert (=> b!3804550 (= e!2350984 (+ 1 (size!30391 (t!307218 lt!1318784))))))

(assert (= (and d!1122382 c!661722) b!3804549))

(assert (= (and d!1122382 (not c!661722)) b!3804550))

(declare-fun m!4336219 () Bool)

(assert (=> b!3804550 m!4336219))

(assert (=> b!3803669 d!1122382))

(declare-fun d!1122384 () Bool)

(assert (=> d!1122384 (= (list!14991 (_1!22881 lt!1318972)) (list!14995 (c!661415 (_1!22881 lt!1318972))))))

(declare-fun bs!579738 () Bool)

(assert (= bs!579738 d!1122384))

(declare-fun m!4336221 () Bool)

(assert (=> bs!579738 m!4336221))

(assert (=> b!3803706 d!1122384))

(declare-fun b!3804551 () Bool)

(declare-fun e!2350985 () Bool)

(declare-fun lt!1319293 () tuple2!39502)

(assert (=> b!3804551 (= e!2350985 (= (_2!22885 lt!1319293) (list!14992 treated!13)))))

(declare-fun b!3804552 () Bool)

(declare-fun e!2350986 () Bool)

(assert (=> b!3804552 (= e!2350985 e!2350986)))

(declare-fun res!1540322 () Bool)

(assert (=> b!3804552 (= res!1540322 (< (size!30392 (_2!22885 lt!1319293)) (size!30392 (list!14992 treated!13))))))

(assert (=> b!3804552 (=> (not res!1540322) (not e!2350986))))

(declare-fun d!1122386 () Bool)

(assert (=> d!1122386 e!2350985))

(declare-fun c!661724 () Bool)

(assert (=> d!1122386 (= c!661724 (> (size!30391 (_1!22885 lt!1319293)) 0))))

(declare-fun e!2350987 () tuple2!39502)

(assert (=> d!1122386 (= lt!1319293 e!2350987)))

(declare-fun c!661723 () Bool)

(declare-fun lt!1319295 () Option!8626)

(assert (=> d!1122386 (= c!661723 ((_ is Some!8625) lt!1319295))))

(assert (=> d!1122386 (= lt!1319295 (maxPrefix!3113 thiss!11876 rules!1265 (list!14992 treated!13)))))

(assert (=> d!1122386 (= (lexList!1571 thiss!11876 rules!1265 (list!14992 treated!13)) lt!1319293)))

(declare-fun b!3804553 () Bool)

(declare-fun lt!1319294 () tuple2!39502)

(assert (=> b!3804553 (= e!2350987 (tuple2!39503 (Cons!40365 (_1!22886 (v!38853 lt!1319295)) (_1!22885 lt!1319294)) (_2!22885 lt!1319294)))))

(assert (=> b!3804553 (= lt!1319294 (lexList!1571 thiss!11876 rules!1265 (_2!22886 (v!38853 lt!1319295))))))

(declare-fun b!3804554 () Bool)

(assert (=> b!3804554 (= e!2350986 (not (isEmpty!23763 (_1!22885 lt!1319293))))))

(declare-fun b!3804555 () Bool)

(assert (=> b!3804555 (= e!2350987 (tuple2!39503 Nil!40365 (list!14992 treated!13)))))

(assert (= (and d!1122386 c!661723) b!3804553))

(assert (= (and d!1122386 (not c!661723)) b!3804555))

(assert (= (and d!1122386 c!661724) b!3804552))

(assert (= (and d!1122386 (not c!661724)) b!3804551))

(assert (= (and b!3804552 res!1540322) b!3804554))

(declare-fun m!4336225 () Bool)

(assert (=> b!3804552 m!4336225))

(assert (=> b!3804552 m!4334437))

(declare-fun m!4336229 () Bool)

(assert (=> b!3804552 m!4336229))

(declare-fun m!4336233 () Bool)

(assert (=> d!1122386 m!4336233))

(assert (=> d!1122386 m!4334437))

(declare-fun m!4336235 () Bool)

(assert (=> d!1122386 m!4336235))

(declare-fun m!4336239 () Bool)

(assert (=> b!3804553 m!4336239))

(declare-fun m!4336243 () Bool)

(assert (=> b!3804554 m!4336243))

(assert (=> b!3803706 d!1122386))

(assert (=> b!3803706 d!1121996))

(declare-fun d!1122392 () Bool)

(declare-fun lt!1319297 () Int)

(assert (=> d!1122392 (>= lt!1319297 0)))

(declare-fun e!2350990 () Int)

(assert (=> d!1122392 (= lt!1319297 e!2350990)))

(declare-fun c!661727 () Bool)

(assert (=> d!1122392 (= c!661727 ((_ is Nil!40365) lt!1318903))))

(assert (=> d!1122392 (= (size!30391 lt!1318903) lt!1319297)))

(declare-fun b!3804560 () Bool)

(assert (=> b!3804560 (= e!2350990 0)))

(declare-fun b!3804561 () Bool)

(assert (=> b!3804561 (= e!2350990 (+ 1 (size!30391 (t!307218 lt!1318903))))))

(assert (= (and d!1122392 c!661727) b!3804560))

(assert (= (and d!1122392 (not c!661727)) b!3804561))

(declare-fun m!4336249 () Bool)

(assert (=> b!3804561 m!4336249))

(assert (=> b!3803532 d!1122392))

(assert (=> b!3803532 d!1122378))

(declare-fun d!1122394 () Bool)

(declare-fun lt!1319298 () Int)

(assert (=> d!1122394 (>= lt!1319298 0)))

(declare-fun e!2350991 () Int)

(assert (=> d!1122394 (= lt!1319298 e!2350991)))

(declare-fun c!661728 () Bool)

(assert (=> d!1122394 (= c!661728 ((_ is Nil!40365) (++!10134 lt!1318784 lt!1318802)))))

(assert (=> d!1122394 (= (size!30391 (++!10134 lt!1318784 lt!1318802)) lt!1319298)))

(declare-fun b!3804562 () Bool)

(assert (=> b!3804562 (= e!2350991 0)))

(declare-fun b!3804563 () Bool)

(assert (=> b!3804563 (= e!2350991 (+ 1 (size!30391 (t!307218 (++!10134 lt!1318784 lt!1318802)))))))

(assert (= (and d!1122394 c!661728) b!3804562))

(assert (= (and d!1122394 (not c!661728)) b!3804563))

(declare-fun m!4336251 () Bool)

(assert (=> b!3804563 m!4336251))

(assert (=> b!3803532 d!1122394))

(declare-fun d!1122398 () Bool)

(declare-fun res!1540346 () Bool)

(declare-fun e!2351008 () Bool)

(assert (=> d!1122398 (=> (not res!1540346) (not e!2351008))))

(declare-fun size!30396 (Conc!12399) Int)

(assert (=> d!1122398 (= res!1540346 (= (csize!25028 (c!661415 acc!335)) (+ (size!30396 (left!31230 (c!661415 acc!335))) (size!30396 (right!31560 (c!661415 acc!335))))))))

(assert (=> d!1122398 (= (inv!54339 (c!661415 acc!335)) e!2351008)))

(declare-fun b!3804593 () Bool)

(declare-fun res!1540347 () Bool)

(assert (=> b!3804593 (=> (not res!1540347) (not e!2351008))))

(assert (=> b!3804593 (= res!1540347 (and (not (= (left!31230 (c!661415 acc!335)) Empty!12399)) (not (= (right!31560 (c!661415 acc!335)) Empty!12399))))))

(declare-fun b!3804594 () Bool)

(declare-fun res!1540348 () Bool)

(assert (=> b!3804594 (=> (not res!1540348) (not e!2351008))))

(assert (=> b!3804594 (= res!1540348 (= (cheight!12610 (c!661415 acc!335)) (+ (max!0 (height!1794 (left!31230 (c!661415 acc!335))) (height!1794 (right!31560 (c!661415 acc!335)))) 1)))))

(declare-fun b!3804595 () Bool)

(assert (=> b!3804595 (= e!2351008 (<= 0 (cheight!12610 (c!661415 acc!335))))))

(assert (= (and d!1122398 res!1540346) b!3804593))

(assert (= (and b!3804593 res!1540347) b!3804594))

(assert (= (and b!3804594 res!1540348) b!3804595))

(declare-fun m!4336299 () Bool)

(assert (=> d!1122398 m!4336299))

(declare-fun m!4336303 () Bool)

(assert (=> d!1122398 m!4336303))

(declare-fun m!4336305 () Bool)

(assert (=> b!3804594 m!4336305))

(declare-fun m!4336307 () Bool)

(assert (=> b!3804594 m!4336307))

(assert (=> b!3804594 m!4336305))

(assert (=> b!3804594 m!4336307))

(declare-fun m!4336311 () Bool)

(assert (=> b!3804594 m!4336311))

(assert (=> b!3803715 d!1122398))

(declare-fun c!661777 () Bool)

(declare-fun bm!279298 () Bool)

(declare-fun call!279314 () Int)

(assert (=> bm!279298 (= call!279314 (height!1794 (ite c!661777 (right!31560 (c!661415 acc!335)) (c!661415 (_1!22881 lt!1318791)))))))

(declare-fun c!661782 () Bool)

(declare-fun c!661780 () Bool)

(declare-fun bm!279299 () Bool)

(declare-fun call!279306 () Conc!12399)

(assert (=> bm!279299 (= call!279306 (++!10136 (ite c!661777 (ite c!661780 (right!31560 (c!661415 acc!335)) (right!31560 (right!31560 (c!661415 acc!335)))) (c!661415 acc!335)) (ite c!661777 (c!661415 (_1!22881 lt!1318791)) (ite c!661782 (left!31230 (c!661415 (_1!22881 lt!1318791))) (left!31230 (left!31230 (c!661415 (_1!22881 lt!1318791))))))))))

(declare-fun b!3804735 () Bool)

(declare-fun e!2351082 () Conc!12399)

(declare-fun call!279310 () Conc!12399)

(assert (=> b!3804735 (= e!2351082 call!279310)))

(declare-fun b!3804736 () Bool)

(declare-fun c!661778 () Bool)

(declare-fun lt!1319349 () Int)

(assert (=> b!3804736 (= c!661778 (and (<= (- 1) lt!1319349) (<= lt!1319349 1)))))

(assert (=> b!3804736 (= lt!1319349 (- (height!1794 (c!661415 (_1!22881 lt!1318791))) (height!1794 (c!661415 acc!335))))))

(declare-fun e!2351088 () Conc!12399)

(declare-fun e!2351089 () Conc!12399)

(assert (=> b!3804736 (= e!2351088 e!2351089)))

(declare-fun bm!279301 () Bool)

(declare-fun call!279308 () Int)

(assert (=> bm!279301 (= call!279308 (height!1794 (ite c!661777 (left!31230 (c!661415 acc!335)) (left!31230 (c!661415 (_1!22881 lt!1318791))))))))

(declare-fun b!3804737 () Bool)

(declare-fun e!2351083 () Conc!12399)

(declare-fun call!279303 () Conc!12399)

(assert (=> b!3804737 (= e!2351083 call!279303)))

(declare-fun b!3804738 () Bool)

(declare-fun e!2351087 () Bool)

(assert (=> b!3804738 (= e!2351087 (isBalanced!3576 (c!661415 (_1!22881 lt!1318791))))))

(declare-fun b!3804739 () Bool)

(declare-fun res!1540402 () Bool)

(declare-fun e!2351085 () Bool)

(assert (=> b!3804739 (=> (not res!1540402) (not e!2351085))))

(declare-fun lt!1319350 () Conc!12399)

(assert (=> b!3804739 (= res!1540402 (>= (height!1794 lt!1319350) (max!0 (height!1794 (c!661415 acc!335)) (height!1794 (c!661415 (_1!22881 lt!1318791))))))))

(declare-fun bm!279302 () Bool)

(declare-fun call!279304 () Conc!12399)

(assert (=> bm!279302 (= call!279303 call!279304)))

(declare-fun b!3804740 () Bool)

(declare-fun e!2351084 () Conc!12399)

(assert (=> b!3804740 (= e!2351084 (c!661415 (_1!22881 lt!1318791)))))

(declare-fun b!3804741 () Bool)

(declare-fun e!2351080 () Conc!12399)

(declare-fun call!279318 () Conc!12399)

(assert (=> b!3804741 (= e!2351080 call!279318)))

(declare-fun b!3804742 () Bool)

(declare-fun res!1540398 () Bool)

(assert (=> b!3804742 (=> (not res!1540398) (not e!2351085))))

(assert (=> b!3804742 (= res!1540398 (isBalanced!3576 lt!1319350))))

(declare-fun b!3804743 () Bool)

(declare-fun e!2351086 () Conc!12399)

(assert (=> b!3804743 (= e!2351089 e!2351086)))

(assert (=> b!3804743 (= c!661777 (< lt!1319349 (- 1)))))

(declare-fun b!3804744 () Bool)

(assert (=> b!3804744 (= e!2351088 (c!661415 acc!335))))

(declare-fun b!3804745 () Bool)

(declare-fun e!2351081 () Conc!12399)

(assert (=> b!3804745 (= e!2351081 e!2351080)))

(declare-fun lt!1319352 () Conc!12399)

(declare-fun call!279316 () Conc!12399)

(assert (=> b!3804745 (= lt!1319352 call!279316)))

(declare-fun c!661781 () Bool)

(declare-fun call!279312 () Int)

(assert (=> b!3804745 (= c!661781 (= call!279312 (- call!279314 3)))))

(declare-fun bm!279303 () Bool)

(declare-fun call!279313 () Conc!12399)

(assert (=> bm!279303 (= call!279313 call!279304)))

(declare-fun bm!279304 () Bool)

(assert (=> bm!279304 (= call!279318 call!279313)))

(declare-fun b!3804746 () Bool)

(assert (=> b!3804746 (= e!2351085 (= (list!14995 lt!1319350) (++!10134 (list!14995 (c!661415 acc!335)) (list!14995 (c!661415 (_1!22881 lt!1318791))))))))

(declare-fun bm!279305 () Bool)

(declare-fun call!279315 () Conc!12399)

(assert (=> bm!279305 (= call!279310 call!279315)))

(declare-fun bm!279306 () Bool)

(declare-fun call!279305 () Conc!12399)

(assert (=> bm!279306 (= call!279305 call!279306)))

(declare-fun b!3804747 () Bool)

(declare-fun res!1540401 () Bool)

(assert (=> b!3804747 (=> (not res!1540401) (not e!2351085))))

(assert (=> b!3804747 (= res!1540401 (<= (height!1794 lt!1319350) (+ (max!0 (height!1794 (c!661415 acc!335)) (height!1794 (c!661415 (_1!22881 lt!1318791)))) 1)))))

(declare-fun b!3804748 () Bool)

(assert (=> b!3804748 (= c!661780 (>= call!279308 call!279314))))

(assert (=> b!3804748 (= e!2351086 e!2351082)))

(declare-fun b!3804749 () Bool)

(assert (=> b!3804749 (= e!2351081 call!279313)))

(declare-fun b!3804750 () Bool)

(assert (=> b!3804750 (= e!2351083 call!279303)))

(declare-fun bm!279307 () Bool)

(declare-fun call!279311 () Conc!12399)

(assert (=> bm!279307 (= call!279304 call!279311)))

(declare-fun bm!279308 () Bool)

(assert (=> bm!279308 (= call!279316 call!279306)))

(declare-fun call!279317 () Int)

(declare-fun bm!279300 () Bool)

(assert (=> bm!279300 (= call!279317 (height!1794 (ite c!661777 (c!661415 acc!335) (right!31560 (c!661415 (_1!22881 lt!1318791))))))))

(declare-fun d!1122416 () Bool)

(assert (=> d!1122416 e!2351085))

(declare-fun res!1540399 () Bool)

(assert (=> d!1122416 (=> (not res!1540399) (not e!2351085))))

(assert (=> d!1122416 (= res!1540399 (appendAssocInst!859 (c!661415 acc!335) (c!661415 (_1!22881 lt!1318791))))))

(assert (=> d!1122416 (= lt!1319350 e!2351084)))

(declare-fun c!661784 () Bool)

(assert (=> d!1122416 (= c!661784 (= (c!661415 acc!335) Empty!12399))))

(assert (=> d!1122416 e!2351087))

(declare-fun res!1540400 () Bool)

(assert (=> d!1122416 (=> (not res!1540400) (not e!2351087))))

(assert (=> d!1122416 (= res!1540400 (isBalanced!3576 (c!661415 acc!335)))))

(assert (=> d!1122416 (= (++!10136 (c!661415 acc!335) (c!661415 (_1!22881 lt!1318791))) lt!1319350)))

(declare-fun bm!279309 () Bool)

(declare-fun call!279307 () Conc!12399)

(assert (=> bm!279309 (= call!279307 call!279315)))

(declare-fun bm!279310 () Bool)

(declare-fun lt!1319351 () Conc!12399)

(assert (=> bm!279310 (= call!279312 (height!1794 (ite c!661777 lt!1319351 lt!1319352)))))

(declare-fun b!3804751 () Bool)

(assert (=> b!3804751 (= c!661782 (>= call!279317 call!279308))))

(assert (=> b!3804751 (= e!2351086 e!2351081)))

(declare-fun bm!279311 () Bool)

(declare-fun call!279309 () Conc!12399)

(assert (=> bm!279311 (= call!279309 call!279310)))

(declare-fun b!3804752 () Bool)

(assert (=> b!3804752 (= e!2351080 call!279318)))

(declare-fun b!3804753 () Bool)

(assert (=> b!3804753 (= e!2351084 e!2351088)))

(declare-fun c!661779 () Bool)

(assert (=> b!3804753 (= c!661779 (= (c!661415 (_1!22881 lt!1318791)) Empty!12399))))

(declare-fun b!3804754 () Bool)

(assert (=> b!3804754 (= e!2351082 e!2351083)))

(assert (=> b!3804754 (= lt!1319351 call!279305)))

(declare-fun c!661783 () Bool)

(assert (=> b!3804754 (= c!661783 (= call!279312 (- call!279317 3)))))

(declare-fun bm!279312 () Bool)

(declare-fun <>!351 (Conc!12399 Conc!12399) Conc!12399)

(assert (=> bm!279312 (= call!279315 (<>!351 (ite c!661777 (ite c!661780 (left!31230 (c!661415 acc!335)) (ite c!661783 (left!31230 (right!31560 (c!661415 acc!335))) (left!31230 (c!661415 acc!335)))) (ite c!661781 lt!1319352 (right!31560 (left!31230 (c!661415 (_1!22881 lt!1318791)))))) (ite c!661777 (ite c!661780 call!279305 (ite c!661783 lt!1319351 (left!31230 (right!31560 (c!661415 acc!335))))) (ite c!661781 (right!31560 (left!31230 (c!661415 (_1!22881 lt!1318791)))) (right!31560 (c!661415 (_1!22881 lt!1318791)))))))))

(declare-fun b!3804755 () Bool)

(assert (=> b!3804755 (= e!2351089 call!279311)))

(declare-fun bm!279313 () Bool)

(assert (=> bm!279313 (= call!279311 (<>!351 (ite c!661778 (c!661415 acc!335) (ite c!661777 (ite c!661783 (left!31230 (c!661415 acc!335)) call!279309) (ite c!661782 call!279316 (ite c!661781 call!279307 lt!1319352)))) (ite c!661778 (c!661415 (_1!22881 lt!1318791)) (ite c!661777 (ite c!661783 call!279309 lt!1319351) (ite (or c!661782 c!661781) (right!31560 (c!661415 (_1!22881 lt!1318791))) call!279307)))))))

(assert (= (and d!1122416 res!1540400) b!3804738))

(assert (= (and d!1122416 c!661784) b!3804740))

(assert (= (and d!1122416 (not c!661784)) b!3804753))

(assert (= (and b!3804753 c!661779) b!3804744))

(assert (= (and b!3804753 (not c!661779)) b!3804736))

(assert (= (and b!3804736 c!661778) b!3804755))

(assert (= (and b!3804736 (not c!661778)) b!3804743))

(assert (= (and b!3804743 c!661777) b!3804748))

(assert (= (and b!3804743 (not c!661777)) b!3804751))

(assert (= (and b!3804748 c!661780) b!3804735))

(assert (= (and b!3804748 (not c!661780)) b!3804754))

(assert (= (and b!3804754 c!661783) b!3804737))

(assert (= (and b!3804754 (not c!661783)) b!3804750))

(assert (= (or b!3804737 b!3804750) bm!279311))

(assert (= (or b!3804737 b!3804750) bm!279302))

(assert (= (or b!3804735 b!3804754) bm!279306))

(assert (= (or b!3804735 bm!279311) bm!279305))

(assert (= (and b!3804751 c!661782) b!3804749))

(assert (= (and b!3804751 (not c!661782)) b!3804745))

(assert (= (and b!3804745 c!661781) b!3804741))

(assert (= (and b!3804745 (not c!661781)) b!3804752))

(assert (= (or b!3804741 b!3804752) bm!279309))

(assert (= (or b!3804741 b!3804752) bm!279304))

(assert (= (or b!3804749 b!3804745) bm!279308))

(assert (= (or b!3804749 bm!279304) bm!279303))

(assert (= (or bm!279302 bm!279303) bm!279307))

(assert (= (or b!3804754 b!3804751) bm!279300))

(assert (= (or bm!279305 bm!279309) bm!279312))

(assert (= (or b!3804754 b!3804745) bm!279310))

(assert (= (or bm!279306 bm!279308) bm!279299))

(assert (= (or b!3804748 b!3804745) bm!279298))

(assert (= (or b!3804748 b!3804751) bm!279301))

(assert (= (or b!3804755 bm!279307) bm!279313))

(assert (= (and d!1122416 res!1540399) b!3804742))

(assert (= (and b!3804742 res!1540398) b!3804747))

(assert (= (and b!3804747 res!1540401) b!3804739))

(assert (= (and b!3804739 res!1540402) b!3804746))

(assert (=> d!1122416 m!4334525))

(assert (=> d!1122416 m!4335195))

(declare-fun m!4336505 () Bool)

(assert (=> bm!279301 m!4336505))

(declare-fun m!4336507 () Bool)

(assert (=> b!3804742 m!4336507))

(declare-fun m!4336509 () Bool)

(assert (=> bm!279298 m!4336509))

(assert (=> b!3804736 m!4334509))

(assert (=> b!3804736 m!4334511))

(declare-fun m!4336511 () Bool)

(assert (=> b!3804738 m!4336511))

(declare-fun m!4336513 () Bool)

(assert (=> bm!279312 m!4336513))

(declare-fun m!4336515 () Bool)

(assert (=> b!3804747 m!4336515))

(assert (=> b!3804747 m!4334511))

(assert (=> b!3804747 m!4334509))

(assert (=> b!3804747 m!4334511))

(assert (=> b!3804747 m!4334509))

(assert (=> b!3804747 m!4334513))

(declare-fun m!4336517 () Bool)

(assert (=> b!3804746 m!4336517))

(assert (=> b!3804746 m!4335113))

(declare-fun m!4336519 () Bool)

(assert (=> b!3804746 m!4336519))

(assert (=> b!3804746 m!4335113))

(assert (=> b!3804746 m!4336519))

(declare-fun m!4336521 () Bool)

(assert (=> b!3804746 m!4336521))

(declare-fun m!4336523 () Bool)

(assert (=> bm!279300 m!4336523))

(assert (=> b!3804739 m!4336515))

(assert (=> b!3804739 m!4334511))

(assert (=> b!3804739 m!4334509))

(assert (=> b!3804739 m!4334511))

(assert (=> b!3804739 m!4334509))

(assert (=> b!3804739 m!4334513))

(declare-fun m!4336525 () Bool)

(assert (=> bm!279313 m!4336525))

(declare-fun m!4336527 () Bool)

(assert (=> bm!279310 m!4336527))

(declare-fun m!4336529 () Bool)

(assert (=> bm!279299 m!4336529))

(assert (=> b!3803334 d!1122416))

(declare-fun d!1122484 () Bool)

(assert (=> d!1122484 (= (height!1794 (c!661415 (_1!22881 lt!1318791))) (ite ((_ is Empty!12399) (c!661415 (_1!22881 lt!1318791))) 0 (ite ((_ is Leaf!19203) (c!661415 (_1!22881 lt!1318791))) 1 (cheight!12610 (c!661415 (_1!22881 lt!1318791))))))))

(assert (=> b!3803334 d!1122484))

(declare-fun d!1122486 () Bool)

(assert (=> d!1122486 (= (max!0 (height!1794 (c!661415 acc!335)) (height!1794 (c!661415 (_1!22881 lt!1318791)))) (ite (< (height!1794 (c!661415 acc!335)) (height!1794 (c!661415 (_1!22881 lt!1318791)))) (height!1794 (c!661415 (_1!22881 lt!1318791))) (height!1794 (c!661415 acc!335))))))

(assert (=> b!3803334 d!1122486))

(declare-fun d!1122488 () Bool)

(assert (=> d!1122488 (= (height!1794 (c!661415 acc!335)) (ite ((_ is Empty!12399) (c!661415 acc!335)) 0 (ite ((_ is Leaf!19203) (c!661415 acc!335)) 1 (cheight!12610 (c!661415 acc!335)))))))

(assert (=> b!3803334 d!1122488))

(declare-fun d!1122490 () Bool)

(assert (=> d!1122490 (= (height!1794 (++!10136 (c!661415 acc!335) (c!661415 (_1!22881 lt!1318791)))) (ite ((_ is Empty!12399) (++!10136 (c!661415 acc!335) (c!661415 (_1!22881 lt!1318791)))) 0 (ite ((_ is Leaf!19203) (++!10136 (c!661415 acc!335) (c!661415 (_1!22881 lt!1318791)))) 1 (cheight!12610 (++!10136 (c!661415 acc!335) (c!661415 (_1!22881 lt!1318791)))))))))

(assert (=> b!3803334 d!1122490))

(declare-fun b!3804756 () Bool)

(declare-fun e!2351090 () List!40489)

(assert (=> b!3804756 (= e!2351090 Nil!40365)))

(declare-fun b!3804758 () Bool)

(declare-fun e!2351091 () List!40489)

(assert (=> b!3804758 (= e!2351091 (list!14999 (xs!15665 (c!661415 (_1!22881 lt!1318789)))))))

(declare-fun b!3804759 () Bool)

(assert (=> b!3804759 (= e!2351091 (++!10134 (list!14995 (left!31230 (c!661415 (_1!22881 lt!1318789)))) (list!14995 (right!31560 (c!661415 (_1!22881 lt!1318789))))))))

(declare-fun d!1122492 () Bool)

(declare-fun c!661785 () Bool)

(assert (=> d!1122492 (= c!661785 ((_ is Empty!12399) (c!661415 (_1!22881 lt!1318789))))))

(assert (=> d!1122492 (= (list!14995 (c!661415 (_1!22881 lt!1318789))) e!2351090)))

(declare-fun b!3804757 () Bool)

(assert (=> b!3804757 (= e!2351090 e!2351091)))

(declare-fun c!661786 () Bool)

(assert (=> b!3804757 (= c!661786 ((_ is Leaf!19203) (c!661415 (_1!22881 lt!1318789))))))

(assert (= (and d!1122492 c!661785) b!3804756))

(assert (= (and d!1122492 (not c!661785)) b!3804757))

(assert (= (and b!3804757 c!661786) b!3804758))

(assert (= (and b!3804757 (not c!661786)) b!3804759))

(declare-fun m!4336531 () Bool)

(assert (=> b!3804758 m!4336531))

(declare-fun m!4336533 () Bool)

(assert (=> b!3804759 m!4336533))

(declare-fun m!4336535 () Bool)

(assert (=> b!3804759 m!4336535))

(assert (=> b!3804759 m!4336533))

(assert (=> b!3804759 m!4336535))

(declare-fun m!4336537 () Bool)

(assert (=> b!3804759 m!4336537))

(assert (=> d!1121958 d!1122492))

(declare-fun d!1122494 () Bool)

(declare-fun lt!1319353 () Int)

(assert (=> d!1122494 (>= lt!1319353 0)))

(declare-fun e!2351092 () Int)

(assert (=> d!1122494 (= lt!1319353 e!2351092)))

(declare-fun c!661787 () Bool)

(assert (=> d!1122494 (= c!661787 ((_ is Nil!40365) lt!1318965))))

(assert (=> d!1122494 (= (size!30391 lt!1318965) lt!1319353)))

(declare-fun b!3804760 () Bool)

(assert (=> b!3804760 (= e!2351092 0)))

(declare-fun b!3804761 () Bool)

(assert (=> b!3804761 (= e!2351092 (+ 1 (size!30391 (t!307218 lt!1318965))))))

(assert (= (and d!1122494 c!661787) b!3804760))

(assert (= (and d!1122494 (not c!661787)) b!3804761))

(declare-fun m!4336539 () Bool)

(assert (=> b!3804761 m!4336539))

(assert (=> b!3803680 d!1122494))

(declare-fun d!1122496 () Bool)

(declare-fun lt!1319354 () Int)

(assert (=> d!1122496 (>= lt!1319354 0)))

(declare-fun e!2351093 () Int)

(assert (=> d!1122496 (= lt!1319354 e!2351093)))

(declare-fun c!661788 () Bool)

(assert (=> d!1122496 (= c!661788 ((_ is Nil!40365) (++!10134 lt!1318801 lt!1318784)))))

(assert (=> d!1122496 (= (size!30391 (++!10134 lt!1318801 lt!1318784)) lt!1319354)))

(declare-fun b!3804762 () Bool)

(assert (=> b!3804762 (= e!2351093 0)))

(declare-fun b!3804763 () Bool)

(assert (=> b!3804763 (= e!2351093 (+ 1 (size!30391 (t!307218 (++!10134 lt!1318801 lt!1318784)))))))

(assert (= (and d!1122496 c!661788) b!3804762))

(assert (= (and d!1122496 (not c!661788)) b!3804763))

(declare-fun m!4336541 () Bool)

(assert (=> b!3804763 m!4336541))

(assert (=> b!3803680 d!1122496))

(declare-fun d!1122498 () Bool)

(declare-fun lt!1319355 () Int)

(assert (=> d!1122498 (>= lt!1319355 0)))

(declare-fun e!2351094 () Int)

(assert (=> d!1122498 (= lt!1319355 e!2351094)))

(declare-fun c!661789 () Bool)

(assert (=> d!1122498 (= c!661789 ((_ is Nil!40365) lt!1318802))))

(assert (=> d!1122498 (= (size!30391 lt!1318802) lt!1319355)))

(declare-fun b!3804764 () Bool)

(assert (=> b!3804764 (= e!2351094 0)))

(declare-fun b!3804765 () Bool)

(assert (=> b!3804765 (= e!2351094 (+ 1 (size!30391 (t!307218 lt!1318802))))))

(assert (= (and d!1122498 c!661789) b!3804764))

(assert (= (and d!1122498 (not c!661789)) b!3804765))

(declare-fun m!4336543 () Bool)

(assert (=> b!3804765 m!4336543))

(assert (=> b!3803680 d!1122498))

(declare-fun b!3804767 () Bool)

(declare-fun e!2351096 () List!40487)

(assert (=> b!3804767 (= e!2351096 (Cons!40363 (h!45783 (t!307216 lt!1318796)) (++!10133 (t!307216 (t!307216 lt!1318796)) lt!1318787)))))

(declare-fun e!2351095 () Bool)

(declare-fun b!3804769 () Bool)

(declare-fun lt!1319356 () List!40487)

(assert (=> b!3804769 (= e!2351095 (or (not (= lt!1318787 Nil!40363)) (= lt!1319356 (t!307216 lt!1318796))))))

(declare-fun d!1122500 () Bool)

(assert (=> d!1122500 e!2351095))

(declare-fun res!1540403 () Bool)

(assert (=> d!1122500 (=> (not res!1540403) (not e!2351095))))

(assert (=> d!1122500 (= res!1540403 (= (content!5956 lt!1319356) ((_ map or) (content!5956 (t!307216 lt!1318796)) (content!5956 lt!1318787))))))

(assert (=> d!1122500 (= lt!1319356 e!2351096)))

(declare-fun c!661790 () Bool)

(assert (=> d!1122500 (= c!661790 ((_ is Nil!40363) (t!307216 lt!1318796)))))

(assert (=> d!1122500 (= (++!10133 (t!307216 lt!1318796) lt!1318787) lt!1319356)))

(declare-fun b!3804766 () Bool)

(assert (=> b!3804766 (= e!2351096 lt!1318787)))

(declare-fun b!3804768 () Bool)

(declare-fun res!1540404 () Bool)

(assert (=> b!3804768 (=> (not res!1540404) (not e!2351095))))

(assert (=> b!3804768 (= res!1540404 (= (size!30392 lt!1319356) (+ (size!30392 (t!307216 lt!1318796)) (size!30392 lt!1318787))))))

(assert (= (and d!1122500 c!661790) b!3804766))

(assert (= (and d!1122500 (not c!661790)) b!3804767))

(assert (= (and d!1122500 res!1540403) b!3804768))

(assert (= (and b!3804768 res!1540404) b!3804769))

(declare-fun m!4336545 () Bool)

(assert (=> b!3804767 m!4336545))

(declare-fun m!4336547 () Bool)

(assert (=> d!1122500 m!4336547))

(assert (=> d!1122500 m!4335521))

(assert (=> d!1122500 m!4334947))

(declare-fun m!4336549 () Bool)

(assert (=> b!3804768 m!4336549))

(declare-fun m!4336551 () Bool)

(assert (=> b!3804768 m!4336551))

(assert (=> b!3804768 m!4334951))

(assert (=> b!3803683 d!1122500))

(declare-fun d!1122502 () Bool)

(assert (=> d!1122502 (= (isDefined!6786 lt!1318954) (not (isEmpty!23772 lt!1318954)))))

(declare-fun bs!579755 () Bool)

(assert (= bs!579755 d!1122502))

(declare-fun m!4336553 () Bool)

(assert (=> bs!579755 m!4336553))

(assert (=> b!3803657 d!1122502))

(declare-fun d!1122504 () Bool)

(declare-fun lt!1319357 () Int)

(assert (=> d!1122504 (>= lt!1319357 0)))

(declare-fun e!2351097 () Int)

(assert (=> d!1122504 (= lt!1319357 e!2351097)))

(declare-fun c!661791 () Bool)

(assert (=> d!1122504 (= c!661791 ((_ is Nil!40363) lt!1318970))))

(assert (=> d!1122504 (= (size!30392 lt!1318970) lt!1319357)))

(declare-fun b!3804770 () Bool)

(assert (=> b!3804770 (= e!2351097 0)))

(declare-fun b!3804771 () Bool)

(assert (=> b!3804771 (= e!2351097 (+ 1 (size!30392 (t!307216 lt!1318970))))))

(assert (= (and d!1122504 c!661791) b!3804770))

(assert (= (and d!1122504 (not c!661791)) b!3804771))

(declare-fun m!4336555 () Bool)

(assert (=> b!3804771 m!4336555))

(assert (=> b!3803688 d!1122504))

(declare-fun d!1122506 () Bool)

(declare-fun lt!1319358 () Int)

(assert (=> d!1122506 (>= lt!1319358 0)))

(declare-fun e!2351098 () Int)

(assert (=> d!1122506 (= lt!1319358 e!2351098)))

(declare-fun c!661792 () Bool)

(assert (=> d!1122506 (= c!661792 ((_ is Nil!40363) lt!1318796))))

(assert (=> d!1122506 (= (size!30392 lt!1318796) lt!1319358)))

(declare-fun b!3804772 () Bool)

(assert (=> b!3804772 (= e!2351098 0)))

(declare-fun b!3804773 () Bool)

(assert (=> b!3804773 (= e!2351098 (+ 1 (size!30392 (t!307216 lt!1318796))))))

(assert (= (and d!1122506 c!661792) b!3804772))

(assert (= (and d!1122506 (not c!661792)) b!3804773))

(assert (=> b!3804773 m!4336551))

(assert (=> b!3803688 d!1122506))

(assert (=> b!3803688 d!1122134))

(declare-fun d!1122508 () Bool)

(declare-fun lt!1319361 () Bool)

(assert (=> d!1122508 (= lt!1319361 (isEmpty!23763 (list!14991 (_1!22881 lt!1318972))))))

(assert (=> d!1122508 (= lt!1319361 (isEmpty!23771 (c!661415 (_1!22881 lt!1318972))))))

(assert (=> d!1122508 (= (isEmpty!23766 (_1!22881 lt!1318972)) lt!1319361)))

(declare-fun bs!579756 () Bool)

(assert (= bs!579756 d!1122508))

(assert (=> bs!579756 m!4335127))

(assert (=> bs!579756 m!4335127))

(declare-fun m!4336557 () Bool)

(assert (=> bs!579756 m!4336557))

(declare-fun m!4336559 () Bool)

(assert (=> bs!579756 m!4336559))

(assert (=> b!3803702 d!1122508))

(declare-fun d!1122510 () Bool)

(declare-fun e!2351099 () Bool)

(assert (=> d!1122510 e!2351099))

(declare-fun res!1540405 () Bool)

(assert (=> d!1122510 (=> (not res!1540405) (not e!2351099))))

(assert (=> d!1122510 (= res!1540405 (isBalanced!3576 (prepend!1358 (c!661415 (_1!22881 lt!1318895)) (_1!22882 (v!38847 lt!1318897)))))))

(declare-fun lt!1319362 () BalanceConc!24392)

(assert (=> d!1122510 (= lt!1319362 (BalanceConc!24393 (prepend!1358 (c!661415 (_1!22881 lt!1318895)) (_1!22882 (v!38847 lt!1318897)))))))

(assert (=> d!1122510 (= (prepend!1356 (_1!22881 lt!1318895) (_1!22882 (v!38847 lt!1318897))) lt!1319362)))

(declare-fun b!3804774 () Bool)

(assert (=> b!3804774 (= e!2351099 (= (list!14991 lt!1319362) (Cons!40365 (_1!22882 (v!38847 lt!1318897)) (list!14991 (_1!22881 lt!1318895)))))))

(assert (= (and d!1122510 res!1540405) b!3804774))

(declare-fun m!4336561 () Bool)

(assert (=> d!1122510 m!4336561))

(assert (=> d!1122510 m!4336561))

(declare-fun m!4336563 () Bool)

(assert (=> d!1122510 m!4336563))

(declare-fun m!4336565 () Bool)

(assert (=> b!3804774 m!4336565))

(declare-fun m!4336567 () Bool)

(assert (=> b!3804774 m!4336567))

(assert (=> b!3803511 d!1122510))

(declare-fun b!3804775 () Bool)

(declare-fun e!2351102 () Bool)

(declare-fun lt!1319364 () tuple2!39494)

(assert (=> b!3804775 (= e!2351102 (not (isEmpty!23766 (_1!22881 lt!1319364))))))

(declare-fun b!3804776 () Bool)

(declare-fun e!2351103 () Bool)

(assert (=> b!3804776 (= e!2351103 e!2351102)))

(declare-fun res!1540408 () Bool)

(assert (=> b!3804776 (= res!1540408 (< (size!30389 (_2!22881 lt!1319364)) (size!30389 (_2!22882 (v!38847 lt!1318897)))))))

(assert (=> b!3804776 (=> (not res!1540408) (not e!2351102))))

(declare-fun e!2351101 () Bool)

(declare-fun b!3804777 () Bool)

(assert (=> b!3804777 (= e!2351101 (= (list!14992 (_2!22881 lt!1319364)) (_2!22885 (lexList!1571 thiss!11876 rules!1265 (list!14992 (_2!22882 (v!38847 lt!1318897)))))))))

(declare-fun d!1122512 () Bool)

(assert (=> d!1122512 e!2351101))

(declare-fun res!1540407 () Bool)

(assert (=> d!1122512 (=> (not res!1540407) (not e!2351101))))

(assert (=> d!1122512 (= res!1540407 e!2351103)))

(declare-fun c!661793 () Bool)

(assert (=> d!1122512 (= c!661793 (> (size!30390 (_1!22881 lt!1319364)) 0))))

(declare-fun e!2351100 () tuple2!39494)

(assert (=> d!1122512 (= lt!1319364 e!2351100)))

(declare-fun c!661794 () Bool)

(declare-fun lt!1319365 () Option!8624)

(assert (=> d!1122512 (= c!661794 ((_ is Some!8623) lt!1319365))))

(assert (=> d!1122512 (= lt!1319365 (maxPrefixZipperSequence!1207 thiss!11876 rules!1265 (_2!22882 (v!38847 lt!1318897))))))

(assert (=> d!1122512 (= (lexRec!825 thiss!11876 rules!1265 (_2!22882 (v!38847 lt!1318897))) lt!1319364)))

(declare-fun b!3804778 () Bool)

(assert (=> b!3804778 (= e!2351103 (= (list!14992 (_2!22881 lt!1319364)) (list!14992 (_2!22882 (v!38847 lt!1318897)))))))

(declare-fun b!3804779 () Bool)

(declare-fun res!1540406 () Bool)

(assert (=> b!3804779 (=> (not res!1540406) (not e!2351101))))

(assert (=> b!3804779 (= res!1540406 (= (list!14991 (_1!22881 lt!1319364)) (_1!22885 (lexList!1571 thiss!11876 rules!1265 (list!14992 (_2!22882 (v!38847 lt!1318897)))))))))

(declare-fun b!3804780 () Bool)

(assert (=> b!3804780 (= e!2351100 (tuple2!39495 (BalanceConc!24393 Empty!12399) (_2!22882 (v!38847 lt!1318897))))))

(declare-fun b!3804781 () Bool)

(declare-fun lt!1319363 () tuple2!39494)

(assert (=> b!3804781 (= e!2351100 (tuple2!39495 (prepend!1356 (_1!22881 lt!1319363) (_1!22882 (v!38847 lt!1319365))) (_2!22881 lt!1319363)))))

(assert (=> b!3804781 (= lt!1319363 (lexRec!825 thiss!11876 rules!1265 (_2!22882 (v!38847 lt!1319365))))))

(assert (= (and d!1122512 c!661794) b!3804781))

(assert (= (and d!1122512 (not c!661794)) b!3804780))

(assert (= (and d!1122512 c!661793) b!3804776))

(assert (= (and d!1122512 (not c!661793)) b!3804778))

(assert (= (and b!3804776 res!1540408) b!3804775))

(assert (= (and d!1122512 res!1540407) b!3804779))

(assert (= (and b!3804779 res!1540406) b!3804777))

(declare-fun m!4336569 () Bool)

(assert (=> b!3804777 m!4336569))

(declare-fun m!4336571 () Bool)

(assert (=> b!3804777 m!4336571))

(assert (=> b!3804777 m!4336571))

(declare-fun m!4336573 () Bool)

(assert (=> b!3804777 m!4336573))

(declare-fun m!4336575 () Bool)

(assert (=> b!3804775 m!4336575))

(declare-fun m!4336577 () Bool)

(assert (=> b!3804776 m!4336577))

(declare-fun m!4336579 () Bool)

(assert (=> b!3804776 m!4336579))

(declare-fun m!4336581 () Bool)

(assert (=> b!3804779 m!4336581))

(assert (=> b!3804779 m!4336571))

(assert (=> b!3804779 m!4336571))

(assert (=> b!3804779 m!4336573))

(declare-fun m!4336583 () Bool)

(assert (=> b!3804781 m!4336583))

(declare-fun m!4336585 () Bool)

(assert (=> b!3804781 m!4336585))

(declare-fun m!4336587 () Bool)

(assert (=> d!1122512 m!4336587))

(declare-fun m!4336589 () Bool)

(assert (=> d!1122512 m!4336589))

(assert (=> b!3804778 m!4336569))

(assert (=> b!3804778 m!4336571))

(assert (=> b!3803511 d!1122512))

(assert (=> b!3803654 d!1122366))

(assert (=> b!3803654 d!1122362))

(assert (=> b!3803654 d!1122356))

(assert (=> b!3803654 d!1121994))

(declare-fun d!1122514 () Bool)

(declare-fun lt!1319368 () Int)

(assert (=> d!1122514 (= lt!1319368 (size!30391 (list!14991 (_1!22881 lt!1318963))))))

(assert (=> d!1122514 (= lt!1319368 (size!30396 (c!661415 (_1!22881 lt!1318963))))))

(assert (=> d!1122514 (= (size!30390 (_1!22881 lt!1318963)) lt!1319368)))

(declare-fun bs!579757 () Bool)

(assert (= bs!579757 d!1122514))

(assert (=> bs!579757 m!4335055))

(assert (=> bs!579757 m!4335055))

(declare-fun m!4336591 () Bool)

(assert (=> bs!579757 m!4336591))

(declare-fun m!4336593 () Bool)

(assert (=> bs!579757 m!4336593))

(assert (=> d!1121978 d!1122514))

(declare-fun b!3804782 () Bool)

(declare-fun e!2351109 () Bool)

(declare-fun e!2351104 () Bool)

(assert (=> b!3804782 (= e!2351109 e!2351104)))

(declare-fun res!1540414 () Bool)

(assert (=> b!3804782 (=> (not res!1540414) (not e!2351104))))

(declare-fun lt!1319372 () Option!8624)

(assert (=> b!3804782 (= res!1540414 (= (_1!22882 (get!13382 lt!1319372)) (_1!22886 (get!13383 (maxPrefixZipper!545 thiss!11876 rules!1265 (list!14992 (_2!22882 (v!38847 lt!1318792))))))))))

(declare-fun call!279319 () Option!8624)

(declare-fun bm!279314 () Bool)

(assert (=> bm!279314 (= call!279319 (maxPrefixOneRuleZipperSequence!560 thiss!11876 (h!45784 rules!1265) (_2!22882 (v!38847 lt!1318792))))))

(declare-fun b!3804783 () Bool)

(declare-fun e!2351108 () Bool)

(declare-fun e!2351106 () Bool)

(assert (=> b!3804783 (= e!2351108 e!2351106)))

(declare-fun res!1540410 () Bool)

(assert (=> b!3804783 (=> res!1540410 e!2351106)))

(assert (=> b!3804783 (= res!1540410 (not (isDefined!6786 lt!1319372)))))

(declare-fun b!3804784 () Bool)

(declare-fun e!2351107 () Option!8624)

(declare-fun lt!1319375 () Option!8624)

(declare-fun lt!1319374 () Option!8624)

(assert (=> b!3804784 (= e!2351107 (ite (and ((_ is None!8623) lt!1319375) ((_ is None!8623) lt!1319374)) None!8623 (ite ((_ is None!8623) lt!1319374) lt!1319375 (ite ((_ is None!8623) lt!1319375) lt!1319374 (ite (>= (size!30384 (_1!22882 (v!38847 lt!1319375))) (size!30384 (_1!22882 (v!38847 lt!1319374)))) lt!1319375 lt!1319374)))))))

(assert (=> b!3804784 (= lt!1319375 call!279319)))

(assert (=> b!3804784 (= lt!1319374 (maxPrefixZipperSequence!1207 thiss!11876 (t!307217 rules!1265) (_2!22882 (v!38847 lt!1318792))))))

(declare-fun b!3804785 () Bool)

(declare-fun res!1540409 () Bool)

(assert (=> b!3804785 (=> (not res!1540409) (not e!2351108))))

(assert (=> b!3804785 (= res!1540409 e!2351109)))

(declare-fun res!1540412 () Bool)

(assert (=> b!3804785 (=> res!1540412 e!2351109)))

(assert (=> b!3804785 (= res!1540412 (not (isDefined!6786 lt!1319372)))))

(declare-fun d!1122516 () Bool)

(assert (=> d!1122516 e!2351108))

(declare-fun res!1540413 () Bool)

(assert (=> d!1122516 (=> (not res!1540413) (not e!2351108))))

(assert (=> d!1122516 (= res!1540413 (= (isDefined!6786 lt!1319372) (isDefined!6787 (maxPrefixZipper!545 thiss!11876 rules!1265 (list!14992 (_2!22882 (v!38847 lt!1318792)))))))))

(assert (=> d!1122516 (= lt!1319372 e!2351107)))

(declare-fun c!661795 () Bool)

(assert (=> d!1122516 (= c!661795 (and ((_ is Cons!40364) rules!1265) ((_ is Nil!40364) (t!307217 rules!1265))))))

(declare-fun lt!1319369 () Unit!58104)

(declare-fun lt!1319373 () Unit!58104)

(assert (=> d!1122516 (= lt!1319369 lt!1319373)))

(declare-fun lt!1319371 () List!40487)

(declare-fun lt!1319370 () List!40487)

(assert (=> d!1122516 (isPrefix!3321 lt!1319371 lt!1319370)))

(assert (=> d!1122516 (= lt!1319373 (lemmaIsPrefixRefl!2106 lt!1319371 lt!1319370))))

(assert (=> d!1122516 (= lt!1319370 (list!14992 (_2!22882 (v!38847 lt!1318792))))))

(assert (=> d!1122516 (= lt!1319371 (list!14992 (_2!22882 (v!38847 lt!1318792))))))

(assert (=> d!1122516 (rulesValidInductive!2180 thiss!11876 rules!1265)))

(assert (=> d!1122516 (= (maxPrefixZipperSequence!1207 thiss!11876 rules!1265 (_2!22882 (v!38847 lt!1318792))) lt!1319372)))

(declare-fun b!3804786 () Bool)

(assert (=> b!3804786 (= e!2351107 call!279319)))

(declare-fun b!3804787 () Bool)

(declare-fun e!2351105 () Bool)

(assert (=> b!3804787 (= e!2351106 e!2351105)))

(declare-fun res!1540411 () Bool)

(assert (=> b!3804787 (=> (not res!1540411) (not e!2351105))))

(assert (=> b!3804787 (= res!1540411 (= (_1!22882 (get!13382 lt!1319372)) (_1!22886 (get!13383 (maxPrefix!3113 thiss!11876 rules!1265 (list!14992 (_2!22882 (v!38847 lt!1318792))))))))))

(declare-fun b!3804788 () Bool)

(assert (=> b!3804788 (= e!2351105 (= (list!14992 (_2!22882 (get!13382 lt!1319372))) (_2!22886 (get!13383 (maxPrefix!3113 thiss!11876 rules!1265 (list!14992 (_2!22882 (v!38847 lt!1318792))))))))))

(declare-fun b!3804789 () Bool)

(assert (=> b!3804789 (= e!2351104 (= (list!14992 (_2!22882 (get!13382 lt!1319372))) (_2!22886 (get!13383 (maxPrefixZipper!545 thiss!11876 rules!1265 (list!14992 (_2!22882 (v!38847 lt!1318792))))))))))

(assert (= (and d!1122516 c!661795) b!3804786))

(assert (= (and d!1122516 (not c!661795)) b!3804784))

(assert (= (or b!3804786 b!3804784) bm!279314))

(assert (= (and d!1122516 res!1540413) b!3804785))

(assert (= (and b!3804785 (not res!1540412)) b!3804782))

(assert (= (and b!3804782 res!1540414) b!3804789))

(assert (= (and b!3804785 res!1540409) b!3804783))

(assert (= (and b!3804783 (not res!1540410)) b!3804787))

(assert (= (and b!3804787 res!1540411) b!3804788))

(declare-fun m!4336595 () Bool)

(assert (=> bm!279314 m!4336595))

(declare-fun m!4336597 () Bool)

(assert (=> b!3804789 m!4336597))

(declare-fun m!4336599 () Bool)

(assert (=> b!3804789 m!4336599))

(declare-fun m!4336601 () Bool)

(assert (=> b!3804789 m!4336601))

(assert (=> b!3804789 m!4334407))

(assert (=> b!3804789 m!4336597))

(assert (=> b!3804789 m!4334407))

(declare-fun m!4336603 () Bool)

(assert (=> b!3804789 m!4336603))

(declare-fun m!4336605 () Bool)

(assert (=> b!3804785 m!4336605))

(assert (=> b!3804788 m!4336601))

(assert (=> b!3804788 m!4334407))

(declare-fun m!4336607 () Bool)

(assert (=> b!3804788 m!4336607))

(assert (=> b!3804788 m!4336607))

(declare-fun m!4336609 () Bool)

(assert (=> b!3804788 m!4336609))

(assert (=> b!3804788 m!4334407))

(assert (=> b!3804788 m!4336603))

(declare-fun m!4336611 () Bool)

(assert (=> b!3804784 m!4336611))

(assert (=> b!3804782 m!4336603))

(assert (=> b!3804782 m!4334407))

(assert (=> b!3804782 m!4334407))

(assert (=> b!3804782 m!4336597))

(assert (=> b!3804782 m!4336597))

(assert (=> b!3804782 m!4336599))

(assert (=> b!3804787 m!4336603))

(assert (=> b!3804787 m!4334407))

(assert (=> b!3804787 m!4334407))

(assert (=> b!3804787 m!4336607))

(assert (=> b!3804787 m!4336607))

(assert (=> b!3804787 m!4336609))

(assert (=> b!3804783 m!4336605))

(assert (=> d!1122516 m!4334407))

(assert (=> d!1122516 m!4336605))

(declare-fun m!4336613 () Bool)

(assert (=> d!1122516 m!4336613))

(assert (=> d!1122516 m!4335023))

(assert (=> d!1122516 m!4336597))

(declare-fun m!4336615 () Bool)

(assert (=> d!1122516 m!4336615))

(declare-fun m!4336617 () Bool)

(assert (=> d!1122516 m!4336617))

(assert (=> d!1122516 m!4334407))

(assert (=> d!1122516 m!4336597))

(assert (=> d!1121978 d!1122516))

(declare-fun d!1122518 () Bool)

(declare-fun lt!1319376 () Int)

(assert (=> d!1122518 (>= lt!1319376 0)))

(declare-fun e!2351110 () Int)

(assert (=> d!1122518 (= lt!1319376 e!2351110)))

(declare-fun c!661796 () Bool)

(assert (=> d!1122518 (= c!661796 ((_ is Nil!40363) lt!1318799))))

(assert (=> d!1122518 (= (size!30392 lt!1318799) lt!1319376)))

(declare-fun b!3804790 () Bool)

(assert (=> b!3804790 (= e!2351110 0)))

(declare-fun b!3804791 () Bool)

(assert (=> b!3804791 (= e!2351110 (+ 1 (size!30392 (t!307216 lt!1318799))))))

(assert (= (and d!1122518 c!661796) b!3804790))

(assert (= (and d!1122518 (not c!661796)) b!3804791))

(declare-fun m!4336619 () Bool)

(assert (=> b!3804791 m!4336619))

(assert (=> b!3803721 d!1122518))

(assert (=> b!3803721 d!1122134))

(declare-fun d!1122520 () Bool)

(declare-fun c!661797 () Bool)

(assert (=> d!1122520 (= c!661797 ((_ is Nil!40363) lt!1318966))))

(declare-fun e!2351111 () (InoxSet C!22420))

(assert (=> d!1122520 (= (content!5956 lt!1318966) e!2351111)))

(declare-fun b!3804792 () Bool)

(assert (=> b!3804792 (= e!2351111 ((as const (Array C!22420 Bool)) false))))

(declare-fun b!3804793 () Bool)

(assert (=> b!3804793 (= e!2351111 ((_ map or) (store ((as const (Array C!22420 Bool)) false) (h!45783 lt!1318966) true) (content!5956 (t!307216 lt!1318966))))))

(assert (= (and d!1122520 c!661797) b!3804792))

(assert (= (and d!1122520 (not c!661797)) b!3804793))

(declare-fun m!4336621 () Bool)

(assert (=> b!3804793 m!4336621))

(declare-fun m!4336623 () Bool)

(assert (=> b!3804793 m!4336623))

(assert (=> d!1121982 d!1122520))

(assert (=> d!1121982 d!1122148))

(declare-fun d!1122522 () Bool)

(declare-fun c!661798 () Bool)

(assert (=> d!1122522 (= c!661798 ((_ is Nil!40363) lt!1318787))))

(declare-fun e!2351112 () (InoxSet C!22420))

(assert (=> d!1122522 (= (content!5956 lt!1318787) e!2351112)))

(declare-fun b!3804794 () Bool)

(assert (=> b!3804794 (= e!2351112 ((as const (Array C!22420 Bool)) false))))

(declare-fun b!3804795 () Bool)

(assert (=> b!3804795 (= e!2351112 ((_ map or) (store ((as const (Array C!22420 Bool)) false) (h!45783 lt!1318787) true) (content!5956 (t!307216 lt!1318787))))))

(assert (= (and d!1122522 c!661798) b!3804794))

(assert (= (and d!1122522 (not c!661798)) b!3804795))

(declare-fun m!4336625 () Bool)

(assert (=> b!3804795 m!4336625))

(declare-fun m!4336627 () Bool)

(assert (=> b!3804795 m!4336627))

(assert (=> d!1121982 d!1122522))

(assert (=> d!1121944 d!1121960))

(declare-fun d!1122524 () Bool)

(assert (=> d!1122524 (= (++!10133 (++!10133 lt!1318796 lt!1318787) lt!1318786) (++!10133 lt!1318796 (++!10133 lt!1318787 lt!1318786)))))

(assert (=> d!1122524 true))

(declare-fun _$52!2165 () Unit!58104)

(assert (=> d!1122524 (= (choose!22428 lt!1318796 lt!1318787 lt!1318786) _$52!2165)))

(declare-fun bs!579758 () Bool)

(assert (= bs!579758 d!1122524))

(assert (=> bs!579758 m!4334399))

(assert (=> bs!579758 m!4334399))

(assert (=> bs!579758 m!4334413))

(assert (=> bs!579758 m!4334385))

(assert (=> bs!579758 m!4334385))

(assert (=> bs!579758 m!4334415))

(assert (=> d!1121944 d!1122524))

(assert (=> d!1121944 d!1121948))

(assert (=> d!1121944 d!1121982))

(assert (=> d!1121944 d!1121952))

(declare-fun d!1122526 () Bool)

(declare-fun e!2351113 () Bool)

(assert (=> d!1122526 e!2351113))

(declare-fun res!1540415 () Bool)

(assert (=> d!1122526 (=> (not res!1540415) (not e!2351113))))

(assert (=> d!1122526 (= res!1540415 (isBalanced!3576 (prepend!1358 (c!661415 (_1!22881 lt!1318984)) (_1!22882 (v!38847 lt!1318986)))))))

(declare-fun lt!1319381 () BalanceConc!24392)

(assert (=> d!1122526 (= lt!1319381 (BalanceConc!24393 (prepend!1358 (c!661415 (_1!22881 lt!1318984)) (_1!22882 (v!38847 lt!1318986)))))))

(assert (=> d!1122526 (= (prepend!1356 (_1!22881 lt!1318984) (_1!22882 (v!38847 lt!1318986))) lt!1319381)))

(declare-fun b!3804796 () Bool)

(assert (=> b!3804796 (= e!2351113 (= (list!14991 lt!1319381) (Cons!40365 (_1!22882 (v!38847 lt!1318986)) (list!14991 (_1!22881 lt!1318984)))))))

(assert (= (and d!1122526 res!1540415) b!3804796))

(declare-fun m!4336629 () Bool)

(assert (=> d!1122526 m!4336629))

(assert (=> d!1122526 m!4336629))

(declare-fun m!4336631 () Bool)

(assert (=> d!1122526 m!4336631))

(declare-fun m!4336633 () Bool)

(assert (=> b!3804796 m!4336633))

(declare-fun m!4336635 () Bool)

(assert (=> b!3804796 m!4336635))

(assert (=> b!3803731 d!1122526))

(declare-fun b!3804801 () Bool)

(declare-fun e!2351118 () Bool)

(declare-fun lt!1319387 () tuple2!39494)

(assert (=> b!3804801 (= e!2351118 (not (isEmpty!23766 (_1!22881 lt!1319387))))))

(declare-fun b!3804802 () Bool)

(declare-fun e!2351119 () Bool)

(assert (=> b!3804802 (= e!2351119 e!2351118)))

(declare-fun res!1540418 () Bool)

(assert (=> b!3804802 (= res!1540418 (< (size!30389 (_2!22881 lt!1319387)) (size!30389 (_2!22882 (v!38847 lt!1318986)))))))

(assert (=> b!3804802 (=> (not res!1540418) (not e!2351118))))

(declare-fun e!2351117 () Bool)

(declare-fun b!3804803 () Bool)

(assert (=> b!3804803 (= e!2351117 (= (list!14992 (_2!22881 lt!1319387)) (_2!22885 (lexList!1571 thiss!11876 rules!1265 (list!14992 (_2!22882 (v!38847 lt!1318986)))))))))

(declare-fun d!1122528 () Bool)

(assert (=> d!1122528 e!2351117))

(declare-fun res!1540417 () Bool)

(assert (=> d!1122528 (=> (not res!1540417) (not e!2351117))))

(assert (=> d!1122528 (= res!1540417 e!2351119)))

(declare-fun c!661801 () Bool)

(assert (=> d!1122528 (= c!661801 (> (size!30390 (_1!22881 lt!1319387)) 0))))

(declare-fun e!2351116 () tuple2!39494)

(assert (=> d!1122528 (= lt!1319387 e!2351116)))

(declare-fun c!661802 () Bool)

(declare-fun lt!1319388 () Option!8624)

(assert (=> d!1122528 (= c!661802 ((_ is Some!8623) lt!1319388))))

(assert (=> d!1122528 (= lt!1319388 (maxPrefixZipperSequence!1207 thiss!11876 rules!1265 (_2!22882 (v!38847 lt!1318986))))))

(assert (=> d!1122528 (= (lexRec!825 thiss!11876 rules!1265 (_2!22882 (v!38847 lt!1318986))) lt!1319387)))

(declare-fun b!3804804 () Bool)

(assert (=> b!3804804 (= e!2351119 (= (list!14992 (_2!22881 lt!1319387)) (list!14992 (_2!22882 (v!38847 lt!1318986)))))))

(declare-fun b!3804805 () Bool)

(declare-fun res!1540416 () Bool)

(assert (=> b!3804805 (=> (not res!1540416) (not e!2351117))))

(assert (=> b!3804805 (= res!1540416 (= (list!14991 (_1!22881 lt!1319387)) (_1!22885 (lexList!1571 thiss!11876 rules!1265 (list!14992 (_2!22882 (v!38847 lt!1318986)))))))))

(declare-fun b!3804806 () Bool)

(assert (=> b!3804806 (= e!2351116 (tuple2!39495 (BalanceConc!24393 Empty!12399) (_2!22882 (v!38847 lt!1318986))))))

(declare-fun b!3804807 () Bool)

(declare-fun lt!1319386 () tuple2!39494)

(assert (=> b!3804807 (= e!2351116 (tuple2!39495 (prepend!1356 (_1!22881 lt!1319386) (_1!22882 (v!38847 lt!1319388))) (_2!22881 lt!1319386)))))

(assert (=> b!3804807 (= lt!1319386 (lexRec!825 thiss!11876 rules!1265 (_2!22882 (v!38847 lt!1319388))))))

(assert (= (and d!1122528 c!661802) b!3804807))

(assert (= (and d!1122528 (not c!661802)) b!3804806))

(assert (= (and d!1122528 c!661801) b!3804802))

(assert (= (and d!1122528 (not c!661801)) b!3804804))

(assert (= (and b!3804802 res!1540418) b!3804801))

(assert (= (and d!1122528 res!1540417) b!3804805))

(assert (= (and b!3804805 res!1540416) b!3804803))

(declare-fun m!4336637 () Bool)

(assert (=> b!3804803 m!4336637))

(declare-fun m!4336639 () Bool)

(assert (=> b!3804803 m!4336639))

(assert (=> b!3804803 m!4336639))

(declare-fun m!4336641 () Bool)

(assert (=> b!3804803 m!4336641))

(declare-fun m!4336643 () Bool)

(assert (=> b!3804801 m!4336643))

(declare-fun m!4336645 () Bool)

(assert (=> b!3804802 m!4336645))

(declare-fun m!4336647 () Bool)

(assert (=> b!3804802 m!4336647))

(declare-fun m!4336649 () Bool)

(assert (=> b!3804805 m!4336649))

(assert (=> b!3804805 m!4336639))

(assert (=> b!3804805 m!4336639))

(assert (=> b!3804805 m!4336641))

(declare-fun m!4336651 () Bool)

(assert (=> b!3804807 m!4336651))

(declare-fun m!4336653 () Bool)

(assert (=> b!3804807 m!4336653))

(declare-fun m!4336655 () Bool)

(assert (=> d!1122528 m!4336655))

(declare-fun m!4336657 () Bool)

(assert (=> d!1122528 m!4336657))

(assert (=> b!3804804 m!4336637))

(assert (=> b!3804804 m!4336639))

(assert (=> b!3803731 d!1122528))

(declare-fun d!1122530 () Bool)

(declare-fun res!1540421 () Bool)

(declare-fun e!2351122 () Bool)

(assert (=> d!1122530 (=> (not res!1540421) (not e!2351122))))

(assert (=> d!1122530 (= res!1540421 (= (csize!25026 (c!661414 treated!13)) (+ (size!30395 (left!31229 (c!661414 treated!13))) (size!30395 (right!31559 (c!661414 treated!13))))))))

(assert (=> d!1122530 (= (inv!54337 (c!661414 treated!13)) e!2351122)))

(declare-fun b!3804810 () Bool)

(declare-fun res!1540422 () Bool)

(assert (=> b!3804810 (=> (not res!1540422) (not e!2351122))))

(assert (=> b!3804810 (= res!1540422 (and (not (= (left!31229 (c!661414 treated!13)) Empty!12398)) (not (= (right!31559 (c!661414 treated!13)) Empty!12398))))))

(declare-fun b!3804811 () Bool)

(declare-fun res!1540423 () Bool)

(assert (=> b!3804811 (=> (not res!1540423) (not e!2351122))))

(assert (=> b!3804811 (= res!1540423 (= (cheight!12609 (c!661414 treated!13)) (+ (max!0 (height!1796 (left!31229 (c!661414 treated!13))) (height!1796 (right!31559 (c!661414 treated!13)))) 1)))))

(declare-fun b!3804812 () Bool)

(assert (=> b!3804812 (= e!2351122 (<= 0 (cheight!12609 (c!661414 treated!13))))))

(assert (= (and d!1122530 res!1540421) b!3804810))

(assert (= (and b!3804810 res!1540422) b!3804811))

(assert (= (and b!3804811 res!1540423) b!3804812))

(declare-fun m!4336659 () Bool)

(assert (=> d!1122530 m!4336659))

(declare-fun m!4336661 () Bool)

(assert (=> d!1122530 m!4336661))

(declare-fun m!4336663 () Bool)

(assert (=> b!3804811 m!4336663))

(declare-fun m!4336665 () Bool)

(assert (=> b!3804811 m!4336665))

(assert (=> b!3804811 m!4336663))

(assert (=> b!3804811 m!4336665))

(declare-fun m!4336667 () Bool)

(assert (=> b!3804811 m!4336667))

(assert (=> b!3803735 d!1122530))

(declare-fun b!3804813 () Bool)

(declare-fun e!2351126 () List!40487)

(assert (=> b!3804813 (= e!2351126 Nil!40363)))

(declare-fun b!3804814 () Bool)

(declare-fun e!2351124 () List!40487)

(assert (=> b!3804814 (= e!2351124 lt!1318799)))

(declare-fun b!3804815 () Bool)

(declare-fun e!2351123 () Int)

(declare-fun e!2351125 () Int)

(assert (=> b!3804815 (= e!2351123 e!2351125)))

(declare-fun call!279320 () Int)

(declare-fun c!661804 () Bool)

(assert (=> b!3804815 (= c!661804 (>= (- (size!30392 lt!1318799) (size!30392 lt!1318797)) call!279320))))

(declare-fun b!3804816 () Bool)

(assert (=> b!3804816 (= e!2351124 (drop!2121 (t!307216 lt!1318799) (- (- (size!30392 lt!1318799) (size!30392 lt!1318797)) 1)))))

(declare-fun b!3804817 () Bool)

(assert (=> b!3804817 (= e!2351123 call!279320)))

(declare-fun b!3804818 () Bool)

(declare-fun e!2351127 () Bool)

(declare-fun lt!1319395 () List!40487)

(assert (=> b!3804818 (= e!2351127 (= (size!30392 lt!1319395) e!2351123))))

(declare-fun c!661803 () Bool)

(assert (=> b!3804818 (= c!661803 (<= (- (size!30392 lt!1318799) (size!30392 lt!1318797)) 0))))

(declare-fun b!3804819 () Bool)

(assert (=> b!3804819 (= e!2351126 e!2351124)))

(declare-fun c!661805 () Bool)

(assert (=> b!3804819 (= c!661805 (<= (- (size!30392 lt!1318799) (size!30392 lt!1318797)) 0))))

(declare-fun b!3804820 () Bool)

(assert (=> b!3804820 (= e!2351125 0)))

(declare-fun b!3804821 () Bool)

(assert (=> b!3804821 (= e!2351125 (- call!279320 (- (size!30392 lt!1318799) (size!30392 lt!1318797))))))

(declare-fun d!1122532 () Bool)

(assert (=> d!1122532 e!2351127))

(declare-fun res!1540424 () Bool)

(assert (=> d!1122532 (=> (not res!1540424) (not e!2351127))))

(assert (=> d!1122532 (= res!1540424 (= ((_ map implies) (content!5956 lt!1319395) (content!5956 lt!1318799)) ((as const (InoxSet C!22420)) true)))))

(assert (=> d!1122532 (= lt!1319395 e!2351126)))

(declare-fun c!661806 () Bool)

(assert (=> d!1122532 (= c!661806 ((_ is Nil!40363) lt!1318799))))

(assert (=> d!1122532 (= (drop!2121 lt!1318799 (- (size!30392 lt!1318799) (size!30392 lt!1318797))) lt!1319395)))

(declare-fun bm!279315 () Bool)

(assert (=> bm!279315 (= call!279320 (size!30392 lt!1318799))))

(assert (= (and d!1122532 c!661806) b!3804813))

(assert (= (and d!1122532 (not c!661806)) b!3804819))

(assert (= (and b!3804819 c!661805) b!3804814))

(assert (= (and b!3804819 (not c!661805)) b!3804816))

(assert (= (and d!1122532 res!1540424) b!3804818))

(assert (= (and b!3804818 c!661803) b!3804817))

(assert (= (and b!3804818 (not c!661803)) b!3804815))

(assert (= (and b!3804815 c!661804) b!3804820))

(assert (= (and b!3804815 (not c!661804)) b!3804821))

(assert (= (or b!3804817 b!3804815 b!3804821) bm!279315))

(declare-fun m!4336669 () Bool)

(assert (=> b!3804816 m!4336669))

(declare-fun m!4336671 () Bool)

(assert (=> b!3804818 m!4336671))

(declare-fun m!4336673 () Bool)

(assert (=> d!1122532 m!4336673))

(declare-fun m!4336675 () Bool)

(assert (=> d!1122532 m!4336675))

(assert (=> bm!279315 m!4335145))

(assert (=> d!1122018 d!1122532))

(assert (=> d!1122018 d!1122518))

(assert (=> d!1122018 d!1122134))

(declare-fun b!3804823 () Bool)

(declare-fun e!2351129 () List!40487)

(assert (=> b!3804823 (= e!2351129 (Cons!40363 (h!45783 (t!307216 lt!1318787)) (++!10133 (t!307216 (t!307216 lt!1318787)) lt!1318786)))))

(declare-fun e!2351128 () Bool)

(declare-fun b!3804825 () Bool)

(declare-fun lt!1319398 () List!40487)

(assert (=> b!3804825 (= e!2351128 (or (not (= lt!1318786 Nil!40363)) (= lt!1319398 (t!307216 lt!1318787))))))

(declare-fun d!1122534 () Bool)

(assert (=> d!1122534 e!2351128))

(declare-fun res!1540425 () Bool)

(assert (=> d!1122534 (=> (not res!1540425) (not e!2351128))))

(assert (=> d!1122534 (= res!1540425 (= (content!5956 lt!1319398) ((_ map or) (content!5956 (t!307216 lt!1318787)) (content!5956 lt!1318786))))))

(assert (=> d!1122534 (= lt!1319398 e!2351129)))

(declare-fun c!661807 () Bool)

(assert (=> d!1122534 (= c!661807 ((_ is Nil!40363) (t!307216 lt!1318787)))))

(assert (=> d!1122534 (= (++!10133 (t!307216 lt!1318787) lt!1318786) lt!1319398)))

(declare-fun b!3804822 () Bool)

(assert (=> b!3804822 (= e!2351129 lt!1318786)))

(declare-fun b!3804824 () Bool)

(declare-fun res!1540426 () Bool)

(assert (=> b!3804824 (=> (not res!1540426) (not e!2351128))))

(assert (=> b!3804824 (= res!1540426 (= (size!30392 lt!1319398) (+ (size!30392 (t!307216 lt!1318787)) (size!30392 lt!1318786))))))

(assert (= (and d!1122534 c!661807) b!3804822))

(assert (= (and d!1122534 (not c!661807)) b!3804823))

(assert (= (and d!1122534 res!1540425) b!3804824))

(assert (= (and b!3804824 res!1540426) b!3804825))

(declare-fun m!4336677 () Bool)

(assert (=> b!3804823 m!4336677))

(declare-fun m!4336679 () Bool)

(assert (=> d!1122534 m!4336679))

(assert (=> d!1122534 m!4336627))

(assert (=> d!1122534 m!4334917))

(declare-fun m!4336681 () Bool)

(assert (=> b!3804824 m!4336681))

(declare-fun m!4336683 () Bool)

(assert (=> b!3804824 m!4336683))

(assert (=> b!3804824 m!4334923))

(assert (=> b!3803558 d!1122534))

(declare-fun d!1122536 () Bool)

(assert (=> d!1122536 (= (list!14991 lt!1318983) (list!14995 (c!661415 lt!1318983)))))

(declare-fun bs!579759 () Bool)

(assert (= bs!579759 d!1122536))

(declare-fun m!4336685 () Bool)

(assert (=> bs!579759 m!4336685))

(assert (=> b!3803724 d!1122536))

(declare-fun d!1122538 () Bool)

(assert (=> d!1122538 (= (list!14991 (_1!22881 lt!1318805)) (list!14995 (c!661415 (_1!22881 lt!1318805))))))

(declare-fun bs!579760 () Bool)

(assert (= bs!579760 d!1122538))

(assert (=> bs!579760 m!4335513))

(assert (=> b!3803724 d!1122538))

(declare-fun d!1122540 () Bool)

(assert (=> d!1122540 (= (list!14992 lt!1318960) (list!14996 (c!661414 lt!1318960)))))

(declare-fun bs!579761 () Bool)

(assert (= bs!579761 d!1122540))

(declare-fun m!4336687 () Bool)

(assert (=> bs!579761 m!4336687))

(assert (=> d!1121972 d!1122540))

(declare-fun d!1122542 () Bool)

(assert (=> d!1122542 (= (list!14992 (_2!22881 lt!1318896)) (list!14996 (c!661414 (_2!22881 lt!1318896))))))

(declare-fun bs!579762 () Bool)

(assert (= bs!579762 d!1122542))

(declare-fun m!4336689 () Bool)

(assert (=> bs!579762 m!4336689))

(assert (=> b!3803507 d!1122542))

(declare-fun b!3804826 () Bool)

(declare-fun e!2351130 () Bool)

(declare-fun lt!1319399 () tuple2!39502)

(assert (=> b!3804826 (= e!2351130 (= (_2!22885 lt!1319399) (list!14992 totalInput!335)))))

(declare-fun b!3804827 () Bool)

(declare-fun e!2351131 () Bool)

(assert (=> b!3804827 (= e!2351130 e!2351131)))

(declare-fun res!1540427 () Bool)

(assert (=> b!3804827 (= res!1540427 (< (size!30392 (_2!22885 lt!1319399)) (size!30392 (list!14992 totalInput!335))))))

(assert (=> b!3804827 (=> (not res!1540427) (not e!2351131))))

(declare-fun d!1122544 () Bool)

(assert (=> d!1122544 e!2351130))

(declare-fun c!661809 () Bool)

(assert (=> d!1122544 (= c!661809 (> (size!30391 (_1!22885 lt!1319399)) 0))))

(declare-fun e!2351132 () tuple2!39502)

(assert (=> d!1122544 (= lt!1319399 e!2351132)))

(declare-fun c!661808 () Bool)

(declare-fun lt!1319401 () Option!8626)

(assert (=> d!1122544 (= c!661808 ((_ is Some!8625) lt!1319401))))

(assert (=> d!1122544 (= lt!1319401 (maxPrefix!3113 thiss!11876 rules!1265 (list!14992 totalInput!335)))))

(assert (=> d!1122544 (= (lexList!1571 thiss!11876 rules!1265 (list!14992 totalInput!335)) lt!1319399)))

(declare-fun b!3804828 () Bool)

(declare-fun lt!1319400 () tuple2!39502)

(assert (=> b!3804828 (= e!2351132 (tuple2!39503 (Cons!40365 (_1!22886 (v!38853 lt!1319401)) (_1!22885 lt!1319400)) (_2!22885 lt!1319400)))))

(assert (=> b!3804828 (= lt!1319400 (lexList!1571 thiss!11876 rules!1265 (_2!22886 (v!38853 lt!1319401))))))

(declare-fun b!3804829 () Bool)

(assert (=> b!3804829 (= e!2351131 (not (isEmpty!23763 (_1!22885 lt!1319399))))))

(declare-fun b!3804830 () Bool)

(assert (=> b!3804830 (= e!2351132 (tuple2!39503 Nil!40365 (list!14992 totalInput!335)))))

(assert (= (and d!1122544 c!661808) b!3804828))

(assert (= (and d!1122544 (not c!661808)) b!3804830))

(assert (= (and d!1122544 c!661809) b!3804827))

(assert (= (and d!1122544 (not c!661809)) b!3804826))

(assert (= (and b!3804827 res!1540427) b!3804829))

(declare-fun m!4336691 () Bool)

(assert (=> b!3804827 m!4336691))

(assert (=> b!3804827 m!4334433))

(assert (=> b!3804827 m!4335433))

(declare-fun m!4336693 () Bool)

(assert (=> d!1122544 m!4336693))

(assert (=> d!1122544 m!4334433))

(declare-fun m!4336695 () Bool)

(assert (=> d!1122544 m!4336695))

(declare-fun m!4336697 () Bool)

(assert (=> b!3804828 m!4336697))

(declare-fun m!4336699 () Bool)

(assert (=> b!3804829 m!4336699))

(assert (=> b!3803507 d!1122544))

(assert (=> b!3803507 d!1121992))

(declare-fun b!3804847 () Bool)

(declare-fun e!2351144 () List!40487)

(declare-fun list!15000 (IArray!24801) List!40487)

(assert (=> b!3804847 (= e!2351144 (list!15000 (xs!15664 (c!661414 (_2!22881 lt!1318803)))))))

(declare-fun b!3804846 () Bool)

(declare-fun e!2351143 () List!40487)

(assert (=> b!3804846 (= e!2351143 e!2351144)))

(declare-fun c!661815 () Bool)

(assert (=> b!3804846 (= c!661815 ((_ is Leaf!19202) (c!661414 (_2!22881 lt!1318803))))))

(declare-fun b!3804845 () Bool)

(assert (=> b!3804845 (= e!2351143 Nil!40363)))

(declare-fun b!3804848 () Bool)

(assert (=> b!3804848 (= e!2351144 (++!10133 (list!14996 (left!31229 (c!661414 (_2!22881 lt!1318803)))) (list!14996 (right!31559 (c!661414 (_2!22881 lt!1318803))))))))

(declare-fun d!1122546 () Bool)

(declare-fun c!661814 () Bool)

(assert (=> d!1122546 (= c!661814 ((_ is Empty!12398) (c!661414 (_2!22881 lt!1318803))))))

(assert (=> d!1122546 (= (list!14996 (c!661414 (_2!22881 lt!1318803))) e!2351143)))

(assert (= (and d!1122546 c!661814) b!3804845))

(assert (= (and d!1122546 (not c!661814)) b!3804846))

(assert (= (and b!3804846 c!661815) b!3804847))

(assert (= (and b!3804846 (not c!661815)) b!3804848))

(declare-fun m!4336701 () Bool)

(assert (=> b!3804847 m!4336701))

(declare-fun m!4336703 () Bool)

(assert (=> b!3804848 m!4336703))

(declare-fun m!4336705 () Bool)

(assert (=> b!3804848 m!4336705))

(assert (=> b!3804848 m!4336703))

(assert (=> b!3804848 m!4336705))

(declare-fun m!4336707 () Bool)

(assert (=> b!3804848 m!4336707))

(assert (=> d!1122032 d!1122546))

(declare-fun d!1122548 () Bool)

(assert (=> d!1122548 (= (list!14992 (_2!22881 lt!1318985)) (list!14996 (c!661414 (_2!22881 lt!1318985))))))

(declare-fun bs!579763 () Bool)

(assert (= bs!579763 d!1122548))

(declare-fun m!4336709 () Bool)

(assert (=> bs!579763 m!4336709))

(assert (=> b!3803727 d!1122548))

(declare-fun b!3804849 () Bool)

(declare-fun e!2351145 () Bool)

(declare-fun lt!1319406 () tuple2!39502)

(assert (=> b!3804849 (= e!2351145 (= (_2!22885 lt!1319406) (list!14992 (_2!22882 (v!38847 lt!1318793)))))))

(declare-fun b!3804850 () Bool)

(declare-fun e!2351146 () Bool)

(assert (=> b!3804850 (= e!2351145 e!2351146)))

(declare-fun res!1540434 () Bool)

(assert (=> b!3804850 (= res!1540434 (< (size!30392 (_2!22885 lt!1319406)) (size!30392 (list!14992 (_2!22882 (v!38847 lt!1318793))))))))

(assert (=> b!3804850 (=> (not res!1540434) (not e!2351146))))

(declare-fun d!1122550 () Bool)

(assert (=> d!1122550 e!2351145))

(declare-fun c!661817 () Bool)

(assert (=> d!1122550 (= c!661817 (> (size!30391 (_1!22885 lt!1319406)) 0))))

(declare-fun e!2351147 () tuple2!39502)

(assert (=> d!1122550 (= lt!1319406 e!2351147)))

(declare-fun c!661816 () Bool)

(declare-fun lt!1319408 () Option!8626)

(assert (=> d!1122550 (= c!661816 ((_ is Some!8625) lt!1319408))))

(assert (=> d!1122550 (= lt!1319408 (maxPrefix!3113 thiss!11876 rules!1265 (list!14992 (_2!22882 (v!38847 lt!1318793)))))))

(assert (=> d!1122550 (= (lexList!1571 thiss!11876 rules!1265 (list!14992 (_2!22882 (v!38847 lt!1318793)))) lt!1319406)))

(declare-fun b!3804851 () Bool)

(declare-fun lt!1319407 () tuple2!39502)

(assert (=> b!3804851 (= e!2351147 (tuple2!39503 (Cons!40365 (_1!22886 (v!38853 lt!1319408)) (_1!22885 lt!1319407)) (_2!22885 lt!1319407)))))

(assert (=> b!3804851 (= lt!1319407 (lexList!1571 thiss!11876 rules!1265 (_2!22886 (v!38853 lt!1319408))))))

(declare-fun b!3804852 () Bool)

(assert (=> b!3804852 (= e!2351146 (not (isEmpty!23763 (_1!22885 lt!1319406))))))

(declare-fun b!3804853 () Bool)

(assert (=> b!3804853 (= e!2351147 (tuple2!39503 Nil!40365 (list!14992 (_2!22882 (v!38847 lt!1318793)))))))

(assert (= (and d!1122550 c!661816) b!3804851))

(assert (= (and d!1122550 (not c!661816)) b!3804853))

(assert (= (and d!1122550 c!661817) b!3804850))

(assert (= (and d!1122550 (not c!661817)) b!3804849))

(assert (= (and b!3804850 res!1540434) b!3804852))

(declare-fun m!4336711 () Bool)

(assert (=> b!3804850 m!4336711))

(assert (=> b!3804850 m!4335163))

(assert (=> b!3804850 m!4335531))

(declare-fun m!4336713 () Bool)

(assert (=> d!1122550 m!4336713))

(assert (=> d!1122550 m!4335163))

(declare-fun m!4336715 () Bool)

(assert (=> d!1122550 m!4336715))

(declare-fun m!4336717 () Bool)

(assert (=> b!3804851 m!4336717))

(declare-fun m!4336719 () Bool)

(assert (=> b!3804852 m!4336719))

(assert (=> b!3803727 d!1122550))

(declare-fun d!1122552 () Bool)

(assert (=> d!1122552 (= (list!14992 (_2!22882 (v!38847 lt!1318793))) (list!14996 (c!661414 (_2!22882 (v!38847 lt!1318793)))))))

(declare-fun bs!579764 () Bool)

(assert (= bs!579764 d!1122552))

(declare-fun m!4336721 () Bool)

(assert (=> bs!579764 m!4336721))

(assert (=> b!3803727 d!1122552))

(declare-fun b!3804856 () Bool)

(declare-fun e!2351149 () List!40487)

(assert (=> b!3804856 (= e!2351149 (list!15000 (xs!15664 (c!661414 totalInput!335))))))

(declare-fun b!3804855 () Bool)

(declare-fun e!2351148 () List!40487)

(assert (=> b!3804855 (= e!2351148 e!2351149)))

(declare-fun c!661819 () Bool)

(assert (=> b!3804855 (= c!661819 ((_ is Leaf!19202) (c!661414 totalInput!335)))))

(declare-fun b!3804854 () Bool)

(assert (=> b!3804854 (= e!2351148 Nil!40363)))

(declare-fun b!3804857 () Bool)

(assert (=> b!3804857 (= e!2351149 (++!10133 (list!14996 (left!31229 (c!661414 totalInput!335))) (list!14996 (right!31559 (c!661414 totalInput!335)))))))

(declare-fun d!1122554 () Bool)

(declare-fun c!661818 () Bool)

(assert (=> d!1122554 (= c!661818 ((_ is Empty!12398) (c!661414 totalInput!335)))))

(assert (=> d!1122554 (= (list!14996 (c!661414 totalInput!335)) e!2351148)))

(assert (= (and d!1122554 c!661818) b!3804854))

(assert (= (and d!1122554 (not c!661818)) b!3804855))

(assert (= (and b!3804855 c!661819) b!3804856))

(assert (= (and b!3804855 (not c!661819)) b!3804857))

(declare-fun m!4336723 () Bool)

(assert (=> b!3804856 m!4336723))

(declare-fun m!4336725 () Bool)

(assert (=> b!3804857 m!4336725))

(declare-fun m!4336727 () Bool)

(assert (=> b!3804857 m!4336727))

(assert (=> b!3804857 m!4336725))

(assert (=> b!3804857 m!4336727))

(declare-fun m!4336729 () Bool)

(assert (=> b!3804857 m!4336729))

(assert (=> d!1121992 d!1122554))

(declare-fun d!1122556 () Bool)

(assert (=> d!1122556 (= (list!14991 (_1!22881 lt!1318963)) (list!14995 (c!661415 (_1!22881 lt!1318963))))))

(declare-fun bs!579765 () Bool)

(assert (= bs!579765 d!1122556))

(declare-fun m!4336731 () Bool)

(assert (=> bs!579765 m!4336731))

(assert (=> b!3803675 d!1122556))

(declare-fun b!3804858 () Bool)

(declare-fun e!2351150 () Bool)

(declare-fun lt!1319409 () tuple2!39502)

(assert (=> b!3804858 (= e!2351150 (= (_2!22885 lt!1319409) (list!14992 (_2!22882 (v!38847 lt!1318792)))))))

(declare-fun b!3804859 () Bool)

(declare-fun e!2351151 () Bool)

(assert (=> b!3804859 (= e!2351150 e!2351151)))

(declare-fun res!1540435 () Bool)

(assert (=> b!3804859 (= res!1540435 (< (size!30392 (_2!22885 lt!1319409)) (size!30392 (list!14992 (_2!22882 (v!38847 lt!1318792))))))))

(assert (=> b!3804859 (=> (not res!1540435) (not e!2351151))))

(declare-fun d!1122558 () Bool)

(assert (=> d!1122558 e!2351150))

(declare-fun c!661821 () Bool)

(assert (=> d!1122558 (= c!661821 (> (size!30391 (_1!22885 lt!1319409)) 0))))

(declare-fun e!2351152 () tuple2!39502)

(assert (=> d!1122558 (= lt!1319409 e!2351152)))

(declare-fun c!661820 () Bool)

(declare-fun lt!1319411 () Option!8626)

(assert (=> d!1122558 (= c!661820 ((_ is Some!8625) lt!1319411))))

(assert (=> d!1122558 (= lt!1319411 (maxPrefix!3113 thiss!11876 rules!1265 (list!14992 (_2!22882 (v!38847 lt!1318792)))))))

(assert (=> d!1122558 (= (lexList!1571 thiss!11876 rules!1265 (list!14992 (_2!22882 (v!38847 lt!1318792)))) lt!1319409)))

(declare-fun b!3804860 () Bool)

(declare-fun lt!1319410 () tuple2!39502)

(assert (=> b!3804860 (= e!2351152 (tuple2!39503 (Cons!40365 (_1!22886 (v!38853 lt!1319411)) (_1!22885 lt!1319410)) (_2!22885 lt!1319410)))))

(assert (=> b!3804860 (= lt!1319410 (lexList!1571 thiss!11876 rules!1265 (_2!22886 (v!38853 lt!1319411))))))

(declare-fun b!3804861 () Bool)

(assert (=> b!3804861 (= e!2351151 (not (isEmpty!23763 (_1!22885 lt!1319409))))))

(declare-fun b!3804862 () Bool)

(assert (=> b!3804862 (= e!2351152 (tuple2!39503 Nil!40365 (list!14992 (_2!22882 (v!38847 lt!1318792)))))))

(assert (= (and d!1122558 c!661820) b!3804860))

(assert (= (and d!1122558 (not c!661820)) b!3804862))

(assert (= (and d!1122558 c!661821) b!3804859))

(assert (= (and d!1122558 (not c!661821)) b!3804858))

(assert (= (and b!3804859 res!1540435) b!3804861))

(declare-fun m!4336733 () Bool)

(assert (=> b!3804859 m!4336733))

(assert (=> b!3804859 m!4334407))

(declare-fun m!4336735 () Bool)

(assert (=> b!3804859 m!4336735))

(declare-fun m!4336737 () Bool)

(assert (=> d!1122558 m!4336737))

(assert (=> d!1122558 m!4334407))

(assert (=> d!1122558 m!4336607))

(declare-fun m!4336739 () Bool)

(assert (=> b!3804860 m!4336739))

(declare-fun m!4336741 () Bool)

(assert (=> b!3804861 m!4336741))

(assert (=> b!3803675 d!1122558))

(assert (=> b!3803675 d!1121974))

(declare-fun b!3804863 () Bool)

(declare-fun e!2351153 () Bool)

(assert (=> b!3804863 (= e!2351153 (not (isEmpty!23771 (right!31560 (append!1062 (c!661415 acc!335) (_1!22882 (v!38847 lt!1318792)))))))))

(declare-fun b!3804864 () Bool)

(declare-fun res!1540440 () Bool)

(assert (=> b!3804864 (=> (not res!1540440) (not e!2351153))))

(assert (=> b!3804864 (= res!1540440 (<= (- (height!1794 (left!31230 (append!1062 (c!661415 acc!335) (_1!22882 (v!38847 lt!1318792))))) (height!1794 (right!31560 (append!1062 (c!661415 acc!335) (_1!22882 (v!38847 lt!1318792)))))) 1))))

(declare-fun b!3804865 () Bool)

(declare-fun res!1540439 () Bool)

(assert (=> b!3804865 (=> (not res!1540439) (not e!2351153))))

(assert (=> b!3804865 (= res!1540439 (isBalanced!3576 (left!31230 (append!1062 (c!661415 acc!335) (_1!22882 (v!38847 lt!1318792))))))))

(declare-fun b!3804866 () Bool)

(declare-fun e!2351154 () Bool)

(assert (=> b!3804866 (= e!2351154 e!2351153)))

(declare-fun res!1540438 () Bool)

(assert (=> b!3804866 (=> (not res!1540438) (not e!2351153))))

(assert (=> b!3804866 (= res!1540438 (<= (- 1) (- (height!1794 (left!31230 (append!1062 (c!661415 acc!335) (_1!22882 (v!38847 lt!1318792))))) (height!1794 (right!31560 (append!1062 (c!661415 acc!335) (_1!22882 (v!38847 lt!1318792))))))))))

(declare-fun b!3804867 () Bool)

(declare-fun res!1540441 () Bool)

(assert (=> b!3804867 (=> (not res!1540441) (not e!2351153))))

(assert (=> b!3804867 (= res!1540441 (not (isEmpty!23771 (left!31230 (append!1062 (c!661415 acc!335) (_1!22882 (v!38847 lt!1318792)))))))))

(declare-fun d!1122560 () Bool)

(declare-fun res!1540437 () Bool)

(assert (=> d!1122560 (=> res!1540437 e!2351154)))

(assert (=> d!1122560 (= res!1540437 (not ((_ is Node!12399) (append!1062 (c!661415 acc!335) (_1!22882 (v!38847 lt!1318792))))))))

(assert (=> d!1122560 (= (isBalanced!3576 (append!1062 (c!661415 acc!335) (_1!22882 (v!38847 lt!1318792)))) e!2351154)))

(declare-fun b!3804868 () Bool)

(declare-fun res!1540436 () Bool)

(assert (=> b!3804868 (=> (not res!1540436) (not e!2351153))))

(assert (=> b!3804868 (= res!1540436 (isBalanced!3576 (right!31560 (append!1062 (c!661415 acc!335) (_1!22882 (v!38847 lt!1318792))))))))

(assert (= (and d!1122560 (not res!1540437)) b!3804866))

(assert (= (and b!3804866 res!1540438) b!3804864))

(assert (= (and b!3804864 res!1540440) b!3804865))

(assert (= (and b!3804865 res!1540439) b!3804868))

(assert (= (and b!3804868 res!1540436) b!3804867))

(assert (= (and b!3804867 res!1540441) b!3804863))

(declare-fun m!4336743 () Bool)

(assert (=> b!3804864 m!4336743))

(declare-fun m!4336745 () Bool)

(assert (=> b!3804864 m!4336745))

(declare-fun m!4336747 () Bool)

(assert (=> b!3804865 m!4336747))

(declare-fun m!4336749 () Bool)

(assert (=> b!3804863 m!4336749))

(assert (=> b!3804866 m!4336743))

(assert (=> b!3804866 m!4336745))

(declare-fun m!4336751 () Bool)

(assert (=> b!3804867 m!4336751))

(declare-fun m!4336753 () Bool)

(assert (=> b!3804868 m!4336753))

(assert (=> d!1121946 d!1122560))

(declare-fun lt!1319493 () List!40489)

(declare-fun lt!1319479 () List!40489)

(declare-fun lt!1319477 () List!40489)

(declare-fun c!661847 () Bool)

(declare-fun call!279344 () List!40489)

(declare-fun lt!1319476 () List!40489)

(declare-fun bm!279336 () Bool)

(assert (=> bm!279336 (= call!279344 (++!10134 (ite c!661847 lt!1319477 lt!1319476) (ite c!661847 lt!1319493 lt!1319479)))))

(declare-fun bm!279337 () Bool)

(declare-fun c!661845 () Bool)

(declare-fun c!661849 () Bool)

(assert (=> bm!279337 (= c!661845 c!661849)))

(declare-fun e!2351257 () Conc!12399)

(declare-fun call!279348 () Conc!12399)

(declare-fun call!279347 () Conc!12399)

(assert (=> bm!279337 (= call!279348 (<>!351 (ite c!661849 call!279347 (c!661415 acc!335)) e!2351257))))

(declare-fun b!3805031 () Bool)

(declare-fun c!661846 () Bool)

(assert (=> b!3805031 (= c!661846 (< (csize!25029 (c!661415 acc!335)) 512))))

(declare-fun e!2351260 () Conc!12399)

(declare-fun e!2351261 () Conc!12399)

(assert (=> b!3805031 (= e!2351260 e!2351261)))

(declare-fun call!279346 () List!40489)

(declare-fun bm!279338 () Bool)

(declare-fun lt!1319478 () Conc!12399)

(assert (=> bm!279338 (= call!279346 (list!14995 (ite c!661847 (right!31560 (c!661415 acc!335)) (left!31230 lt!1319478))))))

(declare-fun b!3805032 () Bool)

(declare-fun res!1540482 () Bool)

(declare-fun e!2351256 () Bool)

(assert (=> b!3805032 (=> (not res!1540482) (not e!2351256))))

(declare-fun lt!1319486 () Conc!12399)

(assert (=> b!3805032 (= res!1540482 (<= (height!1794 lt!1319486) (+ (height!1794 (c!661415 acc!335)) 1)))))

(declare-fun call!279342 () List!40489)

(declare-fun bm!279340 () Bool)

(declare-fun lt!1319488 () List!40489)

(declare-fun call!279345 () List!40489)

(assert (=> bm!279340 (= call!279345 (++!10134 (ite c!661847 call!279342 lt!1319488) (ite c!661847 lt!1319493 lt!1319476)))))

(declare-fun b!3805033 () Bool)

(declare-fun e!2351258 () Conc!12399)

(assert (=> b!3805033 (= e!2351258 e!2351260)))

(assert (=> b!3805033 (= c!661849 ((_ is Node!12399) (c!661415 acc!335)))))

(declare-fun b!3805034 () Bool)

(declare-fun e!2351259 () Conc!12399)

(assert (=> b!3805034 (= e!2351259 call!279347)))

(declare-fun lt!1319480 () List!40489)

(declare-fun call!279343 () List!40489)

(assert (=> b!3805034 (= lt!1319480 call!279343)))

(assert (=> b!3805034 (= lt!1319477 call!279346)))

(assert (=> b!3805034 (= lt!1319493 (Cons!40365 (_1!22882 (v!38847 lt!1318792)) Nil!40365))))

(declare-fun lt!1319482 () Unit!58104)

(declare-fun call!279341 () Unit!58104)

(assert (=> b!3805034 (= lt!1319482 call!279341)))

(declare-fun call!279349 () List!40489)

(assert (=> b!3805034 (= call!279345 call!279349)))

(declare-fun lt!1319481 () Unit!58104)

(assert (=> b!3805034 (= lt!1319481 lt!1319482)))

(declare-fun bm!279341 () Bool)

(declare-fun lemmaConcatAssociativity!2178 (List!40489 List!40489 List!40489) Unit!58104)

(assert (=> bm!279341 (= call!279341 (lemmaConcatAssociativity!2178 (ite c!661847 lt!1319480 lt!1319488) (ite c!661847 lt!1319477 lt!1319476) (ite c!661847 lt!1319493 lt!1319479)))))

(declare-fun b!3805035 () Bool)

(declare-fun call!279350 () IArray!24803)

(assert (=> b!3805035 (= e!2351258 (Leaf!19203 call!279350 1))))

(declare-fun b!3805036 () Bool)

(declare-fun append!1064 (IArray!24803 Token!11562) IArray!24803)

(assert (=> b!3805036 (= e!2351261 (Leaf!19203 (append!1064 (xs!15665 (c!661415 acc!335)) (_1!22882 (v!38847 lt!1318792))) (+ (csize!25029 (c!661415 acc!335)) 1)))))

(declare-fun lt!1319490 () List!40489)

(assert (=> b!3805036 (= lt!1319490 ($colon+!273 (list!14999 (xs!15665 (c!661415 acc!335))) (_1!22882 (v!38847 lt!1318792))))))

(declare-fun b!3805037 () Bool)

(assert (=> b!3805037 (= e!2351257 (Leaf!19203 call!279350 1))))

(declare-fun b!3805038 () Bool)

(assert (=> b!3805038 (= e!2351257 (right!31560 lt!1319478))))

(declare-fun b!3805039 () Bool)

(assert (=> b!3805039 (= e!2351256 (= (list!14995 lt!1319486) ($colon+!273 (list!14995 (c!661415 acc!335)) (_1!22882 (v!38847 lt!1318792)))))))

(declare-fun d!1122562 () Bool)

(assert (=> d!1122562 e!2351256))

(declare-fun res!1540481 () Bool)

(assert (=> d!1122562 (=> (not res!1540481) (not e!2351256))))

(assert (=> d!1122562 (= res!1540481 (isBalanced!3576 lt!1319486))))

(assert (=> d!1122562 (= lt!1319486 e!2351258)))

(declare-fun c!661848 () Bool)

(assert (=> d!1122562 (= c!661848 ((_ is Empty!12399) (c!661415 acc!335)))))

(assert (=> d!1122562 (isBalanced!3576 (c!661415 acc!335))))

(assert (=> d!1122562 (= (append!1062 (c!661415 acc!335) (_1!22882 (v!38847 lt!1318792))) lt!1319486)))

(declare-fun bm!279339 () Bool)

(assert (=> bm!279339 (= call!279350 (fill!187 1 (_1!22882 (v!38847 lt!1318792))))))

(declare-fun b!3805040 () Bool)

(assert (=> b!3805040 (= e!2351261 call!279348)))

(declare-fun bm!279342 () Bool)

(assert (=> bm!279342 (= call!279347 (<>!351 (left!31230 (c!661415 acc!335)) (ite c!661847 lt!1319478 (left!31230 lt!1319478))))))

(declare-fun lt!1319485 () List!40489)

(declare-fun bm!279343 () Bool)

(declare-fun lt!1319492 () List!40489)

(assert (=> bm!279343 (= call!279342 (++!10134 (ite c!661847 lt!1319480 lt!1319492) (ite c!661847 lt!1319477 lt!1319485)))))

(declare-fun b!3805041 () Bool)

(declare-fun res!1540483 () Bool)

(assert (=> b!3805041 (=> (not res!1540483) (not e!2351256))))

(assert (=> b!3805041 (= res!1540483 (<= (height!1794 (c!661415 acc!335)) (height!1794 lt!1319486)))))

(declare-fun b!3805042 () Bool)

(assert (=> b!3805042 (= c!661847 (<= (height!1794 lt!1319478) (+ (height!1794 (left!31230 (c!661415 acc!335))) 1)))))

(assert (=> b!3805042 (= lt!1319478 (append!1062 (right!31560 (c!661415 acc!335)) (_1!22882 (v!38847 lt!1318792))))))

(assert (=> b!3805042 (= e!2351260 e!2351259)))

(declare-fun bm!279344 () Bool)

(assert (=> bm!279344 (= call!279343 (list!14995 (left!31230 (c!661415 acc!335))))))

(declare-fun bm!279345 () Bool)

(declare-fun lt!1319483 () List!40489)

(assert (=> bm!279345 (= call!279349 (++!10134 (ite c!661847 lt!1319480 lt!1319483) (ite c!661847 call!279344 lt!1319492)))))

(declare-fun b!3805043 () Bool)

(assert (=> b!3805043 (= e!2351259 call!279348)))

(assert (=> b!3805043 (= lt!1319488 call!279343)))

(assert (=> b!3805043 (= lt!1319476 call!279346)))

(assert (=> b!3805043 (= lt!1319479 (list!14995 (right!31560 lt!1319478)))))

(declare-fun lt!1319489 () Unit!58104)

(assert (=> b!3805043 (= lt!1319489 call!279341)))

(assert (=> b!3805043 (= (++!10134 call!279345 lt!1319479) (++!10134 lt!1319488 call!279344))))

(declare-fun lt!1319484 () Unit!58104)

(assert (=> b!3805043 (= lt!1319484 lt!1319489)))

(assert (=> b!3805043 (= lt!1319483 call!279343)))

(assert (=> b!3805043 (= lt!1319492 (list!14995 (right!31560 (c!661415 acc!335))))))

(assert (=> b!3805043 (= lt!1319485 (Cons!40365 (_1!22882 (v!38847 lt!1318792)) Nil!40365))))

(declare-fun lt!1319491 () Unit!58104)

(assert (=> b!3805043 (= lt!1319491 (lemmaConcatAssociativity!2178 lt!1319483 lt!1319492 lt!1319485))))

(assert (=> b!3805043 (= (++!10134 call!279349 lt!1319485) (++!10134 lt!1319483 call!279342))))

(declare-fun lt!1319487 () Unit!58104)

(assert (=> b!3805043 (= lt!1319487 lt!1319491)))

(assert (= (and d!1122562 c!661848) b!3805035))

(assert (= (and d!1122562 (not c!661848)) b!3805033))

(assert (= (and b!3805033 c!661849) b!3805042))

(assert (= (and b!3805033 (not c!661849)) b!3805031))

(assert (= (and b!3805042 c!661847) b!3805034))

(assert (= (and b!3805042 (not c!661847)) b!3805043))

(assert (= (or b!3805034 b!3805043) bm!279344))

(assert (= (or b!3805034 b!3805043) bm!279342))

(assert (= (or b!3805034 b!3805043) bm!279341))

(assert (= (or b!3805034 b!3805043) bm!279338))

(assert (= (or b!3805034 b!3805043) bm!279336))

(assert (= (or b!3805034 b!3805043) bm!279343))

(assert (= (or b!3805034 b!3805043) bm!279340))

(assert (= (or b!3805034 b!3805043) bm!279345))

(assert (= (and b!3805031 c!661846) b!3805036))

(assert (= (and b!3805031 (not c!661846)) b!3805040))

(assert (= (or b!3805043 b!3805040) bm!279337))

(assert (= (and bm!279337 c!661845) b!3805038))

(assert (= (and bm!279337 (not c!661845)) b!3805037))

(assert (= (or b!3805035 b!3805037) bm!279339))

(assert (= (and d!1122562 res!1540481) b!3805041))

(assert (= (and b!3805041 res!1540483) b!3805032))

(assert (= (and b!3805032 res!1540482) b!3805039))

(declare-fun m!4336989 () Bool)

(assert (=> bm!279341 m!4336989))

(declare-fun m!4336991 () Bool)

(assert (=> bm!279343 m!4336991))

(declare-fun m!4336993 () Bool)

(assert (=> b!3805036 m!4336993))

(declare-fun m!4336995 () Bool)

(assert (=> b!3805036 m!4336995))

(assert (=> b!3805036 m!4336995))

(declare-fun m!4336997 () Bool)

(assert (=> b!3805036 m!4336997))

(declare-fun m!4336999 () Bool)

(assert (=> bm!279342 m!4336999))

(declare-fun m!4337001 () Bool)

(assert (=> bm!279339 m!4337001))

(declare-fun m!4337003 () Bool)

(assert (=> bm!279340 m!4337003))

(declare-fun m!4337005 () Bool)

(assert (=> bm!279338 m!4337005))

(assert (=> b!3805041 m!4334511))

(declare-fun m!4337007 () Bool)

(assert (=> b!3805041 m!4337007))

(declare-fun m!4337009 () Bool)

(assert (=> b!3805039 m!4337009))

(assert (=> b!3805039 m!4335113))

(assert (=> b!3805039 m!4335113))

(declare-fun m!4337011 () Bool)

(assert (=> b!3805039 m!4337011))

(declare-fun m!4337013 () Bool)

(assert (=> bm!279345 m!4337013))

(declare-fun m!4337015 () Bool)

(assert (=> b!3805043 m!4337015))

(declare-fun m!4337017 () Bool)

(assert (=> b!3805043 m!4337017))

(declare-fun m!4337019 () Bool)

(assert (=> b!3805043 m!4337019))

(declare-fun m!4337021 () Bool)

(assert (=> b!3805043 m!4337021))

(declare-fun m!4337023 () Bool)

(assert (=> b!3805043 m!4337023))

(declare-fun m!4337025 () Bool)

(assert (=> b!3805043 m!4337025))

(declare-fun m!4337027 () Bool)

(assert (=> b!3805043 m!4337027))

(declare-fun m!4337029 () Bool)

(assert (=> bm!279337 m!4337029))

(declare-fun m!4337031 () Bool)

(assert (=> bm!279336 m!4337031))

(declare-fun m!4337033 () Bool)

(assert (=> d!1122562 m!4337033))

(assert (=> d!1122562 m!4335195))

(declare-fun m!4337035 () Bool)

(assert (=> bm!279344 m!4337035))

(declare-fun m!4337037 () Bool)

(assert (=> b!3805042 m!4337037))

(assert (=> b!3805042 m!4336305))

(declare-fun m!4337039 () Bool)

(assert (=> b!3805042 m!4337039))

(assert (=> b!3805032 m!4337007))

(assert (=> b!3805032 m!4334511))

(assert (=> d!1121946 d!1122562))

(declare-fun d!1122596 () Bool)

(declare-fun c!661850 () Bool)

(assert (=> d!1122596 (= c!661850 ((_ is Nil!40365) lt!1318903))))

(declare-fun e!2351262 () (InoxSet Token!11562))

(assert (=> d!1122596 (= (content!5955 lt!1318903) e!2351262)))

(declare-fun b!3805044 () Bool)

(assert (=> b!3805044 (= e!2351262 ((as const (Array Token!11562 Bool)) false))))

(declare-fun b!3805045 () Bool)

(assert (=> b!3805045 (= e!2351262 ((_ map or) (store ((as const (Array Token!11562 Bool)) false) (h!45785 lt!1318903) true) (content!5955 (t!307218 lt!1318903))))))

(assert (= (and d!1122596 c!661850) b!3805044))

(assert (= (and d!1122596 (not c!661850)) b!3805045))

(declare-fun m!4337041 () Bool)

(assert (=> b!3805045 m!4337041))

(declare-fun m!4337043 () Bool)

(assert (=> b!3805045 m!4337043))

(assert (=> d!1121942 d!1122596))

(assert (=> d!1121942 d!1122090))

(declare-fun d!1122598 () Bool)

(declare-fun c!661851 () Bool)

(assert (=> d!1122598 (= c!661851 ((_ is Nil!40365) (++!10134 lt!1318784 lt!1318802)))))

(declare-fun e!2351263 () (InoxSet Token!11562))

(assert (=> d!1122598 (= (content!5955 (++!10134 lt!1318784 lt!1318802)) e!2351263)))

(declare-fun b!3805046 () Bool)

(assert (=> b!3805046 (= e!2351263 ((as const (Array Token!11562 Bool)) false))))

(declare-fun b!3805047 () Bool)

(assert (=> b!3805047 (= e!2351263 ((_ map or) (store ((as const (Array Token!11562 Bool)) false) (h!45785 (++!10134 lt!1318784 lt!1318802)) true) (content!5955 (t!307218 (++!10134 lt!1318784 lt!1318802)))))))

(assert (= (and d!1122598 c!661851) b!3805046))

(assert (= (and d!1122598 (not c!661851)) b!3805047))

(declare-fun m!4337045 () Bool)

(assert (=> b!3805047 m!4337045))

(declare-fun m!4337047 () Bool)

(assert (=> b!3805047 m!4337047))

(assert (=> d!1121942 d!1122598))

(declare-fun d!1122600 () Bool)

(declare-fun c!661852 () Bool)

(assert (=> d!1122600 (= c!661852 ((_ is Node!12398) (left!31229 (c!661414 totalInput!335))))))

(declare-fun e!2351264 () Bool)

(assert (=> d!1122600 (= (inv!54330 (left!31229 (c!661414 totalInput!335))) e!2351264)))

(declare-fun b!3805048 () Bool)

(assert (=> b!3805048 (= e!2351264 (inv!54337 (left!31229 (c!661414 totalInput!335))))))

(declare-fun b!3805049 () Bool)

(declare-fun e!2351265 () Bool)

(assert (=> b!3805049 (= e!2351264 e!2351265)))

(declare-fun res!1540484 () Bool)

(assert (=> b!3805049 (= res!1540484 (not ((_ is Leaf!19202) (left!31229 (c!661414 totalInput!335)))))))

(assert (=> b!3805049 (=> res!1540484 e!2351265)))

(declare-fun b!3805050 () Bool)

(assert (=> b!3805050 (= e!2351265 (inv!54338 (left!31229 (c!661414 totalInput!335))))))

(assert (= (and d!1122600 c!661852) b!3805048))

(assert (= (and d!1122600 (not c!661852)) b!3805049))

(assert (= (and b!3805049 (not res!1540484)) b!3805050))

(declare-fun m!4337049 () Bool)

(assert (=> b!3805048 m!4337049))

(declare-fun m!4337051 () Bool)

(assert (=> b!3805050 m!4337051))

(assert (=> b!3803801 d!1122600))

(declare-fun d!1122602 () Bool)

(declare-fun c!661853 () Bool)

(assert (=> d!1122602 (= c!661853 ((_ is Node!12398) (right!31559 (c!661414 totalInput!335))))))

(declare-fun e!2351266 () Bool)

(assert (=> d!1122602 (= (inv!54330 (right!31559 (c!661414 totalInput!335))) e!2351266)))

(declare-fun b!3805051 () Bool)

(assert (=> b!3805051 (= e!2351266 (inv!54337 (right!31559 (c!661414 totalInput!335))))))

(declare-fun b!3805052 () Bool)

(declare-fun e!2351267 () Bool)

(assert (=> b!3805052 (= e!2351266 e!2351267)))

(declare-fun res!1540485 () Bool)

(assert (=> b!3805052 (= res!1540485 (not ((_ is Leaf!19202) (right!31559 (c!661414 totalInput!335)))))))

(assert (=> b!3805052 (=> res!1540485 e!2351267)))

(declare-fun b!3805053 () Bool)

(assert (=> b!3805053 (= e!2351267 (inv!54338 (right!31559 (c!661414 totalInput!335))))))

(assert (= (and d!1122602 c!661853) b!3805051))

(assert (= (and d!1122602 (not c!661853)) b!3805052))

(assert (= (and b!3805052 (not res!1540485)) b!3805053))

(declare-fun m!4337053 () Bool)

(assert (=> b!3805051 m!4337053))

(declare-fun m!4337055 () Bool)

(assert (=> b!3805053 m!4337055))

(assert (=> b!3803801 d!1122602))

(declare-fun b!3805066 () Bool)

(declare-fun res!1540501 () Bool)

(declare-fun e!2351273 () Bool)

(assert (=> b!3805066 (=> (not res!1540501) (not e!2351273))))

(assert (=> b!3805066 (= res!1540501 (<= (- (height!1796 (left!31229 (c!661414 treated!13))) (height!1796 (right!31559 (c!661414 treated!13)))) 1))))

(declare-fun b!3805067 () Bool)

(declare-fun res!1540500 () Bool)

(assert (=> b!3805067 (=> (not res!1540500) (not e!2351273))))

(declare-fun isEmpty!23774 (Conc!12398) Bool)

(assert (=> b!3805067 (= res!1540500 (not (isEmpty!23774 (left!31229 (c!661414 treated!13)))))))

(declare-fun b!3805068 () Bool)

(declare-fun res!1540498 () Bool)

(assert (=> b!3805068 (=> (not res!1540498) (not e!2351273))))

(assert (=> b!3805068 (= res!1540498 (isBalanced!3578 (right!31559 (c!661414 treated!13))))))

(declare-fun b!3805069 () Bool)

(assert (=> b!3805069 (= e!2351273 (not (isEmpty!23774 (right!31559 (c!661414 treated!13)))))))

(declare-fun b!3805070 () Bool)

(declare-fun res!1540503 () Bool)

(assert (=> b!3805070 (=> (not res!1540503) (not e!2351273))))

(assert (=> b!3805070 (= res!1540503 (isBalanced!3578 (left!31229 (c!661414 treated!13))))))

(declare-fun d!1122604 () Bool)

(declare-fun res!1540502 () Bool)

(declare-fun e!2351272 () Bool)

(assert (=> d!1122604 (=> res!1540502 e!2351272)))

(assert (=> d!1122604 (= res!1540502 (not ((_ is Node!12398) (c!661414 treated!13))))))

(assert (=> d!1122604 (= (isBalanced!3578 (c!661414 treated!13)) e!2351272)))

(declare-fun b!3805071 () Bool)

(assert (=> b!3805071 (= e!2351272 e!2351273)))

(declare-fun res!1540499 () Bool)

(assert (=> b!3805071 (=> (not res!1540499) (not e!2351273))))

(assert (=> b!3805071 (= res!1540499 (<= (- 1) (- (height!1796 (left!31229 (c!661414 treated!13))) (height!1796 (right!31559 (c!661414 treated!13))))))))

(assert (= (and d!1122604 (not res!1540502)) b!3805071))

(assert (= (and b!3805071 res!1540499) b!3805066))

(assert (= (and b!3805066 res!1540501) b!3805070))

(assert (= (and b!3805070 res!1540503) b!3805068))

(assert (= (and b!3805068 res!1540498) b!3805067))

(assert (= (and b!3805067 res!1540500) b!3805069))

(declare-fun m!4337057 () Bool)

(assert (=> b!3805070 m!4337057))

(declare-fun m!4337059 () Bool)

(assert (=> b!3805069 m!4337059))

(assert (=> b!3805066 m!4336663))

(assert (=> b!3805066 m!4336665))

(declare-fun m!4337061 () Bool)

(assert (=> b!3805068 m!4337061))

(assert (=> b!3805071 m!4336663))

(assert (=> b!3805071 m!4336665))

(declare-fun m!4337063 () Bool)

(assert (=> b!3805067 m!4337063))

(assert (=> d!1122038 d!1122604))

(declare-fun b!3805072 () Bool)

(declare-fun e!2351274 () List!40489)

(assert (=> b!3805072 (= e!2351274 Nil!40365)))

(declare-fun b!3805074 () Bool)

(declare-fun e!2351275 () List!40489)

(assert (=> b!3805074 (= e!2351275 (list!14999 (xs!15665 (c!661415 acc!335))))))

(declare-fun b!3805075 () Bool)

(assert (=> b!3805075 (= e!2351275 (++!10134 (list!14995 (left!31230 (c!661415 acc!335))) (list!14995 (right!31560 (c!661415 acc!335)))))))

(declare-fun d!1122606 () Bool)

(declare-fun c!661854 () Bool)

(assert (=> d!1122606 (= c!661854 ((_ is Empty!12399) (c!661415 acc!335)))))

(assert (=> d!1122606 (= (list!14995 (c!661415 acc!335)) e!2351274)))

(declare-fun b!3805073 () Bool)

(assert (=> b!3805073 (= e!2351274 e!2351275)))

(declare-fun c!661855 () Bool)

(assert (=> b!3805073 (= c!661855 ((_ is Leaf!19203) (c!661415 acc!335)))))

(assert (= (and d!1122606 c!661854) b!3805072))

(assert (= (and d!1122606 (not c!661854)) b!3805073))

(assert (= (and b!3805073 c!661855) b!3805074))

(assert (= (and b!3805073 (not c!661855)) b!3805075))

(assert (=> b!3805074 m!4336995))

(assert (=> b!3805075 m!4337035))

(assert (=> b!3805075 m!4337023))

(assert (=> b!3805075 m!4337035))

(assert (=> b!3805075 m!4337023))

(declare-fun m!4337065 () Bool)

(assert (=> b!3805075 m!4337065))

(assert (=> d!1122008 d!1122606))

(assert (=> b!3803515 d!1122352))

(assert (=> b!3803515 d!1121994))

(declare-fun d!1122608 () Bool)

(declare-fun c!661856 () Bool)

(assert (=> d!1122608 (= c!661856 ((_ is Nil!40363) lt!1318915))))

(declare-fun e!2351276 () (InoxSet C!22420))

(assert (=> d!1122608 (= (content!5956 lt!1318915) e!2351276)))

(declare-fun b!3805076 () Bool)

(assert (=> b!3805076 (= e!2351276 ((as const (Array C!22420 Bool)) false))))

(declare-fun b!3805077 () Bool)

(assert (=> b!3805077 (= e!2351276 ((_ map or) (store ((as const (Array C!22420 Bool)) false) (h!45783 lt!1318915) true) (content!5956 (t!307216 lt!1318915))))))

(assert (= (and d!1122608 c!661856) b!3805076))

(assert (= (and d!1122608 (not c!661856)) b!3805077))

(declare-fun m!4337067 () Bool)

(assert (=> b!3805077 m!4337067))

(declare-fun m!4337069 () Bool)

(assert (=> b!3805077 m!4337069))

(assert (=> d!1121960 d!1122608))

(assert (=> d!1121960 d!1122522))

(declare-fun d!1122610 () Bool)

(declare-fun c!661857 () Bool)

(assert (=> d!1122610 (= c!661857 ((_ is Nil!40363) lt!1318786))))

(declare-fun e!2351277 () (InoxSet C!22420))

(assert (=> d!1122610 (= (content!5956 lt!1318786) e!2351277)))

(declare-fun b!3805078 () Bool)

(assert (=> b!3805078 (= e!2351277 ((as const (Array C!22420 Bool)) false))))

(declare-fun b!3805079 () Bool)

(assert (=> b!3805079 (= e!2351277 ((_ map or) (store ((as const (Array C!22420 Bool)) false) (h!45783 lt!1318786) true) (content!5956 (t!307216 lt!1318786))))))

(assert (= (and d!1122610 c!661857) b!3805078))

(assert (= (and d!1122610 (not c!661857)) b!3805079))

(declare-fun m!4337071 () Bool)

(assert (=> b!3805079 m!4337071))

(declare-fun m!4337073 () Bool)

(assert (=> b!3805079 m!4337073))

(assert (=> d!1121960 d!1122610))

(declare-fun d!1122612 () Bool)

(declare-fun lt!1319494 () Bool)

(assert (=> d!1122612 (= lt!1319494 (isEmpty!23763 (list!14991 (_1!22881 lt!1318963))))))

(assert (=> d!1122612 (= lt!1319494 (isEmpty!23771 (c!661415 (_1!22881 lt!1318963))))))

(assert (=> d!1122612 (= (isEmpty!23766 (_1!22881 lt!1318963)) lt!1319494)))

(declare-fun bs!579773 () Bool)

(assert (= bs!579773 d!1122612))

(assert (=> bs!579773 m!4335055))

(assert (=> bs!579773 m!4335055))

(declare-fun m!4337075 () Bool)

(assert (=> bs!579773 m!4337075))

(declare-fun m!4337077 () Bool)

(assert (=> bs!579773 m!4337077))

(assert (=> b!3803671 d!1122612))

(declare-fun d!1122614 () Bool)

(assert (=> d!1122614 (= (inv!54320 (tag!7072 (h!45784 (t!307217 rules!1265)))) (= (mod (str.len (value!197648 (tag!7072 (h!45784 (t!307217 rules!1265))))) 2) 0))))

(assert (=> b!3803813 d!1122614))

(declare-fun d!1122616 () Bool)

(declare-fun res!1540504 () Bool)

(declare-fun e!2351278 () Bool)

(assert (=> d!1122616 (=> (not res!1540504) (not e!2351278))))

(assert (=> d!1122616 (= res!1540504 (semiInverseModEq!2659 (toChars!8455 (transformation!6212 (h!45784 (t!307217 rules!1265)))) (toValue!8596 (transformation!6212 (h!45784 (t!307217 rules!1265))))))))

(assert (=> d!1122616 (= (inv!54326 (transformation!6212 (h!45784 (t!307217 rules!1265)))) e!2351278)))

(declare-fun b!3805080 () Bool)

(assert (=> b!3805080 (= e!2351278 (equivClasses!2558 (toChars!8455 (transformation!6212 (h!45784 (t!307217 rules!1265)))) (toValue!8596 (transformation!6212 (h!45784 (t!307217 rules!1265))))))))

(assert (= (and d!1122616 res!1540504) b!3805080))

(declare-fun m!4337079 () Bool)

(assert (=> d!1122616 m!4337079))

(declare-fun m!4337081 () Bool)

(assert (=> b!3805080 m!4337081))

(assert (=> b!3803813 d!1122616))

(declare-fun b!3805081 () Bool)

(declare-fun e!2351279 () List!40489)

(assert (=> b!3805081 (= e!2351279 Nil!40365)))

(declare-fun b!3805083 () Bool)

(declare-fun e!2351280 () List!40489)

(assert (=> b!3805083 (= e!2351280 (list!14999 (xs!15665 (c!661415 (_1!22881 lt!1318804)))))))

(declare-fun b!3805084 () Bool)

(assert (=> b!3805084 (= e!2351280 (++!10134 (list!14995 (left!31230 (c!661415 (_1!22881 lt!1318804)))) (list!14995 (right!31560 (c!661415 (_1!22881 lt!1318804))))))))

(declare-fun d!1122618 () Bool)

(declare-fun c!661858 () Bool)

(assert (=> d!1122618 (= c!661858 ((_ is Empty!12399) (c!661415 (_1!22881 lt!1318804))))))

(assert (=> d!1122618 (= (list!14995 (c!661415 (_1!22881 lt!1318804))) e!2351279)))

(declare-fun b!3805082 () Bool)

(assert (=> b!3805082 (= e!2351279 e!2351280)))

(declare-fun c!661859 () Bool)

(assert (=> b!3805082 (= c!661859 ((_ is Leaf!19203) (c!661415 (_1!22881 lt!1318804))))))

(assert (= (and d!1122618 c!661858) b!3805081))

(assert (= (and d!1122618 (not c!661858)) b!3805082))

(assert (= (and b!3805082 c!661859) b!3805083))

(assert (= (and b!3805082 (not c!661859)) b!3805084))

(declare-fun m!4337083 () Bool)

(assert (=> b!3805083 m!4337083))

(declare-fun m!4337085 () Bool)

(assert (=> b!3805084 m!4337085))

(declare-fun m!4337087 () Bool)

(assert (=> b!3805084 m!4337087))

(assert (=> b!3805084 m!4337085))

(assert (=> b!3805084 m!4337087))

(declare-fun m!4337089 () Bool)

(assert (=> b!3805084 m!4337089))

(assert (=> d!1121934 d!1122618))

(declare-fun bs!579774 () Bool)

(declare-fun b!3805099 () Bool)

(assert (= bs!579774 (and b!3805099 d!1122156)))

(declare-fun lambda!125679 () Int)

(assert (=> bs!579774 (= lambda!125679 lambda!125661)))

(declare-fun b!3805110 () Bool)

(declare-fun e!2351301 () Bool)

(assert (=> b!3805110 (= e!2351301 true)))

(declare-fun b!3805109 () Bool)

(declare-fun e!2351300 () Bool)

(assert (=> b!3805109 (= e!2351300 e!2351301)))

(assert (=> b!3805099 e!2351300))

(assert (= b!3805109 b!3805110))

(assert (= b!3805099 b!3805109))

(assert (=> b!3805110 (< (dynLambda!17449 order!22027 (toValue!8596 (transformation!6212 (h!45784 rules!1265)))) (dynLambda!17448 order!22025 lambda!125679))))

(assert (=> b!3805110 (< (dynLambda!17447 order!22023 (toChars!8455 (transformation!6212 (h!45784 rules!1265)))) (dynLambda!17448 order!22025 lambda!125679))))

(declare-fun b!3805097 () Bool)

(declare-fun e!2351291 () Bool)

(declare-fun e!2351295 () Bool)

(assert (=> b!3805097 (= e!2351291 e!2351295)))

(declare-fun res!1540516 () Bool)

(assert (=> b!3805097 (=> res!1540516 e!2351295)))

(declare-fun lt!1319516 () Option!8624)

(assert (=> b!3805097 (= res!1540516 (not (isDefined!6786 lt!1319516)))))

(declare-fun b!3805098 () Bool)

(declare-fun e!2351292 () Option!8624)

(assert (=> b!3805098 (= e!2351292 None!8623)))

(declare-datatypes ((tuple2!39510 0))(
  ( (tuple2!39511 (_1!22889 BalanceConc!24390) (_2!22889 BalanceConc!24390)) )
))
(declare-fun lt!1319517 () tuple2!39510)

(declare-fun apply!9471 (TokenValueInjection!12312 BalanceConc!24390) TokenValue!6442)

(assert (=> b!3805099 (= e!2351292 (Some!8623 (tuple2!39497 (Token!11563 (apply!9471 (transformation!6212 (h!45784 rules!1265)) (_1!22889 lt!1319517)) (h!45784 rules!1265) (size!30389 (_1!22889 lt!1319517)) (list!14992 (_1!22889 lt!1319517))) (_2!22889 lt!1319517))))))

(declare-fun lt!1319521 () List!40487)

(assert (=> b!3805099 (= lt!1319521 (list!14992 input!678))))

(declare-fun lt!1319518 () Unit!58104)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1111 (Regex!11117 List!40487) Unit!58104)

(assert (=> b!3805099 (= lt!1319518 (longestMatchIsAcceptedByMatchOrIsEmpty!1111 (regex!6212 (h!45784 rules!1265)) lt!1319521))))

(declare-fun res!1540513 () Bool)

(declare-datatypes ((tuple2!39512 0))(
  ( (tuple2!39513 (_1!22890 List!40487) (_2!22890 List!40487)) )
))
(declare-fun findLongestMatchInner!1138 (Regex!11117 List!40487 Int List!40487 List!40487 Int) tuple2!39512)

(assert (=> b!3805099 (= res!1540513 (isEmpty!23762 (_1!22890 (findLongestMatchInner!1138 (regex!6212 (h!45784 rules!1265)) Nil!40363 (size!30392 Nil!40363) lt!1319521 lt!1319521 (size!30392 lt!1319521)))))))

(declare-fun e!2351294 () Bool)

(assert (=> b!3805099 (=> res!1540513 e!2351294)))

(assert (=> b!3805099 e!2351294))

(declare-fun lt!1319522 () Unit!58104)

(assert (=> b!3805099 (= lt!1319522 lt!1319518)))

(declare-fun lt!1319519 () Unit!58104)

(declare-fun lemmaInv!859 (TokenValueInjection!12312) Unit!58104)

(assert (=> b!3805099 (= lt!1319519 (lemmaInv!859 (transformation!6212 (h!45784 rules!1265))))))

(declare-fun lt!1319515 () Unit!58104)

(declare-fun ForallOf!770 (Int BalanceConc!24390) Unit!58104)

(assert (=> b!3805099 (= lt!1319515 (ForallOf!770 lambda!125679 (_1!22889 lt!1319517)))))

(declare-fun lt!1319520 () Unit!58104)

(declare-fun seqFromList!4499 (List!40487) BalanceConc!24390)

(assert (=> b!3805099 (= lt!1319520 (ForallOf!770 lambda!125679 (seqFromList!4499 (list!14992 (_1!22889 lt!1319517)))))))

(declare-fun lt!1319523 () Option!8624)

(assert (=> b!3805099 (= lt!1319523 (Some!8623 (tuple2!39497 (Token!11563 (apply!9471 (transformation!6212 (h!45784 rules!1265)) (_1!22889 lt!1319517)) (h!45784 rules!1265) (size!30389 (_1!22889 lt!1319517)) (list!14992 (_1!22889 lt!1319517))) (_2!22889 lt!1319517))))))

(declare-fun lt!1319524 () Unit!58104)

(declare-fun lemmaEqSameImage!1043 (TokenValueInjection!12312 BalanceConc!24390 BalanceConc!24390) Unit!58104)

(assert (=> b!3805099 (= lt!1319524 (lemmaEqSameImage!1043 (transformation!6212 (h!45784 rules!1265)) (_1!22889 lt!1319517) (seqFromList!4499 (list!14992 (_1!22889 lt!1319517)))))))

(declare-fun b!3805101 () Bool)

(declare-fun e!2351293 () Bool)

(assert (=> b!3805101 (= e!2351295 e!2351293)))

(declare-fun res!1540515 () Bool)

(assert (=> b!3805101 (=> (not res!1540515) (not e!2351293))))

(declare-fun maxPrefixOneRule!2215 (LexerInterface!5801 Rule!12224 List!40487) Option!8626)

(assert (=> b!3805101 (= res!1540515 (= (_1!22882 (get!13382 lt!1319516)) (_1!22886 (get!13383 (maxPrefixOneRule!2215 thiss!11876 (h!45784 rules!1265) (list!14992 input!678))))))))

(declare-fun b!3805102 () Bool)

(assert (=> b!3805102 (= e!2351293 (= (list!14992 (_2!22882 (get!13382 lt!1319516))) (_2!22886 (get!13383 (maxPrefixOneRule!2215 thiss!11876 (h!45784 rules!1265) (list!14992 input!678))))))))

(declare-fun d!1122620 () Bool)

(assert (=> d!1122620 e!2351291))

(declare-fun res!1540514 () Bool)

(assert (=> d!1122620 (=> (not res!1540514) (not e!2351291))))

(assert (=> d!1122620 (= res!1540514 (= (isDefined!6786 lt!1319516) (isDefined!6787 (maxPrefixOneRule!2215 thiss!11876 (h!45784 rules!1265) (list!14992 input!678)))))))

(assert (=> d!1122620 (= lt!1319516 e!2351292)))

(declare-fun c!661862 () Bool)

(declare-fun isEmpty!23775 (BalanceConc!24390) Bool)

(assert (=> d!1122620 (= c!661862 (isEmpty!23775 (_1!22889 lt!1319517)))))

(declare-fun findLongestMatchWithZipperSequenceV2!105 (Regex!11117 BalanceConc!24390 BalanceConc!24390) tuple2!39510)

(assert (=> d!1122620 (= lt!1319517 (findLongestMatchWithZipperSequenceV2!105 (regex!6212 (h!45784 rules!1265)) input!678 totalInput!335))))

(declare-fun ruleValid!2178 (LexerInterface!5801 Rule!12224) Bool)

(assert (=> d!1122620 (ruleValid!2178 thiss!11876 (h!45784 rules!1265))))

(assert (=> d!1122620 (= (maxPrefixOneRuleZipperSequenceV2!239 thiss!11876 (h!45784 rules!1265) input!678 totalInput!335) lt!1319516)))

(declare-fun b!3805100 () Bool)

(declare-fun matchR!5314 (Regex!11117 List!40487) Bool)

(assert (=> b!3805100 (= e!2351294 (matchR!5314 (regex!6212 (h!45784 rules!1265)) (_1!22890 (findLongestMatchInner!1138 (regex!6212 (h!45784 rules!1265)) Nil!40363 (size!30392 Nil!40363) lt!1319521 lt!1319521 (size!30392 lt!1319521)))))))

(assert (= (and d!1122620 c!661862) b!3805098))

(assert (= (and d!1122620 (not c!661862)) b!3805099))

(assert (= (and b!3805099 (not res!1540513)) b!3805100))

(assert (= (and d!1122620 res!1540514) b!3805097))

(assert (= (and b!3805097 (not res!1540516)) b!3805101))

(assert (= (and b!3805101 res!1540515) b!3805102))

(declare-fun m!4337091 () Bool)

(assert (=> b!3805097 m!4337091))

(declare-fun m!4337093 () Bool)

(assert (=> b!3805100 m!4337093))

(declare-fun m!4337095 () Bool)

(assert (=> b!3805100 m!4337095))

(assert (=> b!3805100 m!4337093))

(assert (=> b!3805100 m!4337095))

(declare-fun m!4337097 () Bool)

(assert (=> b!3805100 m!4337097))

(declare-fun m!4337099 () Bool)

(assert (=> b!3805100 m!4337099))

(assert (=> d!1122620 m!4334435))

(declare-fun m!4337101 () Bool)

(assert (=> d!1122620 m!4337101))

(assert (=> d!1122620 m!4337101))

(declare-fun m!4337103 () Bool)

(assert (=> d!1122620 m!4337103))

(declare-fun m!4337105 () Bool)

(assert (=> d!1122620 m!4337105))

(declare-fun m!4337107 () Bool)

(assert (=> d!1122620 m!4337107))

(declare-fun m!4337109 () Bool)

(assert (=> d!1122620 m!4337109))

(assert (=> d!1122620 m!4334435))

(assert (=> d!1122620 m!4337091))

(assert (=> b!3805099 m!4337093))

(declare-fun m!4337111 () Bool)

(assert (=> b!3805099 m!4337111))

(declare-fun m!4337113 () Bool)

(assert (=> b!3805099 m!4337113))

(declare-fun m!4337115 () Bool)

(assert (=> b!3805099 m!4337115))

(declare-fun m!4337117 () Bool)

(assert (=> b!3805099 m!4337117))

(assert (=> b!3805099 m!4337113))

(declare-fun m!4337119 () Bool)

(assert (=> b!3805099 m!4337119))

(declare-fun m!4337121 () Bool)

(assert (=> b!3805099 m!4337121))

(assert (=> b!3805099 m!4337093))

(assert (=> b!3805099 m!4337095))

(assert (=> b!3805099 m!4337097))

(assert (=> b!3805099 m!4337121))

(assert (=> b!3805099 m!4337113))

(assert (=> b!3805099 m!4337095))

(assert (=> b!3805099 m!4334435))

(declare-fun m!4337123 () Bool)

(assert (=> b!3805099 m!4337123))

(declare-fun m!4337125 () Bool)

(assert (=> b!3805099 m!4337125))

(declare-fun m!4337127 () Bool)

(assert (=> b!3805099 m!4337127))

(declare-fun m!4337129 () Bool)

(assert (=> b!3805099 m!4337129))

(assert (=> b!3805102 m!4334435))

(assert (=> b!3805102 m!4337101))

(declare-fun m!4337131 () Bool)

(assert (=> b!3805102 m!4337131))

(declare-fun m!4337133 () Bool)

(assert (=> b!3805102 m!4337133))

(assert (=> b!3805102 m!4337101))

(declare-fun m!4337135 () Bool)

(assert (=> b!3805102 m!4337135))

(assert (=> b!3805102 m!4334435))

(assert (=> b!3805101 m!4337133))

(assert (=> b!3805101 m!4334435))

(assert (=> b!3805101 m!4334435))

(assert (=> b!3805101 m!4337101))

(assert (=> b!3805101 m!4337101))

(assert (=> b!3805101 m!4337135))

(assert (=> bm!279159 d!1122620))

(declare-fun b!3805111 () Bool)

(declare-fun e!2351302 () Bool)

(assert (=> b!3805111 (= e!2351302 (not (isEmpty!23771 (right!31560 (c!661415 acc!335)))))))

(declare-fun b!3805112 () Bool)

(declare-fun res!1540521 () Bool)

(assert (=> b!3805112 (=> (not res!1540521) (not e!2351302))))

(assert (=> b!3805112 (= res!1540521 (<= (- (height!1794 (left!31230 (c!661415 acc!335))) (height!1794 (right!31560 (c!661415 acc!335)))) 1))))

(declare-fun b!3805113 () Bool)

(declare-fun res!1540520 () Bool)

(assert (=> b!3805113 (=> (not res!1540520) (not e!2351302))))

(assert (=> b!3805113 (= res!1540520 (isBalanced!3576 (left!31230 (c!661415 acc!335))))))

(declare-fun b!3805114 () Bool)

(declare-fun e!2351303 () Bool)

(assert (=> b!3805114 (= e!2351303 e!2351302)))

(declare-fun res!1540519 () Bool)

(assert (=> b!3805114 (=> (not res!1540519) (not e!2351302))))

(assert (=> b!3805114 (= res!1540519 (<= (- 1) (- (height!1794 (left!31230 (c!661415 acc!335))) (height!1794 (right!31560 (c!661415 acc!335))))))))

(declare-fun b!3805115 () Bool)

(declare-fun res!1540522 () Bool)

(assert (=> b!3805115 (=> (not res!1540522) (not e!2351302))))

(assert (=> b!3805115 (= res!1540522 (not (isEmpty!23771 (left!31230 (c!661415 acc!335)))))))

(declare-fun d!1122622 () Bool)

(declare-fun res!1540518 () Bool)

(assert (=> d!1122622 (=> res!1540518 e!2351303)))

(assert (=> d!1122622 (= res!1540518 (not ((_ is Node!12399) (c!661415 acc!335))))))

(assert (=> d!1122622 (= (isBalanced!3576 (c!661415 acc!335)) e!2351303)))

(declare-fun b!3805116 () Bool)

(declare-fun res!1540517 () Bool)

(assert (=> b!3805116 (=> (not res!1540517) (not e!2351302))))

(assert (=> b!3805116 (= res!1540517 (isBalanced!3576 (right!31560 (c!661415 acc!335))))))

(assert (= (and d!1122622 (not res!1540518)) b!3805114))

(assert (= (and b!3805114 res!1540519) b!3805112))

(assert (= (and b!3805112 res!1540521) b!3805113))

(assert (= (and b!3805113 res!1540520) b!3805116))

(assert (= (and b!3805116 res!1540517) b!3805115))

(assert (= (and b!3805115 res!1540522) b!3805111))

(assert (=> b!3805112 m!4336305))

(assert (=> b!3805112 m!4336307))

(declare-fun m!4337137 () Bool)

(assert (=> b!3805113 m!4337137))

(declare-fun m!4337139 () Bool)

(assert (=> b!3805111 m!4337139))

(assert (=> b!3805114 m!4336305))

(assert (=> b!3805114 m!4336307))

(declare-fun m!4337141 () Bool)

(assert (=> b!3805115 m!4337141))

(declare-fun m!4337143 () Bool)

(assert (=> b!3805116 m!4337143))

(assert (=> d!1122036 d!1122622))

(declare-fun d!1122624 () Bool)

(declare-fun res!1540523 () Bool)

(declare-fun e!2351304 () Bool)

(assert (=> d!1122624 (=> (not res!1540523) (not e!2351304))))

(assert (=> d!1122624 (= res!1540523 (= (csize!25026 (c!661414 totalInput!335)) (+ (size!30395 (left!31229 (c!661414 totalInput!335))) (size!30395 (right!31559 (c!661414 totalInput!335))))))))

(assert (=> d!1122624 (= (inv!54337 (c!661414 totalInput!335)) e!2351304)))

(declare-fun b!3805117 () Bool)

(declare-fun res!1540524 () Bool)

(assert (=> b!3805117 (=> (not res!1540524) (not e!2351304))))

(assert (=> b!3805117 (= res!1540524 (and (not (= (left!31229 (c!661414 totalInput!335)) Empty!12398)) (not (= (right!31559 (c!661414 totalInput!335)) Empty!12398))))))

(declare-fun b!3805118 () Bool)

(declare-fun res!1540525 () Bool)

(assert (=> b!3805118 (=> (not res!1540525) (not e!2351304))))

(assert (=> b!3805118 (= res!1540525 (= (cheight!12609 (c!661414 totalInput!335)) (+ (max!0 (height!1796 (left!31229 (c!661414 totalInput!335))) (height!1796 (right!31559 (c!661414 totalInput!335)))) 1)))))

(declare-fun b!3805119 () Bool)

(assert (=> b!3805119 (= e!2351304 (<= 0 (cheight!12609 (c!661414 totalInput!335))))))

(assert (= (and d!1122624 res!1540523) b!3805117))

(assert (= (and b!3805117 res!1540524) b!3805118))

(assert (= (and b!3805118 res!1540525) b!3805119))

(declare-fun m!4337145 () Bool)

(assert (=> d!1122624 m!4337145))

(declare-fun m!4337147 () Bool)

(assert (=> d!1122624 m!4337147))

(declare-fun m!4337149 () Bool)

(assert (=> b!3805118 m!4337149))

(declare-fun m!4337151 () Bool)

(assert (=> b!3805118 m!4337151))

(assert (=> b!3805118 m!4337149))

(assert (=> b!3805118 m!4337151))

(declare-fun m!4337153 () Bool)

(assert (=> b!3805118 m!4337153))

(assert (=> b!3803699 d!1122624))

(assert (=> b!3803335 d!1122416))

(assert (=> b!3803335 d!1122484))

(assert (=> b!3803335 d!1122486))

(assert (=> b!3803335 d!1122488))

(assert (=> b!3803335 d!1122490))

(declare-fun b!3805121 () Bool)

(declare-fun e!2351306 () List!40487)

(assert (=> b!3805121 (= e!2351306 (Cons!40363 (h!45783 (t!307216 lt!1318796)) (++!10133 (t!307216 (t!307216 lt!1318796)) (++!10133 lt!1318787 lt!1318786))))))

(declare-fun b!3805123 () Bool)

(declare-fun lt!1319525 () List!40487)

(declare-fun e!2351305 () Bool)

(assert (=> b!3805123 (= e!2351305 (or (not (= (++!10133 lt!1318787 lt!1318786) Nil!40363)) (= lt!1319525 (t!307216 lt!1318796))))))

(declare-fun d!1122626 () Bool)

(assert (=> d!1122626 e!2351305))

(declare-fun res!1540526 () Bool)

(assert (=> d!1122626 (=> (not res!1540526) (not e!2351305))))

(assert (=> d!1122626 (= res!1540526 (= (content!5956 lt!1319525) ((_ map or) (content!5956 (t!307216 lt!1318796)) (content!5956 (++!10133 lt!1318787 lt!1318786)))))))

(assert (=> d!1122626 (= lt!1319525 e!2351306)))

(declare-fun c!661863 () Bool)

(assert (=> d!1122626 (= c!661863 ((_ is Nil!40363) (t!307216 lt!1318796)))))

(assert (=> d!1122626 (= (++!10133 (t!307216 lt!1318796) (++!10133 lt!1318787 lt!1318786)) lt!1319525)))

(declare-fun b!3805120 () Bool)

(assert (=> b!3805120 (= e!2351306 (++!10133 lt!1318787 lt!1318786))))

(declare-fun b!3805122 () Bool)

(declare-fun res!1540527 () Bool)

(assert (=> b!3805122 (=> (not res!1540527) (not e!2351305))))

(assert (=> b!3805122 (= res!1540527 (= (size!30392 lt!1319525) (+ (size!30392 (t!307216 lt!1318796)) (size!30392 (++!10133 lt!1318787 lt!1318786)))))))

(assert (= (and d!1122626 c!661863) b!3805120))

(assert (= (and d!1122626 (not c!661863)) b!3805121))

(assert (= (and d!1122626 res!1540526) b!3805122))

(assert (= (and b!3805122 res!1540527) b!3805123))

(assert (=> b!3805121 m!4334385))

(declare-fun m!4337155 () Bool)

(assert (=> b!3805121 m!4337155))

(declare-fun m!4337157 () Bool)

(assert (=> d!1122626 m!4337157))

(assert (=> d!1122626 m!4335521))

(assert (=> d!1122626 m!4334385))

(assert (=> d!1122626 m!4334901))

(declare-fun m!4337159 () Bool)

(assert (=> b!3805122 m!4337159))

(assert (=> b!3805122 m!4336551))

(assert (=> b!3805122 m!4334385))

(assert (=> b!3805122 m!4334907))

(assert (=> b!3803546 d!1122626))

(declare-fun d!1122628 () Bool)

(assert (=> d!1122628 (= (list!14991 lt!1318909) (list!14995 (c!661415 lt!1318909)))))

(declare-fun bs!579775 () Bool)

(assert (= bs!579775 d!1122628))

(declare-fun m!4337161 () Bool)

(assert (=> bs!579775 m!4337161))

(assert (=> b!3803536 d!1122628))

(declare-fun b!3805140 () Bool)

(declare-fun e!2351315 () List!40489)

(assert (=> b!3805140 (= e!2351315 (Cons!40365 (_1!22882 (v!38847 lt!1318792)) (list!14991 acc!335)))))

(declare-fun bm!279350 () Bool)

(declare-fun call!279356 () (_ BitVec 32))

(declare-fun lt!1319528 () List!40489)

(declare-fun isize!98 (List!40489) (_ BitVec 32))

(assert (=> bm!279350 (= call!279356 (isize!98 lt!1319528))))

(declare-fun b!3805141 () Bool)

(declare-fun e!2351313 () Bool)

(declare-fun call!279355 () (_ BitVec 32))

(assert (=> b!3805141 (= e!2351313 (= call!279356 (bvadd call!279355 #b00000000000000000000000000000001)))))

(declare-fun d!1122630 () Bool)

(declare-fun e!2351314 () Bool)

(assert (=> d!1122630 e!2351314))

(declare-fun res!1540538 () Bool)

(assert (=> d!1122630 (=> (not res!1540538) (not e!2351314))))

(assert (=> d!1122630 (= res!1540538 ((_ is Cons!40365) lt!1319528))))

(assert (=> d!1122630 (= lt!1319528 e!2351315)))

(declare-fun c!661868 () Bool)

(assert (=> d!1122630 (= c!661868 ((_ is Nil!40365) (list!14991 acc!335)))))

(assert (=> d!1122630 (= ($colon+!273 (list!14991 acc!335) (_1!22882 (v!38847 lt!1318792))) lt!1319528)))

(declare-fun b!3805142 () Bool)

(declare-fun res!1540539 () Bool)

(assert (=> b!3805142 (=> (not res!1540539) (not e!2351314))))

(assert (=> b!3805142 (= res!1540539 e!2351313)))

(declare-fun c!661869 () Bool)

(assert (=> b!3805142 (= c!661869 (bvslt (isize!98 (list!14991 acc!335)) #b01111111111111111111111111111111))))

(declare-fun b!3805143 () Bool)

(assert (=> b!3805143 (= e!2351315 (Cons!40365 (h!45785 (list!14991 acc!335)) ($colon+!273 (t!307218 (list!14991 acc!335)) (_1!22882 (v!38847 lt!1318792)))))))

(declare-fun b!3805144 () Bool)

(declare-fun res!1540536 () Bool)

(assert (=> b!3805144 (=> (not res!1540536) (not e!2351314))))

(assert (=> b!3805144 (= res!1540536 (= (size!30391 lt!1319528) (+ (size!30391 (list!14991 acc!335)) 1)))))

(declare-fun b!3805145 () Bool)

(assert (=> b!3805145 (= e!2351314 (= lt!1319528 (++!10134 (list!14991 acc!335) (Cons!40365 (_1!22882 (v!38847 lt!1318792)) Nil!40365))))))

(declare-fun bm!279351 () Bool)

(assert (=> bm!279351 (= call!279355 (isize!98 (list!14991 acc!335)))))

(declare-fun b!3805146 () Bool)

(assert (=> b!3805146 (= e!2351313 (= call!279356 call!279355))))

(declare-fun b!3805147 () Bool)

(declare-fun res!1540537 () Bool)

(assert (=> b!3805147 (=> (not res!1540537) (not e!2351314))))

(assert (=> b!3805147 (= res!1540537 (= (content!5955 lt!1319528) ((_ map or) (content!5955 (list!14991 acc!335)) (store ((as const (Array Token!11562 Bool)) false) (_1!22882 (v!38847 lt!1318792)) true))))))

(assert (= (and d!1122630 c!661868) b!3805140))

(assert (= (and d!1122630 (not c!661868)) b!3805143))

(assert (= (and d!1122630 res!1540538) b!3805144))

(assert (= (and b!3805144 res!1540536) b!3805142))

(assert (= (and b!3805142 c!661869) b!3805141))

(assert (= (and b!3805142 (not c!661869)) b!3805146))

(assert (= (or b!3805141 b!3805146) bm!279350))

(assert (= (or b!3805141 b!3805146) bm!279351))

(assert (= (and b!3805142 res!1540539) b!3805147))

(assert (= (and b!3805147 res!1540537) b!3805145))

(declare-fun m!4337163 () Bool)

(assert (=> b!3805144 m!4337163))

(assert (=> b!3805144 m!4334441))

(declare-fun m!4337165 () Bool)

(assert (=> b!3805144 m!4337165))

(declare-fun m!4337167 () Bool)

(assert (=> b!3805147 m!4337167))

(assert (=> b!3805147 m!4334441))

(declare-fun m!4337169 () Bool)

(assert (=> b!3805147 m!4337169))

(declare-fun m!4337171 () Bool)

(assert (=> b!3805147 m!4337171))

(assert (=> b!3805142 m!4334441))

(declare-fun m!4337173 () Bool)

(assert (=> b!3805142 m!4337173))

(declare-fun m!4337175 () Bool)

(assert (=> bm!279350 m!4337175))

(assert (=> b!3805145 m!4334441))

(declare-fun m!4337177 () Bool)

(assert (=> b!3805145 m!4337177))

(declare-fun m!4337179 () Bool)

(assert (=> b!3805143 m!4337179))

(assert (=> bm!279351 m!4334441))

(assert (=> bm!279351 m!4337173))

(assert (=> b!3803536 d!1122630))

(assert (=> b!3803536 d!1122008))

(assert (=> b!3803292 d!1122028))

(declare-fun d!1122632 () Bool)

(declare-fun lt!1319529 () Int)

(assert (=> d!1122632 (>= lt!1319529 0)))

(declare-fun e!2351316 () Int)

(assert (=> d!1122632 (= lt!1319529 e!2351316)))

(declare-fun c!661870 () Bool)

(assert (=> d!1122632 (= c!661870 ((_ is Nil!40363) lt!1318966))))

(assert (=> d!1122632 (= (size!30392 lt!1318966) lt!1319529)))

(declare-fun b!3805148 () Bool)

(assert (=> b!3805148 (= e!2351316 0)))

(declare-fun b!3805149 () Bool)

(assert (=> b!3805149 (= e!2351316 (+ 1 (size!30392 (t!307216 lt!1318966))))))

(assert (= (and d!1122632 c!661870) b!3805148))

(assert (= (and d!1122632 (not c!661870)) b!3805149))

(declare-fun m!4337181 () Bool)

(assert (=> b!3805149 m!4337181))

(assert (=> b!3803684 d!1122632))

(assert (=> b!3803684 d!1122506))

(declare-fun d!1122634 () Bool)

(declare-fun lt!1319530 () Int)

(assert (=> d!1122634 (>= lt!1319530 0)))

(declare-fun e!2351317 () Int)

(assert (=> d!1122634 (= lt!1319530 e!2351317)))

(declare-fun c!661871 () Bool)

(assert (=> d!1122634 (= c!661871 ((_ is Nil!40363) lt!1318787))))

(assert (=> d!1122634 (= (size!30392 lt!1318787) lt!1319530)))

(declare-fun b!3805150 () Bool)

(assert (=> b!3805150 (= e!2351317 0)))

(declare-fun b!3805151 () Bool)

(assert (=> b!3805151 (= e!2351317 (+ 1 (size!30392 (t!307216 lt!1318787))))))

(assert (= (and d!1122634 c!661871) b!3805150))

(assert (= (and d!1122634 (not c!661871)) b!3805151))

(assert (=> b!3805151 m!4336683))

(assert (=> b!3803684 d!1122634))

(declare-fun d!1122636 () Bool)

(assert (=> d!1122636 (= (list!14992 (_2!22882 (get!13382 lt!1319007))) (list!14996 (c!661414 (_2!22882 (get!13382 lt!1319007)))))))

(declare-fun bs!579776 () Bool)

(assert (= bs!579776 d!1122636))

(declare-fun m!4337183 () Bool)

(assert (=> bs!579776 m!4337183))

(assert (=> b!3803757 d!1122636))

(declare-fun b!3805170 () Bool)

(declare-fun e!2351326 () Option!8626)

(declare-fun call!279359 () Option!8626)

(assert (=> b!3805170 (= e!2351326 call!279359)))

(declare-fun b!3805171 () Bool)

(declare-fun res!1540554 () Bool)

(declare-fun e!2351324 () Bool)

(assert (=> b!3805171 (=> (not res!1540554) (not e!2351324))))

(declare-fun lt!1319543 () Option!8626)

(assert (=> b!3805171 (= res!1540554 (= (list!14992 (charsOf!4050 (_1!22886 (get!13383 lt!1319543)))) (originalCharacters!6812 (_1!22886 (get!13383 lt!1319543)))))))

(declare-fun b!3805173 () Bool)

(declare-fun e!2351325 () Bool)

(assert (=> b!3805173 (= e!2351325 e!2351324)))

(declare-fun res!1540557 () Bool)

(assert (=> b!3805173 (=> (not res!1540557) (not e!2351324))))

(assert (=> b!3805173 (= res!1540557 (isDefined!6787 lt!1319543))))

(declare-fun b!3805174 () Bool)

(declare-fun res!1540558 () Bool)

(assert (=> b!3805174 (=> (not res!1540558) (not e!2351324))))

(assert (=> b!3805174 (= res!1540558 (matchR!5314 (regex!6212 (rule!9008 (_1!22886 (get!13383 lt!1319543)))) (list!14992 (charsOf!4050 (_1!22886 (get!13383 lt!1319543))))))))

(declare-fun b!3805175 () Bool)

(declare-fun res!1540555 () Bool)

(assert (=> b!3805175 (=> (not res!1540555) (not e!2351324))))

(assert (=> b!3805175 (= res!1540555 (= (++!10133 (list!14992 (charsOf!4050 (_1!22886 (get!13383 lt!1319543)))) (_2!22886 (get!13383 lt!1319543))) (list!14992 input!678)))))

(declare-fun b!3805176 () Bool)

(declare-fun res!1540556 () Bool)

(assert (=> b!3805176 (=> (not res!1540556) (not e!2351324))))

(assert (=> b!3805176 (= res!1540556 (= (value!197649 (_1!22886 (get!13383 lt!1319543))) (apply!9471 (transformation!6212 (rule!9008 (_1!22886 (get!13383 lt!1319543)))) (seqFromList!4499 (originalCharacters!6812 (_1!22886 (get!13383 lt!1319543)))))))))

(declare-fun b!3805177 () Bool)

(declare-fun contains!8190 (List!40488 Rule!12224) Bool)

(assert (=> b!3805177 (= e!2351324 (contains!8190 rules!1265 (rule!9008 (_1!22886 (get!13383 lt!1319543)))))))

(declare-fun b!3805172 () Bool)

(declare-fun lt!1319542 () Option!8626)

(declare-fun lt!1319541 () Option!8626)

(assert (=> b!3805172 (= e!2351326 (ite (and ((_ is None!8625) lt!1319542) ((_ is None!8625) lt!1319541)) None!8625 (ite ((_ is None!8625) lt!1319541) lt!1319542 (ite ((_ is None!8625) lt!1319542) lt!1319541 (ite (>= (size!30384 (_1!22886 (v!38853 lt!1319542))) (size!30384 (_1!22886 (v!38853 lt!1319541)))) lt!1319542 lt!1319541)))))))

(assert (=> b!3805172 (= lt!1319542 call!279359)))

(assert (=> b!3805172 (= lt!1319541 (maxPrefix!3113 thiss!11876 (t!307217 rules!1265) (list!14992 input!678)))))

(declare-fun d!1122638 () Bool)

(assert (=> d!1122638 e!2351325))

(declare-fun res!1540559 () Bool)

(assert (=> d!1122638 (=> res!1540559 e!2351325)))

(declare-fun isEmpty!23776 (Option!8626) Bool)

(assert (=> d!1122638 (= res!1540559 (isEmpty!23776 lt!1319543))))

(assert (=> d!1122638 (= lt!1319543 e!2351326)))

(declare-fun c!661874 () Bool)

(assert (=> d!1122638 (= c!661874 (and ((_ is Cons!40364) rules!1265) ((_ is Nil!40364) (t!307217 rules!1265))))))

(declare-fun lt!1319545 () Unit!58104)

(declare-fun lt!1319544 () Unit!58104)

(assert (=> d!1122638 (= lt!1319545 lt!1319544)))

(assert (=> d!1122638 (isPrefix!3321 (list!14992 input!678) (list!14992 input!678))))

(assert (=> d!1122638 (= lt!1319544 (lemmaIsPrefixRefl!2106 (list!14992 input!678) (list!14992 input!678)))))

(assert (=> d!1122638 (rulesValidInductive!2180 thiss!11876 rules!1265)))

(assert (=> d!1122638 (= (maxPrefix!3113 thiss!11876 rules!1265 (list!14992 input!678)) lt!1319543)))

(declare-fun b!3805178 () Bool)

(declare-fun res!1540560 () Bool)

(assert (=> b!3805178 (=> (not res!1540560) (not e!2351324))))

(assert (=> b!3805178 (= res!1540560 (< (size!30392 (_2!22886 (get!13383 lt!1319543))) (size!30392 (list!14992 input!678))))))

(declare-fun bm!279354 () Bool)

(assert (=> bm!279354 (= call!279359 (maxPrefixOneRule!2215 thiss!11876 (h!45784 rules!1265) (list!14992 input!678)))))

(assert (= (and d!1122638 c!661874) b!3805170))

(assert (= (and d!1122638 (not c!661874)) b!3805172))

(assert (= (or b!3805170 b!3805172) bm!279354))

(assert (= (and d!1122638 (not res!1540559)) b!3805173))

(assert (= (and b!3805173 res!1540557) b!3805171))

(assert (= (and b!3805171 res!1540554) b!3805178))

(assert (= (and b!3805178 res!1540560) b!3805175))

(assert (= (and b!3805175 res!1540555) b!3805176))

(assert (= (and b!3805176 res!1540556) b!3805174))

(assert (= (and b!3805174 res!1540558) b!3805177))

(declare-fun m!4337185 () Bool)

(assert (=> b!3805174 m!4337185))

(declare-fun m!4337187 () Bool)

(assert (=> b!3805174 m!4337187))

(assert (=> b!3805174 m!4337187))

(declare-fun m!4337189 () Bool)

(assert (=> b!3805174 m!4337189))

(assert (=> b!3805174 m!4337189))

(declare-fun m!4337191 () Bool)

(assert (=> b!3805174 m!4337191))

(assert (=> b!3805172 m!4334435))

(declare-fun m!4337193 () Bool)

(assert (=> b!3805172 m!4337193))

(assert (=> b!3805178 m!4337185))

(declare-fun m!4337195 () Bool)

(assert (=> b!3805178 m!4337195))

(assert (=> b!3805178 m!4334435))

(assert (=> b!3805178 m!4336127))

(assert (=> bm!279354 m!4334435))

(assert (=> bm!279354 m!4337101))

(assert (=> b!3805171 m!4337185))

(assert (=> b!3805171 m!4337187))

(assert (=> b!3805171 m!4337187))

(assert (=> b!3805171 m!4337189))

(assert (=> b!3805175 m!4337185))

(assert (=> b!3805175 m!4337187))

(assert (=> b!3805175 m!4337187))

(assert (=> b!3805175 m!4337189))

(assert (=> b!3805175 m!4337189))

(declare-fun m!4337197 () Bool)

(assert (=> b!3805175 m!4337197))

(declare-fun m!4337199 () Bool)

(assert (=> b!3805173 m!4337199))

(assert (=> b!3805177 m!4337185))

(declare-fun m!4337201 () Bool)

(assert (=> b!3805177 m!4337201))

(declare-fun m!4337203 () Bool)

(assert (=> d!1122638 m!4337203))

(assert (=> d!1122638 m!4334435))

(assert (=> d!1122638 m!4334435))

(assert (=> d!1122638 m!4336189))

(assert (=> d!1122638 m!4334435))

(assert (=> d!1122638 m!4334435))

(assert (=> d!1122638 m!4336191))

(assert (=> d!1122638 m!4335023))

(assert (=> b!3805176 m!4337185))

(declare-fun m!4337205 () Bool)

(assert (=> b!3805176 m!4337205))

(assert (=> b!3805176 m!4337205))

(declare-fun m!4337207 () Bool)

(assert (=> b!3805176 m!4337207))

(assert (=> b!3803757 d!1122638))

(declare-fun d!1122640 () Bool)

(assert (=> d!1122640 (= (get!13382 lt!1319007) (v!38847 lt!1319007))))

(assert (=> b!3803757 d!1122640))

(assert (=> b!3803757 d!1121994))

(declare-fun d!1122642 () Bool)

(assert (=> d!1122642 (= (get!13383 (maxPrefix!3113 thiss!11876 rules!1265 (list!14992 input!678))) (v!38853 (maxPrefix!3113 thiss!11876 rules!1265 (list!14992 input!678))))))

(assert (=> b!3803757 d!1122642))

(declare-fun b!3805179 () Bool)

(declare-fun e!2351327 () List!40489)

(assert (=> b!3805179 (= e!2351327 Nil!40365)))

(declare-fun b!3805181 () Bool)

(declare-fun e!2351328 () List!40489)

(assert (=> b!3805181 (= e!2351328 (list!14999 (xs!15665 (c!661415 (++!10132 acc!335 (_1!22881 lt!1318791))))))))

(declare-fun b!3805182 () Bool)

(assert (=> b!3805182 (= e!2351328 (++!10134 (list!14995 (left!31230 (c!661415 (++!10132 acc!335 (_1!22881 lt!1318791))))) (list!14995 (right!31560 (c!661415 (++!10132 acc!335 (_1!22881 lt!1318791)))))))))

(declare-fun d!1122644 () Bool)

(declare-fun c!661875 () Bool)

(assert (=> d!1122644 (= c!661875 ((_ is Empty!12399) (c!661415 (++!10132 acc!335 (_1!22881 lt!1318791)))))))

(assert (=> d!1122644 (= (list!14995 (c!661415 (++!10132 acc!335 (_1!22881 lt!1318791)))) e!2351327)))

(declare-fun b!3805180 () Bool)

(assert (=> b!3805180 (= e!2351327 e!2351328)))

(declare-fun c!661876 () Bool)

(assert (=> b!3805180 (= c!661876 ((_ is Leaf!19203) (c!661415 (++!10132 acc!335 (_1!22881 lt!1318791)))))))

(assert (= (and d!1122644 c!661875) b!3805179))

(assert (= (and d!1122644 (not c!661875)) b!3805180))

(assert (= (and b!3805180 c!661876) b!3805181))

(assert (= (and b!3805180 (not c!661876)) b!3805182))

(declare-fun m!4337209 () Bool)

(assert (=> b!3805181 m!4337209))

(declare-fun m!4337211 () Bool)

(assert (=> b!3805182 m!4337211))

(declare-fun m!4337213 () Bool)

(assert (=> b!3805182 m!4337213))

(assert (=> b!3805182 m!4337211))

(assert (=> b!3805182 m!4337213))

(declare-fun m!4337215 () Bool)

(assert (=> b!3805182 m!4337215))

(assert (=> d!1121932 d!1122644))

(declare-fun bs!579777 () Bool)

(declare-fun b!3805197 () Bool)

(assert (= bs!579777 (and b!3805197 d!1122156)))

(declare-fun lambda!125684 () Int)

(assert (=> bs!579777 (= lambda!125684 lambda!125661)))

(declare-fun bs!579778 () Bool)

(assert (= bs!579778 (and b!3805197 b!3805099)))

(assert (=> bs!579778 (= lambda!125684 lambda!125679)))

(declare-fun b!3805202 () Bool)

(declare-fun e!2351345 () Bool)

(assert (=> b!3805202 (= e!2351345 true)))

(declare-fun b!3805201 () Bool)

(declare-fun e!2351344 () Bool)

(assert (=> b!3805201 (= e!2351344 e!2351345)))

(assert (=> b!3805197 e!2351344))

(assert (= b!3805201 b!3805202))

(assert (= b!3805197 b!3805201))

(assert (=> b!3805202 (< (dynLambda!17449 order!22027 (toValue!8596 (transformation!6212 (h!45784 rules!1265)))) (dynLambda!17448 order!22025 lambda!125684))))

(assert (=> b!3805202 (< (dynLambda!17447 order!22023 (toChars!8455 (transformation!6212 (h!45784 rules!1265)))) (dynLambda!17448 order!22025 lambda!125684))))

(declare-fun b!3805196 () Bool)

(declare-fun e!2351343 () Option!8624)

(assert (=> b!3805196 (= e!2351343 None!8623)))

(declare-fun lt!1319567 () tuple2!39510)

(assert (=> b!3805197 (= e!2351343 (Some!8623 (tuple2!39497 (Token!11563 (apply!9471 (transformation!6212 (h!45784 rules!1265)) (_1!22889 lt!1319567)) (h!45784 rules!1265) (size!30389 (_1!22889 lt!1319567)) (list!14992 (_1!22889 lt!1319567))) (_2!22889 lt!1319567))))))

(declare-fun lt!1319566 () List!40487)

(assert (=> b!3805197 (= lt!1319566 (list!14992 input!678))))

(declare-fun lt!1319575 () Unit!58104)

(assert (=> b!3805197 (= lt!1319575 (longestMatchIsAcceptedByMatchOrIsEmpty!1111 (regex!6212 (h!45784 rules!1265)) lt!1319566))))

(declare-fun res!1540571 () Bool)

(assert (=> b!3805197 (= res!1540571 (isEmpty!23762 (_1!22890 (findLongestMatchInner!1138 (regex!6212 (h!45784 rules!1265)) Nil!40363 (size!30392 Nil!40363) lt!1319566 lt!1319566 (size!30392 lt!1319566)))))))

(declare-fun e!2351340 () Bool)

(assert (=> b!3805197 (=> res!1540571 e!2351340)))

(assert (=> b!3805197 e!2351340))

(declare-fun lt!1319569 () Unit!58104)

(assert (=> b!3805197 (= lt!1319569 lt!1319575)))

(declare-fun lt!1319571 () Unit!58104)

(assert (=> b!3805197 (= lt!1319571 (lemmaInv!859 (transformation!6212 (h!45784 rules!1265))))))

(declare-fun lt!1319568 () Unit!58104)

(assert (=> b!3805197 (= lt!1319568 (ForallOf!770 lambda!125684 (_1!22889 lt!1319567)))))

(declare-fun lt!1319572 () Unit!58104)

(assert (=> b!3805197 (= lt!1319572 (ForallOf!770 lambda!125684 (seqFromList!4499 (list!14992 (_1!22889 lt!1319567)))))))

(declare-fun lt!1319574 () Option!8624)

(assert (=> b!3805197 (= lt!1319574 (Some!8623 (tuple2!39497 (Token!11563 (apply!9471 (transformation!6212 (h!45784 rules!1265)) (_1!22889 lt!1319567)) (h!45784 rules!1265) (size!30389 (_1!22889 lt!1319567)) (list!14992 (_1!22889 lt!1319567))) (_2!22889 lt!1319567))))))

(declare-fun lt!1319573 () Unit!58104)

(assert (=> b!3805197 (= lt!1319573 (lemmaEqSameImage!1043 (transformation!6212 (h!45784 rules!1265)) (_1!22889 lt!1319567) (seqFromList!4499 (list!14992 (_1!22889 lt!1319567)))))))

(declare-fun b!3805198 () Bool)

(declare-fun lt!1319570 () Option!8624)

(declare-fun e!2351342 () Bool)

(assert (=> b!3805198 (= e!2351342 (= (list!14992 (_2!22882 (get!13382 lt!1319570))) (_2!22886 (get!13383 (maxPrefixOneRule!2215 thiss!11876 (h!45784 rules!1265) (list!14992 input!678))))))))

(declare-fun b!3805195 () Bool)

(declare-fun e!2351341 () Bool)

(declare-fun e!2351339 () Bool)

(assert (=> b!3805195 (= e!2351341 e!2351339)))

(declare-fun res!1540570 () Bool)

(assert (=> b!3805195 (=> res!1540570 e!2351339)))

(assert (=> b!3805195 (= res!1540570 (not (isDefined!6786 lt!1319570)))))

(declare-fun d!1122646 () Bool)

(assert (=> d!1122646 e!2351341))

(declare-fun res!1540572 () Bool)

(assert (=> d!1122646 (=> (not res!1540572) (not e!2351341))))

(assert (=> d!1122646 (= res!1540572 (= (isDefined!6786 lt!1319570) (isDefined!6787 (maxPrefixOneRule!2215 thiss!11876 (h!45784 rules!1265) (list!14992 input!678)))))))

(assert (=> d!1122646 (= lt!1319570 e!2351343)))

(declare-fun c!661879 () Bool)

(assert (=> d!1122646 (= c!661879 (isEmpty!23775 (_1!22889 lt!1319567)))))

(declare-fun findLongestMatchWithZipperSequence!224 (Regex!11117 BalanceConc!24390) tuple2!39510)

(assert (=> d!1122646 (= lt!1319567 (findLongestMatchWithZipperSequence!224 (regex!6212 (h!45784 rules!1265)) input!678))))

(assert (=> d!1122646 (ruleValid!2178 thiss!11876 (h!45784 rules!1265))))

(assert (=> d!1122646 (= (maxPrefixOneRuleZipperSequence!560 thiss!11876 (h!45784 rules!1265) input!678) lt!1319570)))

(declare-fun b!3805199 () Bool)

(assert (=> b!3805199 (= e!2351339 e!2351342)))

(declare-fun res!1540569 () Bool)

(assert (=> b!3805199 (=> (not res!1540569) (not e!2351342))))

(assert (=> b!3805199 (= res!1540569 (= (_1!22882 (get!13382 lt!1319570)) (_1!22886 (get!13383 (maxPrefixOneRule!2215 thiss!11876 (h!45784 rules!1265) (list!14992 input!678))))))))

(declare-fun b!3805200 () Bool)

(assert (=> b!3805200 (= e!2351340 (matchR!5314 (regex!6212 (h!45784 rules!1265)) (_1!22890 (findLongestMatchInner!1138 (regex!6212 (h!45784 rules!1265)) Nil!40363 (size!30392 Nil!40363) lt!1319566 lt!1319566 (size!30392 lt!1319566)))))))

(assert (= (and d!1122646 c!661879) b!3805196))

(assert (= (and d!1122646 (not c!661879)) b!3805197))

(assert (= (and b!3805197 (not res!1540571)) b!3805200))

(assert (= (and d!1122646 res!1540572) b!3805195))

(assert (= (and b!3805195 (not res!1540570)) b!3805199))

(assert (= (and b!3805199 res!1540569) b!3805198))

(declare-fun m!4337217 () Bool)

(assert (=> b!3805195 m!4337217))

(assert (=> b!3805200 m!4337093))

(declare-fun m!4337219 () Bool)

(assert (=> b!3805200 m!4337219))

(assert (=> b!3805200 m!4337093))

(assert (=> b!3805200 m!4337219))

(declare-fun m!4337221 () Bool)

(assert (=> b!3805200 m!4337221))

(declare-fun m!4337223 () Bool)

(assert (=> b!3805200 m!4337223))

(assert (=> d!1122646 m!4334435))

(assert (=> d!1122646 m!4337101))

(declare-fun m!4337225 () Bool)

(assert (=> d!1122646 m!4337225))

(assert (=> d!1122646 m!4337109))

(assert (=> d!1122646 m!4334435))

(declare-fun m!4337227 () Bool)

(assert (=> d!1122646 m!4337227))

(assert (=> d!1122646 m!4337217))

(assert (=> d!1122646 m!4337101))

(assert (=> d!1122646 m!4337103))

(declare-fun m!4337229 () Bool)

(assert (=> b!3805197 m!4337229))

(assert (=> b!3805197 m!4337127))

(declare-fun m!4337231 () Bool)

(assert (=> b!3805197 m!4337231))

(assert (=> b!3805197 m!4337219))

(assert (=> b!3805197 m!4334435))

(declare-fun m!4337233 () Bool)

(assert (=> b!3805197 m!4337233))

(declare-fun m!4337235 () Bool)

(assert (=> b!3805197 m!4337235))

(declare-fun m!4337237 () Bool)

(assert (=> b!3805197 m!4337237))

(declare-fun m!4337239 () Bool)

(assert (=> b!3805197 m!4337239))

(assert (=> b!3805197 m!4337233))

(declare-fun m!4337241 () Bool)

(assert (=> b!3805197 m!4337241))

(assert (=> b!3805197 m!4337093))

(declare-fun m!4337243 () Bool)

(assert (=> b!3805197 m!4337243))

(declare-fun m!4337245 () Bool)

(assert (=> b!3805197 m!4337245))

(assert (=> b!3805197 m!4337229))

(assert (=> b!3805197 m!4337233))

(assert (=> b!3805197 m!4337093))

(assert (=> b!3805197 m!4337219))

(assert (=> b!3805197 m!4337221))

(assert (=> b!3805198 m!4334435))

(assert (=> b!3805198 m!4337101))

(declare-fun m!4337247 () Bool)

(assert (=> b!3805198 m!4337247))

(assert (=> b!3805198 m!4334435))

(assert (=> b!3805198 m!4337101))

(assert (=> b!3805198 m!4337135))

(declare-fun m!4337249 () Bool)

(assert (=> b!3805198 m!4337249))

(assert (=> b!3805199 m!4337247))

(assert (=> b!3805199 m!4334435))

(assert (=> b!3805199 m!4334435))

(assert (=> b!3805199 m!4337101))

(assert (=> b!3805199 m!4337101))

(assert (=> b!3805199 m!4337135))

(assert (=> bm!279156 d!1122646))

(assert (=> b!3803728 d!1122548))

(assert (=> b!3803728 d!1122552))

(declare-fun e!2351347 () List!40487)

(declare-fun b!3805204 () Bool)

(assert (=> b!3805204 (= e!2351347 (Cons!40363 (h!45783 (t!307216 (++!10133 lt!1318796 lt!1318787))) (++!10133 (t!307216 (t!307216 (++!10133 lt!1318796 lt!1318787))) lt!1318786)))))

(declare-fun b!3805206 () Bool)

(declare-fun e!2351346 () Bool)

(declare-fun lt!1319576 () List!40487)

(assert (=> b!3805206 (= e!2351346 (or (not (= lt!1318786 Nil!40363)) (= lt!1319576 (t!307216 (++!10133 lt!1318796 lt!1318787)))))))

(declare-fun d!1122648 () Bool)

(assert (=> d!1122648 e!2351346))

(declare-fun res!1540573 () Bool)

(assert (=> d!1122648 (=> (not res!1540573) (not e!2351346))))

(assert (=> d!1122648 (= res!1540573 (= (content!5956 lt!1319576) ((_ map or) (content!5956 (t!307216 (++!10133 lt!1318796 lt!1318787))) (content!5956 lt!1318786))))))

(assert (=> d!1122648 (= lt!1319576 e!2351347)))

(declare-fun c!661880 () Bool)

(assert (=> d!1122648 (= c!661880 ((_ is Nil!40363) (t!307216 (++!10133 lt!1318796 lt!1318787))))))

(assert (=> d!1122648 (= (++!10133 (t!307216 (++!10133 lt!1318796 lt!1318787)) lt!1318786) lt!1319576)))

(declare-fun b!3805203 () Bool)

(assert (=> b!3805203 (= e!2351347 lt!1318786)))

(declare-fun b!3805205 () Bool)

(declare-fun res!1540574 () Bool)

(assert (=> b!3805205 (=> (not res!1540574) (not e!2351346))))

(assert (=> b!3805205 (= res!1540574 (= (size!30392 lt!1319576) (+ (size!30392 (t!307216 (++!10133 lt!1318796 lt!1318787))) (size!30392 lt!1318786))))))

(assert (= (and d!1122648 c!661880) b!3805203))

(assert (= (and d!1122648 (not c!661880)) b!3805204))

(assert (= (and d!1122648 res!1540573) b!3805205))

(assert (= (and b!3805205 res!1540574) b!3805206))

(declare-fun m!4337251 () Bool)

(assert (=> b!3805204 m!4337251))

(declare-fun m!4337253 () Bool)

(assert (=> d!1122648 m!4337253))

(declare-fun m!4337255 () Bool)

(assert (=> d!1122648 m!4337255))

(assert (=> d!1122648 m!4334917))

(declare-fun m!4337257 () Bool)

(assert (=> b!3805205 m!4337257))

(declare-fun m!4337259 () Bool)

(assert (=> b!3805205 m!4337259))

(assert (=> b!3805205 m!4334923))

(assert (=> b!3803550 d!1122648))

(assert (=> b!3803508 d!1122542))

(assert (=> b!3803508 d!1121992))

(declare-fun b!3805209 () Bool)

(declare-fun e!2351349 () List!40487)

(assert (=> b!3805209 (= e!2351349 (list!15000 (xs!15664 (c!661414 input!678))))))

(declare-fun b!3805208 () Bool)

(declare-fun e!2351348 () List!40487)

(assert (=> b!3805208 (= e!2351348 e!2351349)))

(declare-fun c!661882 () Bool)

(assert (=> b!3805208 (= c!661882 ((_ is Leaf!19202) (c!661414 input!678)))))

(declare-fun b!3805207 () Bool)

(assert (=> b!3805207 (= e!2351348 Nil!40363)))

(declare-fun b!3805210 () Bool)

(assert (=> b!3805210 (= e!2351349 (++!10133 (list!14996 (left!31229 (c!661414 input!678))) (list!14996 (right!31559 (c!661414 input!678)))))))

(declare-fun d!1122650 () Bool)

(declare-fun c!661881 () Bool)

(assert (=> d!1122650 (= c!661881 ((_ is Empty!12398) (c!661414 input!678)))))

(assert (=> d!1122650 (= (list!14996 (c!661414 input!678)) e!2351348)))

(assert (= (and d!1122650 c!661881) b!3805207))

(assert (= (and d!1122650 (not c!661881)) b!3805208))

(assert (= (and b!3805208 c!661882) b!3805209))

(assert (= (and b!3805208 (not c!661882)) b!3805210))

(declare-fun m!4337261 () Bool)

(assert (=> b!3805209 m!4337261))

(declare-fun m!4337263 () Bool)

(assert (=> b!3805210 m!4337263))

(declare-fun m!4337265 () Bool)

(assert (=> b!3805210 m!4337265))

(assert (=> b!3805210 m!4337263))

(assert (=> b!3805210 m!4337265))

(declare-fun m!4337267 () Bool)

(assert (=> b!3805210 m!4337267))

(assert (=> d!1121994 d!1122650))

(declare-fun d!1122652 () Bool)

(declare-fun c!661883 () Bool)

(assert (=> d!1122652 (= c!661883 ((_ is Node!12398) (left!31229 (c!661414 input!678))))))

(declare-fun e!2351350 () Bool)

(assert (=> d!1122652 (= (inv!54330 (left!31229 (c!661414 input!678))) e!2351350)))

(declare-fun b!3805211 () Bool)

(assert (=> b!3805211 (= e!2351350 (inv!54337 (left!31229 (c!661414 input!678))))))

(declare-fun b!3805212 () Bool)

(declare-fun e!2351351 () Bool)

(assert (=> b!3805212 (= e!2351350 e!2351351)))

(declare-fun res!1540575 () Bool)

(assert (=> b!3805212 (= res!1540575 (not ((_ is Leaf!19202) (left!31229 (c!661414 input!678)))))))

(assert (=> b!3805212 (=> res!1540575 e!2351351)))

(declare-fun b!3805213 () Bool)

(assert (=> b!3805213 (= e!2351351 (inv!54338 (left!31229 (c!661414 input!678))))))

(assert (= (and d!1122652 c!661883) b!3805211))

(assert (= (and d!1122652 (not c!661883)) b!3805212))

(assert (= (and b!3805212 (not res!1540575)) b!3805213))

(declare-fun m!4337269 () Bool)

(assert (=> b!3805211 m!4337269))

(declare-fun m!4337271 () Bool)

(assert (=> b!3805213 m!4337271))

(assert (=> b!3803795 d!1122652))

(declare-fun d!1122654 () Bool)

(declare-fun c!661884 () Bool)

(assert (=> d!1122654 (= c!661884 ((_ is Node!12398) (right!31559 (c!661414 input!678))))))

(declare-fun e!2351352 () Bool)

(assert (=> d!1122654 (= (inv!54330 (right!31559 (c!661414 input!678))) e!2351352)))

(declare-fun b!3805214 () Bool)

(assert (=> b!3805214 (= e!2351352 (inv!54337 (right!31559 (c!661414 input!678))))))

(declare-fun b!3805215 () Bool)

(declare-fun e!2351353 () Bool)

(assert (=> b!3805215 (= e!2351352 e!2351353)))

(declare-fun res!1540576 () Bool)

(assert (=> b!3805215 (= res!1540576 (not ((_ is Leaf!19202) (right!31559 (c!661414 input!678)))))))

(assert (=> b!3805215 (=> res!1540576 e!2351353)))

(declare-fun b!3805216 () Bool)

(assert (=> b!3805216 (= e!2351353 (inv!54338 (right!31559 (c!661414 input!678))))))

(assert (= (and d!1122654 c!661884) b!3805214))

(assert (= (and d!1122654 (not c!661884)) b!3805215))

(assert (= (and b!3805215 (not res!1540576)) b!3805216))

(declare-fun m!4337273 () Bool)

(assert (=> b!3805214 m!4337273))

(declare-fun m!4337275 () Bool)

(assert (=> b!3805216 m!4337275))

(assert (=> b!3803795 d!1122654))

(declare-fun d!1122656 () Bool)

(declare-fun lt!1319577 () Int)

(assert (=> d!1122656 (= lt!1319577 (size!30392 (list!14992 (_2!22881 lt!1318972))))))

(assert (=> d!1122656 (= lt!1319577 (size!30395 (c!661414 (_2!22881 lt!1318972))))))

(assert (=> d!1122656 (= (size!30389 (_2!22881 lt!1318972)) lt!1319577)))

(declare-fun bs!579779 () Bool)

(assert (= bs!579779 d!1122656))

(assert (=> bs!579779 m!4335117))

(assert (=> bs!579779 m!4335117))

(declare-fun m!4337277 () Bool)

(assert (=> bs!579779 m!4337277))

(declare-fun m!4337279 () Bool)

(assert (=> bs!579779 m!4337279))

(assert (=> b!3803703 d!1122656))

(declare-fun d!1122658 () Bool)

(declare-fun lt!1319578 () Int)

(assert (=> d!1122658 (= lt!1319578 (size!30392 (list!14992 treated!13)))))

(assert (=> d!1122658 (= lt!1319578 (size!30395 (c!661414 treated!13)))))

(assert (=> d!1122658 (= (size!30389 treated!13) lt!1319578)))

(declare-fun bs!579780 () Bool)

(assert (= bs!579780 d!1122658))

(assert (=> bs!579780 m!4334437))

(assert (=> bs!579780 m!4334437))

(assert (=> bs!579780 m!4336229))

(declare-fun m!4337281 () Bool)

(assert (=> bs!579780 m!4337281))

(assert (=> b!3803703 d!1122658))

(assert (=> b!3803284 d!1122014))

(declare-fun b!3805219 () Bool)

(declare-fun e!2351355 () List!40487)

(assert (=> b!3805219 (= e!2351355 (list!15000 (xs!15664 (c!661414 (_2!22881 lt!1318804)))))))

(declare-fun b!3805218 () Bool)

(declare-fun e!2351354 () List!40487)

(assert (=> b!3805218 (= e!2351354 e!2351355)))

(declare-fun c!661886 () Bool)

(assert (=> b!3805218 (= c!661886 ((_ is Leaf!19202) (c!661414 (_2!22881 lt!1318804))))))

(declare-fun b!3805217 () Bool)

(assert (=> b!3805217 (= e!2351354 Nil!40363)))

(declare-fun b!3805220 () Bool)

(assert (=> b!3805220 (= e!2351355 (++!10133 (list!14996 (left!31229 (c!661414 (_2!22881 lt!1318804)))) (list!14996 (right!31559 (c!661414 (_2!22881 lt!1318804))))))))

(declare-fun d!1122660 () Bool)

(declare-fun c!661885 () Bool)

(assert (=> d!1122660 (= c!661885 ((_ is Empty!12398) (c!661414 (_2!22881 lt!1318804))))))

(assert (=> d!1122660 (= (list!14996 (c!661414 (_2!22881 lt!1318804))) e!2351354)))

(assert (= (and d!1122660 c!661885) b!3805217))

(assert (= (and d!1122660 (not c!661885)) b!3805218))

(assert (= (and b!3805218 c!661886) b!3805219))

(assert (= (and b!3805218 (not c!661886)) b!3805220))

(declare-fun m!4337283 () Bool)

(assert (=> b!3805219 m!4337283))

(declare-fun m!4337285 () Bool)

(assert (=> b!3805220 m!4337285))

(declare-fun m!4337287 () Bool)

(assert (=> b!3805220 m!4337287))

(assert (=> b!3805220 m!4337285))

(assert (=> b!3805220 m!4337287))

(declare-fun m!4337289 () Bool)

(assert (=> b!3805220 m!4337289))

(assert (=> d!1122002 d!1122660))

(declare-fun d!1122662 () Bool)

(declare-fun lt!1319579 () Int)

(assert (=> d!1122662 (>= lt!1319579 0)))

(declare-fun e!2351356 () Int)

(assert (=> d!1122662 (= lt!1319579 e!2351356)))

(declare-fun c!661887 () Bool)

(assert (=> d!1122662 (= c!661887 ((_ is Nil!40363) lt!1318915))))

(assert (=> d!1122662 (= (size!30392 lt!1318915) lt!1319579)))

(declare-fun b!3805221 () Bool)

(assert (=> b!3805221 (= e!2351356 0)))

(declare-fun b!3805222 () Bool)

(assert (=> b!3805222 (= e!2351356 (+ 1 (size!30392 (t!307216 lt!1318915))))))

(assert (= (and d!1122662 c!661887) b!3805221))

(assert (= (and d!1122662 (not c!661887)) b!3805222))

(declare-fun m!4337291 () Bool)

(assert (=> b!3805222 m!4337291))

(assert (=> b!3803559 d!1122662))

(assert (=> b!3803559 d!1122634))

(declare-fun d!1122664 () Bool)

(declare-fun lt!1319580 () Int)

(assert (=> d!1122664 (>= lt!1319580 0)))

(declare-fun e!2351357 () Int)

(assert (=> d!1122664 (= lt!1319580 e!2351357)))

(declare-fun c!661888 () Bool)

(assert (=> d!1122664 (= c!661888 ((_ is Nil!40363) lt!1318786))))

(assert (=> d!1122664 (= (size!30392 lt!1318786) lt!1319580)))

(declare-fun b!3805223 () Bool)

(assert (=> b!3805223 (= e!2351357 0)))

(declare-fun b!3805224 () Bool)

(assert (=> b!3805224 (= e!2351357 (+ 1 (size!30392 (t!307216 lt!1318786))))))

(assert (= (and d!1122664 c!661888) b!3805223))

(assert (= (and d!1122664 (not c!661888)) b!3805224))

(declare-fun m!4337293 () Bool)

(assert (=> b!3805224 m!4337293))

(assert (=> b!3803559 d!1122664))

(declare-fun b!3805225 () Bool)

(declare-fun res!1540580 () Bool)

(declare-fun e!2351359 () Bool)

(assert (=> b!3805225 (=> (not res!1540580) (not e!2351359))))

(assert (=> b!3805225 (= res!1540580 (<= (- (height!1796 (left!31229 (c!661414 input!678))) (height!1796 (right!31559 (c!661414 input!678)))) 1))))

(declare-fun b!3805226 () Bool)

(declare-fun res!1540579 () Bool)

(assert (=> b!3805226 (=> (not res!1540579) (not e!2351359))))

(assert (=> b!3805226 (= res!1540579 (not (isEmpty!23774 (left!31229 (c!661414 input!678)))))))

(declare-fun b!3805227 () Bool)

(declare-fun res!1540577 () Bool)

(assert (=> b!3805227 (=> (not res!1540577) (not e!2351359))))

(assert (=> b!3805227 (= res!1540577 (isBalanced!3578 (right!31559 (c!661414 input!678))))))

(declare-fun b!3805228 () Bool)

(assert (=> b!3805228 (= e!2351359 (not (isEmpty!23774 (right!31559 (c!661414 input!678)))))))

(declare-fun b!3805229 () Bool)

(declare-fun res!1540582 () Bool)

(assert (=> b!3805229 (=> (not res!1540582) (not e!2351359))))

(assert (=> b!3805229 (= res!1540582 (isBalanced!3578 (left!31229 (c!661414 input!678))))))

(declare-fun d!1122666 () Bool)

(declare-fun res!1540581 () Bool)

(declare-fun e!2351358 () Bool)

(assert (=> d!1122666 (=> res!1540581 e!2351358)))

(assert (=> d!1122666 (= res!1540581 (not ((_ is Node!12398) (c!661414 input!678))))))

(assert (=> d!1122666 (= (isBalanced!3578 (c!661414 input!678)) e!2351358)))

(declare-fun b!3805230 () Bool)

(assert (=> b!3805230 (= e!2351358 e!2351359)))

(declare-fun res!1540578 () Bool)

(assert (=> b!3805230 (=> (not res!1540578) (not e!2351359))))

(assert (=> b!3805230 (= res!1540578 (<= (- 1) (- (height!1796 (left!31229 (c!661414 input!678))) (height!1796 (right!31559 (c!661414 input!678))))))))

(assert (= (and d!1122666 (not res!1540581)) b!3805230))

(assert (= (and b!3805230 res!1540578) b!3805225))

(assert (= (and b!3805225 res!1540580) b!3805229))

(assert (= (and b!3805229 res!1540582) b!3805227))

(assert (= (and b!3805227 res!1540577) b!3805226))

(assert (= (and b!3805226 res!1540579) b!3805228))

(declare-fun m!4337295 () Bool)

(assert (=> b!3805229 m!4337295))

(declare-fun m!4337297 () Bool)

(assert (=> b!3805228 m!4337297))

(assert (=> b!3805225 m!4336117))

(assert (=> b!3805225 m!4336119))

(declare-fun m!4337299 () Bool)

(assert (=> b!3805227 m!4337299))

(assert (=> b!3805230 m!4336117))

(assert (=> b!3805230 m!4336119))

(declare-fun m!4337301 () Bool)

(assert (=> b!3805226 m!4337301))

(assert (=> d!1122034 d!1122666))

(declare-fun b!3805231 () Bool)

(declare-fun res!1540586 () Bool)

(declare-fun e!2351361 () Bool)

(assert (=> b!3805231 (=> (not res!1540586) (not e!2351361))))

(assert (=> b!3805231 (= res!1540586 (<= (- (height!1796 (left!31229 (c!661414 totalInput!335))) (height!1796 (right!31559 (c!661414 totalInput!335)))) 1))))

(declare-fun b!3805232 () Bool)

(declare-fun res!1540585 () Bool)

(assert (=> b!3805232 (=> (not res!1540585) (not e!2351361))))

(assert (=> b!3805232 (= res!1540585 (not (isEmpty!23774 (left!31229 (c!661414 totalInput!335)))))))

(declare-fun b!3805233 () Bool)

(declare-fun res!1540583 () Bool)

(assert (=> b!3805233 (=> (not res!1540583) (not e!2351361))))

(assert (=> b!3805233 (= res!1540583 (isBalanced!3578 (right!31559 (c!661414 totalInput!335))))))

(declare-fun b!3805234 () Bool)

(assert (=> b!3805234 (= e!2351361 (not (isEmpty!23774 (right!31559 (c!661414 totalInput!335)))))))

(declare-fun b!3805235 () Bool)

(declare-fun res!1540588 () Bool)

(assert (=> b!3805235 (=> (not res!1540588) (not e!2351361))))

(assert (=> b!3805235 (= res!1540588 (isBalanced!3578 (left!31229 (c!661414 totalInput!335))))))

(declare-fun d!1122668 () Bool)

(declare-fun res!1540587 () Bool)

(declare-fun e!2351360 () Bool)

(assert (=> d!1122668 (=> res!1540587 e!2351360)))

(assert (=> d!1122668 (= res!1540587 (not ((_ is Node!12398) (c!661414 totalInput!335))))))

(assert (=> d!1122668 (= (isBalanced!3578 (c!661414 totalInput!335)) e!2351360)))

(declare-fun b!3805236 () Bool)

(assert (=> b!3805236 (= e!2351360 e!2351361)))

(declare-fun res!1540584 () Bool)

(assert (=> b!3805236 (=> (not res!1540584) (not e!2351361))))

(assert (=> b!3805236 (= res!1540584 (<= (- 1) (- (height!1796 (left!31229 (c!661414 totalInput!335))) (height!1796 (right!31559 (c!661414 totalInput!335))))))))

(assert (= (and d!1122668 (not res!1540587)) b!3805236))

(assert (= (and b!3805236 res!1540584) b!3805231))

(assert (= (and b!3805231 res!1540586) b!3805235))

(assert (= (and b!3805235 res!1540588) b!3805233))

(assert (= (and b!3805233 res!1540583) b!3805232))

(assert (= (and b!3805232 res!1540585) b!3805234))

(declare-fun m!4337303 () Bool)

(assert (=> b!3805235 m!4337303))

(declare-fun m!4337305 () Bool)

(assert (=> b!3805234 m!4337305))

(assert (=> b!3805231 m!4337149))

(assert (=> b!3805231 m!4337151))

(declare-fun m!4337307 () Bool)

(assert (=> b!3805233 m!4337307))

(assert (=> b!3805236 m!4337149))

(assert (=> b!3805236 m!4337151))

(declare-fun m!4337309 () Bool)

(assert (=> b!3805232 m!4337309))

(assert (=> d!1122040 d!1122668))

(declare-fun d!1122670 () Bool)

(declare-fun lt!1319581 () Int)

(assert (=> d!1122670 (= lt!1319581 (size!30391 (list!14991 (_1!22881 lt!1318899))))))

(assert (=> d!1122670 (= lt!1319581 (size!30396 (c!661415 (_1!22881 lt!1318899))))))

(assert (=> d!1122670 (= (size!30390 (_1!22881 lt!1318899)) lt!1319581)))

(declare-fun bs!579781 () Bool)

(assert (= bs!579781 d!1122670))

(assert (=> bs!579781 m!4334859))

(assert (=> bs!579781 m!4334859))

(declare-fun m!4337311 () Bool)

(assert (=> bs!579781 m!4337311))

(declare-fun m!4337313 () Bool)

(assert (=> bs!579781 m!4337313))

(assert (=> d!1121936 d!1122670))

(assert (=> d!1121936 d!1121962))

(declare-fun d!1122672 () Bool)

(assert (=> d!1122672 (= (++!10134 (++!10134 lt!1318801 lt!1318784) lt!1318802) (++!10134 lt!1318801 (++!10134 lt!1318784 lt!1318802)))))

(assert (=> d!1122672 true))

(declare-fun _$52!2168 () Unit!58104)

(assert (=> d!1122672 (= (choose!22429 lt!1318801 lt!1318784 lt!1318802) _$52!2168)))

(declare-fun bs!579782 () Bool)

(assert (= bs!579782 d!1122672))

(assert (=> bs!579782 m!4334387))

(assert (=> bs!579782 m!4334387))

(assert (=> bs!579782 m!4334389))

(assert (=> bs!579782 m!4334405))

(assert (=> bs!579782 m!4334405))

(assert (=> bs!579782 m!4334417))

(assert (=> d!1121984 d!1122672))

(assert (=> d!1121984 d!1121954))

(assert (=> d!1121984 d!1121942))

(assert (=> d!1121984 d!1121976))

(assert (=> d!1121984 d!1121980))

(declare-fun b!3805255 () Bool)

(declare-fun e!2351385 () Bool)

(declare-fun e!2351380 () Bool)

(assert (=> b!3805255 (= e!2351385 e!2351380)))

(declare-fun res!1540610 () Bool)

(assert (=> b!3805255 (=> (not res!1540610) (not e!2351380))))

(declare-fun appendAssoc!276 (List!40489 List!40489 List!40489) Bool)

(assert (=> b!3805255 (= res!1540610 (appendAssoc!276 (list!14995 (left!31230 (right!31560 (c!661415 acc!335)))) (list!14995 (right!31560 (right!31560 (c!661415 acc!335)))) (list!14995 (c!661415 (_1!22881 lt!1318791)))))))

(declare-fun b!3805256 () Bool)

(declare-fun e!2351387 () Bool)

(declare-fun e!2351384 () Bool)

(assert (=> b!3805256 (= e!2351387 e!2351384)))

(declare-fun res!1540613 () Bool)

(assert (=> b!3805256 (=> res!1540613 e!2351384)))

(assert (=> b!3805256 (= res!1540613 (not ((_ is Node!12399) (left!31230 (c!661415 (_1!22881 lt!1318791))))))))

(declare-fun b!3805257 () Bool)

(declare-fun e!2351388 () Bool)

(assert (=> b!3805257 (= e!2351388 (appendAssoc!276 (++!10134 (list!14995 (c!661415 acc!335)) (list!14995 (left!31230 (left!31230 (c!661415 (_1!22881 lt!1318791)))))) (list!14995 (right!31560 (left!31230 (c!661415 (_1!22881 lt!1318791))))) (list!14995 (right!31560 (c!661415 (_1!22881 lt!1318791))))))))

(declare-fun d!1122674 () Bool)

(declare-fun e!2351381 () Bool)

(assert (=> d!1122674 e!2351381))

(declare-fun res!1540609 () Bool)

(assert (=> d!1122674 (=> (not res!1540609) (not e!2351381))))

(declare-fun e!2351386 () Bool)

(assert (=> d!1122674 (= res!1540609 e!2351386)))

(declare-fun res!1540607 () Bool)

(assert (=> d!1122674 (=> res!1540607 e!2351386)))

(assert (=> d!1122674 (= res!1540607 (not ((_ is Node!12399) (c!661415 acc!335))))))

(assert (=> d!1122674 (= (appendAssocInst!859 (c!661415 acc!335) (c!661415 (_1!22881 lt!1318791))) true)))

(declare-fun b!3805258 () Bool)

(declare-fun e!2351382 () Bool)

(assert (=> b!3805258 (= e!2351382 e!2351387)))

(declare-fun res!1540614 () Bool)

(assert (=> b!3805258 (=> (not res!1540614) (not e!2351387))))

(assert (=> b!3805258 (= res!1540614 (appendAssoc!276 (list!14995 (c!661415 acc!335)) (list!14995 (left!31230 (c!661415 (_1!22881 lt!1318791)))) (list!14995 (right!31560 (c!661415 (_1!22881 lt!1318791))))))))

(declare-fun b!3805259 () Bool)

(declare-fun e!2351383 () Bool)

(assert (=> b!3805259 (= e!2351383 e!2351385)))

(declare-fun res!1540615 () Bool)

(assert (=> b!3805259 (=> res!1540615 e!2351385)))

(assert (=> b!3805259 (= res!1540615 (not ((_ is Node!12399) (right!31560 (c!661415 acc!335)))))))

(declare-fun b!3805260 () Bool)

(assert (=> b!3805260 (= e!2351381 e!2351382)))

(declare-fun res!1540611 () Bool)

(assert (=> b!3805260 (=> res!1540611 e!2351382)))

(assert (=> b!3805260 (= res!1540611 (not ((_ is Node!12399) (c!661415 (_1!22881 lt!1318791)))))))

(declare-fun b!3805261 () Bool)

(assert (=> b!3805261 (= e!2351386 e!2351383)))

(declare-fun res!1540608 () Bool)

(assert (=> b!3805261 (=> (not res!1540608) (not e!2351383))))

(assert (=> b!3805261 (= res!1540608 (appendAssoc!276 (list!14995 (left!31230 (c!661415 acc!335))) (list!14995 (right!31560 (c!661415 acc!335))) (list!14995 (c!661415 (_1!22881 lt!1318791)))))))

(declare-fun b!3805262 () Bool)

(assert (=> b!3805262 (= e!2351380 (appendAssoc!276 (list!14995 (left!31230 (c!661415 acc!335))) (list!14995 (left!31230 (right!31560 (c!661415 acc!335)))) (++!10134 (list!14995 (right!31560 (right!31560 (c!661415 acc!335)))) (list!14995 (c!661415 (_1!22881 lt!1318791))))))))

(declare-fun b!3805263 () Bool)

(assert (=> b!3805263 (= e!2351384 e!2351388)))

(declare-fun res!1540612 () Bool)

(assert (=> b!3805263 (=> (not res!1540612) (not e!2351388))))

(assert (=> b!3805263 (= res!1540612 (appendAssoc!276 (list!14995 (c!661415 acc!335)) (list!14995 (left!31230 (left!31230 (c!661415 (_1!22881 lt!1318791))))) (list!14995 (right!31560 (left!31230 (c!661415 (_1!22881 lt!1318791)))))))))

(assert (= (and d!1122674 (not res!1540607)) b!3805261))

(assert (= (and b!3805261 res!1540608) b!3805259))

(assert (= (and b!3805259 (not res!1540615)) b!3805255))

(assert (= (and b!3805255 res!1540610) b!3805262))

(assert (= (and d!1122674 res!1540609) b!3805260))

(assert (= (and b!3805260 (not res!1540611)) b!3805258))

(assert (= (and b!3805258 res!1540614) b!3805256))

(assert (= (and b!3805256 (not res!1540613)) b!3805263))

(assert (= (and b!3805263 res!1540612) b!3805257))

(assert (=> b!3805257 m!4335113))

(declare-fun m!4337315 () Bool)

(assert (=> b!3805257 m!4337315))

(declare-fun m!4337317 () Bool)

(assert (=> b!3805257 m!4337317))

(assert (=> b!3805257 m!4335113))

(declare-fun m!4337319 () Bool)

(assert (=> b!3805257 m!4337319))

(assert (=> b!3805257 m!4337317))

(declare-fun m!4337321 () Bool)

(assert (=> b!3805257 m!4337321))

(assert (=> b!3805257 m!4337319))

(declare-fun m!4337323 () Bool)

(assert (=> b!3805257 m!4337323))

(assert (=> b!3805257 m!4337321))

(assert (=> b!3805257 m!4337315))

(assert (=> b!3805261 m!4337035))

(assert (=> b!3805261 m!4337023))

(assert (=> b!3805261 m!4336519))

(assert (=> b!3805261 m!4337035))

(assert (=> b!3805261 m!4337023))

(assert (=> b!3805261 m!4336519))

(declare-fun m!4337325 () Bool)

(assert (=> b!3805261 m!4337325))

(assert (=> b!3805263 m!4335113))

(assert (=> b!3805263 m!4337315))

(assert (=> b!3805263 m!4337321))

(assert (=> b!3805263 m!4335113))

(assert (=> b!3805263 m!4337315))

(assert (=> b!3805263 m!4337321))

(declare-fun m!4337327 () Bool)

(assert (=> b!3805263 m!4337327))

(assert (=> b!3805258 m!4335113))

(declare-fun m!4337329 () Bool)

(assert (=> b!3805258 m!4337329))

(assert (=> b!3805258 m!4337319))

(assert (=> b!3805258 m!4335113))

(assert (=> b!3805258 m!4337329))

(assert (=> b!3805258 m!4337319))

(declare-fun m!4337331 () Bool)

(assert (=> b!3805258 m!4337331))

(declare-fun m!4337333 () Bool)

(assert (=> b!3805262 m!4337333))

(declare-fun m!4337335 () Bool)

(assert (=> b!3805262 m!4337335))

(assert (=> b!3805262 m!4337035))

(assert (=> b!3805262 m!4336519))

(assert (=> b!3805262 m!4337333))

(assert (=> b!3805262 m!4336519))

(declare-fun m!4337337 () Bool)

(assert (=> b!3805262 m!4337337))

(assert (=> b!3805262 m!4337035))

(assert (=> b!3805262 m!4337335))

(assert (=> b!3805262 m!4337337))

(declare-fun m!4337339 () Bool)

(assert (=> b!3805262 m!4337339))

(assert (=> b!3805255 m!4337335))

(assert (=> b!3805255 m!4337333))

(assert (=> b!3805255 m!4336519))

(assert (=> b!3805255 m!4337335))

(assert (=> b!3805255 m!4337333))

(assert (=> b!3805255 m!4336519))

(declare-fun m!4337341 () Bool)

(assert (=> b!3805255 m!4337341))

(assert (=> d!1121850 d!1122674))

(assert (=> d!1121850 d!1122416))

(declare-fun d!1122676 () Bool)

(declare-fun c!661889 () Bool)

(assert (=> d!1122676 (= c!661889 ((_ is Nil!40363) lt!1318913))))

(declare-fun e!2351389 () (InoxSet C!22420))

(assert (=> d!1122676 (= (content!5956 lt!1318913) e!2351389)))

(declare-fun b!3805264 () Bool)

(assert (=> b!3805264 (= e!2351389 ((as const (Array C!22420 Bool)) false))))

(declare-fun b!3805265 () Bool)

(assert (=> b!3805265 (= e!2351389 ((_ map or) (store ((as const (Array C!22420 Bool)) false) (h!45783 lt!1318913) true) (content!5956 (t!307216 lt!1318913))))))

(assert (= (and d!1122676 c!661889) b!3805264))

(assert (= (and d!1122676 (not c!661889)) b!3805265))

(declare-fun m!4337343 () Bool)

(assert (=> b!3805265 m!4337343))

(declare-fun m!4337345 () Bool)

(assert (=> b!3805265 m!4337345))

(assert (=> d!1121952 d!1122676))

(declare-fun d!1122678 () Bool)

(declare-fun c!661890 () Bool)

(assert (=> d!1122678 (= c!661890 ((_ is Nil!40363) (++!10133 lt!1318796 lt!1318787)))))

(declare-fun e!2351390 () (InoxSet C!22420))

(assert (=> d!1122678 (= (content!5956 (++!10133 lt!1318796 lt!1318787)) e!2351390)))

(declare-fun b!3805266 () Bool)

(assert (=> b!3805266 (= e!2351390 ((as const (Array C!22420 Bool)) false))))

(declare-fun b!3805267 () Bool)

(assert (=> b!3805267 (= e!2351390 ((_ map or) (store ((as const (Array C!22420 Bool)) false) (h!45783 (++!10133 lt!1318796 lt!1318787)) true) (content!5956 (t!307216 (++!10133 lt!1318796 lt!1318787)))))))

(assert (= (and d!1122678 c!661890) b!3805266))

(assert (= (and d!1122678 (not c!661890)) b!3805267))

(declare-fun m!4337347 () Bool)

(assert (=> b!3805267 m!4337347))

(assert (=> b!3805267 m!4337255))

(assert (=> d!1121952 d!1122678))

(assert (=> d!1121952 d!1122610))

(declare-fun d!1122680 () Bool)

(assert (=> d!1122680 (= (inv!54342 (xs!15664 (c!661414 totalInput!335))) (<= (size!30392 (innerList!12458 (xs!15664 (c!661414 totalInput!335)))) 2147483647))))

(declare-fun bs!579783 () Bool)

(assert (= bs!579783 d!1122680))

(declare-fun m!4337349 () Bool)

(assert (=> bs!579783 m!4337349))

(assert (=> b!3803802 d!1122680))

(declare-fun d!1122682 () Bool)

(declare-fun res!1540620 () Bool)

(declare-fun e!2351393 () Bool)

(assert (=> d!1122682 (=> (not res!1540620) (not e!2351393))))

(assert (=> d!1122682 (= res!1540620 (<= (size!30391 (list!14999 (xs!15665 (c!661415 acc!335)))) 512))))

(assert (=> d!1122682 (= (inv!54340 (c!661415 acc!335)) e!2351393)))

(declare-fun b!3805272 () Bool)

(declare-fun res!1540621 () Bool)

(assert (=> b!3805272 (=> (not res!1540621) (not e!2351393))))

(assert (=> b!3805272 (= res!1540621 (= (csize!25029 (c!661415 acc!335)) (size!30391 (list!14999 (xs!15665 (c!661415 acc!335))))))))

(declare-fun b!3805273 () Bool)

(assert (=> b!3805273 (= e!2351393 (and (> (csize!25029 (c!661415 acc!335)) 0) (<= (csize!25029 (c!661415 acc!335)) 512)))))

(assert (= (and d!1122682 res!1540620) b!3805272))

(assert (= (and b!3805272 res!1540621) b!3805273))

(assert (=> d!1122682 m!4336995))

(assert (=> d!1122682 m!4336995))

(declare-fun m!4337351 () Bool)

(assert (=> d!1122682 m!4337351))

(assert (=> b!3805272 m!4336995))

(assert (=> b!3805272 m!4336995))

(assert (=> b!3805272 m!4337351))

(assert (=> b!3803717 d!1122682))

(assert (=> b!3803758 d!1122636))

(assert (=> b!3803758 d!1122356))

(assert (=> b!3803758 d!1121994))

(assert (=> b!3803758 d!1122362))

(assert (=> b!3803758 d!1122640))

(declare-fun d!1122684 () Bool)

(declare-fun lt!1319582 () Int)

(assert (=> d!1122684 (= lt!1319582 (size!30392 (list!14992 (_2!22881 lt!1318963))))))

(assert (=> d!1122684 (= lt!1319582 (size!30395 (c!661414 (_2!22881 lt!1318963))))))

(assert (=> d!1122684 (= (size!30389 (_2!22881 lt!1318963)) lt!1319582)))

(declare-fun bs!579784 () Bool)

(assert (= bs!579784 d!1122684))

(assert (=> bs!579784 m!4335045))

(assert (=> bs!579784 m!4335045))

(declare-fun m!4337353 () Bool)

(assert (=> bs!579784 m!4337353))

(declare-fun m!4337355 () Bool)

(assert (=> bs!579784 m!4337355))

(assert (=> b!3803672 d!1122684))

(declare-fun d!1122686 () Bool)

(declare-fun lt!1319583 () Int)

(assert (=> d!1122686 (= lt!1319583 (size!30392 (list!14992 (_2!22882 (v!38847 lt!1318792)))))))

(assert (=> d!1122686 (= lt!1319583 (size!30395 (c!661414 (_2!22882 (v!38847 lt!1318792)))))))

(assert (=> d!1122686 (= (size!30389 (_2!22882 (v!38847 lt!1318792))) lt!1319583)))

(declare-fun bs!579785 () Bool)

(assert (= bs!579785 d!1122686))

(assert (=> bs!579785 m!4334407))

(assert (=> bs!579785 m!4334407))

(assert (=> bs!579785 m!4336735))

(declare-fun m!4337357 () Bool)

(assert (=> bs!579785 m!4337357))

(assert (=> b!3803672 d!1122686))

(declare-fun b!3805274 () Bool)

(declare-fun e!2351395 () Bool)

(declare-fun e!2351399 () Bool)

(assert (=> b!3805274 (= e!2351395 e!2351399)))

(declare-fun res!1540624 () Bool)

(assert (=> b!3805274 (=> (not res!1540624) (not e!2351399))))

(declare-fun lt!1319590 () Option!8624)

(assert (=> b!3805274 (= res!1540624 (= (_1!22882 (get!13382 lt!1319590)) (_1!22886 (get!13383 (maxPrefix!3113 thiss!11876 (t!307217 rules!1265) (list!14992 input!678))))))))

(declare-fun b!3805275 () Bool)

(declare-fun e!2351394 () Bool)

(assert (=> b!3805275 (= e!2351394 e!2351395)))

(declare-fun res!1540623 () Bool)

(assert (=> b!3805275 (=> res!1540623 e!2351395)))

(assert (=> b!3805275 (= res!1540623 (not (isDefined!6786 lt!1319590)))))

(declare-fun b!3805276 () Bool)

(declare-fun e!2351397 () Option!8624)

(declare-fun call!279360 () Option!8624)

(assert (=> b!3805276 (= e!2351397 call!279360)))

(declare-fun d!1122688 () Bool)

(assert (=> d!1122688 e!2351394))

(declare-fun res!1540627 () Bool)

(assert (=> d!1122688 (=> (not res!1540627) (not e!2351394))))

(assert (=> d!1122688 (= res!1540627 (= (isDefined!6786 lt!1319590) (isDefined!6787 (maxPrefixZipper!545 thiss!11876 (t!307217 rules!1265) (list!14992 input!678)))))))

(assert (=> d!1122688 (= lt!1319590 e!2351397)))

(declare-fun c!661891 () Bool)

(assert (=> d!1122688 (= c!661891 (and ((_ is Cons!40364) (t!307217 rules!1265)) ((_ is Nil!40364) (t!307217 (t!307217 rules!1265)))))))

(declare-fun lt!1319587 () Unit!58104)

(declare-fun lt!1319588 () Unit!58104)

(assert (=> d!1122688 (= lt!1319587 lt!1319588)))

(declare-fun lt!1319589 () List!40487)

(declare-fun lt!1319584 () List!40487)

(assert (=> d!1122688 (isPrefix!3321 lt!1319589 lt!1319584)))

(assert (=> d!1122688 (= lt!1319588 (lemmaIsPrefixRefl!2106 lt!1319589 lt!1319584))))

(assert (=> d!1122688 (= lt!1319584 (list!14992 input!678))))

(assert (=> d!1122688 (= lt!1319589 (list!14992 input!678))))

(assert (=> d!1122688 (rulesValidInductive!2180 thiss!11876 (t!307217 rules!1265))))

(assert (=> d!1122688 (= (maxPrefixZipperSequenceV2!601 thiss!11876 (t!307217 rules!1265) input!678 totalInput!335) lt!1319590)))

(declare-fun b!3805277 () Bool)

(assert (=> b!3805277 (= e!2351399 (= (list!14992 (_2!22882 (get!13382 lt!1319590))) (_2!22886 (get!13383 (maxPrefix!3113 thiss!11876 (t!307217 rules!1265) (list!14992 input!678))))))))

(declare-fun e!2351398 () Bool)

(declare-fun b!3805278 () Bool)

(assert (=> b!3805278 (= e!2351398 (= (list!14992 (_2!22882 (get!13382 lt!1319590))) (_2!22886 (get!13383 (maxPrefixZipper!545 thiss!11876 (t!307217 rules!1265) (list!14992 input!678))))))))

(declare-fun b!3805279 () Bool)

(declare-fun e!2351396 () Bool)

(assert (=> b!3805279 (= e!2351396 e!2351398)))

(declare-fun res!1540622 () Bool)

(assert (=> b!3805279 (=> (not res!1540622) (not e!2351398))))

(assert (=> b!3805279 (= res!1540622 (= (_1!22882 (get!13382 lt!1319590)) (_1!22886 (get!13383 (maxPrefixZipper!545 thiss!11876 (t!307217 rules!1265) (list!14992 input!678))))))))

(declare-fun b!3805280 () Bool)

(declare-fun res!1540626 () Bool)

(assert (=> b!3805280 (=> (not res!1540626) (not e!2351394))))

(assert (=> b!3805280 (= res!1540626 e!2351396)))

(declare-fun res!1540625 () Bool)

(assert (=> b!3805280 (=> res!1540625 e!2351396)))

(assert (=> b!3805280 (= res!1540625 (not (isDefined!6786 lt!1319590)))))

(declare-fun bm!279355 () Bool)

(assert (=> bm!279355 (= call!279360 (maxPrefixOneRuleZipperSequenceV2!239 thiss!11876 (h!45784 (t!307217 rules!1265)) input!678 totalInput!335))))

(declare-fun b!3805281 () Bool)

(declare-fun lt!1319586 () Option!8624)

(declare-fun lt!1319585 () Option!8624)

(assert (=> b!3805281 (= e!2351397 (ite (and ((_ is None!8623) lt!1319586) ((_ is None!8623) lt!1319585)) None!8623 (ite ((_ is None!8623) lt!1319585) lt!1319586 (ite ((_ is None!8623) lt!1319586) lt!1319585 (ite (>= (size!30384 (_1!22882 (v!38847 lt!1319586))) (size!30384 (_1!22882 (v!38847 lt!1319585)))) lt!1319586 lt!1319585)))))))

(assert (=> b!3805281 (= lt!1319586 call!279360)))

(assert (=> b!3805281 (= lt!1319585 (maxPrefixZipperSequenceV2!601 thiss!11876 (t!307217 (t!307217 rules!1265)) input!678 totalInput!335))))

(assert (= (and d!1122688 c!661891) b!3805276))

(assert (= (and d!1122688 (not c!661891)) b!3805281))

(assert (= (or b!3805276 b!3805281) bm!279355))

(assert (= (and d!1122688 res!1540627) b!3805280))

(assert (= (and b!3805280 (not res!1540625)) b!3805279))

(assert (= (and b!3805279 res!1540622) b!3805278))

(assert (= (and b!3805280 res!1540626) b!3805275))

(assert (= (and b!3805275 (not res!1540623)) b!3805274))

(assert (= (and b!3805274 res!1540624) b!3805277))

(declare-fun m!4337359 () Bool)

(assert (=> b!3805275 m!4337359))

(assert (=> b!3805280 m!4337359))

(assert (=> d!1122688 m!4334435))

(assert (=> d!1122688 m!4336195))

(declare-fun m!4337361 () Bool)

(assert (=> d!1122688 m!4337361))

(declare-fun m!4337363 () Bool)

(assert (=> d!1122688 m!4337363))

(declare-fun m!4337365 () Bool)

(assert (=> d!1122688 m!4337365))

(assert (=> d!1122688 m!4334435))

(assert (=> d!1122688 m!4336195))

(assert (=> d!1122688 m!4337359))

(declare-fun m!4337367 () Bool)

(assert (=> d!1122688 m!4337367))

(declare-fun m!4337369 () Bool)

(assert (=> b!3805278 m!4337369))

(assert (=> b!3805278 m!4334435))

(declare-fun m!4337371 () Bool)

(assert (=> b!3805278 m!4337371))

(assert (=> b!3805278 m!4336195))

(declare-fun m!4337373 () Bool)

(assert (=> b!3805278 m!4337373))

(assert (=> b!3805278 m!4334435))

(assert (=> b!3805278 m!4336195))

(declare-fun m!4337375 () Bool)

(assert (=> b!3805281 m!4337375))

(assert (=> b!3805279 m!4337369))

(assert (=> b!3805279 m!4334435))

(assert (=> b!3805279 m!4334435))

(assert (=> b!3805279 m!4336195))

(assert (=> b!3805279 m!4336195))

(assert (=> b!3805279 m!4337373))

(declare-fun m!4337377 () Bool)

(assert (=> bm!279355 m!4337377))

(assert (=> b!3805274 m!4337369))

(assert (=> b!3805274 m!4334435))

(assert (=> b!3805274 m!4334435))

(assert (=> b!3805274 m!4337193))

(assert (=> b!3805274 m!4337193))

(declare-fun m!4337379 () Bool)

(assert (=> b!3805274 m!4337379))

(assert (=> b!3805277 m!4337369))

(assert (=> b!3805277 m!4334435))

(assert (=> b!3805277 m!4337193))

(assert (=> b!3805277 m!4337379))

(assert (=> b!3805277 m!4337371))

(assert (=> b!3805277 m!4334435))

(assert (=> b!3805277 m!4337193))

(assert (=> b!3803761 d!1122688))

(assert (=> d!1121962 d!1122502))

(declare-fun d!1122690 () Bool)

(assert (=> d!1122690 true))

(declare-fun lt!1319593 () Bool)

(declare-fun lambda!125687 () Int)

(declare-fun forall!8257 (List!40488 Int) Bool)

(assert (=> d!1122690 (= lt!1319593 (forall!8257 rules!1265 lambda!125687))))

(declare-fun e!2351405 () Bool)

(assert (=> d!1122690 (= lt!1319593 e!2351405)))

(declare-fun res!1540633 () Bool)

(assert (=> d!1122690 (=> res!1540633 e!2351405)))

(assert (=> d!1122690 (= res!1540633 (not ((_ is Cons!40364) rules!1265)))))

(assert (=> d!1122690 (= (rulesValidInductive!2180 thiss!11876 rules!1265) lt!1319593)))

(declare-fun b!3805286 () Bool)

(declare-fun e!2351404 () Bool)

(assert (=> b!3805286 (= e!2351405 e!2351404)))

(declare-fun res!1540632 () Bool)

(assert (=> b!3805286 (=> (not res!1540632) (not e!2351404))))

(assert (=> b!3805286 (= res!1540632 (ruleValid!2178 thiss!11876 (h!45784 rules!1265)))))

(declare-fun b!3805287 () Bool)

(assert (=> b!3805287 (= e!2351404 (rulesValidInductive!2180 thiss!11876 (t!307217 rules!1265)))))

(assert (= (and d!1122690 (not res!1540633)) b!3805286))

(assert (= (and b!3805286 res!1540632) b!3805287))

(declare-fun m!4337381 () Bool)

(assert (=> d!1122690 m!4337381))

(assert (=> b!3805286 m!4337109))

(assert (=> b!3805287 m!4337363))

(assert (=> d!1121962 d!1122690))

(assert (=> d!1121962 d!1122356))

(declare-fun d!1122692 () Bool)

(declare-fun e!2351414 () Bool)

(assert (=> d!1122692 e!2351414))

(declare-fun res!1540643 () Bool)

(assert (=> d!1122692 (=> res!1540643 e!2351414)))

(declare-fun lt!1319596 () Bool)

(assert (=> d!1122692 (= res!1540643 (not lt!1319596))))

(declare-fun e!2351413 () Bool)

(assert (=> d!1122692 (= lt!1319596 e!2351413)))

(declare-fun res!1540642 () Bool)

(assert (=> d!1122692 (=> res!1540642 e!2351413)))

(assert (=> d!1122692 (= res!1540642 ((_ is Nil!40363) lt!1318953))))

(assert (=> d!1122692 (= (isPrefix!3321 lt!1318953 lt!1318952) lt!1319596)))

(declare-fun b!3805298 () Bool)

(declare-fun e!2351412 () Bool)

(assert (=> b!3805298 (= e!2351413 e!2351412)))

(declare-fun res!1540644 () Bool)

(assert (=> b!3805298 (=> (not res!1540644) (not e!2351412))))

(assert (=> b!3805298 (= res!1540644 (not ((_ is Nil!40363) lt!1318952)))))

(declare-fun b!3805299 () Bool)

(declare-fun res!1540645 () Bool)

(assert (=> b!3805299 (=> (not res!1540645) (not e!2351412))))

(declare-fun head!8060 (List!40487) C!22420)

(assert (=> b!3805299 (= res!1540645 (= (head!8060 lt!1318953) (head!8060 lt!1318952)))))

(declare-fun b!3805301 () Bool)

(assert (=> b!3805301 (= e!2351414 (>= (size!30392 lt!1318952) (size!30392 lt!1318953)))))

(declare-fun b!3805300 () Bool)

(declare-fun tail!5787 (List!40487) List!40487)

(assert (=> b!3805300 (= e!2351412 (isPrefix!3321 (tail!5787 lt!1318953) (tail!5787 lt!1318952)))))

(assert (= (and d!1122692 (not res!1540642)) b!3805298))

(assert (= (and b!3805298 res!1540644) b!3805299))

(assert (= (and b!3805299 res!1540645) b!3805300))

(assert (= (and d!1122692 (not res!1540643)) b!3805301))

(declare-fun m!4337383 () Bool)

(assert (=> b!3805299 m!4337383))

(declare-fun m!4337385 () Bool)

(assert (=> b!3805299 m!4337385))

(declare-fun m!4337387 () Bool)

(assert (=> b!3805301 m!4337387))

(declare-fun m!4337389 () Bool)

(assert (=> b!3805301 m!4337389))

(declare-fun m!4337391 () Bool)

(assert (=> b!3805300 m!4337391))

(declare-fun m!4337393 () Bool)

(assert (=> b!3805300 m!4337393))

(assert (=> b!3805300 m!4337391))

(assert (=> b!3805300 m!4337393))

(declare-fun m!4337395 () Bool)

(assert (=> b!3805300 m!4337395))

(assert (=> d!1121962 d!1122692))

(assert (=> d!1121962 d!1121994))

(declare-fun d!1122694 () Bool)

(assert (=> d!1122694 (isPrefix!3321 lt!1318953 lt!1318952)))

(declare-fun lt!1319599 () Unit!58104)

(declare-fun choose!22432 (List!40487 List!40487) Unit!58104)

(assert (=> d!1122694 (= lt!1319599 (choose!22432 lt!1318953 lt!1318952))))

(assert (=> d!1122694 (= (lemmaIsPrefixRefl!2106 lt!1318953 lt!1318952) lt!1319599)))

(declare-fun bs!579786 () Bool)

(assert (= bs!579786 d!1122694))

(assert (=> bs!579786 m!4335021))

(declare-fun m!4337397 () Bool)

(assert (=> bs!579786 m!4337397))

(assert (=> d!1121962 d!1122694))

(declare-fun d!1122696 () Bool)

(assert (=> d!1122696 (= (isDefined!6787 (maxPrefixZipper!545 thiss!11876 rules!1265 (list!14992 input!678))) (not (isEmpty!23776 (maxPrefixZipper!545 thiss!11876 rules!1265 (list!14992 input!678)))))))

(declare-fun bs!579787 () Bool)

(assert (= bs!579787 d!1122696))

(assert (=> bs!579787 m!4335005))

(declare-fun m!4337399 () Bool)

(assert (=> bs!579787 m!4337399))

(assert (=> d!1121962 d!1122696))

(declare-fun d!1122698 () Bool)

(declare-fun c!661892 () Bool)

(assert (=> d!1122698 (= c!661892 ((_ is Node!12399) (left!31230 (c!661415 acc!335))))))

(declare-fun e!2351415 () Bool)

(assert (=> d!1122698 (= (inv!54327 (left!31230 (c!661415 acc!335))) e!2351415)))

(declare-fun b!3805302 () Bool)

(assert (=> b!3805302 (= e!2351415 (inv!54339 (left!31230 (c!661415 acc!335))))))

(declare-fun b!3805303 () Bool)

(declare-fun e!2351416 () Bool)

(assert (=> b!3805303 (= e!2351415 e!2351416)))

(declare-fun res!1540646 () Bool)

(assert (=> b!3805303 (= res!1540646 (not ((_ is Leaf!19203) (left!31230 (c!661415 acc!335)))))))

(assert (=> b!3805303 (=> res!1540646 e!2351416)))

(declare-fun b!3805304 () Bool)

(assert (=> b!3805304 (= e!2351416 (inv!54340 (left!31230 (c!661415 acc!335))))))

(assert (= (and d!1122698 c!661892) b!3805302))

(assert (= (and d!1122698 (not c!661892)) b!3805303))

(assert (= (and b!3805303 (not res!1540646)) b!3805304))

(declare-fun m!4337401 () Bool)

(assert (=> b!3805302 m!4337401))

(declare-fun m!4337403 () Bool)

(assert (=> b!3805304 m!4337403))

(assert (=> b!3803770 d!1122698))

(declare-fun d!1122700 () Bool)

(declare-fun c!661893 () Bool)

(assert (=> d!1122700 (= c!661893 ((_ is Node!12399) (right!31560 (c!661415 acc!335))))))

(declare-fun e!2351417 () Bool)

(assert (=> d!1122700 (= (inv!54327 (right!31560 (c!661415 acc!335))) e!2351417)))

(declare-fun b!3805305 () Bool)

(assert (=> b!3805305 (= e!2351417 (inv!54339 (right!31560 (c!661415 acc!335))))))

(declare-fun b!3805306 () Bool)

(declare-fun e!2351418 () Bool)

(assert (=> b!3805306 (= e!2351417 e!2351418)))

(declare-fun res!1540647 () Bool)

(assert (=> b!3805306 (= res!1540647 (not ((_ is Leaf!19203) (right!31560 (c!661415 acc!335)))))))

(assert (=> b!3805306 (=> res!1540647 e!2351418)))

(declare-fun b!3805307 () Bool)

(assert (=> b!3805307 (= e!2351418 (inv!54340 (right!31560 (c!661415 acc!335))))))

(assert (= (and d!1122700 c!661893) b!3805305))

(assert (= (and d!1122700 (not c!661893)) b!3805306))

(assert (= (and b!3805306 (not res!1540647)) b!3805307))

(declare-fun m!4337405 () Bool)

(assert (=> b!3805305 m!4337405))

(declare-fun m!4337407 () Bool)

(assert (=> b!3805307 m!4337407))

(assert (=> b!3803770 d!1122700))

(declare-fun d!1122702 () Bool)

(assert (=> d!1122702 (= (list!14991 (_1!22881 lt!1318899)) (list!14995 (c!661415 (_1!22881 lt!1318899))))))

(declare-fun bs!579788 () Bool)

(assert (= bs!579788 d!1122702))

(declare-fun m!4337409 () Bool)

(assert (=> bs!579788 m!4337409))

(assert (=> b!3803516 d!1122702))

(assert (=> b!3803516 d!1122354))

(assert (=> b!3803516 d!1121994))

(declare-fun d!1122704 () Bool)

(assert (=> d!1122704 (= (inv!54328 (dynLambda!17442 (toChars!8455 (transformation!6212 (rule!9008 (_1!22882 (v!38847 lt!1318792))))) (value!197649 (_1!22882 (v!38847 lt!1318792))))) (isBalanced!3578 (c!661414 (dynLambda!17442 (toChars!8455 (transformation!6212 (rule!9008 (_1!22882 (v!38847 lt!1318792))))) (value!197649 (_1!22882 (v!38847 lt!1318792)))))))))

(declare-fun bs!579789 () Bool)

(assert (= bs!579789 d!1122704))

(declare-fun m!4337411 () Bool)

(assert (=> bs!579789 m!4337411))

(assert (=> tb!218177 d!1122704))

(declare-fun d!1122706 () Bool)

(declare-fun res!1540652 () Bool)

(declare-fun e!2351421 () Bool)

(assert (=> d!1122706 (=> (not res!1540652) (not e!2351421))))

(assert (=> d!1122706 (= res!1540652 (<= (size!30392 (list!15000 (xs!15664 (c!661414 input!678)))) 512))))

(assert (=> d!1122706 (= (inv!54338 (c!661414 input!678)) e!2351421)))

(declare-fun b!3805312 () Bool)

(declare-fun res!1540653 () Bool)

(assert (=> b!3805312 (=> (not res!1540653) (not e!2351421))))

(assert (=> b!3805312 (= res!1540653 (= (csize!25027 (c!661414 input!678)) (size!30392 (list!15000 (xs!15664 (c!661414 input!678))))))))

(declare-fun b!3805313 () Bool)

(assert (=> b!3805313 (= e!2351421 (and (> (csize!25027 (c!661414 input!678)) 0) (<= (csize!25027 (c!661414 input!678)) 512)))))

(assert (= (and d!1122706 res!1540652) b!3805312))

(assert (= (and b!3805312 res!1540653) b!3805313))

(assert (=> d!1122706 m!4337261))

(assert (=> d!1122706 m!4337261))

(declare-fun m!4337413 () Bool)

(assert (=> d!1122706 m!4337413))

(assert (=> b!3805312 m!4337261))

(assert (=> b!3805312 m!4337261))

(assert (=> b!3805312 m!4337413))

(assert (=> b!3803734 d!1122706))

(declare-fun d!1122708 () Bool)

(assert (=> d!1122708 (= (list!14991 lt!1318818) (list!14995 (c!661415 lt!1318818)))))

(declare-fun bs!579790 () Bool)

(assert (= bs!579790 d!1122708))

(declare-fun m!4337415 () Bool)

(assert (=> bs!579790 m!4337415))

(assert (=> b!3803336 d!1122708))

(declare-fun b!3805316 () Bool)

(declare-fun res!1540655 () Bool)

(declare-fun e!2351422 () Bool)

(assert (=> b!3805316 (=> (not res!1540655) (not e!2351422))))

(declare-fun lt!1319600 () List!40489)

(assert (=> b!3805316 (= res!1540655 (= (size!30391 lt!1319600) (+ (size!30391 (list!14991 acc!335)) (size!30391 (list!14991 (_1!22881 lt!1318791))))))))

(declare-fun d!1122710 () Bool)

(assert (=> d!1122710 e!2351422))

(declare-fun res!1540654 () Bool)

(assert (=> d!1122710 (=> (not res!1540654) (not e!2351422))))

(assert (=> d!1122710 (= res!1540654 (= (content!5955 lt!1319600) ((_ map or) (content!5955 (list!14991 acc!335)) (content!5955 (list!14991 (_1!22881 lt!1318791))))))))

(declare-fun e!2351423 () List!40489)

(assert (=> d!1122710 (= lt!1319600 e!2351423)))

(declare-fun c!661894 () Bool)

(assert (=> d!1122710 (= c!661894 ((_ is Nil!40365) (list!14991 acc!335)))))

(assert (=> d!1122710 (= (++!10134 (list!14991 acc!335) (list!14991 (_1!22881 lt!1318791))) lt!1319600)))

(declare-fun b!3805314 () Bool)

(assert (=> b!3805314 (= e!2351423 (list!14991 (_1!22881 lt!1318791)))))

(declare-fun b!3805315 () Bool)

(assert (=> b!3805315 (= e!2351423 (Cons!40365 (h!45785 (list!14991 acc!335)) (++!10134 (t!307218 (list!14991 acc!335)) (list!14991 (_1!22881 lt!1318791)))))))

(declare-fun b!3805317 () Bool)

(assert (=> b!3805317 (= e!2351422 (or (not (= (list!14991 (_1!22881 lt!1318791)) Nil!40365)) (= lt!1319600 (list!14991 acc!335))))))

(assert (= (and d!1122710 c!661894) b!3805314))

(assert (= (and d!1122710 (not c!661894)) b!3805315))

(assert (= (and d!1122710 res!1540654) b!3805316))

(assert (= (and b!3805316 res!1540655) b!3805317))

(declare-fun m!4337417 () Bool)

(assert (=> b!3805316 m!4337417))

(assert (=> b!3805316 m!4334441))

(assert (=> b!3805316 m!4337165))

(assert (=> b!3805316 m!4334521))

(declare-fun m!4337419 () Bool)

(assert (=> b!3805316 m!4337419))

(declare-fun m!4337421 () Bool)

(assert (=> d!1122710 m!4337421))

(assert (=> d!1122710 m!4334441))

(assert (=> d!1122710 m!4337169))

(assert (=> d!1122710 m!4334521))

(declare-fun m!4337423 () Bool)

(assert (=> d!1122710 m!4337423))

(assert (=> b!3805315 m!4334521))

(declare-fun m!4337425 () Bool)

(assert (=> b!3805315 m!4337425))

(assert (=> b!3803336 d!1122710))

(assert (=> b!3803336 d!1122008))

(declare-fun d!1122712 () Bool)

(assert (=> d!1122712 (= (list!14991 (_1!22881 lt!1318791)) (list!14995 (c!661415 (_1!22881 lt!1318791))))))

(declare-fun bs!579791 () Bool)

(assert (= bs!579791 d!1122712))

(assert (=> bs!579791 m!4336519))

(assert (=> b!3803336 d!1122712))

(declare-fun d!1122714 () Bool)

(declare-fun lt!1319601 () Bool)

(assert (=> d!1122714 (= lt!1319601 (isEmpty!23763 (list!14991 (_1!22881 lt!1318899))))))

(assert (=> d!1122714 (= lt!1319601 (isEmpty!23771 (c!661415 (_1!22881 lt!1318899))))))

(assert (=> d!1122714 (= (isEmpty!23766 (_1!22881 lt!1318899)) lt!1319601)))

(declare-fun bs!579792 () Bool)

(assert (= bs!579792 d!1122714))

(assert (=> bs!579792 m!4334859))

(assert (=> bs!579792 m!4334859))

(declare-fun m!4337427 () Bool)

(assert (=> bs!579792 m!4337427))

(declare-fun m!4337429 () Bool)

(assert (=> bs!579792 m!4337429))

(assert (=> b!3803512 d!1122714))

(declare-fun d!1122716 () Bool)

(declare-fun e!2351424 () Bool)

(assert (=> d!1122716 e!2351424))

(declare-fun res!1540656 () Bool)

(assert (=> d!1122716 (=> res!1540656 e!2351424)))

(declare-fun lt!1319602 () Bool)

(assert (=> d!1122716 (= res!1540656 (not lt!1319602))))

(assert (=> d!1122716 (= lt!1319602 (= lt!1318797 (drop!2121 (++!10133 lt!1318796 lt!1318797) (- (size!30392 (++!10133 lt!1318796 lt!1318797)) (size!30392 lt!1318797)))))))

(assert (=> d!1122716 (= (isSuffix!984 lt!1318797 (++!10133 lt!1318796 lt!1318797)) lt!1319602)))

(declare-fun b!3805318 () Bool)

(assert (=> b!3805318 (= e!2351424 (>= (size!30392 (++!10133 lt!1318796 lt!1318797)) (size!30392 lt!1318797)))))

(assert (= (and d!1122716 (not res!1540656)) b!3805318))

(assert (=> d!1122716 m!4334431))

(declare-fun m!4337431 () Bool)

(assert (=> d!1122716 m!4337431))

(assert (=> d!1122716 m!4335093))

(assert (=> d!1122716 m!4334431))

(declare-fun m!4337433 () Bool)

(assert (=> d!1122716 m!4337433))

(assert (=> b!3805318 m!4334431))

(assert (=> b!3805318 m!4337431))

(assert (=> b!3805318 m!4335093))

(assert (=> d!1122020 d!1122716))

(assert (=> d!1122020 d!1121990))

(declare-fun d!1122718 () Bool)

(assert (=> d!1122718 (isSuffix!984 lt!1318797 (++!10133 lt!1318796 lt!1318797))))

(assert (=> d!1122718 true))

(declare-fun _$47!914 () Unit!58104)

(assert (=> d!1122718 (= (choose!22430 lt!1318796 lt!1318797) _$47!914)))

(declare-fun bs!579793 () Bool)

(assert (= bs!579793 d!1122718))

(assert (=> bs!579793 m!4334431))

(assert (=> bs!579793 m!4334431))

(assert (=> bs!579793 m!4335149))

(assert (=> d!1122020 d!1122718))

(assert (=> b!3803754 d!1122640))

(assert (=> b!3803754 d!1122642))

(assert (=> b!3803754 d!1122638))

(assert (=> b!3803754 d!1121994))

(assert (=> b!3803659 d!1122366))

(assert (=> b!3803659 d!1122642))

(assert (=> b!3803659 d!1122638))

(assert (=> b!3803659 d!1121994))

(declare-fun d!1122720 () Bool)

(declare-fun lt!1319603 () Int)

(assert (=> d!1122720 (= lt!1319603 (size!30391 (list!14991 (_1!22881 lt!1318985))))))

(assert (=> d!1122720 (= lt!1319603 (size!30396 (c!661415 (_1!22881 lt!1318985))))))

(assert (=> d!1122720 (= (size!30390 (_1!22881 lt!1318985)) lt!1319603)))

(declare-fun bs!579794 () Bool)

(assert (= bs!579794 d!1122720))

(assert (=> bs!579794 m!4335173))

(assert (=> bs!579794 m!4335173))

(declare-fun m!4337435 () Bool)

(assert (=> bs!579794 m!4337435))

(declare-fun m!4337437 () Bool)

(assert (=> bs!579794 m!4337437))

(assert (=> d!1122024 d!1122720))

(declare-fun b!3805319 () Bool)

(declare-fun e!2351430 () Bool)

(declare-fun e!2351425 () Bool)

(assert (=> b!3805319 (= e!2351430 e!2351425)))

(declare-fun res!1540662 () Bool)

(assert (=> b!3805319 (=> (not res!1540662) (not e!2351425))))

(declare-fun lt!1319607 () Option!8624)

(assert (=> b!3805319 (= res!1540662 (= (_1!22882 (get!13382 lt!1319607)) (_1!22886 (get!13383 (maxPrefixZipper!545 thiss!11876 rules!1265 (list!14992 (_2!22882 (v!38847 lt!1318793))))))))))

(declare-fun call!279361 () Option!8624)

(declare-fun bm!279356 () Bool)

(assert (=> bm!279356 (= call!279361 (maxPrefixOneRuleZipperSequence!560 thiss!11876 (h!45784 rules!1265) (_2!22882 (v!38847 lt!1318793))))))

(declare-fun b!3805320 () Bool)

(declare-fun e!2351429 () Bool)

(declare-fun e!2351427 () Bool)

(assert (=> b!3805320 (= e!2351429 e!2351427)))

(declare-fun res!1540658 () Bool)

(assert (=> b!3805320 (=> res!1540658 e!2351427)))

(assert (=> b!3805320 (= res!1540658 (not (isDefined!6786 lt!1319607)))))

(declare-fun b!3805321 () Bool)

(declare-fun e!2351428 () Option!8624)

(declare-fun lt!1319610 () Option!8624)

(declare-fun lt!1319609 () Option!8624)

(assert (=> b!3805321 (= e!2351428 (ite (and ((_ is None!8623) lt!1319610) ((_ is None!8623) lt!1319609)) None!8623 (ite ((_ is None!8623) lt!1319609) lt!1319610 (ite ((_ is None!8623) lt!1319610) lt!1319609 (ite (>= (size!30384 (_1!22882 (v!38847 lt!1319610))) (size!30384 (_1!22882 (v!38847 lt!1319609)))) lt!1319610 lt!1319609)))))))

(assert (=> b!3805321 (= lt!1319610 call!279361)))

(assert (=> b!3805321 (= lt!1319609 (maxPrefixZipperSequence!1207 thiss!11876 (t!307217 rules!1265) (_2!22882 (v!38847 lt!1318793))))))

(declare-fun b!3805322 () Bool)

(declare-fun res!1540657 () Bool)

(assert (=> b!3805322 (=> (not res!1540657) (not e!2351429))))

(assert (=> b!3805322 (= res!1540657 e!2351430)))

(declare-fun res!1540660 () Bool)

(assert (=> b!3805322 (=> res!1540660 e!2351430)))

(assert (=> b!3805322 (= res!1540660 (not (isDefined!6786 lt!1319607)))))

(declare-fun d!1122722 () Bool)

(assert (=> d!1122722 e!2351429))

(declare-fun res!1540661 () Bool)

(assert (=> d!1122722 (=> (not res!1540661) (not e!2351429))))

(assert (=> d!1122722 (= res!1540661 (= (isDefined!6786 lt!1319607) (isDefined!6787 (maxPrefixZipper!545 thiss!11876 rules!1265 (list!14992 (_2!22882 (v!38847 lt!1318793)))))))))

(assert (=> d!1122722 (= lt!1319607 e!2351428)))

(declare-fun c!661895 () Bool)

(assert (=> d!1122722 (= c!661895 (and ((_ is Cons!40364) rules!1265) ((_ is Nil!40364) (t!307217 rules!1265))))))

(declare-fun lt!1319604 () Unit!58104)

(declare-fun lt!1319608 () Unit!58104)

(assert (=> d!1122722 (= lt!1319604 lt!1319608)))

(declare-fun lt!1319606 () List!40487)

(declare-fun lt!1319605 () List!40487)

(assert (=> d!1122722 (isPrefix!3321 lt!1319606 lt!1319605)))

(assert (=> d!1122722 (= lt!1319608 (lemmaIsPrefixRefl!2106 lt!1319606 lt!1319605))))

(assert (=> d!1122722 (= lt!1319605 (list!14992 (_2!22882 (v!38847 lt!1318793))))))

(assert (=> d!1122722 (= lt!1319606 (list!14992 (_2!22882 (v!38847 lt!1318793))))))

(assert (=> d!1122722 (rulesValidInductive!2180 thiss!11876 rules!1265)))

(assert (=> d!1122722 (= (maxPrefixZipperSequence!1207 thiss!11876 rules!1265 (_2!22882 (v!38847 lt!1318793))) lt!1319607)))

(declare-fun b!3805323 () Bool)

(assert (=> b!3805323 (= e!2351428 call!279361)))

(declare-fun b!3805324 () Bool)

(declare-fun e!2351426 () Bool)

(assert (=> b!3805324 (= e!2351427 e!2351426)))

(declare-fun res!1540659 () Bool)

(assert (=> b!3805324 (=> (not res!1540659) (not e!2351426))))

(assert (=> b!3805324 (= res!1540659 (= (_1!22882 (get!13382 lt!1319607)) (_1!22886 (get!13383 (maxPrefix!3113 thiss!11876 rules!1265 (list!14992 (_2!22882 (v!38847 lt!1318793))))))))))

(declare-fun b!3805325 () Bool)

(assert (=> b!3805325 (= e!2351426 (= (list!14992 (_2!22882 (get!13382 lt!1319607))) (_2!22886 (get!13383 (maxPrefix!3113 thiss!11876 rules!1265 (list!14992 (_2!22882 (v!38847 lt!1318793))))))))))

(declare-fun b!3805326 () Bool)

(assert (=> b!3805326 (= e!2351425 (= (list!14992 (_2!22882 (get!13382 lt!1319607))) (_2!22886 (get!13383 (maxPrefixZipper!545 thiss!11876 rules!1265 (list!14992 (_2!22882 (v!38847 lt!1318793))))))))))

(assert (= (and d!1122722 c!661895) b!3805323))

(assert (= (and d!1122722 (not c!661895)) b!3805321))

(assert (= (or b!3805323 b!3805321) bm!279356))

(assert (= (and d!1122722 res!1540661) b!3805322))

(assert (= (and b!3805322 (not res!1540660)) b!3805319))

(assert (= (and b!3805319 res!1540662) b!3805326))

(assert (= (and b!3805322 res!1540657) b!3805320))

(assert (= (and b!3805320 (not res!1540658)) b!3805324))

(assert (= (and b!3805324 res!1540659) b!3805325))

(declare-fun m!4337439 () Bool)

(assert (=> bm!279356 m!4337439))

(declare-fun m!4337441 () Bool)

(assert (=> b!3805326 m!4337441))

(declare-fun m!4337443 () Bool)

(assert (=> b!3805326 m!4337443))

(declare-fun m!4337445 () Bool)

(assert (=> b!3805326 m!4337445))

(assert (=> b!3805326 m!4335163))

(assert (=> b!3805326 m!4337441))

(assert (=> b!3805326 m!4335163))

(declare-fun m!4337447 () Bool)

(assert (=> b!3805326 m!4337447))

(declare-fun m!4337449 () Bool)

(assert (=> b!3805322 m!4337449))

(assert (=> b!3805325 m!4337445))

(assert (=> b!3805325 m!4335163))

(assert (=> b!3805325 m!4336715))

(assert (=> b!3805325 m!4336715))

(declare-fun m!4337451 () Bool)

(assert (=> b!3805325 m!4337451))

(assert (=> b!3805325 m!4335163))

(assert (=> b!3805325 m!4337447))

(declare-fun m!4337453 () Bool)

(assert (=> b!3805321 m!4337453))

(assert (=> b!3805319 m!4337447))

(assert (=> b!3805319 m!4335163))

(assert (=> b!3805319 m!4335163))

(assert (=> b!3805319 m!4337441))

(assert (=> b!3805319 m!4337441))

(assert (=> b!3805319 m!4337443))

(assert (=> b!3805324 m!4337447))

(assert (=> b!3805324 m!4335163))

(assert (=> b!3805324 m!4335163))

(assert (=> b!3805324 m!4336715))

(assert (=> b!3805324 m!4336715))

(assert (=> b!3805324 m!4337451))

(assert (=> b!3805320 m!4337449))

(assert (=> d!1122722 m!4335163))

(assert (=> d!1122722 m!4337449))

(declare-fun m!4337455 () Bool)

(assert (=> d!1122722 m!4337455))

(assert (=> d!1122722 m!4335023))

(assert (=> d!1122722 m!4337441))

(declare-fun m!4337457 () Bool)

(assert (=> d!1122722 m!4337457))

(declare-fun m!4337459 () Bool)

(assert (=> d!1122722 m!4337459))

(assert (=> d!1122722 m!4335163))

(assert (=> d!1122722 m!4337441))

(assert (=> d!1122024 d!1122722))

(declare-fun d!1122724 () Bool)

(declare-fun lt!1319611 () Int)

(assert (=> d!1122724 (>= lt!1319611 0)))

(declare-fun e!2351431 () Int)

(assert (=> d!1122724 (= lt!1319611 e!2351431)))

(declare-fun c!661896 () Bool)

(assert (=> d!1122724 (= c!661896 ((_ is Nil!40363) lt!1318912))))

(assert (=> d!1122724 (= (size!30392 lt!1318912) lt!1319611)))

(declare-fun b!3805327 () Bool)

(assert (=> b!3805327 (= e!2351431 0)))

(declare-fun b!3805328 () Bool)

(assert (=> b!3805328 (= e!2351431 (+ 1 (size!30392 (t!307216 lt!1318912))))))

(assert (= (and d!1122724 c!661896) b!3805327))

(assert (= (and d!1122724 (not c!661896)) b!3805328))

(declare-fun m!4337461 () Bool)

(assert (=> b!3805328 m!4337461))

(assert (=> b!3803547 d!1122724))

(assert (=> b!3803547 d!1122506))

(declare-fun d!1122726 () Bool)

(declare-fun lt!1319612 () Int)

(assert (=> d!1122726 (>= lt!1319612 0)))

(declare-fun e!2351432 () Int)

(assert (=> d!1122726 (= lt!1319612 e!2351432)))

(declare-fun c!661897 () Bool)

(assert (=> d!1122726 (= c!661897 ((_ is Nil!40363) (++!10133 lt!1318787 lt!1318786)))))

(assert (=> d!1122726 (= (size!30392 (++!10133 lt!1318787 lt!1318786)) lt!1319612)))

(declare-fun b!3805329 () Bool)

(assert (=> b!3805329 (= e!2351432 0)))

(declare-fun b!3805330 () Bool)

(assert (=> b!3805330 (= e!2351432 (+ 1 (size!30392 (t!307216 (++!10133 lt!1318787 lt!1318786)))))))

(assert (= (and d!1122726 c!661897) b!3805329))

(assert (= (and d!1122726 (not c!661897)) b!3805330))

(declare-fun m!4337463 () Bool)

(assert (=> b!3805330 m!4337463))

(assert (=> b!3803547 d!1122726))

(assert (=> b!3803655 d!1122502))

(declare-fun b!3805333 () Bool)

(declare-fun e!2351434 () List!40487)

(assert (=> b!3805333 (= e!2351434 (list!15000 (xs!15664 (c!661414 (charsOf!4050 (_1!22882 (v!38847 lt!1318792)))))))))

(declare-fun b!3805332 () Bool)

(declare-fun e!2351433 () List!40487)

(assert (=> b!3805332 (= e!2351433 e!2351434)))

(declare-fun c!661899 () Bool)

(assert (=> b!3805332 (= c!661899 ((_ is Leaf!19202) (c!661414 (charsOf!4050 (_1!22882 (v!38847 lt!1318792))))))))

(declare-fun b!3805331 () Bool)

(assert (=> b!3805331 (= e!2351433 Nil!40363)))

(declare-fun b!3805334 () Bool)

(assert (=> b!3805334 (= e!2351434 (++!10133 (list!14996 (left!31229 (c!661414 (charsOf!4050 (_1!22882 (v!38847 lt!1318792)))))) (list!14996 (right!31559 (c!661414 (charsOf!4050 (_1!22882 (v!38847 lt!1318792))))))))))

(declare-fun d!1122728 () Bool)

(declare-fun c!661898 () Bool)

(assert (=> d!1122728 (= c!661898 ((_ is Empty!12398) (c!661414 (charsOf!4050 (_1!22882 (v!38847 lt!1318792))))))))

(assert (=> d!1122728 (= (list!14996 (c!661414 (charsOf!4050 (_1!22882 (v!38847 lt!1318792))))) e!2351433)))

(assert (= (and d!1122728 c!661898) b!3805331))

(assert (= (and d!1122728 (not c!661898)) b!3805332))

(assert (= (and b!3805332 c!661899) b!3805333))

(assert (= (and b!3805332 (not c!661899)) b!3805334))

(declare-fun m!4337465 () Bool)

(assert (=> b!3805333 m!4337465))

(declare-fun m!4337467 () Bool)

(assert (=> b!3805334 m!4337467))

(declare-fun m!4337469 () Bool)

(assert (=> b!3805334 m!4337469))

(assert (=> b!3805334 m!4337467))

(assert (=> b!3805334 m!4337469))

(declare-fun m!4337471 () Bool)

(assert (=> b!3805334 m!4337471))

(assert (=> d!1121950 d!1122728))

(declare-fun b!3805337 () Bool)

(declare-fun e!2351436 () List!40487)

(assert (=> b!3805337 (= e!2351436 (list!15000 (xs!15664 (c!661414 treated!13))))))

(declare-fun b!3805336 () Bool)

(declare-fun e!2351435 () List!40487)

(assert (=> b!3805336 (= e!2351435 e!2351436)))

(declare-fun c!661901 () Bool)

(assert (=> b!3805336 (= c!661901 ((_ is Leaf!19202) (c!661414 treated!13)))))

(declare-fun b!3805335 () Bool)

(assert (=> b!3805335 (= e!2351435 Nil!40363)))

(declare-fun b!3805338 () Bool)

(assert (=> b!3805338 (= e!2351436 (++!10133 (list!14996 (left!31229 (c!661414 treated!13))) (list!14996 (right!31559 (c!661414 treated!13)))))))

(declare-fun d!1122730 () Bool)

(declare-fun c!661900 () Bool)

(assert (=> d!1122730 (= c!661900 ((_ is Empty!12398) (c!661414 treated!13)))))

(assert (=> d!1122730 (= (list!14996 (c!661414 treated!13)) e!2351435)))

(assert (= (and d!1122730 c!661900) b!3805335))

(assert (= (and d!1122730 (not c!661900)) b!3805336))

(assert (= (and b!3805336 c!661901) b!3805337))

(assert (= (and b!3805336 (not c!661901)) b!3805338))

(declare-fun m!4337473 () Bool)

(assert (=> b!3805337 m!4337473))

(declare-fun m!4337475 () Bool)

(assert (=> b!3805338 m!4337475))

(declare-fun m!4337477 () Bool)

(assert (=> b!3805338 m!4337477))

(assert (=> b!3805338 m!4337475))

(assert (=> b!3805338 m!4337477))

(declare-fun m!4337479 () Bool)

(assert (=> b!3805338 m!4337479))

(assert (=> d!1121996 d!1122730))

(declare-fun d!1122732 () Bool)

(declare-fun c!661902 () Bool)

(assert (=> d!1122732 (= c!661902 ((_ is Node!12398) (c!661414 (dynLambda!17442 (toChars!8455 (transformation!6212 (rule!9008 (_1!22882 (v!38847 lt!1318792))))) (value!197649 (_1!22882 (v!38847 lt!1318792)))))))))

(declare-fun e!2351437 () Bool)

(assert (=> d!1122732 (= (inv!54330 (c!661414 (dynLambda!17442 (toChars!8455 (transformation!6212 (rule!9008 (_1!22882 (v!38847 lt!1318792))))) (value!197649 (_1!22882 (v!38847 lt!1318792)))))) e!2351437)))

(declare-fun b!3805339 () Bool)

(assert (=> b!3805339 (= e!2351437 (inv!54337 (c!661414 (dynLambda!17442 (toChars!8455 (transformation!6212 (rule!9008 (_1!22882 (v!38847 lt!1318792))))) (value!197649 (_1!22882 (v!38847 lt!1318792)))))))))

(declare-fun b!3805340 () Bool)

(declare-fun e!2351438 () Bool)

(assert (=> b!3805340 (= e!2351437 e!2351438)))

(declare-fun res!1540663 () Bool)

(assert (=> b!3805340 (= res!1540663 (not ((_ is Leaf!19202) (c!661414 (dynLambda!17442 (toChars!8455 (transformation!6212 (rule!9008 (_1!22882 (v!38847 lt!1318792))))) (value!197649 (_1!22882 (v!38847 lt!1318792))))))))))

(assert (=> b!3805340 (=> res!1540663 e!2351438)))

(declare-fun b!3805341 () Bool)

(assert (=> b!3805341 (= e!2351438 (inv!54338 (c!661414 (dynLambda!17442 (toChars!8455 (transformation!6212 (rule!9008 (_1!22882 (v!38847 lt!1318792))))) (value!197649 (_1!22882 (v!38847 lt!1318792)))))))))

(assert (= (and d!1122732 c!661902) b!3805339))

(assert (= (and d!1122732 (not c!661902)) b!3805340))

(assert (= (and b!3805340 (not res!1540663)) b!3805341))

(declare-fun m!4337481 () Bool)

(assert (=> b!3805339 m!4337481))

(declare-fun m!4337483 () Bool)

(assert (=> b!3805341 m!4337483))

(assert (=> b!3803666 d!1122732))

(declare-fun d!1122734 () Bool)

(declare-fun e!2351439 () Bool)

(assert (=> d!1122734 e!2351439))

(declare-fun res!1540664 () Bool)

(assert (=> d!1122734 (=> (not res!1540664) (not e!2351439))))

(assert (=> d!1122734 (= res!1540664 (isBalanced!3576 (prepend!1358 (c!661415 (_1!22881 lt!1318971)) (_1!22882 (v!38847 lt!1318973)))))))

(declare-fun lt!1319613 () BalanceConc!24392)

(assert (=> d!1122734 (= lt!1319613 (BalanceConc!24393 (prepend!1358 (c!661415 (_1!22881 lt!1318971)) (_1!22882 (v!38847 lt!1318973)))))))

(assert (=> d!1122734 (= (prepend!1356 (_1!22881 lt!1318971) (_1!22882 (v!38847 lt!1318973))) lt!1319613)))

(declare-fun b!3805342 () Bool)

(assert (=> b!3805342 (= e!2351439 (= (list!14991 lt!1319613) (Cons!40365 (_1!22882 (v!38847 lt!1318973)) (list!14991 (_1!22881 lt!1318971)))))))

(assert (= (and d!1122734 res!1540664) b!3805342))

(declare-fun m!4337485 () Bool)

(assert (=> d!1122734 m!4337485))

(assert (=> d!1122734 m!4337485))

(declare-fun m!4337487 () Bool)

(assert (=> d!1122734 m!4337487))

(declare-fun m!4337489 () Bool)

(assert (=> b!3805342 m!4337489))

(declare-fun m!4337491 () Bool)

(assert (=> b!3805342 m!4337491))

(assert (=> b!3803708 d!1122734))

(declare-fun b!3805343 () Bool)

(declare-fun e!2351442 () Bool)

(declare-fun lt!1319615 () tuple2!39494)

(assert (=> b!3805343 (= e!2351442 (not (isEmpty!23766 (_1!22881 lt!1319615))))))

(declare-fun b!3805344 () Bool)

(declare-fun e!2351443 () Bool)

(assert (=> b!3805344 (= e!2351443 e!2351442)))

(declare-fun res!1540667 () Bool)

(assert (=> b!3805344 (= res!1540667 (< (size!30389 (_2!22881 lt!1319615)) (size!30389 (_2!22882 (v!38847 lt!1318973)))))))

(assert (=> b!3805344 (=> (not res!1540667) (not e!2351442))))

(declare-fun e!2351441 () Bool)

(declare-fun b!3805345 () Bool)

(assert (=> b!3805345 (= e!2351441 (= (list!14992 (_2!22881 lt!1319615)) (_2!22885 (lexList!1571 thiss!11876 rules!1265 (list!14992 (_2!22882 (v!38847 lt!1318973)))))))))

(declare-fun d!1122736 () Bool)

(assert (=> d!1122736 e!2351441))

(declare-fun res!1540666 () Bool)

(assert (=> d!1122736 (=> (not res!1540666) (not e!2351441))))

(assert (=> d!1122736 (= res!1540666 e!2351443)))

(declare-fun c!661903 () Bool)

(assert (=> d!1122736 (= c!661903 (> (size!30390 (_1!22881 lt!1319615)) 0))))

(declare-fun e!2351440 () tuple2!39494)

(assert (=> d!1122736 (= lt!1319615 e!2351440)))

(declare-fun c!661904 () Bool)

(declare-fun lt!1319616 () Option!8624)

(assert (=> d!1122736 (= c!661904 ((_ is Some!8623) lt!1319616))))

(assert (=> d!1122736 (= lt!1319616 (maxPrefixZipperSequence!1207 thiss!11876 rules!1265 (_2!22882 (v!38847 lt!1318973))))))

(assert (=> d!1122736 (= (lexRec!825 thiss!11876 rules!1265 (_2!22882 (v!38847 lt!1318973))) lt!1319615)))

(declare-fun b!3805346 () Bool)

(assert (=> b!3805346 (= e!2351443 (= (list!14992 (_2!22881 lt!1319615)) (list!14992 (_2!22882 (v!38847 lt!1318973)))))))

(declare-fun b!3805347 () Bool)

(declare-fun res!1540665 () Bool)

(assert (=> b!3805347 (=> (not res!1540665) (not e!2351441))))

(assert (=> b!3805347 (= res!1540665 (= (list!14991 (_1!22881 lt!1319615)) (_1!22885 (lexList!1571 thiss!11876 rules!1265 (list!14992 (_2!22882 (v!38847 lt!1318973)))))))))

(declare-fun b!3805348 () Bool)

(assert (=> b!3805348 (= e!2351440 (tuple2!39495 (BalanceConc!24393 Empty!12399) (_2!22882 (v!38847 lt!1318973))))))

(declare-fun b!3805349 () Bool)

(declare-fun lt!1319614 () tuple2!39494)

(assert (=> b!3805349 (= e!2351440 (tuple2!39495 (prepend!1356 (_1!22881 lt!1319614) (_1!22882 (v!38847 lt!1319616))) (_2!22881 lt!1319614)))))

(assert (=> b!3805349 (= lt!1319614 (lexRec!825 thiss!11876 rules!1265 (_2!22882 (v!38847 lt!1319616))))))

(assert (= (and d!1122736 c!661904) b!3805349))

(assert (= (and d!1122736 (not c!661904)) b!3805348))

(assert (= (and d!1122736 c!661903) b!3805344))

(assert (= (and d!1122736 (not c!661903)) b!3805346))

(assert (= (and b!3805344 res!1540667) b!3805343))

(assert (= (and d!1122736 res!1540666) b!3805347))

(assert (= (and b!3805347 res!1540665) b!3805345))

(declare-fun m!4337493 () Bool)

(assert (=> b!3805345 m!4337493))

(declare-fun m!4337495 () Bool)

(assert (=> b!3805345 m!4337495))

(assert (=> b!3805345 m!4337495))

(declare-fun m!4337497 () Bool)

(assert (=> b!3805345 m!4337497))

(declare-fun m!4337499 () Bool)

(assert (=> b!3805343 m!4337499))

(declare-fun m!4337501 () Bool)

(assert (=> b!3805344 m!4337501))

(declare-fun m!4337503 () Bool)

(assert (=> b!3805344 m!4337503))

(declare-fun m!4337505 () Bool)

(assert (=> b!3805347 m!4337505))

(assert (=> b!3805347 m!4337495))

(assert (=> b!3805347 m!4337495))

(assert (=> b!3805347 m!4337497))

(declare-fun m!4337507 () Bool)

(assert (=> b!3805349 m!4337507))

(declare-fun m!4337509 () Bool)

(assert (=> b!3805349 m!4337509))

(declare-fun m!4337511 () Bool)

(assert (=> d!1122736 m!4337511))

(declare-fun m!4337513 () Bool)

(assert (=> d!1122736 m!4337513))

(assert (=> b!3805346 m!4337493))

(assert (=> b!3805346 m!4337495))

(assert (=> b!3803708 d!1122736))

(declare-fun d!1122738 () Bool)

(assert (=> d!1122738 (= (list!14991 (_1!22881 lt!1318985)) (list!14995 (c!661415 (_1!22881 lt!1318985))))))

(declare-fun bs!579795 () Bool)

(assert (= bs!579795 d!1122738))

(declare-fun m!4337515 () Bool)

(assert (=> bs!579795 m!4337515))

(assert (=> b!3803729 d!1122738))

(assert (=> b!3803729 d!1122550))

(assert (=> b!3803729 d!1122552))

(declare-fun b!3805352 () Bool)

(declare-fun e!2351445 () List!40487)

(assert (=> b!3805352 (= e!2351445 (list!15000 (xs!15664 (c!661414 (_2!22881 lt!1318791)))))))

(declare-fun b!3805351 () Bool)

(declare-fun e!2351444 () List!40487)

(assert (=> b!3805351 (= e!2351444 e!2351445)))

(declare-fun c!661906 () Bool)

(assert (=> b!3805351 (= c!661906 ((_ is Leaf!19202) (c!661414 (_2!22881 lt!1318791))))))

(declare-fun b!3805350 () Bool)

(assert (=> b!3805350 (= e!2351444 Nil!40363)))

(declare-fun b!3805353 () Bool)

(assert (=> b!3805353 (= e!2351445 (++!10133 (list!14996 (left!31229 (c!661414 (_2!22881 lt!1318791)))) (list!14996 (right!31559 (c!661414 (_2!22881 lt!1318791))))))))

(declare-fun d!1122740 () Bool)

(declare-fun c!661905 () Bool)

(assert (=> d!1122740 (= c!661905 ((_ is Empty!12398) (c!661414 (_2!22881 lt!1318791))))))

(assert (=> d!1122740 (= (list!14996 (c!661414 (_2!22881 lt!1318791))) e!2351444)))

(assert (= (and d!1122740 c!661905) b!3805350))

(assert (= (and d!1122740 (not c!661905)) b!3805351))

(assert (= (and b!3805351 c!661906) b!3805352))

(assert (= (and b!3805351 (not c!661906)) b!3805353))

(declare-fun m!4337517 () Bool)

(assert (=> b!3805352 m!4337517))

(declare-fun m!4337519 () Bool)

(assert (=> b!3805353 m!4337519))

(declare-fun m!4337521 () Bool)

(assert (=> b!3805353 m!4337521))

(assert (=> b!3805353 m!4337519))

(assert (=> b!3805353 m!4337521))

(declare-fun m!4337523 () Bool)

(assert (=> b!3805353 m!4337523))

(assert (=> d!1122004 d!1122740))

(declare-fun b!3805354 () Bool)

(declare-fun e!2351446 () List!40489)

(assert (=> b!3805354 (= e!2351446 Nil!40365)))

(declare-fun b!3805356 () Bool)

(declare-fun e!2351447 () List!40489)

(assert (=> b!3805356 (= e!2351447 (list!14999 (xs!15665 (c!661415 (_1!22881 lt!1318803)))))))

(declare-fun b!3805357 () Bool)

(assert (=> b!3805357 (= e!2351447 (++!10134 (list!14995 (left!31230 (c!661415 (_1!22881 lt!1318803)))) (list!14995 (right!31560 (c!661415 (_1!22881 lt!1318803))))))))

(declare-fun d!1122742 () Bool)

(declare-fun c!661907 () Bool)

(assert (=> d!1122742 (= c!661907 ((_ is Empty!12399) (c!661415 (_1!22881 lt!1318803))))))

(assert (=> d!1122742 (= (list!14995 (c!661415 (_1!22881 lt!1318803))) e!2351446)))

(declare-fun b!3805355 () Bool)

(assert (=> b!3805355 (= e!2351446 e!2351447)))

(declare-fun c!661908 () Bool)

(assert (=> b!3805355 (= c!661908 ((_ is Leaf!19203) (c!661415 (_1!22881 lt!1318803))))))

(assert (= (and d!1122742 c!661907) b!3805354))

(assert (= (and d!1122742 (not c!661907)) b!3805355))

(assert (= (and b!3805355 c!661908) b!3805356))

(assert (= (and b!3805355 (not c!661908)) b!3805357))

(declare-fun m!4337525 () Bool)

(assert (=> b!3805356 m!4337525))

(declare-fun m!4337527 () Bool)

(assert (=> b!3805357 m!4337527))

(declare-fun m!4337529 () Bool)

(assert (=> b!3805357 m!4337529))

(assert (=> b!3805357 m!4337527))

(assert (=> b!3805357 m!4337529))

(declare-fun m!4337531 () Bool)

(assert (=> b!3805357 m!4337531))

(assert (=> d!1122010 d!1122742))

(declare-fun b!3805360 () Bool)

(declare-fun res!1540669 () Bool)

(declare-fun e!2351448 () Bool)

(assert (=> b!3805360 (=> (not res!1540669) (not e!2351448))))

(declare-fun lt!1319617 () List!40489)

(assert (=> b!3805360 (= res!1540669 (= (size!30391 lt!1319617) (+ (size!30391 (t!307218 lt!1318784)) (size!30391 lt!1318802))))))

(declare-fun d!1122744 () Bool)

(assert (=> d!1122744 e!2351448))

(declare-fun res!1540668 () Bool)

(assert (=> d!1122744 (=> (not res!1540668) (not e!2351448))))

(assert (=> d!1122744 (= res!1540668 (= (content!5955 lt!1319617) ((_ map or) (content!5955 (t!307218 lt!1318784)) (content!5955 lt!1318802))))))

(declare-fun e!2351449 () List!40489)

(assert (=> d!1122744 (= lt!1319617 e!2351449)))

(declare-fun c!661909 () Bool)

(assert (=> d!1122744 (= c!661909 ((_ is Nil!40365) (t!307218 lt!1318784)))))

(assert (=> d!1122744 (= (++!10134 (t!307218 lt!1318784) lt!1318802) lt!1319617)))

(declare-fun b!3805358 () Bool)

(assert (=> b!3805358 (= e!2351449 lt!1318802)))

(declare-fun b!3805359 () Bool)

(assert (=> b!3805359 (= e!2351449 (Cons!40365 (h!45785 (t!307218 lt!1318784)) (++!10134 (t!307218 (t!307218 lt!1318784)) lt!1318802)))))

(declare-fun b!3805361 () Bool)

(assert (=> b!3805361 (= e!2351448 (or (not (= lt!1318802 Nil!40365)) (= lt!1319617 (t!307218 lt!1318784))))))

(assert (= (and d!1122744 c!661909) b!3805358))

(assert (= (and d!1122744 (not c!661909)) b!3805359))

(assert (= (and d!1122744 res!1540668) b!3805360))

(assert (= (and b!3805360 res!1540669) b!3805361))

(declare-fun m!4337533 () Bool)

(assert (=> b!3805360 m!4337533))

(assert (=> b!3805360 m!4336219))

(assert (=> b!3805360 m!4334929))

(declare-fun m!4337535 () Bool)

(assert (=> d!1122744 m!4337535))

(assert (=> d!1122744 m!4335379))

(assert (=> d!1122744 m!4334935))

(declare-fun m!4337537 () Bool)

(assert (=> b!3805359 m!4337537))

(assert (=> b!3803554 d!1122744))

(declare-fun b!3805364 () Bool)

(declare-fun e!2351451 () List!40487)

(assert (=> b!3805364 (= e!2351451 (list!15000 (xs!15664 (c!661414 (_2!22882 (v!38847 lt!1318792))))))))

(declare-fun b!3805363 () Bool)

(declare-fun e!2351450 () List!40487)

(assert (=> b!3805363 (= e!2351450 e!2351451)))

(declare-fun c!661911 () Bool)

(assert (=> b!3805363 (= c!661911 ((_ is Leaf!19202) (c!661414 (_2!22882 (v!38847 lt!1318792)))))))

(declare-fun b!3805362 () Bool)

(assert (=> b!3805362 (= e!2351450 Nil!40363)))

(declare-fun b!3805365 () Bool)

(assert (=> b!3805365 (= e!2351451 (++!10133 (list!14996 (left!31229 (c!661414 (_2!22882 (v!38847 lt!1318792))))) (list!14996 (right!31559 (c!661414 (_2!22882 (v!38847 lt!1318792)))))))))

(declare-fun d!1122746 () Bool)

(declare-fun c!661910 () Bool)

(assert (=> d!1122746 (= c!661910 ((_ is Empty!12398) (c!661414 (_2!22882 (v!38847 lt!1318792)))))))

(assert (=> d!1122746 (= (list!14996 (c!661414 (_2!22882 (v!38847 lt!1318792)))) e!2351450)))

(assert (= (and d!1122746 c!661910) b!3805362))

(assert (= (and d!1122746 (not c!661910)) b!3805363))

(assert (= (and b!3805363 c!661911) b!3805364))

(assert (= (and b!3805363 (not c!661911)) b!3805365))

(declare-fun m!4337539 () Bool)

(assert (=> b!3805364 m!4337539))

(declare-fun m!4337541 () Bool)

(assert (=> b!3805365 m!4337541))

(declare-fun m!4337543 () Bool)

(assert (=> b!3805365 m!4337543))

(assert (=> b!3805365 m!4337541))

(assert (=> b!3805365 m!4337543))

(declare-fun m!4337545 () Bool)

(assert (=> b!3805365 m!4337545))

(assert (=> d!1121974 d!1122746))

(declare-fun d!1122748 () Bool)

(declare-fun res!1540670 () Bool)

(declare-fun e!2351452 () Bool)

(assert (=> d!1122748 (=> (not res!1540670) (not e!2351452))))

(assert (=> d!1122748 (= res!1540670 (<= (size!30392 (list!15000 (xs!15664 (c!661414 treated!13)))) 512))))

(assert (=> d!1122748 (= (inv!54338 (c!661414 treated!13)) e!2351452)))

(declare-fun b!3805366 () Bool)

(declare-fun res!1540671 () Bool)

(assert (=> b!3805366 (=> (not res!1540671) (not e!2351452))))

(assert (=> b!3805366 (= res!1540671 (= (csize!25027 (c!661414 treated!13)) (size!30392 (list!15000 (xs!15664 (c!661414 treated!13))))))))

(declare-fun b!3805367 () Bool)

(assert (=> b!3805367 (= e!2351452 (and (> (csize!25027 (c!661414 treated!13)) 0) (<= (csize!25027 (c!661414 treated!13)) 512)))))

(assert (= (and d!1122748 res!1540670) b!3805366))

(assert (= (and b!3805366 res!1540671) b!3805367))

(assert (=> d!1122748 m!4337473))

(assert (=> d!1122748 m!4337473))

(declare-fun m!4337547 () Bool)

(assert (=> d!1122748 m!4337547))

(assert (=> b!3805366 m!4337473))

(assert (=> b!3805366 m!4337473))

(assert (=> b!3805366 m!4337547))

(assert (=> b!3803737 d!1122748))

(declare-fun d!1122750 () Bool)

(assert (=> d!1122750 (= (inv!54342 (xs!15664 (c!661414 input!678))) (<= (size!30392 (innerList!12458 (xs!15664 (c!661414 input!678)))) 2147483647))))

(declare-fun bs!579796 () Bool)

(assert (= bs!579796 d!1122750))

(declare-fun m!4337549 () Bool)

(assert (=> bs!579796 m!4337549))

(assert (=> b!3803796 d!1122750))

(assert (=> d!1122042 d!1122690))

(assert (=> d!1122042 d!1122356))

(assert (=> d!1122042 d!1122344))

(assert (=> d!1122042 d!1121994))

(assert (=> d!1122042 d!1122696))

(declare-fun d!1122752 () Bool)

(declare-fun e!2351455 () Bool)

(assert (=> d!1122752 e!2351455))

(declare-fun res!1540673 () Bool)

(assert (=> d!1122752 (=> res!1540673 e!2351455)))

(declare-fun lt!1319618 () Bool)

(assert (=> d!1122752 (= res!1540673 (not lt!1319618))))

(declare-fun e!2351454 () Bool)

(assert (=> d!1122752 (= lt!1319618 e!2351454)))

(declare-fun res!1540672 () Bool)

(assert (=> d!1122752 (=> res!1540672 e!2351454)))

(assert (=> d!1122752 (= res!1540672 ((_ is Nil!40363) lt!1319006))))

(assert (=> d!1122752 (= (isPrefix!3321 lt!1319006 lt!1319001) lt!1319618)))

(declare-fun b!3805368 () Bool)

(declare-fun e!2351453 () Bool)

(assert (=> b!3805368 (= e!2351454 e!2351453)))

(declare-fun res!1540674 () Bool)

(assert (=> b!3805368 (=> (not res!1540674) (not e!2351453))))

(assert (=> b!3805368 (= res!1540674 (not ((_ is Nil!40363) lt!1319001)))))

(declare-fun b!3805369 () Bool)

(declare-fun res!1540675 () Bool)

(assert (=> b!3805369 (=> (not res!1540675) (not e!2351453))))

(assert (=> b!3805369 (= res!1540675 (= (head!8060 lt!1319006) (head!8060 lt!1319001)))))

(declare-fun b!3805371 () Bool)

(assert (=> b!3805371 (= e!2351455 (>= (size!30392 lt!1319001) (size!30392 lt!1319006)))))

(declare-fun b!3805370 () Bool)

(assert (=> b!3805370 (= e!2351453 (isPrefix!3321 (tail!5787 lt!1319006) (tail!5787 lt!1319001)))))

(assert (= (and d!1122752 (not res!1540672)) b!3805368))

(assert (= (and b!3805368 res!1540674) b!3805369))

(assert (= (and b!3805369 res!1540675) b!3805370))

(assert (= (and d!1122752 (not res!1540673)) b!3805371))

(declare-fun m!4337551 () Bool)

(assert (=> b!3805369 m!4337551))

(declare-fun m!4337553 () Bool)

(assert (=> b!3805369 m!4337553))

(declare-fun m!4337555 () Bool)

(assert (=> b!3805371 m!4337555))

(declare-fun m!4337557 () Bool)

(assert (=> b!3805371 m!4337557))

(declare-fun m!4337559 () Bool)

(assert (=> b!3805370 m!4337559))

(declare-fun m!4337561 () Bool)

(assert (=> b!3805370 m!4337561))

(assert (=> b!3805370 m!4337559))

(assert (=> b!3805370 m!4337561))

(declare-fun m!4337563 () Bool)

(assert (=> b!3805370 m!4337563))

(assert (=> d!1122042 d!1122752))

(declare-fun d!1122754 () Bool)

(assert (=> d!1122754 (isPrefix!3321 lt!1319006 lt!1319001)))

(declare-fun lt!1319619 () Unit!58104)

(assert (=> d!1122754 (= lt!1319619 (choose!22432 lt!1319006 lt!1319001))))

(assert (=> d!1122754 (= (lemmaIsPrefixRefl!2106 lt!1319006 lt!1319001) lt!1319619)))

(declare-fun bs!579797 () Bool)

(assert (= bs!579797 d!1122754))

(assert (=> bs!579797 m!4335203))

(declare-fun m!4337565 () Bool)

(assert (=> bs!579797 m!4337565))

(assert (=> d!1122042 d!1122754))

(assert (=> b!3803704 d!1122086))

(assert (=> b!3803704 d!1122386))

(assert (=> b!3803704 d!1121996))

(declare-fun d!1122756 () Bool)

(declare-fun lt!1319620 () Int)

(assert (=> d!1122756 (>= lt!1319620 0)))

(declare-fun e!2351456 () Int)

(assert (=> d!1122756 (= lt!1319620 e!2351456)))

(declare-fun c!661912 () Bool)

(assert (=> d!1122756 (= c!661912 ((_ is Nil!40363) lt!1318913))))

(assert (=> d!1122756 (= (size!30392 lt!1318913) lt!1319620)))

(declare-fun b!3805372 () Bool)

(assert (=> b!3805372 (= e!2351456 0)))

(declare-fun b!3805373 () Bool)

(assert (=> b!3805373 (= e!2351456 (+ 1 (size!30392 (t!307216 lt!1318913))))))

(assert (= (and d!1122756 c!661912) b!3805372))

(assert (= (and d!1122756 (not c!661912)) b!3805373))

(declare-fun m!4337567 () Bool)

(assert (=> b!3805373 m!4337567))

(assert (=> b!3803551 d!1122756))

(declare-fun d!1122758 () Bool)

(declare-fun lt!1319621 () Int)

(assert (=> d!1122758 (>= lt!1319621 0)))

(declare-fun e!2351457 () Int)

(assert (=> d!1122758 (= lt!1319621 e!2351457)))

(declare-fun c!661913 () Bool)

(assert (=> d!1122758 (= c!661913 ((_ is Nil!40363) (++!10133 lt!1318796 lt!1318787)))))

(assert (=> d!1122758 (= (size!30392 (++!10133 lt!1318796 lt!1318787)) lt!1319621)))

(declare-fun b!3805374 () Bool)

(assert (=> b!3805374 (= e!2351457 0)))

(declare-fun b!3805375 () Bool)

(assert (=> b!3805375 (= e!2351457 (+ 1 (size!30392 (t!307216 (++!10133 lt!1318796 lt!1318787)))))))

(assert (= (and d!1122758 c!661913) b!3805374))

(assert (= (and d!1122758 (not c!661913)) b!3805375))

(assert (=> b!3805375 m!4337259))

(assert (=> b!3803551 d!1122758))

(assert (=> b!3803551 d!1122664))

(declare-fun d!1122760 () Bool)

(assert (=> d!1122760 (= (list!14991 (_1!22881 lt!1318896)) (list!14995 (c!661415 (_1!22881 lt!1318896))))))

(declare-fun bs!579798 () Bool)

(assert (= bs!579798 d!1122760))

(declare-fun m!4337569 () Bool)

(assert (=> bs!579798 m!4337569))

(assert (=> b!3803509 d!1122760))

(assert (=> b!3803509 d!1122544))

(assert (=> b!3803509 d!1121992))

(declare-fun d!1122762 () Bool)

(declare-fun lt!1319622 () Bool)

(assert (=> d!1122762 (= lt!1319622 (isEmpty!23763 (list!14991 (_1!22881 lt!1318896))))))

(assert (=> d!1122762 (= lt!1319622 (isEmpty!23771 (c!661415 (_1!22881 lt!1318896))))))

(assert (=> d!1122762 (= (isEmpty!23766 (_1!22881 lt!1318896)) lt!1319622)))

(declare-fun bs!579799 () Bool)

(assert (= bs!579799 d!1122762))

(assert (=> bs!579799 m!4334835))

(assert (=> bs!579799 m!4334835))

(declare-fun m!4337571 () Bool)

(assert (=> bs!579799 m!4337571))

(declare-fun m!4337573 () Bool)

(assert (=> bs!579799 m!4337573))

(assert (=> b!3803505 d!1122762))

(declare-fun d!1122764 () Bool)

(declare-fun c!661914 () Bool)

(assert (=> d!1122764 (= c!661914 ((_ is Node!12398) (left!31229 (c!661414 treated!13))))))

(declare-fun e!2351458 () Bool)

(assert (=> d!1122764 (= (inv!54330 (left!31229 (c!661414 treated!13))) e!2351458)))

(declare-fun b!3805376 () Bool)

(assert (=> b!3805376 (= e!2351458 (inv!54337 (left!31229 (c!661414 treated!13))))))

(declare-fun b!3805377 () Bool)

(declare-fun e!2351459 () Bool)

(assert (=> b!3805377 (= e!2351458 e!2351459)))

(declare-fun res!1540676 () Bool)

(assert (=> b!3805377 (= res!1540676 (not ((_ is Leaf!19202) (left!31229 (c!661414 treated!13)))))))

(assert (=> b!3805377 (=> res!1540676 e!2351459)))

(declare-fun b!3805378 () Bool)

(assert (=> b!3805378 (= e!2351459 (inv!54338 (left!31229 (c!661414 treated!13))))))

(assert (= (and d!1122764 c!661914) b!3805376))

(assert (= (and d!1122764 (not c!661914)) b!3805377))

(assert (= (and b!3805377 (not res!1540676)) b!3805378))

(declare-fun m!4337575 () Bool)

(assert (=> b!3805376 m!4337575))

(declare-fun m!4337577 () Bool)

(assert (=> b!3805378 m!4337577))

(assert (=> b!3803798 d!1122764))

(declare-fun d!1122766 () Bool)

(declare-fun c!661915 () Bool)

(assert (=> d!1122766 (= c!661915 ((_ is Node!12398) (right!31559 (c!661414 treated!13))))))

(declare-fun e!2351460 () Bool)

(assert (=> d!1122766 (= (inv!54330 (right!31559 (c!661414 treated!13))) e!2351460)))

(declare-fun b!3805379 () Bool)

(assert (=> b!3805379 (= e!2351460 (inv!54337 (right!31559 (c!661414 treated!13))))))

(declare-fun b!3805380 () Bool)

(declare-fun e!2351461 () Bool)

(assert (=> b!3805380 (= e!2351460 e!2351461)))

(declare-fun res!1540677 () Bool)

(assert (=> b!3805380 (= res!1540677 (not ((_ is Leaf!19202) (right!31559 (c!661414 treated!13)))))))

(assert (=> b!3805380 (=> res!1540677 e!2351461)))

(declare-fun b!3805381 () Bool)

(assert (=> b!3805381 (= e!2351461 (inv!54338 (right!31559 (c!661414 treated!13))))))

(assert (= (and d!1122766 c!661915) b!3805379))

(assert (= (and d!1122766 (not c!661915)) b!3805380))

(assert (= (and b!3805380 (not res!1540677)) b!3805381))

(declare-fun m!4337579 () Bool)

(assert (=> b!3805379 m!4337579))

(declare-fun m!4337581 () Bool)

(assert (=> b!3805381 m!4337581))

(assert (=> b!3803798 d!1122766))

(declare-fun d!1122768 () Bool)

(declare-fun c!661916 () Bool)

(assert (=> d!1122768 (= c!661916 ((_ is Nil!40363) lt!1318912))))

(declare-fun e!2351462 () (InoxSet C!22420))

(assert (=> d!1122768 (= (content!5956 lt!1318912) e!2351462)))

(declare-fun b!3805382 () Bool)

(assert (=> b!3805382 (= e!2351462 ((as const (Array C!22420 Bool)) false))))

(declare-fun b!3805383 () Bool)

(assert (=> b!3805383 (= e!2351462 ((_ map or) (store ((as const (Array C!22420 Bool)) false) (h!45783 lt!1318912) true) (content!5956 (t!307216 lt!1318912))))))

(assert (= (and d!1122768 c!661916) b!3805382))

(assert (= (and d!1122768 (not c!661916)) b!3805383))

(declare-fun m!4337583 () Bool)

(assert (=> b!3805383 m!4337583))

(declare-fun m!4337585 () Bool)

(assert (=> b!3805383 m!4337585))

(assert (=> d!1121948 d!1122768))

(assert (=> d!1121948 d!1122148))

(declare-fun d!1122770 () Bool)

(declare-fun c!661917 () Bool)

(assert (=> d!1122770 (= c!661917 ((_ is Nil!40363) (++!10133 lt!1318787 lt!1318786)))))

(declare-fun e!2351463 () (InoxSet C!22420))

(assert (=> d!1122770 (= (content!5956 (++!10133 lt!1318787 lt!1318786)) e!2351463)))

(declare-fun b!3805384 () Bool)

(assert (=> b!3805384 (= e!2351463 ((as const (Array C!22420 Bool)) false))))

(declare-fun b!3805385 () Bool)

(assert (=> b!3805385 (= e!2351463 ((_ map or) (store ((as const (Array C!22420 Bool)) false) (h!45783 (++!10133 lt!1318787 lt!1318786)) true) (content!5956 (t!307216 (++!10133 lt!1318787 lt!1318786)))))))

(assert (= (and d!1122770 c!661917) b!3805384))

(assert (= (and d!1122770 (not c!661917)) b!3805385))

(declare-fun m!4337587 () Bool)

(assert (=> b!3805385 m!4337587))

(declare-fun m!4337589 () Bool)

(assert (=> b!3805385 m!4337589))

(assert (=> d!1121948 d!1122770))

(assert (=> b!3803673 d!1122108))

(assert (=> b!3803673 d!1122558))

(assert (=> b!3803673 d!1121974))

(assert (=> b!3803285 d!1122026))

(declare-fun d!1122772 () Bool)

(declare-fun e!2351464 () Bool)

(assert (=> d!1122772 e!2351464))

(declare-fun res!1540678 () Bool)

(assert (=> d!1122772 (=> (not res!1540678) (not e!2351464))))

(assert (=> d!1122772 (= res!1540678 (isBalanced!3576 (prepend!1358 (c!661415 (_1!22881 lt!1318962)) (_1!22882 (v!38847 lt!1318964)))))))

(declare-fun lt!1319623 () BalanceConc!24392)

(assert (=> d!1122772 (= lt!1319623 (BalanceConc!24393 (prepend!1358 (c!661415 (_1!22881 lt!1318962)) (_1!22882 (v!38847 lt!1318964)))))))

(assert (=> d!1122772 (= (prepend!1356 (_1!22881 lt!1318962) (_1!22882 (v!38847 lt!1318964))) lt!1319623)))

(declare-fun b!3805386 () Bool)

(assert (=> b!3805386 (= e!2351464 (= (list!14991 lt!1319623) (Cons!40365 (_1!22882 (v!38847 lt!1318964)) (list!14991 (_1!22881 lt!1318962)))))))

(assert (= (and d!1122772 res!1540678) b!3805386))

(declare-fun m!4337591 () Bool)

(assert (=> d!1122772 m!4337591))

(assert (=> d!1122772 m!4337591))

(declare-fun m!4337593 () Bool)

(assert (=> d!1122772 m!4337593))

(declare-fun m!4337595 () Bool)

(assert (=> b!3805386 m!4337595))

(declare-fun m!4337597 () Bool)

(assert (=> b!3805386 m!4337597))

(assert (=> b!3803677 d!1122772))

(declare-fun b!3805387 () Bool)

(declare-fun e!2351467 () Bool)

(declare-fun lt!1319625 () tuple2!39494)

(assert (=> b!3805387 (= e!2351467 (not (isEmpty!23766 (_1!22881 lt!1319625))))))

(declare-fun b!3805388 () Bool)

(declare-fun e!2351468 () Bool)

(assert (=> b!3805388 (= e!2351468 e!2351467)))

(declare-fun res!1540681 () Bool)

(assert (=> b!3805388 (= res!1540681 (< (size!30389 (_2!22881 lt!1319625)) (size!30389 (_2!22882 (v!38847 lt!1318964)))))))

(assert (=> b!3805388 (=> (not res!1540681) (not e!2351467))))

(declare-fun b!3805389 () Bool)

(declare-fun e!2351466 () Bool)

(assert (=> b!3805389 (= e!2351466 (= (list!14992 (_2!22881 lt!1319625)) (_2!22885 (lexList!1571 thiss!11876 rules!1265 (list!14992 (_2!22882 (v!38847 lt!1318964)))))))))

(declare-fun d!1122774 () Bool)

(assert (=> d!1122774 e!2351466))

(declare-fun res!1540680 () Bool)

(assert (=> d!1122774 (=> (not res!1540680) (not e!2351466))))

(assert (=> d!1122774 (= res!1540680 e!2351468)))

(declare-fun c!661918 () Bool)

(assert (=> d!1122774 (= c!661918 (> (size!30390 (_1!22881 lt!1319625)) 0))))

(declare-fun e!2351465 () tuple2!39494)

(assert (=> d!1122774 (= lt!1319625 e!2351465)))

(declare-fun c!661919 () Bool)

(declare-fun lt!1319626 () Option!8624)

(assert (=> d!1122774 (= c!661919 ((_ is Some!8623) lt!1319626))))

(assert (=> d!1122774 (= lt!1319626 (maxPrefixZipperSequence!1207 thiss!11876 rules!1265 (_2!22882 (v!38847 lt!1318964))))))

(assert (=> d!1122774 (= (lexRec!825 thiss!11876 rules!1265 (_2!22882 (v!38847 lt!1318964))) lt!1319625)))

(declare-fun b!3805390 () Bool)

(assert (=> b!3805390 (= e!2351468 (= (list!14992 (_2!22881 lt!1319625)) (list!14992 (_2!22882 (v!38847 lt!1318964)))))))

(declare-fun b!3805391 () Bool)

(declare-fun res!1540679 () Bool)

(assert (=> b!3805391 (=> (not res!1540679) (not e!2351466))))

(assert (=> b!3805391 (= res!1540679 (= (list!14991 (_1!22881 lt!1319625)) (_1!22885 (lexList!1571 thiss!11876 rules!1265 (list!14992 (_2!22882 (v!38847 lt!1318964)))))))))

(declare-fun b!3805392 () Bool)

(assert (=> b!3805392 (= e!2351465 (tuple2!39495 (BalanceConc!24393 Empty!12399) (_2!22882 (v!38847 lt!1318964))))))

(declare-fun b!3805393 () Bool)

(declare-fun lt!1319624 () tuple2!39494)

(assert (=> b!3805393 (= e!2351465 (tuple2!39495 (prepend!1356 (_1!22881 lt!1319624) (_1!22882 (v!38847 lt!1319626))) (_2!22881 lt!1319624)))))

(assert (=> b!3805393 (= lt!1319624 (lexRec!825 thiss!11876 rules!1265 (_2!22882 (v!38847 lt!1319626))))))

(assert (= (and d!1122774 c!661919) b!3805393))

(assert (= (and d!1122774 (not c!661919)) b!3805392))

(assert (= (and d!1122774 c!661918) b!3805388))

(assert (= (and d!1122774 (not c!661918)) b!3805390))

(assert (= (and b!3805388 res!1540681) b!3805387))

(assert (= (and d!1122774 res!1540680) b!3805391))

(assert (= (and b!3805391 res!1540679) b!3805389))

(declare-fun m!4337599 () Bool)

(assert (=> b!3805389 m!4337599))

(declare-fun m!4337601 () Bool)

(assert (=> b!3805389 m!4337601))

(assert (=> b!3805389 m!4337601))

(declare-fun m!4337603 () Bool)

(assert (=> b!3805389 m!4337603))

(declare-fun m!4337605 () Bool)

(assert (=> b!3805387 m!4337605))

(declare-fun m!4337607 () Bool)

(assert (=> b!3805388 m!4337607))

(declare-fun m!4337609 () Bool)

(assert (=> b!3805388 m!4337609))

(declare-fun m!4337611 () Bool)

(assert (=> b!3805391 m!4337611))

(assert (=> b!3805391 m!4337601))

(assert (=> b!3805391 m!4337601))

(assert (=> b!3805391 m!4337603))

(declare-fun m!4337613 () Bool)

(assert (=> b!3805393 m!4337613))

(declare-fun m!4337615 () Bool)

(assert (=> b!3805393 m!4337615))

(declare-fun m!4337617 () Bool)

(assert (=> d!1122774 m!4337617))

(declare-fun m!4337619 () Bool)

(assert (=> d!1122774 m!4337619))

(assert (=> b!3805390 m!4337599))

(assert (=> b!3805390 m!4337601))

(assert (=> b!3803677 d!1122774))

(declare-fun d!1122776 () Bool)

(declare-fun lt!1319627 () Bool)

(assert (=> d!1122776 (= lt!1319627 (isEmpty!23763 (list!14991 (_1!22881 lt!1318985))))))

(assert (=> d!1122776 (= lt!1319627 (isEmpty!23771 (c!661415 (_1!22881 lt!1318985))))))

(assert (=> d!1122776 (= (isEmpty!23766 (_1!22881 lt!1318985)) lt!1319627)))

(declare-fun bs!579800 () Bool)

(assert (= bs!579800 d!1122776))

(assert (=> bs!579800 m!4335173))

(assert (=> bs!579800 m!4335173))

(declare-fun m!4337621 () Bool)

(assert (=> bs!579800 m!4337621))

(declare-fun m!4337623 () Bool)

(assert (=> bs!579800 m!4337623))

(assert (=> b!3803725 d!1122776))

(declare-fun d!1122778 () Bool)

(declare-fun c!661920 () Bool)

(assert (=> d!1122778 (= c!661920 ((_ is Nil!40365) lt!1318914))))

(declare-fun e!2351469 () (InoxSet Token!11562))

(assert (=> d!1122778 (= (content!5955 lt!1318914) e!2351469)))

(declare-fun b!3805394 () Bool)

(assert (=> b!3805394 (= e!2351469 ((as const (Array Token!11562 Bool)) false))))

(declare-fun b!3805395 () Bool)

(assert (=> b!3805395 (= e!2351469 ((_ map or) (store ((as const (Array Token!11562 Bool)) false) (h!45785 lt!1318914) true) (content!5955 (t!307218 lt!1318914))))))

(assert (= (and d!1122778 c!661920) b!3805394))

(assert (= (and d!1122778 (not c!661920)) b!3805395))

(declare-fun m!4337625 () Bool)

(assert (=> b!3805395 m!4337625))

(declare-fun m!4337627 () Bool)

(assert (=> b!3805395 m!4337627))

(assert (=> d!1121954 d!1122778))

(assert (=> d!1121954 d!1122092))

(assert (=> d!1121954 d!1122084))

(declare-fun b!3805398 () Bool)

(declare-fun res!1540683 () Bool)

(declare-fun e!2351470 () Bool)

(assert (=> b!3805398 (=> (not res!1540683) (not e!2351470))))

(declare-fun lt!1319628 () List!40489)

(assert (=> b!3805398 (= res!1540683 (= (size!30391 lt!1319628) (+ (size!30391 (t!307218 lt!1318801)) (size!30391 lt!1318784))))))

(declare-fun d!1122780 () Bool)

(assert (=> d!1122780 e!2351470))

(declare-fun res!1540682 () Bool)

(assert (=> d!1122780 (=> (not res!1540682) (not e!2351470))))

(assert (=> d!1122780 (= res!1540682 (= (content!5955 lt!1319628) ((_ map or) (content!5955 (t!307218 lt!1318801)) (content!5955 lt!1318784))))))

(declare-fun e!2351471 () List!40489)

(assert (=> d!1122780 (= lt!1319628 e!2351471)))

(declare-fun c!661921 () Bool)

(assert (=> d!1122780 (= c!661921 ((_ is Nil!40365) (t!307218 lt!1318801)))))

(assert (=> d!1122780 (= (++!10134 (t!307218 lt!1318801) lt!1318784) lt!1319628)))

(declare-fun b!3805396 () Bool)

(assert (=> b!3805396 (= e!2351471 lt!1318784)))

(declare-fun b!3805397 () Bool)

(assert (=> b!3805397 (= e!2351471 (Cons!40365 (h!45785 (t!307218 lt!1318801)) (++!10134 (t!307218 (t!307218 lt!1318801)) lt!1318784)))))

(declare-fun b!3805399 () Bool)

(assert (=> b!3805399 (= e!2351470 (or (not (= lt!1318784 Nil!40365)) (= lt!1319628 (t!307218 lt!1318801))))))

(assert (= (and d!1122780 c!661921) b!3805396))

(assert (= (and d!1122780 (not c!661921)) b!3805397))

(assert (= (and d!1122780 res!1540682) b!3805398))

(assert (= (and b!3805398 res!1540683) b!3805399))

(declare-fun m!4337629 () Bool)

(assert (=> b!3805398 m!4337629))

(assert (=> b!3805398 m!4335327))

(assert (=> b!3805398 m!4334927))

(declare-fun m!4337631 () Bool)

(assert (=> d!1122780 m!4337631))

(assert (=> d!1122780 m!4335331))

(assert (=> d!1122780 m!4334933))

(declare-fun m!4337633 () Bool)

(assert (=> b!3805397 m!4337633))

(assert (=> b!3803668 d!1122780))

(assert (=> b!3803720 d!1122124))

(assert (=> b!3803720 d!1122134))

(assert (=> b!3803759 d!1122640))

(assert (=> b!3803759 d!1122362))

(assert (=> b!3803759 d!1122356))

(assert (=> b!3803759 d!1121994))

(declare-fun b!3805402 () Bool)

(declare-fun e!2351473 () List!40487)

(assert (=> b!3805402 (= e!2351473 (list!15000 (xs!15664 (c!661414 (_2!22881 lt!1318789)))))))

(declare-fun b!3805401 () Bool)

(declare-fun e!2351472 () List!40487)

(assert (=> b!3805401 (= e!2351472 e!2351473)))

(declare-fun c!661923 () Bool)

(assert (=> b!3805401 (= c!661923 ((_ is Leaf!19202) (c!661414 (_2!22881 lt!1318789))))))

(declare-fun b!3805400 () Bool)

(assert (=> b!3805400 (= e!2351472 Nil!40363)))

(declare-fun b!3805403 () Bool)

(assert (=> b!3805403 (= e!2351473 (++!10133 (list!14996 (left!31229 (c!661414 (_2!22881 lt!1318789)))) (list!14996 (right!31559 (c!661414 (_2!22881 lt!1318789))))))))

(declare-fun d!1122782 () Bool)

(declare-fun c!661922 () Bool)

(assert (=> d!1122782 (= c!661922 ((_ is Empty!12398) (c!661414 (_2!22881 lt!1318789))))))

(assert (=> d!1122782 (= (list!14996 (c!661414 (_2!22881 lt!1318789))) e!2351472)))

(assert (= (and d!1122782 c!661922) b!3805400))

(assert (= (and d!1122782 (not c!661922)) b!3805401))

(assert (= (and b!3805401 c!661923) b!3805402))

(assert (= (and b!3805401 (not c!661923)) b!3805403))

(declare-fun m!4337635 () Bool)

(assert (=> b!3805402 m!4337635))

(declare-fun m!4337637 () Bool)

(assert (=> b!3805403 m!4337637))

(declare-fun m!4337639 () Bool)

(assert (=> b!3805403 m!4337639))

(assert (=> b!3805403 m!4337637))

(assert (=> b!3805403 m!4337639))

(declare-fun m!4337641 () Bool)

(assert (=> b!3805403 m!4337641))

(assert (=> d!1121988 d!1122782))

(declare-fun d!1122784 () Bool)

(assert (=> d!1122784 (= (inv!54341 (xs!15665 (c!661415 acc!335))) (<= (size!30391 (innerList!12459 (xs!15665 (c!661415 acc!335)))) 2147483647))))

(declare-fun bs!579801 () Bool)

(assert (= bs!579801 d!1122784))

(declare-fun m!4337643 () Bool)

(assert (=> bs!579801 m!4337643))

(assert (=> b!3803771 d!1122784))

(declare-fun bs!579802 () Bool)

(declare-fun d!1122786 () Bool)

(assert (= bs!579802 (and d!1122786 d!1122690)))

(declare-fun lambda!125690 () Int)

(assert (=> bs!579802 (= lambda!125690 lambda!125687)))

(assert (=> d!1122786 true))

(declare-fun lt!1319631 () Bool)

(assert (=> d!1122786 (= lt!1319631 (rulesValidInductive!2180 thiss!11876 rules!1265))))

(assert (=> d!1122786 (= lt!1319631 (forall!8257 rules!1265 lambda!125690))))

(assert (=> d!1122786 (= (rulesValid!2394 thiss!11876 rules!1265) lt!1319631)))

(declare-fun bs!579803 () Bool)

(assert (= bs!579803 d!1122786))

(assert (=> bs!579803 m!4335023))

(declare-fun m!4337645 () Bool)

(assert (=> bs!579803 m!4337645))

(assert (=> d!1121998 d!1122786))

(assert (=> b!3803755 d!1122344))

(declare-fun b!3805405 () Bool)

(declare-fun e!2351475 () List!40487)

(assert (=> b!3805405 (= e!2351475 (Cons!40363 (h!45783 (t!307216 lt!1318796)) (++!10133 (t!307216 (t!307216 lt!1318796)) lt!1318797)))))

(declare-fun e!2351474 () Bool)

(declare-fun b!3805407 () Bool)

(declare-fun lt!1319632 () List!40487)

(assert (=> b!3805407 (= e!2351474 (or (not (= lt!1318797 Nil!40363)) (= lt!1319632 (t!307216 lt!1318796))))))

(declare-fun d!1122788 () Bool)

(assert (=> d!1122788 e!2351474))

(declare-fun res!1540684 () Bool)

(assert (=> d!1122788 (=> (not res!1540684) (not e!2351474))))

(assert (=> d!1122788 (= res!1540684 (= (content!5956 lt!1319632) ((_ map or) (content!5956 (t!307216 lt!1318796)) (content!5956 lt!1318797))))))

(assert (=> d!1122788 (= lt!1319632 e!2351475)))

(declare-fun c!661924 () Bool)

(assert (=> d!1122788 (= c!661924 ((_ is Nil!40363) (t!307216 lt!1318796)))))

(assert (=> d!1122788 (= (++!10133 (t!307216 lt!1318796) lt!1318797) lt!1319632)))

(declare-fun b!3805404 () Bool)

(assert (=> b!3805404 (= e!2351475 lt!1318797)))

(declare-fun b!3805406 () Bool)

(declare-fun res!1540685 () Bool)

(assert (=> b!3805406 (=> (not res!1540685) (not e!2351474))))

(assert (=> b!3805406 (= res!1540685 (= (size!30392 lt!1319632) (+ (size!30392 (t!307216 lt!1318796)) (size!30392 lt!1318797))))))

(assert (= (and d!1122788 c!661924) b!3805404))

(assert (= (and d!1122788 (not c!661924)) b!3805405))

(assert (= (and d!1122788 res!1540684) b!3805406))

(assert (= (and b!3805406 res!1540685) b!3805407))

(declare-fun m!4337647 () Bool)

(assert (=> b!3805405 m!4337647))

(declare-fun m!4337649 () Bool)

(assert (=> d!1122788 m!4337649))

(assert (=> d!1122788 m!4335521))

(assert (=> d!1122788 m!4335089))

(declare-fun m!4337651 () Bool)

(assert (=> b!3805406 m!4337651))

(assert (=> b!3805406 m!4336551))

(assert (=> b!3805406 m!4335093))

(assert (=> b!3803687 d!1122788))

(declare-fun d!1122790 () Bool)

(assert (=> d!1122790 true))

(declare-fun order!22029 () Int)

(declare-fun lambda!125693 () Int)

(declare-fun dynLambda!17450 (Int Int) Int)

(assert (=> d!1122790 (< (dynLambda!17449 order!22027 (toValue!8596 (transformation!6212 (h!45784 rules!1265)))) (dynLambda!17450 order!22029 lambda!125693))))

(declare-fun Forall2!1014 (Int) Bool)

(assert (=> d!1122790 (= (equivClasses!2558 (toChars!8455 (transformation!6212 (h!45784 rules!1265))) (toValue!8596 (transformation!6212 (h!45784 rules!1265)))) (Forall2!1014 lambda!125693))))

(declare-fun bs!579804 () Bool)

(assert (= bs!579804 d!1122790))

(declare-fun m!4337653 () Bool)

(assert (=> bs!579804 m!4337653))

(assert (=> b!3803521 d!1122790))

(declare-fun d!1122792 () Bool)

(declare-fun res!1540692 () Bool)

(declare-fun e!2351482 () Bool)

(assert (=> d!1122792 (=> res!1540692 e!2351482)))

(assert (=> d!1122792 (= res!1540692 ((_ is Nil!40364) rules!1265))))

(assert (=> d!1122792 (= (noDuplicateTag!2395 thiss!11876 rules!1265 Nil!40367) e!2351482)))

(declare-fun b!3805416 () Bool)

(declare-fun e!2351483 () Bool)

(assert (=> b!3805416 (= e!2351482 e!2351483)))

(declare-fun res!1540693 () Bool)

(assert (=> b!3805416 (=> (not res!1540693) (not e!2351483))))

(declare-fun contains!8192 (List!40491 String!45892) Bool)

(assert (=> b!3805416 (= res!1540693 (not (contains!8192 Nil!40367 (tag!7072 (h!45784 rules!1265)))))))

(declare-fun b!3805417 () Bool)

(assert (=> b!3805417 (= e!2351483 (noDuplicateTag!2395 thiss!11876 (t!307217 rules!1265) (Cons!40367 (tag!7072 (h!45784 rules!1265)) Nil!40367)))))

(assert (= (and d!1122792 (not res!1540692)) b!3805416))

(assert (= (and b!3805416 res!1540693) b!3805417))

(declare-fun m!4337655 () Bool)

(assert (=> b!3805416 m!4337655))

(declare-fun m!4337657 () Bool)

(assert (=> b!3805417 m!4337657))

(assert (=> b!3803692 d!1122792))

(declare-fun d!1122794 () Bool)

(declare-fun lt!1319633 () Int)

(assert (=> d!1122794 (= lt!1319633 (size!30391 (list!14991 (_1!22881 lt!1318896))))))

(assert (=> d!1122794 (= lt!1319633 (size!30396 (c!661415 (_1!22881 lt!1318896))))))

(assert (=> d!1122794 (= (size!30390 (_1!22881 lt!1318896)) lt!1319633)))

(declare-fun bs!579805 () Bool)

(assert (= bs!579805 d!1122794))

(assert (=> bs!579805 m!4334835))

(assert (=> bs!579805 m!4334835))

(declare-fun m!4337659 () Bool)

(assert (=> bs!579805 m!4337659))

(declare-fun m!4337661 () Bool)

(assert (=> bs!579805 m!4337661))

(assert (=> d!1121852 d!1122794))

(declare-fun b!3805418 () Bool)

(declare-fun e!2351489 () Bool)

(declare-fun e!2351484 () Bool)

(assert (=> b!3805418 (= e!2351489 e!2351484)))

(declare-fun res!1540699 () Bool)

(assert (=> b!3805418 (=> (not res!1540699) (not e!2351484))))

(declare-fun lt!1319637 () Option!8624)

(assert (=> b!3805418 (= res!1540699 (= (_1!22882 (get!13382 lt!1319637)) (_1!22886 (get!13383 (maxPrefixZipper!545 thiss!11876 rules!1265 (list!14992 totalInput!335))))))))

(declare-fun call!279362 () Option!8624)

(declare-fun bm!279357 () Bool)

(assert (=> bm!279357 (= call!279362 (maxPrefixOneRuleZipperSequence!560 thiss!11876 (h!45784 rules!1265) totalInput!335))))

(declare-fun b!3805419 () Bool)

(declare-fun e!2351488 () Bool)

(declare-fun e!2351486 () Bool)

(assert (=> b!3805419 (= e!2351488 e!2351486)))

(declare-fun res!1540695 () Bool)

(assert (=> b!3805419 (=> res!1540695 e!2351486)))

(assert (=> b!3805419 (= res!1540695 (not (isDefined!6786 lt!1319637)))))

(declare-fun b!3805420 () Bool)

(declare-fun e!2351487 () Option!8624)

(declare-fun lt!1319640 () Option!8624)

(declare-fun lt!1319639 () Option!8624)

(assert (=> b!3805420 (= e!2351487 (ite (and ((_ is None!8623) lt!1319640) ((_ is None!8623) lt!1319639)) None!8623 (ite ((_ is None!8623) lt!1319639) lt!1319640 (ite ((_ is None!8623) lt!1319640) lt!1319639 (ite (>= (size!30384 (_1!22882 (v!38847 lt!1319640))) (size!30384 (_1!22882 (v!38847 lt!1319639)))) lt!1319640 lt!1319639)))))))

(assert (=> b!3805420 (= lt!1319640 call!279362)))

(assert (=> b!3805420 (= lt!1319639 (maxPrefixZipperSequence!1207 thiss!11876 (t!307217 rules!1265) totalInput!335))))

(declare-fun b!3805421 () Bool)

(declare-fun res!1540694 () Bool)

(assert (=> b!3805421 (=> (not res!1540694) (not e!2351488))))

(assert (=> b!3805421 (= res!1540694 e!2351489)))

(declare-fun res!1540697 () Bool)

(assert (=> b!3805421 (=> res!1540697 e!2351489)))

(assert (=> b!3805421 (= res!1540697 (not (isDefined!6786 lt!1319637)))))

(declare-fun d!1122796 () Bool)

(assert (=> d!1122796 e!2351488))

(declare-fun res!1540698 () Bool)

(assert (=> d!1122796 (=> (not res!1540698) (not e!2351488))))

(assert (=> d!1122796 (= res!1540698 (= (isDefined!6786 lt!1319637) (isDefined!6787 (maxPrefixZipper!545 thiss!11876 rules!1265 (list!14992 totalInput!335)))))))

(assert (=> d!1122796 (= lt!1319637 e!2351487)))

(declare-fun c!661925 () Bool)

(assert (=> d!1122796 (= c!661925 (and ((_ is Cons!40364) rules!1265) ((_ is Nil!40364) (t!307217 rules!1265))))))

(declare-fun lt!1319634 () Unit!58104)

(declare-fun lt!1319638 () Unit!58104)

(assert (=> d!1122796 (= lt!1319634 lt!1319638)))

(declare-fun lt!1319636 () List!40487)

(declare-fun lt!1319635 () List!40487)

(assert (=> d!1122796 (isPrefix!3321 lt!1319636 lt!1319635)))

(assert (=> d!1122796 (= lt!1319638 (lemmaIsPrefixRefl!2106 lt!1319636 lt!1319635))))

(assert (=> d!1122796 (= lt!1319635 (list!14992 totalInput!335))))

(assert (=> d!1122796 (= lt!1319636 (list!14992 totalInput!335))))

(assert (=> d!1122796 (rulesValidInductive!2180 thiss!11876 rules!1265)))

(assert (=> d!1122796 (= (maxPrefixZipperSequence!1207 thiss!11876 rules!1265 totalInput!335) lt!1319637)))

(declare-fun b!3805422 () Bool)

(assert (=> b!3805422 (= e!2351487 call!279362)))

(declare-fun b!3805423 () Bool)

(declare-fun e!2351485 () Bool)

(assert (=> b!3805423 (= e!2351486 e!2351485)))

(declare-fun res!1540696 () Bool)

(assert (=> b!3805423 (=> (not res!1540696) (not e!2351485))))

(assert (=> b!3805423 (= res!1540696 (= (_1!22882 (get!13382 lt!1319637)) (_1!22886 (get!13383 (maxPrefix!3113 thiss!11876 rules!1265 (list!14992 totalInput!335))))))))

(declare-fun b!3805424 () Bool)

(assert (=> b!3805424 (= e!2351485 (= (list!14992 (_2!22882 (get!13382 lt!1319637))) (_2!22886 (get!13383 (maxPrefix!3113 thiss!11876 rules!1265 (list!14992 totalInput!335))))))))

(declare-fun b!3805425 () Bool)

(assert (=> b!3805425 (= e!2351484 (= (list!14992 (_2!22882 (get!13382 lt!1319637))) (_2!22886 (get!13383 (maxPrefixZipper!545 thiss!11876 rules!1265 (list!14992 totalInput!335))))))))

(assert (= (and d!1122796 c!661925) b!3805422))

(assert (= (and d!1122796 (not c!661925)) b!3805420))

(assert (= (or b!3805422 b!3805420) bm!279357))

(assert (= (and d!1122796 res!1540698) b!3805421))

(assert (= (and b!3805421 (not res!1540697)) b!3805418))

(assert (= (and b!3805418 res!1540699) b!3805425))

(assert (= (and b!3805421 res!1540694) b!3805419))

(assert (= (and b!3805419 (not res!1540695)) b!3805423))

(assert (= (and b!3805423 res!1540696) b!3805424))

(declare-fun m!4337663 () Bool)

(assert (=> bm!279357 m!4337663))

(declare-fun m!4337665 () Bool)

(assert (=> b!3805425 m!4337665))

(declare-fun m!4337667 () Bool)

(assert (=> b!3805425 m!4337667))

(declare-fun m!4337669 () Bool)

(assert (=> b!3805425 m!4337669))

(assert (=> b!3805425 m!4334433))

(assert (=> b!3805425 m!4337665))

(assert (=> b!3805425 m!4334433))

(declare-fun m!4337671 () Bool)

(assert (=> b!3805425 m!4337671))

(declare-fun m!4337673 () Bool)

(assert (=> b!3805421 m!4337673))

(assert (=> b!3805424 m!4337669))

(assert (=> b!3805424 m!4334433))

(assert (=> b!3805424 m!4336695))

(assert (=> b!3805424 m!4336695))

(declare-fun m!4337675 () Bool)

(assert (=> b!3805424 m!4337675))

(assert (=> b!3805424 m!4334433))

(assert (=> b!3805424 m!4337671))

(declare-fun m!4337677 () Bool)

(assert (=> b!3805420 m!4337677))

(assert (=> b!3805418 m!4337671))

(assert (=> b!3805418 m!4334433))

(assert (=> b!3805418 m!4334433))

(assert (=> b!3805418 m!4337665))

(assert (=> b!3805418 m!4337665))

(assert (=> b!3805418 m!4337667))

(assert (=> b!3805423 m!4337671))

(assert (=> b!3805423 m!4334433))

(assert (=> b!3805423 m!4334433))

(assert (=> b!3805423 m!4336695))

(assert (=> b!3805423 m!4336695))

(assert (=> b!3805423 m!4337675))

(assert (=> b!3805419 m!4337673))

(assert (=> d!1122796 m!4334433))

(assert (=> d!1122796 m!4337673))

(declare-fun m!4337679 () Bool)

(assert (=> d!1122796 m!4337679))

(assert (=> d!1122796 m!4335023))

(assert (=> d!1122796 m!4337665))

(declare-fun m!4337681 () Bool)

(assert (=> d!1122796 m!4337681))

(declare-fun m!4337683 () Bool)

(assert (=> d!1122796 m!4337683))

(assert (=> d!1122796 m!4334433))

(assert (=> d!1122796 m!4337665))

(assert (=> d!1121852 d!1122796))

(declare-fun d!1122798 () Bool)

(declare-fun lt!1319641 () Int)

(assert (=> d!1122798 (= lt!1319641 (size!30392 (list!14992 (_2!22881 lt!1318899))))))

(assert (=> d!1122798 (= lt!1319641 (size!30395 (c!661414 (_2!22881 lt!1318899))))))

(assert (=> d!1122798 (= (size!30389 (_2!22881 lt!1318899)) lt!1319641)))

(declare-fun bs!579806 () Bool)

(assert (= bs!579806 d!1122798))

(assert (=> bs!579806 m!4334849))

(assert (=> bs!579806 m!4334849))

(declare-fun m!4337685 () Bool)

(assert (=> bs!579806 m!4337685))

(declare-fun m!4337687 () Bool)

(assert (=> bs!579806 m!4337687))

(assert (=> b!3803513 d!1122798))

(declare-fun d!1122800 () Bool)

(declare-fun lt!1319642 () Int)

(assert (=> d!1122800 (= lt!1319642 (size!30392 (list!14992 input!678)))))

(assert (=> d!1122800 (= lt!1319642 (size!30395 (c!661414 input!678)))))

(assert (=> d!1122800 (= (size!30389 input!678) lt!1319642)))

(declare-fun bs!579807 () Bool)

(assert (= bs!579807 d!1122800))

(assert (=> bs!579807 m!4334435))

(assert (=> bs!579807 m!4334435))

(assert (=> bs!579807 m!4336127))

(declare-fun m!4337689 () Bool)

(assert (=> bs!579807 m!4337689))

(assert (=> b!3803513 d!1122800))

(assert (=> b!3803660 d!1122638))

(assert (=> b!3803660 d!1122364))

(assert (=> b!3803660 d!1121994))

(assert (=> b!3803660 d!1122366))

(assert (=> b!3803660 d!1122642))

(declare-fun d!1122802 () Bool)

(declare-fun lt!1319643 () Int)

(assert (=> d!1122802 (= lt!1319643 (size!30391 (list!14991 (_1!22881 lt!1318972))))))

(assert (=> d!1122802 (= lt!1319643 (size!30396 (c!661415 (_1!22881 lt!1318972))))))

(assert (=> d!1122802 (= (size!30390 (_1!22881 lt!1318972)) lt!1319643)))

(declare-fun bs!579808 () Bool)

(assert (= bs!579808 d!1122802))

(assert (=> bs!579808 m!4335127))

(assert (=> bs!579808 m!4335127))

(declare-fun m!4337691 () Bool)

(assert (=> bs!579808 m!4337691))

(declare-fun m!4337693 () Bool)

(assert (=> bs!579808 m!4337693))

(assert (=> d!1122012 d!1122802))

(declare-fun b!3805426 () Bool)

(declare-fun e!2351495 () Bool)

(declare-fun e!2351490 () Bool)

(assert (=> b!3805426 (= e!2351495 e!2351490)))

(declare-fun res!1540705 () Bool)

(assert (=> b!3805426 (=> (not res!1540705) (not e!2351490))))

(declare-fun lt!1319647 () Option!8624)

(assert (=> b!3805426 (= res!1540705 (= (_1!22882 (get!13382 lt!1319647)) (_1!22886 (get!13383 (maxPrefixZipper!545 thiss!11876 rules!1265 (list!14992 treated!13))))))))

(declare-fun call!279363 () Option!8624)

(declare-fun bm!279358 () Bool)

(assert (=> bm!279358 (= call!279363 (maxPrefixOneRuleZipperSequence!560 thiss!11876 (h!45784 rules!1265) treated!13))))

(declare-fun b!3805427 () Bool)

(declare-fun e!2351494 () Bool)

(declare-fun e!2351492 () Bool)

(assert (=> b!3805427 (= e!2351494 e!2351492)))

(declare-fun res!1540701 () Bool)

(assert (=> b!3805427 (=> res!1540701 e!2351492)))

(assert (=> b!3805427 (= res!1540701 (not (isDefined!6786 lt!1319647)))))

(declare-fun b!3805428 () Bool)

(declare-fun e!2351493 () Option!8624)

(declare-fun lt!1319650 () Option!8624)

(declare-fun lt!1319649 () Option!8624)

(assert (=> b!3805428 (= e!2351493 (ite (and ((_ is None!8623) lt!1319650) ((_ is None!8623) lt!1319649)) None!8623 (ite ((_ is None!8623) lt!1319649) lt!1319650 (ite ((_ is None!8623) lt!1319650) lt!1319649 (ite (>= (size!30384 (_1!22882 (v!38847 lt!1319650))) (size!30384 (_1!22882 (v!38847 lt!1319649)))) lt!1319650 lt!1319649)))))))

(assert (=> b!3805428 (= lt!1319650 call!279363)))

(assert (=> b!3805428 (= lt!1319649 (maxPrefixZipperSequence!1207 thiss!11876 (t!307217 rules!1265) treated!13))))

(declare-fun b!3805429 () Bool)

(declare-fun res!1540700 () Bool)

(assert (=> b!3805429 (=> (not res!1540700) (not e!2351494))))

(assert (=> b!3805429 (= res!1540700 e!2351495)))

(declare-fun res!1540703 () Bool)

(assert (=> b!3805429 (=> res!1540703 e!2351495)))

(assert (=> b!3805429 (= res!1540703 (not (isDefined!6786 lt!1319647)))))

(declare-fun d!1122804 () Bool)

(assert (=> d!1122804 e!2351494))

(declare-fun res!1540704 () Bool)

(assert (=> d!1122804 (=> (not res!1540704) (not e!2351494))))

(assert (=> d!1122804 (= res!1540704 (= (isDefined!6786 lt!1319647) (isDefined!6787 (maxPrefixZipper!545 thiss!11876 rules!1265 (list!14992 treated!13)))))))

(assert (=> d!1122804 (= lt!1319647 e!2351493)))

(declare-fun c!661926 () Bool)

(assert (=> d!1122804 (= c!661926 (and ((_ is Cons!40364) rules!1265) ((_ is Nil!40364) (t!307217 rules!1265))))))

(declare-fun lt!1319644 () Unit!58104)

(declare-fun lt!1319648 () Unit!58104)

(assert (=> d!1122804 (= lt!1319644 lt!1319648)))

(declare-fun lt!1319646 () List!40487)

(declare-fun lt!1319645 () List!40487)

(assert (=> d!1122804 (isPrefix!3321 lt!1319646 lt!1319645)))

(assert (=> d!1122804 (= lt!1319648 (lemmaIsPrefixRefl!2106 lt!1319646 lt!1319645))))

(assert (=> d!1122804 (= lt!1319645 (list!14992 treated!13))))

(assert (=> d!1122804 (= lt!1319646 (list!14992 treated!13))))

(assert (=> d!1122804 (rulesValidInductive!2180 thiss!11876 rules!1265)))

(assert (=> d!1122804 (= (maxPrefixZipperSequence!1207 thiss!11876 rules!1265 treated!13) lt!1319647)))

(declare-fun b!3805430 () Bool)

(assert (=> b!3805430 (= e!2351493 call!279363)))

(declare-fun b!3805431 () Bool)

(declare-fun e!2351491 () Bool)

(assert (=> b!3805431 (= e!2351492 e!2351491)))

(declare-fun res!1540702 () Bool)

(assert (=> b!3805431 (=> (not res!1540702) (not e!2351491))))

(assert (=> b!3805431 (= res!1540702 (= (_1!22882 (get!13382 lt!1319647)) (_1!22886 (get!13383 (maxPrefix!3113 thiss!11876 rules!1265 (list!14992 treated!13))))))))

(declare-fun b!3805432 () Bool)

(assert (=> b!3805432 (= e!2351491 (= (list!14992 (_2!22882 (get!13382 lt!1319647))) (_2!22886 (get!13383 (maxPrefix!3113 thiss!11876 rules!1265 (list!14992 treated!13))))))))

(declare-fun b!3805433 () Bool)

(assert (=> b!3805433 (= e!2351490 (= (list!14992 (_2!22882 (get!13382 lt!1319647))) (_2!22886 (get!13383 (maxPrefixZipper!545 thiss!11876 rules!1265 (list!14992 treated!13))))))))

(assert (= (and d!1122804 c!661926) b!3805430))

(assert (= (and d!1122804 (not c!661926)) b!3805428))

(assert (= (or b!3805430 b!3805428) bm!279358))

(assert (= (and d!1122804 res!1540704) b!3805429))

(assert (= (and b!3805429 (not res!1540703)) b!3805426))

(assert (= (and b!3805426 res!1540705) b!3805433))

(assert (= (and b!3805429 res!1540700) b!3805427))

(assert (= (and b!3805427 (not res!1540701)) b!3805431))

(assert (= (and b!3805431 res!1540702) b!3805432))

(declare-fun m!4337695 () Bool)

(assert (=> bm!279358 m!4337695))

(declare-fun m!4337697 () Bool)

(assert (=> b!3805433 m!4337697))

(declare-fun m!4337699 () Bool)

(assert (=> b!3805433 m!4337699))

(declare-fun m!4337701 () Bool)

(assert (=> b!3805433 m!4337701))

(assert (=> b!3805433 m!4334437))

(assert (=> b!3805433 m!4337697))

(assert (=> b!3805433 m!4334437))

(declare-fun m!4337703 () Bool)

(assert (=> b!3805433 m!4337703))

(declare-fun m!4337705 () Bool)

(assert (=> b!3805429 m!4337705))

(assert (=> b!3805432 m!4337701))

(assert (=> b!3805432 m!4334437))

(assert (=> b!3805432 m!4336235))

(assert (=> b!3805432 m!4336235))

(declare-fun m!4337707 () Bool)

(assert (=> b!3805432 m!4337707))

(assert (=> b!3805432 m!4334437))

(assert (=> b!3805432 m!4337703))

(declare-fun m!4337709 () Bool)

(assert (=> b!3805428 m!4337709))

(assert (=> b!3805426 m!4337703))

(assert (=> b!3805426 m!4334437))

(assert (=> b!3805426 m!4334437))

(assert (=> b!3805426 m!4337697))

(assert (=> b!3805426 m!4337697))

(assert (=> b!3805426 m!4337699))

(assert (=> b!3805431 m!4337703))

(assert (=> b!3805431 m!4334437))

(assert (=> b!3805431 m!4334437))

(assert (=> b!3805431 m!4336235))

(assert (=> b!3805431 m!4336235))

(assert (=> b!3805431 m!4337707))

(assert (=> b!3805427 m!4337705))

(assert (=> d!1122804 m!4334437))

(assert (=> d!1122804 m!4337705))

(declare-fun m!4337711 () Bool)

(assert (=> d!1122804 m!4337711))

(assert (=> d!1122804 m!4335023))

(assert (=> d!1122804 m!4337697))

(declare-fun m!4337713 () Bool)

(assert (=> d!1122804 m!4337713))

(declare-fun m!4337715 () Bool)

(assert (=> d!1122804 m!4337715))

(assert (=> d!1122804 m!4334437))

(assert (=> d!1122804 m!4337697))

(assert (=> d!1122012 d!1122804))

(declare-fun d!1122806 () Bool)

(declare-fun lt!1319651 () Int)

(assert (=> d!1122806 (>= lt!1319651 0)))

(declare-fun e!2351496 () Int)

(assert (=> d!1122806 (= lt!1319651 e!2351496)))

(declare-fun c!661927 () Bool)

(assert (=> d!1122806 (= c!661927 ((_ is Nil!40365) lt!1318914))))

(assert (=> d!1122806 (= (size!30391 lt!1318914) lt!1319651)))

(declare-fun b!3805434 () Bool)

(assert (=> b!3805434 (= e!2351496 0)))

(declare-fun b!3805435 () Bool)

(assert (=> b!3805435 (= e!2351496 (+ 1 (size!30391 (t!307218 lt!1318914))))))

(assert (= (and d!1122806 c!661927) b!3805434))

(assert (= (and d!1122806 (not c!661927)) b!3805435))

(declare-fun m!4337717 () Bool)

(assert (=> b!3805435 m!4337717))

(assert (=> b!3803555 d!1122806))

(assert (=> b!3803555 d!1122382))

(assert (=> b!3803555 d!1122498))

(declare-fun d!1122808 () Bool)

(declare-fun res!1540706 () Bool)

(declare-fun e!2351497 () Bool)

(assert (=> d!1122808 (=> (not res!1540706) (not e!2351497))))

(assert (=> d!1122808 (= res!1540706 (<= (size!30392 (list!15000 (xs!15664 (c!661414 totalInput!335)))) 512))))

(assert (=> d!1122808 (= (inv!54338 (c!661414 totalInput!335)) e!2351497)))

(declare-fun b!3805436 () Bool)

(declare-fun res!1540707 () Bool)

(assert (=> b!3805436 (=> (not res!1540707) (not e!2351497))))

(assert (=> b!3805436 (= res!1540707 (= (csize!25027 (c!661414 totalInput!335)) (size!30392 (list!15000 (xs!15664 (c!661414 totalInput!335))))))))

(declare-fun b!3805437 () Bool)

(assert (=> b!3805437 (= e!2351497 (and (> (csize!25027 (c!661414 totalInput!335)) 0) (<= (csize!25027 (c!661414 totalInput!335)) 512)))))

(assert (= (and d!1122808 res!1540706) b!3805436))

(assert (= (and b!3805436 res!1540707) b!3805437))

(assert (=> d!1122808 m!4336723))

(assert (=> d!1122808 m!4336723))

(declare-fun m!4337719 () Bool)

(assert (=> d!1122808 m!4337719))

(assert (=> b!3805436 m!4336723))

(assert (=> b!3805436 m!4336723))

(assert (=> b!3805436 m!4337719))

(assert (=> b!3803701 d!1122808))

(declare-fun b!3805438 () Bool)

(declare-fun e!2351498 () Bool)

(assert (=> b!3805438 (= e!2351498 (not (isEmpty!23771 (right!31560 (++!10136 (c!661415 acc!335) (c!661415 (_1!22881 lt!1318791)))))))))

(declare-fun b!3805439 () Bool)

(declare-fun res!1540712 () Bool)

(assert (=> b!3805439 (=> (not res!1540712) (not e!2351498))))

(assert (=> b!3805439 (= res!1540712 (<= (- (height!1794 (left!31230 (++!10136 (c!661415 acc!335) (c!661415 (_1!22881 lt!1318791))))) (height!1794 (right!31560 (++!10136 (c!661415 acc!335) (c!661415 (_1!22881 lt!1318791)))))) 1))))

(declare-fun b!3805440 () Bool)

(declare-fun res!1540711 () Bool)

(assert (=> b!3805440 (=> (not res!1540711) (not e!2351498))))

(assert (=> b!3805440 (= res!1540711 (isBalanced!3576 (left!31230 (++!10136 (c!661415 acc!335) (c!661415 (_1!22881 lt!1318791))))))))

(declare-fun b!3805441 () Bool)

(declare-fun e!2351499 () Bool)

(assert (=> b!3805441 (= e!2351499 e!2351498)))

(declare-fun res!1540710 () Bool)

(assert (=> b!3805441 (=> (not res!1540710) (not e!2351498))))

(assert (=> b!3805441 (= res!1540710 (<= (- 1) (- (height!1794 (left!31230 (++!10136 (c!661415 acc!335) (c!661415 (_1!22881 lt!1318791))))) (height!1794 (right!31560 (++!10136 (c!661415 acc!335) (c!661415 (_1!22881 lt!1318791))))))))))

(declare-fun b!3805442 () Bool)

(declare-fun res!1540713 () Bool)

(assert (=> b!3805442 (=> (not res!1540713) (not e!2351498))))

(assert (=> b!3805442 (= res!1540713 (not (isEmpty!23771 (left!31230 (++!10136 (c!661415 acc!335) (c!661415 (_1!22881 lt!1318791)))))))))

(declare-fun d!1122810 () Bool)

(declare-fun res!1540709 () Bool)

(assert (=> d!1122810 (=> res!1540709 e!2351499)))

(assert (=> d!1122810 (= res!1540709 (not ((_ is Node!12399) (++!10136 (c!661415 acc!335) (c!661415 (_1!22881 lt!1318791))))))))

(assert (=> d!1122810 (= (isBalanced!3576 (++!10136 (c!661415 acc!335) (c!661415 (_1!22881 lt!1318791)))) e!2351499)))

(declare-fun b!3805443 () Bool)

(declare-fun res!1540708 () Bool)

(assert (=> b!3805443 (=> (not res!1540708) (not e!2351498))))

(assert (=> b!3805443 (= res!1540708 (isBalanced!3576 (right!31560 (++!10136 (c!661415 acc!335) (c!661415 (_1!22881 lt!1318791))))))))

(assert (= (and d!1122810 (not res!1540709)) b!3805441))

(assert (= (and b!3805441 res!1540710) b!3805439))

(assert (= (and b!3805439 res!1540712) b!3805440))

(assert (= (and b!3805440 res!1540711) b!3805443))

(assert (= (and b!3805443 res!1540708) b!3805442))

(assert (= (and b!3805442 res!1540713) b!3805438))

(declare-fun m!4337721 () Bool)

(assert (=> b!3805439 m!4337721))

(declare-fun m!4337723 () Bool)

(assert (=> b!3805439 m!4337723))

(declare-fun m!4337725 () Bool)

(assert (=> b!3805440 m!4337725))

(declare-fun m!4337727 () Bool)

(assert (=> b!3805438 m!4337727))

(assert (=> b!3805441 m!4337721))

(assert (=> b!3805441 m!4337723))

(declare-fun m!4337729 () Bool)

(assert (=> b!3805442 m!4337729))

(declare-fun m!4337731 () Bool)

(assert (=> b!3805443 m!4337731))

(assert (=> b!3803333 d!1122810))

(assert (=> b!3803333 d!1122416))

(declare-fun b!3805444 () Bool)

(declare-fun e!2351505 () Bool)

(declare-fun e!2351500 () Bool)

(assert (=> b!3805444 (= e!2351505 e!2351500)))

(declare-fun res!1540719 () Bool)

(assert (=> b!3805444 (=> (not res!1540719) (not e!2351500))))

(declare-fun lt!1319655 () Option!8624)

(assert (=> b!3805444 (= res!1540719 (= (_1!22882 (get!13382 lt!1319655)) (_1!22886 (get!13383 (maxPrefixZipper!545 thiss!11876 (t!307217 rules!1265) (list!14992 input!678))))))))

(declare-fun call!279364 () Option!8624)

(declare-fun bm!279359 () Bool)

(assert (=> bm!279359 (= call!279364 (maxPrefixOneRuleZipperSequence!560 thiss!11876 (h!45784 (t!307217 rules!1265)) input!678))))

(declare-fun b!3805445 () Bool)

(declare-fun e!2351504 () Bool)

(declare-fun e!2351502 () Bool)

(assert (=> b!3805445 (= e!2351504 e!2351502)))

(declare-fun res!1540715 () Bool)

(assert (=> b!3805445 (=> res!1540715 e!2351502)))

(assert (=> b!3805445 (= res!1540715 (not (isDefined!6786 lt!1319655)))))

(declare-fun b!3805446 () Bool)

(declare-fun e!2351503 () Option!8624)

(declare-fun lt!1319658 () Option!8624)

(declare-fun lt!1319657 () Option!8624)

(assert (=> b!3805446 (= e!2351503 (ite (and ((_ is None!8623) lt!1319658) ((_ is None!8623) lt!1319657)) None!8623 (ite ((_ is None!8623) lt!1319657) lt!1319658 (ite ((_ is None!8623) lt!1319658) lt!1319657 (ite (>= (size!30384 (_1!22882 (v!38847 lt!1319658))) (size!30384 (_1!22882 (v!38847 lt!1319657)))) lt!1319658 lt!1319657)))))))

(assert (=> b!3805446 (= lt!1319658 call!279364)))

(assert (=> b!3805446 (= lt!1319657 (maxPrefixZipperSequence!1207 thiss!11876 (t!307217 (t!307217 rules!1265)) input!678))))

(declare-fun b!3805447 () Bool)

(declare-fun res!1540714 () Bool)

(assert (=> b!3805447 (=> (not res!1540714) (not e!2351504))))

(assert (=> b!3805447 (= res!1540714 e!2351505)))

(declare-fun res!1540717 () Bool)

(assert (=> b!3805447 (=> res!1540717 e!2351505)))

(assert (=> b!3805447 (= res!1540717 (not (isDefined!6786 lt!1319655)))))

(declare-fun d!1122812 () Bool)

(assert (=> d!1122812 e!2351504))

(declare-fun res!1540718 () Bool)

(assert (=> d!1122812 (=> (not res!1540718) (not e!2351504))))

(assert (=> d!1122812 (= res!1540718 (= (isDefined!6786 lt!1319655) (isDefined!6787 (maxPrefixZipper!545 thiss!11876 (t!307217 rules!1265) (list!14992 input!678)))))))

(assert (=> d!1122812 (= lt!1319655 e!2351503)))

(declare-fun c!661928 () Bool)

(assert (=> d!1122812 (= c!661928 (and ((_ is Cons!40364) (t!307217 rules!1265)) ((_ is Nil!40364) (t!307217 (t!307217 rules!1265)))))))

(declare-fun lt!1319652 () Unit!58104)

(declare-fun lt!1319656 () Unit!58104)

(assert (=> d!1122812 (= lt!1319652 lt!1319656)))

(declare-fun lt!1319654 () List!40487)

(declare-fun lt!1319653 () List!40487)

(assert (=> d!1122812 (isPrefix!3321 lt!1319654 lt!1319653)))

(assert (=> d!1122812 (= lt!1319656 (lemmaIsPrefixRefl!2106 lt!1319654 lt!1319653))))

(assert (=> d!1122812 (= lt!1319653 (list!14992 input!678))))

(assert (=> d!1122812 (= lt!1319654 (list!14992 input!678))))

(assert (=> d!1122812 (rulesValidInductive!2180 thiss!11876 (t!307217 rules!1265))))

(assert (=> d!1122812 (= (maxPrefixZipperSequence!1207 thiss!11876 (t!307217 rules!1265) input!678) lt!1319655)))

(declare-fun b!3805448 () Bool)

(assert (=> b!3805448 (= e!2351503 call!279364)))

(declare-fun b!3805449 () Bool)

(declare-fun e!2351501 () Bool)

(assert (=> b!3805449 (= e!2351502 e!2351501)))

(declare-fun res!1540716 () Bool)

(assert (=> b!3805449 (=> (not res!1540716) (not e!2351501))))

(assert (=> b!3805449 (= res!1540716 (= (_1!22882 (get!13382 lt!1319655)) (_1!22886 (get!13383 (maxPrefix!3113 thiss!11876 (t!307217 rules!1265) (list!14992 input!678))))))))

(declare-fun b!3805450 () Bool)

(assert (=> b!3805450 (= e!2351501 (= (list!14992 (_2!22882 (get!13382 lt!1319655))) (_2!22886 (get!13383 (maxPrefix!3113 thiss!11876 (t!307217 rules!1265) (list!14992 input!678))))))))

(declare-fun b!3805451 () Bool)

(assert (=> b!3805451 (= e!2351500 (= (list!14992 (_2!22882 (get!13382 lt!1319655))) (_2!22886 (get!13383 (maxPrefixZipper!545 thiss!11876 (t!307217 rules!1265) (list!14992 input!678))))))))

(assert (= (and d!1122812 c!661928) b!3805448))

(assert (= (and d!1122812 (not c!661928)) b!3805446))

(assert (= (or b!3805448 b!3805446) bm!279359))

(assert (= (and d!1122812 res!1540718) b!3805447))

(assert (= (and b!3805447 (not res!1540717)) b!3805444))

(assert (= (and b!3805444 res!1540719) b!3805451))

(assert (= (and b!3805447 res!1540714) b!3805445))

(assert (= (and b!3805445 (not res!1540715)) b!3805449))

(assert (= (and b!3805449 res!1540716) b!3805450))

(declare-fun m!4337733 () Bool)

(assert (=> bm!279359 m!4337733))

(assert (=> b!3805451 m!4336195))

(assert (=> b!3805451 m!4337373))

(declare-fun m!4337735 () Bool)

(assert (=> b!3805451 m!4337735))

(assert (=> b!3805451 m!4334435))

(assert (=> b!3805451 m!4336195))

(assert (=> b!3805451 m!4334435))

(declare-fun m!4337737 () Bool)

(assert (=> b!3805451 m!4337737))

(declare-fun m!4337739 () Bool)

(assert (=> b!3805447 m!4337739))

(assert (=> b!3805450 m!4337735))

(assert (=> b!3805450 m!4334435))

(assert (=> b!3805450 m!4337193))

(assert (=> b!3805450 m!4337193))

(assert (=> b!3805450 m!4337379))

(assert (=> b!3805450 m!4334435))

(assert (=> b!3805450 m!4337737))

(declare-fun m!4337741 () Bool)

(assert (=> b!3805446 m!4337741))

(assert (=> b!3805444 m!4337737))

(assert (=> b!3805444 m!4334435))

(assert (=> b!3805444 m!4334435))

(assert (=> b!3805444 m!4336195))

(assert (=> b!3805444 m!4336195))

(assert (=> b!3805444 m!4337373))

(assert (=> b!3805449 m!4337737))

(assert (=> b!3805449 m!4334435))

(assert (=> b!3805449 m!4334435))

(assert (=> b!3805449 m!4337193))

(assert (=> b!3805449 m!4337193))

(assert (=> b!3805449 m!4337379))

(assert (=> b!3805445 m!4337739))

(assert (=> d!1122812 m!4334435))

(assert (=> d!1122812 m!4337739))

(declare-fun m!4337743 () Bool)

(assert (=> d!1122812 m!4337743))

(assert (=> d!1122812 m!4337363))

(assert (=> d!1122812 m!4336195))

(assert (=> d!1122812 m!4337361))

(declare-fun m!4337745 () Bool)

(assert (=> d!1122812 m!4337745))

(assert (=> d!1122812 m!4334435))

(assert (=> d!1122812 m!4336195))

(assert (=> b!3803656 d!1122812))

(declare-fun b!3805454 () Bool)

(declare-fun res!1540721 () Bool)

(declare-fun e!2351506 () Bool)

(assert (=> b!3805454 (=> (not res!1540721) (not e!2351506))))

(declare-fun lt!1319659 () List!40489)

(assert (=> b!3805454 (= res!1540721 (= (size!30391 lt!1319659) (+ (size!30391 (t!307218 (++!10134 lt!1318801 lt!1318784))) (size!30391 lt!1318802))))))

(declare-fun d!1122814 () Bool)

(assert (=> d!1122814 e!2351506))

(declare-fun res!1540720 () Bool)

(assert (=> d!1122814 (=> (not res!1540720) (not e!2351506))))

(assert (=> d!1122814 (= res!1540720 (= (content!5955 lt!1319659) ((_ map or) (content!5955 (t!307218 (++!10134 lt!1318801 lt!1318784))) (content!5955 lt!1318802))))))

(declare-fun e!2351507 () List!40489)

(assert (=> d!1122814 (= lt!1319659 e!2351507)))

(declare-fun c!661929 () Bool)

(assert (=> d!1122814 (= c!661929 ((_ is Nil!40365) (t!307218 (++!10134 lt!1318801 lt!1318784))))))

(assert (=> d!1122814 (= (++!10134 (t!307218 (++!10134 lt!1318801 lt!1318784)) lt!1318802) lt!1319659)))

(declare-fun b!3805452 () Bool)

(assert (=> b!3805452 (= e!2351507 lt!1318802)))

(declare-fun b!3805453 () Bool)

(assert (=> b!3805453 (= e!2351507 (Cons!40365 (h!45785 (t!307218 (++!10134 lt!1318801 lt!1318784))) (++!10134 (t!307218 (t!307218 (++!10134 lt!1318801 lt!1318784))) lt!1318802)))))

(declare-fun b!3805455 () Bool)

(assert (=> b!3805455 (= e!2351506 (or (not (= lt!1318802 Nil!40365)) (= lt!1319659 (t!307218 (++!10134 lt!1318801 lt!1318784)))))))

(assert (= (and d!1122814 c!661929) b!3805452))

(assert (= (and d!1122814 (not c!661929)) b!3805453))

(assert (= (and d!1122814 res!1540720) b!3805454))

(assert (= (and b!3805454 res!1540721) b!3805455))

(declare-fun m!4337747 () Bool)

(assert (=> b!3805454 m!4337747))

(assert (=> b!3805454 m!4336541))

(assert (=> b!3805454 m!4334929))

(declare-fun m!4337749 () Bool)

(assert (=> d!1122814 m!4337749))

(assert (=> d!1122814 m!4335363))

(assert (=> d!1122814 m!4334935))

(declare-fun m!4337751 () Bool)

(assert (=> b!3805453 m!4337751))

(assert (=> b!3803679 d!1122814))

(declare-fun tp!1155556 () Bool)

(declare-fun e!2351509 () Bool)

(declare-fun tp!1155554 () Bool)

(declare-fun b!3805456 () Bool)

(assert (=> b!3805456 (= e!2351509 (and (inv!54330 (left!31229 (left!31229 (c!661414 totalInput!335)))) tp!1155554 (inv!54330 (right!31559 (left!31229 (c!661414 totalInput!335)))) tp!1155556))))

(declare-fun b!3805458 () Bool)

(declare-fun e!2351508 () Bool)

(declare-fun tp!1155555 () Bool)

(assert (=> b!3805458 (= e!2351508 tp!1155555)))

(declare-fun b!3805457 () Bool)

(assert (=> b!3805457 (= e!2351509 (and (inv!54342 (xs!15664 (left!31229 (c!661414 totalInput!335)))) e!2351508))))

(assert (=> b!3803801 (= tp!1155458 (and (inv!54330 (left!31229 (c!661414 totalInput!335))) e!2351509))))

(assert (= (and b!3803801 ((_ is Node!12398) (left!31229 (c!661414 totalInput!335)))) b!3805456))

(assert (= b!3805457 b!3805458))

(assert (= (and b!3803801 ((_ is Leaf!19202) (left!31229 (c!661414 totalInput!335)))) b!3805457))

(declare-fun m!4337753 () Bool)

(assert (=> b!3805456 m!4337753))

(declare-fun m!4337755 () Bool)

(assert (=> b!3805456 m!4337755))

(declare-fun m!4337757 () Bool)

(assert (=> b!3805457 m!4337757))

(assert (=> b!3803801 m!4335233))

(declare-fun tp!1155559 () Bool)

(declare-fun tp!1155557 () Bool)

(declare-fun e!2351511 () Bool)

(declare-fun b!3805459 () Bool)

(assert (=> b!3805459 (= e!2351511 (and (inv!54330 (left!31229 (right!31559 (c!661414 totalInput!335)))) tp!1155557 (inv!54330 (right!31559 (right!31559 (c!661414 totalInput!335)))) tp!1155559))))

(declare-fun b!3805461 () Bool)

(declare-fun e!2351510 () Bool)

(declare-fun tp!1155558 () Bool)

(assert (=> b!3805461 (= e!2351510 tp!1155558)))

(declare-fun b!3805460 () Bool)

(assert (=> b!3805460 (= e!2351511 (and (inv!54342 (xs!15664 (right!31559 (c!661414 totalInput!335)))) e!2351510))))

(assert (=> b!3803801 (= tp!1155460 (and (inv!54330 (right!31559 (c!661414 totalInput!335))) e!2351511))))

(assert (= (and b!3803801 ((_ is Node!12398) (right!31559 (c!661414 totalInput!335)))) b!3805459))

(assert (= b!3805460 b!3805461))

(assert (= (and b!3803801 ((_ is Leaf!19202) (right!31559 (c!661414 totalInput!335)))) b!3805460))

(declare-fun m!4337759 () Bool)

(assert (=> b!3805459 m!4337759))

(declare-fun m!4337761 () Bool)

(assert (=> b!3805459 m!4337761))

(declare-fun m!4337763 () Bool)

(assert (=> b!3805460 m!4337763))

(assert (=> b!3803801 m!4335235))

(declare-fun b!3805462 () Bool)

(declare-fun e!2351512 () Bool)

(assert (=> b!3805462 (= e!2351512 tp_is_empty!19185)))

(declare-fun b!3805464 () Bool)

(declare-fun tp!1155561 () Bool)

(assert (=> b!3805464 (= e!2351512 tp!1155561)))

(assert (=> b!3803784 (= tp!1155445 e!2351512)))

(declare-fun b!3805465 () Bool)

(declare-fun tp!1155562 () Bool)

(declare-fun tp!1155560 () Bool)

(assert (=> b!3805465 (= e!2351512 (and tp!1155562 tp!1155560))))

(declare-fun b!3805463 () Bool)

(declare-fun tp!1155564 () Bool)

(declare-fun tp!1155563 () Bool)

(assert (=> b!3805463 (= e!2351512 (and tp!1155564 tp!1155563))))

(assert (= (and b!3803784 ((_ is ElementMatch!11117) (regOne!22746 (regex!6212 (h!45784 rules!1265))))) b!3805462))

(assert (= (and b!3803784 ((_ is Concat!17560) (regOne!22746 (regex!6212 (h!45784 rules!1265))))) b!3805463))

(assert (= (and b!3803784 ((_ is Star!11117) (regOne!22746 (regex!6212 (h!45784 rules!1265))))) b!3805464))

(assert (= (and b!3803784 ((_ is Union!11117) (regOne!22746 (regex!6212 (h!45784 rules!1265))))) b!3805465))

(declare-fun b!3805466 () Bool)

(declare-fun e!2351513 () Bool)

(assert (=> b!3805466 (= e!2351513 tp_is_empty!19185)))

(declare-fun b!3805468 () Bool)

(declare-fun tp!1155566 () Bool)

(assert (=> b!3805468 (= e!2351513 tp!1155566)))

(assert (=> b!3803784 (= tp!1155444 e!2351513)))

(declare-fun b!3805469 () Bool)

(declare-fun tp!1155567 () Bool)

(declare-fun tp!1155565 () Bool)

(assert (=> b!3805469 (= e!2351513 (and tp!1155567 tp!1155565))))

(declare-fun b!3805467 () Bool)

(declare-fun tp!1155569 () Bool)

(declare-fun tp!1155568 () Bool)

(assert (=> b!3805467 (= e!2351513 (and tp!1155569 tp!1155568))))

(assert (= (and b!3803784 ((_ is ElementMatch!11117) (regTwo!22746 (regex!6212 (h!45784 rules!1265))))) b!3805466))

(assert (= (and b!3803784 ((_ is Concat!17560) (regTwo!22746 (regex!6212 (h!45784 rules!1265))))) b!3805467))

(assert (= (and b!3803784 ((_ is Star!11117) (regTwo!22746 (regex!6212 (h!45784 rules!1265))))) b!3805468))

(assert (= (and b!3803784 ((_ is Union!11117) (regTwo!22746 (regex!6212 (h!45784 rules!1265))))) b!3805469))

(declare-fun b!3805470 () Bool)

(declare-fun e!2351514 () Bool)

(assert (=> b!3805470 (= e!2351514 tp_is_empty!19185)))

(declare-fun b!3805472 () Bool)

(declare-fun tp!1155571 () Bool)

(assert (=> b!3805472 (= e!2351514 tp!1155571)))

(assert (=> b!3803813 (= tp!1155472 e!2351514)))

(declare-fun b!3805473 () Bool)

(declare-fun tp!1155572 () Bool)

(declare-fun tp!1155570 () Bool)

(assert (=> b!3805473 (= e!2351514 (and tp!1155572 tp!1155570))))

(declare-fun b!3805471 () Bool)

(declare-fun tp!1155574 () Bool)

(declare-fun tp!1155573 () Bool)

(assert (=> b!3805471 (= e!2351514 (and tp!1155574 tp!1155573))))

(assert (= (and b!3803813 ((_ is ElementMatch!11117) (regex!6212 (h!45784 (t!307217 rules!1265))))) b!3805470))

(assert (= (and b!3803813 ((_ is Concat!17560) (regex!6212 (h!45784 (t!307217 rules!1265))))) b!3805471))

(assert (= (and b!3803813 ((_ is Star!11117) (regex!6212 (h!45784 (t!307217 rules!1265))))) b!3805472))

(assert (= (and b!3803813 ((_ is Union!11117) (regex!6212 (h!45784 (t!307217 rules!1265))))) b!3805473))

(declare-fun e!2351516 () Bool)

(declare-fun tp!1155577 () Bool)

(declare-fun tp!1155575 () Bool)

(declare-fun b!3805474 () Bool)

(assert (=> b!3805474 (= e!2351516 (and (inv!54330 (left!31229 (left!31229 (c!661414 input!678)))) tp!1155575 (inv!54330 (right!31559 (left!31229 (c!661414 input!678)))) tp!1155577))))

(declare-fun b!3805476 () Bool)

(declare-fun e!2351515 () Bool)

(declare-fun tp!1155576 () Bool)

(assert (=> b!3805476 (= e!2351515 tp!1155576)))

(declare-fun b!3805475 () Bool)

(assert (=> b!3805475 (= e!2351516 (and (inv!54342 (xs!15664 (left!31229 (c!661414 input!678)))) e!2351515))))

(assert (=> b!3803795 (= tp!1155452 (and (inv!54330 (left!31229 (c!661414 input!678))) e!2351516))))

(assert (= (and b!3803795 ((_ is Node!12398) (left!31229 (c!661414 input!678)))) b!3805474))

(assert (= b!3805475 b!3805476))

(assert (= (and b!3803795 ((_ is Leaf!19202) (left!31229 (c!661414 input!678)))) b!3805475))

(declare-fun m!4337765 () Bool)

(assert (=> b!3805474 m!4337765))

(declare-fun m!4337767 () Bool)

(assert (=> b!3805474 m!4337767))

(declare-fun m!4337769 () Bool)

(assert (=> b!3805475 m!4337769))

(assert (=> b!3803795 m!4335221))

(declare-fun tp!1155580 () Bool)

(declare-fun b!3805477 () Bool)

(declare-fun e!2351518 () Bool)

(declare-fun tp!1155578 () Bool)

(assert (=> b!3805477 (= e!2351518 (and (inv!54330 (left!31229 (right!31559 (c!661414 input!678)))) tp!1155578 (inv!54330 (right!31559 (right!31559 (c!661414 input!678)))) tp!1155580))))

(declare-fun b!3805479 () Bool)

(declare-fun e!2351517 () Bool)

(declare-fun tp!1155579 () Bool)

(assert (=> b!3805479 (= e!2351517 tp!1155579)))

(declare-fun b!3805478 () Bool)

(assert (=> b!3805478 (= e!2351518 (and (inv!54342 (xs!15664 (right!31559 (c!661414 input!678)))) e!2351517))))

(assert (=> b!3803795 (= tp!1155454 (and (inv!54330 (right!31559 (c!661414 input!678))) e!2351518))))

(assert (= (and b!3803795 ((_ is Node!12398) (right!31559 (c!661414 input!678)))) b!3805477))

(assert (= b!3805478 b!3805479))

(assert (= (and b!3803795 ((_ is Leaf!19202) (right!31559 (c!661414 input!678)))) b!3805478))

(declare-fun m!4337771 () Bool)

(assert (=> b!3805477 m!4337771))

(declare-fun m!4337773 () Bool)

(assert (=> b!3805477 m!4337773))

(declare-fun m!4337775 () Bool)

(assert (=> b!3805478 m!4337775))

(assert (=> b!3803795 m!4335223))

(declare-fun e!2351520 () Bool)

(declare-fun tp!1155581 () Bool)

(declare-fun tp!1155583 () Bool)

(declare-fun b!3805480 () Bool)

(assert (=> b!3805480 (= e!2351520 (and (inv!54327 (left!31230 (left!31230 (c!661415 acc!335)))) tp!1155583 (inv!54327 (right!31560 (left!31230 (c!661415 acc!335)))) tp!1155581))))

(declare-fun b!3805482 () Bool)

(declare-fun e!2351519 () Bool)

(declare-fun tp!1155582 () Bool)

(assert (=> b!3805482 (= e!2351519 tp!1155582)))

(declare-fun b!3805481 () Bool)

(assert (=> b!3805481 (= e!2351520 (and (inv!54341 (xs!15665 (left!31230 (c!661415 acc!335)))) e!2351519))))

(assert (=> b!3803770 (= tp!1155430 (and (inv!54327 (left!31230 (c!661415 acc!335))) e!2351520))))

(assert (= (and b!3803770 ((_ is Node!12399) (left!31230 (c!661415 acc!335)))) b!3805480))

(assert (= b!3805481 b!3805482))

(assert (= (and b!3803770 ((_ is Leaf!19203) (left!31230 (c!661415 acc!335)))) b!3805481))

(declare-fun m!4337777 () Bool)

(assert (=> b!3805480 m!4337777))

(declare-fun m!4337779 () Bool)

(assert (=> b!3805480 m!4337779))

(declare-fun m!4337781 () Bool)

(assert (=> b!3805481 m!4337781))

(assert (=> b!3803770 m!4335215))

(declare-fun b!3805483 () Bool)

(declare-fun tp!1155586 () Bool)

(declare-fun tp!1155584 () Bool)

(declare-fun e!2351522 () Bool)

(assert (=> b!3805483 (= e!2351522 (and (inv!54327 (left!31230 (right!31560 (c!661415 acc!335)))) tp!1155586 (inv!54327 (right!31560 (right!31560 (c!661415 acc!335)))) tp!1155584))))

(declare-fun b!3805485 () Bool)

(declare-fun e!2351521 () Bool)

(declare-fun tp!1155585 () Bool)

(assert (=> b!3805485 (= e!2351521 tp!1155585)))

(declare-fun b!3805484 () Bool)

(assert (=> b!3805484 (= e!2351522 (and (inv!54341 (xs!15665 (right!31560 (c!661415 acc!335)))) e!2351521))))

(assert (=> b!3803770 (= tp!1155428 (and (inv!54327 (right!31560 (c!661415 acc!335))) e!2351522))))

(assert (= (and b!3803770 ((_ is Node!12399) (right!31560 (c!661415 acc!335)))) b!3805483))

(assert (= b!3805484 b!3805485))

(assert (= (and b!3803770 ((_ is Leaf!19203) (right!31560 (c!661415 acc!335)))) b!3805484))

(declare-fun m!4337783 () Bool)

(assert (=> b!3805483 m!4337783))

(declare-fun m!4337785 () Bool)

(assert (=> b!3805483 m!4337785))

(declare-fun m!4337787 () Bool)

(assert (=> b!3805484 m!4337787))

(assert (=> b!3803770 m!4335217))

(declare-fun b!3805488 () Bool)

(declare-fun b_free!101361 () Bool)

(declare-fun b_next!102065 () Bool)

(assert (=> b!3805488 (= b_free!101361 (not b_next!102065))))

(declare-fun tp!1155588 () Bool)

(declare-fun b_and!282763 () Bool)

(assert (=> b!3805488 (= tp!1155588 b_and!282763)))

(declare-fun b_free!101363 () Bool)

(declare-fun b_next!102067 () Bool)

(assert (=> b!3805488 (= b_free!101363 (not b_next!102067))))

(declare-fun tb!218185 () Bool)

(declare-fun t!307250 () Bool)

(assert (=> (and b!3805488 (= (toChars!8455 (transformation!6212 (h!45784 (t!307217 (t!307217 rules!1265))))) (toChars!8455 (transformation!6212 (rule!9008 (_1!22882 (v!38847 lt!1318792)))))) t!307250) tb!218185))

(declare-fun result!266146 () Bool)

(assert (= result!266146 result!266124))

(assert (=> d!1121972 t!307250))

(declare-fun b_and!282765 () Bool)

(declare-fun tp!1155587 () Bool)

(assert (=> b!3805488 (= tp!1155587 (and (=> t!307250 result!266146) b_and!282765))))

(declare-fun e!2351523 () Bool)

(assert (=> b!3805488 (= e!2351523 (and tp!1155588 tp!1155587))))

(declare-fun e!2351524 () Bool)

(declare-fun b!3805487 () Bool)

(declare-fun tp!1155590 () Bool)

(assert (=> b!3805487 (= e!2351524 (and tp!1155590 (inv!54320 (tag!7072 (h!45784 (t!307217 (t!307217 rules!1265))))) (inv!54326 (transformation!6212 (h!45784 (t!307217 (t!307217 rules!1265))))) e!2351523))))

(declare-fun b!3805486 () Bool)

(declare-fun e!2351526 () Bool)

(declare-fun tp!1155589 () Bool)

(assert (=> b!3805486 (= e!2351526 (and e!2351524 tp!1155589))))

(assert (=> b!3803812 (= tp!1155471 e!2351526)))

(assert (= b!3805487 b!3805488))

(assert (= b!3805486 b!3805487))

(assert (= (and b!3803812 ((_ is Cons!40364) (t!307217 (t!307217 rules!1265)))) b!3805486))

(declare-fun m!4337789 () Bool)

(assert (=> b!3805487 m!4337789))

(declare-fun m!4337791 () Bool)

(assert (=> b!3805487 m!4337791))

(declare-fun b!3805493 () Bool)

(declare-fun e!2351529 () Bool)

(declare-fun tp!1155593 () Bool)

(assert (=> b!3805493 (= e!2351529 (and tp_is_empty!19185 tp!1155593))))

(assert (=> b!3803803 (= tp!1155459 e!2351529)))

(assert (= (and b!3803803 ((_ is Cons!40363) (innerList!12458 (xs!15664 (c!661414 totalInput!335))))) b!3805493))

(declare-fun e!2351531 () Bool)

(declare-fun tp!1155594 () Bool)

(declare-fun b!3805494 () Bool)

(declare-fun tp!1155596 () Bool)

(assert (=> b!3805494 (= e!2351531 (and (inv!54330 (left!31229 (left!31229 (c!661414 treated!13)))) tp!1155594 (inv!54330 (right!31559 (left!31229 (c!661414 treated!13)))) tp!1155596))))

(declare-fun b!3805496 () Bool)

(declare-fun e!2351530 () Bool)

(declare-fun tp!1155595 () Bool)

(assert (=> b!3805496 (= e!2351530 tp!1155595)))

(declare-fun b!3805495 () Bool)

(assert (=> b!3805495 (= e!2351531 (and (inv!54342 (xs!15664 (left!31229 (c!661414 treated!13)))) e!2351530))))

(assert (=> b!3803798 (= tp!1155455 (and (inv!54330 (left!31229 (c!661414 treated!13))) e!2351531))))

(assert (= (and b!3803798 ((_ is Node!12398) (left!31229 (c!661414 treated!13)))) b!3805494))

(assert (= b!3805495 b!3805496))

(assert (= (and b!3803798 ((_ is Leaf!19202) (left!31229 (c!661414 treated!13)))) b!3805495))

(declare-fun m!4337793 () Bool)

(assert (=> b!3805494 m!4337793))

(declare-fun m!4337795 () Bool)

(assert (=> b!3805494 m!4337795))

(declare-fun m!4337797 () Bool)

(assert (=> b!3805495 m!4337797))

(assert (=> b!3803798 m!4335227))

(declare-fun tp!1155597 () Bool)

(declare-fun b!3805497 () Bool)

(declare-fun tp!1155599 () Bool)

(declare-fun e!2351533 () Bool)

(assert (=> b!3805497 (= e!2351533 (and (inv!54330 (left!31229 (right!31559 (c!661414 treated!13)))) tp!1155597 (inv!54330 (right!31559 (right!31559 (c!661414 treated!13)))) tp!1155599))))

(declare-fun b!3805499 () Bool)

(declare-fun e!2351532 () Bool)

(declare-fun tp!1155598 () Bool)

(assert (=> b!3805499 (= e!2351532 tp!1155598)))

(declare-fun b!3805498 () Bool)

(assert (=> b!3805498 (= e!2351533 (and (inv!54342 (xs!15664 (right!31559 (c!661414 treated!13)))) e!2351532))))

(assert (=> b!3803798 (= tp!1155457 (and (inv!54330 (right!31559 (c!661414 treated!13))) e!2351533))))

(assert (= (and b!3803798 ((_ is Node!12398) (right!31559 (c!661414 treated!13)))) b!3805497))

(assert (= b!3805498 b!3805499))

(assert (= (and b!3803798 ((_ is Leaf!19202) (right!31559 (c!661414 treated!13)))) b!3805498))

(declare-fun m!4337799 () Bool)

(assert (=> b!3805497 m!4337799))

(declare-fun m!4337801 () Bool)

(assert (=> b!3805497 m!4337801))

(declare-fun m!4337803 () Bool)

(assert (=> b!3805498 m!4337803))

(assert (=> b!3803798 m!4335229))

(declare-fun b!3805500 () Bool)

(declare-fun e!2351534 () Bool)

(assert (=> b!3805500 (= e!2351534 tp_is_empty!19185)))

(declare-fun b!3805502 () Bool)

(declare-fun tp!1155601 () Bool)

(assert (=> b!3805502 (= e!2351534 tp!1155601)))

(assert (=> b!3803786 (= tp!1155443 e!2351534)))

(declare-fun b!3805503 () Bool)

(declare-fun tp!1155602 () Bool)

(declare-fun tp!1155600 () Bool)

(assert (=> b!3805503 (= e!2351534 (and tp!1155602 tp!1155600))))

(declare-fun b!3805501 () Bool)

(declare-fun tp!1155604 () Bool)

(declare-fun tp!1155603 () Bool)

(assert (=> b!3805501 (= e!2351534 (and tp!1155604 tp!1155603))))

(assert (= (and b!3803786 ((_ is ElementMatch!11117) (regOne!22747 (regex!6212 (h!45784 rules!1265))))) b!3805500))

(assert (= (and b!3803786 ((_ is Concat!17560) (regOne!22747 (regex!6212 (h!45784 rules!1265))))) b!3805501))

(assert (= (and b!3803786 ((_ is Star!11117) (regOne!22747 (regex!6212 (h!45784 rules!1265))))) b!3805502))

(assert (= (and b!3803786 ((_ is Union!11117) (regOne!22747 (regex!6212 (h!45784 rules!1265))))) b!3805503))

(declare-fun b!3805504 () Bool)

(declare-fun e!2351535 () Bool)

(assert (=> b!3805504 (= e!2351535 tp_is_empty!19185)))

(declare-fun b!3805506 () Bool)

(declare-fun tp!1155606 () Bool)

(assert (=> b!3805506 (= e!2351535 tp!1155606)))

(assert (=> b!3803786 (= tp!1155441 e!2351535)))

(declare-fun b!3805507 () Bool)

(declare-fun tp!1155607 () Bool)

(declare-fun tp!1155605 () Bool)

(assert (=> b!3805507 (= e!2351535 (and tp!1155607 tp!1155605))))

(declare-fun b!3805505 () Bool)

(declare-fun tp!1155609 () Bool)

(declare-fun tp!1155608 () Bool)

(assert (=> b!3805505 (= e!2351535 (and tp!1155609 tp!1155608))))

(assert (= (and b!3803786 ((_ is ElementMatch!11117) (regTwo!22747 (regex!6212 (h!45784 rules!1265))))) b!3805504))

(assert (= (and b!3803786 ((_ is Concat!17560) (regTwo!22747 (regex!6212 (h!45784 rules!1265))))) b!3805505))

(assert (= (and b!3803786 ((_ is Star!11117) (regTwo!22747 (regex!6212 (h!45784 rules!1265))))) b!3805506))

(assert (= (and b!3803786 ((_ is Union!11117) (regTwo!22747 (regex!6212 (h!45784 rules!1265))))) b!3805507))

(declare-fun b!3805508 () Bool)

(declare-fun e!2351536 () Bool)

(assert (=> b!3805508 (= e!2351536 tp_is_empty!19185)))

(declare-fun b!3805510 () Bool)

(declare-fun tp!1155611 () Bool)

(assert (=> b!3805510 (= e!2351536 tp!1155611)))

(assert (=> b!3803785 (= tp!1155442 e!2351536)))

(declare-fun b!3805511 () Bool)

(declare-fun tp!1155612 () Bool)

(declare-fun tp!1155610 () Bool)

(assert (=> b!3805511 (= e!2351536 (and tp!1155612 tp!1155610))))

(declare-fun b!3805509 () Bool)

(declare-fun tp!1155614 () Bool)

(declare-fun tp!1155613 () Bool)

(assert (=> b!3805509 (= e!2351536 (and tp!1155614 tp!1155613))))

(assert (= (and b!3803785 ((_ is ElementMatch!11117) (reg!11446 (regex!6212 (h!45784 rules!1265))))) b!3805508))

(assert (= (and b!3803785 ((_ is Concat!17560) (reg!11446 (regex!6212 (h!45784 rules!1265))))) b!3805509))

(assert (= (and b!3803785 ((_ is Star!11117) (reg!11446 (regex!6212 (h!45784 rules!1265))))) b!3805510))

(assert (= (and b!3803785 ((_ is Union!11117) (reg!11446 (regex!6212 (h!45784 rules!1265))))) b!3805511))

(declare-fun b!3805512 () Bool)

(declare-fun e!2351537 () Bool)

(declare-fun tp!1155615 () Bool)

(assert (=> b!3805512 (= e!2351537 (and tp_is_empty!19185 tp!1155615))))

(assert (=> b!3803797 (= tp!1155453 e!2351537)))

(assert (= (and b!3803797 ((_ is Cons!40363) (innerList!12458 (xs!15664 (c!661414 input!678))))) b!3805512))

(declare-fun b!3805526 () Bool)

(declare-fun b_free!101365 () Bool)

(declare-fun b_next!102069 () Bool)

(assert (=> b!3805526 (= b_free!101365 (not b_next!102069))))

(declare-fun tp!1155630 () Bool)

(declare-fun b_and!282767 () Bool)

(assert (=> b!3805526 (= tp!1155630 b_and!282767)))

(declare-fun b_free!101367 () Bool)

(declare-fun b_next!102071 () Bool)

(assert (=> b!3805526 (= b_free!101367 (not b_next!102071))))

(declare-fun t!307252 () Bool)

(declare-fun tb!218187 () Bool)

(assert (=> (and b!3805526 (= (toChars!8455 (transformation!6212 (rule!9008 (h!45785 (innerList!12459 (xs!15665 (c!661415 acc!335))))))) (toChars!8455 (transformation!6212 (rule!9008 (_1!22882 (v!38847 lt!1318792)))))) t!307252) tb!218187))

(declare-fun result!266152 () Bool)

(assert (= result!266152 result!266124))

(assert (=> d!1121972 t!307252))

(declare-fun b_and!282769 () Bool)

(declare-fun tp!1155629 () Bool)

(assert (=> b!3805526 (= tp!1155629 (and (=> t!307252 result!266152) b_and!282769))))

(declare-fun e!2351550 () Bool)

(declare-fun b!3805523 () Bool)

(declare-fun tp!1155628 () Bool)

(declare-fun e!2351554 () Bool)

(declare-fun inv!54344 (Token!11562) Bool)

(assert (=> b!3805523 (= e!2351554 (and (inv!54344 (h!45785 (innerList!12459 (xs!15665 (c!661415 acc!335))))) e!2351550 tp!1155628))))

(assert (=> b!3803772 (= tp!1155429 e!2351554)))

(declare-fun e!2351553 () Bool)

(assert (=> b!3805526 (= e!2351553 (and tp!1155630 tp!1155629))))

(declare-fun tp!1155627 () Bool)

(declare-fun e!2351555 () Bool)

(declare-fun b!3805524 () Bool)

(declare-fun inv!21 (TokenValue!6442) Bool)

(assert (=> b!3805524 (= e!2351550 (and (inv!21 (value!197649 (h!45785 (innerList!12459 (xs!15665 (c!661415 acc!335)))))) e!2351555 tp!1155627))))

(declare-fun tp!1155626 () Bool)

(declare-fun b!3805525 () Bool)

(assert (=> b!3805525 (= e!2351555 (and tp!1155626 (inv!54320 (tag!7072 (rule!9008 (h!45785 (innerList!12459 (xs!15665 (c!661415 acc!335))))))) (inv!54326 (transformation!6212 (rule!9008 (h!45785 (innerList!12459 (xs!15665 (c!661415 acc!335))))))) e!2351553))))

(assert (= b!3805525 b!3805526))

(assert (= b!3805524 b!3805525))

(assert (= b!3805523 b!3805524))

(assert (= (and b!3803772 ((_ is Cons!40365) (innerList!12459 (xs!15665 (c!661415 acc!335))))) b!3805523))

(declare-fun m!4337805 () Bool)

(assert (=> b!3805523 m!4337805))

(declare-fun m!4337807 () Bool)

(assert (=> b!3805524 m!4337807))

(declare-fun m!4337809 () Bool)

(assert (=> b!3805525 m!4337809))

(declare-fun m!4337811 () Bool)

(assert (=> b!3805525 m!4337811))

(declare-fun b!3805527 () Bool)

(declare-fun e!2351556 () Bool)

(declare-fun tp!1155631 () Bool)

(assert (=> b!3805527 (= e!2351556 (and tp_is_empty!19185 tp!1155631))))

(assert (=> b!3803800 (= tp!1155456 e!2351556)))

(assert (= (and b!3803800 ((_ is Cons!40363) (innerList!12458 (xs!15664 (c!661414 treated!13))))) b!3805527))

(declare-fun b!3805528 () Bool)

(declare-fun tp!1155634 () Bool)

(declare-fun tp!1155632 () Bool)

(declare-fun e!2351558 () Bool)

(assert (=> b!3805528 (= e!2351558 (and (inv!54330 (left!31229 (c!661414 (dynLambda!17442 (toChars!8455 (transformation!6212 (rule!9008 (_1!22882 (v!38847 lt!1318792))))) (value!197649 (_1!22882 (v!38847 lt!1318792))))))) tp!1155632 (inv!54330 (right!31559 (c!661414 (dynLambda!17442 (toChars!8455 (transformation!6212 (rule!9008 (_1!22882 (v!38847 lt!1318792))))) (value!197649 (_1!22882 (v!38847 lt!1318792))))))) tp!1155634))))

(declare-fun b!3805530 () Bool)

(declare-fun e!2351557 () Bool)

(declare-fun tp!1155633 () Bool)

(assert (=> b!3805530 (= e!2351557 tp!1155633)))

(declare-fun b!3805529 () Bool)

(assert (=> b!3805529 (= e!2351558 (and (inv!54342 (xs!15664 (c!661414 (dynLambda!17442 (toChars!8455 (transformation!6212 (rule!9008 (_1!22882 (v!38847 lt!1318792))))) (value!197649 (_1!22882 (v!38847 lt!1318792))))))) e!2351557))))

(assert (=> b!3803666 (= tp!1155421 (and (inv!54330 (c!661414 (dynLambda!17442 (toChars!8455 (transformation!6212 (rule!9008 (_1!22882 (v!38847 lt!1318792))))) (value!197649 (_1!22882 (v!38847 lt!1318792)))))) e!2351558))))

(assert (= (and b!3803666 ((_ is Node!12398) (c!661414 (dynLambda!17442 (toChars!8455 (transformation!6212 (rule!9008 (_1!22882 (v!38847 lt!1318792))))) (value!197649 (_1!22882 (v!38847 lt!1318792))))))) b!3805528))

(assert (= b!3805529 b!3805530))

(assert (= (and b!3803666 ((_ is Leaf!19202) (c!661414 (dynLambda!17442 (toChars!8455 (transformation!6212 (rule!9008 (_1!22882 (v!38847 lt!1318792))))) (value!197649 (_1!22882 (v!38847 lt!1318792))))))) b!3805529))

(declare-fun m!4337813 () Bool)

(assert (=> b!3805528 m!4337813))

(declare-fun m!4337815 () Bool)

(assert (=> b!3805528 m!4337815))

(declare-fun m!4337817 () Bool)

(assert (=> b!3805529 m!4337817))

(assert (=> b!3803666 m!4335029))

(declare-fun b_lambda!111417 () Bool)

(assert (= b_lambda!111413 (or (and b!3803282 b_free!101343 (= (toChars!8455 (transformation!6212 (h!45784 rules!1265))) (toChars!8455 (transformation!6212 (rule!9008 (_1!22882 (v!38847 lt!1318792))))))) (and b!3803814 b_free!101351 (= (toChars!8455 (transformation!6212 (h!45784 (t!307217 rules!1265)))) (toChars!8455 (transformation!6212 (rule!9008 (_1!22882 (v!38847 lt!1318792))))))) (and b!3805488 b_free!101363 (= (toChars!8455 (transformation!6212 (h!45784 (t!307217 (t!307217 rules!1265))))) (toChars!8455 (transformation!6212 (rule!9008 (_1!22882 (v!38847 lt!1318792))))))) (and b!3805526 b_free!101367 (= (toChars!8455 (transformation!6212 (rule!9008 (h!45785 (innerList!12459 (xs!15665 (c!661415 acc!335))))))) (toChars!8455 (transformation!6212 (rule!9008 (_1!22882 (v!38847 lt!1318792))))))) b_lambda!111417)))

(check-sat (not b!3805359) (not b!3805216) (not b!3805398) (not b!3804759) (not b!3804859) (not b!3804824) (not d!1122416) (not b!3805281) (not b!3805337) (not b!3805405) (not bm!279299) (not b!3805149) (not bm!279358) (not d!1122532) (not b!3805267) (not d!1122544) (not b!3805386) (not b!3805275) (not b!3805175) (not d!1122116) (not b!3804775) (not b!3804852) (not b!3804829) (not b!3805381) (not b!3805463) (not b!3804015) (not b!3805299) b_and!282765 (not b!3804050) (not b!3805114) (not b!3805209) (not b!3805457) (not b!3805145) (not d!1122364) (not d!1122712) (not b!3805322) (not b!3805200) (not b!3804793) (not b!3805343) (not b!3805302) (not b!3804017) (not b!3805383) (not d!1122704) (not bm!279315) (not b!3804563) (not b!3805379) (not d!1122788) (not b!3805421) (not bm!279312) (not b!3804787) (not b!3805484) (not b!3805442) (not b!3805074) (not b!3805048) (not b!3805397) (not d!1122790) (not b!3805524) (not b!3804816) (not d!1122702) (not b!3804803) (not b!3805461) (not b!3805509) (not b!3805198) (not b!3804847) (not b!3804861) (not b!3804747) (not b!3803937) (not b!3805505) (not b!3805344) (not b!3805456) (not b!3805458) (not d!1122344) (not b!3805453) (not bm!279337) (not d!1122556) (not b!3804774) (not d!1122626) (not b_next!102069) (not b!3804864) (not d!1122706) (not d!1122502) (not b!3805274) (not b!3805464) (not d!1122154) (not b!3805341) (not b!3805495) (not b!3805477) (not b!3804805) (not b!3805378) (not b!3805387) (not b!3805426) (not d!1122548) (not b_next!102071) (not d!1122744) (not d!1122558) (not d!1122648) (not b!3805389) (not b!3805182) (not b!3804550) (not b!3805433) (not b!3805469) (not bm!279340) tp_is_empty!19185 (not b!3805438) (not b!3804746) (not b!3805261) (not d!1122386) (not b!3804795) (not b!3805080) (not b!3805224) (not d!1122384) (not b!3805099) (not b!3804498) (not b!3805371) (not bm!279313) (not b!3805472) (not b!3804851) (not b!3805045) (not b!3805304) (not b!3805121) (not b!3805345) (not b!3805232) (not b!3805222) (not d!1122086) (not b!3804785) (not d!1122354) (not b!3804823) (not b!3805460) (not d!1122670) (not d!1122534) (not b!3804060) (not bm!279345) (not d!1122748) (not b!3805432) (not d!1122562) (not d!1122718) (not b!3805511) (not b!3804594) (not b!3804811) (not b_next!102053) (not b!3805305) (not d!1122794) (not b!3805403) (not b!3805375) (not b!3804468) (not d!1122776) (not bm!279336) (not b!3804867) (not b!3805487) (not b!3805467) (not b!3805151) (not b!3803911) (not b!3805525) (not b!3805439) (not b!3805502) (not b!3804868) b_and!282749 (not b!3805315) (not b!3805476) (not d!1122352) (not b!3805385) (not b!3804761) (not d!1122684) (not b!3804791) (not d!1122646) (not b!3804742) (not b!3805272) (not b!3805213) (not b!3805499) (not b!3805039) (not b!3805324) (not b!3805199) (not b!3805334) (not b!3805066) (not b!3804865) (not b!3804561) (not b!3804779) (not d!1122680) (not b!3804044) (not b!3805512) (not b!3805376) (not b!3805226) (not b!3804042) (not b!3805530) (not b!3805172) (not b!3805445) (not d!1122542) (not b!3805036) (not d!1122736) (not b!3805468) (not b!3805450) (not b!3805446) (not b!3805300) (not b!3805523) b_and!282767 (not b!3805494) (not d!1122708) (not d!1122738) (not b!3805473) (not b!3805369) b_and!282751 (not b!3804554) (not b!3805307) (not b!3804782) (not b!3803994) (not d!1122526) (not b!3805077) (not b!3805510) (not b!3805528) (not d!1122552) (not b!3804827) (not d!1122682) (not b!3804802) (not b!3805083) (not bm!279344) (not b!3804863) (not b!3804483) (not d!1122720) (not b!3805171) (not b!3805042) (not b!3805474) (not b!3803897) (not b!3805436) (not b!3805174) (not d!1122690) (not b!3805483) (not b!3805214) (not b!3805116) (not d!1122624) (not b!3804045) (not b!3804768) (not b!3804848) (not d!1122144) (not b!3805443) (not b!3805100) (not b!3804773) (not d!1122734) (not b!3804497) (not b!3805333) (not d!1122510) (not bm!279350) (not d!1122672) (not b_next!102047) (not b!3804777) (not d!1122716) (not b!3805228) (not b!3805440) (not d!1122550) (not b!3804778) (not b!3804473) (not b_lambda!111417) (not b!3805286) (not d!1122754) (not b!3805068) (not b!3805349) (not b!3804860) (not d!1122356) (not b!3804470) (not b!3805431) (not b!3804736) (not b!3805423) (not b!3804783) (not d!1122694) (not b!3805280) (not b!3805032) (not b!3803901) (not b!3805211) (not d!1122772) (not b!3805258) (not b!3803798) (not d!1122508) (not b!3805325) (not d!1122346) (not d!1122500) (not b!3805360) (not bm!279169) (not b!3805406) (not b!3804738) (not d!1122808) (not d!1122638) (not d!1122530) (not bm!279339) (not b!3805493) (not b!3805503) (not b!3804472) (not b!3804828) (not b!3805115) (not b!3805428) (not bm!279359) (not b!3805330) (not b!3803909) (not bm!279356) (not d!1122786) (not b!3805277) (not b!3805357) (not b!3805527) (not b!3805321) (not b!3804058) (not b!3805041) (not b!3805365) (not d!1122686) (not d!1122620) (not b!3805475) (not b!3805416) (not d!1122804) (not b!3804781) (not b!3804046) (not b!3804857) (not b!3805143) (not d!1122398) (not b!3804475) (not b!3805419) (not b!3805342) (not d!1122348) (not b_next!102065) (not b!3805486) (not b!3805255) (not b!3804552) (not b!3805111) (not b!3805424) (not b!3805195) (not b!3804856) (not b!3803666) (not b!3805205) (not b!3805197) (not d!1122512) (not d!1122110) (not bm!279351) (not b!3803936) (not b!3805230) (not b!3804818) (not b!3805347) (not bm!279310) (not b_next!102055) (not b!3804546) (not d!1122536) (not b!3805233) (not b!3805480) (not bm!279357) (not bm!279338) (not b!3804765) (not d!1122524) (not b!3805346) (not b!3804796) (not b!3803899) (not b!3805391) (not d!1122762) (not b!3805366) (not b!3805319) (not b!3803907) (not b!3804804) (not b!3805485) (not b!3805316) (not b!3804807) (not d!1122722) (not b!3805444) (not b!3804739) (not b!3805497) (not d!1122514) (not d!1122152) (not b!3805506) (not d!1122710) (not bm!279301) (not b!3805262) (not b!3805257) (not d!1122658) (not b!3803770) (not b!3805388) (not d!1122114) (not b!3804471) (not b!3804789) (not b!3805051) (not b!3805449) (not b!3803881) (not d!1122774) (not d!1122628) (not b!3805263) (not bm!279343) (not b!3805144) (not b!3805435) (not b!3804553) (not b!3805370) (not d!1122750) (not d!1122802) (not b!3805069) (not b!3805178) (not bm!279314) (not b!3805507) (not b!3805112) (not d!1122784) (not b!3805320) (not b!3805451) (not b!3805395) (not b!3805459) (not b!3805471) (not d!1122074) b_and!282753 (not b!3805328) (not d!1122812) (not b!3805279) (not d!1122616) (not b!3805301) (not b!3805352) (not b!3805118) (not b!3804767) (not d!1122342) (not b!3805177) (not b!3805465) (not b!3805227) (not b!3805075) (not b!3805287) (not b!3804548) (not b!3803996) (not d!1122538) (not b!3805147) (not b!3805529) (not b!3805122) (not b!3805478) (not b!3805479) (not b!3804056) (not b!3805220) b_and!282739 (not b!3805204) (not bm!279341) (not b!3805101) (not b!3805338) (not d!1122528) (not b!3805079) (not b!3804469) (not b!3805225) (not d!1122516) (not b_next!102067) (not b!3805425) (not b!3804788) (not d!1122156) (not b!3805353) (not b!3805236) (not b!3804496) (not b!3805219) (not b!3804771) (not b!3805181) (not b!3805229) (not b!3805441) (not b!3805312) (not b!3804784) (not b!3805481) (not b!3805102) (not d!1122760) (not b!3805364) (not b!3805427) (not d!1122696) (not b!3804776) (not d!1122688) (not d!1122814) (not b!3805356) (not b!3805498) (not d!1122540) (not d!1122796) (not bm!279342) (not b!3805210) (not bm!279300) (not b!3805326) (not b!3805142) (not b!3805043) (not b!3805070) (not b!3804763) (not b!3803795) (not b!3805482) (not b!3805067) (not b!3805278) (not b!3805496) (not b!3803880) (not b!3805417) (not b!3805501) (not b!3805231) (not b!3805339) (not d!1122780) (not b!3805420) (not b!3804758) (not b!3805047) (not bm!279354) (not b!3804801) (not d!1122108) (not b!3805235) (not b_next!102045) (not bm!279255) (not d!1122656) (not b!3805053) (not b!3804537) (not d!1122612) (not b!3805071) (not b!3804866) (not b!3805176) (not b!3805402) (not b!3805373) (not d!1122714) (not d!1122798) (not b!3805418) (not b!3805318) (not b!3805447) (not b!3803801) (not b!3804850) (not b!3805234) b_and!282763 (not b!3805097) (not b!3805429) (not b!3805050) (not b!3805454) (not d!1122350) (not b!3804047) (not b!3805393) (not d!1122636) (not b!3805113) (not bm!279298) (not d!1122800) (not b!3805265) (not b!3805173) (not b!3805390) (not bm!279355) b_and!282769 (not b!3805084) (not b!3804043))
(check-sat b_and!282765 (not b_next!102069) (not b_next!102071) (not b_next!102053) b_and!282749 (not b_next!102047) (not b_next!102065) (not b_next!102055) b_and!282753 b_and!282739 (not b_next!102067) (not b_next!102045) b_and!282763 b_and!282769 b_and!282767 b_and!282751)
