; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49280 () Bool)

(assert start!49280)

(declare-fun b!534725 () Bool)

(declare-fun b_free!14569 () Bool)

(declare-fun b_next!14585 () Bool)

(assert (=> b!534725 (= b_free!14569 (not b_next!14585))))

(declare-fun tp!170647 () Bool)

(declare-fun b_and!52283 () Bool)

(assert (=> b!534725 (= tp!170647 b_and!52283)))

(declare-fun b_free!14571 () Bool)

(declare-fun b_next!14587 () Bool)

(assert (=> b!534725 (= b_free!14571 (not b_next!14587))))

(declare-fun tp!170655 () Bool)

(declare-fun b_and!52285 () Bool)

(assert (=> b!534725 (= tp!170655 b_and!52285)))

(declare-fun b!534716 () Bool)

(declare-fun b_free!14573 () Bool)

(declare-fun b_next!14589 () Bool)

(assert (=> b!534716 (= b_free!14573 (not b_next!14589))))

(declare-fun tp!170654 () Bool)

(declare-fun b_and!52287 () Bool)

(assert (=> b!534716 (= tp!170654 b_and!52287)))

(declare-fun b_free!14575 () Bool)

(declare-fun b_next!14591 () Bool)

(assert (=> b!534716 (= b_free!14575 (not b_next!14591))))

(declare-fun tp!170651 () Bool)

(declare-fun b_and!52289 () Bool)

(assert (=> b!534716 (= tp!170651 b_and!52289)))

(declare-fun b!534701 () Bool)

(declare-fun e!322285 () Bool)

(declare-fun tp_is_empty!2913 () Bool)

(declare-fun tp!170652 () Bool)

(assert (=> b!534701 (= e!322285 (and tp_is_empty!2913 tp!170652))))

(declare-fun b!534702 () Bool)

(declare-datatypes ((Unit!9000 0))(
  ( (Unit!9001) )
))
(declare-fun e!322271 () Unit!9000)

(declare-fun Unit!9002 () Unit!9000)

(assert (=> b!534702 (= e!322271 Unit!9002)))

(assert (=> b!534702 false))

(declare-fun b!534703 () Bool)

(declare-fun e!322279 () Bool)

(declare-fun e!322282 () Bool)

(assert (=> b!534703 (= e!322279 e!322282)))

(declare-fun res!226082 () Bool)

(assert (=> b!534703 (=> (not res!226082) (not e!322282))))

(declare-datatypes ((C!3480 0))(
  ( (C!3481 (val!1966 Int)) )
))
(declare-datatypes ((List!5167 0))(
  ( (Nil!5157) (Cons!5157 (h!10558 C!3480) (t!74024 List!5167)) )
))
(declare-fun lt!220542 () List!5167)

(declare-fun lt!220554 () List!5167)

(assert (=> b!534703 (= res!226082 (= lt!220542 lt!220554))))

(declare-fun lt!220532 () List!5167)

(declare-fun suffix!1342 () List!5167)

(declare-fun ++!1433 (List!5167 List!5167) List!5167)

(assert (=> b!534703 (= lt!220542 (++!1433 lt!220532 suffix!1342))))

(declare-fun b!534704 () Bool)

(declare-fun e!322286 () Bool)

(assert (=> b!534704 (= e!322282 (not e!322286))))

(declare-fun res!226079 () Bool)

(assert (=> b!534704 (=> res!226079 e!322286)))

(declare-fun input!2705 () List!5167)

(declare-fun isPrefix!587 (List!5167 List!5167) Bool)

(assert (=> b!534704 (= res!226079 (not (isPrefix!587 input!2705 lt!220542)))))

(assert (=> b!534704 (isPrefix!587 lt!220532 lt!220542)))

(declare-fun lt!220549 () Unit!9000)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!438 (List!5167 List!5167) Unit!9000)

(assert (=> b!534704 (= lt!220549 (lemmaConcatTwoListThenFirstIsPrefix!438 lt!220532 suffix!1342))))

(assert (=> b!534704 (isPrefix!587 input!2705 lt!220554)))

(declare-fun lt!220553 () Unit!9000)

(assert (=> b!534704 (= lt!220553 (lemmaConcatTwoListThenFirstIsPrefix!438 input!2705 suffix!1342))))

(declare-fun e!322270 () Bool)

(assert (=> b!534704 e!322270))

(declare-fun res!226072 () Bool)

(assert (=> b!534704 (=> (not res!226072) (not e!322270))))

(declare-datatypes ((Regex!1279 0))(
  ( (ElementMatch!1279 (c!101842 C!3480)) (Concat!2248 (regOne!3070 Regex!1279) (regTwo!3070 Regex!1279)) (EmptyExpr!1279) (Star!1279 (reg!1608 Regex!1279)) (EmptyLang!1279) (Union!1279 (regOne!3071 Regex!1279) (regTwo!3071 Regex!1279)) )
))
(declare-datatypes ((List!5168 0))(
  ( (Nil!5158) (Cons!5158 (h!10559 (_ BitVec 16)) (t!74025 List!5168)) )
))
(declare-datatypes ((IArray!3325 0))(
  ( (IArray!3326 (innerList!1720 List!5167)) )
))
(declare-datatypes ((Conc!1662 0))(
  ( (Node!1662 (left!4331 Conc!1662) (right!4661 Conc!1662) (csize!3554 Int) (cheight!1873 Int)) (Leaf!2642 (xs!4299 IArray!3325) (csize!3555 Int)) (Empty!1662) )
))
(declare-datatypes ((BalanceConc!3332 0))(
  ( (BalanceConc!3333 (c!101843 Conc!1662)) )
))
(declare-datatypes ((TokenValue!969 0))(
  ( (FloatLiteralValue!1938 (text!7228 List!5168)) (TokenValueExt!968 (__x!3836 Int)) (Broken!4845 (value!31773 List!5168)) (Object!978) (End!969) (Def!969) (Underscore!969) (Match!969) (Else!969) (Error!969) (Case!969) (If!969) (Extends!969) (Abstract!969) (Class!969) (Val!969) (DelimiterValue!1938 (del!1029 List!5168)) (KeywordValue!975 (value!31774 List!5168)) (CommentValue!1938 (value!31775 List!5168)) (WhitespaceValue!1938 (value!31776 List!5168)) (IndentationValue!969 (value!31777 List!5168)) (String!6588) (Int32!969) (Broken!4846 (value!31778 List!5168)) (Boolean!970) (Unit!9003) (OperatorValue!972 (op!1029 List!5168)) (IdentifierValue!1938 (value!31779 List!5168)) (IdentifierValue!1939 (value!31780 List!5168)) (WhitespaceValue!1939 (value!31781 List!5168)) (True!1938) (False!1938) (Broken!4847 (value!31782 List!5168)) (Broken!4848 (value!31783 List!5168)) (True!1939) (RightBrace!969) (RightBracket!969) (Colon!969) (Null!969) (Comma!969) (LeftBracket!969) (False!1939) (LeftBrace!969) (ImaginaryLiteralValue!969 (text!7229 List!5168)) (StringLiteralValue!2907 (value!31784 List!5168)) (EOFValue!969 (value!31785 List!5168)) (IdentValue!969 (value!31786 List!5168)) (DelimiterValue!1939 (value!31787 List!5168)) (DedentValue!969 (value!31788 List!5168)) (NewLineValue!969 (value!31789 List!5168)) (IntegerValue!2907 (value!31790 (_ BitVec 32)) (text!7230 List!5168)) (IntegerValue!2908 (value!31791 Int) (text!7231 List!5168)) (Times!969) (Or!969) (Equal!969) (Minus!969) (Broken!4849 (value!31792 List!5168)) (And!969) (Div!969) (LessEqual!969) (Mod!969) (Concat!2249) (Not!969) (Plus!969) (SpaceValue!969 (value!31793 List!5168)) (IntegerValue!2909 (value!31794 Int) (text!7232 List!5168)) (StringLiteralValue!2908 (text!7233 List!5168)) (FloatLiteralValue!1939 (text!7234 List!5168)) (BytesLiteralValue!969 (value!31795 List!5168)) (CommentValue!1939 (value!31796 List!5168)) (StringLiteralValue!2909 (value!31797 List!5168)) (ErrorTokenValue!969 (msg!1030 List!5168)) )
))
(declare-datatypes ((String!6589 0))(
  ( (String!6590 (value!31798 String)) )
))
(declare-datatypes ((TokenValueInjection!1706 0))(
  ( (TokenValueInjection!1707 (toValue!1792 Int) (toChars!1651 Int)) )
))
(declare-datatypes ((Rule!1690 0))(
  ( (Rule!1691 (regex!945 Regex!1279) (tag!1207 String!6589) (isSeparator!945 Bool) (transformation!945 TokenValueInjection!1706)) )
))
(declare-datatypes ((Token!1626 0))(
  ( (Token!1627 (value!31799 TokenValue!969) (rule!1647 Rule!1690) (size!4160 Int) (originalCharacters!984 List!5167)) )
))
(declare-datatypes ((tuple2!6248 0))(
  ( (tuple2!6249 (_1!3388 Token!1626) (_2!3388 List!5167)) )
))
(declare-datatypes ((Option!1295 0))(
  ( (None!1294) (Some!1294 (v!16101 tuple2!6248)) )
))
(declare-fun lt!220537 () Option!1295)

(declare-fun lt!220539 () TokenValue!969)

(assert (=> b!534704 (= res!226072 (= (value!31799 (_1!3388 (v!16101 lt!220537))) lt!220539))))

(declare-fun lt!220547 () List!5167)

(declare-fun apply!1220 (TokenValueInjection!1706 BalanceConc!3332) TokenValue!969)

(declare-fun seqFromList!1143 (List!5167) BalanceConc!3332)

(assert (=> b!534704 (= lt!220539 (apply!1220 (transformation!945 (rule!1647 (_1!3388 (v!16101 lt!220537)))) (seqFromList!1143 lt!220547)))))

(declare-fun lt!220548 () Unit!9000)

(declare-fun token!491 () Token!1626)

(declare-fun lemmaInv!93 (TokenValueInjection!1706) Unit!9000)

(assert (=> b!534704 (= lt!220548 (lemmaInv!93 (transformation!945 (rule!1647 token!491))))))

(declare-fun lt!220543 () Unit!9000)

(assert (=> b!534704 (= lt!220543 (lemmaInv!93 (transformation!945 (rule!1647 (_1!3388 (v!16101 lt!220537))))))))

(declare-datatypes ((LexerInterface!831 0))(
  ( (LexerInterfaceExt!828 (__x!3837 Int)) (Lexer!829) )
))
(declare-fun thiss!22590 () LexerInterface!831)

(declare-fun ruleValid!165 (LexerInterface!831 Rule!1690) Bool)

(assert (=> b!534704 (ruleValid!165 thiss!22590 (rule!1647 token!491))))

(declare-datatypes ((List!5169 0))(
  ( (Nil!5159) (Cons!5159 (h!10560 Rule!1690) (t!74026 List!5169)) )
))
(declare-fun rules!3103 () List!5169)

(declare-fun lt!220541 () Unit!9000)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!24 (LexerInterface!831 Rule!1690 List!5169) Unit!9000)

(assert (=> b!534704 (= lt!220541 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!24 thiss!22590 (rule!1647 token!491) rules!3103))))

(assert (=> b!534704 (ruleValid!165 thiss!22590 (rule!1647 (_1!3388 (v!16101 lt!220537))))))

(declare-fun lt!220544 () Unit!9000)

(assert (=> b!534704 (= lt!220544 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!24 thiss!22590 (rule!1647 (_1!3388 (v!16101 lt!220537))) rules!3103))))

(assert (=> b!534704 (isPrefix!587 input!2705 input!2705)))

(declare-fun lt!220552 () Unit!9000)

(declare-fun lemmaIsPrefixRefl!327 (List!5167 List!5167) Unit!9000)

(assert (=> b!534704 (= lt!220552 (lemmaIsPrefixRefl!327 input!2705 input!2705))))

(declare-fun lt!220530 () List!5167)

(assert (=> b!534704 (= (_2!3388 (v!16101 lt!220537)) lt!220530)))

(declare-fun lt!220540 () Unit!9000)

(declare-fun lemmaSamePrefixThenSameSuffix!314 (List!5167 List!5167 List!5167 List!5167 List!5167) Unit!9000)

(assert (=> b!534704 (= lt!220540 (lemmaSamePrefixThenSameSuffix!314 lt!220547 (_2!3388 (v!16101 lt!220537)) lt!220547 lt!220530 input!2705))))

(declare-fun getSuffix!110 (List!5167 List!5167) List!5167)

(assert (=> b!534704 (= lt!220530 (getSuffix!110 input!2705 lt!220547))))

(assert (=> b!534704 (isPrefix!587 lt!220547 (++!1433 lt!220547 (_2!3388 (v!16101 lt!220537))))))

(declare-fun lt!220536 () Unit!9000)

(assert (=> b!534704 (= lt!220536 (lemmaConcatTwoListThenFirstIsPrefix!438 lt!220547 (_2!3388 (v!16101 lt!220537))))))

(declare-fun lt!220555 () Unit!9000)

(declare-fun lemmaCharactersSize!24 (Token!1626) Unit!9000)

(assert (=> b!534704 (= lt!220555 (lemmaCharactersSize!24 token!491))))

(declare-fun lt!220546 () Unit!9000)

(assert (=> b!534704 (= lt!220546 (lemmaCharactersSize!24 (_1!3388 (v!16101 lt!220537))))))

(declare-fun lt!220550 () Unit!9000)

(assert (=> b!534704 (= lt!220550 e!322271)))

(declare-fun c!101841 () Bool)

(declare-fun lt!220551 () Int)

(declare-fun lt!220531 () Int)

(assert (=> b!534704 (= c!101841 (> lt!220551 lt!220531))))

(declare-fun size!4161 (List!5167) Int)

(assert (=> b!534704 (= lt!220531 (size!4161 lt!220532))))

(assert (=> b!534704 (= lt!220551 (size!4161 lt!220547))))

(declare-fun list!2145 (BalanceConc!3332) List!5167)

(declare-fun charsOf!574 (Token!1626) BalanceConc!3332)

(assert (=> b!534704 (= lt!220547 (list!2145 (charsOf!574 (_1!3388 (v!16101 lt!220537)))))))

(assert (=> b!534704 (= lt!220537 (Some!1294 (v!16101 lt!220537)))))

(declare-fun lt!220545 () Unit!9000)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!30 (List!5167 List!5167 List!5167 List!5167) Unit!9000)

