; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!373632 () Bool)

(assert start!373632)

(declare-fun b!3970835 () Bool)

(declare-fun b_free!110001 () Bool)

(declare-fun b_next!110705 () Bool)

(assert (=> b!3970835 (= b_free!110001 (not b_next!110705))))

(declare-fun tp!1210731 () Bool)

(declare-fun b_and!305247 () Bool)

(assert (=> b!3970835 (= tp!1210731 b_and!305247)))

(declare-fun b_free!110003 () Bool)

(declare-fun b_next!110707 () Bool)

(assert (=> b!3970835 (= b_free!110003 (not b_next!110707))))

(declare-fun tp!1210733 () Bool)

(declare-fun b_and!305249 () Bool)

(assert (=> b!3970835 (= tp!1210733 b_and!305249)))

(declare-fun b!3970834 () Bool)

(declare-fun b_free!110005 () Bool)

(declare-fun b_next!110709 () Bool)

(assert (=> b!3970834 (= b_free!110005 (not b_next!110709))))

(declare-fun tp!1210728 () Bool)

(declare-fun b_and!305251 () Bool)

(assert (=> b!3970834 (= tp!1210728 b_and!305251)))

(declare-fun b_free!110007 () Bool)

(declare-fun b_next!110711 () Bool)

(assert (=> b!3970834 (= b_free!110007 (not b_next!110711))))

(declare-fun tp!1210732 () Bool)

(declare-fun b_and!305253 () Bool)

(assert (=> b!3970834 (= tp!1210732 b_and!305253)))

(declare-fun b!3970826 () Bool)

(declare-fun e!2459740 () Bool)

(declare-fun e!2459720 () Bool)

(assert (=> b!3970826 (= e!2459740 e!2459720)))

(declare-fun res!1607344 () Bool)

(assert (=> b!3970826 (=> res!1607344 e!2459720)))

