; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!168658 () Bool)

(assert start!168658)

(declare-fun b!1720726 () Bool)

(declare-fun b_free!46859 () Bool)

(declare-fun b_next!47563 () Bool)

(assert (=> b!1720726 (= b_free!46859 (not b_next!47563))))

(declare-fun tp!491296 () Bool)

(declare-fun b_and!125579 () Bool)

(assert (=> b!1720726 (= tp!491296 b_and!125579)))

(declare-fun b_free!46861 () Bool)

(declare-fun b_next!47565 () Bool)

(assert (=> b!1720726 (= b_free!46861 (not b_next!47565))))

(declare-fun tp!491287 () Bool)

(declare-fun b_and!125581 () Bool)

(assert (=> b!1720726 (= tp!491287 b_and!125581)))

(declare-fun b!1720708 () Bool)

(declare-fun b_free!46863 () Bool)

(declare-fun b_next!47567 () Bool)

(assert (=> b!1720708 (= b_free!46863 (not b_next!47567))))

(declare-fun tp!491293 () Bool)

(declare-fun b_and!125583 () Bool)

(assert (=> b!1720708 (= tp!491293 b_and!125583)))

(declare-fun b_free!46865 () Bool)

(declare-fun b_next!47569 () Bool)

(assert (=> b!1720708 (= b_free!46865 (not b_next!47569))))

(declare-fun tp!491292 () Bool)

(declare-fun b_and!125585 () Bool)

(assert (=> b!1720708 (= tp!491292 b_and!125585)))

(declare-fun b!1720718 () Bool)

(declare-fun b_free!46867 () Bool)

(declare-fun b_next!47571 () Bool)

(assert (=> b!1720718 (= b_free!46867 (not b_next!47571))))

(declare-fun tp!491294 () Bool)

(declare-fun b_and!125587 () Bool)

(assert (=> b!1720718 (= tp!491294 b_and!125587)))

(declare-fun b_free!46869 () Bool)

(declare-fun b_next!47573 () Bool)

(assert (=> b!1720718 (= b_free!46869 (not b_next!47573))))

(declare-fun tp!491295 () Bool)

(declare-fun b_and!125589 () Bool)

(assert (=> b!1720718 (= tp!491295 b_and!125589)))

(declare-fun b!1720740 () Bool)

(declare-fun e!1100547 () Bool)

(assert (=> b!1720740 (= e!1100547 true)))

(declare-fun b!1720739 () Bool)

(declare-fun e!1100546 () Bool)

(assert (=> b!1720739 (= e!1100546 e!1100547)))

(declare-fun b!1720738 () Bool)

(declare-fun e!1100545 () Bool)

(assert (=> b!1720738 (= e!1100545 e!1100546)))

(declare-fun b!1720712 () Bool)

(assert (=> b!1720712 e!1100545))

(assert (= b!1720739 b!1720740))

(assert (= b!1720738 b!1720739))

(assert (= b!1720712 b!1720738))

(declare-fun lambda!69104 () Int)

(declare-fun order!11453 () Int)

(declare-fun order!11451 () Int)

(declare-datatypes ((List!18894 0))(
  ( (Nil!18824) (Cons!18824 (h!24225 (_ BitVec 16)) (t!159425 List!18894)) )
))
(declare-datatypes ((TokenValue!3423 0))(
  ( (FloatLiteralValue!6846 (text!24406 List!18894)) (TokenValueExt!3422 (__x!12148 Int)) (Broken!17115 (value!104637 List!18894)) (Object!3492) (End!3423) (Def!3423) (Underscore!3423) (Match!3423) (Else!3423) (Error!3423) (Case!3423) (If!3423) (Extends!3423) (Abstract!3423) (Class!3423) (Val!3423) (DelimiterValue!6846 (del!3483 List!18894)) (KeywordValue!3429 (value!104638 List!18894)) (CommentValue!6846 (value!104639 List!18894)) (WhitespaceValue!6846 (value!104640 List!18894)) (IndentationValue!3423 (value!104641 List!18894)) (String!21446) (Int32!3423) (Broken!17116 (value!104642 List!18894)) (Boolean!3424) (Unit!32664) (OperatorValue!3426 (op!3483 List!18894)) (IdentifierValue!6846 (value!104643 List!18894)) (IdentifierValue!6847 (value!104644 List!18894)) (WhitespaceValue!6847 (value!104645 List!18894)) (True!6846) (False!6846) (Broken!17117 (value!104646 List!18894)) (Broken!17118 (value!104647 List!18894)) (True!6847) (RightBrace!3423) (RightBracket!3423) (Colon!3423) (Null!3423) (Comma!3423) (LeftBracket!3423) (False!6847) (LeftBrace!3423) (ImaginaryLiteralValue!3423 (text!24407 List!18894)) (StringLiteralValue!10269 (value!104648 List!18894)) (EOFValue!3423 (value!104649 List!18894)) (IdentValue!3423 (value!104650 List!18894)) (DelimiterValue!6847 (value!104651 List!18894)) (DedentValue!3423 (value!104652 List!18894)) (NewLineValue!3423 (value!104653 List!18894)) (IntegerValue!10269 (value!104654 (_ BitVec 32)) (text!24408 List!18894)) (IntegerValue!10270 (value!104655 Int) (text!24409 List!18894)) (Times!3423) (Or!3423) (Equal!3423) (Minus!3423) (Broken!17119 (value!104656 List!18894)) (And!3423) (Div!3423) (LessEqual!3423) (Mod!3423) (Concat!8084) (Not!3423) (Plus!3423) (SpaceValue!3423 (value!104657 List!18894)) (IntegerValue!10271 (value!104658 Int) (text!24410 List!18894)) (StringLiteralValue!10270 (text!24411 List!18894)) (FloatLiteralValue!6847 (text!24412 List!18894)) (BytesLiteralValue!3423 (value!104659 List!18894)) (CommentValue!6847 (value!104660 List!18894)) (StringLiteralValue!10271 (value!104661 List!18894)) (ErrorTokenValue!3423 (msg!3484 List!18894)) )
))
(declare-datatypes ((C!9496 0))(
  ( (C!9497 (val!5344 Int)) )
))
(declare-datatypes ((List!18895 0))(
  ( (Nil!18825) (Cons!18825 (h!24226 C!9496) (t!159426 List!18895)) )
))
(declare-datatypes ((String!21447 0))(
  ( (String!21448 (value!104662 String)) )
))
(declare-datatypes ((Regex!4661 0))(
  ( (ElementMatch!4661 (c!281604 C!9496)) (Concat!8085 (regOne!9834 Regex!4661) (regTwo!9834 Regex!4661)) (EmptyExpr!4661) (Star!4661 (reg!4990 Regex!4661)) (EmptyLang!4661) (Union!4661 (regOne!9835 Regex!4661) (regTwo!9835 Regex!4661)) )
))
(declare-datatypes ((IArray!12527 0))(
  ( (IArray!12528 (innerList!6321 List!18895)) )
))
(declare-datatypes ((Conc!6261 0))(
  ( (Node!6261 (left!15017 Conc!6261) (right!15347 Conc!6261) (csize!12752 Int) (cheight!6472 Int)) (Leaf!9148 (xs!9137 IArray!12527) (csize!12753 Int)) (Empty!6261) )
))
(declare-datatypes ((BalanceConc!12466 0))(
  ( (BalanceConc!12467 (c!281605 Conc!6261)) )
))
(declare-datatypes ((TokenValueInjection!6506 0))(
  ( (TokenValueInjection!6507 (toValue!4840 Int) (toChars!4699 Int)) )
))
(declare-datatypes ((Rule!6466 0))(
  ( (Rule!6467 (regex!3333 Regex!4661) (tag!3643 String!21447) (isSeparator!3333 Bool) (transformation!3333 TokenValueInjection!6506)) )
))
(declare-datatypes ((Token!6232 0))(
  ( (Token!6233 (value!104663 TokenValue!3423) (rule!5279 Rule!6466) (size!14956 Int) (originalCharacters!4147 List!18895)) )
))
(declare-datatypes ((tuple2!18522 0))(
  ( (tuple2!18523 (_1!10663 Token!6232) (_2!10663 List!18895)) )
))
(declare-fun lt!658044 () tuple2!18522)

