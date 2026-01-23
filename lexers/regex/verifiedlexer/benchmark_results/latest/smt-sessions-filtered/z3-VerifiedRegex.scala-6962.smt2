; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!368528 () Bool)

(assert start!368528)

(declare-fun b!3928663 () Bool)

(declare-fun b_free!107189 () Bool)

(declare-fun b_next!107893 () Bool)

(assert (=> b!3928663 (= b_free!107189 (not b_next!107893))))

(declare-fun tp!1196082 () Bool)

(declare-fun b_and!299687 () Bool)

(assert (=> b!3928663 (= tp!1196082 b_and!299687)))

(declare-fun b_free!107191 () Bool)

(declare-fun b_next!107895 () Bool)

(assert (=> b!3928663 (= b_free!107191 (not b_next!107895))))

(declare-fun tp!1196075 () Bool)

(declare-fun b_and!299689 () Bool)

(assert (=> b!3928663 (= tp!1196075 b_and!299689)))

(declare-fun b!3928662 () Bool)

(declare-fun b_free!107193 () Bool)

(declare-fun b_next!107897 () Bool)

(assert (=> b!3928662 (= b_free!107193 (not b_next!107897))))

(declare-fun tp!1196084 () Bool)

(declare-fun b_and!299691 () Bool)

(assert (=> b!3928662 (= tp!1196084 b_and!299691)))

(declare-fun b_free!107195 () Bool)

(declare-fun b_next!107899 () Bool)

(assert (=> b!3928662 (= b_free!107195 (not b_next!107899))))

(declare-fun tp!1196076 () Bool)

(declare-fun b_and!299693 () Bool)

(assert (=> b!3928662 (= tp!1196076 b_and!299693)))

(declare-fun b!3928673 () Bool)

(declare-fun b_free!107197 () Bool)

(declare-fun b_next!107901 () Bool)

(assert (=> b!3928673 (= b_free!107197 (not b_next!107901))))

(declare-fun tp!1196074 () Bool)

(declare-fun b_and!299695 () Bool)

(assert (=> b!3928673 (= tp!1196074 b_and!299695)))

(declare-fun b_free!107199 () Bool)

(declare-fun b_next!107903 () Bool)

(assert (=> b!3928673 (= b_free!107199 (not b_next!107903))))

(declare-fun tp!1196073 () Bool)

(declare-fun b_and!299697 () Bool)

(assert (=> b!3928673 (= tp!1196073 b_and!299697)))

(declare-fun b!3928634 () Bool)

(declare-fun e!2430308 () Bool)

(declare-fun e!2430331 () Bool)

(assert (=> b!3928634 (= e!2430308 e!2430331)))

(declare-fun res!1589549 () Bool)

(assert (=> b!3928634 (=> res!1589549 e!2430331)))

(declare-datatypes ((List!41843 0))(
  ( (Nil!41719) (Cons!41719 (h!47139 (_ BitVec 16)) (t!325266 List!41843)) )
))
(declare-datatypes ((TokenValue!6742 0))(
  ( (FloatLiteralValue!13484 (text!47639 List!41843)) (TokenValueExt!6741 (__x!25701 Int)) (Broken!33710 (value!206200 List!41843)) (Object!6865) (End!6742) (Def!6742) (Underscore!6742) (Match!6742) (Else!6742) (Error!6742) (Case!6742) (If!6742) (Extends!6742) (Abstract!6742) (Class!6742) (Val!6742) (DelimiterValue!13484 (del!6802 List!41843)) (KeywordValue!6748 (value!206201 List!41843)) (CommentValue!13484 (value!206202 List!41843)) (WhitespaceValue!13484 (value!206203 List!41843)) (IndentationValue!6742 (value!206204 List!41843)) (String!47427) (Int32!6742) (Broken!33711 (value!206205 List!41843)) (Boolean!6743) (Unit!60091) (OperatorValue!6745 (op!6802 List!41843)) (IdentifierValue!13484 (value!206206 List!41843)) (IdentifierValue!13485 (value!206207 List!41843)) (WhitespaceValue!13485 (value!206208 List!41843)) (True!13484) (False!13484) (Broken!33712 (value!206209 List!41843)) (Broken!33713 (value!206210 List!41843)) (True!13485) (RightBrace!6742) (RightBracket!6742) (Colon!6742) (Null!6742) (Comma!6742) (LeftBracket!6742) (False!13485) (LeftBrace!6742) (ImaginaryLiteralValue!6742 (text!47640 List!41843)) (StringLiteralValue!20226 (value!206211 List!41843)) (EOFValue!6742 (value!206212 List!41843)) (IdentValue!6742 (value!206213 List!41843)) (DelimiterValue!13485 (value!206214 List!41843)) (DedentValue!6742 (value!206215 List!41843)) (NewLineValue!6742 (value!206216 List!41843)) (IntegerValue!20226 (value!206217 (_ BitVec 32)) (text!47641 List!41843)) (IntegerValue!20227 (value!206218 Int) (text!47642 List!41843)) (Times!6742) (Or!6742) (Equal!6742) (Minus!6742) (Broken!33714 (value!206219 List!41843)) (And!6742) (Div!6742) (LessEqual!6742) (Mod!6742) (Concat!18159) (Not!6742) (Plus!6742) (SpaceValue!6742 (value!206220 List!41843)) (IntegerValue!20228 (value!206221 Int) (text!47643 List!41843)) (StringLiteralValue!20227 (text!47644 List!41843)) (FloatLiteralValue!13485 (text!47645 List!41843)) (BytesLiteralValue!6742 (value!206222 List!41843)) (CommentValue!13485 (value!206223 List!41843)) (StringLiteralValue!20228 (value!206224 List!41843)) (ErrorTokenValue!6742 (msg!6803 List!41843)) )
))
(declare-datatypes ((C!23020 0))(
  ( (C!23021 (val!13604 Int)) )
))
(declare-datatypes ((Regex!11417 0))(
  ( (ElementMatch!11417 (c!682532 C!23020)) (Concat!18160 (regOne!23346 Regex!11417) (regTwo!23346 Regex!11417)) (EmptyExpr!11417) (Star!11417 (reg!11746 Regex!11417)) (EmptyLang!11417) (Union!11417 (regOne!23347 Regex!11417) (regTwo!23347 Regex!11417)) )
))
(declare-datatypes ((String!47428 0))(
  ( (String!47429 (value!206225 String)) )
))
(declare-datatypes ((List!41844 0))(
  ( (Nil!41720) (Cons!41720 (h!47140 C!23020) (t!325267 List!41844)) )
))
(declare-datatypes ((IArray!25451 0))(
  ( (IArray!25452 (innerList!12783 List!41844)) )
))
(declare-datatypes ((Conc!12723 0))(
  ( (Node!12723 (left!31829 Conc!12723) (right!32159 Conc!12723) (csize!25676 Int) (cheight!12934 Int)) (Leaf!19686 (xs!16029 IArray!25451) (csize!25677 Int)) (Empty!12723) )
))
(declare-datatypes ((BalanceConc!25040 0))(
  ( (BalanceConc!25041 (c!682533 Conc!12723)) )
))
(declare-datatypes ((TokenValueInjection!12912 0))(
  ( (TokenValueInjection!12913 (toValue!8964 Int) (toChars!8823 Int)) )
))
(declare-datatypes ((Rule!12824 0))(
  ( (Rule!12825 (regex!6512 Regex!11417) (tag!7372 String!47428) (isSeparator!6512 Bool) (transformation!6512 TokenValueInjection!12912)) )
))
(declare-datatypes ((Token!12162 0))(
  ( (Token!12163 (value!206226 TokenValue!6742) (rule!9456 Rule!12824) (size!31301 Int) (originalCharacters!7112 List!41844)) )
))
(declare-datatypes ((List!41845 0))(
  ( (Nil!41721) (Cons!41721 (h!47141 Token!12162) (t!325268 List!41845)) )
))
(declare-fun lt!1371758 () List!41845)

