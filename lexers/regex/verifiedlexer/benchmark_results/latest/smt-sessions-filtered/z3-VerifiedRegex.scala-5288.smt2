; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!271256 () Bool)

(assert start!271256)

(declare-fun b!2804330 () Bool)

(declare-fun b_free!79609 () Bool)

(declare-fun b_next!80313 () Bool)

(assert (=> b!2804330 (= b_free!79609 (not b_next!80313))))

(declare-fun tp!894321 () Bool)

(declare-fun b_and!204371 () Bool)

(assert (=> b!2804330 (= tp!894321 b_and!204371)))

(declare-fun b_free!79611 () Bool)

(declare-fun b_next!80315 () Bool)

(assert (=> b!2804330 (= b_free!79611 (not b_next!80315))))

(declare-fun tp!894323 () Bool)

(declare-fun b_and!204373 () Bool)

(assert (=> b!2804330 (= tp!894323 b_and!204373)))

(declare-fun b!2804323 () Bool)

(declare-fun b_free!79613 () Bool)

(declare-fun b_next!80317 () Bool)

(assert (=> b!2804323 (= b_free!79613 (not b_next!80317))))

(declare-fun tp!894331 () Bool)

(declare-fun b_and!204375 () Bool)

(assert (=> b!2804323 (= tp!894331 b_and!204375)))

(declare-fun b_free!79615 () Bool)

(declare-fun b_next!80319 () Bool)

(assert (=> b!2804323 (= b_free!79615 (not b_next!80319))))

(declare-fun tp!894325 () Bool)

(declare-fun b_and!204377 () Bool)

(assert (=> b!2804323 (= tp!894325 b_and!204377)))

(declare-fun b!2804324 () Bool)

(declare-fun b_free!79617 () Bool)

(declare-fun b_next!80321 () Bool)

(assert (=> b!2804324 (= b_free!79617 (not b_next!80321))))

(declare-fun tp!894329 () Bool)

(declare-fun b_and!204379 () Bool)

(assert (=> b!2804324 (= tp!894329 b_and!204379)))

(declare-fun b_free!79619 () Bool)

(declare-fun b_next!80323 () Bool)

(assert (=> b!2804324 (= b_free!79619 (not b_next!80323))))

(declare-fun tp!894324 () Bool)

(declare-fun b_and!204381 () Bool)

(assert (=> b!2804324 (= tp!894324 b_and!204381)))

(declare-fun b!2804344 () Bool)

(declare-fun e!1772530 () Bool)

(assert (=> b!2804344 (= e!1772530 true)))

(declare-fun b!2804343 () Bool)

(declare-fun e!1772529 () Bool)

(assert (=> b!2804343 (= e!1772529 e!1772530)))

(declare-fun b!2804342 () Bool)

(declare-fun e!1772528 () Bool)

(assert (=> b!2804342 (= e!1772528 e!1772529)))

(declare-fun b!2804318 () Bool)

(assert (=> b!2804318 e!1772528))

(assert (= b!2804343 b!2804344))

(assert (= b!2804342 b!2804343))

