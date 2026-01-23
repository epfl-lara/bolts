; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!375252 () Bool)

(assert start!375252)

(declare-fun b!3987741 () Bool)

(declare-fun b_free!110761 () Bool)

(declare-fun b_next!111465 () Bool)

(assert (=> b!3987741 (= b_free!110761 (not b_next!111465))))

(declare-fun tp!1215063 () Bool)

(declare-fun b_and!306431 () Bool)

(assert (=> b!3987741 (= tp!1215063 b_and!306431)))

(declare-fun b_free!110763 () Bool)

(declare-fun b_next!111467 () Bool)

(assert (=> b!3987741 (= b_free!110763 (not b_next!111467))))

(declare-fun tp!1215056 () Bool)

(declare-fun b_and!306433 () Bool)

(assert (=> b!3987741 (= tp!1215056 b_and!306433)))

(declare-fun b!3987707 () Bool)

(declare-fun b_free!110765 () Bool)

(declare-fun b_next!111469 () Bool)

(assert (=> b!3987707 (= b_free!110765 (not b_next!111469))))

(declare-fun tp!1215064 () Bool)

(declare-fun b_and!306435 () Bool)

(assert (=> b!3987707 (= tp!1215064 b_and!306435)))

(declare-fun b_free!110767 () Bool)

(declare-fun b_next!111471 () Bool)

(assert (=> b!3987707 (= b_free!110767 (not b_next!111471))))

(declare-fun tp!1215067 () Bool)

(declare-fun b_and!306437 () Bool)

(assert (=> b!3987707 (= tp!1215067 b_and!306437)))

(declare-fun b!3987700 () Bool)

(declare-fun e!2471852 () Bool)

(declare-fun e!2471846 () Bool)

(assert (=> b!3987700 (= e!2471852 e!2471846)))

(declare-fun res!1617714 () Bool)

(assert (=> b!3987700 (=> res!1617714 e!2471846)))

(declare-datatypes ((C!23492 0))(
  ( (C!23493 (val!13840 Int)) )
))
(declare-datatypes ((List!42778 0))(
  ( (Nil!42654) (Cons!42654 (h!48074 C!23492) (t!331625 List!42778)) )
))
(declare-fun lt!1404531 () List!42778)

(declare-fun lt!1404544 () List!42778)

(assert (=> b!3987700 (= res!1617714 (not (= lt!1404531 lt!1404544)))))

(declare-fun prefix!494 () List!42778)

(declare-fun lt!1404559 () List!42778)

(declare-fun ++!11150 (List!42778 List!42778) List!42778)

(assert (=> b!3987700 (= lt!1404531 (++!11150 prefix!494 lt!1404559))))

(declare-fun lt!1404513 () List!42778)

(declare-fun lt!1404556 () List!42778)

(assert (=> b!3987700 (= lt!1404531 (++!11150 lt!1404513 lt!1404556))))

(declare-datatypes ((Unit!61376 0))(
  ( (Unit!61377) )
))
(declare-fun lt!1404566 () Unit!61376)

(declare-fun newSuffix!27 () List!42778)

(declare-fun lemmaConcatAssociativity!2470 (List!42778 List!42778 List!42778) Unit!61376)

(assert (=> b!3987700 (= lt!1404566 (lemmaConcatAssociativity!2470 prefix!494 newSuffix!27 lt!1404556))))

(declare-fun b!3987701 () Bool)

(declare-fun e!2471847 () Bool)

(declare-fun e!2471858 () Bool)

(assert (=> b!3987701 (= e!2471847 e!2471858)))

(declare-fun res!1617723 () Bool)

(assert (=> b!3987701 (=> (not res!1617723) (not e!2471858))))

(declare-fun lt!1404539 () List!42778)

(assert (=> b!3987701 (= res!1617723 (= lt!1404539 lt!1404513))))

(assert (=> b!3987701 (= lt!1404513 (++!11150 prefix!494 newSuffix!27))))

(declare-fun lt!1404540 () List!42778)

(declare-fun newSuffixResult!27 () List!42778)

(assert (=> b!3987701 (= lt!1404539 (++!11150 lt!1404540 newSuffixResult!27))))

(declare-fun b!3987702 () Bool)

(declare-fun e!2471870 () Bool)

(declare-fun e!2471849 () Bool)

(assert (=> b!3987702 (= e!2471870 e!2471849)))

(declare-fun res!1617706 () Bool)

(assert (=> b!3987702 (=> res!1617706 e!2471849)))

(declare-datatypes ((IArray!25923 0))(
  ( (IArray!25924 (innerList!13019 List!42778)) )
))
(declare-datatypes ((Conc!12959 0))(
  ( (Node!12959 (left!32235 Conc!12959) (right!32565 Conc!12959) (csize!26148 Int) (cheight!13170 Int)) (Leaf!20040 (xs!16265 IArray!25923) (csize!26149 Int)) (Empty!12959) )
))
(declare-datatypes ((BalanceConc!25512 0))(
  ( (BalanceConc!25513 (c!690308 Conc!12959)) )
))
(declare-datatypes ((List!42779 0))(
  ( (Nil!42655) (Cons!42655 (h!48075 (_ BitVec 16)) (t!331626 List!42779)) )
))
(declare-datatypes ((TokenValue!6978 0))(
  ( (FloatLiteralValue!13956 (text!49291 List!42779)) (TokenValueExt!6977 (__x!26173 Int)) (Broken!34890 (value!212926 List!42779)) (Object!7101) (End!6978) (Def!6978) (Underscore!6978) (Match!6978) (Else!6978) (Error!6978) (Case!6978) (If!6978) (Extends!6978) (Abstract!6978) (Class!6978) (Val!6978) (DelimiterValue!13956 (del!7038 List!42779)) (KeywordValue!6984 (value!212927 List!42779)) (CommentValue!13956 (value!212928 List!42779)) (WhitespaceValue!13956 (value!212929 List!42779)) (IndentationValue!6978 (value!212930 List!42779)) (String!48607) (Int32!6978) (Broken!34891 (value!212931 List!42779)) (Boolean!6979) (Unit!61378) (OperatorValue!6981 (op!7038 List!42779)) (IdentifierValue!13956 (value!212932 List!42779)) (IdentifierValue!13957 (value!212933 List!42779)) (WhitespaceValue!13957 (value!212934 List!42779)) (True!13956) (False!13956) (Broken!34892 (value!212935 List!42779)) (Broken!34893 (value!212936 List!42779)) (True!13957) (RightBrace!6978) (RightBracket!6978) (Colon!6978) (Null!6978) (Comma!6978) (LeftBracket!6978) (False!13957) (LeftBrace!6978) (ImaginaryLiteralValue!6978 (text!49292 List!42779)) (StringLiteralValue!20934 (value!212937 List!42779)) (EOFValue!6978 (value!212938 List!42779)) (IdentValue!6978 (value!212939 List!42779)) (DelimiterValue!13957 (value!212940 List!42779)) (DedentValue!6978 (value!212941 List!42779)) (NewLineValue!6978 (value!212942 List!42779)) (IntegerValue!20934 (value!212943 (_ BitVec 32)) (text!49293 List!42779)) (IntegerValue!20935 (value!212944 Int) (text!49294 List!42779)) (Times!6978) (Or!6978) (Equal!6978) (Minus!6978) (Broken!34894 (value!212945 List!42779)) (And!6978) (Div!6978) (LessEqual!6978) (Mod!6978) (Concat!18631) (Not!6978) (Plus!6978) (SpaceValue!6978 (value!212946 List!42779)) (IntegerValue!20936 (value!212947 Int) (text!49295 List!42779)) (StringLiteralValue!20935 (text!49296 List!42779)) (FloatLiteralValue!13957 (text!49297 List!42779)) (BytesLiteralValue!6978 (value!212948 List!42779)) (CommentValue!13957 (value!212949 List!42779)) (StringLiteralValue!20936 (value!212950 List!42779)) (ErrorTokenValue!6978 (msg!7039 List!42779)) )
))
(declare-datatypes ((Regex!11653 0))(
  ( (ElementMatch!11653 (c!690309 C!23492)) (Concat!18632 (regOne!23818 Regex!11653) (regTwo!23818 Regex!11653)) (EmptyExpr!11653) (Star!11653 (reg!11982 Regex!11653)) (EmptyLang!11653) (Union!11653 (regOne!23819 Regex!11653) (regTwo!23819 Regex!11653)) )
))
(declare-datatypes ((String!48608 0))(
  ( (String!48609 (value!212951 String)) )
))
(declare-datatypes ((TokenValueInjection!13384 0))(
  ( (TokenValueInjection!13385 (toValue!9236 Int) (toChars!9095 Int)) )
))
(declare-datatypes ((Rule!13296 0))(
  ( (Rule!13297 (regex!6748 Regex!11653) (tag!7608 String!48608) (isSeparator!6748 Bool) (transformation!6748 TokenValueInjection!13384)) )
))
(declare-datatypes ((Token!12634 0))(
  ( (Token!12635 (value!212952 TokenValue!6978) (rule!9762 Rule!13296) (size!31902 Int) (originalCharacters!7348 List!42778)) )
))
(declare-datatypes ((tuple2!41860 0))(
  ( (tuple2!41861 (_1!24064 Token!12634) (_2!24064 List!42778)) )
))
(declare-datatypes ((Option!9162 0))(
  ( (None!9161) (Some!9161 (v!39515 tuple2!41860)) )
))
(declare-fun lt!1404535 () Option!9162)

(declare-fun lt!1404534 () Option!9162)

(assert (=> b!3987702 (= res!1617706 (not (= lt!1404535 lt!1404534)))))

(declare-fun lt!1404562 () Token!12634)

(declare-fun suffixResult!105 () List!42778)

(assert (=> b!3987702 (= lt!1404535 (Some!9161 (tuple2!41861 lt!1404562 suffixResult!105)))))

(declare-fun token!484 () Token!12634)

(declare-datatypes ((LexerInterface!6337 0))(
  ( (LexerInterfaceExt!6334 (__x!26174 Int)) (Lexer!6335) )
))
(declare-fun thiss!21717 () LexerInterface!6337)

(declare-fun maxPrefixOneRule!2669 (LexerInterface!6337 Rule!13296 List!42778) Option!9162)

(assert (=> b!3987702 (= lt!1404535 (maxPrefixOneRule!2669 thiss!21717 (rule!9762 token!484) lt!1404544))))

(declare-fun lt!1404550 () Int)

(declare-fun lt!1404514 () TokenValue!6978)

(assert (=> b!3987702 (= lt!1404562 (Token!12635 lt!1404514 (rule!9762 token!484) lt!1404550 lt!1404540))))

(declare-fun apply!9959 (TokenValueInjection!13384 BalanceConc!25512) TokenValue!6978)

(declare-fun seqFromList!4987 (List!42778) BalanceConc!25512)

(assert (=> b!3987702 (= lt!1404514 (apply!9959 (transformation!6748 (rule!9762 token!484)) (seqFromList!4987 lt!1404540)))))

(declare-fun lt!1404569 () Unit!61376)

(declare-datatypes ((List!42780 0))(
  ( (Nil!42656) (Cons!42656 (h!48076 Rule!13296) (t!331627 List!42780)) )
))
(declare-fun rules!2999 () List!42780)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1491 (LexerInterface!6337 List!42780 List!42778 List!42778 List!42778 Rule!13296) Unit!61376)

(assert (=> b!3987702 (= lt!1404569 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1491 thiss!21717 rules!2999 lt!1404540 lt!1404544 suffixResult!105 (rule!9762 token!484)))))

(declare-fun lt!1404523 () List!42778)

(assert (=> b!3987702 (= lt!1404523 suffixResult!105)))

(declare-fun lt!1404516 () Unit!61376)

(declare-fun lemmaSamePrefixThenSameSuffix!2022 (List!42778 List!42778 List!42778 List!42778 List!42778) Unit!61376)

(assert (=> b!3987702 (= lt!1404516 (lemmaSamePrefixThenSameSuffix!2022 lt!1404540 lt!1404523 lt!1404540 suffixResult!105 lt!1404544))))

(declare-fun lt!1404549 () List!42778)

(declare-fun isPrefix!3835 (List!42778 List!42778) Bool)

(assert (=> b!3987702 (isPrefix!3835 lt!1404540 lt!1404549)))

(declare-fun lt!1404563 () Unit!61376)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2678 (List!42778 List!42778) Unit!61376)

(assert (=> b!3987702 (= lt!1404563 (lemmaConcatTwoListThenFirstIsPrefix!2678 lt!1404540 lt!1404523))))

(declare-fun b!3987703 () Bool)

(declare-fun res!1617716 () Bool)

(declare-fun e!2471835 () Bool)

(assert (=> b!3987703 (=> (not res!1617716) (not e!2471835))))

(declare-fun rulesInvariant!5680 (LexerInterface!6337 List!42780) Bool)

(assert (=> b!3987703 (= res!1617716 (rulesInvariant!5680 thiss!21717 rules!2999))))

(declare-fun b!3987704 () Bool)

(declare-fun e!2471865 () Bool)

(declare-fun tp_is_empty!20277 () Bool)

(declare-fun tp!1215059 () Bool)

(assert (=> b!3987704 (= e!2471865 (and tp_is_empty!20277 tp!1215059))))

(declare-fun b!3987705 () Bool)

(declare-fun e!2471844 () Bool)

(assert (=> b!3987705 (= e!2471846 e!2471844)))

(declare-fun res!1617717 () Bool)

(assert (=> b!3987705 (=> res!1617717 e!2471844)))

(declare-fun lt!1404530 () List!42778)

(assert (=> b!3987705 (= res!1617717 (not (isPrefix!3835 lt!1404530 lt!1404544)))))

(assert (=> b!3987705 (isPrefix!3835 lt!1404530 lt!1404531)))

(declare-fun lt!1404517 () Unit!61376)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!668 (List!42778 List!42778 List!42778) Unit!61376)

(assert (=> b!3987705 (= lt!1404517 (lemmaPrefixStaysPrefixWhenAddingToSuffix!668 lt!1404530 lt!1404513 lt!1404556))))

(declare-fun b!3987706 () Bool)

(declare-fun res!1617712 () Bool)

(assert (=> b!3987706 (=> (not res!1617712) (not e!2471835))))

(declare-fun suffix!1299 () List!42778)

(assert (=> b!3987706 (= res!1617712 (isPrefix!3835 newSuffix!27 suffix!1299))))

(declare-fun e!2471836 () Bool)

(assert (=> b!3987707 (= e!2471836 (and tp!1215064 tp!1215067))))

(declare-fun b!3987708 () Bool)

(declare-fun e!2471867 () Bool)

(declare-fun tp!1215057 () Bool)

(assert (=> b!3987708 (= e!2471867 (and tp_is_empty!20277 tp!1215057))))

(declare-fun b!3987710 () Bool)

(declare-fun res!1617722 () Bool)

(assert (=> b!3987710 (=> (not res!1617722) (not e!2471835))))

(declare-fun isEmpty!25492 (List!42780) Bool)

(assert (=> b!3987710 (= res!1617722 (not (isEmpty!25492 rules!2999)))))

(declare-fun b!3987711 () Bool)

(declare-fun res!1617708 () Bool)

(declare-fun e!2471841 () Bool)

(assert (=> b!3987711 (=> (not res!1617708) (not e!2471841))))

(declare-fun size!31903 (List!42778) Int)

(assert (=> b!3987711 (= res!1617708 (= (size!31902 token!484) (size!31903 (originalCharacters!7348 token!484))))))

(declare-fun b!3987712 () Bool)

(declare-fun e!2471856 () Bool)

(declare-fun e!2471837 () Bool)

(assert (=> b!3987712 (= e!2471856 e!2471837)))

(declare-fun res!1617710 () Bool)

(assert (=> b!3987712 (=> res!1617710 e!2471837)))

(declare-fun lt!1404551 () Option!9162)

(get-info :version)

(assert (=> b!3987712 (= res!1617710 (not ((_ is Some!9161) lt!1404551)))))

(declare-fun maxPrefix!3635 (LexerInterface!6337 List!42780 List!42778) Option!9162)

(assert (=> b!3987712 (= lt!1404551 (maxPrefix!3635 thiss!21717 rules!2999 lt!1404513))))

(declare-fun lt!1404519 () List!42778)

(declare-fun lt!1404520 () tuple2!41860)

(assert (=> b!3987712 (and (= suffixResult!105 lt!1404519) (= lt!1404520 (tuple2!41861 lt!1404562 lt!1404519)))))

(declare-fun lt!1404558 () Unit!61376)

(assert (=> b!3987712 (= lt!1404558 (lemmaSamePrefixThenSameSuffix!2022 lt!1404540 suffixResult!105 lt!1404540 lt!1404519 lt!1404544))))

(declare-fun lt!1404543 () List!42778)

(assert (=> b!3987712 (isPrefix!3835 lt!1404540 lt!1404543)))

(declare-fun lt!1404525 () Unit!61376)

(assert (=> b!3987712 (= lt!1404525 (lemmaConcatTwoListThenFirstIsPrefix!2678 lt!1404540 lt!1404519))))

(declare-fun b!3987713 () Bool)

(declare-fun e!2471848 () Bool)

(declare-fun e!2471851 () Bool)

(assert (=> b!3987713 (= e!2471848 e!2471851)))

(declare-fun res!1617715 () Bool)

(assert (=> b!3987713 (=> res!1617715 e!2471851)))

(declare-fun lt!1404548 () Int)

(assert (=> b!3987713 (= res!1617715 (not (= lt!1404550 lt!1404548)))))

(declare-fun lt!1404522 () Unit!61376)

(declare-fun e!2471853 () Unit!61376)

(assert (=> b!3987713 (= lt!1404522 e!2471853)))

(declare-fun c!690307 () Bool)

(assert (=> b!3987713 (= c!690307 (< lt!1404548 lt!1404550))))

(declare-fun lt!1404541 () Unit!61376)

(declare-fun e!2471863 () Unit!61376)

(assert (=> b!3987713 (= lt!1404541 e!2471863)))

(declare-fun c!690306 () Bool)

(assert (=> b!3987713 (= c!690306 (> lt!1404548 lt!1404550))))

(declare-fun lt!1404532 () List!42778)

(assert (=> b!3987713 (= (_2!24064 (v!39515 lt!1404551)) lt!1404532)))

(declare-fun lt!1404565 () Unit!61376)

(assert (=> b!3987713 (= lt!1404565 (lemmaSamePrefixThenSameSuffix!2022 lt!1404530 (_2!24064 (v!39515 lt!1404551)) lt!1404530 lt!1404532 lt!1404513))))

(declare-fun lt!1404521 () List!42778)

(assert (=> b!3987713 (isPrefix!3835 lt!1404530 lt!1404521)))

(declare-fun lt!1404555 () Unit!61376)

(assert (=> b!3987713 (= lt!1404555 (lemmaConcatTwoListThenFirstIsPrefix!2678 lt!1404530 lt!1404532))))

(declare-fun b!3987714 () Bool)

(declare-fun e!2471855 () Bool)

(assert (=> b!3987714 (= e!2471858 e!2471855)))

(declare-fun res!1617713 () Bool)

(assert (=> b!3987714 (=> (not res!1617713) (not e!2471855))))

(assert (=> b!3987714 (= res!1617713 (= (maxPrefix!3635 thiss!21717 rules!2999 lt!1404544) lt!1404534))))

(assert (=> b!3987714 (= lt!1404534 (Some!9161 lt!1404520))))

(assert (=> b!3987714 (= lt!1404520 (tuple2!41861 token!484 suffixResult!105))))

(assert (=> b!3987714 (= lt!1404544 (++!11150 prefix!494 suffix!1299))))

(declare-fun b!3987715 () Bool)

(declare-fun e!2471839 () Bool)

(assert (=> b!3987715 (= e!2471839 e!2471870)))

(declare-fun res!1617719 () Bool)

(assert (=> b!3987715 (=> res!1617719 e!2471870)))

(declare-fun lt!1404547 () List!42778)

(assert (=> b!3987715 (= res!1617719 (or (not (= lt!1404544 lt!1404547)) (not (= lt!1404544 lt!1404549))))))

(assert (=> b!3987715 (= lt!1404547 lt!1404549)))

(assert (=> b!3987715 (= lt!1404549 (++!11150 lt!1404540 lt!1404523))))

(declare-fun lt!1404560 () List!42778)

(assert (=> b!3987715 (= lt!1404547 (++!11150 lt!1404560 suffix!1299))))

(declare-fun lt!1404533 () List!42778)

(assert (=> b!3987715 (= lt!1404523 (++!11150 lt!1404533 suffix!1299))))

(declare-fun lt!1404528 () Unit!61376)

(assert (=> b!3987715 (= lt!1404528 (lemmaConcatAssociativity!2470 lt!1404540 lt!1404533 suffix!1299))))

(declare-fun b!3987716 () Bool)

(declare-fun res!1617711 () Bool)

(assert (=> b!3987716 (=> (not res!1617711) (not e!2471841))))

(assert (=> b!3987716 (= res!1617711 (= (value!212952 token!484) lt!1404514))))

(declare-fun e!2471868 () Bool)

(declare-fun b!3987717 () Bool)

(declare-fun tp!1215058 () Bool)

(declare-fun inv!56970 (String!48608) Bool)

(declare-fun inv!56973 (TokenValueInjection!13384) Bool)

(assert (=> b!3987717 (= e!2471868 (and tp!1215058 (inv!56970 (tag!7608 (rule!9762 token!484))) (inv!56973 (transformation!6748 (rule!9762 token!484))) e!2471836))))

(declare-fun b!3987718 () Bool)

(declare-fun Unit!61379 () Unit!61376)

(assert (=> b!3987718 (= e!2471853 Unit!61379)))

(declare-fun lt!1404571 () Unit!61376)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!402 (LexerInterface!6337 List!42780 Rule!13296 List!42778 List!42778 List!42778 Rule!13296) Unit!61376)

(assert (=> b!3987718 (= lt!1404571 (lemmaMaxPrefixOutputsMaxPrefix!402 thiss!21717 rules!2999 (rule!9762 (_1!24064 (v!39515 lt!1404551))) lt!1404530 lt!1404513 lt!1404540 (rule!9762 token!484)))))

(assert (=> b!3987718 false))

(declare-fun b!3987719 () Bool)

(declare-fun tp!1215062 () Bool)

(declare-fun e!2471854 () Bool)

(declare-fun e!2471850 () Bool)

(assert (=> b!3987719 (= e!2471854 (and tp!1215062 (inv!56970 (tag!7608 (h!48076 rules!2999))) (inv!56973 (transformation!6748 (h!48076 rules!2999))) e!2471850))))

(declare-fun b!3987720 () Bool)

(declare-fun e!2471840 () Bool)

(declare-fun tp!1215068 () Bool)

(assert (=> b!3987720 (= e!2471840 (and e!2471854 tp!1215068))))

(declare-fun b!3987721 () Bool)

(assert (=> b!3987721 (= e!2471844 e!2471848)))

(declare-fun res!1617698 () Bool)

(assert (=> b!3987721 (=> res!1617698 e!2471848)))

(assert (=> b!3987721 (= res!1617698 (not (= lt!1404521 lt!1404513)))))

(assert (=> b!3987721 (= lt!1404521 (++!11150 lt!1404530 lt!1404532))))

(declare-fun getSuffix!2266 (List!42778 List!42778) List!42778)

(assert (=> b!3987721 (= lt!1404532 (getSuffix!2266 lt!1404513 lt!1404530))))

(declare-fun b!3987722 () Bool)

(assert (=> b!3987722 (= e!2471841 (and (= (size!31902 token!484) lt!1404550) (= (originalCharacters!7348 token!484) lt!1404540)))))

(declare-fun b!3987723 () Bool)

(declare-fun contains!8489 (List!42780 Rule!13296) Bool)

(assert (=> b!3987723 (= e!2471851 (contains!8489 rules!2999 (rule!9762 token!484)))))

(assert (=> b!3987723 (= (_2!24064 (v!39515 lt!1404551)) newSuffixResult!27)))

(declare-fun lt!1404561 () Unit!61376)

(assert (=> b!3987723 (= lt!1404561 (lemmaSamePrefixThenSameSuffix!2022 lt!1404530 (_2!24064 (v!39515 lt!1404551)) lt!1404540 newSuffixResult!27 lt!1404513))))

(assert (=> b!3987723 (= lt!1404530 lt!1404540)))

(declare-fun lt!1404546 () Unit!61376)

(declare-fun lemmaIsPrefixSameLengthThenSameList!857 (List!42778 List!42778 List!42778) Unit!61376)

(assert (=> b!3987723 (= lt!1404546 (lemmaIsPrefixSameLengthThenSameList!857 lt!1404530 lt!1404540 lt!1404513))))

(declare-fun b!3987724 () Bool)

(declare-fun e!2471859 () Bool)

(assert (=> b!3987724 (= e!2471859 e!2471852)))

(declare-fun res!1617705 () Bool)

(assert (=> b!3987724 (=> res!1617705 e!2471852)))

(assert (=> b!3987724 (= res!1617705 (not (= lt!1404559 suffix!1299)))))

(assert (=> b!3987724 (= lt!1404559 (++!11150 newSuffix!27 lt!1404556))))

(assert (=> b!3987724 (= lt!1404556 (getSuffix!2266 suffix!1299 newSuffix!27))))

(declare-fun b!3987725 () Bool)

(declare-fun Unit!61380 () Unit!61376)

(assert (=> b!3987725 (= e!2471863 Unit!61380)))

(declare-fun lt!1404564 () Unit!61376)

(assert (=> b!3987725 (= lt!1404564 (lemmaMaxPrefixOutputsMaxPrefix!402 thiss!21717 rules!2999 (rule!9762 token!484) lt!1404540 lt!1404544 lt!1404530 (rule!9762 (_1!24064 (v!39515 lt!1404551)))))))

(declare-fun res!1617707 () Bool)

(declare-fun matchR!5630 (Regex!11653 List!42778) Bool)

(assert (=> b!3987725 (= res!1617707 (not (matchR!5630 (regex!6748 (rule!9762 (_1!24064 (v!39515 lt!1404551)))) lt!1404530)))))

(declare-fun e!2471861 () Bool)

(assert (=> b!3987725 (=> (not res!1617707) (not e!2471861))))

(assert (=> b!3987725 e!2471861))

(declare-fun b!3987726 () Bool)

(assert (=> b!3987726 (= e!2471835 e!2471847)))

(declare-fun res!1617700 () Bool)

(assert (=> b!3987726 (=> (not res!1617700) (not e!2471847))))

(declare-fun lt!1404557 () Int)

(assert (=> b!3987726 (= res!1617700 (>= lt!1404557 lt!1404550))))

(assert (=> b!3987726 (= lt!1404550 (size!31903 lt!1404540))))

(assert (=> b!3987726 (= lt!1404557 (size!31903 prefix!494))))

(declare-fun list!15834 (BalanceConc!25512) List!42778)

(declare-fun charsOf!4564 (Token!12634) BalanceConc!25512)

(assert (=> b!3987726 (= lt!1404540 (list!15834 (charsOf!4564 token!484)))))

(declare-fun b!3987727 () Bool)

(declare-fun e!2471857 () Bool)

(assert (=> b!3987727 (= e!2471857 e!2471856)))

(declare-fun res!1617704 () Bool)

(assert (=> b!3987727 (=> res!1617704 e!2471856)))

(assert (=> b!3987727 (= res!1617704 (not (= lt!1404543 lt!1404544)))))

(assert (=> b!3987727 (= lt!1404543 (++!11150 lt!1404540 lt!1404519))))

(assert (=> b!3987727 (= lt!1404519 (getSuffix!2266 lt!1404544 lt!1404540))))

(assert (=> b!3987727 e!2471841))

(declare-fun res!1617718 () Bool)

(assert (=> b!3987727 (=> (not res!1617718) (not e!2471841))))

(assert (=> b!3987727 (= res!1617718 (isPrefix!3835 lt!1404544 lt!1404544))))

(declare-fun lt!1404515 () Unit!61376)

(declare-fun lemmaIsPrefixRefl!2427 (List!42778 List!42778) Unit!61376)

(assert (=> b!3987727 (= lt!1404515 (lemmaIsPrefixRefl!2427 lt!1404544 lt!1404544))))

(declare-fun b!3987728 () Bool)

(declare-fun tp!1215066 () Bool)

(declare-fun e!2471862 () Bool)

(declare-fun inv!21 (TokenValue!6978) Bool)

(assert (=> b!3987728 (= e!2471862 (and (inv!21 (value!212952 token!484)) e!2471868 tp!1215066))))

(declare-fun b!3987729 () Bool)

(declare-fun Unit!61381 () Unit!61376)

(assert (=> b!3987729 (= e!2471853 Unit!61381)))

(declare-fun b!3987730 () Bool)

(declare-fun res!1617720 () Bool)

(assert (=> b!3987730 (=> res!1617720 e!2471851)))

(assert (=> b!3987730 (= res!1617720 (not (isPrefix!3835 lt!1404530 lt!1404513)))))

(declare-fun b!3987731 () Bool)

(declare-fun res!1617703 () Bool)

(assert (=> b!3987731 (=> res!1617703 e!2471844)))

(declare-fun lt!1404527 () List!42778)

(assert (=> b!3987731 (= res!1617703 (not (= lt!1404527 lt!1404513)))))

(declare-fun b!3987732 () Bool)

(declare-fun e!2471869 () Bool)

(declare-fun tp!1215060 () Bool)

(assert (=> b!3987732 (= e!2471869 (and tp_is_empty!20277 tp!1215060))))

(declare-fun b!3987733 () Bool)

(declare-fun e!2471842 () Bool)

(declare-fun e!2471864 () Bool)

(assert (=> b!3987733 (= e!2471842 e!2471864)))

(declare-fun res!1617702 () Bool)

(assert (=> b!3987733 (=> res!1617702 e!2471864)))

(assert (=> b!3987733 (= res!1617702 (not (isPrefix!3835 lt!1404540 lt!1404544)))))

(assert (=> b!3987733 (isPrefix!3835 prefix!494 lt!1404544)))

(declare-fun lt!1404536 () Unit!61376)

(assert (=> b!3987733 (= lt!1404536 (lemmaConcatTwoListThenFirstIsPrefix!2678 prefix!494 suffix!1299))))

(declare-fun lt!1404538 () List!42778)

(assert (=> b!3987733 (isPrefix!3835 lt!1404540 lt!1404538)))

(declare-fun lt!1404572 () Unit!61376)

(assert (=> b!3987733 (= lt!1404572 (lemmaConcatTwoListThenFirstIsPrefix!2678 lt!1404540 suffixResult!105))))

(declare-fun b!3987734 () Bool)

(assert (=> b!3987734 (= e!2471864 e!2471839)))

(declare-fun res!1617709 () Bool)

(assert (=> b!3987734 (=> res!1617709 e!2471839)))

(assert (=> b!3987734 (= res!1617709 (not (= lt!1404560 prefix!494)))))

(assert (=> b!3987734 (= lt!1404560 (++!11150 lt!1404540 lt!1404533))))

(assert (=> b!3987734 (= lt!1404533 (getSuffix!2266 prefix!494 lt!1404540))))

(assert (=> b!3987734 (isPrefix!3835 lt!1404540 prefix!494)))

(declare-fun lt!1404524 () Unit!61376)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!413 (List!42778 List!42778 List!42778) Unit!61376)

(assert (=> b!3987734 (= lt!1404524 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!413 prefix!494 lt!1404540 lt!1404544))))

(declare-fun b!3987735 () Bool)

(assert (=> b!3987735 (= e!2471849 e!2471857)))

(declare-fun res!1617701 () Bool)

(assert (=> b!3987735 (=> res!1617701 e!2471857)))

(assert (=> b!3987735 (= res!1617701 (not (matchR!5630 (regex!6748 (rule!9762 token!484)) lt!1404540)))))

(assert (=> b!3987735 (isPrefix!3835 lt!1404540 lt!1404513)))

(declare-fun lt!1404553 () Unit!61376)

(assert (=> b!3987735 (= lt!1404553 (lemmaPrefixStaysPrefixWhenAddingToSuffix!668 lt!1404540 prefix!494 newSuffix!27))))

(declare-fun lt!1404568 () Unit!61376)

(assert (=> b!3987735 (= lt!1404568 (lemmaPrefixStaysPrefixWhenAddingToSuffix!668 lt!1404540 prefix!494 suffix!1299))))

(declare-fun res!1617721 () Bool)

(assert (=> start!375252 (=> (not res!1617721) (not e!2471835))))

(assert (=> start!375252 (= res!1617721 ((_ is Lexer!6335) thiss!21717))))

(assert (=> start!375252 e!2471835))

(assert (=> start!375252 e!2471865))

(declare-fun inv!56974 (Token!12634) Bool)

(assert (=> start!375252 (and (inv!56974 token!484) e!2471862)))

(assert (=> start!375252 e!2471867))

(declare-fun e!2471845 () Bool)

(assert (=> start!375252 e!2471845))

(assert (=> start!375252 e!2471869))

(assert (=> start!375252 true))