(declare-fun lt!1371768 () List!41845)

(assert (=> b!3928634 (= res!1589549 (not (= lt!1371758 lt!1371768)))))

(declare-fun lt!1371763 () List!41845)

(declare-fun lt!1371761 () List!41845)

(declare-fun ++!10781 (List!41845 List!41845) List!41845)

(assert (=> b!3928634 (= lt!1371758 (++!10781 lt!1371763 lt!1371761))))

(declare-fun suffixTokens!72 () List!41845)

(declare-fun lt!1371755 () List!41845)

(assert (=> b!3928634 (= lt!1371758 (++!10781 (++!10781 lt!1371763 lt!1371755) suffixTokens!72))))

(declare-datatypes ((Unit!60092 0))(
  ( (Unit!60093) )
))
(declare-fun lt!1371754 () Unit!60092)

(declare-fun lemmaConcatAssociativity!2311 (List!41845 List!41845 List!41845) Unit!60092)

(assert (=> b!3928634 (= lt!1371754 (lemmaConcatAssociativity!2311 lt!1371763 lt!1371755 suffixTokens!72))))

(declare-fun lt!1371740 () Unit!60092)

(declare-fun e!2430301 () Unit!60092)

(assert (=> b!3928634 (= lt!1371740 e!2430301)))

(declare-fun c!682530 () Bool)

(declare-fun isEmpty!24866 (List!41845) Bool)

(assert (=> b!3928634 (= c!682530 (isEmpty!24866 lt!1371755))))

(declare-fun e!2430335 () Bool)

(declare-fun prefixTokens!80 () List!41845)

(declare-fun tp!1196078 () Bool)

(declare-fun e!2430333 () Bool)

(declare-fun b!3928635 () Bool)

(declare-fun inv!21 (TokenValue!6742) Bool)

(assert (=> b!3928635 (= e!2430333 (and (inv!21 (value!206226 (h!47141 prefixTokens!80))) e!2430335 tp!1196078))))

(declare-fun b!3928636 () Bool)

(declare-fun e!2430299 () Bool)

(declare-fun e!2430325 () Bool)

(assert (=> b!3928636 (= e!2430299 e!2430325)))

(declare-fun res!1589539 () Bool)

(assert (=> b!3928636 (=> res!1589539 e!2430325)))

(declare-fun lt!1371759 () Int)

(declare-fun prefix!426 () List!41844)

(declare-fun size!31302 (List!41844) Int)

(assert (=> b!3928636 (= res!1589539 (>= lt!1371759 (size!31302 prefix!426)))))

(declare-fun lt!1371745 () List!41844)

(declare-fun isPrefix!3607 (List!41844 List!41844) Bool)

(assert (=> b!3928636 (isPrefix!3607 lt!1371745 prefix!426)))

(declare-fun lt!1371784 () Unit!60092)

(declare-fun lt!1371770 () List!41844)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!285 (List!41844 List!41844 List!41844) Unit!60092)

(assert (=> b!3928636 (= lt!1371784 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!285 prefix!426 lt!1371745 lt!1371770))))

(assert (=> b!3928636 (isPrefix!3607 prefix!426 lt!1371770)))

(declare-fun lt!1371782 () Unit!60092)

(declare-fun suffix!1176 () List!41844)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2470 (List!41844 List!41844) Unit!60092)

(assert (=> b!3928636 (= lt!1371782 (lemmaConcatTwoListThenFirstIsPrefix!2470 prefix!426 suffix!1176))))

(declare-datatypes ((List!41846 0))(
  ( (Nil!41722) (Cons!41722 (h!47142 Rule!12824) (t!325269 List!41846)) )
))
(declare-fun rules!2768 () List!41846)

(declare-fun tp!1196086 () Bool)

(declare-fun e!2430332 () Bool)

(declare-fun e!2430303 () Bool)

(declare-fun b!3928638 () Bool)

(declare-fun inv!55909 (String!47428) Bool)

(declare-fun inv!55912 (TokenValueInjection!12912) Bool)

(assert (=> b!3928638 (= e!2430303 (and tp!1196086 (inv!55909 (tag!7372 (h!47142 rules!2768))) (inv!55912 (transformation!6512 (h!47142 rules!2768))) e!2430332))))

(declare-fun b!3928639 () Bool)

(declare-fun e!2430320 () Unit!60092)

(declare-fun Unit!60094 () Unit!60092)

(assert (=> b!3928639 (= e!2430320 Unit!60094)))

(declare-fun lt!1371785 () Unit!60092)

(assert (=> b!3928639 (= lt!1371785 (lemmaConcatTwoListThenFirstIsPrefix!2470 prefix!426 suffix!1176))))

(assert (=> b!3928639 (isPrefix!3607 prefix!426 lt!1371770)))

(declare-fun lt!1371749 () Unit!60092)

(declare-fun lemmaIsPrefixSameLengthThenSameList!803 (List!41844 List!41844 List!41844) Unit!60092)

(assert (=> b!3928639 (= lt!1371749 (lemmaIsPrefixSameLengthThenSameList!803 lt!1371745 prefix!426 lt!1371770))))

