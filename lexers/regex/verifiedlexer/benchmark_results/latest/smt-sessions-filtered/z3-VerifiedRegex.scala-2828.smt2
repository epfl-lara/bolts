; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!159138 () Bool)

(assert start!159138)

(declare-fun b!1652747 () Bool)

(declare-fun b_free!44919 () Bool)

(declare-fun b_next!45623 () Bool)

(assert (=> b!1652747 (= b_free!44919 (not b_next!45623))))

(declare-fun tp!478139 () Bool)

(declare-fun b_and!117365 () Bool)

(assert (=> b!1652747 (= tp!478139 b_and!117365)))

(declare-fun b_free!44921 () Bool)

(declare-fun b_next!45625 () Bool)

(assert (=> b!1652747 (= b_free!44921 (not b_next!45625))))

(declare-fun tp!478140 () Bool)

(declare-fun b_and!117367 () Bool)

(assert (=> b!1652747 (= tp!478140 b_and!117367)))

(declare-fun b!1652745 () Bool)

(declare-fun b_free!44923 () Bool)

(declare-fun b_next!45627 () Bool)

(assert (=> b!1652745 (= b_free!44923 (not b_next!45627))))

(declare-fun tp!478132 () Bool)

(declare-fun b_and!117369 () Bool)

(assert (=> b!1652745 (= tp!478132 b_and!117369)))

(declare-fun b_free!44925 () Bool)

(declare-fun b_next!45629 () Bool)

(assert (=> b!1652745 (= b_free!44925 (not b_next!45629))))

(declare-fun tp!478135 () Bool)

(declare-fun b_and!117371 () Bool)

(assert (=> b!1652745 (= tp!478135 b_and!117371)))

(declare-fun b!1652725 () Bool)

(declare-fun res!740829 () Bool)

(declare-fun e!1059854 () Bool)

(assert (=> b!1652725 (=> (not res!740829) (not e!1059854))))

(declare-datatypes ((List!18309 0))(
  ( (Nil!18239) (Cons!18239 (h!23640 (_ BitVec 16)) (t!151062 List!18309)) )
))
(declare-datatypes ((TokenValue!3307 0))(
  ( (FloatLiteralValue!6614 (text!23594 List!18309)) (TokenValueExt!3306 (__x!11916 Int)) (Broken!16535 (value!101331 List!18309)) (Object!3376) (End!3307) (Def!3307) (Underscore!3307) (Match!3307) (Else!3307) (Error!3307) (Case!3307) (If!3307) (Extends!3307) (Abstract!3307) (Class!3307) (Val!3307) (DelimiterValue!6614 (del!3367 List!18309)) (KeywordValue!3313 (value!101332 List!18309)) (CommentValue!6614 (value!101333 List!18309)) (WhitespaceValue!6614 (value!101334 List!18309)) (IndentationValue!3307 (value!101335 List!18309)) (String!20866) (Int32!3307) (Broken!16536 (value!101336 List!18309)) (Boolean!3308) (Unit!30446) (OperatorValue!3310 (op!3367 List!18309)) (IdentifierValue!6614 (value!101337 List!18309)) (IdentifierValue!6615 (value!101338 List!18309)) (WhitespaceValue!6615 (value!101339 List!18309)) (True!6614) (False!6614) (Broken!16537 (value!101340 List!18309)) (Broken!16538 (value!101341 List!18309)) (True!6615) (RightBrace!3307) (RightBracket!3307) (Colon!3307) (Null!3307) (Comma!3307) (LeftBracket!3307) (False!6615) (LeftBrace!3307) (ImaginaryLiteralValue!3307 (text!23595 List!18309)) (StringLiteralValue!9921 (value!101342 List!18309)) (EOFValue!3307 (value!101343 List!18309)) (IdentValue!3307 (value!101344 List!18309)) (DelimiterValue!6615 (value!101345 List!18309)) (DedentValue!3307 (value!101346 List!18309)) (NewLineValue!3307 (value!101347 List!18309)) (IntegerValue!9921 (value!101348 (_ BitVec 32)) (text!23596 List!18309)) (IntegerValue!9922 (value!101349 Int) (text!23597 List!18309)) (Times!3307) (Or!3307) (Equal!3307) (Minus!3307) (Broken!16539 (value!101350 List!18309)) (And!3307) (Div!3307) (LessEqual!3307) (Mod!3307) (Concat!7852) (Not!3307) (Plus!3307) (SpaceValue!3307 (value!101351 List!18309)) (IntegerValue!9923 (value!101352 Int) (text!23598 List!18309)) (StringLiteralValue!9922 (text!23599 List!18309)) (FloatLiteralValue!6615 (text!23600 List!18309)) (BytesLiteralValue!3307 (value!101353 List!18309)) (CommentValue!6615 (value!101354 List!18309)) (StringLiteralValue!9923 (value!101355 List!18309)) (ErrorTokenValue!3307 (msg!3368 List!18309)) )
))
(declare-datatypes ((C!9264 0))(
  ( (C!9265 (val!5228 Int)) )
))
(declare-datatypes ((List!18310 0))(
  ( (Nil!18240) (Cons!18240 (h!23641 C!9264) (t!151063 List!18310)) )
))
(declare-datatypes ((IArray!12169 0))(
  ( (IArray!12170 (innerList!6142 List!18310)) )
))
(declare-datatypes ((Conc!6082 0))(
  ( (Node!6082 (left!14612 Conc!6082) (right!14942 Conc!6082) (csize!12394 Int) (cheight!6293 Int)) (Leaf!8911 (xs!8922 IArray!12169) (csize!12395 Int)) (Empty!6082) )
))
(declare-datatypes ((BalanceConc!12108 0))(
  ( (BalanceConc!12109 (c!268841 Conc!6082)) )
))
(declare-datatypes ((Regex!4545 0))(
  ( (ElementMatch!4545 (c!268842 C!9264)) (Concat!7853 (regOne!9602 Regex!4545) (regTwo!9602 Regex!4545)) (EmptyExpr!4545) (Star!4545 (reg!4874 Regex!4545)) (EmptyLang!4545) (Union!4545 (regOne!9603 Regex!4545) (regTwo!9603 Regex!4545)) )
))
(declare-datatypes ((String!20867 0))(
  ( (String!20868 (value!101356 String)) )
))
(declare-datatypes ((TokenValueInjection!6274 0))(
  ( (TokenValueInjection!6275 (toValue!4668 Int) (toChars!4527 Int)) )
))
(declare-datatypes ((Rule!6234 0))(
  ( (Rule!6235 (regex!3217 Regex!4545) (tag!3499 String!20867) (isSeparator!3217 Bool) (transformation!3217 TokenValueInjection!6274)) )
))
(declare-datatypes ((Token!6000 0))(
  ( (Token!6001 (value!101357 TokenValue!3307) (rule!5081 Rule!6234) (size!14520 Int) (originalCharacters!4031 List!18310)) )
))
(declare-datatypes ((tuple2!17930 0))(
  ( (tuple2!17931 (_1!10367 Token!6000) (_2!10367 List!18310)) )
))
(declare-fun lt!614217 () tuple2!17930)

(declare-fun isEmpty!11273 (List!18310) Bool)

(assert (=> b!1652725 (= res!740829 (isEmpty!11273 (_2!10367 lt!614217)))))

(declare-fun b!1652726 () Bool)

(declare-fun e!1059856 () Bool)

(declare-fun e!1059851 () Bool)

(assert (=> b!1652726 (= e!1059856 e!1059851)))

(declare-fun res!740848 () Bool)

(assert (=> b!1652726 (=> res!740848 e!1059851)))

(declare-fun lt!614229 () Regex!4545)

(declare-fun lt!614208 () BalanceConc!12108)

(declare-fun lt!614222 () BalanceConc!12108)

(declare-fun prefixMatchZipperSequence!629 (Regex!4545 BalanceConc!12108) Bool)

(declare-fun ++!4939 (BalanceConc!12108 BalanceConc!12108) BalanceConc!12108)

(assert (=> b!1652726 (= res!740848 (prefixMatchZipperSequence!629 lt!614229 (++!4939 lt!614222 lt!614208)))))

(declare-datatypes ((List!18311 0))(
  ( (Nil!18241) (Cons!18241 (h!23642 Token!6000) (t!151064 List!18311)) )
))
(declare-fun tokens!457 () List!18311)

(declare-fun singletonSeq!1706 (C!9264) BalanceConc!12108)

(declare-fun apply!4818 (BalanceConc!12108 Int) C!9264)

(declare-fun charsOf!1866 (Token!6000) BalanceConc!12108)

(assert (=> b!1652726 (= lt!614208 (singletonSeq!1706 (apply!4818 (charsOf!1866 (h!23642 (t!151064 tokens!457))) 0)))))

(declare-datatypes ((LexerInterface!2846 0))(
  ( (LexerInterfaceExt!2843 (__x!11917 Int)) (Lexer!2844) )
))
(declare-fun thiss!17113 () LexerInterface!2846)

(declare-datatypes ((List!18312 0))(
  ( (Nil!18242) (Cons!18242 (h!23643 Rule!6234) (t!151065 List!18312)) )
))
(declare-fun rules!1846 () List!18312)

(declare-fun rulesRegex!601 (LexerInterface!2846 List!18312) Regex!4545)

(assert (=> b!1652726 (= lt!614229 (rulesRegex!601 thiss!17113 rules!1846))))

(declare-fun b!1652727 () Bool)

(declare-fun res!740830 () Bool)

(declare-fun e!1059838 () Bool)

(assert (=> b!1652727 (=> (not res!740830) (not e!1059838))))

(get-info :version)

(assert (=> b!1652727 (= res!740830 (and (not ((_ is Nil!18241) tokens!457)) (not ((_ is Nil!18241) (t!151064 tokens!457)))))))

(declare-fun e!1059852 () Bool)

(declare-fun b!1652728 () Bool)

(declare-fun e!1059850 () Bool)

(declare-fun tp!478134 () Bool)

(declare-fun inv!23597 (String!20867) Bool)

(declare-fun inv!23600 (TokenValueInjection!6274) Bool)

(assert (=> b!1652728 (= e!1059852 (and tp!478134 (inv!23597 (tag!3499 (rule!5081 (h!23642 tokens!457)))) (inv!23600 (transformation!3217 (rule!5081 (h!23642 tokens!457)))) e!1059850))))

(declare-fun b!1652729 () Bool)

(declare-fun e!1059849 () Bool)

(declare-fun tp!478133 () Bool)

(declare-fun e!1059857 () Bool)

(declare-fun inv!23601 (Token!6000) Bool)

(assert (=> b!1652729 (= e!1059849 (and (inv!23601 (h!23642 tokens!457)) e!1059857 tp!478133))))

(declare-fun b!1652730 () Bool)

(declare-fun e!1059858 () Bool)

(declare-fun e!1059840 () Bool)

(assert (=> b!1652730 (= e!1059858 e!1059840)))

(declare-fun res!740844 () Bool)

(assert (=> b!1652730 (=> res!740844 e!1059840)))

(declare-fun lt!614211 () List!18310)

(declare-fun lt!614224 () List!18310)

(declare-fun lt!614210 () List!18310)

(assert (=> b!1652730 (= res!740844 (or (not (= lt!614210 lt!614224)) (not (= lt!614224 lt!614211)) (not (= lt!614210 lt!614211))))))

(declare-fun printList!959 (LexerInterface!2846 List!18311) List!18310)

(assert (=> b!1652730 (= lt!614224 (printList!959 thiss!17113 (Cons!18241 (h!23642 tokens!457) Nil!18241)))))

(declare-fun lt!614213 () BalanceConc!12108)

(declare-fun list!7261 (BalanceConc!12108) List!18310)

(assert (=> b!1652730 (= lt!614210 (list!7261 lt!614213))))

(declare-datatypes ((IArray!12171 0))(
  ( (IArray!12172 (innerList!6143 List!18311)) )
))
(declare-datatypes ((Conc!6083 0))(
  ( (Node!6083 (left!14613 Conc!6083) (right!14943 Conc!6083) (csize!12396 Int) (cheight!6294 Int)) (Leaf!8912 (xs!8923 IArray!12171) (csize!12397 Int)) (Empty!6083) )
))
(declare-datatypes ((BalanceConc!12110 0))(
  ( (BalanceConc!12111 (c!268843 Conc!6083)) )
))
(declare-fun lt!614218 () BalanceConc!12110)

(declare-fun printTailRec!897 (LexerInterface!2846 BalanceConc!12110 Int BalanceConc!12108) BalanceConc!12108)

(assert (=> b!1652730 (= lt!614213 (printTailRec!897 thiss!17113 lt!614218 0 (BalanceConc!12109 Empty!6082)))))

(declare-fun print!1377 (LexerInterface!2846 BalanceConc!12110) BalanceConc!12108)

(assert (=> b!1652730 (= lt!614213 (print!1377 thiss!17113 lt!614218))))

(declare-fun singletonSeq!1707 (Token!6000) BalanceConc!12110)

(assert (=> b!1652730 (= lt!614218 (singletonSeq!1707 (h!23642 tokens!457)))))

(declare-datatypes ((Option!3471 0))(
  ( (None!3470) (Some!3470 (v!24649 tuple2!17930)) )
))
(declare-fun lt!614221 () Option!3471)

(declare-fun lt!614214 () List!18310)

(declare-fun maxPrefix!1408 (LexerInterface!2846 List!18312 List!18310) Option!3471)

(assert (=> b!1652730 (= lt!614221 (maxPrefix!1408 thiss!17113 rules!1846 lt!614214))))

(declare-fun b!1652731 () Bool)

(declare-fun res!740842 () Bool)

(declare-fun e!1059855 () Bool)

(assert (=> b!1652731 (=> res!740842 e!1059855)))

(declare-fun lt!614220 () List!18310)

(declare-fun prefixMatch!462 (Regex!4545 List!18310) Bool)

(declare-fun ++!4940 (List!18310 List!18310) List!18310)

(assert (=> b!1652731 (= res!740842 (prefixMatch!462 lt!614229 (++!4940 lt!614211 lt!614220)))))

(declare-fun b!1652732 () Bool)

(declare-fun e!1059839 () Bool)

(declare-fun e!1059845 () Bool)

(assert (=> b!1652732 (= e!1059839 e!1059845)))

(declare-fun res!740841 () Bool)

(assert (=> b!1652732 (=> res!740841 e!1059845)))

(declare-datatypes ((tuple2!17932 0))(
  ( (tuple2!17933 (_1!10368 Token!6000) (_2!10368 BalanceConc!12108)) )
))
(declare-datatypes ((Option!3472 0))(
  ( (None!3471) (Some!3471 (v!24650 tuple2!17932)) )
))
(declare-fun isDefined!2826 (Option!3472) Bool)

(declare-fun maxPrefixZipperSequence!723 (LexerInterface!2846 List!18312 BalanceConc!12108) Option!3472)

(declare-fun seqFromList!2173 (List!18310) BalanceConc!12108)

(assert (=> b!1652732 (= res!740841 (not (isDefined!2826 (maxPrefixZipperSequence!723 thiss!17113 rules!1846 (seqFromList!2173 (originalCharacters!4031 (h!23642 tokens!457)))))))))

(declare-fun lt!614225 () List!18310)

(assert (=> b!1652732 (= lt!614225 lt!614220)))

(declare-fun lt!614232 () BalanceConc!12108)

(declare-fun head!3648 (BalanceConc!12108) C!9264)

(assert (=> b!1652732 (= lt!614220 (Cons!18240 (head!3648 lt!614232) Nil!18240))))

(declare-fun e!1059846 () Bool)

(assert (=> b!1652732 e!1059846))

(declare-fun res!740833 () Bool)

(assert (=> b!1652732 (=> (not res!740833) (not e!1059846))))

(assert (=> b!1652732 (= res!740833 (= lt!614211 (originalCharacters!4031 (h!23642 tokens!457))))))

(declare-fun b!1652733 () Bool)

(assert (=> b!1652733 (= e!1059845 e!1059855)))

(declare-fun res!740828 () Bool)

(assert (=> b!1652733 (=> res!740828 e!1059855)))

(assert (=> b!1652733 (= res!740828 (prefixMatch!462 lt!614229 (++!4940 (originalCharacters!4031 (h!23642 tokens!457)) lt!614220)))))

(assert (=> b!1652733 e!1059854))

(declare-fun res!740837 () Bool)

(assert (=> b!1652733 (=> (not res!740837) (not e!1059854))))

(assert (=> b!1652733 (= res!740837 (= (_1!10367 lt!614217) (h!23642 tokens!457)))))

(declare-fun lt!614216 () Option!3471)

(declare-fun get!5314 (Option!3471) tuple2!17930)

(assert (=> b!1652733 (= lt!614217 (get!5314 lt!614216))))

(declare-fun isDefined!2827 (Option!3471) Bool)

(assert (=> b!1652733 (isDefined!2827 lt!614216)))

(assert (=> b!1652733 (= lt!614216 (maxPrefix!1408 thiss!17113 rules!1846 lt!614211))))

(assert (=> b!1652733 (isDefined!2827 (maxPrefix!1408 thiss!17113 rules!1846 (originalCharacters!4031 (h!23642 tokens!457))))))

(declare-fun b!1652734 () Bool)

(declare-fun e!1059843 () Bool)

(declare-fun e!1059853 () Bool)

(assert (=> b!1652734 (= e!1059843 (not e!1059853))))

(declare-fun res!740847 () Bool)

(assert (=> b!1652734 (=> res!740847 e!1059853)))

(declare-fun lt!614228 () List!18311)

(assert (=> b!1652734 (= res!740847 (not (= lt!614228 (t!151064 tokens!457))))))

(declare-datatypes ((tuple2!17934 0))(
  ( (tuple2!17935 (_1!10369 BalanceConc!12110) (_2!10369 BalanceConc!12108)) )
))
(declare-fun lt!614231 () tuple2!17934)

(declare-fun list!7262 (BalanceConc!12110) List!18311)

(assert (=> b!1652734 (= lt!614228 (list!7262 (_1!10369 lt!614231)))))

(declare-datatypes ((Unit!30447 0))(
  ( (Unit!30448) )
))
(declare-fun lt!614206 () Unit!30447)

(declare-fun theoremInvertabilityWhenTokenListSeparable!289 (LexerInterface!2846 List!18312 List!18311) Unit!30447)

(assert (=> b!1652734 (= lt!614206 (theoremInvertabilityWhenTokenListSeparable!289 thiss!17113 rules!1846 (t!151064 tokens!457)))))

(declare-fun lt!614219 () List!18310)

(declare-fun isPrefix!1475 (List!18310 List!18310) Bool)

(assert (=> b!1652734 (isPrefix!1475 lt!614211 lt!614219)))

(declare-fun lt!614207 () Unit!30447)

(declare-fun lt!614212 () List!18310)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1000 (List!18310 List!18310) Unit!30447)

(assert (=> b!1652734 (= lt!614207 (lemmaConcatTwoListThenFirstIsPrefix!1000 lt!614211 lt!614212))))

(declare-fun b!1652735 () Bool)

(assert (=> b!1652735 (= e!1059838 e!1059843)))

(declare-fun res!740849 () Bool)

(assert (=> b!1652735 (=> (not res!740849) (not e!1059843))))

(assert (=> b!1652735 (= res!740849 (= lt!614214 lt!614219))))

(assert (=> b!1652735 (= lt!614219 (++!4940 lt!614211 lt!614212))))

(declare-fun lt!614226 () BalanceConc!12108)

(assert (=> b!1652735 (= lt!614214 (list!7261 lt!614226))))

(assert (=> b!1652735 (= lt!614212 (list!7261 lt!614232))))

(assert (=> b!1652735 (= lt!614211 (list!7261 lt!614222))))

(assert (=> b!1652735 (= lt!614222 (charsOf!1866 (h!23642 tokens!457)))))

(declare-fun lex!1330 (LexerInterface!2846 List!18312 BalanceConc!12108) tuple2!17934)

(assert (=> b!1652735 (= lt!614231 (lex!1330 thiss!17113 rules!1846 lt!614232))))

(declare-fun lt!614205 () BalanceConc!12110)

(assert (=> b!1652735 (= lt!614232 (print!1377 thiss!17113 lt!614205))))

(declare-fun seqFromList!2174 (List!18311) BalanceConc!12110)

(assert (=> b!1652735 (= lt!614205 (seqFromList!2174 (t!151064 tokens!457)))))

(assert (=> b!1652735 (= lt!614226 (print!1377 thiss!17113 (seqFromList!2174 tokens!457)))))

(declare-fun b!1652736 () Bool)

(assert (=> b!1652736 (= e!1059851 e!1059839)))

(declare-fun res!740846 () Bool)

(assert (=> b!1652736 (=> res!740846 e!1059839)))

(assert (=> b!1652736 (= res!740846 (prefixMatch!462 lt!614229 (++!4940 lt!614211 lt!614225)))))

(assert (=> b!1652736 (= lt!614225 (list!7261 lt!614208))))

(declare-fun b!1652737 () Bool)

(assert (=> b!1652737 (= e!1059853 e!1059858)))

(declare-fun res!740845 () Bool)

(assert (=> b!1652737 (=> res!740845 e!1059858)))

(declare-fun lt!614209 () List!18311)

(declare-fun lt!614223 () List!18311)

(assert (=> b!1652737 (= res!740845 (or (not (= lt!614228 lt!614209)) (not (= lt!614209 lt!614223))))))

(assert (=> b!1652737 (= lt!614209 (list!7262 lt!614205))))

(assert (=> b!1652737 (= lt!614228 lt!614223)))

(declare-fun prepend!783 (BalanceConc!12110 Token!6000) BalanceConc!12110)

(assert (=> b!1652737 (= lt!614223 (list!7262 (prepend!783 (seqFromList!2174 (t!151064 (t!151064 tokens!457))) (h!23642 (t!151064 tokens!457)))))))

(declare-fun lt!614215 () Unit!30447)

(declare-fun seqFromListBHdTlConstructive!292 (Token!6000 List!18311 BalanceConc!12110) Unit!30447)

(assert (=> b!1652737 (= lt!614215 (seqFromListBHdTlConstructive!292 (h!23642 (t!151064 tokens!457)) (t!151064 (t!151064 tokens!457)) (_1!10369 lt!614231)))))

(declare-fun b!1652738 () Bool)

(declare-fun res!740832 () Bool)

(assert (=> b!1652738 (=> res!740832 e!1059840)))

(declare-fun isEmpty!11274 (BalanceConc!12110) Bool)

(assert (=> b!1652738 (= res!740832 (isEmpty!11274 (_1!10369 (lex!1330 thiss!17113 rules!1846 (seqFromList!2173 lt!614211)))))))

(declare-fun b!1652739 () Bool)

(declare-fun res!740831 () Bool)

(assert (=> b!1652739 (=> (not res!740831) (not e!1059838))))

(declare-fun rulesProduceEachTokenIndividuallyList!1048 (LexerInterface!2846 List!18312 List!18311) Bool)

(assert (=> b!1652739 (= res!740831 (rulesProduceEachTokenIndividuallyList!1048 thiss!17113 rules!1846 tokens!457))))

(declare-fun e!1059841 () Bool)

(declare-fun tp!478136 () Bool)

(declare-fun e!1059847 () Bool)

(declare-fun b!1652740 () Bool)

(assert (=> b!1652740 (= e!1059847 (and tp!478136 (inv!23597 (tag!3499 (h!23643 rules!1846))) (inv!23600 (transformation!3217 (h!23643 rules!1846))) e!1059841))))

(declare-fun b!1652741 () Bool)

(declare-fun e!1059837 () Bool)

(declare-fun tp!478137 () Bool)

(assert (=> b!1652741 (= e!1059837 (and e!1059847 tp!478137))))

(declare-fun b!1652742 () Bool)

(declare-fun head!3649 (List!18310) C!9264)

(assert (=> b!1652742 (= e!1059846 (= lt!614225 (Cons!18240 (head!3649 lt!614212) Nil!18240)))))

(declare-fun b!1652743 () Bool)

(assert (=> b!1652743 (= e!1059855 (= (_1!10367 (get!5314 lt!614221)) (h!23642 tokens!457)))))

(declare-fun lt!614227 () Unit!30447)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!172 (LexerInterface!2846 List!18312 Token!6000 Rule!6234 List!18310) Unit!30447)

(assert (=> b!1652743 (= lt!614227 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!172 thiss!17113 rules!1846 (h!23642 tokens!457) (rule!5081 (h!23642 tokens!457)) lt!614212))))

(declare-fun b!1652744 () Bool)

(declare-fun matchR!2038 (Regex!4545 List!18310) Bool)

(assert (=> b!1652744 (= e!1059854 (matchR!2038 (regex!3217 (rule!5081 (h!23642 tokens!457))) lt!614211))))

(assert (=> b!1652745 (= e!1059850 (and tp!478132 tp!478135))))

(declare-fun b!1652746 () Bool)

(declare-fun res!740834 () Bool)

(assert (=> b!1652746 (=> res!740834 e!1059840)))

(declare-fun rulesProduceIndividualToken!1494 (LexerInterface!2846 List!18312 Token!6000) Bool)

(assert (=> b!1652746 (= res!740834 (not (rulesProduceIndividualToken!1494 thiss!17113 rules!1846 (h!23642 tokens!457))))))

(assert (=> b!1652747 (= e!1059841 (and tp!478139 tp!478140))))

(declare-fun b!1652748 () Bool)

(declare-fun res!740839 () Bool)

(assert (=> b!1652748 (=> res!740839 e!1059858)))

(declare-fun separableTokensPredicate!786 (LexerInterface!2846 Token!6000 Token!6000 List!18312) Bool)

(assert (=> b!1652748 (= res!740839 (not (separableTokensPredicate!786 thiss!17113 (h!23642 tokens!457) (h!23642 (t!151064 tokens!457)) rules!1846)))))

(declare-fun b!1652749 () Bool)

(declare-fun res!740838 () Bool)

(assert (=> b!1652749 (=> (not res!740838) (not e!1059838))))

(declare-fun isEmpty!11275 (List!18312) Bool)

(assert (=> b!1652749 (= res!740838 (not (isEmpty!11275 rules!1846)))))

(declare-fun b!1652750 () Bool)

(declare-fun tp!478138 () Bool)

(declare-fun inv!21 (TokenValue!3307) Bool)

(assert (=> b!1652750 (= e!1059857 (and (inv!21 (value!101357 (h!23642 tokens!457))) e!1059852 tp!478138))))

(declare-fun b!1652751 () Bool)

(declare-fun res!740843 () Bool)

(assert (=> b!1652751 (=> (not res!740843) (not e!1059846))))

(assert (=> b!1652751 (= res!740843 (= lt!614225 (Cons!18240 (head!3649 (originalCharacters!4031 (h!23642 (t!151064 tokens!457)))) Nil!18240)))))

(declare-fun b!1652752 () Bool)

(assert (=> b!1652752 (= e!1059840 e!1059856)))

(declare-fun res!740840 () Bool)

(assert (=> b!1652752 (=> res!740840 e!1059856)))

(assert (=> b!1652752 (= res!740840 (not (isDefined!2827 lt!614221)))))

(declare-fun lt!614230 () Unit!30447)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!414 (LexerInterface!2846 List!18312 List!18310 List!18310) Unit!30447)

(assert (=> b!1652752 (= lt!614230 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!414 thiss!17113 rules!1846 lt!614211 lt!614212))))

(declare-fun b!1652753 () Bool)

(declare-fun res!740835 () Bool)

(assert (=> b!1652753 (=> (not res!740835) (not e!1059838))))

(declare-fun rulesInvariant!2515 (LexerInterface!2846 List!18312) Bool)

(assert (=> b!1652753 (= res!740835 (rulesInvariant!2515 thiss!17113 rules!1846))))

(declare-fun res!740827 () Bool)

(assert (=> start!159138 (=> (not res!740827) (not e!1059838))))

(assert (=> start!159138 (= res!740827 ((_ is Lexer!2844) thiss!17113))))

(assert (=> start!159138 e!1059838))

(assert (=> start!159138 true))

(assert (=> start!159138 e!1059837))

(assert (=> start!159138 e!1059849))

(declare-fun b!1652754 () Bool)

(declare-fun res!740836 () Bool)

