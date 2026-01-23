; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!402688 () Bool)

(assert start!402688)

(declare-fun b!4213716 () Bool)

(declare-fun b_free!123475 () Bool)

(declare-fun b_next!124179 () Bool)

(assert (=> b!4213716 (= b_free!123475 (not b_next!124179))))

(declare-fun tp!1288740 () Bool)

(declare-fun b_and!331781 () Bool)

(assert (=> b!4213716 (= tp!1288740 b_and!331781)))

(declare-fun b_free!123477 () Bool)

(declare-fun b_next!124181 () Bool)

(assert (=> b!4213716 (= b_free!123477 (not b_next!124181))))

(declare-fun tp!1288736 () Bool)

(declare-fun b_and!331783 () Bool)

(assert (=> b!4213716 (= tp!1288736 b_and!331783)))

(declare-fun b!4213695 () Bool)

(declare-fun b_free!123479 () Bool)

(declare-fun b_next!124183 () Bool)

(assert (=> b!4213695 (= b_free!123479 (not b_next!124183))))

(declare-fun tp!1288734 () Bool)

(declare-fun b_and!331785 () Bool)

(assert (=> b!4213695 (= tp!1288734 b_and!331785)))

(declare-fun b_free!123481 () Bool)

(declare-fun b_next!124185 () Bool)

(assert (=> b!4213695 (= b_free!123481 (not b_next!124185))))

(declare-fun tp!1288744 () Bool)

(declare-fun b_and!331787 () Bool)

(assert (=> b!4213695 (= tp!1288744 b_and!331787)))

(declare-fun b!4213696 () Bool)

(declare-fun b_free!123483 () Bool)

(declare-fun b_next!124187 () Bool)

(assert (=> b!4213696 (= b_free!123483 (not b_next!124187))))

(declare-fun tp!1288745 () Bool)

(declare-fun b_and!331789 () Bool)

(assert (=> b!4213696 (= tp!1288745 b_and!331789)))

(declare-fun b_free!123485 () Bool)

(declare-fun b_next!124189 () Bool)

(assert (=> b!4213696 (= b_free!123485 (not b_next!124189))))

(declare-fun tp!1288731 () Bool)

(declare-fun b_and!331791 () Bool)

(assert (=> b!4213696 (= tp!1288731 b_and!331791)))

(declare-fun b!4213706 () Bool)

(declare-fun b_free!123487 () Bool)

(declare-fun b_next!124191 () Bool)

(assert (=> b!4213706 (= b_free!123487 (not b_next!124191))))

(declare-fun tp!1288747 () Bool)

(declare-fun b_and!331793 () Bool)

(assert (=> b!4213706 (= tp!1288747 b_and!331793)))

(declare-fun b_free!123489 () Bool)

(declare-fun b_next!124193 () Bool)

(assert (=> b!4213706 (= b_free!123489 (not b_next!124193))))

(declare-fun tp!1288730 () Bool)

(declare-fun b_and!331795 () Bool)

(assert (=> b!4213706 (= tp!1288730 b_and!331795)))

(declare-fun e!2615874 () Bool)

(assert (=> b!4213695 (= e!2615874 (and tp!1288734 tp!1288744))))

(declare-fun e!2615865 () Bool)

(assert (=> b!4213696 (= e!2615865 (and tp!1288745 tp!1288731))))

(declare-fun b!4213697 () Bool)

(declare-fun res!1731231 () Bool)

(declare-fun e!2615882 () Bool)

(assert (=> b!4213697 (=> (not res!1731231) (not e!2615882))))

(declare-datatypes ((C!25526 0))(
  ( (C!25527 (val!14925 Int)) )
))
(declare-datatypes ((List!46464 0))(
  ( (Nil!46340) (Cons!46340 (h!51760 C!25526) (t!348183 List!46464)) )
))
(declare-fun p!3001 () List!46464)

(declare-fun input!3517 () List!46464)

(declare-fun suffix!1557 () List!46464)

(declare-fun ++!11835 (List!46464 List!46464) List!46464)

(assert (=> b!4213697 (= res!1731231 (= (++!11835 p!3001 suffix!1557) input!3517))))

(declare-fun b!4213698 () Bool)

(declare-fun e!2615879 () Bool)

(declare-fun lt!1499714 () List!46464)

(assert (=> b!4213698 (= e!2615879 (= lt!1499714 input!3517))))

(declare-datatypes ((LexerInterface!7356 0))(
  ( (LexerInterfaceExt!7353 (__x!28205 Int)) (Lexer!7354) )
))
(declare-fun thiss!26544 () LexerInterface!7356)

(declare-datatypes ((List!46465 0))(
  ( (Nil!46341) (Cons!46341 (h!51761 (_ BitVec 16)) (t!348184 List!46465)) )
))
(declare-datatypes ((TokenValue!7991 0))(
  ( (FloatLiteralValue!15982 (text!56382 List!46465)) (TokenValueExt!7990 (__x!28206 Int)) (Broken!39955 (value!241693 List!46465)) (Object!8114) (End!7991) (Def!7991) (Underscore!7991) (Match!7991) (Else!7991) (Error!7991) (Case!7991) (If!7991) (Extends!7991) (Abstract!7991) (Class!7991) (Val!7991) (DelimiterValue!15982 (del!8051 List!46465)) (KeywordValue!7997 (value!241694 List!46465)) (CommentValue!15982 (value!241695 List!46465)) (WhitespaceValue!15982 (value!241696 List!46465)) (IndentationValue!7991 (value!241697 List!46465)) (String!53826) (Int32!7991) (Broken!39956 (value!241698 List!46465)) (Boolean!7992) (Unit!65467) (OperatorValue!7994 (op!8051 List!46465)) (IdentifierValue!15982 (value!241699 List!46465)) (IdentifierValue!15983 (value!241700 List!46465)) (WhitespaceValue!15983 (value!241701 List!46465)) (True!15982) (False!15982) (Broken!39957 (value!241702 List!46465)) (Broken!39958 (value!241703 List!46465)) (True!15983) (RightBrace!7991) (RightBracket!7991) (Colon!7991) (Null!7991) (Comma!7991) (LeftBracket!7991) (False!15983) (LeftBrace!7991) (ImaginaryLiteralValue!7991 (text!56383 List!46465)) (StringLiteralValue!23973 (value!241704 List!46465)) (EOFValue!7991 (value!241705 List!46465)) (IdentValue!7991 (value!241706 List!46465)) (DelimiterValue!15983 (value!241707 List!46465)) (DedentValue!7991 (value!241708 List!46465)) (NewLineValue!7991 (value!241709 List!46465)) (IntegerValue!23973 (value!241710 (_ BitVec 32)) (text!56384 List!46465)) (IntegerValue!23974 (value!241711 Int) (text!56385 List!46465)) (Times!7991) (Or!7991) (Equal!7991) (Minus!7991) (Broken!39959 (value!241712 List!46465)) (And!7991) (Div!7991) (LessEqual!7991) (Mod!7991) (Concat!20657) (Not!7991) (Plus!7991) (SpaceValue!7991 (value!241713 List!46465)) (IntegerValue!23975 (value!241714 Int) (text!56386 List!46465)) (StringLiteralValue!23974 (text!56387 List!46465)) (FloatLiteralValue!15983 (text!56388 List!46465)) (BytesLiteralValue!7991 (value!241715 List!46465)) (CommentValue!15983 (value!241716 List!46465)) (StringLiteralValue!23975 (value!241717 List!46465)) (ErrorTokenValue!7991 (msg!8052 List!46465)) )
))
(declare-datatypes ((IArray!27949 0))(
  ( (IArray!27950 (innerList!14032 List!46464)) )
))
(declare-datatypes ((Regex!12666 0))(
  ( (ElementMatch!12666 (c!717580 C!25526)) (Concat!20658 (regOne!25844 Regex!12666) (regTwo!25844 Regex!12666)) (EmptyExpr!12666) (Star!12666 (reg!12995 Regex!12666)) (EmptyLang!12666) (Union!12666 (regOne!25845 Regex!12666) (regTwo!25845 Regex!12666)) )
))
(declare-datatypes ((String!53827 0))(
  ( (String!53828 (value!241718 String)) )
))
(declare-datatypes ((Conc!13972 0))(
  ( (Node!13972 (left!34492 Conc!13972) (right!34822 Conc!13972) (csize!28174 Int) (cheight!14183 Int)) (Leaf!21597 (xs!17278 IArray!27949) (csize!28175 Int)) (Empty!13972) )
))
(declare-datatypes ((BalanceConc!27538 0))(
  ( (BalanceConc!27539 (c!717581 Conc!13972)) )
))
(declare-datatypes ((TokenValueInjection!15410 0))(
  ( (TokenValueInjection!15411 (toValue!10481 Int) (toChars!10340 Int)) )
))
(declare-datatypes ((Rule!15322 0))(
  ( (Rule!15323 (regex!7761 Regex!12666) (tag!8625 String!53827) (isSeparator!7761 Bool) (transformation!7761 TokenValueInjection!15410)) )
))
(declare-datatypes ((List!46466 0))(
  ( (Nil!46342) (Cons!46342 (h!51762 Rule!15322) (t!348185 List!46466)) )
))
(declare-fun rules!3967 () List!46466)

(declare-fun rulesInvariant!6567 (LexerInterface!7356 List!46466) Bool)

(assert (=> b!4213698 (rulesInvariant!6567 thiss!26544 (t!348185 rules!3967))))

(declare-datatypes ((Unit!65468 0))(
  ( (Unit!65469) )
))
(declare-fun lt!1499710 () Unit!65468)

(declare-fun lemmaInvariantOnRulesThenOnTail!851 (LexerInterface!7356 Rule!15322 List!46466) Unit!65468)

(assert (=> b!4213698 (= lt!1499710 (lemmaInvariantOnRulesThenOnTail!851 thiss!26544 (h!51762 rules!3967) (t!348185 rules!3967)))))

(declare-fun lt!1499708 () List!46464)

(declare-fun isPrefix!4620 (List!46464 List!46464) Bool)

(assert (=> b!4213698 (isPrefix!4620 lt!1499708 lt!1499714)))

(declare-datatypes ((Token!14224 0))(
  ( (Token!14225 (value!241719 TokenValue!7991) (rule!10881 Rule!15322) (size!34034 Int) (originalCharacters!8143 List!46464)) )
))
(declare-datatypes ((tuple2!44076 0))(
  ( (tuple2!44077 (_1!25172 Token!14224) (_2!25172 List!46464)) )
))
(declare-fun lt!1499707 () tuple2!44076)

(assert (=> b!4213698 (= lt!1499714 (++!11835 lt!1499708 (_2!25172 lt!1499707)))))

(declare-fun lt!1499713 () Unit!65468)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3075 (List!46464 List!46464) Unit!65468)

(assert (=> b!4213698 (= lt!1499713 (lemmaConcatTwoListThenFirstIsPrefix!3075 lt!1499708 (_2!25172 lt!1499707)))))

(declare-fun list!16760 (BalanceConc!27538) List!46464)

(declare-fun charsOf!5184 (Token!14224) BalanceConc!27538)

(assert (=> b!4213698 (= lt!1499708 (list!16760 (charsOf!5184 (_1!25172 lt!1499707))))))

(declare-datatypes ((Option!9949 0))(
  ( (None!9948) (Some!9948 (v!40824 tuple2!44076)) )
))
(declare-fun lt!1499706 () Option!9949)

(declare-fun get!15076 (Option!9949) tuple2!44076)

(assert (=> b!4213698 (= lt!1499707 (get!15076 lt!1499706))))

(declare-fun lt!1499711 () Unit!65468)

(declare-fun e!2615881 () Unit!65468)

(assert (=> b!4213698 (= lt!1499711 e!2615881)))

(declare-fun c!717579 () Bool)

(declare-fun isEmpty!27446 (Option!9949) Bool)

(assert (=> b!4213698 (= c!717579 (isEmpty!27446 lt!1499706))))

(declare-fun maxPrefix!4396 (LexerInterface!7356 List!46466 List!46464) Option!9949)

(assert (=> b!4213698 (= lt!1499706 (maxPrefix!4396 thiss!26544 (t!348185 rules!3967) input!3517))))

(declare-fun b!4213699 () Bool)

(declare-fun e!2615862 () Bool)

(declare-fun tp_is_empty!22299 () Bool)

(declare-fun tp!1288746 () Bool)

(assert (=> b!4213699 (= e!2615862 (and tp_is_empty!22299 tp!1288746))))

(declare-fun tBis!41 () Token!14224)

(declare-fun b!4213700 () Bool)

(declare-fun tp!1288742 () Bool)

(declare-fun e!2615866 () Bool)

(declare-fun inv!60968 (String!53827) Bool)

(declare-fun inv!60971 (TokenValueInjection!15410) Bool)

(assert (=> b!4213700 (= e!2615866 (and tp!1288742 (inv!60968 (tag!8625 (rule!10881 tBis!41))) (inv!60971 (transformation!7761 (rule!10881 tBis!41))) e!2615874))))

(declare-fun b!4213701 () Bool)

(declare-fun e!2615876 () Bool)

(assert (=> b!4213701 (= e!2615882 e!2615876)))

(declare-fun res!1731237 () Bool)

(assert (=> b!4213701 (=> (not res!1731237) (not e!2615876))))

(declare-fun lt!1499705 () Option!9949)

(assert (=> b!4213701 (= res!1731237 (= (maxPrefix!4396 thiss!26544 rules!3967 input!3517) lt!1499705))))

(declare-fun t!8364 () Token!14224)

(assert (=> b!4213701 (= lt!1499705 (Some!9948 (tuple2!44077 t!8364 suffix!1557)))))

(declare-fun b!4213702 () Bool)

(declare-fun res!1731238 () Bool)

(assert (=> b!4213702 (=> res!1731238 e!2615879)))

(declare-fun rBis!178 () Rule!15322)

(assert (=> b!4213702 (= res!1731238 (not (= (rule!10881 tBis!41) rBis!178)))))

(declare-fun b!4213703 () Bool)

(declare-fun e!2615884 () Bool)

(declare-fun tp!1288737 () Bool)

(assert (=> b!4213703 (= e!2615884 (and tp_is_empty!22299 tp!1288737))))

(declare-fun b!4213704 () Bool)

(declare-fun res!1731239 () Bool)

(assert (=> b!4213704 (=> (not res!1731239) (not e!2615882))))

(declare-fun pBis!121 () List!46464)

(assert (=> b!4213704 (= res!1731239 (isPrefix!4620 pBis!121 input!3517))))

(declare-fun b!4213705 () Bool)

(declare-fun res!1731236 () Bool)

(assert (=> b!4213705 (=> (not res!1731236) (not e!2615882))))

(declare-fun isEmpty!27447 (List!46466) Bool)

(assert (=> b!4213705 (= res!1731236 (not (isEmpty!27447 rules!3967)))))

(declare-fun e!2615871 () Bool)

(assert (=> b!4213706 (= e!2615871 (and tp!1288747 tp!1288730))))

(declare-fun e!2615867 () Bool)

(declare-fun tp!1288733 () Bool)

(declare-fun b!4213707 () Bool)

(declare-fun inv!21 (TokenValue!7991) Bool)

(assert (=> b!4213707 (= e!2615867 (and (inv!21 (value!241719 tBis!41)) e!2615866 tp!1288733))))

(declare-fun b!4213708 () Bool)

(declare-fun res!1731242 () Bool)

(assert (=> b!4213708 (=> (not res!1731242) (not e!2615876))))

(declare-fun ruleValid!3473 (LexerInterface!7356 Rule!15322) Bool)

(assert (=> b!4213708 (= res!1731242 (ruleValid!3473 thiss!26544 rBis!178))))

(declare-fun tp!1288729 () Bool)

(declare-fun e!2615868 () Bool)

(declare-fun e!2615883 () Bool)

(declare-fun b!4213709 () Bool)

(assert (=> b!4213709 (= e!2615883 (and (inv!21 (value!241719 t!8364)) e!2615868 tp!1288729))))

(declare-fun b!4213710 () Bool)

(declare-fun tp!1288741 () Bool)

(assert (=> b!4213710 (= e!2615868 (and tp!1288741 (inv!60968 (tag!8625 (rule!10881 t!8364))) (inv!60971 (transformation!7761 (rule!10881 t!8364))) e!2615871))))

(declare-fun b!4213711 () Bool)

(assert (=> b!4213711 (= e!2615876 (not e!2615879))))

(declare-fun res!1731234 () Bool)

(assert (=> b!4213711 (=> res!1731234 e!2615879)))

(declare-fun suffixBis!41 () List!46464)

(declare-fun maxPrefixOneRule!3351 (LexerInterface!7356 Rule!15322 List!46464) Option!9949)

(assert (=> b!4213711 (= res!1731234 (not (= (maxPrefixOneRule!3351 thiss!26544 rBis!178 input!3517) (Some!9948 (tuple2!44077 tBis!41 suffixBis!41)))))))

(assert (=> b!4213711 (isPrefix!4620 input!3517 input!3517)))

(declare-fun lt!1499712 () Unit!65468)

(declare-fun lemmaIsPrefixRefl!3037 (List!46464 List!46464) Unit!65468)

(assert (=> b!4213711 (= lt!1499712 (lemmaIsPrefixRefl!3037 input!3517 input!3517))))

(declare-fun b!4213712 () Bool)

(declare-fun res!1731233 () Bool)

(assert (=> b!4213712 (=> res!1731233 e!2615879)))

(assert (=> b!4213712 (= res!1731233 (not (= (++!11835 pBis!121 suffixBis!41) input!3517)))))

