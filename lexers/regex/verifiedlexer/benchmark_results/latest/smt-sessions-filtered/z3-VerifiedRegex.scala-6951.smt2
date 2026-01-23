; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!368064 () Bool)

(assert start!368064)

(declare-fun b!3923984 () Bool)

(declare-fun b_free!106853 () Bool)

(declare-fun b_next!107557 () Bool)

(assert (=> b!3923984 (= b_free!106853 (not b_next!107557))))

(declare-fun tp!1194543 () Bool)

(declare-fun b_and!299207 () Bool)

(assert (=> b!3923984 (= tp!1194543 b_and!299207)))

(declare-fun b_free!106855 () Bool)

(declare-fun b_next!107559 () Bool)

(assert (=> b!3923984 (= b_free!106855 (not b_next!107559))))

(declare-fun tp!1194539 () Bool)

(declare-fun b_and!299209 () Bool)

(assert (=> b!3923984 (= tp!1194539 b_and!299209)))

(declare-fun b!3923990 () Bool)

(declare-fun b_free!106857 () Bool)

(declare-fun b_next!107561 () Bool)

(assert (=> b!3923990 (= b_free!106857 (not b_next!107561))))

(declare-fun tp!1194546 () Bool)

(declare-fun b_and!299211 () Bool)

(assert (=> b!3923990 (= tp!1194546 b_and!299211)))

(declare-fun b_free!106859 () Bool)

(declare-fun b_next!107563 () Bool)

(assert (=> b!3923990 (= b_free!106859 (not b_next!107563))))

(declare-fun tp!1194548 () Bool)

(declare-fun b_and!299213 () Bool)

(assert (=> b!3923990 (= tp!1194548 b_and!299213)))

(declare-fun b!3923986 () Bool)

(declare-fun b_free!106861 () Bool)

(declare-fun b_next!107565 () Bool)

(assert (=> b!3923986 (= b_free!106861 (not b_next!107565))))

(declare-fun tp!1194545 () Bool)

(declare-fun b_and!299215 () Bool)

(assert (=> b!3923986 (= tp!1194545 b_and!299215)))

(declare-fun b_free!106863 () Bool)

(declare-fun b_next!107567 () Bool)

(assert (=> b!3923986 (= b_free!106863 (not b_next!107567))))

(declare-fun tp!1194542 () Bool)

(declare-fun b_and!299217 () Bool)

(assert (=> b!3923986 (= tp!1194542 b_and!299217)))

(declare-fun b!3923979 () Bool)

(declare-fun e!2426771 () Bool)

(declare-datatypes ((List!41749 0))(
  ( (Nil!41625) (Cons!41625 (h!47045 (_ BitVec 16)) (t!324884 List!41749)) )
))
(declare-datatypes ((TokenValue!6720 0))(
  ( (FloatLiteralValue!13440 (text!47485 List!41749)) (TokenValueExt!6719 (__x!25657 Int)) (Broken!33600 (value!205573 List!41749)) (Object!6843) (End!6720) (Def!6720) (Underscore!6720) (Match!6720) (Else!6720) (Error!6720) (Case!6720) (If!6720) (Extends!6720) (Abstract!6720) (Class!6720) (Val!6720) (DelimiterValue!13440 (del!6780 List!41749)) (KeywordValue!6726 (value!205574 List!41749)) (CommentValue!13440 (value!205575 List!41749)) (WhitespaceValue!13440 (value!205576 List!41749)) (IndentationValue!6720 (value!205577 List!41749)) (String!47317) (Int32!6720) (Broken!33601 (value!205578 List!41749)) (Boolean!6721) (Unit!59859) (OperatorValue!6723 (op!6780 List!41749)) (IdentifierValue!13440 (value!205579 List!41749)) (IdentifierValue!13441 (value!205580 List!41749)) (WhitespaceValue!13441 (value!205581 List!41749)) (True!13440) (False!13440) (Broken!33602 (value!205582 List!41749)) (Broken!33603 (value!205583 List!41749)) (True!13441) (RightBrace!6720) (RightBracket!6720) (Colon!6720) (Null!6720) (Comma!6720) (LeftBracket!6720) (False!13441) (LeftBrace!6720) (ImaginaryLiteralValue!6720 (text!47486 List!41749)) (StringLiteralValue!20160 (value!205584 List!41749)) (EOFValue!6720 (value!205585 List!41749)) (IdentValue!6720 (value!205586 List!41749)) (DelimiterValue!13441 (value!205587 List!41749)) (DedentValue!6720 (value!205588 List!41749)) (NewLineValue!6720 (value!205589 List!41749)) (IntegerValue!20160 (value!205590 (_ BitVec 32)) (text!47487 List!41749)) (IntegerValue!20161 (value!205591 Int) (text!47488 List!41749)) (Times!6720) (Or!6720) (Equal!6720) (Minus!6720) (Broken!33604 (value!205592 List!41749)) (And!6720) (Div!6720) (LessEqual!6720) (Mod!6720) (Concat!18115) (Not!6720) (Plus!6720) (SpaceValue!6720 (value!205593 List!41749)) (IntegerValue!20162 (value!205594 Int) (text!47489 List!41749)) (StringLiteralValue!20161 (text!47490 List!41749)) (FloatLiteralValue!13441 (text!47491 List!41749)) (BytesLiteralValue!6720 (value!205595 List!41749)) (CommentValue!13441 (value!205596 List!41749)) (StringLiteralValue!20162 (value!205597 List!41749)) (ErrorTokenValue!6720 (msg!6781 List!41749)) )
))
(declare-datatypes ((C!22976 0))(
  ( (C!22977 (val!13582 Int)) )
))
(declare-datatypes ((Regex!11395 0))(
  ( (ElementMatch!11395 (c!681872 C!22976)) (Concat!18116 (regOne!23302 Regex!11395) (regTwo!23302 Regex!11395)) (EmptyExpr!11395) (Star!11395 (reg!11724 Regex!11395)) (EmptyLang!11395) (Union!11395 (regOne!23303 Regex!11395) (regTwo!23303 Regex!11395)) )
))
(declare-datatypes ((String!47318 0))(
  ( (String!47319 (value!205598 String)) )
))
(declare-datatypes ((List!41750 0))(
  ( (Nil!41626) (Cons!41626 (h!47046 C!22976) (t!324885 List!41750)) )
))
(declare-datatypes ((IArray!25407 0))(
  ( (IArray!25408 (innerList!12761 List!41750)) )
))
(declare-datatypes ((Conc!12701 0))(
  ( (Node!12701 (left!31796 Conc!12701) (right!32126 Conc!12701) (csize!25632 Int) (cheight!12912 Int)) (Leaf!19653 (xs!16007 IArray!25407) (csize!25633 Int)) (Empty!12701) )
))
(declare-datatypes ((BalanceConc!24996 0))(
  ( (BalanceConc!24997 (c!681873 Conc!12701)) )
))
(declare-datatypes ((TokenValueInjection!12868 0))(
  ( (TokenValueInjection!12869 (toValue!8942 Int) (toChars!8801 Int)) )
))
(declare-datatypes ((Rule!12780 0))(
  ( (Rule!12781 (regex!6490 Regex!11395) (tag!7350 String!47318) (isSeparator!6490 Bool) (transformation!6490 TokenValueInjection!12868)) )
))
(declare-datatypes ((Token!12118 0))(
  ( (Token!12119 (value!205599 TokenValue!6720) (rule!9428 Rule!12780) (size!31245 Int) (originalCharacters!7090 List!41750)) )
))
(declare-datatypes ((List!41751 0))(
  ( (Nil!41627) (Cons!41627 (h!47047 Token!12118) (t!324886 List!41751)) )
))
(declare-fun prefixTokens!80 () List!41751)

