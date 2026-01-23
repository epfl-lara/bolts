; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!388496 () Bool)

(assert start!388496)

(declare-fun b!4100842 () Bool)

(declare-fun b_free!114833 () Bool)

(declare-fun b_next!115537 () Bool)

(assert (=> b!4100842 (= b_free!114833 (not b_next!115537))))

(declare-fun tp!1241679 () Bool)

(declare-fun b_and!316647 () Bool)

(assert (=> b!4100842 (= tp!1241679 b_and!316647)))

(declare-fun b_free!114835 () Bool)

(declare-fun b_next!115539 () Bool)

(assert (=> b!4100842 (= b_free!114835 (not b_next!115539))))

(declare-fun tp!1241682 () Bool)

(declare-fun b_and!316649 () Bool)

(assert (=> b!4100842 (= tp!1241682 b_and!316649)))

(declare-fun b!4100840 () Bool)

(declare-fun b_free!114837 () Bool)

(declare-fun b_next!115541 () Bool)

(assert (=> b!4100840 (= b_free!114837 (not b_next!115541))))

(declare-fun tp!1241681 () Bool)

(declare-fun b_and!316651 () Bool)

(assert (=> b!4100840 (= tp!1241681 b_and!316651)))

(declare-fun b_free!114839 () Bool)

(declare-fun b_next!115543 () Bool)

(assert (=> b!4100840 (= b_free!114839 (not b_next!115543))))

(declare-fun tp!1241680 () Bool)

(declare-fun b_and!316653 () Bool)

(assert (=> b!4100840 (= tp!1241680 b_and!316653)))

(declare-fun b!4100833 () Bool)

(declare-fun e!2544833 () Bool)

(declare-fun e!2544838 () Bool)

(assert (=> b!4100833 (= e!2544833 e!2544838)))

(declare-fun res!1676495 () Bool)

(assert (=> b!4100833 (=> res!1676495 e!2544838)))

(declare-datatypes ((LexerInterface!6727 0))(
  ( (LexerInterfaceExt!6724 (__x!26953 Int)) (Lexer!6725) )
))
(declare-fun thiss!26455 () LexerInterface!6727)

(declare-datatypes ((C!24272 0))(
  ( (C!24273 (val!14246 Int)) )
))
(declare-datatypes ((List!44154 0))(
  ( (Nil!44030) (Cons!44030 (h!49450 C!24272) (t!339811 List!44154)) )
))
(declare-datatypes ((IArray!26703 0))(
  ( (IArray!26704 (innerList!13409 List!44154)) )
))
(declare-datatypes ((Conc!13349 0))(
  ( (Node!13349 (left!33076 Conc!13349) (right!33406 Conc!13349) (csize!26928 Int) (cheight!13560 Int)) (Leaf!20633 (xs!16655 IArray!26703) (csize!26929 Int)) (Empty!13349) )
))
(declare-datatypes ((List!44155 0))(
  ( (Nil!44031) (Cons!44031 (h!49451 (_ BitVec 16)) (t!339812 List!44155)) )
))
(declare-datatypes ((Regex!12043 0))(
  ( (ElementMatch!12043 (c!706478 C!24272)) (Concat!19411 (regOne!24598 Regex!12043) (regTwo!24598 Regex!12043)) (EmptyExpr!12043) (Star!12043 (reg!12372 Regex!12043)) (EmptyLang!12043) (Union!12043 (regOne!24599 Regex!12043) (regTwo!24599 Regex!12043)) )
))
(declare-datatypes ((String!50589 0))(
  ( (String!50590 (value!224051 String)) )
))
(declare-datatypes ((TokenValue!7368 0))(
  ( (FloatLiteralValue!14736 (text!52021 List!44155)) (TokenValueExt!7367 (__x!26954 Int)) (Broken!36840 (value!224052 List!44155)) (Object!7491) (End!7368) (Def!7368) (Underscore!7368) (Match!7368) (Else!7368) (Error!7368) (Case!7368) (If!7368) (Extends!7368) (Abstract!7368) (Class!7368) (Val!7368) (DelimiterValue!14736 (del!7428 List!44155)) (KeywordValue!7374 (value!224053 List!44155)) (CommentValue!14736 (value!224054 List!44155)) (WhitespaceValue!14736 (value!224055 List!44155)) (IndentationValue!7368 (value!224056 List!44155)) (String!50591) (Int32!7368) (Broken!36841 (value!224057 List!44155)) (Boolean!7369) (Unit!63554) (OperatorValue!7371 (op!7428 List!44155)) (IdentifierValue!14736 (value!224058 List!44155)) (IdentifierValue!14737 (value!224059 List!44155)) (WhitespaceValue!14737 (value!224060 List!44155)) (True!14736) (False!14736) (Broken!36842 (value!224061 List!44155)) (Broken!36843 (value!224062 List!44155)) (True!14737) (RightBrace!7368) (RightBracket!7368) (Colon!7368) (Null!7368) (Comma!7368) (LeftBracket!7368) (False!14737) (LeftBrace!7368) (ImaginaryLiteralValue!7368 (text!52022 List!44155)) (StringLiteralValue!22104 (value!224063 List!44155)) (EOFValue!7368 (value!224064 List!44155)) (IdentValue!7368 (value!224065 List!44155)) (DelimiterValue!14737 (value!224066 List!44155)) (DedentValue!7368 (value!224067 List!44155)) (NewLineValue!7368 (value!224068 List!44155)) (IntegerValue!22104 (value!224069 (_ BitVec 32)) (text!52023 List!44155)) (IntegerValue!22105 (value!224070 Int) (text!52024 List!44155)) (Times!7368) (Or!7368) (Equal!7368) (Minus!7368) (Broken!36844 (value!224071 List!44155)) (And!7368) (Div!7368) (LessEqual!7368) (Mod!7368) (Concat!19412) (Not!7368) (Plus!7368) (SpaceValue!7368 (value!224072 List!44155)) (IntegerValue!22106 (value!224073 Int) (text!52025 List!44155)) (StringLiteralValue!22105 (text!52026 List!44155)) (FloatLiteralValue!14737 (text!52027 List!44155)) (BytesLiteralValue!7368 (value!224074 List!44155)) (CommentValue!14737 (value!224075 List!44155)) (StringLiteralValue!22106 (value!224076 List!44155)) (ErrorTokenValue!7368 (msg!7429 List!44155)) )
))
(declare-datatypes ((BalanceConc!26292 0))(
  ( (BalanceConc!26293 (c!706479 Conc!13349)) )
))
(declare-datatypes ((TokenValueInjection!14164 0))(
  ( (TokenValueInjection!14165 (toValue!9746 Int) (toChars!9605 Int)) )
))
(declare-datatypes ((Rule!14076 0))(
  ( (Rule!14077 (regex!7138 Regex!12043) (tag!7998 String!50589) (isSeparator!7138 Bool) (transformation!7138 TokenValueInjection!14164)) )
))
(declare-datatypes ((List!44156 0))(
  ( (Nil!44032) (Cons!44032 (h!49452 Rule!14076) (t!339813 List!44156)) )
))
(declare-fun lt!1466737 () List!44156)

(declare-fun rulesInvariant!6070 (LexerInterface!6727 List!44156) Bool)

(assert (=> b!4100833 (= res!1676495 (not (rulesInvariant!6070 thiss!26455 lt!1466737)))))

(declare-datatypes ((List!44157 0))(
  ( (Nil!44033) (Cons!44033 (h!49453 String!50589) (t!339814 List!44157)) )
))
(declare-fun noDuplicateTag!2817 (LexerInterface!6727 List!44156 List!44157) Bool)

