; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!159130 () Bool)

(assert start!159130)

(declare-fun b!1652382 () Bool)

(declare-fun b_free!44887 () Bool)

(declare-fun b_next!45591 () Bool)

(assert (=> b!1652382 (= b_free!44887 (not b_next!45591))))

(declare-fun tp!478031 () Bool)

(declare-fun b_and!117333 () Bool)

(assert (=> b!1652382 (= tp!478031 b_and!117333)))

(declare-fun b_free!44889 () Bool)

(declare-fun b_next!45593 () Bool)

(assert (=> b!1652382 (= b_free!44889 (not b_next!45593))))

(declare-fun tp!478030 () Bool)

(declare-fun b_and!117335 () Bool)

(assert (=> b!1652382 (= tp!478030 b_and!117335)))

(declare-fun b!1652394 () Bool)

(declare-fun b_free!44891 () Bool)

(declare-fun b_next!45595 () Bool)

(assert (=> b!1652394 (= b_free!44891 (not b_next!45595))))

(declare-fun tp!478025 () Bool)

(declare-fun b_and!117337 () Bool)

(assert (=> b!1652394 (= tp!478025 b_and!117337)))

(declare-fun b_free!44893 () Bool)

(declare-fun b_next!45597 () Bool)

(assert (=> b!1652394 (= b_free!44893 (not b_next!45597))))

(declare-fun tp!478028 () Bool)

(declare-fun b_and!117339 () Bool)

(assert (=> b!1652394 (= tp!478028 b_and!117339)))

(declare-fun b!1652373 () Bool)

(declare-fun e!1059587 () Bool)

(declare-fun tp!478032 () Bool)

(declare-datatypes ((List!18293 0))(
  ( (Nil!18223) (Cons!18223 (h!23624 (_ BitVec 16)) (t!151046 List!18293)) )
))
(declare-datatypes ((TokenValue!3303 0))(
  ( (FloatLiteralValue!6606 (text!23566 List!18293)) (TokenValueExt!3302 (__x!11908 Int)) (Broken!16515 (value!101217 List!18293)) (Object!3372) (End!3303) (Def!3303) (Underscore!3303) (Match!3303) (Else!3303) (Error!3303) (Case!3303) (If!3303) (Extends!3303) (Abstract!3303) (Class!3303) (Val!3303) (DelimiterValue!6606 (del!3363 List!18293)) (KeywordValue!3309 (value!101218 List!18293)) (CommentValue!6606 (value!101219 List!18293)) (WhitespaceValue!6606 (value!101220 List!18293)) (IndentationValue!3303 (value!101221 List!18293)) (String!20846) (Int32!3303) (Broken!16516 (value!101222 List!18293)) (Boolean!3304) (Unit!30434) (OperatorValue!3306 (op!3363 List!18293)) (IdentifierValue!6606 (value!101223 List!18293)) (IdentifierValue!6607 (value!101224 List!18293)) (WhitespaceValue!6607 (value!101225 List!18293)) (True!6606) (False!6606) (Broken!16517 (value!101226 List!18293)) (Broken!16518 (value!101227 List!18293)) (True!6607) (RightBrace!3303) (RightBracket!3303) (Colon!3303) (Null!3303) (Comma!3303) (LeftBracket!3303) (False!6607) (LeftBrace!3303) (ImaginaryLiteralValue!3303 (text!23567 List!18293)) (StringLiteralValue!9909 (value!101228 List!18293)) (EOFValue!3303 (value!101229 List!18293)) (IdentValue!3303 (value!101230 List!18293)) (DelimiterValue!6607 (value!101231 List!18293)) (DedentValue!3303 (value!101232 List!18293)) (NewLineValue!3303 (value!101233 List!18293)) (IntegerValue!9909 (value!101234 (_ BitVec 32)) (text!23568 List!18293)) (IntegerValue!9910 (value!101235 Int) (text!23569 List!18293)) (Times!3303) (Or!3303) (Equal!3303) (Minus!3303) (Broken!16519 (value!101236 List!18293)) (And!3303) (Div!3303) (LessEqual!3303) (Mod!3303) (Concat!7844) (Not!3303) (Plus!3303) (SpaceValue!3303 (value!101237 List!18293)) (IntegerValue!9911 (value!101238 Int) (text!23570 List!18293)) (StringLiteralValue!9910 (text!23571 List!18293)) (FloatLiteralValue!6607 (text!23572 List!18293)) (BytesLiteralValue!3303 (value!101239 List!18293)) (CommentValue!6607 (value!101240 List!18293)) (StringLiteralValue!9911 (value!101241 List!18293)) (ErrorTokenValue!3303 (msg!3364 List!18293)) )
))
(declare-datatypes ((C!9256 0))(
  ( (C!9257 (val!5224 Int)) )
))
(declare-datatypes ((List!18294 0))(
  ( (Nil!18224) (Cons!18224 (h!23625 C!9256) (t!151047 List!18294)) )
))
(declare-datatypes ((IArray!12153 0))(
  ( (IArray!12154 (innerList!6134 List!18294)) )
))
(declare-datatypes ((Conc!6074 0))(
  ( (Node!6074 (left!14602 Conc!6074) (right!14932 Conc!6074) (csize!12378 Int) (cheight!6285 Int)) (Leaf!8901 (xs!8914 IArray!12153) (csize!12379 Int)) (Empty!6074) )
))
(declare-datatypes ((BalanceConc!12092 0))(
  ( (BalanceConc!12093 (c!268825 Conc!6074)) )
))
(declare-datatypes ((Regex!4541 0))(
  ( (ElementMatch!4541 (c!268826 C!9256)) (Concat!7845 (regOne!9594 Regex!4541) (regTwo!9594 Regex!4541)) (EmptyExpr!4541) (Star!4541 (reg!4870 Regex!4541)) (EmptyLang!4541) (Union!4541 (regOne!9595 Regex!4541) (regTwo!9595 Regex!4541)) )
))
(declare-datatypes ((String!20847 0))(
  ( (String!20848 (value!101242 String)) )
))
(declare-datatypes ((TokenValueInjection!6266 0))(
  ( (TokenValueInjection!6267 (toValue!4664 Int) (toChars!4523 Int)) )
))
(declare-datatypes ((Rule!6226 0))(
  ( (Rule!6227 (regex!3213 Regex!4541) (tag!3495 String!20847) (isSeparator!3213 Bool) (transformation!3213 TokenValueInjection!6266)) )
))
(declare-datatypes ((Token!5992 0))(
  ( (Token!5993 (value!101243 TokenValue!3303) (rule!5077 Rule!6226) (size!14516 Int) (originalCharacters!4027 List!18294)) )
))
(declare-datatypes ((List!18295 0))(
  ( (Nil!18225) (Cons!18225 (h!23626 Token!5992) (t!151048 List!18295)) )
))
(declare-fun tokens!457 () List!18295)

