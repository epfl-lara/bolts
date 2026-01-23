; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!271668 () Bool)

(assert start!271668)

(declare-fun b!2808251 () Bool)

(declare-fun b_free!80037 () Bool)

(declare-fun b_next!80741 () Bool)

(assert (=> b!2808251 (= b_free!80037 (not b_next!80741))))

(declare-fun tp!896317 () Bool)

(declare-fun b_and!205103 () Bool)

(assert (=> b!2808251 (= tp!896317 b_and!205103)))

(declare-fun b_free!80039 () Bool)

(declare-fun b_next!80743 () Bool)

(assert (=> b!2808251 (= b_free!80039 (not b_next!80743))))

(declare-fun tp!896324 () Bool)

(declare-fun b_and!205105 () Bool)

(assert (=> b!2808251 (= tp!896324 b_and!205105)))

(declare-fun b!2808245 () Bool)

(declare-fun b_free!80041 () Bool)

(declare-fun b_next!80745 () Bool)

(assert (=> b!2808245 (= b_free!80041 (not b_next!80745))))

(declare-fun tp!896321 () Bool)

(declare-fun b_and!205107 () Bool)

(assert (=> b!2808245 (= tp!896321 b_and!205107)))

(declare-fun b_free!80043 () Bool)

(declare-fun b_next!80747 () Bool)

(assert (=> b!2808245 (= b_free!80043 (not b_next!80747))))

(declare-fun tp!896316 () Bool)

(declare-fun b_and!205109 () Bool)

(assert (=> b!2808245 (= tp!896316 b_and!205109)))

(declare-fun e!1775636 () Bool)

(assert (=> b!2808245 (= e!1775636 (and tp!896321 tp!896316))))

(declare-fun e!1775640 () Bool)

(declare-fun tp!896320 () Bool)

(declare-fun b!2808246 () Bool)

(declare-datatypes ((List!32853 0))(
  ( (Nil!32753) (Cons!32753 (h!38173 (_ BitVec 16)) (t!229533 List!32853)) )
))
(declare-datatypes ((TokenValue!5121 0))(
  ( (FloatLiteralValue!10242 (text!36292 List!32853)) (TokenValueExt!5120 (__x!21899 Int)) (Broken!25605 (value!157505 List!32853)) (Object!5220) (End!5121) (Def!5121) (Underscore!5121) (Match!5121) (Else!5121) (Error!5121) (Case!5121) (If!5121) (Extends!5121) (Abstract!5121) (Class!5121) (Val!5121) (DelimiterValue!10242 (del!5181 List!32853)) (KeywordValue!5127 (value!157506 List!32853)) (CommentValue!10242 (value!157507 List!32853)) (WhitespaceValue!10242 (value!157508 List!32853)) (IndentationValue!5121 (value!157509 List!32853)) (String!35940) (Int32!5121) (Broken!25606 (value!157510 List!32853)) (Boolean!5122) (Unit!46795) (OperatorValue!5124 (op!5181 List!32853)) (IdentifierValue!10242 (value!157511 List!32853)) (IdentifierValue!10243 (value!157512 List!32853)) (WhitespaceValue!10243 (value!157513 List!32853)) (True!10242) (False!10242) (Broken!25607 (value!157514 List!32853)) (Broken!25608 (value!157515 List!32853)) (True!10243) (RightBrace!5121) (RightBracket!5121) (Colon!5121) (Null!5121) (Comma!5121) (LeftBracket!5121) (False!10243) (LeftBrace!5121) (ImaginaryLiteralValue!5121 (text!36293 List!32853)) (StringLiteralValue!15363 (value!157516 List!32853)) (EOFValue!5121 (value!157517 List!32853)) (IdentValue!5121 (value!157518 List!32853)) (DelimiterValue!10243 (value!157519 List!32853)) (DedentValue!5121 (value!157520 List!32853)) (NewLineValue!5121 (value!157521 List!32853)) (IntegerValue!15363 (value!157522 (_ BitVec 32)) (text!36294 List!32853)) (IntegerValue!15364 (value!157523 Int) (text!36295 List!32853)) (Times!5121) (Or!5121) (Equal!5121) (Minus!5121) (Broken!25609 (value!157524 List!32853)) (And!5121) (Div!5121) (LessEqual!5121) (Mod!5121) (Concat!13390) (Not!5121) (Plus!5121) (SpaceValue!5121 (value!157525 List!32853)) (IntegerValue!15365 (value!157526 Int) (text!36296 List!32853)) (StringLiteralValue!15364 (text!36297 List!32853)) (FloatLiteralValue!10243 (text!36298 List!32853)) (BytesLiteralValue!5121 (value!157527 List!32853)) (CommentValue!10243 (value!157528 List!32853)) (StringLiteralValue!15365 (value!157529 List!32853)) (ErrorTokenValue!5121 (msg!5182 List!32853)) )
))
(declare-datatypes ((C!16696 0))(
  ( (C!16697 (val!10282 Int)) )
))
(declare-datatypes ((List!32854 0))(
  ( (Nil!32754) (Cons!32754 (h!38174 C!16696) (t!229534 List!32854)) )
))
(declare-datatypes ((IArray!20281 0))(
  ( (IArray!20282 (innerList!10198 List!32854)) )
))
(declare-datatypes ((Conc!10138 0))(
  ( (Node!10138 (left!24722 Conc!10138) (right!25052 Conc!10138) (csize!20506 Int) (cheight!10349 Int)) (Leaf!15441 (xs!13250 IArray!20281) (csize!20507 Int)) (Empty!10138) )
))
(declare-datatypes ((BalanceConc!19890 0))(
  ( (BalanceConc!19891 (c!454888 Conc!10138)) )
))
(declare-datatypes ((TokenValueInjection!9682 0))(
  ( (TokenValueInjection!9683 (toValue!6901 Int) (toChars!6760 Int)) )
))
(declare-datatypes ((Regex!8269 0))(
  ( (ElementMatch!8269 (c!454889 C!16696)) (Concat!13391 (regOne!17050 Regex!8269) (regTwo!17050 Regex!8269)) (EmptyExpr!8269) (Star!8269 (reg!8598 Regex!8269)) (EmptyLang!8269) (Union!8269 (regOne!17051 Regex!8269) (regTwo!17051 Regex!8269)) )
))
(declare-datatypes ((String!35941 0))(
  ( (String!35942 (value!157530 String)) )
))
(declare-datatypes ((Rule!9598 0))(
  ( (Rule!9599 (regex!4899 Regex!8269) (tag!5403 String!35941) (isSeparator!4899 Bool) (transformation!4899 TokenValueInjection!9682)) )
))
(declare-datatypes ((Token!9200 0))(
  ( (Token!9201 (value!157531 TokenValue!5121) (rule!7327 Rule!9598) (size!25542 Int) (originalCharacters!5631 List!32854)) )
))
(declare-fun separatorToken!99 () Token!9200)

