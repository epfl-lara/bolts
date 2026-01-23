; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!388552 () Bool)

(assert start!388552)

(declare-fun b!4101115 () Bool)

(declare-fun b_free!114857 () Bool)

(declare-fun b_next!115561 () Bool)

(assert (=> b!4101115 (= b_free!114857 (not b_next!115561))))

(declare-fun tp!1241797 () Bool)

(declare-fun b_and!316671 () Bool)

(assert (=> b!4101115 (= tp!1241797 b_and!316671)))

(declare-fun b_free!114859 () Bool)

(declare-fun b_next!115563 () Bool)

(assert (=> b!4101115 (= b_free!114859 (not b_next!115563))))

(declare-fun tp!1241798 () Bool)

(declare-fun b_and!316673 () Bool)

(assert (=> b!4101115 (= tp!1241798 b_and!316673)))

(declare-fun b!4101120 () Bool)

(declare-fun b_free!114861 () Bool)

(declare-fun b_next!115565 () Bool)

(assert (=> b!4101120 (= b_free!114861 (not b_next!115565))))

(declare-fun tp!1241795 () Bool)

(declare-fun b_and!316675 () Bool)

(assert (=> b!4101120 (= tp!1241795 b_and!316675)))

(declare-fun b_free!114863 () Bool)

(declare-fun b_next!115567 () Bool)

(assert (=> b!4101120 (= b_free!114863 (not b_next!115567))))

(declare-fun tp!1241802 () Bool)

(declare-fun b_and!316677 () Bool)

(assert (=> b!4101120 (= tp!1241802 b_and!316677)))

(declare-fun b!4101111 () Bool)

(declare-fun e!2545026 () Bool)