(assert (=> start!375252 e!2471840))

(declare-fun e!2471838 () Bool)

(assert (=> start!375252 e!2471838))

(declare-fun b!3987709 () Bool)

(declare-fun res!1617697 () Bool)

(assert (=> b!3987709 (=> (not res!1617697) (not e!2471835))))

(assert (=> b!3987709 (= res!1617697 (>= (size!31903 suffix!1299) (size!31903 newSuffix!27)))))

(declare-fun b!3987736 () Bool)

(declare-fun Unit!61382 () Unit!61376)

(assert (=> b!3987736 (= e!2471863 Unit!61382)))

(declare-fun b!3987737 () Bool)

(declare-fun tp!1215065 () Bool)

(assert (=> b!3987737 (= e!2471838 (and tp_is_empty!20277 tp!1215065))))

(declare-fun b!3987738 () Bool)

(assert (=> b!3987738 (= e!2471837 e!2471859)))

(declare-fun res!1617724 () Bool)

(assert (=> b!3987738 (=> res!1617724 e!2471859)))

(declare-fun lt!1404529 () Option!9162)

(assert (=> b!3987738 (= res!1617724 (not (= lt!1404529 (Some!9161 (v!39515 lt!1404551)))))))

(assert (=> b!3987738 (isPrefix!3835 lt!1404530 (++!11150 lt!1404530 newSuffixResult!27))))

(declare-fun lt!1404567 () Unit!61376)

(assert (=> b!3987738 (= lt!1404567 (lemmaConcatTwoListThenFirstIsPrefix!2678 lt!1404530 newSuffixResult!27))))

(assert (=> b!3987738 (isPrefix!3835 lt!1404530 lt!1404527)))

(assert (=> b!3987738 (= lt!1404527 (++!11150 lt!1404530 (_2!24064 (v!39515 lt!1404551))))))

(declare-fun lt!1404542 () Unit!61376)

(assert (=> b!3987738 (= lt!1404542 (lemmaConcatTwoListThenFirstIsPrefix!2678 lt!1404530 (_2!24064 (v!39515 lt!1404551))))))

(declare-fun lt!1404570 () TokenValue!6978)

(assert (=> b!3987738 (= lt!1404529 (Some!9161 (tuple2!41861 (Token!12635 lt!1404570 (rule!9762 (_1!24064 (v!39515 lt!1404551))) lt!1404548 lt!1404530) (_2!24064 (v!39515 lt!1404551)))))))

(assert (=> b!3987738 (= lt!1404529 (maxPrefixOneRule!2669 thiss!21717 (rule!9762 (_1!24064 (v!39515 lt!1404551))) lt!1404513))))

(assert (=> b!3987738 (= lt!1404548 (size!31903 lt!1404530))))

(assert (=> b!3987738 (= lt!1404570 (apply!9959 (transformation!6748 (rule!9762 (_1!24064 (v!39515 lt!1404551)))) (seqFromList!4987 lt!1404530)))))

(declare-fun lt!1404518 () Unit!61376)

(assert (=> b!3987738 (= lt!1404518 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1491 thiss!21717 rules!2999 lt!1404530 lt!1404513 (_2!24064 (v!39515 lt!1404551)) (rule!9762 (_1!24064 (v!39515 lt!1404551)))))))

(assert (=> b!3987738 (= lt!1404530 (list!15834 (charsOf!4564 (_1!24064 (v!39515 lt!1404551)))))))

(declare-fun lt!1404554 () Unit!61376)

(declare-fun lemmaInv!963 (TokenValueInjection!13384) Unit!61376)

(assert (=> b!3987738 (= lt!1404554 (lemmaInv!963 (transformation!6748 (rule!9762 (_1!24064 (v!39515 lt!1404551))))))))

(declare-fun ruleValid!2680 (LexerInterface!6337 Rule!13296) Bool)

(assert (=> b!3987738 (ruleValid!2680 thiss!21717 (rule!9762 (_1!24064 (v!39515 lt!1404551))))))

(declare-fun lt!1404537 () Unit!61376)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1754 (LexerInterface!6337 Rule!13296 List!42780) Unit!61376)

(assert (=> b!3987738 (= lt!1404537 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1754 thiss!21717 (rule!9762 (_1!24064 (v!39515 lt!1404551))) rules!2999))))

(declare-fun lt!1404552 () Unit!61376)

(declare-fun lemmaCharactersSize!1343 (Token!12634) Unit!61376)

(assert (=> b!3987738 (= lt!1404552 (lemmaCharactersSize!1343 token!484))))

(declare-fun lt!1404545 () Unit!61376)

(assert (=> b!3987738 (= lt!1404545 (lemmaCharactersSize!1343 (_1!24064 (v!39515 lt!1404551))))))

(declare-fun b!3987739 () Bool)

(declare-fun tp!1215061 () Bool)

(assert (=> b!3987739 (= e!2471845 (and tp_is_empty!20277 tp!1215061))))

(declare-fun b!3987740 () Bool)

(assert (=> b!3987740 (= e!2471855 (not e!2471842))))

(declare-fun res!1617699 () Bool)

(assert (=> b!3987740 (=> res!1617699 e!2471842)))

(assert (=> b!3987740 (= res!1617699 (not (= lt!1404538 lt!1404544)))))

(assert (=> b!3987740 (= lt!1404538 (++!11150 lt!1404540 suffixResult!105))))

(declare-fun lt!1404526 () Unit!61376)

(assert (=> b!3987740 (= lt!1404526 (lemmaInv!963 (transformation!6748 (rule!9762 token!484))))))

(assert (=> b!3987740 (ruleValid!2680 thiss!21717 (rule!9762 token!484))))

(declare-fun lt!1404573 () Unit!61376)

(assert (=> b!3987740 (= lt!1404573 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1754 thiss!21717 (rule!9762 token!484) rules!2999))))

(assert (=> b!3987741 (= e!2471850 (and tp!1215063 tp!1215056))))

(declare-fun b!3987742 () Bool)

(assert (=> b!3987742 (= e!2471861 false)))

(assert (= (and start!375252 res!1617721) b!3987710))

(assert (= (and b!3987710 res!1617722) b!3987703))

(assert (= (and b!3987703 res!1617716) b!3987709))

(assert (= (and b!3987709 res!1617697) b!3987706))

(assert (= (and b!3987706 res!1617712) b!3987726))

(assert (= (and b!3987726 res!1617700) b!3987701))

(assert (= (and b!3987701 res!1617723) b!3987714))

(assert (= (and b!3987714 res!1617713) b!3987740))

(assert (= (and b!3987740 (not res!1617699)) b!3987733))

(assert (= (and b!3987733 (not res!1617702)) b!3987734))

(assert (= (and b!3987734 (not res!1617709)) b!3987715))

(assert (= (and b!3987715 (not res!1617719)) b!3987702))

(assert (= (and b!3987702 (not res!1617706)) b!3987735))

(assert (= (and b!3987735 (not res!1617701)) b!3987727))

(assert (= (and b!3987727 res!1617718) b!3987716))

(assert (= (and b!3987716 res!1617711) b!3987711))

(assert (= (and b!3987711 res!1617708) b!3987722))

(assert (= (and b!3987727 (not res!1617704)) b!3987712))

(assert (= (and b!3987712 (not res!1617710)) b!3987738))

(assert (= (and b!3987738 (not res!1617724)) b!3987724))

(assert (= (and b!3987724 (not res!1617705)) b!3987700))

(assert (= (and b!3987700 (not res!1617714)) b!3987705))

(assert (= (and b!3987705 (not res!1617717)) b!3987731))

(assert (= (and b!3987731 (not res!1617703)) b!3987721))

(assert (= (and b!3987721 (not res!1617698)) b!3987713))

(assert (= (and b!3987713 c!690306) b!3987725))

(assert (= (and b!3987713 (not c!690306)) b!3987736))

(assert (= (and b!3987725 res!1617707) b!3987742))

(assert (= (and b!3987713 c!690307) b!3987718))

(assert (= (and b!3987713 (not c!690307)) b!3987729))

(assert (= (and b!3987713 (not res!1617715)) b!3987730))

(assert (= (and b!3987730 (not res!1617720)) b!3987723))

(assert (= (and start!375252 ((_ is Cons!42654) prefix!494)) b!3987704))

(assert (= b!3987717 b!3987707))

(assert (= b!3987728 b!3987717))

(assert (= start!375252 b!3987728))

(assert (= (and start!375252 ((_ is Cons!42654) suffixResult!105)) b!3987708))

(assert (= (and start!375252 ((_ is Cons!42654) suffix!1299)) b!3987739))

(assert (= (and start!375252 ((_ is Cons!42654) newSuffix!27)) b!3987732))

(assert (= b!3987719 b!3987741))

(assert (= b!3987720 b!3987719))

(assert (= (and start!375252 ((_ is Cons!42656) rules!2999)) b!3987720))

(assert (= (and start!375252 ((_ is Cons!42654) newSuffixResult!27)) b!3987737))

(declare-fun m!4564637 () Bool)

(assert (=> b!3987738 m!4564637))

(declare-fun m!4564639 () Bool)

(assert (=> b!3987738 m!4564639))

(declare-fun m!4564641 () Bool)

(assert (=> b!3987738 m!4564641))

(declare-fun m!4564643 () Bool)

(assert (=> b!3987738 m!4564643))

(declare-fun m!4564645 () Bool)

(assert (=> b!3987738 m!4564645))

(declare-fun m!4564647 () Bool)

(assert (=> b!3987738 m!4564647))

(declare-fun m!4564649 () Bool)

(assert (=> b!3987738 m!4564649))

(declare-fun m!4564651 () Bool)

(assert (=> b!3987738 m!4564651))

(declare-fun m!4564653 () Bool)

(assert (=> b!3987738 m!4564653))

(declare-fun m!4564655 () Bool)

(assert (=> b!3987738 m!4564655))

(declare-fun m!4564657 () Bool)

(assert (=> b!3987738 m!4564657))

(declare-fun m!4564659 () Bool)

(assert (=> b!3987738 m!4564659))

(declare-fun m!4564661 () Bool)

(assert (=> b!3987738 m!4564661))

(declare-fun m!4564663 () Bool)

(assert (=> b!3987738 m!4564663))

(assert (=> b!3987738 m!4564643))

(declare-fun m!4564665 () Bool)

(assert (=> b!3987738 m!4564665))

(declare-fun m!4564667 () Bool)

(assert (=> b!3987738 m!4564667))

(declare-fun m!4564669 () Bool)

(assert (=> b!3987738 m!4564669))

(assert (=> b!3987738 m!4564649))

(assert (=> b!3987738 m!4564657))

(declare-fun m!4564671 () Bool)

(assert (=> b!3987738 m!4564671))

(declare-fun m!4564673 () Bool)

(assert (=> b!3987721 m!4564673))

(declare-fun m!4564675 () Bool)

(assert (=> b!3987721 m!4564675))

(declare-fun m!4564677 () Bool)

(assert (=> b!3987740 m!4564677))

(declare-fun m!4564679 () Bool)

(assert (=> b!3987740 m!4564679))

(declare-fun m!4564681 () Bool)

(assert (=> b!3987740 m!4564681))

(declare-fun m!4564683 () Bool)

(assert (=> b!3987740 m!4564683))

(declare-fun m!4564685 () Bool)

(assert (=> b!3987714 m!4564685))

(declare-fun m!4564687 () Bool)

(assert (=> b!3987714 m!4564687))

(declare-fun m!4564689 () Bool)

(assert (=> b!3987726 m!4564689))

(declare-fun m!4564691 () Bool)

(assert (=> b!3987726 m!4564691))

(declare-fun m!4564693 () Bool)

(assert (=> b!3987726 m!4564693))

(assert (=> b!3987726 m!4564693))

(declare-fun m!4564695 () Bool)

(assert (=> b!3987726 m!4564695))

(declare-fun m!4564697 () Bool)

(assert (=> b!3987727 m!4564697))

(declare-fun m!4564699 () Bool)

(assert (=> b!3987727 m!4564699))

(declare-fun m!4564701 () Bool)

(assert (=> b!3987727 m!4564701))

(declare-fun m!4564703 () Bool)

(assert (=> b!3987727 m!4564703))

(declare-fun m!4564705 () Bool)

(assert (=> b!3987723 m!4564705))

(declare-fun m!4564707 () Bool)

(assert (=> b!3987723 m!4564707))

(declare-fun m!4564709 () Bool)

(assert (=> b!3987723 m!4564709))

(declare-fun m!4564711 () Bool)

(assert (=> start!375252 m!4564711))

(declare-fun m!4564713 () Bool)

(assert (=> b!3987718 m!4564713))

(declare-fun m!4564715 () Bool)

(assert (=> b!3987705 m!4564715))

(declare-fun m!4564717 () Bool)

(assert (=> b!3987705 m!4564717))

(declare-fun m!4564719 () Bool)

(assert (=> b!3987705 m!4564719))

(declare-fun m!4564721 () Bool)

(assert (=> b!3987709 m!4564721))

(declare-fun m!4564723 () Bool)

(assert (=> b!3987709 m!4564723))

(declare-fun m!4564725 () Bool)

(assert (=> b!3987711 m!4564725))

(declare-fun m!4564727 () Bool)

(assert (=> b!3987724 m!4564727))

(declare-fun m!4564729 () Bool)

(assert (=> b!3987724 m!4564729))

(declare-fun m!4564731 () Bool)

(assert (=> b!3987710 m!4564731))

(declare-fun m!4564733 () Bool)

(assert (=> b!3987715 m!4564733))

(declare-fun m!4564735 () Bool)

(assert (=> b!3987715 m!4564735))

(declare-fun m!4564737 () Bool)

(assert (=> b!3987715 m!4564737))

(declare-fun m!4564739 () Bool)

(assert (=> b!3987715 m!4564739))

(declare-fun m!4564741 () Bool)

(assert (=> b!3987733 m!4564741))

(declare-fun m!4564743 () Bool)

(assert (=> b!3987733 m!4564743))

(declare-fun m!4564745 () Bool)

(assert (=> b!3987733 m!4564745))

(declare-fun m!4564747 () Bool)

(assert (=> b!3987733 m!4564747))

(declare-fun m!4564749 () Bool)

(assert (=> b!3987733 m!4564749))

(declare-fun m!4564751 () Bool)

(assert (=> b!3987735 m!4564751))

(declare-fun m!4564753 () Bool)

(assert (=> b!3987735 m!4564753))

(declare-fun m!4564755 () Bool)

(assert (=> b!3987735 m!4564755))

(declare-fun m!4564757 () Bool)

(assert (=> b!3987735 m!4564757))

(declare-fun m!4564759 () Bool)

(assert (=> b!3987728 m!4564759))

(declare-fun m!4564761 () Bool)

(assert (=> b!3987706 m!4564761))

(declare-fun m!4564763 () Bool)

(assert (=> b!3987703 m!4564763))

(declare-fun m!4564765 () Bool)

(assert (=> b!3987712 m!4564765))

(declare-fun m!4564767 () Bool)

(assert (=> b!3987712 m!4564767))

(declare-fun m!4564769 () Bool)

(assert (=> b!3987712 m!4564769))

(declare-fun m!4564771 () Bool)

(assert (=> b!3987712 m!4564771))

(declare-fun m!4564773 () Bool)

(assert (=> b!3987734 m!4564773))

(declare-fun m!4564775 () Bool)

(assert (=> b!3987734 m!4564775))

(declare-fun m!4564777 () Bool)

(assert (=> b!3987734 m!4564777))

(declare-fun m!4564779 () Bool)

(assert (=> b!3987734 m!4564779))

(declare-fun m!4564781 () Bool)

(assert (=> b!3987700 m!4564781))

(declare-fun m!4564783 () Bool)

(assert (=> b!3987700 m!4564783))

(declare-fun m!4564785 () Bool)

(assert (=> b!3987700 m!4564785))

(declare-fun m!4564787 () Bool)

(assert (=> b!3987701 m!4564787))

(declare-fun m!4564789 () Bool)

(assert (=> b!3987701 m!4564789))

(declare-fun m!4564791 () Bool)

(assert (=> b!3987719 m!4564791))

(declare-fun m!4564793 () Bool)

(assert (=> b!3987719 m!4564793))

(declare-fun m!4564795 () Bool)

(assert (=> b!3987713 m!4564795))

(declare-fun m!4564797 () Bool)

(assert (=> b!3987713 m!4564797))

(declare-fun m!4564799 () Bool)

(assert (=> b!3987713 m!4564799))

(declare-fun m!4564801 () Bool)

(assert (=> b!3987725 m!4564801))

(declare-fun m!4564803 () Bool)

(assert (=> b!3987725 m!4564803))

(declare-fun m!4564805 () Bool)

(assert (=> b!3987730 m!4564805))

(declare-fun m!4564807 () Bool)

(assert (=> b!3987702 m!4564807))

(declare-fun m!4564809 () Bool)

(assert (=> b!3987702 m!4564809))

(declare-fun m!4564811 () Bool)

(assert (=> b!3987702 m!4564811))

(declare-fun m!4564813 () Bool)

(assert (=> b!3987702 m!4564813))

(declare-fun m!4564815 () Bool)

(assert (=> b!3987702 m!4564815))

(assert (=> b!3987702 m!4564807))

(declare-fun m!4564817 () Bool)

(assert (=> b!3987702 m!4564817))

(declare-fun m!4564819 () Bool)

(assert (=> b!3987702 m!4564819))

(declare-fun m!4564821 () Bool)

(assert (=> b!3987717 m!4564821))

(declare-fun m!4564823 () Bool)

(assert (=> b!3987717 m!4564823))

(check-sat (not b!3987711) (not b!3987702) (not b!3987730) (not b_next!111469) (not b!3987727) (not b_next!111467) (not b!3987728) (not b!3987706) (not b!3987733) (not b!3987737) (not b!3987723) (not b_next!111471) (not b!3987712) (not b!3987718) (not b!3987717) (not start!375252) (not b!3987732) (not b!3987738) (not b!3987719) (not b!3987735) (not b!3987715) (not b!3987721) (not b!3987709) (not b!3987740) (not b!3987714) (not b!3987704) (not b!3987713) (not b!3987725) (not b!3987703) (not b_next!111465) (not b!3987724) (not b!3987726) (not b!3987710) b_and!306435 tp_is_empty!20277 (not b!3987734) (not b!3987700) b_and!306433 b_and!306437 (not b!3987739) b_and!306431 (not b!3987705) (not b!3987708) (not b!3987720) (not b!3987701))
(check-sat (not b_next!111469) (not b_next!111467) (not b_next!111465) b_and!306435 (not b_next!111471) b_and!306431 b_and!306433 b_and!306437)
(get-model)

(declare-fun b!3987859 () Bool)

(declare-fun res!1617800 () Bool)

(declare-fun e!2471939 () Bool)

(assert (=> b!3987859 (=> (not res!1617800) (not e!2471939))))

(declare-fun isEmpty!25494 (List!42778) Bool)

(declare-fun tail!6219 (List!42778) List!42778)

(assert (=> b!3987859 (= res!1617800 (isEmpty!25494 (tail!6219 lt!1404540)))))

(declare-fun b!3987860 () Bool)

(declare-fun res!1617803 () Bool)

(assert (=> b!3987860 (=> (not res!1617803) (not e!2471939))))

(declare-fun call!285787 () Bool)

(assert (=> b!3987860 (= res!1617803 (not call!285787))))

(declare-fun b!3987861 () Bool)

(declare-fun res!1617807 () Bool)

(declare-fun e!2471936 () Bool)

(assert (=> b!3987861 (=> res!1617807 e!2471936)))

(assert (=> b!3987861 (= res!1617807 (not ((_ is ElementMatch!11653) (regex!6748 (rule!9762 token!484)))))))

(declare-fun e!2471942 () Bool)

(assert (=> b!3987861 (= e!2471942 e!2471936)))

(declare-fun b!3987862 () Bool)

(declare-fun res!1617805 () Bool)

(declare-fun e!2471941 () Bool)

(assert (=> b!3987862 (=> res!1617805 e!2471941)))

(assert (=> b!3987862 (= res!1617805 (not (isEmpty!25494 (tail!6219 lt!1404540))))))

(declare-fun d!1180013 () Bool)

(declare-fun e!2471938 () Bool)

(assert (=> d!1180013 e!2471938))

(declare-fun c!690332 () Bool)

(assert (=> d!1180013 (= c!690332 ((_ is EmptyExpr!11653) (regex!6748 (rule!9762 token!484))))))

(declare-fun lt!1404605 () Bool)

(declare-fun e!2471937 () Bool)

(assert (=> d!1180013 (= lt!1404605 e!2471937)))

(declare-fun c!690330 () Bool)

(assert (=> d!1180013 (= c!690330 (isEmpty!25494 lt!1404540))))

(declare-fun validRegex!5285 (Regex!11653) Bool)

(assert (=> d!1180013 (validRegex!5285 (regex!6748 (rule!9762 token!484)))))

(assert (=> d!1180013 (= (matchR!5630 (regex!6748 (rule!9762 token!484)) lt!1404540) lt!1404605)))

(declare-fun b!3987863 () Bool)

(assert (=> b!3987863 (= e!2471942 (not lt!1404605))))

(declare-fun bm!285782 () Bool)

(assert (=> bm!285782 (= call!285787 (isEmpty!25494 lt!1404540))))

(declare-fun b!3987864 () Bool)

(declare-fun nullable!4085 (Regex!11653) Bool)

(assert (=> b!3987864 (= e!2471937 (nullable!4085 (regex!6748 (rule!9762 token!484))))))

(declare-fun b!3987865 () Bool)

(assert (=> b!3987865 (= e!2471938 (= lt!1404605 call!285787))))

(declare-fun b!3987866 () Bool)

(declare-fun head!8487 (List!42778) C!23492)

(assert (=> b!3987866 (= e!2471941 (not (= (head!8487 lt!1404540) (c!690309 (regex!6748 (rule!9762 token!484))))))))

(declare-fun b!3987867 () Bool)

(declare-fun e!2471940 () Bool)

(assert (=> b!3987867 (= e!2471940 e!2471941)))

(declare-fun res!1617801 () Bool)

(assert (=> b!3987867 (=> res!1617801 e!2471941)))

(assert (=> b!3987867 (= res!1617801 call!285787)))

(declare-fun b!3987868 () Bool)

(assert (=> b!3987868 (= e!2471938 e!2471942)))

(declare-fun c!690331 () Bool)

(assert (=> b!3987868 (= c!690331 ((_ is EmptyLang!11653) (regex!6748 (rule!9762 token!484))))))

(declare-fun b!3987869 () Bool)

(assert (=> b!3987869 (= e!2471939 (= (head!8487 lt!1404540) (c!690309 (regex!6748 (rule!9762 token!484)))))))

(declare-fun b!3987870 () Bool)

(declare-fun res!1617806 () Bool)

(assert (=> b!3987870 (=> res!1617806 e!2471936)))

(assert (=> b!3987870 (= res!1617806 e!2471939)))

(declare-fun res!1617804 () Bool)

(assert (=> b!3987870 (=> (not res!1617804) (not e!2471939))))

(assert (=> b!3987870 (= res!1617804 lt!1404605)))

(declare-fun b!3987871 () Bool)

(assert (=> b!3987871 (= e!2471936 e!2471940)))

(declare-fun res!1617802 () Bool)

(assert (=> b!3987871 (=> (not res!1617802) (not e!2471940))))

(assert (=> b!3987871 (= res!1617802 (not lt!1404605))))

(declare-fun b!3987872 () Bool)

(declare-fun derivativeStep!3496 (Regex!11653 C!23492) Regex!11653)

(assert (=> b!3987872 (= e!2471937 (matchR!5630 (derivativeStep!3496 (regex!6748 (rule!9762 token!484)) (head!8487 lt!1404540)) (tail!6219 lt!1404540)))))

(assert (= (and d!1180013 c!690330) b!3987864))

(assert (= (and d!1180013 (not c!690330)) b!3987872))

(assert (= (and d!1180013 c!690332) b!3987865))

(assert (= (and d!1180013 (not c!690332)) b!3987868))

(assert (= (and b!3987868 c!690331) b!3987863))

(assert (= (and b!3987868 (not c!690331)) b!3987861))

(assert (= (and b!3987861 (not res!1617807)) b!3987870))

(assert (= (and b!3987870 res!1617804) b!3987860))

(assert (= (and b!3987860 res!1617803) b!3987859))

(assert (= (and b!3987859 res!1617800) b!3987869))

(assert (= (and b!3987870 (not res!1617806)) b!3987871))

(assert (= (and b!3987871 res!1617802) b!3987867))

(assert (= (and b!3987867 (not res!1617801)) b!3987862))

(assert (= (and b!3987862 (not res!1617805)) b!3987866))

(assert (= (or b!3987865 b!3987860 b!3987867) bm!285782))

(declare-fun m!4564987 () Bool)

(assert (=> b!3987866 m!4564987))

(assert (=> b!3987869 m!4564987))

(declare-fun m!4564989 () Bool)

(assert (=> b!3987859 m!4564989))

(assert (=> b!3987859 m!4564989))

(declare-fun m!4564991 () Bool)

(assert (=> b!3987859 m!4564991))

(assert (=> b!3987862 m!4564989))

(assert (=> b!3987862 m!4564989))

(assert (=> b!3987862 m!4564991))

(declare-fun m!4564993 () Bool)

(assert (=> bm!285782 m!4564993))

(declare-fun m!4564995 () Bool)

(assert (=> b!3987864 m!4564995))

(assert (=> d!1180013 m!4564993))

(declare-fun m!4564997 () Bool)

(assert (=> d!1180013 m!4564997))

(assert (=> b!3987872 m!4564987))

(assert (=> b!3987872 m!4564987))

(declare-fun m!4564999 () Bool)

(assert (=> b!3987872 m!4564999))

(assert (=> b!3987872 m!4564989))

(assert (=> b!3987872 m!4564999))

(assert (=> b!3987872 m!4564989))

(declare-fun m!4565001 () Bool)

(assert (=> b!3987872 m!4565001))

(assert (=> b!3987735 d!1180013))

(declare-fun b!3987883 () Bool)

(declare-fun e!2471950 () Bool)

(assert (=> b!3987883 (= e!2471950 (isPrefix!3835 (tail!6219 lt!1404540) (tail!6219 lt!1404513)))))

(declare-fun b!3987882 () Bool)

(declare-fun res!1617818 () Bool)

(assert (=> b!3987882 (=> (not res!1617818) (not e!2471950))))

(assert (=> b!3987882 (= res!1617818 (= (head!8487 lt!1404540) (head!8487 lt!1404513)))))

(declare-fun b!3987881 () Bool)

(declare-fun e!2471949 () Bool)

(assert (=> b!3987881 (= e!2471949 e!2471950)))

(declare-fun res!1617817 () Bool)

(assert (=> b!3987881 (=> (not res!1617817) (not e!2471950))))

(assert (=> b!3987881 (= res!1617817 (not ((_ is Nil!42654) lt!1404513)))))

(declare-fun b!3987884 () Bool)

(declare-fun e!2471951 () Bool)

(assert (=> b!3987884 (= e!2471951 (>= (size!31903 lt!1404513) (size!31903 lt!1404540)))))

(declare-fun d!1180055 () Bool)

(assert (=> d!1180055 e!2471951))

(declare-fun res!1617819 () Bool)

(assert (=> d!1180055 (=> res!1617819 e!2471951)))

(declare-fun lt!1404611 () Bool)

(assert (=> d!1180055 (= res!1617819 (not lt!1404611))))

(assert (=> d!1180055 (= lt!1404611 e!2471949)))

(declare-fun res!1617816 () Bool)

(assert (=> d!1180055 (=> res!1617816 e!2471949)))

(assert (=> d!1180055 (= res!1617816 ((_ is Nil!42654) lt!1404540))))

(assert (=> d!1180055 (= (isPrefix!3835 lt!1404540 lt!1404513) lt!1404611)))

(assert (= (and d!1180055 (not res!1617816)) b!3987881))

(assert (= (and b!3987881 res!1617817) b!3987882))

(assert (= (and b!3987882 res!1617818) b!3987883))

(assert (= (and d!1180055 (not res!1617819)) b!3987884))

(assert (=> b!3987883 m!4564989))

(declare-fun m!4565005 () Bool)

(assert (=> b!3987883 m!4565005))

(assert (=> b!3987883 m!4564989))

(assert (=> b!3987883 m!4565005))

(declare-fun m!4565007 () Bool)

(assert (=> b!3987883 m!4565007))

(assert (=> b!3987882 m!4564987))

(declare-fun m!4565009 () Bool)

(assert (=> b!3987882 m!4565009))

(declare-fun m!4565011 () Bool)

(assert (=> b!3987884 m!4565011))

(assert (=> b!3987884 m!4564689))

(assert (=> b!3987735 d!1180055))

(declare-fun d!1180059 () Bool)

(assert (=> d!1180059 (isPrefix!3835 lt!1404540 (++!11150 prefix!494 newSuffix!27))))

(declare-fun lt!1404614 () Unit!61376)

(declare-fun choose!23956 (List!42778 List!42778 List!42778) Unit!61376)

(assert (=> d!1180059 (= lt!1404614 (choose!23956 lt!1404540 prefix!494 newSuffix!27))))

(assert (=> d!1180059 (isPrefix!3835 lt!1404540 prefix!494)))

(assert (=> d!1180059 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!668 lt!1404540 prefix!494 newSuffix!27) lt!1404614)))

(declare-fun bs!588229 () Bool)

(assert (= bs!588229 d!1180059))

(assert (=> bs!588229 m!4564787))

(assert (=> bs!588229 m!4564787))

(declare-fun m!4565013 () Bool)

(assert (=> bs!588229 m!4565013))

(declare-fun m!4565015 () Bool)

(assert (=> bs!588229 m!4565015))

(assert (=> bs!588229 m!4564777))

(assert (=> b!3987735 d!1180059))

(declare-fun d!1180061 () Bool)

(assert (=> d!1180061 (isPrefix!3835 lt!1404540 (++!11150 prefix!494 suffix!1299))))

(declare-fun lt!1404615 () Unit!61376)

(assert (=> d!1180061 (= lt!1404615 (choose!23956 lt!1404540 prefix!494 suffix!1299))))

(assert (=> d!1180061 (isPrefix!3835 lt!1404540 prefix!494)))

(assert (=> d!1180061 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!668 lt!1404540 prefix!494 suffix!1299) lt!1404615)))

(declare-fun bs!588230 () Bool)

(assert (= bs!588230 d!1180061))

(assert (=> bs!588230 m!4564687))

(assert (=> bs!588230 m!4564687))

(declare-fun m!4565017 () Bool)

(assert (=> bs!588230 m!4565017))

(declare-fun m!4565019 () Bool)

(assert (=> bs!588230 m!4565019))

(assert (=> bs!588230 m!4564777))

(assert (=> b!3987735 d!1180061))

(declare-fun b!3987894 () Bool)

(declare-fun e!2471957 () List!42778)

(assert (=> b!3987894 (= e!2471957 (Cons!42654 (h!48074 lt!1404540) (++!11150 (t!331625 lt!1404540) lt!1404533)))))

(declare-fun b!3987895 () Bool)

(declare-fun res!1617825 () Bool)

(declare-fun e!2471956 () Bool)

(assert (=> b!3987895 (=> (not res!1617825) (not e!2471956))))

(declare-fun lt!1404618 () List!42778)

(assert (=> b!3987895 (= res!1617825 (= (size!31903 lt!1404618) (+ (size!31903 lt!1404540) (size!31903 lt!1404533))))))

(declare-fun b!3987893 () Bool)

(assert (=> b!3987893 (= e!2471957 lt!1404533)))

(declare-fun d!1180063 () Bool)

(assert (=> d!1180063 e!2471956))

(declare-fun res!1617824 () Bool)