(declare-fun e!1059592 () Bool)

(declare-fun inv!23586 (Token!5992) Bool)

(assert (=> b!1652373 (= e!1059592 (and (inv!23586 (h!23626 tokens!457)) e!1059587 tp!478032))))

(declare-fun b!1652374 () Bool)

(declare-fun res!740564 () Bool)

(declare-fun e!1059590 () Bool)

(assert (=> b!1652374 (=> res!740564 e!1059590)))

(declare-fun lt!613889 () List!18294)

(declare-datatypes ((List!18296 0))(
  ( (Nil!18226) (Cons!18226 (h!23627 Rule!6226) (t!151049 List!18296)) )
))
(declare-fun rules!1846 () List!18296)

(declare-datatypes ((LexerInterface!2842 0))(
  ( (LexerInterfaceExt!2839 (__x!11909 Int)) (Lexer!2840) )
))
(declare-fun thiss!17113 () LexerInterface!2842)

(declare-datatypes ((IArray!12155 0))(
  ( (IArray!12156 (innerList!6135 List!18295)) )
))
(declare-datatypes ((Conc!6075 0))(
  ( (Node!6075 (left!14603 Conc!6075) (right!14933 Conc!6075) (csize!12380 Int) (cheight!6286 Int)) (Leaf!8902 (xs!8915 IArray!12155) (csize!12381 Int)) (Empty!6075) )
))
(declare-datatypes ((BalanceConc!12094 0))(
  ( (BalanceConc!12095 (c!268827 Conc!6075)) )
))
(declare-fun isEmpty!11261 (BalanceConc!12094) Bool)

(declare-datatypes ((tuple2!17906 0))(
  ( (tuple2!17907 (_1!10355 BalanceConc!12094) (_2!10355 BalanceConc!12092)) )
))
(declare-fun lex!1326 (LexerInterface!2842 List!18296 BalanceConc!12092) tuple2!17906)

(declare-fun seqFromList!2165 (List!18294) BalanceConc!12092)

(assert (=> b!1652374 (= res!740564 (isEmpty!11261 (_1!10355 (lex!1326 thiss!17113 rules!1846 (seqFromList!2165 lt!613889)))))))

(declare-fun b!1652375 () Bool)

(declare-fun e!1059591 () Bool)

(assert (=> b!1652375 (= e!1059591 e!1059590)))

(declare-fun res!740567 () Bool)

(assert (=> b!1652375 (=> res!740567 e!1059590)))