(declare-fun dynLambda!8652 (Int Int) Int)

(declare-fun dynLambda!8653 (Int Int) Int)

(assert (=> b!1720740 (< (dynLambda!8652 order!11451 (toValue!4840 (transformation!3333 (rule!5279 (_1!10663 lt!658044))))) (dynLambda!8653 order!11453 lambda!69104))))

(declare-fun order!11455 () Int)

(declare-fun dynLambda!8654 (Int Int) Int)

(assert (=> b!1720740 (< (dynLambda!8654 order!11455 (toChars!4699 (transformation!3333 (rule!5279 (_1!10663 lt!658044))))) (dynLambda!8653 order!11453 lambda!69104))))

(declare-fun b!1720701 () Bool)

(declare-fun res!771942 () Bool)

(declare-fun e!1100518 () Bool)

(assert (=> b!1720701 (=> res!771942 e!1100518)))

(declare-fun suffix!1421 () List!18895)

(declare-fun isEmpty!11837 (List!18895) Bool)

(assert (=> b!1720701 (= res!771942 (isEmpty!11837 suffix!1421))))

(declare-fun b!1720702 () Bool)

(declare-fun e!1100519 () Bool)

(declare-fun e!1100516 () Bool)

(assert (=> b!1720702 (= e!1100519 e!1100516)))

(declare-fun res!771933 () Bool)

(assert (=> b!1720702 (=> res!771933 e!1100516)))

(declare-fun lt!658054 () List!18895)

(assert (=> b!1720702 (= res!771933 (not (= lt!658054 (_2!10663 lt!658044))))))

(assert (=> b!1720702 (= (_2!10663 lt!658044) lt!658054)))

(declare-fun lt!658065 () List!18895)

(declare-fun lt!658059 () List!18895)

(declare-datatypes ((Unit!32665 0))(
  ( (Unit!32666) )
))
(declare-fun lt!658048 () Unit!32665)

(declare-fun lemmaSamePrefixThenSameSuffix!718 (List!18895 List!18895 List!18895 List!18895 List!18895) Unit!32665)

(assert (=> b!1720702 (= lt!658048 (lemmaSamePrefixThenSameSuffix!718 lt!658059 (_2!10663 lt!658044) lt!658059 lt!658054 lt!658065))))

(declare-fun getSuffix!768 (List!18895 List!18895) List!18895)

(assert (=> b!1720702 (= lt!658054 (getSuffix!768 lt!658065 lt!658059))))

(declare-datatypes ((LexerInterface!2962 0))(
  ( (LexerInterfaceExt!2959 (__x!12149 Int)) (Lexer!2960) )
))
(declare-fun thiss!24550 () LexerInterface!2962)

(declare-datatypes ((Option!3690 0))(
  ( (None!3689) (Some!3689 (v!25092 tuple2!18522)) )
))
(declare-fun maxPrefixOneRule!892 (LexerInterface!2962 Rule!6466 List!18895) Option!3690)

(declare-fun apply!5138 (TokenValueInjection!6506 BalanceConc!12466) TokenValue!3423)

(declare-fun seqFromList!2307 (List!18895) BalanceConc!12466)

(declare-fun size!14957 (List!18895) Int)