(declare-datatypes ((C!23328 0))(
  ( (C!23329 (val!13758 Int)) )
))
(declare-datatypes ((List!42506 0))(
  ( (Nil!42382) (Cons!42382 (h!47802 C!23328) (t!330873 List!42506)) )
))
(declare-datatypes ((IArray!25759 0))(
  ( (IArray!25760 (innerList!12937 List!42506)) )
))
(declare-datatypes ((Conc!12877 0))(
  ( (Node!12877 (left!32104 Conc!12877) (right!32434 Conc!12877) (csize!25984 Int) (cheight!13088 Int)) (Leaf!19917 (xs!16183 IArray!25759) (csize!25985 Int)) (Empty!12877) )
))
(declare-datatypes ((BalanceConc!25348 0))(
  ( (BalanceConc!25349 (c!688732 Conc!12877)) )
))
(declare-datatypes ((List!42507 0))(
  ( (Nil!42383) (Cons!42383 (h!47803 (_ BitVec 16)) (t!330874 List!42507)) )
))
(declare-datatypes ((TokenValue!6896 0))(
  ( (FloatLiteralValue!13792 (text!48717 List!42507)) (TokenValueExt!6895 (__x!26009 Int)) (Broken!34480 (value!210589 List!42507)) (Object!7019) (End!6896) (Def!6896) (Underscore!6896) (Match!6896) (Else!6896) (Error!6896) (Case!6896) (If!6896) (Extends!6896) (Abstract!6896) (Class!6896) (Val!6896) (DelimiterValue!13792 (del!6956 List!42507)) (KeywordValue!6902 (value!210590 List!42507)) (CommentValue!13792 (value!210591 List!42507)) (WhitespaceValue!13792 (value!210592 List!42507)) (IndentationValue!6896 (value!210593 List!42507)) (String!48197) (Int32!6896) (Broken!34481 (value!210594 List!42507)) (Boolean!6897) (Unit!61033) (OperatorValue!6899 (op!6956 List!42507)) (IdentifierValue!13792 (value!210595 List!42507)) (IdentifierValue!13793 (value!210596 List!42507)) (WhitespaceValue!13793 (value!210597 List!42507)) (True!13792) (False!13792) (Broken!34482 (value!210598 List!42507)) (Broken!34483 (value!210599 List!42507)) (True!13793) (RightBrace!6896) (RightBracket!6896) (Colon!6896) (Null!6896) (Comma!6896) (LeftBracket!6896) (False!13793) (LeftBrace!6896) (ImaginaryLiteralValue!6896 (text!48718 List!42507)) (StringLiteralValue!20688 (value!210600 List!42507)) (EOFValue!6896 (value!210601 List!42507)) (IdentValue!6896 (value!210602 List!42507)) (DelimiterValue!13793 (value!210603 List!42507)) (DedentValue!6896 (value!210604 List!42507)) (NewLineValue!6896 (value!210605 List!42507)) (IntegerValue!20688 (value!210606 (_ BitVec 32)) (text!48719 List!42507)) (IntegerValue!20689 (value!210607 Int) (text!48720 List!42507)) (Times!6896) (Or!6896) (Equal!6896) (Minus!6896) (Broken!34484 (value!210608 List!42507)) (And!6896) (Div!6896) (LessEqual!6896) (Mod!6896) (Concat!18467) (Not!6896) (Plus!6896) (SpaceValue!6896 (value!210609 List!42507)) (IntegerValue!20690 (value!210610 Int) (text!48721 List!42507)) (StringLiteralValue!20689 (text!48722 List!42507)) (FloatLiteralValue!13793 (text!48723 List!42507)) (BytesLiteralValue!6896 (value!210611 List!42507)) (CommentValue!13793 (value!210612 List!42507)) (StringLiteralValue!20690 (value!210613 List!42507)) (ErrorTokenValue!6896 (msg!6957 List!42507)) )
))
(declare-datatypes ((Regex!11571 0))(
  ( (ElementMatch!11571 (c!688733 C!23328)) (Concat!18468 (regOne!23654 Regex!11571) (regTwo!23654 Regex!11571)) (EmptyExpr!11571) (Star!11571 (reg!11900 Regex!11571)) (EmptyLang!11571) (Union!11571 (regOne!23655 Regex!11571) (regTwo!23655 Regex!11571)) )
))
(declare-datatypes ((String!48198 0))(
  ( (String!48199 (value!210614 String)) )
))
(declare-datatypes ((TokenValueInjection!13220 0))(
  ( (TokenValueInjection!13221 (toValue!9154 Int) (toChars!9013 Int)) )
))
(declare-datatypes ((Rule!13132 0))(
  ( (Rule!13133 (regex!6666 Regex!11571) (tag!7526 String!48198) (isSeparator!6666 Bool) (transformation!6666 TokenValueInjection!13220)) )
))
(declare-datatypes ((List!42508 0))(
  ( (Nil!42384) (Cons!42384 (h!47804 Rule!13132) (t!330875 List!42508)) )
))
(declare-fun rules!2999 () List!42508)

(declare-datatypes ((Token!12470 0))(
  ( (Token!12471 (value!210615 TokenValue!6896) (rule!9654 Rule!13132) (size!31712 Int) (originalCharacters!7266 List!42506)) )
))
(declare-fun token!484 () Token!12470)

(declare-fun contains!8448 (List!42508 Rule!13132) Bool)

(assert (=> b!3970826 (= res!1607344 (not (contains!8448 rules!2999 (rule!9654 token!484))))))

(declare-fun lt!1390722 () List!42506)

(declare-fun suffixResult!105 () List!42506)

(assert (=> b!3970826 (= lt!1390722 suffixResult!105)))

(declare-fun lt!1390725 () List!42506)

(declare-datatypes ((Unit!61034 0))(
  ( (Unit!61035) )
))
(declare-fun lt!1390734 () Unit!61034)

(declare-fun lt!1390743 () List!42506)

(declare-fun lemmaSamePrefixThenSameSuffix!1940 (List!42506 List!42506 List!42506 List!42506 List!42506) Unit!61034)

(assert (=> b!3970826 (= lt!1390734 (lemmaSamePrefixThenSameSuffix!1940 lt!1390743 lt!1390722 lt!1390743 suffixResult!105 lt!1390725))))

(declare-fun lt!1390740 () List!42506)

(declare-fun isPrefix!3753 (List!42506 List!42506) Bool)

(assert (=> b!3970826 (isPrefix!3753 lt!1390743 lt!1390740)))

(declare-fun lt!1390741 () Unit!61034)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2596 (List!42506 List!42506) Unit!61034)

(assert (=> b!3970826 (= lt!1390741 (lemmaConcatTwoListThenFirstIsPrefix!2596 lt!1390743 lt!1390722))))

(declare-fun b!3970827 () Bool)

(declare-fun e!2459725 () Bool)