(assert (=> b!3928639 (= lt!1371745 prefix!426)))

(declare-fun lt!1371766 () Unit!60092)

(declare-datatypes ((tuple2!40994 0))(
  ( (tuple2!40995 (_1!23631 Token!12162) (_2!23631 List!41844)) )
))
(declare-datatypes ((Option!8932 0))(
  ( (None!8931) (Some!8931 (v!39257 tuple2!40994)) )
))
(declare-fun lt!1371783 () Option!8932)

(declare-fun lemmaSamePrefixThenSameSuffix!1828 (List!41844 List!41844 List!41844 List!41844 List!41844) Unit!60092)

(assert (=> b!3928639 (= lt!1371766 (lemmaSamePrefixThenSameSuffix!1828 lt!1371745 (_2!23631 (v!39257 lt!1371783)) prefix!426 suffix!1176 lt!1371770))))

(assert (=> b!3928639 false))

(declare-fun b!3928640 () Bool)

(declare-fun e!2430338 () Bool)

(declare-fun e!2430318 () Bool)

(assert (=> b!3928640 (= e!2430338 (not e!2430318))))

(declare-fun res!1589540 () Bool)

(assert (=> b!3928640 (=> res!1589540 e!2430318)))

(declare-fun lt!1371781 () List!41844)

(assert (=> b!3928640 (= res!1589540 (not (= lt!1371781 lt!1371770)))))

(declare-datatypes ((LexerInterface!6101 0))(
  ( (LexerInterfaceExt!6098 (__x!25702 Int)) (Lexer!6099) )
))
(declare-fun thiss!20629 () LexerInterface!6101)

(declare-datatypes ((tuple2!40996 0))(
  ( (tuple2!40997 (_1!23632 List!41845) (_2!23632 List!41844)) )
))
(declare-fun lt!1371757 () tuple2!40996)

(declare-fun lexList!1869 (LexerInterface!6101 List!41846 List!41844) tuple2!40996)

(assert (=> b!3928640 (= lt!1371757 (lexList!1869 thiss!20629 rules!2768 (_2!23631 (v!39257 lt!1371783))))))

(declare-fun lt!1371750 () List!41844)

(declare-fun lt!1371738 () TokenValue!6742)

(assert (=> b!3928640 (and (= (size!31301 (_1!23631 (v!39257 lt!1371783))) lt!1371759) (= (originalCharacters!7112 (_1!23631 (v!39257 lt!1371783))) lt!1371745) (= (v!39257 lt!1371783) (tuple2!40995 (Token!12163 lt!1371738 (rule!9456 (_1!23631 (v!39257 lt!1371783))) lt!1371759 lt!1371745) lt!1371750)))))

(assert (=> b!3928640 (= lt!1371759 (size!31302 lt!1371745))))

(declare-fun e!2430305 () Bool)

(assert (=> b!3928640 e!2430305))

(declare-fun res!1589541 () Bool)

(assert (=> b!3928640 (=> (not res!1589541) (not e!2430305))))

(assert (=> b!3928640 (= res!1589541 (= (value!206226 (_1!23631 (v!39257 lt!1371783))) lt!1371738))))

(declare-fun apply!9751 (TokenValueInjection!12912 BalanceConc!25040) TokenValue!6742)

(declare-fun seqFromList!4779 (List!41844) BalanceConc!25040)

(assert (=> b!3928640 (= lt!1371738 (apply!9751 (transformation!6512 (rule!9456 (_1!23631 (v!39257 lt!1371783)))) (seqFromList!4779 lt!1371745)))))

(assert (=> b!3928640 (= (_2!23631 (v!39257 lt!1371783)) lt!1371750)))

(declare-fun lt!1371760 () Unit!60092)

(assert (=> b!3928640 (= lt!1371760 (lemmaSamePrefixThenSameSuffix!1828 lt!1371745 (_2!23631 (v!39257 lt!1371783)) lt!1371745 lt!1371750 lt!1371770))))

(declare-fun getSuffix!2062 (List!41844 List!41844) List!41844)

(assert (=> b!3928640 (= lt!1371750 (getSuffix!2062 lt!1371770 lt!1371745))))

(assert (=> b!3928640 (isPrefix!3607 lt!1371745 lt!1371781)))

(declare-fun ++!10782 (List!41844 List!41844) List!41844)

(assert (=> b!3928640 (= lt!1371781 (++!10782 lt!1371745 (_2!23631 (v!39257 lt!1371783))))))

(declare-fun lt!1371771 () Unit!60092)

(assert (=> b!3928640 (= lt!1371771 (lemmaConcatTwoListThenFirstIsPrefix!2470 lt!1371745 (_2!23631 (v!39257 lt!1371783))))))

(declare-fun list!15501 (BalanceConc!25040) List!41844)

(declare-fun charsOf!4336 (Token!12162) BalanceConc!25040)

(assert (=> b!3928640 (= lt!1371745 (list!15501 (charsOf!4336 (_1!23631 (v!39257 lt!1371783)))))))

(declare-fun ruleValid!2460 (LexerInterface!6101 Rule!12824) Bool)

(assert (=> b!3928640 (ruleValid!2460 thiss!20629 (rule!9456 (_1!23631 (v!39257 lt!1371783))))))

(declare-fun lt!1371747 () Unit!60092)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1540 (LexerInterface!6101 Rule!12824 List!41846) Unit!60092)

(assert (=> b!3928640 (= lt!1371747 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1540 thiss!20629 (rule!9456 (_1!23631 (v!39257 lt!1371783))) rules!2768))))

(declare-fun lt!1371746 () Unit!60092)

(declare-fun lemmaCharactersSize!1169 (Token!12162) Unit!60092)

(assert (=> b!3928640 (= lt!1371746 (lemmaCharactersSize!1169 (_1!23631 (v!39257 lt!1371783))))))

(declare-fun b!3928641 () Bool)

(declare-fun e!2430334 () Bool)

(declare-fun tp_is_empty!19805 () Bool)

(declare-fun tp!1196081 () Bool)

(assert (=> b!3928641 (= e!2430334 (and tp_is_empty!19805 tp!1196081))))

(declare-fun b!3928642 () Bool)

(declare-fun e!2430316 () Unit!60092)

(declare-fun Unit!60095 () Unit!60092)

(assert (=> b!3928642 (= e!2430316 Unit!60095)))

(declare-fun lt!1371753 () List!41845)

(declare-fun suffixResult!91 () List!41844)

