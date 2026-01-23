; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!401286 () Bool)

(assert start!401286)

(declare-fun b!4200627 () Bool)

(declare-fun b_free!122567 () Bool)

(declare-fun b_next!123271 () Bool)

(assert (=> b!4200627 (= b_free!122567 (not b_next!123271))))

(declare-fun tp!1283427 () Bool)

(declare-fun b_and!329621 () Bool)

(assert (=> b!4200627 (= tp!1283427 b_and!329621)))

(declare-fun b_free!122569 () Bool)

(declare-fun b_next!123273 () Bool)

(assert (=> b!4200627 (= b_free!122569 (not b_next!123273))))

(declare-fun tp!1283428 () Bool)

(declare-fun b_and!329623 () Bool)

(assert (=> b!4200627 (= tp!1283428 b_and!329623)))

(declare-fun b!4200625 () Bool)

(declare-fun b_free!122571 () Bool)

(declare-fun b_next!123275 () Bool)

(assert (=> b!4200625 (= b_free!122571 (not b_next!123275))))

(declare-fun tp!1283426 () Bool)

(declare-fun b_and!329625 () Bool)

(assert (=> b!4200625 (= tp!1283426 b_and!329625)))

(declare-fun b_free!122573 () Bool)

(declare-fun b_next!123277 () Bool)

(assert (=> b!4200625 (= b_free!122573 (not b_next!123277))))

(declare-fun tp!1283431 () Bool)

(declare-fun b_and!329627 () Bool)

(assert (=> b!4200625 (= tp!1283431 b_and!329627)))

(declare-fun b!4200633 () Bool)

(declare-fun b_free!122575 () Bool)

(declare-fun b_next!123279 () Bool)

(assert (=> b!4200633 (= b_free!122575 (not b_next!123279))))

(declare-fun tp!1283424 () Bool)

(declare-fun b_and!329629 () Bool)

(assert (=> b!4200633 (= tp!1283424 b_and!329629)))

(declare-fun b_free!122577 () Bool)

(declare-fun b_next!123281 () Bool)

(assert (=> b!4200633 (= b_free!122577 (not b_next!123281))))

(declare-fun tp!1283425 () Bool)

(declare-fun b_and!329631 () Bool)

(assert (=> b!4200633 (= tp!1283425 b_and!329631)))

(declare-fun b!4200618 () Bool)

(declare-fun res!1725085 () Bool)

(declare-fun e!2607567 () Bool)

(assert (=> b!4200618 (=> (not res!1725085) (not e!2607567))))

(declare-datatypes ((C!25428 0))(
  ( (C!25429 (val!14876 Int)) )
))
(declare-datatypes ((List!46293 0))(
  ( (Nil!46169) (Cons!46169 (h!51589 C!25428) (t!346798 List!46293)) )
))
(declare-fun pBis!121 () List!46293)

(declare-fun input!3517 () List!46293)

(declare-fun isPrefix!4571 (List!46293 List!46293) Bool)

(assert (=> b!4200618 (= res!1725085 (isPrefix!4571 pBis!121 input!3517))))

(declare-fun b!4200619 () Bool)

(declare-fun res!1725086 () Bool)

(assert (=> b!4200619 (=> (not res!1725086) (not e!2607567))))

(declare-datatypes ((LexerInterface!7307 0))(
  ( (LexerInterfaceExt!7304 (__x!28107 Int)) (Lexer!7305) )
))
(declare-fun thiss!26544 () LexerInterface!7307)

