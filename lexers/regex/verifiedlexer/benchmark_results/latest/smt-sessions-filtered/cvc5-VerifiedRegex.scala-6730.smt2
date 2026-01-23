; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!351916 () Bool)

(assert start!351916)

(declare-fun b!3748281 () Bool)

(declare-fun b_free!100037 () Bool)

(declare-fun b_next!100741 () Bool)

(assert (=> b!3748281 (= b_free!100037 (not b_next!100741))))

(declare-fun tp!1143827 () Bool)

(declare-fun b_and!278271 () Bool)

(assert (=> b!3748281 (= tp!1143827 b_and!278271)))

(declare-fun b_free!100039 () Bool)

(declare-fun b_next!100743 () Bool)

(assert (=> b!3748281 (= b_free!100039 (not b_next!100743))))

(declare-fun tp!1143829 () Bool)

(declare-fun b_and!278273 () Bool)

(assert (=> b!3748281 (= tp!1143829 b_and!278273)))

(declare-fun b!3748280 () Bool)

(declare-fun b_free!100041 () Bool)

(declare-fun b_next!100745 () Bool)

(assert (=> b!3748280 (= b_free!100041 (not b_next!100745))))

(declare-fun tp!1143821 () Bool)

(declare-fun b_and!278275 () Bool)

(assert (=> b!3748280 (= tp!1143821 b_and!278275)))

(declare-fun b_free!100043 () Bool)

(declare-fun b_next!100747 () Bool)

(assert (=> b!3748280 (= b_free!100043 (not b_next!100747))))

(declare-fun tp!1143823 () Bool)

(declare-fun b_and!278277 () Bool)

(assert (=> b!3748280 (= tp!1143823 b_and!278277)))

(declare-fun b!3748276 () Bool)

(declare-fun b_free!100045 () Bool)

(declare-fun b_next!100749 () Bool)

(assert (=> b!3748276 (= b_free!100045 (not b_next!100749))))

(declare-fun tp!1143819 () Bool)

(declare-fun b_and!278279 () Bool)

(assert (=> b!3748276 (= tp!1143819 b_and!278279)))

(declare-fun b_free!100047 () Bool)

(declare-fun b_next!100751 () Bool)

(assert (=> b!3748276 (= b_free!100047 (not b_next!100751))))

(declare-fun tp!1143828 () Bool)

(declare-fun b_and!278281 () Bool)

(assert (=> b!3748276 (= tp!1143828 b_and!278281)))

(declare-fun b!3748273 () Bool)

(declare-fun tp!1143820 () Bool)

(declare-fun e!2317969 () Bool)