(declare-datatypes ((List!44162 0))(
  ( (Nil!44038) (Cons!44038 (h!49458 (_ BitVec 16)) (t!339819 List!44162)) )
))
(declare-datatypes ((TokenValue!7370 0))(
  ( (FloatLiteralValue!14740 (text!52035 List!44162)) (TokenValueExt!7369 (__x!26957 Int)) (Broken!36850 (value!224108 List!44162)) (Object!7493) (End!7370) (Def!7370) (Underscore!7370) (Match!7370) (Else!7370) (Error!7370) (Case!7370) (If!7370) (Extends!7370) (Abstract!7370) (Class!7370) (Val!7370) (DelimiterValue!14740 (del!7430 List!44162)) (KeywordValue!7376 (value!224109 List!44162)) (CommentValue!14740 (value!224110 List!44162)) (WhitespaceValue!14740 (value!224111 List!44162)) (IndentationValue!7370 (value!224112 List!44162)) (String!50599) (Int32!7370) (Broken!36851 (value!224113 List!44162)) (Boolean!7371) (Unit!63560) (OperatorValue!7373 (op!7430 List!44162)) (IdentifierValue!14740 (value!224114 List!44162)) (IdentifierValue!14741 (value!224115 List!44162)) (WhitespaceValue!14741 (value!224116 List!44162)) (True!14740) (False!14740) (Broken!36852 (value!224117 List!44162)) (Broken!36853 (value!224118 List!44162)) (True!14741) (RightBrace!7370) (RightBracket!7370) (Colon!7370) (Null!7370) (Comma!7370) (LeftBracket!7370) (False!14741) (LeftBrace!7370) (ImaginaryLiteralValue!7370 (text!52036 List!44162)) (StringLiteralValue!22110 (value!224119 List!44162)) (EOFValue!7370 (value!224120 List!44162)) (IdentValue!7370 (value!224121 List!44162)) (DelimiterValue!14741 (value!224122 List!44162)) (DedentValue!7370 (value!224123 List!44162)) (NewLineValue!7370 (value!224124 List!44162)) (IntegerValue!22110 (value!224125 (_ BitVec 32)) (text!52037 List!44162)) (IntegerValue!22111 (value!224126 Int) (text!52038 List!44162)) (Times!7370) (Or!7370) (Equal!7370) (Minus!7370) (Broken!36854 (value!224127 List!44162)) (And!7370) (Div!7370) (LessEqual!7370) (Mod!7370) (Concat!19415) (Not!7370) (Plus!7370) (SpaceValue!7370 (value!224128 List!44162)) (IntegerValue!22112 (value!224129 Int) (text!52039 List!44162)) (StringLiteralValue!22111 (text!52040 List!44162)) (FloatLiteralValue!14741 (text!52041 List!44162)) (BytesLiteralValue!7370 (value!224130 List!44162)) (CommentValue!14741 (value!224131 List!44162)) (StringLiteralValue!22112 (value!224132 List!44162)) (ErrorTokenValue!7370 (msg!7431 List!44162)) )
))
(declare-datatypes ((C!24276 0))(
  ( (C!24277 (val!14248 Int)) )
))
(declare-datatypes ((Regex!12045 0))(
  ( (ElementMatch!12045 (c!706492 C!24276)) (Concat!19416 (regOne!24602 Regex!12045) (regTwo!24602 Regex!12045)) (EmptyExpr!12045) (Star!12045 (reg!12374 Regex!12045)) (EmptyLang!12045) (Union!12045 (regOne!24603 Regex!12045) (regTwo!24603 Regex!12045)) )
))
(declare-datatypes ((String!50600 0))(
  ( (String!50601 (value!224133 String)) )
))
(declare-datatypes ((List!44163 0))(
  ( (Nil!44039) (Cons!44039 (h!49459 C!24276) (t!339820 List!44163)) )
))
(declare-datatypes ((IArray!26707 0))(
  ( (IArray!26708 (innerList!13411 List!44163)) )
))
(declare-datatypes ((Conc!13351 0))(
  ( (Node!13351 (left!33083 Conc!13351) (right!33413 Conc!13351) (csize!26932 Int) (cheight!13562 Int)) (Leaf!20636 (xs!16657 IArray!26707) (csize!26933 Int)) (Empty!13351) )
))
(declare-datatypes ((BalanceConc!26296 0))(
  ( (BalanceConc!26297 (c!706493 Conc!13351)) )
))
(declare-datatypes ((TokenValueInjection!14168 0))(
  ( (TokenValueInjection!14169 (toValue!9748 Int) (toChars!9607 Int)) )
))
(declare-datatypes ((Rule!14080 0))(
  ( (Rule!14081 (regex!7140 Regex!12045) (tag!8000 String!50600) (isSeparator!7140 Bool) (transformation!7140 TokenValueInjection!14168)) )
))
(declare-datatypes ((Token!13390 0))(
  ( (Token!13391 (value!224134 TokenValue!7370) (rule!10290 Rule!14080) (size!32863 Int) (originalCharacters!7726 List!44163)) )
))
(declare-datatypes ((tuple2!42908 0))(
  ( (tuple2!42909 (_1!24588 Token!13390) (_2!24588 List!44163)) )
))
(declare-datatypes ((Option!9538 0))(
  ( (None!9537) (Some!9537 (v!40045 tuple2!42908)) )
))
(declare-fun lt!1466850 () Option!9538)

(declare-fun rHead!24 () Rule!14080)

(declare-fun get!14440 (Option!9538) tuple2!42908)

(assert (=> b!4101111 (= e!2545026 (not (= (rule!10290 (_1!24588 (get!14440 lt!1466850))) rHead!24)))))

(declare-fun b!4101112 () Bool)

(declare-fun res!1676650 () Bool)

(declare-fun e!2545023 () Bool)

(assert (=> b!4101112 (=> (not res!1676650) (not e!2545023))))

(declare-datatypes ((List!44164 0))(
  ( (Nil!44040) (Cons!44040 (h!49460 Rule!14080) (t!339821 List!44164)) )
))
(declare-fun rTail!27 () List!44164)

(get-info :version)