(declare-datatypes ((List!46294 0))(
  ( (Nil!46170) (Cons!46170 (h!51590 (_ BitVec 16)) (t!346799 List!46294)) )
))
(declare-datatypes ((TokenValue!7942 0))(
  ( (FloatLiteralValue!15884 (text!56039 List!46294)) (TokenValueExt!7941 (__x!28108 Int)) (Broken!39710 (value!240295 List!46294)) (Object!8065) (End!7942) (Def!7942) (Underscore!7942) (Match!7942) (Else!7942) (Error!7942) (Case!7942) (If!7942) (Extends!7942) (Abstract!7942) (Class!7942) (Val!7942) (DelimiterValue!15884 (del!8002 List!46294)) (KeywordValue!7948 (value!240296 List!46294)) (CommentValue!15884 (value!240297 List!46294)) (WhitespaceValue!15884 (value!240298 List!46294)) (IndentationValue!7942 (value!240299 List!46294)) (String!53579) (Int32!7942) (Broken!39711 (value!240300 List!46294)) (Boolean!7943) (Unit!65258) (OperatorValue!7945 (op!8002 List!46294)) (IdentifierValue!15884 (value!240301 List!46294)) (IdentifierValue!15885 (value!240302 List!46294)) (WhitespaceValue!15885 (value!240303 List!46294)) (True!15884) (False!15884) (Broken!39712 (value!240304 List!46294)) (Broken!39713 (value!240305 List!46294)) (True!15885) (RightBrace!7942) (RightBracket!7942) (Colon!7942) (Null!7942) (Comma!7942) (LeftBracket!7942) (False!15885) (LeftBrace!7942) (ImaginaryLiteralValue!7942 (text!56040 List!46294)) (StringLiteralValue!23826 (value!240306 List!46294)) (EOFValue!7942 (value!240307 List!46294)) (IdentValue!7942 (value!240308 List!46294)) (DelimiterValue!15885 (value!240309 List!46294)) (DedentValue!7942 (value!240310 List!46294)) (NewLineValue!7942 (value!240311 List!46294)) (IntegerValue!23826 (value!240312 (_ BitVec 32)) (text!56041 List!46294)) (IntegerValue!23827 (value!240313 Int) (text!56042 List!46294)) (Times!7942) (Or!7942) (Equal!7942) (Minus!7942) (Broken!39714 (value!240314 List!46294)) (And!7942) (Div!7942) (LessEqual!7942) (Mod!7942) (Concat!20559) (Not!7942) (Plus!7942) (SpaceValue!7942 (value!240315 List!46294)) (IntegerValue!23828 (value!240316 Int) (text!56043 List!46294)) (StringLiteralValue!23827 (text!56044 List!46294)) (FloatLiteralValue!15885 (text!56045 List!46294)) (BytesLiteralValue!7942 (value!240317 List!46294)) (CommentValue!15885 (value!240318 List!46294)) (StringLiteralValue!23828 (value!240319 List!46294)) (ErrorTokenValue!7942 (msg!8003 List!46294)) )
))
(declare-datatypes ((IArray!27851 0))(
  ( (IArray!27852 (innerList!13983 List!46293)) )
))
(declare-datatypes ((Regex!12617 0))(
  ( (ElementMatch!12617 (c!716216 C!25428)) (Concat!20560 (regOne!25746 Regex!12617) (regTwo!25746 Regex!12617)) (EmptyExpr!12617) (Star!12617 (reg!12946 Regex!12617)) (EmptyLang!12617) (Union!12617 (regOne!25747 Regex!12617) (regTwo!25747 Regex!12617)) )
))
(declare-datatypes ((String!53580 0))(
  ( (String!53581 (value!240320 String)) )
))
(declare-datatypes ((Conc!13923 0))(
  ( (Node!13923 (left!34390 Conc!13923) (right!34720 Conc!13923) (csize!28076 Int) (cheight!14134 Int)) (Leaf!21523 (xs!17229 IArray!27851) (csize!28077 Int)) (Empty!13923) )
))
(declare-datatypes ((BalanceConc!27440 0))(
  ( (BalanceConc!27441 (c!716217 Conc!13923)) )
))
(declare-datatypes ((TokenValueInjection!15312 0))(
  ( (TokenValueInjection!15313 (toValue!10416 Int) (toChars!10275 Int)) )
))
(declare-datatypes ((Rule!15224 0))(
  ( (Rule!15225 (regex!7712 Regex!12617) (tag!8576 String!53580) (isSeparator!7712 Bool) (transformation!7712 TokenValueInjection!15312)) )
))
(declare-datatypes ((List!46295 0))(
  ( (Nil!46171) (Cons!46171 (h!51591 Rule!15224) (t!346800 List!46295)) )
))
(declare-fun rules!3967 () List!46295)