(declare-fun b!4213713 () Bool)

(declare-fun res!1731244 () Bool)

(assert (=> b!4213713 (=> (not res!1731244) (not e!2615882))))

(assert (=> b!4213713 (= res!1731244 (rulesInvariant!6567 thiss!26544 rules!3967))))

(declare-fun b!4213714 () Bool)

(declare-fun e!2615877 () Bool)

(declare-fun tp!1288743 () Bool)

(assert (=> b!4213714 (= e!2615877 (and tp_is_empty!22299 tp!1288743))))

(declare-fun e!2615864 () Bool)

(declare-fun b!4213715 () Bool)

(declare-fun tp!1288735 () Bool)

(assert (=> b!4213715 (= e!2615864 (and tp!1288735 (inv!60968 (tag!8625 (h!51762 rules!3967))) (inv!60971 (transformation!7761 (h!51762 rules!3967))) e!2615865))))

(declare-fun e!2615870 () Bool)

(assert (=> b!4213716 (= e!2615870 (and tp!1288740 tp!1288736))))

(declare-fun b!4213717 () Bool)

(declare-fun e!2615886 () Bool)

(declare-fun tp!1288739 () Bool)

(assert (=> b!4213717 (= e!2615886 (and tp_is_empty!22299 tp!1288739))))

(declare-fun b!4213718 () Bool)

(declare-fun e!2615861 () Bool)

(declare-fun tp!1288748 () Bool)

(assert (=> b!4213718 (= e!2615861 (and e!2615864 tp!1288748))))

(declare-fun b!4213719 () Bool)

(declare-fun res!1731240 () Bool)

(assert (=> b!4213719 (=> res!1731240 e!2615879)))

(assert (=> b!4213719 (= res!1731240 (not (= (maxPrefixOneRule!3351 thiss!26544 (h!51762 rules!3967) input!3517) lt!1499705)))))

(declare-fun tp!1288738 () Bool)

(declare-fun b!4213720 () Bool)

(declare-fun e!2615875 () Bool)

(assert (=> b!4213720 (= e!2615875 (and tp!1288738 (inv!60968 (tag!8625 rBis!178)) (inv!60971 (transformation!7761 rBis!178)) e!2615870))))

(declare-fun b!4213721 () Bool)

(declare-fun res!1731232 () Bool)

(assert (=> b!4213721 (=> (not res!1731232) (not e!2615882))))

(assert (=> b!4213721 (= res!1731232 (isPrefix!4620 p!3001 input!3517))))

(declare-fun res!1731235 () Bool)

(assert (=> start!402688 (=> (not res!1731235) (not e!2615882))))

(assert (=> start!402688 (= res!1731235 (is-Lexer!7354 thiss!26544))))

(assert (=> start!402688 e!2615882))

(declare-fun inv!60972 (Token!14224) Bool)

(assert (=> start!402688 (and (inv!60972 tBis!41) e!2615867)))

(assert (=> start!402688 true))

(assert (=> start!402688 e!2615875))

(declare-fun e!2615872 () Bool)

(assert (=> start!402688 e!2615872))

(assert (=> start!402688 e!2615861))

(assert (=> start!402688 e!2615877))

(assert (=> start!402688 (and (inv!60972 t!8364) e!2615883)))

(assert (=> start!402688 e!2615886))

(assert (=> start!402688 e!2615884))

(assert (=> start!402688 e!2615862))

(declare-fun b!4213722 () Bool)

(declare-fun res!1731243 () Bool)

(assert (=> b!4213722 (=> res!1731243 e!2615879)))

(assert (=> b!4213722 (= res!1731243 (or (and (is-Cons!46342 rules!3967) (is-Nil!46342 (t!348185 rules!3967))) (not (is-Cons!46342 rules!3967)) (= (h!51762 rules!3967) rBis!178)))))

(declare-fun b!4213723 () Bool)

(declare-fun tp!1288732 () Bool)

(assert (=> b!4213723 (= e!2615872 (and tp_is_empty!22299 tp!1288732))))

(declare-fun b!4213724 () Bool)

(declare-fun Unit!65470 () Unit!65468)

(assert (=> b!4213724 (= e!2615881 Unit!65470)))

(declare-fun lt!1499709 () Unit!65468)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!619 (LexerInterface!7356 Rule!15322 List!46466 List!46464) Unit!65468)

(assert (=> b!4213724 (= lt!1499709 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!619 thiss!26544 rBis!178 (t!348185 rules!3967) input!3517))))

(assert (=> b!4213724 false))

(declare-fun b!4213725 () Bool)

(declare-fun Unit!65471 () Unit!65468)

(assert (=> b!4213725 (= e!2615881 Unit!65471)))

(declare-fun b!4213726 () Bool)

(declare-fun res!1731230 () Bool)

(assert (=> b!4213726 (=> res!1731230 e!2615879)))

(assert (=> b!4213726 (= res!1731230 (not (= (list!16760 (charsOf!5184 tBis!41)) pBis!121)))))

(declare-fun b!4213727 () Bool)

(declare-fun res!1731241 () Bool)

(assert (=> b!4213727 (=> (not res!1731241) (not e!2615882))))

(declare-fun contains!9582 (List!46466 Rule!15322) Bool)

(assert (=> b!4213727 (= res!1731241 (contains!9582 rules!3967 rBis!178))))

(assert (= (and start!402688 res!1731235) b!4213697))

(assert (= (and b!4213697 res!1731231) b!4213721))

(assert (= (and b!4213721 res!1731232) b!4213704))

(assert (= (and b!4213704 res!1731239) b!4213705))

(assert (= (and b!4213705 res!1731236) b!4213713))

(assert (= (and b!4213713 res!1731244) b!4213727))

(assert (= (and b!4213727 res!1731241) b!4213701))

(assert (= (and b!4213701 res!1731237) b!4213708))

(assert (= (and b!4213708 res!1731242) b!4213711))

(assert (= (and b!4213711 (not res!1731234)) b!4213702))

(assert (= (and b!4213702 (not res!1731238)) b!4213726))

(assert (= (and b!4213726 (not res!1731230)) b!4213712))

(assert (= (and b!4213712 (not res!1731233)) b!4213722))

(assert (= (and b!4213722 (not res!1731243)) b!4213719))

(assert (= (and b!4213719 (not res!1731240)) b!4213698))

(assert (= (and b!4213698 c!717579) b!4213724))

(assert (= (and b!4213698 (not c!717579)) b!4213725))

(assert (= b!4213700 b!4213695))

(assert (= b!4213707 b!4213700))

(assert (= start!402688 b!4213707))

(assert (= b!4213720 b!4213716))

(assert (= start!402688 b!4213720))

(assert (= (and start!402688 (is-Cons!46340 p!3001)) b!4213723))

(assert (= b!4213715 b!4213696))

(assert (= b!4213718 b!4213715))

(assert (= (and start!402688 (is-Cons!46342 rules!3967)) b!4213718))

(assert (= (and start!402688 (is-Cons!46340 input!3517)) b!4213714))

(assert (= b!4213710 b!4213706))

(assert (= b!4213709 b!4213710))

(assert (= start!402688 b!4213709))

(assert (= (and start!402688 (is-Cons!46340 pBis!121)) b!4213717))

(assert (= (and start!402688 (is-Cons!46340 suffix!1557)) b!4213703))

(assert (= (and start!402688 (is-Cons!46340 suffixBis!41)) b!4213699))

(declare-fun m!4801475 () Bool)

(assert (=> start!402688 m!4801475))

(declare-fun m!4801477 () Bool)

(assert (=> start!402688 m!4801477))

(declare-fun m!4801479 () Bool)

(assert (=> b!4213697 m!4801479))

(declare-fun m!4801481 () Bool)

(assert (=> b!4213707 m!4801481))

(declare-fun m!4801483 () Bool)

(assert (=> b!4213709 m!4801483))

(declare-fun m!4801485 () Bool)

(assert (=> b!4213719 m!4801485))

(declare-fun m!4801487 () Bool)

(assert (=> b!4213698 m!4801487))

(declare-fun m!4801489 () Bool)

(assert (=> b!4213698 m!4801489))

(declare-fun m!4801491 () Bool)

(assert (=> b!4213698 m!4801491))

(declare-fun m!4801493 () Bool)

(assert (=> b!4213698 m!4801493))

(declare-fun m!4801495 () Bool)

(assert (=> b!4213698 m!4801495))

(declare-fun m!4801497 () Bool)

(assert (=> b!4213698 m!4801497))

(assert (=> b!4213698 m!4801495))

(declare-fun m!4801499 () Bool)

(assert (=> b!4213698 m!4801499))

(declare-fun m!4801501 () Bool)

(assert (=> b!4213698 m!4801501))

(declare-fun m!4801503 () Bool)

(assert (=> b!4213698 m!4801503))

(declare-fun m!4801505 () Bool)

(assert (=> b!4213698 m!4801505))

(declare-fun m!4801507 () Bool)

(assert (=> b!4213708 m!4801507))

(declare-fun m!4801509 () Bool)

(assert (=> b!4213713 m!4801509))

(declare-fun m!4801511 () Bool)

(assert (=> b!4213710 m!4801511))

(declare-fun m!4801513 () Bool)

(assert (=> b!4213710 m!4801513))

(declare-fun m!4801515 () Bool)

(assert (=> b!4213704 m!4801515))

(declare-fun m!4801517 () Bool)

(assert (=> b!4213727 m!4801517))

(declare-fun m!4801519 () Bool)

(assert (=> b!4213721 m!4801519))

(declare-fun m!4801521 () Bool)

(assert (=> b!4213726 m!4801521))

(assert (=> b!4213726 m!4801521))

(declare-fun m!4801523 () Bool)

(assert (=> b!4213726 m!4801523))

(declare-fun m!4801525 () Bool)

(assert (=> b!4213711 m!4801525))

(declare-fun m!4801527 () Bool)

(assert (=> b!4213711 m!4801527))

(declare-fun m!4801529 () Bool)

(assert (=> b!4213711 m!4801529))

(declare-fun m!4801531 () Bool)

(assert (=> b!4213700 m!4801531))

(declare-fun m!4801533 () Bool)

(assert (=> b!4213700 m!4801533))

(declare-fun m!4801535 () Bool)

(assert (=> b!4213701 m!4801535))

(declare-fun m!4801537 () Bool)

(assert (=> b!4213720 m!4801537))

(declare-fun m!4801539 () Bool)

(assert (=> b!4213720 m!4801539))

(declare-fun m!4801541 () Bool)

(assert (=> b!4213715 m!4801541))

(declare-fun m!4801543 () Bool)

(assert (=> b!4213715 m!4801543))

(declare-fun m!4801545 () Bool)

(assert (=> b!4213712 m!4801545))

(declare-fun m!4801547 () Bool)

(assert (=> b!4213724 m!4801547))

(declare-fun m!4801549 () Bool)

(assert (=> b!4213705 m!4801549))

(push 1)

(assert (not b!4213712))

(assert b_and!331789)

(assert (not b!4213713))

(assert b_and!331793)

(assert (not start!402688))

(assert (not b!4213718))

(assert b_and!331787)

(assert (not b_next!124179))

(assert (not b!4213719))

(assert (not b_next!124183))

(assert (not b!4213724))

(assert (not b!4213721))

(assert b_and!331795)

(assert (not b!4213727))

(assert (not b!4213723))

(assert (not b!4213711))

(assert (not b!4213726))

(assert (not b!4213705))

(assert (not b!4213714))

(assert (not b!4213710))

(assert b_and!331781)

(assert (not b!4213717))

(assert (not b_next!124193))

(assert b_and!331785)

(assert (not b!4213700))

(assert (not b!4213697))

(assert tp_is_empty!22299)

(assert (not b!4213698))

(assert b_and!331783)

(assert (not b!4213708))

(assert (not b_next!124191))

(assert (not b!4213703))

(assert b_and!331791)

(assert (not b!4213704))

(assert (not b!4213709))

(assert (not b!4213701))

(assert (not b!4213720))

(assert (not b!4213707))

(assert (not b_next!124189))

(assert (not b!4213699))

(assert (not b!4213715))

(assert (not b_next!124187))

(assert (not b_next!124181))

(assert (not b_next!124185))

(check-sat)

(pop 1)

(push 1)

(assert b_and!331795)

(assert b_and!331789)

(assert b_and!331793)

(assert b_and!331787)

(assert (not b_next!124179))

(assert b_and!331783)

(assert (not b_next!124189))

(assert (not b_next!124187))

(assert (not b_next!124183))

(assert b_and!331781)

(assert (not b_next!124193))

(assert b_and!331785)

(assert (not b_next!124191))

(assert b_and!331791)

(assert (not b_next!124181))

(assert (not b_next!124185))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4213835 () Bool)

(declare-fun e!2615972 () Bool)

(declare-fun e!2615971 () Bool)

(assert (=> b!4213835 (= e!2615972 e!2615971)))

(declare-fun res!1731312 () Bool)

(assert (=> b!4213835 (=> (not res!1731312) (not e!2615971))))

(assert (=> b!4213835 (= res!1731312 (not (is-Nil!46340 input!3517)))))

(declare-fun d!1241533 () Bool)

(declare-fun e!2615973 () Bool)

(assert (=> d!1241533 e!2615973))

(declare-fun res!1731315 () Bool)

(assert (=> d!1241533 (=> res!1731315 e!2615973)))

(declare-fun lt!1499747 () Bool)

(assert (=> d!1241533 (= res!1731315 (not lt!1499747))))

(assert (=> d!1241533 (= lt!1499747 e!2615972)))

(declare-fun res!1731314 () Bool)

(assert (=> d!1241533 (=> res!1731314 e!2615972)))

(assert (=> d!1241533 (= res!1731314 (is-Nil!46340 p!3001))))

(assert (=> d!1241533 (= (isPrefix!4620 p!3001 input!3517) lt!1499747)))

(declare-fun b!4213838 () Bool)

(declare-fun size!34036 (List!46464) Int)

(assert (=> b!4213838 (= e!2615973 (>= (size!34036 input!3517) (size!34036 p!3001)))))

(declare-fun b!4213837 () Bool)

(declare-fun tail!6786 (List!46464) List!46464)

(assert (=> b!4213837 (= e!2615971 (isPrefix!4620 (tail!6786 p!3001) (tail!6786 input!3517)))))

(declare-fun b!4213836 () Bool)

(declare-fun res!1731313 () Bool)

(assert (=> b!4213836 (=> (not res!1731313) (not e!2615971))))

(declare-fun head!8939 (List!46464) C!25526)

(assert (=> b!4213836 (= res!1731313 (= (head!8939 p!3001) (head!8939 input!3517)))))

(assert (= (and d!1241533 (not res!1731314)) b!4213835))

(assert (= (and b!4213835 res!1731312) b!4213836))

(assert (= (and b!4213836 res!1731313) b!4213837))

(assert (= (and d!1241533 (not res!1731315)) b!4213838))

(declare-fun m!4801627 () Bool)

(assert (=> b!4213838 m!4801627))

(declare-fun m!4801629 () Bool)

(assert (=> b!4213838 m!4801629))

(declare-fun m!4801631 () Bool)

(assert (=> b!4213837 m!4801631))

(declare-fun m!4801633 () Bool)

(assert (=> b!4213837 m!4801633))

(assert (=> b!4213837 m!4801631))

(assert (=> b!4213837 m!4801633))

(declare-fun m!4801635 () Bool)

(assert (=> b!4213837 m!4801635))

(declare-fun m!4801637 () Bool)

(assert (=> b!4213836 m!4801637))

(declare-fun m!4801639 () Bool)

(assert (=> b!4213836 m!4801639))

(assert (=> b!4213721 d!1241533))

(declare-fun d!1241535 () Bool)

(assert (=> d!1241535 (= (inv!60968 (tag!8625 (rule!10881 tBis!41))) (= (mod (str.len (value!241718 (tag!8625 (rule!10881 tBis!41)))) 2) 0))))

(assert (=> b!4213700 d!1241535))

(declare-fun d!1241537 () Bool)

(declare-fun res!1731318 () Bool)

(declare-fun e!2615976 () Bool)

(assert (=> d!1241537 (=> (not res!1731318) (not e!2615976))))

(declare-fun semiInverseModEq!3371 (Int Int) Bool)

(assert (=> d!1241537 (= res!1731318 (semiInverseModEq!3371 (toChars!10340 (transformation!7761 (rule!10881 tBis!41))) (toValue!10481 (transformation!7761 (rule!10881 tBis!41)))))))

(assert (=> d!1241537 (= (inv!60971 (transformation!7761 (rule!10881 tBis!41))) e!2615976)))

(declare-fun b!4213841 () Bool)

(declare-fun equivClasses!3270 (Int Int) Bool)

(assert (=> b!4213841 (= e!2615976 (equivClasses!3270 (toChars!10340 (transformation!7761 (rule!10881 tBis!41))) (toValue!10481 (transformation!7761 (rule!10881 tBis!41)))))))

(assert (= (and d!1241537 res!1731318) b!4213841))

(declare-fun m!4801641 () Bool)

(assert (=> d!1241537 m!4801641))

(declare-fun m!4801643 () Bool)

(assert (=> b!4213841 m!4801643))

(assert (=> b!4213700 d!1241537))

(declare-fun b!4213880 () Bool)

(declare-fun res!1731353 () Bool)

(declare-fun e!2616000 () Bool)

(assert (=> b!4213880 (=> (not res!1731353) (not e!2616000))))

(declare-fun lt!1499762 () Option!9949)

