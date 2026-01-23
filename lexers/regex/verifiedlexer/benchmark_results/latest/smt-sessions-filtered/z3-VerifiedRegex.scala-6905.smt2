; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!363980 () Bool)

(assert start!363980)

(declare-fun b!3876947 () Bool)

(declare-fun b_free!104869 () Bool)

(declare-fun b_next!105573 () Bool)

(assert (=> b!3876947 (= b_free!104869 (not b_next!105573))))

(declare-fun tp!1175365 () Bool)

(declare-fun b_and!290715 () Bool)

(assert (=> b!3876947 (= tp!1175365 b_and!290715)))

(declare-fun b_free!104871 () Bool)

(declare-fun b_next!105575 () Bool)

(assert (=> b!3876947 (= b_free!104871 (not b_next!105575))))

(declare-fun tp!1175362 () Bool)

(declare-fun b_and!290717 () Bool)

(assert (=> b!3876947 (= tp!1175362 b_and!290717)))

(declare-fun b!3876925 () Bool)

(declare-fun b_free!104873 () Bool)

(declare-fun b_next!105577 () Bool)

(assert (=> b!3876925 (= b_free!104873 (not b_next!105577))))

(declare-fun tp!1175368 () Bool)

(declare-fun b_and!290719 () Bool)

(assert (=> b!3876925 (= tp!1175368 b_and!290719)))

(declare-fun b_free!104875 () Bool)

(declare-fun b_next!105579 () Bool)

(assert (=> b!3876925 (= b_free!104875 (not b_next!105579))))

(declare-fun tp!1175358 () Bool)

(declare-fun b_and!290721 () Bool)

(assert (=> b!3876925 (= tp!1175358 b_and!290721)))

(declare-fun b!3876917 () Bool)

(declare-fun b_free!104877 () Bool)

(declare-fun b_next!105581 () Bool)

(assert (=> b!3876917 (= b_free!104877 (not b_next!105581))))

(declare-fun tp!1175363 () Bool)

(declare-fun b_and!290723 () Bool)

(assert (=> b!3876917 (= tp!1175363 b_and!290723)))

(declare-fun b_free!104879 () Bool)

(declare-fun b_next!105583 () Bool)

(assert (=> b!3876917 (= b_free!104879 (not b_next!105583))))

(declare-fun tp!1175354 () Bool)

(declare-fun b_and!290725 () Bool)

(assert (=> b!3876917 (= tp!1175354 b_and!290725)))

(declare-fun e!2398605 () Bool)

(assert (=> b!3876917 (= e!2398605 (and tp!1175363 tp!1175354))))

(declare-fun b!3876918 () Bool)

(declare-datatypes ((Unit!59206 0))(
  ( (Unit!59207) )
))
(declare-fun e!2398606 () Unit!59206)

(declare-fun Unit!59208 () Unit!59206)

(assert (=> b!3876918 (= e!2398606 Unit!59208)))

(declare-fun lt!1351820 () Unit!59206)

(declare-datatypes ((C!22792 0))(
  ( (C!22793 (val!13490 Int)) )
))
(declare-datatypes ((List!41334 0))(
  ( (Nil!41210) (Cons!41210 (h!46630 C!22792) (t!314977 List!41334)) )
))
(declare-fun prefix!426 () List!41334)

(declare-fun suffix!1176 () List!41334)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2360 (List!41334 List!41334) Unit!59206)

(assert (=> b!3876918 (= lt!1351820 (lemmaConcatTwoListThenFirstIsPrefix!2360 prefix!426 suffix!1176))))

(declare-fun lt!1351821 () List!41334)

(declare-fun isPrefix!3497 (List!41334 List!41334) Bool)

(assert (=> b!3876918 (isPrefix!3497 prefix!426 lt!1351821)))

(declare-fun lt!1351833 () Unit!59206)

(declare-fun lt!1351826 () List!41334)

(declare-fun lemmaIsPrefixSameLengthThenSameList!749 (List!41334 List!41334 List!41334) Unit!59206)

(assert (=> b!3876918 (= lt!1351833 (lemmaIsPrefixSameLengthThenSameList!749 lt!1351826 prefix!426 lt!1351821))))

(assert (=> b!3876918 (= lt!1351826 prefix!426)))

(declare-fun lt!1351830 () Unit!59206)

(declare-datatypes ((List!41335 0))(
  ( (Nil!41211) (Cons!41211 (h!46631 (_ BitVec 16)) (t!314978 List!41335)) )
))
(declare-datatypes ((TokenValue!6628 0))(
  ( (FloatLiteralValue!13256 (text!46841 List!41335)) (TokenValueExt!6627 (__x!25473 Int)) (Broken!33140 (value!202951 List!41335)) (Object!6751) (End!6628) (Def!6628) (Underscore!6628) (Match!6628) (Else!6628) (Error!6628) (Case!6628) (If!6628) (Extends!6628) (Abstract!6628) (Class!6628) (Val!6628) (DelimiterValue!13256 (del!6688 List!41335)) (KeywordValue!6634 (value!202952 List!41335)) (CommentValue!13256 (value!202953 List!41335)) (WhitespaceValue!13256 (value!202954 List!41335)) (IndentationValue!6628 (value!202955 List!41335)) (String!46857) (Int32!6628) (Broken!33141 (value!202956 List!41335)) (Boolean!6629) (Unit!59209) (OperatorValue!6631 (op!6688 List!41335)) (IdentifierValue!13256 (value!202957 List!41335)) (IdentifierValue!13257 (value!202958 List!41335)) (WhitespaceValue!13257 (value!202959 List!41335)) (True!13256) (False!13256) (Broken!33142 (value!202960 List!41335)) (Broken!33143 (value!202961 List!41335)) (True!13257) (RightBrace!6628) (RightBracket!6628) (Colon!6628) (Null!6628) (Comma!6628) (LeftBracket!6628) (False!13257) (LeftBrace!6628) (ImaginaryLiteralValue!6628 (text!46842 List!41335)) (StringLiteralValue!19884 (value!202962 List!41335)) (EOFValue!6628 (value!202963 List!41335)) (IdentValue!6628 (value!202964 List!41335)) (DelimiterValue!13257 (value!202965 List!41335)) (DedentValue!6628 (value!202966 List!41335)) (NewLineValue!6628 (value!202967 List!41335)) (IntegerValue!19884 (value!202968 (_ BitVec 32)) (text!46843 List!41335)) (IntegerValue!19885 (value!202969 Int) (text!46844 List!41335)) (Times!6628) (Or!6628) (Equal!6628) (Minus!6628) (Broken!33144 (value!202970 List!41335)) (And!6628) (Div!6628) (LessEqual!6628) (Mod!6628) (Concat!17931) (Not!6628) (Plus!6628) (SpaceValue!6628 (value!202971 List!41335)) (IntegerValue!19886 (value!202972 Int) (text!46845 List!41335)) (StringLiteralValue!19885 (text!46846 List!41335)) (FloatLiteralValue!13257 (text!46847 List!41335)) (BytesLiteralValue!6628 (value!202973 List!41335)) (CommentValue!13257 (value!202974 List!41335)) (StringLiteralValue!19886 (value!202975 List!41335)) (ErrorTokenValue!6628 (msg!6689 List!41335)) )
))
(declare-datatypes ((Regex!11303 0))(
  ( (ElementMatch!11303 (c!674518 C!22792)) (Concat!17932 (regOne!23118 Regex!11303) (regTwo!23118 Regex!11303)) (EmptyExpr!11303) (Star!11303 (reg!11632 Regex!11303)) (EmptyLang!11303) (Union!11303 (regOne!23119 Regex!11303) (regTwo!23119 Regex!11303)) )
))
(declare-datatypes ((String!46858 0))(
  ( (String!46859 (value!202976 String)) )
))
(declare-datatypes ((IArray!25223 0))(
  ( (IArray!25224 (innerList!12669 List!41334)) )
))
(declare-datatypes ((Conc!12609 0))(
  ( (Node!12609 (left!31630 Conc!12609) (right!31960 Conc!12609) (csize!25448 Int) (cheight!12820 Int)) (Leaf!19515 (xs!15915 IArray!25223) (csize!25449 Int)) (Empty!12609) )
))
(declare-datatypes ((BalanceConc!24812 0))(
  ( (BalanceConc!24813 (c!674519 Conc!12609)) )
))
(declare-datatypes ((TokenValueInjection!12684 0))(
  ( (TokenValueInjection!12685 (toValue!8826 Int) (toChars!8685 Int)) )
))
(declare-datatypes ((Rule!12596 0))(
  ( (Rule!12597 (regex!6398 Regex!11303) (tag!7258 String!46858) (isSeparator!6398 Bool) (transformation!6398 TokenValueInjection!12684)) )
))
(declare-datatypes ((Token!11934 0))(
  ( (Token!11935 (value!202977 TokenValue!6628) (rule!9294 Rule!12596) (size!30965 Int) (originalCharacters!6998 List!41334)) )
))
(declare-datatypes ((tuple2!40442 0))(
  ( (tuple2!40443 (_1!23355 Token!11934) (_2!23355 List!41334)) )
))
(declare-datatypes ((Option!8816 0))(
  ( (None!8815) (Some!8815 (v!39113 tuple2!40442)) )
))
(declare-fun lt!1351798 () Option!8816)