(declare-fun lt!613881 () List!18294)

(declare-fun lt!613882 () List!18294)

(assert (=> b!1652375 (= res!740567 (or (not (= lt!613882 lt!613881)) (not (= lt!613881 lt!613889)) (not (= lt!613882 lt!613889))))))

(declare-fun printList!955 (LexerInterface!2842 List!18295) List!18294)

(assert (=> b!1652375 (= lt!613881 (printList!955 thiss!17113 (Cons!18225 (h!23626 tokens!457) Nil!18225)))))

(declare-fun lt!613898 () BalanceConc!12092)

(declare-fun list!7253 (BalanceConc!12092) List!18294)

(assert (=> b!1652375 (= lt!613882 (list!7253 lt!613898))))

(declare-fun lt!613892 () BalanceConc!12094)

(declare-fun printTailRec!893 (LexerInterface!2842 BalanceConc!12094 Int BalanceConc!12092) BalanceConc!12092)

(assert (=> b!1652375 (= lt!613898 (printTailRec!893 thiss!17113 lt!613892 0 (BalanceConc!12093 Empty!6074)))))

(declare-fun print!1373 (LexerInterface!2842 BalanceConc!12094) BalanceConc!12092)

(assert (=> b!1652375 (= lt!613898 (print!1373 thiss!17113 lt!613892))))

(declare-fun singletonSeq!1698 (Token!5992) BalanceConc!12094)

(assert (=> b!1652375 (= lt!613892 (singletonSeq!1698 (h!23626 tokens!457)))))

(declare-datatypes ((tuple2!17908 0))(
  ( (tuple2!17909 (_1!10356 Token!5992) (_2!10356 List!18294)) )
))
(declare-datatypes ((Option!3463 0))(
  ( (None!3462) (Some!3462 (v!24641 tuple2!17908)) )
))
(declare-fun lt!613884 () Option!3463)

(declare-fun lt!613878 () List!18294)

(declare-fun maxPrefix!1404 (LexerInterface!2842 List!18296 List!18294) Option!3463)

(assert (=> b!1652375 (= lt!613884 (maxPrefix!1404 thiss!17113 rules!1846 lt!613878))))

(declare-fun b!1652376 () Bool)

(declare-fun e!1059577 () Bool)

(assert (=> b!1652376 (= e!1059590 e!1059577)))

(declare-fun res!740571 () Bool)

(assert (=> b!1652376 (=> res!740571 e!1059577)))

(declare-fun isDefined!2818 (Option!3463) Bool)

(assert (=> b!1652376 (= res!740571 (not (isDefined!2818 lt!613884)))))

(declare-datatypes ((Unit!30435 0))(
  ( (Unit!30436) )
))
(declare-fun lt!613876 () Unit!30435)

(declare-fun lt!613895 () List!18294)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!410 (LexerInterface!2842 List!18296 List!18294 List!18294) Unit!30435)

(assert (=> b!1652376 (= lt!613876 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!410 thiss!17113 rules!1846 lt!613889 lt!613895))))

(declare-fun b!1652377 () Bool)

(declare-fun e!1059580 () Bool)

(declare-fun e!1059586 () Bool)

(declare-fun tp!478026 () Bool)

(assert (=> b!1652377 (= e!1059580 (and e!1059586 tp!478026))))

(declare-fun b!1652379 () Bool)

(declare-fun res!740559 () Bool)

(declare-fun e!1059574 () Bool)

(assert (=> b!1652379 (=> (not res!740559) (not e!1059574))))

(declare-fun lt!613894 () List!18294)

(declare-fun head!3640 (List!18294) C!9256)

(assert (=> b!1652379 (= res!740559 (= lt!613894 (Cons!18224 (head!3640 (originalCharacters!4027 (h!23626 (t!151048 tokens!457)))) Nil!18224)))))

(declare-fun b!1652380 () Bool)

(declare-fun e!1059593 () Bool)

(assert (=> b!1652380 (= e!1059593 e!1059591)))

(declare-fun res!740574 () Bool)

(assert (=> b!1652380 (=> res!740574 e!1059591)))

(declare-fun lt!613900 () List!18295)

(declare-fun lt!613888 () List!18295)

(declare-fun lt!613891 () List!18295)

(assert (=> b!1652380 (= res!740574 (or (not (= lt!613891 lt!613888)) (not (= lt!613888 lt!613900))))))

(declare-fun lt!613879 () BalanceConc!12094)

(declare-fun list!7254 (BalanceConc!12094) List!18295)

(assert (=> b!1652380 (= lt!613888 (list!7254 lt!613879))))

(assert (=> b!1652380 (= lt!613891 lt!613900)))