(assert (=> b!1652754 (=> (not res!740836) (not e!1059838))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!539 (LexerInterface!2846 List!18311 List!18312) Bool)

(assert (=> b!1652754 (= res!740836 (tokensListTwoByTwoPredicateSeparableList!539 thiss!17113 tokens!457 rules!1846))))

(assert (= (and start!159138 res!740827) b!1652749))

(assert (= (and b!1652749 res!740838) b!1652753))

(assert (= (and b!1652753 res!740835) b!1652739))

(assert (= (and b!1652739 res!740831) b!1652754))

(assert (= (and b!1652754 res!740836) b!1652727))

(assert (= (and b!1652727 res!740830) b!1652735))

(assert (= (and b!1652735 res!740849) b!1652734))

(assert (= (and b!1652734 (not res!740847)) b!1652737))

(assert (= (and b!1652737 (not res!740845)) b!1652748))

(assert (= (and b!1652748 (not res!740839)) b!1652730))

(assert (= (and b!1652730 (not res!740844)) b!1652746))

(assert (= (and b!1652746 (not res!740834)) b!1652738))

(assert (= (and b!1652738 (not res!740832)) b!1652752))

(assert (= (and b!1652752 (not res!740840)) b!1652726))

(assert (= (and b!1652726 (not res!740848)) b!1652736))

(assert (= (and b!1652736 (not res!740846)) b!1652732))

(assert (= (and b!1652732 res!740833) b!1652751))

(assert (= (and b!1652751 res!740843) b!1652742))

(assert (= (and b!1652732 (not res!740841)) b!1652733))

(assert (= (and b!1652733 res!740837) b!1652725))

(assert (= (and b!1652725 res!740829) b!1652744))

(assert (= (and b!1652733 (not res!740828)) b!1652731))

(assert (= (and b!1652731 (not res!740842)) b!1652743))

(assert (= b!1652740 b!1652747))

(assert (= b!1652741 b!1652740))

(assert (= (and start!159138 ((_ is Cons!18242) rules!1846)) b!1652741))

(assert (= b!1652728 b!1652745))

(assert (= b!1652750 b!1652728))

(assert (= b!1652729 b!1652750))

(assert (= (and start!159138 ((_ is Cons!18241) tokens!457)) b!1652729))

(declare-fun m!2004073 () Bool)

(assert (=> b!1652742 m!2004073))

(declare-fun m!2004075 () Bool)

(assert (=> b!1652754 m!2004075))

(declare-fun m!2004077 () Bool)

(assert (=> b!1652732 m!2004077))

(assert (=> b!1652732 m!2004077))

(declare-fun m!2004079 () Bool)

(assert (=> b!1652732 m!2004079))

(assert (=> b!1652732 m!2004079))

(declare-fun m!2004081 () Bool)

(assert (=> b!1652732 m!2004081))

(declare-fun m!2004083 () Bool)

(assert (=> b!1652732 m!2004083))

(declare-fun m!2004085 () Bool)

(assert (=> b!1652734 m!2004085))

(declare-fun m!2004087 () Bool)

(assert (=> b!1652734 m!2004087))

(declare-fun m!2004089 () Bool)

(assert (=> b!1652734 m!2004089))

(declare-fun m!2004091 () Bool)

(assert (=> b!1652734 m!2004091))

(declare-fun m!2004093 () Bool)

(assert (=> b!1652728 m!2004093))

(declare-fun m!2004095 () Bool)

(assert (=> b!1652728 m!2004095))

(declare-fun m!2004097 () Bool)

(assert (=> b!1652726 m!2004097))

(declare-fun m!2004099 () Bool)

(assert (=> b!1652726 m!2004099))

(declare-fun m!2004101 () Bool)

(assert (=> b!1652726 m!2004101))

(declare-fun m!2004103 () Bool)

(assert (=> b!1652726 m!2004103))

(declare-fun m!2004105 () Bool)

(assert (=> b!1652726 m!2004105))

(assert (=> b!1652726 m!2004099))

(declare-fun m!2004107 () Bool)

(assert (=> b!1652726 m!2004107))

(assert (=> b!1652726 m!2004103))

(assert (=> b!1652726 m!2004107))

(declare-fun m!2004109 () Bool)

(assert (=> b!1652733 m!2004109))

(declare-fun m!2004111 () Bool)

(assert (=> b!1652733 m!2004111))

(declare-fun m!2004113 () Bool)

(assert (=> b!1652733 m!2004113))

(declare-fun m!2004115 () Bool)

(assert (=> b!1652733 m!2004115))

(declare-fun m!2004117 () Bool)

(assert (=> b!1652733 m!2004117))

(declare-fun m!2004119 () Bool)

(assert (=> b!1652733 m!2004119))

(assert (=> b!1652733 m!2004111))

(declare-fun m!2004121 () Bool)

(assert (=> b!1652733 m!2004121))

(assert (=> b!1652733 m!2004113))

(declare-fun m!2004123 () Bool)

(assert (=> b!1652731 m!2004123))

(assert (=> b!1652731 m!2004123))

(declare-fun m!2004125 () Bool)

(assert (=> b!1652731 m!2004125))

(declare-fun m!2004127 () Bool)

(assert (=> b!1652737 m!2004127))

(declare-fun m!2004129 () Bool)

(assert (=> b!1652737 m!2004129))

(declare-fun m!2004131 () Bool)

(assert (=> b!1652737 m!2004131))

(declare-fun m!2004133 () Bool)

(assert (=> b!1652737 m!2004133))

(declare-fun m!2004135 () Bool)

(assert (=> b!1652737 m!2004135))

(assert (=> b!1652737 m!2004131))

(assert (=> b!1652737 m!2004133))

(declare-fun m!2004137 () Bool)

(assert (=> b!1652752 m!2004137))

(declare-fun m!2004139 () Bool)

(assert (=> b!1652752 m!2004139))

(declare-fun m!2004141 () Bool)

(assert (=> b!1652746 m!2004141))

(declare-fun m!2004143 () Bool)

(assert (=> b!1652750 m!2004143))

(declare-fun m!2004145 () Bool)

(assert (=> b!1652729 m!2004145))

(declare-fun m!2004147 () Bool)

(assert (=> b!1652725 m!2004147))

(declare-fun m!2004149 () Bool)

(assert (=> b!1652749 m!2004149))

(declare-fun m!2004151 () Bool)

(assert (=> b!1652753 m!2004151))

(declare-fun m!2004153 () Bool)

(assert (=> b!1652739 m!2004153))

(declare-fun m!2004155 () Bool)

(assert (=> b!1652735 m!2004155))

(declare-fun m!2004157 () Bool)

(assert (=> b!1652735 m!2004157))

(declare-fun m!2004159 () Bool)

(assert (=> b!1652735 m!2004159))

(declare-fun m!2004161 () Bool)

(assert (=> b!1652735 m!2004161))

(declare-fun m!2004163 () Bool)

(assert (=> b!1652735 m!2004163))

(declare-fun m!2004165 () Bool)

(assert (=> b!1652735 m!2004165))

(declare-fun m!2004167 () Bool)

(assert (=> b!1652735 m!2004167))

(declare-fun m!2004169 () Bool)

(assert (=> b!1652735 m!2004169))

(declare-fun m!2004171 () Bool)

(assert (=> b!1652735 m!2004171))

(assert (=> b!1652735 m!2004165))

(declare-fun m!2004173 () Bool)

(assert (=> b!1652735 m!2004173))

(declare-fun m!2004175 () Bool)

(assert (=> b!1652751 m!2004175))

(declare-fun m!2004177 () Bool)

(assert (=> b!1652738 m!2004177))

(assert (=> b!1652738 m!2004177))

(declare-fun m!2004179 () Bool)

(assert (=> b!1652738 m!2004179))

(declare-fun m!2004181 () Bool)

(assert (=> b!1652738 m!2004181))

(declare-fun m!2004183 () Bool)

(assert (=> b!1652744 m!2004183))

(declare-fun m!2004185 () Bool)

(assert (=> b!1652736 m!2004185))

(assert (=> b!1652736 m!2004185))

(declare-fun m!2004187 () Bool)

(assert (=> b!1652736 m!2004187))

(declare-fun m!2004189 () Bool)

(assert (=> b!1652736 m!2004189))

(declare-fun m!2004191 () Bool)

(assert (=> b!1652743 m!2004191))

(declare-fun m!2004193 () Bool)

(assert (=> b!1652743 m!2004193))

(declare-fun m!2004195 () Bool)

(assert (=> b!1652730 m!2004195))

(declare-fun m!2004197 () Bool)

(assert (=> b!1652730 m!2004197))

(declare-fun m!2004199 () Bool)

(assert (=> b!1652730 m!2004199))

(declare-fun m!2004201 () Bool)

(assert (=> b!1652730 m!2004201))

(declare-fun m!2004203 () Bool)

(assert (=> b!1652730 m!2004203))

(declare-fun m!2004205 () Bool)

(assert (=> b!1652730 m!2004205))

(declare-fun m!2004207 () Bool)

(assert (=> b!1652740 m!2004207))

(declare-fun m!2004209 () Bool)

(assert (=> b!1652740 m!2004209))

(declare-fun m!2004211 () Bool)

(assert (=> b!1652748 m!2004211))

(check-sat (not b!1652752) (not b!1652751) (not b!1652746) (not b!1652733) b_and!117369 (not b!1652725) (not b_next!45623) (not b!1652744) (not b!1652731) (not b_next!45627) (not b!1652742) (not b!1652730) (not b!1652740) (not b!1652736) (not b!1652728) (not b_next!45629) (not b!1652748) (not b!1652743) (not b!1652734) (not b!1652732) (not b!1652749) (not b!1652739) (not b!1652741) (not b!1652737) (not b!1652750) (not b!1652738) (not b!1652735) b_and!117365 (not b!1652753) (not b!1652754) (not b!1652726) b_and!117371 (not b!1652729) (not b_next!45625) b_and!117367)
(check-sat (not b_next!45629) b_and!117369 (not b_next!45623) b_and!117365 b_and!117371 (not b_next!45627) (not b_next!45625) b_and!117367)
(get-model)

(declare-fun d!498557 () Bool)

(assert (=> d!498557 (= (head!3649 lt!614212) (h!23641 lt!614212))))

(assert (=> b!1652742 d!498557))

(declare-fun d!498561 () Bool)

(assert (=> d!498561 (= (get!5314 lt!614221) (v!24649 lt!614221))))

(assert (=> b!1652743 d!498561))

(declare-fun b!1652939 () Bool)

(declare-fun e!1059962 () Unit!30447)

(declare-fun Unit!30449 () Unit!30447)

(assert (=> b!1652939 (= e!1059962 Unit!30449)))

(declare-fun b!1652940 () Bool)

(declare-fun e!1059963 () Unit!30447)

(declare-fun Unit!30450 () Unit!30447)

(assert (=> b!1652940 (= e!1059963 Unit!30450)))

(declare-fun lt!614475 () Token!6000)

(declare-fun b!1652941 () Bool)

(declare-fun e!1059966 () Bool)

(declare-datatypes ((Option!3473 0))(
  ( (None!3472) (Some!3472 (v!24657 Rule!6234)) )
))
(declare-fun get!5315 (Option!3473) Rule!6234)

(declare-fun getRuleFromTag!317 (LexerInterface!2846 List!18312 String!20867) Option!3473)

(assert (=> b!1652941 (= e!1059966 (= (rule!5081 lt!614475) (get!5315 (getRuleFromTag!317 thiss!17113 rules!1846 (tag!3499 (rule!5081 lt!614475))))))))

(declare-fun b!1652942 () Bool)

(declare-fun e!1059964 () Unit!30447)

(declare-fun Unit!30451 () Unit!30447)

(assert (=> b!1652942 (= e!1059964 Unit!30451)))

(declare-fun lt!614483 () List!18310)

(assert (=> b!1652942 (= lt!614483 (list!7261 (charsOf!1866 lt!614475)))))

(declare-fun lt!614450 () List!18310)

(assert (=> b!1652942 (= lt!614450 (list!7261 (charsOf!1866 (h!23642 tokens!457))))))

(declare-fun lt!614473 () Unit!30447)

(declare-fun lt!614443 () List!18310)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!145 (LexerInterface!2846 List!18312 Rule!6234 List!18310 List!18310 List!18310 Rule!6234) Unit!30447)

(assert (=> b!1652942 (= lt!614473 (lemmaMaxPrefixOutputsMaxPrefix!145 thiss!17113 rules!1846 (rule!5081 lt!614475) lt!614483 lt!614443 lt!614450 (rule!5081 (h!23642 tokens!457))))))

(assert (=> b!1652942 (not (matchR!2038 (regex!3217 (rule!5081 (h!23642 tokens!457))) lt!614450))))

(declare-fun lt!614466 () Unit!30447)

(assert (=> b!1652942 (= lt!614466 lt!614473)))

(assert (=> b!1652942 false))

(declare-fun b!1652943 () Bool)

(declare-fun e!1059967 () Unit!30447)

(declare-fun Unit!30453 () Unit!30447)

(assert (=> b!1652943 (= e!1059967 Unit!30453)))

(declare-fun b!1652944 () Bool)

(assert (=> b!1652944 false))

(declare-fun lt!614493 () Unit!30447)

(declare-fun lt!614499 () Unit!30447)

(assert (=> b!1652944 (= lt!614493 lt!614499)))

(declare-fun lt!614490 () List!18310)

(assert (=> b!1652944 (not (matchR!2038 (regex!3217 (rule!5081 (h!23642 tokens!457))) lt!614490))))

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!95 (LexerInterface!2846 List!18312 Rule!6234 List!18310 List!18310 Rule!6234) Unit!30447)

(assert (=> b!1652944 (= lt!614499 (lemmaMaxPrefNoSmallerRuleMatches!95 thiss!17113 rules!1846 (rule!5081 lt!614475) lt!614490 lt!614443 (rule!5081 (h!23642 tokens!457))))))

(assert (=> b!1652944 (= lt!614490 (list!7261 (charsOf!1866 lt!614475)))))

(declare-fun Unit!30455 () Unit!30447)

(assert (=> b!1652944 (= e!1059963 Unit!30455)))

(declare-fun b!1652945 () Bool)

(declare-fun Unit!30457 () Unit!30447)

(assert (=> b!1652945 (= e!1059964 Unit!30457)))

(declare-fun b!1652946 () Bool)

(assert (=> b!1652946 false))

(declare-fun lt!614461 () Unit!30447)

(declare-fun lt!614451 () Unit!30447)

(assert (=> b!1652946 (= lt!614461 lt!614451)))

(assert (=> b!1652946 (= (rule!5081 lt!614475) (rule!5081 (h!23642 tokens!457)))))

(declare-fun lemmaSameIndexThenSameElement!71 (List!18312 Rule!6234 Rule!6234) Unit!30447)

(assert (=> b!1652946 (= lt!614451 (lemmaSameIndexThenSameElement!71 rules!1846 (rule!5081 lt!614475) (rule!5081 (h!23642 tokens!457))))))

(declare-fun e!1059965 () Unit!30447)

(declare-fun Unit!30458 () Unit!30447)

(assert (=> b!1652946 (= e!1059965 Unit!30458)))

(declare-fun b!1652947 () Bool)

(declare-fun res!740950 () Bool)

(assert (=> b!1652947 (=> (not res!740950) (not e!1059966))))

(assert (=> b!1652947 (= res!740950 (matchR!2038 (regex!3217 (get!5315 (getRuleFromTag!317 thiss!17113 rules!1846 (tag!3499 (rule!5081 lt!614475))))) (list!7261 (charsOf!1866 lt!614475))))))

(declare-fun b!1652948 () Bool)

(declare-fun Unit!30460 () Unit!30447)

(assert (=> b!1652948 (= e!1059965 Unit!30460)))

(declare-fun d!498563 () Bool)

(assert (=> d!498563 (= (maxPrefix!1408 thiss!17113 rules!1846 (++!4940 (list!7261 (charsOf!1866 (h!23642 tokens!457))) lt!614212)) (Some!3470 (tuple2!17931 (h!23642 tokens!457) lt!614212)))))

(declare-fun lt!614478 () Unit!30447)

(declare-fun Unit!30461 () Unit!30447)

(assert (=> d!498563 (= lt!614478 Unit!30461)))

(declare-fun lt!614476 () Unit!30447)

(assert (=> d!498563 (= lt!614476 e!1059962)))

(declare-fun c!268885 () Bool)

(assert (=> d!498563 (= c!268885 (not (= (rule!5081 lt!614475) (rule!5081 (h!23642 tokens!457)))))))

(declare-fun lt!614465 () Unit!30447)

(declare-fun lt!614484 () Unit!30447)

(assert (=> d!498563 (= lt!614465 lt!614484)))

(declare-fun lt!614503 () List!18310)

(assert (=> d!498563 (= lt!614212 lt!614503)))

(declare-fun lemmaSamePrefixThenSameSuffix!677 (List!18310 List!18310 List!18310 List!18310 List!18310) Unit!30447)

(assert (=> d!498563 (= lt!614484 (lemmaSamePrefixThenSameSuffix!677 (list!7261 (charsOf!1866 (h!23642 tokens!457))) lt!614212 (list!7261 (charsOf!1866 (h!23642 tokens!457))) lt!614503 lt!614443))))

(declare-fun lt!614462 () Unit!30447)

(declare-fun lt!614479 () Unit!30447)

(assert (=> d!498563 (= lt!614462 lt!614479)))

(declare-fun lt!614439 () List!18310)

(declare-fun lt!614467 () List!18310)

(assert (=> d!498563 (= lt!614439 lt!614467)))

(declare-fun lemmaIsPrefixSameLengthThenSameList!178 (List!18310 List!18310 List!18310) Unit!30447)

(assert (=> d!498563 (= lt!614479 (lemmaIsPrefixSameLengthThenSameList!178 lt!614439 lt!614467 lt!614443))))

(assert (=> d!498563 (= lt!614467 (list!7261 (charsOf!1866 (h!23642 tokens!457))))))

(assert (=> d!498563 (= lt!614439 (list!7261 (charsOf!1866 lt!614475)))))

(declare-fun lt!614487 () Unit!30447)

(assert (=> d!498563 (= lt!614487 e!1059964)))

(declare-fun c!268886 () Bool)

(declare-fun size!14524 (BalanceConc!12108) Int)

(assert (=> d!498563 (= c!268886 (< (size!14524 (charsOf!1866 lt!614475)) (size!14524 (charsOf!1866 (h!23642 tokens!457)))))))

(declare-fun lt!614498 () Unit!30447)

(declare-fun e!1059961 () Unit!30447)

(assert (=> d!498563 (= lt!614498 e!1059961)))

(declare-fun c!268884 () Bool)

(assert (=> d!498563 (= c!268884 (> (size!14524 (charsOf!1866 lt!614475)) (size!14524 (charsOf!1866 (h!23642 tokens!457)))))))

(declare-fun lt!614494 () Unit!30447)

(declare-fun lt!614472 () Unit!30447)

(assert (=> d!498563 (= lt!614494 lt!614472)))

(assert (=> d!498563 (matchR!2038 (rulesRegex!601 thiss!17113 rules!1846) (list!7261 (charsOf!1866 (h!23642 tokens!457))))))

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!55 (LexerInterface!2846 List!18312 List!18310 Token!6000 Rule!6234 List!18310) Unit!30447)

(assert (=> d!498563 (= lt!614472 (lemmaMaxPrefixThenMatchesRulesRegex!55 thiss!17113 rules!1846 (list!7261 (charsOf!1866 (h!23642 tokens!457))) (h!23642 tokens!457) (rule!5081 (h!23642 tokens!457)) Nil!18240))))

(declare-fun lt!614453 () Unit!30447)

(declare-fun lt!614448 () Unit!30447)

(assert (=> d!498563 (= lt!614453 lt!614448)))

(declare-fun lt!614457 () List!18310)

(assert (=> d!498563 (= lt!614503 lt!614457)))

(declare-fun lt!614438 () List!18310)

(declare-fun lt!614505 () List!18310)

(assert (=> d!498563 (= lt!614448 (lemmaSamePrefixThenSameSuffix!677 lt!614438 lt!614503 lt!614505 lt!614457 lt!614443))))

(declare-fun getSuffix!725 (List!18310 List!18310) List!18310)

(assert (=> d!498563 (= lt!614457 (getSuffix!725 lt!614443 (list!7261 (charsOf!1866 lt!614475))))))

(assert (=> d!498563 (= lt!614505 (list!7261 (charsOf!1866 lt!614475)))))

(assert (=> d!498563 (= lt!614438 (list!7261 (charsOf!1866 lt!614475)))))

(declare-fun lt!614449 () Unit!30447)

(declare-fun lt!614496 () Unit!30447)

(assert (=> d!498563 (= lt!614449 lt!614496)))

(declare-fun lt!614508 () List!18310)

(declare-fun maxPrefixOneRule!813 (LexerInterface!2846 Rule!6234 List!18310) Option!3471)

(declare-fun apply!4822 (TokenValueInjection!6274 BalanceConc!12108) TokenValue!3307)

(declare-fun size!14525 (List!18310) Int)

(assert (=> d!498563 (= (maxPrefixOneRule!813 thiss!17113 (rule!5081 lt!614475) lt!614443) (Some!3470 (tuple2!17931 (Token!6001 (apply!4822 (transformation!3217 (rule!5081 lt!614475)) (seqFromList!2173 lt!614508)) (rule!5081 lt!614475) (size!14525 lt!614508) lt!614508) lt!614503)))))

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!244 (LexerInterface!2846 List!18312 List!18310 List!18310 List!18310 Rule!6234) Unit!30447)

(assert (=> d!498563 (= lt!614496 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!244 thiss!17113 rules!1846 lt!614508 lt!614443 lt!614503 (rule!5081 lt!614475)))))

(assert (=> d!498563 (= lt!614508 (list!7261 (charsOf!1866 lt!614475)))))

(declare-fun lt!614502 () Unit!30447)

(declare-fun lemmaCharactersSize!350 (Token!6000) Unit!30447)

(assert (=> d!498563 (= lt!614502 (lemmaCharactersSize!350 lt!614475))))

(declare-fun lt!614495 () Unit!30447)

(declare-fun lemmaEqSameImage!203 (TokenValueInjection!6274 BalanceConc!12108 BalanceConc!12108) Unit!30447)

(assert (=> d!498563 (= lt!614495 (lemmaEqSameImage!203 (transformation!3217 (rule!5081 lt!614475)) (charsOf!1866 lt!614475) (seqFromList!2173 (originalCharacters!4031 lt!614475))))))

(declare-fun lt!614440 () Unit!30447)

(declare-fun lemmaSemiInverse!418 (TokenValueInjection!6274 BalanceConc!12108) Unit!30447)

(assert (=> d!498563 (= lt!614440 (lemmaSemiInverse!418 (transformation!3217 (rule!5081 lt!614475)) (charsOf!1866 lt!614475)))))

(declare-fun lt!614501 () Unit!30447)

(declare-fun lemmaInv!483 (TokenValueInjection!6274) Unit!30447)

(assert (=> d!498563 (= lt!614501 (lemmaInv!483 (transformation!3217 (rule!5081 lt!614475))))))

(declare-fun lt!614458 () Unit!30447)

(declare-fun lt!614489 () Unit!30447)

(assert (=> d!498563 (= lt!614458 lt!614489)))

(declare-fun lt!614459 () List!18310)

(assert (=> d!498563 (isPrefix!1475 lt!614459 (++!4940 lt!614459 lt!614503))))

(assert (=> d!498563 (= lt!614489 (lemmaConcatTwoListThenFirstIsPrefix!1000 lt!614459 lt!614503))))

(assert (=> d!498563 (= lt!614459 (list!7261 (charsOf!1866 lt!614475)))))

(declare-fun lt!614447 () Unit!30447)

(declare-fun lt!614464 () Unit!30447)

(assert (=> d!498563 (= lt!614447 lt!614464)))

(assert (=> d!498563 e!1059966))

(declare-fun res!740951 () Bool)

(assert (=> d!498563 (=> (not res!740951) (not e!1059966))))

(declare-fun isDefined!2828 (Option!3473) Bool)

(assert (=> d!498563 (= res!740951 (isDefined!2828 (getRuleFromTag!317 thiss!17113 rules!1846 (tag!3499 (rule!5081 lt!614475)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!317 (LexerInterface!2846 List!18312 List!18310 Token!6000) Unit!30447)

(assert (=> d!498563 (= lt!614464 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!317 thiss!17113 rules!1846 lt!614443 lt!614475))))

(declare-fun lt!614444 () Option!3471)

(assert (=> d!498563 (= lt!614503 (_2!10367 (get!5314 lt!614444)))))

(assert (=> d!498563 (= lt!614475 (_1!10367 (get!5314 lt!614444)))))

(declare-fun lt!614500 () Unit!30447)

(assert (=> d!498563 (= lt!614500 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!414 thiss!17113 rules!1846 (list!7261 (charsOf!1866 (h!23642 tokens!457))) lt!614212))))

(assert (=> d!498563 (= lt!614444 (maxPrefix!1408 thiss!17113 rules!1846 lt!614443))))

(declare-fun lt!614481 () Unit!30447)

(declare-fun lt!614485 () Unit!30447)

(assert (=> d!498563 (= lt!614481 lt!614485)))

(declare-fun lt!614471 () List!18310)

(assert (=> d!498563 (isPrefix!1475 lt!614471 (++!4940 lt!614471 lt!614212))))

(assert (=> d!498563 (= lt!614485 (lemmaConcatTwoListThenFirstIsPrefix!1000 lt!614471 lt!614212))))

(assert (=> d!498563 (= lt!614471 (list!7261 (charsOf!1866 (h!23642 tokens!457))))))

(assert (=> d!498563 (= lt!614443 (++!4940 (list!7261 (charsOf!1866 (h!23642 tokens!457))) lt!614212))))

(assert (=> d!498563 (not (isEmpty!11275 rules!1846))))

(assert (=> d!498563 (= (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!172 thiss!17113 rules!1846 (h!23642 tokens!457) (rule!5081 (h!23642 tokens!457)) lt!614212) lt!614478)))

(declare-fun b!1652949 () Bool)

(declare-fun Unit!30463 () Unit!30447)

(assert (=> b!1652949 (= e!1059961 Unit!30463)))

(declare-fun b!1652950 () Bool)

(declare-fun Unit!30464 () Unit!30447)

(assert (=> b!1652950 (= e!1059961 Unit!30464)))

(declare-fun lt!614504 () Unit!30447)

(assert (=> b!1652950 (= lt!614504 (lemmaMaxPrefixThenMatchesRulesRegex!55 thiss!17113 rules!1846 lt!614443 lt!614475 (rule!5081 lt!614475) lt!614503))))

(assert (=> b!1652950 (matchR!2038 (rulesRegex!601 thiss!17113 rules!1846) (list!7261 (charsOf!1866 lt!614475)))))

(declare-fun lt!614486 () Unit!30447)

(assert (=> b!1652950 (= lt!614486 lt!614504)))

(declare-fun lt!614506 () List!18310)

(assert (=> b!1652950 (= lt!614506 (list!7261 (charsOf!1866 (h!23642 tokens!457))))))

(declare-fun lt!614488 () List!18310)

(assert (=> b!1652950 (= lt!614488 (list!7261 (charsOf!1866 (h!23642 tokens!457))))))

(declare-fun lt!614442 () List!18310)

(assert (=> b!1652950 (= lt!614442 (getSuffix!725 lt!614443 (list!7261 (charsOf!1866 (h!23642 tokens!457)))))))

(declare-fun lt!614507 () Unit!30447)

(assert (=> b!1652950 (= lt!614507 (lemmaSamePrefixThenSameSuffix!677 lt!614506 lt!614212 lt!614488 lt!614442 lt!614443))))

(assert (=> b!1652950 (= lt!614212 lt!614442)))

(declare-fun lt!614463 () Unit!30447)

(assert (=> b!1652950 (= lt!614463 lt!614507)))

(declare-fun lt!614456 () List!18310)

(assert (=> b!1652950 (= lt!614456 (list!7261 (charsOf!1866 (h!23642 tokens!457))))))

(declare-fun lt!614455 () Unit!30447)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!168 (List!18310 List!18310) Unit!30447)

(assert (=> b!1652950 (= lt!614455 (lemmaAddHeadSuffixToPrefixStillPrefix!168 lt!614456 lt!614443))))

(assert (=> b!1652950 (isPrefix!1475 (++!4940 lt!614456 (Cons!18240 (head!3649 (getSuffix!725 lt!614443 lt!614456)) Nil!18240)) lt!614443)))

(declare-fun lt!614492 () Unit!30447)

(assert (=> b!1652950 (= lt!614492 lt!614455)))

(declare-fun lt!614454 () List!18310)

(assert (=> b!1652950 (= lt!614454 (list!7261 (charsOf!1866 lt!614475)))))

(declare-fun lt!614480 () List!18310)

(assert (=> b!1652950 (= lt!614480 (++!4940 (list!7261 (charsOf!1866 (h!23642 tokens!457))) (Cons!18240 (head!3649 lt!614212) Nil!18240)))))

(declare-fun lt!614460 () Unit!30447)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!54 (List!18310 List!18310 List!18310) Unit!30447)

(assert (=> b!1652950 (= lt!614460 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!54 lt!614454 lt!614480 lt!614443))))

(assert (=> b!1652950 (isPrefix!1475 lt!614480 lt!614454)))

(declare-fun lt!614468 () Unit!30447)

(assert (=> b!1652950 (= lt!614468 lt!614460)))

(declare-fun lt!614441 () Regex!4545)

(assert (=> b!1652950 (= lt!614441 (rulesRegex!601 thiss!17113 rules!1846))))

(declare-fun lt!614445 () List!18310)

(assert (=> b!1652950 (= lt!614445 (++!4940 (list!7261 (charsOf!1866 (h!23642 tokens!457))) (Cons!18240 (head!3649 lt!614212) Nil!18240)))))

(declare-fun lt!614469 () List!18310)

(assert (=> b!1652950 (= lt!614469 (list!7261 (charsOf!1866 lt!614475)))))

(declare-fun lt!614482 () Unit!30447)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!55 (Regex!4545 List!18310 List!18310) Unit!30447)

(assert (=> b!1652950 (= lt!614482 (lemmaNotPrefixMatchThenCannotMatchLonger!55 lt!614441 lt!614445 lt!614469))))

(assert (=> b!1652950 (not (matchR!2038 lt!614441 lt!614469))))

(declare-fun lt!614446 () Unit!30447)

(assert (=> b!1652950 (= lt!614446 lt!614482)))

(assert (=> b!1652950 false))

(declare-fun b!1652951 () Bool)

(assert (=> b!1652951 false))

(declare-fun lt!614470 () Unit!30447)

(declare-fun lt!614452 () Unit!30447)

(assert (=> b!1652951 (= lt!614470 lt!614452)))

(declare-fun lt!614491 () List!18310)

(assert (=> b!1652951 (not (matchR!2038 (regex!3217 (rule!5081 lt!614475)) lt!614491))))

(assert (=> b!1652951 (= lt!614452 (lemmaMaxPrefNoSmallerRuleMatches!95 thiss!17113 rules!1846 (rule!5081 (h!23642 tokens!457)) lt!614491 (list!7261 (charsOf!1866 (h!23642 tokens!457))) (rule!5081 lt!614475)))))

(assert (=> b!1652951 (= lt!614491 (list!7261 (charsOf!1866 (h!23642 tokens!457))))))

(declare-fun Unit!30470 () Unit!30447)

(assert (=> b!1652951 (= e!1059967 Unit!30470)))

(declare-fun b!1652952 () Bool)

(declare-fun Unit!30471 () Unit!30447)

(assert (=> b!1652952 (= e!1059962 Unit!30471)))

(declare-fun c!268883 () Bool)

(declare-fun getIndex!124 (List!18312 Rule!6234) Int)

(assert (=> b!1652952 (= c!268883 (< (getIndex!124 rules!1846 (rule!5081 (h!23642 tokens!457))) (getIndex!124 rules!1846 (rule!5081 lt!614475))))))

(declare-fun lt!614497 () Unit!30447)

(assert (=> b!1652952 (= lt!614497 e!1059963)))

(declare-fun c!268881 () Bool)

(assert (=> b!1652952 (= c!268881 (< (getIndex!124 rules!1846 (rule!5081 lt!614475)) (getIndex!124 rules!1846 (rule!5081 (h!23642 tokens!457)))))))

(declare-fun lt!614477 () Unit!30447)

(assert (=> b!1652952 (= lt!614477 e!1059967)))

(declare-fun c!268882 () Bool)

(assert (=> b!1652952 (= c!268882 (= (getIndex!124 rules!1846 (rule!5081 lt!614475)) (getIndex!124 rules!1846 (rule!5081 (h!23642 tokens!457)))))))

(declare-fun lt!614474 () Unit!30447)

(assert (=> b!1652952 (= lt!614474 e!1059965)))

(assert (=> b!1652952 false))

(assert (= (and d!498563 res!740951) b!1652947))

(assert (= (and b!1652947 res!740950) b!1652941))

(assert (= (and d!498563 c!268884) b!1652950))

(assert (= (and d!498563 (not c!268884)) b!1652949))

(assert (= (and d!498563 c!268886) b!1652942))