(declare-datatypes ((C!22182 0))(
  ( (C!22183 (val!13139 Int)) )
))
(declare-datatypes ((List!40009 0))(
  ( (Nil!39885) (Cons!39885 (h!45305 C!22182) (t!302692 List!40009)) )
))
(declare-datatypes ((Regex!10998 0))(
  ( (ElementMatch!10998 (c!649044 C!22182)) (Concat!17321 (regOne!22508 Regex!10998) (regTwo!22508 Regex!10998)) (EmptyExpr!10998) (Star!10998 (reg!11327 Regex!10998)) (EmptyLang!10998) (Union!10998 (regOne!22509 Regex!10998) (regTwo!22509 Regex!10998)) )
))
(declare-datatypes ((String!45242 0))(
  ( (String!45243 (value!194191 String)) )
))
(declare-datatypes ((List!40010 0))(
  ( (Nil!39886) (Cons!39886 (h!45306 (_ BitVec 16)) (t!302693 List!40010)) )
))
(declare-datatypes ((TokenValue!6323 0))(
  ( (FloatLiteralValue!12646 (text!44706 List!40010)) (TokenValueExt!6322 (__x!24863 Int)) (Broken!31615 (value!194192 List!40010)) (Object!6446) (End!6323) (Def!6323) (Underscore!6323) (Match!6323) (Else!6323) (Error!6323) (Case!6323) (If!6323) (Extends!6323) (Abstract!6323) (Class!6323) (Val!6323) (DelimiterValue!12646 (del!6383 List!40010)) (KeywordValue!6329 (value!194193 List!40010)) (CommentValue!12646 (value!194194 List!40010)) (WhitespaceValue!12646 (value!194195 List!40010)) (IndentationValue!6323 (value!194196 List!40010)) (String!45244) (Int32!6323) (Broken!31616 (value!194197 List!40010)) (Boolean!6324) (Unit!57698) (OperatorValue!6326 (op!6383 List!40010)) (IdentifierValue!12646 (value!194198 List!40010)) (IdentifierValue!12647 (value!194199 List!40010)) (WhitespaceValue!12647 (value!194200 List!40010)) (True!12646) (False!12646) (Broken!31617 (value!194201 List!40010)) (Broken!31618 (value!194202 List!40010)) (True!12647) (RightBrace!6323) (RightBracket!6323) (Colon!6323) (Null!6323) (Comma!6323) (LeftBracket!6323) (False!12647) (LeftBrace!6323) (ImaginaryLiteralValue!6323 (text!44707 List!40010)) (StringLiteralValue!18969 (value!194203 List!40010)) (EOFValue!6323 (value!194204 List!40010)) (IdentValue!6323 (value!194205 List!40010)) (DelimiterValue!12647 (value!194206 List!40010)) (DedentValue!6323 (value!194207 List!40010)) (NewLineValue!6323 (value!194208 List!40010)) (IntegerValue!18969 (value!194209 (_ BitVec 32)) (text!44708 List!40010)) (IntegerValue!18970 (value!194210 Int) (text!44709 List!40010)) (Times!6323) (Or!6323) (Equal!6323) (Minus!6323) (Broken!31619 (value!194211 List!40010)) (And!6323) (Div!6323) (LessEqual!6323) (Mod!6323) (Concat!17322) (Not!6323) (Plus!6323) (SpaceValue!6323 (value!194212 List!40010)) (IntegerValue!18971 (value!194213 Int) (text!44710 List!40010)) (StringLiteralValue!18970 (text!44711 List!40010)) (FloatLiteralValue!12647 (text!44712 List!40010)) (BytesLiteralValue!6323 (value!194214 List!40010)) (CommentValue!12647 (value!194215 List!40010)) (StringLiteralValue!18971 (value!194216 List!40010)) (ErrorTokenValue!6323 (msg!6384 List!40010)) )
))
(declare-datatypes ((IArray!24385 0))(
  ( (IArray!24386 (innerList!12250 List!40009)) )
))
(declare-datatypes ((Conc!12190 0))(
  ( (Node!12190 (left!30876 Conc!12190) (right!31206 Conc!12190) (csize!24610 Int) (cheight!12401 Int)) (Leaf!18921 (xs!15392 IArray!24385) (csize!24611 Int)) (Empty!12190) )
))
(declare-datatypes ((BalanceConc!23994 0))(
  ( (BalanceConc!23995 (c!649045 Conc!12190)) )
))
(declare-datatypes ((TokenValueInjection!12074 0))(
  ( (TokenValueInjection!12075 (toValue!8441 Int) (toChars!8300 Int)) )
))
(declare-datatypes ((Rule!11986 0))(
  ( (Rule!11987 (regex!6093 Regex!10998) (tag!6953 String!45242) (isSeparator!6093 Bool) (transformation!6093 TokenValueInjection!12074)) )
))
(declare-datatypes ((List!40011 0))(
  ( (Nil!39887) (Cons!39887 (h!45307 Rule!11986) (t!302694 List!40011)) )
))
(declare-fun rules!4236 () List!40011)

(declare-fun e!2317971 () Bool)

(declare-fun inv!53390 (String!45242) Bool)

(declare-fun inv!53393 (TokenValueInjection!12074) Bool)