(assert (=> b!4213880 (= res!1731353 (= (rule!10881 (_1!25172 (get!15076 lt!1499762))) rBis!178))))

(declare-fun b!4213881 () Bool)

(declare-fun e!2616001 () Option!9949)

(assert (=> b!4213881 (= e!2616001 None!9948)))

(declare-fun b!4213882 () Bool)

(declare-fun e!2615999 () Bool)

(declare-fun matchR!6369 (Regex!12666 List!46464) Bool)

(declare-datatypes ((tuple2!44080 0))(
  ( (tuple2!44081 (_1!25174 List!46464) (_2!25174 List!46464)) )
))
(declare-fun findLongestMatchInner!1650 (Regex!12666 List!46464 Int List!46464 List!46464 Int) tuple2!44080)

(assert (=> b!4213882 (= e!2615999 (matchR!6369 (regex!7761 rBis!178) (_1!25174 (findLongestMatchInner!1650 (regex!7761 rBis!178) Nil!46340 (size!34036 Nil!46340) input!3517 input!3517 (size!34036 input!3517)))))))

(declare-fun d!1241539 () Bool)

(declare-fun e!2616002 () Bool)

(assert (=> d!1241539 e!2616002))

(declare-fun res!1731350 () Bool)

(assert (=> d!1241539 (=> res!1731350 e!2616002)))

(assert (=> d!1241539 (= res!1731350 (isEmpty!27446 lt!1499762))))

(assert (=> d!1241539 (= lt!1499762 e!2616001)))

(declare-fun c!717590 () Bool)

(declare-fun lt!1499761 () tuple2!44080)

(declare-fun isEmpty!27450 (List!46464) Bool)

(assert (=> d!1241539 (= c!717590 (isEmpty!27450 (_1!25174 lt!1499761)))))

(declare-fun findLongestMatch!1563 (Regex!12666 List!46464) tuple2!44080)

(assert (=> d!1241539 (= lt!1499761 (findLongestMatch!1563 (regex!7761 rBis!178) input!3517))))

(assert (=> d!1241539 (ruleValid!3473 thiss!26544 rBis!178)))

(assert (=> d!1241539 (= (maxPrefixOneRule!3351 thiss!26544 rBis!178 input!3517) lt!1499762)))

(declare-fun b!4213883 () Bool)

(declare-fun apply!10690 (TokenValueInjection!15410 BalanceConc!27538) TokenValue!7991)

(declare-fun seqFromList!5750 (List!46464) BalanceConc!27538)

(declare-fun size!34037 (BalanceConc!27538) Int)

(assert (=> b!4213883 (= e!2616001 (Some!9948 (tuple2!44077 (Token!14225 (apply!10690 (transformation!7761 rBis!178) (seqFromList!5750 (_1!25174 lt!1499761))) rBis!178 (size!34037 (seqFromList!5750 (_1!25174 lt!1499761))) (_1!25174 lt!1499761)) (_2!25174 lt!1499761))))))

(declare-fun lt!1499759 () Unit!65468)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1623 (Regex!12666 List!46464) Unit!65468)

(assert (=> b!4213883 (= lt!1499759 (longestMatchIsAcceptedByMatchOrIsEmpty!1623 (regex!7761 rBis!178) input!3517))))

(declare-fun res!1731351 () Bool)

(assert (=> b!4213883 (= res!1731351 (isEmpty!27450 (_1!25174 (findLongestMatchInner!1650 (regex!7761 rBis!178) Nil!46340 (size!34036 Nil!46340) input!3517 input!3517 (size!34036 input!3517)))))))

(assert (=> b!4213883 (=> res!1731351 e!2615999)))

(assert (=> b!4213883 e!2615999))

(declare-fun lt!1499758 () Unit!65468)

(assert (=> b!4213883 (= lt!1499758 lt!1499759)))

(declare-fun lt!1499760 () Unit!65468)

(declare-fun lemmaSemiInverse!2491 (TokenValueInjection!15410 BalanceConc!27538) Unit!65468)

(assert (=> b!4213883 (= lt!1499760 (lemmaSemiInverse!2491 (transformation!7761 rBis!178) (seqFromList!5750 (_1!25174 lt!1499761))))))

(declare-fun b!4213884 () Bool)

(declare-fun res!1731347 () Bool)

(assert (=> b!4213884 (=> (not res!1731347) (not e!2616000))))

(assert (=> b!4213884 (= res!1731347 (= (++!11835 (list!16760 (charsOf!5184 (_1!25172 (get!15076 lt!1499762)))) (_2!25172 (get!15076 lt!1499762))) input!3517))))

(declare-fun b!4213885 () Bool)

(declare-fun res!1731349 () Bool)

(assert (=> b!4213885 (=> (not res!1731349) (not e!2616000))))

(assert (=> b!4213885 (= res!1731349 (< (size!34036 (_2!25172 (get!15076 lt!1499762))) (size!34036 input!3517)))))

(declare-fun b!4213886 () Bool)

(assert (=> b!4213886 (= e!2616002 e!2616000)))

(declare-fun res!1731352 () Bool)

(assert (=> b!4213886 (=> (not res!1731352) (not e!2616000))))

(assert (=> b!4213886 (= res!1731352 (matchR!6369 (regex!7761 rBis!178) (list!16760 (charsOf!5184 (_1!25172 (get!15076 lt!1499762))))))))

(declare-fun b!4213887 () Bool)

(declare-fun res!1731348 () Bool)

(assert (=> b!4213887 (=> (not res!1731348) (not e!2616000))))

(assert (=> b!4213887 (= res!1731348 (= (value!241719 (_1!25172 (get!15076 lt!1499762))) (apply!10690 (transformation!7761 (rule!10881 (_1!25172 (get!15076 lt!1499762)))) (seqFromList!5750 (originalCharacters!8143 (_1!25172 (get!15076 lt!1499762)))))))))

(declare-fun b!4213888 () Bool)

(assert (=> b!4213888 (= e!2616000 (= (size!34034 (_1!25172 (get!15076 lt!1499762))) (size!34036 (originalCharacters!8143 (_1!25172 (get!15076 lt!1499762))))))))

(assert (= (and d!1241539 c!717590) b!4213881))

(assert (= (and d!1241539 (not c!717590)) b!4213883))

(assert (= (and b!4213883 (not res!1731351)) b!4213882))

(assert (= (and d!1241539 (not res!1731350)) b!4213886))

(assert (= (and b!4213886 res!1731352) b!4213884))

(assert (= (and b!4213884 res!1731347) b!4213885))

(assert (= (and b!4213885 res!1731349) b!4213880))

(assert (= (and b!4213880 res!1731353) b!4213887))

(assert (= (and b!4213887 res!1731348) b!4213888))

(declare-fun m!4801677 () Bool)

(assert (=> b!4213882 m!4801677))

(assert (=> b!4213882 m!4801627))

(assert (=> b!4213882 m!4801677))

(assert (=> b!4213882 m!4801627))

(declare-fun m!4801679 () Bool)

(assert (=> b!4213882 m!4801679))

(declare-fun m!4801681 () Bool)

(assert (=> b!4213882 m!4801681))

(declare-fun m!4801683 () Bool)

(assert (=> b!4213885 m!4801683))

(declare-fun m!4801685 () Bool)

(assert (=> b!4213885 m!4801685))

(assert (=> b!4213885 m!4801627))

(assert (=> b!4213883 m!4801627))

(declare-fun m!4801687 () Bool)

(assert (=> b!4213883 m!4801687))

(declare-fun m!4801689 () Bool)

(assert (=> b!4213883 m!4801689))

(assert (=> b!4213883 m!4801687))

(declare-fun m!4801691 () Bool)

(assert (=> b!4213883 m!4801691))

(assert (=> b!4213883 m!4801687))

(assert (=> b!4213883 m!4801677))

(assert (=> b!4213883 m!4801677))

(assert (=> b!4213883 m!4801627))

(assert (=> b!4213883 m!4801679))

(declare-fun m!4801693 () Bool)

(assert (=> b!4213883 m!4801693))

(declare-fun m!4801695 () Bool)

(assert (=> b!4213883 m!4801695))

(assert (=> b!4213883 m!4801687))

(declare-fun m!4801697 () Bool)

(assert (=> b!4213883 m!4801697))

(assert (=> b!4213887 m!4801683))

(declare-fun m!4801699 () Bool)

(assert (=> b!4213887 m!4801699))

(assert (=> b!4213887 m!4801699))

(declare-fun m!4801701 () Bool)

(assert (=> b!4213887 m!4801701))

(assert (=> b!4213886 m!4801683))

(declare-fun m!4801703 () Bool)

(assert (=> b!4213886 m!4801703))

(assert (=> b!4213886 m!4801703))

(declare-fun m!4801705 () Bool)

(assert (=> b!4213886 m!4801705))

(assert (=> b!4213886 m!4801705))

(declare-fun m!4801707 () Bool)

(assert (=> b!4213886 m!4801707))

(assert (=> b!4213884 m!4801683))

(assert (=> b!4213884 m!4801703))

(assert (=> b!4213884 m!4801703))

(assert (=> b!4213884 m!4801705))

(assert (=> b!4213884 m!4801705))

(declare-fun m!4801709 () Bool)

(assert (=> b!4213884 m!4801709))

(assert (=> b!4213880 m!4801683))

(declare-fun m!4801711 () Bool)

(assert (=> d!1241539 m!4801711))

(declare-fun m!4801713 () Bool)

(assert (=> d!1241539 m!4801713))

(declare-fun m!4801715 () Bool)

(assert (=> d!1241539 m!4801715))

(assert (=> d!1241539 m!4801507))

(assert (=> b!4213888 m!4801683))

(declare-fun m!4801717 () Bool)

(assert (=> b!4213888 m!4801717))

(assert (=> b!4213711 d!1241539))

(declare-fun b!4213889 () Bool)

(declare-fun e!2616004 () Bool)

(declare-fun e!2616003 () Bool)

(assert (=> b!4213889 (= e!2616004 e!2616003)))

(declare-fun res!1731354 () Bool)

(assert (=> b!4213889 (=> (not res!1731354) (not e!2616003))))

(assert (=> b!4213889 (= res!1731354 (not (is-Nil!46340 input!3517)))))

(declare-fun d!1241553 () Bool)

(declare-fun e!2616005 () Bool)

(assert (=> d!1241553 e!2616005))

(declare-fun res!1731357 () Bool)

(assert (=> d!1241553 (=> res!1731357 e!2616005)))

(declare-fun lt!1499763 () Bool)

(assert (=> d!1241553 (= res!1731357 (not lt!1499763))))

(assert (=> d!1241553 (= lt!1499763 e!2616004)))

(declare-fun res!1731356 () Bool)

(assert (=> d!1241553 (=> res!1731356 e!2616004)))

(assert (=> d!1241553 (= res!1731356 (is-Nil!46340 input!3517))))

(assert (=> d!1241553 (= (isPrefix!4620 input!3517 input!3517) lt!1499763)))

(declare-fun b!4213892 () Bool)

(assert (=> b!4213892 (= e!2616005 (>= (size!34036 input!3517) (size!34036 input!3517)))))

(declare-fun b!4213891 () Bool)

(assert (=> b!4213891 (= e!2616003 (isPrefix!4620 (tail!6786 input!3517) (tail!6786 input!3517)))))

(declare-fun b!4213890 () Bool)

(declare-fun res!1731355 () Bool)

(assert (=> b!4213890 (=> (not res!1731355) (not e!2616003))))

(assert (=> b!4213890 (= res!1731355 (= (head!8939 input!3517) (head!8939 input!3517)))))

(assert (= (and d!1241553 (not res!1731356)) b!4213889))

(assert (= (and b!4213889 res!1731354) b!4213890))

(assert (= (and b!4213890 res!1731355) b!4213891))

(assert (= (and d!1241553 (not res!1731357)) b!4213892))

(assert (=> b!4213892 m!4801627))

(assert (=> b!4213892 m!4801627))

(assert (=> b!4213891 m!4801633))

(assert (=> b!4213891 m!4801633))

(assert (=> b!4213891 m!4801633))

(assert (=> b!4213891 m!4801633))

(declare-fun m!4801719 () Bool)

(assert (=> b!4213891 m!4801719))

(assert (=> b!4213890 m!4801639))

(assert (=> b!4213890 m!4801639))

(assert (=> b!4213711 d!1241553))

(declare-fun d!1241555 () Bool)

(assert (=> d!1241555 (isPrefix!4620 input!3517 input!3517)))

(declare-fun lt!1499766 () Unit!65468)

(declare-fun choose!25809 (List!46464 List!46464) Unit!65468)

(assert (=> d!1241555 (= lt!1499766 (choose!25809 input!3517 input!3517))))

(assert (=> d!1241555 (= (lemmaIsPrefixRefl!3037 input!3517 input!3517) lt!1499766)))

(declare-fun bs!597476 () Bool)

(assert (= bs!597476 d!1241555))

(assert (=> bs!597476 m!4801527))

(declare-fun m!4801721 () Bool)

(assert (=> bs!597476 m!4801721))

(assert (=> b!4213711 d!1241555))

(declare-fun b!4213903 () Bool)

(declare-fun e!2616013 () Bool)

(declare-fun inv!17 (TokenValue!7991) Bool)

(assert (=> b!4213903 (= e!2616013 (inv!17 (value!241719 t!8364)))))

(declare-fun b!4213904 () Bool)

(declare-fun e!2616012 () Bool)

(declare-fun inv!15 (TokenValue!7991) Bool)

(assert (=> b!4213904 (= e!2616012 (inv!15 (value!241719 t!8364)))))

(declare-fun b!4213905 () Bool)

(declare-fun e!2616014 () Bool)

(assert (=> b!4213905 (= e!2616014 e!2616013)))

(declare-fun c!717595 () Bool)

(assert (=> b!4213905 (= c!717595 (is-IntegerValue!23974 (value!241719 t!8364)))))

(declare-fun d!1241557 () Bool)

(declare-fun c!717596 () Bool)

(assert (=> d!1241557 (= c!717596 (is-IntegerValue!23973 (value!241719 t!8364)))))

(assert (=> d!1241557 (= (inv!21 (value!241719 t!8364)) e!2616014)))

(declare-fun b!4213906 () Bool)

(declare-fun res!1731360 () Bool)

(assert (=> b!4213906 (=> res!1731360 e!2616012)))

(assert (=> b!4213906 (= res!1731360 (not (is-IntegerValue!23975 (value!241719 t!8364))))))

(assert (=> b!4213906 (= e!2616013 e!2616012)))

(declare-fun b!4213907 () Bool)

(declare-fun inv!16 (TokenValue!7991) Bool)

(assert (=> b!4213907 (= e!2616014 (inv!16 (value!241719 t!8364)))))

(assert (= (and d!1241557 c!717596) b!4213907))

(assert (= (and d!1241557 (not c!717596)) b!4213905))

(assert (= (and b!4213905 c!717595) b!4213903))

(assert (= (and b!4213905 (not c!717595)) b!4213906))

(assert (= (and b!4213906 (not res!1731360)) b!4213904))

(declare-fun m!4801723 () Bool)

(assert (=> b!4213903 m!4801723))

(declare-fun m!4801725 () Bool)

(assert (=> b!4213904 m!4801725))

(declare-fun m!4801727 () Bool)

(assert (=> b!4213907 m!4801727))

(assert (=> b!4213709 d!1241557))

(declare-fun d!1241559 () Bool)

(assert (=> d!1241559 (= (inv!60968 (tag!8625 rBis!178)) (= (mod (str.len (value!241718 (tag!8625 rBis!178))) 2) 0))))

(assert (=> b!4213720 d!1241559))

(declare-fun d!1241561 () Bool)

(declare-fun res!1731361 () Bool)

(declare-fun e!2616015 () Bool)

(assert (=> d!1241561 (=> (not res!1731361) (not e!2616015))))

(assert (=> d!1241561 (= res!1731361 (semiInverseModEq!3371 (toChars!10340 (transformation!7761 rBis!178)) (toValue!10481 (transformation!7761 rBis!178))))))

(assert (=> d!1241561 (= (inv!60971 (transformation!7761 rBis!178)) e!2616015)))

(declare-fun b!4213908 () Bool)

(assert (=> b!4213908 (= e!2616015 (equivClasses!3270 (toChars!10340 (transformation!7761 rBis!178)) (toValue!10481 (transformation!7761 rBis!178))))))

(assert (= (and d!1241561 res!1731361) b!4213908))

(declare-fun m!4801729 () Bool)

(assert (=> d!1241561 m!4801729))

(declare-fun m!4801731 () Bool)

(assert (=> b!4213908 m!4801731))

(assert (=> b!4213720 d!1241561))

(declare-fun d!1241563 () Bool)

(assert (=> d!1241563 (= (inv!60968 (tag!8625 (rule!10881 t!8364))) (= (mod (str.len (value!241718 (tag!8625 (rule!10881 t!8364)))) 2) 0))))

(assert (=> b!4213710 d!1241563))

(declare-fun d!1241565 () Bool)

(declare-fun res!1731362 () Bool)

(declare-fun e!2616016 () Bool)

(assert (=> d!1241565 (=> (not res!1731362) (not e!2616016))))

(assert (=> d!1241565 (= res!1731362 (semiInverseModEq!3371 (toChars!10340 (transformation!7761 (rule!10881 t!8364))) (toValue!10481 (transformation!7761 (rule!10881 t!8364)))))))

(assert (=> d!1241565 (= (inv!60971 (transformation!7761 (rule!10881 t!8364))) e!2616016)))

(declare-fun b!4213909 () Bool)

