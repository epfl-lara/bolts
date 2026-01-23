; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!385568 () Bool)

(assert start!385568)

(declare-fun b!4080462 () Bool)

(declare-fun b_free!113825 () Bool)

(declare-fun b_next!114529 () Bool)

(assert (=> b!4080462 (= b_free!113825 (not b_next!114529))))

(declare-fun tp!1235166 () Bool)

(declare-fun b_and!313887 () Bool)

(assert (=> b!4080462 (= tp!1235166 b_and!313887)))

(declare-fun b_free!113827 () Bool)

(declare-fun b_next!114531 () Bool)

(assert (=> b!4080462 (= b_free!113827 (not b_next!114531))))

(declare-fun tp!1235174 () Bool)

(declare-fun b_and!313889 () Bool)

(assert (=> b!4080462 (= tp!1235174 b_and!313889)))

(declare-fun b!4080446 () Bool)

(declare-fun b_free!113829 () Bool)

(declare-fun b_next!114533 () Bool)

(assert (=> b!4080446 (= b_free!113829 (not b_next!114533))))

(declare-fun tp!1235167 () Bool)

(declare-fun b_and!313891 () Bool)

(assert (=> b!4080446 (= tp!1235167 b_and!313891)))

(declare-fun b_free!113831 () Bool)

(declare-fun b_next!114535 () Bool)

(assert (=> b!4080446 (= b_free!113831 (not b_next!114535))))

(declare-fun tp!1235165 () Bool)

(declare-fun b_and!313893 () Bool)

(assert (=> b!4080446 (= tp!1235165 b_and!313893)))

(declare-datatypes ((List!43815 0))(
  ( (Nil!43691) (Cons!43691 (h!49111 (_ BitVec 16)) (t!337702 List!43815)) )
))
(declare-datatypes ((TokenValue!7276 0))(
  ( (FloatLiteralValue!14552 (text!51377 List!43815)) (TokenValueExt!7275 (__x!26769 Int)) (Broken!36380 (value!221437 List!43815)) (Object!7399) (End!7276) (Def!7276) (Underscore!7276) (Match!7276) (Else!7276) (Error!7276) (Case!7276) (If!7276) (Extends!7276) (Abstract!7276) (Class!7276) (Val!7276) (DelimiterValue!14552 (del!7336 List!43815)) (KeywordValue!7282 (value!221438 List!43815)) (CommentValue!14552 (value!221439 List!43815)) (WhitespaceValue!14552 (value!221440 List!43815)) (IndentationValue!7276 (value!221441 List!43815)) (String!50129) (Int32!7276) (Broken!36381 (value!221442 List!43815)) (Boolean!7277) (Unit!63228) (OperatorValue!7279 (op!7336 List!43815)) (IdentifierValue!14552 (value!221443 List!43815)) (IdentifierValue!14553 (value!221444 List!43815)) (WhitespaceValue!14553 (value!221445 List!43815)) (True!14552) (False!14552) (Broken!36382 (value!221446 List!43815)) (Broken!36383 (value!221447 List!43815)) (True!14553) (RightBrace!7276) (RightBracket!7276) (Colon!7276) (Null!7276) (Comma!7276) (LeftBracket!7276) (False!14553) (LeftBrace!7276) (ImaginaryLiteralValue!7276 (text!51378 List!43815)) (StringLiteralValue!21828 (value!221448 List!43815)) (EOFValue!7276 (value!221449 List!43815)) (IdentValue!7276 (value!221450 List!43815)) (DelimiterValue!14553 (value!221451 List!43815)) (DedentValue!7276 (value!221452 List!43815)) (NewLineValue!7276 (value!221453 List!43815)) (IntegerValue!21828 (value!221454 (_ BitVec 32)) (text!51379 List!43815)) (IntegerValue!21829 (value!221455 Int) (text!51380 List!43815)) (Times!7276) (Or!7276) (Equal!7276) (Minus!7276) (Broken!36384 (value!221456 List!43815)) (And!7276) (Div!7276) (LessEqual!7276) (Mod!7276) (Concat!19227) (Not!7276) (Plus!7276) (SpaceValue!7276 (value!221457 List!43815)) (IntegerValue!21830 (value!221458 Int) (text!51381 List!43815)) (StringLiteralValue!21829 (text!51382 List!43815)) (FloatLiteralValue!14553 (text!51383 List!43815)) (BytesLiteralValue!7276 (value!221459 List!43815)) (CommentValue!14553 (value!221460 List!43815)) (StringLiteralValue!21830 (value!221461 List!43815)) (ErrorTokenValue!7276 (msg!7337 List!43815)) )
))
(declare-datatypes ((C!24088 0))(
  ( (C!24089 (val!14154 Int)) )
))
(declare-datatypes ((Regex!11951 0))(
  ( (ElementMatch!11951 (c!703730 C!24088)) (Concat!19228 (regOne!24414 Regex!11951) (regTwo!24414 Regex!11951)) (EmptyExpr!11951) (Star!11951 (reg!12280 Regex!11951)) (EmptyLang!11951) (Union!11951 (regOne!24415 Regex!11951) (regTwo!24415 Regex!11951)) )
))
(declare-datatypes ((String!50130 0))(
  ( (String!50131 (value!221462 String)) )
))
(declare-datatypes ((List!43816 0))(
  ( (Nil!43692) (Cons!43692 (h!49112 C!24088) (t!337703 List!43816)) )
))
(declare-datatypes ((IArray!26519 0))(
  ( (IArray!26520 (innerList!13317 List!43816)) )
))
(declare-datatypes ((Conc!13257 0))(
  ( (Node!13257 (left!32842 Conc!13257) (right!33172 Conc!13257) (csize!26744 Int) (cheight!13468 Int)) (Leaf!20495 (xs!16563 IArray!26519) (csize!26745 Int)) (Empty!13257) )
))
(declare-datatypes ((BalanceConc!26108 0))(
  ( (BalanceConc!26109 (c!703731 Conc!13257)) )
))
(declare-datatypes ((TokenValueInjection!13980 0))(
  ( (TokenValueInjection!13981 (toValue!9618 Int) (toChars!9477 Int)) )
))
(declare-datatypes ((Rule!13892 0))(
  ( (Rule!13893 (regex!7046 Regex!11951) (tag!7906 String!50130) (isSeparator!7046 Bool) (transformation!7046 TokenValueInjection!13980)) )
))
(declare-datatypes ((List!43817 0))(
  ( (Nil!43693) (Cons!43693 (h!49113 Rule!13892) (t!337704 List!43817)) )
))
(declare-fun rules!3870 () List!43817)