(assert (=> b!4101112 (= res!1676650 ((_ is Cons!44040) rTail!27))))

(declare-fun b!4101113 () Bool)

(declare-fun e!2545028 () Bool)

(assert (=> b!4101113 (= e!2545023 (not e!2545028))))

(declare-fun res!1676653 () Bool)

(assert (=> b!4101113 (=> res!1676653 e!2545028)))

(declare-fun isEmpty!26342 (List!44164) Bool)

(assert (=> b!4101113 (= res!1676653 (isEmpty!26342 (t!339821 rTail!27)))))

(assert (=> b!4101113 (not (= (tag!8000 rHead!24) (tag!8000 (h!49460 rTail!27))))))

(declare-datatypes ((LexerInterface!6729 0))(
  ( (LexerInterfaceExt!6726 (__x!26958 Int)) (Lexer!6727) )
))
(declare-fun thiss!26455 () LexerInterface!6729)

(declare-datatypes ((Unit!63561 0))(
  ( (Unit!63562) )
))
(declare-fun lt!1466852 () Unit!63561)

(declare-fun lt!1466854 () List!44164)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!16 (LexerInterface!6729 List!44164 Rule!14080 Rule!14080) Unit!63561)

(assert (=> b!4101113 (= lt!1466852 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!16 thiss!26455 lt!1466854 rHead!24 (h!49460 rTail!27)))))

(declare-fun lt!1466855 () List!44164)

(declare-datatypes ((List!44165 0))(
  ( (Nil!44041) (Cons!44041 (h!49461 String!50600) (t!339822 List!44165)) )
))
(declare-fun noDuplicateTag!2819 (LexerInterface!6729 List!44164 List!44165) Bool)

(assert (=> b!4101113 (noDuplicateTag!2819 thiss!26455 (Cons!44040 (h!49460 rTail!27) lt!1466855) Nil!44041)))

(assert (=> b!4101113 (= lt!1466855 (Cons!44040 rHead!24 (t!339821 rTail!27)))))

(declare-fun lt!1466851 () Unit!63561)

(declare-fun lemmaNoDuplicateCanReorder!18 (LexerInterface!6729 Rule!14080 Rule!14080 List!44164) Unit!63561)

(assert (=> b!4101113 (= lt!1466851 (lemmaNoDuplicateCanReorder!18 thiss!26455 rHead!24 (h!49460 rTail!27) (t!339821 rTail!27)))))

(declare-fun e!2545025 () Bool)

(declare-fun e!2545033 () Bool)

(declare-fun b!4101114 () Bool)

(declare-fun tp!1241796 () Bool)

(declare-fun inv!58753 (String!50600) Bool)

(declare-fun inv!58755 (TokenValueInjection!14168) Bool)

(assert (=> b!4101114 (= e!2545025 (and tp!1241796 (inv!58753 (tag!8000 (h!49460 rTail!27))) (inv!58755 (transformation!7140 (h!49460 rTail!27))) e!2545033))))

(assert (=> b!4101115 (= e!2545033 (and tp!1241797 tp!1241798))))

(declare-fun b!4101116 () Bool)

(declare-fun e!2545029 () Bool)

(assert (=> b!4101116 (= e!2545029 e!2545023)))

(declare-fun res!1676652 () Bool)

(assert (=> b!4101116 (=> (not res!1676652) (not e!2545023))))

(declare-fun rulesInvariant!6072 (LexerInterface!6729 List!44164) Bool)

(assert (=> b!4101116 (= res!1676652 (rulesInvariant!6072 thiss!26455 lt!1466854))))

(assert (=> b!4101116 (= lt!1466854 (Cons!44040 rHead!24 rTail!27))))

(declare-fun b!4101117 () Bool)

(declare-fun e!2545027 () Bool)

(declare-fun tp!1241799 () Bool)

(assert (=> b!4101117 (= e!2545027 (and e!2545025 tp!1241799))))

(declare-fun b!4101118 () Bool)

