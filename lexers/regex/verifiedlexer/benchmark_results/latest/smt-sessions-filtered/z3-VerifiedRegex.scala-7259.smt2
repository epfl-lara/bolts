; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!386948 () Bool)

(assert start!386948)

(declare-fun b!4089612 () Bool)

(declare-fun b_free!114313 () Bool)

(declare-fun b_next!115017 () Bool)

(assert (=> b!4089612 (= b_free!114313 (not b_next!115017))))

(declare-fun tp!1238148 () Bool)

(declare-fun b_and!315063 () Bool)

(assert (=> b!4089612 (= tp!1238148 b_and!315063)))

(declare-fun b_free!114315 () Bool)

(declare-fun b_next!115019 () Bool)

(assert (=> b!4089612 (= b_free!114315 (not b_next!115019))))

(declare-fun tp!1238145 () Bool)

(declare-fun b_and!315065 () Bool)

(assert (=> b!4089612 (= tp!1238145 b_and!315065)))

(declare-fun b!4089618 () Bool)

(declare-fun b_free!114317 () Bool)

(declare-fun b_next!115021 () Bool)

(assert (=> b!4089618 (= b_free!114317 (not b_next!115021))))

(declare-fun tp!1238146 () Bool)

(declare-fun b_and!315067 () Bool)

(assert (=> b!4089618 (= tp!1238146 b_and!315067)))

(declare-fun b_free!114319 () Bool)

(declare-fun b_next!115023 () Bool)

(assert (=> b!4089618 (= b_free!114319 (not b_next!115023))))

(declare-fun tp!1238142 () Bool)

(declare-fun b_and!315069 () Bool)

(assert (=> b!4089618 (= tp!1238142 b_and!315069)))

(declare-fun b!4089606 () Bool)

(declare-fun e!2538096 () Bool)

(declare-fun tp_is_empty!20993 () Bool)

(declare-fun tp!1238141 () Bool)

(assert (=> b!4089606 (= e!2538096 (and tp_is_empty!20993 tp!1238141))))

(declare-fun e!2538095 () Bool)

(declare-fun b!4089607 () Bool)