(declare-fun lemmaSamePrefixThenSameSuffix!1718 (List!41334 List!41334 List!41334 List!41334 List!41334) Unit!59206)

(assert (=> b!3876918 (= lt!1351830 (lemmaSamePrefixThenSameSuffix!1718 lt!1351826 (_2!23355 (v!39113 lt!1351798)) prefix!426 suffix!1176 lt!1351821))))

(assert (=> b!3876918 false))

(declare-fun b!3876919 () Bool)

(declare-fun res!1570725 () Bool)

(declare-fun e!2398586 () Bool)

(assert (=> b!3876919 (=> (not res!1570725) (not e!2398586))))

(declare-datatypes ((List!41336 0))(
  ( (Nil!41212) (Cons!41212 (h!46632 Token!11934) (t!314979 List!41336)) )
))
(declare-fun prefixTokens!80 () List!41336)

(declare-fun isEmpty!24464 (List!41336) Bool)

(assert (=> b!3876919 (= res!1570725 (not (isEmpty!24464 prefixTokens!80)))))

(declare-fun b!3876920 () Bool)

(declare-fun e!2398591 () Bool)

(declare-fun e!2398599 () Bool)

(assert (=> b!3876920 (= e!2398591 e!2398599)))

(declare-fun res!1570746 () Bool)

(assert (=> b!3876920 (=> res!1570746 e!2398599)))

(declare-fun lt!1351807 () List!41334)

(declare-fun lt!1351795 () List!41334)

(declare-fun lt!1351791 () List!41334)

(assert (=> b!3876920 (= res!1570746 (or (not (= lt!1351821 lt!1351795)) (not (= lt!1351821 lt!1351791)) (not (= lt!1351807 lt!1351791))))))

(assert (=> b!3876920 (= lt!1351795 lt!1351791)))

(declare-fun lt!1351818 () List!41334)

(declare-fun ++!10553 (List!41334 List!41334) List!41334)

(assert (=> b!3876920 (= lt!1351791 (++!10553 lt!1351826 lt!1351818))))

(declare-fun lt!1351813 () List!41334)

(assert (=> b!3876920 (= lt!1351818 (++!10553 lt!1351813 suffix!1176))))

(declare-fun lt!1351801 () Unit!59206)

(declare-fun lemmaConcatAssociativity!2267 (List!41334 List!41334 List!41334) Unit!59206)

(assert (=> b!3876920 (= lt!1351801 (lemmaConcatAssociativity!2267 lt!1351826 lt!1351813 suffix!1176))))

(declare-fun e!2398579 () Bool)

(declare-fun e!2398593 () Bool)

(declare-fun b!3876921 () Bool)

(declare-datatypes ((List!41337 0))(
  ( (Nil!41213) (Cons!41213 (h!46633 Rule!12596) (t!314980 List!41337)) )
))
(declare-fun rules!2768 () List!41337)

(declare-fun tp!1175355 () Bool)

(declare-fun inv!55366 (String!46858) Bool)

(declare-fun inv!55369 (TokenValueInjection!12684) Bool)

(assert (=> b!3876921 (= e!2398593 (and tp!1175355 (inv!55366 (tag!7258 (h!46633 rules!2768))) (inv!55369 (transformation!6398 (h!46633 rules!2768))) e!2398579))))

(declare-fun b!3876922 () Bool)

(declare-fun Unit!59210 () Unit!59206)

(assert (=> b!3876922 (= e!2398606 Unit!59210)))

(declare-fun b!3876923 () Bool)

(declare-fun e!2398603 () Unit!59206)

(declare-fun Unit!59211 () Unit!59206)

(assert (=> b!3876923 (= e!2398603 Unit!59211)))

(declare-fun lt!1351839 () Int)

(declare-fun size!30966 (List!41334) Int)

(assert (=> b!3876923 (= lt!1351839 (size!30966 lt!1351821))))

(declare-datatypes ((LexerInterface!5987 0))(
  ( (LexerInterfaceExt!5984 (__x!25474 Int)) (Lexer!5985) )
))
(declare-fun thiss!20629 () LexerInterface!5987)

(declare-fun lt!1351805 () Unit!59206)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1271 (LexerInterface!5987 List!41337 List!41334 List!41334 List!41334 Rule!12596) Unit!59206)

(assert (=> b!3876923 (= lt!1351805 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1271 thiss!20629 rules!2768 lt!1351826 lt!1351821 (_2!23355 (v!39113 lt!1351798)) (rule!9294 (_1!23355 (v!39113 lt!1351798)))))))

(declare-fun lt!1351790 () Int)

(declare-fun lt!1351822 () TokenValue!6628)

(declare-fun maxPrefixOneRule!2373 (LexerInterface!5987 Rule!12596 List!41334) Option!8816)

(assert (=> b!3876923 (= (maxPrefixOneRule!2373 thiss!20629 (rule!9294 (_1!23355 (v!39113 lt!1351798))) lt!1351821) (Some!8815 (tuple2!40443 (Token!11935 lt!1351822 (rule!9294 (_1!23355 (v!39113 lt!1351798))) lt!1351790 lt!1351826) (_2!23355 (v!39113 lt!1351798)))))))