(assert (= (and d!498563 (not c!268886)) b!1652945))

(assert (= (and d!498563 c!268885) b!1652952))

(assert (= (and d!498563 (not c!268885)) b!1652939))

(assert (= (and b!1652952 c!268883) b!1652944))

(assert (= (and b!1652952 (not c!268883)) b!1652940))

(assert (= (and b!1652952 c!268881) b!1652951))

(assert (= (and b!1652952 (not c!268881)) b!1652943))

(assert (= (and b!1652952 c!268882) b!1652946))

(assert (= (and b!1652952 (not c!268882)) b!1652948))

(declare-fun m!2004433 () Bool)

(assert (=> b!1652947 m!2004433))

(assert (=> b!1652947 m!2004433))

(declare-fun m!2004435 () Bool)

(assert (=> b!1652947 m!2004435))

(assert (=> b!1652947 m!2004435))

(declare-fun m!2004437 () Bool)

(assert (=> b!1652947 m!2004437))

(declare-fun m!2004439 () Bool)

(assert (=> b!1652947 m!2004439))

(assert (=> b!1652947 m!2004439))

(declare-fun m!2004441 () Bool)

(assert (=> b!1652947 m!2004441))

(declare-fun m!2004443 () Bool)

(assert (=> b!1652951 m!2004443))

(assert (=> b!1652951 m!2004169))

(assert (=> b!1652951 m!2004169))

(declare-fun m!2004445 () Bool)

(assert (=> b!1652951 m!2004445))

(assert (=> b!1652951 m!2004445))

(declare-fun m!2004447 () Bool)

(assert (=> b!1652951 m!2004447))

(assert (=> d!498563 m!2004097))

(assert (=> d!498563 m!2004445))

(declare-fun m!2004449 () Bool)

(assert (=> d!498563 m!2004449))

(declare-fun m!2004451 () Bool)

(assert (=> d!498563 m!2004451))

(declare-fun m!2004453 () Bool)

(assert (=> d!498563 m!2004453))

(assert (=> d!498563 m!2004149))

(assert (=> d!498563 m!2004433))

(assert (=> d!498563 m!2004435))

(assert (=> d!498563 m!2004169))

(declare-fun m!2004455 () Bool)

(assert (=> d!498563 m!2004455))

(declare-fun m!2004457 () Bool)

(assert (=> d!498563 m!2004457))

(declare-fun m!2004459 () Bool)

(assert (=> d!498563 m!2004459))

(assert (=> d!498563 m!2004435))

(declare-fun m!2004461 () Bool)

(assert (=> d!498563 m!2004461))

(declare-fun m!2004463 () Bool)

(assert (=> d!498563 m!2004463))

(assert (=> d!498563 m!2004463))

(declare-fun m!2004465 () Bool)

(assert (=> d!498563 m!2004465))

(assert (=> d!498563 m!2004433))

(declare-fun m!2004467 () Bool)

(assert (=> d!498563 m!2004467))

(assert (=> d!498563 m!2004169))

(assert (=> d!498563 m!2004445))

(assert (=> d!498563 m!2004169))

(declare-fun m!2004469 () Bool)

(assert (=> d!498563 m!2004469))

(declare-fun m!2004471 () Bool)

(assert (=> d!498563 m!2004471))

(declare-fun m!2004473 () Bool)

(assert (=> d!498563 m!2004473))

(declare-fun m!2004475 () Bool)

(assert (=> d!498563 m!2004475))

(assert (=> d!498563 m!2004455))

(declare-fun m!2004477 () Bool)

(assert (=> d!498563 m!2004477))

(assert (=> d!498563 m!2004433))

(declare-fun m!2004479 () Bool)

(assert (=> d!498563 m!2004479))

(assert (=> d!498563 m!2004445))

(declare-fun m!2004481 () Bool)

(assert (=> d!498563 m!2004481))

(declare-fun m!2004483 () Bool)

(assert (=> d!498563 m!2004483))

(declare-fun m!2004485 () Bool)

(assert (=> d!498563 m!2004485))

(declare-fun m!2004487 () Bool)

(assert (=> d!498563 m!2004487))

(declare-fun m!2004489 () Bool)

(assert (=> d!498563 m!2004489))

(assert (=> d!498563 m!2004097))

(assert (=> d!498563 m!2004445))

(declare-fun m!2004491 () Bool)

(assert (=> d!498563 m!2004491))

(declare-fun m!2004493 () Bool)

(assert (=> d!498563 m!2004493))

(assert (=> d!498563 m!2004433))

(declare-fun m!2004495 () Bool)

(assert (=> d!498563 m!2004495))

(declare-fun m!2004497 () Bool)

(assert (=> d!498563 m!2004497))

(declare-fun m!2004499 () Bool)

(assert (=> d!498563 m!2004499))

(declare-fun m!2004501 () Bool)

(assert (=> d!498563 m!2004501))

(assert (=> d!498563 m!2004433))

(assert (=> d!498563 m!2004457))

(declare-fun m!2004503 () Bool)

(assert (=> d!498563 m!2004503))

(assert (=> d!498563 m!2004495))

(assert (=> d!498563 m!2004439))

(declare-fun m!2004505 () Bool)

(assert (=> d!498563 m!2004505))

(assert (=> d!498563 m!2004445))

(assert (=> d!498563 m!2004451))

(assert (=> d!498563 m!2004439))

(declare-fun m!2004507 () Bool)

(assert (=> d!498563 m!2004507))

(assert (=> d!498563 m!2004445))

(assert (=> d!498563 m!2004445))

(declare-fun m!2004509 () Bool)

(assert (=> d!498563 m!2004509))

(assert (=> b!1652950 m!2004097))

(assert (=> b!1652950 m!2004169))

(assert (=> b!1652950 m!2004445))

(declare-fun m!2004511 () Bool)

(assert (=> b!1652950 m!2004511))

(declare-fun m!2004513 () Bool)

(assert (=> b!1652950 m!2004513))

(declare-fun m!2004515 () Bool)

(assert (=> b!1652950 m!2004515))

(declare-fun m!2004517 () Bool)

(assert (=> b!1652950 m!2004517))

(assert (=> b!1652950 m!2004513))

(declare-fun m!2004519 () Bool)

(assert (=> b!1652950 m!2004519))

(assert (=> b!1652950 m!2004433))

(declare-fun m!2004521 () Bool)

(assert (=> b!1652950 m!2004521))

(declare-fun m!2004523 () Bool)

(assert (=> b!1652950 m!2004523))

(assert (=> b!1652950 m!2004445))

(declare-fun m!2004525 () Bool)

(assert (=> b!1652950 m!2004525))

(declare-fun m!2004527 () Bool)

(assert (=> b!1652950 m!2004527))

(assert (=> b!1652950 m!2004433))

(assert (=> b!1652950 m!2004435))

(declare-fun m!2004529 () Bool)

(assert (=> b!1652950 m!2004529))

(assert (=> b!1652950 m!2004517))

(declare-fun m!2004531 () Bool)

(assert (=> b!1652950 m!2004531))

(assert (=> b!1652950 m!2004073))

(assert (=> b!1652950 m!2004169))

(assert (=> b!1652950 m!2004445))

(declare-fun m!2004533 () Bool)

(assert (=> b!1652950 m!2004533))

(assert (=> b!1652950 m!2004097))

(assert (=> b!1652950 m!2004435))

(declare-fun m!2004535 () Bool)

(assert (=> b!1652950 m!2004535))

(declare-fun m!2004537 () Bool)

(assert (=> b!1652950 m!2004537))

(assert (=> b!1652941 m!2004439))

(assert (=> b!1652941 m!2004439))

(assert (=> b!1652941 m!2004441))

(declare-fun m!2004539 () Bool)

(assert (=> b!1652944 m!2004539))

(declare-fun m!2004541 () Bool)

(assert (=> b!1652944 m!2004541))

(assert (=> b!1652944 m!2004433))

(assert (=> b!1652944 m!2004433))

(assert (=> b!1652944 m!2004435))

(declare-fun m!2004543 () Bool)

(assert (=> b!1652952 m!2004543))

(declare-fun m!2004545 () Bool)

(assert (=> b!1652952 m!2004545))

(declare-fun m!2004547 () Bool)

(assert (=> b!1652946 m!2004547))

(assert (=> b!1652942 m!2004169))

(assert (=> b!1652942 m!2004445))

(assert (=> b!1652942 m!2004433))

(assert (=> b!1652942 m!2004433))

(assert (=> b!1652942 m!2004435))

(declare-fun m!2004549 () Bool)

(assert (=> b!1652942 m!2004549))

(assert (=> b!1652942 m!2004169))

(declare-fun m!2004551 () Bool)

(assert (=> b!1652942 m!2004551))

(assert (=> b!1652743 d!498563))

(declare-fun b!1652969 () Bool)

(declare-fun e!1059982 () Bool)

(assert (=> b!1652969 (= e!1059982 true)))

(declare-fun b!1652968 () Bool)

(declare-fun e!1059981 () Bool)

(assert (=> b!1652968 (= e!1059981 e!1059982)))

(declare-fun b!1652967 () Bool)

(declare-fun e!1059980 () Bool)

(assert (=> b!1652967 (= e!1059980 e!1059981)))

(declare-fun d!498605 () Bool)

(assert (=> d!498605 e!1059980))

(assert (= b!1652968 b!1652969))

(assert (= b!1652967 b!1652968))

(assert (= (and d!498605 ((_ is Cons!18242) rules!1846)) b!1652967))

(declare-fun order!10893 () Int)

(declare-fun order!10891 () Int)

(declare-fun lambda!67728 () Int)

(declare-fun dynLambda!8180 (Int Int) Int)

(declare-fun dynLambda!8181 (Int Int) Int)

(assert (=> b!1652969 (< (dynLambda!8180 order!10891 (toValue!4668 (transformation!3217 (h!23643 rules!1846)))) (dynLambda!8181 order!10893 lambda!67728))))

(declare-fun order!10895 () Int)

(declare-fun dynLambda!8182 (Int Int) Int)

(assert (=> b!1652969 (< (dynLambda!8182 order!10895 (toChars!4527 (transformation!3217 (h!23643 rules!1846)))) (dynLambda!8181 order!10893 lambda!67728))))

(assert (=> d!498605 true))

(declare-fun lt!614511 () Bool)

(declare-fun forall!4152 (List!18311 Int) Bool)

(assert (=> d!498605 (= lt!614511 (forall!4152 tokens!457 lambda!67728))))

(declare-fun e!1059973 () Bool)

(assert (=> d!498605 (= lt!614511 e!1059973)))

(declare-fun res!740957 () Bool)

(assert (=> d!498605 (=> res!740957 e!1059973)))

(assert (=> d!498605 (= res!740957 (not ((_ is Cons!18241) tokens!457)))))

(assert (=> d!498605 (not (isEmpty!11275 rules!1846))))

(assert (=> d!498605 (= (rulesProduceEachTokenIndividuallyList!1048 thiss!17113 rules!1846 tokens!457) lt!614511)))

(declare-fun b!1652957 () Bool)

(declare-fun e!1059972 () Bool)

(assert (=> b!1652957 (= e!1059973 e!1059972)))

(declare-fun res!740956 () Bool)

(assert (=> b!1652957 (=> (not res!740956) (not e!1059972))))

(assert (=> b!1652957 (= res!740956 (rulesProduceIndividualToken!1494 thiss!17113 rules!1846 (h!23642 tokens!457)))))

(declare-fun b!1652958 () Bool)

(assert (=> b!1652958 (= e!1059972 (rulesProduceEachTokenIndividuallyList!1048 thiss!17113 rules!1846 (t!151064 tokens!457)))))

(assert (= (and d!498605 (not res!740957)) b!1652957))

(assert (= (and b!1652957 res!740956) b!1652958))

(declare-fun m!2004553 () Bool)

(assert (=> d!498605 m!2004553))

(assert (=> d!498605 m!2004149))

(assert (=> b!1652957 m!2004141))

(declare-fun m!2004555 () Bool)

(assert (=> b!1652958 m!2004555))

(assert (=> b!1652739 d!498605))

(declare-fun d!498607 () Bool)

(assert (=> d!498607 (= (inv!23597 (tag!3499 (h!23643 rules!1846))) (= (mod (str.len (value!101356 (tag!3499 (h!23643 rules!1846)))) 2) 0))))

(assert (=> b!1652740 d!498607))

(declare-fun d!498609 () Bool)

(declare-fun res!740960 () Bool)

(declare-fun e!1059985 () Bool)

(assert (=> d!498609 (=> (not res!740960) (not e!1059985))))

(declare-fun semiInverseModEq!1244 (Int Int) Bool)

(assert (=> d!498609 (= res!740960 (semiInverseModEq!1244 (toChars!4527 (transformation!3217 (h!23643 rules!1846))) (toValue!4668 (transformation!3217 (h!23643 rules!1846)))))))

(assert (=> d!498609 (= (inv!23600 (transformation!3217 (h!23643 rules!1846))) e!1059985)))

(declare-fun b!1652974 () Bool)

(declare-fun equivClasses!1185 (Int Int) Bool)

(assert (=> b!1652974 (= e!1059985 (equivClasses!1185 (toChars!4527 (transformation!3217 (h!23643 rules!1846))) (toValue!4668 (transformation!3217 (h!23643 rules!1846)))))))

(assert (= (and d!498609 res!740960) b!1652974))

(declare-fun m!2004557 () Bool)

(assert (=> d!498609 m!2004557))

(declare-fun m!2004559 () Bool)

(assert (=> b!1652974 m!2004559))

(assert (=> b!1652740 d!498609))

(declare-fun d!498611 () Bool)

(declare-fun e!1059988 () Bool)

(assert (=> d!498611 e!1059988))

(declare-fun res!740963 () Bool)

(assert (=> d!498611 (=> (not res!740963) (not e!1059988))))

(declare-fun lt!614514 () BalanceConc!12108)

(assert (=> d!498611 (= res!740963 (= (list!7261 lt!614514) (Cons!18240 (apply!4818 (charsOf!1866 (h!23642 (t!151064 tokens!457))) 0) Nil!18240)))))

(declare-fun singleton!738 (C!9264) BalanceConc!12108)

(assert (=> d!498611 (= lt!614514 (singleton!738 (apply!4818 (charsOf!1866 (h!23642 (t!151064 tokens!457))) 0)))))

(assert (=> d!498611 (= (singletonSeq!1706 (apply!4818 (charsOf!1866 (h!23642 (t!151064 tokens!457))) 0)) lt!614514)))

(declare-fun b!1652977 () Bool)

(declare-fun isBalanced!1864 (Conc!6082) Bool)

(assert (=> b!1652977 (= e!1059988 (isBalanced!1864 (c!268841 lt!614514)))))

(assert (= (and d!498611 res!740963) b!1652977))

(declare-fun m!2004561 () Bool)

(assert (=> d!498611 m!2004561))

(assert (=> d!498611 m!2004103))

(declare-fun m!2004563 () Bool)

(assert (=> d!498611 m!2004563))

(declare-fun m!2004565 () Bool)

(assert (=> b!1652977 m!2004565))

(assert (=> b!1652726 d!498611))

(declare-fun b!1652993 () Bool)

(declare-fun lt!614557 () BalanceConc!12108)

(declare-fun e!1059993 () Bool)

(assert (=> b!1652993 (= e!1059993 (= (list!7261 lt!614557) (++!4940 (list!7261 lt!614222) (list!7261 lt!614208))))))

(declare-fun d!498613 () Bool)

(assert (=> d!498613 e!1059993))

(declare-fun res!740977 () Bool)

(assert (=> d!498613 (=> (not res!740977) (not e!1059993))))

(declare-fun appendAssocInst!464 (Conc!6082 Conc!6082) Bool)

(assert (=> d!498613 (= res!740977 (appendAssocInst!464 (c!268841 lt!614222) (c!268841 lt!614208)))))

(declare-fun ++!4941 (Conc!6082 Conc!6082) Conc!6082)

(assert (=> d!498613 (= lt!614557 (BalanceConc!12109 (++!4941 (c!268841 lt!614222) (c!268841 lt!614208))))))

(assert (=> d!498613 (= (++!4939 lt!614222 lt!614208) lt!614557)))

(declare-fun b!1652990 () Bool)

(declare-fun res!740979 () Bool)

(assert (=> b!1652990 (=> (not res!740979) (not e!1059993))))

(assert (=> b!1652990 (= res!740979 (isBalanced!1864 (++!4941 (c!268841 lt!614222) (c!268841 lt!614208))))))

(declare-fun b!1652991 () Bool)

(declare-fun res!740976 () Bool)

(assert (=> b!1652991 (=> (not res!740976) (not e!1059993))))

(declare-fun height!944 (Conc!6082) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1652991 (= res!740976 (<= (height!944 (++!4941 (c!268841 lt!614222) (c!268841 lt!614208))) (+ (max!0 (height!944 (c!268841 lt!614222)) (height!944 (c!268841 lt!614208))) 1)))))

(declare-fun b!1652992 () Bool)

(declare-fun res!740978 () Bool)

(assert (=> b!1652992 (=> (not res!740978) (not e!1059993))))

(assert (=> b!1652992 (= res!740978 (>= (height!944 (++!4941 (c!268841 lt!614222) (c!268841 lt!614208))) (max!0 (height!944 (c!268841 lt!614222)) (height!944 (c!268841 lt!614208)))))))

(assert (= (and d!498613 res!740977) b!1652990))

(assert (= (and b!1652990 res!740979) b!1652991))

(assert (= (and b!1652991 res!740976) b!1652992))

(assert (= (and b!1652992 res!740978) b!1652993))

(declare-fun m!2004567 () Bool)

(assert (=> d!498613 m!2004567))

(declare-fun m!2004569 () Bool)

(assert (=> d!498613 m!2004569))

(declare-fun m!2004571 () Bool)

(assert (=> b!1652993 m!2004571))

(assert (=> b!1652993 m!2004163))

(assert (=> b!1652993 m!2004189))

(assert (=> b!1652993 m!2004163))

(assert (=> b!1652993 m!2004189))

(declare-fun m!2004573 () Bool)

(assert (=> b!1652993 m!2004573))

(declare-fun m!2004575 () Bool)

(assert (=> b!1652991 m!2004575))

(declare-fun m!2004577 () Bool)

(assert (=> b!1652991 m!2004577))

(declare-fun m!2004579 () Bool)

(assert (=> b!1652991 m!2004579))

(assert (=> b!1652991 m!2004569))

(declare-fun m!2004581 () Bool)

(assert (=> b!1652991 m!2004581))

(assert (=> b!1652991 m!2004577))

(assert (=> b!1652991 m!2004575))

(assert (=> b!1652991 m!2004569))

(assert (=> b!1652990 m!2004569))

(assert (=> b!1652990 m!2004569))

(declare-fun m!2004583 () Bool)

(assert (=> b!1652990 m!2004583))

(assert (=> b!1652992 m!2004575))

(assert (=> b!1652992 m!2004577))

(assert (=> b!1652992 m!2004579))

(assert (=> b!1652992 m!2004569))

(assert (=> b!1652992 m!2004581))

(assert (=> b!1652992 m!2004577))

(assert (=> b!1652992 m!2004575))

(assert (=> b!1652992 m!2004569))

(assert (=> b!1652726 d!498613))

(declare-fun lt!614759 () Bool)

(declare-fun d!498615 () Bool)