(assert (=> d!1180063 (=> (not res!1617824) (not e!2471956))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6467 (List!42778) (InoxSet C!23492))

(assert (=> d!1180063 (= res!1617824 (= (content!6467 lt!1404618) ((_ map or) (content!6467 lt!1404540) (content!6467 lt!1404533))))))

(assert (=> d!1180063 (= lt!1404618 e!2471957)))

(declare-fun c!690335 () Bool)

(assert (=> d!1180063 (= c!690335 ((_ is Nil!42654) lt!1404540))))

(assert (=> d!1180063 (= (++!11150 lt!1404540 lt!1404533) lt!1404618)))

(declare-fun b!3987896 () Bool)

(assert (=> b!3987896 (= e!2471956 (or (not (= lt!1404533 Nil!42654)) (= lt!1404618 lt!1404540)))))

(assert (= (and d!1180063 c!690335) b!3987893))

(assert (= (and d!1180063 (not c!690335)) b!3987894))

(assert (= (and d!1180063 res!1617824) b!3987895))

(assert (= (and b!3987895 res!1617825) b!3987896))

(declare-fun m!4565021 () Bool)

(assert (=> b!3987894 m!4565021))

(declare-fun m!4565023 () Bool)

(assert (=> b!3987895 m!4565023))

(assert (=> b!3987895 m!4564689))

(declare-fun m!4565025 () Bool)

(assert (=> b!3987895 m!4565025))

(declare-fun m!4565027 () Bool)

(assert (=> d!1180063 m!4565027))

(declare-fun m!4565029 () Bool)

(assert (=> d!1180063 m!4565029))

(declare-fun m!4565031 () Bool)

(assert (=> d!1180063 m!4565031))

(assert (=> b!3987734 d!1180063))

(declare-fun d!1180065 () Bool)

(declare-fun lt!1404621 () List!42778)

(assert (=> d!1180065 (= (++!11150 lt!1404540 lt!1404621) prefix!494)))

(declare-fun e!2471960 () List!42778)

(assert (=> d!1180065 (= lt!1404621 e!2471960)))

(declare-fun c!690338 () Bool)

(assert (=> d!1180065 (= c!690338 ((_ is Cons!42654) lt!1404540))))

(assert (=> d!1180065 (>= (size!31903 prefix!494) (size!31903 lt!1404540))))

(assert (=> d!1180065 (= (getSuffix!2266 prefix!494 lt!1404540) lt!1404621)))

(declare-fun b!3987901 () Bool)

(assert (=> b!3987901 (= e!2471960 (getSuffix!2266 (tail!6219 prefix!494) (t!331625 lt!1404540)))))

(declare-fun b!3987902 () Bool)

(assert (=> b!3987902 (= e!2471960 prefix!494)))

(assert (= (and d!1180065 c!690338) b!3987901))

(assert (= (and d!1180065 (not c!690338)) b!3987902))

(declare-fun m!4565033 () Bool)

(assert (=> d!1180065 m!4565033))

(assert (=> d!1180065 m!4564691))

(assert (=> d!1180065 m!4564689))

(declare-fun m!4565035 () Bool)

(assert (=> b!3987901 m!4565035))

(assert (=> b!3987901 m!4565035))

(declare-fun m!4565037 () Bool)

(assert (=> b!3987901 m!4565037))

(assert (=> b!3987734 d!1180065))

(declare-fun b!3987905 () Bool)

(declare-fun e!2471962 () Bool)

(assert (=> b!3987905 (= e!2471962 (isPrefix!3835 (tail!6219 lt!1404540) (tail!6219 prefix!494)))))

(declare-fun b!3987904 () Bool)

(declare-fun res!1617828 () Bool)

(assert (=> b!3987904 (=> (not res!1617828) (not e!2471962))))

(assert (=> b!3987904 (= res!1617828 (= (head!8487 lt!1404540) (head!8487 prefix!494)))))

(declare-fun b!3987903 () Bool)

(declare-fun e!2471961 () Bool)

(assert (=> b!3987903 (= e!2471961 e!2471962)))

(declare-fun res!1617827 () Bool)

(assert (=> b!3987903 (=> (not res!1617827) (not e!2471962))))

(assert (=> b!3987903 (= res!1617827 (not ((_ is Nil!42654) prefix!494)))))

(declare-fun b!3987906 () Bool)

(declare-fun e!2471963 () Bool)

(assert (=> b!3987906 (= e!2471963 (>= (size!31903 prefix!494) (size!31903 lt!1404540)))))

(declare-fun d!1180067 () Bool)

(assert (=> d!1180067 e!2471963))

(declare-fun res!1617829 () Bool)

(assert (=> d!1180067 (=> res!1617829 e!2471963)))

(declare-fun lt!1404622 () Bool)

(assert (=> d!1180067 (= res!1617829 (not lt!1404622))))

(assert (=> d!1180067 (= lt!1404622 e!2471961)))

(declare-fun res!1617826 () Bool)

(assert (=> d!1180067 (=> res!1617826 e!2471961)))

(assert (=> d!1180067 (= res!1617826 ((_ is Nil!42654) lt!1404540))))

(assert (=> d!1180067 (= (isPrefix!3835 lt!1404540 prefix!494) lt!1404622)))

(assert (= (and d!1180067 (not res!1617826)) b!3987903))

(assert (= (and b!3987903 res!1617827) b!3987904))

(assert (= (and b!3987904 res!1617828) b!3987905))

(assert (= (and d!1180067 (not res!1617829)) b!3987906))

(assert (=> b!3987905 m!4564989))

(assert (=> b!3987905 m!4565035))

(assert (=> b!3987905 m!4564989))

(assert (=> b!3987905 m!4565035))

(declare-fun m!4565039 () Bool)

(assert (=> b!3987905 m!4565039))

(assert (=> b!3987904 m!4564987))

(declare-fun m!4565041 () Bool)

(assert (=> b!3987904 m!4565041))

(assert (=> b!3987906 m!4564691))

(assert (=> b!3987906 m!4564689))

(assert (=> b!3987734 d!1180067))

(declare-fun d!1180069 () Bool)

(assert (=> d!1180069 (isPrefix!3835 lt!1404540 prefix!494)))

(declare-fun lt!1404635 () Unit!61376)

(declare-fun choose!23958 (List!42778 List!42778 List!42778) Unit!61376)

(assert (=> d!1180069 (= lt!1404635 (choose!23958 prefix!494 lt!1404540 lt!1404544))))

(assert (=> d!1180069 (isPrefix!3835 prefix!494 lt!1404544)))

(assert (=> d!1180069 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!413 prefix!494 lt!1404540 lt!1404544) lt!1404635)))

(declare-fun bs!588231 () Bool)

(assert (= bs!588231 d!1180069))

(assert (=> bs!588231 m!4564777))

(declare-fun m!4565043 () Bool)

(assert (=> bs!588231 m!4565043))

(assert (=> bs!588231 m!4564745))

(assert (=> b!3987734 d!1180069))

(declare-fun d!1180071 () Bool)

(assert (=> d!1180071 (= (_2!24064 (v!39515 lt!1404551)) lt!1404532)))

(declare-fun lt!1404638 () Unit!61376)

(declare-fun choose!23959 (List!42778 List!42778 List!42778 List!42778 List!42778) Unit!61376)

(assert (=> d!1180071 (= lt!1404638 (choose!23959 lt!1404530 (_2!24064 (v!39515 lt!1404551)) lt!1404530 lt!1404532 lt!1404513))))

(assert (=> d!1180071 (isPrefix!3835 lt!1404530 lt!1404513)))

(assert (=> d!1180071 (= (lemmaSamePrefixThenSameSuffix!2022 lt!1404530 (_2!24064 (v!39515 lt!1404551)) lt!1404530 lt!1404532 lt!1404513) lt!1404638)))

(declare-fun bs!588232 () Bool)

(assert (= bs!588232 d!1180071))

(declare-fun m!4565045 () Bool)

(assert (=> bs!588232 m!4565045))

(assert (=> bs!588232 m!4564805))

(assert (=> b!3987713 d!1180071))

(declare-fun b!3987936 () Bool)

(declare-fun e!2471977 () Bool)

(assert (=> b!3987936 (= e!2471977 (isPrefix!3835 (tail!6219 lt!1404530) (tail!6219 lt!1404521)))))

(declare-fun b!3987935 () Bool)

(declare-fun res!1617853 () Bool)

(assert (=> b!3987935 (=> (not res!1617853) (not e!2471977))))

(assert (=> b!3987935 (= res!1617853 (= (head!8487 lt!1404530) (head!8487 lt!1404521)))))

(declare-fun b!3987934 () Bool)

(declare-fun e!2471976 () Bool)

(assert (=> b!3987934 (= e!2471976 e!2471977)))

(declare-fun res!1617852 () Bool)

(assert (=> b!3987934 (=> (not res!1617852) (not e!2471977))))

(assert (=> b!3987934 (= res!1617852 (not ((_ is Nil!42654) lt!1404521)))))

(declare-fun b!3987937 () Bool)

(declare-fun e!2471978 () Bool)

(assert (=> b!3987937 (= e!2471978 (>= (size!31903 lt!1404521) (size!31903 lt!1404530)))))

(declare-fun d!1180073 () Bool)

(assert (=> d!1180073 e!2471978))

(declare-fun res!1617854 () Bool)

(assert (=> d!1180073 (=> res!1617854 e!2471978)))

(declare-fun lt!1404644 () Bool)

(assert (=> d!1180073 (= res!1617854 (not lt!1404644))))

(assert (=> d!1180073 (= lt!1404644 e!2471976)))

(declare-fun res!1617851 () Bool)

(assert (=> d!1180073 (=> res!1617851 e!2471976)))

(assert (=> d!1180073 (= res!1617851 ((_ is Nil!42654) lt!1404530))))

(assert (=> d!1180073 (= (isPrefix!3835 lt!1404530 lt!1404521) lt!1404644)))

(assert (= (and d!1180073 (not res!1617851)) b!3987934))

(assert (= (and b!3987934 res!1617852) b!3987935))

(assert (= (and b!3987935 res!1617853) b!3987936))

(assert (= (and d!1180073 (not res!1617854)) b!3987937))

(declare-fun m!4565047 () Bool)

(assert (=> b!3987936 m!4565047))

(declare-fun m!4565049 () Bool)

(assert (=> b!3987936 m!4565049))

(assert (=> b!3987936 m!4565047))

(assert (=> b!3987936 m!4565049))

(declare-fun m!4565051 () Bool)

(assert (=> b!3987936 m!4565051))

(declare-fun m!4565053 () Bool)

(assert (=> b!3987935 m!4565053))

(declare-fun m!4565055 () Bool)

(assert (=> b!3987935 m!4565055))

(declare-fun m!4565057 () Bool)

(assert (=> b!3987937 m!4565057))

(assert (=> b!3987937 m!4564647))

(assert (=> b!3987713 d!1180073))

(declare-fun d!1180075 () Bool)

(assert (=> d!1180075 (isPrefix!3835 lt!1404530 (++!11150 lt!1404530 lt!1404532))))

(declare-fun lt!1404647 () Unit!61376)

(declare-fun choose!23960 (List!42778 List!42778) Unit!61376)

(assert (=> d!1180075 (= lt!1404647 (choose!23960 lt!1404530 lt!1404532))))

(assert (=> d!1180075 (= (lemmaConcatTwoListThenFirstIsPrefix!2678 lt!1404530 lt!1404532) lt!1404647)))

(declare-fun bs!588233 () Bool)

(assert (= bs!588233 d!1180075))

(assert (=> bs!588233 m!4564673))

(assert (=> bs!588233 m!4564673))

(declare-fun m!4565105 () Bool)

(assert (=> bs!588233 m!4565105))

(declare-fun m!4565107 () Bool)

(assert (=> bs!588233 m!4565107))

(assert (=> b!3987713 d!1180075))

(declare-fun b!3988020 () Bool)

(declare-fun e!2472031 () Bool)

(declare-fun e!2472033 () Bool)

(assert (=> b!3988020 (= e!2472031 e!2472033)))

(declare-fun res!1617912 () Bool)

(assert (=> b!3988020 (=> (not res!1617912) (not e!2472033))))

(declare-fun lt!1404684 () Option!9162)

(declare-fun isDefined!7037 (Option!9162) Bool)

(assert (=> b!3988020 (= res!1617912 (isDefined!7037 lt!1404684))))

(declare-fun b!3988021 () Bool)

(declare-fun get!14036 (Option!9162) tuple2!41860)

(assert (=> b!3988021 (= e!2472033 (contains!8489 rules!2999 (rule!9762 (_1!24064 (get!14036 lt!1404684)))))))

(declare-fun b!3988022 () Bool)

(declare-fun res!1617915 () Bool)

(assert (=> b!3988022 (=> (not res!1617915) (not e!2472033))))

(assert (=> b!3988022 (= res!1617915 (= (value!212952 (_1!24064 (get!14036 lt!1404684))) (apply!9959 (transformation!6748 (rule!9762 (_1!24064 (get!14036 lt!1404684)))) (seqFromList!4987 (originalCharacters!7348 (_1!24064 (get!14036 lt!1404684)))))))))

(declare-fun b!3988023 () Bool)

(declare-fun res!1617916 () Bool)

(assert (=> b!3988023 (=> (not res!1617916) (not e!2472033))))

(assert (=> b!3988023 (= res!1617916 (< (size!31903 (_2!24064 (get!14036 lt!1404684))) (size!31903 lt!1404513)))))

(declare-fun b!3988024 () Bool)

(declare-fun res!1617913 () Bool)

(assert (=> b!3988024 (=> (not res!1617913) (not e!2472033))))

(assert (=> b!3988024 (= res!1617913 (= (++!11150 (list!15834 (charsOf!4564 (_1!24064 (get!14036 lt!1404684)))) (_2!24064 (get!14036 lt!1404684))) lt!1404513))))

(declare-fun bm!285785 () Bool)

(declare-fun call!285790 () Option!9162)

(assert (=> bm!285785 (= call!285790 (maxPrefixOneRule!2669 thiss!21717 (h!48076 rules!2999) lt!1404513))))

(declare-fun b!3988025 () Bool)

(declare-fun res!1617917 () Bool)

(assert (=> b!3988025 (=> (not res!1617917) (not e!2472033))))

(assert (=> b!3988025 (= res!1617917 (matchR!5630 (regex!6748 (rule!9762 (_1!24064 (get!14036 lt!1404684)))) (list!15834 (charsOf!4564 (_1!24064 (get!14036 lt!1404684))))))))

(declare-fun d!1180081 () Bool)

(assert (=> d!1180081 e!2472031))

(declare-fun res!1617914 () Bool)

(assert (=> d!1180081 (=> res!1617914 e!2472031)))

(declare-fun isEmpty!25496 (Option!9162) Bool)

(assert (=> d!1180081 (= res!1617914 (isEmpty!25496 lt!1404684))))

(declare-fun e!2472032 () Option!9162)

(assert (=> d!1180081 (= lt!1404684 e!2472032)))

(declare-fun c!690354 () Bool)

(assert (=> d!1180081 (= c!690354 (and ((_ is Cons!42656) rules!2999) ((_ is Nil!42656) (t!331627 rules!2999))))))

(declare-fun lt!1404687 () Unit!61376)

(declare-fun lt!1404685 () Unit!61376)

(assert (=> d!1180081 (= lt!1404687 lt!1404685)))

(assert (=> d!1180081 (isPrefix!3835 lt!1404513 lt!1404513)))

(assert (=> d!1180081 (= lt!1404685 (lemmaIsPrefixRefl!2427 lt!1404513 lt!1404513))))

(declare-fun rulesValidInductive!2450 (LexerInterface!6337 List!42780) Bool)

(assert (=> d!1180081 (rulesValidInductive!2450 thiss!21717 rules!2999)))

(assert (=> d!1180081 (= (maxPrefix!3635 thiss!21717 rules!2999 lt!1404513) lt!1404684)))

(declare-fun b!3988026 () Bool)

(declare-fun res!1617911 () Bool)

(assert (=> b!3988026 (=> (not res!1617911) (not e!2472033))))

(assert (=> b!3988026 (= res!1617911 (= (list!15834 (charsOf!4564 (_1!24064 (get!14036 lt!1404684)))) (originalCharacters!7348 (_1!24064 (get!14036 lt!1404684)))))))

(declare-fun b!3988027 () Bool)

(assert (=> b!3988027 (= e!2472032 call!285790)))

(declare-fun b!3988028 () Bool)

(declare-fun lt!1404686 () Option!9162)

(declare-fun lt!1404688 () Option!9162)

(assert (=> b!3988028 (= e!2472032 (ite (and ((_ is None!9161) lt!1404686) ((_ is None!9161) lt!1404688)) None!9161 (ite ((_ is None!9161) lt!1404688) lt!1404686 (ite ((_ is None!9161) lt!1404686) lt!1404688 (ite (>= (size!31902 (_1!24064 (v!39515 lt!1404686))) (size!31902 (_1!24064 (v!39515 lt!1404688)))) lt!1404686 lt!1404688)))))))

(assert (=> b!3988028 (= lt!1404686 call!285790)))

(assert (=> b!3988028 (= lt!1404688 (maxPrefix!3635 thiss!21717 (t!331627 rules!2999) lt!1404513))))

(assert (= (and d!1180081 c!690354) b!3988027))

(assert (= (and d!1180081 (not c!690354)) b!3988028))

(assert (= (or b!3988027 b!3988028) bm!285785))

(assert (= (and d!1180081 (not res!1617914)) b!3988020))

(assert (= (and b!3988020 res!1617912) b!3988026))

(assert (= (and b!3988026 res!1617911) b!3988023))

(assert (= (and b!3988023 res!1617916) b!3988024))

(assert (= (and b!3988024 res!1617913) b!3988022))

(assert (= (and b!3988022 res!1617915) b!3988025))

(assert (= (and b!3988025 res!1617917) b!3988021))

(declare-fun m!4565209 () Bool)

(assert (=> b!3988020 m!4565209))

(declare-fun m!4565211 () Bool)

(assert (=> b!3988021 m!4565211))

(declare-fun m!4565213 () Bool)

(assert (=> b!3988021 m!4565213))

(assert (=> b!3988026 m!4565211))

(declare-fun m!4565215 () Bool)

(assert (=> b!3988026 m!4565215))

(assert (=> b!3988026 m!4565215))

(declare-fun m!4565217 () Bool)

(assert (=> b!3988026 m!4565217))

(assert (=> b!3988022 m!4565211))

(declare-fun m!4565219 () Bool)

(assert (=> b!3988022 m!4565219))

(assert (=> b!3988022 m!4565219))

(declare-fun m!4565221 () Bool)

(assert (=> b!3988022 m!4565221))

(declare-fun m!4565223 () Bool)

(assert (=> bm!285785 m!4565223))

(declare-fun m!4565225 () Bool)

(assert (=> d!1180081 m!4565225))

(declare-fun m!4565227 () Bool)

(assert (=> d!1180081 m!4565227))

(declare-fun m!4565229 () Bool)

(assert (=> d!1180081 m!4565229))

(declare-fun m!4565231 () Bool)

(assert (=> d!1180081 m!4565231))

(declare-fun m!4565233 () Bool)

(assert (=> b!3988028 m!4565233))

(assert (=> b!3988024 m!4565211))

(assert (=> b!3988024 m!4565215))

(assert (=> b!3988024 m!4565215))

(assert (=> b!3988024 m!4565217))

(assert (=> b!3988024 m!4565217))

(declare-fun m!4565235 () Bool)

(assert (=> b!3988024 m!4565235))

(assert (=> b!3988023 m!4565211))

(declare-fun m!4565237 () Bool)

(assert (=> b!3988023 m!4565237))

(assert (=> b!3988023 m!4565011))

(assert (=> b!3988025 m!4565211))

(assert (=> b!3988025 m!4565215))

(assert (=> b!3988025 m!4565215))

(assert (=> b!3988025 m!4565217))

(assert (=> b!3988025 m!4565217))

(declare-fun m!4565239 () Bool)

(assert (=> b!3988025 m!4565239))

(assert (=> b!3987712 d!1180081))

(declare-fun d!1180131 () Bool)

(assert (=> d!1180131 (= suffixResult!105 lt!1404519)))

(declare-fun lt!1404699 () Unit!61376)

(assert (=> d!1180131 (= lt!1404699 (choose!23959 lt!1404540 suffixResult!105 lt!1404540 lt!1404519 lt!1404544))))

(assert (=> d!1180131 (isPrefix!3835 lt!1404540 lt!1404544)))

(assert (=> d!1180131 (= (lemmaSamePrefixThenSameSuffix!2022 lt!1404540 suffixResult!105 lt!1404540 lt!1404519 lt!1404544) lt!1404699)))

(declare-fun bs!588241 () Bool)

(assert (= bs!588241 d!1180131))

(declare-fun m!4565241 () Bool)

(assert (=> bs!588241 m!4565241))

(assert (=> bs!588241 m!4564747))

(assert (=> b!3987712 d!1180131))

(declare-fun b!3988049 () Bool)

(declare-fun e!2472041 () Bool)

(assert (=> b!3988049 (= e!2472041 (isPrefix!3835 (tail!6219 lt!1404540) (tail!6219 lt!1404543)))))

(declare-fun b!3988048 () Bool)

(declare-fun res!1617934 () Bool)

(assert (=> b!3988048 (=> (not res!1617934) (not e!2472041))))

(assert (=> b!3988048 (= res!1617934 (= (head!8487 lt!1404540) (head!8487 lt!1404543)))))

(declare-fun b!3988047 () Bool)

(declare-fun e!2472040 () Bool)

(assert (=> b!3988047 (= e!2472040 e!2472041)))

(declare-fun res!1617933 () Bool)

(assert (=> b!3988047 (=> (not res!1617933) (not e!2472041))))

(assert (=> b!3988047 (= res!1617933 (not ((_ is Nil!42654) lt!1404543)))))

(declare-fun b!3988050 () Bool)

(declare-fun e!2472042 () Bool)

(assert (=> b!3988050 (= e!2472042 (>= (size!31903 lt!1404543) (size!31903 lt!1404540)))))

(declare-fun d!1180133 () Bool)

(assert (=> d!1180133 e!2472042))

(declare-fun res!1617935 () Bool)

(assert (=> d!1180133 (=> res!1617935 e!2472042)))

(declare-fun lt!1404700 () Bool)

(assert (=> d!1180133 (= res!1617935 (not lt!1404700))))

(assert (=> d!1180133 (= lt!1404700 e!2472040)))

(declare-fun res!1617932 () Bool)

(assert (=> d!1180133 (=> res!1617932 e!2472040)))

(assert (=> d!1180133 (= res!1617932 ((_ is Nil!42654) lt!1404540))))

(assert (=> d!1180133 (= (isPrefix!3835 lt!1404540 lt!1404543) lt!1404700)))

(assert (= (and d!1180133 (not res!1617932)) b!3988047))

(assert (= (and b!3988047 res!1617933) b!3988048))

(assert (= (and b!3988048 res!1617934) b!3988049))

(assert (= (and d!1180133 (not res!1617935)) b!3988050))

(assert (=> b!3988049 m!4564989))

(declare-fun m!4565243 () Bool)

(assert (=> b!3988049 m!4565243))

(assert (=> b!3988049 m!4564989))

(assert (=> b!3988049 m!4565243))

(declare-fun m!4565245 () Bool)

(assert (=> b!3988049 m!4565245))

(assert (=> b!3988048 m!4564987))

(declare-fun m!4565247 () Bool)

(assert (=> b!3988048 m!4565247))

(declare-fun m!4565249 () Bool)

(assert (=> b!3988050 m!4565249))

(assert (=> b!3988050 m!4564689))

(assert (=> b!3987712 d!1180133))

(declare-fun d!1180135 () Bool)

(assert (=> d!1180135 (isPrefix!3835 lt!1404540 (++!11150 lt!1404540 lt!1404519))))

(declare-fun lt!1404701 () Unit!61376)

(assert (=> d!1180135 (= lt!1404701 (choose!23960 lt!1404540 lt!1404519))))

(assert (=> d!1180135 (= (lemmaConcatTwoListThenFirstIsPrefix!2678 lt!1404540 lt!1404519) lt!1404701)))

(declare-fun bs!588242 () Bool)

(assert (= bs!588242 d!1180135))

(assert (=> bs!588242 m!4564697))

(assert (=> bs!588242 m!4564697))

(declare-fun m!4565251 () Bool)

(assert (=> bs!588242 m!4565251))

(declare-fun m!4565253 () Bool)

(assert (=> bs!588242 m!4565253))

(assert (=> b!3987712 d!1180135))

(declare-fun b!3988053 () Bool)

(declare-fun e!2472044 () Bool)

(assert (=> b!3988053 (= e!2472044 (isPrefix!3835 (tail!6219 prefix!494) (tail!6219 lt!1404544)))))

(declare-fun b!3988052 () Bool)

(declare-fun res!1617938 () Bool)

(assert (=> b!3988052 (=> (not res!1617938) (not e!2472044))))

(assert (=> b!3988052 (= res!1617938 (= (head!8487 prefix!494) (head!8487 lt!1404544)))))

(declare-fun b!3988051 () Bool)

(declare-fun e!2472043 () Bool)

(assert (=> b!3988051 (= e!2472043 e!2472044)))

(declare-fun res!1617937 () Bool)

(assert (=> b!3988051 (=> (not res!1617937) (not e!2472044))))

(assert (=> b!3988051 (= res!1617937 (not ((_ is Nil!42654) lt!1404544)))))

(declare-fun b!3988054 () Bool)

(declare-fun e!2472045 () Bool)

(assert (=> b!3988054 (= e!2472045 (>= (size!31903 lt!1404544) (size!31903 prefix!494)))))

(declare-fun d!1180137 () Bool)

(assert (=> d!1180137 e!2472045))

(declare-fun res!1617939 () Bool)

(assert (=> d!1180137 (=> res!1617939 e!2472045)))

(declare-fun lt!1404702 () Bool)

(assert (=> d!1180137 (= res!1617939 (not lt!1404702))))

(assert (=> d!1180137 (= lt!1404702 e!2472043)))

(declare-fun res!1617936 () Bool)

(assert (=> d!1180137 (=> res!1617936 e!2472043)))

(assert (=> d!1180137 (= res!1617936 ((_ is Nil!42654) prefix!494))))

(assert (=> d!1180137 (= (isPrefix!3835 prefix!494 lt!1404544) lt!1404702)))

(assert (= (and d!1180137 (not res!1617936)) b!3988051))

(assert (= (and b!3988051 res!1617937) b!3988052))

(assert (= (and b!3988052 res!1617938) b!3988053))

(assert (= (and d!1180137 (not res!1617939)) b!3988054))

(assert (=> b!3988053 m!4565035))

(declare-fun m!4565255 () Bool)

(assert (=> b!3988053 m!4565255))

(assert (=> b!3988053 m!4565035))

(assert (=> b!3988053 m!4565255))

(declare-fun m!4565257 () Bool)

(assert (=> b!3988053 m!4565257))

(assert (=> b!3988052 m!4565041))

(declare-fun m!4565259 () Bool)

(assert (=> b!3988052 m!4565259))

(declare-fun m!4565261 () Bool)

(assert (=> b!3988054 m!4565261))

(assert (=> b!3988054 m!4564691))

(assert (=> b!3987733 d!1180137))

(declare-fun d!1180139 () Bool)

(assert (=> d!1180139 (isPrefix!3835 lt!1404540 (++!11150 lt!1404540 suffixResult!105))))

(declare-fun lt!1404703 () Unit!61376)

(assert (=> d!1180139 (= lt!1404703 (choose!23960 lt!1404540 suffixResult!105))))

(assert (=> d!1180139 (= (lemmaConcatTwoListThenFirstIsPrefix!2678 lt!1404540 suffixResult!105) lt!1404703)))

(declare-fun bs!588243 () Bool)

(assert (= bs!588243 d!1180139))

(assert (=> bs!588243 m!4564677))

(assert (=> bs!588243 m!4564677))

(declare-fun m!4565263 () Bool)

(assert (=> bs!588243 m!4565263))

(declare-fun m!4565265 () Bool)

(assert (=> bs!588243 m!4565265))

(assert (=> b!3987733 d!1180139))

(declare-fun b!3988057 () Bool)

(declare-fun e!2472047 () Bool)

(assert (=> b!3988057 (= e!2472047 (isPrefix!3835 (tail!6219 lt!1404540) (tail!6219 lt!1404538)))))

(declare-fun b!3988056 () Bool)

(declare-fun res!1617942 () Bool)

(assert (=> b!3988056 (=> (not res!1617942) (not e!2472047))))

(assert (=> b!3988056 (= res!1617942 (= (head!8487 lt!1404540) (head!8487 lt!1404538)))))

(declare-fun b!3988055 () Bool)

(declare-fun e!2472046 () Bool)

(assert (=> b!3988055 (= e!2472046 e!2472047)))

(declare-fun res!1617941 () Bool)

(assert (=> b!3988055 (=> (not res!1617941) (not e!2472047))))

(assert (=> b!3988055 (= res!1617941 (not ((_ is Nil!42654) lt!1404538)))))

(declare-fun b!3988058 () Bool)

(declare-fun e!2472048 () Bool)

(assert (=> b!3988058 (= e!2472048 (>= (size!31903 lt!1404538) (size!31903 lt!1404540)))))

(declare-fun d!1180141 () Bool)

(assert (=> d!1180141 e!2472048))

(declare-fun res!1617943 () Bool)

(assert (=> d!1180141 (=> res!1617943 e!2472048)))

(declare-fun lt!1404704 () Bool)

(assert (=> d!1180141 (= res!1617943 (not lt!1404704))))

(assert (=> d!1180141 (= lt!1404704 e!2472046)))

(declare-fun res!1617940 () Bool)

(assert (=> d!1180141 (=> res!1617940 e!2472046)))

(assert (=> d!1180141 (= res!1617940 ((_ is Nil!42654) lt!1404540))))

(assert (=> d!1180141 (= (isPrefix!3835 lt!1404540 lt!1404538) lt!1404704)))

(assert (= (and d!1180141 (not res!1617940)) b!3988055))

(assert (= (and b!3988055 res!1617941) b!3988056))

(assert (= (and b!3988056 res!1617942) b!3988057))

(assert (= (and d!1180141 (not res!1617943)) b!3988058))

(assert (=> b!3988057 m!4564989))

(declare-fun m!4565267 () Bool)

(assert (=> b!3988057 m!4565267))

(assert (=> b!3988057 m!4564989))

(assert (=> b!3988057 m!4565267))

(declare-fun m!4565269 () Bool)

(assert (=> b!3988057 m!4565269))

(assert (=> b!3988056 m!4564987))

(declare-fun m!4565271 () Bool)

(assert (=> b!3988056 m!4565271))

(declare-fun m!4565273 () Bool)

(assert (=> b!3988058 m!4565273))

(assert (=> b!3988058 m!4564689))

(assert (=> b!3987733 d!1180141))

(declare-fun d!1180143 () Bool)

(assert (=> d!1180143 (isPrefix!3835 prefix!494 (++!11150 prefix!494 suffix!1299))))

(declare-fun lt!1404705 () Unit!61376)

(assert (=> d!1180143 (= lt!1404705 (choose!23960 prefix!494 suffix!1299))))

(assert (=> d!1180143 (= (lemmaConcatTwoListThenFirstIsPrefix!2678 prefix!494 suffix!1299) lt!1404705)))

(declare-fun bs!588244 () Bool)

(assert (= bs!588244 d!1180143))

(assert (=> bs!588244 m!4564687))

(assert (=> bs!588244 m!4564687))

(declare-fun m!4565275 () Bool)

(assert (=> bs!588244 m!4565275))

(declare-fun m!4565277 () Bool)

(assert (=> bs!588244 m!4565277))

(assert (=> b!3987733 d!1180143))

(declare-fun b!3988061 () Bool)

(declare-fun e!2472050 () Bool)

(assert (=> b!3988061 (= e!2472050 (isPrefix!3835 (tail!6219 lt!1404540) (tail!6219 lt!1404544)))))

(declare-fun b!3988060 () Bool)

(declare-fun res!1617946 () Bool)

(assert (=> b!3988060 (=> (not res!1617946) (not e!2472050))))

(assert (=> b!3988060 (= res!1617946 (= (head!8487 lt!1404540) (head!8487 lt!1404544)))))

(declare-fun b!3988059 () Bool)

(declare-fun e!2472049 () Bool)

(assert (=> b!3988059 (= e!2472049 e!2472050)))

(declare-fun res!1617945 () Bool)

(assert (=> b!3988059 (=> (not res!1617945) (not e!2472050))))

(assert (=> b!3988059 (= res!1617945 (not ((_ is Nil!42654) lt!1404544)))))

(declare-fun b!3988062 () Bool)

(declare-fun e!2472051 () Bool)

(assert (=> b!3988062 (= e!2472051 (>= (size!31903 lt!1404544) (size!31903 lt!1404540)))))

(declare-fun d!1180145 () Bool)

(assert (=> d!1180145 e!2472051))

(declare-fun res!1617947 () Bool)

(assert (=> d!1180145 (=> res!1617947 e!2472051)))

(declare-fun lt!1404706 () Bool)

(assert (=> d!1180145 (= res!1617947 (not lt!1404706))))

(assert (=> d!1180145 (= lt!1404706 e!2472049)))

(declare-fun res!1617944 () Bool)

(assert (=> d!1180145 (=> res!1617944 e!2472049)))

(assert (=> d!1180145 (= res!1617944 ((_ is Nil!42654) lt!1404540))))

(assert (=> d!1180145 (= (isPrefix!3835 lt!1404540 lt!1404544) lt!1404706)))

(assert (= (and d!1180145 (not res!1617944)) b!3988059))

(assert (= (and b!3988059 res!1617945) b!3988060))

(assert (= (and b!3988060 res!1617946) b!3988061))

(assert (= (and d!1180145 (not res!1617947)) b!3988062))

(assert (=> b!3988061 m!4564989))

(assert (=> b!3988061 m!4565255))

(assert (=> b!3988061 m!4564989))

(assert (=> b!3988061 m!4565255))

(declare-fun m!4565279 () Bool)

(assert (=> b!3988061 m!4565279))

(assert (=> b!3988060 m!4564987))

(assert (=> b!3988060 m!4565259))

(assert (=> b!3988062 m!4565261))