(assert (=> b!3748273 (= e!2317971 (and tp!1143820 (inv!53390 (tag!6953 (h!45307 rules!4236))) (inv!53393 (transformation!6093 (h!45307 rules!4236))) e!2317969))))

(declare-fun b!3748274 () Bool)

(declare-fun res!1519337 () Bool)

(declare-fun e!2317967 () Bool)

(assert (=> b!3748274 (=> (not res!1519337) (not e!2317967))))

(declare-datatypes ((LexerInterface!5682 0))(
  ( (LexerInterfaceExt!5679 (__x!24864 Int)) (Lexer!5680) )
))
(declare-fun thiss!27232 () LexerInterface!5682)

(declare-fun rulesInvariant!5079 (LexerInterface!5682 List!40011) Bool)

(assert (=> b!3748274 (= res!1519337 (rulesInvariant!5079 thiss!27232 rules!4236))))

(declare-fun b!3748275 () Bool)

(declare-fun res!1519338 () Bool)

(assert (=> b!3748275 (=> (not res!1519338) (not e!2317967))))

(declare-fun isEmpty!23515 (List!40011) Bool)

(assert (=> b!3748275 (= res!1519338 (not (isEmpty!23515 rules!4236)))))

(declare-fun e!2317961 () Bool)

(assert (=> b!3748276 (= e!2317961 (and tp!1143819 tp!1143828))))

(declare-fun tp!1143824 () Bool)

(declare-datatypes ((Token!11324 0))(
  ( (Token!11325 (value!194217 TokenValue!6323) (rule!8857 Rule!11986) (size!30054 Int) (originalCharacters!6693 List!40009)) )
))
(declare-datatypes ((List!40012 0))(
  ( (Nil!39888) (Cons!39888 (h!45308 Token!11324) (t!302695 List!40012)) )
))
(declare-fun tokens!606 () List!40012)

(declare-fun e!2317968 () Bool)

(declare-fun e!2317966 () Bool)

(declare-fun b!3748277 () Bool)

(declare-fun inv!21 (TokenValue!6323) Bool)

(assert (=> b!3748277 (= e!2317968 (and (inv!21 (value!194217 (h!45308 tokens!606))) e!2317966 tp!1143824))))

(declare-fun tp!1143822 () Bool)

(declare-fun b!3748278 () Bool)

(declare-fun e!2317960 () Bool)

(assert (=> b!3748278 (= e!2317966 (and tp!1143822 (inv!53390 (tag!6953 (rule!8857 (h!45308 tokens!606)))) (inv!53393 (transformation!6093 (rule!8857 (h!45308 tokens!606)))) e!2317960))))

(declare-fun b!3748279 () Bool)

(declare-fun t!8579 () Token!11324)

(declare-fun tp!1143817 () Bool)

(declare-fun e!2317973 () Bool)

(assert (=> b!3748279 (= e!2317973 (and tp!1143817 (inv!53390 (tag!6953 (rule!8857 t!8579))) (inv!53393 (transformation!6093 (rule!8857 t!8579))) e!2317961))))

(assert (=> b!3748280 (= e!2317969 (and tp!1143821 tp!1143823))))

(assert (=> b!3748281 (= e!2317960 (and tp!1143827 tp!1143829))))

(declare-fun res!1519336 () Bool)

(assert (=> start!351916 (=> (not res!1519336) (not e!2317967))))

(assert (=> start!351916 (= res!1519336 (is-Lexer!5680 thiss!27232))))

(assert (=> start!351916 e!2317967))

(assert (=> start!351916 true))

(declare-fun e!2317962 () Bool)

(assert (=> start!351916 e!2317962))

(declare-fun e!2317963 () Bool)

(assert (=> start!351916 e!2317963))

(declare-fun e!2317970 () Bool)

(declare-fun inv!53394 (Token!11324) Bool)

(assert (=> start!351916 (and (inv!53394 t!8579) e!2317970)))

(declare-fun b!3748282 () Bool)

(declare-fun tp!1143826 () Bool)

