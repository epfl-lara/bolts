; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!406568 () Bool)

(assert start!406568)

(declare-fun b!4247191 () Bool)

(declare-fun b_free!126139 () Bool)

(declare-fun b_next!126843 () Bool)

(assert (=> b!4247191 (= b_free!126139 (not b_next!126843))))

(declare-fun tp!1302907 () Bool)

(declare-fun b_and!336509 () Bool)

(assert (=> b!4247191 (= tp!1302907 b_and!336509)))

(declare-fun b_free!126141 () Bool)

(declare-fun b_next!126845 () Bool)

(assert (=> b!4247191 (= b_free!126141 (not b_next!126845))))

(declare-fun tp!1302908 () Bool)

(declare-fun b_and!336511 () Bool)

(assert (=> b!4247191 (= tp!1302908 b_and!336511)))

(declare-fun b!4247190 () Bool)

(declare-fun b_free!126143 () Bool)

(declare-fun b_next!126847 () Bool)

(assert (=> b!4247190 (= b_free!126143 (not b_next!126847))))

(declare-fun tp!1302913 () Bool)

(declare-fun b_and!336513 () Bool)

(assert (=> b!4247190 (= tp!1302913 b_and!336513)))

(declare-fun b_free!126145 () Bool)

(declare-fun b_next!126849 () Bool)

(assert (=> b!4247190 (= b_free!126145 (not b_next!126849))))

(declare-fun tp!1302909 () Bool)

(declare-fun b_and!336515 () Bool)

(assert (=> b!4247190 (= tp!1302909 b_and!336515)))

(declare-fun b!4247177 () Bool)

(declare-fun res!1746068 () Bool)

(declare-fun e!2637929 () Bool)

(assert (=> b!4247177 (=> (not res!1746068) (not e!2637929))))

(declare-datatypes ((C!25926 0))(
  ( (C!25927 (val!15153 Int)) )
))
(declare-datatypes ((List!47157 0))(
  ( (Nil!47033) (Cons!47033 (h!52453 C!25926) (t!351822 List!47157)) )
))
(declare-fun longerInput!62 () List!47157)

(declare-fun isEmpty!27822 (List!47157) Bool)

(assert (=> b!4247177 (= res!1746068 (not (isEmpty!27822 longerInput!62)))))

(declare-fun tp!1302904 () Bool)

(declare-fun e!2637935 () Bool)

(declare-fun e!2637925 () Bool)

(declare-fun b!4247178 () Bool)

