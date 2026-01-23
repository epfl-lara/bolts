; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!359408 () Bool)

(assert start!359408)

(declare-fun b!3838504 () Bool)

(declare-fun b_free!102165 () Bool)

(declare-fun b_next!102869 () Bool)

(assert (=> b!3838504 (= b_free!102165 (not b_next!102869))))

(declare-fun tp!1162268 () Bool)

(declare-fun b_and!285715 () Bool)

(assert (=> b!3838504 (= tp!1162268 b_and!285715)))

(declare-fun b_free!102167 () Bool)

(declare-fun b_next!102871 () Bool)

(assert (=> b!3838504 (= b_free!102167 (not b_next!102871))))

(declare-fun tp!1162257 () Bool)

(declare-fun b_and!285717 () Bool)

(assert (=> b!3838504 (= tp!1162257 b_and!285717)))

(declare-fun b!3838498 () Bool)

(declare-fun b_free!102169 () Bool)

(declare-fun b_next!102873 () Bool)

(assert (=> b!3838498 (= b_free!102169 (not b_next!102873))))

(declare-fun tp!1162269 () Bool)

(declare-fun b_and!285719 () Bool)

(assert (=> b!3838498 (= tp!1162269 b_and!285719)))

(declare-fun b_free!102171 () Bool)

(declare-fun b_next!102875 () Bool)

(assert (=> b!3838498 (= b_free!102171 (not b_next!102875))))

(declare-fun tp!1162267 () Bool)

(declare-fun b_and!285721 () Bool)

(assert (=> b!3838498 (= tp!1162267 b_and!285721)))

(declare-fun b!3838508 () Bool)

(declare-fun b_free!102173 () Bool)

(declare-fun b_next!102877 () Bool)

(assert (=> b!3838508 (= b_free!102173 (not b_next!102877))))

(declare-fun tp!1162256 () Bool)

(declare-fun b_and!285723 () Bool)

(assert (=> b!3838508 (= tp!1162256 b_and!285723)))

(declare-fun b_free!102175 () Bool)

(declare-fun b_next!102879 () Bool)

(assert (=> b!3838508 (= b_free!102175 (not b_next!102879))))

(declare-fun tp!1162254 () Bool)

(declare-fun b_and!285725 () Bool)

(assert (=> b!3838508 (= tp!1162254 b_and!285725)))

(declare-fun b!3838497 () Bool)

(declare-fun e!2370910 () Bool)

(declare-fun tp_is_empty!19285 () Bool)

(declare-fun tp!1162260 () Bool)

(assert (=> b!3838497 (= e!2370910 (and tp_is_empty!19285 tp!1162260))))

(declare-fun e!2370897 () Bool)

(assert (=> b!3838498 (= e!2370897 (and tp!1162269 tp!1162267))))

(declare-fun b!3838499 () Bool)

(declare-fun res!1553568 () Bool)

(declare-fun e!2370898 () Bool)

(assert (=> b!3838499 (=> (not res!1553568) (not e!2370898))))

(declare-datatypes ((C!22500 0))(
  ( (C!22501 (val!13344 Int)) )
))
(declare-datatypes ((List!40688 0))(
  ( (Nil!40564) (Cons!40564 (h!45984 C!22500) (t!310121 List!40688)) )
))
(declare-fun prefix!426 () List!40688)

(declare-fun isEmpty!23964 (List!40688) Bool)

(assert (=> b!3838499 (= res!1553568 (not (isEmpty!23964 prefix!426)))))

(declare-fun b!3838500 () Bool)

(declare-fun e!2370906 () Bool)

(declare-fun tp!1162266 () Bool)

(assert (=> b!3838500 (= e!2370906 (and tp_is_empty!19285 tp!1162266))))

(declare-fun b!3838501 () Bool)

(declare-fun res!1553563 () Bool)

(assert (=> b!3838501 (=> (not res!1553563) (not e!2370898))))