(declare-fun lt!1371776 () tuple2!40994)

(declare-fun lt!1371765 () Unit!60092)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!112 (LexerInterface!6101 List!41846 List!41844 List!41844 List!41845 List!41844 List!41845) Unit!60092)

(assert (=> b!3928642 (= lt!1371765 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!112 thiss!20629 rules!2768 suffix!1176 (_2!23631 lt!1371776) suffixTokens!72 suffixResult!91 lt!1371753))))

(declare-fun call!284758 () tuple2!40996)

(declare-fun res!1589542 () Bool)

(assert (=> b!3928642 (= res!1589542 (not (= call!284758 (tuple2!40997 (++!10781 lt!1371753 suffixTokens!72) suffixResult!91))))))

(declare-fun e!2430310 () Bool)

(assert (=> b!3928642 (=> (not res!1589542) (not e!2430310))))

(assert (=> b!3928642 e!2430310))

(declare-fun b!3928643 () Bool)

(declare-fun Unit!60096 () Unit!60092)

(assert (=> b!3928643 (= e!2430301 Unit!60096)))

(declare-fun b!3928644 () Bool)

(declare-fun Unit!60097 () Unit!60092)

(assert (=> b!3928644 (= e!2430316 Unit!60097)))

(declare-fun lt!1371743 () Unit!60092)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!560 (List!41844 List!41844 List!41844 List!41844) Unit!60092)

(assert (=> b!3928644 (= lt!1371743 (lemmaConcatSameAndSameSizesThenSameLists!560 lt!1371745 (_2!23631 (v!39257 lt!1371783)) lt!1371745 (_2!23631 lt!1371776)))))

(assert (=> b!3928644 (= (_2!23631 (v!39257 lt!1371783)) (_2!23631 lt!1371776))))

(declare-fun lt!1371767 () Unit!60092)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!112 (LexerInterface!6101 List!41846 List!41844 List!41844 List!41845 List!41844) Unit!60092)

(assert (=> b!3928644 (= lt!1371767 (lemmaLexWithSmallerInputCannotProduceSameResults!112 thiss!20629 rules!2768 suffix!1176 (_2!23631 lt!1371776) suffixTokens!72 suffixResult!91))))

(declare-fun res!1589538 () Bool)

(declare-fun lt!1371741 () tuple2!40996)

(assert (=> b!3928644 (= res!1589538 (not (= call!284758 lt!1371741)))))

(declare-fun e!2430314 () Bool)

(assert (=> b!3928644 (=> (not res!1589538) (not e!2430314))))

(assert (=> b!3928644 e!2430314))

(declare-fun b!3928645 () Bool)

(assert (=> b!3928645 (= e!2430305 (= (size!31301 (_1!23631 (v!39257 lt!1371783))) (size!31302 (originalCharacters!7112 (_1!23631 (v!39257 lt!1371783))))))))

(declare-fun b!3928646 () Bool)

(declare-fun e!2430300 () Bool)

(assert (=> b!3928646 (= e!2430300 e!2430299)))

(declare-fun res!1589546 () Bool)

(assert (=> b!3928646 (=> res!1589546 e!2430299)))

(declare-fun lt!1371762 () Int)

(declare-fun lt!1371777 () Int)

(assert (=> b!3928646 (= res!1589546 (<= lt!1371762 lt!1371777))))

(declare-fun lt!1371744 () Unit!60092)

(assert (=> b!3928646 (= lt!1371744 e!2430320)))

(declare-fun c!682527 () Bool)

(assert (=> b!3928646 (= c!682527 (= lt!1371762 lt!1371777))))

(declare-fun lt!1371737 () Unit!60092)

(declare-fun e!2430311 () Unit!60092)

(assert (=> b!3928646 (= lt!1371737 e!2430311)))

(declare-fun c!682528 () Bool)

(assert (=> b!3928646 (= c!682528 (< lt!1371762 lt!1371777))))

(assert (=> b!3928646 (= lt!1371777 (size!31302 suffix!1176))))

(assert (=> b!3928646 (= lt!1371762 (size!31302 (_2!23631 (v!39257 lt!1371783))))))

(declare-fun b!3928647 () Bool)

(declare-fun e!2430317 () Bool)

(declare-fun e!2430321 () Bool)

(assert (=> b!3928647 (= e!2430317 e!2430321)))

(declare-fun res!1589544 () Bool)

(assert (=> b!3928647 (=> res!1589544 e!2430321)))

(declare-fun lt!1371752 () List!41844)

(declare-fun lt!1371742 () List!41844)

(assert (=> b!3928647 (= res!1589544 (or (not (= lt!1371770 lt!1371742)) (not (= lt!1371770 lt!1371752)) (not (= lt!1371781 lt!1371752))))))

(assert (=> b!3928647 (= lt!1371742 lt!1371752)))

(declare-fun lt!1371780 () List!41844)

(assert (=> b!3928647 (= lt!1371752 (++!10782 lt!1371745 lt!1371780))))

(declare-fun lt!1371772 () List!41844)

(assert (=> b!3928647 (= lt!1371780 (++!10782 lt!1371772 suffix!1176))))

(declare-fun lt!1371739 () Unit!60092)

(declare-fun lemmaConcatAssociativity!2312 (List!41844 List!41844 List!41844) Unit!60092)

(assert (=> b!3928647 (= lt!1371739 (lemmaConcatAssociativity!2312 lt!1371745 lt!1371772 suffix!1176))))

(declare-fun b!3928648 () Bool)

(declare-fun Unit!60098 () Unit!60092)

(assert (=> b!3928648 (= e!2430301 Unit!60098)))

(declare-fun lt!1371775 () Unit!60092)

(assert (=> b!3928648 (= lt!1371775 (lemmaLexWithSmallerInputCannotProduceSameResults!112 thiss!20629 rules!2768 (_2!23631 (v!39257 lt!1371783)) suffix!1176 suffixTokens!72 suffixResult!91))))

(assert (=> b!3928648 false))

(declare-fun b!3928649 () Bool)

(declare-fun e!2430326 () Bool)

(declare-fun tp!1196087 () Bool)

(assert (=> b!3928649 (= e!2430326 (and tp_is_empty!19805 tp!1196087))))

(declare-fun b!3928650 () Bool)

(assert (=> b!3928650 (= e!2430318 e!2430300)))

(declare-fun res!1589535 () Bool)

(assert (=> b!3928650 (=> res!1589535 e!2430300)))

(declare-fun lt!1371769 () tuple2!40996)

