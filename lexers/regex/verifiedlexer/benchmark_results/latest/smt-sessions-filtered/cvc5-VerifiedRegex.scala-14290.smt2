; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!746482 () Bool)

(assert start!746482)

(declare-fun b!7909121 () Bool)

(declare-fun b_free!135123 () Bool)

(declare-fun b_next!135913 () Bool)

(assert (=> b!7909121 (= b_free!135123 (not b_next!135913))))

(declare-fun tp!2356114 () Bool)

(declare-fun b_and!353367 () Bool)

(assert (=> b!7909121 (= tp!2356114 b_and!353367)))

(declare-fun b_free!135125 () Bool)

(declare-fun b_next!135915 () Bool)

(assert (=> b!7909121 (= b_free!135125 (not b_next!135915))))

(declare-fun tp!2356113 () Bool)

(declare-fun b_and!353369 () Bool)

(assert (=> b!7909121 (= tp!2356113 b_and!353369)))

(declare-fun b!7909119 () Bool)

(declare-fun res!3139075 () Bool)

(declare-fun e!4668723 () Bool)

(assert (=> b!7909119 (=> (not res!3139075) (not e!4668723))))

(declare-datatypes ((String!83228 0))(
  ( (String!83229 (value!288337 String)) )
))
(declare-datatypes ((List!74451 0))(
  ( (Nil!74327) (Cons!74327 (h!80775 (_ BitVec 16)) (t!389804 List!74451)) )
))
(declare-datatypes ((C!43026 0))(
  ( (C!43027 (val!31977 Int)) )
))
(declare-datatypes ((List!74452 0))(
  ( (Nil!74328) (Cons!74328 (h!80776 C!43026) (t!389805 List!74452)) )
))
(declare-datatypes ((IArray!31699 0))(
  ( (IArray!31700 (innerList!15907 List!74452)) )
))
(declare-datatypes ((Conc!15819 0))(
  ( (Node!15819 (left!56705 Conc!15819) (right!57035 Conc!15819) (csize!31868 Int) (cheight!16030 Int)) (Leaf!30110 (xs!19201 IArray!31699) (csize!31869 Int)) (Empty!15819) )
))
(declare-datatypes ((BalanceConc!30756 0))(
  ( (BalanceConc!30757 (c!1451039 Conc!15819)) )
))
(declare-datatypes ((TokenValue!8961 0))(
  ( (FloatLiteralValue!17922 (text!63172 List!74451)) (TokenValueExt!8960 (__x!35209 Int)) (Broken!44805 (value!288338 List!74451)) (Object!9084) (End!8961) (Def!8961) (Underscore!8961) (Match!8961) (Else!8961) (Error!8961) (Case!8961) (If!8961) (Extends!8961) (Abstract!8961) (Class!8961) (Val!8961) (DelimiterValue!17922 (del!9021 List!74451)) (KeywordValue!8967 (value!288339 List!74451)) (CommentValue!17922 (value!288340 List!74451)) (WhitespaceValue!17922 (value!288341 List!74451)) (IndentationValue!8961 (value!288342 List!74451)) (String!83230) (Int32!8961) (Broken!44806 (value!288343 List!74451)) (Boolean!8962) (Unit!169365) (OperatorValue!8964 (op!9021 List!74451)) (IdentifierValue!17922 (value!288344 List!74451)) (IdentifierValue!17923 (value!288345 List!74451)) (WhitespaceValue!17923 (value!288346 List!74451)) (True!17922) (False!17922) (Broken!44807 (value!288347 List!74451)) (Broken!44808 (value!288348 List!74451)) (True!17923) (RightBrace!8961) (RightBracket!8961) (Colon!8961) (Null!8961) (Comma!8961) (LeftBracket!8961) (False!17923) (LeftBrace!8961) (ImaginaryLiteralValue!8961 (text!63173 List!74451)) (StringLiteralValue!26883 (value!288349 List!74451)) (EOFValue!8961 (value!288350 List!74451)) (IdentValue!8961 (value!288351 List!74451)) (DelimiterValue!17923 (value!288352 List!74451)) (DedentValue!8961 (value!288353 List!74451)) (NewLineValue!8961 (value!288354 List!74451)) (IntegerValue!26883 (value!288355 (_ BitVec 32)) (text!63174 List!74451)) (IntegerValue!26884 (value!288356 Int) (text!63175 List!74451)) (Times!8961) (Or!8961) (Equal!8961) (Minus!8961) (Broken!44809 (value!288357 List!74451)) (And!8961) (Div!8961) (LessEqual!8961) (Mod!8961) (Concat!30309) (Not!8961) (Plus!8961) (SpaceValue!8961 (value!288358 List!74451)) (IntegerValue!26885 (value!288359 Int) (text!63176 List!74451)) (StringLiteralValue!26884 (text!63177 List!74451)) (FloatLiteralValue!17923 (text!63178 List!74451)) (BytesLiteralValue!8961 (value!288360 List!74451)) (CommentValue!17923 (value!288361 List!74451)) (StringLiteralValue!26885 (value!288362 List!74451)) (ErrorTokenValue!8961 (msg!9022 List!74451)) )
))
(declare-datatypes ((Regex!21348 0))(
  ( (ElementMatch!21348 (c!1451040 C!43026)) (Concat!30310 (regOne!43208 Regex!21348) (regTwo!43208 Regex!21348)) (EmptyExpr!21348) (Star!21348 (reg!21677 Regex!21348)) (EmptyLang!21348) (Union!21348 (regOne!43209 Regex!21348) (regTwo!43209 Regex!21348)) )
))
(declare-datatypes ((TokenValueInjection!17230 0))(
  ( (TokenValueInjection!17231 (toValue!11702 Int) (toChars!11561 Int)) )
))
(declare-datatypes ((Rule!17090 0))(
  ( (Rule!17091 (regex!8645 Regex!21348) (tag!9509 String!83228) (isSeparator!8645 Bool) (transformation!8645 TokenValueInjection!17230)) )
))
(declare-fun rule!156 () Rule!17090)