(assert (=> b!4213909 (= e!2616016 (equivClasses!3270 (toChars!10340 (transformation!7761 (rule!10881 t!8364))) (toValue!10481 (transformation!7761 (rule!10881 t!8364)))))))

(assert (= (and d!1241565 res!1731362) b!4213909))

(declare-fun m!4801733 () Bool)

(assert (=> d!1241565 m!4801733))

(declare-fun m!4801735 () Bool)

(assert (=> b!4213909 m!4801735))

(assert (=> b!4213710 d!1241565))

(declare-fun d!1241567 () Bool)

(declare-fun res!1731365 () Bool)

(declare-fun e!2616019 () Bool)

(assert (=> d!1241567 (=> (not res!1731365) (not e!2616019))))

(declare-fun rulesValid!3039 (LexerInterface!7356 List!46466) Bool)

(assert (=> d!1241567 (= res!1731365 (rulesValid!3039 thiss!26544 rules!3967))))

(assert (=> d!1241567 (= (rulesInvariant!6567 thiss!26544 rules!3967) e!2616019)))

(declare-fun b!4213912 () Bool)

(declare-datatypes ((List!46470 0))(
  ( (Nil!46346) (Cons!46346 (h!51766 String!53827) (t!348235 List!46470)) )
))
(declare-fun noDuplicateTag!3200 (LexerInterface!7356 List!46466 List!46470) Bool)

(assert (=> b!4213912 (= e!2616019 (noDuplicateTag!3200 thiss!26544 rules!3967 Nil!46346))))

(assert (= (and d!1241567 res!1731365) b!4213912))

(declare-fun m!4801737 () Bool)

(assert (=> d!1241567 m!4801737))

(declare-fun m!4801739 () Bool)

(assert (=> b!4213912 m!4801739))

(assert (=> b!4213713 d!1241567))

(declare-fun d!1241569 () Bool)

(assert (=> d!1241569 (isEmpty!27446 (maxPrefixOneRule!3351 thiss!26544 rBis!178 input!3517))))

(declare-fun lt!1499769 () Unit!65468)

(declare-fun choose!25810 (LexerInterface!7356 Rule!15322 List!46466 List!46464) Unit!65468)

(assert (=> d!1241569 (= lt!1499769 (choose!25810 thiss!26544 rBis!178 (t!348185 rules!3967) input!3517))))

(assert (=> d!1241569 (not (isEmpty!27447 (t!348185 rules!3967)))))

(assert (=> d!1241569 (= (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!619 thiss!26544 rBis!178 (t!348185 rules!3967) input!3517) lt!1499769)))

(declare-fun bs!597477 () Bool)

(assert (= bs!597477 d!1241569))

(assert (=> bs!597477 m!4801525))

(assert (=> bs!597477 m!4801525))

(declare-fun m!4801741 () Bool)

(assert (=> bs!597477 m!4801741))

(declare-fun m!4801743 () Bool)

(assert (=> bs!597477 m!4801743))

(declare-fun m!4801745 () Bool)

(assert (=> bs!597477 m!4801745))

(assert (=> b!4213724 d!1241569))

(declare-fun b!4213931 () Bool)

(declare-fun res!1731385 () Bool)

(declare-fun e!2616028 () Bool)

(assert (=> b!4213931 (=> (not res!1731385) (not e!2616028))))

(declare-fun lt!1499780 () Option!9949)

(assert (=> b!4213931 (= res!1731385 (= (++!11835 (list!16760 (charsOf!5184 (_1!25172 (get!15076 lt!1499780)))) (_2!25172 (get!15076 lt!1499780))) input!3517))))

(declare-fun b!4213932 () Bool)

(declare-fun e!2616027 () Bool)

(assert (=> b!4213932 (= e!2616027 e!2616028)))

(declare-fun res!1731384 () Bool)

(assert (=> b!4213932 (=> (not res!1731384) (not e!2616028))))

(declare-fun isDefined!7391 (Option!9949) Bool)

(assert (=> b!4213932 (= res!1731384 (isDefined!7391 lt!1499780))))

(declare-fun b!4213933 () Bool)

(declare-fun e!2616026 () Option!9949)

(declare-fun call!292993 () Option!9949)

(assert (=> b!4213933 (= e!2616026 call!292993)))

(declare-fun bm!292988 () Bool)

(assert (=> bm!292988 (= call!292993 (maxPrefixOneRule!3351 thiss!26544 (h!51762 rules!3967) input!3517))))

(declare-fun b!4213934 () Bool)

(assert (=> b!4213934 (= e!2616028 (contains!9582 rules!3967 (rule!10881 (_1!25172 (get!15076 lt!1499780)))))))

(declare-fun b!4213935 () Bool)

(declare-fun res!1731386 () Bool)

(assert (=> b!4213935 (=> (not res!1731386) (not e!2616028))))

(assert (=> b!4213935 (= res!1731386 (matchR!6369 (regex!7761 (rule!10881 (_1!25172 (get!15076 lt!1499780)))) (list!16760 (charsOf!5184 (_1!25172 (get!15076 lt!1499780))))))))

(declare-fun b!4213936 () Bool)

(declare-fun res!1731380 () Bool)

(assert (=> b!4213936 (=> (not res!1731380) (not e!2616028))))

(assert (=> b!4213936 (= res!1731380 (< (size!34036 (_2!25172 (get!15076 lt!1499780))) (size!34036 input!3517)))))

(declare-fun b!4213937 () Bool)

(declare-fun lt!1499782 () Option!9949)

(declare-fun lt!1499783 () Option!9949)

(assert (=> b!4213937 (= e!2616026 (ite (and (is-None!9948 lt!1499782) (is-None!9948 lt!1499783)) None!9948 (ite (is-None!9948 lt!1499783) lt!1499782 (ite (is-None!9948 lt!1499782) lt!1499783 (ite (>= (size!34034 (_1!25172 (v!40824 lt!1499782))) (size!34034 (_1!25172 (v!40824 lt!1499783)))) lt!1499782 lt!1499783)))))))

(assert (=> b!4213937 (= lt!1499782 call!292993)))

(assert (=> b!4213937 (= lt!1499783 (maxPrefix!4396 thiss!26544 (t!348185 rules!3967) input!3517))))

(declare-fun d!1241571 () Bool)

(assert (=> d!1241571 e!2616027))

(declare-fun res!1731383 () Bool)

(assert (=> d!1241571 (=> res!1731383 e!2616027)))

(assert (=> d!1241571 (= res!1731383 (isEmpty!27446 lt!1499780))))

(assert (=> d!1241571 (= lt!1499780 e!2616026)))

(declare-fun c!717599 () Bool)

(assert (=> d!1241571 (= c!717599 (and (is-Cons!46342 rules!3967) (is-Nil!46342 (t!348185 rules!3967))))))

(declare-fun lt!1499781 () Unit!65468)

(declare-fun lt!1499784 () Unit!65468)

(assert (=> d!1241571 (= lt!1499781 lt!1499784)))

(assert (=> d!1241571 (isPrefix!4620 input!3517 input!3517)))

(assert (=> d!1241571 (= lt!1499784 (lemmaIsPrefixRefl!3037 input!3517 input!3517))))

(declare-fun rulesValidInductive!2881 (LexerInterface!7356 List!46466) Bool)

(assert (=> d!1241571 (rulesValidInductive!2881 thiss!26544 rules!3967)))

(assert (=> d!1241571 (= (maxPrefix!4396 thiss!26544 rules!3967 input!3517) lt!1499780)))

(declare-fun b!4213938 () Bool)

(declare-fun res!1731382 () Bool)

(assert (=> b!4213938 (=> (not res!1731382) (not e!2616028))))

(assert (=> b!4213938 (= res!1731382 (= (value!241719 (_1!25172 (get!15076 lt!1499780))) (apply!10690 (transformation!7761 (rule!10881 (_1!25172 (get!15076 lt!1499780)))) (seqFromList!5750 (originalCharacters!8143 (_1!25172 (get!15076 lt!1499780)))))))))

(declare-fun b!4213939 () Bool)

(declare-fun res!1731381 () Bool)

(assert (=> b!4213939 (=> (not res!1731381) (not e!2616028))))

(assert (=> b!4213939 (= res!1731381 (= (list!16760 (charsOf!5184 (_1!25172 (get!15076 lt!1499780)))) (originalCharacters!8143 (_1!25172 (get!15076 lt!1499780)))))))

(assert (= (and d!1241571 c!717599) b!4213933))

(assert (= (and d!1241571 (not c!717599)) b!4213937))

(assert (= (or b!4213933 b!4213937) bm!292988))

(assert (= (and d!1241571 (not res!1731383)) b!4213932))

(assert (= (and b!4213932 res!1731384) b!4213939))

(assert (= (and b!4213939 res!1731381) b!4213936))

(assert (= (and b!4213936 res!1731380) b!4213931))

(assert (= (and b!4213931 res!1731385) b!4213938))

(assert (= (and b!4213938 res!1731382) b!4213935))

(assert (= (and b!4213935 res!1731386) b!4213934))

(assert (=> b!4213937 m!4801487))

(declare-fun m!4801747 () Bool)

(assert (=> b!4213938 m!4801747))

(declare-fun m!4801749 () Bool)

(assert (=> b!4213938 m!4801749))

(assert (=> b!4213938 m!4801749))

(declare-fun m!4801751 () Bool)

(assert (=> b!4213938 m!4801751))

(assert (=> b!4213934 m!4801747))

(declare-fun m!4801753 () Bool)

(assert (=> b!4213934 m!4801753))

(assert (=> b!4213935 m!4801747))

(declare-fun m!4801755 () Bool)

(assert (=> b!4213935 m!4801755))

(assert (=> b!4213935 m!4801755))

(declare-fun m!4801757 () Bool)

(assert (=> b!4213935 m!4801757))

(assert (=> b!4213935 m!4801757))

(declare-fun m!4801759 () Bool)

(assert (=> b!4213935 m!4801759))

(assert (=> b!4213936 m!4801747))

(declare-fun m!4801761 () Bool)

(assert (=> b!4213936 m!4801761))

(assert (=> b!4213936 m!4801627))

(assert (=> bm!292988 m!4801485))

(assert (=> b!4213939 m!4801747))

(assert (=> b!4213939 m!4801755))

(assert (=> b!4213939 m!4801755))

(assert (=> b!4213939 m!4801757))

(declare-fun m!4801763 () Bool)

(assert (=> d!1241571 m!4801763))

(assert (=> d!1241571 m!4801527))

(assert (=> d!1241571 m!4801529))

(declare-fun m!4801765 () Bool)

(assert (=> d!1241571 m!4801765))

(declare-fun m!4801767 () Bool)

(assert (=> b!4213932 m!4801767))

(assert (=> b!4213931 m!4801747))

(assert (=> b!4213931 m!4801755))

(assert (=> b!4213931 m!4801755))

(assert (=> b!4213931 m!4801757))

(assert (=> b!4213931 m!4801757))

(declare-fun m!4801769 () Bool)

(assert (=> b!4213931 m!4801769))

(assert (=> b!4213701 d!1241571))

(declare-fun b!4213949 () Bool)

(declare-fun e!2616034 () List!46464)

(assert (=> b!4213949 (= e!2616034 (Cons!46340 (h!51760 pBis!121) (++!11835 (t!348183 pBis!121) suffixBis!41)))))

(declare-fun e!2616033 () Bool)

(declare-fun b!4213951 () Bool)

(declare-fun lt!1499787 () List!46464)

(assert (=> b!4213951 (= e!2616033 (or (not (= suffixBis!41 Nil!46340)) (= lt!1499787 pBis!121)))))

(declare-fun b!4213950 () Bool)

(declare-fun res!1731392 () Bool)

(assert (=> b!4213950 (=> (not res!1731392) (not e!2616033))))

(assert (=> b!4213950 (= res!1731392 (= (size!34036 lt!1499787) (+ (size!34036 pBis!121) (size!34036 suffixBis!41))))))

(declare-fun b!4213948 () Bool)

(assert (=> b!4213948 (= e!2616034 suffixBis!41)))

(declare-fun d!1241573 () Bool)

(assert (=> d!1241573 e!2616033))

(declare-fun res!1731391 () Bool)

(assert (=> d!1241573 (=> (not res!1731391) (not e!2616033))))

(declare-fun content!7258 (List!46464) (Set C!25526))

(assert (=> d!1241573 (= res!1731391 (= (content!7258 lt!1499787) (set.union (content!7258 pBis!121) (content!7258 suffixBis!41))))))

(assert (=> d!1241573 (= lt!1499787 e!2616034)))

(declare-fun c!717602 () Bool)

(assert (=> d!1241573 (= c!717602 (is-Nil!46340 pBis!121))))

(assert (=> d!1241573 (= (++!11835 pBis!121 suffixBis!41) lt!1499787)))

(assert (= (and d!1241573 c!717602) b!4213948))

(assert (= (and d!1241573 (not c!717602)) b!4213949))

(assert (= (and d!1241573 res!1731391) b!4213950))

(assert (= (and b!4213950 res!1731392) b!4213951))

(declare-fun m!4801771 () Bool)

(assert (=> b!4213949 m!4801771))

(declare-fun m!4801773 () Bool)

(assert (=> b!4213950 m!4801773))

(declare-fun m!4801775 () Bool)

(assert (=> b!4213950 m!4801775))

(declare-fun m!4801777 () Bool)

(assert (=> b!4213950 m!4801777))

(declare-fun m!4801779 () Bool)

(assert (=> d!1241573 m!4801779))

(declare-fun m!4801781 () Bool)

(assert (=> d!1241573 m!4801781))

(declare-fun m!4801783 () Bool)

(assert (=> d!1241573 m!4801783))

(assert (=> b!4213712 d!1241573))

(declare-fun d!1241575 () Bool)

(assert (=> d!1241575 (= (isEmpty!27447 rules!3967) (is-Nil!46342 rules!3967))))

(assert (=> b!4213705 d!1241575))

(declare-fun d!1241577 () Bool)

(declare-fun lt!1499790 () Bool)

(declare-fun content!7259 (List!46466) (Set Rule!15322))

(assert (=> d!1241577 (= lt!1499790 (set.member rBis!178 (content!7259 rules!3967)))))

(declare-fun e!2616039 () Bool)

(assert (=> d!1241577 (= lt!1499790 e!2616039)))

(declare-fun res!1731397 () Bool)

(assert (=> d!1241577 (=> (not res!1731397) (not e!2616039))))

(assert (=> d!1241577 (= res!1731397 (is-Cons!46342 rules!3967))))

(assert (=> d!1241577 (= (contains!9582 rules!3967 rBis!178) lt!1499790)))

(declare-fun b!4213956 () Bool)

(declare-fun e!2616040 () Bool)

(assert (=> b!4213956 (= e!2616039 e!2616040)))

(declare-fun res!1731398 () Bool)

(assert (=> b!4213956 (=> res!1731398 e!2616040)))

(assert (=> b!4213956 (= res!1731398 (= (h!51762 rules!3967) rBis!178))))

(declare-fun b!4213957 () Bool)

(assert (=> b!4213957 (= e!2616040 (contains!9582 (t!348185 rules!3967) rBis!178))))

(assert (= (and d!1241577 res!1731397) b!4213956))

(assert (= (and b!4213956 (not res!1731398)) b!4213957))

(declare-fun m!4801785 () Bool)

(assert (=> d!1241577 m!4801785))

(declare-fun m!4801787 () Bool)

(assert (=> d!1241577 m!4801787))

(declare-fun m!4801789 () Bool)

(assert (=> b!4213957 m!4801789))

(assert (=> b!4213727 d!1241577))

(declare-fun b!4213958 () Bool)

(declare-fun e!2616042 () Bool)

(declare-fun e!2616041 () Bool)

(assert (=> b!4213958 (= e!2616042 e!2616041)))

(declare-fun res!1731399 () Bool)

(assert (=> b!4213958 (=> (not res!1731399) (not e!2616041))))

(assert (=> b!4213958 (= res!1731399 (not (is-Nil!46340 input!3517)))))

(declare-fun d!1241579 () Bool)

(declare-fun e!2616043 () Bool)

(assert (=> d!1241579 e!2616043))

(declare-fun res!1731402 () Bool)

(assert (=> d!1241579 (=> res!1731402 e!2616043)))

(declare-fun lt!1499791 () Bool)

(assert (=> d!1241579 (= res!1731402 (not lt!1499791))))

(assert (=> d!1241579 (= lt!1499791 e!2616042)))

(declare-fun res!1731401 () Bool)

(assert (=> d!1241579 (=> res!1731401 e!2616042)))

(assert (=> d!1241579 (= res!1731401 (is-Nil!46340 pBis!121))))

(assert (=> d!1241579 (= (isPrefix!4620 pBis!121 input!3517) lt!1499791)))

(declare-fun b!4213961 () Bool)

(assert (=> b!4213961 (= e!2616043 (>= (size!34036 input!3517) (size!34036 pBis!121)))))

(declare-fun b!4213960 () Bool)

(assert (=> b!4213960 (= e!2616041 (isPrefix!4620 (tail!6786 pBis!121) (tail!6786 input!3517)))))

(declare-fun b!4213959 () Bool)

(declare-fun res!1731400 () Bool)

(assert (=> b!4213959 (=> (not res!1731400) (not e!2616041))))

(assert (=> b!4213959 (= res!1731400 (= (head!8939 pBis!121) (head!8939 input!3517)))))

(assert (= (and d!1241579 (not res!1731401)) b!4213958))

(assert (= (and b!4213958 res!1731399) b!4213959))

(assert (= (and b!4213959 res!1731400) b!4213960))