(assert (=> b!534704 (= lt!220545 (lemmaConcatSameAndSameSizesThenSameLists!30 lt!220532 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!534705 () Bool)

(declare-fun Unit!9004 () Unit!9000)

(assert (=> b!534705 (= e!322271 Unit!9004)))

(declare-fun b!534706 () Bool)

(declare-fun e!322290 () Bool)

(assert (=> b!534706 (= e!322290 (and (= (size!4160 token!491) lt!220531) (= (originalCharacters!984 token!491) lt!220532)))))

(declare-fun e!322275 () Bool)

(declare-fun e!322288 () Bool)

(declare-fun b!534707 () Bool)

(declare-fun tp!170648 () Bool)

(declare-fun inv!6472 (String!6589) Bool)

(declare-fun inv!6475 (TokenValueInjection!1706) Bool)

(assert (=> b!534707 (= e!322275 (and tp!170648 (inv!6472 (tag!1207 (rule!1647 token!491))) (inv!6475 (transformation!945 (rule!1647 token!491))) e!322288))))

(declare-fun b!534708 () Bool)

(declare-fun e!322273 () Bool)

(declare-fun e!322272 () Bool)

(declare-fun tp!170653 () Bool)

(assert (=> b!534708 (= e!322273 (and e!322272 tp!170653))))

(declare-fun b!534709 () Bool)

(declare-fun e!322284 () Bool)

(declare-fun e!322287 () Bool)

(assert (=> b!534709 (= e!322284 e!322287)))

(declare-fun res!226071 () Bool)

(assert (=> b!534709 (=> (not res!226071) (not e!322287))))

(assert (=> b!534709 (= res!226071 (= lt!220532 input!2705))))

(assert (=> b!534709 (= lt!220532 (list!2145 (charsOf!574 token!491)))))

(declare-fun b!534710 () Bool)

(assert (=> b!534710 (= e!322270 (and (= (size!4160 (_1!3388 (v!16101 lt!220537))) lt!220551) (= (originalCharacters!984 (_1!3388 (v!16101 lt!220537))) lt!220547) (= (v!16101 lt!220537) (tuple2!6249 (Token!1627 lt!220539 (rule!1647 (_1!3388 (v!16101 lt!220537))) lt!220551 lt!220547) lt!220530))))))

(declare-fun res!226084 () Bool)

(assert (=> start!49280 (=> (not res!226084) (not e!322284))))

(get-info :version)

(assert (=> start!49280 (= res!226084 ((_ is Lexer!829) thiss!22590))))

(assert (=> start!49280 e!322284))

(assert (=> start!49280 e!322285))

(assert (=> start!49280 e!322273))

(declare-fun e!322281 () Bool)

(declare-fun inv!6476 (Token!1626) Bool)

(assert (=> start!49280 (and (inv!6476 token!491) e!322281)))

(assert (=> start!49280 true))

(declare-fun e!322289 () Bool)

(assert (=> start!49280 e!322289))

(declare-fun b!534711 () Bool)

(assert (=> b!534711 (= e!322286 (>= (size!4161 lt!220554) lt!220531))))

(assert (=> b!534711 e!322290))

(declare-fun res!226076 () Bool)

(assert (=> b!534711 (=> (not res!226076) (not e!322290))))

(declare-fun lt!220538 () List!5167)

(assert (=> b!534711 (= res!226076 (= suffix!1342 lt!220538))))

(declare-fun lt!220533 () Unit!9000)

(assert (=> b!534711 (= lt!220533 (lemmaSamePrefixThenSameSuffix!314 lt!220532 suffix!1342 lt!220532 lt!220538 lt!220554))))

(assert (=> b!534711 (= lt!220538 (getSuffix!110 lt!220554 lt!220532))))

(declare-fun b!534712 () Bool)

(declare-fun e!322278 () Bool)

(assert (=> b!534712 (= e!322278 e!322279)))

(declare-fun res!226083 () Bool)

(assert (=> b!534712 (=> (not res!226083) (not e!322279))))

(assert (=> b!534712 (= res!226083 ((_ is Some!1294) lt!220537))))

(declare-fun maxPrefix!529 (LexerInterface!831 List!5169 List!5167) Option!1295)

(assert (=> b!534712 (= lt!220537 (maxPrefix!529 thiss!22590 rules!3103 input!2705))))

(declare-fun b!534713 () Bool)

(declare-fun res!226075 () Bool)

(assert (=> b!534713 (=> (not res!226075) (not e!322284))))

(declare-fun isEmpty!3730 (List!5167) Bool)

(assert (=> b!534713 (= res!226075 (not (isEmpty!3730 input!2705)))))

(declare-fun e!322280 () Bool)

(declare-fun tp!170656 () Bool)

(declare-fun b!534714 () Bool)

(assert (=> b!534714 (= e!322272 (and tp!170656 (inv!6472 (tag!1207 (h!10560 rules!3103))) (inv!6475 (transformation!945 (h!10560 rules!3103))) e!322280))))

(declare-fun tp!170649 () Bool)

(declare-fun b!534715 () Bool)

(declare-fun inv!21 (TokenValue!969) Bool)

(assert (=> b!534715 (= e!322281 (and (inv!21 (value!31799 token!491)) e!322275 tp!170649))))

(assert (=> b!534716 (= e!322288 (and tp!170654 tp!170651))))

(declare-fun b!534717 () Bool)

(declare-fun res!226080 () Bool)

(assert (=> b!534717 (=> (not res!226080) (not e!322290))))

(assert (=> b!534717 (= res!226080 (= (value!31799 token!491) (apply!1220 (transformation!945 (rule!1647 token!491)) (seqFromList!1143 lt!220532))))))

(declare-fun b!534718 () Bool)

(declare-fun res!226077 () Bool)

(assert (=> b!534718 (=> (not res!226077) (not e!322270))))

(assert (=> b!534718 (= res!226077 (= (size!4160 (_1!3388 (v!16101 lt!220537))) (size!4161 (originalCharacters!984 (_1!3388 (v!16101 lt!220537))))))))

(declare-fun b!534719 () Bool)

(declare-fun tp!170650 () Bool)

(assert (=> b!534719 (= e!322289 (and tp_is_empty!2913 tp!170650))))

(declare-fun b!534720 () Bool)

(declare-fun e!322274 () Bool)

(assert (=> b!534720 (= e!322287 e!322274)))

(declare-fun res!226074 () Bool)

(assert (=> b!534720 (=> (not res!226074) (not e!322274))))

(declare-fun lt!220535 () Option!1295)

(declare-fun isDefined!1107 (Option!1295) Bool)

(assert (=> b!534720 (= res!226074 (isDefined!1107 lt!220535))))

(assert (=> b!534720 (= lt!220535 (maxPrefix!529 thiss!22590 rules!3103 lt!220554))))

(assert (=> b!534720 (= lt!220554 (++!1433 input!2705 suffix!1342))))

(declare-fun b!534721 () Bool)

(declare-fun res!226073 () Bool)

(assert (=> b!534721 (=> (not res!226073) (not e!322290))))

(assert (=> b!534721 (= res!226073 (= (size!4160 token!491) (size!4161 (originalCharacters!984 token!491))))))

(declare-fun b!534722 () Bool)

(declare-fun res!226070 () Bool)

(assert (=> b!534722 (=> (not res!226070) (not e!322284))))

(declare-fun isEmpty!3731 (List!5169) Bool)

(assert (=> b!534722 (= res!226070 (not (isEmpty!3731 rules!3103)))))

(declare-fun b!534723 () Bool)

(assert (=> b!534723 (= e!322274 e!322278)))

(declare-fun res!226081 () Bool)

(assert (=> b!534723 (=> (not res!226081) (not e!322278))))

(declare-fun lt!220534 () tuple2!6248)

(assert (=> b!534723 (= res!226081 (and (= (_1!3388 lt!220534) token!491) (= (_2!3388 lt!220534) suffix!1342)))))

(declare-fun get!1932 (Option!1295) tuple2!6248)

(assert (=> b!534723 (= lt!220534 (get!1932 lt!220535))))

(declare-fun b!534724 () Bool)

(declare-fun res!226078 () Bool)

(assert (=> b!534724 (=> (not res!226078) (not e!322284))))

(declare-fun rulesInvariant!794 (LexerInterface!831 List!5169) Bool)

(assert (=> b!534724 (= res!226078 (rulesInvariant!794 thiss!22590 rules!3103))))

(assert (=> b!534725 (= e!322280 (and tp!170647 tp!170655))))

(assert (= (and start!49280 res!226084) b!534722))

(assert (= (and b!534722 res!226070) b!534724))

(assert (= (and b!534724 res!226078) b!534713))

(assert (= (and b!534713 res!226075) b!534709))

(assert (= (and b!534709 res!226071) b!534720))

(assert (= (and b!534720 res!226074) b!534723))

(assert (= (and b!534723 res!226081) b!534712))

(assert (= (and b!534712 res!226083) b!534703))

(assert (= (and b!534703 res!226082) b!534704))

(assert (= (and b!534704 c!101841) b!534702))

(assert (= (and b!534704 (not c!101841)) b!534705))

(assert (= (and b!534704 res!226072) b!534718))

(assert (= (and b!534718 res!226077) b!534710))

(assert (= (and b!534704 (not res!226079)) b!534711))

(assert (= (and b!534711 res!226076) b!534717))

(assert (= (and b!534717 res!226080) b!534721))

(assert (= (and b!534721 res!226073) b!534706))

(assert (= (and start!49280 ((_ is Cons!5157) suffix!1342)) b!534701))

(assert (= b!534714 b!534725))

(assert (= b!534708 b!534714))

(assert (= (and start!49280 ((_ is Cons!5159) rules!3103)) b!534708))

(assert (= b!534707 b!534716))

(assert (= b!534715 b!534707))

(assert (= start!49280 b!534715))

(assert (= (and start!49280 ((_ is Cons!5157) input!2705)) b!534719))

(declare-fun m!780425 () Bool)

(assert (=> b!534724 m!780425))

(declare-fun m!780427 () Bool)

(assert (=> b!534717 m!780427))

(assert (=> b!534717 m!780427))

(declare-fun m!780429 () Bool)

(assert (=> b!534717 m!780429))

(declare-fun m!780431 () Bool)

(assert (=> b!534720 m!780431))

(declare-fun m!780433 () Bool)

(assert (=> b!534720 m!780433))

(declare-fun m!780435 () Bool)

(assert (=> b!534720 m!780435))

(declare-fun m!780437 () Bool)

(assert (=> b!534703 m!780437))

(declare-fun m!780439 () Bool)

(assert (=> b!534709 m!780439))

(assert (=> b!534709 m!780439))

(declare-fun m!780441 () Bool)

(assert (=> b!534709 m!780441))

(declare-fun m!780443 () Bool)

(assert (=> b!534718 m!780443))

(declare-fun m!780445 () Bool)

(assert (=> b!534721 m!780445))

(declare-fun m!780447 () Bool)

(assert (=> b!534723 m!780447))

(declare-fun m!780449 () Bool)

(assert (=> b!534722 m!780449))

(declare-fun m!780451 () Bool)

(assert (=> b!534704 m!780451))

(declare-fun m!780453 () Bool)

(assert (=> b!534704 m!780453))

(declare-fun m!780455 () Bool)

(assert (=> b!534704 m!780455))

(declare-fun m!780457 () Bool)

(assert (=> b!534704 m!780457))

(declare-fun m!780459 () Bool)

(assert (=> b!534704 m!780459))

(declare-fun m!780461 () Bool)

(assert (=> b!534704 m!780461))

(declare-fun m!780463 () Bool)

(assert (=> b!534704 m!780463))

(declare-fun m!780465 () Bool)

(assert (=> b!534704 m!780465))

(declare-fun m!780467 () Bool)

(assert (=> b!534704 m!780467))

(declare-fun m!780469 () Bool)

(assert (=> b!534704 m!780469))

(declare-fun m!780471 () Bool)

(assert (=> b!534704 m!780471))

(declare-fun m!780473 () Bool)

(assert (=> b!534704 m!780473))

(declare-fun m!780475 () Bool)

(assert (=> b!534704 m!780475))

(assert (=> b!534704 m!780459))

(declare-fun m!780477 () Bool)

(assert (=> b!534704 m!780477))

(declare-fun m!780479 () Bool)

(assert (=> b!534704 m!780479))

(declare-fun m!780481 () Bool)

(assert (=> b!534704 m!780481))

(assert (=> b!534704 m!780451))

(declare-fun m!780483 () Bool)

(assert (=> b!534704 m!780483))

(declare-fun m!780485 () Bool)

(assert (=> b!534704 m!780485))

(declare-fun m!780487 () Bool)

(assert (=> b!534704 m!780487))

(declare-fun m!780489 () Bool)

(assert (=> b!534704 m!780489))

(declare-fun m!780491 () Bool)

(assert (=> b!534704 m!780491))

(declare-fun m!780493 () Bool)

(assert (=> b!534704 m!780493))

(declare-fun m!780495 () Bool)

(assert (=> b!534704 m!780495))

(assert (=> b!534704 m!780461))

(declare-fun m!780497 () Bool)

(assert (=> b!534704 m!780497))

(declare-fun m!780499 () Bool)

(assert (=> b!534704 m!780499))

(declare-fun m!780501 () Bool)

(assert (=> b!534704 m!780501))

(declare-fun m!780503 () Bool)

(assert (=> b!534704 m!780503))

(declare-fun m!780505 () Bool)

(assert (=> start!49280 m!780505))

(declare-fun m!780507 () Bool)

(assert (=> b!534712 m!780507))

(declare-fun m!780509 () Bool)

(assert (=> b!534714 m!780509))

(declare-fun m!780511 () Bool)

(assert (=> b!534714 m!780511))

(declare-fun m!780513 () Bool)

(assert (=> b!534713 m!780513))

(declare-fun m!780515 () Bool)

(assert (=> b!534715 m!780515))

(declare-fun m!780517 () Bool)

(assert (=> b!534707 m!780517))

(declare-fun m!780519 () Bool)

(assert (=> b!534707 m!780519))

(declare-fun m!780521 () Bool)

(assert (=> b!534711 m!780521))

(declare-fun m!780523 () Bool)

(assert (=> b!534711 m!780523))

(declare-fun m!780525 () Bool)

(assert (=> b!534711 m!780525))

(check-sat (not b_next!14585) (not b!534703) (not b!534715) b_and!52285 (not b!534713) (not b!534718) (not b!534717) (not b!534708) (not b!534714) (not b!534701) (not b!534709) b_and!52289 (not b!534712) (not b_next!14591) (not b!534704) (not b!534723) b_and!52283 tp_is_empty!2913 (not b_next!14589) (not b!534719) (not b!534720) (not start!49280) (not b!534721) (not b!534724) (not b_next!14587) (not b!534722) (not b!534707) b_and!52287 (not b!534711))
(check-sat (not b_next!14585) b_and!52285 (not b_next!14587) b_and!52287 b_and!52289 (not b_next!14591) b_and!52283 (not b_next!14589))
(get-model)

(declare-fun d!189236 () Bool)

(assert (=> d!189236 (= (inv!6472 (tag!1207 (h!10560 rules!3103))) (= (mod (str.len (value!31798 (tag!1207 (h!10560 rules!3103)))) 2) 0))))

(assert (=> b!534714 d!189236))

(declare-fun d!189238 () Bool)

(declare-fun res!226091 () Bool)

(declare-fun e!322293 () Bool)

(assert (=> d!189238 (=> (not res!226091) (not e!322293))))

(declare-fun semiInverseModEq!375 (Int Int) Bool)

(assert (=> d!189238 (= res!226091 (semiInverseModEq!375 (toChars!1651 (transformation!945 (h!10560 rules!3103))) (toValue!1792 (transformation!945 (h!10560 rules!3103)))))))

(assert (=> d!189238 (= (inv!6475 (transformation!945 (h!10560 rules!3103))) e!322293)))

(declare-fun b!534728 () Bool)

(declare-fun equivClasses!358 (Int Int) Bool)

(assert (=> b!534728 (= e!322293 (equivClasses!358 (toChars!1651 (transformation!945 (h!10560 rules!3103))) (toValue!1792 (transformation!945 (h!10560 rules!3103)))))))

(assert (= (and d!189238 res!226091) b!534728))

(declare-fun m!780527 () Bool)

(assert (=> d!189238 m!780527))

(declare-fun m!780529 () Bool)

(assert (=> b!534728 m!780529))

(assert (=> b!534714 d!189238))

(declare-fun b!534737 () Bool)

(declare-fun e!322298 () List!5167)

(assert (=> b!534737 (= e!322298 suffix!1342)))

(declare-fun b!534739 () Bool)

(declare-fun res!226100 () Bool)

(declare-fun e!322299 () Bool)

(assert (=> b!534739 (=> (not res!226100) (not e!322299))))

(declare-fun lt!220558 () List!5167)

(assert (=> b!534739 (= res!226100 (= (size!4161 lt!220558) (+ (size!4161 lt!220532) (size!4161 suffix!1342))))))

(declare-fun b!534740 () Bool)

(assert (=> b!534740 (= e!322299 (or (not (= suffix!1342 Nil!5157)) (= lt!220558 lt!220532)))))

(declare-fun b!534738 () Bool)

(assert (=> b!534738 (= e!322298 (Cons!5157 (h!10558 lt!220532) (++!1433 (t!74024 lt!220532) suffix!1342)))))

(declare-fun d!189240 () Bool)

(assert (=> d!189240 e!322299))

(declare-fun res!226101 () Bool)

(assert (=> d!189240 (=> (not res!226101) (not e!322299))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!909 (List!5167) (InoxSet C!3480))

(assert (=> d!189240 (= res!226101 (= (content!909 lt!220558) ((_ map or) (content!909 lt!220532) (content!909 suffix!1342))))))

(assert (=> d!189240 (= lt!220558 e!322298)))

(declare-fun c!101846 () Bool)

(assert (=> d!189240 (= c!101846 ((_ is Nil!5157) lt!220532))))

(assert (=> d!189240 (= (++!1433 lt!220532 suffix!1342) lt!220558)))

(assert (= (and d!189240 c!101846) b!534737))

(assert (= (and d!189240 (not c!101846)) b!534738))

(assert (= (and d!189240 res!226101) b!534739))

(assert (= (and b!534739 res!226100) b!534740))

(declare-fun m!780531 () Bool)

(assert (=> b!534739 m!780531))

(assert (=> b!534739 m!780479))

(declare-fun m!780533 () Bool)

(assert (=> b!534739 m!780533))

(declare-fun m!780535 () Bool)

(assert (=> b!534738 m!780535))

(declare-fun m!780537 () Bool)

(assert (=> d!189240 m!780537))

(declare-fun m!780539 () Bool)

(assert (=> d!189240 m!780539))

(declare-fun m!780541 () Bool)

(assert (=> d!189240 m!780541))

(assert (=> b!534703 d!189240))

(declare-fun d!189242 () Bool)

(assert (=> d!189242 (= (size!4160 (_1!3388 (v!16101 lt!220537))) (size!4161 (originalCharacters!984 (_1!3388 (v!16101 lt!220537)))))))

(declare-fun Unit!9008 () Unit!9000)

(assert (=> d!189242 (= (lemmaCharactersSize!24 (_1!3388 (v!16101 lt!220537))) Unit!9008)))

(declare-fun bs!67282 () Bool)

(assert (= bs!67282 d!189242))

(assert (=> bs!67282 m!780443))

(assert (=> b!534704 d!189242))

(declare-fun d!189244 () Bool)

(assert (=> d!189244 (isPrefix!587 input!2705 input!2705)))

(declare-fun lt!220561 () Unit!9000)

(declare-fun choose!3768 (List!5167 List!5167) Unit!9000)

(assert (=> d!189244 (= lt!220561 (choose!3768 input!2705 input!2705))))

(assert (=> d!189244 (= (lemmaIsPrefixRefl!327 input!2705 input!2705) lt!220561)))

(declare-fun bs!67283 () Bool)

(assert (= bs!67283 d!189244))

(assert (=> bs!67283 m!780501))

(declare-fun m!780543 () Bool)

(assert (=> bs!67283 m!780543))

(assert (=> b!534704 d!189244))

(declare-fun d!189252 () Bool)

(assert (=> d!189252 (isPrefix!587 lt!220547 (++!1433 lt!220547 (_2!3388 (v!16101 lt!220537))))))

(declare-fun lt!220564 () Unit!9000)

(declare-fun choose!3769 (List!5167 List!5167) Unit!9000)

(assert (=> d!189252 (= lt!220564 (choose!3769 lt!220547 (_2!3388 (v!16101 lt!220537))))))

(assert (=> d!189252 (= (lemmaConcatTwoListThenFirstIsPrefix!438 lt!220547 (_2!3388 (v!16101 lt!220537))) lt!220564)))

(declare-fun bs!67284 () Bool)

(assert (= bs!67284 d!189252))

(assert (=> bs!67284 m!780459))

(assert (=> bs!67284 m!780459))

(assert (=> bs!67284 m!780477))

(declare-fun m!780555 () Bool)

(assert (=> bs!67284 m!780555))

(assert (=> b!534704 d!189252))

(declare-fun d!189258 () Bool)

(declare-fun e!322314 () Bool)

(assert (=> d!189258 e!322314))

(declare-fun res!226113 () Bool)

(assert (=> d!189258 (=> (not res!226113) (not e!322314))))

(assert (=> d!189258 (= res!226113 (semiInverseModEq!375 (toChars!1651 (transformation!945 (rule!1647 token!491))) (toValue!1792 (transformation!945 (rule!1647 token!491)))))))

(declare-fun Unit!9009 () Unit!9000)

(assert (=> d!189258 (= (lemmaInv!93 (transformation!945 (rule!1647 token!491))) Unit!9009)))

(declare-fun b!534763 () Bool)

(assert (=> b!534763 (= e!322314 (equivClasses!358 (toChars!1651 (transformation!945 (rule!1647 token!491))) (toValue!1792 (transformation!945 (rule!1647 token!491)))))))

(assert (= (and d!189258 res!226113) b!534763))

(declare-fun m!780567 () Bool)

(assert (=> d!189258 m!780567))

(declare-fun m!780569 () Bool)

(assert (=> b!534763 m!780569))

(assert (=> b!534704 d!189258))

(declare-fun d!189266 () Bool)

(assert (=> d!189266 (= (size!4160 token!491) (size!4161 (originalCharacters!984 token!491)))))

(declare-fun Unit!9010 () Unit!9000)

(assert (=> d!189266 (= (lemmaCharactersSize!24 token!491) Unit!9010)))

(declare-fun bs!67286 () Bool)

(assert (= bs!67286 d!189266))

(assert (=> bs!67286 m!780445))

(assert (=> b!534704 d!189266))

(declare-fun d!189268 () Bool)

(declare-fun lt!220576 () Int)

(assert (=> d!189268 (>= lt!220576 0)))

(declare-fun e!322321 () Int)

(assert (=> d!189268 (= lt!220576 e!322321)))

(declare-fun c!101855 () Bool)

(assert (=> d!189268 (= c!101855 ((_ is Nil!5157) lt!220532))))

(assert (=> d!189268 (= (size!4161 lt!220532) lt!220576)))

(declare-fun b!534775 () Bool)

(assert (=> b!534775 (= e!322321 0)))

(declare-fun b!534776 () Bool)

(assert (=> b!534776 (= e!322321 (+ 1 (size!4161 (t!74024 lt!220532))))))

(assert (= (and d!189268 c!101855) b!534775))

(assert (= (and d!189268 (not c!101855)) b!534776))

(declare-fun m!780583 () Bool)

(assert (=> b!534776 m!780583))

(assert (=> b!534704 d!189268))

(declare-fun d!189276 () Bool)

(declare-fun lt!220577 () Int)

(assert (=> d!189276 (>= lt!220577 0)))

(declare-fun e!322325 () Int)

(assert (=> d!189276 (= lt!220577 e!322325)))

(declare-fun c!101856 () Bool)

(assert (=> d!189276 (= c!101856 ((_ is Nil!5157) lt!220547))))

(assert (=> d!189276 (= (size!4161 lt!220547) lt!220577)))

(declare-fun b!534779 () Bool)

(assert (=> b!534779 (= e!322325 0)))

(declare-fun b!534780 () Bool)

(assert (=> b!534780 (= e!322325 (+ 1 (size!4161 (t!74024 lt!220547))))))

(assert (= (and d!189276 c!101856) b!534779))

(assert (= (and d!189276 (not c!101856)) b!534780))

(declare-fun m!780587 () Bool)

(assert (=> b!534780 m!780587))

(assert (=> b!534704 d!189276))

(declare-fun b!534805 () Bool)

(declare-fun e!322346 () Bool)

(declare-fun e!322344 () Bool)

(assert (=> b!534805 (= e!322346 e!322344)))

(declare-fun res!226138 () Bool)

(assert (=> b!534805 (=> (not res!226138) (not e!322344))))

(assert (=> b!534805 (= res!226138 (not ((_ is Nil!5157) lt!220542)))))

(declare-fun b!534806 () Bool)

(declare-fun res!226139 () Bool)

(assert (=> b!534806 (=> (not res!226139) (not e!322344))))

(declare-fun head!1174 (List!5167) C!3480)

(assert (=> b!534806 (= res!226139 (= (head!1174 input!2705) (head!1174 lt!220542)))))

(declare-fun b!534808 () Bool)

(declare-fun e!322345 () Bool)

(assert (=> b!534808 (= e!322345 (>= (size!4161 lt!220542) (size!4161 input!2705)))))

(declare-fun d!189280 () Bool)

(assert (=> d!189280 e!322345))

(declare-fun res!226137 () Bool)

(assert (=> d!189280 (=> res!226137 e!322345)))

(declare-fun lt!220584 () Bool)

(assert (=> d!189280 (= res!226137 (not lt!220584))))

(assert (=> d!189280 (= lt!220584 e!322346)))

(declare-fun res!226140 () Bool)

(assert (=> d!189280 (=> res!226140 e!322346)))

(assert (=> d!189280 (= res!226140 ((_ is Nil!5157) input!2705))))

(assert (=> d!189280 (= (isPrefix!587 input!2705 lt!220542) lt!220584)))

(declare-fun b!534807 () Bool)

(declare-fun tail!703 (List!5167) List!5167)

(assert (=> b!534807 (= e!322344 (isPrefix!587 (tail!703 input!2705) (tail!703 lt!220542)))))

(assert (= (and d!189280 (not res!226140)) b!534805))

(assert (= (and b!534805 res!226138) b!534806))

(assert (= (and b!534806 res!226139) b!534807))

(assert (= (and d!189280 (not res!226137)) b!534808))

(declare-fun m!780611 () Bool)

(assert (=> b!534806 m!780611))

(declare-fun m!780613 () Bool)

(assert (=> b!534806 m!780613))

(declare-fun m!780615 () Bool)

(assert (=> b!534808 m!780615))

(declare-fun m!780617 () Bool)

(assert (=> b!534808 m!780617))

(declare-fun m!780619 () Bool)

(assert (=> b!534807 m!780619))

(declare-fun m!780621 () Bool)

(assert (=> b!534807 m!780621))

(assert (=> b!534807 m!780619))

(assert (=> b!534807 m!780621))

(declare-fun m!780623 () Bool)

(assert (=> b!534807 m!780623))

(assert (=> b!534704 d!189280))

(declare-fun d!189292 () Bool)

(declare-fun fromListB!511 (List!5167) BalanceConc!3332)

(assert (=> d!189292 (= (seqFromList!1143 lt!220547) (fromListB!511 lt!220547))))

(declare-fun bs!67290 () Bool)

(assert (= bs!67290 d!189292))

(declare-fun m!780637 () Bool)

(assert (=> bs!67290 m!780637))

(assert (=> b!534704 d!189292))

(declare-fun b!534811 () Bool)

(declare-fun e!322351 () Bool)

(declare-fun e!322349 () Bool)

(assert (=> b!534811 (= e!322351 e!322349)))

(declare-fun res!226143 () Bool)

(assert (=> b!534811 (=> (not res!226143) (not e!322349))))

(assert (=> b!534811 (= res!226143 (not ((_ is Nil!5157) (++!1433 lt!220547 (_2!3388 (v!16101 lt!220537))))))))

(declare-fun b!534812 () Bool)

(declare-fun res!226144 () Bool)

(assert (=> b!534812 (=> (not res!226144) (not e!322349))))

(assert (=> b!534812 (= res!226144 (= (head!1174 lt!220547) (head!1174 (++!1433 lt!220547 (_2!3388 (v!16101 lt!220537))))))))

(declare-fun b!534814 () Bool)

(declare-fun e!322350 () Bool)

(assert (=> b!534814 (= e!322350 (>= (size!4161 (++!1433 lt!220547 (_2!3388 (v!16101 lt!220537)))) (size!4161 lt!220547)))))

(declare-fun d!189298 () Bool)

(assert (=> d!189298 e!322350))

(declare-fun res!226142 () Bool)

(assert (=> d!189298 (=> res!226142 e!322350)))

(declare-fun lt!220591 () Bool)

(assert (=> d!189298 (= res!226142 (not lt!220591))))

(assert (=> d!189298 (= lt!220591 e!322351)))

(declare-fun res!226145 () Bool)

(assert (=> d!189298 (=> res!226145 e!322351)))

(assert (=> d!189298 (= res!226145 ((_ is Nil!5157) lt!220547))))

(assert (=> d!189298 (= (isPrefix!587 lt!220547 (++!1433 lt!220547 (_2!3388 (v!16101 lt!220537)))) lt!220591)))

(declare-fun b!534813 () Bool)

(assert (=> b!534813 (= e!322349 (isPrefix!587 (tail!703 lt!220547) (tail!703 (++!1433 lt!220547 (_2!3388 (v!16101 lt!220537))))))))

(assert (= (and d!189298 (not res!226145)) b!534811))

(assert (= (and b!534811 res!226143) b!534812))

(assert (= (and b!534812 res!226144) b!534813))

(assert (= (and d!189298 (not res!226142)) b!534814))

(declare-fun m!780639 () Bool)

(assert (=> b!534812 m!780639))

(assert (=> b!534812 m!780459))

(declare-fun m!780641 () Bool)

(assert (=> b!534812 m!780641))

(assert (=> b!534814 m!780459))

(declare-fun m!780643 () Bool)

(assert (=> b!534814 m!780643))

(assert (=> b!534814 m!780487))

(declare-fun m!780645 () Bool)

(assert (=> b!534813 m!780645))

(assert (=> b!534813 m!780459))

(declare-fun m!780647 () Bool)

(assert (=> b!534813 m!780647))

(assert (=> b!534813 m!780645))

(assert (=> b!534813 m!780647))

(declare-fun m!780649 () Bool)

(assert (=> b!534813 m!780649))

(assert (=> b!534704 d!189298))

(declare-fun d!189300 () Bool)

(declare-fun e!322355 () Bool)

(assert (=> d!189300 e!322355))

(declare-fun res!226152 () Bool)

(assert (=> d!189300 (=> (not res!226152) (not e!322355))))

(assert (=> d!189300 (= res!226152 (semiInverseModEq!375 (toChars!1651 (transformation!945 (rule!1647 (_1!3388 (v!16101 lt!220537))))) (toValue!1792 (transformation!945 (rule!1647 (_1!3388 (v!16101 lt!220537)))))))))

(declare-fun Unit!9012 () Unit!9000)

(assert (=> d!189300 (= (lemmaInv!93 (transformation!945 (rule!1647 (_1!3388 (v!16101 lt!220537))))) Unit!9012)))

(declare-fun b!534821 () Bool)

(assert (=> b!534821 (= e!322355 (equivClasses!358 (toChars!1651 (transformation!945 (rule!1647 (_1!3388 (v!16101 lt!220537))))) (toValue!1792 (transformation!945 (rule!1647 (_1!3388 (v!16101 lt!220537)))))))))

(assert (= (and d!189300 res!226152) b!534821))

(declare-fun m!780655 () Bool)

(assert (=> d!189300 m!780655))

(declare-fun m!780657 () Bool)

(assert (=> b!534821 m!780657))

(assert (=> b!534704 d!189300))

(declare-fun b!534822 () Bool)

(declare-fun e!322358 () Bool)

(declare-fun e!322356 () Bool)

(assert (=> b!534822 (= e!322358 e!322356)))

(declare-fun res!226154 () Bool)

(assert (=> b!534822 (=> (not res!226154) (not e!322356))))

(assert (=> b!534822 (= res!226154 (not ((_ is Nil!5157) lt!220554)))))

(declare-fun b!534823 () Bool)

(declare-fun res!226155 () Bool)

(assert (=> b!534823 (=> (not res!226155) (not e!322356))))

(assert (=> b!534823 (= res!226155 (= (head!1174 input!2705) (head!1174 lt!220554)))))

(declare-fun b!534825 () Bool)

(declare-fun e!322357 () Bool)

(assert (=> b!534825 (= e!322357 (>= (size!4161 lt!220554) (size!4161 input!2705)))))

(declare-fun d!189304 () Bool)

(assert (=> d!189304 e!322357))

(declare-fun res!226153 () Bool)

(assert (=> d!189304 (=> res!226153 e!322357)))

(declare-fun lt!220592 () Bool)

(assert (=> d!189304 (= res!226153 (not lt!220592))))

(assert (=> d!189304 (= lt!220592 e!322358)))

(declare-fun res!226156 () Bool)

(assert (=> d!189304 (=> res!226156 e!322358)))

(assert (=> d!189304 (= res!226156 ((_ is Nil!5157) input!2705))))

(assert (=> d!189304 (= (isPrefix!587 input!2705 lt!220554) lt!220592)))

(declare-fun b!534824 () Bool)

(assert (=> b!534824 (= e!322356 (isPrefix!587 (tail!703 input!2705) (tail!703 lt!220554)))))

(assert (= (and d!189304 (not res!226156)) b!534822))

(assert (= (and b!534822 res!226154) b!534823))

(assert (= (and b!534823 res!226155) b!534824))

(assert (= (and d!189304 (not res!226153)) b!534825))

(assert (=> b!534823 m!780611))

(declare-fun m!780659 () Bool)

(assert (=> b!534823 m!780659))

(assert (=> b!534825 m!780521))

(assert (=> b!534825 m!780617))

(assert (=> b!534824 m!780619))

(declare-fun m!780661 () Bool)

(assert (=> b!534824 m!780661))

(assert (=> b!534824 m!780619))

(assert (=> b!534824 m!780661))

(declare-fun m!780663 () Bool)

(assert (=> b!534824 m!780663))

(assert (=> b!534704 d!189304))

(declare-fun d!189306 () Bool)

(declare-fun res!226176 () Bool)

(declare-fun e!322373 () Bool)

(assert (=> d!189306 (=> (not res!226176) (not e!322373))))

(declare-fun validRegex!432 (Regex!1279) Bool)

(assert (=> d!189306 (= res!226176 (validRegex!432 (regex!945 (rule!1647 (_1!3388 (v!16101 lt!220537))))))))

(assert (=> d!189306 (= (ruleValid!165 thiss!22590 (rule!1647 (_1!3388 (v!16101 lt!220537)))) e!322373)))

(declare-fun b!534847 () Bool)

(declare-fun res!226177 () Bool)

(assert (=> b!534847 (=> (not res!226177) (not e!322373))))

(declare-fun nullable!337 (Regex!1279) Bool)

(assert (=> b!534847 (= res!226177 (not (nullable!337 (regex!945 (rule!1647 (_1!3388 (v!16101 lt!220537)))))))))

(declare-fun b!534848 () Bool)

(assert (=> b!534848 (= e!322373 (not (= (tag!1207 (rule!1647 (_1!3388 (v!16101 lt!220537)))) (String!6590 ""))))))

(assert (= (and d!189306 res!226176) b!534847))

(assert (= (and b!534847 res!226177) b!534848))

(declare-fun m!780695 () Bool)

(assert (=> d!189306 m!780695))

(declare-fun m!780697 () Bool)

(assert (=> b!534847 m!780697))

(assert (=> b!534704 d!189306))

(declare-fun b!534849 () Bool)

(declare-fun e!322376 () Bool)

(declare-fun e!322374 () Bool)

(assert (=> b!534849 (= e!322376 e!322374)))

(declare-fun res!226179 () Bool)

(assert (=> b!534849 (=> (not res!226179) (not e!322374))))

(assert (=> b!534849 (= res!226179 (not ((_ is Nil!5157) input!2705)))))

(declare-fun b!534850 () Bool)

(declare-fun res!226180 () Bool)

(assert (=> b!534850 (=> (not res!226180) (not e!322374))))

(assert (=> b!534850 (= res!226180 (= (head!1174 input!2705) (head!1174 input!2705)))))

(declare-fun b!534852 () Bool)

(declare-fun e!322375 () Bool)

(assert (=> b!534852 (= e!322375 (>= (size!4161 input!2705) (size!4161 input!2705)))))

(declare-fun d!189324 () Bool)

(assert (=> d!189324 e!322375))

(declare-fun res!226178 () Bool)

(assert (=> d!189324 (=> res!226178 e!322375)))

(declare-fun lt!220603 () Bool)

(assert (=> d!189324 (= res!226178 (not lt!220603))))

(assert (=> d!189324 (= lt!220603 e!322376)))

(declare-fun res!226181 () Bool)

(assert (=> d!189324 (=> res!226181 e!322376)))

(assert (=> d!189324 (= res!226181 ((_ is Nil!5157) input!2705))))

(assert (=> d!189324 (= (isPrefix!587 input!2705 input!2705) lt!220603)))

(declare-fun b!534851 () Bool)

(assert (=> b!534851 (= e!322374 (isPrefix!587 (tail!703 input!2705) (tail!703 input!2705)))))

(assert (= (and d!189324 (not res!226181)) b!534849))

(assert (= (and b!534849 res!226179) b!534850))

(assert (= (and b!534850 res!226180) b!534851))

(assert (= (and d!189324 (not res!226178)) b!534852))

(assert (=> b!534850 m!780611))

(assert (=> b!534850 m!780611))

(assert (=> b!534852 m!780617))

(assert (=> b!534852 m!780617))

(assert (=> b!534851 m!780619))

(assert (=> b!534851 m!780619))

(assert (=> b!534851 m!780619))

(assert (=> b!534851 m!780619))

(declare-fun m!780699 () Bool)

(assert (=> b!534851 m!780699))

(assert (=> b!534704 d!189324))

(declare-fun d!189326 () Bool)

(declare-fun lt!220616 () List!5167)

(assert (=> d!189326 (= (++!1433 lt!220547 lt!220616) input!2705)))

(declare-fun e!322386 () List!5167)

(assert (=> d!189326 (= lt!220616 e!322386)))

(declare-fun c!101865 () Bool)

(assert (=> d!189326 (= c!101865 ((_ is Cons!5157) lt!220547))))

(assert (=> d!189326 (>= (size!4161 input!2705) (size!4161 lt!220547))))

(assert (=> d!189326 (= (getSuffix!110 input!2705 lt!220547) lt!220616)))

(declare-fun b!534871 () Bool)

(assert (=> b!534871 (= e!322386 (getSuffix!110 (tail!703 input!2705) (t!74024 lt!220547)))))

(declare-fun b!534872 () Bool)

(assert (=> b!534872 (= e!322386 input!2705)))

(assert (= (and d!189326 c!101865) b!534871))

(assert (= (and d!189326 (not c!101865)) b!534872))

(declare-fun m!780731 () Bool)

(assert (=> d!189326 m!780731))

(assert (=> d!189326 m!780617))

(assert (=> d!189326 m!780487))

(assert (=> b!534871 m!780619))

(assert (=> b!534871 m!780619))

(declare-fun m!780733 () Bool)

(assert (=> b!534871 m!780733))

(assert (=> b!534704 d!189326))

(declare-fun d!189342 () Bool)

(assert (=> d!189342 (= (_2!3388 (v!16101 lt!220537)) lt!220530)))

(declare-fun lt!220622 () Unit!9000)

(declare-fun choose!3770 (List!5167 List!5167 List!5167 List!5167 List!5167) Unit!9000)

(assert (=> d!189342 (= lt!220622 (choose!3770 lt!220547 (_2!3388 (v!16101 lt!220537)) lt!220547 lt!220530 input!2705))))

(assert (=> d!189342 (isPrefix!587 lt!220547 input!2705)))

(assert (=> d!189342 (= (lemmaSamePrefixThenSameSuffix!314 lt!220547 (_2!3388 (v!16101 lt!220537)) lt!220547 lt!220530 input!2705) lt!220622)))

(declare-fun bs!67301 () Bool)

(assert (= bs!67301 d!189342))

(declare-fun m!780753 () Bool)

(assert (=> bs!67301 m!780753))

(declare-fun m!780755 () Bool)

(assert (=> bs!67301 m!780755))

(assert (=> b!534704 d!189342))

(declare-fun d!189358 () Bool)

(assert (=> d!189358 (ruleValid!165 thiss!22590 (rule!1647 token!491))))

(declare-fun lt!220625 () Unit!9000)

(declare-fun choose!3771 (LexerInterface!831 Rule!1690 List!5169) Unit!9000)

(assert (=> d!189358 (= lt!220625 (choose!3771 thiss!22590 (rule!1647 token!491) rules!3103))))

(declare-fun contains!1199 (List!5169 Rule!1690) Bool)

(assert (=> d!189358 (contains!1199 rules!3103 (rule!1647 token!491))))

(assert (=> d!189358 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!24 thiss!22590 (rule!1647 token!491) rules!3103) lt!220625)))

(declare-fun bs!67302 () Bool)

(assert (= bs!67302 d!189358))

(assert (=> bs!67302 m!780455))

(declare-fun m!780757 () Bool)

(assert (=> bs!67302 m!780757))

(declare-fun m!780759 () Bool)

(assert (=> bs!67302 m!780759))

(assert (=> b!534704 d!189358))

(declare-fun d!189360 () Bool)

(assert (=> d!189360 (isPrefix!587 input!2705 (++!1433 input!2705 suffix!1342))))

(declare-fun lt!220626 () Unit!9000)

(assert (=> d!189360 (= lt!220626 (choose!3769 input!2705 suffix!1342))))

(assert (=> d!189360 (= (lemmaConcatTwoListThenFirstIsPrefix!438 input!2705 suffix!1342) lt!220626)))

(declare-fun bs!67303 () Bool)

(assert (= bs!67303 d!189360))

(assert (=> bs!67303 m!780435))

(assert (=> bs!67303 m!780435))

(declare-fun m!780761 () Bool)

(assert (=> bs!67303 m!780761))

(declare-fun m!780763 () Bool)

(assert (=> bs!67303 m!780763))

(assert (=> b!534704 d!189360))

(declare-fun b!534879 () Bool)

(declare-fun e!322392 () List!5167)

(assert (=> b!534879 (= e!322392 (_2!3388 (v!16101 lt!220537)))))

(declare-fun b!534881 () Bool)

(declare-fun res!226192 () Bool)

(declare-fun e!322393 () Bool)

(assert (=> b!534881 (=> (not res!226192) (not e!322393))))

(declare-fun lt!220627 () List!5167)

(assert (=> b!534881 (= res!226192 (= (size!4161 lt!220627) (+ (size!4161 lt!220547) (size!4161 (_2!3388 (v!16101 lt!220537))))))))

(declare-fun b!534882 () Bool)

(assert (=> b!534882 (= e!322393 (or (not (= (_2!3388 (v!16101 lt!220537)) Nil!5157)) (= lt!220627 lt!220547)))))

(declare-fun b!534880 () Bool)

(assert (=> b!534880 (= e!322392 (Cons!5157 (h!10558 lt!220547) (++!1433 (t!74024 lt!220547) (_2!3388 (v!16101 lt!220537)))))))

(declare-fun d!189362 () Bool)

(assert (=> d!189362 e!322393))

(declare-fun res!226193 () Bool)

(assert (=> d!189362 (=> (not res!226193) (not e!322393))))

(assert (=> d!189362 (= res!226193 (= (content!909 lt!220627) ((_ map or) (content!909 lt!220547) (content!909 (_2!3388 (v!16101 lt!220537))))))))

(assert (=> d!189362 (= lt!220627 e!322392)))

(declare-fun c!101867 () Bool)

(assert (=> d!189362 (= c!101867 ((_ is Nil!5157) lt!220547))))

(assert (=> d!189362 (= (++!1433 lt!220547 (_2!3388 (v!16101 lt!220537))) lt!220627)))

(assert (= (and d!189362 c!101867) b!534879))

(assert (= (and d!189362 (not c!101867)) b!534880))

(assert (= (and d!189362 res!226193) b!534881))

(assert (= (and b!534881 res!226192) b!534882))

(declare-fun m!780765 () Bool)

(assert (=> b!534881 m!780765))

(assert (=> b!534881 m!780487))

(declare-fun m!780767 () Bool)

(assert (=> b!534881 m!780767))

(declare-fun m!780769 () Bool)

(assert (=> b!534880 m!780769))

(declare-fun m!780771 () Bool)

(assert (=> d!189362 m!780771))

(declare-fun m!780773 () Bool)

(assert (=> d!189362 m!780773))

(declare-fun m!780775 () Bool)

(assert (=> d!189362 m!780775))

(assert (=> b!534704 d!189362))

(declare-fun d!189364 () Bool)

(assert (=> d!189364 (isPrefix!587 lt!220532 (++!1433 lt!220532 suffix!1342))))

(declare-fun lt!220628 () Unit!9000)

(assert (=> d!189364 (= lt!220628 (choose!3769 lt!220532 suffix!1342))))

(assert (=> d!189364 (= (lemmaConcatTwoListThenFirstIsPrefix!438 lt!220532 suffix!1342) lt!220628)))

(declare-fun bs!67304 () Bool)

(assert (= bs!67304 d!189364))

(assert (=> bs!67304 m!780437))

(assert (=> bs!67304 m!780437))

(declare-fun m!780777 () Bool)

(assert (=> bs!67304 m!780777))

(declare-fun m!780779 () Bool)

(assert (=> bs!67304 m!780779))

(assert (=> b!534704 d!189364))

(declare-fun d!189366 () Bool)

(declare-fun res!226194 () Bool)

(declare-fun e!322394 () Bool)

(assert (=> d!189366 (=> (not res!226194) (not e!322394))))

(assert (=> d!189366 (= res!226194 (validRegex!432 (regex!945 (rule!1647 token!491))))))

(assert (=> d!189366 (= (ruleValid!165 thiss!22590 (rule!1647 token!491)) e!322394)))

(declare-fun b!534883 () Bool)

(declare-fun res!226195 () Bool)

(assert (=> b!534883 (=> (not res!226195) (not e!322394))))

(assert (=> b!534883 (= res!226195 (not (nullable!337 (regex!945 (rule!1647 token!491)))))))

(declare-fun b!534884 () Bool)

(assert (=> b!534884 (= e!322394 (not (= (tag!1207 (rule!1647 token!491)) (String!6590 ""))))))

(assert (= (and d!189366 res!226194) b!534883))

(assert (= (and b!534883 res!226195) b!534884))

(declare-fun m!780781 () Bool)

(assert (=> d!189366 m!780781))

(declare-fun m!780783 () Bool)

(assert (=> b!534883 m!780783))

(assert (=> b!534704 d!189366))

(declare-fun d!189368 () Bool)

(assert (=> d!189368 (ruleValid!165 thiss!22590 (rule!1647 (_1!3388 (v!16101 lt!220537))))))

(declare-fun lt!220629 () Unit!9000)

(assert (=> d!189368 (= lt!220629 (choose!3771 thiss!22590 (rule!1647 (_1!3388 (v!16101 lt!220537))) rules!3103))))

(assert (=> d!189368 (contains!1199 rules!3103 (rule!1647 (_1!3388 (v!16101 lt!220537))))))

(assert (=> d!189368 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!24 thiss!22590 (rule!1647 (_1!3388 (v!16101 lt!220537))) rules!3103) lt!220629)))