(declare-datatypes ((List!32734 0))(
  ( (Nil!32634) (Cons!32634 (h!38054 (_ BitVec 16)) (t!228958 List!32734)) )
))
(declare-datatypes ((TokenValue!5093 0))(
  ( (FloatLiteralValue!10186 (text!36096 List!32734)) (TokenValueExt!5092 (__x!21843 Int)) (Broken!25465 (value!156707 List!32734)) (Object!5192) (End!5093) (Def!5093) (Underscore!5093) (Match!5093) (Else!5093) (Error!5093) (Case!5093) (If!5093) (Extends!5093) (Abstract!5093) (Class!5093) (Val!5093) (DelimiterValue!10186 (del!5153 List!32734)) (KeywordValue!5099 (value!156708 List!32734)) (CommentValue!10186 (value!156709 List!32734)) (WhitespaceValue!10186 (value!156710 List!32734)) (IndentationValue!5093 (value!156711 List!32734)) (String!35800) (Int32!5093) (Broken!25466 (value!156712 List!32734)) (Boolean!5094) (Unit!46733) (OperatorValue!5096 (op!5153 List!32734)) (IdentifierValue!10186 (value!156713 List!32734)) (IdentifierValue!10187 (value!156714 List!32734)) (WhitespaceValue!10187 (value!156715 List!32734)) (True!10186) (False!10186) (Broken!25467 (value!156716 List!32734)) (Broken!25468 (value!156717 List!32734)) (True!10187) (RightBrace!5093) (RightBracket!5093) (Colon!5093) (Null!5093) (Comma!5093) (LeftBracket!5093) (False!10187) (LeftBrace!5093) (ImaginaryLiteralValue!5093 (text!36097 List!32734)) (StringLiteralValue!15279 (value!156718 List!32734)) (EOFValue!5093 (value!156719 List!32734)) (IdentValue!5093 (value!156720 List!32734)) (DelimiterValue!10187 (value!156721 List!32734)) (DedentValue!5093 (value!156722 List!32734)) (NewLineValue!5093 (value!156723 List!32734)) (IntegerValue!15279 (value!156724 (_ BitVec 32)) (text!36098 List!32734)) (IntegerValue!15280 (value!156725 Int) (text!36099 List!32734)) (Times!5093) (Or!5093) (Equal!5093) (Minus!5093) (Broken!25469 (value!156726 List!32734)) (And!5093) (Div!5093) (LessEqual!5093) (Mod!5093) (Concat!13334) (Not!5093) (Plus!5093) (SpaceValue!5093 (value!156727 List!32734)) (IntegerValue!15281 (value!156728 Int) (text!36100 List!32734)) (StringLiteralValue!15280 (text!36101 List!32734)) (FloatLiteralValue!10187 (text!36102 List!32734)) (BytesLiteralValue!5093 (value!156729 List!32734)) (CommentValue!10187 (value!156730 List!32734)) (StringLiteralValue!15281 (value!156731 List!32734)) (ErrorTokenValue!5093 (msg!5154 List!32734)) )
))
(declare-datatypes ((C!16640 0))(
  ( (C!16641 (val!10254 Int)) )
))
(declare-datatypes ((List!32735 0))(
  ( (Nil!32635) (Cons!32635 (h!38055 C!16640) (t!228959 List!32735)) )
))
(declare-datatypes ((IArray!20205 0))(
  ( (IArray!20206 (innerList!10160 List!32735)) )
))
(declare-datatypes ((Conc!10100 0))(
  ( (Node!10100 (left!24630 Conc!10100) (right!24960 Conc!10100) (csize!20430 Int) (cheight!10311 Int)) (Leaf!15389 (xs!13212 IArray!20205) (csize!20431 Int)) (Empty!10100) )
))
(declare-datatypes ((BalanceConc!19814 0))(
  ( (BalanceConc!19815 (c!454558 Conc!10100)) )
))
(declare-datatypes ((TokenValueInjection!9626 0))(
  ( (TokenValueInjection!9627 (toValue!6869 Int) (toChars!6728 Int)) )
))
(declare-datatypes ((String!35801 0))(
  ( (String!35802 (value!156732 String)) )
))
(declare-datatypes ((Regex!8241 0))(
  ( (ElementMatch!8241 (c!454559 C!16640)) (Concat!13335 (regOne!16994 Regex!8241) (regTwo!16994 Regex!8241)) (EmptyExpr!8241) (Star!8241 (reg!8570 Regex!8241)) (EmptyLang!8241) (Union!8241 (regOne!16995 Regex!8241) (regTwo!16995 Regex!8241)) )
))
(declare-datatypes ((Rule!9542 0))(
  ( (Rule!9543 (regex!4871 Regex!8241) (tag!5375 String!35801) (isSeparator!4871 Bool) (transformation!4871 TokenValueInjection!9626)) )
))
(declare-datatypes ((List!32736 0))(
  ( (Nil!32636) (Cons!32636 (h!38056 Rule!9542) (t!228960 List!32736)) )
))
(declare-fun rules!2540 () List!32736)

(get-info :version)

(assert (= (and b!2804318 ((_ is Cons!32636) rules!2540)) b!2804342))

(declare-fun order!17271 () Int)

(declare-fun order!17273 () Int)

(declare-fun lambda!103027 () Int)

(declare-fun dynLambda!13640 (Int Int) Int)

(declare-fun dynLambda!13641 (Int Int) Int)

(assert (=> b!2804344 (< (dynLambda!13640 order!17271 (toValue!6869 (transformation!4871 (h!38056 rules!2540)))) (dynLambda!13641 order!17273 lambda!103027))))

(declare-fun order!17275 () Int)

(declare-fun dynLambda!13642 (Int Int) Int)

(assert (=> b!2804344 (< (dynLambda!13642 order!17275 (toChars!6728 (transformation!4871 (h!38056 rules!2540)))) (dynLambda!13641 order!17273 lambda!103027))))

(assert (=> b!2804318 true))

(declare-fun b!2804317 () Bool)

(declare-fun e!1772513 () Bool)

(declare-fun e!1772506 () Bool)

(declare-fun tp!894320 () Bool)

(assert (=> b!2804317 (= e!1772513 (and e!1772506 tp!894320))))

(declare-fun e!1772507 () Bool)

(assert (=> b!2804318 (= e!1772507 false)))

(declare-datatypes ((Unit!46734 0))(
  ( (Unit!46735) )
))
(declare-fun lt!1002856 () Unit!46734)