(assert (= (and d!1241579 (not res!1731402)) b!4213961))

(assert (=> b!4213961 m!4801627))

(assert (=> b!4213961 m!4801775))

(declare-fun m!4801791 () Bool)

(assert (=> b!4213960 m!4801791))

(assert (=> b!4213960 m!4801633))

(assert (=> b!4213960 m!4801791))

(assert (=> b!4213960 m!4801633))

(declare-fun m!4801793 () Bool)

(assert (=> b!4213960 m!4801793))

(declare-fun m!4801795 () Bool)

(assert (=> b!4213959 m!4801795))

(assert (=> b!4213959 m!4801639))

(assert (=> b!4213704 d!1241579))

(declare-fun d!1241581 () Bool)

(assert (=> d!1241581 (= (inv!60968 (tag!8625 (h!51762 rules!3967))) (= (mod (str.len (value!241718 (tag!8625 (h!51762 rules!3967)))) 2) 0))))

(assert (=> b!4213715 d!1241581))

(declare-fun d!1241583 () Bool)

(declare-fun res!1731403 () Bool)

(declare-fun e!2616044 () Bool)

(assert (=> d!1241583 (=> (not res!1731403) (not e!2616044))))

(assert (=> d!1241583 (= res!1731403 (semiInverseModEq!3371 (toChars!10340 (transformation!7761 (h!51762 rules!3967))) (toValue!10481 (transformation!7761 (h!51762 rules!3967)))))))

(assert (=> d!1241583 (= (inv!60971 (transformation!7761 (h!51762 rules!3967))) e!2616044)))

(declare-fun b!4213962 () Bool)

(assert (=> b!4213962 (= e!2616044 (equivClasses!3270 (toChars!10340 (transformation!7761 (h!51762 rules!3967))) (toValue!10481 (transformation!7761 (h!51762 rules!3967)))))))

(assert (= (and d!1241583 res!1731403) b!4213962))

(declare-fun m!4801797 () Bool)

(assert (=> d!1241583 m!4801797))

(declare-fun m!4801799 () Bool)

(assert (=> b!4213962 m!4801799))

(assert (=> b!4213715 d!1241583))

(declare-fun d!1241585 () Bool)

(declare-fun list!16762 (Conc!13972) List!46464)

(assert (=> d!1241585 (= (list!16760 (charsOf!5184 tBis!41)) (list!16762 (c!717581 (charsOf!5184 tBis!41))))))

(declare-fun bs!597478 () Bool)

(assert (= bs!597478 d!1241585))

(declare-fun m!4801801 () Bool)

(assert (=> bs!597478 m!4801801))

(assert (=> b!4213726 d!1241585))

(declare-fun d!1241587 () Bool)

(declare-fun lt!1499794 () BalanceConc!27538)

(assert (=> d!1241587 (= (list!16760 lt!1499794) (originalCharacters!8143 tBis!41))))

(declare-fun dynLambda!19975 (Int TokenValue!7991) BalanceConc!27538)

(assert (=> d!1241587 (= lt!1499794 (dynLambda!19975 (toChars!10340 (transformation!7761 (rule!10881 tBis!41))) (value!241719 tBis!41)))))

(assert (=> d!1241587 (= (charsOf!5184 tBis!41) lt!1499794)))

(declare-fun b_lambda!124123 () Bool)

(assert (=> (not b_lambda!124123) (not d!1241587)))

(declare-fun tb!252935 () Bool)

(declare-fun t!348206 () Bool)

(assert (=> (and b!4213716 (= (toChars!10340 (transformation!7761 rBis!178)) (toChars!10340 (transformation!7761 (rule!10881 tBis!41)))) t!348206) tb!252935))

(declare-fun b!4213967 () Bool)

(declare-fun e!2616047 () Bool)

(declare-fun tp!1288815 () Bool)

(declare-fun inv!60975 (Conc!13972) Bool)

(assert (=> b!4213967 (= e!2616047 (and (inv!60975 (c!717581 (dynLambda!19975 (toChars!10340 (transformation!7761 (rule!10881 tBis!41))) (value!241719 tBis!41)))) tp!1288815))))

(declare-fun result!308282 () Bool)

(declare-fun inv!60976 (BalanceConc!27538) Bool)

(assert (=> tb!252935 (= result!308282 (and (inv!60976 (dynLambda!19975 (toChars!10340 (transformation!7761 (rule!10881 tBis!41))) (value!241719 tBis!41))) e!2616047))))

(assert (= tb!252935 b!4213967))

(declare-fun m!4801803 () Bool)

(assert (=> b!4213967 m!4801803))

(declare-fun m!4801805 () Bool)

(assert (=> tb!252935 m!4801805))

(assert (=> d!1241587 t!348206))

(declare-fun b_and!331829 () Bool)

(assert (= b_and!331783 (and (=> t!348206 result!308282) b_and!331829)))

(declare-fun t!348208 () Bool)

(declare-fun tb!252937 () Bool)

(assert (=> (and b!4213695 (= (toChars!10340 (transformation!7761 (rule!10881 tBis!41))) (toChars!10340 (transformation!7761 (rule!10881 tBis!41)))) t!348208) tb!252937))

(declare-fun result!308286 () Bool)

(assert (= result!308286 result!308282))

(assert (=> d!1241587 t!348208))

(declare-fun b_and!331831 () Bool)

(assert (= b_and!331787 (and (=> t!348208 result!308286) b_and!331831)))

(declare-fun tb!252939 () Bool)

(declare-fun t!348210 () Bool)

(assert (=> (and b!4213696 (= (toChars!10340 (transformation!7761 (h!51762 rules!3967))) (toChars!10340 (transformation!7761 (rule!10881 tBis!41)))) t!348210) tb!252939))

(declare-fun result!308288 () Bool)

(assert (= result!308288 result!308282))

(assert (=> d!1241587 t!348210))

(declare-fun b_and!331833 () Bool)

(assert (= b_and!331791 (and (=> t!348210 result!308288) b_and!331833)))

(declare-fun t!348212 () Bool)

(declare-fun tb!252941 () Bool)

(assert (=> (and b!4213706 (= (toChars!10340 (transformation!7761 (rule!10881 t!8364))) (toChars!10340 (transformation!7761 (rule!10881 tBis!41)))) t!348212) tb!252941))

(declare-fun result!308290 () Bool)

(assert (= result!308290 result!308282))

(assert (=> d!1241587 t!348212))

(declare-fun b_and!331835 () Bool)

(assert (= b_and!331795 (and (=> t!348212 result!308290) b_and!331835)))

(declare-fun m!4801807 () Bool)

(assert (=> d!1241587 m!4801807))

(declare-fun m!4801809 () Bool)

(assert (=> d!1241587 m!4801809))

(assert (=> b!4213726 d!1241587))

(declare-fun d!1241589 () Bool)

(declare-fun res!1731408 () Bool)

(declare-fun e!2616050 () Bool)

(assert (=> d!1241589 (=> (not res!1731408) (not e!2616050))))

(assert (=> d!1241589 (= res!1731408 (not (isEmpty!27450 (originalCharacters!8143 tBis!41))))))

(assert (=> d!1241589 (= (inv!60972 tBis!41) e!2616050)))

(declare-fun b!4213972 () Bool)

(declare-fun res!1731409 () Bool)

(assert (=> b!4213972 (=> (not res!1731409) (not e!2616050))))

(assert (=> b!4213972 (= res!1731409 (= (originalCharacters!8143 tBis!41) (list!16760 (dynLambda!19975 (toChars!10340 (transformation!7761 (rule!10881 tBis!41))) (value!241719 tBis!41)))))))

(declare-fun b!4213973 () Bool)

(assert (=> b!4213973 (= e!2616050 (= (size!34034 tBis!41) (size!34036 (originalCharacters!8143 tBis!41))))))

(assert (= (and d!1241589 res!1731408) b!4213972))

(assert (= (and b!4213972 res!1731409) b!4213973))

(declare-fun b_lambda!124125 () Bool)

(assert (=> (not b_lambda!124125) (not b!4213972)))

(assert (=> b!4213972 t!348206))

(declare-fun b_and!331837 () Bool)

(assert (= b_and!331829 (and (=> t!348206 result!308282) b_and!331837)))

(assert (=> b!4213972 t!348208))

(declare-fun b_and!331839 () Bool)

(assert (= b_and!331831 (and (=> t!348208 result!308286) b_and!331839)))

(assert (=> b!4213972 t!348210))

(declare-fun b_and!331841 () Bool)

(assert (= b_and!331833 (and (=> t!348210 result!308288) b_and!331841)))

(assert (=> b!4213972 t!348212))

(declare-fun b_and!331843 () Bool)

(assert (= b_and!331835 (and (=> t!348212 result!308290) b_and!331843)))

(declare-fun m!4801811 () Bool)

(assert (=> d!1241589 m!4801811))

(assert (=> b!4213972 m!4801809))

(assert (=> b!4213972 m!4801809))

(declare-fun m!4801813 () Bool)

(assert (=> b!4213972 m!4801813))

(declare-fun m!4801815 () Bool)

(assert (=> b!4213973 m!4801815))

(assert (=> start!402688 d!1241589))

(declare-fun d!1241591 () Bool)

(declare-fun res!1731410 () Bool)

(declare-fun e!2616051 () Bool)

(assert (=> d!1241591 (=> (not res!1731410) (not e!2616051))))

(assert (=> d!1241591 (= res!1731410 (not (isEmpty!27450 (originalCharacters!8143 t!8364))))))

(assert (=> d!1241591 (= (inv!60972 t!8364) e!2616051)))

(declare-fun b!4213974 () Bool)

(declare-fun res!1731411 () Bool)

(assert (=> b!4213974 (=> (not res!1731411) (not e!2616051))))

(assert (=> b!4213974 (= res!1731411 (= (originalCharacters!8143 t!8364) (list!16760 (dynLambda!19975 (toChars!10340 (transformation!7761 (rule!10881 t!8364))) (value!241719 t!8364)))))))

(declare-fun b!4213975 () Bool)

(assert (=> b!4213975 (= e!2616051 (= (size!34034 t!8364) (size!34036 (originalCharacters!8143 t!8364))))))

(assert (= (and d!1241591 res!1731410) b!4213974))

(assert (= (and b!4213974 res!1731411) b!4213975))

(declare-fun b_lambda!124127 () Bool)

(assert (=> (not b_lambda!124127) (not b!4213974)))

(declare-fun tb!252943 () Bool)

(declare-fun t!348214 () Bool)

(assert (=> (and b!4213716 (= (toChars!10340 (transformation!7761 rBis!178)) (toChars!10340 (transformation!7761 (rule!10881 t!8364)))) t!348214) tb!252943))

(declare-fun b!4213976 () Bool)

(declare-fun e!2616052 () Bool)

(declare-fun tp!1288816 () Bool)

(assert (=> b!4213976 (= e!2616052 (and (inv!60975 (c!717581 (dynLambda!19975 (toChars!10340 (transformation!7761 (rule!10881 t!8364))) (value!241719 t!8364)))) tp!1288816))))

(declare-fun result!308292 () Bool)

(assert (=> tb!252943 (= result!308292 (and (inv!60976 (dynLambda!19975 (toChars!10340 (transformation!7761 (rule!10881 t!8364))) (value!241719 t!8364))) e!2616052))))

(assert (= tb!252943 b!4213976))

(declare-fun m!4801817 () Bool)

(assert (=> b!4213976 m!4801817))

(declare-fun m!4801819 () Bool)

(assert (=> tb!252943 m!4801819))

(assert (=> b!4213974 t!348214))

(declare-fun b_and!331845 () Bool)

(assert (= b_and!331837 (and (=> t!348214 result!308292) b_and!331845)))

(declare-fun t!348216 () Bool)

(declare-fun tb!252945 () Bool)

(assert (=> (and b!4213695 (= (toChars!10340 (transformation!7761 (rule!10881 tBis!41))) (toChars!10340 (transformation!7761 (rule!10881 t!8364)))) t!348216) tb!252945))

(declare-fun result!308294 () Bool)

(assert (= result!308294 result!308292))

(assert (=> b!4213974 t!348216))

(declare-fun b_and!331847 () Bool)

(assert (= b_and!331839 (and (=> t!348216 result!308294) b_and!331847)))

(declare-fun t!348218 () Bool)

(declare-fun tb!252947 () Bool)

(assert (=> (and b!4213696 (= (toChars!10340 (transformation!7761 (h!51762 rules!3967))) (toChars!10340 (transformation!7761 (rule!10881 t!8364)))) t!348218) tb!252947))

(declare-fun result!308296 () Bool)

(assert (= result!308296 result!308292))

(assert (=> b!4213974 t!348218))

(declare-fun b_and!331849 () Bool)

(assert (= b_and!331841 (and (=> t!348218 result!308296) b_and!331849)))

(declare-fun t!348220 () Bool)

(declare-fun tb!252949 () Bool)

(assert (=> (and b!4213706 (= (toChars!10340 (transformation!7761 (rule!10881 t!8364))) (toChars!10340 (transformation!7761 (rule!10881 t!8364)))) t!348220) tb!252949))

(declare-fun result!308298 () Bool)

(assert (= result!308298 result!308292))

(assert (=> b!4213974 t!348220))

(declare-fun b_and!331851 () Bool)

(assert (= b_and!331843 (and (=> t!348220 result!308298) b_and!331851)))

(declare-fun m!4801821 () Bool)

(assert (=> d!1241591 m!4801821))

(declare-fun m!4801823 () Bool)

(assert (=> b!4213974 m!4801823))

(assert (=> b!4213974 m!4801823))

(declare-fun m!4801825 () Bool)

(assert (=> b!4213974 m!4801825))

(declare-fun m!4801827 () Bool)

(assert (=> b!4213975 m!4801827))

(assert (=> start!402688 d!1241591))

(declare-fun b!4213978 () Bool)

(declare-fun e!2616054 () List!46464)

(assert (=> b!4213978 (= e!2616054 (Cons!46340 (h!51760 p!3001) (++!11835 (t!348183 p!3001) suffix!1557)))))

(declare-fun b!4213980 () Bool)

(declare-fun e!2616053 () Bool)

(declare-fun lt!1499795 () List!46464)

(assert (=> b!4213980 (= e!2616053 (or (not (= suffix!1557 Nil!46340)) (= lt!1499795 p!3001)))))

(declare-fun b!4213979 () Bool)

(declare-fun res!1731413 () Bool)

(assert (=> b!4213979 (=> (not res!1731413) (not e!2616053))))

(assert (=> b!4213979 (= res!1731413 (= (size!34036 lt!1499795) (+ (size!34036 p!3001) (size!34036 suffix!1557))))))

(declare-fun b!4213977 () Bool)

(assert (=> b!4213977 (= e!2616054 suffix!1557)))

(declare-fun d!1241593 () Bool)

(assert (=> d!1241593 e!2616053))

(declare-fun res!1731412 () Bool)

(assert (=> d!1241593 (=> (not res!1731412) (not e!2616053))))

(assert (=> d!1241593 (= res!1731412 (= (content!7258 lt!1499795) (set.union (content!7258 p!3001) (content!7258 suffix!1557))))))

(assert (=> d!1241593 (= lt!1499795 e!2616054)))

(declare-fun c!717603 () Bool)

(assert (=> d!1241593 (= c!717603 (is-Nil!46340 p!3001))))

(assert (=> d!1241593 (= (++!11835 p!3001 suffix!1557) lt!1499795)))

(assert (= (and d!1241593 c!717603) b!4213977))

(assert (= (and d!1241593 (not c!717603)) b!4213978))

(assert (= (and d!1241593 res!1731412) b!4213979))

(assert (= (and b!4213979 res!1731413) b!4213980))

(declare-fun m!4801829 () Bool)

(assert (=> b!4213978 m!4801829))

(declare-fun m!4801831 () Bool)

(assert (=> b!4213979 m!4801831))

(assert (=> b!4213979 m!4801629))

(declare-fun m!4801833 () Bool)

(assert (=> b!4213979 m!4801833))

(declare-fun m!4801835 () Bool)

(assert (=> d!1241593 m!4801835))

(declare-fun m!4801837 () Bool)

(assert (=> d!1241593 m!4801837))

(declare-fun m!4801839 () Bool)

(assert (=> d!1241593 m!4801839))

(assert (=> b!4213697 d!1241593))

(declare-fun d!1241595 () Bool)

(declare-fun res!1731418 () Bool)

(declare-fun e!2616057 () Bool)

(assert (=> d!1241595 (=> (not res!1731418) (not e!2616057))))

(declare-fun validRegex!5748 (Regex!12666) Bool)

(assert (=> d!1241595 (= res!1731418 (validRegex!5748 (regex!7761 rBis!178)))))

(assert (=> d!1241595 (= (ruleValid!3473 thiss!26544 rBis!178) e!2616057)))

(declare-fun b!4213985 () Bool)

(declare-fun res!1731419 () Bool)

(assert (=> b!4213985 (=> (not res!1731419) (not e!2616057))))

(declare-fun nullable!4461 (Regex!12666) Bool)

(assert (=> b!4213985 (= res!1731419 (not (nullable!4461 (regex!7761 rBis!178))))))

(declare-fun b!4213986 () Bool)

(assert (=> b!4213986 (= e!2616057 (not (= (tag!8625 rBis!178) (String!53828 ""))))))

(assert (= (and d!1241595 res!1731418) b!4213985))

(assert (= (and b!4213985 res!1731419) b!4213986))

(declare-fun m!4801841 () Bool)

(assert (=> d!1241595 m!4801841))