(declare-fun bs!67305 () Bool)

(assert (= bs!67305 d!189368))

(assert (=> bs!67305 m!780503))

(declare-fun m!780785 () Bool)

(assert (=> bs!67305 m!780785))

(declare-fun m!780787 () Bool)

(assert (=> bs!67305 m!780787))

(assert (=> b!534704 d!189368))

(declare-fun d!189370 () Bool)

(declare-fun dynLambda!3084 (Int BalanceConc!3332) TokenValue!969)

(assert (=> d!189370 (= (apply!1220 (transformation!945 (rule!1647 (_1!3388 (v!16101 lt!220537)))) (seqFromList!1143 lt!220547)) (dynLambda!3084 (toValue!1792 (transformation!945 (rule!1647 (_1!3388 (v!16101 lt!220537))))) (seqFromList!1143 lt!220547)))))

(declare-fun b_lambda!20655 () Bool)

(assert (=> (not b_lambda!20655) (not d!189370)))

(declare-fun tb!47443 () Bool)

(declare-fun t!74044 () Bool)

(assert (=> (and b!534725 (= (toValue!1792 (transformation!945 (h!10560 rules!3103))) (toValue!1792 (transformation!945 (rule!1647 (_1!3388 (v!16101 lt!220537)))))) t!74044) tb!47443))