(assert (=> d!498615 (= lt!614759 (prefixMatch!462 lt!614229 (list!7261 (++!4939 lt!614222 lt!614208))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!18314 0))(
  ( (Nil!18244) (Cons!18244 (h!23645 Regex!4545) (t!151109 List!18314)) )
))
(declare-datatypes ((Context!1792 0))(
  ( (Context!1793 (exprs!1396 List!18314)) )
))
(declare-fun prefixMatchZipperSequence!630 ((InoxSet Context!1792) BalanceConc!12108 Int) Bool)

(declare-fun focus!202 (Regex!4545) (InoxSet Context!1792))

(assert (=> d!498615 (= lt!614759 (prefixMatchZipperSequence!630 (focus!202 lt!614229) (++!4939 lt!614222 lt!614208) 0))))

(declare-fun lt!614752 () Unit!30447)

(declare-fun lt!614757 () Unit!30447)

(assert (=> d!498615 (= lt!614752 lt!614757)))

(declare-fun lt!614754 () List!18310)

(declare-fun lt!614751 () (InoxSet Context!1792))

(declare-fun prefixMatchZipper!181 ((InoxSet Context!1792) List!18310) Bool)

(assert (=> d!498615 (= (prefixMatch!462 lt!614229 lt!614754) (prefixMatchZipper!181 lt!614751 lt!614754))))

(declare-datatypes ((List!18315 0))(
  ( (Nil!18245) (Cons!18245 (h!23646 Context!1792) (t!151110 List!18315)) )
))
(declare-fun lt!614756 () List!18315)

(declare-fun prefixMatchZipperRegexEquiv!181 ((InoxSet Context!1792) List!18315 Regex!4545 List!18310) Unit!30447)

(assert (=> d!498615 (= lt!614757 (prefixMatchZipperRegexEquiv!181 lt!614751 lt!614756 lt!614229 lt!614754))))

(assert (=> d!498615 (= lt!614754 (list!7261 (++!4939 lt!614222 lt!614208)))))

(declare-fun toList!942 ((InoxSet Context!1792)) List!18315)

(assert (=> d!498615 (= lt!614756 (toList!942 (focus!202 lt!614229)))))

(assert (=> d!498615 (= lt!614751 (focus!202 lt!614229))))

(declare-fun lt!614755 () Unit!30447)

(declare-fun lt!614758 () Unit!30447)

(assert (=> d!498615 (= lt!614755 lt!614758)))

(declare-fun lt!614760 () (InoxSet Context!1792))

(declare-fun lt!614753 () Int)

(declare-fun dropList!676 (BalanceConc!12108 Int) List!18310)

(assert (=> d!498615 (= (prefixMatchZipper!181 lt!614760 (dropList!676 (++!4939 lt!614222 lt!614208) lt!614753)) (prefixMatchZipperSequence!630 lt!614760 (++!4939 lt!614222 lt!614208) lt!614753))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!181 ((InoxSet Context!1792) BalanceConc!12108 Int) Unit!30447)

(assert (=> d!498615 (= lt!614758 (lemmaprefixMatchZipperSequenceEquivalent!181 lt!614760 (++!4939 lt!614222 lt!614208) lt!614753))))

(assert (=> d!498615 (= lt!614753 0)))

(assert (=> d!498615 (= lt!614760 (focus!202 lt!614229))))

(declare-fun validRegex!1810 (Regex!4545) Bool)

(assert (=> d!498615 (validRegex!1810 lt!614229)))

(assert (=> d!498615 (= (prefixMatchZipperSequence!629 lt!614229 (++!4939 lt!614222 lt!614208)) lt!614759)))

(declare-fun bs!396668 () Bool)

(assert (= bs!396668 d!498615))

(assert (=> bs!396668 m!2004099))

(declare-fun m!2004607 () Bool)

(assert (=> bs!396668 m!2004607))

(declare-fun m!2004609 () Bool)

(assert (=> bs!396668 m!2004609))

(assert (=> bs!396668 m!2004099))

(declare-fun m!2004613 () Bool)

(assert (=> bs!396668 m!2004613))

(declare-fun m!2004615 () Bool)

(assert (=> bs!396668 m!2004615))

(declare-fun m!2004617 () Bool)

(assert (=> bs!396668 m!2004617))

(assert (=> bs!396668 m!2004099))

(declare-fun m!2004621 () Bool)

(assert (=> bs!396668 m!2004621))

(assert (=> bs!396668 m!2004609))

(assert (=> bs!396668 m!2004621))

(declare-fun m!2004625 () Bool)

(assert (=> bs!396668 m!2004625))

(assert (=> bs!396668 m!2004099))

(declare-fun m!2004627 () Bool)

(assert (=> bs!396668 m!2004627))

(assert (=> bs!396668 m!2004609))

(declare-fun m!2004631 () Bool)

(assert (=> bs!396668 m!2004631))

(assert (=> bs!396668 m!2004607))

(declare-fun m!2004635 () Bool)

(assert (=> bs!396668 m!2004635))

(declare-fun m!2004639 () Bool)

(assert (=> bs!396668 m!2004639))

(declare-fun m!2004643 () Bool)

(assert (=> bs!396668 m!2004643))

(assert (=> bs!396668 m!2004099))

(declare-fun m!2004645 () Bool)

(assert (=> bs!396668 m!2004645))

(assert (=> b!1652726 d!498615))

(declare-fun d!498617 () Bool)

(declare-fun lt!614763 () C!9264)

(declare-fun apply!4823 (List!18310 Int) C!9264)

(assert (=> d!498617 (= lt!614763 (apply!4823 (list!7261 (charsOf!1866 (h!23642 (t!151064 tokens!457)))) 0))))

(declare-fun apply!4824 (Conc!6082 Int) C!9264)

(assert (=> d!498617 (= lt!614763 (apply!4824 (c!268841 (charsOf!1866 (h!23642 (t!151064 tokens!457)))) 0))))

(declare-fun e!1060015 () Bool)

(assert (=> d!498617 e!1060015))

(declare-fun res!740984 () Bool)

(assert (=> d!498617 (=> (not res!740984) (not e!1060015))))

(assert (=> d!498617 (= res!740984 (<= 0 0))))

(assert (=> d!498617 (= (apply!4818 (charsOf!1866 (h!23642 (t!151064 tokens!457))) 0) lt!614763)))

(declare-fun b!1653034 () Bool)

(assert (=> b!1653034 (= e!1060015 (< 0 (size!14524 (charsOf!1866 (h!23642 (t!151064 tokens!457))))))))

(assert (= (and d!498617 res!740984) b!1653034))

(assert (=> d!498617 m!2004107))

(declare-fun m!2004733 () Bool)

(assert (=> d!498617 m!2004733))

(assert (=> d!498617 m!2004733))

(declare-fun m!2004735 () Bool)

(assert (=> d!498617 m!2004735))

(declare-fun m!2004737 () Bool)

(assert (=> d!498617 m!2004737))

(assert (=> b!1653034 m!2004107))

(declare-fun m!2004739 () Bool)

(assert (=> b!1653034 m!2004739))

(assert (=> b!1652726 d!498617))

(declare-fun d!498623 () Bool)

(declare-fun lt!614766 () Unit!30447)

(declare-fun lemma!267 (List!18312 LexerInterface!2846 List!18312) Unit!30447)

(assert (=> d!498623 (= lt!614766 (lemma!267 rules!1846 thiss!17113 rules!1846))))

(declare-fun lambda!67731 () Int)

(declare-fun generalisedUnion!275 (List!18314) Regex!4545)

(declare-fun map!3755 (List!18312 Int) List!18314)

(assert (=> d!498623 (= (rulesRegex!601 thiss!17113 rules!1846) (generalisedUnion!275 (map!3755 rules!1846 lambda!67731)))))

(declare-fun bs!396670 () Bool)

(assert (= bs!396670 d!498623))

(declare-fun m!2004741 () Bool)

(assert (=> bs!396670 m!2004741))

(declare-fun m!2004743 () Bool)

(assert (=> bs!396670 m!2004743))

(assert (=> bs!396670 m!2004743))

(declare-fun m!2004745 () Bool)

(assert (=> bs!396670 m!2004745))

(assert (=> b!1652726 d!498623))

(declare-fun d!498625 () Bool)

(declare-fun lt!614769 () BalanceConc!12108)

(assert (=> d!498625 (= (list!7261 lt!614769) (originalCharacters!4031 (h!23642 (t!151064 tokens!457))))))

(declare-fun dynLambda!8183 (Int TokenValue!3307) BalanceConc!12108)

(assert (=> d!498625 (= lt!614769 (dynLambda!8183 (toChars!4527 (transformation!3217 (rule!5081 (h!23642 (t!151064 tokens!457))))) (value!101357 (h!23642 (t!151064 tokens!457)))))))

(assert (=> d!498625 (= (charsOf!1866 (h!23642 (t!151064 tokens!457))) lt!614769)))

(declare-fun b_lambda!51933 () Bool)

(assert (=> (not b_lambda!51933) (not d!498625)))

(declare-fun t!151077 () Bool)

(declare-fun tb!94675 () Bool)

(assert (=> (and b!1652747 (= (toChars!4527 (transformation!3217 (h!23643 rules!1846))) (toChars!4527 (transformation!3217 (rule!5081 (h!23642 (t!151064 tokens!457)))))) t!151077) tb!94675))

(declare-fun b!1653039 () Bool)

(declare-fun e!1060018 () Bool)

(declare-fun tp!478146 () Bool)

(declare-fun inv!23604 (Conc!6082) Bool)

(assert (=> b!1653039 (= e!1060018 (and (inv!23604 (c!268841 (dynLambda!8183 (toChars!4527 (transformation!3217 (rule!5081 (h!23642 (t!151064 tokens!457))))) (value!101357 (h!23642 (t!151064 tokens!457)))))) tp!478146))))

(declare-fun result!114376 () Bool)

(declare-fun inv!23605 (BalanceConc!12108) Bool)

(assert (=> tb!94675 (= result!114376 (and (inv!23605 (dynLambda!8183 (toChars!4527 (transformation!3217 (rule!5081 (h!23642 (t!151064 tokens!457))))) (value!101357 (h!23642 (t!151064 tokens!457))))) e!1060018))))

(assert (= tb!94675 b!1653039))

(declare-fun m!2004747 () Bool)

(assert (=> b!1653039 m!2004747))

(declare-fun m!2004749 () Bool)

(assert (=> tb!94675 m!2004749))

(assert (=> d!498625 t!151077))

(declare-fun b_and!117381 () Bool)

(assert (= b_and!117367 (and (=> t!151077 result!114376) b_and!117381)))

(declare-fun t!151079 () Bool)

(declare-fun tb!94677 () Bool)

(assert (=> (and b!1652745 (= (toChars!4527 (transformation!3217 (rule!5081 (h!23642 tokens!457)))) (toChars!4527 (transformation!3217 (rule!5081 (h!23642 (t!151064 tokens!457)))))) t!151079) tb!94677))

(declare-fun result!114380 () Bool)

(assert (= result!114380 result!114376))

(assert (=> d!498625 t!151079))

(declare-fun b_and!117383 () Bool)

(assert (= b_and!117371 (and (=> t!151079 result!114380) b_and!117383)))

(declare-fun m!2004751 () Bool)

(assert (=> d!498625 m!2004751))

(declare-fun m!2004753 () Bool)

(assert (=> d!498625 m!2004753))

(assert (=> b!1652726 d!498625))

(declare-fun d!498627 () Bool)

(assert (=> d!498627 (= (isEmpty!11273 (_2!10367 lt!614217)) ((_ is Nil!18240) (_2!10367 lt!614217)))))

(assert (=> b!1652725 d!498627))

(declare-fun d!498629 () Bool)

(assert (=> d!498629 (= (separableTokensPredicate!786 thiss!17113 (h!23642 tokens!457) (h!23642 (t!151064 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!629 (rulesRegex!601 thiss!17113 rules!1846) (++!4939 (charsOf!1866 (h!23642 tokens!457)) (singletonSeq!1706 (apply!4818 (charsOf!1866 (h!23642 (t!151064 tokens!457))) 0))))))))

(declare-fun bs!396671 () Bool)

(assert (= bs!396671 d!498629))

(assert (=> bs!396671 m!2004107))

(assert (=> bs!396671 m!2004103))

(assert (=> bs!396671 m!2004105))

(assert (=> bs!396671 m!2004107))

(assert (=> bs!396671 m!2004103))

(assert (=> bs!396671 m!2004097))

(declare-fun m!2004755 () Bool)

(assert (=> bs!396671 m!2004755))

(declare-fun m!2004757 () Bool)

(assert (=> bs!396671 m!2004757))

(assert (=> bs!396671 m!2004097))

(assert (=> bs!396671 m!2004169))

(assert (=> bs!396671 m!2004105))

(assert (=> bs!396671 m!2004755))

(assert (=> bs!396671 m!2004169))

(assert (=> b!1652748 d!498629))

(declare-fun b!1653068 () Bool)

(declare-fun res!741005 () Bool)

(declare-fun e!1060039 () Bool)

(assert (=> b!1653068 (=> res!741005 e!1060039)))

(declare-fun tail!2449 (List!18310) List!18310)

(assert (=> b!1653068 (= res!741005 (not (isEmpty!11273 (tail!2449 lt!614211))))))

(declare-fun b!1653069 () Bool)

(declare-fun e!1060038 () Bool)

(declare-fun derivativeStep!1112 (Regex!4545 C!9264) Regex!4545)

(assert (=> b!1653069 (= e!1060038 (matchR!2038 (derivativeStep!1112 (regex!3217 (rule!5081 (h!23642 tokens!457))) (head!3649 lt!614211)) (tail!2449 lt!614211)))))

(declare-fun bm!106040 () Bool)

(declare-fun call!106045 () Bool)

(assert (=> bm!106040 (= call!106045 (isEmpty!11273 lt!614211))))

(declare-fun b!1653070 () Bool)

(declare-fun nullable!1345 (Regex!4545) Bool)

(assert (=> b!1653070 (= e!1060038 (nullable!1345 (regex!3217 (rule!5081 (h!23642 tokens!457)))))))

(declare-fun b!1653071 () Bool)

(declare-fun e!1060035 () Bool)

(declare-fun lt!614772 () Bool)

(assert (=> b!1653071 (= e!1060035 (= lt!614772 call!106045))))

(declare-fun b!1653072 () Bool)

(declare-fun e!1060037 () Bool)

(assert (=> b!1653072 (= e!1060037 (= (head!3649 lt!614211) (c!268842 (regex!3217 (rule!5081 (h!23642 tokens!457))))))))

(declare-fun b!1653073 () Bool)

(declare-fun e!1060036 () Bool)

(assert (=> b!1653073 (= e!1060035 e!1060036)))

(declare-fun c!268915 () Bool)

(assert (=> b!1653073 (= c!268915 ((_ is EmptyLang!4545) (regex!3217 (rule!5081 (h!23642 tokens!457)))))))

(declare-fun b!1653074 () Bool)

(assert (=> b!1653074 (= e!1060036 (not lt!614772))))

(declare-fun b!1653075 () Bool)

(declare-fun res!741002 () Bool)

(declare-fun e!1060033 () Bool)

(assert (=> b!1653075 (=> res!741002 e!1060033)))

(assert (=> b!1653075 (= res!741002 e!1060037)))

(declare-fun res!741006 () Bool)

(assert (=> b!1653075 (=> (not res!741006) (not e!1060037))))

(assert (=> b!1653075 (= res!741006 lt!614772)))

(declare-fun b!1653076 () Bool)

(declare-fun res!741004 () Bool)

(assert (=> b!1653076 (=> (not res!741004) (not e!1060037))))

(assert (=> b!1653076 (= res!741004 (isEmpty!11273 (tail!2449 lt!614211)))))

(declare-fun b!1653077 () Bool)

(declare-fun res!741008 () Bool)

(assert (=> b!1653077 (=> res!741008 e!1060033)))

(assert (=> b!1653077 (= res!741008 (not ((_ is ElementMatch!4545) (regex!3217 (rule!5081 (h!23642 tokens!457))))))))

(assert (=> b!1653077 (= e!1060036 e!1060033)))

(declare-fun b!1653078 () Bool)

(assert (=> b!1653078 (= e!1060039 (not (= (head!3649 lt!614211) (c!268842 (regex!3217 (rule!5081 (h!23642 tokens!457)))))))))

(declare-fun b!1653079 () Bool)

(declare-fun e!1060034 () Bool)

(assert (=> b!1653079 (= e!1060033 e!1060034)))

(declare-fun res!741003 () Bool)

(assert (=> b!1653079 (=> (not res!741003) (not e!1060034))))

(assert (=> b!1653079 (= res!741003 (not lt!614772))))

(declare-fun b!1653080 () Bool)

(declare-fun res!741001 () Bool)

(assert (=> b!1653080 (=> (not res!741001) (not e!1060037))))

(assert (=> b!1653080 (= res!741001 (not call!106045))))

(declare-fun d!498631 () Bool)

(assert (=> d!498631 e!1060035))

(declare-fun c!268914 () Bool)

(assert (=> d!498631 (= c!268914 ((_ is EmptyExpr!4545) (regex!3217 (rule!5081 (h!23642 tokens!457)))))))

(assert (=> d!498631 (= lt!614772 e!1060038)))

(declare-fun c!268916 () Bool)

(assert (=> d!498631 (= c!268916 (isEmpty!11273 lt!614211))))

(assert (=> d!498631 (validRegex!1810 (regex!3217 (rule!5081 (h!23642 tokens!457))))))

(assert (=> d!498631 (= (matchR!2038 (regex!3217 (rule!5081 (h!23642 tokens!457))) lt!614211) lt!614772)))

(declare-fun b!1653081 () Bool)

(assert (=> b!1653081 (= e!1060034 e!1060039)))

(declare-fun res!741007 () Bool)

(assert (=> b!1653081 (=> res!741007 e!1060039)))

(assert (=> b!1653081 (= res!741007 call!106045)))

(assert (= (and d!498631 c!268916) b!1653070))

(assert (= (and d!498631 (not c!268916)) b!1653069))

(assert (= (and d!498631 c!268914) b!1653071))

(assert (= (and d!498631 (not c!268914)) b!1653073))

(assert (= (and b!1653073 c!268915) b!1653074))

(assert (= (and b!1653073 (not c!268915)) b!1653077))

(assert (= (and b!1653077 (not res!741008)) b!1653075))

(assert (= (and b!1653075 res!741006) b!1653080))

(assert (= (and b!1653080 res!741001) b!1653076))

(assert (= (and b!1653076 res!741004) b!1653072))

(assert (= (and b!1653075 (not res!741002)) b!1653079))

(assert (= (and b!1653079 res!741003) b!1653081))

(assert (= (and b!1653081 (not res!741007)) b!1653068))

(assert (= (and b!1653068 (not res!741005)) b!1653078))

(assert (= (or b!1653071 b!1653080 b!1653081) bm!106040))

(declare-fun m!2004759 () Bool)

(assert (=> b!1653070 m!2004759))

(declare-fun m!2004761 () Bool)

(assert (=> d!498631 m!2004761))

(declare-fun m!2004763 () Bool)

(assert (=> d!498631 m!2004763))

(declare-fun m!2004765 () Bool)

(assert (=> b!1653068 m!2004765))

(assert (=> b!1653068 m!2004765))

(declare-fun m!2004767 () Bool)

(assert (=> b!1653068 m!2004767))

(declare-fun m!2004769 () Bool)

(assert (=> b!1653072 m!2004769))

(assert (=> b!1653069 m!2004769))

(assert (=> b!1653069 m!2004769))

(declare-fun m!2004771 () Bool)

(assert (=> b!1653069 m!2004771))

(assert (=> b!1653069 m!2004765))

(assert (=> b!1653069 m!2004771))

(assert (=> b!1653069 m!2004765))

(declare-fun m!2004773 () Bool)

(assert (=> b!1653069 m!2004773))

(assert (=> b!1653078 m!2004769))

(assert (=> bm!106040 m!2004761))

(assert (=> b!1653076 m!2004765))

(assert (=> b!1653076 m!2004765))

(assert (=> b!1653076 m!2004767))

(assert (=> b!1652744 d!498631))

(declare-fun d!498633 () Bool)

(declare-fun lt!614807 () Bool)

(declare-fun e!1060074 () Bool)

(assert (=> d!498633 (= lt!614807 e!1060074)))

(declare-fun res!741041 () Bool)

(assert (=> d!498633 (=> (not res!741041) (not e!1060074))))

(assert (=> d!498633 (= res!741041 (= (list!7262 (_1!10369 (lex!1330 thiss!17113 rules!1846 (print!1377 thiss!17113 (singletonSeq!1707 (h!23642 tokens!457)))))) (list!7262 (singletonSeq!1707 (h!23642 tokens!457)))))))

(declare-fun e!1060075 () Bool)

(assert (=> d!498633 (= lt!614807 e!1060075)))

(declare-fun res!741039 () Bool)

(assert (=> d!498633 (=> (not res!741039) (not e!1060075))))

(declare-fun lt!614808 () tuple2!17934)

(declare-fun size!14526 (BalanceConc!12110) Int)

(assert (=> d!498633 (= res!741039 (= (size!14526 (_1!10369 lt!614808)) 1))))

(assert (=> d!498633 (= lt!614808 (lex!1330 thiss!17113 rules!1846 (print!1377 thiss!17113 (singletonSeq!1707 (h!23642 tokens!457)))))))

(assert (=> d!498633 (not (isEmpty!11275 rules!1846))))

(assert (=> d!498633 (= (rulesProduceIndividualToken!1494 thiss!17113 rules!1846 (h!23642 tokens!457)) lt!614807)))

(declare-fun b!1653130 () Bool)

(declare-fun res!741040 () Bool)

(assert (=> b!1653130 (=> (not res!741040) (not e!1060075))))

(declare-fun apply!4825 (BalanceConc!12110 Int) Token!6000)

(assert (=> b!1653130 (= res!741040 (= (apply!4825 (_1!10369 lt!614808) 0) (h!23642 tokens!457)))))

(declare-fun b!1653131 () Bool)

(declare-fun isEmpty!11281 (BalanceConc!12108) Bool)

(assert (=> b!1653131 (= e!1060075 (isEmpty!11281 (_2!10369 lt!614808)))))

(declare-fun b!1653132 () Bool)

(assert (=> b!1653132 (= e!1060074 (isEmpty!11281 (_2!10369 (lex!1330 thiss!17113 rules!1846 (print!1377 thiss!17113 (singletonSeq!1707 (h!23642 tokens!457)))))))))

(assert (= (and d!498633 res!741039) b!1653130))

(assert (= (and b!1653130 res!741040) b!1653131))

(assert (= (and d!498633 res!741041) b!1653132))

(declare-fun m!2004837 () Bool)

(assert (=> d!498633 m!2004837))

(declare-fun m!2004839 () Bool)

(assert (=> d!498633 m!2004839))

(assert (=> d!498633 m!2004203))

(assert (=> d!498633 m!2004837))

(assert (=> d!498633 m!2004203))

(declare-fun m!2004841 () Bool)

(assert (=> d!498633 m!2004841))

(declare-fun m!2004843 () Bool)

(assert (=> d!498633 m!2004843))

(assert (=> d!498633 m!2004149))

(declare-fun m!2004845 () Bool)

(assert (=> d!498633 m!2004845))

(assert (=> d!498633 m!2004203))

(declare-fun m!2004847 () Bool)

(assert (=> b!1653130 m!2004847))

(declare-fun m!2004849 () Bool)

(assert (=> b!1653131 m!2004849))

(assert (=> b!1653132 m!2004203))

(assert (=> b!1653132 m!2004203))

(assert (=> b!1653132 m!2004837))

(assert (=> b!1653132 m!2004837))

(assert (=> b!1653132 m!2004839))

(declare-fun m!2004851 () Bool)

(assert (=> b!1653132 m!2004851))

(assert (=> b!1652746 d!498633))

(declare-fun d!498653 () Bool)

(declare-fun c!268929 () Bool)

(assert (=> d!498653 (= c!268929 (isEmpty!11273 (++!4940 lt!614211 lt!614220)))))

(declare-fun e!1060078 () Bool)

(assert (=> d!498653 (= (prefixMatch!462 lt!614229 (++!4940 lt!614211 lt!614220)) e!1060078)))

(declare-fun b!1653137 () Bool)

(declare-fun lostCause!462 (Regex!4545) Bool)

(assert (=> b!1653137 (= e!1060078 (not (lostCause!462 lt!614229)))))

(declare-fun b!1653138 () Bool)

(assert (=> b!1653138 (= e!1060078 (prefixMatch!462 (derivativeStep!1112 lt!614229 (head!3649 (++!4940 lt!614211 lt!614220))) (tail!2449 (++!4940 lt!614211 lt!614220))))))

(assert (= (and d!498653 c!268929) b!1653137))

(assert (= (and d!498653 (not c!268929)) b!1653138))

(assert (=> d!498653 m!2004123))

(declare-fun m!2004853 () Bool)

(assert (=> d!498653 m!2004853))

(declare-fun m!2004855 () Bool)

(assert (=> b!1653137 m!2004855))

(assert (=> b!1653138 m!2004123))

(declare-fun m!2004857 () Bool)

(assert (=> b!1653138 m!2004857))

(assert (=> b!1653138 m!2004857))

(declare-fun m!2004859 () Bool)

(assert (=> b!1653138 m!2004859))

(assert (=> b!1653138 m!2004123))

(declare-fun m!2004861 () Bool)

(assert (=> b!1653138 m!2004861))

(assert (=> b!1653138 m!2004859))

(assert (=> b!1653138 m!2004861))

(declare-fun m!2004863 () Bool)

(assert (=> b!1653138 m!2004863))

(assert (=> b!1652731 d!498653))

(declare-fun b!1653149 () Bool)

(declare-fun res!741047 () Bool)

(declare-fun e!1060083 () Bool)

(assert (=> b!1653149 (=> (not res!741047) (not e!1060083))))

(declare-fun lt!614811 () List!18310)

(assert (=> b!1653149 (= res!741047 (= (size!14525 lt!614811) (+ (size!14525 lt!614211) (size!14525 lt!614220))))))

(declare-fun b!1653148 () Bool)

(declare-fun e!1060084 () List!18310)

(assert (=> b!1653148 (= e!1060084 (Cons!18240 (h!23641 lt!614211) (++!4940 (t!151063 lt!614211) lt!614220)))))

(declare-fun d!498655 () Bool)

(assert (=> d!498655 e!1060083))

(declare-fun res!741046 () Bool)

(assert (=> d!498655 (=> (not res!741046) (not e!1060083))))

(declare-fun content!2537 (List!18310) (InoxSet C!9264))

(assert (=> d!498655 (= res!741046 (= (content!2537 lt!614811) ((_ map or) (content!2537 lt!614211) (content!2537 lt!614220))))))

(assert (=> d!498655 (= lt!614811 e!1060084)))

(declare-fun c!268932 () Bool)

(assert (=> d!498655 (= c!268932 ((_ is Nil!18240) lt!614211))))

(assert (=> d!498655 (= (++!4940 lt!614211 lt!614220) lt!614811)))

(declare-fun b!1653150 () Bool)

(assert (=> b!1653150 (= e!1060083 (or (not (= lt!614220 Nil!18240)) (= lt!614811 lt!614211)))))

(declare-fun b!1653147 () Bool)

(assert (=> b!1653147 (= e!1060084 lt!614220)))

(assert (= (and d!498655 c!268932) b!1653147))

(assert (= (and d!498655 (not c!268932)) b!1653148))

(assert (= (and d!498655 res!741046) b!1653149))

(assert (= (and b!1653149 res!741047) b!1653150))

(declare-fun m!2004865 () Bool)

(assert (=> b!1653149 m!2004865))

(declare-fun m!2004867 () Bool)

(assert (=> b!1653149 m!2004867))

(declare-fun m!2004869 () Bool)

(assert (=> b!1653149 m!2004869))

(declare-fun m!2004871 () Bool)

(assert (=> b!1653148 m!2004871))

(declare-fun m!2004873 () Bool)

(assert (=> d!498655 m!2004873))

(declare-fun m!2004875 () Bool)

(assert (=> d!498655 m!2004875))

(declare-fun m!2004877 () Bool)

(assert (=> d!498655 m!2004877))

(assert (=> b!1652731 d!498655))

(declare-fun d!498657 () Bool)

(declare-fun isEmpty!11282 (Option!3471) Bool)

(assert (=> d!498657 (= (isDefined!2827 lt!614221) (not (isEmpty!11282 lt!614221)))))

(declare-fun bs!396678 () Bool)

(assert (= bs!396678 d!498657))

(declare-fun m!2004879 () Bool)

(assert (=> bs!396678 m!2004879))

(assert (=> b!1652752 d!498657))

(declare-fun d!498659 () Bool)

(assert (=> d!498659 (isDefined!2827 (maxPrefix!1408 thiss!17113 rules!1846 (++!4940 lt!614211 lt!614212)))))

(declare-fun lt!614865 () Unit!30447)

(declare-fun e!1060095 () Unit!30447)

(assert (=> d!498659 (= lt!614865 e!1060095)))

(declare-fun c!268935 () Bool)

(assert (=> d!498659 (= c!268935 (isEmpty!11282 (maxPrefix!1408 thiss!17113 rules!1846 (++!4940 lt!614211 lt!614212))))))

(declare-fun lt!614862 () Unit!30447)

(declare-fun lt!614861 () Unit!30447)

(assert (=> d!498659 (= lt!614862 lt!614861)))

(declare-fun e!1060096 () Bool)

(assert (=> d!498659 e!1060096))

(declare-fun res!741062 () Bool)

(assert (=> d!498659 (=> (not res!741062) (not e!1060096))))

(declare-fun lt!614853 () Token!6000)

(assert (=> d!498659 (= res!741062 (isDefined!2828 (getRuleFromTag!317 thiss!17113 rules!1846 (tag!3499 (rule!5081 lt!614853)))))))

(assert (=> d!498659 (= lt!614861 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!317 thiss!17113 rules!1846 lt!614211 lt!614853))))

(declare-fun lt!614859 () Unit!30447)

(declare-fun lt!614866 () Unit!30447)

(assert (=> d!498659 (= lt!614859 lt!614866)))

(declare-fun lt!614857 () List!18310)

(assert (=> d!498659 (isPrefix!1475 lt!614857 (++!4940 lt!614211 lt!614212))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!204 (List!18310 List!18310 List!18310) Unit!30447)

(assert (=> d!498659 (= lt!614866 (lemmaPrefixStaysPrefixWhenAddingToSuffix!204 lt!614857 lt!614211 lt!614212))))

(assert (=> d!498659 (= lt!614857 (list!7261 (charsOf!1866 lt!614853)))))

(declare-fun lt!614855 () Unit!30447)

(declare-fun lt!614856 () Unit!30447)

(assert (=> d!498659 (= lt!614855 lt!614856)))

(declare-fun lt!614864 () List!18310)

(declare-fun lt!614858 () List!18310)

(assert (=> d!498659 (isPrefix!1475 lt!614864 (++!4940 lt!614864 lt!614858))))

(assert (=> d!498659 (= lt!614856 (lemmaConcatTwoListThenFirstIsPrefix!1000 lt!614864 lt!614858))))

(assert (=> d!498659 (= lt!614858 (_2!10367 (get!5314 (maxPrefix!1408 thiss!17113 rules!1846 lt!614211))))))

(assert (=> d!498659 (= lt!614864 (list!7261 (charsOf!1866 lt!614853)))))

(declare-fun head!3652 (List!18311) Token!6000)

(assert (=> d!498659 (= lt!614853 (head!3652 (list!7262 (_1!10369 (lex!1330 thiss!17113 rules!1846 (seqFromList!2173 lt!614211))))))))

(assert (=> d!498659 (not (isEmpty!11275 rules!1846))))

(assert (=> d!498659 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!414 thiss!17113 rules!1846 lt!614211 lt!614212) lt!614865)))

(declare-fun b!1653170 () Bool)

(declare-fun Unit!30480 () Unit!30447)

(assert (=> b!1653170 (= e!1060095 Unit!30480)))

(declare-fun lt!614868 () List!18310)

(assert (=> b!1653170 (= lt!614868 (++!4940 lt!614211 lt!614212))))

(declare-fun lt!614860 () Unit!30447)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!212 (LexerInterface!2846 Rule!6234 List!18312 List!18310) Unit!30447)

(assert (=> b!1653170 (= lt!614860 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!212 thiss!17113 (rule!5081 lt!614853) rules!1846 lt!614868))))

(assert (=> b!1653170 (isEmpty!11282 (maxPrefixOneRule!813 thiss!17113 (rule!5081 lt!614853) lt!614868))))

(declare-fun lt!614863 () Unit!30447)

(assert (=> b!1653170 (= lt!614863 lt!614860)))

(declare-fun lt!614854 () List!18310)

(assert (=> b!1653170 (= lt!614854 (list!7261 (charsOf!1866 lt!614853)))))

(declare-fun lt!614852 () Unit!30447)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!208 (LexerInterface!2846 Rule!6234 List!18310 List!18310) Unit!30447)

(assert (=> b!1653170 (= lt!614852 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!208 thiss!17113 (rule!5081 lt!614853) lt!614854 (++!4940 lt!614211 lt!614212)))))

(assert (=> b!1653170 (not (matchR!2038 (regex!3217 (rule!5081 lt!614853)) lt!614854))))

(declare-fun lt!614867 () Unit!30447)

(assert (=> b!1653170 (= lt!614867 lt!614852)))

(assert (=> b!1653170 false))

(declare-fun b!1653169 () Bool)

(assert (=> b!1653169 (= e!1060096 (= (rule!5081 lt!614853) (get!5315 (getRuleFromTag!317 thiss!17113 rules!1846 (tag!3499 (rule!5081 lt!614853))))))))

(declare-fun b!1653171 () Bool)

(declare-fun Unit!30481 () Unit!30447)

(assert (=> b!1653171 (= e!1060095 Unit!30481)))

(declare-fun b!1653168 () Bool)

(declare-fun res!741061 () Bool)

(assert (=> b!1653168 (=> (not res!741061) (not e!1060096))))

(assert (=> b!1653168 (= res!741061 (matchR!2038 (regex!3217 (get!5315 (getRuleFromTag!317 thiss!17113 rules!1846 (tag!3499 (rule!5081 lt!614853))))) (list!7261 (charsOf!1866 lt!614853))))))

(assert (= (and d!498659 res!741062) b!1653168))

(assert (= (and b!1653168 res!741061) b!1653169))

(assert (= (and d!498659 c!268935) b!1653170))

(assert (= (and d!498659 (not c!268935)) b!1653171))

(declare-fun m!2004897 () Bool)

(assert (=> d!498659 m!2004897))

(declare-fun m!2004899 () Bool)

(assert (=> d!498659 m!2004899))

(declare-fun m!2004901 () Bool)

(assert (=> d!498659 m!2004901))

(declare-fun m!2004903 () Bool)

(assert (=> d!498659 m!2004903))

(declare-fun m!2004905 () Bool)

(assert (=> d!498659 m!2004905))

(declare-fun m!2004907 () Bool)

(assert (=> d!498659 m!2004907))

(assert (=> d!498659 m!2004899))

(assert (=> d!498659 m!2004157))

(declare-fun m!2004909 () Bool)

(assert (=> d!498659 m!2004909))

(declare-fun m!2004911 () Bool)

(assert (=> d!498659 m!2004911))

(assert (=> d!498659 m!2004909))

(declare-fun m!2004913 () Bool)

(assert (=> d!498659 m!2004913))

(assert (=> d!498659 m!2004905))

(declare-fun m!2004915 () Bool)

(assert (=> d!498659 m!2004915))

(assert (=> d!498659 m!2004157))

(assert (=> d!498659 m!2004119))

(declare-fun m!2004917 () Bool)

(assert (=> d!498659 m!2004917))

(assert (=> d!498659 m!2004909))

(declare-fun m!2004919 () Bool)

(assert (=> d!498659 m!2004919))

(assert (=> d!498659 m!2004157))

(declare-fun m!2004921 () Bool)

(assert (=> d!498659 m!2004921))

(assert (=> d!498659 m!2004177))

(assert (=> d!498659 m!2004179))

(assert (=> d!498659 m!2004177))

(assert (=> d!498659 m!2004119))

(declare-fun m!2004923 () Bool)

(assert (=> d!498659 m!2004923))

(assert (=> d!498659 m!2004911))

(declare-fun m!2004925 () Bool)

(assert (=> d!498659 m!2004925))

(assert (=> d!498659 m!2004897))

(declare-fun m!2004927 () Bool)

(assert (=> d!498659 m!2004927))

(assert (=> d!498659 m!2004149))

(declare-fun m!2004929 () Bool)

(assert (=> b!1653170 m!2004929))

(assert (=> b!1653170 m!2004897))

(assert (=> b!1653170 m!2004157))

(declare-fun m!2004931 () Bool)

(assert (=> b!1653170 m!2004931))

(declare-fun m!2004933 () Bool)

(assert (=> b!1653170 m!2004933))

(assert (=> b!1653170 m!2004157))

(declare-fun m!2004935 () Bool)

(assert (=> b!1653170 m!2004935))

(assert (=> b!1653170 m!2004897))

(assert (=> b!1653170 m!2004927))

(declare-fun m!2004937 () Bool)

(assert (=> b!1653170 m!2004937))

(assert (=> b!1653170 m!2004931))

(assert (=> b!1653169 m!2004911))

(assert (=> b!1653169 m!2004911))

(declare-fun m!2004939 () Bool)

(assert (=> b!1653169 m!2004939))

(assert (=> b!1653168 m!2004897))

(assert (=> b!1653168 m!2004911))

(assert (=> b!1653168 m!2004897))

(assert (=> b!1653168 m!2004927))

(assert (=> b!1653168 m!2004927))

(declare-fun m!2004941 () Bool)

(assert (=> b!1653168 m!2004941))

(assert (=> b!1653168 m!2004911))

(assert (=> b!1653168 m!2004939))

(assert (=> b!1652752 d!498659))

(declare-fun d!498663 () Bool)

(declare-fun res!741076 () Bool)

(declare-fun e!1060112 () Bool)

(assert (=> d!498663 (=> res!741076 e!1060112)))

(assert (=> d!498663 (= res!741076 (or (not ((_ is Cons!18241) tokens!457)) (not ((_ is Cons!18241) (t!151064 tokens!457)))))))

(assert (=> d!498663 (= (tokensListTwoByTwoPredicateSeparableList!539 thiss!17113 tokens!457 rules!1846) e!1060112)))

(declare-fun b!1653192 () Bool)

(declare-fun e!1060113 () Bool)

(assert (=> b!1653192 (= e!1060112 e!1060113)))

(declare-fun res!741075 () Bool)

(assert (=> b!1653192 (=> (not res!741075) (not e!1060113))))

(assert (=> b!1653192 (= res!741075 (separableTokensPredicate!786 thiss!17113 (h!23642 tokens!457) (h!23642 (t!151064 tokens!457)) rules!1846))))

(declare-fun lt!614907 () Unit!30447)

(declare-fun Unit!30482 () Unit!30447)

(assert (=> b!1653192 (= lt!614907 Unit!30482)))

(assert (=> b!1653192 (> (size!14524 (charsOf!1866 (h!23642 (t!151064 tokens!457)))) 0)))

(declare-fun lt!614911 () Unit!30447)

(declare-fun Unit!30483 () Unit!30447)

(assert (=> b!1653192 (= lt!614911 Unit!30483)))

(assert (=> b!1653192 (rulesProduceIndividualToken!1494 thiss!17113 rules!1846 (h!23642 (t!151064 tokens!457)))))

(declare-fun lt!614910 () Unit!30447)

(declare-fun Unit!30484 () Unit!30447)

(assert (=> b!1653192 (= lt!614910 Unit!30484)))

(assert (=> b!1653192 (rulesProduceIndividualToken!1494 thiss!17113 rules!1846 (h!23642 tokens!457))))

(declare-fun lt!614905 () Unit!30447)

(declare-fun lt!614908 () Unit!30447)

(assert (=> b!1653192 (= lt!614905 lt!614908)))