(declare-fun m!4801843 () Bool)

(assert (=> b!4213985 m!4801843))

(assert (=> b!4213708 d!1241595))

(declare-fun b!4213987 () Bool)

(declare-fun res!1731426 () Bool)

(declare-fun e!2616059 () Bool)

(assert (=> b!4213987 (=> (not res!1731426) (not e!2616059))))

(declare-fun lt!1499800 () Option!9949)

(assert (=> b!4213987 (= res!1731426 (= (rule!10881 (_1!25172 (get!15076 lt!1499800))) (h!51762 rules!3967)))))

(declare-fun b!4213988 () Bool)

(declare-fun e!2616060 () Option!9949)

(assert (=> b!4213988 (= e!2616060 None!9948)))

(declare-fun b!4213989 () Bool)

(declare-fun e!2616058 () Bool)

(assert (=> b!4213989 (= e!2616058 (matchR!6369 (regex!7761 (h!51762 rules!3967)) (_1!25174 (findLongestMatchInner!1650 (regex!7761 (h!51762 rules!3967)) Nil!46340 (size!34036 Nil!46340) input!3517 input!3517 (size!34036 input!3517)))))))

(declare-fun d!1241597 () Bool)

(declare-fun e!2616061 () Bool)

(assert (=> d!1241597 e!2616061))

(declare-fun res!1731423 () Bool)

(assert (=> d!1241597 (=> res!1731423 e!2616061)))

(assert (=> d!1241597 (= res!1731423 (isEmpty!27446 lt!1499800))))

(assert (=> d!1241597 (= lt!1499800 e!2616060)))

(declare-fun c!717604 () Bool)

(declare-fun lt!1499799 () tuple2!44080)

(assert (=> d!1241597 (= c!717604 (isEmpty!27450 (_1!25174 lt!1499799)))))

(assert (=> d!1241597 (= lt!1499799 (findLongestMatch!1563 (regex!7761 (h!51762 rules!3967)) input!3517))))

(assert (=> d!1241597 (ruleValid!3473 thiss!26544 (h!51762 rules!3967))))

(assert (=> d!1241597 (= (maxPrefixOneRule!3351 thiss!26544 (h!51762 rules!3967) input!3517) lt!1499800)))

(declare-fun b!4213990 () Bool)

(assert (=> b!4213990 (= e!2616060 (Some!9948 (tuple2!44077 (Token!14225 (apply!10690 (transformation!7761 (h!51762 rules!3967)) (seqFromList!5750 (_1!25174 lt!1499799))) (h!51762 rules!3967) (size!34037 (seqFromList!5750 (_1!25174 lt!1499799))) (_1!25174 lt!1499799)) (_2!25174 lt!1499799))))))

(declare-fun lt!1499797 () Unit!65468)

(assert (=> b!4213990 (= lt!1499797 (longestMatchIsAcceptedByMatchOrIsEmpty!1623 (regex!7761 (h!51762 rules!3967)) input!3517))))

(declare-fun res!1731424 () Bool)

(assert (=> b!4213990 (= res!1731424 (isEmpty!27450 (_1!25174 (findLongestMatchInner!1650 (regex!7761 (h!51762 rules!3967)) Nil!46340 (size!34036 Nil!46340) input!3517 input!3517 (size!34036 input!3517)))))))

(assert (=> b!4213990 (=> res!1731424 e!2616058)))

(assert (=> b!4213990 e!2616058))

(declare-fun lt!1499796 () Unit!65468)

(assert (=> b!4213990 (= lt!1499796 lt!1499797)))

(declare-fun lt!1499798 () Unit!65468)

(assert (=> b!4213990 (= lt!1499798 (lemmaSemiInverse!2491 (transformation!7761 (h!51762 rules!3967)) (seqFromList!5750 (_1!25174 lt!1499799))))))

(declare-fun b!4213991 () Bool)

(declare-fun res!1731420 () Bool)

(assert (=> b!4213991 (=> (not res!1731420) (not e!2616059))))

(assert (=> b!4213991 (= res!1731420 (= (++!11835 (list!16760 (charsOf!5184 (_1!25172 (get!15076 lt!1499800)))) (_2!25172 (get!15076 lt!1499800))) input!3517))))

(declare-fun b!4213992 () Bool)

(declare-fun res!1731422 () Bool)

(assert (=> b!4213992 (=> (not res!1731422) (not e!2616059))))

(assert (=> b!4213992 (= res!1731422 (< (size!34036 (_2!25172 (get!15076 lt!1499800))) (size!34036 input!3517)))))

(declare-fun b!4213993 () Bool)

(assert (=> b!4213993 (= e!2616061 e!2616059)))

(declare-fun res!1731425 () Bool)

(assert (=> b!4213993 (=> (not res!1731425) (not e!2616059))))

(assert (=> b!4213993 (= res!1731425 (matchR!6369 (regex!7761 (h!51762 rules!3967)) (list!16760 (charsOf!5184 (_1!25172 (get!15076 lt!1499800))))))))

(declare-fun b!4213994 () Bool)

(declare-fun res!1731421 () Bool)

(assert (=> b!4213994 (=> (not res!1731421) (not e!2616059))))

(assert (=> b!4213994 (= res!1731421 (= (value!241719 (_1!25172 (get!15076 lt!1499800))) (apply!10690 (transformation!7761 (rule!10881 (_1!25172 (get!15076 lt!1499800)))) (seqFromList!5750 (originalCharacters!8143 (_1!25172 (get!15076 lt!1499800)))))))))

(declare-fun b!4213995 () Bool)

(assert (=> b!4213995 (= e!2616059 (= (size!34034 (_1!25172 (get!15076 lt!1499800))) (size!34036 (originalCharacters!8143 (_1!25172 (get!15076 lt!1499800))))))))

(assert (= (and d!1241597 c!717604) b!4213988))

(assert (= (and d!1241597 (not c!717604)) b!4213990))

(assert (= (and b!4213990 (not res!1731424)) b!4213989))

(assert (= (and d!1241597 (not res!1731423)) b!4213993))

(assert (= (and b!4213993 res!1731425) b!4213991))

(assert (= (and b!4213991 res!1731420) b!4213992))

(assert (= (and b!4213992 res!1731422) b!4213987))

(assert (= (and b!4213987 res!1731426) b!4213994))

(assert (= (and b!4213994 res!1731421) b!4213995))

(assert (=> b!4213989 m!4801677))

(assert (=> b!4213989 m!4801627))

(assert (=> b!4213989 m!4801677))

(assert (=> b!4213989 m!4801627))

(declare-fun m!4801845 () Bool)

(assert (=> b!4213989 m!4801845))

(declare-fun m!4801847 () Bool)

(assert (=> b!4213989 m!4801847))

(declare-fun m!4801849 () Bool)

(assert (=> b!4213992 m!4801849))

(declare-fun m!4801851 () Bool)

(assert (=> b!4213992 m!4801851))

(assert (=> b!4213992 m!4801627))

(assert (=> b!4213990 m!4801627))

(declare-fun m!4801853 () Bool)

(assert (=> b!4213990 m!4801853))

(declare-fun m!4801855 () Bool)

(assert (=> b!4213990 m!4801855))

(assert (=> b!4213990 m!4801853))

(declare-fun m!4801857 () Bool)

(assert (=> b!4213990 m!4801857))

(assert (=> b!4213990 m!4801853))

(assert (=> b!4213990 m!4801677))

(assert (=> b!4213990 m!4801677))

(assert (=> b!4213990 m!4801627))

(assert (=> b!4213990 m!4801845))

(declare-fun m!4801859 () Bool)

(assert (=> b!4213990 m!4801859))

(declare-fun m!4801861 () Bool)

(assert (=> b!4213990 m!4801861))

(assert (=> b!4213990 m!4801853))

(declare-fun m!4801863 () Bool)

(assert (=> b!4213990 m!4801863))

(assert (=> b!4213994 m!4801849))

(declare-fun m!4801865 () Bool)

(assert (=> b!4213994 m!4801865))

(assert (=> b!4213994 m!4801865))

(declare-fun m!4801867 () Bool)

(assert (=> b!4213994 m!4801867))

(assert (=> b!4213993 m!4801849))

(declare-fun m!4801869 () Bool)

(assert (=> b!4213993 m!4801869))

(assert (=> b!4213993 m!4801869))

(declare-fun m!4801871 () Bool)

(assert (=> b!4213993 m!4801871))

(assert (=> b!4213993 m!4801871))

(declare-fun m!4801873 () Bool)

(assert (=> b!4213993 m!4801873))

(assert (=> b!4213991 m!4801849))

(assert (=> b!4213991 m!4801869))

(assert (=> b!4213991 m!4801869))

(assert (=> b!4213991 m!4801871))

(assert (=> b!4213991 m!4801871))

(declare-fun m!4801875 () Bool)

(assert (=> b!4213991 m!4801875))

(assert (=> b!4213987 m!4801849))

(declare-fun m!4801877 () Bool)

(assert (=> d!1241597 m!4801877))

(declare-fun m!4801879 () Bool)

(assert (=> d!1241597 m!4801879))

(declare-fun m!4801881 () Bool)

(assert (=> d!1241597 m!4801881))

(declare-fun m!4801883 () Bool)

(assert (=> d!1241597 m!4801883))

(assert (=> b!4213995 m!4801849))

(declare-fun m!4801885 () Bool)

(assert (=> b!4213995 m!4801885))

(assert (=> b!4213719 d!1241597))

(declare-fun b!4213996 () Bool)

(declare-fun res!1731432 () Bool)

(declare-fun e!2616064 () Bool)

(assert (=> b!4213996 (=> (not res!1731432) (not e!2616064))))

(declare-fun lt!1499801 () Option!9949)

(assert (=> b!4213996 (= res!1731432 (= (++!11835 (list!16760 (charsOf!5184 (_1!25172 (get!15076 lt!1499801)))) (_2!25172 (get!15076 lt!1499801))) input!3517))))

(declare-fun b!4213997 () Bool)

(declare-fun e!2616063 () Bool)

(assert (=> b!4213997 (= e!2616063 e!2616064)))

(declare-fun res!1731431 () Bool)

(assert (=> b!4213997 (=> (not res!1731431) (not e!2616064))))

(assert (=> b!4213997 (= res!1731431 (isDefined!7391 lt!1499801))))

(declare-fun b!4213998 () Bool)

(declare-fun e!2616062 () Option!9949)

(declare-fun call!292994 () Option!9949)

(assert (=> b!4213998 (= e!2616062 call!292994)))

(declare-fun bm!292989 () Bool)

(assert (=> bm!292989 (= call!292994 (maxPrefixOneRule!3351 thiss!26544 (h!51762 (t!348185 rules!3967)) input!3517))))

(declare-fun b!4213999 () Bool)

(assert (=> b!4213999 (= e!2616064 (contains!9582 (t!348185 rules!3967) (rule!10881 (_1!25172 (get!15076 lt!1499801)))))))

(declare-fun b!4214000 () Bool)

(declare-fun res!1731433 () Bool)

(assert (=> b!4214000 (=> (not res!1731433) (not e!2616064))))

(assert (=> b!4214000 (= res!1731433 (matchR!6369 (regex!7761 (rule!10881 (_1!25172 (get!15076 lt!1499801)))) (list!16760 (charsOf!5184 (_1!25172 (get!15076 lt!1499801))))))))

(declare-fun b!4214001 () Bool)

(declare-fun res!1731427 () Bool)

(assert (=> b!4214001 (=> (not res!1731427) (not e!2616064))))

(assert (=> b!4214001 (= res!1731427 (< (size!34036 (_2!25172 (get!15076 lt!1499801))) (size!34036 input!3517)))))

(declare-fun b!4214002 () Bool)

(declare-fun lt!1499803 () Option!9949)

(declare-fun lt!1499804 () Option!9949)

(assert (=> b!4214002 (= e!2616062 (ite (and (is-None!9948 lt!1499803) (is-None!9948 lt!1499804)) None!9948 (ite (is-None!9948 lt!1499804) lt!1499803 (ite (is-None!9948 lt!1499803) lt!1499804 (ite (>= (size!34034 (_1!25172 (v!40824 lt!1499803))) (size!34034 (_1!25172 (v!40824 lt!1499804)))) lt!1499803 lt!1499804)))))))

(assert (=> b!4214002 (= lt!1499803 call!292994)))

(assert (=> b!4214002 (= lt!1499804 (maxPrefix!4396 thiss!26544 (t!348185 (t!348185 rules!3967)) input!3517))))

(declare-fun d!1241599 () Bool)

(assert (=> d!1241599 e!2616063))

(declare-fun res!1731430 () Bool)

(assert (=> d!1241599 (=> res!1731430 e!2616063)))

(assert (=> d!1241599 (= res!1731430 (isEmpty!27446 lt!1499801))))

(assert (=> d!1241599 (= lt!1499801 e!2616062)))

(declare-fun c!717605 () Bool)

(assert (=> d!1241599 (= c!717605 (and (is-Cons!46342 (t!348185 rules!3967)) (is-Nil!46342 (t!348185 (t!348185 rules!3967)))))))

(declare-fun lt!1499802 () Unit!65468)

(declare-fun lt!1499805 () Unit!65468)

(assert (=> d!1241599 (= lt!1499802 lt!1499805)))

(assert (=> d!1241599 (isPrefix!4620 input!3517 input!3517)))

(assert (=> d!1241599 (= lt!1499805 (lemmaIsPrefixRefl!3037 input!3517 input!3517))))

(assert (=> d!1241599 (rulesValidInductive!2881 thiss!26544 (t!348185 rules!3967))))

(assert (=> d!1241599 (= (maxPrefix!4396 thiss!26544 (t!348185 rules!3967) input!3517) lt!1499801)))

(declare-fun b!4214003 () Bool)

(declare-fun res!1731429 () Bool)

(assert (=> b!4214003 (=> (not res!1731429) (not e!2616064))))

(assert (=> b!4214003 (= res!1731429 (= (value!241719 (_1!25172 (get!15076 lt!1499801))) (apply!10690 (transformation!7761 (rule!10881 (_1!25172 (get!15076 lt!1499801)))) (seqFromList!5750 (originalCharacters!8143 (_1!25172 (get!15076 lt!1499801)))))))))

(declare-fun b!4214004 () Bool)

(declare-fun res!1731428 () Bool)

(assert (=> b!4214004 (=> (not res!1731428) (not e!2616064))))

(assert (=> b!4214004 (= res!1731428 (= (list!16760 (charsOf!5184 (_1!25172 (get!15076 lt!1499801)))) (originalCharacters!8143 (_1!25172 (get!15076 lt!1499801)))))))

(assert (= (and d!1241599 c!717605) b!4213998))

(assert (= (and d!1241599 (not c!717605)) b!4214002))

(assert (= (or b!4213998 b!4214002) bm!292989))

(assert (= (and d!1241599 (not res!1731430)) b!4213997))

(assert (= (and b!4213997 res!1731431) b!4214004))

(assert (= (and b!4214004 res!1731428) b!4214001))

(assert (= (and b!4214001 res!1731427) b!4213996))

(assert (= (and b!4213996 res!1731432) b!4214003))

(assert (= (and b!4214003 res!1731429) b!4214000))

(assert (= (and b!4214000 res!1731433) b!4213999))

(declare-fun m!4801887 () Bool)

(assert (=> b!4214002 m!4801887))

(declare-fun m!4801889 () Bool)

(assert (=> b!4214003 m!4801889))

(declare-fun m!4801891 () Bool)

(assert (=> b!4214003 m!4801891))

(assert (=> b!4214003 m!4801891))

(declare-fun m!4801893 () Bool)

(assert (=> b!4214003 m!4801893))

(assert (=> b!4213999 m!4801889))

(declare-fun m!4801895 () Bool)

(assert (=> b!4213999 m!4801895))

(assert (=> b!4214000 m!4801889))

(declare-fun m!4801897 () Bool)

(assert (=> b!4214000 m!4801897))

(assert (=> b!4214000 m!4801897))

(declare-fun m!4801899 () Bool)

(assert (=> b!4214000 m!4801899))

(assert (=> b!4214000 m!4801899))

(declare-fun m!4801901 () Bool)

(assert (=> b!4214000 m!4801901))

(assert (=> b!4214001 m!4801889))

(declare-fun m!4801903 () Bool)

(assert (=> b!4214001 m!4801903))

(assert (=> b!4214001 m!4801627))

(declare-fun m!4801905 () Bool)

(assert (=> bm!292989 m!4801905))

(assert (=> b!4214004 m!4801889))

(assert (=> b!4214004 m!4801897))

(assert (=> b!4214004 m!4801897))

(assert (=> b!4214004 m!4801899))

(declare-fun m!4801907 () Bool)

(assert (=> d!1241599 m!4801907))

(assert (=> d!1241599 m!4801527))

(assert (=> d!1241599 m!4801529))

(declare-fun m!4801909 () Bool)

(assert (=> d!1241599 m!4801909))

(declare-fun m!4801911 () Bool)

(assert (=> b!4213997 m!4801911))

(assert (=> b!4213996 m!4801889))

(assert (=> b!4213996 m!4801897))

(assert (=> b!4213996 m!4801897))

(assert (=> b!4213996 m!4801899))

(assert (=> b!4213996 m!4801899))

(declare-fun m!4801913 () Bool)

(assert (=> b!4213996 m!4801913))

(assert (=> b!4213698 d!1241599))

(declare-fun b!4214009 () Bool)

(declare-fun e!2616068 () Bool)

(declare-fun e!2616067 () Bool)

(assert (=> b!4214009 (= e!2616068 e!2616067)))

