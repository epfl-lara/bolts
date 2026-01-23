; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!746486 () Bool)

(assert start!746486)

(declare-fun b!7909171 () Bool)

(declare-fun b_free!135131 () Bool)

(declare-fun b_next!135921 () Bool)

(assert (=> b!7909171 (= b_free!135131 (not b_next!135921))))

(declare-fun tp!2356136 () Bool)

(declare-fun b_and!353375 () Bool)

(assert (=> b!7909171 (= tp!2356136 b_and!353375)))

(declare-fun b_free!135133 () Bool)

(declare-fun b_next!135923 () Bool)

(assert (=> b!7909171 (= b_free!135133 (not b_next!135923))))

(declare-fun tp!2356135 () Bool)

(declare-fun b_and!353377 () Bool)

(assert (=> b!7909171 (= tp!2356135 b_and!353377)))

(declare-fun b!7909169 () Bool)

(declare-fun res!3139108 () Bool)

(declare-fun e!4668754 () Bool)

(assert (=> b!7909169 (=> (not res!3139108) (not e!4668754))))

(assert (=> b!7909169 (= res!3139108 false)))

(declare-fun b!7909170 () Bool)

(declare-fun e!4668751 () Bool)

(declare-fun tp_is_empty!53075 () Bool)

(declare-fun tp!2356138 () Bool)

(assert (=> b!7909170 (= e!4668751 (and tp_is_empty!53075 tp!2356138))))

(declare-fun e!4668755 () Bool)

(assert (=> b!7909171 (= e!4668755 (and tp!2356136 tp!2356135))))

(declare-datatypes ((String!83238 0))(
  ( (String!83239 (value!288394 String)) )
))
(declare-datatypes ((List!74455 0))(
  ( (Nil!74331) (Cons!74331 (h!80779 (_ BitVec 16)) (t!389808 List!74455)) )
))
(declare-datatypes ((C!43030 0))(
  ( (C!43031 (val!31979 Int)) )
))
(declare-datatypes ((List!74456 0))(
  ( (Nil!74332) (Cons!74332 (h!80780 C!43030) (t!389809 List!74456)) )
))
(declare-datatypes ((IArray!31703 0))(
  ( (IArray!31704 (innerList!15909 List!74456)) )
))
(declare-datatypes ((Conc!15821 0))(
  ( (Node!15821 (left!56708 Conc!15821) (right!57038 Conc!15821) (csize!31872 Int) (cheight!16032 Int)) (Leaf!30113 (xs!19203 IArray!31703) (csize!31873 Int)) (Empty!15821) )
))
(declare-datatypes ((BalanceConc!30760 0))(
  ( (BalanceConc!30761 (c!1451043 Conc!15821)) )
))
(declare-datatypes ((TokenValue!8963 0))(
  ( (FloatLiteralValue!17926 (text!63186 List!74455)) (TokenValueExt!8962 (__x!35213 Int)) (Broken!44815 (value!288395 List!74455)) (Object!9086) (End!8963) (Def!8963) (Underscore!8963) (Match!8963) (Else!8963) (Error!8963) (Case!8963) (If!8963) (Extends!8963) (Abstract!8963) (Class!8963) (Val!8963) (DelimiterValue!17926 (del!9023 List!74455)) (KeywordValue!8969 (value!288396 List!74455)) (CommentValue!17926 (value!288397 List!74455)) (WhitespaceValue!17926 (value!288398 List!74455)) (IndentationValue!8963 (value!288399 List!74455)) (String!83240) (Int32!8963) (Broken!44816 (value!288400 List!74455)) (Boolean!8964) (Unit!169367) (OperatorValue!8966 (op!9023 List!74455)) (IdentifierValue!17926 (value!288401 List!74455)) (IdentifierValue!17927 (value!288402 List!74455)) (WhitespaceValue!17927 (value!288403 List!74455)) (True!17926) (False!17926) (Broken!44817 (value!288404 List!74455)) (Broken!44818 (value!288405 List!74455)) (True!17927) (RightBrace!8963) (RightBracket!8963) (Colon!8963) (Null!8963) (Comma!8963) (LeftBracket!8963) (False!17927) (LeftBrace!8963) (ImaginaryLiteralValue!8963 (text!63187 List!74455)) (StringLiteralValue!26889 (value!288406 List!74455)) (EOFValue!8963 (value!288407 List!74455)) (IdentValue!8963 (value!288408 List!74455)) (DelimiterValue!17927 (value!288409 List!74455)) (DedentValue!8963 (value!288410 List!74455)) (NewLineValue!8963 (value!288411 List!74455)) (IntegerValue!26889 (value!288412 (_ BitVec 32)) (text!63188 List!74455)) (IntegerValue!26890 (value!288413 Int) (text!63189 List!74455)) (Times!8963) (Or!8963) (Equal!8963) (Minus!8963) (Broken!44819 (value!288414 List!74455)) (And!8963) (Div!8963) (LessEqual!8963) (Mod!8963) (Concat!30313) (Not!8963) (Plus!8963) (SpaceValue!8963 (value!288415 List!74455)) (IntegerValue!26891 (value!288416 Int) (text!63190 List!74455)) (StringLiteralValue!26890 (text!63191 List!74455)) (FloatLiteralValue!17927 (text!63192 List!74455)) (BytesLiteralValue!8963 (value!288417 List!74455)) (CommentValue!17927 (value!288418 List!74455)) (StringLiteralValue!26891 (value!288419 List!74455)) (ErrorTokenValue!8963 (msg!9024 List!74455)) )
))
(declare-datatypes ((Regex!21350 0))(
  ( (ElementMatch!21350 (c!1451044 C!43030)) (Concat!30314 (regOne!43212 Regex!21350) (regTwo!43212 Regex!21350)) (EmptyExpr!21350) (Star!21350 (reg!21679 Regex!21350)) (EmptyLang!21350) (Union!21350 (regOne!43213 Regex!21350) (regTwo!43213 Regex!21350)) )
))
(declare-datatypes ((TokenValueInjection!17234 0))(
  ( (TokenValueInjection!17235 (toValue!11704 Int) (toChars!11563 Int)) )
))
(declare-datatypes ((Rule!17094 0))(
  ( (Rule!17095 (regex!8647 Regex!21350) (tag!9511 String!83238) (isSeparator!8647 Bool) (transformation!8647 TokenValueInjection!17234)) )
))
(declare-fun rule!156 () Rule!17094)