(declare-fun matchR!10671 (Regex!21348 List!74452) Bool)

(declare-fun list!19291 (BalanceConc!30756) List!74452)

(declare-datatypes ((Token!15706 0))(
  ( (Token!15707 (value!288363 TokenValue!8961) (rule!11947 Rule!17090) (size!43095 Int) (originalCharacters!8884 List!74452)) )
))
(declare-fun charsOf!5587 (Token!15706) BalanceConc!30756)

(declare-datatypes ((tuple2!70350 0))(
  ( (tuple2!70351 (_1!38478 Token!15706) (_2!38478 List!74452)) )
))
(declare-datatypes ((Option!17925 0))(
  ( (None!17924) (Some!17924 (v!55081 tuple2!70350)) )
))
(declare-fun get!26720 (Option!17925) tuple2!70350)

(assert (=> b!7909119 (= res!3139075 (matchR!10671 (regex!8645 rule!156) (list!19291 (charsOf!5587 (_1!38478 (get!26720 None!17924))))))))

(declare-fun b!7909120 () Bool)

(assert (=> b!7909120 (= e!4668723 true)))

(declare-fun e!4668722 () Bool)

(assert (=> b!7909121 (= e!4668722 (and tp!2356114 tp!2356113))))

(declare-fun b!7909122 () Bool)

(declare-fun res!3139074 () Bool)

(assert (=> b!7909122 (=> (not res!3139074) (not e!4668723))))

(declare-datatypes ((LexerInterface!8237 0))(
  ( (LexerInterfaceExt!8234 (__x!35210 Int)) (Lexer!8235) )
))
(declare-fun thiss!15815 () LexerInterface!8237)

(declare-fun ruleValid!3956 (LexerInterface!8237 Rule!17090) Bool)

(assert (=> b!7909122 (= res!3139074 (ruleValid!3956 thiss!15815 rule!156))))

(declare-fun e!4668720 () Bool)

(declare-fun b!7909123 () Bool)