(declare-datatypes ((List!43973 0))(
  ( (Nil!43849) (Cons!43849 (h!49269 (_ BitVec 16)) (t!338524 List!43973)) )
))
(declare-datatypes ((TokenValue!7320 0))(
  ( (FloatLiteralValue!14640 (text!51685 List!43973)) (TokenValueExt!7319 (__x!26857 Int)) (Broken!36600 (value!222691 List!43973)) (Object!7443) (End!7320) (Def!7320) (Underscore!7320) (Match!7320) (Else!7320) (Error!7320) (Case!7320) (If!7320) (Extends!7320) (Abstract!7320) (Class!7320) (Val!7320) (DelimiterValue!14640 (del!7380 List!43973)) (KeywordValue!7326 (value!222692 List!43973)) (CommentValue!14640 (value!222693 List!43973)) (WhitespaceValue!14640 (value!222694 List!43973)) (IndentationValue!7320 (value!222695 List!43973)) (String!50349) (Int32!7320) (Broken!36601 (value!222696 List!43973)) (Boolean!7321) (Unit!63372) (OperatorValue!7323 (op!7380 List!43973)) (IdentifierValue!14640 (value!222697 List!43973)) (IdentifierValue!14641 (value!222698 List!43973)) (WhitespaceValue!14641 (value!222699 List!43973)) (True!14640) (False!14640) (Broken!36602 (value!222700 List!43973)) (Broken!36603 (value!222701 List!43973)) (True!14641) (RightBrace!7320) (RightBracket!7320) (Colon!7320) (Null!7320) (Comma!7320) (LeftBracket!7320) (False!14641) (LeftBrace!7320) (ImaginaryLiteralValue!7320 (text!51686 List!43973)) (StringLiteralValue!21960 (value!222702 List!43973)) (EOFValue!7320 (value!222703 List!43973)) (IdentValue!7320 (value!222704 List!43973)) (DelimiterValue!14641 (value!222705 List!43973)) (DedentValue!7320 (value!222706 List!43973)) (NewLineValue!7320 (value!222707 List!43973)) (IntegerValue!21960 (value!222708 (_ BitVec 32)) (text!51687 List!43973)) (IntegerValue!21961 (value!222709 Int) (text!51688 List!43973)) (Times!7320) (Or!7320) (Equal!7320) (Minus!7320) (Broken!36604 (value!222710 List!43973)) (And!7320) (Div!7320) (LessEqual!7320) (Mod!7320) (Concat!19315) (Not!7320) (Plus!7320) (SpaceValue!7320 (value!222711 List!43973)) (IntegerValue!21962 (value!222712 Int) (text!51689 List!43973)) (StringLiteralValue!21961 (text!51690 List!43973)) (FloatLiteralValue!14641 (text!51691 List!43973)) (BytesLiteralValue!7320 (value!222713 List!43973)) (CommentValue!14641 (value!222714 List!43973)) (StringLiteralValue!21962 (value!222715 List!43973)) (ErrorTokenValue!7320 (msg!7381 List!43973)) )
))
(declare-datatypes ((C!24176 0))(
  ( (C!24177 (val!14198 Int)) )
))
(declare-datatypes ((Regex!11995 0))(
  ( (ElementMatch!11995 (c!704892 C!24176)) (Concat!19316 (regOne!24502 Regex!11995) (regTwo!24502 Regex!11995)) (EmptyExpr!11995) (Star!11995 (reg!12324 Regex!11995)) (EmptyLang!11995) (Union!11995 (regOne!24503 Regex!11995) (regTwo!24503 Regex!11995)) )
))
(declare-datatypes ((String!50350 0))(
  ( (String!50351 (value!222716 String)) )
))
(declare-datatypes ((List!43974 0))(
  ( (Nil!43850) (Cons!43850 (h!49270 C!24176) (t!338525 List!43974)) )
))
(declare-datatypes ((IArray!26607 0))(
  ( (IArray!26608 (innerList!13361 List!43974)) )
))
(declare-datatypes ((Conc!13301 0))(
  ( (Node!13301 (left!32960 Conc!13301) (right!33290 Conc!13301) (csize!26832 Int) (cheight!13512 Int)) (Leaf!20561 (xs!16607 IArray!26607) (csize!26833 Int)) (Empty!13301) )
))
(declare-datatypes ((BalanceConc!26196 0))(
  ( (BalanceConc!26197 (c!704893 Conc!13301)) )
))
(declare-datatypes ((TokenValueInjection!14068 0))(
  ( (TokenValueInjection!14069 (toValue!9678 Int) (toChars!9537 Int)) )
))
(declare-datatypes ((Rule!13980 0))(
  ( (Rule!13981 (regex!7090 Regex!11995) (tag!7950 String!50350) (isSeparator!7090 Bool) (transformation!7090 TokenValueInjection!14068)) )
))
(declare-fun r!4213 () Rule!13980)

(declare-fun tp!1238143 () Bool)

(declare-fun e!2538099 () Bool)

(declare-fun inv!58548 (String!50350) Bool)

(declare-fun inv!58550 (TokenValueInjection!14068) Bool)

(assert (=> b!4089607 (= e!2538099 (and tp!1238143 (inv!58548 (tag!7950 r!4213)) (inv!58550 (transformation!7090 r!4213)) e!2538095))))

(declare-fun b!4089608 () Bool)

(declare-fun res!1671319 () Bool)

(declare-fun e!2538093 () Bool)

(assert (=> b!4089608 (=> (not res!1671319) (not e!2538093))))

(declare-fun suffix!1518 () List!43974)

(declare-fun p!2988 () List!43974)

(declare-fun input!3411 () List!43974)

(declare-fun ++!11496 (List!43974 List!43974) List!43974)

(assert (=> b!4089608 (= res!1671319 (= input!3411 (++!11496 p!2988 suffix!1518)))))

(declare-fun b!4089609 () Bool)

(declare-fun res!1671314 () Bool)

(declare-fun e!2538104 () Bool)

(assert (=> b!4089609 (=> res!1671314 e!2538104)))

(declare-datatypes ((List!43975 0))(
  ( (Nil!43851) (Cons!43851 (h!49271 Rule!13980) (t!338526 List!43975)) )
))
(declare-fun rules!3870 () List!43975)