(declare-fun lt!1351802 () tuple2!40442)

(declare-fun get!13637 (Option!8816) tuple2!40442)

(assert (=> b!3876923 (= lt!1351802 (get!13637 lt!1351798))))

(declare-fun c!674515 () Bool)

(declare-fun lt!1351797 () Int)

(assert (=> b!3876923 (= c!674515 (< (size!30966 (_2!23355 lt!1351802)) lt!1351797))))

(declare-fun lt!1351804 () Unit!59206)

(declare-fun e!2398580 () Unit!59206)

(assert (=> b!3876923 (= lt!1351804 e!2398580)))

(assert (=> b!3876923 false))

(declare-fun b!3876924 () Bool)

(declare-fun e!2398578 () Bool)

(declare-fun e!2398614 () Bool)

(assert (=> b!3876924 (= e!2398578 e!2398614)))

(declare-fun res!1570747 () Bool)

(assert (=> b!3876924 (=> (not res!1570747) (not e!2398614))))

(declare-datatypes ((tuple2!40444 0))(
  ( (tuple2!40445 (_1!23356 List!41336) (_2!23356 List!41334)) )
))
(declare-fun lt!1351794 () tuple2!40444)

(declare-fun lexList!1755 (LexerInterface!5987 List!41337 List!41334) tuple2!40444)

(assert (=> b!3876924 (= res!1570747 (= (lexList!1755 thiss!20629 rules!2768 suffix!1176) lt!1351794))))

(declare-fun suffixTokens!72 () List!41336)

(declare-fun suffixResult!91 () List!41334)

(assert (=> b!3876924 (= lt!1351794 (tuple2!40445 suffixTokens!72 suffixResult!91))))

(declare-fun e!2398589 () Bool)

(assert (=> b!3876925 (= e!2398589 (and tp!1175368 tp!1175358))))

(declare-fun b!3876926 () Bool)

(declare-fun res!1570743 () Bool)

(declare-fun e!2398574 () Bool)

(assert (=> b!3876926 (=> res!1570743 e!2398574)))

(declare-fun lt!1351806 () tuple2!40444)

(assert (=> b!3876926 (= res!1570743 (not (= (lexList!1755 thiss!20629 rules!2768 lt!1351818) lt!1351806)))))

(declare-fun tp!1175360 () Bool)

(declare-fun e!2398604 () Bool)

(declare-fun b!3876927 () Bool)

(assert (=> b!3876927 (= e!2398604 (and tp!1175360 (inv!55366 (tag!7258 (rule!9294 (h!46632 suffixTokens!72)))) (inv!55369 (transformation!6398 (rule!9294 (h!46632 suffixTokens!72)))) e!2398589))))

(declare-fun b!3876928 () Bool)

(declare-fun e!2398588 () Bool)

(declare-fun tp_is_empty!19577 () Bool)

(declare-fun tp!1175357 () Bool)

(assert (=> b!3876928 (= e!2398588 (and tp_is_empty!19577 tp!1175357))))

(declare-fun b!3876929 () Bool)

(declare-fun res!1570723 () Bool)

(declare-fun e!2398573 () Bool)

(assert (=> b!3876929 (=> res!1570723 e!2398573)))

(assert (=> b!3876929 (= res!1570723 (not (isPrefix!3497 lt!1351813 (_2!23355 (v!39113 lt!1351798)))))))

(declare-fun b!3876930 () Bool)

(declare-fun e!2398612 () Bool)

(declare-fun e!2398607 () Bool)

(assert (=> b!3876930 (= e!2398612 (not e!2398607))))

(declare-fun res!1570726 () Bool)

(assert (=> b!3876930 (=> res!1570726 e!2398607)))

(assert (=> b!3876930 (= res!1570726 (not (= lt!1351807 lt!1351821)))))

(declare-fun lt!1351792 () tuple2!40444)

(assert (=> b!3876930 (= lt!1351792 (lexList!1755 thiss!20629 rules!2768 (_2!23355 (v!39113 lt!1351798))))))

(declare-fun lt!1351827 () List!41334)

(assert (=> b!3876930 (and (= (size!30965 (_1!23355 (v!39113 lt!1351798))) lt!1351790) (= (originalCharacters!6998 (_1!23355 (v!39113 lt!1351798))) lt!1351826) (= (tuple2!40443 (_1!23355 (v!39113 lt!1351798)) (_2!23355 (v!39113 lt!1351798))) (tuple2!40443 (Token!11935 lt!1351822 (rule!9294 (_1!23355 (v!39113 lt!1351798))) lt!1351790 lt!1351826) lt!1351827)))))

(assert (=> b!3876930 (= lt!1351790 (size!30966 lt!1351826))))

(declare-fun e!2398596 () Bool)

(assert (=> b!3876930 e!2398596))

(declare-fun res!1570724 () Bool)

(assert (=> b!3876930 (=> (not res!1570724) (not e!2398596))))

(assert (=> b!3876930 (= res!1570724 (= (value!202977 (_1!23355 (v!39113 lt!1351798))) lt!1351822))))

(declare-fun apply!9641 (TokenValueInjection!12684 BalanceConc!24812) TokenValue!6628)

(declare-fun seqFromList!4669 (List!41334) BalanceConc!24812)

(assert (=> b!3876930 (= lt!1351822 (apply!9641 (transformation!6398 (rule!9294 (_1!23355 (v!39113 lt!1351798)))) (seqFromList!4669 lt!1351826)))))

(assert (=> b!3876930 (= (_2!23355 (v!39113 lt!1351798)) lt!1351827)))

(declare-fun lt!1351793 () Unit!59206)

(assert (=> b!3876930 (= lt!1351793 (lemmaSamePrefixThenSameSuffix!1718 lt!1351826 (_2!23355 (v!39113 lt!1351798)) lt!1351826 lt!1351827 lt!1351821))))

(declare-fun getSuffix!1952 (List!41334 List!41334) List!41334)

(assert (=> b!3876930 (= lt!1351827 (getSuffix!1952 lt!1351821 lt!1351826))))

(assert (=> b!3876930 (isPrefix!3497 lt!1351826 lt!1351807)))

(assert (=> b!3876930 (= lt!1351807 (++!10553 lt!1351826 (_2!23355 (v!39113 lt!1351798))))))

(declare-fun lt!1351796 () Unit!59206)

(assert (=> b!3876930 (= lt!1351796 (lemmaConcatTwoListThenFirstIsPrefix!2360 lt!1351826 (_2!23355 (v!39113 lt!1351798))))))

(declare-fun list!15326 (BalanceConc!24812) List!41334)

(declare-fun charsOf!4226 (Token!11934) BalanceConc!24812)

(assert (=> b!3876930 (= lt!1351826 (list!15326 (charsOf!4226 (_1!23355 (v!39113 lt!1351798)))))))

(declare-fun ruleValid!2350 (LexerInterface!5987 Rule!12596) Bool)