(declare-datatypes ((Token!9144 0))(
  ( (Token!9145 (value!156733 TokenValue!5093) (rule!7299 Rule!9542) (size!25487 Int) (originalCharacters!5603 List!32735)) )
))
(declare-datatypes ((List!32737 0))(
  ( (Nil!32637) (Cons!32637 (h!38057 Token!9144) (t!228961 List!32737)) )
))
(declare-fun l!5055 () List!32737)

(declare-fun forallContained!1053 (List!32737 Int Token!9144) Unit!46734)

(assert (=> b!2804318 (= lt!1002856 (forallContained!1053 l!5055 lambda!103027 (h!38057 l!5055)))))

(declare-fun b!2804319 () Bool)

(declare-fun res!1168372 () Bool)

(assert (=> b!2804319 (=> (not res!1168372) (not e!1772507))))

(declare-fun separatorToken!283 () Token!9144)

(declare-datatypes ((LexerInterface!4462 0))(
  ( (LexerInterfaceExt!4459 (__x!21844 Int)) (Lexer!4460) )
))
(declare-fun thiss!19710 () LexerInterface!4462)

(declare-fun rulesProduceIndividualToken!2026 (LexerInterface!4462 List!32736 Token!9144) Bool)

(assert (=> b!2804319 (= res!1168372 (rulesProduceIndividualToken!2026 thiss!19710 rules!2540 separatorToken!283))))

(declare-fun e!1772515 () Bool)

(declare-fun b!2804320 () Bool)

(declare-fun e!1772512 () Bool)

(declare-fun tp!894322 () Bool)

(declare-fun inv!44311 (String!35801) Bool)

(declare-fun inv!44314 (TokenValueInjection!9626) Bool)

(assert (=> b!2804320 (= e!1772512 (and tp!894322 (inv!44311 (tag!5375 (rule!7299 (h!38057 l!5055)))) (inv!44314 (transformation!4871 (rule!7299 (h!38057 l!5055)))) e!1772515))))

(declare-fun tp!894330 () Bool)

(declare-fun b!2804321 () Bool)

(declare-fun e!1772511 () Bool)

(assert (=> b!2804321 (= e!1772506 (and tp!894330 (inv!44311 (tag!5375 (h!38056 rules!2540))) (inv!44314 (transformation!4871 (h!38056 rules!2540))) e!1772511))))

(declare-fun b!2804322 () Bool)

(declare-fun res!1168374 () Bool)

(assert (=> b!2804322 (=> (not res!1168374) (not e!1772507))))

(declare-fun rulesProduceEachTokenIndividuallyList!1536 (LexerInterface!4462 List!32736 List!32737) Bool)

(assert (=> b!2804322 (= res!1168374 (rulesProduceEachTokenIndividuallyList!1536 thiss!19710 rules!2540 l!5055))))

(assert (=> b!2804323 (= e!1772511 (and tp!894331 tp!894325))))

(declare-fun e!1772510 () Bool)

(assert (=> b!2804324 (= e!1772510 (and tp!894329 tp!894324))))

(declare-fun b!2804325 () Bool)

(declare-fun res!1168371 () Bool)

(assert (=> b!2804325 (=> (not res!1168371) (not e!1772507))))

(declare-fun contains!6027 (List!32737 Token!9144) Bool)

(assert (=> b!2804325 (= res!1168371 (contains!6027 l!5055 (h!38057 l!5055)))))

(declare-fun b!2804326 () Bool)

(declare-fun res!1168369 () Bool)

(assert (=> b!2804326 (=> (not res!1168369) (not e!1772507))))

(declare-fun rulesInvariant!3902 (LexerInterface!4462 List!32736) Bool)

(assert (=> b!2804326 (= res!1168369 (rulesInvariant!3902 thiss!19710 rules!2540))))

(declare-fun b!2804327 () Bool)

(declare-fun e!1772517 () Bool)

(declare-fun tp!894328 () Bool)

(declare-fun inv!21 (TokenValue!5093) Bool)

(assert (=> b!2804327 (= e!1772517 (and (inv!21 (value!156733 (h!38057 l!5055))) e!1772512 tp!894328))))

(declare-fun res!1168373 () Bool)

(assert (=> start!271256 (=> (not res!1168373) (not e!1772507))))

(assert (=> start!271256 (= res!1168373 ((_ is Lexer!4460) thiss!19710))))

(assert (=> start!271256 e!1772507))

(assert (=> start!271256 true))

(assert (=> start!271256 e!1772513))

(declare-fun e!1772508 () Bool)

(assert (=> start!271256 e!1772508))

(declare-fun e!1772518 () Bool)

(declare-fun inv!44315 (Token!9144) Bool)

(assert (=> start!271256 (and (inv!44315 separatorToken!283) e!1772518)))

(declare-fun tp!894327 () Bool)

(declare-fun b!2804328 () Bool)