(assert (=> b!3928650 (= res!1589535 (not (= lt!1371769 (tuple2!40997 (++!10781 lt!1371763 (_1!23632 lt!1371757)) (_2!23632 lt!1371757)))))))

(assert (=> b!3928650 (= lt!1371763 (Cons!41721 (_1!23631 (v!39257 lt!1371783)) Nil!41721))))

(declare-fun b!3928651 () Bool)

(declare-fun Unit!60099 () Unit!60092)

(assert (=> b!3928651 (= e!2430311 Unit!60099)))

(declare-fun lt!1371773 () Int)

(assert (=> b!3928651 (= lt!1371773 (size!31302 lt!1371770))))

(declare-fun lt!1371774 () Unit!60092)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1343 (LexerInterface!6101 List!41846 List!41844 List!41844 List!41844 Rule!12824) Unit!60092)

(assert (=> b!3928651 (= lt!1371774 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1343 thiss!20629 rules!2768 lt!1371745 lt!1371770 (_2!23631 (v!39257 lt!1371783)) (rule!9456 (_1!23631 (v!39257 lt!1371783)))))))

(declare-fun maxPrefixOneRule!2475 (LexerInterface!6101 Rule!12824 List!41844) Option!8932)

(assert (=> b!3928651 (= (maxPrefixOneRule!2475 thiss!20629 (rule!9456 (_1!23631 (v!39257 lt!1371783))) lt!1371770) (Some!8931 (tuple2!40995 (Token!12163 lt!1371738 (rule!9456 (_1!23631 (v!39257 lt!1371783))) lt!1371759 lt!1371745) (_2!23631 (v!39257 lt!1371783)))))))

(declare-fun get!13788 (Option!8932) tuple2!40994)

(assert (=> b!3928651 (= lt!1371776 (get!13788 lt!1371783))))

(declare-fun c!682529 () Bool)

(assert (=> b!3928651 (= c!682529 (< (size!31302 (_2!23631 lt!1371776)) lt!1371777))))

(declare-fun lt!1371764 () Unit!60092)

(declare-fun e!2430323 () Unit!60092)

(assert (=> b!3928651 (= lt!1371764 e!2430323)))

(assert (=> b!3928651 false))

(declare-fun b!3928652 () Bool)

(declare-fun e!2430336 () Bool)

(assert (=> b!3928652 (= e!2430336 e!2430308)))

(declare-fun res!1589548 () Bool)

(assert (=> b!3928652 (=> res!1589548 e!2430308)))

(declare-fun lt!1371751 () tuple2!40996)

(assert (=> b!3928652 (= res!1589548 (not (= lt!1371757 lt!1371751)))))

(assert (=> b!3928652 (= lt!1371751 (tuple2!40997 lt!1371761 suffixResult!91))))

(assert (=> b!3928652 (= lt!1371761 (++!10781 lt!1371755 suffixTokens!72))))

(declare-fun tail!6063 (List!41845) List!41845)

(assert (=> b!3928652 (= lt!1371755 (tail!6063 prefixTokens!80))))

(assert (=> b!3928652 (isPrefix!3607 lt!1371772 lt!1371780)))

(declare-fun lt!1371748 () Unit!60092)

(assert (=> b!3928652 (= lt!1371748 (lemmaConcatTwoListThenFirstIsPrefix!2470 lt!1371772 suffix!1176))))

(declare-fun e!2430306 () Bool)

(declare-fun e!2430298 () Bool)

(declare-fun tp!1196072 () Bool)

(declare-fun b!3928653 () Bool)

(assert (=> b!3928653 (= e!2430306 (and tp!1196072 (inv!55909 (tag!7372 (rule!9456 (h!47141 suffixTokens!72)))) (inv!55912 (transformation!6512 (rule!9456 (h!47141 suffixTokens!72)))) e!2430298))))

(declare-fun b!3928654 () Bool)

(declare-fun e!2430304 () Bool)

(assert (=> b!3928654 (= e!2430304 e!2430317)))

(declare-fun res!1589537 () Bool)

(assert (=> b!3928654 (=> res!1589537 e!2430317)))

(assert (=> b!3928654 (= res!1589537 (or (not (= lt!1371742 lt!1371770)) (not (= lt!1371742 lt!1371781))))))

(declare-fun lt!1371778 () List!41844)

(assert (=> b!3928654 (= lt!1371742 (++!10782 lt!1371778 suffix!1176))))

(declare-fun b!3928655 () Bool)

(assert (=> b!3928655 (= e!2430321 e!2430336)))

(declare-fun res!1589543 () Bool)

(assert (=> b!3928655 (=> res!1589543 e!2430336)))

(assert (=> b!3928655 (= res!1589543 (not (= lt!1371780 (_2!23631 (v!39257 lt!1371783)))))))

(assert (=> b!3928655 (= (_2!23631 (v!39257 lt!1371783)) lt!1371780)))

(declare-fun lt!1371756 () Unit!60092)

(assert (=> b!3928655 (= lt!1371756 (lemmaSamePrefixThenSameSuffix!1828 lt!1371745 (_2!23631 (v!39257 lt!1371783)) lt!1371745 lt!1371780 lt!1371770))))

(assert (=> b!3928655 (isPrefix!3607 lt!1371745 lt!1371752)))

(declare-fun lt!1371779 () Unit!60092)

(assert (=> b!3928655 (= lt!1371779 (lemmaConcatTwoListThenFirstIsPrefix!2470 lt!1371745 lt!1371780))))

(declare-fun b!3928656 () Bool)

(declare-fun Unit!60100 () Unit!60092)

(assert (=> b!3928656 (= e!2430323 Unit!60100)))

(declare-fun b!3928657 () Bool)

(declare-fun res!1589533 () Bool)

(declare-fun e!2430319 () Bool)

(assert (=> b!3928657 (=> (not res!1589533) (not e!2430319))))

(declare-fun isEmpty!24867 (List!41846) Bool)

(assert (=> b!3928657 (= res!1589533 (not (isEmpty!24867 rules!2768)))))

(declare-fun b!3928658 () Bool)

(declare-fun res!1589551 () Bool)

(assert (=> b!3928658 (=> (not res!1589551) (not e!2430319))))

(assert (=> b!3928658 (= res!1589551 (not (isEmpty!24866 prefixTokens!80)))))

(declare-fun b!3928659 () Bool)

(declare-fun e!2430327 () Bool)

(declare-fun tp!1196083 () Bool)

(assert (=> b!3928659 (= e!2430327 (and e!2430303 tp!1196083))))