(declare-fun prepend!779 (BalanceConc!12094 Token!5992) BalanceConc!12094)

(declare-fun seqFromList!2166 (List!18295) BalanceConc!12094)

(assert (=> b!1652380 (= lt!613900 (list!7254 (prepend!779 (seqFromList!2166 (t!151048 (t!151048 tokens!457))) (h!23626 (t!151048 tokens!457)))))))

(declare-fun lt!613901 () Unit!30435)

(declare-fun lt!613893 () tuple2!17906)

(declare-fun seqFromListBHdTlConstructive!288 (Token!5992 List!18295 BalanceConc!12094) Unit!30435)

(assert (=> b!1652380 (= lt!613901 (seqFromListBHdTlConstructive!288 (h!23626 (t!151048 tokens!457)) (t!151048 (t!151048 tokens!457)) (_1!10355 lt!613893)))))

(declare-fun b!1652381 () Bool)

(declare-fun e!1059575 () Bool)

(assert (=> b!1652381 (= e!1059577 e!1059575)))

(declare-fun res!740578 () Bool)

(assert (=> b!1652381 (=> res!740578 e!1059575)))

(declare-fun lt!613885 () BalanceConc!12092)

(declare-fun lt!613886 () Regex!4541)

(declare-fun lt!613883 () BalanceConc!12092)

(declare-fun prefixMatchZipperSequence!625 (Regex!4541 BalanceConc!12092) Bool)

(declare-fun ++!4931 (BalanceConc!12092 BalanceConc!12092) BalanceConc!12092)

(assert (=> b!1652381 (= res!740578 (prefixMatchZipperSequence!625 lt!613886 (++!4931 lt!613883 lt!613885)))))

(declare-fun singletonSeq!1699 (C!9256) BalanceConc!12092)

(declare-fun apply!4814 (BalanceConc!12092 Int) C!9256)

(declare-fun charsOf!1862 (Token!5992) BalanceConc!12092)

(assert (=> b!1652381 (= lt!613885 (singletonSeq!1699 (apply!4814 (charsOf!1862 (h!23626 (t!151048 tokens!457))) 0)))))

(declare-fun rulesRegex!597 (LexerInterface!2842 List!18296) Regex!4541)

(assert (=> b!1652381 (= lt!613886 (rulesRegex!597 thiss!17113 rules!1846))))

(declare-fun e!1059584 () Bool)

(assert (=> b!1652382 (= e!1059584 (and tp!478031 tp!478030))))

(declare-fun e!1059594 () Bool)

(declare-fun tp!478024 () Bool)

(declare-fun b!1652383 () Bool)

(declare-fun inv!21 (TokenValue!3303) Bool)

(assert (=> b!1652383 (= e!1059587 (and (inv!21 (value!101243 (h!23626 tokens!457))) e!1059594 tp!478024))))

(declare-fun b!1652384 () Bool)

(declare-fun res!740572 () Bool)

(declare-fun e!1059585 () Bool)

(assert (=> b!1652384 (=> (not res!740572) (not e!1059585))))

(get-info :version)

(assert (=> b!1652384 (= res!740572 (and (not ((_ is Nil!18225) tokens!457)) (not ((_ is Nil!18225) (t!151048 tokens!457)))))))

(declare-fun b!1652385 () Bool)

(declare-fun e!1059579 () Bool)

(assert (=> b!1652385 (= e!1059579 (not e!1059593))))

(declare-fun res!740579 () Bool)

(assert (=> b!1652385 (=> res!740579 e!1059593)))

(assert (=> b!1652385 (= res!740579 (not (= lt!613891 (t!151048 tokens!457))))))

(assert (=> b!1652385 (= lt!613891 (list!7254 (_1!10355 lt!613893)))))

(declare-fun lt!613887 () Unit!30435)

(declare-fun theoremInvertabilityWhenTokenListSeparable!285 (LexerInterface!2842 List!18296 List!18295) Unit!30435)

(assert (=> b!1652385 (= lt!613887 (theoremInvertabilityWhenTokenListSeparable!285 thiss!17113 rules!1846 (t!151048 tokens!457)))))

(declare-fun lt!613890 () List!18294)

(declare-fun isPrefix!1471 (List!18294 List!18294) Bool)

(assert (=> b!1652385 (isPrefix!1471 lt!613889 lt!613890)))

(declare-fun lt!613899 () Unit!30435)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!996 (List!18294 List!18294) Unit!30435)

(assert (=> b!1652385 (= lt!613899 (lemmaConcatTwoListThenFirstIsPrefix!996 lt!613889 lt!613895))))

(declare-fun b!1652386 () Bool)

(declare-fun e!1059588 () Bool)