(assert (=> b!1653192 (rulesProduceIndividualToken!1494 thiss!17113 rules!1846 (h!23642 (t!151064 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!608 (LexerInterface!2846 List!18312 List!18311 Token!6000) Unit!30447)

(assert (=> b!1653192 (= lt!614908 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!608 thiss!17113 rules!1846 tokens!457 (h!23642 (t!151064 tokens!457))))))

(declare-fun lt!614906 () Unit!30447)

(declare-fun lt!614909 () Unit!30447)

(assert (=> b!1653192 (= lt!614906 lt!614909)))

(assert (=> b!1653192 (rulesProduceIndividualToken!1494 thiss!17113 rules!1846 (h!23642 tokens!457))))

(assert (=> b!1653192 (= lt!614909 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!608 thiss!17113 rules!1846 tokens!457 (h!23642 tokens!457)))))

(declare-fun b!1653193 () Bool)

(assert (=> b!1653193 (= e!1060113 (tokensListTwoByTwoPredicateSeparableList!539 thiss!17113 (Cons!18241 (h!23642 (t!151064 tokens!457)) (t!151064 (t!151064 tokens!457))) rules!1846))))

(assert (= (and d!498663 (not res!741076)) b!1653192))

(assert (= (and b!1653192 res!741075) b!1653193))

(declare-fun m!2004979 () Bool)

(assert (=> b!1653192 m!2004979))

(declare-fun m!2004981 () Bool)

(assert (=> b!1653192 m!2004981))

(assert (=> b!1653192 m!2004211))

(declare-fun m!2004983 () Bool)

(assert (=> b!1653192 m!2004983))

(assert (=> b!1653192 m!2004107))

(assert (=> b!1653192 m!2004739))

(assert (=> b!1653192 m!2004107))

(assert (=> b!1653192 m!2004141))

(declare-fun m!2004985 () Bool)

(assert (=> b!1653193 m!2004985))

(assert (=> b!1652754 d!498663))

(declare-fun d!498675 () Bool)

(declare-fun res!741079 () Bool)

(declare-fun e!1060116 () Bool)

(assert (=> d!498675 (=> (not res!741079) (not e!1060116))))

(declare-fun rulesValid!1172 (LexerInterface!2846 List!18312) Bool)

(assert (=> d!498675 (= res!741079 (rulesValid!1172 thiss!17113 rules!1846))))

(assert (=> d!498675 (= (rulesInvariant!2515 thiss!17113 rules!1846) e!1060116)))

(declare-fun b!1653196 () Bool)

(declare-datatypes ((List!18318 0))(
  ( (Nil!18248) (Cons!18248 (h!23649 String!20867) (t!151113 List!18318)) )
))
(declare-fun noDuplicateTag!1172 (LexerInterface!2846 List!18312 List!18318) Bool)

(assert (=> b!1653196 (= e!1060116 (noDuplicateTag!1172 thiss!17113 rules!1846 Nil!18248))))

(assert (= (and d!498675 res!741079) b!1653196))

(declare-fun m!2004987 () Bool)

(assert (=> d!498675 m!2004987))

(declare-fun m!2004989 () Bool)

(assert (=> b!1653196 m!2004989))

(assert (=> b!1652753 d!498675))

(declare-fun d!498677 () Bool)

(declare-fun isEmpty!11283 (Option!3472) Bool)

(assert (=> d!498677 (= (isDefined!2826 (maxPrefixZipperSequence!723 thiss!17113 rules!1846 (seqFromList!2173 (originalCharacters!4031 (h!23642 tokens!457))))) (not (isEmpty!11283 (maxPrefixZipperSequence!723 thiss!17113 rules!1846 (seqFromList!2173 (originalCharacters!4031 (h!23642 tokens!457)))))))))

(declare-fun bs!396681 () Bool)

(assert (= bs!396681 d!498677))

(assert (=> bs!396681 m!2004079))

(declare-fun m!2004991 () Bool)

(assert (=> bs!396681 m!2004991))

(assert (=> b!1652732 d!498677))

(declare-fun bm!106046 () Bool)

(declare-fun call!106051 () Option!3472)

(declare-fun maxPrefixOneRuleZipperSequence!338 (LexerInterface!2846 Rule!6234 BalanceConc!12108) Option!3472)

(assert (=> bm!106046 (= call!106051 (maxPrefixOneRuleZipperSequence!338 thiss!17113 (h!23643 rules!1846) (seqFromList!2173 (originalCharacters!4031 (h!23642 tokens!457)))))))

(declare-fun b!1653228 () Bool)

(declare-fun e!1060139 () Bool)

(declare-fun e!1060140 () Bool)

(assert (=> b!1653228 (= e!1060139 e!1060140)))

(declare-fun res!741101 () Bool)

(assert (=> b!1653228 (=> (not res!741101) (not e!1060140))))

(declare-fun lt!614980 () Option!3472)

(declare-fun get!5318 (Option!3472) tuple2!17932)

(assert (=> b!1653228 (= res!741101 (= (_1!10368 (get!5318 lt!614980)) (_1!10367 (get!5314 (maxPrefix!1408 thiss!17113 rules!1846 (list!7261 (seqFromList!2173 (originalCharacters!4031 (h!23642 tokens!457)))))))))))

(declare-fun b!1653229 () Bool)

(declare-fun e!1060141 () Option!3472)

(assert (=> b!1653229 (= e!1060141 call!106051)))

(declare-fun b!1653230 () Bool)

(declare-fun lt!614982 () Option!3472)

(declare-fun lt!614984 () Option!3472)

(assert (=> b!1653230 (= e!1060141 (ite (and ((_ is None!3471) lt!614982) ((_ is None!3471) lt!614984)) None!3471 (ite ((_ is None!3471) lt!614984) lt!614982 (ite ((_ is None!3471) lt!614982) lt!614984 (ite (>= (size!14520 (_1!10368 (v!24650 lt!614982))) (size!14520 (_1!10368 (v!24650 lt!614984)))) lt!614982 lt!614984)))))))

(assert (=> b!1653230 (= lt!614982 call!106051)))

(assert (=> b!1653230 (= lt!614984 (maxPrefixZipperSequence!723 thiss!17113 (t!151065 rules!1846) (seqFromList!2173 (originalCharacters!4031 (h!23642 tokens!457)))))))

(declare-fun b!1653231 () Bool)

(declare-fun e!1060143 () Bool)

(assert (=> b!1653231 (= e!1060143 e!1060139)))

(declare-fun res!741105 () Bool)

(assert (=> b!1653231 (=> res!741105 e!1060139)))

(assert (=> b!1653231 (= res!741105 (not (isDefined!2826 lt!614980)))))

(declare-fun b!1653232 () Bool)

(assert (=> b!1653232 (= e!1060140 (= (list!7261 (_2!10368 (get!5318 lt!614980))) (_2!10367 (get!5314 (maxPrefix!1408 thiss!17113 rules!1846 (list!7261 (seqFromList!2173 (originalCharacters!4031 (h!23642 tokens!457)))))))))))

(declare-fun d!498679 () Bool)

(assert (=> d!498679 e!1060143))

(declare-fun res!741106 () Bool)

(assert (=> d!498679 (=> (not res!741106) (not e!1060143))))

(declare-fun maxPrefixZipper!344 (LexerInterface!2846 List!18312 List!18310) Option!3471)

(assert (=> d!498679 (= res!741106 (= (isDefined!2826 lt!614980) (isDefined!2827 (maxPrefixZipper!344 thiss!17113 rules!1846 (list!7261 (seqFromList!2173 (originalCharacters!4031 (h!23642 tokens!457))))))))))

(assert (=> d!498679 (= lt!614980 e!1060141)))

(declare-fun c!268945 () Bool)

(assert (=> d!498679 (= c!268945 (and ((_ is Cons!18242) rules!1846) ((_ is Nil!18242) (t!151065 rules!1846))))))

(declare-fun lt!614983 () Unit!30447)

(declare-fun lt!614981 () Unit!30447)

(assert (=> d!498679 (= lt!614983 lt!614981)))

(declare-fun lt!614985 () List!18310)

(declare-fun lt!614986 () List!18310)

(assert (=> d!498679 (isPrefix!1475 lt!614985 lt!614986)))

(declare-fun lemmaIsPrefixRefl!998 (List!18310 List!18310) Unit!30447)

(assert (=> d!498679 (= lt!614981 (lemmaIsPrefixRefl!998 lt!614985 lt!614986))))

(assert (=> d!498679 (= lt!614986 (list!7261 (seqFromList!2173 (originalCharacters!4031 (h!23642 tokens!457)))))))

(assert (=> d!498679 (= lt!614985 (list!7261 (seqFromList!2173 (originalCharacters!4031 (h!23642 tokens!457)))))))

(declare-fun rulesValidInductive!1020 (LexerInterface!2846 List!18312) Bool)

(assert (=> d!498679 (rulesValidInductive!1020 thiss!17113 rules!1846)))

(assert (=> d!498679 (= (maxPrefixZipperSequence!723 thiss!17113 rules!1846 (seqFromList!2173 (originalCharacters!4031 (h!23642 tokens!457)))) lt!614980)))

(declare-fun b!1653233 () Bool)

(declare-fun res!741102 () Bool)

(assert (=> b!1653233 (=> (not res!741102) (not e!1060143))))

(declare-fun e!1060138 () Bool)

(assert (=> b!1653233 (= res!741102 e!1060138)))

(declare-fun res!741103 () Bool)

(assert (=> b!1653233 (=> res!741103 e!1060138)))

(assert (=> b!1653233 (= res!741103 (not (isDefined!2826 lt!614980)))))

(declare-fun e!1060142 () Bool)

(declare-fun b!1653234 () Bool)

(assert (=> b!1653234 (= e!1060142 (= (list!7261 (_2!10368 (get!5318 lt!614980))) (_2!10367 (get!5314 (maxPrefixZipper!344 thiss!17113 rules!1846 (list!7261 (seqFromList!2173 (originalCharacters!4031 (h!23642 tokens!457)))))))))))

(declare-fun b!1653235 () Bool)

(assert (=> b!1653235 (= e!1060138 e!1060142)))

(declare-fun res!741104 () Bool)

(assert (=> b!1653235 (=> (not res!741104) (not e!1060142))))

(assert (=> b!1653235 (= res!741104 (= (_1!10368 (get!5318 lt!614980)) (_1!10367 (get!5314 (maxPrefixZipper!344 thiss!17113 rules!1846 (list!7261 (seqFromList!2173 (originalCharacters!4031 (h!23642 tokens!457)))))))))))

(assert (= (and d!498679 c!268945) b!1653229))

(assert (= (and d!498679 (not c!268945)) b!1653230))

(assert (= (or b!1653229 b!1653230) bm!106046))

(assert (= (and d!498679 res!741106) b!1653233))

(assert (= (and b!1653233 (not res!741103)) b!1653235))

(assert (= (and b!1653235 res!741104) b!1653234))

(assert (= (and b!1653233 res!741102) b!1653231))

(assert (= (and b!1653231 (not res!741105)) b!1653228))

(assert (= (and b!1653228 res!741101) b!1653232))

(assert (=> b!1653230 m!2004077))

(declare-fun m!2005043 () Bool)

(assert (=> b!1653230 m!2005043))

(declare-fun m!2005045 () Bool)

(assert (=> d!498679 m!2005045))

(declare-fun m!2005047 () Bool)

(assert (=> d!498679 m!2005047))

(assert (=> d!498679 m!2004077))

(declare-fun m!2005049 () Bool)

(assert (=> d!498679 m!2005049))

(declare-fun m!2005051 () Bool)

(assert (=> d!498679 m!2005051))

(assert (=> d!498679 m!2005049))

(assert (=> d!498679 m!2005045))

(declare-fun m!2005053 () Bool)

(assert (=> d!498679 m!2005053))

(declare-fun m!2005055 () Bool)

(assert (=> d!498679 m!2005055))

(declare-fun m!2005057 () Bool)

(assert (=> d!498679 m!2005057))

(assert (=> b!1653232 m!2004077))

(assert (=> b!1653232 m!2005049))

(assert (=> b!1653232 m!2005049))

(declare-fun m!2005059 () Bool)

(assert (=> b!1653232 m!2005059))

(declare-fun m!2005061 () Bool)

(assert (=> b!1653232 m!2005061))

(assert (=> b!1653232 m!2005059))

(declare-fun m!2005063 () Bool)

(assert (=> b!1653232 m!2005063))

(declare-fun m!2005065 () Bool)

(assert (=> b!1653232 m!2005065))

(assert (=> bm!106046 m!2004077))

(declare-fun m!2005067 () Bool)

(assert (=> bm!106046 m!2005067))

(assert (=> b!1653234 m!2004077))

(assert (=> b!1653234 m!2005049))

(assert (=> b!1653234 m!2005061))

(assert (=> b!1653234 m!2005045))

(declare-fun m!2005069 () Bool)

(assert (=> b!1653234 m!2005069))

(assert (=> b!1653234 m!2005049))

(assert (=> b!1653234 m!2005045))

(assert (=> b!1653234 m!2005065))

(assert (=> b!1653228 m!2005061))

(assert (=> b!1653228 m!2004077))

(assert (=> b!1653228 m!2005049))

(assert (=> b!1653228 m!2005049))

(assert (=> b!1653228 m!2005059))

(assert (=> b!1653228 m!2005059))

(assert (=> b!1653228 m!2005063))

(assert (=> b!1653233 m!2005057))

(assert (=> b!1653231 m!2005057))

(assert (=> b!1653235 m!2005061))

(assert (=> b!1653235 m!2004077))

(assert (=> b!1653235 m!2005049))

(assert (=> b!1653235 m!2005049))

(assert (=> b!1653235 m!2005045))

(assert (=> b!1653235 m!2005045))

(assert (=> b!1653235 m!2005069))

(assert (=> b!1652732 d!498679))

(declare-fun d!498685 () Bool)

(declare-fun fromListB!970 (List!18310) BalanceConc!12108)

(assert (=> d!498685 (= (seqFromList!2173 (originalCharacters!4031 (h!23642 tokens!457))) (fromListB!970 (originalCharacters!4031 (h!23642 tokens!457))))))

(declare-fun bs!396682 () Bool)

(assert (= bs!396682 d!498685))

(declare-fun m!2005071 () Bool)

(assert (=> bs!396682 m!2005071))

(assert (=> b!1652732 d!498685))

(declare-fun d!498687 () Bool)

(declare-fun lt!615019 () C!9264)

(assert (=> d!498687 (= lt!615019 (head!3649 (list!7261 lt!614232)))))

(declare-fun head!3653 (Conc!6082) C!9264)

(assert (=> d!498687 (= lt!615019 (head!3653 (c!268841 lt!614232)))))

(assert (=> d!498687 (not (isEmpty!11281 lt!614232))))

(assert (=> d!498687 (= (head!3648 lt!614232) lt!615019)))

(declare-fun bs!396684 () Bool)

(assert (= bs!396684 d!498687))

(assert (=> bs!396684 m!2004155))

(assert (=> bs!396684 m!2004155))

(declare-fun m!2005099 () Bool)

(assert (=> bs!396684 m!2005099))

(declare-fun m!2005101 () Bool)

(assert (=> bs!396684 m!2005101))

(declare-fun m!2005103 () Bool)

(assert (=> bs!396684 m!2005103))

(assert (=> b!1652732 d!498687))

(declare-fun b!1653248 () Bool)

(declare-fun e!1060154 () Bool)

(declare-fun e!1060152 () Bool)

(assert (=> b!1653248 (= e!1060154 e!1060152)))

(declare-fun c!268950 () Bool)

(assert (=> b!1653248 (= c!268950 ((_ is IntegerValue!9922) (value!101357 (h!23642 tokens!457))))))

(declare-fun b!1653249 () Bool)

(declare-fun res!741111 () Bool)

(declare-fun e!1060153 () Bool)

(assert (=> b!1653249 (=> res!741111 e!1060153)))

(assert (=> b!1653249 (= res!741111 (not ((_ is IntegerValue!9923) (value!101357 (h!23642 tokens!457)))))))

(assert (=> b!1653249 (= e!1060152 e!1060153)))

(declare-fun b!1653250 () Bool)

(declare-fun inv!17 (TokenValue!3307) Bool)

(assert (=> b!1653250 (= e!1060152 (inv!17 (value!101357 (h!23642 tokens!457))))))

(declare-fun b!1653251 () Bool)

(declare-fun inv!16 (TokenValue!3307) Bool)

(assert (=> b!1653251 (= e!1060154 (inv!16 (value!101357 (h!23642 tokens!457))))))

(declare-fun d!498691 () Bool)

(declare-fun c!268951 () Bool)

(assert (=> d!498691 (= c!268951 ((_ is IntegerValue!9921) (value!101357 (h!23642 tokens!457))))))

(assert (=> d!498691 (= (inv!21 (value!101357 (h!23642 tokens!457))) e!1060154)))

(declare-fun b!1653252 () Bool)

(declare-fun inv!15 (TokenValue!3307) Bool)

(assert (=> b!1653252 (= e!1060153 (inv!15 (value!101357 (h!23642 tokens!457))))))

(assert (= (and d!498691 c!268951) b!1653251))

(assert (= (and d!498691 (not c!268951)) b!1653248))

(assert (= (and b!1653248 c!268950) b!1653250))

(assert (= (and b!1653248 (not c!268950)) b!1653249))

(assert (= (and b!1653249 (not res!741111)) b!1653252))

(declare-fun m!2005105 () Bool)

(assert (=> b!1653250 m!2005105))

(declare-fun m!2005107 () Bool)

(assert (=> b!1653251 m!2005107))

(declare-fun m!2005109 () Bool)

(assert (=> b!1653252 m!2005109))

(assert (=> b!1652750 d!498691))

(declare-fun d!498693 () Bool)

(assert (=> d!498693 (= (isEmpty!11275 rules!1846) ((_ is Nil!18242) rules!1846))))

(assert (=> b!1652749 d!498693))

(declare-fun d!498695 () Bool)

(assert (=> d!498695 (= (inv!23597 (tag!3499 (rule!5081 (h!23642 tokens!457)))) (= (mod (str.len (value!101356 (tag!3499 (rule!5081 (h!23642 tokens!457))))) 2) 0))))

(assert (=> b!1652728 d!498695))

(declare-fun d!498697 () Bool)

(declare-fun res!741113 () Bool)

(declare-fun e!1060156 () Bool)

(assert (=> d!498697 (=> (not res!741113) (not e!1060156))))

(assert (=> d!498697 (= res!741113 (semiInverseModEq!1244 (toChars!4527 (transformation!3217 (rule!5081 (h!23642 tokens!457)))) (toValue!4668 (transformation!3217 (rule!5081 (h!23642 tokens!457))))))))

(assert (=> d!498697 (= (inv!23600 (transformation!3217 (rule!5081 (h!23642 tokens!457)))) e!1060156)))

(declare-fun b!1653254 () Bool)

(assert (=> b!1653254 (= e!1060156 (equivClasses!1185 (toChars!4527 (transformation!3217 (rule!5081 (h!23642 tokens!457)))) (toValue!4668 (transformation!3217 (rule!5081 (h!23642 tokens!457))))))))

(assert (= (and d!498697 res!741113) b!1653254))

(declare-fun m!2005117 () Bool)

(assert (=> d!498697 m!2005117))

(declare-fun m!2005119 () Bool)

(assert (=> b!1653254 m!2005119))

(assert (=> b!1652728 d!498697))

(declare-fun d!498701 () Bool)

(assert (=> d!498701 (= (head!3649 (originalCharacters!4031 (h!23642 (t!151064 tokens!457)))) (h!23641 (originalCharacters!4031 (h!23642 (t!151064 tokens!457)))))))

(assert (=> b!1652751 d!498701))

(declare-fun d!498703 () Bool)

(declare-fun list!7265 (Conc!6082) List!18310)

(assert (=> d!498703 (= (list!7261 lt!614213) (list!7265 (c!268841 lt!614213)))))

(declare-fun bs!396685 () Bool)

(assert (= bs!396685 d!498703))

(declare-fun m!2005121 () Bool)

(assert (=> bs!396685 m!2005121))

(assert (=> b!1652730 d!498703))

(declare-fun d!498705 () Bool)

(declare-fun lt!615046 () BalanceConc!12108)

(declare-fun printListTailRec!395 (LexerInterface!2846 List!18311 List!18310) List!18310)

(declare-fun dropList!678 (BalanceConc!12110 Int) List!18311)

(assert (=> d!498705 (= (list!7261 lt!615046) (printListTailRec!395 thiss!17113 (dropList!678 lt!614218 0) (list!7261 (BalanceConc!12109 Empty!6082))))))

(declare-fun e!1060165 () BalanceConc!12108)

(assert (=> d!498705 (= lt!615046 e!1060165)))

(declare-fun c!268957 () Bool)

(assert (=> d!498705 (= c!268957 (>= 0 (size!14526 lt!614218)))))

(declare-fun e!1060166 () Bool)

(assert (=> d!498705 e!1060166))

(declare-fun res!741128 () Bool)

(assert (=> d!498705 (=> (not res!741128) (not e!1060166))))

(assert (=> d!498705 (= res!741128 (>= 0 0))))

(assert (=> d!498705 (= (printTailRec!897 thiss!17113 lt!614218 0 (BalanceConc!12109 Empty!6082)) lt!615046)))

(declare-fun b!1653274 () Bool)

(assert (=> b!1653274 (= e!1060166 (<= 0 (size!14526 lt!614218)))))

(declare-fun b!1653275 () Bool)

(assert (=> b!1653275 (= e!1060165 (BalanceConc!12109 Empty!6082))))

(declare-fun b!1653276 () Bool)

(assert (=> b!1653276 (= e!1060165 (printTailRec!897 thiss!17113 lt!614218 (+ 0 1) (++!4939 (BalanceConc!12109 Empty!6082) (charsOf!1866 (apply!4825 lt!614218 0)))))))

(declare-fun lt!615044 () List!18311)

(assert (=> b!1653276 (= lt!615044 (list!7262 lt!614218))))

(declare-fun lt!615045 () Unit!30447)

(declare-fun lemmaDropApply!602 (List!18311 Int) Unit!30447)

(assert (=> b!1653276 (= lt!615045 (lemmaDropApply!602 lt!615044 0))))

(declare-fun drop!916 (List!18311 Int) List!18311)

(declare-fun apply!4828 (List!18311 Int) Token!6000)

(assert (=> b!1653276 (= (head!3652 (drop!916 lt!615044 0)) (apply!4828 lt!615044 0))))

(declare-fun lt!615047 () Unit!30447)

(assert (=> b!1653276 (= lt!615047 lt!615045)))

(declare-fun lt!615048 () List!18311)

(assert (=> b!1653276 (= lt!615048 (list!7262 lt!614218))))

(declare-fun lt!615049 () Unit!30447)

(declare-fun lemmaDropTail!582 (List!18311 Int) Unit!30447)

(assert (=> b!1653276 (= lt!615049 (lemmaDropTail!582 lt!615048 0))))

(declare-fun tail!2450 (List!18311) List!18311)

(assert (=> b!1653276 (= (tail!2450 (drop!916 lt!615048 0)) (drop!916 lt!615048 (+ 0 1)))))

(declare-fun lt!615050 () Unit!30447)

(assert (=> b!1653276 (= lt!615050 lt!615049)))

(assert (= (and d!498705 res!741128) b!1653274))

(assert (= (and d!498705 c!268957) b!1653275))

(assert (= (and d!498705 (not c!268957)) b!1653276))

(declare-fun m!2005157 () Bool)

(assert (=> d!498705 m!2005157))

(declare-fun m!2005159 () Bool)

(assert (=> d!498705 m!2005159))

(declare-fun m!2005161 () Bool)

(assert (=> d!498705 m!2005161))

(assert (=> d!498705 m!2005157))

(assert (=> d!498705 m!2005159))

(declare-fun m!2005163 () Bool)

(assert (=> d!498705 m!2005163))

(declare-fun m!2005165 () Bool)

(assert (=> d!498705 m!2005165))

(assert (=> b!1653274 m!2005165))

(declare-fun m!2005167 () Bool)

(assert (=> b!1653276 m!2005167))

(declare-fun m!2005169 () Bool)

(assert (=> b!1653276 m!2005169))

(declare-fun m!2005171 () Bool)

(assert (=> b!1653276 m!2005171))

(declare-fun m!2005173 () Bool)

(assert (=> b!1653276 m!2005173))

(declare-fun m!2005175 () Bool)

(assert (=> b!1653276 m!2005175))

(declare-fun m!2005177 () Bool)

(assert (=> b!1653276 m!2005177))

(declare-fun m!2005179 () Bool)

(assert (=> b!1653276 m!2005179))

(assert (=> b!1653276 m!2005171))

(declare-fun m!2005181 () Bool)

(assert (=> b!1653276 m!2005181))

(declare-fun m!2005183 () Bool)

(assert (=> b!1653276 m!2005183))

(assert (=> b!1653276 m!2005177))

(assert (=> b!1653276 m!2005169))

(assert (=> b!1653276 m!2005179))

(declare-fun m!2005185 () Bool)

(assert (=> b!1653276 m!2005185))

(assert (=> b!1653276 m!2005183))

(declare-fun m!2005187 () Bool)

(assert (=> b!1653276 m!2005187))

(declare-fun m!2005189 () Bool)

(assert (=> b!1653276 m!2005189))

(declare-fun m!2005191 () Bool)

(assert (=> b!1653276 m!2005191))

(assert (=> b!1652730 d!498705))

(declare-fun b!1653295 () Bool)

(declare-fun e!1060174 () Bool)

(declare-fun lt!615065 () Option!3471)

(declare-fun contains!3182 (List!18312 Rule!6234) Bool)

(assert (=> b!1653295 (= e!1060174 (contains!3182 rules!1846 (rule!5081 (_1!10367 (get!5314 lt!615065)))))))

(declare-fun b!1653296 () Bool)

(declare-fun res!741146 () Bool)

(assert (=> b!1653296 (=> (not res!741146) (not e!1060174))))

(assert (=> b!1653296 (= res!741146 (< (size!14525 (_2!10367 (get!5314 lt!615065))) (size!14525 lt!614214)))))

(declare-fun b!1653297 () Bool)

(declare-fun e!1060173 () Option!3471)

(declare-fun call!106054 () Option!3471)

(assert (=> b!1653297 (= e!1060173 call!106054)))

(declare-fun b!1653298 () Bool)

(declare-fun res!741147 () Bool)

(assert (=> b!1653298 (=> (not res!741147) (not e!1060174))))

(assert (=> b!1653298 (= res!741147 (= (value!101357 (_1!10367 (get!5314 lt!615065))) (apply!4822 (transformation!3217 (rule!5081 (_1!10367 (get!5314 lt!615065)))) (seqFromList!2173 (originalCharacters!4031 (_1!10367 (get!5314 lt!615065)))))))))

(declare-fun b!1653300 () Bool)

(declare-fun res!741143 () Bool)

(assert (=> b!1653300 (=> (not res!741143) (not e!1060174))))

(assert (=> b!1653300 (= res!741143 (= (list!7261 (charsOf!1866 (_1!10367 (get!5314 lt!615065)))) (originalCharacters!4031 (_1!10367 (get!5314 lt!615065)))))))

(declare-fun b!1653301 () Bool)

(declare-fun e!1060175 () Bool)

(assert (=> b!1653301 (= e!1060175 e!1060174)))

(declare-fun res!741144 () Bool)

(assert (=> b!1653301 (=> (not res!741144) (not e!1060174))))

(assert (=> b!1653301 (= res!741144 (isDefined!2827 lt!615065))))

(declare-fun b!1653302 () Bool)

(declare-fun res!741148 () Bool)

(assert (=> b!1653302 (=> (not res!741148) (not e!1060174))))

(assert (=> b!1653302 (= res!741148 (= (++!4940 (list!7261 (charsOf!1866 (_1!10367 (get!5314 lt!615065)))) (_2!10367 (get!5314 lt!615065))) lt!614214))))

(declare-fun bm!106049 () Bool)

(assert (=> bm!106049 (= call!106054 (maxPrefixOneRule!813 thiss!17113 (h!23643 rules!1846) lt!614214))))

(declare-fun b!1653303 () Bool)

(declare-fun res!741149 () Bool)

(assert (=> b!1653303 (=> (not res!741149) (not e!1060174))))

(assert (=> b!1653303 (= res!741149 (matchR!2038 (regex!3217 (rule!5081 (_1!10367 (get!5314 lt!615065)))) (list!7261 (charsOf!1866 (_1!10367 (get!5314 lt!615065))))))))

(declare-fun b!1653299 () Bool)

(declare-fun lt!615061 () Option!3471)

(declare-fun lt!615063 () Option!3471)

(assert (=> b!1653299 (= e!1060173 (ite (and ((_ is None!3470) lt!615061) ((_ is None!3470) lt!615063)) None!3470 (ite ((_ is None!3470) lt!615063) lt!615061 (ite ((_ is None!3470) lt!615061) lt!615063 (ite (>= (size!14520 (_1!10367 (v!24649 lt!615061))) (size!14520 (_1!10367 (v!24649 lt!615063)))) lt!615061 lt!615063)))))))

(assert (=> b!1653299 (= lt!615061 call!106054)))

(assert (=> b!1653299 (= lt!615063 (maxPrefix!1408 thiss!17113 (t!151065 rules!1846) lt!614214))))

(declare-fun d!498717 () Bool)

(assert (=> d!498717 e!1060175))

(declare-fun res!741145 () Bool)

(assert (=> d!498717 (=> res!741145 e!1060175)))

(assert (=> d!498717 (= res!741145 (isEmpty!11282 lt!615065))))

(assert (=> d!498717 (= lt!615065 e!1060173)))

(declare-fun c!268960 () Bool)

(assert (=> d!498717 (= c!268960 (and ((_ is Cons!18242) rules!1846) ((_ is Nil!18242) (t!151065 rules!1846))))))

(declare-fun lt!615062 () Unit!30447)

(declare-fun lt!615064 () Unit!30447)

(assert (=> d!498717 (= lt!615062 lt!615064)))

(assert (=> d!498717 (isPrefix!1475 lt!614214 lt!614214)))

(assert (=> d!498717 (= lt!615064 (lemmaIsPrefixRefl!998 lt!614214 lt!614214))))

(assert (=> d!498717 (rulesValidInductive!1020 thiss!17113 rules!1846)))

(assert (=> d!498717 (= (maxPrefix!1408 thiss!17113 rules!1846 lt!614214) lt!615065)))

(assert (= (and d!498717 c!268960) b!1653297))

(assert (= (and d!498717 (not c!268960)) b!1653299))

(assert (= (or b!1653297 b!1653299) bm!106049))

(assert (= (and d!498717 (not res!741145)) b!1653301))

(assert (= (and b!1653301 res!741144) b!1653300))

(assert (= (and b!1653300 res!741143) b!1653296))

(assert (= (and b!1653296 res!741146) b!1653302))

(assert (= (and b!1653302 res!741148) b!1653298))

(assert (= (and b!1653298 res!741147) b!1653303))

(assert (= (and b!1653303 res!741149) b!1653295))

(declare-fun m!2005193 () Bool)

(assert (=> b!1653300 m!2005193))

(declare-fun m!2005195 () Bool)

(assert (=> b!1653300 m!2005195))

(assert (=> b!1653300 m!2005195))

(declare-fun m!2005197 () Bool)

(assert (=> b!1653300 m!2005197))

(assert (=> b!1653298 m!2005193))

(declare-fun m!2005199 () Bool)

(assert (=> b!1653298 m!2005199))

(assert (=> b!1653298 m!2005199))

(declare-fun m!2005201 () Bool)

(assert (=> b!1653298 m!2005201))

(declare-fun m!2005203 () Bool)

(assert (=> b!1653299 m!2005203))

(declare-fun m!2005205 () Bool)

(assert (=> b!1653301 m!2005205))

(assert (=> b!1653296 m!2005193))

(declare-fun m!2005207 () Bool)

(assert (=> b!1653296 m!2005207))

(declare-fun m!2005209 () Bool)

(assert (=> b!1653296 m!2005209))

(assert (=> b!1653295 m!2005193))

(declare-fun m!2005211 () Bool)

(assert (=> b!1653295 m!2005211))

(assert (=> b!1653303 m!2005193))

(assert (=> b!1653303 m!2005195))

(assert (=> b!1653303 m!2005195))

(assert (=> b!1653303 m!2005197))

(assert (=> b!1653303 m!2005197))

(declare-fun m!2005213 () Bool)

(assert (=> b!1653303 m!2005213))

(declare-fun m!2005215 () Bool)

(assert (=> d!498717 m!2005215))

(declare-fun m!2005217 () Bool)

(assert (=> d!498717 m!2005217))

(declare-fun m!2005219 () Bool)

(assert (=> d!498717 m!2005219))

(assert (=> d!498717 m!2005055))

(declare-fun m!2005221 () Bool)

(assert (=> bm!106049 m!2005221))

(assert (=> b!1653302 m!2005193))

(assert (=> b!1653302 m!2005195))

(assert (=> b!1653302 m!2005195))

(assert (=> b!1653302 m!2005197))

(assert (=> b!1653302 m!2005197))

(declare-fun m!2005223 () Bool)

(assert (=> b!1653302 m!2005223))

(assert (=> b!1652730 d!498717))

(declare-fun d!498719 () Bool)

(declare-fun c!268963 () Bool)

(assert (=> d!498719 (= c!268963 ((_ is Cons!18241) (Cons!18241 (h!23642 tokens!457) Nil!18241)))))

(declare-fun e!1060178 () List!18310)

(assert (=> d!498719 (= (printList!959 thiss!17113 (Cons!18241 (h!23642 tokens!457) Nil!18241)) e!1060178)))

(declare-fun b!1653308 () Bool)

(assert (=> b!1653308 (= e!1060178 (++!4940 (list!7261 (charsOf!1866 (h!23642 (Cons!18241 (h!23642 tokens!457) Nil!18241)))) (printList!959 thiss!17113 (t!151064 (Cons!18241 (h!23642 tokens!457) Nil!18241)))))))

(declare-fun b!1653309 () Bool)

(assert (=> b!1653309 (= e!1060178 Nil!18240)))

(assert (= (and d!498719 c!268963) b!1653308))

(assert (= (and d!498719 (not c!268963)) b!1653309))

(declare-fun m!2005225 () Bool)

(assert (=> b!1653308 m!2005225))

(assert (=> b!1653308 m!2005225))

(declare-fun m!2005227 () Bool)

(assert (=> b!1653308 m!2005227))

(declare-fun m!2005229 () Bool)

(assert (=> b!1653308 m!2005229))

(assert (=> b!1653308 m!2005227))

(assert (=> b!1653308 m!2005229))

(declare-fun m!2005231 () Bool)

(assert (=> b!1653308 m!2005231))

(assert (=> b!1652730 d!498719))

(declare-fun d!498721 () Bool)

(declare-fun lt!615068 () BalanceConc!12108)

(assert (=> d!498721 (= (list!7261 lt!615068) (printList!959 thiss!17113 (list!7262 lt!614218)))))

(assert (=> d!498721 (= lt!615068 (printTailRec!897 thiss!17113 lt!614218 0 (BalanceConc!12109 Empty!6082)))))

(assert (=> d!498721 (= (print!1377 thiss!17113 lt!614218) lt!615068)))

(declare-fun bs!396688 () Bool)

(assert (= bs!396688 d!498721))

(declare-fun m!2005233 () Bool)

(assert (=> bs!396688 m!2005233))

(assert (=> bs!396688 m!2005175))

(assert (=> bs!396688 m!2005175))

(declare-fun m!2005235 () Bool)

(assert (=> bs!396688 m!2005235))

(assert (=> bs!396688 m!2004201))

(assert (=> b!1652730 d!498721))

(declare-fun d!498723 () Bool)

(declare-fun e!1060181 () Bool)

(assert (=> d!498723 e!1060181))

(declare-fun res!741152 () Bool)

(assert (=> d!498723 (=> (not res!741152) (not e!1060181))))

(declare-fun lt!615071 () BalanceConc!12110)

(assert (=> d!498723 (= res!741152 (= (list!7262 lt!615071) (Cons!18241 (h!23642 tokens!457) Nil!18241)))))

(declare-fun singleton!740 (Token!6000) BalanceConc!12110)

(assert (=> d!498723 (= lt!615071 (singleton!740 (h!23642 tokens!457)))))

(assert (=> d!498723 (= (singletonSeq!1707 (h!23642 tokens!457)) lt!615071)))

(declare-fun b!1653312 () Bool)

(declare-fun isBalanced!1866 (Conc!6083) Bool)

(assert (=> b!1653312 (= e!1060181 (isBalanced!1866 (c!268843 lt!615071)))))

(assert (= (and d!498723 res!741152) b!1653312))

(declare-fun m!2005237 () Bool)

(assert (=> d!498723 m!2005237))

(declare-fun m!2005239 () Bool)

(assert (=> d!498723 m!2005239))

(declare-fun m!2005241 () Bool)

(assert (=> b!1653312 m!2005241))

(assert (=> b!1652730 d!498723))

(declare-fun d!498725 () Bool)

(declare-fun res!741157 () Bool)

(declare-fun e!1060184 () Bool)

(assert (=> d!498725 (=> (not res!741157) (not e!1060184))))

(assert (=> d!498725 (= res!741157 (not (isEmpty!11273 (originalCharacters!4031 (h!23642 tokens!457)))))))

(assert (=> d!498725 (= (inv!23601 (h!23642 tokens!457)) e!1060184)))

(declare-fun b!1653317 () Bool)

(declare-fun res!741158 () Bool)

(assert (=> b!1653317 (=> (not res!741158) (not e!1060184))))

(assert (=> b!1653317 (= res!741158 (= (originalCharacters!4031 (h!23642 tokens!457)) (list!7261 (dynLambda!8183 (toChars!4527 (transformation!3217 (rule!5081 (h!23642 tokens!457)))) (value!101357 (h!23642 tokens!457))))))))

(declare-fun b!1653318 () Bool)

(assert (=> b!1653318 (= e!1060184 (= (size!14520 (h!23642 tokens!457)) (size!14525 (originalCharacters!4031 (h!23642 tokens!457)))))))

(assert (= (and d!498725 res!741157) b!1653317))

(assert (= (and b!1653317 res!741158) b!1653318))

(declare-fun b_lambda!51937 () Bool)

(assert (=> (not b_lambda!51937) (not b!1653317)))

(declare-fun t!151089 () Bool)

(declare-fun tb!94683 () Bool)

(assert (=> (and b!1652747 (= (toChars!4527 (transformation!3217 (h!23643 rules!1846))) (toChars!4527 (transformation!3217 (rule!5081 (h!23642 tokens!457))))) t!151089) tb!94683))

(declare-fun b!1653319 () Bool)

(declare-fun e!1060185 () Bool)

(declare-fun tp!478148 () Bool)

(assert (=> b!1653319 (= e!1060185 (and (inv!23604 (c!268841 (dynLambda!8183 (toChars!4527 (transformation!3217 (rule!5081 (h!23642 tokens!457)))) (value!101357 (h!23642 tokens!457))))) tp!478148))))

(declare-fun result!114386 () Bool)

(assert (=> tb!94683 (= result!114386 (and (inv!23605 (dynLambda!8183 (toChars!4527 (transformation!3217 (rule!5081 (h!23642 tokens!457)))) (value!101357 (h!23642 tokens!457)))) e!1060185))))

(assert (= tb!94683 b!1653319))

(declare-fun m!2005243 () Bool)

(assert (=> b!1653319 m!2005243))

(declare-fun m!2005245 () Bool)

(assert (=> tb!94683 m!2005245))

(assert (=> b!1653317 t!151089))

(declare-fun b_and!117389 () Bool)

(assert (= b_and!117381 (and (=> t!151089 result!114386) b_and!117389)))

(declare-fun t!151091 () Bool)

(declare-fun tb!94685 () Bool)

(assert (=> (and b!1652745 (= (toChars!4527 (transformation!3217 (rule!5081 (h!23642 tokens!457)))) (toChars!4527 (transformation!3217 (rule!5081 (h!23642 tokens!457))))) t!151091) tb!94685))

(declare-fun result!114388 () Bool)

(assert (= result!114388 result!114386))

(assert (=> b!1653317 t!151091))

(declare-fun b_and!117391 () Bool)

(assert (= b_and!117383 (and (=> t!151091 result!114388) b_and!117391)))

(declare-fun m!2005247 () Bool)

(assert (=> d!498725 m!2005247))

(declare-fun m!2005249 () Bool)

(assert (=> b!1653317 m!2005249))

(assert (=> b!1653317 m!2005249))

(declare-fun m!2005251 () Bool)

(assert (=> b!1653317 m!2005251))

(declare-fun m!2005253 () Bool)

(assert (=> b!1653318 m!2005253))

(assert (=> b!1652729 d!498725))

(declare-fun d!498727 () Bool)

(declare-fun c!268964 () Bool)

(assert (=> d!498727 (= c!268964 (isEmpty!11273 (++!4940 lt!614211 lt!614225)))))

(declare-fun e!1060186 () Bool)

(assert (=> d!498727 (= (prefixMatch!462 lt!614229 (++!4940 lt!614211 lt!614225)) e!1060186)))

(declare-fun b!1653320 () Bool)

(assert (=> b!1653320 (= e!1060186 (not (lostCause!462 lt!614229)))))

(declare-fun b!1653321 () Bool)

(assert (=> b!1653321 (= e!1060186 (prefixMatch!462 (derivativeStep!1112 lt!614229 (head!3649 (++!4940 lt!614211 lt!614225))) (tail!2449 (++!4940 lt!614211 lt!614225))))))

(assert (= (and d!498727 c!268964) b!1653320))

(assert (= (and d!498727 (not c!268964)) b!1653321))

(assert (=> d!498727 m!2004185))

(declare-fun m!2005255 () Bool)

(assert (=> d!498727 m!2005255))

(assert (=> b!1653320 m!2004855))

(assert (=> b!1653321 m!2004185))

(declare-fun m!2005257 () Bool)

(assert (=> b!1653321 m!2005257))

(assert (=> b!1653321 m!2005257))

(declare-fun m!2005259 () Bool)

(assert (=> b!1653321 m!2005259))

(assert (=> b!1653321 m!2004185))

(declare-fun m!2005261 () Bool)

(assert (=> b!1653321 m!2005261))

(assert (=> b!1653321 m!2005259))

(assert (=> b!1653321 m!2005261))

(declare-fun m!2005263 () Bool)

(assert (=> b!1653321 m!2005263))

(assert (=> b!1652736 d!498727))

(declare-fun b!1653324 () Bool)

(declare-fun res!741160 () Bool)

(declare-fun e!1060187 () Bool)

(assert (=> b!1653324 (=> (not res!741160) (not e!1060187))))

(declare-fun lt!615072 () List!18310)

(assert (=> b!1653324 (= res!741160 (= (size!14525 lt!615072) (+ (size!14525 lt!614211) (size!14525 lt!614225))))))

(declare-fun b!1653323 () Bool)

(declare-fun e!1060188 () List!18310)

(assert (=> b!1653323 (= e!1060188 (Cons!18240 (h!23641 lt!614211) (++!4940 (t!151063 lt!614211) lt!614225)))))

(declare-fun d!498729 () Bool)

(assert (=> d!498729 e!1060187))

(declare-fun res!741159 () Bool)

(assert (=> d!498729 (=> (not res!741159) (not e!1060187))))

(assert (=> d!498729 (= res!741159 (= (content!2537 lt!615072) ((_ map or) (content!2537 lt!614211) (content!2537 lt!614225))))))

(assert (=> d!498729 (= lt!615072 e!1060188)))

(declare-fun c!268965 () Bool)

(assert (=> d!498729 (= c!268965 ((_ is Nil!18240) lt!614211))))

(assert (=> d!498729 (= (++!4940 lt!614211 lt!614225) lt!615072)))

(declare-fun b!1653325 () Bool)

(assert (=> b!1653325 (= e!1060187 (or (not (= lt!614225 Nil!18240)) (= lt!615072 lt!614211)))))

(declare-fun b!1653322 () Bool)

(assert (=> b!1653322 (= e!1060188 lt!614225)))

(assert (= (and d!498729 c!268965) b!1653322))

(assert (= (and d!498729 (not c!268965)) b!1653323))

(assert (= (and d!498729 res!741159) b!1653324))

(assert (= (and b!1653324 res!741160) b!1653325))

(declare-fun m!2005265 () Bool)

(assert (=> b!1653324 m!2005265))

(assert (=> b!1653324 m!2004867))

(declare-fun m!2005267 () Bool)

(assert (=> b!1653324 m!2005267))

(declare-fun m!2005269 () Bool)

(assert (=> b!1653323 m!2005269))

(declare-fun m!2005271 () Bool)

(assert (=> d!498729 m!2005271))

(assert (=> d!498729 m!2004875))

(declare-fun m!2005273 () Bool)

(assert (=> d!498729 m!2005273))

(assert (=> b!1652736 d!498729))

(declare-fun d!498731 () Bool)

(assert (=> d!498731 (= (list!7261 lt!614208) (list!7265 (c!268841 lt!614208)))))

(declare-fun bs!396689 () Bool)

(assert (= bs!396689 d!498731))

(declare-fun m!2005275 () Bool)

(assert (=> bs!396689 m!2005275))

(assert (=> b!1652736 d!498731))

(declare-fun d!498733 () Bool)

(declare-fun lt!615075 () Bool)

(declare-fun isEmpty!11284 (List!18311) Bool)

(assert (=> d!498733 (= lt!615075 (isEmpty!11284 (list!7262 (_1!10369 (lex!1330 thiss!17113 rules!1846 (seqFromList!2173 lt!614211))))))))

(declare-fun isEmpty!11285 (Conc!6083) Bool)

(assert (=> d!498733 (= lt!615075 (isEmpty!11285 (c!268843 (_1!10369 (lex!1330 thiss!17113 rules!1846 (seqFromList!2173 lt!614211))))))))

(assert (=> d!498733 (= (isEmpty!11274 (_1!10369 (lex!1330 thiss!17113 rules!1846 (seqFromList!2173 lt!614211)))) lt!615075)))

(declare-fun bs!396690 () Bool)

(assert (= bs!396690 d!498733))

(assert (=> bs!396690 m!2004899))

(assert (=> bs!396690 m!2004899))

(declare-fun m!2005277 () Bool)

(assert (=> bs!396690 m!2005277))

(declare-fun m!2005279 () Bool)

(assert (=> bs!396690 m!2005279))

(assert (=> b!1652738 d!498733))

(declare-fun b!1653336 () Bool)

(declare-fun res!741168 () Bool)

(declare-fun e!1060196 () Bool)

(assert (=> b!1653336 (=> (not res!741168) (not e!1060196))))

(declare-fun lt!615078 () tuple2!17934)

(declare-datatypes ((tuple2!17938 0))(
  ( (tuple2!17939 (_1!10371 List!18311) (_2!10371 List!18310)) )
))
(declare-fun lexList!873 (LexerInterface!2846 List!18312 List!18310) tuple2!17938)

(assert (=> b!1653336 (= res!741168 (= (list!7262 (_1!10369 lt!615078)) (_1!10371 (lexList!873 thiss!17113 rules!1846 (list!7261 (seqFromList!2173 lt!614211))))))))

(declare-fun b!1653337 () Bool)

(declare-fun e!1060195 () Bool)

(assert (=> b!1653337 (= e!1060195 (= (_2!10369 lt!615078) (seqFromList!2173 lt!614211)))))

(declare-fun b!1653339 () Bool)

(declare-fun e!1060197 () Bool)

(assert (=> b!1653339 (= e!1060197 (not (isEmpty!11274 (_1!10369 lt!615078))))))

(declare-fun b!1653340 () Bool)

(assert (=> b!1653340 (= e!1060195 e!1060197)))

(declare-fun res!741167 () Bool)

(assert (=> b!1653340 (= res!741167 (< (size!14524 (_2!10369 lt!615078)) (size!14524 (seqFromList!2173 lt!614211))))))

(assert (=> b!1653340 (=> (not res!741167) (not e!1060197))))

(declare-fun d!498735 () Bool)

(assert (=> d!498735 e!1060196))

(declare-fun res!741169 () Bool)

(assert (=> d!498735 (=> (not res!741169) (not e!1060196))))

(assert (=> d!498735 (= res!741169 e!1060195)))

(declare-fun c!268968 () Bool)

(assert (=> d!498735 (= c!268968 (> (size!14526 (_1!10369 lt!615078)) 0))))

(declare-fun lexTailRecV2!596 (LexerInterface!2846 List!18312 BalanceConc!12108 BalanceConc!12108 BalanceConc!12108 BalanceConc!12110) tuple2!17934)

(assert (=> d!498735 (= lt!615078 (lexTailRecV2!596 thiss!17113 rules!1846 (seqFromList!2173 lt!614211) (BalanceConc!12109 Empty!6082) (seqFromList!2173 lt!614211) (BalanceConc!12111 Empty!6083)))))

(assert (=> d!498735 (= (lex!1330 thiss!17113 rules!1846 (seqFromList!2173 lt!614211)) lt!615078)))

(declare-fun b!1653338 () Bool)

(assert (=> b!1653338 (= e!1060196 (= (list!7261 (_2!10369 lt!615078)) (_2!10371 (lexList!873 thiss!17113 rules!1846 (list!7261 (seqFromList!2173 lt!614211))))))))

(assert (= (and d!498735 c!268968) b!1653340))

(assert (= (and d!498735 (not c!268968)) b!1653337))

(assert (= (and b!1653340 res!741167) b!1653339))

(assert (= (and d!498735 res!741169) b!1653336))

(assert (= (and b!1653336 res!741168) b!1653338))

(declare-fun m!2005281 () Bool)

(assert (=> b!1653336 m!2005281))

(assert (=> b!1653336 m!2004177))

(declare-fun m!2005283 () Bool)

(assert (=> b!1653336 m!2005283))

(assert (=> b!1653336 m!2005283))

(declare-fun m!2005285 () Bool)

(assert (=> b!1653336 m!2005285))

(declare-fun m!2005287 () Bool)

(assert (=> b!1653340 m!2005287))

(assert (=> b!1653340 m!2004177))

(declare-fun m!2005289 () Bool)

(assert (=> b!1653340 m!2005289))

(declare-fun m!2005291 () Bool)

(assert (=> b!1653338 m!2005291))

(assert (=> b!1653338 m!2004177))

(assert (=> b!1653338 m!2005283))

(assert (=> b!1653338 m!2005283))

(assert (=> b!1653338 m!2005285))

(declare-fun m!2005293 () Bool)

(assert (=> b!1653339 m!2005293))

(declare-fun m!2005295 () Bool)

(assert (=> d!498735 m!2005295))

(assert (=> d!498735 m!2004177))

(assert (=> d!498735 m!2004177))

(declare-fun m!2005297 () Bool)

(assert (=> d!498735 m!2005297))

(assert (=> b!1652738 d!498735))

(declare-fun d!498737 () Bool)

(assert (=> d!498737 (= (seqFromList!2173 lt!614211) (fromListB!970 lt!614211))))

(declare-fun bs!396691 () Bool)

(assert (= bs!396691 d!498737))

(declare-fun m!2005299 () Bool)

(assert (=> bs!396691 m!2005299))

(assert (=> b!1652738 d!498737))

(declare-fun d!498739 () Bool)

(declare-fun e!1060200 () Bool)

(assert (=> d!498739 e!1060200))

(declare-fun res!741172 () Bool)

(assert (=> d!498739 (=> (not res!741172) (not e!1060200))))

(declare-fun prepend!785 (Conc!6083 Token!6000) Conc!6083)

(assert (=> d!498739 (= res!741172 (isBalanced!1866 (prepend!785 (c!268843 (seqFromList!2174 (t!151064 (t!151064 tokens!457)))) (h!23642 (t!151064 tokens!457)))))))

(declare-fun lt!615081 () BalanceConc!12110)

(assert (=> d!498739 (= lt!615081 (BalanceConc!12111 (prepend!785 (c!268843 (seqFromList!2174 (t!151064 (t!151064 tokens!457)))) (h!23642 (t!151064 tokens!457)))))))

(assert (=> d!498739 (= (prepend!783 (seqFromList!2174 (t!151064 (t!151064 tokens!457))) (h!23642 (t!151064 tokens!457))) lt!615081)))

(declare-fun b!1653343 () Bool)

(assert (=> b!1653343 (= e!1060200 (= (list!7262 lt!615081) (Cons!18241 (h!23642 (t!151064 tokens!457)) (list!7262 (seqFromList!2174 (t!151064 (t!151064 tokens!457)))))))))

(assert (= (and d!498739 res!741172) b!1653343))

(declare-fun m!2005301 () Bool)

(assert (=> d!498739 m!2005301))

(assert (=> d!498739 m!2005301))

(declare-fun m!2005303 () Bool)

(assert (=> d!498739 m!2005303))

(declare-fun m!2005305 () Bool)

(assert (=> b!1653343 m!2005305))

(assert (=> b!1653343 m!2004131))

(declare-fun m!2005307 () Bool)

(assert (=> b!1653343 m!2005307))

(assert (=> b!1652737 d!498739))

(declare-fun d!498741 () Bool)

(declare-fun list!7266 (Conc!6083) List!18311)

(assert (=> d!498741 (= (list!7262 (prepend!783 (seqFromList!2174 (t!151064 (t!151064 tokens!457))) (h!23642 (t!151064 tokens!457)))) (list!7266 (c!268843 (prepend!783 (seqFromList!2174 (t!151064 (t!151064 tokens!457))) (h!23642 (t!151064 tokens!457))))))))

(declare-fun bs!396692 () Bool)

(assert (= bs!396692 d!498741))

(declare-fun m!2005309 () Bool)

(assert (=> bs!396692 m!2005309))

(assert (=> b!1652737 d!498741))

(declare-fun d!498743 () Bool)

(assert (=> d!498743 (= (list!7262 lt!614205) (list!7266 (c!268843 lt!614205)))))

(declare-fun bs!396693 () Bool)

(assert (= bs!396693 d!498743))

(declare-fun m!2005311 () Bool)

(assert (=> bs!396693 m!2005311))

(assert (=> b!1652737 d!498743))

(declare-fun d!498745 () Bool)

(declare-fun fromListB!971 (List!18311) BalanceConc!12110)

(assert (=> d!498745 (= (seqFromList!2174 (t!151064 (t!151064 tokens!457))) (fromListB!971 (t!151064 (t!151064 tokens!457))))))

(declare-fun bs!396694 () Bool)

(assert (= bs!396694 d!498745))

(declare-fun m!2005313 () Bool)

(assert (=> bs!396694 m!2005313))

(assert (=> b!1652737 d!498745))

(declare-fun d!498747 () Bool)

(assert (=> d!498747 (= (list!7262 (_1!10369 lt!614231)) (list!7262 (prepend!783 (seqFromList!2174 (t!151064 (t!151064 tokens!457))) (h!23642 (t!151064 tokens!457)))))))

(declare-fun lt!615084 () Unit!30447)

(declare-fun choose!9934 (Token!6000 List!18311 BalanceConc!12110) Unit!30447)

(assert (=> d!498747 (= lt!615084 (choose!9934 (h!23642 (t!151064 tokens!457)) (t!151064 (t!151064 tokens!457)) (_1!10369 lt!614231)))))

(declare-fun $colon$colon!372 (List!18311 Token!6000) List!18311)

(assert (=> d!498747 (= (list!7262 (_1!10369 lt!614231)) (list!7262 (seqFromList!2174 ($colon$colon!372 (t!151064 (t!151064 tokens!457)) (h!23642 (t!151064 tokens!457))))))))

(assert (=> d!498747 (= (seqFromListBHdTlConstructive!292 (h!23642 (t!151064 tokens!457)) (t!151064 (t!151064 tokens!457)) (_1!10369 lt!614231)) lt!615084)))

(declare-fun bs!396695 () Bool)

(assert (= bs!396695 d!498747))

(declare-fun m!2005315 () Bool)

(assert (=> bs!396695 m!2005315))

(assert (=> bs!396695 m!2004085))

(declare-fun m!2005317 () Bool)

(assert (=> bs!396695 m!2005317))

(declare-fun m!2005319 () Bool)

(assert (=> bs!396695 m!2005319))

(assert (=> bs!396695 m!2004133))

(assert (=> bs!396695 m!2004135))

(assert (=> bs!396695 m!2005319))

(declare-fun m!2005321 () Bool)

(assert (=> bs!396695 m!2005321))

(assert (=> bs!396695 m!2004131))

(assert (=> bs!396695 m!2005317))

(assert (=> bs!396695 m!2004131))

(assert (=> bs!396695 m!2004133))

(assert (=> b!1652737 d!498747))

(declare-fun d!498749 () Bool)

(assert (=> d!498749 (= (list!7262 (_1!10369 lt!614231)) (list!7266 (c!268843 (_1!10369 lt!614231))))))

(declare-fun bs!396696 () Bool)

(assert (= bs!396696 d!498749))

(declare-fun m!2005323 () Bool)

(assert (=> bs!396696 m!2005323))

(assert (=> b!1652734 d!498749))

(declare-fun d!498751 () Bool)

(declare-fun e!1060269 () Bool)

(assert (=> d!498751 e!1060269))

(declare-fun res!741208 () Bool)

(assert (=> d!498751 (=> (not res!741208) (not e!1060269))))

(assert (=> d!498751 (= res!741208 (= (list!7262 (_1!10369 (lex!1330 thiss!17113 rules!1846 (print!1377 thiss!17113 (seqFromList!2174 (t!151064 tokens!457)))))) (t!151064 tokens!457)))))

(declare-fun lt!615254 () Unit!30447)

(declare-fun e!1060270 () Unit!30447)

(assert (=> d!498751 (= lt!615254 e!1060270)))

(declare-fun c!268981 () Bool)

(assert (=> d!498751 (= c!268981 (or ((_ is Nil!18241) (t!151064 tokens!457)) ((_ is Nil!18241) (t!151064 (t!151064 tokens!457)))))))

(assert (=> d!498751 (not (isEmpty!11275 rules!1846))))

(assert (=> d!498751 (= (theoremInvertabilityWhenTokenListSeparable!289 thiss!17113 rules!1846 (t!151064 tokens!457)) lt!615254)))

(declare-fun b!1653449 () Bool)

(declare-fun Unit!30499 () Unit!30447)

(assert (=> b!1653449 (= e!1060270 Unit!30499)))

(declare-fun b!1653450 () Bool)

(declare-fun Unit!30500 () Unit!30447)

(assert (=> b!1653450 (= e!1060270 Unit!30500)))

(declare-fun lt!615250 () BalanceConc!12108)

(assert (=> b!1653450 (= lt!615250 (print!1377 thiss!17113 (seqFromList!2174 (t!151064 tokens!457))))))

(declare-fun lt!615257 () BalanceConc!12108)

(assert (=> b!1653450 (= lt!615257 (print!1377 thiss!17113 (seqFromList!2174 (t!151064 (t!151064 tokens!457)))))))

(declare-fun lt!615234 () tuple2!17934)

(assert (=> b!1653450 (= lt!615234 (lex!1330 thiss!17113 rules!1846 lt!615257))))

(declare-fun lt!615245 () List!18310)

(assert (=> b!1653450 (= lt!615245 (list!7261 (charsOf!1866 (h!23642 (t!151064 tokens!457)))))))

(declare-fun lt!615252 () List!18310)

(assert (=> b!1653450 (= lt!615252 (list!7261 lt!615257))))

(declare-fun lt!615248 () Unit!30447)

(assert (=> b!1653450 (= lt!615248 (lemmaConcatTwoListThenFirstIsPrefix!1000 lt!615245 lt!615252))))

(assert (=> b!1653450 (isPrefix!1475 lt!615245 (++!4940 lt!615245 lt!615252))))

(declare-fun lt!615235 () Unit!30447)

(assert (=> b!1653450 (= lt!615235 lt!615248)))

(declare-fun lt!615246 () Unit!30447)

(assert (=> b!1653450 (= lt!615246 (theoremInvertabilityWhenTokenListSeparable!289 thiss!17113 rules!1846 (t!151064 (t!151064 tokens!457))))))

(declare-fun lt!615251 () Unit!30447)

(assert (=> b!1653450 (= lt!615251 (seqFromListBHdTlConstructive!292 (h!23642 (t!151064 (t!151064 tokens!457))) (t!151064 (t!151064 (t!151064 tokens!457))) (_1!10369 lt!615234)))))

(assert (=> b!1653450 (= (list!7262 (_1!10369 lt!615234)) (list!7262 (prepend!783 (seqFromList!2174 (t!151064 (t!151064 (t!151064 tokens!457)))) (h!23642 (t!151064 (t!151064 tokens!457))))))))

(declare-fun lt!615253 () Unit!30447)

(assert (=> b!1653450 (= lt!615253 lt!615251)))

(declare-fun lt!615239 () Option!3471)

(assert (=> b!1653450 (= lt!615239 (maxPrefix!1408 thiss!17113 rules!1846 (list!7261 lt!615250)))))

(assert (=> b!1653450 (= (print!1377 thiss!17113 (singletonSeq!1707 (h!23642 (t!151064 tokens!457)))) (printTailRec!897 thiss!17113 (singletonSeq!1707 (h!23642 (t!151064 tokens!457))) 0 (BalanceConc!12109 Empty!6082)))))

(declare-fun lt!615244 () Unit!30447)

(declare-fun Unit!30501 () Unit!30447)

(assert (=> b!1653450 (= lt!615244 Unit!30501)))

(declare-fun lt!615255 () Unit!30447)

(assert (=> b!1653450 (= lt!615255 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!414 thiss!17113 rules!1846 (list!7261 (charsOf!1866 (h!23642 (t!151064 tokens!457)))) (list!7261 lt!615257)))))

(assert (=> b!1653450 (= (list!7261 (charsOf!1866 (h!23642 (t!151064 tokens!457)))) (originalCharacters!4031 (h!23642 (t!151064 tokens!457))))))

(declare-fun lt!615240 () Unit!30447)

(declare-fun Unit!30502 () Unit!30447)

(assert (=> b!1653450 (= lt!615240 Unit!30502)))

(assert (=> b!1653450 (= (list!7261 (singletonSeq!1706 (apply!4818 (charsOf!1866 (h!23642 (t!151064 (t!151064 tokens!457)))) 0))) (Cons!18240 (head!3649 (originalCharacters!4031 (h!23642 (t!151064 (t!151064 tokens!457))))) Nil!18240))))

(declare-fun lt!615242 () Unit!30447)

(declare-fun Unit!30503 () Unit!30447)

(assert (=> b!1653450 (= lt!615242 Unit!30503)))

(assert (=> b!1653450 (= (list!7261 (singletonSeq!1706 (apply!4818 (charsOf!1866 (h!23642 (t!151064 (t!151064 tokens!457)))) 0))) (Cons!18240 (head!3649 (list!7261 lt!615257)) Nil!18240))))

(declare-fun lt!615241 () Unit!30447)

(declare-fun Unit!30504 () Unit!30447)

(assert (=> b!1653450 (= lt!615241 Unit!30504)))

(assert (=> b!1653450 (= (list!7261 (singletonSeq!1706 (apply!4818 (charsOf!1866 (h!23642 (t!151064 (t!151064 tokens!457)))) 0))) (Cons!18240 (head!3648 lt!615257) Nil!18240))))

(declare-fun lt!615236 () Unit!30447)

(declare-fun Unit!30505 () Unit!30447)

(assert (=> b!1653450 (= lt!615236 Unit!30505)))

(assert (=> b!1653450 (isDefined!2827 (maxPrefix!1408 thiss!17113 rules!1846 (originalCharacters!4031 (h!23642 (t!151064 tokens!457)))))))

(declare-fun lt!615256 () Unit!30447)

(declare-fun Unit!30506 () Unit!30447)

(assert (=> b!1653450 (= lt!615256 Unit!30506)))

(assert (=> b!1653450 (isDefined!2827 (maxPrefix!1408 thiss!17113 rules!1846 (list!7261 (charsOf!1866 (h!23642 (t!151064 tokens!457))))))))

(declare-fun lt!615247 () Unit!30447)

(declare-fun Unit!30507 () Unit!30447)

(assert (=> b!1653450 (= lt!615247 Unit!30507)))

(declare-fun lt!615238 () Unit!30447)

(declare-fun Unit!30508 () Unit!30447)

(assert (=> b!1653450 (= lt!615238 Unit!30508)))

(assert (=> b!1653450 (= (_1!10367 (get!5314 (maxPrefix!1408 thiss!17113 rules!1846 (list!7261 (charsOf!1866 (h!23642 (t!151064 tokens!457))))))) (h!23642 (t!151064 tokens!457)))))

(declare-fun lt!615237 () Unit!30447)

(declare-fun Unit!30509 () Unit!30447)

(assert (=> b!1653450 (= lt!615237 Unit!30509)))

(assert (=> b!1653450 (isEmpty!11273 (_2!10367 (get!5314 (maxPrefix!1408 thiss!17113 rules!1846 (list!7261 (charsOf!1866 (h!23642 (t!151064 tokens!457))))))))))

(declare-fun lt!615258 () Unit!30447)

(declare-fun Unit!30510 () Unit!30447)

(assert (=> b!1653450 (= lt!615258 Unit!30510)))

(assert (=> b!1653450 (matchR!2038 (regex!3217 (rule!5081 (h!23642 (t!151064 tokens!457)))) (list!7261 (charsOf!1866 (h!23642 (t!151064 tokens!457)))))))

(declare-fun lt!615243 () Unit!30447)

(declare-fun Unit!30511 () Unit!30447)

(assert (=> b!1653450 (= lt!615243 Unit!30511)))

(assert (=> b!1653450 (= (rule!5081 (h!23642 (t!151064 tokens!457))) (rule!5081 (h!23642 (t!151064 tokens!457))))))

(declare-fun lt!615249 () Unit!30447)

(declare-fun Unit!30512 () Unit!30447)

(assert (=> b!1653450 (= lt!615249 Unit!30512)))

(declare-fun lt!615233 () Unit!30447)

(assert (=> b!1653450 (= lt!615233 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!172 thiss!17113 rules!1846 (h!23642 (t!151064 tokens!457)) (rule!5081 (h!23642 (t!151064 tokens!457))) (list!7261 lt!615257)))))