(declare-fun rulesInvariant!6518 (LexerInterface!7307 List!46295) Bool)

(assert (=> b!4200619 (= res!1725086 (rulesInvariant!6518 thiss!26544 rules!3967))))

(declare-fun b!4200620 () Bool)

(declare-fun res!1725081 () Bool)

(assert (=> b!4200620 (=> (not res!1725081) (not e!2607567))))

(declare-fun rBis!178 () Rule!15224)

(declare-fun contains!9525 (List!46295 Rule!15224) Bool)

(assert (=> b!4200620 (= res!1725081 (contains!9525 rules!3967 rBis!178))))

(declare-fun b!4200621 () Bool)

(declare-fun res!1725080 () Bool)

(assert (=> b!4200621 (=> (not res!1725080) (not e!2607567))))

(declare-fun isEmpty!27337 (List!46295) Bool)

(assert (=> b!4200621 (= res!1725080 (not (isEmpty!27337 rules!3967)))))

(declare-fun b!4200622 () Bool)

(assert (=> b!4200622 (= e!2607567 (not true))))

(assert (=> b!4200622 (isPrefix!4571 input!3517 input!3517)))

(declare-datatypes ((Unit!65259 0))(
  ( (Unit!65260) )
))
(declare-fun lt!1496312 () Unit!65259)

(declare-fun lemmaIsPrefixRefl!2988 (List!46293 List!46293) Unit!65259)

(assert (=> b!4200622 (= lt!1496312 (lemmaIsPrefixRefl!2988 input!3517 input!3517))))

(declare-fun b!4200623 () Bool)

(declare-fun res!1725088 () Bool)

(assert (=> b!4200623 (=> (not res!1725088) (not e!2607567))))

(declare-fun p!3001 () List!46293)

(declare-fun suffix!1557 () List!46293)

(declare-fun ++!11786 (List!46293 List!46293) List!46293)

(assert (=> b!4200623 (= res!1725088 (= (++!11786 p!3001 suffix!1557) input!3517))))

(declare-fun b!4200624 () Bool)

(declare-fun e!2607563 () Bool)

(declare-fun tp_is_empty!22201 () Bool)

(declare-fun tp!1283434 () Bool)

(assert (=> b!4200624 (= e!2607563 (and tp_is_empty!22201 tp!1283434))))

(declare-fun e!2607560 () Bool)

(assert (=> b!4200625 (= e!2607560 (and tp!1283426 tp!1283431))))

(declare-fun b!4200626 () Bool)

(declare-fun e!2607568 () Bool)

(declare-datatypes ((Token!14126 0))(
  ( (Token!14127 (value!240321 TokenValue!7942) (rule!10808 Rule!15224) (size!33927 Int) (originalCharacters!8094 List!46293)) )
))
(declare-fun t!8364 () Token!14126)

(declare-fun tp!1283430 () Bool)

(declare-fun e!2607557 () Bool)

(declare-fun inv!60723 (String!53580) Bool)

(declare-fun inv!60726 (TokenValueInjection!15312) Bool)

(assert (=> b!4200626 (= e!2607568 (and tp!1283430 (inv!60723 (tag!8576 (rule!10808 t!8364))) (inv!60726 (transformation!7712 (rule!10808 t!8364))) e!2607557))))

(declare-fun e!2607565 () Bool)

(assert (=> b!4200627 (= e!2607565 (and tp!1283427 tp!1283428))))

(declare-fun b!4200628 () Bool)

(declare-fun res!1725087 () Bool)

(assert (=> b!4200628 (=> (not res!1725087) (not e!2607567))))