(assert (=> b!4100833 (noDuplicateTag!2817 thiss!26455 lt!1466737 Nil!44033)))

(declare-datatypes ((Unit!63555 0))(
  ( (Unit!63556) )
))
(declare-fun lt!1466738 () Unit!63555)

(declare-fun rTail!27 () List!44156)

(declare-fun lemmaNoDupTagThenAlsoWithSubListAcc!12 (LexerInterface!6727 List!44157 List!44157 List!44156) Unit!63555)

(assert (=> b!4100833 (= lt!1466738 (lemmaNoDupTagThenAlsoWithSubListAcc!12 thiss!26455 (Cons!44033 (tag!7998 (h!49452 rTail!27)) Nil!44033) Nil!44033 lt!1466737))))

(declare-fun b!4100834 () Bool)

(declare-fun res!1676490 () Bool)

(declare-fun e!2544837 () Bool)

(assert (=> b!4100834 (=> (not res!1676490) (not e!2544837))))

(get-info :version)

(assert (=> b!4100834 (= res!1676490 ((_ is Cons!44032) rTail!27))))

(declare-fun b!4100835 () Bool)

(declare-fun e!2544825 () Bool)

(declare-fun rulesValidInductive!2643 (LexerInterface!6727 List!44156) Bool)

(assert (=> b!4100835 (= e!2544825 (rulesValidInductive!2643 thiss!26455 rTail!27))))

(declare-fun b!4100836 () Bool)

(declare-fun e!2544827 () Bool)

(declare-fun e!2544830 () Bool)

(declare-fun tp!1241678 () Bool)

(assert (=> b!4100836 (= e!2544827 (and e!2544830 tp!1241678))))

(declare-fun b!4100837 () Bool)

(declare-fun res!1676493 () Bool)

(declare-fun e!2544834 () Bool)

(assert (=> b!4100837 (=> (not res!1676493) (not e!2544834))))

(declare-fun isEmpty!26338 (List!44156) Bool)

(assert (=> b!4100837 (= res!1676493 (not (isEmpty!26338 rTail!27)))))

(declare-fun b!4100838 () Bool)

(assert (=> b!4100838 (= e!2544838 e!2544825)))

(declare-fun res!1676491 () Bool)

(assert (=> b!4100838 (=> res!1676491 e!2544825)))

(declare-fun input!3491 () List!44154)

(declare-datatypes ((Token!13386 0))(
  ( (Token!13387 (value!224077 TokenValue!7368) (rule!10288 Rule!14076) (size!32859 Int) (originalCharacters!7724 List!44154)) )
))
(declare-datatypes ((tuple2!42904 0))(
  ( (tuple2!42905 (_1!24586 Token!13386) (_2!24586 List!44154)) )
))
(declare-datatypes ((Option!9536 0))(
  ( (None!9535) (Some!9535 (v!40043 tuple2!42904)) )
))
(declare-fun isEmpty!26339 (Option!9536) Bool)

(declare-fun maxPrefix!4009 (LexerInterface!6727 List!44156 List!44154) Option!9536)

(assert (=> b!4100838 (= res!1676491 (isEmpty!26339 (maxPrefix!4009 thiss!26455 rTail!27 input!3491)))))

(declare-fun e!2544826 () Bool)

(assert (=> b!4100838 e!2544826))

(declare-fun res!1676489 () Bool)

(assert (=> b!4100838 (=> res!1676489 e!2544826)))

(declare-fun lt!1466733 () Option!9536)

(assert (=> b!4100838 (= res!1676489 (isEmpty!26339 lt!1466733))))

(assert (=> b!4100838 (= lt!1466733 (maxPrefix!4009 thiss!26455 (t!339813 rTail!27) input!3491))))

(declare-fun rHead!24 () Rule!14076)

(declare-fun lt!1466736 () Unit!63555)

(declare-fun lemmaNoDuplTagThenTailRulesCannotProduceHeadTagInTok!30 (LexerInterface!6727 Rule!14076 List!44156 List!44154) Unit!63555)

(assert (=> b!4100838 (= lt!1466736 (lemmaNoDuplTagThenTailRulesCannotProduceHeadTagInTok!30 thiss!26455 rHead!24 (t!339813 rTail!27) input!3491))))

(declare-fun b!4100839 () Bool)

(declare-fun e!2544829 () Bool)

(declare-fun tp_is_empty!21073 () Bool)

(declare-fun tp!1241677 () Bool)

(assert (=> b!4100839 (= e!2544829 (and tp_is_empty!21073 tp!1241677))))

(declare-fun e!2544832 () Bool)

(assert (=> b!4100840 (= e!2544832 (and tp!1241681 tp!1241680))))

(declare-fun e!2544836 () Bool)

(declare-fun b!4100841 () Bool)

(declare-fun tp!1241683 () Bool)

(declare-fun e!2544835 () Bool)

(declare-fun inv!58748 (String!50589) Bool)

(declare-fun inv!58750 (TokenValueInjection!14164) Bool)

(assert (=> b!4100841 (= e!2544836 (and tp!1241683 (inv!58748 (tag!7998 rHead!24)) (inv!58750 (transformation!7138 rHead!24)) e!2544835))))

(declare-fun b!4100843 () Bool)

(assert (=> b!4100843 (= e!2544837 (not e!2544833))))

(declare-fun res!1676494 () Bool)

(assert (=> b!4100843 (=> res!1676494 e!2544833)))

(assert (=> b!4100843 (= res!1676494 (isEmpty!26338 (t!339813 rTail!27)))))

(assert (=> b!4100843 (not (= (tag!7998 rHead!24) (tag!7998 (h!49452 rTail!27))))))

(declare-fun lt!1466735 () Unit!63555)

(declare-fun lt!1466734 () List!44156)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!14 (LexerInterface!6727 List!44156 Rule!14076 Rule!14076) Unit!63555)

(assert (=> b!4100843 (= lt!1466735 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!14 thiss!26455 lt!1466734 rHead!24 (h!49452 rTail!27)))))

(assert (=> b!4100843 (noDuplicateTag!2817 thiss!26455 (Cons!44032 (h!49452 rTail!27) lt!1466737) Nil!44033)))

(assert (=> b!4100843 (= lt!1466737 (Cons!44032 rHead!24 (t!339813 rTail!27)))))

(declare-fun lt!1466739 () Unit!63555)

(declare-fun lemmaNoDuplicateCanReorder!16 (LexerInterface!6727 Rule!14076 Rule!14076 List!44156) Unit!63555)

(assert (=> b!4100843 (= lt!1466739 (lemmaNoDuplicateCanReorder!16 thiss!26455 rHead!24 (h!49452 rTail!27) (t!339813 rTail!27)))))

(declare-fun b!4100844 () Bool)

(declare-fun get!14437 (Option!9536) tuple2!42904)

(assert (=> b!4100844 (= e!2544826 (not (= (rule!10288 (_1!24586 (get!14437 lt!1466733))) rHead!24)))))

(declare-fun b!4100845 () Bool)

(assert (=> b!4100845 (= e!2544834 e!2544837)))

(declare-fun res!1676488 () Bool)

(assert (=> b!4100845 (=> (not res!1676488) (not e!2544837))))

(assert (=> b!4100845 (= res!1676488 (rulesInvariant!6070 thiss!26455 lt!1466734))))

(assert (=> b!4100845 (= lt!1466734 (Cons!44032 rHead!24 rTail!27))))

(declare-fun b!4100846 () Bool)

(declare-fun tp!1241684 () Bool)