(declare-fun tp!1235168 () Bool)

(declare-fun e!2532535 () Bool)

(declare-fun e!2532538 () Bool)

(declare-fun b!4080443 () Bool)

(declare-fun inv!58355 (String!50130) Bool)

(declare-fun inv!58357 (TokenValueInjection!13980) Bool)

(assert (=> b!4080443 (= e!2532535 (and tp!1235168 (inv!58355 (tag!7906 (h!49113 rules!3870))) (inv!58357 (transformation!7046 (h!49113 rules!3870))) e!2532538))))

(declare-fun b!4080444 () Bool)

(declare-fun e!2532532 () Bool)

(declare-fun e!2532528 () Bool)

(assert (=> b!4080444 (= e!2532532 e!2532528)))

(declare-fun res!1666997 () Bool)

(assert (=> b!4080444 (=> res!1666997 e!2532528)))

(declare-datatypes ((Token!13218 0))(
  ( (Token!13219 (value!221463 TokenValue!7276) (rule!10164 Rule!13892) (size!32639 Int) (originalCharacters!7640 List!43816)) )
))
(declare-datatypes ((tuple2!42662 0))(
  ( (tuple2!42663 (_1!24465 Token!13218) (_2!24465 List!43816)) )
))
(declare-datatypes ((Option!9454 0))(
  ( (None!9453) (Some!9453 (v!39911 tuple2!42662)) )
))
(declare-fun lt!1459994 () Option!9454)

(declare-fun isEmpty!26103 (Option!9454) Bool)

(assert (=> b!4080444 (= res!1666997 (isEmpty!26103 lt!1459994))))

(declare-datatypes ((LexerInterface!6635 0))(
  ( (LexerInterfaceExt!6632 (__x!26770 Int)) (Lexer!6633) )
))
(declare-fun thiss!26199 () LexerInterface!6635)

(declare-fun input!3411 () List!43816)

(declare-fun maxPrefixOneRule!2921 (LexerInterface!6635 Rule!13892 List!43816) Option!9454)

(assert (=> b!4080444 (= lt!1459994 (maxPrefixOneRule!2921 thiss!26199 (h!49113 rules!3870) input!3411))))

(declare-fun rulesInvariant!5978 (LexerInterface!6635 List!43817) Bool)

(assert (=> b!4080444 (rulesInvariant!5978 thiss!26199 (t!337704 rules!3870))))

(declare-datatypes ((Unit!63229 0))(
  ( (Unit!63230) )
))
(declare-fun lt!1459996 () Unit!63229)