(assert (=> b!1720702 (= (maxPrefixOneRule!892 thiss!24550 (rule!5279 (_1!10663 lt!658044)) lt!658065) (Some!3689 (tuple2!18523 (Token!6233 (apply!5138 (transformation!3333 (rule!5279 (_1!10663 lt!658044))) (seqFromList!2307 lt!658059)) (rule!5279 (_1!10663 lt!658044)) (size!14957 lt!658059) lt!658059) (_2!10663 lt!658044))))))

(declare-datatypes ((List!18896 0))(
  ( (Nil!18826) (Cons!18826 (h!24227 Rule!6466) (t!159427 List!18896)) )
))
(declare-fun rules!3447 () List!18896)

(declare-fun lt!658058 () Unit!32665)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!291 (LexerInterface!2962 List!18896 List!18895 List!18895 List!18895 Rule!6466) Unit!32665)

(assert (=> b!1720702 (= lt!658058 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!291 thiss!24550 rules!3447 lt!658059 lt!658065 (_2!10663 lt!658044) (rule!5279 (_1!10663 lt!658044))))))

(declare-fun b!1720703 () Bool)

(declare-fun e!1100526 () Bool)

(assert (=> b!1720703 (= e!1100518 e!1100526)))

(declare-fun res!771943 () Bool)

(assert (=> b!1720703 (=> res!771943 e!1100526)))

(declare-fun isPrefix!1574 (List!18895 List!18895) Bool)

(assert (=> b!1720703 (= res!771943 (not (isPrefix!1574 lt!658059 lt!658065)))))

(declare-fun ++!5158 (List!18895 List!18895) List!18895)

(assert (=> b!1720703 (isPrefix!1574 lt!658059 (++!5158 lt!658059 (_2!10663 lt!658044)))))

(declare-fun lt!658064 () Unit!32665)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1084 (List!18895 List!18895) Unit!32665)

(assert (=> b!1720703 (= lt!658064 (lemmaConcatTwoListThenFirstIsPrefix!1084 lt!658059 (_2!10663 lt!658044)))))

(declare-fun lt!658045 () BalanceConc!12466)

(declare-fun list!7606 (BalanceConc!12466) List!18895)

(assert (=> b!1720703 (= lt!658059 (list!7606 lt!658045))))

(declare-fun charsOf!1982 (Token!6232) BalanceConc!12466)

(assert (=> b!1720703 (= lt!658045 (charsOf!1982 (_1!10663 lt!658044)))))

(declare-fun e!1100528 () Bool)

(assert (=> b!1720703 e!1100528))

(declare-fun res!771939 () Bool)

(assert (=> b!1720703 (=> (not res!771939) (not e!1100528))))

(declare-datatypes ((Option!3691 0))(
  ( (None!3690) (Some!3690 (v!25093 Rule!6466)) )
))
(declare-fun lt!658046 () Option!3691)

(declare-fun isDefined!3033 (Option!3691) Bool)

(assert (=> b!1720703 (= res!771939 (isDefined!3033 lt!658046))))

(declare-fun getRuleFromTag!383 (LexerInterface!2962 List!18896 String!21447) Option!3691)

(assert (=> b!1720703 (= lt!658046 (getRuleFromTag!383 thiss!24550 rules!3447 (tag!3643 (rule!5279 (_1!10663 lt!658044)))))))

(declare-fun lt!658063 () Unit!32665)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!383 (LexerInterface!2962 List!18896 List!18895 Token!6232) Unit!32665)

(assert (=> b!1720703 (= lt!658063 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!383 thiss!24550 rules!3447 lt!658065 (_1!10663 lt!658044)))))

(declare-fun lt!658056 () Option!3690)

(declare-fun get!5574 (Option!3690) tuple2!18522)

(assert (=> b!1720703 (= lt!658044 (get!5574 lt!658056))))

(declare-fun lt!658057 () Unit!32665)

(declare-fun lt!658051 () List!18895)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!486 (LexerInterface!2962 List!18896 List!18895 List!18895) Unit!32665)

(assert (=> b!1720703 (= lt!658057 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!486 thiss!24550 rules!3447 lt!658051 suffix!1421))))

(declare-fun maxPrefix!1516 (LexerInterface!2962 List!18896 List!18895) Option!3690)

(assert (=> b!1720703 (= lt!658056 (maxPrefix!1516 thiss!24550 rules!3447 lt!658065))))

(assert (=> b!1720703 (isPrefix!1574 lt!658051 lt!658065)))

(declare-fun lt!658050 () Unit!32665)

(assert (=> b!1720703 (= lt!658050 (lemmaConcatTwoListThenFirstIsPrefix!1084 lt!658051 suffix!1421))))

(assert (=> b!1720703 (= lt!658065 (++!5158 lt!658051 suffix!1421))))

(declare-fun b!1720704 () Bool)

(declare-fun res!771930 () Bool)

(declare-fun e!1100529 () Bool)

(assert (=> b!1720704 (=> (not res!771930) (not e!1100529))))

(declare-fun lt!658062 () tuple2!18522)

(assert (=> b!1720704 (= res!771930 (isEmpty!11837 (_2!10663 lt!658062)))))

(declare-fun b!1720705 () Bool)

(declare-fun e!1100538 () Bool)

(declare-fun e!1100537 () Bool)

(declare-fun tp!491288 () Bool)

(assert (=> b!1720705 (= e!1100538 (and e!1100537 tp!491288))))

(declare-fun b!1720707 () Bool)

(declare-fun res!771940 () Bool)

(assert (=> b!1720707 (=> res!771940 e!1100518)))

(declare-fun prefixMatch!546 (Regex!4661 List!18895) Bool)

(declare-fun rulesRegex!691 (LexerInterface!2962 List!18896) Regex!4661)

(declare-fun head!3886 (List!18895) C!9496)