(declare-fun e!2426782 () Bool)

(declare-fun tp!1194550 () Bool)

(declare-fun inv!55823 (Token!12118) Bool)

(assert (=> b!3923979 (= e!2426771 (and (inv!55823 (h!47047 prefixTokens!80)) e!2426782 tp!1194550))))

(declare-fun e!2426773 () Bool)

(declare-fun e!2426769 () Bool)

(declare-fun b!3923980 () Bool)

(declare-fun tp!1194538 () Bool)

(declare-fun suffixTokens!72 () List!41751)

(assert (=> b!3923980 (= e!2426773 (and (inv!55823 (h!47047 suffixTokens!72)) e!2426769 tp!1194538))))

(declare-fun b!3923981 () Bool)

(declare-fun e!2426787 () Bool)

(assert (=> b!3923981 (= e!2426787 false)))

(declare-datatypes ((List!41752 0))(
  ( (Nil!41628) (Cons!41628 (h!47048 Rule!12780) (t!324887 List!41752)) )
))
(declare-fun rules!2768 () List!41752)

(declare-fun tp!1194541 () Bool)

(declare-fun e!2426786 () Bool)

(declare-fun b!3923982 () Bool)

(declare-fun e!2426783 () Bool)

(declare-fun inv!55820 (String!47318) Bool)

(declare-fun inv!55824 (TokenValueInjection!12868) Bool)

(assert (=> b!3923982 (= e!2426786 (and tp!1194541 (inv!55820 (tag!7350 (h!47048 rules!2768))) (inv!55824 (transformation!6490 (h!47048 rules!2768))) e!2426783))))

(declare-fun tp!1194544 () Bool)

(declare-fun b!3923983 () Bool)

(declare-fun e!2426796 () Bool)

(declare-fun e!2426795 () Bool)

(assert (=> b!3923983 (= e!2426796 (and tp!1194544 (inv!55820 (tag!7350 (rule!9428 (h!47047 prefixTokens!80)))) (inv!55824 (transformation!6490 (rule!9428 (h!47047 prefixTokens!80)))) e!2426795))))

(assert (=> b!3923984 (= e!2426783 (and tp!1194543 tp!1194539))))

(declare-fun b!3923985 () Bool)

(declare-fun e!2426788 () Bool)

(declare-fun tp!1194551 () Bool)

(assert (=> b!3923985 (= e!2426788 (and e!2426786 tp!1194551))))

(declare-fun e!2426776 () Bool)

(assert (=> b!3923986 (= e!2426776 (and tp!1194545 tp!1194542))))

(declare-fun b!3923987 () Bool)

(declare-fun c!681869 () Bool)

(declare-fun lt!1368385 () List!41751)

(declare-fun isEmpty!24794 (List!41751) Bool)

(assert (=> b!3923987 (= c!681869 (isEmpty!24794 lt!1368385))))

(declare-fun tail!6035 (List!41751) List!41751)

(assert (=> b!3923987 (= lt!1368385 (tail!6035 prefixTokens!80))))

(declare-datatypes ((Unit!59860 0))(
  ( (Unit!59861) )
))
(declare-fun e!2426785 () Unit!59860)