(declare-datatypes ((List!47158 0))(
  ( (Nil!47034) (Cons!47034 (h!52454 (_ BitVec 16)) (t!351823 List!47158)) )
))
(declare-datatypes ((TokenValue!8189 0))(
  ( (FloatLiteralValue!16378 (text!57768 List!47158)) (TokenValueExt!8188 (__x!28601 Int)) (Broken!40945 (value!247343 List!47158)) (Object!8312) (End!8189) (Def!8189) (Underscore!8189) (Match!8189) (Else!8189) (Error!8189) (Case!8189) (If!8189) (Extends!8189) (Abstract!8189) (Class!8189) (Val!8189) (DelimiterValue!16378 (del!8249 List!47158)) (KeywordValue!8195 (value!247344 List!47158)) (CommentValue!16378 (value!247345 List!47158)) (WhitespaceValue!16378 (value!247346 List!47158)) (IndentationValue!8189 (value!247347 List!47158)) (String!54876) (Int32!8189) (Broken!40946 (value!247348 List!47158)) (Boolean!8190) (Unit!66039) (OperatorValue!8192 (op!8249 List!47158)) (IdentifierValue!16378 (value!247349 List!47158)) (IdentifierValue!16379 (value!247350 List!47158)) (WhitespaceValue!16379 (value!247351 List!47158)) (True!16378) (False!16378) (Broken!40947 (value!247352 List!47158)) (Broken!40948 (value!247353 List!47158)) (True!16379) (RightBrace!8189) (RightBracket!8189) (Colon!8189) (Null!8189) (Comma!8189) (LeftBracket!8189) (False!16379) (LeftBrace!8189) (ImaginaryLiteralValue!8189 (text!57769 List!47158)) (StringLiteralValue!24567 (value!247354 List!47158)) (EOFValue!8189 (value!247355 List!47158)) (IdentValue!8189 (value!247356 List!47158)) (DelimiterValue!16379 (value!247357 List!47158)) (DedentValue!8189 (value!247358 List!47158)) (NewLineValue!8189 (value!247359 List!47158)) (IntegerValue!24567 (value!247360 (_ BitVec 32)) (text!57770 List!47158)) (IntegerValue!24568 (value!247361 Int) (text!57771 List!47158)) (Times!8189) (Or!8189) (Equal!8189) (Minus!8189) (Broken!40949 (value!247362 List!47158)) (And!8189) (Div!8189) (LessEqual!8189) (Mod!8189) (Concat!21053) (Not!8189) (Plus!8189) (SpaceValue!8189 (value!247363 List!47158)) (IntegerValue!24569 (value!247364 Int) (text!57772 List!47158)) (StringLiteralValue!24568 (text!57773 List!47158)) (FloatLiteralValue!16379 (text!57774 List!47158)) (BytesLiteralValue!8189 (value!247365 List!47158)) (CommentValue!16379 (value!247366 List!47158)) (StringLiteralValue!24569 (value!247367 List!47158)) (ErrorTokenValue!8189 (msg!8250 List!47158)) )
))
(declare-datatypes ((IArray!28345 0))(
  ( (IArray!28346 (innerList!14230 List!47157)) )
))
(declare-datatypes ((Conc!14170 0))(
  ( (Node!14170 (left!34904 Conc!14170) (right!35234 Conc!14170) (csize!28570 Int) (cheight!14381 Int)) (Leaf!21909 (xs!17476 IArray!28345) (csize!28571 Int)) (Empty!14170) )
))
(declare-datatypes ((BalanceConc!27934 0))(
  ( (BalanceConc!27935 (c!721329 Conc!14170)) )
))
(declare-datatypes ((TokenValueInjection!15806 0))(
  ( (TokenValueInjection!15807 (toValue!10723 Int) (toChars!10582 Int)) )
))
(declare-datatypes ((Regex!12864 0))(
  ( (ElementMatch!12864 (c!721330 C!25926)) (Concat!21054 (regOne!26240 Regex!12864) (regTwo!26240 Regex!12864)) (EmptyExpr!12864) (Star!12864 (reg!13193 Regex!12864)) (EmptyLang!12864) (Union!12864 (regOne!26241 Regex!12864) (regTwo!26241 Regex!12864)) )
))
(declare-datatypes ((String!54877 0))(
  ( (String!54878 (value!247368 String)) )
))
(declare-datatypes ((Rule!15718 0))(
  ( (Rule!15719 (regex!7959 Regex!12864) (tag!8823 String!54877) (isSeparator!7959 Bool) (transformation!7959 TokenValueInjection!15806)) )
))
(declare-datatypes ((Token!14544 0))(
  ( (Token!14545 (value!247369 TokenValue!8189) (rule!11089 Rule!15718) (size!34438 Int) (originalCharacters!8303 List!47157)) )
))
(declare-datatypes ((List!47159 0))(
  ( (Nil!47035) (Cons!47035 (h!52455 Token!14544) (t!351824 List!47159)) )
))
(declare-fun tokens!592 () List!47159)

(declare-fun inv!61798 (Token!14544) Bool)

(assert (=> b!4247178 (= e!2637925 (and (inv!61798 (h!52455 tokens!592)) e!2637935 tp!1302904))))

(declare-fun b!4247179 () Bool)

(declare-fun res!1746065 () Bool)

(assert (=> b!4247179 (=> (not res!1746065) (not e!2637929))))

(declare-fun shorterInput!62 () List!47157)

(declare-fun size!34439 (List!47157) Int)

(assert (=> b!4247179 (= res!1746065 (> (size!34439 longerInput!62) (size!34439 shorterInput!62)))))

(declare-fun res!1746067 () Bool)

(assert (=> start!406568 (=> (not res!1746067) (not e!2637929))))

(declare-datatypes ((LexerInterface!7554 0))(
  ( (LexerInterfaceExt!7551 (__x!28602 Int)) (Lexer!7552) )
))
(declare-fun thiss!21641 () LexerInterface!7554)

(assert (=> start!406568 (= res!1746067 (is-Lexer!7552 thiss!21641))))

(assert (=> start!406568 e!2637929))

(assert (=> start!406568 true))