(assert (=> b!3988062 m!4564689))

(assert (=> b!3987733 d!1180145))

(declare-fun d!1180147 () Bool)

(declare-fun lt!1404714 () Int)

(assert (=> d!1180147 (>= lt!1404714 0)))

(declare-fun e!2472057 () Int)

(assert (=> d!1180147 (= lt!1404714 e!2472057)))

(declare-fun c!690360 () Bool)

(assert (=> d!1180147 (= c!690360 ((_ is Nil!42654) (originalCharacters!7348 token!484)))))

(assert (=> d!1180147 (= (size!31903 (originalCharacters!7348 token!484)) lt!1404714)))

(declare-fun b!3988076 () Bool)

(assert (=> b!3988076 (= e!2472057 0)))

(declare-fun b!3988077 () Bool)

(assert (=> b!3988077 (= e!2472057 (+ 1 (size!31903 (t!331625 (originalCharacters!7348 token!484)))))))

(assert (= (and d!1180147 c!690360) b!3988076))

(assert (= (and d!1180147 (not c!690360)) b!3988077))

(declare-fun m!4565283 () Bool)

(assert (=> b!3988077 m!4565283))

(assert (=> b!3987711 d!1180147))

(declare-fun d!1180149 () Bool)

(assert (=> d!1180149 (= (isEmpty!25492 rules!2999) ((_ is Nil!42656) rules!2999))))

(assert (=> b!3987710 d!1180149))

(declare-fun b!3988080 () Bool)

(declare-fun e!2472059 () Bool)

(assert (=> b!3988080 (= e!2472059 (isPrefix!3835 (tail!6219 lt!1404530) (tail!6219 lt!1404513)))))

(declare-fun b!3988079 () Bool)

(declare-fun res!1617957 () Bool)

(assert (=> b!3988079 (=> (not res!1617957) (not e!2472059))))

(assert (=> b!3988079 (= res!1617957 (= (head!8487 lt!1404530) (head!8487 lt!1404513)))))

(declare-fun b!3988078 () Bool)

(declare-fun e!2472058 () Bool)

(assert (=> b!3988078 (= e!2472058 e!2472059)))

(declare-fun res!1617956 () Bool)

(assert (=> b!3988078 (=> (not res!1617956) (not e!2472059))))

(assert (=> b!3988078 (= res!1617956 (not ((_ is Nil!42654) lt!1404513)))))

(declare-fun b!3988081 () Bool)

(declare-fun e!2472060 () Bool)

(assert (=> b!3988081 (= e!2472060 (>= (size!31903 lt!1404513) (size!31903 lt!1404530)))))

(declare-fun d!1180151 () Bool)

(assert (=> d!1180151 e!2472060))

(declare-fun res!1617958 () Bool)

(assert (=> d!1180151 (=> res!1617958 e!2472060)))

(declare-fun lt!1404715 () Bool)

(assert (=> d!1180151 (= res!1617958 (not lt!1404715))))

(assert (=> d!1180151 (= lt!1404715 e!2472058)))

(declare-fun res!1617955 () Bool)

(assert (=> d!1180151 (=> res!1617955 e!2472058)))

(assert (=> d!1180151 (= res!1617955 ((_ is Nil!42654) lt!1404530))))

(assert (=> d!1180151 (= (isPrefix!3835 lt!1404530 lt!1404513) lt!1404715)))

(assert (= (and d!1180151 (not res!1617955)) b!3988078))

(assert (= (and b!3988078 res!1617956) b!3988079))

(assert (= (and b!3988079 res!1617957) b!3988080))

(assert (= (and d!1180151 (not res!1617958)) b!3988081))

(assert (=> b!3988080 m!4565047))

(assert (=> b!3988080 m!4565005))

(assert (=> b!3988080 m!4565047))

(assert (=> b!3988080 m!4565005))

(declare-fun m!4565301 () Bool)

(assert (=> b!3988080 m!4565301))

(assert (=> b!3988079 m!4565053))

(assert (=> b!3988079 m!4565009))

(assert (=> b!3988081 m!4565011))

(assert (=> b!3988081 m!4564647))

(assert (=> b!3987730 d!1180151))

(declare-fun d!1180153 () Bool)

(declare-fun lt!1404716 () Int)

(assert (=> d!1180153 (>= lt!1404716 0)))

(declare-fun e!2472061 () Int)

(assert (=> d!1180153 (= lt!1404716 e!2472061)))

(declare-fun c!690361 () Bool)

(assert (=> d!1180153 (= c!690361 ((_ is Nil!42654) suffix!1299))))

(assert (=> d!1180153 (= (size!31903 suffix!1299) lt!1404716)))

(declare-fun b!3988082 () Bool)

(assert (=> b!3988082 (= e!2472061 0)))

(declare-fun b!3988083 () Bool)

(assert (=> b!3988083 (= e!2472061 (+ 1 (size!31903 (t!331625 suffix!1299))))))

(assert (= (and d!1180153 c!690361) b!3988082))

(assert (= (and d!1180153 (not c!690361)) b!3988083))

(declare-fun m!4565313 () Bool)

(assert (=> b!3988083 m!4565313))

(assert (=> b!3987709 d!1180153))

(declare-fun d!1180157 () Bool)

(declare-fun lt!1404718 () Int)

(assert (=> d!1180157 (>= lt!1404718 0)))

(declare-fun e!2472064 () Int)

(assert (=> d!1180157 (= lt!1404718 e!2472064)))

(declare-fun c!690363 () Bool)

(assert (=> d!1180157 (= c!690363 ((_ is Nil!42654) newSuffix!27))))

(assert (=> d!1180157 (= (size!31903 newSuffix!27) lt!1404718)))

(declare-fun b!3988088 () Bool)

(assert (=> b!3988088 (= e!2472064 0)))

(declare-fun b!3988089 () Bool)

(assert (=> b!3988089 (= e!2472064 (+ 1 (size!31903 (t!331625 newSuffix!27))))))

(assert (= (and d!1180157 c!690363) b!3988088))

(assert (= (and d!1180157 (not c!690363)) b!3988089))

(declare-fun m!4565315 () Bool)

(assert (=> b!3988089 m!4565315))

(assert (=> b!3987709 d!1180157))

(declare-fun b!3988108 () Bool)

(declare-fun e!2472077 () Bool)

(declare-fun e!2472075 () Bool)

(assert (=> b!3988108 (= e!2472077 e!2472075)))

(declare-fun c!690372 () Bool)

(assert (=> b!3988108 (= c!690372 ((_ is IntegerValue!20935) (value!212952 token!484)))))

(declare-fun b!3988109 () Bool)

(declare-fun inv!16 (TokenValue!6978) Bool)

(assert (=> b!3988109 (= e!2472077 (inv!16 (value!212952 token!484)))))

(declare-fun b!3988110 () Bool)

(declare-fun inv!17 (TokenValue!6978) Bool)

(assert (=> b!3988110 (= e!2472075 (inv!17 (value!212952 token!484)))))

(declare-fun b!3988112 () Bool)

(declare-fun res!1617963 () Bool)

(declare-fun e!2472076 () Bool)

(assert (=> b!3988112 (=> res!1617963 e!2472076)))

(assert (=> b!3988112 (= res!1617963 (not ((_ is IntegerValue!20936) (value!212952 token!484))))))

(assert (=> b!3988112 (= e!2472075 e!2472076)))

(declare-fun d!1180159 () Bool)

(declare-fun c!690373 () Bool)

(assert (=> d!1180159 (= c!690373 ((_ is IntegerValue!20934) (value!212952 token!484)))))

(assert (=> d!1180159 (= (inv!21 (value!212952 token!484)) e!2472077)))

(declare-fun b!3988111 () Bool)

(declare-fun inv!15 (TokenValue!6978) Bool)

(assert (=> b!3988111 (= e!2472076 (inv!15 (value!212952 token!484)))))

(assert (= (and d!1180159 c!690373) b!3988109))

(assert (= (and d!1180159 (not c!690373)) b!3988108))

(assert (= (and b!3988108 c!690372) b!3988110))

(assert (= (and b!3988108 (not c!690372)) b!3988112))

(assert (= (and b!3988112 (not res!1617963)) b!3988111))

(declare-fun m!4565327 () Bool)

(assert (=> b!3988109 m!4565327))

(declare-fun m!4565331 () Bool)

(assert (=> b!3988110 m!4565331))

(declare-fun m!4565333 () Bool)

(assert (=> b!3988111 m!4565333))

(assert (=> b!3987728 d!1180159))

(declare-fun b!3988115 () Bool)

(declare-fun e!2472079 () Bool)

(assert (=> b!3988115 (= e!2472079 (isPrefix!3835 (tail!6219 newSuffix!27) (tail!6219 suffix!1299)))))

(declare-fun b!3988114 () Bool)

(declare-fun res!1617966 () Bool)

(assert (=> b!3988114 (=> (not res!1617966) (not e!2472079))))

(assert (=> b!3988114 (= res!1617966 (= (head!8487 newSuffix!27) (head!8487 suffix!1299)))))

(declare-fun b!3988113 () Bool)

(declare-fun e!2472078 () Bool)

(assert (=> b!3988113 (= e!2472078 e!2472079)))

(declare-fun res!1617965 () Bool)

(assert (=> b!3988113 (=> (not res!1617965) (not e!2472079))))

(assert (=> b!3988113 (= res!1617965 (not ((_ is Nil!42654) suffix!1299)))))

(declare-fun b!3988116 () Bool)

(declare-fun e!2472080 () Bool)

(assert (=> b!3988116 (= e!2472080 (>= (size!31903 suffix!1299) (size!31903 newSuffix!27)))))

(declare-fun d!1180169 () Bool)

(assert (=> d!1180169 e!2472080))

(declare-fun res!1617967 () Bool)

(assert (=> d!1180169 (=> res!1617967 e!2472080)))

(declare-fun lt!1404723 () Bool)

(assert (=> d!1180169 (= res!1617967 (not lt!1404723))))

(assert (=> d!1180169 (= lt!1404723 e!2472078)))

(declare-fun res!1617964 () Bool)

(assert (=> d!1180169 (=> res!1617964 e!2472078)))

(assert (=> d!1180169 (= res!1617964 ((_ is Nil!42654) newSuffix!27))))

(assert (=> d!1180169 (= (isPrefix!3835 newSuffix!27 suffix!1299) lt!1404723)))

(assert (= (and d!1180169 (not res!1617964)) b!3988113))

(assert (= (and b!3988113 res!1617965) b!3988114))

(assert (= (and b!3988114 res!1617966) b!3988115))

(assert (= (and d!1180169 (not res!1617967)) b!3988116))

(declare-fun m!4565335 () Bool)

(assert (=> b!3988115 m!4565335))

(declare-fun m!4565337 () Bool)

(assert (=> b!3988115 m!4565337))

(assert (=> b!3988115 m!4565335))

(assert (=> b!3988115 m!4565337))

(declare-fun m!4565339 () Bool)

(assert (=> b!3988115 m!4565339))

(declare-fun m!4565341 () Bool)

(assert (=> b!3988114 m!4565341))

(declare-fun m!4565343 () Bool)

(assert (=> b!3988114 m!4565343))

(assert (=> b!3988116 m!4564721))

(assert (=> b!3988116 m!4564723))

(assert (=> b!3987706 d!1180169))

(declare-fun b!3988118 () Bool)

(declare-fun e!2472082 () List!42778)

(assert (=> b!3988118 (= e!2472082 (Cons!42654 (h!48074 lt!1404540) (++!11150 (t!331625 lt!1404540) lt!1404519)))))

(declare-fun b!3988119 () Bool)

(declare-fun res!1617969 () Bool)

(declare-fun e!2472081 () Bool)

(assert (=> b!3988119 (=> (not res!1617969) (not e!2472081))))

(declare-fun lt!1404724 () List!42778)

(assert (=> b!3988119 (= res!1617969 (= (size!31903 lt!1404724) (+ (size!31903 lt!1404540) (size!31903 lt!1404519))))))

(declare-fun b!3988117 () Bool)

(assert (=> b!3988117 (= e!2472082 lt!1404519)))

(declare-fun d!1180171 () Bool)

(assert (=> d!1180171 e!2472081))

(declare-fun res!1617968 () Bool)

(assert (=> d!1180171 (=> (not res!1617968) (not e!2472081))))

(assert (=> d!1180171 (= res!1617968 (= (content!6467 lt!1404724) ((_ map or) (content!6467 lt!1404540) (content!6467 lt!1404519))))))

(assert (=> d!1180171 (= lt!1404724 e!2472082)))

(declare-fun c!690374 () Bool)

(assert (=> d!1180171 (= c!690374 ((_ is Nil!42654) lt!1404540))))

(assert (=> d!1180171 (= (++!11150 lt!1404540 lt!1404519) lt!1404724)))

(declare-fun b!3988120 () Bool)

(assert (=> b!3988120 (= e!2472081 (or (not (= lt!1404519 Nil!42654)) (= lt!1404724 lt!1404540)))))

(assert (= (and d!1180171 c!690374) b!3988117))

(assert (= (and d!1180171 (not c!690374)) b!3988118))

(assert (= (and d!1180171 res!1617968) b!3988119))

(assert (= (and b!3988119 res!1617969) b!3988120))

(declare-fun m!4565345 () Bool)

(assert (=> b!3988118 m!4565345))

(declare-fun m!4565347 () Bool)

(assert (=> b!3988119 m!4565347))

(assert (=> b!3988119 m!4564689))

(declare-fun m!4565349 () Bool)

(assert (=> b!3988119 m!4565349))

(declare-fun m!4565351 () Bool)

(assert (=> d!1180171 m!4565351))

(assert (=> d!1180171 m!4565029))

(declare-fun m!4565353 () Bool)

(assert (=> d!1180171 m!4565353))

(assert (=> b!3987727 d!1180171))

(declare-fun d!1180173 () Bool)

(declare-fun lt!1404725 () List!42778)

(assert (=> d!1180173 (= (++!11150 lt!1404540 lt!1404725) lt!1404544)))

(declare-fun e!2472083 () List!42778)

(assert (=> d!1180173 (= lt!1404725 e!2472083)))

(declare-fun c!690375 () Bool)

(assert (=> d!1180173 (= c!690375 ((_ is Cons!42654) lt!1404540))))

(assert (=> d!1180173 (>= (size!31903 lt!1404544) (size!31903 lt!1404540))))

(assert (=> d!1180173 (= (getSuffix!2266 lt!1404544 lt!1404540) lt!1404725)))

(declare-fun b!3988121 () Bool)

(assert (=> b!3988121 (= e!2472083 (getSuffix!2266 (tail!6219 lt!1404544) (t!331625 lt!1404540)))))

(declare-fun b!3988122 () Bool)

(assert (=> b!3988122 (= e!2472083 lt!1404544)))

(assert (= (and d!1180173 c!690375) b!3988121))

(assert (= (and d!1180173 (not c!690375)) b!3988122))

(declare-fun m!4565355 () Bool)

(assert (=> d!1180173 m!4565355))

(assert (=> d!1180173 m!4565261))

(assert (=> d!1180173 m!4564689))

(assert (=> b!3988121 m!4565255))

(assert (=> b!3988121 m!4565255))

(declare-fun m!4565357 () Bool)

(assert (=> b!3988121 m!4565357))

(assert (=> b!3987727 d!1180173))

(declare-fun b!3988125 () Bool)

(declare-fun e!2472085 () Bool)

(assert (=> b!3988125 (= e!2472085 (isPrefix!3835 (tail!6219 lt!1404544) (tail!6219 lt!1404544)))))

(declare-fun b!3988124 () Bool)

(declare-fun res!1617972 () Bool)

(assert (=> b!3988124 (=> (not res!1617972) (not e!2472085))))

(assert (=> b!3988124 (= res!1617972 (= (head!8487 lt!1404544) (head!8487 lt!1404544)))))

(declare-fun b!3988123 () Bool)

(declare-fun e!2472084 () Bool)

(assert (=> b!3988123 (= e!2472084 e!2472085)))

(declare-fun res!1617971 () Bool)

(assert (=> b!3988123 (=> (not res!1617971) (not e!2472085))))

(assert (=> b!3988123 (= res!1617971 (not ((_ is Nil!42654) lt!1404544)))))

(declare-fun b!3988126 () Bool)

(declare-fun e!2472086 () Bool)

(assert (=> b!3988126 (= e!2472086 (>= (size!31903 lt!1404544) (size!31903 lt!1404544)))))

(declare-fun d!1180175 () Bool)

(assert (=> d!1180175 e!2472086))

(declare-fun res!1617973 () Bool)

(assert (=> d!1180175 (=> res!1617973 e!2472086)))

(declare-fun lt!1404728 () Bool)

(assert (=> d!1180175 (= res!1617973 (not lt!1404728))))

(assert (=> d!1180175 (= lt!1404728 e!2472084)))

(declare-fun res!1617970 () Bool)

(assert (=> d!1180175 (=> res!1617970 e!2472084)))

(assert (=> d!1180175 (= res!1617970 ((_ is Nil!42654) lt!1404544))))

(assert (=> d!1180175 (= (isPrefix!3835 lt!1404544 lt!1404544) lt!1404728)))

(assert (= (and d!1180175 (not res!1617970)) b!3988123))

(assert (= (and b!3988123 res!1617971) b!3988124))

(assert (= (and b!3988124 res!1617972) b!3988125))

(assert (= (and d!1180175 (not res!1617973)) b!3988126))

(assert (=> b!3988125 m!4565255))

(assert (=> b!3988125 m!4565255))

(assert (=> b!3988125 m!4565255))

(assert (=> b!3988125 m!4565255))

(declare-fun m!4565359 () Bool)

(assert (=> b!3988125 m!4565359))

(assert (=> b!3988124 m!4565259))

(assert (=> b!3988124 m!4565259))

(assert (=> b!3988126 m!4565261))

(assert (=> b!3988126 m!4565261))

(assert (=> b!3987727 d!1180175))

(declare-fun d!1180177 () Bool)

(assert (=> d!1180177 (isPrefix!3835 lt!1404544 lt!1404544)))

(declare-fun lt!1404737 () Unit!61376)

(declare-fun choose!23964 (List!42778 List!42778) Unit!61376)

(assert (=> d!1180177 (= lt!1404737 (choose!23964 lt!1404544 lt!1404544))))

(assert (=> d!1180177 (= (lemmaIsPrefixRefl!2427 lt!1404544 lt!1404544) lt!1404737)))

(declare-fun bs!588246 () Bool)

(assert (= bs!588246 d!1180177))

(assert (=> bs!588246 m!4564701))

(declare-fun m!4565363 () Bool)

(assert (=> bs!588246 m!4565363))

(assert (=> b!3987727 d!1180177))

(declare-fun d!1180181 () Bool)

(declare-fun lt!1404738 () Int)

(assert (=> d!1180181 (>= lt!1404738 0)))

(declare-fun e!2472090 () Int)

(assert (=> d!1180181 (= lt!1404738 e!2472090)))

(declare-fun c!690377 () Bool)

(assert (=> d!1180181 (= c!690377 ((_ is Nil!42654) lt!1404540))))

(assert (=> d!1180181 (= (size!31903 lt!1404540) lt!1404738)))

(declare-fun b!3988136 () Bool)

(assert (=> b!3988136 (= e!2472090 0)))

(declare-fun b!3988137 () Bool)

(assert (=> b!3988137 (= e!2472090 (+ 1 (size!31903 (t!331625 lt!1404540))))))

(assert (= (and d!1180181 c!690377) b!3988136))

(assert (= (and d!1180181 (not c!690377)) b!3988137))

(declare-fun m!4565365 () Bool)

(assert (=> b!3988137 m!4565365))

(assert (=> b!3987726 d!1180181))

(declare-fun d!1180183 () Bool)

(declare-fun lt!1404739 () Int)

(assert (=> d!1180183 (>= lt!1404739 0)))

(declare-fun e!2472091 () Int)

(assert (=> d!1180183 (= lt!1404739 e!2472091)))

(declare-fun c!690378 () Bool)

(assert (=> d!1180183 (= c!690378 ((_ is Nil!42654) prefix!494))))

(assert (=> d!1180183 (= (size!31903 prefix!494) lt!1404739)))

(declare-fun b!3988138 () Bool)

(assert (=> b!3988138 (= e!2472091 0)))

(declare-fun b!3988139 () Bool)

(assert (=> b!3988139 (= e!2472091 (+ 1 (size!31903 (t!331625 prefix!494))))))

(assert (= (and d!1180183 c!690378) b!3988138))

(assert (= (and d!1180183 (not c!690378)) b!3988139))

(declare-fun m!4565367 () Bool)

(assert (=> b!3988139 m!4565367))

(assert (=> b!3987726 d!1180183))

(declare-fun d!1180185 () Bool)

(declare-fun list!15835 (Conc!12959) List!42778)

(assert (=> d!1180185 (= (list!15834 (charsOf!4564 token!484)) (list!15835 (c!690308 (charsOf!4564 token!484))))))

(declare-fun bs!588247 () Bool)

(assert (= bs!588247 d!1180185))

(declare-fun m!4565389 () Bool)

(assert (=> bs!588247 m!4565389))

(assert (=> b!3987726 d!1180185))

(declare-fun d!1180187 () Bool)

(declare-fun lt!1404745 () BalanceConc!25512)

(assert (=> d!1180187 (= (list!15834 lt!1404745) (originalCharacters!7348 token!484))))

(declare-fun dynLambda!18124 (Int TokenValue!6978) BalanceConc!25512)

(assert (=> d!1180187 (= lt!1404745 (dynLambda!18124 (toChars!9095 (transformation!6748 (rule!9762 token!484))) (value!212952 token!484)))))

(assert (=> d!1180187 (= (charsOf!4564 token!484) lt!1404745)))

(declare-fun b_lambda!116437 () Bool)

(assert (=> (not b_lambda!116437) (not d!1180187)))

(declare-fun tb!240117 () Bool)

(declare-fun t!331637 () Bool)

(assert (=> (and b!3987741 (= (toChars!9095 (transformation!6748 (h!48076 rules!2999))) (toChars!9095 (transformation!6748 (rule!9762 token!484)))) t!331637) tb!240117))

(declare-fun b!3988148 () Bool)

(declare-fun e!2472097 () Bool)

(declare-fun tp!1215074 () Bool)

(declare-fun inv!56977 (Conc!12959) Bool)

(assert (=> b!3988148 (= e!2472097 (and (inv!56977 (c!690308 (dynLambda!18124 (toChars!9095 (transformation!6748 (rule!9762 token!484))) (value!212952 token!484)))) tp!1215074))))

(declare-fun result!290922 () Bool)

(declare-fun inv!56978 (BalanceConc!25512) Bool)

(assert (=> tb!240117 (= result!290922 (and (inv!56978 (dynLambda!18124 (toChars!9095 (transformation!6748 (rule!9762 token!484))) (value!212952 token!484))) e!2472097))))

(assert (= tb!240117 b!3988148))

(declare-fun m!4565415 () Bool)

(assert (=> b!3988148 m!4565415))

(declare-fun m!4565417 () Bool)

(assert (=> tb!240117 m!4565417))

(assert (=> d!1180187 t!331637))

(declare-fun b_and!306451 () Bool)

(assert (= b_and!306433 (and (=> t!331637 result!290922) b_and!306451)))

(declare-fun t!331639 () Bool)

(declare-fun tb!240119 () Bool)

(assert (=> (and b!3987707 (= (toChars!9095 (transformation!6748 (rule!9762 token!484))) (toChars!9095 (transformation!6748 (rule!9762 token!484)))) t!331639) tb!240119))

(declare-fun result!290926 () Bool)

(assert (= result!290926 result!290922))

(assert (=> d!1180187 t!331639))

(declare-fun b_and!306453 () Bool)

(assert (= b_and!306437 (and (=> t!331639 result!290926) b_and!306453)))

(declare-fun m!4565419 () Bool)

(assert (=> d!1180187 m!4565419))

(declare-fun m!4565421 () Bool)

(assert (=> d!1180187 m!4565421))

(assert (=> b!3987726 d!1180187))

(declare-fun b!3988151 () Bool)

(declare-fun e!2472099 () Bool)

(assert (=> b!3988151 (= e!2472099 (isPrefix!3835 (tail!6219 lt!1404530) (tail!6219 lt!1404544)))))

(declare-fun b!3988150 () Bool)

(declare-fun res!1617987 () Bool)

(assert (=> b!3988150 (=> (not res!1617987) (not e!2472099))))

(assert (=> b!3988150 (= res!1617987 (= (head!8487 lt!1404530) (head!8487 lt!1404544)))))

(declare-fun b!3988149 () Bool)

(declare-fun e!2472098 () Bool)

(assert (=> b!3988149 (= e!2472098 e!2472099)))

(declare-fun res!1617986 () Bool)

(assert (=> b!3988149 (=> (not res!1617986) (not e!2472099))))

(assert (=> b!3988149 (= res!1617986 (not ((_ is Nil!42654) lt!1404544)))))

(declare-fun b!3988152 () Bool)

(declare-fun e!2472100 () Bool)

(assert (=> b!3988152 (= e!2472100 (>= (size!31903 lt!1404544) (size!31903 lt!1404530)))))

(declare-fun d!1180197 () Bool)

(assert (=> d!1180197 e!2472100))

(declare-fun res!1617988 () Bool)

(assert (=> d!1180197 (=> res!1617988 e!2472100)))

(declare-fun lt!1404746 () Bool)

(assert (=> d!1180197 (= res!1617988 (not lt!1404746))))

(assert (=> d!1180197 (= lt!1404746 e!2472098)))

(declare-fun res!1617985 () Bool)

(assert (=> d!1180197 (=> res!1617985 e!2472098)))

(assert (=> d!1180197 (= res!1617985 ((_ is Nil!42654) lt!1404530))))

(assert (=> d!1180197 (= (isPrefix!3835 lt!1404530 lt!1404544) lt!1404746)))

(assert (= (and d!1180197 (not res!1617985)) b!3988149))

(assert (= (and b!3988149 res!1617986) b!3988150))

(assert (= (and b!3988150 res!1617987) b!3988151))

(assert (= (and d!1180197 (not res!1617988)) b!3988152))

(assert (=> b!3988151 m!4565047))

(assert (=> b!3988151 m!4565255))

(assert (=> b!3988151 m!4565047))

(assert (=> b!3988151 m!4565255))

(declare-fun m!4565423 () Bool)

(assert (=> b!3988151 m!4565423))

(assert (=> b!3988150 m!4565053))

(assert (=> b!3988150 m!4565259))

(assert (=> b!3988152 m!4565261))

(assert (=> b!3988152 m!4564647))

(assert (=> b!3987705 d!1180197))

(declare-fun b!3988155 () Bool)

(declare-fun e!2472102 () Bool)

(assert (=> b!3988155 (= e!2472102 (isPrefix!3835 (tail!6219 lt!1404530) (tail!6219 lt!1404531)))))

(declare-fun b!3988154 () Bool)

(declare-fun res!1617991 () Bool)

(assert (=> b!3988154 (=> (not res!1617991) (not e!2472102))))

(assert (=> b!3988154 (= res!1617991 (= (head!8487 lt!1404530) (head!8487 lt!1404531)))))

(declare-fun b!3988153 () Bool)

(declare-fun e!2472101 () Bool)

(assert (=> b!3988153 (= e!2472101 e!2472102)))

(declare-fun res!1617990 () Bool)

(assert (=> b!3988153 (=> (not res!1617990) (not e!2472102))))

(assert (=> b!3988153 (= res!1617990 (not ((_ is Nil!42654) lt!1404531)))))

(declare-fun b!3988156 () Bool)

(declare-fun e!2472103 () Bool)

(assert (=> b!3988156 (= e!2472103 (>= (size!31903 lt!1404531) (size!31903 lt!1404530)))))

(declare-fun d!1180199 () Bool)

(assert (=> d!1180199 e!2472103))

(declare-fun res!1617992 () Bool)

(assert (=> d!1180199 (=> res!1617992 e!2472103)))

(declare-fun lt!1404749 () Bool)

(assert (=> d!1180199 (= res!1617992 (not lt!1404749))))

(assert (=> d!1180199 (= lt!1404749 e!2472101)))

(declare-fun res!1617989 () Bool)

(assert (=> d!1180199 (=> res!1617989 e!2472101)))

(assert (=> d!1180199 (= res!1617989 ((_ is Nil!42654) lt!1404530))))

(assert (=> d!1180199 (= (isPrefix!3835 lt!1404530 lt!1404531) lt!1404749)))

(assert (= (and d!1180199 (not res!1617989)) b!3988153))

(assert (= (and b!3988153 res!1617990) b!3988154))

(assert (= (and b!3988154 res!1617991) b!3988155))

(assert (= (and d!1180199 (not res!1617992)) b!3988156))

(assert (=> b!3988155 m!4565047))

(declare-fun m!4565425 () Bool)

(assert (=> b!3988155 m!4565425))

(assert (=> b!3988155 m!4565047))

(assert (=> b!3988155 m!4565425))

(declare-fun m!4565427 () Bool)

(assert (=> b!3988155 m!4565427))

(assert (=> b!3988154 m!4565053))

(declare-fun m!4565429 () Bool)

(assert (=> b!3988154 m!4565429))

(declare-fun m!4565431 () Bool)

(assert (=> b!3988156 m!4565431))

(assert (=> b!3988156 m!4564647))

(assert (=> b!3987705 d!1180199))

(declare-fun d!1180201 () Bool)

(assert (=> d!1180201 (isPrefix!3835 lt!1404530 (++!11150 lt!1404513 lt!1404556))))

(declare-fun lt!1404750 () Unit!61376)

(assert (=> d!1180201 (= lt!1404750 (choose!23956 lt!1404530 lt!1404513 lt!1404556))))

(assert (=> d!1180201 (isPrefix!3835 lt!1404530 lt!1404513)))

(assert (=> d!1180201 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!668 lt!1404530 lt!1404513 lt!1404556) lt!1404750)))

(declare-fun bs!588250 () Bool)

(assert (= bs!588250 d!1180201))

(assert (=> bs!588250 m!4564783))

(assert (=> bs!588250 m!4564783))

(declare-fun m!4565433 () Bool)

(assert (=> bs!588250 m!4565433))

(declare-fun m!4565435 () Bool)

(assert (=> bs!588250 m!4565435))

(assert (=> bs!588250 m!4564805))

(assert (=> b!3987705 d!1180201))

(declare-fun d!1180203 () Bool)

(assert (=> d!1180203 (not (matchR!5630 (regex!6748 (rule!9762 (_1!24064 (v!39515 lt!1404551)))) lt!1404530))))

(declare-fun lt!1404754 () Unit!61376)

(declare-fun choose!23965 (LexerInterface!6337 List!42780 Rule!13296 List!42778 List!42778 List!42778 Rule!13296) Unit!61376)

(assert (=> d!1180203 (= lt!1404754 (choose!23965 thiss!21717 rules!2999 (rule!9762 token!484) lt!1404540 lt!1404544 lt!1404530 (rule!9762 (_1!24064 (v!39515 lt!1404551)))))))

(assert (=> d!1180203 (isPrefix!3835 lt!1404540 lt!1404544)))

(assert (=> d!1180203 (= (lemmaMaxPrefixOutputsMaxPrefix!402 thiss!21717 rules!2999 (rule!9762 token!484) lt!1404540 lt!1404544 lt!1404530 (rule!9762 (_1!24064 (v!39515 lt!1404551)))) lt!1404754)))

(declare-fun bs!588252 () Bool)

(assert (= bs!588252 d!1180203))

(assert (=> bs!588252 m!4564803))

(declare-fun m!4565439 () Bool)

(assert (=> bs!588252 m!4565439))

(assert (=> bs!588252 m!4564747))

(assert (=> b!3987725 d!1180203))

(declare-fun b!3988157 () Bool)

(declare-fun res!1617993 () Bool)

(declare-fun e!2472107 () Bool)

(assert (=> b!3988157 (=> (not res!1617993) (not e!2472107))))

(assert (=> b!3988157 (= res!1617993 (isEmpty!25494 (tail!6219 lt!1404530)))))

(declare-fun b!3988158 () Bool)

(declare-fun res!1617996 () Bool)

(assert (=> b!3988158 (=> (not res!1617996) (not e!2472107))))

(declare-fun call!285795 () Bool)

(assert (=> b!3988158 (= res!1617996 (not call!285795))))

(declare-fun b!3988159 () Bool)

(declare-fun res!1618000 () Bool)

(declare-fun e!2472104 () Bool)

(assert (=> b!3988159 (=> res!1618000 e!2472104)))

(assert (=> b!3988159 (= res!1618000 (not ((_ is ElementMatch!11653) (regex!6748 (rule!9762 (_1!24064 (v!39515 lt!1404551)))))))))

(declare-fun e!2472110 () Bool)

(assert (=> b!3988159 (= e!2472110 e!2472104)))

(declare-fun b!3988160 () Bool)

(declare-fun res!1617998 () Bool)

(declare-fun e!2472109 () Bool)

(assert (=> b!3988160 (=> res!1617998 e!2472109)))

