; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!388812 () Bool)

(assert start!388812)

(declare-fun b!4103091 () Bool)

(declare-fun b_free!115065 () Bool)

(declare-fun b_next!115769 () Bool)

(assert (=> b!4103091 (= b_free!115065 (not b_next!115769))))

(declare-fun tp!1243209 () Bool)

(declare-fun b_and!316879 () Bool)

(assert (=> b!4103091 (= tp!1243209 b_and!316879)))

(declare-fun b_free!115067 () Bool)

(declare-fun b_next!115771 () Bool)

(assert (=> b!4103091 (= b_free!115067 (not b_next!115771))))

(declare-fun tp!1243206 () Bool)

(declare-fun b_and!316881 () Bool)

(assert (=> b!4103091 (= tp!1243206 b_and!316881)))

(declare-fun b!4103093 () Bool)

(declare-fun b_free!115069 () Bool)

(declare-fun b_next!115773 () Bool)

(assert (=> b!4103093 (= b_free!115069 (not b_next!115773))))

(declare-fun tp!1243207 () Bool)

(declare-fun b_and!316883 () Bool)

(assert (=> b!4103093 (= tp!1243207 b_and!316883)))

(declare-fun b_free!115071 () Bool)

(declare-fun b_next!115775 () Bool)

(assert (=> b!4103093 (= b_free!115071 (not b_next!115775))))

(declare-fun tp!1243212 () Bool)

(declare-fun b_and!316885 () Bool)

(assert (=> b!4103093 (= tp!1243212 b_and!316885)))

(declare-fun e!2546313 () Bool)

(declare-fun b!4103087 () Bool)

(declare-datatypes ((C!24316 0))(
  ( (C!24317 (val!14268 Int)) )
))
(declare-datatypes ((List!44239 0))(
  ( (Nil!44115) (Cons!44115 (h!49535 C!24316) (t!339896 List!44239)) )
))
(declare-datatypes ((IArray!26747 0))(
  ( (IArray!26748 (innerList!13431 List!44239)) )
))
(declare-datatypes ((Conc!13371 0))(
  ( (Node!13371 (left!33121 Conc!13371) (right!33451 Conc!13371) (csize!26972 Int) (cheight!13582 Int)) (Leaf!20666 (xs!16677 IArray!26747) (csize!26973 Int)) (Empty!13371) )
))
(declare-datatypes ((List!44240 0))(
  ( (Nil!44116) (Cons!44116 (h!49536 (_ BitVec 16)) (t!339897 List!44240)) )
))
(declare-datatypes ((Regex!12065 0))(
  ( (ElementMatch!12065 (c!706580 C!24316)) (Concat!19455 (regOne!24642 Regex!12065) (regTwo!24642 Regex!12065)) (EmptyExpr!12065) (Star!12065 (reg!12394 Regex!12065)) (EmptyLang!12065) (Union!12065 (regOne!24643 Regex!12065) (regTwo!24643 Regex!12065)) )
))
(declare-datatypes ((String!50699 0))(
  ( (String!50700 (value!224669 String)) )
))
(declare-datatypes ((TokenValue!7390 0))(
  ( (FloatLiteralValue!14780 (text!52175 List!44240)) (TokenValueExt!7389 (__x!26997 Int)) (Broken!36950 (value!224670 List!44240)) (Object!7513) (End!7390) (Def!7390) (Underscore!7390) (Match!7390) (Else!7390) (Error!7390) (Case!7390) (If!7390) (Extends!7390) (Abstract!7390) (Class!7390) (Val!7390) (DelimiterValue!14780 (del!7450 List!44240)) (KeywordValue!7396 (value!224671 List!44240)) (CommentValue!14780 (value!224672 List!44240)) (WhitespaceValue!14780 (value!224673 List!44240)) (IndentationValue!7390 (value!224674 List!44240)) (String!50701) (Int32!7390) (Broken!36951 (value!224675 List!44240)) (Boolean!7391) (Unit!63614) (OperatorValue!7393 (op!7450 List!44240)) (IdentifierValue!14780 (value!224676 List!44240)) (IdentifierValue!14781 (value!224677 List!44240)) (WhitespaceValue!14781 (value!224678 List!44240)) (True!14780) (False!14780) (Broken!36952 (value!224679 List!44240)) (Broken!36953 (value!224680 List!44240)) (True!14781) (RightBrace!7390) (RightBracket!7390) (Colon!7390) (Null!7390) (Comma!7390) (LeftBracket!7390) (False!14781) (LeftBrace!7390) (ImaginaryLiteralValue!7390 (text!52176 List!44240)) (StringLiteralValue!22170 (value!224681 List!44240)) (EOFValue!7390 (value!224682 List!44240)) (IdentValue!7390 (value!224683 List!44240)) (DelimiterValue!14781 (value!224684 List!44240)) (DedentValue!7390 (value!224685 List!44240)) (NewLineValue!7390 (value!224686 List!44240)) (IntegerValue!22170 (value!224687 (_ BitVec 32)) (text!52177 List!44240)) (IntegerValue!22171 (value!224688 Int) (text!52178 List!44240)) (Times!7390) (Or!7390) (Equal!7390) (Minus!7390) (Broken!36954 (value!224689 List!44240)) (And!7390) (Div!7390) (LessEqual!7390) (Mod!7390) (Concat!19456) (Not!7390) (Plus!7390) (SpaceValue!7390 (value!224690 List!44240)) (IntegerValue!22172 (value!224691 Int) (text!52179 List!44240)) (StringLiteralValue!22171 (text!52180 List!44240)) (FloatLiteralValue!14781 (text!52181 List!44240)) (BytesLiteralValue!7390 (value!224692 List!44240)) (CommentValue!14781 (value!224693 List!44240)) (StringLiteralValue!22172 (value!224694 List!44240)) (ErrorTokenValue!7390 (msg!7451 List!44240)) )
))
(declare-datatypes ((BalanceConc!26336 0))(
  ( (BalanceConc!26337 (c!706581 Conc!13371)) )
))
(declare-datatypes ((TokenValueInjection!14208 0))(
  ( (TokenValueInjection!14209 (toValue!9772 Int) (toChars!9631 Int)) )
))
(declare-datatypes ((Rule!14120 0))(
  ( (Rule!14121 (regex!7160 Regex!12065) (tag!8020 String!50699) (isSeparator!7160 Bool) (transformation!7160 TokenValueInjection!14208)) )
))
(declare-fun rHead!24 () Rule!14120)