(declare-fun res!1731434 () Bool)

(assert (=> b!4214009 (=> (not res!1731434) (not e!2616067))))

(assert (=> b!4214009 (= res!1731434 (not (is-Nil!46340 lt!1499714)))))

(declare-fun d!1241601 () Bool)

(declare-fun e!2616069 () Bool)

(assert (=> d!1241601 e!2616069))

(declare-fun res!1731437 () Bool)

(assert (=> d!1241601 (=> res!1731437 e!2616069)))

(declare-fun lt!1499814 () Bool)

(assert (=> d!1241601 (= res!1731437 (not lt!1499814))))

(assert (=> d!1241601 (= lt!1499814 e!2616068)))

(declare-fun res!1731436 () Bool)

(assert (=> d!1241601 (=> res!1731436 e!2616068)))

(assert (=> d!1241601 (= res!1731436 (is-Nil!46340 lt!1499708))))

(assert (=> d!1241601 (= (isPrefix!4620 lt!1499708 lt!1499714) lt!1499814)))

(declare-fun b!4214012 () Bool)

(assert (=> b!4214012 (= e!2616069 (>= (size!34036 lt!1499714) (size!34036 lt!1499708)))))

(declare-fun b!4214011 () Bool)

(assert (=> b!4214011 (= e!2616067 (isPrefix!4620 (tail!6786 lt!1499708) (tail!6786 lt!1499714)))))

(declare-fun b!4214010 () Bool)

(declare-fun res!1731435 () Bool)

(assert (=> b!4214010 (=> (not res!1731435) (not e!2616067))))

(assert (=> b!4214010 (= res!1731435 (= (head!8939 lt!1499708) (head!8939 lt!1499714)))))

(assert (= (and d!1241601 (not res!1731436)) b!4214009))

(assert (= (and b!4214009 res!1731434) b!4214010))

(assert (= (and b!4214010 res!1731435) b!4214011))

(assert (= (and d!1241601 (not res!1731437)) b!4214012))

(declare-fun m!4801915 () Bool)

(assert (=> b!4214012 m!4801915))

(declare-fun m!4801917 () Bool)

(assert (=> b!4214012 m!4801917))

(declare-fun m!4801919 () Bool)

(assert (=> b!4214011 m!4801919))

(declare-fun m!4801921 () Bool)

(assert (=> b!4214011 m!4801921))

(assert (=> b!4214011 m!4801919))

(assert (=> b!4214011 m!4801921))

(declare-fun m!4801923 () Bool)

(assert (=> b!4214011 m!4801923))

(declare-fun m!4801925 () Bool)

(assert (=> b!4214010 m!4801925))

(declare-fun m!4801927 () Bool)

(assert (=> b!4214010 m!4801927))

(assert (=> b!4213698 d!1241601))

(declare-fun d!1241603 () Bool)

(assert (=> d!1241603 (isPrefix!4620 lt!1499708 (++!11835 lt!1499708 (_2!25172 lt!1499707)))))

(declare-fun lt!1499819 () Unit!65468)

(declare-fun choose!25811 (List!46464 List!46464) Unit!65468)

(assert (=> d!1241603 (= lt!1499819 (choose!25811 lt!1499708 (_2!25172 lt!1499707)))))

(assert (=> d!1241603 (= (lemmaConcatTwoListThenFirstIsPrefix!3075 lt!1499708 (_2!25172 lt!1499707)) lt!1499819)))

(declare-fun bs!597479 () Bool)

(assert (= bs!597479 d!1241603))

(assert (=> bs!597479 m!4801501))

(assert (=> bs!597479 m!4801501))

(declare-fun m!4801929 () Bool)

(assert (=> bs!597479 m!4801929))

(declare-fun m!4801931 () Bool)

(assert (=> bs!597479 m!4801931))

(assert (=> b!4213698 d!1241603))

(declare-fun d!1241605 () Bool)

(assert (=> d!1241605 (= (get!15076 lt!1499706) (v!40824 lt!1499706))))

(assert (=> b!4213698 d!1241605))

(declare-fun d!1241607 () Bool)

(declare-fun lt!1499820 () BalanceConc!27538)

(assert (=> d!1241607 (= (list!16760 lt!1499820) (originalCharacters!8143 (_1!25172 lt!1499707)))))

(assert (=> d!1241607 (= lt!1499820 (dynLambda!19975 (toChars!10340 (transformation!7761 (rule!10881 (_1!25172 lt!1499707)))) (value!241719 (_1!25172 lt!1499707))))))

(assert (=> d!1241607 (= (charsOf!5184 (_1!25172 lt!1499707)) lt!1499820)))

(declare-fun b_lambda!124129 () Bool)

(assert (=> (not b_lambda!124129) (not d!1241607)))

(declare-fun t!348222 () Bool)

(declare-fun tb!252951 () Bool)

(assert (=> (and b!4213716 (= (toChars!10340 (transformation!7761 rBis!178)) (toChars!10340 (transformation!7761 (rule!10881 (_1!25172 lt!1499707))))) t!348222) tb!252951))

(declare-fun b!4214027 () Bool)

(declare-fun e!2616076 () Bool)

(declare-fun tp!1288817 () Bool)

(assert (=> b!4214027 (= e!2616076 (and (inv!60975 (c!717581 (dynLambda!19975 (toChars!10340 (transformation!7761 (rule!10881 (_1!25172 lt!1499707)))) (value!241719 (_1!25172 lt!1499707))))) tp!1288817))))

(declare-fun result!308300 () Bool)

(assert (=> tb!252951 (= result!308300 (and (inv!60976 (dynLambda!19975 (toChars!10340 (transformation!7761 (rule!10881 (_1!25172 lt!1499707)))) (value!241719 (_1!25172 lt!1499707)))) e!2616076))))

(assert (= tb!252951 b!4214027))

(declare-fun m!4801933 () Bool)

(assert (=> b!4214027 m!4801933))

(declare-fun m!4801935 () Bool)

(assert (=> tb!252951 m!4801935))

(assert (=> d!1241607 t!348222))

(declare-fun b_and!331853 () Bool)

(assert (= b_and!331845 (and (=> t!348222 result!308300) b_and!331853)))

(declare-fun t!348224 () Bool)

(declare-fun tb!252953 () Bool)

(assert (=> (and b!4213695 (= (toChars!10340 (transformation!7761 (rule!10881 tBis!41))) (toChars!10340 (transformation!7761 (rule!10881 (_1!25172 lt!1499707))))) t!348224) tb!252953))

(declare-fun result!308302 () Bool)

(assert (= result!308302 result!308300))

(assert (=> d!1241607 t!348224))

(declare-fun b_and!331855 () Bool)

(assert (= b_and!331847 (and (=> t!348224 result!308302) b_and!331855)))

(declare-fun t!348226 () Bool)

(declare-fun tb!252955 () Bool)

(assert (=> (and b!4213696 (= (toChars!10340 (transformation!7761 (h!51762 rules!3967))) (toChars!10340 (transformation!7761 (rule!10881 (_1!25172 lt!1499707))))) t!348226) tb!252955))

(declare-fun result!308304 () Bool)

(assert (= result!308304 result!308300))

(assert (=> d!1241607 t!348226))

(declare-fun b_and!331857 () Bool)

(assert (= b_and!331849 (and (=> t!348226 result!308304) b_and!331857)))

(declare-fun tb!252957 () Bool)

(declare-fun t!348228 () Bool)

(assert (=> (and b!4213706 (= (toChars!10340 (transformation!7761 (rule!10881 t!8364))) (toChars!10340 (transformation!7761 (rule!10881 (_1!25172 lt!1499707))))) t!348228) tb!252957))

(declare-fun result!308306 () Bool)

(assert (= result!308306 result!308300))

(assert (=> d!1241607 t!348228))

(declare-fun b_and!331859 () Bool)

(assert (= b_and!331851 (and (=> t!348228 result!308306) b_and!331859)))

(declare-fun m!4801937 () Bool)

(assert (=> d!1241607 m!4801937))

(declare-fun m!4801939 () Bool)

(assert (=> d!1241607 m!4801939))

(assert (=> b!4213698 d!1241607))

(declare-fun d!1241609 () Bool)

(assert (=> d!1241609 (= (list!16760 (charsOf!5184 (_1!25172 lt!1499707))) (list!16762 (c!717581 (charsOf!5184 (_1!25172 lt!1499707)))))))

(declare-fun bs!597480 () Bool)

(assert (= bs!597480 d!1241609))

(declare-fun m!4801941 () Bool)

(assert (=> bs!597480 m!4801941))

(assert (=> b!4213698 d!1241609))

(declare-fun d!1241611 () Bool)

(assert (=> d!1241611 (= (isEmpty!27446 lt!1499706) (not (is-Some!9948 lt!1499706)))))

(assert (=> b!4213698 d!1241611))

(declare-fun d!1241613 () Bool)

(assert (=> d!1241613 (rulesInvariant!6567 thiss!26544 (t!348185 rules!3967))))

(declare-fun lt!1499823 () Unit!65468)

(declare-fun choose!25813 (LexerInterface!7356 Rule!15322 List!46466) Unit!65468)

(assert (=> d!1241613 (= lt!1499823 (choose!25813 thiss!26544 (h!51762 rules!3967) (t!348185 rules!3967)))))

(assert (=> d!1241613 (rulesInvariant!6567 thiss!26544 (Cons!46342 (h!51762 rules!3967) (t!348185 rules!3967)))))

(assert (=> d!1241613 (= (lemmaInvariantOnRulesThenOnTail!851 thiss!26544 (h!51762 rules!3967) (t!348185 rules!3967)) lt!1499823)))

(declare-fun bs!597481 () Bool)

(assert (= bs!597481 d!1241613))

(assert (=> bs!597481 m!4801491))

(declare-fun m!4801943 () Bool)

(assert (=> bs!597481 m!4801943))

(declare-fun m!4801945 () Bool)

(assert (=> bs!597481 m!4801945))

(assert (=> b!4213698 d!1241613))

(declare-fun b!4214029 () Bool)

(declare-fun e!2616078 () List!46464)

(assert (=> b!4214029 (= e!2616078 (Cons!46340 (h!51760 lt!1499708) (++!11835 (t!348183 lt!1499708) (_2!25172 lt!1499707))))))

(declare-fun e!2616077 () Bool)

(declare-fun lt!1499824 () List!46464)

(declare-fun b!4214031 () Bool)

(assert (=> b!4214031 (= e!2616077 (or (not (= (_2!25172 lt!1499707) Nil!46340)) (= lt!1499824 lt!1499708)))))

(declare-fun b!4214030 () Bool)

(declare-fun res!1731453 () Bool)

(assert (=> b!4214030 (=> (not res!1731453) (not e!2616077))))

(assert (=> b!4214030 (= res!1731453 (= (size!34036 lt!1499824) (+ (size!34036 lt!1499708) (size!34036 (_2!25172 lt!1499707)))))))

(declare-fun b!4214028 () Bool)

(assert (=> b!4214028 (= e!2616078 (_2!25172 lt!1499707))))

(declare-fun d!1241615 () Bool)

(assert (=> d!1241615 e!2616077))

(declare-fun res!1731452 () Bool)

(assert (=> d!1241615 (=> (not res!1731452) (not e!2616077))))

(assert (=> d!1241615 (= res!1731452 (= (content!7258 lt!1499824) (set.union (content!7258 lt!1499708) (content!7258 (_2!25172 lt!1499707)))))))

(assert (=> d!1241615 (= lt!1499824 e!2616078)))

(declare-fun c!717608 () Bool)

(assert (=> d!1241615 (= c!717608 (is-Nil!46340 lt!1499708))))

(assert (=> d!1241615 (= (++!11835 lt!1499708 (_2!25172 lt!1499707)) lt!1499824)))

(assert (= (and d!1241615 c!717608) b!4214028))

(assert (= (and d!1241615 (not c!717608)) b!4214029))

(assert (= (and d!1241615 res!1731452) b!4214030))

(assert (= (and b!4214030 res!1731453) b!4214031))

(declare-fun m!4801947 () Bool)

(assert (=> b!4214029 m!4801947))

(declare-fun m!4801949 () Bool)

(assert (=> b!4214030 m!4801949))

(assert (=> b!4214030 m!4801917))

(declare-fun m!4801951 () Bool)

(assert (=> b!4214030 m!4801951))

(declare-fun m!4801953 () Bool)

(assert (=> d!1241615 m!4801953))

(declare-fun m!4801955 () Bool)

(assert (=> d!1241615 m!4801955))

(declare-fun m!4801957 () Bool)

(assert (=> d!1241615 m!4801957))

(assert (=> b!4213698 d!1241615))

(declare-fun d!1241617 () Bool)

(declare-fun res!1731461 () Bool)

(declare-fun e!2616083 () Bool)

(assert (=> d!1241617 (=> (not res!1731461) (not e!2616083))))

(assert (=> d!1241617 (= res!1731461 (rulesValid!3039 thiss!26544 (t!348185 rules!3967)))))

(assert (=> d!1241617 (= (rulesInvariant!6567 thiss!26544 (t!348185 rules!3967)) e!2616083)))

(declare-fun b!4214041 () Bool)

(assert (=> b!4214041 (= e!2616083 (noDuplicateTag!3200 thiss!26544 (t!348185 rules!3967) Nil!46346))))

(assert (= (and d!1241617 res!1731461) b!4214041))

(declare-fun m!4801959 () Bool)

(assert (=> d!1241617 m!4801959))

(declare-fun m!4801961 () Bool)

(assert (=> b!4214041 m!4801961))

(assert (=> b!4213698 d!1241617))

(declare-fun b!4214042 () Bool)

(declare-fun e!2616085 () Bool)

(assert (=> b!4214042 (= e!2616085 (inv!17 (value!241719 tBis!41)))))

(declare-fun b!4214043 () Bool)

(declare-fun e!2616084 () Bool)

(assert (=> b!4214043 (= e!2616084 (inv!15 (value!241719 tBis!41)))))

(declare-fun b!4214044 () Bool)

(declare-fun e!2616086 () Bool)

(assert (=> b!4214044 (= e!2616086 e!2616085)))

(declare-fun c!717610 () Bool)

(assert (=> b!4214044 (= c!717610 (is-IntegerValue!23974 (value!241719 tBis!41)))))

(declare-fun d!1241619 () Bool)

(declare-fun c!717611 () Bool)

(assert (=> d!1241619 (= c!717611 (is-IntegerValue!23973 (value!241719 tBis!41)))))

(assert (=> d!1241619 (= (inv!21 (value!241719 tBis!41)) e!2616086)))

(declare-fun b!4214045 () Bool)

(declare-fun res!1731462 () Bool)

(assert (=> b!4214045 (=> res!1731462 e!2616084)))

(assert (=> b!4214045 (= res!1731462 (not (is-IntegerValue!23975 (value!241719 tBis!41))))))

(assert (=> b!4214045 (= e!2616085 e!2616084)))

(declare-fun b!4214046 () Bool)

(assert (=> b!4214046 (= e!2616086 (inv!16 (value!241719 tBis!41)))))

(assert (= (and d!1241619 c!717611) b!4214046))

(assert (= (and d!1241619 (not c!717611)) b!4214044))

(assert (= (and b!4214044 c!717610) b!4214042))

(assert (= (and b!4214044 (not c!717610)) b!4214045))

(assert (= (and b!4214045 (not res!1731462)) b!4214043))

(declare-fun m!4801963 () Bool)

(assert (=> b!4214042 m!4801963))

(declare-fun m!4801965 () Bool)

(assert (=> b!4214043 m!4801965))

(declare-fun m!4801967 () Bool)

(assert (=> b!4214046 m!4801967))

(assert (=> b!4213707 d!1241619))

(declare-fun b!4214060 () Bool)

(declare-fun e!2616089 () Bool)

(declare-fun tp!1288828 () Bool)

(declare-fun tp!1288831 () Bool)

(assert (=> b!4214060 (= e!2616089 (and tp!1288828 tp!1288831))))

(declare-fun b!4214059 () Bool)

(declare-fun tp!1288832 () Bool)

(assert (=> b!4214059 (= e!2616089 tp!1288832)))

(declare-fun b!4214057 () Bool)

(assert (=> b!4214057 (= e!2616089 tp_is_empty!22299)))

(declare-fun b!4214058 () Bool)

(declare-fun tp!1288830 () Bool)

(declare-fun tp!1288829 () Bool)

(assert (=> b!4214058 (= e!2616089 (and tp!1288830 tp!1288829))))

(assert (=> b!4213700 (= tp!1288742 e!2616089)))

(assert (= (and b!4213700 (is-ElementMatch!12666 (regex!7761 (rule!10881 tBis!41)))) b!4214057))

(assert (= (and b!4213700 (is-Concat!20658 (regex!7761 (rule!10881 tBis!41)))) b!4214058))

(assert (= (and b!4213700 (is-Star!12666 (regex!7761 (rule!10881 tBis!41)))) b!4214059))

(assert (= (and b!4213700 (is-Union!12666 (regex!7761 (rule!10881 tBis!41)))) b!4214060))

(declare-fun b!4214065 () Bool)

(declare-fun e!2616092 () Bool)

(declare-fun tp!1288835 () Bool)

(assert (=> b!4214065 (= e!2616092 (and tp_is_empty!22299 tp!1288835))))

(assert (=> b!4213709 (= tp!1288729 e!2616092)))

(assert (= (and b!4213709 (is-Cons!46340 (originalCharacters!8143 t!8364))) b!4214065))

(declare-fun b!4214069 () Bool)

(declare-fun e!2616093 () Bool)