(declare-fun b!7909173 () Bool)

(declare-fun tp!2356137 () Bool)

(declare-fun e!4668752 () Bool)

(declare-fun inv!95360 (String!83238) Bool)

(declare-fun inv!95363 (TokenValueInjection!17234) Bool)

(assert (=> b!7909173 (= e!4668752 (and tp!2356137 (inv!95360 (tag!9511 rule!156)) (inv!95363 (transformation!8647 rule!156)) e!4668755))))

(declare-fun b!7909174 () Bool)

(declare-fun res!3139110 () Bool)

(assert (=> b!7909174 (=> (not res!3139110) (not e!4668754))))

(declare-datatypes ((LexerInterface!8239 0))(
  ( (LexerInterfaceExt!8236 (__x!35214 Int)) (Lexer!8237) )
))
(declare-fun thiss!15815 () LexerInterface!8239)

(declare-fun ruleValid!3958 (LexerInterface!8239 Rule!17094) Bool)

(assert (=> b!7909174 (= res!3139110 (ruleValid!3958 thiss!15815 rule!156))))

(declare-fun b!7909175 () Bool)

(declare-fun e!4668756 () Bool)

(assert (=> b!7909175 (= e!4668754 e!4668756)))

(declare-fun res!3139107 () Bool)

(assert (=> b!7909175 (=> (not res!3139107) (not e!4668756))))

(declare-fun lt!2685962 () List!74456)

(declare-fun matchR!10673 (Regex!21350 List!74456) Bool)

(assert (=> b!7909175 (= res!3139107 (matchR!10673 (regex!8647 rule!156) lt!2685962))))

(declare-datatypes ((Token!15710 0))(
  ( (Token!15711 (value!288420 TokenValue!8963) (rule!11949 Rule!17094) (size!43097 Int) (originalCharacters!8886 List!74456)) )
))
(declare-datatypes ((tuple2!70358 0))(
  ( (tuple2!70359 (_1!38482 Token!15710) (_2!38482 List!74456)) )
))
(declare-fun lt!2685961 () tuple2!70358)

