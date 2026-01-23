; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!167034 () Bool)

(assert start!167034)

(declare-fun b!1709647 () Bool)

(declare-fun b_free!46363 () Bool)

(declare-fun b_next!47067 () Bool)

(assert (=> b!1709647 (= b_free!46363 (not b_next!47067))))

(declare-fun tp!488633 () Bool)

(declare-fun b_and!123753 () Bool)

(assert (=> b!1709647 (= tp!488633 b_and!123753)))

(declare-fun b_free!46365 () Bool)

(declare-fun b_next!47069 () Bool)

(assert (=> b!1709647 (= b_free!46365 (not b_next!47069))))

(declare-fun tp!488644 () Bool)

(declare-fun b_and!123755 () Bool)

(assert (=> b!1709647 (= tp!488644 b_and!123755)))

(declare-fun b!1709657 () Bool)

(declare-fun b_free!46367 () Bool)

(declare-fun b_next!47071 () Bool)

(assert (=> b!1709657 (= b_free!46367 (not b_next!47071))))

(declare-fun tp!488634 () Bool)

(declare-fun b_and!123757 () Bool)

(assert (=> b!1709657 (= tp!488634 b_and!123757)))

(declare-fun b_free!46369 () Bool)

(declare-fun b_next!47073 () Bool)

(assert (=> b!1709657 (= b_free!46369 (not b_next!47073))))

(declare-fun tp!488642 () Bool)

(declare-fun b_and!123759 () Bool)

(assert (=> b!1709657 (= tp!488642 b_and!123759)))

(declare-fun b!1709650 () Bool)

(declare-fun b_free!46371 () Bool)

(declare-fun b_next!47075 () Bool)

(assert (=> b!1709650 (= b_free!46371 (not b_next!47075))))

(declare-fun tp!488635 () Bool)

(declare-fun b_and!123761 () Bool)

(assert (=> b!1709650 (= tp!488635 b_and!123761)))

(declare-fun b_free!46373 () Bool)

(declare-fun b_next!47077 () Bool)

(assert (=> b!1709650 (= b_free!46373 (not b_next!47077))))

(declare-fun tp!488641 () Bool)

(declare-fun b_and!123763 () Bool)

(assert (=> b!1709650 (= tp!488641 b_and!123763)))

(declare-fun tp!488640 () Bool)

(declare-fun b!1709639 () Bool)

(declare-fun e!1093557 () Bool)

(declare-fun e!1093555 () Bool)

(declare-datatypes ((List!18740 0))(
  ( (Nil!18670) (Cons!18670 (h!24071 (_ BitVec 16)) (t!158183 List!18740)) )
))
(declare-datatypes ((TokenValue!3389 0))(
  ( (FloatLiteralValue!6778 (text!24168 List!18740)) (TokenValueExt!3388 (__x!12080 Int)) (Broken!16945 (value!103668 List!18740)) (Object!3458) (End!3389) (Def!3389) (Underscore!3389) (Match!3389) (Else!3389) (Error!3389) (Case!3389) (If!3389) (Extends!3389) (Abstract!3389) (Class!3389) (Val!3389) (DelimiterValue!6778 (del!3449 List!18740)) (KeywordValue!3395 (value!103669 List!18740)) (CommentValue!6778 (value!103670 List!18740)) (WhitespaceValue!6778 (value!103671 List!18740)) (IndentationValue!3389 (value!103672 List!18740)) (String!21276) (Int32!3389) (Broken!16946 (value!103673 List!18740)) (Boolean!3390) (Unit!32498) (OperatorValue!3392 (op!3449 List!18740)) (IdentifierValue!6778 (value!103674 List!18740)) (IdentifierValue!6779 (value!103675 List!18740)) (WhitespaceValue!6779 (value!103676 List!18740)) (True!6778) (False!6778) (Broken!16947 (value!103677 List!18740)) (Broken!16948 (value!103678 List!18740)) (True!6779) (RightBrace!3389) (RightBracket!3389) (Colon!3389) (Null!3389) (Comma!3389) (LeftBracket!3389) (False!6779) (LeftBrace!3389) (ImaginaryLiteralValue!3389 (text!24169 List!18740)) (StringLiteralValue!10167 (value!103679 List!18740)) (EOFValue!3389 (value!103680 List!18740)) (IdentValue!3389 (value!103681 List!18740)) (DelimiterValue!6779 (value!103682 List!18740)) (DedentValue!3389 (value!103683 List!18740)) (NewLineValue!3389 (value!103684 List!18740)) (IntegerValue!10167 (value!103685 (_ BitVec 32)) (text!24170 List!18740)) (IntegerValue!10168 (value!103686 Int) (text!24171 List!18740)) (Times!3389) (Or!3389) (Equal!3389) (Minus!3389) (Broken!16949 (value!103687 List!18740)) (And!3389) (Div!3389) (LessEqual!3389) (Mod!3389) (Concat!8016) (Not!3389) (Plus!3389) (SpaceValue!3389 (value!103688 List!18740)) (IntegerValue!10169 (value!103689 Int) (text!24172 List!18740)) (StringLiteralValue!10168 (text!24173 List!18740)) (FloatLiteralValue!6779 (text!24174 List!18740)) (BytesLiteralValue!3389 (value!103690 List!18740)) (CommentValue!6779 (value!103691 List!18740)) (StringLiteralValue!10169 (value!103692 List!18740)) (ErrorTokenValue!3389 (msg!3450 List!18740)) )
))
(declare-datatypes ((C!9428 0))(
  ( (C!9429 (val!5310 Int)) )
))
(declare-datatypes ((List!18741 0))(
  ( (Nil!18671) (Cons!18671 (h!24072 C!9428) (t!158184 List!18741)) )
))
(declare-datatypes ((Regex!4627 0))(
  ( (ElementMatch!4627 (c!280095 C!9428)) (Concat!8017 (regOne!9766 Regex!4627) (regTwo!9766 Regex!4627)) (EmptyExpr!4627) (Star!4627 (reg!4956 Regex!4627)) (EmptyLang!4627) (Union!4627 (regOne!9767 Regex!4627) (regTwo!9767 Regex!4627)) )
))
(declare-datatypes ((String!21277 0))(
  ( (String!21278 (value!103693 String)) )
))
(declare-datatypes ((IArray!12425 0))(
  ( (IArray!12426 (innerList!6270 List!18741)) )
))
(declare-datatypes ((Conc!6210 0))(
  ( (Node!6210 (left!14889 Conc!6210) (right!15219 Conc!6210) (csize!12650 Int) (cheight!6421 Int)) (Leaf!9080 (xs!9086 IArray!12425) (csize!12651 Int)) (Empty!6210) )
))
(declare-datatypes ((BalanceConc!12364 0))(
  ( (BalanceConc!12365 (c!280096 Conc!6210)) )
))
(declare-datatypes ((TokenValueInjection!6438 0))(
  ( (TokenValueInjection!6439 (toValue!4798 Int) (toChars!4657 Int)) )
))
(declare-datatypes ((Rule!6398 0))(
  ( (Rule!6399 (regex!3299 Regex!4627) (tag!3595 String!21277) (isSeparator!3299 Bool) (transformation!3299 TokenValueInjection!6438)) )
))
(declare-datatypes ((List!18742 0))(
  ( (Nil!18672) (Cons!18672 (h!24073 Rule!6398) (t!158185 List!18742)) )
))
(declare-fun rules!3447 () List!18742)

(declare-fun inv!24080 (String!21277) Bool)

(declare-fun inv!24083 (TokenValueInjection!6438) Bool)

(assert (=> b!1709639 (= e!1093557 (and tp!488640 (inv!24080 (tag!3595 (h!24073 rules!3447))) (inv!24083 (transformation!3299 (h!24073 rules!3447))) e!1093555))))

(declare-fun b!1709640 () Bool)

(declare-fun res!766419 () Bool)

(declare-fun e!1093554 () Bool)

(assert (=> b!1709640 (=> (not res!766419) (not e!1093554))))

(declare-datatypes ((Token!6164 0))(
  ( (Token!6165 (value!103694 TokenValue!3389) (rule!5233 Rule!6398) (size!14842 Int) (originalCharacters!4113 List!18741)) )
))
(declare-fun token!523 () Token!6164)

(declare-fun rule!422 () Rule!6398)

(assert (=> b!1709640 (= res!766419 (= (rule!5233 token!523) rule!422))))

(declare-fun b!1709641 () Bool)

(declare-fun res!766414 () Bool)

(declare-fun e!1093546 () Bool)

(assert (=> b!1709641 (=> (not res!766414) (not e!1093546))))

(declare-fun isEmpty!11724 (List!18742) Bool)

(assert (=> b!1709641 (= res!766414 (not (isEmpty!11724 rules!3447)))))

(declare-fun b!1709642 () Bool)

(declare-fun e!1093558 () Bool)

(declare-fun tp_is_empty!7497 () Bool)

(declare-fun tp!488643 () Bool)

(assert (=> b!1709642 (= e!1093558 (and tp_is_empty!7497 tp!488643))))

(declare-fun res!766413 () Bool)

(assert (=> start!167034 (=> (not res!766413) (not e!1093546))))

(declare-datatypes ((LexerInterface!2928 0))(
  ( (LexerInterfaceExt!2925 (__x!12081 Int)) (Lexer!2926) )
))
(declare-fun thiss!24550 () LexerInterface!2928)

(get-info :version)

(assert (=> start!167034 (= res!766413 ((_ is Lexer!2926) thiss!24550))))

(assert (=> start!167034 e!1093546))

(assert (=> start!167034 e!1093558))

(declare-fun e!1093542 () Bool)

(assert (=> start!167034 e!1093542))

(assert (=> start!167034 true))

(declare-fun e!1093543 () Bool)

(declare-fun inv!24084 (Token!6164) Bool)

(assert (=> start!167034 (and (inv!24084 token!523) e!1093543)))

(declare-fun e!1093552 () Bool)

(assert (=> start!167034 e!1093552))

(declare-fun lt!653165 () List!18741)

(declare-fun e!1093549 () Bool)

(declare-fun b!1709643 () Bool)

(declare-datatypes ((List!18743 0))(
  ( (Nil!18673) (Cons!18673 (h!24074 Token!6164) (t!158186 List!18743)) )
))
(declare-datatypes ((IArray!12427 0))(
  ( (IArray!12428 (innerList!6271 List!18743)) )
))
(declare-datatypes ((Conc!6211 0))(
  ( (Node!6211 (left!14890 Conc!6211) (right!15220 Conc!6211) (csize!12652 Int) (cheight!6422 Int)) (Leaf!9081 (xs!9087 IArray!12427) (csize!12653 Int)) (Empty!6211) )
))
(declare-datatypes ((BalanceConc!12366 0))(
  ( (BalanceConc!12367 (c!280097 Conc!6211)) )
))
(declare-fun isEmpty!11725 (BalanceConc!12366) Bool)

(declare-datatypes ((tuple2!18384 0))(
  ( (tuple2!18385 (_1!10594 BalanceConc!12366) (_2!10594 BalanceConc!12364)) )
))
(declare-fun lex!1376 (LexerInterface!2928 List!18742 BalanceConc!12364) tuple2!18384)

(declare-fun seqFromList!2275 (List!18741) BalanceConc!12364)

(assert (=> b!1709643 (= e!1093549 (not (isEmpty!11725 (_1!10594 (lex!1376 thiss!24550 rules!3447 (seqFromList!2275 lt!653165))))))))

(declare-fun lt!653166 () List!18741)

(declare-datatypes ((tuple2!18386 0))(
  ( (tuple2!18387 (_1!10595 Token!6164) (_2!10595 List!18741)) )
))
(declare-datatypes ((Option!3623 0))(
  ( (None!3622) (Some!3622 (v!25007 tuple2!18386)) )
))
(declare-fun lt!653163 () Option!3623)

(declare-fun maxPrefix!1482 (LexerInterface!2928 List!18742 List!18741) Option!3623)

(assert (=> b!1709643 (= lt!653163 (maxPrefix!1482 thiss!24550 rules!3447 lt!653166))))

(declare-fun isPrefix!1540 (List!18741 List!18741) Bool)

(assert (=> b!1709643 (isPrefix!1540 lt!653165 lt!653166)))

(declare-datatypes ((Unit!32499 0))(
  ( (Unit!32500) )
))
(declare-fun lt!653162 () Unit!32499)

(declare-fun suffix!1421 () List!18741)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1050 (List!18741 List!18741) Unit!32499)

(assert (=> b!1709643 (= lt!653162 (lemmaConcatTwoListThenFirstIsPrefix!1050 lt!653165 suffix!1421))))

(declare-fun ++!5120 (List!18741 List!18741) List!18741)

(assert (=> b!1709643 (= lt!653166 (++!5120 lt!653165 suffix!1421))))

(declare-fun b!1709644 () Bool)

(declare-fun res!766421 () Bool)

(assert (=> b!1709644 (=> (not res!766421) (not e!1093546))))

(declare-fun contains!3317 (List!18742 Rule!6398) Bool)

(assert (=> b!1709644 (= res!766421 (contains!3317 rules!3447 rule!422))))

(declare-fun tp!488639 () Bool)

(declare-fun e!1093548 () Bool)

(declare-fun b!1709645 () Bool)

(assert (=> b!1709645 (= e!1093542 (and tp!488639 (inv!24080 (tag!3595 rule!422)) (inv!24083 (transformation!3299 rule!422)) e!1093548))))

(declare-fun b!1709646 () Bool)

(assert (=> b!1709646 (= e!1093554 (not e!1093549))))

(declare-fun res!766417 () Bool)

(assert (=> b!1709646 (=> res!766417 e!1093549)))

(declare-fun matchR!2101 (Regex!4627 List!18741) Bool)

(assert (=> b!1709646 (= res!766417 (not (matchR!2101 (regex!3299 rule!422) lt!653165)))))

(declare-fun ruleValid!798 (LexerInterface!2928 Rule!6398) Bool)

(assert (=> b!1709646 (ruleValid!798 thiss!24550 rule!422)))

(declare-fun lt!653164 () Unit!32499)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!322 (LexerInterface!2928 Rule!6398 List!18742) Unit!32499)

(assert (=> b!1709646 (= lt!653164 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!322 thiss!24550 rule!422 rules!3447))))

(assert (=> b!1709647 (= e!1093548 (and tp!488633 tp!488644))))

(declare-fun e!1093547 () Bool)

(declare-fun tp!488638 () Bool)

(declare-fun e!1093545 () Bool)

(declare-fun b!1709648 () Bool)

(assert (=> b!1709648 (= e!1093545 (and tp!488638 (inv!24080 (tag!3595 (rule!5233 token!523))) (inv!24083 (transformation!3299 (rule!5233 token!523))) e!1093547))))

(declare-fun b!1709649 () Bool)

(declare-fun e!1093551 () Bool)

(assert (=> b!1709649 (= e!1093546 e!1093551)))

(declare-fun res!766418 () Bool)

(assert (=> b!1709649 (=> (not res!766418) (not e!1093551))))

(declare-fun lt!653167 () Option!3623)

(declare-fun isDefined!2968 (Option!3623) Bool)

(assert (=> b!1709649 (= res!766418 (isDefined!2968 lt!653167))))

(assert (=> b!1709649 (= lt!653167 (maxPrefix!1482 thiss!24550 rules!3447 lt!653165))))

(declare-fun list!7528 (BalanceConc!12364) List!18741)

(declare-fun charsOf!1948 (Token!6164) BalanceConc!12364)

(assert (=> b!1709649 (= lt!653165 (list!7528 (charsOf!1948 token!523)))))

(assert (=> b!1709650 (= e!1093547 (and tp!488635 tp!488641))))

(declare-fun b!1709651 () Bool)

(assert (=> b!1709651 (= e!1093551 e!1093554)))

(declare-fun res!766420 () Bool)

(assert (=> b!1709651 (=> (not res!766420) (not e!1093554))))

(declare-fun lt!653168 () tuple2!18386)

(assert (=> b!1709651 (= res!766420 (= (_1!10595 lt!653168) token!523))))

(declare-fun get!5492 (Option!3623) tuple2!18386)

(assert (=> b!1709651 (= lt!653168 (get!5492 lt!653167))))

(declare-fun b!1709652 () Bool)

(declare-fun res!766422 () Bool)

(assert (=> b!1709652 (=> res!766422 e!1093549)))

(declare-fun prefixMatch!512 (Regex!4627 List!18741) Bool)

(declare-fun rulesRegex!657 (LexerInterface!2928 List!18742) Regex!4627)

(declare-fun head!3832 (List!18741) C!9428)

(assert (=> b!1709652 (= res!766422 (prefixMatch!512 (rulesRegex!657 thiss!24550 rules!3447) (++!5120 lt!653165 (Cons!18671 (head!3832 suffix!1421) Nil!18671))))))

(declare-fun b!1709653 () Bool)

(declare-fun res!766415 () Bool)

(assert (=> b!1709653 (=> (not res!766415) (not e!1093546))))

(declare-fun rulesInvariant!2597 (LexerInterface!2928 List!18742) Bool)

(assert (=> b!1709653 (= res!766415 (rulesInvariant!2597 thiss!24550 rules!3447))))

(declare-fun b!1709654 () Bool)

(declare-fun tp!488637 () Bool)

(assert (=> b!1709654 (= e!1093552 (and e!1093557 tp!488637))))

(declare-fun b!1709655 () Bool)

(declare-fun res!766416 () Bool)

(assert (=> b!1709655 (=> (not res!766416) (not e!1093554))))

(declare-fun isEmpty!11726 (List!18741) Bool)

(assert (=> b!1709655 (= res!766416 (isEmpty!11726 (_2!10595 lt!653168)))))

(declare-fun b!1709656 () Bool)

(declare-fun res!766412 () Bool)

(assert (=> b!1709656 (=> res!766412 e!1093549)))

(assert (=> b!1709656 (= res!766412 (isEmpty!11726 suffix!1421))))

(assert (=> b!1709657 (= e!1093555 (and tp!488634 tp!488642))))

(declare-fun b!1709658 () Bool)

(declare-fun tp!488636 () Bool)

(declare-fun inv!21 (TokenValue!3389) Bool)

(assert (=> b!1709658 (= e!1093543 (and (inv!21 (value!103694 token!523)) e!1093545 tp!488636))))

(assert (= (and start!167034 res!766413) b!1709641))

(assert (= (and b!1709641 res!766414) b!1709653))

(assert (= (and b!1709653 res!766415) b!1709644))

(assert (= (and b!1709644 res!766421) b!1709649))

(assert (= (and b!1709649 res!766418) b!1709651))

(assert (= (and b!1709651 res!766420) b!1709655))

(assert (= (and b!1709655 res!766416) b!1709640))

(assert (= (and b!1709640 res!766419) b!1709646))

(assert (= (and b!1709646 (not res!766417)) b!1709656))

(assert (= (and b!1709656 (not res!766412)) b!1709652))

(assert (= (and b!1709652 (not res!766422)) b!1709643))

(assert (= (and start!167034 ((_ is Cons!18671) suffix!1421)) b!1709642))

(assert (= b!1709645 b!1709647))

(assert (= start!167034 b!1709645))

(assert (= b!1709648 b!1709650))

(assert (= b!1709658 b!1709648))

(assert (= start!167034 b!1709658))

(assert (= b!1709639 b!1709657))

(assert (= b!1709654 b!1709639))

(assert (= (and start!167034 ((_ is Cons!18672) rules!3447)) b!1709654))

(declare-fun m!2112653 () Bool)

(assert (=> b!1709653 m!2112653))

(declare-fun m!2112655 () Bool)

(assert (=> b!1709643 m!2112655))

(declare-fun m!2112657 () Bool)

(assert (=> b!1709643 m!2112657))

(declare-fun m!2112659 () Bool)

(assert (=> b!1709643 m!2112659))

(declare-fun m!2112661 () Bool)

(assert (=> b!1709643 m!2112661))

(assert (=> b!1709643 m!2112657))

(declare-fun m!2112663 () Bool)

(assert (=> b!1709643 m!2112663))

(declare-fun m!2112665 () Bool)

(assert (=> b!1709643 m!2112665))

(declare-fun m!2112667 () Bool)

(assert (=> b!1709643 m!2112667))

(declare-fun m!2112669 () Bool)

(assert (=> b!1709645 m!2112669))

(declare-fun m!2112671 () Bool)

(assert (=> b!1709645 m!2112671))

(declare-fun m!2112673 () Bool)

(assert (=> b!1709639 m!2112673))

(declare-fun m!2112675 () Bool)

(assert (=> b!1709639 m!2112675))

(declare-fun m!2112677 () Bool)

(assert (=> b!1709649 m!2112677))

(declare-fun m!2112679 () Bool)

(assert (=> b!1709649 m!2112679))

(declare-fun m!2112681 () Bool)

(assert (=> b!1709649 m!2112681))

(assert (=> b!1709649 m!2112681))

(declare-fun m!2112683 () Bool)

(assert (=> b!1709649 m!2112683))

(declare-fun m!2112685 () Bool)

(assert (=> b!1709648 m!2112685))

(declare-fun m!2112687 () Bool)

(assert (=> b!1709648 m!2112687))

(declare-fun m!2112689 () Bool)

(assert (=> b!1709655 m!2112689))

(declare-fun m!2112691 () Bool)

(assert (=> b!1709652 m!2112691))

(declare-fun m!2112693 () Bool)

(assert (=> b!1709652 m!2112693))

(declare-fun m!2112695 () Bool)

(assert (=> b!1709652 m!2112695))

(assert (=> b!1709652 m!2112691))

(assert (=> b!1709652 m!2112695))

(declare-fun m!2112697 () Bool)

(assert (=> b!1709652 m!2112697))

(declare-fun m!2112699 () Bool)

(assert (=> b!1709651 m!2112699))

(declare-fun m!2112701 () Bool)

(assert (=> b!1709656 m!2112701))

(declare-fun m!2112703 () Bool)

(assert (=> b!1709646 m!2112703))

(declare-fun m!2112705 () Bool)

(assert (=> b!1709646 m!2112705))

(declare-fun m!2112707 () Bool)

(assert (=> b!1709646 m!2112707))

(declare-fun m!2112709 () Bool)

(assert (=> start!167034 m!2112709))

(declare-fun m!2112711 () Bool)

(assert (=> b!1709641 m!2112711))

(declare-fun m!2112713 () Bool)

(assert (=> b!1709644 m!2112713))

(declare-fun m!2112715 () Bool)

(assert (=> b!1709658 m!2112715))

(check-sat (not b!1709651) b_and!123763 (not b_next!47071) (not b!1709642) (not b_next!47073) (not b!1709655) b_and!123759 (not b!1709644) (not b!1709653) (not b!1709658) (not start!167034) (not b_next!47075) (not b!1709656) (not b!1709649) (not b_next!47069) b_and!123753 (not b_next!47067) b_and!123757 (not b_next!47077) (not b!1709643) (not b!1709652) (not b!1709645) (not b!1709646) tp_is_empty!7497 b_and!123761 (not b!1709639) (not b!1709648) (not b!1709654) b_and!123755 (not b!1709641))
(check-sat b_and!123763 (not b_next!47071) (not b_next!47073) b_and!123759 (not b_next!47075) b_and!123761 b_and!123755 (not b_next!47069) b_and!123753 (not b_next!47067) b_and!123757 (not b_next!47077))
(get-model)

(declare-fun d!524508 () Bool)

(assert (=> d!524508 (= (inv!24080 (tag!3595 (h!24073 rules!3447))) (= (mod (str.len (value!103693 (tag!3595 (h!24073 rules!3447)))) 2) 0))))

(assert (=> b!1709639 d!524508))

(declare-fun d!524514 () Bool)

(declare-fun res!766472 () Bool)

(declare-fun e!1093595 () Bool)

(assert (=> d!524514 (=> (not res!766472) (not e!1093595))))

(declare-fun semiInverseModEq!1301 (Int Int) Bool)

(assert (=> d!524514 (= res!766472 (semiInverseModEq!1301 (toChars!4657 (transformation!3299 (h!24073 rules!3447))) (toValue!4798 (transformation!3299 (h!24073 rules!3447)))))))

(assert (=> d!524514 (= (inv!24083 (transformation!3299 (h!24073 rules!3447))) e!1093595)))

(declare-fun b!1709719 () Bool)

(declare-fun equivClasses!1242 (Int Int) Bool)

(assert (=> b!1709719 (= e!1093595 (equivClasses!1242 (toChars!4657 (transformation!3299 (h!24073 rules!3447))) (toValue!4798 (transformation!3299 (h!24073 rules!3447)))))))

(assert (= (and d!524514 res!766472) b!1709719))

(declare-fun m!2112749 () Bool)

(assert (=> d!524514 m!2112749))

(declare-fun m!2112751 () Bool)

(assert (=> b!1709719 m!2112751))

(assert (=> b!1709639 d!524514))

(declare-fun d!524524 () Bool)

(declare-fun isEmpty!11730 (Option!3623) Bool)

(assert (=> d!524524 (= (isDefined!2968 lt!653167) (not (isEmpty!11730 lt!653167)))))

(declare-fun bs!401679 () Bool)

(assert (= bs!401679 d!524524))

(declare-fun m!2112753 () Bool)

(assert (=> bs!401679 m!2112753))

(assert (=> b!1709649 d!524524))

(declare-fun d!524526 () Bool)

(declare-fun e!1093635 () Bool)

(assert (=> d!524526 e!1093635))

(declare-fun res!766534 () Bool)

(assert (=> d!524526 (=> res!766534 e!1093635)))

(declare-fun lt!653220 () Option!3623)

(assert (=> d!524526 (= res!766534 (isEmpty!11730 lt!653220))))

(declare-fun e!1093634 () Option!3623)

(assert (=> d!524526 (= lt!653220 e!1093634)))

(declare-fun c!280119 () Bool)

(assert (=> d!524526 (= c!280119 (and ((_ is Cons!18672) rules!3447) ((_ is Nil!18672) (t!158185 rules!3447))))))

(declare-fun lt!653219 () Unit!32499)

(declare-fun lt!653223 () Unit!32499)

(assert (=> d!524526 (= lt!653219 lt!653223)))

(assert (=> d!524526 (isPrefix!1540 lt!653165 lt!653165)))

(declare-fun lemmaIsPrefixRefl!1051 (List!18741 List!18741) Unit!32499)

(assert (=> d!524526 (= lt!653223 (lemmaIsPrefixRefl!1051 lt!653165 lt!653165))))

(declare-fun rulesValidInductive!1086 (LexerInterface!2928 List!18742) Bool)

(assert (=> d!524526 (rulesValidInductive!1086 thiss!24550 rules!3447)))

(assert (=> d!524526 (= (maxPrefix!1482 thiss!24550 rules!3447 lt!653165) lt!653220)))

(declare-fun b!1709802 () Bool)

(declare-fun res!766537 () Bool)

(declare-fun e!1093636 () Bool)

(assert (=> b!1709802 (=> (not res!766537) (not e!1093636))))

(assert (=> b!1709802 (= res!766537 (matchR!2101 (regex!3299 (rule!5233 (_1!10595 (get!5492 lt!653220)))) (list!7528 (charsOf!1948 (_1!10595 (get!5492 lt!653220))))))))

(declare-fun b!1709803 () Bool)

(declare-fun res!766536 () Bool)

(assert (=> b!1709803 (=> (not res!766536) (not e!1093636))))

(declare-fun apply!5110 (TokenValueInjection!6438 BalanceConc!12364) TokenValue!3389)

(assert (=> b!1709803 (= res!766536 (= (value!103694 (_1!10595 (get!5492 lt!653220))) (apply!5110 (transformation!3299 (rule!5233 (_1!10595 (get!5492 lt!653220)))) (seqFromList!2275 (originalCharacters!4113 (_1!10595 (get!5492 lt!653220)))))))))

(declare-fun b!1709804 () Bool)

(declare-fun res!766535 () Bool)

(assert (=> b!1709804 (=> (not res!766535) (not e!1093636))))

(assert (=> b!1709804 (= res!766535 (= (list!7528 (charsOf!1948 (_1!10595 (get!5492 lt!653220)))) (originalCharacters!4113 (_1!10595 (get!5492 lt!653220)))))))

(declare-fun b!1709805 () Bool)

(declare-fun call!109393 () Option!3623)

(assert (=> b!1709805 (= e!1093634 call!109393)))

(declare-fun bm!109388 () Bool)

(declare-fun maxPrefixOneRule!866 (LexerInterface!2928 Rule!6398 List!18741) Option!3623)

(assert (=> bm!109388 (= call!109393 (maxPrefixOneRule!866 thiss!24550 (h!24073 rules!3447) lt!653165))))

(declare-fun b!1709806 () Bool)

(declare-fun res!766531 () Bool)

(assert (=> b!1709806 (=> (not res!766531) (not e!1093636))))

(assert (=> b!1709806 (= res!766531 (= (++!5120 (list!7528 (charsOf!1948 (_1!10595 (get!5492 lt!653220)))) (_2!10595 (get!5492 lt!653220))) lt!653165))))

(declare-fun b!1709807 () Bool)

(declare-fun res!766532 () Bool)

(assert (=> b!1709807 (=> (not res!766532) (not e!1093636))))

(declare-fun size!14846 (List!18741) Int)

(assert (=> b!1709807 (= res!766532 (< (size!14846 (_2!10595 (get!5492 lt!653220))) (size!14846 lt!653165)))))

(declare-fun b!1709808 () Bool)

(assert (=> b!1709808 (= e!1093636 (contains!3317 rules!3447 (rule!5233 (_1!10595 (get!5492 lt!653220)))))))

(declare-fun b!1709809 () Bool)

(declare-fun lt!653221 () Option!3623)

(declare-fun lt!653222 () Option!3623)

(assert (=> b!1709809 (= e!1093634 (ite (and ((_ is None!3622) lt!653221) ((_ is None!3622) lt!653222)) None!3622 (ite ((_ is None!3622) lt!653222) lt!653221 (ite ((_ is None!3622) lt!653221) lt!653222 (ite (>= (size!14842 (_1!10595 (v!25007 lt!653221))) (size!14842 (_1!10595 (v!25007 lt!653222)))) lt!653221 lt!653222)))))))

(assert (=> b!1709809 (= lt!653221 call!109393)))

(assert (=> b!1709809 (= lt!653222 (maxPrefix!1482 thiss!24550 (t!158185 rules!3447) lt!653165))))

(declare-fun b!1709810 () Bool)

(assert (=> b!1709810 (= e!1093635 e!1093636)))

(declare-fun res!766533 () Bool)

(assert (=> b!1709810 (=> (not res!766533) (not e!1093636))))

(assert (=> b!1709810 (= res!766533 (isDefined!2968 lt!653220))))

(assert (= (and d!524526 c!280119) b!1709805))

(assert (= (and d!524526 (not c!280119)) b!1709809))

(assert (= (or b!1709805 b!1709809) bm!109388))

(assert (= (and d!524526 (not res!766534)) b!1709810))

(assert (= (and b!1709810 res!766533) b!1709804))

(assert (= (and b!1709804 res!766535) b!1709807))

(assert (= (and b!1709807 res!766532) b!1709806))

(assert (= (and b!1709806 res!766531) b!1709803))

(assert (= (and b!1709803 res!766536) b!1709802))

(assert (= (and b!1709802 res!766537) b!1709808))

(declare-fun m!2112853 () Bool)

(assert (=> d!524526 m!2112853))

(declare-fun m!2112855 () Bool)

(assert (=> d!524526 m!2112855))

(declare-fun m!2112857 () Bool)

(assert (=> d!524526 m!2112857))

(declare-fun m!2112859 () Bool)

(assert (=> d!524526 m!2112859))

(declare-fun m!2112861 () Bool)

(assert (=> bm!109388 m!2112861))

(declare-fun m!2112863 () Bool)

(assert (=> b!1709808 m!2112863))

(declare-fun m!2112865 () Bool)

(assert (=> b!1709808 m!2112865))

(assert (=> b!1709803 m!2112863))

(declare-fun m!2112867 () Bool)

(assert (=> b!1709803 m!2112867))

(assert (=> b!1709803 m!2112867))

(declare-fun m!2112869 () Bool)

(assert (=> b!1709803 m!2112869))

(assert (=> b!1709804 m!2112863))

(declare-fun m!2112871 () Bool)

(assert (=> b!1709804 m!2112871))

(assert (=> b!1709804 m!2112871))

(declare-fun m!2112873 () Bool)

(assert (=> b!1709804 m!2112873))

(assert (=> b!1709806 m!2112863))

(assert (=> b!1709806 m!2112871))

(assert (=> b!1709806 m!2112871))

(assert (=> b!1709806 m!2112873))

(assert (=> b!1709806 m!2112873))

(declare-fun m!2112875 () Bool)

(assert (=> b!1709806 m!2112875))

(assert (=> b!1709802 m!2112863))

(assert (=> b!1709802 m!2112871))

(assert (=> b!1709802 m!2112871))

(assert (=> b!1709802 m!2112873))

(assert (=> b!1709802 m!2112873))

(declare-fun m!2112877 () Bool)

(assert (=> b!1709802 m!2112877))

(declare-fun m!2112879 () Bool)

(assert (=> b!1709810 m!2112879))

(assert (=> b!1709807 m!2112863))

(declare-fun m!2112881 () Bool)

(assert (=> b!1709807 m!2112881))

(declare-fun m!2112883 () Bool)

(assert (=> b!1709807 m!2112883))

(declare-fun m!2112885 () Bool)

(assert (=> b!1709809 m!2112885))

(assert (=> b!1709649 d!524526))

(declare-fun d!524552 () Bool)

(declare-fun list!7531 (Conc!6210) List!18741)

(assert (=> d!524552 (= (list!7528 (charsOf!1948 token!523)) (list!7531 (c!280096 (charsOf!1948 token!523))))))

(declare-fun bs!401684 () Bool)

(assert (= bs!401684 d!524552))

(declare-fun m!2112887 () Bool)

(assert (=> bs!401684 m!2112887))

(assert (=> b!1709649 d!524552))

(declare-fun d!524554 () Bool)

(declare-fun lt!653226 () BalanceConc!12364)

(assert (=> d!524554 (= (list!7528 lt!653226) (originalCharacters!4113 token!523))))

(declare-fun dynLambda!8485 (Int TokenValue!3389) BalanceConc!12364)

(assert (=> d!524554 (= lt!653226 (dynLambda!8485 (toChars!4657 (transformation!3299 (rule!5233 token!523))) (value!103694 token!523)))))

(assert (=> d!524554 (= (charsOf!1948 token!523) lt!653226)))

(declare-fun b_lambda!53949 () Bool)

(assert (=> (not b_lambda!53949) (not d!524554)))

(declare-fun t!158188 () Bool)

(declare-fun tb!100887 () Bool)

(assert (=> (and b!1709647 (= (toChars!4657 (transformation!3299 rule!422)) (toChars!4657 (transformation!3299 (rule!5233 token!523)))) t!158188) tb!100887))

(declare-fun b!1709815 () Bool)

(declare-fun e!1093639 () Bool)

(declare-fun tp!488647 () Bool)

(declare-fun inv!24087 (Conc!6210) Bool)

(assert (=> b!1709815 (= e!1093639 (and (inv!24087 (c!280096 (dynLambda!8485 (toChars!4657 (transformation!3299 (rule!5233 token!523))) (value!103694 token!523)))) tp!488647))))

(declare-fun result!121214 () Bool)

(declare-fun inv!24088 (BalanceConc!12364) Bool)

(assert (=> tb!100887 (= result!121214 (and (inv!24088 (dynLambda!8485 (toChars!4657 (transformation!3299 (rule!5233 token!523))) (value!103694 token!523))) e!1093639))))

(assert (= tb!100887 b!1709815))

(declare-fun m!2112889 () Bool)

(assert (=> b!1709815 m!2112889))

(declare-fun m!2112891 () Bool)

(assert (=> tb!100887 m!2112891))

(assert (=> d!524554 t!158188))

(declare-fun b_and!123765 () Bool)

(assert (= b_and!123755 (and (=> t!158188 result!121214) b_and!123765)))

(declare-fun t!158190 () Bool)

(declare-fun tb!100889 () Bool)

(assert (=> (and b!1709657 (= (toChars!4657 (transformation!3299 (h!24073 rules!3447))) (toChars!4657 (transformation!3299 (rule!5233 token!523)))) t!158190) tb!100889))

(declare-fun result!121218 () Bool)

(assert (= result!121218 result!121214))

(assert (=> d!524554 t!158190))

(declare-fun b_and!123767 () Bool)

(assert (= b_and!123759 (and (=> t!158190 result!121218) b_and!123767)))

(declare-fun t!158192 () Bool)

(declare-fun tb!100891 () Bool)

(assert (=> (and b!1709650 (= (toChars!4657 (transformation!3299 (rule!5233 token!523))) (toChars!4657 (transformation!3299 (rule!5233 token!523)))) t!158192) tb!100891))

(declare-fun result!121220 () Bool)

(assert (= result!121220 result!121214))

(assert (=> d!524554 t!158192))

(declare-fun b_and!123769 () Bool)

(assert (= b_and!123763 (and (=> t!158192 result!121220) b_and!123769)))

(declare-fun m!2112893 () Bool)

(assert (=> d!524554 m!2112893))

(declare-fun m!2112895 () Bool)

(assert (=> d!524554 m!2112895))

(assert (=> b!1709649 d!524554))

(declare-fun d!524556 () Bool)

(declare-fun res!766540 () Bool)

(declare-fun e!1093642 () Bool)

(assert (=> d!524556 (=> (not res!766540) (not e!1093642))))

(declare-fun rulesValid!1229 (LexerInterface!2928 List!18742) Bool)

(assert (=> d!524556 (= res!766540 (rulesValid!1229 thiss!24550 rules!3447))))

(assert (=> d!524556 (= (rulesInvariant!2597 thiss!24550 rules!3447) e!1093642)))

(declare-fun b!1709818 () Bool)

(declare-datatypes ((List!18746 0))(
  ( (Nil!18676) (Cons!18676 (h!24077 String!21277) (t!158205 List!18746)) )
))
(declare-fun noDuplicateTag!1229 (LexerInterface!2928 List!18742 List!18746) Bool)

(assert (=> b!1709818 (= e!1093642 (noDuplicateTag!1229 thiss!24550 rules!3447 Nil!18676))))

(assert (= (and d!524556 res!766540) b!1709818))

(declare-fun m!2112897 () Bool)

(assert (=> d!524556 m!2112897))

(declare-fun m!2112899 () Bool)

(assert (=> b!1709818 m!2112899))

(assert (=> b!1709653 d!524556))

(declare-fun d!524558 () Bool)

(assert (=> d!524558 (= (isEmpty!11724 rules!3447) ((_ is Nil!18672) rules!3447))))

(assert (=> b!1709641 d!524558))

(declare-fun d!524560 () Bool)

(declare-fun c!280122 () Bool)

(assert (=> d!524560 (= c!280122 (isEmpty!11726 (++!5120 lt!653165 (Cons!18671 (head!3832 suffix!1421) Nil!18671))))))

(declare-fun e!1093645 () Bool)

(assert (=> d!524560 (= (prefixMatch!512 (rulesRegex!657 thiss!24550 rules!3447) (++!5120 lt!653165 (Cons!18671 (head!3832 suffix!1421) Nil!18671))) e!1093645)))

(declare-fun b!1709823 () Bool)

(declare-fun lostCause!498 (Regex!4627) Bool)

(assert (=> b!1709823 (= e!1093645 (not (lostCause!498 (rulesRegex!657 thiss!24550 rules!3447))))))

(declare-fun b!1709824 () Bool)

(declare-fun derivativeStep!1156 (Regex!4627 C!9428) Regex!4627)

(declare-fun tail!2549 (List!18741) List!18741)

(assert (=> b!1709824 (= e!1093645 (prefixMatch!512 (derivativeStep!1156 (rulesRegex!657 thiss!24550 rules!3447) (head!3832 (++!5120 lt!653165 (Cons!18671 (head!3832 suffix!1421) Nil!18671)))) (tail!2549 (++!5120 lt!653165 (Cons!18671 (head!3832 suffix!1421) Nil!18671)))))))

(assert (= (and d!524560 c!280122) b!1709823))

(assert (= (and d!524560 (not c!280122)) b!1709824))

(assert (=> d!524560 m!2112695))

(declare-fun m!2112901 () Bool)

(assert (=> d!524560 m!2112901))

(assert (=> b!1709823 m!2112691))

(declare-fun m!2112903 () Bool)

(assert (=> b!1709823 m!2112903))

(assert (=> b!1709824 m!2112695))

(declare-fun m!2112905 () Bool)

(assert (=> b!1709824 m!2112905))

(assert (=> b!1709824 m!2112691))

(assert (=> b!1709824 m!2112905))

(declare-fun m!2112907 () Bool)

(assert (=> b!1709824 m!2112907))

(assert (=> b!1709824 m!2112695))

(declare-fun m!2112909 () Bool)

(assert (=> b!1709824 m!2112909))

(assert (=> b!1709824 m!2112907))

(assert (=> b!1709824 m!2112909))

(declare-fun m!2112911 () Bool)

(assert (=> b!1709824 m!2112911))

(assert (=> b!1709652 d!524560))

(declare-fun d!524562 () Bool)

(declare-fun lt!653229 () Unit!32499)

(declare-fun lemma!312 (List!18742 LexerInterface!2928 List!18742) Unit!32499)

(assert (=> d!524562 (= lt!653229 (lemma!312 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!68796 () Int)

(declare-datatypes ((List!18747 0))(
  ( (Nil!18677) (Cons!18677 (h!24078 Regex!4627) (t!158206 List!18747)) )
))
(declare-fun generalisedUnion!320 (List!18747) Regex!4627)

(declare-fun map!3841 (List!18742 Int) List!18747)

(assert (=> d!524562 (= (rulesRegex!657 thiss!24550 rules!3447) (generalisedUnion!320 (map!3841 rules!3447 lambda!68796)))))

(declare-fun bs!401685 () Bool)

(assert (= bs!401685 d!524562))

(declare-fun m!2112913 () Bool)

(assert (=> bs!401685 m!2112913))

(declare-fun m!2112915 () Bool)

(assert (=> bs!401685 m!2112915))

(assert (=> bs!401685 m!2112915))

(declare-fun m!2112917 () Bool)

(assert (=> bs!401685 m!2112917))

(assert (=> b!1709652 d!524562))

(declare-fun b!1709835 () Bool)

(declare-fun res!766546 () Bool)

(declare-fun e!1093650 () Bool)

(assert (=> b!1709835 (=> (not res!766546) (not e!1093650))))

(declare-fun lt!653232 () List!18741)

(assert (=> b!1709835 (= res!766546 (= (size!14846 lt!653232) (+ (size!14846 lt!653165) (size!14846 (Cons!18671 (head!3832 suffix!1421) Nil!18671)))))))

(declare-fun d!524564 () Bool)

(assert (=> d!524564 e!1093650))

(declare-fun res!766545 () Bool)

(assert (=> d!524564 (=> (not res!766545) (not e!1093650))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2653 (List!18741) (InoxSet C!9428))

(assert (=> d!524564 (= res!766545 (= (content!2653 lt!653232) ((_ map or) (content!2653 lt!653165) (content!2653 (Cons!18671 (head!3832 suffix!1421) Nil!18671)))))))

(declare-fun e!1093651 () List!18741)

(assert (=> d!524564 (= lt!653232 e!1093651)))

(declare-fun c!280125 () Bool)

(assert (=> d!524564 (= c!280125 ((_ is Nil!18671) lt!653165))))

(assert (=> d!524564 (= (++!5120 lt!653165 (Cons!18671 (head!3832 suffix!1421) Nil!18671)) lt!653232)))

(declare-fun b!1709836 () Bool)

(assert (=> b!1709836 (= e!1093650 (or (not (= (Cons!18671 (head!3832 suffix!1421) Nil!18671) Nil!18671)) (= lt!653232 lt!653165)))))

(declare-fun b!1709834 () Bool)

(assert (=> b!1709834 (= e!1093651 (Cons!18671 (h!24072 lt!653165) (++!5120 (t!158184 lt!653165) (Cons!18671 (head!3832 suffix!1421) Nil!18671))))))

(declare-fun b!1709833 () Bool)

(assert (=> b!1709833 (= e!1093651 (Cons!18671 (head!3832 suffix!1421) Nil!18671))))

(assert (= (and d!524564 c!280125) b!1709833))

(assert (= (and d!524564 (not c!280125)) b!1709834))

(assert (= (and d!524564 res!766545) b!1709835))

(assert (= (and b!1709835 res!766546) b!1709836))

(declare-fun m!2112919 () Bool)

(assert (=> b!1709835 m!2112919))

(assert (=> b!1709835 m!2112883))

(declare-fun m!2112921 () Bool)

(assert (=> b!1709835 m!2112921))

(declare-fun m!2112923 () Bool)

(assert (=> d!524564 m!2112923))

(declare-fun m!2112925 () Bool)

(assert (=> d!524564 m!2112925))

(declare-fun m!2112927 () Bool)

(assert (=> d!524564 m!2112927))

(declare-fun m!2112929 () Bool)

(assert (=> b!1709834 m!2112929))

(assert (=> b!1709652 d!524564))

(declare-fun d!524566 () Bool)

(assert (=> d!524566 (= (head!3832 suffix!1421) (h!24072 suffix!1421))))

(assert (=> b!1709652 d!524566))

(declare-fun d!524568 () Bool)

(assert (=> d!524568 (= (get!5492 lt!653167) (v!25007 lt!653167))))

(assert (=> b!1709651 d!524568))

(declare-fun d!524570 () Bool)

(assert (=> d!524570 (= (inv!24080 (tag!3595 rule!422)) (= (mod (str.len (value!103693 (tag!3595 rule!422))) 2) 0))))

(assert (=> b!1709645 d!524570))

(declare-fun d!524572 () Bool)

(declare-fun res!766547 () Bool)

(declare-fun e!1093652 () Bool)

(assert (=> d!524572 (=> (not res!766547) (not e!1093652))))

(assert (=> d!524572 (= res!766547 (semiInverseModEq!1301 (toChars!4657 (transformation!3299 rule!422)) (toValue!4798 (transformation!3299 rule!422))))))

(assert (=> d!524572 (= (inv!24083 (transformation!3299 rule!422)) e!1093652)))

(declare-fun b!1709837 () Bool)

(assert (=> b!1709837 (= e!1093652 (equivClasses!1242 (toChars!4657 (transformation!3299 rule!422)) (toValue!4798 (transformation!3299 rule!422))))))

(assert (= (and d!524572 res!766547) b!1709837))

(declare-fun m!2112931 () Bool)

(assert (=> d!524572 m!2112931))

(declare-fun m!2112933 () Bool)

(assert (=> b!1709837 m!2112933))

(assert (=> b!1709645 d!524572))

(declare-fun d!524574 () Bool)

(assert (=> d!524574 (= (isEmpty!11726 suffix!1421) ((_ is Nil!18671) suffix!1421))))

(assert (=> b!1709656 d!524574))

(declare-fun d!524576 () Bool)

(assert (=> d!524576 (= (isEmpty!11726 (_2!10595 lt!653168)) ((_ is Nil!18671) (_2!10595 lt!653168)))))

(assert (=> b!1709655 d!524576))

(declare-fun d!524578 () Bool)

(declare-fun lt!653237 () Bool)

(declare-fun content!2654 (List!18742) (InoxSet Rule!6398))

(assert (=> d!524578 (= lt!653237 (select (content!2654 rules!3447) rule!422))))

(declare-fun e!1093663 () Bool)

(assert (=> d!524578 (= lt!653237 e!1093663)))

(declare-fun res!766558 () Bool)

(assert (=> d!524578 (=> (not res!766558) (not e!1093663))))

(assert (=> d!524578 (= res!766558 ((_ is Cons!18672) rules!3447))))

(assert (=> d!524578 (= (contains!3317 rules!3447 rule!422) lt!653237)))

(declare-fun b!1709852 () Bool)

(declare-fun e!1093664 () Bool)

(assert (=> b!1709852 (= e!1093663 e!1093664)))

(declare-fun res!766559 () Bool)

(assert (=> b!1709852 (=> res!766559 e!1093664)))

(assert (=> b!1709852 (= res!766559 (= (h!24073 rules!3447) rule!422))))

(declare-fun b!1709853 () Bool)

(assert (=> b!1709853 (= e!1093664 (contains!3317 (t!158185 rules!3447) rule!422))))

(assert (= (and d!524578 res!766558) b!1709852))

(assert (= (and b!1709852 (not res!766559)) b!1709853))

(declare-fun m!2112935 () Bool)

(assert (=> d!524578 m!2112935))

(declare-fun m!2112937 () Bool)

(assert (=> d!524578 m!2112937))

(declare-fun m!2112939 () Bool)

(assert (=> b!1709853 m!2112939))

(assert (=> b!1709644 d!524578))

(declare-fun d!524580 () Bool)

(declare-fun lt!653241 () Bool)

(declare-fun isEmpty!11731 (List!18743) Bool)

(declare-fun list!7532 (BalanceConc!12366) List!18743)

(assert (=> d!524580 (= lt!653241 (isEmpty!11731 (list!7532 (_1!10594 (lex!1376 thiss!24550 rules!3447 (seqFromList!2275 lt!653165))))))))

(declare-fun isEmpty!11732 (Conc!6211) Bool)

(assert (=> d!524580 (= lt!653241 (isEmpty!11732 (c!280097 (_1!10594 (lex!1376 thiss!24550 rules!3447 (seqFromList!2275 lt!653165))))))))

(assert (=> d!524580 (= (isEmpty!11725 (_1!10594 (lex!1376 thiss!24550 rules!3447 (seqFromList!2275 lt!653165)))) lt!653241)))

(declare-fun bs!401686 () Bool)

(assert (= bs!401686 d!524580))

(declare-fun m!2112959 () Bool)

(assert (=> bs!401686 m!2112959))

(assert (=> bs!401686 m!2112959))

(declare-fun m!2112961 () Bool)

(assert (=> bs!401686 m!2112961))

(declare-fun m!2112963 () Bool)

(assert (=> bs!401686 m!2112963))

(assert (=> b!1709643 d!524580))

(declare-fun b!1709944 () Bool)

(declare-fun e!1093714 () Bool)

(declare-fun e!1093715 () Bool)

(assert (=> b!1709944 (= e!1093714 e!1093715)))

(declare-fun res!766586 () Bool)

(declare-fun lt!653252 () tuple2!18384)

(declare-fun size!14847 (BalanceConc!12364) Int)

(assert (=> b!1709944 (= res!766586 (< (size!14847 (_2!10594 lt!653252)) (size!14847 (seqFromList!2275 lt!653165))))))

(assert (=> b!1709944 (=> (not res!766586) (not e!1093715))))

(declare-fun d!524586 () Bool)

(declare-fun e!1093716 () Bool)

(assert (=> d!524586 e!1093716))

(declare-fun res!766587 () Bool)

(assert (=> d!524586 (=> (not res!766587) (not e!1093716))))

(assert (=> d!524586 (= res!766587 e!1093714)))

(declare-fun c!280138 () Bool)

(declare-fun size!14848 (BalanceConc!12366) Int)

(assert (=> d!524586 (= c!280138 (> (size!14848 (_1!10594 lt!653252)) 0))))

(declare-fun lexTailRecV2!638 (LexerInterface!2928 List!18742 BalanceConc!12364 BalanceConc!12364 BalanceConc!12364 BalanceConc!12366) tuple2!18384)

(assert (=> d!524586 (= lt!653252 (lexTailRecV2!638 thiss!24550 rules!3447 (seqFromList!2275 lt!653165) (BalanceConc!12365 Empty!6210) (seqFromList!2275 lt!653165) (BalanceConc!12367 Empty!6211)))))

(assert (=> d!524586 (= (lex!1376 thiss!24550 rules!3447 (seqFromList!2275 lt!653165)) lt!653252)))

(declare-fun b!1709945 () Bool)

(assert (=> b!1709945 (= e!1093715 (not (isEmpty!11725 (_1!10594 lt!653252))))))

(declare-fun b!1709946 () Bool)

(declare-fun res!766588 () Bool)

(assert (=> b!1709946 (=> (not res!766588) (not e!1093716))))

(declare-datatypes ((tuple2!18390 0))(
  ( (tuple2!18391 (_1!10597 List!18743) (_2!10597 List!18741)) )
))
(declare-fun lexList!915 (LexerInterface!2928 List!18742 List!18741) tuple2!18390)

(assert (=> b!1709946 (= res!766588 (= (list!7532 (_1!10594 lt!653252)) (_1!10597 (lexList!915 thiss!24550 rules!3447 (list!7528 (seqFromList!2275 lt!653165))))))))

(declare-fun b!1709947 () Bool)

(assert (=> b!1709947 (= e!1093714 (= (_2!10594 lt!653252) (seqFromList!2275 lt!653165)))))

(declare-fun b!1709948 () Bool)

(assert (=> b!1709948 (= e!1093716 (= (list!7528 (_2!10594 lt!653252)) (_2!10597 (lexList!915 thiss!24550 rules!3447 (list!7528 (seqFromList!2275 lt!653165))))))))

(assert (= (and d!524586 c!280138) b!1709944))

(assert (= (and d!524586 (not c!280138)) b!1709947))

(assert (= (and b!1709944 res!766586) b!1709945))

(assert (= (and d!524586 res!766587) b!1709946))

(assert (= (and b!1709946 res!766588) b!1709948))

(declare-fun m!2113027 () Bool)

(assert (=> b!1709944 m!2113027))

(assert (=> b!1709944 m!2112657))

(declare-fun m!2113029 () Bool)

(assert (=> b!1709944 m!2113029))

(declare-fun m!2113031 () Bool)

(assert (=> b!1709948 m!2113031))

(assert (=> b!1709948 m!2112657))

(declare-fun m!2113033 () Bool)

(assert (=> b!1709948 m!2113033))

(assert (=> b!1709948 m!2113033))

(declare-fun m!2113035 () Bool)

(assert (=> b!1709948 m!2113035))

(declare-fun m!2113037 () Bool)

(assert (=> b!1709945 m!2113037))

(declare-fun m!2113039 () Bool)

(assert (=> d!524586 m!2113039))

(assert (=> d!524586 m!2112657))

(assert (=> d!524586 m!2112657))

(declare-fun m!2113041 () Bool)

(assert (=> d!524586 m!2113041))

(declare-fun m!2113043 () Bool)

(assert (=> b!1709946 m!2113043))

(assert (=> b!1709946 m!2112657))

(assert (=> b!1709946 m!2113033))

(assert (=> b!1709946 m!2113033))

(assert (=> b!1709946 m!2113035))

(assert (=> b!1709643 d!524586))

(declare-fun b!1709959 () Bool)

(declare-fun e!1093725 () Bool)

(assert (=> b!1709959 (= e!1093725 (isPrefix!1540 (tail!2549 lt!653165) (tail!2549 lt!653166)))))

(declare-fun d!524604 () Bool)

(declare-fun e!1093723 () Bool)

(assert (=> d!524604 e!1093723))

(declare-fun res!766600 () Bool)

(assert (=> d!524604 (=> res!766600 e!1093723)))

(declare-fun lt!653255 () Bool)

(assert (=> d!524604 (= res!766600 (not lt!653255))))

(declare-fun e!1093724 () Bool)

(assert (=> d!524604 (= lt!653255 e!1093724)))

(declare-fun res!766599 () Bool)

(assert (=> d!524604 (=> res!766599 e!1093724)))

(assert (=> d!524604 (= res!766599 ((_ is Nil!18671) lt!653165))))

(assert (=> d!524604 (= (isPrefix!1540 lt!653165 lt!653166) lt!653255)))

(declare-fun b!1709960 () Bool)

(assert (=> b!1709960 (= e!1093723 (>= (size!14846 lt!653166) (size!14846 lt!653165)))))

(declare-fun b!1709958 () Bool)

(declare-fun res!766598 () Bool)

(assert (=> b!1709958 (=> (not res!766598) (not e!1093725))))

(assert (=> b!1709958 (= res!766598 (= (head!3832 lt!653165) (head!3832 lt!653166)))))

(declare-fun b!1709957 () Bool)

(assert (=> b!1709957 (= e!1093724 e!1093725)))

(declare-fun res!766597 () Bool)

(assert (=> b!1709957 (=> (not res!766597) (not e!1093725))))

(assert (=> b!1709957 (= res!766597 (not ((_ is Nil!18671) lt!653166)))))

(assert (= (and d!524604 (not res!766599)) b!1709957))

(assert (= (and b!1709957 res!766597) b!1709958))

(assert (= (and b!1709958 res!766598) b!1709959))

(assert (= (and d!524604 (not res!766600)) b!1709960))

(declare-fun m!2113045 () Bool)

(assert (=> b!1709959 m!2113045))

(declare-fun m!2113047 () Bool)

(assert (=> b!1709959 m!2113047))

(assert (=> b!1709959 m!2113045))

(assert (=> b!1709959 m!2113047))

(declare-fun m!2113049 () Bool)

(assert (=> b!1709959 m!2113049))

(declare-fun m!2113051 () Bool)

(assert (=> b!1709960 m!2113051))

(assert (=> b!1709960 m!2112883))

(declare-fun m!2113053 () Bool)

(assert (=> b!1709958 m!2113053))

(declare-fun m!2113055 () Bool)

(assert (=> b!1709958 m!2113055))

(assert (=> b!1709643 d!524604))

(declare-fun b!1709963 () Bool)

(declare-fun res!766602 () Bool)

(declare-fun e!1093726 () Bool)

(assert (=> b!1709963 (=> (not res!766602) (not e!1093726))))

(declare-fun lt!653256 () List!18741)

(assert (=> b!1709963 (= res!766602 (= (size!14846 lt!653256) (+ (size!14846 lt!653165) (size!14846 suffix!1421))))))

(declare-fun d!524606 () Bool)

(assert (=> d!524606 e!1093726))

(declare-fun res!766601 () Bool)

(assert (=> d!524606 (=> (not res!766601) (not e!1093726))))

(assert (=> d!524606 (= res!766601 (= (content!2653 lt!653256) ((_ map or) (content!2653 lt!653165) (content!2653 suffix!1421))))))

(declare-fun e!1093727 () List!18741)

(assert (=> d!524606 (= lt!653256 e!1093727)))

(declare-fun c!280139 () Bool)

(assert (=> d!524606 (= c!280139 ((_ is Nil!18671) lt!653165))))

(assert (=> d!524606 (= (++!5120 lt!653165 suffix!1421) lt!653256)))

(declare-fun b!1709964 () Bool)

(assert (=> b!1709964 (= e!1093726 (or (not (= suffix!1421 Nil!18671)) (= lt!653256 lt!653165)))))

(declare-fun b!1709962 () Bool)

(assert (=> b!1709962 (= e!1093727 (Cons!18671 (h!24072 lt!653165) (++!5120 (t!158184 lt!653165) suffix!1421)))))

(declare-fun b!1709961 () Bool)

(assert (=> b!1709961 (= e!1093727 suffix!1421)))

(assert (= (and d!524606 c!280139) b!1709961))

(assert (= (and d!524606 (not c!280139)) b!1709962))

(assert (= (and d!524606 res!766601) b!1709963))

(assert (= (and b!1709963 res!766602) b!1709964))

(declare-fun m!2113057 () Bool)

(assert (=> b!1709963 m!2113057))

(assert (=> b!1709963 m!2112883))

(declare-fun m!2113059 () Bool)

(assert (=> b!1709963 m!2113059))

(declare-fun m!2113061 () Bool)

(assert (=> d!524606 m!2113061))

(assert (=> d!524606 m!2112925))

(declare-fun m!2113063 () Bool)

(assert (=> d!524606 m!2113063))

(declare-fun m!2113065 () Bool)

(assert (=> b!1709962 m!2113065))

(assert (=> b!1709643 d!524606))

(declare-fun d!524608 () Bool)

(assert (=> d!524608 (isPrefix!1540 lt!653165 (++!5120 lt!653165 suffix!1421))))

(declare-fun lt!653259 () Unit!32499)

(declare-fun choose!10377 (List!18741 List!18741) Unit!32499)

(assert (=> d!524608 (= lt!653259 (choose!10377 lt!653165 suffix!1421))))

(assert (=> d!524608 (= (lemmaConcatTwoListThenFirstIsPrefix!1050 lt!653165 suffix!1421) lt!653259)))

(declare-fun bs!401689 () Bool)

(assert (= bs!401689 d!524608))

(assert (=> bs!401689 m!2112667))

(assert (=> bs!401689 m!2112667))

(declare-fun m!2113067 () Bool)

(assert (=> bs!401689 m!2113067))

(declare-fun m!2113069 () Bool)

(assert (=> bs!401689 m!2113069))

(assert (=> b!1709643 d!524608))

(declare-fun d!524610 () Bool)

(declare-fun fromListB!1047 (List!18741) BalanceConc!12364)

(assert (=> d!524610 (= (seqFromList!2275 lt!653165) (fromListB!1047 lt!653165))))

(declare-fun bs!401690 () Bool)

(assert (= bs!401690 d!524610))

(declare-fun m!2113071 () Bool)

(assert (=> bs!401690 m!2113071))

(assert (=> b!1709643 d!524610))

(declare-fun d!524612 () Bool)

(declare-fun e!1093729 () Bool)

(assert (=> d!524612 e!1093729))

(declare-fun res!766606 () Bool)

(assert (=> d!524612 (=> res!766606 e!1093729)))

(declare-fun lt!653261 () Option!3623)

(assert (=> d!524612 (= res!766606 (isEmpty!11730 lt!653261))))

(declare-fun e!1093728 () Option!3623)

(assert (=> d!524612 (= lt!653261 e!1093728)))

(declare-fun c!280140 () Bool)

(assert (=> d!524612 (= c!280140 (and ((_ is Cons!18672) rules!3447) ((_ is Nil!18672) (t!158185 rules!3447))))))

(declare-fun lt!653260 () Unit!32499)

(declare-fun lt!653264 () Unit!32499)

(assert (=> d!524612 (= lt!653260 lt!653264)))

(assert (=> d!524612 (isPrefix!1540 lt!653166 lt!653166)))

(assert (=> d!524612 (= lt!653264 (lemmaIsPrefixRefl!1051 lt!653166 lt!653166))))

(assert (=> d!524612 (rulesValidInductive!1086 thiss!24550 rules!3447)))

(assert (=> d!524612 (= (maxPrefix!1482 thiss!24550 rules!3447 lt!653166) lt!653261)))

(declare-fun b!1709965 () Bool)

(declare-fun res!766609 () Bool)

(declare-fun e!1093730 () Bool)

(assert (=> b!1709965 (=> (not res!766609) (not e!1093730))))

(assert (=> b!1709965 (= res!766609 (matchR!2101 (regex!3299 (rule!5233 (_1!10595 (get!5492 lt!653261)))) (list!7528 (charsOf!1948 (_1!10595 (get!5492 lt!653261))))))))

(declare-fun b!1709966 () Bool)

(declare-fun res!766608 () Bool)

(assert (=> b!1709966 (=> (not res!766608) (not e!1093730))))

(assert (=> b!1709966 (= res!766608 (= (value!103694 (_1!10595 (get!5492 lt!653261))) (apply!5110 (transformation!3299 (rule!5233 (_1!10595 (get!5492 lt!653261)))) (seqFromList!2275 (originalCharacters!4113 (_1!10595 (get!5492 lt!653261)))))))))

(declare-fun b!1709967 () Bool)

(declare-fun res!766607 () Bool)

(assert (=> b!1709967 (=> (not res!766607) (not e!1093730))))

(assert (=> b!1709967 (= res!766607 (= (list!7528 (charsOf!1948 (_1!10595 (get!5492 lt!653261)))) (originalCharacters!4113 (_1!10595 (get!5492 lt!653261)))))))

(declare-fun b!1709968 () Bool)

(declare-fun call!109395 () Option!3623)

(assert (=> b!1709968 (= e!1093728 call!109395)))

(declare-fun bm!109390 () Bool)

(assert (=> bm!109390 (= call!109395 (maxPrefixOneRule!866 thiss!24550 (h!24073 rules!3447) lt!653166))))

(declare-fun b!1709969 () Bool)

(declare-fun res!766603 () Bool)

(assert (=> b!1709969 (=> (not res!766603) (not e!1093730))))

(assert (=> b!1709969 (= res!766603 (= (++!5120 (list!7528 (charsOf!1948 (_1!10595 (get!5492 lt!653261)))) (_2!10595 (get!5492 lt!653261))) lt!653166))))

(declare-fun b!1709970 () Bool)

(declare-fun res!766604 () Bool)

(assert (=> b!1709970 (=> (not res!766604) (not e!1093730))))

(assert (=> b!1709970 (= res!766604 (< (size!14846 (_2!10595 (get!5492 lt!653261))) (size!14846 lt!653166)))))

(declare-fun b!1709971 () Bool)

(assert (=> b!1709971 (= e!1093730 (contains!3317 rules!3447 (rule!5233 (_1!10595 (get!5492 lt!653261)))))))

(declare-fun b!1709972 () Bool)

(declare-fun lt!653262 () Option!3623)

(declare-fun lt!653263 () Option!3623)

(assert (=> b!1709972 (= e!1093728 (ite (and ((_ is None!3622) lt!653262) ((_ is None!3622) lt!653263)) None!3622 (ite ((_ is None!3622) lt!653263) lt!653262 (ite ((_ is None!3622) lt!653262) lt!653263 (ite (>= (size!14842 (_1!10595 (v!25007 lt!653262))) (size!14842 (_1!10595 (v!25007 lt!653263)))) lt!653262 lt!653263)))))))

(assert (=> b!1709972 (= lt!653262 call!109395)))

(assert (=> b!1709972 (= lt!653263 (maxPrefix!1482 thiss!24550 (t!158185 rules!3447) lt!653166))))

(declare-fun b!1709973 () Bool)

(assert (=> b!1709973 (= e!1093729 e!1093730)))

(declare-fun res!766605 () Bool)

(assert (=> b!1709973 (=> (not res!766605) (not e!1093730))))

(assert (=> b!1709973 (= res!766605 (isDefined!2968 lt!653261))))

(assert (= (and d!524612 c!280140) b!1709968))

(assert (= (and d!524612 (not c!280140)) b!1709972))

(assert (= (or b!1709968 b!1709972) bm!109390))

(assert (= (and d!524612 (not res!766606)) b!1709973))

(assert (= (and b!1709973 res!766605) b!1709967))

(assert (= (and b!1709967 res!766607) b!1709970))

(assert (= (and b!1709970 res!766604) b!1709969))

(assert (= (and b!1709969 res!766603) b!1709966))

(assert (= (and b!1709966 res!766608) b!1709965))

(assert (= (and b!1709965 res!766609) b!1709971))

(declare-fun m!2113073 () Bool)

(assert (=> d!524612 m!2113073))

(declare-fun m!2113075 () Bool)

(assert (=> d!524612 m!2113075))

(declare-fun m!2113077 () Bool)

(assert (=> d!524612 m!2113077))

(assert (=> d!524612 m!2112859))

(declare-fun m!2113079 () Bool)

(assert (=> bm!109390 m!2113079))

(declare-fun m!2113081 () Bool)

(assert (=> b!1709971 m!2113081))

(declare-fun m!2113083 () Bool)

(assert (=> b!1709971 m!2113083))

(assert (=> b!1709966 m!2113081))

(declare-fun m!2113085 () Bool)

(assert (=> b!1709966 m!2113085))

(assert (=> b!1709966 m!2113085))

(declare-fun m!2113087 () Bool)

(assert (=> b!1709966 m!2113087))

(assert (=> b!1709967 m!2113081))

(declare-fun m!2113089 () Bool)

(assert (=> b!1709967 m!2113089))

(assert (=> b!1709967 m!2113089))

(declare-fun m!2113091 () Bool)

(assert (=> b!1709967 m!2113091))

(assert (=> b!1709969 m!2113081))

(assert (=> b!1709969 m!2113089))

(assert (=> b!1709969 m!2113089))

(assert (=> b!1709969 m!2113091))

(assert (=> b!1709969 m!2113091))

(declare-fun m!2113093 () Bool)

(assert (=> b!1709969 m!2113093))

(assert (=> b!1709965 m!2113081))

(assert (=> b!1709965 m!2113089))

(assert (=> b!1709965 m!2113089))

(assert (=> b!1709965 m!2113091))

(assert (=> b!1709965 m!2113091))

(declare-fun m!2113095 () Bool)

(assert (=> b!1709965 m!2113095))

(declare-fun m!2113097 () Bool)

(assert (=> b!1709973 m!2113097))

(assert (=> b!1709970 m!2113081))

(declare-fun m!2113099 () Bool)

(assert (=> b!1709970 m!2113099))

(assert (=> b!1709970 m!2113051))

(declare-fun m!2113101 () Bool)

(assert (=> b!1709972 m!2113101))

(assert (=> b!1709643 d!524612))

(declare-fun d!524614 () Bool)

(assert (=> d!524614 (= (inv!24080 (tag!3595 (rule!5233 token!523))) (= (mod (str.len (value!103693 (tag!3595 (rule!5233 token!523)))) 2) 0))))

(assert (=> b!1709648 d!524614))

(declare-fun d!524616 () Bool)

(declare-fun res!766610 () Bool)

(declare-fun e!1093731 () Bool)

(assert (=> d!524616 (=> (not res!766610) (not e!1093731))))

(assert (=> d!524616 (= res!766610 (semiInverseModEq!1301 (toChars!4657 (transformation!3299 (rule!5233 token!523))) (toValue!4798 (transformation!3299 (rule!5233 token!523)))))))

(assert (=> d!524616 (= (inv!24083 (transformation!3299 (rule!5233 token!523))) e!1093731)))

(declare-fun b!1709974 () Bool)

(assert (=> b!1709974 (= e!1093731 (equivClasses!1242 (toChars!4657 (transformation!3299 (rule!5233 token!523))) (toValue!4798 (transformation!3299 (rule!5233 token!523)))))))

(assert (= (and d!524616 res!766610) b!1709974))

(declare-fun m!2113103 () Bool)

(assert (=> d!524616 m!2113103))

(declare-fun m!2113105 () Bool)

(assert (=> b!1709974 m!2113105))

(assert (=> b!1709648 d!524616))

(declare-fun b!1709985 () Bool)

(declare-fun res!766613 () Bool)

(declare-fun e!1093738 () Bool)

(assert (=> b!1709985 (=> res!766613 e!1093738)))

(assert (=> b!1709985 (= res!766613 (not ((_ is IntegerValue!10169) (value!103694 token!523))))))

(declare-fun e!1093740 () Bool)

(assert (=> b!1709985 (= e!1093740 e!1093738)))

(declare-fun b!1709986 () Bool)

(declare-fun e!1093739 () Bool)

(declare-fun inv!16 (TokenValue!3389) Bool)

(assert (=> b!1709986 (= e!1093739 (inv!16 (value!103694 token!523)))))

(declare-fun b!1709987 () Bool)

(assert (=> b!1709987 (= e!1093739 e!1093740)))

(declare-fun c!280146 () Bool)

(assert (=> b!1709987 (= c!280146 ((_ is IntegerValue!10168) (value!103694 token!523)))))

(declare-fun d!524618 () Bool)

(declare-fun c!280145 () Bool)

(assert (=> d!524618 (= c!280145 ((_ is IntegerValue!10167) (value!103694 token!523)))))

(assert (=> d!524618 (= (inv!21 (value!103694 token!523)) e!1093739)))

(declare-fun b!1709988 () Bool)

(declare-fun inv!15 (TokenValue!3389) Bool)

(assert (=> b!1709988 (= e!1093738 (inv!15 (value!103694 token!523)))))

(declare-fun b!1709989 () Bool)

(declare-fun inv!17 (TokenValue!3389) Bool)

(assert (=> b!1709989 (= e!1093740 (inv!17 (value!103694 token!523)))))

(assert (= (and d!524618 c!280145) b!1709986))

(assert (= (and d!524618 (not c!280145)) b!1709987))

(assert (= (and b!1709987 c!280146) b!1709989))

(assert (= (and b!1709987 (not c!280146)) b!1709985))

(assert (= (and b!1709985 (not res!766613)) b!1709988))

(declare-fun m!2113107 () Bool)

(assert (=> b!1709986 m!2113107))

(declare-fun m!2113109 () Bool)

(assert (=> b!1709988 m!2113109))

(declare-fun m!2113111 () Bool)

(assert (=> b!1709989 m!2113111))

(assert (=> b!1709658 d!524618))

(declare-fun d!524620 () Bool)

(declare-fun res!766618 () Bool)

(declare-fun e!1093743 () Bool)

(assert (=> d!524620 (=> (not res!766618) (not e!1093743))))

(assert (=> d!524620 (= res!766618 (not (isEmpty!11726 (originalCharacters!4113 token!523))))))

(assert (=> d!524620 (= (inv!24084 token!523) e!1093743)))

(declare-fun b!1709994 () Bool)

(declare-fun res!766619 () Bool)

(assert (=> b!1709994 (=> (not res!766619) (not e!1093743))))

(assert (=> b!1709994 (= res!766619 (= (originalCharacters!4113 token!523) (list!7528 (dynLambda!8485 (toChars!4657 (transformation!3299 (rule!5233 token!523))) (value!103694 token!523)))))))

(declare-fun b!1709995 () Bool)

(assert (=> b!1709995 (= e!1093743 (= (size!14842 token!523) (size!14846 (originalCharacters!4113 token!523))))))

(assert (= (and d!524620 res!766618) b!1709994))

(assert (= (and b!1709994 res!766619) b!1709995))

(declare-fun b_lambda!53959 () Bool)

(assert (=> (not b_lambda!53959) (not b!1709994)))

(assert (=> b!1709994 t!158188))

(declare-fun b_and!123787 () Bool)

(assert (= b_and!123765 (and (=> t!158188 result!121214) b_and!123787)))

(assert (=> b!1709994 t!158190))

(declare-fun b_and!123789 () Bool)

(assert (= b_and!123767 (and (=> t!158190 result!121218) b_and!123789)))

(assert (=> b!1709994 t!158192))

(declare-fun b_and!123791 () Bool)

(assert (= b_and!123769 (and (=> t!158192 result!121220) b_and!123791)))

(declare-fun m!2113113 () Bool)

(assert (=> d!524620 m!2113113))

(assert (=> b!1709994 m!2112895))

(assert (=> b!1709994 m!2112895))

(declare-fun m!2113115 () Bool)

(assert (=> b!1709994 m!2113115))

(declare-fun m!2113117 () Bool)

(assert (=> b!1709995 m!2113117))

(assert (=> start!167034 d!524620))

(declare-fun b!1710025 () Bool)

(declare-fun e!1093764 () Bool)

(declare-fun nullable!1388 (Regex!4627) Bool)

(assert (=> b!1710025 (= e!1093764 (nullable!1388 (regex!3299 rule!422)))))

(declare-fun b!1710026 () Bool)

(declare-fun e!1093763 () Bool)

(declare-fun lt!653267 () Bool)

(declare-fun call!109398 () Bool)

(assert (=> b!1710026 (= e!1093763 (= lt!653267 call!109398))))

(declare-fun b!1710027 () Bool)

(declare-fun res!766636 () Bool)

(declare-fun e!1093758 () Bool)

(assert (=> b!1710027 (=> (not res!766636) (not e!1093758))))

(assert (=> b!1710027 (= res!766636 (isEmpty!11726 (tail!2549 lt!653165)))))

(declare-fun b!1710028 () Bool)

(declare-fun e!1093762 () Bool)

(assert (=> b!1710028 (= e!1093763 e!1093762)))

(declare-fun c!280155 () Bool)

(assert (=> b!1710028 (= c!280155 ((_ is EmptyLang!4627) (regex!3299 rule!422)))))

(declare-fun b!1710029 () Bool)

(declare-fun e!1093760 () Bool)

(assert (=> b!1710029 (= e!1093760 (not (= (head!3832 lt!653165) (c!280095 (regex!3299 rule!422)))))))

(declare-fun b!1710030 () Bool)

(assert (=> b!1710030 (= e!1093758 (= (head!3832 lt!653165) (c!280095 (regex!3299 rule!422))))))

(declare-fun b!1710031 () Bool)

(assert (=> b!1710031 (= e!1093764 (matchR!2101 (derivativeStep!1156 (regex!3299 rule!422) (head!3832 lt!653165)) (tail!2549 lt!653165)))))

(declare-fun bm!109393 () Bool)

(assert (=> bm!109393 (= call!109398 (isEmpty!11726 lt!653165))))

(declare-fun b!1710024 () Bool)

(declare-fun res!766641 () Bool)

(assert (=> b!1710024 (=> res!766641 e!1093760)))

(assert (=> b!1710024 (= res!766641 (not (isEmpty!11726 (tail!2549 lt!653165))))))

(declare-fun d!524622 () Bool)

(assert (=> d!524622 e!1093763))

(declare-fun c!280153 () Bool)

(assert (=> d!524622 (= c!280153 ((_ is EmptyExpr!4627) (regex!3299 rule!422)))))

(assert (=> d!524622 (= lt!653267 e!1093764)))

(declare-fun c!280154 () Bool)

(assert (=> d!524622 (= c!280154 (isEmpty!11726 lt!653165))))

(declare-fun validRegex!1862 (Regex!4627) Bool)

(assert (=> d!524622 (validRegex!1862 (regex!3299 rule!422))))

(assert (=> d!524622 (= (matchR!2101 (regex!3299 rule!422) lt!653165) lt!653267)))

(declare-fun b!1710032 () Bool)

(declare-fun res!766640 () Bool)

(declare-fun e!1093761 () Bool)

(assert (=> b!1710032 (=> res!766640 e!1093761)))

(assert (=> b!1710032 (= res!766640 (not ((_ is ElementMatch!4627) (regex!3299 rule!422))))))

(assert (=> b!1710032 (= e!1093762 e!1093761)))

(declare-fun b!1710033 () Bool)

(declare-fun e!1093759 () Bool)

(assert (=> b!1710033 (= e!1093759 e!1093760)))

(declare-fun res!766638 () Bool)

(assert (=> b!1710033 (=> res!766638 e!1093760)))

(assert (=> b!1710033 (= res!766638 call!109398)))

(declare-fun b!1710034 () Bool)

(declare-fun res!766642 () Bool)

(assert (=> b!1710034 (=> res!766642 e!1093761)))

(assert (=> b!1710034 (= res!766642 e!1093758)))

(declare-fun res!766643 () Bool)

(assert (=> b!1710034 (=> (not res!766643) (not e!1093758))))

(assert (=> b!1710034 (= res!766643 lt!653267)))

(declare-fun b!1710035 () Bool)

(assert (=> b!1710035 (= e!1093761 e!1093759)))

(declare-fun res!766637 () Bool)

(assert (=> b!1710035 (=> (not res!766637) (not e!1093759))))

(assert (=> b!1710035 (= res!766637 (not lt!653267))))

(declare-fun b!1710036 () Bool)

(assert (=> b!1710036 (= e!1093762 (not lt!653267))))

(declare-fun b!1710037 () Bool)

(declare-fun res!766639 () Bool)

(assert (=> b!1710037 (=> (not res!766639) (not e!1093758))))

(assert (=> b!1710037 (= res!766639 (not call!109398))))

(assert (= (and d!524622 c!280154) b!1710025))

(assert (= (and d!524622 (not c!280154)) b!1710031))

(assert (= (and d!524622 c!280153) b!1710026))

(assert (= (and d!524622 (not c!280153)) b!1710028))

(assert (= (and b!1710028 c!280155) b!1710036))

(assert (= (and b!1710028 (not c!280155)) b!1710032))

(assert (= (and b!1710032 (not res!766640)) b!1710034))

(assert (= (and b!1710034 res!766643) b!1710037))

(assert (= (and b!1710037 res!766639) b!1710027))

(assert (= (and b!1710027 res!766636) b!1710030))

(assert (= (and b!1710034 (not res!766642)) b!1710035))

(assert (= (and b!1710035 res!766637) b!1710033))

(assert (= (and b!1710033 (not res!766638)) b!1710024))

(assert (= (and b!1710024 (not res!766641)) b!1710029))

(assert (= (or b!1710026 b!1710033 b!1710037) bm!109393))

(assert (=> b!1710027 m!2113045))

(assert (=> b!1710027 m!2113045))

(declare-fun m!2113119 () Bool)

(assert (=> b!1710027 m!2113119))

(declare-fun m!2113121 () Bool)

(assert (=> b!1710025 m!2113121))

(declare-fun m!2113123 () Bool)

(assert (=> d!524622 m!2113123))

(declare-fun m!2113125 () Bool)

(assert (=> d!524622 m!2113125))

(assert (=> b!1710029 m!2113053))

(assert (=> b!1710031 m!2113053))

(assert (=> b!1710031 m!2113053))

(declare-fun m!2113127 () Bool)

(assert (=> b!1710031 m!2113127))

(assert (=> b!1710031 m!2113045))

(assert (=> b!1710031 m!2113127))

(assert (=> b!1710031 m!2113045))

(declare-fun m!2113129 () Bool)

(assert (=> b!1710031 m!2113129))

(assert (=> b!1710024 m!2113045))

(assert (=> b!1710024 m!2113045))

(assert (=> b!1710024 m!2113119))

(assert (=> bm!109393 m!2113123))

(assert (=> b!1710030 m!2113053))

(assert (=> b!1709646 d!524622))

(declare-fun d!524624 () Bool)

(declare-fun res!766648 () Bool)

(declare-fun e!1093767 () Bool)

(assert (=> d!524624 (=> (not res!766648) (not e!1093767))))

(assert (=> d!524624 (= res!766648 (validRegex!1862 (regex!3299 rule!422)))))

(assert (=> d!524624 (= (ruleValid!798 thiss!24550 rule!422) e!1093767)))

(declare-fun b!1710042 () Bool)

(declare-fun res!766649 () Bool)

(assert (=> b!1710042 (=> (not res!766649) (not e!1093767))))

(assert (=> b!1710042 (= res!766649 (not (nullable!1388 (regex!3299 rule!422))))))

(declare-fun b!1710043 () Bool)

(assert (=> b!1710043 (= e!1093767 (not (= (tag!3595 rule!422) (String!21278 ""))))))

(assert (= (and d!524624 res!766648) b!1710042))

(assert (= (and b!1710042 res!766649) b!1710043))

(assert (=> d!524624 m!2113125))

(assert (=> b!1710042 m!2113121))

(assert (=> b!1709646 d!524624))

(declare-fun d!524626 () Bool)

(assert (=> d!524626 (ruleValid!798 thiss!24550 rule!422)))

(declare-fun lt!653270 () Unit!32499)

(declare-fun choose!10378 (LexerInterface!2928 Rule!6398 List!18742) Unit!32499)

(assert (=> d!524626 (= lt!653270 (choose!10378 thiss!24550 rule!422 rules!3447))))

(assert (=> d!524626 (contains!3317 rules!3447 rule!422)))

(assert (=> d!524626 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!322 thiss!24550 rule!422 rules!3447) lt!653270)))

(declare-fun bs!401691 () Bool)

(assert (= bs!401691 d!524626))

(assert (=> bs!401691 m!2112705))

(declare-fun m!2113131 () Bool)

(assert (=> bs!401691 m!2113131))

(assert (=> bs!401691 m!2112713))

(assert (=> b!1709646 d!524626))

(declare-fun b!1710057 () Bool)

(declare-fun e!1093770 () Bool)

(declare-fun tp!488704 () Bool)

(declare-fun tp!488703 () Bool)

(assert (=> b!1710057 (= e!1093770 (and tp!488704 tp!488703))))

(declare-fun b!1710056 () Bool)

(declare-fun tp!488705 () Bool)

(assert (=> b!1710056 (= e!1093770 tp!488705)))

(assert (=> b!1709645 (= tp!488639 e!1093770)))

(declare-fun b!1710055 () Bool)

(declare-fun tp!488706 () Bool)

(declare-fun tp!488702 () Bool)

(assert (=> b!1710055 (= e!1093770 (and tp!488706 tp!488702))))

(declare-fun b!1710054 () Bool)

(assert (=> b!1710054 (= e!1093770 tp_is_empty!7497)))

(assert (= (and b!1709645 ((_ is ElementMatch!4627) (regex!3299 rule!422))) b!1710054))

(assert (= (and b!1709645 ((_ is Concat!8017) (regex!3299 rule!422))) b!1710055))

(assert (= (and b!1709645 ((_ is Star!4627) (regex!3299 rule!422))) b!1710056))

(assert (= (and b!1709645 ((_ is Union!4627) (regex!3299 rule!422))) b!1710057))

(declare-fun b!1710061 () Bool)

(declare-fun e!1093771 () Bool)

(declare-fun tp!488709 () Bool)

(declare-fun tp!488708 () Bool)

(assert (=> b!1710061 (= e!1093771 (and tp!488709 tp!488708))))

(declare-fun b!1710060 () Bool)

(declare-fun tp!488710 () Bool)

(assert (=> b!1710060 (= e!1093771 tp!488710)))

(assert (=> b!1709639 (= tp!488640 e!1093771)))

(declare-fun b!1710059 () Bool)

(declare-fun tp!488711 () Bool)

(declare-fun tp!488707 () Bool)

(assert (=> b!1710059 (= e!1093771 (and tp!488711 tp!488707))))

(declare-fun b!1710058 () Bool)

(assert (=> b!1710058 (= e!1093771 tp_is_empty!7497)))

(assert (= (and b!1709639 ((_ is ElementMatch!4627) (regex!3299 (h!24073 rules!3447)))) b!1710058))

(assert (= (and b!1709639 ((_ is Concat!8017) (regex!3299 (h!24073 rules!3447)))) b!1710059))

(assert (= (and b!1709639 ((_ is Star!4627) (regex!3299 (h!24073 rules!3447)))) b!1710060))

(assert (= (and b!1709639 ((_ is Union!4627) (regex!3299 (h!24073 rules!3447)))) b!1710061))

(declare-fun b!1710072 () Bool)

(declare-fun b_free!46379 () Bool)

(declare-fun b_next!47083 () Bool)

(assert (=> b!1710072 (= b_free!46379 (not b_next!47083))))

(declare-fun tp!488720 () Bool)

(declare-fun b_and!123793 () Bool)

(assert (=> b!1710072 (= tp!488720 b_and!123793)))

(declare-fun b_free!46381 () Bool)

(declare-fun b_next!47085 () Bool)

(assert (=> b!1710072 (= b_free!46381 (not b_next!47085))))

(declare-fun tb!100901 () Bool)

(declare-fun t!158204 () Bool)

(assert (=> (and b!1710072 (= (toChars!4657 (transformation!3299 (h!24073 (t!158185 rules!3447)))) (toChars!4657 (transformation!3299 (rule!5233 token!523)))) t!158204) tb!100901))

(declare-fun result!121242 () Bool)

(assert (= result!121242 result!121214))

(assert (=> d!524554 t!158204))

(assert (=> b!1709994 t!158204))

(declare-fun tp!488721 () Bool)

(declare-fun b_and!123795 () Bool)

(assert (=> b!1710072 (= tp!488721 (and (=> t!158204 result!121242) b_and!123795))))

(declare-fun e!1093783 () Bool)

(assert (=> b!1710072 (= e!1093783 (and tp!488720 tp!488721))))

(declare-fun e!1093780 () Bool)

(declare-fun tp!488722 () Bool)

(declare-fun b!1710071 () Bool)

(assert (=> b!1710071 (= e!1093780 (and tp!488722 (inv!24080 (tag!3595 (h!24073 (t!158185 rules!3447)))) (inv!24083 (transformation!3299 (h!24073 (t!158185 rules!3447)))) e!1093783))))

(declare-fun b!1710070 () Bool)

(declare-fun e!1093782 () Bool)

(declare-fun tp!488723 () Bool)

(assert (=> b!1710070 (= e!1093782 (and e!1093780 tp!488723))))

(assert (=> b!1709654 (= tp!488637 e!1093782)))

(assert (= b!1710071 b!1710072))

(assert (= b!1710070 b!1710071))

(assert (= (and b!1709654 ((_ is Cons!18672) (t!158185 rules!3447))) b!1710070))

(declare-fun m!2113133 () Bool)

(assert (=> b!1710071 m!2113133))

(declare-fun m!2113135 () Bool)

(assert (=> b!1710071 m!2113135))

(declare-fun b!1710076 () Bool)

(declare-fun e!1093784 () Bool)

(declare-fun tp!488726 () Bool)

(declare-fun tp!488725 () Bool)

(assert (=> b!1710076 (= e!1093784 (and tp!488726 tp!488725))))

(declare-fun b!1710075 () Bool)

(declare-fun tp!488727 () Bool)

(assert (=> b!1710075 (= e!1093784 tp!488727)))

(assert (=> b!1709648 (= tp!488638 e!1093784)))

(declare-fun b!1710074 () Bool)

(declare-fun tp!488728 () Bool)

(declare-fun tp!488724 () Bool)

(assert (=> b!1710074 (= e!1093784 (and tp!488728 tp!488724))))

(declare-fun b!1710073 () Bool)

(assert (=> b!1710073 (= e!1093784 tp_is_empty!7497)))

(assert (= (and b!1709648 ((_ is ElementMatch!4627) (regex!3299 (rule!5233 token!523)))) b!1710073))

(assert (= (and b!1709648 ((_ is Concat!8017) (regex!3299 (rule!5233 token!523)))) b!1710074))

(assert (= (and b!1709648 ((_ is Star!4627) (regex!3299 (rule!5233 token!523)))) b!1710075))

(assert (= (and b!1709648 ((_ is Union!4627) (regex!3299 (rule!5233 token!523)))) b!1710076))

(declare-fun b!1710081 () Bool)

(declare-fun e!1093787 () Bool)

(declare-fun tp!488731 () Bool)

(assert (=> b!1710081 (= e!1093787 (and tp_is_empty!7497 tp!488731))))

(assert (=> b!1709642 (= tp!488643 e!1093787)))

(assert (= (and b!1709642 ((_ is Cons!18671) (t!158184 suffix!1421))) b!1710081))

(declare-fun b!1710082 () Bool)

(declare-fun e!1093788 () Bool)

(declare-fun tp!488732 () Bool)

(assert (=> b!1710082 (= e!1093788 (and tp_is_empty!7497 tp!488732))))

(assert (=> b!1709658 (= tp!488636 e!1093788)))

(assert (= (and b!1709658 ((_ is Cons!18671) (originalCharacters!4113 token!523))) b!1710082))

(declare-fun b_lambda!53961 () Bool)

(assert (= b_lambda!53959 (or (and b!1709647 b_free!46365 (= (toChars!4657 (transformation!3299 rule!422)) (toChars!4657 (transformation!3299 (rule!5233 token!523))))) (and b!1709657 b_free!46369 (= (toChars!4657 (transformation!3299 (h!24073 rules!3447))) (toChars!4657 (transformation!3299 (rule!5233 token!523))))) (and b!1709650 b_free!46373) (and b!1710072 b_free!46381 (= (toChars!4657 (transformation!3299 (h!24073 (t!158185 rules!3447)))) (toChars!4657 (transformation!3299 (rule!5233 token!523))))) b_lambda!53961)))

(declare-fun b_lambda!53963 () Bool)

(assert (= b_lambda!53949 (or (and b!1709647 b_free!46365 (= (toChars!4657 (transformation!3299 rule!422)) (toChars!4657 (transformation!3299 (rule!5233 token!523))))) (and b!1709657 b_free!46369 (= (toChars!4657 (transformation!3299 (h!24073 rules!3447))) (toChars!4657 (transformation!3299 (rule!5233 token!523))))) (and b!1709650 b_free!46373) (and b!1710072 b_free!46381 (= (toChars!4657 (transformation!3299 (h!24073 (t!158185 rules!3447)))) (toChars!4657 (transformation!3299 (rule!5233 token!523))))) b_lambda!53963)))

(check-sat (not b_next!47071) (not d!524616) (not b!1710082) (not b_next!47083) (not d!524552) (not d!524586) (not b!1709810) (not b!1710031) (not b!1710030) (not d!524612) (not b!1710070) (not b_next!47085) (not b!1709988) (not b_next!47069) b_and!123753 (not b_next!47067) (not b!1709986) (not bm!109388) b_and!123793 (not b!1710059) (not b!1709806) (not b!1709966) (not b!1709835) b_and!123757 (not b_next!47077) (not d!524622) (not b!1710076) (not b!1709948) (not b_next!47073) (not b!1709818) (not b!1709946) (not d!524526) (not b!1710061) (not b!1709965) (not d!524624) (not tb!100887) (not d!524608) (not b!1709853) (not b!1709994) (not d!524610) (not b!1709960) (not d!524560) (not b!1710075) (not b!1709807) (not b!1710029) (not d!524626) (not b!1709962) (not b!1709973) (not d!524554) (not b!1710071) (not b!1709823) (not b!1710055) (not b!1710074) (not b!1710027) (not b!1709944) (not b!1710081) (not b!1709967) b_and!123791 b_and!123787 (not b!1709945) (not b!1709959) (not b!1710060) (not b!1709995) (not b!1709970) (not b!1709834) (not b_lambda!53961) (not bm!109390) (not b!1709808) (not b!1709958) (not b!1709803) (not b!1710024) (not b!1709809) (not b!1710056) (not d!524514) (not d!524562) (not b_next!47075) (not b!1709963) (not d!524524) (not b!1709989) b_and!123789 (not d!524572) (not b!1710042) (not b!1709837) (not b!1710057) (not d!524620) (not bm!109393) b_and!123761 (not b!1709824) tp_is_empty!7497 (not b!1709972) (not b!1709719) (not b_lambda!53963) (not b!1710025) (not b!1709974) (not b!1709815) (not d!524556) (not d!524580) (not b!1709804) (not d!524578) (not d!524564) (not d!524606) (not b!1709969) b_and!123795 (not b!1709802) (not b!1709971))
(check-sat b_and!123793 (not b_next!47071) (not b_next!47073) b_and!123791 b_and!123787 (not b_next!47083) (not b_next!47075) b_and!123789 b_and!123761 b_and!123795 (not b_next!47085) (not b_next!47069) b_and!123753 (not b_next!47067) b_and!123757 (not b_next!47077))
(get-model)

(declare-fun d!524652 () Bool)

(assert (=> d!524652 true))

(declare-fun lambda!68802 () Int)

(declare-fun order!11251 () Int)

(declare-fun order!11249 () Int)

(declare-fun dynLambda!8487 (Int Int) Int)

(declare-fun dynLambda!8488 (Int Int) Int)

(assert (=> d!524652 (< (dynLambda!8487 order!11249 (toChars!4657 (transformation!3299 rule!422))) (dynLambda!8488 order!11251 lambda!68802))))

(assert (=> d!524652 true))

(declare-fun order!11253 () Int)

(declare-fun dynLambda!8489 (Int Int) Int)

(assert (=> d!524652 (< (dynLambda!8489 order!11253 (toValue!4798 (transformation!3299 rule!422))) (dynLambda!8488 order!11251 lambda!68802))))

(declare-fun Forall!679 (Int) Bool)

(assert (=> d!524652 (= (semiInverseModEq!1301 (toChars!4657 (transformation!3299 rule!422)) (toValue!4798 (transformation!3299 rule!422))) (Forall!679 lambda!68802))))

(declare-fun bs!401695 () Bool)

(assert (= bs!401695 d!524652))

(declare-fun m!2113199 () Bool)

(assert (=> bs!401695 m!2113199))

(assert (=> d!524572 d!524652))

(declare-fun d!524656 () Bool)

(assert (=> d!524656 (= (isDefined!2968 lt!653261) (not (isEmpty!11730 lt!653261)))))

(declare-fun bs!401696 () Bool)

(assert (= bs!401696 d!524656))

(assert (=> bs!401696 m!2113073))

(assert (=> b!1709973 d!524656))

(declare-fun d!524658 () Bool)

(declare-fun lt!653301 () Int)

(assert (=> d!524658 (>= lt!653301 0)))

(declare-fun e!1093819 () Int)

(assert (=> d!524658 (= lt!653301 e!1093819)))

(declare-fun c!280163 () Bool)

(assert (=> d!524658 (= c!280163 ((_ is Nil!18671) (originalCharacters!4113 token!523)))))

(assert (=> d!524658 (= (size!14846 (originalCharacters!4113 token!523)) lt!653301)))

(declare-fun b!1710138 () Bool)

(assert (=> b!1710138 (= e!1093819 0)))

(declare-fun b!1710139 () Bool)

(assert (=> b!1710139 (= e!1093819 (+ 1 (size!14846 (t!158184 (originalCharacters!4113 token!523)))))))

(assert (= (and d!524658 c!280163) b!1710138))

(assert (= (and d!524658 (not c!280163)) b!1710139))

(declare-fun m!2113207 () Bool)

(assert (=> b!1710139 m!2113207))

(assert (=> b!1709995 d!524658))

(declare-fun d!524668 () Bool)

(assert (=> d!524668 (= (list!7528 (_2!10594 lt!653252)) (list!7531 (c!280096 (_2!10594 lt!653252))))))

(declare-fun bs!401698 () Bool)

(assert (= bs!401698 d!524668))

(declare-fun m!2113209 () Bool)

(assert (=> bs!401698 m!2113209))

(assert (=> b!1709948 d!524668))

(declare-fun b!1710190 () Bool)

(declare-fun e!1093850 () Bool)

(declare-fun e!1093851 () Bool)

(assert (=> b!1710190 (= e!1093850 e!1093851)))

(declare-fun res!766698 () Bool)

(declare-fun lt!653321 () tuple2!18390)

(assert (=> b!1710190 (= res!766698 (< (size!14846 (_2!10597 lt!653321)) (size!14846 (list!7528 (seqFromList!2275 lt!653165)))))))

(assert (=> b!1710190 (=> (not res!766698) (not e!1093851))))

(declare-fun d!524670 () Bool)

(assert (=> d!524670 e!1093850))

(declare-fun c!280186 () Bool)

(declare-fun size!14850 (List!18743) Int)

(assert (=> d!524670 (= c!280186 (> (size!14850 (_1!10597 lt!653321)) 0))))

(declare-fun e!1093849 () tuple2!18390)

(assert (=> d!524670 (= lt!653321 e!1093849)))

(declare-fun c!280185 () Bool)

(declare-fun lt!653319 () Option!3623)

(assert (=> d!524670 (= c!280185 ((_ is Some!3622) lt!653319))))

(assert (=> d!524670 (= lt!653319 (maxPrefix!1482 thiss!24550 rules!3447 (list!7528 (seqFromList!2275 lt!653165))))))

(assert (=> d!524670 (= (lexList!915 thiss!24550 rules!3447 (list!7528 (seqFromList!2275 lt!653165))) lt!653321)))

(declare-fun b!1710191 () Bool)

(assert (=> b!1710191 (= e!1093850 (= (_2!10597 lt!653321) (list!7528 (seqFromList!2275 lt!653165))))))

(declare-fun b!1710192 () Bool)

(assert (=> b!1710192 (= e!1093849 (tuple2!18391 Nil!18673 (list!7528 (seqFromList!2275 lt!653165))))))

(declare-fun b!1710193 () Bool)

(declare-fun lt!653320 () tuple2!18390)

(assert (=> b!1710193 (= e!1093849 (tuple2!18391 (Cons!18673 (_1!10595 (v!25007 lt!653319)) (_1!10597 lt!653320)) (_2!10597 lt!653320)))))

(assert (=> b!1710193 (= lt!653320 (lexList!915 thiss!24550 rules!3447 (_2!10595 (v!25007 lt!653319))))))

(declare-fun b!1710194 () Bool)

(assert (=> b!1710194 (= e!1093851 (not (isEmpty!11731 (_1!10597 lt!653321))))))

(assert (= (and d!524670 c!280185) b!1710193))

(assert (= (and d!524670 (not c!280185)) b!1710192))

(assert (= (and d!524670 c!280186) b!1710190))

(assert (= (and d!524670 (not c!280186)) b!1710191))

(assert (= (and b!1710190 res!766698) b!1710194))

(declare-fun m!2113241 () Bool)

(assert (=> b!1710190 m!2113241))

(assert (=> b!1710190 m!2113033))

(declare-fun m!2113243 () Bool)

(assert (=> b!1710190 m!2113243))

(declare-fun m!2113245 () Bool)

(assert (=> d!524670 m!2113245))

(assert (=> d!524670 m!2113033))

(declare-fun m!2113247 () Bool)

(assert (=> d!524670 m!2113247))

(declare-fun m!2113249 () Bool)

(assert (=> b!1710193 m!2113249))

(declare-fun m!2113251 () Bool)

(assert (=> b!1710194 m!2113251))

(assert (=> b!1709948 d!524670))

(declare-fun d!524682 () Bool)

(assert (=> d!524682 (= (list!7528 (seqFromList!2275 lt!653165)) (list!7531 (c!280096 (seqFromList!2275 lt!653165))))))

(declare-fun bs!401701 () Bool)

(assert (= bs!401701 d!524682))

(declare-fun m!2113253 () Bool)

(assert (=> bs!401701 m!2113253))

(assert (=> b!1709948 d!524682))

(declare-fun d!524684 () Bool)

(assert (=> d!524684 (= (isEmpty!11731 (list!7532 (_1!10594 (lex!1376 thiss!24550 rules!3447 (seqFromList!2275 lt!653165))))) ((_ is Nil!18673) (list!7532 (_1!10594 (lex!1376 thiss!24550 rules!3447 (seqFromList!2275 lt!653165))))))))

(assert (=> d!524580 d!524684))

(declare-fun d!524686 () Bool)

(declare-fun list!7534 (Conc!6211) List!18743)

(assert (=> d!524686 (= (list!7532 (_1!10594 (lex!1376 thiss!24550 rules!3447 (seqFromList!2275 lt!653165)))) (list!7534 (c!280097 (_1!10594 (lex!1376 thiss!24550 rules!3447 (seqFromList!2275 lt!653165))))))))

(declare-fun bs!401703 () Bool)

(assert (= bs!401703 d!524686))

(declare-fun m!2113267 () Bool)

(assert (=> bs!401703 m!2113267))

(assert (=> d!524580 d!524686))

(declare-fun lt!653332 () Bool)

(declare-fun d!524692 () Bool)

(assert (=> d!524692 (= lt!653332 (isEmpty!11731 (list!7534 (c!280097 (_1!10594 (lex!1376 thiss!24550 rules!3447 (seqFromList!2275 lt!653165)))))))))

(declare-fun size!14853 (Conc!6211) Int)

(assert (=> d!524692 (= lt!653332 (= (size!14853 (c!280097 (_1!10594 (lex!1376 thiss!24550 rules!3447 (seqFromList!2275 lt!653165))))) 0))))

(assert (=> d!524692 (= (isEmpty!11732 (c!280097 (_1!10594 (lex!1376 thiss!24550 rules!3447 (seqFromList!2275 lt!653165))))) lt!653332)))

(declare-fun bs!401704 () Bool)

(assert (= bs!401704 d!524692))

(assert (=> bs!401704 m!2113267))

(assert (=> bs!401704 m!2113267))

(declare-fun m!2113269 () Bool)

(assert (=> bs!401704 m!2113269))

(declare-fun m!2113271 () Bool)

(assert (=> bs!401704 m!2113271))

(assert (=> d!524580 d!524692))

(declare-fun d!524696 () Bool)

(assert (=> d!524696 true))

(declare-fun lambda!68814 () Int)

(declare-fun order!11255 () Int)

(declare-fun dynLambda!8491 (Int Int) Int)

(assert (=> d!524696 (< (dynLambda!8489 order!11253 (toValue!4798 (transformation!3299 (h!24073 rules!3447)))) (dynLambda!8491 order!11255 lambda!68814))))

(declare-fun Forall2!550 (Int) Bool)

(assert (=> d!524696 (= (equivClasses!1242 (toChars!4657 (transformation!3299 (h!24073 rules!3447))) (toValue!4798 (transformation!3299 (h!24073 rules!3447)))) (Forall2!550 lambda!68814))))

(declare-fun bs!401705 () Bool)

(assert (= bs!401705 d!524696))

(declare-fun m!2113311 () Bool)

(assert (=> bs!401705 m!2113311))

(assert (=> b!1709719 d!524696))

(declare-fun d!524706 () Bool)

(declare-fun res!766722 () Bool)

(declare-fun e!1093883 () Bool)

(assert (=> d!524706 (=> res!766722 e!1093883)))

(assert (=> d!524706 (= res!766722 ((_ is Nil!18672) rules!3447))))

(assert (=> d!524706 (= (noDuplicateTag!1229 thiss!24550 rules!3447 Nil!18676) e!1093883)))

(declare-fun b!1710246 () Bool)

(declare-fun e!1093884 () Bool)

(assert (=> b!1710246 (= e!1093883 e!1093884)))

(declare-fun res!766723 () Bool)

(assert (=> b!1710246 (=> (not res!766723) (not e!1093884))))

(declare-fun contains!3318 (List!18746 String!21277) Bool)

(assert (=> b!1710246 (= res!766723 (not (contains!3318 Nil!18676 (tag!3595 (h!24073 rules!3447)))))))

(declare-fun b!1710247 () Bool)

(assert (=> b!1710247 (= e!1093884 (noDuplicateTag!1229 thiss!24550 (t!158185 rules!3447) (Cons!18676 (tag!3595 (h!24073 rules!3447)) Nil!18676)))))

(assert (= (and d!524706 (not res!766722)) b!1710246))

(assert (= (and b!1710246 res!766723) b!1710247))

(declare-fun m!2113313 () Bool)

(assert (=> b!1710246 m!2113313))

(declare-fun m!2113315 () Bool)

(assert (=> b!1710247 m!2113315))

(assert (=> b!1709818 d!524706))

(declare-fun d!524708 () Bool)

(assert (=> d!524708 (= (get!5492 lt!653220) (v!25007 lt!653220))))

(assert (=> b!1709803 d!524708))

(declare-fun d!524710 () Bool)

(declare-fun dynLambda!8492 (Int BalanceConc!12364) TokenValue!3389)

(assert (=> d!524710 (= (apply!5110 (transformation!3299 (rule!5233 (_1!10595 (get!5492 lt!653220)))) (seqFromList!2275 (originalCharacters!4113 (_1!10595 (get!5492 lt!653220))))) (dynLambda!8492 (toValue!4798 (transformation!3299 (rule!5233 (_1!10595 (get!5492 lt!653220))))) (seqFromList!2275 (originalCharacters!4113 (_1!10595 (get!5492 lt!653220))))))))

(declare-fun b_lambda!53969 () Bool)

(assert (=> (not b_lambda!53969) (not d!524710)))

(declare-fun tb!100911 () Bool)

(declare-fun t!158218 () Bool)

(assert (=> (and b!1709647 (= (toValue!4798 (transformation!3299 rule!422)) (toValue!4798 (transformation!3299 (rule!5233 (_1!10595 (get!5492 lt!653220)))))) t!158218) tb!100911))

(declare-fun result!121256 () Bool)

(assert (=> tb!100911 (= result!121256 (inv!21 (dynLambda!8492 (toValue!4798 (transformation!3299 (rule!5233 (_1!10595 (get!5492 lt!653220))))) (seqFromList!2275 (originalCharacters!4113 (_1!10595 (get!5492 lt!653220)))))))))

(declare-fun m!2113317 () Bool)

(assert (=> tb!100911 m!2113317))

(assert (=> d!524710 t!158218))

(declare-fun b_and!123805 () Bool)

(assert (= b_and!123753 (and (=> t!158218 result!121256) b_and!123805)))

(declare-fun t!158220 () Bool)

(declare-fun tb!100913 () Bool)

(assert (=> (and b!1709657 (= (toValue!4798 (transformation!3299 (h!24073 rules!3447))) (toValue!4798 (transformation!3299 (rule!5233 (_1!10595 (get!5492 lt!653220)))))) t!158220) tb!100913))

(declare-fun result!121260 () Bool)

(assert (= result!121260 result!121256))

(assert (=> d!524710 t!158220))

(declare-fun b_and!123807 () Bool)

(assert (= b_and!123757 (and (=> t!158220 result!121260) b_and!123807)))

(declare-fun tb!100915 () Bool)

(declare-fun t!158222 () Bool)

(assert (=> (and b!1709650 (= (toValue!4798 (transformation!3299 (rule!5233 token!523))) (toValue!4798 (transformation!3299 (rule!5233 (_1!10595 (get!5492 lt!653220)))))) t!158222) tb!100915))

(declare-fun result!121262 () Bool)

(assert (= result!121262 result!121256))

(assert (=> d!524710 t!158222))

(declare-fun b_and!123809 () Bool)

(assert (= b_and!123761 (and (=> t!158222 result!121262) b_and!123809)))

(declare-fun tb!100917 () Bool)

(declare-fun t!158224 () Bool)

(assert (=> (and b!1710072 (= (toValue!4798 (transformation!3299 (h!24073 (t!158185 rules!3447)))) (toValue!4798 (transformation!3299 (rule!5233 (_1!10595 (get!5492 lt!653220)))))) t!158224) tb!100917))

(declare-fun result!121264 () Bool)

(assert (= result!121264 result!121256))

(assert (=> d!524710 t!158224))

(declare-fun b_and!123811 () Bool)

(assert (= b_and!123793 (and (=> t!158224 result!121264) b_and!123811)))

(assert (=> d!524710 m!2112867))

(declare-fun m!2113319 () Bool)

(assert (=> d!524710 m!2113319))

(assert (=> b!1709803 d!524710))

(declare-fun d!524712 () Bool)

(assert (=> d!524712 (= (seqFromList!2275 (originalCharacters!4113 (_1!10595 (get!5492 lt!653220)))) (fromListB!1047 (originalCharacters!4113 (_1!10595 (get!5492 lt!653220)))))))

(declare-fun bs!401706 () Bool)

(assert (= bs!401706 d!524712))

(declare-fun m!2113321 () Bool)

(assert (=> bs!401706 m!2113321))

(assert (=> b!1709803 d!524712))

(declare-fun d!524714 () Bool)

(declare-fun c!280202 () Bool)

(assert (=> d!524714 (= c!280202 (isEmpty!11726 (tail!2549 (++!5120 lt!653165 (Cons!18671 (head!3832 suffix!1421) Nil!18671)))))))

(declare-fun e!1093895 () Bool)

(assert (=> d!524714 (= (prefixMatch!512 (derivativeStep!1156 (rulesRegex!657 thiss!24550 rules!3447) (head!3832 (++!5120 lt!653165 (Cons!18671 (head!3832 suffix!1421) Nil!18671)))) (tail!2549 (++!5120 lt!653165 (Cons!18671 (head!3832 suffix!1421) Nil!18671)))) e!1093895)))

(declare-fun b!1710259 () Bool)

(assert (=> b!1710259 (= e!1093895 (not (lostCause!498 (derivativeStep!1156 (rulesRegex!657 thiss!24550 rules!3447) (head!3832 (++!5120 lt!653165 (Cons!18671 (head!3832 suffix!1421) Nil!18671)))))))))

(declare-fun b!1710260 () Bool)

(assert (=> b!1710260 (= e!1093895 (prefixMatch!512 (derivativeStep!1156 (derivativeStep!1156 (rulesRegex!657 thiss!24550 rules!3447) (head!3832 (++!5120 lt!653165 (Cons!18671 (head!3832 suffix!1421) Nil!18671)))) (head!3832 (tail!2549 (++!5120 lt!653165 (Cons!18671 (head!3832 suffix!1421) Nil!18671))))) (tail!2549 (tail!2549 (++!5120 lt!653165 (Cons!18671 (head!3832 suffix!1421) Nil!18671))))))))

(assert (= (and d!524714 c!280202) b!1710259))

(assert (= (and d!524714 (not c!280202)) b!1710260))

(assert (=> d!524714 m!2112909))

(declare-fun m!2113329 () Bool)

(assert (=> d!524714 m!2113329))

(assert (=> b!1710259 m!2112907))

(declare-fun m!2113331 () Bool)

(assert (=> b!1710259 m!2113331))

(assert (=> b!1710260 m!2112909))

(declare-fun m!2113333 () Bool)

(assert (=> b!1710260 m!2113333))

(assert (=> b!1710260 m!2112907))

(assert (=> b!1710260 m!2113333))

(declare-fun m!2113335 () Bool)

(assert (=> b!1710260 m!2113335))

(assert (=> b!1710260 m!2112909))

(declare-fun m!2113339 () Bool)

(assert (=> b!1710260 m!2113339))

(assert (=> b!1710260 m!2113335))

(assert (=> b!1710260 m!2113339))

(declare-fun m!2113341 () Bool)

(assert (=> b!1710260 m!2113341))

(assert (=> b!1709824 d!524714))

(declare-fun bm!109412 () Bool)

(declare-fun call!109417 () Regex!4627)

(declare-fun call!109420 () Regex!4627)

(assert (=> bm!109412 (= call!109417 call!109420)))

(declare-fun b!1710289 () Bool)

(declare-fun e!1093915 () Regex!4627)

(declare-fun call!109418 () Regex!4627)

(declare-fun call!109419 () Regex!4627)

(assert (=> b!1710289 (= e!1093915 (Union!4627 (Concat!8017 call!109418 (regTwo!9766 (rulesRegex!657 thiss!24550 rules!3447))) call!109419))))

(declare-fun b!1710290 () Bool)

(declare-fun c!280218 () Bool)

(assert (=> b!1710290 (= c!280218 ((_ is Union!4627) (rulesRegex!657 thiss!24550 rules!3447)))))

(declare-fun e!1093913 () Regex!4627)

(declare-fun e!1093914 () Regex!4627)

(assert (=> b!1710290 (= e!1093913 e!1093914)))

(declare-fun b!1710291 () Bool)

(declare-fun c!280216 () Bool)

(assert (=> b!1710291 (= c!280216 (nullable!1388 (regOne!9766 (rulesRegex!657 thiss!24550 rules!3447))))))

(declare-fun e!1093912 () Regex!4627)

(assert (=> b!1710291 (= e!1093912 e!1093915)))

(declare-fun bm!109413 () Bool)

(declare-fun c!280217 () Bool)

(assert (=> bm!109413 (= call!109420 (derivativeStep!1156 (ite c!280218 (regTwo!9767 (rulesRegex!657 thiss!24550 rules!3447)) (ite c!280217 (reg!4956 (rulesRegex!657 thiss!24550 rules!3447)) (ite c!280216 (regTwo!9766 (rulesRegex!657 thiss!24550 rules!3447)) (regOne!9766 (rulesRegex!657 thiss!24550 rules!3447))))) (head!3832 (++!5120 lt!653165 (Cons!18671 (head!3832 suffix!1421) Nil!18671)))))))

(declare-fun b!1710292 () Bool)

(declare-fun e!1093911 () Regex!4627)

(assert (=> b!1710292 (= e!1093911 EmptyLang!4627)))

(declare-fun bm!109414 () Bool)

(assert (=> bm!109414 (= call!109418 (derivativeStep!1156 (ite c!280218 (regOne!9767 (rulesRegex!657 thiss!24550 rules!3447)) (regOne!9766 (rulesRegex!657 thiss!24550 rules!3447))) (head!3832 (++!5120 lt!653165 (Cons!18671 (head!3832 suffix!1421) Nil!18671)))))))

(declare-fun d!524722 () Bool)

(declare-fun lt!653346 () Regex!4627)

(assert (=> d!524722 (validRegex!1862 lt!653346)))

(assert (=> d!524722 (= lt!653346 e!1093911)))

(declare-fun c!280219 () Bool)

(assert (=> d!524722 (= c!280219 (or ((_ is EmptyExpr!4627) (rulesRegex!657 thiss!24550 rules!3447)) ((_ is EmptyLang!4627) (rulesRegex!657 thiss!24550 rules!3447))))))

(assert (=> d!524722 (validRegex!1862 (rulesRegex!657 thiss!24550 rules!3447))))

(assert (=> d!524722 (= (derivativeStep!1156 (rulesRegex!657 thiss!24550 rules!3447) (head!3832 (++!5120 lt!653165 (Cons!18671 (head!3832 suffix!1421) Nil!18671)))) lt!653346)))

(declare-fun b!1710293 () Bool)

(assert (=> b!1710293 (= e!1093913 (ite (= (head!3832 (++!5120 lt!653165 (Cons!18671 (head!3832 suffix!1421) Nil!18671))) (c!280095 (rulesRegex!657 thiss!24550 rules!3447))) EmptyExpr!4627 EmptyLang!4627))))

(declare-fun b!1710294 () Bool)

(assert (=> b!1710294 (= e!1093915 (Union!4627 (Concat!8017 call!109419 (regTwo!9766 (rulesRegex!657 thiss!24550 rules!3447))) EmptyLang!4627))))

(declare-fun b!1710295 () Bool)

(assert (=> b!1710295 (= e!1093914 e!1093912)))

(assert (=> b!1710295 (= c!280217 ((_ is Star!4627) (rulesRegex!657 thiss!24550 rules!3447)))))

(declare-fun b!1710296 () Bool)

(assert (=> b!1710296 (= e!1093914 (Union!4627 call!109418 call!109420))))

(declare-fun b!1710297 () Bool)

(assert (=> b!1710297 (= e!1093911 e!1093913)))

(declare-fun c!280220 () Bool)

(assert (=> b!1710297 (= c!280220 ((_ is ElementMatch!4627) (rulesRegex!657 thiss!24550 rules!3447)))))

(declare-fun bm!109415 () Bool)

(assert (=> bm!109415 (= call!109419 call!109417)))

(declare-fun b!1710298 () Bool)

(assert (=> b!1710298 (= e!1093912 (Concat!8017 call!109417 (rulesRegex!657 thiss!24550 rules!3447)))))

(assert (= (and d!524722 c!280219) b!1710292))

(assert (= (and d!524722 (not c!280219)) b!1710297))

(assert (= (and b!1710297 c!280220) b!1710293))

(assert (= (and b!1710297 (not c!280220)) b!1710290))

(assert (= (and b!1710290 c!280218) b!1710296))

(assert (= (and b!1710290 (not c!280218)) b!1710295))

(assert (= (and b!1710295 c!280217) b!1710298))

(assert (= (and b!1710295 (not c!280217)) b!1710291))

(assert (= (and b!1710291 c!280216) b!1710289))

(assert (= (and b!1710291 (not c!280216)) b!1710294))

(assert (= (or b!1710289 b!1710294) bm!109415))

(assert (= (or b!1710298 bm!109415) bm!109412))

(assert (= (or b!1710296 bm!109412) bm!109413))

(assert (= (or b!1710296 b!1710289) bm!109414))

(declare-fun m!2113375 () Bool)

(assert (=> b!1710291 m!2113375))

(assert (=> bm!109413 m!2112905))

(declare-fun m!2113377 () Bool)

(assert (=> bm!109413 m!2113377))

(assert (=> bm!109414 m!2112905))

(declare-fun m!2113379 () Bool)

(assert (=> bm!109414 m!2113379))

(declare-fun m!2113381 () Bool)

(assert (=> d!524722 m!2113381))

(assert (=> d!524722 m!2112691))

(declare-fun m!2113383 () Bool)

(assert (=> d!524722 m!2113383))

(assert (=> b!1709824 d!524722))

(declare-fun d!524744 () Bool)

(assert (=> d!524744 (= (head!3832 (++!5120 lt!653165 (Cons!18671 (head!3832 suffix!1421) Nil!18671))) (h!24072 (++!5120 lt!653165 (Cons!18671 (head!3832 suffix!1421) Nil!18671))))))

(assert (=> b!1709824 d!524744))

(declare-fun d!524746 () Bool)

(assert (=> d!524746 (= (tail!2549 (++!5120 lt!653165 (Cons!18671 (head!3832 suffix!1421) Nil!18671))) (t!158184 (++!5120 lt!653165 (Cons!18671 (head!3832 suffix!1421) Nil!18671))))))

(assert (=> b!1709824 d!524746))

(declare-fun d!524748 () Bool)

(assert (=> d!524748 (= (isEmpty!11730 lt!653167) (not ((_ is Some!3622) lt!653167)))))

(assert (=> d!524524 d!524748))

(declare-fun b!1710301 () Bool)

(declare-fun e!1093918 () Bool)

(assert (=> b!1710301 (= e!1093918 (isPrefix!1540 (tail!2549 lt!653165) (tail!2549 (++!5120 lt!653165 suffix!1421))))))

(declare-fun d!524750 () Bool)

(declare-fun e!1093916 () Bool)

(assert (=> d!524750 e!1093916))

(declare-fun res!766733 () Bool)

(assert (=> d!524750 (=> res!766733 e!1093916)))

(declare-fun lt!653347 () Bool)

(assert (=> d!524750 (= res!766733 (not lt!653347))))

(declare-fun e!1093917 () Bool)

(assert (=> d!524750 (= lt!653347 e!1093917)))

(declare-fun res!766732 () Bool)

(assert (=> d!524750 (=> res!766732 e!1093917)))

(assert (=> d!524750 (= res!766732 ((_ is Nil!18671) lt!653165))))

(assert (=> d!524750 (= (isPrefix!1540 lt!653165 (++!5120 lt!653165 suffix!1421)) lt!653347)))

(declare-fun b!1710302 () Bool)

(assert (=> b!1710302 (= e!1093916 (>= (size!14846 (++!5120 lt!653165 suffix!1421)) (size!14846 lt!653165)))))

(declare-fun b!1710300 () Bool)

(declare-fun res!766731 () Bool)

(assert (=> b!1710300 (=> (not res!766731) (not e!1093918))))

(assert (=> b!1710300 (= res!766731 (= (head!3832 lt!653165) (head!3832 (++!5120 lt!653165 suffix!1421))))))

(declare-fun b!1710299 () Bool)

(assert (=> b!1710299 (= e!1093917 e!1093918)))

(declare-fun res!766730 () Bool)

(assert (=> b!1710299 (=> (not res!766730) (not e!1093918))))

(assert (=> b!1710299 (= res!766730 (not ((_ is Nil!18671) (++!5120 lt!653165 suffix!1421))))))

(assert (= (and d!524750 (not res!766732)) b!1710299))

(assert (= (and b!1710299 res!766730) b!1710300))

(assert (= (and b!1710300 res!766731) b!1710301))

(assert (= (and d!524750 (not res!766733)) b!1710302))

(assert (=> b!1710301 m!2113045))

(assert (=> b!1710301 m!2112667))

(declare-fun m!2113385 () Bool)

(assert (=> b!1710301 m!2113385))

(assert (=> b!1710301 m!2113045))

(assert (=> b!1710301 m!2113385))

(declare-fun m!2113387 () Bool)

(assert (=> b!1710301 m!2113387))

(assert (=> b!1710302 m!2112667))

(declare-fun m!2113389 () Bool)

(assert (=> b!1710302 m!2113389))

(assert (=> b!1710302 m!2112883))

(assert (=> b!1710300 m!2113053))

(assert (=> b!1710300 m!2112667))

(declare-fun m!2113391 () Bool)

(assert (=> b!1710300 m!2113391))

(assert (=> d!524608 d!524750))

(assert (=> d!524608 d!524606))

(declare-fun d!524752 () Bool)

(assert (=> d!524752 (isPrefix!1540 lt!653165 (++!5120 lt!653165 suffix!1421))))

(assert (=> d!524752 true))

(declare-fun _$46!1174 () Unit!32499)

(assert (=> d!524752 (= (choose!10377 lt!653165 suffix!1421) _$46!1174)))

(declare-fun bs!401713 () Bool)

(assert (= bs!401713 d!524752))

(assert (=> bs!401713 m!2112667))

(assert (=> bs!401713 m!2112667))

(assert (=> bs!401713 m!2113067))

(assert (=> d!524608 d!524752))

(declare-fun b!1710321 () Bool)

(declare-fun e!1093927 () Bool)

(declare-fun e!1093930 () Bool)

(assert (=> b!1710321 (= e!1093927 e!1093930)))

(declare-fun res!766752 () Bool)

(assert (=> b!1710321 (=> (not res!766752) (not e!1093930))))

(declare-fun lt!653360 () Option!3623)

(assert (=> b!1710321 (= res!766752 (matchR!2101 (regex!3299 (h!24073 rules!3447)) (list!7528 (charsOf!1948 (_1!10595 (get!5492 lt!653360))))))))

(declare-fun b!1710322 () Bool)

(declare-fun res!766748 () Bool)

(assert (=> b!1710322 (=> (not res!766748) (not e!1093930))))

(assert (=> b!1710322 (= res!766748 (< (size!14846 (_2!10595 (get!5492 lt!653360))) (size!14846 lt!653165)))))

(declare-fun b!1710323 () Bool)

(declare-fun e!1093928 () Option!3623)

(declare-datatypes ((tuple2!18394 0))(
  ( (tuple2!18395 (_1!10599 List!18741) (_2!10599 List!18741)) )
))
(declare-fun lt!653358 () tuple2!18394)

(assert (=> b!1710323 (= e!1093928 (Some!3622 (tuple2!18387 (Token!6165 (apply!5110 (transformation!3299 (h!24073 rules!3447)) (seqFromList!2275 (_1!10599 lt!653358))) (h!24073 rules!3447) (size!14847 (seqFromList!2275 (_1!10599 lt!653358))) (_1!10599 lt!653358)) (_2!10599 lt!653358))))))

(declare-fun lt!653359 () Unit!32499)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!369 (Regex!4627 List!18741) Unit!32499)

(assert (=> b!1710323 (= lt!653359 (longestMatchIsAcceptedByMatchOrIsEmpty!369 (regex!3299 (h!24073 rules!3447)) lt!653165))))

(declare-fun res!766753 () Bool)

(declare-fun findLongestMatchInner!385 (Regex!4627 List!18741 Int List!18741 List!18741 Int) tuple2!18394)

(assert (=> b!1710323 (= res!766753 (isEmpty!11726 (_1!10599 (findLongestMatchInner!385 (regex!3299 (h!24073 rules!3447)) Nil!18671 (size!14846 Nil!18671) lt!653165 lt!653165 (size!14846 lt!653165)))))))

(declare-fun e!1093929 () Bool)

(assert (=> b!1710323 (=> res!766753 e!1093929)))

(assert (=> b!1710323 e!1093929))

(declare-fun lt!653361 () Unit!32499)

(assert (=> b!1710323 (= lt!653361 lt!653359)))

(declare-fun lt!653362 () Unit!32499)

(declare-fun lemmaSemiInverse!451 (TokenValueInjection!6438 BalanceConc!12364) Unit!32499)

(assert (=> b!1710323 (= lt!653362 (lemmaSemiInverse!451 (transformation!3299 (h!24073 rules!3447)) (seqFromList!2275 (_1!10599 lt!653358))))))

(declare-fun b!1710324 () Bool)

(assert (=> b!1710324 (= e!1093929 (matchR!2101 (regex!3299 (h!24073 rules!3447)) (_1!10599 (findLongestMatchInner!385 (regex!3299 (h!24073 rules!3447)) Nil!18671 (size!14846 Nil!18671) lt!653165 lt!653165 (size!14846 lt!653165)))))))

(declare-fun b!1710325 () Bool)

(assert (=> b!1710325 (= e!1093928 None!3622)))

(declare-fun b!1710326 () Bool)

(declare-fun res!766754 () Bool)

(assert (=> b!1710326 (=> (not res!766754) (not e!1093930))))

(assert (=> b!1710326 (= res!766754 (= (rule!5233 (_1!10595 (get!5492 lt!653360))) (h!24073 rules!3447)))))

(declare-fun b!1710327 () Bool)

(assert (=> b!1710327 (= e!1093930 (= (size!14842 (_1!10595 (get!5492 lt!653360))) (size!14846 (originalCharacters!4113 (_1!10595 (get!5492 lt!653360))))))))

(declare-fun b!1710329 () Bool)

(declare-fun res!766749 () Bool)

(assert (=> b!1710329 (=> (not res!766749) (not e!1093930))))

(assert (=> b!1710329 (= res!766749 (= (value!103694 (_1!10595 (get!5492 lt!653360))) (apply!5110 (transformation!3299 (rule!5233 (_1!10595 (get!5492 lt!653360)))) (seqFromList!2275 (originalCharacters!4113 (_1!10595 (get!5492 lt!653360)))))))))

(declare-fun d!524754 () Bool)

(assert (=> d!524754 e!1093927))

(declare-fun res!766750 () Bool)

(assert (=> d!524754 (=> res!766750 e!1093927)))

(assert (=> d!524754 (= res!766750 (isEmpty!11730 lt!653360))))

(assert (=> d!524754 (= lt!653360 e!1093928)))

(declare-fun c!280223 () Bool)

(assert (=> d!524754 (= c!280223 (isEmpty!11726 (_1!10599 lt!653358)))))

(declare-fun findLongestMatch!312 (Regex!4627 List!18741) tuple2!18394)

(assert (=> d!524754 (= lt!653358 (findLongestMatch!312 (regex!3299 (h!24073 rules!3447)) lt!653165))))

(assert (=> d!524754 (ruleValid!798 thiss!24550 (h!24073 rules!3447))))

(assert (=> d!524754 (= (maxPrefixOneRule!866 thiss!24550 (h!24073 rules!3447) lt!653165) lt!653360)))

(declare-fun b!1710328 () Bool)

(declare-fun res!766751 () Bool)

(assert (=> b!1710328 (=> (not res!766751) (not e!1093930))))

(assert (=> b!1710328 (= res!766751 (= (++!5120 (list!7528 (charsOf!1948 (_1!10595 (get!5492 lt!653360)))) (_2!10595 (get!5492 lt!653360))) lt!653165))))

(assert (= (and d!524754 c!280223) b!1710325))

(assert (= (and d!524754 (not c!280223)) b!1710323))

(assert (= (and b!1710323 (not res!766753)) b!1710324))

(assert (= (and d!524754 (not res!766750)) b!1710321))

(assert (= (and b!1710321 res!766752) b!1710328))

(assert (= (and b!1710328 res!766751) b!1710322))

(assert (= (and b!1710322 res!766748) b!1710326))

(assert (= (and b!1710326 res!766754) b!1710329))

(assert (= (and b!1710329 res!766749) b!1710327))

(declare-fun m!2113393 () Bool)

(assert (=> b!1710322 m!2113393))

(declare-fun m!2113395 () Bool)

(assert (=> b!1710322 m!2113395))

(assert (=> b!1710322 m!2112883))

(assert (=> b!1710321 m!2113393))

(declare-fun m!2113397 () Bool)

(assert (=> b!1710321 m!2113397))

(assert (=> b!1710321 m!2113397))

(declare-fun m!2113399 () Bool)

(assert (=> b!1710321 m!2113399))

(assert (=> b!1710321 m!2113399))

(declare-fun m!2113401 () Bool)

(assert (=> b!1710321 m!2113401))

(assert (=> b!1710329 m!2113393))

(declare-fun m!2113403 () Bool)

(assert (=> b!1710329 m!2113403))

(assert (=> b!1710329 m!2113403))

(declare-fun m!2113405 () Bool)

(assert (=> b!1710329 m!2113405))

(declare-fun m!2113407 () Bool)

(assert (=> b!1710324 m!2113407))

(assert (=> b!1710324 m!2112883))

(assert (=> b!1710324 m!2113407))

(assert (=> b!1710324 m!2112883))

(declare-fun m!2113409 () Bool)

(assert (=> b!1710324 m!2113409))

(declare-fun m!2113411 () Bool)

(assert (=> b!1710324 m!2113411))

(assert (=> b!1710323 m!2113407))

(declare-fun m!2113413 () Bool)

(assert (=> b!1710323 m!2113413))

(declare-fun m!2113415 () Bool)

(assert (=> b!1710323 m!2113415))

(declare-fun m!2113417 () Bool)

(assert (=> b!1710323 m!2113417))

(assert (=> b!1710323 m!2113413))

(declare-fun m!2113419 () Bool)

(assert (=> b!1710323 m!2113419))

(assert (=> b!1710323 m!2113413))

(declare-fun m!2113421 () Bool)

(assert (=> b!1710323 m!2113421))

(assert (=> b!1710323 m!2113413))

(assert (=> b!1710323 m!2112883))

(declare-fun m!2113423 () Bool)

(assert (=> b!1710323 m!2113423))

(assert (=> b!1710323 m!2113407))

(assert (=> b!1710323 m!2112883))

(assert (=> b!1710323 m!2113409))

(declare-fun m!2113425 () Bool)

(assert (=> d!524754 m!2113425))

(declare-fun m!2113427 () Bool)

(assert (=> d!524754 m!2113427))

(declare-fun m!2113429 () Bool)

(assert (=> d!524754 m!2113429))

(declare-fun m!2113431 () Bool)

(assert (=> d!524754 m!2113431))

(assert (=> b!1710327 m!2113393))

(declare-fun m!2113433 () Bool)

(assert (=> b!1710327 m!2113433))

(assert (=> b!1710326 m!2113393))

(assert (=> b!1710328 m!2113393))

(assert (=> b!1710328 m!2113397))

(assert (=> b!1710328 m!2113397))

(assert (=> b!1710328 m!2113399))

(assert (=> b!1710328 m!2113399))

(declare-fun m!2113435 () Bool)

(assert (=> b!1710328 m!2113435))

(assert (=> bm!109388 d!524754))

(declare-fun d!524756 () Bool)

(assert (=> d!524756 (= (list!7528 (charsOf!1948 (_1!10595 (get!5492 lt!653220)))) (list!7531 (c!280096 (charsOf!1948 (_1!10595 (get!5492 lt!653220))))))))

(declare-fun bs!401714 () Bool)

(assert (= bs!401714 d!524756))

(declare-fun m!2113437 () Bool)

(assert (=> bs!401714 m!2113437))

(assert (=> b!1709804 d!524756))

(declare-fun d!524758 () Bool)

(declare-fun lt!653363 () BalanceConc!12364)

(assert (=> d!524758 (= (list!7528 lt!653363) (originalCharacters!4113 (_1!10595 (get!5492 lt!653220))))))

(assert (=> d!524758 (= lt!653363 (dynLambda!8485 (toChars!4657 (transformation!3299 (rule!5233 (_1!10595 (get!5492 lt!653220))))) (value!103694 (_1!10595 (get!5492 lt!653220)))))))

(assert (=> d!524758 (= (charsOf!1948 (_1!10595 (get!5492 lt!653220))) lt!653363)))

(declare-fun b_lambda!53973 () Bool)

(assert (=> (not b_lambda!53973) (not d!524758)))

(declare-fun tb!100927 () Bool)

(declare-fun t!158234 () Bool)

(assert (=> (and b!1709647 (= (toChars!4657 (transformation!3299 rule!422)) (toChars!4657 (transformation!3299 (rule!5233 (_1!10595 (get!5492 lt!653220)))))) t!158234) tb!100927))

(declare-fun b!1710330 () Bool)

(declare-fun e!1093931 () Bool)

(declare-fun tp!488734 () Bool)

(assert (=> b!1710330 (= e!1093931 (and (inv!24087 (c!280096 (dynLambda!8485 (toChars!4657 (transformation!3299 (rule!5233 (_1!10595 (get!5492 lt!653220))))) (value!103694 (_1!10595 (get!5492 lt!653220)))))) tp!488734))))

(declare-fun result!121274 () Bool)

(assert (=> tb!100927 (= result!121274 (and (inv!24088 (dynLambda!8485 (toChars!4657 (transformation!3299 (rule!5233 (_1!10595 (get!5492 lt!653220))))) (value!103694 (_1!10595 (get!5492 lt!653220))))) e!1093931))))

(assert (= tb!100927 b!1710330))

(declare-fun m!2113439 () Bool)

(assert (=> b!1710330 m!2113439))

(declare-fun m!2113441 () Bool)

(assert (=> tb!100927 m!2113441))

(assert (=> d!524758 t!158234))

(declare-fun b_and!123821 () Bool)

(assert (= b_and!123787 (and (=> t!158234 result!121274) b_and!123821)))

(declare-fun tb!100929 () Bool)

(declare-fun t!158236 () Bool)

(assert (=> (and b!1709657 (= (toChars!4657 (transformation!3299 (h!24073 rules!3447))) (toChars!4657 (transformation!3299 (rule!5233 (_1!10595 (get!5492 lt!653220)))))) t!158236) tb!100929))

(declare-fun result!121276 () Bool)

(assert (= result!121276 result!121274))

(assert (=> d!524758 t!158236))

(declare-fun b_and!123823 () Bool)

(assert (= b_and!123789 (and (=> t!158236 result!121276) b_and!123823)))

(declare-fun t!158238 () Bool)

(declare-fun tb!100931 () Bool)

(assert (=> (and b!1709650 (= (toChars!4657 (transformation!3299 (rule!5233 token!523))) (toChars!4657 (transformation!3299 (rule!5233 (_1!10595 (get!5492 lt!653220)))))) t!158238) tb!100931))

(declare-fun result!121278 () Bool)

(assert (= result!121278 result!121274))

(assert (=> d!524758 t!158238))

(declare-fun b_and!123825 () Bool)

(assert (= b_and!123791 (and (=> t!158238 result!121278) b_and!123825)))

(declare-fun tb!100933 () Bool)

(declare-fun t!158240 () Bool)

(assert (=> (and b!1710072 (= (toChars!4657 (transformation!3299 (h!24073 (t!158185 rules!3447)))) (toChars!4657 (transformation!3299 (rule!5233 (_1!10595 (get!5492 lt!653220)))))) t!158240) tb!100933))

(declare-fun result!121280 () Bool)

(assert (= result!121280 result!121274))

(assert (=> d!524758 t!158240))

(declare-fun b_and!123827 () Bool)

(assert (= b_and!123795 (and (=> t!158240 result!121280) b_and!123827)))

(declare-fun m!2113443 () Bool)

(assert (=> d!524758 m!2113443))

(declare-fun m!2113445 () Bool)

(assert (=> d!524758 m!2113445))

(assert (=> b!1709804 d!524758))

(assert (=> b!1709804 d!524708))

(declare-fun d!524760 () Bool)

(declare-fun lt!653364 () Int)

(assert (=> d!524760 (>= lt!653364 0)))

(declare-fun e!1093932 () Int)

(assert (=> d!524760 (= lt!653364 e!1093932)))

(declare-fun c!280224 () Bool)

(assert (=> d!524760 (= c!280224 ((_ is Nil!18671) (_2!10595 (get!5492 lt!653220))))))

(assert (=> d!524760 (= (size!14846 (_2!10595 (get!5492 lt!653220))) lt!653364)))

(declare-fun b!1710331 () Bool)

(assert (=> b!1710331 (= e!1093932 0)))

(declare-fun b!1710332 () Bool)

(assert (=> b!1710332 (= e!1093932 (+ 1 (size!14846 (t!158184 (_2!10595 (get!5492 lt!653220))))))))

(assert (= (and d!524760 c!280224) b!1710331))

(assert (= (and d!524760 (not c!280224)) b!1710332))

(declare-fun m!2113447 () Bool)

(assert (=> b!1710332 m!2113447))

(assert (=> b!1709807 d!524760))

(assert (=> b!1709807 d!524708))

(declare-fun d!524762 () Bool)

(declare-fun lt!653365 () Int)

(assert (=> d!524762 (>= lt!653365 0)))

(declare-fun e!1093933 () Int)

(assert (=> d!524762 (= lt!653365 e!1093933)))

(declare-fun c!280225 () Bool)

(assert (=> d!524762 (= c!280225 ((_ is Nil!18671) lt!653165))))

(assert (=> d!524762 (= (size!14846 lt!653165) lt!653365)))

(declare-fun b!1710333 () Bool)

(assert (=> b!1710333 (= e!1093933 0)))

(declare-fun b!1710334 () Bool)

(assert (=> b!1710334 (= e!1093933 (+ 1 (size!14846 (t!158184 lt!653165))))))

(assert (= (and d!524762 c!280225) b!1710333))

(assert (= (and d!524762 (not c!280225)) b!1710334))

(declare-fun m!2113449 () Bool)

(assert (=> b!1710334 m!2113449))

(assert (=> b!1709807 d!524762))

(declare-fun d!524764 () Bool)

(assert (=> d!524764 (= (isEmpty!11726 (++!5120 lt!653165 (Cons!18671 (head!3832 suffix!1421) Nil!18671))) ((_ is Nil!18671) (++!5120 lt!653165 (Cons!18671 (head!3832 suffix!1421) Nil!18671))))))

(assert (=> d!524560 d!524764))

(declare-fun d!524766 () Bool)

(declare-fun lt!653366 () Bool)

(assert (=> d!524766 (= lt!653366 (select (content!2654 (t!158185 rules!3447)) rule!422))))

(declare-fun e!1093934 () Bool)

(assert (=> d!524766 (= lt!653366 e!1093934)))

(declare-fun res!766755 () Bool)

(assert (=> d!524766 (=> (not res!766755) (not e!1093934))))

(assert (=> d!524766 (= res!766755 ((_ is Cons!18672) (t!158185 rules!3447)))))

(assert (=> d!524766 (= (contains!3317 (t!158185 rules!3447) rule!422) lt!653366)))

(declare-fun b!1710335 () Bool)

(declare-fun e!1093935 () Bool)

(assert (=> b!1710335 (= e!1093934 e!1093935)))

(declare-fun res!766756 () Bool)

(assert (=> b!1710335 (=> res!766756 e!1093935)))

(assert (=> b!1710335 (= res!766756 (= (h!24073 (t!158185 rules!3447)) rule!422))))

(declare-fun b!1710336 () Bool)

(assert (=> b!1710336 (= e!1093935 (contains!3317 (t!158185 (t!158185 rules!3447)) rule!422))))

(assert (= (and d!524766 res!766755) b!1710335))

(assert (= (and b!1710335 (not res!766756)) b!1710336))

(declare-fun m!2113451 () Bool)

(assert (=> d!524766 m!2113451))

(declare-fun m!2113453 () Bool)

(assert (=> d!524766 m!2113453))

(declare-fun m!2113455 () Bool)

(assert (=> b!1710336 m!2113455))

(assert (=> b!1709853 d!524766))

(declare-fun d!524768 () Bool)

(assert (=> d!524768 (= (get!5492 lt!653261) (v!25007 lt!653261))))

(assert (=> b!1709966 d!524768))

(declare-fun d!524770 () Bool)

(assert (=> d!524770 (= (apply!5110 (transformation!3299 (rule!5233 (_1!10595 (get!5492 lt!653261)))) (seqFromList!2275 (originalCharacters!4113 (_1!10595 (get!5492 lt!653261))))) (dynLambda!8492 (toValue!4798 (transformation!3299 (rule!5233 (_1!10595 (get!5492 lt!653261))))) (seqFromList!2275 (originalCharacters!4113 (_1!10595 (get!5492 lt!653261))))))))

(declare-fun b_lambda!53975 () Bool)

(assert (=> (not b_lambda!53975) (not d!524770)))

(declare-fun t!158242 () Bool)

(declare-fun tb!100935 () Bool)

(assert (=> (and b!1709647 (= (toValue!4798 (transformation!3299 rule!422)) (toValue!4798 (transformation!3299 (rule!5233 (_1!10595 (get!5492 lt!653261)))))) t!158242) tb!100935))

(declare-fun result!121282 () Bool)

(assert (=> tb!100935 (= result!121282 (inv!21 (dynLambda!8492 (toValue!4798 (transformation!3299 (rule!5233 (_1!10595 (get!5492 lt!653261))))) (seqFromList!2275 (originalCharacters!4113 (_1!10595 (get!5492 lt!653261)))))))))

(declare-fun m!2113457 () Bool)

(assert (=> tb!100935 m!2113457))

(assert (=> d!524770 t!158242))

(declare-fun b_and!123829 () Bool)

(assert (= b_and!123805 (and (=> t!158242 result!121282) b_and!123829)))

(declare-fun tb!100937 () Bool)

(declare-fun t!158244 () Bool)

(assert (=> (and b!1709657 (= (toValue!4798 (transformation!3299 (h!24073 rules!3447))) (toValue!4798 (transformation!3299 (rule!5233 (_1!10595 (get!5492 lt!653261)))))) t!158244) tb!100937))

(declare-fun result!121284 () Bool)

(assert (= result!121284 result!121282))

(assert (=> d!524770 t!158244))

(declare-fun b_and!123831 () Bool)

(assert (= b_and!123807 (and (=> t!158244 result!121284) b_and!123831)))

(declare-fun t!158246 () Bool)

(declare-fun tb!100939 () Bool)

(assert (=> (and b!1709650 (= (toValue!4798 (transformation!3299 (rule!5233 token!523))) (toValue!4798 (transformation!3299 (rule!5233 (_1!10595 (get!5492 lt!653261)))))) t!158246) tb!100939))

(declare-fun result!121286 () Bool)

(assert (= result!121286 result!121282))

(assert (=> d!524770 t!158246))

(declare-fun b_and!123833 () Bool)

(assert (= b_and!123809 (and (=> t!158246 result!121286) b_and!123833)))

(declare-fun t!158248 () Bool)

(declare-fun tb!100941 () Bool)

(assert (=> (and b!1710072 (= (toValue!4798 (transformation!3299 (h!24073 (t!158185 rules!3447)))) (toValue!4798 (transformation!3299 (rule!5233 (_1!10595 (get!5492 lt!653261)))))) t!158248) tb!100941))

(declare-fun result!121288 () Bool)

(assert (= result!121288 result!121282))

(assert (=> d!524770 t!158248))

(declare-fun b_and!123835 () Bool)

(assert (= b_and!123811 (and (=> t!158248 result!121288) b_and!123835)))

(assert (=> d!524770 m!2113085))

(declare-fun m!2113459 () Bool)

(assert (=> d!524770 m!2113459))

(assert (=> b!1709966 d!524770))

(declare-fun d!524772 () Bool)

(assert (=> d!524772 (= (seqFromList!2275 (originalCharacters!4113 (_1!10595 (get!5492 lt!653261)))) (fromListB!1047 (originalCharacters!4113 (_1!10595 (get!5492 lt!653261)))))))

(declare-fun bs!401715 () Bool)

(assert (= bs!401715 d!524772))

(declare-fun m!2113461 () Bool)

(assert (=> bs!401715 m!2113461))

(assert (=> b!1709966 d!524772))

(declare-fun d!524774 () Bool)

(declare-fun lt!653369 () Int)

(assert (=> d!524774 (= lt!653369 (size!14850 (list!7532 (_1!10594 lt!653252))))))

(assert (=> d!524774 (= lt!653369 (size!14853 (c!280097 (_1!10594 lt!653252))))))

(assert (=> d!524774 (= (size!14848 (_1!10594 lt!653252)) lt!653369)))

(declare-fun bs!401716 () Bool)

(assert (= bs!401716 d!524774))

(assert (=> bs!401716 m!2113043))

(assert (=> bs!401716 m!2113043))

(declare-fun m!2113463 () Bool)

(assert (=> bs!401716 m!2113463))

(declare-fun m!2113465 () Bool)

(assert (=> bs!401716 m!2113465))

(assert (=> d!524586 d!524774))

(declare-datatypes ((tuple2!18398 0))(
  ( (tuple2!18399 (_1!10601 Token!6164) (_2!10601 BalanceConc!12364)) )
))
(declare-datatypes ((Option!3625 0))(
  ( (None!3624) (Some!3624 (v!25011 tuple2!18398)) )
))
(declare-fun lt!653580 () Option!3625)

(declare-fun lt!653589 () tuple2!18384)

(declare-fun b!1710484 () Bool)

(declare-fun lexRec!397 (LexerInterface!2928 List!18742 BalanceConc!12364) tuple2!18384)

(assert (=> b!1710484 (= lt!653589 (lexRec!397 thiss!24550 rules!3447 (_2!10601 (v!25011 lt!653580))))))

(declare-fun e!1094015 () tuple2!18384)

(declare-fun prepend!867 (BalanceConc!12366 Token!6164) BalanceConc!12366)

(assert (=> b!1710484 (= e!1094015 (tuple2!18385 (prepend!867 (_1!10594 lt!653589) (_1!10601 (v!25011 lt!653580))) (_2!10594 lt!653589)))))

(declare-fun b!1710485 () Bool)

(declare-fun lt!653568 () BalanceConc!12364)

(assert (=> b!1710485 (= e!1094015 (tuple2!18385 (BalanceConc!12367 Empty!6211) lt!653568))))

(declare-fun lt!653588 () tuple2!18384)

(declare-fun b!1710486 () Bool)

(declare-fun e!1094017 () Bool)

(assert (=> b!1710486 (= e!1094017 (= (list!7528 (_2!10594 lt!653588)) (list!7528 (_2!10594 (lexRec!397 thiss!24550 rules!3447 (seqFromList!2275 lt!653165))))))))

(declare-fun lt!653591 () Option!3625)

(declare-fun lt!653575 () tuple2!18384)

(declare-fun b!1710487 () Bool)

(assert (=> b!1710487 (= lt!653575 (lexRec!397 thiss!24550 rules!3447 (_2!10601 (v!25011 lt!653591))))))

(declare-fun e!1094016 () tuple2!18384)

(assert (=> b!1710487 (= e!1094016 (tuple2!18385 (prepend!867 (_1!10594 lt!653575) (_1!10601 (v!25011 lt!653591))) (_2!10594 lt!653575)))))

(declare-fun b!1710488 () Bool)

(declare-fun lt!653566 () Option!3625)

(declare-fun e!1094014 () tuple2!18384)

(declare-fun lt!653587 () BalanceConc!12364)

(declare-fun append!588 (BalanceConc!12366 Token!6164) BalanceConc!12366)

(assert (=> b!1710488 (= e!1094014 (lexTailRecV2!638 thiss!24550 rules!3447 (seqFromList!2275 lt!653165) lt!653587 (_2!10601 (v!25011 lt!653566)) (append!588 (BalanceConc!12367 Empty!6211) (_1!10601 (v!25011 lt!653566)))))))

(declare-fun lt!653570 () tuple2!18384)

(assert (=> b!1710488 (= lt!653570 (lexRec!397 thiss!24550 rules!3447 (_2!10601 (v!25011 lt!653566))))))

(declare-fun lt!653594 () List!18741)

(assert (=> b!1710488 (= lt!653594 (list!7528 (BalanceConc!12365 Empty!6210)))))

(declare-fun lt!653596 () List!18741)

(assert (=> b!1710488 (= lt!653596 (list!7528 (charsOf!1948 (_1!10601 (v!25011 lt!653566)))))))

(declare-fun lt!653577 () List!18741)

(assert (=> b!1710488 (= lt!653577 (list!7528 (_2!10601 (v!25011 lt!653566))))))

(declare-fun lt!653590 () Unit!32499)

(declare-fun lemmaConcatAssociativity!1070 (List!18741 List!18741 List!18741) Unit!32499)

(assert (=> b!1710488 (= lt!653590 (lemmaConcatAssociativity!1070 lt!653594 lt!653596 lt!653577))))

(assert (=> b!1710488 (= (++!5120 (++!5120 lt!653594 lt!653596) lt!653577) (++!5120 lt!653594 (++!5120 lt!653596 lt!653577)))))

(declare-fun lt!653565 () Unit!32499)

(assert (=> b!1710488 (= lt!653565 lt!653590)))

(declare-fun maxPrefixZipperSequence!763 (LexerInterface!2928 List!18742 BalanceConc!12364) Option!3625)

(assert (=> b!1710488 (= lt!653591 (maxPrefixZipperSequence!763 thiss!24550 rules!3447 (seqFromList!2275 lt!653165)))))

(declare-fun c!280282 () Bool)

(assert (=> b!1710488 (= c!280282 ((_ is Some!3624) lt!653591))))

(assert (=> b!1710488 (= (lexRec!397 thiss!24550 rules!3447 (seqFromList!2275 lt!653165)) e!1094016)))

(declare-fun lt!653583 () Unit!32499)

(declare-fun Unit!32505 () Unit!32499)

(assert (=> b!1710488 (= lt!653583 Unit!32505)))

(declare-fun lt!653576 () List!18743)

(assert (=> b!1710488 (= lt!653576 (list!7532 (BalanceConc!12367 Empty!6211)))))

(declare-fun lt!653581 () List!18743)

(assert (=> b!1710488 (= lt!653581 (Cons!18673 (_1!10601 (v!25011 lt!653566)) Nil!18673))))

(declare-fun lt!653584 () List!18743)

(assert (=> b!1710488 (= lt!653584 (list!7532 (_1!10594 lt!653570)))))

(declare-fun lt!653572 () Unit!32499)

(declare-fun lemmaConcatAssociativity!1071 (List!18743 List!18743 List!18743) Unit!32499)

(assert (=> b!1710488 (= lt!653572 (lemmaConcatAssociativity!1071 lt!653576 lt!653581 lt!653584))))

(declare-fun ++!5123 (List!18743 List!18743) List!18743)

(assert (=> b!1710488 (= (++!5123 (++!5123 lt!653576 lt!653581) lt!653584) (++!5123 lt!653576 (++!5123 lt!653581 lt!653584)))))

(declare-fun lt!653574 () Unit!32499)

(assert (=> b!1710488 (= lt!653574 lt!653572)))

(declare-fun lt!653595 () List!18741)

(assert (=> b!1710488 (= lt!653595 (++!5120 (list!7528 (BalanceConc!12365 Empty!6210)) (list!7528 (charsOf!1948 (_1!10601 (v!25011 lt!653566))))))))

(declare-fun lt!653564 () List!18741)

(assert (=> b!1710488 (= lt!653564 (list!7528 (_2!10601 (v!25011 lt!653566))))))

(declare-fun lt!653571 () List!18743)

(assert (=> b!1710488 (= lt!653571 (list!7532 (append!588 (BalanceConc!12367 Empty!6211) (_1!10601 (v!25011 lt!653566)))))))

(declare-fun lt!653585 () Unit!32499)

(declare-fun lemmaLexThenLexPrefix!285 (LexerInterface!2928 List!18742 List!18741 List!18741 List!18743 List!18743 List!18741) Unit!32499)

(assert (=> b!1710488 (= lt!653585 (lemmaLexThenLexPrefix!285 thiss!24550 rules!3447 lt!653595 lt!653564 lt!653571 (list!7532 (_1!10594 lt!653570)) (list!7528 (_2!10594 lt!653570))))))

(assert (=> b!1710488 (= (lexList!915 thiss!24550 rules!3447 lt!653595) (tuple2!18391 lt!653571 Nil!18671))))

(declare-fun lt!653569 () Unit!32499)

(assert (=> b!1710488 (= lt!653569 lt!653585)))

(declare-fun ++!5124 (BalanceConc!12364 BalanceConc!12364) BalanceConc!12364)

(assert (=> b!1710488 (= lt!653568 (++!5124 (BalanceConc!12365 Empty!6210) (charsOf!1948 (_1!10601 (v!25011 lt!653566)))))))

(assert (=> b!1710488 (= lt!653580 (maxPrefixZipperSequence!763 thiss!24550 rules!3447 lt!653568))))

(declare-fun c!280280 () Bool)

(assert (=> b!1710488 (= c!280280 ((_ is Some!3624) lt!653580))))

(assert (=> b!1710488 (= (lexRec!397 thiss!24550 rules!3447 (++!5124 (BalanceConc!12365 Empty!6210) (charsOf!1948 (_1!10601 (v!25011 lt!653566))))) e!1094015)))

(declare-fun lt!653573 () Unit!32499)

(declare-fun Unit!32506 () Unit!32499)

(assert (=> b!1710488 (= lt!653573 Unit!32506)))

(assert (=> b!1710488 (= lt!653587 (++!5124 (BalanceConc!12365 Empty!6210) (charsOf!1948 (_1!10601 (v!25011 lt!653566)))))))

(declare-fun lt!653592 () List!18741)

(assert (=> b!1710488 (= lt!653592 (list!7528 lt!653587))))

(declare-fun lt!653593 () List!18741)

(assert (=> b!1710488 (= lt!653593 (list!7528 (_2!10601 (v!25011 lt!653566))))))

(declare-fun lt!653578 () Unit!32499)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!344 (List!18741 List!18741) Unit!32499)

(assert (=> b!1710488 (= lt!653578 (lemmaConcatTwoListThenFSndIsSuffix!344 lt!653592 lt!653593))))

(declare-fun isSuffix!443 (List!18741 List!18741) Bool)

(assert (=> b!1710488 (isSuffix!443 lt!653593 (++!5120 lt!653592 lt!653593))))

(declare-fun lt!653586 () Unit!32499)

(assert (=> b!1710488 (= lt!653586 lt!653578)))

(declare-fun b!1710489 () Bool)

(assert (=> b!1710489 (= e!1094014 (tuple2!18385 (BalanceConc!12367 Empty!6211) (seqFromList!2275 lt!653165)))))

(declare-fun d!524776 () Bool)

(assert (=> d!524776 e!1094017))

(declare-fun res!766790 () Bool)

(assert (=> d!524776 (=> (not res!766790) (not e!1094017))))

(assert (=> d!524776 (= res!766790 (= (list!7532 (_1!10594 lt!653588)) (list!7532 (_1!10594 (lexRec!397 thiss!24550 rules!3447 (seqFromList!2275 lt!653165))))))))

(assert (=> d!524776 (= lt!653588 e!1094014)))

(declare-fun c!280281 () Bool)

(assert (=> d!524776 (= c!280281 ((_ is Some!3624) lt!653566))))

(declare-fun maxPrefixZipperSequenceV2!292 (LexerInterface!2928 List!18742 BalanceConc!12364 BalanceConc!12364) Option!3625)

(assert (=> d!524776 (= lt!653566 (maxPrefixZipperSequenceV2!292 thiss!24550 rules!3447 (seqFromList!2275 lt!653165) (seqFromList!2275 lt!653165)))))

(declare-fun lt!653567 () Unit!32499)

(declare-fun lt!653563 () Unit!32499)

(assert (=> d!524776 (= lt!653567 lt!653563)))

(declare-fun lt!653579 () List!18741)

(declare-fun lt!653582 () List!18741)

(assert (=> d!524776 (isSuffix!443 lt!653579 (++!5120 lt!653582 lt!653579))))

(assert (=> d!524776 (= lt!653563 (lemmaConcatTwoListThenFSndIsSuffix!344 lt!653582 lt!653579))))

(assert (=> d!524776 (= lt!653579 (list!7528 (seqFromList!2275 lt!653165)))))

(assert (=> d!524776 (= lt!653582 (list!7528 (BalanceConc!12365 Empty!6210)))))

(assert (=> d!524776 (= (lexTailRecV2!638 thiss!24550 rules!3447 (seqFromList!2275 lt!653165) (BalanceConc!12365 Empty!6210) (seqFromList!2275 lt!653165) (BalanceConc!12367 Empty!6211)) lt!653588)))

(declare-fun b!1710483 () Bool)

(assert (=> b!1710483 (= e!1094016 (tuple2!18385 (BalanceConc!12367 Empty!6211) (seqFromList!2275 lt!653165)))))

(assert (= (and d!524776 c!280281) b!1710488))

(assert (= (and d!524776 (not c!280281)) b!1710489))

(assert (= (and b!1710488 c!280282) b!1710487))

(assert (= (and b!1710488 (not c!280282)) b!1710483))

(assert (= (and b!1710488 c!280280) b!1710484))

(assert (= (and b!1710488 (not c!280280)) b!1710485))

(assert (= (and d!524776 res!766790) b!1710486))

(declare-fun m!2113723 () Bool)

(assert (=> b!1710487 m!2113723))

(declare-fun m!2113725 () Bool)

(assert (=> b!1710487 m!2113725))

(declare-fun m!2113727 () Bool)

(assert (=> b!1710488 m!2113727))

(declare-fun m!2113729 () Bool)

(assert (=> b!1710488 m!2113729))

(declare-fun m!2113731 () Bool)

(assert (=> b!1710488 m!2113731))

(declare-fun m!2113733 () Bool)

(assert (=> b!1710488 m!2113733))

(declare-fun m!2113735 () Bool)

(assert (=> b!1710488 m!2113735))

(assert (=> b!1710488 m!2113729))

(declare-fun m!2113737 () Bool)

(assert (=> b!1710488 m!2113737))

(declare-fun m!2113739 () Bool)

(assert (=> b!1710488 m!2113739))

(declare-fun m!2113741 () Bool)

(assert (=> b!1710488 m!2113741))

(declare-fun m!2113743 () Bool)

(assert (=> b!1710488 m!2113743))

(declare-fun m!2113745 () Bool)

(assert (=> b!1710488 m!2113745))

(declare-fun m!2113747 () Bool)

(assert (=> b!1710488 m!2113747))

(assert (=> b!1710488 m!2113745))

(declare-fun m!2113749 () Bool)

(assert (=> b!1710488 m!2113749))

(declare-fun m!2113751 () Bool)

(assert (=> b!1710488 m!2113751))

(declare-fun m!2113753 () Bool)

(assert (=> b!1710488 m!2113753))

(declare-fun m!2113755 () Bool)

(assert (=> b!1710488 m!2113755))

(assert (=> b!1710488 m!2113755))

(declare-fun m!2113757 () Bool)

(assert (=> b!1710488 m!2113757))

(declare-fun m!2113759 () Bool)

(assert (=> b!1710488 m!2113759))

(assert (=> b!1710488 m!2113735))

(declare-fun m!2113761 () Bool)

(assert (=> b!1710488 m!2113761))

(assert (=> b!1710488 m!2113735))

(declare-fun m!2113763 () Bool)

(assert (=> b!1710488 m!2113763))

(declare-fun m!2113765 () Bool)

(assert (=> b!1710488 m!2113765))

(declare-fun m!2113768 () Bool)

(assert (=> b!1710488 m!2113768))

(declare-fun m!2113771 () Bool)

(assert (=> b!1710488 m!2113771))

(declare-fun m!2113773 () Bool)

(assert (=> b!1710488 m!2113773))

(assert (=> b!1710488 m!2112657))

(declare-fun m!2113775 () Bool)

(assert (=> b!1710488 m!2113775))

(assert (=> b!1710488 m!2113743))

(declare-fun m!2113777 () Bool)

(assert (=> b!1710488 m!2113777))

(declare-fun m!2113779 () Bool)

(assert (=> b!1710488 m!2113779))

(assert (=> b!1710488 m!2113749))

(assert (=> b!1710488 m!2113741))

(declare-fun m!2113781 () Bool)

(assert (=> b!1710488 m!2113781))

(assert (=> b!1710488 m!2113739))

(assert (=> b!1710488 m!2113761))

(declare-fun m!2113783 () Bool)

(assert (=> b!1710488 m!2113783))

(assert (=> b!1710488 m!2113757))

(assert (=> b!1710488 m!2113763))

(declare-fun m!2113785 () Bool)

(assert (=> b!1710488 m!2113785))

(declare-fun m!2113787 () Bool)

(assert (=> b!1710488 m!2113787))

(declare-fun m!2113789 () Bool)

(assert (=> b!1710488 m!2113789))

(assert (=> b!1710488 m!2112657))

(declare-fun m!2113791 () Bool)

(assert (=> b!1710488 m!2113791))

(assert (=> b!1710488 m!2112657))

(assert (=> b!1710488 m!2113729))

(declare-fun m!2113793 () Bool)

(assert (=> b!1710488 m!2113793))

(assert (=> b!1710488 m!2113765))

(declare-fun m!2113795 () Bool)

(assert (=> b!1710486 m!2113795))

(assert (=> b!1710486 m!2112657))

(assert (=> b!1710486 m!2113791))

(declare-fun m!2113797 () Bool)

(assert (=> b!1710486 m!2113797))

(declare-fun m!2113801 () Bool)

(assert (=> d!524776 m!2113801))

(declare-fun m!2113803 () Bool)

(assert (=> d!524776 m!2113803))

(declare-fun m!2113805 () Bool)

(assert (=> d!524776 m!2113805))

(declare-fun m!2113807 () Bool)

(assert (=> d!524776 m!2113807))

(assert (=> d!524776 m!2112657))

(assert (=> d!524776 m!2112657))

(declare-fun m!2113809 () Bool)

(assert (=> d!524776 m!2113809))

(declare-fun m!2113811 () Bool)

(assert (=> d!524776 m!2113811))

(assert (=> d!524776 m!2112657))

(assert (=> d!524776 m!2113791))

(assert (=> d!524776 m!2113805))

(assert (=> d!524776 m!2112657))

(assert (=> d!524776 m!2113033))

(assert (=> d!524776 m!2113739))

(declare-fun m!2113813 () Bool)

(assert (=> b!1710484 m!2113813))

(declare-fun m!2113815 () Bool)

(assert (=> b!1710484 m!2113815))

(assert (=> d!524586 d!524776))

(declare-fun d!524842 () Bool)

(declare-fun nullableFct!322 (Regex!4627) Bool)

(assert (=> d!524842 (= (nullable!1388 (regex!3299 rule!422)) (nullableFct!322 (regex!3299 rule!422)))))

(declare-fun bs!401732 () Bool)

(assert (= bs!401732 d!524842))

(declare-fun m!2113821 () Bool)

(assert (=> bs!401732 m!2113821))

(assert (=> b!1710025 d!524842))

(declare-fun d!524848 () Bool)

(declare-fun charsToInt!0 (List!18740) (_ BitVec 32))

(assert (=> d!524848 (= (inv!16 (value!103694 token!523)) (= (charsToInt!0 (text!24170 (value!103694 token!523))) (value!103685 (value!103694 token!523))))))

(declare-fun bs!401733 () Bool)

(assert (= bs!401733 d!524848))

(declare-fun m!2113823 () Bool)

(assert (=> bs!401733 m!2113823))

(assert (=> b!1709986 d!524848))

(declare-fun b!1710496 () Bool)

(declare-fun res!766794 () Bool)

(declare-fun e!1094021 () Bool)

(assert (=> b!1710496 (=> (not res!766794) (not e!1094021))))

(declare-fun lt!653599 () List!18741)

(assert (=> b!1710496 (= res!766794 (= (size!14846 lt!653599) (+ (size!14846 (list!7528 (charsOf!1948 (_1!10595 (get!5492 lt!653261))))) (size!14846 (_2!10595 (get!5492 lt!653261))))))))

(declare-fun d!524850 () Bool)

(assert (=> d!524850 e!1094021))

(declare-fun res!766793 () Bool)

(assert (=> d!524850 (=> (not res!766793) (not e!1094021))))

(assert (=> d!524850 (= res!766793 (= (content!2653 lt!653599) ((_ map or) (content!2653 (list!7528 (charsOf!1948 (_1!10595 (get!5492 lt!653261))))) (content!2653 (_2!10595 (get!5492 lt!653261))))))))

(declare-fun e!1094022 () List!18741)

(assert (=> d!524850 (= lt!653599 e!1094022)))

(declare-fun c!280283 () Bool)

(assert (=> d!524850 (= c!280283 ((_ is Nil!18671) (list!7528 (charsOf!1948 (_1!10595 (get!5492 lt!653261))))))))

(assert (=> d!524850 (= (++!5120 (list!7528 (charsOf!1948 (_1!10595 (get!5492 lt!653261)))) (_2!10595 (get!5492 lt!653261))) lt!653599)))

(declare-fun b!1710497 () Bool)

(assert (=> b!1710497 (= e!1094021 (or (not (= (_2!10595 (get!5492 lt!653261)) Nil!18671)) (= lt!653599 (list!7528 (charsOf!1948 (_1!10595 (get!5492 lt!653261)))))))))

(declare-fun b!1710495 () Bool)

(assert (=> b!1710495 (= e!1094022 (Cons!18671 (h!24072 (list!7528 (charsOf!1948 (_1!10595 (get!5492 lt!653261))))) (++!5120 (t!158184 (list!7528 (charsOf!1948 (_1!10595 (get!5492 lt!653261))))) (_2!10595 (get!5492 lt!653261)))))))

(declare-fun b!1710494 () Bool)

(assert (=> b!1710494 (= e!1094022 (_2!10595 (get!5492 lt!653261)))))

(assert (= (and d!524850 c!280283) b!1710494))

(assert (= (and d!524850 (not c!280283)) b!1710495))

(assert (= (and d!524850 res!766793) b!1710496))

(assert (= (and b!1710496 res!766794) b!1710497))

(declare-fun m!2113825 () Bool)

(assert (=> b!1710496 m!2113825))

(assert (=> b!1710496 m!2113091))

(declare-fun m!2113827 () Bool)

(assert (=> b!1710496 m!2113827))

(assert (=> b!1710496 m!2113099))

(declare-fun m!2113829 () Bool)

(assert (=> d!524850 m!2113829))

(assert (=> d!524850 m!2113091))

(declare-fun m!2113831 () Bool)

(assert (=> d!524850 m!2113831))

(declare-fun m!2113833 () Bool)

(assert (=> d!524850 m!2113833))

(declare-fun m!2113835 () Bool)

(assert (=> b!1710495 m!2113835))

(assert (=> b!1709969 d!524850))

(declare-fun d!524852 () Bool)

(assert (=> d!524852 (= (list!7528 (charsOf!1948 (_1!10595 (get!5492 lt!653261)))) (list!7531 (c!280096 (charsOf!1948 (_1!10595 (get!5492 lt!653261))))))))

(declare-fun bs!401736 () Bool)

(assert (= bs!401736 d!524852))

(declare-fun m!2113837 () Bool)

(assert (=> bs!401736 m!2113837))

(assert (=> b!1709969 d!524852))

(declare-fun d!524854 () Bool)

(declare-fun lt!653601 () BalanceConc!12364)

(assert (=> d!524854 (= (list!7528 lt!653601) (originalCharacters!4113 (_1!10595 (get!5492 lt!653261))))))

(assert (=> d!524854 (= lt!653601 (dynLambda!8485 (toChars!4657 (transformation!3299 (rule!5233 (_1!10595 (get!5492 lt!653261))))) (value!103694 (_1!10595 (get!5492 lt!653261)))))))

(assert (=> d!524854 (= (charsOf!1948 (_1!10595 (get!5492 lt!653261))) lt!653601)))

(declare-fun b_lambda!53981 () Bool)

(assert (=> (not b_lambda!53981) (not d!524854)))

(declare-fun tb!100959 () Bool)

(declare-fun t!158267 () Bool)

(assert (=> (and b!1709647 (= (toChars!4657 (transformation!3299 rule!422)) (toChars!4657 (transformation!3299 (rule!5233 (_1!10595 (get!5492 lt!653261)))))) t!158267) tb!100959))

(declare-fun b!1710502 () Bool)

(declare-fun e!1094026 () Bool)

(declare-fun tp!488736 () Bool)

(assert (=> b!1710502 (= e!1094026 (and (inv!24087 (c!280096 (dynLambda!8485 (toChars!4657 (transformation!3299 (rule!5233 (_1!10595 (get!5492 lt!653261))))) (value!103694 (_1!10595 (get!5492 lt!653261)))))) tp!488736))))

(declare-fun result!121306 () Bool)

(assert (=> tb!100959 (= result!121306 (and (inv!24088 (dynLambda!8485 (toChars!4657 (transformation!3299 (rule!5233 (_1!10595 (get!5492 lt!653261))))) (value!103694 (_1!10595 (get!5492 lt!653261))))) e!1094026))))

(assert (= tb!100959 b!1710502))

(declare-fun m!2113843 () Bool)

(assert (=> b!1710502 m!2113843))

(declare-fun m!2113845 () Bool)

(assert (=> tb!100959 m!2113845))

(assert (=> d!524854 t!158267))

(declare-fun b_and!123853 () Bool)

(assert (= b_and!123821 (and (=> t!158267 result!121306) b_and!123853)))

(declare-fun tb!100961 () Bool)

(declare-fun t!158269 () Bool)

(assert (=> (and b!1709657 (= (toChars!4657 (transformation!3299 (h!24073 rules!3447))) (toChars!4657 (transformation!3299 (rule!5233 (_1!10595 (get!5492 lt!653261)))))) t!158269) tb!100961))

(declare-fun result!121308 () Bool)

(assert (= result!121308 result!121306))

(assert (=> d!524854 t!158269))

(declare-fun b_and!123855 () Bool)

(assert (= b_and!123823 (and (=> t!158269 result!121308) b_and!123855)))

(declare-fun tb!100963 () Bool)

(declare-fun t!158271 () Bool)

(assert (=> (and b!1709650 (= (toChars!4657 (transformation!3299 (rule!5233 token!523))) (toChars!4657 (transformation!3299 (rule!5233 (_1!10595 (get!5492 lt!653261)))))) t!158271) tb!100963))

(declare-fun result!121310 () Bool)

(assert (= result!121310 result!121306))

(assert (=> d!524854 t!158271))

(declare-fun b_and!123857 () Bool)

(assert (= b_and!123825 (and (=> t!158271 result!121310) b_and!123857)))

(declare-fun tb!100965 () Bool)

(declare-fun t!158273 () Bool)

(assert (=> (and b!1710072 (= (toChars!4657 (transformation!3299 (h!24073 (t!158185 rules!3447)))) (toChars!4657 (transformation!3299 (rule!5233 (_1!10595 (get!5492 lt!653261)))))) t!158273) tb!100965))

(declare-fun result!121312 () Bool)

(assert (= result!121312 result!121306))

(assert (=> d!524854 t!158273))

(declare-fun b_and!123859 () Bool)

(assert (= b_and!123827 (and (=> t!158273 result!121312) b_and!123859)))

(declare-fun m!2113849 () Bool)

(assert (=> d!524854 m!2113849))

(declare-fun m!2113851 () Bool)

(assert (=> d!524854 m!2113851))

(assert (=> b!1709969 d!524854))

(assert (=> b!1709969 d!524768))

(declare-fun d!524864 () Bool)

(declare-fun lt!653609 () Int)

(assert (=> d!524864 (>= lt!653609 0)))

(declare-fun e!1094030 () Int)

(assert (=> d!524864 (= lt!653609 e!1094030)))

(declare-fun c!280285 () Bool)

(assert (=> d!524864 (= c!280285 ((_ is Nil!18671) lt!653232))))

(assert (=> d!524864 (= (size!14846 lt!653232) lt!653609)))

(declare-fun b!1710512 () Bool)

(assert (=> b!1710512 (= e!1094030 0)))

(declare-fun b!1710513 () Bool)

(assert (=> b!1710513 (= e!1094030 (+ 1 (size!14846 (t!158184 lt!653232))))))

(assert (= (and d!524864 c!280285) b!1710512))

(assert (= (and d!524864 (not c!280285)) b!1710513))

(declare-fun m!2113853 () Bool)

(assert (=> b!1710513 m!2113853))

(assert (=> b!1709835 d!524864))

(assert (=> b!1709835 d!524762))

(declare-fun d!524866 () Bool)

(declare-fun lt!653610 () Int)

(assert (=> d!524866 (>= lt!653610 0)))

(declare-fun e!1094031 () Int)

(assert (=> d!524866 (= lt!653610 e!1094031)))

(declare-fun c!280286 () Bool)

(assert (=> d!524866 (= c!280286 ((_ is Nil!18671) (Cons!18671 (head!3832 suffix!1421) Nil!18671)))))

(assert (=> d!524866 (= (size!14846 (Cons!18671 (head!3832 suffix!1421) Nil!18671)) lt!653610)))

(declare-fun b!1710514 () Bool)

(assert (=> b!1710514 (= e!1094031 0)))

(declare-fun b!1710515 () Bool)

(assert (=> b!1710515 (= e!1094031 (+ 1 (size!14846 (t!158184 (Cons!18671 (head!3832 suffix!1421) Nil!18671)))))))

(assert (= (and d!524866 c!280286) b!1710514))

(assert (= (and d!524866 (not c!280286)) b!1710515))

(declare-fun m!2113855 () Bool)

(assert (=> b!1710515 m!2113855))

(assert (=> b!1709835 d!524866))

(declare-fun d!524868 () Bool)

(assert (=> d!524868 (= (head!3832 lt!653165) (h!24072 lt!653165))))

(assert (=> b!1710029 d!524868))

(declare-fun d!524870 () Bool)

(declare-fun lt!653613 () Int)

(assert (=> d!524870 (= lt!653613 (size!14846 (list!7528 (_2!10594 lt!653252))))))

(declare-fun size!14856 (Conc!6210) Int)

(assert (=> d!524870 (= lt!653613 (size!14856 (c!280096 (_2!10594 lt!653252))))))

(assert (=> d!524870 (= (size!14847 (_2!10594 lt!653252)) lt!653613)))

(declare-fun bs!401738 () Bool)

(assert (= bs!401738 d!524870))

(assert (=> bs!401738 m!2113031))

(assert (=> bs!401738 m!2113031))

(declare-fun m!2113877 () Bool)

(assert (=> bs!401738 m!2113877))

(declare-fun m!2113881 () Bool)

(assert (=> bs!401738 m!2113881))

(assert (=> b!1709944 d!524870))

(declare-fun d!524872 () Bool)

(declare-fun lt!653614 () Int)

(assert (=> d!524872 (= lt!653614 (size!14846 (list!7528 (seqFromList!2275 lt!653165))))))

(assert (=> d!524872 (= lt!653614 (size!14856 (c!280096 (seqFromList!2275 lt!653165))))))

(assert (=> d!524872 (= (size!14847 (seqFromList!2275 lt!653165)) lt!653614)))

(declare-fun bs!401739 () Bool)

(assert (= bs!401739 d!524872))

(assert (=> bs!401739 m!2112657))

(assert (=> bs!401739 m!2113033))

(assert (=> bs!401739 m!2113033))

(assert (=> bs!401739 m!2113243))

(declare-fun m!2113887 () Bool)

(assert (=> bs!401739 m!2113887))

(assert (=> b!1709944 d!524872))

(declare-fun d!524876 () Bool)

(assert (=> d!524876 (= (isEmpty!11726 (tail!2549 lt!653165)) ((_ is Nil!18671) (tail!2549 lt!653165)))))

(assert (=> b!1710027 d!524876))

(declare-fun d!524878 () Bool)

(assert (=> d!524878 (= (tail!2549 lt!653165) (t!158184 lt!653165))))

(assert (=> b!1710027 d!524878))

(declare-fun d!524880 () Bool)

(assert (=> d!524880 (= (isEmpty!11730 lt!653261) (not ((_ is Some!3622) lt!653261)))))

(assert (=> d!524612 d!524880))

(declare-fun b!1710522 () Bool)

(declare-fun e!1094037 () Bool)

(assert (=> b!1710522 (= e!1094037 (isPrefix!1540 (tail!2549 lt!653166) (tail!2549 lt!653166)))))

(declare-fun d!524882 () Bool)

(declare-fun e!1094035 () Bool)

(assert (=> d!524882 e!1094035))

(declare-fun res!766813 () Bool)

(assert (=> d!524882 (=> res!766813 e!1094035)))

(declare-fun lt!653616 () Bool)

(assert (=> d!524882 (= res!766813 (not lt!653616))))

(declare-fun e!1094036 () Bool)

(assert (=> d!524882 (= lt!653616 e!1094036)))

(declare-fun res!766812 () Bool)

(assert (=> d!524882 (=> res!766812 e!1094036)))

(assert (=> d!524882 (= res!766812 ((_ is Nil!18671) lt!653166))))

(assert (=> d!524882 (= (isPrefix!1540 lt!653166 lt!653166) lt!653616)))

(declare-fun b!1710523 () Bool)

(assert (=> b!1710523 (= e!1094035 (>= (size!14846 lt!653166) (size!14846 lt!653166)))))

(declare-fun b!1710521 () Bool)

(declare-fun res!766811 () Bool)

(assert (=> b!1710521 (=> (not res!766811) (not e!1094037))))

(assert (=> b!1710521 (= res!766811 (= (head!3832 lt!653166) (head!3832 lt!653166)))))

(declare-fun b!1710520 () Bool)

(assert (=> b!1710520 (= e!1094036 e!1094037)))

(declare-fun res!766810 () Bool)

(assert (=> b!1710520 (=> (not res!766810) (not e!1094037))))

(assert (=> b!1710520 (= res!766810 (not ((_ is Nil!18671) lt!653166)))))

(assert (= (and d!524882 (not res!766812)) b!1710520))

(assert (= (and b!1710520 res!766810) b!1710521))

(assert (= (and b!1710521 res!766811) b!1710522))

(assert (= (and d!524882 (not res!766813)) b!1710523))

(assert (=> b!1710522 m!2113047))

(assert (=> b!1710522 m!2113047))

(assert (=> b!1710522 m!2113047))

(assert (=> b!1710522 m!2113047))

(declare-fun m!2113903 () Bool)

(assert (=> b!1710522 m!2113903))

(assert (=> b!1710523 m!2113051))

(assert (=> b!1710523 m!2113051))

(assert (=> b!1710521 m!2113055))

(assert (=> b!1710521 m!2113055))

(assert (=> d!524612 d!524882))

(declare-fun d!524886 () Bool)

(assert (=> d!524886 (isPrefix!1540 lt!653166 lt!653166)))

(declare-fun lt!653623 () Unit!32499)

(declare-fun choose!10380 (List!18741 List!18741) Unit!32499)

(assert (=> d!524886 (= lt!653623 (choose!10380 lt!653166 lt!653166))))

(assert (=> d!524886 (= (lemmaIsPrefixRefl!1051 lt!653166 lt!653166) lt!653623)))

(declare-fun bs!401742 () Bool)

(assert (= bs!401742 d!524886))

(assert (=> bs!401742 m!2113075))

(declare-fun m!2113919 () Bool)

(assert (=> bs!401742 m!2113919))

(assert (=> d!524612 d!524886))

(declare-fun d!524898 () Bool)

(assert (=> d!524898 true))

(declare-fun lt!653626 () Bool)

(declare-fun lambda!68828 () Int)

(declare-fun forall!4246 (List!18742 Int) Bool)

(assert (=> d!524898 (= lt!653626 (forall!4246 rules!3447 lambda!68828))))

(declare-fun e!1094051 () Bool)

(assert (=> d!524898 (= lt!653626 e!1094051)))

(declare-fun res!766825 () Bool)

(assert (=> d!524898 (=> res!766825 e!1094051)))

(assert (=> d!524898 (= res!766825 (not ((_ is Cons!18672) rules!3447)))))

(assert (=> d!524898 (= (rulesValidInductive!1086 thiss!24550 rules!3447) lt!653626)))

(declare-fun b!1710542 () Bool)

(declare-fun e!1094052 () Bool)

(assert (=> b!1710542 (= e!1094051 e!1094052)))

(declare-fun res!766824 () Bool)

(assert (=> b!1710542 (=> (not res!766824) (not e!1094052))))

(assert (=> b!1710542 (= res!766824 (ruleValid!798 thiss!24550 (h!24073 rules!3447)))))

(declare-fun b!1710543 () Bool)

(assert (=> b!1710543 (= e!1094052 (rulesValidInductive!1086 thiss!24550 (t!158185 rules!3447)))))

(assert (= (and d!524898 (not res!766825)) b!1710542))

(assert (= (and b!1710542 res!766824) b!1710543))

(declare-fun m!2113927 () Bool)

(assert (=> d!524898 m!2113927))

(assert (=> b!1710542 m!2113431))

(declare-fun m!2113929 () Bool)

(assert (=> b!1710543 m!2113929))

(assert (=> d!524612 d!524898))

(declare-fun d!524904 () Bool)

(declare-fun charsToBigInt!0 (List!18740 Int) Int)

(assert (=> d!524904 (= (inv!15 (value!103694 token!523)) (= (charsToBigInt!0 (text!24172 (value!103694 token!523)) 0) (value!103689 (value!103694 token!523))))))

(declare-fun bs!401748 () Bool)

(assert (= bs!401748 d!524904))

(declare-fun m!2113939 () Bool)

(assert (=> bs!401748 m!2113939))

(assert (=> b!1709988 d!524904))

(assert (=> b!1709958 d!524868))

(declare-fun d!524912 () Bool)

(assert (=> d!524912 (= (head!3832 lt!653166) (h!24072 lt!653166))))

(assert (=> b!1709958 d!524912))

(declare-fun d!524914 () Bool)

(declare-fun e!1094057 () Bool)

(assert (=> d!524914 e!1094057))

(declare-fun res!766830 () Bool)

(assert (=> d!524914 (=> res!766830 e!1094057)))

(declare-fun lt!653629 () Option!3623)

(assert (=> d!524914 (= res!766830 (isEmpty!11730 lt!653629))))

(declare-fun e!1094056 () Option!3623)

(assert (=> d!524914 (= lt!653629 e!1094056)))

(declare-fun c!280293 () Bool)

(assert (=> d!524914 (= c!280293 (and ((_ is Cons!18672) (t!158185 rules!3447)) ((_ is Nil!18672) (t!158185 (t!158185 rules!3447)))))))

(declare-fun lt!653628 () Unit!32499)

(declare-fun lt!653632 () Unit!32499)

(assert (=> d!524914 (= lt!653628 lt!653632)))

(assert (=> d!524914 (isPrefix!1540 lt!653165 lt!653165)))

(assert (=> d!524914 (= lt!653632 (lemmaIsPrefixRefl!1051 lt!653165 lt!653165))))

(assert (=> d!524914 (rulesValidInductive!1086 thiss!24550 (t!158185 rules!3447))))

(assert (=> d!524914 (= (maxPrefix!1482 thiss!24550 (t!158185 rules!3447) lt!653165) lt!653629)))

(declare-fun b!1710551 () Bool)

(declare-fun res!766833 () Bool)

(declare-fun e!1094058 () Bool)

(assert (=> b!1710551 (=> (not res!766833) (not e!1094058))))

(assert (=> b!1710551 (= res!766833 (matchR!2101 (regex!3299 (rule!5233 (_1!10595 (get!5492 lt!653629)))) (list!7528 (charsOf!1948 (_1!10595 (get!5492 lt!653629))))))))

(declare-fun b!1710552 () Bool)

(declare-fun res!766832 () Bool)

(assert (=> b!1710552 (=> (not res!766832) (not e!1094058))))

(assert (=> b!1710552 (= res!766832 (= (value!103694 (_1!10595 (get!5492 lt!653629))) (apply!5110 (transformation!3299 (rule!5233 (_1!10595 (get!5492 lt!653629)))) (seqFromList!2275 (originalCharacters!4113 (_1!10595 (get!5492 lt!653629)))))))))

(declare-fun b!1710553 () Bool)

(declare-fun res!766831 () Bool)

(assert (=> b!1710553 (=> (not res!766831) (not e!1094058))))

(assert (=> b!1710553 (= res!766831 (= (list!7528 (charsOf!1948 (_1!10595 (get!5492 lt!653629)))) (originalCharacters!4113 (_1!10595 (get!5492 lt!653629)))))))

(declare-fun b!1710554 () Bool)

(declare-fun call!109435 () Option!3623)

(assert (=> b!1710554 (= e!1094056 call!109435)))

(declare-fun bm!109430 () Bool)

(assert (=> bm!109430 (= call!109435 (maxPrefixOneRule!866 thiss!24550 (h!24073 (t!158185 rules!3447)) lt!653165))))

(declare-fun b!1710555 () Bool)

(declare-fun res!766827 () Bool)

(assert (=> b!1710555 (=> (not res!766827) (not e!1094058))))

(assert (=> b!1710555 (= res!766827 (= (++!5120 (list!7528 (charsOf!1948 (_1!10595 (get!5492 lt!653629)))) (_2!10595 (get!5492 lt!653629))) lt!653165))))

(declare-fun b!1710556 () Bool)

(declare-fun res!766828 () Bool)

(assert (=> b!1710556 (=> (not res!766828) (not e!1094058))))

(assert (=> b!1710556 (= res!766828 (< (size!14846 (_2!10595 (get!5492 lt!653629))) (size!14846 lt!653165)))))

(declare-fun b!1710557 () Bool)

(assert (=> b!1710557 (= e!1094058 (contains!3317 (t!158185 rules!3447) (rule!5233 (_1!10595 (get!5492 lt!653629)))))))

(declare-fun b!1710558 () Bool)

(declare-fun lt!653630 () Option!3623)

(declare-fun lt!653631 () Option!3623)

(assert (=> b!1710558 (= e!1094056 (ite (and ((_ is None!3622) lt!653630) ((_ is None!3622) lt!653631)) None!3622 (ite ((_ is None!3622) lt!653631) lt!653630 (ite ((_ is None!3622) lt!653630) lt!653631 (ite (>= (size!14842 (_1!10595 (v!25007 lt!653630))) (size!14842 (_1!10595 (v!25007 lt!653631)))) lt!653630 lt!653631)))))))

(assert (=> b!1710558 (= lt!653630 call!109435)))

(assert (=> b!1710558 (= lt!653631 (maxPrefix!1482 thiss!24550 (t!158185 (t!158185 rules!3447)) lt!653165))))

(declare-fun b!1710559 () Bool)

(assert (=> b!1710559 (= e!1094057 e!1094058)))

(declare-fun res!766829 () Bool)

(assert (=> b!1710559 (=> (not res!766829) (not e!1094058))))

(assert (=> b!1710559 (= res!766829 (isDefined!2968 lt!653629))))

(assert (= (and d!524914 c!280293) b!1710554))

(assert (= (and d!524914 (not c!280293)) b!1710558))

(assert (= (or b!1710554 b!1710558) bm!109430))

(assert (= (and d!524914 (not res!766830)) b!1710559))

(assert (= (and b!1710559 res!766829) b!1710553))

(assert (= (and b!1710553 res!766831) b!1710556))

(assert (= (and b!1710556 res!766828) b!1710555))

(assert (= (and b!1710555 res!766827) b!1710552))

(assert (= (and b!1710552 res!766832) b!1710551))

(assert (= (and b!1710551 res!766833) b!1710557))

(declare-fun m!2113945 () Bool)

(assert (=> d!524914 m!2113945))

(assert (=> d!524914 m!2112855))

(assert (=> d!524914 m!2112857))

(assert (=> d!524914 m!2113929))

(declare-fun m!2113947 () Bool)

(assert (=> bm!109430 m!2113947))

(declare-fun m!2113949 () Bool)

(assert (=> b!1710557 m!2113949))

(declare-fun m!2113951 () Bool)

(assert (=> b!1710557 m!2113951))

(assert (=> b!1710552 m!2113949))

(declare-fun m!2113953 () Bool)

(assert (=> b!1710552 m!2113953))

(assert (=> b!1710552 m!2113953))

(declare-fun m!2113955 () Bool)

(assert (=> b!1710552 m!2113955))

(assert (=> b!1710553 m!2113949))

(declare-fun m!2113957 () Bool)

(assert (=> b!1710553 m!2113957))

(assert (=> b!1710553 m!2113957))

(declare-fun m!2113959 () Bool)

(assert (=> b!1710553 m!2113959))

(assert (=> b!1710555 m!2113949))

(assert (=> b!1710555 m!2113957))

(assert (=> b!1710555 m!2113957))

(assert (=> b!1710555 m!2113959))

(assert (=> b!1710555 m!2113959))

(declare-fun m!2113961 () Bool)

(assert (=> b!1710555 m!2113961))

(assert (=> b!1710551 m!2113949))

(assert (=> b!1710551 m!2113957))

(assert (=> b!1710551 m!2113957))

(assert (=> b!1710551 m!2113959))

(assert (=> b!1710551 m!2113959))

(declare-fun m!2113963 () Bool)

(assert (=> b!1710551 m!2113963))

(declare-fun m!2113965 () Bool)

(assert (=> b!1710559 m!2113965))

(assert (=> b!1710556 m!2113949))

(declare-fun m!2113967 () Bool)

(assert (=> b!1710556 m!2113967))

(assert (=> b!1710556 m!2112883))

(declare-fun m!2113969 () Bool)

(assert (=> b!1710558 m!2113969))

(assert (=> b!1709809 d!524914))

(declare-fun bs!401754 () Bool)

(declare-fun d!524922 () Bool)

(assert (= bs!401754 (and d!524922 d!524696)))

(declare-fun lambda!68831 () Int)

(assert (=> bs!401754 (= (= (toValue!4798 (transformation!3299 (rule!5233 token!523))) (toValue!4798 (transformation!3299 (h!24073 rules!3447)))) (= lambda!68831 lambda!68814))))

(assert (=> d!524922 true))

(assert (=> d!524922 (< (dynLambda!8489 order!11253 (toValue!4798 (transformation!3299 (rule!5233 token!523)))) (dynLambda!8491 order!11255 lambda!68831))))

(assert (=> d!524922 (= (equivClasses!1242 (toChars!4657 (transformation!3299 (rule!5233 token!523))) (toValue!4798 (transformation!3299 (rule!5233 token!523)))) (Forall2!550 lambda!68831))))

(declare-fun bs!401755 () Bool)

(assert (= bs!401755 d!524922))

(declare-fun m!2113971 () Bool)

(assert (=> bs!401755 m!2113971))

(assert (=> b!1709974 d!524922))

(declare-fun b!1710567 () Bool)

(declare-fun e!1094071 () Bool)

(assert (=> b!1710567 (= e!1094071 (nullable!1388 (derivativeStep!1156 (regex!3299 rule!422) (head!3832 lt!653165))))))

(declare-fun b!1710568 () Bool)

(declare-fun e!1094070 () Bool)

(declare-fun lt!653633 () Bool)

(declare-fun call!109436 () Bool)

(assert (=> b!1710568 (= e!1094070 (= lt!653633 call!109436))))

(declare-fun b!1710569 () Bool)

(declare-fun res!766840 () Bool)

(declare-fun e!1094065 () Bool)

(assert (=> b!1710569 (=> (not res!766840) (not e!1094065))))

(assert (=> b!1710569 (= res!766840 (isEmpty!11726 (tail!2549 (tail!2549 lt!653165))))))

(declare-fun b!1710570 () Bool)

(declare-fun e!1094069 () Bool)

(assert (=> b!1710570 (= e!1094070 e!1094069)))

(declare-fun c!280296 () Bool)

(assert (=> b!1710570 (= c!280296 ((_ is EmptyLang!4627) (derivativeStep!1156 (regex!3299 rule!422) (head!3832 lt!653165))))))

(declare-fun b!1710571 () Bool)

(declare-fun e!1094067 () Bool)

(assert (=> b!1710571 (= e!1094067 (not (= (head!3832 (tail!2549 lt!653165)) (c!280095 (derivativeStep!1156 (regex!3299 rule!422) (head!3832 lt!653165))))))))

(declare-fun b!1710572 () Bool)

(assert (=> b!1710572 (= e!1094065 (= (head!3832 (tail!2549 lt!653165)) (c!280095 (derivativeStep!1156 (regex!3299 rule!422) (head!3832 lt!653165)))))))

(declare-fun b!1710573 () Bool)

(assert (=> b!1710573 (= e!1094071 (matchR!2101 (derivativeStep!1156 (derivativeStep!1156 (regex!3299 rule!422) (head!3832 lt!653165)) (head!3832 (tail!2549 lt!653165))) (tail!2549 (tail!2549 lt!653165))))))

(declare-fun bm!109431 () Bool)

(assert (=> bm!109431 (= call!109436 (isEmpty!11726 (tail!2549 lt!653165)))))

(declare-fun b!1710566 () Bool)

(declare-fun res!766845 () Bool)

(assert (=> b!1710566 (=> res!766845 e!1094067)))

(assert (=> b!1710566 (= res!766845 (not (isEmpty!11726 (tail!2549 (tail!2549 lt!653165)))))))

(declare-fun d!524924 () Bool)

(assert (=> d!524924 e!1094070))

(declare-fun c!280294 () Bool)

(assert (=> d!524924 (= c!280294 ((_ is EmptyExpr!4627) (derivativeStep!1156 (regex!3299 rule!422) (head!3832 lt!653165))))))

(assert (=> d!524924 (= lt!653633 e!1094071)))

(declare-fun c!280295 () Bool)

(assert (=> d!524924 (= c!280295 (isEmpty!11726 (tail!2549 lt!653165)))))

(assert (=> d!524924 (validRegex!1862 (derivativeStep!1156 (regex!3299 rule!422) (head!3832 lt!653165)))))

(assert (=> d!524924 (= (matchR!2101 (derivativeStep!1156 (regex!3299 rule!422) (head!3832 lt!653165)) (tail!2549 lt!653165)) lt!653633)))

(declare-fun b!1710574 () Bool)

(declare-fun res!766844 () Bool)

(declare-fun e!1094068 () Bool)

(assert (=> b!1710574 (=> res!766844 e!1094068)))

(assert (=> b!1710574 (= res!766844 (not ((_ is ElementMatch!4627) (derivativeStep!1156 (regex!3299 rule!422) (head!3832 lt!653165)))))))

(assert (=> b!1710574 (= e!1094069 e!1094068)))

(declare-fun b!1710575 () Bool)

(declare-fun e!1094066 () Bool)

(assert (=> b!1710575 (= e!1094066 e!1094067)))

(declare-fun res!766842 () Bool)

(assert (=> b!1710575 (=> res!766842 e!1094067)))

(assert (=> b!1710575 (= res!766842 call!109436)))

(declare-fun b!1710576 () Bool)

(declare-fun res!766846 () Bool)

(assert (=> b!1710576 (=> res!766846 e!1094068)))

(assert (=> b!1710576 (= res!766846 e!1094065)))

(declare-fun res!766847 () Bool)

(assert (=> b!1710576 (=> (not res!766847) (not e!1094065))))

(assert (=> b!1710576 (= res!766847 lt!653633)))

(declare-fun b!1710577 () Bool)

(assert (=> b!1710577 (= e!1094068 e!1094066)))

(declare-fun res!766841 () Bool)

(assert (=> b!1710577 (=> (not res!766841) (not e!1094066))))

(assert (=> b!1710577 (= res!766841 (not lt!653633))))

(declare-fun b!1710578 () Bool)

(assert (=> b!1710578 (= e!1094069 (not lt!653633))))

(declare-fun b!1710579 () Bool)

(declare-fun res!766843 () Bool)

(assert (=> b!1710579 (=> (not res!766843) (not e!1094065))))

(assert (=> b!1710579 (= res!766843 (not call!109436))))

(assert (= (and d!524924 c!280295) b!1710567))

(assert (= (and d!524924 (not c!280295)) b!1710573))

(assert (= (and d!524924 c!280294) b!1710568))

(assert (= (and d!524924 (not c!280294)) b!1710570))

(assert (= (and b!1710570 c!280296) b!1710578))

(assert (= (and b!1710570 (not c!280296)) b!1710574))

(assert (= (and b!1710574 (not res!766844)) b!1710576))

(assert (= (and b!1710576 res!766847) b!1710579))

(assert (= (and b!1710579 res!766843) b!1710569))

(assert (= (and b!1710569 res!766840) b!1710572))

(assert (= (and b!1710576 (not res!766846)) b!1710577))

(assert (= (and b!1710577 res!766841) b!1710575))

(assert (= (and b!1710575 (not res!766842)) b!1710566))

(assert (= (and b!1710566 (not res!766845)) b!1710571))

(assert (= (or b!1710568 b!1710575 b!1710579) bm!109431))

(assert (=> b!1710569 m!2113045))

(declare-fun m!2113977 () Bool)

(assert (=> b!1710569 m!2113977))

(assert (=> b!1710569 m!2113977))

(declare-fun m!2113979 () Bool)

(assert (=> b!1710569 m!2113979))

(assert (=> b!1710567 m!2113127))

(declare-fun m!2113981 () Bool)

(assert (=> b!1710567 m!2113981))

(assert (=> d!524924 m!2113045))

(assert (=> d!524924 m!2113119))

(assert (=> d!524924 m!2113127))

(declare-fun m!2113983 () Bool)

(assert (=> d!524924 m!2113983))

(assert (=> b!1710571 m!2113045))

(declare-fun m!2113985 () Bool)

(assert (=> b!1710571 m!2113985))

(assert (=> b!1710573 m!2113045))

(assert (=> b!1710573 m!2113985))

(assert (=> b!1710573 m!2113127))

(assert (=> b!1710573 m!2113985))

(declare-fun m!2113987 () Bool)

(assert (=> b!1710573 m!2113987))

(assert (=> b!1710573 m!2113045))

(assert (=> b!1710573 m!2113977))

(assert (=> b!1710573 m!2113987))

(assert (=> b!1710573 m!2113977))

(declare-fun m!2113989 () Bool)

(assert (=> b!1710573 m!2113989))

(assert (=> b!1710566 m!2113045))

(assert (=> b!1710566 m!2113977))

(assert (=> b!1710566 m!2113977))

(assert (=> b!1710566 m!2113979))

(assert (=> bm!109431 m!2113045))

(assert (=> bm!109431 m!2113119))

(assert (=> b!1710572 m!2113045))

(assert (=> b!1710572 m!2113985))

(assert (=> b!1710031 d!524924))

(declare-fun bm!109432 () Bool)

(declare-fun call!109437 () Regex!4627)

(declare-fun call!109440 () Regex!4627)

(assert (=> bm!109432 (= call!109437 call!109440)))

(declare-fun call!109439 () Regex!4627)

(declare-fun b!1710580 () Bool)

(declare-fun call!109438 () Regex!4627)

(declare-fun e!1094076 () Regex!4627)

(assert (=> b!1710580 (= e!1094076 (Union!4627 (Concat!8017 call!109438 (regTwo!9766 (regex!3299 rule!422))) call!109439))))

(declare-fun b!1710581 () Bool)

(declare-fun c!280299 () Bool)

(assert (=> b!1710581 (= c!280299 ((_ is Union!4627) (regex!3299 rule!422)))))

(declare-fun e!1094074 () Regex!4627)

(declare-fun e!1094075 () Regex!4627)

(assert (=> b!1710581 (= e!1094074 e!1094075)))

(declare-fun b!1710582 () Bool)

(declare-fun c!280297 () Bool)

(assert (=> b!1710582 (= c!280297 (nullable!1388 (regOne!9766 (regex!3299 rule!422))))))

(declare-fun e!1094073 () Regex!4627)

(assert (=> b!1710582 (= e!1094073 e!1094076)))

(declare-fun c!280298 () Bool)

(declare-fun bm!109433 () Bool)

(assert (=> bm!109433 (= call!109440 (derivativeStep!1156 (ite c!280299 (regTwo!9767 (regex!3299 rule!422)) (ite c!280298 (reg!4956 (regex!3299 rule!422)) (ite c!280297 (regTwo!9766 (regex!3299 rule!422)) (regOne!9766 (regex!3299 rule!422))))) (head!3832 lt!653165)))))

(declare-fun b!1710583 () Bool)

(declare-fun e!1094072 () Regex!4627)

(assert (=> b!1710583 (= e!1094072 EmptyLang!4627)))

(declare-fun bm!109434 () Bool)

(assert (=> bm!109434 (= call!109438 (derivativeStep!1156 (ite c!280299 (regOne!9767 (regex!3299 rule!422)) (regOne!9766 (regex!3299 rule!422))) (head!3832 lt!653165)))))

(declare-fun d!524928 () Bool)

(declare-fun lt!653634 () Regex!4627)

(assert (=> d!524928 (validRegex!1862 lt!653634)))

(assert (=> d!524928 (= lt!653634 e!1094072)))

(declare-fun c!280300 () Bool)

(assert (=> d!524928 (= c!280300 (or ((_ is EmptyExpr!4627) (regex!3299 rule!422)) ((_ is EmptyLang!4627) (regex!3299 rule!422))))))

(assert (=> d!524928 (validRegex!1862 (regex!3299 rule!422))))

(assert (=> d!524928 (= (derivativeStep!1156 (regex!3299 rule!422) (head!3832 lt!653165)) lt!653634)))

(declare-fun b!1710584 () Bool)

(assert (=> b!1710584 (= e!1094074 (ite (= (head!3832 lt!653165) (c!280095 (regex!3299 rule!422))) EmptyExpr!4627 EmptyLang!4627))))

(declare-fun b!1710585 () Bool)

(assert (=> b!1710585 (= e!1094076 (Union!4627 (Concat!8017 call!109439 (regTwo!9766 (regex!3299 rule!422))) EmptyLang!4627))))

(declare-fun b!1710586 () Bool)

(assert (=> b!1710586 (= e!1094075 e!1094073)))

(assert (=> b!1710586 (= c!280298 ((_ is Star!4627) (regex!3299 rule!422)))))

(declare-fun b!1710587 () Bool)

(assert (=> b!1710587 (= e!1094075 (Union!4627 call!109438 call!109440))))

(declare-fun b!1710588 () Bool)

(assert (=> b!1710588 (= e!1094072 e!1094074)))

(declare-fun c!280301 () Bool)

(assert (=> b!1710588 (= c!280301 ((_ is ElementMatch!4627) (regex!3299 rule!422)))))

(declare-fun bm!109435 () Bool)

(assert (=> bm!109435 (= call!109439 call!109437)))

(declare-fun b!1710589 () Bool)

(assert (=> b!1710589 (= e!1094073 (Concat!8017 call!109437 (regex!3299 rule!422)))))

(assert (= (and d!524928 c!280300) b!1710583))

(assert (= (and d!524928 (not c!280300)) b!1710588))

(assert (= (and b!1710588 c!280301) b!1710584))

(assert (= (and b!1710588 (not c!280301)) b!1710581))

(assert (= (and b!1710581 c!280299) b!1710587))

(assert (= (and b!1710581 (not c!280299)) b!1710586))

(assert (= (and b!1710586 c!280298) b!1710589))

(assert (= (and b!1710586 (not c!280298)) b!1710582))

(assert (= (and b!1710582 c!280297) b!1710580))

(assert (= (and b!1710582 (not c!280297)) b!1710585))

(assert (= (or b!1710580 b!1710585) bm!109435))

(assert (= (or b!1710589 bm!109435) bm!109432))

(assert (= (or b!1710587 bm!109432) bm!109433))

(assert (= (or b!1710587 b!1710580) bm!109434))

(declare-fun m!2113991 () Bool)

(assert (=> b!1710582 m!2113991))

(assert (=> bm!109433 m!2113053))

(declare-fun m!2113993 () Bool)

(assert (=> bm!109433 m!2113993))

(assert (=> bm!109434 m!2113053))

(declare-fun m!2113995 () Bool)

(assert (=> bm!109434 m!2113995))

(declare-fun m!2113997 () Bool)

(assert (=> d!524928 m!2113997))

(assert (=> d!524928 m!2113125))

(assert (=> b!1710031 d!524928))

(assert (=> b!1710031 d!524868))

(assert (=> b!1710031 d!524878))

(declare-fun d!524930 () Bool)

(assert (=> d!524930 (= (list!7532 (_1!10594 lt!653252)) (list!7534 (c!280097 (_1!10594 lt!653252))))))

(declare-fun bs!401756 () Bool)

(assert (= bs!401756 d!524930))

(declare-fun m!2113999 () Bool)

(assert (=> bs!401756 m!2113999))

(assert (=> b!1709946 d!524930))

(assert (=> b!1709946 d!524670))

(assert (=> b!1709946 d!524682))

(declare-fun d!524932 () Bool)

(declare-fun lt!653637 () Int)

(assert (=> d!524932 (>= lt!653637 0)))

(declare-fun e!1094079 () Int)

(assert (=> d!524932 (= lt!653637 e!1094079)))

(declare-fun c!280303 () Bool)

(assert (=> d!524932 (= c!280303 ((_ is Nil!18671) lt!653256))))

(assert (=> d!524932 (= (size!14846 lt!653256) lt!653637)))

(declare-fun b!1710592 () Bool)

(assert (=> b!1710592 (= e!1094079 0)))

(declare-fun b!1710593 () Bool)

(assert (=> b!1710593 (= e!1094079 (+ 1 (size!14846 (t!158184 lt!653256))))))

(assert (= (and d!524932 c!280303) b!1710592))

(assert (= (and d!524932 (not c!280303)) b!1710593))

(declare-fun m!2114001 () Bool)

(assert (=> b!1710593 m!2114001))

(assert (=> b!1709963 d!524932))

(assert (=> b!1709963 d!524762))

(declare-fun d!524934 () Bool)

(declare-fun lt!653638 () Int)

(assert (=> d!524934 (>= lt!653638 0)))

(declare-fun e!1094080 () Int)

(assert (=> d!524934 (= lt!653638 e!1094080)))

(declare-fun c!280304 () Bool)

(assert (=> d!524934 (= c!280304 ((_ is Nil!18671) suffix!1421))))

(assert (=> d!524934 (= (size!14846 suffix!1421) lt!653638)))

(declare-fun b!1710594 () Bool)

(assert (=> b!1710594 (= e!1094080 0)))

(declare-fun b!1710595 () Bool)

(assert (=> b!1710595 (= e!1094080 (+ 1 (size!14846 (t!158184 suffix!1421))))))

(assert (= (and d!524934 c!280304) b!1710594))

(assert (= (and d!524934 (not c!280304)) b!1710595))

(declare-fun m!2114003 () Bool)

(assert (=> b!1710595 m!2114003))

(assert (=> b!1709963 d!524934))

(declare-fun d!524936 () Bool)

(declare-fun lt!653640 () Int)

(assert (=> d!524936 (>= lt!653640 0)))

(declare-fun e!1094082 () Int)

(assert (=> d!524936 (= lt!653640 e!1094082)))

(declare-fun c!280305 () Bool)

(assert (=> d!524936 (= c!280305 ((_ is Nil!18671) lt!653166))))

(assert (=> d!524936 (= (size!14846 lt!653166) lt!653640)))

(declare-fun b!1710597 () Bool)

(assert (=> b!1710597 (= e!1094082 0)))

(declare-fun b!1710598 () Bool)

(assert (=> b!1710598 (= e!1094082 (+ 1 (size!14846 (t!158184 lt!653166))))))

(assert (= (and d!524936 c!280305) b!1710597))

(assert (= (and d!524936 (not c!280305)) b!1710598))

(declare-fun m!2114005 () Bool)

(assert (=> b!1710598 m!2114005))

(assert (=> b!1709960 d!524936))

(assert (=> b!1709960 d!524762))

(declare-fun d!524938 () Bool)

(declare-fun lt!653641 () Bool)

(assert (=> d!524938 (= lt!653641 (select (content!2654 rules!3447) (rule!5233 (_1!10595 (get!5492 lt!653261)))))))

(declare-fun e!1094083 () Bool)

(assert (=> d!524938 (= lt!653641 e!1094083)))

(declare-fun res!766851 () Bool)

(assert (=> d!524938 (=> (not res!766851) (not e!1094083))))

(assert (=> d!524938 (= res!766851 ((_ is Cons!18672) rules!3447))))

(assert (=> d!524938 (= (contains!3317 rules!3447 (rule!5233 (_1!10595 (get!5492 lt!653261)))) lt!653641)))

(declare-fun b!1710599 () Bool)

(declare-fun e!1094084 () Bool)

(assert (=> b!1710599 (= e!1094083 e!1094084)))

(declare-fun res!766852 () Bool)

(assert (=> b!1710599 (=> res!766852 e!1094084)))

(assert (=> b!1710599 (= res!766852 (= (h!24073 rules!3447) (rule!5233 (_1!10595 (get!5492 lt!653261)))))))

(declare-fun b!1710600 () Bool)

(assert (=> b!1710600 (= e!1094084 (contains!3317 (t!158185 rules!3447) (rule!5233 (_1!10595 (get!5492 lt!653261)))))))

(assert (= (and d!524938 res!766851) b!1710599))

(assert (= (and b!1710599 (not res!766852)) b!1710600))

(assert (=> d!524938 m!2112935))

(declare-fun m!2114013 () Bool)

(assert (=> d!524938 m!2114013))

(declare-fun m!2114015 () Bool)

(assert (=> b!1710600 m!2114015))

(assert (=> b!1709971 d!524938))

(assert (=> b!1709971 d!524768))

(assert (=> d!524626 d!524624))

(declare-fun d!524944 () Bool)

(assert (=> d!524944 (ruleValid!798 thiss!24550 rule!422)))

(assert (=> d!524944 true))

(declare-fun _$65!915 () Unit!32499)

(assert (=> d!524944 (= (choose!10378 thiss!24550 rule!422 rules!3447) _$65!915)))

(declare-fun bs!401757 () Bool)

(assert (= bs!401757 d!524944))

(assert (=> bs!401757 m!2112705))

(assert (=> d!524626 d!524944))

(assert (=> d!524626 d!524578))

(declare-fun b!1710694 () Bool)

(declare-fun res!766883 () Bool)

(declare-fun e!1094133 () Bool)

(assert (=> b!1710694 (=> res!766883 e!1094133)))

(assert (=> b!1710694 (= res!766883 (not ((_ is Concat!8017) (regex!3299 rule!422))))))

(declare-fun e!1094131 () Bool)

(assert (=> b!1710694 (= e!1094131 e!1094133)))

(declare-fun b!1710695 () Bool)

(declare-fun e!1094132 () Bool)

(assert (=> b!1710695 (= e!1094132 e!1094131)))

(declare-fun c!280325 () Bool)

(assert (=> b!1710695 (= c!280325 ((_ is Union!4627) (regex!3299 rule!422)))))

(declare-fun bm!109448 () Bool)

(declare-fun call!109454 () Bool)

(declare-fun call!109455 () Bool)

(assert (=> bm!109448 (= call!109454 call!109455)))

(declare-fun b!1710696 () Bool)

(declare-fun e!1094134 () Bool)

(declare-fun call!109453 () Bool)

(assert (=> b!1710696 (= e!1094134 call!109453)))

(declare-fun b!1710697 () Bool)

(declare-fun e!1094130 () Bool)

(assert (=> b!1710697 (= e!1094130 e!1094132)))

(declare-fun c!280324 () Bool)

(assert (=> b!1710697 (= c!280324 ((_ is Star!4627) (regex!3299 rule!422)))))

(declare-fun bm!109450 () Bool)

(assert (=> bm!109450 (= call!109453 (validRegex!1862 (ite c!280325 (regTwo!9767 (regex!3299 rule!422)) (regOne!9766 (regex!3299 rule!422)))))))

(declare-fun b!1710698 () Bool)

(declare-fun e!1094135 () Bool)

(assert (=> b!1710698 (= e!1094133 e!1094135)))

(declare-fun res!766882 () Bool)

(assert (=> b!1710698 (=> (not res!766882) (not e!1094135))))

(assert (=> b!1710698 (= res!766882 call!109453)))

(declare-fun b!1710699 () Bool)

(declare-fun e!1094136 () Bool)

(assert (=> b!1710699 (= e!1094136 call!109455)))

(declare-fun b!1710700 () Bool)

(declare-fun res!766885 () Bool)

(assert (=> b!1710700 (=> (not res!766885) (not e!1094134))))

(assert (=> b!1710700 (= res!766885 call!109454)))

(assert (=> b!1710700 (= e!1094131 e!1094134)))

(declare-fun b!1710701 () Bool)

(assert (=> b!1710701 (= e!1094132 e!1094136)))

(declare-fun res!766881 () Bool)

(assert (=> b!1710701 (= res!766881 (not (nullable!1388 (reg!4956 (regex!3299 rule!422)))))))

(assert (=> b!1710701 (=> (not res!766881) (not e!1094136))))

(declare-fun b!1710702 () Bool)

(assert (=> b!1710702 (= e!1094135 call!109454)))

(declare-fun d!524946 () Bool)

(declare-fun res!766884 () Bool)

(assert (=> d!524946 (=> res!766884 e!1094130)))

(assert (=> d!524946 (= res!766884 ((_ is ElementMatch!4627) (regex!3299 rule!422)))))

(assert (=> d!524946 (= (validRegex!1862 (regex!3299 rule!422)) e!1094130)))

(declare-fun bm!109449 () Bool)

(assert (=> bm!109449 (= call!109455 (validRegex!1862 (ite c!280324 (reg!4956 (regex!3299 rule!422)) (ite c!280325 (regOne!9767 (regex!3299 rule!422)) (regTwo!9766 (regex!3299 rule!422))))))))

(assert (= (and d!524946 (not res!766884)) b!1710697))

(assert (= (and b!1710697 c!280324) b!1710701))

(assert (= (and b!1710697 (not c!280324)) b!1710695))

(assert (= (and b!1710701 res!766881) b!1710699))

(assert (= (and b!1710695 c!280325) b!1710700))

(assert (= (and b!1710695 (not c!280325)) b!1710694))

(assert (= (and b!1710700 res!766885) b!1710696))

(assert (= (and b!1710694 (not res!766883)) b!1710698))

(assert (= (and b!1710698 res!766882) b!1710702))

(assert (= (or b!1710700 b!1710702) bm!109448))

(assert (= (or b!1710696 b!1710698) bm!109450))

(assert (= (or b!1710699 bm!109448) bm!109449))

(declare-fun m!2114067 () Bool)

(assert (=> bm!109450 m!2114067))

(declare-fun m!2114069 () Bool)

(assert (=> b!1710701 m!2114069))

(declare-fun m!2114071 () Bool)

(assert (=> bm!109449 m!2114071))

(assert (=> d!524624 d!524946))

(declare-fun bs!401759 () Bool)

(declare-fun d!524958 () Bool)

(assert (= bs!401759 (and d!524958 d!524562)))

(declare-fun lambda!68836 () Int)

(assert (=> bs!401759 (= lambda!68836 lambda!68796)))

(declare-fun lambda!68837 () Int)

(declare-fun forall!4247 (List!18747 Int) Bool)

(assert (=> d!524958 (forall!4247 (map!3841 rules!3447 lambda!68836) lambda!68837)))

(declare-fun lt!653652 () Unit!32499)

(declare-fun e!1094159 () Unit!32499)

(assert (=> d!524958 (= lt!653652 e!1094159)))

(declare-fun c!280328 () Bool)

(assert (=> d!524958 (= c!280328 ((_ is Nil!18672) rules!3447))))

(assert (=> d!524958 (rulesValidInductive!1086 thiss!24550 rules!3447)))

(assert (=> d!524958 (= (lemma!312 rules!3447 thiss!24550 rules!3447) lt!653652)))

(declare-fun b!1710758 () Bool)

(declare-fun Unit!32507 () Unit!32499)

(assert (=> b!1710758 (= e!1094159 Unit!32507)))

(declare-fun b!1710759 () Bool)

(declare-fun Unit!32508 () Unit!32499)

(assert (=> b!1710759 (= e!1094159 Unit!32508)))

(declare-fun lt!653653 () Unit!32499)

(assert (=> b!1710759 (= lt!653653 (lemma!312 rules!3447 thiss!24550 (t!158185 rules!3447)))))

(assert (= (and d!524958 c!280328) b!1710758))

(assert (= (and d!524958 (not c!280328)) b!1710759))

(declare-fun m!2114083 () Bool)

(assert (=> d!524958 m!2114083))

(assert (=> d!524958 m!2114083))

(declare-fun m!2114085 () Bool)

(assert (=> d!524958 m!2114085))

(assert (=> d!524958 m!2112859))

(declare-fun m!2114087 () Bool)

(assert (=> b!1710759 m!2114087))

(assert (=> d!524562 d!524958))

(declare-fun bs!401760 () Bool)

(declare-fun d!524962 () Bool)

(assert (= bs!401760 (and d!524962 d!524958)))

(declare-fun lambda!68840 () Int)

(assert (=> bs!401760 (= lambda!68840 lambda!68837)))

(declare-fun b!1710780 () Bool)

(declare-fun e!1094176 () Regex!4627)

(assert (=> b!1710780 (= e!1094176 EmptyLang!4627)))

(declare-fun e!1094175 () Bool)

(assert (=> d!524962 e!1094175))

(declare-fun res!766891 () Bool)

(assert (=> d!524962 (=> (not res!766891) (not e!1094175))))

(declare-fun lt!653656 () Regex!4627)

(assert (=> d!524962 (= res!766891 (validRegex!1862 lt!653656))))

(declare-fun e!1094173 () Regex!4627)

(assert (=> d!524962 (= lt!653656 e!1094173)))

(declare-fun c!280340 () Bool)

(declare-fun e!1094174 () Bool)

(assert (=> d!524962 (= c!280340 e!1094174)))

(declare-fun res!766890 () Bool)

(assert (=> d!524962 (=> (not res!766890) (not e!1094174))))

(assert (=> d!524962 (= res!766890 ((_ is Cons!18677) (map!3841 rules!3447 lambda!68796)))))

(assert (=> d!524962 (forall!4247 (map!3841 rules!3447 lambda!68796) lambda!68840)))

(assert (=> d!524962 (= (generalisedUnion!320 (map!3841 rules!3447 lambda!68796)) lt!653656)))

(declare-fun b!1710781 () Bool)

(assert (=> b!1710781 (= e!1094173 (h!24078 (map!3841 rules!3447 lambda!68796)))))

(declare-fun b!1710782 () Bool)

(assert (=> b!1710782 (= e!1094173 e!1094176)))

(declare-fun c!280338 () Bool)

(assert (=> b!1710782 (= c!280338 ((_ is Cons!18677) (map!3841 rules!3447 lambda!68796)))))

(declare-fun b!1710783 () Bool)

(declare-fun e!1094177 () Bool)

(declare-fun isEmptyLang!93 (Regex!4627) Bool)

(assert (=> b!1710783 (= e!1094177 (isEmptyLang!93 lt!653656))))

(declare-fun e!1094172 () Bool)

(declare-fun b!1710784 () Bool)

(declare-fun head!3834 (List!18747) Regex!4627)

(assert (=> b!1710784 (= e!1094172 (= lt!653656 (head!3834 (map!3841 rules!3447 lambda!68796))))))

(declare-fun b!1710785 () Bool)

(declare-fun isUnion!93 (Regex!4627) Bool)

(assert (=> b!1710785 (= e!1094172 (isUnion!93 lt!653656))))

(declare-fun b!1710786 () Bool)

(assert (=> b!1710786 (= e!1094175 e!1094177)))

(declare-fun c!280339 () Bool)

(declare-fun isEmpty!11734 (List!18747) Bool)

(assert (=> b!1710786 (= c!280339 (isEmpty!11734 (map!3841 rules!3447 lambda!68796)))))

(declare-fun b!1710787 () Bool)

(assert (=> b!1710787 (= e!1094177 e!1094172)))

(declare-fun c!280337 () Bool)

(declare-fun tail!2551 (List!18747) List!18747)

(assert (=> b!1710787 (= c!280337 (isEmpty!11734 (tail!2551 (map!3841 rules!3447 lambda!68796))))))

(declare-fun b!1710788 () Bool)

(assert (=> b!1710788 (= e!1094176 (Union!4627 (h!24078 (map!3841 rules!3447 lambda!68796)) (generalisedUnion!320 (t!158206 (map!3841 rules!3447 lambda!68796)))))))

(declare-fun b!1710789 () Bool)

(assert (=> b!1710789 (= e!1094174 (isEmpty!11734 (t!158206 (map!3841 rules!3447 lambda!68796))))))

(assert (= (and d!524962 res!766890) b!1710789))

(assert (= (and d!524962 c!280340) b!1710781))

(assert (= (and d!524962 (not c!280340)) b!1710782))

(assert (= (and b!1710782 c!280338) b!1710788))

(assert (= (and b!1710782 (not c!280338)) b!1710780))

(assert (= (and d!524962 res!766891) b!1710786))

(assert (= (and b!1710786 c!280339) b!1710783))

(assert (= (and b!1710786 (not c!280339)) b!1710787))

(assert (= (and b!1710787 c!280337) b!1710784))

(assert (= (and b!1710787 (not c!280337)) b!1710785))

(assert (=> b!1710787 m!2112915))

(declare-fun m!2114089 () Bool)

(assert (=> b!1710787 m!2114089))

(assert (=> b!1710787 m!2114089))

(declare-fun m!2114091 () Bool)

(assert (=> b!1710787 m!2114091))

(declare-fun m!2114093 () Bool)

(assert (=> d!524962 m!2114093))

(assert (=> d!524962 m!2112915))

(declare-fun m!2114095 () Bool)

(assert (=> d!524962 m!2114095))

(assert (=> b!1710786 m!2112915))

(declare-fun m!2114097 () Bool)

(assert (=> b!1710786 m!2114097))

(declare-fun m!2114099 () Bool)

(assert (=> b!1710788 m!2114099))

(assert (=> b!1710784 m!2112915))

(declare-fun m!2114101 () Bool)

(assert (=> b!1710784 m!2114101))

(declare-fun m!2114103 () Bool)

(assert (=> b!1710785 m!2114103))

(declare-fun m!2114105 () Bool)

(assert (=> b!1710789 m!2114105))

(declare-fun m!2114107 () Bool)

(assert (=> b!1710783 m!2114107))

(assert (=> d!524562 d!524962))

(declare-fun d!524964 () Bool)

(declare-fun lt!653659 () List!18747)

(declare-fun size!14857 (List!18747) Int)

(declare-fun size!14858 (List!18742) Int)

(assert (=> d!524964 (= (size!14857 lt!653659) (size!14858 rules!3447))))

(declare-fun e!1094180 () List!18747)

(assert (=> d!524964 (= lt!653659 e!1094180)))

(declare-fun c!280343 () Bool)

(assert (=> d!524964 (= c!280343 ((_ is Nil!18672) rules!3447))))

(assert (=> d!524964 (= (map!3841 rules!3447 lambda!68796) lt!653659)))

(declare-fun b!1710794 () Bool)

(assert (=> b!1710794 (= e!1094180 Nil!18677)))

(declare-fun b!1710795 () Bool)

(declare-fun $colon$colon!424 (List!18747 Regex!4627) List!18747)

(declare-fun dynLambda!8497 (Int Rule!6398) Regex!4627)

(assert (=> b!1710795 (= e!1094180 ($colon$colon!424 (map!3841 (t!158185 rules!3447) lambda!68796) (dynLambda!8497 lambda!68796 (h!24073 rules!3447))))))

(assert (= (and d!524964 c!280343) b!1710794))

(assert (= (and d!524964 (not c!280343)) b!1710795))

(declare-fun b_lambda!53985 () Bool)

(assert (=> (not b_lambda!53985) (not b!1710795)))

(declare-fun m!2114109 () Bool)

(assert (=> d!524964 m!2114109))

(declare-fun m!2114111 () Bool)

(assert (=> d!524964 m!2114111))

(declare-fun m!2114113 () Bool)

(assert (=> b!1710795 m!2114113))

(declare-fun m!2114115 () Bool)

(assert (=> b!1710795 m!2114115))

(assert (=> b!1710795 m!2114113))

(assert (=> b!1710795 m!2114115))

(declare-fun m!2114117 () Bool)

(assert (=> b!1710795 m!2114117))

(assert (=> d!524562 d!524964))

(declare-fun d!524966 () Bool)

(assert (=> d!524966 (= (isEmpty!11726 (originalCharacters!4113 token!523)) ((_ is Nil!18671) (originalCharacters!4113 token!523)))))

(assert (=> d!524620 d!524966))

(declare-fun bs!401761 () Bool)

(declare-fun d!524968 () Bool)

(assert (= bs!401761 (and d!524968 d!524696)))

(declare-fun lambda!68841 () Int)

(assert (=> bs!401761 (= (= (toValue!4798 (transformation!3299 rule!422)) (toValue!4798 (transformation!3299 (h!24073 rules!3447)))) (= lambda!68841 lambda!68814))))

(declare-fun bs!401762 () Bool)

(assert (= bs!401762 (and d!524968 d!524922)))

(assert (=> bs!401762 (= (= (toValue!4798 (transformation!3299 rule!422)) (toValue!4798 (transformation!3299 (rule!5233 token!523)))) (= lambda!68841 lambda!68831))))

(assert (=> d!524968 true))

(assert (=> d!524968 (< (dynLambda!8489 order!11253 (toValue!4798 (transformation!3299 rule!422))) (dynLambda!8491 order!11255 lambda!68841))))

(assert (=> d!524968 (= (equivClasses!1242 (toChars!4657 (transformation!3299 rule!422)) (toValue!4798 (transformation!3299 rule!422))) (Forall2!550 lambda!68841))))

(declare-fun bs!401763 () Bool)

(assert (= bs!401763 d!524968))

(declare-fun m!2114119 () Bool)

(assert (=> bs!401763 m!2114119))

(assert (=> b!1709837 d!524968))

(declare-fun d!524970 () Bool)

(assert (=> d!524970 (= (isEmpty!11730 lt!653220) (not ((_ is Some!3622) lt!653220)))))

(assert (=> d!524526 d!524970))

(declare-fun b!1710798 () Bool)

(declare-fun e!1094183 () Bool)

(assert (=> b!1710798 (= e!1094183 (isPrefix!1540 (tail!2549 lt!653165) (tail!2549 lt!653165)))))

(declare-fun d!524972 () Bool)

(declare-fun e!1094181 () Bool)

(assert (=> d!524972 e!1094181))

(declare-fun res!766895 () Bool)

(assert (=> d!524972 (=> res!766895 e!1094181)))

(declare-fun lt!653660 () Bool)

(assert (=> d!524972 (= res!766895 (not lt!653660))))

(declare-fun e!1094182 () Bool)

(assert (=> d!524972 (= lt!653660 e!1094182)))

(declare-fun res!766894 () Bool)

(assert (=> d!524972 (=> res!766894 e!1094182)))

(assert (=> d!524972 (= res!766894 ((_ is Nil!18671) lt!653165))))

(assert (=> d!524972 (= (isPrefix!1540 lt!653165 lt!653165) lt!653660)))

(declare-fun b!1710799 () Bool)

(assert (=> b!1710799 (= e!1094181 (>= (size!14846 lt!653165) (size!14846 lt!653165)))))

(declare-fun b!1710797 () Bool)

(declare-fun res!766893 () Bool)

(assert (=> b!1710797 (=> (not res!766893) (not e!1094183))))

(assert (=> b!1710797 (= res!766893 (= (head!3832 lt!653165) (head!3832 lt!653165)))))

(declare-fun b!1710796 () Bool)

(assert (=> b!1710796 (= e!1094182 e!1094183)))

(declare-fun res!766892 () Bool)

(assert (=> b!1710796 (=> (not res!766892) (not e!1094183))))

(assert (=> b!1710796 (= res!766892 (not ((_ is Nil!18671) lt!653165)))))

(assert (= (and d!524972 (not res!766894)) b!1710796))

(assert (= (and b!1710796 res!766892) b!1710797))

(assert (= (and b!1710797 res!766893) b!1710798))

(assert (= (and d!524972 (not res!766895)) b!1710799))

(assert (=> b!1710798 m!2113045))

(assert (=> b!1710798 m!2113045))

(assert (=> b!1710798 m!2113045))

(assert (=> b!1710798 m!2113045))

(declare-fun m!2114121 () Bool)

(assert (=> b!1710798 m!2114121))

(assert (=> b!1710799 m!2112883))

(assert (=> b!1710799 m!2112883))

(assert (=> b!1710797 m!2113053))

(assert (=> b!1710797 m!2113053))

(assert (=> d!524526 d!524972))

(declare-fun d!524974 () Bool)

(assert (=> d!524974 (isPrefix!1540 lt!653165 lt!653165)))

(declare-fun lt!653661 () Unit!32499)

(assert (=> d!524974 (= lt!653661 (choose!10380 lt!653165 lt!653165))))

(assert (=> d!524974 (= (lemmaIsPrefixRefl!1051 lt!653165 lt!653165) lt!653661)))

(declare-fun bs!401764 () Bool)

(assert (= bs!401764 d!524974))

(assert (=> bs!401764 m!2112855))

(declare-fun m!2114123 () Bool)

(assert (=> bs!401764 m!2114123))

(assert (=> d!524526 d!524974))

(assert (=> d!524526 d!524898))

(declare-fun d!524976 () Bool)

(assert (=> d!524976 (= (inv!24080 (tag!3595 (h!24073 (t!158185 rules!3447)))) (= (mod (str.len (value!103693 (tag!3595 (h!24073 (t!158185 rules!3447))))) 2) 0))))

(assert (=> b!1710071 d!524976))

(declare-fun d!524978 () Bool)

(declare-fun res!766896 () Bool)

(declare-fun e!1094184 () Bool)

(assert (=> d!524978 (=> (not res!766896) (not e!1094184))))

(assert (=> d!524978 (= res!766896 (semiInverseModEq!1301 (toChars!4657 (transformation!3299 (h!24073 (t!158185 rules!3447)))) (toValue!4798 (transformation!3299 (h!24073 (t!158185 rules!3447))))))))

(assert (=> d!524978 (= (inv!24083 (transformation!3299 (h!24073 (t!158185 rules!3447)))) e!1094184)))

(declare-fun b!1710800 () Bool)

(assert (=> b!1710800 (= e!1094184 (equivClasses!1242 (toChars!4657 (transformation!3299 (h!24073 (t!158185 rules!3447)))) (toValue!4798 (transformation!3299 (h!24073 (t!158185 rules!3447))))))))

(assert (= (and d!524978 res!766896) b!1710800))

(declare-fun m!2114125 () Bool)

(assert (=> d!524978 m!2114125))

(declare-fun m!2114127 () Bool)

(assert (=> b!1710800 m!2114127))

(assert (=> b!1710071 d!524978))

(declare-fun d!524980 () Bool)

(declare-fun c!280346 () Bool)

(assert (=> d!524980 (= c!280346 ((_ is Nil!18671) lt!653232))))

(declare-fun e!1094187 () (InoxSet C!9428))

(assert (=> d!524980 (= (content!2653 lt!653232) e!1094187)))

(declare-fun b!1710805 () Bool)

(assert (=> b!1710805 (= e!1094187 ((as const (Array C!9428 Bool)) false))))

(declare-fun b!1710806 () Bool)

(assert (=> b!1710806 (= e!1094187 ((_ map or) (store ((as const (Array C!9428 Bool)) false) (h!24072 lt!653232) true) (content!2653 (t!158184 lt!653232))))))

(assert (= (and d!524980 c!280346) b!1710805))

(assert (= (and d!524980 (not c!280346)) b!1710806))

(declare-fun m!2114129 () Bool)

(assert (=> b!1710806 m!2114129))

(declare-fun m!2114131 () Bool)

(assert (=> b!1710806 m!2114131))

(assert (=> d!524564 d!524980))

(declare-fun d!524982 () Bool)

(declare-fun c!280347 () Bool)

(assert (=> d!524982 (= c!280347 ((_ is Nil!18671) lt!653165))))

(declare-fun e!1094188 () (InoxSet C!9428))

(assert (=> d!524982 (= (content!2653 lt!653165) e!1094188)))

(declare-fun b!1710807 () Bool)

(assert (=> b!1710807 (= e!1094188 ((as const (Array C!9428 Bool)) false))))

(declare-fun b!1710808 () Bool)

(assert (=> b!1710808 (= e!1094188 ((_ map or) (store ((as const (Array C!9428 Bool)) false) (h!24072 lt!653165) true) (content!2653 (t!158184 lt!653165))))))

(assert (= (and d!524982 c!280347) b!1710807))

(assert (= (and d!524982 (not c!280347)) b!1710808))

(declare-fun m!2114133 () Bool)

(assert (=> b!1710808 m!2114133))

(declare-fun m!2114135 () Bool)

(assert (=> b!1710808 m!2114135))

(assert (=> d!524564 d!524982))

(declare-fun d!524984 () Bool)

(declare-fun c!280348 () Bool)

(assert (=> d!524984 (= c!280348 ((_ is Nil!18671) (Cons!18671 (head!3832 suffix!1421) Nil!18671)))))

(declare-fun e!1094189 () (InoxSet C!9428))

(assert (=> d!524984 (= (content!2653 (Cons!18671 (head!3832 suffix!1421) Nil!18671)) e!1094189)))

(declare-fun b!1710809 () Bool)

(assert (=> b!1710809 (= e!1094189 ((as const (Array C!9428 Bool)) false))))

(declare-fun b!1710810 () Bool)

(assert (=> b!1710810 (= e!1094189 ((_ map or) (store ((as const (Array C!9428 Bool)) false) (h!24072 (Cons!18671 (head!3832 suffix!1421) Nil!18671)) true) (content!2653 (t!158184 (Cons!18671 (head!3832 suffix!1421) Nil!18671)))))))

(assert (= (and d!524984 c!280348) b!1710809))

(assert (= (and d!524984 (not c!280348)) b!1710810))

(declare-fun m!2114137 () Bool)

(assert (=> b!1710810 m!2114137))

(declare-fun m!2114139 () Bool)

(assert (=> b!1710810 m!2114139))

(assert (=> d!524564 d!524984))

(declare-fun d!524986 () Bool)

(declare-fun c!280351 () Bool)

(assert (=> d!524986 (= c!280351 ((_ is Node!6210) (c!280096 (dynLambda!8485 (toChars!4657 (transformation!3299 (rule!5233 token!523))) (value!103694 token!523)))))))

(declare-fun e!1094194 () Bool)

(assert (=> d!524986 (= (inv!24087 (c!280096 (dynLambda!8485 (toChars!4657 (transformation!3299 (rule!5233 token!523))) (value!103694 token!523)))) e!1094194)))

(declare-fun b!1710817 () Bool)

(declare-fun inv!24089 (Conc!6210) Bool)

(assert (=> b!1710817 (= e!1094194 (inv!24089 (c!280096 (dynLambda!8485 (toChars!4657 (transformation!3299 (rule!5233 token!523))) (value!103694 token!523)))))))

(declare-fun b!1710818 () Bool)

(declare-fun e!1094195 () Bool)

(assert (=> b!1710818 (= e!1094194 e!1094195)))

(declare-fun res!766899 () Bool)

(assert (=> b!1710818 (= res!766899 (not ((_ is Leaf!9080) (c!280096 (dynLambda!8485 (toChars!4657 (transformation!3299 (rule!5233 token!523))) (value!103694 token!523))))))))

(assert (=> b!1710818 (=> res!766899 e!1094195)))

(declare-fun b!1710819 () Bool)

(declare-fun inv!24090 (Conc!6210) Bool)

(assert (=> b!1710819 (= e!1094195 (inv!24090 (c!280096 (dynLambda!8485 (toChars!4657 (transformation!3299 (rule!5233 token!523))) (value!103694 token!523)))))))

(assert (= (and d!524986 c!280351) b!1710817))

(assert (= (and d!524986 (not c!280351)) b!1710818))

(assert (= (and b!1710818 (not res!766899)) b!1710819))

(declare-fun m!2114141 () Bool)

(assert (=> b!1710817 m!2114141))

(declare-fun m!2114143 () Bool)

(assert (=> b!1710819 m!2114143))

(assert (=> b!1709815 d!524986))

(declare-fun d!524988 () Bool)

(declare-fun e!1094198 () Bool)

(assert (=> d!524988 e!1094198))

(declare-fun res!766902 () Bool)

(assert (=> d!524988 (=> (not res!766902) (not e!1094198))))

(declare-fun lt!653664 () BalanceConc!12364)

(assert (=> d!524988 (= res!766902 (= (list!7528 lt!653664) lt!653165))))

(declare-fun fromList!435 (List!18741) Conc!6210)

(assert (=> d!524988 (= lt!653664 (BalanceConc!12365 (fromList!435 lt!653165)))))

(assert (=> d!524988 (= (fromListB!1047 lt!653165) lt!653664)))

(declare-fun b!1710822 () Bool)

(declare-fun isBalanced!1946 (Conc!6210) Bool)

(assert (=> b!1710822 (= e!1094198 (isBalanced!1946 (fromList!435 lt!653165)))))

(assert (= (and d!524988 res!766902) b!1710822))

(declare-fun m!2114145 () Bool)

(assert (=> d!524988 m!2114145))

(declare-fun m!2114147 () Bool)

(assert (=> d!524988 m!2114147))

(assert (=> b!1710822 m!2114147))

(assert (=> b!1710822 m!2114147))

(declare-fun m!2114149 () Bool)

(assert (=> b!1710822 m!2114149))

(assert (=> d!524610 d!524988))

(declare-fun d!524990 () Bool)

(assert (=> d!524990 (= (inv!24088 (dynLambda!8485 (toChars!4657 (transformation!3299 (rule!5233 token!523))) (value!103694 token!523))) (isBalanced!1946 (c!280096 (dynLambda!8485 (toChars!4657 (transformation!3299 (rule!5233 token!523))) (value!103694 token!523)))))))

(declare-fun bs!401765 () Bool)

(assert (= bs!401765 d!524990))

(declare-fun m!2114151 () Bool)

(assert (=> bs!401765 m!2114151))

(assert (=> tb!100887 d!524990))

(declare-fun d!524992 () Bool)

(declare-fun lostCauseFct!179 (Regex!4627) Bool)

(assert (=> d!524992 (= (lostCause!498 (rulesRegex!657 thiss!24550 rules!3447)) (lostCauseFct!179 (rulesRegex!657 thiss!24550 rules!3447)))))

(declare-fun bs!401766 () Bool)

(assert (= bs!401766 d!524992))

(assert (=> bs!401766 m!2112691))

(declare-fun m!2114153 () Bool)

(assert (=> bs!401766 m!2114153))

(assert (=> b!1709823 d!524992))

(declare-fun b!1710824 () Bool)

(declare-fun e!1094205 () Bool)

(assert (=> b!1710824 (= e!1094205 (nullable!1388 (regex!3299 (rule!5233 (_1!10595 (get!5492 lt!653220))))))))

(declare-fun b!1710825 () Bool)

(declare-fun e!1094204 () Bool)

(declare-fun lt!653665 () Bool)

(declare-fun call!109456 () Bool)

(assert (=> b!1710825 (= e!1094204 (= lt!653665 call!109456))))

(declare-fun b!1710826 () Bool)

(declare-fun res!766903 () Bool)

(declare-fun e!1094199 () Bool)

(assert (=> b!1710826 (=> (not res!766903) (not e!1094199))))

(assert (=> b!1710826 (= res!766903 (isEmpty!11726 (tail!2549 (list!7528 (charsOf!1948 (_1!10595 (get!5492 lt!653220)))))))))

(declare-fun b!1710827 () Bool)

(declare-fun e!1094203 () Bool)

(assert (=> b!1710827 (= e!1094204 e!1094203)))

(declare-fun c!280355 () Bool)

(assert (=> b!1710827 (= c!280355 ((_ is EmptyLang!4627) (regex!3299 (rule!5233 (_1!10595 (get!5492 lt!653220))))))))

(declare-fun b!1710828 () Bool)

(declare-fun e!1094201 () Bool)

(assert (=> b!1710828 (= e!1094201 (not (= (head!3832 (list!7528 (charsOf!1948 (_1!10595 (get!5492 lt!653220))))) (c!280095 (regex!3299 (rule!5233 (_1!10595 (get!5492 lt!653220))))))))))

(declare-fun b!1710829 () Bool)

(assert (=> b!1710829 (= e!1094199 (= (head!3832 (list!7528 (charsOf!1948 (_1!10595 (get!5492 lt!653220))))) (c!280095 (regex!3299 (rule!5233 (_1!10595 (get!5492 lt!653220)))))))))

(declare-fun b!1710830 () Bool)

(assert (=> b!1710830 (= e!1094205 (matchR!2101 (derivativeStep!1156 (regex!3299 (rule!5233 (_1!10595 (get!5492 lt!653220)))) (head!3832 (list!7528 (charsOf!1948 (_1!10595 (get!5492 lt!653220)))))) (tail!2549 (list!7528 (charsOf!1948 (_1!10595 (get!5492 lt!653220)))))))))

(declare-fun bm!109451 () Bool)

(assert (=> bm!109451 (= call!109456 (isEmpty!11726 (list!7528 (charsOf!1948 (_1!10595 (get!5492 lt!653220))))))))

(declare-fun b!1710823 () Bool)

(declare-fun res!766908 () Bool)

(assert (=> b!1710823 (=> res!766908 e!1094201)))

(assert (=> b!1710823 (= res!766908 (not (isEmpty!11726 (tail!2549 (list!7528 (charsOf!1948 (_1!10595 (get!5492 lt!653220))))))))))

(declare-fun d!524994 () Bool)

(assert (=> d!524994 e!1094204))

(declare-fun c!280353 () Bool)

(assert (=> d!524994 (= c!280353 ((_ is EmptyExpr!4627) (regex!3299 (rule!5233 (_1!10595 (get!5492 lt!653220))))))))

(assert (=> d!524994 (= lt!653665 e!1094205)))

(declare-fun c!280354 () Bool)

(assert (=> d!524994 (= c!280354 (isEmpty!11726 (list!7528 (charsOf!1948 (_1!10595 (get!5492 lt!653220))))))))

(assert (=> d!524994 (validRegex!1862 (regex!3299 (rule!5233 (_1!10595 (get!5492 lt!653220)))))))

(assert (=> d!524994 (= (matchR!2101 (regex!3299 (rule!5233 (_1!10595 (get!5492 lt!653220)))) (list!7528 (charsOf!1948 (_1!10595 (get!5492 lt!653220))))) lt!653665)))

(declare-fun b!1710831 () Bool)

(declare-fun res!766907 () Bool)

(declare-fun e!1094202 () Bool)

(assert (=> b!1710831 (=> res!766907 e!1094202)))

(assert (=> b!1710831 (= res!766907 (not ((_ is ElementMatch!4627) (regex!3299 (rule!5233 (_1!10595 (get!5492 lt!653220)))))))))

(assert (=> b!1710831 (= e!1094203 e!1094202)))

(declare-fun b!1710832 () Bool)

(declare-fun e!1094200 () Bool)

(assert (=> b!1710832 (= e!1094200 e!1094201)))

(declare-fun res!766905 () Bool)

(assert (=> b!1710832 (=> res!766905 e!1094201)))

(assert (=> b!1710832 (= res!766905 call!109456)))

(declare-fun b!1710833 () Bool)

(declare-fun res!766909 () Bool)

(assert (=> b!1710833 (=> res!766909 e!1094202)))

(assert (=> b!1710833 (= res!766909 e!1094199)))

(declare-fun res!766910 () Bool)

(assert (=> b!1710833 (=> (not res!766910) (not e!1094199))))

(assert (=> b!1710833 (= res!766910 lt!653665)))

(declare-fun b!1710834 () Bool)

(assert (=> b!1710834 (= e!1094202 e!1094200)))

(declare-fun res!766904 () Bool)

(assert (=> b!1710834 (=> (not res!766904) (not e!1094200))))

(assert (=> b!1710834 (= res!766904 (not lt!653665))))

(declare-fun b!1710835 () Bool)

(assert (=> b!1710835 (= e!1094203 (not lt!653665))))

(declare-fun b!1710836 () Bool)

(declare-fun res!766906 () Bool)

(assert (=> b!1710836 (=> (not res!766906) (not e!1094199))))

(assert (=> b!1710836 (= res!766906 (not call!109456))))

(assert (= (and d!524994 c!280354) b!1710824))

(assert (= (and d!524994 (not c!280354)) b!1710830))

(assert (= (and d!524994 c!280353) b!1710825))

(assert (= (and d!524994 (not c!280353)) b!1710827))

(assert (= (and b!1710827 c!280355) b!1710835))

(assert (= (and b!1710827 (not c!280355)) b!1710831))

(assert (= (and b!1710831 (not res!766907)) b!1710833))

(assert (= (and b!1710833 res!766910) b!1710836))

(assert (= (and b!1710836 res!766906) b!1710826))

(assert (= (and b!1710826 res!766903) b!1710829))

(assert (= (and b!1710833 (not res!766909)) b!1710834))

(assert (= (and b!1710834 res!766904) b!1710832))

(assert (= (and b!1710832 (not res!766905)) b!1710823))

(assert (= (and b!1710823 (not res!766908)) b!1710828))

(assert (= (or b!1710825 b!1710832 b!1710836) bm!109451))

(assert (=> b!1710826 m!2112873))

(declare-fun m!2114155 () Bool)

(assert (=> b!1710826 m!2114155))

(assert (=> b!1710826 m!2114155))

(declare-fun m!2114157 () Bool)

(assert (=> b!1710826 m!2114157))

(declare-fun m!2114159 () Bool)

(assert (=> b!1710824 m!2114159))

(assert (=> d!524994 m!2112873))

(declare-fun m!2114161 () Bool)

(assert (=> d!524994 m!2114161))

(declare-fun m!2114163 () Bool)

(assert (=> d!524994 m!2114163))

(assert (=> b!1710828 m!2112873))

(declare-fun m!2114165 () Bool)

(assert (=> b!1710828 m!2114165))

(assert (=> b!1710830 m!2112873))

(assert (=> b!1710830 m!2114165))

(assert (=> b!1710830 m!2114165))

(declare-fun m!2114167 () Bool)

(assert (=> b!1710830 m!2114167))

(assert (=> b!1710830 m!2112873))

(assert (=> b!1710830 m!2114155))

(assert (=> b!1710830 m!2114167))

(assert (=> b!1710830 m!2114155))

(declare-fun m!2114169 () Bool)

(assert (=> b!1710830 m!2114169))

(assert (=> b!1710823 m!2112873))

(assert (=> b!1710823 m!2114155))

(assert (=> b!1710823 m!2114155))

(assert (=> b!1710823 m!2114157))

(assert (=> bm!109451 m!2112873))

(assert (=> bm!109451 m!2114161))

(assert (=> b!1710829 m!2112873))

(assert (=> b!1710829 m!2114165))

(assert (=> b!1709802 d!524994))

(assert (=> b!1709802 d!524708))

(assert (=> b!1709802 d!524756))

(assert (=> b!1709802 d!524758))

(declare-fun bs!401767 () Bool)

(declare-fun d!524996 () Bool)

(assert (= bs!401767 (and d!524996 d!524898)))

(declare-fun lambda!68844 () Int)

(assert (=> bs!401767 (= lambda!68844 lambda!68828)))

(assert (=> d!524996 true))

(declare-fun lt!653668 () Bool)

(assert (=> d!524996 (= lt!653668 (rulesValidInductive!1086 thiss!24550 rules!3447))))

(assert (=> d!524996 (= lt!653668 (forall!4246 rules!3447 lambda!68844))))

(assert (=> d!524996 (= (rulesValid!1229 thiss!24550 rules!3447) lt!653668)))

(declare-fun bs!401768 () Bool)

(assert (= bs!401768 d!524996))

(assert (=> bs!401768 m!2112859))

(declare-fun m!2114171 () Bool)

(assert (=> bs!401768 m!2114171))

(assert (=> d!524556 d!524996))

(declare-fun b!1710838 () Bool)

(declare-fun e!1094212 () Bool)

(assert (=> b!1710838 (= e!1094212 (nullable!1388 (regex!3299 (rule!5233 (_1!10595 (get!5492 lt!653261))))))))

(declare-fun b!1710839 () Bool)

(declare-fun e!1094211 () Bool)

(declare-fun lt!653669 () Bool)

(declare-fun call!109457 () Bool)

(assert (=> b!1710839 (= e!1094211 (= lt!653669 call!109457))))

(declare-fun b!1710840 () Bool)

(declare-fun res!766911 () Bool)

(declare-fun e!1094206 () Bool)

(assert (=> b!1710840 (=> (not res!766911) (not e!1094206))))

(assert (=> b!1710840 (= res!766911 (isEmpty!11726 (tail!2549 (list!7528 (charsOf!1948 (_1!10595 (get!5492 lt!653261)))))))))

(declare-fun b!1710841 () Bool)

(declare-fun e!1094210 () Bool)

(assert (=> b!1710841 (= e!1094211 e!1094210)))

(declare-fun c!280358 () Bool)

(assert (=> b!1710841 (= c!280358 ((_ is EmptyLang!4627) (regex!3299 (rule!5233 (_1!10595 (get!5492 lt!653261))))))))

(declare-fun b!1710842 () Bool)

(declare-fun e!1094208 () Bool)

(assert (=> b!1710842 (= e!1094208 (not (= (head!3832 (list!7528 (charsOf!1948 (_1!10595 (get!5492 lt!653261))))) (c!280095 (regex!3299 (rule!5233 (_1!10595 (get!5492 lt!653261))))))))))

(declare-fun b!1710843 () Bool)

(assert (=> b!1710843 (= e!1094206 (= (head!3832 (list!7528 (charsOf!1948 (_1!10595 (get!5492 lt!653261))))) (c!280095 (regex!3299 (rule!5233 (_1!10595 (get!5492 lt!653261)))))))))

(declare-fun b!1710844 () Bool)

(assert (=> b!1710844 (= e!1094212 (matchR!2101 (derivativeStep!1156 (regex!3299 (rule!5233 (_1!10595 (get!5492 lt!653261)))) (head!3832 (list!7528 (charsOf!1948 (_1!10595 (get!5492 lt!653261)))))) (tail!2549 (list!7528 (charsOf!1948 (_1!10595 (get!5492 lt!653261)))))))))

(declare-fun bm!109452 () Bool)

(assert (=> bm!109452 (= call!109457 (isEmpty!11726 (list!7528 (charsOf!1948 (_1!10595 (get!5492 lt!653261))))))))

(declare-fun b!1710837 () Bool)

(declare-fun res!766916 () Bool)

(assert (=> b!1710837 (=> res!766916 e!1094208)))

(assert (=> b!1710837 (= res!766916 (not (isEmpty!11726 (tail!2549 (list!7528 (charsOf!1948 (_1!10595 (get!5492 lt!653261))))))))))

(declare-fun d!524998 () Bool)

(assert (=> d!524998 e!1094211))

(declare-fun c!280356 () Bool)

(assert (=> d!524998 (= c!280356 ((_ is EmptyExpr!4627) (regex!3299 (rule!5233 (_1!10595 (get!5492 lt!653261))))))))

(assert (=> d!524998 (= lt!653669 e!1094212)))

(declare-fun c!280357 () Bool)

(assert (=> d!524998 (= c!280357 (isEmpty!11726 (list!7528 (charsOf!1948 (_1!10595 (get!5492 lt!653261))))))))

(assert (=> d!524998 (validRegex!1862 (regex!3299 (rule!5233 (_1!10595 (get!5492 lt!653261)))))))

(assert (=> d!524998 (= (matchR!2101 (regex!3299 (rule!5233 (_1!10595 (get!5492 lt!653261)))) (list!7528 (charsOf!1948 (_1!10595 (get!5492 lt!653261))))) lt!653669)))

(declare-fun b!1710845 () Bool)

(declare-fun res!766915 () Bool)

(declare-fun e!1094209 () Bool)

(assert (=> b!1710845 (=> res!766915 e!1094209)))

(assert (=> b!1710845 (= res!766915 (not ((_ is ElementMatch!4627) (regex!3299 (rule!5233 (_1!10595 (get!5492 lt!653261)))))))))

(assert (=> b!1710845 (= e!1094210 e!1094209)))

(declare-fun b!1710846 () Bool)

(declare-fun e!1094207 () Bool)

(assert (=> b!1710846 (= e!1094207 e!1094208)))

(declare-fun res!766913 () Bool)

(assert (=> b!1710846 (=> res!766913 e!1094208)))

(assert (=> b!1710846 (= res!766913 call!109457)))

(declare-fun b!1710847 () Bool)

(declare-fun res!766917 () Bool)

(assert (=> b!1710847 (=> res!766917 e!1094209)))

(assert (=> b!1710847 (= res!766917 e!1094206)))

(declare-fun res!766918 () Bool)

(assert (=> b!1710847 (=> (not res!766918) (not e!1094206))))

(assert (=> b!1710847 (= res!766918 lt!653669)))

(declare-fun b!1710848 () Bool)

(assert (=> b!1710848 (= e!1094209 e!1094207)))

(declare-fun res!766912 () Bool)

(assert (=> b!1710848 (=> (not res!766912) (not e!1094207))))

(assert (=> b!1710848 (= res!766912 (not lt!653669))))

(declare-fun b!1710849 () Bool)

(assert (=> b!1710849 (= e!1094210 (not lt!653669))))

(declare-fun b!1710850 () Bool)

(declare-fun res!766914 () Bool)

(assert (=> b!1710850 (=> (not res!766914) (not e!1094206))))

(assert (=> b!1710850 (= res!766914 (not call!109457))))

(assert (= (and d!524998 c!280357) b!1710838))

(assert (= (and d!524998 (not c!280357)) b!1710844))

(assert (= (and d!524998 c!280356) b!1710839))

(assert (= (and d!524998 (not c!280356)) b!1710841))

(assert (= (and b!1710841 c!280358) b!1710849))

(assert (= (and b!1710841 (not c!280358)) b!1710845))

(assert (= (and b!1710845 (not res!766915)) b!1710847))

(assert (= (and b!1710847 res!766918) b!1710850))

(assert (= (and b!1710850 res!766914) b!1710840))

(assert (= (and b!1710840 res!766911) b!1710843))

(assert (= (and b!1710847 (not res!766917)) b!1710848))

(assert (= (and b!1710848 res!766912) b!1710846))

(assert (= (and b!1710846 (not res!766913)) b!1710837))

(assert (= (and b!1710837 (not res!766916)) b!1710842))

(assert (= (or b!1710839 b!1710846 b!1710850) bm!109452))

(assert (=> b!1710840 m!2113091))

(declare-fun m!2114173 () Bool)

(assert (=> b!1710840 m!2114173))

(assert (=> b!1710840 m!2114173))

(declare-fun m!2114175 () Bool)

(assert (=> b!1710840 m!2114175))

(declare-fun m!2114177 () Bool)

(assert (=> b!1710838 m!2114177))

(assert (=> d!524998 m!2113091))

(declare-fun m!2114179 () Bool)

(assert (=> d!524998 m!2114179))

(declare-fun m!2114181 () Bool)

(assert (=> d!524998 m!2114181))

(assert (=> b!1710842 m!2113091))

(declare-fun m!2114183 () Bool)

(assert (=> b!1710842 m!2114183))

(assert (=> b!1710844 m!2113091))

(assert (=> b!1710844 m!2114183))

(assert (=> b!1710844 m!2114183))

(declare-fun m!2114185 () Bool)

(assert (=> b!1710844 m!2114185))

(assert (=> b!1710844 m!2113091))

(assert (=> b!1710844 m!2114173))

(assert (=> b!1710844 m!2114185))

(assert (=> b!1710844 m!2114173))

(declare-fun m!2114187 () Bool)

(assert (=> b!1710844 m!2114187))

(assert (=> b!1710837 m!2113091))

(assert (=> b!1710837 m!2114173))

(assert (=> b!1710837 m!2114173))

(assert (=> b!1710837 m!2114175))

(assert (=> bm!109452 m!2113091))

(assert (=> bm!109452 m!2114179))

(assert (=> b!1710843 m!2113091))

(assert (=> b!1710843 m!2114183))

(assert (=> b!1709965 d!524998))

(assert (=> b!1709965 d!524768))

(assert (=> b!1709965 d!524852))

(assert (=> b!1709965 d!524854))

(assert (=> b!1710024 d!524876))

(assert (=> b!1710024 d!524878))

(declare-fun b!1710861 () Bool)

(declare-fun e!1094218 () List!18741)

(declare-fun list!7536 (IArray!12425) List!18741)

(assert (=> b!1710861 (= e!1094218 (list!7536 (xs!9086 (c!280096 (charsOf!1948 token!523)))))))

(declare-fun b!1710860 () Bool)

(declare-fun e!1094217 () List!18741)

(assert (=> b!1710860 (= e!1094217 e!1094218)))

(declare-fun c!280364 () Bool)

(assert (=> b!1710860 (= c!280364 ((_ is Leaf!9080) (c!280096 (charsOf!1948 token!523))))))

(declare-fun d!525000 () Bool)

(declare-fun c!280363 () Bool)

(assert (=> d!525000 (= c!280363 ((_ is Empty!6210) (c!280096 (charsOf!1948 token!523))))))

(assert (=> d!525000 (= (list!7531 (c!280096 (charsOf!1948 token!523))) e!1094217)))

(declare-fun b!1710862 () Bool)

(assert (=> b!1710862 (= e!1094218 (++!5120 (list!7531 (left!14889 (c!280096 (charsOf!1948 token!523)))) (list!7531 (right!15219 (c!280096 (charsOf!1948 token!523))))))))

(declare-fun b!1710859 () Bool)

(assert (=> b!1710859 (= e!1094217 Nil!18671)))

(assert (= (and d!525000 c!280363) b!1710859))

(assert (= (and d!525000 (not c!280363)) b!1710860))

(assert (= (and b!1710860 c!280364) b!1710861))

(assert (= (and b!1710860 (not c!280364)) b!1710862))

(declare-fun m!2114189 () Bool)

(assert (=> b!1710861 m!2114189))

(declare-fun m!2114191 () Bool)

(assert (=> b!1710862 m!2114191))

(declare-fun m!2114193 () Bool)

(assert (=> b!1710862 m!2114193))

(assert (=> b!1710862 m!2114191))

(assert (=> b!1710862 m!2114193))

(declare-fun m!2114195 () Bool)

(assert (=> b!1710862 m!2114195))

(assert (=> d!524552 d!525000))

(declare-fun d!525002 () Bool)

(declare-fun c!280365 () Bool)

(assert (=> d!525002 (= c!280365 ((_ is Nil!18671) lt!653256))))

(declare-fun e!1094219 () (InoxSet C!9428))

(assert (=> d!525002 (= (content!2653 lt!653256) e!1094219)))

(declare-fun b!1710863 () Bool)

(assert (=> b!1710863 (= e!1094219 ((as const (Array C!9428 Bool)) false))))

(declare-fun b!1710864 () Bool)

(assert (=> b!1710864 (= e!1094219 ((_ map or) (store ((as const (Array C!9428 Bool)) false) (h!24072 lt!653256) true) (content!2653 (t!158184 lt!653256))))))

(assert (= (and d!525002 c!280365) b!1710863))

(assert (= (and d!525002 (not c!280365)) b!1710864))

(declare-fun m!2114197 () Bool)

(assert (=> b!1710864 m!2114197))

(declare-fun m!2114199 () Bool)

(assert (=> b!1710864 m!2114199))

(assert (=> d!524606 d!525002))

(assert (=> d!524606 d!524982))

(declare-fun d!525004 () Bool)

(declare-fun c!280366 () Bool)

(assert (=> d!525004 (= c!280366 ((_ is Nil!18671) suffix!1421))))

(declare-fun e!1094220 () (InoxSet C!9428))

(assert (=> d!525004 (= (content!2653 suffix!1421) e!1094220)))

(declare-fun b!1710865 () Bool)

(assert (=> b!1710865 (= e!1094220 ((as const (Array C!9428 Bool)) false))))

(declare-fun b!1710866 () Bool)

(assert (=> b!1710866 (= e!1094220 ((_ map or) (store ((as const (Array C!9428 Bool)) false) (h!24072 suffix!1421) true) (content!2653 (t!158184 suffix!1421))))))

(assert (= (and d!525004 c!280366) b!1710865))

(assert (= (and d!525004 (not c!280366)) b!1710866))

(declare-fun m!2114201 () Bool)

(assert (=> b!1710866 m!2114201))

(declare-fun m!2114203 () Bool)

(assert (=> b!1710866 m!2114203))

(assert (=> d!524606 d!525004))

(assert (=> b!1709967 d!524852))

(assert (=> b!1709967 d!524854))

(assert (=> b!1709967 d!524768))

(declare-fun d!525006 () Bool)

(declare-fun lt!653670 () Bool)

(assert (=> d!525006 (= lt!653670 (select (content!2654 rules!3447) (rule!5233 (_1!10595 (get!5492 lt!653220)))))))

(declare-fun e!1094221 () Bool)

(assert (=> d!525006 (= lt!653670 e!1094221)))

(declare-fun res!766919 () Bool)

(assert (=> d!525006 (=> (not res!766919) (not e!1094221))))

(assert (=> d!525006 (= res!766919 ((_ is Cons!18672) rules!3447))))

(assert (=> d!525006 (= (contains!3317 rules!3447 (rule!5233 (_1!10595 (get!5492 lt!653220)))) lt!653670)))

(declare-fun b!1710867 () Bool)

(declare-fun e!1094222 () Bool)

(assert (=> b!1710867 (= e!1094221 e!1094222)))

(declare-fun res!766920 () Bool)

(assert (=> b!1710867 (=> res!766920 e!1094222)))

(assert (=> b!1710867 (= res!766920 (= (h!24073 rules!3447) (rule!5233 (_1!10595 (get!5492 lt!653220)))))))

(declare-fun b!1710868 () Bool)

(assert (=> b!1710868 (= e!1094222 (contains!3317 (t!158185 rules!3447) (rule!5233 (_1!10595 (get!5492 lt!653220)))))))

(assert (= (and d!525006 res!766919) b!1710867))

(assert (= (and b!1710867 (not res!766920)) b!1710868))

(assert (=> d!525006 m!2112935))

(declare-fun m!2114205 () Bool)

(assert (=> d!525006 m!2114205))

(declare-fun m!2114207 () Bool)

(assert (=> b!1710868 m!2114207))

(assert (=> b!1709808 d!525006))

(assert (=> b!1709808 d!524708))

(declare-fun bs!401769 () Bool)

(declare-fun d!525008 () Bool)

(assert (= bs!401769 (and d!525008 d!524652)))

(declare-fun lambda!68845 () Int)

(assert (=> bs!401769 (= (and (= (toChars!4657 (transformation!3299 (h!24073 rules!3447))) (toChars!4657 (transformation!3299 rule!422))) (= (toValue!4798 (transformation!3299 (h!24073 rules!3447))) (toValue!4798 (transformation!3299 rule!422)))) (= lambda!68845 lambda!68802))))

(assert (=> d!525008 true))

(assert (=> d!525008 (< (dynLambda!8487 order!11249 (toChars!4657 (transformation!3299 (h!24073 rules!3447)))) (dynLambda!8488 order!11251 lambda!68845))))

(assert (=> d!525008 true))

(assert (=> d!525008 (< (dynLambda!8489 order!11253 (toValue!4798 (transformation!3299 (h!24073 rules!3447)))) (dynLambda!8488 order!11251 lambda!68845))))

(assert (=> d!525008 (= (semiInverseModEq!1301 (toChars!4657 (transformation!3299 (h!24073 rules!3447))) (toValue!4798 (transformation!3299 (h!24073 rules!3447)))) (Forall!679 lambda!68845))))

(declare-fun bs!401770 () Bool)

(assert (= bs!401770 d!525008))

(declare-fun m!2114209 () Bool)

(assert (=> bs!401770 m!2114209))

(assert (=> d!524514 d!525008))

(declare-fun b!1710871 () Bool)

(declare-fun res!766922 () Bool)

(declare-fun e!1094223 () Bool)

(assert (=> b!1710871 (=> (not res!766922) (not e!1094223))))

(declare-fun lt!653671 () List!18741)

(assert (=> b!1710871 (= res!766922 (= (size!14846 lt!653671) (+ (size!14846 (list!7528 (charsOf!1948 (_1!10595 (get!5492 lt!653220))))) (size!14846 (_2!10595 (get!5492 lt!653220))))))))

(declare-fun d!525010 () Bool)

(assert (=> d!525010 e!1094223))

(declare-fun res!766921 () Bool)

(assert (=> d!525010 (=> (not res!766921) (not e!1094223))))

(assert (=> d!525010 (= res!766921 (= (content!2653 lt!653671) ((_ map or) (content!2653 (list!7528 (charsOf!1948 (_1!10595 (get!5492 lt!653220))))) (content!2653 (_2!10595 (get!5492 lt!653220))))))))

(declare-fun e!1094224 () List!18741)

(assert (=> d!525010 (= lt!653671 e!1094224)))

(declare-fun c!280367 () Bool)

(assert (=> d!525010 (= c!280367 ((_ is Nil!18671) (list!7528 (charsOf!1948 (_1!10595 (get!5492 lt!653220))))))))

(assert (=> d!525010 (= (++!5120 (list!7528 (charsOf!1948 (_1!10595 (get!5492 lt!653220)))) (_2!10595 (get!5492 lt!653220))) lt!653671)))

(declare-fun b!1710872 () Bool)

(assert (=> b!1710872 (= e!1094223 (or (not (= (_2!10595 (get!5492 lt!653220)) Nil!18671)) (= lt!653671 (list!7528 (charsOf!1948 (_1!10595 (get!5492 lt!653220)))))))))

(declare-fun b!1710870 () Bool)

(assert (=> b!1710870 (= e!1094224 (Cons!18671 (h!24072 (list!7528 (charsOf!1948 (_1!10595 (get!5492 lt!653220))))) (++!5120 (t!158184 (list!7528 (charsOf!1948 (_1!10595 (get!5492 lt!653220))))) (_2!10595 (get!5492 lt!653220)))))))

(declare-fun b!1710869 () Bool)

(assert (=> b!1710869 (= e!1094224 (_2!10595 (get!5492 lt!653220)))))

(assert (= (and d!525010 c!280367) b!1710869))

(assert (= (and d!525010 (not c!280367)) b!1710870))

(assert (= (and d!525010 res!766921) b!1710871))

(assert (= (and b!1710871 res!766922) b!1710872))

(declare-fun m!2114211 () Bool)

(assert (=> b!1710871 m!2114211))

(assert (=> b!1710871 m!2112873))

(declare-fun m!2114213 () Bool)

(assert (=> b!1710871 m!2114213))

(assert (=> b!1710871 m!2112881))

(declare-fun m!2114215 () Bool)

(assert (=> d!525010 m!2114215))

(assert (=> d!525010 m!2112873))

(declare-fun m!2114217 () Bool)

(assert (=> d!525010 m!2114217))

(declare-fun m!2114219 () Bool)

(assert (=> d!525010 m!2114219))

(declare-fun m!2114221 () Bool)

(assert (=> b!1710870 m!2114221))

(assert (=> b!1709806 d!525010))

(assert (=> b!1709806 d!524756))

(assert (=> b!1709806 d!524758))

(assert (=> b!1709806 d!524708))

(declare-fun bs!401771 () Bool)

(declare-fun d!525012 () Bool)

(assert (= bs!401771 (and d!525012 d!524652)))

(declare-fun lambda!68846 () Int)

(assert (=> bs!401771 (= (and (= (toChars!4657 (transformation!3299 (rule!5233 token!523))) (toChars!4657 (transformation!3299 rule!422))) (= (toValue!4798 (transformation!3299 (rule!5233 token!523))) (toValue!4798 (transformation!3299 rule!422)))) (= lambda!68846 lambda!68802))))

(declare-fun bs!401772 () Bool)

(assert (= bs!401772 (and d!525012 d!525008)))

(assert (=> bs!401772 (= (and (= (toChars!4657 (transformation!3299 (rule!5233 token!523))) (toChars!4657 (transformation!3299 (h!24073 rules!3447)))) (= (toValue!4798 (transformation!3299 (rule!5233 token!523))) (toValue!4798 (transformation!3299 (h!24073 rules!3447))))) (= lambda!68846 lambda!68845))))

(assert (=> d!525012 true))

(assert (=> d!525012 (< (dynLambda!8487 order!11249 (toChars!4657 (transformation!3299 (rule!5233 token!523)))) (dynLambda!8488 order!11251 lambda!68846))))

(assert (=> d!525012 true))

(assert (=> d!525012 (< (dynLambda!8489 order!11253 (toValue!4798 (transformation!3299 (rule!5233 token!523)))) (dynLambda!8488 order!11251 lambda!68846))))

(assert (=> d!525012 (= (semiInverseModEq!1301 (toChars!4657 (transformation!3299 (rule!5233 token!523))) (toValue!4798 (transformation!3299 (rule!5233 token!523)))) (Forall!679 lambda!68846))))

(declare-fun bs!401773 () Bool)

(assert (= bs!401773 d!525012))

(declare-fun m!2114223 () Bool)

(assert (=> bs!401773 m!2114223))

(assert (=> d!524616 d!525012))

(declare-fun d!525014 () Bool)

(assert (=> d!525014 (= (isDefined!2968 lt!653220) (not (isEmpty!11730 lt!653220)))))

(declare-fun bs!401774 () Bool)

(assert (= bs!401774 d!525014))

(assert (=> bs!401774 m!2112853))

(assert (=> b!1709810 d!525014))

(declare-fun d!525016 () Bool)

(declare-fun c!280370 () Bool)

(assert (=> d!525016 (= c!280370 ((_ is Nil!18672) rules!3447))))

(declare-fun e!1094227 () (InoxSet Rule!6398))

(assert (=> d!525016 (= (content!2654 rules!3447) e!1094227)))

(declare-fun b!1710877 () Bool)

(assert (=> b!1710877 (= e!1094227 ((as const (Array Rule!6398 Bool)) false))))

(declare-fun b!1710878 () Bool)

(assert (=> b!1710878 (= e!1094227 ((_ map or) (store ((as const (Array Rule!6398 Bool)) false) (h!24073 rules!3447) true) (content!2654 (t!158185 rules!3447))))))

(assert (= (and d!525016 c!280370) b!1710877))

(assert (= (and d!525016 (not c!280370)) b!1710878))

(declare-fun m!2114225 () Bool)

(assert (=> b!1710878 m!2114225))

(assert (=> b!1710878 m!2113451))

(assert (=> d!524578 d!525016))

(declare-fun d!525018 () Bool)

(declare-fun charsToBigInt!1 (List!18740) Int)

(assert (=> d!525018 (= (inv!17 (value!103694 token!523)) (= (charsToBigInt!1 (text!24171 (value!103694 token!523))) (value!103686 (value!103694 token!523))))))

(declare-fun bs!401775 () Bool)

(assert (= bs!401775 d!525018))

(declare-fun m!2114227 () Bool)

(assert (=> bs!401775 m!2114227))

(assert (=> b!1709989 d!525018))

(declare-fun b!1710881 () Bool)

(declare-fun e!1094230 () Bool)

(assert (=> b!1710881 (= e!1094230 (isPrefix!1540 (tail!2549 (tail!2549 lt!653165)) (tail!2549 (tail!2549 lt!653166))))))

(declare-fun d!525020 () Bool)

(declare-fun e!1094228 () Bool)

(assert (=> d!525020 e!1094228))

(declare-fun res!766926 () Bool)

(assert (=> d!525020 (=> res!766926 e!1094228)))

(declare-fun lt!653672 () Bool)

(assert (=> d!525020 (= res!766926 (not lt!653672))))

(declare-fun e!1094229 () Bool)

(assert (=> d!525020 (= lt!653672 e!1094229)))

(declare-fun res!766925 () Bool)

(assert (=> d!525020 (=> res!766925 e!1094229)))

(assert (=> d!525020 (= res!766925 ((_ is Nil!18671) (tail!2549 lt!653165)))))

(assert (=> d!525020 (= (isPrefix!1540 (tail!2549 lt!653165) (tail!2549 lt!653166)) lt!653672)))

(declare-fun b!1710882 () Bool)

(assert (=> b!1710882 (= e!1094228 (>= (size!14846 (tail!2549 lt!653166)) (size!14846 (tail!2549 lt!653165))))))

(declare-fun b!1710880 () Bool)

(declare-fun res!766924 () Bool)

(assert (=> b!1710880 (=> (not res!766924) (not e!1094230))))

(assert (=> b!1710880 (= res!766924 (= (head!3832 (tail!2549 lt!653165)) (head!3832 (tail!2549 lt!653166))))))

(declare-fun b!1710879 () Bool)

(assert (=> b!1710879 (= e!1094229 e!1094230)))

(declare-fun res!766923 () Bool)

(assert (=> b!1710879 (=> (not res!766923) (not e!1094230))))

(assert (=> b!1710879 (= res!766923 (not ((_ is Nil!18671) (tail!2549 lt!653166))))))

(assert (= (and d!525020 (not res!766925)) b!1710879))

(assert (= (and b!1710879 res!766923) b!1710880))

(assert (= (and b!1710880 res!766924) b!1710881))

(assert (= (and d!525020 (not res!766926)) b!1710882))

(assert (=> b!1710881 m!2113045))

(assert (=> b!1710881 m!2113977))

(assert (=> b!1710881 m!2113047))

(declare-fun m!2114229 () Bool)

(assert (=> b!1710881 m!2114229))

(assert (=> b!1710881 m!2113977))

(assert (=> b!1710881 m!2114229))

(declare-fun m!2114231 () Bool)

(assert (=> b!1710881 m!2114231))

(assert (=> b!1710882 m!2113047))

(declare-fun m!2114233 () Bool)

(assert (=> b!1710882 m!2114233))

(assert (=> b!1710882 m!2113045))

(declare-fun m!2114235 () Bool)

(assert (=> b!1710882 m!2114235))

(assert (=> b!1710880 m!2113045))

(assert (=> b!1710880 m!2113985))

(assert (=> b!1710880 m!2113047))

(declare-fun m!2114237 () Bool)

(assert (=> b!1710880 m!2114237))

(assert (=> b!1709959 d!525020))

(assert (=> b!1709959 d!524878))

(declare-fun d!525022 () Bool)

(assert (=> d!525022 (= (tail!2549 lt!653166) (t!158184 lt!653166))))

(assert (=> b!1709959 d!525022))

(declare-fun b!1710885 () Bool)

(declare-fun res!766928 () Bool)

(declare-fun e!1094231 () Bool)

(assert (=> b!1710885 (=> (not res!766928) (not e!1094231))))

(declare-fun lt!653673 () List!18741)

(assert (=> b!1710885 (= res!766928 (= (size!14846 lt!653673) (+ (size!14846 (t!158184 lt!653165)) (size!14846 (Cons!18671 (head!3832 suffix!1421) Nil!18671)))))))

(declare-fun d!525024 () Bool)

(assert (=> d!525024 e!1094231))

(declare-fun res!766927 () Bool)

(assert (=> d!525024 (=> (not res!766927) (not e!1094231))))

(assert (=> d!525024 (= res!766927 (= (content!2653 lt!653673) ((_ map or) (content!2653 (t!158184 lt!653165)) (content!2653 (Cons!18671 (head!3832 suffix!1421) Nil!18671)))))))

(declare-fun e!1094232 () List!18741)

(assert (=> d!525024 (= lt!653673 e!1094232)))

(declare-fun c!280371 () Bool)

(assert (=> d!525024 (= c!280371 ((_ is Nil!18671) (t!158184 lt!653165)))))

(assert (=> d!525024 (= (++!5120 (t!158184 lt!653165) (Cons!18671 (head!3832 suffix!1421) Nil!18671)) lt!653673)))

(declare-fun b!1710886 () Bool)

(assert (=> b!1710886 (= e!1094231 (or (not (= (Cons!18671 (head!3832 suffix!1421) Nil!18671) Nil!18671)) (= lt!653673 (t!158184 lt!653165))))))

(declare-fun b!1710884 () Bool)

(assert (=> b!1710884 (= e!1094232 (Cons!18671 (h!24072 (t!158184 lt!653165)) (++!5120 (t!158184 (t!158184 lt!653165)) (Cons!18671 (head!3832 suffix!1421) Nil!18671))))))

(declare-fun b!1710883 () Bool)

(assert (=> b!1710883 (= e!1094232 (Cons!18671 (head!3832 suffix!1421) Nil!18671))))

(assert (= (and d!525024 c!280371) b!1710883))

(assert (= (and d!525024 (not c!280371)) b!1710884))

(assert (= (and d!525024 res!766927) b!1710885))

(assert (= (and b!1710885 res!766928) b!1710886))

(declare-fun m!2114239 () Bool)

(assert (=> b!1710885 m!2114239))

(assert (=> b!1710885 m!2113449))

(assert (=> b!1710885 m!2112921))

(declare-fun m!2114241 () Bool)

(assert (=> d!525024 m!2114241))

(assert (=> d!525024 m!2114135))

(assert (=> d!525024 m!2112927))

(declare-fun m!2114243 () Bool)

(assert (=> b!1710884 m!2114243))

(assert (=> b!1709834 d!525024))

(assert (=> b!1710042 d!524842))

(declare-fun d!525026 () Bool)

(assert (=> d!525026 (= (isEmpty!11726 lt!653165) ((_ is Nil!18671) lt!653165))))

(assert (=> d!524622 d!525026))

(assert (=> d!524622 d!524946))

(declare-fun b!1710887 () Bool)

(declare-fun e!1094233 () Bool)

(declare-fun e!1094236 () Bool)

(assert (=> b!1710887 (= e!1094233 e!1094236)))

(declare-fun res!766933 () Bool)

(assert (=> b!1710887 (=> (not res!766933) (not e!1094236))))

(declare-fun lt!653676 () Option!3623)

(assert (=> b!1710887 (= res!766933 (matchR!2101 (regex!3299 (h!24073 rules!3447)) (list!7528 (charsOf!1948 (_1!10595 (get!5492 lt!653676))))))))

(declare-fun b!1710888 () Bool)

(declare-fun res!766929 () Bool)

(assert (=> b!1710888 (=> (not res!766929) (not e!1094236))))

(assert (=> b!1710888 (= res!766929 (< (size!14846 (_2!10595 (get!5492 lt!653676))) (size!14846 lt!653166)))))

(declare-fun b!1710889 () Bool)

(declare-fun e!1094234 () Option!3623)

(declare-fun lt!653674 () tuple2!18394)

(assert (=> b!1710889 (= e!1094234 (Some!3622 (tuple2!18387 (Token!6165 (apply!5110 (transformation!3299 (h!24073 rules!3447)) (seqFromList!2275 (_1!10599 lt!653674))) (h!24073 rules!3447) (size!14847 (seqFromList!2275 (_1!10599 lt!653674))) (_1!10599 lt!653674)) (_2!10599 lt!653674))))))

(declare-fun lt!653675 () Unit!32499)

(assert (=> b!1710889 (= lt!653675 (longestMatchIsAcceptedByMatchOrIsEmpty!369 (regex!3299 (h!24073 rules!3447)) lt!653166))))

(declare-fun res!766934 () Bool)

(assert (=> b!1710889 (= res!766934 (isEmpty!11726 (_1!10599 (findLongestMatchInner!385 (regex!3299 (h!24073 rules!3447)) Nil!18671 (size!14846 Nil!18671) lt!653166 lt!653166 (size!14846 lt!653166)))))))

(declare-fun e!1094235 () Bool)

(assert (=> b!1710889 (=> res!766934 e!1094235)))

(assert (=> b!1710889 e!1094235))

(declare-fun lt!653677 () Unit!32499)

(assert (=> b!1710889 (= lt!653677 lt!653675)))

(declare-fun lt!653678 () Unit!32499)

(assert (=> b!1710889 (= lt!653678 (lemmaSemiInverse!451 (transformation!3299 (h!24073 rules!3447)) (seqFromList!2275 (_1!10599 lt!653674))))))

(declare-fun b!1710890 () Bool)

(assert (=> b!1710890 (= e!1094235 (matchR!2101 (regex!3299 (h!24073 rules!3447)) (_1!10599 (findLongestMatchInner!385 (regex!3299 (h!24073 rules!3447)) Nil!18671 (size!14846 Nil!18671) lt!653166 lt!653166 (size!14846 lt!653166)))))))

(declare-fun b!1710891 () Bool)

(assert (=> b!1710891 (= e!1094234 None!3622)))

(declare-fun b!1710892 () Bool)

(declare-fun res!766935 () Bool)

(assert (=> b!1710892 (=> (not res!766935) (not e!1094236))))

(assert (=> b!1710892 (= res!766935 (= (rule!5233 (_1!10595 (get!5492 lt!653676))) (h!24073 rules!3447)))))

(declare-fun b!1710893 () Bool)

(assert (=> b!1710893 (= e!1094236 (= (size!14842 (_1!10595 (get!5492 lt!653676))) (size!14846 (originalCharacters!4113 (_1!10595 (get!5492 lt!653676))))))))

(declare-fun b!1710895 () Bool)

(declare-fun res!766930 () Bool)

(assert (=> b!1710895 (=> (not res!766930) (not e!1094236))))

(assert (=> b!1710895 (= res!766930 (= (value!103694 (_1!10595 (get!5492 lt!653676))) (apply!5110 (transformation!3299 (rule!5233 (_1!10595 (get!5492 lt!653676)))) (seqFromList!2275 (originalCharacters!4113 (_1!10595 (get!5492 lt!653676)))))))))

(declare-fun d!525028 () Bool)

(assert (=> d!525028 e!1094233))

(declare-fun res!766931 () Bool)

(assert (=> d!525028 (=> res!766931 e!1094233)))

(assert (=> d!525028 (= res!766931 (isEmpty!11730 lt!653676))))

(assert (=> d!525028 (= lt!653676 e!1094234)))

(declare-fun c!280372 () Bool)

(assert (=> d!525028 (= c!280372 (isEmpty!11726 (_1!10599 lt!653674)))))

(assert (=> d!525028 (= lt!653674 (findLongestMatch!312 (regex!3299 (h!24073 rules!3447)) lt!653166))))

(assert (=> d!525028 (ruleValid!798 thiss!24550 (h!24073 rules!3447))))

(assert (=> d!525028 (= (maxPrefixOneRule!866 thiss!24550 (h!24073 rules!3447) lt!653166) lt!653676)))

(declare-fun b!1710894 () Bool)

(declare-fun res!766932 () Bool)

(assert (=> b!1710894 (=> (not res!766932) (not e!1094236))))

(assert (=> b!1710894 (= res!766932 (= (++!5120 (list!7528 (charsOf!1948 (_1!10595 (get!5492 lt!653676)))) (_2!10595 (get!5492 lt!653676))) lt!653166))))

(assert (= (and d!525028 c!280372) b!1710891))

(assert (= (and d!525028 (not c!280372)) b!1710889))

(assert (= (and b!1710889 (not res!766934)) b!1710890))

(assert (= (and d!525028 (not res!766931)) b!1710887))

(assert (= (and b!1710887 res!766933) b!1710894))

(assert (= (and b!1710894 res!766932) b!1710888))

(assert (= (and b!1710888 res!766929) b!1710892))

(assert (= (and b!1710892 res!766935) b!1710895))

(assert (= (and b!1710895 res!766930) b!1710893))

(declare-fun m!2114245 () Bool)

(assert (=> b!1710888 m!2114245))

(declare-fun m!2114247 () Bool)

(assert (=> b!1710888 m!2114247))

(assert (=> b!1710888 m!2113051))

(assert (=> b!1710887 m!2114245))

(declare-fun m!2114249 () Bool)

(assert (=> b!1710887 m!2114249))

(assert (=> b!1710887 m!2114249))

(declare-fun m!2114251 () Bool)

(assert (=> b!1710887 m!2114251))

(assert (=> b!1710887 m!2114251))

(declare-fun m!2114253 () Bool)

(assert (=> b!1710887 m!2114253))

(assert (=> b!1710895 m!2114245))

(declare-fun m!2114255 () Bool)

(assert (=> b!1710895 m!2114255))

(assert (=> b!1710895 m!2114255))

(declare-fun m!2114257 () Bool)

(assert (=> b!1710895 m!2114257))

(assert (=> b!1710890 m!2113407))

(assert (=> b!1710890 m!2113051))

(assert (=> b!1710890 m!2113407))

(assert (=> b!1710890 m!2113051))

(declare-fun m!2114259 () Bool)

(assert (=> b!1710890 m!2114259))

(declare-fun m!2114261 () Bool)

(assert (=> b!1710890 m!2114261))

(assert (=> b!1710889 m!2113407))

(declare-fun m!2114263 () Bool)

(assert (=> b!1710889 m!2114263))

(declare-fun m!2114265 () Bool)

(assert (=> b!1710889 m!2114265))

(declare-fun m!2114267 () Bool)

(assert (=> b!1710889 m!2114267))

(assert (=> b!1710889 m!2114263))

(declare-fun m!2114269 () Bool)

(assert (=> b!1710889 m!2114269))

(assert (=> b!1710889 m!2114263))

(declare-fun m!2114271 () Bool)

(assert (=> b!1710889 m!2114271))

(assert (=> b!1710889 m!2114263))

(assert (=> b!1710889 m!2113051))

(declare-fun m!2114273 () Bool)

(assert (=> b!1710889 m!2114273))

(assert (=> b!1710889 m!2113407))

(assert (=> b!1710889 m!2113051))

(assert (=> b!1710889 m!2114259))

(declare-fun m!2114275 () Bool)

(assert (=> d!525028 m!2114275))

(declare-fun m!2114277 () Bool)

(assert (=> d!525028 m!2114277))

(declare-fun m!2114279 () Bool)

(assert (=> d!525028 m!2114279))

(assert (=> d!525028 m!2113431))

(assert (=> b!1710893 m!2114245))

(declare-fun m!2114281 () Bool)

(assert (=> b!1710893 m!2114281))

(assert (=> b!1710892 m!2114245))

(assert (=> b!1710894 m!2114245))

(assert (=> b!1710894 m!2114249))

(assert (=> b!1710894 m!2114249))

(assert (=> b!1710894 m!2114251))

(assert (=> b!1710894 m!2114251))

(declare-fun m!2114283 () Bool)

(assert (=> b!1710894 m!2114283))

(assert (=> bm!109390 d!525028))

(declare-fun d!525030 () Bool)

(declare-fun e!1094238 () Bool)

(assert (=> d!525030 e!1094238))

(declare-fun res!766939 () Bool)

(assert (=> d!525030 (=> res!766939 e!1094238)))

(declare-fun lt!653680 () Option!3623)

(assert (=> d!525030 (= res!766939 (isEmpty!11730 lt!653680))))

(declare-fun e!1094237 () Option!3623)

(assert (=> d!525030 (= lt!653680 e!1094237)))

(declare-fun c!280373 () Bool)

(assert (=> d!525030 (= c!280373 (and ((_ is Cons!18672) (t!158185 rules!3447)) ((_ is Nil!18672) (t!158185 (t!158185 rules!3447)))))))

(declare-fun lt!653679 () Unit!32499)

(declare-fun lt!653683 () Unit!32499)

(assert (=> d!525030 (= lt!653679 lt!653683)))

(assert (=> d!525030 (isPrefix!1540 lt!653166 lt!653166)))

(assert (=> d!525030 (= lt!653683 (lemmaIsPrefixRefl!1051 lt!653166 lt!653166))))

(assert (=> d!525030 (rulesValidInductive!1086 thiss!24550 (t!158185 rules!3447))))

(assert (=> d!525030 (= (maxPrefix!1482 thiss!24550 (t!158185 rules!3447) lt!653166) lt!653680)))

(declare-fun b!1710896 () Bool)

(declare-fun res!766942 () Bool)

(declare-fun e!1094239 () Bool)

(assert (=> b!1710896 (=> (not res!766942) (not e!1094239))))

(assert (=> b!1710896 (= res!766942 (matchR!2101 (regex!3299 (rule!5233 (_1!10595 (get!5492 lt!653680)))) (list!7528 (charsOf!1948 (_1!10595 (get!5492 lt!653680))))))))

(declare-fun b!1710897 () Bool)

(declare-fun res!766941 () Bool)

(assert (=> b!1710897 (=> (not res!766941) (not e!1094239))))

(assert (=> b!1710897 (= res!766941 (= (value!103694 (_1!10595 (get!5492 lt!653680))) (apply!5110 (transformation!3299 (rule!5233 (_1!10595 (get!5492 lt!653680)))) (seqFromList!2275 (originalCharacters!4113 (_1!10595 (get!5492 lt!653680)))))))))

(declare-fun b!1710898 () Bool)

(declare-fun res!766940 () Bool)

(assert (=> b!1710898 (=> (not res!766940) (not e!1094239))))

(assert (=> b!1710898 (= res!766940 (= (list!7528 (charsOf!1948 (_1!10595 (get!5492 lt!653680)))) (originalCharacters!4113 (_1!10595 (get!5492 lt!653680)))))))

(declare-fun b!1710899 () Bool)

(declare-fun call!109458 () Option!3623)

(assert (=> b!1710899 (= e!1094237 call!109458)))

(declare-fun bm!109453 () Bool)

(assert (=> bm!109453 (= call!109458 (maxPrefixOneRule!866 thiss!24550 (h!24073 (t!158185 rules!3447)) lt!653166))))

(declare-fun b!1710900 () Bool)

(declare-fun res!766936 () Bool)

(assert (=> b!1710900 (=> (not res!766936) (not e!1094239))))

(assert (=> b!1710900 (= res!766936 (= (++!5120 (list!7528 (charsOf!1948 (_1!10595 (get!5492 lt!653680)))) (_2!10595 (get!5492 lt!653680))) lt!653166))))

(declare-fun b!1710901 () Bool)

(declare-fun res!766937 () Bool)

(assert (=> b!1710901 (=> (not res!766937) (not e!1094239))))

(assert (=> b!1710901 (= res!766937 (< (size!14846 (_2!10595 (get!5492 lt!653680))) (size!14846 lt!653166)))))

(declare-fun b!1710902 () Bool)

(assert (=> b!1710902 (= e!1094239 (contains!3317 (t!158185 rules!3447) (rule!5233 (_1!10595 (get!5492 lt!653680)))))))

(declare-fun b!1710903 () Bool)

(declare-fun lt!653681 () Option!3623)

(declare-fun lt!653682 () Option!3623)

(assert (=> b!1710903 (= e!1094237 (ite (and ((_ is None!3622) lt!653681) ((_ is None!3622) lt!653682)) None!3622 (ite ((_ is None!3622) lt!653682) lt!653681 (ite ((_ is None!3622) lt!653681) lt!653682 (ite (>= (size!14842 (_1!10595 (v!25007 lt!653681))) (size!14842 (_1!10595 (v!25007 lt!653682)))) lt!653681 lt!653682)))))))

(assert (=> b!1710903 (= lt!653681 call!109458)))

(assert (=> b!1710903 (= lt!653682 (maxPrefix!1482 thiss!24550 (t!158185 (t!158185 rules!3447)) lt!653166))))

(declare-fun b!1710904 () Bool)

(assert (=> b!1710904 (= e!1094238 e!1094239)))

(declare-fun res!766938 () Bool)

(assert (=> b!1710904 (=> (not res!766938) (not e!1094239))))

(assert (=> b!1710904 (= res!766938 (isDefined!2968 lt!653680))))

(assert (= (and d!525030 c!280373) b!1710899))

(assert (= (and d!525030 (not c!280373)) b!1710903))

(assert (= (or b!1710899 b!1710903) bm!109453))

(assert (= (and d!525030 (not res!766939)) b!1710904))

(assert (= (and b!1710904 res!766938) b!1710898))

(assert (= (and b!1710898 res!766940) b!1710901))

(assert (= (and b!1710901 res!766937) b!1710900))

(assert (= (and b!1710900 res!766936) b!1710897))

(assert (= (and b!1710897 res!766941) b!1710896))

(assert (= (and b!1710896 res!766942) b!1710902))

(declare-fun m!2114285 () Bool)

(assert (=> d!525030 m!2114285))

(assert (=> d!525030 m!2113075))

(assert (=> d!525030 m!2113077))

(assert (=> d!525030 m!2113929))

(declare-fun m!2114287 () Bool)

(assert (=> bm!109453 m!2114287))

(declare-fun m!2114289 () Bool)

(assert (=> b!1710902 m!2114289))

(declare-fun m!2114291 () Bool)

(assert (=> b!1710902 m!2114291))

(assert (=> b!1710897 m!2114289))

(declare-fun m!2114293 () Bool)

(assert (=> b!1710897 m!2114293))

(assert (=> b!1710897 m!2114293))

(declare-fun m!2114295 () Bool)

(assert (=> b!1710897 m!2114295))

(assert (=> b!1710898 m!2114289))

(declare-fun m!2114297 () Bool)

(assert (=> b!1710898 m!2114297))

(assert (=> b!1710898 m!2114297))

(declare-fun m!2114299 () Bool)

(assert (=> b!1710898 m!2114299))

(assert (=> b!1710900 m!2114289))

(assert (=> b!1710900 m!2114297))

(assert (=> b!1710900 m!2114297))

(assert (=> b!1710900 m!2114299))

(assert (=> b!1710900 m!2114299))

(declare-fun m!2114301 () Bool)

(assert (=> b!1710900 m!2114301))

(assert (=> b!1710896 m!2114289))

(assert (=> b!1710896 m!2114297))

(assert (=> b!1710896 m!2114297))

(assert (=> b!1710896 m!2114299))

(assert (=> b!1710896 m!2114299))

(declare-fun m!2114303 () Bool)

(assert (=> b!1710896 m!2114303))

(declare-fun m!2114305 () Bool)

(assert (=> b!1710904 m!2114305))

(assert (=> b!1710901 m!2114289))

(declare-fun m!2114307 () Bool)

(assert (=> b!1710901 m!2114307))

(assert (=> b!1710901 m!2113051))

(declare-fun m!2114309 () Bool)

(assert (=> b!1710903 m!2114309))

(assert (=> b!1709972 d!525030))

(declare-fun d!525032 () Bool)

(assert (=> d!525032 (= (list!7528 (dynLambda!8485 (toChars!4657 (transformation!3299 (rule!5233 token!523))) (value!103694 token!523))) (list!7531 (c!280096 (dynLambda!8485 (toChars!4657 (transformation!3299 (rule!5233 token!523))) (value!103694 token!523)))))))

(declare-fun bs!401776 () Bool)

(assert (= bs!401776 d!525032))

(declare-fun m!2114311 () Bool)

(assert (=> bs!401776 m!2114311))

(assert (=> b!1709994 d!525032))

(assert (=> bm!109393 d!525026))

(declare-fun d!525034 () Bool)

(assert (=> d!525034 (= (list!7528 lt!653226) (list!7531 (c!280096 lt!653226)))))

(declare-fun bs!401777 () Bool)

(assert (= bs!401777 d!525034))

(declare-fun m!2114313 () Bool)

(assert (=> bs!401777 m!2114313))

(assert (=> d!524554 d!525034))

(declare-fun d!525036 () Bool)

(declare-fun lt!653684 () Bool)

(assert (=> d!525036 (= lt!653684 (isEmpty!11731 (list!7532 (_1!10594 lt!653252))))))

(assert (=> d!525036 (= lt!653684 (isEmpty!11732 (c!280097 (_1!10594 lt!653252))))))

(assert (=> d!525036 (= (isEmpty!11725 (_1!10594 lt!653252)) lt!653684)))

(declare-fun bs!401778 () Bool)

(assert (= bs!401778 d!525036))

(assert (=> bs!401778 m!2113043))

(assert (=> bs!401778 m!2113043))

(declare-fun m!2114315 () Bool)

(assert (=> bs!401778 m!2114315))

(declare-fun m!2114317 () Bool)

(assert (=> bs!401778 m!2114317))

(assert (=> b!1709945 d!525036))

(declare-fun d!525038 () Bool)

(declare-fun lt!653685 () Int)

(assert (=> d!525038 (>= lt!653685 0)))

(declare-fun e!1094240 () Int)

(assert (=> d!525038 (= lt!653685 e!1094240)))

(declare-fun c!280374 () Bool)

(assert (=> d!525038 (= c!280374 ((_ is Nil!18671) (_2!10595 (get!5492 lt!653261))))))

(assert (=> d!525038 (= (size!14846 (_2!10595 (get!5492 lt!653261))) lt!653685)))

(declare-fun b!1710905 () Bool)

(assert (=> b!1710905 (= e!1094240 0)))

(declare-fun b!1710906 () Bool)

(assert (=> b!1710906 (= e!1094240 (+ 1 (size!14846 (t!158184 (_2!10595 (get!5492 lt!653261))))))))

(assert (= (and d!525038 c!280374) b!1710905))

(assert (= (and d!525038 (not c!280374)) b!1710906))

(declare-fun m!2114319 () Bool)

(assert (=> b!1710906 m!2114319))

(assert (=> b!1709970 d!525038))

(assert (=> b!1709970 d!524768))

(assert (=> b!1709970 d!524936))

(assert (=> b!1710030 d!524868))

(declare-fun b!1710909 () Bool)

(declare-fun res!766944 () Bool)

(declare-fun e!1094241 () Bool)

(assert (=> b!1710909 (=> (not res!766944) (not e!1094241))))

(declare-fun lt!653686 () List!18741)

(assert (=> b!1710909 (= res!766944 (= (size!14846 lt!653686) (+ (size!14846 (t!158184 lt!653165)) (size!14846 suffix!1421))))))

(declare-fun d!525040 () Bool)

(assert (=> d!525040 e!1094241))

(declare-fun res!766943 () Bool)

(assert (=> d!525040 (=> (not res!766943) (not e!1094241))))

(assert (=> d!525040 (= res!766943 (= (content!2653 lt!653686) ((_ map or) (content!2653 (t!158184 lt!653165)) (content!2653 suffix!1421))))))

(declare-fun e!1094242 () List!18741)

(assert (=> d!525040 (= lt!653686 e!1094242)))

(declare-fun c!280375 () Bool)

(assert (=> d!525040 (= c!280375 ((_ is Nil!18671) (t!158184 lt!653165)))))

(assert (=> d!525040 (= (++!5120 (t!158184 lt!653165) suffix!1421) lt!653686)))

(declare-fun b!1710910 () Bool)

(assert (=> b!1710910 (= e!1094241 (or (not (= suffix!1421 Nil!18671)) (= lt!653686 (t!158184 lt!653165))))))

(declare-fun b!1710908 () Bool)

(assert (=> b!1710908 (= e!1094242 (Cons!18671 (h!24072 (t!158184 lt!653165)) (++!5120 (t!158184 (t!158184 lt!653165)) suffix!1421)))))

(declare-fun b!1710907 () Bool)

(assert (=> b!1710907 (= e!1094242 suffix!1421)))

(assert (= (and d!525040 c!280375) b!1710907))

(assert (= (and d!525040 (not c!280375)) b!1710908))

(assert (= (and d!525040 res!766943) b!1710909))

(assert (= (and b!1710909 res!766944) b!1710910))

(declare-fun m!2114321 () Bool)

(assert (=> b!1710909 m!2114321))

(assert (=> b!1710909 m!2113449))

(assert (=> b!1710909 m!2113059))

(declare-fun m!2114323 () Bool)

(assert (=> d!525040 m!2114323))

(assert (=> d!525040 m!2114135))

(assert (=> d!525040 m!2113063))

(declare-fun m!2114325 () Bool)

(assert (=> b!1710908 m!2114325))

(assert (=> b!1709962 d!525040))

(declare-fun b!1710914 () Bool)

(declare-fun e!1094243 () Bool)

(declare-fun tp!488834 () Bool)

(declare-fun tp!488833 () Bool)

(assert (=> b!1710914 (= e!1094243 (and tp!488834 tp!488833))))

(declare-fun b!1710913 () Bool)

(declare-fun tp!488835 () Bool)

(assert (=> b!1710913 (= e!1094243 tp!488835)))

(assert (=> b!1710056 (= tp!488705 e!1094243)))

(declare-fun b!1710912 () Bool)

(declare-fun tp!488836 () Bool)

(declare-fun tp!488832 () Bool)

(assert (=> b!1710912 (= e!1094243 (and tp!488836 tp!488832))))

(declare-fun b!1710911 () Bool)

(assert (=> b!1710911 (= e!1094243 tp_is_empty!7497)))

(assert (= (and b!1710056 ((_ is ElementMatch!4627) (reg!4956 (regex!3299 rule!422)))) b!1710911))

(assert (= (and b!1710056 ((_ is Concat!8017) (reg!4956 (regex!3299 rule!422)))) b!1710912))

(assert (= (and b!1710056 ((_ is Star!4627) (reg!4956 (regex!3299 rule!422)))) b!1710913))

(assert (= (and b!1710056 ((_ is Union!4627) (reg!4956 (regex!3299 rule!422)))) b!1710914))

(declare-fun b!1710918 () Bool)

(declare-fun e!1094244 () Bool)

(declare-fun tp!488839 () Bool)

(declare-fun tp!488838 () Bool)

(assert (=> b!1710918 (= e!1094244 (and tp!488839 tp!488838))))

(declare-fun b!1710917 () Bool)

(declare-fun tp!488840 () Bool)

(assert (=> b!1710917 (= e!1094244 tp!488840)))

(assert (=> b!1710061 (= tp!488709 e!1094244)))

(declare-fun b!1710916 () Bool)

(declare-fun tp!488841 () Bool)

(declare-fun tp!488837 () Bool)

(assert (=> b!1710916 (= e!1094244 (and tp!488841 tp!488837))))

(declare-fun b!1710915 () Bool)

(assert (=> b!1710915 (= e!1094244 tp_is_empty!7497)))

(assert (= (and b!1710061 ((_ is ElementMatch!4627) (regOne!9767 (regex!3299 (h!24073 rules!3447))))) b!1710915))

(assert (= (and b!1710061 ((_ is Concat!8017) (regOne!9767 (regex!3299 (h!24073 rules!3447))))) b!1710916))

(assert (= (and b!1710061 ((_ is Star!4627) (regOne!9767 (regex!3299 (h!24073 rules!3447))))) b!1710917))

(assert (= (and b!1710061 ((_ is Union!4627) (regOne!9767 (regex!3299 (h!24073 rules!3447))))) b!1710918))

(declare-fun b!1710922 () Bool)

(declare-fun e!1094245 () Bool)

(declare-fun tp!488844 () Bool)

(declare-fun tp!488843 () Bool)

(assert (=> b!1710922 (= e!1094245 (and tp!488844 tp!488843))))

(declare-fun b!1710921 () Bool)

(declare-fun tp!488845 () Bool)

(assert (=> b!1710921 (= e!1094245 tp!488845)))

(assert (=> b!1710061 (= tp!488708 e!1094245)))

(declare-fun b!1710920 () Bool)

(declare-fun tp!488846 () Bool)

(declare-fun tp!488842 () Bool)

(assert (=> b!1710920 (= e!1094245 (and tp!488846 tp!488842))))

(declare-fun b!1710919 () Bool)

(assert (=> b!1710919 (= e!1094245 tp_is_empty!7497)))

(assert (= (and b!1710061 ((_ is ElementMatch!4627) (regTwo!9767 (regex!3299 (h!24073 rules!3447))))) b!1710919))

(assert (= (and b!1710061 ((_ is Concat!8017) (regTwo!9767 (regex!3299 (h!24073 rules!3447))))) b!1710920))

(assert (= (and b!1710061 ((_ is Star!4627) (regTwo!9767 (regex!3299 (h!24073 rules!3447))))) b!1710921))

(assert (= (and b!1710061 ((_ is Union!4627) (regTwo!9767 (regex!3299 (h!24073 rules!3447))))) b!1710922))

(declare-fun b!1710923 () Bool)

(declare-fun e!1094246 () Bool)

(declare-fun tp!488847 () Bool)

(assert (=> b!1710923 (= e!1094246 (and tp_is_empty!7497 tp!488847))))

(assert (=> b!1710081 (= tp!488731 e!1094246)))

(assert (= (and b!1710081 ((_ is Cons!18671) (t!158184 (t!158184 suffix!1421)))) b!1710923))

(declare-fun b!1710927 () Bool)

(declare-fun e!1094247 () Bool)

(declare-fun tp!488850 () Bool)

(declare-fun tp!488849 () Bool)

(assert (=> b!1710927 (= e!1094247 (and tp!488850 tp!488849))))

(declare-fun b!1710926 () Bool)

(declare-fun tp!488851 () Bool)

(assert (=> b!1710926 (= e!1094247 tp!488851)))

(assert (=> b!1710057 (= tp!488704 e!1094247)))

(declare-fun b!1710925 () Bool)

(declare-fun tp!488852 () Bool)

(declare-fun tp!488848 () Bool)

(assert (=> b!1710925 (= e!1094247 (and tp!488852 tp!488848))))

(declare-fun b!1710924 () Bool)

(assert (=> b!1710924 (= e!1094247 tp_is_empty!7497)))

(assert (= (and b!1710057 ((_ is ElementMatch!4627) (regOne!9767 (regex!3299 rule!422)))) b!1710924))

(assert (= (and b!1710057 ((_ is Concat!8017) (regOne!9767 (regex!3299 rule!422)))) b!1710925))

(assert (= (and b!1710057 ((_ is Star!4627) (regOne!9767 (regex!3299 rule!422)))) b!1710926))

(assert (= (and b!1710057 ((_ is Union!4627) (regOne!9767 (regex!3299 rule!422)))) b!1710927))

(declare-fun b!1710931 () Bool)

(declare-fun e!1094248 () Bool)

(declare-fun tp!488855 () Bool)

(declare-fun tp!488854 () Bool)

(assert (=> b!1710931 (= e!1094248 (and tp!488855 tp!488854))))

(declare-fun b!1710930 () Bool)

(declare-fun tp!488856 () Bool)

(assert (=> b!1710930 (= e!1094248 tp!488856)))

(assert (=> b!1710057 (= tp!488703 e!1094248)))

(declare-fun b!1710929 () Bool)

(declare-fun tp!488857 () Bool)

(declare-fun tp!488853 () Bool)

(assert (=> b!1710929 (= e!1094248 (and tp!488857 tp!488853))))

(declare-fun b!1710928 () Bool)

(assert (=> b!1710928 (= e!1094248 tp_is_empty!7497)))

(assert (= (and b!1710057 ((_ is ElementMatch!4627) (regTwo!9767 (regex!3299 rule!422)))) b!1710928))

(assert (= (and b!1710057 ((_ is Concat!8017) (regTwo!9767 (regex!3299 rule!422)))) b!1710929))

(assert (= (and b!1710057 ((_ is Star!4627) (regTwo!9767 (regex!3299 rule!422)))) b!1710930))

(assert (= (and b!1710057 ((_ is Union!4627) (regTwo!9767 (regex!3299 rule!422)))) b!1710931))

(declare-fun b!1710935 () Bool)

(declare-fun e!1094249 () Bool)

(declare-fun tp!488860 () Bool)

(declare-fun tp!488859 () Bool)

(assert (=> b!1710935 (= e!1094249 (and tp!488860 tp!488859))))

(declare-fun b!1710934 () Bool)

(declare-fun tp!488861 () Bool)

(assert (=> b!1710934 (= e!1094249 tp!488861)))

(assert (=> b!1710055 (= tp!488706 e!1094249)))

(declare-fun b!1710933 () Bool)

(declare-fun tp!488862 () Bool)

(declare-fun tp!488858 () Bool)

(assert (=> b!1710933 (= e!1094249 (and tp!488862 tp!488858))))

(declare-fun b!1710932 () Bool)

(assert (=> b!1710932 (= e!1094249 tp_is_empty!7497)))

(assert (= (and b!1710055 ((_ is ElementMatch!4627) (regOne!9766 (regex!3299 rule!422)))) b!1710932))

(assert (= (and b!1710055 ((_ is Concat!8017) (regOne!9766 (regex!3299 rule!422)))) b!1710933))

(assert (= (and b!1710055 ((_ is Star!4627) (regOne!9766 (regex!3299 rule!422)))) b!1710934))

(assert (= (and b!1710055 ((_ is Union!4627) (regOne!9766 (regex!3299 rule!422)))) b!1710935))

(declare-fun b!1710939 () Bool)

(declare-fun e!1094250 () Bool)

(declare-fun tp!488865 () Bool)

(declare-fun tp!488864 () Bool)

(assert (=> b!1710939 (= e!1094250 (and tp!488865 tp!488864))))

(declare-fun b!1710938 () Bool)

(declare-fun tp!488866 () Bool)

(assert (=> b!1710938 (= e!1094250 tp!488866)))

(assert (=> b!1710055 (= tp!488702 e!1094250)))

(declare-fun b!1710937 () Bool)

(declare-fun tp!488867 () Bool)

(declare-fun tp!488863 () Bool)

(assert (=> b!1710937 (= e!1094250 (and tp!488867 tp!488863))))

(declare-fun b!1710936 () Bool)

(assert (=> b!1710936 (= e!1094250 tp_is_empty!7497)))

(assert (= (and b!1710055 ((_ is ElementMatch!4627) (regTwo!9766 (regex!3299 rule!422)))) b!1710936))

(assert (= (and b!1710055 ((_ is Concat!8017) (regTwo!9766 (regex!3299 rule!422)))) b!1710937))

(assert (= (and b!1710055 ((_ is Star!4627) (regTwo!9766 (regex!3299 rule!422)))) b!1710938))

(assert (= (and b!1710055 ((_ is Union!4627) (regTwo!9766 (regex!3299 rule!422)))) b!1710939))

(declare-fun b!1710943 () Bool)

(declare-fun e!1094251 () Bool)

(declare-fun tp!488870 () Bool)

(declare-fun tp!488869 () Bool)

(assert (=> b!1710943 (= e!1094251 (and tp!488870 tp!488869))))

(declare-fun b!1710942 () Bool)

(declare-fun tp!488871 () Bool)

(assert (=> b!1710942 (= e!1094251 tp!488871)))

(assert (=> b!1710060 (= tp!488710 e!1094251)))

(declare-fun b!1710941 () Bool)

(declare-fun tp!488872 () Bool)

(declare-fun tp!488868 () Bool)

(assert (=> b!1710941 (= e!1094251 (and tp!488872 tp!488868))))

(declare-fun b!1710940 () Bool)

(assert (=> b!1710940 (= e!1094251 tp_is_empty!7497)))

(assert (= (and b!1710060 ((_ is ElementMatch!4627) (reg!4956 (regex!3299 (h!24073 rules!3447))))) b!1710940))

(assert (= (and b!1710060 ((_ is Concat!8017) (reg!4956 (regex!3299 (h!24073 rules!3447))))) b!1710941))

(assert (= (and b!1710060 ((_ is Star!4627) (reg!4956 (regex!3299 (h!24073 rules!3447))))) b!1710942))

(assert (= (and b!1710060 ((_ is Union!4627) (reg!4956 (regex!3299 (h!24073 rules!3447))))) b!1710943))

(declare-fun b!1710946 () Bool)

(declare-fun b_free!46387 () Bool)

(declare-fun b_next!47091 () Bool)

(assert (=> b!1710946 (= b_free!46387 (not b_next!47091))))

(declare-fun tb!100977 () Bool)

(declare-fun t!158286 () Bool)

(assert (=> (and b!1710946 (= (toValue!4798 (transformation!3299 (h!24073 (t!158185 (t!158185 rules!3447))))) (toValue!4798 (transformation!3299 (rule!5233 (_1!10595 (get!5492 lt!653220)))))) t!158286) tb!100977))

(declare-fun result!121326 () Bool)

(assert (= result!121326 result!121256))

(assert (=> d!524710 t!158286))

(declare-fun t!158288 () Bool)

(declare-fun tb!100979 () Bool)

(assert (=> (and b!1710946 (= (toValue!4798 (transformation!3299 (h!24073 (t!158185 (t!158185 rules!3447))))) (toValue!4798 (transformation!3299 (rule!5233 (_1!10595 (get!5492 lt!653261)))))) t!158288) tb!100979))

(declare-fun result!121328 () Bool)

(assert (= result!121328 result!121282))

(assert (=> d!524770 t!158288))

(declare-fun tp!488873 () Bool)

(declare-fun b_and!123865 () Bool)

(assert (=> b!1710946 (= tp!488873 (and (=> t!158286 result!121326) (=> t!158288 result!121328) b_and!123865))))

(declare-fun b_free!46389 () Bool)

(declare-fun b_next!47093 () Bool)

(assert (=> b!1710946 (= b_free!46389 (not b_next!47093))))

(declare-fun tb!100981 () Bool)

(declare-fun t!158290 () Bool)

(assert (=> (and b!1710946 (= (toChars!4657 (transformation!3299 (h!24073 (t!158185 (t!158185 rules!3447))))) (toChars!4657 (transformation!3299 (rule!5233 token!523)))) t!158290) tb!100981))

(declare-fun result!121330 () Bool)

(assert (= result!121330 result!121214))

(assert (=> d!524554 t!158290))

(assert (=> b!1709994 t!158290))

(declare-fun t!158292 () Bool)

(declare-fun tb!100983 () Bool)

(assert (=> (and b!1710946 (= (toChars!4657 (transformation!3299 (h!24073 (t!158185 (t!158185 rules!3447))))) (toChars!4657 (transformation!3299 (rule!5233 (_1!10595 (get!5492 lt!653220)))))) t!158292) tb!100983))

(declare-fun result!121332 () Bool)

(assert (= result!121332 result!121274))

(assert (=> d!524758 t!158292))

(declare-fun tb!100985 () Bool)

(declare-fun t!158294 () Bool)

(assert (=> (and b!1710946 (= (toChars!4657 (transformation!3299 (h!24073 (t!158185 (t!158185 rules!3447))))) (toChars!4657 (transformation!3299 (rule!5233 (_1!10595 (get!5492 lt!653261)))))) t!158294) tb!100985))

(declare-fun result!121334 () Bool)

(assert (= result!121334 result!121306))

(assert (=> d!524854 t!158294))

(declare-fun b_and!123867 () Bool)

(declare-fun tp!488874 () Bool)

(assert (=> b!1710946 (= tp!488874 (and (=> t!158290 result!121330) (=> t!158292 result!121332) (=> t!158294 result!121334) b_and!123867))))

(declare-fun e!1094255 () Bool)

(assert (=> b!1710946 (= e!1094255 (and tp!488873 tp!488874))))

(declare-fun tp!488875 () Bool)

(declare-fun e!1094252 () Bool)

(declare-fun b!1710945 () Bool)

(assert (=> b!1710945 (= e!1094252 (and tp!488875 (inv!24080 (tag!3595 (h!24073 (t!158185 (t!158185 rules!3447))))) (inv!24083 (transformation!3299 (h!24073 (t!158185 (t!158185 rules!3447))))) e!1094255))))

(declare-fun b!1710944 () Bool)

(declare-fun e!1094254 () Bool)

(declare-fun tp!488876 () Bool)

(assert (=> b!1710944 (= e!1094254 (and e!1094252 tp!488876))))

(assert (=> b!1710070 (= tp!488723 e!1094254)))

(assert (= b!1710945 b!1710946))

(assert (= b!1710944 b!1710945))

(assert (= (and b!1710070 ((_ is Cons!18672) (t!158185 (t!158185 rules!3447)))) b!1710944))

(declare-fun m!2114327 () Bool)

(assert (=> b!1710945 m!2114327))

(declare-fun m!2114329 () Bool)

(assert (=> b!1710945 m!2114329))

(declare-fun b!1710950 () Bool)

(declare-fun e!1094256 () Bool)

(declare-fun tp!488879 () Bool)

(declare-fun tp!488878 () Bool)

(assert (=> b!1710950 (= e!1094256 (and tp!488879 tp!488878))))

(declare-fun b!1710949 () Bool)

(declare-fun tp!488880 () Bool)

(assert (=> b!1710949 (= e!1094256 tp!488880)))

(assert (=> b!1710074 (= tp!488728 e!1094256)))

(declare-fun b!1710948 () Bool)

(declare-fun tp!488881 () Bool)

(declare-fun tp!488877 () Bool)

(assert (=> b!1710948 (= e!1094256 (and tp!488881 tp!488877))))

(declare-fun b!1710947 () Bool)

(assert (=> b!1710947 (= e!1094256 tp_is_empty!7497)))

(assert (= (and b!1710074 ((_ is ElementMatch!4627) (regOne!9766 (regex!3299 (rule!5233 token!523))))) b!1710947))

(assert (= (and b!1710074 ((_ is Concat!8017) (regOne!9766 (regex!3299 (rule!5233 token!523))))) b!1710948))

(assert (= (and b!1710074 ((_ is Star!4627) (regOne!9766 (regex!3299 (rule!5233 token!523))))) b!1710949))

(assert (= (and b!1710074 ((_ is Union!4627) (regOne!9766 (regex!3299 (rule!5233 token!523))))) b!1710950))

(declare-fun b!1710954 () Bool)

(declare-fun e!1094257 () Bool)

(declare-fun tp!488884 () Bool)

(declare-fun tp!488883 () Bool)

(assert (=> b!1710954 (= e!1094257 (and tp!488884 tp!488883))))

(declare-fun b!1710953 () Bool)

(declare-fun tp!488885 () Bool)

(assert (=> b!1710953 (= e!1094257 tp!488885)))

(assert (=> b!1710074 (= tp!488724 e!1094257)))

(declare-fun b!1710952 () Bool)

(declare-fun tp!488886 () Bool)

(declare-fun tp!488882 () Bool)

(assert (=> b!1710952 (= e!1094257 (and tp!488886 tp!488882))))

(declare-fun b!1710951 () Bool)

(assert (=> b!1710951 (= e!1094257 tp_is_empty!7497)))

(assert (= (and b!1710074 ((_ is ElementMatch!4627) (regTwo!9766 (regex!3299 (rule!5233 token!523))))) b!1710951))

(assert (= (and b!1710074 ((_ is Concat!8017) (regTwo!9766 (regex!3299 (rule!5233 token!523))))) b!1710952))

(assert (= (and b!1710074 ((_ is Star!4627) (regTwo!9766 (regex!3299 (rule!5233 token!523))))) b!1710953))

(assert (= (and b!1710074 ((_ is Union!4627) (regTwo!9766 (regex!3299 (rule!5233 token!523))))) b!1710954))

(declare-fun b!1710958 () Bool)

(declare-fun e!1094258 () Bool)

(declare-fun tp!488889 () Bool)

(declare-fun tp!488888 () Bool)

(assert (=> b!1710958 (= e!1094258 (and tp!488889 tp!488888))))

(declare-fun b!1710957 () Bool)

(declare-fun tp!488890 () Bool)

(assert (=> b!1710957 (= e!1094258 tp!488890)))

(assert (=> b!1710071 (= tp!488722 e!1094258)))

(declare-fun b!1710956 () Bool)

(declare-fun tp!488891 () Bool)

(declare-fun tp!488887 () Bool)

(assert (=> b!1710956 (= e!1094258 (and tp!488891 tp!488887))))

(declare-fun b!1710955 () Bool)

(assert (=> b!1710955 (= e!1094258 tp_is_empty!7497)))

(assert (= (and b!1710071 ((_ is ElementMatch!4627) (regex!3299 (h!24073 (t!158185 rules!3447))))) b!1710955))

(assert (= (and b!1710071 ((_ is Concat!8017) (regex!3299 (h!24073 (t!158185 rules!3447))))) b!1710956))

(assert (= (and b!1710071 ((_ is Star!4627) (regex!3299 (h!24073 (t!158185 rules!3447))))) b!1710957))

(assert (= (and b!1710071 ((_ is Union!4627) (regex!3299 (h!24073 (t!158185 rules!3447))))) b!1710958))

(declare-fun b!1710962 () Bool)

(declare-fun e!1094259 () Bool)

(declare-fun tp!488894 () Bool)

(declare-fun tp!488893 () Bool)

(assert (=> b!1710962 (= e!1094259 (and tp!488894 tp!488893))))

(declare-fun b!1710961 () Bool)

(declare-fun tp!488895 () Bool)

(assert (=> b!1710961 (= e!1094259 tp!488895)))

(assert (=> b!1710075 (= tp!488727 e!1094259)))

(declare-fun b!1710960 () Bool)

(declare-fun tp!488896 () Bool)

(declare-fun tp!488892 () Bool)

(assert (=> b!1710960 (= e!1094259 (and tp!488896 tp!488892))))

(declare-fun b!1710959 () Bool)

(assert (=> b!1710959 (= e!1094259 tp_is_empty!7497)))

(assert (= (and b!1710075 ((_ is ElementMatch!4627) (reg!4956 (regex!3299 (rule!5233 token!523))))) b!1710959))

(assert (= (and b!1710075 ((_ is Concat!8017) (reg!4956 (regex!3299 (rule!5233 token!523))))) b!1710960))

(assert (= (and b!1710075 ((_ is Star!4627) (reg!4956 (regex!3299 (rule!5233 token!523))))) b!1710961))

(assert (= (and b!1710075 ((_ is Union!4627) (reg!4956 (regex!3299 (rule!5233 token!523))))) b!1710962))

(declare-fun b!1710963 () Bool)

(declare-fun e!1094260 () Bool)

(declare-fun tp!488897 () Bool)

(assert (=> b!1710963 (= e!1094260 (and tp_is_empty!7497 tp!488897))))

(assert (=> b!1710082 (= tp!488732 e!1094260)))

(assert (= (and b!1710082 ((_ is Cons!18671) (t!158184 (originalCharacters!4113 token!523)))) b!1710963))

(declare-fun e!1094265 () Bool)

(declare-fun b!1710972 () Bool)

(declare-fun tp!488904 () Bool)

(declare-fun tp!488905 () Bool)

(assert (=> b!1710972 (= e!1094265 (and (inv!24087 (left!14889 (c!280096 (dynLambda!8485 (toChars!4657 (transformation!3299 (rule!5233 token!523))) (value!103694 token!523))))) tp!488904 (inv!24087 (right!15219 (c!280096 (dynLambda!8485 (toChars!4657 (transformation!3299 (rule!5233 token!523))) (value!103694 token!523))))) tp!488905))))

(declare-fun b!1710974 () Bool)

(declare-fun e!1094266 () Bool)

(declare-fun tp!488906 () Bool)

(assert (=> b!1710974 (= e!1094266 tp!488906)))

(declare-fun b!1710973 () Bool)

(declare-fun inv!24094 (IArray!12425) Bool)

(assert (=> b!1710973 (= e!1094265 (and (inv!24094 (xs!9086 (c!280096 (dynLambda!8485 (toChars!4657 (transformation!3299 (rule!5233 token!523))) (value!103694 token!523))))) e!1094266))))

(assert (=> b!1709815 (= tp!488647 (and (inv!24087 (c!280096 (dynLambda!8485 (toChars!4657 (transformation!3299 (rule!5233 token!523))) (value!103694 token!523)))) e!1094265))))

(assert (= (and b!1709815 ((_ is Node!6210) (c!280096 (dynLambda!8485 (toChars!4657 (transformation!3299 (rule!5233 token!523))) (value!103694 token!523))))) b!1710972))

(assert (= b!1710973 b!1710974))

(assert (= (and b!1709815 ((_ is Leaf!9080) (c!280096 (dynLambda!8485 (toChars!4657 (transformation!3299 (rule!5233 token!523))) (value!103694 token!523))))) b!1710973))

(declare-fun m!2114331 () Bool)

(assert (=> b!1710972 m!2114331))

(declare-fun m!2114333 () Bool)

(assert (=> b!1710972 m!2114333))

(declare-fun m!2114335 () Bool)

(assert (=> b!1710973 m!2114335))

(assert (=> b!1709815 m!2112889))

(declare-fun b!1710978 () Bool)

(declare-fun e!1094267 () Bool)

(declare-fun tp!488909 () Bool)

(declare-fun tp!488908 () Bool)

(assert (=> b!1710978 (= e!1094267 (and tp!488909 tp!488908))))

(declare-fun b!1710977 () Bool)

(declare-fun tp!488910 () Bool)

(assert (=> b!1710977 (= e!1094267 tp!488910)))

(assert (=> b!1710059 (= tp!488711 e!1094267)))

(declare-fun b!1710976 () Bool)

(declare-fun tp!488911 () Bool)

(declare-fun tp!488907 () Bool)

(assert (=> b!1710976 (= e!1094267 (and tp!488911 tp!488907))))

(declare-fun b!1710975 () Bool)

(assert (=> b!1710975 (= e!1094267 tp_is_empty!7497)))

(assert (= (and b!1710059 ((_ is ElementMatch!4627) (regOne!9766 (regex!3299 (h!24073 rules!3447))))) b!1710975))

(assert (= (and b!1710059 ((_ is Concat!8017) (regOne!9766 (regex!3299 (h!24073 rules!3447))))) b!1710976))

(assert (= (and b!1710059 ((_ is Star!4627) (regOne!9766 (regex!3299 (h!24073 rules!3447))))) b!1710977))

(assert (= (and b!1710059 ((_ is Union!4627) (regOne!9766 (regex!3299 (h!24073 rules!3447))))) b!1710978))

(declare-fun b!1710982 () Bool)

(declare-fun e!1094268 () Bool)

(declare-fun tp!488914 () Bool)

(declare-fun tp!488913 () Bool)

(assert (=> b!1710982 (= e!1094268 (and tp!488914 tp!488913))))

(declare-fun b!1710981 () Bool)

(declare-fun tp!488915 () Bool)

(assert (=> b!1710981 (= e!1094268 tp!488915)))

(assert (=> b!1710059 (= tp!488707 e!1094268)))

(declare-fun b!1710980 () Bool)

(declare-fun tp!488916 () Bool)

(declare-fun tp!488912 () Bool)

(assert (=> b!1710980 (= e!1094268 (and tp!488916 tp!488912))))

(declare-fun b!1710979 () Bool)

(assert (=> b!1710979 (= e!1094268 tp_is_empty!7497)))

(assert (= (and b!1710059 ((_ is ElementMatch!4627) (regTwo!9766 (regex!3299 (h!24073 rules!3447))))) b!1710979))

(assert (= (and b!1710059 ((_ is Concat!8017) (regTwo!9766 (regex!3299 (h!24073 rules!3447))))) b!1710980))

(assert (= (and b!1710059 ((_ is Star!4627) (regTwo!9766 (regex!3299 (h!24073 rules!3447))))) b!1710981))

(assert (= (and b!1710059 ((_ is Union!4627) (regTwo!9766 (regex!3299 (h!24073 rules!3447))))) b!1710982))

(declare-fun b!1710986 () Bool)

(declare-fun e!1094269 () Bool)

(declare-fun tp!488919 () Bool)

(declare-fun tp!488918 () Bool)

(assert (=> b!1710986 (= e!1094269 (and tp!488919 tp!488918))))

(declare-fun b!1710985 () Bool)

(declare-fun tp!488920 () Bool)

(assert (=> b!1710985 (= e!1094269 tp!488920)))

(assert (=> b!1710076 (= tp!488726 e!1094269)))

(declare-fun b!1710984 () Bool)

(declare-fun tp!488921 () Bool)

(declare-fun tp!488917 () Bool)

(assert (=> b!1710984 (= e!1094269 (and tp!488921 tp!488917))))

(declare-fun b!1710983 () Bool)

(assert (=> b!1710983 (= e!1094269 tp_is_empty!7497)))

(assert (= (and b!1710076 ((_ is ElementMatch!4627) (regOne!9767 (regex!3299 (rule!5233 token!523))))) b!1710983))

(assert (= (and b!1710076 ((_ is Concat!8017) (regOne!9767 (regex!3299 (rule!5233 token!523))))) b!1710984))

(assert (= (and b!1710076 ((_ is Star!4627) (regOne!9767 (regex!3299 (rule!5233 token!523))))) b!1710985))

(assert (= (and b!1710076 ((_ is Union!4627) (regOne!9767 (regex!3299 (rule!5233 token!523))))) b!1710986))

(declare-fun b!1710990 () Bool)

(declare-fun e!1094270 () Bool)

(declare-fun tp!488924 () Bool)

(declare-fun tp!488923 () Bool)

(assert (=> b!1710990 (= e!1094270 (and tp!488924 tp!488923))))

(declare-fun b!1710989 () Bool)

(declare-fun tp!488925 () Bool)

(assert (=> b!1710989 (= e!1094270 tp!488925)))

(assert (=> b!1710076 (= tp!488725 e!1094270)))

(declare-fun b!1710988 () Bool)

(declare-fun tp!488926 () Bool)

(declare-fun tp!488922 () Bool)

(assert (=> b!1710988 (= e!1094270 (and tp!488926 tp!488922))))

(declare-fun b!1710987 () Bool)

(assert (=> b!1710987 (= e!1094270 tp_is_empty!7497)))

(assert (= (and b!1710076 ((_ is ElementMatch!4627) (regTwo!9767 (regex!3299 (rule!5233 token!523))))) b!1710987))

(assert (= (and b!1710076 ((_ is Concat!8017) (regTwo!9767 (regex!3299 (rule!5233 token!523))))) b!1710988))

(assert (= (and b!1710076 ((_ is Star!4627) (regTwo!9767 (regex!3299 (rule!5233 token!523))))) b!1710989))

(assert (= (and b!1710076 ((_ is Union!4627) (regTwo!9767 (regex!3299 (rule!5233 token!523))))) b!1710990))

(declare-fun b_lambda!53987 () Bool)

(assert (= b_lambda!53985 (or d!524562 b_lambda!53987)))

(declare-fun bs!401779 () Bool)

(declare-fun d!525042 () Bool)

(assert (= bs!401779 (and d!525042 d!524562)))

(assert (=> bs!401779 (= (dynLambda!8497 lambda!68796 (h!24073 rules!3447)) (regex!3299 (h!24073 rules!3447)))))

(assert (=> b!1710795 d!525042))

(check-sat b_and!123829 (not b!1710920) (not b!1710334) (not d!524930) (not d!524758) (not b!1710927) (not b!1710956) (not b!1710843) (not b!1710810) (not d!524852) (not b!1710301) (not b!1710828) (not b!1710903) (not b_next!47069) (not b!1710918) (not b!1710787) (not b_next!47067) (not d!524886) (not b!1710913) (not d!524968) (not b_next!47085) (not b!1710559) (not b!1710901) (not d!524870) (not bm!109431) (not d!525030) (not b!1710823) (not b!1710880) (not b!1710949) (not b!1710982) (not d!525006) (not b!1710960) (not b!1710555) (not b!1710882) (not b!1710933) (not b!1710838) (not b!1710963) b_and!123867 (not d!524842) (not b!1710194) (not b!1710327) (not b!1710973) (not b!1710800) (not b_next!47071) (not b!1710981) (not d!525014) (not b!1710784) (not b!1710323) (not b!1710808) (not tb!100927) (not bm!109434) (not d!524850) (not b!1710329) (not b!1710246) (not b!1710330) (not b!1710573) (not b_next!47077) (not b!1710923) (not b_lambda!53973) (not b!1710878) (not b!1710934) (not d!524994) (not b!1710988) (not d!524652) b_and!123853 (not b!1710862) (not b!1710551) b_and!123859 (not b!1710190) (not d!525012) (not b!1710495) (not b!1710945) (not b!1710522) (not b!1710893) (not b_next!47073) (not b!1710939) (not b!1710566) (not b!1710929) (not bm!109430) (not b!1710829) b_and!123857 (not b!1710826) (not d!524670) (not b!1710798) b_and!123855 (not bm!109413) (not d!524668) (not b!1710895) (not b!1710912) (not b!1710824) (not b!1710950) (not b!1710961) (not b!1710556) (not b!1710930) (not b!1710328) (not b!1710904) (not b!1710326) (not b!1710593) (not b!1710906) (not d!524872) (not b!1710948) (not d!524682) (not b!1710977) (not b!1710302) (not b_lambda!53981) (not d!524922) (not b!1710917) (not b!1710484) (not b!1710840) (not b!1710799) (not tb!100959) (not d!525028) (not b!1710896) (not b!1710785) (not d!525040) (not d!524772) (not b!1710974) (not b!1710922) (not d!524692) (not b!1710894) (not b!1710984) (not d!524756) (not b!1710925) (not b!1710958) (not b!1710830) (not b!1710600) (not b_next!47091) (not d!524848) (not b!1710247) (not b!1710582) (not b!1710822) (not b!1710523) b_and!123835 (not b!1710957) (not d!524988) (not b!1710300) (not b!1710558) (not b!1710954) (not b!1710797) (not b!1710513) (not bm!109433) (not b!1710571) (not b!1710941) (not b!1710900) (not b!1710336) (not b_lambda!53961) (not b!1710557) (not b!1710989) (not d!524978) (not b_next!47083) (not b!1710789) (not d!525018) (not d!524962) (not b!1710926) (not bm!109449) (not d!524992) (not bm!109451) (not d!524998) (not b!1710553) (not b!1710942) (not b!1710978) (not b!1710889) (not b!1710321) (not d!525032) (not b_lambda!53975) (not b!1710887) (not d!525024) (not b!1710496) (not b!1710322) (not b!1710868) (not b!1710486) (not b!1710871) (not b!1710817) (not tb!100935) (not b!1710953) (not d!524898) (not b!1710259) (not d!524776) (not b!1710567) (not b!1710795) (not b!1710332) (not b!1710844) (not b!1710952) (not d!524990) (not d!524754) (not d!524914) (not b!1710914) (not b!1710972) (not d!524854) (not b!1710884) (not bm!109453) (not d!524928) (not b!1710786) (not d!524774) (not d!524938) (not b_next!47075) (not b!1710139) (not d!525008) (not b!1710935) b_and!123865 (not b_lambda!53969) (not b!1710943) (not b!1710890) (not b!1710572) (not d!524958) (not b!1710193) (not d!524974) (not b_next!47093) (not b!1710521) (not b!1710892) (not d!524904) (not b!1710938) (not b!1710552) (not d!524712) (not b!1710759) (not b!1710931) (not bm!109452) b_and!123831 (not d!524924) (not b!1710788) (not b!1710569) (not b!1710944) (not b!1710986) (not b!1710806) (not b!1710908) (not b!1710937) (not b!1710888) (not d!524722) (not b!1710542) (not d!524714) tp_is_empty!7497 (not b!1710980) (not b!1710502) (not bm!109414) (not d!524752) (not d!524944) (not b!1710885) (not b!1710819) (not b!1710866) (not b!1710861) (not b!1710487) (not b!1710783) (not b!1710260) (not b!1709815) (not b!1710324) (not b_lambda!53987) (not b!1710842) (not b!1710898) (not b_lambda!53963) (not b!1710909) (not d!524696) (not d!524686) (not b!1710881) (not b!1710488) (not b!1710985) (not bm!109450) (not b!1710837) (not b!1710870) (not d!525010) (not d!525034) (not b!1710598) (not b!1710990) (not b!1710291) b_and!123833 (not b!1710916) (not b!1710515) (not d!525036) (not d!524766) (not b!1710595) (not tb!100911) (not b!1710543) (not b!1710701) (not b!1710976) (not b!1710902) (not d!524964) (not b!1710897) (not b!1710962) (not d!524996) (not b!1710864) (not b!1710921) (not d!524656))
(check-sat b_and!123829 b_and!123867 (not b_next!47071) (not b_next!47077) (not b_next!47073) b_and!123857 b_and!123855 (not b_next!47091) b_and!123835 (not b_next!47083) (not b_next!47093) b_and!123831 b_and!123833 (not b_next!47085) (not b_next!47069) (not b_next!47067) b_and!123859 b_and!123853 b_and!123865 (not b_next!47075))
