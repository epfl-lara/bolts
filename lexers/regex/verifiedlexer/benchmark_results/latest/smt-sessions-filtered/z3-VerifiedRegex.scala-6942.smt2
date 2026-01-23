; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!367492 () Bool)

(assert start!367492)

(declare-fun b!3919744 () Bool)

(declare-fun b_free!106541 () Bool)

(declare-fun b_next!107245 () Bool)

(assert (=> b!3919744 (= b_free!106541 (not b_next!107245))))

(declare-fun tp!1193071 () Bool)

(declare-fun b_and!298691 () Bool)

(assert (=> b!3919744 (= tp!1193071 b_and!298691)))

(declare-fun b_free!106543 () Bool)

(declare-fun b_next!107247 () Bool)

(assert (=> b!3919744 (= b_free!106543 (not b_next!107247))))

(declare-fun tp!1193077 () Bool)

(declare-fun b_and!298693 () Bool)

(assert (=> b!3919744 (= tp!1193077 b_and!298693)))

(declare-fun b!3919731 () Bool)

(declare-fun b_free!106545 () Bool)

(declare-fun b_next!107249 () Bool)

(assert (=> b!3919731 (= b_free!106545 (not b_next!107249))))

(declare-fun tp!1193065 () Bool)

(declare-fun b_and!298695 () Bool)

(assert (=> b!3919731 (= tp!1193065 b_and!298695)))

(declare-fun b_free!106547 () Bool)

(declare-fun b_next!107251 () Bool)

(assert (=> b!3919731 (= b_free!106547 (not b_next!107251))))

(declare-fun tp!1193080 () Bool)

(declare-fun b_and!298697 () Bool)

(assert (=> b!3919731 (= tp!1193080 b_and!298697)))

(declare-fun b!3919761 () Bool)

(declare-fun b_free!106549 () Bool)

(declare-fun b_next!107253 () Bool)

(assert (=> b!3919761 (= b_free!106549 (not b_next!107253))))

(declare-fun tp!1193079 () Bool)

(declare-fun b_and!298699 () Bool)

(assert (=> b!3919761 (= tp!1193079 b_and!298699)))

(declare-fun b_free!106551 () Bool)

(declare-fun b_next!107255 () Bool)

(assert (=> b!3919761 (= b_free!106551 (not b_next!107255))))

(declare-fun tp!1193068 () Bool)

(declare-fun b_and!298701 () Bool)

(assert (=> b!3919761 (= tp!1193068 b_and!298701)))

(declare-fun b!3919727 () Bool)

(declare-fun e!2423714 () Bool)

(declare-fun lt!1365958 () Int)

(declare-datatypes ((String!47227 0))(
  ( (String!47228 (value!205060 String)) )
))
(declare-datatypes ((C!22940 0))(
  ( (C!22941 (val!13564 Int)) )
))
(declare-datatypes ((List!41669 0))(
  ( (Nil!41545) (Cons!41545 (h!46965 C!22940) (t!324396 List!41669)) )
))
(declare-datatypes ((IArray!25371 0))(
  ( (IArray!25372 (innerList!12743 List!41669)) )
))
(declare-datatypes ((Conc!12683 0))(
  ( (Node!12683 (left!31769 Conc!12683) (right!32099 Conc!12683) (csize!25596 Int) (cheight!12894 Int)) (Leaf!19626 (xs!15989 IArray!25371) (csize!25597 Int)) (Empty!12683) )
))
(declare-datatypes ((BalanceConc!24960 0))(
  ( (BalanceConc!24961 (c!681222 Conc!12683)) )
))
(declare-datatypes ((List!41670 0))(
  ( (Nil!41546) (Cons!41546 (h!46966 (_ BitVec 16)) (t!324397 List!41670)) )
))
(declare-datatypes ((TokenValue!6702 0))(
  ( (FloatLiteralValue!13404 (text!47359 List!41670)) (TokenValueExt!6701 (__x!25621 Int)) (Broken!33510 (value!205061 List!41670)) (Object!6825) (End!6702) (Def!6702) (Underscore!6702) (Match!6702) (Else!6702) (Error!6702) (Case!6702) (If!6702) (Extends!6702) (Abstract!6702) (Class!6702) (Val!6702) (DelimiterValue!13404 (del!6762 List!41670)) (KeywordValue!6708 (value!205062 List!41670)) (CommentValue!13404 (value!205063 List!41670)) (WhitespaceValue!13404 (value!205064 List!41670)) (IndentationValue!6702 (value!205065 List!41670)) (String!47229) (Int32!6702) (Broken!33511 (value!205066 List!41670)) (Boolean!6703) (Unit!59687) (OperatorValue!6705 (op!6762 List!41670)) (IdentifierValue!13404 (value!205067 List!41670)) (IdentifierValue!13405 (value!205068 List!41670)) (WhitespaceValue!13405 (value!205069 List!41670)) (True!13404) (False!13404) (Broken!33512 (value!205070 List!41670)) (Broken!33513 (value!205071 List!41670)) (True!13405) (RightBrace!6702) (RightBracket!6702) (Colon!6702) (Null!6702) (Comma!6702) (LeftBracket!6702) (False!13405) (LeftBrace!6702) (ImaginaryLiteralValue!6702 (text!47360 List!41670)) (StringLiteralValue!20106 (value!205072 List!41670)) (EOFValue!6702 (value!205073 List!41670)) (IdentValue!6702 (value!205074 List!41670)) (DelimiterValue!13405 (value!205075 List!41670)) (DedentValue!6702 (value!205076 List!41670)) (NewLineValue!6702 (value!205077 List!41670)) (IntegerValue!20106 (value!205078 (_ BitVec 32)) (text!47361 List!41670)) (IntegerValue!20107 (value!205079 Int) (text!47362 List!41670)) (Times!6702) (Or!6702) (Equal!6702) (Minus!6702) (Broken!33514 (value!205080 List!41670)) (And!6702) (Div!6702) (LessEqual!6702) (Mod!6702) (Concat!18079) (Not!6702) (Plus!6702) (SpaceValue!6702 (value!205081 List!41670)) (IntegerValue!20108 (value!205082 Int) (text!47363 List!41670)) (StringLiteralValue!20107 (text!47364 List!41670)) (FloatLiteralValue!13405 (text!47365 List!41670)) (BytesLiteralValue!6702 (value!205083 List!41670)) (CommentValue!13405 (value!205084 List!41670)) (StringLiteralValue!20108 (value!205085 List!41670)) (ErrorTokenValue!6702 (msg!6763 List!41670)) )
))
(declare-datatypes ((Regex!11377 0))(
  ( (ElementMatch!11377 (c!681223 C!22940)) (Concat!18080 (regOne!23266 Regex!11377) (regTwo!23266 Regex!11377)) (EmptyExpr!11377) (Star!11377 (reg!11706 Regex!11377)) (EmptyLang!11377) (Union!11377 (regOne!23267 Regex!11377) (regTwo!23267 Regex!11377)) )
))
(declare-datatypes ((TokenValueInjection!12832 0))(
  ( (TokenValueInjection!12833 (toValue!8924 Int) (toChars!8783 Int)) )
))
(declare-datatypes ((Rule!12744 0))(
  ( (Rule!12745 (regex!6472 Regex!11377) (tag!7332 String!47227) (isSeparator!6472 Bool) (transformation!6472 TokenValueInjection!12832)) )
))
(declare-datatypes ((Token!12082 0))(
  ( (Token!12083 (value!205086 TokenValue!6702) (rule!9402 Rule!12744) (size!31193 Int) (originalCharacters!7072 List!41669)) )
))
(declare-fun lt!1365965 () Token!12082)

(declare-fun size!31194 (List!41669) Int)

(declare-fun list!15447 (BalanceConc!24960) List!41669)

(declare-fun charsOf!4296 (Token!12082) BalanceConc!24960)

(assert (=> b!3919727 (= e!2423714 (> lt!1365958 (size!31194 (list!15447 (charsOf!4296 lt!1365965)))))))

(declare-fun res!1585593 () Bool)

(declare-fun e!2423717 () Bool)

(assert (=> start!367492 (=> (not res!1585593) (not e!2423717))))

(declare-datatypes ((LexerInterface!6061 0))(
  ( (LexerInterfaceExt!6058 (__x!25622 Int)) (Lexer!6059) )
))
(declare-fun thiss!20629 () LexerInterface!6061)

(get-info :version)

(assert (=> start!367492 (= res!1585593 ((_ is Lexer!6059) thiss!20629))))

(assert (=> start!367492 e!2423717))

(declare-fun e!2423718 () Bool)

(assert (=> start!367492 e!2423718))

(assert (=> start!367492 true))

(declare-fun e!2423704 () Bool)

(assert (=> start!367492 e!2423704))

(declare-fun e!2423694 () Bool)

(assert (=> start!367492 e!2423694))

(declare-fun e!2423695 () Bool)

(assert (=> start!367492 e!2423695))

(declare-fun e!2423706 () Bool)

(assert (=> start!367492 e!2423706))

(declare-fun e!2423707 () Bool)

(assert (=> start!367492 e!2423707))

(declare-fun b!3919728 () Bool)

(declare-fun e!2423719 () Bool)

(assert (=> b!3919728 (= e!2423719 false)))

(declare-fun e!2423705 () Bool)

(declare-fun tp!1193072 () Bool)

(declare-datatypes ((List!41671 0))(
  ( (Nil!41547) (Cons!41547 (h!46967 Rule!12744) (t!324398 List!41671)) )
))
(declare-fun rules!2768 () List!41671)

(declare-fun b!3919729 () Bool)

(declare-fun e!2423698 () Bool)

(declare-fun inv!55741 (String!47227) Bool)

(declare-fun inv!55744 (TokenValueInjection!12832) Bool)

(assert (=> b!3919729 (= e!2423705 (and tp!1193072 (inv!55741 (tag!7332 (h!46967 rules!2768))) (inv!55744 (transformation!6472 (h!46967 rules!2768))) e!2423698))))

(declare-fun b!3919730 () Bool)

(declare-fun e!2423699 () Bool)

(declare-fun e!2423709 () Bool)

(assert (=> b!3919730 (= e!2423699 e!2423709)))

(declare-fun res!1585597 () Bool)

(assert (=> b!3919730 (=> res!1585597 e!2423709)))

(declare-fun lt!1365962 () Int)

(declare-fun lt!1365951 () Int)

(assert (=> b!3919730 (= res!1585597 (not (= (+ lt!1365958 lt!1365962) lt!1365951)))))

(declare-fun lt!1365952 () List!41669)

(assert (=> b!3919730 (= lt!1365951 (size!31194 lt!1365952))))

(assert (=> b!3919731 (= e!2423698 (and tp!1193065 tp!1193080))))

(declare-fun b!3919732 () Bool)

(declare-fun tp_is_empty!19725 () Bool)

(declare-fun tp!1193066 () Bool)

(assert (=> b!3919732 (= e!2423707 (and tp_is_empty!19725 tp!1193066))))

(declare-fun b!3919733 () Bool)

(declare-fun e!2423689 () Bool)

(declare-fun tp!1193069 () Bool)

(declare-datatypes ((List!41672 0))(
  ( (Nil!41548) (Cons!41548 (h!46968 Token!12082) (t!324399 List!41672)) )
))
(declare-fun prefixTokens!80 () List!41672)

(declare-fun e!2423713 () Bool)

(declare-fun inv!21 (TokenValue!6702) Bool)

(assert (=> b!3919733 (= e!2423713 (and (inv!21 (value!205086 (h!46968 prefixTokens!80))) e!2423689 tp!1193069))))

(declare-fun b!3919734 () Bool)

(declare-fun tp!1193076 () Bool)

(assert (=> b!3919734 (= e!2423718 (and tp_is_empty!19725 tp!1193076))))

(declare-fun b!3919735 () Bool)

(declare-fun tp!1193073 () Bool)

(assert (=> b!3919735 (= e!2423704 (and tp_is_empty!19725 tp!1193073))))

(declare-fun b!3919736 () Bool)

(declare-fun e!2423703 () Bool)

(assert (=> b!3919736 (= e!2423703 e!2423714)))

(declare-fun res!1585604 () Bool)

(assert (=> b!3919736 (=> res!1585604 e!2423714)))

(declare-fun lt!1365941 () Bool)

(assert (=> b!3919736 (= res!1585604 lt!1365941)))

(declare-datatypes ((Unit!59688 0))(
  ( (Unit!59689) )
))
(declare-fun lt!1365966 () Unit!59688)

(declare-fun e!2423712 () Unit!59688)

(assert (=> b!3919736 (= lt!1365966 e!2423712)))

(declare-fun c!681221 () Bool)

(assert (=> b!3919736 (= c!681221 lt!1365941)))

(declare-datatypes ((tuple2!40806 0))(
  ( (tuple2!40807 (_1!23537 Token!12082) (_2!23537 List!41669)) )
))
(declare-fun lt!1365949 () tuple2!40806)

(declare-fun lt!1365948 () Int)

(assert (=> b!3919736 (= lt!1365941 (< (size!31194 (_2!23537 lt!1365949)) lt!1365948))))

(declare-fun b!3919737 () Bool)

(declare-fun tp!1193064 () Bool)

(assert (=> b!3919737 (= e!2423694 (and e!2423705 tp!1193064))))

(declare-fun b!3919738 () Bool)

(declare-fun e!2423691 () Bool)

(declare-fun e!2423686 () Bool)

(assert (=> b!3919738 (= e!2423691 e!2423686)))

(declare-fun res!1585605 () Bool)

(assert (=> b!3919738 (=> (not res!1585605) (not e!2423686))))

(declare-datatypes ((tuple2!40808 0))(
  ( (tuple2!40809 (_1!23538 List!41672) (_2!23538 List!41669)) )
))
(declare-fun lt!1365945 () tuple2!40808)

(declare-fun suffix!1176 () List!41669)

(declare-fun lexList!1829 (LexerInterface!6061 List!41671 List!41669) tuple2!40808)

(assert (=> b!3919738 (= res!1585605 (= (lexList!1829 thiss!20629 rules!2768 suffix!1176) lt!1365945))))

(declare-fun suffixTokens!72 () List!41672)

(declare-fun suffixResult!91 () List!41669)

(assert (=> b!3919738 (= lt!1365945 (tuple2!40809 suffixTokens!72 suffixResult!91))))

(declare-fun b!3919739 () Bool)

(declare-fun e!2423697 () Bool)

(assert (=> b!3919739 (= e!2423686 e!2423697)))

(declare-fun res!1585607 () Bool)

(assert (=> b!3919739 (=> (not res!1585607) (not e!2423697))))

(declare-datatypes ((Option!8892 0))(
  ( (None!8891) (Some!8891 (v!39217 tuple2!40806)) )
))
(declare-fun lt!1365940 () Option!8892)

(assert (=> b!3919739 (= res!1585607 ((_ is Some!8891) lt!1365940))))

(declare-fun maxPrefix!3365 (LexerInterface!6061 List!41671 List!41669) Option!8892)

(assert (=> b!3919739 (= lt!1365940 (maxPrefix!3365 thiss!20629 rules!2768 lt!1365952))))

(declare-fun b!3919740 () Bool)

(declare-fun e!2423708 () Bool)

(assert (=> b!3919740 e!2423708))

(declare-fun res!1585610 () Bool)

(assert (=> b!3919740 (=> (not res!1585610) (not e!2423708))))

(declare-fun call!284590 () tuple2!40808)

(assert (=> b!3919740 (= res!1585610 (not (= call!284590 lt!1365945)))))

(declare-fun lt!1365953 () Unit!59688)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!72 (LexerInterface!6061 List!41671 List!41669 List!41669 List!41672 List!41669) Unit!59688)

(assert (=> b!3919740 (= lt!1365953 (lemmaLexWithSmallerInputCannotProduceSameResults!72 thiss!20629 rules!2768 suffix!1176 (_2!23537 lt!1365949) suffixTokens!72 suffixResult!91))))

(assert (=> b!3919740 (= (_2!23537 (v!39217 lt!1365940)) (_2!23537 lt!1365949))))

(declare-fun lt!1365950 () Unit!59688)

(declare-fun lt!1365944 () List!41669)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!520 (List!41669 List!41669 List!41669 List!41669) Unit!59688)

(assert (=> b!3919740 (= lt!1365950 (lemmaConcatSameAndSameSizesThenSameLists!520 lt!1365944 (_2!23537 (v!39217 lt!1365940)) lt!1365944 (_2!23537 lt!1365949)))))

(declare-fun e!2423701 () Unit!59688)

(declare-fun Unit!59690 () Unit!59688)

(assert (=> b!3919740 (= e!2423701 Unit!59690)))

(declare-fun bm!284585 () Bool)

(assert (=> bm!284585 (= call!284590 (lexList!1829 thiss!20629 rules!2768 (_2!23537 lt!1365949)))))

(declare-fun b!3919741 () Bool)

(declare-fun res!1585595 () Bool)

(assert (=> b!3919741 (=> (not res!1585595) (not e!2423717))))

(declare-fun prefix!426 () List!41669)

(declare-fun isEmpty!24732 (List!41669) Bool)

(assert (=> b!3919741 (= res!1585595 (not (isEmpty!24732 prefix!426)))))

(declare-fun e!2423688 () Bool)

(declare-fun e!2423710 () Bool)

(declare-fun b!3919742 () Bool)

(declare-fun tp!1193067 () Bool)

(assert (=> b!3919742 (= e!2423710 (and (inv!21 (value!205086 (h!46968 suffixTokens!72))) e!2423688 tp!1193067))))

(declare-fun b!3919743 () Bool)

(declare-fun e!2423715 () Bool)

(declare-fun e!2423720 () Bool)

(assert (=> b!3919743 (= e!2423715 e!2423720)))

(declare-fun res!1585600 () Bool)

(assert (=> b!3919743 (=> res!1585600 e!2423720)))

(declare-fun matchR!5466 (Regex!11377 List!41669) Bool)

(assert (=> b!3919743 (= res!1585600 (not (matchR!5466 (regex!6472 (rule!9402 (_1!23537 (v!39217 lt!1365940)))) lt!1365944)))))

(declare-fun lt!1365963 () TokenValue!6702)

(declare-fun maxPrefixOneRule!2435 (LexerInterface!6061 Rule!12744 List!41669) Option!8892)

(assert (=> b!3919743 (= (maxPrefixOneRule!2435 thiss!20629 (rule!9402 (_1!23537 (v!39217 lt!1365940))) lt!1365952) (Some!8891 (tuple2!40807 (Token!12083 lt!1365963 (rule!9402 (_1!23537 (v!39217 lt!1365940))) lt!1365958 lt!1365944) (_2!23537 (v!39217 lt!1365940)))))))

(declare-fun lt!1365967 () Unit!59688)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1303 (LexerInterface!6061 List!41671 List!41669 List!41669 List!41669 Rule!12744) Unit!59688)

(assert (=> b!3919743 (= lt!1365967 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1303 thiss!20629 rules!2768 lt!1365944 lt!1365952 (_2!23537 (v!39217 lt!1365940)) (rule!9402 (_1!23537 (v!39217 lt!1365940)))))))

(declare-fun e!2423702 () Bool)

(assert (=> b!3919744 (= e!2423702 (and tp!1193071 tp!1193077))))

(declare-fun b!3919745 () Bool)

(declare-fun Unit!59691 () Unit!59688)

(assert (=> b!3919745 (= e!2423712 Unit!59691)))

(declare-fun b!3919746 () Bool)

(declare-fun tp!1193075 () Bool)

(assert (=> b!3919746 (= e!2423689 (and tp!1193075 (inv!55741 (tag!7332 (rule!9402 (h!46968 prefixTokens!80)))) (inv!55744 (transformation!6472 (rule!9402 (h!46968 prefixTokens!80)))) e!2423702))))

(declare-fun b!3919747 () Bool)

(assert (=> b!3919747 (= e!2423708 false)))

(declare-fun b!3919748 () Bool)

(declare-fun e!2423693 () Bool)

(assert (=> b!3919748 (= e!2423697 (not e!2423693))))

(declare-fun res!1585609 () Bool)

(assert (=> b!3919748 (=> res!1585609 e!2423693)))

(declare-fun lt!1365960 () List!41669)

(assert (=> b!3919748 (= res!1585609 (not (= lt!1365960 lt!1365952)))))

(declare-fun lt!1365942 () tuple2!40808)

(assert (=> b!3919748 (= lt!1365942 (lexList!1829 thiss!20629 rules!2768 (_2!23537 (v!39217 lt!1365940))))))

(declare-fun lt!1365946 () List!41669)

(assert (=> b!3919748 (and (= (size!31193 (_1!23537 (v!39217 lt!1365940))) lt!1365958) (= (originalCharacters!7072 (_1!23537 (v!39217 lt!1365940))) lt!1365944) (= (v!39217 lt!1365940) (tuple2!40807 (Token!12083 lt!1365963 (rule!9402 (_1!23537 (v!39217 lt!1365940))) lt!1365958 lt!1365944) lt!1365946)))))

(assert (=> b!3919748 (= lt!1365958 (size!31194 lt!1365944))))

(declare-fun e!2423692 () Bool)

(assert (=> b!3919748 e!2423692))

(declare-fun res!1585596 () Bool)

(assert (=> b!3919748 (=> (not res!1585596) (not e!2423692))))

(assert (=> b!3919748 (= res!1585596 (= (value!205086 (_1!23537 (v!39217 lt!1365940))) lt!1365963))))

(declare-fun apply!9711 (TokenValueInjection!12832 BalanceConc!24960) TokenValue!6702)

(declare-fun seqFromList!4739 (List!41669) BalanceConc!24960)

(assert (=> b!3919748 (= lt!1365963 (apply!9711 (transformation!6472 (rule!9402 (_1!23537 (v!39217 lt!1365940)))) (seqFromList!4739 lt!1365944)))))

(assert (=> b!3919748 (= (_2!23537 (v!39217 lt!1365940)) lt!1365946)))

(declare-fun lt!1365955 () Unit!59688)

(declare-fun lemmaSamePrefixThenSameSuffix!1788 (List!41669 List!41669 List!41669 List!41669 List!41669) Unit!59688)

(assert (=> b!3919748 (= lt!1365955 (lemmaSamePrefixThenSameSuffix!1788 lt!1365944 (_2!23537 (v!39217 lt!1365940)) lt!1365944 lt!1365946 lt!1365952))))

