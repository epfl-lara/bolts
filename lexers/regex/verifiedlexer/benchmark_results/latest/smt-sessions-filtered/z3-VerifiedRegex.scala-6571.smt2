; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!347670 () Bool)

(assert start!347670)

(declare-fun b!3692938 () Bool)

(declare-fun b_free!98073 () Bool)

(declare-fun b_next!98777 () Bool)

(assert (=> b!3692938 (= b_free!98073 (not b_next!98777))))

(declare-fun tp!1122288 () Bool)

(declare-fun b_and!275871 () Bool)

(assert (=> b!3692938 (= tp!1122288 b_and!275871)))

(declare-fun b_free!98075 () Bool)

(declare-fun b_next!98779 () Bool)

(assert (=> b!3692938 (= b_free!98075 (not b_next!98779))))

(declare-fun tp!1122293 () Bool)

(declare-fun b_and!275873 () Bool)

(assert (=> b!3692938 (= tp!1122293 b_and!275873)))

(declare-fun b!3692939 () Bool)

(declare-fun b_free!98077 () Bool)

(declare-fun b_next!98781 () Bool)

(assert (=> b!3692939 (= b_free!98077 (not b_next!98781))))

(declare-fun tp!1122287 () Bool)

(declare-fun b_and!275875 () Bool)

(assert (=> b!3692939 (= tp!1122287 b_and!275875)))

(declare-fun b_free!98079 () Bool)

(declare-fun b_next!98783 () Bool)

(assert (=> b!3692939 (= b_free!98079 (not b_next!98783))))

(declare-fun tp!1122292 () Bool)

(declare-fun b_and!275877 () Bool)

(assert (=> b!3692939 (= tp!1122292 b_and!275877)))

(declare-fun b!3692934 () Bool)

(declare-fun e!2286769 () Bool)

(assert (=> b!3692934 (= e!2286769 false)))

(declare-datatypes ((C!21548 0))(
  ( (C!21549 (val!12822 Int)) )
))
(declare-datatypes ((List!39265 0))(
  ( (Nil!39141) (Cons!39141 (h!44561 C!21548) (t!301462 List!39265)) )
))
(declare-fun input!3172 () List!39265)

(declare-datatypes ((List!39266 0))(
  ( (Nil!39142) (Cons!39142 (h!44562 (_ BitVec 16)) (t!301463 List!39266)) )
))
(declare-datatypes ((TokenValue!6152 0))(
  ( (FloatLiteralValue!12304 (text!43509 List!39266)) (TokenValueExt!6151 (__x!24521 Int)) (Broken!30760 (value!189205 List!39266)) (Object!6275) (End!6152) (Def!6152) (Underscore!6152) (Match!6152) (Else!6152) (Error!6152) (Case!6152) (If!6152) (Extends!6152) (Abstract!6152) (Class!6152) (Val!6152) (DelimiterValue!12304 (del!6212 List!39266)) (KeywordValue!6158 (value!189206 List!39266)) (CommentValue!12304 (value!189207 List!39266)) (WhitespaceValue!12304 (value!189208 List!39266)) (IndentationValue!6152 (value!189209 List!39266)) (String!44093) (Int32!6152) (Broken!30761 (value!189210 List!39266)) (Boolean!6153) (Unit!57149) (OperatorValue!6155 (op!6212 List!39266)) (IdentifierValue!12304 (value!189211 List!39266)) (IdentifierValue!12305 (value!189212 List!39266)) (WhitespaceValue!12305 (value!189213 List!39266)) (True!12304) (False!12304) (Broken!30762 (value!189214 List!39266)) (Broken!30763 (value!189215 List!39266)) (True!12305) (RightBrace!6152) (RightBracket!6152) (Colon!6152) (Null!6152) (Comma!6152) (LeftBracket!6152) (False!12305) (LeftBrace!6152) (ImaginaryLiteralValue!6152 (text!43510 List!39266)) (StringLiteralValue!18456 (value!189216 List!39266)) (EOFValue!6152 (value!189217 List!39266)) (IdentValue!6152 (value!189218 List!39266)) (DelimiterValue!12305 (value!189219 List!39266)) (DedentValue!6152 (value!189220 List!39266)) (NewLineValue!6152 (value!189221 List!39266)) (IntegerValue!18456 (value!189222 (_ BitVec 32)) (text!43511 List!39266)) (IntegerValue!18457 (value!189223 Int) (text!43512 List!39266)) (Times!6152) (Or!6152) (Equal!6152) (Minus!6152) (Broken!30764 (value!189224 List!39266)) (And!6152) (Div!6152) (LessEqual!6152) (Mod!6152) (Concat!16833) (Not!6152) (Plus!6152) (SpaceValue!6152 (value!189225 List!39266)) (IntegerValue!18458 (value!189226 Int) (text!43513 List!39266)) (StringLiteralValue!18457 (text!43514 List!39266)) (FloatLiteralValue!12305 (text!43515 List!39266)) (BytesLiteralValue!6152 (value!189227 List!39266)) (CommentValue!12305 (value!189228 List!39266)) (StringLiteralValue!18458 (value!189229 List!39266)) (ErrorTokenValue!6152 (msg!6213 List!39266)) )
))
(declare-datatypes ((IArray!24043 0))(
  ( (IArray!24044 (innerList!12079 List!39265)) )
))
(declare-datatypes ((Conc!12019 0))(
  ( (Node!12019 (left!30522 Conc!12019) (right!30852 Conc!12019) (csize!24268 Int) (cheight!12230 Int)) (Leaf!18591 (xs!15221 IArray!24043) (csize!24269 Int)) (Empty!12019) )
))
(declare-datatypes ((BalanceConc!23652 0))(
  ( (BalanceConc!23653 (c!638528 Conc!12019)) )
))
(declare-datatypes ((Regex!10681 0))(
  ( (ElementMatch!10681 (c!638529 C!21548)) (Concat!16834 (regOne!21874 Regex!10681) (regTwo!21874 Regex!10681)) (EmptyExpr!10681) (Star!10681 (reg!11010 Regex!10681)) (EmptyLang!10681) (Union!10681 (regOne!21875 Regex!10681) (regTwo!21875 Regex!10681)) )
))
(declare-datatypes ((String!44094 0))(
  ( (String!44095 (value!189230 String)) )
))
(declare-datatypes ((TokenValueInjection!11732 0))(
  ( (TokenValueInjection!11733 (toValue!8250 Int) (toChars!8109 Int)) )
))
(declare-datatypes ((Rule!11644 0))(
  ( (Rule!11645 (regex!5922 Regex!10681) (tag!6744 String!44094) (isSeparator!5922 Bool) (transformation!5922 TokenValueInjection!11732)) )
))
(declare-datatypes ((Token!11198 0))(
  ( (Token!11199 (value!189231 TokenValue!6152) (rule!8770 Rule!11644) (size!29888 Int) (originalCharacters!6630 List!39265)) )
))
(declare-datatypes ((tuple2!39042 0))(
  ( (tuple2!39043 (_1!22655 Token!11198) (_2!22655 List!39265)) )
))
(declare-datatypes ((Option!8434 0))(
  ( (None!8433) (Some!8433 (v!38389 tuple2!39042)) )
))
(declare-fun lt!1292780 () Option!8434)