(declare-fun e!2459738 () Bool)

(assert (=> b!3970827 (= e!2459725 (not e!2459738))))

(declare-fun res!1607357 () Bool)

(assert (=> b!3970827 (=> res!1607357 e!2459738)))

(declare-fun lt!1390731 () List!42506)

(assert (=> b!3970827 (= res!1607357 (not (= lt!1390731 lt!1390725)))))

(declare-fun ++!11068 (List!42506 List!42506) List!42506)

(assert (=> b!3970827 (= lt!1390731 (++!11068 lt!1390743 suffixResult!105))))

(declare-fun lt!1390738 () Unit!61034)

(declare-fun lemmaInv!881 (TokenValueInjection!13220) Unit!61034)

(assert (=> b!3970827 (= lt!1390738 (lemmaInv!881 (transformation!6666 (rule!9654 token!484))))))

(declare-datatypes ((LexerInterface!6255 0))(
  ( (LexerInterfaceExt!6252 (__x!26010 Int)) (Lexer!6253) )
))
(declare-fun thiss!21717 () LexerInterface!6255)

(declare-fun ruleValid!2598 (LexerInterface!6255 Rule!13132) Bool)

(assert (=> b!3970827 (ruleValid!2598 thiss!21717 (rule!9654 token!484))))

(declare-fun lt!1390724 () Unit!61034)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1672 (LexerInterface!6255 Rule!13132 List!42508) Unit!61034)

(assert (=> b!3970827 (= lt!1390724 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1672 thiss!21717 (rule!9654 token!484) rules!2999))))

(declare-fun b!3970828 () Bool)

(declare-fun e!2459739 () Bool)

(assert (=> b!3970828 (= e!2459739 e!2459725)))

(declare-fun res!1607356 () Bool)

(assert (=> b!3970828 (=> (not res!1607356) (not e!2459725))))

(declare-datatypes ((tuple2!41644 0))(
  ( (tuple2!41645 (_1!23956 Token!12470) (_2!23956 List!42506)) )
))
(declare-datatypes ((Option!9080 0))(
  ( (None!9079) (Some!9079 (v!39427 tuple2!41644)) )
))
(declare-fun lt!1390727 () Option!9080)

(assert (=> b!3970828 (= res!1607356 (= lt!1390727 (Some!9079 (tuple2!41645 token!484 suffixResult!105))))))

(declare-fun maxPrefix!3553 (LexerInterface!6255 List!42508 List!42506) Option!9080)

(assert (=> b!3970828 (= lt!1390727 (maxPrefix!3553 thiss!21717 rules!2999 lt!1390725))))

(declare-fun prefix!494 () List!42506)

(declare-fun suffix!1299 () List!42506)

(assert (=> b!3970828 (= lt!1390725 (++!11068 prefix!494 suffix!1299))))

(declare-fun b!3970830 () Bool)

(declare-fun e!2459732 () Bool)

(declare-fun e!2459741 () Bool)

(declare-fun tp!1210730 () Bool)

(declare-fun inv!56631 (String!48198) Bool)

(declare-fun inv!56634 (TokenValueInjection!13220) Bool)

(assert (=> b!3970830 (= e!2459741 (and tp!1210730 (inv!56631 (tag!7526 (h!47804 rules!2999))) (inv!56634 (transformation!6666 (h!47804 rules!2999))) e!2459732))))

(declare-fun b!3970831 () Bool)

(declare-fun e!2459730 () Bool)

(declare-fun tp_is_empty!20113 () Bool)

(declare-fun tp!1210726 () Bool)

(assert (=> b!3970831 (= e!2459730 (and tp_is_empty!20113 tp!1210726))))

(declare-fun b!3970832 () Bool)

(declare-fun res!1607348 () Bool)

(assert (=> b!3970832 (=> res!1607348 e!2459720)))

(declare-fun isEmpty!25355 (List!42506) Bool)

(assert (=> b!3970832 (= res!1607348 (isEmpty!25355 lt!1390743))))

(declare-fun b!3970833 () Bool)

(declare-fun e!2459724 () Bool)

(declare-fun tp!1210729 () Bool)

(assert (=> b!3970833 (= e!2459724 (and e!2459741 tp!1210729))))

(declare-fun e!2459742 () Bool)

(assert (=> b!3970834 (= e!2459742 (and tp!1210728 tp!1210732))))