(declare-fun getSuffix!2022 (List!41669 List!41669) List!41669)

(assert (=> b!3919748 (= lt!1365946 (getSuffix!2022 lt!1365952 lt!1365944))))

(declare-fun isPrefix!3567 (List!41669 List!41669) Bool)

(assert (=> b!3919748 (isPrefix!3567 lt!1365944 lt!1365960)))

(declare-fun ++!10701 (List!41669 List!41669) List!41669)

(assert (=> b!3919748 (= lt!1365960 (++!10701 lt!1365944 (_2!23537 (v!39217 lt!1365940))))))

(declare-fun lt!1365959 () Unit!59688)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2430 (List!41669 List!41669) Unit!59688)

(assert (=> b!3919748 (= lt!1365959 (lemmaConcatTwoListThenFirstIsPrefix!2430 lt!1365944 (_2!23537 (v!39217 lt!1365940))))))

(assert (=> b!3919748 (= lt!1365944 (list!15447 (charsOf!4296 (_1!23537 (v!39217 lt!1365940)))))))

(declare-fun ruleValid!2420 (LexerInterface!6061 Rule!12744) Bool)

(assert (=> b!3919748 (ruleValid!2420 thiss!20629 (rule!9402 (_1!23537 (v!39217 lt!1365940))))))

(declare-fun lt!1365961 () Unit!59688)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1500 (LexerInterface!6061 Rule!12744 List!41671) Unit!59688)

(assert (=> b!3919748 (= lt!1365961 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1500 thiss!20629 (rule!9402 (_1!23537 (v!39217 lt!1365940))) rules!2768))))

(declare-fun lt!1365957 () Unit!59688)

(declare-fun lemmaCharactersSize!1129 (Token!12082) Unit!59688)

(assert (=> b!3919748 (= lt!1365957 (lemmaCharactersSize!1129 (_1!23537 (v!39217 lt!1365940))))))

(declare-fun b!3919749 () Bool)

(assert (=> b!3919749 e!2423719))

(declare-fun res!1585602 () Bool)

(assert (=> b!3919749 (=> (not res!1585602) (not e!2423719))))

(declare-fun lt!1365943 () List!41672)

(declare-fun ++!10702 (List!41672 List!41672) List!41672)

(assert (=> b!3919749 (= res!1585602 (not (= call!284590 (tuple2!40809 (++!10702 lt!1365943 suffixTokens!72) suffixResult!91))))))

(declare-fun lt!1365964 () Unit!59688)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!72 (LexerInterface!6061 List!41671 List!41669 List!41669 List!41672 List!41669 List!41672) Unit!59688)

(assert (=> b!3919749 (= lt!1365964 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!72 thiss!20629 rules!2768 suffix!1176 (_2!23537 lt!1365949) suffixTokens!72 suffixResult!91 lt!1365943))))

(declare-fun Unit!59692 () Unit!59688)

(assert (=> b!3919749 (= e!2423701 Unit!59692)))

(declare-fun b!3919750 () Bool)

(assert (=> b!3919750 (= e!2423709 e!2423715)))

(declare-fun res!1585608 () Bool)

(assert (=> b!3919750 (=> res!1585608 e!2423715)))

(declare-fun lt!1365954 () Int)

(assert (=> b!3919750 (= res!1585608 (or (not (= (+ lt!1365954 lt!1365948) lt!1365951)) (<= lt!1365958 lt!1365954)))))

(assert (=> b!3919750 (= lt!1365954 (size!31194 prefix!426))))

(declare-fun tp!1193070 () Bool)

(declare-fun b!3919751 () Bool)

(declare-fun inv!55745 (Token!12082) Bool)

(assert (=> b!3919751 (= e!2423706 (and (inv!55745 (h!46968 suffixTokens!72)) e!2423710 tp!1193070))))

(declare-fun b!3919752 () Bool)

(assert (=> b!3919752 (= e!2423692 (= (size!31193 (_1!23537 (v!39217 lt!1365940))) (size!31194 (originalCharacters!7072 (_1!23537 (v!39217 lt!1365940))))))))

(declare-fun b!3919753 () Bool)

(assert (=> b!3919753 (= e!2423693 e!2423699)))

(declare-fun res!1585592 () Bool)

(assert (=> b!3919753 (=> res!1585592 e!2423699)))

(assert (=> b!3919753 (= res!1585592 (>= lt!1365962 lt!1365948))))

(assert (=> b!3919753 (= lt!1365948 (size!31194 suffix!1176))))

(assert (=> b!3919753 (= lt!1365962 (size!31194 (_2!23537 (v!39217 lt!1365940))))))

(declare-fun b!3919754 () Bool)

(declare-fun tp!1193074 () Bool)

(assert (=> b!3919754 (= e!2423695 (and (inv!55745 (h!46968 prefixTokens!80)) e!2423713 tp!1193074))))

(declare-fun b!3919755 () Bool)

(declare-fun res!1585598 () Bool)

(assert (=> b!3919755 (=> (not res!1585598) (not e!2423717))))

(declare-fun isEmpty!24733 (List!41672) Bool)

(assert (=> b!3919755 (= res!1585598 (not (isEmpty!24733 prefixTokens!80)))))

(declare-fun b!3919756 () Bool)

(declare-fun res!1585606 () Bool)

(assert (=> b!3919756 (=> (not res!1585606) (not e!2423717))))

(declare-fun isEmpty!24734 (List!41671) Bool)

(assert (=> b!3919756 (= res!1585606 (not (isEmpty!24734 rules!2768)))))

(declare-fun tp!1193078 () Bool)

(declare-fun e!2423687 () Bool)

(declare-fun b!3919757 () Bool)

(assert (=> b!3919757 (= e!2423688 (and tp!1193078 (inv!55741 (tag!7332 (rule!9402 (h!46968 suffixTokens!72)))) (inv!55744 (transformation!6472 (rule!9402 (h!46968 suffixTokens!72)))) e!2423687))))

(declare-fun b!3919758 () Bool)

(declare-fun res!1585611 () Bool)

(assert (=> b!3919758 (=> (not res!1585611) (not e!2423717))))

(declare-fun rulesInvariant!5404 (LexerInterface!6061 List!41671) Bool)

(assert (=> b!3919758 (= res!1585611 (rulesInvariant!5404 thiss!20629 rules!2768))))

(declare-fun b!3919759 () Bool)

(declare-fun res!1585599 () Bool)

(assert (=> b!3919759 (=> res!1585599 e!2423693)))

(declare-fun lt!1365947 () tuple2!40808)

(assert (=> b!3919759 (= res!1585599 (not (= lt!1365947 (tuple2!40809 (++!10702 (Cons!41548 (_1!23537 (v!39217 lt!1365940)) Nil!41548) (_1!23538 lt!1365942)) (_2!23538 lt!1365942)))))))

(declare-fun b!3919760 () Bool)

(declare-fun res!1585603 () Bool)

(assert (=> b!3919760 (=> res!1585603 e!2423693)))

(assert (=> b!3919760 (= res!1585603 (or (not (= lt!1365942 (tuple2!40809 (_1!23538 lt!1365942) (_2!23538 lt!1365942)))) (= (_2!23537 (v!39217 lt!1365940)) suffix!1176)))))

(assert (=> b!3919761 (= e!2423687 (and tp!1193079 tp!1193068))))

(declare-fun b!3919762 () Bool)

(assert (=> b!3919762 (= e!2423712 e!2423701)))

(declare-fun tail!6009 (List!41672) List!41672)

(assert (=> b!3919762 (= lt!1365943 (tail!6009 prefixTokens!80))))

(declare-fun c!681220 () Bool)

(assert (=> b!3919762 (= c!681220 (isEmpty!24733 lt!1365943))))

(declare-fun b!3919763 () Bool)

(assert (=> b!3919763 (= e!2423720 e!2423703)))

(declare-fun res!1585594 () Bool)

(assert (=> b!3919763 (=> res!1585594 e!2423703)))

(assert (=> b!3919763 (= res!1585594 (not (= (_1!23537 lt!1365949) lt!1365965)))))

(declare-fun head!8293 (List!41672) Token!12082)

(assert (=> b!3919763 (= lt!1365965 (head!8293 prefixTokens!80))))

(declare-fun get!13728 (Option!8892) tuple2!40806)

(assert (=> b!3919763 (= lt!1365949 (get!13728 lt!1365940))))

(declare-fun b!3919764 () Bool)

(assert (=> b!3919764 (= e!2423717 e!2423691)))

(declare-fun res!1585601 () Bool)

(assert (=> b!3919764 (=> (not res!1585601) (not e!2423691))))

(declare-fun lt!1365956 () List!41672)

(assert (=> b!3919764 (= res!1585601 (= lt!1365947 (tuple2!40809 lt!1365956 suffixResult!91)))))

(assert (=> b!3919764 (= lt!1365947 (lexList!1829 thiss!20629 rules!2768 lt!1365952))))