(assert (=> b!1652386 (= e!1059575 e!1059588)))

(declare-fun res!740561 () Bool)

(assert (=> b!1652386 (=> res!740561 e!1059588)))

(declare-fun prefixMatch!458 (Regex!4541 List!18294) Bool)

(declare-fun ++!4932 (List!18294 List!18294) List!18294)

(assert (=> b!1652386 (= res!740561 (prefixMatch!458 lt!613886 (++!4932 lt!613889 lt!613894)))))

(assert (=> b!1652386 (= lt!613894 (list!7253 lt!613885))))

(declare-fun b!1652387 () Bool)

(declare-fun e!1059576 () Bool)

(declare-fun matchR!2034 (Regex!4541 List!18294) Bool)

(assert (=> b!1652387 (= e!1059576 (matchR!2034 (regex!3213 (rule!5077 (h!23626 tokens!457))) lt!613889))))

(declare-fun b!1652388 () Bool)

(declare-fun e!1059583 () Bool)

(assert (=> b!1652388 (= e!1059588 e!1059583)))

(declare-fun res!740577 () Bool)

(assert (=> b!1652388 (=> res!740577 e!1059583)))

(declare-datatypes ((tuple2!17910 0))(
  ( (tuple2!17911 (_1!10357 Token!5992) (_2!10357 BalanceConc!12092)) )
))
(declare-datatypes ((Option!3464 0))(
  ( (None!3463) (Some!3463 (v!24642 tuple2!17910)) )
))
(declare-fun isDefined!2819 (Option!3464) Bool)

(declare-fun maxPrefixZipperSequence!719 (LexerInterface!2842 List!18296 BalanceConc!12092) Option!3464)

(assert (=> b!1652388 (= res!740577 (not (isDefined!2819 (maxPrefixZipperSequence!719 thiss!17113 rules!1846 (seqFromList!2165 (originalCharacters!4027 (h!23626 tokens!457)))))))))

(declare-fun lt!613896 () List!18294)

(assert (=> b!1652388 (= lt!613894 lt!613896)))

(declare-fun lt!613880 () BalanceConc!12092)

(declare-fun head!3641 (BalanceConc!12092) C!9256)

(assert (=> b!1652388 (= lt!613896 (Cons!18224 (head!3641 lt!613880) Nil!18224))))

(assert (=> b!1652388 e!1059574))

(declare-fun res!740569 () Bool)

(assert (=> b!1652388 (=> (not res!740569) (not e!1059574))))

(assert (=> b!1652388 (= res!740569 (= lt!613889 (originalCharacters!4027 (h!23626 tokens!457))))))

(declare-fun b!1652389 () Bool)

(assert (=> b!1652389 (= e!1059583 (not (prefixMatch!458 lt!613886 (++!4932 (originalCharacters!4027 (h!23626 tokens!457)) lt!613896))))))

(assert (=> b!1652389 e!1059576))

(declare-fun res!740568 () Bool)

(assert (=> b!1652389 (=> (not res!740568) (not e!1059576))))

(declare-fun lt!613877 () tuple2!17908)

(assert (=> b!1652389 (= res!740568 (= (_1!10356 lt!613877) (h!23626 tokens!457)))))

(declare-fun lt!613902 () Option!3463)

(declare-fun get!5308 (Option!3463) tuple2!17908)

(assert (=> b!1652389 (= lt!613877 (get!5308 lt!613902))))

(assert (=> b!1652389 (isDefined!2818 lt!613902)))

(assert (=> b!1652389 (= lt!613902 (maxPrefix!1404 thiss!17113 rules!1846 lt!613889))))

(assert (=> b!1652389 (isDefined!2818 (maxPrefix!1404 thiss!17113 rules!1846 (originalCharacters!4027 (h!23626 tokens!457))))))

(declare-fun b!1652390 () Bool)

(assert (=> b!1652390 (= e!1059574 (= lt!613894 (Cons!18224 (head!3640 lt!613895) Nil!18224)))))

(declare-fun b!1652391 () Bool)

(declare-fun res!740570 () Bool)

(assert (=> b!1652391 (=> res!740570 e!1059590)))

(declare-fun rulesProduceIndividualToken!1490 (LexerInterface!2842 List!18296 Token!5992) Bool)

(assert (=> b!1652391 (= res!740570 (not (rulesProduceIndividualToken!1490 thiss!17113 rules!1846 (h!23626 tokens!457))))))

(declare-fun res!740563 () Bool)

(assert (=> start!159130 (=> (not res!740563) (not e!1059585))))

(assert (=> start!159130 (= res!740563 ((_ is Lexer!2840) thiss!17113))))

(assert (=> start!159130 e!1059585))