(declare-fun e!2426797 () Unit!59860)

(assert (=> b!3923987 (= e!2426785 e!2426797)))

(declare-fun b!3923988 () Bool)

(declare-fun Unit!59862 () Unit!59860)

(assert (=> b!3923988 (= e!2426797 Unit!59862)))

(declare-fun suffixResult!91 () List!41750)

(declare-datatypes ((LexerInterface!6079 0))(
  ( (LexerInterfaceExt!6076 (__x!25658 Int)) (Lexer!6077) )
))
(declare-fun thiss!20629 () LexerInterface!6079)

(declare-fun suffix!1176 () List!41750)

(declare-datatypes ((tuple2!40894 0))(
  ( (tuple2!40895 (_1!23581 Token!12118) (_2!23581 List!41750)) )
))
(declare-fun lt!1368398 () tuple2!40894)

(declare-fun lt!1368379 () Unit!59860)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!90 (LexerInterface!6079 List!41752 List!41750 List!41750 List!41751 List!41750 List!41751) Unit!59860)

(assert (=> b!3923988 (= lt!1368379 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!90 thiss!20629 rules!2768 suffix!1176 (_2!23581 lt!1368398) suffixTokens!72 suffixResult!91 lt!1368385))))

(declare-fun res!1587385 () Bool)

(declare-datatypes ((tuple2!40896 0))(
  ( (tuple2!40897 (_1!23582 List!41751) (_2!23582 List!41750)) )
))
(declare-fun call!284674 () tuple2!40896)

(declare-fun ++!10737 (List!41751 List!41751) List!41751)

(assert (=> b!3923988 (= res!1587385 (not (= call!284674 (tuple2!40897 (++!10737 lt!1368385 suffixTokens!72) suffixResult!91))))))

(declare-fun e!2426780 () Bool)

(assert (=> b!3923988 (=> (not res!1587385) (not e!2426780))))

(assert (=> b!3923988 e!2426780))

(declare-fun b!3923989 () Bool)

(declare-fun res!1587382 () Bool)

(declare-fun e!2426794 () Bool)

(assert (=> b!3923989 (=> (not res!1587382) (not e!2426794))))

(declare-fun isEmpty!24795 (List!41752) Bool)

(assert (=> b!3923989 (= res!1587382 (not (isEmpty!24795 rules!2768)))))

(assert (=> b!3923990 (= e!2426795 (and tp!1194546 tp!1194548))))

(declare-fun b!3923991 () Bool)

(assert (=> b!3923991 (= e!2426780 false)))

(declare-fun b!3923992 () Bool)

(declare-fun res!1587380 () Bool)

(assert (=> b!3923992 (=> (not res!1587380) (not e!2426794))))

(assert (=> b!3923992 (= res!1587380 (not (isEmpty!24794 prefixTokens!80)))))

(declare-fun b!3923993 () Bool)

(declare-fun e!2426792 () Unit!59860)

(declare-fun Unit!59863 () Unit!59860)

(assert (=> b!3923993 (= e!2426792 Unit!59863)))

(declare-fun b!3923994 () Bool)

(declare-fun res!1587384 () Bool)

(assert (=> b!3923994 (=> (not res!1587384) (not e!2426794))))

(declare-fun prefix!426 () List!41750)

(declare-fun isEmpty!24796 (List!41750) Bool)

(assert (=> b!3923994 (= res!1587384 (not (isEmpty!24796 prefix!426)))))

(declare-fun b!3923995 () Bool)

(declare-fun e!2426777 () Bool)

(declare-fun e!2426784 () Bool)

(assert (=> b!3923995 (= e!2426777 (not e!2426784))))

(declare-fun res!1587389 () Bool)

(assert (=> b!3923995 (=> res!1587389 e!2426784)))

(declare-fun lt!1368371 () List!41750)

(declare-fun lt!1368400 () List!41750)

(assert (=> b!3923995 (= res!1587389 (not (= lt!1368371 lt!1368400)))))

(declare-datatypes ((Option!8910 0))(
  ( (None!8909) (Some!8909 (v!39235 tuple2!40894)) )
))
(declare-fun lt!1368401 () Option!8910)

(declare-fun lt!1368389 () tuple2!40896)

(declare-fun lexList!1847 (LexerInterface!6079 List!41752 List!41750) tuple2!40896)

(assert (=> b!3923995 (= lt!1368389 (lexList!1847 thiss!20629 rules!2768 (_2!23581 (v!39235 lt!1368401))))))

(declare-fun lt!1368375 () TokenValue!6720)

(declare-fun lt!1368399 () List!41750)

(declare-fun lt!1368372 () Int)

(declare-fun lt!1368382 () List!41750)

(assert (=> b!3923995 (and (= (size!31245 (_1!23581 (v!39235 lt!1368401))) lt!1368372) (= (originalCharacters!7090 (_1!23581 (v!39235 lt!1368401))) lt!1368399) (= (v!39235 lt!1368401) (tuple2!40895 (Token!12119 lt!1368375 (rule!9428 (_1!23581 (v!39235 lt!1368401))) lt!1368372 lt!1368399) lt!1368382)))))

(declare-fun size!31246 (List!41750) Int)

(assert (=> b!3923995 (= lt!1368372 (size!31246 lt!1368399))))

(declare-fun e!2426791 () Bool)

(assert (=> b!3923995 e!2426791))

(declare-fun res!1587391 () Bool)