(declare-fun isEmpty!26223 (List!43975) Bool)

(assert (=> b!4089609 (= res!1671314 (isEmpty!26223 (t!338526 rules!3870)))))

(declare-fun b!4089611 () Bool)

(declare-fun res!1671318 () Bool)

(assert (=> b!4089611 (=> (not res!1671318) (not e!2538093))))

(declare-fun isEmpty!26224 (List!43974) Bool)

(assert (=> b!4089611 (= res!1671318 (not (isEmpty!26224 p!2988)))))

(assert (=> b!4089612 (= e!2538095 (and tp!1238148 tp!1238145))))

(declare-fun b!4089613 () Bool)

(declare-fun res!1671316 () Bool)

(assert (=> b!4089613 (=> (not res!1671316) (not e!2538093))))

(assert (=> b!4089613 (= res!1671316 (not (isEmpty!26223 rules!3870)))))

(declare-fun b!4089614 () Bool)

(declare-fun res!1671323 () Bool)

(assert (=> b!4089614 (=> (not res!1671323) (not e!2538093))))

(declare-datatypes ((LexerInterface!6679 0))(
  ( (LexerInterfaceExt!6676 (__x!26858 Int)) (Lexer!6677) )
))
(declare-fun thiss!26199 () LexerInterface!6679)

(declare-fun rulesInvariant!6022 (LexerInterface!6679 List!43975) Bool)

(assert (=> b!4089614 (= res!1671323 (rulesInvariant!6022 thiss!26199 rules!3870))))

(declare-fun b!4089615 () Bool)

(declare-fun res!1671321 () Bool)

(assert (=> b!4089615 (=> (not res!1671321) (not e!2538093))))

(declare-fun contains!8769 (List!43975 Rule!13980) Bool)

(assert (=> b!4089615 (= res!1671321 (contains!8769 rules!3870 r!4213))))

(declare-fun b!4089616 () Bool)

(declare-fun e!2538100 () Bool)

(declare-fun e!2538103 () Bool)

(declare-fun tp!1238149 () Bool)

(assert (=> b!4089616 (= e!2538100 (and e!2538103 tp!1238149))))

(declare-fun b!4089617 () Bool)

(declare-fun e!2538101 () Bool)

(assert (=> b!4089617 (= e!2538101 e!2538104)))

(declare-fun res!1671315 () Bool)

(assert (=> b!4089617 (=> res!1671315 e!2538104)))

(declare-datatypes ((Token!13306 0))(
  ( (Token!13307 (value!222717 TokenValue!7320) (rule!10228 Rule!13980) (size!32752 Int) (originalCharacters!7684 List!43974)) )
))
(declare-datatypes ((tuple2!42784 0))(
  ( (tuple2!42785 (_1!24526 Token!13306) (_2!24526 List!43974)) )
))
(declare-datatypes ((Option!9496 0))(
  ( (None!9495) (Some!9495 (v!39979 tuple2!42784)) )
))
(declare-fun isEmpty!26225 (Option!9496) Bool)

(declare-fun maxPrefixOneRule!2951 (LexerInterface!6679 Rule!13980 List!43974) Option!9496)

(assert (=> b!4089617 (= res!1671315 (not (isEmpty!26225 (maxPrefixOneRule!2951 thiss!26199 (h!49271 rules!3870) input!3411))))))

(assert (=> b!4089617 (rulesInvariant!6022 thiss!26199 (t!338526 rules!3870))))

(declare-datatypes ((Unit!63373 0))(
  ( (Unit!63374) )
))
(declare-fun lt!1462690 () Unit!63373)

(declare-fun lemmaInvariantOnRulesThenOnTail!792 (LexerInterface!6679 Rule!13980 List!43975) Unit!63373)

(assert (=> b!4089617 (= lt!1462690 (lemmaInvariantOnRulesThenOnTail!792 thiss!26199 (h!49271 rules!3870) (t!338526 rules!3870)))))

(declare-fun e!2538098 () Bool)

(assert (=> b!4089618 (= e!2538098 (and tp!1238146 tp!1238142))))

(declare-fun b!4089619 () Bool)

(declare-fun res!1671322 () Bool)

(assert (=> b!4089619 (=> res!1671322 e!2538101)))

(get-info :version)