(assert (=> b!3970835 (= e!2459732 (and tp!1210731 tp!1210733))))

(declare-fun b!3970836 () Bool)

(declare-fun e!2459733 () Bool)

(assert (=> b!3970836 (= e!2459720 e!2459733)))

(declare-fun res!1607354 () Bool)

(assert (=> b!3970836 (=> res!1607354 e!2459733)))

(declare-fun lt!1390726 () Int)

(declare-fun lt!1390739 () BalanceConc!25348)

(declare-fun apply!9877 (TokenValueInjection!13220 BalanceConc!25348) TokenValue!6896)

(assert (=> b!3970836 (= res!1607354 (not (= lt!1390727 (Some!9079 (tuple2!41645 (Token!12471 (apply!9877 (transformation!6666 (rule!9654 token!484)) lt!1390739) (rule!9654 token!484) lt!1390726 lt!1390743) suffixResult!105)))))))

(declare-fun lt!1390733 () Unit!61034)

(declare-fun lemmaSemiInverse!1812 (TokenValueInjection!13220 BalanceConc!25348) Unit!61034)

(assert (=> b!3970836 (= lt!1390733 (lemmaSemiInverse!1812 (transformation!6666 (rule!9654 token!484)) lt!1390739))))

(declare-fun seqFromList!4905 (List!42506) BalanceConc!25348)

(assert (=> b!3970836 (= lt!1390739 (seqFromList!4905 lt!1390743))))

(declare-fun tp!1210738 () Bool)

(declare-fun b!3970837 () Bool)

(declare-fun e!2459731 () Bool)

(assert (=> b!3970837 (= e!2459731 (and tp!1210738 (inv!56631 (tag!7526 (rule!9654 token!484))) (inv!56634 (transformation!6666 (rule!9654 token!484))) e!2459742))))

(declare-fun b!3970838 () Bool)

(declare-fun e!2459723 () Bool)

(declare-fun tp!1210735 () Bool)

(assert (=> b!3970838 (= e!2459723 (and tp_is_empty!20113 tp!1210735))))

(declare-fun b!3970839 () Bool)

(declare-fun e!2459727 () Bool)

(declare-fun tp!1210727 () Bool)

(assert (=> b!3970839 (= e!2459727 (and tp_is_empty!20113 tp!1210727))))

(declare-fun b!3970840 () Bool)

(declare-fun e!2459726 () Bool)

(declare-fun e!2459735 () Bool)

(assert (=> b!3970840 (= e!2459726 e!2459735)))

(declare-fun res!1607351 () Bool)

(assert (=> b!3970840 (=> res!1607351 e!2459735)))

(declare-fun lt!1390730 () List!42506)

(assert (=> b!3970840 (= res!1607351 (not (= lt!1390730 prefix!494)))))

(declare-fun lt!1390735 () List!42506)

(assert (=> b!3970840 (= lt!1390730 (++!11068 lt!1390743 lt!1390735))))

(declare-fun getSuffix!2184 (List!42506 List!42506) List!42506)

(assert (=> b!3970840 (= lt!1390735 (getSuffix!2184 prefix!494 lt!1390743))))

(assert (=> b!3970840 (isPrefix!3753 lt!1390743 prefix!494)))

(declare-fun lt!1390728 () Unit!61034)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!331 (List!42506 List!42506 List!42506) Unit!61034)

(assert (=> b!3970840 (= lt!1390728 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!331 prefix!494 lt!1390743 lt!1390725))))

(declare-fun b!3970841 () Bool)

(declare-fun e!2459722 () Bool)

(declare-fun tp!1210736 () Bool)

(assert (=> b!3970841 (= e!2459722 (and tp_is_empty!20113 tp!1210736))))

(declare-fun b!3970842 () Bool)

(assert (=> b!3970842 (= e!2459738 e!2459726)))

(declare-fun res!1607353 () Bool)

(assert (=> b!3970842 (=> res!1607353 e!2459726)))

(assert (=> b!3970842 (= res!1607353 (not (isPrefix!3753 lt!1390743 lt!1390725)))))

(assert (=> b!3970842 (isPrefix!3753 prefix!494 lt!1390725)))

(declare-fun lt!1390737 () Unit!61034)

(assert (=> b!3970842 (= lt!1390737 (lemmaConcatTwoListThenFirstIsPrefix!2596 prefix!494 suffix!1299))))

(assert (=> b!3970842 (isPrefix!3753 lt!1390743 lt!1390731)))