(declare-fun e!2637938 () Bool)

(assert (=> start!406568 e!2637938))

(declare-fun e!2637931 () Bool)

(assert (=> start!406568 e!2637931))

(assert (=> start!406568 e!2637925))

(declare-fun e!2637927 () Bool)

(assert (=> start!406568 e!2637927))

(declare-fun e!2637936 () Bool)

(assert (=> start!406568 e!2637936))

(declare-fun b!4247180 () Bool)

(declare-fun tp_is_empty!22719 () Bool)

(declare-fun tp!1302903 () Bool)

(assert (=> b!4247180 (= e!2637936 (and tp_is_empty!22719 tp!1302903))))

(declare-fun b!4247181 () Bool)

(declare-fun res!1746063 () Bool)

(assert (=> b!4247181 (=> (not res!1746063) (not e!2637929))))

(declare-datatypes ((List!47160 0))(
  ( (Nil!47036) (Cons!47036 (h!52456 Rule!15718) (t!351825 List!47160)) )
))
(declare-fun rules!2971 () List!47160)

(declare-fun rulesInvariant!6665 (LexerInterface!7554 List!47160) Bool)

(assert (=> b!4247181 (= res!1746063 (rulesInvariant!6665 thiss!21641 rules!2971))))

(declare-fun b!4247182 () Bool)

(declare-fun tp!1302912 () Bool)

(assert (=> b!4247182 (= e!2637938 (and tp_is_empty!22719 tp!1302912))))

(declare-fun e!2637930 () Bool)

(declare-fun tp!1302911 () Bool)

(declare-fun e!2637937 () Bool)

(declare-fun b!4247183 () Bool)

(declare-fun inv!61795 (String!54877) Bool)

(declare-fun inv!61799 (TokenValueInjection!15806) Bool)

(assert (=> b!4247183 (= e!2637930 (and tp!1302911 (inv!61795 (tag!8823 (rule!11089 (h!52455 tokens!592)))) (inv!61799 (transformation!7959 (rule!11089 (h!52455 tokens!592)))) e!2637937))))

(declare-fun b!4247184 () Bool)

(assert (=> b!4247184 (= e!2637929 false)))

(declare-datatypes ((tuple2!44594 0))(
  ( (tuple2!44595 (_1!25431 Token!14544) (_2!25431 List!47157)) )
))
(declare-datatypes ((Option!10093 0))(
  ( (None!10092) (Some!10092 (v!41046 tuple2!44594)) )
))
(declare-fun lt!1507799 () Option!10093)

(declare-fun maxPrefix!4510 (LexerInterface!7554 List!47160 List!47157) Option!10093)

(assert (=> b!4247184 (= lt!1507799 (maxPrefix!4510 thiss!21641 rules!2971 shorterInput!62))))

(declare-fun lt!1507800 () Option!10093)

(assert (=> b!4247184 (= lt!1507800 (maxPrefix!4510 thiss!21641 rules!2971 longerInput!62))))

(declare-fun b!4247185 () Bool)

(declare-fun res!1746064 () Bool)

(assert (=> b!4247185 (=> (not res!1746064) (not e!2637929))))

(declare-fun suffix!1284 () List!47157)

(declare-datatypes ((tuple2!44596 0))(
  ( (tuple2!44597 (_1!25432 List!47159) (_2!25432 List!47157)) )
))
(declare-fun lexList!2060 (LexerInterface!7554 List!47160 List!47157) tuple2!44596)

(assert (=> b!4247185 (= res!1746064 (= (lexList!2060 thiss!21641 rules!2971 longerInput!62) (tuple2!44597 tokens!592 suffix!1284)))))

(declare-fun b!4247186 () Bool)

(declare-fun e!2637934 () Bool)

(declare-fun tp!1302905 () Bool)

(assert (=> b!4247186 (= e!2637927 (and e!2637934 tp!1302905))))

(declare-fun e!2637933 () Bool)

(declare-fun tp!1302906 () Bool)

(declare-fun b!4247187 () Bool)

(assert (=> b!4247187 (= e!2637934 (and tp!1302906 (inv!61795 (tag!8823 (h!52456 rules!2971))) (inv!61799 (transformation!7959 (h!52456 rules!2971))) e!2637933))))

(declare-fun b!4247188 () Bool)

(declare-fun res!1746066 () Bool)

