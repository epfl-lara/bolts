; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!388760 () Bool)

(assert start!388760)

(declare-fun b!4102781 () Bool)

(declare-fun b_free!115009 () Bool)

(declare-fun b_next!115713 () Bool)

(assert (=> b!4102781 (= b_free!115009 (not b_next!115713))))

(declare-fun tp!1243007 () Bool)

(declare-fun b_and!316823 () Bool)

(assert (=> b!4102781 (= tp!1243007 b_and!316823)))

(declare-fun b_free!115011 () Bool)

(declare-fun b_next!115715 () Bool)

(assert (=> b!4102781 (= b_free!115011 (not b_next!115715))))

(declare-fun tp!1243008 () Bool)

(declare-fun b_and!316825 () Bool)

(assert (=> b!4102781 (= tp!1243008 b_and!316825)))

(declare-fun b!4102774 () Bool)

(declare-fun b_free!115013 () Bool)

(declare-fun b_next!115717 () Bool)

(assert (=> b!4102774 (= b_free!115013 (not b_next!115717))))

(declare-fun tp!1243005 () Bool)

(declare-fun b_and!316827 () Bool)

(assert (=> b!4102774 (= tp!1243005 b_and!316827)))

(declare-fun b_free!115015 () Bool)

(declare-fun b_next!115719 () Bool)

(assert (=> b!4102774 (= b_free!115015 (not b_next!115719))))

(declare-fun tp!1243009 () Bool)

(declare-fun b_and!316829 () Bool)

(assert (=> b!4102774 (= tp!1243009 b_and!316829)))

(declare-fun b!4102773 () Bool)

(declare-fun e!2546062 () Bool)

(declare-fun e!2546064 () Bool)

(declare-fun tp!1243003 () Bool)

(assert (=> b!4102773 (= e!2546062 (and e!2546064 tp!1243003))))

(declare-fun e!2546065 () Bool)

(assert (=> b!4102774 (= e!2546065 (and tp!1243005 tp!1243009))))

(declare-fun e!2546068 () Bool)

(declare-fun tp!1243006 () Bool)