(declare-datatypes ((tuple2!43930 0))(
  ( (tuple2!43931 (_1!25099 Token!14126) (_2!25099 List!46293)) )
))
(declare-datatypes ((Option!9900 0))(
  ( (None!9899) (Some!9899 (v!40751 tuple2!43930)) )
))
(declare-fun maxPrefix!4347 (LexerInterface!7307 List!46295 List!46293) Option!9900)

(assert (=> b!4200628 (= res!1725087 (= (maxPrefix!4347 thiss!26544 rules!3967 input!3517) (Some!9899 (tuple2!43931 t!8364 suffix!1557))))))

(declare-fun b!4200630 () Bool)

(declare-fun e!2607566 () Bool)

(declare-fun e!2607561 () Bool)

(declare-fun tp!1283423 () Bool)

(assert (=> b!4200630 (= e!2607566 (and e!2607561 tp!1283423))))

(declare-fun b!4200631 () Bool)

(declare-fun res!1725083 () Bool)

(assert (=> b!4200631 (=> (not res!1725083) (not e!2607567))))

(assert (=> b!4200631 (= res!1725083 (isPrefix!4571 p!3001 input!3517))))

(declare-fun tp!1283420 () Bool)

(declare-fun b!4200632 () Bool)

(declare-fun e!2607559 () Bool)

(assert (=> b!4200632 (= e!2607559 (and tp!1283420 (inv!60723 (tag!8576 rBis!178)) (inv!60726 (transformation!7712 rBis!178)) e!2607560))))

(assert (=> b!4200633 (= e!2607557 (and tp!1283424 tp!1283425))))

(declare-fun b!4200634 () Bool)

(declare-fun e!2607572 () Bool)

(declare-fun tp!1283422 () Bool)

(assert (=> b!4200634 (= e!2607572 (and tp_is_empty!22201 tp!1283422))))

(declare-fun b!4200635 () Bool)

(declare-fun res!1725084 () Bool)

(assert (=> b!4200635 (=> (not res!1725084) (not e!2607567))))

(declare-fun ruleValid!3424 (LexerInterface!7307 Rule!15224) Bool)

(assert (=> b!4200635 (= res!1725084 (ruleValid!3424 thiss!26544 rBis!178))))

(declare-fun b!4200636 () Bool)

(declare-fun e!2607556 () Bool)

(declare-fun tp!1283421 () Bool)

(assert (=> b!4200636 (= e!2607556 (and tp_is_empty!22201 tp!1283421))))

(declare-fun res!1725082 () Bool)

(assert (=> start!401286 (=> (not res!1725082) (not e!2607567))))

(get-info :version)

(assert (=> start!401286 (= res!1725082 ((_ is Lexer!7305) thiss!26544))))

(assert (=> start!401286 e!2607567))

(assert (=> start!401286 true))

(assert (=> start!401286 e!2607559))

(assert (=> start!401286 e!2607556))

(assert (=> start!401286 e!2607566))

(declare-fun e!2607564 () Bool)

(assert (=> start!401286 e!2607564))

(declare-fun e!2607570 () Bool)

(declare-fun inv!60727 (Token!14126) Bool)

(assert (=> start!401286 (and (inv!60727 t!8364) e!2607570)))

(assert (=> start!401286 e!2607572))

(assert (=> start!401286 e!2607563))

(declare-fun tp!1283429 () Bool)

(declare-fun b!4200629 () Bool)

(assert (=> b!4200629 (= e!2607561 (and tp!1283429 (inv!60723 (tag!8576 (h!51591 rules!3967))) (inv!60726 (transformation!7712 (h!51591 rules!3967))) e!2607565))))

(declare-fun b!4200637 () Bool)

(declare-fun tp!1283432 () Bool)

(assert (=> b!4200637 (= e!2607564 (and tp_is_empty!22201 tp!1283432))))

(declare-fun tp!1283433 () Bool)

(declare-fun b!4200638 () Bool)

(declare-fun inv!21 (TokenValue!7942) Bool)

(assert (=> b!4200638 (= e!2607570 (and (inv!21 (value!240321 t!8364)) e!2607568 tp!1283433))))