(declare-fun tp!2356111 () Bool)

(declare-fun inv!95355 (String!83228) Bool)

(declare-fun inv!95358 (TokenValueInjection!17230) Bool)

(assert (=> b!7909123 (= e!4668720 (and tp!2356111 (inv!95355 (tag!9509 rule!156)) (inv!95358 (transformation!8645 rule!156)) e!4668722))))

(declare-fun b!7909124 () Bool)

(declare-fun res!3139073 () Bool)

(assert (=> b!7909124 (=> (not res!3139073) (not e!4668723))))

(assert (=> b!7909124 (= res!3139073 false)))

(declare-fun b!7909125 () Bool)

(declare-fun res!3139076 () Bool)

(assert (=> b!7909125 (=> (not res!3139076) (not e!4668723))))

(declare-fun input!1480 () List!74452)

(declare-fun isEmpty!42672 (List!74452) Bool)

(declare-datatypes ((tuple2!70352 0))(
  ( (tuple2!70353 (_1!38479 List!74452) (_2!38479 List!74452)) )
))
(declare-fun findLongestMatch!1938 (Regex!21348 List!74452) tuple2!70352)

(assert (=> b!7909125 (= res!3139076 (isEmpty!42672 (_1!38479 (findLongestMatch!1938 (regex!8645 rule!156) input!1480))))))

(declare-fun res!3139077 () Bool)

(assert (=> start!746482 (=> (not res!3139077) (not e!4668723))))

(assert (=> start!746482 (= res!3139077 (is-Lexer!8235 thiss!15815))))

(assert (=> start!746482 e!4668723))

(assert (=> start!746482 true))

(assert (=> start!746482 e!4668720))

(declare-fun e!4668719 () Bool)

(assert (=> start!746482 e!4668719))

(declare-fun b!7909126 () Bool)

(declare-fun tp_is_empty!53071 () Bool)

(declare-fun tp!2356112 () Bool)

(assert (=> b!7909126 (= e!4668719 (and tp_is_empty!53071 tp!2356112))))

(assert (= (and start!746482 res!3139077) b!7909122))

(assert (= (and b!7909122 res!3139074) b!7909125))

(assert (= (and b!7909125 res!3139076) b!7909124))

(assert (= (and b!7909124 res!3139073) b!7909119))

(assert (= (and b!7909119 res!3139075) b!7909120))

(assert (= b!7909123 b!7909121))

(assert (= start!746482 b!7909123))

(assert (= (and start!746482 (is-Cons!74328 input!1480)) b!7909126))

(declare-fun m!8282792 () Bool)

(assert (=> b!7909119 m!8282792))

(declare-fun m!8282794 () Bool)

(assert (=> b!7909119 m!8282794))

(assert (=> b!7909119 m!8282794))

(declare-fun m!8282796 () Bool)

(assert (=> b!7909119 m!8282796))

(assert (=> b!7909119 m!8282796))

(declare-fun m!8282798 () Bool)

(assert (=> b!7909119 m!8282798))

(declare-fun m!8282800 () Bool)

(assert (=> b!7909122 m!8282800))

(declare-fun m!8282802 () Bool)

(assert (=> b!7909123 m!8282802))

(declare-fun m!8282804 () Bool)

(assert (=> b!7909123 m!8282804))

(declare-fun m!8282806 () Bool)

(assert (=> b!7909125 m!8282806))

(declare-fun m!8282808 () Bool)

(assert (=> b!7909125 m!8282808))

(push 1)

(assert tp_is_empty!53071)

(assert (not b!7909125))

(assert (not b!7909122))

(assert b_and!353369)

(assert (not b!7909123))

(assert (not b!7909119))

(assert (not b_next!135915))

(assert (not b_next!135913))

(assert (not b!7909126))

(assert b_and!353367)

(check-sat)

(pop 1)

(push 1)

(assert b_and!353367)

(assert b_and!353369)

(assert (not b_next!135913))

(assert (not b_next!135915))

(check-sat)

(pop 1)