(assert (=> b!4089619 (= res!1671322 (or (and ((_ is Cons!43851) rules!3870) (= (h!49271 rules!3870) r!4213)) (not ((_ is Cons!43851) rules!3870)) (= (h!49271 rules!3870) r!4213)))))

(declare-fun b!4089620 () Bool)

(declare-fun e!2538092 () Bool)

(assert (=> b!4089620 (= e!2538093 e!2538092)))

(declare-fun res!1671317 () Bool)

(assert (=> b!4089620 (=> (not res!1671317) (not e!2538092))))

(declare-fun lt!1462693 () BalanceConc!26196)

(declare-fun maxPrefix!3969 (LexerInterface!6679 List!43975 List!43974) Option!9496)

(declare-fun apply!10273 (TokenValueInjection!14068 BalanceConc!26196) TokenValue!7320)

(declare-fun size!32753 (List!43974) Int)

(assert (=> b!4089620 (= res!1671317 (= (maxPrefix!3969 thiss!26199 rules!3870 input!3411) (Some!9495 (tuple2!42785 (Token!13307 (apply!10273 (transformation!7090 r!4213) lt!1462693) r!4213 (size!32753 p!2988) p!2988) suffix!1518))))))

(declare-fun lt!1462691 () Unit!63373)

(declare-fun lemmaSemiInverse!2057 (TokenValueInjection!14068 BalanceConc!26196) Unit!63373)

(assert (=> b!4089620 (= lt!1462691 (lemmaSemiInverse!2057 (transformation!7090 r!4213) lt!1462693))))

(declare-fun seqFromList!5307 (List!43974) BalanceConc!26196)

(assert (=> b!4089620 (= lt!1462693 (seqFromList!5307 p!2988))))

(declare-fun b!4089621 () Bool)

(assert (=> b!4089621 (= e!2538104 true)))

(declare-fun lt!1462689 () Bool)

(assert (=> b!4089621 (= lt!1462689 (contains!8769 (t!338526 rules!3870) r!4213))))

(declare-fun b!4089622 () Bool)

(declare-fun e!2538102 () Bool)

(declare-fun tp!1238144 () Bool)

(assert (=> b!4089622 (= e!2538102 (and tp_is_empty!20993 tp!1238144))))

(declare-fun b!4089623 () Bool)

(declare-fun e!2538097 () Bool)

(declare-fun tp!1238150 () Bool)

(assert (=> b!4089623 (= e!2538097 (and tp_is_empty!20993 tp!1238150))))

(declare-fun b!4089624 () Bool)

(assert (=> b!4089624 (= e!2538092 (not e!2538101))))

(declare-fun res!1671320 () Bool)

(assert (=> b!4089624 (=> res!1671320 e!2538101)))

(declare-fun matchR!5936 (Regex!11995 List!43974) Bool)

(assert (=> b!4089624 (= res!1671320 (not (matchR!5936 (regex!7090 r!4213) p!2988)))))

(declare-fun ruleValid!3010 (LexerInterface!6679 Rule!13980) Bool)

(assert (=> b!4089624 (ruleValid!3010 thiss!26199 r!4213)))

(declare-fun lt!1462692 () Unit!63373)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2076 (LexerInterface!6679 Rule!13980 List!43975) Unit!63373)

(assert (=> b!4089624 (= lt!1462692 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2076 thiss!26199 r!4213 rules!3870))))

(declare-fun tp!1238147 () Bool)

(declare-fun b!4089610 () Bool)

(assert (=> b!4089610 (= e!2538103 (and tp!1238147 (inv!58548 (tag!7950 (h!49271 rules!3870))) (inv!58550 (transformation!7090 (h!49271 rules!3870))) e!2538098))))

(declare-fun res!1671324 () Bool)

(assert (=> start!386948 (=> (not res!1671324) (not e!2538093))))

(assert (=> start!386948 (= res!1671324 ((_ is Lexer!6677) thiss!26199))))

(assert (=> start!386948 e!2538093))

(assert (=> start!386948 true))

(assert (=> start!386948 e!2538097))

(assert (=> start!386948 e!2538100))

(assert (=> start!386948 e!2538096))

(assert (=> start!386948 e!2538102))

(assert (=> start!386948 e!2538099))