(assert (=> b!3919764 (= lt!1365956 (++!10702 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3919764 (= lt!1365952 (++!10701 prefix!426 suffix!1176))))

(assert (= (and start!367492 res!1585593) b!3919756))

(assert (= (and b!3919756 res!1585606) b!3919758))

(assert (= (and b!3919758 res!1585611) b!3919755))

(assert (= (and b!3919755 res!1585598) b!3919741))

(assert (= (and b!3919741 res!1585595) b!3919764))

(assert (= (and b!3919764 res!1585601) b!3919738))

(assert (= (and b!3919738 res!1585605) b!3919739))

(assert (= (and b!3919739 res!1585607) b!3919748))

(assert (= (and b!3919748 res!1585596) b!3919752))

(assert (= (and b!3919748 (not res!1585609)) b!3919759))

(assert (= (and b!3919759 (not res!1585599)) b!3919760))

(assert (= (and b!3919760 (not res!1585603)) b!3919753))

(assert (= (and b!3919753 (not res!1585592)) b!3919730))

(assert (= (and b!3919730 (not res!1585597)) b!3919750))

(assert (= (and b!3919750 (not res!1585608)) b!3919743))

(assert (= (and b!3919743 (not res!1585600)) b!3919763))

(assert (= (and b!3919763 (not res!1585594)) b!3919736))

(assert (= (and b!3919736 c!681221) b!3919762))

(assert (= (and b!3919736 (not c!681221)) b!3919745))

(assert (= (and b!3919762 c!681220) b!3919740))

(assert (= (and b!3919762 (not c!681220)) b!3919749))

(assert (= (and b!3919740 res!1585610) b!3919747))

(assert (= (and b!3919749 res!1585602) b!3919728))

(assert (= (or b!3919740 b!3919749) bm!284585))

(assert (= (and b!3919736 (not res!1585604)) b!3919727))

(assert (= (and start!367492 ((_ is Cons!41545) suffixResult!91)) b!3919734))

(assert (= (and start!367492 ((_ is Cons!41545) suffix!1176)) b!3919735))

(assert (= b!3919729 b!3919731))

(assert (= b!3919737 b!3919729))

(assert (= (and start!367492 ((_ is Cons!41547) rules!2768)) b!3919737))

(assert (= b!3919746 b!3919744))

(assert (= b!3919733 b!3919746))

(assert (= b!3919754 b!3919733))

(assert (= (and start!367492 ((_ is Cons!41548) prefixTokens!80)) b!3919754))

(assert (= b!3919757 b!3919761))

(assert (= b!3919742 b!3919757))

(assert (= b!3919751 b!3919742))

(assert (= (and start!367492 ((_ is Cons!41548) suffixTokens!72)) b!3919751))

(assert (= (and start!367492 ((_ is Cons!41545) prefix!426)) b!3919732))

(declare-fun m!4483411 () Bool)

(assert (=> b!3919758 m!4483411))

(declare-fun m!4483413 () Bool)

(assert (=> b!3919733 m!4483413))

(declare-fun m!4483415 () Bool)

(assert (=> b!3919749 m!4483415))

(declare-fun m!4483417 () Bool)

(assert (=> b!3919749 m!4483417))

(declare-fun m!4483419 () Bool)

(assert (=> b!3919764 m!4483419))

(declare-fun m!4483421 () Bool)

(assert (=> b!3919764 m!4483421))

(declare-fun m!4483423 () Bool)

(assert (=> b!3919764 m!4483423))

(declare-fun m!4483425 () Bool)

(assert (=> b!3919748 m!4483425))

(declare-fun m!4483427 () Bool)

(assert (=> b!3919748 m!4483427))

(declare-fun m!4483429 () Bool)

(assert (=> b!3919748 m!4483429))

(declare-fun m!4483431 () Bool)

(assert (=> b!3919748 m!4483431))

(declare-fun m!4483433 () Bool)

(assert (=> b!3919748 m!4483433))

(declare-fun m!4483435 () Bool)

(assert (=> b!3919748 m!4483435))

(declare-fun m!4483437 () Bool)

(assert (=> b!3919748 m!4483437))

(declare-fun m!4483439 () Bool)

(assert (=> b!3919748 m!4483439))

(declare-fun m!4483441 () Bool)

(assert (=> b!3919748 m!4483441))

(declare-fun m!4483443 () Bool)

(assert (=> b!3919748 m!4483443))

(declare-fun m!4483445 () Bool)

(assert (=> b!3919748 m!4483445))

(declare-fun m!4483447 () Bool)

(assert (=> b!3919748 m!4483447))

(assert (=> b!3919748 m!4483445))

(assert (=> b!3919748 m!4483435))

(declare-fun m!4483449 () Bool)

(assert (=> b!3919748 m!4483449))

(declare-fun m!4483451 () Bool)

(assert (=> b!3919748 m!4483451))

(declare-fun m!4483453 () Bool)

(assert (=> b!3919750 m!4483453))

(declare-fun m!4483455 () Bool)

(assert (=> b!3919753 m!4483455))

(declare-fun m!4483457 () Bool)

(assert (=> b!3919753 m!4483457))

(declare-fun m!4483459 () Bool)

(assert (=> b!3919730 m!4483459))

(declare-fun m!4483461 () Bool)

(assert (=> b!3919742 m!4483461))

(declare-fun m!4483463 () Bool)

(assert (=> b!3919739 m!4483463))

(declare-fun m!4483465 () Bool)

(assert (=> b!3919756 m!4483465))

(declare-fun m!4483467 () Bool)

(assert (=> b!3919743 m!4483467))

(declare-fun m!4483469 () Bool)

(assert (=> b!3919743 m!4483469))

(declare-fun m!4483471 () Bool)

(assert (=> b!3919743 m!4483471))

(declare-fun m!4483473 () Bool)

(assert (=> bm!284585 m!4483473))

(declare-fun m!4483475 () Bool)

(assert (=> b!3919752 m!4483475))

(declare-fun m!4483477 () Bool)

(assert (=> b!3919729 m!4483477))

(declare-fun m!4483479 () Bool)

(assert (=> b!3919729 m!4483479))

(declare-fun m!4483481 () Bool)

(assert (=> b!3919757 m!4483481))

(declare-fun m!4483483 () Bool)

(assert (=> b!3919757 m!4483483))

(declare-fun m!4483485 () Bool)

(assert (=> b!3919754 m!4483485))

(declare-fun m!4483487 () Bool)

(assert (=> b!3919727 m!4483487))

(assert (=> b!3919727 m!4483487))

(declare-fun m!4483489 () Bool)

(assert (=> b!3919727 m!4483489))

(assert (=> b!3919727 m!4483489))

(declare-fun m!4483491 () Bool)

(assert (=> b!3919727 m!4483491))

(declare-fun m!4483493 () Bool)

(assert (=> b!3919762 m!4483493))

(declare-fun m!4483495 () Bool)

(assert (=> b!3919762 m!4483495))

(declare-fun m!4483497 () Bool)

(assert (=> b!3919738 m!4483497))

(declare-fun m!4483499 () Bool)

(assert (=> b!3919759 m!4483499))

(declare-fun m!4483501 () Bool)

(assert (=> b!3919741 m!4483501))

(declare-fun m!4483503 () Bool)

(assert (=> b!3919746 m!4483503))

(declare-fun m!4483505 () Bool)

(assert (=> b!3919746 m!4483505))

(declare-fun m!4483507 () Bool)

(assert (=> b!3919736 m!4483507))

(declare-fun m!4483509 () Bool)

(assert (=> b!3919751 m!4483509))

(declare-fun m!4483511 () Bool)

(assert (=> b!3919755 m!4483511))

(declare-fun m!4483513 () Bool)

(assert (=> b!3919740 m!4483513))

(declare-fun m!4483515 () Bool)

(assert (=> b!3919740 m!4483515))

(declare-fun m!4483517 () Bool)

(assert (=> b!3919763 m!4483517))

(declare-fun m!4483519 () Bool)

(assert (=> b!3919763 m!4483519))

(check-sat b_and!298691 (not b!3919740) (not b!3919752) (not b!3919743) (not b!3919756) (not b_next!107247) (not b!3919739) (not b!3919759) (not b!3919754) b_and!298699 (not b_next!107249) (not b!3919736) (not b!3919727) (not b!3919742) (not b!3919730) (not b!3919737) (not b!3919738) (not b_next!107255) (not b!3919729) (not b!3919764) (not b!3919748) tp_is_empty!19725 (not b!3919751) (not b_next!107245) (not b!3919762) b_and!298701 (not b!3919749) (not b!3919735) (not b!3919746) (not b!3919734) (not b!3919757) (not bm!284585) (not b_next!107251) (not b!3919741) (not b!3919758) b_and!298695 (not b!3919733) (not b!3919750) (not b!3919755) b_and!298693 b_and!298697 (not b!3919732) (not b!3919763) (not b!3919753) (not b_next!107253))
(check-sat b_and!298691 (not b_next!107255) (not b_next!107245) b_and!298701 (not b_next!107247) (not b_next!107251) b_and!298695 (not b_next!107253) b_and!298699 (not b_next!107249) b_and!298693 b_and!298697)
(get-model)

(declare-fun b!3919822 () Bool)

(declare-fun e!2423755 () Bool)

(declare-fun e!2423757 () Bool)

(assert (=> b!3919822 (= e!2423755 e!2423757)))

(declare-fun res!1585649 () Bool)

(assert (=> b!3919822 (=> res!1585649 e!2423757)))

(declare-fun call!284593 () Bool)

(assert (=> b!3919822 (= res!1585649 call!284593)))

(declare-fun b!3919823 () Bool)

(declare-fun res!1585645 () Bool)

(declare-fun e!2423753 () Bool)

(assert (=> b!3919823 (=> res!1585645 e!2423753)))

(declare-fun e!2423758 () Bool)

(assert (=> b!3919823 (= res!1585645 e!2423758)))

(declare-fun res!1585648 () Bool)

(assert (=> b!3919823 (=> (not res!1585648) (not e!2423758))))

(declare-fun lt!1365985 () Bool)

(assert (=> b!3919823 (= res!1585648 lt!1365985)))

(declare-fun b!3919824 () Bool)

(declare-fun e!2423756 () Bool)

(declare-fun e!2423759 () Bool)

(assert (=> b!3919824 (= e!2423756 e!2423759)))

(declare-fun c!681241 () Bool)

(assert (=> b!3919824 (= c!681241 ((_ is EmptyLang!11377) (regex!6472 (rule!9402 (_1!23537 (v!39217 lt!1365940))))))))

(declare-fun b!3919825 () Bool)

(declare-fun res!1585646 () Bool)

(assert (=> b!3919825 (=> res!1585646 e!2423757)))

(declare-fun tail!6010 (List!41669) List!41669)

(assert (=> b!3919825 (= res!1585646 (not (isEmpty!24732 (tail!6010 lt!1365944))))))

(declare-fun b!3919826 () Bool)

(assert (=> b!3919826 (= e!2423753 e!2423755)))

(declare-fun res!1585643 () Bool)

(assert (=> b!3919826 (=> (not res!1585643) (not e!2423755))))

(assert (=> b!3919826 (= res!1585643 (not lt!1365985))))

(declare-fun b!3919827 () Bool)

(assert (=> b!3919827 (= e!2423759 (not lt!1365985))))

(declare-fun bm!284588 () Bool)

(assert (=> bm!284588 (= call!284593 (isEmpty!24732 lt!1365944))))

(declare-fun b!3919828 () Bool)

(declare-fun e!2423754 () Bool)

(declare-fun derivativeStep!3449 (Regex!11377 C!22940) Regex!11377)

(declare-fun head!8294 (List!41669) C!22940)

(assert (=> b!3919828 (= e!2423754 (matchR!5466 (derivativeStep!3449 (regex!6472 (rule!9402 (_1!23537 (v!39217 lt!1365940)))) (head!8294 lt!1365944)) (tail!6010 lt!1365944)))))

(declare-fun b!3919829 () Bool)

(declare-fun nullable!3984 (Regex!11377) Bool)

(assert (=> b!3919829 (= e!2423754 (nullable!3984 (regex!6472 (rule!9402 (_1!23537 (v!39217 lt!1365940))))))))

(declare-fun b!3919830 () Bool)

(declare-fun res!1585644 () Bool)

(assert (=> b!3919830 (=> (not res!1585644) (not e!2423758))))

(assert (=> b!3919830 (= res!1585644 (isEmpty!24732 (tail!6010 lt!1365944)))))

(declare-fun b!3919831 () Bool)

(assert (=> b!3919831 (= e!2423756 (= lt!1365985 call!284593))))

(declare-fun d!1162711 () Bool)

(assert (=> d!1162711 e!2423756))

(declare-fun c!681242 () Bool)

(assert (=> d!1162711 (= c!681242 ((_ is EmptyExpr!11377) (regex!6472 (rule!9402 (_1!23537 (v!39217 lt!1365940))))))))

(assert (=> d!1162711 (= lt!1365985 e!2423754)))

(declare-fun c!681243 () Bool)

(assert (=> d!1162711 (= c!681243 (isEmpty!24732 lt!1365944))))

(declare-fun validRegex!5183 (Regex!11377) Bool)

(assert (=> d!1162711 (validRegex!5183 (regex!6472 (rule!9402 (_1!23537 (v!39217 lt!1365940)))))))

(assert (=> d!1162711 (= (matchR!5466 (regex!6472 (rule!9402 (_1!23537 (v!39217 lt!1365940)))) lt!1365944) lt!1365985)))

(declare-fun b!3919832 () Bool)

(assert (=> b!3919832 (= e!2423757 (not (= (head!8294 lt!1365944) (c!681223 (regex!6472 (rule!9402 (_1!23537 (v!39217 lt!1365940))))))))))

(declare-fun b!3919833 () Bool)

(assert (=> b!3919833 (= e!2423758 (= (head!8294 lt!1365944) (c!681223 (regex!6472 (rule!9402 (_1!23537 (v!39217 lt!1365940)))))))))

(declare-fun b!3919834 () Bool)

(declare-fun res!1585647 () Bool)

(assert (=> b!3919834 (=> res!1585647 e!2423753)))

(assert (=> b!3919834 (= res!1585647 (not ((_ is ElementMatch!11377) (regex!6472 (rule!9402 (_1!23537 (v!39217 lt!1365940)))))))))

(assert (=> b!3919834 (= e!2423759 e!2423753)))

(declare-fun b!3919835 () Bool)

(declare-fun res!1585642 () Bool)

(assert (=> b!3919835 (=> (not res!1585642) (not e!2423758))))

(assert (=> b!3919835 (= res!1585642 (not call!284593))))

(assert (= (and d!1162711 c!681243) b!3919829))

(assert (= (and d!1162711 (not c!681243)) b!3919828))

(assert (= (and d!1162711 c!681242) b!3919831))

(assert (= (and d!1162711 (not c!681242)) b!3919824))

(assert (= (and b!3919824 c!681241) b!3919827))

(assert (= (and b!3919824 (not c!681241)) b!3919834))

(assert (= (and b!3919834 (not res!1585647)) b!3919823))

(assert (= (and b!3919823 res!1585648) b!3919835))

(assert (= (and b!3919835 res!1585642) b!3919830))

(assert (= (and b!3919830 res!1585644) b!3919833))

(assert (= (and b!3919823 (not res!1585645)) b!3919826))

(assert (= (and b!3919826 res!1585643) b!3919822))

(assert (= (and b!3919822 (not res!1585649)) b!3919825))

(assert (= (and b!3919825 (not res!1585646)) b!3919832))

(assert (= (or b!3919831 b!3919822 b!3919835) bm!284588))

(declare-fun m!4483545 () Bool)

(assert (=> bm!284588 m!4483545))

(declare-fun m!4483547 () Bool)

(assert (=> b!3919833 m!4483547))

(assert (=> d!1162711 m!4483545))

(declare-fun m!4483549 () Bool)

(assert (=> d!1162711 m!4483549))

(assert (=> b!3919832 m!4483547))

(declare-fun m!4483551 () Bool)

(assert (=> b!3919829 m!4483551))

(assert (=> b!3919828 m!4483547))

(assert (=> b!3919828 m!4483547))

(declare-fun m!4483553 () Bool)

(assert (=> b!3919828 m!4483553))

(declare-fun m!4483555 () Bool)

(assert (=> b!3919828 m!4483555))

(assert (=> b!3919828 m!4483553))

(assert (=> b!3919828 m!4483555))

(declare-fun m!4483557 () Bool)

(assert (=> b!3919828 m!4483557))

(assert (=> b!3919825 m!4483555))

(assert (=> b!3919825 m!4483555))

(declare-fun m!4483559 () Bool)

(assert (=> b!3919825 m!4483559))

(assert (=> b!3919830 m!4483555))

(assert (=> b!3919830 m!4483555))

(assert (=> b!3919830 m!4483559))

(assert (=> b!3919743 d!1162711))

(declare-fun b!3919934 () Bool)

(declare-fun e!2423819 () Bool)

(declare-fun e!2423816 () Bool)

(assert (=> b!3919934 (= e!2423819 e!2423816)))

(declare-fun res!1585702 () Bool)

(assert (=> b!3919934 (=> (not res!1585702) (not e!2423816))))

(declare-fun lt!1366023 () Option!8892)

(assert (=> b!3919934 (= res!1585702 (matchR!5466 (regex!6472 (rule!9402 (_1!23537 (v!39217 lt!1365940)))) (list!15447 (charsOf!4296 (_1!23537 (get!13728 lt!1366023))))))))

(declare-fun b!3919935 () Bool)

(assert (=> b!3919935 (= e!2423816 (= (size!31193 (_1!23537 (get!13728 lt!1366023))) (size!31194 (originalCharacters!7072 (_1!23537 (get!13728 lt!1366023))))))))

(declare-fun b!3919936 () Bool)

(declare-fun res!1585701 () Bool)

(assert (=> b!3919936 (=> (not res!1585701) (not e!2423816))))

(assert (=> b!3919936 (= res!1585701 (= (rule!9402 (_1!23537 (get!13728 lt!1366023))) (rule!9402 (_1!23537 (v!39217 lt!1365940)))))))

(declare-fun b!3919937 () Bool)

(declare-fun e!2423817 () Option!8892)

(declare-datatypes ((tuple2!40810 0))(
  ( (tuple2!40811 (_1!23539 List!41669) (_2!23539 List!41669)) )
))
(declare-fun lt!1366026 () tuple2!40810)

(declare-fun size!31196 (BalanceConc!24960) Int)

(assert (=> b!3919937 (= e!2423817 (Some!8891 (tuple2!40807 (Token!12083 (apply!9711 (transformation!6472 (rule!9402 (_1!23537 (v!39217 lt!1365940)))) (seqFromList!4739 (_1!23539 lt!1366026))) (rule!9402 (_1!23537 (v!39217 lt!1365940))) (size!31196 (seqFromList!4739 (_1!23539 lt!1366026))) (_1!23539 lt!1366026)) (_2!23539 lt!1366026))))))

(declare-fun lt!1366025 () Unit!59688)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1218 (Regex!11377 List!41669) Unit!59688)

(assert (=> b!3919937 (= lt!1366025 (longestMatchIsAcceptedByMatchOrIsEmpty!1218 (regex!6472 (rule!9402 (_1!23537 (v!39217 lt!1365940)))) lt!1365952))))

(declare-fun res!1585699 () Bool)

(declare-fun findLongestMatchInner!1245 (Regex!11377 List!41669 Int List!41669 List!41669 Int) tuple2!40810)

(assert (=> b!3919937 (= res!1585699 (isEmpty!24732 (_1!23539 (findLongestMatchInner!1245 (regex!6472 (rule!9402 (_1!23537 (v!39217 lt!1365940)))) Nil!41545 (size!31194 Nil!41545) lt!1365952 lt!1365952 (size!31194 lt!1365952)))))))

(declare-fun e!2423818 () Bool)

(assert (=> b!3919937 (=> res!1585699 e!2423818)))

(assert (=> b!3919937 e!2423818))

(declare-fun lt!1366028 () Unit!59688)

(assert (=> b!3919937 (= lt!1366028 lt!1366025)))

(declare-fun lt!1366027 () Unit!59688)

(declare-fun lemmaSemiInverse!1751 (TokenValueInjection!12832 BalanceConc!24960) Unit!59688)

(assert (=> b!3919937 (= lt!1366027 (lemmaSemiInverse!1751 (transformation!6472 (rule!9402 (_1!23537 (v!39217 lt!1365940)))) (seqFromList!4739 (_1!23539 lt!1366026))))))

(declare-fun b!3919939 () Bool)

(assert (=> b!3919939 (= e!2423818 (matchR!5466 (regex!6472 (rule!9402 (_1!23537 (v!39217 lt!1365940)))) (_1!23539 (findLongestMatchInner!1245 (regex!6472 (rule!9402 (_1!23537 (v!39217 lt!1365940)))) Nil!41545 (size!31194 Nil!41545) lt!1365952 lt!1365952 (size!31194 lt!1365952)))))))

(declare-fun b!3919940 () Bool)

(declare-fun res!1585705 () Bool)

(assert (=> b!3919940 (=> (not res!1585705) (not e!2423816))))

(assert (=> b!3919940 (= res!1585705 (= (value!205086 (_1!23537 (get!13728 lt!1366023))) (apply!9711 (transformation!6472 (rule!9402 (_1!23537 (get!13728 lt!1366023)))) (seqFromList!4739 (originalCharacters!7072 (_1!23537 (get!13728 lt!1366023)))))))))

(declare-fun b!3919941 () Bool)

(declare-fun res!1585703 () Bool)

(assert (=> b!3919941 (=> (not res!1585703) (not e!2423816))))

(assert (=> b!3919941 (= res!1585703 (< (size!31194 (_2!23537 (get!13728 lt!1366023))) (size!31194 lt!1365952)))))

(declare-fun b!3919942 () Bool)

(assert (=> b!3919942 (= e!2423817 None!8891)))

(declare-fun b!3919938 () Bool)

(declare-fun res!1585700 () Bool)

(assert (=> b!3919938 (=> (not res!1585700) (not e!2423816))))

(assert (=> b!3919938 (= res!1585700 (= (++!10701 (list!15447 (charsOf!4296 (_1!23537 (get!13728 lt!1366023)))) (_2!23537 (get!13728 lt!1366023))) lt!1365952))))

(declare-fun d!1162719 () Bool)

(assert (=> d!1162719 e!2423819))

(declare-fun res!1585704 () Bool)

(assert (=> d!1162719 (=> res!1585704 e!2423819)))

(declare-fun isEmpty!24735 (Option!8892) Bool)

(assert (=> d!1162719 (= res!1585704 (isEmpty!24735 lt!1366023))))

(assert (=> d!1162719 (= lt!1366023 e!2423817)))

(declare-fun c!681264 () Bool)

(assert (=> d!1162719 (= c!681264 (isEmpty!24732 (_1!23539 lt!1366026)))))

(declare-fun findLongestMatch!1158 (Regex!11377 List!41669) tuple2!40810)

(assert (=> d!1162719 (= lt!1366026 (findLongestMatch!1158 (regex!6472 (rule!9402 (_1!23537 (v!39217 lt!1365940)))) lt!1365952))))

(assert (=> d!1162719 (ruleValid!2420 thiss!20629 (rule!9402 (_1!23537 (v!39217 lt!1365940))))))

(assert (=> d!1162719 (= (maxPrefixOneRule!2435 thiss!20629 (rule!9402 (_1!23537 (v!39217 lt!1365940))) lt!1365952) lt!1366023)))

(assert (= (and d!1162719 c!681264) b!3919942))

(assert (= (and d!1162719 (not c!681264)) b!3919937))

(assert (= (and b!3919937 (not res!1585699)) b!3919939))

(assert (= (and d!1162719 (not res!1585704)) b!3919934))

(assert (= (and b!3919934 res!1585702) b!3919938))

(assert (= (and b!3919938 res!1585700) b!3919941))

(assert (= (and b!3919941 res!1585703) b!3919936))

(assert (= (and b!3919936 res!1585701) b!3919940))

(assert (= (and b!3919940 res!1585705) b!3919935))

(declare-fun m!4483679 () Bool)

(assert (=> b!3919936 m!4483679))

(assert (=> b!3919934 m!4483679))

(declare-fun m!4483681 () Bool)

(assert (=> b!3919934 m!4483681))

(assert (=> b!3919934 m!4483681))

(declare-fun m!4483683 () Bool)

(assert (=> b!3919934 m!4483683))

(assert (=> b!3919934 m!4483683))

(declare-fun m!4483685 () Bool)

(assert (=> b!3919934 m!4483685))

(declare-fun m!4483687 () Bool)

(assert (=> b!3919937 m!4483687))

(declare-fun m!4483689 () Bool)

(assert (=> b!3919937 m!4483689))

(declare-fun m!4483691 () Bool)

(assert (=> b!3919937 m!4483691))

(declare-fun m!4483693 () Bool)

(assert (=> b!3919937 m!4483693))

(assert (=> b!3919937 m!4483689))

(declare-fun m!4483695 () Bool)

(assert (=> b!3919937 m!4483695))

(assert (=> b!3919937 m!4483689))

(assert (=> b!3919937 m!4483693))

(assert (=> b!3919937 m!4483459))

(declare-fun m!4483697 () Bool)

(assert (=> b!3919937 m!4483697))

(assert (=> b!3919937 m!4483459))

(assert (=> b!3919937 m!4483689))

(declare-fun m!4483699 () Bool)

(assert (=> b!3919937 m!4483699))

(declare-fun m!4483701 () Bool)

(assert (=> b!3919937 m!4483701))

(assert (=> b!3919935 m!4483679))

(declare-fun m!4483703 () Bool)

(assert (=> b!3919935 m!4483703))

(assert (=> b!3919939 m!4483693))

(assert (=> b!3919939 m!4483459))

(assert (=> b!3919939 m!4483693))

(assert (=> b!3919939 m!4483459))

(assert (=> b!3919939 m!4483697))

(declare-fun m!4483705 () Bool)

(assert (=> b!3919939 m!4483705))

(assert (=> b!3919941 m!4483679))

(declare-fun m!4483707 () Bool)

(assert (=> b!3919941 m!4483707))

(assert (=> b!3919941 m!4483459))

(assert (=> b!3919938 m!4483679))

(assert (=> b!3919938 m!4483681))

(assert (=> b!3919938 m!4483681))

(assert (=> b!3919938 m!4483683))

(assert (=> b!3919938 m!4483683))

(declare-fun m!4483711 () Bool)

(assert (=> b!3919938 m!4483711))

(assert (=> b!3919940 m!4483679))

(declare-fun m!4483715 () Bool)

(assert (=> b!3919940 m!4483715))

(assert (=> b!3919940 m!4483715))

(declare-fun m!4483717 () Bool)

(assert (=> b!3919940 m!4483717))

(declare-fun m!4483719 () Bool)

(assert (=> d!1162719 m!4483719))

(declare-fun m!4483721 () Bool)

(assert (=> d!1162719 m!4483721))

(declare-fun m!4483723 () Bool)

(assert (=> d!1162719 m!4483723))

(assert (=> d!1162719 m!4483443))

(assert (=> b!3919743 d!1162719))

(declare-fun d!1162763 () Bool)

(assert (=> d!1162763 (= (maxPrefixOneRule!2435 thiss!20629 (rule!9402 (_1!23537 (v!39217 lt!1365940))) lt!1365952) (Some!8891 (tuple2!40807 (Token!12083 (apply!9711 (transformation!6472 (rule!9402 (_1!23537 (v!39217 lt!1365940)))) (seqFromList!4739 lt!1365944)) (rule!9402 (_1!23537 (v!39217 lt!1365940))) (size!31194 lt!1365944) lt!1365944) (_2!23537 (v!39217 lt!1365940)))))))

(declare-fun lt!1366041 () Unit!59688)

(declare-fun choose!23223 (LexerInterface!6061 List!41671 List!41669 List!41669 List!41669 Rule!12744) Unit!59688)

(assert (=> d!1162763 (= lt!1366041 (choose!23223 thiss!20629 rules!2768 lt!1365944 lt!1365952 (_2!23537 (v!39217 lt!1365940)) (rule!9402 (_1!23537 (v!39217 lt!1365940)))))))

(assert (=> d!1162763 (not (isEmpty!24734 rules!2768))))

(assert (=> d!1162763 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1303 thiss!20629 rules!2768 lt!1365944 lt!1365952 (_2!23537 (v!39217 lt!1365940)) (rule!9402 (_1!23537 (v!39217 lt!1365940)))) lt!1366041)))

(declare-fun bs!585845 () Bool)

(assert (= bs!585845 d!1162763))

(assert (=> bs!585845 m!4483435))

(assert (=> bs!585845 m!4483465))

(assert (=> bs!585845 m!4483433))

(declare-fun m!4483743 () Bool)

(assert (=> bs!585845 m!4483743))

(assert (=> bs!585845 m!4483469))

(assert (=> bs!585845 m!4483435))

(assert (=> bs!585845 m!4483449))

(assert (=> b!3919743 d!1162763))

(declare-fun d!1162775 () Bool)

(declare-fun e!2423857 () Bool)

(assert (=> d!1162775 e!2423857))

(declare-fun c!681283 () Bool)

(declare-fun lt!1366051 () tuple2!40808)

(declare-fun size!31197 (List!41672) Int)

(assert (=> d!1162775 (= c!681283 (> (size!31197 (_1!23538 lt!1366051)) 0))))

(declare-fun e!2423856 () tuple2!40808)

(assert (=> d!1162775 (= lt!1366051 e!2423856)))

(declare-fun c!681282 () Bool)

(declare-fun lt!1366050 () Option!8892)

(assert (=> d!1162775 (= c!681282 ((_ is Some!8891) lt!1366050))))

(assert (=> d!1162775 (= lt!1366050 (maxPrefix!3365 thiss!20629 rules!2768 lt!1365952))))

(assert (=> d!1162775 (= (lexList!1829 thiss!20629 rules!2768 lt!1365952) lt!1366051)))

(declare-fun b!3920012 () Bool)

(assert (=> b!3920012 (= e!2423857 (= (_2!23538 lt!1366051) lt!1365952))))

(declare-fun b!3920013 () Bool)

(declare-fun e!2423858 () Bool)

(assert (=> b!3920013 (= e!2423857 e!2423858)))

(declare-fun res!1585741 () Bool)

(assert (=> b!3920013 (= res!1585741 (< (size!31194 (_2!23538 lt!1366051)) (size!31194 lt!1365952)))))

(assert (=> b!3920013 (=> (not res!1585741) (not e!2423858))))

(declare-fun b!3920014 () Bool)

(assert (=> b!3920014 (= e!2423858 (not (isEmpty!24733 (_1!23538 lt!1366051))))))

(declare-fun b!3920015 () Bool)

(declare-fun lt!1366049 () tuple2!40808)

(assert (=> b!3920015 (= e!2423856 (tuple2!40809 (Cons!41548 (_1!23537 (v!39217 lt!1366050)) (_1!23538 lt!1366049)) (_2!23538 lt!1366049)))))

(assert (=> b!3920015 (= lt!1366049 (lexList!1829 thiss!20629 rules!2768 (_2!23537 (v!39217 lt!1366050))))))

(declare-fun b!3920016 () Bool)

(assert (=> b!3920016 (= e!2423856 (tuple2!40809 Nil!41548 lt!1365952))))

(assert (= (and d!1162775 c!681282) b!3920015))

(assert (= (and d!1162775 (not c!681282)) b!3920016))

(assert (= (and d!1162775 c!681283) b!3920013))

(assert (= (and d!1162775 (not c!681283)) b!3920012))

(assert (= (and b!3920013 res!1585741) b!3920014))

(declare-fun m!4483753 () Bool)

(assert (=> d!1162775 m!4483753))

(assert (=> d!1162775 m!4483463))

(declare-fun m!4483755 () Bool)

(assert (=> b!3920013 m!4483755))

(assert (=> b!3920013 m!4483459))

(declare-fun m!4483757 () Bool)

(assert (=> b!3920014 m!4483757))

(declare-fun m!4483759 () Bool)

(assert (=> b!3920015 m!4483759))

(assert (=> b!3919764 d!1162775))

(declare-fun b!3920028 () Bool)

(declare-fun e!2423864 () Bool)

(declare-fun lt!1366054 () List!41672)

(assert (=> b!3920028 (= e!2423864 (or (not (= suffixTokens!72 Nil!41548)) (= lt!1366054 prefixTokens!80)))))

(declare-fun d!1162779 () Bool)

(assert (=> d!1162779 e!2423864))

(declare-fun res!1585747 () Bool)