(declare-datatypes ((List!40689 0))(
  ( (Nil!40565) (Cons!40565 (h!45985 (_ BitVec 16)) (t!310122 List!40689)) )
))
(declare-datatypes ((TokenValue!6482 0))(
  ( (FloatLiteralValue!12964 (text!45819 List!40689)) (TokenValueExt!6481 (__x!25181 Int)) (Broken!32410 (value!198790 List!40689)) (Object!6605) (End!6482) (Def!6482) (Underscore!6482) (Match!6482) (Else!6482) (Error!6482) (Case!6482) (If!6482) (Extends!6482) (Abstract!6482) (Class!6482) (Val!6482) (DelimiterValue!12964 (del!6542 List!40689)) (KeywordValue!6488 (value!198791 List!40689)) (CommentValue!12964 (value!198792 List!40689)) (WhitespaceValue!12964 (value!198793 List!40689)) (IndentationValue!6482 (value!198794 List!40689)) (String!46127) (Int32!6482) (Broken!32411 (value!198795 List!40689)) (Boolean!6483) (Unit!58287) (OperatorValue!6485 (op!6542 List!40689)) (IdentifierValue!12964 (value!198796 List!40689)) (IdentifierValue!12965 (value!198797 List!40689)) (WhitespaceValue!12965 (value!198798 List!40689)) (True!12964) (False!12964) (Broken!32412 (value!198799 List!40689)) (Broken!32413 (value!198800 List!40689)) (True!12965) (RightBrace!6482) (RightBracket!6482) (Colon!6482) (Null!6482) (Comma!6482) (LeftBracket!6482) (False!12965) (LeftBrace!6482) (ImaginaryLiteralValue!6482 (text!45820 List!40689)) (StringLiteralValue!19446 (value!198801 List!40689)) (EOFValue!6482 (value!198802 List!40689)) (IdentValue!6482 (value!198803 List!40689)) (DelimiterValue!12965 (value!198804 List!40689)) (DedentValue!6482 (value!198805 List!40689)) (NewLineValue!6482 (value!198806 List!40689)) (IntegerValue!19446 (value!198807 (_ BitVec 32)) (text!45821 List!40689)) (IntegerValue!19447 (value!198808 Int) (text!45822 List!40689)) (Times!6482) (Or!6482) (Equal!6482) (Minus!6482) (Broken!32414 (value!198809 List!40689)) (And!6482) (Div!6482) (LessEqual!6482) (Mod!6482) (Concat!17639) (Not!6482) (Plus!6482) (SpaceValue!6482 (value!198810 List!40689)) (IntegerValue!19448 (value!198811 Int) (text!45823 List!40689)) (StringLiteralValue!19447 (text!45824 List!40689)) (FloatLiteralValue!12965 (text!45825 List!40689)) (BytesLiteralValue!6482 (value!198812 List!40689)) (CommentValue!12965 (value!198813 List!40689)) (StringLiteralValue!19448 (value!198814 List!40689)) (ErrorTokenValue!6482 (msg!6543 List!40689)) )
))
(declare-datatypes ((Regex!11157 0))(
  ( (ElementMatch!11157 (c!669170 C!22500)) (Concat!17640 (regOne!22826 Regex!11157) (regTwo!22826 Regex!11157)) (EmptyExpr!11157) (Star!11157 (reg!11486 Regex!11157)) (EmptyLang!11157) (Union!11157 (regOne!22827 Regex!11157) (regTwo!22827 Regex!11157)) )
))
(declare-datatypes ((String!46128 0))(
  ( (String!46129 (value!198815 String)) )
))
(declare-datatypes ((IArray!24931 0))(
  ( (IArray!24932 (innerList!12523 List!40688)) )
))
(declare-datatypes ((Conc!12463 0))(
  ( (Node!12463 (left!31355 Conc!12463) (right!31685 Conc!12463) (csize!25156 Int) (cheight!12674 Int)) (Leaf!19296 (xs!15769 IArray!24931) (csize!25157 Int)) (Empty!12463) )
))
(declare-datatypes ((BalanceConc!24520 0))(
  ( (BalanceConc!24521 (c!669171 Conc!12463)) )
))
(declare-datatypes ((TokenValueInjection!12392 0))(
  ( (TokenValueInjection!12393 (toValue!8668 Int) (toChars!8527 Int)) )
))
(declare-datatypes ((Rule!12304 0))(
  ( (Rule!12305 (regex!6252 Regex!11157) (tag!7112 String!46128) (isSeparator!6252 Bool) (transformation!6252 TokenValueInjection!12392)) )
))
(declare-datatypes ((Token!11642 0))(
  ( (Token!11643 (value!198816 TokenValue!6482) (rule!9088 Rule!12304) (size!30545 Int) (originalCharacters!6852 List!40688)) )
))
(declare-datatypes ((List!40690 0))(
  ( (Nil!40566) (Cons!40566 (h!45986 Token!11642) (t!310123 List!40690)) )
))
(declare-fun prefixTokens!80 () List!40690)