(declare-fun inv!44437 (String!35941) Bool)

(declare-fun inv!44440 (TokenValueInjection!9682) Bool)

(assert (=> b!2808246 (= e!1775640 (and tp!896320 (inv!44437 (tag!5403 (rule!7327 separatorToken!99))) (inv!44440 (transformation!4899 (rule!7327 separatorToken!99))) e!1775636))))

(declare-datatypes ((List!32855 0))(
  ( (Nil!32755) (Cons!32755 (h!38175 Token!9200) (t!229535 List!32855)) )
))
(declare-fun l!4240 () List!32855)

(declare-fun b!2808247 () Bool)

(declare-fun e!1775643 () Bool)

(declare-fun e!1775648 () Bool)

(declare-fun tp!896319 () Bool)

(declare-fun inv!44441 (Token!9200) Bool)

(assert (=> b!2808247 (= e!1775643 (and (inv!44441 (h!38175 l!4240)) e!1775648 tp!896319))))

(declare-fun e!1775644 () Bool)

(declare-fun tp!896323 () Bool)

(declare-fun e!1775641 () Bool)

(declare-fun b!2808248 () Bool)

(assert (=> b!2808248 (= e!1775641 (and tp!896323 (inv!44437 (tag!5403 (rule!7327 (h!38175 l!4240)))) (inv!44440 (transformation!4899 (rule!7327 (h!38175 l!4240)))) e!1775644))))

(declare-fun tp!896322 () Bool)

(declare-fun b!2808249 () Bool)

(declare-fun inv!21 (TokenValue!5121) Bool)

(assert (=> b!2808249 (= e!1775648 (and (inv!21 (value!157531 (h!38175 l!4240))) e!1775641 tp!896322))))

(declare-fun b!2808250 () Bool)

(declare-fun e!1775646 () Bool)

(assert (=> b!2808250 (= e!1775646 (not true))))

(declare-fun e!1775638 () Bool)

(assert (=> b!2808250 e!1775638))

(declare-fun c!454887 () Bool)

(declare-fun lt!1003462 () List!32855)

(get-info :version)

(assert (=> b!2808250 (= c!454887 ((_ is Cons!32755) lt!1003462))))

(declare-fun lt!1003461 () List!32854)

(declare-datatypes ((LexerInterface!4490 0))(
  ( (LexerInterfaceExt!4487 (__x!21900 Int)) (Lexer!4488) )
))
(declare-fun thiss!13843 () LexerInterface!4490)

(declare-fun printList!1202 (LexerInterface!4490 List!32855) List!32854)

(assert (=> b!2808250 (= lt!1003461 (printList!1202 thiss!13843 lt!1003462))))