(declare-fun lt!1390723 () Unit!61034)

(assert (=> b!3970842 (= lt!1390723 (lemmaConcatTwoListThenFirstIsPrefix!2596 lt!1390743 suffixResult!105))))

(declare-fun b!3970843 () Bool)

(declare-fun res!1607343 () Bool)

(declare-fun e!2459729 () Bool)

(assert (=> b!3970843 (=> (not res!1607343) (not e!2459729))))

(declare-fun isEmpty!25356 (List!42508) Bool)

(assert (=> b!3970843 (= res!1607343 (not (isEmpty!25356 rules!2999)))))

(declare-fun b!3970844 () Bool)

(declare-fun e!2459721 () Bool)

(declare-fun tp!1210737 () Bool)

(assert (=> b!3970844 (= e!2459721 (and tp_is_empty!20113 tp!1210737))))

(declare-fun res!1607349 () Bool)

(assert (=> start!373632 (=> (not res!1607349) (not e!2459729))))

(get-info :version)

(assert (=> start!373632 (= res!1607349 ((_ is Lexer!6253) thiss!21717))))

(assert (=> start!373632 e!2459729))

(assert (=> start!373632 e!2459723))

(declare-fun e!2459728 () Bool)

(declare-fun inv!56635 (Token!12470) Bool)

(assert (=> start!373632 (and (inv!56635 token!484) e!2459728)))

(assert (=> start!373632 e!2459721))

(assert (=> start!373632 e!2459727))

(assert (=> start!373632 e!2459722))

(assert (=> start!373632 true))

(assert (=> start!373632 e!2459724))

(assert (=> start!373632 e!2459730))

(declare-fun b!3970829 () Bool)

(declare-fun tp!1210734 () Bool)

(declare-fun inv!21 (TokenValue!6896) Bool)

(assert (=> b!3970829 (= e!2459728 (and (inv!21 (value!210615 token!484)) e!2459731 tp!1210734))))

(declare-fun b!3970845 () Bool)

(declare-fun res!1607345 () Bool)

(assert (=> b!3970845 (=> (not res!1607345) (not e!2459729))))

(declare-fun rulesInvariant!5598 (LexerInterface!6255 List!42508) Bool)

(assert (=> b!3970845 (= res!1607345 (rulesInvariant!5598 thiss!21717 rules!2999))))

(declare-fun b!3970846 () Bool)

(assert (=> b!3970846 (= e!2459735 e!2459740)))

(declare-fun res!1607358 () Bool)

(assert (=> b!3970846 (=> res!1607358 e!2459740)))

(declare-fun lt!1390736 () List!42506)

(assert (=> b!3970846 (= res!1607358 (or (not (= lt!1390725 lt!1390736)) (not (= lt!1390725 lt!1390740))))))

(assert (=> b!3970846 (= lt!1390736 lt!1390740)))

(assert (=> b!3970846 (= lt!1390740 (++!11068 lt!1390743 lt!1390722))))

(assert (=> b!3970846 (= lt!1390736 (++!11068 lt!1390730 suffix!1299))))

(assert (=> b!3970846 (= lt!1390722 (++!11068 lt!1390735 suffix!1299))))

(declare-fun lt!1390742 () Unit!61034)

(declare-fun lemmaConcatAssociativity!2388 (List!42506 List!42506 List!42506) Unit!61034)

(assert (=> b!3970846 (= lt!1390742 (lemmaConcatAssociativity!2388 lt!1390743 lt!1390735 suffix!1299))))

(declare-fun b!3970847 () Bool)

(declare-fun res!1607350 () Bool)

(assert (=> b!3970847 (=> res!1607350 e!2459720)))

(assert (=> b!3970847 (= res!1607350 (not (= lt!1390725 lt!1390731)))))

(declare-fun b!3970848 () Bool)

(assert (=> b!3970848 (= e!2459729 e!2459739)))

(declare-fun res!1607346 () Bool)

(assert (=> b!3970848 (=> (not res!1607346) (not e!2459739))))

(declare-fun lt!1390729 () Int)

(assert (=> b!3970848 (= res!1607346 (>= lt!1390729 lt!1390726))))

(declare-fun size!31713 (List!42506) Int)

(assert (=> b!3970848 (= lt!1390726 (size!31713 lt!1390743))))

(assert (=> b!3970848 (= lt!1390729 (size!31713 prefix!494))))