(declare-fun isEmpty!23965 (List!40690) Bool)

(assert (=> b!3838501 (= res!1553563 (not (isEmpty!23965 prefixTokens!80)))))

(declare-fun b!3838502 () Bool)

(declare-datatypes ((List!40691 0))(
  ( (Nil!40567) (Cons!40567 (h!45987 Rule!12304) (t!310124 List!40691)) )
))
(declare-fun rules!2768 () List!40691)

(declare-fun tp!1162261 () Bool)

(declare-fun e!2370889 () Bool)

(declare-fun inv!54714 (String!46128) Bool)

(declare-fun inv!54717 (TokenValueInjection!12392) Bool)

(assert (=> b!3838502 (= e!2370889 (and tp!1162261 (inv!54714 (tag!7112 (h!45987 rules!2768))) (inv!54717 (transformation!6252 (h!45987 rules!2768))) e!2370897))))

(declare-fun b!3838503 () Bool)

(declare-fun e!2370890 () Bool)

(declare-fun tp!1162270 () Bool)

(assert (=> b!3838503 (= e!2370890 (and e!2370889 tp!1162270))))

(declare-fun e!2370904 () Bool)

(assert (=> b!3838504 (= e!2370904 (and tp!1162268 tp!1162257))))

(declare-fun tp!1162259 () Bool)

(declare-fun b!3838505 () Bool)

(declare-fun e!2370891 () Bool)

(declare-fun e!2370907 () Bool)

(declare-fun inv!54718 (Token!11642) Bool)

(assert (=> b!3838505 (= e!2370891 (and (inv!54718 (h!45986 prefixTokens!80)) e!2370907 tp!1162259))))

(declare-fun b!3838506 () Bool)

(declare-fun res!1553567 () Bool)

(assert (=> b!3838506 (=> (not res!1553567) (not e!2370898))))

(declare-fun isEmpty!23966 (List!40691) Bool)

(assert (=> b!3838506 (= res!1553567 (not (isEmpty!23966 rules!2768)))))

(declare-fun b!3838507 () Bool)

(declare-fun e!2370896 () Bool)

(assert (=> b!3838507 (= e!2370898 e!2370896)))

(declare-fun res!1553570 () Bool)

(assert (=> b!3838507 (=> (not res!1553570) (not e!2370896))))

(declare-fun suffixResult!91 () List!40688)

(declare-datatypes ((LexerInterface!5841 0))(
  ( (LexerInterfaceExt!5838 (__x!25182 Int)) (Lexer!5839) )
))
(declare-fun thiss!20629 () LexerInterface!5841)

(declare-fun suffixTokens!72 () List!40690)

(declare-fun lt!1332024 () List!40688)

(declare-datatypes ((tuple2!39738 0))(
  ( (tuple2!39739 (_1!23003 List!40690) (_2!23003 List!40688)) )
))
(declare-fun lexList!1609 (LexerInterface!5841 List!40691 List!40688) tuple2!39738)

(declare-fun ++!10261 (List!40690 List!40690) List!40690)

(assert (=> b!3838507 (= res!1553570 (= (lexList!1609 thiss!20629 rules!2768 lt!1332024) (tuple2!39739 (++!10261 prefixTokens!80 suffixTokens!72) suffixResult!91)))))