(declare-fun e!2545024 () Bool)

(declare-fun e!2545032 () Bool)

(assert (=> b!4101118 (= e!2545024 e!2545032)))

(declare-fun res!1676654 () Bool)

(assert (=> b!4101118 (=> res!1676654 e!2545032)))

(declare-fun input!3491 () List!44163)

(declare-fun isEmpty!26343 (Option!9538) Bool)

(declare-fun maxPrefix!4011 (LexerInterface!6729 List!44164 List!44163) Option!9538)

(assert (=> b!4101118 (= res!1676654 (isEmpty!26343 (maxPrefix!4011 thiss!26455 rTail!27 input!3491)))))

(assert (=> b!4101118 e!2545026))

(declare-fun res!1676656 () Bool)

(assert (=> b!4101118 (=> res!1676656 e!2545026)))

(assert (=> b!4101118 (= res!1676656 (isEmpty!26343 lt!1466850))))

(assert (=> b!4101118 (= lt!1466850 (maxPrefix!4011 thiss!26455 (t!339821 rTail!27) input!3491))))

(declare-fun lt!1466853 () Unit!63561)

(declare-fun lemmaNoDuplTagThenTailRulesCannotProduceHeadTagInTok!32 (LexerInterface!6729 Rule!14080 List!44164 List!44163) Unit!63561)

(assert (=> b!4101118 (= lt!1466853 (lemmaNoDuplTagThenTailRulesCannotProduceHeadTagInTok!32 thiss!26455 rHead!24 (t!339821 rTail!27) input!3491))))

(declare-fun b!4101119 () Bool)

(declare-fun res!1676651 () Bool)

(assert (=> b!4101119 (=> (not res!1676651) (not e!2545029))))

(assert (=> b!4101119 (= res!1676651 (not (isEmpty!26342 rTail!27)))))

(declare-fun e!2545031 () Bool)

(assert (=> b!4101120 (= e!2545031 (and tp!1241795 tp!1241802))))

(declare-fun res!1676657 () Bool)

(assert (=> start!388552 (=> (not res!1676657) (not e!2545029))))

(assert (=> start!388552 (= res!1676657 ((_ is Lexer!6727) thiss!26455))))

(assert (=> start!388552 e!2545029))

(assert (=> start!388552 true))

(assert (=> start!388552 e!2545027))

(declare-fun e!2545021 () Bool)

(assert (=> start!388552 e!2545021))

(declare-fun e!2545030 () Bool)

(assert (=> start!388552 e!2545030))

(declare-fun b!4101121 () Bool)

(assert (=> b!4101121 (= e!2545028 e!2545024)))

(declare-fun res!1676655 () Bool)

(assert (=> b!4101121 (=> res!1676655 e!2545024)))

(assert (=> b!4101121 (= res!1676655 (not (rulesInvariant!6072 thiss!26455 lt!1466855)))))

(assert (=> b!4101121 (noDuplicateTag!2819 thiss!26455 lt!1466855 Nil!44041)))

(declare-fun lt!1466857 () Unit!63561)

(declare-fun lemmaNoDupTagThenAlsoWithSubListAcc!14 (LexerInterface!6729 List!44165 List!44165 List!44164) Unit!63561)

(assert (=> b!4101121 (= lt!1466857 (lemmaNoDupTagThenAlsoWithSubListAcc!14 thiss!26455 (Cons!44041 (tag!8000 (h!49460 rTail!27)) Nil!44041) Nil!44041 lt!1466855))))

(declare-fun b!4101122 () Bool)

(declare-fun tp!1241800 () Bool)

(assert (=> b!4101122 (= e!2545030 (and tp!1241800 (inv!58753 (tag!8000 rHead!24)) (inv!58755 (transformation!7140 rHead!24)) e!2545031))))

(declare-fun b!4101123 () Bool)

(assert (=> b!4101123 (= e!2545032 true)))

(declare-fun lt!1466856 () Bool)