(declare-fun $colon$colon!550 (List!32855 Token!9200) List!32855)

(declare-fun withSeparatorTokenList!138 (LexerInterface!4490 List!32855 Token!9200) List!32855)

(assert (=> b!2808250 (= lt!1003462 ($colon$colon!550 ($colon$colon!550 (withSeparatorTokenList!138 thiss!13843 (t!229535 l!4240) separatorToken!99) separatorToken!99) (h!38175 l!4240)))))

(assert (=> b!2808251 (= e!1775644 (and tp!896317 tp!896324))))

(declare-fun b!2808252 () Bool)

(assert (=> b!2808252 (= e!1775638 (= lt!1003461 Nil!32754))))

(declare-fun b!2808253 () Bool)

(declare-fun ++!8043 (List!32854 List!32854) List!32854)

(declare-fun list!12263 (BalanceConc!19890) List!32854)

(declare-fun charsOf!3042 (Token!9200) BalanceConc!19890)

(assert (=> b!2808253 (= e!1775638 (= lt!1003461 (++!8043 (list!12263 (charsOf!3042 (h!38175 lt!1003462))) (printList!1202 thiss!13843 (t!229535 lt!1003462)))))))

(declare-fun res!1169703 () Bool)

(assert (=> start!271668 (=> (not res!1169703) (not e!1775646))))

(assert (=> start!271668 (= res!1169703 (and ((_ is Lexer!4488) thiss!13843) (isSeparator!4899 (rule!7327 separatorToken!99)) ((_ is Cons!32755) l!4240)))))

(assert (=> start!271668 e!1775646))

(assert (=> start!271668 true))

(declare-fun e!1775637 () Bool)

(assert (=> start!271668 (and (inv!44441 separatorToken!99) e!1775637)))

(assert (=> start!271668 e!1775643))

(declare-fun b!2808254 () Bool)

(declare-fun tp!896318 () Bool)

(assert (=> b!2808254 (= e!1775637 (and (inv!21 (value!157531 separatorToken!99)) e!1775640 tp!896318))))

(assert (= (and start!271668 res!1169703) b!2808250))

(assert (= (and b!2808250 c!454887) b!2808253))

(assert (= (and b!2808250 (not c!454887)) b!2808252))

(assert (= b!2808246 b!2808245))

(assert (= b!2808254 b!2808246))

(assert (= start!271668 b!2808254))

(assert (= b!2808248 b!2808251))

(assert (= b!2808249 b!2808248))

(assert (= b!2808247 b!2808249))

(assert (= (and start!271668 ((_ is Cons!32755) l!4240)) b!2808247))

(declare-fun m!3237741 () Bool)

(assert (=> b!2808247 m!3237741))

(declare-fun m!3237743 () Bool)

(assert (=> b!2808246 m!3237743))

(declare-fun m!3237745 () Bool)

(assert (=> b!2808246 m!3237745))

(declare-fun m!3237747 () Bool)

(assert (=> b!2808248 m!3237747))

(declare-fun m!3237749 () Bool)

(assert (=> b!2808248 m!3237749))

(declare-fun m!3237751 () Bool)

(assert (=> b!2808250 m!3237751))

(declare-fun m!3237753 () Bool)

(assert (=> b!2808250 m!3237753))

(assert (=> b!2808250 m!3237753))

(declare-fun m!3237755 () Bool)

(assert (=> b!2808250 m!3237755))

(assert (=> b!2808250 m!3237755))

(declare-fun m!3237757 () Bool)

(assert (=> b!2808250 m!3237757))

(declare-fun m!3237759 () Bool)

(assert (=> b!2808253 m!3237759))

(assert (=> b!2808253 m!3237759))

(declare-fun m!3237761 () Bool)

(assert (=> b!2808253 m!3237761))

(declare-fun m!3237763 () Bool)

(assert (=> b!2808253 m!3237763))

(assert (=> b!2808253 m!3237761))

(assert (=> b!2808253 m!3237763))

(declare-fun m!3237765 () Bool)

(assert (=> b!2808253 m!3237765))

(declare-fun m!3237767 () Bool)

(assert (=> b!2808249 m!3237767))

(declare-fun m!3237769 () Bool)

(assert (=> start!271668 m!3237769))

(declare-fun m!3237771 () Bool)

(assert (=> b!2808254 m!3237771))

(check-sat b_and!205109 (not b_next!80747) (not b_next!80745) (not b!2808250) (not b!2808247) b_and!205103 (not b!2808254) (not start!271668) (not b!2808253) (not b_next!80743) b_and!205107 (not b!2808248) (not b!2808249) (not b!2808246) (not b_next!80741) b_and!205105)
(check-sat b_and!205109 (not b_next!80747) (not b_next!80745) b_and!205103 (not b_next!80743) b_and!205107 (not b_next!80741) b_and!205105)