(declare-fun suffix!1176 () List!40688)

(declare-fun ++!10262 (List!40688 List!40688) List!40688)

(assert (=> b!3838507 (= lt!1332024 (++!10262 prefix!426 suffix!1176))))

(declare-fun e!2370902 () Bool)

(assert (=> b!3838508 (= e!2370902 (and tp!1162256 tp!1162254))))

(declare-fun b!3838509 () Bool)

(declare-fun e!2370899 () Bool)

(assert (=> b!3838509 (= e!2370896 e!2370899)))

(declare-fun res!1553566 () Bool)

(assert (=> b!3838509 (=> (not res!1553566) (not e!2370899))))

(declare-datatypes ((tuple2!39740 0))(
  ( (tuple2!39741 (_1!23004 Token!11642) (_2!23004 List!40688)) )
))
(declare-datatypes ((Option!8670 0))(
  ( (None!8669) (Some!8669 (v!38961 tuple2!39740)) )
))
(declare-fun lt!1332031 () Option!8670)

(get-info :version)

(assert (=> b!3838509 (= res!1553566 ((_ is Some!8669) lt!1332031))))

(declare-fun maxPrefix!3145 (LexerInterface!5841 List!40691 List!40688) Option!8670)

(assert (=> b!3838509 (= lt!1332031 (maxPrefix!3145 thiss!20629 rules!2768 lt!1332024))))

(declare-fun b!3838510 () Bool)

(declare-fun e!2370900 () Bool)

(declare-fun size!30546 (List!40688) Int)

(assert (=> b!3838510 (= e!2370900 (= (size!30545 (_1!23004 (v!38961 lt!1332031))) (size!30546 (originalCharacters!6852 (_1!23004 (v!38961 lt!1332031))))))))

(declare-fun b!3838511 () Bool)

(declare-fun e!2370894 () Bool)

(assert (=> b!3838511 (= e!2370894 true)))

(declare-fun lt!1332033 () List!40690)

(declare-fun lt!1332025 () tuple2!39738)

(assert (=> b!3838511 (= lt!1332033 (++!10261 (Cons!40566 (_1!23004 (v!38961 lt!1332031)) Nil!40566) (_1!23003 lt!1332025)))))

(declare-fun tp!1162255 () Bool)

(declare-fun e!2370901 () Bool)

(declare-fun b!3838512 () Bool)

(assert (=> b!3838512 (= e!2370901 (and tp!1162255 (inv!54714 (tag!7112 (rule!9088 (h!45986 prefixTokens!80)))) (inv!54717 (transformation!6252 (rule!9088 (h!45986 prefixTokens!80)))) e!2370904))))

(declare-fun res!1553561 () Bool)

(assert (=> start!359408 (=> (not res!1553561) (not e!2370898))))

(assert (=> start!359408 (= res!1553561 ((_ is Lexer!5839) thiss!20629))))

(assert (=> start!359408 e!2370898))

(assert (=> start!359408 e!2370910))

(assert (=> start!359408 true))

(assert (=> start!359408 e!2370906))

(assert (=> start!359408 e!2370890))

(assert (=> start!359408 e!2370891))

(declare-fun e!2370911 () Bool)

(assert (=> start!359408 e!2370911))

(declare-fun e!2370893 () Bool)

(assert (=> start!359408 e!2370893))

(declare-fun b!3838513 () Bool)

(declare-fun res!1553562 () Bool)

(assert (=> b!3838513 (=> (not res!1553562) (not e!2370896))))

(assert (=> b!3838513 (= res!1553562 (= (lexList!1609 thiss!20629 rules!2768 suffix!1176) (tuple2!39739 suffixTokens!72 suffixResult!91)))))

(declare-fun tp!1162264 () Bool)

(declare-fun b!3838514 () Bool)

(declare-fun inv!21 (TokenValue!6482) Bool)

(assert (=> b!3838514 (= e!2370907 (and (inv!21 (value!198816 (h!45986 prefixTokens!80))) e!2370901 tp!1162264))))