(declare-fun rulesValidInductive!2645 (LexerInterface!6729 List!44164) Bool)

(assert (=> b!4101123 (= lt!1466856 (rulesValidInductive!2645 thiss!26455 rTail!27))))

(declare-fun b!4101124 () Bool)

(declare-fun tp_is_empty!21077 () Bool)

(declare-fun tp!1241801 () Bool)

(assert (=> b!4101124 (= e!2545021 (and tp_is_empty!21077 tp!1241801))))

(assert (= (and start!388552 res!1676657) b!4101119))

(assert (= (and b!4101119 res!1676651) b!4101116))

(assert (= (and b!4101116 res!1676652) b!4101112))

(assert (= (and b!4101112 res!1676650) b!4101113))

(assert (= (and b!4101113 (not res!1676653)) b!4101121))

(assert (= (and b!4101121 (not res!1676655)) b!4101118))

(assert (= (and b!4101118 (not res!1676656)) b!4101111))

(assert (= (and b!4101118 (not res!1676654)) b!4101123))

(assert (= b!4101114 b!4101115))

(assert (= b!4101117 b!4101114))

(assert (= (and start!388552 ((_ is Cons!44040) rTail!27)) b!4101117))

(assert (= (and start!388552 ((_ is Cons!44039) input!3491)) b!4101124))

(assert (= b!4101122 b!4101120))

(assert (= start!388552 b!4101122))

(declare-fun m!4707781 () Bool)

(assert (=> b!4101123 m!4707781))

(declare-fun m!4707783 () Bool)

(assert (=> b!4101122 m!4707783))

(declare-fun m!4707785 () Bool)

(assert (=> b!4101122 m!4707785))

(declare-fun m!4707787 () Bool)

(assert (=> b!4101119 m!4707787))

(declare-fun m!4707789 () Bool)

(assert (=> b!4101113 m!4707789))

(declare-fun m!4707791 () Bool)

(assert (=> b!4101113 m!4707791))

(declare-fun m!4707793 () Bool)

(assert (=> b!4101113 m!4707793))

(declare-fun m!4707795 () Bool)

(assert (=> b!4101113 m!4707795))

(declare-fun m!4707797 () Bool)

(assert (=> b!4101121 m!4707797))

(declare-fun m!4707799 () Bool)

(assert (=> b!4101121 m!4707799))

(declare-fun m!4707801 () Bool)

(assert (=> b!4101121 m!4707801))

(declare-fun m!4707803 () Bool)

(assert (=> b!4101111 m!4707803))

(declare-fun m!4707805 () Bool)

(assert (=> b!4101114 m!4707805))

(declare-fun m!4707807 () Bool)

(assert (=> b!4101114 m!4707807))

(declare-fun m!4707809 () Bool)

(assert (=> b!4101118 m!4707809))

(declare-fun m!4707811 () Bool)

(assert (=> b!4101118 m!4707811))

(declare-fun m!4707813 () Bool)

(assert (=> b!4101118 m!4707813))

(assert (=> b!4101118 m!4707811))

(declare-fun m!4707815 () Bool)

(assert (=> b!4101118 m!4707815))

(declare-fun m!4707817 () Bool)

(assert (=> b!4101118 m!4707817))

(declare-fun m!4707819 () Bool)

(assert (=> b!4101116 m!4707819))

(check-sat (not b!4101116) (not b_next!115561) b_and!316671 (not b!4101117) (not b!4101111) (not b!4101123) tp_is_empty!21077 (not b!4101122) (not b!4101114) (not b_next!115567) (not b_next!115563) (not b!4101113) b_and!316675 (not b!4101119) (not b!4101121) b_and!316673 (not b_next!115565) (not b!4101124) (not b!4101118) b_and!316677)
(check-sat b_and!316675 b_and!316673 (not b_next!115561) (not b_next!115565) b_and!316671 b_and!316677 (not b_next!115567) (not b_next!115563))