(declare-fun tp!1196088 () Bool)

(declare-fun b!3928660 () Bool)

(declare-fun e!2430312 () Bool)

(assert (=> b!3928660 (= e!2430335 (and tp!1196088 (inv!55909 (tag!7372 (rule!9456 (h!47141 prefixTokens!80)))) (inv!55912 (transformation!6512 (rule!9456 (h!47141 prefixTokens!80)))) e!2430312))))

(declare-fun b!3928661 () Bool)

(declare-fun res!1589553 () Bool)

(assert (=> b!3928661 (=> res!1589553 e!2430299)))

(declare-fun head!8337 (List!41845) Token!12162)

(assert (=> b!3928661 (= res!1589553 (not (= (head!8337 prefixTokens!80) (_1!23631 (v!39257 lt!1371783)))))))

(assert (=> b!3928662 (= e!2430298 (and tp!1196084 tp!1196076))))

(assert (=> b!3928663 (= e!2430332 (and tp!1196082 tp!1196075))))

(declare-fun b!3928664 () Bool)

(declare-fun c!682531 () Bool)

(assert (=> b!3928664 (= c!682531 (isEmpty!24866 lt!1371753))))

(assert (=> b!3928664 (= lt!1371753 (tail!6063 prefixTokens!80))))

(assert (=> b!3928664 (= e!2430323 e!2430316)))

(declare-fun b!3928665 () Bool)

(assert (=> b!3928665 (= e!2430310 false)))

(declare-fun b!3928666 () Bool)

(declare-fun Unit!60101 () Unit!60092)

(assert (=> b!3928666 (= e!2430311 Unit!60101)))

(declare-fun res!1589534 () Bool)

(assert (=> start!368528 (=> (not res!1589534) (not e!2430319))))

(get-info :version)

(assert (=> start!368528 (= res!1589534 ((_ is Lexer!6099) thiss!20629))))

(assert (=> start!368528 e!2430319))

(assert (=> start!368528 e!2430334))

(assert (=> start!368528 true))

(assert (=> start!368528 e!2430326))

(assert (=> start!368528 e!2430327))

(declare-fun e!2430328 () Bool)

(assert (=> start!368528 e!2430328))

(declare-fun e!2430330 () Bool)

(assert (=> start!368528 e!2430330))

(declare-fun e!2430324 () Bool)

(assert (=> start!368528 e!2430324))

(declare-fun tp!1196079 () Bool)

(declare-fun b!3928637 () Bool)

(declare-fun e!2430313 () Bool)

(declare-fun inv!55913 (Token!12162) Bool)

(assert (=> b!3928637 (= e!2430330 (and (inv!55913 (h!47141 suffixTokens!72)) e!2430313 tp!1196079))))

(declare-fun b!3928667 () Bool)

(declare-fun res!1589552 () Bool)

(assert (=> b!3928667 (=> res!1589552 e!2430300)))

(assert (=> b!3928667 (= res!1589552 (or (not (= lt!1371757 (tuple2!40997 (_1!23632 lt!1371757) (_2!23632 lt!1371757)))) (= (_2!23631 (v!39257 lt!1371783)) suffix!1176)))))

(declare-fun b!3928668 () Bool)

(declare-fun Unit!60102 () Unit!60092)

(assert (=> b!3928668 (= e!2430320 Unit!60102)))

(declare-fun b!3928669 () Bool)

(declare-fun res!1589532 () Bool)

(assert (=> b!3928669 (=> (not res!1589532) (not e!2430319))))

(declare-fun isEmpty!24868 (List!41844) Bool)

(assert (=> b!3928669 (= res!1589532 (not (isEmpty!24868 prefix!426)))))

(declare-fun tp!1196080 () Bool)

(declare-fun b!3928670 () Bool)

(assert (=> b!3928670 (= e!2430328 (and (inv!55913 (h!47141 prefixTokens!80)) e!2430333 tp!1196080))))

(declare-fun b!3928671 () Bool)

(declare-fun res!1589554 () Bool)

(assert (=> b!3928671 (=> (not res!1589554) (not e!2430319))))

(declare-fun rulesInvariant!5444 (LexerInterface!6101 List!41846) Bool)

(assert (=> b!3928671 (= res!1589554 (rulesInvariant!5444 thiss!20629 rules!2768))))

(declare-fun b!3928672 () Bool)

(declare-fun e!2430329 () Bool)

(declare-fun e!2430322 () Bool)

(assert (=> b!3928672 (= e!2430329 e!2430322)))

(declare-fun res!1589536 () Bool)

(assert (=> b!3928672 (=> (not res!1589536) (not e!2430322))))

(assert (=> b!3928672 (= res!1589536 (= (lexList!1869 thiss!20629 rules!2768 suffix!1176) lt!1371741))))

(assert (=> b!3928672 (= lt!1371741 (tuple2!40997 suffixTokens!72 suffixResult!91))))

(assert (=> b!3928673 (= e!2430312 (and tp!1196074 tp!1196073))))

(declare-fun bm!284753 () Bool)

(assert (=> bm!284753 (= call!284758 (lexList!1869 thiss!20629 rules!2768 (_2!23631 lt!1371776)))))

(declare-fun b!3928674 () Bool)

(declare-fun tp!1196085 () Bool)

(assert (=> b!3928674 (= e!2430324 (and tp_is_empty!19805 tp!1196085))))

(declare-fun tp!1196077 () Bool)

(declare-fun b!3928675 () Bool)

(assert (=> b!3928675 (= e!2430313 (and (inv!21 (value!206226 (h!47141 suffixTokens!72))) e!2430306 tp!1196077))))

(declare-fun b!3928676 () Bool)

(assert (=> b!3928676 (= e!2430319 e!2430329)))

(declare-fun res!1589547 () Bool)

(assert (=> b!3928676 (=> (not res!1589547) (not e!2430329))))

(assert (=> b!3928676 (= res!1589547 (= lt!1371769 (tuple2!40997 lt!1371768 suffixResult!91)))))

(assert (=> b!3928676 (= lt!1371769 (lexList!1869 thiss!20629 rules!2768 lt!1371770))))