(assert (=> b!4247188 (=> (not res!1746066) (not e!2637929))))

(declare-fun isEmpty!27823 (List!47160) Bool)

(assert (=> b!4247188 (= res!1746066 (not (isEmpty!27823 rules!2971)))))

(declare-fun tp!1302910 () Bool)

(declare-fun b!4247189 () Bool)

(declare-fun inv!21 (TokenValue!8189) Bool)

(assert (=> b!4247189 (= e!2637935 (and (inv!21 (value!247369 (h!52455 tokens!592))) e!2637930 tp!1302910))))

(assert (=> b!4247190 (= e!2637933 (and tp!1302913 tp!1302909))))

(assert (=> b!4247191 (= e!2637937 (and tp!1302907 tp!1302908))))

(declare-fun b!4247192 () Bool)

(declare-fun tp!1302914 () Bool)

(assert (=> b!4247192 (= e!2637931 (and tp_is_empty!22719 tp!1302914))))

(assert (= (and start!406568 res!1746067) b!4247188))

(assert (= (and b!4247188 res!1746066) b!4247181))

(assert (= (and b!4247181 res!1746063) b!4247177))

(assert (= (and b!4247177 res!1746068) b!4247179))

(assert (= (and b!4247179 res!1746065) b!4247185))

(assert (= (and b!4247185 res!1746064) b!4247184))

(assert (= (and start!406568 (is-Cons!47033 suffix!1284)) b!4247182))

(assert (= (and start!406568 (is-Cons!47033 longerInput!62)) b!4247192))

(assert (= b!4247183 b!4247191))

(assert (= b!4247189 b!4247183))

(assert (= b!4247178 b!4247189))

(assert (= (and start!406568 (is-Cons!47035 tokens!592)) b!4247178))

(assert (= b!4247187 b!4247190))

(assert (= b!4247186 b!4247187))

(assert (= (and start!406568 (is-Cons!47036 rules!2971)) b!4247186))

(assert (= (and start!406568 (is-Cons!47033 shorterInput!62)) b!4247180))

(declare-fun m!4831975 () Bool)

(assert (=> b!4247183 m!4831975))

(declare-fun m!4831977 () Bool)

(assert (=> b!4247183 m!4831977))

(declare-fun m!4831979 () Bool)

(assert (=> b!4247185 m!4831979))

(declare-fun m!4831981 () Bool)

(assert (=> b!4247187 m!4831981))

(declare-fun m!4831983 () Bool)

(assert (=> b!4247187 m!4831983))

(declare-fun m!4831985 () Bool)

(assert (=> b!4247188 m!4831985))

(declare-fun m!4831987 () Bool)

(assert (=> b!4247178 m!4831987))

(declare-fun m!4831989 () Bool)

(assert (=> b!4247177 m!4831989))

(declare-fun m!4831991 () Bool)

(assert (=> b!4247179 m!4831991))

(declare-fun m!4831993 () Bool)

(assert (=> b!4247179 m!4831993))

(declare-fun m!4831995 () Bool)

(assert (=> b!4247181 m!4831995))

(declare-fun m!4831997 () Bool)

(assert (=> b!4247184 m!4831997))

(declare-fun m!4831999 () Bool)

(assert (=> b!4247184 m!4831999))

(declare-fun m!4832001 () Bool)

(assert (=> b!4247189 m!4832001))

(push 1)

(assert (not b!4247188))

(assert (not b_next!126845))

(assert b_and!336513)

(assert (not b!4247186))

(assert (not b!4247183))

(assert (not b_next!126847))

(assert b_and!336511)

(assert (not b!4247189))

(assert (not b!4247184))

(assert (not b!4247179))

(assert (not b!4247185))

(assert (not b_next!126843))

(assert (not b!4247177))

(assert (not b!4247181))

(assert (not b!4247192))

(assert b_and!336509)

(assert tp_is_empty!22719)

(assert (not b!4247178))

(assert (not b!4247180))

(assert b_and!336515)

(assert (not b!4247182))

(assert (not b!4247187))

(assert (not b_next!126849))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!126845))

(assert b_and!336513)

(assert (not b_next!126847))

(assert b_and!336511)

(assert b_and!336515)

(assert (not b_next!126843))

(assert (not b_next!126849))

(assert b_and!336509)

(check-sat)

(pop 1)