(assert (=> b!3876930 (ruleValid!2350 thiss!20629 (rule!9294 (_1!23355 (v!39113 lt!1351798))))))

(declare-fun lt!1351841 () Unit!59206)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1430 (LexerInterface!5987 Rule!12596 List!41337) Unit!59206)

(assert (=> b!3876930 (= lt!1351841 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1430 thiss!20629 (rule!9294 (_1!23355 (v!39113 lt!1351798))) rules!2768))))

(declare-fun lt!1351789 () Unit!59206)

(declare-fun lemmaCharactersSize!1059 (Token!11934) Unit!59206)

(assert (=> b!3876930 (= lt!1351789 (lemmaCharactersSize!1059 (_1!23355 (v!39113 lt!1351798))))))

(declare-fun b!3876931 () Bool)

(declare-fun res!1570749 () Bool)

(declare-fun e!2398572 () Bool)

(assert (=> b!3876931 (=> res!1570749 e!2398572)))

(declare-fun head!8224 (List!41336) Token!11934)

(assert (=> b!3876931 (= res!1570749 (not (= (head!8224 prefixTokens!80) (_1!23355 (v!39113 lt!1351798)))))))

(declare-fun b!3876932 () Bool)

(declare-fun e!2398594 () Unit!59206)

(declare-fun Unit!59212 () Unit!59206)

(assert (=> b!3876932 (= e!2398594 Unit!59212)))

(declare-fun lt!1351832 () Unit!59206)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!482 (List!41334 List!41334 List!41334 List!41334) Unit!59206)

(assert (=> b!3876932 (= lt!1351832 (lemmaConcatSameAndSameSizesThenSameLists!482 lt!1351826 (_2!23355 (v!39113 lt!1351798)) lt!1351826 (_2!23355 lt!1351802)))))

(assert (=> b!3876932 (= (_2!23355 (v!39113 lt!1351798)) (_2!23355 lt!1351802))))

(declare-fun lt!1351831 () Unit!59206)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!58 (LexerInterface!5987 List!41337 List!41334 List!41334 List!41336 List!41334) Unit!59206)

(assert (=> b!3876932 (= lt!1351831 (lemmaLexWithSmallerInputCannotProduceSameResults!58 thiss!20629 rules!2768 suffix!1176 (_2!23355 lt!1351802) suffixTokens!72 suffixResult!91))))

(declare-fun res!1570731 () Bool)

(declare-fun call!282816 () tuple2!40444)

(assert (=> b!3876932 (= res!1570731 (not (= call!282816 lt!1351794)))))

(declare-fun e!2398584 () Bool)

(assert (=> b!3876932 (=> (not res!1570731) (not e!2398584))))

(assert (=> b!3876932 e!2398584))

(declare-fun b!3876933 () Bool)

(declare-fun Unit!59213 () Unit!59206)

(assert (=> b!3876933 (= e!2398580 Unit!59213)))

(declare-fun tp!1175367 () Bool)

(declare-fun b!3876934 () Bool)

(declare-fun e!2398576 () Bool)

(declare-fun e!2398597 () Bool)

(declare-fun inv!55370 (Token!11934) Bool)

(assert (=> b!3876934 (= e!2398597 (and (inv!55370 (h!46632 suffixTokens!72)) e!2398576 tp!1175367))))

(declare-fun b!3876935 () Bool)

(declare-fun c!674513 () Bool)

(declare-fun lt!1351817 () List!41336)

(assert (=> b!3876935 (= c!674513 (isEmpty!24464 lt!1351817))))

(declare-fun tail!5941 (List!41336) List!41336)

(assert (=> b!3876935 (= lt!1351817 (tail!5941 prefixTokens!80))))

(assert (=> b!3876935 (= e!2398580 e!2398594)))

(declare-fun b!3876936 () Bool)

(assert (=> b!3876936 (= e!2398596 (= (size!30965 (_1!23355 (v!39113 lt!1351798))) (size!30966 (originalCharacters!6998 (_1!23355 (v!39113 lt!1351798))))))))

(declare-fun b!3876937 () Bool)

(declare-fun res!1570737 () Bool)

(assert (=> b!3876937 (=> (not res!1570737) (not e!2398586))))

(declare-fun rulesInvariant!5330 (LexerInterface!5987 List!41337) Bool)

(assert (=> b!3876937 (= res!1570737 (rulesInvariant!5330 thiss!20629 rules!2768))))

(declare-fun b!3876938 () Bool)

(declare-fun e!2398610 () Bool)

(declare-fun tp!1175361 () Bool)

(assert (=> b!3876938 (= e!2398610 (and tp_is_empty!19577 tp!1175361))))

(declare-fun b!3876939 () Bool)

(assert (=> b!3876939 (= e!2398574 e!2398573)))

(declare-fun res!1570739 () Bool)

(assert (=> b!3876939 (=> res!1570739 e!2398573)))

(assert (=> b!3876939 (= res!1570739 (not (= lt!1351798 (Some!8815 (tuple2!40443 (_1!23355 (v!39113 lt!1351798)) (_2!23355 (v!39113 lt!1351798)))))))))

(declare-fun lt!1351809 () List!41336)

(assert (=> b!3876939 (= (lexList!1755 thiss!20629 rules!2768 lt!1351813) (tuple2!40445 lt!1351809 Nil!41210))))

(declare-fun lt!1351808 () Unit!59206)

(declare-fun lemmaLexThenLexPrefix!587 (LexerInterface!5987 List!41337 List!41334 List!41334 List!41336 List!41336 List!41334) Unit!59206)

(assert (=> b!3876939 (= lt!1351808 (lemmaLexThenLexPrefix!587 thiss!20629 rules!2768 lt!1351813 suffix!1176 lt!1351809 suffixTokens!72 suffixResult!91))))

(declare-fun e!2398613 () Bool)

(declare-fun b!3876940 () Bool)

(declare-fun e!2398581 () Bool)

(declare-fun tp!1175364 () Bool)

(declare-fun inv!21 (TokenValue!6628) Bool)

(assert (=> b!3876940 (= e!2398613 (and (inv!21 (value!202977 (h!46632 prefixTokens!80))) e!2398581 tp!1175364))))

(declare-fun b!3876941 () Bool)

(declare-fun e!2398575 () Bool)

(assert (=> b!3876941 (= e!2398575 e!2398591)))

(declare-fun res!1570730 () Bool)

(assert (=> b!3876941 (=> res!1570730 e!2398591)))

(assert (=> b!3876941 (= res!1570730 (or (not (= lt!1351795 lt!1351821)) (not (= lt!1351795 lt!1351807))))))

(declare-fun lt!1351814 () List!41334)

(assert (=> b!3876941 (= lt!1351795 (++!10553 lt!1351814 suffix!1176))))

(declare-fun b!3876942 () Bool)

(declare-fun e!2398587 () Bool)

(assert (=> b!3876942 (= e!2398587 e!2398574)))

(declare-fun res!1570740 () Bool)

(assert (=> b!3876942 (=> res!1570740 e!2398574)))

(declare-fun lt!1351816 () List!41336)

(declare-fun lt!1351803 () List!41336)

(assert (=> b!3876942 (= res!1570740 (not (= lt!1351816 lt!1351803)))))