(declare-fun tp!1243208 () Bool)

(declare-fun e!2546312 () Bool)

(declare-fun inv!58803 (String!50699) Bool)

(declare-fun inv!58805 (TokenValueInjection!14208) Bool)

(assert (=> b!4103087 (= e!2546313 (and tp!1243208 (inv!58803 (tag!8020 rHead!24)) (inv!58805 (transformation!7160 rHead!24)) e!2546312))))

(declare-fun b!4103088 () Bool)

(declare-fun res!1677432 () Bool)

(declare-fun e!2546316 () Bool)

(assert (=> b!4103088 (=> (not res!1677432) (not e!2546316))))

(declare-datatypes ((LexerInterface!6749 0))(
  ( (LexerInterfaceExt!6746 (__x!26998 Int)) (Lexer!6747) )
))
(declare-fun thiss!26455 () LexerInterface!6749)

(declare-datatypes ((List!44241 0))(
  ( (Nil!44117) (Cons!44117 (h!49537 Rule!14120) (t!339898 List!44241)) )
))
(declare-fun rTail!27 () List!44241)

(declare-fun rulesInvariant!6092 (LexerInterface!6749 List!44241) Bool)

(assert (=> b!4103088 (= res!1677432 (rulesInvariant!6092 thiss!26455 (Cons!44117 rHead!24 rTail!27)))))

(declare-fun b!4103089 () Bool)

(declare-fun ListPrimitiveSize!277 (List!44241) Int)

(assert (=> b!4103089 (= e!2546316 (< (ListPrimitiveSize!277 rTail!27) 0))))

(declare-fun b!4103090 () Bool)

(declare-fun e!2546311 () Bool)

(declare-fun e!2546314 () Bool)

(declare-fun tp!1243210 () Bool)

(assert (=> b!4103090 (= e!2546311 (and e!2546314 tp!1243210))))

(declare-fun e!2546315 () Bool)

(assert (=> b!4103091 (= e!2546315 (and tp!1243209 tp!1243206))))

(declare-fun b!4103092 () Bool)

(declare-fun tp!1243211 () Bool)

(assert (=> b!4103092 (= e!2546314 (and tp!1243211 (inv!58803 (tag!8020 (h!49537 rTail!27))) (inv!58805 (transformation!7160 (h!49537 rTail!27))) e!2546315))))

(assert (=> b!4103093 (= e!2546312 (and tp!1243207 tp!1243212))))

(declare-fun res!1677431 () Bool)

(assert (=> start!388812 (=> (not res!1677431) (not e!2546316))))