(assert (=> b!4100846 (= e!2544830 (and tp!1241684 (inv!58748 (tag!7998 (h!49452 rTail!27))) (inv!58750 (transformation!7138 (h!49452 rTail!27))) e!2544832))))

(declare-fun res!1676492 () Bool)

(assert (=> start!388496 (=> (not res!1676492) (not e!2544834))))

(assert (=> start!388496 (= res!1676492 ((_ is Lexer!6725) thiss!26455))))

(assert (=> start!388496 e!2544834))

(assert (=> start!388496 true))

(assert (=> start!388496 e!2544827))

(assert (=> start!388496 e!2544829))

(assert (=> start!388496 e!2544836))

(assert (=> b!4100842 (= e!2544835 (and tp!1241679 tp!1241682))))

(assert (= (and start!388496 res!1676492) b!4100837))

(assert (= (and b!4100837 res!1676493) b!4100845))

(assert (= (and b!4100845 res!1676488) b!4100834))

(assert (= (and b!4100834 res!1676490) b!4100843))

(assert (= (and b!4100843 (not res!1676494)) b!4100833))

(assert (= (and b!4100833 (not res!1676495)) b!4100838))

(assert (= (and b!4100838 (not res!1676489)) b!4100844))

(assert (= (and b!4100838 (not res!1676491)) b!4100835))

(assert (= b!4100846 b!4100840))

(assert (= b!4100836 b!4100846))

(assert (= (and start!388496 ((_ is Cons!44032) rTail!27)) b!4100836))

(assert (= (and start!388496 ((_ is Cons!44030) input!3491)) b!4100839))

(assert (= b!4100841 b!4100842))

(assert (= start!388496 b!4100841))

(declare-fun m!4707485 () Bool)

(assert (=> b!4100833 m!4707485))

(declare-fun m!4707487 () Bool)

(assert (=> b!4100833 m!4707487))

(declare-fun m!4707489 () Bool)

(assert (=> b!4100833 m!4707489))

(declare-fun m!4707491 () Bool)

(assert (=> b!4100846 m!4707491))

(declare-fun m!4707493 () Bool)

(assert (=> b!4100846 m!4707493))

(declare-fun m!4707495 () Bool)

(assert (=> b!4100838 m!4707495))

(declare-fun m!4707497 () Bool)

(assert (=> b!4100838 m!4707497))

(declare-fun m!4707499 () Bool)

(assert (=> b!4100838 m!4707499))

(assert (=> b!4100838 m!4707495))

(declare-fun m!4707501 () Bool)

(assert (=> b!4100838 m!4707501))

(declare-fun m!4707503 () Bool)

(assert (=> b!4100838 m!4707503))

(declare-fun m!4707505 () Bool)

(assert (=> b!4100837 m!4707505))

(declare-fun m!4707507 () Bool)

(assert (=> b!4100841 m!4707507))

(declare-fun m!4707509 () Bool)

(assert (=> b!4100841 m!4707509))

(declare-fun m!4707511 () Bool)

(assert (=> b!4100835 m!4707511))

(declare-fun m!4707513 () Bool)

(assert (=> b!4100843 m!4707513))

(declare-fun m!4707515 () Bool)

(assert (=> b!4100843 m!4707515))

(declare-fun m!4707517 () Bool)

(assert (=> b!4100843 m!4707517))

(declare-fun m!4707519 () Bool)

(assert (=> b!4100843 m!4707519))

(declare-fun m!4707521 () Bool)

(assert (=> b!4100844 m!4707521))

(declare-fun m!4707523 () Bool)

(assert (=> b!4100845 m!4707523))

(check-sat b_and!316647 (not b_next!115541) (not b!4100833) (not b!4100837) (not b_next!115537) (not b!4100841) (not b!4100836) (not b!4100846) (not b_next!115539) tp_is_empty!21073 b_and!316649 b_and!316653 (not b!4100839) (not b_next!115543) (not b!4100845) (not b!4100838) (not b!4100843) (not b!4100835) b_and!316651 (not b!4100844))
(check-sat b_and!316647 (not b_next!115541) b_and!316653 (not b_next!115537) (not b_next!115539) (not b_next!115543) b_and!316651 b_and!316649)
(get-model)

(declare-fun d!1217498 () Bool)

(declare-fun res!1676509 () Bool)

(declare-fun e!2544844 () Bool)

(assert (=> d!1217498 (=> (not res!1676509) (not e!2544844))))

(declare-fun rulesValid!2801 (LexerInterface!6727 List!44156) Bool)

(assert (=> d!1217498 (= res!1676509 (rulesValid!2801 thiss!26455 lt!1466734))))

(assert (=> d!1217498 (= (rulesInvariant!6070 thiss!26455 lt!1466734) e!2544844)))

(declare-fun b!4100852 () Bool)

(assert (=> b!4100852 (= e!2544844 (noDuplicateTag!2817 thiss!26455 lt!1466734 Nil!44033))))

(assert (= (and d!1217498 res!1676509) b!4100852))

(declare-fun m!4707525 () Bool)

(assert (=> d!1217498 m!4707525))

(declare-fun m!4707527 () Bool)

(assert (=> b!4100852 m!4707527))

(assert (=> b!4100845 d!1217498))

(declare-fun d!1217500 () Bool)

(assert (=> d!1217500 (= (get!14437 lt!1466733) (v!40043 lt!1466733))))

(assert (=> b!4100844 d!1217500))

(declare-fun d!1217504 () Bool)

(declare-fun res!1676510 () Bool)

(declare-fun e!2544845 () Bool)

(assert (=> d!1217504 (=> (not res!1676510) (not e!2544845))))

(assert (=> d!1217504 (= res!1676510 (rulesValid!2801 thiss!26455 lt!1466737))))

(assert (=> d!1217504 (= (rulesInvariant!6070 thiss!26455 lt!1466737) e!2544845)))

(declare-fun b!4100853 () Bool)

(assert (=> b!4100853 (= e!2544845 (noDuplicateTag!2817 thiss!26455 lt!1466737 Nil!44033))))

(assert (= (and d!1217504 res!1676510) b!4100853))

(declare-fun m!4707533 () Bool)

(assert (=> d!1217504 m!4707533))

(assert (=> b!4100853 m!4707487))

(assert (=> b!4100833 d!1217504))

(declare-fun d!1217506 () Bool)

(declare-fun res!1676517 () Bool)

(declare-fun e!2544852 () Bool)

(assert (=> d!1217506 (=> res!1676517 e!2544852)))

(assert (=> d!1217506 (= res!1676517 ((_ is Nil!44032) lt!1466737))))

(assert (=> d!1217506 (= (noDuplicateTag!2817 thiss!26455 lt!1466737 Nil!44033) e!2544852)))

(declare-fun b!4100860 () Bool)

(declare-fun e!2544853 () Bool)

(assert (=> b!4100860 (= e!2544852 e!2544853)))

(declare-fun res!1676518 () Bool)

(assert (=> b!4100860 (=> (not res!1676518) (not e!2544853))))

(declare-fun contains!8814 (List!44157 String!50589) Bool)

(assert (=> b!4100860 (= res!1676518 (not (contains!8814 Nil!44033 (tag!7998 (h!49452 lt!1466737)))))))

(declare-fun b!4100861 () Bool)

(assert (=> b!4100861 (= e!2544853 (noDuplicateTag!2817 thiss!26455 (t!339813 lt!1466737) (Cons!44033 (tag!7998 (h!49452 lt!1466737)) Nil!44033)))))

(assert (= (and d!1217506 (not res!1676517)) b!4100860))