(assert (=> b!3988160 (= res!1617998 (not (isEmpty!25494 (tail!6219 lt!1404530))))))

(declare-fun d!1180207 () Bool)

(declare-fun e!2472106 () Bool)

(assert (=> d!1180207 e!2472106))

(declare-fun c!690381 () Bool)

(assert (=> d!1180207 (= c!690381 ((_ is EmptyExpr!11653) (regex!6748 (rule!9762 (_1!24064 (v!39515 lt!1404551))))))))

(declare-fun lt!1404755 () Bool)

(declare-fun e!2472105 () Bool)

(assert (=> d!1180207 (= lt!1404755 e!2472105)))

(declare-fun c!690379 () Bool)

(assert (=> d!1180207 (= c!690379 (isEmpty!25494 lt!1404530))))

(assert (=> d!1180207 (validRegex!5285 (regex!6748 (rule!9762 (_1!24064 (v!39515 lt!1404551)))))))

(assert (=> d!1180207 (= (matchR!5630 (regex!6748 (rule!9762 (_1!24064 (v!39515 lt!1404551)))) lt!1404530) lt!1404755)))

(declare-fun b!3988161 () Bool)

(assert (=> b!3988161 (= e!2472110 (not lt!1404755))))

(declare-fun bm!285790 () Bool)

(assert (=> bm!285790 (= call!285795 (isEmpty!25494 lt!1404530))))

(declare-fun b!3988162 () Bool)

(assert (=> b!3988162 (= e!2472105 (nullable!4085 (regex!6748 (rule!9762 (_1!24064 (v!39515 lt!1404551))))))))

(declare-fun b!3988163 () Bool)

(assert (=> b!3988163 (= e!2472106 (= lt!1404755 call!285795))))

(declare-fun b!3988164 () Bool)

(assert (=> b!3988164 (= e!2472109 (not (= (head!8487 lt!1404530) (c!690309 (regex!6748 (rule!9762 (_1!24064 (v!39515 lt!1404551))))))))))

(declare-fun b!3988165 () Bool)

(declare-fun e!2472108 () Bool)

(assert (=> b!3988165 (= e!2472108 e!2472109)))

(declare-fun res!1617994 () Bool)

(assert (=> b!3988165 (=> res!1617994 e!2472109)))

(assert (=> b!3988165 (= res!1617994 call!285795)))

(declare-fun b!3988166 () Bool)

(assert (=> b!3988166 (= e!2472106 e!2472110)))

(declare-fun c!690380 () Bool)

(assert (=> b!3988166 (= c!690380 ((_ is EmptyLang!11653) (regex!6748 (rule!9762 (_1!24064 (v!39515 lt!1404551))))))))

(declare-fun b!3988167 () Bool)

(assert (=> b!3988167 (= e!2472107 (= (head!8487 lt!1404530) (c!690309 (regex!6748 (rule!9762 (_1!24064 (v!39515 lt!1404551)))))))))

(declare-fun b!3988168 () Bool)

(declare-fun res!1617999 () Bool)

(assert (=> b!3988168 (=> res!1617999 e!2472104)))

(assert (=> b!3988168 (= res!1617999 e!2472107)))

(declare-fun res!1617997 () Bool)

(assert (=> b!3988168 (=> (not res!1617997) (not e!2472107))))

(assert (=> b!3988168 (= res!1617997 lt!1404755)))

(declare-fun b!3988169 () Bool)

(assert (=> b!3988169 (= e!2472104 e!2472108)))

(declare-fun res!1617995 () Bool)

(assert (=> b!3988169 (=> (not res!1617995) (not e!2472108))))

(assert (=> b!3988169 (= res!1617995 (not lt!1404755))))

(declare-fun b!3988170 () Bool)

(assert (=> b!3988170 (= e!2472105 (matchR!5630 (derivativeStep!3496 (regex!6748 (rule!9762 (_1!24064 (v!39515 lt!1404551)))) (head!8487 lt!1404530)) (tail!6219 lt!1404530)))))

(assert (= (and d!1180207 c!690379) b!3988162))

(assert (= (and d!1180207 (not c!690379)) b!3988170))

(assert (= (and d!1180207 c!690381) b!3988163))

(assert (= (and d!1180207 (not c!690381)) b!3988166))

(assert (= (and b!3988166 c!690380) b!3988161))

(assert (= (and b!3988166 (not c!690380)) b!3988159))

(assert (= (and b!3988159 (not res!1618000)) b!3988168))

(assert (= (and b!3988168 res!1617997) b!3988158))

(assert (= (and b!3988158 res!1617996) b!3988157))

(assert (= (and b!3988157 res!1617993) b!3988167))

(assert (= (and b!3988168 (not res!1617999)) b!3988169))

(assert (= (and b!3988169 res!1617995) b!3988165))

(assert (= (and b!3988165 (not res!1617994)) b!3988160))

(assert (= (and b!3988160 (not res!1617998)) b!3988164))

(assert (= (or b!3988163 b!3988158 b!3988165) bm!285790))

(assert (=> b!3988164 m!4565053))

(assert (=> b!3988167 m!4565053))

(assert (=> b!3988157 m!4565047))

(assert (=> b!3988157 m!4565047))

(declare-fun m!4565441 () Bool)

(assert (=> b!3988157 m!4565441))

(assert (=> b!3988160 m!4565047))

(assert (=> b!3988160 m!4565047))

(assert (=> b!3988160 m!4565441))

(declare-fun m!4565443 () Bool)

(assert (=> bm!285790 m!4565443))

(declare-fun m!4565445 () Bool)

(assert (=> b!3988162 m!4565445))

(assert (=> d!1180207 m!4565443))

(declare-fun m!4565447 () Bool)

(assert (=> d!1180207 m!4565447))

(assert (=> b!3988170 m!4565053))

(assert (=> b!3988170 m!4565053))

(declare-fun m!4565449 () Bool)

(assert (=> b!3988170 m!4565449))

(assert (=> b!3988170 m!4565047))

(assert (=> b!3988170 m!4565449))

(assert (=> b!3988170 m!4565047))

(declare-fun m!4565451 () Bool)

(assert (=> b!3988170 m!4565451))

(assert (=> b!3987725 d!1180207))

(declare-fun b!3988172 () Bool)

(declare-fun e!2472112 () List!42778)

(assert (=> b!3988172 (= e!2472112 (Cons!42654 (h!48074 newSuffix!27) (++!11150 (t!331625 newSuffix!27) lt!1404556)))))

(declare-fun b!3988173 () Bool)

(declare-fun res!1618002 () Bool)

(declare-fun e!2472111 () Bool)

(assert (=> b!3988173 (=> (not res!1618002) (not e!2472111))))

(declare-fun lt!1404756 () List!42778)

(assert (=> b!3988173 (= res!1618002 (= (size!31903 lt!1404756) (+ (size!31903 newSuffix!27) (size!31903 lt!1404556))))))

(declare-fun b!3988171 () Bool)

(assert (=> b!3988171 (= e!2472112 lt!1404556)))

(declare-fun d!1180209 () Bool)

(assert (=> d!1180209 e!2472111))

(declare-fun res!1618001 () Bool)

(assert (=> d!1180209 (=> (not res!1618001) (not e!2472111))))

(assert (=> d!1180209 (= res!1618001 (= (content!6467 lt!1404756) ((_ map or) (content!6467 newSuffix!27) (content!6467 lt!1404556))))))

(assert (=> d!1180209 (= lt!1404756 e!2472112)))

(declare-fun c!690382 () Bool)

(assert (=> d!1180209 (= c!690382 ((_ is Nil!42654) newSuffix!27))))

(assert (=> d!1180209 (= (++!11150 newSuffix!27 lt!1404556) lt!1404756)))

(declare-fun b!3988174 () Bool)

(assert (=> b!3988174 (= e!2472111 (or (not (= lt!1404556 Nil!42654)) (= lt!1404756 newSuffix!27)))))

(assert (= (and d!1180209 c!690382) b!3988171))

(assert (= (and d!1180209 (not c!690382)) b!3988172))

(assert (= (and d!1180209 res!1618001) b!3988173))

(assert (= (and b!3988173 res!1618002) b!3988174))

(declare-fun m!4565453 () Bool)

(assert (=> b!3988172 m!4565453))

(declare-fun m!4565455 () Bool)

(assert (=> b!3988173 m!4565455))

(assert (=> b!3988173 m!4564723))

(declare-fun m!4565457 () Bool)

(assert (=> b!3988173 m!4565457))

(declare-fun m!4565459 () Bool)

(assert (=> d!1180209 m!4565459))

(declare-fun m!4565461 () Bool)

(assert (=> d!1180209 m!4565461))

(declare-fun m!4565463 () Bool)

(assert (=> d!1180209 m!4565463))

(assert (=> b!3987724 d!1180209))

(declare-fun d!1180211 () Bool)

(declare-fun lt!1404759 () List!42778)

(assert (=> d!1180211 (= (++!11150 newSuffix!27 lt!1404759) suffix!1299)))

(declare-fun e!2472115 () List!42778)

(assert (=> d!1180211 (= lt!1404759 e!2472115)))

(declare-fun c!690385 () Bool)

(assert (=> d!1180211 (= c!690385 ((_ is Cons!42654) newSuffix!27))))

(assert (=> d!1180211 (>= (size!31903 suffix!1299) (size!31903 newSuffix!27))))

(assert (=> d!1180211 (= (getSuffix!2266 suffix!1299 newSuffix!27) lt!1404759)))

(declare-fun b!3988181 () Bool)

(assert (=> b!3988181 (= e!2472115 (getSuffix!2266 (tail!6219 suffix!1299) (t!331625 newSuffix!27)))))

(declare-fun b!3988182 () Bool)

(assert (=> b!3988182 (= e!2472115 suffix!1299)))

(assert (= (and d!1180211 c!690385) b!3988181))

(assert (= (and d!1180211 (not c!690385)) b!3988182))

(declare-fun m!4565465 () Bool)

(assert (=> d!1180211 m!4565465))

(assert (=> d!1180211 m!4564721))

(assert (=> d!1180211 m!4564723))

(assert (=> b!3988181 m!4565337))

(assert (=> b!3988181 m!4565337))

(declare-fun m!4565467 () Bool)

(assert (=> b!3988181 m!4565467))

(assert (=> b!3987724 d!1180211))

(declare-fun d!1180213 () Bool)

(declare-fun res!1618021 () Bool)

(declare-fun e!2472130 () Bool)

(assert (=> d!1180213 (=> (not res!1618021) (not e!2472130))))

(declare-fun rulesValid!2627 (LexerInterface!6337 List!42780) Bool)

(assert (=> d!1180213 (= res!1618021 (rulesValid!2627 thiss!21717 rules!2999))))

(assert (=> d!1180213 (= (rulesInvariant!5680 thiss!21717 rules!2999) e!2472130)))

(declare-fun b!3988207 () Bool)

(declare-datatypes ((List!42782 0))(
  ( (Nil!42658) (Cons!42658 (h!48078 String!48608) (t!331677 List!42782)) )
))
(declare-fun noDuplicateTag!2628 (LexerInterface!6337 List!42780 List!42782) Bool)

(assert (=> b!3988207 (= e!2472130 (noDuplicateTag!2628 thiss!21717 rules!2999 Nil!42658))))

(assert (= (and d!1180213 res!1618021) b!3988207))

(declare-fun m!4565469 () Bool)

(assert (=> d!1180213 m!4565469))

(declare-fun m!4565471 () Bool)

(assert (=> b!3988207 m!4565471))

(assert (=> b!3987703 d!1180213))

(declare-fun d!1180215 () Bool)

(assert (=> d!1180215 (= lt!1404523 suffixResult!105)))

(declare-fun lt!1404760 () Unit!61376)

(assert (=> d!1180215 (= lt!1404760 (choose!23959 lt!1404540 lt!1404523 lt!1404540 suffixResult!105 lt!1404544))))

(assert (=> d!1180215 (isPrefix!3835 lt!1404540 lt!1404544)))

(assert (=> d!1180215 (= (lemmaSamePrefixThenSameSuffix!2022 lt!1404540 lt!1404523 lt!1404540 suffixResult!105 lt!1404544) lt!1404760)))

(declare-fun bs!588253 () Bool)

(assert (= bs!588253 d!1180215))

(declare-fun m!4565473 () Bool)

(assert (=> bs!588253 m!4565473))

(assert (=> bs!588253 m!4564747))

(assert (=> b!3987702 d!1180215))

(declare-fun b!3988352 () Bool)

(declare-fun res!1618094 () Bool)

(declare-fun e!2472216 () Bool)

(assert (=> b!3988352 (=> (not res!1618094) (not e!2472216))))

(declare-fun lt!1404807 () Option!9162)

(assert (=> b!3988352 (= res!1618094 (= (value!212952 (_1!24064 (get!14036 lt!1404807))) (apply!9959 (transformation!6748 (rule!9762 (_1!24064 (get!14036 lt!1404807)))) (seqFromList!4987 (originalCharacters!7348 (_1!24064 (get!14036 lt!1404807)))))))))

(declare-fun d!1180217 () Bool)

(declare-fun e!2472215 () Bool)

(assert (=> d!1180217 e!2472215))

(declare-fun res!1618096 () Bool)

(assert (=> d!1180217 (=> res!1618096 e!2472215)))

(assert (=> d!1180217 (= res!1618096 (isEmpty!25496 lt!1404807))))

(declare-fun e!2472217 () Option!9162)

(assert (=> d!1180217 (= lt!1404807 e!2472217)))

(declare-fun c!690407 () Bool)

(declare-datatypes ((tuple2!41864 0))(
  ( (tuple2!41865 (_1!24066 List!42778) (_2!24066 List!42778)) )
))
(declare-fun lt!1404808 () tuple2!41864)

(assert (=> d!1180217 (= c!690407 (isEmpty!25494 (_1!24066 lt!1404808)))))

(declare-fun findLongestMatch!1243 (Regex!11653 List!42778) tuple2!41864)

(assert (=> d!1180217 (= lt!1404808 (findLongestMatch!1243 (regex!6748 (rule!9762 token!484)) lt!1404544))))

(assert (=> d!1180217 (ruleValid!2680 thiss!21717 (rule!9762 token!484))))

(assert (=> d!1180217 (= (maxPrefixOneRule!2669 thiss!21717 (rule!9762 token!484) lt!1404544) lt!1404807)))

(declare-fun b!3988353 () Bool)

(declare-fun size!31905 (BalanceConc!25512) Int)

(assert (=> b!3988353 (= e!2472217 (Some!9161 (tuple2!41861 (Token!12635 (apply!9959 (transformation!6748 (rule!9762 token!484)) (seqFromList!4987 (_1!24066 lt!1404808))) (rule!9762 token!484) (size!31905 (seqFromList!4987 (_1!24066 lt!1404808))) (_1!24066 lt!1404808)) (_2!24066 lt!1404808))))))

(declare-fun lt!1404810 () Unit!61376)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1303 (Regex!11653 List!42778) Unit!61376)

(assert (=> b!3988353 (= lt!1404810 (longestMatchIsAcceptedByMatchOrIsEmpty!1303 (regex!6748 (rule!9762 token!484)) lt!1404544))))

(declare-fun res!1618095 () Bool)

(declare-fun findLongestMatchInner!1330 (Regex!11653 List!42778 Int List!42778 List!42778 Int) tuple2!41864)

(assert (=> b!3988353 (= res!1618095 (isEmpty!25494 (_1!24066 (findLongestMatchInner!1330 (regex!6748 (rule!9762 token!484)) Nil!42654 (size!31903 Nil!42654) lt!1404544 lt!1404544 (size!31903 lt!1404544)))))))

(declare-fun e!2472218 () Bool)

(assert (=> b!3988353 (=> res!1618095 e!2472218)))

(assert (=> b!3988353 e!2472218))

(declare-fun lt!1404809 () Unit!61376)

(assert (=> b!3988353 (= lt!1404809 lt!1404810)))

(declare-fun lt!1404806 () Unit!61376)

(declare-fun lemmaSemiInverse!1846 (TokenValueInjection!13384 BalanceConc!25512) Unit!61376)

(assert (=> b!3988353 (= lt!1404806 (lemmaSemiInverse!1846 (transformation!6748 (rule!9762 token!484)) (seqFromList!4987 (_1!24066 lt!1404808))))))

(declare-fun b!3988354 () Bool)

(declare-fun res!1618092 () Bool)

(assert (=> b!3988354 (=> (not res!1618092) (not e!2472216))))

(assert (=> b!3988354 (= res!1618092 (< (size!31903 (_2!24064 (get!14036 lt!1404807))) (size!31903 lt!1404544)))))

(declare-fun b!3988355 () Bool)

(declare-fun res!1618098 () Bool)

(assert (=> b!3988355 (=> (not res!1618098) (not e!2472216))))

(assert (=> b!3988355 (= res!1618098 (= (++!11150 (list!15834 (charsOf!4564 (_1!24064 (get!14036 lt!1404807)))) (_2!24064 (get!14036 lt!1404807))) lt!1404544))))

(declare-fun b!3988356 () Bool)

(assert (=> b!3988356 (= e!2472218 (matchR!5630 (regex!6748 (rule!9762 token!484)) (_1!24066 (findLongestMatchInner!1330 (regex!6748 (rule!9762 token!484)) Nil!42654 (size!31903 Nil!42654) lt!1404544 lt!1404544 (size!31903 lt!1404544)))))))

(declare-fun b!3988357 () Bool)

(assert (=> b!3988357 (= e!2472216 (= (size!31902 (_1!24064 (get!14036 lt!1404807))) (size!31903 (originalCharacters!7348 (_1!24064 (get!14036 lt!1404807))))))))

(declare-fun b!3988358 () Bool)

(assert (=> b!3988358 (= e!2472217 None!9161)))

(declare-fun b!3988359 () Bool)

(assert (=> b!3988359 (= e!2472215 e!2472216)))

(declare-fun res!1618093 () Bool)

(assert (=> b!3988359 (=> (not res!1618093) (not e!2472216))))

(assert (=> b!3988359 (= res!1618093 (matchR!5630 (regex!6748 (rule!9762 token!484)) (list!15834 (charsOf!4564 (_1!24064 (get!14036 lt!1404807))))))))

(declare-fun b!3988360 () Bool)

(declare-fun res!1618097 () Bool)

(assert (=> b!3988360 (=> (not res!1618097) (not e!2472216))))

(assert (=> b!3988360 (= res!1618097 (= (rule!9762 (_1!24064 (get!14036 lt!1404807))) (rule!9762 token!484)))))

(assert (= (and d!1180217 c!690407) b!3988358))

(assert (= (and d!1180217 (not c!690407)) b!3988353))

(assert (= (and b!3988353 (not res!1618095)) b!3988356))

(assert (= (and d!1180217 (not res!1618096)) b!3988359))

(assert (= (and b!3988359 res!1618093) b!3988355))

(assert (= (and b!3988355 res!1618098) b!3988354))

(assert (= (and b!3988354 res!1618092) b!3988360))

(assert (= (and b!3988360 res!1618097) b!3988352))

(assert (= (and b!3988352 res!1618094) b!3988357))

(declare-fun m!4565663 () Bool)

(assert (=> b!3988356 m!4565663))

(assert (=> b!3988356 m!4565261))

(assert (=> b!3988356 m!4565663))

(assert (=> b!3988356 m!4565261))

(declare-fun m!4565665 () Bool)

(assert (=> b!3988356 m!4565665))

(declare-fun m!4565667 () Bool)

(assert (=> b!3988356 m!4565667))

(declare-fun m!4565669 () Bool)

(assert (=> b!3988352 m!4565669))

(declare-fun m!4565671 () Bool)

(assert (=> b!3988352 m!4565671))

(assert (=> b!3988352 m!4565671))

(declare-fun m!4565673 () Bool)

(assert (=> b!3988352 m!4565673))

(assert (=> b!3988359 m!4565669))

(declare-fun m!4565675 () Bool)

(assert (=> b!3988359 m!4565675))

(assert (=> b!3988359 m!4565675))

(declare-fun m!4565677 () Bool)

(assert (=> b!3988359 m!4565677))

(assert (=> b!3988359 m!4565677))

(declare-fun m!4565679 () Bool)

(assert (=> b!3988359 m!4565679))

(declare-fun m!4565681 () Bool)

(assert (=> b!3988353 m!4565681))

(assert (=> b!3988353 m!4565681))

(declare-fun m!4565683 () Bool)

(assert (=> b!3988353 m!4565683))

(assert (=> b!3988353 m!4565681))

(declare-fun m!4565685 () Bool)

(assert (=> b!3988353 m!4565685))

(assert (=> b!3988353 m!4565681))

(declare-fun m!4565687 () Bool)

(assert (=> b!3988353 m!4565687))

(assert (=> b!3988353 m!4565261))

(assert (=> b!3988353 m!4565663))

(assert (=> b!3988353 m!4565261))

(assert (=> b!3988353 m!4565665))

(assert (=> b!3988353 m!4565663))

(declare-fun m!4565689 () Bool)

(assert (=> b!3988353 m!4565689))

(declare-fun m!4565691 () Bool)

(assert (=> b!3988353 m!4565691))

(assert (=> b!3988360 m!4565669))

(assert (=> b!3988355 m!4565669))

(assert (=> b!3988355 m!4565675))

(assert (=> b!3988355 m!4565675))

(assert (=> b!3988355 m!4565677))

(assert (=> b!3988355 m!4565677))

(declare-fun m!4565693 () Bool)

(assert (=> b!3988355 m!4565693))

(declare-fun m!4565695 () Bool)

(assert (=> d!1180217 m!4565695))

(declare-fun m!4565697 () Bool)

(assert (=> d!1180217 m!4565697))

(declare-fun m!4565699 () Bool)

(assert (=> d!1180217 m!4565699))

(assert (=> d!1180217 m!4564681))

(assert (=> b!3988354 m!4565669))

(declare-fun m!4565701 () Bool)

(assert (=> b!3988354 m!4565701))

(assert (=> b!3988354 m!4565261))

(assert (=> b!3988357 m!4565669))

(declare-fun m!4565703 () Bool)

(assert (=> b!3988357 m!4565703))

(assert (=> b!3987702 d!1180217))

(declare-fun b!3988363 () Bool)

(declare-fun e!2472220 () Bool)

(assert (=> b!3988363 (= e!2472220 (isPrefix!3835 (tail!6219 lt!1404540) (tail!6219 lt!1404549)))))

(declare-fun b!3988362 () Bool)

(declare-fun res!1618101 () Bool)

(assert (=> b!3988362 (=> (not res!1618101) (not e!2472220))))

(assert (=> b!3988362 (= res!1618101 (= (head!8487 lt!1404540) (head!8487 lt!1404549)))))

(declare-fun b!3988361 () Bool)

(declare-fun e!2472219 () Bool)

(assert (=> b!3988361 (= e!2472219 e!2472220)))

(declare-fun res!1618100 () Bool)

(assert (=> b!3988361 (=> (not res!1618100) (not e!2472220))))

(assert (=> b!3988361 (= res!1618100 (not ((_ is Nil!42654) lt!1404549)))))

(declare-fun b!3988364 () Bool)

(declare-fun e!2472221 () Bool)

(assert (=> b!3988364 (= e!2472221 (>= (size!31903 lt!1404549) (size!31903 lt!1404540)))))

(declare-fun d!1180287 () Bool)

(assert (=> d!1180287 e!2472221))

(declare-fun res!1618102 () Bool)

(assert (=> d!1180287 (=> res!1618102 e!2472221)))

(declare-fun lt!1404811 () Bool)

(assert (=> d!1180287 (= res!1618102 (not lt!1404811))))

(assert (=> d!1180287 (= lt!1404811 e!2472219)))

(declare-fun res!1618099 () Bool)

(assert (=> d!1180287 (=> res!1618099 e!2472219)))

(assert (=> d!1180287 (= res!1618099 ((_ is Nil!42654) lt!1404540))))

(assert (=> d!1180287 (= (isPrefix!3835 lt!1404540 lt!1404549) lt!1404811)))

(assert (= (and d!1180287 (not res!1618099)) b!3988361))

(assert (= (and b!3988361 res!1618100) b!3988362))

(assert (= (and b!3988362 res!1618101) b!3988363))

(assert (= (and d!1180287 (not res!1618102)) b!3988364))

(assert (=> b!3988363 m!4564989))

(declare-fun m!4565705 () Bool)

(assert (=> b!3988363 m!4565705))

(assert (=> b!3988363 m!4564989))

(assert (=> b!3988363 m!4565705))

(declare-fun m!4565707 () Bool)

(assert (=> b!3988363 m!4565707))

(assert (=> b!3988362 m!4564987))

(declare-fun m!4565709 () Bool)

(assert (=> b!3988362 m!4565709))

(declare-fun m!4565711 () Bool)

(assert (=> b!3988364 m!4565711))

(assert (=> b!3988364 m!4564689))

(assert (=> b!3987702 d!1180287))

(declare-fun d!1180289 () Bool)

(declare-fun fromListB!2288 (List!42778) BalanceConc!25512)

(assert (=> d!1180289 (= (seqFromList!4987 lt!1404540) (fromListB!2288 lt!1404540))))

(declare-fun bs!588268 () Bool)

(assert (= bs!588268 d!1180289))

(declare-fun m!4565713 () Bool)

(assert (=> bs!588268 m!4565713))

(assert (=> b!3987702 d!1180289))

(declare-fun d!1180291 () Bool)

(assert (=> d!1180291 (= (maxPrefixOneRule!2669 thiss!21717 (rule!9762 token!484) lt!1404544) (Some!9161 (tuple2!41861 (Token!12635 (apply!9959 (transformation!6748 (rule!9762 token!484)) (seqFromList!4987 lt!1404540)) (rule!9762 token!484) (size!31903 lt!1404540) lt!1404540) suffixResult!105)))))

(declare-fun lt!1404814 () Unit!61376)

(declare-fun choose!23967 (LexerInterface!6337 List!42780 List!42778 List!42778 List!42778 Rule!13296) Unit!61376)

(assert (=> d!1180291 (= lt!1404814 (choose!23967 thiss!21717 rules!2999 lt!1404540 lt!1404544 suffixResult!105 (rule!9762 token!484)))))

(assert (=> d!1180291 (not (isEmpty!25492 rules!2999))))

(assert (=> d!1180291 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1491 thiss!21717 rules!2999 lt!1404540 lt!1404544 suffixResult!105 (rule!9762 token!484)) lt!1404814)))

(declare-fun bs!588269 () Bool)

(assert (= bs!588269 d!1180291))

(assert (=> bs!588269 m!4564815))

(declare-fun m!4565715 () Bool)

(assert (=> bs!588269 m!4565715))

(assert (=> bs!588269 m!4564689))

(assert (=> bs!588269 m!4564807))

(assert (=> bs!588269 m!4564817))

(assert (=> bs!588269 m!4564731))

(assert (=> bs!588269 m!4564807))

(assert (=> b!3987702 d!1180291))

(declare-fun d!1180293 () Bool)

(declare-fun dynLambda!18125 (Int BalanceConc!25512) TokenValue!6978)

(assert (=> d!1180293 (= (apply!9959 (transformation!6748 (rule!9762 token!484)) (seqFromList!4987 lt!1404540)) (dynLambda!18125 (toValue!9236 (transformation!6748 (rule!9762 token!484))) (seqFromList!4987 lt!1404540)))))

(declare-fun b_lambda!116449 () Bool)

(assert (=> (not b_lambda!116449) (not d!1180293)))

(declare-fun t!331657 () Bool)

(declare-fun tb!240137 () Bool)

(assert (=> (and b!3987741 (= (toValue!9236 (transformation!6748 (h!48076 rules!2999))) (toValue!9236 (transformation!6748 (rule!9762 token!484)))) t!331657) tb!240137))

(declare-fun result!290950 () Bool)

(assert (=> tb!240137 (= result!290950 (inv!21 (dynLambda!18125 (toValue!9236 (transformation!6748 (rule!9762 token!484))) (seqFromList!4987 lt!1404540))))))

(declare-fun m!4565717 () Bool)

(assert (=> tb!240137 m!4565717))

(assert (=> d!1180293 t!331657))

(declare-fun b_and!306467 () Bool)

(assert (= b_and!306431 (and (=> t!331657 result!290950) b_and!306467)))

(declare-fun t!331659 () Bool)

(declare-fun tb!240139 () Bool)

(assert (=> (and b!3987707 (= (toValue!9236 (transformation!6748 (rule!9762 token!484))) (toValue!9236 (transformation!6748 (rule!9762 token!484)))) t!331659) tb!240139))

(declare-fun result!290954 () Bool)

(assert (= result!290954 result!290950))

(assert (=> d!1180293 t!331659))

(declare-fun b_and!306469 () Bool)

(assert (= b_and!306435 (and (=> t!331659 result!290954) b_and!306469)))

(assert (=> d!1180293 m!4564807))

(declare-fun m!4565719 () Bool)

(assert (=> d!1180293 m!4565719))

(assert (=> b!3987702 d!1180293))

(declare-fun d!1180295 () Bool)

(assert (=> d!1180295 (isPrefix!3835 lt!1404540 (++!11150 lt!1404540 lt!1404523))))

(declare-fun lt!1404815 () Unit!61376)

(assert (=> d!1180295 (= lt!1404815 (choose!23960 lt!1404540 lt!1404523))))

(assert (=> d!1180295 (= (lemmaConcatTwoListThenFirstIsPrefix!2678 lt!1404540 lt!1404523) lt!1404815)))

(declare-fun bs!588270 () Bool)

(assert (= bs!588270 d!1180295))

(assert (=> bs!588270 m!4564733))

(assert (=> bs!588270 m!4564733))

(declare-fun m!4565721 () Bool)

(assert (=> bs!588270 m!4565721))

(declare-fun m!4565723 () Bool)

(assert (=> bs!588270 m!4565723))

(assert (=> b!3987702 d!1180295))

(declare-fun d!1180297 () Bool)

(declare-fun res!1618107 () Bool)

(declare-fun e!2472227 () Bool)

(assert (=> d!1180297 (=> (not res!1618107) (not e!2472227))))

(assert (=> d!1180297 (= res!1618107 (not (isEmpty!25494 (originalCharacters!7348 token!484))))))

(assert (=> d!1180297 (= (inv!56974 token!484) e!2472227)))

(declare-fun b!3988371 () Bool)

(declare-fun res!1618108 () Bool)

(assert (=> b!3988371 (=> (not res!1618108) (not e!2472227))))

(assert (=> b!3988371 (= res!1618108 (= (originalCharacters!7348 token!484) (list!15834 (dynLambda!18124 (toChars!9095 (transformation!6748 (rule!9762 token!484))) (value!212952 token!484)))))))

(declare-fun b!3988372 () Bool)

(assert (=> b!3988372 (= e!2472227 (= (size!31902 token!484) (size!31903 (originalCharacters!7348 token!484))))))

(assert (= (and d!1180297 res!1618107) b!3988371))

(assert (= (and b!3988371 res!1618108) b!3988372))

(declare-fun b_lambda!116451 () Bool)

(assert (=> (not b_lambda!116451) (not b!3988371)))

(assert (=> b!3988371 t!331637))

(declare-fun b_and!306471 () Bool)

(assert (= b_and!306451 (and (=> t!331637 result!290922) b_and!306471)))

(assert (=> b!3988371 t!331639))

(declare-fun b_and!306473 () Bool)

(assert (= b_and!306453 (and (=> t!331639 result!290926) b_and!306473)))

(declare-fun m!4565725 () Bool)

(assert (=> d!1180297 m!4565725))

(assert (=> b!3988371 m!4565421))

(assert (=> b!3988371 m!4565421))

(declare-fun m!4565727 () Bool)

(assert (=> b!3988371 m!4565727))

(assert (=> b!3988372 m!4564725))

(assert (=> start!375252 d!1180297))

(declare-fun d!1180299 () Bool)

(declare-fun lt!1404818 () Bool)

(declare-fun content!6468 (List!42780) (InoxSet Rule!13296))

(assert (=> d!1180299 (= lt!1404818 (select (content!6468 rules!2999) (rule!9762 token!484)))))

(declare-fun e!2472233 () Bool)

(assert (=> d!1180299 (= lt!1404818 e!2472233)))

(declare-fun res!1618114 () Bool)

(assert (=> d!1180299 (=> (not res!1618114) (not e!2472233))))

(assert (=> d!1180299 (= res!1618114 ((_ is Cons!42656) rules!2999))))

(assert (=> d!1180299 (= (contains!8489 rules!2999 (rule!9762 token!484)) lt!1404818)))

(declare-fun b!3988377 () Bool)

(declare-fun e!2472232 () Bool)

(assert (=> b!3988377 (= e!2472233 e!2472232)))

(declare-fun res!1618113 () Bool)

(assert (=> b!3988377 (=> res!1618113 e!2472232)))

(assert (=> b!3988377 (= res!1618113 (= (h!48076 rules!2999) (rule!9762 token!484)))))

(declare-fun b!3988378 () Bool)

(assert (=> b!3988378 (= e!2472232 (contains!8489 (t!331627 rules!2999) (rule!9762 token!484)))))