(declare-fun lt!1351819 () List!41336)

(declare-fun lt!1351799 () List!41336)

(declare-fun ++!10554 (List!41336 List!41336) List!41336)

(assert (=> b!3876942 (= lt!1351816 (++!10554 lt!1351819 lt!1351799))))

(assert (=> b!3876942 (= lt!1351816 (++!10554 (++!10554 lt!1351819 lt!1351809) suffixTokens!72))))

(declare-fun lt!1351829 () Unit!59206)

(declare-fun lemmaConcatAssociativity!2268 (List!41336 List!41336 List!41336) Unit!59206)

(assert (=> b!3876942 (= lt!1351829 (lemmaConcatAssociativity!2268 lt!1351819 lt!1351809 suffixTokens!72))))

(declare-fun lt!1351812 () Unit!59206)

(declare-fun e!2398608 () Unit!59206)

(assert (=> b!3876942 (= lt!1351812 e!2398608)))

(declare-fun c!674517 () Bool)

(assert (=> b!3876942 (= c!674517 (isEmpty!24464 lt!1351809))))

(declare-fun b!3876943 () Bool)

(declare-fun e!2398583 () Bool)

(assert (=> b!3876943 (= e!2398583 false)))

(declare-fun b!3876944 () Bool)

(declare-fun e!2398585 () Bool)

(declare-fun tp!1175369 () Bool)

(assert (=> b!3876944 (= e!2398585 (and tp_is_empty!19577 tp!1175369))))

(declare-fun b!3876945 () Bool)

(assert (=> b!3876945 (= e!2398584 false)))

(declare-fun b!3876946 () Bool)

(declare-fun res!1570741 () Bool)

(assert (=> b!3876946 (=> (not res!1570741) (not e!2398586))))

(declare-fun isEmpty!24465 (List!41334) Bool)

(assert (=> b!3876946 (= res!1570741 (not (isEmpty!24465 prefix!426)))))

(assert (=> b!3876947 (= e!2398579 (and tp!1175365 tp!1175362))))

(declare-fun b!3876948 () Bool)

(declare-fun e!2398609 () Bool)

(assert (=> b!3876948 (= e!2398609 e!2398575)))

(declare-fun res!1570738 () Bool)

(assert (=> b!3876948 (=> res!1570738 e!2398575)))

(assert (=> b!3876948 (= res!1570738 (not (= lt!1351814 prefix!426)))))

(assert (=> b!3876948 (= lt!1351814 (++!10553 lt!1351826 lt!1351813))))

(assert (=> b!3876948 (= lt!1351813 (getSuffix!1952 prefix!426 lt!1351826))))

(declare-fun b!3876949 () Bool)

(assert (=> b!3876949 (= e!2398572 e!2398609)))

(declare-fun res!1570742 () Bool)

(assert (=> b!3876949 (=> res!1570742 e!2398609)))

(declare-fun lt!1351824 () Int)

(assert (=> b!3876949 (= res!1570742 (>= lt!1351790 lt!1351824))))

(assert (=> b!3876949 (= lt!1351824 (size!30966 prefix!426))))

(assert (=> b!3876949 (isPrefix!3497 lt!1351826 prefix!426)))

(declare-fun lt!1351823 () Unit!59206)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!247 (List!41334 List!41334 List!41334) Unit!59206)

(assert (=> b!3876949 (= lt!1351823 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!247 prefix!426 lt!1351826 lt!1351821))))

(assert (=> b!3876949 (isPrefix!3497 prefix!426 lt!1351821)))

(declare-fun lt!1351837 () Unit!59206)

(assert (=> b!3876949 (= lt!1351837 (lemmaConcatTwoListThenFirstIsPrefix!2360 prefix!426 suffix!1176))))

(declare-fun b!3876950 () Bool)

(declare-fun Unit!59214 () Unit!59206)

(assert (=> b!3876950 (= e!2398608 Unit!59214)))

(declare-fun b!3876951 () Bool)

(declare-fun Unit!59215 () Unit!59206)

(assert (=> b!3876951 (= e!2398603 Unit!59215)))

(declare-fun b!3876952 () Bool)

(assert (=> b!3876952 (= e!2398586 e!2398578)))

(declare-fun res!1570748 () Bool)

(assert (=> b!3876952 (=> (not res!1570748) (not e!2398578))))

(declare-fun lt!1351800 () tuple2!40444)

(assert (=> b!3876952 (= res!1570748 (= lt!1351800 (tuple2!40445 lt!1351803 suffixResult!91)))))

(assert (=> b!3876952 (= lt!1351800 (lexList!1755 thiss!20629 rules!2768 lt!1351821))))