(declare-datatypes ((String!50669 0))(
  ( (String!50670 (value!224501 String)) )
))
(declare-datatypes ((C!24304 0))(
  ( (C!24305 (val!14262 Int)) )
))
(declare-datatypes ((List!44218 0))(
  ( (Nil!44094) (Cons!44094 (h!49514 C!24304) (t!339875 List!44218)) )
))
(declare-datatypes ((IArray!26735 0))(
  ( (IArray!26736 (innerList!13425 List!44218)) )
))
(declare-datatypes ((Conc!13365 0))(
  ( (Node!13365 (left!33112 Conc!13365) (right!33442 Conc!13365) (csize!26960 Int) (cheight!13576 Int)) (Leaf!20657 (xs!16671 IArray!26735) (csize!26961 Int)) (Empty!13365) )
))
(declare-datatypes ((List!44219 0))(
  ( (Nil!44095) (Cons!44095 (h!49515 (_ BitVec 16)) (t!339876 List!44219)) )
))
(declare-datatypes ((Regex!12059 0))(
  ( (ElementMatch!12059 (c!706560 C!24304)) (Concat!19443 (regOne!24630 Regex!12059) (regTwo!24630 Regex!12059)) (EmptyExpr!12059) (Star!12059 (reg!12388 Regex!12059)) (EmptyLang!12059) (Union!12059 (regOne!24631 Regex!12059) (regTwo!24631 Regex!12059)) )
))
(declare-datatypes ((TokenValue!7384 0))(
  ( (FloatLiteralValue!14768 (text!52133 List!44219)) (TokenValueExt!7383 (__x!26985 Int)) (Broken!36920 (value!224502 List!44219)) (Object!7507) (End!7384) (Def!7384) (Underscore!7384) (Match!7384) (Else!7384) (Error!7384) (Case!7384) (If!7384) (Extends!7384) (Abstract!7384) (Class!7384) (Val!7384) (DelimiterValue!14768 (del!7444 List!44219)) (KeywordValue!7390 (value!224503 List!44219)) (CommentValue!14768 (value!224504 List!44219)) (WhitespaceValue!14768 (value!224505 List!44219)) (IndentationValue!7384 (value!224506 List!44219)) (String!50671) (Int32!7384) (Broken!36921 (value!224507 List!44219)) (Boolean!7385) (Unit!63602) (OperatorValue!7387 (op!7444 List!44219)) (IdentifierValue!14768 (value!224508 List!44219)) (IdentifierValue!14769 (value!224509 List!44219)) (WhitespaceValue!14769 (value!224510 List!44219)) (True!14768) (False!14768) (Broken!36922 (value!224511 List!44219)) (Broken!36923 (value!224512 List!44219)) (True!14769) (RightBrace!7384) (RightBracket!7384) (Colon!7384) (Null!7384) (Comma!7384) (LeftBracket!7384) (False!14769) (LeftBrace!7384) (ImaginaryLiteralValue!7384 (text!52134 List!44219)) (StringLiteralValue!22152 (value!224513 List!44219)) (EOFValue!7384 (value!224514 List!44219)) (IdentValue!7384 (value!224515 List!44219)) (DelimiterValue!14769 (value!224516 List!44219)) (DedentValue!7384 (value!224517 List!44219)) (NewLineValue!7384 (value!224518 List!44219)) (IntegerValue!22152 (value!224519 (_ BitVec 32)) (text!52135 List!44219)) (IntegerValue!22153 (value!224520 Int) (text!52136 List!44219)) (Times!7384) (Or!7384) (Equal!7384) (Minus!7384) (Broken!36924 (value!224521 List!44219)) (And!7384) (Div!7384) (LessEqual!7384) (Mod!7384) (Concat!19444) (Not!7384) (Plus!7384) (SpaceValue!7384 (value!224522 List!44219)) (IntegerValue!22154 (value!224523 Int) (text!52137 List!44219)) (StringLiteralValue!22153 (text!52138 List!44219)) (FloatLiteralValue!14769 (text!52139 List!44219)) (BytesLiteralValue!7384 (value!224524 List!44219)) (CommentValue!14769 (value!224525 List!44219)) (StringLiteralValue!22154 (value!224526 List!44219)) (ErrorTokenValue!7384 (msg!7445 List!44219)) )
))
(declare-datatypes ((BalanceConc!26324 0))(
  ( (BalanceConc!26325 (c!706561 Conc!13365)) )
))
(declare-datatypes ((TokenValueInjection!14196 0))(
  ( (TokenValueInjection!14197 (toValue!9766 Int) (toChars!9625 Int)) )
))
(declare-datatypes ((Rule!14108 0))(
  ( (Rule!14109 (regex!7154 Regex!12059) (tag!8014 String!50669) (isSeparator!7154 Bool) (transformation!7154 TokenValueInjection!14196)) )
))
(declare-fun rHead!24 () Rule!14108)

(declare-fun b!4102775 () Bool)

(declare-fun inv!58788 (String!50669) Bool)

(declare-fun inv!58790 (TokenValueInjection!14196) Bool)

(assert (=> b!4102775 (= e!2546068 (and tp!1243006 (inv!58788 (tag!8014 rHead!24)) (inv!58790 (transformation!7154 rHead!24)) e!2546065))))

(declare-fun b!4102776 () Bool)

(declare-fun e!2546067 () Bool)

(declare-datatypes ((List!44220 0))(
  ( (Nil!44096) (Cons!44096 (h!49516 Rule!14108) (t!339877 List!44220)) )
))
(declare-fun rTail!27 () List!44220)

(declare-fun tp!1243004 () Bool)

(assert (=> b!4102776 (= e!2546064 (and tp!1243004 (inv!58788 (tag!8014 (h!49516 rTail!27))) (inv!58790 (transformation!7154 (h!49516 rTail!27))) e!2546067))))

(declare-fun b!4102777 () Bool)

(declare-fun e!2546061 () Bool)

(declare-fun tp_is_empty!21097 () Bool)

(declare-fun tp!1243010 () Bool)