(declare-fun b!1653451 () Bool)

(assert (=> b!1653451 (= e!1060269 (isEmpty!11281 (_2!10369 (lex!1330 thiss!17113 rules!1846 (print!1377 thiss!17113 (seqFromList!2174 (t!151064 tokens!457)))))))))

(assert (= (and d!498751 c!268981) b!1653449))

(assert (= (and d!498751 (not c!268981)) b!1653450))

(assert (= (and d!498751 res!741208) b!1653451))

(declare-fun m!2005525 () Bool)

(assert (=> d!498751 m!2005525))

(assert (=> d!498751 m!2004149))

(assert (=> d!498751 m!2004159))

(declare-fun m!2005527 () Bool)

(assert (=> d!498751 m!2005527))

(declare-fun m!2005529 () Bool)

(assert (=> d!498751 m!2005529))

(assert (=> d!498751 m!2004159))

(assert (=> d!498751 m!2005527))

(declare-fun m!2005531 () Bool)

(assert (=> b!1653450 m!2005531))

(declare-fun m!2005533 () Bool)

(assert (=> b!1653450 m!2005533))

(declare-fun m!2005535 () Bool)

(assert (=> b!1653450 m!2005535))

(declare-fun m!2005537 () Bool)

(assert (=> b!1653450 m!2005537))