(declare-fun list!15726 (BalanceConc!25348) List!42506)

(declare-fun charsOf!4482 (Token!12470) BalanceConc!25348)

(assert (=> b!3970848 (= lt!1390743 (list!15726 (charsOf!4482 token!484)))))

(declare-fun b!3970849 () Bool)

(declare-fun res!1607355 () Bool)

(assert (=> b!3970849 (=> (not res!1607355) (not e!2459729))))

(declare-fun newSuffix!27 () List!42506)

(assert (=> b!3970849 (= res!1607355 (isPrefix!3753 newSuffix!27 suffix!1299))))

(declare-fun b!3970850 () Bool)

(declare-fun res!1607352 () Bool)

(assert (=> b!3970850 (=> (not res!1607352) (not e!2459739))))

(declare-fun newSuffixResult!27 () List!42506)

(assert (=> b!3970850 (= res!1607352 (= (++!11068 lt!1390743 newSuffixResult!27) (++!11068 prefix!494 newSuffix!27)))))

(declare-fun b!3970851 () Bool)

(declare-fun res!1607347 () Bool)

(assert (=> b!3970851 (=> (not res!1607347) (not e!2459729))))

(assert (=> b!3970851 (= res!1607347 (>= (size!31713 suffix!1299) (size!31713 newSuffix!27)))))

(declare-fun b!3970852 () Bool)

(assert (=> b!3970852 (= e!2459733 true)))

(declare-fun lt!1390732 () Bool)

(declare-fun matchR!5552 (Regex!11571 List!42506) Bool)

(assert (=> b!3970852 (= lt!1390732 (matchR!5552 (regex!6666 (rule!9654 token!484)) lt!1390743))))

(assert (= (and start!373632 res!1607349) b!3970843))

(assert (= (and b!3970843 res!1607343) b!3970845))

(assert (= (and b!3970845 res!1607345) b!3970851))

(assert (= (and b!3970851 res!1607347) b!3970849))

(assert (= (and b!3970849 res!1607355) b!3970848))

(assert (= (and b!3970848 res!1607346) b!3970850))

(assert (= (and b!3970850 res!1607352) b!3970828))

(assert (= (and b!3970828 res!1607356) b!3970827))

(assert (= (and b!3970827 (not res!1607357)) b!3970842))

(assert (= (and b!3970842 (not res!1607353)) b!3970840))

(assert (= (and b!3970840 (not res!1607351)) b!3970846))

(assert (= (and b!3970846 (not res!1607358)) b!3970826))

(assert (= (and b!3970826 (not res!1607344)) b!3970847))

(assert (= (and b!3970847 (not res!1607350)) b!3970832))

(assert (= (and b!3970832 (not res!1607348)) b!3970836))

(assert (= (and b!3970836 (not res!1607354)) b!3970852))

(assert (= (and start!373632 ((_ is Cons!42382) prefix!494)) b!3970838))

(assert (= b!3970837 b!3970834))

(assert (= b!3970829 b!3970837))

(assert (= start!373632 b!3970829))

(assert (= (and start!373632 ((_ is Cons!42382) suffixResult!105)) b!3970844))

(assert (= (and start!373632 ((_ is Cons!42382) suffix!1299)) b!3970839))

(assert (= (and start!373632 ((_ is Cons!42382) newSuffix!27)) b!3970841))

(assert (= b!3970830 b!3970835))

(assert (= b!3970833 b!3970830))

(assert (= (and start!373632 ((_ is Cons!42384) rules!2999)) b!3970833))

(assert (= (and start!373632 ((_ is Cons!42382) newSuffixResult!27)) b!3970831))

(declare-fun m!4540967 () Bool)

(assert (=> b!3970845 m!4540967))

(declare-fun m!4540969 () Bool)

(assert (=> b!3970843 m!4540969))

(declare-fun m!4540971 () Bool)

(assert (=> b!3970849 m!4540971))

(declare-fun m!4540973 () Bool)

(assert (=> b!3970836 m!4540973))

(declare-fun m!4540975 () Bool)

(assert (=> b!3970836 m!4540975))

(declare-fun m!4540977 () Bool)

(assert (=> b!3970836 m!4540977))

(declare-fun m!4540979 () Bool)

(assert (=> b!3970852 m!4540979))

(declare-fun m!4540981 () Bool)

(assert (=> b!3970851 m!4540981))