(declare-fun result!52942 () Bool)

(assert (=> tb!47443 (= result!52942 (inv!21 (dynLambda!3084 (toValue!1792 (transformation!945 (rule!1647 (_1!3388 (v!16101 lt!220537))))) (seqFromList!1143 lt!220547))))))

(declare-fun m!780789 () Bool)

(assert (=> tb!47443 m!780789))

(assert (=> d!189370 t!74044))

(declare-fun b_and!52307 () Bool)

(assert (= b_and!52283 (and (=> t!74044 result!52942) b_and!52307)))

(declare-fun t!74046 () Bool)

(declare-fun tb!47445 () Bool)

(assert (=> (and b!534716 (= (toValue!1792 (transformation!945 (rule!1647 token!491))) (toValue!1792 (transformation!945 (rule!1647 (_1!3388 (v!16101 lt!220537)))))) t!74046) tb!47445))

(declare-fun result!52946 () Bool)

(assert (= result!52946 result!52942))

(assert (=> d!189370 t!74046))

(declare-fun b_and!52309 () Bool)

(assert (= b_and!52287 (and (=> t!74046 result!52946) b_and!52309)))

(assert (=> d!189370 m!780451))

(declare-fun m!780791 () Bool)

(assert (=> d!189370 m!780791))

(assert (=> b!534704 d!189370))