(declare-datatypes ((List!39267 0))(
  ( (Nil!39143) (Cons!39143 (h!44563 Rule!11644) (t!301464 List!39267)) )
))
(declare-fun rules!3598 () List!39267)

(declare-datatypes ((LexerInterface!5511 0))(
  ( (LexerInterfaceExt!5508 (__x!24522 Int)) (Lexer!5509) )
))
(declare-fun thiss!25322 () LexerInterface!5511)

(declare-fun maxPrefixOneRule!2147 (LexerInterface!5511 Rule!11644 List!39265) Option!8434)

(assert (=> b!3692934 (= lt!1292780 (maxPrefixOneRule!2147 thiss!25322 (h!44563 rules!3598) input!3172))))

(declare-fun b!3692935 () Bool)

(declare-fun e!2286779 () Bool)

(declare-fun tp_is_empty!18437 () Bool)

(declare-fun tp!1122290 () Bool)

(assert (=> b!3692935 (= e!2286779 (and tp_is_empty!18437 tp!1122290))))

(declare-fun b!3692936 () Bool)

(declare-fun res!1501351 () Bool)

(assert (=> b!3692936 (=> (not res!1501351) (not e!2286769))))

(declare-fun lt!1292779 () Option!8434)

(declare-fun token!544 () Token!11198)

(declare-fun get!12986 (Option!8434) tuple2!39042)

(assert (=> b!3692936 (= res!1501351 (= (_1!22655 (get!12986 lt!1292779)) token!544))))

(declare-fun b!3692937 () Bool)

(declare-fun e!2286771 () Bool)

(declare-fun e!2286770 () Bool)

(declare-fun tp!1122286 () Bool)

(assert (=> b!3692937 (= e!2286771 (and e!2286770 tp!1122286))))

(declare-fun res!1501353 () Bool)

(declare-fun e!2286777 () Bool)

(assert (=> start!347670 (=> (not res!1501353) (not e!2286777))))

(get-info :version)

(assert (=> start!347670 (= res!1501353 ((_ is Lexer!5509) thiss!25322))))

(assert (=> start!347670 e!2286777))

(assert (=> start!347670 true))

(assert (=> start!347670 e!2286771))

(declare-fun e!2286775 () Bool)

(declare-fun inv!52608 (Token!11198) Bool)

(assert (=> start!347670 (and (inv!52608 token!544) e!2286775)))

(assert (=> start!347670 e!2286779))

(declare-fun e!2286772 () Bool)

(assert (=> b!3692938 (= e!2286772 (and tp!1122288 tp!1122293))))

(declare-fun e!2286773 () Bool)

(assert (=> b!3692939 (= e!2286773 (and tp!1122287 tp!1122292))))

(declare-fun b!3692940 () Bool)

(declare-fun res!1501356 () Bool)

(assert (=> b!3692940 (=> (not res!1501356) (not e!2286777))))