(assert (= (and d!1180299 res!1618114) b!3988377))

(assert (= (and b!3988377 (not res!1618113)) b!3988378))

(declare-fun m!4565729 () Bool)

(assert (=> d!1180299 m!4565729))

(declare-fun m!4565731 () Bool)

(assert (=> d!1180299 m!4565731))

(declare-fun m!4565733 () Bool)

(assert (=> b!3988378 m!4565733))

(assert (=> b!3987723 d!1180299))

(declare-fun d!1180301 () Bool)

(assert (=> d!1180301 (= (_2!24064 (v!39515 lt!1404551)) newSuffixResult!27)))

(declare-fun lt!1404819 () Unit!61376)

(assert (=> d!1180301 (= lt!1404819 (choose!23959 lt!1404530 (_2!24064 (v!39515 lt!1404551)) lt!1404540 newSuffixResult!27 lt!1404513))))

(assert (=> d!1180301 (isPrefix!3835 lt!1404530 lt!1404513)))

(assert (=> d!1180301 (= (lemmaSamePrefixThenSameSuffix!2022 lt!1404530 (_2!24064 (v!39515 lt!1404551)) lt!1404540 newSuffixResult!27 lt!1404513) lt!1404819)))

(declare-fun bs!588271 () Bool)

(assert (= bs!588271 d!1180301))

(declare-fun m!4565735 () Bool)

(assert (=> bs!588271 m!4565735))

(assert (=> bs!588271 m!4564805))

(assert (=> b!3987723 d!1180301))

(declare-fun d!1180303 () Bool)

(assert (=> d!1180303 (= lt!1404530 lt!1404540)))

(declare-fun lt!1404822 () Unit!61376)

(declare-fun choose!23968 (List!42778 List!42778 List!42778) Unit!61376)

(assert (=> d!1180303 (= lt!1404822 (choose!23968 lt!1404530 lt!1404540 lt!1404513))))

(assert (=> d!1180303 (isPrefix!3835 lt!1404530 lt!1404513)))

(assert (=> d!1180303 (= (lemmaIsPrefixSameLengthThenSameList!857 lt!1404530 lt!1404540 lt!1404513) lt!1404822)))

(declare-fun bs!588272 () Bool)

(assert (= bs!588272 d!1180303))

(declare-fun m!4565737 () Bool)

(assert (=> bs!588272 m!4565737))

(assert (=> bs!588272 m!4564805))

(assert (=> b!3987723 d!1180303))

(declare-fun b!3988380 () Bool)

(declare-fun e!2472235 () List!42778)

(assert (=> b!3988380 (= e!2472235 (Cons!42654 (h!48074 prefix!494) (++!11150 (t!331625 prefix!494) newSuffix!27)))))

(declare-fun b!3988381 () Bool)

(declare-fun res!1618116 () Bool)

(declare-fun e!2472234 () Bool)

(assert (=> b!3988381 (=> (not res!1618116) (not e!2472234))))

(declare-fun lt!1404823 () List!42778)

(assert (=> b!3988381 (= res!1618116 (= (size!31903 lt!1404823) (+ (size!31903 prefix!494) (size!31903 newSuffix!27))))))

(declare-fun b!3988379 () Bool)

(assert (=> b!3988379 (= e!2472235 newSuffix!27)))

(declare-fun d!1180305 () Bool)

(assert (=> d!1180305 e!2472234))

(declare-fun res!1618115 () Bool)

(assert (=> d!1180305 (=> (not res!1618115) (not e!2472234))))

(assert (=> d!1180305 (= res!1618115 (= (content!6467 lt!1404823) ((_ map or) (content!6467 prefix!494) (content!6467 newSuffix!27))))))

(assert (=> d!1180305 (= lt!1404823 e!2472235)))

(declare-fun c!690408 () Bool)

(assert (=> d!1180305 (= c!690408 ((_ is Nil!42654) prefix!494))))

(assert (=> d!1180305 (= (++!11150 prefix!494 newSuffix!27) lt!1404823)))

(declare-fun b!3988382 () Bool)

(assert (=> b!3988382 (= e!2472234 (or (not (= newSuffix!27 Nil!42654)) (= lt!1404823 prefix!494)))))

(assert (= (and d!1180305 c!690408) b!3988379))

(assert (= (and d!1180305 (not c!690408)) b!3988380))

(assert (= (and d!1180305 res!1618115) b!3988381))

(assert (= (and b!3988381 res!1618116) b!3988382))

(declare-fun m!4565739 () Bool)

(assert (=> b!3988380 m!4565739))

(declare-fun m!4565741 () Bool)

(assert (=> b!3988381 m!4565741))

(assert (=> b!3988381 m!4564691))

(assert (=> b!3988381 m!4564723))

(declare-fun m!4565743 () Bool)

(assert (=> d!1180305 m!4565743))

(declare-fun m!4565745 () Bool)

(assert (=> d!1180305 m!4565745))

(assert (=> d!1180305 m!4565461))

(assert (=> b!3987701 d!1180305))

(declare-fun b!3988384 () Bool)

(declare-fun e!2472237 () List!42778)

(assert (=> b!3988384 (= e!2472237 (Cons!42654 (h!48074 lt!1404540) (++!11150 (t!331625 lt!1404540) newSuffixResult!27)))))

(declare-fun b!3988385 () Bool)

(declare-fun res!1618118 () Bool)

(declare-fun e!2472236 () Bool)

(assert (=> b!3988385 (=> (not res!1618118) (not e!2472236))))

(declare-fun lt!1404824 () List!42778)

(assert (=> b!3988385 (= res!1618118 (= (size!31903 lt!1404824) (+ (size!31903 lt!1404540) (size!31903 newSuffixResult!27))))))

(declare-fun b!3988383 () Bool)

(assert (=> b!3988383 (= e!2472237 newSuffixResult!27)))

(declare-fun d!1180307 () Bool)

(assert (=> d!1180307 e!2472236))

(declare-fun res!1618117 () Bool)

(assert (=> d!1180307 (=> (not res!1618117) (not e!2472236))))

(assert (=> d!1180307 (= res!1618117 (= (content!6467 lt!1404824) ((_ map or) (content!6467 lt!1404540) (content!6467 newSuffixResult!27))))))

(assert (=> d!1180307 (= lt!1404824 e!2472237)))

(declare-fun c!690409 () Bool)

(assert (=> d!1180307 (= c!690409 ((_ is Nil!42654) lt!1404540))))

(assert (=> d!1180307 (= (++!11150 lt!1404540 newSuffixResult!27) lt!1404824)))

(declare-fun b!3988386 () Bool)

(assert (=> b!3988386 (= e!2472236 (or (not (= newSuffixResult!27 Nil!42654)) (= lt!1404824 lt!1404540)))))

(assert (= (and d!1180307 c!690409) b!3988383))

(assert (= (and d!1180307 (not c!690409)) b!3988384))

(assert (= (and d!1180307 res!1618117) b!3988385))

(assert (= (and b!3988385 res!1618118) b!3988386))

(declare-fun m!4565747 () Bool)

(assert (=> b!3988384 m!4565747))

(declare-fun m!4565749 () Bool)

(assert (=> b!3988385 m!4565749))

(assert (=> b!3988385 m!4564689))

(declare-fun m!4565751 () Bool)

(assert (=> b!3988385 m!4565751))

(declare-fun m!4565753 () Bool)

(assert (=> d!1180307 m!4565753))

(assert (=> d!1180307 m!4565029))

(declare-fun m!4565755 () Bool)

(assert (=> d!1180307 m!4565755))

(assert (=> b!3987701 d!1180307))

(declare-fun b!3988388 () Bool)

(declare-fun e!2472239 () List!42778)

(assert (=> b!3988388 (= e!2472239 (Cons!42654 (h!48074 prefix!494) (++!11150 (t!331625 prefix!494) lt!1404559)))))

(declare-fun b!3988389 () Bool)

(declare-fun res!1618120 () Bool)

(declare-fun e!2472238 () Bool)

(assert (=> b!3988389 (=> (not res!1618120) (not e!2472238))))

(declare-fun lt!1404825 () List!42778)

(assert (=> b!3988389 (= res!1618120 (= (size!31903 lt!1404825) (+ (size!31903 prefix!494) (size!31903 lt!1404559))))))

(declare-fun b!3988387 () Bool)

(assert (=> b!3988387 (= e!2472239 lt!1404559)))

(declare-fun d!1180309 () Bool)

(assert (=> d!1180309 e!2472238))

(declare-fun res!1618119 () Bool)

(assert (=> d!1180309 (=> (not res!1618119) (not e!2472238))))

(assert (=> d!1180309 (= res!1618119 (= (content!6467 lt!1404825) ((_ map or) (content!6467 prefix!494) (content!6467 lt!1404559))))))

(assert (=> d!1180309 (= lt!1404825 e!2472239)))

(declare-fun c!690410 () Bool)

(assert (=> d!1180309 (= c!690410 ((_ is Nil!42654) prefix!494))))

(assert (=> d!1180309 (= (++!11150 prefix!494 lt!1404559) lt!1404825)))

(declare-fun b!3988390 () Bool)

(assert (=> b!3988390 (= e!2472238 (or (not (= lt!1404559 Nil!42654)) (= lt!1404825 prefix!494)))))

(assert (= (and d!1180309 c!690410) b!3988387))

(assert (= (and d!1180309 (not c!690410)) b!3988388))

(assert (= (and d!1180309 res!1618119) b!3988389))

(assert (= (and b!3988389 res!1618120) b!3988390))

(declare-fun m!4565757 () Bool)

(assert (=> b!3988388 m!4565757))

(declare-fun m!4565759 () Bool)

(assert (=> b!3988389 m!4565759))

(assert (=> b!3988389 m!4564691))

(declare-fun m!4565761 () Bool)

(assert (=> b!3988389 m!4565761))

(declare-fun m!4565763 () Bool)

(assert (=> d!1180309 m!4565763))

(assert (=> d!1180309 m!4565745))

(declare-fun m!4565765 () Bool)

(assert (=> d!1180309 m!4565765))

(assert (=> b!3987700 d!1180309))

(declare-fun b!3988392 () Bool)

(declare-fun e!2472241 () List!42778)

(assert (=> b!3988392 (= e!2472241 (Cons!42654 (h!48074 lt!1404513) (++!11150 (t!331625 lt!1404513) lt!1404556)))))

(declare-fun b!3988393 () Bool)

(declare-fun res!1618122 () Bool)

(declare-fun e!2472240 () Bool)

(assert (=> b!3988393 (=> (not res!1618122) (not e!2472240))))

(declare-fun lt!1404826 () List!42778)

(assert (=> b!3988393 (= res!1618122 (= (size!31903 lt!1404826) (+ (size!31903 lt!1404513) (size!31903 lt!1404556))))))

(declare-fun b!3988391 () Bool)

(assert (=> b!3988391 (= e!2472241 lt!1404556)))

(declare-fun d!1180311 () Bool)

(assert (=> d!1180311 e!2472240))

(declare-fun res!1618121 () Bool)

(assert (=> d!1180311 (=> (not res!1618121) (not e!2472240))))

(assert (=> d!1180311 (= res!1618121 (= (content!6467 lt!1404826) ((_ map or) (content!6467 lt!1404513) (content!6467 lt!1404556))))))

(assert (=> d!1180311 (= lt!1404826 e!2472241)))

(declare-fun c!690411 () Bool)

(assert (=> d!1180311 (= c!690411 ((_ is Nil!42654) lt!1404513))))

(assert (=> d!1180311 (= (++!11150 lt!1404513 lt!1404556) lt!1404826)))

(declare-fun b!3988394 () Bool)

(assert (=> b!3988394 (= e!2472240 (or (not (= lt!1404556 Nil!42654)) (= lt!1404826 lt!1404513)))))

(assert (= (and d!1180311 c!690411) b!3988391))

(assert (= (and d!1180311 (not c!690411)) b!3988392))

(assert (= (and d!1180311 res!1618121) b!3988393))

(assert (= (and b!3988393 res!1618122) b!3988394))

(declare-fun m!4565767 () Bool)

(assert (=> b!3988392 m!4565767))

(declare-fun m!4565769 () Bool)

(assert (=> b!3988393 m!4565769))

(assert (=> b!3988393 m!4565011))

(assert (=> b!3988393 m!4565457))

(declare-fun m!4565771 () Bool)

(assert (=> d!1180311 m!4565771))

(declare-fun m!4565773 () Bool)

(assert (=> d!1180311 m!4565773))

(assert (=> d!1180311 m!4565463))

(assert (=> b!3987700 d!1180311))

(declare-fun d!1180313 () Bool)

(assert (=> d!1180313 (= (++!11150 (++!11150 prefix!494 newSuffix!27) lt!1404556) (++!11150 prefix!494 (++!11150 newSuffix!27 lt!1404556)))))

(declare-fun lt!1404829 () Unit!61376)

(declare-fun choose!23969 (List!42778 List!42778 List!42778) Unit!61376)

(assert (=> d!1180313 (= lt!1404829 (choose!23969 prefix!494 newSuffix!27 lt!1404556))))

(assert (=> d!1180313 (= (lemmaConcatAssociativity!2470 prefix!494 newSuffix!27 lt!1404556) lt!1404829)))

(declare-fun bs!588273 () Bool)

(assert (= bs!588273 d!1180313))

(declare-fun m!4565775 () Bool)

(assert (=> bs!588273 m!4565775))

(assert (=> bs!588273 m!4564787))

(assert (=> bs!588273 m!4564787))

(declare-fun m!4565777 () Bool)

(assert (=> bs!588273 m!4565777))

(assert (=> bs!588273 m!4564727))

(declare-fun m!4565779 () Bool)

(assert (=> bs!588273 m!4565779))

(assert (=> bs!588273 m!4564727))

(assert (=> b!3987700 d!1180313))

(declare-fun b!3988396 () Bool)

(declare-fun e!2472243 () List!42778)

(assert (=> b!3988396 (= e!2472243 (Cons!42654 (h!48074 lt!1404530) (++!11150 (t!331625 lt!1404530) lt!1404532)))))

(declare-fun b!3988397 () Bool)

(declare-fun res!1618124 () Bool)

(declare-fun e!2472242 () Bool)

(assert (=> b!3988397 (=> (not res!1618124) (not e!2472242))))

(declare-fun lt!1404830 () List!42778)

(assert (=> b!3988397 (= res!1618124 (= (size!31903 lt!1404830) (+ (size!31903 lt!1404530) (size!31903 lt!1404532))))))

(declare-fun b!3988395 () Bool)

(assert (=> b!3988395 (= e!2472243 lt!1404532)))

(declare-fun d!1180315 () Bool)

(assert (=> d!1180315 e!2472242))

(declare-fun res!1618123 () Bool)

(assert (=> d!1180315 (=> (not res!1618123) (not e!2472242))))

(assert (=> d!1180315 (= res!1618123 (= (content!6467 lt!1404830) ((_ map or) (content!6467 lt!1404530) (content!6467 lt!1404532))))))

(assert (=> d!1180315 (= lt!1404830 e!2472243)))

(declare-fun c!690412 () Bool)

(assert (=> d!1180315 (= c!690412 ((_ is Nil!42654) lt!1404530))))

(assert (=> d!1180315 (= (++!11150 lt!1404530 lt!1404532) lt!1404830)))

(declare-fun b!3988398 () Bool)

(assert (=> b!3988398 (= e!2472242 (or (not (= lt!1404532 Nil!42654)) (= lt!1404830 lt!1404530)))))

(assert (= (and d!1180315 c!690412) b!3988395))

(assert (= (and d!1180315 (not c!690412)) b!3988396))

(assert (= (and d!1180315 res!1618123) b!3988397))

(assert (= (and b!3988397 res!1618124) b!3988398))

(declare-fun m!4565781 () Bool)

(assert (=> b!3988396 m!4565781))

(declare-fun m!4565783 () Bool)

(assert (=> b!3988397 m!4565783))

(assert (=> b!3988397 m!4564647))

(declare-fun m!4565785 () Bool)

(assert (=> b!3988397 m!4565785))

(declare-fun m!4565787 () Bool)

(assert (=> d!1180315 m!4565787))

(declare-fun m!4565789 () Bool)

(assert (=> d!1180315 m!4565789))

(declare-fun m!4565791 () Bool)

(assert (=> d!1180315 m!4565791))

(assert (=> b!3987721 d!1180315))

(declare-fun d!1180317 () Bool)

(declare-fun lt!1404831 () List!42778)

(assert (=> d!1180317 (= (++!11150 lt!1404530 lt!1404831) lt!1404513)))

(declare-fun e!2472244 () List!42778)

(assert (=> d!1180317 (= lt!1404831 e!2472244)))

(declare-fun c!690413 () Bool)

(assert (=> d!1180317 (= c!690413 ((_ is Cons!42654) lt!1404530))))

(assert (=> d!1180317 (>= (size!31903 lt!1404513) (size!31903 lt!1404530))))

(assert (=> d!1180317 (= (getSuffix!2266 lt!1404513 lt!1404530) lt!1404831)))

(declare-fun b!3988399 () Bool)

(assert (=> b!3988399 (= e!2472244 (getSuffix!2266 (tail!6219 lt!1404513) (t!331625 lt!1404530)))))

(declare-fun b!3988400 () Bool)

(assert (=> b!3988400 (= e!2472244 lt!1404513)))

(assert (= (and d!1180317 c!690413) b!3988399))

(assert (= (and d!1180317 (not c!690413)) b!3988400))

(declare-fun m!4565793 () Bool)

(assert (=> d!1180317 m!4565793))

(assert (=> d!1180317 m!4565011))

(assert (=> d!1180317 m!4564647))

(assert (=> b!3988399 m!4565005))

(assert (=> b!3988399 m!4565005))

(declare-fun m!4565795 () Bool)

(assert (=> b!3988399 m!4565795))

(assert (=> b!3987721 d!1180317))

(declare-fun b!3988402 () Bool)

(declare-fun e!2472246 () List!42778)

(assert (=> b!3988402 (= e!2472246 (Cons!42654 (h!48074 lt!1404540) (++!11150 (t!331625 lt!1404540) suffixResult!105)))))

(declare-fun b!3988403 () Bool)

(declare-fun res!1618126 () Bool)

(declare-fun e!2472245 () Bool)

(assert (=> b!3988403 (=> (not res!1618126) (not e!2472245))))

(declare-fun lt!1404832 () List!42778)

(assert (=> b!3988403 (= res!1618126 (= (size!31903 lt!1404832) (+ (size!31903 lt!1404540) (size!31903 suffixResult!105))))))

(declare-fun b!3988401 () Bool)

(assert (=> b!3988401 (= e!2472246 suffixResult!105)))

(declare-fun d!1180319 () Bool)

(assert (=> d!1180319 e!2472245))

(declare-fun res!1618125 () Bool)

(assert (=> d!1180319 (=> (not res!1618125) (not e!2472245))))

(assert (=> d!1180319 (= res!1618125 (= (content!6467 lt!1404832) ((_ map or) (content!6467 lt!1404540) (content!6467 suffixResult!105))))))

(assert (=> d!1180319 (= lt!1404832 e!2472246)))

(declare-fun c!690414 () Bool)

(assert (=> d!1180319 (= c!690414 ((_ is Nil!42654) lt!1404540))))

(assert (=> d!1180319 (= (++!11150 lt!1404540 suffixResult!105) lt!1404832)))

(declare-fun b!3988404 () Bool)

(assert (=> b!3988404 (= e!2472245 (or (not (= suffixResult!105 Nil!42654)) (= lt!1404832 lt!1404540)))))

(assert (= (and d!1180319 c!690414) b!3988401))

(assert (= (and d!1180319 (not c!690414)) b!3988402))

(assert (= (and d!1180319 res!1618125) b!3988403))

(assert (= (and b!3988403 res!1618126) b!3988404))

(declare-fun m!4565797 () Bool)

(assert (=> b!3988402 m!4565797))

(declare-fun m!4565799 () Bool)

(assert (=> b!3988403 m!4565799))

(assert (=> b!3988403 m!4564689))

(declare-fun m!4565801 () Bool)

(assert (=> b!3988403 m!4565801))

(declare-fun m!4565803 () Bool)

(assert (=> d!1180319 m!4565803))

(assert (=> d!1180319 m!4565029))

(declare-fun m!4565805 () Bool)

(assert (=> d!1180319 m!4565805))

(assert (=> b!3987740 d!1180319))

(declare-fun d!1180321 () Bool)

(declare-fun e!2472249 () Bool)

(assert (=> d!1180321 e!2472249))

(declare-fun res!1618129 () Bool)

(assert (=> d!1180321 (=> (not res!1618129) (not e!2472249))))

(declare-fun semiInverseModEq!2893 (Int Int) Bool)

(assert (=> d!1180321 (= res!1618129 (semiInverseModEq!2893 (toChars!9095 (transformation!6748 (rule!9762 token!484))) (toValue!9236 (transformation!6748 (rule!9762 token!484)))))))

(declare-fun Unit!61387 () Unit!61376)

(assert (=> d!1180321 (= (lemmaInv!963 (transformation!6748 (rule!9762 token!484))) Unit!61387)))

(declare-fun b!3988407 () Bool)

(declare-fun equivClasses!2792 (Int Int) Bool)

(assert (=> b!3988407 (= e!2472249 (equivClasses!2792 (toChars!9095 (transformation!6748 (rule!9762 token!484))) (toValue!9236 (transformation!6748 (rule!9762 token!484)))))))

(assert (= (and d!1180321 res!1618129) b!3988407))

(declare-fun m!4565807 () Bool)

(assert (=> d!1180321 m!4565807))

(declare-fun m!4565809 () Bool)

(assert (=> b!3988407 m!4565809))

(assert (=> b!3987740 d!1180321))

(declare-fun d!1180323 () Bool)

(declare-fun res!1618134 () Bool)

(declare-fun e!2472252 () Bool)

(assert (=> d!1180323 (=> (not res!1618134) (not e!2472252))))

(assert (=> d!1180323 (= res!1618134 (validRegex!5285 (regex!6748 (rule!9762 token!484))))))

(assert (=> d!1180323 (= (ruleValid!2680 thiss!21717 (rule!9762 token!484)) e!2472252)))

(declare-fun b!3988412 () Bool)

(declare-fun res!1618135 () Bool)

(assert (=> b!3988412 (=> (not res!1618135) (not e!2472252))))

(assert (=> b!3988412 (= res!1618135 (not (nullable!4085 (regex!6748 (rule!9762 token!484)))))))

(declare-fun b!3988413 () Bool)

(assert (=> b!3988413 (= e!2472252 (not (= (tag!7608 (rule!9762 token!484)) (String!48609 ""))))))

(assert (= (and d!1180323 res!1618134) b!3988412))

(assert (= (and b!3988412 res!1618135) b!3988413))

(assert (=> d!1180323 m!4564997))

(assert (=> b!3988412 m!4564995))

(assert (=> b!3987740 d!1180323))

(declare-fun d!1180325 () Bool)

(assert (=> d!1180325 (ruleValid!2680 thiss!21717 (rule!9762 token!484))))

(declare-fun lt!1404835 () Unit!61376)

(declare-fun choose!23970 (LexerInterface!6337 Rule!13296 List!42780) Unit!61376)

(assert (=> d!1180325 (= lt!1404835 (choose!23970 thiss!21717 (rule!9762 token!484) rules!2999))))

(assert (=> d!1180325 (contains!8489 rules!2999 (rule!9762 token!484))))

(assert (=> d!1180325 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1754 thiss!21717 (rule!9762 token!484) rules!2999) lt!1404835)))

(declare-fun bs!588274 () Bool)

(assert (= bs!588274 d!1180325))

(assert (=> bs!588274 m!4564681))

(declare-fun m!4565811 () Bool)

(assert (=> bs!588274 m!4565811))

(assert (=> bs!588274 m!4564705))

(assert (=> b!3987740 d!1180325))

(declare-fun d!1180327 () Bool)

(assert (=> d!1180327 (= (inv!56970 (tag!7608 (h!48076 rules!2999))) (= (mod (str.len (value!212951 (tag!7608 (h!48076 rules!2999)))) 2) 0))))

(assert (=> b!3987719 d!1180327))

(declare-fun d!1180329 () Bool)

(declare-fun res!1618138 () Bool)

(declare-fun e!2472255 () Bool)

(assert (=> d!1180329 (=> (not res!1618138) (not e!2472255))))

(assert (=> d!1180329 (= res!1618138 (semiInverseModEq!2893 (toChars!9095 (transformation!6748 (h!48076 rules!2999))) (toValue!9236 (transformation!6748 (h!48076 rules!2999)))))))

(assert (=> d!1180329 (= (inv!56973 (transformation!6748 (h!48076 rules!2999))) e!2472255)))

(declare-fun b!3988416 () Bool)

(assert (=> b!3988416 (= e!2472255 (equivClasses!2792 (toChars!9095 (transformation!6748 (h!48076 rules!2999))) (toValue!9236 (transformation!6748 (h!48076 rules!2999)))))))

(assert (= (and d!1180329 res!1618138) b!3988416))

(declare-fun m!4565813 () Bool)

(assert (=> d!1180329 m!4565813))

(declare-fun m!4565815 () Bool)

(assert (=> b!3988416 m!4565815))

(assert (=> b!3987719 d!1180329))

(declare-fun d!1180331 () Bool)

(assert (=> d!1180331 (not (matchR!5630 (regex!6748 (rule!9762 token!484)) lt!1404540))))

(declare-fun lt!1404836 () Unit!61376)

(assert (=> d!1180331 (= lt!1404836 (choose!23965 thiss!21717 rules!2999 (rule!9762 (_1!24064 (v!39515 lt!1404551))) lt!1404530 lt!1404513 lt!1404540 (rule!9762 token!484)))))

(assert (=> d!1180331 (isPrefix!3835 lt!1404530 lt!1404513)))

(assert (=> d!1180331 (= (lemmaMaxPrefixOutputsMaxPrefix!402 thiss!21717 rules!2999 (rule!9762 (_1!24064 (v!39515 lt!1404551))) lt!1404530 lt!1404513 lt!1404540 (rule!9762 token!484)) lt!1404836)))

(declare-fun bs!588275 () Bool)

(assert (= bs!588275 d!1180331))

(assert (=> bs!588275 m!4564751))

(declare-fun m!4565817 () Bool)

(assert (=> bs!588275 m!4565817))

(assert (=> bs!588275 m!4564805))

(assert (=> b!3987718 d!1180331))

(declare-fun d!1180333 () Bool)

(assert (=> d!1180333 (= (apply!9959 (transformation!6748 (rule!9762 (_1!24064 (v!39515 lt!1404551)))) (seqFromList!4987 lt!1404530)) (dynLambda!18125 (toValue!9236 (transformation!6748 (rule!9762 (_1!24064 (v!39515 lt!1404551))))) (seqFromList!4987 lt!1404530)))))

(declare-fun b_lambda!116453 () Bool)

(assert (=> (not b_lambda!116453) (not d!1180333)))

(declare-fun t!331661 () Bool)

(declare-fun tb!240141 () Bool)

(assert (=> (and b!3987741 (= (toValue!9236 (transformation!6748 (h!48076 rules!2999))) (toValue!9236 (transformation!6748 (rule!9762 (_1!24064 (v!39515 lt!1404551)))))) t!331661) tb!240141))

(declare-fun result!290956 () Bool)

(assert (=> tb!240141 (= result!290956 (inv!21 (dynLambda!18125 (toValue!9236 (transformation!6748 (rule!9762 (_1!24064 (v!39515 lt!1404551))))) (seqFromList!4987 lt!1404530))))))

(declare-fun m!4565819 () Bool)

(assert (=> tb!240141 m!4565819))

(assert (=> d!1180333 t!331661))

(declare-fun b_and!306475 () Bool)

(assert (= b_and!306467 (and (=> t!331661 result!290956) b_and!306475)))

(declare-fun tb!240143 () Bool)

(declare-fun t!331663 () Bool)

(assert (=> (and b!3987707 (= (toValue!9236 (transformation!6748 (rule!9762 token!484))) (toValue!9236 (transformation!6748 (rule!9762 (_1!24064 (v!39515 lt!1404551)))))) t!331663) tb!240143))

(declare-fun result!290958 () Bool)

(assert (= result!290958 result!290956))

(assert (=> d!1180333 t!331663))

(declare-fun b_and!306477 () Bool)

(assert (= b_and!306469 (and (=> t!331663 result!290958) b_and!306477)))

(assert (=> d!1180333 m!4564649))

(declare-fun m!4565821 () Bool)

(assert (=> d!1180333 m!4565821))

(assert (=> b!3987738 d!1180333))

(declare-fun d!1180335 () Bool)

(declare-fun res!1618139 () Bool)

(declare-fun e!2472257 () Bool)

(assert (=> d!1180335 (=> (not res!1618139) (not e!2472257))))

(assert (=> d!1180335 (= res!1618139 (validRegex!5285 (regex!6748 (rule!9762 (_1!24064 (v!39515 lt!1404551))))))))

(assert (=> d!1180335 (= (ruleValid!2680 thiss!21717 (rule!9762 (_1!24064 (v!39515 lt!1404551)))) e!2472257)))

(declare-fun b!3988417 () Bool)

(declare-fun res!1618140 () Bool)

(assert (=> b!3988417 (=> (not res!1618140) (not e!2472257))))

(assert (=> b!3988417 (= res!1618140 (not (nullable!4085 (regex!6748 (rule!9762 (_1!24064 (v!39515 lt!1404551)))))))))

(declare-fun b!3988418 () Bool)

(assert (=> b!3988418 (= e!2472257 (not (= (tag!7608 (rule!9762 (_1!24064 (v!39515 lt!1404551)))) (String!48609 ""))))))

(assert (= (and d!1180335 res!1618139) b!3988417))

(assert (= (and b!3988417 res!1618140) b!3988418))

(assert (=> d!1180335 m!4565447))

(assert (=> b!3988417 m!4565445))

(assert (=> b!3987738 d!1180335))

(declare-fun d!1180337 () Bool)

(assert (=> d!1180337 (isPrefix!3835 lt!1404530 (++!11150 lt!1404530 newSuffixResult!27))))

(declare-fun lt!1404837 () Unit!61376)

(assert (=> d!1180337 (= lt!1404837 (choose!23960 lt!1404530 newSuffixResult!27))))

(assert (=> d!1180337 (= (lemmaConcatTwoListThenFirstIsPrefix!2678 lt!1404530 newSuffixResult!27) lt!1404837)))

(declare-fun bs!588276 () Bool)

(assert (= bs!588276 d!1180337))

(assert (=> bs!588276 m!4564643))

(assert (=> bs!588276 m!4564643))

(assert (=> bs!588276 m!4564665))

(declare-fun m!4565823 () Bool)

(assert (=> bs!588276 m!4565823))

(assert (=> b!3987738 d!1180337))

(declare-fun d!1180339 () Bool)

(assert (=> d!1180339 (= (size!31902 token!484) (size!31903 (originalCharacters!7348 token!484)))))

(declare-fun Unit!61388 () Unit!61376)

(assert (=> d!1180339 (= (lemmaCharactersSize!1343 token!484) Unit!61388)))

(declare-fun bs!588277 () Bool)

(assert (= bs!588277 d!1180339))

(assert (=> bs!588277 m!4564725))

(assert (=> b!3987738 d!1180339))

(declare-fun d!1180341 () Bool)

(declare-fun lt!1404838 () Int)

(assert (=> d!1180341 (>= lt!1404838 0)))

(declare-fun e!2472258 () Int)

(assert (=> d!1180341 (= lt!1404838 e!2472258)))

(declare-fun c!690415 () Bool)

(assert (=> d!1180341 (= c!690415 ((_ is Nil!42654) lt!1404530))))

(assert (=> d!1180341 (= (size!31903 lt!1404530) lt!1404838)))

(declare-fun b!3988419 () Bool)

(assert (=> b!3988419 (= e!2472258 0)))

(declare-fun b!3988420 () Bool)

(assert (=> b!3988420 (= e!2472258 (+ 1 (size!31903 (t!331625 lt!1404530))))))

(assert (= (and d!1180341 c!690415) b!3988419))

(assert (= (and d!1180341 (not c!690415)) b!3988420))

(declare-fun m!4565825 () Bool)

(assert (=> b!3988420 m!4565825))

(assert (=> b!3987738 d!1180341))

(declare-fun d!1180343 () Bool)

(assert (=> d!1180343 (= (size!31902 (_1!24064 (v!39515 lt!1404551))) (size!31903 (originalCharacters!7348 (_1!24064 (v!39515 lt!1404551)))))))

(declare-fun Unit!61389 () Unit!61376)

(assert (=> d!1180343 (= (lemmaCharactersSize!1343 (_1!24064 (v!39515 lt!1404551))) Unit!61389)))

(declare-fun bs!588278 () Bool)

(assert (= bs!588278 d!1180343))

(declare-fun m!4565827 () Bool)

(assert (=> bs!588278 m!4565827))

(assert (=> b!3987738 d!1180343))

(declare-fun d!1180345 () Bool)