(assert (=> b!3876952 (= lt!1351803 (++!10554 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3876952 (= lt!1351821 (++!10553 prefix!426 suffix!1176))))

(declare-fun b!3876953 () Bool)

(assert (=> b!3876953 (= e!2398614 e!2398612)))

(declare-fun res!1570733 () Bool)

(assert (=> b!3876953 (=> (not res!1570733) (not e!2398612))))

(get-info :version)

(assert (=> b!3876953 (= res!1570733 ((_ is Some!8815) lt!1351798))))

(declare-fun maxPrefix!3291 (LexerInterface!5987 List!41337 List!41334) Option!8816)

(assert (=> b!3876953 (= lt!1351798 (maxPrefix!3291 thiss!20629 rules!2768 lt!1351821))))

(declare-fun b!3876954 () Bool)

(declare-fun e!2398602 () Bool)

(assert (=> b!3876954 (= e!2398602 e!2398587)))

(declare-fun res!1570751 () Bool)

(assert (=> b!3876954 (=> res!1570751 e!2398587)))

(assert (=> b!3876954 (= res!1570751 (not (= lt!1351792 lt!1351806)))))

(assert (=> b!3876954 (= lt!1351806 (tuple2!40445 lt!1351799 suffixResult!91))))

(assert (=> b!3876954 (= lt!1351799 (++!10554 lt!1351809 suffixTokens!72))))

(assert (=> b!3876954 (= lt!1351809 (tail!5941 prefixTokens!80))))

(assert (=> b!3876954 (isPrefix!3497 lt!1351813 lt!1351818)))

(declare-fun lt!1351828 () Unit!59206)

(assert (=> b!3876954 (= lt!1351828 (lemmaConcatTwoListThenFirstIsPrefix!2360 lt!1351813 suffix!1176))))

(declare-fun res!1570735 () Bool)

(assert (=> start!363980 (=> (not res!1570735) (not e!2398586))))

(assert (=> start!363980 (= res!1570735 ((_ is Lexer!5985) thiss!20629))))

(assert (=> start!363980 e!2398586))

(assert (=> start!363980 e!2398588))

(assert (=> start!363980 true))

(assert (=> start!363980 e!2398610))

(declare-fun e!2398582 () Bool)

(assert (=> start!363980 e!2398582))

(declare-fun e!2398577 () Bool)

(assert (=> start!363980 e!2398577))

(assert (=> start!363980 e!2398597))

(assert (=> start!363980 e!2398585))

(declare-fun bm!282811 () Bool)

(assert (=> bm!282811 (= call!282816 (lexList!1755 thiss!20629 rules!2768 (_2!23355 lt!1351802)))))

(declare-fun b!3876955 () Bool)

(declare-fun res!1570750 () Bool)

(declare-fun e!2398595 () Bool)

(assert (=> b!3876955 (=> res!1570750 e!2398595)))

(assert (=> b!3876955 (= res!1570750 (or (not (= lt!1351792 (tuple2!40445 (_1!23356 lt!1351792) (_2!23356 lt!1351792)))) (= (_2!23355 (v!39113 lt!1351798)) suffix!1176)))))

(declare-fun b!3876956 () Bool)

(declare-fun e!2398600 () Bool)

(assert (=> b!3876956 (= e!2398573 e!2398600)))

(declare-fun res!1570745 () Bool)

(assert (=> b!3876956 (=> res!1570745 e!2398600)))

(assert (=> b!3876956 (= res!1570745 (not (isPrefix!3497 Nil!41210 suffix!1176)))))

(assert (=> b!3876956 (isPrefix!3497 Nil!41210 (++!10553 Nil!41210 suffix!1176))))

(declare-fun lt!1351838 () Unit!59206)

(assert (=> b!3876956 (= lt!1351838 (lemmaConcatTwoListThenFirstIsPrefix!2360 Nil!41210 suffix!1176))))

(declare-fun b!3876957 () Bool)

(assert (=> b!3876957 (= e!2398600 true)))

(declare-fun lt!1351810 () List!41334)

(assert (=> b!3876957 (= lt!1351810 (++!10553 prefix!426 Nil!41210))))

(declare-fun tp!1175359 () Bool)

(declare-fun b!3876958 () Bool)

(assert (=> b!3876958 (= e!2398581 (and tp!1175359 (inv!55366 (tag!7258 (rule!9294 (h!46632 prefixTokens!80)))) (inv!55369 (transformation!6398 (rule!9294 (h!46632 prefixTokens!80)))) e!2398605))))

(declare-fun b!3876959 () Bool)

(assert (=> b!3876959 (= e!2398599 e!2398602)))

(declare-fun res!1570729 () Bool)

(assert (=> b!3876959 (=> res!1570729 e!2398602)))

(assert (=> b!3876959 (= res!1570729 (not (= lt!1351818 (_2!23355 (v!39113 lt!1351798)))))))

(assert (=> b!3876959 (= (_2!23355 (v!39113 lt!1351798)) lt!1351818)))

(declare-fun lt!1351840 () Unit!59206)

(assert (=> b!3876959 (= lt!1351840 (lemmaSamePrefixThenSameSuffix!1718 lt!1351826 (_2!23355 (v!39113 lt!1351798)) lt!1351826 lt!1351818 lt!1351821))))

(assert (=> b!3876959 (isPrefix!3497 lt!1351826 lt!1351791)))

(declare-fun lt!1351825 () Unit!59206)

(assert (=> b!3876959 (= lt!1351825 (lemmaConcatTwoListThenFirstIsPrefix!2360 lt!1351826 lt!1351818))))

(declare-fun b!3876960 () Bool)

(declare-fun Unit!59216 () Unit!59206)

(assert (=> b!3876960 (= e!2398608 Unit!59216)))

(declare-fun lt!1351836 () Unit!59206)

(assert (=> b!3876960 (= lt!1351836 (lemmaLexWithSmallerInputCannotProduceSameResults!58 thiss!20629 rules!2768 (_2!23355 (v!39113 lt!1351798)) suffix!1176 suffixTokens!72 suffixResult!91))))

(assert (=> b!3876960 false))

(declare-fun b!3876961 () Bool)

(assert (=> b!3876961 (= e!2398607 e!2398595)))

(declare-fun res!1570744 () Bool)

(assert (=> b!3876961 (=> res!1570744 e!2398595)))

(assert (=> b!3876961 (= res!1570744 (not (= lt!1351800 (tuple2!40445 (++!10554 lt!1351819 (_1!23356 lt!1351792)) (_2!23356 lt!1351792)))))))

(assert (=> b!3876961 (= lt!1351819 (Cons!41212 (_1!23355 (v!39113 lt!1351798)) Nil!41212))))

(declare-fun tp!1175356 () Bool)

(declare-fun b!3876962 () Bool)

(assert (=> b!3876962 (= e!2398576 (and (inv!21 (value!202977 (h!46632 suffixTokens!72))) e!2398604 tp!1175356))))

(declare-fun b!3876963 () Bool)

(declare-fun res!1570734 () Bool)

(assert (=> b!3876963 (=> res!1570734 e!2398573)))

(assert (=> b!3876963 (= res!1570734 (<= lt!1351797 (size!30966 Nil!41210)))))

(declare-fun b!3876964 () Bool)

(declare-fun res!1570722 () Bool)

(assert (=> b!3876964 (=> res!1570722 e!2398600)))

(assert (=> b!3876964 (= res!1570722 (<= lt!1351824 lt!1351790))))

(declare-fun b!3876965 () Bool)

(assert (=> b!3876965 (= e!2398595 e!2398572)))

(declare-fun res!1570732 () Bool)

(assert (=> b!3876965 (=> res!1570732 e!2398572)))

(declare-fun lt!1351815 () Int)

(assert (=> b!3876965 (= res!1570732 (<= lt!1351815 lt!1351797))))

(declare-fun lt!1351834 () Unit!59206)

(assert (=> b!3876965 (= lt!1351834 e!2398606)))

(declare-fun c!674516 () Bool)

(assert (=> b!3876965 (= c!674516 (= lt!1351815 lt!1351797))))

(declare-fun lt!1351811 () Unit!59206)

(assert (=> b!3876965 (= lt!1351811 e!2398603)))

(declare-fun c!674514 () Bool)

(assert (=> b!3876965 (= c!674514 (< lt!1351815 lt!1351797))))

(assert (=> b!3876965 (= lt!1351797 (size!30966 suffix!1176))))

(assert (=> b!3876965 (= lt!1351815 (size!30966 (_2!23355 (v!39113 lt!1351798))))))

(declare-fun b!3876966 () Bool)

(declare-fun Unit!59217 () Unit!59206)

(assert (=> b!3876966 (= e!2398594 Unit!59217)))

(declare-fun lt!1351835 () Unit!59206)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!58 (LexerInterface!5987 List!41337 List!41334 List!41334 List!41336 List!41334 List!41336) Unit!59206)

(assert (=> b!3876966 (= lt!1351835 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!58 thiss!20629 rules!2768 suffix!1176 (_2!23355 lt!1351802) suffixTokens!72 suffixResult!91 lt!1351817))))

(declare-fun res!1570736 () Bool)

(assert (=> b!3876966 (= res!1570736 (not (= call!282816 (tuple2!40445 (++!10554 lt!1351817 suffixTokens!72) suffixResult!91))))))

(assert (=> b!3876966 (=> (not res!1570736) (not e!2398583))))

(assert (=> b!3876966 e!2398583))

(declare-fun b!3876967 () Bool)

(declare-fun res!1570728 () Bool)

(assert (=> b!3876967 (=> res!1570728 e!2398573)))