(assert (=> b!2804328 (= e!1772508 (and (inv!44315 (h!38057 l!5055)) e!1772517 tp!894327))))

(declare-fun b!2804329 () Bool)

(declare-fun tp!894326 () Bool)

(declare-fun e!1772509 () Bool)

(assert (=> b!2804329 (= e!1772509 (and tp!894326 (inv!44311 (tag!5375 (rule!7299 separatorToken!283))) (inv!44314 (transformation!4871 (rule!7299 separatorToken!283))) e!1772510))))

(assert (=> b!2804330 (= e!1772515 (and tp!894321 tp!894323))))

(declare-fun b!2804331 () Bool)

(declare-fun res!1168368 () Bool)

(assert (=> b!2804331 (=> (not res!1168368) (not e!1772507))))

(assert (=> b!2804331 (= res!1168368 (and (isSeparator!4871 (rule!7299 separatorToken!283)) ((_ is Cons!32637) l!5055)))))

(declare-fun tp!894332 () Bool)

(declare-fun b!2804332 () Bool)

(assert (=> b!2804332 (= e!1772518 (and (inv!21 (value!156733 separatorToken!283)) e!1772509 tp!894332))))

(declare-fun b!2804333 () Bool)

(declare-fun res!1168370 () Bool)

(assert (=> b!2804333 (=> (not res!1168370) (not e!1772507))))

(declare-fun isEmpty!18153 (List!32736) Bool)

(assert (=> b!2804333 (= res!1168370 (not (isEmpty!18153 rules!2540)))))

(assert (= (and start!271256 res!1168373) b!2804333))

(assert (= (and b!2804333 res!1168370) b!2804326))

(assert (= (and b!2804326 res!1168369) b!2804322))

(assert (= (and b!2804322 res!1168374) b!2804319))

(assert (= (and b!2804319 res!1168372) b!2804331))

(assert (= (and b!2804331 res!1168368) b!2804325))

(assert (= (and b!2804325 res!1168371) b!2804318))

(assert (= b!2804321 b!2804323))

(assert (= b!2804317 b!2804321))

(assert (= (and start!271256 ((_ is Cons!32636) rules!2540)) b!2804317))

(assert (= b!2804320 b!2804330))

(assert (= b!2804327 b!2804320))

(assert (= b!2804328 b!2804327))

(assert (= (and start!271256 ((_ is Cons!32637) l!5055)) b!2804328))

(assert (= b!2804329 b!2804324))

(assert (= b!2804332 b!2804329))

(assert (= start!271256 b!2804332))

(declare-fun m!3233881 () Bool)

(assert (=> b!2804318 m!3233881))

(declare-fun m!3233883 () Bool)

(assert (=> b!2804326 m!3233883))

(declare-fun m!3233885 () Bool)

(assert (=> start!271256 m!3233885))

(declare-fun m!3233887 () Bool)

(assert (=> b!2804329 m!3233887))

(declare-fun m!3233889 () Bool)

(assert (=> b!2804329 m!3233889))

(declare-fun m!3233891 () Bool)

(assert (=> b!2804320 m!3233891))

(declare-fun m!3233893 () Bool)

(assert (=> b!2804320 m!3233893))

(declare-fun m!3233895 () Bool)

(assert (=> b!2804333 m!3233895))

(declare-fun m!3233897 () Bool)

(assert (=> b!2804319 m!3233897))

(declare-fun m!3233899 () Bool)

(assert (=> b!2804328 m!3233899))

(declare-fun m!3233901 () Bool)

(assert (=> b!2804332 m!3233901))

(declare-fun m!3233903 () Bool)

(assert (=> b!2804325 m!3233903))

(declare-fun m!3233905 () Bool)

(assert (=> b!2804327 m!3233905))

(declare-fun m!3233907 () Bool)

(assert (=> b!2804321 m!3233907))

(declare-fun m!3233909 () Bool)

(assert (=> b!2804321 m!3233909))

(declare-fun m!3233911 () Bool)

(assert (=> b!2804322 m!3233911))

(check-sat b_and!204379 (not b!2804321) (not b!2804319) (not start!271256) (not b!2804342) (not b_next!80321) (not b_next!80323) (not b!2804328) b_and!204371 (not b!2804322) (not b!2804327) (not b!2804318) b_and!204377 (not b!2804320) (not b_next!80319) (not b_next!80313) (not b!2804325) b_and!204373 (not b_next!80315) b_and!204381 b_and!204375 (not b!2804329) (not b!2804317) (not b!2804326) (not b!2804332) (not b!2804333) (not b_next!80317))
(check-sat b_and!204379 b_and!204377 (not b_next!80319) (not b_next!80313) (not b_next!80321) (not b_next!80323) b_and!204371 (not b_next!80317) b_and!204373 (not b_next!80315) b_and!204381 b_and!204375)