(get-info :version)

(assert (=> start!388812 (= res!1677431 ((_ is Lexer!6747) thiss!26455))))

(assert (=> start!388812 e!2546316))

(assert (=> start!388812 true))

(assert (=> start!388812 e!2546311))

(assert (=> start!388812 e!2546313))

(declare-fun b!4103094 () Bool)

(declare-fun res!1677430 () Bool)

(assert (=> b!4103094 (=> (not res!1677430) (not e!2546316))))

(declare-fun isEmpty!26371 (List!44241) Bool)

(assert (=> b!4103094 (= res!1677430 (not (isEmpty!26371 rTail!27)))))

(assert (= (and start!388812 res!1677431) b!4103094))

(assert (= (and b!4103094 res!1677430) b!4103088))

(assert (= (and b!4103088 res!1677432) b!4103089))

(assert (= b!4103092 b!4103091))

(assert (= b!4103090 b!4103092))

(assert (= (and start!388812 ((_ is Cons!44117) rTail!27)) b!4103090))

(assert (= b!4103087 b!4103093))

(assert (= start!388812 b!4103087))

(declare-fun m!4709095 () Bool)

(assert (=> b!4103089 m!4709095))

(declare-fun m!4709097 () Bool)

(assert (=> b!4103088 m!4709097))

(declare-fun m!4709099 () Bool)

(assert (=> b!4103092 m!4709099))

(declare-fun m!4709101 () Bool)

(assert (=> b!4103092 m!4709101))

(declare-fun m!4709103 () Bool)

(assert (=> b!4103094 m!4709103))

(declare-fun m!4709105 () Bool)

(assert (=> b!4103087 m!4709105))

(declare-fun m!4709107 () Bool)

(assert (=> b!4103087 m!4709107))

(check-sat (not b!4103092) (not b_next!115773) b_and!316885 b_and!316879 b_and!316883 (not b_next!115769) (not b!4103087) (not b_next!115771) (not b!4103090) b_and!316881 (not b_next!115775) (not b!4103089) (not b!4103088) (not b!4103094))
(check-sat b_and!316881 (not b_next!115775) (not b_next!115773) b_and!316885 b_and!316879 b_and!316883 (not b_next!115769) (not b_next!115771))
(get-model)

(declare-fun d!1217999 () Bool)

(declare-fun lt!1467271 () Int)

(assert (=> d!1217999 (>= lt!1467271 0)))

(declare-fun e!2546324 () Int)

(assert (=> d!1217999 (= lt!1467271 e!2546324)))

(declare-fun c!706587 () Bool)

(assert (=> d!1217999 (= c!706587 ((_ is Nil!44117) rTail!27))))

(assert (=> d!1217999 (= (ListPrimitiveSize!277 rTail!27) lt!1467271)))

(declare-fun b!4103105 () Bool)

(assert (=> b!4103105 (= e!2546324 0)))

(declare-fun b!4103106 () Bool)

(assert (=> b!4103106 (= e!2546324 (+ 1 (ListPrimitiveSize!277 (t!339898 rTail!27))))))

(assert (= (and d!1217999 c!706587) b!4103105))

(assert (= (and d!1217999 (not c!706587)) b!4103106))

(declare-fun m!4709111 () Bool)

(assert (=> b!4103106 m!4709111))

(assert (=> b!4103089 d!1217999))

(declare-fun d!1218005 () Bool)

(assert (=> d!1218005 (= (isEmpty!26371 rTail!27) ((_ is Nil!44117) rTail!27))))

(assert (=> b!4103094 d!1218005))

(declare-fun d!1218009 () Bool)

(declare-fun res!1677442 () Bool)

(declare-fun e!2546330 () Bool)

(assert (=> d!1218009 (=> (not res!1677442) (not e!2546330))))

(declare-fun rulesValid!2812 (LexerInterface!6749 List!44241) Bool)

(assert (=> d!1218009 (= res!1677442 (rulesValid!2812 thiss!26455 (Cons!44117 rHead!24 rTail!27)))))

(assert (=> d!1218009 (= (rulesInvariant!6092 thiss!26455 (Cons!44117 rHead!24 rTail!27)) e!2546330)))

(declare-fun b!4103112 () Bool)

(declare-datatypes ((List!44243 0))(
  ( (Nil!44119) (Cons!44119 (h!49539 String!50699) (t!339900 List!44243)) )
))
(declare-fun noDuplicateTag!2837 (LexerInterface!6749 List!44241 List!44243) Bool)