(assert (=> b!1720707 (= res!771940 (prefixMatch!546 (rulesRegex!691 thiss!24550 rules!3447) (++!5158 lt!658051 (Cons!18825 (head!3886 suffix!1421) Nil!18825))))))

(declare-fun e!1100527 () Bool)

(assert (=> b!1720708 (= e!1100527 (and tp!491293 tp!491292))))

(declare-fun b!1720709 () Bool)

(declare-fun e!1100531 () Bool)

(declare-fun e!1100523 () Bool)

(assert (=> b!1720709 (= e!1100531 e!1100523)))

(declare-fun res!771937 () Bool)

(assert (=> b!1720709 (=> (not res!771937) (not e!1100523))))

(declare-fun lt!658055 () Option!3690)

(declare-fun isDefined!3034 (Option!3690) Bool)

(assert (=> b!1720709 (= res!771937 (isDefined!3034 lt!658055))))

(assert (=> b!1720709 (= lt!658055 (maxPrefix!1516 thiss!24550 rules!3447 lt!658051))))

(declare-fun token!523 () Token!6232)

(assert (=> b!1720709 (= lt!658051 (list!7606 (charsOf!1982 token!523)))))

(declare-fun b!1720710 () Bool)

(declare-fun e!1100534 () Bool)

(assert (=> b!1720710 (= e!1100528 e!1100534)))

(declare-fun res!771944 () Bool)

(assert (=> b!1720710 (=> (not res!771944) (not e!1100534))))

(declare-fun lt!658047 () Rule!6466)

(declare-fun matchR!2135 (Regex!4661 List!18895) Bool)

(assert (=> b!1720710 (= res!771944 (matchR!2135 (regex!3333 lt!658047) (list!7606 (charsOf!1982 (_1!10663 lt!658044)))))))

(declare-fun get!5575 (Option!3691) Rule!6466)

(assert (=> b!1720710 (= lt!658047 (get!5575 lt!658046))))

(declare-fun tp!491289 () Bool)

(declare-fun b!1720711 () Bool)

(declare-fun e!1100520 () Bool)

(declare-fun e!1100515 () Bool)

(declare-fun inv!24301 (String!21447) Bool)

(declare-fun inv!24306 (TokenValueInjection!6506) Bool)

(assert (=> b!1720711 (= e!1100520 (and tp!491289 (inv!24301 (tag!3643 (rule!5279 token!523))) (inv!24306 (transformation!3333 (rule!5279 token!523))) e!1100515))))

(declare-fun e!1100530 () Bool)

(assert (=> b!1720712 (= e!1100526 e!1100530)))

(declare-fun res!771936 () Bool)

(assert (=> b!1720712 (=> res!771936 e!1100530)))

(declare-fun Forall!708 (Int) Bool)

(assert (=> b!1720712 (= res!771936 (not (Forall!708 lambda!69104)))))

(declare-fun lt!658053 () Unit!32665)

(declare-fun lemmaInv!540 (TokenValueInjection!6506) Unit!32665)

(assert (=> b!1720712 (= lt!658053 (lemmaInv!540 (transformation!3333 (rule!5279 (_1!10663 lt!658044)))))))

(declare-fun b!1720713 () Bool)

(declare-fun res!771935 () Bool)

(assert (=> b!1720713 (=> res!771935 e!1100526)))

(assert (=> b!1720713 (= res!771935 (not (matchR!2135 (regex!3333 (rule!5279 (_1!10663 lt!658044))) lt!658059)))))

(declare-fun b!1720714 () Bool)

(assert (=> b!1720714 (= e!1100523 e!1100529)))

(declare-fun res!771925 () Bool)

(assert (=> b!1720714 (=> (not res!771925) (not e!1100529))))

(assert (=> b!1720714 (= res!771925 (= (_1!10663 lt!658062) token!523))))

(assert (=> b!1720714 (= lt!658062 (get!5574 lt!658055))))

(declare-fun b!1720715 () Bool)

(declare-fun res!771931 () Bool)

(declare-fun e!1100535 () Bool)

(assert (=> b!1720715 (=> res!771931 e!1100535)))

(declare-fun dynLambda!8655 (Int TokenValue!3423) BalanceConc!12466)

(assert (=> b!1720715 (= res!771931 (not (= lt!658045 (dynLambda!8655 (toChars!4699 (transformation!3333 (rule!5279 (_1!10663 lt!658044)))) (value!104663 (_1!10663 lt!658044))))))))

(declare-fun b!1720716 () Bool)

(assert (=> b!1720716 (= e!1100516 true)))

(declare-fun lt!658060 () Int)

(assert (=> b!1720716 (= lt!658060 (size!14957 lt!658065))))

(declare-fun e!1100524 () Bool)

(declare-fun rule!422 () Rule!6466)

(declare-fun b!1720717 () Bool)

(declare-fun tp!491290 () Bool)

(assert (=> b!1720717 (= e!1100524 (and tp!491290 (inv!24301 (tag!3643 rule!422)) (inv!24306 (transformation!3333 rule!422)) e!1100527))))

(assert (=> b!1720718 (= e!1100515 (and tp!491294 tp!491295))))

(declare-fun b!1720719 () Bool)

(assert (=> b!1720719 (= e!1100535 e!1100519)))

(declare-fun res!771934 () Bool)

(assert (=> b!1720719 (=> res!771934 e!1100519)))

(declare-fun size!14958 (BalanceConc!12466) Int)

(assert (=> b!1720719 (= res!771934 (not (= lt!658056 (Some!3689 (tuple2!18523 (Token!6233 (apply!5138 (transformation!3333 (rule!5279 (_1!10663 lt!658044))) lt!658045) (rule!5279 (_1!10663 lt!658044)) (size!14958 lt!658045) lt!658059) (_2!10663 lt!658044))))))))