(assert (= (and b!4100860 res!1676518) b!4100861))

(declare-fun m!4707535 () Bool)

(assert (=> b!4100860 m!4707535))

(declare-fun m!4707537 () Bool)

(assert (=> b!4100861 m!4707537))

(assert (=> b!4100833 d!1217506))

(declare-fun d!1217508 () Bool)

(assert (=> d!1217508 (noDuplicateTag!2817 thiss!26455 lt!1466737 Nil!44033)))

(declare-fun lt!1466742 () Unit!63555)

(declare-fun choose!25057 (LexerInterface!6727 List!44157 List!44157 List!44156) Unit!63555)

(assert (=> d!1217508 (= lt!1466742 (choose!25057 thiss!26455 (Cons!44033 (tag!7998 (h!49452 rTail!27)) Nil!44033) Nil!44033 lt!1466737))))

(declare-fun subseq!541 (List!44157 List!44157) Bool)

(assert (=> d!1217508 (subseq!541 Nil!44033 (Cons!44033 (tag!7998 (h!49452 rTail!27)) Nil!44033))))

(assert (=> d!1217508 (= (lemmaNoDupTagThenAlsoWithSubListAcc!12 thiss!26455 (Cons!44033 (tag!7998 (h!49452 rTail!27)) Nil!44033) Nil!44033 lt!1466737) lt!1466742)))

(declare-fun bs!593847 () Bool)

(assert (= bs!593847 d!1217508))

(assert (=> bs!593847 m!4707487))

(declare-fun m!4707543 () Bool)

(assert (=> bs!593847 m!4707543))

(declare-fun m!4707545 () Bool)

(assert (=> bs!593847 m!4707545))

(assert (=> b!4100833 d!1217508))

(declare-fun d!1217514 () Bool)

(assert (=> d!1217514 (= (isEmpty!26339 lt!1466733) (not ((_ is Some!9535) lt!1466733)))))

(assert (=> b!4100838 d!1217514))

(declare-fun d!1217516 () Bool)

(assert (=> d!1217516 (= (isEmpty!26339 (maxPrefix!4009 thiss!26455 rTail!27 input!3491)) (not ((_ is Some!9535) (maxPrefix!4009 thiss!26455 rTail!27 input!3491))))))

(assert (=> b!4100838 d!1217516))

(declare-fun b!4100881 () Bool)

(declare-fun e!2544862 () Option!9536)

(declare-fun call!289767 () Option!9536)

(assert (=> b!4100881 (= e!2544862 call!289767)))

(declare-fun bm!289762 () Bool)

(declare-fun maxPrefixOneRule!2980 (LexerInterface!6727 Rule!14076 List!44154) Option!9536)

(assert (=> bm!289762 (= call!289767 (maxPrefixOneRule!2980 thiss!26455 (h!49452 (t!339813 rTail!27)) input!3491))))

(declare-fun b!4100882 () Bool)

(declare-fun res!1676536 () Bool)

(declare-fun e!2544863 () Bool)

(assert (=> b!4100882 (=> (not res!1676536) (not e!2544863))))

(declare-fun lt!1466757 () Option!9536)

(declare-fun ++!11529 (List!44154 List!44154) List!44154)

(declare-fun list!16313 (BalanceConc!26292) List!44154)

(declare-fun charsOf!4873 (Token!13386) BalanceConc!26292)

(assert (=> b!4100882 (= res!1676536 (= (++!11529 (list!16313 (charsOf!4873 (_1!24586 (get!14437 lt!1466757)))) (_2!24586 (get!14437 lt!1466757))) input!3491))))

(declare-fun d!1217518 () Bool)

(declare-fun e!2544861 () Bool)

(assert (=> d!1217518 e!2544861))

(declare-fun res!1676535 () Bool)

(assert (=> d!1217518 (=> res!1676535 e!2544861)))

(assert (=> d!1217518 (= res!1676535 (isEmpty!26339 lt!1466757))))

(assert (=> d!1217518 (= lt!1466757 e!2544862)))

(declare-fun c!706482 () Bool)

(assert (=> d!1217518 (= c!706482 (and ((_ is Cons!44032) (t!339813 rTail!27)) ((_ is Nil!44032) (t!339813 (t!339813 rTail!27)))))))

(declare-fun lt!1466754 () Unit!63555)

(declare-fun lt!1466753 () Unit!63555)

(assert (=> d!1217518 (= lt!1466754 lt!1466753)))

(declare-fun isPrefix!4158 (List!44154 List!44154) Bool)

(assert (=> d!1217518 (isPrefix!4158 input!3491 input!3491)))

(declare-fun lemmaIsPrefixRefl!2709 (List!44154 List!44154) Unit!63555)

(assert (=> d!1217518 (= lt!1466753 (lemmaIsPrefixRefl!2709 input!3491 input!3491))))

(assert (=> d!1217518 (rulesValidInductive!2643 thiss!26455 (t!339813 rTail!27))))

(assert (=> d!1217518 (= (maxPrefix!4009 thiss!26455 (t!339813 rTail!27) input!3491) lt!1466757)))

(declare-fun b!4100883 () Bool)

(declare-fun res!1676538 () Bool)

(assert (=> b!4100883 (=> (not res!1676538) (not e!2544863))))

(declare-fun size!32860 (List!44154) Int)

(assert (=> b!4100883 (= res!1676538 (< (size!32860 (_2!24586 (get!14437 lt!1466757))) (size!32860 input!3491)))))

(declare-fun b!4100884 () Bool)

(declare-fun res!1676540 () Bool)

(assert (=> b!4100884 (=> (not res!1676540) (not e!2544863))))

(assert (=> b!4100884 (= res!1676540 (= (list!16313 (charsOf!4873 (_1!24586 (get!14437 lt!1466757)))) (originalCharacters!7724 (_1!24586 (get!14437 lt!1466757)))))))

(declare-fun b!4100885 () Bool)

(declare-fun res!1676539 () Bool)

(assert (=> b!4100885 (=> (not res!1676539) (not e!2544863))))

(declare-fun apply!10306 (TokenValueInjection!14164 BalanceConc!26292) TokenValue!7368)

(declare-fun seqFromList!5340 (List!44154) BalanceConc!26292)

(assert (=> b!4100885 (= res!1676539 (= (value!224077 (_1!24586 (get!14437 lt!1466757))) (apply!10306 (transformation!7138 (rule!10288 (_1!24586 (get!14437 lt!1466757)))) (seqFromList!5340 (originalCharacters!7724 (_1!24586 (get!14437 lt!1466757)))))))))

(declare-fun b!4100886 () Bool)

(declare-fun lt!1466755 () Option!9536)

(declare-fun lt!1466756 () Option!9536)

(assert (=> b!4100886 (= e!2544862 (ite (and ((_ is None!9535) lt!1466755) ((_ is None!9535) lt!1466756)) None!9535 (ite ((_ is None!9535) lt!1466756) lt!1466755 (ite ((_ is None!9535) lt!1466755) lt!1466756 (ite (>= (size!32859 (_1!24586 (v!40043 lt!1466755))) (size!32859 (_1!24586 (v!40043 lt!1466756)))) lt!1466755 lt!1466756)))))))

(assert (=> b!4100886 (= lt!1466755 call!289767)))

(assert (=> b!4100886 (= lt!1466756 (maxPrefix!4009 thiss!26455 (t!339813 (t!339813 rTail!27)) input!3491))))

(declare-fun b!4100887 () Bool)

(declare-fun contains!8815 (List!44156 Rule!14076) Bool)