(assert (=> d!1180345 (= (seqFromList!4987 lt!1404530) (fromListB!2288 lt!1404530))))

(declare-fun bs!588279 () Bool)

(assert (= bs!588279 d!1180345))

(declare-fun m!4565829 () Bool)

(assert (=> bs!588279 m!4565829))

(assert (=> b!3987738 d!1180345))

(declare-fun d!1180347 () Bool)

(declare-fun e!2472259 () Bool)

(assert (=> d!1180347 e!2472259))

(declare-fun res!1618141 () Bool)

(assert (=> d!1180347 (=> (not res!1618141) (not e!2472259))))

(assert (=> d!1180347 (= res!1618141 (semiInverseModEq!2893 (toChars!9095 (transformation!6748 (rule!9762 (_1!24064 (v!39515 lt!1404551))))) (toValue!9236 (transformation!6748 (rule!9762 (_1!24064 (v!39515 lt!1404551)))))))))

(declare-fun Unit!61390 () Unit!61376)

(assert (=> d!1180347 (= (lemmaInv!963 (transformation!6748 (rule!9762 (_1!24064 (v!39515 lt!1404551))))) Unit!61390)))

(declare-fun b!3988421 () Bool)

(assert (=> b!3988421 (= e!2472259 (equivClasses!2792 (toChars!9095 (transformation!6748 (rule!9762 (_1!24064 (v!39515 lt!1404551))))) (toValue!9236 (transformation!6748 (rule!9762 (_1!24064 (v!39515 lt!1404551)))))))))

(assert (= (and d!1180347 res!1618141) b!3988421))

(declare-fun m!4565831 () Bool)

(assert (=> d!1180347 m!4565831))

(declare-fun m!4565833 () Bool)

(assert (=> b!3988421 m!4565833))

(assert (=> b!3987738 d!1180347))

(declare-fun d!1180349 () Bool)

(assert (=> d!1180349 (ruleValid!2680 thiss!21717 (rule!9762 (_1!24064 (v!39515 lt!1404551))))))

(declare-fun lt!1404839 () Unit!61376)

(assert (=> d!1180349 (= lt!1404839 (choose!23970 thiss!21717 (rule!9762 (_1!24064 (v!39515 lt!1404551))) rules!2999))))

(assert (=> d!1180349 (contains!8489 rules!2999 (rule!9762 (_1!24064 (v!39515 lt!1404551))))))

(assert (=> d!1180349 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1754 thiss!21717 (rule!9762 (_1!24064 (v!39515 lt!1404551))) rules!2999) lt!1404839)))

(declare-fun bs!588280 () Bool)

(assert (= bs!588280 d!1180349))

(assert (=> bs!588280 m!4564641))

(declare-fun m!4565835 () Bool)

(assert (=> bs!588280 m!4565835))

(declare-fun m!4565837 () Bool)

(assert (=> bs!588280 m!4565837))

(assert (=> b!3987738 d!1180349))

(declare-fun b!3988424 () Bool)

(declare-fun e!2472261 () Bool)

(assert (=> b!3988424 (= e!2472261 (isPrefix!3835 (tail!6219 lt!1404530) (tail!6219 lt!1404527)))))

(declare-fun b!3988423 () Bool)

(declare-fun res!1618144 () Bool)

(assert (=> b!3988423 (=> (not res!1618144) (not e!2472261))))

(assert (=> b!3988423 (= res!1618144 (= (head!8487 lt!1404530) (head!8487 lt!1404527)))))

(declare-fun b!3988422 () Bool)

(declare-fun e!2472260 () Bool)

(assert (=> b!3988422 (= e!2472260 e!2472261)))

(declare-fun res!1618143 () Bool)

(assert (=> b!3988422 (=> (not res!1618143) (not e!2472261))))

(assert (=> b!3988422 (= res!1618143 (not ((_ is Nil!42654) lt!1404527)))))

(declare-fun b!3988425 () Bool)

(declare-fun e!2472262 () Bool)

(assert (=> b!3988425 (= e!2472262 (>= (size!31903 lt!1404527) (size!31903 lt!1404530)))))

(declare-fun d!1180351 () Bool)

(assert (=> d!1180351 e!2472262))

(declare-fun res!1618145 () Bool)

(assert (=> d!1180351 (=> res!1618145 e!2472262)))

(declare-fun lt!1404840 () Bool)

(assert (=> d!1180351 (= res!1618145 (not lt!1404840))))

(assert (=> d!1180351 (= lt!1404840 e!2472260)))

(declare-fun res!1618142 () Bool)

(assert (=> d!1180351 (=> res!1618142 e!2472260)))

(assert (=> d!1180351 (= res!1618142 ((_ is Nil!42654) lt!1404530))))

(assert (=> d!1180351 (= (isPrefix!3835 lt!1404530 lt!1404527) lt!1404840)))

(assert (= (and d!1180351 (not res!1618142)) b!3988422))

(assert (= (and b!3988422 res!1618143) b!3988423))

(assert (= (and b!3988423 res!1618144) b!3988424))

(assert (= (and d!1180351 (not res!1618145)) b!3988425))

(assert (=> b!3988424 m!4565047))

(declare-fun m!4565839 () Bool)

(assert (=> b!3988424 m!4565839))

(assert (=> b!3988424 m!4565047))

(assert (=> b!3988424 m!4565839))

(declare-fun m!4565841 () Bool)

(assert (=> b!3988424 m!4565841))

(assert (=> b!3988423 m!4565053))

(declare-fun m!4565843 () Bool)

(assert (=> b!3988423 m!4565843))

(declare-fun m!4565845 () Bool)

(assert (=> b!3988425 m!4565845))

(assert (=> b!3988425 m!4564647))

(assert (=> b!3987738 d!1180351))

(declare-fun d!1180353 () Bool)

(assert (=> d!1180353 (isPrefix!3835 lt!1404530 (++!11150 lt!1404530 (_2!24064 (v!39515 lt!1404551))))))

(declare-fun lt!1404841 () Unit!61376)

(assert (=> d!1180353 (= lt!1404841 (choose!23960 lt!1404530 (_2!24064 (v!39515 lt!1404551))))))

(assert (=> d!1180353 (= (lemmaConcatTwoListThenFirstIsPrefix!2678 lt!1404530 (_2!24064 (v!39515 lt!1404551))) lt!1404841)))

(declare-fun bs!588281 () Bool)

(assert (= bs!588281 d!1180353))

(assert (=> bs!588281 m!4564637))

(assert (=> bs!588281 m!4564637))

(declare-fun m!4565847 () Bool)

(assert (=> bs!588281 m!4565847))

(declare-fun m!4565849 () Bool)

(assert (=> bs!588281 m!4565849))

(assert (=> b!3987738 d!1180353))

(declare-fun d!1180355 () Bool)

(assert (=> d!1180355 (= (list!15834 (charsOf!4564 (_1!24064 (v!39515 lt!1404551)))) (list!15835 (c!690308 (charsOf!4564 (_1!24064 (v!39515 lt!1404551))))))))

(declare-fun bs!588282 () Bool)

(assert (= bs!588282 d!1180355))

(declare-fun m!4565851 () Bool)

(assert (=> bs!588282 m!4565851))

(assert (=> b!3987738 d!1180355))

(declare-fun b!3988427 () Bool)

(declare-fun e!2472264 () List!42778)

(assert (=> b!3988427 (= e!2472264 (Cons!42654 (h!48074 lt!1404530) (++!11150 (t!331625 lt!1404530) (_2!24064 (v!39515 lt!1404551)))))))

(declare-fun b!3988428 () Bool)

(declare-fun res!1618147 () Bool)

(declare-fun e!2472263 () Bool)

(assert (=> b!3988428 (=> (not res!1618147) (not e!2472263))))

(declare-fun lt!1404842 () List!42778)

(assert (=> b!3988428 (= res!1618147 (= (size!31903 lt!1404842) (+ (size!31903 lt!1404530) (size!31903 (_2!24064 (v!39515 lt!1404551))))))))

(declare-fun b!3988426 () Bool)

(assert (=> b!3988426 (= e!2472264 (_2!24064 (v!39515 lt!1404551)))))

(declare-fun d!1180357 () Bool)

(assert (=> d!1180357 e!2472263))

(declare-fun res!1618146 () Bool)

(assert (=> d!1180357 (=> (not res!1618146) (not e!2472263))))

(assert (=> d!1180357 (= res!1618146 (= (content!6467 lt!1404842) ((_ map or) (content!6467 lt!1404530) (content!6467 (_2!24064 (v!39515 lt!1404551))))))))

(assert (=> d!1180357 (= lt!1404842 e!2472264)))

(declare-fun c!690416 () Bool)

(assert (=> d!1180357 (= c!690416 ((_ is Nil!42654) lt!1404530))))

(assert (=> d!1180357 (= (++!11150 lt!1404530 (_2!24064 (v!39515 lt!1404551))) lt!1404842)))

(declare-fun b!3988429 () Bool)

(assert (=> b!3988429 (= e!2472263 (or (not (= (_2!24064 (v!39515 lt!1404551)) Nil!42654)) (= lt!1404842 lt!1404530)))))

(assert (= (and d!1180357 c!690416) b!3988426))

(assert (= (and d!1180357 (not c!690416)) b!3988427))

(assert (= (and d!1180357 res!1618146) b!3988428))

(assert (= (and b!3988428 res!1618147) b!3988429))

(declare-fun m!4565853 () Bool)

(assert (=> b!3988427 m!4565853))

(declare-fun m!4565855 () Bool)

(assert (=> b!3988428 m!4565855))

(assert (=> b!3988428 m!4564647))

(declare-fun m!4565857 () Bool)

(assert (=> b!3988428 m!4565857))

(declare-fun m!4565859 () Bool)

(assert (=> d!1180357 m!4565859))

(assert (=> d!1180357 m!4565789))

(declare-fun m!4565861 () Bool)

(assert (=> d!1180357 m!4565861))

(assert (=> b!3987738 d!1180357))

(declare-fun d!1180359 () Bool)

(declare-fun lt!1404843 () BalanceConc!25512)

(assert (=> d!1180359 (= (list!15834 lt!1404843) (originalCharacters!7348 (_1!24064 (v!39515 lt!1404551))))))

(assert (=> d!1180359 (= lt!1404843 (dynLambda!18124 (toChars!9095 (transformation!6748 (rule!9762 (_1!24064 (v!39515 lt!1404551))))) (value!212952 (_1!24064 (v!39515 lt!1404551)))))))

(assert (=> d!1180359 (= (charsOf!4564 (_1!24064 (v!39515 lt!1404551))) lt!1404843)))

(declare-fun b_lambda!116455 () Bool)

(assert (=> (not b_lambda!116455) (not d!1180359)))

(declare-fun tb!240145 () Bool)

(declare-fun t!331665 () Bool)

(assert (=> (and b!3987741 (= (toChars!9095 (transformation!6748 (h!48076 rules!2999))) (toChars!9095 (transformation!6748 (rule!9762 (_1!24064 (v!39515 lt!1404551)))))) t!331665) tb!240145))

(declare-fun b!3988430 () Bool)

(declare-fun e!2472265 () Bool)

(declare-fun tp!1215116 () Bool)

(assert (=> b!3988430 (= e!2472265 (and (inv!56977 (c!690308 (dynLambda!18124 (toChars!9095 (transformation!6748 (rule!9762 (_1!24064 (v!39515 lt!1404551))))) (value!212952 (_1!24064 (v!39515 lt!1404551)))))) tp!1215116))))

(declare-fun result!290960 () Bool)

(assert (=> tb!240145 (= result!290960 (and (inv!56978 (dynLambda!18124 (toChars!9095 (transformation!6748 (rule!9762 (_1!24064 (v!39515 lt!1404551))))) (value!212952 (_1!24064 (v!39515 lt!1404551))))) e!2472265))))

(assert (= tb!240145 b!3988430))

(declare-fun m!4565863 () Bool)

(assert (=> b!3988430 m!4565863))

(declare-fun m!4565865 () Bool)

(assert (=> tb!240145 m!4565865))

(assert (=> d!1180359 t!331665))

(declare-fun b_and!306479 () Bool)

(assert (= b_and!306471 (and (=> t!331665 result!290960) b_and!306479)))

(declare-fun tb!240147 () Bool)

(declare-fun t!331667 () Bool)

(assert (=> (and b!3987707 (= (toChars!9095 (transformation!6748 (rule!9762 token!484))) (toChars!9095 (transformation!6748 (rule!9762 (_1!24064 (v!39515 lt!1404551)))))) t!331667) tb!240147))

(declare-fun result!290962 () Bool)

(assert (= result!290962 result!290960))

(assert (=> d!1180359 t!331667))

(declare-fun b_and!306481 () Bool)

(assert (= b_and!306473 (and (=> t!331667 result!290962) b_and!306481)))

(declare-fun m!4565867 () Bool)

(assert (=> d!1180359 m!4565867))

(declare-fun m!4565869 () Bool)

(assert (=> d!1180359 m!4565869))

(assert (=> b!3987738 d!1180359))

(declare-fun b!3988433 () Bool)

(declare-fun e!2472267 () Bool)

(assert (=> b!3988433 (= e!2472267 (isPrefix!3835 (tail!6219 lt!1404530) (tail!6219 (++!11150 lt!1404530 newSuffixResult!27))))))

(declare-fun b!3988432 () Bool)

(declare-fun res!1618150 () Bool)

(assert (=> b!3988432 (=> (not res!1618150) (not e!2472267))))

(assert (=> b!3988432 (= res!1618150 (= (head!8487 lt!1404530) (head!8487 (++!11150 lt!1404530 newSuffixResult!27))))))

(declare-fun b!3988431 () Bool)

(declare-fun e!2472266 () Bool)

(assert (=> b!3988431 (= e!2472266 e!2472267)))

(declare-fun res!1618149 () Bool)

(assert (=> b!3988431 (=> (not res!1618149) (not e!2472267))))

(assert (=> b!3988431 (= res!1618149 (not ((_ is Nil!42654) (++!11150 lt!1404530 newSuffixResult!27))))))

(declare-fun b!3988434 () Bool)

(declare-fun e!2472268 () Bool)

(assert (=> b!3988434 (= e!2472268 (>= (size!31903 (++!11150 lt!1404530 newSuffixResult!27)) (size!31903 lt!1404530)))))

(declare-fun d!1180361 () Bool)

(assert (=> d!1180361 e!2472268))

(declare-fun res!1618151 () Bool)

(assert (=> d!1180361 (=> res!1618151 e!2472268)))

(declare-fun lt!1404844 () Bool)

(assert (=> d!1180361 (= res!1618151 (not lt!1404844))))

(assert (=> d!1180361 (= lt!1404844 e!2472266)))

(declare-fun res!1618148 () Bool)

(assert (=> d!1180361 (=> res!1618148 e!2472266)))

(assert (=> d!1180361 (= res!1618148 ((_ is Nil!42654) lt!1404530))))

(assert (=> d!1180361 (= (isPrefix!3835 lt!1404530 (++!11150 lt!1404530 newSuffixResult!27)) lt!1404844)))

(assert (= (and d!1180361 (not res!1618148)) b!3988431))

(assert (= (and b!3988431 res!1618149) b!3988432))

(assert (= (and b!3988432 res!1618150) b!3988433))

(assert (= (and d!1180361 (not res!1618151)) b!3988434))

(assert (=> b!3988433 m!4565047))

(assert (=> b!3988433 m!4564643))

(declare-fun m!4565871 () Bool)

(assert (=> b!3988433 m!4565871))

(assert (=> b!3988433 m!4565047))

(assert (=> b!3988433 m!4565871))

(declare-fun m!4565873 () Bool)

(assert (=> b!3988433 m!4565873))

(assert (=> b!3988432 m!4565053))

(assert (=> b!3988432 m!4564643))

(declare-fun m!4565875 () Bool)

(assert (=> b!3988432 m!4565875))

(assert (=> b!3988434 m!4564643))

(declare-fun m!4565877 () Bool)

(assert (=> b!3988434 m!4565877))

(assert (=> b!3988434 m!4564647))

(assert (=> b!3987738 d!1180361))

(declare-fun b!3988436 () Bool)

(declare-fun e!2472270 () List!42778)

(assert (=> b!3988436 (= e!2472270 (Cons!42654 (h!48074 lt!1404530) (++!11150 (t!331625 lt!1404530) newSuffixResult!27)))))

(declare-fun b!3988437 () Bool)

(declare-fun res!1618153 () Bool)

(declare-fun e!2472269 () Bool)

(assert (=> b!3988437 (=> (not res!1618153) (not e!2472269))))

(declare-fun lt!1404845 () List!42778)

(assert (=> b!3988437 (= res!1618153 (= (size!31903 lt!1404845) (+ (size!31903 lt!1404530) (size!31903 newSuffixResult!27))))))

(declare-fun b!3988435 () Bool)

(assert (=> b!3988435 (= e!2472270 newSuffixResult!27)))

(declare-fun d!1180363 () Bool)

(assert (=> d!1180363 e!2472269))

(declare-fun res!1618152 () Bool)

(assert (=> d!1180363 (=> (not res!1618152) (not e!2472269))))

(assert (=> d!1180363 (= res!1618152 (= (content!6467 lt!1404845) ((_ map or) (content!6467 lt!1404530) (content!6467 newSuffixResult!27))))))

(assert (=> d!1180363 (= lt!1404845 e!2472270)))

(declare-fun c!690417 () Bool)

(assert (=> d!1180363 (= c!690417 ((_ is Nil!42654) lt!1404530))))

(assert (=> d!1180363 (= (++!11150 lt!1404530 newSuffixResult!27) lt!1404845)))

(declare-fun b!3988438 () Bool)

(assert (=> b!3988438 (= e!2472269 (or (not (= newSuffixResult!27 Nil!42654)) (= lt!1404845 lt!1404530)))))

(assert (= (and d!1180363 c!690417) b!3988435))

(assert (= (and d!1180363 (not c!690417)) b!3988436))

(assert (= (and d!1180363 res!1618152) b!3988437))

(assert (= (and b!3988437 res!1618153) b!3988438))

(declare-fun m!4565879 () Bool)

(assert (=> b!3988436 m!4565879))

(declare-fun m!4565881 () Bool)

(assert (=> b!3988437 m!4565881))

(assert (=> b!3988437 m!4564647))

(assert (=> b!3988437 m!4565751))

(declare-fun m!4565883 () Bool)

(assert (=> d!1180363 m!4565883))

(assert (=> d!1180363 m!4565789))

(assert (=> d!1180363 m!4565755))

(assert (=> b!3987738 d!1180363))

(declare-fun b!3988439 () Bool)

(declare-fun res!1618156 () Bool)

(declare-fun e!2472272 () Bool)

(assert (=> b!3988439 (=> (not res!1618156) (not e!2472272))))

(declare-fun lt!1404847 () Option!9162)

(assert (=> b!3988439 (= res!1618156 (= (value!212952 (_1!24064 (get!14036 lt!1404847))) (apply!9959 (transformation!6748 (rule!9762 (_1!24064 (get!14036 lt!1404847)))) (seqFromList!4987 (originalCharacters!7348 (_1!24064 (get!14036 lt!1404847)))))))))

(declare-fun d!1180365 () Bool)

(declare-fun e!2472271 () Bool)

(assert (=> d!1180365 e!2472271))

(declare-fun res!1618158 () Bool)

(assert (=> d!1180365 (=> res!1618158 e!2472271)))

(assert (=> d!1180365 (= res!1618158 (isEmpty!25496 lt!1404847))))

(declare-fun e!2472273 () Option!9162)

(assert (=> d!1180365 (= lt!1404847 e!2472273)))

(declare-fun c!690418 () Bool)

(declare-fun lt!1404848 () tuple2!41864)

(assert (=> d!1180365 (= c!690418 (isEmpty!25494 (_1!24066 lt!1404848)))))

(assert (=> d!1180365 (= lt!1404848 (findLongestMatch!1243 (regex!6748 (rule!9762 (_1!24064 (v!39515 lt!1404551)))) lt!1404513))))

(assert (=> d!1180365 (ruleValid!2680 thiss!21717 (rule!9762 (_1!24064 (v!39515 lt!1404551))))))

(assert (=> d!1180365 (= (maxPrefixOneRule!2669 thiss!21717 (rule!9762 (_1!24064 (v!39515 lt!1404551))) lt!1404513) lt!1404847)))

(declare-fun b!3988440 () Bool)

(assert (=> b!3988440 (= e!2472273 (Some!9161 (tuple2!41861 (Token!12635 (apply!9959 (transformation!6748 (rule!9762 (_1!24064 (v!39515 lt!1404551)))) (seqFromList!4987 (_1!24066 lt!1404848))) (rule!9762 (_1!24064 (v!39515 lt!1404551))) (size!31905 (seqFromList!4987 (_1!24066 lt!1404848))) (_1!24066 lt!1404848)) (_2!24066 lt!1404848))))))

(declare-fun lt!1404850 () Unit!61376)

(assert (=> b!3988440 (= lt!1404850 (longestMatchIsAcceptedByMatchOrIsEmpty!1303 (regex!6748 (rule!9762 (_1!24064 (v!39515 lt!1404551)))) lt!1404513))))

(declare-fun res!1618157 () Bool)

(assert (=> b!3988440 (= res!1618157 (isEmpty!25494 (_1!24066 (findLongestMatchInner!1330 (regex!6748 (rule!9762 (_1!24064 (v!39515 lt!1404551)))) Nil!42654 (size!31903 Nil!42654) lt!1404513 lt!1404513 (size!31903 lt!1404513)))))))

(declare-fun e!2472274 () Bool)

(assert (=> b!3988440 (=> res!1618157 e!2472274)))

(assert (=> b!3988440 e!2472274))

(declare-fun lt!1404849 () Unit!61376)

(assert (=> b!3988440 (= lt!1404849 lt!1404850)))

(declare-fun lt!1404846 () Unit!61376)

(assert (=> b!3988440 (= lt!1404846 (lemmaSemiInverse!1846 (transformation!6748 (rule!9762 (_1!24064 (v!39515 lt!1404551)))) (seqFromList!4987 (_1!24066 lt!1404848))))))

(declare-fun b!3988441 () Bool)

(declare-fun res!1618154 () Bool)

(assert (=> b!3988441 (=> (not res!1618154) (not e!2472272))))

(assert (=> b!3988441 (= res!1618154 (< (size!31903 (_2!24064 (get!14036 lt!1404847))) (size!31903 lt!1404513)))))

(declare-fun b!3988442 () Bool)

(declare-fun res!1618160 () Bool)

(assert (=> b!3988442 (=> (not res!1618160) (not e!2472272))))

(assert (=> b!3988442 (= res!1618160 (= (++!11150 (list!15834 (charsOf!4564 (_1!24064 (get!14036 lt!1404847)))) (_2!24064 (get!14036 lt!1404847))) lt!1404513))))

(declare-fun b!3988443 () Bool)

(assert (=> b!3988443 (= e!2472274 (matchR!5630 (regex!6748 (rule!9762 (_1!24064 (v!39515 lt!1404551)))) (_1!24066 (findLongestMatchInner!1330 (regex!6748 (rule!9762 (_1!24064 (v!39515 lt!1404551)))) Nil!42654 (size!31903 Nil!42654) lt!1404513 lt!1404513 (size!31903 lt!1404513)))))))

(declare-fun b!3988444 () Bool)

(assert (=> b!3988444 (= e!2472272 (= (size!31902 (_1!24064 (get!14036 lt!1404847))) (size!31903 (originalCharacters!7348 (_1!24064 (get!14036 lt!1404847))))))))

(declare-fun b!3988445 () Bool)

(assert (=> b!3988445 (= e!2472273 None!9161)))

(declare-fun b!3988446 () Bool)

(assert (=> b!3988446 (= e!2472271 e!2472272)))

(declare-fun res!1618155 () Bool)

(assert (=> b!3988446 (=> (not res!1618155) (not e!2472272))))

(assert (=> b!3988446 (= res!1618155 (matchR!5630 (regex!6748 (rule!9762 (_1!24064 (v!39515 lt!1404551)))) (list!15834 (charsOf!4564 (_1!24064 (get!14036 lt!1404847))))))))

(declare-fun b!3988447 () Bool)

(declare-fun res!1618159 () Bool)

(assert (=> b!3988447 (=> (not res!1618159) (not e!2472272))))

(assert (=> b!3988447 (= res!1618159 (= (rule!9762 (_1!24064 (get!14036 lt!1404847))) (rule!9762 (_1!24064 (v!39515 lt!1404551)))))))

(assert (= (and d!1180365 c!690418) b!3988445))

(assert (= (and d!1180365 (not c!690418)) b!3988440))

(assert (= (and b!3988440 (not res!1618157)) b!3988443))

(assert (= (and d!1180365 (not res!1618158)) b!3988446))

(assert (= (and b!3988446 res!1618155) b!3988442))

(assert (= (and b!3988442 res!1618160) b!3988441))

(assert (= (and b!3988441 res!1618154) b!3988447))

(assert (= (and b!3988447 res!1618159) b!3988439))

(assert (= (and b!3988439 res!1618156) b!3988444))

(assert (=> b!3988443 m!4565663))

(assert (=> b!3988443 m!4565011))

(assert (=> b!3988443 m!4565663))

(assert (=> b!3988443 m!4565011))

(declare-fun m!4565885 () Bool)

(assert (=> b!3988443 m!4565885))

(declare-fun m!4565887 () Bool)

(assert (=> b!3988443 m!4565887))

(declare-fun m!4565889 () Bool)

(assert (=> b!3988439 m!4565889))

(declare-fun m!4565891 () Bool)

(assert (=> b!3988439 m!4565891))

(assert (=> b!3988439 m!4565891))

(declare-fun m!4565893 () Bool)

(assert (=> b!3988439 m!4565893))

(assert (=> b!3988446 m!4565889))

(declare-fun m!4565895 () Bool)

(assert (=> b!3988446 m!4565895))

(assert (=> b!3988446 m!4565895))

(declare-fun m!4565897 () Bool)

(assert (=> b!3988446 m!4565897))

(assert (=> b!3988446 m!4565897))

(declare-fun m!4565899 () Bool)

(assert (=> b!3988446 m!4565899))

(declare-fun m!4565901 () Bool)

(assert (=> b!3988440 m!4565901))

(assert (=> b!3988440 m!4565901))

(declare-fun m!4565903 () Bool)

(assert (=> b!3988440 m!4565903))

(assert (=> b!3988440 m!4565901))

(declare-fun m!4565905 () Bool)

(assert (=> b!3988440 m!4565905))

(assert (=> b!3988440 m!4565901))

(declare-fun m!4565907 () Bool)

(assert (=> b!3988440 m!4565907))

(assert (=> b!3988440 m!4565011))

(assert (=> b!3988440 m!4565663))

(assert (=> b!3988440 m!4565011))

(assert (=> b!3988440 m!4565885))

(assert (=> b!3988440 m!4565663))

(declare-fun m!4565909 () Bool)

(assert (=> b!3988440 m!4565909))

(declare-fun m!4565911 () Bool)

(assert (=> b!3988440 m!4565911))

(assert (=> b!3988447 m!4565889))

(assert (=> b!3988442 m!4565889))

(assert (=> b!3988442 m!4565895))

(assert (=> b!3988442 m!4565895))

(assert (=> b!3988442 m!4565897))

(assert (=> b!3988442 m!4565897))

(declare-fun m!4565913 () Bool)

(assert (=> b!3988442 m!4565913))

(declare-fun m!4565915 () Bool)

(assert (=> d!1180365 m!4565915))

(declare-fun m!4565917 () Bool)

(assert (=> d!1180365 m!4565917))

(declare-fun m!4565919 () Bool)

(assert (=> d!1180365 m!4565919))

(assert (=> d!1180365 m!4564641))

(assert (=> b!3988441 m!4565889))

(declare-fun m!4565921 () Bool)

(assert (=> b!3988441 m!4565921))

(assert (=> b!3988441 m!4565011))

(assert (=> b!3988444 m!4565889))

(declare-fun m!4565923 () Bool)

(assert (=> b!3988444 m!4565923))

(assert (=> b!3987738 d!1180365))

(declare-fun d!1180367 () Bool)

(assert (=> d!1180367 (= (maxPrefixOneRule!2669 thiss!21717 (rule!9762 (_1!24064 (v!39515 lt!1404551))) lt!1404513) (Some!9161 (tuple2!41861 (Token!12635 (apply!9959 (transformation!6748 (rule!9762 (_1!24064 (v!39515 lt!1404551)))) (seqFromList!4987 lt!1404530)) (rule!9762 (_1!24064 (v!39515 lt!1404551))) (size!31903 lt!1404530) lt!1404530) (_2!24064 (v!39515 lt!1404551)))))))

(declare-fun lt!1404851 () Unit!61376)

(assert (=> d!1180367 (= lt!1404851 (choose!23967 thiss!21717 rules!2999 lt!1404530 lt!1404513 (_2!24064 (v!39515 lt!1404551)) (rule!9762 (_1!24064 (v!39515 lt!1404551)))))))

(assert (=> d!1180367 (not (isEmpty!25492 rules!2999))))

(assert (=> d!1180367 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1491 thiss!21717 rules!2999 lt!1404530 lt!1404513 (_2!24064 (v!39515 lt!1404551)) (rule!9762 (_1!24064 (v!39515 lt!1404551)))) lt!1404851)))

(declare-fun bs!588283 () Bool)

(assert (= bs!588283 d!1180367))

(assert (=> bs!588283 m!4564659))

(declare-fun m!4565925 () Bool)

(assert (=> bs!588283 m!4565925))

(assert (=> bs!588283 m!4564647))

(assert (=> bs!588283 m!4564649))

(assert (=> bs!588283 m!4564651))

(assert (=> bs!588283 m!4564731))

(assert (=> bs!588283 m!4564649))

(assert (=> b!3987738 d!1180367))

(declare-fun d!1180369 () Bool)

(assert (=> d!1180369 (= (inv!56970 (tag!7608 (rule!9762 token!484))) (= (mod (str.len (value!212951 (tag!7608 (rule!9762 token!484)))) 2) 0))))

(assert (=> b!3987717 d!1180369))

(declare-fun d!1180371 () Bool)

(declare-fun res!1618161 () Bool)

(declare-fun e!2472275 () Bool)

(assert (=> d!1180371 (=> (not res!1618161) (not e!2472275))))

(assert (=> d!1180371 (= res!1618161 (semiInverseModEq!2893 (toChars!9095 (transformation!6748 (rule!9762 token!484))) (toValue!9236 (transformation!6748 (rule!9762 token!484)))))))

(assert (=> d!1180371 (= (inv!56973 (transformation!6748 (rule!9762 token!484))) e!2472275)))

(declare-fun b!3988448 () Bool)

(assert (=> b!3988448 (= e!2472275 (equivClasses!2792 (toChars!9095 (transformation!6748 (rule!9762 token!484))) (toValue!9236 (transformation!6748 (rule!9762 token!484)))))))

(assert (= (and d!1180371 res!1618161) b!3988448))

(assert (=> d!1180371 m!4565807))

(assert (=> b!3988448 m!4565809))

(assert (=> b!3987717 d!1180371))

(declare-fun b!3988450 () Bool)

(declare-fun e!2472277 () List!42778)

(assert (=> b!3988450 (= e!2472277 (Cons!42654 (h!48074 lt!1404540) (++!11150 (t!331625 lt!1404540) lt!1404523)))))

(declare-fun b!3988451 () Bool)

(declare-fun res!1618163 () Bool)

(declare-fun e!2472276 () Bool)

(assert (=> b!3988451 (=> (not res!1618163) (not e!2472276))))

(declare-fun lt!1404852 () List!42778)

(assert (=> b!3988451 (= res!1618163 (= (size!31903 lt!1404852) (+ (size!31903 lt!1404540) (size!31903 lt!1404523))))))

(declare-fun b!3988449 () Bool)

(assert (=> b!3988449 (= e!2472277 lt!1404523)))

(declare-fun d!1180373 () Bool)

(assert (=> d!1180373 e!2472276))

(declare-fun res!1618162 () Bool)

(assert (=> d!1180373 (=> (not res!1618162) (not e!2472276))))

(assert (=> d!1180373 (= res!1618162 (= (content!6467 lt!1404852) ((_ map or) (content!6467 lt!1404540) (content!6467 lt!1404523))))))

(assert (=> d!1180373 (= lt!1404852 e!2472277)))

(declare-fun c!690419 () Bool)

(assert (=> d!1180373 (= c!690419 ((_ is Nil!42654) lt!1404540))))

(assert (=> d!1180373 (= (++!11150 lt!1404540 lt!1404523) lt!1404852)))

(declare-fun b!3988452 () Bool)

(assert (=> b!3988452 (= e!2472276 (or (not (= lt!1404523 Nil!42654)) (= lt!1404852 lt!1404540)))))

(assert (= (and d!1180373 c!690419) b!3988449))

(assert (= (and d!1180373 (not c!690419)) b!3988450))

(assert (= (and d!1180373 res!1618162) b!3988451))

(assert (= (and b!3988451 res!1618163) b!3988452))