(assert (=> b!3923995 (=> (not res!1587391) (not e!2426791))))

(assert (=> b!3923995 (= res!1587391 (= (value!205599 (_1!23581 (v!39235 lt!1368401))) lt!1368375))))

(declare-fun apply!9729 (TokenValueInjection!12868 BalanceConc!24996) TokenValue!6720)

(declare-fun seqFromList!4757 (List!41750) BalanceConc!24996)

(assert (=> b!3923995 (= lt!1368375 (apply!9729 (transformation!6490 (rule!9428 (_1!23581 (v!39235 lt!1368401)))) (seqFromList!4757 lt!1368399)))))

(assert (=> b!3923995 (= (_2!23581 (v!39235 lt!1368401)) lt!1368382)))

(declare-fun lt!1368381 () Unit!59860)

(declare-fun lemmaSamePrefixThenSameSuffix!1806 (List!41750 List!41750 List!41750 List!41750 List!41750) Unit!59860)

(assert (=> b!3923995 (= lt!1368381 (lemmaSamePrefixThenSameSuffix!1806 lt!1368399 (_2!23581 (v!39235 lt!1368401)) lt!1368399 lt!1368382 lt!1368400))))

(declare-fun getSuffix!2040 (List!41750 List!41750) List!41750)

(assert (=> b!3923995 (= lt!1368382 (getSuffix!2040 lt!1368400 lt!1368399))))

(declare-fun isPrefix!3585 (List!41750 List!41750) Bool)

(assert (=> b!3923995 (isPrefix!3585 lt!1368399 lt!1368371)))

(declare-fun ++!10738 (List!41750 List!41750) List!41750)

(assert (=> b!3923995 (= lt!1368371 (++!10738 lt!1368399 (_2!23581 (v!39235 lt!1368401))))))

(declare-fun lt!1368374 () Unit!59860)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2448 (List!41750 List!41750) Unit!59860)

(assert (=> b!3923995 (= lt!1368374 (lemmaConcatTwoListThenFirstIsPrefix!2448 lt!1368399 (_2!23581 (v!39235 lt!1368401))))))

(declare-fun list!15473 (BalanceConc!24996) List!41750)

(declare-fun charsOf!4314 (Token!12118) BalanceConc!24996)

(assert (=> b!3923995 (= lt!1368399 (list!15473 (charsOf!4314 (_1!23581 (v!39235 lt!1368401)))))))

(declare-fun ruleValid!2438 (LexerInterface!6079 Rule!12780) Bool)

(assert (=> b!3923995 (ruleValid!2438 thiss!20629 (rule!9428 (_1!23581 (v!39235 lt!1368401))))))

(declare-fun lt!1368369 () Unit!59860)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1518 (LexerInterface!6079 Rule!12780 List!41752) Unit!59860)

(assert (=> b!3923995 (= lt!1368369 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1518 thiss!20629 (rule!9428 (_1!23581 (v!39235 lt!1368401))) rules!2768))))

(declare-fun lt!1368386 () Unit!59860)

(declare-fun lemmaCharactersSize!1147 (Token!12118) Unit!59860)

(assert (=> b!3923995 (= lt!1368386 (lemmaCharactersSize!1147 (_1!23581 (v!39235 lt!1368401))))))

(declare-fun b!3923996 () Bool)

(declare-fun e!2426772 () Bool)

(declare-fun tp_is_empty!19761 () Bool)

(declare-fun tp!1194547 () Bool)

(assert (=> b!3923996 (= e!2426772 (and tp_is_empty!19761 tp!1194547))))

(declare-fun res!1587387 () Bool)

(assert (=> start!368064 (=> (not res!1587387) (not e!2426794))))

(get-info :version)

(assert (=> start!368064 (= res!1587387 ((_ is Lexer!6077) thiss!20629))))

(assert (=> start!368064 e!2426794))

(declare-fun e!2426766 () Bool)

(assert (=> start!368064 e!2426766))

(assert (=> start!368064 true))

(declare-fun e!2426793 () Bool)

(assert (=> start!368064 e!2426793))

(assert (=> start!368064 e!2426788))

(assert (=> start!368064 e!2426771))

(assert (=> start!368064 e!2426773))

(assert (=> start!368064 e!2426772))

(declare-fun b!3923997 () Bool)

(declare-fun e!2426789 () Bool)

(declare-fun e!2426798 () Bool)

(assert (=> b!3923997 (= e!2426789 e!2426798)))

(declare-fun res!1587381 () Bool)

(assert (=> b!3923997 (=> res!1587381 e!2426798)))

(assert (=> b!3923997 (= res!1587381 (>= lt!1368372 (size!31246 prefix!426)))))

(assert (=> b!3923997 (isPrefix!3585 lt!1368399 prefix!426)))

(declare-fun lt!1368373 () Unit!59860)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!263 (List!41750 List!41750 List!41750) Unit!59860)

(assert (=> b!3923997 (= lt!1368373 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!263 prefix!426 lt!1368399 lt!1368400))))

(assert (=> b!3923997 (isPrefix!3585 prefix!426 lt!1368400)))

(declare-fun lt!1368392 () Unit!59860)

(assert (=> b!3923997 (= lt!1368392 (lemmaConcatTwoListThenFirstIsPrefix!2448 prefix!426 suffix!1176))))

(declare-fun lt!1368395 () List!41750)

(declare-fun e!2426767 () Bool)

(declare-fun b!3923998 () Bool)