(declare-fun lemmaInvariantOnRulesThenOnTail!764 (LexerInterface!6635 Rule!13892 List!43817) Unit!63229)

(assert (=> b!4080444 (= lt!1459996 (lemmaInvariantOnRulesThenOnTail!764 thiss!26199 (h!49113 rules!3870) (t!337704 rules!3870)))))

(declare-fun b!4080445 () Bool)

(declare-fun res!1666989 () Bool)

(declare-fun e!2532537 () Bool)

(assert (=> b!4080445 (=> (not res!1666989) (not e!2532537))))

(declare-fun p!2988 () List!43816)

(declare-fun isEmpty!26104 (List!43816) Bool)

(assert (=> b!4080445 (= res!1666989 (not (isEmpty!26104 p!2988)))))

(declare-fun e!2532531 () Bool)

(assert (=> b!4080446 (= e!2532531 (and tp!1235167 tp!1235165))))

(declare-fun b!4080447 () Bool)

(declare-fun res!1666990 () Bool)

(declare-fun e!2532527 () Bool)

(assert (=> b!4080447 (=> res!1666990 e!2532527)))

(declare-fun r!4213 () Rule!13892)

(declare-fun contains!8717 (List!43817 Rule!13892) Bool)

(assert (=> b!4080447 (= res!1666990 (not (contains!8717 (t!337704 rules!3870) r!4213)))))

(declare-fun b!4080448 () Bool)

(declare-fun res!1666996 () Bool)

(assert (=> b!4080448 (=> res!1666996 e!2532532)))

(get-info :version)

(assert (=> b!4080448 (= res!1666996 (or (and ((_ is Cons!43693) rules!3870) (= (h!49113 rules!3870) r!4213)) (not ((_ is Cons!43693) rules!3870)) (= (h!49113 rules!3870) r!4213)))))

(declare-fun b!4080449 () Bool)

(declare-fun res!1666995 () Bool)

(assert (=> b!4080449 (=> (not res!1666995) (not e!2532537))))

(assert (=> b!4080449 (= res!1666995 (contains!8717 rules!3870 r!4213))))

(declare-fun b!4080451 () Bool)

(declare-fun res!1666999 () Bool)

(assert (=> b!4080451 (=> res!1666999 e!2532527)))

(declare-fun isEmpty!26105 (List!43817) Bool)

(assert (=> b!4080451 (= res!1666999 (isEmpty!26105 (t!337704 rules!3870)))))

(declare-fun b!4080452 () Bool)

(declare-fun res!1666993 () Bool)

(assert (=> b!4080452 (=> (not res!1666993) (not e!2532537))))

(assert (=> b!4080452 (= res!1666993 (rulesInvariant!5978 thiss!26199 rules!3870))))

(declare-fun e!2532526 () Bool)

(declare-fun tp!1235170 () Bool)

(declare-fun b!4080453 () Bool)

(assert (=> b!4080453 (= e!2532526 (and tp!1235170 (inv!58355 (tag!7906 r!4213)) (inv!58357 (transformation!7046 r!4213)) e!2532531))))

(declare-fun b!4080454 () Bool)

(declare-fun e!2532533 () Bool)

(assert (=> b!4080454 (= e!2532537 e!2532533)))

(declare-fun res!1666991 () Bool)

(assert (=> b!4080454 (=> (not res!1666991) (not e!2532533))))

(declare-fun lt!1459995 () Option!9454)

(declare-fun maxPrefix!3927 (LexerInterface!6635 List!43817 List!43816) Option!9454)

(assert (=> b!4080454 (= res!1666991 (= (maxPrefix!3927 thiss!26199 rules!3870 input!3411) lt!1459995))))

(declare-fun suffix!1518 () List!43816)

(declare-fun lt!1459993 () BalanceConc!26108)

(declare-fun apply!10229 (TokenValueInjection!13980 BalanceConc!26108) TokenValue!7276)

(declare-fun size!32640 (List!43816) Int)

(assert (=> b!4080454 (= lt!1459995 (Some!9453 (tuple2!42663 (Token!13219 (apply!10229 (transformation!7046 r!4213) lt!1459993) r!4213 (size!32640 p!2988) p!2988) suffix!1518)))))

(declare-fun lt!1459991 () Unit!63229)

(declare-fun lemmaSemiInverse!2013 (TokenValueInjection!13980 BalanceConc!26108) Unit!63229)

(assert (=> b!4080454 (= lt!1459991 (lemmaSemiInverse!2013 (transformation!7046 r!4213) lt!1459993))))

(declare-fun seqFromList!5263 (List!43816) BalanceConc!26108)

(assert (=> b!4080454 (= lt!1459993 (seqFromList!5263 p!2988))))