(declare-fun d!189372 () Bool)

(assert (=> d!189372 (and (= lt!220532 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!220632 () Unit!9000)

(declare-fun choose!3772 (List!5167 List!5167 List!5167 List!5167) Unit!9000)

(assert (=> d!189372 (= lt!220632 (choose!3772 lt!220532 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!189372 (= (++!1433 lt!220532 suffix!1342) (++!1433 input!2705 suffix!1342))))

(assert (=> d!189372 (= (lemmaConcatSameAndSameSizesThenSameLists!30 lt!220532 suffix!1342 input!2705 suffix!1342) lt!220632)))

(declare-fun bs!67306 () Bool)

(assert (= bs!67306 d!189372))

(declare-fun m!780793 () Bool)

(assert (=> bs!67306 m!780793))

(assert (=> bs!67306 m!780437))

(assert (=> bs!67306 m!780435))

(assert (=> b!534704 d!189372))

(declare-fun d!189374 () Bool)

(declare-fun lt!220645 () BalanceConc!3332)

(assert (=> d!189374 (= (list!2145 lt!220645) (originalCharacters!984 (_1!3388 (v!16101 lt!220537))))))

(declare-fun dynLambda!3085 (Int TokenValue!969) BalanceConc!3332)

(assert (=> d!189374 (= lt!220645 (dynLambda!3085 (toChars!1651 (transformation!945 (rule!1647 (_1!3388 (v!16101 lt!220537))))) (value!31799 (_1!3388 (v!16101 lt!220537)))))))

(assert (=> d!189374 (= (charsOf!574 (_1!3388 (v!16101 lt!220537))) lt!220645)))

(declare-fun b_lambda!20657 () Bool)

(assert (=> (not b_lambda!20657) (not d!189374)))

(declare-fun tb!47447 () Bool)

(declare-fun t!74048 () Bool)

(assert (=> (and b!534725 (= (toChars!1651 (transformation!945 (h!10560 rules!3103))) (toChars!1651 (transformation!945 (rule!1647 (_1!3388 (v!16101 lt!220537)))))) t!74048) tb!47447))

(declare-fun b!534909 () Bool)

(declare-fun e!322406 () Bool)

(declare-fun tp!170663 () Bool)

(declare-fun inv!6479 (Conc!1662) Bool)

(assert (=> b!534909 (= e!322406 (and (inv!6479 (c!101843 (dynLambda!3085 (toChars!1651 (transformation!945 (rule!1647 (_1!3388 (v!16101 lt!220537))))) (value!31799 (_1!3388 (v!16101 lt!220537)))))) tp!170663))))

(declare-fun result!52948 () Bool)

(declare-fun inv!6480 (BalanceConc!3332) Bool)

(assert (=> tb!47447 (= result!52948 (and (inv!6480 (dynLambda!3085 (toChars!1651 (transformation!945 (rule!1647 (_1!3388 (v!16101 lt!220537))))) (value!31799 (_1!3388 (v!16101 lt!220537))))) e!322406))))

(assert (= tb!47447 b!534909))

(declare-fun m!780795 () Bool)

(assert (=> b!534909 m!780795))

(declare-fun m!780797 () Bool)

(assert (=> tb!47447 m!780797))

(assert (=> d!189374 t!74048))

(declare-fun b_and!52311 () Bool)

(assert (= b_and!52285 (and (=> t!74048 result!52948) b_and!52311)))

(declare-fun tb!47449 () Bool)

(declare-fun t!74050 () Bool)

(assert (=> (and b!534716 (= (toChars!1651 (transformation!945 (rule!1647 token!491))) (toChars!1651 (transformation!945 (rule!1647 (_1!3388 (v!16101 lt!220537)))))) t!74050) tb!47449))

(declare-fun result!52952 () Bool)

(assert (= result!52952 result!52948))

(assert (=> d!189374 t!74050))

(declare-fun b_and!52313 () Bool)

(assert (= b_and!52289 (and (=> t!74050 result!52952) b_and!52313)))

(declare-fun m!780799 () Bool)

(assert (=> d!189374 m!780799))

(declare-fun m!780801 () Bool)

(assert (=> d!189374 m!780801))

(assert (=> b!534704 d!189374))

(declare-fun b!534919 () Bool)

(declare-fun e!322412 () Bool)

(declare-fun e!322410 () Bool)

(assert (=> b!534919 (= e!322412 e!322410)))

(declare-fun res!226218 () Bool)

(assert (=> b!534919 (=> (not res!226218) (not e!322410))))

(assert (=> b!534919 (= res!226218 (not ((_ is Nil!5157) lt!220542)))))

(declare-fun b!534920 () Bool)

(declare-fun res!226219 () Bool)

(assert (=> b!534920 (=> (not res!226219) (not e!322410))))

(assert (=> b!534920 (= res!226219 (= (head!1174 lt!220532) (head!1174 lt!220542)))))

(declare-fun b!534922 () Bool)

(declare-fun e!322411 () Bool)

(assert (=> b!534922 (= e!322411 (>= (size!4161 lt!220542) (size!4161 lt!220532)))))

(declare-fun d!189376 () Bool)

(assert (=> d!189376 e!322411))

(declare-fun res!226217 () Bool)

(assert (=> d!189376 (=> res!226217 e!322411)))

(declare-fun lt!220651 () Bool)

(assert (=> d!189376 (= res!226217 (not lt!220651))))

(assert (=> d!189376 (= lt!220651 e!322412)))

(declare-fun res!226220 () Bool)

(assert (=> d!189376 (=> res!226220 e!322412)))

(assert (=> d!189376 (= res!226220 ((_ is Nil!5157) lt!220532))))

(assert (=> d!189376 (= (isPrefix!587 lt!220532 lt!220542) lt!220651)))

(declare-fun b!534921 () Bool)

(assert (=> b!534921 (= e!322410 (isPrefix!587 (tail!703 lt!220532) (tail!703 lt!220542)))))

(assert (= (and d!189376 (not res!226220)) b!534919))

(assert (= (and b!534919 res!226218) b!534920))

(assert (= (and b!534920 res!226219) b!534921))

(assert (= (and d!189376 (not res!226217)) b!534922))

(declare-fun m!780803 () Bool)

(assert (=> b!534920 m!780803))

(assert (=> b!534920 m!780613))

(assert (=> b!534922 m!780615))

(assert (=> b!534922 m!780479))

(declare-fun m!780805 () Bool)

(assert (=> b!534921 m!780805))

(assert (=> b!534921 m!780621))

(assert (=> b!534921 m!780805))

(assert (=> b!534921 m!780621))

(declare-fun m!780807 () Bool)

(assert (=> b!534921 m!780807))

(assert (=> b!534704 d!189376))

(declare-fun d!189378 () Bool)

(declare-fun list!2147 (Conc!1662) List!5167)

(assert (=> d!189378 (= (list!2145 (charsOf!574 (_1!3388 (v!16101 lt!220537)))) (list!2147 (c!101843 (charsOf!574 (_1!3388 (v!16101 lt!220537))))))))

(declare-fun bs!67307 () Bool)

(assert (= bs!67307 d!189378))

(declare-fun m!780837 () Bool)

(assert (=> bs!67307 m!780837))

(assert (=> b!534704 d!189378))

(declare-fun b!534953 () Bool)

(declare-fun e!322431 () Bool)

(declare-fun inv!16 (TokenValue!969) Bool)

(assert (=> b!534953 (= e!322431 (inv!16 (value!31799 token!491)))))

(declare-fun b!534954 () Bool)

(declare-fun e!322429 () Bool)

(declare-fun inv!17 (TokenValue!969) Bool)

(assert (=> b!534954 (= e!322429 (inv!17 (value!31799 token!491)))))

(declare-fun b!534955 () Bool)

(assert (=> b!534955 (= e!322431 e!322429)))

(declare-fun c!101878 () Bool)

(assert (=> b!534955 (= c!101878 ((_ is IntegerValue!2908) (value!31799 token!491)))))

(declare-fun b!534957 () Bool)

(declare-fun res!226237 () Bool)

(declare-fun e!322430 () Bool)

(assert (=> b!534957 (=> res!226237 e!322430)))

(assert (=> b!534957 (= res!226237 (not ((_ is IntegerValue!2909) (value!31799 token!491))))))

(assert (=> b!534957 (= e!322429 e!322430)))

(declare-fun d!189382 () Bool)

(declare-fun c!101879 () Bool)

(assert (=> d!189382 (= c!101879 ((_ is IntegerValue!2907) (value!31799 token!491)))))

(assert (=> d!189382 (= (inv!21 (value!31799 token!491)) e!322431)))

(declare-fun b!534956 () Bool)

(declare-fun inv!15 (TokenValue!969) Bool)

(assert (=> b!534956 (= e!322430 (inv!15 (value!31799 token!491)))))

(assert (= (and d!189382 c!101879) b!534953))

(assert (= (and d!189382 (not c!101879)) b!534955))

(assert (= (and b!534955 c!101878) b!534954))

(assert (= (and b!534955 (not c!101878)) b!534957))

(assert (= (and b!534957 (not res!226237)) b!534956))

(declare-fun m!780895 () Bool)

(assert (=> b!534953 m!780895))

(declare-fun m!780897 () Bool)

(assert (=> b!534954 m!780897))

(declare-fun m!780899 () Bool)

(assert (=> b!534956 m!780899))

(assert (=> b!534715 d!189382))

(declare-fun d!189394 () Bool)

(declare-fun res!226245 () Bool)

(declare-fun e!322462 () Bool)

(assert (=> d!189394 (=> (not res!226245) (not e!322462))))

(assert (=> d!189394 (= res!226245 (not (isEmpty!3730 (originalCharacters!984 token!491))))))

(assert (=> d!189394 (= (inv!6476 token!491) e!322462)))

(declare-fun b!535009 () Bool)

(declare-fun res!226246 () Bool)

(assert (=> b!535009 (=> (not res!226246) (not e!322462))))

(assert (=> b!535009 (= res!226246 (= (originalCharacters!984 token!491) (list!2145 (dynLambda!3085 (toChars!1651 (transformation!945 (rule!1647 token!491))) (value!31799 token!491)))))))

(declare-fun b!535010 () Bool)

(assert (=> b!535010 (= e!322462 (= (size!4160 token!491) (size!4161 (originalCharacters!984 token!491))))))

(assert (= (and d!189394 res!226245) b!535009))

(assert (= (and b!535009 res!226246) b!535010))

(declare-fun b_lambda!20661 () Bool)

(assert (=> (not b_lambda!20661) (not b!535009)))

(declare-fun tb!47459 () Bool)

(declare-fun t!74060 () Bool)

(assert (=> (and b!534725 (= (toChars!1651 (transformation!945 (h!10560 rules!3103))) (toChars!1651 (transformation!945 (rule!1647 token!491)))) t!74060) tb!47459))

(declare-fun b!535017 () Bool)

(declare-fun e!322466 () Bool)

(declare-fun tp!170701 () Bool)

(assert (=> b!535017 (= e!322466 (and (inv!6479 (c!101843 (dynLambda!3085 (toChars!1651 (transformation!945 (rule!1647 token!491))) (value!31799 token!491)))) tp!170701))))

(declare-fun result!52968 () Bool)

(assert (=> tb!47459 (= result!52968 (and (inv!6480 (dynLambda!3085 (toChars!1651 (transformation!945 (rule!1647 token!491))) (value!31799 token!491))) e!322466))))

(assert (= tb!47459 b!535017))

(declare-fun m!780917 () Bool)

(assert (=> b!535017 m!780917))

(declare-fun m!780919 () Bool)

(assert (=> tb!47459 m!780919))

(assert (=> b!535009 t!74060))

(declare-fun b_and!52323 () Bool)

(assert (= b_and!52311 (and (=> t!74060 result!52968) b_and!52323)))

(declare-fun t!74062 () Bool)

(declare-fun tb!47461 () Bool)

(assert (=> (and b!534716 (= (toChars!1651 (transformation!945 (rule!1647 token!491))) (toChars!1651 (transformation!945 (rule!1647 token!491)))) t!74062) tb!47461))

(declare-fun result!52970 () Bool)

(assert (= result!52970 result!52968))

(assert (=> b!535009 t!74062))

(declare-fun b_and!52325 () Bool)

(assert (= b_and!52313 (and (=> t!74062 result!52970) b_and!52325)))

(declare-fun m!780921 () Bool)

(assert (=> d!189394 m!780921))

(declare-fun m!780923 () Bool)

(assert (=> b!535009 m!780923))

(assert (=> b!535009 m!780923))

(declare-fun m!780925 () Bool)

(assert (=> b!535009 m!780925))

(assert (=> b!535010 m!780445))

(assert (=> start!49280 d!189394))

(declare-fun d!189402 () Bool)

(assert (=> d!189402 (= (isEmpty!3731 rules!3103) ((_ is Nil!5159) rules!3103))))

(assert (=> b!534722 d!189402))

(declare-fun d!189404 () Bool)

(declare-fun lt!220661 () Int)

(assert (=> d!189404 (>= lt!220661 0)))

(declare-fun e!322467 () Int)

(assert (=> d!189404 (= lt!220661 e!322467)))

(declare-fun c!101887 () Bool)

(assert (=> d!189404 (= c!101887 ((_ is Nil!5157) lt!220554))))

(assert (=> d!189404 (= (size!4161 lt!220554) lt!220661)))

(declare-fun b!535018 () Bool)

(assert (=> b!535018 (= e!322467 0)))

(declare-fun b!535019 () Bool)

(assert (=> b!535019 (= e!322467 (+ 1 (size!4161 (t!74024 lt!220554))))))

(assert (= (and d!189404 c!101887) b!535018))

(assert (= (and d!189404 (not c!101887)) b!535019))

(declare-fun m!780927 () Bool)

(assert (=> b!535019 m!780927))

(assert (=> b!534711 d!189404))

(declare-fun d!189406 () Bool)

(assert (=> d!189406 (= suffix!1342 lt!220538)))

(declare-fun lt!220662 () Unit!9000)

(assert (=> d!189406 (= lt!220662 (choose!3770 lt!220532 suffix!1342 lt!220532 lt!220538 lt!220554))))

(assert (=> d!189406 (isPrefix!587 lt!220532 lt!220554)))

(assert (=> d!189406 (= (lemmaSamePrefixThenSameSuffix!314 lt!220532 suffix!1342 lt!220532 lt!220538 lt!220554) lt!220662)))

(declare-fun bs!67310 () Bool)

(assert (= bs!67310 d!189406))

(declare-fun m!780929 () Bool)

(assert (=> bs!67310 m!780929))

(declare-fun m!780931 () Bool)

(assert (=> bs!67310 m!780931))

(assert (=> b!534711 d!189406))

(declare-fun d!189408 () Bool)

(declare-fun lt!220663 () List!5167)

(assert (=> d!189408 (= (++!1433 lt!220532 lt!220663) lt!220554)))

(declare-fun e!322468 () List!5167)

(assert (=> d!189408 (= lt!220663 e!322468)))

(declare-fun c!101888 () Bool)

(assert (=> d!189408 (= c!101888 ((_ is Cons!5157) lt!220532))))

(assert (=> d!189408 (>= (size!4161 lt!220554) (size!4161 lt!220532))))

(assert (=> d!189408 (= (getSuffix!110 lt!220554 lt!220532) lt!220663)))

(declare-fun b!535020 () Bool)

(assert (=> b!535020 (= e!322468 (getSuffix!110 (tail!703 lt!220554) (t!74024 lt!220532)))))

(declare-fun b!535021 () Bool)

(assert (=> b!535021 (= e!322468 lt!220554)))

(assert (= (and d!189408 c!101888) b!535020))

(assert (= (and d!189408 (not c!101888)) b!535021))

(declare-fun m!780933 () Bool)

(assert (=> d!189408 m!780933))

(assert (=> d!189408 m!780521))

(assert (=> d!189408 m!780479))

(assert (=> b!535020 m!780661))

(assert (=> b!535020 m!780661))

(declare-fun m!780935 () Bool)

(assert (=> b!535020 m!780935))

(assert (=> b!534711 d!189408))

(declare-fun b!535040 () Bool)

(declare-fun res!226266 () Bool)

(declare-fun e!322475 () Bool)

(assert (=> b!535040 (=> (not res!226266) (not e!322475))))

(declare-fun lt!220675 () Option!1295)

(declare-fun matchR!448 (Regex!1279 List!5167) Bool)

(assert (=> b!535040 (= res!226266 (matchR!448 (regex!945 (rule!1647 (_1!3388 (get!1932 lt!220675)))) (list!2145 (charsOf!574 (_1!3388 (get!1932 lt!220675))))))))

(declare-fun b!535041 () Bool)

(declare-fun e!322476 () Bool)

(assert (=> b!535041 (= e!322476 e!322475)))

(declare-fun res!226265 () Bool)

(assert (=> b!535041 (=> (not res!226265) (not e!322475))))

(assert (=> b!535041 (= res!226265 (isDefined!1107 lt!220675))))

(declare-fun d!189410 () Bool)

(assert (=> d!189410 e!322476))

(declare-fun res!226267 () Bool)

(assert (=> d!189410 (=> res!226267 e!322476)))

(declare-fun isEmpty!3733 (Option!1295) Bool)

(assert (=> d!189410 (= res!226267 (isEmpty!3733 lt!220675))))

(declare-fun e!322477 () Option!1295)

(assert (=> d!189410 (= lt!220675 e!322477)))

(declare-fun c!101891 () Bool)

(assert (=> d!189410 (= c!101891 (and ((_ is Cons!5159) rules!3103) ((_ is Nil!5159) (t!74026 rules!3103))))))

(declare-fun lt!220677 () Unit!9000)

(declare-fun lt!220676 () Unit!9000)

(assert (=> d!189410 (= lt!220677 lt!220676)))

(assert (=> d!189410 (isPrefix!587 input!2705 input!2705)))

(assert (=> d!189410 (= lt!220676 (lemmaIsPrefixRefl!327 input!2705 input!2705))))

(declare-fun rulesValidInductive!330 (LexerInterface!831 List!5169) Bool)

(assert (=> d!189410 (rulesValidInductive!330 thiss!22590 rules!3103)))

(assert (=> d!189410 (= (maxPrefix!529 thiss!22590 rules!3103 input!2705) lt!220675)))

(declare-fun call!38202 () Option!1295)

(declare-fun bm!38197 () Bool)

(declare-fun maxPrefixOneRule!248 (LexerInterface!831 Rule!1690 List!5167) Option!1295)

(assert (=> bm!38197 (= call!38202 (maxPrefixOneRule!248 thiss!22590 (h!10560 rules!3103) input!2705))))

(declare-fun b!535042 () Bool)

(declare-fun res!226261 () Bool)

(assert (=> b!535042 (=> (not res!226261) (not e!322475))))

(assert (=> b!535042 (= res!226261 (= (value!31799 (_1!3388 (get!1932 lt!220675))) (apply!1220 (transformation!945 (rule!1647 (_1!3388 (get!1932 lt!220675)))) (seqFromList!1143 (originalCharacters!984 (_1!3388 (get!1932 lt!220675)))))))))

(declare-fun b!535043 () Bool)

(assert (=> b!535043 (= e!322475 (contains!1199 rules!3103 (rule!1647 (_1!3388 (get!1932 lt!220675)))))))

(declare-fun b!535044 () Bool)

(assert (=> b!535044 (= e!322477 call!38202)))

(declare-fun b!535045 () Bool)

(declare-fun res!226263 () Bool)

(assert (=> b!535045 (=> (not res!226263) (not e!322475))))

(assert (=> b!535045 (= res!226263 (= (list!2145 (charsOf!574 (_1!3388 (get!1932 lt!220675)))) (originalCharacters!984 (_1!3388 (get!1932 lt!220675)))))))

(declare-fun b!535046 () Bool)

(declare-fun res!226262 () Bool)

(assert (=> b!535046 (=> (not res!226262) (not e!322475))))

(assert (=> b!535046 (= res!226262 (= (++!1433 (list!2145 (charsOf!574 (_1!3388 (get!1932 lt!220675)))) (_2!3388 (get!1932 lt!220675))) input!2705))))

(declare-fun b!535047 () Bool)

(declare-fun lt!220674 () Option!1295)

(declare-fun lt!220678 () Option!1295)

(assert (=> b!535047 (= e!322477 (ite (and ((_ is None!1294) lt!220674) ((_ is None!1294) lt!220678)) None!1294 (ite ((_ is None!1294) lt!220678) lt!220674 (ite ((_ is None!1294) lt!220674) lt!220678 (ite (>= (size!4160 (_1!3388 (v!16101 lt!220674))) (size!4160 (_1!3388 (v!16101 lt!220678)))) lt!220674 lt!220678)))))))

(assert (=> b!535047 (= lt!220674 call!38202)))

(assert (=> b!535047 (= lt!220678 (maxPrefix!529 thiss!22590 (t!74026 rules!3103) input!2705))))

(declare-fun b!535048 () Bool)

(declare-fun res!226264 () Bool)

(assert (=> b!535048 (=> (not res!226264) (not e!322475))))

(assert (=> b!535048 (= res!226264 (< (size!4161 (_2!3388 (get!1932 lt!220675))) (size!4161 input!2705)))))

(assert (= (and d!189410 c!101891) b!535044))

(assert (= (and d!189410 (not c!101891)) b!535047))

(assert (= (or b!535044 b!535047) bm!38197))

(assert (= (and d!189410 (not res!226267)) b!535041))

(assert (= (and b!535041 res!226265) b!535045))

(assert (= (and b!535045 res!226263) b!535048))

(assert (= (and b!535048 res!226264) b!535046))

(assert (= (and b!535046 res!226262) b!535042))

(assert (= (and b!535042 res!226261) b!535040))

(assert (= (and b!535040 res!226266) b!535043))

(declare-fun m!780937 () Bool)

(assert (=> b!535047 m!780937))

(declare-fun m!780939 () Bool)

(assert (=> b!535043 m!780939))

(declare-fun m!780941 () Bool)

(assert (=> b!535043 m!780941))

(assert (=> b!535042 m!780939))

(declare-fun m!780943 () Bool)

(assert (=> b!535042 m!780943))

(assert (=> b!535042 m!780943))

(declare-fun m!780945 () Bool)

(assert (=> b!535042 m!780945))

(assert (=> b!535040 m!780939))

(declare-fun m!780947 () Bool)

(assert (=> b!535040 m!780947))

(assert (=> b!535040 m!780947))

(declare-fun m!780949 () Bool)

(assert (=> b!535040 m!780949))

(assert (=> b!535040 m!780949))

(declare-fun m!780951 () Bool)

(assert (=> b!535040 m!780951))

(assert (=> b!535046 m!780939))

(assert (=> b!535046 m!780947))

(assert (=> b!535046 m!780947))

(assert (=> b!535046 m!780949))

(assert (=> b!535046 m!780949))

(declare-fun m!780953 () Bool)

(assert (=> b!535046 m!780953))

(assert (=> b!535045 m!780939))

(assert (=> b!535045 m!780947))

(assert (=> b!535045 m!780947))

(assert (=> b!535045 m!780949))

(declare-fun m!780955 () Bool)

(assert (=> bm!38197 m!780955))

(declare-fun m!780957 () Bool)

(assert (=> b!535041 m!780957))

(assert (=> b!535048 m!780939))

(declare-fun m!780959 () Bool)

(assert (=> b!535048 m!780959))

(assert (=> b!535048 m!780617))

(declare-fun m!780961 () Bool)

(assert (=> d!189410 m!780961))

(assert (=> d!189410 m!780501))

(assert (=> d!189410 m!780489))

(declare-fun m!780963 () Bool)

(assert (=> d!189410 m!780963))

(assert (=> b!534712 d!189410))

(declare-fun d!189412 () Bool)

(assert (=> d!189412 (= (get!1932 lt!220535) (v!16101 lt!220535))))

(assert (=> b!534723 d!189412))

(declare-fun d!189414 () Bool)

(declare-fun res!226270 () Bool)

(declare-fun e!322480 () Bool)

(assert (=> d!189414 (=> (not res!226270) (not e!322480))))

(declare-fun rulesValid!340 (LexerInterface!831 List!5169) Bool)

(assert (=> d!189414 (= res!226270 (rulesValid!340 thiss!22590 rules!3103))))

(assert (=> d!189414 (= (rulesInvariant!794 thiss!22590 rules!3103) e!322480)))

(declare-fun b!535051 () Bool)

(declare-datatypes ((List!5171 0))(
  ( (Nil!5161) (Cons!5161 (h!10562 String!6589) (t!74076 List!5171)) )
))
(declare-fun noDuplicateTag!340 (LexerInterface!831 List!5169 List!5171) Bool)

(assert (=> b!535051 (= e!322480 (noDuplicateTag!340 thiss!22590 rules!3103 Nil!5161))))

(assert (= (and d!189414 res!226270) b!535051))

(declare-fun m!780965 () Bool)

(assert (=> d!189414 m!780965))

(declare-fun m!780967 () Bool)

(assert (=> b!535051 m!780967))

(assert (=> b!534724 d!189414))

(declare-fun d!189416 () Bool)

(assert (=> d!189416 (= (isEmpty!3730 input!2705) ((_ is Nil!5157) input!2705))))

(assert (=> b!534713 d!189416))

(declare-fun d!189418 () Bool)

(assert (=> d!189418 (= (isDefined!1107 lt!220535) (not (isEmpty!3733 lt!220535)))))

(declare-fun bs!67311 () Bool)

(assert (= bs!67311 d!189418))

(declare-fun m!780969 () Bool)

(assert (=> bs!67311 m!780969))

(assert (=> b!534720 d!189418))

(declare-fun b!535052 () Bool)

(declare-fun res!226276 () Bool)

(declare-fun e!322481 () Bool)

(assert (=> b!535052 (=> (not res!226276) (not e!322481))))

(declare-fun lt!220680 () Option!1295)

(assert (=> b!535052 (= res!226276 (matchR!448 (regex!945 (rule!1647 (_1!3388 (get!1932 lt!220680)))) (list!2145 (charsOf!574 (_1!3388 (get!1932 lt!220680))))))))

(declare-fun b!535053 () Bool)

(declare-fun e!322482 () Bool)

(assert (=> b!535053 (= e!322482 e!322481)))

(declare-fun res!226275 () Bool)

(assert (=> b!535053 (=> (not res!226275) (not e!322481))))

(assert (=> b!535053 (= res!226275 (isDefined!1107 lt!220680))))

(declare-fun d!189420 () Bool)

(assert (=> d!189420 e!322482))

(declare-fun res!226277 () Bool)

(assert (=> d!189420 (=> res!226277 e!322482)))

(assert (=> d!189420 (= res!226277 (isEmpty!3733 lt!220680))))

(declare-fun e!322483 () Option!1295)

(assert (=> d!189420 (= lt!220680 e!322483)))

(declare-fun c!101892 () Bool)

(assert (=> d!189420 (= c!101892 (and ((_ is Cons!5159) rules!3103) ((_ is Nil!5159) (t!74026 rules!3103))))))

(declare-fun lt!220682 () Unit!9000)

(declare-fun lt!220681 () Unit!9000)

(assert (=> d!189420 (= lt!220682 lt!220681)))

(assert (=> d!189420 (isPrefix!587 lt!220554 lt!220554)))

(assert (=> d!189420 (= lt!220681 (lemmaIsPrefixRefl!327 lt!220554 lt!220554))))

(assert (=> d!189420 (rulesValidInductive!330 thiss!22590 rules!3103)))

(assert (=> d!189420 (= (maxPrefix!529 thiss!22590 rules!3103 lt!220554) lt!220680)))

(declare-fun bm!38198 () Bool)

(declare-fun call!38203 () Option!1295)

(assert (=> bm!38198 (= call!38203 (maxPrefixOneRule!248 thiss!22590 (h!10560 rules!3103) lt!220554))))

(declare-fun b!535054 () Bool)

(declare-fun res!226271 () Bool)

(assert (=> b!535054 (=> (not res!226271) (not e!322481))))

(assert (=> b!535054 (= res!226271 (= (value!31799 (_1!3388 (get!1932 lt!220680))) (apply!1220 (transformation!945 (rule!1647 (_1!3388 (get!1932 lt!220680)))) (seqFromList!1143 (originalCharacters!984 (_1!3388 (get!1932 lt!220680)))))))))

(declare-fun b!535055 () Bool)

(assert (=> b!535055 (= e!322481 (contains!1199 rules!3103 (rule!1647 (_1!3388 (get!1932 lt!220680)))))))

(declare-fun b!535056 () Bool)

(assert (=> b!535056 (= e!322483 call!38203)))

(declare-fun b!535057 () Bool)

(declare-fun res!226273 () Bool)

(assert (=> b!535057 (=> (not res!226273) (not e!322481))))

(assert (=> b!535057 (= res!226273 (= (list!2145 (charsOf!574 (_1!3388 (get!1932 lt!220680)))) (originalCharacters!984 (_1!3388 (get!1932 lt!220680)))))))

(declare-fun b!535058 () Bool)

(declare-fun res!226272 () Bool)

(assert (=> b!535058 (=> (not res!226272) (not e!322481))))

(assert (=> b!535058 (= res!226272 (= (++!1433 (list!2145 (charsOf!574 (_1!3388 (get!1932 lt!220680)))) (_2!3388 (get!1932 lt!220680))) lt!220554))))

(declare-fun b!535059 () Bool)

(declare-fun lt!220679 () Option!1295)

(declare-fun lt!220683 () Option!1295)

(assert (=> b!535059 (= e!322483 (ite (and ((_ is None!1294) lt!220679) ((_ is None!1294) lt!220683)) None!1294 (ite ((_ is None!1294) lt!220683) lt!220679 (ite ((_ is None!1294) lt!220679) lt!220683 (ite (>= (size!4160 (_1!3388 (v!16101 lt!220679))) (size!4160 (_1!3388 (v!16101 lt!220683)))) lt!220679 lt!220683)))))))

(assert (=> b!535059 (= lt!220679 call!38203)))

(assert (=> b!535059 (= lt!220683 (maxPrefix!529 thiss!22590 (t!74026 rules!3103) lt!220554))))

(declare-fun b!535060 () Bool)

(declare-fun res!226274 () Bool)

(assert (=> b!535060 (=> (not res!226274) (not e!322481))))

(assert (=> b!535060 (= res!226274 (< (size!4161 (_2!3388 (get!1932 lt!220680))) (size!4161 lt!220554)))))

(assert (= (and d!189420 c!101892) b!535056))

(assert (= (and d!189420 (not c!101892)) b!535059))

(assert (= (or b!535056 b!535059) bm!38198))

(assert (= (and d!189420 (not res!226277)) b!535053))

(assert (= (and b!535053 res!226275) b!535057))

(assert (= (and b!535057 res!226273) b!535060))

(assert (= (and b!535060 res!226274) b!535058))

(assert (= (and b!535058 res!226272) b!535054))

(assert (= (and b!535054 res!226271) b!535052))

(assert (= (and b!535052 res!226276) b!535055))

(declare-fun m!780971 () Bool)

(assert (=> b!535059 m!780971))

(declare-fun m!780973 () Bool)

(assert (=> b!535055 m!780973))

(declare-fun m!780975 () Bool)

(assert (=> b!535055 m!780975))

(assert (=> b!535054 m!780973))

(declare-fun m!780977 () Bool)

(assert (=> b!535054 m!780977))

(assert (=> b!535054 m!780977))

(declare-fun m!780979 () Bool)

(assert (=> b!535054 m!780979))

(assert (=> b!535052 m!780973))

(declare-fun m!780981 () Bool)

(assert (=> b!535052 m!780981))

(assert (=> b!535052 m!780981))

(declare-fun m!780983 () Bool)

(assert (=> b!535052 m!780983))

(assert (=> b!535052 m!780983))

(declare-fun m!780985 () Bool)

(assert (=> b!535052 m!780985))

(assert (=> b!535058 m!780973))

(assert (=> b!535058 m!780981))

(assert (=> b!535058 m!780981))

(assert (=> b!535058 m!780983))

(assert (=> b!535058 m!780983))

(declare-fun m!780987 () Bool)

(assert (=> b!535058 m!780987))

(assert (=> b!535057 m!780973))

(assert (=> b!535057 m!780981))

(assert (=> b!535057 m!780981))

(assert (=> b!535057 m!780983))

(declare-fun m!780989 () Bool)

(assert (=> bm!38198 m!780989))

(declare-fun m!780991 () Bool)

(assert (=> b!535053 m!780991))

(assert (=> b!535060 m!780973))

(declare-fun m!780993 () Bool)

(assert (=> b!535060 m!780993))

(assert (=> b!535060 m!780521))

(declare-fun m!780995 () Bool)

(assert (=> d!189420 m!780995))

(declare-fun m!780997 () Bool)

(assert (=> d!189420 m!780997))

(declare-fun m!780999 () Bool)

(assert (=> d!189420 m!780999))

(assert (=> d!189420 m!780963))

(assert (=> b!534720 d!189420))

(declare-fun b!535061 () Bool)

(declare-fun e!322484 () List!5167)

(assert (=> b!535061 (= e!322484 suffix!1342)))

(declare-fun b!535063 () Bool)

(declare-fun res!226278 () Bool)

(declare-fun e!322485 () Bool)

(assert (=> b!535063 (=> (not res!226278) (not e!322485))))

(declare-fun lt!220684 () List!5167)

(assert (=> b!535063 (= res!226278 (= (size!4161 lt!220684) (+ (size!4161 input!2705) (size!4161 suffix!1342))))))

(declare-fun b!535064 () Bool)

(assert (=> b!535064 (= e!322485 (or (not (= suffix!1342 Nil!5157)) (= lt!220684 input!2705)))))

(declare-fun b!535062 () Bool)

(assert (=> b!535062 (= e!322484 (Cons!5157 (h!10558 input!2705) (++!1433 (t!74024 input!2705) suffix!1342)))))

(declare-fun d!189422 () Bool)

(assert (=> d!189422 e!322485))

(declare-fun res!226279 () Bool)

(assert (=> d!189422 (=> (not res!226279) (not e!322485))))

(assert (=> d!189422 (= res!226279 (= (content!909 lt!220684) ((_ map or) (content!909 input!2705) (content!909 suffix!1342))))))

(assert (=> d!189422 (= lt!220684 e!322484)))

(declare-fun c!101893 () Bool)

(assert (=> d!189422 (= c!101893 ((_ is Nil!5157) input!2705))))

(assert (=> d!189422 (= (++!1433 input!2705 suffix!1342) lt!220684)))

(assert (= (and d!189422 c!101893) b!535061))

(assert (= (and d!189422 (not c!101893)) b!535062))

(assert (= (and d!189422 res!226279) b!535063))

(assert (= (and b!535063 res!226278) b!535064))

(declare-fun m!781001 () Bool)

(assert (=> b!535063 m!781001))

(assert (=> b!535063 m!780617))

(assert (=> b!535063 m!780533))

(declare-fun m!781003 () Bool)

(assert (=> b!535062 m!781003))

(declare-fun m!781005 () Bool)

(assert (=> d!189422 m!781005))

(declare-fun m!781007 () Bool)

(assert (=> d!189422 m!781007))

(assert (=> d!189422 m!780541))

(assert (=> b!534720 d!189422))

(declare-fun d!189424 () Bool)

(assert (=> d!189424 (= (list!2145 (charsOf!574 token!491)) (list!2147 (c!101843 (charsOf!574 token!491))))))

(declare-fun bs!67312 () Bool)

(assert (= bs!67312 d!189424))

(declare-fun m!781009 () Bool)

(assert (=> bs!67312 m!781009))

(assert (=> b!534709 d!189424))

(declare-fun d!189426 () Bool)

(declare-fun lt!220685 () BalanceConc!3332)

(assert (=> d!189426 (= (list!2145 lt!220685) (originalCharacters!984 token!491))))

(assert (=> d!189426 (= lt!220685 (dynLambda!3085 (toChars!1651 (transformation!945 (rule!1647 token!491))) (value!31799 token!491)))))

(assert (=> d!189426 (= (charsOf!574 token!491) lt!220685)))

(declare-fun b_lambda!20669 () Bool)

(assert (=> (not b_lambda!20669) (not d!189426)))

(assert (=> d!189426 t!74060))

(declare-fun b_and!52327 () Bool)

(assert (= b_and!52323 (and (=> t!74060 result!52968) b_and!52327)))

(assert (=> d!189426 t!74062))

(declare-fun b_and!52329 () Bool)

(assert (= b_and!52325 (and (=> t!74062 result!52970) b_and!52329)))

(declare-fun m!781011 () Bool)

(assert (=> d!189426 m!781011))

(assert (=> d!189426 m!780923))

(assert (=> b!534709 d!189426))

(declare-fun d!189428 () Bool)

(declare-fun lt!220686 () Int)

(assert (=> d!189428 (>= lt!220686 0)))

(declare-fun e!322486 () Int)

(assert (=> d!189428 (= lt!220686 e!322486)))

(declare-fun c!101894 () Bool)

(assert (=> d!189428 (= c!101894 ((_ is Nil!5157) (originalCharacters!984 token!491)))))

(assert (=> d!189428 (= (size!4161 (originalCharacters!984 token!491)) lt!220686)))

(declare-fun b!535065 () Bool)

(assert (=> b!535065 (= e!322486 0)))

(declare-fun b!535066 () Bool)

(assert (=> b!535066 (= e!322486 (+ 1 (size!4161 (t!74024 (originalCharacters!984 token!491)))))))

(assert (= (and d!189428 c!101894) b!535065))

(assert (= (and d!189428 (not c!101894)) b!535066))

(declare-fun m!781013 () Bool)

(assert (=> b!535066 m!781013))

(assert (=> b!534721 d!189428))

(declare-fun d!189430 () Bool)

(assert (=> d!189430 (= (apply!1220 (transformation!945 (rule!1647 token!491)) (seqFromList!1143 lt!220532)) (dynLambda!3084 (toValue!1792 (transformation!945 (rule!1647 token!491))) (seqFromList!1143 lt!220532)))))

(declare-fun b_lambda!20671 () Bool)

(assert (=> (not b_lambda!20671) (not d!189430)))

(declare-fun tb!47463 () Bool)

(declare-fun t!74064 () Bool)

(assert (=> (and b!534725 (= (toValue!1792 (transformation!945 (h!10560 rules!3103))) (toValue!1792 (transformation!945 (rule!1647 token!491)))) t!74064) tb!47463))

(declare-fun result!52972 () Bool)

(assert (=> tb!47463 (= result!52972 (inv!21 (dynLambda!3084 (toValue!1792 (transformation!945 (rule!1647 token!491))) (seqFromList!1143 lt!220532))))))

(declare-fun m!781015 () Bool)

(assert (=> tb!47463 m!781015))

(assert (=> d!189430 t!74064))

(declare-fun b_and!52331 () Bool)

(assert (= b_and!52307 (and (=> t!74064 result!52972) b_and!52331)))

(declare-fun t!74066 () Bool)

(declare-fun tb!47465 () Bool)

(assert (=> (and b!534716 (= (toValue!1792 (transformation!945 (rule!1647 token!491))) (toValue!1792 (transformation!945 (rule!1647 token!491)))) t!74066) tb!47465))

(declare-fun result!52974 () Bool)

(assert (= result!52974 result!52972))

(assert (=> d!189430 t!74066))

(declare-fun b_and!52333 () Bool)

(assert (= b_and!52309 (and (=> t!74066 result!52974) b_and!52333)))

(assert (=> d!189430 m!780427))

(declare-fun m!781017 () Bool)

(assert (=> d!189430 m!781017))

(assert (=> b!534717 d!189430))

(declare-fun d!189432 () Bool)

(assert (=> d!189432 (= (seqFromList!1143 lt!220532) (fromListB!511 lt!220532))))

(declare-fun bs!67313 () Bool)

(assert (= bs!67313 d!189432))

(declare-fun m!781019 () Bool)

(assert (=> bs!67313 m!781019))

(assert (=> b!534717 d!189432))

(declare-fun d!189434 () Bool)

(declare-fun lt!220687 () Int)

(assert (=> d!189434 (>= lt!220687 0)))

(declare-fun e!322488 () Int)

(assert (=> d!189434 (= lt!220687 e!322488)))

(declare-fun c!101895 () Bool)

(assert (=> d!189434 (= c!101895 ((_ is Nil!5157) (originalCharacters!984 (_1!3388 (v!16101 lt!220537)))))))

(assert (=> d!189434 (= (size!4161 (originalCharacters!984 (_1!3388 (v!16101 lt!220537)))) lt!220687)))

(declare-fun b!535067 () Bool)

(assert (=> b!535067 (= e!322488 0)))

(declare-fun b!535068 () Bool)

(assert (=> b!535068 (= e!322488 (+ 1 (size!4161 (t!74024 (originalCharacters!984 (_1!3388 (v!16101 lt!220537)))))))))

(assert (= (and d!189434 c!101895) b!535067))

(assert (= (and d!189434 (not c!101895)) b!535068))

(declare-fun m!781021 () Bool)

(assert (=> b!535068 m!781021))

(assert (=> b!534718 d!189434))

(declare-fun d!189436 () Bool)

(assert (=> d!189436 (= (inv!6472 (tag!1207 (rule!1647 token!491))) (= (mod (str.len (value!31798 (tag!1207 (rule!1647 token!491)))) 2) 0))))

(assert (=> b!534707 d!189436))

(declare-fun d!189438 () Bool)

(declare-fun res!226280 () Bool)

(declare-fun e!322489 () Bool)

(assert (=> d!189438 (=> (not res!226280) (not e!322489))))

(assert (=> d!189438 (= res!226280 (semiInverseModEq!375 (toChars!1651 (transformation!945 (rule!1647 token!491))) (toValue!1792 (transformation!945 (rule!1647 token!491)))))))

(assert (=> d!189438 (= (inv!6475 (transformation!945 (rule!1647 token!491))) e!322489)))

(declare-fun b!535069 () Bool)

(assert (=> b!535069 (= e!322489 (equivClasses!358 (toChars!1651 (transformation!945 (rule!1647 token!491))) (toValue!1792 (transformation!945 (rule!1647 token!491)))))))

(assert (= (and d!189438 res!226280) b!535069))

(assert (=> d!189438 m!780567))

(assert (=> b!535069 m!780569))

(assert (=> b!534707 d!189438))

(declare-fun b!535080 () Bool)

(declare-fun e!322492 () Bool)

(assert (=> b!535080 (= e!322492 tp_is_empty!2913)))

(declare-fun b!535081 () Bool)

(declare-fun tp!170714 () Bool)

(declare-fun tp!170716 () Bool)

(assert (=> b!535081 (= e!322492 (and tp!170714 tp!170716))))

(declare-fun b!535082 () Bool)

(declare-fun tp!170715 () Bool)

(assert (=> b!535082 (= e!322492 tp!170715)))

(declare-fun b!535083 () Bool)

(declare-fun tp!170713 () Bool)

(declare-fun tp!170712 () Bool)

(assert (=> b!535083 (= e!322492 (and tp!170713 tp!170712))))

(assert (=> b!534714 (= tp!170656 e!322492)))

(assert (= (and b!534714 ((_ is ElementMatch!1279) (regex!945 (h!10560 rules!3103)))) b!535080))

(assert (= (and b!534714 ((_ is Concat!2248) (regex!945 (h!10560 rules!3103)))) b!535081))

(assert (= (and b!534714 ((_ is Star!1279) (regex!945 (h!10560 rules!3103)))) b!535082))

(assert (= (and b!534714 ((_ is Union!1279) (regex!945 (h!10560 rules!3103)))) b!535083))

(declare-fun b!535088 () Bool)

(declare-fun e!322495 () Bool)

(declare-fun tp!170719 () Bool)

(assert (=> b!535088 (= e!322495 (and tp_is_empty!2913 tp!170719))))

(assert (=> b!534719 (= tp!170650 e!322495)))

(assert (= (and b!534719 ((_ is Cons!5157) (t!74024 input!2705))) b!535088))

(declare-fun b!535089 () Bool)

(declare-fun e!322496 () Bool)

(declare-fun tp!170720 () Bool)

(assert (=> b!535089 (= e!322496 (and tp_is_empty!2913 tp!170720))))

(assert (=> b!534715 (= tp!170649 e!322496)))

(assert (= (and b!534715 ((_ is Cons!5157) (originalCharacters!984 token!491))) b!535089))

(declare-fun b!535090 () Bool)

(declare-fun e!322497 () Bool)

(declare-fun tp!170721 () Bool)

(assert (=> b!535090 (= e!322497 (and tp_is_empty!2913 tp!170721))))

(assert (=> b!534701 (= tp!170652 e!322497)))

(assert (= (and b!534701 ((_ is Cons!5157) (t!74024 suffix!1342))) b!535090))

(declare-fun b!535091 () Bool)

(declare-fun e!322498 () Bool)

(assert (=> b!535091 (= e!322498 tp_is_empty!2913)))

(declare-fun b!535092 () Bool)

(declare-fun tp!170724 () Bool)

(declare-fun tp!170726 () Bool)

(assert (=> b!535092 (= e!322498 (and tp!170724 tp!170726))))

(declare-fun b!535093 () Bool)

(declare-fun tp!170725 () Bool)

(assert (=> b!535093 (= e!322498 tp!170725)))

(declare-fun b!535094 () Bool)

(declare-fun tp!170723 () Bool)

(declare-fun tp!170722 () Bool)

(assert (=> b!535094 (= e!322498 (and tp!170723 tp!170722))))

(assert (=> b!534707 (= tp!170648 e!322498)))

(assert (= (and b!534707 ((_ is ElementMatch!1279) (regex!945 (rule!1647 token!491)))) b!535091))

(assert (= (and b!534707 ((_ is Concat!2248) (regex!945 (rule!1647 token!491)))) b!535092))

(assert (= (and b!534707 ((_ is Star!1279) (regex!945 (rule!1647 token!491)))) b!535093))

(assert (= (and b!534707 ((_ is Union!1279) (regex!945 (rule!1647 token!491)))) b!535094))

(declare-fun b!535105 () Bool)

(declare-fun b_free!14581 () Bool)

(declare-fun b_next!14597 () Bool)

(assert (=> b!535105 (= b_free!14581 (not b_next!14597))))

(declare-fun t!74068 () Bool)

(declare-fun tb!47467 () Bool)

(assert (=> (and b!535105 (= (toValue!1792 (transformation!945 (h!10560 (t!74026 rules!3103)))) (toValue!1792 (transformation!945 (rule!1647 (_1!3388 (v!16101 lt!220537)))))) t!74068) tb!47467))

(declare-fun result!52982 () Bool)

(assert (= result!52982 result!52942))

(assert (=> d!189370 t!74068))

(declare-fun t!74070 () Bool)

(declare-fun tb!47469 () Bool)

(assert (=> (and b!535105 (= (toValue!1792 (transformation!945 (h!10560 (t!74026 rules!3103)))) (toValue!1792 (transformation!945 (rule!1647 token!491)))) t!74070) tb!47469))

(declare-fun result!52984 () Bool)

(assert (= result!52984 result!52972))

(assert (=> d!189430 t!74070))

(declare-fun b_and!52335 () Bool)

(declare-fun tp!170736 () Bool)

(assert (=> b!535105 (= tp!170736 (and (=> t!74068 result!52982) (=> t!74070 result!52984) b_and!52335))))

(declare-fun b_free!14583 () Bool)

(declare-fun b_next!14599 () Bool)

(assert (=> b!535105 (= b_free!14583 (not b_next!14599))))

(declare-fun t!74072 () Bool)

(declare-fun tb!47471 () Bool)

(assert (=> (and b!535105 (= (toChars!1651 (transformation!945 (h!10560 (t!74026 rules!3103)))) (toChars!1651 (transformation!945 (rule!1647 (_1!3388 (v!16101 lt!220537)))))) t!74072) tb!47471))

(declare-fun result!52986 () Bool)

(assert (= result!52986 result!52948))

(assert (=> d!189374 t!74072))

(declare-fun t!74074 () Bool)

(declare-fun tb!47473 () Bool)

(assert (=> (and b!535105 (= (toChars!1651 (transformation!945 (h!10560 (t!74026 rules!3103)))) (toChars!1651 (transformation!945 (rule!1647 token!491)))) t!74074) tb!47473))

(declare-fun result!52988 () Bool)

(assert (= result!52988 result!52968))

(assert (=> b!535009 t!74074))

(assert (=> d!189426 t!74074))

(declare-fun b_and!52337 () Bool)

(declare-fun tp!170735 () Bool)

(assert (=> b!535105 (= tp!170735 (and (=> t!74072 result!52986) (=> t!74074 result!52988) b_and!52337))))

(declare-fun e!322507 () Bool)

(assert (=> b!535105 (= e!322507 (and tp!170736 tp!170735))))

(declare-fun b!535104 () Bool)

(declare-fun e!322509 () Bool)

(declare-fun tp!170738 () Bool)

(assert (=> b!535104 (= e!322509 (and tp!170738 (inv!6472 (tag!1207 (h!10560 (t!74026 rules!3103)))) (inv!6475 (transformation!945 (h!10560 (t!74026 rules!3103)))) e!322507))))

(declare-fun b!535103 () Bool)

(declare-fun e!322510 () Bool)

(declare-fun tp!170737 () Bool)

(assert (=> b!535103 (= e!322510 (and e!322509 tp!170737))))

(assert (=> b!534708 (= tp!170653 e!322510)))

(assert (= b!535104 b!535105))

(assert (= b!535103 b!535104))

(assert (= (and b!534708 ((_ is Cons!5159) (t!74026 rules!3103))) b!535103))

(declare-fun m!781023 () Bool)

(assert (=> b!535104 m!781023))

(declare-fun m!781025 () Bool)

(assert (=> b!535104 m!781025))

(declare-fun b_lambda!20673 () Bool)

(assert (= b_lambda!20669 (or (and b!534725 b_free!14571 (= (toChars!1651 (transformation!945 (h!10560 rules!3103))) (toChars!1651 (transformation!945 (rule!1647 token!491))))) (and b!534716 b_free!14575) (and b!535105 b_free!14583 (= (toChars!1651 (transformation!945 (h!10560 (t!74026 rules!3103)))) (toChars!1651 (transformation!945 (rule!1647 token!491))))) b_lambda!20673)))

(declare-fun b_lambda!20675 () Bool)

(assert (= b_lambda!20671 (or (and b!534725 b_free!14569 (= (toValue!1792 (transformation!945 (h!10560 rules!3103))) (toValue!1792 (transformation!945 (rule!1647 token!491))))) (and b!534716 b_free!14573) (and b!535105 b_free!14581 (= (toValue!1792 (transformation!945 (h!10560 (t!74026 rules!3103)))) (toValue!1792 (transformation!945 (rule!1647 token!491))))) b_lambda!20675)))

(declare-fun b_lambda!20677 () Bool)

(assert (= b_lambda!20661 (or (and b!534725 b_free!14571 (= (toChars!1651 (transformation!945 (h!10560 rules!3103))) (toChars!1651 (transformation!945 (rule!1647 token!491))))) (and b!534716 b_free!14575) (and b!535105 b_free!14583 (= (toChars!1651 (transformation!945 (h!10560 (t!74026 rules!3103)))) (toChars!1651 (transformation!945 (rule!1647 token!491))))) b_lambda!20677)))

(check-sat (not b_lambda!20655) (not b!534728) (not b!535053) (not b!535055) b_and!52329 (not b!534851) (not b!534956) b_and!52337 (not b!534883) (not d!189374) (not b_next!14585) (not b!534812) (not b!535081) (not b!535090) (not b!534807) b_and!52331 (not b!534850) (not b_next!14597) (not b!535010) (not tb!47443) (not b!535092) (not bm!38198) (not d!189414) (not b!534881) (not d!189378) (not b!535083) (not d!189422) (not tb!47463) (not b!535040) (not d!189410) (not d!189342) (not b!535058) b_and!52335 (not d!189326) (not d!189306) (not b!534953) (not b!535069) b_and!52333 (not tb!47447) (not b!535043) (not b!534825) (not b!535089) (not d!189252) (not b!535059) (not b_lambda!20677) (not b!535042) (not d!189240) (not b!535104) (not d!189366) (not b_lambda!20657) (not d!189362) (not d!189242) tp_is_empty!2913 (not b_next!14589) (not d!189368) (not b!535103) (not b!534824) (not d!189372) (not b!535019) (not d!189266) (not d!189418) (not d!189420) (not d!189406) (not b!535009) (not b!535093) (not b!535057) (not d!189364) (not d!189258) (not b!535082) (not b!534776) (not b!534871) (not d!189424) (not b!535051) (not b!535062) (not b!534806) (not d!189358) (not d!189238) (not tb!47459) (not b!534909) (not d!189408) (not b_lambda!20673) (not b!534738) (not b!534852) (not b!535017) (not b!535047) (not d!189394) (not b!535052) (not b!534847) (not b!535068) (not b_next!14587) (not b!534922) (not b!534808) (not b!535063) (not b!535048) (not b!534880) (not d!189292) (not d!189438) (not d!189360) b_and!52327 (not b!534813) (not b!534780) (not b!535094) (not b_lambda!20675) (not b!535020) (not b!535045) (not b_next!14599) (not b!535066) (not b!534814) (not b!534821) (not b!535054) (not b!535088) (not b!534920) (not b!535041) (not d!189426) (not d!189244) (not d!189300) (not b!534823) (not b!535046) (not b!534954) (not b_next!14591) (not b!534921) (not b!534739) (not b!534763) (not bm!38197) (not d!189432) (not b!535060))
(check-sat b_and!52329 b_and!52337 (not b_next!14585) b_and!52331 (not b_next!14597) b_and!52335 b_and!52333 (not b_next!14589) (not b_next!14587) b_and!52327 (not b_next!14599) (not b_next!14591))