(assert (=> d!1162779 (=> (not res!1585747) (not e!2423864))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6255 (List!41672) (InoxSet Token!12082))

(assert (=> d!1162779 (= res!1585747 (= (content!6255 lt!1366054) ((_ map or) (content!6255 prefixTokens!80) (content!6255 suffixTokens!72))))))

(declare-fun e!2423863 () List!41672)

(assert (=> d!1162779 (= lt!1366054 e!2423863)))

(declare-fun c!681286 () Bool)

(assert (=> d!1162779 (= c!681286 ((_ is Nil!41548) prefixTokens!80))))

(assert (=> d!1162779 (= (++!10702 prefixTokens!80 suffixTokens!72) lt!1366054)))

(declare-fun b!3920025 () Bool)

(assert (=> b!3920025 (= e!2423863 suffixTokens!72)))

(declare-fun b!3920026 () Bool)

(assert (=> b!3920026 (= e!2423863 (Cons!41548 (h!46968 prefixTokens!80) (++!10702 (t!324399 prefixTokens!80) suffixTokens!72)))))

(declare-fun b!3920027 () Bool)

(declare-fun res!1585746 () Bool)

(assert (=> b!3920027 (=> (not res!1585746) (not e!2423864))))

(assert (=> b!3920027 (= res!1585746 (= (size!31197 lt!1366054) (+ (size!31197 prefixTokens!80) (size!31197 suffixTokens!72))))))

(assert (= (and d!1162779 c!681286) b!3920025))

(assert (= (and d!1162779 (not c!681286)) b!3920026))

(assert (= (and d!1162779 res!1585747) b!3920027))

(assert (= (and b!3920027 res!1585746) b!3920028))

(declare-fun m!4483761 () Bool)

(assert (=> d!1162779 m!4483761))

(declare-fun m!4483763 () Bool)

(assert (=> d!1162779 m!4483763))

(declare-fun m!4483765 () Bool)

(assert (=> d!1162779 m!4483765))

(declare-fun m!4483767 () Bool)

(assert (=> b!3920026 m!4483767))

(declare-fun m!4483769 () Bool)

(assert (=> b!3920027 m!4483769))

(declare-fun m!4483771 () Bool)

(assert (=> b!3920027 m!4483771))

(declare-fun m!4483773 () Bool)

(assert (=> b!3920027 m!4483773))

(assert (=> b!3919764 d!1162779))

(declare-fun b!3920039 () Bool)

(declare-fun res!1585753 () Bool)

(declare-fun e!2423869 () Bool)

(assert (=> b!3920039 (=> (not res!1585753) (not e!2423869))))

(declare-fun lt!1366057 () List!41669)

(assert (=> b!3920039 (= res!1585753 (= (size!31194 lt!1366057) (+ (size!31194 prefix!426) (size!31194 suffix!1176))))))

(declare-fun b!3920038 () Bool)

(declare-fun e!2423870 () List!41669)

(assert (=> b!3920038 (= e!2423870 (Cons!41545 (h!46965 prefix!426) (++!10701 (t!324396 prefix!426) suffix!1176)))))

(declare-fun b!3920040 () Bool)

(assert (=> b!3920040 (= e!2423869 (or (not (= suffix!1176 Nil!41545)) (= lt!1366057 prefix!426)))))

(declare-fun d!1162781 () Bool)

(assert (=> d!1162781 e!2423869))

(declare-fun res!1585752 () Bool)

(assert (=> d!1162781 (=> (not res!1585752) (not e!2423869))))

(declare-fun content!6256 (List!41669) (InoxSet C!22940))

(assert (=> d!1162781 (= res!1585752 (= (content!6256 lt!1366057) ((_ map or) (content!6256 prefix!426) (content!6256 suffix!1176))))))

(assert (=> d!1162781 (= lt!1366057 e!2423870)))

(declare-fun c!681289 () Bool)

(assert (=> d!1162781 (= c!681289 ((_ is Nil!41545) prefix!426))))

(assert (=> d!1162781 (= (++!10701 prefix!426 suffix!1176) lt!1366057)))

(declare-fun b!3920037 () Bool)

(assert (=> b!3920037 (= e!2423870 suffix!1176)))

(assert (= (and d!1162781 c!681289) b!3920037))

(assert (= (and d!1162781 (not c!681289)) b!3920038))

(assert (= (and d!1162781 res!1585752) b!3920039))

(assert (= (and b!3920039 res!1585753) b!3920040))

(declare-fun m!4483775 () Bool)

(assert (=> b!3920039 m!4483775))

(assert (=> b!3920039 m!4483453))

(assert (=> b!3920039 m!4483455))

(declare-fun m!4483777 () Bool)

(assert (=> b!3920038 m!4483777))

(declare-fun m!4483779 () Bool)

(assert (=> d!1162781 m!4483779))

(declare-fun m!4483781 () Bool)

(assert (=> d!1162781 m!4483781))

(declare-fun m!4483783 () Bool)

(assert (=> d!1162781 m!4483783))

(assert (=> b!3919764 d!1162781))

(declare-fun b!3920052 () Bool)

(declare-fun e!2423878 () Bool)

(declare-fun inv!16 (TokenValue!6702) Bool)

(assert (=> b!3920052 (= e!2423878 (inv!16 (value!205086 (h!46968 suffixTokens!72))))))

(declare-fun b!3920053 () Bool)

(declare-fun res!1585756 () Bool)

(declare-fun e!2423879 () Bool)

(assert (=> b!3920053 (=> res!1585756 e!2423879)))

(assert (=> b!3920053 (= res!1585756 (not ((_ is IntegerValue!20108) (value!205086 (h!46968 suffixTokens!72)))))))

(declare-fun e!2423877 () Bool)

(assert (=> b!3920053 (= e!2423877 e!2423879)))

(declare-fun b!3920054 () Bool)

(declare-fun inv!17 (TokenValue!6702) Bool)

(assert (=> b!3920054 (= e!2423877 (inv!17 (value!205086 (h!46968 suffixTokens!72))))))

(declare-fun b!3920055 () Bool)

(assert (=> b!3920055 (= e!2423878 e!2423877)))

(declare-fun c!681294 () Bool)

(assert (=> b!3920055 (= c!681294 ((_ is IntegerValue!20107) (value!205086 (h!46968 suffixTokens!72))))))

(declare-fun d!1162783 () Bool)

(declare-fun c!681295 () Bool)

(assert (=> d!1162783 (= c!681295 ((_ is IntegerValue!20106) (value!205086 (h!46968 suffixTokens!72))))))

(assert (=> d!1162783 (= (inv!21 (value!205086 (h!46968 suffixTokens!72))) e!2423878)))

(declare-fun b!3920051 () Bool)

(declare-fun inv!15 (TokenValue!6702) Bool)

(assert (=> b!3920051 (= e!2423879 (inv!15 (value!205086 (h!46968 suffixTokens!72))))))

(assert (= (and d!1162783 c!681295) b!3920052))

(assert (= (and d!1162783 (not c!681295)) b!3920055))

(assert (= (and b!3920055 c!681294) b!3920054))

(assert (= (and b!3920055 (not c!681294)) b!3920053))

(assert (= (and b!3920053 (not res!1585756)) b!3920051))

(declare-fun m!4483785 () Bool)

(assert (=> b!3920052 m!4483785))

(declare-fun m!4483787 () Bool)

(assert (=> b!3920054 m!4483787))

(declare-fun m!4483789 () Bool)

(assert (=> b!3920051 m!4483789))

(assert (=> b!3919742 d!1162783))

(declare-fun d!1162785 () Bool)

(assert (=> d!1162785 (= (inv!55741 (tag!7332 (rule!9402 (h!46968 prefixTokens!80)))) (= (mod (str.len (value!205060 (tag!7332 (rule!9402 (h!46968 prefixTokens!80))))) 2) 0))))

(assert (=> b!3919746 d!1162785))

(declare-fun d!1162787 () Bool)

(declare-fun res!1585759 () Bool)

(declare-fun e!2423882 () Bool)

(assert (=> d!1162787 (=> (not res!1585759) (not e!2423882))))

(declare-fun semiInverseModEq!2784 (Int Int) Bool)

(assert (=> d!1162787 (= res!1585759 (semiInverseModEq!2784 (toChars!8783 (transformation!6472 (rule!9402 (h!46968 prefixTokens!80)))) (toValue!8924 (transformation!6472 (rule!9402 (h!46968 prefixTokens!80))))))))

(assert (=> d!1162787 (= (inv!55744 (transformation!6472 (rule!9402 (h!46968 prefixTokens!80)))) e!2423882)))

(declare-fun b!3920058 () Bool)

(declare-fun equivClasses!2683 (Int Int) Bool)

(assert (=> b!3920058 (= e!2423882 (equivClasses!2683 (toChars!8783 (transformation!6472 (rule!9402 (h!46968 prefixTokens!80)))) (toValue!8924 (transformation!6472 (rule!9402 (h!46968 prefixTokens!80))))))))

(assert (= (and d!1162787 res!1585759) b!3920058))

(declare-fun m!4483791 () Bool)

(assert (=> d!1162787 m!4483791))

(declare-fun m!4483793 () Bool)

(assert (=> b!3920058 m!4483793))

(assert (=> b!3919746 d!1162787))

(declare-fun b!3920062 () Bool)

(declare-fun lt!1366058 () List!41672)

(declare-fun e!2423884 () Bool)

(assert (=> b!3920062 (= e!2423884 (or (not (= (_1!23538 lt!1365942) Nil!41548)) (= lt!1366058 (Cons!41548 (_1!23537 (v!39217 lt!1365940)) Nil!41548))))))

(declare-fun d!1162789 () Bool)

(assert (=> d!1162789 e!2423884))

(declare-fun res!1585761 () Bool)

(assert (=> d!1162789 (=> (not res!1585761) (not e!2423884))))

(assert (=> d!1162789 (= res!1585761 (= (content!6255 lt!1366058) ((_ map or) (content!6255 (Cons!41548 (_1!23537 (v!39217 lt!1365940)) Nil!41548)) (content!6255 (_1!23538 lt!1365942)))))))

(declare-fun e!2423883 () List!41672)

(assert (=> d!1162789 (= lt!1366058 e!2423883)))

(declare-fun c!681296 () Bool)

(assert (=> d!1162789 (= c!681296 ((_ is Nil!41548) (Cons!41548 (_1!23537 (v!39217 lt!1365940)) Nil!41548)))))

(assert (=> d!1162789 (= (++!10702 (Cons!41548 (_1!23537 (v!39217 lt!1365940)) Nil!41548) (_1!23538 lt!1365942)) lt!1366058)))

(declare-fun b!3920059 () Bool)

(assert (=> b!3920059 (= e!2423883 (_1!23538 lt!1365942))))

(declare-fun b!3920060 () Bool)

(assert (=> b!3920060 (= e!2423883 (Cons!41548 (h!46968 (Cons!41548 (_1!23537 (v!39217 lt!1365940)) Nil!41548)) (++!10702 (t!324399 (Cons!41548 (_1!23537 (v!39217 lt!1365940)) Nil!41548)) (_1!23538 lt!1365942))))))

(declare-fun b!3920061 () Bool)

(declare-fun res!1585760 () Bool)

(assert (=> b!3920061 (=> (not res!1585760) (not e!2423884))))

(assert (=> b!3920061 (= res!1585760 (= (size!31197 lt!1366058) (+ (size!31197 (Cons!41548 (_1!23537 (v!39217 lt!1365940)) Nil!41548)) (size!31197 (_1!23538 lt!1365942)))))))

(assert (= (and d!1162789 c!681296) b!3920059))

(assert (= (and d!1162789 (not c!681296)) b!3920060))

(assert (= (and d!1162789 res!1585761) b!3920061))

(assert (= (and b!3920061 res!1585760) b!3920062))

(declare-fun m!4483795 () Bool)

(assert (=> d!1162789 m!4483795))

(declare-fun m!4483797 () Bool)

(assert (=> d!1162789 m!4483797))

(declare-fun m!4483799 () Bool)

(assert (=> d!1162789 m!4483799))

(declare-fun m!4483801 () Bool)

(assert (=> b!3920060 m!4483801))

(declare-fun m!4483803 () Bool)

(assert (=> b!3920061 m!4483803))

(declare-fun m!4483805 () Bool)

(assert (=> b!3920061 m!4483805))

(declare-fun m!4483807 () Bool)

(assert (=> b!3920061 m!4483807))

(assert (=> b!3919759 d!1162789))

(declare-fun d!1162791 () Bool)

(declare-fun e!2423886 () Bool)

(assert (=> d!1162791 e!2423886))

(declare-fun c!681298 () Bool)

(declare-fun lt!1366061 () tuple2!40808)

(assert (=> d!1162791 (= c!681298 (> (size!31197 (_1!23538 lt!1366061)) 0))))

(declare-fun e!2423885 () tuple2!40808)

(assert (=> d!1162791 (= lt!1366061 e!2423885)))

(declare-fun c!681297 () Bool)

(declare-fun lt!1366060 () Option!8892)

(assert (=> d!1162791 (= c!681297 ((_ is Some!8891) lt!1366060))))

(assert (=> d!1162791 (= lt!1366060 (maxPrefix!3365 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1162791 (= (lexList!1829 thiss!20629 rules!2768 suffix!1176) lt!1366061)))

(declare-fun b!3920063 () Bool)

(assert (=> b!3920063 (= e!2423886 (= (_2!23538 lt!1366061) suffix!1176))))

(declare-fun b!3920064 () Bool)

(declare-fun e!2423887 () Bool)

(assert (=> b!3920064 (= e!2423886 e!2423887)))

(declare-fun res!1585762 () Bool)

(assert (=> b!3920064 (= res!1585762 (< (size!31194 (_2!23538 lt!1366061)) (size!31194 suffix!1176)))))

(assert (=> b!3920064 (=> (not res!1585762) (not e!2423887))))

(declare-fun b!3920065 () Bool)

(assert (=> b!3920065 (= e!2423887 (not (isEmpty!24733 (_1!23538 lt!1366061))))))

(declare-fun b!3920066 () Bool)

(declare-fun lt!1366059 () tuple2!40808)

(assert (=> b!3920066 (= e!2423885 (tuple2!40809 (Cons!41548 (_1!23537 (v!39217 lt!1366060)) (_1!23538 lt!1366059)) (_2!23538 lt!1366059)))))

(assert (=> b!3920066 (= lt!1366059 (lexList!1829 thiss!20629 rules!2768 (_2!23537 (v!39217 lt!1366060))))))

(declare-fun b!3920067 () Bool)

(assert (=> b!3920067 (= e!2423885 (tuple2!40809 Nil!41548 suffix!1176))))

(assert (= (and d!1162791 c!681297) b!3920066))

(assert (= (and d!1162791 (not c!681297)) b!3920067))

(assert (= (and d!1162791 c!681298) b!3920064))

(assert (= (and d!1162791 (not c!681298)) b!3920063))

(assert (= (and b!3920064 res!1585762) b!3920065))

(declare-fun m!4483809 () Bool)

(assert (=> d!1162791 m!4483809))

(declare-fun m!4483811 () Bool)

(assert (=> d!1162791 m!4483811))

(declare-fun m!4483813 () Bool)

(assert (=> b!3920064 m!4483813))

(assert (=> b!3920064 m!4483455))

(declare-fun m!4483815 () Bool)

(assert (=> b!3920065 m!4483815))

(declare-fun m!4483817 () Bool)

(assert (=> b!3920066 m!4483817))

(assert (=> b!3919738 d!1162791))

(declare-fun d!1162793 () Bool)

(declare-fun res!1585765 () Bool)

(declare-fun e!2423890 () Bool)

(assert (=> d!1162793 (=> (not res!1585765) (not e!2423890))))

(declare-fun rulesValid!2519 (LexerInterface!6061 List!41671) Bool)

(assert (=> d!1162793 (= res!1585765 (rulesValid!2519 thiss!20629 rules!2768))))

(assert (=> d!1162793 (= (rulesInvariant!5404 thiss!20629 rules!2768) e!2423890)))

(declare-fun b!3920070 () Bool)

(declare-datatypes ((List!41674 0))(
  ( (Nil!41550) (Cons!41550 (h!46970 String!47227) (t!324521 List!41674)) )
))
(declare-fun noDuplicateTag!2520 (LexerInterface!6061 List!41671 List!41674) Bool)

(assert (=> b!3920070 (= e!2423890 (noDuplicateTag!2520 thiss!20629 rules!2768 Nil!41550))))

(assert (= (and d!1162793 res!1585765) b!3920070))

(declare-fun m!4483819 () Bool)

(assert (=> d!1162793 m!4483819))

(declare-fun m!4483821 () Bool)

(assert (=> b!3920070 m!4483821))

(assert (=> b!3919758 d!1162793))

(declare-fun d!1162795 () Bool)

(assert (=> d!1162795 (not (= (lexList!1829 thiss!20629 rules!2768 (_2!23537 lt!1365949)) (tuple2!40809 suffixTokens!72 suffixResult!91)))))

(declare-fun lt!1366079 () Unit!59688)

(declare-fun choose!23226 (LexerInterface!6061 List!41671 List!41669 List!41669 List!41672 List!41669) Unit!59688)

(assert (=> d!1162795 (= lt!1366079 (choose!23226 thiss!20629 rules!2768 suffix!1176 (_2!23537 lt!1365949) suffixTokens!72 suffixResult!91))))

(assert (=> d!1162795 (not (isEmpty!24734 rules!2768))))

(assert (=> d!1162795 (= (lemmaLexWithSmallerInputCannotProduceSameResults!72 thiss!20629 rules!2768 suffix!1176 (_2!23537 lt!1365949) suffixTokens!72 suffixResult!91) lt!1366079)))

(declare-fun bs!585846 () Bool)

(assert (= bs!585846 d!1162795))

(assert (=> bs!585846 m!4483473))

(declare-fun m!4483823 () Bool)

(assert (=> bs!585846 m!4483823))

(assert (=> bs!585846 m!4483465))

(assert (=> b!3919740 d!1162795))

(declare-fun d!1162797 () Bool)

(assert (=> d!1162797 (and (= lt!1365944 lt!1365944) (= (_2!23537 (v!39217 lt!1365940)) (_2!23537 lt!1365949)))))

(declare-fun lt!1366082 () Unit!59688)

(declare-fun choose!23228 (List!41669 List!41669 List!41669 List!41669) Unit!59688)

(assert (=> d!1162797 (= lt!1366082 (choose!23228 lt!1365944 (_2!23537 (v!39217 lt!1365940)) lt!1365944 (_2!23537 lt!1365949)))))

(assert (=> d!1162797 (= (++!10701 lt!1365944 (_2!23537 (v!39217 lt!1365940))) (++!10701 lt!1365944 (_2!23537 lt!1365949)))))

(assert (=> d!1162797 (= (lemmaConcatSameAndSameSizesThenSameLists!520 lt!1365944 (_2!23537 (v!39217 lt!1365940)) lt!1365944 (_2!23537 lt!1365949)) lt!1366082)))

(declare-fun bs!585847 () Bool)

(assert (= bs!585847 d!1162797))

(declare-fun m!4483865 () Bool)

(assert (=> bs!585847 m!4483865))

(assert (=> bs!585847 m!4483437))

(declare-fun m!4483867 () Bool)

(assert (=> bs!585847 m!4483867))

(assert (=> b!3919740 d!1162797))

(declare-fun b!3920119 () Bool)

(declare-fun res!1585805 () Bool)

(declare-fun e!2423914 () Bool)

(assert (=> b!3920119 (=> (not res!1585805) (not e!2423914))))

(declare-fun lt!1366098 () Option!8892)

(assert (=> b!3920119 (= res!1585805 (matchR!5466 (regex!6472 (rule!9402 (_1!23537 (get!13728 lt!1366098)))) (list!15447 (charsOf!4296 (_1!23537 (get!13728 lt!1366098))))))))

(declare-fun bm!284594 () Bool)

(declare-fun call!284599 () Option!8892)

(assert (=> bm!284594 (= call!284599 (maxPrefixOneRule!2435 thiss!20629 (h!46967 rules!2768) lt!1365952))))

(declare-fun d!1162799 () Bool)

(declare-fun e!2423913 () Bool)

(assert (=> d!1162799 e!2423913))

(declare-fun res!1585806 () Bool)

(assert (=> d!1162799 (=> res!1585806 e!2423913)))

(assert (=> d!1162799 (= res!1585806 (isEmpty!24735 lt!1366098))))

(declare-fun e!2423912 () Option!8892)

(assert (=> d!1162799 (= lt!1366098 e!2423912)))

(declare-fun c!681304 () Bool)

(assert (=> d!1162799 (= c!681304 (and ((_ is Cons!41547) rules!2768) ((_ is Nil!41547) (t!324398 rules!2768))))))

(declare-fun lt!1366097 () Unit!59688)

(declare-fun lt!1366099 () Unit!59688)

(assert (=> d!1162799 (= lt!1366097 lt!1366099)))

(assert (=> d!1162799 (isPrefix!3567 lt!1365952 lt!1365952)))

(declare-fun lemmaIsPrefixRefl!2263 (List!41669 List!41669) Unit!59688)

(assert (=> d!1162799 (= lt!1366099 (lemmaIsPrefixRefl!2263 lt!1365952 lt!1365952))))

(declare-fun rulesValidInductive!2333 (LexerInterface!6061 List!41671) Bool)

(assert (=> d!1162799 (rulesValidInductive!2333 thiss!20629 rules!2768)))

(assert (=> d!1162799 (= (maxPrefix!3365 thiss!20629 rules!2768 lt!1365952) lt!1366098)))

(declare-fun b!3920120 () Bool)

(declare-fun res!1585808 () Bool)

(assert (=> b!3920120 (=> (not res!1585808) (not e!2423914))))

(assert (=> b!3920120 (= res!1585808 (= (++!10701 (list!15447 (charsOf!4296 (_1!23537 (get!13728 lt!1366098)))) (_2!23537 (get!13728 lt!1366098))) lt!1365952))))

(declare-fun b!3920121 () Bool)

(declare-fun res!1585809 () Bool)

(assert (=> b!3920121 (=> (not res!1585809) (not e!2423914))))

(assert (=> b!3920121 (= res!1585809 (= (value!205086 (_1!23537 (get!13728 lt!1366098))) (apply!9711 (transformation!6472 (rule!9402 (_1!23537 (get!13728 lt!1366098)))) (seqFromList!4739 (originalCharacters!7072 (_1!23537 (get!13728 lt!1366098)))))))))

(declare-fun b!3920122 () Bool)

(declare-fun res!1585810 () Bool)

(assert (=> b!3920122 (=> (not res!1585810) (not e!2423914))))

(assert (=> b!3920122 (= res!1585810 (< (size!31194 (_2!23537 (get!13728 lt!1366098))) (size!31194 lt!1365952)))))

(declare-fun b!3920123 () Bool)

(assert (=> b!3920123 (= e!2423913 e!2423914)))

(declare-fun res!1585807 () Bool)

(assert (=> b!3920123 (=> (not res!1585807) (not e!2423914))))

(declare-fun isDefined!6932 (Option!8892) Bool)

(assert (=> b!3920123 (= res!1585807 (isDefined!6932 lt!1366098))))

(declare-fun b!3920124 () Bool)

(assert (=> b!3920124 (= e!2423912 call!284599)))

(declare-fun b!3920125 () Bool)

(declare-fun lt!1366096 () Option!8892)

(declare-fun lt!1366100 () Option!8892)

(assert (=> b!3920125 (= e!2423912 (ite (and ((_ is None!8891) lt!1366096) ((_ is None!8891) lt!1366100)) None!8891 (ite ((_ is None!8891) lt!1366100) lt!1366096 (ite ((_ is None!8891) lt!1366096) lt!1366100 (ite (>= (size!31193 (_1!23537 (v!39217 lt!1366096))) (size!31193 (_1!23537 (v!39217 lt!1366100)))) lt!1366096 lt!1366100)))))))

(assert (=> b!3920125 (= lt!1366096 call!284599)))

(assert (=> b!3920125 (= lt!1366100 (maxPrefix!3365 thiss!20629 (t!324398 rules!2768) lt!1365952))))

(declare-fun b!3920126 () Bool)

(declare-fun contains!8349 (List!41671 Rule!12744) Bool)

(assert (=> b!3920126 (= e!2423914 (contains!8349 rules!2768 (rule!9402 (_1!23537 (get!13728 lt!1366098)))))))

(declare-fun b!3920127 () Bool)

(declare-fun res!1585804 () Bool)

(assert (=> b!3920127 (=> (not res!1585804) (not e!2423914))))

(assert (=> b!3920127 (= res!1585804 (= (list!15447 (charsOf!4296 (_1!23537 (get!13728 lt!1366098)))) (originalCharacters!7072 (_1!23537 (get!13728 lt!1366098)))))))

(assert (= (and d!1162799 c!681304) b!3920124))

(assert (= (and d!1162799 (not c!681304)) b!3920125))

(assert (= (or b!3920124 b!3920125) bm!284594))

(assert (= (and d!1162799 (not res!1585806)) b!3920123))

(assert (= (and b!3920123 res!1585807) b!3920127))

(assert (= (and b!3920127 res!1585804) b!3920122))

(assert (= (and b!3920122 res!1585810) b!3920120))

(assert (= (and b!3920120 res!1585808) b!3920121))

(assert (= (and b!3920121 res!1585809) b!3920119))

(assert (= (and b!3920119 res!1585805) b!3920126))

(declare-fun m!4483877 () Bool)

(assert (=> b!3920126 m!4483877))

(declare-fun m!4483879 () Bool)

(assert (=> b!3920126 m!4483879))

(declare-fun m!4483881 () Bool)

(assert (=> bm!284594 m!4483881))

(assert (=> b!3920122 m!4483877))

(declare-fun m!4483883 () Bool)

(assert (=> b!3920122 m!4483883))

(assert (=> b!3920122 m!4483459))

(assert (=> b!3920121 m!4483877))

(declare-fun m!4483885 () Bool)

(assert (=> b!3920121 m!4483885))

(assert (=> b!3920121 m!4483885))

(declare-fun m!4483887 () Bool)

(assert (=> b!3920121 m!4483887))

(declare-fun m!4483889 () Bool)

(assert (=> d!1162799 m!4483889))

(declare-fun m!4483891 () Bool)

(assert (=> d!1162799 m!4483891))

(declare-fun m!4483893 () Bool)

(assert (=> d!1162799 m!4483893))

(declare-fun m!4483895 () Bool)

(assert (=> d!1162799 m!4483895))

(assert (=> b!3920120 m!4483877))

(declare-fun m!4483897 () Bool)

(assert (=> b!3920120 m!4483897))

(assert (=> b!3920120 m!4483897))

(declare-fun m!4483899 () Bool)

(assert (=> b!3920120 m!4483899))

(assert (=> b!3920120 m!4483899))

(declare-fun m!4483901 () Bool)

(assert (=> b!3920120 m!4483901))

(declare-fun m!4483903 () Bool)

(assert (=> b!3920125 m!4483903))

(assert (=> b!3920127 m!4483877))

(assert (=> b!3920127 m!4483897))

(assert (=> b!3920127 m!4483897))

(assert (=> b!3920127 m!4483899))

(assert (=> b!3920119 m!4483877))

(assert (=> b!3920119 m!4483897))

(assert (=> b!3920119 m!4483897))

(assert (=> b!3920119 m!4483899))

(assert (=> b!3920119 m!4483899))

(declare-fun m!4483905 () Bool)

(assert (=> b!3920119 m!4483905))

(declare-fun m!4483907 () Bool)

(assert (=> b!3920123 m!4483907))

(assert (=> b!3919739 d!1162799))

(declare-fun d!1162811 () Bool)

(declare-fun e!2423916 () Bool)

(assert (=> d!1162811 e!2423916))

(declare-fun c!681306 () Bool)

(declare-fun lt!1366103 () tuple2!40808)

(assert (=> d!1162811 (= c!681306 (> (size!31197 (_1!23538 lt!1366103)) 0))))

(declare-fun e!2423915 () tuple2!40808)

(assert (=> d!1162811 (= lt!1366103 e!2423915)))

(declare-fun c!681305 () Bool)

(declare-fun lt!1366102 () Option!8892)

(assert (=> d!1162811 (= c!681305 ((_ is Some!8891) lt!1366102))))

(assert (=> d!1162811 (= lt!1366102 (maxPrefix!3365 thiss!20629 rules!2768 (_2!23537 lt!1365949)))))

(assert (=> d!1162811 (= (lexList!1829 thiss!20629 rules!2768 (_2!23537 lt!1365949)) lt!1366103)))

(declare-fun b!3920128 () Bool)

(assert (=> b!3920128 (= e!2423916 (= (_2!23538 lt!1366103) (_2!23537 lt!1365949)))))

(declare-fun b!3920129 () Bool)

(declare-fun e!2423917 () Bool)

(assert (=> b!3920129 (= e!2423916 e!2423917)))

(declare-fun res!1585811 () Bool)

(assert (=> b!3920129 (= res!1585811 (< (size!31194 (_2!23538 lt!1366103)) (size!31194 (_2!23537 lt!1365949))))))

(assert (=> b!3920129 (=> (not res!1585811) (not e!2423917))))

(declare-fun b!3920130 () Bool)

(assert (=> b!3920130 (= e!2423917 (not (isEmpty!24733 (_1!23538 lt!1366103))))))

(declare-fun b!3920131 () Bool)

(declare-fun lt!1366101 () tuple2!40808)

(assert (=> b!3920131 (= e!2423915 (tuple2!40809 (Cons!41548 (_1!23537 (v!39217 lt!1366102)) (_1!23538 lt!1366101)) (_2!23538 lt!1366101)))))

(assert (=> b!3920131 (= lt!1366101 (lexList!1829 thiss!20629 rules!2768 (_2!23537 (v!39217 lt!1366102))))))

(declare-fun b!3920132 () Bool)

(assert (=> b!3920132 (= e!2423915 (tuple2!40809 Nil!41548 (_2!23537 lt!1365949)))))

(assert (= (and d!1162811 c!681305) b!3920131))

(assert (= (and d!1162811 (not c!681305)) b!3920132))

(assert (= (and d!1162811 c!681306) b!3920129))

(assert (= (and d!1162811 (not c!681306)) b!3920128))

(assert (= (and b!3920129 res!1585811) b!3920130))

(declare-fun m!4483909 () Bool)

(assert (=> d!1162811 m!4483909))

(declare-fun m!4483911 () Bool)

(assert (=> d!1162811 m!4483911))

(declare-fun m!4483913 () Bool)

(assert (=> b!3920129 m!4483913))

(assert (=> b!3920129 m!4483507))

(declare-fun m!4483915 () Bool)

(assert (=> b!3920130 m!4483915))

(declare-fun m!4483917 () Bool)

(assert (=> b!3920131 m!4483917))

(assert (=> bm!284585 d!1162811))

(declare-fun d!1162813 () Bool)

(assert (=> d!1162813 (= (head!8293 prefixTokens!80) (h!46968 prefixTokens!80))))

(assert (=> b!3919763 d!1162813))

(declare-fun d!1162815 () Bool)

(assert (=> d!1162815 (= (get!13728 lt!1365940) (v!39217 lt!1365940))))

(assert (=> b!3919763 d!1162815))

(declare-fun d!1162817 () Bool)

(assert (=> d!1162817 (= (isEmpty!24732 prefix!426) ((_ is Nil!41545) prefix!426))))

(assert (=> b!3919741 d!1162817))

(declare-fun d!1162819 () Bool)

(assert (=> d!1162819 (= (tail!6009 prefixTokens!80) (t!324399 prefixTokens!80))))

(assert (=> b!3919762 d!1162819))

(declare-fun d!1162821 () Bool)

(assert (=> d!1162821 (= (isEmpty!24733 lt!1365943) ((_ is Nil!41548) lt!1365943))))

(assert (=> b!3919762 d!1162821))

(declare-fun b!3920134 () Bool)

(declare-fun e!2423919 () Bool)

(assert (=> b!3920134 (= e!2423919 (inv!16 (value!205086 (h!46968 prefixTokens!80))))))

(declare-fun b!3920135 () Bool)

(declare-fun res!1585812 () Bool)

(declare-fun e!2423920 () Bool)

(assert (=> b!3920135 (=> res!1585812 e!2423920)))

(assert (=> b!3920135 (= res!1585812 (not ((_ is IntegerValue!20108) (value!205086 (h!46968 prefixTokens!80)))))))

(declare-fun e!2423918 () Bool)

(assert (=> b!3920135 (= e!2423918 e!2423920)))

(declare-fun b!3920136 () Bool)

(assert (=> b!3920136 (= e!2423918 (inv!17 (value!205086 (h!46968 prefixTokens!80))))))

(declare-fun b!3920137 () Bool)

(assert (=> b!3920137 (= e!2423919 e!2423918)))

(declare-fun c!681307 () Bool)

(assert (=> b!3920137 (= c!681307 ((_ is IntegerValue!20107) (value!205086 (h!46968 prefixTokens!80))))))

(declare-fun d!1162823 () Bool)

(declare-fun c!681308 () Bool)

(assert (=> d!1162823 (= c!681308 ((_ is IntegerValue!20106) (value!205086 (h!46968 prefixTokens!80))))))

(assert (=> d!1162823 (= (inv!21 (value!205086 (h!46968 prefixTokens!80))) e!2423919)))

(declare-fun b!3920133 () Bool)

(assert (=> b!3920133 (= e!2423920 (inv!15 (value!205086 (h!46968 prefixTokens!80))))))

(assert (= (and d!1162823 c!681308) b!3920134))

(assert (= (and d!1162823 (not c!681308)) b!3920137))

(assert (= (and b!3920137 c!681307) b!3920136))

(assert (= (and b!3920137 (not c!681307)) b!3920135))

(assert (= (and b!3920135 (not res!1585812)) b!3920133))

(declare-fun m!4483919 () Bool)

(assert (=> b!3920134 m!4483919))

(declare-fun m!4483921 () Bool)

(assert (=> b!3920136 m!4483921))

(declare-fun m!4483923 () Bool)

(assert (=> b!3920133 m!4483923))

(assert (=> b!3919733 d!1162823))

(declare-fun d!1162825 () Bool)

(declare-fun lt!1366106 () Int)

(assert (=> d!1162825 (>= lt!1366106 0)))

(declare-fun e!2423923 () Int)

(assert (=> d!1162825 (= lt!1366106 e!2423923)))

(declare-fun c!681311 () Bool)

(assert (=> d!1162825 (= c!681311 ((_ is Nil!41545) suffix!1176))))

(assert (=> d!1162825 (= (size!31194 suffix!1176) lt!1366106)))

(declare-fun b!3920142 () Bool)

(assert (=> b!3920142 (= e!2423923 0)))

(declare-fun b!3920143 () Bool)

(assert (=> b!3920143 (= e!2423923 (+ 1 (size!31194 (t!324396 suffix!1176))))))

(assert (= (and d!1162825 c!681311) b!3920142))

(assert (= (and d!1162825 (not c!681311)) b!3920143))

(declare-fun m!4483925 () Bool)

(assert (=> b!3920143 m!4483925))

(assert (=> b!3919753 d!1162825))

(declare-fun d!1162827 () Bool)

(declare-fun lt!1366107 () Int)

(assert (=> d!1162827 (>= lt!1366107 0)))

(declare-fun e!2423924 () Int)

(assert (=> d!1162827 (= lt!1366107 e!2423924)))

(declare-fun c!681312 () Bool)

(assert (=> d!1162827 (= c!681312 ((_ is Nil!41545) (_2!23537 (v!39217 lt!1365940))))))

(assert (=> d!1162827 (= (size!31194 (_2!23537 (v!39217 lt!1365940))) lt!1366107)))

(declare-fun b!3920144 () Bool)

(assert (=> b!3920144 (= e!2423924 0)))

(declare-fun b!3920145 () Bool)

(assert (=> b!3920145 (= e!2423924 (+ 1 (size!31194 (t!324396 (_2!23537 (v!39217 lt!1365940))))))))

(assert (= (and d!1162827 c!681312) b!3920144))

(assert (= (and d!1162827 (not c!681312)) b!3920145))

(declare-fun m!4483927 () Bool)

(assert (=> b!3920145 m!4483927))

(assert (=> b!3919753 d!1162827))

(declare-fun d!1162829 () Bool)

(assert (=> d!1162829 (= (isEmpty!24733 prefixTokens!80) ((_ is Nil!41548) prefixTokens!80))))

(assert (=> b!3919755 d!1162829))

(declare-fun d!1162831 () Bool)

(declare-fun res!1585817 () Bool)

(declare-fun e!2423927 () Bool)

(assert (=> d!1162831 (=> (not res!1585817) (not e!2423927))))

(assert (=> d!1162831 (= res!1585817 (not (isEmpty!24732 (originalCharacters!7072 (h!46968 prefixTokens!80)))))))

(assert (=> d!1162831 (= (inv!55745 (h!46968 prefixTokens!80)) e!2423927)))

(declare-fun b!3920152 () Bool)

(declare-fun res!1585818 () Bool)

(assert (=> b!3920152 (=> (not res!1585818) (not e!2423927))))

(declare-fun dynLambda!17849 (Int TokenValue!6702) BalanceConc!24960)

(assert (=> b!3920152 (= res!1585818 (= (originalCharacters!7072 (h!46968 prefixTokens!80)) (list!15447 (dynLambda!17849 (toChars!8783 (transformation!6472 (rule!9402 (h!46968 prefixTokens!80)))) (value!205086 (h!46968 prefixTokens!80))))))))

(declare-fun b!3920153 () Bool)

(assert (=> b!3920153 (= e!2423927 (= (size!31193 (h!46968 prefixTokens!80)) (size!31194 (originalCharacters!7072 (h!46968 prefixTokens!80)))))))

(assert (= (and d!1162831 res!1585817) b!3920152))

(assert (= (and b!3920152 res!1585818) b!3920153))

(declare-fun b_lambda!114779 () Bool)

(assert (=> (not b_lambda!114779) (not b!3920152)))

(declare-fun t!324425 () Bool)

(declare-fun tb!234029 () Bool)

(assert (=> (and b!3919744 (= (toChars!8783 (transformation!6472 (rule!9402 (h!46968 prefixTokens!80)))) (toChars!8783 (transformation!6472 (rule!9402 (h!46968 prefixTokens!80))))) t!324425) tb!234029))

(declare-fun b!3920166 () Bool)

(declare-fun e!2423936 () Bool)

(declare-fun tp!1193088 () Bool)

(declare-fun inv!55748 (Conc!12683) Bool)

(assert (=> b!3920166 (= e!2423936 (and (inv!55748 (c!681222 (dynLambda!17849 (toChars!8783 (transformation!6472 (rule!9402 (h!46968 prefixTokens!80)))) (value!205086 (h!46968 prefixTokens!80))))) tp!1193088))))

(declare-fun result!283586 () Bool)

(declare-fun inv!55749 (BalanceConc!24960) Bool)

(assert (=> tb!234029 (= result!283586 (and (inv!55749 (dynLambda!17849 (toChars!8783 (transformation!6472 (rule!9402 (h!46968 prefixTokens!80)))) (value!205086 (h!46968 prefixTokens!80)))) e!2423936))))

(assert (= tb!234029 b!3920166))

(declare-fun m!4483929 () Bool)

(assert (=> b!3920166 m!4483929))

(declare-fun m!4483931 () Bool)

(assert (=> tb!234029 m!4483931))

(assert (=> b!3920152 t!324425))

(declare-fun b_and!298727 () Bool)

(assert (= b_and!298693 (and (=> t!324425 result!283586) b_and!298727)))

(declare-fun t!324427 () Bool)

(declare-fun tb!234031 () Bool)

(assert (=> (and b!3919731 (= (toChars!8783 (transformation!6472 (h!46967 rules!2768))) (toChars!8783 (transformation!6472 (rule!9402 (h!46968 prefixTokens!80))))) t!324427) tb!234031))

(declare-fun result!283590 () Bool)

(assert (= result!283590 result!283586))

(assert (=> b!3920152 t!324427))

(declare-fun b_and!298729 () Bool)

(assert (= b_and!298697 (and (=> t!324427 result!283590) b_and!298729)))

(declare-fun tb!234033 () Bool)

(declare-fun t!324429 () Bool)

(assert (=> (and b!3919761 (= (toChars!8783 (transformation!6472 (rule!9402 (h!46968 suffixTokens!72)))) (toChars!8783 (transformation!6472 (rule!9402 (h!46968 prefixTokens!80))))) t!324429) tb!234033))

(declare-fun result!283592 () Bool)

(assert (= result!283592 result!283586))

(assert (=> b!3920152 t!324429))

(declare-fun b_and!298731 () Bool)

(assert (= b_and!298701 (and (=> t!324429 result!283592) b_and!298731)))

(declare-fun m!4483933 () Bool)

(assert (=> d!1162831 m!4483933))

(declare-fun m!4483935 () Bool)

(assert (=> b!3920152 m!4483935))

(assert (=> b!3920152 m!4483935))

(declare-fun m!4483937 () Bool)

(assert (=> b!3920152 m!4483937))

(declare-fun m!4483939 () Bool)

(assert (=> b!3920153 m!4483939))

(assert (=> b!3919754 d!1162831))

(declare-fun d!1162833 () Bool)

(declare-fun lt!1366118 () Int)

(assert (=> d!1162833 (>= lt!1366118 0)))

(declare-fun e!2423937 () Int)

(assert (=> d!1162833 (= lt!1366118 e!2423937)))

(declare-fun c!681315 () Bool)

(assert (=> d!1162833 (= c!681315 ((_ is Nil!41545) (_2!23537 lt!1365949)))))

(assert (=> d!1162833 (= (size!31194 (_2!23537 lt!1365949)) lt!1366118)))

(declare-fun b!3920175 () Bool)

(assert (=> b!3920175 (= e!2423937 0)))

(declare-fun b!3920176 () Bool)

(assert (=> b!3920176 (= e!2423937 (+ 1 (size!31194 (t!324396 (_2!23537 lt!1365949)))))))

(assert (= (and d!1162833 c!681315) b!3920175))

(assert (= (and d!1162833 (not c!681315)) b!3920176))

(declare-fun m!4483941 () Bool)

(assert (=> b!3920176 m!4483941))

(assert (=> b!3919736 d!1162833))

(declare-fun d!1162835 () Bool)

(assert (=> d!1162835 (= (isEmpty!24734 rules!2768) ((_ is Nil!41547) rules!2768))))

(assert (=> b!3919756 d!1162835))

(declare-fun d!1162837 () Bool)

(assert (=> d!1162837 (= (inv!55741 (tag!7332 (rule!9402 (h!46968 suffixTokens!72)))) (= (mod (str.len (value!205060 (tag!7332 (rule!9402 (h!46968 suffixTokens!72))))) 2) 0))))

(assert (=> b!3919757 d!1162837))

(declare-fun d!1162839 () Bool)

(declare-fun res!1585833 () Bool)

(declare-fun e!2423938 () Bool)

(assert (=> d!1162839 (=> (not res!1585833) (not e!2423938))))

(assert (=> d!1162839 (= res!1585833 (semiInverseModEq!2784 (toChars!8783 (transformation!6472 (rule!9402 (h!46968 suffixTokens!72)))) (toValue!8924 (transformation!6472 (rule!9402 (h!46968 suffixTokens!72))))))))

(assert (=> d!1162839 (= (inv!55744 (transformation!6472 (rule!9402 (h!46968 suffixTokens!72)))) e!2423938)))

(declare-fun b!3920177 () Bool)

(assert (=> b!3920177 (= e!2423938 (equivClasses!2683 (toChars!8783 (transformation!6472 (rule!9402 (h!46968 suffixTokens!72)))) (toValue!8924 (transformation!6472 (rule!9402 (h!46968 suffixTokens!72))))))))

(assert (= (and d!1162839 res!1585833) b!3920177))

(declare-fun m!4483943 () Bool)

(assert (=> d!1162839 m!4483943))

(declare-fun m!4483945 () Bool)

(assert (=> b!3920177 m!4483945))

(assert (=> b!3919757 d!1162839))

(declare-fun d!1162841 () Bool)

(declare-fun fromListB!2194 (List!41669) BalanceConc!24960)

(assert (=> d!1162841 (= (seqFromList!4739 lt!1365944) (fromListB!2194 lt!1365944))))

(declare-fun bs!585849 () Bool)

(assert (= bs!585849 d!1162841))

(declare-fun m!4483947 () Bool)

(assert (=> bs!585849 m!4483947))

(assert (=> b!3919748 d!1162841))

(declare-fun d!1162843 () Bool)

(declare-fun e!2423940 () Bool)

(assert (=> d!1162843 e!2423940))

(declare-fun c!681317 () Bool)

(declare-fun lt!1366121 () tuple2!40808)

(assert (=> d!1162843 (= c!681317 (> (size!31197 (_1!23538 lt!1366121)) 0))))

(declare-fun e!2423939 () tuple2!40808)

(assert (=> d!1162843 (= lt!1366121 e!2423939)))

(declare-fun c!681316 () Bool)

(declare-fun lt!1366120 () Option!8892)

(assert (=> d!1162843 (= c!681316 ((_ is Some!8891) lt!1366120))))

(assert (=> d!1162843 (= lt!1366120 (maxPrefix!3365 thiss!20629 rules!2768 (_2!23537 (v!39217 lt!1365940))))))

(assert (=> d!1162843 (= (lexList!1829 thiss!20629 rules!2768 (_2!23537 (v!39217 lt!1365940))) lt!1366121)))

(declare-fun b!3920178 () Bool)

(assert (=> b!3920178 (= e!2423940 (= (_2!23538 lt!1366121) (_2!23537 (v!39217 lt!1365940))))))

(declare-fun b!3920179 () Bool)

(declare-fun e!2423941 () Bool)

(assert (=> b!3920179 (= e!2423940 e!2423941)))

(declare-fun res!1585834 () Bool)

(assert (=> b!3920179 (= res!1585834 (< (size!31194 (_2!23538 lt!1366121)) (size!31194 (_2!23537 (v!39217 lt!1365940)))))))

(assert (=> b!3920179 (=> (not res!1585834) (not e!2423941))))

(declare-fun b!3920180 () Bool)

(assert (=> b!3920180 (= e!2423941 (not (isEmpty!24733 (_1!23538 lt!1366121))))))

(declare-fun b!3920181 () Bool)

(declare-fun lt!1366119 () tuple2!40808)

(assert (=> b!3920181 (= e!2423939 (tuple2!40809 (Cons!41548 (_1!23537 (v!39217 lt!1366120)) (_1!23538 lt!1366119)) (_2!23538 lt!1366119)))))

(assert (=> b!3920181 (= lt!1366119 (lexList!1829 thiss!20629 rules!2768 (_2!23537 (v!39217 lt!1366120))))))

(declare-fun b!3920182 () Bool)

(assert (=> b!3920182 (= e!2423939 (tuple2!40809 Nil!41548 (_2!23537 (v!39217 lt!1365940))))))

(assert (= (and d!1162843 c!681316) b!3920181))

(assert (= (and d!1162843 (not c!681316)) b!3920182))

(assert (= (and d!1162843 c!681317) b!3920179))

(assert (= (and d!1162843 (not c!681317)) b!3920178))

(assert (= (and b!3920179 res!1585834) b!3920180))

(declare-fun m!4483949 () Bool)

(assert (=> d!1162843 m!4483949))

(declare-fun m!4483951 () Bool)

(assert (=> d!1162843 m!4483951))

(declare-fun m!4483953 () Bool)

(assert (=> b!3920179 m!4483953))

(assert (=> b!3920179 m!4483457))

(declare-fun m!4483955 () Bool)

(assert (=> b!3920180 m!4483955))

(declare-fun m!4483957 () Bool)

(assert (=> b!3920181 m!4483957))

(assert (=> b!3919748 d!1162843))

(declare-fun d!1162845 () Bool)

(declare-fun dynLambda!17850 (Int BalanceConc!24960) TokenValue!6702)

(assert (=> d!1162845 (= (apply!9711 (transformation!6472 (rule!9402 (_1!23537 (v!39217 lt!1365940)))) (seqFromList!4739 lt!1365944)) (dynLambda!17850 (toValue!8924 (transformation!6472 (rule!9402 (_1!23537 (v!39217 lt!1365940))))) (seqFromList!4739 lt!1365944)))))

(declare-fun b_lambda!114781 () Bool)

(assert (=> (not b_lambda!114781) (not d!1162845)))

(declare-fun tb!234035 () Bool)

(declare-fun t!324431 () Bool)

(assert (=> (and b!3919744 (= (toValue!8924 (transformation!6472 (rule!9402 (h!46968 prefixTokens!80)))) (toValue!8924 (transformation!6472 (rule!9402 (_1!23537 (v!39217 lt!1365940)))))) t!324431) tb!234035))

(declare-fun result!283594 () Bool)

(assert (=> tb!234035 (= result!283594 (inv!21 (dynLambda!17850 (toValue!8924 (transformation!6472 (rule!9402 (_1!23537 (v!39217 lt!1365940))))) (seqFromList!4739 lt!1365944))))))

(declare-fun m!4483959 () Bool)

(assert (=> tb!234035 m!4483959))

(assert (=> d!1162845 t!324431))

(declare-fun b_and!298733 () Bool)

(assert (= b_and!298691 (and (=> t!324431 result!283594) b_and!298733)))

(declare-fun t!324433 () Bool)

(declare-fun tb!234037 () Bool)

(assert (=> (and b!3919731 (= (toValue!8924 (transformation!6472 (h!46967 rules!2768))) (toValue!8924 (transformation!6472 (rule!9402 (_1!23537 (v!39217 lt!1365940)))))) t!324433) tb!234037))

(declare-fun result!283598 () Bool)

(assert (= result!283598 result!283594))

(assert (=> d!1162845 t!324433))

(declare-fun b_and!298735 () Bool)

(assert (= b_and!298695 (and (=> t!324433 result!283598) b_and!298735)))

(declare-fun t!324435 () Bool)

(declare-fun tb!234039 () Bool)

(assert (=> (and b!3919761 (= (toValue!8924 (transformation!6472 (rule!9402 (h!46968 suffixTokens!72)))) (toValue!8924 (transformation!6472 (rule!9402 (_1!23537 (v!39217 lt!1365940)))))) t!324435) tb!234039))

(declare-fun result!283600 () Bool)

(assert (= result!283600 result!283594))

(assert (=> d!1162845 t!324435))

(declare-fun b_and!298737 () Bool)

(assert (= b_and!298699 (and (=> t!324435 result!283600) b_and!298737)))

(assert (=> d!1162845 m!4483435))

(declare-fun m!4483961 () Bool)

(assert (=> d!1162845 m!4483961))

(assert (=> b!3919748 d!1162845))

(declare-fun d!1162847 () Bool)

(declare-fun lt!1366127 () Int)

(assert (=> d!1162847 (>= lt!1366127 0)))

(declare-fun e!2423948 () Int)

(assert (=> d!1162847 (= lt!1366127 e!2423948)))

(declare-fun c!681319 () Bool)

(assert (=> d!1162847 (= c!681319 ((_ is Nil!41545) lt!1365944))))

(assert (=> d!1162847 (= (size!31194 lt!1365944) lt!1366127)))

(declare-fun b!3920194 () Bool)

(assert (=> b!3920194 (= e!2423948 0)))

(declare-fun b!3920195 () Bool)

(assert (=> b!3920195 (= e!2423948 (+ 1 (size!31194 (t!324396 lt!1365944))))))

(assert (= (and d!1162847 c!681319) b!3920194))

(assert (= (and d!1162847 (not c!681319)) b!3920195))

(declare-fun m!4483963 () Bool)

(assert (=> b!3920195 m!4483963))

(assert (=> b!3919748 d!1162847))

(declare-fun b!3920206 () Bool)

(declare-fun e!2423955 () Bool)

(assert (=> b!3920206 (= e!2423955 (isPrefix!3567 (tail!6010 lt!1365944) (tail!6010 lt!1365960)))))

(declare-fun b!3920207 () Bool)

(declare-fun e!2423956 () Bool)

(assert (=> b!3920207 (= e!2423956 (>= (size!31194 lt!1365960) (size!31194 lt!1365944)))))

(declare-fun b!3920204 () Bool)

(declare-fun e!2423957 () Bool)

(assert (=> b!3920204 (= e!2423957 e!2423955)))

(declare-fun res!1585852 () Bool)

(assert (=> b!3920204 (=> (not res!1585852) (not e!2423955))))

(assert (=> b!3920204 (= res!1585852 (not ((_ is Nil!41545) lt!1365960)))))

(declare-fun b!3920205 () Bool)

(declare-fun res!1585853 () Bool)

(assert (=> b!3920205 (=> (not res!1585853) (not e!2423955))))

(assert (=> b!3920205 (= res!1585853 (= (head!8294 lt!1365944) (head!8294 lt!1365960)))))

(declare-fun d!1162849 () Bool)

(assert (=> d!1162849 e!2423956))

(declare-fun res!1585850 () Bool)

(assert (=> d!1162849 (=> res!1585850 e!2423956)))

(declare-fun lt!1366130 () Bool)

(assert (=> d!1162849 (= res!1585850 (not lt!1366130))))

(assert (=> d!1162849 (= lt!1366130 e!2423957)))

(declare-fun res!1585851 () Bool)

(assert (=> d!1162849 (=> res!1585851 e!2423957)))

(assert (=> d!1162849 (= res!1585851 ((_ is Nil!41545) lt!1365944))))

(assert (=> d!1162849 (= (isPrefix!3567 lt!1365944 lt!1365960) lt!1366130)))

(assert (= (and d!1162849 (not res!1585851)) b!3920204))

(assert (= (and b!3920204 res!1585852) b!3920205))

(assert (= (and b!3920205 res!1585853) b!3920206))

(assert (= (and d!1162849 (not res!1585850)) b!3920207))

(assert (=> b!3920206 m!4483555))

(declare-fun m!4483997 () Bool)

(assert (=> b!3920206 m!4483997))

(assert (=> b!3920206 m!4483555))

(assert (=> b!3920206 m!4483997))

(declare-fun m!4483999 () Bool)

(assert (=> b!3920206 m!4483999))

(declare-fun m!4484001 () Bool)

(assert (=> b!3920207 m!4484001))

(assert (=> b!3920207 m!4483433))

(assert (=> b!3920205 m!4483547))

(declare-fun m!4484003 () Bool)

(assert (=> b!3920205 m!4484003))

(assert (=> b!3919748 d!1162849))

(declare-fun d!1162853 () Bool)

(assert (=> d!1162853 (= (_2!23537 (v!39217 lt!1365940)) lt!1365946)))

(declare-fun lt!1366133 () Unit!59688)

(declare-fun choose!23231 (List!41669 List!41669 List!41669 List!41669 List!41669) Unit!59688)

(assert (=> d!1162853 (= lt!1366133 (choose!23231 lt!1365944 (_2!23537 (v!39217 lt!1365940)) lt!1365944 lt!1365946 lt!1365952))))

(assert (=> d!1162853 (isPrefix!3567 lt!1365944 lt!1365952)))

(assert (=> d!1162853 (= (lemmaSamePrefixThenSameSuffix!1788 lt!1365944 (_2!23537 (v!39217 lt!1365940)) lt!1365944 lt!1365946 lt!1365952) lt!1366133)))

(declare-fun bs!585850 () Bool)

(assert (= bs!585850 d!1162853))

(declare-fun m!4484005 () Bool)

(assert (=> bs!585850 m!4484005))

(declare-fun m!4484007 () Bool)

(assert (=> bs!585850 m!4484007))

(assert (=> b!3919748 d!1162853))

(declare-fun d!1162855 () Bool)

(assert (=> d!1162855 (ruleValid!2420 thiss!20629 (rule!9402 (_1!23537 (v!39217 lt!1365940))))))

(declare-fun lt!1366136 () Unit!59688)

(declare-fun choose!23232 (LexerInterface!6061 Rule!12744 List!41671) Unit!59688)

(assert (=> d!1162855 (= lt!1366136 (choose!23232 thiss!20629 (rule!9402 (_1!23537 (v!39217 lt!1365940))) rules!2768))))

(assert (=> d!1162855 (contains!8349 rules!2768 (rule!9402 (_1!23537 (v!39217 lt!1365940))))))

(assert (=> d!1162855 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1500 thiss!20629 (rule!9402 (_1!23537 (v!39217 lt!1365940))) rules!2768) lt!1366136)))

(declare-fun bs!585851 () Bool)

(assert (= bs!585851 d!1162855))

(assert (=> bs!585851 m!4483443))

(declare-fun m!4484009 () Bool)

(assert (=> bs!585851 m!4484009))

(declare-fun m!4484011 () Bool)

(assert (=> bs!585851 m!4484011))

(assert (=> b!3919748 d!1162855))

(declare-fun d!1162857 () Bool)

(assert (=> d!1162857 (= (size!31193 (_1!23537 (v!39217 lt!1365940))) (size!31194 (originalCharacters!7072 (_1!23537 (v!39217 lt!1365940)))))))

(declare-fun Unit!59694 () Unit!59688)

(assert (=> d!1162857 (= (lemmaCharactersSize!1129 (_1!23537 (v!39217 lt!1365940))) Unit!59694)))

(declare-fun bs!585852 () Bool)

(assert (= bs!585852 d!1162857))

(assert (=> bs!585852 m!4483475))

(assert (=> b!3919748 d!1162857))

(declare-fun d!1162859 () Bool)

(declare-fun list!15449 (Conc!12683) List!41669)

(assert (=> d!1162859 (= (list!15447 (charsOf!4296 (_1!23537 (v!39217 lt!1365940)))) (list!15449 (c!681222 (charsOf!4296 (_1!23537 (v!39217 lt!1365940))))))))

(declare-fun bs!585853 () Bool)

(assert (= bs!585853 d!1162859))

(declare-fun m!4484013 () Bool)

(assert (=> bs!585853 m!4484013))

(assert (=> b!3919748 d!1162859))

(declare-fun d!1162861 () Bool)

(declare-fun lt!1366139 () List!41669)

(assert (=> d!1162861 (= (++!10701 lt!1365944 lt!1366139) lt!1365952)))

(declare-fun e!2423960 () List!41669)

(assert (=> d!1162861 (= lt!1366139 e!2423960)))

(declare-fun c!681322 () Bool)

(assert (=> d!1162861 (= c!681322 ((_ is Cons!41545) lt!1365944))))

(assert (=> d!1162861 (>= (size!31194 lt!1365952) (size!31194 lt!1365944))))

(assert (=> d!1162861 (= (getSuffix!2022 lt!1365952 lt!1365944) lt!1366139)))

(declare-fun b!3920212 () Bool)

(assert (=> b!3920212 (= e!2423960 (getSuffix!2022 (tail!6010 lt!1365952) (t!324396 lt!1365944)))))

(declare-fun b!3920213 () Bool)

(assert (=> b!3920213 (= e!2423960 lt!1365952)))

(assert (= (and d!1162861 c!681322) b!3920212))

(assert (= (and d!1162861 (not c!681322)) b!3920213))

(declare-fun m!4484015 () Bool)

(assert (=> d!1162861 m!4484015))

(assert (=> d!1162861 m!4483459))

(assert (=> d!1162861 m!4483433))

(declare-fun m!4484017 () Bool)

(assert (=> b!3920212 m!4484017))

(assert (=> b!3920212 m!4484017))

(declare-fun m!4484019 () Bool)

(assert (=> b!3920212 m!4484019))

(assert (=> b!3919748 d!1162861))

(declare-fun d!1162863 () Bool)

(declare-fun lt!1366145 () BalanceConc!24960)

(assert (=> d!1162863 (= (list!15447 lt!1366145) (originalCharacters!7072 (_1!23537 (v!39217 lt!1365940))))))

(assert (=> d!1162863 (= lt!1366145 (dynLambda!17849 (toChars!8783 (transformation!6472 (rule!9402 (_1!23537 (v!39217 lt!1365940))))) (value!205086 (_1!23537 (v!39217 lt!1365940)))))))

(assert (=> d!1162863 (= (charsOf!4296 (_1!23537 (v!39217 lt!1365940))) lt!1366145)))

(declare-fun b_lambda!114783 () Bool)

(assert (=> (not b_lambda!114783) (not d!1162863)))

(declare-fun tb!234041 () Bool)

(declare-fun t!324437 () Bool)

(assert (=> (and b!3919744 (= (toChars!8783 (transformation!6472 (rule!9402 (h!46968 prefixTokens!80)))) (toChars!8783 (transformation!6472 (rule!9402 (_1!23537 (v!39217 lt!1365940)))))) t!324437) tb!234041))

(declare-fun b!3920214 () Bool)

(declare-fun e!2423961 () Bool)

(declare-fun tp!1193089 () Bool)

(assert (=> b!3920214 (= e!2423961 (and (inv!55748 (c!681222 (dynLambda!17849 (toChars!8783 (transformation!6472 (rule!9402 (_1!23537 (v!39217 lt!1365940))))) (value!205086 (_1!23537 (v!39217 lt!1365940)))))) tp!1193089))))

(declare-fun result!283602 () Bool)

(assert (=> tb!234041 (= result!283602 (and (inv!55749 (dynLambda!17849 (toChars!8783 (transformation!6472 (rule!9402 (_1!23537 (v!39217 lt!1365940))))) (value!205086 (_1!23537 (v!39217 lt!1365940))))) e!2423961))))

(assert (= tb!234041 b!3920214))

(declare-fun m!4484023 () Bool)

(assert (=> b!3920214 m!4484023))

(declare-fun m!4484025 () Bool)

(assert (=> tb!234041 m!4484025))

(assert (=> d!1162863 t!324437))

(declare-fun b_and!298739 () Bool)

(assert (= b_and!298727 (and (=> t!324437 result!283602) b_and!298739)))

(declare-fun t!324439 () Bool)

(declare-fun tb!234043 () Bool)

(assert (=> (and b!3919731 (= (toChars!8783 (transformation!6472 (h!46967 rules!2768))) (toChars!8783 (transformation!6472 (rule!9402 (_1!23537 (v!39217 lt!1365940)))))) t!324439) tb!234043))

(declare-fun result!283604 () Bool)

(assert (= result!283604 result!283602))

(assert (=> d!1162863 t!324439))

(declare-fun b_and!298741 () Bool)

(assert (= b_and!298729 (and (=> t!324439 result!283604) b_and!298741)))

(declare-fun t!324441 () Bool)

(declare-fun tb!234045 () Bool)

(assert (=> (and b!3919761 (= (toChars!8783 (transformation!6472 (rule!9402 (h!46968 suffixTokens!72)))) (toChars!8783 (transformation!6472 (rule!9402 (_1!23537 (v!39217 lt!1365940)))))) t!324441) tb!234045))

(declare-fun result!283606 () Bool)

(assert (= result!283606 result!283602))

(assert (=> d!1162863 t!324441))

(declare-fun b_and!298743 () Bool)

(assert (= b_and!298731 (and (=> t!324441 result!283606) b_and!298743)))

(declare-fun m!4484027 () Bool)

(assert (=> d!1162863 m!4484027))

(declare-fun m!4484029 () Bool)

(assert (=> d!1162863 m!4484029))

(assert (=> b!3919748 d!1162863))

(declare-fun d!1162867 () Bool)

(declare-fun res!1585858 () Bool)

(declare-fun e!2423964 () Bool)

(assert (=> d!1162867 (=> (not res!1585858) (not e!2423964))))

(assert (=> d!1162867 (= res!1585858 (validRegex!5183 (regex!6472 (rule!9402 (_1!23537 (v!39217 lt!1365940))))))))

(assert (=> d!1162867 (= (ruleValid!2420 thiss!20629 (rule!9402 (_1!23537 (v!39217 lt!1365940)))) e!2423964)))

(declare-fun b!3920219 () Bool)

(declare-fun res!1585859 () Bool)

(assert (=> b!3920219 (=> (not res!1585859) (not e!2423964))))

(assert (=> b!3920219 (= res!1585859 (not (nullable!3984 (regex!6472 (rule!9402 (_1!23537 (v!39217 lt!1365940)))))))))

(declare-fun b!3920220 () Bool)

(assert (=> b!3920220 (= e!2423964 (not (= (tag!7332 (rule!9402 (_1!23537 (v!39217 lt!1365940)))) (String!47228 ""))))))

(assert (= (and d!1162867 res!1585858) b!3920219))

(assert (= (and b!3920219 res!1585859) b!3920220))

(assert (=> d!1162867 m!4483549))

(assert (=> b!3920219 m!4483551))

(assert (=> b!3919748 d!1162867))

(declare-fun d!1162871 () Bool)

(assert (=> d!1162871 (isPrefix!3567 lt!1365944 (++!10701 lt!1365944 (_2!23537 (v!39217 lt!1365940))))))

(declare-fun lt!1366154 () Unit!59688)

(declare-fun choose!23235 (List!41669 List!41669) Unit!59688)

(assert (=> d!1162871 (= lt!1366154 (choose!23235 lt!1365944 (_2!23537 (v!39217 lt!1365940))))))

(assert (=> d!1162871 (= (lemmaConcatTwoListThenFirstIsPrefix!2430 lt!1365944 (_2!23537 (v!39217 lt!1365940))) lt!1366154)))

(declare-fun bs!585856 () Bool)

(assert (= bs!585856 d!1162871))

(assert (=> bs!585856 m!4483437))

(assert (=> bs!585856 m!4483437))

(declare-fun m!4484045 () Bool)

(assert (=> bs!585856 m!4484045))

(declare-fun m!4484047 () Bool)

(assert (=> bs!585856 m!4484047))

(assert (=> b!3919748 d!1162871))

(declare-fun b!3920236 () Bool)

(declare-fun res!1585864 () Bool)

(declare-fun e!2423972 () Bool)

(assert (=> b!3920236 (=> (not res!1585864) (not e!2423972))))

(declare-fun lt!1366155 () List!41669)

(assert (=> b!3920236 (= res!1585864 (= (size!31194 lt!1366155) (+ (size!31194 lt!1365944) (size!31194 (_2!23537 (v!39217 lt!1365940))))))))

(declare-fun b!3920235 () Bool)

(declare-fun e!2423973 () List!41669)

(assert (=> b!3920235 (= e!2423973 (Cons!41545 (h!46965 lt!1365944) (++!10701 (t!324396 lt!1365944) (_2!23537 (v!39217 lt!1365940)))))))

(declare-fun b!3920237 () Bool)

(assert (=> b!3920237 (= e!2423972 (or (not (= (_2!23537 (v!39217 lt!1365940)) Nil!41545)) (= lt!1366155 lt!1365944)))))

(declare-fun d!1162881 () Bool)

(assert (=> d!1162881 e!2423972))

(declare-fun res!1585863 () Bool)

(assert (=> d!1162881 (=> (not res!1585863) (not e!2423972))))

(assert (=> d!1162881 (= res!1585863 (= (content!6256 lt!1366155) ((_ map or) (content!6256 lt!1365944) (content!6256 (_2!23537 (v!39217 lt!1365940))))))))

(assert (=> d!1162881 (= lt!1366155 e!2423973)))

(declare-fun c!681328 () Bool)

(assert (=> d!1162881 (= c!681328 ((_ is Nil!41545) lt!1365944))))

(assert (=> d!1162881 (= (++!10701 lt!1365944 (_2!23537 (v!39217 lt!1365940))) lt!1366155)))

(declare-fun b!3920234 () Bool)

(assert (=> b!3920234 (= e!2423973 (_2!23537 (v!39217 lt!1365940)))))

(assert (= (and d!1162881 c!681328) b!3920234))

(assert (= (and d!1162881 (not c!681328)) b!3920235))

(assert (= (and d!1162881 res!1585863) b!3920236))

(assert (= (and b!3920236 res!1585864) b!3920237))

(declare-fun m!4484065 () Bool)

(assert (=> b!3920236 m!4484065))

(assert (=> b!3920236 m!4483433))

(assert (=> b!3920236 m!4483457))

(declare-fun m!4484067 () Bool)

(assert (=> b!3920235 m!4484067))

(declare-fun m!4484069 () Bool)

(assert (=> d!1162881 m!4484069))

(declare-fun m!4484071 () Bool)

(assert (=> d!1162881 m!4484071))

(declare-fun m!4484073 () Bool)

(assert (=> d!1162881 m!4484073))

(assert (=> b!3919748 d!1162881))

(declare-fun d!1162887 () Bool)

(declare-fun lt!1366157 () Int)

(assert (=> d!1162887 (>= lt!1366157 0)))

(declare-fun e!2423976 () Int)

(assert (=> d!1162887 (= lt!1366157 e!2423976)))

(declare-fun c!681330 () Bool)

(assert (=> d!1162887 (= c!681330 ((_ is Nil!41545) (list!15447 (charsOf!4296 lt!1365965))))))

(assert (=> d!1162887 (= (size!31194 (list!15447 (charsOf!4296 lt!1365965))) lt!1366157)))

(declare-fun b!3920242 () Bool)

(assert (=> b!3920242 (= e!2423976 0)))

(declare-fun b!3920243 () Bool)

(assert (=> b!3920243 (= e!2423976 (+ 1 (size!31194 (t!324396 (list!15447 (charsOf!4296 lt!1365965))))))))

(assert (= (and d!1162887 c!681330) b!3920242))

(assert (= (and d!1162887 (not c!681330)) b!3920243))

(declare-fun m!4484075 () Bool)

(assert (=> b!3920243 m!4484075))

(assert (=> b!3919727 d!1162887))

(declare-fun d!1162889 () Bool)

(assert (=> d!1162889 (= (list!15447 (charsOf!4296 lt!1365965)) (list!15449 (c!681222 (charsOf!4296 lt!1365965))))))

(declare-fun bs!585857 () Bool)

(assert (= bs!585857 d!1162889))

(declare-fun m!4484077 () Bool)

(assert (=> bs!585857 m!4484077))

(assert (=> b!3919727 d!1162889))

(declare-fun d!1162891 () Bool)

(declare-fun lt!1366158 () BalanceConc!24960)

(assert (=> d!1162891 (= (list!15447 lt!1366158) (originalCharacters!7072 lt!1365965))))

(assert (=> d!1162891 (= lt!1366158 (dynLambda!17849 (toChars!8783 (transformation!6472 (rule!9402 lt!1365965))) (value!205086 lt!1365965)))))

(assert (=> d!1162891 (= (charsOf!4296 lt!1365965) lt!1366158)))

(declare-fun b_lambda!114787 () Bool)

(assert (=> (not b_lambda!114787) (not d!1162891)))

(declare-fun t!324447 () Bool)

(declare-fun tb!234051 () Bool)

(assert (=> (and b!3919744 (= (toChars!8783 (transformation!6472 (rule!9402 (h!46968 prefixTokens!80)))) (toChars!8783 (transformation!6472 (rule!9402 lt!1365965)))) t!324447) tb!234051))

(declare-fun b!3920245 () Bool)

(declare-fun e!2423978 () Bool)

(declare-fun tp!1193091 () Bool)

(assert (=> b!3920245 (= e!2423978 (and (inv!55748 (c!681222 (dynLambda!17849 (toChars!8783 (transformation!6472 (rule!9402 lt!1365965))) (value!205086 lt!1365965)))) tp!1193091))))

(declare-fun result!283612 () Bool)

(assert (=> tb!234051 (= result!283612 (and (inv!55749 (dynLambda!17849 (toChars!8783 (transformation!6472 (rule!9402 lt!1365965))) (value!205086 lt!1365965))) e!2423978))))

(assert (= tb!234051 b!3920245))

(declare-fun m!4484087 () Bool)

(assert (=> b!3920245 m!4484087))

(declare-fun m!4484089 () Bool)

(assert (=> tb!234051 m!4484089))

(assert (=> d!1162891 t!324447))

(declare-fun b_and!298751 () Bool)

(assert (= b_and!298739 (and (=> t!324447 result!283612) b_and!298751)))

(declare-fun tb!234055 () Bool)

(declare-fun t!324451 () Bool)

(assert (=> (and b!3919731 (= (toChars!8783 (transformation!6472 (h!46967 rules!2768))) (toChars!8783 (transformation!6472 (rule!9402 lt!1365965)))) t!324451) tb!234055))

(declare-fun result!283616 () Bool)

(assert (= result!283616 result!283612))

(assert (=> d!1162891 t!324451))

(declare-fun b_and!298753 () Bool)

(assert (= b_and!298741 (and (=> t!324451 result!283616) b_and!298753)))

(declare-fun tb!234057 () Bool)

(declare-fun t!324453 () Bool)

(assert (=> (and b!3919761 (= (toChars!8783 (transformation!6472 (rule!9402 (h!46968 suffixTokens!72)))) (toChars!8783 (transformation!6472 (rule!9402 lt!1365965)))) t!324453) tb!234057))

(declare-fun result!283618 () Bool)

(assert (= result!283618 result!283612))

(assert (=> d!1162891 t!324453))

(declare-fun b_and!298755 () Bool)

(assert (= b_and!298743 (and (=> t!324453 result!283618) b_and!298755)))

(declare-fun m!4484095 () Bool)

(assert (=> d!1162891 m!4484095))

(declare-fun m!4484097 () Bool)

(assert (=> d!1162891 m!4484097))

(assert (=> b!3919727 d!1162891))

(declare-fun d!1162895 () Bool)

(assert (=> d!1162895 (= (inv!55741 (tag!7332 (h!46967 rules!2768))) (= (mod (str.len (value!205060 (tag!7332 (h!46967 rules!2768)))) 2) 0))))

(assert (=> b!3919729 d!1162895))

(declare-fun d!1162897 () Bool)

(declare-fun res!1585867 () Bool)

(declare-fun e!2423980 () Bool)

(assert (=> d!1162897 (=> (not res!1585867) (not e!2423980))))

(assert (=> d!1162897 (= res!1585867 (semiInverseModEq!2784 (toChars!8783 (transformation!6472 (h!46967 rules!2768))) (toValue!8924 (transformation!6472 (h!46967 rules!2768)))))))

(assert (=> d!1162897 (= (inv!55744 (transformation!6472 (h!46967 rules!2768))) e!2423980)))

(declare-fun b!3920248 () Bool)

(assert (=> b!3920248 (= e!2423980 (equivClasses!2683 (toChars!8783 (transformation!6472 (h!46967 rules!2768))) (toValue!8924 (transformation!6472 (h!46967 rules!2768)))))))

(assert (= (and d!1162897 res!1585867) b!3920248))

(declare-fun m!4484101 () Bool)

(assert (=> d!1162897 m!4484101))

(declare-fun m!4484103 () Bool)

(assert (=> b!3920248 m!4484103))

(assert (=> b!3919729 d!1162897))

(declare-fun lt!1366160 () List!41672)

(declare-fun e!2423982 () Bool)

(declare-fun b!3920252 () Bool)

(assert (=> b!3920252 (= e!2423982 (or (not (= suffixTokens!72 Nil!41548)) (= lt!1366160 lt!1365943)))))

(declare-fun d!1162901 () Bool)

(assert (=> d!1162901 e!2423982))

(declare-fun res!1585869 () Bool)

(assert (=> d!1162901 (=> (not res!1585869) (not e!2423982))))

(assert (=> d!1162901 (= res!1585869 (= (content!6255 lt!1366160) ((_ map or) (content!6255 lt!1365943) (content!6255 suffixTokens!72))))))

(declare-fun e!2423981 () List!41672)

(assert (=> d!1162901 (= lt!1366160 e!2423981)))

(declare-fun c!681332 () Bool)

(assert (=> d!1162901 (= c!681332 ((_ is Nil!41548) lt!1365943))))

(assert (=> d!1162901 (= (++!10702 lt!1365943 suffixTokens!72) lt!1366160)))

(declare-fun b!3920249 () Bool)

(assert (=> b!3920249 (= e!2423981 suffixTokens!72)))

(declare-fun b!3920250 () Bool)

(assert (=> b!3920250 (= e!2423981 (Cons!41548 (h!46968 lt!1365943) (++!10702 (t!324399 lt!1365943) suffixTokens!72)))))

(declare-fun b!3920251 () Bool)

(declare-fun res!1585868 () Bool)

(assert (=> b!3920251 (=> (not res!1585868) (not e!2423982))))

(assert (=> b!3920251 (= res!1585868 (= (size!31197 lt!1366160) (+ (size!31197 lt!1365943) (size!31197 suffixTokens!72))))))

(assert (= (and d!1162901 c!681332) b!3920249))

(assert (= (and d!1162901 (not c!681332)) b!3920250))

(assert (= (and d!1162901 res!1585869) b!3920251))

(assert (= (and b!3920251 res!1585868) b!3920252))

(declare-fun m!4484105 () Bool)

(assert (=> d!1162901 m!4484105))

(declare-fun m!4484107 () Bool)

(assert (=> d!1162901 m!4484107))

(assert (=> d!1162901 m!4483765))

(declare-fun m!4484109 () Bool)

(assert (=> b!3920250 m!4484109))

(declare-fun m!4484111 () Bool)

(assert (=> b!3920251 m!4484111))

(declare-fun m!4484113 () Bool)

(assert (=> b!3920251 m!4484113))

(assert (=> b!3920251 m!4483773))

(assert (=> b!3919749 d!1162901))

(declare-fun d!1162905 () Bool)

(assert (=> d!1162905 (not (= (lexList!1829 thiss!20629 rules!2768 (_2!23537 lt!1365949)) (tuple2!40809 (++!10702 lt!1365943 suffixTokens!72) suffixResult!91)))))

(declare-fun lt!1366166 () Unit!59688)

(declare-fun choose!23236 (LexerInterface!6061 List!41671 List!41669 List!41669 List!41672 List!41669 List!41672) Unit!59688)

(assert (=> d!1162905 (= lt!1366166 (choose!23236 thiss!20629 rules!2768 suffix!1176 (_2!23537 lt!1365949) suffixTokens!72 suffixResult!91 lt!1365943))))

(assert (=> d!1162905 (not (isEmpty!24734 rules!2768))))

(assert (=> d!1162905 (= (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!72 thiss!20629 rules!2768 suffix!1176 (_2!23537 lt!1365949) suffixTokens!72 suffixResult!91 lt!1365943) lt!1366166)))

(declare-fun bs!585858 () Bool)

(assert (= bs!585858 d!1162905))

(assert (=> bs!585858 m!4483473))

(assert (=> bs!585858 m!4483415))

(declare-fun m!4484153 () Bool)

(assert (=> bs!585858 m!4484153))

(assert (=> bs!585858 m!4483465))

(assert (=> b!3919749 d!1162905))

(declare-fun d!1162919 () Bool)

(declare-fun res!1585873 () Bool)

(declare-fun e!2424036 () Bool)

(assert (=> d!1162919 (=> (not res!1585873) (not e!2424036))))

(assert (=> d!1162919 (= res!1585873 (not (isEmpty!24732 (originalCharacters!7072 (h!46968 suffixTokens!72)))))))

(assert (=> d!1162919 (= (inv!55745 (h!46968 suffixTokens!72)) e!2424036)))

(declare-fun b!3920320 () Bool)

(declare-fun res!1585874 () Bool)

(assert (=> b!3920320 (=> (not res!1585874) (not e!2424036))))

(assert (=> b!3920320 (= res!1585874 (= (originalCharacters!7072 (h!46968 suffixTokens!72)) (list!15447 (dynLambda!17849 (toChars!8783 (transformation!6472 (rule!9402 (h!46968 suffixTokens!72)))) (value!205086 (h!46968 suffixTokens!72))))))))

(declare-fun b!3920321 () Bool)

(assert (=> b!3920321 (= e!2424036 (= (size!31193 (h!46968 suffixTokens!72)) (size!31194 (originalCharacters!7072 (h!46968 suffixTokens!72)))))))

(assert (= (and d!1162919 res!1585873) b!3920320))

(assert (= (and b!3920320 res!1585874) b!3920321))

(declare-fun b_lambda!114793 () Bool)

(assert (=> (not b_lambda!114793) (not b!3920320)))

(declare-fun tb!234089 () Bool)

(declare-fun t!324486 () Bool)

(assert (=> (and b!3919744 (= (toChars!8783 (transformation!6472 (rule!9402 (h!46968 prefixTokens!80)))) (toChars!8783 (transformation!6472 (rule!9402 (h!46968 suffixTokens!72))))) t!324486) tb!234089))

(declare-fun b!3920322 () Bool)

(declare-fun e!2424037 () Bool)

(declare-fun tp!1193156 () Bool)

(assert (=> b!3920322 (= e!2424037 (and (inv!55748 (c!681222 (dynLambda!17849 (toChars!8783 (transformation!6472 (rule!9402 (h!46968 suffixTokens!72)))) (value!205086 (h!46968 suffixTokens!72))))) tp!1193156))))

(declare-fun result!283658 () Bool)

(assert (=> tb!234089 (= result!283658 (and (inv!55749 (dynLambda!17849 (toChars!8783 (transformation!6472 (rule!9402 (h!46968 suffixTokens!72)))) (value!205086 (h!46968 suffixTokens!72)))) e!2424037))))

(assert (= tb!234089 b!3920322))

(declare-fun m!4484155 () Bool)

(assert (=> b!3920322 m!4484155))

(declare-fun m!4484157 () Bool)

(assert (=> tb!234089 m!4484157))

(assert (=> b!3920320 t!324486))

(declare-fun b_and!298769 () Bool)

(assert (= b_and!298751 (and (=> t!324486 result!283658) b_and!298769)))

(declare-fun tb!234091 () Bool)

(declare-fun t!324488 () Bool)

(assert (=> (and b!3919731 (= (toChars!8783 (transformation!6472 (h!46967 rules!2768))) (toChars!8783 (transformation!6472 (rule!9402 (h!46968 suffixTokens!72))))) t!324488) tb!234091))

(declare-fun result!283660 () Bool)

(assert (= result!283660 result!283658))

(assert (=> b!3920320 t!324488))

(declare-fun b_and!298771 () Bool)

(assert (= b_and!298753 (and (=> t!324488 result!283660) b_and!298771)))

(declare-fun t!324490 () Bool)

(declare-fun tb!234093 () Bool)

(assert (=> (and b!3919761 (= (toChars!8783 (transformation!6472 (rule!9402 (h!46968 suffixTokens!72)))) (toChars!8783 (transformation!6472 (rule!9402 (h!46968 suffixTokens!72))))) t!324490) tb!234093))

(declare-fun result!283662 () Bool)

(assert (= result!283662 result!283658))

(assert (=> b!3920320 t!324490))

(declare-fun b_and!298773 () Bool)

(assert (= b_and!298755 (and (=> t!324490 result!283662) b_and!298773)))

(declare-fun m!4484159 () Bool)

(assert (=> d!1162919 m!4484159))

(declare-fun m!4484161 () Bool)

(assert (=> b!3920320 m!4484161))

(assert (=> b!3920320 m!4484161))

(declare-fun m!4484163 () Bool)

(assert (=> b!3920320 m!4484163))

(declare-fun m!4484165 () Bool)

(assert (=> b!3920321 m!4484165))

(assert (=> b!3919751 d!1162919))

(declare-fun d!1162921 () Bool)

(declare-fun lt!1366167 () Int)

(assert (=> d!1162921 (>= lt!1366167 0)))

(declare-fun e!2424038 () Int)

(assert (=> d!1162921 (= lt!1366167 e!2424038)))

(declare-fun c!681335 () Bool)

(assert (=> d!1162921 (= c!681335 ((_ is Nil!41545) lt!1365952))))

(assert (=> d!1162921 (= (size!31194 lt!1365952) lt!1366167)))

(declare-fun b!3920323 () Bool)

(assert (=> b!3920323 (= e!2424038 0)))

(declare-fun b!3920324 () Bool)

(assert (=> b!3920324 (= e!2424038 (+ 1 (size!31194 (t!324396 lt!1365952))))))

(assert (= (and d!1162921 c!681335) b!3920323))

(assert (= (and d!1162921 (not c!681335)) b!3920324))

(declare-fun m!4484167 () Bool)

(assert (=> b!3920324 m!4484167))

(assert (=> b!3919730 d!1162921))

(declare-fun d!1162923 () Bool)

(declare-fun lt!1366168 () Int)

(assert (=> d!1162923 (>= lt!1366168 0)))

(declare-fun e!2424039 () Int)

(assert (=> d!1162923 (= lt!1366168 e!2424039)))

(declare-fun c!681336 () Bool)

(assert (=> d!1162923 (= c!681336 ((_ is Nil!41545) prefix!426))))

(assert (=> d!1162923 (= (size!31194 prefix!426) lt!1366168)))

(declare-fun b!3920325 () Bool)

(assert (=> b!3920325 (= e!2424039 0)))

(declare-fun b!3920326 () Bool)

(assert (=> b!3920326 (= e!2424039 (+ 1 (size!31194 (t!324396 prefix!426))))))

(assert (= (and d!1162923 c!681336) b!3920325))

(assert (= (and d!1162923 (not c!681336)) b!3920326))

(declare-fun m!4484169 () Bool)

(assert (=> b!3920326 m!4484169))

(assert (=> b!3919750 d!1162923))

(declare-fun d!1162925 () Bool)

(declare-fun lt!1366169 () Int)

(assert (=> d!1162925 (>= lt!1366169 0)))

(declare-fun e!2424040 () Int)

(assert (=> d!1162925 (= lt!1366169 e!2424040)))

(declare-fun c!681337 () Bool)

(assert (=> d!1162925 (= c!681337 ((_ is Nil!41545) (originalCharacters!7072 (_1!23537 (v!39217 lt!1365940)))))))

(assert (=> d!1162925 (= (size!31194 (originalCharacters!7072 (_1!23537 (v!39217 lt!1365940)))) lt!1366169)))

(declare-fun b!3920327 () Bool)

(assert (=> b!3920327 (= e!2424040 0)))

(declare-fun b!3920328 () Bool)

(assert (=> b!3920328 (= e!2424040 (+ 1 (size!31194 (t!324396 (originalCharacters!7072 (_1!23537 (v!39217 lt!1365940)))))))))

(assert (= (and d!1162925 c!681337) b!3920327))

(assert (= (and d!1162925 (not c!681337)) b!3920328))

(declare-fun m!4484171 () Bool)

(assert (=> b!3920328 m!4484171))

(assert (=> b!3919752 d!1162925))

(declare-fun b!3920333 () Bool)

(declare-fun e!2424043 () Bool)

(declare-fun tp!1193159 () Bool)

(assert (=> b!3920333 (= e!2424043 (and tp_is_empty!19725 tp!1193159))))

(assert (=> b!3919733 (= tp!1193069 e!2424043)))

(assert (= (and b!3919733 ((_ is Cons!41545) (originalCharacters!7072 (h!46968 prefixTokens!80)))) b!3920333))

(declare-fun b!3920334 () Bool)

(declare-fun e!2424044 () Bool)

(declare-fun tp!1193160 () Bool)

(assert (=> b!3920334 (= e!2424044 (and tp_is_empty!19725 tp!1193160))))

(assert (=> b!3919742 (= tp!1193067 e!2424044)))

(assert (= (and b!3919742 ((_ is Cons!41545) (originalCharacters!7072 (h!46968 suffixTokens!72)))) b!3920334))

(declare-fun b!3920335 () Bool)

(declare-fun e!2424045 () Bool)

(declare-fun tp!1193161 () Bool)

(assert (=> b!3920335 (= e!2424045 (and tp_is_empty!19725 tp!1193161))))

(assert (=> b!3919734 (= tp!1193076 e!2424045)))

(assert (= (and b!3919734 ((_ is Cons!41545) (t!324396 suffixResult!91))) b!3920335))

(declare-fun b!3920349 () Bool)

(declare-fun b_free!106565 () Bool)

(declare-fun b_next!107269 () Bool)

(assert (=> b!3920349 (= b_free!106565 (not b_next!107269))))

(declare-fun tb!234095 () Bool)

(declare-fun t!324492 () Bool)

(assert (=> (and b!3920349 (= (toValue!8924 (transformation!6472 (rule!9402 (h!46968 (t!324399 prefixTokens!80))))) (toValue!8924 (transformation!6472 (rule!9402 (_1!23537 (v!39217 lt!1365940)))))) t!324492) tb!234095))

(declare-fun result!283668 () Bool)

(assert (= result!283668 result!283594))

(assert (=> d!1162845 t!324492))

(declare-fun tp!1193174 () Bool)

(declare-fun b_and!298775 () Bool)

(assert (=> b!3920349 (= tp!1193174 (and (=> t!324492 result!283668) b_and!298775))))

(declare-fun b_free!106567 () Bool)

(declare-fun b_next!107271 () Bool)

(assert (=> b!3920349 (= b_free!106567 (not b_next!107271))))

(declare-fun t!324494 () Bool)

(declare-fun tb!234097 () Bool)

(assert (=> (and b!3920349 (= (toChars!8783 (transformation!6472 (rule!9402 (h!46968 (t!324399 prefixTokens!80))))) (toChars!8783 (transformation!6472 (rule!9402 (h!46968 prefixTokens!80))))) t!324494) tb!234097))

(declare-fun result!283670 () Bool)

(assert (= result!283670 result!283586))

(assert (=> b!3920152 t!324494))

(declare-fun t!324496 () Bool)

(declare-fun tb!234099 () Bool)

(assert (=> (and b!3920349 (= (toChars!8783 (transformation!6472 (rule!9402 (h!46968 (t!324399 prefixTokens!80))))) (toChars!8783 (transformation!6472 (rule!9402 (_1!23537 (v!39217 lt!1365940)))))) t!324496) tb!234099))

(declare-fun result!283672 () Bool)

(assert (= result!283672 result!283602))

(assert (=> d!1162863 t!324496))

(declare-fun t!324498 () Bool)

(declare-fun tb!234101 () Bool)

(assert (=> (and b!3920349 (= (toChars!8783 (transformation!6472 (rule!9402 (h!46968 (t!324399 prefixTokens!80))))) (toChars!8783 (transformation!6472 (rule!9402 lt!1365965)))) t!324498) tb!234101))

(declare-fun result!283674 () Bool)

(assert (= result!283674 result!283612))

(assert (=> d!1162891 t!324498))

(declare-fun tb!234103 () Bool)

(declare-fun t!324500 () Bool)

(assert (=> (and b!3920349 (= (toChars!8783 (transformation!6472 (rule!9402 (h!46968 (t!324399 prefixTokens!80))))) (toChars!8783 (transformation!6472 (rule!9402 (h!46968 suffixTokens!72))))) t!324500) tb!234103))

(declare-fun result!283676 () Bool)

(assert (= result!283676 result!283658))

(assert (=> b!3920320 t!324500))

(declare-fun b_and!298777 () Bool)

(declare-fun tp!1193172 () Bool)

(assert (=> b!3920349 (= tp!1193172 (and (=> t!324494 result!283670) (=> t!324496 result!283672) (=> t!324498 result!283674) (=> t!324500 result!283676) b_and!298777))))

(declare-fun tp!1193175 () Bool)

(declare-fun e!2424062 () Bool)

(declare-fun b!3920348 () Bool)

(declare-fun e!2424060 () Bool)

(assert (=> b!3920348 (= e!2424060 (and tp!1193175 (inv!55741 (tag!7332 (rule!9402 (h!46968 (t!324399 prefixTokens!80))))) (inv!55744 (transformation!6472 (rule!9402 (h!46968 (t!324399 prefixTokens!80))))) e!2424062))))

(assert (=> b!3920349 (= e!2424062 (and tp!1193174 tp!1193172))))

(declare-fun b!3920347 () Bool)

(declare-fun tp!1193176 () Bool)

(declare-fun e!2424063 () Bool)

(assert (=> b!3920347 (= e!2424063 (and (inv!21 (value!205086 (h!46968 (t!324399 prefixTokens!80)))) e!2424060 tp!1193176))))

(declare-fun e!2424058 () Bool)

(assert (=> b!3919754 (= tp!1193074 e!2424058)))

(declare-fun b!3920346 () Bool)

(declare-fun tp!1193173 () Bool)

(assert (=> b!3920346 (= e!2424058 (and (inv!55745 (h!46968 (t!324399 prefixTokens!80))) e!2424063 tp!1193173))))

(assert (= b!3920348 b!3920349))

(assert (= b!3920347 b!3920348))

(assert (= b!3920346 b!3920347))

(assert (= (and b!3919754 ((_ is Cons!41548) (t!324399 prefixTokens!80))) b!3920346))

(declare-fun m!4484173 () Bool)

(assert (=> b!3920348 m!4484173))

(declare-fun m!4484175 () Bool)

(assert (=> b!3920348 m!4484175))

(declare-fun m!4484177 () Bool)

(assert (=> b!3920347 m!4484177))

(declare-fun m!4484179 () Bool)

(assert (=> b!3920346 m!4484179))

(declare-fun b!3920350 () Bool)

(declare-fun e!2424064 () Bool)

(declare-fun tp!1193177 () Bool)

(assert (=> b!3920350 (= e!2424064 (and tp_is_empty!19725 tp!1193177))))

(assert (=> b!3919735 (= tp!1193073 e!2424064)))

(assert (= (and b!3919735 ((_ is Cons!41545) (t!324396 suffix!1176))) b!3920350))

(declare-fun b!3920361 () Bool)

(declare-fun b_free!106569 () Bool)

(declare-fun b_next!107273 () Bool)

(assert (=> b!3920361 (= b_free!106569 (not b_next!107273))))

(declare-fun t!324502 () Bool)

(declare-fun tb!234105 () Bool)

(assert (=> (and b!3920361 (= (toValue!8924 (transformation!6472 (h!46967 (t!324398 rules!2768)))) (toValue!8924 (transformation!6472 (rule!9402 (_1!23537 (v!39217 lt!1365940)))))) t!324502) tb!234105))

(declare-fun result!283680 () Bool)

(assert (= result!283680 result!283594))

(assert (=> d!1162845 t!324502))

(declare-fun b_and!298779 () Bool)

(declare-fun tp!1193188 () Bool)

(assert (=> b!3920361 (= tp!1193188 (and (=> t!324502 result!283680) b_and!298779))))

(declare-fun b_free!106571 () Bool)

(declare-fun b_next!107275 () Bool)

(assert (=> b!3920361 (= b_free!106571 (not b_next!107275))))

(declare-fun t!324504 () Bool)

(declare-fun tb!234107 () Bool)

(assert (=> (and b!3920361 (= (toChars!8783 (transformation!6472 (h!46967 (t!324398 rules!2768)))) (toChars!8783 (transformation!6472 (rule!9402 (h!46968 prefixTokens!80))))) t!324504) tb!234107))

(declare-fun result!283682 () Bool)

(assert (= result!283682 result!283586))

(assert (=> b!3920152 t!324504))

(declare-fun t!324506 () Bool)

(declare-fun tb!234109 () Bool)

(assert (=> (and b!3920361 (= (toChars!8783 (transformation!6472 (h!46967 (t!324398 rules!2768)))) (toChars!8783 (transformation!6472 (rule!9402 (_1!23537 (v!39217 lt!1365940)))))) t!324506) tb!234109))

(declare-fun result!283684 () Bool)

(assert (= result!283684 result!283602))

(assert (=> d!1162863 t!324506))

(declare-fun tb!234111 () Bool)

(declare-fun t!324508 () Bool)

(assert (=> (and b!3920361 (= (toChars!8783 (transformation!6472 (h!46967 (t!324398 rules!2768)))) (toChars!8783 (transformation!6472 (rule!9402 lt!1365965)))) t!324508) tb!234111))

(declare-fun result!283686 () Bool)

(assert (= result!283686 result!283612))

(assert (=> d!1162891 t!324508))

(declare-fun t!324510 () Bool)

(declare-fun tb!234113 () Bool)

(assert (=> (and b!3920361 (= (toChars!8783 (transformation!6472 (h!46967 (t!324398 rules!2768)))) (toChars!8783 (transformation!6472 (rule!9402 (h!46968 suffixTokens!72))))) t!324510) tb!234113))

(declare-fun result!283688 () Bool)

(assert (= result!283688 result!283658))

(assert (=> b!3920320 t!324510))

(declare-fun tp!1193189 () Bool)

(declare-fun b_and!298781 () Bool)

(assert (=> b!3920361 (= tp!1193189 (and (=> t!324504 result!283682) (=> t!324506 result!283684) (=> t!324508 result!283686) (=> t!324510 result!283688) b_and!298781))))

(declare-fun e!2424074 () Bool)

(assert (=> b!3920361 (= e!2424074 (and tp!1193188 tp!1193189))))

(declare-fun tp!1193187 () Bool)

(declare-fun e!2424075 () Bool)

(declare-fun b!3920360 () Bool)

(assert (=> b!3920360 (= e!2424075 (and tp!1193187 (inv!55741 (tag!7332 (h!46967 (t!324398 rules!2768)))) (inv!55744 (transformation!6472 (h!46967 (t!324398 rules!2768)))) e!2424074))))

(declare-fun b!3920359 () Bool)

(declare-fun e!2424076 () Bool)

(declare-fun tp!1193186 () Bool)

(assert (=> b!3920359 (= e!2424076 (and e!2424075 tp!1193186))))

(assert (=> b!3919737 (= tp!1193064 e!2424076)))

(assert (= b!3920360 b!3920361))

(assert (= b!3920359 b!3920360))

(assert (= (and b!3919737 ((_ is Cons!41547) (t!324398 rules!2768))) b!3920359))

(declare-fun m!4484181 () Bool)

(assert (=> b!3920360 m!4484181))

(declare-fun m!4484183 () Bool)

(assert (=> b!3920360 m!4484183))

(declare-fun b!3920372 () Bool)

(declare-fun e!2424079 () Bool)

(assert (=> b!3920372 (= e!2424079 tp_is_empty!19725)))

(declare-fun b!3920374 () Bool)

(declare-fun tp!1193204 () Bool)

(assert (=> b!3920374 (= e!2424079 tp!1193204)))

(declare-fun b!3920373 () Bool)

(declare-fun tp!1193200 () Bool)

(declare-fun tp!1193203 () Bool)

(assert (=> b!3920373 (= e!2424079 (and tp!1193200 tp!1193203))))

(assert (=> b!3919757 (= tp!1193078 e!2424079)))

(declare-fun b!3920375 () Bool)

(declare-fun tp!1193202 () Bool)

(declare-fun tp!1193201 () Bool)

(assert (=> b!3920375 (= e!2424079 (and tp!1193202 tp!1193201))))

(assert (= (and b!3919757 ((_ is ElementMatch!11377) (regex!6472 (rule!9402 (h!46968 suffixTokens!72))))) b!3920372))

(assert (= (and b!3919757 ((_ is Concat!18080) (regex!6472 (rule!9402 (h!46968 suffixTokens!72))))) b!3920373))

(assert (= (and b!3919757 ((_ is Star!11377) (regex!6472 (rule!9402 (h!46968 suffixTokens!72))))) b!3920374))

(assert (= (and b!3919757 ((_ is Union!11377) (regex!6472 (rule!9402 (h!46968 suffixTokens!72))))) b!3920375))

(declare-fun b!3920376 () Bool)

(declare-fun e!2424080 () Bool)

(assert (=> b!3920376 (= e!2424080 tp_is_empty!19725)))

(declare-fun b!3920378 () Bool)

(declare-fun tp!1193209 () Bool)

(assert (=> b!3920378 (= e!2424080 tp!1193209)))

(declare-fun b!3920377 () Bool)

(declare-fun tp!1193205 () Bool)

(declare-fun tp!1193208 () Bool)

(assert (=> b!3920377 (= e!2424080 (and tp!1193205 tp!1193208))))

(assert (=> b!3919746 (= tp!1193075 e!2424080)))

(declare-fun b!3920379 () Bool)

(declare-fun tp!1193207 () Bool)

(declare-fun tp!1193206 () Bool)

(assert (=> b!3920379 (= e!2424080 (and tp!1193207 tp!1193206))))

(assert (= (and b!3919746 ((_ is ElementMatch!11377) (regex!6472 (rule!9402 (h!46968 prefixTokens!80))))) b!3920376))

(assert (= (and b!3919746 ((_ is Concat!18080) (regex!6472 (rule!9402 (h!46968 prefixTokens!80))))) b!3920377))

(assert (= (and b!3919746 ((_ is Star!11377) (regex!6472 (rule!9402 (h!46968 prefixTokens!80))))) b!3920378))

(assert (= (and b!3919746 ((_ is Union!11377) (regex!6472 (rule!9402 (h!46968 prefixTokens!80))))) b!3920379))

(declare-fun b!3920380 () Bool)

(declare-fun e!2424081 () Bool)

(assert (=> b!3920380 (= e!2424081 tp_is_empty!19725)))

(declare-fun b!3920382 () Bool)

(declare-fun tp!1193214 () Bool)

(assert (=> b!3920382 (= e!2424081 tp!1193214)))

(declare-fun b!3920381 () Bool)

(declare-fun tp!1193210 () Bool)

(declare-fun tp!1193213 () Bool)

(assert (=> b!3920381 (= e!2424081 (and tp!1193210 tp!1193213))))

(assert (=> b!3919729 (= tp!1193072 e!2424081)))

(declare-fun b!3920383 () Bool)

(declare-fun tp!1193212 () Bool)

(declare-fun tp!1193211 () Bool)

(assert (=> b!3920383 (= e!2424081 (and tp!1193212 tp!1193211))))

(assert (= (and b!3919729 ((_ is ElementMatch!11377) (regex!6472 (h!46967 rules!2768)))) b!3920380))

(assert (= (and b!3919729 ((_ is Concat!18080) (regex!6472 (h!46967 rules!2768)))) b!3920381))

(assert (= (and b!3919729 ((_ is Star!11377) (regex!6472 (h!46967 rules!2768)))) b!3920382))

(assert (= (and b!3919729 ((_ is Union!11377) (regex!6472 (h!46967 rules!2768)))) b!3920383))

(declare-fun b!3920387 () Bool)

(declare-fun b_free!106573 () Bool)

(declare-fun b_next!107277 () Bool)

(assert (=> b!3920387 (= b_free!106573 (not b_next!107277))))

(declare-fun tb!234115 () Bool)

(declare-fun t!324512 () Bool)

(assert (=> (and b!3920387 (= (toValue!8924 (transformation!6472 (rule!9402 (h!46968 (t!324399 suffixTokens!72))))) (toValue!8924 (transformation!6472 (rule!9402 (_1!23537 (v!39217 lt!1365940)))))) t!324512) tb!234115))

(declare-fun result!283692 () Bool)

(assert (= result!283692 result!283594))

(assert (=> d!1162845 t!324512))

(declare-fun tp!1193217 () Bool)

(declare-fun b_and!298783 () Bool)

(assert (=> b!3920387 (= tp!1193217 (and (=> t!324512 result!283692) b_and!298783))))

(declare-fun b_free!106575 () Bool)

(declare-fun b_next!107279 () Bool)

(assert (=> b!3920387 (= b_free!106575 (not b_next!107279))))

(declare-fun tb!234117 () Bool)

(declare-fun t!324514 () Bool)

(assert (=> (and b!3920387 (= (toChars!8783 (transformation!6472 (rule!9402 (h!46968 (t!324399 suffixTokens!72))))) (toChars!8783 (transformation!6472 (rule!9402 (h!46968 prefixTokens!80))))) t!324514) tb!234117))

(declare-fun result!283694 () Bool)

(assert (= result!283694 result!283586))

(assert (=> b!3920152 t!324514))

(declare-fun t!324516 () Bool)

(declare-fun tb!234119 () Bool)

(assert (=> (and b!3920387 (= (toChars!8783 (transformation!6472 (rule!9402 (h!46968 (t!324399 suffixTokens!72))))) (toChars!8783 (transformation!6472 (rule!9402 (_1!23537 (v!39217 lt!1365940)))))) t!324516) tb!234119))

(declare-fun result!283696 () Bool)

(assert (= result!283696 result!283602))

(assert (=> d!1162863 t!324516))

(declare-fun t!324518 () Bool)

(declare-fun tb!234121 () Bool)

(assert (=> (and b!3920387 (= (toChars!8783 (transformation!6472 (rule!9402 (h!46968 (t!324399 suffixTokens!72))))) (toChars!8783 (transformation!6472 (rule!9402 lt!1365965)))) t!324518) tb!234121))

(declare-fun result!283698 () Bool)

(assert (= result!283698 result!283612))

(assert (=> d!1162891 t!324518))

(declare-fun t!324520 () Bool)

(declare-fun tb!234123 () Bool)

(assert (=> (and b!3920387 (= (toChars!8783 (transformation!6472 (rule!9402 (h!46968 (t!324399 suffixTokens!72))))) (toChars!8783 (transformation!6472 (rule!9402 (h!46968 suffixTokens!72))))) t!324520) tb!234123))

(declare-fun result!283700 () Bool)

(assert (= result!283700 result!283658))

(assert (=> b!3920320 t!324520))

(declare-fun b_and!298785 () Bool)

(declare-fun tp!1193215 () Bool)

(assert (=> b!3920387 (= tp!1193215 (and (=> t!324514 result!283694) (=> t!324516 result!283696) (=> t!324518 result!283698) (=> t!324520 result!283700) b_and!298785))))

(declare-fun e!2424084 () Bool)

(declare-fun e!2424086 () Bool)

(declare-fun tp!1193218 () Bool)

(declare-fun b!3920386 () Bool)

(assert (=> b!3920386 (= e!2424084 (and tp!1193218 (inv!55741 (tag!7332 (rule!9402 (h!46968 (t!324399 suffixTokens!72))))) (inv!55744 (transformation!6472 (rule!9402 (h!46968 (t!324399 suffixTokens!72))))) e!2424086))))

(assert (=> b!3920387 (= e!2424086 (and tp!1193217 tp!1193215))))

(declare-fun b!3920385 () Bool)

(declare-fun e!2424087 () Bool)

(declare-fun tp!1193219 () Bool)

(assert (=> b!3920385 (= e!2424087 (and (inv!21 (value!205086 (h!46968 (t!324399 suffixTokens!72)))) e!2424084 tp!1193219))))

(declare-fun e!2424082 () Bool)

(assert (=> b!3919751 (= tp!1193070 e!2424082)))

(declare-fun tp!1193216 () Bool)

(declare-fun b!3920384 () Bool)

(assert (=> b!3920384 (= e!2424082 (and (inv!55745 (h!46968 (t!324399 suffixTokens!72))) e!2424087 tp!1193216))))

(assert (= b!3920386 b!3920387))

(assert (= b!3920385 b!3920386))

(assert (= b!3920384 b!3920385))

(assert (= (and b!3919751 ((_ is Cons!41548) (t!324399 suffixTokens!72))) b!3920384))

(declare-fun m!4484185 () Bool)

(assert (=> b!3920386 m!4484185))

(declare-fun m!4484187 () Bool)

(assert (=> b!3920386 m!4484187))

(declare-fun m!4484189 () Bool)

(assert (=> b!3920385 m!4484189))

(declare-fun m!4484191 () Bool)

(assert (=> b!3920384 m!4484191))

(declare-fun b!3920388 () Bool)

(declare-fun e!2424088 () Bool)

(declare-fun tp!1193220 () Bool)

(assert (=> b!3920388 (= e!2424088 (and tp_is_empty!19725 tp!1193220))))

(assert (=> b!3919732 (= tp!1193066 e!2424088)))

(assert (= (and b!3919732 ((_ is Cons!41545) (t!324396 prefix!426))) b!3920388))

(declare-fun b_lambda!114795 () Bool)

(assert (= b_lambda!114793 (or (and b!3920361 b_free!106571 (= (toChars!8783 (transformation!6472 (h!46967 (t!324398 rules!2768)))) (toChars!8783 (transformation!6472 (rule!9402 (h!46968 suffixTokens!72)))))) (and b!3919744 b_free!106543 (= (toChars!8783 (transformation!6472 (rule!9402 (h!46968 prefixTokens!80)))) (toChars!8783 (transformation!6472 (rule!9402 (h!46968 suffixTokens!72)))))) (and b!3920349 b_free!106567 (= (toChars!8783 (transformation!6472 (rule!9402 (h!46968 (t!324399 prefixTokens!80))))) (toChars!8783 (transformation!6472 (rule!9402 (h!46968 suffixTokens!72)))))) (and b!3920387 b_free!106575 (= (toChars!8783 (transformation!6472 (rule!9402 (h!46968 (t!324399 suffixTokens!72))))) (toChars!8783 (transformation!6472 (rule!9402 (h!46968 suffixTokens!72)))))) (and b!3919731 b_free!106547 (= (toChars!8783 (transformation!6472 (h!46967 rules!2768))) (toChars!8783 (transformation!6472 (rule!9402 (h!46968 suffixTokens!72)))))) (and b!3919761 b_free!106551) b_lambda!114795)))

(declare-fun b_lambda!114797 () Bool)

(assert (= b_lambda!114779 (or (and b!3919761 b_free!106551 (= (toChars!8783 (transformation!6472 (rule!9402 (h!46968 suffixTokens!72)))) (toChars!8783 (transformation!6472 (rule!9402 (h!46968 prefixTokens!80)))))) (and b!3920387 b_free!106575 (= (toChars!8783 (transformation!6472 (rule!9402 (h!46968 (t!324399 suffixTokens!72))))) (toChars!8783 (transformation!6472 (rule!9402 (h!46968 prefixTokens!80)))))) (and b!3919731 b_free!106547 (= (toChars!8783 (transformation!6472 (h!46967 rules!2768))) (toChars!8783 (transformation!6472 (rule!9402 (h!46968 prefixTokens!80)))))) (and b!3919744 b_free!106543) (and b!3920349 b_free!106567 (= (toChars!8783 (transformation!6472 (rule!9402 (h!46968 (t!324399 prefixTokens!80))))) (toChars!8783 (transformation!6472 (rule!9402 (h!46968 prefixTokens!80)))))) (and b!3920361 b_free!106571 (= (toChars!8783 (transformation!6472 (h!46967 (t!324398 rules!2768)))) (toChars!8783 (transformation!6472 (rule!9402 (h!46968 prefixTokens!80)))))) b_lambda!114797)))

(check-sat (not d!1162831) (not b!3920065) (not b!3919938) b_and!298781 (not tb!234041) (not b!3920051) (not b!3920322) b_and!298771 (not b!3920039) (not b!3920122) (not b!3920359) (not b!3920136) (not b!3920386) (not bm!284588) (not b!3920348) (not b!3920125) (not b!3920381) (not b_lambda!114795) (not b!3920207) (not b_next!107249) (not b!3920120) (not b!3920013) (not d!1162781) (not d!1162793) (not b!3920177) (not b!3920374) (not d!1162855) (not b!3920206) b_and!298769 (not b_lambda!114781) (not b!3920385) (not b!3920014) (not b!3919937) b_and!298775 (not b!3920060) (not b!3920384) (not b!3920066) (not b!3919941) (not bm!284594) (not b!3920212) (not d!1162891) (not b_next!107269) b_and!298779 (not b_next!107255) (not b!3920119) (not d!1162905) (not d!1162859) (not b!3920235) (not b!3920248) (not b!3920388) (not b!3920377) (not b!3920143) (not b!3920166) (not d!1162919) (not b!3920373) b_and!298777 tp_is_empty!19725 (not b!3920026) (not b!3920379) (not b!3920181) (not b_lambda!114787) (not b!3920378) (not b_next!107245) (not tb!234029) (not b!3920038) (not d!1162871) (not d!1162719) (not b!3920236) b_and!298737 (not b!3920121) (not b!3920350) (not b!3920333) (not d!1162843) b_and!298733 (not b!3920058) (not b!3920054) (not b!3920383) (not d!1162811) (not b!3919829) (not b_next!107273) (not d!1162763) (not d!1162839) (not b!3919828) (not d!1162711) (not b!3920326) (not b!3920179) (not b!3920126) (not b!3920320) (not d!1162797) (not b!3920245) (not d!1162881) (not b!3920334) (not b!3919825) (not b!3920061) (not b!3920131) b_and!298785 (not tb!234035) (not b!3920133) (not d!1162799) (not d!1162863) (not b!3920219) (not d!1162857) (not b!3920375) (not b!3920064) (not b_next!107247) (not b!3920335) (not b!3920328) (not b_next!107251) (not d!1162787) (not b!3919934) (not d!1162779) (not b!3919830) (not d!1162789) (not d!1162889) b_and!298783 (not b!3919833) (not b!3920324) (not d!1162841) (not b!3920205) (not d!1162853) (not b!3920129) (not b!3919936) (not b!3920250) (not b!3920123) (not b!3920176) (not b_next!107275) (not b!3920382) (not b!3919832) (not b!3920134) (not d!1162791) (not b!3920251) (not b!3920321) (not b!3920153) (not b!3920360) (not d!1162795) (not b!3920214) (not b!3919940) (not d!1162775) (not b_next!107279) (not b!3920195) b_and!298773 (not b!3920180) b_and!298735 (not b!3919935) (not b!3920130) (not b_next!107253) (not b!3920052) (not b!3920346) (not b!3920127) (not b!3920015) (not d!1162897) (not d!1162861) (not b_lambda!114783) (not b!3920027) (not b_next!107271) (not b!3920243) (not tb!234051) (not b!3920145) (not b_lambda!114797) (not b!3920070) (not b!3919939) (not b_next!107277) (not b!3920347) (not d!1162901) (not tb!234089) (not b!3920152) (not d!1162867))
(check-sat b_and!298781 b_and!298771 (not b_next!107249) b_and!298769 b_and!298775 (not b_next!107269) b_and!298777 (not b_next!107245) (not b_next!107273) b_and!298785 (not b_next!107247) (not b_next!107251) b_and!298783 (not b_next!107275) (not b_next!107279) (not b_next!107253) (not b_next!107271) (not b_next!107277) b_and!298779 (not b_next!107255) b_and!298737 b_and!298733 b_and!298773 b_and!298735)