(assert (=> b!3748282 (= e!2317970 (and (inv!21 (value!194217 t!8579)) e!2317973 tp!1143826))))

(declare-fun b!3748283 () Bool)

(assert (=> b!3748283 (= e!2317967 false)))

(declare-fun lt!1299667 () Bool)

(declare-fun contains!8145 (List!40012 Token!11324) Bool)

(assert (=> b!3748283 (= lt!1299667 (contains!8145 tokens!606 t!8579))))

(declare-fun b!3748284 () Bool)

(declare-fun tp!1143825 () Bool)

(assert (=> b!3748284 (= e!2317963 (and (inv!53394 (h!45308 tokens!606)) e!2317968 tp!1143825))))

(declare-fun b!3748285 () Bool)

(declare-fun tp!1143818 () Bool)

(assert (=> b!3748285 (= e!2317962 (and e!2317971 tp!1143818))))

(assert (= (and start!351916 res!1519336) b!3748275))

(assert (= (and b!3748275 res!1519338) b!3748274))

(assert (= (and b!3748274 res!1519337) b!3748283))

(assert (= b!3748273 b!3748280))

(assert (= b!3748285 b!3748273))

(assert (= (and start!351916 (is-Cons!39887 rules!4236)) b!3748285))

(assert (= b!3748278 b!3748281))

(assert (= b!3748277 b!3748278))

(assert (= b!3748284 b!3748277))

(assert (= (and start!351916 (is-Cons!39888 tokens!606)) b!3748284))

(assert (= b!3748279 b!3748276))

(assert (= b!3748282 b!3748279))

(assert (= start!351916 b!3748282))

(declare-fun m!4240097 () Bool)

(assert (=> b!3748284 m!4240097))

(declare-fun m!4240099 () Bool)

(assert (=> b!3748279 m!4240099))

(declare-fun m!4240101 () Bool)

(assert (=> b!3748279 m!4240101))

(declare-fun m!4240103 () Bool)

(assert (=> b!3748282 m!4240103))

(declare-fun m!4240105 () Bool)

(assert (=> b!3748278 m!4240105))

(declare-fun m!4240107 () Bool)

(assert (=> b!3748278 m!4240107))

(declare-fun m!4240109 () Bool)

(assert (=> b!3748283 m!4240109))

(declare-fun m!4240111 () Bool)

(assert (=> b!3748275 m!4240111))

(declare-fun m!4240113 () Bool)

(assert (=> b!3748273 m!4240113))

(declare-fun m!4240115 () Bool)

(assert (=> b!3748273 m!4240115))

(declare-fun m!4240117 () Bool)

(assert (=> b!3748274 m!4240117))

(declare-fun m!4240119 () Bool)

(assert (=> b!3748277 m!4240119))

(declare-fun m!4240121 () Bool)

(assert (=> start!351916 m!4240121))

(push 1)

(assert (not b!3748282))

(assert (not b!3748283))

(assert (not b!3748277))

(assert (not b_next!100749))

(assert b_and!278277)

(assert (not b!3748284))

(assert (not b!3748274))

(assert b_and!278281)

(assert b_and!278273)

(assert (not b!3748273))

(assert (not b_next!100751))

(assert (not b!3748285))

(assert (not b!3748278))

(assert (not b_next!100747))

(assert (not b_next!100743))

(assert b_and!278279)

(assert (not start!351916))

(assert (not b!3748275))

(assert b_and!278275)

(assert (not b_next!100741))

(assert (not b!3748279))

(assert (not b_next!100745))

(assert b_and!278271)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!100747))

(assert (not b_next!100749))

(assert b_and!278277)

(assert b_and!278275)

(assert (not b_next!100741))

(assert b_and!278281)

(assert b_and!278273)

(assert (not b_next!100751))

(assert (not b_next!100743))

(assert b_and!278279)

(assert (not b_next!100745))

(assert b_and!278271)

(check-sat)

(pop 1)

