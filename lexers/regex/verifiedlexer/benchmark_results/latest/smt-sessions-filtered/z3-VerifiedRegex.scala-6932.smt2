; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!366232 () Bool)

(assert start!366232)

(declare-fun b!3910611 () Bool)

(declare-fun b_free!106061 () Bool)

(declare-fun b_next!106765 () Bool)

(assert (=> b!3910611 (= b_free!106061 (not b_next!106765))))

(declare-fun tp!1190420 () Bool)

(declare-fun b_and!297395 () Bool)

(assert (=> b!3910611 (= tp!1190420 b_and!297395)))

(declare-fun b_free!106063 () Bool)

(declare-fun b_next!106767 () Bool)

(assert (=> b!3910611 (= b_free!106063 (not b_next!106767))))

(declare-fun tp!1190429 () Bool)

(declare-fun b_and!297397 () Bool)

(assert (=> b!3910611 (= tp!1190429 b_and!297397)))

(declare-fun b!3910608 () Bool)

(declare-fun b_free!106065 () Bool)

(declare-fun b_next!106769 () Bool)

(assert (=> b!3910608 (= b_free!106065 (not b_next!106769))))

(declare-fun tp!1190423 () Bool)

(declare-fun b_and!297399 () Bool)

(assert (=> b!3910608 (= tp!1190423 b_and!297399)))

(declare-fun b_free!106067 () Bool)

(declare-fun b_next!106771 () Bool)

(assert (=> b!3910608 (= b_free!106067 (not b_next!106771))))

(declare-fun tp!1190425 () Bool)

(declare-fun b_and!297401 () Bool)

(assert (=> b!3910608 (= tp!1190425 b_and!297401)))

(declare-fun b!3910607 () Bool)

(declare-fun b_free!106069 () Bool)

(declare-fun b_next!106773 () Bool)

(assert (=> b!3910607 (= b_free!106069 (not b_next!106773))))

(declare-fun tp!1190418 () Bool)

(declare-fun b_and!297403 () Bool)

(assert (=> b!3910607 (= tp!1190418 b_and!297403)))

(declare-fun b_free!106071 () Bool)

(declare-fun b_next!106775 () Bool)

(assert (=> b!3910607 (= b_free!106071 (not b_next!106775))))

(declare-fun tp!1190428 () Bool)

(declare-fun b_and!297405 () Bool)

(assert (=> b!3910607 (= tp!1190428 b_and!297405)))

(declare-fun b!3910606 () Bool)

(declare-fun e!2417791 () Bool)

(declare-fun e!2417790 () Bool)

(assert (=> b!3910606 (= e!2417791 e!2417790)))

(declare-fun res!1581725 () Bool)

(assert (=> b!3910606 (=> (not res!1581725) (not e!2417790))))

(declare-datatypes ((List!41573 0))(
  ( (Nil!41449) (Cons!41449 (h!46869 (_ BitVec 16)) (t!322856 List!41573)) )
))
(declare-datatypes ((TokenValue!6682 0))(
  ( (FloatLiteralValue!13364 (text!47219 List!41573)) (TokenValueExt!6681 (__x!25581 Int)) (Broken!33410 (value!204490 List!41573)) (Object!6805) (End!6682) (Def!6682) (Underscore!6682) (Match!6682) (Else!6682) (Error!6682) (Case!6682) (If!6682) (Extends!6682) (Abstract!6682) (Class!6682) (Val!6682) (DelimiterValue!13364 (del!6742 List!41573)) (KeywordValue!6688 (value!204491 List!41573)) (CommentValue!13364 (value!204492 List!41573)) (WhitespaceValue!13364 (value!204493 List!41573)) (IndentationValue!6682 (value!204494 List!41573)) (String!47127) (Int32!6682) (Broken!33411 (value!204495 List!41573)) (Boolean!6683) (Unit!59590) (OperatorValue!6685 (op!6742 List!41573)) (IdentifierValue!13364 (value!204496 List!41573)) (IdentifierValue!13365 (value!204497 List!41573)) (WhitespaceValue!13365 (value!204498 List!41573)) (True!13364) (False!13364) (Broken!33412 (value!204499 List!41573)) (Broken!33413 (value!204500 List!41573)) (True!13365) (RightBrace!6682) (RightBracket!6682) (Colon!6682) (Null!6682) (Comma!6682) (LeftBracket!6682) (False!13365) (LeftBrace!6682) (ImaginaryLiteralValue!6682 (text!47220 List!41573)) (StringLiteralValue!20046 (value!204501 List!41573)) (EOFValue!6682 (value!204502 List!41573)) (IdentValue!6682 (value!204503 List!41573)) (DelimiterValue!13365 (value!204504 List!41573)) (DedentValue!6682 (value!204505 List!41573)) (NewLineValue!6682 (value!204506 List!41573)) (IntegerValue!20046 (value!204507 (_ BitVec 32)) (text!47221 List!41573)) (IntegerValue!20047 (value!204508 Int) (text!47222 List!41573)) (Times!6682) (Or!6682) (Equal!6682) (Minus!6682) (Broken!33414 (value!204509 List!41573)) (And!6682) (Div!6682) (LessEqual!6682) (Mod!6682) (Concat!18039) (Not!6682) (Plus!6682) (SpaceValue!6682 (value!204510 List!41573)) (IntegerValue!20048 (value!204511 Int) (text!47223 List!41573)) (StringLiteralValue!20047 (text!47224 List!41573)) (FloatLiteralValue!13365 (text!47225 List!41573)) (BytesLiteralValue!6682 (value!204512 List!41573)) (CommentValue!13365 (value!204513 List!41573)) (StringLiteralValue!20048 (value!204514 List!41573)) (ErrorTokenValue!6682 (msg!6743 List!41573)) )
))
(declare-datatypes ((C!22900 0))(
  ( (C!22901 (val!13544 Int)) )
))
(declare-datatypes ((Regex!11357 0))(
  ( (ElementMatch!11357 (c!679728 C!22900)) (Concat!18040 (regOne!23226 Regex!11357) (regTwo!23226 Regex!11357)) (EmptyExpr!11357) (Star!11357 (reg!11686 Regex!11357)) (EmptyLang!11357) (Union!11357 (regOne!23227 Regex!11357) (regTwo!23227 Regex!11357)) )
))
(declare-datatypes ((String!47128 0))(
  ( (String!47129 (value!204515 String)) )
))
(declare-datatypes ((List!41574 0))(
  ( (Nil!41450) (Cons!41450 (h!46870 C!22900) (t!322857 List!41574)) )
))
(declare-datatypes ((IArray!25331 0))(
  ( (IArray!25332 (innerList!12723 List!41574)) )
))
(declare-datatypes ((Conc!12663 0))(
  ( (Node!12663 (left!31731 Conc!12663) (right!32061 Conc!12663) (csize!25556 Int) (cheight!12874 Int)) (Leaf!19596 (xs!15969 IArray!25331) (csize!25557 Int)) (Empty!12663) )
))
(declare-datatypes ((BalanceConc!24920 0))(
  ( (BalanceConc!24921 (c!679729 Conc!12663)) )
))
(declare-datatypes ((TokenValueInjection!12792 0))(
  ( (TokenValueInjection!12793 (toValue!8896 Int) (toChars!8755 Int)) )
))
(declare-datatypes ((Rule!12704 0))(
  ( (Rule!12705 (regex!6452 Regex!11357) (tag!7312 String!47128) (isSeparator!6452 Bool) (transformation!6452 TokenValueInjection!12792)) )
))
(declare-datatypes ((Token!12042 0))(
  ( (Token!12043 (value!204516 TokenValue!6682) (rule!9366 Rule!12704) (size!31117 Int) (originalCharacters!7052 List!41574)) )
))
(declare-datatypes ((tuple2!40694 0))(
  ( (tuple2!40695 (_1!23481 Token!12042) (_2!23481 List!41574)) )
))
(declare-datatypes ((Option!8872 0))(
  ( (None!8871) (Some!8871 (v!39193 tuple2!40694)) )
))
(declare-fun lt!1362333 () Option!8872)

(get-info :version)

(assert (=> b!3910606 (= res!1581725 ((_ is Some!8871) lt!1362333))))

(declare-datatypes ((LexerInterface!6041 0))(
  ( (LexerInterfaceExt!6038 (__x!25582 Int)) (Lexer!6039) )
))
(declare-fun thiss!20629 () LexerInterface!6041)

(declare-datatypes ((List!41575 0))(
  ( (Nil!41451) (Cons!41451 (h!46871 Rule!12704) (t!322858 List!41575)) )
))
(declare-fun rules!2768 () List!41575)

(declare-fun lt!1362329 () List!41574)

(declare-fun maxPrefix!3345 (LexerInterface!6041 List!41575 List!41574) Option!8872)

(assert (=> b!3910606 (= lt!1362333 (maxPrefix!3345 thiss!20629 rules!2768 lt!1362329))))

(declare-fun e!2417783 () Bool)

(assert (=> b!3910607 (= e!2417783 (and tp!1190418 tp!1190428))))

(declare-fun e!2417798 () Bool)

(assert (=> b!3910608 (= e!2417798 (and tp!1190423 tp!1190425))))

(declare-fun b!3910609 () Bool)

(declare-fun e!2417784 () Bool)

(declare-fun tp_is_empty!19685 () Bool)

(declare-fun tp!1190421 () Bool)

(assert (=> b!3910609 (= e!2417784 (and tp_is_empty!19685 tp!1190421))))

(declare-fun b!3910610 () Bool)

(declare-fun res!1581720 () Bool)

(declare-fun e!2417788 () Bool)

(assert (=> b!3910610 (=> res!1581720 e!2417788)))

(declare-datatypes ((List!41576 0))(
  ( (Nil!41452) (Cons!41452 (h!46872 Token!12042) (t!322859 List!41576)) )
))
(declare-datatypes ((tuple2!40696 0))(
  ( (tuple2!40697 (_1!23482 List!41576) (_2!23482 List!41574)) )
))
(declare-fun lt!1362318 () tuple2!40696)

(declare-fun lt!1362324 () tuple2!40696)

(declare-fun ++!10661 (List!41576 List!41576) List!41576)

(assert (=> b!3910610 (= res!1581720 (not (= lt!1362318 (tuple2!40697 (++!10661 (Cons!41452 (_1!23481 (v!39193 lt!1362333)) Nil!41452) (_1!23482 lt!1362324)) (_2!23482 lt!1362324)))))))

(declare-fun e!2417787 () Bool)

(assert (=> b!3910611 (= e!2417787 (and tp!1190420 tp!1190429))))

(declare-fun b!3910612 () Bool)

(declare-fun e!2417794 () Bool)

(declare-fun size!31118 (List!41574) Int)

(assert (=> b!3910612 (= e!2417794 (= (size!31117 (_1!23481 (v!39193 lt!1362333))) (size!31118 (originalCharacters!7052 (_1!23481 (v!39193 lt!1362333))))))))

(declare-fun b!3910613 () Bool)

(declare-fun res!1581726 () Bool)

(assert (=> b!3910613 (=> (not res!1581726) (not e!2417791))))

(declare-fun suffixResult!91 () List!41574)

(declare-fun suffix!1176 () List!41574)

(declare-fun suffixTokens!72 () List!41576)

(declare-fun lexList!1809 (LexerInterface!6041 List!41575 List!41574) tuple2!40696)

(assert (=> b!3910613 (= res!1581726 (= (lexList!1809 thiss!20629 rules!2768 suffix!1176) (tuple2!40697 suffixTokens!72 suffixResult!91)))))

(declare-fun tp!1190416 () Bool)

(declare-fun e!2417801 () Bool)

(declare-fun b!3910614 () Bool)

(declare-fun e!2417779 () Bool)

(declare-fun inv!55630 (Token!12042) Bool)

(assert (=> b!3910614 (= e!2417801 (and (inv!55630 (h!46872 suffixTokens!72)) e!2417779 tp!1190416))))

(declare-fun b!3910615 () Bool)

(assert (=> b!3910615 (= e!2417790 (not e!2417788))))

(declare-fun res!1581719 () Bool)

(assert (=> b!3910615 (=> res!1581719 e!2417788)))

(declare-fun lt!1362317 () List!41574)

(assert (=> b!3910615 (= res!1581719 (not (= lt!1362317 lt!1362329)))))

(assert (=> b!3910615 (= lt!1362324 (lexList!1809 thiss!20629 rules!2768 (_2!23481 (v!39193 lt!1362333))))))

(declare-fun lt!1362321 () List!41574)

(declare-fun lt!1362326 () Int)

(declare-fun lt!1362328 () List!41574)

(declare-fun lt!1362334 () TokenValue!6682)

(assert (=> b!3910615 (and (= (size!31117 (_1!23481 (v!39193 lt!1362333))) lt!1362326) (= (originalCharacters!7052 (_1!23481 (v!39193 lt!1362333))) lt!1362321) (= (v!39193 lt!1362333) (tuple2!40695 (Token!12043 lt!1362334 (rule!9366 (_1!23481 (v!39193 lt!1362333))) lt!1362326 lt!1362321) lt!1362328)))))

(assert (=> b!3910615 (= lt!1362326 (size!31118 lt!1362321))))

(assert (=> b!3910615 e!2417794))

(declare-fun res!1581729 () Bool)

(assert (=> b!3910615 (=> (not res!1581729) (not e!2417794))))

(assert (=> b!3910615 (= res!1581729 (= (value!204516 (_1!23481 (v!39193 lt!1362333))) lt!1362334))))

(declare-fun apply!9691 (TokenValueInjection!12792 BalanceConc!24920) TokenValue!6682)

(declare-fun seqFromList!4719 (List!41574) BalanceConc!24920)

(assert (=> b!3910615 (= lt!1362334 (apply!9691 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) (seqFromList!4719 lt!1362321)))))

(assert (=> b!3910615 (= (_2!23481 (v!39193 lt!1362333)) lt!1362328)))

(declare-datatypes ((Unit!59591 0))(
  ( (Unit!59592) )
))
(declare-fun lt!1362332 () Unit!59591)

(declare-fun lemmaSamePrefixThenSameSuffix!1768 (List!41574 List!41574 List!41574 List!41574 List!41574) Unit!59591)

(assert (=> b!3910615 (= lt!1362332 (lemmaSamePrefixThenSameSuffix!1768 lt!1362321 (_2!23481 (v!39193 lt!1362333)) lt!1362321 lt!1362328 lt!1362329))))

(declare-fun getSuffix!2002 (List!41574 List!41574) List!41574)

(assert (=> b!3910615 (= lt!1362328 (getSuffix!2002 lt!1362329 lt!1362321))))

(declare-fun isPrefix!3547 (List!41574 List!41574) Bool)

(assert (=> b!3910615 (isPrefix!3547 lt!1362321 lt!1362317)))

(declare-fun ++!10662 (List!41574 List!41574) List!41574)

(assert (=> b!3910615 (= lt!1362317 (++!10662 lt!1362321 (_2!23481 (v!39193 lt!1362333))))))

(declare-fun lt!1362327 () Unit!59591)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2410 (List!41574 List!41574) Unit!59591)

(assert (=> b!3910615 (= lt!1362327 (lemmaConcatTwoListThenFirstIsPrefix!2410 lt!1362321 (_2!23481 (v!39193 lt!1362333))))))

(declare-fun list!15407 (BalanceConc!24920) List!41574)

(declare-fun charsOf!4276 (Token!12042) BalanceConc!24920)

(assert (=> b!3910615 (= lt!1362321 (list!15407 (charsOf!4276 (_1!23481 (v!39193 lt!1362333)))))))

(declare-fun ruleValid!2400 (LexerInterface!6041 Rule!12704) Bool)

(assert (=> b!3910615 (ruleValid!2400 thiss!20629 (rule!9366 (_1!23481 (v!39193 lt!1362333))))))

(declare-fun lt!1362320 () Unit!59591)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1480 (LexerInterface!6041 Rule!12704 List!41575) Unit!59591)

(assert (=> b!3910615 (= lt!1362320 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1480 thiss!20629 (rule!9366 (_1!23481 (v!39193 lt!1362333))) rules!2768))))

(declare-fun lt!1362319 () Unit!59591)

(declare-fun lemmaCharactersSize!1109 (Token!12042) Unit!59591)

(assert (=> b!3910615 (= lt!1362319 (lemmaCharactersSize!1109 (_1!23481 (v!39193 lt!1362333))))))

(declare-fun b!3910616 () Bool)

(declare-fun tp!1190426 () Bool)

(declare-fun e!2417781 () Bool)

(declare-fun inv!55627 (String!47128) Bool)

(declare-fun inv!55631 (TokenValueInjection!12792) Bool)

(assert (=> b!3910616 (= e!2417781 (and tp!1190426 (inv!55627 (tag!7312 (h!46871 rules!2768))) (inv!55631 (transformation!6452 (h!46871 rules!2768))) e!2417783))))

(declare-fun b!3910617 () Bool)

(declare-fun e!2417776 () Bool)

(declare-fun tp!1190419 () Bool)

(declare-fun inv!21 (TokenValue!6682) Bool)

(assert (=> b!3910617 (= e!2417779 (and (inv!21 (value!204516 (h!46872 suffixTokens!72))) e!2417776 tp!1190419))))

(declare-fun tp!1190431 () Bool)

(declare-fun b!3910618 () Bool)

(declare-fun prefixTokens!80 () List!41576)

(declare-fun e!2417802 () Bool)

(declare-fun e!2417785 () Bool)

(assert (=> b!3910618 (= e!2417802 (and (inv!55630 (h!46872 prefixTokens!80)) e!2417785 tp!1190431))))

(declare-fun b!3910619 () Bool)

(declare-fun res!1581722 () Bool)

(declare-fun e!2417789 () Bool)

(assert (=> b!3910619 (=> (not res!1581722) (not e!2417789))))

(declare-fun prefix!426 () List!41574)

(declare-fun isEmpty!24656 (List!41574) Bool)

(assert (=> b!3910619 (= res!1581722 (not (isEmpty!24656 prefix!426)))))

(declare-fun b!3910620 () Bool)

(declare-fun res!1581718 () Bool)

(assert (=> b!3910620 (=> (not res!1581718) (not e!2417789))))

(declare-fun rulesInvariant!5384 (LexerInterface!6041 List!41575) Bool)

(assert (=> b!3910620 (= res!1581718 (rulesInvariant!5384 thiss!20629 rules!2768))))

(declare-fun b!3910621 () Bool)

(declare-fun e!2417792 () Bool)

(declare-fun tp!1190432 () Bool)

(assert (=> b!3910621 (= e!2417792 (and e!2417781 tp!1190432))))

(declare-fun b!3910622 () Bool)

(declare-fun res!1581715 () Bool)

(assert (=> b!3910622 (=> (not res!1581715) (not e!2417789))))

(declare-fun isEmpty!24657 (List!41576) Bool)

(assert (=> b!3910622 (= res!1581715 (not (isEmpty!24657 prefixTokens!80)))))

(declare-fun b!3910623 () Bool)

(declare-fun e!2417778 () Bool)

(declare-fun tp!1190430 () Bool)

(assert (=> b!3910623 (= e!2417778 (and tp_is_empty!19685 tp!1190430))))

(declare-fun b!3910624 () Bool)

(declare-fun res!1581716 () Bool)

(assert (=> b!3910624 (=> res!1581716 e!2417788)))

(assert (=> b!3910624 (= res!1581716 (or (not (= lt!1362324 (tuple2!40697 (_1!23482 lt!1362324) (_2!23482 lt!1362324)))) (= (_2!23481 (v!39193 lt!1362333)) suffix!1176)))))

(declare-fun b!3910625 () Bool)

(declare-fun res!1581723 () Bool)

(assert (=> b!3910625 (=> (not res!1581723) (not e!2417789))))

(declare-fun isEmpty!24658 (List!41575) Bool)

(assert (=> b!3910625 (= res!1581723 (not (isEmpty!24658 rules!2768)))))

(declare-fun tp!1190422 () Bool)

(declare-fun b!3910626 () Bool)

(declare-fun e!2417796 () Bool)

(assert (=> b!3910626 (= e!2417796 (and tp!1190422 (inv!55627 (tag!7312 (rule!9366 (h!46872 prefixTokens!80)))) (inv!55631 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80)))) e!2417787))))

(declare-fun b!3910627 () Bool)

(declare-fun e!2417800 () Bool)

(declare-fun e!2417797 () Bool)

(assert (=> b!3910627 (= e!2417800 e!2417797)))

(declare-fun res!1581721 () Bool)

(assert (=> b!3910627 (=> res!1581721 e!2417797)))

(declare-fun lt!1362325 () Int)

(declare-fun lt!1362323 () Int)

(assert (=> b!3910627 (= res!1581721 (not (= (+ lt!1362326 lt!1362325) lt!1362323)))))

(assert (=> b!3910627 (= lt!1362323 (size!31118 lt!1362329))))

(declare-fun tp!1190417 () Bool)

(declare-fun b!3910628 () Bool)

(assert (=> b!3910628 (= e!2417785 (and (inv!21 (value!204516 (h!46872 prefixTokens!80))) e!2417796 tp!1190417))))

(declare-fun b!3910629 () Bool)

(declare-fun e!2417782 () Bool)

(declare-fun matchR!5446 (Regex!11357 List!41574) Bool)

(assert (=> b!3910629 (= e!2417782 (matchR!5446 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) lt!1362321))))

(declare-fun maxPrefixOneRule!2415 (LexerInterface!6041 Rule!12704 List!41574) Option!8872)

(assert (=> b!3910629 (= (maxPrefixOneRule!2415 thiss!20629 (rule!9366 (_1!23481 (v!39193 lt!1362333))) lt!1362329) (Some!8871 (tuple2!40695 (Token!12043 lt!1362334 (rule!9366 (_1!23481 (v!39193 lt!1362333))) lt!1362326 lt!1362321) (_2!23481 (v!39193 lt!1362333)))))))

(declare-fun lt!1362322 () Unit!59591)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1283 (LexerInterface!6041 List!41575 List!41574 List!41574 List!41574 Rule!12704) Unit!59591)

(assert (=> b!3910629 (= lt!1362322 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1283 thiss!20629 rules!2768 lt!1362321 lt!1362329 (_2!23481 (v!39193 lt!1362333)) (rule!9366 (_1!23481 (v!39193 lt!1362333)))))))

(declare-fun b!3910630 () Bool)

(assert (=> b!3910630 (= e!2417788 e!2417800)))

(declare-fun res!1581728 () Bool)

(assert (=> b!3910630 (=> res!1581728 e!2417800)))

(declare-fun lt!1362331 () Int)

(assert (=> b!3910630 (= res!1581728 (>= lt!1362325 lt!1362331))))

(assert (=> b!3910630 (= lt!1362331 (size!31118 suffix!1176))))

(assert (=> b!3910630 (= lt!1362325 (size!31118 (_2!23481 (v!39193 lt!1362333))))))

(declare-fun b!3910631 () Bool)

(declare-fun tp!1190427 () Bool)

(assert (=> b!3910631 (= e!2417776 (and tp!1190427 (inv!55627 (tag!7312 (rule!9366 (h!46872 suffixTokens!72)))) (inv!55631 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72)))) e!2417798))))

(declare-fun b!3910632 () Bool)

(assert (=> b!3910632 (= e!2417789 e!2417791)))

(declare-fun res!1581717 () Bool)

(assert (=> b!3910632 (=> (not res!1581717) (not e!2417791))))

(declare-fun lt!1362330 () List!41576)

(assert (=> b!3910632 (= res!1581717 (= lt!1362318 (tuple2!40697 lt!1362330 suffixResult!91)))))

(assert (=> b!3910632 (= lt!1362318 (lexList!1809 thiss!20629 rules!2768 lt!1362329))))

(assert (=> b!3910632 (= lt!1362330 (++!10661 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3910632 (= lt!1362329 (++!10662 prefix!426 suffix!1176))))

(declare-fun b!3910633 () Bool)

(assert (=> b!3910633 (= e!2417797 e!2417782)))

(declare-fun res!1581724 () Bool)

(assert (=> b!3910633 (=> res!1581724 e!2417782)))

(declare-fun lt!1362335 () Int)

(assert (=> b!3910633 (= res!1581724 (or (not (= (+ lt!1362335 lt!1362331) lt!1362323)) (<= lt!1362326 lt!1362335)))))

(assert (=> b!3910633 (= lt!1362335 (size!31118 prefix!426))))

(declare-fun b!3910634 () Bool)

(declare-fun e!2417799 () Bool)

(declare-fun tp!1190424 () Bool)

(assert (=> b!3910634 (= e!2417799 (and tp_is_empty!19685 tp!1190424))))

(declare-fun res!1581727 () Bool)

(assert (=> start!366232 (=> (not res!1581727) (not e!2417789))))

(assert (=> start!366232 (= res!1581727 ((_ is Lexer!6039) thiss!20629))))

(assert (=> start!366232 e!2417789))

(assert (=> start!366232 e!2417784))

(assert (=> start!366232 true))

(assert (=> start!366232 e!2417799))

(assert (=> start!366232 e!2417792))

(assert (=> start!366232 e!2417802))

(assert (=> start!366232 e!2417801))

(assert (=> start!366232 e!2417778))

(assert (= (and start!366232 res!1581727) b!3910625))

(assert (= (and b!3910625 res!1581723) b!3910620))

(assert (= (and b!3910620 res!1581718) b!3910622))

(assert (= (and b!3910622 res!1581715) b!3910619))

(assert (= (and b!3910619 res!1581722) b!3910632))

(assert (= (and b!3910632 res!1581717) b!3910613))

(assert (= (and b!3910613 res!1581726) b!3910606))

(assert (= (and b!3910606 res!1581725) b!3910615))

(assert (= (and b!3910615 res!1581729) b!3910612))

(assert (= (and b!3910615 (not res!1581719)) b!3910610))

(assert (= (and b!3910610 (not res!1581720)) b!3910624))

(assert (= (and b!3910624 (not res!1581716)) b!3910630))

(assert (= (and b!3910630 (not res!1581728)) b!3910627))

(assert (= (and b!3910627 (not res!1581721)) b!3910633))

(assert (= (and b!3910633 (not res!1581724)) b!3910629))

(assert (= (and start!366232 ((_ is Cons!41450) suffixResult!91)) b!3910609))

(assert (= (and start!366232 ((_ is Cons!41450) suffix!1176)) b!3910634))

(assert (= b!3910616 b!3910607))

(assert (= b!3910621 b!3910616))

(assert (= (and start!366232 ((_ is Cons!41451) rules!2768)) b!3910621))

(assert (= b!3910626 b!3910611))

(assert (= b!3910628 b!3910626))

(assert (= b!3910618 b!3910628))

(assert (= (and start!366232 ((_ is Cons!41452) prefixTokens!80)) b!3910618))

(assert (= b!3910631 b!3910608))

(assert (= b!3910617 b!3910631))

(assert (= b!3910614 b!3910617))

(assert (= (and start!366232 ((_ is Cons!41452) suffixTokens!72)) b!3910614))

(assert (= (and start!366232 ((_ is Cons!41450) prefix!426)) b!3910623))

(declare-fun m!4473669 () Bool)

(assert (=> b!3910622 m!4473669))

(declare-fun m!4473671 () Bool)

(assert (=> b!3910615 m!4473671))

(declare-fun m!4473673 () Bool)

(assert (=> b!3910615 m!4473673))

(declare-fun m!4473675 () Bool)

(assert (=> b!3910615 m!4473675))

(declare-fun m!4473677 () Bool)

(assert (=> b!3910615 m!4473677))

(declare-fun m!4473679 () Bool)

(assert (=> b!3910615 m!4473679))

(declare-fun m!4473681 () Bool)

(assert (=> b!3910615 m!4473681))

(declare-fun m!4473683 () Bool)

(assert (=> b!3910615 m!4473683))

(declare-fun m!4473685 () Bool)

(assert (=> b!3910615 m!4473685))

(declare-fun m!4473687 () Bool)

(assert (=> b!3910615 m!4473687))

(assert (=> b!3910615 m!4473683))

(declare-fun m!4473689 () Bool)

(assert (=> b!3910615 m!4473689))

(declare-fun m!4473691 () Bool)

(assert (=> b!3910615 m!4473691))

(assert (=> b!3910615 m!4473691))

(declare-fun m!4473693 () Bool)

(assert (=> b!3910615 m!4473693))

(declare-fun m!4473695 () Bool)

(assert (=> b!3910615 m!4473695))

(declare-fun m!4473697 () Bool)

(assert (=> b!3910615 m!4473697))

(declare-fun m!4473699 () Bool)

(assert (=> b!3910613 m!4473699))

(declare-fun m!4473701 () Bool)

(assert (=> b!3910619 m!4473701))

(declare-fun m!4473703 () Bool)

(assert (=> b!3910628 m!4473703))

(declare-fun m!4473705 () Bool)

(assert (=> b!3910612 m!4473705))

(declare-fun m!4473707 () Bool)

(assert (=> b!3910616 m!4473707))

(declare-fun m!4473709 () Bool)

(assert (=> b!3910616 m!4473709))

(declare-fun m!4473711 () Bool)

(assert (=> b!3910627 m!4473711))

(declare-fun m!4473713 () Bool)

(assert (=> b!3910626 m!4473713))

(declare-fun m!4473715 () Bool)

(assert (=> b!3910626 m!4473715))

(declare-fun m!4473717 () Bool)

(assert (=> b!3910629 m!4473717))

(declare-fun m!4473719 () Bool)

(assert (=> b!3910629 m!4473719))

(declare-fun m!4473721 () Bool)

(assert (=> b!3910629 m!4473721))

(declare-fun m!4473723 () Bool)

(assert (=> b!3910618 m!4473723))

(declare-fun m!4473725 () Bool)

(assert (=> b!3910614 m!4473725))

(declare-fun m!4473727 () Bool)

(assert (=> b!3910617 m!4473727))

(declare-fun m!4473729 () Bool)

(assert (=> b!3910625 m!4473729))

(declare-fun m!4473731 () Bool)

(assert (=> b!3910620 m!4473731))

(declare-fun m!4473733 () Bool)

(assert (=> b!3910610 m!4473733))

(declare-fun m!4473735 () Bool)

(assert (=> b!3910633 m!4473735))

(declare-fun m!4473737 () Bool)

(assert (=> b!3910632 m!4473737))

(declare-fun m!4473739 () Bool)

(assert (=> b!3910632 m!4473739))

(declare-fun m!4473741 () Bool)

(assert (=> b!3910632 m!4473741))

(declare-fun m!4473743 () Bool)

(assert (=> b!3910630 m!4473743))

(declare-fun m!4473745 () Bool)

(assert (=> b!3910630 m!4473745))

(declare-fun m!4473747 () Bool)

(assert (=> b!3910631 m!4473747))

(declare-fun m!4473749 () Bool)

(assert (=> b!3910631 m!4473749))

(declare-fun m!4473751 () Bool)

(assert (=> b!3910606 m!4473751))

(check-sat b_and!297399 (not b!3910606) (not b!3910623) (not b_next!106769) (not b!3910620) (not b!3910634) (not b!3910614) b_and!297401 (not b!3910609) (not b!3910627) (not b!3910617) b_and!297397 (not b!3910615) (not b_next!106765) (not b!3910612) (not b!3910613) (not b!3910631) (not b_next!106775) (not b!3910630) (not b!3910621) (not b!3910626) (not b_next!106767) (not b!3910633) (not b!3910632) (not b!3910628) (not b!3910625) (not b_next!106773) (not b!3910610) (not b!3910616) (not b_next!106771) b_and!297403 (not b!3910619) (not b!3910629) (not b!3910618) tp_is_empty!19685 b_and!297395 b_and!297405 (not b!3910622))
(check-sat b_and!297399 (not b_next!106769) (not b_next!106775) (not b_next!106767) b_and!297401 (not b_next!106773) b_and!297397 (not b_next!106765) (not b_next!106771) b_and!297403 b_and!297395 b_and!297405)
(get-model)

(declare-fun d!1160013 () Bool)

(declare-fun c!679734 () Bool)

(assert (=> d!1160013 (= c!679734 ((_ is IntegerValue!20046) (value!204516 (h!46872 prefixTokens!80))))))

(declare-fun e!2417811 () Bool)

(assert (=> d!1160013 (= (inv!21 (value!204516 (h!46872 prefixTokens!80))) e!2417811)))

(declare-fun b!3910645 () Bool)

(declare-fun e!2417809 () Bool)

(declare-fun inv!15 (TokenValue!6682) Bool)

(assert (=> b!3910645 (= e!2417809 (inv!15 (value!204516 (h!46872 prefixTokens!80))))))

(declare-fun b!3910646 () Bool)

(declare-fun e!2417810 () Bool)

(assert (=> b!3910646 (= e!2417811 e!2417810)))

(declare-fun c!679735 () Bool)

(assert (=> b!3910646 (= c!679735 ((_ is IntegerValue!20047) (value!204516 (h!46872 prefixTokens!80))))))

(declare-fun b!3910647 () Bool)

(declare-fun inv!16 (TokenValue!6682) Bool)

(assert (=> b!3910647 (= e!2417811 (inv!16 (value!204516 (h!46872 prefixTokens!80))))))

(declare-fun b!3910648 () Bool)

(declare-fun res!1581734 () Bool)

(assert (=> b!3910648 (=> res!1581734 e!2417809)))

(assert (=> b!3910648 (= res!1581734 (not ((_ is IntegerValue!20048) (value!204516 (h!46872 prefixTokens!80)))))))

(assert (=> b!3910648 (= e!2417810 e!2417809)))

(declare-fun b!3910649 () Bool)

(declare-fun inv!17 (TokenValue!6682) Bool)

(assert (=> b!3910649 (= e!2417810 (inv!17 (value!204516 (h!46872 prefixTokens!80))))))

(assert (= (and d!1160013 c!679734) b!3910647))

(assert (= (and d!1160013 (not c!679734)) b!3910646))

(assert (= (and b!3910646 c!679735) b!3910649))

(assert (= (and b!3910646 (not c!679735)) b!3910648))

(assert (= (and b!3910648 (not res!1581734)) b!3910645))

(declare-fun m!4473753 () Bool)

(assert (=> b!3910645 m!4473753))

(declare-fun m!4473755 () Bool)

(assert (=> b!3910647 m!4473755))

(declare-fun m!4473757 () Bool)

(assert (=> b!3910649 m!4473757))

(assert (=> b!3910628 d!1160013))

(declare-fun d!1160015 () Bool)

(declare-fun c!679736 () Bool)

(assert (=> d!1160015 (= c!679736 ((_ is IntegerValue!20046) (value!204516 (h!46872 suffixTokens!72))))))

(declare-fun e!2417814 () Bool)

(assert (=> d!1160015 (= (inv!21 (value!204516 (h!46872 suffixTokens!72))) e!2417814)))

(declare-fun b!3910650 () Bool)

(declare-fun e!2417812 () Bool)

(assert (=> b!3910650 (= e!2417812 (inv!15 (value!204516 (h!46872 suffixTokens!72))))))

(declare-fun b!3910651 () Bool)

(declare-fun e!2417813 () Bool)

(assert (=> b!3910651 (= e!2417814 e!2417813)))

(declare-fun c!679737 () Bool)

(assert (=> b!3910651 (= c!679737 ((_ is IntegerValue!20047) (value!204516 (h!46872 suffixTokens!72))))))

(declare-fun b!3910652 () Bool)

(assert (=> b!3910652 (= e!2417814 (inv!16 (value!204516 (h!46872 suffixTokens!72))))))

(declare-fun b!3910653 () Bool)

(declare-fun res!1581735 () Bool)

(assert (=> b!3910653 (=> res!1581735 e!2417812)))

(assert (=> b!3910653 (= res!1581735 (not ((_ is IntegerValue!20048) (value!204516 (h!46872 suffixTokens!72)))))))

(assert (=> b!3910653 (= e!2417813 e!2417812)))

(declare-fun b!3910654 () Bool)

(assert (=> b!3910654 (= e!2417813 (inv!17 (value!204516 (h!46872 suffixTokens!72))))))

(assert (= (and d!1160015 c!679736) b!3910652))

(assert (= (and d!1160015 (not c!679736)) b!3910651))

(assert (= (and b!3910651 c!679737) b!3910654))

(assert (= (and b!3910651 (not c!679737)) b!3910653))

(assert (= (and b!3910653 (not res!1581735)) b!3910650))

(declare-fun m!4473759 () Bool)

(assert (=> b!3910650 m!4473759))

(declare-fun m!4473761 () Bool)

(assert (=> b!3910652 m!4473761))

(declare-fun m!4473763 () Bool)

(assert (=> b!3910654 m!4473763))

(assert (=> b!3910617 d!1160015))

(declare-fun d!1160017 () Bool)

(declare-fun res!1581740 () Bool)

(declare-fun e!2417817 () Bool)

(assert (=> d!1160017 (=> (not res!1581740) (not e!2417817))))

(assert (=> d!1160017 (= res!1581740 (not (isEmpty!24656 (originalCharacters!7052 (h!46872 prefixTokens!80)))))))

(assert (=> d!1160017 (= (inv!55630 (h!46872 prefixTokens!80)) e!2417817)))

(declare-fun b!3910659 () Bool)

(declare-fun res!1581741 () Bool)

(assert (=> b!3910659 (=> (not res!1581741) (not e!2417817))))

(declare-fun dynLambda!17799 (Int TokenValue!6682) BalanceConc!24920)

(assert (=> b!3910659 (= res!1581741 (= (originalCharacters!7052 (h!46872 prefixTokens!80)) (list!15407 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80)))) (value!204516 (h!46872 prefixTokens!80))))))))

(declare-fun b!3910660 () Bool)

(assert (=> b!3910660 (= e!2417817 (= (size!31117 (h!46872 prefixTokens!80)) (size!31118 (originalCharacters!7052 (h!46872 prefixTokens!80)))))))

(assert (= (and d!1160017 res!1581740) b!3910659))

(assert (= (and b!3910659 res!1581741) b!3910660))

(declare-fun b_lambda!114475 () Bool)

(assert (=> (not b_lambda!114475) (not b!3910659)))

(declare-fun t!322861 () Bool)

(declare-fun tb!232565 () Bool)

(assert (=> (and b!3910611 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80)))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80))))) t!322861) tb!232565))

(declare-fun b!3910665 () Bool)

(declare-fun e!2417820 () Bool)

(declare-fun tp!1190435 () Bool)

(declare-fun inv!55632 (Conc!12663) Bool)

(assert (=> b!3910665 (= e!2417820 (and (inv!55632 (c!679729 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80)))) (value!204516 (h!46872 prefixTokens!80))))) tp!1190435))))

(declare-fun result!281918 () Bool)

(declare-fun inv!55633 (BalanceConc!24920) Bool)

(assert (=> tb!232565 (= result!281918 (and (inv!55633 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80)))) (value!204516 (h!46872 prefixTokens!80)))) e!2417820))))

(assert (= tb!232565 b!3910665))

(declare-fun m!4473765 () Bool)

(assert (=> b!3910665 m!4473765))

(declare-fun m!4473767 () Bool)

(assert (=> tb!232565 m!4473767))

(assert (=> b!3910659 t!322861))

(declare-fun b_and!297407 () Bool)

(assert (= b_and!297397 (and (=> t!322861 result!281918) b_and!297407)))

(declare-fun tb!232567 () Bool)

(declare-fun t!322863 () Bool)

(assert (=> (and b!3910608 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72)))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80))))) t!322863) tb!232567))

(declare-fun result!281922 () Bool)

(assert (= result!281922 result!281918))

(assert (=> b!3910659 t!322863))

(declare-fun b_and!297409 () Bool)

(assert (= b_and!297401 (and (=> t!322863 result!281922) b_and!297409)))

(declare-fun tb!232569 () Bool)

(declare-fun t!322865 () Bool)

(assert (=> (and b!3910607 (= (toChars!8755 (transformation!6452 (h!46871 rules!2768))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80))))) t!322865) tb!232569))

(declare-fun result!281924 () Bool)

(assert (= result!281924 result!281918))

(assert (=> b!3910659 t!322865))

(declare-fun b_and!297411 () Bool)

(assert (= b_and!297405 (and (=> t!322865 result!281924) b_and!297411)))

(declare-fun m!4473769 () Bool)

(assert (=> d!1160017 m!4473769))

(declare-fun m!4473771 () Bool)

(assert (=> b!3910659 m!4473771))

(assert (=> b!3910659 m!4473771))

(declare-fun m!4473773 () Bool)

(assert (=> b!3910659 m!4473773))

(declare-fun m!4473775 () Bool)

(assert (=> b!3910660 m!4473775))

(assert (=> b!3910618 d!1160017))

(declare-fun b!3910709 () Bool)

(declare-fun res!1581764 () Bool)

(declare-fun e!2417850 () Bool)

(assert (=> b!3910709 (=> res!1581764 e!2417850)))

(assert (=> b!3910709 (= res!1581764 (not ((_ is ElementMatch!11357) (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))))))

(declare-fun e!2417849 () Bool)

(assert (=> b!3910709 (= e!2417849 e!2417850)))

(declare-fun b!3910710 () Bool)

(declare-fun res!1581765 () Bool)

(declare-fun e!2417846 () Bool)

(assert (=> b!3910710 (=> res!1581765 e!2417846)))

(declare-fun tail!5976 (List!41574) List!41574)

(assert (=> b!3910710 (= res!1581765 (not (isEmpty!24656 (tail!5976 lt!1362321))))))

(declare-fun b!3910711 () Bool)

(declare-fun e!2417847 () Bool)

(assert (=> b!3910711 (= e!2417847 e!2417849)))

(declare-fun c!679752 () Bool)

(assert (=> b!3910711 (= c!679752 ((_ is EmptyLang!11357) (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))))))

(declare-fun bm!284270 () Bool)

(declare-fun call!284275 () Bool)

(assert (=> bm!284270 (= call!284275 (isEmpty!24656 lt!1362321))))

(declare-fun b!3910712 () Bool)

(declare-fun res!1581768 () Bool)

(declare-fun e!2417845 () Bool)

(assert (=> b!3910712 (=> (not res!1581768) (not e!2417845))))

(assert (=> b!3910712 (= res!1581768 (not call!284275))))

(declare-fun b!3910713 () Bool)

(declare-fun head!8258 (List!41574) C!22900)

(assert (=> b!3910713 (= e!2417845 (= (head!8258 lt!1362321) (c!679728 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))))))

(declare-fun b!3910714 () Bool)

(declare-fun res!1581770 () Bool)

(assert (=> b!3910714 (=> (not res!1581770) (not e!2417845))))

(assert (=> b!3910714 (= res!1581770 (isEmpty!24656 (tail!5976 lt!1362321)))))

(declare-fun b!3910715 () Bool)

(declare-fun e!2417848 () Bool)

(declare-fun derivativeStep!3433 (Regex!11357 C!22900) Regex!11357)

(assert (=> b!3910715 (= e!2417848 (matchR!5446 (derivativeStep!3433 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) (head!8258 lt!1362321)) (tail!5976 lt!1362321)))))

(declare-fun b!3910716 () Bool)

(declare-fun e!2417844 () Bool)

(assert (=> b!3910716 (= e!2417844 e!2417846)))

(declare-fun res!1581766 () Bool)

(assert (=> b!3910716 (=> res!1581766 e!2417846)))

(assert (=> b!3910716 (= res!1581766 call!284275)))

(declare-fun d!1160019 () Bool)

(assert (=> d!1160019 e!2417847))

(declare-fun c!679750 () Bool)

(assert (=> d!1160019 (= c!679750 ((_ is EmptyExpr!11357) (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))))))

(declare-fun lt!1362338 () Bool)

(assert (=> d!1160019 (= lt!1362338 e!2417848)))

(declare-fun c!679751 () Bool)

(assert (=> d!1160019 (= c!679751 (isEmpty!24656 lt!1362321))))

(declare-fun validRegex!5167 (Regex!11357) Bool)

(assert (=> d!1160019 (validRegex!5167 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))))

(assert (=> d!1160019 (= (matchR!5446 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) lt!1362321) lt!1362338)))

(declare-fun b!3910717 () Bool)

(assert (=> b!3910717 (= e!2417850 e!2417844)))

(declare-fun res!1581771 () Bool)

(assert (=> b!3910717 (=> (not res!1581771) (not e!2417844))))

(assert (=> b!3910717 (= res!1581771 (not lt!1362338))))

(declare-fun b!3910718 () Bool)

(declare-fun nullable!3968 (Regex!11357) Bool)

(assert (=> b!3910718 (= e!2417848 (nullable!3968 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))))))

(declare-fun b!3910719 () Bool)

(assert (=> b!3910719 (= e!2417846 (not (= (head!8258 lt!1362321) (c!679728 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))))))))

(declare-fun b!3910720 () Bool)

(declare-fun res!1581767 () Bool)

(assert (=> b!3910720 (=> res!1581767 e!2417850)))

(assert (=> b!3910720 (= res!1581767 e!2417845)))

(declare-fun res!1581769 () Bool)

(assert (=> b!3910720 (=> (not res!1581769) (not e!2417845))))

(assert (=> b!3910720 (= res!1581769 lt!1362338)))

(declare-fun b!3910721 () Bool)

(assert (=> b!3910721 (= e!2417847 (= lt!1362338 call!284275))))

(declare-fun b!3910722 () Bool)

(assert (=> b!3910722 (= e!2417849 (not lt!1362338))))

(assert (= (and d!1160019 c!679751) b!3910718))

(assert (= (and d!1160019 (not c!679751)) b!3910715))

(assert (= (and d!1160019 c!679750) b!3910721))

(assert (= (and d!1160019 (not c!679750)) b!3910711))

(assert (= (and b!3910711 c!679752) b!3910722))

(assert (= (and b!3910711 (not c!679752)) b!3910709))

(assert (= (and b!3910709 (not res!1581764)) b!3910720))

(assert (= (and b!3910720 res!1581769) b!3910712))

(assert (= (and b!3910712 res!1581768) b!3910714))

(assert (= (and b!3910714 res!1581770) b!3910713))

(assert (= (and b!3910720 (not res!1581767)) b!3910717))

(assert (= (and b!3910717 res!1581771) b!3910716))

(assert (= (and b!3910716 (not res!1581766)) b!3910710))

(assert (= (and b!3910710 (not res!1581765)) b!3910719))

(assert (= (or b!3910721 b!3910712 b!3910716) bm!284270))

(declare-fun m!4473783 () Bool)

(assert (=> b!3910713 m!4473783))

(assert (=> b!3910715 m!4473783))

(assert (=> b!3910715 m!4473783))

(declare-fun m!4473785 () Bool)

(assert (=> b!3910715 m!4473785))

(declare-fun m!4473787 () Bool)

(assert (=> b!3910715 m!4473787))

(assert (=> b!3910715 m!4473785))

(assert (=> b!3910715 m!4473787))

(declare-fun m!4473789 () Bool)

(assert (=> b!3910715 m!4473789))

(declare-fun m!4473791 () Bool)

(assert (=> d!1160019 m!4473791))

(declare-fun m!4473793 () Bool)

(assert (=> d!1160019 m!4473793))

(assert (=> b!3910714 m!4473787))

(assert (=> b!3910714 m!4473787))

(declare-fun m!4473795 () Bool)

(assert (=> b!3910714 m!4473795))

(declare-fun m!4473797 () Bool)

(assert (=> b!3910718 m!4473797))

(assert (=> b!3910710 m!4473787))

(assert (=> b!3910710 m!4473787))

(assert (=> b!3910710 m!4473795))

(assert (=> b!3910719 m!4473783))

(assert (=> bm!284270 m!4473791))

(assert (=> b!3910629 d!1160019))

(declare-fun b!3910830 () Bool)

(declare-fun e!2417913 () Option!8872)

(assert (=> b!3910830 (= e!2417913 None!8871)))

(declare-fun d!1160025 () Bool)

(declare-fun e!2417912 () Bool)

(assert (=> d!1160025 e!2417912))

(declare-fun res!1581821 () Bool)

(assert (=> d!1160025 (=> res!1581821 e!2417912)))

(declare-fun lt!1362378 () Option!8872)

(declare-fun isEmpty!24659 (Option!8872) Bool)

(assert (=> d!1160025 (= res!1581821 (isEmpty!24659 lt!1362378))))

(assert (=> d!1160025 (= lt!1362378 e!2417913)))

(declare-fun c!679779 () Bool)

(declare-datatypes ((tuple2!40698 0))(
  ( (tuple2!40699 (_1!23483 List!41574) (_2!23483 List!41574)) )
))
(declare-fun lt!1362376 () tuple2!40698)

(assert (=> d!1160025 (= c!679779 (isEmpty!24656 (_1!23483 lt!1362376)))))

(declare-fun findLongestMatch!1142 (Regex!11357 List!41574) tuple2!40698)

(assert (=> d!1160025 (= lt!1362376 (findLongestMatch!1142 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) lt!1362329))))

(assert (=> d!1160025 (ruleValid!2400 thiss!20629 (rule!9366 (_1!23481 (v!39193 lt!1362333))))))

(assert (=> d!1160025 (= (maxPrefixOneRule!2415 thiss!20629 (rule!9366 (_1!23481 (v!39193 lt!1362333))) lt!1362329) lt!1362378)))

(declare-fun b!3910831 () Bool)

(declare-fun e!2417914 () Bool)

(declare-fun get!13697 (Option!8872) tuple2!40694)

(assert (=> b!3910831 (= e!2417914 (= (size!31117 (_1!23481 (get!13697 lt!1362378))) (size!31118 (originalCharacters!7052 (_1!23481 (get!13697 lt!1362378))))))))

(declare-fun b!3910832 () Bool)

(assert (=> b!3910832 (= e!2417912 e!2417914)))

(declare-fun res!1581824 () Bool)

(assert (=> b!3910832 (=> (not res!1581824) (not e!2417914))))

(assert (=> b!3910832 (= res!1581824 (matchR!5446 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) (list!15407 (charsOf!4276 (_1!23481 (get!13697 lt!1362378))))))))

(declare-fun b!3910833 () Bool)

(declare-fun e!2417911 () Bool)

(declare-fun findLongestMatchInner!1229 (Regex!11357 List!41574 Int List!41574 List!41574 Int) tuple2!40698)

(assert (=> b!3910833 (= e!2417911 (matchR!5446 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) (_1!23483 (findLongestMatchInner!1229 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) Nil!41450 (size!31118 Nil!41450) lt!1362329 lt!1362329 (size!31118 lt!1362329)))))))

(declare-fun b!3910834 () Bool)

(declare-fun res!1581827 () Bool)

(assert (=> b!3910834 (=> (not res!1581827) (not e!2417914))))

(assert (=> b!3910834 (= res!1581827 (= (rule!9366 (_1!23481 (get!13697 lt!1362378))) (rule!9366 (_1!23481 (v!39193 lt!1362333)))))))

(declare-fun b!3910835 () Bool)

(declare-fun res!1581825 () Bool)

(assert (=> b!3910835 (=> (not res!1581825) (not e!2417914))))

(assert (=> b!3910835 (= res!1581825 (= (++!10662 (list!15407 (charsOf!4276 (_1!23481 (get!13697 lt!1362378)))) (_2!23481 (get!13697 lt!1362378))) lt!1362329))))

(declare-fun b!3910836 () Bool)

(declare-fun res!1581823 () Bool)

(assert (=> b!3910836 (=> (not res!1581823) (not e!2417914))))

(assert (=> b!3910836 (= res!1581823 (= (value!204516 (_1!23481 (get!13697 lt!1362378))) (apply!9691 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362378)))) (seqFromList!4719 (originalCharacters!7052 (_1!23481 (get!13697 lt!1362378)))))))))

(declare-fun b!3910837 () Bool)

(declare-fun res!1581822 () Bool)

(assert (=> b!3910837 (=> (not res!1581822) (not e!2417914))))

(assert (=> b!3910837 (= res!1581822 (< (size!31118 (_2!23481 (get!13697 lt!1362378))) (size!31118 lt!1362329)))))

(declare-fun b!3910838 () Bool)

(declare-fun size!31120 (BalanceConc!24920) Int)

(assert (=> b!3910838 (= e!2417913 (Some!8871 (tuple2!40695 (Token!12043 (apply!9691 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) (seqFromList!4719 (_1!23483 lt!1362376))) (rule!9366 (_1!23481 (v!39193 lt!1362333))) (size!31120 (seqFromList!4719 (_1!23483 lt!1362376))) (_1!23483 lt!1362376)) (_2!23483 lt!1362376))))))

(declare-fun lt!1362375 () Unit!59591)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1202 (Regex!11357 List!41574) Unit!59591)

(assert (=> b!3910838 (= lt!1362375 (longestMatchIsAcceptedByMatchOrIsEmpty!1202 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) lt!1362329))))

(declare-fun res!1581826 () Bool)

(assert (=> b!3910838 (= res!1581826 (isEmpty!24656 (_1!23483 (findLongestMatchInner!1229 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) Nil!41450 (size!31118 Nil!41450) lt!1362329 lt!1362329 (size!31118 lt!1362329)))))))

(assert (=> b!3910838 (=> res!1581826 e!2417911)))

(assert (=> b!3910838 e!2417911))

(declare-fun lt!1362379 () Unit!59591)

(assert (=> b!3910838 (= lt!1362379 lt!1362375)))

(declare-fun lt!1362377 () Unit!59591)

(declare-fun lemmaSemiInverse!1735 (TokenValueInjection!12792 BalanceConc!24920) Unit!59591)

(assert (=> b!3910838 (= lt!1362377 (lemmaSemiInverse!1735 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) (seqFromList!4719 (_1!23483 lt!1362376))))))

(assert (= (and d!1160025 c!679779) b!3910830))

(assert (= (and d!1160025 (not c!679779)) b!3910838))

(assert (= (and b!3910838 (not res!1581826)) b!3910833))

(assert (= (and d!1160025 (not res!1581821)) b!3910832))

(assert (= (and b!3910832 res!1581824) b!3910835))

(assert (= (and b!3910835 res!1581825) b!3910837))

(assert (= (and b!3910837 res!1581822) b!3910834))

(assert (= (and b!3910834 res!1581827) b!3910836))

(assert (= (and b!3910836 res!1581823) b!3910831))

(declare-fun m!4473911 () Bool)

(assert (=> b!3910831 m!4473911))

(declare-fun m!4473913 () Bool)

(assert (=> b!3910831 m!4473913))

(assert (=> b!3910832 m!4473911))

(declare-fun m!4473915 () Bool)

(assert (=> b!3910832 m!4473915))

(assert (=> b!3910832 m!4473915))

(declare-fun m!4473917 () Bool)

(assert (=> b!3910832 m!4473917))

(assert (=> b!3910832 m!4473917))

(declare-fun m!4473919 () Bool)

(assert (=> b!3910832 m!4473919))

(assert (=> b!3910837 m!4473911))

(declare-fun m!4473921 () Bool)

(assert (=> b!3910837 m!4473921))

(assert (=> b!3910837 m!4473711))

(assert (=> b!3910835 m!4473911))

(assert (=> b!3910835 m!4473915))

(assert (=> b!3910835 m!4473915))

(assert (=> b!3910835 m!4473917))

(assert (=> b!3910835 m!4473917))

(declare-fun m!4473923 () Bool)

(assert (=> b!3910835 m!4473923))

(assert (=> b!3910834 m!4473911))

(declare-fun m!4473925 () Bool)

(assert (=> b!3910838 m!4473925))

(declare-fun m!4473927 () Bool)

(assert (=> b!3910838 m!4473927))

(declare-fun m!4473929 () Bool)

(assert (=> b!3910838 m!4473929))

(assert (=> b!3910838 m!4473927))

(declare-fun m!4473931 () Bool)

(assert (=> b!3910838 m!4473931))

(declare-fun m!4473933 () Bool)

(assert (=> b!3910838 m!4473933))

(declare-fun m!4473935 () Bool)

(assert (=> b!3910838 m!4473935))

(assert (=> b!3910838 m!4473935))

(assert (=> b!3910838 m!4473711))

(declare-fun m!4473937 () Bool)

(assert (=> b!3910838 m!4473937))

(assert (=> b!3910838 m!4473927))

(declare-fun m!4473939 () Bool)

(assert (=> b!3910838 m!4473939))

(assert (=> b!3910838 m!4473711))

(assert (=> b!3910838 m!4473927))

(assert (=> b!3910833 m!4473935))

(assert (=> b!3910833 m!4473711))

(assert (=> b!3910833 m!4473935))

(assert (=> b!3910833 m!4473711))

(assert (=> b!3910833 m!4473937))

(declare-fun m!4473941 () Bool)

(assert (=> b!3910833 m!4473941))

(assert (=> b!3910836 m!4473911))

(declare-fun m!4473943 () Bool)

(assert (=> b!3910836 m!4473943))

(assert (=> b!3910836 m!4473943))

(declare-fun m!4473945 () Bool)

(assert (=> b!3910836 m!4473945))

(declare-fun m!4473947 () Bool)

(assert (=> d!1160025 m!4473947))

(declare-fun m!4473949 () Bool)

(assert (=> d!1160025 m!4473949))

(declare-fun m!4473951 () Bool)

(assert (=> d!1160025 m!4473951))

(assert (=> d!1160025 m!4473677))

(assert (=> b!3910629 d!1160025))

(declare-fun d!1160067 () Bool)

(assert (=> d!1160067 (= (maxPrefixOneRule!2415 thiss!20629 (rule!9366 (_1!23481 (v!39193 lt!1362333))) lt!1362329) (Some!8871 (tuple2!40695 (Token!12043 (apply!9691 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) (seqFromList!4719 lt!1362321)) (rule!9366 (_1!23481 (v!39193 lt!1362333))) (size!31118 lt!1362321) lt!1362321) (_2!23481 (v!39193 lt!1362333)))))))

(declare-fun lt!1362392 () Unit!59591)

(declare-fun choose!23149 (LexerInterface!6041 List!41575 List!41574 List!41574 List!41574 Rule!12704) Unit!59591)

(assert (=> d!1160067 (= lt!1362392 (choose!23149 thiss!20629 rules!2768 lt!1362321 lt!1362329 (_2!23481 (v!39193 lt!1362333)) (rule!9366 (_1!23481 (v!39193 lt!1362333)))))))

(assert (=> d!1160067 (not (isEmpty!24658 rules!2768))))

(assert (=> d!1160067 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1283 thiss!20629 rules!2768 lt!1362321 lt!1362329 (_2!23481 (v!39193 lt!1362333)) (rule!9366 (_1!23481 (v!39193 lt!1362333)))) lt!1362392)))

(declare-fun bs!585535 () Bool)

(assert (= bs!585535 d!1160067))

(assert (=> bs!585535 m!4473729))

(declare-fun m!4473953 () Bool)

(assert (=> bs!585535 m!4473953))

(assert (=> bs!585535 m!4473719))

(assert (=> bs!585535 m!4473671))

(assert (=> bs!585535 m!4473683))

(assert (=> bs!585535 m!4473683))

(assert (=> bs!585535 m!4473685))

(assert (=> b!3910629 d!1160067))

(declare-fun d!1160069 () Bool)

(declare-fun lt!1362395 () Int)

(assert (=> d!1160069 (>= lt!1362395 0)))

(declare-fun e!2417923 () Int)

(assert (=> d!1160069 (= lt!1362395 e!2417923)))

(declare-fun c!679784 () Bool)

(assert (=> d!1160069 (= c!679784 ((_ is Nil!41450) suffix!1176))))

(assert (=> d!1160069 (= (size!31118 suffix!1176) lt!1362395)))

(declare-fun b!3910861 () Bool)

(assert (=> b!3910861 (= e!2417923 0)))

(declare-fun b!3910862 () Bool)

(assert (=> b!3910862 (= e!2417923 (+ 1 (size!31118 (t!322857 suffix!1176))))))

(assert (= (and d!1160069 c!679784) b!3910861))

(assert (= (and d!1160069 (not c!679784)) b!3910862))

(declare-fun m!4473955 () Bool)

(assert (=> b!3910862 m!4473955))

(assert (=> b!3910630 d!1160069))

(declare-fun d!1160071 () Bool)

(declare-fun lt!1362396 () Int)

(assert (=> d!1160071 (>= lt!1362396 0)))

(declare-fun e!2417924 () Int)

(assert (=> d!1160071 (= lt!1362396 e!2417924)))

(declare-fun c!679785 () Bool)

(assert (=> d!1160071 (= c!679785 ((_ is Nil!41450) (_2!23481 (v!39193 lt!1362333))))))

(assert (=> d!1160071 (= (size!31118 (_2!23481 (v!39193 lt!1362333))) lt!1362396)))

(declare-fun b!3910863 () Bool)

(assert (=> b!3910863 (= e!2417924 0)))

(declare-fun b!3910864 () Bool)

(assert (=> b!3910864 (= e!2417924 (+ 1 (size!31118 (t!322857 (_2!23481 (v!39193 lt!1362333))))))))

(assert (= (and d!1160071 c!679785) b!3910863))

(assert (= (and d!1160071 (not c!679785)) b!3910864))

(declare-fun m!4473957 () Bool)

(assert (=> b!3910864 m!4473957))

(assert (=> b!3910630 d!1160071))

(declare-fun d!1160073 () Bool)

(assert (=> d!1160073 (= (isEmpty!24656 prefix!426) ((_ is Nil!41450) prefix!426))))

(assert (=> b!3910619 d!1160073))

(declare-fun d!1160075 () Bool)

(assert (=> d!1160075 (= (isEmpty!24658 rules!2768) ((_ is Nil!41451) rules!2768))))

(assert (=> b!3910625 d!1160075))

(declare-fun d!1160077 () Bool)

(assert (=> d!1160077 (= (inv!55627 (tag!7312 (rule!9366 (h!46872 prefixTokens!80)))) (= (mod (str.len (value!204515 (tag!7312 (rule!9366 (h!46872 prefixTokens!80))))) 2) 0))))

(assert (=> b!3910626 d!1160077))

(declare-fun d!1160079 () Bool)

(declare-fun res!1581851 () Bool)

(declare-fun e!2417930 () Bool)

(assert (=> d!1160079 (=> (not res!1581851) (not e!2417930))))

(declare-fun semiInverseModEq!2768 (Int Int) Bool)

(assert (=> d!1160079 (= res!1581851 (semiInverseModEq!2768 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80)))) (toValue!8896 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80))))))))

(assert (=> d!1160079 (= (inv!55631 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80)))) e!2417930)))

(declare-fun b!3910876 () Bool)

(declare-fun equivClasses!2667 (Int Int) Bool)

(assert (=> b!3910876 (= e!2417930 (equivClasses!2667 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80)))) (toValue!8896 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80))))))))

(assert (= (and d!1160079 res!1581851) b!3910876))

(declare-fun m!4473959 () Bool)

(assert (=> d!1160079 m!4473959))

(declare-fun m!4473961 () Bool)

(assert (=> b!3910876 m!4473961))

(assert (=> b!3910626 d!1160079))

(declare-fun d!1160081 () Bool)

(declare-fun dynLambda!17801 (Int BalanceConc!24920) TokenValue!6682)

(assert (=> d!1160081 (= (apply!9691 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) (seqFromList!4719 lt!1362321)) (dynLambda!17801 (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))) (seqFromList!4719 lt!1362321)))))

(declare-fun b_lambda!114481 () Bool)

(assert (=> (not b_lambda!114481) (not d!1160081)))

(declare-fun tb!232583 () Bool)

(declare-fun t!322879 () Bool)

(assert (=> (and b!3910611 (= (toValue!8896 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80)))) (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))) t!322879) tb!232583))

(declare-fun result!281940 () Bool)

(assert (=> tb!232583 (= result!281940 (inv!21 (dynLambda!17801 (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))) (seqFromList!4719 lt!1362321))))))

(declare-fun m!4473971 () Bool)

(assert (=> tb!232583 m!4473971))

(assert (=> d!1160081 t!322879))

(declare-fun b_and!297425 () Bool)

(assert (= b_and!297395 (and (=> t!322879 result!281940) b_and!297425)))

(declare-fun tb!232585 () Bool)

(declare-fun t!322881 () Bool)

(assert (=> (and b!3910608 (= (toValue!8896 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72)))) (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))) t!322881) tb!232585))

(declare-fun result!281944 () Bool)

(assert (= result!281944 result!281940))

(assert (=> d!1160081 t!322881))

(declare-fun b_and!297427 () Bool)

(assert (= b_and!297399 (and (=> t!322881 result!281944) b_and!297427)))

(declare-fun t!322883 () Bool)

(declare-fun tb!232587 () Bool)

(assert (=> (and b!3910607 (= (toValue!8896 (transformation!6452 (h!46871 rules!2768))) (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))) t!322883) tb!232587))

(declare-fun result!281946 () Bool)

(assert (= result!281946 result!281940))

(assert (=> d!1160081 t!322883))

(declare-fun b_and!297429 () Bool)

(assert (= b_and!297403 (and (=> t!322883 result!281946) b_and!297429)))

(assert (=> d!1160081 m!4473683))

(declare-fun m!4473987 () Bool)

(assert (=> d!1160081 m!4473987))

(assert (=> b!3910615 d!1160081))

(declare-fun d!1160083 () Bool)

(assert (=> d!1160083 (= (_2!23481 (v!39193 lt!1362333)) lt!1362328)))

(declare-fun lt!1362404 () Unit!59591)

(declare-fun choose!23150 (List!41574 List!41574 List!41574 List!41574 List!41574) Unit!59591)

(assert (=> d!1160083 (= lt!1362404 (choose!23150 lt!1362321 (_2!23481 (v!39193 lt!1362333)) lt!1362321 lt!1362328 lt!1362329))))

(assert (=> d!1160083 (isPrefix!3547 lt!1362321 lt!1362329)))

(assert (=> d!1160083 (= (lemmaSamePrefixThenSameSuffix!1768 lt!1362321 (_2!23481 (v!39193 lt!1362333)) lt!1362321 lt!1362328 lt!1362329) lt!1362404)))

(declare-fun bs!585536 () Bool)

(assert (= bs!585536 d!1160083))

(declare-fun m!4473999 () Bool)

(assert (=> bs!585536 m!4473999))

(declare-fun m!4474001 () Bool)

(assert (=> bs!585536 m!4474001))

(assert (=> b!3910615 d!1160083))

(declare-fun d!1160087 () Bool)

(assert (=> d!1160087 (ruleValid!2400 thiss!20629 (rule!9366 (_1!23481 (v!39193 lt!1362333))))))

(declare-fun lt!1362410 () Unit!59591)

(declare-fun choose!23151 (LexerInterface!6041 Rule!12704 List!41575) Unit!59591)

(assert (=> d!1160087 (= lt!1362410 (choose!23151 thiss!20629 (rule!9366 (_1!23481 (v!39193 lt!1362333))) rules!2768))))

(declare-fun contains!8328 (List!41575 Rule!12704) Bool)

(assert (=> d!1160087 (contains!8328 rules!2768 (rule!9366 (_1!23481 (v!39193 lt!1362333))))))

(assert (=> d!1160087 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1480 thiss!20629 (rule!9366 (_1!23481 (v!39193 lt!1362333))) rules!2768) lt!1362410)))

(declare-fun bs!585537 () Bool)

(assert (= bs!585537 d!1160087))

(assert (=> bs!585537 m!4473677))

(declare-fun m!4474009 () Bool)

(assert (=> bs!585537 m!4474009))

(declare-fun m!4474011 () Bool)

(assert (=> bs!585537 m!4474011))

(assert (=> b!3910615 d!1160087))

(declare-fun d!1160091 () Bool)

(declare-fun list!15408 (Conc!12663) List!41574)

(assert (=> d!1160091 (= (list!15407 (charsOf!4276 (_1!23481 (v!39193 lt!1362333)))) (list!15408 (c!679729 (charsOf!4276 (_1!23481 (v!39193 lt!1362333))))))))

(declare-fun bs!585538 () Bool)

(assert (= bs!585538 d!1160091))

(declare-fun m!4474013 () Bool)

(assert (=> bs!585538 m!4474013))

(assert (=> b!3910615 d!1160091))

(declare-fun d!1160093 () Bool)

(declare-fun res!1581864 () Bool)

(declare-fun e!2417945 () Bool)

(assert (=> d!1160093 (=> (not res!1581864) (not e!2417945))))

(assert (=> d!1160093 (= res!1581864 (validRegex!5167 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))))))

(assert (=> d!1160093 (= (ruleValid!2400 thiss!20629 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) e!2417945)))

(declare-fun b!3910897 () Bool)

(declare-fun res!1581865 () Bool)

(assert (=> b!3910897 (=> (not res!1581865) (not e!2417945))))

(assert (=> b!3910897 (= res!1581865 (not (nullable!3968 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))))))

(declare-fun b!3910898 () Bool)

(assert (=> b!3910898 (= e!2417945 (not (= (tag!7312 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) (String!47129 ""))))))

(assert (= (and d!1160093 res!1581864) b!3910897))

(assert (= (and b!3910897 res!1581865) b!3910898))

(assert (=> d!1160093 m!4473793))

(assert (=> b!3910897 m!4473797))

(assert (=> b!3910615 d!1160093))

(declare-fun d!1160095 () Bool)

(declare-fun lt!1362416 () BalanceConc!24920)

(assert (=> d!1160095 (= (list!15407 lt!1362416) (originalCharacters!7052 (_1!23481 (v!39193 lt!1362333))))))

(assert (=> d!1160095 (= lt!1362416 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))) (value!204516 (_1!23481 (v!39193 lt!1362333)))))))

(assert (=> d!1160095 (= (charsOf!4276 (_1!23481 (v!39193 lt!1362333))) lt!1362416)))

(declare-fun b_lambda!114483 () Bool)

(assert (=> (not b_lambda!114483) (not d!1160095)))

(declare-fun tb!232589 () Bool)

(declare-fun t!322885 () Bool)

(assert (=> (and b!3910611 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80)))) (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))) t!322885) tb!232589))

(declare-fun b!3910903 () Bool)

(declare-fun e!2417949 () Bool)

(declare-fun tp!1190440 () Bool)

(assert (=> b!3910903 (= e!2417949 (and (inv!55632 (c!679729 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))) (value!204516 (_1!23481 (v!39193 lt!1362333)))))) tp!1190440))))

(declare-fun result!281948 () Bool)

(assert (=> tb!232589 (= result!281948 (and (inv!55633 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))) (value!204516 (_1!23481 (v!39193 lt!1362333))))) e!2417949))))

(assert (= tb!232589 b!3910903))

(declare-fun m!4474029 () Bool)

(assert (=> b!3910903 m!4474029))

(declare-fun m!4474031 () Bool)

(assert (=> tb!232589 m!4474031))

(assert (=> d!1160095 t!322885))

(declare-fun b_and!297431 () Bool)

(assert (= b_and!297407 (and (=> t!322885 result!281948) b_and!297431)))

(declare-fun tb!232591 () Bool)

(declare-fun t!322887 () Bool)

(assert (=> (and b!3910608 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72)))) (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))) t!322887) tb!232591))

(declare-fun result!281950 () Bool)

(assert (= result!281950 result!281948))

(assert (=> d!1160095 t!322887))

(declare-fun b_and!297433 () Bool)

(assert (= b_and!297409 (and (=> t!322887 result!281950) b_and!297433)))

(declare-fun tb!232593 () Bool)

(declare-fun t!322889 () Bool)

(assert (=> (and b!3910607 (= (toChars!8755 (transformation!6452 (h!46871 rules!2768))) (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))) t!322889) tb!232593))

(declare-fun result!281952 () Bool)

(assert (= result!281952 result!281948))

(assert (=> d!1160095 t!322889))

(declare-fun b_and!297435 () Bool)

(assert (= b_and!297411 (and (=> t!322889 result!281952) b_and!297435)))

(declare-fun m!4474033 () Bool)

(assert (=> d!1160095 m!4474033))

(declare-fun m!4474035 () Bool)

(assert (=> d!1160095 m!4474035))

(assert (=> b!3910615 d!1160095))

(declare-fun d!1160101 () Bool)

(assert (=> d!1160101 (= (size!31117 (_1!23481 (v!39193 lt!1362333))) (size!31118 (originalCharacters!7052 (_1!23481 (v!39193 lt!1362333)))))))

(declare-fun Unit!59593 () Unit!59591)

(assert (=> d!1160101 (= (lemmaCharactersSize!1109 (_1!23481 (v!39193 lt!1362333))) Unit!59593)))

(declare-fun bs!585540 () Bool)

(assert (= bs!585540 d!1160101))

(assert (=> bs!585540 m!4473705))

(assert (=> b!3910615 d!1160101))

(declare-fun d!1160103 () Bool)

(declare-fun lt!1362425 () List!41574)

(assert (=> d!1160103 (= (++!10662 lt!1362321 lt!1362425) lt!1362329)))

(declare-fun e!2417952 () List!41574)

(assert (=> d!1160103 (= lt!1362425 e!2417952)))

(declare-fun c!679792 () Bool)

(assert (=> d!1160103 (= c!679792 ((_ is Cons!41450) lt!1362321))))

(assert (=> d!1160103 (>= (size!31118 lt!1362329) (size!31118 lt!1362321))))

(assert (=> d!1160103 (= (getSuffix!2002 lt!1362329 lt!1362321) lt!1362425)))

(declare-fun b!3910908 () Bool)

(assert (=> b!3910908 (= e!2417952 (getSuffix!2002 (tail!5976 lt!1362329) (t!322857 lt!1362321)))))

(declare-fun b!3910909 () Bool)

(assert (=> b!3910909 (= e!2417952 lt!1362329)))

(assert (= (and d!1160103 c!679792) b!3910908))

(assert (= (and d!1160103 (not c!679792)) b!3910909))

(declare-fun m!4474045 () Bool)

(assert (=> d!1160103 m!4474045))

(assert (=> d!1160103 m!4473711))

(assert (=> d!1160103 m!4473671))

(declare-fun m!4474047 () Bool)

(assert (=> b!3910908 m!4474047))

(assert (=> b!3910908 m!4474047))

(declare-fun m!4474049 () Bool)

(assert (=> b!3910908 m!4474049))

(assert (=> b!3910615 d!1160103))

(declare-fun b!3910940 () Bool)

(declare-fun e!2417972 () tuple2!40696)

(assert (=> b!3910940 (= e!2417972 (tuple2!40697 Nil!41452 (_2!23481 (v!39193 lt!1362333))))))

(declare-fun d!1160109 () Bool)

(declare-fun e!2417973 () Bool)

(assert (=> d!1160109 e!2417973))

(declare-fun c!679802 () Bool)

(declare-fun lt!1362445 () tuple2!40696)

(declare-fun size!31121 (List!41576) Int)

(assert (=> d!1160109 (= c!679802 (> (size!31121 (_1!23482 lt!1362445)) 0))))

(assert (=> d!1160109 (= lt!1362445 e!2417972)))

(declare-fun c!679801 () Bool)

(declare-fun lt!1362443 () Option!8872)

(assert (=> d!1160109 (= c!679801 ((_ is Some!8871) lt!1362443))))

(assert (=> d!1160109 (= lt!1362443 (maxPrefix!3345 thiss!20629 rules!2768 (_2!23481 (v!39193 lt!1362333))))))

(assert (=> d!1160109 (= (lexList!1809 thiss!20629 rules!2768 (_2!23481 (v!39193 lt!1362333))) lt!1362445)))

(declare-fun b!3910941 () Bool)

(declare-fun e!2417974 () Bool)

(assert (=> b!3910941 (= e!2417973 e!2417974)))

(declare-fun res!1581881 () Bool)

(assert (=> b!3910941 (= res!1581881 (< (size!31118 (_2!23482 lt!1362445)) (size!31118 (_2!23481 (v!39193 lt!1362333)))))))

(assert (=> b!3910941 (=> (not res!1581881) (not e!2417974))))

(declare-fun b!3910942 () Bool)

(assert (=> b!3910942 (= e!2417973 (= (_2!23482 lt!1362445) (_2!23481 (v!39193 lt!1362333))))))

(declare-fun b!3910943 () Bool)

(assert (=> b!3910943 (= e!2417974 (not (isEmpty!24657 (_1!23482 lt!1362445))))))

(declare-fun b!3910944 () Bool)

(declare-fun lt!1362444 () tuple2!40696)

(assert (=> b!3910944 (= e!2417972 (tuple2!40697 (Cons!41452 (_1!23481 (v!39193 lt!1362443)) (_1!23482 lt!1362444)) (_2!23482 lt!1362444)))))

(assert (=> b!3910944 (= lt!1362444 (lexList!1809 thiss!20629 rules!2768 (_2!23481 (v!39193 lt!1362443))))))

(assert (= (and d!1160109 c!679801) b!3910944))

(assert (= (and d!1160109 (not c!679801)) b!3910940))

(assert (= (and d!1160109 c!679802) b!3910941))

(assert (= (and d!1160109 (not c!679802)) b!3910942))

(assert (= (and b!3910941 res!1581881) b!3910943))

(declare-fun m!4474095 () Bool)

(assert (=> d!1160109 m!4474095))

(declare-fun m!4474097 () Bool)

(assert (=> d!1160109 m!4474097))

(declare-fun m!4474099 () Bool)

(assert (=> b!3910941 m!4474099))

(assert (=> b!3910941 m!4473745))

(declare-fun m!4474101 () Bool)

(assert (=> b!3910943 m!4474101))

(declare-fun m!4474103 () Bool)

(assert (=> b!3910944 m!4474103))

(assert (=> b!3910615 d!1160109))

(declare-fun b!3910981 () Bool)

(declare-fun e!2417995 () Bool)

(declare-fun e!2417996 () Bool)

(assert (=> b!3910981 (= e!2417995 e!2417996)))

(declare-fun res!1581906 () Bool)

(assert (=> b!3910981 (=> (not res!1581906) (not e!2417996))))

(assert (=> b!3910981 (= res!1581906 (not ((_ is Nil!41450) lt!1362317)))))

(declare-fun b!3910983 () Bool)

(assert (=> b!3910983 (= e!2417996 (isPrefix!3547 (tail!5976 lt!1362321) (tail!5976 lt!1362317)))))

(declare-fun b!3910982 () Bool)

(declare-fun res!1581907 () Bool)

(assert (=> b!3910982 (=> (not res!1581907) (not e!2417996))))

(assert (=> b!3910982 (= res!1581907 (= (head!8258 lt!1362321) (head!8258 lt!1362317)))))

(declare-fun b!3910984 () Bool)

(declare-fun e!2417997 () Bool)

(assert (=> b!3910984 (= e!2417997 (>= (size!31118 lt!1362317) (size!31118 lt!1362321)))))

(declare-fun d!1160135 () Bool)

(assert (=> d!1160135 e!2417997))

(declare-fun res!1581908 () Bool)

(assert (=> d!1160135 (=> res!1581908 e!2417997)))

(declare-fun lt!1362450 () Bool)

(assert (=> d!1160135 (= res!1581908 (not lt!1362450))))

(assert (=> d!1160135 (= lt!1362450 e!2417995)))

(declare-fun res!1581909 () Bool)

(assert (=> d!1160135 (=> res!1581909 e!2417995)))

(assert (=> d!1160135 (= res!1581909 ((_ is Nil!41450) lt!1362321))))

(assert (=> d!1160135 (= (isPrefix!3547 lt!1362321 lt!1362317) lt!1362450)))

(assert (= (and d!1160135 (not res!1581909)) b!3910981))

(assert (= (and b!3910981 res!1581906) b!3910982))

(assert (= (and b!3910982 res!1581907) b!3910983))

(assert (= (and d!1160135 (not res!1581908)) b!3910984))

(assert (=> b!3910983 m!4473787))

(declare-fun m!4474105 () Bool)

(assert (=> b!3910983 m!4474105))

(assert (=> b!3910983 m!4473787))

(assert (=> b!3910983 m!4474105))

(declare-fun m!4474107 () Bool)

(assert (=> b!3910983 m!4474107))

(assert (=> b!3910982 m!4473783))

(declare-fun m!4474109 () Bool)

(assert (=> b!3910982 m!4474109))

(declare-fun m!4474111 () Bool)

(assert (=> b!3910984 m!4474111))

(assert (=> b!3910984 m!4473671))

(assert (=> b!3910615 d!1160135))

(declare-fun d!1160137 () Bool)

(declare-fun fromListB!2177 (List!41574) BalanceConc!24920)

(assert (=> d!1160137 (= (seqFromList!4719 lt!1362321) (fromListB!2177 lt!1362321))))

(declare-fun bs!585546 () Bool)

(assert (= bs!585546 d!1160137))

(declare-fun m!4474113 () Bool)

(assert (=> bs!585546 m!4474113))

(assert (=> b!3910615 d!1160137))

(declare-fun b!3911008 () Bool)

(declare-fun e!2418009 () List!41574)

(assert (=> b!3911008 (= e!2418009 (Cons!41450 (h!46870 lt!1362321) (++!10662 (t!322857 lt!1362321) (_2!23481 (v!39193 lt!1362333)))))))

(declare-fun b!3911007 () Bool)

(assert (=> b!3911007 (= e!2418009 (_2!23481 (v!39193 lt!1362333)))))

(declare-fun lt!1362454 () List!41574)

(declare-fun e!2418010 () Bool)

(declare-fun b!3911010 () Bool)

(assert (=> b!3911010 (= e!2418010 (or (not (= (_2!23481 (v!39193 lt!1362333)) Nil!41450)) (= lt!1362454 lt!1362321)))))

(declare-fun d!1160139 () Bool)

(assert (=> d!1160139 e!2418010))

(declare-fun res!1581922 () Bool)

(assert (=> d!1160139 (=> (not res!1581922) (not e!2418010))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6219 (List!41574) (InoxSet C!22900))

(assert (=> d!1160139 (= res!1581922 (= (content!6219 lt!1362454) ((_ map or) (content!6219 lt!1362321) (content!6219 (_2!23481 (v!39193 lt!1362333))))))))

(assert (=> d!1160139 (= lt!1362454 e!2418009)))

(declare-fun c!679814 () Bool)

(assert (=> d!1160139 (= c!679814 ((_ is Nil!41450) lt!1362321))))

(assert (=> d!1160139 (= (++!10662 lt!1362321 (_2!23481 (v!39193 lt!1362333))) lt!1362454)))

(declare-fun b!3911009 () Bool)

(declare-fun res!1581923 () Bool)

(assert (=> b!3911009 (=> (not res!1581923) (not e!2418010))))

(assert (=> b!3911009 (= res!1581923 (= (size!31118 lt!1362454) (+ (size!31118 lt!1362321) (size!31118 (_2!23481 (v!39193 lt!1362333))))))))

(assert (= (and d!1160139 c!679814) b!3911007))

(assert (= (and d!1160139 (not c!679814)) b!3911008))

(assert (= (and d!1160139 res!1581922) b!3911009))

(assert (= (and b!3911009 res!1581923) b!3911010))

(declare-fun m!4474123 () Bool)

(assert (=> b!3911008 m!4474123))

(declare-fun m!4474125 () Bool)

(assert (=> d!1160139 m!4474125))

(declare-fun m!4474127 () Bool)

(assert (=> d!1160139 m!4474127))

(declare-fun m!4474129 () Bool)

(assert (=> d!1160139 m!4474129))

(declare-fun m!4474131 () Bool)

(assert (=> b!3911009 m!4474131))

(assert (=> b!3911009 m!4473671))

(assert (=> b!3911009 m!4473745))

(assert (=> b!3910615 d!1160139))

(declare-fun d!1160143 () Bool)

(declare-fun lt!1362455 () Int)

(assert (=> d!1160143 (>= lt!1362455 0)))

(declare-fun e!2418011 () Int)

(assert (=> d!1160143 (= lt!1362455 e!2418011)))

(declare-fun c!679815 () Bool)

(assert (=> d!1160143 (= c!679815 ((_ is Nil!41450) lt!1362321))))

(assert (=> d!1160143 (= (size!31118 lt!1362321) lt!1362455)))

(declare-fun b!3911011 () Bool)

(assert (=> b!3911011 (= e!2418011 0)))

(declare-fun b!3911012 () Bool)

(assert (=> b!3911012 (= e!2418011 (+ 1 (size!31118 (t!322857 lt!1362321))))))

(assert (= (and d!1160143 c!679815) b!3911011))

(assert (= (and d!1160143 (not c!679815)) b!3911012))

(declare-fun m!4474133 () Bool)

(assert (=> b!3911012 m!4474133))

(assert (=> b!3910615 d!1160143))

(declare-fun d!1160145 () Bool)

(assert (=> d!1160145 (isPrefix!3547 lt!1362321 (++!10662 lt!1362321 (_2!23481 (v!39193 lt!1362333))))))

(declare-fun lt!1362458 () Unit!59591)

(declare-fun choose!23152 (List!41574 List!41574) Unit!59591)

(assert (=> d!1160145 (= lt!1362458 (choose!23152 lt!1362321 (_2!23481 (v!39193 lt!1362333))))))

(assert (=> d!1160145 (= (lemmaConcatTwoListThenFirstIsPrefix!2410 lt!1362321 (_2!23481 (v!39193 lt!1362333))) lt!1362458)))

(declare-fun bs!585547 () Bool)

(assert (= bs!585547 d!1160145))

(assert (=> bs!585547 m!4473695))

(assert (=> bs!585547 m!4473695))

(declare-fun m!4474135 () Bool)

(assert (=> bs!585547 m!4474135))

(declare-fun m!4474137 () Bool)

(assert (=> bs!585547 m!4474137))

(assert (=> b!3910615 d!1160145))

(declare-fun d!1160147 () Bool)

(assert (=> d!1160147 (= (inv!55627 (tag!7312 (h!46871 rules!2768))) (= (mod (str.len (value!204515 (tag!7312 (h!46871 rules!2768)))) 2) 0))))

(assert (=> b!3910616 d!1160147))

(declare-fun d!1160149 () Bool)

(declare-fun res!1581924 () Bool)

(declare-fun e!2418012 () Bool)

(assert (=> d!1160149 (=> (not res!1581924) (not e!2418012))))

(assert (=> d!1160149 (= res!1581924 (semiInverseModEq!2768 (toChars!8755 (transformation!6452 (h!46871 rules!2768))) (toValue!8896 (transformation!6452 (h!46871 rules!2768)))))))

(assert (=> d!1160149 (= (inv!55631 (transformation!6452 (h!46871 rules!2768))) e!2418012)))

(declare-fun b!3911013 () Bool)

(assert (=> b!3911013 (= e!2418012 (equivClasses!2667 (toChars!8755 (transformation!6452 (h!46871 rules!2768))) (toValue!8896 (transformation!6452 (h!46871 rules!2768)))))))

(assert (= (and d!1160149 res!1581924) b!3911013))

(declare-fun m!4474139 () Bool)

(assert (=> d!1160149 m!4474139))

(declare-fun m!4474141 () Bool)

(assert (=> b!3911013 m!4474141))

(assert (=> b!3910616 d!1160149))

(declare-fun b!3911032 () Bool)

(declare-fun res!1581939 () Bool)

(declare-fun e!2418019 () Bool)

(assert (=> b!3911032 (=> (not res!1581939) (not e!2418019))))

(declare-fun lt!1362473 () Option!8872)

(assert (=> b!3911032 (= res!1581939 (< (size!31118 (_2!23481 (get!13697 lt!1362473))) (size!31118 lt!1362329)))))

(declare-fun d!1160151 () Bool)

(declare-fun e!2418021 () Bool)

(assert (=> d!1160151 e!2418021))

(declare-fun res!1581944 () Bool)

(assert (=> d!1160151 (=> res!1581944 e!2418021)))

(assert (=> d!1160151 (= res!1581944 (isEmpty!24659 lt!1362473))))

(declare-fun e!2418020 () Option!8872)

(assert (=> d!1160151 (= lt!1362473 e!2418020)))

(declare-fun c!679818 () Bool)

(assert (=> d!1160151 (= c!679818 (and ((_ is Cons!41451) rules!2768) ((_ is Nil!41451) (t!322858 rules!2768))))))

(declare-fun lt!1362472 () Unit!59591)

(declare-fun lt!1362470 () Unit!59591)

(assert (=> d!1160151 (= lt!1362472 lt!1362470)))

(assert (=> d!1160151 (isPrefix!3547 lt!1362329 lt!1362329)))

(declare-fun lemmaIsPrefixRefl!2248 (List!41574 List!41574) Unit!59591)

(assert (=> d!1160151 (= lt!1362470 (lemmaIsPrefixRefl!2248 lt!1362329 lt!1362329))))

(declare-fun rulesValidInductive!2318 (LexerInterface!6041 List!41575) Bool)

(assert (=> d!1160151 (rulesValidInductive!2318 thiss!20629 rules!2768)))

(assert (=> d!1160151 (= (maxPrefix!3345 thiss!20629 rules!2768 lt!1362329) lt!1362473)))

(declare-fun b!3911033 () Bool)

(declare-fun call!284284 () Option!8872)

(assert (=> b!3911033 (= e!2418020 call!284284)))

(declare-fun b!3911034 () Bool)

(declare-fun res!1581943 () Bool)

(assert (=> b!3911034 (=> (not res!1581943) (not e!2418019))))

(assert (=> b!3911034 (= res!1581943 (matchR!5446 (regex!6452 (rule!9366 (_1!23481 (get!13697 lt!1362473)))) (list!15407 (charsOf!4276 (_1!23481 (get!13697 lt!1362473))))))))

(declare-fun b!3911035 () Bool)

(declare-fun lt!1362469 () Option!8872)

(declare-fun lt!1362471 () Option!8872)

(assert (=> b!3911035 (= e!2418020 (ite (and ((_ is None!8871) lt!1362469) ((_ is None!8871) lt!1362471)) None!8871 (ite ((_ is None!8871) lt!1362471) lt!1362469 (ite ((_ is None!8871) lt!1362469) lt!1362471 (ite (>= (size!31117 (_1!23481 (v!39193 lt!1362469))) (size!31117 (_1!23481 (v!39193 lt!1362471)))) lt!1362469 lt!1362471)))))))

(assert (=> b!3911035 (= lt!1362469 call!284284)))

(assert (=> b!3911035 (= lt!1362471 (maxPrefix!3345 thiss!20629 (t!322858 rules!2768) lt!1362329))))

(declare-fun b!3911036 () Bool)

(assert (=> b!3911036 (= e!2418021 e!2418019)))

(declare-fun res!1581942 () Bool)

(assert (=> b!3911036 (=> (not res!1581942) (not e!2418019))))

(declare-fun isDefined!6917 (Option!8872) Bool)

(assert (=> b!3911036 (= res!1581942 (isDefined!6917 lt!1362473))))

(declare-fun b!3911037 () Bool)

(declare-fun res!1581945 () Bool)

(assert (=> b!3911037 (=> (not res!1581945) (not e!2418019))))

(assert (=> b!3911037 (= res!1581945 (= (list!15407 (charsOf!4276 (_1!23481 (get!13697 lt!1362473)))) (originalCharacters!7052 (_1!23481 (get!13697 lt!1362473)))))))

(declare-fun b!3911038 () Bool)

(declare-fun res!1581941 () Bool)

(assert (=> b!3911038 (=> (not res!1581941) (not e!2418019))))

(assert (=> b!3911038 (= res!1581941 (= (++!10662 (list!15407 (charsOf!4276 (_1!23481 (get!13697 lt!1362473)))) (_2!23481 (get!13697 lt!1362473))) lt!1362329))))

(declare-fun bm!284279 () Bool)

(assert (=> bm!284279 (= call!284284 (maxPrefixOneRule!2415 thiss!20629 (h!46871 rules!2768) lt!1362329))))

(declare-fun b!3911039 () Bool)

(declare-fun res!1581940 () Bool)

(assert (=> b!3911039 (=> (not res!1581940) (not e!2418019))))

(assert (=> b!3911039 (= res!1581940 (= (value!204516 (_1!23481 (get!13697 lt!1362473))) (apply!9691 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362473)))) (seqFromList!4719 (originalCharacters!7052 (_1!23481 (get!13697 lt!1362473)))))))))

(declare-fun b!3911040 () Bool)

(assert (=> b!3911040 (= e!2418019 (contains!8328 rules!2768 (rule!9366 (_1!23481 (get!13697 lt!1362473)))))))

(assert (= (and d!1160151 c!679818) b!3911033))

(assert (= (and d!1160151 (not c!679818)) b!3911035))

(assert (= (or b!3911033 b!3911035) bm!284279))

(assert (= (and d!1160151 (not res!1581944)) b!3911036))

(assert (= (and b!3911036 res!1581942) b!3911037))

(assert (= (and b!3911037 res!1581945) b!3911032))

(assert (= (and b!3911032 res!1581939) b!3911038))

(assert (= (and b!3911038 res!1581941) b!3911039))

(assert (= (and b!3911039 res!1581940) b!3911034))

(assert (= (and b!3911034 res!1581943) b!3911040))

(declare-fun m!4474143 () Bool)

(assert (=> b!3911037 m!4474143))

(declare-fun m!4474145 () Bool)

(assert (=> b!3911037 m!4474145))

(assert (=> b!3911037 m!4474145))

(declare-fun m!4474147 () Bool)

(assert (=> b!3911037 m!4474147))

(declare-fun m!4474149 () Bool)

(assert (=> b!3911036 m!4474149))

(assert (=> b!3911039 m!4474143))

(declare-fun m!4474151 () Bool)

(assert (=> b!3911039 m!4474151))

(assert (=> b!3911039 m!4474151))

(declare-fun m!4474153 () Bool)

(assert (=> b!3911039 m!4474153))

(assert (=> b!3911040 m!4474143))

(declare-fun m!4474155 () Bool)

(assert (=> b!3911040 m!4474155))

(declare-fun m!4474157 () Bool)

(assert (=> b!3911035 m!4474157))

(assert (=> b!3911034 m!4474143))

(assert (=> b!3911034 m!4474145))

(assert (=> b!3911034 m!4474145))

(assert (=> b!3911034 m!4474147))

(assert (=> b!3911034 m!4474147))

(declare-fun m!4474159 () Bool)

(assert (=> b!3911034 m!4474159))

(declare-fun m!4474161 () Bool)

(assert (=> d!1160151 m!4474161))

(declare-fun m!4474163 () Bool)

(assert (=> d!1160151 m!4474163))

(declare-fun m!4474165 () Bool)

(assert (=> d!1160151 m!4474165))

(declare-fun m!4474167 () Bool)

(assert (=> d!1160151 m!4474167))

(assert (=> b!3911032 m!4474143))

(declare-fun m!4474169 () Bool)

(assert (=> b!3911032 m!4474169))

(assert (=> b!3911032 m!4473711))

(assert (=> b!3911038 m!4474143))

(assert (=> b!3911038 m!4474145))

(assert (=> b!3911038 m!4474145))

(assert (=> b!3911038 m!4474147))

(assert (=> b!3911038 m!4474147))

(declare-fun m!4474171 () Bool)

(assert (=> b!3911038 m!4474171))

(declare-fun m!4474173 () Bool)

(assert (=> bm!284279 m!4474173))

(assert (=> b!3910606 d!1160151))

(declare-fun d!1160153 () Bool)

(declare-fun lt!1362474 () Int)

(assert (=> d!1160153 (>= lt!1362474 0)))

(declare-fun e!2418022 () Int)

(assert (=> d!1160153 (= lt!1362474 e!2418022)))

(declare-fun c!679819 () Bool)

(assert (=> d!1160153 (= c!679819 ((_ is Nil!41450) lt!1362329))))

(assert (=> d!1160153 (= (size!31118 lt!1362329) lt!1362474)))

(declare-fun b!3911041 () Bool)

(assert (=> b!3911041 (= e!2418022 0)))

(declare-fun b!3911042 () Bool)

(assert (=> b!3911042 (= e!2418022 (+ 1 (size!31118 (t!322857 lt!1362329))))))

(assert (= (and d!1160153 c!679819) b!3911041))

(assert (= (and d!1160153 (not c!679819)) b!3911042))

(declare-fun m!4474175 () Bool)

(assert (=> b!3911042 m!4474175))

(assert (=> b!3910627 d!1160153))

(declare-fun d!1160155 () Bool)

(declare-fun lt!1362475 () Int)

(assert (=> d!1160155 (>= lt!1362475 0)))

(declare-fun e!2418023 () Int)

(assert (=> d!1160155 (= lt!1362475 e!2418023)))

(declare-fun c!679820 () Bool)

(assert (=> d!1160155 (= c!679820 ((_ is Nil!41450) (originalCharacters!7052 (_1!23481 (v!39193 lt!1362333)))))))

(assert (=> d!1160155 (= (size!31118 (originalCharacters!7052 (_1!23481 (v!39193 lt!1362333)))) lt!1362475)))

(declare-fun b!3911043 () Bool)

(assert (=> b!3911043 (= e!2418023 0)))

(declare-fun b!3911044 () Bool)

(assert (=> b!3911044 (= e!2418023 (+ 1 (size!31118 (t!322857 (originalCharacters!7052 (_1!23481 (v!39193 lt!1362333)))))))))

(assert (= (and d!1160155 c!679820) b!3911043))

(assert (= (and d!1160155 (not c!679820)) b!3911044))

(declare-fun m!4474177 () Bool)

(assert (=> b!3911044 m!4474177))

(assert (=> b!3910612 d!1160155))

(declare-fun d!1160157 () Bool)

(declare-fun lt!1362476 () Int)

(assert (=> d!1160157 (>= lt!1362476 0)))

(declare-fun e!2418024 () Int)

(assert (=> d!1160157 (= lt!1362476 e!2418024)))

(declare-fun c!679821 () Bool)

(assert (=> d!1160157 (= c!679821 ((_ is Nil!41450) prefix!426))))

(assert (=> d!1160157 (= (size!31118 prefix!426) lt!1362476)))

(declare-fun b!3911045 () Bool)

(assert (=> b!3911045 (= e!2418024 0)))

(declare-fun b!3911046 () Bool)

(assert (=> b!3911046 (= e!2418024 (+ 1 (size!31118 (t!322857 prefix!426))))))

(assert (= (and d!1160157 c!679821) b!3911045))

(assert (= (and d!1160157 (not c!679821)) b!3911046))

(declare-fun m!4474179 () Bool)

(assert (=> b!3911046 m!4474179))

(assert (=> b!3910633 d!1160157))

(declare-fun b!3911047 () Bool)

(declare-fun e!2418025 () tuple2!40696)

(assert (=> b!3911047 (= e!2418025 (tuple2!40697 Nil!41452 suffix!1176))))

(declare-fun d!1160159 () Bool)

(declare-fun e!2418026 () Bool)

(assert (=> d!1160159 e!2418026))

(declare-fun c!679823 () Bool)

(declare-fun lt!1362479 () tuple2!40696)

(assert (=> d!1160159 (= c!679823 (> (size!31121 (_1!23482 lt!1362479)) 0))))

(assert (=> d!1160159 (= lt!1362479 e!2418025)))

(declare-fun c!679822 () Bool)

(declare-fun lt!1362477 () Option!8872)

(assert (=> d!1160159 (= c!679822 ((_ is Some!8871) lt!1362477))))

(assert (=> d!1160159 (= lt!1362477 (maxPrefix!3345 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1160159 (= (lexList!1809 thiss!20629 rules!2768 suffix!1176) lt!1362479)))

(declare-fun b!3911048 () Bool)

(declare-fun e!2418027 () Bool)

(assert (=> b!3911048 (= e!2418026 e!2418027)))

(declare-fun res!1581946 () Bool)

(assert (=> b!3911048 (= res!1581946 (< (size!31118 (_2!23482 lt!1362479)) (size!31118 suffix!1176)))))

(assert (=> b!3911048 (=> (not res!1581946) (not e!2418027))))

(declare-fun b!3911049 () Bool)

(assert (=> b!3911049 (= e!2418026 (= (_2!23482 lt!1362479) suffix!1176))))

(declare-fun b!3911050 () Bool)

(assert (=> b!3911050 (= e!2418027 (not (isEmpty!24657 (_1!23482 lt!1362479))))))

(declare-fun b!3911051 () Bool)

(declare-fun lt!1362478 () tuple2!40696)

(assert (=> b!3911051 (= e!2418025 (tuple2!40697 (Cons!41452 (_1!23481 (v!39193 lt!1362477)) (_1!23482 lt!1362478)) (_2!23482 lt!1362478)))))

(assert (=> b!3911051 (= lt!1362478 (lexList!1809 thiss!20629 rules!2768 (_2!23481 (v!39193 lt!1362477))))))

(assert (= (and d!1160159 c!679822) b!3911051))

(assert (= (and d!1160159 (not c!679822)) b!3911047))

(assert (= (and d!1160159 c!679823) b!3911048))

(assert (= (and d!1160159 (not c!679823)) b!3911049))

(assert (= (and b!3911048 res!1581946) b!3911050))

(declare-fun m!4474181 () Bool)

(assert (=> d!1160159 m!4474181))

(declare-fun m!4474183 () Bool)

(assert (=> d!1160159 m!4474183))

(declare-fun m!4474185 () Bool)

(assert (=> b!3911048 m!4474185))

(assert (=> b!3911048 m!4473743))

(declare-fun m!4474187 () Bool)

(assert (=> b!3911050 m!4474187))

(declare-fun m!4474189 () Bool)

(assert (=> b!3911051 m!4474189))

(assert (=> b!3910613 d!1160159))

(declare-fun d!1160161 () Bool)

(declare-fun res!1581947 () Bool)

(declare-fun e!2418028 () Bool)

(assert (=> d!1160161 (=> (not res!1581947) (not e!2418028))))

(assert (=> d!1160161 (= res!1581947 (not (isEmpty!24656 (originalCharacters!7052 (h!46872 suffixTokens!72)))))))

(assert (=> d!1160161 (= (inv!55630 (h!46872 suffixTokens!72)) e!2418028)))

(declare-fun b!3911052 () Bool)

(declare-fun res!1581948 () Bool)

(assert (=> b!3911052 (=> (not res!1581948) (not e!2418028))))

(assert (=> b!3911052 (= res!1581948 (= (originalCharacters!7052 (h!46872 suffixTokens!72)) (list!15407 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72)))) (value!204516 (h!46872 suffixTokens!72))))))))

(declare-fun b!3911053 () Bool)

(assert (=> b!3911053 (= e!2418028 (= (size!31117 (h!46872 suffixTokens!72)) (size!31118 (originalCharacters!7052 (h!46872 suffixTokens!72)))))))

(assert (= (and d!1160161 res!1581947) b!3911052))

(assert (= (and b!3911052 res!1581948) b!3911053))

(declare-fun b_lambda!114489 () Bool)

(assert (=> (not b_lambda!114489) (not b!3911052)))

(declare-fun t!322903 () Bool)

(declare-fun tb!232607 () Bool)

(assert (=> (and b!3910611 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80)))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72))))) t!322903) tb!232607))

(declare-fun b!3911054 () Bool)

(declare-fun e!2418029 () Bool)

(declare-fun tp!1190442 () Bool)

(assert (=> b!3911054 (= e!2418029 (and (inv!55632 (c!679729 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72)))) (value!204516 (h!46872 suffixTokens!72))))) tp!1190442))))

(declare-fun result!281968 () Bool)

(assert (=> tb!232607 (= result!281968 (and (inv!55633 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72)))) (value!204516 (h!46872 suffixTokens!72)))) e!2418029))))

(assert (= tb!232607 b!3911054))

(declare-fun m!4474191 () Bool)

(assert (=> b!3911054 m!4474191))

(declare-fun m!4474193 () Bool)

(assert (=> tb!232607 m!4474193))

(assert (=> b!3911052 t!322903))

(declare-fun b_and!297449 () Bool)

(assert (= b_and!297431 (and (=> t!322903 result!281968) b_and!297449)))

(declare-fun t!322905 () Bool)

(declare-fun tb!232609 () Bool)

(assert (=> (and b!3910608 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72)))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72))))) t!322905) tb!232609))

(declare-fun result!281970 () Bool)

(assert (= result!281970 result!281968))

(assert (=> b!3911052 t!322905))

(declare-fun b_and!297451 () Bool)

(assert (= b_and!297433 (and (=> t!322905 result!281970) b_and!297451)))

(declare-fun tb!232611 () Bool)

(declare-fun t!322907 () Bool)

(assert (=> (and b!3910607 (= (toChars!8755 (transformation!6452 (h!46871 rules!2768))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72))))) t!322907) tb!232611))

(declare-fun result!281972 () Bool)

(assert (= result!281972 result!281968))

(assert (=> b!3911052 t!322907))

(declare-fun b_and!297453 () Bool)

(assert (= b_and!297435 (and (=> t!322907 result!281972) b_and!297453)))

(declare-fun m!4474195 () Bool)

(assert (=> d!1160161 m!4474195))

(declare-fun m!4474197 () Bool)

(assert (=> b!3911052 m!4474197))

(assert (=> b!3911052 m!4474197))

(declare-fun m!4474199 () Bool)

(assert (=> b!3911052 m!4474199))

(declare-fun m!4474201 () Bool)

(assert (=> b!3911053 m!4474201))

(assert (=> b!3910614 d!1160161))

(declare-fun d!1160163 () Bool)

(declare-fun res!1581959 () Bool)

(declare-fun e!2418040 () Bool)

(assert (=> d!1160163 (=> (not res!1581959) (not e!2418040))))

(declare-fun rulesValid!2503 (LexerInterface!6041 List!41575) Bool)

(assert (=> d!1160163 (= res!1581959 (rulesValid!2503 thiss!20629 rules!2768))))

(assert (=> d!1160163 (= (rulesInvariant!5384 thiss!20629 rules!2768) e!2418040)))

(declare-fun b!3911069 () Bool)

(declare-datatypes ((List!41578 0))(
  ( (Nil!41454) (Cons!41454 (h!46874 String!47128) (t!322957 List!41578)) )
))
(declare-fun noDuplicateTag!2504 (LexerInterface!6041 List!41575 List!41578) Bool)

(assert (=> b!3911069 (= e!2418040 (noDuplicateTag!2504 thiss!20629 rules!2768 Nil!41454))))

(assert (= (and d!1160163 res!1581959) b!3911069))

(declare-fun m!4474203 () Bool)

(assert (=> d!1160163 m!4474203))

(declare-fun m!4474205 () Bool)

(assert (=> b!3911069 m!4474205))

(assert (=> b!3910620 d!1160163))

(declare-fun d!1160165 () Bool)

(declare-fun e!2418046 () Bool)

(assert (=> d!1160165 e!2418046))

(declare-fun res!1581970 () Bool)

(assert (=> d!1160165 (=> (not res!1581970) (not e!2418046))))

(declare-fun lt!1362492 () List!41576)

(declare-fun content!6220 (List!41576) (InoxSet Token!12042))

(assert (=> d!1160165 (= res!1581970 (= (content!6220 lt!1362492) ((_ map or) (content!6220 (Cons!41452 (_1!23481 (v!39193 lt!1362333)) Nil!41452)) (content!6220 (_1!23482 lt!1362324)))))))

(declare-fun e!2418045 () List!41576)

(assert (=> d!1160165 (= lt!1362492 e!2418045)))

(declare-fun c!679828 () Bool)

(assert (=> d!1160165 (= c!679828 ((_ is Nil!41452) (Cons!41452 (_1!23481 (v!39193 lt!1362333)) Nil!41452)))))

(assert (=> d!1160165 (= (++!10661 (Cons!41452 (_1!23481 (v!39193 lt!1362333)) Nil!41452) (_1!23482 lt!1362324)) lt!1362492)))

(declare-fun b!3911087 () Bool)

(assert (=> b!3911087 (= e!2418046 (or (not (= (_1!23482 lt!1362324) Nil!41452)) (= lt!1362492 (Cons!41452 (_1!23481 (v!39193 lt!1362333)) Nil!41452))))))

(declare-fun b!3911085 () Bool)

(assert (=> b!3911085 (= e!2418045 (Cons!41452 (h!46872 (Cons!41452 (_1!23481 (v!39193 lt!1362333)) Nil!41452)) (++!10661 (t!322859 (Cons!41452 (_1!23481 (v!39193 lt!1362333)) Nil!41452)) (_1!23482 lt!1362324))))))

(declare-fun b!3911084 () Bool)

(assert (=> b!3911084 (= e!2418045 (_1!23482 lt!1362324))))

(declare-fun b!3911086 () Bool)

(declare-fun res!1581971 () Bool)

(assert (=> b!3911086 (=> (not res!1581971) (not e!2418046))))

(assert (=> b!3911086 (= res!1581971 (= (size!31121 lt!1362492) (+ (size!31121 (Cons!41452 (_1!23481 (v!39193 lt!1362333)) Nil!41452)) (size!31121 (_1!23482 lt!1362324)))))))

(assert (= (and d!1160165 c!679828) b!3911084))

(assert (= (and d!1160165 (not c!679828)) b!3911085))

(assert (= (and d!1160165 res!1581970) b!3911086))

(assert (= (and b!3911086 res!1581971) b!3911087))

(declare-fun m!4474207 () Bool)

(assert (=> d!1160165 m!4474207))

(declare-fun m!4474209 () Bool)

(assert (=> d!1160165 m!4474209))

(declare-fun m!4474211 () Bool)

(assert (=> d!1160165 m!4474211))

(declare-fun m!4474213 () Bool)

(assert (=> b!3911085 m!4474213))

(declare-fun m!4474215 () Bool)

(assert (=> b!3911086 m!4474215))

(declare-fun m!4474217 () Bool)

(assert (=> b!3911086 m!4474217))

(declare-fun m!4474219 () Bool)

(assert (=> b!3911086 m!4474219))

(assert (=> b!3910610 d!1160165))

(declare-fun d!1160167 () Bool)

(assert (=> d!1160167 (= (inv!55627 (tag!7312 (rule!9366 (h!46872 suffixTokens!72)))) (= (mod (str.len (value!204515 (tag!7312 (rule!9366 (h!46872 suffixTokens!72))))) 2) 0))))

(assert (=> b!3910631 d!1160167))

(declare-fun d!1160169 () Bool)

(declare-fun res!1581972 () Bool)

(declare-fun e!2418047 () Bool)

(assert (=> d!1160169 (=> (not res!1581972) (not e!2418047))))

(assert (=> d!1160169 (= res!1581972 (semiInverseModEq!2768 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72)))) (toValue!8896 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72))))))))

(assert (=> d!1160169 (= (inv!55631 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72)))) e!2418047)))

(declare-fun b!3911088 () Bool)

(assert (=> b!3911088 (= e!2418047 (equivClasses!2667 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72)))) (toValue!8896 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72))))))))

(assert (= (and d!1160169 res!1581972) b!3911088))

(declare-fun m!4474221 () Bool)

(assert (=> d!1160169 m!4474221))

(declare-fun m!4474223 () Bool)

(assert (=> b!3911088 m!4474223))

(assert (=> b!3910631 d!1160169))

(declare-fun b!3911089 () Bool)

(declare-fun e!2418048 () tuple2!40696)

(assert (=> b!3911089 (= e!2418048 (tuple2!40697 Nil!41452 lt!1362329))))

(declare-fun d!1160171 () Bool)

(declare-fun e!2418049 () Bool)

(assert (=> d!1160171 e!2418049))

(declare-fun c!679830 () Bool)

(declare-fun lt!1362495 () tuple2!40696)

(assert (=> d!1160171 (= c!679830 (> (size!31121 (_1!23482 lt!1362495)) 0))))

(assert (=> d!1160171 (= lt!1362495 e!2418048)))

(declare-fun c!679829 () Bool)

(declare-fun lt!1362493 () Option!8872)

(assert (=> d!1160171 (= c!679829 ((_ is Some!8871) lt!1362493))))

(assert (=> d!1160171 (= lt!1362493 (maxPrefix!3345 thiss!20629 rules!2768 lt!1362329))))

(assert (=> d!1160171 (= (lexList!1809 thiss!20629 rules!2768 lt!1362329) lt!1362495)))

(declare-fun b!3911090 () Bool)

(declare-fun e!2418050 () Bool)

(assert (=> b!3911090 (= e!2418049 e!2418050)))

(declare-fun res!1581973 () Bool)

(assert (=> b!3911090 (= res!1581973 (< (size!31118 (_2!23482 lt!1362495)) (size!31118 lt!1362329)))))

(assert (=> b!3911090 (=> (not res!1581973) (not e!2418050))))

(declare-fun b!3911091 () Bool)

(assert (=> b!3911091 (= e!2418049 (= (_2!23482 lt!1362495) lt!1362329))))

(declare-fun b!3911092 () Bool)

(assert (=> b!3911092 (= e!2418050 (not (isEmpty!24657 (_1!23482 lt!1362495))))))

(declare-fun b!3911093 () Bool)

(declare-fun lt!1362494 () tuple2!40696)

(assert (=> b!3911093 (= e!2418048 (tuple2!40697 (Cons!41452 (_1!23481 (v!39193 lt!1362493)) (_1!23482 lt!1362494)) (_2!23482 lt!1362494)))))

(assert (=> b!3911093 (= lt!1362494 (lexList!1809 thiss!20629 rules!2768 (_2!23481 (v!39193 lt!1362493))))))

(assert (= (and d!1160171 c!679829) b!3911093))

(assert (= (and d!1160171 (not c!679829)) b!3911089))

(assert (= (and d!1160171 c!679830) b!3911090))

(assert (= (and d!1160171 (not c!679830)) b!3911091))

(assert (= (and b!3911090 res!1581973) b!3911092))

(declare-fun m!4474225 () Bool)

(assert (=> d!1160171 m!4474225))

(assert (=> d!1160171 m!4473751))

(declare-fun m!4474227 () Bool)

(assert (=> b!3911090 m!4474227))

(assert (=> b!3911090 m!4473711))

(declare-fun m!4474229 () Bool)

(assert (=> b!3911092 m!4474229))

(declare-fun m!4474231 () Bool)

(assert (=> b!3911093 m!4474231))

(assert (=> b!3910632 d!1160171))

(declare-fun d!1160173 () Bool)

(declare-fun e!2418056 () Bool)

(assert (=> d!1160173 e!2418056))

(declare-fun res!1581981 () Bool)

(assert (=> d!1160173 (=> (not res!1581981) (not e!2418056))))

(declare-fun lt!1362501 () List!41576)

(assert (=> d!1160173 (= res!1581981 (= (content!6220 lt!1362501) ((_ map or) (content!6220 prefixTokens!80) (content!6220 suffixTokens!72))))))

(declare-fun e!2418055 () List!41576)

(assert (=> d!1160173 (= lt!1362501 e!2418055)))

(declare-fun c!679832 () Bool)

(assert (=> d!1160173 (= c!679832 ((_ is Nil!41452) prefixTokens!80))))

(assert (=> d!1160173 (= (++!10661 prefixTokens!80 suffixTokens!72) lt!1362501)))

(declare-fun b!3911106 () Bool)

(assert (=> b!3911106 (= e!2418056 (or (not (= suffixTokens!72 Nil!41452)) (= lt!1362501 prefixTokens!80)))))

(declare-fun b!3911104 () Bool)

(assert (=> b!3911104 (= e!2418055 (Cons!41452 (h!46872 prefixTokens!80) (++!10661 (t!322859 prefixTokens!80) suffixTokens!72)))))

(declare-fun b!3911103 () Bool)

(assert (=> b!3911103 (= e!2418055 suffixTokens!72)))

(declare-fun b!3911105 () Bool)

(declare-fun res!1581982 () Bool)

(assert (=> b!3911105 (=> (not res!1581982) (not e!2418056))))

(assert (=> b!3911105 (= res!1581982 (= (size!31121 lt!1362501) (+ (size!31121 prefixTokens!80) (size!31121 suffixTokens!72))))))

(assert (= (and d!1160173 c!679832) b!3911103))

(assert (= (and d!1160173 (not c!679832)) b!3911104))

(assert (= (and d!1160173 res!1581981) b!3911105))

(assert (= (and b!3911105 res!1581982) b!3911106))

(declare-fun m!4474233 () Bool)

(assert (=> d!1160173 m!4474233))

(declare-fun m!4474235 () Bool)

(assert (=> d!1160173 m!4474235))

(declare-fun m!4474237 () Bool)

(assert (=> d!1160173 m!4474237))

(declare-fun m!4474239 () Bool)

(assert (=> b!3911104 m!4474239))

(declare-fun m!4474241 () Bool)

(assert (=> b!3911105 m!4474241))

(declare-fun m!4474243 () Bool)

(assert (=> b!3911105 m!4474243))

(declare-fun m!4474245 () Bool)

(assert (=> b!3911105 m!4474245))

(assert (=> b!3910632 d!1160173))

(declare-fun b!3911108 () Bool)

(declare-fun e!2418057 () List!41574)

(assert (=> b!3911108 (= e!2418057 (Cons!41450 (h!46870 prefix!426) (++!10662 (t!322857 prefix!426) suffix!1176)))))

(declare-fun b!3911107 () Bool)

(assert (=> b!3911107 (= e!2418057 suffix!1176)))

(declare-fun e!2418058 () Bool)

(declare-fun lt!1362502 () List!41574)

(declare-fun b!3911110 () Bool)

(assert (=> b!3911110 (= e!2418058 (or (not (= suffix!1176 Nil!41450)) (= lt!1362502 prefix!426)))))

(declare-fun d!1160175 () Bool)

(assert (=> d!1160175 e!2418058))

(declare-fun res!1581983 () Bool)

(assert (=> d!1160175 (=> (not res!1581983) (not e!2418058))))

(assert (=> d!1160175 (= res!1581983 (= (content!6219 lt!1362502) ((_ map or) (content!6219 prefix!426) (content!6219 suffix!1176))))))

(assert (=> d!1160175 (= lt!1362502 e!2418057)))

(declare-fun c!679833 () Bool)

(assert (=> d!1160175 (= c!679833 ((_ is Nil!41450) prefix!426))))

(assert (=> d!1160175 (= (++!10662 prefix!426 suffix!1176) lt!1362502)))

(declare-fun b!3911109 () Bool)

(declare-fun res!1581984 () Bool)

(assert (=> b!3911109 (=> (not res!1581984) (not e!2418058))))

(assert (=> b!3911109 (= res!1581984 (= (size!31118 lt!1362502) (+ (size!31118 prefix!426) (size!31118 suffix!1176))))))

(assert (= (and d!1160175 c!679833) b!3911107))

(assert (= (and d!1160175 (not c!679833)) b!3911108))

(assert (= (and d!1160175 res!1581983) b!3911109))

(assert (= (and b!3911109 res!1581984) b!3911110))

(declare-fun m!4474247 () Bool)

(assert (=> b!3911108 m!4474247))

(declare-fun m!4474249 () Bool)

(assert (=> d!1160175 m!4474249))

(declare-fun m!4474251 () Bool)

(assert (=> d!1160175 m!4474251))

(declare-fun m!4474253 () Bool)

(assert (=> d!1160175 m!4474253))

(declare-fun m!4474255 () Bool)

(assert (=> b!3911109 m!4474255))

(assert (=> b!3911109 m!4473735))

(assert (=> b!3911109 m!4473743))

(assert (=> b!3910632 d!1160175))

(declare-fun d!1160177 () Bool)

(assert (=> d!1160177 (= (isEmpty!24657 prefixTokens!80) ((_ is Nil!41452) prefixTokens!80))))

(assert (=> b!3910622 d!1160177))

(declare-fun b!3911115 () Bool)

(declare-fun e!2418061 () Bool)

(declare-fun tp!1190445 () Bool)

(assert (=> b!3911115 (= e!2418061 (and tp_is_empty!19685 tp!1190445))))

(assert (=> b!3910628 (= tp!1190417 e!2418061)))

(assert (= (and b!3910628 ((_ is Cons!41450) (originalCharacters!7052 (h!46872 prefixTokens!80)))) b!3911115))

(declare-fun b!3911116 () Bool)

(declare-fun e!2418062 () Bool)

(declare-fun tp!1190446 () Bool)

(assert (=> b!3911116 (= e!2418062 (and tp_is_empty!19685 tp!1190446))))

(assert (=> b!3910617 (= tp!1190419 e!2418062)))

(assert (= (and b!3910617 ((_ is Cons!41450) (originalCharacters!7052 (h!46872 suffixTokens!72)))) b!3911116))

(declare-fun b!3911130 () Bool)

(declare-fun b_free!106073 () Bool)

(declare-fun b_next!106777 () Bool)

(assert (=> b!3911130 (= b_free!106073 (not b_next!106777))))

(declare-fun tb!232613 () Bool)

(declare-fun t!322909 () Bool)

(assert (=> (and b!3911130 (= (toValue!8896 (transformation!6452 (rule!9366 (h!46872 (t!322859 prefixTokens!80))))) (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))) t!322909) tb!232613))

(declare-fun result!281978 () Bool)

(assert (= result!281978 result!281940))

(assert (=> d!1160081 t!322909))

(declare-fun b_and!297455 () Bool)

(declare-fun tp!1190459 () Bool)

(assert (=> b!3911130 (= tp!1190459 (and (=> t!322909 result!281978) b_and!297455))))

(declare-fun b_free!106075 () Bool)

(declare-fun b_next!106779 () Bool)

(assert (=> b!3911130 (= b_free!106075 (not b_next!106779))))

(declare-fun t!322911 () Bool)

(declare-fun tb!232615 () Bool)

(assert (=> (and b!3911130 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 prefixTokens!80))))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80))))) t!322911) tb!232615))

(declare-fun result!281980 () Bool)

(assert (= result!281980 result!281918))

(assert (=> b!3910659 t!322911))

(declare-fun tb!232617 () Bool)

(declare-fun t!322913 () Bool)

(assert (=> (and b!3911130 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 prefixTokens!80))))) (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))) t!322913) tb!232617))

(declare-fun result!281982 () Bool)

(assert (= result!281982 result!281948))

(assert (=> d!1160095 t!322913))

(declare-fun tb!232619 () Bool)

(declare-fun t!322915 () Bool)

(assert (=> (and b!3911130 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 prefixTokens!80))))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72))))) t!322915) tb!232619))

(declare-fun result!281984 () Bool)

(assert (= result!281984 result!281968))

(assert (=> b!3911052 t!322915))

(declare-fun tp!1190461 () Bool)

(declare-fun b_and!297457 () Bool)

(assert (=> b!3911130 (= tp!1190461 (and (=> t!322911 result!281980) (=> t!322913 result!281982) (=> t!322915 result!281984) b_and!297457))))

(declare-fun tp!1190457 () Bool)

(declare-fun b!3911127 () Bool)

(declare-fun e!2418077 () Bool)

(declare-fun e!2418075 () Bool)

(assert (=> b!3911127 (= e!2418075 (and (inv!55630 (h!46872 (t!322859 prefixTokens!80))) e!2418077 tp!1190457))))

(declare-fun e!2418076 () Bool)

(declare-fun b!3911129 () Bool)

(declare-fun e!2418079 () Bool)

(declare-fun tp!1190460 () Bool)

(assert (=> b!3911129 (= e!2418076 (and tp!1190460 (inv!55627 (tag!7312 (rule!9366 (h!46872 (t!322859 prefixTokens!80))))) (inv!55631 (transformation!6452 (rule!9366 (h!46872 (t!322859 prefixTokens!80))))) e!2418079))))

(assert (=> b!3910618 (= tp!1190431 e!2418075)))

(assert (=> b!3911130 (= e!2418079 (and tp!1190459 tp!1190461))))

(declare-fun b!3911128 () Bool)

(declare-fun tp!1190458 () Bool)

(assert (=> b!3911128 (= e!2418077 (and (inv!21 (value!204516 (h!46872 (t!322859 prefixTokens!80)))) e!2418076 tp!1190458))))

(assert (= b!3911129 b!3911130))

(assert (= b!3911128 b!3911129))

(assert (= b!3911127 b!3911128))

(assert (= (and b!3910618 ((_ is Cons!41452) (t!322859 prefixTokens!80))) b!3911127))

(declare-fun m!4474299 () Bool)

(assert (=> b!3911127 m!4474299))

(declare-fun m!4474301 () Bool)

(assert (=> b!3911129 m!4474301))

(declare-fun m!4474303 () Bool)

(assert (=> b!3911129 m!4474303))

(declare-fun m!4474305 () Bool)

(assert (=> b!3911128 m!4474305))

(declare-fun e!2418083 () Bool)

(assert (=> b!3910626 (= tp!1190422 e!2418083)))

(declare-fun b!3911144 () Bool)

(declare-fun tp!1190475 () Bool)

(declare-fun tp!1190473 () Bool)

(assert (=> b!3911144 (= e!2418083 (and tp!1190475 tp!1190473))))

(declare-fun b!3911141 () Bool)

(assert (=> b!3911141 (= e!2418083 tp_is_empty!19685)))

(declare-fun b!3911143 () Bool)

(declare-fun tp!1190476 () Bool)

(assert (=> b!3911143 (= e!2418083 tp!1190476)))

(declare-fun b!3911142 () Bool)

(declare-fun tp!1190474 () Bool)

(declare-fun tp!1190472 () Bool)

(assert (=> b!3911142 (= e!2418083 (and tp!1190474 tp!1190472))))

(assert (= (and b!3910626 ((_ is ElementMatch!11357) (regex!6452 (rule!9366 (h!46872 prefixTokens!80))))) b!3911141))

(assert (= (and b!3910626 ((_ is Concat!18040) (regex!6452 (rule!9366 (h!46872 prefixTokens!80))))) b!3911142))

(assert (= (and b!3910626 ((_ is Star!11357) (regex!6452 (rule!9366 (h!46872 prefixTokens!80))))) b!3911143))

(assert (= (and b!3910626 ((_ is Union!11357) (regex!6452 (rule!9366 (h!46872 prefixTokens!80))))) b!3911144))

(declare-fun e!2418084 () Bool)

(assert (=> b!3910616 (= tp!1190426 e!2418084)))

(declare-fun b!3911148 () Bool)

(declare-fun tp!1190480 () Bool)

(declare-fun tp!1190478 () Bool)

(assert (=> b!3911148 (= e!2418084 (and tp!1190480 tp!1190478))))

(declare-fun b!3911145 () Bool)

(assert (=> b!3911145 (= e!2418084 tp_is_empty!19685)))

(declare-fun b!3911147 () Bool)

(declare-fun tp!1190481 () Bool)

(assert (=> b!3911147 (= e!2418084 tp!1190481)))

(declare-fun b!3911146 () Bool)

(declare-fun tp!1190479 () Bool)

(declare-fun tp!1190477 () Bool)

(assert (=> b!3911146 (= e!2418084 (and tp!1190479 tp!1190477))))

(assert (= (and b!3910616 ((_ is ElementMatch!11357) (regex!6452 (h!46871 rules!2768)))) b!3911145))

(assert (= (and b!3910616 ((_ is Concat!18040) (regex!6452 (h!46871 rules!2768)))) b!3911146))

(assert (= (and b!3910616 ((_ is Star!11357) (regex!6452 (h!46871 rules!2768)))) b!3911147))

(assert (= (and b!3910616 ((_ is Union!11357) (regex!6452 (h!46871 rules!2768)))) b!3911148))

(declare-fun b!3911149 () Bool)

(declare-fun e!2418085 () Bool)

(declare-fun tp!1190482 () Bool)

(assert (=> b!3911149 (= e!2418085 (and tp_is_empty!19685 tp!1190482))))

(assert (=> b!3910634 (= tp!1190424 e!2418085)))

(assert (= (and b!3910634 ((_ is Cons!41450) (t!322857 suffix!1176))) b!3911149))

(declare-fun b!3911150 () Bool)

(declare-fun e!2418086 () Bool)

(declare-fun tp!1190483 () Bool)

(assert (=> b!3911150 (= e!2418086 (and tp_is_empty!19685 tp!1190483))))

(assert (=> b!3910623 (= tp!1190430 e!2418086)))

(assert (= (and b!3910623 ((_ is Cons!41450) (t!322857 prefix!426))) b!3911150))

(declare-fun b!3911154 () Bool)

(declare-fun b_free!106077 () Bool)

(declare-fun b_next!106781 () Bool)

(assert (=> b!3911154 (= b_free!106077 (not b_next!106781))))

(declare-fun t!322917 () Bool)

(declare-fun tb!232621 () Bool)

(assert (=> (and b!3911154 (= (toValue!8896 (transformation!6452 (rule!9366 (h!46872 (t!322859 suffixTokens!72))))) (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))) t!322917) tb!232621))

(declare-fun result!281988 () Bool)

(assert (= result!281988 result!281940))

(assert (=> d!1160081 t!322917))

(declare-fun tp!1190486 () Bool)

(declare-fun b_and!297459 () Bool)

(assert (=> b!3911154 (= tp!1190486 (and (=> t!322917 result!281988) b_and!297459))))

(declare-fun b_free!106079 () Bool)

(declare-fun b_next!106783 () Bool)

(assert (=> b!3911154 (= b_free!106079 (not b_next!106783))))

(declare-fun tb!232623 () Bool)

(declare-fun t!322919 () Bool)

(assert (=> (and b!3911154 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 suffixTokens!72))))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80))))) t!322919) tb!232623))

(declare-fun result!281990 () Bool)

(assert (= result!281990 result!281918))

(assert (=> b!3910659 t!322919))

(declare-fun t!322921 () Bool)

(declare-fun tb!232625 () Bool)

(assert (=> (and b!3911154 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 suffixTokens!72))))) (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))) t!322921) tb!232625))

(declare-fun result!281992 () Bool)

(assert (= result!281992 result!281948))

(assert (=> d!1160095 t!322921))

(declare-fun t!322923 () Bool)

(declare-fun tb!232627 () Bool)

(assert (=> (and b!3911154 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 suffixTokens!72))))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72))))) t!322923) tb!232627))

(declare-fun result!281994 () Bool)

(assert (= result!281994 result!281968))

(assert (=> b!3911052 t!322923))

(declare-fun tp!1190488 () Bool)

(declare-fun b_and!297461 () Bool)

(assert (=> b!3911154 (= tp!1190488 (and (=> t!322919 result!281990) (=> t!322921 result!281992) (=> t!322923 result!281994) b_and!297461))))

(declare-fun tp!1190484 () Bool)

(declare-fun b!3911151 () Bool)

(declare-fun e!2418089 () Bool)

(declare-fun e!2418087 () Bool)

(assert (=> b!3911151 (= e!2418087 (and (inv!55630 (h!46872 (t!322859 suffixTokens!72))) e!2418089 tp!1190484))))

(declare-fun tp!1190487 () Bool)

(declare-fun b!3911153 () Bool)

(declare-fun e!2418091 () Bool)

(declare-fun e!2418088 () Bool)

(assert (=> b!3911153 (= e!2418088 (and tp!1190487 (inv!55627 (tag!7312 (rule!9366 (h!46872 (t!322859 suffixTokens!72))))) (inv!55631 (transformation!6452 (rule!9366 (h!46872 (t!322859 suffixTokens!72))))) e!2418091))))

(assert (=> b!3910614 (= tp!1190416 e!2418087)))

(assert (=> b!3911154 (= e!2418091 (and tp!1190486 tp!1190488))))

(declare-fun tp!1190485 () Bool)

(declare-fun b!3911152 () Bool)

(assert (=> b!3911152 (= e!2418089 (and (inv!21 (value!204516 (h!46872 (t!322859 suffixTokens!72)))) e!2418088 tp!1190485))))

(assert (= b!3911153 b!3911154))

(assert (= b!3911152 b!3911153))

(assert (= b!3911151 b!3911152))

(assert (= (and b!3910614 ((_ is Cons!41452) (t!322859 suffixTokens!72))) b!3911151))

(declare-fun m!4474307 () Bool)

(assert (=> b!3911151 m!4474307))

(declare-fun m!4474309 () Bool)

(assert (=> b!3911153 m!4474309))

(declare-fun m!4474311 () Bool)

(assert (=> b!3911153 m!4474311))

(declare-fun m!4474313 () Bool)

(assert (=> b!3911152 m!4474313))

(declare-fun b!3911155 () Bool)

(declare-fun e!2418093 () Bool)

(declare-fun tp!1190489 () Bool)

(assert (=> b!3911155 (= e!2418093 (and tp_is_empty!19685 tp!1190489))))

(assert (=> b!3910609 (= tp!1190421 e!2418093)))

(assert (= (and b!3910609 ((_ is Cons!41450) (t!322857 suffixResult!91))) b!3911155))

(declare-fun e!2418094 () Bool)

(assert (=> b!3910631 (= tp!1190427 e!2418094)))

(declare-fun b!3911159 () Bool)

(declare-fun tp!1190493 () Bool)

(declare-fun tp!1190491 () Bool)

(assert (=> b!3911159 (= e!2418094 (and tp!1190493 tp!1190491))))

(declare-fun b!3911156 () Bool)

(assert (=> b!3911156 (= e!2418094 tp_is_empty!19685)))

(declare-fun b!3911158 () Bool)

(declare-fun tp!1190494 () Bool)

(assert (=> b!3911158 (= e!2418094 tp!1190494)))

(declare-fun b!3911157 () Bool)

(declare-fun tp!1190492 () Bool)

(declare-fun tp!1190490 () Bool)

(assert (=> b!3911157 (= e!2418094 (and tp!1190492 tp!1190490))))

(assert (= (and b!3910631 ((_ is ElementMatch!11357) (regex!6452 (rule!9366 (h!46872 suffixTokens!72))))) b!3911156))

(assert (= (and b!3910631 ((_ is Concat!18040) (regex!6452 (rule!9366 (h!46872 suffixTokens!72))))) b!3911157))

(assert (= (and b!3910631 ((_ is Star!11357) (regex!6452 (rule!9366 (h!46872 suffixTokens!72))))) b!3911158))

(assert (= (and b!3910631 ((_ is Union!11357) (regex!6452 (rule!9366 (h!46872 suffixTokens!72))))) b!3911159))

(declare-fun b!3911170 () Bool)

(declare-fun b_free!106081 () Bool)

(declare-fun b_next!106785 () Bool)

(assert (=> b!3911170 (= b_free!106081 (not b_next!106785))))

(declare-fun tb!232629 () Bool)

(declare-fun t!322925 () Bool)

(assert (=> (and b!3911170 (= (toValue!8896 (transformation!6452 (h!46871 (t!322858 rules!2768)))) (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))) t!322925) tb!232629))

(declare-fun result!281998 () Bool)

(assert (= result!281998 result!281940))

(assert (=> d!1160081 t!322925))

(declare-fun b_and!297463 () Bool)

(declare-fun tp!1190505 () Bool)

(assert (=> b!3911170 (= tp!1190505 (and (=> t!322925 result!281998) b_and!297463))))

(declare-fun b_free!106083 () Bool)

(declare-fun b_next!106787 () Bool)

(assert (=> b!3911170 (= b_free!106083 (not b_next!106787))))

(declare-fun tb!232631 () Bool)

(declare-fun t!322927 () Bool)

(assert (=> (and b!3911170 (= (toChars!8755 (transformation!6452 (h!46871 (t!322858 rules!2768)))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80))))) t!322927) tb!232631))

(declare-fun result!282000 () Bool)

(assert (= result!282000 result!281918))

(assert (=> b!3910659 t!322927))

(declare-fun tb!232633 () Bool)

(declare-fun t!322929 () Bool)

(assert (=> (and b!3911170 (= (toChars!8755 (transformation!6452 (h!46871 (t!322858 rules!2768)))) (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))) t!322929) tb!232633))

(declare-fun result!282002 () Bool)

(assert (= result!282002 result!281948))

(assert (=> d!1160095 t!322929))

(declare-fun tb!232635 () Bool)

(declare-fun t!322931 () Bool)

(assert (=> (and b!3911170 (= (toChars!8755 (transformation!6452 (h!46871 (t!322858 rules!2768)))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72))))) t!322931) tb!232635))

(declare-fun result!282004 () Bool)

(assert (= result!282004 result!281968))

(assert (=> b!3911052 t!322931))

(declare-fun b_and!297465 () Bool)

(declare-fun tp!1190504 () Bool)

(assert (=> b!3911170 (= tp!1190504 (and (=> t!322927 result!282000) (=> t!322929 result!282002) (=> t!322931 result!282004) b_and!297465))))

(declare-fun e!2418105 () Bool)

(assert (=> b!3911170 (= e!2418105 (and tp!1190505 tp!1190504))))

(declare-fun e!2418103 () Bool)

(declare-fun tp!1190503 () Bool)

(declare-fun b!3911169 () Bool)

(assert (=> b!3911169 (= e!2418103 (and tp!1190503 (inv!55627 (tag!7312 (h!46871 (t!322858 rules!2768)))) (inv!55631 (transformation!6452 (h!46871 (t!322858 rules!2768)))) e!2418105))))

(declare-fun b!3911168 () Bool)

(declare-fun e!2418104 () Bool)

(declare-fun tp!1190506 () Bool)

(assert (=> b!3911168 (= e!2418104 (and e!2418103 tp!1190506))))

(assert (=> b!3910621 (= tp!1190432 e!2418104)))

(assert (= b!3911169 b!3911170))

(assert (= b!3911168 b!3911169))

(assert (= (and b!3910621 ((_ is Cons!41451) (t!322858 rules!2768))) b!3911168))

(declare-fun m!4474315 () Bool)

(assert (=> b!3911169 m!4474315))

(declare-fun m!4474317 () Bool)

(assert (=> b!3911169 m!4474317))

(declare-fun b_lambda!114491 () Bool)

(assert (= b_lambda!114475 (or (and b!3911154 b_free!106079 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 suffixTokens!72))))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80)))))) (and b!3911170 b_free!106083 (= (toChars!8755 (transformation!6452 (h!46871 (t!322858 rules!2768)))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80)))))) (and b!3911130 b_free!106075 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 prefixTokens!80))))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80)))))) (and b!3910611 b_free!106063) (and b!3910607 b_free!106071 (= (toChars!8755 (transformation!6452 (h!46871 rules!2768))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80)))))) (and b!3910608 b_free!106067 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72)))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80)))))) b_lambda!114491)))

(declare-fun b_lambda!114493 () Bool)

(assert (= b_lambda!114489 (or (and b!3910608 b_free!106067) (and b!3911154 b_free!106079 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 suffixTokens!72))))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72)))))) (and b!3911130 b_free!106075 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 prefixTokens!80))))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72)))))) (and b!3910611 b_free!106063 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80)))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72)))))) (and b!3910607 b_free!106071 (= (toChars!8755 (transformation!6452 (h!46871 rules!2768))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72)))))) (and b!3911170 b_free!106083 (= (toChars!8755 (transformation!6452 (h!46871 (t!322858 rules!2768)))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72)))))) b_lambda!114493)))

(check-sat (not b!3910833) (not b!3910864) tp_is_empty!19685 (not b!3910645) (not b!3911085) (not d!1160095) (not b!3911044) (not d!1160163) (not b!3910654) (not b!3911090) (not b!3911104) (not b!3911105) (not b!3911128) (not b!3910647) (not b_next!106785) (not b!3910983) (not d!1160161) (not b_next!106769) b_and!297465 b_and!297453 (not b!3910665) (not d!1160109) (not b!3910719) (not b!3910862) (not b!3910836) b_and!297425 (not d!1160171) (not b!3911008) (not b!3911158) (not b!3911142) (not d!1160017) (not b_next!106765) (not b!3911069) (not b!3911155) (not d!1160091) (not b!3910714) (not b!3910941) b_and!297457 (not b!3911129) (not b_next!106783) (not b!3911048) (not b_next!106775) b_and!297455 (not b!3911012) (not b!3911157) (not d!1160173) (not b!3910835) (not b!3910897) (not d!1160165) (not b!3911013) (not d!1160139) (not b!3911042) (not b!3910903) (not tb!232565) (not b!3911050) (not b!3911151) (not d!1160175) (not b!3910837) (not d!1160137) (not b!3910710) (not b!3911144) b_and!297451 (not b_next!106781) (not b!3911040) (not b!3911150) (not bm!284279) (not b!3911035) (not b!3911116) (not tb!232589) (not d!1160169) (not b!3911034) (not b!3910649) (not b!3911037) (not b!3911149) (not b!3911146) b_and!297427 (not b!3910876) (not tb!232607) (not b_next!106767) (not b!3911051) (not tb!232583) b_and!297449 (not b!3911009) (not b_next!106787) (not b!3911127) (not b!3911054) (not b!3910650) (not b_next!106779) b_and!297461 (not b!3911115) (not b!3910944) (not b!3911168) (not b!3911169) b_and!297429 (not bm!284270) (not d!1160103) (not d!1160067) (not b!3911086) (not b!3910715) (not d!1160079) (not b!3910831) (not b_next!106777) (not b!3911153) (not b_lambda!114491) (not d!1160087) (not b!3911052) (not b!3911148) (not b!3911108) (not b!3911088) b_and!297463 (not b_lambda!114493) (not b_next!106773) (not b!3911109) (not b!3910982) (not b!3911038) (not d!1160025) (not b!3910713) (not d!1160145) (not b!3911032) (not b_next!106771) (not d!1160093) (not b!3910660) (not b!3911143) (not b!3910832) (not b!3911152) (not b!3911093) (not d!1160019) (not d!1160159) (not d!1160149) (not b!3910908) (not d!1160083) (not b!3911092) (not b!3911039) (not d!1160101) (not b!3910943) (not b!3911159) (not b_lambda!114481) (not d!1160151) (not b!3910838) (not b!3911046) b_and!297459 (not b!3911036) (not b_lambda!114483) (not b!3910984) (not b!3911053) (not b!3910652) (not b!3910659) (not b!3911147) (not b!3910718) (not b!3910834))
(check-sat (not b_next!106785) b_and!297425 (not b_next!106765) b_and!297427 b_and!297429 (not b_next!106777) b_and!297463 (not b_next!106773) (not b_next!106771) b_and!297459 (not b_next!106769) b_and!297465 b_and!297453 b_and!297457 (not b_next!106783) (not b_next!106775) b_and!297455 b_and!297451 (not b_next!106781) (not b_next!106767) b_and!297449 (not b_next!106787) (not b_next!106779) b_and!297461)
(get-model)

(declare-fun d!1160249 () Bool)

(declare-fun lt!1362543 () Int)

(assert (=> d!1160249 (>= lt!1362543 0)))

(declare-fun e!2418180 () Int)

(assert (=> d!1160249 (= lt!1362543 e!2418180)))

(declare-fun c!679850 () Bool)

(assert (=> d!1160249 (= c!679850 ((_ is Nil!41450) lt!1362317))))

(assert (=> d!1160249 (= (size!31118 lt!1362317) lt!1362543)))

(declare-fun b!3911273 () Bool)

(assert (=> b!3911273 (= e!2418180 0)))

(declare-fun b!3911274 () Bool)

(assert (=> b!3911274 (= e!2418180 (+ 1 (size!31118 (t!322857 lt!1362317))))))

(assert (= (and d!1160249 c!679850) b!3911273))

(assert (= (and d!1160249 (not c!679850)) b!3911274))

(declare-fun m!4474437 () Bool)

(assert (=> b!3911274 m!4474437))

(assert (=> b!3910984 d!1160249))

(assert (=> b!3910984 d!1160143))

(declare-fun d!1160251 () Bool)

(declare-fun lt!1362544 () Int)

(assert (=> d!1160251 (>= lt!1362544 0)))

(declare-fun e!2418181 () Int)

(assert (=> d!1160251 (= lt!1362544 e!2418181)))

(declare-fun c!679851 () Bool)

(assert (=> d!1160251 (= c!679851 ((_ is Nil!41450) (_2!23482 lt!1362495)))))

(assert (=> d!1160251 (= (size!31118 (_2!23482 lt!1362495)) lt!1362544)))

(declare-fun b!3911275 () Bool)

(assert (=> b!3911275 (= e!2418181 0)))

(declare-fun b!3911276 () Bool)

(assert (=> b!3911276 (= e!2418181 (+ 1 (size!31118 (t!322857 (_2!23482 lt!1362495)))))))

(assert (= (and d!1160251 c!679851) b!3911275))

(assert (= (and d!1160251 (not c!679851)) b!3911276))

(declare-fun m!4474439 () Bool)

(assert (=> b!3911276 m!4474439))

(assert (=> b!3911090 d!1160251))

(assert (=> b!3911090 d!1160153))

(declare-fun d!1160253 () Bool)

(declare-fun lt!1362545 () Int)

(assert (=> d!1160253 (>= lt!1362545 0)))

(declare-fun e!2418182 () Int)

(assert (=> d!1160253 (= lt!1362545 e!2418182)))

(declare-fun c!679852 () Bool)

(assert (=> d!1160253 (= c!679852 ((_ is Nil!41450) (t!322857 (originalCharacters!7052 (_1!23481 (v!39193 lt!1362333))))))))

(assert (=> d!1160253 (= (size!31118 (t!322857 (originalCharacters!7052 (_1!23481 (v!39193 lt!1362333))))) lt!1362545)))

(declare-fun b!3911277 () Bool)

(assert (=> b!3911277 (= e!2418182 0)))

(declare-fun b!3911278 () Bool)

(assert (=> b!3911278 (= e!2418182 (+ 1 (size!31118 (t!322857 (t!322857 (originalCharacters!7052 (_1!23481 (v!39193 lt!1362333))))))))))

(assert (= (and d!1160253 c!679852) b!3911277))

(assert (= (and d!1160253 (not c!679852)) b!3911278))

(declare-fun m!4474441 () Bool)

(assert (=> b!3911278 m!4474441))

(assert (=> b!3911044 d!1160253))

(declare-fun b!3911280 () Bool)

(declare-fun e!2418183 () List!41574)

(assert (=> b!3911280 (= e!2418183 (Cons!41450 (h!46870 (list!15407 (charsOf!4276 (_1!23481 (get!13697 lt!1362378))))) (++!10662 (t!322857 (list!15407 (charsOf!4276 (_1!23481 (get!13697 lt!1362378))))) (_2!23481 (get!13697 lt!1362378)))))))

(declare-fun b!3911279 () Bool)

(assert (=> b!3911279 (= e!2418183 (_2!23481 (get!13697 lt!1362378)))))

(declare-fun b!3911282 () Bool)

(declare-fun e!2418184 () Bool)

(declare-fun lt!1362546 () List!41574)

(assert (=> b!3911282 (= e!2418184 (or (not (= (_2!23481 (get!13697 lt!1362378)) Nil!41450)) (= lt!1362546 (list!15407 (charsOf!4276 (_1!23481 (get!13697 lt!1362378)))))))))

(declare-fun d!1160255 () Bool)

(assert (=> d!1160255 e!2418184))

(declare-fun res!1581995 () Bool)

(assert (=> d!1160255 (=> (not res!1581995) (not e!2418184))))

(assert (=> d!1160255 (= res!1581995 (= (content!6219 lt!1362546) ((_ map or) (content!6219 (list!15407 (charsOf!4276 (_1!23481 (get!13697 lt!1362378))))) (content!6219 (_2!23481 (get!13697 lt!1362378))))))))

(assert (=> d!1160255 (= lt!1362546 e!2418183)))

(declare-fun c!679853 () Bool)

(assert (=> d!1160255 (= c!679853 ((_ is Nil!41450) (list!15407 (charsOf!4276 (_1!23481 (get!13697 lt!1362378))))))))

(assert (=> d!1160255 (= (++!10662 (list!15407 (charsOf!4276 (_1!23481 (get!13697 lt!1362378)))) (_2!23481 (get!13697 lt!1362378))) lt!1362546)))

(declare-fun b!3911281 () Bool)

(declare-fun res!1581996 () Bool)

(assert (=> b!3911281 (=> (not res!1581996) (not e!2418184))))

(assert (=> b!3911281 (= res!1581996 (= (size!31118 lt!1362546) (+ (size!31118 (list!15407 (charsOf!4276 (_1!23481 (get!13697 lt!1362378))))) (size!31118 (_2!23481 (get!13697 lt!1362378))))))))

(assert (= (and d!1160255 c!679853) b!3911279))

(assert (= (and d!1160255 (not c!679853)) b!3911280))

(assert (= (and d!1160255 res!1581995) b!3911281))

(assert (= (and b!3911281 res!1581996) b!3911282))

(declare-fun m!4474443 () Bool)

(assert (=> b!3911280 m!4474443))

(declare-fun m!4474445 () Bool)

(assert (=> d!1160255 m!4474445))

(assert (=> d!1160255 m!4473917))

(declare-fun m!4474447 () Bool)

(assert (=> d!1160255 m!4474447))

(declare-fun m!4474449 () Bool)

(assert (=> d!1160255 m!4474449))

(declare-fun m!4474451 () Bool)

(assert (=> b!3911281 m!4474451))

(assert (=> b!3911281 m!4473917))

(declare-fun m!4474453 () Bool)

(assert (=> b!3911281 m!4474453))

(assert (=> b!3911281 m!4473921))

(assert (=> b!3910835 d!1160255))

(declare-fun d!1160257 () Bool)

(assert (=> d!1160257 (= (list!15407 (charsOf!4276 (_1!23481 (get!13697 lt!1362378)))) (list!15408 (c!679729 (charsOf!4276 (_1!23481 (get!13697 lt!1362378))))))))

(declare-fun bs!585557 () Bool)

(assert (= bs!585557 d!1160257))

(declare-fun m!4474455 () Bool)

(assert (=> bs!585557 m!4474455))

(assert (=> b!3910835 d!1160257))

(declare-fun d!1160259 () Bool)

(declare-fun lt!1362547 () BalanceConc!24920)

(assert (=> d!1160259 (= (list!15407 lt!1362547) (originalCharacters!7052 (_1!23481 (get!13697 lt!1362378))))))

(assert (=> d!1160259 (= lt!1362547 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362378))))) (value!204516 (_1!23481 (get!13697 lt!1362378)))))))

(assert (=> d!1160259 (= (charsOf!4276 (_1!23481 (get!13697 lt!1362378))) lt!1362547)))

(declare-fun b_lambda!114501 () Bool)

(assert (=> (not b_lambda!114501) (not d!1160259)))

(declare-fun tb!232673 () Bool)

(declare-fun t!322971 () Bool)

(assert (=> (and b!3910608 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72)))) (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362378)))))) t!322971) tb!232673))

(declare-fun b!3911283 () Bool)

(declare-fun e!2418185 () Bool)

(declare-fun tp!1190571 () Bool)

(assert (=> b!3911283 (= e!2418185 (and (inv!55632 (c!679729 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362378))))) (value!204516 (_1!23481 (get!13697 lt!1362378)))))) tp!1190571))))

(declare-fun result!282050 () Bool)

(assert (=> tb!232673 (= result!282050 (and (inv!55633 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362378))))) (value!204516 (_1!23481 (get!13697 lt!1362378))))) e!2418185))))

(assert (= tb!232673 b!3911283))

(declare-fun m!4474457 () Bool)

(assert (=> b!3911283 m!4474457))

(declare-fun m!4474459 () Bool)

(assert (=> tb!232673 m!4474459))

(assert (=> d!1160259 t!322971))

(declare-fun b_and!297491 () Bool)

(assert (= b_and!297451 (and (=> t!322971 result!282050) b_and!297491)))

(declare-fun t!322973 () Bool)

(declare-fun tb!232675 () Bool)

(assert (=> (and b!3911170 (= (toChars!8755 (transformation!6452 (h!46871 (t!322858 rules!2768)))) (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362378)))))) t!322973) tb!232675))

(declare-fun result!282052 () Bool)

(assert (= result!282052 result!282050))

(assert (=> d!1160259 t!322973))

(declare-fun b_and!297493 () Bool)

(assert (= b_and!297465 (and (=> t!322973 result!282052) b_and!297493)))

(declare-fun t!322975 () Bool)

(declare-fun tb!232677 () Bool)

(assert (=> (and b!3910607 (= (toChars!8755 (transformation!6452 (h!46871 rules!2768))) (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362378)))))) t!322975) tb!232677))

(declare-fun result!282054 () Bool)

(assert (= result!282054 result!282050))

(assert (=> d!1160259 t!322975))

(declare-fun b_and!297495 () Bool)

(assert (= b_and!297453 (and (=> t!322975 result!282054) b_and!297495)))

(declare-fun tb!232679 () Bool)

(declare-fun t!322977 () Bool)

(assert (=> (and b!3911130 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 prefixTokens!80))))) (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362378)))))) t!322977) tb!232679))

(declare-fun result!282056 () Bool)

(assert (= result!282056 result!282050))

(assert (=> d!1160259 t!322977))

(declare-fun b_and!297497 () Bool)

(assert (= b_and!297457 (and (=> t!322977 result!282056) b_and!297497)))

(declare-fun t!322979 () Bool)

(declare-fun tb!232681 () Bool)

(assert (=> (and b!3911154 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 suffixTokens!72))))) (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362378)))))) t!322979) tb!232681))

(declare-fun result!282058 () Bool)

(assert (= result!282058 result!282050))

(assert (=> d!1160259 t!322979))

(declare-fun b_and!297499 () Bool)

(assert (= b_and!297461 (and (=> t!322979 result!282058) b_and!297499)))

(declare-fun tb!232683 () Bool)

(declare-fun t!322981 () Bool)

(assert (=> (and b!3910611 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80)))) (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362378)))))) t!322981) tb!232683))

(declare-fun result!282060 () Bool)

(assert (= result!282060 result!282050))

(assert (=> d!1160259 t!322981))

(declare-fun b_and!297501 () Bool)

(assert (= b_and!297449 (and (=> t!322981 result!282060) b_and!297501)))

(declare-fun m!4474461 () Bool)

(assert (=> d!1160259 m!4474461))

(declare-fun m!4474463 () Bool)

(assert (=> d!1160259 m!4474463))

(assert (=> b!3910835 d!1160259))

(declare-fun d!1160261 () Bool)

(assert (=> d!1160261 (= (get!13697 lt!1362378) (v!39193 lt!1362378))))

(assert (=> b!3910835 d!1160261))

(declare-fun b!3911284 () Bool)

(declare-fun e!2418186 () tuple2!40696)

(assert (=> b!3911284 (= e!2418186 (tuple2!40697 Nil!41452 (_2!23481 (v!39193 lt!1362443))))))

(declare-fun d!1160263 () Bool)

(declare-fun e!2418187 () Bool)

(assert (=> d!1160263 e!2418187))

(declare-fun c!679855 () Bool)

(declare-fun lt!1362550 () tuple2!40696)

(assert (=> d!1160263 (= c!679855 (> (size!31121 (_1!23482 lt!1362550)) 0))))

(assert (=> d!1160263 (= lt!1362550 e!2418186)))

(declare-fun c!679854 () Bool)

(declare-fun lt!1362548 () Option!8872)

(assert (=> d!1160263 (= c!679854 ((_ is Some!8871) lt!1362548))))

(assert (=> d!1160263 (= lt!1362548 (maxPrefix!3345 thiss!20629 rules!2768 (_2!23481 (v!39193 lt!1362443))))))

(assert (=> d!1160263 (= (lexList!1809 thiss!20629 rules!2768 (_2!23481 (v!39193 lt!1362443))) lt!1362550)))

(declare-fun b!3911285 () Bool)

(declare-fun e!2418188 () Bool)

(assert (=> b!3911285 (= e!2418187 e!2418188)))

(declare-fun res!1581997 () Bool)

(assert (=> b!3911285 (= res!1581997 (< (size!31118 (_2!23482 lt!1362550)) (size!31118 (_2!23481 (v!39193 lt!1362443)))))))

(assert (=> b!3911285 (=> (not res!1581997) (not e!2418188))))

(declare-fun b!3911286 () Bool)

(assert (=> b!3911286 (= e!2418187 (= (_2!23482 lt!1362550) (_2!23481 (v!39193 lt!1362443))))))

(declare-fun b!3911287 () Bool)

(assert (=> b!3911287 (= e!2418188 (not (isEmpty!24657 (_1!23482 lt!1362550))))))

(declare-fun b!3911288 () Bool)

(declare-fun lt!1362549 () tuple2!40696)

(assert (=> b!3911288 (= e!2418186 (tuple2!40697 (Cons!41452 (_1!23481 (v!39193 lt!1362548)) (_1!23482 lt!1362549)) (_2!23482 lt!1362549)))))

(assert (=> b!3911288 (= lt!1362549 (lexList!1809 thiss!20629 rules!2768 (_2!23481 (v!39193 lt!1362548))))))

(assert (= (and d!1160263 c!679854) b!3911288))

(assert (= (and d!1160263 (not c!679854)) b!3911284))

(assert (= (and d!1160263 c!679855) b!3911285))

(assert (= (and d!1160263 (not c!679855)) b!3911286))

(assert (= (and b!3911285 res!1581997) b!3911287))

(declare-fun m!4474465 () Bool)

(assert (=> d!1160263 m!4474465))

(declare-fun m!4474467 () Bool)

(assert (=> d!1160263 m!4474467))

(declare-fun m!4474469 () Bool)

(assert (=> b!3911285 m!4474469))

(declare-fun m!4474471 () Bool)

(assert (=> b!3911285 m!4474471))

(declare-fun m!4474473 () Bool)

(assert (=> b!3911287 m!4474473))

(declare-fun m!4474475 () Bool)

(assert (=> b!3911288 m!4474475))

(assert (=> b!3910944 d!1160263))

(declare-fun d!1160265 () Bool)

(assert (=> d!1160265 true))

(declare-fun order!22259 () Int)

(declare-fun order!22261 () Int)

(declare-fun lambda!126487 () Int)

(declare-fun dynLambda!17805 (Int Int) Int)

(declare-fun dynLambda!17806 (Int Int) Int)

(assert (=> d!1160265 (< (dynLambda!17805 order!22259 (toChars!8755 (transformation!6452 (h!46871 rules!2768)))) (dynLambda!17806 order!22261 lambda!126487))))

(assert (=> d!1160265 true))

(declare-fun order!22263 () Int)

(declare-fun dynLambda!17807 (Int Int) Int)

(assert (=> d!1160265 (< (dynLambda!17807 order!22263 (toValue!8896 (transformation!6452 (h!46871 rules!2768)))) (dynLambda!17806 order!22261 lambda!126487))))

(declare-fun Forall!1445 (Int) Bool)

(assert (=> d!1160265 (= (semiInverseModEq!2768 (toChars!8755 (transformation!6452 (h!46871 rules!2768))) (toValue!8896 (transformation!6452 (h!46871 rules!2768)))) (Forall!1445 lambda!126487))))

(declare-fun bs!585567 () Bool)

(assert (= bs!585567 d!1160265))

(declare-fun m!4474617 () Bool)

(assert (=> bs!585567 m!4474617))

(assert (=> d!1160149 d!1160265))

(declare-fun d!1160333 () Bool)

(declare-fun charsToBigInt!0 (List!41573 Int) Int)

(assert (=> d!1160333 (= (inv!15 (value!204516 (h!46872 suffixTokens!72))) (= (charsToBigInt!0 (text!47223 (value!204516 (h!46872 suffixTokens!72))) 0) (value!204511 (value!204516 (h!46872 suffixTokens!72)))))))

(declare-fun bs!585569 () Bool)

(assert (= bs!585569 d!1160333))

(declare-fun m!4474639 () Bool)

(assert (=> bs!585569 m!4474639))

(assert (=> b!3910650 d!1160333))

(declare-fun d!1160343 () Bool)

(assert (=> d!1160343 true))

(declare-fun order!22269 () Int)

(declare-fun lambda!126493 () Int)

(declare-fun dynLambda!17808 (Int Int) Int)

(assert (=> d!1160343 (< (dynLambda!17807 order!22263 (toValue!8896 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72))))) (dynLambda!17808 order!22269 lambda!126493))))

(declare-fun Forall2!1044 (Int) Bool)

(assert (=> d!1160343 (= (equivClasses!2667 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72)))) (toValue!8896 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72))))) (Forall2!1044 lambda!126493))))

(declare-fun bs!585570 () Bool)

(assert (= bs!585570 d!1160343))

(declare-fun m!4474649 () Bool)

(assert (=> bs!585570 m!4474649))

(assert (=> b!3911088 d!1160343))

(declare-fun d!1160347 () Bool)

(declare-fun c!679890 () Bool)

(assert (=> d!1160347 (= c!679890 ((_ is IntegerValue!20046) (value!204516 (h!46872 (t!322859 prefixTokens!80)))))))

(declare-fun e!2418269 () Bool)

(assert (=> d!1160347 (= (inv!21 (value!204516 (h!46872 (t!322859 prefixTokens!80)))) e!2418269)))

(declare-fun b!3911425 () Bool)

(declare-fun e!2418267 () Bool)

(assert (=> b!3911425 (= e!2418267 (inv!15 (value!204516 (h!46872 (t!322859 prefixTokens!80)))))))

(declare-fun b!3911426 () Bool)

(declare-fun e!2418268 () Bool)

(assert (=> b!3911426 (= e!2418269 e!2418268)))

(declare-fun c!679891 () Bool)

(assert (=> b!3911426 (= c!679891 ((_ is IntegerValue!20047) (value!204516 (h!46872 (t!322859 prefixTokens!80)))))))

(declare-fun b!3911427 () Bool)

(assert (=> b!3911427 (= e!2418269 (inv!16 (value!204516 (h!46872 (t!322859 prefixTokens!80)))))))

(declare-fun b!3911428 () Bool)

(declare-fun res!1582050 () Bool)

(assert (=> b!3911428 (=> res!1582050 e!2418267)))

(assert (=> b!3911428 (= res!1582050 (not ((_ is IntegerValue!20048) (value!204516 (h!46872 (t!322859 prefixTokens!80))))))))

(assert (=> b!3911428 (= e!2418268 e!2418267)))

(declare-fun b!3911429 () Bool)

(assert (=> b!3911429 (= e!2418268 (inv!17 (value!204516 (h!46872 (t!322859 prefixTokens!80)))))))

(assert (= (and d!1160347 c!679890) b!3911427))

(assert (= (and d!1160347 (not c!679890)) b!3911426))

(assert (= (and b!3911426 c!679891) b!3911429))

(assert (= (and b!3911426 (not c!679891)) b!3911428))

(assert (= (and b!3911428 (not res!1582050)) b!3911425))

(declare-fun m!4474655 () Bool)

(assert (=> b!3911425 m!4474655))

(declare-fun m!4474657 () Bool)

(assert (=> b!3911427 m!4474657))

(declare-fun m!4474659 () Bool)

(assert (=> b!3911429 m!4474659))

(assert (=> b!3911128 d!1160347))

(declare-fun b!3911436 () Bool)

(declare-fun res!1582051 () Bool)

(declare-fun e!2418279 () Bool)

(assert (=> b!3911436 (=> res!1582051 e!2418279)))

(assert (=> b!3911436 (= res!1582051 (not ((_ is ElementMatch!11357) (regex!6452 (rule!9366 (_1!23481 (get!13697 lt!1362473)))))))))

(declare-fun e!2418278 () Bool)

(assert (=> b!3911436 (= e!2418278 e!2418279)))

(declare-fun b!3911437 () Bool)

(declare-fun res!1582052 () Bool)

(declare-fun e!2418275 () Bool)

(assert (=> b!3911437 (=> res!1582052 e!2418275)))

(assert (=> b!3911437 (= res!1582052 (not (isEmpty!24656 (tail!5976 (list!15407 (charsOf!4276 (_1!23481 (get!13697 lt!1362473))))))))))

(declare-fun b!3911438 () Bool)

(declare-fun e!2418276 () Bool)

(assert (=> b!3911438 (= e!2418276 e!2418278)))

(declare-fun c!679897 () Bool)

(assert (=> b!3911438 (= c!679897 ((_ is EmptyLang!11357) (regex!6452 (rule!9366 (_1!23481 (get!13697 lt!1362473))))))))

(declare-fun bm!284291 () Bool)

(declare-fun call!284296 () Bool)

(assert (=> bm!284291 (= call!284296 (isEmpty!24656 (list!15407 (charsOf!4276 (_1!23481 (get!13697 lt!1362473))))))))

(declare-fun b!3911439 () Bool)

(declare-fun res!1582055 () Bool)

(declare-fun e!2418273 () Bool)

(assert (=> b!3911439 (=> (not res!1582055) (not e!2418273))))

(assert (=> b!3911439 (= res!1582055 (not call!284296))))

(declare-fun b!3911440 () Bool)

(assert (=> b!3911440 (= e!2418273 (= (head!8258 (list!15407 (charsOf!4276 (_1!23481 (get!13697 lt!1362473))))) (c!679728 (regex!6452 (rule!9366 (_1!23481 (get!13697 lt!1362473)))))))))

(declare-fun b!3911441 () Bool)

(declare-fun res!1582057 () Bool)

(assert (=> b!3911441 (=> (not res!1582057) (not e!2418273))))

(assert (=> b!3911441 (= res!1582057 (isEmpty!24656 (tail!5976 (list!15407 (charsOf!4276 (_1!23481 (get!13697 lt!1362473)))))))))

(declare-fun b!3911442 () Bool)

(declare-fun e!2418277 () Bool)

(assert (=> b!3911442 (= e!2418277 (matchR!5446 (derivativeStep!3433 (regex!6452 (rule!9366 (_1!23481 (get!13697 lt!1362473)))) (head!8258 (list!15407 (charsOf!4276 (_1!23481 (get!13697 lt!1362473)))))) (tail!5976 (list!15407 (charsOf!4276 (_1!23481 (get!13697 lt!1362473)))))))))

(declare-fun b!3911443 () Bool)

(declare-fun e!2418272 () Bool)

(assert (=> b!3911443 (= e!2418272 e!2418275)))

(declare-fun res!1582053 () Bool)

(assert (=> b!3911443 (=> res!1582053 e!2418275)))

(assert (=> b!3911443 (= res!1582053 call!284296)))

(declare-fun d!1160353 () Bool)

(assert (=> d!1160353 e!2418276))

(declare-fun c!679895 () Bool)

(assert (=> d!1160353 (= c!679895 ((_ is EmptyExpr!11357) (regex!6452 (rule!9366 (_1!23481 (get!13697 lt!1362473))))))))

(declare-fun lt!1362581 () Bool)

(assert (=> d!1160353 (= lt!1362581 e!2418277)))

(declare-fun c!679896 () Bool)

(assert (=> d!1160353 (= c!679896 (isEmpty!24656 (list!15407 (charsOf!4276 (_1!23481 (get!13697 lt!1362473))))))))

(assert (=> d!1160353 (validRegex!5167 (regex!6452 (rule!9366 (_1!23481 (get!13697 lt!1362473)))))))

(assert (=> d!1160353 (= (matchR!5446 (regex!6452 (rule!9366 (_1!23481 (get!13697 lt!1362473)))) (list!15407 (charsOf!4276 (_1!23481 (get!13697 lt!1362473))))) lt!1362581)))

(declare-fun b!3911444 () Bool)

(assert (=> b!3911444 (= e!2418279 e!2418272)))

(declare-fun res!1582058 () Bool)

(assert (=> b!3911444 (=> (not res!1582058) (not e!2418272))))

(assert (=> b!3911444 (= res!1582058 (not lt!1362581))))

(declare-fun b!3911445 () Bool)

(assert (=> b!3911445 (= e!2418277 (nullable!3968 (regex!6452 (rule!9366 (_1!23481 (get!13697 lt!1362473))))))))

(declare-fun b!3911446 () Bool)

(assert (=> b!3911446 (= e!2418275 (not (= (head!8258 (list!15407 (charsOf!4276 (_1!23481 (get!13697 lt!1362473))))) (c!679728 (regex!6452 (rule!9366 (_1!23481 (get!13697 lt!1362473))))))))))

(declare-fun b!3911447 () Bool)

(declare-fun res!1582054 () Bool)

(assert (=> b!3911447 (=> res!1582054 e!2418279)))

(assert (=> b!3911447 (= res!1582054 e!2418273)))

(declare-fun res!1582056 () Bool)

(assert (=> b!3911447 (=> (not res!1582056) (not e!2418273))))

(assert (=> b!3911447 (= res!1582056 lt!1362581)))

(declare-fun b!3911448 () Bool)

(assert (=> b!3911448 (= e!2418276 (= lt!1362581 call!284296))))

(declare-fun b!3911449 () Bool)

(assert (=> b!3911449 (= e!2418278 (not lt!1362581))))

(assert (= (and d!1160353 c!679896) b!3911445))

(assert (= (and d!1160353 (not c!679896)) b!3911442))

(assert (= (and d!1160353 c!679895) b!3911448))

(assert (= (and d!1160353 (not c!679895)) b!3911438))

(assert (= (and b!3911438 c!679897) b!3911449))

(assert (= (and b!3911438 (not c!679897)) b!3911436))

(assert (= (and b!3911436 (not res!1582051)) b!3911447))

(assert (= (and b!3911447 res!1582056) b!3911439))

(assert (= (and b!3911439 res!1582055) b!3911441))

(assert (= (and b!3911441 res!1582057) b!3911440))

(assert (= (and b!3911447 (not res!1582054)) b!3911444))

(assert (= (and b!3911444 res!1582058) b!3911443))

(assert (= (and b!3911443 (not res!1582053)) b!3911437))

(assert (= (and b!3911437 (not res!1582052)) b!3911446))

(assert (= (or b!3911448 b!3911439 b!3911443) bm!284291))

(assert (=> b!3911440 m!4474147))

(declare-fun m!4474667 () Bool)

(assert (=> b!3911440 m!4474667))

(assert (=> b!3911442 m!4474147))

(assert (=> b!3911442 m!4474667))

(assert (=> b!3911442 m!4474667))

(declare-fun m!4474671 () Bool)

(assert (=> b!3911442 m!4474671))

(assert (=> b!3911442 m!4474147))

(declare-fun m!4474675 () Bool)

(assert (=> b!3911442 m!4474675))

(assert (=> b!3911442 m!4474671))

(assert (=> b!3911442 m!4474675))

(declare-fun m!4474677 () Bool)

(assert (=> b!3911442 m!4474677))

(assert (=> d!1160353 m!4474147))

(declare-fun m!4474679 () Bool)

(assert (=> d!1160353 m!4474679))

(declare-fun m!4474681 () Bool)

(assert (=> d!1160353 m!4474681))

(assert (=> b!3911441 m!4474147))

(assert (=> b!3911441 m!4474675))

(assert (=> b!3911441 m!4474675))

(declare-fun m!4474683 () Bool)

(assert (=> b!3911441 m!4474683))

(declare-fun m!4474687 () Bool)

(assert (=> b!3911445 m!4474687))

(assert (=> b!3911437 m!4474147))

(assert (=> b!3911437 m!4474675))

(assert (=> b!3911437 m!4474675))

(assert (=> b!3911437 m!4474683))

(assert (=> b!3911446 m!4474147))

(assert (=> b!3911446 m!4474667))

(assert (=> bm!284291 m!4474147))

(assert (=> bm!284291 m!4474679))

(assert (=> b!3911034 d!1160353))

(declare-fun d!1160365 () Bool)

(assert (=> d!1160365 (= (get!13697 lt!1362473) (v!39193 lt!1362473))))

(assert (=> b!3911034 d!1160365))

(declare-fun d!1160367 () Bool)

(assert (=> d!1160367 (= (list!15407 (charsOf!4276 (_1!23481 (get!13697 lt!1362473)))) (list!15408 (c!679729 (charsOf!4276 (_1!23481 (get!13697 lt!1362473))))))))

(declare-fun bs!585572 () Bool)

(assert (= bs!585572 d!1160367))

(declare-fun m!4474697 () Bool)

(assert (=> bs!585572 m!4474697))

(assert (=> b!3911034 d!1160367))

(declare-fun d!1160371 () Bool)

(declare-fun lt!1362586 () BalanceConc!24920)

(assert (=> d!1160371 (= (list!15407 lt!1362586) (originalCharacters!7052 (_1!23481 (get!13697 lt!1362473))))))

(assert (=> d!1160371 (= lt!1362586 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362473))))) (value!204516 (_1!23481 (get!13697 lt!1362473)))))))

(assert (=> d!1160371 (= (charsOf!4276 (_1!23481 (get!13697 lt!1362473))) lt!1362586)))

(declare-fun b_lambda!114511 () Bool)

(assert (=> (not b_lambda!114511) (not d!1160371)))

(declare-fun tb!232733 () Bool)

(declare-fun t!323031 () Bool)

(assert (=> (and b!3911170 (= (toChars!8755 (transformation!6452 (h!46871 (t!322858 rules!2768)))) (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362473)))))) t!323031) tb!232733))

(declare-fun b!3911461 () Bool)

(declare-fun e!2418286 () Bool)

(declare-fun tp!1190575 () Bool)

(assert (=> b!3911461 (= e!2418286 (and (inv!55632 (c!679729 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362473))))) (value!204516 (_1!23481 (get!13697 lt!1362473)))))) tp!1190575))))

(declare-fun result!282110 () Bool)

(assert (=> tb!232733 (= result!282110 (and (inv!55633 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362473))))) (value!204516 (_1!23481 (get!13697 lt!1362473))))) e!2418286))))

(assert (= tb!232733 b!3911461))

(declare-fun m!4474701 () Bool)

(assert (=> b!3911461 m!4474701))

(declare-fun m!4474703 () Bool)

(assert (=> tb!232733 m!4474703))

(assert (=> d!1160371 t!323031))

(declare-fun b_and!297551 () Bool)

(assert (= b_and!297493 (and (=> t!323031 result!282110) b_and!297551)))

(declare-fun t!323033 () Bool)

(declare-fun tb!232735 () Bool)

(assert (=> (and b!3911130 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 prefixTokens!80))))) (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362473)))))) t!323033) tb!232735))

(declare-fun result!282112 () Bool)

(assert (= result!282112 result!282110))

(assert (=> d!1160371 t!323033))

(declare-fun b_and!297553 () Bool)

(assert (= b_and!297497 (and (=> t!323033 result!282112) b_and!297553)))

(declare-fun tb!232737 () Bool)

(declare-fun t!323035 () Bool)

(assert (=> (and b!3910607 (= (toChars!8755 (transformation!6452 (h!46871 rules!2768))) (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362473)))))) t!323035) tb!232737))

(declare-fun result!282114 () Bool)

(assert (= result!282114 result!282110))

(assert (=> d!1160371 t!323035))

(declare-fun b_and!297555 () Bool)

(assert (= b_and!297495 (and (=> t!323035 result!282114) b_and!297555)))

(declare-fun t!323037 () Bool)

(declare-fun tb!232739 () Bool)

(assert (=> (and b!3910611 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80)))) (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362473)))))) t!323037) tb!232739))

(declare-fun result!282116 () Bool)

(assert (= result!282116 result!282110))

(assert (=> d!1160371 t!323037))

(declare-fun b_and!297557 () Bool)

(assert (= b_and!297501 (and (=> t!323037 result!282116) b_and!297557)))

(declare-fun t!323039 () Bool)

(declare-fun tb!232741 () Bool)

(assert (=> (and b!3911154 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 suffixTokens!72))))) (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362473)))))) t!323039) tb!232741))

(declare-fun result!282118 () Bool)

(assert (= result!282118 result!282110))

(assert (=> d!1160371 t!323039))

(declare-fun b_and!297559 () Bool)

(assert (= b_and!297499 (and (=> t!323039 result!282118) b_and!297559)))

(declare-fun t!323041 () Bool)

(declare-fun tb!232743 () Bool)

(assert (=> (and b!3910608 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72)))) (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362473)))))) t!323041) tb!232743))

(declare-fun result!282120 () Bool)

(assert (= result!282120 result!282110))

(assert (=> d!1160371 t!323041))

(declare-fun b_and!297561 () Bool)

(assert (= b_and!297491 (and (=> t!323041 result!282120) b_and!297561)))

(declare-fun m!4474705 () Bool)

(assert (=> d!1160371 m!4474705))

(declare-fun m!4474707 () Bool)

(assert (=> d!1160371 m!4474707))

(assert (=> b!3911034 d!1160371))

(declare-fun d!1160377 () Bool)

(declare-fun isBalanced!3635 (Conc!12663) Bool)

(assert (=> d!1160377 (= (inv!55633 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72)))) (value!204516 (h!46872 suffixTokens!72)))) (isBalanced!3635 (c!679729 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72)))) (value!204516 (h!46872 suffixTokens!72))))))))

(declare-fun bs!585573 () Bool)

(assert (= bs!585573 d!1160377))

(declare-fun m!4474709 () Bool)

(assert (=> bs!585573 m!4474709))

(assert (=> tb!232607 d!1160377))

(declare-fun b!3911468 () Bool)

(declare-fun e!2418293 () Bool)

(declare-fun e!2418294 () Bool)

(assert (=> b!3911468 (= e!2418293 e!2418294)))

(declare-fun res!1582067 () Bool)

(assert (=> b!3911468 (=> (not res!1582067) (not e!2418294))))

(assert (=> b!3911468 (= res!1582067 (not ((_ is Nil!41450) (++!10662 lt!1362321 (_2!23481 (v!39193 lt!1362333))))))))

(declare-fun b!3911470 () Bool)

(assert (=> b!3911470 (= e!2418294 (isPrefix!3547 (tail!5976 lt!1362321) (tail!5976 (++!10662 lt!1362321 (_2!23481 (v!39193 lt!1362333))))))))

(declare-fun b!3911469 () Bool)

(declare-fun res!1582068 () Bool)

(assert (=> b!3911469 (=> (not res!1582068) (not e!2418294))))

(assert (=> b!3911469 (= res!1582068 (= (head!8258 lt!1362321) (head!8258 (++!10662 lt!1362321 (_2!23481 (v!39193 lt!1362333))))))))

(declare-fun b!3911471 () Bool)

(declare-fun e!2418295 () Bool)

(assert (=> b!3911471 (= e!2418295 (>= (size!31118 (++!10662 lt!1362321 (_2!23481 (v!39193 lt!1362333)))) (size!31118 lt!1362321)))))

(declare-fun d!1160379 () Bool)

(assert (=> d!1160379 e!2418295))

(declare-fun res!1582069 () Bool)

(assert (=> d!1160379 (=> res!1582069 e!2418295)))

(declare-fun lt!1362590 () Bool)

(assert (=> d!1160379 (= res!1582069 (not lt!1362590))))

(assert (=> d!1160379 (= lt!1362590 e!2418293)))

(declare-fun res!1582070 () Bool)

(assert (=> d!1160379 (=> res!1582070 e!2418293)))

(assert (=> d!1160379 (= res!1582070 ((_ is Nil!41450) lt!1362321))))

(assert (=> d!1160379 (= (isPrefix!3547 lt!1362321 (++!10662 lt!1362321 (_2!23481 (v!39193 lt!1362333)))) lt!1362590)))

(assert (= (and d!1160379 (not res!1582070)) b!3911468))

(assert (= (and b!3911468 res!1582067) b!3911469))

(assert (= (and b!3911469 res!1582068) b!3911470))

(assert (= (and d!1160379 (not res!1582069)) b!3911471))

(assert (=> b!3911470 m!4473787))

(assert (=> b!3911470 m!4473695))

(declare-fun m!4474719 () Bool)

(assert (=> b!3911470 m!4474719))

(assert (=> b!3911470 m!4473787))

(assert (=> b!3911470 m!4474719))

(declare-fun m!4474721 () Bool)

(assert (=> b!3911470 m!4474721))

(assert (=> b!3911469 m!4473783))

(assert (=> b!3911469 m!4473695))

(declare-fun m!4474723 () Bool)

(assert (=> b!3911469 m!4474723))

(assert (=> b!3911471 m!4473695))

(declare-fun m!4474725 () Bool)

(assert (=> b!3911471 m!4474725))

(assert (=> b!3911471 m!4473671))

(assert (=> d!1160145 d!1160379))

(assert (=> d!1160145 d!1160139))

(declare-fun d!1160387 () Bool)

(assert (=> d!1160387 (isPrefix!3547 lt!1362321 (++!10662 lt!1362321 (_2!23481 (v!39193 lt!1362333))))))

(assert (=> d!1160387 true))

(declare-fun _$46!1555 () Unit!59591)

(assert (=> d!1160387 (= (choose!23152 lt!1362321 (_2!23481 (v!39193 lt!1362333))) _$46!1555)))

(declare-fun bs!585575 () Bool)

(assert (= bs!585575 d!1160387))

(assert (=> bs!585575 m!4473695))

(assert (=> bs!585575 m!4473695))

(assert (=> bs!585575 m!4474135))

(assert (=> d!1160145 d!1160387))

(declare-fun d!1160395 () Bool)

(assert (=> d!1160395 (= (inv!55627 (tag!7312 (rule!9366 (h!46872 (t!322859 prefixTokens!80))))) (= (mod (str.len (value!204515 (tag!7312 (rule!9366 (h!46872 (t!322859 prefixTokens!80)))))) 2) 0))))

(assert (=> b!3911129 d!1160395))

(declare-fun d!1160397 () Bool)

(declare-fun res!1582071 () Bool)

(declare-fun e!2418301 () Bool)

(assert (=> d!1160397 (=> (not res!1582071) (not e!2418301))))

(assert (=> d!1160397 (= res!1582071 (semiInverseModEq!2768 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 prefixTokens!80))))) (toValue!8896 (transformation!6452 (rule!9366 (h!46872 (t!322859 prefixTokens!80)))))))))

(assert (=> d!1160397 (= (inv!55631 (transformation!6452 (rule!9366 (h!46872 (t!322859 prefixTokens!80))))) e!2418301)))

(declare-fun b!3911482 () Bool)

(assert (=> b!3911482 (= e!2418301 (equivClasses!2667 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 prefixTokens!80))))) (toValue!8896 (transformation!6452 (rule!9366 (h!46872 (t!322859 prefixTokens!80)))))))))

(assert (= (and d!1160397 res!1582071) b!3911482))

(declare-fun m!4474743 () Bool)

(assert (=> d!1160397 m!4474743))

(declare-fun m!4474747 () Bool)

(assert (=> b!3911482 m!4474747))

(assert (=> b!3911129 d!1160397))

(declare-fun b!3911489 () Bool)

(declare-fun res!1582074 () Bool)

(declare-fun e!2418305 () Bool)

(assert (=> b!3911489 (=> (not res!1582074) (not e!2418305))))

(declare-fun lt!1362599 () Option!8872)

(assert (=> b!3911489 (= res!1582074 (< (size!31118 (_2!23481 (get!13697 lt!1362599))) (size!31118 lt!1362329)))))

(declare-fun d!1160403 () Bool)

(declare-fun e!2418307 () Bool)

(assert (=> d!1160403 e!2418307))

(declare-fun res!1582079 () Bool)

(assert (=> d!1160403 (=> res!1582079 e!2418307)))

(assert (=> d!1160403 (= res!1582079 (isEmpty!24659 lt!1362599))))

(declare-fun e!2418306 () Option!8872)

(assert (=> d!1160403 (= lt!1362599 e!2418306)))

(declare-fun c!679909 () Bool)

(assert (=> d!1160403 (= c!679909 (and ((_ is Cons!41451) (t!322858 rules!2768)) ((_ is Nil!41451) (t!322858 (t!322858 rules!2768)))))))

(declare-fun lt!1362598 () Unit!59591)

(declare-fun lt!1362596 () Unit!59591)

(assert (=> d!1160403 (= lt!1362598 lt!1362596)))

(assert (=> d!1160403 (isPrefix!3547 lt!1362329 lt!1362329)))

(assert (=> d!1160403 (= lt!1362596 (lemmaIsPrefixRefl!2248 lt!1362329 lt!1362329))))

(assert (=> d!1160403 (rulesValidInductive!2318 thiss!20629 (t!322858 rules!2768))))

(assert (=> d!1160403 (= (maxPrefix!3345 thiss!20629 (t!322858 rules!2768) lt!1362329) lt!1362599)))

(declare-fun b!3911490 () Bool)

(declare-fun call!284297 () Option!8872)

(assert (=> b!3911490 (= e!2418306 call!284297)))

(declare-fun b!3911491 () Bool)

(declare-fun res!1582078 () Bool)

(assert (=> b!3911491 (=> (not res!1582078) (not e!2418305))))

(assert (=> b!3911491 (= res!1582078 (matchR!5446 (regex!6452 (rule!9366 (_1!23481 (get!13697 lt!1362599)))) (list!15407 (charsOf!4276 (_1!23481 (get!13697 lt!1362599))))))))

(declare-fun b!3911492 () Bool)

(declare-fun lt!1362595 () Option!8872)

(declare-fun lt!1362597 () Option!8872)

(assert (=> b!3911492 (= e!2418306 (ite (and ((_ is None!8871) lt!1362595) ((_ is None!8871) lt!1362597)) None!8871 (ite ((_ is None!8871) lt!1362597) lt!1362595 (ite ((_ is None!8871) lt!1362595) lt!1362597 (ite (>= (size!31117 (_1!23481 (v!39193 lt!1362595))) (size!31117 (_1!23481 (v!39193 lt!1362597)))) lt!1362595 lt!1362597)))))))

(assert (=> b!3911492 (= lt!1362595 call!284297)))

(assert (=> b!3911492 (= lt!1362597 (maxPrefix!3345 thiss!20629 (t!322858 (t!322858 rules!2768)) lt!1362329))))

(declare-fun b!3911493 () Bool)

(assert (=> b!3911493 (= e!2418307 e!2418305)))

(declare-fun res!1582077 () Bool)

(assert (=> b!3911493 (=> (not res!1582077) (not e!2418305))))

(assert (=> b!3911493 (= res!1582077 (isDefined!6917 lt!1362599))))

(declare-fun b!3911494 () Bool)

(declare-fun res!1582080 () Bool)

(assert (=> b!3911494 (=> (not res!1582080) (not e!2418305))))

(assert (=> b!3911494 (= res!1582080 (= (list!15407 (charsOf!4276 (_1!23481 (get!13697 lt!1362599)))) (originalCharacters!7052 (_1!23481 (get!13697 lt!1362599)))))))

(declare-fun b!3911495 () Bool)

(declare-fun res!1582076 () Bool)

(assert (=> b!3911495 (=> (not res!1582076) (not e!2418305))))

(assert (=> b!3911495 (= res!1582076 (= (++!10662 (list!15407 (charsOf!4276 (_1!23481 (get!13697 lt!1362599)))) (_2!23481 (get!13697 lt!1362599))) lt!1362329))))

(declare-fun bm!284292 () Bool)

(assert (=> bm!284292 (= call!284297 (maxPrefixOneRule!2415 thiss!20629 (h!46871 (t!322858 rules!2768)) lt!1362329))))

(declare-fun b!3911496 () Bool)

(declare-fun res!1582075 () Bool)

(assert (=> b!3911496 (=> (not res!1582075) (not e!2418305))))

(assert (=> b!3911496 (= res!1582075 (= (value!204516 (_1!23481 (get!13697 lt!1362599))) (apply!9691 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362599)))) (seqFromList!4719 (originalCharacters!7052 (_1!23481 (get!13697 lt!1362599)))))))))

(declare-fun b!3911497 () Bool)

(assert (=> b!3911497 (= e!2418305 (contains!8328 (t!322858 rules!2768) (rule!9366 (_1!23481 (get!13697 lt!1362599)))))))

(assert (= (and d!1160403 c!679909) b!3911490))

(assert (= (and d!1160403 (not c!679909)) b!3911492))

(assert (= (or b!3911490 b!3911492) bm!284292))

(assert (= (and d!1160403 (not res!1582079)) b!3911493))

(assert (= (and b!3911493 res!1582077) b!3911494))

(assert (= (and b!3911494 res!1582080) b!3911489))

(assert (= (and b!3911489 res!1582074) b!3911495))

(assert (= (and b!3911495 res!1582076) b!3911496))

(assert (= (and b!3911496 res!1582075) b!3911491))

(assert (= (and b!3911491 res!1582078) b!3911497))

(declare-fun m!4474767 () Bool)

(assert (=> b!3911494 m!4474767))

(declare-fun m!4474769 () Bool)

(assert (=> b!3911494 m!4474769))

(assert (=> b!3911494 m!4474769))

(declare-fun m!4474771 () Bool)

(assert (=> b!3911494 m!4474771))

(declare-fun m!4474773 () Bool)

(assert (=> b!3911493 m!4474773))

(assert (=> b!3911496 m!4474767))

(declare-fun m!4474775 () Bool)

(assert (=> b!3911496 m!4474775))

(assert (=> b!3911496 m!4474775))

(declare-fun m!4474777 () Bool)

(assert (=> b!3911496 m!4474777))

(assert (=> b!3911497 m!4474767))

(declare-fun m!4474779 () Bool)

(assert (=> b!3911497 m!4474779))

(declare-fun m!4474783 () Bool)

(assert (=> b!3911492 m!4474783))

(assert (=> b!3911491 m!4474767))

(assert (=> b!3911491 m!4474769))

(assert (=> b!3911491 m!4474769))

(assert (=> b!3911491 m!4474771))

(assert (=> b!3911491 m!4474771))

(declare-fun m!4474792 () Bool)

(assert (=> b!3911491 m!4474792))

(declare-fun m!4474795 () Bool)

(assert (=> d!1160403 m!4474795))

(assert (=> d!1160403 m!4474163))

(assert (=> d!1160403 m!4474165))

(declare-fun m!4474797 () Bool)

(assert (=> d!1160403 m!4474797))

(assert (=> b!3911489 m!4474767))

(declare-fun m!4474801 () Bool)

(assert (=> b!3911489 m!4474801))

(assert (=> b!3911489 m!4473711))

(assert (=> b!3911495 m!4474767))

(assert (=> b!3911495 m!4474769))

(assert (=> b!3911495 m!4474769))

(assert (=> b!3911495 m!4474771))

(assert (=> b!3911495 m!4474771))

(declare-fun m!4474805 () Bool)

(assert (=> b!3911495 m!4474805))

(declare-fun m!4474807 () Bool)

(assert (=> bm!284292 m!4474807))

(assert (=> b!3911035 d!1160403))

(declare-fun b!3911516 () Bool)

(declare-fun e!2418319 () Option!8872)

(assert (=> b!3911516 (= e!2418319 None!8871)))

(declare-fun d!1160411 () Bool)

(declare-fun e!2418318 () Bool)

(assert (=> d!1160411 e!2418318))

(declare-fun res!1582091 () Bool)

(assert (=> d!1160411 (=> res!1582091 e!2418318)))

(declare-fun lt!1362605 () Option!8872)

(assert (=> d!1160411 (= res!1582091 (isEmpty!24659 lt!1362605))))

(assert (=> d!1160411 (= lt!1362605 e!2418319)))

(declare-fun c!679914 () Bool)

(declare-fun lt!1362603 () tuple2!40698)

(assert (=> d!1160411 (= c!679914 (isEmpty!24656 (_1!23483 lt!1362603)))))

(assert (=> d!1160411 (= lt!1362603 (findLongestMatch!1142 (regex!6452 (h!46871 rules!2768)) lt!1362329))))

(assert (=> d!1160411 (ruleValid!2400 thiss!20629 (h!46871 rules!2768))))

(assert (=> d!1160411 (= (maxPrefixOneRule!2415 thiss!20629 (h!46871 rules!2768) lt!1362329) lt!1362605)))

(declare-fun b!3911517 () Bool)

(declare-fun e!2418320 () Bool)

(assert (=> b!3911517 (= e!2418320 (= (size!31117 (_1!23481 (get!13697 lt!1362605))) (size!31118 (originalCharacters!7052 (_1!23481 (get!13697 lt!1362605))))))))

(declare-fun b!3911518 () Bool)

(assert (=> b!3911518 (= e!2418318 e!2418320)))

(declare-fun res!1582094 () Bool)

(assert (=> b!3911518 (=> (not res!1582094) (not e!2418320))))

(assert (=> b!3911518 (= res!1582094 (matchR!5446 (regex!6452 (h!46871 rules!2768)) (list!15407 (charsOf!4276 (_1!23481 (get!13697 lt!1362605))))))))

(declare-fun b!3911519 () Bool)

(declare-fun e!2418317 () Bool)

(assert (=> b!3911519 (= e!2418317 (matchR!5446 (regex!6452 (h!46871 rules!2768)) (_1!23483 (findLongestMatchInner!1229 (regex!6452 (h!46871 rules!2768)) Nil!41450 (size!31118 Nil!41450) lt!1362329 lt!1362329 (size!31118 lt!1362329)))))))

(declare-fun b!3911520 () Bool)

(declare-fun res!1582097 () Bool)

(assert (=> b!3911520 (=> (not res!1582097) (not e!2418320))))

(assert (=> b!3911520 (= res!1582097 (= (rule!9366 (_1!23481 (get!13697 lt!1362605))) (h!46871 rules!2768)))))

(declare-fun b!3911521 () Bool)

(declare-fun res!1582095 () Bool)

(assert (=> b!3911521 (=> (not res!1582095) (not e!2418320))))

(assert (=> b!3911521 (= res!1582095 (= (++!10662 (list!15407 (charsOf!4276 (_1!23481 (get!13697 lt!1362605)))) (_2!23481 (get!13697 lt!1362605))) lt!1362329))))

(declare-fun b!3911522 () Bool)

(declare-fun res!1582093 () Bool)

(assert (=> b!3911522 (=> (not res!1582093) (not e!2418320))))

(assert (=> b!3911522 (= res!1582093 (= (value!204516 (_1!23481 (get!13697 lt!1362605))) (apply!9691 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362605)))) (seqFromList!4719 (originalCharacters!7052 (_1!23481 (get!13697 lt!1362605)))))))))

(declare-fun b!3911523 () Bool)

(declare-fun res!1582092 () Bool)

(assert (=> b!3911523 (=> (not res!1582092) (not e!2418320))))

(assert (=> b!3911523 (= res!1582092 (< (size!31118 (_2!23481 (get!13697 lt!1362605))) (size!31118 lt!1362329)))))

(declare-fun b!3911524 () Bool)

(assert (=> b!3911524 (= e!2418319 (Some!8871 (tuple2!40695 (Token!12043 (apply!9691 (transformation!6452 (h!46871 rules!2768)) (seqFromList!4719 (_1!23483 lt!1362603))) (h!46871 rules!2768) (size!31120 (seqFromList!4719 (_1!23483 lt!1362603))) (_1!23483 lt!1362603)) (_2!23483 lt!1362603))))))

(declare-fun lt!1362602 () Unit!59591)

(assert (=> b!3911524 (= lt!1362602 (longestMatchIsAcceptedByMatchOrIsEmpty!1202 (regex!6452 (h!46871 rules!2768)) lt!1362329))))

(declare-fun res!1582096 () Bool)

(assert (=> b!3911524 (= res!1582096 (isEmpty!24656 (_1!23483 (findLongestMatchInner!1229 (regex!6452 (h!46871 rules!2768)) Nil!41450 (size!31118 Nil!41450) lt!1362329 lt!1362329 (size!31118 lt!1362329)))))))

(assert (=> b!3911524 (=> res!1582096 e!2418317)))

(assert (=> b!3911524 e!2418317))

(declare-fun lt!1362606 () Unit!59591)

(assert (=> b!3911524 (= lt!1362606 lt!1362602)))

(declare-fun lt!1362604 () Unit!59591)

(assert (=> b!3911524 (= lt!1362604 (lemmaSemiInverse!1735 (transformation!6452 (h!46871 rules!2768)) (seqFromList!4719 (_1!23483 lt!1362603))))))

(assert (= (and d!1160411 c!679914) b!3911516))

(assert (= (and d!1160411 (not c!679914)) b!3911524))

(assert (= (and b!3911524 (not res!1582096)) b!3911519))

(assert (= (and d!1160411 (not res!1582091)) b!3911518))

(assert (= (and b!3911518 res!1582094) b!3911521))

(assert (= (and b!3911521 res!1582095) b!3911523))

(assert (= (and b!3911523 res!1582092) b!3911520))

(assert (= (and b!3911520 res!1582097) b!3911522))

(assert (= (and b!3911522 res!1582093) b!3911517))

(declare-fun m!4474809 () Bool)

(assert (=> b!3911517 m!4474809))

(declare-fun m!4474811 () Bool)

(assert (=> b!3911517 m!4474811))

(assert (=> b!3911518 m!4474809))

(declare-fun m!4474813 () Bool)

(assert (=> b!3911518 m!4474813))

(assert (=> b!3911518 m!4474813))

(declare-fun m!4474815 () Bool)

(assert (=> b!3911518 m!4474815))

(assert (=> b!3911518 m!4474815))

(declare-fun m!4474817 () Bool)

(assert (=> b!3911518 m!4474817))

(assert (=> b!3911523 m!4474809))

(declare-fun m!4474819 () Bool)

(assert (=> b!3911523 m!4474819))

(assert (=> b!3911523 m!4473711))

(assert (=> b!3911521 m!4474809))

(assert (=> b!3911521 m!4474813))

(assert (=> b!3911521 m!4474813))

(assert (=> b!3911521 m!4474815))

(assert (=> b!3911521 m!4474815))

(declare-fun m!4474821 () Bool)

(assert (=> b!3911521 m!4474821))

(assert (=> b!3911520 m!4474809))

(declare-fun m!4474823 () Bool)

(assert (=> b!3911524 m!4474823))

(declare-fun m!4474825 () Bool)

(assert (=> b!3911524 m!4474825))

(declare-fun m!4474827 () Bool)

(assert (=> b!3911524 m!4474827))

(assert (=> b!3911524 m!4474825))

(declare-fun m!4474829 () Bool)

(assert (=> b!3911524 m!4474829))

(declare-fun m!4474831 () Bool)

(assert (=> b!3911524 m!4474831))

(assert (=> b!3911524 m!4473935))

(assert (=> b!3911524 m!4473935))

(assert (=> b!3911524 m!4473711))

(declare-fun m!4474833 () Bool)

(assert (=> b!3911524 m!4474833))

(assert (=> b!3911524 m!4474825))

(declare-fun m!4474835 () Bool)

(assert (=> b!3911524 m!4474835))

(assert (=> b!3911524 m!4473711))

(assert (=> b!3911524 m!4474825))

(assert (=> b!3911519 m!4473935))

(assert (=> b!3911519 m!4473711))

(assert (=> b!3911519 m!4473935))

(assert (=> b!3911519 m!4473711))

(assert (=> b!3911519 m!4474833))

(declare-fun m!4474837 () Bool)

(assert (=> b!3911519 m!4474837))

(assert (=> b!3911522 m!4474809))

(declare-fun m!4474839 () Bool)

(assert (=> b!3911522 m!4474839))

(assert (=> b!3911522 m!4474839))

(declare-fun m!4474841 () Bool)

(assert (=> b!3911522 m!4474841))

(declare-fun m!4474843 () Bool)

(assert (=> d!1160411 m!4474843))

(declare-fun m!4474845 () Bool)

(assert (=> d!1160411 m!4474845))

(declare-fun m!4474847 () Bool)

(assert (=> d!1160411 m!4474847))

(declare-fun m!4474849 () Bool)

(assert (=> d!1160411 m!4474849))

(assert (=> bm!284279 d!1160411))

(declare-fun d!1160413 () Bool)

(declare-fun lt!1362611 () Int)

(assert (=> d!1160413 (>= lt!1362611 0)))

(declare-fun e!2418333 () Int)

(assert (=> d!1160413 (= lt!1362611 e!2418333)))

(declare-fun c!679927 () Bool)

(assert (=> d!1160413 (= c!679927 ((_ is Nil!41452) (_1!23482 lt!1362479)))))

(assert (=> d!1160413 (= (size!31121 (_1!23482 lt!1362479)) lt!1362611)))

(declare-fun b!3911549 () Bool)

(assert (=> b!3911549 (= e!2418333 0)))

(declare-fun b!3911550 () Bool)

(assert (=> b!3911550 (= e!2418333 (+ 1 (size!31121 (t!322859 (_1!23482 lt!1362479)))))))

(assert (= (and d!1160413 c!679927) b!3911549))

(assert (= (and d!1160413 (not c!679927)) b!3911550))

(declare-fun m!4474851 () Bool)

(assert (=> b!3911550 m!4474851))

(assert (=> d!1160159 d!1160413))

(declare-fun b!3911551 () Bool)

(declare-fun res!1582098 () Bool)

(declare-fun e!2418334 () Bool)

(assert (=> b!3911551 (=> (not res!1582098) (not e!2418334))))

(declare-fun lt!1362616 () Option!8872)

(assert (=> b!3911551 (= res!1582098 (< (size!31118 (_2!23481 (get!13697 lt!1362616))) (size!31118 suffix!1176)))))

(declare-fun d!1160415 () Bool)

(declare-fun e!2418336 () Bool)

(assert (=> d!1160415 e!2418336))

(declare-fun res!1582103 () Bool)

(assert (=> d!1160415 (=> res!1582103 e!2418336)))

(assert (=> d!1160415 (= res!1582103 (isEmpty!24659 lt!1362616))))

(declare-fun e!2418335 () Option!8872)

(assert (=> d!1160415 (= lt!1362616 e!2418335)))

(declare-fun c!679928 () Bool)

(assert (=> d!1160415 (= c!679928 (and ((_ is Cons!41451) rules!2768) ((_ is Nil!41451) (t!322858 rules!2768))))))

(declare-fun lt!1362615 () Unit!59591)

(declare-fun lt!1362613 () Unit!59591)

(assert (=> d!1160415 (= lt!1362615 lt!1362613)))

(assert (=> d!1160415 (isPrefix!3547 suffix!1176 suffix!1176)))

(assert (=> d!1160415 (= lt!1362613 (lemmaIsPrefixRefl!2248 suffix!1176 suffix!1176))))

(assert (=> d!1160415 (rulesValidInductive!2318 thiss!20629 rules!2768)))

(assert (=> d!1160415 (= (maxPrefix!3345 thiss!20629 rules!2768 suffix!1176) lt!1362616)))

(declare-fun b!3911552 () Bool)

(declare-fun call!284303 () Option!8872)

(assert (=> b!3911552 (= e!2418335 call!284303)))

(declare-fun b!3911553 () Bool)

(declare-fun res!1582102 () Bool)

(assert (=> b!3911553 (=> (not res!1582102) (not e!2418334))))

(assert (=> b!3911553 (= res!1582102 (matchR!5446 (regex!6452 (rule!9366 (_1!23481 (get!13697 lt!1362616)))) (list!15407 (charsOf!4276 (_1!23481 (get!13697 lt!1362616))))))))

(declare-fun b!3911554 () Bool)

(declare-fun lt!1362612 () Option!8872)

(declare-fun lt!1362614 () Option!8872)

(assert (=> b!3911554 (= e!2418335 (ite (and ((_ is None!8871) lt!1362612) ((_ is None!8871) lt!1362614)) None!8871 (ite ((_ is None!8871) lt!1362614) lt!1362612 (ite ((_ is None!8871) lt!1362612) lt!1362614 (ite (>= (size!31117 (_1!23481 (v!39193 lt!1362612))) (size!31117 (_1!23481 (v!39193 lt!1362614)))) lt!1362612 lt!1362614)))))))

(assert (=> b!3911554 (= lt!1362612 call!284303)))

(assert (=> b!3911554 (= lt!1362614 (maxPrefix!3345 thiss!20629 (t!322858 rules!2768) suffix!1176))))

(declare-fun b!3911555 () Bool)

(assert (=> b!3911555 (= e!2418336 e!2418334)))

(declare-fun res!1582101 () Bool)

(assert (=> b!3911555 (=> (not res!1582101) (not e!2418334))))

(assert (=> b!3911555 (= res!1582101 (isDefined!6917 lt!1362616))))

(declare-fun b!3911556 () Bool)

(declare-fun res!1582104 () Bool)

(assert (=> b!3911556 (=> (not res!1582104) (not e!2418334))))

(assert (=> b!3911556 (= res!1582104 (= (list!15407 (charsOf!4276 (_1!23481 (get!13697 lt!1362616)))) (originalCharacters!7052 (_1!23481 (get!13697 lt!1362616)))))))

(declare-fun b!3911557 () Bool)

(declare-fun res!1582100 () Bool)

(assert (=> b!3911557 (=> (not res!1582100) (not e!2418334))))

(assert (=> b!3911557 (= res!1582100 (= (++!10662 (list!15407 (charsOf!4276 (_1!23481 (get!13697 lt!1362616)))) (_2!23481 (get!13697 lt!1362616))) suffix!1176))))

(declare-fun bm!284298 () Bool)

(assert (=> bm!284298 (= call!284303 (maxPrefixOneRule!2415 thiss!20629 (h!46871 rules!2768) suffix!1176))))

(declare-fun b!3911558 () Bool)

(declare-fun res!1582099 () Bool)

(assert (=> b!3911558 (=> (not res!1582099) (not e!2418334))))

(assert (=> b!3911558 (= res!1582099 (= (value!204516 (_1!23481 (get!13697 lt!1362616))) (apply!9691 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362616)))) (seqFromList!4719 (originalCharacters!7052 (_1!23481 (get!13697 lt!1362616)))))))))

(declare-fun b!3911559 () Bool)

(assert (=> b!3911559 (= e!2418334 (contains!8328 rules!2768 (rule!9366 (_1!23481 (get!13697 lt!1362616)))))))

(assert (= (and d!1160415 c!679928) b!3911552))

(assert (= (and d!1160415 (not c!679928)) b!3911554))

(assert (= (or b!3911552 b!3911554) bm!284298))

(assert (= (and d!1160415 (not res!1582103)) b!3911555))

(assert (= (and b!3911555 res!1582101) b!3911556))

(assert (= (and b!3911556 res!1582104) b!3911551))

(assert (= (and b!3911551 res!1582098) b!3911557))

(assert (= (and b!3911557 res!1582100) b!3911558))

(assert (= (and b!3911558 res!1582099) b!3911553))

(assert (= (and b!3911553 res!1582102) b!3911559))

(declare-fun m!4474853 () Bool)

(assert (=> b!3911556 m!4474853))

(declare-fun m!4474855 () Bool)

(assert (=> b!3911556 m!4474855))

(assert (=> b!3911556 m!4474855))

(declare-fun m!4474857 () Bool)

(assert (=> b!3911556 m!4474857))

(declare-fun m!4474859 () Bool)

(assert (=> b!3911555 m!4474859))

(assert (=> b!3911558 m!4474853))

(declare-fun m!4474861 () Bool)

(assert (=> b!3911558 m!4474861))

(assert (=> b!3911558 m!4474861))

(declare-fun m!4474863 () Bool)

(assert (=> b!3911558 m!4474863))

(assert (=> b!3911559 m!4474853))

(declare-fun m!4474865 () Bool)

(assert (=> b!3911559 m!4474865))

(declare-fun m!4474867 () Bool)

(assert (=> b!3911554 m!4474867))

(assert (=> b!3911553 m!4474853))

(assert (=> b!3911553 m!4474855))

(assert (=> b!3911553 m!4474855))

(assert (=> b!3911553 m!4474857))

(assert (=> b!3911553 m!4474857))

(declare-fun m!4474869 () Bool)

(assert (=> b!3911553 m!4474869))

(declare-fun m!4474871 () Bool)

(assert (=> d!1160415 m!4474871))

(declare-fun m!4474873 () Bool)

(assert (=> d!1160415 m!4474873))

(declare-fun m!4474875 () Bool)

(assert (=> d!1160415 m!4474875))

(assert (=> d!1160415 m!4474167))

(assert (=> b!3911551 m!4474853))

(declare-fun m!4474877 () Bool)

(assert (=> b!3911551 m!4474877))

(assert (=> b!3911551 m!4473743))

(assert (=> b!3911557 m!4474853))

(assert (=> b!3911557 m!4474855))

(assert (=> b!3911557 m!4474855))

(assert (=> b!3911557 m!4474857))

(assert (=> b!3911557 m!4474857))

(declare-fun m!4474879 () Bool)

(assert (=> b!3911557 m!4474879))

(declare-fun m!4474881 () Bool)

(assert (=> bm!284298 m!4474881))

(assert (=> d!1160159 d!1160415))

(declare-fun d!1160417 () Bool)

(declare-fun res!1582105 () Bool)

(declare-fun e!2418337 () Bool)

(assert (=> d!1160417 (=> (not res!1582105) (not e!2418337))))

(assert (=> d!1160417 (= res!1582105 (not (isEmpty!24656 (originalCharacters!7052 (h!46872 (t!322859 suffixTokens!72))))))))

(assert (=> d!1160417 (= (inv!55630 (h!46872 (t!322859 suffixTokens!72))) e!2418337)))

(declare-fun b!3911560 () Bool)

(declare-fun res!1582106 () Bool)

(assert (=> b!3911560 (=> (not res!1582106) (not e!2418337))))

(assert (=> b!3911560 (= res!1582106 (= (originalCharacters!7052 (h!46872 (t!322859 suffixTokens!72))) (list!15407 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 suffixTokens!72))))) (value!204516 (h!46872 (t!322859 suffixTokens!72)))))))))

(declare-fun b!3911561 () Bool)

(assert (=> b!3911561 (= e!2418337 (= (size!31117 (h!46872 (t!322859 suffixTokens!72))) (size!31118 (originalCharacters!7052 (h!46872 (t!322859 suffixTokens!72))))))))

(assert (= (and d!1160417 res!1582105) b!3911560))

(assert (= (and b!3911560 res!1582106) b!3911561))

(declare-fun b_lambda!114513 () Bool)

(assert (=> (not b_lambda!114513) (not b!3911560)))

(declare-fun t!323043 () Bool)

(declare-fun tb!232745 () Bool)

(assert (=> (and b!3910607 (= (toChars!8755 (transformation!6452 (h!46871 rules!2768))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 suffixTokens!72)))))) t!323043) tb!232745))

(declare-fun b!3911562 () Bool)

(declare-fun e!2418338 () Bool)

(declare-fun tp!1190576 () Bool)

(assert (=> b!3911562 (= e!2418338 (and (inv!55632 (c!679729 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 suffixTokens!72))))) (value!204516 (h!46872 (t!322859 suffixTokens!72)))))) tp!1190576))))

(declare-fun result!282122 () Bool)

(assert (=> tb!232745 (= result!282122 (and (inv!55633 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 suffixTokens!72))))) (value!204516 (h!46872 (t!322859 suffixTokens!72))))) e!2418338))))

(assert (= tb!232745 b!3911562))

(declare-fun m!4474883 () Bool)

(assert (=> b!3911562 m!4474883))

(declare-fun m!4474885 () Bool)

(assert (=> tb!232745 m!4474885))

(assert (=> b!3911560 t!323043))

(declare-fun b_and!297563 () Bool)

(assert (= b_and!297555 (and (=> t!323043 result!282122) b_and!297563)))

(declare-fun t!323045 () Bool)

(declare-fun tb!232747 () Bool)

(assert (=> (and b!3911170 (= (toChars!8755 (transformation!6452 (h!46871 (t!322858 rules!2768)))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 suffixTokens!72)))))) t!323045) tb!232747))

(declare-fun result!282124 () Bool)

(assert (= result!282124 result!282122))

(assert (=> b!3911560 t!323045))

(declare-fun b_and!297565 () Bool)

(assert (= b_and!297551 (and (=> t!323045 result!282124) b_and!297565)))

(declare-fun t!323047 () Bool)

(declare-fun tb!232749 () Bool)

(assert (=> (and b!3910608 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72)))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 suffixTokens!72)))))) t!323047) tb!232749))

(declare-fun result!282126 () Bool)

(assert (= result!282126 result!282122))

(assert (=> b!3911560 t!323047))

(declare-fun b_and!297567 () Bool)

(assert (= b_and!297561 (and (=> t!323047 result!282126) b_and!297567)))

(declare-fun tb!232751 () Bool)

(declare-fun t!323049 () Bool)

(assert (=> (and b!3911130 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 prefixTokens!80))))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 suffixTokens!72)))))) t!323049) tb!232751))

(declare-fun result!282128 () Bool)

(assert (= result!282128 result!282122))

(assert (=> b!3911560 t!323049))

(declare-fun b_and!297569 () Bool)

(assert (= b_and!297553 (and (=> t!323049 result!282128) b_and!297569)))

(declare-fun t!323051 () Bool)

(declare-fun tb!232753 () Bool)

(assert (=> (and b!3911154 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 suffixTokens!72))))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 suffixTokens!72)))))) t!323051) tb!232753))

(declare-fun result!282130 () Bool)

(assert (= result!282130 result!282122))

(assert (=> b!3911560 t!323051))

(declare-fun b_and!297571 () Bool)

(assert (= b_and!297559 (and (=> t!323051 result!282130) b_and!297571)))

(declare-fun tb!232755 () Bool)

(declare-fun t!323053 () Bool)

(assert (=> (and b!3910611 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80)))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 suffixTokens!72)))))) t!323053) tb!232755))

(declare-fun result!282132 () Bool)

(assert (= result!282132 result!282122))

(assert (=> b!3911560 t!323053))

(declare-fun b_and!297573 () Bool)

(assert (= b_and!297557 (and (=> t!323053 result!282132) b_and!297573)))

(declare-fun m!4474887 () Bool)

(assert (=> d!1160417 m!4474887))

(declare-fun m!4474889 () Bool)

(assert (=> b!3911560 m!4474889))

(assert (=> b!3911560 m!4474889))

(declare-fun m!4474891 () Bool)

(assert (=> b!3911560 m!4474891))

(declare-fun m!4474893 () Bool)

(assert (=> b!3911561 m!4474893))

(assert (=> b!3911151 d!1160417))

(declare-fun d!1160419 () Bool)

(declare-fun c!679938 () Bool)

(assert (=> d!1160419 (= c!679938 ((_ is Node!12663) (c!679729 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72)))) (value!204516 (h!46872 suffixTokens!72))))))))

(declare-fun e!2418350 () Bool)

(assert (=> d!1160419 (= (inv!55632 (c!679729 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72)))) (value!204516 (h!46872 suffixTokens!72))))) e!2418350)))

(declare-fun b!3911582 () Bool)

(declare-fun inv!55638 (Conc!12663) Bool)

(assert (=> b!3911582 (= e!2418350 (inv!55638 (c!679729 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72)))) (value!204516 (h!46872 suffixTokens!72))))))))

(declare-fun b!3911583 () Bool)

(declare-fun e!2418351 () Bool)

(assert (=> b!3911583 (= e!2418350 e!2418351)))

(declare-fun res!1582110 () Bool)

(assert (=> b!3911583 (= res!1582110 (not ((_ is Leaf!19596) (c!679729 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72)))) (value!204516 (h!46872 suffixTokens!72)))))))))

(assert (=> b!3911583 (=> res!1582110 e!2418351)))

(declare-fun b!3911584 () Bool)

(declare-fun inv!55639 (Conc!12663) Bool)

(assert (=> b!3911584 (= e!2418351 (inv!55639 (c!679729 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72)))) (value!204516 (h!46872 suffixTokens!72))))))))

(assert (= (and d!1160419 c!679938) b!3911582))

(assert (= (and d!1160419 (not c!679938)) b!3911583))

(assert (= (and b!3911583 (not res!1582110)) b!3911584))

(declare-fun m!4474909 () Bool)

(assert (=> b!3911582 m!4474909))

(declare-fun m!4474911 () Bool)

(assert (=> b!3911584 m!4474911))

(assert (=> b!3911054 d!1160419))

(declare-fun bs!585580 () Bool)

(declare-fun d!1160427 () Bool)

(assert (= bs!585580 (and d!1160427 d!1160265)))

(declare-fun lambda!126495 () Int)

(assert (=> bs!585580 (= (and (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80)))) (toChars!8755 (transformation!6452 (h!46871 rules!2768)))) (= (toValue!8896 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80)))) (toValue!8896 (transformation!6452 (h!46871 rules!2768))))) (= lambda!126495 lambda!126487))))

(assert (=> d!1160427 true))

(assert (=> d!1160427 (< (dynLambda!17805 order!22259 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80))))) (dynLambda!17806 order!22261 lambda!126495))))

(assert (=> d!1160427 true))

(assert (=> d!1160427 (< (dynLambda!17807 order!22263 (toValue!8896 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80))))) (dynLambda!17806 order!22261 lambda!126495))))

(assert (=> d!1160427 (= (semiInverseModEq!2768 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80)))) (toValue!8896 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80))))) (Forall!1445 lambda!126495))))

(declare-fun bs!585581 () Bool)

(assert (= bs!585581 d!1160427))

(declare-fun m!4474927 () Bool)

(assert (=> bs!585581 m!4474927))

(assert (=> d!1160079 d!1160427))

(declare-fun d!1160433 () Bool)

(assert (=> d!1160433 (= (isEmpty!24659 lt!1362473) (not ((_ is Some!8871) lt!1362473)))))

(assert (=> d!1160151 d!1160433))

(declare-fun b!3911589 () Bool)

(declare-fun e!2418354 () Bool)

(declare-fun e!2418355 () Bool)

(assert (=> b!3911589 (= e!2418354 e!2418355)))

(declare-fun res!1582113 () Bool)

(assert (=> b!3911589 (=> (not res!1582113) (not e!2418355))))

(assert (=> b!3911589 (= res!1582113 (not ((_ is Nil!41450) lt!1362329)))))

(declare-fun b!3911591 () Bool)

(assert (=> b!3911591 (= e!2418355 (isPrefix!3547 (tail!5976 lt!1362329) (tail!5976 lt!1362329)))))

(declare-fun b!3911590 () Bool)

(declare-fun res!1582114 () Bool)

(assert (=> b!3911590 (=> (not res!1582114) (not e!2418355))))

(assert (=> b!3911590 (= res!1582114 (= (head!8258 lt!1362329) (head!8258 lt!1362329)))))

(declare-fun b!3911592 () Bool)

(declare-fun e!2418356 () Bool)

(assert (=> b!3911592 (= e!2418356 (>= (size!31118 lt!1362329) (size!31118 lt!1362329)))))

(declare-fun d!1160437 () Bool)

(assert (=> d!1160437 e!2418356))

(declare-fun res!1582115 () Bool)

(assert (=> d!1160437 (=> res!1582115 e!2418356)))

(declare-fun lt!1362619 () Bool)

(assert (=> d!1160437 (= res!1582115 (not lt!1362619))))

(assert (=> d!1160437 (= lt!1362619 e!2418354)))

(declare-fun res!1582116 () Bool)

(assert (=> d!1160437 (=> res!1582116 e!2418354)))

(assert (=> d!1160437 (= res!1582116 ((_ is Nil!41450) lt!1362329))))

(assert (=> d!1160437 (= (isPrefix!3547 lt!1362329 lt!1362329) lt!1362619)))

(assert (= (and d!1160437 (not res!1582116)) b!3911589))

(assert (= (and b!3911589 res!1582113) b!3911590))

(assert (= (and b!3911590 res!1582114) b!3911591))

(assert (= (and d!1160437 (not res!1582115)) b!3911592))

(assert (=> b!3911591 m!4474047))

(assert (=> b!3911591 m!4474047))

(assert (=> b!3911591 m!4474047))

(assert (=> b!3911591 m!4474047))

(declare-fun m!4474931 () Bool)

(assert (=> b!3911591 m!4474931))

(declare-fun m!4474933 () Bool)

(assert (=> b!3911590 m!4474933))

(assert (=> b!3911590 m!4474933))

(assert (=> b!3911592 m!4473711))

(assert (=> b!3911592 m!4473711))

(assert (=> d!1160151 d!1160437))

(declare-fun d!1160439 () Bool)

(assert (=> d!1160439 (isPrefix!3547 lt!1362329 lt!1362329)))

(declare-fun lt!1362622 () Unit!59591)

(declare-fun choose!23158 (List!41574 List!41574) Unit!59591)

(assert (=> d!1160439 (= lt!1362622 (choose!23158 lt!1362329 lt!1362329))))

(assert (=> d!1160439 (= (lemmaIsPrefixRefl!2248 lt!1362329 lt!1362329) lt!1362622)))

(declare-fun bs!585584 () Bool)

(assert (= bs!585584 d!1160439))

(assert (=> bs!585584 m!4474163))

(declare-fun m!4474935 () Bool)

(assert (=> bs!585584 m!4474935))

(assert (=> d!1160151 d!1160439))

(declare-fun d!1160441 () Bool)

(assert (=> d!1160441 true))

(declare-fun lt!1362627 () Bool)

(declare-fun lambda!126499 () Int)

(declare-fun forall!8310 (List!41575 Int) Bool)

(assert (=> d!1160441 (= lt!1362627 (forall!8310 rules!2768 lambda!126499))))

(declare-fun e!2418369 () Bool)

(assert (=> d!1160441 (= lt!1362627 e!2418369)))

(declare-fun res!1582123 () Bool)

(assert (=> d!1160441 (=> res!1582123 e!2418369)))

(assert (=> d!1160441 (= res!1582123 (not ((_ is Cons!41451) rules!2768)))))

(assert (=> d!1160441 (= (rulesValidInductive!2318 thiss!20629 rules!2768) lt!1362627)))

(declare-fun b!3911611 () Bool)

(declare-fun e!2418370 () Bool)

(assert (=> b!3911611 (= e!2418369 e!2418370)))

(declare-fun res!1582124 () Bool)

(assert (=> b!3911611 (=> (not res!1582124) (not e!2418370))))

(assert (=> b!3911611 (= res!1582124 (ruleValid!2400 thiss!20629 (h!46871 rules!2768)))))

(declare-fun b!3911612 () Bool)

(assert (=> b!3911612 (= e!2418370 (rulesValidInductive!2318 thiss!20629 (t!322858 rules!2768)))))

(assert (= (and d!1160441 (not res!1582123)) b!3911611))

(assert (= (and b!3911611 res!1582124) b!3911612))

(declare-fun m!4474945 () Bool)

(assert (=> d!1160441 m!4474945))

(assert (=> b!3911611 m!4474849))

(assert (=> b!3911612 m!4474797))

(assert (=> d!1160151 d!1160441))

(declare-fun d!1160445 () Bool)

(declare-fun lt!1362629 () Int)

(assert (=> d!1160445 (>= lt!1362629 0)))

(declare-fun e!2418372 () Int)

(assert (=> d!1160445 (= lt!1362629 e!2418372)))

(declare-fun c!679946 () Bool)

(assert (=> d!1160445 (= c!679946 ((_ is Nil!41450) (originalCharacters!7052 (h!46872 prefixTokens!80))))))

(assert (=> d!1160445 (= (size!31118 (originalCharacters!7052 (h!46872 prefixTokens!80))) lt!1362629)))

(declare-fun b!3911616 () Bool)

(assert (=> b!3911616 (= e!2418372 0)))

(declare-fun b!3911617 () Bool)

(assert (=> b!3911617 (= e!2418372 (+ 1 (size!31118 (t!322857 (originalCharacters!7052 (h!46872 prefixTokens!80))))))))

(assert (= (and d!1160445 c!679946) b!3911616))

(assert (= (and d!1160445 (not c!679946)) b!3911617))

(declare-fun m!4474953 () Bool)

(assert (=> b!3911617 m!4474953))

(assert (=> b!3910660 d!1160445))

(assert (=> b!3910831 d!1160261))

(declare-fun d!1160449 () Bool)

(declare-fun lt!1362631 () Int)

(assert (=> d!1160449 (>= lt!1362631 0)))

(declare-fun e!2418374 () Int)

(assert (=> d!1160449 (= lt!1362631 e!2418374)))

(declare-fun c!679948 () Bool)

(assert (=> d!1160449 (= c!679948 ((_ is Nil!41450) (originalCharacters!7052 (_1!23481 (get!13697 lt!1362378)))))))

(assert (=> d!1160449 (= (size!31118 (originalCharacters!7052 (_1!23481 (get!13697 lt!1362378)))) lt!1362631)))

(declare-fun b!3911620 () Bool)

(assert (=> b!3911620 (= e!2418374 0)))

(declare-fun b!3911621 () Bool)

(assert (=> b!3911621 (= e!2418374 (+ 1 (size!31118 (t!322857 (originalCharacters!7052 (_1!23481 (get!13697 lt!1362378)))))))))

(assert (= (and d!1160449 c!679948) b!3911620))

(assert (= (and d!1160449 (not c!679948)) b!3911621))

(declare-fun m!4474957 () Bool)

(assert (=> b!3911621 m!4474957))

(assert (=> b!3910831 d!1160449))

(assert (=> d!1160101 d!1160155))

(declare-fun d!1160453 () Bool)

(assert (=> d!1160453 (= (list!15407 lt!1362416) (list!15408 (c!679729 lt!1362416)))))

(declare-fun bs!585585 () Bool)

(assert (= bs!585585 d!1160453))

(declare-fun m!4474959 () Bool)

(assert (=> bs!585585 m!4474959))

(assert (=> d!1160095 d!1160453))

(declare-fun d!1160455 () Bool)

(assert (=> d!1160455 (= (list!15407 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72)))) (value!204516 (h!46872 suffixTokens!72)))) (list!15408 (c!679729 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72)))) (value!204516 (h!46872 suffixTokens!72))))))))

(declare-fun bs!585586 () Bool)

(assert (= bs!585586 d!1160455))

(declare-fun m!4474961 () Bool)

(assert (=> bs!585586 m!4474961))

(assert (=> b!3911052 d!1160455))

(assert (=> d!1160067 d!1160081))

(assert (=> d!1160067 d!1160137))

(assert (=> d!1160067 d!1160025))

(assert (=> d!1160067 d!1160143))

(declare-fun d!1160457 () Bool)

(assert (=> d!1160457 (= (maxPrefixOneRule!2415 thiss!20629 (rule!9366 (_1!23481 (v!39193 lt!1362333))) lt!1362329) (Some!8871 (tuple2!40695 (Token!12043 (apply!9691 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) (seqFromList!4719 lt!1362321)) (rule!9366 (_1!23481 (v!39193 lt!1362333))) (size!31118 lt!1362321) lt!1362321) (_2!23481 (v!39193 lt!1362333)))))))

(assert (=> d!1160457 true))

(declare-fun _$59!605 () Unit!59591)

(assert (=> d!1160457 (= (choose!23149 thiss!20629 rules!2768 lt!1362321 lt!1362329 (_2!23481 (v!39193 lt!1362333)) (rule!9366 (_1!23481 (v!39193 lt!1362333)))) _$59!605)))

(declare-fun bs!585588 () Bool)

(assert (= bs!585588 d!1160457))

(assert (=> bs!585588 m!4473719))

(assert (=> bs!585588 m!4473683))

(assert (=> bs!585588 m!4473683))

(assert (=> bs!585588 m!4473685))

(assert (=> bs!585588 m!4473671))

(assert (=> d!1160067 d!1160457))

(assert (=> d!1160067 d!1160075))

(declare-fun d!1160481 () Bool)

(declare-fun lt!1362647 () Int)

(assert (=> d!1160481 (>= lt!1362647 0)))

(declare-fun e!2418393 () Int)

(assert (=> d!1160481 (= lt!1362647 e!2418393)))

(declare-fun c!679957 () Bool)

(assert (=> d!1160481 (= c!679957 ((_ is Nil!41450) (_2!23482 lt!1362445)))))

(assert (=> d!1160481 (= (size!31118 (_2!23482 lt!1362445)) lt!1362647)))

(declare-fun b!3911660 () Bool)

(assert (=> b!3911660 (= e!2418393 0)))

(declare-fun b!3911661 () Bool)

(assert (=> b!3911661 (= e!2418393 (+ 1 (size!31118 (t!322857 (_2!23482 lt!1362445)))))))

(assert (= (and d!1160481 c!679957) b!3911660))

(assert (= (and d!1160481 (not c!679957)) b!3911661))

(declare-fun m!4475061 () Bool)

(assert (=> b!3911661 m!4475061))

(assert (=> b!3910941 d!1160481))

(assert (=> b!3910941 d!1160071))

(assert (=> b!3910836 d!1160261))

(declare-fun d!1160485 () Bool)

(assert (=> d!1160485 (= (apply!9691 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362378)))) (seqFromList!4719 (originalCharacters!7052 (_1!23481 (get!13697 lt!1362378))))) (dynLambda!17801 (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362378))))) (seqFromList!4719 (originalCharacters!7052 (_1!23481 (get!13697 lt!1362378))))))))

(declare-fun b_lambda!114517 () Bool)

(assert (=> (not b_lambda!114517) (not d!1160485)))

(declare-fun t!323068 () Bool)

(declare-fun tb!232769 () Bool)

(assert (=> (and b!3911130 (= (toValue!8896 (transformation!6452 (rule!9366 (h!46872 (t!322859 prefixTokens!80))))) (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362378)))))) t!323068) tb!232769))

(declare-fun result!282146 () Bool)

(assert (=> tb!232769 (= result!282146 (inv!21 (dynLambda!17801 (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362378))))) (seqFromList!4719 (originalCharacters!7052 (_1!23481 (get!13697 lt!1362378)))))))))

(declare-fun m!4475067 () Bool)

(assert (=> tb!232769 m!4475067))

(assert (=> d!1160485 t!323068))

(declare-fun b_and!297587 () Bool)

(assert (= b_and!297455 (and (=> t!323068 result!282146) b_and!297587)))

(declare-fun t!323070 () Bool)

(declare-fun tb!232771 () Bool)

(assert (=> (and b!3910611 (= (toValue!8896 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80)))) (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362378)))))) t!323070) tb!232771))

(declare-fun result!282148 () Bool)

(assert (= result!282148 result!282146))

(assert (=> d!1160485 t!323070))

(declare-fun b_and!297589 () Bool)

(assert (= b_and!297425 (and (=> t!323070 result!282148) b_and!297589)))

(declare-fun tb!232773 () Bool)

(declare-fun t!323072 () Bool)

(assert (=> (and b!3910608 (= (toValue!8896 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72)))) (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362378)))))) t!323072) tb!232773))

(declare-fun result!282150 () Bool)

(assert (= result!282150 result!282146))

(assert (=> d!1160485 t!323072))

(declare-fun b_and!297591 () Bool)

(assert (= b_and!297427 (and (=> t!323072 result!282150) b_and!297591)))

(declare-fun tb!232775 () Bool)

(declare-fun t!323074 () Bool)

(assert (=> (and b!3911154 (= (toValue!8896 (transformation!6452 (rule!9366 (h!46872 (t!322859 suffixTokens!72))))) (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362378)))))) t!323074) tb!232775))

(declare-fun result!282152 () Bool)

(assert (= result!282152 result!282146))

(assert (=> d!1160485 t!323074))

(declare-fun b_and!297593 () Bool)

(assert (= b_and!297459 (and (=> t!323074 result!282152) b_and!297593)))

(declare-fun t!323076 () Bool)

(declare-fun tb!232777 () Bool)

(assert (=> (and b!3911170 (= (toValue!8896 (transformation!6452 (h!46871 (t!322858 rules!2768)))) (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362378)))))) t!323076) tb!232777))

(declare-fun result!282154 () Bool)

(assert (= result!282154 result!282146))

(assert (=> d!1160485 t!323076))

(declare-fun b_and!297595 () Bool)

(assert (= b_and!297463 (and (=> t!323076 result!282154) b_and!297595)))

(declare-fun t!323078 () Bool)

(declare-fun tb!232779 () Bool)

(assert (=> (and b!3910607 (= (toValue!8896 (transformation!6452 (h!46871 rules!2768))) (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362378)))))) t!323078) tb!232779))

(declare-fun result!282156 () Bool)

(assert (= result!282156 result!282146))

(assert (=> d!1160485 t!323078))

(declare-fun b_and!297597 () Bool)

(assert (= b_and!297429 (and (=> t!323078 result!282156) b_and!297597)))

(assert (=> d!1160485 m!4473943))

(declare-fun m!4475073 () Bool)

(assert (=> d!1160485 m!4475073))

(assert (=> b!3910836 d!1160485))

(declare-fun d!1160491 () Bool)

(assert (=> d!1160491 (= (seqFromList!4719 (originalCharacters!7052 (_1!23481 (get!13697 lt!1362378)))) (fromListB!2177 (originalCharacters!7052 (_1!23481 (get!13697 lt!1362378)))))))

(declare-fun bs!585590 () Bool)

(assert (= bs!585590 d!1160491))

(declare-fun m!4475079 () Bool)

(assert (=> bs!585590 m!4475079))

(assert (=> b!3910836 d!1160491))

(declare-fun d!1160493 () Bool)

(assert (=> d!1160493 (= (head!8258 lt!1362321) (h!46870 lt!1362321))))

(assert (=> b!3910713 d!1160493))

(declare-fun bs!585591 () Bool)

(declare-fun d!1160497 () Bool)

(assert (= bs!585591 (and d!1160497 d!1160265)))

(declare-fun lambda!126500 () Int)

(assert (=> bs!585591 (= (and (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72)))) (toChars!8755 (transformation!6452 (h!46871 rules!2768)))) (= (toValue!8896 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72)))) (toValue!8896 (transformation!6452 (h!46871 rules!2768))))) (= lambda!126500 lambda!126487))))

(declare-fun bs!585592 () Bool)

(assert (= bs!585592 (and d!1160497 d!1160427)))

(assert (=> bs!585592 (= (and (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72)))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80))))) (= (toValue!8896 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72)))) (toValue!8896 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80)))))) (= lambda!126500 lambda!126495))))

(assert (=> d!1160497 true))

(assert (=> d!1160497 (< (dynLambda!17805 order!22259 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72))))) (dynLambda!17806 order!22261 lambda!126500))))

(assert (=> d!1160497 true))

(assert (=> d!1160497 (< (dynLambda!17807 order!22263 (toValue!8896 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72))))) (dynLambda!17806 order!22261 lambda!126500))))

(assert (=> d!1160497 (= (semiInverseModEq!2768 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72)))) (toValue!8896 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72))))) (Forall!1445 lambda!126500))))

(declare-fun bs!585593 () Bool)

(assert (= bs!585593 d!1160497))

(declare-fun m!4475097 () Bool)

(assert (=> bs!585593 m!4475097))

(assert (=> d!1160169 d!1160497))

(declare-fun d!1160503 () Bool)

(declare-fun c!679964 () Bool)

(assert (=> d!1160503 (= c!679964 ((_ is IntegerValue!20046) (dynLambda!17801 (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))) (seqFromList!4719 lt!1362321))))))

(declare-fun e!2418411 () Bool)

(assert (=> d!1160503 (= (inv!21 (dynLambda!17801 (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))) (seqFromList!4719 lt!1362321))) e!2418411)))

(declare-fun b!3911687 () Bool)

(declare-fun e!2418409 () Bool)

(assert (=> b!3911687 (= e!2418409 (inv!15 (dynLambda!17801 (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))) (seqFromList!4719 lt!1362321))))))

(declare-fun b!3911688 () Bool)

(declare-fun e!2418410 () Bool)

(assert (=> b!3911688 (= e!2418411 e!2418410)))

(declare-fun c!679965 () Bool)

(assert (=> b!3911688 (= c!679965 ((_ is IntegerValue!20047) (dynLambda!17801 (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))) (seqFromList!4719 lt!1362321))))))

(declare-fun b!3911689 () Bool)

(assert (=> b!3911689 (= e!2418411 (inv!16 (dynLambda!17801 (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))) (seqFromList!4719 lt!1362321))))))

(declare-fun b!3911690 () Bool)

(declare-fun res!1582160 () Bool)

(assert (=> b!3911690 (=> res!1582160 e!2418409)))

(assert (=> b!3911690 (= res!1582160 (not ((_ is IntegerValue!20048) (dynLambda!17801 (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))) (seqFromList!4719 lt!1362321)))))))

(assert (=> b!3911690 (= e!2418410 e!2418409)))

(declare-fun b!3911691 () Bool)

(assert (=> b!3911691 (= e!2418410 (inv!17 (dynLambda!17801 (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))) (seqFromList!4719 lt!1362321))))))

(assert (= (and d!1160503 c!679964) b!3911689))

(assert (= (and d!1160503 (not c!679964)) b!3911688))

(assert (= (and b!3911688 c!679965) b!3911691))

(assert (= (and b!3911688 (not c!679965)) b!3911690))

(assert (= (and b!3911690 (not res!1582160)) b!3911687))

(declare-fun m!4475099 () Bool)

(assert (=> b!3911687 m!4475099))

(declare-fun m!4475101 () Bool)

(assert (=> b!3911689 m!4475101))

(declare-fun m!4475103 () Bool)

(assert (=> b!3911691 m!4475103))

(assert (=> tb!232583 d!1160503))

(declare-fun d!1160505 () Bool)

(assert (=> d!1160505 (= (isEmpty!24657 (_1!23482 lt!1362479)) ((_ is Nil!41452) (_1!23482 lt!1362479)))))

(assert (=> b!3911050 d!1160505))

(declare-fun d!1160507 () Bool)

(declare-fun e!2418413 () Bool)

(assert (=> d!1160507 e!2418413))

(declare-fun res!1582161 () Bool)

(assert (=> d!1160507 (=> (not res!1582161) (not e!2418413))))

(declare-fun lt!1362651 () List!41576)

(assert (=> d!1160507 (= res!1582161 (= (content!6220 lt!1362651) ((_ map or) (content!6220 (t!322859 prefixTokens!80)) (content!6220 suffixTokens!72))))))

(declare-fun e!2418412 () List!41576)

(assert (=> d!1160507 (= lt!1362651 e!2418412)))

(declare-fun c!679966 () Bool)

(assert (=> d!1160507 (= c!679966 ((_ is Nil!41452) (t!322859 prefixTokens!80)))))

(assert (=> d!1160507 (= (++!10661 (t!322859 prefixTokens!80) suffixTokens!72) lt!1362651)))

(declare-fun b!3911695 () Bool)

(assert (=> b!3911695 (= e!2418413 (or (not (= suffixTokens!72 Nil!41452)) (= lt!1362651 (t!322859 prefixTokens!80))))))

(declare-fun b!3911693 () Bool)

(assert (=> b!3911693 (= e!2418412 (Cons!41452 (h!46872 (t!322859 prefixTokens!80)) (++!10661 (t!322859 (t!322859 prefixTokens!80)) suffixTokens!72)))))

(declare-fun b!3911692 () Bool)

(assert (=> b!3911692 (= e!2418412 suffixTokens!72)))

(declare-fun b!3911694 () Bool)

(declare-fun res!1582162 () Bool)

(assert (=> b!3911694 (=> (not res!1582162) (not e!2418413))))

(assert (=> b!3911694 (= res!1582162 (= (size!31121 lt!1362651) (+ (size!31121 (t!322859 prefixTokens!80)) (size!31121 suffixTokens!72))))))

(assert (= (and d!1160507 c!679966) b!3911692))

(assert (= (and d!1160507 (not c!679966)) b!3911693))

(assert (= (and d!1160507 res!1582161) b!3911694))

(assert (= (and b!3911694 res!1582162) b!3911695))

(declare-fun m!4475105 () Bool)

(assert (=> d!1160507 m!4475105))

(declare-fun m!4475107 () Bool)

(assert (=> d!1160507 m!4475107))

(assert (=> d!1160507 m!4474237))

(declare-fun m!4475109 () Bool)

(assert (=> b!3911693 m!4475109))

(declare-fun m!4475111 () Bool)

(assert (=> b!3911694 m!4475111))

(declare-fun m!4475113 () Bool)

(assert (=> b!3911694 m!4475113))

(assert (=> b!3911694 m!4474245))

(assert (=> b!3911104 d!1160507))

(declare-fun d!1160509 () Bool)

(declare-fun lt!1362652 () Int)

(assert (=> d!1160509 (>= lt!1362652 0)))

(declare-fun e!2418418 () Int)

(assert (=> d!1160509 (= lt!1362652 e!2418418)))

(declare-fun c!679967 () Bool)

(assert (=> d!1160509 (= c!679967 ((_ is Nil!41450) (t!322857 prefix!426)))))

(assert (=> d!1160509 (= (size!31118 (t!322857 prefix!426)) lt!1362652)))

(declare-fun b!3911700 () Bool)

(assert (=> b!3911700 (= e!2418418 0)))

(declare-fun b!3911701 () Bool)

(assert (=> b!3911701 (= e!2418418 (+ 1 (size!31118 (t!322857 (t!322857 prefix!426)))))))

(assert (= (and d!1160509 c!679967) b!3911700))

(assert (= (and d!1160509 (not c!679967)) b!3911701))

(declare-fun m!4475115 () Bool)

(assert (=> b!3911701 m!4475115))

(assert (=> b!3911046 d!1160509))

(declare-fun d!1160511 () Bool)

(assert (=> d!1160511 (= (inv!55633 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))) (value!204516 (_1!23481 (v!39193 lt!1362333))))) (isBalanced!3635 (c!679729 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))) (value!204516 (_1!23481 (v!39193 lt!1362333)))))))))

(declare-fun bs!585594 () Bool)

(assert (= bs!585594 d!1160511))

(declare-fun m!4475117 () Bool)

(assert (=> bs!585594 m!4475117))

(assert (=> tb!232589 d!1160511))

(declare-fun d!1160513 () Bool)

(declare-fun lt!1362653 () Int)

(assert (=> d!1160513 (>= lt!1362653 0)))

(declare-fun e!2418419 () Int)

(assert (=> d!1160513 (= lt!1362653 e!2418419)))

(declare-fun c!679968 () Bool)

(assert (=> d!1160513 (= c!679968 ((_ is Nil!41450) (t!322857 lt!1362321)))))

(assert (=> d!1160513 (= (size!31118 (t!322857 lt!1362321)) lt!1362653)))

(declare-fun b!3911702 () Bool)

(assert (=> b!3911702 (= e!2418419 0)))

(declare-fun b!3911703 () Bool)

(assert (=> b!3911703 (= e!2418419 (+ 1 (size!31118 (t!322857 (t!322857 lt!1362321)))))))

(assert (= (and d!1160513 c!679968) b!3911702))

(assert (= (and d!1160513 (not c!679968)) b!3911703))

(declare-fun m!4475119 () Bool)

(assert (=> b!3911703 m!4475119))

(assert (=> b!3911012 d!1160513))

(declare-fun d!1160515 () Bool)

(assert (=> d!1160515 (= (isDefined!6917 lt!1362473) (not (isEmpty!24659 lt!1362473)))))

(declare-fun bs!585595 () Bool)

(assert (= bs!585595 d!1160515))

(assert (=> bs!585595 m!4474161))

(assert (=> b!3911036 d!1160515))

(declare-fun d!1160517 () Bool)

(declare-fun lt!1362654 () Int)

(assert (=> d!1160517 (>= lt!1362654 0)))

(declare-fun e!2418422 () Int)

(assert (=> d!1160517 (= lt!1362654 e!2418422)))

(declare-fun c!679969 () Bool)

(assert (=> d!1160517 (= c!679969 ((_ is Nil!41452) (_1!23482 lt!1362495)))))

(assert (=> d!1160517 (= (size!31121 (_1!23482 lt!1362495)) lt!1362654)))

(declare-fun b!3911706 () Bool)

(assert (=> b!3911706 (= e!2418422 0)))

(declare-fun b!3911707 () Bool)

(assert (=> b!3911707 (= e!2418422 (+ 1 (size!31121 (t!322859 (_1!23482 lt!1362495)))))))

(assert (= (and d!1160517 c!679969) b!3911706))

(assert (= (and d!1160517 (not c!679969)) b!3911707))

(declare-fun m!4475125 () Bool)

(assert (=> b!3911707 m!4475125))

(assert (=> d!1160171 d!1160517))

(assert (=> d!1160171 d!1160151))

(declare-fun bs!585598 () Bool)

(declare-fun d!1160521 () Bool)

(assert (= bs!585598 (and d!1160521 d!1160343)))

(declare-fun lambda!126501 () Int)

(assert (=> bs!585598 (= (= (toValue!8896 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80)))) (toValue!8896 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72))))) (= lambda!126501 lambda!126493))))

(assert (=> d!1160521 true))

(assert (=> d!1160521 (< (dynLambda!17807 order!22263 (toValue!8896 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80))))) (dynLambda!17808 order!22269 lambda!126501))))

(assert (=> d!1160521 (= (equivClasses!2667 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80)))) (toValue!8896 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80))))) (Forall2!1044 lambda!126501))))

(declare-fun bs!585599 () Bool)

(assert (= bs!585599 d!1160521))

(declare-fun m!4475131 () Bool)

(assert (=> bs!585599 m!4475131))

(assert (=> b!3910876 d!1160521))

(declare-fun d!1160529 () Bool)

(declare-fun e!2418429 () Bool)

(assert (=> d!1160529 e!2418429))

(declare-fun res!1582178 () Bool)

(assert (=> d!1160529 (=> (not res!1582178) (not e!2418429))))

(declare-fun lt!1362662 () BalanceConc!24920)

(assert (=> d!1160529 (= res!1582178 (= (list!15407 lt!1362662) lt!1362321))))

(declare-fun fromList!825 (List!41574) Conc!12663)

(assert (=> d!1160529 (= lt!1362662 (BalanceConc!24921 (fromList!825 lt!1362321)))))

(assert (=> d!1160529 (= (fromListB!2177 lt!1362321) lt!1362662)))

(declare-fun b!3911719 () Bool)

(assert (=> b!3911719 (= e!2418429 (isBalanced!3635 (fromList!825 lt!1362321)))))

(assert (= (and d!1160529 res!1582178) b!3911719))

(declare-fun m!4475173 () Bool)

(assert (=> d!1160529 m!4475173))

(declare-fun m!4475175 () Bool)

(assert (=> d!1160529 m!4475175))

(assert (=> b!3911719 m!4475175))

(assert (=> b!3911719 m!4475175))

(declare-fun m!4475177 () Bool)

(assert (=> b!3911719 m!4475177))

(assert (=> d!1160137 d!1160529))

(declare-fun d!1160533 () Bool)

(declare-fun charsToBigInt!1 (List!41573) Int)

(assert (=> d!1160533 (= (inv!17 (value!204516 (h!46872 prefixTokens!80))) (= (charsToBigInt!1 (text!47222 (value!204516 (h!46872 prefixTokens!80)))) (value!204508 (value!204516 (h!46872 prefixTokens!80)))))))

(declare-fun bs!585600 () Bool)

(assert (= bs!585600 d!1160533))

(declare-fun m!4475181 () Bool)

(assert (=> bs!585600 m!4475181))

(assert (=> b!3910649 d!1160533))

(declare-fun d!1160537 () Bool)

(declare-fun charsToInt!0 (List!41573) (_ BitVec 32))

(assert (=> d!1160537 (= (inv!16 (value!204516 (h!46872 suffixTokens!72))) (= (charsToInt!0 (text!47221 (value!204516 (h!46872 suffixTokens!72)))) (value!204507 (value!204516 (h!46872 suffixTokens!72)))))))

(declare-fun bs!585601 () Bool)

(assert (= bs!585601 d!1160537))

(declare-fun m!4475183 () Bool)

(assert (=> bs!585601 m!4475183))

(assert (=> b!3910652 d!1160537))

(declare-fun d!1160539 () Bool)

(declare-fun c!679973 () Bool)

(assert (=> d!1160539 (= c!679973 ((_ is Node!12663) (c!679729 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))) (value!204516 (_1!23481 (v!39193 lt!1362333)))))))))

(declare-fun e!2418431 () Bool)

(assert (=> d!1160539 (= (inv!55632 (c!679729 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))) (value!204516 (_1!23481 (v!39193 lt!1362333)))))) e!2418431)))

(declare-fun b!3911722 () Bool)

(assert (=> b!3911722 (= e!2418431 (inv!55638 (c!679729 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))) (value!204516 (_1!23481 (v!39193 lt!1362333)))))))))

(declare-fun b!3911723 () Bool)

(declare-fun e!2418432 () Bool)

(assert (=> b!3911723 (= e!2418431 e!2418432)))

(declare-fun res!1582179 () Bool)

(assert (=> b!3911723 (= res!1582179 (not ((_ is Leaf!19596) (c!679729 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))) (value!204516 (_1!23481 (v!39193 lt!1362333))))))))))

(assert (=> b!3911723 (=> res!1582179 e!2418432)))

(declare-fun b!3911724 () Bool)

(assert (=> b!3911724 (= e!2418432 (inv!55639 (c!679729 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))) (value!204516 (_1!23481 (v!39193 lt!1362333)))))))))

(assert (= (and d!1160539 c!679973) b!3911722))

(assert (= (and d!1160539 (not c!679973)) b!3911723))

(assert (= (and b!3911723 (not res!1582179)) b!3911724))

(declare-fun m!4475185 () Bool)

(assert (=> b!3911722 m!4475185))

(declare-fun m!4475187 () Bool)

(assert (=> b!3911724 m!4475187))

(assert (=> b!3910903 d!1160539))

(declare-fun d!1160541 () Bool)

(assert (=> d!1160541 (= (inv!15 (value!204516 (h!46872 prefixTokens!80))) (= (charsToBigInt!0 (text!47223 (value!204516 (h!46872 prefixTokens!80))) 0) (value!204511 (value!204516 (h!46872 prefixTokens!80)))))))

(declare-fun bs!585602 () Bool)

(assert (= bs!585602 d!1160541))

(declare-fun m!4475189 () Bool)

(assert (=> bs!585602 m!4475189))

(assert (=> b!3910645 d!1160541))

(declare-fun d!1160543 () Bool)

(declare-fun c!679974 () Bool)

(assert (=> d!1160543 (= c!679974 ((_ is IntegerValue!20046) (value!204516 (h!46872 (t!322859 suffixTokens!72)))))))

(declare-fun e!2418435 () Bool)

(assert (=> d!1160543 (= (inv!21 (value!204516 (h!46872 (t!322859 suffixTokens!72)))) e!2418435)))

(declare-fun b!3911725 () Bool)

(declare-fun e!2418433 () Bool)

(assert (=> b!3911725 (= e!2418433 (inv!15 (value!204516 (h!46872 (t!322859 suffixTokens!72)))))))

(declare-fun b!3911726 () Bool)

(declare-fun e!2418434 () Bool)

(assert (=> b!3911726 (= e!2418435 e!2418434)))

(declare-fun c!679975 () Bool)

(assert (=> b!3911726 (= c!679975 ((_ is IntegerValue!20047) (value!204516 (h!46872 (t!322859 suffixTokens!72)))))))

(declare-fun b!3911727 () Bool)

(assert (=> b!3911727 (= e!2418435 (inv!16 (value!204516 (h!46872 (t!322859 suffixTokens!72)))))))

(declare-fun b!3911728 () Bool)

(declare-fun res!1582180 () Bool)

(assert (=> b!3911728 (=> res!1582180 e!2418433)))

(assert (=> b!3911728 (= res!1582180 (not ((_ is IntegerValue!20048) (value!204516 (h!46872 (t!322859 suffixTokens!72))))))))

(assert (=> b!3911728 (= e!2418434 e!2418433)))

(declare-fun b!3911729 () Bool)

(assert (=> b!3911729 (= e!2418434 (inv!17 (value!204516 (h!46872 (t!322859 suffixTokens!72)))))))

(assert (= (and d!1160543 c!679974) b!3911727))

(assert (= (and d!1160543 (not c!679974)) b!3911726))

(assert (= (and b!3911726 c!679975) b!3911729))

(assert (= (and b!3911726 (not c!679975)) b!3911728))

(assert (= (and b!3911728 (not res!1582180)) b!3911725))

(declare-fun m!4475191 () Bool)

(assert (=> b!3911725 m!4475191))

(declare-fun m!4475193 () Bool)

(assert (=> b!3911727 m!4475193))

(declare-fun m!4475195 () Bool)

(assert (=> b!3911729 m!4475195))

(assert (=> b!3911152 d!1160543))

(declare-fun d!1160545 () Bool)

(declare-fun lt!1362667 () Int)

(assert (=> d!1160545 (>= lt!1362667 0)))

(declare-fun e!2418436 () Int)

(assert (=> d!1160545 (= lt!1362667 e!2418436)))

(declare-fun c!679976 () Bool)

(assert (=> d!1160545 (= c!679976 ((_ is Nil!41450) (t!322857 suffix!1176)))))

(assert (=> d!1160545 (= (size!31118 (t!322857 suffix!1176)) lt!1362667)))

(declare-fun b!3911730 () Bool)

(assert (=> b!3911730 (= e!2418436 0)))

(declare-fun b!3911731 () Bool)

(assert (=> b!3911731 (= e!2418436 (+ 1 (size!31118 (t!322857 (t!322857 suffix!1176)))))))

(assert (= (and d!1160545 c!679976) b!3911730))

(assert (= (and d!1160545 (not c!679976)) b!3911731))

(declare-fun m!4475199 () Bool)

(assert (=> b!3911731 m!4475199))

(assert (=> b!3910862 d!1160545))

(declare-fun d!1160549 () Bool)

(assert (=> d!1160549 (= (isEmpty!24656 (tail!5976 lt!1362321)) ((_ is Nil!41450) (tail!5976 lt!1362321)))))

(assert (=> b!3910710 d!1160549))

(declare-fun d!1160551 () Bool)

(assert (=> d!1160551 (= (tail!5976 lt!1362321) (t!322857 lt!1362321))))

(assert (=> b!3910710 d!1160551))

(assert (=> b!3911039 d!1160365))

(declare-fun d!1160553 () Bool)

(assert (=> d!1160553 (= (apply!9691 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362473)))) (seqFromList!4719 (originalCharacters!7052 (_1!23481 (get!13697 lt!1362473))))) (dynLambda!17801 (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362473))))) (seqFromList!4719 (originalCharacters!7052 (_1!23481 (get!13697 lt!1362473))))))))

(declare-fun b_lambda!114519 () Bool)

(assert (=> (not b_lambda!114519) (not d!1160553)))

(declare-fun t!323080 () Bool)

(declare-fun tb!232781 () Bool)

(assert (=> (and b!3910608 (= (toValue!8896 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72)))) (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362473)))))) t!323080) tb!232781))

(declare-fun result!282158 () Bool)

(assert (=> tb!232781 (= result!282158 (inv!21 (dynLambda!17801 (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362473))))) (seqFromList!4719 (originalCharacters!7052 (_1!23481 (get!13697 lt!1362473)))))))))

(declare-fun m!4475205 () Bool)

(assert (=> tb!232781 m!4475205))

(assert (=> d!1160553 t!323080))

(declare-fun b_and!297599 () Bool)

(assert (= b_and!297591 (and (=> t!323080 result!282158) b_and!297599)))

(declare-fun tb!232783 () Bool)

(declare-fun t!323082 () Bool)

(assert (=> (and b!3911130 (= (toValue!8896 (transformation!6452 (rule!9366 (h!46872 (t!322859 prefixTokens!80))))) (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362473)))))) t!323082) tb!232783))

(declare-fun result!282160 () Bool)

(assert (= result!282160 result!282158))

(assert (=> d!1160553 t!323082))

(declare-fun b_and!297601 () Bool)

(assert (= b_and!297587 (and (=> t!323082 result!282160) b_and!297601)))

(declare-fun t!323084 () Bool)

(declare-fun tb!232785 () Bool)

(assert (=> (and b!3910607 (= (toValue!8896 (transformation!6452 (h!46871 rules!2768))) (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362473)))))) t!323084) tb!232785))

(declare-fun result!282162 () Bool)

(assert (= result!282162 result!282158))

(assert (=> d!1160553 t!323084))

(declare-fun b_and!297603 () Bool)

(assert (= b_and!297597 (and (=> t!323084 result!282162) b_and!297603)))

(declare-fun t!323086 () Bool)

(declare-fun tb!232787 () Bool)

(assert (=> (and b!3910611 (= (toValue!8896 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80)))) (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362473)))))) t!323086) tb!232787))

(declare-fun result!282164 () Bool)

(assert (= result!282164 result!282158))

(assert (=> d!1160553 t!323086))

(declare-fun b_and!297605 () Bool)

(assert (= b_and!297589 (and (=> t!323086 result!282164) b_and!297605)))

(declare-fun tb!232789 () Bool)

(declare-fun t!323088 () Bool)

(assert (=> (and b!3911154 (= (toValue!8896 (transformation!6452 (rule!9366 (h!46872 (t!322859 suffixTokens!72))))) (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362473)))))) t!323088) tb!232789))

(declare-fun result!282166 () Bool)

(assert (= result!282166 result!282158))

(assert (=> d!1160553 t!323088))

(declare-fun b_and!297607 () Bool)

(assert (= b_and!297593 (and (=> t!323088 result!282166) b_and!297607)))

(declare-fun t!323090 () Bool)

(declare-fun tb!232791 () Bool)

(assert (=> (and b!3911170 (= (toValue!8896 (transformation!6452 (h!46871 (t!322858 rules!2768)))) (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362473)))))) t!323090) tb!232791))

(declare-fun result!282168 () Bool)

(assert (= result!282168 result!282158))

(assert (=> d!1160553 t!323090))

(declare-fun b_and!297609 () Bool)

(assert (= b_and!297595 (and (=> t!323090 result!282168) b_and!297609)))

(assert (=> d!1160553 m!4474151))

(declare-fun m!4475213 () Bool)

(assert (=> d!1160553 m!4475213))

(assert (=> b!3911039 d!1160553))

(declare-fun d!1160559 () Bool)

(assert (=> d!1160559 (= (seqFromList!4719 (originalCharacters!7052 (_1!23481 (get!13697 lt!1362473)))) (fromListB!2177 (originalCharacters!7052 (_1!23481 (get!13697 lt!1362473)))))))

(declare-fun bs!585609 () Bool)

(assert (= bs!585609 d!1160559))

(declare-fun m!4475217 () Bool)

(assert (=> bs!585609 m!4475217))

(assert (=> b!3911039 d!1160559))

(declare-fun d!1160561 () Bool)

(declare-fun c!679982 () Bool)

(assert (=> d!1160561 (= c!679982 ((_ is Nil!41452) lt!1362501))))

(declare-fun e!2418447 () (InoxSet Token!12042))

(assert (=> d!1160561 (= (content!6220 lt!1362501) e!2418447)))

(declare-fun b!3911750 () Bool)

(assert (=> b!3911750 (= e!2418447 ((as const (Array Token!12042 Bool)) false))))

(declare-fun b!3911751 () Bool)

(assert (=> b!3911751 (= e!2418447 ((_ map or) (store ((as const (Array Token!12042 Bool)) false) (h!46872 lt!1362501) true) (content!6220 (t!322859 lt!1362501))))))

(assert (= (and d!1160561 c!679982) b!3911750))

(assert (= (and d!1160561 (not c!679982)) b!3911751))

(declare-fun m!4475221 () Bool)

(assert (=> b!3911751 m!4475221))

(declare-fun m!4475223 () Bool)

(assert (=> b!3911751 m!4475223))

(assert (=> d!1160173 d!1160561))

(declare-fun d!1160565 () Bool)

(declare-fun c!679983 () Bool)

(assert (=> d!1160565 (= c!679983 ((_ is Nil!41452) prefixTokens!80))))

(declare-fun e!2418448 () (InoxSet Token!12042))

(assert (=> d!1160565 (= (content!6220 prefixTokens!80) e!2418448)))

(declare-fun b!3911752 () Bool)

(assert (=> b!3911752 (= e!2418448 ((as const (Array Token!12042 Bool)) false))))

(declare-fun b!3911753 () Bool)

(assert (=> b!3911753 (= e!2418448 ((_ map or) (store ((as const (Array Token!12042 Bool)) false) (h!46872 prefixTokens!80) true) (content!6220 (t!322859 prefixTokens!80))))))

(assert (= (and d!1160565 c!679983) b!3911752))

(assert (= (and d!1160565 (not c!679983)) b!3911753))

(declare-fun m!4475225 () Bool)

(assert (=> b!3911753 m!4475225))

(assert (=> b!3911753 m!4475107))

(assert (=> d!1160173 d!1160565))

(declare-fun d!1160567 () Bool)

(declare-fun c!679984 () Bool)

(assert (=> d!1160567 (= c!679984 ((_ is Nil!41452) suffixTokens!72))))

(declare-fun e!2418449 () (InoxSet Token!12042))

(assert (=> d!1160567 (= (content!6220 suffixTokens!72) e!2418449)))

(declare-fun b!3911754 () Bool)

(assert (=> b!3911754 (= e!2418449 ((as const (Array Token!12042 Bool)) false))))

(declare-fun b!3911755 () Bool)

(assert (=> b!3911755 (= e!2418449 ((_ map or) (store ((as const (Array Token!12042 Bool)) false) (h!46872 suffixTokens!72) true) (content!6220 (t!322859 suffixTokens!72))))))

(assert (= (and d!1160567 c!679984) b!3911754))

(assert (= (and d!1160567 (not c!679984)) b!3911755))

(declare-fun m!4475227 () Bool)

(assert (=> b!3911755 m!4475227))

(declare-fun m!4475229 () Bool)

(assert (=> b!3911755 m!4475229))

(assert (=> d!1160173 d!1160567))

(declare-fun b!3911756 () Bool)

(declare-fun res!1582189 () Bool)

(declare-fun e!2418456 () Bool)

(assert (=> b!3911756 (=> res!1582189 e!2418456)))

(assert (=> b!3911756 (= res!1582189 (not ((_ is ElementMatch!11357) (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))))))

(declare-fun e!2418455 () Bool)

(assert (=> b!3911756 (= e!2418455 e!2418456)))

(declare-fun b!3911757 () Bool)

(declare-fun res!1582190 () Bool)

(declare-fun e!2418452 () Bool)

(assert (=> b!3911757 (=> res!1582190 e!2418452)))

(assert (=> b!3911757 (= res!1582190 (not (isEmpty!24656 (tail!5976 (list!15407 (charsOf!4276 (_1!23481 (get!13697 lt!1362378))))))))))

(declare-fun b!3911758 () Bool)

(declare-fun e!2418453 () Bool)

(assert (=> b!3911758 (= e!2418453 e!2418455)))

(declare-fun c!679987 () Bool)

(assert (=> b!3911758 (= c!679987 ((_ is EmptyLang!11357) (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))))))

(declare-fun bm!284311 () Bool)

(declare-fun call!284316 () Bool)

(assert (=> bm!284311 (= call!284316 (isEmpty!24656 (list!15407 (charsOf!4276 (_1!23481 (get!13697 lt!1362378))))))))

(declare-fun b!3911759 () Bool)

(declare-fun res!1582193 () Bool)

(declare-fun e!2418451 () Bool)

(assert (=> b!3911759 (=> (not res!1582193) (not e!2418451))))

(assert (=> b!3911759 (= res!1582193 (not call!284316))))

(declare-fun b!3911760 () Bool)

(assert (=> b!3911760 (= e!2418451 (= (head!8258 (list!15407 (charsOf!4276 (_1!23481 (get!13697 lt!1362378))))) (c!679728 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))))))

(declare-fun b!3911761 () Bool)

(declare-fun res!1582195 () Bool)

(assert (=> b!3911761 (=> (not res!1582195) (not e!2418451))))

(assert (=> b!3911761 (= res!1582195 (isEmpty!24656 (tail!5976 (list!15407 (charsOf!4276 (_1!23481 (get!13697 lt!1362378)))))))))

(declare-fun b!3911762 () Bool)

(declare-fun e!2418454 () Bool)

(assert (=> b!3911762 (= e!2418454 (matchR!5446 (derivativeStep!3433 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) (head!8258 (list!15407 (charsOf!4276 (_1!23481 (get!13697 lt!1362378)))))) (tail!5976 (list!15407 (charsOf!4276 (_1!23481 (get!13697 lt!1362378)))))))))

(declare-fun b!3911763 () Bool)

(declare-fun e!2418450 () Bool)

(assert (=> b!3911763 (= e!2418450 e!2418452)))

(declare-fun res!1582191 () Bool)

(assert (=> b!3911763 (=> res!1582191 e!2418452)))

(assert (=> b!3911763 (= res!1582191 call!284316)))

(declare-fun d!1160569 () Bool)

(assert (=> d!1160569 e!2418453))

(declare-fun c!679985 () Bool)

(assert (=> d!1160569 (= c!679985 ((_ is EmptyExpr!11357) (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))))))

(declare-fun lt!1362669 () Bool)

(assert (=> d!1160569 (= lt!1362669 e!2418454)))

(declare-fun c!679986 () Bool)

(assert (=> d!1160569 (= c!679986 (isEmpty!24656 (list!15407 (charsOf!4276 (_1!23481 (get!13697 lt!1362378))))))))

(assert (=> d!1160569 (validRegex!5167 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))))

(assert (=> d!1160569 (= (matchR!5446 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) (list!15407 (charsOf!4276 (_1!23481 (get!13697 lt!1362378))))) lt!1362669)))

(declare-fun b!3911764 () Bool)

(assert (=> b!3911764 (= e!2418456 e!2418450)))

(declare-fun res!1582196 () Bool)

(assert (=> b!3911764 (=> (not res!1582196) (not e!2418450))))

(assert (=> b!3911764 (= res!1582196 (not lt!1362669))))

(declare-fun b!3911765 () Bool)

(assert (=> b!3911765 (= e!2418454 (nullable!3968 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))))))

(declare-fun b!3911766 () Bool)

(assert (=> b!3911766 (= e!2418452 (not (= (head!8258 (list!15407 (charsOf!4276 (_1!23481 (get!13697 lt!1362378))))) (c!679728 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))))))))

(declare-fun b!3911767 () Bool)

(declare-fun res!1582192 () Bool)

(assert (=> b!3911767 (=> res!1582192 e!2418456)))

(assert (=> b!3911767 (= res!1582192 e!2418451)))

(declare-fun res!1582194 () Bool)

(assert (=> b!3911767 (=> (not res!1582194) (not e!2418451))))

(assert (=> b!3911767 (= res!1582194 lt!1362669)))

(declare-fun b!3911768 () Bool)

(assert (=> b!3911768 (= e!2418453 (= lt!1362669 call!284316))))

(declare-fun b!3911769 () Bool)

(assert (=> b!3911769 (= e!2418455 (not lt!1362669))))

(assert (= (and d!1160569 c!679986) b!3911765))

(assert (= (and d!1160569 (not c!679986)) b!3911762))

(assert (= (and d!1160569 c!679985) b!3911768))

(assert (= (and d!1160569 (not c!679985)) b!3911758))

(assert (= (and b!3911758 c!679987) b!3911769))

(assert (= (and b!3911758 (not c!679987)) b!3911756))

(assert (= (and b!3911756 (not res!1582189)) b!3911767))

(assert (= (and b!3911767 res!1582194) b!3911759))

(assert (= (and b!3911759 res!1582193) b!3911761))

(assert (= (and b!3911761 res!1582195) b!3911760))

(assert (= (and b!3911767 (not res!1582192)) b!3911764))

(assert (= (and b!3911764 res!1582196) b!3911763))

(assert (= (and b!3911763 (not res!1582191)) b!3911757))

(assert (= (and b!3911757 (not res!1582190)) b!3911766))

(assert (= (or b!3911768 b!3911759 b!3911763) bm!284311))

(assert (=> b!3911760 m!4473917))

(declare-fun m!4475231 () Bool)

(assert (=> b!3911760 m!4475231))

(assert (=> b!3911762 m!4473917))

(assert (=> b!3911762 m!4475231))

(assert (=> b!3911762 m!4475231))

(declare-fun m!4475233 () Bool)

(assert (=> b!3911762 m!4475233))

(assert (=> b!3911762 m!4473917))

(declare-fun m!4475235 () Bool)

(assert (=> b!3911762 m!4475235))

(assert (=> b!3911762 m!4475233))

(assert (=> b!3911762 m!4475235))

(declare-fun m!4475237 () Bool)

(assert (=> b!3911762 m!4475237))

(assert (=> d!1160569 m!4473917))

(declare-fun m!4475239 () Bool)

(assert (=> d!1160569 m!4475239))

(assert (=> d!1160569 m!4473793))

(assert (=> b!3911761 m!4473917))

(assert (=> b!3911761 m!4475235))

(assert (=> b!3911761 m!4475235))

(declare-fun m!4475241 () Bool)

(assert (=> b!3911761 m!4475241))

(assert (=> b!3911765 m!4473797))

(assert (=> b!3911757 m!4473917))

(assert (=> b!3911757 m!4475235))

(assert (=> b!3911757 m!4475235))

(assert (=> b!3911757 m!4475241))

(assert (=> b!3911766 m!4473917))

(assert (=> b!3911766 m!4475231))

(assert (=> bm!284311 m!4473917))

(assert (=> bm!284311 m!4475239))

(assert (=> b!3910832 d!1160569))

(assert (=> b!3910832 d!1160257))

(assert (=> b!3910832 d!1160259))

(assert (=> b!3910832 d!1160261))

(declare-fun d!1160571 () Bool)

(assert (=> d!1160571 (= (isEmpty!24656 (originalCharacters!7052 (h!46872 suffixTokens!72))) ((_ is Nil!41450) (originalCharacters!7052 (h!46872 suffixTokens!72))))))

(assert (=> d!1160161 d!1160571))

(assert (=> b!3910714 d!1160549))

(assert (=> b!3910714 d!1160551))

(declare-fun d!1160573 () Bool)

(declare-fun lt!1362670 () Int)

(assert (=> d!1160573 (>= lt!1362670 0)))

(declare-fun e!2418457 () Int)

(assert (=> d!1160573 (= lt!1362670 e!2418457)))

(declare-fun c!679988 () Bool)

(assert (=> d!1160573 (= c!679988 ((_ is Nil!41450) (originalCharacters!7052 (h!46872 suffixTokens!72))))))

(assert (=> d!1160573 (= (size!31118 (originalCharacters!7052 (h!46872 suffixTokens!72))) lt!1362670)))

(declare-fun b!3911770 () Bool)

(assert (=> b!3911770 (= e!2418457 0)))

(declare-fun b!3911771 () Bool)

(assert (=> b!3911771 (= e!2418457 (+ 1 (size!31118 (t!322857 (originalCharacters!7052 (h!46872 suffixTokens!72))))))))

(assert (= (and d!1160573 c!679988) b!3911770))

(assert (= (and d!1160573 (not c!679988)) b!3911771))

(declare-fun m!4475243 () Bool)

(assert (=> b!3911771 m!4475243))

(assert (=> b!3911053 d!1160573))

(declare-fun d!1160575 () Bool)

(declare-fun c!679991 () Bool)

(assert (=> d!1160575 (= c!679991 ((_ is Nil!41450) lt!1362502))))

(declare-fun e!2418460 () (InoxSet C!22900))

(assert (=> d!1160575 (= (content!6219 lt!1362502) e!2418460)))

(declare-fun b!3911776 () Bool)

(assert (=> b!3911776 (= e!2418460 ((as const (Array C!22900 Bool)) false))))

(declare-fun b!3911777 () Bool)

(assert (=> b!3911777 (= e!2418460 ((_ map or) (store ((as const (Array C!22900 Bool)) false) (h!46870 lt!1362502) true) (content!6219 (t!322857 lt!1362502))))))

(assert (= (and d!1160575 c!679991) b!3911776))

(assert (= (and d!1160575 (not c!679991)) b!3911777))

(declare-fun m!4475245 () Bool)

(assert (=> b!3911777 m!4475245))

(declare-fun m!4475247 () Bool)

(assert (=> b!3911777 m!4475247))

(assert (=> d!1160175 d!1160575))

(declare-fun d!1160577 () Bool)

(declare-fun c!679992 () Bool)

(assert (=> d!1160577 (= c!679992 ((_ is Nil!41450) prefix!426))))

(declare-fun e!2418461 () (InoxSet C!22900))

(assert (=> d!1160577 (= (content!6219 prefix!426) e!2418461)))

(declare-fun b!3911778 () Bool)

(assert (=> b!3911778 (= e!2418461 ((as const (Array C!22900 Bool)) false))))

(declare-fun b!3911779 () Bool)

(assert (=> b!3911779 (= e!2418461 ((_ map or) (store ((as const (Array C!22900 Bool)) false) (h!46870 prefix!426) true) (content!6219 (t!322857 prefix!426))))))

(assert (= (and d!1160577 c!679992) b!3911778))

(assert (= (and d!1160577 (not c!679992)) b!3911779))

(declare-fun m!4475249 () Bool)

(assert (=> b!3911779 m!4475249))

(declare-fun m!4475251 () Bool)

(assert (=> b!3911779 m!4475251))

(assert (=> d!1160175 d!1160577))

(declare-fun d!1160579 () Bool)

(declare-fun c!679993 () Bool)

(assert (=> d!1160579 (= c!679993 ((_ is Nil!41450) suffix!1176))))

(declare-fun e!2418462 () (InoxSet C!22900))

(assert (=> d!1160579 (= (content!6219 suffix!1176) e!2418462)))

(declare-fun b!3911780 () Bool)

(assert (=> b!3911780 (= e!2418462 ((as const (Array C!22900 Bool)) false))))

(declare-fun b!3911781 () Bool)

(assert (=> b!3911781 (= e!2418462 ((_ map or) (store ((as const (Array C!22900 Bool)) false) (h!46870 suffix!1176) true) (content!6219 (t!322857 suffix!1176))))))

(assert (= (and d!1160579 c!679993) b!3911780))

(assert (= (and d!1160579 (not c!679993)) b!3911781))

(declare-fun m!4475253 () Bool)

(assert (=> b!3911781 m!4475253))

(declare-fun m!4475255 () Bool)

(assert (=> b!3911781 m!4475255))

(assert (=> d!1160175 d!1160579))

(declare-fun d!1160581 () Bool)

(assert (=> d!1160581 (= (inv!55627 (tag!7312 (h!46871 (t!322858 rules!2768)))) (= (mod (str.len (value!204515 (tag!7312 (h!46871 (t!322858 rules!2768))))) 2) 0))))

(assert (=> b!3911169 d!1160581))

(declare-fun d!1160583 () Bool)

(declare-fun res!1582197 () Bool)

(declare-fun e!2418463 () Bool)

(assert (=> d!1160583 (=> (not res!1582197) (not e!2418463))))

(assert (=> d!1160583 (= res!1582197 (semiInverseModEq!2768 (toChars!8755 (transformation!6452 (h!46871 (t!322858 rules!2768)))) (toValue!8896 (transformation!6452 (h!46871 (t!322858 rules!2768))))))))

(assert (=> d!1160583 (= (inv!55631 (transformation!6452 (h!46871 (t!322858 rules!2768)))) e!2418463)))

(declare-fun b!3911782 () Bool)

(assert (=> b!3911782 (= e!2418463 (equivClasses!2667 (toChars!8755 (transformation!6452 (h!46871 (t!322858 rules!2768)))) (toValue!8896 (transformation!6452 (h!46871 (t!322858 rules!2768))))))))

(assert (= (and d!1160583 res!1582197) b!3911782))

(declare-fun m!4475257 () Bool)

(assert (=> d!1160583 m!4475257))

(declare-fun m!4475259 () Bool)

(assert (=> b!3911782 m!4475259))

(assert (=> b!3911169 d!1160583))

(declare-fun d!1160585 () Bool)

(declare-fun e!2418465 () Bool)

(assert (=> d!1160585 e!2418465))

(declare-fun res!1582198 () Bool)

(assert (=> d!1160585 (=> (not res!1582198) (not e!2418465))))

(declare-fun lt!1362671 () List!41576)

(assert (=> d!1160585 (= res!1582198 (= (content!6220 lt!1362671) ((_ map or) (content!6220 (t!322859 (Cons!41452 (_1!23481 (v!39193 lt!1362333)) Nil!41452))) (content!6220 (_1!23482 lt!1362324)))))))

(declare-fun e!2418464 () List!41576)

(assert (=> d!1160585 (= lt!1362671 e!2418464)))

(declare-fun c!679994 () Bool)

(assert (=> d!1160585 (= c!679994 ((_ is Nil!41452) (t!322859 (Cons!41452 (_1!23481 (v!39193 lt!1362333)) Nil!41452))))))

(assert (=> d!1160585 (= (++!10661 (t!322859 (Cons!41452 (_1!23481 (v!39193 lt!1362333)) Nil!41452)) (_1!23482 lt!1362324)) lt!1362671)))

(declare-fun b!3911786 () Bool)

(assert (=> b!3911786 (= e!2418465 (or (not (= (_1!23482 lt!1362324) Nil!41452)) (= lt!1362671 (t!322859 (Cons!41452 (_1!23481 (v!39193 lt!1362333)) Nil!41452)))))))

(declare-fun b!3911784 () Bool)

(assert (=> b!3911784 (= e!2418464 (Cons!41452 (h!46872 (t!322859 (Cons!41452 (_1!23481 (v!39193 lt!1362333)) Nil!41452))) (++!10661 (t!322859 (t!322859 (Cons!41452 (_1!23481 (v!39193 lt!1362333)) Nil!41452))) (_1!23482 lt!1362324))))))

(declare-fun b!3911783 () Bool)

(assert (=> b!3911783 (= e!2418464 (_1!23482 lt!1362324))))

(declare-fun b!3911785 () Bool)

(declare-fun res!1582199 () Bool)

(assert (=> b!3911785 (=> (not res!1582199) (not e!2418465))))

(assert (=> b!3911785 (= res!1582199 (= (size!31121 lt!1362671) (+ (size!31121 (t!322859 (Cons!41452 (_1!23481 (v!39193 lt!1362333)) Nil!41452))) (size!31121 (_1!23482 lt!1362324)))))))

(assert (= (and d!1160585 c!679994) b!3911783))

(assert (= (and d!1160585 (not c!679994)) b!3911784))

(assert (= (and d!1160585 res!1582198) b!3911785))

(assert (= (and b!3911785 res!1582199) b!3911786))

(declare-fun m!4475261 () Bool)

(assert (=> d!1160585 m!4475261))

(declare-fun m!4475263 () Bool)

(assert (=> d!1160585 m!4475263))

(assert (=> d!1160585 m!4474211))

(declare-fun m!4475265 () Bool)

(assert (=> b!3911784 m!4475265))

(declare-fun m!4475267 () Bool)

(assert (=> b!3911785 m!4475267))

(declare-fun m!4475269 () Bool)

(assert (=> b!3911785 m!4475269))

(assert (=> b!3911785 m!4474219))

(assert (=> b!3911085 d!1160585))

(declare-fun d!1160587 () Bool)

(assert (=> d!1160587 (= (isEmpty!24657 (_1!23482 lt!1362495)) ((_ is Nil!41452) (_1!23482 lt!1362495)))))

(assert (=> b!3911092 d!1160587))

(declare-fun d!1160589 () Bool)

(assert (=> d!1160589 (= (inv!55633 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80)))) (value!204516 (h!46872 prefixTokens!80)))) (isBalanced!3635 (c!679729 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80)))) (value!204516 (h!46872 prefixTokens!80))))))))

(declare-fun bs!585610 () Bool)

(assert (= bs!585610 d!1160589))

(declare-fun m!4475271 () Bool)

(assert (=> bs!585610 m!4475271))

(assert (=> tb!232565 d!1160589))

(declare-fun d!1160591 () Bool)

(declare-fun lt!1362672 () Int)

(assert (=> d!1160591 (>= lt!1362672 0)))

(declare-fun e!2418466 () Int)

(assert (=> d!1160591 (= lt!1362672 e!2418466)))

(declare-fun c!679995 () Bool)

(assert (=> d!1160591 (= c!679995 ((_ is Nil!41450) (_2!23481 (get!13697 lt!1362378))))))

(assert (=> d!1160591 (= (size!31118 (_2!23481 (get!13697 lt!1362378))) lt!1362672)))

(declare-fun b!3911787 () Bool)

(assert (=> b!3911787 (= e!2418466 0)))

(declare-fun b!3911788 () Bool)

(assert (=> b!3911788 (= e!2418466 (+ 1 (size!31118 (t!322857 (_2!23481 (get!13697 lt!1362378))))))))

(assert (= (and d!1160591 c!679995) b!3911787))

(assert (= (and d!1160591 (not c!679995)) b!3911788))

(declare-fun m!4475273 () Bool)

(assert (=> b!3911788 m!4475273))

(assert (=> b!3910837 d!1160591))

(assert (=> b!3910837 d!1160261))

(assert (=> b!3910837 d!1160153))

(declare-fun b!3911789 () Bool)

(declare-fun e!2418467 () tuple2!40696)

(assert (=> b!3911789 (= e!2418467 (tuple2!40697 Nil!41452 (_2!23481 (v!39193 lt!1362477))))))

(declare-fun d!1160593 () Bool)

(declare-fun e!2418468 () Bool)

(assert (=> d!1160593 e!2418468))

(declare-fun c!679997 () Bool)

(declare-fun lt!1362675 () tuple2!40696)

(assert (=> d!1160593 (= c!679997 (> (size!31121 (_1!23482 lt!1362675)) 0))))

(assert (=> d!1160593 (= lt!1362675 e!2418467)))

(declare-fun c!679996 () Bool)

(declare-fun lt!1362673 () Option!8872)

(assert (=> d!1160593 (= c!679996 ((_ is Some!8871) lt!1362673))))

(assert (=> d!1160593 (= lt!1362673 (maxPrefix!3345 thiss!20629 rules!2768 (_2!23481 (v!39193 lt!1362477))))))

(assert (=> d!1160593 (= (lexList!1809 thiss!20629 rules!2768 (_2!23481 (v!39193 lt!1362477))) lt!1362675)))

(declare-fun b!3911790 () Bool)

(declare-fun e!2418469 () Bool)

(assert (=> b!3911790 (= e!2418468 e!2418469)))

(declare-fun res!1582200 () Bool)

(assert (=> b!3911790 (= res!1582200 (< (size!31118 (_2!23482 lt!1362675)) (size!31118 (_2!23481 (v!39193 lt!1362477)))))))

(assert (=> b!3911790 (=> (not res!1582200) (not e!2418469))))

(declare-fun b!3911791 () Bool)

(assert (=> b!3911791 (= e!2418468 (= (_2!23482 lt!1362675) (_2!23481 (v!39193 lt!1362477))))))

(declare-fun b!3911792 () Bool)

(assert (=> b!3911792 (= e!2418469 (not (isEmpty!24657 (_1!23482 lt!1362675))))))

(declare-fun b!3911793 () Bool)

(declare-fun lt!1362674 () tuple2!40696)

(assert (=> b!3911793 (= e!2418467 (tuple2!40697 (Cons!41452 (_1!23481 (v!39193 lt!1362673)) (_1!23482 lt!1362674)) (_2!23482 lt!1362674)))))

(assert (=> b!3911793 (= lt!1362674 (lexList!1809 thiss!20629 rules!2768 (_2!23481 (v!39193 lt!1362673))))))

(assert (= (and d!1160593 c!679996) b!3911793))

(assert (= (and d!1160593 (not c!679996)) b!3911789))

(assert (= (and d!1160593 c!679997) b!3911790))

(assert (= (and d!1160593 (not c!679997)) b!3911791))

(assert (= (and b!3911790 res!1582200) b!3911792))

(declare-fun m!4475275 () Bool)

(assert (=> d!1160593 m!4475275))

(declare-fun m!4475277 () Bool)

(assert (=> d!1160593 m!4475277))

(declare-fun m!4475279 () Bool)

(assert (=> b!3911790 m!4475279))

(declare-fun m!4475281 () Bool)

(assert (=> b!3911790 m!4475281))

(declare-fun m!4475283 () Bool)

(assert (=> b!3911792 m!4475283))

(declare-fun m!4475285 () Bool)

(assert (=> b!3911793 m!4475285))

(assert (=> b!3911051 d!1160593))

(declare-fun d!1160595 () Bool)

(declare-fun lt!1362676 () Int)

(assert (=> d!1160595 (>= lt!1362676 0)))

(declare-fun e!2418470 () Int)

(assert (=> d!1160595 (= lt!1362676 e!2418470)))

(declare-fun c!679998 () Bool)

(assert (=> d!1160595 (= c!679998 ((_ is Nil!41452) lt!1362501))))

(assert (=> d!1160595 (= (size!31121 lt!1362501) lt!1362676)))

(declare-fun b!3911794 () Bool)

(assert (=> b!3911794 (= e!2418470 0)))

(declare-fun b!3911795 () Bool)

(assert (=> b!3911795 (= e!2418470 (+ 1 (size!31121 (t!322859 lt!1362501))))))

(assert (= (and d!1160595 c!679998) b!3911794))

(assert (= (and d!1160595 (not c!679998)) b!3911795))

(declare-fun m!4475287 () Bool)

(assert (=> b!3911795 m!4475287))

(assert (=> b!3911105 d!1160595))

(declare-fun d!1160597 () Bool)

(declare-fun lt!1362677 () Int)

(assert (=> d!1160597 (>= lt!1362677 0)))

(declare-fun e!2418471 () Int)

(assert (=> d!1160597 (= lt!1362677 e!2418471)))

(declare-fun c!679999 () Bool)

(assert (=> d!1160597 (= c!679999 ((_ is Nil!41452) prefixTokens!80))))

(assert (=> d!1160597 (= (size!31121 prefixTokens!80) lt!1362677)))

(declare-fun b!3911796 () Bool)

(assert (=> b!3911796 (= e!2418471 0)))

(declare-fun b!3911797 () Bool)

(assert (=> b!3911797 (= e!2418471 (+ 1 (size!31121 (t!322859 prefixTokens!80))))))

(assert (= (and d!1160597 c!679999) b!3911796))

(assert (= (and d!1160597 (not c!679999)) b!3911797))

(assert (=> b!3911797 m!4475113))

(assert (=> b!3911105 d!1160597))

(declare-fun d!1160599 () Bool)

(declare-fun lt!1362678 () Int)

(assert (=> d!1160599 (>= lt!1362678 0)))

(declare-fun e!2418472 () Int)

(assert (=> d!1160599 (= lt!1362678 e!2418472)))

(declare-fun c!680000 () Bool)

(assert (=> d!1160599 (= c!680000 ((_ is Nil!41452) suffixTokens!72))))

(assert (=> d!1160599 (= (size!31121 suffixTokens!72) lt!1362678)))

(declare-fun b!3911798 () Bool)

(assert (=> b!3911798 (= e!2418472 0)))

(declare-fun b!3911799 () Bool)

(assert (=> b!3911799 (= e!2418472 (+ 1 (size!31121 (t!322859 suffixTokens!72))))))

(assert (= (and d!1160599 c!680000) b!3911798))

(assert (= (and d!1160599 (not c!680000)) b!3911799))

(declare-fun m!4475289 () Bool)

(assert (=> b!3911799 m!4475289))

(assert (=> b!3911105 d!1160599))

(declare-fun b!3911801 () Bool)

(declare-fun e!2418473 () List!41574)

(assert (=> b!3911801 (= e!2418473 (Cons!41450 (h!46870 lt!1362321) (++!10662 (t!322857 lt!1362321) lt!1362425)))))

(declare-fun b!3911800 () Bool)

(assert (=> b!3911800 (= e!2418473 lt!1362425)))

(declare-fun e!2418474 () Bool)

(declare-fun lt!1362679 () List!41574)

(declare-fun b!3911803 () Bool)

(assert (=> b!3911803 (= e!2418474 (or (not (= lt!1362425 Nil!41450)) (= lt!1362679 lt!1362321)))))

(declare-fun d!1160601 () Bool)

(assert (=> d!1160601 e!2418474))

(declare-fun res!1582201 () Bool)

(assert (=> d!1160601 (=> (not res!1582201) (not e!2418474))))

(assert (=> d!1160601 (= res!1582201 (= (content!6219 lt!1362679) ((_ map or) (content!6219 lt!1362321) (content!6219 lt!1362425))))))

(assert (=> d!1160601 (= lt!1362679 e!2418473)))

(declare-fun c!680001 () Bool)

(assert (=> d!1160601 (= c!680001 ((_ is Nil!41450) lt!1362321))))

(assert (=> d!1160601 (= (++!10662 lt!1362321 lt!1362425) lt!1362679)))

(declare-fun b!3911802 () Bool)

(declare-fun res!1582202 () Bool)

(assert (=> b!3911802 (=> (not res!1582202) (not e!2418474))))

(assert (=> b!3911802 (= res!1582202 (= (size!31118 lt!1362679) (+ (size!31118 lt!1362321) (size!31118 lt!1362425))))))

(assert (= (and d!1160601 c!680001) b!3911800))

(assert (= (and d!1160601 (not c!680001)) b!3911801))

(assert (= (and d!1160601 res!1582201) b!3911802))

(assert (= (and b!3911802 res!1582202) b!3911803))

(declare-fun m!4475291 () Bool)

(assert (=> b!3911801 m!4475291))

(declare-fun m!4475293 () Bool)

(assert (=> d!1160601 m!4475293))

(assert (=> d!1160601 m!4474127))

(declare-fun m!4475295 () Bool)

(assert (=> d!1160601 m!4475295))

(declare-fun m!4475297 () Bool)

(assert (=> b!3911802 m!4475297))

(assert (=> b!3911802 m!4473671))

(declare-fun m!4475299 () Bool)

(assert (=> b!3911802 m!4475299))

(assert (=> d!1160103 d!1160601))

(assert (=> d!1160103 d!1160153))

(assert (=> d!1160103 d!1160143))

(declare-fun b!3911805 () Bool)

(declare-fun e!2418475 () List!41574)

(assert (=> b!3911805 (= e!2418475 (Cons!41450 (h!46870 (t!322857 prefix!426)) (++!10662 (t!322857 (t!322857 prefix!426)) suffix!1176)))))

(declare-fun b!3911804 () Bool)

(assert (=> b!3911804 (= e!2418475 suffix!1176)))

(declare-fun lt!1362680 () List!41574)

(declare-fun b!3911807 () Bool)

(declare-fun e!2418476 () Bool)

(assert (=> b!3911807 (= e!2418476 (or (not (= suffix!1176 Nil!41450)) (= lt!1362680 (t!322857 prefix!426))))))

(declare-fun d!1160603 () Bool)

(assert (=> d!1160603 e!2418476))

(declare-fun res!1582203 () Bool)

(assert (=> d!1160603 (=> (not res!1582203) (not e!2418476))))

(assert (=> d!1160603 (= res!1582203 (= (content!6219 lt!1362680) ((_ map or) (content!6219 (t!322857 prefix!426)) (content!6219 suffix!1176))))))

(assert (=> d!1160603 (= lt!1362680 e!2418475)))

(declare-fun c!680002 () Bool)

(assert (=> d!1160603 (= c!680002 ((_ is Nil!41450) (t!322857 prefix!426)))))

(assert (=> d!1160603 (= (++!10662 (t!322857 prefix!426) suffix!1176) lt!1362680)))

(declare-fun b!3911806 () Bool)

(declare-fun res!1582204 () Bool)

(assert (=> b!3911806 (=> (not res!1582204) (not e!2418476))))

(assert (=> b!3911806 (= res!1582204 (= (size!31118 lt!1362680) (+ (size!31118 (t!322857 prefix!426)) (size!31118 suffix!1176))))))

(assert (= (and d!1160603 c!680002) b!3911804))

(assert (= (and d!1160603 (not c!680002)) b!3911805))

(assert (= (and d!1160603 res!1582203) b!3911806))

(assert (= (and b!3911806 res!1582204) b!3911807))

(declare-fun m!4475301 () Bool)

(assert (=> b!3911805 m!4475301))

(declare-fun m!4475303 () Bool)

(assert (=> d!1160603 m!4475303))

(assert (=> d!1160603 m!4475251))

(assert (=> d!1160603 m!4474253))

(declare-fun m!4475305 () Bool)

(assert (=> b!3911806 m!4475305))

(assert (=> b!3911806 m!4474179))

(assert (=> b!3911806 m!4473743))

(assert (=> b!3911108 d!1160603))

(declare-fun d!1160605 () Bool)

(declare-fun nullableFct!1126 (Regex!11357) Bool)

(assert (=> d!1160605 (= (nullable!3968 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))) (nullableFct!1126 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))))))

(declare-fun bs!585611 () Bool)

(assert (= bs!585611 d!1160605))

(declare-fun m!4475307 () Bool)

(assert (=> bs!585611 m!4475307))

(assert (=> b!3910718 d!1160605))

(declare-fun d!1160607 () Bool)

(declare-fun lt!1362681 () Int)

(assert (=> d!1160607 (>= lt!1362681 0)))

(declare-fun e!2418477 () Int)

(assert (=> d!1160607 (= lt!1362681 e!2418477)))

(declare-fun c!680003 () Bool)

(assert (=> d!1160607 (= c!680003 ((_ is Nil!41450) (_2!23481 (get!13697 lt!1362473))))))

(assert (=> d!1160607 (= (size!31118 (_2!23481 (get!13697 lt!1362473))) lt!1362681)))

(declare-fun b!3911808 () Bool)

(assert (=> b!3911808 (= e!2418477 0)))

(declare-fun b!3911809 () Bool)

(assert (=> b!3911809 (= e!2418477 (+ 1 (size!31118 (t!322857 (_2!23481 (get!13697 lt!1362473))))))))

(assert (= (and d!1160607 c!680003) b!3911808))

(assert (= (and d!1160607 (not c!680003)) b!3911809))

(declare-fun m!4475309 () Bool)

(assert (=> b!3911809 m!4475309))

(assert (=> b!3911032 d!1160607))

(assert (=> b!3911032 d!1160365))

(assert (=> b!3911032 d!1160153))

(assert (=> b!3911037 d!1160367))

(assert (=> b!3911037 d!1160371))

(assert (=> b!3911037 d!1160365))

(declare-fun d!1160609 () Bool)

(declare-fun c!680004 () Bool)

(assert (=> d!1160609 (= c!680004 ((_ is Nil!41450) lt!1362454))))

(declare-fun e!2418478 () (InoxSet C!22900))

(assert (=> d!1160609 (= (content!6219 lt!1362454) e!2418478)))

(declare-fun b!3911810 () Bool)

(assert (=> b!3911810 (= e!2418478 ((as const (Array C!22900 Bool)) false))))

(declare-fun b!3911811 () Bool)

(assert (=> b!3911811 (= e!2418478 ((_ map or) (store ((as const (Array C!22900 Bool)) false) (h!46870 lt!1362454) true) (content!6219 (t!322857 lt!1362454))))))

(assert (= (and d!1160609 c!680004) b!3911810))

(assert (= (and d!1160609 (not c!680004)) b!3911811))

(declare-fun m!4475311 () Bool)

(assert (=> b!3911811 m!4475311))

(declare-fun m!4475313 () Bool)

(assert (=> b!3911811 m!4475313))

(assert (=> d!1160139 d!1160609))

(declare-fun d!1160611 () Bool)

(declare-fun c!680005 () Bool)

(assert (=> d!1160611 (= c!680005 ((_ is Nil!41450) lt!1362321))))

(declare-fun e!2418479 () (InoxSet C!22900))

(assert (=> d!1160611 (= (content!6219 lt!1362321) e!2418479)))

(declare-fun b!3911812 () Bool)

(assert (=> b!3911812 (= e!2418479 ((as const (Array C!22900 Bool)) false))))

(declare-fun b!3911813 () Bool)

(assert (=> b!3911813 (= e!2418479 ((_ map or) (store ((as const (Array C!22900 Bool)) false) (h!46870 lt!1362321) true) (content!6219 (t!322857 lt!1362321))))))

(assert (= (and d!1160611 c!680005) b!3911812))

(assert (= (and d!1160611 (not c!680005)) b!3911813))

(declare-fun m!4475315 () Bool)

(assert (=> b!3911813 m!4475315))

(declare-fun m!4475317 () Bool)

(assert (=> b!3911813 m!4475317))

(assert (=> d!1160139 d!1160611))

(declare-fun d!1160613 () Bool)

(declare-fun c!680006 () Bool)

(assert (=> d!1160613 (= c!680006 ((_ is Nil!41450) (_2!23481 (v!39193 lt!1362333))))))

(declare-fun e!2418480 () (InoxSet C!22900))

(assert (=> d!1160613 (= (content!6219 (_2!23481 (v!39193 lt!1362333))) e!2418480)))

(declare-fun b!3911814 () Bool)

(assert (=> b!3911814 (= e!2418480 ((as const (Array C!22900 Bool)) false))))

(declare-fun b!3911815 () Bool)

(assert (=> b!3911815 (= e!2418480 ((_ map or) (store ((as const (Array C!22900 Bool)) false) (h!46870 (_2!23481 (v!39193 lt!1362333))) true) (content!6219 (t!322857 (_2!23481 (v!39193 lt!1362333))))))))

(assert (= (and d!1160613 c!680006) b!3911814))

(assert (= (and d!1160613 (not c!680006)) b!3911815))

(declare-fun m!4475319 () Bool)

(assert (=> b!3911815 m!4475319))

(declare-fun m!4475321 () Bool)

(assert (=> b!3911815 m!4475321))

(assert (=> d!1160139 d!1160613))

(declare-fun d!1160615 () Bool)

(assert (=> d!1160615 (= (isEmpty!24656 lt!1362321) ((_ is Nil!41450) lt!1362321))))

(assert (=> d!1160019 d!1160615))

(declare-fun bm!284318 () Bool)

(declare-fun call!284325 () Bool)

(declare-fun c!680011 () Bool)

(assert (=> bm!284318 (= call!284325 (validRegex!5167 (ite c!680011 (regOne!23227 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))) (regTwo!23226 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))))))))

(declare-fun b!3911834 () Bool)

(declare-fun e!2418500 () Bool)

(declare-fun e!2418501 () Bool)

(assert (=> b!3911834 (= e!2418500 e!2418501)))

(declare-fun res!1582218 () Bool)

(assert (=> b!3911834 (=> (not res!1582218) (not e!2418501))))

(declare-fun call!284323 () Bool)

(assert (=> b!3911834 (= res!1582218 call!284323)))

(declare-fun b!3911835 () Bool)

(declare-fun e!2418496 () Bool)

(declare-fun e!2418498 () Bool)

(assert (=> b!3911835 (= e!2418496 e!2418498)))

(declare-fun c!680012 () Bool)

(assert (=> b!3911835 (= c!680012 ((_ is Star!11357) (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))))))

(declare-fun b!3911836 () Bool)

(declare-fun res!1582219 () Bool)

(declare-fun e!2418495 () Bool)

(assert (=> b!3911836 (=> (not res!1582219) (not e!2418495))))

(assert (=> b!3911836 (= res!1582219 call!284325)))

(declare-fun e!2418499 () Bool)

(assert (=> b!3911836 (= e!2418499 e!2418495)))

(declare-fun b!3911837 () Bool)

(assert (=> b!3911837 (= e!2418495 call!284323)))

(declare-fun bm!284319 () Bool)

(declare-fun call!284324 () Bool)

(assert (=> bm!284319 (= call!284324 (validRegex!5167 (ite c!680012 (reg!11686 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))) (ite c!680011 (regTwo!23227 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))) (regOne!23226 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))))))))

(declare-fun b!3911839 () Bool)

(declare-fun res!1582217 () Bool)

(assert (=> b!3911839 (=> res!1582217 e!2418500)))

(assert (=> b!3911839 (= res!1582217 (not ((_ is Concat!18040) (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))))))

(assert (=> b!3911839 (= e!2418499 e!2418500)))

(declare-fun b!3911840 () Bool)

(assert (=> b!3911840 (= e!2418501 call!284325)))

(declare-fun bm!284320 () Bool)

(assert (=> bm!284320 (= call!284323 call!284324)))

(declare-fun b!3911841 () Bool)

(declare-fun e!2418497 () Bool)

(assert (=> b!3911841 (= e!2418498 e!2418497)))

(declare-fun res!1582216 () Bool)

(assert (=> b!3911841 (= res!1582216 (not (nullable!3968 (reg!11686 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))))))))

(assert (=> b!3911841 (=> (not res!1582216) (not e!2418497))))

(declare-fun b!3911842 () Bool)

(assert (=> b!3911842 (= e!2418498 e!2418499)))

(assert (=> b!3911842 (= c!680011 ((_ is Union!11357) (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))))))

(declare-fun d!1160617 () Bool)

(declare-fun res!1582215 () Bool)

(assert (=> d!1160617 (=> res!1582215 e!2418496)))

(assert (=> d!1160617 (= res!1582215 ((_ is ElementMatch!11357) (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))))))

(assert (=> d!1160617 (= (validRegex!5167 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))) e!2418496)))

(declare-fun b!3911838 () Bool)

(assert (=> b!3911838 (= e!2418497 call!284324)))

(assert (= (and d!1160617 (not res!1582215)) b!3911835))

(assert (= (and b!3911835 c!680012) b!3911841))

(assert (= (and b!3911835 (not c!680012)) b!3911842))

(assert (= (and b!3911841 res!1582216) b!3911838))

(assert (= (and b!3911842 c!680011) b!3911836))

(assert (= (and b!3911842 (not c!680011)) b!3911839))

(assert (= (and b!3911836 res!1582219) b!3911837))

(assert (= (and b!3911839 (not res!1582217)) b!3911834))

(assert (= (and b!3911834 res!1582218) b!3911840))

(assert (= (or b!3911837 b!3911834) bm!284320))

(assert (= (or b!3911836 b!3911840) bm!284318))

(assert (= (or b!3911838 bm!284320) bm!284319))

(declare-fun m!4475323 () Bool)

(assert (=> bm!284318 m!4475323))

(declare-fun m!4475325 () Bool)

(assert (=> bm!284319 m!4475325))

(declare-fun m!4475327 () Bool)

(assert (=> b!3911841 m!4475327))

(assert (=> d!1160019 d!1160617))

(declare-fun d!1160619 () Bool)

(declare-fun lt!1362682 () Int)

(assert (=> d!1160619 (>= lt!1362682 0)))

(declare-fun e!2418502 () Int)

(assert (=> d!1160619 (= lt!1362682 e!2418502)))

(declare-fun c!680013 () Bool)

(assert (=> d!1160619 (= c!680013 ((_ is Nil!41450) lt!1362502))))

(assert (=> d!1160619 (= (size!31118 lt!1362502) lt!1362682)))

(declare-fun b!3911843 () Bool)

(assert (=> b!3911843 (= e!2418502 0)))

(declare-fun b!3911844 () Bool)

(assert (=> b!3911844 (= e!2418502 (+ 1 (size!31118 (t!322857 lt!1362502))))))

(assert (= (and d!1160619 c!680013) b!3911843))

(assert (= (and d!1160619 (not c!680013)) b!3911844))

(declare-fun m!4475329 () Bool)

(assert (=> b!3911844 m!4475329))

(assert (=> b!3911109 d!1160619))

(assert (=> b!3911109 d!1160157))

(assert (=> b!3911109 d!1160069))

(declare-fun b!3911846 () Bool)

(declare-fun e!2418503 () List!41574)

(assert (=> b!3911846 (= e!2418503 (Cons!41450 (h!46870 (t!322857 lt!1362321)) (++!10662 (t!322857 (t!322857 lt!1362321)) (_2!23481 (v!39193 lt!1362333)))))))

(declare-fun b!3911845 () Bool)

(assert (=> b!3911845 (= e!2418503 (_2!23481 (v!39193 lt!1362333)))))

(declare-fun b!3911848 () Bool)

(declare-fun lt!1362683 () List!41574)

(declare-fun e!2418504 () Bool)

(assert (=> b!3911848 (= e!2418504 (or (not (= (_2!23481 (v!39193 lt!1362333)) Nil!41450)) (= lt!1362683 (t!322857 lt!1362321))))))

(declare-fun d!1160621 () Bool)

(assert (=> d!1160621 e!2418504))

(declare-fun res!1582220 () Bool)

(assert (=> d!1160621 (=> (not res!1582220) (not e!2418504))))

(assert (=> d!1160621 (= res!1582220 (= (content!6219 lt!1362683) ((_ map or) (content!6219 (t!322857 lt!1362321)) (content!6219 (_2!23481 (v!39193 lt!1362333))))))))

(assert (=> d!1160621 (= lt!1362683 e!2418503)))

(declare-fun c!680014 () Bool)

(assert (=> d!1160621 (= c!680014 ((_ is Nil!41450) (t!322857 lt!1362321)))))

(assert (=> d!1160621 (= (++!10662 (t!322857 lt!1362321) (_2!23481 (v!39193 lt!1362333))) lt!1362683)))

(declare-fun b!3911847 () Bool)

(declare-fun res!1582221 () Bool)

(assert (=> b!3911847 (=> (not res!1582221) (not e!2418504))))

(assert (=> b!3911847 (= res!1582221 (= (size!31118 lt!1362683) (+ (size!31118 (t!322857 lt!1362321)) (size!31118 (_2!23481 (v!39193 lt!1362333))))))))

(assert (= (and d!1160621 c!680014) b!3911845))

(assert (= (and d!1160621 (not c!680014)) b!3911846))

(assert (= (and d!1160621 res!1582220) b!3911847))

(assert (= (and b!3911847 res!1582221) b!3911848))

(declare-fun m!4475331 () Bool)

(assert (=> b!3911846 m!4475331))

(declare-fun m!4475333 () Bool)

(assert (=> d!1160621 m!4475333))

(assert (=> d!1160621 m!4475317))

(assert (=> d!1160621 m!4474129))

(declare-fun m!4475335 () Bool)

(assert (=> b!3911847 m!4475335))

(assert (=> b!3911847 m!4474133))

(assert (=> b!3911847 m!4473745))

(assert (=> b!3911008 d!1160621))

(declare-fun d!1160623 () Bool)

(assert (=> d!1160623 (= (inv!55627 (tag!7312 (rule!9366 (h!46872 (t!322859 suffixTokens!72))))) (= (mod (str.len (value!204515 (tag!7312 (rule!9366 (h!46872 (t!322859 suffixTokens!72)))))) 2) 0))))

(assert (=> b!3911153 d!1160623))

(declare-fun d!1160625 () Bool)

(declare-fun res!1582222 () Bool)

(declare-fun e!2418505 () Bool)

(assert (=> d!1160625 (=> (not res!1582222) (not e!2418505))))

(assert (=> d!1160625 (= res!1582222 (semiInverseModEq!2768 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 suffixTokens!72))))) (toValue!8896 (transformation!6452 (rule!9366 (h!46872 (t!322859 suffixTokens!72)))))))))

(assert (=> d!1160625 (= (inv!55631 (transformation!6452 (rule!9366 (h!46872 (t!322859 suffixTokens!72))))) e!2418505)))

(declare-fun b!3911849 () Bool)

(assert (=> b!3911849 (= e!2418505 (equivClasses!2667 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 suffixTokens!72))))) (toValue!8896 (transformation!6452 (rule!9366 (h!46872 (t!322859 suffixTokens!72)))))))))

(assert (= (and d!1160625 res!1582222) b!3911849))

(declare-fun m!4475337 () Bool)

(assert (=> d!1160625 m!4475337))

(declare-fun m!4475339 () Bool)

(assert (=> b!3911849 m!4475339))

(assert (=> b!3911153 d!1160625))

(declare-fun d!1160627 () Bool)

(declare-fun res!1582227 () Bool)

(declare-fun e!2418510 () Bool)

(assert (=> d!1160627 (=> res!1582227 e!2418510)))

(assert (=> d!1160627 (= res!1582227 ((_ is Nil!41451) rules!2768))))

(assert (=> d!1160627 (= (noDuplicateTag!2504 thiss!20629 rules!2768 Nil!41454) e!2418510)))

(declare-fun b!3911854 () Bool)

(declare-fun e!2418511 () Bool)

(assert (=> b!3911854 (= e!2418510 e!2418511)))

(declare-fun res!1582228 () Bool)

(assert (=> b!3911854 (=> (not res!1582228) (not e!2418511))))

(declare-fun contains!8330 (List!41578 String!47128) Bool)

(assert (=> b!3911854 (= res!1582228 (not (contains!8330 Nil!41454 (tag!7312 (h!46871 rules!2768)))))))

(declare-fun b!3911855 () Bool)

(assert (=> b!3911855 (= e!2418511 (noDuplicateTag!2504 thiss!20629 (t!322858 rules!2768) (Cons!41454 (tag!7312 (h!46871 rules!2768)) Nil!41454)))))

(assert (= (and d!1160627 (not res!1582227)) b!3911854))

(assert (= (and b!3911854 res!1582228) b!3911855))

(declare-fun m!4475341 () Bool)

(assert (=> b!3911854 m!4475341))

(declare-fun m!4475343 () Bool)

(assert (=> b!3911855 m!4475343))

(assert (=> b!3911069 d!1160627))

(declare-fun b!3911856 () Bool)

(declare-fun res!1582229 () Bool)

(declare-fun e!2418518 () Bool)

(assert (=> b!3911856 (=> res!1582229 e!2418518)))

(assert (=> b!3911856 (= res!1582229 (not ((_ is ElementMatch!11357) (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))))))

(declare-fun e!2418517 () Bool)

(assert (=> b!3911856 (= e!2418517 e!2418518)))

(declare-fun b!3911857 () Bool)

(declare-fun res!1582230 () Bool)

(declare-fun e!2418514 () Bool)

(assert (=> b!3911857 (=> res!1582230 e!2418514)))

(assert (=> b!3911857 (= res!1582230 (not (isEmpty!24656 (tail!5976 (_1!23483 (findLongestMatchInner!1229 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) Nil!41450 (size!31118 Nil!41450) lt!1362329 lt!1362329 (size!31118 lt!1362329)))))))))

(declare-fun b!3911858 () Bool)

(declare-fun e!2418515 () Bool)

(assert (=> b!3911858 (= e!2418515 e!2418517)))

(declare-fun c!680017 () Bool)

(assert (=> b!3911858 (= c!680017 ((_ is EmptyLang!11357) (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))))))

(declare-fun bm!284321 () Bool)

(declare-fun call!284326 () Bool)

(assert (=> bm!284321 (= call!284326 (isEmpty!24656 (_1!23483 (findLongestMatchInner!1229 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) Nil!41450 (size!31118 Nil!41450) lt!1362329 lt!1362329 (size!31118 lt!1362329)))))))

(declare-fun b!3911859 () Bool)

(declare-fun res!1582233 () Bool)

(declare-fun e!2418513 () Bool)

(assert (=> b!3911859 (=> (not res!1582233) (not e!2418513))))

(assert (=> b!3911859 (= res!1582233 (not call!284326))))

(declare-fun b!3911860 () Bool)

(assert (=> b!3911860 (= e!2418513 (= (head!8258 (_1!23483 (findLongestMatchInner!1229 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) Nil!41450 (size!31118 Nil!41450) lt!1362329 lt!1362329 (size!31118 lt!1362329)))) (c!679728 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))))))

(declare-fun b!3911861 () Bool)

(declare-fun res!1582235 () Bool)

(assert (=> b!3911861 (=> (not res!1582235) (not e!2418513))))

(assert (=> b!3911861 (= res!1582235 (isEmpty!24656 (tail!5976 (_1!23483 (findLongestMatchInner!1229 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) Nil!41450 (size!31118 Nil!41450) lt!1362329 lt!1362329 (size!31118 lt!1362329))))))))

(declare-fun b!3911862 () Bool)

(declare-fun e!2418516 () Bool)

(assert (=> b!3911862 (= e!2418516 (matchR!5446 (derivativeStep!3433 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) (head!8258 (_1!23483 (findLongestMatchInner!1229 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) Nil!41450 (size!31118 Nil!41450) lt!1362329 lt!1362329 (size!31118 lt!1362329))))) (tail!5976 (_1!23483 (findLongestMatchInner!1229 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) Nil!41450 (size!31118 Nil!41450) lt!1362329 lt!1362329 (size!31118 lt!1362329))))))))

(declare-fun b!3911863 () Bool)

(declare-fun e!2418512 () Bool)

(assert (=> b!3911863 (= e!2418512 e!2418514)))

(declare-fun res!1582231 () Bool)

(assert (=> b!3911863 (=> res!1582231 e!2418514)))

(assert (=> b!3911863 (= res!1582231 call!284326)))

(declare-fun d!1160629 () Bool)

(assert (=> d!1160629 e!2418515))

(declare-fun c!680015 () Bool)

(assert (=> d!1160629 (= c!680015 ((_ is EmptyExpr!11357) (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))))))

(declare-fun lt!1362684 () Bool)

(assert (=> d!1160629 (= lt!1362684 e!2418516)))

(declare-fun c!680016 () Bool)

(assert (=> d!1160629 (= c!680016 (isEmpty!24656 (_1!23483 (findLongestMatchInner!1229 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) Nil!41450 (size!31118 Nil!41450) lt!1362329 lt!1362329 (size!31118 lt!1362329)))))))

(assert (=> d!1160629 (validRegex!5167 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))))

(assert (=> d!1160629 (= (matchR!5446 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) (_1!23483 (findLongestMatchInner!1229 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) Nil!41450 (size!31118 Nil!41450) lt!1362329 lt!1362329 (size!31118 lt!1362329)))) lt!1362684)))

(declare-fun b!3911864 () Bool)

(assert (=> b!3911864 (= e!2418518 e!2418512)))

(declare-fun res!1582236 () Bool)

(assert (=> b!3911864 (=> (not res!1582236) (not e!2418512))))

(assert (=> b!3911864 (= res!1582236 (not lt!1362684))))

(declare-fun b!3911865 () Bool)

(assert (=> b!3911865 (= e!2418516 (nullable!3968 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))))))

(declare-fun b!3911866 () Bool)

(assert (=> b!3911866 (= e!2418514 (not (= (head!8258 (_1!23483 (findLongestMatchInner!1229 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) Nil!41450 (size!31118 Nil!41450) lt!1362329 lt!1362329 (size!31118 lt!1362329)))) (c!679728 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))))))))

(declare-fun b!3911867 () Bool)

(declare-fun res!1582232 () Bool)

(assert (=> b!3911867 (=> res!1582232 e!2418518)))

(assert (=> b!3911867 (= res!1582232 e!2418513)))

(declare-fun res!1582234 () Bool)

(assert (=> b!3911867 (=> (not res!1582234) (not e!2418513))))

(assert (=> b!3911867 (= res!1582234 lt!1362684)))

(declare-fun b!3911868 () Bool)

(assert (=> b!3911868 (= e!2418515 (= lt!1362684 call!284326))))

(declare-fun b!3911869 () Bool)

(assert (=> b!3911869 (= e!2418517 (not lt!1362684))))

(assert (= (and d!1160629 c!680016) b!3911865))

(assert (= (and d!1160629 (not c!680016)) b!3911862))

(assert (= (and d!1160629 c!680015) b!3911868))

(assert (= (and d!1160629 (not c!680015)) b!3911858))

(assert (= (and b!3911858 c!680017) b!3911869))

(assert (= (and b!3911858 (not c!680017)) b!3911856))

(assert (= (and b!3911856 (not res!1582229)) b!3911867))

(assert (= (and b!3911867 res!1582234) b!3911859))

(assert (= (and b!3911859 res!1582233) b!3911861))

(assert (= (and b!3911861 res!1582235) b!3911860))

(assert (= (and b!3911867 (not res!1582232)) b!3911864))

(assert (= (and b!3911864 res!1582236) b!3911863))

(assert (= (and b!3911863 (not res!1582231)) b!3911857))

(assert (= (and b!3911857 (not res!1582230)) b!3911866))

(assert (= (or b!3911868 b!3911859 b!3911863) bm!284321))

(declare-fun m!4475345 () Bool)

(assert (=> b!3911860 m!4475345))

(assert (=> b!3911862 m!4475345))

(assert (=> b!3911862 m!4475345))

(declare-fun m!4475347 () Bool)

(assert (=> b!3911862 m!4475347))

(declare-fun m!4475349 () Bool)

(assert (=> b!3911862 m!4475349))

(assert (=> b!3911862 m!4475347))

(assert (=> b!3911862 m!4475349))

(declare-fun m!4475351 () Bool)

(assert (=> b!3911862 m!4475351))

(assert (=> d!1160629 m!4473933))

(assert (=> d!1160629 m!4473793))

(assert (=> b!3911861 m!4475349))

(assert (=> b!3911861 m!4475349))

(declare-fun m!4475353 () Bool)

(assert (=> b!3911861 m!4475353))

(assert (=> b!3911865 m!4473797))

(assert (=> b!3911857 m!4475349))

(assert (=> b!3911857 m!4475349))

(assert (=> b!3911857 m!4475353))

(assert (=> b!3911866 m!4475345))

(assert (=> bm!284321 m!4473933))

(assert (=> b!3910833 d!1160629))

(declare-fun b!3911951 () Bool)

(declare-fun e!2418569 () tuple2!40698)

(declare-fun e!2418572 () tuple2!40698)

(assert (=> b!3911951 (= e!2418569 e!2418572)))

(declare-fun c!680052 () Bool)

(assert (=> b!3911951 (= c!680052 (= (size!31118 Nil!41450) (size!31118 lt!1362329)))))

(declare-fun b!3911952 () Bool)

(declare-fun e!2418571 () tuple2!40698)

(assert (=> b!3911952 (= e!2418571 (tuple2!40699 Nil!41450 lt!1362329))))

(declare-fun b!3911953 () Bool)

(declare-fun e!2418568 () Unit!59591)

(declare-fun Unit!59595 () Unit!59591)

(assert (=> b!3911953 (= e!2418568 Unit!59595)))

(declare-fun lt!1362841 () Unit!59591)

(declare-fun call!284368 () Unit!59591)

(assert (=> b!3911953 (= lt!1362841 call!284368)))

(declare-fun call!284367 () Bool)

(assert (=> b!3911953 call!284367))

(declare-fun lt!1362848 () Unit!59591)

(assert (=> b!3911953 (= lt!1362848 lt!1362841)))

(declare-fun lt!1362836 () Unit!59591)

(declare-fun call!284371 () Unit!59591)

(assert (=> b!3911953 (= lt!1362836 call!284371)))

(assert (=> b!3911953 (= lt!1362329 Nil!41450)))

(declare-fun lt!1362843 () Unit!59591)

(assert (=> b!3911953 (= lt!1362843 lt!1362836)))

(assert (=> b!3911953 false))

(declare-fun b!3911954 () Bool)

(declare-fun e!2418570 () Bool)

(declare-fun e!2418575 () Bool)

(assert (=> b!3911954 (= e!2418570 e!2418575)))

(declare-fun res!1582250 () Bool)

(assert (=> b!3911954 (=> res!1582250 e!2418575)))

(declare-fun lt!1362837 () tuple2!40698)

(assert (=> b!3911954 (= res!1582250 (isEmpty!24656 (_1!23483 lt!1362837)))))

(declare-fun bm!284362 () Bool)

(declare-fun call!284369 () Regex!11357)

(declare-fun call!284370 () C!22900)

(assert (=> bm!284362 (= call!284369 (derivativeStep!3433 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) call!284370))))

(declare-fun b!3911955 () Bool)

(declare-fun c!680051 () Bool)

(declare-fun call!284373 () Bool)

(assert (=> b!3911955 (= c!680051 call!284373)))

(declare-fun lt!1362859 () Unit!59591)

(declare-fun lt!1362849 () Unit!59591)

(assert (=> b!3911955 (= lt!1362859 lt!1362849)))

(declare-fun lt!1362854 () C!22900)

(declare-fun lt!1362850 () List!41574)

(assert (=> b!3911955 (= (++!10662 (++!10662 Nil!41450 (Cons!41450 lt!1362854 Nil!41450)) lt!1362850) lt!1362329)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1227 (List!41574 C!22900 List!41574 List!41574) Unit!59591)

(assert (=> b!3911955 (= lt!1362849 (lemmaMoveElementToOtherListKeepsConcatEq!1227 Nil!41450 lt!1362854 lt!1362850 lt!1362329))))

(assert (=> b!3911955 (= lt!1362850 (tail!5976 lt!1362329))))

(assert (=> b!3911955 (= lt!1362854 (head!8258 lt!1362329))))

(declare-fun lt!1362839 () Unit!59591)

(declare-fun lt!1362846 () Unit!59591)

(assert (=> b!3911955 (= lt!1362839 lt!1362846)))

(assert (=> b!3911955 (isPrefix!3547 (++!10662 Nil!41450 (Cons!41450 (head!8258 (getSuffix!2002 lt!1362329 Nil!41450)) Nil!41450)) lt!1362329)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!609 (List!41574 List!41574) Unit!59591)

(assert (=> b!3911955 (= lt!1362846 (lemmaAddHeadSuffixToPrefixStillPrefix!609 Nil!41450 lt!1362329))))

(declare-fun lt!1362856 () Unit!59591)

(declare-fun lt!1362845 () Unit!59591)

(assert (=> b!3911955 (= lt!1362856 lt!1362845)))

(assert (=> b!3911955 (= lt!1362845 (lemmaAddHeadSuffixToPrefixStillPrefix!609 Nil!41450 lt!1362329))))

(declare-fun lt!1362852 () List!41574)

(assert (=> b!3911955 (= lt!1362852 (++!10662 Nil!41450 (Cons!41450 (head!8258 lt!1362329) Nil!41450)))))

(declare-fun lt!1362861 () Unit!59591)

(assert (=> b!3911955 (= lt!1362861 e!2418568)))

(declare-fun c!680050 () Bool)

(assert (=> b!3911955 (= c!680050 (= (size!31118 Nil!41450) (size!31118 lt!1362329)))))

(declare-fun lt!1362851 () Unit!59591)

(declare-fun lt!1362858 () Unit!59591)

(assert (=> b!3911955 (= lt!1362851 lt!1362858)))

(assert (=> b!3911955 (<= (size!31118 Nil!41450) (size!31118 lt!1362329))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!417 (List!41574 List!41574) Unit!59591)

(assert (=> b!3911955 (= lt!1362858 (lemmaIsPrefixThenSmallerEqSize!417 Nil!41450 lt!1362329))))

(declare-fun e!2418573 () tuple2!40698)

(assert (=> b!3911955 (= e!2418572 e!2418573)))

(declare-fun b!3911956 () Bool)

(declare-fun call!284372 () tuple2!40698)

(assert (=> b!3911956 (= e!2418573 call!284372)))

(declare-fun bm!284363 () Bool)

(assert (=> bm!284363 (= call!284368 (lemmaIsPrefixRefl!2248 lt!1362329 lt!1362329))))

(declare-fun b!3911957 () Bool)

(assert (=> b!3911957 (= e!2418569 (tuple2!40699 Nil!41450 lt!1362329))))

(declare-fun d!1160631 () Bool)

(assert (=> d!1160631 e!2418570))

(declare-fun res!1582251 () Bool)

(assert (=> d!1160631 (=> (not res!1582251) (not e!2418570))))

(assert (=> d!1160631 (= res!1582251 (= (++!10662 (_1!23483 lt!1362837) (_2!23483 lt!1362837)) lt!1362329))))

(assert (=> d!1160631 (= lt!1362837 e!2418569)))

(declare-fun c!680054 () Bool)

(declare-fun lostCause!983 (Regex!11357) Bool)

(assert (=> d!1160631 (= c!680054 (lostCause!983 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))))))

(declare-fun lt!1362840 () Unit!59591)

(declare-fun Unit!59596 () Unit!59591)

(assert (=> d!1160631 (= lt!1362840 Unit!59596)))

(assert (=> d!1160631 (= (getSuffix!2002 lt!1362329 Nil!41450) lt!1362329)))

(declare-fun lt!1362835 () Unit!59591)

(declare-fun lt!1362853 () Unit!59591)

(assert (=> d!1160631 (= lt!1362835 lt!1362853)))

(declare-fun lt!1362857 () List!41574)

(assert (=> d!1160631 (= lt!1362329 lt!1362857)))

(assert (=> d!1160631 (= lt!1362853 (lemmaSamePrefixThenSameSuffix!1768 Nil!41450 lt!1362329 Nil!41450 lt!1362857 lt!1362329))))

(assert (=> d!1160631 (= lt!1362857 (getSuffix!2002 lt!1362329 Nil!41450))))

(declare-fun lt!1362838 () Unit!59591)

(declare-fun lt!1362855 () Unit!59591)

(assert (=> d!1160631 (= lt!1362838 lt!1362855)))

(assert (=> d!1160631 (isPrefix!3547 Nil!41450 (++!10662 Nil!41450 lt!1362329))))

(assert (=> d!1160631 (= lt!1362855 (lemmaConcatTwoListThenFirstIsPrefix!2410 Nil!41450 lt!1362329))))

(assert (=> d!1160631 (validRegex!5167 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))))

(assert (=> d!1160631 (= (findLongestMatchInner!1229 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) Nil!41450 (size!31118 Nil!41450) lt!1362329 lt!1362329 (size!31118 lt!1362329)) lt!1362837)))

(declare-fun bm!284364 () Bool)

(assert (=> bm!284364 (= call!284370 (head!8258 lt!1362329))))

(declare-fun b!3911958 () Bool)

(declare-fun Unit!59597 () Unit!59591)

(assert (=> b!3911958 (= e!2418568 Unit!59597)))

(declare-fun bm!284365 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!766 (List!41574 List!41574 List!41574) Unit!59591)

(assert (=> bm!284365 (= call!284371 (lemmaIsPrefixSameLengthThenSameList!766 lt!1362329 Nil!41450 lt!1362329))))

(declare-fun b!3911959 () Bool)

(assert (=> b!3911959 (= e!2418575 (>= (size!31118 (_1!23483 lt!1362837)) (size!31118 Nil!41450)))))

(declare-fun bm!284366 () Bool)

(declare-fun call!284374 () List!41574)

(assert (=> bm!284366 (= call!284374 (tail!5976 lt!1362329))))

(declare-fun bm!284367 () Bool)

(assert (=> bm!284367 (= call!284367 (isPrefix!3547 lt!1362329 lt!1362329))))

(declare-fun b!3911960 () Bool)

(assert (=> b!3911960 (= e!2418573 e!2418571)))

(declare-fun lt!1362844 () tuple2!40698)

(assert (=> b!3911960 (= lt!1362844 call!284372)))

(declare-fun c!680053 () Bool)

(assert (=> b!3911960 (= c!680053 (isEmpty!24656 (_1!23483 lt!1362844)))))

(declare-fun bm!284368 () Bool)

(assert (=> bm!284368 (= call!284372 (findLongestMatchInner!1229 call!284369 lt!1362852 (+ (size!31118 Nil!41450) 1) call!284374 lt!1362329 (size!31118 lt!1362329)))))

(declare-fun b!3911961 () Bool)

(declare-fun c!680055 () Bool)

(assert (=> b!3911961 (= c!680055 call!284373)))

(declare-fun lt!1362860 () Unit!59591)

(declare-fun lt!1362842 () Unit!59591)

(assert (=> b!3911961 (= lt!1362860 lt!1362842)))

(assert (=> b!3911961 (= lt!1362329 Nil!41450)))

(assert (=> b!3911961 (= lt!1362842 call!284371)))

(declare-fun lt!1362862 () Unit!59591)

(declare-fun lt!1362847 () Unit!59591)

(assert (=> b!3911961 (= lt!1362862 lt!1362847)))

(assert (=> b!3911961 call!284367))

(assert (=> b!3911961 (= lt!1362847 call!284368)))

(declare-fun e!2418574 () tuple2!40698)

(assert (=> b!3911961 (= e!2418572 e!2418574)))

(declare-fun bm!284369 () Bool)

(assert (=> bm!284369 (= call!284373 (nullable!3968 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))))))

(declare-fun b!3911962 () Bool)

(assert (=> b!3911962 (= e!2418574 (tuple2!40699 Nil!41450 lt!1362329))))

(declare-fun b!3911963 () Bool)

(assert (=> b!3911963 (= e!2418574 (tuple2!40699 Nil!41450 Nil!41450))))

(declare-fun b!3911964 () Bool)

(assert (=> b!3911964 (= e!2418571 lt!1362844)))

(assert (= (and d!1160631 c!680054) b!3911957))

(assert (= (and d!1160631 (not c!680054)) b!3911951))

(assert (= (and b!3911951 c!680052) b!3911961))

(assert (= (and b!3911951 (not c!680052)) b!3911955))

(assert (= (and b!3911961 c!680055) b!3911963))

(assert (= (and b!3911961 (not c!680055)) b!3911962))

(assert (= (and b!3911955 c!680050) b!3911953))

(assert (= (and b!3911955 (not c!680050)) b!3911958))

(assert (= (and b!3911955 c!680051) b!3911960))

(assert (= (and b!3911955 (not c!680051)) b!3911956))

(assert (= (and b!3911960 c!680053) b!3911952))

(assert (= (and b!3911960 (not c!680053)) b!3911964))

(assert (= (or b!3911960 b!3911956) bm!284364))

(assert (= (or b!3911960 b!3911956) bm!284366))

(assert (= (or b!3911960 b!3911956) bm!284362))

(assert (= (or b!3911960 b!3911956) bm!284368))

(assert (= (or b!3911961 b!3911953) bm!284365))

(assert (= (or b!3911961 b!3911955) bm!284369))

(assert (= (or b!3911961 b!3911953) bm!284367))

(assert (= (or b!3911961 b!3911953) bm!284363))

(assert (= (and d!1160631 res!1582251) b!3911954))

(assert (= (and b!3911954 (not res!1582250)) b!3911959))

(declare-fun m!4475437 () Bool)

(assert (=> bm!284362 m!4475437))

(assert (=> bm!284369 m!4473797))

(assert (=> bm!284367 m!4474163))

(assert (=> bm!284366 m!4474047))

(assert (=> bm!284364 m!4474933))

(declare-fun m!4475443 () Bool)

(assert (=> b!3911955 m!4475443))

(declare-fun m!4475445 () Bool)

(assert (=> b!3911955 m!4475445))

(declare-fun m!4475447 () Bool)

(assert (=> b!3911955 m!4475447))

(declare-fun m!4475449 () Bool)

(assert (=> b!3911955 m!4475449))

(declare-fun m!4475451 () Bool)

(assert (=> b!3911955 m!4475451))

(assert (=> b!3911955 m!4475445))

(declare-fun m!4475453 () Bool)

(assert (=> b!3911955 m!4475453))

(assert (=> b!3911955 m!4474047))

(declare-fun m!4475457 () Bool)

(assert (=> b!3911955 m!4475457))

(assert (=> b!3911955 m!4473711))

(assert (=> b!3911955 m!4474933))

(assert (=> b!3911955 m!4473935))

(assert (=> b!3911955 m!4475443))

(declare-fun m!4475459 () Bool)

(assert (=> b!3911955 m!4475459))

(assert (=> b!3911955 m!4475457))

(declare-fun m!4475461 () Bool)

(assert (=> b!3911955 m!4475461))

(declare-fun m!4475463 () Bool)

(assert (=> b!3911955 m!4475463))

(declare-fun m!4475465 () Bool)

(assert (=> d!1160631 m!4475465))

(assert (=> d!1160631 m!4475443))

(declare-fun m!4475467 () Bool)

(assert (=> d!1160631 m!4475467))

(declare-fun m!4475469 () Bool)

(assert (=> d!1160631 m!4475469))

(declare-fun m!4475471 () Bool)

(assert (=> d!1160631 m!4475471))

(declare-fun m!4475473 () Bool)

(assert (=> d!1160631 m!4475473))

(assert (=> d!1160631 m!4473793))

(assert (=> d!1160631 m!4475469))

(declare-fun m!4475479 () Bool)

(assert (=> d!1160631 m!4475479))

(declare-fun m!4475481 () Bool)

(assert (=> bm!284365 m!4475481))

(declare-fun m!4475483 () Bool)

(assert (=> b!3911954 m!4475483))

(assert (=> bm!284368 m!4473711))

(declare-fun m!4475485 () Bool)

(assert (=> bm!284368 m!4475485))

(assert (=> bm!284363 m!4474165))

(declare-fun m!4475487 () Bool)

(assert (=> b!3911960 m!4475487))

(declare-fun m!4475489 () Bool)

(assert (=> b!3911959 m!4475489))

(assert (=> b!3911959 m!4473935))

(assert (=> b!3910833 d!1160631))

(declare-fun d!1160661 () Bool)

(declare-fun lt!1362865 () Int)

(assert (=> d!1160661 (>= lt!1362865 0)))

(declare-fun e!2418583 () Int)

(assert (=> d!1160661 (= lt!1362865 e!2418583)))

(declare-fun c!680057 () Bool)

(assert (=> d!1160661 (= c!680057 ((_ is Nil!41450) Nil!41450))))

(assert (=> d!1160661 (= (size!31118 Nil!41450) lt!1362865)))

(declare-fun b!3911975 () Bool)

(assert (=> b!3911975 (= e!2418583 0)))

(declare-fun b!3911976 () Bool)

(assert (=> b!3911976 (= e!2418583 (+ 1 (size!31118 (t!322857 Nil!41450))))))

(assert (= (and d!1160661 c!680057) b!3911975))

(assert (= (and d!1160661 (not c!680057)) b!3911976))

(declare-fun m!4475491 () Bool)

(assert (=> b!3911976 m!4475491))

(assert (=> b!3910833 d!1160661))

(assert (=> b!3910833 d!1160153))

(declare-fun d!1160663 () Bool)

(declare-fun lt!1362868 () Bool)

(declare-fun content!6222 (List!41575) (InoxSet Rule!12704))

(assert (=> d!1160663 (= lt!1362868 (select (content!6222 rules!2768) (rule!9366 (_1!23481 (get!13697 lt!1362473)))))))

(declare-fun e!2418602 () Bool)

(assert (=> d!1160663 (= lt!1362868 e!2418602)))

(declare-fun res!1582263 () Bool)

(assert (=> d!1160663 (=> (not res!1582263) (not e!2418602))))

(assert (=> d!1160663 (= res!1582263 ((_ is Cons!41451) rules!2768))))

(assert (=> d!1160663 (= (contains!8328 rules!2768 (rule!9366 (_1!23481 (get!13697 lt!1362473)))) lt!1362868)))

(declare-fun b!3912010 () Bool)

(declare-fun e!2418603 () Bool)

(assert (=> b!3912010 (= e!2418602 e!2418603)))

(declare-fun res!1582264 () Bool)

(assert (=> b!3912010 (=> res!1582264 e!2418603)))

(assert (=> b!3912010 (= res!1582264 (= (h!46871 rules!2768) (rule!9366 (_1!23481 (get!13697 lt!1362473)))))))

(declare-fun b!3912011 () Bool)

(assert (=> b!3912011 (= e!2418603 (contains!8328 (t!322858 rules!2768) (rule!9366 (_1!23481 (get!13697 lt!1362473)))))))

(assert (= (and d!1160663 res!1582263) b!3912010))

(assert (= (and b!3912010 (not res!1582264)) b!3912011))

(declare-fun m!4475505 () Bool)

(assert (=> d!1160663 m!4475505))

(declare-fun m!4475507 () Bool)

(assert (=> d!1160663 m!4475507))

(declare-fun m!4475509 () Bool)

(assert (=> b!3912011 m!4475509))

(assert (=> b!3911040 d!1160663))

(assert (=> b!3911040 d!1160365))

(declare-fun d!1160665 () Bool)

(declare-fun lt!1362869 () Int)

(assert (=> d!1160665 (>= lt!1362869 0)))

(declare-fun e!2418607 () Int)

(assert (=> d!1160665 (= lt!1362869 e!2418607)))

(declare-fun c!680058 () Bool)

(assert (=> d!1160665 (= c!680058 ((_ is Nil!41450) (t!322857 (_2!23481 (v!39193 lt!1362333)))))))

(assert (=> d!1160665 (= (size!31118 (t!322857 (_2!23481 (v!39193 lt!1362333)))) lt!1362869)))

(declare-fun b!3912019 () Bool)

(assert (=> b!3912019 (= e!2418607 0)))

(declare-fun b!3912020 () Bool)

(assert (=> b!3912020 (= e!2418607 (+ 1 (size!31118 (t!322857 (t!322857 (_2!23481 (v!39193 lt!1362333)))))))))

(assert (= (and d!1160665 c!680058) b!3912019))

(assert (= (and d!1160665 (not c!680058)) b!3912020))

(declare-fun m!4475517 () Bool)

(assert (=> b!3912020 m!4475517))

(assert (=> b!3910864 d!1160665))

(assert (=> b!3910897 d!1160605))

(assert (=> b!3910982 d!1160493))

(declare-fun d!1160667 () Bool)

(assert (=> d!1160667 (= (head!8258 lt!1362317) (h!46870 lt!1362317))))

(assert (=> b!3910982 d!1160667))

(assert (=> d!1160093 d!1160617))

(declare-fun d!1160669 () Bool)

(assert (=> d!1160669 (= (_2!23481 (v!39193 lt!1362333)) lt!1362328)))

(assert (=> d!1160669 true))

(declare-fun _$63!977 () Unit!59591)

(assert (=> d!1160669 (= (choose!23150 lt!1362321 (_2!23481 (v!39193 lt!1362333)) lt!1362321 lt!1362328 lt!1362329) _$63!977)))

(assert (=> d!1160083 d!1160669))

(declare-fun b!3912041 () Bool)

(declare-fun e!2418613 () Bool)

(declare-fun e!2418614 () Bool)

(assert (=> b!3912041 (= e!2418613 e!2418614)))

(declare-fun res!1582265 () Bool)

(assert (=> b!3912041 (=> (not res!1582265) (not e!2418614))))

(assert (=> b!3912041 (= res!1582265 (not ((_ is Nil!41450) lt!1362329)))))

(declare-fun b!3912043 () Bool)

(assert (=> b!3912043 (= e!2418614 (isPrefix!3547 (tail!5976 lt!1362321) (tail!5976 lt!1362329)))))

(declare-fun b!3912042 () Bool)

(declare-fun res!1582266 () Bool)

(assert (=> b!3912042 (=> (not res!1582266) (not e!2418614))))

(assert (=> b!3912042 (= res!1582266 (= (head!8258 lt!1362321) (head!8258 lt!1362329)))))

(declare-fun b!3912044 () Bool)

(declare-fun e!2418615 () Bool)

(assert (=> b!3912044 (= e!2418615 (>= (size!31118 lt!1362329) (size!31118 lt!1362321)))))

(declare-fun d!1160671 () Bool)

(assert (=> d!1160671 e!2418615))

(declare-fun res!1582267 () Bool)

(assert (=> d!1160671 (=> res!1582267 e!2418615)))

(declare-fun lt!1362870 () Bool)

(assert (=> d!1160671 (= res!1582267 (not lt!1362870))))

(assert (=> d!1160671 (= lt!1362870 e!2418613)))

(declare-fun res!1582268 () Bool)

(assert (=> d!1160671 (=> res!1582268 e!2418613)))

(assert (=> d!1160671 (= res!1582268 ((_ is Nil!41450) lt!1362321))))

(assert (=> d!1160671 (= (isPrefix!3547 lt!1362321 lt!1362329) lt!1362870)))

(assert (= (and d!1160671 (not res!1582268)) b!3912041))

(assert (= (and b!3912041 res!1582265) b!3912042))

(assert (= (and b!3912042 res!1582266) b!3912043))

(assert (= (and d!1160671 (not res!1582267)) b!3912044))

(assert (=> b!3912043 m!4473787))

(assert (=> b!3912043 m!4474047))

(assert (=> b!3912043 m!4473787))

(assert (=> b!3912043 m!4474047))

(declare-fun m!4475519 () Bool)

(assert (=> b!3912043 m!4475519))

(assert (=> b!3912042 m!4473783))

(assert (=> b!3912042 m!4474933))

(assert (=> b!3912044 m!4473711))

(assert (=> b!3912044 m!4473671))

(assert (=> d!1160083 d!1160671))

(declare-fun d!1160673 () Bool)

(assert (=> d!1160673 (= (isEmpty!24657 (_1!23482 lt!1362445)) ((_ is Nil!41452) (_1!23482 lt!1362445)))))

(assert (=> b!3910943 d!1160673))

(assert (=> b!3910838 d!1160631))

(assert (=> b!3910838 d!1160661))

(declare-fun d!1160675 () Bool)

(assert (=> d!1160675 (= (seqFromList!4719 (_1!23483 lt!1362376)) (fromListB!2177 (_1!23483 lt!1362376)))))

(declare-fun bs!585618 () Bool)

(assert (= bs!585618 d!1160675))

(declare-fun m!4475521 () Bool)

(assert (=> bs!585618 m!4475521))

(assert (=> b!3910838 d!1160675))

(declare-fun bs!585619 () Bool)

(declare-fun d!1160677 () Bool)

(assert (= bs!585619 (and d!1160677 d!1160265)))

(declare-fun lambda!126511 () Int)

(assert (=> bs!585619 (= (and (= (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))) (toChars!8755 (transformation!6452 (h!46871 rules!2768)))) (= (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))) (toValue!8896 (transformation!6452 (h!46871 rules!2768))))) (= lambda!126511 lambda!126487))))

(declare-fun bs!585620 () Bool)

(assert (= bs!585620 (and d!1160677 d!1160427)))

(assert (=> bs!585620 (= (and (= (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80))))) (= (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))) (toValue!8896 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80)))))) (= lambda!126511 lambda!126495))))

(declare-fun bs!585621 () Bool)

(assert (= bs!585621 (and d!1160677 d!1160497)))

(assert (=> bs!585621 (= (and (= (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72))))) (= (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))) (toValue!8896 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72)))))) (= lambda!126511 lambda!126500))))

(declare-fun b!3912090 () Bool)

(declare-fun e!2418643 () Bool)

(assert (=> b!3912090 (= e!2418643 true)))

(assert (=> d!1160677 e!2418643))

(assert (= d!1160677 b!3912090))

(assert (=> b!3912090 (< (dynLambda!17807 order!22263 (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))) (dynLambda!17806 order!22261 lambda!126511))))

(assert (=> b!3912090 (< (dynLambda!17805 order!22259 (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))) (dynLambda!17806 order!22261 lambda!126511))))

(assert (=> d!1160677 (= (list!15407 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))) (dynLambda!17801 (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))) (seqFromList!4719 (_1!23483 lt!1362376))))) (list!15407 (seqFromList!4719 (_1!23483 lt!1362376))))))

(declare-fun lt!1362873 () Unit!59591)

(declare-fun ForallOf!791 (Int BalanceConc!24920) Unit!59591)

(assert (=> d!1160677 (= lt!1362873 (ForallOf!791 lambda!126511 (seqFromList!4719 (_1!23483 lt!1362376))))))

(assert (=> d!1160677 (= (lemmaSemiInverse!1735 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) (seqFromList!4719 (_1!23483 lt!1362376))) lt!1362873)))

(declare-fun b_lambda!114527 () Bool)

(assert (=> (not b_lambda!114527) (not d!1160677)))

(declare-fun t!323188 () Bool)

(declare-fun tb!232889 () Bool)

(assert (=> (and b!3910607 (= (toChars!8755 (transformation!6452 (h!46871 rules!2768))) (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))) t!323188) tb!232889))

(declare-fun e!2418645 () Bool)

(declare-fun b!3912095 () Bool)

(declare-fun tp!1190699 () Bool)

(assert (=> b!3912095 (= e!2418645 (and (inv!55632 (c!679729 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))) (dynLambda!17801 (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))) (seqFromList!4719 (_1!23483 lt!1362376)))))) tp!1190699))))

(declare-fun result!282268 () Bool)

(assert (=> tb!232889 (= result!282268 (and (inv!55633 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))) (dynLambda!17801 (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))) (seqFromList!4719 (_1!23483 lt!1362376))))) e!2418645))))

(assert (= tb!232889 b!3912095))

(declare-fun m!4475543 () Bool)

(assert (=> b!3912095 m!4475543))

(declare-fun m!4475545 () Bool)

(assert (=> tb!232889 m!4475545))

(assert (=> d!1160677 t!323188))

(declare-fun b_and!297659 () Bool)

(assert (= b_and!297563 (and (=> t!323188 result!282268) b_and!297659)))

(declare-fun tb!232891 () Bool)

(declare-fun t!323190 () Bool)

(assert (=> (and b!3911130 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 prefixTokens!80))))) (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))) t!323190) tb!232891))

(declare-fun result!282270 () Bool)

(assert (= result!282270 result!282268))

(assert (=> d!1160677 t!323190))

(declare-fun b_and!297661 () Bool)

(assert (= b_and!297569 (and (=> t!323190 result!282270) b_and!297661)))

(declare-fun t!323192 () Bool)

(declare-fun tb!232893 () Bool)

(assert (=> (and b!3911170 (= (toChars!8755 (transformation!6452 (h!46871 (t!322858 rules!2768)))) (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))) t!323192) tb!232893))

(declare-fun result!282272 () Bool)

(assert (= result!282272 result!282268))

(assert (=> d!1160677 t!323192))

(declare-fun b_and!297663 () Bool)

(assert (= b_and!297565 (and (=> t!323192 result!282272) b_and!297663)))

(declare-fun t!323194 () Bool)

(declare-fun tb!232895 () Bool)

(assert (=> (and b!3910611 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80)))) (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))) t!323194) tb!232895))

(declare-fun result!282274 () Bool)

(assert (= result!282274 result!282268))

(assert (=> d!1160677 t!323194))

(declare-fun b_and!297665 () Bool)

(assert (= b_and!297573 (and (=> t!323194 result!282274) b_and!297665)))

(declare-fun tb!232897 () Bool)

(declare-fun t!323196 () Bool)

(assert (=> (and b!3910608 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72)))) (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))) t!323196) tb!232897))

(declare-fun result!282276 () Bool)

(assert (= result!282276 result!282268))

(assert (=> d!1160677 t!323196))

(declare-fun b_and!297667 () Bool)

(assert (= b_and!297567 (and (=> t!323196 result!282276) b_and!297667)))

(declare-fun t!323198 () Bool)

(declare-fun tb!232899 () Bool)

(assert (=> (and b!3911154 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 suffixTokens!72))))) (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))) t!323198) tb!232899))

(declare-fun result!282278 () Bool)

(assert (= result!282278 result!282268))

(assert (=> d!1160677 t!323198))

(declare-fun b_and!297669 () Bool)

(assert (= b_and!297571 (and (=> t!323198 result!282278) b_and!297669)))

(declare-fun b_lambda!114537 () Bool)

(assert (=> (not b_lambda!114537) (not d!1160677)))

(declare-fun t!323200 () Bool)

(declare-fun tb!232901 () Bool)

(assert (=> (and b!3910607 (= (toValue!8896 (transformation!6452 (h!46871 rules!2768))) (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))) t!323200) tb!232901))

(declare-fun result!282280 () Bool)

(assert (=> tb!232901 (= result!282280 (inv!21 (dynLambda!17801 (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))) (seqFromList!4719 (_1!23483 lt!1362376)))))))

(declare-fun m!4475547 () Bool)

(assert (=> tb!232901 m!4475547))

(assert (=> d!1160677 t!323200))

(declare-fun b_and!297671 () Bool)

(assert (= b_and!297603 (and (=> t!323200 result!282280) b_and!297671)))

(declare-fun tb!232903 () Bool)

(declare-fun t!323202 () Bool)

(assert (=> (and b!3910608 (= (toValue!8896 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72)))) (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))) t!323202) tb!232903))

(declare-fun result!282282 () Bool)

(assert (= result!282282 result!282280))

(assert (=> d!1160677 t!323202))

(declare-fun b_and!297673 () Bool)

(assert (= b_and!297599 (and (=> t!323202 result!282282) b_and!297673)))

(declare-fun t!323204 () Bool)

(declare-fun tb!232905 () Bool)

(assert (=> (and b!3911170 (= (toValue!8896 (transformation!6452 (h!46871 (t!322858 rules!2768)))) (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))) t!323204) tb!232905))

(declare-fun result!282284 () Bool)

(assert (= result!282284 result!282280))

(assert (=> d!1160677 t!323204))

(declare-fun b_and!297675 () Bool)

(assert (= b_and!297609 (and (=> t!323204 result!282284) b_and!297675)))

(declare-fun tb!232907 () Bool)

(declare-fun t!323206 () Bool)

(assert (=> (and b!3910611 (= (toValue!8896 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80)))) (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))) t!323206) tb!232907))

(declare-fun result!282286 () Bool)

(assert (= result!282286 result!282280))

(assert (=> d!1160677 t!323206))

(declare-fun b_and!297677 () Bool)

(assert (= b_and!297605 (and (=> t!323206 result!282286) b_and!297677)))

(declare-fun t!323208 () Bool)

(declare-fun tb!232909 () Bool)

(assert (=> (and b!3911154 (= (toValue!8896 (transformation!6452 (rule!9366 (h!46872 (t!322859 suffixTokens!72))))) (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))) t!323208) tb!232909))

(declare-fun result!282288 () Bool)

(assert (= result!282288 result!282280))

(assert (=> d!1160677 t!323208))

(declare-fun b_and!297679 () Bool)

(assert (= b_and!297607 (and (=> t!323208 result!282288) b_and!297679)))

(declare-fun t!323210 () Bool)

(declare-fun tb!232911 () Bool)

(assert (=> (and b!3911130 (= (toValue!8896 (transformation!6452 (rule!9366 (h!46872 (t!322859 prefixTokens!80))))) (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))) t!323210) tb!232911))

(declare-fun result!282290 () Bool)

(assert (= result!282290 result!282280))

(assert (=> d!1160677 t!323210))

(declare-fun b_and!297681 () Bool)

(assert (= b_and!297601 (and (=> t!323210 result!282290) b_and!297681)))

(declare-fun m!4475549 () Bool)

(assert (=> d!1160677 m!4475549))

(declare-fun m!4475551 () Bool)

(assert (=> d!1160677 m!4475551))

(assert (=> d!1160677 m!4473927))

(declare-fun m!4475553 () Bool)

(assert (=> d!1160677 m!4475553))

(assert (=> d!1160677 m!4473927))

(declare-fun m!4475555 () Bool)

(assert (=> d!1160677 m!4475555))

(assert (=> d!1160677 m!4475555))

(assert (=> d!1160677 m!4475549))

(assert (=> d!1160677 m!4473927))

(declare-fun m!4475557 () Bool)

(assert (=> d!1160677 m!4475557))

(assert (=> b!3910838 d!1160677))

(declare-fun d!1160679 () Bool)

(assert (=> d!1160679 (= (isEmpty!24656 (_1!23483 (findLongestMatchInner!1229 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) Nil!41450 (size!31118 Nil!41450) lt!1362329 lt!1362329 (size!31118 lt!1362329)))) ((_ is Nil!41450) (_1!23483 (findLongestMatchInner!1229 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) Nil!41450 (size!31118 Nil!41450) lt!1362329 lt!1362329 (size!31118 lt!1362329)))))))

(assert (=> b!3910838 d!1160679))

(declare-fun d!1160681 () Bool)

(assert (=> d!1160681 (= (apply!9691 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) (seqFromList!4719 (_1!23483 lt!1362376))) (dynLambda!17801 (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))) (seqFromList!4719 (_1!23483 lt!1362376))))))

(declare-fun b_lambda!114539 () Bool)

(assert (=> (not b_lambda!114539) (not d!1160681)))

(assert (=> d!1160681 t!323208))

(declare-fun b_and!297683 () Bool)

(assert (= b_and!297679 (and (=> t!323208 result!282288) b_and!297683)))

(assert (=> d!1160681 t!323206))

(declare-fun b_and!297685 () Bool)

(assert (= b_and!297677 (and (=> t!323206 result!282286) b_and!297685)))

(assert (=> d!1160681 t!323204))

(declare-fun b_and!297687 () Bool)

(assert (= b_and!297675 (and (=> t!323204 result!282284) b_and!297687)))

(assert (=> d!1160681 t!323202))

(declare-fun b_and!297689 () Bool)

(assert (= b_and!297673 (and (=> t!323202 result!282282) b_and!297689)))

(assert (=> d!1160681 t!323200))

(declare-fun b_and!297691 () Bool)

(assert (= b_and!297671 (and (=> t!323200 result!282280) b_and!297691)))

(assert (=> d!1160681 t!323210))

(declare-fun b_and!297693 () Bool)

(assert (= b_and!297681 (and (=> t!323210 result!282290) b_and!297693)))

(assert (=> d!1160681 m!4473927))

(assert (=> d!1160681 m!4475555))

(assert (=> b!3910838 d!1160681))

(assert (=> b!3910838 d!1160153))

(declare-fun d!1160683 () Bool)

(declare-fun e!2418651 () Bool)

(assert (=> d!1160683 e!2418651))

(declare-fun res!1582271 () Bool)

(assert (=> d!1160683 (=> res!1582271 e!2418651)))

(assert (=> d!1160683 (= res!1582271 (isEmpty!24656 (_1!23483 (findLongestMatchInner!1229 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) Nil!41450 (size!31118 Nil!41450) lt!1362329 lt!1362329 (size!31118 lt!1362329)))))))

(declare-fun lt!1362876 () Unit!59591)

(declare-fun choose!23159 (Regex!11357 List!41574) Unit!59591)

(assert (=> d!1160683 (= lt!1362876 (choose!23159 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) lt!1362329))))

(assert (=> d!1160683 (validRegex!5167 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))))

(assert (=> d!1160683 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1202 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) lt!1362329) lt!1362876)))

(declare-fun b!3912103 () Bool)

(assert (=> b!3912103 (= e!2418651 (matchR!5446 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) (_1!23483 (findLongestMatchInner!1229 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) Nil!41450 (size!31118 Nil!41450) lt!1362329 lt!1362329 (size!31118 lt!1362329)))))))

(assert (= (and d!1160683 (not res!1582271)) b!3912103))

(assert (=> d!1160683 m!4473711))

(assert (=> d!1160683 m!4473935))

(declare-fun m!4475559 () Bool)

(assert (=> d!1160683 m!4475559))

(assert (=> d!1160683 m!4473935))

(assert (=> d!1160683 m!4473711))

(assert (=> d!1160683 m!4473937))

(assert (=> d!1160683 m!4473793))

(assert (=> d!1160683 m!4473933))

(assert (=> b!3912103 m!4473935))

(assert (=> b!3912103 m!4473711))

(assert (=> b!3912103 m!4473935))

(assert (=> b!3912103 m!4473711))

(assert (=> b!3912103 m!4473937))

(assert (=> b!3912103 m!4473941))

(assert (=> b!3910838 d!1160683))

(declare-fun d!1160685 () Bool)

(declare-fun lt!1362879 () Int)

(assert (=> d!1160685 (= lt!1362879 (size!31118 (list!15407 (seqFromList!4719 (_1!23483 lt!1362376)))))))

(declare-fun size!31123 (Conc!12663) Int)

(assert (=> d!1160685 (= lt!1362879 (size!31123 (c!679729 (seqFromList!4719 (_1!23483 lt!1362376)))))))

(assert (=> d!1160685 (= (size!31120 (seqFromList!4719 (_1!23483 lt!1362376))) lt!1362879)))

(declare-fun bs!585622 () Bool)

(assert (= bs!585622 d!1160685))

(assert (=> bs!585622 m!4473927))

(assert (=> bs!585622 m!4475557))

(assert (=> bs!585622 m!4475557))

(declare-fun m!4475561 () Bool)

(assert (=> bs!585622 m!4475561))

(declare-fun m!4475563 () Bool)

(assert (=> bs!585622 m!4475563))

(assert (=> b!3910838 d!1160685))

(declare-fun b!3912104 () Bool)

(declare-fun res!1582272 () Bool)

(declare-fun e!2418658 () Bool)

(assert (=> b!3912104 (=> res!1582272 e!2418658)))

(assert (=> b!3912104 (= res!1582272 (not ((_ is ElementMatch!11357) (derivativeStep!3433 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) (head!8258 lt!1362321)))))))

(declare-fun e!2418657 () Bool)

(assert (=> b!3912104 (= e!2418657 e!2418658)))

(declare-fun b!3912105 () Bool)

(declare-fun res!1582273 () Bool)

(declare-fun e!2418654 () Bool)

(assert (=> b!3912105 (=> res!1582273 e!2418654)))

(assert (=> b!3912105 (= res!1582273 (not (isEmpty!24656 (tail!5976 (tail!5976 lt!1362321)))))))

(declare-fun b!3912106 () Bool)

(declare-fun e!2418655 () Bool)

(assert (=> b!3912106 (= e!2418655 e!2418657)))

(declare-fun c!680062 () Bool)

(assert (=> b!3912106 (= c!680062 ((_ is EmptyLang!11357) (derivativeStep!3433 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) (head!8258 lt!1362321))))))

(declare-fun bm!284370 () Bool)

(declare-fun call!284375 () Bool)

(assert (=> bm!284370 (= call!284375 (isEmpty!24656 (tail!5976 lt!1362321)))))

(declare-fun b!3912107 () Bool)

(declare-fun res!1582276 () Bool)

(declare-fun e!2418653 () Bool)

(assert (=> b!3912107 (=> (not res!1582276) (not e!2418653))))

(assert (=> b!3912107 (= res!1582276 (not call!284375))))

(declare-fun b!3912108 () Bool)

(assert (=> b!3912108 (= e!2418653 (= (head!8258 (tail!5976 lt!1362321)) (c!679728 (derivativeStep!3433 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) (head!8258 lt!1362321)))))))

(declare-fun b!3912109 () Bool)

(declare-fun res!1582278 () Bool)

(assert (=> b!3912109 (=> (not res!1582278) (not e!2418653))))

(assert (=> b!3912109 (= res!1582278 (isEmpty!24656 (tail!5976 (tail!5976 lt!1362321))))))

(declare-fun b!3912110 () Bool)

(declare-fun e!2418656 () Bool)

(assert (=> b!3912110 (= e!2418656 (matchR!5446 (derivativeStep!3433 (derivativeStep!3433 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) (head!8258 lt!1362321)) (head!8258 (tail!5976 lt!1362321))) (tail!5976 (tail!5976 lt!1362321))))))

(declare-fun b!3912111 () Bool)

(declare-fun e!2418652 () Bool)

(assert (=> b!3912111 (= e!2418652 e!2418654)))

(declare-fun res!1582274 () Bool)

(assert (=> b!3912111 (=> res!1582274 e!2418654)))

(assert (=> b!3912111 (= res!1582274 call!284375)))

(declare-fun d!1160687 () Bool)

(assert (=> d!1160687 e!2418655))

(declare-fun c!680060 () Bool)

(assert (=> d!1160687 (= c!680060 ((_ is EmptyExpr!11357) (derivativeStep!3433 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) (head!8258 lt!1362321))))))

(declare-fun lt!1362880 () Bool)

(assert (=> d!1160687 (= lt!1362880 e!2418656)))

(declare-fun c!680061 () Bool)

(assert (=> d!1160687 (= c!680061 (isEmpty!24656 (tail!5976 lt!1362321)))))

(assert (=> d!1160687 (validRegex!5167 (derivativeStep!3433 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) (head!8258 lt!1362321)))))

(assert (=> d!1160687 (= (matchR!5446 (derivativeStep!3433 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) (head!8258 lt!1362321)) (tail!5976 lt!1362321)) lt!1362880)))

(declare-fun b!3912112 () Bool)

(assert (=> b!3912112 (= e!2418658 e!2418652)))

(declare-fun res!1582279 () Bool)

(assert (=> b!3912112 (=> (not res!1582279) (not e!2418652))))

(assert (=> b!3912112 (= res!1582279 (not lt!1362880))))

(declare-fun b!3912113 () Bool)

(assert (=> b!3912113 (= e!2418656 (nullable!3968 (derivativeStep!3433 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) (head!8258 lt!1362321))))))

(declare-fun b!3912114 () Bool)

(assert (=> b!3912114 (= e!2418654 (not (= (head!8258 (tail!5976 lt!1362321)) (c!679728 (derivativeStep!3433 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) (head!8258 lt!1362321))))))))

(declare-fun b!3912115 () Bool)

(declare-fun res!1582275 () Bool)

(assert (=> b!3912115 (=> res!1582275 e!2418658)))

(assert (=> b!3912115 (= res!1582275 e!2418653)))

(declare-fun res!1582277 () Bool)

(assert (=> b!3912115 (=> (not res!1582277) (not e!2418653))))

(assert (=> b!3912115 (= res!1582277 lt!1362880)))

(declare-fun b!3912116 () Bool)

(assert (=> b!3912116 (= e!2418655 (= lt!1362880 call!284375))))

(declare-fun b!3912117 () Bool)

(assert (=> b!3912117 (= e!2418657 (not lt!1362880))))

(assert (= (and d!1160687 c!680061) b!3912113))

(assert (= (and d!1160687 (not c!680061)) b!3912110))

(assert (= (and d!1160687 c!680060) b!3912116))

(assert (= (and d!1160687 (not c!680060)) b!3912106))

(assert (= (and b!3912106 c!680062) b!3912117))

(assert (= (and b!3912106 (not c!680062)) b!3912104))

(assert (= (and b!3912104 (not res!1582272)) b!3912115))

(assert (= (and b!3912115 res!1582277) b!3912107))

(assert (= (and b!3912107 res!1582276) b!3912109))

(assert (= (and b!3912109 res!1582278) b!3912108))

(assert (= (and b!3912115 (not res!1582275)) b!3912112))

(assert (= (and b!3912112 res!1582279) b!3912111))

(assert (= (and b!3912111 (not res!1582274)) b!3912105))

(assert (= (and b!3912105 (not res!1582273)) b!3912114))

(assert (= (or b!3912116 b!3912107 b!3912111) bm!284370))

(assert (=> b!3912108 m!4473787))

(declare-fun m!4475565 () Bool)

(assert (=> b!3912108 m!4475565))

(assert (=> b!3912110 m!4473787))

(assert (=> b!3912110 m!4475565))

(assert (=> b!3912110 m!4473785))

(assert (=> b!3912110 m!4475565))

(declare-fun m!4475567 () Bool)

(assert (=> b!3912110 m!4475567))

(assert (=> b!3912110 m!4473787))

(declare-fun m!4475569 () Bool)

(assert (=> b!3912110 m!4475569))

(assert (=> b!3912110 m!4475567))

(assert (=> b!3912110 m!4475569))

(declare-fun m!4475571 () Bool)

(assert (=> b!3912110 m!4475571))

(assert (=> d!1160687 m!4473787))

(assert (=> d!1160687 m!4473795))

(assert (=> d!1160687 m!4473785))

(declare-fun m!4475573 () Bool)

(assert (=> d!1160687 m!4475573))

(assert (=> b!3912109 m!4473787))

(assert (=> b!3912109 m!4475569))

(assert (=> b!3912109 m!4475569))

(declare-fun m!4475575 () Bool)

(assert (=> b!3912109 m!4475575))

(assert (=> b!3912113 m!4473785))

(declare-fun m!4475577 () Bool)

(assert (=> b!3912113 m!4475577))

(assert (=> b!3912105 m!4473787))

(assert (=> b!3912105 m!4475569))

(assert (=> b!3912105 m!4475569))

(assert (=> b!3912105 m!4475575))

(assert (=> b!3912114 m!4473787))

(assert (=> b!3912114 m!4475565))

(assert (=> bm!284370 m!4473787))

(assert (=> bm!284370 m!4473795))

(assert (=> b!3910715 d!1160687))

(declare-fun b!3912138 () Bool)

(declare-fun e!2418671 () Regex!11357)

(declare-fun e!2418670 () Regex!11357)

(assert (=> b!3912138 (= e!2418671 e!2418670)))

(declare-fun c!680074 () Bool)

(assert (=> b!3912138 (= c!680074 ((_ is Star!11357) (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))))))

(declare-fun call!284387 () Regex!11357)

(declare-fun e!2418672 () Regex!11357)

(declare-fun call!284386 () Regex!11357)

(declare-fun b!3912139 () Bool)

(assert (=> b!3912139 (= e!2418672 (Union!11357 (Concat!18040 call!284386 (regTwo!23226 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))) call!284387))))

(declare-fun b!3912141 () Bool)

(declare-fun c!680073 () Bool)

(assert (=> b!3912141 (= c!680073 (nullable!3968 (regOne!23226 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))))))

(assert (=> b!3912141 (= e!2418670 e!2418672)))

(declare-fun b!3912142 () Bool)

(declare-fun call!284385 () Regex!11357)

(assert (=> b!3912142 (= e!2418671 (Union!11357 call!284387 call!284385))))

(declare-fun b!3912143 () Bool)

(declare-fun e!2418673 () Regex!11357)

(declare-fun e!2418669 () Regex!11357)

(assert (=> b!3912143 (= e!2418673 e!2418669)))

(declare-fun c!680075 () Bool)

(assert (=> b!3912143 (= c!680075 ((_ is ElementMatch!11357) (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))))))

(declare-fun bm!284379 () Bool)

(declare-fun call!284384 () Regex!11357)

(assert (=> bm!284379 (= call!284384 call!284385)))

(declare-fun bm!284380 () Bool)

(assert (=> bm!284380 (= call!284386 call!284384)))

(declare-fun bm!284381 () Bool)

(declare-fun c!680077 () Bool)

(assert (=> bm!284381 (= call!284385 (derivativeStep!3433 (ite c!680077 (regTwo!23227 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))) (ite c!680074 (reg!11686 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))) (regOne!23226 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))))) (head!8258 lt!1362321)))))

(declare-fun b!3912144 () Bool)

(assert (=> b!3912144 (= c!680077 ((_ is Union!11357) (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))))))

(assert (=> b!3912144 (= e!2418669 e!2418671)))

(declare-fun d!1160689 () Bool)

(declare-fun lt!1362883 () Regex!11357)

(assert (=> d!1160689 (validRegex!5167 lt!1362883)))

(assert (=> d!1160689 (= lt!1362883 e!2418673)))

(declare-fun c!680076 () Bool)

(assert (=> d!1160689 (= c!680076 (or ((_ is EmptyExpr!11357) (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))) ((_ is EmptyLang!11357) (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))))))

(assert (=> d!1160689 (validRegex!5167 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))))

(assert (=> d!1160689 (= (derivativeStep!3433 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) (head!8258 lt!1362321)) lt!1362883)))

(declare-fun b!3912140 () Bool)

(assert (=> b!3912140 (= e!2418669 (ite (= (head!8258 lt!1362321) (c!679728 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))) EmptyExpr!11357 EmptyLang!11357))))

(declare-fun bm!284382 () Bool)

(assert (=> bm!284382 (= call!284387 (derivativeStep!3433 (ite c!680077 (regOne!23227 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))) (regTwo!23226 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))) (head!8258 lt!1362321)))))

(declare-fun b!3912145 () Bool)

(assert (=> b!3912145 (= e!2418670 (Concat!18040 call!284384 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))))))

(declare-fun b!3912146 () Bool)

(assert (=> b!3912146 (= e!2418673 EmptyLang!11357)))

(declare-fun b!3912147 () Bool)

(assert (=> b!3912147 (= e!2418672 (Union!11357 (Concat!18040 call!284386 (regTwo!23226 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))) EmptyLang!11357))))

(assert (= (and d!1160689 c!680076) b!3912146))

(assert (= (and d!1160689 (not c!680076)) b!3912143))

(assert (= (and b!3912143 c!680075) b!3912140))

(assert (= (and b!3912143 (not c!680075)) b!3912144))

(assert (= (and b!3912144 c!680077) b!3912142))

(assert (= (and b!3912144 (not c!680077)) b!3912138))

(assert (= (and b!3912138 c!680074) b!3912145))

(assert (= (and b!3912138 (not c!680074)) b!3912141))

(assert (= (and b!3912141 c!680073) b!3912139))

(assert (= (and b!3912141 (not c!680073)) b!3912147))

(assert (= (or b!3912139 b!3912147) bm!284380))

(assert (= (or b!3912145 bm!284380) bm!284379))

(assert (= (or b!3912142 bm!284379) bm!284381))

(assert (= (or b!3912142 b!3912139) bm!284382))

(declare-fun m!4475579 () Bool)

(assert (=> b!3912141 m!4475579))

(assert (=> bm!284381 m!4473783))

(declare-fun m!4475581 () Bool)

(assert (=> bm!284381 m!4475581))

(declare-fun m!4475583 () Bool)

(assert (=> d!1160689 m!4475583))

(assert (=> d!1160689 m!4473793))

(assert (=> bm!284382 m!4473783))

(declare-fun m!4475585 () Bool)

(assert (=> bm!284382 m!4475585))

(assert (=> b!3910715 d!1160689))

(assert (=> b!3910715 d!1160493))

(assert (=> b!3910715 d!1160551))

(declare-fun b!3912148 () Bool)

(declare-fun e!2418674 () Bool)

(declare-fun e!2418675 () Bool)

(assert (=> b!3912148 (= e!2418674 e!2418675)))

(declare-fun res!1582280 () Bool)

(assert (=> b!3912148 (=> (not res!1582280) (not e!2418675))))

(assert (=> b!3912148 (= res!1582280 (not ((_ is Nil!41450) (tail!5976 lt!1362317))))))

(declare-fun b!3912150 () Bool)

(assert (=> b!3912150 (= e!2418675 (isPrefix!3547 (tail!5976 (tail!5976 lt!1362321)) (tail!5976 (tail!5976 lt!1362317))))))

(declare-fun b!3912149 () Bool)

(declare-fun res!1582281 () Bool)

(assert (=> b!3912149 (=> (not res!1582281) (not e!2418675))))

(assert (=> b!3912149 (= res!1582281 (= (head!8258 (tail!5976 lt!1362321)) (head!8258 (tail!5976 lt!1362317))))))

(declare-fun b!3912151 () Bool)

(declare-fun e!2418676 () Bool)

(assert (=> b!3912151 (= e!2418676 (>= (size!31118 (tail!5976 lt!1362317)) (size!31118 (tail!5976 lt!1362321))))))

(declare-fun d!1160691 () Bool)

(assert (=> d!1160691 e!2418676))

(declare-fun res!1582282 () Bool)

(assert (=> d!1160691 (=> res!1582282 e!2418676)))

(declare-fun lt!1362884 () Bool)

(assert (=> d!1160691 (= res!1582282 (not lt!1362884))))

(assert (=> d!1160691 (= lt!1362884 e!2418674)))

(declare-fun res!1582283 () Bool)

(assert (=> d!1160691 (=> res!1582283 e!2418674)))

(assert (=> d!1160691 (= res!1582283 ((_ is Nil!41450) (tail!5976 lt!1362321)))))

(assert (=> d!1160691 (= (isPrefix!3547 (tail!5976 lt!1362321) (tail!5976 lt!1362317)) lt!1362884)))

(assert (= (and d!1160691 (not res!1582283)) b!3912148))

(assert (= (and b!3912148 res!1582280) b!3912149))

(assert (= (and b!3912149 res!1582281) b!3912150))

(assert (= (and d!1160691 (not res!1582282)) b!3912151))

(assert (=> b!3912150 m!4473787))

(assert (=> b!3912150 m!4475569))

(assert (=> b!3912150 m!4474105))

(declare-fun m!4475587 () Bool)

(assert (=> b!3912150 m!4475587))

(assert (=> b!3912150 m!4475569))

(assert (=> b!3912150 m!4475587))

(declare-fun m!4475589 () Bool)

(assert (=> b!3912150 m!4475589))

(assert (=> b!3912149 m!4473787))

(assert (=> b!3912149 m!4475565))

(assert (=> b!3912149 m!4474105))

(declare-fun m!4475591 () Bool)

(assert (=> b!3912149 m!4475591))

(assert (=> b!3912151 m!4474105))

(declare-fun m!4475593 () Bool)

(assert (=> b!3912151 m!4475593))

(assert (=> b!3912151 m!4473787))

(declare-fun m!4475595 () Bool)

(assert (=> b!3912151 m!4475595))

(assert (=> b!3910983 d!1160691))

(assert (=> b!3910983 d!1160551))

(declare-fun d!1160693 () Bool)

(assert (=> d!1160693 (= (tail!5976 lt!1362317) (t!322857 lt!1362317))))

(assert (=> b!3910983 d!1160693))

(declare-fun d!1160695 () Bool)

(declare-fun lt!1362885 () Int)

(assert (=> d!1160695 (>= lt!1362885 0)))

(declare-fun e!2418677 () Int)

(assert (=> d!1160695 (= lt!1362885 e!2418677)))

(declare-fun c!680078 () Bool)

(assert (=> d!1160695 (= c!680078 ((_ is Nil!41452) lt!1362492))))

(assert (=> d!1160695 (= (size!31121 lt!1362492) lt!1362885)))

(declare-fun b!3912152 () Bool)

(assert (=> b!3912152 (= e!2418677 0)))

(declare-fun b!3912153 () Bool)

(assert (=> b!3912153 (= e!2418677 (+ 1 (size!31121 (t!322859 lt!1362492))))))

(assert (= (and d!1160695 c!680078) b!3912152))

(assert (= (and d!1160695 (not c!680078)) b!3912153))

(declare-fun m!4475597 () Bool)

(assert (=> b!3912153 m!4475597))

(assert (=> b!3911086 d!1160695))

(declare-fun d!1160697 () Bool)

(declare-fun lt!1362886 () Int)

(assert (=> d!1160697 (>= lt!1362886 0)))

(declare-fun e!2418678 () Int)

(assert (=> d!1160697 (= lt!1362886 e!2418678)))

(declare-fun c!680079 () Bool)

(assert (=> d!1160697 (= c!680079 ((_ is Nil!41452) (Cons!41452 (_1!23481 (v!39193 lt!1362333)) Nil!41452)))))

(assert (=> d!1160697 (= (size!31121 (Cons!41452 (_1!23481 (v!39193 lt!1362333)) Nil!41452)) lt!1362886)))

(declare-fun b!3912154 () Bool)

(assert (=> b!3912154 (= e!2418678 0)))

(declare-fun b!3912155 () Bool)

(assert (=> b!3912155 (= e!2418678 (+ 1 (size!31121 (t!322859 (Cons!41452 (_1!23481 (v!39193 lt!1362333)) Nil!41452)))))))

(assert (= (and d!1160697 c!680079) b!3912154))

(assert (= (and d!1160697 (not c!680079)) b!3912155))

(assert (=> b!3912155 m!4475269))

(assert (=> b!3911086 d!1160697))

(declare-fun d!1160699 () Bool)

(declare-fun lt!1362887 () Int)

(assert (=> d!1160699 (>= lt!1362887 0)))

(declare-fun e!2418679 () Int)

(assert (=> d!1160699 (= lt!1362887 e!2418679)))

(declare-fun c!680080 () Bool)

(assert (=> d!1160699 (= c!680080 ((_ is Nil!41452) (_1!23482 lt!1362324)))))

(assert (=> d!1160699 (= (size!31121 (_1!23482 lt!1362324)) lt!1362887)))

(declare-fun b!3912156 () Bool)

(assert (=> b!3912156 (= e!2418679 0)))

(declare-fun b!3912157 () Bool)

(assert (=> b!3912157 (= e!2418679 (+ 1 (size!31121 (t!322859 (_1!23482 lt!1362324)))))))

(assert (= (and d!1160699 c!680080) b!3912156))

(assert (= (and d!1160699 (not c!680080)) b!3912157))

(declare-fun m!4475599 () Bool)

(assert (=> b!3912157 m!4475599))

(assert (=> b!3911086 d!1160699))

(assert (=> bm!284270 d!1160615))

(declare-fun b!3912158 () Bool)

(declare-fun e!2418680 () tuple2!40696)

(assert (=> b!3912158 (= e!2418680 (tuple2!40697 Nil!41452 (_2!23481 (v!39193 lt!1362493))))))

(declare-fun d!1160701 () Bool)

(declare-fun e!2418681 () Bool)

(assert (=> d!1160701 e!2418681))

(declare-fun c!680082 () Bool)

(declare-fun lt!1362890 () tuple2!40696)

(assert (=> d!1160701 (= c!680082 (> (size!31121 (_1!23482 lt!1362890)) 0))))

(assert (=> d!1160701 (= lt!1362890 e!2418680)))

(declare-fun c!680081 () Bool)

(declare-fun lt!1362888 () Option!8872)

(assert (=> d!1160701 (= c!680081 ((_ is Some!8871) lt!1362888))))

(assert (=> d!1160701 (= lt!1362888 (maxPrefix!3345 thiss!20629 rules!2768 (_2!23481 (v!39193 lt!1362493))))))

(assert (=> d!1160701 (= (lexList!1809 thiss!20629 rules!2768 (_2!23481 (v!39193 lt!1362493))) lt!1362890)))

(declare-fun b!3912159 () Bool)

(declare-fun e!2418682 () Bool)

(assert (=> b!3912159 (= e!2418681 e!2418682)))

(declare-fun res!1582284 () Bool)

(assert (=> b!3912159 (= res!1582284 (< (size!31118 (_2!23482 lt!1362890)) (size!31118 (_2!23481 (v!39193 lt!1362493)))))))

(assert (=> b!3912159 (=> (not res!1582284) (not e!2418682))))

(declare-fun b!3912160 () Bool)

(assert (=> b!3912160 (= e!2418681 (= (_2!23482 lt!1362890) (_2!23481 (v!39193 lt!1362493))))))

(declare-fun b!3912161 () Bool)

(assert (=> b!3912161 (= e!2418682 (not (isEmpty!24657 (_1!23482 lt!1362890))))))

(declare-fun b!3912162 () Bool)

(declare-fun lt!1362889 () tuple2!40696)

(assert (=> b!3912162 (= e!2418680 (tuple2!40697 (Cons!41452 (_1!23481 (v!39193 lt!1362888)) (_1!23482 lt!1362889)) (_2!23482 lt!1362889)))))

(assert (=> b!3912162 (= lt!1362889 (lexList!1809 thiss!20629 rules!2768 (_2!23481 (v!39193 lt!1362888))))))

(assert (= (and d!1160701 c!680081) b!3912162))

(assert (= (and d!1160701 (not c!680081)) b!3912158))

(assert (= (and d!1160701 c!680082) b!3912159))

(assert (= (and d!1160701 (not c!680082)) b!3912160))

(assert (= (and b!3912159 res!1582284) b!3912161))

(declare-fun m!4475601 () Bool)

(assert (=> d!1160701 m!4475601))

(declare-fun m!4475603 () Bool)

(assert (=> d!1160701 m!4475603))

(declare-fun m!4475605 () Bool)

(assert (=> b!3912159 m!4475605))

(declare-fun m!4475607 () Bool)

(assert (=> b!3912159 m!4475607))

(declare-fun m!4475609 () Bool)

(assert (=> b!3912161 m!4475609))

(declare-fun m!4475611 () Bool)

(assert (=> b!3912162 m!4475611))

(assert (=> b!3911093 d!1160701))

(declare-fun d!1160703 () Bool)

(declare-fun lt!1362891 () Int)

(assert (=> d!1160703 (>= lt!1362891 0)))

(declare-fun e!2418683 () Int)

(assert (=> d!1160703 (= lt!1362891 e!2418683)))

(declare-fun c!680083 () Bool)

(assert (=> d!1160703 (= c!680083 ((_ is Nil!41450) (_2!23482 lt!1362479)))))

(assert (=> d!1160703 (= (size!31118 (_2!23482 lt!1362479)) lt!1362891)))

(declare-fun b!3912163 () Bool)

(assert (=> b!3912163 (= e!2418683 0)))

(declare-fun b!3912164 () Bool)

(assert (=> b!3912164 (= e!2418683 (+ 1 (size!31118 (t!322857 (_2!23482 lt!1362479)))))))

(assert (= (and d!1160703 c!680083) b!3912163))

(assert (= (and d!1160703 (not c!680083)) b!3912164))

(declare-fun m!4475613 () Bool)

(assert (=> b!3912164 m!4475613))

(assert (=> b!3911048 d!1160703))

(assert (=> b!3911048 d!1160069))

(declare-fun bs!585623 () Bool)

(declare-fun d!1160705 () Bool)

(assert (= bs!585623 (and d!1160705 d!1160441)))

(declare-fun lambda!126514 () Int)

(assert (=> bs!585623 (= lambda!126514 lambda!126499)))

(assert (=> d!1160705 true))

(declare-fun lt!1362894 () Bool)

(assert (=> d!1160705 (= lt!1362894 (rulesValidInductive!2318 thiss!20629 rules!2768))))

(assert (=> d!1160705 (= lt!1362894 (forall!8310 rules!2768 lambda!126514))))

(assert (=> d!1160705 (= (rulesValid!2503 thiss!20629 rules!2768) lt!1362894)))

(declare-fun bs!585624 () Bool)

(assert (= bs!585624 d!1160705))

(assert (=> bs!585624 m!4474167))

(declare-fun m!4475615 () Bool)

(assert (=> bs!585624 m!4475615))

(assert (=> d!1160163 d!1160705))

(assert (=> b!3910719 d!1160493))

(declare-fun b!3912175 () Bool)

(declare-fun e!2418689 () List!41574)

(declare-fun list!15411 (IArray!25331) List!41574)

(assert (=> b!3912175 (= e!2418689 (list!15411 (xs!15969 (c!679729 (charsOf!4276 (_1!23481 (v!39193 lt!1362333)))))))))

(declare-fun b!3912176 () Bool)

(assert (=> b!3912176 (= e!2418689 (++!10662 (list!15408 (left!31731 (c!679729 (charsOf!4276 (_1!23481 (v!39193 lt!1362333)))))) (list!15408 (right!32061 (c!679729 (charsOf!4276 (_1!23481 (v!39193 lt!1362333))))))))))

(declare-fun d!1160707 () Bool)

(declare-fun c!680088 () Bool)

(assert (=> d!1160707 (= c!680088 ((_ is Empty!12663) (c!679729 (charsOf!4276 (_1!23481 (v!39193 lt!1362333))))))))

(declare-fun e!2418688 () List!41574)

(assert (=> d!1160707 (= (list!15408 (c!679729 (charsOf!4276 (_1!23481 (v!39193 lt!1362333))))) e!2418688)))

(declare-fun b!3912173 () Bool)

(assert (=> b!3912173 (= e!2418688 Nil!41450)))

(declare-fun b!3912174 () Bool)

(assert (=> b!3912174 (= e!2418688 e!2418689)))

(declare-fun c!680089 () Bool)

(assert (=> b!3912174 (= c!680089 ((_ is Leaf!19596) (c!679729 (charsOf!4276 (_1!23481 (v!39193 lt!1362333))))))))

(assert (= (and d!1160707 c!680088) b!3912173))

(assert (= (and d!1160707 (not c!680088)) b!3912174))

(assert (= (and b!3912174 c!680089) b!3912175))

(assert (= (and b!3912174 (not c!680089)) b!3912176))

(declare-fun m!4475617 () Bool)

(assert (=> b!3912175 m!4475617))

(declare-fun m!4475619 () Bool)

(assert (=> b!3912176 m!4475619))

(declare-fun m!4475621 () Bool)

(assert (=> b!3912176 m!4475621))

(assert (=> b!3912176 m!4475619))

(assert (=> b!3912176 m!4475621))

(declare-fun m!4475623 () Bool)

(assert (=> b!3912176 m!4475623))

(assert (=> d!1160091 d!1160707))

(assert (=> d!1160087 d!1160093))

(declare-fun d!1160709 () Bool)

(assert (=> d!1160709 (ruleValid!2400 thiss!20629 (rule!9366 (_1!23481 (v!39193 lt!1362333))))))

(assert (=> d!1160709 true))

(declare-fun _$65!1368 () Unit!59591)

(assert (=> d!1160709 (= (choose!23151 thiss!20629 (rule!9366 (_1!23481 (v!39193 lt!1362333))) rules!2768) _$65!1368)))

(declare-fun bs!585625 () Bool)

(assert (= bs!585625 d!1160709))

(assert (=> bs!585625 m!4473677))

(assert (=> d!1160087 d!1160709))

(declare-fun d!1160711 () Bool)

(declare-fun lt!1362895 () Bool)

(assert (=> d!1160711 (= lt!1362895 (select (content!6222 rules!2768) (rule!9366 (_1!23481 (v!39193 lt!1362333)))))))

(declare-fun e!2418690 () Bool)

(assert (=> d!1160711 (= lt!1362895 e!2418690)))

(declare-fun res!1582285 () Bool)

(assert (=> d!1160711 (=> (not res!1582285) (not e!2418690))))

(assert (=> d!1160711 (= res!1582285 ((_ is Cons!41451) rules!2768))))

(assert (=> d!1160711 (= (contains!8328 rules!2768 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) lt!1362895)))

(declare-fun b!3912177 () Bool)

(declare-fun e!2418691 () Bool)

(assert (=> b!3912177 (= e!2418690 e!2418691)))

(declare-fun res!1582286 () Bool)

(assert (=> b!3912177 (=> res!1582286 e!2418691)))

(assert (=> b!3912177 (= res!1582286 (= (h!46871 rules!2768) (rule!9366 (_1!23481 (v!39193 lt!1362333)))))))

(declare-fun b!3912178 () Bool)

(assert (=> b!3912178 (= e!2418691 (contains!8328 (t!322858 rules!2768) (rule!9366 (_1!23481 (v!39193 lt!1362333)))))))

(assert (= (and d!1160711 res!1582285) b!3912177))

(assert (= (and b!3912177 (not res!1582286)) b!3912178))

(assert (=> d!1160711 m!4475505))

(declare-fun m!4475625 () Bool)

(assert (=> d!1160711 m!4475625))

(declare-fun m!4475627 () Bool)

(assert (=> b!3912178 m!4475627))

(assert (=> d!1160087 d!1160711))

(declare-fun bs!585626 () Bool)

(declare-fun d!1160713 () Bool)

(assert (= bs!585626 (and d!1160713 d!1160343)))

(declare-fun lambda!126515 () Int)

(assert (=> bs!585626 (= (= (toValue!8896 (transformation!6452 (h!46871 rules!2768))) (toValue!8896 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72))))) (= lambda!126515 lambda!126493))))

(declare-fun bs!585627 () Bool)

(assert (= bs!585627 (and d!1160713 d!1160521)))

(assert (=> bs!585627 (= (= (toValue!8896 (transformation!6452 (h!46871 rules!2768))) (toValue!8896 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80))))) (= lambda!126515 lambda!126501))))

(assert (=> d!1160713 true))

(assert (=> d!1160713 (< (dynLambda!17807 order!22263 (toValue!8896 (transformation!6452 (h!46871 rules!2768)))) (dynLambda!17808 order!22269 lambda!126515))))

(assert (=> d!1160713 (= (equivClasses!2667 (toChars!8755 (transformation!6452 (h!46871 rules!2768))) (toValue!8896 (transformation!6452 (h!46871 rules!2768)))) (Forall2!1044 lambda!126515))))

(declare-fun bs!585628 () Bool)

(assert (= bs!585628 d!1160713))

(declare-fun m!4475629 () Bool)

(assert (=> bs!585628 m!4475629))

(assert (=> b!3911013 d!1160713))

(declare-fun d!1160715 () Bool)

(declare-fun res!1582287 () Bool)

(declare-fun e!2418692 () Bool)

(assert (=> d!1160715 (=> (not res!1582287) (not e!2418692))))

(assert (=> d!1160715 (= res!1582287 (not (isEmpty!24656 (originalCharacters!7052 (h!46872 (t!322859 prefixTokens!80))))))))

(assert (=> d!1160715 (= (inv!55630 (h!46872 (t!322859 prefixTokens!80))) e!2418692)))

(declare-fun b!3912179 () Bool)

(declare-fun res!1582288 () Bool)

(assert (=> b!3912179 (=> (not res!1582288) (not e!2418692))))

(assert (=> b!3912179 (= res!1582288 (= (originalCharacters!7052 (h!46872 (t!322859 prefixTokens!80))) (list!15407 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 prefixTokens!80))))) (value!204516 (h!46872 (t!322859 prefixTokens!80)))))))))

(declare-fun b!3912180 () Bool)

(assert (=> b!3912180 (= e!2418692 (= (size!31117 (h!46872 (t!322859 prefixTokens!80))) (size!31118 (originalCharacters!7052 (h!46872 (t!322859 prefixTokens!80))))))))

(assert (= (and d!1160715 res!1582287) b!3912179))

(assert (= (and b!3912179 res!1582288) b!3912180))

(declare-fun b_lambda!114541 () Bool)

(assert (=> (not b_lambda!114541) (not b!3912179)))

(declare-fun tb!232913 () Bool)

(declare-fun t!323213 () Bool)

(assert (=> (and b!3911170 (= (toChars!8755 (transformation!6452 (h!46871 (t!322858 rules!2768)))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 prefixTokens!80)))))) t!323213) tb!232913))

(declare-fun b!3912181 () Bool)

(declare-fun e!2418693 () Bool)

(declare-fun tp!1190706 () Bool)

(assert (=> b!3912181 (= e!2418693 (and (inv!55632 (c!679729 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 prefixTokens!80))))) (value!204516 (h!46872 (t!322859 prefixTokens!80)))))) tp!1190706))))

(declare-fun result!282292 () Bool)

(assert (=> tb!232913 (= result!282292 (and (inv!55633 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 prefixTokens!80))))) (value!204516 (h!46872 (t!322859 prefixTokens!80))))) e!2418693))))

(assert (= tb!232913 b!3912181))

(declare-fun m!4475631 () Bool)

(assert (=> b!3912181 m!4475631))

(declare-fun m!4475633 () Bool)

(assert (=> tb!232913 m!4475633))

(assert (=> b!3912179 t!323213))

(declare-fun b_and!297695 () Bool)

(assert (= b_and!297663 (and (=> t!323213 result!282292) b_and!297695)))

(declare-fun t!323215 () Bool)

(declare-fun tb!232915 () Bool)

(assert (=> (and b!3911130 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 prefixTokens!80))))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 prefixTokens!80)))))) t!323215) tb!232915))

(declare-fun result!282294 () Bool)

(assert (= result!282294 result!282292))

(assert (=> b!3912179 t!323215))

(declare-fun b_and!297697 () Bool)

(assert (= b_and!297661 (and (=> t!323215 result!282294) b_and!297697)))

(declare-fun tb!232917 () Bool)

(declare-fun t!323217 () Bool)

(assert (=> (and b!3911154 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 suffixTokens!72))))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 prefixTokens!80)))))) t!323217) tb!232917))

(declare-fun result!282296 () Bool)

(assert (= result!282296 result!282292))

(assert (=> b!3912179 t!323217))

(declare-fun b_and!297699 () Bool)

(assert (= b_and!297669 (and (=> t!323217 result!282296) b_and!297699)))

(declare-fun t!323219 () Bool)

(declare-fun tb!232919 () Bool)

(assert (=> (and b!3910611 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80)))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 prefixTokens!80)))))) t!323219) tb!232919))

(declare-fun result!282298 () Bool)

(assert (= result!282298 result!282292))

(assert (=> b!3912179 t!323219))

(declare-fun b_and!297701 () Bool)

(assert (= b_and!297665 (and (=> t!323219 result!282298) b_and!297701)))

(declare-fun t!323221 () Bool)

(declare-fun tb!232921 () Bool)

(assert (=> (and b!3910607 (= (toChars!8755 (transformation!6452 (h!46871 rules!2768))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 prefixTokens!80)))))) t!323221) tb!232921))

(declare-fun result!282300 () Bool)

(assert (= result!282300 result!282292))

(assert (=> b!3912179 t!323221))

(declare-fun b_and!297703 () Bool)

(assert (= b_and!297659 (and (=> t!323221 result!282300) b_and!297703)))

(declare-fun t!323223 () Bool)

(declare-fun tb!232923 () Bool)

(assert (=> (and b!3910608 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72)))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 prefixTokens!80)))))) t!323223) tb!232923))

(declare-fun result!282302 () Bool)

(assert (= result!282302 result!282292))

(assert (=> b!3912179 t!323223))

(declare-fun b_and!297705 () Bool)

(assert (= b_and!297667 (and (=> t!323223 result!282302) b_and!297705)))

(declare-fun m!4475635 () Bool)

(assert (=> d!1160715 m!4475635))

(declare-fun m!4475637 () Bool)

(assert (=> b!3912179 m!4475637))

(assert (=> b!3912179 m!4475637))

(declare-fun m!4475639 () Bool)

(assert (=> b!3912179 m!4475639))

(declare-fun m!4475641 () Bool)

(assert (=> b!3912180 m!4475641))

(assert (=> b!3911127 d!1160715))

(declare-fun d!1160717 () Bool)

(declare-fun lt!1362896 () List!41574)

(assert (=> d!1160717 (= (++!10662 (t!322857 lt!1362321) lt!1362896) (tail!5976 lt!1362329))))

(declare-fun e!2418694 () List!41574)

(assert (=> d!1160717 (= lt!1362896 e!2418694)))

(declare-fun c!680090 () Bool)

(assert (=> d!1160717 (= c!680090 ((_ is Cons!41450) (t!322857 lt!1362321)))))

(assert (=> d!1160717 (>= (size!31118 (tail!5976 lt!1362329)) (size!31118 (t!322857 lt!1362321)))))

(assert (=> d!1160717 (= (getSuffix!2002 (tail!5976 lt!1362329) (t!322857 lt!1362321)) lt!1362896)))

(declare-fun b!3912182 () Bool)

(assert (=> b!3912182 (= e!2418694 (getSuffix!2002 (tail!5976 (tail!5976 lt!1362329)) (t!322857 (t!322857 lt!1362321))))))

(declare-fun b!3912183 () Bool)

(assert (=> b!3912183 (= e!2418694 (tail!5976 lt!1362329))))

(assert (= (and d!1160717 c!680090) b!3912182))

(assert (= (and d!1160717 (not c!680090)) b!3912183))

(declare-fun m!4475643 () Bool)

(assert (=> d!1160717 m!4475643))

(assert (=> d!1160717 m!4474047))

(declare-fun m!4475645 () Bool)

(assert (=> d!1160717 m!4475645))

(assert (=> d!1160717 m!4474133))

(assert (=> b!3912182 m!4474047))

(declare-fun m!4475647 () Bool)

(assert (=> b!3912182 m!4475647))

(assert (=> b!3912182 m!4475647))

(declare-fun m!4475649 () Bool)

(assert (=> b!3912182 m!4475649))

(assert (=> b!3910908 d!1160717))

(declare-fun d!1160719 () Bool)

(assert (=> d!1160719 (= (tail!5976 lt!1362329) (t!322857 lt!1362329))))

(assert (=> b!3910908 d!1160719))

(declare-fun d!1160721 () Bool)

(assert (=> d!1160721 (= (inv!16 (value!204516 (h!46872 prefixTokens!80))) (= (charsToInt!0 (text!47221 (value!204516 (h!46872 prefixTokens!80)))) (value!204507 (value!204516 (h!46872 prefixTokens!80)))))))

(declare-fun bs!585629 () Bool)

(assert (= bs!585629 d!1160721))

(declare-fun m!4475651 () Bool)

(assert (=> bs!585629 m!4475651))

(assert (=> b!3910647 d!1160721))

(declare-fun d!1160723 () Bool)

(declare-fun lt!1362897 () Int)

(assert (=> d!1160723 (>= lt!1362897 0)))

(declare-fun e!2418695 () Int)

(assert (=> d!1160723 (= lt!1362897 e!2418695)))

(declare-fun c!680091 () Bool)

(assert (=> d!1160723 (= c!680091 ((_ is Nil!41450) lt!1362454))))

(assert (=> d!1160723 (= (size!31118 lt!1362454) lt!1362897)))

(declare-fun b!3912184 () Bool)

(assert (=> b!3912184 (= e!2418695 0)))

(declare-fun b!3912185 () Bool)

(assert (=> b!3912185 (= e!2418695 (+ 1 (size!31118 (t!322857 lt!1362454))))))

(assert (= (and d!1160723 c!680091) b!3912184))

(assert (= (and d!1160723 (not c!680091)) b!3912185))

(declare-fun m!4475653 () Bool)

(assert (=> b!3912185 m!4475653))

(assert (=> b!3911009 d!1160723))

(assert (=> b!3911009 d!1160143))

(assert (=> b!3911009 d!1160071))

(declare-fun d!1160725 () Bool)

(declare-fun lt!1362898 () Int)

(assert (=> d!1160725 (>= lt!1362898 0)))

(declare-fun e!2418696 () Int)

(assert (=> d!1160725 (= lt!1362898 e!2418696)))

(declare-fun c!680092 () Bool)

(assert (=> d!1160725 (= c!680092 ((_ is Nil!41452) (_1!23482 lt!1362445)))))

(assert (=> d!1160725 (= (size!31121 (_1!23482 lt!1362445)) lt!1362898)))

(declare-fun b!3912186 () Bool)

(assert (=> b!3912186 (= e!2418696 0)))

(declare-fun b!3912187 () Bool)

(assert (=> b!3912187 (= e!2418696 (+ 1 (size!31121 (t!322859 (_1!23482 lt!1362445)))))))

(assert (= (and d!1160725 c!680092) b!3912186))

(assert (= (and d!1160725 (not c!680092)) b!3912187))

(declare-fun m!4475655 () Bool)

(assert (=> b!3912187 m!4475655))

(assert (=> d!1160109 d!1160725))

(declare-fun b!3912188 () Bool)

(declare-fun res!1582289 () Bool)

(declare-fun e!2418697 () Bool)

(assert (=> b!3912188 (=> (not res!1582289) (not e!2418697))))

(declare-fun lt!1362903 () Option!8872)

(assert (=> b!3912188 (= res!1582289 (< (size!31118 (_2!23481 (get!13697 lt!1362903))) (size!31118 (_2!23481 (v!39193 lt!1362333)))))))

(declare-fun d!1160727 () Bool)

(declare-fun e!2418699 () Bool)

(assert (=> d!1160727 e!2418699))

(declare-fun res!1582294 () Bool)

(assert (=> d!1160727 (=> res!1582294 e!2418699)))

(assert (=> d!1160727 (= res!1582294 (isEmpty!24659 lt!1362903))))

(declare-fun e!2418698 () Option!8872)

(assert (=> d!1160727 (= lt!1362903 e!2418698)))

(declare-fun c!680093 () Bool)

(assert (=> d!1160727 (= c!680093 (and ((_ is Cons!41451) rules!2768) ((_ is Nil!41451) (t!322858 rules!2768))))))

(declare-fun lt!1362902 () Unit!59591)

(declare-fun lt!1362900 () Unit!59591)

(assert (=> d!1160727 (= lt!1362902 lt!1362900)))

(assert (=> d!1160727 (isPrefix!3547 (_2!23481 (v!39193 lt!1362333)) (_2!23481 (v!39193 lt!1362333)))))

(assert (=> d!1160727 (= lt!1362900 (lemmaIsPrefixRefl!2248 (_2!23481 (v!39193 lt!1362333)) (_2!23481 (v!39193 lt!1362333))))))

(assert (=> d!1160727 (rulesValidInductive!2318 thiss!20629 rules!2768)))

(assert (=> d!1160727 (= (maxPrefix!3345 thiss!20629 rules!2768 (_2!23481 (v!39193 lt!1362333))) lt!1362903)))

(declare-fun b!3912189 () Bool)

(declare-fun call!284388 () Option!8872)

(assert (=> b!3912189 (= e!2418698 call!284388)))

(declare-fun b!3912190 () Bool)

(declare-fun res!1582293 () Bool)

(assert (=> b!3912190 (=> (not res!1582293) (not e!2418697))))

(assert (=> b!3912190 (= res!1582293 (matchR!5446 (regex!6452 (rule!9366 (_1!23481 (get!13697 lt!1362903)))) (list!15407 (charsOf!4276 (_1!23481 (get!13697 lt!1362903))))))))

(declare-fun b!3912191 () Bool)

(declare-fun lt!1362899 () Option!8872)

(declare-fun lt!1362901 () Option!8872)

(assert (=> b!3912191 (= e!2418698 (ite (and ((_ is None!8871) lt!1362899) ((_ is None!8871) lt!1362901)) None!8871 (ite ((_ is None!8871) lt!1362901) lt!1362899 (ite ((_ is None!8871) lt!1362899) lt!1362901 (ite (>= (size!31117 (_1!23481 (v!39193 lt!1362899))) (size!31117 (_1!23481 (v!39193 lt!1362901)))) lt!1362899 lt!1362901)))))))

(assert (=> b!3912191 (= lt!1362899 call!284388)))

(assert (=> b!3912191 (= lt!1362901 (maxPrefix!3345 thiss!20629 (t!322858 rules!2768) (_2!23481 (v!39193 lt!1362333))))))

(declare-fun b!3912192 () Bool)

(assert (=> b!3912192 (= e!2418699 e!2418697)))

(declare-fun res!1582292 () Bool)

(assert (=> b!3912192 (=> (not res!1582292) (not e!2418697))))

(assert (=> b!3912192 (= res!1582292 (isDefined!6917 lt!1362903))))

(declare-fun b!3912193 () Bool)

(declare-fun res!1582295 () Bool)

(assert (=> b!3912193 (=> (not res!1582295) (not e!2418697))))

(assert (=> b!3912193 (= res!1582295 (= (list!15407 (charsOf!4276 (_1!23481 (get!13697 lt!1362903)))) (originalCharacters!7052 (_1!23481 (get!13697 lt!1362903)))))))

(declare-fun b!3912194 () Bool)

(declare-fun res!1582291 () Bool)

(assert (=> b!3912194 (=> (not res!1582291) (not e!2418697))))

(assert (=> b!3912194 (= res!1582291 (= (++!10662 (list!15407 (charsOf!4276 (_1!23481 (get!13697 lt!1362903)))) (_2!23481 (get!13697 lt!1362903))) (_2!23481 (v!39193 lt!1362333))))))

(declare-fun bm!284383 () Bool)

(assert (=> bm!284383 (= call!284388 (maxPrefixOneRule!2415 thiss!20629 (h!46871 rules!2768) (_2!23481 (v!39193 lt!1362333))))))

(declare-fun b!3912195 () Bool)

(declare-fun res!1582290 () Bool)

(assert (=> b!3912195 (=> (not res!1582290) (not e!2418697))))

(assert (=> b!3912195 (= res!1582290 (= (value!204516 (_1!23481 (get!13697 lt!1362903))) (apply!9691 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362903)))) (seqFromList!4719 (originalCharacters!7052 (_1!23481 (get!13697 lt!1362903)))))))))

(declare-fun b!3912196 () Bool)

(assert (=> b!3912196 (= e!2418697 (contains!8328 rules!2768 (rule!9366 (_1!23481 (get!13697 lt!1362903)))))))

(assert (= (and d!1160727 c!680093) b!3912189))

(assert (= (and d!1160727 (not c!680093)) b!3912191))

(assert (= (or b!3912189 b!3912191) bm!284383))

(assert (= (and d!1160727 (not res!1582294)) b!3912192))

(assert (= (and b!3912192 res!1582292) b!3912193))

(assert (= (and b!3912193 res!1582295) b!3912188))

(assert (= (and b!3912188 res!1582289) b!3912194))

(assert (= (and b!3912194 res!1582291) b!3912195))

(assert (= (and b!3912195 res!1582290) b!3912190))

(assert (= (and b!3912190 res!1582293) b!3912196))

(declare-fun m!4475657 () Bool)

(assert (=> b!3912193 m!4475657))

(declare-fun m!4475659 () Bool)

(assert (=> b!3912193 m!4475659))

(assert (=> b!3912193 m!4475659))

(declare-fun m!4475661 () Bool)

(assert (=> b!3912193 m!4475661))

(declare-fun m!4475663 () Bool)

(assert (=> b!3912192 m!4475663))

(assert (=> b!3912195 m!4475657))

(declare-fun m!4475665 () Bool)

(assert (=> b!3912195 m!4475665))

(assert (=> b!3912195 m!4475665))

(declare-fun m!4475667 () Bool)

(assert (=> b!3912195 m!4475667))

(assert (=> b!3912196 m!4475657))

(declare-fun m!4475669 () Bool)

(assert (=> b!3912196 m!4475669))

(declare-fun m!4475671 () Bool)

(assert (=> b!3912191 m!4475671))

(assert (=> b!3912190 m!4475657))

(assert (=> b!3912190 m!4475659))

(assert (=> b!3912190 m!4475659))

(assert (=> b!3912190 m!4475661))

(assert (=> b!3912190 m!4475661))

(declare-fun m!4475673 () Bool)

(assert (=> b!3912190 m!4475673))

(declare-fun m!4475675 () Bool)

(assert (=> d!1160727 m!4475675))

(declare-fun m!4475677 () Bool)

(assert (=> d!1160727 m!4475677))

(declare-fun m!4475679 () Bool)

(assert (=> d!1160727 m!4475679))

(assert (=> d!1160727 m!4474167))

(assert (=> b!3912188 m!4475657))

(declare-fun m!4475681 () Bool)

(assert (=> b!3912188 m!4475681))

(assert (=> b!3912188 m!4473745))

(assert (=> b!3912194 m!4475657))

(assert (=> b!3912194 m!4475659))

(assert (=> b!3912194 m!4475659))

(assert (=> b!3912194 m!4475661))

(assert (=> b!3912194 m!4475661))

(declare-fun m!4475683 () Bool)

(assert (=> b!3912194 m!4475683))

(declare-fun m!4475685 () Bool)

(assert (=> bm!284383 m!4475685))

(assert (=> d!1160109 d!1160727))

(declare-fun d!1160729 () Bool)

(declare-fun c!680094 () Bool)

(assert (=> d!1160729 (= c!680094 ((_ is Nil!41452) lt!1362492))))

(declare-fun e!2418700 () (InoxSet Token!12042))

(assert (=> d!1160729 (= (content!6220 lt!1362492) e!2418700)))

(declare-fun b!3912197 () Bool)

(assert (=> b!3912197 (= e!2418700 ((as const (Array Token!12042 Bool)) false))))

(declare-fun b!3912198 () Bool)

(assert (=> b!3912198 (= e!2418700 ((_ map or) (store ((as const (Array Token!12042 Bool)) false) (h!46872 lt!1362492) true) (content!6220 (t!322859 lt!1362492))))))

(assert (= (and d!1160729 c!680094) b!3912197))

(assert (= (and d!1160729 (not c!680094)) b!3912198))

(declare-fun m!4475687 () Bool)

(assert (=> b!3912198 m!4475687))

(declare-fun m!4475689 () Bool)

(assert (=> b!3912198 m!4475689))

(assert (=> d!1160165 d!1160729))

(declare-fun d!1160731 () Bool)

(declare-fun c!680095 () Bool)

(assert (=> d!1160731 (= c!680095 ((_ is Nil!41452) (Cons!41452 (_1!23481 (v!39193 lt!1362333)) Nil!41452)))))

(declare-fun e!2418701 () (InoxSet Token!12042))

(assert (=> d!1160731 (= (content!6220 (Cons!41452 (_1!23481 (v!39193 lt!1362333)) Nil!41452)) e!2418701)))

(declare-fun b!3912199 () Bool)

(assert (=> b!3912199 (= e!2418701 ((as const (Array Token!12042 Bool)) false))))

(declare-fun b!3912200 () Bool)

(assert (=> b!3912200 (= e!2418701 ((_ map or) (store ((as const (Array Token!12042 Bool)) false) (h!46872 (Cons!41452 (_1!23481 (v!39193 lt!1362333)) Nil!41452)) true) (content!6220 (t!322859 (Cons!41452 (_1!23481 (v!39193 lt!1362333)) Nil!41452)))))))

(assert (= (and d!1160731 c!680095) b!3912199))

(assert (= (and d!1160731 (not c!680095)) b!3912200))

(declare-fun m!4475691 () Bool)

(assert (=> b!3912200 m!4475691))

(assert (=> b!3912200 m!4475263))

(assert (=> d!1160165 d!1160731))

(declare-fun d!1160733 () Bool)

(declare-fun c!680096 () Bool)

(assert (=> d!1160733 (= c!680096 ((_ is Nil!41452) (_1!23482 lt!1362324)))))

(declare-fun e!2418702 () (InoxSet Token!12042))

(assert (=> d!1160733 (= (content!6220 (_1!23482 lt!1362324)) e!2418702)))

(declare-fun b!3912201 () Bool)

(assert (=> b!3912201 (= e!2418702 ((as const (Array Token!12042 Bool)) false))))

(declare-fun b!3912202 () Bool)

(assert (=> b!3912202 (= e!2418702 ((_ map or) (store ((as const (Array Token!12042 Bool)) false) (h!46872 (_1!23482 lt!1362324)) true) (content!6220 (t!322859 (_1!23482 lt!1362324)))))))

(assert (= (and d!1160733 c!680096) b!3912201))

(assert (= (and d!1160733 (not c!680096)) b!3912202))

(declare-fun m!4475693 () Bool)

(assert (=> b!3912202 m!4475693))

(declare-fun m!4475695 () Bool)

(assert (=> b!3912202 m!4475695))

(assert (=> d!1160165 d!1160733))

(declare-fun b!3912204 () Bool)

(declare-fun e!2418703 () List!41574)

(assert (=> b!3912204 (= e!2418703 (Cons!41450 (h!46870 (list!15407 (charsOf!4276 (_1!23481 (get!13697 lt!1362473))))) (++!10662 (t!322857 (list!15407 (charsOf!4276 (_1!23481 (get!13697 lt!1362473))))) (_2!23481 (get!13697 lt!1362473)))))))

(declare-fun b!3912203 () Bool)

(assert (=> b!3912203 (= e!2418703 (_2!23481 (get!13697 lt!1362473)))))

(declare-fun b!3912206 () Bool)

(declare-fun e!2418704 () Bool)

(declare-fun lt!1362904 () List!41574)

(assert (=> b!3912206 (= e!2418704 (or (not (= (_2!23481 (get!13697 lt!1362473)) Nil!41450)) (= lt!1362904 (list!15407 (charsOf!4276 (_1!23481 (get!13697 lt!1362473)))))))))

(declare-fun d!1160735 () Bool)

(assert (=> d!1160735 e!2418704))

(declare-fun res!1582296 () Bool)

(assert (=> d!1160735 (=> (not res!1582296) (not e!2418704))))

(assert (=> d!1160735 (= res!1582296 (= (content!6219 lt!1362904) ((_ map or) (content!6219 (list!15407 (charsOf!4276 (_1!23481 (get!13697 lt!1362473))))) (content!6219 (_2!23481 (get!13697 lt!1362473))))))))

(assert (=> d!1160735 (= lt!1362904 e!2418703)))

(declare-fun c!680097 () Bool)

(assert (=> d!1160735 (= c!680097 ((_ is Nil!41450) (list!15407 (charsOf!4276 (_1!23481 (get!13697 lt!1362473))))))))

(assert (=> d!1160735 (= (++!10662 (list!15407 (charsOf!4276 (_1!23481 (get!13697 lt!1362473)))) (_2!23481 (get!13697 lt!1362473))) lt!1362904)))

(declare-fun b!3912205 () Bool)

(declare-fun res!1582297 () Bool)

(assert (=> b!3912205 (=> (not res!1582297) (not e!2418704))))

(assert (=> b!3912205 (= res!1582297 (= (size!31118 lt!1362904) (+ (size!31118 (list!15407 (charsOf!4276 (_1!23481 (get!13697 lt!1362473))))) (size!31118 (_2!23481 (get!13697 lt!1362473))))))))

(assert (= (and d!1160735 c!680097) b!3912203))

(assert (= (and d!1160735 (not c!680097)) b!3912204))

(assert (= (and d!1160735 res!1582296) b!3912205))

(assert (= (and b!3912205 res!1582297) b!3912206))

(declare-fun m!4475697 () Bool)

(assert (=> b!3912204 m!4475697))

(declare-fun m!4475699 () Bool)

(assert (=> d!1160735 m!4475699))

(assert (=> d!1160735 m!4474147))

(declare-fun m!4475701 () Bool)

(assert (=> d!1160735 m!4475701))

(declare-fun m!4475703 () Bool)

(assert (=> d!1160735 m!4475703))

(declare-fun m!4475705 () Bool)

(assert (=> b!3912205 m!4475705))

(assert (=> b!3912205 m!4474147))

(declare-fun m!4475707 () Bool)

(assert (=> b!3912205 m!4475707))

(assert (=> b!3912205 m!4474169))

(assert (=> b!3911038 d!1160735))

(assert (=> b!3911038 d!1160367))

(assert (=> b!3911038 d!1160371))

(assert (=> b!3911038 d!1160365))

(declare-fun d!1160737 () Bool)

(assert (=> d!1160737 (= (inv!17 (value!204516 (h!46872 suffixTokens!72))) (= (charsToBigInt!1 (text!47222 (value!204516 (h!46872 suffixTokens!72)))) (value!204508 (value!204516 (h!46872 suffixTokens!72)))))))

(declare-fun bs!585630 () Bool)

(assert (= bs!585630 d!1160737))

(declare-fun m!4475709 () Bool)

(assert (=> bs!585630 m!4475709))

(assert (=> b!3910654 d!1160737))

(declare-fun d!1160739 () Bool)

(declare-fun lt!1362905 () Int)

(assert (=> d!1160739 (>= lt!1362905 0)))

(declare-fun e!2418705 () Int)

(assert (=> d!1160739 (= lt!1362905 e!2418705)))

(declare-fun c!680098 () Bool)

(assert (=> d!1160739 (= c!680098 ((_ is Nil!41450) (t!322857 lt!1362329)))))

(assert (=> d!1160739 (= (size!31118 (t!322857 lt!1362329)) lt!1362905)))

(declare-fun b!3912207 () Bool)

(assert (=> b!3912207 (= e!2418705 0)))

(declare-fun b!3912208 () Bool)

(assert (=> b!3912208 (= e!2418705 (+ 1 (size!31118 (t!322857 (t!322857 lt!1362329)))))))

(assert (= (and d!1160739 c!680098) b!3912207))

(assert (= (and d!1160739 (not c!680098)) b!3912208))

(declare-fun m!4475711 () Bool)

(assert (=> b!3912208 m!4475711))

(assert (=> b!3911042 d!1160739))

(declare-fun d!1160741 () Bool)

(declare-fun c!680099 () Bool)

(assert (=> d!1160741 (= c!680099 ((_ is Node!12663) (c!679729 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80)))) (value!204516 (h!46872 prefixTokens!80))))))))

(declare-fun e!2418706 () Bool)

(assert (=> d!1160741 (= (inv!55632 (c!679729 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80)))) (value!204516 (h!46872 prefixTokens!80))))) e!2418706)))

(declare-fun b!3912209 () Bool)

(assert (=> b!3912209 (= e!2418706 (inv!55638 (c!679729 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80)))) (value!204516 (h!46872 prefixTokens!80))))))))

(declare-fun b!3912210 () Bool)

(declare-fun e!2418707 () Bool)

(assert (=> b!3912210 (= e!2418706 e!2418707)))

(declare-fun res!1582298 () Bool)

(assert (=> b!3912210 (= res!1582298 (not ((_ is Leaf!19596) (c!679729 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80)))) (value!204516 (h!46872 prefixTokens!80)))))))))

(assert (=> b!3912210 (=> res!1582298 e!2418707)))

(declare-fun b!3912211 () Bool)

(assert (=> b!3912211 (= e!2418707 (inv!55639 (c!679729 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80)))) (value!204516 (h!46872 prefixTokens!80))))))))

(assert (= (and d!1160741 c!680099) b!3912209))

(assert (= (and d!1160741 (not c!680099)) b!3912210))

(assert (= (and b!3912210 (not res!1582298)) b!3912211))

(declare-fun m!4475713 () Bool)

(assert (=> b!3912209 m!4475713))

(declare-fun m!4475715 () Bool)

(assert (=> b!3912211 m!4475715))

(assert (=> b!3910665 d!1160741))

(assert (=> b!3910834 d!1160261))

(declare-fun d!1160743 () Bool)

(assert (=> d!1160743 (= (isEmpty!24656 (originalCharacters!7052 (h!46872 prefixTokens!80))) ((_ is Nil!41450) (originalCharacters!7052 (h!46872 prefixTokens!80))))))

(assert (=> d!1160017 d!1160743))

(declare-fun d!1160745 () Bool)

(assert (=> d!1160745 (= (isEmpty!24659 lt!1362378) (not ((_ is Some!8871) lt!1362378)))))

(assert (=> d!1160025 d!1160745))

(declare-fun d!1160747 () Bool)

(assert (=> d!1160747 (= (isEmpty!24656 (_1!23483 lt!1362376)) ((_ is Nil!41450) (_1!23483 lt!1362376)))))

(assert (=> d!1160025 d!1160747))

(declare-fun d!1160749 () Bool)

(declare-fun lt!1362928 () tuple2!40698)

(assert (=> d!1160749 (= (++!10662 (_1!23483 lt!1362928) (_2!23483 lt!1362928)) lt!1362329)))

(declare-fun sizeTr!247 (List!41574 Int) Int)

(assert (=> d!1160749 (= lt!1362928 (findLongestMatchInner!1229 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) Nil!41450 0 lt!1362329 lt!1362329 (sizeTr!247 lt!1362329 0)))))

(declare-fun lt!1362926 () Unit!59591)

(declare-fun lt!1362927 () Unit!59591)

(assert (=> d!1160749 (= lt!1362926 lt!1362927)))

(declare-fun lt!1362922 () List!41574)

(declare-fun lt!1362929 () Int)

(assert (=> d!1160749 (= (sizeTr!247 lt!1362922 lt!1362929) (+ (size!31118 lt!1362922) lt!1362929))))

(declare-fun lemmaSizeTrEqualsSize!246 (List!41574 Int) Unit!59591)

(assert (=> d!1160749 (= lt!1362927 (lemmaSizeTrEqualsSize!246 lt!1362922 lt!1362929))))

(assert (=> d!1160749 (= lt!1362929 0)))

(assert (=> d!1160749 (= lt!1362922 Nil!41450)))

(declare-fun lt!1362923 () Unit!59591)

(declare-fun lt!1362924 () Unit!59591)

(assert (=> d!1160749 (= lt!1362923 lt!1362924)))

(declare-fun lt!1362925 () Int)

(assert (=> d!1160749 (= (sizeTr!247 lt!1362329 lt!1362925) (+ (size!31118 lt!1362329) lt!1362925))))

(assert (=> d!1160749 (= lt!1362924 (lemmaSizeTrEqualsSize!246 lt!1362329 lt!1362925))))

(assert (=> d!1160749 (= lt!1362925 0)))

(assert (=> d!1160749 (validRegex!5167 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))))

(assert (=> d!1160749 (= (findLongestMatch!1142 (regex!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))) lt!1362329) lt!1362928)))

(declare-fun bs!585631 () Bool)

(assert (= bs!585631 d!1160749))

(assert (=> bs!585631 m!4473711))

(declare-fun m!4475717 () Bool)

(assert (=> bs!585631 m!4475717))

(declare-fun m!4475719 () Bool)

(assert (=> bs!585631 m!4475719))

(declare-fun m!4475721 () Bool)

(assert (=> bs!585631 m!4475721))

(declare-fun m!4475723 () Bool)

(assert (=> bs!585631 m!4475723))

(assert (=> bs!585631 m!4475719))

(declare-fun m!4475725 () Bool)

(assert (=> bs!585631 m!4475725))

(assert (=> bs!585631 m!4473793))

(declare-fun m!4475727 () Bool)

(assert (=> bs!585631 m!4475727))

(declare-fun m!4475729 () Bool)

(assert (=> bs!585631 m!4475729))

(declare-fun m!4475731 () Bool)

(assert (=> bs!585631 m!4475731))

(assert (=> d!1160025 d!1160749))

(assert (=> d!1160025 d!1160093))

(declare-fun d!1160751 () Bool)

(assert (=> d!1160751 (= (list!15407 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80)))) (value!204516 (h!46872 prefixTokens!80)))) (list!15408 (c!679729 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80)))) (value!204516 (h!46872 prefixTokens!80))))))))

(declare-fun bs!585632 () Bool)

(assert (= bs!585632 d!1160751))

(declare-fun m!4475733 () Bool)

(assert (=> bs!585632 m!4475733))

(assert (=> b!3910659 d!1160751))

(declare-fun b!3912212 () Bool)

(declare-fun e!2418708 () Bool)

(declare-fun tp!1190707 () Bool)

(assert (=> b!3912212 (= e!2418708 (and tp_is_empty!19685 tp!1190707))))

(assert (=> b!3911150 (= tp!1190483 e!2418708)))

(assert (= (and b!3911150 ((_ is Cons!41450) (t!322857 (t!322857 prefix!426)))) b!3912212))

(declare-fun e!2418709 () Bool)

(assert (=> b!3911142 (= tp!1190474 e!2418709)))

(declare-fun b!3912216 () Bool)

(declare-fun tp!1190711 () Bool)

(declare-fun tp!1190709 () Bool)

(assert (=> b!3912216 (= e!2418709 (and tp!1190711 tp!1190709))))

(declare-fun b!3912213 () Bool)

(assert (=> b!3912213 (= e!2418709 tp_is_empty!19685)))

(declare-fun b!3912215 () Bool)

(declare-fun tp!1190712 () Bool)

(assert (=> b!3912215 (= e!2418709 tp!1190712)))

(declare-fun b!3912214 () Bool)

(declare-fun tp!1190710 () Bool)

(declare-fun tp!1190708 () Bool)

(assert (=> b!3912214 (= e!2418709 (and tp!1190710 tp!1190708))))

(assert (= (and b!3911142 ((_ is ElementMatch!11357) (regOne!23226 (regex!6452 (rule!9366 (h!46872 prefixTokens!80)))))) b!3912213))

(assert (= (and b!3911142 ((_ is Concat!18040) (regOne!23226 (regex!6452 (rule!9366 (h!46872 prefixTokens!80)))))) b!3912214))

(assert (= (and b!3911142 ((_ is Star!11357) (regOne!23226 (regex!6452 (rule!9366 (h!46872 prefixTokens!80)))))) b!3912215))

(assert (= (and b!3911142 ((_ is Union!11357) (regOne!23226 (regex!6452 (rule!9366 (h!46872 prefixTokens!80)))))) b!3912216))

(declare-fun e!2418710 () Bool)

(assert (=> b!3911142 (= tp!1190472 e!2418710)))

(declare-fun b!3912220 () Bool)

(declare-fun tp!1190716 () Bool)

(declare-fun tp!1190714 () Bool)

(assert (=> b!3912220 (= e!2418710 (and tp!1190716 tp!1190714))))

(declare-fun b!3912217 () Bool)

(assert (=> b!3912217 (= e!2418710 tp_is_empty!19685)))

(declare-fun b!3912219 () Bool)

(declare-fun tp!1190717 () Bool)

(assert (=> b!3912219 (= e!2418710 tp!1190717)))

(declare-fun b!3912218 () Bool)

(declare-fun tp!1190715 () Bool)

(declare-fun tp!1190713 () Bool)

(assert (=> b!3912218 (= e!2418710 (and tp!1190715 tp!1190713))))

(assert (= (and b!3911142 ((_ is ElementMatch!11357) (regTwo!23226 (regex!6452 (rule!9366 (h!46872 prefixTokens!80)))))) b!3912217))

(assert (= (and b!3911142 ((_ is Concat!18040) (regTwo!23226 (regex!6452 (rule!9366 (h!46872 prefixTokens!80)))))) b!3912218))

(assert (= (and b!3911142 ((_ is Star!11357) (regTwo!23226 (regex!6452 (rule!9366 (h!46872 prefixTokens!80)))))) b!3912219))

(assert (= (and b!3911142 ((_ is Union!11357) (regTwo!23226 (regex!6452 (rule!9366 (h!46872 prefixTokens!80)))))) b!3912220))

(declare-fun e!2418711 () Bool)

(assert (=> b!3911169 (= tp!1190503 e!2418711)))

(declare-fun b!3912224 () Bool)

(declare-fun tp!1190721 () Bool)

(declare-fun tp!1190719 () Bool)

(assert (=> b!3912224 (= e!2418711 (and tp!1190721 tp!1190719))))

(declare-fun b!3912221 () Bool)

(assert (=> b!3912221 (= e!2418711 tp_is_empty!19685)))

(declare-fun b!3912223 () Bool)

(declare-fun tp!1190722 () Bool)

(assert (=> b!3912223 (= e!2418711 tp!1190722)))

(declare-fun b!3912222 () Bool)

(declare-fun tp!1190720 () Bool)

(declare-fun tp!1190718 () Bool)

(assert (=> b!3912222 (= e!2418711 (and tp!1190720 tp!1190718))))

(assert (= (and b!3911169 ((_ is ElementMatch!11357) (regex!6452 (h!46871 (t!322858 rules!2768))))) b!3912221))

(assert (= (and b!3911169 ((_ is Concat!18040) (regex!6452 (h!46871 (t!322858 rules!2768))))) b!3912222))

(assert (= (and b!3911169 ((_ is Star!11357) (regex!6452 (h!46871 (t!322858 rules!2768))))) b!3912223))

(assert (= (and b!3911169 ((_ is Union!11357) (regex!6452 (h!46871 (t!322858 rules!2768))))) b!3912224))

(declare-fun b!3912227 () Bool)

(declare-fun b_free!106109 () Bool)

(declare-fun b_next!106813 () Bool)

(assert (=> b!3912227 (= b_free!106109 (not b_next!106813))))

(declare-fun tb!232925 () Bool)

(declare-fun t!323225 () Bool)

(assert (=> (and b!3912227 (= (toValue!8896 (transformation!6452 (h!46871 (t!322858 (t!322858 rules!2768))))) (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))) t!323225) tb!232925))

(declare-fun result!282304 () Bool)

(assert (= result!282304 result!281940))

(assert (=> d!1160081 t!323225))

(declare-fun tb!232927 () Bool)

(declare-fun t!323227 () Bool)

(assert (=> (and b!3912227 (= (toValue!8896 (transformation!6452 (h!46871 (t!322858 (t!322858 rules!2768))))) (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362378)))))) t!323227) tb!232927))

(declare-fun result!282306 () Bool)

(assert (= result!282306 result!282146))

(assert (=> d!1160485 t!323227))

(declare-fun tb!232929 () Bool)

(declare-fun t!323229 () Bool)

(assert (=> (and b!3912227 (= (toValue!8896 (transformation!6452 (h!46871 (t!322858 (t!322858 rules!2768))))) (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))) t!323229) tb!232929))

(declare-fun result!282308 () Bool)

(assert (= result!282308 result!282280))

(assert (=> d!1160677 t!323229))

(assert (=> d!1160681 t!323229))

(declare-fun tb!232931 () Bool)

(declare-fun t!323231 () Bool)

(assert (=> (and b!3912227 (= (toValue!8896 (transformation!6452 (h!46871 (t!322858 (t!322858 rules!2768))))) (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362473)))))) t!323231) tb!232931))

(declare-fun result!282310 () Bool)

(assert (= result!282310 result!282158))

(assert (=> d!1160553 t!323231))

(declare-fun b_and!297707 () Bool)

(declare-fun tp!1190725 () Bool)

(assert (=> b!3912227 (= tp!1190725 (and (=> t!323227 result!282306) (=> t!323229 result!282308) (=> t!323225 result!282304) (=> t!323231 result!282310) b_and!297707))))

(declare-fun b_free!106111 () Bool)

(declare-fun b_next!106815 () Bool)

(assert (=> b!3912227 (= b_free!106111 (not b_next!106815))))

(declare-fun tb!232933 () Bool)

(declare-fun t!323233 () Bool)

(assert (=> (and b!3912227 (= (toChars!8755 (transformation!6452 (h!46871 (t!322858 (t!322858 rules!2768))))) (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))) t!323233) tb!232933))

(declare-fun result!282312 () Bool)

(assert (= result!282312 result!281948))

(assert (=> d!1160095 t!323233))

(declare-fun t!323235 () Bool)

(declare-fun tb!232935 () Bool)

(assert (=> (and b!3912227 (= (toChars!8755 (transformation!6452 (h!46871 (t!322858 (t!322858 rules!2768))))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 prefixTokens!80)))))) t!323235) tb!232935))

(declare-fun result!282314 () Bool)

(assert (= result!282314 result!282292))

(assert (=> b!3912179 t!323235))

(declare-fun t!323237 () Bool)

(declare-fun tb!232937 () Bool)

(assert (=> (and b!3912227 (= (toChars!8755 (transformation!6452 (h!46871 (t!322858 (t!322858 rules!2768))))) (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362473)))))) t!323237) tb!232937))

(declare-fun result!282316 () Bool)

(assert (= result!282316 result!282110))

(assert (=> d!1160371 t!323237))

(declare-fun t!323239 () Bool)

(declare-fun tb!232939 () Bool)

(assert (=> (and b!3912227 (= (toChars!8755 (transformation!6452 (h!46871 (t!322858 (t!322858 rules!2768))))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80))))) t!323239) tb!232939))

(declare-fun result!282318 () Bool)

(assert (= result!282318 result!281918))

(assert (=> b!3910659 t!323239))

(declare-fun t!323241 () Bool)

(declare-fun tb!232941 () Bool)

(assert (=> (and b!3912227 (= (toChars!8755 (transformation!6452 (h!46871 (t!322858 (t!322858 rules!2768))))) (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362378)))))) t!323241) tb!232941))

(declare-fun result!282320 () Bool)

(assert (= result!282320 result!282050))

(assert (=> d!1160259 t!323241))

(declare-fun tb!232943 () Bool)

(declare-fun t!323243 () Bool)

(assert (=> (and b!3912227 (= (toChars!8755 (transformation!6452 (h!46871 (t!322858 (t!322858 rules!2768))))) (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))) t!323243) tb!232943))

(declare-fun result!282322 () Bool)

(assert (= result!282322 result!282268))

(assert (=> d!1160677 t!323243))

(declare-fun tb!232945 () Bool)

(declare-fun t!323245 () Bool)

(assert (=> (and b!3912227 (= (toChars!8755 (transformation!6452 (h!46871 (t!322858 (t!322858 rules!2768))))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 suffixTokens!72)))))) t!323245) tb!232945))

(declare-fun result!282324 () Bool)

(assert (= result!282324 result!282122))

(assert (=> b!3911560 t!323245))

(declare-fun tb!232947 () Bool)

(declare-fun t!323247 () Bool)

(assert (=> (and b!3912227 (= (toChars!8755 (transformation!6452 (h!46871 (t!322858 (t!322858 rules!2768))))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72))))) t!323247) tb!232947))

(declare-fun result!282326 () Bool)

(assert (= result!282326 result!281968))

(assert (=> b!3911052 t!323247))

(declare-fun tp!1190724 () Bool)

(declare-fun b_and!297709 () Bool)

(assert (=> b!3912227 (= tp!1190724 (and (=> t!323245 result!282324) (=> t!323241 result!282320) (=> t!323239 result!282318) (=> t!323235 result!282314) (=> t!323233 result!282312) (=> t!323247 result!282326) (=> t!323237 result!282316) (=> t!323243 result!282322) b_and!297709))))

(declare-fun e!2418714 () Bool)

(assert (=> b!3912227 (= e!2418714 (and tp!1190725 tp!1190724))))

(declare-fun b!3912226 () Bool)

(declare-fun tp!1190723 () Bool)

(declare-fun e!2418712 () Bool)

(assert (=> b!3912226 (= e!2418712 (and tp!1190723 (inv!55627 (tag!7312 (h!46871 (t!322858 (t!322858 rules!2768))))) (inv!55631 (transformation!6452 (h!46871 (t!322858 (t!322858 rules!2768))))) e!2418714))))

(declare-fun b!3912225 () Bool)

(declare-fun e!2418713 () Bool)

(declare-fun tp!1190726 () Bool)

(assert (=> b!3912225 (= e!2418713 (and e!2418712 tp!1190726))))

(assert (=> b!3911168 (= tp!1190506 e!2418713)))

(assert (= b!3912226 b!3912227))

(assert (= b!3912225 b!3912226))

(assert (= (and b!3911168 ((_ is Cons!41451) (t!322858 (t!322858 rules!2768)))) b!3912225))

(declare-fun m!4475735 () Bool)

(assert (=> b!3912226 m!4475735))

(declare-fun m!4475737 () Bool)

(assert (=> b!3912226 m!4475737))

(declare-fun e!2418716 () Bool)

(assert (=> b!3911157 (= tp!1190492 e!2418716)))

(declare-fun b!3912231 () Bool)

(declare-fun tp!1190730 () Bool)

(declare-fun tp!1190728 () Bool)

(assert (=> b!3912231 (= e!2418716 (and tp!1190730 tp!1190728))))

(declare-fun b!3912228 () Bool)

(assert (=> b!3912228 (= e!2418716 tp_is_empty!19685)))

(declare-fun b!3912230 () Bool)

(declare-fun tp!1190731 () Bool)

(assert (=> b!3912230 (= e!2418716 tp!1190731)))

(declare-fun b!3912229 () Bool)

(declare-fun tp!1190729 () Bool)

(declare-fun tp!1190727 () Bool)

(assert (=> b!3912229 (= e!2418716 (and tp!1190729 tp!1190727))))

(assert (= (and b!3911157 ((_ is ElementMatch!11357) (regOne!23226 (regex!6452 (rule!9366 (h!46872 suffixTokens!72)))))) b!3912228))

(assert (= (and b!3911157 ((_ is Concat!18040) (regOne!23226 (regex!6452 (rule!9366 (h!46872 suffixTokens!72)))))) b!3912229))

(assert (= (and b!3911157 ((_ is Star!11357) (regOne!23226 (regex!6452 (rule!9366 (h!46872 suffixTokens!72)))))) b!3912230))

(assert (= (and b!3911157 ((_ is Union!11357) (regOne!23226 (regex!6452 (rule!9366 (h!46872 suffixTokens!72)))))) b!3912231))

(declare-fun e!2418717 () Bool)

(assert (=> b!3911157 (= tp!1190490 e!2418717)))

(declare-fun b!3912235 () Bool)

(declare-fun tp!1190735 () Bool)

(declare-fun tp!1190733 () Bool)

(assert (=> b!3912235 (= e!2418717 (and tp!1190735 tp!1190733))))

(declare-fun b!3912232 () Bool)

(assert (=> b!3912232 (= e!2418717 tp_is_empty!19685)))

(declare-fun b!3912234 () Bool)

(declare-fun tp!1190736 () Bool)

(assert (=> b!3912234 (= e!2418717 tp!1190736)))

(declare-fun b!3912233 () Bool)

(declare-fun tp!1190734 () Bool)

(declare-fun tp!1190732 () Bool)

(assert (=> b!3912233 (= e!2418717 (and tp!1190734 tp!1190732))))

(assert (= (and b!3911157 ((_ is ElementMatch!11357) (regTwo!23226 (regex!6452 (rule!9366 (h!46872 suffixTokens!72)))))) b!3912232))

(assert (= (and b!3911157 ((_ is Concat!18040) (regTwo!23226 (regex!6452 (rule!9366 (h!46872 suffixTokens!72)))))) b!3912233))

(assert (= (and b!3911157 ((_ is Star!11357) (regTwo!23226 (regex!6452 (rule!9366 (h!46872 suffixTokens!72)))))) b!3912234))

(assert (= (and b!3911157 ((_ is Union!11357) (regTwo!23226 (regex!6452 (rule!9366 (h!46872 suffixTokens!72)))))) b!3912235))

(declare-fun e!2418718 () Bool)

(assert (=> b!3911144 (= tp!1190475 e!2418718)))

(declare-fun b!3912239 () Bool)

(declare-fun tp!1190740 () Bool)

(declare-fun tp!1190738 () Bool)

(assert (=> b!3912239 (= e!2418718 (and tp!1190740 tp!1190738))))

(declare-fun b!3912236 () Bool)

(assert (=> b!3912236 (= e!2418718 tp_is_empty!19685)))

(declare-fun b!3912238 () Bool)

(declare-fun tp!1190741 () Bool)

(assert (=> b!3912238 (= e!2418718 tp!1190741)))

(declare-fun b!3912237 () Bool)

(declare-fun tp!1190739 () Bool)

(declare-fun tp!1190737 () Bool)

(assert (=> b!3912237 (= e!2418718 (and tp!1190739 tp!1190737))))

(assert (= (and b!3911144 ((_ is ElementMatch!11357) (regOne!23227 (regex!6452 (rule!9366 (h!46872 prefixTokens!80)))))) b!3912236))

(assert (= (and b!3911144 ((_ is Concat!18040) (regOne!23227 (regex!6452 (rule!9366 (h!46872 prefixTokens!80)))))) b!3912237))

(assert (= (and b!3911144 ((_ is Star!11357) (regOne!23227 (regex!6452 (rule!9366 (h!46872 prefixTokens!80)))))) b!3912238))

(assert (= (and b!3911144 ((_ is Union!11357) (regOne!23227 (regex!6452 (rule!9366 (h!46872 prefixTokens!80)))))) b!3912239))

(declare-fun e!2418719 () Bool)

(assert (=> b!3911144 (= tp!1190473 e!2418719)))

(declare-fun b!3912243 () Bool)

(declare-fun tp!1190745 () Bool)

(declare-fun tp!1190743 () Bool)

(assert (=> b!3912243 (= e!2418719 (and tp!1190745 tp!1190743))))

(declare-fun b!3912240 () Bool)

(assert (=> b!3912240 (= e!2418719 tp_is_empty!19685)))

(declare-fun b!3912242 () Bool)

(declare-fun tp!1190746 () Bool)

(assert (=> b!3912242 (= e!2418719 tp!1190746)))

(declare-fun b!3912241 () Bool)

(declare-fun tp!1190744 () Bool)

(declare-fun tp!1190742 () Bool)

(assert (=> b!3912241 (= e!2418719 (and tp!1190744 tp!1190742))))

(assert (= (and b!3911144 ((_ is ElementMatch!11357) (regTwo!23227 (regex!6452 (rule!9366 (h!46872 prefixTokens!80)))))) b!3912240))

(assert (= (and b!3911144 ((_ is Concat!18040) (regTwo!23227 (regex!6452 (rule!9366 (h!46872 prefixTokens!80)))))) b!3912241))

(assert (= (and b!3911144 ((_ is Star!11357) (regTwo!23227 (regex!6452 (rule!9366 (h!46872 prefixTokens!80)))))) b!3912242))

(assert (= (and b!3911144 ((_ is Union!11357) (regTwo!23227 (regex!6452 (rule!9366 (h!46872 prefixTokens!80)))))) b!3912243))

(declare-fun e!2418720 () Bool)

(assert (=> b!3911143 (= tp!1190476 e!2418720)))

(declare-fun b!3912247 () Bool)

(declare-fun tp!1190750 () Bool)

(declare-fun tp!1190748 () Bool)

(assert (=> b!3912247 (= e!2418720 (and tp!1190750 tp!1190748))))

(declare-fun b!3912244 () Bool)

(assert (=> b!3912244 (= e!2418720 tp_is_empty!19685)))

(declare-fun b!3912246 () Bool)

(declare-fun tp!1190751 () Bool)

(assert (=> b!3912246 (= e!2418720 tp!1190751)))

(declare-fun b!3912245 () Bool)

(declare-fun tp!1190749 () Bool)

(declare-fun tp!1190747 () Bool)

(assert (=> b!3912245 (= e!2418720 (and tp!1190749 tp!1190747))))

(assert (= (and b!3911143 ((_ is ElementMatch!11357) (reg!11686 (regex!6452 (rule!9366 (h!46872 prefixTokens!80)))))) b!3912244))

(assert (= (and b!3911143 ((_ is Concat!18040) (reg!11686 (regex!6452 (rule!9366 (h!46872 prefixTokens!80)))))) b!3912245))

(assert (= (and b!3911143 ((_ is Star!11357) (reg!11686 (regex!6452 (rule!9366 (h!46872 prefixTokens!80)))))) b!3912246))

(assert (= (and b!3911143 ((_ is Union!11357) (reg!11686 (regex!6452 (rule!9366 (h!46872 prefixTokens!80)))))) b!3912247))

(declare-fun b!3912248 () Bool)

(declare-fun e!2418721 () Bool)

(declare-fun tp!1190752 () Bool)

(assert (=> b!3912248 (= e!2418721 (and tp_is_empty!19685 tp!1190752))))

(assert (=> b!3911128 (= tp!1190458 e!2418721)))

(assert (= (and b!3911128 ((_ is Cons!41450) (originalCharacters!7052 (h!46872 (t!322859 prefixTokens!80))))) b!3912248))

(declare-fun b!3912249 () Bool)

(declare-fun e!2418722 () Bool)

(declare-fun tp!1190753 () Bool)

(assert (=> b!3912249 (= e!2418722 (and tp_is_empty!19685 tp!1190753))))

(assert (=> b!3911115 (= tp!1190445 e!2418722)))

(assert (= (and b!3911115 ((_ is Cons!41450) (t!322857 (originalCharacters!7052 (h!46872 prefixTokens!80))))) b!3912249))

(declare-fun b!3912253 () Bool)

(declare-fun b_free!106113 () Bool)

(declare-fun b_next!106817 () Bool)

(assert (=> b!3912253 (= b_free!106113 (not b_next!106817))))

(declare-fun tb!232949 () Bool)

(declare-fun t!323249 () Bool)

(assert (=> (and b!3912253 (= (toValue!8896 (transformation!6452 (rule!9366 (h!46872 (t!322859 (t!322859 prefixTokens!80)))))) (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))) t!323249) tb!232949))

(declare-fun result!282328 () Bool)

(assert (= result!282328 result!281940))

(assert (=> d!1160081 t!323249))

(declare-fun tb!232951 () Bool)

(declare-fun t!323251 () Bool)

(assert (=> (and b!3912253 (= (toValue!8896 (transformation!6452 (rule!9366 (h!46872 (t!322859 (t!322859 prefixTokens!80)))))) (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362378)))))) t!323251) tb!232951))

(declare-fun result!282330 () Bool)

(assert (= result!282330 result!282146))

(assert (=> d!1160485 t!323251))

(declare-fun tb!232953 () Bool)

(declare-fun t!323253 () Bool)

(assert (=> (and b!3912253 (= (toValue!8896 (transformation!6452 (rule!9366 (h!46872 (t!322859 (t!322859 prefixTokens!80)))))) (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))) t!323253) tb!232953))

(declare-fun result!282332 () Bool)

(assert (= result!282332 result!282280))

(assert (=> d!1160677 t!323253))

(assert (=> d!1160681 t!323253))

(declare-fun t!323255 () Bool)

(declare-fun tb!232955 () Bool)

(assert (=> (and b!3912253 (= (toValue!8896 (transformation!6452 (rule!9366 (h!46872 (t!322859 (t!322859 prefixTokens!80)))))) (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362473)))))) t!323255) tb!232955))

(declare-fun result!282334 () Bool)

(assert (= result!282334 result!282158))

(assert (=> d!1160553 t!323255))

(declare-fun tp!1190756 () Bool)

(declare-fun b_and!297711 () Bool)

(assert (=> b!3912253 (= tp!1190756 (and (=> t!323249 result!282328) (=> t!323255 result!282334) (=> t!323251 result!282330) (=> t!323253 result!282332) b_and!297711))))

(declare-fun b_free!106115 () Bool)

(declare-fun b_next!106819 () Bool)

(assert (=> b!3912253 (= b_free!106115 (not b_next!106819))))

(declare-fun tb!232957 () Bool)

(declare-fun t!323257 () Bool)

(assert (=> (and b!3912253 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 (t!322859 prefixTokens!80)))))) (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))) t!323257) tb!232957))

(declare-fun result!282336 () Bool)

(assert (= result!282336 result!281948))

(assert (=> d!1160095 t!323257))

(declare-fun t!323259 () Bool)

(declare-fun tb!232959 () Bool)

(assert (=> (and b!3912253 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 (t!322859 prefixTokens!80)))))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 prefixTokens!80)))))) t!323259) tb!232959))

(declare-fun result!282338 () Bool)

(assert (= result!282338 result!282292))

(assert (=> b!3912179 t!323259))

(declare-fun t!323261 () Bool)

(declare-fun tb!232961 () Bool)

(assert (=> (and b!3912253 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 (t!322859 prefixTokens!80)))))) (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362473)))))) t!323261) tb!232961))

(declare-fun result!282340 () Bool)

(assert (= result!282340 result!282110))

(assert (=> d!1160371 t!323261))

(declare-fun t!323263 () Bool)

(declare-fun tb!232963 () Bool)

(assert (=> (and b!3912253 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 (t!322859 prefixTokens!80)))))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80))))) t!323263) tb!232963))

(declare-fun result!282342 () Bool)

(assert (= result!282342 result!281918))

(assert (=> b!3910659 t!323263))

(declare-fun t!323265 () Bool)

(declare-fun tb!232965 () Bool)

(assert (=> (and b!3912253 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 (t!322859 prefixTokens!80)))))) (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362378)))))) t!323265) tb!232965))

(declare-fun result!282344 () Bool)

(assert (= result!282344 result!282050))

(assert (=> d!1160259 t!323265))

(declare-fun t!323267 () Bool)

(declare-fun tb!232967 () Bool)

(assert (=> (and b!3912253 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 (t!322859 prefixTokens!80)))))) (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))) t!323267) tb!232967))

(declare-fun result!282346 () Bool)

(assert (= result!282346 result!282268))

(assert (=> d!1160677 t!323267))

(declare-fun tb!232969 () Bool)

(declare-fun t!323269 () Bool)

(assert (=> (and b!3912253 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 (t!322859 prefixTokens!80)))))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 suffixTokens!72)))))) t!323269) tb!232969))

(declare-fun result!282348 () Bool)

(assert (= result!282348 result!282122))

(assert (=> b!3911560 t!323269))

(declare-fun t!323271 () Bool)

(declare-fun tb!232971 () Bool)

(assert (=> (and b!3912253 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 (t!322859 prefixTokens!80)))))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72))))) t!323271) tb!232971))

(declare-fun result!282350 () Bool)

(assert (= result!282350 result!281968))

(assert (=> b!3911052 t!323271))

(declare-fun b_and!297713 () Bool)

(declare-fun tp!1190758 () Bool)

(assert (=> b!3912253 (= tp!1190758 (and (=> t!323263 result!282342) (=> t!323269 result!282348) (=> t!323259 result!282338) (=> t!323261 result!282340) (=> t!323257 result!282336) (=> t!323271 result!282350) (=> t!323265 result!282344) (=> t!323267 result!282346) b_and!297713))))

(declare-fun tp!1190754 () Bool)

(declare-fun e!2418725 () Bool)

(declare-fun b!3912250 () Bool)

(declare-fun e!2418723 () Bool)

(assert (=> b!3912250 (= e!2418723 (and (inv!55630 (h!46872 (t!322859 (t!322859 prefixTokens!80)))) e!2418725 tp!1190754))))

(declare-fun e!2418727 () Bool)

(declare-fun tp!1190757 () Bool)

(declare-fun e!2418724 () Bool)

(declare-fun b!3912252 () Bool)

(assert (=> b!3912252 (= e!2418724 (and tp!1190757 (inv!55627 (tag!7312 (rule!9366 (h!46872 (t!322859 (t!322859 prefixTokens!80)))))) (inv!55631 (transformation!6452 (rule!9366 (h!46872 (t!322859 (t!322859 prefixTokens!80)))))) e!2418727))))

(assert (=> b!3911127 (= tp!1190457 e!2418723)))

(assert (=> b!3912253 (= e!2418727 (and tp!1190756 tp!1190758))))

(declare-fun tp!1190755 () Bool)

(declare-fun b!3912251 () Bool)

(assert (=> b!3912251 (= e!2418725 (and (inv!21 (value!204516 (h!46872 (t!322859 (t!322859 prefixTokens!80))))) e!2418724 tp!1190755))))

(assert (= b!3912252 b!3912253))

(assert (= b!3912251 b!3912252))

(assert (= b!3912250 b!3912251))

(assert (= (and b!3911127 ((_ is Cons!41452) (t!322859 (t!322859 prefixTokens!80)))) b!3912250))

(declare-fun m!4475739 () Bool)

(assert (=> b!3912250 m!4475739))

(declare-fun m!4475741 () Bool)

(assert (=> b!3912252 m!4475741))

(declare-fun m!4475743 () Bool)

(assert (=> b!3912252 m!4475743))

(declare-fun m!4475745 () Bool)

(assert (=> b!3912251 m!4475745))

(declare-fun e!2418729 () Bool)

(assert (=> b!3911159 (= tp!1190493 e!2418729)))

(declare-fun b!3912257 () Bool)

(declare-fun tp!1190762 () Bool)

(declare-fun tp!1190760 () Bool)

(assert (=> b!3912257 (= e!2418729 (and tp!1190762 tp!1190760))))

(declare-fun b!3912254 () Bool)

(assert (=> b!3912254 (= e!2418729 tp_is_empty!19685)))

(declare-fun b!3912256 () Bool)

(declare-fun tp!1190763 () Bool)

(assert (=> b!3912256 (= e!2418729 tp!1190763)))

(declare-fun b!3912255 () Bool)

(declare-fun tp!1190761 () Bool)

(declare-fun tp!1190759 () Bool)

(assert (=> b!3912255 (= e!2418729 (and tp!1190761 tp!1190759))))

(assert (= (and b!3911159 ((_ is ElementMatch!11357) (regOne!23227 (regex!6452 (rule!9366 (h!46872 suffixTokens!72)))))) b!3912254))

(assert (= (and b!3911159 ((_ is Concat!18040) (regOne!23227 (regex!6452 (rule!9366 (h!46872 suffixTokens!72)))))) b!3912255))

(assert (= (and b!3911159 ((_ is Star!11357) (regOne!23227 (regex!6452 (rule!9366 (h!46872 suffixTokens!72)))))) b!3912256))

(assert (= (and b!3911159 ((_ is Union!11357) (regOne!23227 (regex!6452 (rule!9366 (h!46872 suffixTokens!72)))))) b!3912257))

(declare-fun e!2418730 () Bool)

(assert (=> b!3911159 (= tp!1190491 e!2418730)))

(declare-fun b!3912261 () Bool)

(declare-fun tp!1190767 () Bool)

(declare-fun tp!1190765 () Bool)

(assert (=> b!3912261 (= e!2418730 (and tp!1190767 tp!1190765))))

(declare-fun b!3912258 () Bool)

(assert (=> b!3912258 (= e!2418730 tp_is_empty!19685)))

(declare-fun b!3912260 () Bool)

(declare-fun tp!1190768 () Bool)

(assert (=> b!3912260 (= e!2418730 tp!1190768)))

(declare-fun b!3912259 () Bool)

(declare-fun tp!1190766 () Bool)

(declare-fun tp!1190764 () Bool)

(assert (=> b!3912259 (= e!2418730 (and tp!1190766 tp!1190764))))

(assert (= (and b!3911159 ((_ is ElementMatch!11357) (regTwo!23227 (regex!6452 (rule!9366 (h!46872 suffixTokens!72)))))) b!3912258))

(assert (= (and b!3911159 ((_ is Concat!18040) (regTwo!23227 (regex!6452 (rule!9366 (h!46872 suffixTokens!72)))))) b!3912259))

(assert (= (and b!3911159 ((_ is Star!11357) (regTwo!23227 (regex!6452 (rule!9366 (h!46872 suffixTokens!72)))))) b!3912260))

(assert (= (and b!3911159 ((_ is Union!11357) (regTwo!23227 (regex!6452 (rule!9366 (h!46872 suffixTokens!72)))))) b!3912261))

(declare-fun e!2418731 () Bool)

(assert (=> b!3911158 (= tp!1190494 e!2418731)))

(declare-fun b!3912265 () Bool)

(declare-fun tp!1190772 () Bool)

(declare-fun tp!1190770 () Bool)

(assert (=> b!3912265 (= e!2418731 (and tp!1190772 tp!1190770))))

(declare-fun b!3912262 () Bool)

(assert (=> b!3912262 (= e!2418731 tp_is_empty!19685)))

(declare-fun b!3912264 () Bool)

(declare-fun tp!1190773 () Bool)

(assert (=> b!3912264 (= e!2418731 tp!1190773)))

(declare-fun b!3912263 () Bool)

(declare-fun tp!1190771 () Bool)

(declare-fun tp!1190769 () Bool)

(assert (=> b!3912263 (= e!2418731 (and tp!1190771 tp!1190769))))

(assert (= (and b!3911158 ((_ is ElementMatch!11357) (reg!11686 (regex!6452 (rule!9366 (h!46872 suffixTokens!72)))))) b!3912262))

(assert (= (and b!3911158 ((_ is Concat!18040) (reg!11686 (regex!6452 (rule!9366 (h!46872 suffixTokens!72)))))) b!3912263))

(assert (= (and b!3911158 ((_ is Star!11357) (reg!11686 (regex!6452 (rule!9366 (h!46872 suffixTokens!72)))))) b!3912264))

(assert (= (and b!3911158 ((_ is Union!11357) (reg!11686 (regex!6452 (rule!9366 (h!46872 suffixTokens!72)))))) b!3912265))

(declare-fun e!2418732 () Bool)

(assert (=> b!3911129 (= tp!1190460 e!2418732)))

(declare-fun b!3912269 () Bool)

(declare-fun tp!1190777 () Bool)

(declare-fun tp!1190775 () Bool)

(assert (=> b!3912269 (= e!2418732 (and tp!1190777 tp!1190775))))

(declare-fun b!3912266 () Bool)

(assert (=> b!3912266 (= e!2418732 tp_is_empty!19685)))

(declare-fun b!3912268 () Bool)

(declare-fun tp!1190778 () Bool)

(assert (=> b!3912268 (= e!2418732 tp!1190778)))

(declare-fun b!3912267 () Bool)

(declare-fun tp!1190776 () Bool)

(declare-fun tp!1190774 () Bool)

(assert (=> b!3912267 (= e!2418732 (and tp!1190776 tp!1190774))))

(assert (= (and b!3911129 ((_ is ElementMatch!11357) (regex!6452 (rule!9366 (h!46872 (t!322859 prefixTokens!80)))))) b!3912266))

(assert (= (and b!3911129 ((_ is Concat!18040) (regex!6452 (rule!9366 (h!46872 (t!322859 prefixTokens!80)))))) b!3912267))

(assert (= (and b!3911129 ((_ is Star!11357) (regex!6452 (rule!9366 (h!46872 (t!322859 prefixTokens!80)))))) b!3912268))

(assert (= (and b!3911129 ((_ is Union!11357) (regex!6452 (rule!9366 (h!46872 (t!322859 prefixTokens!80)))))) b!3912269))

(declare-fun b!3912270 () Bool)

(declare-fun e!2418733 () Bool)

(declare-fun tp!1190779 () Bool)

(assert (=> b!3912270 (= e!2418733 (and tp_is_empty!19685 tp!1190779))))

(assert (=> b!3911116 (= tp!1190446 e!2418733)))

(assert (= (and b!3911116 ((_ is Cons!41450) (t!322857 (originalCharacters!7052 (h!46872 suffixTokens!72))))) b!3912270))

(declare-fun e!2418734 () Bool)

(assert (=> b!3911153 (= tp!1190487 e!2418734)))

(declare-fun b!3912274 () Bool)

(declare-fun tp!1190783 () Bool)

(declare-fun tp!1190781 () Bool)

(assert (=> b!3912274 (= e!2418734 (and tp!1190783 tp!1190781))))

(declare-fun b!3912271 () Bool)

(assert (=> b!3912271 (= e!2418734 tp_is_empty!19685)))

(declare-fun b!3912273 () Bool)

(declare-fun tp!1190784 () Bool)

(assert (=> b!3912273 (= e!2418734 tp!1190784)))

(declare-fun b!3912272 () Bool)

(declare-fun tp!1190782 () Bool)

(declare-fun tp!1190780 () Bool)

(assert (=> b!3912272 (= e!2418734 (and tp!1190782 tp!1190780))))

(assert (= (and b!3911153 ((_ is ElementMatch!11357) (regex!6452 (rule!9366 (h!46872 (t!322859 suffixTokens!72)))))) b!3912271))

(assert (= (and b!3911153 ((_ is Concat!18040) (regex!6452 (rule!9366 (h!46872 (t!322859 suffixTokens!72)))))) b!3912272))

(assert (= (and b!3911153 ((_ is Star!11357) (regex!6452 (rule!9366 (h!46872 (t!322859 suffixTokens!72)))))) b!3912273))

(assert (= (and b!3911153 ((_ is Union!11357) (regex!6452 (rule!9366 (h!46872 (t!322859 suffixTokens!72)))))) b!3912274))

(declare-fun tp!1190792 () Bool)

(declare-fun b!3912283 () Bool)

(declare-fun tp!1190793 () Bool)

(declare-fun e!2418739 () Bool)

(assert (=> b!3912283 (= e!2418739 (and (inv!55632 (left!31731 (c!679729 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))) (value!204516 (_1!23481 (v!39193 lt!1362333))))))) tp!1190792 (inv!55632 (right!32061 (c!679729 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))) (value!204516 (_1!23481 (v!39193 lt!1362333))))))) tp!1190793))))

(declare-fun b!3912285 () Bool)

(declare-fun e!2418740 () Bool)

(declare-fun tp!1190791 () Bool)

(assert (=> b!3912285 (= e!2418740 tp!1190791)))

(declare-fun b!3912284 () Bool)

(declare-fun inv!55641 (IArray!25331) Bool)

(assert (=> b!3912284 (= e!2418739 (and (inv!55641 (xs!15969 (c!679729 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))) (value!204516 (_1!23481 (v!39193 lt!1362333))))))) e!2418740))))

(assert (=> b!3910903 (= tp!1190440 (and (inv!55632 (c!679729 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))) (value!204516 (_1!23481 (v!39193 lt!1362333)))))) e!2418739))))

(assert (= (and b!3910903 ((_ is Node!12663) (c!679729 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))) (value!204516 (_1!23481 (v!39193 lt!1362333))))))) b!3912283))

(assert (= b!3912284 b!3912285))

(assert (= (and b!3910903 ((_ is Leaf!19596) (c!679729 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))) (value!204516 (_1!23481 (v!39193 lt!1362333))))))) b!3912284))

(declare-fun m!4475747 () Bool)

(assert (=> b!3912283 m!4475747))

(declare-fun m!4475749 () Bool)

(assert (=> b!3912283 m!4475749))

(declare-fun m!4475751 () Bool)

(assert (=> b!3912284 m!4475751))

(assert (=> b!3910903 m!4474029))

(declare-fun e!2418741 () Bool)

(assert (=> b!3911146 (= tp!1190479 e!2418741)))

(declare-fun b!3912289 () Bool)

(declare-fun tp!1190797 () Bool)

(declare-fun tp!1190795 () Bool)

(assert (=> b!3912289 (= e!2418741 (and tp!1190797 tp!1190795))))

(declare-fun b!3912286 () Bool)

(assert (=> b!3912286 (= e!2418741 tp_is_empty!19685)))

(declare-fun b!3912288 () Bool)

(declare-fun tp!1190798 () Bool)

(assert (=> b!3912288 (= e!2418741 tp!1190798)))

(declare-fun b!3912287 () Bool)

(declare-fun tp!1190796 () Bool)

(declare-fun tp!1190794 () Bool)

(assert (=> b!3912287 (= e!2418741 (and tp!1190796 tp!1190794))))

(assert (= (and b!3911146 ((_ is ElementMatch!11357) (regOne!23226 (regex!6452 (h!46871 rules!2768))))) b!3912286))

(assert (= (and b!3911146 ((_ is Concat!18040) (regOne!23226 (regex!6452 (h!46871 rules!2768))))) b!3912287))

(assert (= (and b!3911146 ((_ is Star!11357) (regOne!23226 (regex!6452 (h!46871 rules!2768))))) b!3912288))

(assert (= (and b!3911146 ((_ is Union!11357) (regOne!23226 (regex!6452 (h!46871 rules!2768))))) b!3912289))

(declare-fun e!2418742 () Bool)

(assert (=> b!3911146 (= tp!1190477 e!2418742)))

(declare-fun b!3912293 () Bool)

(declare-fun tp!1190802 () Bool)

(declare-fun tp!1190800 () Bool)

(assert (=> b!3912293 (= e!2418742 (and tp!1190802 tp!1190800))))

(declare-fun b!3912290 () Bool)

(assert (=> b!3912290 (= e!2418742 tp_is_empty!19685)))

(declare-fun b!3912292 () Bool)

(declare-fun tp!1190803 () Bool)

(assert (=> b!3912292 (= e!2418742 tp!1190803)))

(declare-fun b!3912291 () Bool)

(declare-fun tp!1190801 () Bool)

(declare-fun tp!1190799 () Bool)

(assert (=> b!3912291 (= e!2418742 (and tp!1190801 tp!1190799))))

(assert (= (and b!3911146 ((_ is ElementMatch!11357) (regTwo!23226 (regex!6452 (h!46871 rules!2768))))) b!3912290))

(assert (= (and b!3911146 ((_ is Concat!18040) (regTwo!23226 (regex!6452 (h!46871 rules!2768))))) b!3912291))

(assert (= (and b!3911146 ((_ is Star!11357) (regTwo!23226 (regex!6452 (h!46871 rules!2768))))) b!3912292))

(assert (= (and b!3911146 ((_ is Union!11357) (regTwo!23226 (regex!6452 (h!46871 rules!2768))))) b!3912293))

(declare-fun b!3912294 () Bool)

(declare-fun e!2418743 () Bool)

(declare-fun tp!1190804 () Bool)

(assert (=> b!3912294 (= e!2418743 (and tp_is_empty!19685 tp!1190804))))

(assert (=> b!3911152 (= tp!1190485 e!2418743)))

(assert (= (and b!3911152 ((_ is Cons!41450) (originalCharacters!7052 (h!46872 (t!322859 suffixTokens!72))))) b!3912294))

(declare-fun b!3912298 () Bool)

(declare-fun b_free!106117 () Bool)

(declare-fun b_next!106821 () Bool)

(assert (=> b!3912298 (= b_free!106117 (not b_next!106821))))

(declare-fun tb!232973 () Bool)

(declare-fun t!323273 () Bool)

(assert (=> (and b!3912298 (= (toValue!8896 (transformation!6452 (rule!9366 (h!46872 (t!322859 (t!322859 suffixTokens!72)))))) (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))) t!323273) tb!232973))

(declare-fun result!282354 () Bool)

(assert (= result!282354 result!281940))

(assert (=> d!1160081 t!323273))

(declare-fun tb!232975 () Bool)

(declare-fun t!323275 () Bool)

(assert (=> (and b!3912298 (= (toValue!8896 (transformation!6452 (rule!9366 (h!46872 (t!322859 (t!322859 suffixTokens!72)))))) (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362378)))))) t!323275) tb!232975))

(declare-fun result!282356 () Bool)

(assert (= result!282356 result!282146))

(assert (=> d!1160485 t!323275))

(declare-fun tb!232977 () Bool)

(declare-fun t!323277 () Bool)

(assert (=> (and b!3912298 (= (toValue!8896 (transformation!6452 (rule!9366 (h!46872 (t!322859 (t!322859 suffixTokens!72)))))) (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))) t!323277) tb!232977))

(declare-fun result!282358 () Bool)

(assert (= result!282358 result!282280))

(assert (=> d!1160677 t!323277))

(assert (=> d!1160681 t!323277))

(declare-fun tb!232979 () Bool)

(declare-fun t!323279 () Bool)

(assert (=> (and b!3912298 (= (toValue!8896 (transformation!6452 (rule!9366 (h!46872 (t!322859 (t!322859 suffixTokens!72)))))) (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362473)))))) t!323279) tb!232979))

(declare-fun result!282360 () Bool)

(assert (= result!282360 result!282158))

(assert (=> d!1160553 t!323279))

(declare-fun b_and!297715 () Bool)

(declare-fun tp!1190807 () Bool)

(assert (=> b!3912298 (= tp!1190807 (and (=> t!323275 result!282356) (=> t!323279 result!282360) (=> t!323277 result!282358) (=> t!323273 result!282354) b_and!297715))))

(declare-fun b_free!106119 () Bool)

(declare-fun b_next!106823 () Bool)

(assert (=> b!3912298 (= b_free!106119 (not b_next!106823))))

(declare-fun tb!232981 () Bool)

(declare-fun t!323281 () Bool)

(assert (=> (and b!3912298 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 (t!322859 suffixTokens!72)))))) (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))) t!323281) tb!232981))

(declare-fun result!282362 () Bool)

(assert (= result!282362 result!281948))

(assert (=> d!1160095 t!323281))

(declare-fun t!323283 () Bool)

(declare-fun tb!232983 () Bool)

(assert (=> (and b!3912298 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 (t!322859 suffixTokens!72)))))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 prefixTokens!80)))))) t!323283) tb!232983))

(declare-fun result!282364 () Bool)

(assert (= result!282364 result!282292))

(assert (=> b!3912179 t!323283))

(declare-fun tb!232985 () Bool)

(declare-fun t!323285 () Bool)

(assert (=> (and b!3912298 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 (t!322859 suffixTokens!72)))))) (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362473)))))) t!323285) tb!232985))

(declare-fun result!282366 () Bool)

(assert (= result!282366 result!282110))

(assert (=> d!1160371 t!323285))

(declare-fun tb!232987 () Bool)

(declare-fun t!323287 () Bool)

(assert (=> (and b!3912298 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 (t!322859 suffixTokens!72)))))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80))))) t!323287) tb!232987))

(declare-fun result!282368 () Bool)

(assert (= result!282368 result!281918))

(assert (=> b!3910659 t!323287))

(declare-fun t!323289 () Bool)

(declare-fun tb!232989 () Bool)

(assert (=> (and b!3912298 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 (t!322859 suffixTokens!72)))))) (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (get!13697 lt!1362378)))))) t!323289) tb!232989))

(declare-fun result!282370 () Bool)

(assert (= result!282370 result!282050))

(assert (=> d!1160259 t!323289))

(declare-fun t!323291 () Bool)

(declare-fun tb!232991 () Bool)

(assert (=> (and b!3912298 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 (t!322859 suffixTokens!72)))))) (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333)))))) t!323291) tb!232991))

(declare-fun result!282372 () Bool)

(assert (= result!282372 result!282268))

(assert (=> d!1160677 t!323291))

(declare-fun t!323293 () Bool)

(declare-fun tb!232993 () Bool)

(assert (=> (and b!3912298 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 (t!322859 suffixTokens!72)))))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 suffixTokens!72)))))) t!323293) tb!232993))

(declare-fun result!282374 () Bool)

(assert (= result!282374 result!282122))

(assert (=> b!3911560 t!323293))

(declare-fun t!323295 () Bool)

(declare-fun tb!232995 () Bool)

(assert (=> (and b!3912298 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 (t!322859 suffixTokens!72)))))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72))))) t!323295) tb!232995))

(declare-fun result!282376 () Bool)

(assert (= result!282376 result!281968))

(assert (=> b!3911052 t!323295))

(declare-fun b_and!297717 () Bool)

(declare-fun tp!1190809 () Bool)

(assert (=> b!3912298 (= tp!1190809 (and (=> t!323291 result!282372) (=> t!323289 result!282370) (=> t!323283 result!282364) (=> t!323287 result!282368) (=> t!323281 result!282362) (=> t!323295 result!282376) (=> t!323293 result!282374) (=> t!323285 result!282366) b_and!297717))))

(declare-fun e!2418746 () Bool)

(declare-fun tp!1190805 () Bool)

(declare-fun e!2418744 () Bool)

(declare-fun b!3912295 () Bool)

(assert (=> b!3912295 (= e!2418744 (and (inv!55630 (h!46872 (t!322859 (t!322859 suffixTokens!72)))) e!2418746 tp!1190805))))

(declare-fun e!2418748 () Bool)

(declare-fun b!3912297 () Bool)

(declare-fun tp!1190808 () Bool)

(declare-fun e!2418745 () Bool)

(assert (=> b!3912297 (= e!2418745 (and tp!1190808 (inv!55627 (tag!7312 (rule!9366 (h!46872 (t!322859 (t!322859 suffixTokens!72)))))) (inv!55631 (transformation!6452 (rule!9366 (h!46872 (t!322859 (t!322859 suffixTokens!72)))))) e!2418748))))

(assert (=> b!3911151 (= tp!1190484 e!2418744)))

(assert (=> b!3912298 (= e!2418748 (and tp!1190807 tp!1190809))))

(declare-fun tp!1190806 () Bool)

(declare-fun b!3912296 () Bool)

(assert (=> b!3912296 (= e!2418746 (and (inv!21 (value!204516 (h!46872 (t!322859 (t!322859 suffixTokens!72))))) e!2418745 tp!1190806))))

(assert (= b!3912297 b!3912298))

(assert (= b!3912296 b!3912297))

(assert (= b!3912295 b!3912296))

(assert (= (and b!3911151 ((_ is Cons!41452) (t!322859 (t!322859 suffixTokens!72)))) b!3912295))

(declare-fun m!4475753 () Bool)

(assert (=> b!3912295 m!4475753))

(declare-fun m!4475755 () Bool)

(assert (=> b!3912297 m!4475755))

(declare-fun m!4475757 () Bool)

(assert (=> b!3912297 m!4475757))

(declare-fun m!4475759 () Bool)

(assert (=> b!3912296 m!4475759))

(declare-fun b!3912299 () Bool)

(declare-fun tp!1190811 () Bool)

(declare-fun e!2418750 () Bool)

(declare-fun tp!1190812 () Bool)

(assert (=> b!3912299 (= e!2418750 (and (inv!55632 (left!31731 (c!679729 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72)))) (value!204516 (h!46872 suffixTokens!72)))))) tp!1190811 (inv!55632 (right!32061 (c!679729 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72)))) (value!204516 (h!46872 suffixTokens!72)))))) tp!1190812))))

(declare-fun b!3912301 () Bool)

(declare-fun e!2418751 () Bool)

(declare-fun tp!1190810 () Bool)

(assert (=> b!3912301 (= e!2418751 tp!1190810)))

(declare-fun b!3912300 () Bool)

(assert (=> b!3912300 (= e!2418750 (and (inv!55641 (xs!15969 (c!679729 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72)))) (value!204516 (h!46872 suffixTokens!72)))))) e!2418751))))

(assert (=> b!3911054 (= tp!1190442 (and (inv!55632 (c!679729 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72)))) (value!204516 (h!46872 suffixTokens!72))))) e!2418750))))

(assert (= (and b!3911054 ((_ is Node!12663) (c!679729 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72)))) (value!204516 (h!46872 suffixTokens!72)))))) b!3912299))

(assert (= b!3912300 b!3912301))

(assert (= (and b!3911054 ((_ is Leaf!19596) (c!679729 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72)))) (value!204516 (h!46872 suffixTokens!72)))))) b!3912300))

(declare-fun m!4475761 () Bool)

(assert (=> b!3912299 m!4475761))

(declare-fun m!4475763 () Bool)

(assert (=> b!3912299 m!4475763))

(declare-fun m!4475765 () Bool)

(assert (=> b!3912300 m!4475765))

(assert (=> b!3911054 m!4474191))

(declare-fun tp!1190814 () Bool)

(declare-fun tp!1190815 () Bool)

(declare-fun e!2418752 () Bool)

(declare-fun b!3912302 () Bool)

(assert (=> b!3912302 (= e!2418752 (and (inv!55632 (left!31731 (c!679729 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80)))) (value!204516 (h!46872 prefixTokens!80)))))) tp!1190814 (inv!55632 (right!32061 (c!679729 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80)))) (value!204516 (h!46872 prefixTokens!80)))))) tp!1190815))))

(declare-fun b!3912304 () Bool)

(declare-fun e!2418753 () Bool)

(declare-fun tp!1190813 () Bool)

(assert (=> b!3912304 (= e!2418753 tp!1190813)))

(declare-fun b!3912303 () Bool)

(assert (=> b!3912303 (= e!2418752 (and (inv!55641 (xs!15969 (c!679729 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80)))) (value!204516 (h!46872 prefixTokens!80)))))) e!2418753))))

(assert (=> b!3910665 (= tp!1190435 (and (inv!55632 (c!679729 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80)))) (value!204516 (h!46872 prefixTokens!80))))) e!2418752))))

(assert (= (and b!3910665 ((_ is Node!12663) (c!679729 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80)))) (value!204516 (h!46872 prefixTokens!80)))))) b!3912302))

(assert (= b!3912303 b!3912304))

(assert (= (and b!3910665 ((_ is Leaf!19596) (c!679729 (dynLambda!17799 (toChars!8755 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80)))) (value!204516 (h!46872 prefixTokens!80)))))) b!3912303))

(declare-fun m!4475767 () Bool)

(assert (=> b!3912302 m!4475767))

(declare-fun m!4475769 () Bool)

(assert (=> b!3912302 m!4475769))

(declare-fun m!4475771 () Bool)

(assert (=> b!3912303 m!4475771))

(assert (=> b!3910665 m!4473765))

(declare-fun e!2418754 () Bool)

(assert (=> b!3911148 (= tp!1190480 e!2418754)))

(declare-fun b!3912308 () Bool)

(declare-fun tp!1190819 () Bool)

(declare-fun tp!1190817 () Bool)

(assert (=> b!3912308 (= e!2418754 (and tp!1190819 tp!1190817))))

(declare-fun b!3912305 () Bool)

(assert (=> b!3912305 (= e!2418754 tp_is_empty!19685)))

(declare-fun b!3912307 () Bool)

(declare-fun tp!1190820 () Bool)

(assert (=> b!3912307 (= e!2418754 tp!1190820)))

(declare-fun b!3912306 () Bool)

(declare-fun tp!1190818 () Bool)

(declare-fun tp!1190816 () Bool)

(assert (=> b!3912306 (= e!2418754 (and tp!1190818 tp!1190816))))

(assert (= (and b!3911148 ((_ is ElementMatch!11357) (regOne!23227 (regex!6452 (h!46871 rules!2768))))) b!3912305))

(assert (= (and b!3911148 ((_ is Concat!18040) (regOne!23227 (regex!6452 (h!46871 rules!2768))))) b!3912306))

(assert (= (and b!3911148 ((_ is Star!11357) (regOne!23227 (regex!6452 (h!46871 rules!2768))))) b!3912307))

(assert (= (and b!3911148 ((_ is Union!11357) (regOne!23227 (regex!6452 (h!46871 rules!2768))))) b!3912308))

(declare-fun e!2418755 () Bool)

(assert (=> b!3911148 (= tp!1190478 e!2418755)))

(declare-fun b!3912312 () Bool)

(declare-fun tp!1190824 () Bool)

(declare-fun tp!1190822 () Bool)

(assert (=> b!3912312 (= e!2418755 (and tp!1190824 tp!1190822))))

(declare-fun b!3912309 () Bool)

(assert (=> b!3912309 (= e!2418755 tp_is_empty!19685)))

(declare-fun b!3912311 () Bool)

(declare-fun tp!1190825 () Bool)

(assert (=> b!3912311 (= e!2418755 tp!1190825)))

(declare-fun b!3912310 () Bool)

(declare-fun tp!1190823 () Bool)

(declare-fun tp!1190821 () Bool)

(assert (=> b!3912310 (= e!2418755 (and tp!1190823 tp!1190821))))

(assert (= (and b!3911148 ((_ is ElementMatch!11357) (regTwo!23227 (regex!6452 (h!46871 rules!2768))))) b!3912309))

(assert (= (and b!3911148 ((_ is Concat!18040) (regTwo!23227 (regex!6452 (h!46871 rules!2768))))) b!3912310))

(assert (= (and b!3911148 ((_ is Star!11357) (regTwo!23227 (regex!6452 (h!46871 rules!2768))))) b!3912311))

(assert (= (and b!3911148 ((_ is Union!11357) (regTwo!23227 (regex!6452 (h!46871 rules!2768))))) b!3912312))

(declare-fun e!2418756 () Bool)

(assert (=> b!3911147 (= tp!1190481 e!2418756)))

(declare-fun b!3912316 () Bool)

(declare-fun tp!1190829 () Bool)

(declare-fun tp!1190827 () Bool)

(assert (=> b!3912316 (= e!2418756 (and tp!1190829 tp!1190827))))

(declare-fun b!3912313 () Bool)

(assert (=> b!3912313 (= e!2418756 tp_is_empty!19685)))

(declare-fun b!3912315 () Bool)

(declare-fun tp!1190830 () Bool)

(assert (=> b!3912315 (= e!2418756 tp!1190830)))

(declare-fun b!3912314 () Bool)

(declare-fun tp!1190828 () Bool)

(declare-fun tp!1190826 () Bool)

(assert (=> b!3912314 (= e!2418756 (and tp!1190828 tp!1190826))))

(assert (= (and b!3911147 ((_ is ElementMatch!11357) (reg!11686 (regex!6452 (h!46871 rules!2768))))) b!3912313))

(assert (= (and b!3911147 ((_ is Concat!18040) (reg!11686 (regex!6452 (h!46871 rules!2768))))) b!3912314))

(assert (= (and b!3911147 ((_ is Star!11357) (reg!11686 (regex!6452 (h!46871 rules!2768))))) b!3912315))

(assert (= (and b!3911147 ((_ is Union!11357) (reg!11686 (regex!6452 (h!46871 rules!2768))))) b!3912316))

(declare-fun b!3912317 () Bool)

(declare-fun e!2418757 () Bool)

(declare-fun tp!1190831 () Bool)

(assert (=> b!3912317 (= e!2418757 (and tp_is_empty!19685 tp!1190831))))

(assert (=> b!3911155 (= tp!1190489 e!2418757)))

(assert (= (and b!3911155 ((_ is Cons!41450) (t!322857 (t!322857 suffixResult!91)))) b!3912317))

(declare-fun b!3912318 () Bool)

(declare-fun e!2418758 () Bool)

(declare-fun tp!1190832 () Bool)

(assert (=> b!3912318 (= e!2418758 (and tp_is_empty!19685 tp!1190832))))

(assert (=> b!3911149 (= tp!1190482 e!2418758)))

(assert (= (and b!3911149 ((_ is Cons!41450) (t!322857 (t!322857 suffix!1176)))) b!3912318))

(declare-fun b_lambda!114543 () Bool)

(assert (= b_lambda!114541 (or (and b!3911130 b_free!106075) (and b!3910607 b_free!106071 (= (toChars!8755 (transformation!6452 (h!46871 rules!2768))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 prefixTokens!80))))))) (and b!3910611 b_free!106063 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80)))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 prefixTokens!80))))))) (and b!3912227 b_free!106111 (= (toChars!8755 (transformation!6452 (h!46871 (t!322858 (t!322858 rules!2768))))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 prefixTokens!80))))))) (and b!3912298 b_free!106119 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 (t!322859 suffixTokens!72)))))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 prefixTokens!80))))))) (and b!3912253 b_free!106115 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 (t!322859 prefixTokens!80)))))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 prefixTokens!80))))))) (and b!3911154 b_free!106079 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 suffixTokens!72))))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 prefixTokens!80))))))) (and b!3910608 b_free!106067 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72)))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 prefixTokens!80))))))) (and b!3911170 b_free!106083 (= (toChars!8755 (transformation!6452 (h!46871 (t!322858 rules!2768)))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 prefixTokens!80))))))) b_lambda!114543)))

(declare-fun b_lambda!114545 () Bool)

(assert (= b_lambda!114481 (or (and b!3911170 b_free!106081 (= (toValue!8896 (transformation!6452 (h!46871 (t!322858 rules!2768)))) (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))))) (and b!3912298 b_free!106117 (= (toValue!8896 (transformation!6452 (rule!9366 (h!46872 (t!322859 (t!322859 suffixTokens!72)))))) (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))))) (and b!3910611 b_free!106061 (= (toValue!8896 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80)))) (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))))) (and b!3911130 b_free!106073 (= (toValue!8896 (transformation!6452 (rule!9366 (h!46872 (t!322859 prefixTokens!80))))) (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))))) (and b!3910607 b_free!106069 (= (toValue!8896 (transformation!6452 (h!46871 rules!2768))) (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))))) (and b!3912253 b_free!106113 (= (toValue!8896 (transformation!6452 (rule!9366 (h!46872 (t!322859 (t!322859 prefixTokens!80)))))) (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))))) (and b!3911154 b_free!106077 (= (toValue!8896 (transformation!6452 (rule!9366 (h!46872 (t!322859 suffixTokens!72))))) (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))))) (and b!3910608 b_free!106065 (= (toValue!8896 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72)))) (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))))) (and b!3912227 b_free!106109 (= (toValue!8896 (transformation!6452 (h!46871 (t!322858 (t!322858 rules!2768))))) (toValue!8896 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))))) b_lambda!114545)))

(declare-fun b_lambda!114547 () Bool)

(assert (= b_lambda!114483 (or (and b!3910611 b_free!106063 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80)))) (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))))) (and b!3912253 b_free!106115 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 (t!322859 prefixTokens!80)))))) (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))))) (and b!3910608 b_free!106067 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72)))) (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))))) (and b!3912298 b_free!106119 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 (t!322859 suffixTokens!72)))))) (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))))) (and b!3911130 b_free!106075 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 prefixTokens!80))))) (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))))) (and b!3911170 b_free!106083 (= (toChars!8755 (transformation!6452 (h!46871 (t!322858 rules!2768)))) (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))))) (and b!3910607 b_free!106071 (= (toChars!8755 (transformation!6452 (h!46871 rules!2768))) (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))))) (and b!3912227 b_free!106111 (= (toChars!8755 (transformation!6452 (h!46871 (t!322858 (t!322858 rules!2768))))) (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))))) (and b!3911154 b_free!106079 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 suffixTokens!72))))) (toChars!8755 (transformation!6452 (rule!9366 (_1!23481 (v!39193 lt!1362333))))))) b_lambda!114547)))

(declare-fun b_lambda!114549 () Bool)

(assert (= b_lambda!114513 (or (and b!3912253 b_free!106115 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 (t!322859 prefixTokens!80)))))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 suffixTokens!72))))))) (and b!3911154 b_free!106079) (and b!3910611 b_free!106063 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 prefixTokens!80)))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 suffixTokens!72))))))) (and b!3912298 b_free!106119 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 (t!322859 suffixTokens!72)))))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 suffixTokens!72))))))) (and b!3912227 b_free!106111 (= (toChars!8755 (transformation!6452 (h!46871 (t!322858 (t!322858 rules!2768))))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 suffixTokens!72))))))) (and b!3911170 b_free!106083 (= (toChars!8755 (transformation!6452 (h!46871 (t!322858 rules!2768)))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 suffixTokens!72))))))) (and b!3910608 b_free!106067 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 suffixTokens!72)))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 suffixTokens!72))))))) (and b!3911130 b_free!106075 (= (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 prefixTokens!80))))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 suffixTokens!72))))))) (and b!3910607 b_free!106071 (= (toChars!8755 (transformation!6452 (h!46871 rules!2768))) (toChars!8755 (transformation!6452 (rule!9366 (h!46872 (t!322859 suffixTokens!72))))))) b_lambda!114549)))

(check-sat (not d!1160605) (not b!3912180) (not b_lambda!114519) (not b!3912239) (not b!3912255) b_and!297687 (not b!3912318) (not d!1160721) (not b!3911955) (not b!3912042) (not b!3911493) (not b!3911760) (not d!1160403) (not d!1160511) (not b!3912202) (not b!3911551) (not b!3911691) (not b!3911781) (not b!3912284) (not b!3912283) (not b_next!106815) (not b!3911785) (not b!3912238) (not b!3911719) (not b!3911558) (not b!3911707) (not b!3912109) (not b!3911446) (not bm!284367) (not b!3911555) (not b!3912229) (not d!1160529) (not b!3911661) (not b_next!106785) (not d!1160713) (not b!3911427) (not b!3912224) (not b!3911559) (not b!3912301) (not b!3912316) (not b!3912159) (not b_lambda!114517) (not b!3911519) (not b!3912153) (not b!3911771) b_and!297707 (not b!3911489) (not b!3911849) (not b!3911560) (not b!3912185) (not b!3912314) (not b!3912223) (not b!3912288) (not b!3912150) (not tb!232901) (not b!3912181) (not d!1160583) (not b!3911590) (not b!3911687) (not b_next!106769) (not b!3912011) (not b!3911523) b_and!297701 (not b!3910665) (not b!3911285) (not b!3912044) (not d!1160491) (not b!3911471) (not b!3912272) (not b!3912200) (not b!3911497) (not b!3911766) (not b!3911612) (not b!3912218) (not b!3912176) (not d!1160677) (not b!3911561) (not b!3911806) (not b!3911592) (not b!3911844) (not b!3911784) (not bm!284292) (not d!1160689) (not b!3911425) (not d!1160497) (not d!1160259) (not b!3911846) (not bm!284319) (not b!3911437) (not b!3911701) (not b!3912269) (not b!3911802) (not b!3911495) (not b_next!106813) (not b!3911809) (not bm!284318) (not b!3912191) (not b!3912192) (not b!3911960) (not b!3912226) (not b!3912293) (not b!3912294) (not b!3912235) (not b!3912211) (not b_next!106765) (not b!3912157) (not b!3912219) (not b!3912162) (not b_lambda!114537) (not b!3912234) (not d!1160353) (not d!1160453) (not d!1160541) (not tb!232745) (not d!1160705) (not d!1160507) (not tb!232913) (not b!3912259) (not d!1160455) (not b!3912182) (not b_next!106783) (not b!3912110) (not d!1160621) (not b!3912274) b_and!297683 b_and!297699 (not bm!284363) (not b_next!106775) (not b!3912256) (not d!1160533) (not d!1160367) (not b!3911722) (not b!3911554) (not b!3911280) (not b!3912105) b_and!297697 (not b!3912267) b_and!297711 (not b!3911861) (not b!3912261) (not d!1160735) (not b!3911959) (not b!3911494) (not bm!284381) (not b!3911429) (not bm!284291) (not b!3911765) (not b!3912208) (not b!3912194) (not b!3911584) (not b_next!106817) (not b!3911591) (not tb!232733) (not d!1160441) (not d!1160683) (not b!3910903) (not b!3912149) (not b!3912237) (not bm!284370) (not b!3912312) (not b!3911562) (not b!3912231) (not b!3912225) (not d!1160371) (not bm!284364) (not b!3911797) (not b_lambda!114545) (not bm!284321) (not bm!284369) (not b!3912247) (not b!3912212) (not b_next!106781) (not b!3911753) b_and!297717 (not b!3911795) (not b!3911461) b_and!297689 (not b!3912155) (not b!3912161) (not b!3912103) (not b!3911556) (not b!3911757) (not d!1160589) (not b!3912178) (not d!1160717) (not b!3912257) (not d!1160333) (not b!3911441) (not tb!232781) (not b!3911520) (not b!3911281) (not d!1160585) (not d!1160663) (not b!3912285) (not b!3912095) (not b!3912315) (not b!3912304) (not b!3912264) (not b!3911440) (not b!3912214) (not tb!232889) (not b!3912209) (not b!3912195) (not b!3911777) (not b!3911522) (not d!1160749) (not d!1160701) (not bm!284383) (not bm!284365) (not b!3912251) (not d!1160265) (not d!1160439) (not b!3912299) (not b!3911865) (not d!1160629) (not b!3912196) (not b!3911790) (not b_next!106767) (not b_lambda!114549) (not b_next!106819) (not b!3911521) (not b!3911621) (not b!3911855) (not b!3911054) (not b!3911779) (not b!3911954) b_and!297715 (not b!3912241) (not b!3911283) (not b_next!106787) (not b!3911725) (not b!3912204) (not b_next!106779) (not b_next!106823) (not bm!284382) (not d!1160537) (not b!3912248) (not b!3912297) (not b!3911731) (not b!3912222) (not b!3912273) (not b!3912246) (not b!3911693) (not b!3912310) (not b!3911860) (not b!3912249) b_and!297709 (not b!3911727) (not b!3911482) b_and!297705 (not b!3912242) (not b!3912308) (not b!3911857) (not d!1160675) (not b!3911442) (not b!3911793) (not b!3911729) (not b!3911866) (not b!3911496) (not b!3911694) (not d!1160343) (not b_next!106777) (not b!3912307) (not b!3912245) (not b_lambda!114491) (not b!3911724) b_and!297691 (not b!3911792) (not b!3911582) (not b_lambda!114511) (not d!1160601) (not b!3912265) (not d!1160709) (not b_lambda!114501) (not b!3911518) (not b!3912311) (not b!3912215) (not d!1160625) (not tb!232769) (not b!3912303) (not b_lambda!114493) (not b!3911841) (not d!1160255) (not b!3912306) (not bm!284298) (not d!1160521) (not b!3911805) (not b_next!106773) (not d!1160415) (not b!3911755) (not b!3911976) (not b!3912252) (not d!1160569) (not b!3912295) (not b_lambda!114543) (not d!1160263) (not b!3912187) (not d!1160559) (not b!3911469) (not b!3912020) (not d!1160515) (not b!3911557) (not d!1160737) (not b!3912268) (not b!3911617) (not b!3912263) (not b_lambda!114539) (not d!1160751) (not d!1160417) (not b!3912175) (not b!3911445) (not b!3912302) (not b!3912243) (not bm!284366) (not d!1160687) (not b!3912043) (not b_next!106771) (not d!1160715) (not b!3911751) (not b!3911274) (not d!1160711) (not d!1160593) (not d!1160397) (not b!3911788) (not b!3911799) (not b!3911813) (not bm!284362) (not b!3911492) (not d!1160427) (not b!3912287) (not b!3912300) (not b!3912114) (not b!3912193) (not d!1160631) (not b_lambda!114527) (not b!3912108) (not b!3911470) (not b!3911703) (not b!3912260) (not b!3911815) (not tb!232673) (not b!3912289) (not b!3912270) (not b!3912317) (not b!3911517) (not d!1160257) (not d!1160727) (not b!3912230) (not b!3911553) (not b!3911801) (not b!3911782) tp_is_empty!19685 (not b!3912164) (not b!3911287) (not b!3911854) (not b!3911278) (not b!3912216) (not b!3911761) (not b!3911689) (not d!1160457) (not d!1160387) (not b!3912296) b_and!297695 (not b!3912188) (not b!3911811) (not d!1160377) (not b!3912250) (not b!3912151) (not b!3911550) (not d!1160685) (not bm!284368) (not bm!284311) (not b!3912179) (not b!3911288) (not b!3912233) (not b_lambda!114547) (not b!3912190) (not d!1160603) (not b!3912113) (not b!3911847) b_and!297713 (not b!3912292) (not b!3911491) (not d!1160411) (not b!3911524) (not b!3912220) (not b!3911762) b_and!297703 (not b!3912291) (not b_next!106821) (not b!3912205) (not b!3912198) (not b!3911276) b_and!297693 b_and!297685 (not b!3911611) (not b!3912141) (not b!3911862))
(check-sat b_and!297687 (not b_next!106815) (not b_next!106785) b_and!297707 (not b_next!106813) (not b_next!106765) b_and!297711 (not b_next!106817) (not b_next!106777) b_and!297691 (not b_next!106773) (not b_next!106771) b_and!297695 b_and!297713 (not b_next!106769) b_and!297701 (not b_next!106783) b_and!297683 b_and!297699 (not b_next!106775) b_and!297697 b_and!297689 (not b_next!106781) b_and!297717 (not b_next!106767) b_and!297715 (not b_next!106819) (not b_next!106787) (not b_next!106779) (not b_next!106823) b_and!297705 b_and!297709 b_and!297693 b_and!297685 b_and!297703 (not b_next!106821))