(declare-fun lt!658066 () Unit!32665)

(declare-fun lemmaCharactersSize!405 (Token!6232) Unit!32665)

(assert (=> b!1720719 (= lt!658066 (lemmaCharactersSize!405 (_1!10663 lt!658044)))))

(declare-fun lt!658052 () Unit!32665)

(declare-fun lemmaEqSameImage!258 (TokenValueInjection!6506 BalanceConc!12466 BalanceConc!12466) Unit!32665)

(assert (=> b!1720719 (= lt!658052 (lemmaEqSameImage!258 (transformation!3333 (rule!5279 (_1!10663 lt!658044))) lt!658045 (seqFromList!2307 (originalCharacters!4147 (_1!10663 lt!658044)))))))

(declare-fun res!771927 () Bool)

(assert (=> start!168658 (=> (not res!771927) (not e!1100531))))

(get-info :version)

(assert (=> start!168658 (= res!771927 ((_ is Lexer!2960) thiss!24550))))

(assert (=> start!168658 e!1100531))

(declare-fun e!1100536 () Bool)

(assert (=> start!168658 e!1100536))

(assert (=> start!168658 e!1100524))

(assert (=> start!168658 true))

(declare-fun e!1100517 () Bool)

(declare-fun inv!24307 (Token!6232) Bool)

(assert (=> start!168658 (and (inv!24307 token!523) e!1100517)))

(assert (=> start!168658 e!1100538))

(declare-fun b!1720706 () Bool)

(declare-fun res!771929 () Bool)

(assert (=> b!1720706 (=> (not res!771929) (not e!1100531))))

(declare-fun isEmpty!11838 (List!18896) Bool)

(assert (=> b!1720706 (= res!771929 (not (isEmpty!11838 rules!3447)))))

(declare-fun b!1720720 () Bool)

(declare-fun res!771938 () Bool)

(assert (=> b!1720720 (=> (not res!771938) (not e!1100529))))

(assert (=> b!1720720 (= res!771938 (= (rule!5279 token!523) rule!422))))

(declare-fun b!1720721 () Bool)

(assert (=> b!1720721 (= e!1100534 (= (rule!5279 (_1!10663 lt!658044)) lt!658047))))

(declare-fun b!1720722 () Bool)

(declare-fun tp!491286 () Bool)

(declare-fun inv!21 (TokenValue!3423) Bool)

(assert (=> b!1720722 (= e!1100517 (and (inv!21 (value!104663 token!523)) e!1100520 tp!491286))))

(declare-fun b!1720723 () Bool)

(assert (=> b!1720723 (= e!1100529 (not e!1100518))))

(declare-fun res!771932 () Bool)

(assert (=> b!1720723 (=> res!771932 e!1100518)))

(assert (=> b!1720723 (= res!771932 (not (matchR!2135 (regex!3333 rule!422) lt!658051)))))

(declare-fun ruleValid!832 (LexerInterface!2962 Rule!6466) Bool)

(assert (=> b!1720723 (ruleValid!832 thiss!24550 rule!422)))

(declare-fun lt!658049 () Unit!32665)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!356 (LexerInterface!2962 Rule!6466 List!18896) Unit!32665)