(assert (=> b!3928676 (= lt!1371768 (++!10781 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3928676 (= lt!1371770 (++!10782 prefix!426 suffix!1176))))

(declare-fun b!3928677 () Bool)

(assert (=> b!3928677 (= e!2430314 false)))

(declare-fun b!3928678 () Bool)

(assert (=> b!3928678 (= e!2430322 e!2430338)))

(declare-fun res!1589550 () Bool)

(assert (=> b!3928678 (=> (not res!1589550) (not e!2430338))))

(assert (=> b!3928678 (= res!1589550 ((_ is Some!8931) lt!1371783))))

(declare-fun maxPrefix!3405 (LexerInterface!6101 List!41846 List!41844) Option!8932)

(assert (=> b!3928678 (= lt!1371783 (maxPrefix!3405 thiss!20629 rules!2768 lt!1371770))))

(declare-fun b!3928679 () Bool)

(assert (=> b!3928679 (= e!2430325 e!2430304)))

(declare-fun res!1589545 () Bool)

(assert (=> b!3928679 (=> res!1589545 e!2430304)))

(assert (=> b!3928679 (= res!1589545 (not (= lt!1371778 prefix!426)))))

(assert (=> b!3928679 (= lt!1371778 (++!10782 lt!1371745 lt!1371772))))

(assert (=> b!3928679 (= lt!1371772 (getSuffix!2062 prefix!426 lt!1371745))))

(declare-fun b!3928680 () Bool)

(assert (=> b!3928680 (= e!2430331 (= (lexList!1869 thiss!20629 rules!2768 lt!1371780) lt!1371751))))

(assert (= (and start!368528 res!1589534) b!3928657))

(assert (= (and b!3928657 res!1589533) b!3928671))

(assert (= (and b!3928671 res!1589554) b!3928658))

(assert (= (and b!3928658 res!1589551) b!3928669))

(assert (= (and b!3928669 res!1589532) b!3928676))

(assert (= (and b!3928676 res!1589547) b!3928672))

(assert (= (and b!3928672 res!1589536) b!3928678))

(assert (= (and b!3928678 res!1589550) b!3928640))

(assert (= (and b!3928640 res!1589541) b!3928645))

(assert (= (and b!3928640 (not res!1589540)) b!3928650))

(assert (= (and b!3928650 (not res!1589535)) b!3928667))

(assert (= (and b!3928667 (not res!1589552)) b!3928646))

(assert (= (and b!3928646 c!682528) b!3928651))

(assert (= (and b!3928646 (not c!682528)) b!3928666))

(assert (= (and b!3928651 c!682529) b!3928664))

(assert (= (and b!3928651 (not c!682529)) b!3928656))

(assert (= (and b!3928664 c!682531) b!3928644))

(assert (= (and b!3928664 (not c!682531)) b!3928642))

(assert (= (and b!3928644 res!1589538) b!3928677))

(assert (= (and b!3928642 res!1589542) b!3928665))

(assert (= (or b!3928644 b!3928642) bm!284753))

(assert (= (and b!3928646 c!682527) b!3928639))

(assert (= (and b!3928646 (not c!682527)) b!3928668))

(assert (= (and b!3928646 (not res!1589546)) b!3928661))

(assert (= (and b!3928661 (not res!1589553)) b!3928636))

(assert (= (and b!3928636 (not res!1589539)) b!3928679))

(assert (= (and b!3928679 (not res!1589545)) b!3928654))

(assert (= (and b!3928654 (not res!1589537)) b!3928647))

(assert (= (and b!3928647 (not res!1589544)) b!3928655))

(assert (= (and b!3928655 (not res!1589543)) b!3928652))

(assert (= (and b!3928652 (not res!1589548)) b!3928634))

(assert (= (and b!3928634 c!682530) b!3928648))

(assert (= (and b!3928634 (not c!682530)) b!3928643))

(assert (= (and b!3928634 (not res!1589549)) b!3928680))

(assert (= (and start!368528 ((_ is Cons!41720) suffixResult!91)) b!3928641))

(assert (= (and start!368528 ((_ is Cons!41720) suffix!1176)) b!3928649))

(assert (= b!3928638 b!3928663))

(assert (= b!3928659 b!3928638))

(assert (= (and start!368528 ((_ is Cons!41722) rules!2768)) b!3928659))

(assert (= b!3928660 b!3928673))

(assert (= b!3928635 b!3928660))

(assert (= b!3928670 b!3928635))

(assert (= (and start!368528 ((_ is Cons!41721) prefixTokens!80)) b!3928670))

(assert (= b!3928653 b!3928662))

(assert (= b!3928675 b!3928653))

(assert (= b!3928637 b!3928675))

(assert (= (and start!368528 ((_ is Cons!41721) suffixTokens!72)) b!3928637))

(assert (= (and start!368528 ((_ is Cons!41720) prefix!426)) b!3928674))

(declare-fun m!4493501 () Bool)

(assert (=> b!3928642 m!4493501))

(declare-fun m!4493503 () Bool)

(assert (=> b!3928642 m!4493503))

(declare-fun m!4493505 () Bool)

(assert (=> b!3928675 m!4493505))

(declare-fun m!4493507 () Bool)

(assert (=> b!3928672 m!4493507))

(declare-fun m!4493509 () Bool)

(assert (=> b!3928658 m!4493509))

(declare-fun m!4493511 () Bool)

(assert (=> b!3928655 m!4493511))

(declare-fun m!4493513 () Bool)

(assert (=> b!3928655 m!4493513))

(declare-fun m!4493515 () Bool)

(assert (=> b!3928655 m!4493515))

(declare-fun m!4493517 () Bool)

(assert (=> b!3928671 m!4493517))

(declare-fun m!4493519 () Bool)

(assert (=> b!3928645 m!4493519))

(declare-fun m!4493521 () Bool)

(assert (=> bm!284753 m!4493521))

(declare-fun m!4493523 () Bool)

(assert (=> b!3928664 m!4493523))

(declare-fun m!4493525 () Bool)

(assert (=> b!3928664 m!4493525))

(declare-fun m!4493527 () Bool)

(assert (=> b!3928648 m!4493527))

(declare-fun m!4493529 () Bool)

(assert (=> b!3928634 m!4493529))

(declare-fun m!4493531 () Bool)

(assert (=> b!3928634 m!4493531))

(declare-fun m!4493533 () Bool)

(assert (=> b!3928634 m!4493533))

(declare-fun m!4493535 () Bool)

(assert (=> b!3928634 m!4493535))

(assert (=> b!3928634 m!4493535))

(declare-fun m!4493537 () Bool)

(assert (=> b!3928634 m!4493537))

(declare-fun m!4493539 () Bool)

(assert (=> b!3928654 m!4493539))

(declare-fun m!4493541 () Bool)

(assert (=> b!3928637 m!4493541))

(declare-fun m!4493543 () Bool)

(assert (=> b!3928650 m!4493543))

(declare-fun m!4493545 () Bool)

(assert (=> b!3928679 m!4493545))

(declare-fun m!4493547 () Bool)

(assert (=> b!3928679 m!4493547))

(declare-fun m!4493549 () Bool)

(assert (=> b!3928657 m!4493549))

(declare-fun m!4493551 () Bool)

(assert (=> b!3928644 m!4493551))

(declare-fun m!4493553 () Bool)

(assert (=> b!3928644 m!4493553))

(declare-fun m!4493555 () Bool)

(assert (=> b!3928647 m!4493555))

(declare-fun m!4493557 () Bool)

(assert (=> b!3928647 m!4493557))

(declare-fun m!4493559 () Bool)

(assert (=> b!3928647 m!4493559))

(declare-fun m!4493561 () Bool)

(assert (=> b!3928640 m!4493561))

(declare-fun m!4493563 () Bool)

(assert (=> b!3928640 m!4493563))

(declare-fun m!4493565 () Bool)

(assert (=> b!3928640 m!4493565))

(declare-fun m!4493567 () Bool)

(assert (=> b!3928640 m!4493567))

(declare-fun m!4493569 () Bool)

(assert (=> b!3928640 m!4493569))

(declare-fun m!4493571 () Bool)

(assert (=> b!3928640 m!4493571))

(declare-fun m!4493573 () Bool)

(assert (=> b!3928640 m!4493573))

(assert (=> b!3928640 m!4493561))

(declare-fun m!4493575 () Bool)

(assert (=> b!3928640 m!4493575))

(declare-fun m!4493577 () Bool)

(assert (=> b!3928640 m!4493577))

(declare-fun m!4493579 () Bool)

(assert (=> b!3928640 m!4493579))

(declare-fun m!4493581 () Bool)

(assert (=> b!3928640 m!4493581))

(assert (=> b!3928640 m!4493567))

(declare-fun m!4493583 () Bool)

(assert (=> b!3928640 m!4493583))

(declare-fun m!4493585 () Bool)

(assert (=> b!3928640 m!4493585))

(declare-fun m!4493587 () Bool)

(assert (=> b!3928640 m!4493587))

(declare-fun m!4493589 () Bool)

(assert (=> b!3928652 m!4493589))

(assert (=> b!3928652 m!4493525))

(declare-fun m!4493591 () Bool)

(assert (=> b!3928652 m!4493591))

(declare-fun m!4493593 () Bool)

(assert (=> b!3928652 m!4493593))

(declare-fun m!4493595 () Bool)

(assert (=> b!3928669 m!4493595))

(declare-fun m!4493597 () Bool)

(assert (=> b!3928646 m!4493597))

(declare-fun m!4493599 () Bool)

(assert (=> b!3928646 m!4493599))

(declare-fun m!4493601 () Bool)

(assert (=> b!3928651 m!4493601))

(declare-fun m!4493603 () Bool)

(assert (=> b!3928651 m!4493603))

(declare-fun m!4493605 () Bool)

(assert (=> b!3928651 m!4493605))

(declare-fun m!4493607 () Bool)

(assert (=> b!3928651 m!4493607))

(declare-fun m!4493609 () Bool)

(assert (=> b!3928651 m!4493609))

(declare-fun m!4493611 () Bool)

(assert (=> b!3928635 m!4493611))

(declare-fun m!4493613 () Bool)

(assert (=> b!3928661 m!4493613))

(declare-fun m!4493615 () Bool)

(assert (=> b!3928636 m!4493615))

(declare-fun m!4493617 () Bool)

(assert (=> b!3928636 m!4493617))

(declare-fun m!4493619 () Bool)

(assert (=> b!3928636 m!4493619))

(declare-fun m!4493621 () Bool)

(assert (=> b!3928636 m!4493621))

(declare-fun m!4493623 () Bool)

(assert (=> b!3928636 m!4493623))

(declare-fun m!4493625 () Bool)

(assert (=> b!3928676 m!4493625))

(declare-fun m!4493627 () Bool)

(assert (=> b!3928676 m!4493627))

(declare-fun m!4493629 () Bool)

(assert (=> b!3928676 m!4493629))

(declare-fun m!4493631 () Bool)

(assert (=> b!3928680 m!4493631))

(declare-fun m!4493633 () Bool)

(assert (=> b!3928678 m!4493633))

(declare-fun m!4493635 () Bool)

(assert (=> b!3928638 m!4493635))

(declare-fun m!4493637 () Bool)

(assert (=> b!3928638 m!4493637))

(declare-fun m!4493639 () Bool)

(assert (=> b!3928670 m!4493639))

(assert (=> b!3928639 m!4493621))

(assert (=> b!3928639 m!4493623))

(declare-fun m!4493641 () Bool)

(assert (=> b!3928639 m!4493641))

(declare-fun m!4493643 () Bool)

(assert (=> b!3928639 m!4493643))

(declare-fun m!4493645 () Bool)

(assert (=> b!3928660 m!4493645))

(declare-fun m!4493647 () Bool)

(assert (=> b!3928660 m!4493647))

(declare-fun m!4493649 () Bool)

(assert (=> b!3928653 m!4493649))

(declare-fun m!4493651 () Bool)

(assert (=> b!3928653 m!4493651))

(check-sat (not b!3928639) (not b!3928651) (not b!3928638) (not b!3928636) (not b!3928652) (not b!3928669) tp_is_empty!19805 b_and!299689 (not b!3928670) (not b!3928678) (not b!3928659) (not b!3928658) (not b!3928646) (not b!3928634) (not b!3928637) (not b!3928649) (not b_next!107901) (not b!3928655) (not b!3928650) (not b!3928679) b_and!299693 (not b!3928660) b_and!299697 (not b!3928672) (not b!3928642) (not b_next!107899) (not b!3928654) (not b!3928664) (not b!3928648) (not b_next!107893) (not b!3928640) (not b!3928675) (not b!3928674) (not b!3928644) b_and!299691 (not b!3928680) (not b_next!107897) (not b!3928657) b_and!299687 (not b!3928661) (not b!3928645) (not b!3928676) (not b_next!107903) (not b!3928671) (not b!3928641) (not b_next!107895) (not b!3928635) (not bm!284753) (not b!3928647) (not b!3928653) b_and!299695)
(check-sat (not b_next!107901) b_and!299693 (not b_next!107893) b_and!299691 (not b_next!107897) b_and!299687 (not b_next!107903) b_and!299689 (not b_next!107895) b_and!299695 b_and!299697 (not b_next!107899))