(declare-fun b!4080455 () Bool)

(declare-fun e!2532534 () Bool)

(declare-fun tp_is_empty!20905 () Bool)

(declare-fun tp!1235173 () Bool)

(assert (=> b!4080455 (= e!2532534 (and tp_is_empty!20905 tp!1235173))))

(declare-fun b!4080456 () Bool)

(declare-fun res!1667001 () Bool)

(assert (=> b!4080456 (=> (not res!1667001) (not e!2532537))))

(declare-fun ++!11452 (List!43816 List!43816) List!43816)

(assert (=> b!4080456 (= res!1667001 (= input!3411 (++!11452 p!2988 suffix!1518)))))

(declare-fun b!4080457 () Bool)

(declare-fun res!1667000 () Bool)

(assert (=> b!4080457 (=> (not res!1667000) (not e!2532537))))

(assert (=> b!4080457 (= res!1667000 (not (isEmpty!26105 rules!3870)))))

(declare-fun b!4080458 () Bool)

(assert (=> b!4080458 (= e!2532527 true)))

(declare-fun lt!1459997 () Unit!63229)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2038 (LexerInterface!6635 Rule!13892 List!43817) Unit!63229)

(assert (=> b!4080458 (= lt!1459997 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2038 thiss!26199 r!4213 (t!337704 rules!3870)))))

(declare-fun b!4080459 () Bool)

(declare-fun e!2532529 () Bool)

(declare-fun tp!1235172 () Bool)

(assert (=> b!4080459 (= e!2532529 (and e!2532535 tp!1235172))))

(declare-fun b!4080460 () Bool)

(assert (=> b!4080460 (= e!2532528 e!2532527)))

(declare-fun res!1666988 () Bool)

(assert (=> b!4080460 (=> res!1666988 e!2532527)))

(declare-fun lt!1459990 () tuple2!42662)

(assert (=> b!4080460 (= res!1666988 (or (not (= (rule!10164 (_1!24465 lt!1459990)) (h!49113 rules!3870))) (= (rule!10164 (_1!24465 lt!1459990)) r!4213) (= lt!1459994 lt!1459995)))))

(declare-fun get!14327 (Option!9454) tuple2!42662)

(assert (=> b!4080460 (= lt!1459990 (get!14327 lt!1459994))))

(declare-fun res!1666998 () Bool)

(assert (=> start!385568 (=> (not res!1666998) (not e!2532537))))

(assert (=> start!385568 (= res!1666998 ((_ is Lexer!6633) thiss!26199))))

(assert (=> start!385568 e!2532537))

(assert (=> start!385568 true))

(declare-fun e!2532540 () Bool)

(assert (=> start!385568 e!2532540))

(assert (=> start!385568 e!2532529))

(declare-fun e!2532536 () Bool)

(assert (=> start!385568 e!2532536))

(assert (=> start!385568 e!2532534))

(assert (=> start!385568 e!2532526))

(declare-fun b!4080450 () Bool)

(declare-fun tp!1235169 () Bool)

(assert (=> b!4080450 (= e!2532536 (and tp_is_empty!20905 tp!1235169))))

(declare-fun b!4080461 () Bool)

(declare-fun res!1666992 () Bool)

(assert (=> b!4080461 (=> res!1666992 e!2532527)))

(assert (=> b!4080461 (= res!1666992 (not (= (maxPrefix!3927 thiss!26199 (t!337704 rules!3870) input!3411) lt!1459995)))))

(assert (=> b!4080462 (= e!2532538 (and tp!1235166 tp!1235174))))

(declare-fun b!4080463 () Bool)

(declare-fun tp!1235171 () Bool)

(assert (=> b!4080463 (= e!2532540 (and tp_is_empty!20905 tp!1235171))))

(declare-fun b!4080464 () Bool)

(assert (=> b!4080464 (= e!2532533 (not e!2532532))))

(declare-fun res!1666994 () Bool)

(assert (=> b!4080464 (=> res!1666994 e!2532532)))

(declare-fun matchR!5896 (Regex!11951 List!43816) Bool)

(assert (=> b!4080464 (= res!1666994 (not (matchR!5896 (regex!7046 r!4213) p!2988)))))

(declare-fun ruleValid!2970 (LexerInterface!6635 Rule!13892) Bool)

(assert (=> b!4080464 (ruleValid!2970 thiss!26199 r!4213)))

(declare-fun lt!1459992 () Unit!63229)

(assert (=> b!4080464 (= lt!1459992 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2038 thiss!26199 r!4213 rules!3870))))

(assert (= (and start!385568 res!1666998) b!4080457))