(assert (=> b!3876967 (= res!1570728 (isEmpty!24465 suffix!1176))))

(declare-fun b!3876968 () Bool)

(declare-fun tp!1175370 () Bool)

(assert (=> b!3876968 (= e!2398577 (and (inv!55370 (h!46632 prefixTokens!80)) e!2398613 tp!1175370))))

(declare-fun b!3876969 () Bool)

(declare-fun res!1570727 () Bool)

(assert (=> b!3876969 (=> (not res!1570727) (not e!2398586))))

(declare-fun isEmpty!24466 (List!41337) Bool)

(assert (=> b!3876969 (= res!1570727 (not (isEmpty!24466 rules!2768)))))

(declare-fun b!3876970 () Bool)

(declare-fun tp!1175366 () Bool)

(assert (=> b!3876970 (= e!2398582 (and e!2398593 tp!1175366))))

(assert (= (and start!363980 res!1570735) b!3876969))

(assert (= (and b!3876969 res!1570727) b!3876937))

(assert (= (and b!3876937 res!1570737) b!3876919))

(assert (= (and b!3876919 res!1570725) b!3876946))

(assert (= (and b!3876946 res!1570741) b!3876952))

(assert (= (and b!3876952 res!1570748) b!3876924))

(assert (= (and b!3876924 res!1570747) b!3876953))

(assert (= (and b!3876953 res!1570733) b!3876930))

(assert (= (and b!3876930 res!1570724) b!3876936))

(assert (= (and b!3876930 (not res!1570726)) b!3876961))

(assert (= (and b!3876961 (not res!1570744)) b!3876955))

(assert (= (and b!3876955 (not res!1570750)) b!3876965))

(assert (= (and b!3876965 c!674514) b!3876923))

(assert (= (and b!3876965 (not c!674514)) b!3876951))

(assert (= (and b!3876923 c!674515) b!3876935))

(assert (= (and b!3876923 (not c!674515)) b!3876933))

(assert (= (and b!3876935 c!674513) b!3876932))

(assert (= (and b!3876935 (not c!674513)) b!3876966))

(assert (= (and b!3876932 res!1570731) b!3876945))

(assert (= (and b!3876966 res!1570736) b!3876943))

(assert (= (or b!3876932 b!3876966) bm!282811))

(assert (= (and b!3876965 c!674516) b!3876918))

(assert (= (and b!3876965 (not c!674516)) b!3876922))

(assert (= (and b!3876965 (not res!1570732)) b!3876931))

(assert (= (and b!3876931 (not res!1570749)) b!3876949))

(assert (= (and b!3876949 (not res!1570742)) b!3876948))

(assert (= (and b!3876948 (not res!1570738)) b!3876941))

(assert (= (and b!3876941 (not res!1570730)) b!3876920))

(assert (= (and b!3876920 (not res!1570746)) b!3876959))

(assert (= (and b!3876959 (not res!1570729)) b!3876954))

(assert (= (and b!3876954 (not res!1570751)) b!3876942))

(assert (= (and b!3876942 c!674517) b!3876960))

(assert (= (and b!3876942 (not c!674517)) b!3876950))

(assert (= (and b!3876942 (not res!1570740)) b!3876926))

(assert (= (and b!3876926 (not res!1570743)) b!3876939))

(assert (= (and b!3876939 (not res!1570739)) b!3876967))

(assert (= (and b!3876967 (not res!1570728)) b!3876929))

(assert (= (and b!3876929 (not res!1570723)) b!3876963))

(assert (= (and b!3876963 (not res!1570734)) b!3876956))

(assert (= (and b!3876956 (not res!1570745)) b!3876964))

(assert (= (and b!3876964 (not res!1570722)) b!3876957))

(assert (= (and start!363980 ((_ is Cons!41210) suffixResult!91)) b!3876928))

(assert (= (and start!363980 ((_ is Cons!41210) suffix!1176)) b!3876938))

(assert (= b!3876921 b!3876947))

(assert (= b!3876970 b!3876921))

(assert (= (and start!363980 ((_ is Cons!41213) rules!2768)) b!3876970))

(assert (= b!3876958 b!3876917))

(assert (= b!3876940 b!3876958))

(assert (= b!3876968 b!3876940))

(assert (= (and start!363980 ((_ is Cons!41212) prefixTokens!80)) b!3876968))

(assert (= b!3876927 b!3876925))

(assert (= b!3876962 b!3876927))

(assert (= b!3876934 b!3876962))

(assert (= (and start!363980 ((_ is Cons!41212) suffixTokens!72)) b!3876934))

(assert (= (and start!363980 ((_ is Cons!41210) prefix!426)) b!3876944))

(declare-fun m!4434877 () Bool)

(assert (=> b!3876957 m!4434877))

(declare-fun m!4434879 () Bool)

(assert (=> b!3876927 m!4434879))

(declare-fun m!4434881 () Bool)

(assert (=> b!3876927 m!4434881))

(declare-fun m!4434883 () Bool)

(assert (=> b!3876965 m!4434883))

(declare-fun m!4434885 () Bool)

(assert (=> b!3876965 m!4434885))

(declare-fun m!4434887 () Bool)

(assert (=> b!3876958 m!4434887))

(declare-fun m!4434889 () Bool)

(assert (=> b!3876958 m!4434889))

(declare-fun m!4434891 () Bool)

(assert (=> b!3876935 m!4434891))

(declare-fun m!4434893 () Bool)

(assert (=> b!3876935 m!4434893))

(declare-fun m!4434895 () Bool)

(assert (=> b!3876952 m!4434895))

(declare-fun m!4434897 () Bool)

(assert (=> b!3876952 m!4434897))

(declare-fun m!4434899 () Bool)

(assert (=> b!3876952 m!4434899))

(declare-fun m!4434901 () Bool)

(assert (=> b!3876920 m!4434901))

(declare-fun m!4434903 () Bool)

(assert (=> b!3876920 m!4434903))

(declare-fun m!4434905 () Bool)

(assert (=> b!3876920 m!4434905))

(declare-fun m!4434907 () Bool)

(assert (=> b!3876961 m!4434907))

(declare-fun m!4434909 () Bool)

(assert (=> b!3876934 m!4434909))

(declare-fun m!4434911 () Bool)

(assert (=> b!3876931 m!4434911))

(declare-fun m!4434913 () Bool)

(assert (=> b!3876960 m!4434913))

(declare-fun m!4434915 () Bool)

(assert (=> b!3876939 m!4434915))

(declare-fun m!4434917 () Bool)

(assert (=> b!3876939 m!4434917))

(declare-fun m!4434919 () Bool)

(assert (=> b!3876963 m!4434919))

(declare-fun m!4434921 () Bool)

(assert (=> b!3876937 m!4434921))

(declare-fun m!4434923 () Bool)

(assert (=> b!3876936 m!4434923))

(declare-fun m!4434925 () Bool)

(assert (=> b!3876921 m!4434925))

(declare-fun m!4434927 () Bool)

(assert (=> b!3876921 m!4434927))

(declare-fun m!4434929 () Bool)

(assert (=> b!3876929 m!4434929))

(declare-fun m!4434931 () Bool)