(assert (=> b!4100887 (= e!2544863 (contains!8815 (t!339813 rTail!27) (rule!10288 (_1!24586 (get!14437 lt!1466757)))))))

(declare-fun b!4100888 () Bool)

(declare-fun res!1676534 () Bool)

(assert (=> b!4100888 (=> (not res!1676534) (not e!2544863))))

(declare-fun matchR!5969 (Regex!12043 List!44154) Bool)

(assert (=> b!4100888 (= res!1676534 (matchR!5969 (regex!7138 (rule!10288 (_1!24586 (get!14437 lt!1466757)))) (list!16313 (charsOf!4873 (_1!24586 (get!14437 lt!1466757))))))))

(declare-fun b!4100889 () Bool)

(assert (=> b!4100889 (= e!2544861 e!2544863)))

(declare-fun res!1676537 () Bool)

(assert (=> b!4100889 (=> (not res!1676537) (not e!2544863))))

(declare-fun isDefined!7207 (Option!9536) Bool)

(assert (=> b!4100889 (= res!1676537 (isDefined!7207 lt!1466757))))

(assert (= (and d!1217518 c!706482) b!4100881))

(assert (= (and d!1217518 (not c!706482)) b!4100886))

(assert (= (or b!4100881 b!4100886) bm!289762))

(assert (= (and d!1217518 (not res!1676535)) b!4100889))

(assert (= (and b!4100889 res!1676537) b!4100884))

(assert (= (and b!4100884 res!1676540) b!4100883))

(assert (= (and b!4100883 res!1676538) b!4100882))

(assert (= (and b!4100882 res!1676536) b!4100885))

(assert (= (and b!4100885 res!1676539) b!4100888))

(assert (= (and b!4100888 res!1676534) b!4100887))

(declare-fun m!4707547 () Bool)

(assert (=> b!4100886 m!4707547))

(declare-fun m!4707549 () Bool)

(assert (=> d!1217518 m!4707549))

(declare-fun m!4707551 () Bool)

(assert (=> d!1217518 m!4707551))

(declare-fun m!4707553 () Bool)

(assert (=> d!1217518 m!4707553))

(declare-fun m!4707555 () Bool)

(assert (=> d!1217518 m!4707555))

(declare-fun m!4707557 () Bool)

(assert (=> bm!289762 m!4707557))

(declare-fun m!4707559 () Bool)

(assert (=> b!4100888 m!4707559))

(declare-fun m!4707561 () Bool)

(assert (=> b!4100888 m!4707561))

(assert (=> b!4100888 m!4707561))

(declare-fun m!4707563 () Bool)

(assert (=> b!4100888 m!4707563))

(assert (=> b!4100888 m!4707563))

(declare-fun m!4707565 () Bool)

(assert (=> b!4100888 m!4707565))

(declare-fun m!4707567 () Bool)

(assert (=> b!4100889 m!4707567))

(assert (=> b!4100885 m!4707559))

(declare-fun m!4707569 () Bool)

(assert (=> b!4100885 m!4707569))

(assert (=> b!4100885 m!4707569))

(declare-fun m!4707571 () Bool)

(assert (=> b!4100885 m!4707571))

(assert (=> b!4100884 m!4707559))

(assert (=> b!4100884 m!4707561))

(assert (=> b!4100884 m!4707561))

(assert (=> b!4100884 m!4707563))

(assert (=> b!4100883 m!4707559))

(declare-fun m!4707573 () Bool)

(assert (=> b!4100883 m!4707573))

(declare-fun m!4707575 () Bool)

(assert (=> b!4100883 m!4707575))

(assert (=> b!4100882 m!4707559))

(assert (=> b!4100882 m!4707561))

(assert (=> b!4100882 m!4707561))

(assert (=> b!4100882 m!4707563))

(assert (=> b!4100882 m!4707563))

(declare-fun m!4707577 () Bool)

(assert (=> b!4100882 m!4707577))

(assert (=> b!4100887 m!4707559))

(declare-fun m!4707579 () Bool)

(assert (=> b!4100887 m!4707579))

(assert (=> b!4100838 d!1217518))

(declare-fun d!1217520 () Bool)

(declare-fun e!2544872 () Bool)

(assert (=> d!1217520 e!2544872))

(declare-fun res!1676557 () Bool)

(assert (=> d!1217520 (=> res!1676557 e!2544872)))

(assert (=> d!1217520 (= res!1676557 (isEmpty!26339 (maxPrefix!4009 thiss!26455 (t!339813 rTail!27) input!3491)))))

(declare-fun lt!1466770 () Unit!63555)

(declare-fun choose!25058 (LexerInterface!6727 Rule!14076 List!44156 List!44154) Unit!63555)

(assert (=> d!1217520 (= lt!1466770 (choose!25058 thiss!26455 rHead!24 (t!339813 rTail!27) input!3491))))

(assert (=> d!1217520 (not (isEmpty!26338 (t!339813 rTail!27)))))

(assert (=> d!1217520 (= (lemmaNoDuplTagThenTailRulesCannotProduceHeadTagInTok!30 thiss!26455 rHead!24 (t!339813 rTail!27) input!3491) lt!1466770)))

(declare-fun b!4100910 () Bool)

(assert (=> b!4100910 (= e!2544872 (not (= (rule!10288 (_1!24586 (get!14437 (maxPrefix!4009 thiss!26455 (t!339813 rTail!27) input!3491)))) rHead!24)))))

(assert (= (and d!1217520 (not res!1676557)) b!4100910))

(assert (=> d!1217520 m!4707503))

(assert (=> d!1217520 m!4707503))

(declare-fun m!4707581 () Bool)

(assert (=> d!1217520 m!4707581))

(declare-fun m!4707583 () Bool)

(assert (=> d!1217520 m!4707583))

(assert (=> d!1217520 m!4707513))

(assert (=> b!4100910 m!4707503))

(assert (=> b!4100910 m!4707503))

(declare-fun m!4707585 () Bool)

(assert (=> b!4100910 m!4707585))

(assert (=> b!4100838 d!1217520))

(declare-fun b!4100911 () Bool)

(declare-fun e!2544874 () Option!9536)

(declare-fun call!289770 () Option!9536)

(assert (=> b!4100911 (= e!2544874 call!289770)))

(declare-fun bm!289765 () Bool)

(assert (=> bm!289765 (= call!289770 (maxPrefixOneRule!2980 thiss!26455 (h!49452 rTail!27) input!3491))))

(declare-fun b!4100912 () Bool)

(declare-fun res!1676560 () Bool)

(declare-fun e!2544875 () Bool)

(assert (=> b!4100912 (=> (not res!1676560) (not e!2544875))))

(declare-fun lt!1466775 () Option!9536)

(assert (=> b!4100912 (= res!1676560 (= (++!11529 (list!16313 (charsOf!4873 (_1!24586 (get!14437 lt!1466775)))) (_2!24586 (get!14437 lt!1466775))) input!3491))))

(declare-fun d!1217522 () Bool)

(declare-fun e!2544873 () Bool)

(assert (=> d!1217522 e!2544873))

(declare-fun res!1676559 () Bool)

(assert (=> d!1217522 (=> res!1676559 e!2544873)))

(assert (=> d!1217522 (= res!1676559 (isEmpty!26339 lt!1466775))))

(assert (=> d!1217522 (= lt!1466775 e!2544874)))

(declare-fun c!706485 () Bool)

(assert (=> d!1217522 (= c!706485 (and ((_ is Cons!44032) rTail!27) ((_ is Nil!44032) (t!339813 rTail!27))))))