(assert (=> b!4102777 (= e!2546061 (and tp_is_empty!21097 tp!1243010))))

(declare-fun b!4102778 () Bool)

(declare-fun res!1677290 () Bool)

(declare-fun e!2546066 () Bool)

(assert (=> b!4102778 (=> res!1677290 e!2546066)))

(declare-fun input!3491 () List!44218)

(declare-datatypes ((LexerInterface!6743 0))(
  ( (LexerInterfaceExt!6740 (__x!26986 Int)) (Lexer!6741) )
))
(declare-fun thiss!26455 () LexerInterface!6743)

(declare-datatypes ((Token!13406 0))(
  ( (Token!13407 (value!224527 TokenValue!7384) (rule!10298 Rule!14108) (size!32875 Int) (originalCharacters!7734 List!44218)) )
))
(declare-datatypes ((tuple2!42924 0))(
  ( (tuple2!42925 (_1!24596 Token!13406) (_2!24596 List!44218)) )
))
(declare-datatypes ((Option!9546 0))(
  ( (None!9545) (Some!9545 (v!40057 tuple2!42924)) )
))
(declare-fun isEmpty!26362 (Option!9546) Bool)

(declare-fun maxPrefix!4019 (LexerInterface!6743 List!44220 List!44218) Option!9546)

(assert (=> b!4102778 (= res!1677290 (isEmpty!26362 (maxPrefix!4019 thiss!26455 rTail!27 input!3491)))))

(declare-fun b!4102779 () Bool)

(declare-fun res!1677287 () Bool)

(declare-fun e!2546058 () Bool)

(assert (=> b!4102779 (=> (not res!1677287) (not e!2546058))))

(get-info :version)

(assert (=> b!4102779 (= res!1677287 ((_ is Cons!44096) rTail!27))))

(declare-fun b!4102780 () Bool)

(declare-fun res!1677289 () Bool)

(declare-fun e!2546063 () Bool)

(assert (=> b!4102780 (=> (not res!1677289) (not e!2546063))))

(declare-fun isEmpty!26363 (List!44220) Bool)

(assert (=> b!4102780 (= res!1677289 (not (isEmpty!26363 rTail!27)))))

(assert (=> b!4102781 (= e!2546067 (and tp!1243007 tp!1243008))))

(declare-fun b!4102782 () Bool)

(assert (=> b!4102782 (= e!2546058 (not e!2546066))))

(declare-fun res!1677291 () Bool)

(assert (=> b!4102782 (=> res!1677291 e!2546066)))

(assert (=> b!4102782 (= res!1677291 (not (isEmpty!26363 (t!339877 rTail!27))))))

(assert (=> b!4102782 (not (= (tag!8014 rHead!24) (tag!8014 (h!49516 rTail!27))))))

(declare-datatypes ((Unit!63603 0))(
  ( (Unit!63604) )
))
(declare-fun lt!1467193 () Unit!63603)

(declare-fun lt!1467190 () List!44220)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!30 (LexerInterface!6743 List!44220 Rule!14108 Rule!14108) Unit!63603)

(assert (=> b!4102782 (= lt!1467193 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!30 thiss!26455 lt!1467190 rHead!24 (h!49516 rTail!27)))))

(declare-datatypes ((List!44221 0))(
  ( (Nil!44097) (Cons!44097 (h!49517 String!50669) (t!339878 List!44221)) )
))
(declare-fun noDuplicateTag!2833 (LexerInterface!6743 List!44220 List!44221) Bool)

(assert (=> b!4102782 (noDuplicateTag!2833 thiss!26455 (Cons!44096 (h!49516 rTail!27) (Cons!44096 rHead!24 (t!339877 rTail!27))) Nil!44097)))

(declare-fun lt!1467191 () Unit!63603)

(declare-fun lemmaNoDuplicateCanReorder!32 (LexerInterface!6743 Rule!14108 Rule!14108 List!44220) Unit!63603)

(assert (=> b!4102782 (= lt!1467191 (lemmaNoDuplicateCanReorder!32 thiss!26455 rHead!24 (h!49516 rTail!27) (t!339877 rTail!27)))))