(declare-fun tp!1288836 () Bool)

(declare-fun tp!1288839 () Bool)

(assert (=> b!4214069 (= e!2616093 (and tp!1288836 tp!1288839))))

(declare-fun b!4214068 () Bool)

(declare-fun tp!1288840 () Bool)

(assert (=> b!4214068 (= e!2616093 tp!1288840)))

(declare-fun b!4214066 () Bool)

(assert (=> b!4214066 (= e!2616093 tp_is_empty!22299)))

(declare-fun b!4214067 () Bool)

(declare-fun tp!1288838 () Bool)

(declare-fun tp!1288837 () Bool)

(assert (=> b!4214067 (= e!2616093 (and tp!1288838 tp!1288837))))

(assert (=> b!4213720 (= tp!1288738 e!2616093)))

(assert (= (and b!4213720 (is-ElementMatch!12666 (regex!7761 rBis!178))) b!4214066))

(assert (= (and b!4213720 (is-Concat!20658 (regex!7761 rBis!178))) b!4214067))

(assert (= (and b!4213720 (is-Star!12666 (regex!7761 rBis!178))) b!4214068))

(assert (= (and b!4213720 (is-Union!12666 (regex!7761 rBis!178))) b!4214069))

(declare-fun b!4214070 () Bool)

(declare-fun e!2616094 () Bool)

(declare-fun tp!1288841 () Bool)

(assert (=> b!4214070 (= e!2616094 (and tp_is_empty!22299 tp!1288841))))

(assert (=> b!4213699 (= tp!1288746 e!2616094)))

(assert (= (and b!4213699 (is-Cons!46340 (t!348183 suffixBis!41))) b!4214070))

(declare-fun b!4214074 () Bool)

(declare-fun e!2616095 () Bool)

(declare-fun tp!1288842 () Bool)

(declare-fun tp!1288845 () Bool)

(assert (=> b!4214074 (= e!2616095 (and tp!1288842 tp!1288845))))

(declare-fun b!4214073 () Bool)

(declare-fun tp!1288846 () Bool)

(assert (=> b!4214073 (= e!2616095 tp!1288846)))

(declare-fun b!4214071 () Bool)

(assert (=> b!4214071 (= e!2616095 tp_is_empty!22299)))

(declare-fun b!4214072 () Bool)

(declare-fun tp!1288844 () Bool)

(declare-fun tp!1288843 () Bool)

(assert (=> b!4214072 (= e!2616095 (and tp!1288844 tp!1288843))))

(assert (=> b!4213710 (= tp!1288741 e!2616095)))

(assert (= (and b!4213710 (is-ElementMatch!12666 (regex!7761 (rule!10881 t!8364)))) b!4214071))

(assert (= (and b!4213710 (is-Concat!20658 (regex!7761 (rule!10881 t!8364)))) b!4214072))

(assert (= (and b!4213710 (is-Star!12666 (regex!7761 (rule!10881 t!8364)))) b!4214073))

(assert (= (and b!4213710 (is-Union!12666 (regex!7761 (rule!10881 t!8364)))) b!4214074))

(declare-fun b!4214075 () Bool)

(declare-fun e!2616096 () Bool)

(declare-fun tp!1288847 () Bool)

(assert (=> b!4214075 (= e!2616096 (and tp_is_empty!22299 tp!1288847))))

(assert (=> b!4213703 (= tp!1288737 e!2616096)))

(assert (= (and b!4213703 (is-Cons!46340 (t!348183 suffix!1557))) b!4214075))

(declare-fun b!4214076 () Bool)

(declare-fun e!2616097 () Bool)

(declare-fun tp!1288848 () Bool)

(assert (=> b!4214076 (= e!2616097 (and tp_is_empty!22299 tp!1288848))))

(assert (=> b!4213714 (= tp!1288743 e!2616097)))

(assert (= (and b!4213714 (is-Cons!46340 (t!348183 input!3517))) b!4214076))

(declare-fun b!4214077 () Bool)

(declare-fun e!2616098 () Bool)

(declare-fun tp!1288849 () Bool)

(assert (=> b!4214077 (= e!2616098 (and tp_is_empty!22299 tp!1288849))))

(assert (=> b!4213723 (= tp!1288732 e!2616098)))

(assert (= (and b!4213723 (is-Cons!46340 (t!348183 p!3001))) b!4214077))

(declare-fun b!4214081 () Bool)

(declare-fun e!2616099 () Bool)

(declare-fun tp!1288850 () Bool)

(declare-fun tp!1288853 () Bool)

(assert (=> b!4214081 (= e!2616099 (and tp!1288850 tp!1288853))))

(declare-fun b!4214080 () Bool)

(declare-fun tp!1288854 () Bool)

(assert (=> b!4214080 (= e!2616099 tp!1288854)))

(declare-fun b!4214078 () Bool)

(assert (=> b!4214078 (= e!2616099 tp_is_empty!22299)))

(declare-fun b!4214079 () Bool)

(declare-fun tp!1288852 () Bool)

(declare-fun tp!1288851 () Bool)

(assert (=> b!4214079 (= e!2616099 (and tp!1288852 tp!1288851))))

(assert (=> b!4213715 (= tp!1288735 e!2616099)))

(assert (= (and b!4213715 (is-ElementMatch!12666 (regex!7761 (h!51762 rules!3967)))) b!4214078))

(assert (= (and b!4213715 (is-Concat!20658 (regex!7761 (h!51762 rules!3967)))) b!4214079))

(assert (= (and b!4213715 (is-Star!12666 (regex!7761 (h!51762 rules!3967)))) b!4214080))

(assert (= (and b!4213715 (is-Union!12666 (regex!7761 (h!51762 rules!3967)))) b!4214081))

(declare-fun b!4214082 () Bool)

(declare-fun e!2616100 () Bool)

(declare-fun tp!1288855 () Bool)

(assert (=> b!4214082 (= e!2616100 (and tp_is_empty!22299 tp!1288855))))

(assert (=> b!4213717 (= tp!1288739 e!2616100)))

(assert (= (and b!4213717 (is-Cons!46340 (t!348183 pBis!121))) b!4214082))

(declare-fun b!4214083 () Bool)

(declare-fun e!2616101 () Bool)

(declare-fun tp!1288856 () Bool)

(assert (=> b!4214083 (= e!2616101 (and tp_is_empty!22299 tp!1288856))))

(assert (=> b!4213707 (= tp!1288733 e!2616101)))

(assert (= (and b!4213707 (is-Cons!46340 (originalCharacters!8143 tBis!41))) b!4214083))

(declare-fun b!4214098 () Bool)

(declare-fun b_free!123507 () Bool)

(declare-fun b_next!124211 () Bool)

(assert (=> b!4214098 (= b_free!123507 (not b_next!124211))))

(declare-fun tp!1288865 () Bool)

(declare-fun b_and!331861 () Bool)

(assert (=> b!4214098 (= tp!1288865 b_and!331861)))

(declare-fun b_free!123509 () Bool)

(declare-fun b_next!124213 () Bool)

(assert (=> b!4214098 (= b_free!123509 (not b_next!124213))))

(declare-fun tb!252959 () Bool)

(declare-fun t!348230 () Bool)

(assert (=> (and b!4214098 (= (toChars!10340 (transformation!7761 (h!51762 (t!348185 rules!3967)))) (toChars!10340 (transformation!7761 (rule!10881 tBis!41)))) t!348230) tb!252959))

(declare-fun result!308314 () Bool)

(assert (= result!308314 result!308282))

(assert (=> d!1241587 t!348230))

(assert (=> b!4213972 t!348230))

(declare-fun t!348232 () Bool)

(declare-fun tb!252961 () Bool)

(assert (=> (and b!4214098 (= (toChars!10340 (transformation!7761 (h!51762 (t!348185 rules!3967)))) (toChars!10340 (transformation!7761 (rule!10881 t!8364)))) t!348232) tb!252961))

(declare-fun result!308316 () Bool)

(assert (= result!308316 result!308292))

(assert (=> b!4213974 t!348232))

(declare-fun t!348234 () Bool)

(declare-fun tb!252963 () Bool)

(assert (=> (and b!4214098 (= (toChars!10340 (transformation!7761 (h!51762 (t!348185 rules!3967)))) (toChars!10340 (transformation!7761 (rule!10881 (_1!25172 lt!1499707))))) t!348234) tb!252963))

(declare-fun result!308318 () Bool)

(assert (= result!308318 result!308300))

(assert (=> d!1241607 t!348234))

(declare-fun tp!1288867 () Bool)

(declare-fun b_and!331863 () Bool)

(assert (=> b!4214098 (= tp!1288867 (and (=> t!348230 result!308314) (=> t!348232 result!308316) (=> t!348234 result!308318) b_and!331863))))

(declare-fun e!2616117 () Bool)

(assert (=> b!4214098 (= e!2616117 (and tp!1288865 tp!1288867))))

(declare-fun tp!1288866 () Bool)

(declare-fun e!2616115 () Bool)

(declare-fun b!4214097 () Bool)

(assert (=> b!4214097 (= e!2616115 (and tp!1288866 (inv!60968 (tag!8625 (h!51762 (t!348185 rules!3967)))) (inv!60971 (transformation!7761 (h!51762 (t!348185 rules!3967)))) e!2616117))))

(declare-fun b!4214096 () Bool)

(declare-fun e!2616114 () Bool)

(declare-fun tp!1288868 () Bool)

(assert (=> b!4214096 (= e!2616114 (and e!2616115 tp!1288868))))

(assert (=> b!4213718 (= tp!1288748 e!2616114)))

(assert (= b!4214097 b!4214098))

(assert (= b!4214096 b!4214097))

(assert (= (and b!4213718 (is-Cons!46342 (t!348185 rules!3967))) b!4214096))

(declare-fun m!4802015 () Bool)

(assert (=> b!4214097 m!4802015))

(declare-fun m!4802019 () Bool)

(assert (=> b!4214097 m!4802019))

(declare-fun b_lambda!124131 () Bool)

(assert (= b_lambda!124125 (or (and b!4214098 b_free!123509 (= (toChars!10340 (transformation!7761 (h!51762 (t!348185 rules!3967)))) (toChars!10340 (transformation!7761 (rule!10881 tBis!41))))) (and b!4213696 b_free!123485 (= (toChars!10340 (transformation!7761 (h!51762 rules!3967))) (toChars!10340 (transformation!7761 (rule!10881 tBis!41))))) (and b!4213695 b_free!123481) (and b!4213716 b_free!123477 (= (toChars!10340 (transformation!7761 rBis!178)) (toChars!10340 (transformation!7761 (rule!10881 tBis!41))))) (and b!4213706 b_free!123489 (= (toChars!10340 (transformation!7761 (rule!10881 t!8364))) (toChars!10340 (transformation!7761 (rule!10881 tBis!41))))) b_lambda!124131)))

(declare-fun b_lambda!124133 () Bool)

(assert (= b_lambda!124127 (or (and b!4213695 b_free!123481 (= (toChars!10340 (transformation!7761 (rule!10881 tBis!41))) (toChars!10340 (transformation!7761 (rule!10881 t!8364))))) (and b!4213716 b_free!123477 (= (toChars!10340 (transformation!7761 rBis!178)) (toChars!10340 (transformation!7761 (rule!10881 t!8364))))) (and b!4213696 b_free!123485 (= (toChars!10340 (transformation!7761 (h!51762 rules!3967))) (toChars!10340 (transformation!7761 (rule!10881 t!8364))))) (and b!4214098 b_free!123509 (= (toChars!10340 (transformation!7761 (h!51762 (t!348185 rules!3967)))) (toChars!10340 (transformation!7761 (rule!10881 t!8364))))) (and b!4213706 b_free!123489) b_lambda!124133)))

(declare-fun b_lambda!124135 () Bool)

(assert (= b_lambda!124123 (or (and b!4214098 b_free!123509 (= (toChars!10340 (transformation!7761 (h!51762 (t!348185 rules!3967)))) (toChars!10340 (transformation!7761 (rule!10881 tBis!41))))) (and b!4213696 b_free!123485 (= (toChars!10340 (transformation!7761 (h!51762 rules!3967))) (toChars!10340 (transformation!7761 (rule!10881 tBis!41))))) (and b!4213695 b_free!123481) (and b!4213716 b_free!123477 (= (toChars!10340 (transformation!7761 rBis!178)) (toChars!10340 (transformation!7761 (rule!10881 tBis!41))))) (and b!4213706 b_free!123489 (= (toChars!10340 (transformation!7761 (rule!10881 t!8364))) (toChars!10340 (transformation!7761 (rule!10881 tBis!41))))) b_lambda!124135)))

(push 1)

(assert (not b!4214010))

(assert (not b!4214080))

(assert (not b!4213909))

(assert (not b!4214027))

(assert (not b_lambda!124131))

(assert (not b_next!124211))

(assert (not d!1241589))

(assert (not b!4214043))

(assert (not b!4213884))

(assert (not d!1241599))

(assert (not d!1241603))

(assert (not b!4213892))

(assert (not d!1241555))

(assert b_and!331863)

(assert b_and!331789)

(assert (not b!4213931))

(assert b_and!331855)

(assert (not d!1241587))

(assert (not b!4214002))

(assert (not b!4213990))

(assert (not d!1241615))

(assert (not b!4214065))

(assert (not b!4213987))

(assert (not b!4214070))

(assert (not b!4213961))

(assert (not b_next!124213))

(assert b_and!331793)

(assert (not b!4213939))

(assert (not b!4213959))

(assert (not b!4214068))

(assert b_and!331853)

(assert (not b!4213841))

(assert (not b!4213885))

(assert (not b!4214003))

(assert (not b!4213891))

(assert (not b!4213995))

(assert (not b!4214012))

(assert (not d!1241583))

(assert (not d!1241573))

(assert (not b!4214083))

(assert b_and!331861)

(assert (not b!4213991))

(assert (not b!4213934))

(assert (not d!1241609))

(assert (not b!4214067))

(assert (not tb!252943))

(assert (not b!4214069))

(assert (not b!4214000))

(assert (not b!4214001))

(assert (not b!4213976))

(assert (not b!4213967))

(assert (not b!4213975))

(assert (not b!4213903))

(assert (not b!4213935))

(assert (not b!4214046))

(assert (not b!4213957))

(assert (not b!4213938))

(assert (not b!4214072))

(assert (not d!1241561))

(assert (not d!1241577))

(assert (not b!4213888))

(assert (not b!4213932))

(assert (not b!4213985))

(assert (not d!1241617))

(assert (not b_next!124179))

(assert (not d!1241607))

(assert b_and!331781)

(assert (not b!4214077))

(assert (not d!1241595))

(assert (not b!4213999))

(assert b_and!331785)

(assert (not d!1241565))

(assert (not b_next!124193))

(assert (not b!4213962))

(assert (not b!4214073))

(assert (not bm!292988))

(assert (not b!4213882))

(assert (not b!4213887))

(assert (not b!4214058))

(assert (not d!1241567))

(assert (not b!4213997))

(assert (not b!4214082))

(assert (not b!4213992))

(assert tp_is_empty!22299)

(assert (not d!1241613))

(assert (not b!4213937))

(assert (not b!4214030))

(assert (not b!4214096))

(assert (not b!4214004))

(assert (not b!4213960))

(assert (not d!1241537))

(assert (not b_lambda!124129))

(assert (not tb!252935))

(assert (not d!1241591))

(assert (not b!4214074))

(assert (not b!4214076))

(assert (not b!4213883))

(assert (not b!4213973))

(assert (not b!4213890))

(assert (not b!4214097))

(assert (not b!4214079))

(assert (not b_next!124191))

(assert (not b_lambda!124133))

(assert (not d!1241571))

(assert (not b!4213989))

(assert (not b!4213904))

(assert (not d!1241585))

(assert (not b!4214075))

(assert (not b!4213836))

(assert (not tb!252951))

(assert (not b!4213907))

(assert (not b!4213912))

(assert (not b_lambda!124135))

(assert (not b!4213994))

(assert b_and!331859)

(assert (not b_next!124189))

(assert (not b!4213978))

(assert (not b!4213974))

(assert (not b!4213880))

(assert (not b_next!124187))

(assert (not b!4213996))

(assert (not b!4213993))

(assert (not d!1241593))

(assert (not b!4213837))

(assert (not b_next!124183))

(assert (not bm!292989))

(assert (not b!4214011))

(assert (not b_next!124181))

(assert (not b_next!124185))

(assert (not b!4214081))

(assert (not b!4213936))

(assert (not b!4214042))

(assert (not d!1241569))

(assert (not b!4214041))

(assert (not b!4213838))

(assert (not b!4213979))

(assert (not d!1241597))

(assert (not b!4213949))

(assert (not b!4214059))

(assert (not d!1241539))

(assert (not b!4213950))

(assert (not b!4213972))

(assert b_and!331857)

(assert (not b!4213886))

(assert (not b!4214060))

(assert (not b!4213908))

(assert (not b!4214029))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!124211))

(assert (not b_next!124213))

(assert b_and!331861)

(assert (not b_next!124179))

(assert (not b_next!124191))

(assert (not b_next!124187))

(assert (not b_next!124183))

(assert b_and!331857)

(assert b_and!331863)

(assert b_and!331789)

(assert b_and!331855)

(assert b_and!331853)

(assert b_and!331793)

(assert b_and!331781)

(assert (not b_next!124193))

(assert b_and!331785)

(assert b_and!331859)

(assert (not b_next!124189))

(assert (not b_next!124181))

(assert (not b_next!124185))

(check-sat)

(pop 1)