(declare-fun m!4540983 () Bool)

(assert (=> b!3970851 m!4540983))

(declare-fun m!4540985 () Bool)

(assert (=> b!3970829 m!4540985))

(declare-fun m!4540987 () Bool)

(assert (=> b!3970846 m!4540987))

(declare-fun m!4540989 () Bool)

(assert (=> b!3970846 m!4540989))

(declare-fun m!4540991 () Bool)

(assert (=> b!3970846 m!4540991))

(declare-fun m!4540993 () Bool)

(assert (=> b!3970846 m!4540993))

(declare-fun m!4540995 () Bool)

(assert (=> b!3970827 m!4540995))

(declare-fun m!4540997 () Bool)

(assert (=> b!3970827 m!4540997))

(declare-fun m!4540999 () Bool)

(assert (=> b!3970827 m!4540999))

(declare-fun m!4541001 () Bool)

(assert (=> b!3970827 m!4541001))

(declare-fun m!4541003 () Bool)

(assert (=> start!373632 m!4541003))

(declare-fun m!4541005 () Bool)

(assert (=> b!3970840 m!4541005))

(declare-fun m!4541007 () Bool)

(assert (=> b!3970840 m!4541007))

(declare-fun m!4541009 () Bool)

(assert (=> b!3970840 m!4541009))

(declare-fun m!4541011 () Bool)

(assert (=> b!3970840 m!4541011))

(declare-fun m!4541013 () Bool)

(assert (=> b!3970826 m!4541013))

(declare-fun m!4541015 () Bool)

(assert (=> b!3970826 m!4541015))

(declare-fun m!4541017 () Bool)

(assert (=> b!3970826 m!4541017))

(declare-fun m!4541019 () Bool)

(assert (=> b!3970826 m!4541019))

(declare-fun m!4541021 () Bool)

(assert (=> b!3970837 m!4541021))

(declare-fun m!4541023 () Bool)

(assert (=> b!3970837 m!4541023))

(declare-fun m!4541025 () Bool)

(assert (=> b!3970848 m!4541025))

(declare-fun m!4541027 () Bool)

(assert (=> b!3970848 m!4541027))

(declare-fun m!4541029 () Bool)

(assert (=> b!3970848 m!4541029))

(assert (=> b!3970848 m!4541029))

(declare-fun m!4541031 () Bool)

(assert (=> b!3970848 m!4541031))

(declare-fun m!4541033 () Bool)

(assert (=> b!3970842 m!4541033))

(declare-fun m!4541035 () Bool)

(assert (=> b!3970842 m!4541035))

(declare-fun m!4541037 () Bool)

(assert (=> b!3970842 m!4541037))

(declare-fun m!4541039 () Bool)

(assert (=> b!3970842 m!4541039))

(declare-fun m!4541041 () Bool)

(assert (=> b!3970842 m!4541041))

(declare-fun m!4541043 () Bool)

(assert (=> b!3970828 m!4541043))

(declare-fun m!4541045 () Bool)

(assert (=> b!3970828 m!4541045))

(declare-fun m!4541047 () Bool)

(assert (=> b!3970832 m!4541047))

(declare-fun m!4541049 () Bool)

(assert (=> b!3970830 m!4541049))

(declare-fun m!4541051 () Bool)

(assert (=> b!3970830 m!4541051))

(declare-fun m!4541053 () Bool)

(assert (=> b!3970850 m!4541053))

(declare-fun m!4541055 () Bool)

(assert (=> b!3970850 m!4541055))

(check-sat (not b!3970851) (not b_next!110709) (not b!3970833) (not b!3970846) (not b!3970844) (not b!3970836) (not b!3970850) (not b!3970830) (not b!3970829) (not b_next!110707) (not b!3970837) (not start!373632) b_and!305247 b_and!305253 (not b!3970828) (not b!3970840) (not b!3970848) (not b!3970831) (not b!3970832) (not b!3970838) (not b!3970826) (not b!3970841) (not b!3970843) tp_is_empty!20113 (not b_next!110711) (not b!3970842) (not b!3970849) (not b_next!110705) b_and!305251 (not b!3970845) b_and!305249 (not b!3970827) (not b!3970839) (not b!3970852))
(check-sat (not b_next!110709) (not b_next!110711) (not b_next!110705) (not b_next!110707) b_and!305247 b_and!305253 b_and!305251 b_and!305249)