(assert (=> start!159130 true))

(assert (=> start!159130 e!1059580))

(assert (=> start!159130 e!1059592))

(declare-fun b!1652378 () Bool)

(declare-fun res!740573 () Bool)

(assert (=> b!1652378 (=> (not res!740573) (not e!1059585))))

(declare-fun rulesInvariant!2511 (LexerInterface!2842 List!18296) Bool)

(assert (=> b!1652378 (= res!740573 (rulesInvariant!2511 thiss!17113 rules!1846))))

(declare-fun tp!478029 () Bool)

(declare-fun e!1059581 () Bool)

(declare-fun b!1652392 () Bool)

(declare-fun inv!23583 (String!20847) Bool)

(declare-fun inv!23587 (TokenValueInjection!6266) Bool)

(assert (=> b!1652392 (= e!1059594 (and tp!478029 (inv!23583 (tag!3495 (rule!5077 (h!23626 tokens!457)))) (inv!23587 (transformation!3213 (rule!5077 (h!23626 tokens!457)))) e!1059581))))

(declare-fun b!1652393 () Bool)

(assert (=> b!1652393 (= e!1059585 e!1059579)))

(declare-fun res!740576 () Bool)

(assert (=> b!1652393 (=> (not res!740576) (not e!1059579))))

(assert (=> b!1652393 (= res!740576 (= lt!613878 lt!613890))))

(assert (=> b!1652393 (= lt!613890 (++!4932 lt!613889 lt!613895))))

(declare-fun lt!613897 () BalanceConc!12092)

(assert (=> b!1652393 (= lt!613878 (list!7253 lt!613897))))

(assert (=> b!1652393 (= lt!613895 (list!7253 lt!613880))))

(assert (=> b!1652393 (= lt!613889 (list!7253 lt!613883))))

(assert (=> b!1652393 (= lt!613883 (charsOf!1862 (h!23626 tokens!457)))))

(assert (=> b!1652393 (= lt!613893 (lex!1326 thiss!17113 rules!1846 lt!613880))))

(assert (=> b!1652393 (= lt!613880 (print!1373 thiss!17113 lt!613879))))

(assert (=> b!1652393 (= lt!613879 (seqFromList!2166 (t!151048 tokens!457)))))

(assert (=> b!1652393 (= lt!613897 (print!1373 thiss!17113 (seqFromList!2166 tokens!457)))))

(assert (=> b!1652394 (= e!1059581 (and tp!478025 tp!478028))))

(declare-fun b!1652395 () Bool)

(declare-fun res!740565 () Bool)

(assert (=> b!1652395 (=> res!740565 e!1059591)))

(declare-fun separableTokensPredicate!782 (LexerInterface!2842 Token!5992 Token!5992 List!18296) Bool)

(assert (=> b!1652395 (= res!740565 (not (separableTokensPredicate!782 thiss!17113 (h!23626 tokens!457) (h!23626 (t!151048 tokens!457)) rules!1846)))))

(declare-fun b!1652396 () Bool)

(declare-fun res!740560 () Bool)