(declare-fun lt!1466772 () Unit!63555)

(declare-fun lt!1466771 () Unit!63555)

(assert (=> d!1217522 (= lt!1466772 lt!1466771)))

(assert (=> d!1217522 (isPrefix!4158 input!3491 input!3491)))

(assert (=> d!1217522 (= lt!1466771 (lemmaIsPrefixRefl!2709 input!3491 input!3491))))

(assert (=> d!1217522 (rulesValidInductive!2643 thiss!26455 rTail!27)))

(assert (=> d!1217522 (= (maxPrefix!4009 thiss!26455 rTail!27 input!3491) lt!1466775)))

(declare-fun b!4100913 () Bool)

(declare-fun res!1676562 () Bool)

(assert (=> b!4100913 (=> (not res!1676562) (not e!2544875))))

(assert (=> b!4100913 (= res!1676562 (< (size!32860 (_2!24586 (get!14437 lt!1466775))) (size!32860 input!3491)))))

(declare-fun b!4100914 () Bool)

(declare-fun res!1676564 () Bool)

(assert (=> b!4100914 (=> (not res!1676564) (not e!2544875))))

(assert (=> b!4100914 (= res!1676564 (= (list!16313 (charsOf!4873 (_1!24586 (get!14437 lt!1466775)))) (originalCharacters!7724 (_1!24586 (get!14437 lt!1466775)))))))

(declare-fun b!4100915 () Bool)

(declare-fun res!1676563 () Bool)

(assert (=> b!4100915 (=> (not res!1676563) (not e!2544875))))

(assert (=> b!4100915 (= res!1676563 (= (value!224077 (_1!24586 (get!14437 lt!1466775))) (apply!10306 (transformation!7138 (rule!10288 (_1!24586 (get!14437 lt!1466775)))) (seqFromList!5340 (originalCharacters!7724 (_1!24586 (get!14437 lt!1466775)))))))))

(declare-fun b!4100916 () Bool)

(declare-fun lt!1466773 () Option!9536)

(declare-fun lt!1466774 () Option!9536)

(assert (=> b!4100916 (= e!2544874 (ite (and ((_ is None!9535) lt!1466773) ((_ is None!9535) lt!1466774)) None!9535 (ite ((_ is None!9535) lt!1466774) lt!1466773 (ite ((_ is None!9535) lt!1466773) lt!1466774 (ite (>= (size!32859 (_1!24586 (v!40043 lt!1466773))) (size!32859 (_1!24586 (v!40043 lt!1466774)))) lt!1466773 lt!1466774)))))))

(assert (=> b!4100916 (= lt!1466773 call!289770)))

(assert (=> b!4100916 (= lt!1466774 (maxPrefix!4009 thiss!26455 (t!339813 rTail!27) input!3491))))

(declare-fun b!4100917 () Bool)

(assert (=> b!4100917 (= e!2544875 (contains!8815 rTail!27 (rule!10288 (_1!24586 (get!14437 lt!1466775)))))))

(declare-fun b!4100918 () Bool)

(declare-fun res!1676558 () Bool)

(assert (=> b!4100918 (=> (not res!1676558) (not e!2544875))))

(assert (=> b!4100918 (= res!1676558 (matchR!5969 (regex!7138 (rule!10288 (_1!24586 (get!14437 lt!1466775)))) (list!16313 (charsOf!4873 (_1!24586 (get!14437 lt!1466775))))))))

(declare-fun b!4100919 () Bool)

(assert (=> b!4100919 (= e!2544873 e!2544875)))

(declare-fun res!1676561 () Bool)

(assert (=> b!4100919 (=> (not res!1676561) (not e!2544875))))

(assert (=> b!4100919 (= res!1676561 (isDefined!7207 lt!1466775))))

(assert (= (and d!1217522 c!706485) b!4100911))

(assert (= (and d!1217522 (not c!706485)) b!4100916))

(assert (= (or b!4100911 b!4100916) bm!289765))

(assert (= (and d!1217522 (not res!1676559)) b!4100919))

(assert (= (and b!4100919 res!1676561) b!4100914))

(assert (= (and b!4100914 res!1676564) b!4100913))

(assert (= (and b!4100913 res!1676562) b!4100912))

(assert (= (and b!4100912 res!1676560) b!4100915))

(assert (= (and b!4100915 res!1676563) b!4100918))

(assert (= (and b!4100918 res!1676558) b!4100917))

(assert (=> b!4100916 m!4707503))

(declare-fun m!4707587 () Bool)

(assert (=> d!1217522 m!4707587))

(assert (=> d!1217522 m!4707551))

(assert (=> d!1217522 m!4707553))

(assert (=> d!1217522 m!4707511))

(declare-fun m!4707589 () Bool)

(assert (=> bm!289765 m!4707589))

(declare-fun m!4707591 () Bool)

(assert (=> b!4100918 m!4707591))

(declare-fun m!4707593 () Bool)

(assert (=> b!4100918 m!4707593))

(assert (=> b!4100918 m!4707593))

(declare-fun m!4707595 () Bool)

(assert (=> b!4100918 m!4707595))

(assert (=> b!4100918 m!4707595))

(declare-fun m!4707597 () Bool)

(assert (=> b!4100918 m!4707597))

(declare-fun m!4707599 () Bool)

(assert (=> b!4100919 m!4707599))

(assert (=> b!4100915 m!4707591))

(declare-fun m!4707601 () Bool)

(assert (=> b!4100915 m!4707601))

(assert (=> b!4100915 m!4707601))

(declare-fun m!4707603 () Bool)

(assert (=> b!4100915 m!4707603))

(assert (=> b!4100914 m!4707591))

(assert (=> b!4100914 m!4707593))

(assert (=> b!4100914 m!4707593))

(assert (=> b!4100914 m!4707595))

(assert (=> b!4100913 m!4707591))

(declare-fun m!4707605 () Bool)

(assert (=> b!4100913 m!4707605))

(assert (=> b!4100913 m!4707575))

(assert (=> b!4100912 m!4707591))

(assert (=> b!4100912 m!4707593))

(assert (=> b!4100912 m!4707593))

(assert (=> b!4100912 m!4707595))

(assert (=> b!4100912 m!4707595))

(declare-fun m!4707607 () Bool)

(assert (=> b!4100912 m!4707607))

(assert (=> b!4100917 m!4707591))

(declare-fun m!4707609 () Bool)

(assert (=> b!4100917 m!4707609))

(assert (=> b!4100838 d!1217522))

(declare-fun d!1217524 () Bool)

(assert (=> d!1217524 (= (isEmpty!26338 (t!339813 rTail!27)) ((_ is Nil!44032) (t!339813 rTail!27)))))

(assert (=> b!4100843 d!1217524))

(declare-fun d!1217526 () Bool)

(assert (=> d!1217526 (not (= (tag!7998 rHead!24) (tag!7998 (h!49452 rTail!27))))))

(declare-fun lt!1466778 () Unit!63555)

(declare-fun choose!25059 (LexerInterface!6727 List!44156 Rule!14076 Rule!14076) Unit!63555)

(assert (=> d!1217526 (= lt!1466778 (choose!25059 thiss!26455 lt!1466734 rHead!24 (h!49452 rTail!27)))))

(assert (=> d!1217526 (contains!8815 lt!1466734 rHead!24)))

(assert (=> d!1217526 (= (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!14 thiss!26455 lt!1466734 rHead!24 (h!49452 rTail!27)) lt!1466778)))

(declare-fun bs!593848 () Bool)

(assert (= bs!593848 d!1217526))

(declare-fun m!4707611 () Bool)