(assert (=> b!1720723 (= lt!658049 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!356 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1720724 () Bool)

(declare-fun res!771926 () Bool)

(assert (=> b!1720724 (=> (not res!771926) (not e!1100531))))

(declare-fun contains!3355 (List!18896 Rule!6466) Bool)

(assert (=> b!1720724 (= res!771926 (contains!3355 rules!3447 rule!422))))

(declare-fun b!1720725 () Bool)

(declare-fun tp!491291 () Bool)

(declare-fun e!1100525 () Bool)

(assert (=> b!1720725 (= e!1100537 (and tp!491291 (inv!24301 (tag!3643 (h!24227 rules!3447))) (inv!24306 (transformation!3333 (h!24227 rules!3447))) e!1100525))))

(assert (=> b!1720726 (= e!1100525 (and tp!491296 tp!491287))))

(declare-fun b!1720727 () Bool)

(declare-fun tp_is_empty!7565 () Bool)

(declare-fun tp!491285 () Bool)

(assert (=> b!1720727 (= e!1100536 (and tp_is_empty!7565 tp!491285))))

(declare-fun b!1720728 () Bool)

(assert (=> b!1720728 (= e!1100530 e!1100535)))

(declare-fun res!771928 () Bool)

(assert (=> b!1720728 (=> res!771928 e!1100535)))

(declare-fun dynLambda!8656 (Int BalanceConc!12466) TokenValue!3423)

(assert (=> b!1720728 (= res!771928 (not (= (list!7606 (dynLambda!8655 (toChars!4699 (transformation!3333 (rule!5279 (_1!10663 lt!658044)))) (dynLambda!8656 (toValue!4840 (transformation!3333 (rule!5279 (_1!10663 lt!658044)))) lt!658045))) lt!658059)))))

(declare-fun lt!658061 () Unit!32665)

(declare-fun lemmaSemiInverse!479 (TokenValueInjection!6506 BalanceConc!12466) Unit!32665)

(assert (=> b!1720728 (= lt!658061 (lemmaSemiInverse!479 (transformation!3333 (rule!5279 (_1!10663 lt!658044))) lt!658045))))

(declare-fun b!1720729 () Bool)

(declare-fun res!771941 () Bool)

(assert (=> b!1720729 (=> (not res!771941) (not e!1100531))))

(declare-fun rulesInvariant!2631 (LexerInterface!2962 List!18896) Bool)

(assert (=> b!1720729 (= res!771941 (rulesInvariant!2631 thiss!24550 rules!3447))))

(assert (= (and start!168658 res!771927) b!1720706))

(assert (= (and b!1720706 res!771929) b!1720729))

(assert (= (and b!1720729 res!771941) b!1720724))

(assert (= (and b!1720724 res!771926) b!1720709))

(assert (= (and b!1720709 res!771937) b!1720714))

(assert (= (and b!1720714 res!771925) b!1720704))

(assert (= (and b!1720704 res!771930) b!1720720))

(assert (= (and b!1720720 res!771938) b!1720723))

(assert (= (and b!1720723 (not res!771932)) b!1720701))

(assert (= (and b!1720701 (not res!771942)) b!1720707))

(assert (= (and b!1720707 (not res!771940)) b!1720703))

(assert (= (and b!1720703 res!771939) b!1720710))

(assert (= (and b!1720710 res!771944) b!1720721))

(assert (= (and b!1720703 (not res!771943)) b!1720713))

(assert (= (and b!1720713 (not res!771935)) b!1720712))

(assert (= (and b!1720712 (not res!771936)) b!1720728))

(assert (= (and b!1720728 (not res!771928)) b!1720715))

(assert (= (and b!1720715 (not res!771931)) b!1720719))

(assert (= (and b!1720719 (not res!771934)) b!1720702))

(assert (= (and b!1720702 (not res!771933)) b!1720716))

(assert (= (and start!168658 ((_ is Cons!18825) suffix!1421)) b!1720727))

(assert (= b!1720717 b!1720708))

(assert (= start!168658 b!1720717))

(assert (= b!1720711 b!1720718))

(assert (= b!1720722 b!1720711))

(assert (= start!168658 b!1720722))

(assert (= b!1720725 b!1720726))

(assert (= b!1720705 b!1720725))

(assert (= (and start!168658 ((_ is Cons!18826) rules!3447)) b!1720705))

(declare-fun b_lambda!54555 () Bool)

(assert (=> (not b_lambda!54555) (not b!1720715)))

(declare-fun tb!101949 () Bool)

(declare-fun t!159408 () Bool)

(assert (=> (and b!1720726 (= (toChars!4699 (transformation!3333 (h!24227 rules!3447))) (toChars!4699 (transformation!3333 (rule!5279 (_1!10663 lt!658044))))) t!159408) tb!101949))

(declare-fun b!1720745 () Bool)

(declare-fun e!1100550 () Bool)

(declare-fun tp!491299 () Bool)

(declare-fun inv!24308 (Conc!6261) Bool)

(assert (=> b!1720745 (= e!1100550 (and (inv!24308 (c!281605 (dynLambda!8655 (toChars!4699 (transformation!3333 (rule!5279 (_1!10663 lt!658044)))) (value!104663 (_1!10663 lt!658044))))) tp!491299))))

(declare-fun result!122536 () Bool)

(declare-fun inv!24309 (BalanceConc!12466) Bool)

(assert (=> tb!101949 (= result!122536 (and (inv!24309 (dynLambda!8655 (toChars!4699 (transformation!3333 (rule!5279 (_1!10663 lt!658044)))) (value!104663 (_1!10663 lt!658044)))) e!1100550))))

(assert (= tb!101949 b!1720745))

(declare-fun m!2126215 () Bool)

(assert (=> b!1720745 m!2126215))

(declare-fun m!2126217 () Bool)

(assert (=> tb!101949 m!2126217))

(assert (=> b!1720715 t!159408))

(declare-fun b_and!125591 () Bool)

(assert (= b_and!125581 (and (=> t!159408 result!122536) b_and!125591)))

(declare-fun tb!101951 () Bool)

(declare-fun t!159410 () Bool)

(assert (=> (and b!1720708 (= (toChars!4699 (transformation!3333 rule!422)) (toChars!4699 (transformation!3333 (rule!5279 (_1!10663 lt!658044))))) t!159410) tb!101951))

(declare-fun result!122540 () Bool)

(assert (= result!122540 result!122536))

(assert (=> b!1720715 t!159410))

(declare-fun b_and!125593 () Bool)

(assert (= b_and!125585 (and (=> t!159410 result!122540) b_and!125593)))

(declare-fun t!159412 () Bool)

(declare-fun tb!101953 () Bool)

(assert (=> (and b!1720718 (= (toChars!4699 (transformation!3333 (rule!5279 token!523))) (toChars!4699 (transformation!3333 (rule!5279 (_1!10663 lt!658044))))) t!159412) tb!101953))

(declare-fun result!122542 () Bool)

(assert (= result!122542 result!122536))

(assert (=> b!1720715 t!159412))

(declare-fun b_and!125595 () Bool)

(assert (= b_and!125589 (and (=> t!159412 result!122542) b_and!125595)))

(declare-fun b_lambda!54557 () Bool)

(assert (=> (not b_lambda!54557) (not b!1720728)))

(declare-fun tb!101955 () Bool)

(declare-fun t!159414 () Bool)

(assert (=> (and b!1720726 (= (toChars!4699 (transformation!3333 (h!24227 rules!3447))) (toChars!4699 (transformation!3333 (rule!5279 (_1!10663 lt!658044))))) t!159414) tb!101955))

(declare-fun b!1720746 () Bool)

(declare-fun tp!491300 () Bool)

(declare-fun e!1100551 () Bool)

(assert (=> b!1720746 (= e!1100551 (and (inv!24308 (c!281605 (dynLambda!8655 (toChars!4699 (transformation!3333 (rule!5279 (_1!10663 lt!658044)))) (dynLambda!8656 (toValue!4840 (transformation!3333 (rule!5279 (_1!10663 lt!658044)))) lt!658045)))) tp!491300))))

(declare-fun result!122544 () Bool)

(assert (=> tb!101955 (= result!122544 (and (inv!24309 (dynLambda!8655 (toChars!4699 (transformation!3333 (rule!5279 (_1!10663 lt!658044)))) (dynLambda!8656 (toValue!4840 (transformation!3333 (rule!5279 (_1!10663 lt!658044)))) lt!658045))) e!1100551))))

(assert (= tb!101955 b!1720746))

(declare-fun m!2126219 () Bool)

(assert (=> b!1720746 m!2126219))

(declare-fun m!2126221 () Bool)

(assert (=> tb!101955 m!2126221))

(assert (=> b!1720728 t!159414))

(declare-fun b_and!125597 () Bool)

(assert (= b_and!125591 (and (=> t!159414 result!122544) b_and!125597)))

(declare-fun tb!101957 () Bool)

(declare-fun t!159416 () Bool)

(assert (=> (and b!1720708 (= (toChars!4699 (transformation!3333 rule!422)) (toChars!4699 (transformation!3333 (rule!5279 (_1!10663 lt!658044))))) t!159416) tb!101957))

(declare-fun result!122546 () Bool)

(assert (= result!122546 result!122544))

(assert (=> b!1720728 t!159416))

(declare-fun b_and!125599 () Bool)

(assert (= b_and!125593 (and (=> t!159416 result!122546) b_and!125599)))

(declare-fun tb!101959 () Bool)

(declare-fun t!159418 () Bool)

(assert (=> (and b!1720718 (= (toChars!4699 (transformation!3333 (rule!5279 token!523))) (toChars!4699 (transformation!3333 (rule!5279 (_1!10663 lt!658044))))) t!159418) tb!101959))

(declare-fun result!122548 () Bool)

(assert (= result!122548 result!122544))

(assert (=> b!1720728 t!159418))

(declare-fun b_and!125601 () Bool)

(assert (= b_and!125595 (and (=> t!159418 result!122548) b_and!125601)))

(declare-fun b_lambda!54559 () Bool)

(assert (=> (not b_lambda!54559) (not b!1720728)))

(declare-fun t!159420 () Bool)

(declare-fun tb!101961 () Bool)

(assert (=> (and b!1720726 (= (toValue!4840 (transformation!3333 (h!24227 rules!3447))) (toValue!4840 (transformation!3333 (rule!5279 (_1!10663 lt!658044))))) t!159420) tb!101961))

(declare-fun result!122550 () Bool)

(assert (=> tb!101961 (= result!122550 (inv!21 (dynLambda!8656 (toValue!4840 (transformation!3333 (rule!5279 (_1!10663 lt!658044)))) lt!658045)))))

(declare-fun m!2126223 () Bool)

(assert (=> tb!101961 m!2126223))

(assert (=> b!1720728 t!159420))

(declare-fun b_and!125603 () Bool)

(assert (= b_and!125579 (and (=> t!159420 result!122550) b_and!125603)))

(declare-fun t!159422 () Bool)

(declare-fun tb!101963 () Bool)

(assert (=> (and b!1720708 (= (toValue!4840 (transformation!3333 rule!422)) (toValue!4840 (transformation!3333 (rule!5279 (_1!10663 lt!658044))))) t!159422) tb!101963))

(declare-fun result!122554 () Bool)

(assert (= result!122554 result!122550))

(assert (=> b!1720728 t!159422))

(declare-fun b_and!125605 () Bool)

(assert (= b_and!125583 (and (=> t!159422 result!122554) b_and!125605)))

(declare-fun tb!101965 () Bool)

(declare-fun t!159424 () Bool)

(assert (=> (and b!1720718 (= (toValue!4840 (transformation!3333 (rule!5279 token!523))) (toValue!4840 (transformation!3333 (rule!5279 (_1!10663 lt!658044))))) t!159424) tb!101965))

(declare-fun result!122556 () Bool)

(assert (= result!122556 result!122550))

(assert (=> b!1720728 t!159424))

(declare-fun b_and!125607 () Bool)

(assert (= b_and!125587 (and (=> t!159424 result!122556) b_and!125607)))

(declare-fun m!2126225 () Bool)

(assert (=> b!1720719 m!2126225))

(declare-fun m!2126227 () Bool)

(assert (=> b!1720719 m!2126227))

(declare-fun m!2126229 () Bool)

(assert (=> b!1720719 m!2126229))

(assert (=> b!1720719 m!2126227))

(declare-fun m!2126231 () Bool)

(assert (=> b!1720719 m!2126231))

(declare-fun m!2126233 () Bool)

(assert (=> b!1720719 m!2126233))

(declare-fun m!2126235 () Bool)

(assert (=> b!1720704 m!2126235))

(declare-fun m!2126237 () Bool)

(assert (=> b!1720716 m!2126237))

(declare-fun m!2126239 () Bool)

(assert (=> b!1720706 m!2126239))

(declare-fun m!2126241 () Bool)

(assert (=> b!1720724 m!2126241))

(declare-fun m!2126243 () Bool)

(assert (=> b!1720707 m!2126243))

(declare-fun m!2126245 () Bool)

(assert (=> b!1720707 m!2126245))

(declare-fun m!2126247 () Bool)

(assert (=> b!1720707 m!2126247))

(assert (=> b!1720707 m!2126243))

(assert (=> b!1720707 m!2126247))

(declare-fun m!2126249 () Bool)

(assert (=> b!1720707 m!2126249))

(declare-fun m!2126251 () Bool)

(assert (=> b!1720715 m!2126251))

(declare-fun m!2126253 () Bool)

(assert (=> start!168658 m!2126253))

(declare-fun m!2126255 () Bool)

(assert (=> b!1720703 m!2126255))

(declare-fun m!2126257 () Bool)

(assert (=> b!1720703 m!2126257))

(declare-fun m!2126259 () Bool)

(assert (=> b!1720703 m!2126259))

(declare-fun m!2126261 () Bool)

(assert (=> b!1720703 m!2126261))

(declare-fun m!2126263 () Bool)

(assert (=> b!1720703 m!2126263))

(declare-fun m!2126265 () Bool)

(assert (=> b!1720703 m!2126265))

(declare-fun m!2126267 () Bool)

(assert (=> b!1720703 m!2126267))

(declare-fun m!2126269 () Bool)

(assert (=> b!1720703 m!2126269))

(declare-fun m!2126271 () Bool)

(assert (=> b!1720703 m!2126271))

(declare-fun m!2126273 () Bool)

(assert (=> b!1720703 m!2126273))

(declare-fun m!2126275 () Bool)

(assert (=> b!1720703 m!2126275))

(declare-fun m!2126277 () Bool)

(assert (=> b!1720703 m!2126277))

(declare-fun m!2126279 () Bool)

(assert (=> b!1720703 m!2126279))

(assert (=> b!1720703 m!2126273))

(declare-fun m!2126281 () Bool)

(assert (=> b!1720703 m!2126281))

(declare-fun m!2126283 () Bool)

(assert (=> b!1720703 m!2126283))

(declare-fun m!2126285 () Bool)

(assert (=> b!1720709 m!2126285))

(declare-fun m!2126287 () Bool)

(assert (=> b!1720709 m!2126287))

(declare-fun m!2126289 () Bool)

(assert (=> b!1720709 m!2126289))

(assert (=> b!1720709 m!2126289))

(declare-fun m!2126291 () Bool)

(assert (=> b!1720709 m!2126291))

(assert (=> b!1720710 m!2126277))

(assert (=> b!1720710 m!2126277))

(declare-fun m!2126293 () Bool)

(assert (=> b!1720710 m!2126293))

(assert (=> b!1720710 m!2126293))

(declare-fun m!2126295 () Bool)

(assert (=> b!1720710 m!2126295))

(declare-fun m!2126297 () Bool)

(assert (=> b!1720710 m!2126297))

(declare-fun m!2126299 () Bool)

(assert (=> b!1720723 m!2126299))

(declare-fun m!2126301 () Bool)

(assert (=> b!1720723 m!2126301))

(declare-fun m!2126303 () Bool)

(assert (=> b!1720723 m!2126303))

(declare-fun m!2126305 () Bool)

(assert (=> b!1720717 m!2126305))

(declare-fun m!2126307 () Bool)

(assert (=> b!1720717 m!2126307))

(declare-fun m!2126309 () Bool)

(assert (=> b!1720711 m!2126309))

(declare-fun m!2126311 () Bool)

(assert (=> b!1720711 m!2126311))

(declare-fun m!2126313 () Bool)

(assert (=> b!1720722 m!2126313))

(declare-fun m!2126315 () Bool)

(assert (=> b!1720713 m!2126315))

(declare-fun m!2126317 () Bool)

(assert (=> b!1720701 m!2126317))

(declare-fun m!2126319 () Bool)

(assert (=> b!1720702 m!2126319))

(declare-fun m!2126321 () Bool)

(assert (=> b!1720702 m!2126321))

(declare-fun m!2126323 () Bool)

(assert (=> b!1720702 m!2126323))

(declare-fun m!2126325 () Bool)

(assert (=> b!1720702 m!2126325))

(declare-fun m!2126327 () Bool)

(assert (=> b!1720702 m!2126327))

(declare-fun m!2126329 () Bool)

(assert (=> b!1720702 m!2126329))

(assert (=> b!1720702 m!2126319))

(declare-fun m!2126331 () Bool)

(assert (=> b!1720702 m!2126331))

(declare-fun m!2126333 () Bool)

(assert (=> b!1720725 m!2126333))

(declare-fun m!2126335 () Bool)

(assert (=> b!1720725 m!2126335))

(declare-fun m!2126337 () Bool)

(assert (=> b!1720714 m!2126337))

(declare-fun m!2126339 () Bool)

(assert (=> b!1720729 m!2126339))

(declare-fun m!2126341 () Bool)

(assert (=> b!1720712 m!2126341))

(declare-fun m!2126343 () Bool)

(assert (=> b!1720712 m!2126343))

(declare-fun m!2126345 () Bool)

(assert (=> b!1720728 m!2126345))

(assert (=> b!1720728 m!2126345))

(declare-fun m!2126347 () Bool)

(assert (=> b!1720728 m!2126347))

(assert (=> b!1720728 m!2126347))

(declare-fun m!2126349 () Bool)

(assert (=> b!1720728 m!2126349))

(declare-fun m!2126351 () Bool)

(assert (=> b!1720728 m!2126351))

(check-sat (not tb!101961) (not tb!101949) (not b!1720711) (not b!1720746) (not b!1720704) (not b!1720719) (not b_next!47571) (not b!1720710) (not b!1720724) (not b!1720729) (not b_next!47569) (not start!168658) (not b!1720712) b_and!125601 (not b_lambda!54557) (not b!1720716) (not b!1720722) b_and!125603 (not b_next!47563) (not b_lambda!54555) (not b!1720717) (not b_next!47573) (not b!1720701) (not b_next!47565) (not tb!101955) (not b!1720705) (not b!1720709) (not b!1720714) (not b!1720745) (not b!1720725) (not b!1720723) tp_is_empty!7565 b_and!125597 (not b_next!47567) (not b!1720728) b_and!125607 (not b!1720703) (not b!1720727) (not b!1720702) b_and!125599 (not b!1720706) b_and!125605 (not b!1720713) (not b_lambda!54559) (not b!1720707))
(check-sat (not b_next!47569) b_and!125601 (not b_next!47573) (not b_next!47565) b_and!125607 (not b_next!47571) b_and!125599 b_and!125605 b_and!125603 (not b_next!47563) b_and!125597 (not b_next!47567))