(assert (=> b!1652396 (=> (not res!740560) (not e!1059585))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!535 (LexerInterface!2842 List!18295 List!18296) Bool)

(assert (=> b!1652396 (= res!740560 (tokensListTwoByTwoPredicateSeparableList!535 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1652397 () Bool)

(declare-fun tp!478027 () Bool)

(assert (=> b!1652397 (= e!1059586 (and tp!478027 (inv!23583 (tag!3495 (h!23627 rules!1846))) (inv!23587 (transformation!3213 (h!23627 rules!1846))) e!1059584))))

(declare-fun b!1652398 () Bool)

(declare-fun res!740566 () Bool)

(assert (=> b!1652398 (=> (not res!740566) (not e!1059585))))

(declare-fun isEmpty!11262 (List!18296) Bool)

(assert (=> b!1652398 (= res!740566 (not (isEmpty!11262 rules!1846)))))

(declare-fun b!1652399 () Bool)

(declare-fun res!740575 () Bool)

(assert (=> b!1652399 (=> (not res!740575) (not e!1059585))))

(declare-fun rulesProduceEachTokenIndividuallyList!1044 (LexerInterface!2842 List!18296 List!18295) Bool)

(assert (=> b!1652399 (= res!740575 (rulesProduceEachTokenIndividuallyList!1044 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1652400 () Bool)

(declare-fun res!740562 () Bool)

(assert (=> b!1652400 (=> (not res!740562) (not e!1059576))))

(declare-fun isEmpty!11263 (List!18294) Bool)

(assert (=> b!1652400 (= res!740562 (isEmpty!11263 (_2!10356 lt!613877)))))

(assert (= (and start!159130 res!740563) b!1652398))

(assert (= (and b!1652398 res!740566) b!1652378))

(assert (= (and b!1652378 res!740573) b!1652399))

(assert (= (and b!1652399 res!740575) b!1652396))

(assert (= (and b!1652396 res!740560) b!1652384))

(assert (= (and b!1652384 res!740572) b!1652393))

(assert (= (and b!1652393 res!740576) b!1652385))

(assert (= (and b!1652385 (not res!740579)) b!1652380))

(assert (= (and b!1652380 (not res!740574)) b!1652395))

(assert (= (and b!1652395 (not res!740565)) b!1652375))

(assert (= (and b!1652375 (not res!740567)) b!1652391))

(assert (= (and b!1652391 (not res!740570)) b!1652374))

(assert (= (and b!1652374 (not res!740564)) b!1652376))

(assert (= (and b!1652376 (not res!740571)) b!1652381))

(assert (= (and b!1652381 (not res!740578)) b!1652386))

(assert (= (and b!1652386 (not res!740561)) b!1652388))

(assert (= (and b!1652388 res!740569) b!1652379))

(assert (= (and b!1652379 res!740559) b!1652390))

(assert (= (and b!1652388 (not res!740577)) b!1652389))

(assert (= (and b!1652389 res!740568) b!1652400))

(assert (= (and b!1652400 res!740562) b!1652387))

(assert (= b!1652397 b!1652382))

(assert (= b!1652377 b!1652397))

(assert (= (and start!159130 ((_ is Cons!18226) rules!1846)) b!1652377))

(assert (= b!1652392 b!1652394))

(assert (= b!1652383 b!1652392))

(assert (= b!1652373 b!1652383))

(assert (= (and start!159130 ((_ is Cons!18225) tokens!457)) b!1652373))

(declare-fun m!2003529 () Bool)

(assert (=> b!1652386 m!2003529))

(assert (=> b!1652386 m!2003529))

(declare-fun m!2003531 () Bool)

(assert (=> b!1652386 m!2003531))

(declare-fun m!2003533 () Bool)

(assert (=> b!1652386 m!2003533))

(declare-fun m!2003535 () Bool)

(assert (=> b!1652381 m!2003535))

(declare-fun m!2003537 () Bool)

(assert (=> b!1652381 m!2003537))

(declare-fun m!2003539 () Bool)

(assert (=> b!1652381 m!2003539))

(assert (=> b!1652381 m!2003537))

(declare-fun m!2003541 () Bool)

(assert (=> b!1652381 m!2003541))

(declare-fun m!2003543 () Bool)

(assert (=> b!1652381 m!2003543))

(declare-fun m!2003545 () Bool)

(assert (=> b!1652381 m!2003545))

(assert (=> b!1652381 m!2003541))

(assert (=> b!1652381 m!2003545))

(declare-fun m!2003547 () Bool)

(assert (=> b!1652391 m!2003547))

(declare-fun m!2003549 () Bool)

(assert (=> b!1652378 m!2003549))

(declare-fun m!2003551 () Bool)

(assert (=> b!1652389 m!2003551))

(declare-fun m!2003553 () Bool)

(assert (=> b!1652389 m!2003553))

(declare-fun m!2003555 () Bool)

(assert (=> b!1652389 m!2003555))

(declare-fun m!2003557 () Bool)

(assert (=> b!1652389 m!2003557))

(declare-fun m!2003559 () Bool)

(assert (=> b!1652389 m!2003559))

(declare-fun m!2003561 () Bool)

(assert (=> b!1652389 m!2003561))

(declare-fun m!2003563 () Bool)

(assert (=> b!1652389 m!2003563))

(assert (=> b!1652389 m!2003553))

(assert (=> b!1652389 m!2003557))

(declare-fun m!2003565 () Bool)

(assert (=> b!1652385 m!2003565))

(declare-fun m!2003567 () Bool)

(assert (=> b!1652385 m!2003567))

(declare-fun m!2003569 () Bool)

(assert (=> b!1652385 m!2003569))

(declare-fun m!2003571 () Bool)

(assert (=> b!1652385 m!2003571))

(declare-fun m!2003573 () Bool)

(assert (=> b!1652375 m!2003573))

(declare-fun m!2003575 () Bool)

(assert (=> b!1652375 m!2003575))

(declare-fun m!2003577 () Bool)

(assert (=> b!1652375 m!2003577))

(declare-fun m!2003579 () Bool)

(assert (=> b!1652375 m!2003579))

(declare-fun m!2003581 () Bool)

(assert (=> b!1652375 m!2003581))

(declare-fun m!2003583 () Bool)

(assert (=> b!1652375 m!2003583))

(declare-fun m!2003585 () Bool)

(assert (=> b!1652374 m!2003585))

(assert (=> b!1652374 m!2003585))

(declare-fun m!2003587 () Bool)

(assert (=> b!1652374 m!2003587))

(declare-fun m!2003589 () Bool)

(assert (=> b!1652374 m!2003589))

(declare-fun m!2003591 () Bool)

(assert (=> b!1652396 m!2003591))

(declare-fun m!2003593 () Bool)

(assert (=> b!1652376 m!2003593))

(declare-fun m!2003595 () Bool)

(assert (=> b!1652376 m!2003595))

(declare-fun m!2003597 () Bool)

(assert (=> b!1652393 m!2003597))

(declare-fun m!2003599 () Bool)

(assert (=> b!1652393 m!2003599))

(declare-fun m!2003601 () Bool)

(assert (=> b!1652393 m!2003601))

(declare-fun m!2003603 () Bool)

(assert (=> b!1652393 m!2003603))

(declare-fun m!2003605 () Bool)

(assert (=> b!1652393 m!2003605))

(declare-fun m!2003607 () Bool)

(assert (=> b!1652393 m!2003607))

(declare-fun m!2003609 () Bool)

(assert (=> b!1652393 m!2003609))

(declare-fun m!2003611 () Bool)

(assert (=> b!1652393 m!2003611))

(declare-fun m!2003613 () Bool)

(assert (=> b!1652393 m!2003613))

(assert (=> b!1652393 m!2003607))

(declare-fun m!2003615 () Bool)

(assert (=> b!1652393 m!2003615))

(declare-fun m!2003617 () Bool)

(assert (=> b!1652383 m!2003617))

(declare-fun m!2003619 () Bool)

(assert (=> b!1652387 m!2003619))

(declare-fun m!2003621 () Bool)

(assert (=> b!1652379 m!2003621))

(declare-fun m!2003623 () Bool)

(assert (=> b!1652395 m!2003623))

(declare-fun m!2003625 () Bool)

(assert (=> b!1652400 m!2003625))

(declare-fun m!2003627 () Bool)

(assert (=> b!1652392 m!2003627))

(declare-fun m!2003629 () Bool)

(assert (=> b!1652392 m!2003629))

(declare-fun m!2003631 () Bool)

(assert (=> b!1652388 m!2003631))

(assert (=> b!1652388 m!2003631))

(declare-fun m!2003633 () Bool)

(assert (=> b!1652388 m!2003633))

(assert (=> b!1652388 m!2003633))

(declare-fun m!2003635 () Bool)

(assert (=> b!1652388 m!2003635))

(declare-fun m!2003637 () Bool)

(assert (=> b!1652388 m!2003637))

(declare-fun m!2003639 () Bool)

(assert (=> b!1652390 m!2003639))

(declare-fun m!2003641 () Bool)

(assert (=> b!1652398 m!2003641))

(declare-fun m!2003643 () Bool)

(assert (=> b!1652380 m!2003643))

(declare-fun m!2003645 () Bool)

(assert (=> b!1652380 m!2003645))

(declare-fun m!2003647 () Bool)

(assert (=> b!1652380 m!2003647))

(declare-fun m!2003649 () Bool)

(assert (=> b!1652380 m!2003649))

(declare-fun m!2003651 () Bool)

(assert (=> b!1652380 m!2003651))

(assert (=> b!1652380 m!2003647))

(assert (=> b!1652380 m!2003649))

(declare-fun m!2003653 () Bool)

(assert (=> b!1652399 m!2003653))

(declare-fun m!2003655 () Bool)

(assert (=> b!1652397 m!2003655))

(declare-fun m!2003657 () Bool)

(assert (=> b!1652397 m!2003657))

(declare-fun m!2003659 () Bool)

(assert (=> b!1652373 m!2003659))

(check-sat (not b_next!45591) (not b!1652379) (not b!1652399) (not b!1652380) (not b!1652376) (not b_next!45597) (not b!1652374) (not b!1652381) b_and!117335 (not b!1652391) (not b!1652383) (not b!1652388) (not b!1652377) b_and!117333 (not b!1652397) (not b!1652375) (not b!1652395) (not b!1652389) (not b!1652385) b_and!117337 (not b!1652378) (not b!1652393) (not b!1652390) (not b_next!45595) (not b_next!45593) (not b!1652387) b_and!117339 (not b!1652396) (not b!1652386) (not b!1652400) (not b!1652398) (not b!1652392) (not b!1652373))
(check-sat (not b_next!45591) b_and!117333 b_and!117337 (not b_next!45595) (not b_next!45597) b_and!117335 (not b_next!45593) b_and!117339)