(assert (=> b!3876953 m!4434931))

(declare-fun m!4434933 () Bool)

(assert (=> b!3876948 m!4434933))

(declare-fun m!4434935 () Bool)

(assert (=> b!3876948 m!4434935))

(declare-fun m!4434937 () Bool)

(assert (=> b!3876918 m!4434937))

(declare-fun m!4434939 () Bool)

(assert (=> b!3876918 m!4434939))

(declare-fun m!4434941 () Bool)

(assert (=> b!3876918 m!4434941))

(declare-fun m!4434943 () Bool)

(assert (=> b!3876918 m!4434943))

(declare-fun m!4434945 () Bool)

(assert (=> b!3876923 m!4434945))

(declare-fun m!4434947 () Bool)

(assert (=> b!3876923 m!4434947))

(declare-fun m!4434949 () Bool)

(assert (=> b!3876923 m!4434949))

(declare-fun m!4434951 () Bool)

(assert (=> b!3876923 m!4434951))

(declare-fun m!4434953 () Bool)

(assert (=> b!3876923 m!4434953))

(declare-fun m!4434955 () Bool)

(assert (=> b!3876946 m!4434955))

(declare-fun m!4434957 () Bool)

(assert (=> bm!282811 m!4434957))

(declare-fun m!4434959 () Bool)

(assert (=> b!3876969 m!4434959))

(assert (=> b!3876949 m!4434939))

(declare-fun m!4434961 () Bool)

(assert (=> b!3876949 m!4434961))

(assert (=> b!3876949 m!4434937))

(declare-fun m!4434963 () Bool)

(assert (=> b!3876949 m!4434963))

(declare-fun m!4434965 () Bool)

(assert (=> b!3876949 m!4434965))

(declare-fun m!4434967 () Bool)

(assert (=> b!3876956 m!4434967))

(declare-fun m!4434969 () Bool)

(assert (=> b!3876956 m!4434969))

(assert (=> b!3876956 m!4434969))

(declare-fun m!4434971 () Bool)

(assert (=> b!3876956 m!4434971))

(declare-fun m!4434973 () Bool)

(assert (=> b!3876956 m!4434973))

(declare-fun m!4434975 () Bool)

(assert (=> b!3876924 m!4434975))

(declare-fun m!4434977 () Bool)

(assert (=> b!3876919 m!4434977))

(declare-fun m!4434979 () Bool)

(assert (=> b!3876966 m!4434979))

(declare-fun m!4434981 () Bool)

(assert (=> b!3876966 m!4434981))

(declare-fun m!4434983 () Bool)

(assert (=> b!3876967 m!4434983))

(declare-fun m!4434985 () Bool)

(assert (=> b!3876962 m!4434985))

(declare-fun m!4434987 () Bool)

(assert (=> b!3876959 m!4434987))

(declare-fun m!4434989 () Bool)

(assert (=> b!3876959 m!4434989))

(declare-fun m!4434991 () Bool)

(assert (=> b!3876959 m!4434991))

(declare-fun m!4434993 () Bool)

(assert (=> b!3876954 m!4434993))

(assert (=> b!3876954 m!4434893))

(declare-fun m!4434995 () Bool)

(assert (=> b!3876954 m!4434995))

(declare-fun m!4434997 () Bool)

(assert (=> b!3876954 m!4434997))

(declare-fun m!4434999 () Bool)

(assert (=> b!3876932 m!4434999))

(declare-fun m!4435001 () Bool)

(assert (=> b!3876932 m!4435001))

(declare-fun m!4435003 () Bool)

(assert (=> b!3876930 m!4435003))

(declare-fun m!4435005 () Bool)

(assert (=> b!3876930 m!4435005))

(declare-fun m!4435007 () Bool)

(assert (=> b!3876930 m!4435007))

(declare-fun m!4435009 () Bool)

(assert (=> b!3876930 m!4435009))

(declare-fun m!4435011 () Bool)

(assert (=> b!3876930 m!4435011))

(declare-fun m!4435013 () Bool)

(assert (=> b!3876930 m!4435013))

(assert (=> b!3876930 m!4435005))

(declare-fun m!4435015 () Bool)

(assert (=> b!3876930 m!4435015))

(declare-fun m!4435017 () Bool)

(assert (=> b!3876930 m!4435017))

(declare-fun m!4435019 () Bool)

(assert (=> b!3876930 m!4435019))

(declare-fun m!4435021 () Bool)

(assert (=> b!3876930 m!4435021))

(declare-fun m!4435023 () Bool)

(assert (=> b!3876930 m!4435023))

(declare-fun m!4435025 () Bool)

(assert (=> b!3876930 m!4435025))

(declare-fun m!4435027 () Bool)

(assert (=> b!3876930 m!4435027))

(declare-fun m!4435029 () Bool)

(assert (=> b!3876930 m!4435029))

(assert (=> b!3876930 m!4435011))

(declare-fun m!4435031 () Bool)

(assert (=> b!3876942 m!4435031))

(declare-fun m!4435033 () Bool)

(assert (=> b!3876942 m!4435033))

(declare-fun m!4435035 () Bool)

(assert (=> b!3876942 m!4435035))

(assert (=> b!3876942 m!4435033))

(declare-fun m!4435037 () Bool)

(assert (=> b!3876942 m!4435037))

(declare-fun m!4435039 () Bool)

(assert (=> b!3876942 m!4435039))

(declare-fun m!4435041 () Bool)

(assert (=> b!3876968 m!4435041))

(declare-fun m!4435043 () Bool)

(assert (=> b!3876926 m!4435043))

(declare-fun m!4435045 () Bool)

(assert (=> b!3876941 m!4435045))

(declare-fun m!4435047 () Bool)

(assert (=> b!3876940 m!4435047))

(check-sat (not bm!282811) (not b!3876968) b_and!290725 (not b!3876936) (not b!3876934) (not b!3876929) (not b!3876958) (not b!3876919) (not b!3876937) (not b!3876928) (not b!3876970) (not b!3876959) (not b!3876930) (not b!3876969) (not b!3876942) (not b!3876957) (not b!3876932) (not b_next!105577) (not b!3876940) (not b!3876965) (not b!3876941) b_and!290721 (not b!3876961) (not b!3876949) (not b!3876962) (not b!3876948) (not b!3876926) (not b!3876924) b_and!290723 (not b!3876952) (not b!3876960) (not b!3876921) b_and!290715 (not b_next!105573) (not b!3876963) (not b!3876931) (not b!3876954) (not b!3876966) (not b!3876920) (not b!3876938) b_and!290719 (not b!3876946) (not b_next!105583) (not b_next!105575) (not b!3876935) (not b_next!105581) (not b!3876927) (not b!3876923) tp_is_empty!19577 (not b!3876953) (not b!3876939) (not b!3876944) (not b!3876918) (not b!3876956) b_and!290717 (not b!3876967) (not b_next!105579))
(check-sat b_and!290725 (not b_next!105577) b_and!290721 b_and!290723 b_and!290719 (not b_next!105581) b_and!290717 (not b_next!105579) b_and!290715 (not b_next!105573) (not b_next!105583) (not b_next!105575))