(assert (=> b!3923998 (= e!2426767 (= (++!10738 lt!1368395 suffix!1176) lt!1368400))))

(declare-fun b!3923999 () Bool)

(declare-fun e!2426770 () Unit!59860)

(declare-fun Unit!59864 () Unit!59860)

(assert (=> b!3923999 (= e!2426770 Unit!59864)))

(declare-fun lt!1368393 () Int)

(assert (=> b!3923999 (= lt!1368393 (size!31246 lt!1368400))))

(declare-fun lt!1368394 () Unit!59860)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1321 (LexerInterface!6079 List!41752 List!41750 List!41750 List!41750 Rule!12780) Unit!59860)

(assert (=> b!3923999 (= lt!1368394 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1321 thiss!20629 rules!2768 lt!1368399 lt!1368400 (_2!23581 (v!39235 lt!1368401)) (rule!9428 (_1!23581 (v!39235 lt!1368401)))))))

(declare-fun maxPrefixOneRule!2453 (LexerInterface!6079 Rule!12780 List!41750) Option!8910)

(assert (=> b!3923999 (= (maxPrefixOneRule!2453 thiss!20629 (rule!9428 (_1!23581 (v!39235 lt!1368401))) lt!1368400) (Some!8909 (tuple2!40895 (Token!12119 lt!1368375 (rule!9428 (_1!23581 (v!39235 lt!1368401))) lt!1368372 lt!1368399) (_2!23581 (v!39235 lt!1368401)))))))

(declare-fun get!13755 (Option!8910) tuple2!40894)

(assert (=> b!3923999 (= lt!1368398 (get!13755 lt!1368401))))

(declare-fun c!681871 () Bool)

(declare-fun lt!1368397 () Int)

(assert (=> b!3923999 (= c!681871 (< (size!31246 (_2!23581 lt!1368398)) lt!1368397))))

(declare-fun lt!1368376 () Unit!59860)

(assert (=> b!3923999 (= lt!1368376 e!2426785)))

(assert (=> b!3923999 false))

(declare-fun b!3924000 () Bool)

(declare-fun res!1587383 () Bool)

(assert (=> b!3924000 (=> res!1587383 e!2426789)))

(declare-fun head!8309 (List!41751) Token!12118)

(assert (=> b!3924000 (= res!1587383 (not (= (head!8309 prefixTokens!80) (_1!23581 (v!39235 lt!1368401)))))))

(declare-fun b!3924001 () Bool)

(declare-fun tp!1194552 () Bool)

(assert (=> b!3924001 (= e!2426793 (and tp_is_empty!19761 tp!1194552))))

(declare-fun b!3924002 () Bool)

(assert (=> b!3924002 (= e!2426798 e!2426767)))

(declare-fun res!1587375 () Bool)

(assert (=> b!3924002 (=> res!1587375 e!2426767)))

(assert (=> b!3924002 (= res!1587375 (not (= lt!1368395 prefix!426)))))

(assert (=> b!3924002 (= lt!1368395 (++!10738 lt!1368399 (getSuffix!2040 prefix!426 lt!1368399)))))

(declare-fun b!3924003 () Bool)

(declare-fun Unit!59865 () Unit!59860)

(assert (=> b!3924003 (= e!2426770 Unit!59865)))

(declare-fun bm!284669 () Bool)

(assert (=> bm!284669 (= call!284674 (lexList!1847 thiss!20629 rules!2768 (_2!23581 lt!1368398)))))

(declare-fun b!3924004 () Bool)

(assert (=> b!3924004 (= e!2426791 (= (size!31245 (_1!23581 (v!39235 lt!1368401))) (size!31246 (originalCharacters!7090 (_1!23581 (v!39235 lt!1368401))))))))

(declare-fun b!3924005 () Bool)

(declare-fun res!1587379 () Bool)

(assert (=> b!3924005 (=> res!1587379 e!2426784)))

(assert (=> b!3924005 (= res!1587379 (or (not (= lt!1368389 (tuple2!40897 (_1!23582 lt!1368389) (_2!23582 lt!1368389)))) (= (_2!23581 (v!39235 lt!1368401)) suffix!1176)))))

(declare-fun b!3924006 () Bool)

(declare-fun Unit!59866 () Unit!59860)

(assert (=> b!3924006 (= e!2426785 Unit!59866)))

(declare-fun b!3924007 () Bool)

(declare-fun tp!1194549 () Bool)

(assert (=> b!3924007 (= e!2426766 (and tp_is_empty!19761 tp!1194549))))

(declare-fun b!3924008 () Bool)

(assert (=> b!3924008 (= e!2426784 e!2426789)))

(declare-fun res!1587374 () Bool)

(assert (=> b!3924008 (=> res!1587374 e!2426789)))

(declare-fun lt!1368383 () Int)

(assert (=> b!3924008 (= res!1587374 (<= lt!1368383 lt!1368397))))

(declare-fun lt!1368384 () Unit!59860)

(assert (=> b!3924008 (= lt!1368384 e!2426792)))

(declare-fun c!681870 () Bool)

(assert (=> b!3924008 (= c!681870 (= lt!1368383 lt!1368397))))

(declare-fun lt!1368370 () Unit!59860)

(assert (=> b!3924008 (= lt!1368370 e!2426770)))

(declare-fun c!681868 () Bool)

(assert (=> b!3924008 (= c!681868 (< lt!1368383 lt!1368397))))

(assert (=> b!3924008 (= lt!1368397 (size!31246 suffix!1176))))