(assert (=> bs!593848 m!4707611))

(declare-fun m!4707613 () Bool)

(assert (=> bs!593848 m!4707613))

(assert (=> b!4100843 d!1217526))

(declare-fun d!1217528 () Bool)

(declare-fun res!1676565 () Bool)

(declare-fun e!2544876 () Bool)

(assert (=> d!1217528 (=> res!1676565 e!2544876)))

(assert (=> d!1217528 (= res!1676565 ((_ is Nil!44032) (Cons!44032 (h!49452 rTail!27) lt!1466737)))))

(assert (=> d!1217528 (= (noDuplicateTag!2817 thiss!26455 (Cons!44032 (h!49452 rTail!27) lt!1466737) Nil!44033) e!2544876)))

(declare-fun b!4100920 () Bool)

(declare-fun e!2544877 () Bool)

(assert (=> b!4100920 (= e!2544876 e!2544877)))

(declare-fun res!1676566 () Bool)

(assert (=> b!4100920 (=> (not res!1676566) (not e!2544877))))

(assert (=> b!4100920 (= res!1676566 (not (contains!8814 Nil!44033 (tag!7998 (h!49452 (Cons!44032 (h!49452 rTail!27) lt!1466737))))))))

(declare-fun b!4100921 () Bool)

(assert (=> b!4100921 (= e!2544877 (noDuplicateTag!2817 thiss!26455 (t!339813 (Cons!44032 (h!49452 rTail!27) lt!1466737)) (Cons!44033 (tag!7998 (h!49452 (Cons!44032 (h!49452 rTail!27) lt!1466737))) Nil!44033)))))

(assert (= (and d!1217528 (not res!1676565)) b!4100920))

(assert (= (and b!4100920 res!1676566) b!4100921))

(declare-fun m!4707615 () Bool)

(assert (=> b!4100920 m!4707615))

(declare-fun m!4707617 () Bool)

(assert (=> b!4100921 m!4707617))

(assert (=> b!4100843 d!1217528))

(declare-fun d!1217530 () Bool)

(assert (=> d!1217530 (noDuplicateTag!2817 thiss!26455 (Cons!44032 (h!49452 rTail!27) (Cons!44032 rHead!24 (t!339813 rTail!27))) Nil!44033)))

(declare-fun lt!1466786 () Unit!63555)

(declare-fun choose!25061 (LexerInterface!6727 Rule!14076 Rule!14076 List!44156) Unit!63555)

(assert (=> d!1217530 (= lt!1466786 (choose!25061 thiss!26455 rHead!24 (h!49452 rTail!27) (t!339813 rTail!27)))))

(assert (=> d!1217530 (noDuplicateTag!2817 thiss!26455 (Cons!44032 rHead!24 (Cons!44032 (h!49452 rTail!27) (t!339813 rTail!27))) Nil!44033)))

(assert (=> d!1217530 (= (lemmaNoDuplicateCanReorder!16 thiss!26455 rHead!24 (h!49452 rTail!27) (t!339813 rTail!27)) lt!1466786)))

(declare-fun bs!593849 () Bool)

(assert (= bs!593849 d!1217530))

(declare-fun m!4707619 () Bool)

(assert (=> bs!593849 m!4707619))

(declare-fun m!4707621 () Bool)

(assert (=> bs!593849 m!4707621))

(declare-fun m!4707623 () Bool)

(assert (=> bs!593849 m!4707623))

(assert (=> b!4100843 d!1217530))

(declare-fun d!1217532 () Bool)

(assert (=> d!1217532 (= (isEmpty!26338 rTail!27) ((_ is Nil!44032) rTail!27))))

(assert (=> b!4100837 d!1217532))

(declare-fun d!1217534 () Bool)

(assert (=> d!1217534 (= (inv!58748 (tag!7998 rHead!24)) (= (mod (str.len (value!224051 (tag!7998 rHead!24))) 2) 0))))

(assert (=> b!4100841 d!1217534))

(declare-fun d!1217536 () Bool)

(declare-fun res!1676576 () Bool)

(declare-fun e!2544883 () Bool)

(assert (=> d!1217536 (=> (not res!1676576) (not e!2544883))))

(declare-fun semiInverseModEq!3067 (Int Int) Bool)

(assert (=> d!1217536 (= res!1676576 (semiInverseModEq!3067 (toChars!9605 (transformation!7138 rHead!24)) (toValue!9746 (transformation!7138 rHead!24))))))

(assert (=> d!1217536 (= (inv!58750 (transformation!7138 rHead!24)) e!2544883)))

(declare-fun b!4100933 () Bool)

(declare-fun equivClasses!2966 (Int Int) Bool)

(assert (=> b!4100933 (= e!2544883 (equivClasses!2966 (toChars!9605 (transformation!7138 rHead!24)) (toValue!9746 (transformation!7138 rHead!24))))))

(assert (= (and d!1217536 res!1676576) b!4100933))

(declare-fun m!4707653 () Bool)

(assert (=> d!1217536 m!4707653))

(declare-fun m!4707657 () Bool)

(assert (=> b!4100933 m!4707657))

(assert (=> b!4100841 d!1217536))

(declare-fun d!1217538 () Bool)

(assert (=> d!1217538 (= (inv!58748 (tag!7998 (h!49452 rTail!27))) (= (mod (str.len (value!224051 (tag!7998 (h!49452 rTail!27)))) 2) 0))))

(assert (=> b!4100846 d!1217538))

(declare-fun d!1217540 () Bool)

(declare-fun res!1676577 () Bool)

(declare-fun e!2544884 () Bool)

(assert (=> d!1217540 (=> (not res!1676577) (not e!2544884))))

(assert (=> d!1217540 (= res!1676577 (semiInverseModEq!3067 (toChars!9605 (transformation!7138 (h!49452 rTail!27))) (toValue!9746 (transformation!7138 (h!49452 rTail!27)))))))

(assert (=> d!1217540 (= (inv!58750 (transformation!7138 (h!49452 rTail!27))) e!2544884)))

(declare-fun b!4100934 () Bool)

(assert (=> b!4100934 (= e!2544884 (equivClasses!2966 (toChars!9605 (transformation!7138 (h!49452 rTail!27))) (toValue!9746 (transformation!7138 (h!49452 rTail!27)))))))

(assert (= (and d!1217540 res!1676577) b!4100934))

(declare-fun m!4707663 () Bool)

(assert (=> d!1217540 m!4707663))

(declare-fun m!4707665 () Bool)

(assert (=> b!4100934 m!4707665))

(assert (=> b!4100846 d!1217540))

(declare-fun d!1217544 () Bool)

(assert (=> d!1217544 true))

(declare-fun lt!1466808 () Bool)

(declare-fun lambda!128230 () Int)

(declare-fun forall!8421 (List!44156 Int) Bool)

(assert (=> d!1217544 (= lt!1466808 (forall!8421 rTail!27 lambda!128230))))

(declare-fun e!2544909 () Bool)

(assert (=> d!1217544 (= lt!1466808 e!2544909)))

(declare-fun res!1676605 () Bool)

(assert (=> d!1217544 (=> res!1676605 e!2544909)))

(assert (=> d!1217544 (= res!1676605 (not ((_ is Cons!44032) rTail!27)))))

(assert (=> d!1217544 (= (rulesValidInductive!2643 thiss!26455 rTail!27) lt!1466808)))

(declare-fun b!4100964 () Bool)

(declare-fun e!2544908 () Bool)

(assert (=> b!4100964 (= e!2544909 e!2544908)))

(declare-fun res!1676606 () Bool)