(assert (= (and start!386948 res!1671324) b!4089613))

(assert (= (and b!4089613 res!1671316) b!4089614))

(assert (= (and b!4089614 res!1671323) b!4089615))

(assert (= (and b!4089615 res!1671321) b!4089608))

(assert (= (and b!4089608 res!1671319) b!4089611))

(assert (= (and b!4089611 res!1671318) b!4089620))

(assert (= (and b!4089620 res!1671317) b!4089624))

(assert (= (and b!4089624 (not res!1671320)) b!4089619))

(assert (= (and b!4089619 (not res!1671322)) b!4089617))

(assert (= (and b!4089617 (not res!1671315)) b!4089609))

(assert (= (and b!4089609 (not res!1671314)) b!4089621))

(assert (= (and start!386948 ((_ is Cons!43850) suffix!1518)) b!4089623))

(assert (= b!4089610 b!4089618))

(assert (= b!4089616 b!4089610))

(assert (= (and start!386948 ((_ is Cons!43851) rules!3870)) b!4089616))

(assert (= (and start!386948 ((_ is Cons!43850) p!2988)) b!4089606))

(assert (= (and start!386948 ((_ is Cons!43850) input!3411)) b!4089622))

(assert (= b!4089607 b!4089612))

(assert (= start!386948 b!4089607))

(declare-fun m!4696415 () Bool)

(assert (=> b!4089607 m!4696415))

(declare-fun m!4696417 () Bool)

(assert (=> b!4089607 m!4696417))

(declare-fun m!4696419 () Bool)

(assert (=> b!4089620 m!4696419))

(declare-fun m!4696421 () Bool)

(assert (=> b!4089620 m!4696421))

(declare-fun m!4696423 () Bool)

(assert (=> b!4089620 m!4696423))

(declare-fun m!4696425 () Bool)

(assert (=> b!4089620 m!4696425))

(declare-fun m!4696427 () Bool)

(assert (=> b!4089620 m!4696427))

(declare-fun m!4696429 () Bool)

(assert (=> b!4089611 m!4696429))

(declare-fun m!4696431 () Bool)

(assert (=> b!4089614 m!4696431))

(declare-fun m!4696433 () Bool)

(assert (=> b!4089609 m!4696433))

(declare-fun m!4696435 () Bool)

(assert (=> b!4089610 m!4696435))

(declare-fun m!4696437 () Bool)

(assert (=> b!4089610 m!4696437))

(declare-fun m!4696439 () Bool)

(assert (=> b!4089617 m!4696439))

(assert (=> b!4089617 m!4696439))

(declare-fun m!4696441 () Bool)

(assert (=> b!4089617 m!4696441))

(declare-fun m!4696443 () Bool)

(assert (=> b!4089617 m!4696443))

(declare-fun m!4696445 () Bool)

(assert (=> b!4089617 m!4696445))

(declare-fun m!4696447 () Bool)

(assert (=> b!4089608 m!4696447))

(declare-fun m!4696449 () Bool)

(assert (=> b!4089621 m!4696449))

(declare-fun m!4696451 () Bool)

(assert (=> b!4089615 m!4696451))

(declare-fun m!4696453 () Bool)

(assert (=> b!4089613 m!4696453))

(declare-fun m!4696455 () Bool)

(assert (=> b!4089624 m!4696455))

(declare-fun m!4696457 () Bool)

(assert (=> b!4089624 m!4696457))

(declare-fun m!4696459 () Bool)

(assert (=> b!4089624 m!4696459))

(check-sat b_and!315069 (not b_next!115019) b_and!315063 (not b!4089623) (not b!4089607) (not b!4089611) (not b!4089616) (not b!4089606) (not b!4089610) b_and!315067 (not b!4089615) (not b!4089617) (not b!4089624) (not b_next!115021) (not b!4089613) (not b_next!115023) (not b!4089609) (not b!4089620) (not b_next!115017) (not b!4089622) b_and!315065 (not b!4089621) tp_is_empty!20993 (not b!4089614) (not b!4089608))
(check-sat b_and!315069 (not b_next!115021) (not b_next!115019) b_and!315063 (not b_next!115023) (not b_next!115017) b_and!315065 b_and!315067)