(assert (=> b!3924008 (= lt!1368383 (size!31246 (_2!23581 (v!39235 lt!1368401))))))

(declare-fun b!3924009 () Bool)

(declare-fun Unit!59867 () Unit!59860)

(assert (=> b!3924009 (= e!2426797 Unit!59867)))

(declare-fun lt!1368388 () Unit!59860)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!538 (List!41750 List!41750 List!41750 List!41750) Unit!59860)

(assert (=> b!3924009 (= lt!1368388 (lemmaConcatSameAndSameSizesThenSameLists!538 lt!1368399 (_2!23581 (v!39235 lt!1368401)) lt!1368399 (_2!23581 lt!1368398)))))

(assert (=> b!3924009 (= (_2!23581 (v!39235 lt!1368401)) (_2!23581 lt!1368398))))

(declare-fun lt!1368390 () Unit!59860)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!90 (LexerInterface!6079 List!41752 List!41750 List!41750 List!41751 List!41750) Unit!59860)

(assert (=> b!3924009 (= lt!1368390 (lemmaLexWithSmallerInputCannotProduceSameResults!90 thiss!20629 rules!2768 suffix!1176 (_2!23581 lt!1368398) suffixTokens!72 suffixResult!91))))

(declare-fun res!1587377 () Bool)

(declare-fun lt!1368377 () tuple2!40896)

(assert (=> b!3924009 (= res!1587377 (not (= call!284674 lt!1368377)))))

(assert (=> b!3924009 (=> (not res!1587377) (not e!2426787))))

(assert (=> b!3924009 e!2426787))

(declare-fun b!3924010 () Bool)

(declare-fun Unit!59868 () Unit!59860)

(assert (=> b!3924010 (= e!2426792 Unit!59868)))

(declare-fun lt!1368396 () Unit!59860)

(assert (=> b!3924010 (= lt!1368396 (lemmaConcatTwoListThenFirstIsPrefix!2448 prefix!426 suffix!1176))))

(assert (=> b!3924010 (isPrefix!3585 prefix!426 lt!1368400)))

(declare-fun lt!1368380 () Unit!59860)

(declare-fun lemmaIsPrefixSameLengthThenSameList!781 (List!41750 List!41750 List!41750) Unit!59860)

(assert (=> b!3924010 (= lt!1368380 (lemmaIsPrefixSameLengthThenSameList!781 lt!1368399 prefix!426 lt!1368400))))

(assert (=> b!3924010 (= lt!1368399 prefix!426)))

(declare-fun lt!1368387 () Unit!59860)

(assert (=> b!3924010 (= lt!1368387 (lemmaSamePrefixThenSameSuffix!1806 lt!1368399 (_2!23581 (v!39235 lt!1368401)) prefix!426 suffix!1176 lt!1368400))))

(assert (=> b!3924010 false))

(declare-fun b!3924011 () Bool)

(declare-fun e!2426765 () Bool)

(declare-fun e!2426790 () Bool)

(assert (=> b!3924011 (= e!2426765 e!2426790)))

(declare-fun res!1587390 () Bool)

(assert (=> b!3924011 (=> (not res!1587390) (not e!2426790))))

(assert (=> b!3924011 (= res!1587390 (= (lexList!1847 thiss!20629 rules!2768 suffix!1176) lt!1368377))))

(assert (=> b!3924011 (= lt!1368377 (tuple2!40897 suffixTokens!72 suffixResult!91))))

(declare-fun b!3924012 () Bool)

(declare-fun res!1587376 () Bool)

(assert (=> b!3924012 (=> res!1587376 e!2426784)))

(declare-fun lt!1368378 () tuple2!40896)

(assert (=> b!3924012 (= res!1587376 (not (= lt!1368378 (tuple2!40897 (++!10737 (Cons!41627 (_1!23581 (v!39235 lt!1368401)) Nil!41627) (_1!23582 lt!1368389)) (_2!23582 lt!1368389)))))))

(declare-fun tp!1194540 () Bool)

(declare-fun b!3924013 () Bool)

(declare-fun e!2426768 () Bool)

(assert (=> b!3924013 (= e!2426768 (and tp!1194540 (inv!55820 (tag!7350 (rule!9428 (h!47047 suffixTokens!72)))) (inv!55824 (transformation!6490 (rule!9428 (h!47047 suffixTokens!72)))) e!2426776))))

(declare-fun b!3924014 () Bool)

(assert (=> b!3924014 (= e!2426794 e!2426765)))

(declare-fun res!1587378 () Bool)

(assert (=> b!3924014 (=> (not res!1587378) (not e!2426765))))

(declare-fun lt!1368391 () List!41751)

(assert (=> b!3924014 (= res!1587378 (= lt!1368378 (tuple2!40897 lt!1368391 suffixResult!91)))))

(assert (=> b!3924014 (= lt!1368378 (lexList!1847 thiss!20629 rules!2768 lt!1368400))))