(assert (= (and start!401286 res!1725082) b!4200623))

(assert (= (and b!4200623 res!1725088) b!4200631))

(assert (= (and b!4200631 res!1725083) b!4200618))

(assert (= (and b!4200618 res!1725085) b!4200621))

(assert (= (and b!4200621 res!1725080) b!4200619))

(assert (= (and b!4200619 res!1725086) b!4200620))

(assert (= (and b!4200620 res!1725081) b!4200628))

(assert (= (and b!4200628 res!1725087) b!4200635))

(assert (= (and b!4200635 res!1725084) b!4200622))

(assert (= b!4200632 b!4200625))

(assert (= start!401286 b!4200632))

(assert (= (and start!401286 ((_ is Cons!46169) p!3001)) b!4200636))

(assert (= b!4200629 b!4200627))

(assert (= b!4200630 b!4200629))

(assert (= (and start!401286 ((_ is Cons!46171) rules!3967)) b!4200630))

(assert (= (and start!401286 ((_ is Cons!46169) input!3517)) b!4200637))

(assert (= b!4200626 b!4200633))

(assert (= b!4200638 b!4200626))

(assert (= start!401286 b!4200638))

(assert (= (and start!401286 ((_ is Cons!46169) pBis!121)) b!4200634))

(assert (= (and start!401286 ((_ is Cons!46169) suffix!1557)) b!4200624))

(declare-fun m!4788939 () Bool)

(assert (=> b!4200622 m!4788939))

(declare-fun m!4788941 () Bool)

(assert (=> b!4200622 m!4788941))

(declare-fun m!4788943 () Bool)

(assert (=> b!4200638 m!4788943))

(declare-fun m!4788945 () Bool)

(assert (=> b!4200628 m!4788945))

(declare-fun m!4788947 () Bool)

(assert (=> b!4200619 m!4788947))

(declare-fun m!4788949 () Bool)

(assert (=> b!4200621 m!4788949))

(declare-fun m!4788951 () Bool)

(assert (=> start!401286 m!4788951))

(declare-fun m!4788953 () Bool)

(assert (=> b!4200623 m!4788953))

(declare-fun m!4788955 () Bool)

(assert (=> b!4200618 m!4788955))

(declare-fun m!4788957 () Bool)

(assert (=> b!4200626 m!4788957))

(declare-fun m!4788959 () Bool)

(assert (=> b!4200626 m!4788959))

(declare-fun m!4788961 () Bool)

(assert (=> b!4200635 m!4788961))

(declare-fun m!4788963 () Bool)

(assert (=> b!4200620 m!4788963))

(declare-fun m!4788965 () Bool)

(assert (=> b!4200629 m!4788965))

(declare-fun m!4788967 () Bool)

(assert (=> b!4200629 m!4788967))

(declare-fun m!4788969 () Bool)

(assert (=> b!4200632 m!4788969))

(declare-fun m!4788971 () Bool)

(assert (=> b!4200632 m!4788971))

(declare-fun m!4788973 () Bool)

(assert (=> b!4200631 m!4788973))

(check-sat (not b!4200637) tp_is_empty!22201 (not start!401286) b_and!329627 b_and!329631 (not b_next!123277) (not b_next!123271) (not b!4200619) (not b_next!123279) (not b_next!123273) (not b!4200621) b_and!329621 (not b!4200628) (not b!4200618) (not b!4200634) (not b!4200632) (not b!4200636) (not b!4200638) (not b!4200622) (not b!4200630) (not b!4200624) (not b_next!123275) (not b!4200635) (not b!4200629) (not b!4200631) (not b!4200623) b_and!329623 b_and!329629 (not b!4200626) (not b_next!123281) (not b!4200620) b_and!329625)
(check-sat b_and!329627 b_and!329631 (not b_next!123275) (not b_next!123277) (not b_next!123271) (not b_next!123279) (not b_next!123273) b_and!329623 b_and!329629 b_and!329621 b_and!329625 (not b_next!123281))