(declare-fun list!19293 (BalanceConc!30760) List!74456)

(declare-fun charsOf!5589 (Token!15710) BalanceConc!30760)

(assert (=> b!7909175 (= lt!2685962 (list!19293 (charsOf!5589 (_1!38482 lt!2685961))))))

(declare-datatypes ((Option!17927 0))(
  ( (None!17926) (Some!17926 (v!55083 tuple2!70358)) )
))
(declare-fun get!26723 (Option!17927) tuple2!70358)

(assert (=> b!7909175 (= lt!2685961 (get!26723 None!17926))))

(declare-fun b!7909176 () Bool)

(declare-fun res!3139109 () Bool)

(assert (=> b!7909176 (=> (not res!3139109) (not e!4668756))))

(declare-fun input!1480 () List!74456)

(declare-fun ++!18195 (List!74456 List!74456) List!74456)

(assert (=> b!7909176 (= res!3139109 (= (++!18195 lt!2685962 (_2!38482 lt!2685961)) input!1480))))

(declare-fun b!7909177 () Bool)

(assert (=> b!7909177 (= e!4668756 true)))

(declare-fun res!3139105 () Bool)

(assert (=> start!746486 (=> (not res!3139105) (not e!4668754))))

(assert (=> start!746486 (= res!3139105 (is-Lexer!8237 thiss!15815))))

(assert (=> start!746486 e!4668754))

(assert (=> start!746486 true))

(assert (=> start!746486 e!4668752))

(assert (=> start!746486 e!4668751))

(declare-fun b!7909172 () Bool)

(declare-fun res!3139106 () Bool)

(assert (=> b!7909172 (=> (not res!3139106) (not e!4668754))))

(declare-fun isEmpty!42674 (List!74456) Bool)

(declare-datatypes ((tuple2!70360 0))(
  ( (tuple2!70361 (_1!38483 List!74456) (_2!38483 List!74456)) )
))
(declare-fun findLongestMatch!1940 (Regex!21350 List!74456) tuple2!70360)

(assert (=> b!7909172 (= res!3139106 (isEmpty!42674 (_1!38483 (findLongestMatch!1940 (regex!8647 rule!156) input!1480))))))

(assert (= (and start!746486 res!3139105) b!7909174))

(assert (= (and b!7909174 res!3139110) b!7909172))

(assert (= (and b!7909172 res!3139106) b!7909169))

(assert (= (and b!7909169 res!3139108) b!7909175))

(assert (= (and b!7909175 res!3139107) b!7909176))

(assert (= (and b!7909176 res!3139109) b!7909177))

(assert (= b!7909173 b!7909171))

(assert (= start!746486 b!7909173))

(assert (= (and start!746486 (is-Cons!74332 input!1480)) b!7909170))

(declare-fun m!8282828 () Bool)

(assert (=> b!7909176 m!8282828))

(declare-fun m!8282830 () Bool)

(assert (=> b!7909174 m!8282830))

(declare-fun m!8282832 () Bool)

(assert (=> b!7909173 m!8282832))

(declare-fun m!8282834 () Bool)

(assert (=> b!7909173 m!8282834))

(declare-fun m!8282836 () Bool)

(assert (=> b!7909172 m!8282836))

(declare-fun m!8282838 () Bool)

(assert (=> b!7909172 m!8282838))

(declare-fun m!8282840 () Bool)

(assert (=> b!7909175 m!8282840))

(declare-fun m!8282842 () Bool)

(assert (=> b!7909175 m!8282842))

(assert (=> b!7909175 m!8282842))

(declare-fun m!8282844 () Bool)

(assert (=> b!7909175 m!8282844))

(declare-fun m!8282846 () Bool)

(assert (=> b!7909175 m!8282846))

(push 1)

(assert (not b!7909172))

(assert (not b_next!135921))

(assert b_and!353375)

(assert tp_is_empty!53075)

(assert b_and!353377)

(assert (not b!7909175))

(assert (not b!7909176))

(assert (not b_next!135923))

(assert (not b!7909170))

(assert (not b!7909174))

(assert (not b!7909173))

(check-sat)

(pop 1)

(push 1)

(assert b_and!353375)

(assert b_and!353377)

(assert (not b_next!135921))

(assert (not b_next!135923))

(check-sat)

(pop 1)