(declare-fun m!2005539 () Bool)

(assert (=> b!1653450 m!2005539))

(declare-fun m!2005541 () Bool)

(assert (=> b!1653450 m!2005541))

(declare-fun m!2005543 () Bool)

(assert (=> b!1653450 m!2005543))

(assert (=> b!1653450 m!2005535))

(declare-fun m!2005545 () Bool)

(assert (=> b!1653450 m!2005545))

(declare-fun m!2005547 () Bool)

(assert (=> b!1653450 m!2005547))

(declare-fun m!2005549 () Bool)

(assert (=> b!1653450 m!2005549))

(assert (=> b!1653450 m!2004131))

(declare-fun m!2005551 () Bool)

(assert (=> b!1653450 m!2005551))

(assert (=> b!1653450 m!2005535))

(assert (=> b!1653450 m!2004131))

(declare-fun m!2005553 () Bool)

(assert (=> b!1653450 m!2005553))

(declare-fun m!2005555 () Bool)

(assert (=> b!1653450 m!2005555))

(assert (=> b!1653450 m!2004159))

(assert (=> b!1653450 m!2005527))

(declare-fun m!2005557 () Bool)

(assert (=> b!1653450 m!2005557))

(assert (=> b!1653450 m!2005531))

(declare-fun m!2005559 () Bool)

(assert (=> b!1653450 m!2005559))

(declare-fun m!2005561 () Bool)

(assert (=> b!1653450 m!2005561))

(assert (=> b!1653450 m!2005559))

(declare-fun m!2005563 () Bool)

(assert (=> b!1653450 m!2005563))

(declare-fun m!2005565 () Bool)

(assert (=> b!1653450 m!2005565))

(declare-fun m!2005567 () Bool)

(assert (=> b!1653450 m!2005567))

(assert (=> b!1653450 m!2004733))

(assert (=> b!1653450 m!2005535))

(declare-fun m!2005569 () Bool)

(assert (=> b!1653450 m!2005569))

(assert (=> b!1653450 m!2005539))

(declare-fun m!2005571 () Bool)

(assert (=> b!1653450 m!2005571))

(assert (=> b!1653450 m!2004733))

(assert (=> b!1653450 m!2005565))

(assert (=> b!1653450 m!2004733))

(declare-fun m!2005573 () Bool)

(assert (=> b!1653450 m!2005573))

(declare-fun m!2005575 () Bool)

(assert (=> b!1653450 m!2005575))

(assert (=> b!1653450 m!2005565))

(declare-fun m!2005577 () Bool)

(assert (=> b!1653450 m!2005577))

(assert (=> b!1653450 m!2005547))

(declare-fun m!2005579 () Bool)

(assert (=> b!1653450 m!2005579))

(declare-fun m!2005581 () Bool)

(assert (=> b!1653450 m!2005581))

(declare-fun m!2005583 () Bool)

(assert (=> b!1653450 m!2005583))

(assert (=> b!1653450 m!2004159))

(assert (=> b!1653450 m!2005581))

(declare-fun m!2005585 () Bool)

(assert (=> b!1653450 m!2005585))

(declare-fun m!2005587 () Bool)

(assert (=> b!1653450 m!2005587))

(declare-fun m!2005589 () Bool)

(assert (=> b!1653450 m!2005589))

(assert (=> b!1653450 m!2005587))

(assert (=> b!1653450 m!2005579))

(assert (=> b!1653450 m!2005559))

(declare-fun m!2005591 () Bool)

(assert (=> b!1653450 m!2005591))

(assert (=> b!1653450 m!2005549))

(declare-fun m!2005593 () Bool)

(assert (=> b!1653450 m!2005593))

(assert (=> b!1653450 m!2004107))

(assert (=> b!1653450 m!2004733))

(assert (=> b!1653450 m!2005543))

(declare-fun m!2005595 () Bool)

(assert (=> b!1653450 m!2005595))

(assert (=> b!1653450 m!2004107))

(assert (=> b!1653451 m!2004159))

(assert (=> b!1653451 m!2004159))

(assert (=> b!1653451 m!2005527))

(assert (=> b!1653451 m!2005527))

(assert (=> b!1653451 m!2005529))

(declare-fun m!2005597 () Bool)

(assert (=> b!1653451 m!2005597))

(assert (=> b!1652734 d!498751))

(declare-fun b!1653462 () Bool)

(declare-fun e!1060277 () Bool)

(assert (=> b!1653462 (= e!1060277 (isPrefix!1475 (tail!2449 lt!614211) (tail!2449 lt!614219)))))

(declare-fun b!1653463 () Bool)

(declare-fun e!1060279 () Bool)

(assert (=> b!1653463 (= e!1060279 (>= (size!14525 lt!614219) (size!14525 lt!614211)))))

(declare-fun b!1653460 () Bool)

(declare-fun e!1060278 () Bool)

(assert (=> b!1653460 (= e!1060278 e!1060277)))

(declare-fun res!741220 () Bool)

(assert (=> b!1653460 (=> (not res!741220) (not e!1060277))))

(assert (=> b!1653460 (= res!741220 (not ((_ is Nil!18240) lt!614219)))))

(declare-fun d!498777 () Bool)

(assert (=> d!498777 e!1060279))

(declare-fun res!741219 () Bool)

(assert (=> d!498777 (=> res!741219 e!1060279)))

(declare-fun lt!615261 () Bool)

(assert (=> d!498777 (= res!741219 (not lt!615261))))

(assert (=> d!498777 (= lt!615261 e!1060278)))

(declare-fun res!741218 () Bool)

(assert (=> d!498777 (=> res!741218 e!1060278)))

(assert (=> d!498777 (= res!741218 ((_ is Nil!18240) lt!614211))))

(assert (=> d!498777 (= (isPrefix!1475 lt!614211 lt!614219) lt!615261)))

(declare-fun b!1653461 () Bool)

(declare-fun res!741217 () Bool)

(assert (=> b!1653461 (=> (not res!741217) (not e!1060277))))

(assert (=> b!1653461 (= res!741217 (= (head!3649 lt!614211) (head!3649 lt!614219)))))

(assert (= (and d!498777 (not res!741218)) b!1653460))

(assert (= (and b!1653460 res!741220) b!1653461))

(assert (= (and b!1653461 res!741217) b!1653462))

(assert (= (and d!498777 (not res!741219)) b!1653463))

(assert (=> b!1653462 m!2004765))

(declare-fun m!2005599 () Bool)

(assert (=> b!1653462 m!2005599))

(assert (=> b!1653462 m!2004765))

(assert (=> b!1653462 m!2005599))

(declare-fun m!2005601 () Bool)

(assert (=> b!1653462 m!2005601))

(declare-fun m!2005603 () Bool)

(assert (=> b!1653463 m!2005603))

(assert (=> b!1653463 m!2004867))

(assert (=> b!1653461 m!2004769))

(declare-fun m!2005605 () Bool)

(assert (=> b!1653461 m!2005605))

(assert (=> b!1652734 d!498777))

(declare-fun d!498779 () Bool)

(assert (=> d!498779 (isPrefix!1475 lt!614211 (++!4940 lt!614211 lt!614212))))

(declare-fun lt!615264 () Unit!30447)

(declare-fun choose!9935 (List!18310 List!18310) Unit!30447)

(assert (=> d!498779 (= lt!615264 (choose!9935 lt!614211 lt!614212))))

(assert (=> d!498779 (= (lemmaConcatTwoListThenFirstIsPrefix!1000 lt!614211 lt!614212) lt!615264)))

(declare-fun bs!396700 () Bool)

(assert (= bs!396700 d!498779))

(assert (=> bs!396700 m!2004157))

(assert (=> bs!396700 m!2004157))

(declare-fun m!2005607 () Bool)

(assert (=> bs!396700 m!2005607))

(declare-fun m!2005609 () Bool)

(assert (=> bs!396700 m!2005609))

(assert (=> b!1652734 d!498779))

(declare-fun d!498781 () Bool)

(assert (=> d!498781 (= (isDefined!2827 (maxPrefix!1408 thiss!17113 rules!1846 (originalCharacters!4031 (h!23642 tokens!457)))) (not (isEmpty!11282 (maxPrefix!1408 thiss!17113 rules!1846 (originalCharacters!4031 (h!23642 tokens!457))))))))

(declare-fun bs!396701 () Bool)

(assert (= bs!396701 d!498781))

(assert (=> bs!396701 m!2004113))

(declare-fun m!2005611 () Bool)

(assert (=> bs!396701 m!2005611))

(assert (=> b!1652733 d!498781))

(declare-fun d!498783 () Bool)

(assert (=> d!498783 (= (get!5314 lt!614216) (v!24649 lt!614216))))

(assert (=> b!1652733 d!498783))

(declare-fun d!498785 () Bool)

(declare-fun c!268982 () Bool)

(assert (=> d!498785 (= c!268982 (isEmpty!11273 (++!4940 (originalCharacters!4031 (h!23642 tokens!457)) lt!614220)))))

(declare-fun e!1060280 () Bool)

(assert (=> d!498785 (= (prefixMatch!462 lt!614229 (++!4940 (originalCharacters!4031 (h!23642 tokens!457)) lt!614220)) e!1060280)))

(declare-fun b!1653464 () Bool)

(assert (=> b!1653464 (= e!1060280 (not (lostCause!462 lt!614229)))))

(declare-fun b!1653465 () Bool)

(assert (=> b!1653465 (= e!1060280 (prefixMatch!462 (derivativeStep!1112 lt!614229 (head!3649 (++!4940 (originalCharacters!4031 (h!23642 tokens!457)) lt!614220))) (tail!2449 (++!4940 (originalCharacters!4031 (h!23642 tokens!457)) lt!614220))))))

(assert (= (and d!498785 c!268982) b!1653464))

(assert (= (and d!498785 (not c!268982)) b!1653465))

(assert (=> d!498785 m!2004111))

(declare-fun m!2005613 () Bool)

(assert (=> d!498785 m!2005613))

(assert (=> b!1653464 m!2004855))

(assert (=> b!1653465 m!2004111))

(declare-fun m!2005615 () Bool)

(assert (=> b!1653465 m!2005615))

(assert (=> b!1653465 m!2005615))

(declare-fun m!2005617 () Bool)

(assert (=> b!1653465 m!2005617))

(assert (=> b!1653465 m!2004111))

(declare-fun m!2005619 () Bool)

(assert (=> b!1653465 m!2005619))

(assert (=> b!1653465 m!2005617))

(assert (=> b!1653465 m!2005619))

(declare-fun m!2005621 () Bool)

(assert (=> b!1653465 m!2005621))

(assert (=> b!1652733 d!498785))

(declare-fun d!498787 () Bool)

(assert (=> d!498787 (= (isDefined!2827 lt!614216) (not (isEmpty!11282 lt!614216)))))

(declare-fun bs!396702 () Bool)

(assert (= bs!396702 d!498787))

(declare-fun m!2005623 () Bool)

(assert (=> bs!396702 m!2005623))

(assert (=> b!1652733 d!498787))

(declare-fun b!1653466 () Bool)

(declare-fun e!1060282 () Bool)

(declare-fun lt!615269 () Option!3471)

(assert (=> b!1653466 (= e!1060282 (contains!3182 rules!1846 (rule!5081 (_1!10367 (get!5314 lt!615269)))))))

(declare-fun b!1653467 () Bool)

(declare-fun res!741224 () Bool)

(assert (=> b!1653467 (=> (not res!741224) (not e!1060282))))

(assert (=> b!1653467 (= res!741224 (< (size!14525 (_2!10367 (get!5314 lt!615269))) (size!14525 (originalCharacters!4031 (h!23642 tokens!457)))))))

(declare-fun b!1653468 () Bool)

(declare-fun e!1060281 () Option!3471)

(declare-fun call!106057 () Option!3471)

(assert (=> b!1653468 (= e!1060281 call!106057)))

(declare-fun b!1653469 () Bool)

(declare-fun res!741225 () Bool)

(assert (=> b!1653469 (=> (not res!741225) (not e!1060282))))

(assert (=> b!1653469 (= res!741225 (= (value!101357 (_1!10367 (get!5314 lt!615269))) (apply!4822 (transformation!3217 (rule!5081 (_1!10367 (get!5314 lt!615269)))) (seqFromList!2173 (originalCharacters!4031 (_1!10367 (get!5314 lt!615269)))))))))

(declare-fun b!1653471 () Bool)

(declare-fun res!741221 () Bool)

(assert (=> b!1653471 (=> (not res!741221) (not e!1060282))))

(assert (=> b!1653471 (= res!741221 (= (list!7261 (charsOf!1866 (_1!10367 (get!5314 lt!615269)))) (originalCharacters!4031 (_1!10367 (get!5314 lt!615269)))))))

(declare-fun b!1653472 () Bool)

(declare-fun e!1060283 () Bool)

(assert (=> b!1653472 (= e!1060283 e!1060282)))

(declare-fun res!741222 () Bool)

(assert (=> b!1653472 (=> (not res!741222) (not e!1060282))))

(assert (=> b!1653472 (= res!741222 (isDefined!2827 lt!615269))))

(declare-fun b!1653473 () Bool)

(declare-fun res!741226 () Bool)

(assert (=> b!1653473 (=> (not res!741226) (not e!1060282))))

(assert (=> b!1653473 (= res!741226 (= (++!4940 (list!7261 (charsOf!1866 (_1!10367 (get!5314 lt!615269)))) (_2!10367 (get!5314 lt!615269))) (originalCharacters!4031 (h!23642 tokens!457))))))

(declare-fun bm!106052 () Bool)

(assert (=> bm!106052 (= call!106057 (maxPrefixOneRule!813 thiss!17113 (h!23643 rules!1846) (originalCharacters!4031 (h!23642 tokens!457))))))

(declare-fun b!1653474 () Bool)

(declare-fun res!741227 () Bool)

(assert (=> b!1653474 (=> (not res!741227) (not e!1060282))))

(assert (=> b!1653474 (= res!741227 (matchR!2038 (regex!3217 (rule!5081 (_1!10367 (get!5314 lt!615269)))) (list!7261 (charsOf!1866 (_1!10367 (get!5314 lt!615269))))))))

(declare-fun b!1653470 () Bool)

(declare-fun lt!615265 () Option!3471)

(declare-fun lt!615267 () Option!3471)

(assert (=> b!1653470 (= e!1060281 (ite (and ((_ is None!3470) lt!615265) ((_ is None!3470) lt!615267)) None!3470 (ite ((_ is None!3470) lt!615267) lt!615265 (ite ((_ is None!3470) lt!615265) lt!615267 (ite (>= (size!14520 (_1!10367 (v!24649 lt!615265))) (size!14520 (_1!10367 (v!24649 lt!615267)))) lt!615265 lt!615267)))))))

(assert (=> b!1653470 (= lt!615265 call!106057)))

(assert (=> b!1653470 (= lt!615267 (maxPrefix!1408 thiss!17113 (t!151065 rules!1846) (originalCharacters!4031 (h!23642 tokens!457))))))

(declare-fun d!498789 () Bool)

(assert (=> d!498789 e!1060283))

(declare-fun res!741223 () Bool)

(assert (=> d!498789 (=> res!741223 e!1060283)))

(assert (=> d!498789 (= res!741223 (isEmpty!11282 lt!615269))))

(assert (=> d!498789 (= lt!615269 e!1060281)))

(declare-fun c!268983 () Bool)

(assert (=> d!498789 (= c!268983 (and ((_ is Cons!18242) rules!1846) ((_ is Nil!18242) (t!151065 rules!1846))))))

(declare-fun lt!615266 () Unit!30447)

(declare-fun lt!615268 () Unit!30447)

(assert (=> d!498789 (= lt!615266 lt!615268)))

(assert (=> d!498789 (isPrefix!1475 (originalCharacters!4031 (h!23642 tokens!457)) (originalCharacters!4031 (h!23642 tokens!457)))))

(assert (=> d!498789 (= lt!615268 (lemmaIsPrefixRefl!998 (originalCharacters!4031 (h!23642 tokens!457)) (originalCharacters!4031 (h!23642 tokens!457))))))

(assert (=> d!498789 (rulesValidInductive!1020 thiss!17113 rules!1846)))

(assert (=> d!498789 (= (maxPrefix!1408 thiss!17113 rules!1846 (originalCharacters!4031 (h!23642 tokens!457))) lt!615269)))

(assert (= (and d!498789 c!268983) b!1653468))

(assert (= (and d!498789 (not c!268983)) b!1653470))

(assert (= (or b!1653468 b!1653470) bm!106052))

(assert (= (and d!498789 (not res!741223)) b!1653472))

(assert (= (and b!1653472 res!741222) b!1653471))

(assert (= (and b!1653471 res!741221) b!1653467))

(assert (= (and b!1653467 res!741224) b!1653473))

(assert (= (and b!1653473 res!741226) b!1653469))

(assert (= (and b!1653469 res!741225) b!1653474))

(assert (= (and b!1653474 res!741227) b!1653466))

(declare-fun m!2005625 () Bool)

(assert (=> b!1653471 m!2005625))

(declare-fun m!2005627 () Bool)

(assert (=> b!1653471 m!2005627))

(assert (=> b!1653471 m!2005627))

(declare-fun m!2005629 () Bool)

(assert (=> b!1653471 m!2005629))

(assert (=> b!1653469 m!2005625))

(declare-fun m!2005631 () Bool)

(assert (=> b!1653469 m!2005631))

(assert (=> b!1653469 m!2005631))

(declare-fun m!2005633 () Bool)

(assert (=> b!1653469 m!2005633))

(declare-fun m!2005635 () Bool)

(assert (=> b!1653470 m!2005635))

(declare-fun m!2005637 () Bool)

(assert (=> b!1653472 m!2005637))

(assert (=> b!1653467 m!2005625))

(declare-fun m!2005639 () Bool)

(assert (=> b!1653467 m!2005639))

(assert (=> b!1653467 m!2005253))

(assert (=> b!1653466 m!2005625))

(declare-fun m!2005641 () Bool)

(assert (=> b!1653466 m!2005641))

(assert (=> b!1653474 m!2005625))

(assert (=> b!1653474 m!2005627))

(assert (=> b!1653474 m!2005627))

(assert (=> b!1653474 m!2005629))

(assert (=> b!1653474 m!2005629))

(declare-fun m!2005643 () Bool)

(assert (=> b!1653474 m!2005643))

(declare-fun m!2005645 () Bool)

(assert (=> d!498789 m!2005645))

(declare-fun m!2005647 () Bool)

(assert (=> d!498789 m!2005647))

(declare-fun m!2005649 () Bool)

(assert (=> d!498789 m!2005649))

(assert (=> d!498789 m!2005055))

(declare-fun m!2005651 () Bool)

(assert (=> bm!106052 m!2005651))

(assert (=> b!1653473 m!2005625))

(assert (=> b!1653473 m!2005627))

(assert (=> b!1653473 m!2005627))

(assert (=> b!1653473 m!2005629))

(assert (=> b!1653473 m!2005629))

(declare-fun m!2005653 () Bool)

(assert (=> b!1653473 m!2005653))

(assert (=> b!1652733 d!498789))

(declare-fun b!1653475 () Bool)

(declare-fun e!1060285 () Bool)

(declare-fun lt!615274 () Option!3471)

(assert (=> b!1653475 (= e!1060285 (contains!3182 rules!1846 (rule!5081 (_1!10367 (get!5314 lt!615274)))))))

(declare-fun b!1653476 () Bool)

(declare-fun res!741231 () Bool)

(assert (=> b!1653476 (=> (not res!741231) (not e!1060285))))

(assert (=> b!1653476 (= res!741231 (< (size!14525 (_2!10367 (get!5314 lt!615274))) (size!14525 lt!614211)))))

(declare-fun b!1653477 () Bool)

(declare-fun e!1060284 () Option!3471)

(declare-fun call!106058 () Option!3471)

(assert (=> b!1653477 (= e!1060284 call!106058)))

(declare-fun b!1653478 () Bool)

(declare-fun res!741232 () Bool)

(assert (=> b!1653478 (=> (not res!741232) (not e!1060285))))

(assert (=> b!1653478 (= res!741232 (= (value!101357 (_1!10367 (get!5314 lt!615274))) (apply!4822 (transformation!3217 (rule!5081 (_1!10367 (get!5314 lt!615274)))) (seqFromList!2173 (originalCharacters!4031 (_1!10367 (get!5314 lt!615274)))))))))

(declare-fun b!1653480 () Bool)

(declare-fun res!741228 () Bool)

(assert (=> b!1653480 (=> (not res!741228) (not e!1060285))))

(assert (=> b!1653480 (= res!741228 (= (list!7261 (charsOf!1866 (_1!10367 (get!5314 lt!615274)))) (originalCharacters!4031 (_1!10367 (get!5314 lt!615274)))))))

(declare-fun b!1653481 () Bool)

(declare-fun e!1060286 () Bool)

(assert (=> b!1653481 (= e!1060286 e!1060285)))

(declare-fun res!741229 () Bool)

(assert (=> b!1653481 (=> (not res!741229) (not e!1060285))))

(assert (=> b!1653481 (= res!741229 (isDefined!2827 lt!615274))))

(declare-fun b!1653482 () Bool)

(declare-fun res!741233 () Bool)

(assert (=> b!1653482 (=> (not res!741233) (not e!1060285))))

(assert (=> b!1653482 (= res!741233 (= (++!4940 (list!7261 (charsOf!1866 (_1!10367 (get!5314 lt!615274)))) (_2!10367 (get!5314 lt!615274))) lt!614211))))

(declare-fun bm!106053 () Bool)

(assert (=> bm!106053 (= call!106058 (maxPrefixOneRule!813 thiss!17113 (h!23643 rules!1846) lt!614211))))

(declare-fun b!1653483 () Bool)

(declare-fun res!741234 () Bool)

(assert (=> b!1653483 (=> (not res!741234) (not e!1060285))))

(assert (=> b!1653483 (= res!741234 (matchR!2038 (regex!3217 (rule!5081 (_1!10367 (get!5314 lt!615274)))) (list!7261 (charsOf!1866 (_1!10367 (get!5314 lt!615274))))))))

(declare-fun b!1653479 () Bool)

(declare-fun lt!615270 () Option!3471)

(declare-fun lt!615272 () Option!3471)

(assert (=> b!1653479 (= e!1060284 (ite (and ((_ is None!3470) lt!615270) ((_ is None!3470) lt!615272)) None!3470 (ite ((_ is None!3470) lt!615272) lt!615270 (ite ((_ is None!3470) lt!615270) lt!615272 (ite (>= (size!14520 (_1!10367 (v!24649 lt!615270))) (size!14520 (_1!10367 (v!24649 lt!615272)))) lt!615270 lt!615272)))))))

(assert (=> b!1653479 (= lt!615270 call!106058)))

(assert (=> b!1653479 (= lt!615272 (maxPrefix!1408 thiss!17113 (t!151065 rules!1846) lt!614211))))

(declare-fun d!498791 () Bool)

(assert (=> d!498791 e!1060286))

(declare-fun res!741230 () Bool)

(assert (=> d!498791 (=> res!741230 e!1060286)))

(assert (=> d!498791 (= res!741230 (isEmpty!11282 lt!615274))))

(assert (=> d!498791 (= lt!615274 e!1060284)))

(declare-fun c!268984 () Bool)

(assert (=> d!498791 (= c!268984 (and ((_ is Cons!18242) rules!1846) ((_ is Nil!18242) (t!151065 rules!1846))))))

(declare-fun lt!615271 () Unit!30447)

(declare-fun lt!615273 () Unit!30447)

(assert (=> d!498791 (= lt!615271 lt!615273)))

(assert (=> d!498791 (isPrefix!1475 lt!614211 lt!614211)))

(assert (=> d!498791 (= lt!615273 (lemmaIsPrefixRefl!998 lt!614211 lt!614211))))

(assert (=> d!498791 (rulesValidInductive!1020 thiss!17113 rules!1846)))

(assert (=> d!498791 (= (maxPrefix!1408 thiss!17113 rules!1846 lt!614211) lt!615274)))

(assert (= (and d!498791 c!268984) b!1653477))

(assert (= (and d!498791 (not c!268984)) b!1653479))

(assert (= (or b!1653477 b!1653479) bm!106053))

(assert (= (and d!498791 (not res!741230)) b!1653481))

(assert (= (and b!1653481 res!741229) b!1653480))

(assert (= (and b!1653480 res!741228) b!1653476))

(assert (= (and b!1653476 res!741231) b!1653482))

(assert (= (and b!1653482 res!741233) b!1653478))

(assert (= (and b!1653478 res!741232) b!1653483))

(assert (= (and b!1653483 res!741234) b!1653475))

(declare-fun m!2005655 () Bool)

(assert (=> b!1653480 m!2005655))

(declare-fun m!2005657 () Bool)

(assert (=> b!1653480 m!2005657))

(assert (=> b!1653480 m!2005657))

(declare-fun m!2005659 () Bool)

(assert (=> b!1653480 m!2005659))

(assert (=> b!1653478 m!2005655))

(declare-fun m!2005661 () Bool)

(assert (=> b!1653478 m!2005661))

(assert (=> b!1653478 m!2005661))

(declare-fun m!2005663 () Bool)

(assert (=> b!1653478 m!2005663))

(declare-fun m!2005665 () Bool)

(assert (=> b!1653479 m!2005665))

(declare-fun m!2005667 () Bool)

(assert (=> b!1653481 m!2005667))

(assert (=> b!1653476 m!2005655))

(declare-fun m!2005669 () Bool)

(assert (=> b!1653476 m!2005669))

(assert (=> b!1653476 m!2004867))

(assert (=> b!1653475 m!2005655))

(declare-fun m!2005671 () Bool)

(assert (=> b!1653475 m!2005671))

(assert (=> b!1653483 m!2005655))

(assert (=> b!1653483 m!2005657))

(assert (=> b!1653483 m!2005657))

(assert (=> b!1653483 m!2005659))

(assert (=> b!1653483 m!2005659))

(declare-fun m!2005673 () Bool)

(assert (=> b!1653483 m!2005673))

(declare-fun m!2005675 () Bool)

(assert (=> d!498791 m!2005675))

(declare-fun m!2005677 () Bool)

(assert (=> d!498791 m!2005677))

(declare-fun m!2005679 () Bool)

(assert (=> d!498791 m!2005679))

(assert (=> d!498791 m!2005055))