(assert (=> b!4103112 (= e!2546330 (noDuplicateTag!2837 thiss!26455 (Cons!44117 rHead!24 rTail!27) Nil!44119))))

(assert (= (and d!1218009 res!1677442) b!4103112))

(declare-fun m!4709117 () Bool)

(assert (=> d!1218009 m!4709117))

(declare-fun m!4709119 () Bool)

(assert (=> b!4103112 m!4709119))

(assert (=> b!4103088 d!1218009))

(declare-fun d!1218013 () Bool)

(assert (=> d!1218013 (= (inv!58803 (tag!8020 rHead!24)) (= (mod (str.len (value!224669 (tag!8020 rHead!24))) 2) 0))))

(assert (=> b!4103087 d!1218013))

(declare-fun d!1218017 () Bool)

(declare-fun res!1677448 () Bool)

(declare-fun e!2546336 () Bool)

(assert (=> d!1218017 (=> (not res!1677448) (not e!2546336))))

(declare-fun semiInverseModEq!3077 (Int Int) Bool)

(assert (=> d!1218017 (= res!1677448 (semiInverseModEq!3077 (toChars!9631 (transformation!7160 rHead!24)) (toValue!9772 (transformation!7160 rHead!24))))))

(assert (=> d!1218017 (= (inv!58805 (transformation!7160 rHead!24)) e!2546336)))

(declare-fun b!4103118 () Bool)

(declare-fun equivClasses!2976 (Int Int) Bool)

(assert (=> b!4103118 (= e!2546336 (equivClasses!2976 (toChars!9631 (transformation!7160 rHead!24)) (toValue!9772 (transformation!7160 rHead!24))))))

(assert (= (and d!1218017 res!1677448) b!4103118))

(declare-fun m!4709125 () Bool)

(assert (=> d!1218017 m!4709125))

(declare-fun m!4709127 () Bool)

(assert (=> b!4103118 m!4709127))

(assert (=> b!4103087 d!1218017))

(declare-fun d!1218023 () Bool)

(assert (=> d!1218023 (= (inv!58803 (tag!8020 (h!49537 rTail!27))) (= (mod (str.len (value!224669 (tag!8020 (h!49537 rTail!27)))) 2) 0))))

(assert (=> b!4103092 d!1218023))

(declare-fun d!1218025 () Bool)

(declare-fun res!1677450 () Bool)

(declare-fun e!2546338 () Bool)

(assert (=> d!1218025 (=> (not res!1677450) (not e!2546338))))

(assert (=> d!1218025 (= res!1677450 (semiInverseModEq!3077 (toChars!9631 (transformation!7160 (h!49537 rTail!27))) (toValue!9772 (transformation!7160 (h!49537 rTail!27)))))))

(assert (=> d!1218025 (= (inv!58805 (transformation!7160 (h!49537 rTail!27))) e!2546338)))

(declare-fun b!4103121 () Bool)

(assert (=> b!4103121 (= e!2546338 (equivClasses!2976 (toChars!9631 (transformation!7160 (h!49537 rTail!27))) (toValue!9772 (transformation!7160 (h!49537 rTail!27)))))))

(assert (= (and d!1218025 res!1677450) b!4103121))

(declare-fun m!4709133 () Bool)

(assert (=> d!1218025 m!4709133))

(declare-fun m!4709135 () Bool)

(assert (=> b!4103121 m!4709135))

(assert (=> b!4103092 d!1218025))

(declare-fun b!4103146 () Bool)

(declare-fun e!2546344 () Bool)

(declare-fun tp!1243241 () Bool)

(declare-fun tp!1243243 () Bool)

(assert (=> b!4103146 (= e!2546344 (and tp!1243241 tp!1243243))))

(assert (=> b!4103087 (= tp!1243208 e!2546344)))

(declare-fun b!4103148 () Bool)

(declare-fun tp!1243238 () Bool)

(declare-fun tp!1243239 () Bool)

(assert (=> b!4103148 (= e!2546344 (and tp!1243238 tp!1243239))))

(declare-fun b!4103147 () Bool)

(declare-fun tp!1243240 () Bool)

(assert (=> b!4103147 (= e!2546344 tp!1243240)))

(declare-fun b!4103145 () Bool)

(declare-fun tp_is_empty!21105 () Bool)

(assert (=> b!4103145 (= e!2546344 tp_is_empty!21105)))

(assert (= (and b!4103087 ((_ is ElementMatch!12065) (regex!7160 rHead!24))) b!4103145))

(assert (= (and b!4103087 ((_ is Concat!19455) (regex!7160 rHead!24))) b!4103146))