(declare-fun m!4565927 () Bool)

(assert (=> b!3988450 m!4565927))

(declare-fun m!4565929 () Bool)

(assert (=> b!3988451 m!4565929))

(assert (=> b!3988451 m!4564689))

(declare-fun m!4565931 () Bool)

(assert (=> b!3988451 m!4565931))

(declare-fun m!4565933 () Bool)

(assert (=> d!1180373 m!4565933))

(assert (=> d!1180373 m!4565029))

(declare-fun m!4565935 () Bool)

(assert (=> d!1180373 m!4565935))

(assert (=> b!3987715 d!1180373))

(declare-fun b!3988454 () Bool)

(declare-fun e!2472279 () List!42778)

(assert (=> b!3988454 (= e!2472279 (Cons!42654 (h!48074 lt!1404560) (++!11150 (t!331625 lt!1404560) suffix!1299)))))

(declare-fun b!3988455 () Bool)

(declare-fun res!1618165 () Bool)

(declare-fun e!2472278 () Bool)

(assert (=> b!3988455 (=> (not res!1618165) (not e!2472278))))

(declare-fun lt!1404853 () List!42778)

(assert (=> b!3988455 (= res!1618165 (= (size!31903 lt!1404853) (+ (size!31903 lt!1404560) (size!31903 suffix!1299))))))

(declare-fun b!3988453 () Bool)

(assert (=> b!3988453 (= e!2472279 suffix!1299)))

(declare-fun d!1180375 () Bool)

(assert (=> d!1180375 e!2472278))

(declare-fun res!1618164 () Bool)

(assert (=> d!1180375 (=> (not res!1618164) (not e!2472278))))

(assert (=> d!1180375 (= res!1618164 (= (content!6467 lt!1404853) ((_ map or) (content!6467 lt!1404560) (content!6467 suffix!1299))))))

(assert (=> d!1180375 (= lt!1404853 e!2472279)))

(declare-fun c!690420 () Bool)

(assert (=> d!1180375 (= c!690420 ((_ is Nil!42654) lt!1404560))))

(assert (=> d!1180375 (= (++!11150 lt!1404560 suffix!1299) lt!1404853)))

(declare-fun b!3988456 () Bool)

(assert (=> b!3988456 (= e!2472278 (or (not (= suffix!1299 Nil!42654)) (= lt!1404853 lt!1404560)))))

(assert (= (and d!1180375 c!690420) b!3988453))

(assert (= (and d!1180375 (not c!690420)) b!3988454))

(assert (= (and d!1180375 res!1618164) b!3988455))

(assert (= (and b!3988455 res!1618165) b!3988456))

(declare-fun m!4565937 () Bool)

(assert (=> b!3988454 m!4565937))

(declare-fun m!4565939 () Bool)

(assert (=> b!3988455 m!4565939))

(declare-fun m!4565941 () Bool)

(assert (=> b!3988455 m!4565941))

(assert (=> b!3988455 m!4564721))

(declare-fun m!4565943 () Bool)

(assert (=> d!1180375 m!4565943))

(declare-fun m!4565945 () Bool)

(assert (=> d!1180375 m!4565945))

(declare-fun m!4565947 () Bool)

(assert (=> d!1180375 m!4565947))

(assert (=> b!3987715 d!1180375))

(declare-fun b!3988458 () Bool)

(declare-fun e!2472281 () List!42778)

(assert (=> b!3988458 (= e!2472281 (Cons!42654 (h!48074 lt!1404533) (++!11150 (t!331625 lt!1404533) suffix!1299)))))

(declare-fun b!3988459 () Bool)

(declare-fun res!1618167 () Bool)

(declare-fun e!2472280 () Bool)

(assert (=> b!3988459 (=> (not res!1618167) (not e!2472280))))

(declare-fun lt!1404854 () List!42778)

(assert (=> b!3988459 (= res!1618167 (= (size!31903 lt!1404854) (+ (size!31903 lt!1404533) (size!31903 suffix!1299))))))

(declare-fun b!3988457 () Bool)

(assert (=> b!3988457 (= e!2472281 suffix!1299)))

(declare-fun d!1180377 () Bool)

(assert (=> d!1180377 e!2472280))

(declare-fun res!1618166 () Bool)

(assert (=> d!1180377 (=> (not res!1618166) (not e!2472280))))

(assert (=> d!1180377 (= res!1618166 (= (content!6467 lt!1404854) ((_ map or) (content!6467 lt!1404533) (content!6467 suffix!1299))))))

(assert (=> d!1180377 (= lt!1404854 e!2472281)))

(declare-fun c!690421 () Bool)

(assert (=> d!1180377 (= c!690421 ((_ is Nil!42654) lt!1404533))))

(assert (=> d!1180377 (= (++!11150 lt!1404533 suffix!1299) lt!1404854)))

(declare-fun b!3988460 () Bool)

(assert (=> b!3988460 (= e!2472280 (or (not (= suffix!1299 Nil!42654)) (= lt!1404854 lt!1404533)))))

(assert (= (and d!1180377 c!690421) b!3988457))

(assert (= (and d!1180377 (not c!690421)) b!3988458))

(assert (= (and d!1180377 res!1618166) b!3988459))

(assert (= (and b!3988459 res!1618167) b!3988460))

(declare-fun m!4565949 () Bool)

(assert (=> b!3988458 m!4565949))

(declare-fun m!4565951 () Bool)

(assert (=> b!3988459 m!4565951))

(assert (=> b!3988459 m!4565025))

(assert (=> b!3988459 m!4564721))

(declare-fun m!4565953 () Bool)

(assert (=> d!1180377 m!4565953))

(assert (=> d!1180377 m!4565031))

(assert (=> d!1180377 m!4565947))

(assert (=> b!3987715 d!1180377))

(declare-fun d!1180379 () Bool)

(assert (=> d!1180379 (= (++!11150 (++!11150 lt!1404540 lt!1404533) suffix!1299) (++!11150 lt!1404540 (++!11150 lt!1404533 suffix!1299)))))

(declare-fun lt!1404855 () Unit!61376)

(assert (=> d!1180379 (= lt!1404855 (choose!23969 lt!1404540 lt!1404533 suffix!1299))))

(assert (=> d!1180379 (= (lemmaConcatAssociativity!2470 lt!1404540 lt!1404533 suffix!1299) lt!1404855)))

(declare-fun bs!588284 () Bool)

(assert (= bs!588284 d!1180379))

(declare-fun m!4565955 () Bool)

(assert (=> bs!588284 m!4565955))

(assert (=> bs!588284 m!4564773))

(assert (=> bs!588284 m!4564773))

(declare-fun m!4565957 () Bool)

(assert (=> bs!588284 m!4565957))

(assert (=> bs!588284 m!4564737))

(declare-fun m!4565959 () Bool)

(assert (=> bs!588284 m!4565959))

(assert (=> bs!588284 m!4564737))

(assert (=> b!3987715 d!1180379))

(declare-fun b!3988461 () Bool)

(declare-fun e!2472282 () Bool)

(declare-fun e!2472284 () Bool)

(assert (=> b!3988461 (= e!2472282 e!2472284)))

(declare-fun res!1618169 () Bool)

(assert (=> b!3988461 (=> (not res!1618169) (not e!2472284))))

(declare-fun lt!1404856 () Option!9162)

(assert (=> b!3988461 (= res!1618169 (isDefined!7037 lt!1404856))))

(declare-fun b!3988462 () Bool)

(assert (=> b!3988462 (= e!2472284 (contains!8489 rules!2999 (rule!9762 (_1!24064 (get!14036 lt!1404856)))))))

(declare-fun b!3988463 () Bool)

(declare-fun res!1618172 () Bool)

(assert (=> b!3988463 (=> (not res!1618172) (not e!2472284))))

(assert (=> b!3988463 (= res!1618172 (= (value!212952 (_1!24064 (get!14036 lt!1404856))) (apply!9959 (transformation!6748 (rule!9762 (_1!24064 (get!14036 lt!1404856)))) (seqFromList!4987 (originalCharacters!7348 (_1!24064 (get!14036 lt!1404856)))))))))

(declare-fun b!3988464 () Bool)

(declare-fun res!1618173 () Bool)

(assert (=> b!3988464 (=> (not res!1618173) (not e!2472284))))

(assert (=> b!3988464 (= res!1618173 (< (size!31903 (_2!24064 (get!14036 lt!1404856))) (size!31903 lt!1404544)))))

(declare-fun b!3988465 () Bool)

(declare-fun res!1618170 () Bool)

(assert (=> b!3988465 (=> (not res!1618170) (not e!2472284))))

(assert (=> b!3988465 (= res!1618170 (= (++!11150 (list!15834 (charsOf!4564 (_1!24064 (get!14036 lt!1404856)))) (_2!24064 (get!14036 lt!1404856))) lt!1404544))))

(declare-fun bm!285795 () Bool)

(declare-fun call!285800 () Option!9162)

(assert (=> bm!285795 (= call!285800 (maxPrefixOneRule!2669 thiss!21717 (h!48076 rules!2999) lt!1404544))))

(declare-fun b!3988466 () Bool)

(declare-fun res!1618174 () Bool)

(assert (=> b!3988466 (=> (not res!1618174) (not e!2472284))))

(assert (=> b!3988466 (= res!1618174 (matchR!5630 (regex!6748 (rule!9762 (_1!24064 (get!14036 lt!1404856)))) (list!15834 (charsOf!4564 (_1!24064 (get!14036 lt!1404856))))))))

(declare-fun d!1180381 () Bool)

(assert (=> d!1180381 e!2472282))

(declare-fun res!1618171 () Bool)

(assert (=> d!1180381 (=> res!1618171 e!2472282)))

(assert (=> d!1180381 (= res!1618171 (isEmpty!25496 lt!1404856))))

(declare-fun e!2472283 () Option!9162)

(assert (=> d!1180381 (= lt!1404856 e!2472283)))

(declare-fun c!690422 () Bool)

(assert (=> d!1180381 (= c!690422 (and ((_ is Cons!42656) rules!2999) ((_ is Nil!42656) (t!331627 rules!2999))))))

(declare-fun lt!1404859 () Unit!61376)

(declare-fun lt!1404857 () Unit!61376)

(assert (=> d!1180381 (= lt!1404859 lt!1404857)))

(assert (=> d!1180381 (isPrefix!3835 lt!1404544 lt!1404544)))

(assert (=> d!1180381 (= lt!1404857 (lemmaIsPrefixRefl!2427 lt!1404544 lt!1404544))))

(assert (=> d!1180381 (rulesValidInductive!2450 thiss!21717 rules!2999)))

(assert (=> d!1180381 (= (maxPrefix!3635 thiss!21717 rules!2999 lt!1404544) lt!1404856)))

(declare-fun b!3988467 () Bool)

(declare-fun res!1618168 () Bool)

(assert (=> b!3988467 (=> (not res!1618168) (not e!2472284))))

(assert (=> b!3988467 (= res!1618168 (= (list!15834 (charsOf!4564 (_1!24064 (get!14036 lt!1404856)))) (originalCharacters!7348 (_1!24064 (get!14036 lt!1404856)))))))

(declare-fun b!3988468 () Bool)

(assert (=> b!3988468 (= e!2472283 call!285800)))

(declare-fun b!3988469 () Bool)

(declare-fun lt!1404858 () Option!9162)

(declare-fun lt!1404860 () Option!9162)

(assert (=> b!3988469 (= e!2472283 (ite (and ((_ is None!9161) lt!1404858) ((_ is None!9161) lt!1404860)) None!9161 (ite ((_ is None!9161) lt!1404860) lt!1404858 (ite ((_ is None!9161) lt!1404858) lt!1404860 (ite (>= (size!31902 (_1!24064 (v!39515 lt!1404858))) (size!31902 (_1!24064 (v!39515 lt!1404860)))) lt!1404858 lt!1404860)))))))

(assert (=> b!3988469 (= lt!1404858 call!285800)))

(assert (=> b!3988469 (= lt!1404860 (maxPrefix!3635 thiss!21717 (t!331627 rules!2999) lt!1404544))))

(assert (= (and d!1180381 c!690422) b!3988468))

(assert (= (and d!1180381 (not c!690422)) b!3988469))

(assert (= (or b!3988468 b!3988469) bm!285795))

(assert (= (and d!1180381 (not res!1618171)) b!3988461))

(assert (= (and b!3988461 res!1618169) b!3988467))

(assert (= (and b!3988467 res!1618168) b!3988464))

(assert (= (and b!3988464 res!1618173) b!3988465))

(assert (= (and b!3988465 res!1618170) b!3988463))

(assert (= (and b!3988463 res!1618172) b!3988466))

(assert (= (and b!3988466 res!1618174) b!3988462))

(declare-fun m!4565961 () Bool)

(assert (=> b!3988461 m!4565961))

(declare-fun m!4565963 () Bool)

(assert (=> b!3988462 m!4565963))

(declare-fun m!4565965 () Bool)

(assert (=> b!3988462 m!4565965))

(assert (=> b!3988467 m!4565963))

(declare-fun m!4565967 () Bool)

(assert (=> b!3988467 m!4565967))

(assert (=> b!3988467 m!4565967))

(declare-fun m!4565969 () Bool)

(assert (=> b!3988467 m!4565969))

(assert (=> b!3988463 m!4565963))

(declare-fun m!4565971 () Bool)

(assert (=> b!3988463 m!4565971))

(assert (=> b!3988463 m!4565971))

(declare-fun m!4565973 () Bool)

(assert (=> b!3988463 m!4565973))

(declare-fun m!4565975 () Bool)

(assert (=> bm!285795 m!4565975))

(declare-fun m!4565977 () Bool)

(assert (=> d!1180381 m!4565977))

(assert (=> d!1180381 m!4564701))

(assert (=> d!1180381 m!4564703))

(assert (=> d!1180381 m!4565231))

(declare-fun m!4565979 () Bool)

(assert (=> b!3988469 m!4565979))

(assert (=> b!3988465 m!4565963))

(assert (=> b!3988465 m!4565967))

(assert (=> b!3988465 m!4565967))

(assert (=> b!3988465 m!4565969))

(assert (=> b!3988465 m!4565969))

(declare-fun m!4565981 () Bool)

(assert (=> b!3988465 m!4565981))

(assert (=> b!3988464 m!4565963))

(declare-fun m!4565983 () Bool)

(assert (=> b!3988464 m!4565983))

(assert (=> b!3988464 m!4565261))

(assert (=> b!3988466 m!4565963))

(assert (=> b!3988466 m!4565967))

(assert (=> b!3988466 m!4565967))

(assert (=> b!3988466 m!4565969))

(assert (=> b!3988466 m!4565969))

(declare-fun m!4565985 () Bool)

(assert (=> b!3988466 m!4565985))

(assert (=> b!3987714 d!1180381))

(declare-fun b!3988471 () Bool)

(declare-fun e!2472286 () List!42778)

(assert (=> b!3988471 (= e!2472286 (Cons!42654 (h!48074 prefix!494) (++!11150 (t!331625 prefix!494) suffix!1299)))))

(declare-fun b!3988472 () Bool)

(declare-fun res!1618176 () Bool)

(declare-fun e!2472285 () Bool)

(assert (=> b!3988472 (=> (not res!1618176) (not e!2472285))))

(declare-fun lt!1404861 () List!42778)

(assert (=> b!3988472 (= res!1618176 (= (size!31903 lt!1404861) (+ (size!31903 prefix!494) (size!31903 suffix!1299))))))

(declare-fun b!3988470 () Bool)

(assert (=> b!3988470 (= e!2472286 suffix!1299)))

(declare-fun d!1180383 () Bool)

(assert (=> d!1180383 e!2472285))

(declare-fun res!1618175 () Bool)

(assert (=> d!1180383 (=> (not res!1618175) (not e!2472285))))

(assert (=> d!1180383 (= res!1618175 (= (content!6467 lt!1404861) ((_ map or) (content!6467 prefix!494) (content!6467 suffix!1299))))))

(assert (=> d!1180383 (= lt!1404861 e!2472286)))

(declare-fun c!690423 () Bool)

(assert (=> d!1180383 (= c!690423 ((_ is Nil!42654) prefix!494))))

(assert (=> d!1180383 (= (++!11150 prefix!494 suffix!1299) lt!1404861)))

(declare-fun b!3988473 () Bool)

(assert (=> b!3988473 (= e!2472285 (or (not (= suffix!1299 Nil!42654)) (= lt!1404861 prefix!494)))))

(assert (= (and d!1180383 c!690423) b!3988470))

(assert (= (and d!1180383 (not c!690423)) b!3988471))

(assert (= (and d!1180383 res!1618175) b!3988472))

(assert (= (and b!3988472 res!1618176) b!3988473))

(declare-fun m!4565987 () Bool)

(assert (=> b!3988471 m!4565987))

(declare-fun m!4565989 () Bool)

(assert (=> b!3988472 m!4565989))

(assert (=> b!3988472 m!4564691))

(assert (=> b!3988472 m!4564721))

(declare-fun m!4565991 () Bool)

(assert (=> d!1180383 m!4565991))

(assert (=> d!1180383 m!4565745))

(assert (=> d!1180383 m!4565947))

(assert (=> b!3987714 d!1180383))

(declare-fun b!3988478 () Bool)

(declare-fun e!2472289 () Bool)

(declare-fun tp!1215119 () Bool)

(assert (=> b!3988478 (= e!2472289 (and tp_is_empty!20277 tp!1215119))))

(assert (=> b!3987708 (= tp!1215057 e!2472289)))

(assert (= (and b!3987708 ((_ is Cons!42654) (t!331625 suffixResult!105))) b!3988478))

(declare-fun b!3988489 () Bool)

(declare-fun e!2472292 () Bool)

(assert (=> b!3988489 (= e!2472292 tp_is_empty!20277)))

(declare-fun b!3988490 () Bool)

(declare-fun tp!1215133 () Bool)

(declare-fun tp!1215134 () Bool)

(assert (=> b!3988490 (= e!2472292 (and tp!1215133 tp!1215134))))

(declare-fun b!3988492 () Bool)

(declare-fun tp!1215131 () Bool)

(declare-fun tp!1215130 () Bool)

(assert (=> b!3988492 (= e!2472292 (and tp!1215131 tp!1215130))))

(assert (=> b!3987719 (= tp!1215062 e!2472292)))

(declare-fun b!3988491 () Bool)

(declare-fun tp!1215132 () Bool)

(assert (=> b!3988491 (= e!2472292 tp!1215132)))

(assert (= (and b!3987719 ((_ is ElementMatch!11653) (regex!6748 (h!48076 rules!2999)))) b!3988489))

(assert (= (and b!3987719 ((_ is Concat!18632) (regex!6748 (h!48076 rules!2999)))) b!3988490))

(assert (= (and b!3987719 ((_ is Star!11653) (regex!6748 (h!48076 rules!2999)))) b!3988491))

(assert (= (and b!3987719 ((_ is Union!11653) (regex!6748 (h!48076 rules!2999)))) b!3988492))

(declare-fun b!3988493 () Bool)

(declare-fun e!2472293 () Bool)

(declare-fun tp!1215135 () Bool)

(assert (=> b!3988493 (= e!2472293 (and tp_is_empty!20277 tp!1215135))))

(assert (=> b!3987728 (= tp!1215066 e!2472293)))

(assert (= (and b!3987728 ((_ is Cons!42654) (originalCharacters!7348 token!484))) b!3988493))

(declare-fun b!3988494 () Bool)

(declare-fun e!2472294 () Bool)

(declare-fun tp!1215136 () Bool)

(assert (=> b!3988494 (= e!2472294 (and tp_is_empty!20277 tp!1215136))))

(assert (=> b!3987739 (= tp!1215061 e!2472294)))

(assert (= (and b!3987739 ((_ is Cons!42654) (t!331625 suffix!1299))) b!3988494))

(declare-fun b!3988495 () Bool)

(declare-fun e!2472295 () Bool)

(assert (=> b!3988495 (= e!2472295 tp_is_empty!20277)))

(declare-fun b!3988496 () Bool)

(declare-fun tp!1215140 () Bool)

(declare-fun tp!1215141 () Bool)

(assert (=> b!3988496 (= e!2472295 (and tp!1215140 tp!1215141))))

(declare-fun b!3988498 () Bool)

(declare-fun tp!1215138 () Bool)

(declare-fun tp!1215137 () Bool)

(assert (=> b!3988498 (= e!2472295 (and tp!1215138 tp!1215137))))

(assert (=> b!3987717 (= tp!1215058 e!2472295)))

(declare-fun b!3988497 () Bool)

(declare-fun tp!1215139 () Bool)

(assert (=> b!3988497 (= e!2472295 tp!1215139)))

(assert (= (and b!3987717 ((_ is ElementMatch!11653) (regex!6748 (rule!9762 token!484)))) b!3988495))

(assert (= (and b!3987717 ((_ is Concat!18632) (regex!6748 (rule!9762 token!484)))) b!3988496))

(assert (= (and b!3987717 ((_ is Star!11653) (regex!6748 (rule!9762 token!484)))) b!3988497))

(assert (= (and b!3987717 ((_ is Union!11653) (regex!6748 (rule!9762 token!484)))) b!3988498))

(declare-fun b!3988499 () Bool)

(declare-fun e!2472296 () Bool)

(declare-fun tp!1215142 () Bool)

(assert (=> b!3988499 (= e!2472296 (and tp_is_empty!20277 tp!1215142))))

(assert (=> b!3987732 (= tp!1215060 e!2472296)))

(assert (= (and b!3987732 ((_ is Cons!42654) (t!331625 newSuffix!27))) b!3988499))

(declare-fun b!3988500 () Bool)

(declare-fun e!2472297 () Bool)

(declare-fun tp!1215143 () Bool)

(assert (=> b!3988500 (= e!2472297 (and tp_is_empty!20277 tp!1215143))))

(assert (=> b!3987737 (= tp!1215065 e!2472297)))

(assert (= (and b!3987737 ((_ is Cons!42654) (t!331625 newSuffixResult!27))) b!3988500))

(declare-fun b!3988511 () Bool)

(declare-fun b_free!110773 () Bool)

(declare-fun b_next!111477 () Bool)

(assert (=> b!3988511 (= b_free!110773 (not b_next!111477))))

(declare-fun tb!240149 () Bool)

(declare-fun t!331669 () Bool)

(assert (=> (and b!3988511 (= (toValue!9236 (transformation!6748 (h!48076 (t!331627 rules!2999)))) (toValue!9236 (transformation!6748 (rule!9762 token!484)))) t!331669) tb!240149))

(declare-fun result!290970 () Bool)

(assert (= result!290970 result!290950))

(assert (=> d!1180293 t!331669))

(declare-fun tb!240151 () Bool)

(declare-fun t!331671 () Bool)

(assert (=> (and b!3988511 (= (toValue!9236 (transformation!6748 (h!48076 (t!331627 rules!2999)))) (toValue!9236 (transformation!6748 (rule!9762 (_1!24064 (v!39515 lt!1404551)))))) t!331671) tb!240151))

(declare-fun result!290972 () Bool)

(assert (= result!290972 result!290956))

(assert (=> d!1180333 t!331671))

(declare-fun tp!1215153 () Bool)

(declare-fun b_and!306483 () Bool)

(assert (=> b!3988511 (= tp!1215153 (and (=> t!331669 result!290970) (=> t!331671 result!290972) b_and!306483))))

(declare-fun b_free!110775 () Bool)

(declare-fun b_next!111479 () Bool)

(assert (=> b!3988511 (= b_free!110775 (not b_next!111479))))

(declare-fun tb!240153 () Bool)

(declare-fun t!331673 () Bool)

(assert (=> (and b!3988511 (= (toChars!9095 (transformation!6748 (h!48076 (t!331627 rules!2999)))) (toChars!9095 (transformation!6748 (rule!9762 token!484)))) t!331673) tb!240153))

(declare-fun result!290974 () Bool)

(assert (= result!290974 result!290922))

(assert (=> d!1180187 t!331673))

(assert (=> b!3988371 t!331673))

(declare-fun tb!240155 () Bool)

(declare-fun t!331675 () Bool)

(assert (=> (and b!3988511 (= (toChars!9095 (transformation!6748 (h!48076 (t!331627 rules!2999)))) (toChars!9095 (transformation!6748 (rule!9762 (_1!24064 (v!39515 lt!1404551)))))) t!331675) tb!240155))

(declare-fun result!290976 () Bool)

(assert (= result!290976 result!290960))

(assert (=> d!1180359 t!331675))

(declare-fun tp!1215154 () Bool)

(declare-fun b_and!306485 () Bool)

(assert (=> b!3988511 (= tp!1215154 (and (=> t!331673 result!290974) (=> t!331675 result!290976) b_and!306485))))

(declare-fun e!2472306 () Bool)

(assert (=> b!3988511 (= e!2472306 (and tp!1215153 tp!1215154))))

(declare-fun e!2472308 () Bool)

(declare-fun tp!1215152 () Bool)

(declare-fun b!3988510 () Bool)

(assert (=> b!3988510 (= e!2472308 (and tp!1215152 (inv!56970 (tag!7608 (h!48076 (t!331627 rules!2999)))) (inv!56973 (transformation!6748 (h!48076 (t!331627 rules!2999)))) e!2472306))))

(declare-fun b!3988509 () Bool)

(declare-fun e!2472307 () Bool)

(declare-fun tp!1215155 () Bool)

(assert (=> b!3988509 (= e!2472307 (and e!2472308 tp!1215155))))

(assert (=> b!3987720 (= tp!1215068 e!2472307)))

(assert (= b!3988510 b!3988511))

(assert (= b!3988509 b!3988510))

(assert (= (and b!3987720 ((_ is Cons!42656) (t!331627 rules!2999))) b!3988509))

(declare-fun m!4565993 () Bool)

(assert (=> b!3988510 m!4565993))

(declare-fun m!4565995 () Bool)

(assert (=> b!3988510 m!4565995))

(declare-fun b!3988512 () Bool)

(declare-fun e!2472310 () Bool)

(declare-fun tp!1215156 () Bool)

(assert (=> b!3988512 (= e!2472310 (and tp_is_empty!20277 tp!1215156))))

(assert (=> b!3987704 (= tp!1215059 e!2472310)))

(assert (= (and b!3987704 ((_ is Cons!42654) (t!331625 prefix!494))) b!3988512))

(declare-fun b_lambda!116457 () Bool)

(assert (= b_lambda!116451 (or (and b!3987741 b_free!110763 (= (toChars!9095 (transformation!6748 (h!48076 rules!2999))) (toChars!9095 (transformation!6748 (rule!9762 token!484))))) (and b!3987707 b_free!110767) (and b!3988511 b_free!110775 (= (toChars!9095 (transformation!6748 (h!48076 (t!331627 rules!2999)))) (toChars!9095 (transformation!6748 (rule!9762 token!484))))) b_lambda!116457)))

(declare-fun b_lambda!116459 () Bool)

(assert (= b_lambda!116437 (or (and b!3987741 b_free!110763 (= (toChars!9095 (transformation!6748 (h!48076 rules!2999))) (toChars!9095 (transformation!6748 (rule!9762 token!484))))) (and b!3987707 b_free!110767) (and b!3988511 b_free!110775 (= (toChars!9095 (transformation!6748 (h!48076 (t!331627 rules!2999)))) (toChars!9095 (transformation!6748 (rule!9762 token!484))))) b_lambda!116459)))

(declare-fun b_lambda!116461 () Bool)

(assert (= b_lambda!116449 (or (and b!3987741 b_free!110761 (= (toValue!9236 (transformation!6748 (h!48076 rules!2999))) (toValue!9236 (transformation!6748 (rule!9762 token!484))))) (and b!3987707 b_free!110765) (and b!3988511 b_free!110773 (= (toValue!9236 (transformation!6748 (h!48076 (t!331627 rules!2999)))) (toValue!9236 (transformation!6748 (rule!9762 token!484))))) b_lambda!116461)))

(check-sat (not b!3988467) (not d!1180339) (not b!3988061) (not d!1180355) (not b!3988150) (not b!3988026) (not d!1180383) (not b!3988478) (not b!3988372) (not b!3988439) (not b!3988050) (not d!1180313) (not b_lambda!116459) (not d!1180343) (not b!3988442) (not b_lambda!116455) (not d!1180321) (not d!1180213) (not b!3988124) (not b!3988512) (not b!3988494) (not b!3988052) (not b!3988462) b_and!306475 (not b!3988079) (not b!3988399) (not b!3987937) (not b!3988446) (not b!3988402) (not d!1180315) (not d!1180349) (not d!1180345) (not b!3988385) (not b!3988173) (not d!1180171) (not b_next!111469) (not b!3988156) (not b!3988364) (not tb!240141) (not d!1180299) (not b!3988499) (not b!3988427) (not b!3988028) (not d!1180075) (not b!3988360) (not d!1180207) (not b!3988471) (not b!3988048) (not d!1180013) (not b_next!111467) (not b!3988022) b_and!306479 (not d!1180291) (not b!3988380) (not b!3988436) (not bm!285790) (not b!3987866) (not d!1180297) (not b!3988058) (not d!1180061) (not b!3988455) (not d!1180357) (not b!3988356) (not b!3988024) (not b!3988021) (not d!1180063) (not b!3987904) (not b!3988162) (not b!3988500) (not b!3988119) (not b!3987906) (not d!1180065) (not tb!240145) (not d!1180173) (not d!1180371) (not b!3988089) (not b!3988464) b_and!306477 (not b!3987936) b_and!306481 (not d!1180309) (not b!3988110) (not d!1180337) (not b!3988498) (not d!1180331) (not d!1180143) (not b_lambda!116457) b_and!306485 (not d!1180209) (not d!1180071) (not d!1180359) (not d!1180203) (not b!3988111) (not b!3988416) (not d!1180303) (not b!3988450) (not d!1180367) (not b!3988509) (not b!3988371) (not b!3988493) (not b!3988417) (not b!3988116) (not b!3988465) (not b!3988454) (not b!3988472) b_and!306483 (not d!1180187) (not b!3988157) (not b_next!111477) (not b!3988432) (not b!3988181) (not bm!285795) (not b!3988463) (not b_lambda!116453) (not b!3988437) (not b!3988420) (not b!3988407) (not b!3988490) (not d!1180307) (not b!3988114) (not b!3988137) (not d!1180319) (not b!3988466) (not b!3987883) (not b!3987872) (not b!3988170) (not b!3988423) (not b!3988062) (not b!3988053) (not b!3988359) (not tb!240117) (not b_next!111465) (not b!3988378) (not b!3988496) (not b!3988054) (not b!3988109) (not b!3987935) (not b!3987894) (not d!1180377) (not d!1180301) (not b!3988155) (not d!1180379) (not b!3987895) (not b!3988389) (not b!3988060) (not d!1180185) (not d!1180069) (not b!3988148) (not b!3988440) (not d!1180289) (not d!1180375) (not b!3988167) (not b!3988115) (not bm!285782) (not bm!285785) (not b!3988083) (not d!1180305) (not b!3988025) (not d!1180347) (not d!1180311) (not b!3988164) (not b!3988207) (not b!3988080) (not d!1180325) (not b!3987905) (not b_lambda!116461) (not b!3988172) (not b!3988392) tp_is_empty!20277 (not b!3987882) (not d!1180177) (not b!3988451) (not b!3988434) (not b!3988396) (not d!1180201) (not b!3988355) (not b!3988469) (not b!3988057) (not b!3988357) (not b!3988447) (not b!3988056) (not b!3988049) (not b!3988461) (not b!3988444) (not b!3988352) (not b!3988403) (not b!3988354) (not b_next!111471) (not b!3988393) (not b!3988458) (not b!3988118) (not b!3988430) (not b!3988492) (not b!3988363) (not b!3987859) (not b!3988441) (not b!3988397) (not b!3988428) (not b!3988020) (not b!3988381) (not b!3987884) (not b!3988077) (not d!1180135) (not d!1180139) (not b!3988433) (not d!1180381) (not b!3988412) (not b!3988139) (not b!3988362) (not b!3988353) (not b!3988151) (not b!3988421) (not d!1180295) (not b!3988491) (not b!3988154) (not d!1180373) (not b!3988126) (not b!3987862) (not b!3988448) (not b!3988081) (not b!3988443) (not d!1180335) (not d!1180365) (not d!1180081) (not d!1180059) (not d!1180317) (not tb!240137) (not b!3988023) (not d!1180215) (not b!3988388) (not d!1180323) (not d!1180363) (not b!3988425) (not b!3988459) (not b!3988152) (not b!3988424) (not b!3988125) (not b!3987901) (not b_next!111479) (not b!3988384) (not d!1180211) (not d!1180329) (not d!1180353) (not b!3988160) (not d!1180217) (not b!3988121) (not d!1180131) (not b!3987869) (not b!3988497) (not b!3987864) (not b!3988510))
(check-sat b_and!306475 (not b_next!111469) b_and!306485 (not b_next!111465) (not b_next!111471) (not b_next!111479) (not b_next!111467) b_and!306479 b_and!306477 b_and!306481 b_and!306483 (not b_next!111477))