(declare-fun b!3838515 () Bool)

(assert (=> b!3838515 (= e!2370899 (not e!2370894))))

(declare-fun res!1553565 () Bool)

(assert (=> b!3838515 (=> res!1553565 e!2370894)))

(declare-fun lt!1332027 () List!40688)

(assert (=> b!3838515 (= res!1553565 (not (= lt!1332027 lt!1332024)))))

(assert (=> b!3838515 (= lt!1332025 (lexList!1609 thiss!20629 rules!2768 (_2!23004 (v!38961 lt!1332031))))))

(declare-fun lt!1332023 () List!40688)

(declare-fun lt!1332030 () TokenValue!6482)

(declare-fun lt!1332032 () Int)

(declare-fun lt!1332029 () List!40688)

(assert (=> b!3838515 (and (= (size!30545 (_1!23004 (v!38961 lt!1332031))) lt!1332032) (= (originalCharacters!6852 (_1!23004 (v!38961 lt!1332031))) lt!1332023) (= (v!38961 lt!1332031) (tuple2!39741 (Token!11643 lt!1332030 (rule!9088 (_1!23004 (v!38961 lt!1332031))) lt!1332032 lt!1332023) lt!1332029)))))

(assert (=> b!3838515 (= lt!1332032 (size!30546 lt!1332023))))

(assert (=> b!3838515 e!2370900))

(declare-fun res!1553564 () Bool)

(assert (=> b!3838515 (=> (not res!1553564) (not e!2370900))))

(assert (=> b!3838515 (= res!1553564 (= (value!198816 (_1!23004 (v!38961 lt!1332031))) lt!1332030))))

(declare-fun apply!9495 (TokenValueInjection!12392 BalanceConc!24520) TokenValue!6482)

(declare-fun seqFromList!4523 (List!40688) BalanceConc!24520)

(assert (=> b!3838515 (= lt!1332030 (apply!9495 (transformation!6252 (rule!9088 (_1!23004 (v!38961 lt!1332031)))) (seqFromList!4523 lt!1332023)))))

(assert (=> b!3838515 (= (_2!23004 (v!38961 lt!1332031)) lt!1332029)))

(declare-datatypes ((Unit!58288 0))(
  ( (Unit!58289) )
))
(declare-fun lt!1332028 () Unit!58288)

(declare-fun lemmaSamePrefixThenSameSuffix!1572 (List!40688 List!40688 List!40688 List!40688 List!40688) Unit!58288)

(assert (=> b!3838515 (= lt!1332028 (lemmaSamePrefixThenSameSuffix!1572 lt!1332023 (_2!23004 (v!38961 lt!1332031)) lt!1332023 lt!1332029 lt!1332024))))

(declare-fun getSuffix!1806 (List!40688 List!40688) List!40688)

(assert (=> b!3838515 (= lt!1332029 (getSuffix!1806 lt!1332024 lt!1332023))))

(declare-fun isPrefix!3351 (List!40688 List!40688) Bool)

(assert (=> b!3838515 (isPrefix!3351 lt!1332023 lt!1332027)))

(assert (=> b!3838515 (= lt!1332027 (++!10262 lt!1332023 (_2!23004 (v!38961 lt!1332031))))))

(declare-fun lt!1332034 () Unit!58288)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2214 (List!40688 List!40688) Unit!58288)

(assert (=> b!3838515 (= lt!1332034 (lemmaConcatTwoListThenFirstIsPrefix!2214 lt!1332023 (_2!23004 (v!38961 lt!1332031))))))

(declare-fun list!15112 (BalanceConc!24520) List!40688)

(declare-fun charsOf!4080 (Token!11642) BalanceConc!24520)

(assert (=> b!3838515 (= lt!1332023 (list!15112 (charsOf!4080 (_1!23004 (v!38961 lt!1332031)))))))

(declare-fun ruleValid!2204 (LexerInterface!5841 Rule!12304) Bool)

(assert (=> b!3838515 (ruleValid!2204 thiss!20629 (rule!9088 (_1!23004 (v!38961 lt!1332031))))))