(declare-fun rulesInvariant!4908 (LexerInterface!5511 List!39267) Bool)

(assert (=> b!3692940 (= res!1501356 (rulesInvariant!4908 thiss!25322 rules!3598))))

(declare-fun b!3692941 () Bool)

(declare-fun res!1501352 () Bool)

(assert (=> b!3692941 (=> (not res!1501352) (not e!2286777))))

(declare-fun isEmpty!23330 (List!39267) Bool)

(assert (=> b!3692941 (= res!1501352 (not (isEmpty!23330 rules!3598)))))

(declare-fun tp!1122294 () Bool)

(declare-fun e!2286774 () Bool)

(declare-fun b!3692942 () Bool)

(declare-fun inv!21 (TokenValue!6152) Bool)

(assert (=> b!3692942 (= e!2286775 (and (inv!21 (value!189231 token!544)) e!2286774 tp!1122294))))

(declare-fun b!3692943 () Bool)

(declare-fun tp!1122289 () Bool)

(declare-fun inv!52605 (String!44094) Bool)

(declare-fun inv!52609 (TokenValueInjection!11732) Bool)

(assert (=> b!3692943 (= e!2286774 (and tp!1122289 (inv!52605 (tag!6744 (rule!8770 token!544))) (inv!52609 (transformation!5922 (rule!8770 token!544))) e!2286773))))

(declare-fun b!3692944 () Bool)

(declare-fun tp!1122291 () Bool)

(assert (=> b!3692944 (= e!2286770 (and tp!1122291 (inv!52605 (tag!6744 (h!44563 rules!3598))) (inv!52609 (transformation!5922 (h!44563 rules!3598))) e!2286772))))

(declare-fun b!3692945 () Bool)

(assert (=> b!3692945 (= e!2286777 e!2286769)))

(declare-fun res!1501355 () Bool)

(assert (=> b!3692945 (=> (not res!1501355) (not e!2286769))))

(declare-fun isDefined!6627 (Option!8434) Bool)

(assert (=> b!3692945 (= res!1501355 (isDefined!6627 lt!1292779))))

(declare-fun maxPrefix!3033 (LexerInterface!5511 List!39267 List!39265) Option!8434)

(assert (=> b!3692945 (= lt!1292779 (maxPrefix!3033 thiss!25322 rules!3598 input!3172))))

(declare-fun b!3692946 () Bool)

(declare-fun res!1501354 () Bool)

(assert (=> b!3692946 (=> (not res!1501354) (not e!2286769))))

(assert (=> b!3692946 (= res!1501354 ((_ is Cons!39143) rules!3598))))

(assert (= (and start!347670 res!1501353) b!3692940))

(assert (= (and b!3692940 res!1501356) b!3692941))

(assert (= (and b!3692941 res!1501352) b!3692945))

(assert (= (and b!3692945 res!1501355) b!3692936))

(assert (= (and b!3692936 res!1501351) b!3692946))

(assert (= (and b!3692946 res!1501354) b!3692934))

(assert (= b!3692944 b!3692938))

(assert (= b!3692937 b!3692944))

(assert (= (and start!347670 ((_ is Cons!39143) rules!3598)) b!3692937))

(assert (= b!3692943 b!3692939))

(assert (= b!3692942 b!3692943))

(assert (= start!347670 b!3692942))

(assert (= (and start!347670 ((_ is Cons!39141) input!3172)) b!3692935))

(declare-fun m!4205157 () Bool)

(assert (=> b!3692934 m!4205157))

(declare-fun m!4205159 () Bool)

(assert (=> b!3692942 m!4205159))

(declare-fun m!4205161 () Bool)

(assert (=> b!3692945 m!4205161))

(declare-fun m!4205163 () Bool)

(assert (=> b!3692945 m!4205163))

(declare-fun m!4205165 () Bool)

(assert (=> start!347670 m!4205165))

(declare-fun m!4205167 () Bool)

(assert (=> b!3692936 m!4205167))

(declare-fun m!4205169 () Bool)

(assert (=> b!3692944 m!4205169))

(declare-fun m!4205171 () Bool)

(assert (=> b!3692944 m!4205171))

(declare-fun m!4205173 () Bool)

(assert (=> b!3692940 m!4205173))

(declare-fun m!4205175 () Bool)

(assert (=> b!3692941 m!4205175))

(declare-fun m!4205177 () Bool)

(assert (=> b!3692943 m!4205177))

(declare-fun m!4205179 () Bool)

(assert (=> b!3692943 m!4205179))

(check-sat (not b_next!98783) (not b!3692937) (not b_next!98777) (not b!3692935) (not b!3692940) (not b_next!98779) (not b!3692943) (not b_next!98781) b_and!275873 b_and!275877 tp_is_empty!18437 (not b!3692936) (not b!3692941) (not b!3692944) (not b!3692942) (not b!3692934) (not start!347670) b_and!275875 (not b!3692945) b_and!275871)
(check-sat (not b_next!98783) (not b_next!98777) (not b_next!98779) (not b_next!98781) b_and!275873 b_and!275877 b_and!275875 b_and!275871)