(declare-fun res!1677288 () Bool)

(assert (=> start!388760 (=> (not res!1677288) (not e!2546063))))

(assert (=> start!388760 (= res!1677288 ((_ is Lexer!6741) thiss!26455))))

(assert (=> start!388760 e!2546063))

(assert (=> start!388760 true))

(assert (=> start!388760 e!2546062))

(assert (=> start!388760 e!2546061))

(assert (=> start!388760 e!2546068))

(declare-fun b!4102783 () Bool)

(assert (=> b!4102783 (= e!2546066 true)))

(declare-fun lt!1467192 () Bool)

(declare-fun rulesValidInductive!2655 (LexerInterface!6743 List!44220) Bool)

(assert (=> b!4102783 (= lt!1467192 (rulesValidInductive!2655 thiss!26455 rTail!27))))

(declare-fun b!4102784 () Bool)

(assert (=> b!4102784 (= e!2546063 e!2546058)))

(declare-fun res!1677286 () Bool)

(assert (=> b!4102784 (=> (not res!1677286) (not e!2546058))))

(declare-fun rulesInvariant!6086 (LexerInterface!6743 List!44220) Bool)

(assert (=> b!4102784 (= res!1677286 (rulesInvariant!6086 thiss!26455 lt!1467190))))

(assert (=> b!4102784 (= lt!1467190 (Cons!44096 rHead!24 rTail!27))))

(assert (= (and start!388760 res!1677288) b!4102780))

(assert (= (and b!4102780 res!1677289) b!4102784))

(assert (= (and b!4102784 res!1677286) b!4102779))

(assert (= (and b!4102779 res!1677287) b!4102782))

(assert (= (and b!4102782 (not res!1677291)) b!4102778))

(assert (= (and b!4102778 (not res!1677290)) b!4102783))

(assert (= b!4102776 b!4102781))

(assert (= b!4102773 b!4102776))

(assert (= (and start!388760 ((_ is Cons!44096) rTail!27)) b!4102773))

(assert (= (and start!388760 ((_ is Cons!44094) input!3491)) b!4102777))

(assert (= b!4102775 b!4102774))

(assert (= start!388760 b!4102775))

(declare-fun m!4708855 () Bool)

(assert (=> b!4102782 m!4708855))

(declare-fun m!4708857 () Bool)

(assert (=> b!4102782 m!4708857))

(declare-fun m!4708859 () Bool)

(assert (=> b!4102782 m!4708859))

(declare-fun m!4708861 () Bool)

(assert (=> b!4102782 m!4708861))

(declare-fun m!4708863 () Bool)

(assert (=> b!4102778 m!4708863))

(assert (=> b!4102778 m!4708863))

(declare-fun m!4708865 () Bool)

(assert (=> b!4102778 m!4708865))

(declare-fun m!4708867 () Bool)

(assert (=> b!4102784 m!4708867))

(declare-fun m!4708869 () Bool)

(assert (=> b!4102783 m!4708869))

(declare-fun m!4708871 () Bool)

(assert (=> b!4102776 m!4708871))

(declare-fun m!4708873 () Bool)

(assert (=> b!4102776 m!4708873))

(declare-fun m!4708875 () Bool)

(assert (=> b!4102780 m!4708875))

(declare-fun m!4708877 () Bool)

(assert (=> b!4102775 m!4708877))

(declare-fun m!4708879 () Bool)

(assert (=> b!4102775 m!4708879))

(check-sat (not b!4102778) (not b_next!115715) (not b!4102776) tp_is_empty!21097 (not b!4102777) b_and!316825 (not b_next!115717) (not b_next!115713) b_and!316829 b_and!316823 (not b!4102783) (not b_next!115719) (not b!4102775) (not b!4102784) b_and!316827 (not b!4102782) (not b!4102773) (not b!4102780))
(check-sat (not b_next!115715) b_and!316825 (not b_next!115717) (not b_next!115713) b_and!316829 b_and!316823 (not b_next!115719) b_and!316827)