(declare-fun lt!1332035 () Unit!58288)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1284 (LexerInterface!5841 Rule!12304 List!40691) Unit!58288)

(assert (=> b!3838515 (= lt!1332035 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1284 thiss!20629 (rule!9088 (_1!23004 (v!38961 lt!1332031))) rules!2768))))

(declare-fun lt!1332026 () Unit!58288)

(declare-fun lemmaCharactersSize!913 (Token!11642) Unit!58288)

(assert (=> b!3838515 (= lt!1332026 (lemmaCharactersSize!913 (_1!23004 (v!38961 lt!1332031))))))

(declare-fun e!2370908 () Bool)

(declare-fun e!2370909 () Bool)

(declare-fun tp!1162263 () Bool)

(declare-fun b!3838516 () Bool)

(assert (=> b!3838516 (= e!2370909 (and (inv!21 (value!198816 (h!45986 suffixTokens!72))) e!2370908 tp!1162263))))

(declare-fun b!3838517 () Bool)

(declare-fun tp!1162265 () Bool)

(assert (=> b!3838517 (= e!2370893 (and tp_is_empty!19285 tp!1162265))))

(declare-fun tp!1162262 () Bool)

(declare-fun b!3838518 () Bool)

(assert (=> b!3838518 (= e!2370908 (and tp!1162262 (inv!54714 (tag!7112 (rule!9088 (h!45986 suffixTokens!72)))) (inv!54717 (transformation!6252 (rule!9088 (h!45986 suffixTokens!72)))) e!2370902))))

(declare-fun b!3838519 () Bool)

(declare-fun res!1553569 () Bool)

(assert (=> b!3838519 (=> (not res!1553569) (not e!2370898))))

(declare-fun rulesInvariant!5184 (LexerInterface!5841 List!40691) Bool)

(assert (=> b!3838519 (= res!1553569 (rulesInvariant!5184 thiss!20629 rules!2768))))

(declare-fun b!3838520 () Bool)

(declare-fun tp!1162258 () Bool)

(assert (=> b!3838520 (= e!2370911 (and (inv!54718 (h!45986 suffixTokens!72)) e!2370909 tp!1162258))))

(assert (= (and start!359408 res!1553561) b!3838506))

(assert (= (and b!3838506 res!1553567) b!3838519))

(assert (= (and b!3838519 res!1553569) b!3838501))

(assert (= (and b!3838501 res!1553563) b!3838499))

(assert (= (and b!3838499 res!1553568) b!3838507))

(assert (= (and b!3838507 res!1553570) b!3838513))

(assert (= (and b!3838513 res!1553562) b!3838509))

(assert (= (and b!3838509 res!1553566) b!3838515))

(assert (= (and b!3838515 res!1553564) b!3838510))

(assert (= (and b!3838515 (not res!1553565)) b!3838511))

(assert (= (and start!359408 ((_ is Cons!40564) suffixResult!91)) b!3838497))

(assert (= (and start!359408 ((_ is Cons!40564) suffix!1176)) b!3838500))

(assert (= b!3838502 b!3838498))

(assert (= b!3838503 b!3838502))

(assert (= (and start!359408 ((_ is Cons!40567) rules!2768)) b!3838503))

(assert (= b!3838512 b!3838504))

(assert (= b!3838514 b!3838512))

(assert (= b!3838505 b!3838514))

(assert (= (and start!359408 ((_ is Cons!40566) prefixTokens!80)) b!3838505))

(assert (= b!3838518 b!3838508))

(assert (= b!3838516 b!3838518))

(assert (= b!3838520 b!3838516))

(assert (= (and start!359408 ((_ is Cons!40566) suffixTokens!72)) b!3838520))

(assert (= (and start!359408 ((_ is Cons!40564) prefix!426)) b!3838517))

(declare-fun m!4392835 () Bool)

(assert (=> b!3838519 m!4392835))

(declare-fun m!4392837 () Bool)

(assert (=> b!3838506 m!4392837))

(declare-fun m!4392839 () Bool)

(assert (=> b!3838499 m!4392839))