(assert (= (and b!4080457 res!1667000) b!4080452))

(assert (= (and b!4080452 res!1666993) b!4080449))

(assert (= (and b!4080449 res!1666995) b!4080456))

(assert (= (and b!4080456 res!1667001) b!4080445))

(assert (= (and b!4080445 res!1666989) b!4080454))

(assert (= (and b!4080454 res!1666991) b!4080464))

(assert (= (and b!4080464 (not res!1666994)) b!4080448))

(assert (= (and b!4080448 (not res!1666996)) b!4080444))

(assert (= (and b!4080444 (not res!1666997)) b!4080460))

(assert (= (and b!4080460 (not res!1666988)) b!4080461))

(assert (= (and b!4080461 (not res!1666992)) b!4080451))

(assert (= (and b!4080451 (not res!1666999)) b!4080447))

(assert (= (and b!4080447 (not res!1666990)) b!4080458))

(assert (= (and start!385568 ((_ is Cons!43692) suffix!1518)) b!4080463))

(assert (= b!4080443 b!4080462))

(assert (= b!4080459 b!4080443))

(assert (= (and start!385568 ((_ is Cons!43693) rules!3870)) b!4080459))

(assert (= (and start!385568 ((_ is Cons!43692) p!2988)) b!4080450))

(assert (= (and start!385568 ((_ is Cons!43692) input!3411)) b!4080455))

(assert (= b!4080453 b!4080446))

(assert (= start!385568 b!4080453))

(declare-fun m!4688217 () Bool)

(assert (=> b!4080454 m!4688217))

(declare-fun m!4688219 () Bool)

(assert (=> b!4080454 m!4688219))

(declare-fun m!4688221 () Bool)

(assert (=> b!4080454 m!4688221))

(declare-fun m!4688223 () Bool)

(assert (=> b!4080454 m!4688223))

(declare-fun m!4688225 () Bool)

(assert (=> b!4080454 m!4688225))

(declare-fun m!4688227 () Bool)

(assert (=> b!4080451 m!4688227))

(declare-fun m!4688229 () Bool)

(assert (=> b!4080460 m!4688229))

(declare-fun m!4688231 () Bool)

(assert (=> b!4080452 m!4688231))

(declare-fun m!4688233 () Bool)

(assert (=> b!4080453 m!4688233))

(declare-fun m!4688235 () Bool)

(assert (=> b!4080453 m!4688235))

(declare-fun m!4688237 () Bool)

(assert (=> b!4080444 m!4688237))

(declare-fun m!4688239 () Bool)

(assert (=> b!4080444 m!4688239))

(declare-fun m!4688241 () Bool)

(assert (=> b!4080444 m!4688241))

(declare-fun m!4688243 () Bool)

(assert (=> b!4080444 m!4688243))

(declare-fun m!4688245 () Bool)

(assert (=> b!4080445 m!4688245))

(declare-fun m!4688247 () Bool)

(assert (=> b!4080443 m!4688247))

(declare-fun m!4688249 () Bool)

(assert (=> b!4080443 m!4688249))

(declare-fun m!4688251 () Bool)

(assert (=> b!4080461 m!4688251))

(declare-fun m!4688253 () Bool)

(assert (=> b!4080457 m!4688253))

(declare-fun m!4688255 () Bool)

(assert (=> b!4080447 m!4688255))

(declare-fun m!4688257 () Bool)

(assert (=> b!4080458 m!4688257))

(declare-fun m!4688259 () Bool)

(assert (=> b!4080449 m!4688259))

(declare-fun m!4688261 () Bool)

(assert (=> b!4080464 m!4688261))

(declare-fun m!4688263 () Bool)

(assert (=> b!4080464 m!4688263))

(declare-fun m!4688265 () Bool)

(assert (=> b!4080464 m!4688265))

(declare-fun m!4688267 () Bool)

(assert (=> b!4080456 m!4688267))

(check-sat (not b!4080451) b_and!313889 (not b!4080455) (not b!4080450) (not b_next!114533) b_and!313891 (not b!4080464) b_and!313887 (not b!4080457) (not b!4080443) b_and!313893 (not b!4080453) (not b_next!114535) (not b!4080449) (not b!4080444) (not b!4080454) (not b!4080445) tp_is_empty!20905 (not b!4080456) (not b_next!114531) (not b_next!114529) (not b!4080460) (not b!4080459) (not b!4080447) (not b!4080458) (not b!4080463) (not b!4080452) (not b!4080461))
(check-sat b_and!313889 (not b_next!114535) (not b_next!114533) b_and!313891 (not b_next!114531) b_and!313887 (not b_next!114529) b_and!313893)