(assert (=> b!3924014 (= lt!1368391 (++!10737 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3924014 (= lt!1368400 (++!10738 prefix!426 suffix!1176))))

(declare-fun b!3924015 () Bool)

(assert (=> b!3924015 (= e!2426790 e!2426777)))

(declare-fun res!1587388 () Bool)

(assert (=> b!3924015 (=> (not res!1587388) (not e!2426777))))

(assert (=> b!3924015 (= res!1587388 ((_ is Some!8909) lt!1368401))))

(declare-fun maxPrefix!3383 (LexerInterface!6079 List!41752 List!41750) Option!8910)

(assert (=> b!3924015 (= lt!1368401 (maxPrefix!3383 thiss!20629 rules!2768 lt!1368400))))

(declare-fun b!3924016 () Bool)

(declare-fun tp!1194537 () Bool)

(declare-fun inv!21 (TokenValue!6720) Bool)

(assert (=> b!3924016 (= e!2426769 (and (inv!21 (value!205599 (h!47047 suffixTokens!72))) e!2426768 tp!1194537))))

(declare-fun b!3924017 () Bool)

(declare-fun res!1587386 () Bool)

(assert (=> b!3924017 (=> (not res!1587386) (not e!2426794))))

(declare-fun rulesInvariant!5422 (LexerInterface!6079 List!41752) Bool)

(assert (=> b!3924017 (= res!1587386 (rulesInvariant!5422 thiss!20629 rules!2768))))

(declare-fun b!3924018 () Bool)

(declare-fun tp!1194536 () Bool)

(assert (=> b!3924018 (= e!2426782 (and (inv!21 (value!205599 (h!47047 prefixTokens!80))) e!2426796 tp!1194536))))

(assert (= (and start!368064 res!1587387) b!3923989))

(assert (= (and b!3923989 res!1587382) b!3924017))

(assert (= (and b!3924017 res!1587386) b!3923992))

(assert (= (and b!3923992 res!1587380) b!3923994))

(assert (= (and b!3923994 res!1587384) b!3924014))

(assert (= (and b!3924014 res!1587378) b!3924011))

(assert (= (and b!3924011 res!1587390) b!3924015))

(assert (= (and b!3924015 res!1587388) b!3923995))

(assert (= (and b!3923995 res!1587391) b!3924004))

(assert (= (and b!3923995 (not res!1587389)) b!3924012))

(assert (= (and b!3924012 (not res!1587376)) b!3924005))

(assert (= (and b!3924005 (not res!1587379)) b!3924008))

(assert (= (and b!3924008 c!681868) b!3923999))

(assert (= (and b!3924008 (not c!681868)) b!3924003))

(assert (= (and b!3923999 c!681871) b!3923987))

(assert (= (and b!3923999 (not c!681871)) b!3924006))

(assert (= (and b!3923987 c!681869) b!3924009))

(assert (= (and b!3923987 (not c!681869)) b!3923988))

(assert (= (and b!3924009 res!1587377) b!3923981))

(assert (= (and b!3923988 res!1587385) b!3923991))

(assert (= (or b!3924009 b!3923988) bm!284669))

(assert (= (and b!3924008 c!681870) b!3924010))

(assert (= (and b!3924008 (not c!681870)) b!3923993))

(assert (= (and b!3924008 (not res!1587374)) b!3924000))

(assert (= (and b!3924000 (not res!1587383)) b!3923997))

(assert (= (and b!3923997 (not res!1587381)) b!3924002))

(assert (= (and b!3924002 (not res!1587375)) b!3923998))

(assert (= (and start!368064 ((_ is Cons!41626) suffixResult!91)) b!3924007))

(assert (= (and start!368064 ((_ is Cons!41626) suffix!1176)) b!3924001))

(assert (= b!3923982 b!3923984))

(assert (= b!3923985 b!3923982))

(assert (= (and start!368064 ((_ is Cons!41628) rules!2768)) b!3923985))

(assert (= b!3923983 b!3923990))

(assert (= b!3924018 b!3923983))

(assert (= b!3923979 b!3924018))

(assert (= (and start!368064 ((_ is Cons!41627) prefixTokens!80)) b!3923979))

(assert (= b!3924013 b!3923986))

(assert (= b!3924016 b!3924013))

(assert (= b!3923980 b!3924016))

(assert (= (and start!368064 ((_ is Cons!41627) suffixTokens!72)) b!3923980))

(assert (= (and start!368064 ((_ is Cons!41626) prefix!426)) b!3923996))

(declare-fun m!4488061 () Bool)

(assert (=> b!3923979 m!4488061))

(declare-fun m!4488063 () Bool)

(assert (=> b!3923982 m!4488063))

(declare-fun m!4488065 () Bool)

(assert (=> b!3923982 m!4488065))

(declare-fun m!4488067 () Bool)

(assert (=> bm!284669 m!4488067))

(declare-fun m!4488069 () Bool)

(assert (=> b!3923997 m!4488069))

(declare-fun m!4488071 () Bool)

(assert (=> b!3923997 m!4488071))

(declare-fun m!4488073 () Bool)

(assert (=> b!3923997 m!4488073))

(declare-fun m!4488075 () Bool)

(assert (=> b!3923997 m!4488075))

(declare-fun m!4488077 () Bool)

(assert (=> b!3923997 m!4488077))

(declare-fun m!4488079 () Bool)

(assert (=> b!3924014 m!4488079))

(declare-fun m!4488081 () Bool)

(assert (=> b!3924014 m!4488081))

(declare-fun m!4488083 () Bool)

(assert (=> b!3924014 m!4488083))

(declare-fun m!4488085 () Bool)

(assert (=> b!3924004 m!4488085))

(declare-fun m!4488087 () Bool)

(assert (=> b!3924015 m!4488087))

(declare-fun m!4488089 () Bool)

(assert (=> b!3923994 m!4488089))

(declare-fun m!4488091 () Bool)

(assert (=> b!3924002 m!4488091))

(assert (=> b!3924002 m!4488091))

(declare-fun m!4488093 () Bool)

(assert (=> b!3924002 m!4488093))

(declare-fun m!4488095 () Bool)

(assert (=> b!3924011 m!4488095))

(declare-fun m!4488097 () Bool)

(assert (=> b!3924009 m!4488097))

(declare-fun m!4488099 () Bool)

(assert (=> b!3924009 m!4488099))

(declare-fun m!4488101 () Bool)

(assert (=> b!3924000 m!4488101))

(declare-fun m!4488103 () Bool)

(assert (=> b!3923998 m!4488103))

(declare-fun m!4488105 () Bool)

(assert (=> b!3924018 m!4488105))

(declare-fun m!4488107 () Bool)

(assert (=> b!3923983 m!4488107))

(declare-fun m!4488109 () Bool)

(assert (=> b!3923983 m!4488109))

(declare-fun m!4488111 () Bool)

(assert (=> b!3924017 m!4488111))

(declare-fun m!4488113 () Bool)

(assert (=> b!3923999 m!4488113))

(declare-fun m!4488115 () Bool)

(assert (=> b!3923999 m!4488115))

(declare-fun m!4488117 () Bool)

(assert (=> b!3923999 m!4488117))

(declare-fun m!4488119 () Bool)

(assert (=> b!3923999 m!4488119))

(declare-fun m!4488121 () Bool)

(assert (=> b!3923999 m!4488121))

(declare-fun m!4488123 () Bool)

(assert (=> b!3924013 m!4488123))

(declare-fun m!4488125 () Bool)

(assert (=> b!3924013 m!4488125))

(declare-fun m!4488127 () Bool)

(assert (=> b!3923987 m!4488127))

(declare-fun m!4488129 () Bool)

(assert (=> b!3923987 m!4488129))

(assert (=> b!3924010 m!4488073))

(assert (=> b!3924010 m!4488077))

(declare-fun m!4488131 () Bool)

(assert (=> b!3924010 m!4488131))

(declare-fun m!4488133 () Bool)

(assert (=> b!3924010 m!4488133))

(declare-fun m!4488135 () Bool)

(assert (=> b!3923989 m!4488135))

(declare-fun m!4488137 () Bool)

(assert (=> b!3924008 m!4488137))

(declare-fun m!4488139 () Bool)

(assert (=> b!3924008 m!4488139))

(declare-fun m!4488141 () Bool)

(assert (=> b!3923988 m!4488141))

(declare-fun m!4488143 () Bool)

(assert (=> b!3923988 m!4488143))

(declare-fun m!4488145 () Bool)

(assert (=> b!3923980 m!4488145))

(declare-fun m!4488147 () Bool)

(assert (=> b!3924012 m!4488147))

(declare-fun m!4488149 () Bool)

(assert (=> b!3923995 m!4488149))

(declare-fun m!4488151 () Bool)

(assert (=> b!3923995 m!4488151))

(declare-fun m!4488153 () Bool)

(assert (=> b!3923995 m!4488153))

(declare-fun m!4488155 () Bool)

(assert (=> b!3923995 m!4488155))

(declare-fun m!4488157 () Bool)

(assert (=> b!3923995 m!4488157))

(declare-fun m!4488159 () Bool)

(assert (=> b!3923995 m!4488159))

(declare-fun m!4488161 () Bool)

(assert (=> b!3923995 m!4488161))

(declare-fun m!4488163 () Bool)

(assert (=> b!3923995 m!4488163))

(declare-fun m!4488165 () Bool)

(assert (=> b!3923995 m!4488165))

(assert (=> b!3923995 m!4488165))

(declare-fun m!4488167 () Bool)

(assert (=> b!3923995 m!4488167))

(declare-fun m!4488169 () Bool)

(assert (=> b!3923995 m!4488169))

(assert (=> b!3923995 m!4488159))

(declare-fun m!4488171 () Bool)

(assert (=> b!3923995 m!4488171))

(declare-fun m!4488173 () Bool)

(assert (=> b!3923995 m!4488173))

(declare-fun m!4488175 () Bool)

(assert (=> b!3923995 m!4488175))

(declare-fun m!4488177 () Bool)

(assert (=> b!3923992 m!4488177))

(declare-fun m!4488179 () Bool)

(assert (=> b!3924016 m!4488179))

(check-sat b_and!299213 (not b_next!107559) (not b!3923983) (not b!3924011) (not b!3923996) b_and!299211 (not b!3923982) tp_is_empty!19761 (not b!3923987) (not b!3924004) (not b!3924015) (not b!3923998) (not b!3923992) b_and!299207 (not b_next!107563) (not b!3924017) (not b!3923989) (not b!3923999) (not b!3924000) (not b!3924016) (not b!3923979) (not b!3924008) (not b!3924018) b_and!299209 b_and!299215 (not b!3923980) (not bm!284669) (not b_next!107557) (not b!3924013) (not b_next!107567) (not b_next!107561) (not b!3923995) (not b!3924014) (not b!3924002) (not b!3924007) (not b!3924012) (not b!3924001) (not b!3924010) (not b!3923985) (not b!3924009) (not b_next!107565) b_and!299217 (not b!3923988) (not b!3923997) (not b!3923994))
(check-sat b_and!299213 (not b_next!107559) b_and!299207 (not b_next!107563) b_and!299211 (not b_next!107557) (not b_next!107567) (not b_next!107561) b_and!299209 b_and!299215 (not b_next!107565) b_and!299217)