(declare-fun m!4392841 () Bool)

(assert (=> b!3838513 m!4392841))

(declare-fun m!4392843 () Bool)

(assert (=> b!3838509 m!4392843))

(declare-fun m!4392845 () Bool)

(assert (=> b!3838511 m!4392845))

(declare-fun m!4392847 () Bool)

(assert (=> b!3838502 m!4392847))

(declare-fun m!4392849 () Bool)

(assert (=> b!3838502 m!4392849))

(declare-fun m!4392851 () Bool)

(assert (=> b!3838510 m!4392851))

(declare-fun m!4392853 () Bool)

(assert (=> b!3838512 m!4392853))

(declare-fun m!4392855 () Bool)

(assert (=> b!3838512 m!4392855))

(declare-fun m!4392857 () Bool)

(assert (=> b!3838507 m!4392857))

(declare-fun m!4392859 () Bool)

(assert (=> b!3838507 m!4392859))

(declare-fun m!4392861 () Bool)

(assert (=> b!3838507 m!4392861))

(declare-fun m!4392863 () Bool)

(assert (=> b!3838505 m!4392863))

(declare-fun m!4392865 () Bool)

(assert (=> b!3838518 m!4392865))

(declare-fun m!4392867 () Bool)

(assert (=> b!3838518 m!4392867))

(declare-fun m!4392869 () Bool)

(assert (=> b!3838501 m!4392869))

(declare-fun m!4392871 () Bool)

(assert (=> b!3838520 m!4392871))

(declare-fun m!4392873 () Bool)

(assert (=> b!3838515 m!4392873))

(declare-fun m!4392875 () Bool)

(assert (=> b!3838515 m!4392875))

(declare-fun m!4392877 () Bool)

(assert (=> b!3838515 m!4392877))

(declare-fun m!4392879 () Bool)

(assert (=> b!3838515 m!4392879))

(declare-fun m!4392881 () Bool)

(assert (=> b!3838515 m!4392881))

(declare-fun m!4392883 () Bool)

(assert (=> b!3838515 m!4392883))

(declare-fun m!4392885 () Bool)

(assert (=> b!3838515 m!4392885))

(declare-fun m!4392887 () Bool)

(assert (=> b!3838515 m!4392887))

(assert (=> b!3838515 m!4392883))

(declare-fun m!4392889 () Bool)

(assert (=> b!3838515 m!4392889))

(assert (=> b!3838515 m!4392875))

(declare-fun m!4392891 () Bool)

(assert (=> b!3838515 m!4392891))

(declare-fun m!4392893 () Bool)

(assert (=> b!3838515 m!4392893))

(declare-fun m!4392895 () Bool)

(assert (=> b!3838515 m!4392895))

(declare-fun m!4392897 () Bool)

(assert (=> b!3838515 m!4392897))

(declare-fun m!4392899 () Bool)

(assert (=> b!3838515 m!4392899))

(declare-fun m!4392901 () Bool)

(assert (=> b!3838516 m!4392901))

(declare-fun m!4392903 () Bool)

(assert (=> b!3838514 m!4392903))

(check-sat (not b!3838513) (not b!3838505) (not b!3838515) (not b!3838506) (not b_next!102873) (not b!3838499) (not b!3838516) b_and!285715 (not b!3838497) b_and!285719 (not b!3838517) (not b_next!102879) (not b!3838503) (not b!3838520) (not b!3838501) (not b!3838500) b_and!285723 b_and!285717 (not b!3838509) (not b!3838519) (not b!3838502) (not b!3838510) (not b!3838511) tp_is_empty!19285 (not b!3838518) (not b_next!102871) (not b!3838512) (not b!3838507) b_and!285721 (not b_next!102877) (not b_next!102869) b_and!285725 (not b_next!102875) (not b!3838514))
(check-sat (not b_next!102879) (not b_next!102873) b_and!285715 b_and!285719 (not b_next!102871) b_and!285723 b_and!285717 b_and!285721 (not b_next!102877) (not b_next!102869) b_and!285725 (not b_next!102875))