(assert (= (and b!4103087 ((_ is Star!12065) (regex!7160 rHead!24))) b!4103147))

(assert (= (and b!4103087 ((_ is Union!12065) (regex!7160 rHead!24))) b!4103148))

(declare-fun b!4103158 () Bool)

(declare-fun e!2546348 () Bool)

(declare-fun tp!1243251 () Bool)

(declare-fun tp!1243252 () Bool)

(assert (=> b!4103158 (= e!2546348 (and tp!1243251 tp!1243252))))

(assert (=> b!4103092 (= tp!1243211 e!2546348)))

(declare-fun b!4103160 () Bool)

(declare-fun tp!1243248 () Bool)

(declare-fun tp!1243249 () Bool)

(assert (=> b!4103160 (= e!2546348 (and tp!1243248 tp!1243249))))

(declare-fun b!4103159 () Bool)

(declare-fun tp!1243250 () Bool)

(assert (=> b!4103159 (= e!2546348 tp!1243250)))

(declare-fun b!4103157 () Bool)

(assert (=> b!4103157 (= e!2546348 tp_is_empty!21105)))

(assert (= (and b!4103092 ((_ is ElementMatch!12065) (regex!7160 (h!49537 rTail!27)))) b!4103157))

(assert (= (and b!4103092 ((_ is Concat!19455) (regex!7160 (h!49537 rTail!27)))) b!4103158))

(assert (= (and b!4103092 ((_ is Star!12065) (regex!7160 (h!49537 rTail!27)))) b!4103159))

(assert (= (and b!4103092 ((_ is Union!12065) (regex!7160 (h!49537 rTail!27)))) b!4103160))

(declare-fun b!4103178 () Bool)

(declare-fun b_free!115077 () Bool)

(declare-fun b_next!115781 () Bool)

(assert (=> b!4103178 (= b_free!115077 (not b_next!115781))))

(declare-fun tp!1243273 () Bool)

(declare-fun b_and!316891 () Bool)

(assert (=> b!4103178 (= tp!1243273 b_and!316891)))

(declare-fun b_free!115079 () Bool)

(declare-fun b_next!115783 () Bool)

(assert (=> b!4103178 (= b_free!115079 (not b_next!115783))))

(declare-fun tp!1243275 () Bool)

(declare-fun b_and!316893 () Bool)

(assert (=> b!4103178 (= tp!1243275 b_and!316893)))

(declare-fun e!2546367 () Bool)

(assert (=> b!4103178 (= e!2546367 (and tp!1243273 tp!1243275))))

(declare-fun tp!1243276 () Bool)

(declare-fun b!4103177 () Bool)

(declare-fun e!2546369 () Bool)

(assert (=> b!4103177 (= e!2546369 (and tp!1243276 (inv!58803 (tag!8020 (h!49537 (t!339898 rTail!27)))) (inv!58805 (transformation!7160 (h!49537 (t!339898 rTail!27)))) e!2546367))))

(declare-fun b!4103176 () Bool)

(declare-fun e!2546368 () Bool)

(declare-fun tp!1243274 () Bool)

(assert (=> b!4103176 (= e!2546368 (and e!2546369 tp!1243274))))

(assert (=> b!4103090 (= tp!1243210 e!2546368)))

(assert (= b!4103177 b!4103178))

(assert (= b!4103176 b!4103177))

(assert (= (and b!4103090 ((_ is Cons!44117) (t!339898 rTail!27))) b!4103176))

(declare-fun m!4709141 () Bool)

(assert (=> b!4103177 m!4709141))

(declare-fun m!4709143 () Bool)

(assert (=> b!4103177 m!4709143))

(check-sat b_and!316881 (not b!4103160) (not b!4103147) (not b_next!115783) (not b!4103158) b_and!316883 tp_is_empty!21105 (not b!4103176) (not b!4103112) (not d!1218009) (not b!4103118) (not b!4103159) b_and!316891 (not b_next!115775) (not b!4103177) (not b_next!115773) b_and!316885 (not b!4103148) b_and!316893 b_and!316879 (not d!1218017) (not b!4103121) (not d!1218025) (not b!4103106) (not b!4103146) (not b_next!115769) (not b_next!115771) (not b_next!115781))
(check-sat b_and!316881 (not b_next!115773) b_and!316885 (not b_next!115783) b_and!316883 (not b_next!115769) b_and!316891 (not b_next!115775) b_and!316893 b_and!316879 (not b_next!115771) (not b_next!115781))