(assert (=> b!4100964 (=> (not res!1676606) (not e!2544908))))

(declare-fun ruleValid!3043 (LexerInterface!6727 Rule!14076) Bool)

(assert (=> b!4100964 (= res!1676606 (ruleValid!3043 thiss!26455 (h!49452 rTail!27)))))

(declare-fun b!4100965 () Bool)

(assert (=> b!4100965 (= e!2544908 (rulesValidInductive!2643 thiss!26455 (t!339813 rTail!27)))))

(assert (= (and d!1217544 (not res!1676605)) b!4100964))

(assert (= (and b!4100964 res!1676606) b!4100965))

(declare-fun m!4707721 () Bool)

(assert (=> d!1217544 m!4707721))

(declare-fun m!4707723 () Bool)

(assert (=> b!4100964 m!4707723))

(assert (=> b!4100965 m!4707555))

(assert (=> b!4100835 d!1217544))

(declare-fun b!4100972 () Bool)

(declare-fun e!2544912 () Bool)

(declare-fun tp!1241687 () Bool)

(assert (=> b!4100972 (= e!2544912 (and tp_is_empty!21073 tp!1241687))))

(assert (=> b!4100839 (= tp!1241677 e!2544912)))

(assert (= (and b!4100839 ((_ is Cons!44030) (t!339811 input!3491))) b!4100972))

(declare-fun b!4100983 () Bool)

(declare-fun b_free!114841 () Bool)

(declare-fun b_next!115545 () Bool)

(assert (=> b!4100983 (= b_free!114841 (not b_next!115545))))

(declare-fun tp!1241698 () Bool)

(declare-fun b_and!316655 () Bool)

(assert (=> b!4100983 (= tp!1241698 b_and!316655)))

(declare-fun b_free!114843 () Bool)

(declare-fun b_next!115547 () Bool)

(assert (=> b!4100983 (= b_free!114843 (not b_next!115547))))

(declare-fun tp!1241696 () Bool)

(declare-fun b_and!316657 () Bool)

(assert (=> b!4100983 (= tp!1241696 b_and!316657)))

(declare-fun e!2544921 () Bool)

(assert (=> b!4100983 (= e!2544921 (and tp!1241698 tp!1241696))))

(declare-fun b!4100982 () Bool)

(declare-fun tp!1241697 () Bool)

(declare-fun e!2544922 () Bool)

(assert (=> b!4100982 (= e!2544922 (and tp!1241697 (inv!58748 (tag!7998 (h!49452 (t!339813 rTail!27)))) (inv!58750 (transformation!7138 (h!49452 (t!339813 rTail!27)))) e!2544921))))

(declare-fun b!4100981 () Bool)

(declare-fun e!2544923 () Bool)

(declare-fun tp!1241699 () Bool)

(assert (=> b!4100981 (= e!2544923 (and e!2544922 tp!1241699))))

(assert (=> b!4100836 (= tp!1241678 e!2544923)))

(assert (= b!4100982 b!4100983))

(assert (= b!4100981 b!4100982))

(assert (= (and b!4100836 ((_ is Cons!44032) (t!339813 rTail!27))) b!4100981))

(declare-fun m!4707725 () Bool)

(assert (=> b!4100982 m!4707725))

(declare-fun m!4707727 () Bool)

(assert (=> b!4100982 m!4707727))

(declare-fun b!4100997 () Bool)

(declare-fun e!2544927 () Bool)

(declare-fun tp!1241711 () Bool)

(declare-fun tp!1241710 () Bool)

(assert (=> b!4100997 (= e!2544927 (and tp!1241711 tp!1241710))))

(declare-fun b!4100995 () Bool)

(declare-fun tp!1241714 () Bool)

(declare-fun tp!1241712 () Bool)

(assert (=> b!4100995 (= e!2544927 (and tp!1241714 tp!1241712))))

(declare-fun b!4100996 () Bool)

(declare-fun tp!1241713 () Bool)

(assert (=> b!4100996 (= e!2544927 tp!1241713)))

(declare-fun b!4100994 () Bool)

(assert (=> b!4100994 (= e!2544927 tp_is_empty!21073)))

(assert (=> b!4100841 (= tp!1241683 e!2544927)))

(assert (= (and b!4100841 ((_ is ElementMatch!12043) (regex!7138 rHead!24))) b!4100994))

(assert (= (and b!4100841 ((_ is Concat!19411) (regex!7138 rHead!24))) b!4100995))

(assert (= (and b!4100841 ((_ is Star!12043) (regex!7138 rHead!24))) b!4100996))

(assert (= (and b!4100841 ((_ is Union!12043) (regex!7138 rHead!24))) b!4100997))

(declare-fun b!4101001 () Bool)

(declare-fun e!2544928 () Bool)

(declare-fun tp!1241716 () Bool)

(declare-fun tp!1241715 () Bool)

(assert (=> b!4101001 (= e!2544928 (and tp!1241716 tp!1241715))))

(declare-fun b!4100999 () Bool)

(declare-fun tp!1241719 () Bool)

(declare-fun tp!1241717 () Bool)

(assert (=> b!4100999 (= e!2544928 (and tp!1241719 tp!1241717))))

(declare-fun b!4101000 () Bool)

(declare-fun tp!1241718 () Bool)

(assert (=> b!4101000 (= e!2544928 tp!1241718)))

(declare-fun b!4100998 () Bool)

(assert (=> b!4100998 (= e!2544928 tp_is_empty!21073)))

(assert (=> b!4100846 (= tp!1241684 e!2544928)))

(assert (= (and b!4100846 ((_ is ElementMatch!12043) (regex!7138 (h!49452 rTail!27)))) b!4100998))

(assert (= (and b!4100846 ((_ is Concat!19411) (regex!7138 (h!49452 rTail!27)))) b!4100999))

(assert (= (and b!4100846 ((_ is Star!12043) (regex!7138 (h!49452 rTail!27)))) b!4101000))

(assert (= (and b!4100846 ((_ is Union!12043) (regex!7138 (h!49452 rTail!27)))) b!4101001))

(check-sat (not b!4100920) (not b!4100982) (not b_next!115539) (not b!4101000) (not b!4100887) (not b!4100885) (not b!4100860) b_and!316651 b_and!316647 (not d!1217522) (not b!4101001) (not d!1217498) (not b!4100884) (not b_next!115541) (not b!4100889) (not b!4100933) (not b!4100934) (not b_next!115547) (not d!1217536) (not d!1217518) (not bm!289765) (not b!4100965) (not b!4100972) b_and!316655 (not b_next!115545) (not d!1217508) b_and!316653 (not d!1217526) (not b!4100883) (not b_next!115537) (not b!4100882) (not b!4100886) (not d!1217544) (not b!4100861) (not b!4100917) (not b!4100918) (not b!4100921) (not b!4100999) (not b!4100915) (not b!4100914) (not d!1217520) (not b!4100913) (not b!4100916) (not b!4100912) (not b!4100997) tp_is_empty!21073 (not b!4100964) (not b!4100996) (not d!1217530) (not b!4100995) (not b!4100853) (not b!4100910) (not b!4100852) b_and!316657 (not b_next!115543) (not d!1217504) (not b!4100919) (not b!4100888) (not d!1217540) (not bm!289762) (not b!4100981) b_and!316649)
(check-sat b_and!316647 (not b_next!115541) (not b_next!115547) b_and!316655 (not b_next!115545) b_and!316653 (not b_next!115537) (not b_next!115539) b_and!316651 b_and!316649 b_and!316657 (not b_next!115543))