(declare-fun m!2005681 () Bool)

(assert (=> bm!106053 m!2005681))

(assert (=> b!1653482 m!2005655))

(assert (=> b!1653482 m!2005657))

(assert (=> b!1653482 m!2005657))

(assert (=> b!1653482 m!2005659))

(assert (=> b!1653482 m!2005659))

(declare-fun m!2005683 () Bool)

(assert (=> b!1653482 m!2005683))

(assert (=> b!1652733 d!498791))

(declare-fun b!1653486 () Bool)

(declare-fun res!741236 () Bool)

(declare-fun e!1060287 () Bool)

(assert (=> b!1653486 (=> (not res!741236) (not e!1060287))))

(declare-fun lt!615275 () List!18310)

(assert (=> b!1653486 (= res!741236 (= (size!14525 lt!615275) (+ (size!14525 (originalCharacters!4031 (h!23642 tokens!457))) (size!14525 lt!614220))))))

(declare-fun b!1653485 () Bool)

(declare-fun e!1060288 () List!18310)

(assert (=> b!1653485 (= e!1060288 (Cons!18240 (h!23641 (originalCharacters!4031 (h!23642 tokens!457))) (++!4940 (t!151063 (originalCharacters!4031 (h!23642 tokens!457))) lt!614220)))))

(declare-fun d!498793 () Bool)

(assert (=> d!498793 e!1060287))

(declare-fun res!741235 () Bool)

(assert (=> d!498793 (=> (not res!741235) (not e!1060287))))

(assert (=> d!498793 (= res!741235 (= (content!2537 lt!615275) ((_ map or) (content!2537 (originalCharacters!4031 (h!23642 tokens!457))) (content!2537 lt!614220))))))

(assert (=> d!498793 (= lt!615275 e!1060288)))

(declare-fun c!268985 () Bool)

(assert (=> d!498793 (= c!268985 ((_ is Nil!18240) (originalCharacters!4031 (h!23642 tokens!457))))))

(assert (=> d!498793 (= (++!4940 (originalCharacters!4031 (h!23642 tokens!457)) lt!614220) lt!615275)))

(declare-fun b!1653487 () Bool)

(assert (=> b!1653487 (= e!1060287 (or (not (= lt!614220 Nil!18240)) (= lt!615275 (originalCharacters!4031 (h!23642 tokens!457)))))))

(declare-fun b!1653484 () Bool)

(assert (=> b!1653484 (= e!1060288 lt!614220)))

(assert (= (and d!498793 c!268985) b!1653484))

(assert (= (and d!498793 (not c!268985)) b!1653485))

(assert (= (and d!498793 res!741235) b!1653486))

(assert (= (and b!1653486 res!741236) b!1653487))

(declare-fun m!2005685 () Bool)

(assert (=> b!1653486 m!2005685))

(assert (=> b!1653486 m!2005253))

(assert (=> b!1653486 m!2004869))

(declare-fun m!2005687 () Bool)

(assert (=> b!1653485 m!2005687))

(declare-fun m!2005689 () Bool)

(assert (=> d!498793 m!2005689))

(declare-fun m!2005691 () Bool)

(assert (=> d!498793 m!2005691))

(assert (=> d!498793 m!2004877))

(assert (=> b!1652733 d!498793))

(declare-fun d!498795 () Bool)

(declare-fun lt!615276 () BalanceConc!12108)

(assert (=> d!498795 (= (list!7261 lt!615276) (printList!959 thiss!17113 (list!7262 (seqFromList!2174 tokens!457))))))

(assert (=> d!498795 (= lt!615276 (printTailRec!897 thiss!17113 (seqFromList!2174 tokens!457) 0 (BalanceConc!12109 Empty!6082)))))

(assert (=> d!498795 (= (print!1377 thiss!17113 (seqFromList!2174 tokens!457)) lt!615276)))

(declare-fun bs!396703 () Bool)

(assert (= bs!396703 d!498795))

(declare-fun m!2005693 () Bool)

(assert (=> bs!396703 m!2005693))

(assert (=> bs!396703 m!2004165))

(declare-fun m!2005695 () Bool)

(assert (=> bs!396703 m!2005695))

(assert (=> bs!396703 m!2005695))

(declare-fun m!2005697 () Bool)

(assert (=> bs!396703 m!2005697))

(assert (=> bs!396703 m!2004165))

(declare-fun m!2005699 () Bool)

(assert (=> bs!396703 m!2005699))

(assert (=> b!1652735 d!498795))

(declare-fun d!498797 () Bool)

(assert (=> d!498797 (= (list!7261 lt!614226) (list!7265 (c!268841 lt!614226)))))

(declare-fun bs!396704 () Bool)

(assert (= bs!396704 d!498797))

(declare-fun m!2005701 () Bool)

(assert (=> bs!396704 m!2005701))

(assert (=> b!1652735 d!498797))

(declare-fun b!1653488 () Bool)

(declare-fun res!741238 () Bool)

(declare-fun e!1060290 () Bool)

(assert (=> b!1653488 (=> (not res!741238) (not e!1060290))))

(declare-fun lt!615277 () tuple2!17934)

(assert (=> b!1653488 (= res!741238 (= (list!7262 (_1!10369 lt!615277)) (_1!10371 (lexList!873 thiss!17113 rules!1846 (list!7261 lt!614232)))))))

(declare-fun b!1653489 () Bool)

(declare-fun e!1060289 () Bool)

(assert (=> b!1653489 (= e!1060289 (= (_2!10369 lt!615277) lt!614232))))

(declare-fun b!1653491 () Bool)

(declare-fun e!1060291 () Bool)

(assert (=> b!1653491 (= e!1060291 (not (isEmpty!11274 (_1!10369 lt!615277))))))

(declare-fun b!1653492 () Bool)

(assert (=> b!1653492 (= e!1060289 e!1060291)))

(declare-fun res!741237 () Bool)

(assert (=> b!1653492 (= res!741237 (< (size!14524 (_2!10369 lt!615277)) (size!14524 lt!614232)))))

(assert (=> b!1653492 (=> (not res!741237) (not e!1060291))))

(declare-fun d!498799 () Bool)

(assert (=> d!498799 e!1060290))

(declare-fun res!741239 () Bool)

(assert (=> d!498799 (=> (not res!741239) (not e!1060290))))

(assert (=> d!498799 (= res!741239 e!1060289)))

(declare-fun c!268986 () Bool)

(assert (=> d!498799 (= c!268986 (> (size!14526 (_1!10369 lt!615277)) 0))))

(assert (=> d!498799 (= lt!615277 (lexTailRecV2!596 thiss!17113 rules!1846 lt!614232 (BalanceConc!12109 Empty!6082) lt!614232 (BalanceConc!12111 Empty!6083)))))

(assert (=> d!498799 (= (lex!1330 thiss!17113 rules!1846 lt!614232) lt!615277)))

(declare-fun b!1653490 () Bool)

(assert (=> b!1653490 (= e!1060290 (= (list!7261 (_2!10369 lt!615277)) (_2!10371 (lexList!873 thiss!17113 rules!1846 (list!7261 lt!614232)))))))

(assert (= (and d!498799 c!268986) b!1653492))

(assert (= (and d!498799 (not c!268986)) b!1653489))

(assert (= (and b!1653492 res!741237) b!1653491))

(assert (= (and d!498799 res!741239) b!1653488))

(assert (= (and b!1653488 res!741238) b!1653490))

(declare-fun m!2005703 () Bool)

(assert (=> b!1653488 m!2005703))

(assert (=> b!1653488 m!2004155))

(assert (=> b!1653488 m!2004155))

(declare-fun m!2005705 () Bool)

(assert (=> b!1653488 m!2005705))

(declare-fun m!2005707 () Bool)

(assert (=> b!1653492 m!2005707))

(declare-fun m!2005709 () Bool)

(assert (=> b!1653492 m!2005709))

(declare-fun m!2005711 () Bool)

(assert (=> b!1653490 m!2005711))

(assert (=> b!1653490 m!2004155))

(assert (=> b!1653490 m!2004155))

(assert (=> b!1653490 m!2005705))

(declare-fun m!2005713 () Bool)

(assert (=> b!1653491 m!2005713))

(declare-fun m!2005715 () Bool)

(assert (=> d!498799 m!2005715))

(declare-fun m!2005717 () Bool)

(assert (=> d!498799 m!2005717))

(assert (=> b!1652735 d!498799))

(declare-fun d!498801 () Bool)

(declare-fun lt!615278 () BalanceConc!12108)

(assert (=> d!498801 (= (list!7261 lt!615278) (printList!959 thiss!17113 (list!7262 lt!614205)))))

(assert (=> d!498801 (= lt!615278 (printTailRec!897 thiss!17113 lt!614205 0 (BalanceConc!12109 Empty!6082)))))

(assert (=> d!498801 (= (print!1377 thiss!17113 lt!614205) lt!615278)))

(declare-fun bs!396705 () Bool)

(assert (= bs!396705 d!498801))

(declare-fun m!2005719 () Bool)

(assert (=> bs!396705 m!2005719))

(assert (=> bs!396705 m!2004127))

(assert (=> bs!396705 m!2004127))

(declare-fun m!2005721 () Bool)

(assert (=> bs!396705 m!2005721))

(declare-fun m!2005723 () Bool)

(assert (=> bs!396705 m!2005723))

(assert (=> b!1652735 d!498801))

(declare-fun d!498803 () Bool)

(assert (=> d!498803 (= (seqFromList!2174 tokens!457) (fromListB!971 tokens!457))))

(declare-fun bs!396706 () Bool)

(assert (= bs!396706 d!498803))

(declare-fun m!2005725 () Bool)

(assert (=> bs!396706 m!2005725))

(assert (=> b!1652735 d!498803))

(declare-fun d!498805 () Bool)

(assert (=> d!498805 (= (list!7261 lt!614222) (list!7265 (c!268841 lt!614222)))))

(declare-fun bs!396707 () Bool)

(assert (= bs!396707 d!498805))

(declare-fun m!2005727 () Bool)

(assert (=> bs!396707 m!2005727))

(assert (=> b!1652735 d!498805))

(declare-fun d!498807 () Bool)

(declare-fun lt!615279 () BalanceConc!12108)

(assert (=> d!498807 (= (list!7261 lt!615279) (originalCharacters!4031 (h!23642 tokens!457)))))

(assert (=> d!498807 (= lt!615279 (dynLambda!8183 (toChars!4527 (transformation!3217 (rule!5081 (h!23642 tokens!457)))) (value!101357 (h!23642 tokens!457))))))

(assert (=> d!498807 (= (charsOf!1866 (h!23642 tokens!457)) lt!615279)))

(declare-fun b_lambda!51945 () Bool)

(assert (=> (not b_lambda!51945) (not d!498807)))

(assert (=> d!498807 t!151089))

(declare-fun b_and!117401 () Bool)

(assert (= b_and!117389 (and (=> t!151089 result!114386) b_and!117401)))

(assert (=> d!498807 t!151091))

(declare-fun b_and!117403 () Bool)

(assert (= b_and!117391 (and (=> t!151091 result!114388) b_and!117403)))

(declare-fun m!2005729 () Bool)

(assert (=> d!498807 m!2005729))

(assert (=> d!498807 m!2005249))

(assert (=> b!1652735 d!498807))

(declare-fun d!498809 () Bool)

(assert (=> d!498809 (= (seqFromList!2174 (t!151064 tokens!457)) (fromListB!971 (t!151064 tokens!457)))))

(declare-fun bs!396708 () Bool)

(assert (= bs!396708 d!498809))

(declare-fun m!2005731 () Bool)

(assert (=> bs!396708 m!2005731))

(assert (=> b!1652735 d!498809))

(declare-fun d!498811 () Bool)

(assert (=> d!498811 (= (list!7261 lt!614232) (list!7265 (c!268841 lt!614232)))))

(declare-fun bs!396709 () Bool)

(assert (= bs!396709 d!498811))

(declare-fun m!2005733 () Bool)

(assert (=> bs!396709 m!2005733))

(assert (=> b!1652735 d!498811))

(declare-fun b!1653495 () Bool)

(declare-fun res!741241 () Bool)

(declare-fun e!1060292 () Bool)

(assert (=> b!1653495 (=> (not res!741241) (not e!1060292))))

(declare-fun lt!615280 () List!18310)

(assert (=> b!1653495 (= res!741241 (= (size!14525 lt!615280) (+ (size!14525 lt!614211) (size!14525 lt!614212))))))

(declare-fun b!1653494 () Bool)

(declare-fun e!1060293 () List!18310)

(assert (=> b!1653494 (= e!1060293 (Cons!18240 (h!23641 lt!614211) (++!4940 (t!151063 lt!614211) lt!614212)))))

(declare-fun d!498813 () Bool)

(assert (=> d!498813 e!1060292))

(declare-fun res!741240 () Bool)

(assert (=> d!498813 (=> (not res!741240) (not e!1060292))))

(assert (=> d!498813 (= res!741240 (= (content!2537 lt!615280) ((_ map or) (content!2537 lt!614211) (content!2537 lt!614212))))))

(assert (=> d!498813 (= lt!615280 e!1060293)))

(declare-fun c!268987 () Bool)

(assert (=> d!498813 (= c!268987 ((_ is Nil!18240) lt!614211))))

(assert (=> d!498813 (= (++!4940 lt!614211 lt!614212) lt!615280)))

(declare-fun b!1653496 () Bool)

(assert (=> b!1653496 (= e!1060292 (or (not (= lt!614212 Nil!18240)) (= lt!615280 lt!614211)))))

(declare-fun b!1653493 () Bool)

(assert (=> b!1653493 (= e!1060293 lt!614212)))

(assert (= (and d!498813 c!268987) b!1653493))

(assert (= (and d!498813 (not c!268987)) b!1653494))

(assert (= (and d!498813 res!741240) b!1653495))

(assert (= (and b!1653495 res!741241) b!1653496))

(declare-fun m!2005735 () Bool)

(assert (=> b!1653495 m!2005735))

(assert (=> b!1653495 m!2004867))

(declare-fun m!2005737 () Bool)

(assert (=> b!1653495 m!2005737))

(declare-fun m!2005739 () Bool)

(assert (=> b!1653494 m!2005739))

(declare-fun m!2005741 () Bool)

(assert (=> d!498813 m!2005741))

(assert (=> d!498813 m!2004875))

(declare-fun m!2005743 () Bool)

(assert (=> d!498813 m!2005743))

(assert (=> b!1652735 d!498813))

(declare-fun b!1653507 () Bool)

(declare-fun b_free!44935 () Bool)

(declare-fun b_next!45639 () Bool)

(assert (=> b!1653507 (= b_free!44935 (not b_next!45639))))

(declare-fun tp!478210 () Bool)

(declare-fun b_and!117405 () Bool)

(assert (=> b!1653507 (= tp!478210 b_and!117405)))

(declare-fun b_free!44937 () Bool)

(declare-fun b_next!45641 () Bool)

(assert (=> b!1653507 (= b_free!44937 (not b_next!45641))))

(declare-fun tb!94695 () Bool)

(declare-fun t!151101 () Bool)

(assert (=> (and b!1653507 (= (toChars!4527 (transformation!3217 (h!23643 (t!151065 rules!1846)))) (toChars!4527 (transformation!3217 (rule!5081 (h!23642 (t!151064 tokens!457)))))) t!151101) tb!94695))

(declare-fun result!114408 () Bool)

(assert (= result!114408 result!114376))

(assert (=> d!498625 t!151101))

(declare-fun tb!94697 () Bool)

(declare-fun t!151103 () Bool)

(assert (=> (and b!1653507 (= (toChars!4527 (transformation!3217 (h!23643 (t!151065 rules!1846)))) (toChars!4527 (transformation!3217 (rule!5081 (h!23642 tokens!457))))) t!151103) tb!94697))

(declare-fun result!114410 () Bool)

(assert (= result!114410 result!114386))

(assert (=> b!1653317 t!151103))

(assert (=> d!498807 t!151103))

(declare-fun tp!478208 () Bool)

(declare-fun b_and!117407 () Bool)

(assert (=> b!1653507 (= tp!478208 (and (=> t!151101 result!114408) (=> t!151103 result!114410) b_and!117407))))

(declare-fun e!1060303 () Bool)

(assert (=> b!1653507 (= e!1060303 (and tp!478210 tp!478208))))

(declare-fun e!1060305 () Bool)

(declare-fun b!1653506 () Bool)

(declare-fun tp!478209 () Bool)

(assert (=> b!1653506 (= e!1060305 (and tp!478209 (inv!23597 (tag!3499 (h!23643 (t!151065 rules!1846)))) (inv!23600 (transformation!3217 (h!23643 (t!151065 rules!1846)))) e!1060303))))

(declare-fun b!1653505 () Bool)

(declare-fun e!1060304 () Bool)

(declare-fun tp!478207 () Bool)

(assert (=> b!1653505 (= e!1060304 (and e!1060305 tp!478207))))

(assert (=> b!1652741 (= tp!478137 e!1060304)))

(assert (= b!1653506 b!1653507))

(assert (= b!1653505 b!1653506))

(assert (= (and b!1652741 ((_ is Cons!18242) (t!151065 rules!1846))) b!1653505))

(declare-fun m!2005745 () Bool)

(assert (=> b!1653506 m!2005745))

(declare-fun m!2005747 () Bool)

(assert (=> b!1653506 m!2005747))

(declare-fun b!1653512 () Bool)

(declare-fun e!1060308 () Bool)

(declare-fun tp_is_empty!7369 () Bool)

(declare-fun tp!478213 () Bool)

(assert (=> b!1653512 (= e!1060308 (and tp_is_empty!7369 tp!478213))))

(assert (=> b!1652750 (= tp!478138 e!1060308)))

(assert (= (and b!1652750 ((_ is Cons!18240) (originalCharacters!4031 (h!23642 tokens!457)))) b!1653512))

(declare-fun b!1653524 () Bool)

(declare-fun e!1060311 () Bool)

(declare-fun tp!478226 () Bool)

(declare-fun tp!478228 () Bool)

(assert (=> b!1653524 (= e!1060311 (and tp!478226 tp!478228))))

(declare-fun b!1653526 () Bool)

(declare-fun tp!478225 () Bool)

(declare-fun tp!478224 () Bool)

(assert (=> b!1653526 (= e!1060311 (and tp!478225 tp!478224))))

(declare-fun b!1653525 () Bool)

(declare-fun tp!478227 () Bool)

(assert (=> b!1653525 (= e!1060311 tp!478227)))

(assert (=> b!1652728 (= tp!478134 e!1060311)))

(declare-fun b!1653523 () Bool)

(assert (=> b!1653523 (= e!1060311 tp_is_empty!7369)))

(assert (= (and b!1652728 ((_ is ElementMatch!4545) (regex!3217 (rule!5081 (h!23642 tokens!457))))) b!1653523))

(assert (= (and b!1652728 ((_ is Concat!7853) (regex!3217 (rule!5081 (h!23642 tokens!457))))) b!1653524))

(assert (= (and b!1652728 ((_ is Star!4545) (regex!3217 (rule!5081 (h!23642 tokens!457))))) b!1653525))

(assert (= (and b!1652728 ((_ is Union!4545) (regex!3217 (rule!5081 (h!23642 tokens!457))))) b!1653526))

(declare-fun b!1653540 () Bool)

(declare-fun b_free!44939 () Bool)

(declare-fun b_next!45643 () Bool)

(assert (=> b!1653540 (= b_free!44939 (not b_next!45643))))

(declare-fun tp!478243 () Bool)

(declare-fun b_and!117409 () Bool)

(assert (=> b!1653540 (= tp!478243 b_and!117409)))

(declare-fun b_free!44941 () Bool)

(declare-fun b_next!45645 () Bool)

(assert (=> b!1653540 (= b_free!44941 (not b_next!45645))))

(declare-fun t!151105 () Bool)

(declare-fun tb!94699 () Bool)

(assert (=> (and b!1653540 (= (toChars!4527 (transformation!3217 (rule!5081 (h!23642 (t!151064 tokens!457))))) (toChars!4527 (transformation!3217 (rule!5081 (h!23642 (t!151064 tokens!457)))))) t!151105) tb!94699))

(declare-fun result!114418 () Bool)

(assert (= result!114418 result!114376))

(assert (=> d!498625 t!151105))

(declare-fun t!151107 () Bool)

(declare-fun tb!94701 () Bool)

(assert (=> (and b!1653540 (= (toChars!4527 (transformation!3217 (rule!5081 (h!23642 (t!151064 tokens!457))))) (toChars!4527 (transformation!3217 (rule!5081 (h!23642 tokens!457))))) t!151107) tb!94701))

(declare-fun result!114420 () Bool)

(assert (= result!114420 result!114386))

(assert (=> b!1653317 t!151107))

(assert (=> d!498807 t!151107))

(declare-fun b_and!117411 () Bool)

(declare-fun tp!478240 () Bool)

(assert (=> b!1653540 (= tp!478240 (and (=> t!151105 result!114418) (=> t!151107 result!114420) b_and!117411))))

(declare-fun tp!478241 () Bool)

(declare-fun e!1060327 () Bool)

(declare-fun b!1653537 () Bool)

(declare-fun e!1060325 () Bool)

(assert (=> b!1653537 (= e!1060327 (and (inv!23601 (h!23642 (t!151064 tokens!457))) e!1060325 tp!478241))))

(declare-fun e!1060329 () Bool)

(assert (=> b!1653540 (= e!1060329 (and tp!478243 tp!478240))))

(assert (=> b!1652729 (= tp!478133 e!1060327)))

(declare-fun b!1653538 () Bool)

(declare-fun tp!478242 () Bool)

(declare-fun e!1060324 () Bool)

(assert (=> b!1653538 (= e!1060325 (and (inv!21 (value!101357 (h!23642 (t!151064 tokens!457)))) e!1060324 tp!478242))))

(declare-fun b!1653539 () Bool)

(declare-fun tp!478239 () Bool)

(assert (=> b!1653539 (= e!1060324 (and tp!478239 (inv!23597 (tag!3499 (rule!5081 (h!23642 (t!151064 tokens!457))))) (inv!23600 (transformation!3217 (rule!5081 (h!23642 (t!151064 tokens!457))))) e!1060329))))

(assert (= b!1653539 b!1653540))

(assert (= b!1653538 b!1653539))

(assert (= b!1653537 b!1653538))

(assert (= (and b!1652729 ((_ is Cons!18241) (t!151064 tokens!457))) b!1653537))

(declare-fun m!2005749 () Bool)

(assert (=> b!1653537 m!2005749))

(declare-fun m!2005751 () Bool)

(assert (=> b!1653538 m!2005751))

(declare-fun m!2005753 () Bool)

(assert (=> b!1653539 m!2005753))

(declare-fun m!2005755 () Bool)

(assert (=> b!1653539 m!2005755))

(declare-fun b!1653542 () Bool)

(declare-fun e!1060330 () Bool)

(declare-fun tp!478246 () Bool)

(declare-fun tp!478248 () Bool)

(assert (=> b!1653542 (= e!1060330 (and tp!478246 tp!478248))))

(declare-fun b!1653544 () Bool)

(declare-fun tp!478245 () Bool)

(declare-fun tp!478244 () Bool)

(assert (=> b!1653544 (= e!1060330 (and tp!478245 tp!478244))))

(declare-fun b!1653543 () Bool)

(declare-fun tp!478247 () Bool)

(assert (=> b!1653543 (= e!1060330 tp!478247)))

(assert (=> b!1652740 (= tp!478136 e!1060330)))

(declare-fun b!1653541 () Bool)

(assert (=> b!1653541 (= e!1060330 tp_is_empty!7369)))

(assert (= (and b!1652740 ((_ is ElementMatch!4545) (regex!3217 (h!23643 rules!1846)))) b!1653541))

(assert (= (and b!1652740 ((_ is Concat!7853) (regex!3217 (h!23643 rules!1846)))) b!1653542))

(assert (= (and b!1652740 ((_ is Star!4545) (regex!3217 (h!23643 rules!1846)))) b!1653543))

(assert (= (and b!1652740 ((_ is Union!4545) (regex!3217 (h!23643 rules!1846)))) b!1653544))

(declare-fun b_lambda!51947 () Bool)

(assert (= b_lambda!51933 (or (and b!1652747 b_free!44921 (= (toChars!4527 (transformation!3217 (h!23643 rules!1846))) (toChars!4527 (transformation!3217 (rule!5081 (h!23642 (t!151064 tokens!457))))))) (and b!1652745 b_free!44925 (= (toChars!4527 (transformation!3217 (rule!5081 (h!23642 tokens!457)))) (toChars!4527 (transformation!3217 (rule!5081 (h!23642 (t!151064 tokens!457))))))) (and b!1653507 b_free!44937 (= (toChars!4527 (transformation!3217 (h!23643 (t!151065 rules!1846)))) (toChars!4527 (transformation!3217 (rule!5081 (h!23642 (t!151064 tokens!457))))))) (and b!1653540 b_free!44941) b_lambda!51947)))

(declare-fun b_lambda!51949 () Bool)

(assert (= b_lambda!51937 (or (and b!1652747 b_free!44921 (= (toChars!4527 (transformation!3217 (h!23643 rules!1846))) (toChars!4527 (transformation!3217 (rule!5081 (h!23642 tokens!457)))))) (and b!1652745 b_free!44925) (and b!1653507 b_free!44937 (= (toChars!4527 (transformation!3217 (h!23643 (t!151065 rules!1846)))) (toChars!4527 (transformation!3217 (rule!5081 (h!23642 tokens!457)))))) (and b!1653540 b_free!44941 (= (toChars!4527 (transformation!3217 (rule!5081 (h!23642 (t!151064 tokens!457))))) (toChars!4527 (transformation!3217 (rule!5081 (h!23642 tokens!457)))))) b_lambda!51949)))

(declare-fun b_lambda!51951 () Bool)

(assert (= b_lambda!51945 (or (and b!1652747 b_free!44921 (= (toChars!4527 (transformation!3217 (h!23643 rules!1846))) (toChars!4527 (transformation!3217 (rule!5081 (h!23642 tokens!457)))))) (and b!1652745 b_free!44925) (and b!1653507 b_free!44937 (= (toChars!4527 (transformation!3217 (h!23643 (t!151065 rules!1846)))) (toChars!4527 (transformation!3217 (rule!5081 (h!23642 tokens!457)))))) (and b!1653540 b_free!44941 (= (toChars!4527 (transformation!3217 (rule!5081 (h!23642 (t!151064 tokens!457))))) (toChars!4527 (transformation!3217 (rule!5081 (h!23642 tokens!457)))))) b_lambda!51951)))

(check-sat (not b!1653298) (not d!498721) (not b!1653078) (not b!1652992) (not d!498737) (not b!1653478) (not b!1653252) (not d!498703) (not d!498811) (not b!1653542) (not b!1652951) (not b!1653486) (not d!498657) (not b!1653338) (not b!1653512) (not d!498793) b_and!117401 b_and!117409 (not d!498623) (not b!1653250) (not b!1653254) (not b!1653149) (not b!1653543) (not d!498629) (not b!1653473) (not b!1653132) (not b_next!45629) (not b!1653230) (not bm!106049) (not b!1653472) (not b!1653474) (not d!498787) (not b!1653068) (not bm!106046) (not d!498809) (not d!498655) (not b!1653069) (not d!498615) (not b!1653072) (not b!1652944) (not d!498631) (not d!498803) (not b!1653274) (not d!498653) (not d!498751) (not d!498741) (not b!1653463) (not b!1653470) b_and!117405 (not b!1653299) (not b!1653138) (not d!498633) (not b!1653492) (not d!498609) b_and!117411 (not d!498677) (not d!498743) (not b!1653524) (not b!1652990) (not b!1652950) (not d!498731) (not b!1653193) (not b!1652947) (not b!1653296) (not d!498747) (not b!1653525) (not b_next!45643) (not b!1653321) (not b!1653538) (not b!1653228) (not b!1653526) (not b_lambda!51947) b_and!117369 (not d!498799) (not b!1652946) (not b!1652942) (not b!1653336) (not b!1653319) (not b!1653471) (not b!1652991) (not b!1653232) (not d!498675) (not b!1653451) (not b!1652974) (not d!498679) (not b!1653323) (not d!498789) (not b!1653450) (not b!1653340) (not b!1653467) (not d!498785) (not b!1653034) (not d!498659) (not b!1653466) (not tb!94675) (not b!1653300) (not d!498749) (not d!498563) (not b!1652967) (not b!1653308) (not b!1653461) (not tb!94683) (not bm!106040) (not b_next!45623) (not b!1653485) (not b!1653482) tp_is_empty!7369 (not d!498605) (not d!498725) (not b!1652958) (not b!1653234) (not b!1653168) (not d!498613) (not b!1653495) (not b!1653233) b_and!117403 (not b_lambda!51951) (not d!498685) (not d!498705) (not b!1653231) (not b!1653276) (not d!498611) (not d!498801) (not b_lambda!51949) (not d!498795) (not b!1653137) (not b!1653039) (not d!498617) (not bm!106053) (not d!498625) (not d!498805) (not d!498781) b_and!117407 (not b!1653324) b_and!117365 (not b!1653506) (not b!1653301) (not d!498697) (not b!1653544) (not b!1653131) (not b!1653169) (not b!1653483) (not b!1653130) (not b!1653343) (not b!1653479) (not b!1653505) (not b!1653537) (not b!1653170) (not b!1653462) (not bm!106052) (not b!1653317) (not b!1653251) (not b!1653490) (not b!1652993) (not b!1652952) (not b!1653465) (not d!498735) (not d!498813) (not b!1653148) (not d!498723) (not b!1653491) (not b_next!45627) (not d!498791) (not b!1653339) (not b!1653464) (not d!498745) (not b!1653312) (not d!498797) (not b!1653235) (not d!498733) (not b!1652977) (not b!1653494) (not d!498729) (not b!1653480) (not d!498687) (not d!498807) (not b!1653539) (not b_next!45625) (not b!1653196) (not d!498779) (not b!1653295) (not b!1653303) (not b!1652941) (not b!1653070) (not b!1653302) (not b!1653481) (not b!1653318) (not b_next!45641) (not b!1653476) (not d!498739) (not d!498717) (not b!1653192) (not b!1653475) (not b_next!45639) (not b_next!45645) (not b!1653320) (not b!1652957) (not b!1653488) (not b!1653076) (not d!498727) (not b!1653469))
(check-sat (not b_next!45629) b_and!117405 b_and!117411 (not b_next!45643) b_and!117369 (not b_next!45623) b_and!117403 b_and!117407 b_and!117365 (not b_next!45627) (not b_next!45625) (not b_next!45641) b_and!117401 b_and!117409 (not b_next!45639) (not b_next!45645))
