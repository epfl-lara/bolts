; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!402198 () Bool)

(assert start!402198)

(declare-fun b!4208935 () Bool)

(declare-fun b_free!123123 () Bool)

(declare-fun b_next!123827 () Bool)

(assert (=> b!4208935 (= b_free!123123 (not b_next!123827))))

(declare-fun tp!1286793 () Bool)

(declare-fun b_and!331049 () Bool)

(assert (=> b!4208935 (= tp!1286793 b_and!331049)))

(declare-fun b_free!123125 () Bool)

(declare-fun b_next!123829 () Bool)

(assert (=> b!4208935 (= b_free!123125 (not b_next!123829))))

(declare-fun tp!1286789 () Bool)

(declare-fun b_and!331051 () Bool)

(assert (=> b!4208935 (= tp!1286789 b_and!331051)))

(declare-fun b!4208951 () Bool)

(declare-fun b_free!123127 () Bool)

(declare-fun b_next!123831 () Bool)

(assert (=> b!4208951 (= b_free!123127 (not b_next!123831))))

(declare-fun tp!1286779 () Bool)

(declare-fun b_and!331053 () Bool)

(assert (=> b!4208951 (= tp!1286779 b_and!331053)))

(declare-fun b_free!123129 () Bool)

(declare-fun b_next!123833 () Bool)

(assert (=> b!4208951 (= b_free!123129 (not b_next!123833))))

(declare-fun tp!1286782 () Bool)

(declare-fun b_and!331055 () Bool)

(assert (=> b!4208951 (= tp!1286782 b_and!331055)))

(declare-fun b!4208944 () Bool)

(declare-fun b_free!123131 () Bool)

(declare-fun b_next!123835 () Bool)

(assert (=> b!4208944 (= b_free!123131 (not b_next!123835))))

(declare-fun tp!1286788 () Bool)

(declare-fun b_and!331057 () Bool)

(assert (=> b!4208944 (= tp!1286788 b_and!331057)))

(declare-fun b_free!123133 () Bool)

(declare-fun b_next!123837 () Bool)

(assert (=> b!4208944 (= b_free!123133 (not b_next!123837))))

(declare-fun tp!1286791 () Bool)

(declare-fun b_and!331059 () Bool)

(assert (=> b!4208944 (= tp!1286791 b_and!331059)))

(declare-fun b!4208924 () Bool)

(declare-fun b_free!123135 () Bool)

(declare-fun b_next!123839 () Bool)

(assert (=> b!4208924 (= b_free!123135 (not b_next!123839))))

(declare-fun tp!1286792 () Bool)

(declare-fun b_and!331061 () Bool)

(assert (=> b!4208924 (= tp!1286792 b_and!331061)))

(declare-fun b_free!123137 () Bool)

(declare-fun b_next!123841 () Bool)

(assert (=> b!4208924 (= b_free!123137 (not b_next!123841))))

(declare-fun tp!1286777 () Bool)

(declare-fun b_and!331063 () Bool)

(assert (=> b!4208924 (= tp!1286777 b_and!331063)))

(declare-fun b!4208923 () Bool)

(declare-fun res!1728874 () Bool)

(declare-fun e!2612818 () Bool)

(assert (=> b!4208923 (=> res!1728874 e!2612818)))

(declare-datatypes ((C!25488 0))(
  ( (C!25489 (val!14906 Int)) )
))
(declare-datatypes ((List!46397 0))(
  ( (Nil!46273) (Cons!46273 (h!51693 C!25488) (t!347762 List!46397)) )
))
(declare-fun input!3517 () List!46397)

(declare-fun pBis!121 () List!46397)

(declare-fun suffixBis!41 () List!46397)

(declare-fun ++!11816 (List!46397 List!46397) List!46397)

(assert (=> b!4208923 (= res!1728874 (not (= (++!11816 pBis!121 suffixBis!41) input!3517)))))

(declare-fun e!2612819 () Bool)

(assert (=> b!4208924 (= e!2612819 (and tp!1286792 tp!1286777))))

(declare-fun b!4208925 () Bool)

(declare-fun res!1728872 () Bool)

(declare-fun e!2612825 () Bool)

(assert (=> b!4208925 (=> (not res!1728872) (not e!2612825))))

(declare-datatypes ((LexerInterface!7337 0))(
  ( (LexerInterfaceExt!7334 (__x!28167 Int)) (Lexer!7335) )
))
(declare-fun thiss!26544 () LexerInterface!7337)

(declare-datatypes ((List!46398 0))(
  ( (Nil!46274) (Cons!46274 (h!51694 (_ BitVec 16)) (t!347763 List!46398)) )
))
(declare-datatypes ((TokenValue!7972 0))(
  ( (FloatLiteralValue!15944 (text!56249 List!46398)) (TokenValueExt!7971 (__x!28168 Int)) (Broken!39860 (value!241150 List!46398)) (Object!8095) (End!7972) (Def!7972) (Underscore!7972) (Match!7972) (Else!7972) (Error!7972) (Case!7972) (If!7972) (Extends!7972) (Abstract!7972) (Class!7972) (Val!7972) (DelimiterValue!15944 (del!8032 List!46398)) (KeywordValue!7978 (value!241151 List!46398)) (CommentValue!15944 (value!241152 List!46398)) (WhitespaceValue!15944 (value!241153 List!46398)) (IndentationValue!7972 (value!241154 List!46398)) (String!53729) (Int32!7972) (Broken!39861 (value!241155 List!46398)) (Boolean!7973) (Unit!65392) (OperatorValue!7975 (op!8032 List!46398)) (IdentifierValue!15944 (value!241156 List!46398)) (IdentifierValue!15945 (value!241157 List!46398)) (WhitespaceValue!15945 (value!241158 List!46398)) (True!15944) (False!15944) (Broken!39862 (value!241159 List!46398)) (Broken!39863 (value!241160 List!46398)) (True!15945) (RightBrace!7972) (RightBracket!7972) (Colon!7972) (Null!7972) (Comma!7972) (LeftBracket!7972) (False!15945) (LeftBrace!7972) (ImaginaryLiteralValue!7972 (text!56250 List!46398)) (StringLiteralValue!23916 (value!241161 List!46398)) (EOFValue!7972 (value!241162 List!46398)) (IdentValue!7972 (value!241163 List!46398)) (DelimiterValue!15945 (value!241164 List!46398)) (DedentValue!7972 (value!241165 List!46398)) (NewLineValue!7972 (value!241166 List!46398)) (IntegerValue!23916 (value!241167 (_ BitVec 32)) (text!56251 List!46398)) (IntegerValue!23917 (value!241168 Int) (text!56252 List!46398)) (Times!7972) (Or!7972) (Equal!7972) (Minus!7972) (Broken!39864 (value!241169 List!46398)) (And!7972) (Div!7972) (LessEqual!7972) (Mod!7972) (Concat!20619) (Not!7972) (Plus!7972) (SpaceValue!7972 (value!241170 List!46398)) (IntegerValue!23918 (value!241171 Int) (text!56253 List!46398)) (StringLiteralValue!23917 (text!56254 List!46398)) (FloatLiteralValue!15945 (text!56255 List!46398)) (BytesLiteralValue!7972 (value!241172 List!46398)) (CommentValue!15945 (value!241173 List!46398)) (StringLiteralValue!23918 (value!241174 List!46398)) (ErrorTokenValue!7972 (msg!8033 List!46398)) )
))
(declare-datatypes ((IArray!27911 0))(
  ( (IArray!27912 (innerList!14013 List!46397)) )
))
(declare-datatypes ((Regex!12647 0))(
  ( (ElementMatch!12647 (c!717138 C!25488)) (Concat!20620 (regOne!25806 Regex!12647) (regTwo!25806 Regex!12647)) (EmptyExpr!12647) (Star!12647 (reg!12976 Regex!12647)) (EmptyLang!12647) (Union!12647 (regOne!25807 Regex!12647) (regTwo!25807 Regex!12647)) )
))
(declare-datatypes ((String!53730 0))(
  ( (String!53731 (value!241175 String)) )
))
(declare-datatypes ((Conc!13953 0))(
  ( (Node!13953 (left!34451 Conc!13953) (right!34781 Conc!13953) (csize!28136 Int) (cheight!14164 Int)) (Leaf!21568 (xs!17259 IArray!27911) (csize!28137 Int)) (Empty!13953) )
))
(declare-datatypes ((BalanceConc!27500 0))(
  ( (BalanceConc!27501 (c!717139 Conc!13953)) )
))
(declare-datatypes ((TokenValueInjection!15372 0))(
  ( (TokenValueInjection!15373 (toValue!10458 Int) (toChars!10317 Int)) )
))
(declare-datatypes ((Rule!15284 0))(
  ( (Rule!15285 (regex!7742 Regex!12647) (tag!8606 String!53730) (isSeparator!7742 Bool) (transformation!7742 TokenValueInjection!15372)) )
))
(declare-datatypes ((List!46399 0))(
  ( (Nil!46275) (Cons!46275 (h!51695 Rule!15284) (t!347764 List!46399)) )
))
(declare-fun rules!3967 () List!46399)

(declare-fun rulesInvariant!6548 (LexerInterface!7337 List!46399) Bool)

(assert (=> b!4208925 (= res!1728872 (rulesInvariant!6548 thiss!26544 rules!3967))))

(declare-fun b!4208926 () Bool)

(declare-fun res!1728882 () Bool)

(assert (=> b!4208926 (=> (not res!1728882) (not e!2612825))))

(declare-fun isPrefix!4601 (List!46397 List!46397) Bool)

(assert (=> b!4208926 (= res!1728882 (isPrefix!4601 pBis!121 input!3517))))

(declare-fun b!4208927 () Bool)

(declare-fun res!1728884 () Bool)

(assert (=> b!4208927 (=> res!1728884 e!2612818)))

(declare-fun rBis!178 () Rule!15284)

(get-info :version)

(assert (=> b!4208927 (= res!1728884 (or (and ((_ is Cons!46275) rules!3967) ((_ is Nil!46275) (t!347764 rules!3967))) (not ((_ is Cons!46275) rules!3967)) (not (= (h!51695 rules!3967) rBis!178))))))

(declare-fun b!4208928 () Bool)

(declare-fun e!2612820 () Bool)

(declare-fun tp_is_empty!22261 () Bool)

(declare-fun tp!1286783 () Bool)

(assert (=> b!4208928 (= e!2612820 (and tp_is_empty!22261 tp!1286783))))

(declare-fun b!4208929 () Bool)

(declare-fun e!2612813 () Bool)

(declare-fun e!2612816 () Bool)

(declare-fun tp!1286781 () Bool)

(assert (=> b!4208929 (= e!2612813 (and e!2612816 tp!1286781))))

(declare-fun e!2612832 () Bool)

(declare-fun tp!1286784 () Bool)

(declare-fun b!4208930 () Bool)

(declare-fun inv!60874 (String!53730) Bool)

(declare-fun inv!60877 (TokenValueInjection!15372) Bool)

(assert (=> b!4208930 (= e!2612816 (and tp!1286784 (inv!60874 (tag!8606 (h!51695 rules!3967))) (inv!60877 (transformation!7742 (h!51695 rules!3967))) e!2612832))))

(declare-fun b!4208931 () Bool)

(declare-fun e!2612821 () Bool)

(declare-fun tp!1286794 () Bool)

(assert (=> b!4208931 (= e!2612821 (and tp_is_empty!22261 tp!1286794))))

(declare-fun b!4208932 () Bool)

(declare-fun res!1728879 () Bool)

(assert (=> b!4208932 (=> (not res!1728879) (not e!2612825))))

(declare-fun isEmpty!27401 (List!46399) Bool)

(assert (=> b!4208932 (= res!1728879 (not (isEmpty!27401 rules!3967)))))

(declare-fun e!2612831 () Bool)

(declare-fun tp!1286786 () Bool)

(declare-fun e!2612824 () Bool)

(declare-datatypes ((Token!14186 0))(
  ( (Token!14187 (value!241176 TokenValue!7972) (rule!10852 Rule!15284) (size!33992 Int) (originalCharacters!8124 List!46397)) )
))
(declare-fun t!8364 () Token!14186)

(declare-fun b!4208933 () Bool)

(declare-fun inv!21 (TokenValue!7972) Bool)

(assert (=> b!4208933 (= e!2612831 (and (inv!21 (value!241176 t!8364)) e!2612824 tp!1286786))))

(assert (=> b!4208935 (= e!2612832 (and tp!1286793 tp!1286789))))

(declare-fun b!4208936 () Bool)

(declare-fun p!3001 () List!46397)

(declare-fun size!33993 (List!46397) Int)

(assert (=> b!4208936 (= e!2612818 (<= (size!33993 pBis!121) (size!33993 p!3001)))))

(declare-fun tp!1286795 () Bool)

(declare-fun e!2612830 () Bool)

(declare-fun b!4208937 () Bool)

(assert (=> b!4208937 (= e!2612824 (and tp!1286795 (inv!60874 (tag!8606 (rule!10852 t!8364))) (inv!60877 (transformation!7742 (rule!10852 t!8364))) e!2612830))))

(declare-fun b!4208938 () Bool)

(declare-fun res!1728883 () Bool)

(assert (=> b!4208938 (=> (not res!1728883) (not e!2612825))))

(declare-fun suffix!1557 () List!46397)

(declare-datatypes ((tuple2!44018 0))(
  ( (tuple2!44019 (_1!25143 Token!14186) (_2!25143 List!46397)) )
))
(declare-datatypes ((Option!9930 0))(
  ( (None!9929) (Some!9929 (v!40795 tuple2!44018)) )
))
(declare-fun maxPrefix!4377 (LexerInterface!7337 List!46399 List!46397) Option!9930)

(assert (=> b!4208938 (= res!1728883 (= (maxPrefix!4377 thiss!26544 rules!3967 input!3517) (Some!9929 (tuple2!44019 t!8364 suffix!1557))))))

(declare-fun b!4208939 () Bool)

(declare-fun res!1728877 () Bool)

(assert (=> b!4208939 (=> (not res!1728877) (not e!2612825))))

(declare-fun contains!9561 (List!46399 Rule!15284) Bool)

(assert (=> b!4208939 (= res!1728877 (contains!9561 rules!3967 rBis!178))))

(declare-fun b!4208940 () Bool)

(declare-fun e!2612812 () Bool)

(declare-fun tp!1286778 () Bool)

(assert (=> b!4208940 (= e!2612812 (and tp_is_empty!22261 tp!1286778))))

(declare-fun b!4208941 () Bool)

(declare-fun e!2612822 () Bool)

(declare-fun tp!1286787 () Bool)

(assert (=> b!4208941 (= e!2612822 (and tp_is_empty!22261 tp!1286787))))

(declare-fun b!4208942 () Bool)

(declare-fun e!2612811 () Bool)

(declare-fun tp!1286780 () Bool)

(assert (=> b!4208942 (= e!2612811 (and tp_is_empty!22261 tp!1286780))))

(declare-fun e!2612833 () Bool)

(declare-fun e!2612823 () Bool)

(declare-fun b!4208943 () Bool)

(declare-fun tp!1286796 () Bool)

(assert (=> b!4208943 (= e!2612823 (and tp!1286796 (inv!60874 (tag!8606 rBis!178)) (inv!60877 (transformation!7742 rBis!178)) e!2612833))))

(assert (=> b!4208944 (= e!2612833 (and tp!1286788 tp!1286791))))

(declare-fun b!4208945 () Bool)

(declare-fun res!1728881 () Bool)

(assert (=> b!4208945 (=> res!1728881 e!2612818)))

(declare-fun tBis!41 () Token!14186)

(assert (=> b!4208945 (= res!1728881 (not (= (rule!10852 tBis!41) rBis!178)))))

(declare-fun e!2612829 () Bool)

(declare-fun b!4208946 () Bool)

(declare-fun tp!1286785 () Bool)

(declare-fun e!2612827 () Bool)

(assert (=> b!4208946 (= e!2612829 (and (inv!21 (value!241176 tBis!41)) e!2612827 tp!1286785))))

(declare-fun b!4208947 () Bool)

(declare-fun res!1728885 () Bool)

(assert (=> b!4208947 (=> (not res!1728885) (not e!2612825))))

(declare-fun ruleValid!3454 (LexerInterface!7337 Rule!15284) Bool)

(assert (=> b!4208947 (= res!1728885 (ruleValid!3454 thiss!26544 rBis!178))))

(declare-fun b!4208948 () Bool)

(declare-fun tp!1286790 () Bool)

(assert (=> b!4208948 (= e!2612827 (and tp!1286790 (inv!60874 (tag!8606 (rule!10852 tBis!41))) (inv!60877 (transformation!7742 (rule!10852 tBis!41))) e!2612819))))

(declare-fun res!1728875 () Bool)

(assert (=> start!402198 (=> (not res!1728875) (not e!2612825))))

(assert (=> start!402198 (= res!1728875 ((_ is Lexer!7335) thiss!26544))))

(assert (=> start!402198 e!2612825))

(declare-fun inv!60878 (Token!14186) Bool)

(assert (=> start!402198 (and (inv!60878 tBis!41) e!2612829)))

(assert (=> start!402198 true))

(assert (=> start!402198 e!2612823))

(assert (=> start!402198 e!2612811))

(assert (=> start!402198 e!2612813))

(assert (=> start!402198 e!2612812))

(assert (=> start!402198 (and (inv!60878 t!8364) e!2612831)))

(assert (=> start!402198 e!2612820))

(assert (=> start!402198 e!2612821))

(assert (=> start!402198 e!2612822))

(declare-fun b!4208934 () Bool)

(declare-fun res!1728876 () Bool)

(assert (=> b!4208934 (=> res!1728876 e!2612818)))

(declare-fun list!16729 (BalanceConc!27500) List!46397)

(declare-fun charsOf!5165 (Token!14186) BalanceConc!27500)

(assert (=> b!4208934 (= res!1728876 (not (= (list!16729 (charsOf!5165 tBis!41)) pBis!121)))))

(declare-fun b!4208949 () Bool)

(declare-fun res!1728878 () Bool)

(assert (=> b!4208949 (=> (not res!1728878) (not e!2612825))))

(assert (=> b!4208949 (= res!1728878 (= (++!11816 p!3001 suffix!1557) input!3517))))

(declare-fun b!4208950 () Bool)

(assert (=> b!4208950 (= e!2612825 (not e!2612818))))

(declare-fun res!1728873 () Bool)

(assert (=> b!4208950 (=> res!1728873 e!2612818)))

(declare-fun maxPrefixOneRule!3332 (LexerInterface!7337 Rule!15284 List!46397) Option!9930)

(assert (=> b!4208950 (= res!1728873 (not (= (maxPrefixOneRule!3332 thiss!26544 rBis!178 input!3517) (Some!9929 (tuple2!44019 tBis!41 suffixBis!41)))))))

(assert (=> b!4208950 (isPrefix!4601 input!3517 input!3517)))

(declare-datatypes ((Unit!65393 0))(
  ( (Unit!65394) )
))
(declare-fun lt!1498526 () Unit!65393)

(declare-fun lemmaIsPrefixRefl!3018 (List!46397 List!46397) Unit!65393)

(assert (=> b!4208950 (= lt!1498526 (lemmaIsPrefixRefl!3018 input!3517 input!3517))))

(assert (=> b!4208951 (= e!2612830 (and tp!1286779 tp!1286782))))

(declare-fun b!4208952 () Bool)

(declare-fun res!1728880 () Bool)

(assert (=> b!4208952 (=> (not res!1728880) (not e!2612825))))

(assert (=> b!4208952 (= res!1728880 (isPrefix!4601 p!3001 input!3517))))

(assert (= (and start!402198 res!1728875) b!4208949))

(assert (= (and b!4208949 res!1728878) b!4208952))

(assert (= (and b!4208952 res!1728880) b!4208926))

(assert (= (and b!4208926 res!1728882) b!4208932))

(assert (= (and b!4208932 res!1728879) b!4208925))

(assert (= (and b!4208925 res!1728872) b!4208939))

(assert (= (and b!4208939 res!1728877) b!4208938))

(assert (= (and b!4208938 res!1728883) b!4208947))

(assert (= (and b!4208947 res!1728885) b!4208950))

(assert (= (and b!4208950 (not res!1728873)) b!4208945))

(assert (= (and b!4208945 (not res!1728881)) b!4208934))

(assert (= (and b!4208934 (not res!1728876)) b!4208923))

(assert (= (and b!4208923 (not res!1728874)) b!4208927))

(assert (= (and b!4208927 (not res!1728884)) b!4208936))

(assert (= b!4208948 b!4208924))

(assert (= b!4208946 b!4208948))

(assert (= start!402198 b!4208946))

(assert (= b!4208943 b!4208944))

(assert (= start!402198 b!4208943))

(assert (= (and start!402198 ((_ is Cons!46273) p!3001)) b!4208942))

(assert (= b!4208930 b!4208935))

(assert (= b!4208929 b!4208930))

(assert (= (and start!402198 ((_ is Cons!46275) rules!3967)) b!4208929))

(assert (= (and start!402198 ((_ is Cons!46273) input!3517)) b!4208940))

(assert (= b!4208937 b!4208951))

(assert (= b!4208933 b!4208937))

(assert (= start!402198 b!4208933))

(assert (= (and start!402198 ((_ is Cons!46273) pBis!121)) b!4208928))

(assert (= (and start!402198 ((_ is Cons!46273) suffix!1557)) b!4208931))

(assert (= (and start!402198 ((_ is Cons!46273) suffixBis!41)) b!4208941))

(declare-fun m!4796879 () Bool)

(assert (=> b!4208947 m!4796879))

(declare-fun m!4796881 () Bool)

(assert (=> b!4208925 m!4796881))

(declare-fun m!4796883 () Bool)

(assert (=> b!4208926 m!4796883))

(declare-fun m!4796885 () Bool)

(assert (=> b!4208943 m!4796885))

(declare-fun m!4796887 () Bool)

(assert (=> b!4208943 m!4796887))

(declare-fun m!4796889 () Bool)

(assert (=> b!4208933 m!4796889))

(declare-fun m!4796891 () Bool)

(assert (=> b!4208939 m!4796891))

(declare-fun m!4796893 () Bool)

(assert (=> b!4208923 m!4796893))

(declare-fun m!4796895 () Bool)

(assert (=> b!4208930 m!4796895))

(declare-fun m!4796897 () Bool)

(assert (=> b!4208930 m!4796897))

(declare-fun m!4796899 () Bool)

(assert (=> b!4208938 m!4796899))

(declare-fun m!4796901 () Bool)

(assert (=> b!4208937 m!4796901))

(declare-fun m!4796903 () Bool)

(assert (=> b!4208937 m!4796903))

(declare-fun m!4796905 () Bool)

(assert (=> b!4208950 m!4796905))

(declare-fun m!4796907 () Bool)

(assert (=> b!4208950 m!4796907))

(declare-fun m!4796909 () Bool)

(assert (=> b!4208950 m!4796909))

(declare-fun m!4796911 () Bool)

(assert (=> start!402198 m!4796911))

(declare-fun m!4796913 () Bool)

(assert (=> start!402198 m!4796913))

(declare-fun m!4796915 () Bool)

(assert (=> b!4208949 m!4796915))

(declare-fun m!4796917 () Bool)

(assert (=> b!4208932 m!4796917))

(declare-fun m!4796919 () Bool)

(assert (=> b!4208946 m!4796919))

(declare-fun m!4796921 () Bool)

(assert (=> b!4208952 m!4796921))

(declare-fun m!4796923 () Bool)

(assert (=> b!4208934 m!4796923))

(assert (=> b!4208934 m!4796923))

(declare-fun m!4796925 () Bool)

(assert (=> b!4208934 m!4796925))

(declare-fun m!4796927 () Bool)

(assert (=> b!4208936 m!4796927))

(declare-fun m!4796929 () Bool)

(assert (=> b!4208936 m!4796929))

(declare-fun m!4796931 () Bool)

(assert (=> b!4208948 m!4796931))

(declare-fun m!4796933 () Bool)

(assert (=> b!4208948 m!4796933))

(check-sat (not b!4208933) b_and!331053 (not b!4208925) (not b_next!123829) (not b_next!123833) (not b!4208938) (not b!4208934) (not b_next!123835) (not b!4208940) (not b!4208952) (not b_next!123827) (not b!4208950) (not b!4208946) b_and!331057 (not b_next!123839) (not b!4208929) (not b!4208937) b_and!331059 b_and!331049 b_and!331061 (not b!4208936) (not b!4208923) b_and!331063 (not b!4208947) (not b!4208941) (not b!4208943) (not b_next!123837) (not b!4208926) (not b_next!123841) (not b!4208948) (not b!4208939) (not b!4208928) b_and!331055 (not b!4208932) (not b!4208949) tp_is_empty!22261 (not b!4208931) (not b!4208930) (not start!402198) (not b_next!123831) (not b!4208942) b_and!331051)
(check-sat b_and!331053 (not b_next!123829) (not b_next!123833) (not b_next!123827) b_and!331057 (not b_next!123839) b_and!331061 b_and!331063 (not b_next!123835) (not b_next!123837) (not b_next!123841) b_and!331055 (not b_next!123831) b_and!331051 b_and!331059 b_and!331049)
(get-model)

(declare-fun d!1240539 () Bool)

(declare-fun e!2612843 () Bool)

(assert (=> d!1240539 e!2612843))

(declare-fun res!1728906 () Bool)

(assert (=> d!1240539 (=> res!1728906 e!2612843)))

(declare-fun lt!1498529 () Bool)

(assert (=> d!1240539 (= res!1728906 (not lt!1498529))))

(declare-fun e!2612841 () Bool)

(assert (=> d!1240539 (= lt!1498529 e!2612841)))

(declare-fun res!1728905 () Bool)

(assert (=> d!1240539 (=> res!1728905 e!2612841)))

(assert (=> d!1240539 (= res!1728905 ((_ is Nil!46273) p!3001))))

(assert (=> d!1240539 (= (isPrefix!4601 p!3001 input!3517) lt!1498529)))

(declare-fun b!4208964 () Bool)

(assert (=> b!4208964 (= e!2612843 (>= (size!33993 input!3517) (size!33993 p!3001)))))

(declare-fun b!4208961 () Bool)

(declare-fun e!2612842 () Bool)

(assert (=> b!4208961 (= e!2612841 e!2612842)))

(declare-fun res!1728904 () Bool)

(assert (=> b!4208961 (=> (not res!1728904) (not e!2612842))))

(assert (=> b!4208961 (= res!1728904 (not ((_ is Nil!46273) input!3517)))))

(declare-fun b!4208963 () Bool)

(declare-fun tail!6777 (List!46397) List!46397)

(assert (=> b!4208963 (= e!2612842 (isPrefix!4601 (tail!6777 p!3001) (tail!6777 input!3517)))))

(declare-fun b!4208962 () Bool)

(declare-fun res!1728903 () Bool)

(assert (=> b!4208962 (=> (not res!1728903) (not e!2612842))))

(declare-fun head!8930 (List!46397) C!25488)

(assert (=> b!4208962 (= res!1728903 (= (head!8930 p!3001) (head!8930 input!3517)))))

(assert (= (and d!1240539 (not res!1728905)) b!4208961))

(assert (= (and b!4208961 res!1728904) b!4208962))

(assert (= (and b!4208962 res!1728903) b!4208963))

(assert (= (and d!1240539 (not res!1728906)) b!4208964))

(declare-fun m!4796935 () Bool)

(assert (=> b!4208964 m!4796935))

(assert (=> b!4208964 m!4796929))

(declare-fun m!4796937 () Bool)

(assert (=> b!4208963 m!4796937))

(declare-fun m!4796939 () Bool)

(assert (=> b!4208963 m!4796939))

(assert (=> b!4208963 m!4796937))

(assert (=> b!4208963 m!4796939))

(declare-fun m!4796941 () Bool)

(assert (=> b!4208963 m!4796941))

(declare-fun m!4796943 () Bool)

(assert (=> b!4208962 m!4796943))

(declare-fun m!4796945 () Bool)

(assert (=> b!4208962 m!4796945))

(assert (=> b!4208952 d!1240539))

(declare-fun d!1240543 () Bool)

(assert (=> d!1240543 (= (inv!60874 (tag!8606 (h!51695 rules!3967))) (= (mod (str.len (value!241175 (tag!8606 (h!51695 rules!3967)))) 2) 0))))

(assert (=> b!4208930 d!1240543))

(declare-fun d!1240545 () Bool)

(declare-fun res!1728909 () Bool)

(declare-fun e!2612846 () Bool)

(assert (=> d!1240545 (=> (not res!1728909) (not e!2612846))))

(declare-fun semiInverseModEq!3361 (Int Int) Bool)

(assert (=> d!1240545 (= res!1728909 (semiInverseModEq!3361 (toChars!10317 (transformation!7742 (h!51695 rules!3967))) (toValue!10458 (transformation!7742 (h!51695 rules!3967)))))))

(assert (=> d!1240545 (= (inv!60877 (transformation!7742 (h!51695 rules!3967))) e!2612846)))

(declare-fun b!4208967 () Bool)

(declare-fun equivClasses!3260 (Int Int) Bool)

(assert (=> b!4208967 (= e!2612846 (equivClasses!3260 (toChars!10317 (transformation!7742 (h!51695 rules!3967))) (toValue!10458 (transformation!7742 (h!51695 rules!3967)))))))

(assert (= (and d!1240545 res!1728909) b!4208967))

(declare-fun m!4796947 () Bool)

(assert (=> d!1240545 m!4796947))

(declare-fun m!4796949 () Bool)

(assert (=> b!4208967 m!4796949))

(assert (=> b!4208930 d!1240545))

(declare-fun b!4209094 () Bool)

(declare-fun e!2612924 () Bool)

(declare-fun lt!1498572 () Option!9930)

(declare-fun get!15051 (Option!9930) tuple2!44018)

(assert (=> b!4209094 (= e!2612924 (= (size!33992 (_1!25143 (get!15051 lt!1498572))) (size!33993 (originalCharacters!8124 (_1!25143 (get!15051 lt!1498572))))))))

(declare-fun b!4209095 () Bool)

(declare-fun res!1729006 () Bool)

(assert (=> b!4209095 (=> (not res!1729006) (not e!2612924))))

(declare-fun apply!10681 (TokenValueInjection!15372 BalanceConc!27500) TokenValue!7972)

(declare-fun seqFromList!5741 (List!46397) BalanceConc!27500)

(assert (=> b!4209095 (= res!1729006 (= (value!241176 (_1!25143 (get!15051 lt!1498572))) (apply!10681 (transformation!7742 (rule!10852 (_1!25143 (get!15051 lt!1498572)))) (seqFromList!5741 (originalCharacters!8124 (_1!25143 (get!15051 lt!1498572)))))))))

(declare-fun b!4209096 () Bool)

(declare-fun e!2612922 () Option!9930)

(assert (=> b!4209096 (= e!2612922 None!9929)))

(declare-fun d!1240547 () Bool)

(declare-fun e!2612923 () Bool)

(assert (=> d!1240547 e!2612923))

(declare-fun res!1729004 () Bool)

(assert (=> d!1240547 (=> res!1729004 e!2612923)))

(declare-fun isEmpty!27404 (Option!9930) Bool)

(assert (=> d!1240547 (= res!1729004 (isEmpty!27404 lt!1498572))))

(assert (=> d!1240547 (= lt!1498572 e!2612922)))

(declare-fun c!717154 () Bool)

(declare-datatypes ((tuple2!44022 0))(
  ( (tuple2!44023 (_1!25145 List!46397) (_2!25145 List!46397)) )
))
(declare-fun lt!1498573 () tuple2!44022)

(declare-fun isEmpty!27405 (List!46397) Bool)

(assert (=> d!1240547 (= c!717154 (isEmpty!27405 (_1!25145 lt!1498573)))))

(declare-fun findLongestMatch!1554 (Regex!12647 List!46397) tuple2!44022)

(assert (=> d!1240547 (= lt!1498573 (findLongestMatch!1554 (regex!7742 rBis!178) input!3517))))

(assert (=> d!1240547 (ruleValid!3454 thiss!26544 rBis!178)))

(assert (=> d!1240547 (= (maxPrefixOneRule!3332 thiss!26544 rBis!178 input!3517) lt!1498572)))

(declare-fun b!4209097 () Bool)

(declare-fun res!1729002 () Bool)

(assert (=> b!4209097 (=> (not res!1729002) (not e!2612924))))

(assert (=> b!4209097 (= res!1729002 (< (size!33993 (_2!25143 (get!15051 lt!1498572))) (size!33993 input!3517)))))

(declare-fun b!4209098 () Bool)

(declare-fun e!2612925 () Bool)

(declare-fun matchR!6360 (Regex!12647 List!46397) Bool)

(declare-fun findLongestMatchInner!1641 (Regex!12647 List!46397 Int List!46397 List!46397 Int) tuple2!44022)

(assert (=> b!4209098 (= e!2612925 (matchR!6360 (regex!7742 rBis!178) (_1!25145 (findLongestMatchInner!1641 (regex!7742 rBis!178) Nil!46273 (size!33993 Nil!46273) input!3517 input!3517 (size!33993 input!3517)))))))

(declare-fun b!4209099 () Bool)

(declare-fun size!33995 (BalanceConc!27500) Int)

(assert (=> b!4209099 (= e!2612922 (Some!9929 (tuple2!44019 (Token!14187 (apply!10681 (transformation!7742 rBis!178) (seqFromList!5741 (_1!25145 lt!1498573))) rBis!178 (size!33995 (seqFromList!5741 (_1!25145 lt!1498573))) (_1!25145 lt!1498573)) (_2!25145 lt!1498573))))))

(declare-fun lt!1498574 () Unit!65393)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1614 (Regex!12647 List!46397) Unit!65393)

(assert (=> b!4209099 (= lt!1498574 (longestMatchIsAcceptedByMatchOrIsEmpty!1614 (regex!7742 rBis!178) input!3517))))

(declare-fun res!1729008 () Bool)

(assert (=> b!4209099 (= res!1729008 (isEmpty!27405 (_1!25145 (findLongestMatchInner!1641 (regex!7742 rBis!178) Nil!46273 (size!33993 Nil!46273) input!3517 input!3517 (size!33993 input!3517)))))))

(assert (=> b!4209099 (=> res!1729008 e!2612925)))

(assert (=> b!4209099 e!2612925))

(declare-fun lt!1498575 () Unit!65393)

(assert (=> b!4209099 (= lt!1498575 lt!1498574)))

(declare-fun lt!1498576 () Unit!65393)

(declare-fun lemmaSemiInverse!2482 (TokenValueInjection!15372 BalanceConc!27500) Unit!65393)

(assert (=> b!4209099 (= lt!1498576 (lemmaSemiInverse!2482 (transformation!7742 rBis!178) (seqFromList!5741 (_1!25145 lt!1498573))))))

(declare-fun b!4209100 () Bool)

(declare-fun res!1729005 () Bool)

(assert (=> b!4209100 (=> (not res!1729005) (not e!2612924))))

(assert (=> b!4209100 (= res!1729005 (= (++!11816 (list!16729 (charsOf!5165 (_1!25143 (get!15051 lt!1498572)))) (_2!25143 (get!15051 lt!1498572))) input!3517))))

(declare-fun b!4209101 () Bool)

(declare-fun res!1729007 () Bool)

(assert (=> b!4209101 (=> (not res!1729007) (not e!2612924))))

(assert (=> b!4209101 (= res!1729007 (= (rule!10852 (_1!25143 (get!15051 lt!1498572))) rBis!178))))

(declare-fun b!4209102 () Bool)

(assert (=> b!4209102 (= e!2612923 e!2612924)))

(declare-fun res!1729003 () Bool)

(assert (=> b!4209102 (=> (not res!1729003) (not e!2612924))))

(assert (=> b!4209102 (= res!1729003 (matchR!6360 (regex!7742 rBis!178) (list!16729 (charsOf!5165 (_1!25143 (get!15051 lt!1498572))))))))

(assert (= (and d!1240547 c!717154) b!4209096))

(assert (= (and d!1240547 (not c!717154)) b!4209099))

(assert (= (and b!4209099 (not res!1729008)) b!4209098))

(assert (= (and d!1240547 (not res!1729004)) b!4209102))

(assert (= (and b!4209102 res!1729003) b!4209100))

(assert (= (and b!4209100 res!1729005) b!4209097))

(assert (= (and b!4209097 res!1729002) b!4209101))

(assert (= (and b!4209101 res!1729007) b!4209095))

(assert (= (and b!4209095 res!1729006) b!4209094))

(declare-fun m!4797087 () Bool)

(assert (=> b!4209095 m!4797087))

(declare-fun m!4797089 () Bool)

(assert (=> b!4209095 m!4797089))

(assert (=> b!4209095 m!4797089))

(declare-fun m!4797091 () Bool)

(assert (=> b!4209095 m!4797091))

(assert (=> b!4209097 m!4797087))

(declare-fun m!4797093 () Bool)

(assert (=> b!4209097 m!4797093))

(assert (=> b!4209097 m!4796935))

(assert (=> b!4209101 m!4797087))

(declare-fun m!4797095 () Bool)

(assert (=> b!4209098 m!4797095))

(assert (=> b!4209098 m!4796935))

(assert (=> b!4209098 m!4797095))

(assert (=> b!4209098 m!4796935))

(declare-fun m!4797097 () Bool)

(assert (=> b!4209098 m!4797097))

(declare-fun m!4797099 () Bool)

(assert (=> b!4209098 m!4797099))

(assert (=> b!4209102 m!4797087))

(declare-fun m!4797101 () Bool)

(assert (=> b!4209102 m!4797101))

(assert (=> b!4209102 m!4797101))

(declare-fun m!4797103 () Bool)

(assert (=> b!4209102 m!4797103))

(assert (=> b!4209102 m!4797103))

(declare-fun m!4797105 () Bool)

(assert (=> b!4209102 m!4797105))

(assert (=> b!4209099 m!4796935))

(declare-fun m!4797107 () Bool)

(assert (=> b!4209099 m!4797107))

(assert (=> b!4209099 m!4797107))

(declare-fun m!4797109 () Bool)

(assert (=> b!4209099 m!4797109))

(assert (=> b!4209099 m!4797095))

(assert (=> b!4209099 m!4796935))

(assert (=> b!4209099 m!4797097))

(assert (=> b!4209099 m!4797107))

(declare-fun m!4797111 () Bool)

(assert (=> b!4209099 m!4797111))

(assert (=> b!4209099 m!4797095))

(assert (=> b!4209099 m!4797107))

(declare-fun m!4797113 () Bool)

(assert (=> b!4209099 m!4797113))

(declare-fun m!4797115 () Bool)

(assert (=> b!4209099 m!4797115))

(declare-fun m!4797117 () Bool)

(assert (=> b!4209099 m!4797117))

(assert (=> b!4209094 m!4797087))

(declare-fun m!4797119 () Bool)

(assert (=> b!4209094 m!4797119))

(assert (=> b!4209100 m!4797087))

(assert (=> b!4209100 m!4797101))

(assert (=> b!4209100 m!4797101))

(assert (=> b!4209100 m!4797103))

(assert (=> b!4209100 m!4797103))

(declare-fun m!4797121 () Bool)

(assert (=> b!4209100 m!4797121))

(declare-fun m!4797123 () Bool)

(assert (=> d!1240547 m!4797123))

(declare-fun m!4797125 () Bool)

(assert (=> d!1240547 m!4797125))

(declare-fun m!4797127 () Bool)

(assert (=> d!1240547 m!4797127))

(assert (=> d!1240547 m!4796879))

(assert (=> b!4208950 d!1240547))

(declare-fun d!1240591 () Bool)

(declare-fun e!2612928 () Bool)

(assert (=> d!1240591 e!2612928))

(declare-fun res!1729012 () Bool)

(assert (=> d!1240591 (=> res!1729012 e!2612928)))

(declare-fun lt!1498577 () Bool)

(assert (=> d!1240591 (= res!1729012 (not lt!1498577))))

(declare-fun e!2612926 () Bool)

(assert (=> d!1240591 (= lt!1498577 e!2612926)))

(declare-fun res!1729011 () Bool)

(assert (=> d!1240591 (=> res!1729011 e!2612926)))

(assert (=> d!1240591 (= res!1729011 ((_ is Nil!46273) input!3517))))

(assert (=> d!1240591 (= (isPrefix!4601 input!3517 input!3517) lt!1498577)))

(declare-fun b!4209106 () Bool)

(assert (=> b!4209106 (= e!2612928 (>= (size!33993 input!3517) (size!33993 input!3517)))))

(declare-fun b!4209103 () Bool)

(declare-fun e!2612927 () Bool)

(assert (=> b!4209103 (= e!2612926 e!2612927)))

(declare-fun res!1729010 () Bool)

(assert (=> b!4209103 (=> (not res!1729010) (not e!2612927))))

(assert (=> b!4209103 (= res!1729010 (not ((_ is Nil!46273) input!3517)))))

(declare-fun b!4209105 () Bool)

(assert (=> b!4209105 (= e!2612927 (isPrefix!4601 (tail!6777 input!3517) (tail!6777 input!3517)))))

(declare-fun b!4209104 () Bool)

(declare-fun res!1729009 () Bool)

(assert (=> b!4209104 (=> (not res!1729009) (not e!2612927))))

(assert (=> b!4209104 (= res!1729009 (= (head!8930 input!3517) (head!8930 input!3517)))))

(assert (= (and d!1240591 (not res!1729011)) b!4209103))

(assert (= (and b!4209103 res!1729010) b!4209104))

(assert (= (and b!4209104 res!1729009) b!4209105))

(assert (= (and d!1240591 (not res!1729012)) b!4209106))

(assert (=> b!4209106 m!4796935))

(assert (=> b!4209106 m!4796935))

(assert (=> b!4209105 m!4796939))

(assert (=> b!4209105 m!4796939))

(assert (=> b!4209105 m!4796939))

(assert (=> b!4209105 m!4796939))

(declare-fun m!4797129 () Bool)

(assert (=> b!4209105 m!4797129))

(assert (=> b!4209104 m!4796945))

(assert (=> b!4209104 m!4796945))

(assert (=> b!4208950 d!1240591))

(declare-fun d!1240593 () Bool)

(assert (=> d!1240593 (isPrefix!4601 input!3517 input!3517)))

(declare-fun lt!1498580 () Unit!65393)

(declare-fun choose!25796 (List!46397 List!46397) Unit!65393)

(assert (=> d!1240593 (= lt!1498580 (choose!25796 input!3517 input!3517))))

(assert (=> d!1240593 (= (lemmaIsPrefixRefl!3018 input!3517 input!3517) lt!1498580)))

(declare-fun bs!597342 () Bool)

(assert (= bs!597342 d!1240593))

(assert (=> bs!597342 m!4796907))

(declare-fun m!4797131 () Bool)

(assert (=> bs!597342 m!4797131))

(assert (=> b!4208950 d!1240593))

(declare-fun d!1240595 () Bool)

(declare-fun lt!1498593 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7240 (List!46399) (InoxSet Rule!15284))

(assert (=> d!1240595 (= lt!1498593 (select (content!7240 rules!3967) rBis!178))))

(declare-fun e!2612940 () Bool)

(assert (=> d!1240595 (= lt!1498593 e!2612940)))

(declare-fun res!1729031 () Bool)

(assert (=> d!1240595 (=> (not res!1729031) (not e!2612940))))

(assert (=> d!1240595 (= res!1729031 ((_ is Cons!46275) rules!3967))))

(assert (=> d!1240595 (= (contains!9561 rules!3967 rBis!178) lt!1498593)))

(declare-fun b!4209129 () Bool)

(declare-fun e!2612939 () Bool)

(assert (=> b!4209129 (= e!2612940 e!2612939)))

(declare-fun res!1729032 () Bool)

(assert (=> b!4209129 (=> res!1729032 e!2612939)))

(assert (=> b!4209129 (= res!1729032 (= (h!51695 rules!3967) rBis!178))))

(declare-fun b!4209130 () Bool)

(assert (=> b!4209130 (= e!2612939 (contains!9561 (t!347764 rules!3967) rBis!178))))

(assert (= (and d!1240595 res!1729031) b!4209129))

(assert (= (and b!4209129 (not res!1729032)) b!4209130))

(declare-fun m!4797133 () Bool)

(assert (=> d!1240595 m!4797133))

(declare-fun m!4797135 () Bool)

(assert (=> d!1240595 m!4797135))

(declare-fun m!4797137 () Bool)

(assert (=> b!4209130 m!4797137))

(assert (=> b!4208939 d!1240595))

(declare-fun b!4209154 () Bool)

(declare-fun e!2612952 () List!46397)

(assert (=> b!4209154 (= e!2612952 suffix!1557)))

(declare-fun d!1240597 () Bool)

(declare-fun e!2612951 () Bool)

(assert (=> d!1240597 e!2612951))

(declare-fun res!1729044 () Bool)

(assert (=> d!1240597 (=> (not res!1729044) (not e!2612951))))

(declare-fun lt!1498604 () List!46397)

(declare-fun content!7241 (List!46397) (InoxSet C!25488))

(assert (=> d!1240597 (= res!1729044 (= (content!7241 lt!1498604) ((_ map or) (content!7241 p!3001) (content!7241 suffix!1557))))))

(assert (=> d!1240597 (= lt!1498604 e!2612952)))

(declare-fun c!717163 () Bool)

(assert (=> d!1240597 (= c!717163 ((_ is Nil!46273) p!3001))))

(assert (=> d!1240597 (= (++!11816 p!3001 suffix!1557) lt!1498604)))

(declare-fun b!4209157 () Bool)

(assert (=> b!4209157 (= e!2612951 (or (not (= suffix!1557 Nil!46273)) (= lt!1498604 p!3001)))))

(declare-fun b!4209155 () Bool)

(assert (=> b!4209155 (= e!2612952 (Cons!46273 (h!51693 p!3001) (++!11816 (t!347762 p!3001) suffix!1557)))))

(declare-fun b!4209156 () Bool)

(declare-fun res!1729045 () Bool)

(assert (=> b!4209156 (=> (not res!1729045) (not e!2612951))))

(assert (=> b!4209156 (= res!1729045 (= (size!33993 lt!1498604) (+ (size!33993 p!3001) (size!33993 suffix!1557))))))

(assert (= (and d!1240597 c!717163) b!4209154))

(assert (= (and d!1240597 (not c!717163)) b!4209155))

(assert (= (and d!1240597 res!1729044) b!4209156))

(assert (= (and b!4209156 res!1729045) b!4209157))

(declare-fun m!4797171 () Bool)

(assert (=> d!1240597 m!4797171))

(declare-fun m!4797173 () Bool)

(assert (=> d!1240597 m!4797173))

(declare-fun m!4797177 () Bool)

(assert (=> d!1240597 m!4797177))

(declare-fun m!4797183 () Bool)

(assert (=> b!4209155 m!4797183))

(declare-fun m!4797185 () Bool)

(assert (=> b!4209156 m!4797185))

(assert (=> b!4209156 m!4796929))

(declare-fun m!4797187 () Bool)

(assert (=> b!4209156 m!4797187))

(assert (=> b!4208949 d!1240597))

(declare-fun b!4209236 () Bool)

(declare-fun res!1729070 () Bool)

(declare-fun e!2612994 () Bool)

(assert (=> b!4209236 (=> (not res!1729070) (not e!2612994))))

(declare-fun lt!1498617 () Option!9930)

(assert (=> b!4209236 (= res!1729070 (= (list!16729 (charsOf!5165 (_1!25143 (get!15051 lt!1498617)))) (originalCharacters!8124 (_1!25143 (get!15051 lt!1498617)))))))

(declare-fun b!4209237 () Bool)

(declare-fun res!1729064 () Bool)

(assert (=> b!4209237 (=> (not res!1729064) (not e!2612994))))

(assert (=> b!4209237 (= res!1729064 (< (size!33993 (_2!25143 (get!15051 lt!1498617))) (size!33993 input!3517)))))

(declare-fun b!4209238 () Bool)

(declare-fun res!1729066 () Bool)

(assert (=> b!4209238 (=> (not res!1729066) (not e!2612994))))

(assert (=> b!4209238 (= res!1729066 (matchR!6360 (regex!7742 (rule!10852 (_1!25143 (get!15051 lt!1498617)))) (list!16729 (charsOf!5165 (_1!25143 (get!15051 lt!1498617))))))))

(declare-fun b!4209239 () Bool)

(declare-fun e!2612995 () Option!9930)

(declare-fun call!292880 () Option!9930)

(assert (=> b!4209239 (= e!2612995 call!292880)))

(declare-fun b!4209240 () Bool)

(declare-fun res!1729068 () Bool)

(assert (=> b!4209240 (=> (not res!1729068) (not e!2612994))))

(assert (=> b!4209240 (= res!1729068 (= (++!11816 (list!16729 (charsOf!5165 (_1!25143 (get!15051 lt!1498617)))) (_2!25143 (get!15051 lt!1498617))) input!3517))))

(declare-fun bm!292875 () Bool)

(assert (=> bm!292875 (= call!292880 (maxPrefixOneRule!3332 thiss!26544 (h!51695 rules!3967) input!3517))))

(declare-fun b!4209241 () Bool)

(assert (=> b!4209241 (= e!2612994 (contains!9561 rules!3967 (rule!10852 (_1!25143 (get!15051 lt!1498617)))))))

(declare-fun b!4209242 () Bool)

(declare-fun e!2612993 () Bool)

(assert (=> b!4209242 (= e!2612993 e!2612994)))

(declare-fun res!1729067 () Bool)

(assert (=> b!4209242 (=> (not res!1729067) (not e!2612994))))

(declare-fun isDefined!7382 (Option!9930) Bool)

(assert (=> b!4209242 (= res!1729067 (isDefined!7382 lt!1498617))))

(declare-fun d!1240607 () Bool)

(assert (=> d!1240607 e!2612993))

(declare-fun res!1729065 () Bool)

(assert (=> d!1240607 (=> res!1729065 e!2612993)))

(assert (=> d!1240607 (= res!1729065 (isEmpty!27404 lt!1498617))))

(assert (=> d!1240607 (= lt!1498617 e!2612995)))

(declare-fun c!717170 () Bool)

(assert (=> d!1240607 (= c!717170 (and ((_ is Cons!46275) rules!3967) ((_ is Nil!46275) (t!347764 rules!3967))))))

(declare-fun lt!1498621 () Unit!65393)

(declare-fun lt!1498618 () Unit!65393)

(assert (=> d!1240607 (= lt!1498621 lt!1498618)))

(assert (=> d!1240607 (isPrefix!4601 input!3517 input!3517)))

(assert (=> d!1240607 (= lt!1498618 (lemmaIsPrefixRefl!3018 input!3517 input!3517))))

(declare-fun rulesValidInductive!2872 (LexerInterface!7337 List!46399) Bool)

(assert (=> d!1240607 (rulesValidInductive!2872 thiss!26544 rules!3967)))

(assert (=> d!1240607 (= (maxPrefix!4377 thiss!26544 rules!3967 input!3517) lt!1498617)))

(declare-fun b!4209243 () Bool)

(declare-fun res!1729069 () Bool)

(assert (=> b!4209243 (=> (not res!1729069) (not e!2612994))))

(assert (=> b!4209243 (= res!1729069 (= (value!241176 (_1!25143 (get!15051 lt!1498617))) (apply!10681 (transformation!7742 (rule!10852 (_1!25143 (get!15051 lt!1498617)))) (seqFromList!5741 (originalCharacters!8124 (_1!25143 (get!15051 lt!1498617)))))))))

(declare-fun b!4209244 () Bool)

(declare-fun lt!1498620 () Option!9930)

(declare-fun lt!1498619 () Option!9930)

(assert (=> b!4209244 (= e!2612995 (ite (and ((_ is None!9929) lt!1498620) ((_ is None!9929) lt!1498619)) None!9929 (ite ((_ is None!9929) lt!1498619) lt!1498620 (ite ((_ is None!9929) lt!1498620) lt!1498619 (ite (>= (size!33992 (_1!25143 (v!40795 lt!1498620))) (size!33992 (_1!25143 (v!40795 lt!1498619)))) lt!1498620 lt!1498619)))))))

(assert (=> b!4209244 (= lt!1498620 call!292880)))

(assert (=> b!4209244 (= lt!1498619 (maxPrefix!4377 thiss!26544 (t!347764 rules!3967) input!3517))))

(assert (= (and d!1240607 c!717170) b!4209239))

(assert (= (and d!1240607 (not c!717170)) b!4209244))

(assert (= (or b!4209239 b!4209244) bm!292875))

(assert (= (and d!1240607 (not res!1729065)) b!4209242))

(assert (= (and b!4209242 res!1729067) b!4209236))

(assert (= (and b!4209236 res!1729070) b!4209237))

(assert (= (and b!4209237 res!1729064) b!4209240))

(assert (= (and b!4209240 res!1729068) b!4209243))

(assert (= (and b!4209243 res!1729069) b!4209238))

(assert (= (and b!4209238 res!1729066) b!4209241))

(declare-fun m!4797209 () Bool)

(assert (=> b!4209237 m!4797209))

(declare-fun m!4797211 () Bool)

(assert (=> b!4209237 m!4797211))

(assert (=> b!4209237 m!4796935))

(assert (=> b!4209243 m!4797209))

(declare-fun m!4797213 () Bool)

(assert (=> b!4209243 m!4797213))

(assert (=> b!4209243 m!4797213))

(declare-fun m!4797215 () Bool)

(assert (=> b!4209243 m!4797215))

(assert (=> b!4209238 m!4797209))

(declare-fun m!4797217 () Bool)

(assert (=> b!4209238 m!4797217))

(assert (=> b!4209238 m!4797217))

(declare-fun m!4797219 () Bool)

(assert (=> b!4209238 m!4797219))

(assert (=> b!4209238 m!4797219))

(declare-fun m!4797221 () Bool)

(assert (=> b!4209238 m!4797221))

(declare-fun m!4797223 () Bool)

(assert (=> b!4209242 m!4797223))

(declare-fun m!4797225 () Bool)

(assert (=> b!4209244 m!4797225))

(assert (=> b!4209240 m!4797209))

(assert (=> b!4209240 m!4797217))

(assert (=> b!4209240 m!4797217))

(assert (=> b!4209240 m!4797219))

(assert (=> b!4209240 m!4797219))

(declare-fun m!4797227 () Bool)

(assert (=> b!4209240 m!4797227))

(assert (=> b!4209241 m!4797209))

(declare-fun m!4797229 () Bool)

(assert (=> b!4209241 m!4797229))

(declare-fun m!4797231 () Bool)

(assert (=> bm!292875 m!4797231))

(assert (=> b!4209236 m!4797209))

(assert (=> b!4209236 m!4797217))

(assert (=> b!4209236 m!4797217))

(assert (=> b!4209236 m!4797219))

(declare-fun m!4797233 () Bool)

(assert (=> d!1240607 m!4797233))

(assert (=> d!1240607 m!4796907))

(assert (=> d!1240607 m!4796909))

(declare-fun m!4797235 () Bool)

(assert (=> d!1240607 m!4797235))

(assert (=> b!4208938 d!1240607))

(declare-fun d!1240613 () Bool)

(declare-fun res!1729075 () Bool)

(declare-fun e!2612998 () Bool)

(assert (=> d!1240613 (=> (not res!1729075) (not e!2612998))))

(assert (=> d!1240613 (= res!1729075 (not (isEmpty!27405 (originalCharacters!8124 tBis!41))))))

(assert (=> d!1240613 (= (inv!60878 tBis!41) e!2612998)))

(declare-fun b!4209249 () Bool)

(declare-fun res!1729076 () Bool)

(assert (=> b!4209249 (=> (not res!1729076) (not e!2612998))))

(declare-fun dynLambda!19956 (Int TokenValue!7972) BalanceConc!27500)

(assert (=> b!4209249 (= res!1729076 (= (originalCharacters!8124 tBis!41) (list!16729 (dynLambda!19956 (toChars!10317 (transformation!7742 (rule!10852 tBis!41))) (value!241176 tBis!41)))))))

(declare-fun b!4209250 () Bool)

(assert (=> b!4209250 (= e!2612998 (= (size!33992 tBis!41) (size!33993 (originalCharacters!8124 tBis!41))))))

(assert (= (and d!1240613 res!1729075) b!4209249))

(assert (= (and b!4209249 res!1729076) b!4209250))

(declare-fun b_lambda!123971 () Bool)

(assert (=> (not b_lambda!123971) (not b!4209249)))

(declare-fun t!347786 () Bool)

(declare-fun tb!252587 () Bool)

(assert (=> (and b!4208935 (= (toChars!10317 (transformation!7742 (h!51695 rules!3967))) (toChars!10317 (transformation!7742 (rule!10852 tBis!41)))) t!347786) tb!252587))

(declare-fun b!4209255 () Bool)

(declare-fun e!2613001 () Bool)

(declare-fun tp!1286854 () Bool)

(declare-fun inv!60881 (Conc!13953) Bool)

(assert (=> b!4209255 (= e!2613001 (and (inv!60881 (c!717139 (dynLambda!19956 (toChars!10317 (transformation!7742 (rule!10852 tBis!41))) (value!241176 tBis!41)))) tp!1286854))))

(declare-fun result!307852 () Bool)

(declare-fun inv!60882 (BalanceConc!27500) Bool)

(assert (=> tb!252587 (= result!307852 (and (inv!60882 (dynLambda!19956 (toChars!10317 (transformation!7742 (rule!10852 tBis!41))) (value!241176 tBis!41))) e!2613001))))

(assert (= tb!252587 b!4209255))

(declare-fun m!4797237 () Bool)

(assert (=> b!4209255 m!4797237))

(declare-fun m!4797239 () Bool)

(assert (=> tb!252587 m!4797239))

(assert (=> b!4209249 t!347786))

(declare-fun b_and!331093 () Bool)

(assert (= b_and!331051 (and (=> t!347786 result!307852) b_and!331093)))

(declare-fun t!347788 () Bool)

(declare-fun tb!252589 () Bool)

(assert (=> (and b!4208951 (= (toChars!10317 (transformation!7742 (rule!10852 t!8364))) (toChars!10317 (transformation!7742 (rule!10852 tBis!41)))) t!347788) tb!252589))

(declare-fun result!307856 () Bool)

(assert (= result!307856 result!307852))

(assert (=> b!4209249 t!347788))

(declare-fun b_and!331095 () Bool)

(assert (= b_and!331055 (and (=> t!347788 result!307856) b_and!331095)))

(declare-fun t!347790 () Bool)

(declare-fun tb!252591 () Bool)

(assert (=> (and b!4208944 (= (toChars!10317 (transformation!7742 rBis!178)) (toChars!10317 (transformation!7742 (rule!10852 tBis!41)))) t!347790) tb!252591))

(declare-fun result!307858 () Bool)

(assert (= result!307858 result!307852))

(assert (=> b!4209249 t!347790))

(declare-fun b_and!331097 () Bool)

(assert (= b_and!331059 (and (=> t!347790 result!307858) b_and!331097)))

(declare-fun t!347792 () Bool)

(declare-fun tb!252593 () Bool)

(assert (=> (and b!4208924 (= (toChars!10317 (transformation!7742 (rule!10852 tBis!41))) (toChars!10317 (transformation!7742 (rule!10852 tBis!41)))) t!347792) tb!252593))

(declare-fun result!307860 () Bool)

(assert (= result!307860 result!307852))

(assert (=> b!4209249 t!347792))

(declare-fun b_and!331099 () Bool)

(assert (= b_and!331063 (and (=> t!347792 result!307860) b_and!331099)))

(declare-fun m!4797241 () Bool)

(assert (=> d!1240613 m!4797241))

(declare-fun m!4797243 () Bool)

(assert (=> b!4209249 m!4797243))

(assert (=> b!4209249 m!4797243))

(declare-fun m!4797245 () Bool)

(assert (=> b!4209249 m!4797245))

(declare-fun m!4797247 () Bool)

(assert (=> b!4209250 m!4797247))

(assert (=> start!402198 d!1240613))

(declare-fun d!1240615 () Bool)

(declare-fun res!1729077 () Bool)

(declare-fun e!2613002 () Bool)

(assert (=> d!1240615 (=> (not res!1729077) (not e!2613002))))

(assert (=> d!1240615 (= res!1729077 (not (isEmpty!27405 (originalCharacters!8124 t!8364))))))

(assert (=> d!1240615 (= (inv!60878 t!8364) e!2613002)))

(declare-fun b!4209256 () Bool)

(declare-fun res!1729078 () Bool)

(assert (=> b!4209256 (=> (not res!1729078) (not e!2613002))))

(assert (=> b!4209256 (= res!1729078 (= (originalCharacters!8124 t!8364) (list!16729 (dynLambda!19956 (toChars!10317 (transformation!7742 (rule!10852 t!8364))) (value!241176 t!8364)))))))

(declare-fun b!4209257 () Bool)

(assert (=> b!4209257 (= e!2613002 (= (size!33992 t!8364) (size!33993 (originalCharacters!8124 t!8364))))))

(assert (= (and d!1240615 res!1729077) b!4209256))

(assert (= (and b!4209256 res!1729078) b!4209257))

(declare-fun b_lambda!123973 () Bool)

(assert (=> (not b_lambda!123973) (not b!4209256)))

(declare-fun tb!252595 () Bool)

(declare-fun t!347794 () Bool)

(assert (=> (and b!4208935 (= (toChars!10317 (transformation!7742 (h!51695 rules!3967))) (toChars!10317 (transformation!7742 (rule!10852 t!8364)))) t!347794) tb!252595))

(declare-fun b!4209258 () Bool)

(declare-fun e!2613003 () Bool)

(declare-fun tp!1286855 () Bool)

(assert (=> b!4209258 (= e!2613003 (and (inv!60881 (c!717139 (dynLambda!19956 (toChars!10317 (transformation!7742 (rule!10852 t!8364))) (value!241176 t!8364)))) tp!1286855))))

(declare-fun result!307862 () Bool)

(assert (=> tb!252595 (= result!307862 (and (inv!60882 (dynLambda!19956 (toChars!10317 (transformation!7742 (rule!10852 t!8364))) (value!241176 t!8364))) e!2613003))))

(assert (= tb!252595 b!4209258))

(declare-fun m!4797249 () Bool)

(assert (=> b!4209258 m!4797249))

(declare-fun m!4797251 () Bool)

(assert (=> tb!252595 m!4797251))

(assert (=> b!4209256 t!347794))

(declare-fun b_and!331101 () Bool)

(assert (= b_and!331093 (and (=> t!347794 result!307862) b_and!331101)))

(declare-fun t!347796 () Bool)

(declare-fun tb!252597 () Bool)

(assert (=> (and b!4208951 (= (toChars!10317 (transformation!7742 (rule!10852 t!8364))) (toChars!10317 (transformation!7742 (rule!10852 t!8364)))) t!347796) tb!252597))

(declare-fun result!307864 () Bool)

(assert (= result!307864 result!307862))

(assert (=> b!4209256 t!347796))

(declare-fun b_and!331103 () Bool)

(assert (= b_and!331095 (and (=> t!347796 result!307864) b_and!331103)))

(declare-fun t!347798 () Bool)

(declare-fun tb!252599 () Bool)

(assert (=> (and b!4208944 (= (toChars!10317 (transformation!7742 rBis!178)) (toChars!10317 (transformation!7742 (rule!10852 t!8364)))) t!347798) tb!252599))

(declare-fun result!307866 () Bool)

(assert (= result!307866 result!307862))

(assert (=> b!4209256 t!347798))

(declare-fun b_and!331105 () Bool)

(assert (= b_and!331097 (and (=> t!347798 result!307866) b_and!331105)))

(declare-fun t!347800 () Bool)

(declare-fun tb!252601 () Bool)

(assert (=> (and b!4208924 (= (toChars!10317 (transformation!7742 (rule!10852 tBis!41))) (toChars!10317 (transformation!7742 (rule!10852 t!8364)))) t!347800) tb!252601))

(declare-fun result!307868 () Bool)

(assert (= result!307868 result!307862))

(assert (=> b!4209256 t!347800))

(declare-fun b_and!331107 () Bool)

(assert (= b_and!331099 (and (=> t!347800 result!307868) b_and!331107)))

(declare-fun m!4797253 () Bool)

(assert (=> d!1240615 m!4797253))

(declare-fun m!4797255 () Bool)

(assert (=> b!4209256 m!4797255))

(assert (=> b!4209256 m!4797255))

(declare-fun m!4797257 () Bool)

(assert (=> b!4209256 m!4797257))

(declare-fun m!4797259 () Bool)

(assert (=> b!4209257 m!4797259))

(assert (=> start!402198 d!1240615))

(declare-fun d!1240617 () Bool)

(assert (=> d!1240617 (= (inv!60874 (tag!8606 (rule!10852 tBis!41))) (= (mod (str.len (value!241175 (tag!8606 (rule!10852 tBis!41)))) 2) 0))))

(assert (=> b!4208948 d!1240617))

(declare-fun d!1240619 () Bool)

(declare-fun res!1729079 () Bool)

(declare-fun e!2613004 () Bool)

(assert (=> d!1240619 (=> (not res!1729079) (not e!2613004))))

(assert (=> d!1240619 (= res!1729079 (semiInverseModEq!3361 (toChars!10317 (transformation!7742 (rule!10852 tBis!41))) (toValue!10458 (transformation!7742 (rule!10852 tBis!41)))))))

(assert (=> d!1240619 (= (inv!60877 (transformation!7742 (rule!10852 tBis!41))) e!2613004)))

(declare-fun b!4209259 () Bool)

(assert (=> b!4209259 (= e!2613004 (equivClasses!3260 (toChars!10317 (transformation!7742 (rule!10852 tBis!41))) (toValue!10458 (transformation!7742 (rule!10852 tBis!41)))))))

(assert (= (and d!1240619 res!1729079) b!4209259))

(declare-fun m!4797261 () Bool)

(assert (=> d!1240619 m!4797261))

(declare-fun m!4797263 () Bool)

(assert (=> b!4209259 m!4797263))

(assert (=> b!4208948 d!1240619))

(declare-fun d!1240621 () Bool)

(assert (=> d!1240621 (= (inv!60874 (tag!8606 (rule!10852 t!8364))) (= (mod (str.len (value!241175 (tag!8606 (rule!10852 t!8364)))) 2) 0))))

(assert (=> b!4208937 d!1240621))

(declare-fun d!1240623 () Bool)

(declare-fun res!1729080 () Bool)

(declare-fun e!2613005 () Bool)

(assert (=> d!1240623 (=> (not res!1729080) (not e!2613005))))

(assert (=> d!1240623 (= res!1729080 (semiInverseModEq!3361 (toChars!10317 (transformation!7742 (rule!10852 t!8364))) (toValue!10458 (transformation!7742 (rule!10852 t!8364)))))))

(assert (=> d!1240623 (= (inv!60877 (transformation!7742 (rule!10852 t!8364))) e!2613005)))

(declare-fun b!4209260 () Bool)

(assert (=> b!4209260 (= e!2613005 (equivClasses!3260 (toChars!10317 (transformation!7742 (rule!10852 t!8364))) (toValue!10458 (transformation!7742 (rule!10852 t!8364)))))))

(assert (= (and d!1240623 res!1729080) b!4209260))

(declare-fun m!4797265 () Bool)

(assert (=> d!1240623 m!4797265))

(declare-fun m!4797267 () Bool)

(assert (=> b!4209260 m!4797267))

(assert (=> b!4208937 d!1240623))

(declare-fun d!1240625 () Bool)

(declare-fun e!2613008 () Bool)

(assert (=> d!1240625 e!2613008))

(declare-fun res!1729084 () Bool)

(assert (=> d!1240625 (=> res!1729084 e!2613008)))

(declare-fun lt!1498622 () Bool)

(assert (=> d!1240625 (= res!1729084 (not lt!1498622))))

(declare-fun e!2613006 () Bool)

(assert (=> d!1240625 (= lt!1498622 e!2613006)))

(declare-fun res!1729083 () Bool)

(assert (=> d!1240625 (=> res!1729083 e!2613006)))

(assert (=> d!1240625 (= res!1729083 ((_ is Nil!46273) pBis!121))))

(assert (=> d!1240625 (= (isPrefix!4601 pBis!121 input!3517) lt!1498622)))

(declare-fun b!4209264 () Bool)

(assert (=> b!4209264 (= e!2613008 (>= (size!33993 input!3517) (size!33993 pBis!121)))))

(declare-fun b!4209261 () Bool)

(declare-fun e!2613007 () Bool)

(assert (=> b!4209261 (= e!2613006 e!2613007)))

(declare-fun res!1729082 () Bool)

(assert (=> b!4209261 (=> (not res!1729082) (not e!2613007))))

(assert (=> b!4209261 (= res!1729082 (not ((_ is Nil!46273) input!3517)))))

(declare-fun b!4209263 () Bool)

(assert (=> b!4209263 (= e!2613007 (isPrefix!4601 (tail!6777 pBis!121) (tail!6777 input!3517)))))

(declare-fun b!4209262 () Bool)

(declare-fun res!1729081 () Bool)

(assert (=> b!4209262 (=> (not res!1729081) (not e!2613007))))

(assert (=> b!4209262 (= res!1729081 (= (head!8930 pBis!121) (head!8930 input!3517)))))

(assert (= (and d!1240625 (not res!1729083)) b!4209261))

(assert (= (and b!4209261 res!1729082) b!4209262))

(assert (= (and b!4209262 res!1729081) b!4209263))

(assert (= (and d!1240625 (not res!1729084)) b!4209264))

(assert (=> b!4209264 m!4796935))

(assert (=> b!4209264 m!4796927))

(declare-fun m!4797269 () Bool)

(assert (=> b!4209263 m!4797269))

(assert (=> b!4209263 m!4796939))

(assert (=> b!4209263 m!4797269))

(assert (=> b!4209263 m!4796939))

(declare-fun m!4797271 () Bool)

(assert (=> b!4209263 m!4797271))

(declare-fun m!4797273 () Bool)

(assert (=> b!4209262 m!4797273))

(assert (=> b!4209262 m!4796945))

(assert (=> b!4208926 d!1240625))

(declare-fun d!1240627 () Bool)

(declare-fun res!1729089 () Bool)

(declare-fun e!2613011 () Bool)

(assert (=> d!1240627 (=> (not res!1729089) (not e!2613011))))

(declare-fun validRegex!5740 (Regex!12647) Bool)

(assert (=> d!1240627 (= res!1729089 (validRegex!5740 (regex!7742 rBis!178)))))

(assert (=> d!1240627 (= (ruleValid!3454 thiss!26544 rBis!178) e!2613011)))

(declare-fun b!4209269 () Bool)

(declare-fun res!1729090 () Bool)

(assert (=> b!4209269 (=> (not res!1729090) (not e!2613011))))

(declare-fun nullable!4453 (Regex!12647) Bool)

(assert (=> b!4209269 (= res!1729090 (not (nullable!4453 (regex!7742 rBis!178))))))

(declare-fun b!4209270 () Bool)

(assert (=> b!4209270 (= e!2613011 (not (= (tag!8606 rBis!178) (String!53731 ""))))))

(assert (= (and d!1240627 res!1729089) b!4209269))

(assert (= (and b!4209269 res!1729090) b!4209270))

(declare-fun m!4797275 () Bool)

(assert (=> d!1240627 m!4797275))

(declare-fun m!4797277 () Bool)

(assert (=> b!4209269 m!4797277))

(assert (=> b!4208947 d!1240627))

(declare-fun d!1240629 () Bool)

(declare-fun lt!1498625 () Int)

(assert (=> d!1240629 (>= lt!1498625 0)))

(declare-fun e!2613014 () Int)

(assert (=> d!1240629 (= lt!1498625 e!2613014)))

(declare-fun c!717173 () Bool)

(assert (=> d!1240629 (= c!717173 ((_ is Nil!46273) pBis!121))))

(assert (=> d!1240629 (= (size!33993 pBis!121) lt!1498625)))

(declare-fun b!4209275 () Bool)

(assert (=> b!4209275 (= e!2613014 0)))

(declare-fun b!4209276 () Bool)

(assert (=> b!4209276 (= e!2613014 (+ 1 (size!33993 (t!347762 pBis!121))))))

(assert (= (and d!1240629 c!717173) b!4209275))

(assert (= (and d!1240629 (not c!717173)) b!4209276))

(declare-fun m!4797279 () Bool)

(assert (=> b!4209276 m!4797279))

(assert (=> b!4208936 d!1240629))

(declare-fun d!1240631 () Bool)

(declare-fun lt!1498626 () Int)

(assert (=> d!1240631 (>= lt!1498626 0)))

(declare-fun e!2613015 () Int)

(assert (=> d!1240631 (= lt!1498626 e!2613015)))

(declare-fun c!717174 () Bool)

(assert (=> d!1240631 (= c!717174 ((_ is Nil!46273) p!3001))))

(assert (=> d!1240631 (= (size!33993 p!3001) lt!1498626)))

(declare-fun b!4209277 () Bool)

(assert (=> b!4209277 (= e!2613015 0)))

(declare-fun b!4209278 () Bool)

(assert (=> b!4209278 (= e!2613015 (+ 1 (size!33993 (t!347762 p!3001))))))

(assert (= (and d!1240631 c!717174) b!4209277))

(assert (= (and d!1240631 (not c!717174)) b!4209278))

(declare-fun m!4797281 () Bool)

(assert (=> b!4209278 m!4797281))

(assert (=> b!4208936 d!1240631))

(declare-fun d!1240633 () Bool)

(declare-fun res!1729093 () Bool)

(declare-fun e!2613018 () Bool)

(assert (=> d!1240633 (=> (not res!1729093) (not e!2613018))))

(declare-fun rulesValid!3030 (LexerInterface!7337 List!46399) Bool)

(assert (=> d!1240633 (= res!1729093 (rulesValid!3030 thiss!26544 rules!3967))))

(assert (=> d!1240633 (= (rulesInvariant!6548 thiss!26544 rules!3967) e!2613018)))

(declare-fun b!4209281 () Bool)

(declare-datatypes ((List!46401 0))(
  ( (Nil!46277) (Cons!46277 (h!51697 String!53730) (t!347806 List!46401)) )
))
(declare-fun noDuplicateTag!3191 (LexerInterface!7337 List!46399 List!46401) Bool)

(assert (=> b!4209281 (= e!2613018 (noDuplicateTag!3191 thiss!26544 rules!3967 Nil!46277))))

(assert (= (and d!1240633 res!1729093) b!4209281))

(declare-fun m!4797283 () Bool)

(assert (=> d!1240633 m!4797283))

(declare-fun m!4797285 () Bool)

(assert (=> b!4209281 m!4797285))

(assert (=> b!4208925 d!1240633))

(declare-fun b!4209293 () Bool)

(declare-fun e!2613026 () Bool)

(declare-fun inv!17 (TokenValue!7972) Bool)

(assert (=> b!4209293 (= e!2613026 (inv!17 (value!241176 tBis!41)))))

(declare-fun b!4209294 () Bool)

(declare-fun e!2613027 () Bool)

(declare-fun inv!15 (TokenValue!7972) Bool)

(assert (=> b!4209294 (= e!2613027 (inv!15 (value!241176 tBis!41)))))

(declare-fun b!4209295 () Bool)

(declare-fun res!1729096 () Bool)

(assert (=> b!4209295 (=> res!1729096 e!2613027)))

(assert (=> b!4209295 (= res!1729096 (not ((_ is IntegerValue!23918) (value!241176 tBis!41))))))

(assert (=> b!4209295 (= e!2613026 e!2613027)))

(declare-fun b!4209296 () Bool)

(declare-fun e!2613025 () Bool)

(declare-fun inv!16 (TokenValue!7972) Bool)

(assert (=> b!4209296 (= e!2613025 (inv!16 (value!241176 tBis!41)))))

(declare-fun b!4209292 () Bool)

(assert (=> b!4209292 (= e!2613025 e!2613026)))

(declare-fun c!717179 () Bool)

(assert (=> b!4209292 (= c!717179 ((_ is IntegerValue!23917) (value!241176 tBis!41)))))

(declare-fun d!1240635 () Bool)

(declare-fun c!717180 () Bool)

(assert (=> d!1240635 (= c!717180 ((_ is IntegerValue!23916) (value!241176 tBis!41)))))

(assert (=> d!1240635 (= (inv!21 (value!241176 tBis!41)) e!2613025)))

(assert (= (and d!1240635 c!717180) b!4209296))

(assert (= (and d!1240635 (not c!717180)) b!4209292))

(assert (= (and b!4209292 c!717179) b!4209293))

(assert (= (and b!4209292 (not c!717179)) b!4209295))

(assert (= (and b!4209295 (not res!1729096)) b!4209294))

(declare-fun m!4797287 () Bool)

(assert (=> b!4209293 m!4797287))

(declare-fun m!4797289 () Bool)

(assert (=> b!4209294 m!4797289))

(declare-fun m!4797291 () Bool)

(assert (=> b!4209296 m!4797291))

(assert (=> b!4208946 d!1240635))

(declare-fun d!1240637 () Bool)

(declare-fun list!16731 (Conc!13953) List!46397)

(assert (=> d!1240637 (= (list!16729 (charsOf!5165 tBis!41)) (list!16731 (c!717139 (charsOf!5165 tBis!41))))))

(declare-fun bs!597343 () Bool)

(assert (= bs!597343 d!1240637))

(declare-fun m!4797293 () Bool)

(assert (=> bs!597343 m!4797293))

(assert (=> b!4208934 d!1240637))

(declare-fun d!1240639 () Bool)

(declare-fun lt!1498629 () BalanceConc!27500)

(assert (=> d!1240639 (= (list!16729 lt!1498629) (originalCharacters!8124 tBis!41))))

(assert (=> d!1240639 (= lt!1498629 (dynLambda!19956 (toChars!10317 (transformation!7742 (rule!10852 tBis!41))) (value!241176 tBis!41)))))

(assert (=> d!1240639 (= (charsOf!5165 tBis!41) lt!1498629)))

(declare-fun b_lambda!123975 () Bool)

(assert (=> (not b_lambda!123975) (not d!1240639)))

(assert (=> d!1240639 t!347786))

(declare-fun b_and!331109 () Bool)

(assert (= b_and!331101 (and (=> t!347786 result!307852) b_and!331109)))

(assert (=> d!1240639 t!347788))

(declare-fun b_and!331111 () Bool)

(assert (= b_and!331103 (and (=> t!347788 result!307856) b_and!331111)))

(assert (=> d!1240639 t!347790))

(declare-fun b_and!331113 () Bool)

(assert (= b_and!331105 (and (=> t!347790 result!307858) b_and!331113)))

(assert (=> d!1240639 t!347792))

(declare-fun b_and!331115 () Bool)

(assert (= b_and!331107 (and (=> t!347792 result!307860) b_and!331115)))

(declare-fun m!4797295 () Bool)

(assert (=> d!1240639 m!4797295))

(assert (=> d!1240639 m!4797243))

(assert (=> b!4208934 d!1240639))

(declare-fun b!4209297 () Bool)

(declare-fun e!2613029 () List!46397)

(assert (=> b!4209297 (= e!2613029 suffixBis!41)))

(declare-fun d!1240641 () Bool)

(declare-fun e!2613028 () Bool)

(assert (=> d!1240641 e!2613028))

(declare-fun res!1729097 () Bool)

(assert (=> d!1240641 (=> (not res!1729097) (not e!2613028))))

(declare-fun lt!1498630 () List!46397)

(assert (=> d!1240641 (= res!1729097 (= (content!7241 lt!1498630) ((_ map or) (content!7241 pBis!121) (content!7241 suffixBis!41))))))

(assert (=> d!1240641 (= lt!1498630 e!2613029)))

(declare-fun c!717181 () Bool)

(assert (=> d!1240641 (= c!717181 ((_ is Nil!46273) pBis!121))))

(assert (=> d!1240641 (= (++!11816 pBis!121 suffixBis!41) lt!1498630)))

(declare-fun b!4209300 () Bool)

(assert (=> b!4209300 (= e!2613028 (or (not (= suffixBis!41 Nil!46273)) (= lt!1498630 pBis!121)))))

(declare-fun b!4209298 () Bool)

(assert (=> b!4209298 (= e!2613029 (Cons!46273 (h!51693 pBis!121) (++!11816 (t!347762 pBis!121) suffixBis!41)))))

(declare-fun b!4209299 () Bool)

(declare-fun res!1729098 () Bool)

(assert (=> b!4209299 (=> (not res!1729098) (not e!2613028))))

(assert (=> b!4209299 (= res!1729098 (= (size!33993 lt!1498630) (+ (size!33993 pBis!121) (size!33993 suffixBis!41))))))

(assert (= (and d!1240641 c!717181) b!4209297))

(assert (= (and d!1240641 (not c!717181)) b!4209298))

(assert (= (and d!1240641 res!1729097) b!4209299))

(assert (= (and b!4209299 res!1729098) b!4209300))

(declare-fun m!4797297 () Bool)

(assert (=> d!1240641 m!4797297))

(declare-fun m!4797299 () Bool)

(assert (=> d!1240641 m!4797299))

(declare-fun m!4797301 () Bool)

(assert (=> d!1240641 m!4797301))

(declare-fun m!4797303 () Bool)

(assert (=> b!4209298 m!4797303))

(declare-fun m!4797305 () Bool)

(assert (=> b!4209299 m!4797305))

(assert (=> b!4209299 m!4796927))

(declare-fun m!4797307 () Bool)

(assert (=> b!4209299 m!4797307))

(assert (=> b!4208923 d!1240641))

(declare-fun b!4209302 () Bool)

(declare-fun e!2613031 () Bool)

(assert (=> b!4209302 (= e!2613031 (inv!17 (value!241176 t!8364)))))

(declare-fun b!4209303 () Bool)

(declare-fun e!2613032 () Bool)

(assert (=> b!4209303 (= e!2613032 (inv!15 (value!241176 t!8364)))))

(declare-fun b!4209304 () Bool)

(declare-fun res!1729099 () Bool)

(assert (=> b!4209304 (=> res!1729099 e!2613032)))

(assert (=> b!4209304 (= res!1729099 (not ((_ is IntegerValue!23918) (value!241176 t!8364))))))

(assert (=> b!4209304 (= e!2613031 e!2613032)))

(declare-fun b!4209305 () Bool)

(declare-fun e!2613030 () Bool)

(assert (=> b!4209305 (= e!2613030 (inv!16 (value!241176 t!8364)))))

(declare-fun b!4209301 () Bool)

(assert (=> b!4209301 (= e!2613030 e!2613031)))

(declare-fun c!717182 () Bool)

(assert (=> b!4209301 (= c!717182 ((_ is IntegerValue!23917) (value!241176 t!8364)))))

(declare-fun d!1240643 () Bool)

(declare-fun c!717183 () Bool)

(assert (=> d!1240643 (= c!717183 ((_ is IntegerValue!23916) (value!241176 t!8364)))))

(assert (=> d!1240643 (= (inv!21 (value!241176 t!8364)) e!2613030)))

(assert (= (and d!1240643 c!717183) b!4209305))

(assert (= (and d!1240643 (not c!717183)) b!4209301))

(assert (= (and b!4209301 c!717182) b!4209302))

(assert (= (and b!4209301 (not c!717182)) b!4209304))

(assert (= (and b!4209304 (not res!1729099)) b!4209303))

(declare-fun m!4797309 () Bool)

(assert (=> b!4209302 m!4797309))

(declare-fun m!4797311 () Bool)

(assert (=> b!4209303 m!4797311))

(declare-fun m!4797313 () Bool)

(assert (=> b!4209305 m!4797313))

(assert (=> b!4208933 d!1240643))

(declare-fun d!1240645 () Bool)

(assert (=> d!1240645 (= (inv!60874 (tag!8606 rBis!178)) (= (mod (str.len (value!241175 (tag!8606 rBis!178))) 2) 0))))

(assert (=> b!4208943 d!1240645))

(declare-fun d!1240647 () Bool)

(declare-fun res!1729100 () Bool)

(declare-fun e!2613033 () Bool)

(assert (=> d!1240647 (=> (not res!1729100) (not e!2613033))))

(assert (=> d!1240647 (= res!1729100 (semiInverseModEq!3361 (toChars!10317 (transformation!7742 rBis!178)) (toValue!10458 (transformation!7742 rBis!178))))))

(assert (=> d!1240647 (= (inv!60877 (transformation!7742 rBis!178)) e!2613033)))

(declare-fun b!4209306 () Bool)

(assert (=> b!4209306 (= e!2613033 (equivClasses!3260 (toChars!10317 (transformation!7742 rBis!178)) (toValue!10458 (transformation!7742 rBis!178))))))

(assert (= (and d!1240647 res!1729100) b!4209306))

(declare-fun m!4797315 () Bool)

(assert (=> d!1240647 m!4797315))

(declare-fun m!4797317 () Bool)

(assert (=> b!4209306 m!4797317))

(assert (=> b!4208943 d!1240647))

(declare-fun d!1240649 () Bool)

(assert (=> d!1240649 (= (isEmpty!27401 rules!3967) ((_ is Nil!46275) rules!3967))))

(assert (=> b!4208932 d!1240649))

(declare-fun b!4209311 () Bool)

(declare-fun e!2613036 () Bool)

(declare-fun tp!1286858 () Bool)

(assert (=> b!4209311 (= e!2613036 (and tp_is_empty!22261 tp!1286858))))

(assert (=> b!4208941 (= tp!1286787 e!2613036)))

(assert (= (and b!4208941 ((_ is Cons!46273) (t!347762 suffixBis!41))) b!4209311))

(declare-fun b!4209322 () Bool)

(declare-fun e!2613039 () Bool)

(assert (=> b!4209322 (= e!2613039 tp_is_empty!22261)))

(assert (=> b!4208930 (= tp!1286784 e!2613039)))

(declare-fun b!4209323 () Bool)

(declare-fun tp!1286871 () Bool)

(declare-fun tp!1286870 () Bool)

(assert (=> b!4209323 (= e!2613039 (and tp!1286871 tp!1286870))))

(declare-fun b!4209325 () Bool)

(declare-fun tp!1286873 () Bool)

(declare-fun tp!1286869 () Bool)

(assert (=> b!4209325 (= e!2613039 (and tp!1286873 tp!1286869))))

(declare-fun b!4209324 () Bool)

(declare-fun tp!1286872 () Bool)

(assert (=> b!4209324 (= e!2613039 tp!1286872)))

(assert (= (and b!4208930 ((_ is ElementMatch!12647) (regex!7742 (h!51695 rules!3967)))) b!4209322))

(assert (= (and b!4208930 ((_ is Concat!20620) (regex!7742 (h!51695 rules!3967)))) b!4209323))

(assert (= (and b!4208930 ((_ is Star!12647) (regex!7742 (h!51695 rules!3967)))) b!4209324))

(assert (= (and b!4208930 ((_ is Union!12647) (regex!7742 (h!51695 rules!3967)))) b!4209325))

(declare-fun b!4209326 () Bool)

(declare-fun e!2613040 () Bool)

(declare-fun tp!1286874 () Bool)

(assert (=> b!4209326 (= e!2613040 (and tp_is_empty!22261 tp!1286874))))

(assert (=> b!4208940 (= tp!1286778 e!2613040)))

(assert (= (and b!4208940 ((_ is Cons!46273) (t!347762 input!3517))) b!4209326))

(declare-fun b!4209337 () Bool)

(declare-fun b_free!123143 () Bool)

(declare-fun b_next!123847 () Bool)

(assert (=> b!4209337 (= b_free!123143 (not b_next!123847))))

(declare-fun tp!1286885 () Bool)

(declare-fun b_and!331117 () Bool)

(assert (=> b!4209337 (= tp!1286885 b_and!331117)))

(declare-fun b_free!123145 () Bool)

(declare-fun b_next!123849 () Bool)

(assert (=> b!4209337 (= b_free!123145 (not b_next!123849))))

(declare-fun tb!252603 () Bool)

(declare-fun t!347802 () Bool)

(assert (=> (and b!4209337 (= (toChars!10317 (transformation!7742 (h!51695 (t!347764 rules!3967)))) (toChars!10317 (transformation!7742 (rule!10852 tBis!41)))) t!347802) tb!252603))

(declare-fun result!307876 () Bool)

(assert (= result!307876 result!307852))

(assert (=> b!4209249 t!347802))

(declare-fun tb!252605 () Bool)

(declare-fun t!347804 () Bool)

(assert (=> (and b!4209337 (= (toChars!10317 (transformation!7742 (h!51695 (t!347764 rules!3967)))) (toChars!10317 (transformation!7742 (rule!10852 t!8364)))) t!347804) tb!252605))

(declare-fun result!307878 () Bool)

(assert (= result!307878 result!307862))

(assert (=> b!4209256 t!347804))

(assert (=> d!1240639 t!347802))

(declare-fun b_and!331119 () Bool)

(declare-fun tp!1286886 () Bool)

(assert (=> b!4209337 (= tp!1286886 (and (=> t!347802 result!307876) (=> t!347804 result!307878) b_and!331119))))

(declare-fun e!2613052 () Bool)

(assert (=> b!4209337 (= e!2613052 (and tp!1286885 tp!1286886))))

(declare-fun e!2613049 () Bool)

(declare-fun b!4209336 () Bool)

(declare-fun tp!1286884 () Bool)

(assert (=> b!4209336 (= e!2613049 (and tp!1286884 (inv!60874 (tag!8606 (h!51695 (t!347764 rules!3967)))) (inv!60877 (transformation!7742 (h!51695 (t!347764 rules!3967)))) e!2613052))))

(declare-fun b!4209335 () Bool)

(declare-fun e!2613050 () Bool)

(declare-fun tp!1286883 () Bool)

(assert (=> b!4209335 (= e!2613050 (and e!2613049 tp!1286883))))

(assert (=> b!4208929 (= tp!1286781 e!2613050)))

(assert (= b!4209336 b!4209337))

(assert (= b!4209335 b!4209336))

(assert (= (and b!4208929 ((_ is Cons!46275) (t!347764 rules!3967))) b!4209335))

(declare-fun m!4797319 () Bool)

(assert (=> b!4209336 m!4797319))

(declare-fun m!4797321 () Bool)

(assert (=> b!4209336 m!4797321))

(declare-fun b!4209338 () Bool)

(declare-fun e!2613053 () Bool)

(declare-fun tp!1286887 () Bool)

(assert (=> b!4209338 (= e!2613053 (and tp_is_empty!22261 tp!1286887))))

(assert (=> b!4208928 (= tp!1286783 e!2613053)))

(assert (= (and b!4208928 ((_ is Cons!46273) (t!347762 pBis!121))) b!4209338))

(declare-fun b!4209339 () Bool)

(declare-fun e!2613054 () Bool)

(assert (=> b!4209339 (= e!2613054 tp_is_empty!22261)))

(assert (=> b!4208948 (= tp!1286790 e!2613054)))

(declare-fun b!4209340 () Bool)

(declare-fun tp!1286890 () Bool)

(declare-fun tp!1286889 () Bool)

(assert (=> b!4209340 (= e!2613054 (and tp!1286890 tp!1286889))))

(declare-fun b!4209342 () Bool)

(declare-fun tp!1286892 () Bool)

(declare-fun tp!1286888 () Bool)

(assert (=> b!4209342 (= e!2613054 (and tp!1286892 tp!1286888))))

(declare-fun b!4209341 () Bool)

(declare-fun tp!1286891 () Bool)

(assert (=> b!4209341 (= e!2613054 tp!1286891)))

(assert (= (and b!4208948 ((_ is ElementMatch!12647) (regex!7742 (rule!10852 tBis!41)))) b!4209339))

(assert (= (and b!4208948 ((_ is Concat!20620) (regex!7742 (rule!10852 tBis!41)))) b!4209340))

(assert (= (and b!4208948 ((_ is Star!12647) (regex!7742 (rule!10852 tBis!41)))) b!4209341))

(assert (= (and b!4208948 ((_ is Union!12647) (regex!7742 (rule!10852 tBis!41)))) b!4209342))

(declare-fun b!4209343 () Bool)

(declare-fun e!2613055 () Bool)

(assert (=> b!4209343 (= e!2613055 tp_is_empty!22261)))

(assert (=> b!4208937 (= tp!1286795 e!2613055)))

(declare-fun b!4209344 () Bool)

(declare-fun tp!1286895 () Bool)

(declare-fun tp!1286894 () Bool)

(assert (=> b!4209344 (= e!2613055 (and tp!1286895 tp!1286894))))

(declare-fun b!4209346 () Bool)

(declare-fun tp!1286897 () Bool)

(declare-fun tp!1286893 () Bool)

(assert (=> b!4209346 (= e!2613055 (and tp!1286897 tp!1286893))))

(declare-fun b!4209345 () Bool)

(declare-fun tp!1286896 () Bool)

(assert (=> b!4209345 (= e!2613055 tp!1286896)))

(assert (= (and b!4208937 ((_ is ElementMatch!12647) (regex!7742 (rule!10852 t!8364)))) b!4209343))

(assert (= (and b!4208937 ((_ is Concat!20620) (regex!7742 (rule!10852 t!8364)))) b!4209344))

(assert (= (and b!4208937 ((_ is Star!12647) (regex!7742 (rule!10852 t!8364)))) b!4209345))

(assert (= (and b!4208937 ((_ is Union!12647) (regex!7742 (rule!10852 t!8364)))) b!4209346))

(declare-fun b!4209347 () Bool)

(declare-fun e!2613056 () Bool)

(declare-fun tp!1286898 () Bool)

(assert (=> b!4209347 (= e!2613056 (and tp_is_empty!22261 tp!1286898))))

(assert (=> b!4208946 (= tp!1286785 e!2613056)))

(assert (= (and b!4208946 ((_ is Cons!46273) (originalCharacters!8124 tBis!41))) b!4209347))

(declare-fun b!4209348 () Bool)

(declare-fun e!2613057 () Bool)

(declare-fun tp!1286899 () Bool)

(assert (=> b!4209348 (= e!2613057 (and tp_is_empty!22261 tp!1286899))))

(assert (=> b!4208933 (= tp!1286786 e!2613057)))

(assert (= (and b!4208933 ((_ is Cons!46273) (originalCharacters!8124 t!8364))) b!4209348))

(declare-fun b!4209349 () Bool)

(declare-fun e!2613058 () Bool)

(assert (=> b!4209349 (= e!2613058 tp_is_empty!22261)))

(assert (=> b!4208943 (= tp!1286796 e!2613058)))

(declare-fun b!4209350 () Bool)

(declare-fun tp!1286902 () Bool)

(declare-fun tp!1286901 () Bool)

(assert (=> b!4209350 (= e!2613058 (and tp!1286902 tp!1286901))))

(declare-fun b!4209352 () Bool)

(declare-fun tp!1286904 () Bool)

(declare-fun tp!1286900 () Bool)

(assert (=> b!4209352 (= e!2613058 (and tp!1286904 tp!1286900))))

(declare-fun b!4209351 () Bool)

(declare-fun tp!1286903 () Bool)

(assert (=> b!4209351 (= e!2613058 tp!1286903)))

(assert (= (and b!4208943 ((_ is ElementMatch!12647) (regex!7742 rBis!178))) b!4209349))

(assert (= (and b!4208943 ((_ is Concat!20620) (regex!7742 rBis!178))) b!4209350))

(assert (= (and b!4208943 ((_ is Star!12647) (regex!7742 rBis!178))) b!4209351))

(assert (= (and b!4208943 ((_ is Union!12647) (regex!7742 rBis!178))) b!4209352))

(declare-fun b!4209353 () Bool)

(declare-fun e!2613059 () Bool)

(declare-fun tp!1286905 () Bool)

(assert (=> b!4209353 (= e!2613059 (and tp_is_empty!22261 tp!1286905))))

(assert (=> b!4208942 (= tp!1286780 e!2613059)))

(assert (= (and b!4208942 ((_ is Cons!46273) (t!347762 p!3001))) b!4209353))

(declare-fun b!4209354 () Bool)

(declare-fun e!2613060 () Bool)

(declare-fun tp!1286906 () Bool)

(assert (=> b!4209354 (= e!2613060 (and tp_is_empty!22261 tp!1286906))))

(assert (=> b!4208931 (= tp!1286794 e!2613060)))

(assert (= (and b!4208931 ((_ is Cons!46273) (t!347762 suffix!1557))) b!4209354))

(declare-fun b_lambda!123977 () Bool)

(assert (= b_lambda!123971 (or (and b!4208944 b_free!123133 (= (toChars!10317 (transformation!7742 rBis!178)) (toChars!10317 (transformation!7742 (rule!10852 tBis!41))))) (and b!4209337 b_free!123145 (= (toChars!10317 (transformation!7742 (h!51695 (t!347764 rules!3967)))) (toChars!10317 (transformation!7742 (rule!10852 tBis!41))))) (and b!4208951 b_free!123129 (= (toChars!10317 (transformation!7742 (rule!10852 t!8364))) (toChars!10317 (transformation!7742 (rule!10852 tBis!41))))) (and b!4208924 b_free!123137) (and b!4208935 b_free!123125 (= (toChars!10317 (transformation!7742 (h!51695 rules!3967))) (toChars!10317 (transformation!7742 (rule!10852 tBis!41))))) b_lambda!123977)))

(declare-fun b_lambda!123979 () Bool)

(assert (= b_lambda!123975 (or (and b!4208944 b_free!123133 (= (toChars!10317 (transformation!7742 rBis!178)) (toChars!10317 (transformation!7742 (rule!10852 tBis!41))))) (and b!4209337 b_free!123145 (= (toChars!10317 (transformation!7742 (h!51695 (t!347764 rules!3967)))) (toChars!10317 (transformation!7742 (rule!10852 tBis!41))))) (and b!4208951 b_free!123129 (= (toChars!10317 (transformation!7742 (rule!10852 t!8364))) (toChars!10317 (transformation!7742 (rule!10852 tBis!41))))) (and b!4208924 b_free!123137) (and b!4208935 b_free!123125 (= (toChars!10317 (transformation!7742 (h!51695 rules!3967))) (toChars!10317 (transformation!7742 (rule!10852 tBis!41))))) b_lambda!123979)))

(declare-fun b_lambda!123981 () Bool)

(assert (= b_lambda!123973 (or (and b!4208951 b_free!123129) (and b!4208935 b_free!123125 (= (toChars!10317 (transformation!7742 (h!51695 rules!3967))) (toChars!10317 (transformation!7742 (rule!10852 t!8364))))) (and b!4208944 b_free!123133 (= (toChars!10317 (transformation!7742 rBis!178)) (toChars!10317 (transformation!7742 (rule!10852 t!8364))))) (and b!4208924 b_free!123137 (= (toChars!10317 (transformation!7742 (rule!10852 tBis!41))) (toChars!10317 (transformation!7742 (rule!10852 t!8364))))) (and b!4209337 b_free!123145 (= (toChars!10317 (transformation!7742 (h!51695 (t!347764 rules!3967)))) (toChars!10317 (transformation!7742 (rule!10852 t!8364))))) b_lambda!123981)))

(check-sat (not b_next!123829) (not b!4208964) (not b_next!123831) (not b!4209305) (not d!1240647) (not b!4209098) (not b!4209294) (not b!4209249) (not b!4209263) (not b!4209344) b_and!331053 (not b!4208963) (not b!4209335) (not b!4209276) (not b!4209306) (not b!4209347) (not d!1240619) (not b!4209258) (not d!1240595) (not b_next!123833) (not b!4209130) (not b!4209259) (not b!4209102) (not b!4209105) (not b_lambda!123979) (not d!1240615) (not bm!292875) b_and!331119 (not b!4209156) (not b!4209342) (not b!4209260) (not b!4209351) (not b_lambda!123981) b_and!331113 (not b!4209354) (not b!4209269) b_and!331111 b_and!331117 (not b_next!123827) (not b!4209353) (not d!1240633) (not d!1240607) (not b!4209352) (not b!4208967) (not b!4209326) (not b!4209278) (not d!1240593) b_and!331057 (not b_next!123839) (not b!4209350) (not b!4209257) (not d!1240547) (not b!4209303) b_and!331049 (not b!4209325) b_and!331061 (not b!4209346) (not b!4209341) (not b_next!123835) (not b!4209238) (not b!4209097) (not b!4209099) (not tb!252595) (not b_next!123849) b_and!331115 (not b!4209240) (not b!4209262) (not b_next!123837) (not b_next!123841) (not b!4209293) (not b!4209345) (not d!1240627) (not b!4209338) (not d!1240641) (not b!4209101) (not b!4209155) (not b_lambda!123977) tp_is_empty!22261 (not b!4209106) (not b_next!123847) (not b!4209241) (not b!4209311) (not b!4209094) (not tb!252587) (not b!4209236) (not b!4209243) (not b!4209104) (not b!4209296) (not d!1240639) (not b!4209348) (not b!4209250) (not d!1240613) (not b!4209340) (not b!4209298) (not b!4209281) (not b!4209100) (not d!1240545) (not b!4209302) (not b!4209323) (not b!4209264) (not b!4209237) (not d!1240597) (not b!4209324) (not b!4209242) (not b!4209255) (not b!4209256) (not b!4208962) (not b!4209244) (not d!1240623) (not b!4209095) (not d!1240637) (not b!4209336) (not b!4209299) b_and!331109)
(check-sat b_and!331053 (not b_next!123829) (not b_next!123833) b_and!331119 b_and!331113 b_and!331057 (not b_next!123839) b_and!331049 b_and!331061 (not b_next!123841) (not b_next!123847) (not b_next!123831) b_and!331109 b_and!331111 b_and!331117 (not b_next!123827) (not b_next!123835) (not b_next!123849) b_and!331115 (not b_next!123837))
(get-model)

(declare-fun b!4209360 () Bool)

(declare-fun e!2613065 () List!46397)

(assert (=> b!4209360 (= e!2613065 suffix!1557)))

(declare-fun d!1240663 () Bool)

(declare-fun e!2613064 () Bool)

(assert (=> d!1240663 e!2613064))

(declare-fun res!1729108 () Bool)

(assert (=> d!1240663 (=> (not res!1729108) (not e!2613064))))

(declare-fun lt!1498633 () List!46397)

(assert (=> d!1240663 (= res!1729108 (= (content!7241 lt!1498633) ((_ map or) (content!7241 (t!347762 p!3001)) (content!7241 suffix!1557))))))

(assert (=> d!1240663 (= lt!1498633 e!2613065)))

(declare-fun c!717185 () Bool)

(assert (=> d!1240663 (= c!717185 ((_ is Nil!46273) (t!347762 p!3001)))))

(assert (=> d!1240663 (= (++!11816 (t!347762 p!3001) suffix!1557) lt!1498633)))

(declare-fun b!4209363 () Bool)

(assert (=> b!4209363 (= e!2613064 (or (not (= suffix!1557 Nil!46273)) (= lt!1498633 (t!347762 p!3001))))))

(declare-fun b!4209361 () Bool)

(assert (=> b!4209361 (= e!2613065 (Cons!46273 (h!51693 (t!347762 p!3001)) (++!11816 (t!347762 (t!347762 p!3001)) suffix!1557)))))

(declare-fun b!4209362 () Bool)

(declare-fun res!1729109 () Bool)

(assert (=> b!4209362 (=> (not res!1729109) (not e!2613064))))

(assert (=> b!4209362 (= res!1729109 (= (size!33993 lt!1498633) (+ (size!33993 (t!347762 p!3001)) (size!33993 suffix!1557))))))

(assert (= (and d!1240663 c!717185) b!4209360))

(assert (= (and d!1240663 (not c!717185)) b!4209361))

(assert (= (and d!1240663 res!1729108) b!4209362))

(assert (= (and b!4209362 res!1729109) b!4209363))

(declare-fun m!4797347 () Bool)

(assert (=> d!1240663 m!4797347))

(declare-fun m!4797349 () Bool)

(assert (=> d!1240663 m!4797349))

(assert (=> d!1240663 m!4797177))

(declare-fun m!4797351 () Bool)

(assert (=> b!4209361 m!4797351))

(declare-fun m!4797353 () Bool)

(assert (=> b!4209362 m!4797353))

(assert (=> b!4209362 m!4797281))

(assert (=> b!4209362 m!4797187))

(assert (=> b!4209155 d!1240663))

(declare-fun d!1240665 () Bool)

(declare-fun lt!1498634 () Int)

(assert (=> d!1240665 (>= lt!1498634 0)))

(declare-fun e!2613066 () Int)

(assert (=> d!1240665 (= lt!1498634 e!2613066)))

(declare-fun c!717186 () Bool)

(assert (=> d!1240665 (= c!717186 ((_ is Nil!46273) (originalCharacters!8124 tBis!41)))))

(assert (=> d!1240665 (= (size!33993 (originalCharacters!8124 tBis!41)) lt!1498634)))

(declare-fun b!4209364 () Bool)

(assert (=> b!4209364 (= e!2613066 0)))

(declare-fun b!4209365 () Bool)

(assert (=> b!4209365 (= e!2613066 (+ 1 (size!33993 (t!347762 (originalCharacters!8124 tBis!41)))))))

(assert (= (and d!1240665 c!717186) b!4209364))

(assert (= (and d!1240665 (not c!717186)) b!4209365))

(declare-fun m!4797355 () Bool)

(assert (=> b!4209365 m!4797355))

(assert (=> b!4209250 d!1240665))

(declare-fun d!1240667 () Bool)

(declare-fun charsToBigInt!0 (List!46398 Int) Int)

(assert (=> d!1240667 (= (inv!15 (value!241176 t!8364)) (= (charsToBigInt!0 (text!56253 (value!241176 t!8364)) 0) (value!241171 (value!241176 t!8364))))))

(declare-fun bs!597346 () Bool)

(assert (= bs!597346 d!1240667))

(declare-fun m!4797357 () Bool)

(assert (=> bs!597346 m!4797357))

(assert (=> b!4209303 d!1240667))

(declare-fun d!1240669 () Bool)

(declare-fun lt!1498635 () Int)

(assert (=> d!1240669 (>= lt!1498635 0)))

(declare-fun e!2613067 () Int)

(assert (=> d!1240669 (= lt!1498635 e!2613067)))

(declare-fun c!717187 () Bool)

(assert (=> d!1240669 (= c!717187 ((_ is Nil!46273) (t!347762 p!3001)))))

(assert (=> d!1240669 (= (size!33993 (t!347762 p!3001)) lt!1498635)))

(declare-fun b!4209366 () Bool)

(assert (=> b!4209366 (= e!2613067 0)))

(declare-fun b!4209367 () Bool)

(assert (=> b!4209367 (= e!2613067 (+ 1 (size!33993 (t!347762 (t!347762 p!3001)))))))

(assert (= (and d!1240669 c!717187) b!4209366))

(assert (= (and d!1240669 (not c!717187)) b!4209367))

(declare-fun m!4797359 () Bool)

(assert (=> b!4209367 m!4797359))

(assert (=> b!4209278 d!1240669))

(declare-fun d!1240671 () Bool)

(declare-fun c!717190 () Bool)

(assert (=> d!1240671 (= c!717190 ((_ is Nil!46273) lt!1498604))))

(declare-fun e!2613070 () (InoxSet C!25488))

(assert (=> d!1240671 (= (content!7241 lt!1498604) e!2613070)))

(declare-fun b!4209372 () Bool)

(assert (=> b!4209372 (= e!2613070 ((as const (Array C!25488 Bool)) false))))

(declare-fun b!4209373 () Bool)

(assert (=> b!4209373 (= e!2613070 ((_ map or) (store ((as const (Array C!25488 Bool)) false) (h!51693 lt!1498604) true) (content!7241 (t!347762 lt!1498604))))))

(assert (= (and d!1240671 c!717190) b!4209372))

(assert (= (and d!1240671 (not c!717190)) b!4209373))

(declare-fun m!4797361 () Bool)

(assert (=> b!4209373 m!4797361))

(declare-fun m!4797363 () Bool)

(assert (=> b!4209373 m!4797363))

(assert (=> d!1240597 d!1240671))

(declare-fun d!1240673 () Bool)

(declare-fun c!717191 () Bool)

(assert (=> d!1240673 (= c!717191 ((_ is Nil!46273) p!3001))))

(declare-fun e!2613071 () (InoxSet C!25488))

(assert (=> d!1240673 (= (content!7241 p!3001) e!2613071)))

(declare-fun b!4209374 () Bool)

(assert (=> b!4209374 (= e!2613071 ((as const (Array C!25488 Bool)) false))))

(declare-fun b!4209375 () Bool)

(assert (=> b!4209375 (= e!2613071 ((_ map or) (store ((as const (Array C!25488 Bool)) false) (h!51693 p!3001) true) (content!7241 (t!347762 p!3001))))))

(assert (= (and d!1240673 c!717191) b!4209374))

(assert (= (and d!1240673 (not c!717191)) b!4209375))

(declare-fun m!4797365 () Bool)

(assert (=> b!4209375 m!4797365))

(assert (=> b!4209375 m!4797349))

(assert (=> d!1240597 d!1240673))

(declare-fun d!1240675 () Bool)

(declare-fun c!717192 () Bool)

(assert (=> d!1240675 (= c!717192 ((_ is Nil!46273) suffix!1557))))

(declare-fun e!2613072 () (InoxSet C!25488))

(assert (=> d!1240675 (= (content!7241 suffix!1557) e!2613072)))

(declare-fun b!4209376 () Bool)

(assert (=> b!4209376 (= e!2613072 ((as const (Array C!25488 Bool)) false))))

(declare-fun b!4209377 () Bool)

(assert (=> b!4209377 (= e!2613072 ((_ map or) (store ((as const (Array C!25488 Bool)) false) (h!51693 suffix!1557) true) (content!7241 (t!347762 suffix!1557))))))

(assert (= (and d!1240675 c!717192) b!4209376))

(assert (= (and d!1240675 (not c!717192)) b!4209377))

(declare-fun m!4797367 () Bool)

(assert (=> b!4209377 m!4797367))

(declare-fun m!4797369 () Bool)

(assert (=> b!4209377 m!4797369))

(assert (=> d!1240597 d!1240675))

(declare-fun d!1240677 () Bool)

(assert (=> d!1240677 (= (get!15051 lt!1498572) (v!40795 lt!1498572))))

(assert (=> b!4209094 d!1240677))

(declare-fun d!1240679 () Bool)

(declare-fun lt!1498636 () Int)

(assert (=> d!1240679 (>= lt!1498636 0)))

(declare-fun e!2613073 () Int)

(assert (=> d!1240679 (= lt!1498636 e!2613073)))

(declare-fun c!717193 () Bool)

(assert (=> d!1240679 (= c!717193 ((_ is Nil!46273) (originalCharacters!8124 (_1!25143 (get!15051 lt!1498572)))))))

(assert (=> d!1240679 (= (size!33993 (originalCharacters!8124 (_1!25143 (get!15051 lt!1498572)))) lt!1498636)))

(declare-fun b!4209378 () Bool)

(assert (=> b!4209378 (= e!2613073 0)))

(declare-fun b!4209379 () Bool)

(assert (=> b!4209379 (= e!2613073 (+ 1 (size!33993 (t!347762 (originalCharacters!8124 (_1!25143 (get!15051 lt!1498572)))))))))

(assert (= (and d!1240679 c!717193) b!4209378))

(assert (= (and d!1240679 (not c!717193)) b!4209379))

(declare-fun m!4797371 () Bool)

(assert (=> b!4209379 m!4797371))

(assert (=> b!4209094 d!1240679))

(declare-fun d!1240681 () Bool)

(declare-fun e!2613076 () Bool)

(assert (=> d!1240681 e!2613076))

(declare-fun res!1729113 () Bool)

(assert (=> d!1240681 (=> res!1729113 e!2613076)))

(declare-fun lt!1498637 () Bool)

(assert (=> d!1240681 (= res!1729113 (not lt!1498637))))

(declare-fun e!2613074 () Bool)

(assert (=> d!1240681 (= lt!1498637 e!2613074)))

(declare-fun res!1729112 () Bool)

(assert (=> d!1240681 (=> res!1729112 e!2613074)))

(assert (=> d!1240681 (= res!1729112 ((_ is Nil!46273) (tail!6777 p!3001)))))

(assert (=> d!1240681 (= (isPrefix!4601 (tail!6777 p!3001) (tail!6777 input!3517)) lt!1498637)))

(declare-fun b!4209383 () Bool)

(assert (=> b!4209383 (= e!2613076 (>= (size!33993 (tail!6777 input!3517)) (size!33993 (tail!6777 p!3001))))))

(declare-fun b!4209380 () Bool)

(declare-fun e!2613075 () Bool)

(assert (=> b!4209380 (= e!2613074 e!2613075)))

(declare-fun res!1729111 () Bool)

(assert (=> b!4209380 (=> (not res!1729111) (not e!2613075))))

(assert (=> b!4209380 (= res!1729111 (not ((_ is Nil!46273) (tail!6777 input!3517))))))

(declare-fun b!4209382 () Bool)

(assert (=> b!4209382 (= e!2613075 (isPrefix!4601 (tail!6777 (tail!6777 p!3001)) (tail!6777 (tail!6777 input!3517))))))

(declare-fun b!4209381 () Bool)

(declare-fun res!1729110 () Bool)

(assert (=> b!4209381 (=> (not res!1729110) (not e!2613075))))

(assert (=> b!4209381 (= res!1729110 (= (head!8930 (tail!6777 p!3001)) (head!8930 (tail!6777 input!3517))))))

(assert (= (and d!1240681 (not res!1729112)) b!4209380))

(assert (= (and b!4209380 res!1729111) b!4209381))

(assert (= (and b!4209381 res!1729110) b!4209382))

(assert (= (and d!1240681 (not res!1729113)) b!4209383))

(assert (=> b!4209383 m!4796939))

(declare-fun m!4797373 () Bool)

(assert (=> b!4209383 m!4797373))

(assert (=> b!4209383 m!4796937))

(declare-fun m!4797375 () Bool)

(assert (=> b!4209383 m!4797375))

(assert (=> b!4209382 m!4796937))

(declare-fun m!4797377 () Bool)

(assert (=> b!4209382 m!4797377))

(assert (=> b!4209382 m!4796939))

(declare-fun m!4797379 () Bool)

(assert (=> b!4209382 m!4797379))

(assert (=> b!4209382 m!4797377))

(assert (=> b!4209382 m!4797379))

(declare-fun m!4797381 () Bool)

(assert (=> b!4209382 m!4797381))

(assert (=> b!4209381 m!4796937))

(declare-fun m!4797383 () Bool)

(assert (=> b!4209381 m!4797383))

(assert (=> b!4209381 m!4796939))

(declare-fun m!4797385 () Bool)

(assert (=> b!4209381 m!4797385))

(assert (=> b!4208963 d!1240681))

(declare-fun d!1240683 () Bool)

(assert (=> d!1240683 (= (tail!6777 p!3001) (t!347762 p!3001))))

(assert (=> b!4208963 d!1240683))

(declare-fun d!1240685 () Bool)

(assert (=> d!1240685 (= (tail!6777 input!3517) (t!347762 input!3517))))

(assert (=> b!4208963 d!1240685))

(declare-fun d!1240687 () Bool)

(declare-fun e!2613079 () Bool)

(assert (=> d!1240687 e!2613079))

(declare-fun res!1729117 () Bool)

(assert (=> d!1240687 (=> res!1729117 e!2613079)))

(declare-fun lt!1498638 () Bool)

(assert (=> d!1240687 (= res!1729117 (not lt!1498638))))

(declare-fun e!2613077 () Bool)

(assert (=> d!1240687 (= lt!1498638 e!2613077)))

(declare-fun res!1729116 () Bool)

(assert (=> d!1240687 (=> res!1729116 e!2613077)))

(assert (=> d!1240687 (= res!1729116 ((_ is Nil!46273) (tail!6777 input!3517)))))

(assert (=> d!1240687 (= (isPrefix!4601 (tail!6777 input!3517) (tail!6777 input!3517)) lt!1498638)))

(declare-fun b!4209387 () Bool)

(assert (=> b!4209387 (= e!2613079 (>= (size!33993 (tail!6777 input!3517)) (size!33993 (tail!6777 input!3517))))))

(declare-fun b!4209384 () Bool)

(declare-fun e!2613078 () Bool)

(assert (=> b!4209384 (= e!2613077 e!2613078)))

(declare-fun res!1729115 () Bool)

(assert (=> b!4209384 (=> (not res!1729115) (not e!2613078))))

(assert (=> b!4209384 (= res!1729115 (not ((_ is Nil!46273) (tail!6777 input!3517))))))

(declare-fun b!4209386 () Bool)

(assert (=> b!4209386 (= e!2613078 (isPrefix!4601 (tail!6777 (tail!6777 input!3517)) (tail!6777 (tail!6777 input!3517))))))

(declare-fun b!4209385 () Bool)

(declare-fun res!1729114 () Bool)

(assert (=> b!4209385 (=> (not res!1729114) (not e!2613078))))

(assert (=> b!4209385 (= res!1729114 (= (head!8930 (tail!6777 input!3517)) (head!8930 (tail!6777 input!3517))))))

(assert (= (and d!1240687 (not res!1729116)) b!4209384))

(assert (= (and b!4209384 res!1729115) b!4209385))

(assert (= (and b!4209385 res!1729114) b!4209386))

(assert (= (and d!1240687 (not res!1729117)) b!4209387))

(assert (=> b!4209387 m!4796939))

(assert (=> b!4209387 m!4797373))

(assert (=> b!4209387 m!4796939))

(assert (=> b!4209387 m!4797373))

(assert (=> b!4209386 m!4796939))

(assert (=> b!4209386 m!4797379))

(assert (=> b!4209386 m!4796939))

(assert (=> b!4209386 m!4797379))

(assert (=> b!4209386 m!4797379))

(assert (=> b!4209386 m!4797379))

(declare-fun m!4797387 () Bool)

(assert (=> b!4209386 m!4797387))

(assert (=> b!4209385 m!4796939))

(assert (=> b!4209385 m!4797385))

(assert (=> b!4209385 m!4796939))

(assert (=> b!4209385 m!4797385))

(assert (=> b!4209105 d!1240687))

(assert (=> b!4209105 d!1240685))

(declare-fun b!4209388 () Bool)

(declare-fun e!2613081 () List!46397)

(assert (=> b!4209388 (= e!2613081 suffixBis!41)))

(declare-fun d!1240689 () Bool)

(declare-fun e!2613080 () Bool)

(assert (=> d!1240689 e!2613080))

(declare-fun res!1729118 () Bool)

(assert (=> d!1240689 (=> (not res!1729118) (not e!2613080))))

(declare-fun lt!1498639 () List!46397)

(assert (=> d!1240689 (= res!1729118 (= (content!7241 lt!1498639) ((_ map or) (content!7241 (t!347762 pBis!121)) (content!7241 suffixBis!41))))))

(assert (=> d!1240689 (= lt!1498639 e!2613081)))

(declare-fun c!717194 () Bool)

(assert (=> d!1240689 (= c!717194 ((_ is Nil!46273) (t!347762 pBis!121)))))

(assert (=> d!1240689 (= (++!11816 (t!347762 pBis!121) suffixBis!41) lt!1498639)))

(declare-fun b!4209391 () Bool)

(assert (=> b!4209391 (= e!2613080 (or (not (= suffixBis!41 Nil!46273)) (= lt!1498639 (t!347762 pBis!121))))))

(declare-fun b!4209389 () Bool)

(assert (=> b!4209389 (= e!2613081 (Cons!46273 (h!51693 (t!347762 pBis!121)) (++!11816 (t!347762 (t!347762 pBis!121)) suffixBis!41)))))

(declare-fun b!4209390 () Bool)

(declare-fun res!1729119 () Bool)

(assert (=> b!4209390 (=> (not res!1729119) (not e!2613080))))

(assert (=> b!4209390 (= res!1729119 (= (size!33993 lt!1498639) (+ (size!33993 (t!347762 pBis!121)) (size!33993 suffixBis!41))))))

(assert (= (and d!1240689 c!717194) b!4209388))

(assert (= (and d!1240689 (not c!717194)) b!4209389))

(assert (= (and d!1240689 res!1729118) b!4209390))

(assert (= (and b!4209390 res!1729119) b!4209391))

(declare-fun m!4797389 () Bool)

(assert (=> d!1240689 m!4797389))

(declare-fun m!4797391 () Bool)

(assert (=> d!1240689 m!4797391))

(assert (=> d!1240689 m!4797301))

(declare-fun m!4797393 () Bool)

(assert (=> b!4209389 m!4797393))

(declare-fun m!4797395 () Bool)

(assert (=> b!4209390 m!4797395))

(assert (=> b!4209390 m!4797279))

(assert (=> b!4209390 m!4797307))

(assert (=> b!4209298 d!1240689))

(declare-fun b!4209420 () Bool)

(declare-fun e!2613096 () Bool)

(assert (=> b!4209420 (= e!2613096 (nullable!4453 (regex!7742 rBis!178)))))

(declare-fun b!4209421 () Bool)

(declare-fun res!1729143 () Bool)

(declare-fun e!2613100 () Bool)

(assert (=> b!4209421 (=> (not res!1729143) (not e!2613100))))

(assert (=> b!4209421 (= res!1729143 (isEmpty!27405 (tail!6777 (list!16729 (charsOf!5165 (_1!25143 (get!15051 lt!1498572)))))))))

(declare-fun b!4209423 () Bool)

(declare-fun e!2613098 () Bool)

(assert (=> b!4209423 (= e!2613098 (not (= (head!8930 (list!16729 (charsOf!5165 (_1!25143 (get!15051 lt!1498572))))) (c!717138 (regex!7742 rBis!178)))))))

(declare-fun b!4209424 () Bool)

(declare-fun res!1729142 () Bool)

(declare-fun e!2613099 () Bool)

(assert (=> b!4209424 (=> res!1729142 e!2613099)))

(assert (=> b!4209424 (= res!1729142 e!2613100)))

(declare-fun res!1729136 () Bool)

(assert (=> b!4209424 (=> (not res!1729136) (not e!2613100))))

(declare-fun lt!1498642 () Bool)

(assert (=> b!4209424 (= res!1729136 lt!1498642)))

(declare-fun b!4209425 () Bool)

(declare-fun res!1729138 () Bool)

(assert (=> b!4209425 (=> (not res!1729138) (not e!2613100))))

(declare-fun call!292883 () Bool)

(assert (=> b!4209425 (= res!1729138 (not call!292883))))

(declare-fun b!4209426 () Bool)

(declare-fun e!2613102 () Bool)

(assert (=> b!4209426 (= e!2613102 (= lt!1498642 call!292883))))

(declare-fun bm!292878 () Bool)

(assert (=> bm!292878 (= call!292883 (isEmpty!27405 (list!16729 (charsOf!5165 (_1!25143 (get!15051 lt!1498572))))))))

(declare-fun b!4209427 () Bool)

(declare-fun e!2613101 () Bool)

(assert (=> b!4209427 (= e!2613102 e!2613101)))

(declare-fun c!717203 () Bool)

(assert (=> b!4209427 (= c!717203 ((_ is EmptyLang!12647) (regex!7742 rBis!178)))))

(declare-fun b!4209428 () Bool)

(declare-fun res!1729137 () Bool)

(assert (=> b!4209428 (=> res!1729137 e!2613099)))

(assert (=> b!4209428 (= res!1729137 (not ((_ is ElementMatch!12647) (regex!7742 rBis!178))))))

(assert (=> b!4209428 (= e!2613101 e!2613099)))

(declare-fun b!4209429 () Bool)

(declare-fun derivativeStep!3833 (Regex!12647 C!25488) Regex!12647)

(assert (=> b!4209429 (= e!2613096 (matchR!6360 (derivativeStep!3833 (regex!7742 rBis!178) (head!8930 (list!16729 (charsOf!5165 (_1!25143 (get!15051 lt!1498572)))))) (tail!6777 (list!16729 (charsOf!5165 (_1!25143 (get!15051 lt!1498572)))))))))

(declare-fun b!4209430 () Bool)

(declare-fun e!2613097 () Bool)

(assert (=> b!4209430 (= e!2613097 e!2613098)))

(declare-fun res!1729141 () Bool)

(assert (=> b!4209430 (=> res!1729141 e!2613098)))

(assert (=> b!4209430 (= res!1729141 call!292883)))

(declare-fun b!4209431 () Bool)

(assert (=> b!4209431 (= e!2613101 (not lt!1498642))))

(declare-fun b!4209422 () Bool)

(assert (=> b!4209422 (= e!2613100 (= (head!8930 (list!16729 (charsOf!5165 (_1!25143 (get!15051 lt!1498572))))) (c!717138 (regex!7742 rBis!178))))))

(declare-fun d!1240691 () Bool)

(assert (=> d!1240691 e!2613102))

(declare-fun c!717201 () Bool)

(assert (=> d!1240691 (= c!717201 ((_ is EmptyExpr!12647) (regex!7742 rBis!178)))))

(assert (=> d!1240691 (= lt!1498642 e!2613096)))

(declare-fun c!717202 () Bool)

(assert (=> d!1240691 (= c!717202 (isEmpty!27405 (list!16729 (charsOf!5165 (_1!25143 (get!15051 lt!1498572))))))))

(assert (=> d!1240691 (validRegex!5740 (regex!7742 rBis!178))))

(assert (=> d!1240691 (= (matchR!6360 (regex!7742 rBis!178) (list!16729 (charsOf!5165 (_1!25143 (get!15051 lt!1498572))))) lt!1498642)))

(declare-fun b!4209432 () Bool)

(declare-fun res!1729139 () Bool)

(assert (=> b!4209432 (=> res!1729139 e!2613098)))

(assert (=> b!4209432 (= res!1729139 (not (isEmpty!27405 (tail!6777 (list!16729 (charsOf!5165 (_1!25143 (get!15051 lt!1498572))))))))))

(declare-fun b!4209433 () Bool)

(assert (=> b!4209433 (= e!2613099 e!2613097)))

(declare-fun res!1729140 () Bool)

(assert (=> b!4209433 (=> (not res!1729140) (not e!2613097))))

(assert (=> b!4209433 (= res!1729140 (not lt!1498642))))

(assert (= (and d!1240691 c!717202) b!4209420))

(assert (= (and d!1240691 (not c!717202)) b!4209429))

(assert (= (and d!1240691 c!717201) b!4209426))

(assert (= (and d!1240691 (not c!717201)) b!4209427))

(assert (= (and b!4209427 c!717203) b!4209431))

(assert (= (and b!4209427 (not c!717203)) b!4209428))

(assert (= (and b!4209428 (not res!1729137)) b!4209424))

(assert (= (and b!4209424 res!1729136) b!4209425))

(assert (= (and b!4209425 res!1729138) b!4209421))

(assert (= (and b!4209421 res!1729143) b!4209422))

(assert (= (and b!4209424 (not res!1729142)) b!4209433))

(assert (= (and b!4209433 res!1729140) b!4209430))

(assert (= (and b!4209430 (not res!1729141)) b!4209432))

(assert (= (and b!4209432 (not res!1729139)) b!4209423))

(assert (= (or b!4209426 b!4209425 b!4209430) bm!292878))

(assert (=> b!4209432 m!4797103))

(declare-fun m!4797397 () Bool)

(assert (=> b!4209432 m!4797397))

(assert (=> b!4209432 m!4797397))

(declare-fun m!4797399 () Bool)

(assert (=> b!4209432 m!4797399))

(assert (=> d!1240691 m!4797103))

(declare-fun m!4797401 () Bool)

(assert (=> d!1240691 m!4797401))

(assert (=> d!1240691 m!4797275))

(assert (=> b!4209423 m!4797103))

(declare-fun m!4797403 () Bool)

(assert (=> b!4209423 m!4797403))

(assert (=> b!4209421 m!4797103))

(assert (=> b!4209421 m!4797397))

(assert (=> b!4209421 m!4797397))

(assert (=> b!4209421 m!4797399))

(assert (=> b!4209422 m!4797103))

(assert (=> b!4209422 m!4797403))

(assert (=> bm!292878 m!4797103))

(assert (=> bm!292878 m!4797401))

(assert (=> b!4209420 m!4797277))

(assert (=> b!4209429 m!4797103))

(assert (=> b!4209429 m!4797403))

(assert (=> b!4209429 m!4797403))

(declare-fun m!4797405 () Bool)

(assert (=> b!4209429 m!4797405))

(assert (=> b!4209429 m!4797103))

(assert (=> b!4209429 m!4797397))

(assert (=> b!4209429 m!4797405))

(assert (=> b!4209429 m!4797397))

(declare-fun m!4797407 () Bool)

(assert (=> b!4209429 m!4797407))

(assert (=> b!4209102 d!1240691))

(declare-fun d!1240693 () Bool)

(assert (=> d!1240693 (= (list!16729 (charsOf!5165 (_1!25143 (get!15051 lt!1498572)))) (list!16731 (c!717139 (charsOf!5165 (_1!25143 (get!15051 lt!1498572))))))))

(declare-fun bs!597347 () Bool)

(assert (= bs!597347 d!1240693))

(declare-fun m!4797409 () Bool)

(assert (=> bs!597347 m!4797409))

(assert (=> b!4209102 d!1240693))

(declare-fun d!1240695 () Bool)

(declare-fun lt!1498643 () BalanceConc!27500)

(assert (=> d!1240695 (= (list!16729 lt!1498643) (originalCharacters!8124 (_1!25143 (get!15051 lt!1498572))))))

(assert (=> d!1240695 (= lt!1498643 (dynLambda!19956 (toChars!10317 (transformation!7742 (rule!10852 (_1!25143 (get!15051 lt!1498572))))) (value!241176 (_1!25143 (get!15051 lt!1498572)))))))

(assert (=> d!1240695 (= (charsOf!5165 (_1!25143 (get!15051 lt!1498572))) lt!1498643)))

(declare-fun b_lambda!123985 () Bool)

(assert (=> (not b_lambda!123985) (not d!1240695)))

(declare-fun t!347818 () Bool)

(declare-fun tb!252617 () Bool)

(assert (=> (and b!4208951 (= (toChars!10317 (transformation!7742 (rule!10852 t!8364))) (toChars!10317 (transformation!7742 (rule!10852 (_1!25143 (get!15051 lt!1498572)))))) t!347818) tb!252617))

(declare-fun b!4209434 () Bool)

(declare-fun e!2613103 () Bool)

(declare-fun tp!1286908 () Bool)

(assert (=> b!4209434 (= e!2613103 (and (inv!60881 (c!717139 (dynLambda!19956 (toChars!10317 (transformation!7742 (rule!10852 (_1!25143 (get!15051 lt!1498572))))) (value!241176 (_1!25143 (get!15051 lt!1498572)))))) tp!1286908))))

(declare-fun result!307890 () Bool)

(assert (=> tb!252617 (= result!307890 (and (inv!60882 (dynLambda!19956 (toChars!10317 (transformation!7742 (rule!10852 (_1!25143 (get!15051 lt!1498572))))) (value!241176 (_1!25143 (get!15051 lt!1498572))))) e!2613103))))

(assert (= tb!252617 b!4209434))

(declare-fun m!4797411 () Bool)

(assert (=> b!4209434 m!4797411))

(declare-fun m!4797413 () Bool)

(assert (=> tb!252617 m!4797413))

(assert (=> d!1240695 t!347818))

(declare-fun b_and!331131 () Bool)

(assert (= b_and!331111 (and (=> t!347818 result!307890) b_and!331131)))

(declare-fun t!347820 () Bool)

(declare-fun tb!252619 () Bool)

(assert (=> (and b!4209337 (= (toChars!10317 (transformation!7742 (h!51695 (t!347764 rules!3967)))) (toChars!10317 (transformation!7742 (rule!10852 (_1!25143 (get!15051 lt!1498572)))))) t!347820) tb!252619))

(declare-fun result!307892 () Bool)

(assert (= result!307892 result!307890))

(assert (=> d!1240695 t!347820))

(declare-fun b_and!331133 () Bool)

(assert (= b_and!331119 (and (=> t!347820 result!307892) b_and!331133)))

(declare-fun t!347822 () Bool)

(declare-fun tb!252621 () Bool)

(assert (=> (and b!4208944 (= (toChars!10317 (transformation!7742 rBis!178)) (toChars!10317 (transformation!7742 (rule!10852 (_1!25143 (get!15051 lt!1498572)))))) t!347822) tb!252621))

(declare-fun result!307894 () Bool)

(assert (= result!307894 result!307890))

(assert (=> d!1240695 t!347822))

(declare-fun b_and!331135 () Bool)

(assert (= b_and!331113 (and (=> t!347822 result!307894) b_and!331135)))

(declare-fun tb!252623 () Bool)

(declare-fun t!347824 () Bool)

(assert (=> (and b!4208935 (= (toChars!10317 (transformation!7742 (h!51695 rules!3967))) (toChars!10317 (transformation!7742 (rule!10852 (_1!25143 (get!15051 lt!1498572)))))) t!347824) tb!252623))

(declare-fun result!307896 () Bool)

(assert (= result!307896 result!307890))

(assert (=> d!1240695 t!347824))

(declare-fun b_and!331137 () Bool)

(assert (= b_and!331109 (and (=> t!347824 result!307896) b_and!331137)))

(declare-fun t!347826 () Bool)

(declare-fun tb!252625 () Bool)

(assert (=> (and b!4208924 (= (toChars!10317 (transformation!7742 (rule!10852 tBis!41))) (toChars!10317 (transformation!7742 (rule!10852 (_1!25143 (get!15051 lt!1498572)))))) t!347826) tb!252625))

(declare-fun result!307898 () Bool)

(assert (= result!307898 result!307890))

(assert (=> d!1240695 t!347826))

(declare-fun b_and!331139 () Bool)

(assert (= b_and!331115 (and (=> t!347826 result!307898) b_and!331139)))

(declare-fun m!4797415 () Bool)

(assert (=> d!1240695 m!4797415))

(declare-fun m!4797417 () Bool)

(assert (=> d!1240695 m!4797417))

(assert (=> b!4209102 d!1240695))

(assert (=> b!4209102 d!1240677))

(declare-fun d!1240697 () Bool)

(declare-fun lt!1498644 () Int)

(assert (=> d!1240697 (>= lt!1498644 0)))

(declare-fun e!2613104 () Int)

(assert (=> d!1240697 (= lt!1498644 e!2613104)))

(declare-fun c!717204 () Bool)

(assert (=> d!1240697 (= c!717204 ((_ is Nil!46273) (originalCharacters!8124 t!8364)))))

(assert (=> d!1240697 (= (size!33993 (originalCharacters!8124 t!8364)) lt!1498644)))

(declare-fun b!4209435 () Bool)

(assert (=> b!4209435 (= e!2613104 0)))

(declare-fun b!4209436 () Bool)

(assert (=> b!4209436 (= e!2613104 (+ 1 (size!33993 (t!347762 (originalCharacters!8124 t!8364)))))))

(assert (= (and d!1240697 c!717204) b!4209435))

(assert (= (and d!1240697 (not c!717204)) b!4209436))

(declare-fun m!4797419 () Bool)

(assert (=> b!4209436 m!4797419))

(assert (=> b!4209257 d!1240697))

(declare-fun d!1240699 () Bool)

(declare-fun lt!1498645 () Int)

(assert (=> d!1240699 (>= lt!1498645 0)))

(declare-fun e!2613105 () Int)

(assert (=> d!1240699 (= lt!1498645 e!2613105)))

(declare-fun c!717205 () Bool)

(assert (=> d!1240699 (= c!717205 ((_ is Nil!46273) (_2!25143 (get!15051 lt!1498617))))))

(assert (=> d!1240699 (= (size!33993 (_2!25143 (get!15051 lt!1498617))) lt!1498645)))

(declare-fun b!4209437 () Bool)

(assert (=> b!4209437 (= e!2613105 0)))

(declare-fun b!4209438 () Bool)

(assert (=> b!4209438 (= e!2613105 (+ 1 (size!33993 (t!347762 (_2!25143 (get!15051 lt!1498617))))))))

(assert (= (and d!1240699 c!717205) b!4209437))

(assert (= (and d!1240699 (not c!717205)) b!4209438))

(declare-fun m!4797421 () Bool)

(assert (=> b!4209438 m!4797421))

(assert (=> b!4209237 d!1240699))

(declare-fun d!1240701 () Bool)

(assert (=> d!1240701 (= (get!15051 lt!1498617) (v!40795 lt!1498617))))

(assert (=> b!4209237 d!1240701))

(declare-fun d!1240703 () Bool)

(declare-fun lt!1498646 () Int)

(assert (=> d!1240703 (>= lt!1498646 0)))

(declare-fun e!2613106 () Int)

(assert (=> d!1240703 (= lt!1498646 e!2613106)))

(declare-fun c!717206 () Bool)

(assert (=> d!1240703 (= c!717206 ((_ is Nil!46273) input!3517))))

(assert (=> d!1240703 (= (size!33993 input!3517) lt!1498646)))

(declare-fun b!4209439 () Bool)

(assert (=> b!4209439 (= e!2613106 0)))

(declare-fun b!4209440 () Bool)

(assert (=> b!4209440 (= e!2613106 (+ 1 (size!33993 (t!347762 input!3517))))))

(assert (= (and d!1240703 c!717206) b!4209439))

(assert (= (and d!1240703 (not c!717206)) b!4209440))

(declare-fun m!4797423 () Bool)

(assert (=> b!4209440 m!4797423))

(assert (=> b!4209237 d!1240703))

(declare-fun d!1240705 () Bool)

(declare-fun isBalanced!3745 (Conc!13953) Bool)

(assert (=> d!1240705 (= (inv!60882 (dynLambda!19956 (toChars!10317 (transformation!7742 (rule!10852 tBis!41))) (value!241176 tBis!41))) (isBalanced!3745 (c!717139 (dynLambda!19956 (toChars!10317 (transformation!7742 (rule!10852 tBis!41))) (value!241176 tBis!41)))))))

(declare-fun bs!597348 () Bool)

(assert (= bs!597348 d!1240705))

(declare-fun m!4797425 () Bool)

(assert (=> bs!597348 m!4797425))

(assert (=> tb!252587 d!1240705))

(declare-fun b!4209441 () Bool)

(declare-fun e!2613108 () List!46397)

(assert (=> b!4209441 (= e!2613108 (_2!25143 (get!15051 lt!1498572)))))

(declare-fun d!1240707 () Bool)

(declare-fun e!2613107 () Bool)

(assert (=> d!1240707 e!2613107))

(declare-fun res!1729144 () Bool)

(assert (=> d!1240707 (=> (not res!1729144) (not e!2613107))))

(declare-fun lt!1498647 () List!46397)

(assert (=> d!1240707 (= res!1729144 (= (content!7241 lt!1498647) ((_ map or) (content!7241 (list!16729 (charsOf!5165 (_1!25143 (get!15051 lt!1498572))))) (content!7241 (_2!25143 (get!15051 lt!1498572))))))))

(assert (=> d!1240707 (= lt!1498647 e!2613108)))

(declare-fun c!717207 () Bool)

(assert (=> d!1240707 (= c!717207 ((_ is Nil!46273) (list!16729 (charsOf!5165 (_1!25143 (get!15051 lt!1498572))))))))

(assert (=> d!1240707 (= (++!11816 (list!16729 (charsOf!5165 (_1!25143 (get!15051 lt!1498572)))) (_2!25143 (get!15051 lt!1498572))) lt!1498647)))

(declare-fun b!4209444 () Bool)

(assert (=> b!4209444 (= e!2613107 (or (not (= (_2!25143 (get!15051 lt!1498572)) Nil!46273)) (= lt!1498647 (list!16729 (charsOf!5165 (_1!25143 (get!15051 lt!1498572)))))))))

(declare-fun b!4209442 () Bool)

(assert (=> b!4209442 (= e!2613108 (Cons!46273 (h!51693 (list!16729 (charsOf!5165 (_1!25143 (get!15051 lt!1498572))))) (++!11816 (t!347762 (list!16729 (charsOf!5165 (_1!25143 (get!15051 lt!1498572))))) (_2!25143 (get!15051 lt!1498572)))))))

(declare-fun b!4209443 () Bool)

(declare-fun res!1729145 () Bool)

(assert (=> b!4209443 (=> (not res!1729145) (not e!2613107))))

(assert (=> b!4209443 (= res!1729145 (= (size!33993 lt!1498647) (+ (size!33993 (list!16729 (charsOf!5165 (_1!25143 (get!15051 lt!1498572))))) (size!33993 (_2!25143 (get!15051 lt!1498572))))))))

(assert (= (and d!1240707 c!717207) b!4209441))

(assert (= (and d!1240707 (not c!717207)) b!4209442))

(assert (= (and d!1240707 res!1729144) b!4209443))

(assert (= (and b!4209443 res!1729145) b!4209444))

(declare-fun m!4797427 () Bool)

(assert (=> d!1240707 m!4797427))

(assert (=> d!1240707 m!4797103))

(declare-fun m!4797429 () Bool)

(assert (=> d!1240707 m!4797429))

(declare-fun m!4797431 () Bool)

(assert (=> d!1240707 m!4797431))

(declare-fun m!4797433 () Bool)

(assert (=> b!4209442 m!4797433))

(declare-fun m!4797435 () Bool)

(assert (=> b!4209443 m!4797435))

(assert (=> b!4209443 m!4797103))

(declare-fun m!4797437 () Bool)

(assert (=> b!4209443 m!4797437))

(assert (=> b!4209443 m!4797093))

(assert (=> b!4209100 d!1240707))

(assert (=> b!4209100 d!1240693))

(assert (=> b!4209100 d!1240695))

(assert (=> b!4209100 d!1240677))

(declare-fun b!4209453 () Bool)

(declare-fun e!2613113 () List!46397)

(assert (=> b!4209453 (= e!2613113 Nil!46273)))

(declare-fun b!4209456 () Bool)

(declare-fun e!2613114 () List!46397)

(assert (=> b!4209456 (= e!2613114 (++!11816 (list!16731 (left!34451 (c!717139 (charsOf!5165 tBis!41)))) (list!16731 (right!34781 (c!717139 (charsOf!5165 tBis!41))))))))

(declare-fun b!4209454 () Bool)

(assert (=> b!4209454 (= e!2613113 e!2613114)))

(declare-fun c!717213 () Bool)

(assert (=> b!4209454 (= c!717213 ((_ is Leaf!21568) (c!717139 (charsOf!5165 tBis!41))))))

(declare-fun b!4209455 () Bool)

(declare-fun list!16732 (IArray!27911) List!46397)

(assert (=> b!4209455 (= e!2613114 (list!16732 (xs!17259 (c!717139 (charsOf!5165 tBis!41)))))))

(declare-fun d!1240709 () Bool)

(declare-fun c!717212 () Bool)

(assert (=> d!1240709 (= c!717212 ((_ is Empty!13953) (c!717139 (charsOf!5165 tBis!41))))))

(assert (=> d!1240709 (= (list!16731 (c!717139 (charsOf!5165 tBis!41))) e!2613113)))

(assert (= (and d!1240709 c!717212) b!4209453))

(assert (= (and d!1240709 (not c!717212)) b!4209454))

(assert (= (and b!4209454 c!717213) b!4209455))

(assert (= (and b!4209454 (not c!717213)) b!4209456))

(declare-fun m!4797439 () Bool)

(assert (=> b!4209456 m!4797439))

(declare-fun m!4797441 () Bool)

(assert (=> b!4209456 m!4797441))

(assert (=> b!4209456 m!4797439))

(assert (=> b!4209456 m!4797441))

(declare-fun m!4797443 () Bool)

(assert (=> b!4209456 m!4797443))

(declare-fun m!4797445 () Bool)

(assert (=> b!4209455 m!4797445))

(assert (=> d!1240637 d!1240709))

(declare-fun d!1240711 () Bool)

(declare-fun e!2613117 () Bool)

(assert (=> d!1240711 e!2613117))

(declare-fun res!1729149 () Bool)

(assert (=> d!1240711 (=> res!1729149 e!2613117)))

(declare-fun lt!1498648 () Bool)

(assert (=> d!1240711 (= res!1729149 (not lt!1498648))))

(declare-fun e!2613115 () Bool)

(assert (=> d!1240711 (= lt!1498648 e!2613115)))

(declare-fun res!1729148 () Bool)

(assert (=> d!1240711 (=> res!1729148 e!2613115)))

(assert (=> d!1240711 (= res!1729148 ((_ is Nil!46273) (tail!6777 pBis!121)))))

(assert (=> d!1240711 (= (isPrefix!4601 (tail!6777 pBis!121) (tail!6777 input!3517)) lt!1498648)))

(declare-fun b!4209460 () Bool)

(assert (=> b!4209460 (= e!2613117 (>= (size!33993 (tail!6777 input!3517)) (size!33993 (tail!6777 pBis!121))))))

(declare-fun b!4209457 () Bool)

(declare-fun e!2613116 () Bool)

(assert (=> b!4209457 (= e!2613115 e!2613116)))

(declare-fun res!1729147 () Bool)

(assert (=> b!4209457 (=> (not res!1729147) (not e!2613116))))

(assert (=> b!4209457 (= res!1729147 (not ((_ is Nil!46273) (tail!6777 input!3517))))))

(declare-fun b!4209459 () Bool)

(assert (=> b!4209459 (= e!2613116 (isPrefix!4601 (tail!6777 (tail!6777 pBis!121)) (tail!6777 (tail!6777 input!3517))))))

(declare-fun b!4209458 () Bool)

(declare-fun res!1729146 () Bool)

(assert (=> b!4209458 (=> (not res!1729146) (not e!2613116))))

(assert (=> b!4209458 (= res!1729146 (= (head!8930 (tail!6777 pBis!121)) (head!8930 (tail!6777 input!3517))))))

(assert (= (and d!1240711 (not res!1729148)) b!4209457))

(assert (= (and b!4209457 res!1729147) b!4209458))

(assert (= (and b!4209458 res!1729146) b!4209459))

(assert (= (and d!1240711 (not res!1729149)) b!4209460))

(assert (=> b!4209460 m!4796939))

(assert (=> b!4209460 m!4797373))

(assert (=> b!4209460 m!4797269))

(declare-fun m!4797447 () Bool)

(assert (=> b!4209460 m!4797447))

(assert (=> b!4209459 m!4797269))

(declare-fun m!4797449 () Bool)

(assert (=> b!4209459 m!4797449))

(assert (=> b!4209459 m!4796939))

(assert (=> b!4209459 m!4797379))

(assert (=> b!4209459 m!4797449))

(assert (=> b!4209459 m!4797379))

(declare-fun m!4797451 () Bool)

(assert (=> b!4209459 m!4797451))

(assert (=> b!4209458 m!4797269))

(declare-fun m!4797453 () Bool)

(assert (=> b!4209458 m!4797453))

(assert (=> b!4209458 m!4796939))

(assert (=> b!4209458 m!4797385))

(assert (=> b!4209263 d!1240711))

(declare-fun d!1240713 () Bool)

(assert (=> d!1240713 (= (tail!6777 pBis!121) (t!347762 pBis!121))))

(assert (=> b!4209263 d!1240713))

(assert (=> b!4209263 d!1240685))

(declare-fun d!1240715 () Bool)

(assert (=> d!1240715 true))

(declare-fun lt!1498723 () Bool)

(assert (=> d!1240715 (= lt!1498723 (rulesValidInductive!2872 thiss!26544 rules!3967))))

(declare-fun lambda!129751 () Int)

(declare-fun forall!8491 (List!46399 Int) Bool)

(assert (=> d!1240715 (= lt!1498723 (forall!8491 rules!3967 lambda!129751))))

(assert (=> d!1240715 (= (rulesValid!3030 thiss!26544 rules!3967) lt!1498723)))

(declare-fun bs!597357 () Bool)

(assert (= bs!597357 d!1240715))

(assert (=> bs!597357 m!4797235))

(declare-fun m!4797539 () Bool)

(assert (=> bs!597357 m!4797539))

(assert (=> d!1240633 d!1240715))

(declare-fun d!1240763 () Bool)

(declare-fun charsToInt!0 (List!46398) (_ BitVec 32))

(assert (=> d!1240763 (= (inv!16 (value!241176 t!8364)) (= (charsToInt!0 (text!56251 (value!241176 t!8364))) (value!241167 (value!241176 t!8364))))))

(declare-fun bs!597358 () Bool)

(assert (= bs!597358 d!1240763))

(declare-fun m!4797541 () Bool)

(assert (=> bs!597358 m!4797541))

(assert (=> b!4209305 d!1240763))

(declare-fun d!1240765 () Bool)

(assert (=> d!1240765 (= (isEmpty!27405 (originalCharacters!8124 tBis!41)) ((_ is Nil!46273) (originalCharacters!8124 tBis!41)))))

(assert (=> d!1240613 d!1240765))

(declare-fun b!4209585 () Bool)

(declare-fun e!2613185 () Bool)

(assert (=> b!4209585 (= e!2613185 (nullable!4453 (regex!7742 rBis!178)))))

(declare-fun b!4209586 () Bool)

(declare-fun res!1729193 () Bool)

(declare-fun e!2613189 () Bool)

(assert (=> b!4209586 (=> (not res!1729193) (not e!2613189))))

(assert (=> b!4209586 (= res!1729193 (isEmpty!27405 (tail!6777 (_1!25145 (findLongestMatchInner!1641 (regex!7742 rBis!178) Nil!46273 (size!33993 Nil!46273) input!3517 input!3517 (size!33993 input!3517))))))))

(declare-fun b!4209588 () Bool)

(declare-fun e!2613187 () Bool)

(assert (=> b!4209588 (= e!2613187 (not (= (head!8930 (_1!25145 (findLongestMatchInner!1641 (regex!7742 rBis!178) Nil!46273 (size!33993 Nil!46273) input!3517 input!3517 (size!33993 input!3517)))) (c!717138 (regex!7742 rBis!178)))))))

(declare-fun b!4209589 () Bool)

(declare-fun res!1729192 () Bool)

(declare-fun e!2613188 () Bool)

(assert (=> b!4209589 (=> res!1729192 e!2613188)))

(assert (=> b!4209589 (= res!1729192 e!2613189)))

(declare-fun res!1729186 () Bool)

(assert (=> b!4209589 (=> (not res!1729186) (not e!2613189))))

(declare-fun lt!1498724 () Bool)

(assert (=> b!4209589 (= res!1729186 lt!1498724)))

(declare-fun b!4209590 () Bool)

(declare-fun res!1729188 () Bool)

(assert (=> b!4209590 (=> (not res!1729188) (not e!2613189))))

(declare-fun call!292903 () Bool)

(assert (=> b!4209590 (= res!1729188 (not call!292903))))

(declare-fun b!4209591 () Bool)

(declare-fun e!2613191 () Bool)

(assert (=> b!4209591 (= e!2613191 (= lt!1498724 call!292903))))

(declare-fun bm!292898 () Bool)

(assert (=> bm!292898 (= call!292903 (isEmpty!27405 (_1!25145 (findLongestMatchInner!1641 (regex!7742 rBis!178) Nil!46273 (size!33993 Nil!46273) input!3517 input!3517 (size!33993 input!3517)))))))

(declare-fun b!4209592 () Bool)

(declare-fun e!2613190 () Bool)

(assert (=> b!4209592 (= e!2613191 e!2613190)))

(declare-fun c!717253 () Bool)

(assert (=> b!4209592 (= c!717253 ((_ is EmptyLang!12647) (regex!7742 rBis!178)))))

(declare-fun b!4209593 () Bool)

(declare-fun res!1729187 () Bool)

(assert (=> b!4209593 (=> res!1729187 e!2613188)))

(assert (=> b!4209593 (= res!1729187 (not ((_ is ElementMatch!12647) (regex!7742 rBis!178))))))

(assert (=> b!4209593 (= e!2613190 e!2613188)))

(declare-fun b!4209594 () Bool)

(assert (=> b!4209594 (= e!2613185 (matchR!6360 (derivativeStep!3833 (regex!7742 rBis!178) (head!8930 (_1!25145 (findLongestMatchInner!1641 (regex!7742 rBis!178) Nil!46273 (size!33993 Nil!46273) input!3517 input!3517 (size!33993 input!3517))))) (tail!6777 (_1!25145 (findLongestMatchInner!1641 (regex!7742 rBis!178) Nil!46273 (size!33993 Nil!46273) input!3517 input!3517 (size!33993 input!3517))))))))

(declare-fun b!4209595 () Bool)

(declare-fun e!2613186 () Bool)

(assert (=> b!4209595 (= e!2613186 e!2613187)))

(declare-fun res!1729191 () Bool)

(assert (=> b!4209595 (=> res!1729191 e!2613187)))

(assert (=> b!4209595 (= res!1729191 call!292903)))

(declare-fun b!4209596 () Bool)

(assert (=> b!4209596 (= e!2613190 (not lt!1498724))))

(declare-fun b!4209587 () Bool)

(assert (=> b!4209587 (= e!2613189 (= (head!8930 (_1!25145 (findLongestMatchInner!1641 (regex!7742 rBis!178) Nil!46273 (size!33993 Nil!46273) input!3517 input!3517 (size!33993 input!3517)))) (c!717138 (regex!7742 rBis!178))))))

(declare-fun d!1240767 () Bool)

(assert (=> d!1240767 e!2613191))

(declare-fun c!717251 () Bool)

(assert (=> d!1240767 (= c!717251 ((_ is EmptyExpr!12647) (regex!7742 rBis!178)))))

(assert (=> d!1240767 (= lt!1498724 e!2613185)))

(declare-fun c!717252 () Bool)

(assert (=> d!1240767 (= c!717252 (isEmpty!27405 (_1!25145 (findLongestMatchInner!1641 (regex!7742 rBis!178) Nil!46273 (size!33993 Nil!46273) input!3517 input!3517 (size!33993 input!3517)))))))

(assert (=> d!1240767 (validRegex!5740 (regex!7742 rBis!178))))

(assert (=> d!1240767 (= (matchR!6360 (regex!7742 rBis!178) (_1!25145 (findLongestMatchInner!1641 (regex!7742 rBis!178) Nil!46273 (size!33993 Nil!46273) input!3517 input!3517 (size!33993 input!3517)))) lt!1498724)))

(declare-fun b!4209597 () Bool)

(declare-fun res!1729189 () Bool)

(assert (=> b!4209597 (=> res!1729189 e!2613187)))

(assert (=> b!4209597 (= res!1729189 (not (isEmpty!27405 (tail!6777 (_1!25145 (findLongestMatchInner!1641 (regex!7742 rBis!178) Nil!46273 (size!33993 Nil!46273) input!3517 input!3517 (size!33993 input!3517)))))))))

(declare-fun b!4209598 () Bool)

(assert (=> b!4209598 (= e!2613188 e!2613186)))

(declare-fun res!1729190 () Bool)

(assert (=> b!4209598 (=> (not res!1729190) (not e!2613186))))

(assert (=> b!4209598 (= res!1729190 (not lt!1498724))))

(assert (= (and d!1240767 c!717252) b!4209585))

(assert (= (and d!1240767 (not c!717252)) b!4209594))

(assert (= (and d!1240767 c!717251) b!4209591))

(assert (= (and d!1240767 (not c!717251)) b!4209592))

(assert (= (and b!4209592 c!717253) b!4209596))

(assert (= (and b!4209592 (not c!717253)) b!4209593))

(assert (= (and b!4209593 (not res!1729187)) b!4209589))

(assert (= (and b!4209589 res!1729186) b!4209590))

(assert (= (and b!4209590 res!1729188) b!4209586))

(assert (= (and b!4209586 res!1729193) b!4209587))

(assert (= (and b!4209589 (not res!1729192)) b!4209598))

(assert (= (and b!4209598 res!1729190) b!4209595))

(assert (= (and b!4209595 (not res!1729191)) b!4209597))

(assert (= (and b!4209597 (not res!1729189)) b!4209588))

(assert (= (or b!4209591 b!4209590 b!4209595) bm!292898))

(declare-fun m!4797543 () Bool)

(assert (=> b!4209597 m!4797543))

(assert (=> b!4209597 m!4797543))

(declare-fun m!4797545 () Bool)

(assert (=> b!4209597 m!4797545))

(assert (=> d!1240767 m!4797115))

(assert (=> d!1240767 m!4797275))

(declare-fun m!4797547 () Bool)

(assert (=> b!4209588 m!4797547))

(assert (=> b!4209586 m!4797543))

(assert (=> b!4209586 m!4797543))

(assert (=> b!4209586 m!4797545))

(assert (=> b!4209587 m!4797547))

(assert (=> bm!292898 m!4797115))

(assert (=> b!4209585 m!4797277))

(assert (=> b!4209594 m!4797547))

(assert (=> b!4209594 m!4797547))

(declare-fun m!4797549 () Bool)

(assert (=> b!4209594 m!4797549))

(assert (=> b!4209594 m!4797543))

(assert (=> b!4209594 m!4797549))

(assert (=> b!4209594 m!4797543))

(declare-fun m!4797551 () Bool)

(assert (=> b!4209594 m!4797551))

(assert (=> b!4209098 d!1240767))

(declare-fun bm!292935 () Bool)

(declare-fun call!292940 () C!25488)

(assert (=> bm!292935 (= call!292940 (head!8930 input!3517))))

(declare-fun b!4209792 () Bool)

(declare-fun e!2613312 () Bool)

(declare-fun lt!1498878 () tuple2!44022)

(assert (=> b!4209792 (= e!2613312 (>= (size!33993 (_1!25145 lt!1498878)) (size!33993 Nil!46273)))))

(declare-fun b!4209793 () Bool)

(declare-fun e!2613309 () tuple2!44022)

(assert (=> b!4209793 (= e!2613309 (tuple2!44023 Nil!46273 input!3517))))

(declare-fun bm!292936 () Bool)

(declare-fun call!292946 () Regex!12647)

(assert (=> bm!292936 (= call!292946 (derivativeStep!3833 (regex!7742 rBis!178) call!292940))))

(declare-fun bm!292937 () Bool)

(declare-fun call!292941 () List!46397)

(assert (=> bm!292937 (= call!292941 (tail!6777 input!3517))))

(declare-fun b!4209794 () Bool)

(declare-fun e!2613311 () tuple2!44022)

(assert (=> b!4209794 (= e!2613311 (tuple2!44023 Nil!46273 input!3517))))

(declare-fun b!4209795 () Bool)

(declare-fun c!717309 () Bool)

(declare-fun call!292943 () Bool)

(assert (=> b!4209795 (= c!717309 call!292943)))

(declare-fun lt!1498877 () Unit!65393)

(declare-fun lt!1498889 () Unit!65393)

(assert (=> b!4209795 (= lt!1498877 lt!1498889)))

(assert (=> b!4209795 (= input!3517 Nil!46273)))

(declare-fun call!292942 () Unit!65393)

(assert (=> b!4209795 (= lt!1498889 call!292942)))

(declare-fun lt!1498886 () Unit!65393)

(declare-fun lt!1498870 () Unit!65393)

(assert (=> b!4209795 (= lt!1498886 lt!1498870)))

(declare-fun call!292947 () Bool)

(assert (=> b!4209795 call!292947))

(declare-fun call!292944 () Unit!65393)

(assert (=> b!4209795 (= lt!1498870 call!292944)))

(declare-fun e!2613308 () tuple2!44022)

(assert (=> b!4209795 (= e!2613308 e!2613311)))

(declare-fun b!4209796 () Bool)

(declare-fun c!717312 () Bool)

(assert (=> b!4209796 (= c!717312 call!292943)))

(declare-fun lt!1498890 () Unit!65393)

(declare-fun lt!1498884 () Unit!65393)

(assert (=> b!4209796 (= lt!1498890 lt!1498884)))

(declare-fun lt!1498879 () C!25488)

(declare-fun lt!1498888 () List!46397)

(assert (=> b!4209796 (= (++!11816 (++!11816 Nil!46273 (Cons!46273 lt!1498879 Nil!46273)) lt!1498888) input!3517)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1301 (List!46397 C!25488 List!46397 List!46397) Unit!65393)

(assert (=> b!4209796 (= lt!1498884 (lemmaMoveElementToOtherListKeepsConcatEq!1301 Nil!46273 lt!1498879 lt!1498888 input!3517))))

(assert (=> b!4209796 (= lt!1498888 (tail!6777 input!3517))))

(assert (=> b!4209796 (= lt!1498879 (head!8930 input!3517))))

(declare-fun lt!1498872 () Unit!65393)

(declare-fun lt!1498866 () Unit!65393)

(assert (=> b!4209796 (= lt!1498872 lt!1498866)))

(declare-fun getSuffix!2858 (List!46397 List!46397) List!46397)

(assert (=> b!4209796 (isPrefix!4601 (++!11816 Nil!46273 (Cons!46273 (head!8930 (getSuffix!2858 input!3517 Nil!46273)) Nil!46273)) input!3517)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!683 (List!46397 List!46397) Unit!65393)

(assert (=> b!4209796 (= lt!1498866 (lemmaAddHeadSuffixToPrefixStillPrefix!683 Nil!46273 input!3517))))

(declare-fun lt!1498876 () Unit!65393)

(declare-fun lt!1498887 () Unit!65393)

(assert (=> b!4209796 (= lt!1498876 lt!1498887)))

(assert (=> b!4209796 (= lt!1498887 (lemmaAddHeadSuffixToPrefixStillPrefix!683 Nil!46273 input!3517))))

(declare-fun lt!1498875 () List!46397)

(assert (=> b!4209796 (= lt!1498875 (++!11816 Nil!46273 (Cons!46273 (head!8930 input!3517) Nil!46273)))))

(declare-fun lt!1498891 () Unit!65393)

(declare-fun e!2613310 () Unit!65393)

(assert (=> b!4209796 (= lt!1498891 e!2613310)))

(declare-fun c!717311 () Bool)

(assert (=> b!4209796 (= c!717311 (= (size!33993 Nil!46273) (size!33993 input!3517)))))

(declare-fun lt!1498883 () Unit!65393)

(declare-fun lt!1498874 () Unit!65393)

(assert (=> b!4209796 (= lt!1498883 lt!1498874)))

(assert (=> b!4209796 (<= (size!33993 Nil!46273) (size!33993 input!3517))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!595 (List!46397 List!46397) Unit!65393)

(assert (=> b!4209796 (= lt!1498874 (lemmaIsPrefixThenSmallerEqSize!595 Nil!46273 input!3517))))

(declare-fun e!2613313 () tuple2!44022)

(assert (=> b!4209796 (= e!2613308 e!2613313)))

(declare-fun call!292945 () tuple2!44022)

(declare-fun bm!292938 () Bool)

(assert (=> bm!292938 (= call!292945 (findLongestMatchInner!1641 call!292946 lt!1498875 (+ (size!33993 Nil!46273) 1) call!292941 input!3517 (size!33993 input!3517)))))

(declare-fun bm!292939 () Bool)

(assert (=> bm!292939 (= call!292944 (lemmaIsPrefixRefl!3018 input!3517 input!3517))))

(declare-fun b!4209797 () Bool)

(assert (=> b!4209797 (= e!2613313 call!292945)))

(declare-fun bm!292940 () Bool)

(assert (=> bm!292940 (= call!292943 (nullable!4453 (regex!7742 rBis!178)))))

(declare-fun b!4209798 () Bool)

(declare-fun e!2613307 () tuple2!44022)

(assert (=> b!4209798 (= e!2613307 (tuple2!44023 Nil!46273 input!3517))))

(declare-fun b!4209799 () Bool)

(assert (=> b!4209799 (= e!2613309 e!2613308)))

(declare-fun c!717308 () Bool)

(assert (=> b!4209799 (= c!717308 (= (size!33993 Nil!46273) (size!33993 input!3517)))))

(declare-fun d!1240769 () Bool)

(declare-fun e!2613314 () Bool)

(assert (=> d!1240769 e!2613314))

(declare-fun res!1729276 () Bool)

(assert (=> d!1240769 (=> (not res!1729276) (not e!2613314))))

(assert (=> d!1240769 (= res!1729276 (= (++!11816 (_1!25145 lt!1498878) (_2!25145 lt!1498878)) input!3517))))

(assert (=> d!1240769 (= lt!1498878 e!2613309)))

(declare-fun c!717313 () Bool)

(declare-fun lostCause!1057 (Regex!12647) Bool)

(assert (=> d!1240769 (= c!717313 (lostCause!1057 (regex!7742 rBis!178)))))

(declare-fun lt!1498880 () Unit!65393)

(declare-fun Unit!65398 () Unit!65393)

(assert (=> d!1240769 (= lt!1498880 Unit!65398)))

(assert (=> d!1240769 (= (getSuffix!2858 input!3517 Nil!46273) input!3517)))

(declare-fun lt!1498867 () Unit!65393)

(declare-fun lt!1498869 () Unit!65393)

(assert (=> d!1240769 (= lt!1498867 lt!1498869)))

(declare-fun lt!1498893 () List!46397)

(assert (=> d!1240769 (= input!3517 lt!1498893)))

(declare-fun lemmaSamePrefixThenSameSuffix!2274 (List!46397 List!46397 List!46397 List!46397 List!46397) Unit!65393)

(assert (=> d!1240769 (= lt!1498869 (lemmaSamePrefixThenSameSuffix!2274 Nil!46273 input!3517 Nil!46273 lt!1498893 input!3517))))

(assert (=> d!1240769 (= lt!1498893 (getSuffix!2858 input!3517 Nil!46273))))

(declare-fun lt!1498892 () Unit!65393)

(declare-fun lt!1498882 () Unit!65393)

(assert (=> d!1240769 (= lt!1498892 lt!1498882)))

(assert (=> d!1240769 (isPrefix!4601 Nil!46273 (++!11816 Nil!46273 input!3517))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3068 (List!46397 List!46397) Unit!65393)

(assert (=> d!1240769 (= lt!1498882 (lemmaConcatTwoListThenFirstIsPrefix!3068 Nil!46273 input!3517))))

(assert (=> d!1240769 (validRegex!5740 (regex!7742 rBis!178))))

(assert (=> d!1240769 (= (findLongestMatchInner!1641 (regex!7742 rBis!178) Nil!46273 (size!33993 Nil!46273) input!3517 input!3517 (size!33993 input!3517)) lt!1498878)))

(declare-fun b!4209791 () Bool)

(declare-fun lt!1498868 () tuple2!44022)

(assert (=> b!4209791 (= e!2613307 lt!1498868)))

(declare-fun b!4209800 () Bool)

(assert (=> b!4209800 (= e!2613314 e!2613312)))

(declare-fun res!1729275 () Bool)

(assert (=> b!4209800 (=> res!1729275 e!2613312)))

(assert (=> b!4209800 (= res!1729275 (isEmpty!27405 (_1!25145 lt!1498878)))))

(declare-fun b!4209801 () Bool)

(declare-fun Unit!65399 () Unit!65393)

(assert (=> b!4209801 (= e!2613310 Unit!65399)))

(declare-fun lt!1498873 () Unit!65393)

(assert (=> b!4209801 (= lt!1498873 call!292944)))

(assert (=> b!4209801 call!292947))

(declare-fun lt!1498881 () Unit!65393)

(assert (=> b!4209801 (= lt!1498881 lt!1498873)))

(declare-fun lt!1498871 () Unit!65393)

(assert (=> b!4209801 (= lt!1498871 call!292942)))

(assert (=> b!4209801 (= input!3517 Nil!46273)))

(declare-fun lt!1498885 () Unit!65393)

(assert (=> b!4209801 (= lt!1498885 lt!1498871)))

(assert (=> b!4209801 false))

(declare-fun b!4209802 () Bool)

(assert (=> b!4209802 (= e!2613311 (tuple2!44023 Nil!46273 Nil!46273))))

(declare-fun b!4209803 () Bool)

(declare-fun Unit!65400 () Unit!65393)

(assert (=> b!4209803 (= e!2613310 Unit!65400)))

(declare-fun bm!292941 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1029 (List!46397 List!46397 List!46397) Unit!65393)

(assert (=> bm!292941 (= call!292942 (lemmaIsPrefixSameLengthThenSameList!1029 input!3517 Nil!46273 input!3517))))

(declare-fun bm!292942 () Bool)

(assert (=> bm!292942 (= call!292947 (isPrefix!4601 input!3517 input!3517))))

(declare-fun b!4209804 () Bool)

(assert (=> b!4209804 (= e!2613313 e!2613307)))

(assert (=> b!4209804 (= lt!1498868 call!292945)))

(declare-fun c!717310 () Bool)

(assert (=> b!4209804 (= c!717310 (isEmpty!27405 (_1!25145 lt!1498868)))))

(assert (= (and d!1240769 c!717313) b!4209793))

(assert (= (and d!1240769 (not c!717313)) b!4209799))

(assert (= (and b!4209799 c!717308) b!4209795))

(assert (= (and b!4209799 (not c!717308)) b!4209796))

(assert (= (and b!4209795 c!717309) b!4209802))

(assert (= (and b!4209795 (not c!717309)) b!4209794))

(assert (= (and b!4209796 c!717311) b!4209801))

(assert (= (and b!4209796 (not c!717311)) b!4209803))

(assert (= (and b!4209796 c!717312) b!4209804))

(assert (= (and b!4209796 (not c!717312)) b!4209797))

(assert (= (and b!4209804 c!717310) b!4209798))

(assert (= (and b!4209804 (not c!717310)) b!4209791))

(assert (= (or b!4209804 b!4209797) bm!292935))

(assert (= (or b!4209804 b!4209797) bm!292937))

(assert (= (or b!4209804 b!4209797) bm!292936))

(assert (= (or b!4209804 b!4209797) bm!292938))

(assert (= (or b!4209795 b!4209801) bm!292939))

(assert (= (or b!4209795 b!4209796) bm!292940))

(assert (= (or b!4209795 b!4209801) bm!292942))

(assert (= (or b!4209795 b!4209801) bm!292941))

(assert (= (and d!1240769 res!1729276) b!4209800))

(assert (= (and b!4209800 (not res!1729275)) b!4209792))

(declare-fun m!4797861 () Bool)

(assert (=> bm!292936 m!4797861))

(declare-fun m!4797863 () Bool)

(assert (=> b!4209792 m!4797863))

(assert (=> b!4209792 m!4797095))

(declare-fun m!4797865 () Bool)

(assert (=> d!1240769 m!4797865))

(declare-fun m!4797867 () Bool)

(assert (=> d!1240769 m!4797867))

(assert (=> d!1240769 m!4797865))

(declare-fun m!4797869 () Bool)

(assert (=> d!1240769 m!4797869))

(declare-fun m!4797871 () Bool)

(assert (=> d!1240769 m!4797871))

(declare-fun m!4797873 () Bool)

(assert (=> d!1240769 m!4797873))

(assert (=> d!1240769 m!4797275))

(declare-fun m!4797875 () Bool)

(assert (=> d!1240769 m!4797875))

(declare-fun m!4797877 () Bool)

(assert (=> d!1240769 m!4797877))

(assert (=> bm!292940 m!4797277))

(assert (=> bm!292939 m!4796909))

(assert (=> bm!292938 m!4796935))

(declare-fun m!4797879 () Bool)

(assert (=> bm!292938 m!4797879))

(assert (=> bm!292935 m!4796945))

(declare-fun m!4797881 () Bool)

(assert (=> b!4209804 m!4797881))

(declare-fun m!4797883 () Bool)

(assert (=> bm!292941 m!4797883))

(declare-fun m!4797885 () Bool)

(assert (=> b!4209796 m!4797885))

(declare-fun m!4797887 () Bool)

(assert (=> b!4209796 m!4797887))

(declare-fun m!4797889 () Bool)

(assert (=> b!4209796 m!4797889))

(assert (=> b!4209796 m!4796945))

(declare-fun m!4797891 () Bool)

(assert (=> b!4209796 m!4797891))

(declare-fun m!4797893 () Bool)

(assert (=> b!4209796 m!4797893))

(assert (=> b!4209796 m!4796935))

(assert (=> b!4209796 m!4797095))

(assert (=> b!4209796 m!4796939))

(assert (=> b!4209796 m!4797887))

(declare-fun m!4797895 () Bool)

(assert (=> b!4209796 m!4797895))

(assert (=> b!4209796 m!4797893))

(declare-fun m!4797897 () Bool)

(assert (=> b!4209796 m!4797897))

(assert (=> b!4209796 m!4797875))

(declare-fun m!4797899 () Bool)

(assert (=> b!4209796 m!4797899))

(assert (=> b!4209796 m!4797875))

(declare-fun m!4797901 () Bool)

(assert (=> b!4209796 m!4797901))

(assert (=> bm!292942 m!4796907))

(assert (=> bm!292937 m!4796939))

(declare-fun m!4797903 () Bool)

(assert (=> b!4209800 m!4797903))

(assert (=> b!4209098 d!1240769))

(declare-fun d!1240899 () Bool)

(declare-fun lt!1498897 () Int)

(assert (=> d!1240899 (>= lt!1498897 0)))

(declare-fun e!2613321 () Int)

(assert (=> d!1240899 (= lt!1498897 e!2613321)))

(declare-fun c!717314 () Bool)

(assert (=> d!1240899 (= c!717314 ((_ is Nil!46273) Nil!46273))))

(assert (=> d!1240899 (= (size!33993 Nil!46273) lt!1498897)))

(declare-fun b!4209811 () Bool)

(assert (=> b!4209811 (= e!2613321 0)))

(declare-fun b!4209812 () Bool)

(assert (=> b!4209812 (= e!2613321 (+ 1 (size!33993 (t!347762 Nil!46273))))))

(assert (= (and d!1240899 c!717314) b!4209811))

(assert (= (and d!1240899 (not c!717314)) b!4209812))

(declare-fun m!4797905 () Bool)

(assert (=> b!4209812 m!4797905))

(assert (=> b!4209098 d!1240899))

(assert (=> b!4209098 d!1240703))

(declare-fun bm!292949 () Bool)

(declare-fun call!292956 () Bool)

(declare-fun c!717320 () Bool)

(assert (=> bm!292949 (= call!292956 (validRegex!5740 (ite c!717320 (regTwo!25807 (regex!7742 rBis!178)) (regTwo!25806 (regex!7742 rBis!178)))))))

(declare-fun b!4209890 () Bool)

(declare-fun e!2613369 () Bool)

(declare-fun call!292955 () Bool)

(assert (=> b!4209890 (= e!2613369 call!292955)))

(declare-fun b!4209891 () Bool)

(declare-fun e!2613366 () Bool)

(declare-fun e!2613364 () Bool)

(assert (=> b!4209891 (= e!2613366 e!2613364)))

(assert (=> b!4209891 (= c!717320 ((_ is Union!12647) (regex!7742 rBis!178)))))

(declare-fun b!4209892 () Bool)

(declare-fun e!2613368 () Bool)

(assert (=> b!4209892 (= e!2613368 call!292956)))

(declare-fun bm!292950 () Bool)

(declare-fun call!292954 () Bool)

(assert (=> bm!292950 (= call!292954 call!292955)))

(declare-fun bm!292951 () Bool)

(declare-fun c!717319 () Bool)

(assert (=> bm!292951 (= call!292955 (validRegex!5740 (ite c!717319 (reg!12976 (regex!7742 rBis!178)) (ite c!717320 (regOne!25807 (regex!7742 rBis!178)) (regOne!25806 (regex!7742 rBis!178))))))))

(declare-fun b!4209894 () Bool)

(declare-fun e!2613367 () Bool)

(assert (=> b!4209894 (= e!2613367 e!2613366)))

(assert (=> b!4209894 (= c!717319 ((_ is Star!12647) (regex!7742 rBis!178)))))

(declare-fun b!4209893 () Bool)

(declare-fun res!1729297 () Bool)

(assert (=> b!4209893 (=> (not res!1729297) (not e!2613368))))

(assert (=> b!4209893 (= res!1729297 call!292954)))

(assert (=> b!4209893 (= e!2613364 e!2613368)))

(declare-fun d!1240901 () Bool)

(declare-fun res!1729294 () Bool)

(assert (=> d!1240901 (=> res!1729294 e!2613367)))

(assert (=> d!1240901 (= res!1729294 ((_ is ElementMatch!12647) (regex!7742 rBis!178)))))

(assert (=> d!1240901 (= (validRegex!5740 (regex!7742 rBis!178)) e!2613367)))

(declare-fun b!4209895 () Bool)

(declare-fun e!2613363 () Bool)

(assert (=> b!4209895 (= e!2613363 call!292956)))

(declare-fun b!4209896 () Bool)

(declare-fun e!2613365 () Bool)

(assert (=> b!4209896 (= e!2613365 e!2613363)))

(declare-fun res!1729296 () Bool)

(assert (=> b!4209896 (=> (not res!1729296) (not e!2613363))))

(assert (=> b!4209896 (= res!1729296 call!292954)))

(declare-fun b!4209897 () Bool)

(assert (=> b!4209897 (= e!2613366 e!2613369)))

(declare-fun res!1729293 () Bool)

(assert (=> b!4209897 (= res!1729293 (not (nullable!4453 (reg!12976 (regex!7742 rBis!178)))))))

(assert (=> b!4209897 (=> (not res!1729293) (not e!2613369))))

(declare-fun b!4209898 () Bool)

(declare-fun res!1729295 () Bool)

(assert (=> b!4209898 (=> res!1729295 e!2613365)))

(assert (=> b!4209898 (= res!1729295 (not ((_ is Concat!20620) (regex!7742 rBis!178))))))

(assert (=> b!4209898 (= e!2613364 e!2613365)))

(assert (= (and d!1240901 (not res!1729294)) b!4209894))

(assert (= (and b!4209894 c!717319) b!4209897))

(assert (= (and b!4209894 (not c!717319)) b!4209891))

(assert (= (and b!4209897 res!1729293) b!4209890))

(assert (= (and b!4209891 c!717320) b!4209893))

(assert (= (and b!4209891 (not c!717320)) b!4209898))

(assert (= (and b!4209893 res!1729297) b!4209892))

(assert (= (and b!4209898 (not res!1729295)) b!4209896))

(assert (= (and b!4209896 res!1729296) b!4209895))

(assert (= (or b!4209892 b!4209895) bm!292949))

(assert (= (or b!4209893 b!4209896) bm!292950))

(assert (= (or b!4209890 bm!292950) bm!292951))

(declare-fun m!4797923 () Bool)

(assert (=> bm!292949 m!4797923))

(declare-fun m!4797925 () Bool)

(assert (=> bm!292951 m!4797925))

(declare-fun m!4797927 () Bool)

(assert (=> b!4209897 m!4797927))

(assert (=> d!1240627 d!1240901))

(assert (=> b!4209243 d!1240701))

(declare-fun d!1240905 () Bool)

(declare-fun dynLambda!19962 (Int BalanceConc!27500) TokenValue!7972)

(assert (=> d!1240905 (= (apply!10681 (transformation!7742 (rule!10852 (_1!25143 (get!15051 lt!1498617)))) (seqFromList!5741 (originalCharacters!8124 (_1!25143 (get!15051 lt!1498617))))) (dynLambda!19962 (toValue!10458 (transformation!7742 (rule!10852 (_1!25143 (get!15051 lt!1498617))))) (seqFromList!5741 (originalCharacters!8124 (_1!25143 (get!15051 lt!1498617))))))))

(declare-fun b_lambda!123999 () Bool)

(assert (=> (not b_lambda!123999) (not d!1240905)))

(declare-fun t!347896 () Bool)

(declare-fun tb!252693 () Bool)

(assert (=> (and b!4209337 (= (toValue!10458 (transformation!7742 (h!51695 (t!347764 rules!3967)))) (toValue!10458 (transformation!7742 (rule!10852 (_1!25143 (get!15051 lt!1498617)))))) t!347896) tb!252693))

(declare-fun result!307970 () Bool)

(assert (=> tb!252693 (= result!307970 (inv!21 (dynLambda!19962 (toValue!10458 (transformation!7742 (rule!10852 (_1!25143 (get!15051 lt!1498617))))) (seqFromList!5741 (originalCharacters!8124 (_1!25143 (get!15051 lt!1498617)))))))))

(declare-fun m!4797933 () Bool)

(assert (=> tb!252693 m!4797933))

(assert (=> d!1240905 t!347896))

(declare-fun b_and!331205 () Bool)

(assert (= b_and!331117 (and (=> t!347896 result!307970) b_and!331205)))

(declare-fun tb!252695 () Bool)

(declare-fun t!347898 () Bool)

(assert (=> (and b!4208935 (= (toValue!10458 (transformation!7742 (h!51695 rules!3967))) (toValue!10458 (transformation!7742 (rule!10852 (_1!25143 (get!15051 lt!1498617)))))) t!347898) tb!252695))

(declare-fun result!307974 () Bool)

(assert (= result!307974 result!307970))

(assert (=> d!1240905 t!347898))

(declare-fun b_and!331207 () Bool)

(assert (= b_and!331049 (and (=> t!347898 result!307974) b_and!331207)))

(declare-fun t!347900 () Bool)

(declare-fun tb!252697 () Bool)

(assert (=> (and b!4208924 (= (toValue!10458 (transformation!7742 (rule!10852 tBis!41))) (toValue!10458 (transformation!7742 (rule!10852 (_1!25143 (get!15051 lt!1498617)))))) t!347900) tb!252697))

(declare-fun result!307976 () Bool)

(assert (= result!307976 result!307970))

(assert (=> d!1240905 t!347900))

(declare-fun b_and!331209 () Bool)

(assert (= b_and!331061 (and (=> t!347900 result!307976) b_and!331209)))

(declare-fun t!347902 () Bool)

(declare-fun tb!252699 () Bool)

(assert (=> (and b!4208944 (= (toValue!10458 (transformation!7742 rBis!178)) (toValue!10458 (transformation!7742 (rule!10852 (_1!25143 (get!15051 lt!1498617)))))) t!347902) tb!252699))

(declare-fun result!307978 () Bool)

(assert (= result!307978 result!307970))

(assert (=> d!1240905 t!347902))

(declare-fun b_and!331211 () Bool)

(assert (= b_and!331057 (and (=> t!347902 result!307978) b_and!331211)))

(declare-fun tb!252701 () Bool)

(declare-fun t!347904 () Bool)

(assert (=> (and b!4208951 (= (toValue!10458 (transformation!7742 (rule!10852 t!8364))) (toValue!10458 (transformation!7742 (rule!10852 (_1!25143 (get!15051 lt!1498617)))))) t!347904) tb!252701))

(declare-fun result!307980 () Bool)

(assert (= result!307980 result!307970))

(assert (=> d!1240905 t!347904))

(declare-fun b_and!331213 () Bool)

(assert (= b_and!331053 (and (=> t!347904 result!307980) b_and!331213)))

(assert (=> d!1240905 m!4797213))

(declare-fun m!4797935 () Bool)

(assert (=> d!1240905 m!4797935))

(assert (=> b!4209243 d!1240905))

(declare-fun d!1240907 () Bool)

(declare-fun fromListB!2634 (List!46397) BalanceConc!27500)

(assert (=> d!1240907 (= (seqFromList!5741 (originalCharacters!8124 (_1!25143 (get!15051 lt!1498617)))) (fromListB!2634 (originalCharacters!8124 (_1!25143 (get!15051 lt!1498617)))))))

(declare-fun bs!597396 () Bool)

(assert (= bs!597396 d!1240907))

(declare-fun m!4797937 () Bool)

(assert (=> bs!597396 m!4797937))

(assert (=> b!4209243 d!1240907))

(declare-fun d!1240909 () Bool)

(declare-fun c!717321 () Bool)

(assert (=> d!1240909 (= c!717321 ((_ is Nil!46273) lt!1498630))))

(declare-fun e!2613386 () (InoxSet C!25488))

(assert (=> d!1240909 (= (content!7241 lt!1498630) e!2613386)))

(declare-fun b!4209950 () Bool)

(assert (=> b!4209950 (= e!2613386 ((as const (Array C!25488 Bool)) false))))

(declare-fun b!4209951 () Bool)

(assert (=> b!4209951 (= e!2613386 ((_ map or) (store ((as const (Array C!25488 Bool)) false) (h!51693 lt!1498630) true) (content!7241 (t!347762 lt!1498630))))))

(assert (= (and d!1240909 c!717321) b!4209950))

(assert (= (and d!1240909 (not c!717321)) b!4209951))

(declare-fun m!4797939 () Bool)

(assert (=> b!4209951 m!4797939))

(declare-fun m!4797941 () Bool)

(assert (=> b!4209951 m!4797941))

(assert (=> d!1240641 d!1240909))

(declare-fun d!1240911 () Bool)

(declare-fun c!717322 () Bool)

(assert (=> d!1240911 (= c!717322 ((_ is Nil!46273) pBis!121))))

(declare-fun e!2613387 () (InoxSet C!25488))

(assert (=> d!1240911 (= (content!7241 pBis!121) e!2613387)))

(declare-fun b!4209952 () Bool)

(assert (=> b!4209952 (= e!2613387 ((as const (Array C!25488 Bool)) false))))

(declare-fun b!4209953 () Bool)

(assert (=> b!4209953 (= e!2613387 ((_ map or) (store ((as const (Array C!25488 Bool)) false) (h!51693 pBis!121) true) (content!7241 (t!347762 pBis!121))))))

(assert (= (and d!1240911 c!717322) b!4209952))

(assert (= (and d!1240911 (not c!717322)) b!4209953))

(declare-fun m!4797943 () Bool)

(assert (=> b!4209953 m!4797943))

(assert (=> b!4209953 m!4797391))

(assert (=> d!1240641 d!1240911))

(declare-fun d!1240913 () Bool)

(declare-fun c!717323 () Bool)

(assert (=> d!1240913 (= c!717323 ((_ is Nil!46273) suffixBis!41))))

(declare-fun e!2613388 () (InoxSet C!25488))

(assert (=> d!1240913 (= (content!7241 suffixBis!41) e!2613388)))

(declare-fun b!4209954 () Bool)

(assert (=> b!4209954 (= e!2613388 ((as const (Array C!25488 Bool)) false))))

(declare-fun b!4209955 () Bool)

(assert (=> b!4209955 (= e!2613388 ((_ map or) (store ((as const (Array C!25488 Bool)) false) (h!51693 suffixBis!41) true) (content!7241 (t!347762 suffixBis!41))))))

(assert (= (and d!1240913 c!717323) b!4209954))

(assert (= (and d!1240913 (not c!717323)) b!4209955))

(declare-fun m!4797945 () Bool)

(assert (=> b!4209955 m!4797945))

(declare-fun m!4797947 () Bool)

(assert (=> b!4209955 m!4797947))

(assert (=> d!1240641 d!1240913))

(declare-fun d!1240915 () Bool)

(declare-fun lt!1498898 () Bool)

(assert (=> d!1240915 (= lt!1498898 (select (content!7240 rules!3967) (rule!10852 (_1!25143 (get!15051 lt!1498617)))))))

(declare-fun e!2613390 () Bool)

(assert (=> d!1240915 (= lt!1498898 e!2613390)))

(declare-fun res!1729298 () Bool)

(assert (=> d!1240915 (=> (not res!1729298) (not e!2613390))))

(assert (=> d!1240915 (= res!1729298 ((_ is Cons!46275) rules!3967))))

(assert (=> d!1240915 (= (contains!9561 rules!3967 (rule!10852 (_1!25143 (get!15051 lt!1498617)))) lt!1498898)))

(declare-fun b!4209956 () Bool)

(declare-fun e!2613389 () Bool)

(assert (=> b!4209956 (= e!2613390 e!2613389)))

(declare-fun res!1729299 () Bool)

(assert (=> b!4209956 (=> res!1729299 e!2613389)))

(assert (=> b!4209956 (= res!1729299 (= (h!51695 rules!3967) (rule!10852 (_1!25143 (get!15051 lt!1498617)))))))

(declare-fun b!4209957 () Bool)

(assert (=> b!4209957 (= e!2613389 (contains!9561 (t!347764 rules!3967) (rule!10852 (_1!25143 (get!15051 lt!1498617)))))))

(assert (= (and d!1240915 res!1729298) b!4209956))

(assert (= (and b!4209956 (not res!1729299)) b!4209957))

(assert (=> d!1240915 m!4797133))

(declare-fun m!4797949 () Bool)

(assert (=> d!1240915 m!4797949))

(declare-fun m!4797951 () Bool)

(assert (=> b!4209957 m!4797951))

(assert (=> b!4209241 d!1240915))

(assert (=> b!4209241 d!1240701))

(declare-fun d!1240917 () Bool)

(assert (=> d!1240917 true))

(declare-fun order!24539 () Int)

(declare-fun order!24541 () Int)

(declare-fun lambda!129766 () Int)

(declare-fun dynLambda!19963 (Int Int) Int)

(declare-fun dynLambda!19964 (Int Int) Int)

(assert (=> d!1240917 (< (dynLambda!19963 order!24539 (toValue!10458 (transformation!7742 (h!51695 rules!3967)))) (dynLambda!19964 order!24541 lambda!129766))))

(declare-fun Forall2!1177 (Int) Bool)

(assert (=> d!1240917 (= (equivClasses!3260 (toChars!10317 (transformation!7742 (h!51695 rules!3967))) (toValue!10458 (transformation!7742 (h!51695 rules!3967)))) (Forall2!1177 lambda!129766))))

(declare-fun bs!597397 () Bool)

(assert (= bs!597397 d!1240917))

(declare-fun m!4797953 () Bool)

(assert (=> bs!597397 m!4797953))

(assert (=> b!4208967 d!1240917))

(declare-fun b!4209962 () Bool)

(declare-fun e!2613394 () List!46397)

(assert (=> b!4209962 (= e!2613394 (_2!25143 (get!15051 lt!1498617)))))

(declare-fun d!1240919 () Bool)

(declare-fun e!2613393 () Bool)

(assert (=> d!1240919 e!2613393))

(declare-fun res!1729302 () Bool)

(assert (=> d!1240919 (=> (not res!1729302) (not e!2613393))))

(declare-fun lt!1498899 () List!46397)

(assert (=> d!1240919 (= res!1729302 (= (content!7241 lt!1498899) ((_ map or) (content!7241 (list!16729 (charsOf!5165 (_1!25143 (get!15051 lt!1498617))))) (content!7241 (_2!25143 (get!15051 lt!1498617))))))))

(assert (=> d!1240919 (= lt!1498899 e!2613394)))

(declare-fun c!717324 () Bool)

(assert (=> d!1240919 (= c!717324 ((_ is Nil!46273) (list!16729 (charsOf!5165 (_1!25143 (get!15051 lt!1498617))))))))

(assert (=> d!1240919 (= (++!11816 (list!16729 (charsOf!5165 (_1!25143 (get!15051 lt!1498617)))) (_2!25143 (get!15051 lt!1498617))) lt!1498899)))

(declare-fun b!4209965 () Bool)

(assert (=> b!4209965 (= e!2613393 (or (not (= (_2!25143 (get!15051 lt!1498617)) Nil!46273)) (= lt!1498899 (list!16729 (charsOf!5165 (_1!25143 (get!15051 lt!1498617)))))))))

(declare-fun b!4209963 () Bool)

(assert (=> b!4209963 (= e!2613394 (Cons!46273 (h!51693 (list!16729 (charsOf!5165 (_1!25143 (get!15051 lt!1498617))))) (++!11816 (t!347762 (list!16729 (charsOf!5165 (_1!25143 (get!15051 lt!1498617))))) (_2!25143 (get!15051 lt!1498617)))))))

(declare-fun b!4209964 () Bool)

(declare-fun res!1729303 () Bool)

(assert (=> b!4209964 (=> (not res!1729303) (not e!2613393))))

(assert (=> b!4209964 (= res!1729303 (= (size!33993 lt!1498899) (+ (size!33993 (list!16729 (charsOf!5165 (_1!25143 (get!15051 lt!1498617))))) (size!33993 (_2!25143 (get!15051 lt!1498617))))))))

(assert (= (and d!1240919 c!717324) b!4209962))

(assert (= (and d!1240919 (not c!717324)) b!4209963))

(assert (= (and d!1240919 res!1729302) b!4209964))

(assert (= (and b!4209964 res!1729303) b!4209965))

(declare-fun m!4797955 () Bool)

(assert (=> d!1240919 m!4797955))

(assert (=> d!1240919 m!4797219))

(declare-fun m!4797957 () Bool)

(assert (=> d!1240919 m!4797957))

(declare-fun m!4797959 () Bool)

(assert (=> d!1240919 m!4797959))

(declare-fun m!4797961 () Bool)

(assert (=> b!4209963 m!4797961))

(declare-fun m!4797963 () Bool)

(assert (=> b!4209964 m!4797963))

(assert (=> b!4209964 m!4797219))

(declare-fun m!4797965 () Bool)

(assert (=> b!4209964 m!4797965))

(assert (=> b!4209964 m!4797211))

(assert (=> b!4209240 d!1240919))

(declare-fun d!1240921 () Bool)

(assert (=> d!1240921 (= (list!16729 (charsOf!5165 (_1!25143 (get!15051 lt!1498617)))) (list!16731 (c!717139 (charsOf!5165 (_1!25143 (get!15051 lt!1498617))))))))

(declare-fun bs!597398 () Bool)

(assert (= bs!597398 d!1240921))

(declare-fun m!4797967 () Bool)

(assert (=> bs!597398 m!4797967))

(assert (=> b!4209240 d!1240921))

(declare-fun d!1240923 () Bool)

(declare-fun lt!1498900 () BalanceConc!27500)

(assert (=> d!1240923 (= (list!16729 lt!1498900) (originalCharacters!8124 (_1!25143 (get!15051 lt!1498617))))))

(assert (=> d!1240923 (= lt!1498900 (dynLambda!19956 (toChars!10317 (transformation!7742 (rule!10852 (_1!25143 (get!15051 lt!1498617))))) (value!241176 (_1!25143 (get!15051 lt!1498617)))))))

(assert (=> d!1240923 (= (charsOf!5165 (_1!25143 (get!15051 lt!1498617))) lt!1498900)))

(declare-fun b_lambda!124007 () Bool)

(assert (=> (not b_lambda!124007) (not d!1240923)))

(declare-fun tb!252703 () Bool)

(declare-fun t!347906 () Bool)

(assert (=> (and b!4209337 (= (toChars!10317 (transformation!7742 (h!51695 (t!347764 rules!3967)))) (toChars!10317 (transformation!7742 (rule!10852 (_1!25143 (get!15051 lt!1498617)))))) t!347906) tb!252703))

(declare-fun b!4209966 () Bool)

(declare-fun e!2613395 () Bool)

(declare-fun tp!1287039 () Bool)

(assert (=> b!4209966 (= e!2613395 (and (inv!60881 (c!717139 (dynLambda!19956 (toChars!10317 (transformation!7742 (rule!10852 (_1!25143 (get!15051 lt!1498617))))) (value!241176 (_1!25143 (get!15051 lt!1498617)))))) tp!1287039))))

(declare-fun result!307982 () Bool)

(assert (=> tb!252703 (= result!307982 (and (inv!60882 (dynLambda!19956 (toChars!10317 (transformation!7742 (rule!10852 (_1!25143 (get!15051 lt!1498617))))) (value!241176 (_1!25143 (get!15051 lt!1498617))))) e!2613395))))

(assert (= tb!252703 b!4209966))

(declare-fun m!4797969 () Bool)

(assert (=> b!4209966 m!4797969))

(declare-fun m!4797971 () Bool)

(assert (=> tb!252703 m!4797971))

(assert (=> d!1240923 t!347906))

(declare-fun b_and!331215 () Bool)

(assert (= b_and!331133 (and (=> t!347906 result!307982) b_and!331215)))

(declare-fun t!347908 () Bool)

(declare-fun tb!252705 () Bool)

(assert (=> (and b!4208944 (= (toChars!10317 (transformation!7742 rBis!178)) (toChars!10317 (transformation!7742 (rule!10852 (_1!25143 (get!15051 lt!1498617)))))) t!347908) tb!252705))

(declare-fun result!307984 () Bool)

(assert (= result!307984 result!307982))

(assert (=> d!1240923 t!347908))

(declare-fun b_and!331217 () Bool)

(assert (= b_and!331135 (and (=> t!347908 result!307984) b_and!331217)))

(declare-fun t!347910 () Bool)

(declare-fun tb!252707 () Bool)

(assert (=> (and b!4208951 (= (toChars!10317 (transformation!7742 (rule!10852 t!8364))) (toChars!10317 (transformation!7742 (rule!10852 (_1!25143 (get!15051 lt!1498617)))))) t!347910) tb!252707))

(declare-fun result!307986 () Bool)

(assert (= result!307986 result!307982))

(assert (=> d!1240923 t!347910))

(declare-fun b_and!331219 () Bool)

(assert (= b_and!331131 (and (=> t!347910 result!307986) b_and!331219)))

(declare-fun t!347912 () Bool)

(declare-fun tb!252709 () Bool)

(assert (=> (and b!4208935 (= (toChars!10317 (transformation!7742 (h!51695 rules!3967))) (toChars!10317 (transformation!7742 (rule!10852 (_1!25143 (get!15051 lt!1498617)))))) t!347912) tb!252709))

(declare-fun result!307988 () Bool)

(assert (= result!307988 result!307982))

(assert (=> d!1240923 t!347912))

(declare-fun b_and!331221 () Bool)

(assert (= b_and!331137 (and (=> t!347912 result!307988) b_and!331221)))

(declare-fun t!347914 () Bool)

(declare-fun tb!252711 () Bool)

(assert (=> (and b!4208924 (= (toChars!10317 (transformation!7742 (rule!10852 tBis!41))) (toChars!10317 (transformation!7742 (rule!10852 (_1!25143 (get!15051 lt!1498617)))))) t!347914) tb!252711))

(declare-fun result!307990 () Bool)

(assert (= result!307990 result!307982))

(assert (=> d!1240923 t!347914))

(declare-fun b_and!331223 () Bool)

(assert (= b_and!331139 (and (=> t!347914 result!307990) b_and!331223)))

(declare-fun m!4797973 () Bool)

(assert (=> d!1240923 m!4797973))

(declare-fun m!4797975 () Bool)

(assert (=> d!1240923 m!4797975))

(assert (=> b!4209240 d!1240923))

(assert (=> b!4209240 d!1240701))

(declare-fun d!1240925 () Bool)

(assert (=> d!1240925 (= (inv!16 (value!241176 tBis!41)) (= (charsToInt!0 (text!56251 (value!241176 tBis!41))) (value!241167 (value!241176 tBis!41))))))

(declare-fun bs!597399 () Bool)

(assert (= bs!597399 d!1240925))

(declare-fun m!4797977 () Bool)

(assert (=> bs!597399 m!4797977))

(assert (=> b!4209296 d!1240925))

(declare-fun d!1240927 () Bool)

(declare-fun res!1729308 () Bool)

(declare-fun e!2613400 () Bool)

(assert (=> d!1240927 (=> res!1729308 e!2613400)))

(assert (=> d!1240927 (= res!1729308 ((_ is Nil!46275) rules!3967))))

(assert (=> d!1240927 (= (noDuplicateTag!3191 thiss!26544 rules!3967 Nil!46277) e!2613400)))

(declare-fun b!4209971 () Bool)

(declare-fun e!2613401 () Bool)

(assert (=> b!4209971 (= e!2613400 e!2613401)))

(declare-fun res!1729309 () Bool)

(assert (=> b!4209971 (=> (not res!1729309) (not e!2613401))))

(declare-fun contains!9563 (List!46401 String!53730) Bool)

(assert (=> b!4209971 (= res!1729309 (not (contains!9563 Nil!46277 (tag!8606 (h!51695 rules!3967)))))))

(declare-fun b!4209972 () Bool)

(assert (=> b!4209972 (= e!2613401 (noDuplicateTag!3191 thiss!26544 (t!347764 rules!3967) (Cons!46277 (tag!8606 (h!51695 rules!3967)) Nil!46277)))))

(assert (= (and d!1240927 (not res!1729308)) b!4209971))

(assert (= (and b!4209971 res!1729309) b!4209972))

(declare-fun m!4797979 () Bool)

(assert (=> b!4209971 m!4797979))

(declare-fun m!4797981 () Bool)

(assert (=> b!4209972 m!4797981))

(assert (=> b!4209281 d!1240927))

(declare-fun d!1240929 () Bool)

(declare-fun c!717327 () Bool)

(assert (=> d!1240929 (= c!717327 ((_ is Node!13953) (c!717139 (dynLambda!19956 (toChars!10317 (transformation!7742 (rule!10852 t!8364))) (value!241176 t!8364)))))))

(declare-fun e!2613406 () Bool)

(assert (=> d!1240929 (= (inv!60881 (c!717139 (dynLambda!19956 (toChars!10317 (transformation!7742 (rule!10852 t!8364))) (value!241176 t!8364)))) e!2613406)))

(declare-fun b!4209979 () Bool)

(declare-fun inv!60885 (Conc!13953) Bool)

(assert (=> b!4209979 (= e!2613406 (inv!60885 (c!717139 (dynLambda!19956 (toChars!10317 (transformation!7742 (rule!10852 t!8364))) (value!241176 t!8364)))))))

(declare-fun b!4209980 () Bool)

(declare-fun e!2613407 () Bool)

(assert (=> b!4209980 (= e!2613406 e!2613407)))

(declare-fun res!1729312 () Bool)

(assert (=> b!4209980 (= res!1729312 (not ((_ is Leaf!21568) (c!717139 (dynLambda!19956 (toChars!10317 (transformation!7742 (rule!10852 t!8364))) (value!241176 t!8364))))))))

(assert (=> b!4209980 (=> res!1729312 e!2613407)))

(declare-fun b!4209981 () Bool)

(declare-fun inv!60886 (Conc!13953) Bool)

(assert (=> b!4209981 (= e!2613407 (inv!60886 (c!717139 (dynLambda!19956 (toChars!10317 (transformation!7742 (rule!10852 t!8364))) (value!241176 t!8364)))))))

(assert (= (and d!1240929 c!717327) b!4209979))

(assert (= (and d!1240929 (not c!717327)) b!4209980))

(assert (= (and b!4209980 (not res!1729312)) b!4209981))

(declare-fun m!4797983 () Bool)

(assert (=> b!4209979 m!4797983))

(declare-fun m!4797985 () Bool)

(assert (=> b!4209981 m!4797985))

(assert (=> b!4209258 d!1240929))

(declare-fun bs!597400 () Bool)

(declare-fun d!1240931 () Bool)

(assert (= bs!597400 (and d!1240931 d!1240917)))

(declare-fun lambda!129767 () Int)

(assert (=> bs!597400 (= (= (toValue!10458 (transformation!7742 rBis!178)) (toValue!10458 (transformation!7742 (h!51695 rules!3967)))) (= lambda!129767 lambda!129766))))

(assert (=> d!1240931 true))

(assert (=> d!1240931 (< (dynLambda!19963 order!24539 (toValue!10458 (transformation!7742 rBis!178))) (dynLambda!19964 order!24541 lambda!129767))))

(assert (=> d!1240931 (= (equivClasses!3260 (toChars!10317 (transformation!7742 rBis!178)) (toValue!10458 (transformation!7742 rBis!178))) (Forall2!1177 lambda!129767))))

(declare-fun bs!597401 () Bool)

(assert (= bs!597401 d!1240931))

(declare-fun m!4797987 () Bool)

(assert (=> bs!597401 m!4797987))

(assert (=> b!4209306 d!1240931))

(declare-fun d!1240933 () Bool)

(assert (=> d!1240933 (= (isEmpty!27404 lt!1498572) (not ((_ is Some!9929) lt!1498572)))))

(assert (=> d!1240547 d!1240933))

(declare-fun d!1240935 () Bool)

(assert (=> d!1240935 (= (isEmpty!27405 (_1!25145 lt!1498573)) ((_ is Nil!46273) (_1!25145 lt!1498573)))))

(assert (=> d!1240547 d!1240935))

(declare-fun d!1240937 () Bool)

(declare-fun lt!1498924 () tuple2!44022)

(assert (=> d!1240937 (= (++!11816 (_1!25145 lt!1498924) (_2!25145 lt!1498924)) input!3517)))

(declare-fun sizeTr!320 (List!46397 Int) Int)

(assert (=> d!1240937 (= lt!1498924 (findLongestMatchInner!1641 (regex!7742 rBis!178) Nil!46273 0 input!3517 input!3517 (sizeTr!320 input!3517 0)))))

(declare-fun lt!1498919 () Unit!65393)

(declare-fun lt!1498922 () Unit!65393)

(assert (=> d!1240937 (= lt!1498919 lt!1498922)))

(declare-fun lt!1498918 () List!46397)

(declare-fun lt!1498917 () Int)

(assert (=> d!1240937 (= (sizeTr!320 lt!1498918 lt!1498917) (+ (size!33993 lt!1498918) lt!1498917))))

(declare-fun lemmaSizeTrEqualsSize!319 (List!46397 Int) Unit!65393)

(assert (=> d!1240937 (= lt!1498922 (lemmaSizeTrEqualsSize!319 lt!1498918 lt!1498917))))

(assert (=> d!1240937 (= lt!1498917 0)))

(assert (=> d!1240937 (= lt!1498918 Nil!46273)))

(declare-fun lt!1498920 () Unit!65393)

(declare-fun lt!1498921 () Unit!65393)

(assert (=> d!1240937 (= lt!1498920 lt!1498921)))

(declare-fun lt!1498923 () Int)

(assert (=> d!1240937 (= (sizeTr!320 input!3517 lt!1498923) (+ (size!33993 input!3517) lt!1498923))))

(assert (=> d!1240937 (= lt!1498921 (lemmaSizeTrEqualsSize!319 input!3517 lt!1498923))))

(assert (=> d!1240937 (= lt!1498923 0)))

(assert (=> d!1240937 (validRegex!5740 (regex!7742 rBis!178))))

(assert (=> d!1240937 (= (findLongestMatch!1554 (regex!7742 rBis!178) input!3517) lt!1498924)))

(declare-fun bs!597402 () Bool)

(assert (= bs!597402 d!1240937))

(declare-fun m!4797989 () Bool)

(assert (=> bs!597402 m!4797989))

(declare-fun m!4797991 () Bool)

(assert (=> bs!597402 m!4797991))

(declare-fun m!4797993 () Bool)

(assert (=> bs!597402 m!4797993))

(assert (=> bs!597402 m!4797275))

(declare-fun m!4797995 () Bool)

(assert (=> bs!597402 m!4797995))

(declare-fun m!4797997 () Bool)

(assert (=> bs!597402 m!4797997))

(declare-fun m!4797999 () Bool)

(assert (=> bs!597402 m!4797999))

(assert (=> bs!597402 m!4796935))

(declare-fun m!4798001 () Bool)

(assert (=> bs!597402 m!4798001))

(declare-fun m!4798003 () Bool)

(assert (=> bs!597402 m!4798003))

(assert (=> bs!597402 m!4797997))

(assert (=> d!1240547 d!1240937))

(assert (=> d!1240547 d!1240627))

(declare-fun d!1240939 () Bool)

(assert (=> d!1240939 true))

(declare-fun order!24543 () Int)

(declare-fun lambda!129770 () Int)

(declare-fun order!24545 () Int)

(declare-fun dynLambda!19965 (Int Int) Int)

(declare-fun dynLambda!19966 (Int Int) Int)

(assert (=> d!1240939 (< (dynLambda!19965 order!24543 (toChars!10317 (transformation!7742 (rule!10852 tBis!41)))) (dynLambda!19966 order!24545 lambda!129770))))

(assert (=> d!1240939 true))

(assert (=> d!1240939 (< (dynLambda!19963 order!24539 (toValue!10458 (transformation!7742 (rule!10852 tBis!41)))) (dynLambda!19966 order!24545 lambda!129770))))

(declare-fun Forall!1578 (Int) Bool)

(assert (=> d!1240939 (= (semiInverseModEq!3361 (toChars!10317 (transformation!7742 (rule!10852 tBis!41))) (toValue!10458 (transformation!7742 (rule!10852 tBis!41)))) (Forall!1578 lambda!129770))))

(declare-fun bs!597403 () Bool)

(assert (= bs!597403 d!1240939))

(declare-fun m!4798005 () Bool)

(assert (=> bs!597403 m!4798005))

(assert (=> d!1240619 d!1240939))

(declare-fun d!1240941 () Bool)

(declare-fun c!717330 () Bool)

(assert (=> d!1240941 (= c!717330 ((_ is Nil!46275) rules!3967))))

(declare-fun e!2613410 () (InoxSet Rule!15284))

(assert (=> d!1240941 (= (content!7240 rules!3967) e!2613410)))

(declare-fun b!4209990 () Bool)

(assert (=> b!4209990 (= e!2613410 ((as const (Array Rule!15284 Bool)) false))))

(declare-fun b!4209991 () Bool)

(assert (=> b!4209991 (= e!2613410 ((_ map or) (store ((as const (Array Rule!15284 Bool)) false) (h!51695 rules!3967) true) (content!7240 (t!347764 rules!3967))))))

(assert (= (and d!1240941 c!717330) b!4209990))

(assert (= (and d!1240941 (not c!717330)) b!4209991))

(declare-fun m!4798007 () Bool)

(assert (=> b!4209991 m!4798007))

(declare-fun m!4798009 () Bool)

(assert (=> b!4209991 m!4798009))

(assert (=> d!1240595 d!1240941))

(declare-fun d!1240943 () Bool)

(assert (=> d!1240943 (= (inv!15 (value!241176 tBis!41)) (= (charsToBigInt!0 (text!56253 (value!241176 tBis!41)) 0) (value!241171 (value!241176 tBis!41))))))

(declare-fun bs!597404 () Bool)

(assert (= bs!597404 d!1240943))

(declare-fun m!4798011 () Bool)

(assert (=> bs!597404 m!4798011))

(assert (=> b!4209294 d!1240943))

(declare-fun d!1240945 () Bool)

(declare-fun lt!1498925 () Bool)

(assert (=> d!1240945 (= lt!1498925 (select (content!7240 (t!347764 rules!3967)) rBis!178))))

(declare-fun e!2613412 () Bool)

(assert (=> d!1240945 (= lt!1498925 e!2613412)))

(declare-fun res!1729313 () Bool)

(assert (=> d!1240945 (=> (not res!1729313) (not e!2613412))))

(assert (=> d!1240945 (= res!1729313 ((_ is Cons!46275) (t!347764 rules!3967)))))

(assert (=> d!1240945 (= (contains!9561 (t!347764 rules!3967) rBis!178) lt!1498925)))

(declare-fun b!4209992 () Bool)

(declare-fun e!2613411 () Bool)

(assert (=> b!4209992 (= e!2613412 e!2613411)))

(declare-fun res!1729314 () Bool)

(assert (=> b!4209992 (=> res!1729314 e!2613411)))

(assert (=> b!4209992 (= res!1729314 (= (h!51695 (t!347764 rules!3967)) rBis!178))))

(declare-fun b!4209993 () Bool)

(assert (=> b!4209993 (= e!2613411 (contains!9561 (t!347764 (t!347764 rules!3967)) rBis!178))))

(assert (= (and d!1240945 res!1729313) b!4209992))

(assert (= (and b!4209992 (not res!1729314)) b!4209993))

(assert (=> d!1240945 m!4798009))

(declare-fun m!4798013 () Bool)

(assert (=> d!1240945 m!4798013))

(declare-fun m!4798015 () Bool)

(assert (=> b!4209993 m!4798015))

(assert (=> b!4209130 d!1240945))

(declare-fun d!1240947 () Bool)

(declare-fun lt!1498926 () Int)

(assert (=> d!1240947 (>= lt!1498926 0)))

(declare-fun e!2613413 () Int)

(assert (=> d!1240947 (= lt!1498926 e!2613413)))

(declare-fun c!717331 () Bool)

(assert (=> d!1240947 (= c!717331 ((_ is Nil!46273) (_2!25143 (get!15051 lt!1498572))))))

(assert (=> d!1240947 (= (size!33993 (_2!25143 (get!15051 lt!1498572))) lt!1498926)))

(declare-fun b!4209994 () Bool)

(assert (=> b!4209994 (= e!2613413 0)))

(declare-fun b!4209995 () Bool)

(assert (=> b!4209995 (= e!2613413 (+ 1 (size!33993 (t!347762 (_2!25143 (get!15051 lt!1498572))))))))

(assert (= (and d!1240947 c!717331) b!4209994))

(assert (= (and d!1240947 (not c!717331)) b!4209995))

(declare-fun m!4798017 () Bool)

(assert (=> b!4209995 m!4798017))

(assert (=> b!4209097 d!1240947))

(assert (=> b!4209097 d!1240677))

(assert (=> b!4209097 d!1240703))

(declare-fun d!1240949 () Bool)

(declare-fun lt!1498927 () Int)

(assert (=> d!1240949 (>= lt!1498927 0)))

(declare-fun e!2613414 () Int)

(assert (=> d!1240949 (= lt!1498927 e!2613414)))

(declare-fun c!717332 () Bool)

(assert (=> d!1240949 (= c!717332 ((_ is Nil!46273) lt!1498604))))

(assert (=> d!1240949 (= (size!33993 lt!1498604) lt!1498927)))

(declare-fun b!4209996 () Bool)

(assert (=> b!4209996 (= e!2613414 0)))

(declare-fun b!4209997 () Bool)

(assert (=> b!4209997 (= e!2613414 (+ 1 (size!33993 (t!347762 lt!1498604))))))

(assert (= (and d!1240949 c!717332) b!4209996))

(assert (= (and d!1240949 (not c!717332)) b!4209997))

(declare-fun m!4798019 () Bool)

(assert (=> b!4209997 m!4798019))

(assert (=> b!4209156 d!1240949))

(assert (=> b!4209156 d!1240631))

(declare-fun d!1240951 () Bool)

(declare-fun lt!1498928 () Int)

(assert (=> d!1240951 (>= lt!1498928 0)))

(declare-fun e!2613415 () Int)

(assert (=> d!1240951 (= lt!1498928 e!2613415)))

(declare-fun c!717333 () Bool)

(assert (=> d!1240951 (= c!717333 ((_ is Nil!46273) suffix!1557))))

(assert (=> d!1240951 (= (size!33993 suffix!1557) lt!1498928)))

(declare-fun b!4209998 () Bool)

(assert (=> b!4209998 (= e!2613415 0)))

(declare-fun b!4209999 () Bool)

(assert (=> b!4209999 (= e!2613415 (+ 1 (size!33993 (t!347762 suffix!1557))))))

(assert (= (and d!1240951 c!717333) b!4209998))

(assert (= (and d!1240951 (not c!717333)) b!4209999))

(declare-fun m!4798021 () Bool)

(assert (=> b!4209999 m!4798021))

(assert (=> b!4209156 d!1240951))

(declare-fun d!1240953 () Bool)

(assert (=> d!1240953 (= (isEmpty!27405 (originalCharacters!8124 t!8364)) ((_ is Nil!46273) (originalCharacters!8124 t!8364)))))

(assert (=> d!1240615 d!1240953))

(declare-fun d!1240955 () Bool)

(declare-fun charsToBigInt!1 (List!46398) Int)

(assert (=> d!1240955 (= (inv!17 (value!241176 t!8364)) (= (charsToBigInt!1 (text!56252 (value!241176 t!8364))) (value!241168 (value!241176 t!8364))))))

(declare-fun bs!597405 () Bool)

(assert (= bs!597405 d!1240955))

(declare-fun m!4798023 () Bool)

(assert (=> bs!597405 m!4798023))

(assert (=> b!4209302 d!1240955))

(assert (=> b!4209095 d!1240677))

(declare-fun d!1240957 () Bool)

(assert (=> d!1240957 (= (apply!10681 (transformation!7742 (rule!10852 (_1!25143 (get!15051 lt!1498572)))) (seqFromList!5741 (originalCharacters!8124 (_1!25143 (get!15051 lt!1498572))))) (dynLambda!19962 (toValue!10458 (transformation!7742 (rule!10852 (_1!25143 (get!15051 lt!1498572))))) (seqFromList!5741 (originalCharacters!8124 (_1!25143 (get!15051 lt!1498572))))))))

(declare-fun b_lambda!124009 () Bool)

(assert (=> (not b_lambda!124009) (not d!1240957)))

(declare-fun tb!252713 () Bool)

(declare-fun t!347916 () Bool)

(assert (=> (and b!4208951 (= (toValue!10458 (transformation!7742 (rule!10852 t!8364))) (toValue!10458 (transformation!7742 (rule!10852 (_1!25143 (get!15051 lt!1498572)))))) t!347916) tb!252713))

(declare-fun result!307992 () Bool)

(assert (=> tb!252713 (= result!307992 (inv!21 (dynLambda!19962 (toValue!10458 (transformation!7742 (rule!10852 (_1!25143 (get!15051 lt!1498572))))) (seqFromList!5741 (originalCharacters!8124 (_1!25143 (get!15051 lt!1498572)))))))))

(declare-fun m!4798025 () Bool)

(assert (=> tb!252713 m!4798025))

(assert (=> d!1240957 t!347916))

(declare-fun b_and!331225 () Bool)

(assert (= b_and!331213 (and (=> t!347916 result!307992) b_and!331225)))

(declare-fun t!347918 () Bool)

(declare-fun tb!252715 () Bool)

(assert (=> (and b!4208924 (= (toValue!10458 (transformation!7742 (rule!10852 tBis!41))) (toValue!10458 (transformation!7742 (rule!10852 (_1!25143 (get!15051 lt!1498572)))))) t!347918) tb!252715))

(declare-fun result!307994 () Bool)

(assert (= result!307994 result!307992))

(assert (=> d!1240957 t!347918))

(declare-fun b_and!331227 () Bool)

(assert (= b_and!331209 (and (=> t!347918 result!307994) b_and!331227)))

(declare-fun tb!252717 () Bool)

(declare-fun t!347920 () Bool)

(assert (=> (and b!4208935 (= (toValue!10458 (transformation!7742 (h!51695 rules!3967))) (toValue!10458 (transformation!7742 (rule!10852 (_1!25143 (get!15051 lt!1498572)))))) t!347920) tb!252717))

(declare-fun result!307996 () Bool)

(assert (= result!307996 result!307992))

(assert (=> d!1240957 t!347920))

(declare-fun b_and!331229 () Bool)

(assert (= b_and!331207 (and (=> t!347920 result!307996) b_and!331229)))

(declare-fun t!347922 () Bool)

(declare-fun tb!252719 () Bool)

(assert (=> (and b!4208944 (= (toValue!10458 (transformation!7742 rBis!178)) (toValue!10458 (transformation!7742 (rule!10852 (_1!25143 (get!15051 lt!1498572)))))) t!347922) tb!252719))

(declare-fun result!307998 () Bool)

(assert (= result!307998 result!307992))

(assert (=> d!1240957 t!347922))

(declare-fun b_and!331231 () Bool)

(assert (= b_and!331211 (and (=> t!347922 result!307998) b_and!331231)))

(declare-fun t!347924 () Bool)

(declare-fun tb!252721 () Bool)

(assert (=> (and b!4209337 (= (toValue!10458 (transformation!7742 (h!51695 (t!347764 rules!3967)))) (toValue!10458 (transformation!7742 (rule!10852 (_1!25143 (get!15051 lt!1498572)))))) t!347924) tb!252721))

(declare-fun result!308000 () Bool)

(assert (= result!308000 result!307992))

(assert (=> d!1240957 t!347924))

(declare-fun b_and!331233 () Bool)

(assert (= b_and!331205 (and (=> t!347924 result!308000) b_and!331233)))

(assert (=> d!1240957 m!4797089))

(declare-fun m!4798027 () Bool)

(assert (=> d!1240957 m!4798027))

(assert (=> b!4209095 d!1240957))

(declare-fun d!1240959 () Bool)

(assert (=> d!1240959 (= (seqFromList!5741 (originalCharacters!8124 (_1!25143 (get!15051 lt!1498572)))) (fromListB!2634 (originalCharacters!8124 (_1!25143 (get!15051 lt!1498572)))))))

(declare-fun bs!597406 () Bool)

(assert (= bs!597406 d!1240959))

(declare-fun m!4798029 () Bool)

(assert (=> bs!597406 m!4798029))

(assert (=> b!4209095 d!1240959))

(assert (=> b!4208964 d!1240703))

(assert (=> b!4208964 d!1240631))

(assert (=> b!4209106 d!1240703))

(declare-fun d!1240961 () Bool)

(assert (=> d!1240961 (= (list!16729 (dynLambda!19956 (toChars!10317 (transformation!7742 (rule!10852 tBis!41))) (value!241176 tBis!41))) (list!16731 (c!717139 (dynLambda!19956 (toChars!10317 (transformation!7742 (rule!10852 tBis!41))) (value!241176 tBis!41)))))))

(declare-fun bs!597407 () Bool)

(assert (= bs!597407 d!1240961))

(declare-fun m!4798031 () Bool)

(assert (=> bs!597407 m!4798031))

(assert (=> b!4209249 d!1240961))

(declare-fun bs!597408 () Bool)

(declare-fun d!1240963 () Bool)

(assert (= bs!597408 (and d!1240963 d!1240917)))

(declare-fun lambda!129771 () Int)

(assert (=> bs!597408 (= (= (toValue!10458 (transformation!7742 (rule!10852 tBis!41))) (toValue!10458 (transformation!7742 (h!51695 rules!3967)))) (= lambda!129771 lambda!129766))))

(declare-fun bs!597409 () Bool)

(assert (= bs!597409 (and d!1240963 d!1240931)))

(assert (=> bs!597409 (= (= (toValue!10458 (transformation!7742 (rule!10852 tBis!41))) (toValue!10458 (transformation!7742 rBis!178))) (= lambda!129771 lambda!129767))))

(assert (=> d!1240963 true))

(assert (=> d!1240963 (< (dynLambda!19963 order!24539 (toValue!10458 (transformation!7742 (rule!10852 tBis!41)))) (dynLambda!19964 order!24541 lambda!129771))))

(assert (=> d!1240963 (= (equivClasses!3260 (toChars!10317 (transformation!7742 (rule!10852 tBis!41))) (toValue!10458 (transformation!7742 (rule!10852 tBis!41)))) (Forall2!1177 lambda!129771))))

(declare-fun bs!597410 () Bool)

(assert (= bs!597410 d!1240963))

(declare-fun m!4798033 () Bool)

(assert (=> bs!597410 m!4798033))

(assert (=> b!4209259 d!1240963))

(declare-fun d!1240965 () Bool)

(declare-fun lt!1498929 () Int)

(assert (=> d!1240965 (>= lt!1498929 0)))

(declare-fun e!2613417 () Int)

(assert (=> d!1240965 (= lt!1498929 e!2613417)))

(declare-fun c!717334 () Bool)

(assert (=> d!1240965 (= c!717334 ((_ is Nil!46273) lt!1498630))))

(assert (=> d!1240965 (= (size!33993 lt!1498630) lt!1498929)))

(declare-fun b!4210000 () Bool)

(assert (=> b!4210000 (= e!2613417 0)))

(declare-fun b!4210001 () Bool)

(assert (=> b!4210001 (= e!2613417 (+ 1 (size!33993 (t!347762 lt!1498630))))))

(assert (= (and d!1240965 c!717334) b!4210000))

(assert (= (and d!1240965 (not c!717334)) b!4210001))

(declare-fun m!4798035 () Bool)

(assert (=> b!4210001 m!4798035))

(assert (=> b!4209299 d!1240965))

(assert (=> b!4209299 d!1240629))

(declare-fun d!1240967 () Bool)

(declare-fun lt!1498930 () Int)

(assert (=> d!1240967 (>= lt!1498930 0)))

(declare-fun e!2613418 () Int)

(assert (=> d!1240967 (= lt!1498930 e!2613418)))

(declare-fun c!717335 () Bool)

(assert (=> d!1240967 (= c!717335 ((_ is Nil!46273) suffixBis!41))))

(assert (=> d!1240967 (= (size!33993 suffixBis!41) lt!1498930)))

(declare-fun b!4210002 () Bool)

(assert (=> b!4210002 (= e!2613418 0)))

(declare-fun b!4210003 () Bool)

(assert (=> b!4210003 (= e!2613418 (+ 1 (size!33993 (t!347762 suffixBis!41))))))

(assert (= (and d!1240967 c!717335) b!4210002))

(assert (= (and d!1240967 (not c!717335)) b!4210003))

(declare-fun m!4798037 () Bool)

(assert (=> b!4210003 m!4798037))

(assert (=> b!4209299 d!1240967))

(declare-fun d!1240969 () Bool)

(assert (=> d!1240969 (= (head!8930 p!3001) (h!51693 p!3001))))

(assert (=> b!4208962 d!1240969))

(declare-fun d!1240971 () Bool)

(assert (=> d!1240971 (= (head!8930 input!3517) (h!51693 input!3517))))

(assert (=> b!4208962 d!1240971))

(assert (=> b!4209101 d!1240677))

(declare-fun b!4210004 () Bool)

(declare-fun e!2613419 () Bool)

(assert (=> b!4210004 (= e!2613419 (nullable!4453 (regex!7742 (rule!10852 (_1!25143 (get!15051 lt!1498617))))))))

(declare-fun b!4210005 () Bool)

(declare-fun res!1729322 () Bool)

(declare-fun e!2613423 () Bool)

(assert (=> b!4210005 (=> (not res!1729322) (not e!2613423))))

(assert (=> b!4210005 (= res!1729322 (isEmpty!27405 (tail!6777 (list!16729 (charsOf!5165 (_1!25143 (get!15051 lt!1498617)))))))))

(declare-fun b!4210007 () Bool)

(declare-fun e!2613421 () Bool)

(assert (=> b!4210007 (= e!2613421 (not (= (head!8930 (list!16729 (charsOf!5165 (_1!25143 (get!15051 lt!1498617))))) (c!717138 (regex!7742 (rule!10852 (_1!25143 (get!15051 lt!1498617))))))))))

(declare-fun b!4210008 () Bool)

(declare-fun res!1729321 () Bool)

(declare-fun e!2613422 () Bool)

(assert (=> b!4210008 (=> res!1729321 e!2613422)))

(assert (=> b!4210008 (= res!1729321 e!2613423)))

(declare-fun res!1729315 () Bool)

(assert (=> b!4210008 (=> (not res!1729315) (not e!2613423))))

(declare-fun lt!1498931 () Bool)

(assert (=> b!4210008 (= res!1729315 lt!1498931)))

(declare-fun b!4210009 () Bool)

(declare-fun res!1729317 () Bool)

(assert (=> b!4210009 (=> (not res!1729317) (not e!2613423))))

(declare-fun call!292957 () Bool)

(assert (=> b!4210009 (= res!1729317 (not call!292957))))

(declare-fun b!4210010 () Bool)

(declare-fun e!2613425 () Bool)

(assert (=> b!4210010 (= e!2613425 (= lt!1498931 call!292957))))

(declare-fun bm!292952 () Bool)

(assert (=> bm!292952 (= call!292957 (isEmpty!27405 (list!16729 (charsOf!5165 (_1!25143 (get!15051 lt!1498617))))))))

(declare-fun b!4210011 () Bool)

(declare-fun e!2613424 () Bool)

(assert (=> b!4210011 (= e!2613425 e!2613424)))

(declare-fun c!717338 () Bool)

(assert (=> b!4210011 (= c!717338 ((_ is EmptyLang!12647) (regex!7742 (rule!10852 (_1!25143 (get!15051 lt!1498617))))))))

(declare-fun b!4210012 () Bool)

(declare-fun res!1729316 () Bool)

(assert (=> b!4210012 (=> res!1729316 e!2613422)))

(assert (=> b!4210012 (= res!1729316 (not ((_ is ElementMatch!12647) (regex!7742 (rule!10852 (_1!25143 (get!15051 lt!1498617)))))))))

(assert (=> b!4210012 (= e!2613424 e!2613422)))

(declare-fun b!4210013 () Bool)

(assert (=> b!4210013 (= e!2613419 (matchR!6360 (derivativeStep!3833 (regex!7742 (rule!10852 (_1!25143 (get!15051 lt!1498617)))) (head!8930 (list!16729 (charsOf!5165 (_1!25143 (get!15051 lt!1498617)))))) (tail!6777 (list!16729 (charsOf!5165 (_1!25143 (get!15051 lt!1498617)))))))))

(declare-fun b!4210014 () Bool)

(declare-fun e!2613420 () Bool)

(assert (=> b!4210014 (= e!2613420 e!2613421)))

(declare-fun res!1729320 () Bool)

(assert (=> b!4210014 (=> res!1729320 e!2613421)))

(assert (=> b!4210014 (= res!1729320 call!292957)))

(declare-fun b!4210015 () Bool)

(assert (=> b!4210015 (= e!2613424 (not lt!1498931))))

(declare-fun b!4210006 () Bool)

(assert (=> b!4210006 (= e!2613423 (= (head!8930 (list!16729 (charsOf!5165 (_1!25143 (get!15051 lt!1498617))))) (c!717138 (regex!7742 (rule!10852 (_1!25143 (get!15051 lt!1498617)))))))))

(declare-fun d!1240973 () Bool)

(assert (=> d!1240973 e!2613425))

(declare-fun c!717336 () Bool)

(assert (=> d!1240973 (= c!717336 ((_ is EmptyExpr!12647) (regex!7742 (rule!10852 (_1!25143 (get!15051 lt!1498617))))))))

(assert (=> d!1240973 (= lt!1498931 e!2613419)))

(declare-fun c!717337 () Bool)

(assert (=> d!1240973 (= c!717337 (isEmpty!27405 (list!16729 (charsOf!5165 (_1!25143 (get!15051 lt!1498617))))))))

(assert (=> d!1240973 (validRegex!5740 (regex!7742 (rule!10852 (_1!25143 (get!15051 lt!1498617)))))))

(assert (=> d!1240973 (= (matchR!6360 (regex!7742 (rule!10852 (_1!25143 (get!15051 lt!1498617)))) (list!16729 (charsOf!5165 (_1!25143 (get!15051 lt!1498617))))) lt!1498931)))

(declare-fun b!4210016 () Bool)

(declare-fun res!1729318 () Bool)

(assert (=> b!4210016 (=> res!1729318 e!2613421)))

(assert (=> b!4210016 (= res!1729318 (not (isEmpty!27405 (tail!6777 (list!16729 (charsOf!5165 (_1!25143 (get!15051 lt!1498617))))))))))

(declare-fun b!4210017 () Bool)

(assert (=> b!4210017 (= e!2613422 e!2613420)))

(declare-fun res!1729319 () Bool)

(assert (=> b!4210017 (=> (not res!1729319) (not e!2613420))))

(assert (=> b!4210017 (= res!1729319 (not lt!1498931))))

(assert (= (and d!1240973 c!717337) b!4210004))

(assert (= (and d!1240973 (not c!717337)) b!4210013))

(assert (= (and d!1240973 c!717336) b!4210010))

(assert (= (and d!1240973 (not c!717336)) b!4210011))

(assert (= (and b!4210011 c!717338) b!4210015))

(assert (= (and b!4210011 (not c!717338)) b!4210012))

(assert (= (and b!4210012 (not res!1729316)) b!4210008))

(assert (= (and b!4210008 res!1729315) b!4210009))

(assert (= (and b!4210009 res!1729317) b!4210005))

(assert (= (and b!4210005 res!1729322) b!4210006))

(assert (= (and b!4210008 (not res!1729321)) b!4210017))

(assert (= (and b!4210017 res!1729319) b!4210014))

(assert (= (and b!4210014 (not res!1729320)) b!4210016))

(assert (= (and b!4210016 (not res!1729318)) b!4210007))

(assert (= (or b!4210010 b!4210009 b!4210014) bm!292952))

(assert (=> b!4210016 m!4797219))

(declare-fun m!4798039 () Bool)

(assert (=> b!4210016 m!4798039))

(assert (=> b!4210016 m!4798039))

(declare-fun m!4798041 () Bool)

(assert (=> b!4210016 m!4798041))

(assert (=> d!1240973 m!4797219))

(declare-fun m!4798043 () Bool)

(assert (=> d!1240973 m!4798043))

(declare-fun m!4798045 () Bool)

(assert (=> d!1240973 m!4798045))

(assert (=> b!4210007 m!4797219))

(declare-fun m!4798047 () Bool)

(assert (=> b!4210007 m!4798047))

(assert (=> b!4210005 m!4797219))

(assert (=> b!4210005 m!4798039))

(assert (=> b!4210005 m!4798039))

(assert (=> b!4210005 m!4798041))

(assert (=> b!4210006 m!4797219))

(assert (=> b!4210006 m!4798047))

(assert (=> bm!292952 m!4797219))

(assert (=> bm!292952 m!4798043))

(declare-fun m!4798049 () Bool)

(assert (=> b!4210004 m!4798049))

(assert (=> b!4210013 m!4797219))

(assert (=> b!4210013 m!4798047))

(assert (=> b!4210013 m!4798047))

(declare-fun m!4798051 () Bool)

(assert (=> b!4210013 m!4798051))

(assert (=> b!4210013 m!4797219))

(assert (=> b!4210013 m!4798039))

(assert (=> b!4210013 m!4798051))

(assert (=> b!4210013 m!4798039))

(declare-fun m!4798053 () Bool)

(assert (=> b!4210013 m!4798053))

(assert (=> b!4209238 d!1240973))

(assert (=> b!4209238 d!1240701))

(assert (=> b!4209238 d!1240921))

(assert (=> b!4209238 d!1240923))

(declare-fun bs!597411 () Bool)

(declare-fun d!1240975 () Bool)

(assert (= bs!597411 (and d!1240975 d!1240939)))

(declare-fun lambda!129772 () Int)

(assert (=> bs!597411 (= (and (= (toChars!10317 (transformation!7742 (rule!10852 t!8364))) (toChars!10317 (transformation!7742 (rule!10852 tBis!41)))) (= (toValue!10458 (transformation!7742 (rule!10852 t!8364))) (toValue!10458 (transformation!7742 (rule!10852 tBis!41))))) (= lambda!129772 lambda!129770))))

(assert (=> d!1240975 true))

(assert (=> d!1240975 (< (dynLambda!19965 order!24543 (toChars!10317 (transformation!7742 (rule!10852 t!8364)))) (dynLambda!19966 order!24545 lambda!129772))))

(assert (=> d!1240975 true))

(assert (=> d!1240975 (< (dynLambda!19963 order!24539 (toValue!10458 (transformation!7742 (rule!10852 t!8364)))) (dynLambda!19966 order!24545 lambda!129772))))

(assert (=> d!1240975 (= (semiInverseModEq!3361 (toChars!10317 (transformation!7742 (rule!10852 t!8364))) (toValue!10458 (transformation!7742 (rule!10852 t!8364)))) (Forall!1578 lambda!129772))))

(declare-fun bs!597412 () Bool)

(assert (= bs!597412 d!1240975))

(declare-fun m!4798055 () Bool)

(assert (=> bs!597412 m!4798055))

(assert (=> d!1240623 d!1240975))

(declare-fun d!1240977 () Bool)

(assert (=> d!1240977 (= (list!16729 (dynLambda!19956 (toChars!10317 (transformation!7742 (rule!10852 t!8364))) (value!241176 t!8364))) (list!16731 (c!717139 (dynLambda!19956 (toChars!10317 (transformation!7742 (rule!10852 t!8364))) (value!241176 t!8364)))))))

(declare-fun bs!597413 () Bool)

(assert (= bs!597413 d!1240977))

(declare-fun m!4798057 () Bool)

(assert (=> bs!597413 m!4798057))

(assert (=> b!4209256 d!1240977))

(assert (=> b!4209099 d!1240703))

(declare-fun d!1240979 () Bool)

(assert (=> d!1240979 (= (seqFromList!5741 (_1!25145 lt!1498573)) (fromListB!2634 (_1!25145 lt!1498573)))))

(declare-fun bs!597414 () Bool)

(assert (= bs!597414 d!1240979))

(declare-fun m!4798059 () Bool)

(assert (=> bs!597414 m!4798059))

(assert (=> b!4209099 d!1240979))

(declare-fun d!1240981 () Bool)

(declare-fun lt!1498934 () Int)

(assert (=> d!1240981 (= lt!1498934 (size!33993 (list!16729 (seqFromList!5741 (_1!25145 lt!1498573)))))))

(declare-fun size!33997 (Conc!13953) Int)

(assert (=> d!1240981 (= lt!1498934 (size!33997 (c!717139 (seqFromList!5741 (_1!25145 lt!1498573)))))))

(assert (=> d!1240981 (= (size!33995 (seqFromList!5741 (_1!25145 lt!1498573))) lt!1498934)))

(declare-fun bs!597415 () Bool)

(assert (= bs!597415 d!1240981))

(assert (=> bs!597415 m!4797107))

(declare-fun m!4798061 () Bool)

(assert (=> bs!597415 m!4798061))

(assert (=> bs!597415 m!4798061))

(declare-fun m!4798063 () Bool)

(assert (=> bs!597415 m!4798063))

(declare-fun m!4798065 () Bool)

(assert (=> bs!597415 m!4798065))

(assert (=> b!4209099 d!1240981))

(declare-fun d!1240983 () Bool)

(declare-fun e!2613428 () Bool)

(assert (=> d!1240983 e!2613428))

(declare-fun res!1729325 () Bool)

(assert (=> d!1240983 (=> res!1729325 e!2613428)))

(assert (=> d!1240983 (= res!1729325 (isEmpty!27405 (_1!25145 (findLongestMatchInner!1641 (regex!7742 rBis!178) Nil!46273 (size!33993 Nil!46273) input!3517 input!3517 (size!33993 input!3517)))))))

(declare-fun lt!1498937 () Unit!65393)

(declare-fun choose!25798 (Regex!12647 List!46397) Unit!65393)

(assert (=> d!1240983 (= lt!1498937 (choose!25798 (regex!7742 rBis!178) input!3517))))

(assert (=> d!1240983 (validRegex!5740 (regex!7742 rBis!178))))

(assert (=> d!1240983 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1614 (regex!7742 rBis!178) input!3517) lt!1498937)))

(declare-fun b!4210020 () Bool)

(assert (=> b!4210020 (= e!2613428 (matchR!6360 (regex!7742 rBis!178) (_1!25145 (findLongestMatchInner!1641 (regex!7742 rBis!178) Nil!46273 (size!33993 Nil!46273) input!3517 input!3517 (size!33993 input!3517)))))))

(assert (= (and d!1240983 (not res!1729325)) b!4210020))

(declare-fun m!4798067 () Bool)

(assert (=> d!1240983 m!4798067))

(assert (=> d!1240983 m!4797115))

(assert (=> d!1240983 m!4796935))

(assert (=> d!1240983 m!4797095))

(assert (=> d!1240983 m!4797275))

(assert (=> d!1240983 m!4797095))

(assert (=> d!1240983 m!4796935))

(assert (=> d!1240983 m!4797097))

(assert (=> b!4210020 m!4797095))

(assert (=> b!4210020 m!4796935))

(assert (=> b!4210020 m!4797095))

(assert (=> b!4210020 m!4796935))

(assert (=> b!4210020 m!4797097))

(assert (=> b!4210020 m!4797099))

(assert (=> b!4209099 d!1240983))

(declare-fun d!1240985 () Bool)

(assert (=> d!1240985 (= (isEmpty!27405 (_1!25145 (findLongestMatchInner!1641 (regex!7742 rBis!178) Nil!46273 (size!33993 Nil!46273) input!3517 input!3517 (size!33993 input!3517)))) ((_ is Nil!46273) (_1!25145 (findLongestMatchInner!1641 (regex!7742 rBis!178) Nil!46273 (size!33993 Nil!46273) input!3517 input!3517 (size!33993 input!3517)))))))

(assert (=> b!4209099 d!1240985))

(assert (=> b!4209099 d!1240899))

(assert (=> b!4209099 d!1240769))

(declare-fun d!1240987 () Bool)

(assert (=> d!1240987 (= (apply!10681 (transformation!7742 rBis!178) (seqFromList!5741 (_1!25145 lt!1498573))) (dynLambda!19962 (toValue!10458 (transformation!7742 rBis!178)) (seqFromList!5741 (_1!25145 lt!1498573))))))

(declare-fun b_lambda!124011 () Bool)

(assert (=> (not b_lambda!124011) (not d!1240987)))

(declare-fun t!347926 () Bool)

(declare-fun tb!252723 () Bool)

(assert (=> (and b!4209337 (= (toValue!10458 (transformation!7742 (h!51695 (t!347764 rules!3967)))) (toValue!10458 (transformation!7742 rBis!178))) t!347926) tb!252723))

(declare-fun result!308002 () Bool)

(assert (=> tb!252723 (= result!308002 (inv!21 (dynLambda!19962 (toValue!10458 (transformation!7742 rBis!178)) (seqFromList!5741 (_1!25145 lt!1498573)))))))

(declare-fun m!4798069 () Bool)

(assert (=> tb!252723 m!4798069))

(assert (=> d!1240987 t!347926))

(declare-fun b_and!331235 () Bool)

(assert (= b_and!331233 (and (=> t!347926 result!308002) b_and!331235)))

(declare-fun t!347928 () Bool)

(declare-fun tb!252725 () Bool)

(assert (=> (and b!4208924 (= (toValue!10458 (transformation!7742 (rule!10852 tBis!41))) (toValue!10458 (transformation!7742 rBis!178))) t!347928) tb!252725))

(declare-fun result!308004 () Bool)

(assert (= result!308004 result!308002))

(assert (=> d!1240987 t!347928))

(declare-fun b_and!331237 () Bool)

(assert (= b_and!331227 (and (=> t!347928 result!308004) b_and!331237)))

(declare-fun tb!252727 () Bool)

(declare-fun t!347930 () Bool)

(assert (=> (and b!4208935 (= (toValue!10458 (transformation!7742 (h!51695 rules!3967))) (toValue!10458 (transformation!7742 rBis!178))) t!347930) tb!252727))

(declare-fun result!308006 () Bool)

(assert (= result!308006 result!308002))

(assert (=> d!1240987 t!347930))

(declare-fun b_and!331239 () Bool)

(assert (= b_and!331229 (and (=> t!347930 result!308006) b_and!331239)))

(declare-fun t!347932 () Bool)

(declare-fun tb!252729 () Bool)

(assert (=> (and b!4208944 (= (toValue!10458 (transformation!7742 rBis!178)) (toValue!10458 (transformation!7742 rBis!178))) t!347932) tb!252729))

(declare-fun result!308008 () Bool)

(assert (= result!308008 result!308002))

(assert (=> d!1240987 t!347932))

(declare-fun b_and!331241 () Bool)

(assert (= b_and!331231 (and (=> t!347932 result!308008) b_and!331241)))

(declare-fun t!347934 () Bool)

(declare-fun tb!252731 () Bool)

(assert (=> (and b!4208951 (= (toValue!10458 (transformation!7742 (rule!10852 t!8364))) (toValue!10458 (transformation!7742 rBis!178))) t!347934) tb!252731))

(declare-fun result!308010 () Bool)

(assert (= result!308010 result!308002))

(assert (=> d!1240987 t!347934))

(declare-fun b_and!331243 () Bool)

(assert (= b_and!331225 (and (=> t!347934 result!308010) b_and!331243)))

(assert (=> d!1240987 m!4797107))

(declare-fun m!4798071 () Bool)

(assert (=> d!1240987 m!4798071))

(assert (=> b!4209099 d!1240987))

(declare-fun bs!597416 () Bool)

(declare-fun d!1240989 () Bool)

(assert (= bs!597416 (and d!1240989 d!1240939)))

(declare-fun lambda!129775 () Int)

(assert (=> bs!597416 (= (and (= (toChars!10317 (transformation!7742 rBis!178)) (toChars!10317 (transformation!7742 (rule!10852 tBis!41)))) (= (toValue!10458 (transformation!7742 rBis!178)) (toValue!10458 (transformation!7742 (rule!10852 tBis!41))))) (= lambda!129775 lambda!129770))))

(declare-fun bs!597417 () Bool)

(assert (= bs!597417 (and d!1240989 d!1240975)))

(assert (=> bs!597417 (= (and (= (toChars!10317 (transformation!7742 rBis!178)) (toChars!10317 (transformation!7742 (rule!10852 t!8364)))) (= (toValue!10458 (transformation!7742 rBis!178)) (toValue!10458 (transformation!7742 (rule!10852 t!8364))))) (= lambda!129775 lambda!129772))))

(declare-fun b!4210025 () Bool)

(declare-fun e!2613432 () Bool)

(assert (=> b!4210025 (= e!2613432 true)))

(assert (=> d!1240989 e!2613432))

(assert (= d!1240989 b!4210025))

(assert (=> b!4210025 (< (dynLambda!19963 order!24539 (toValue!10458 (transformation!7742 rBis!178))) (dynLambda!19966 order!24545 lambda!129775))))

(assert (=> b!4210025 (< (dynLambda!19965 order!24543 (toChars!10317 (transformation!7742 rBis!178))) (dynLambda!19966 order!24545 lambda!129775))))

(assert (=> d!1240989 (= (list!16729 (dynLambda!19956 (toChars!10317 (transformation!7742 rBis!178)) (dynLambda!19962 (toValue!10458 (transformation!7742 rBis!178)) (seqFromList!5741 (_1!25145 lt!1498573))))) (list!16729 (seqFromList!5741 (_1!25145 lt!1498573))))))

(declare-fun lt!1498940 () Unit!65393)

(declare-fun ForallOf!1085 (Int BalanceConc!27500) Unit!65393)

(assert (=> d!1240989 (= lt!1498940 (ForallOf!1085 lambda!129775 (seqFromList!5741 (_1!25145 lt!1498573))))))

(assert (=> d!1240989 (= (lemmaSemiInverse!2482 (transformation!7742 rBis!178) (seqFromList!5741 (_1!25145 lt!1498573))) lt!1498940)))

(declare-fun b_lambda!124013 () Bool)

(assert (=> (not b_lambda!124013) (not d!1240989)))

(declare-fun t!347936 () Bool)

(declare-fun tb!252733 () Bool)

(assert (=> (and b!4208944 (= (toChars!10317 (transformation!7742 rBis!178)) (toChars!10317 (transformation!7742 rBis!178))) t!347936) tb!252733))

(declare-fun e!2613433 () Bool)

(declare-fun b!4210026 () Bool)

(declare-fun tp!1287040 () Bool)

(assert (=> b!4210026 (= e!2613433 (and (inv!60881 (c!717139 (dynLambda!19956 (toChars!10317 (transformation!7742 rBis!178)) (dynLambda!19962 (toValue!10458 (transformation!7742 rBis!178)) (seqFromList!5741 (_1!25145 lt!1498573)))))) tp!1287040))))

(declare-fun result!308012 () Bool)

(assert (=> tb!252733 (= result!308012 (and (inv!60882 (dynLambda!19956 (toChars!10317 (transformation!7742 rBis!178)) (dynLambda!19962 (toValue!10458 (transformation!7742 rBis!178)) (seqFromList!5741 (_1!25145 lt!1498573))))) e!2613433))))

(assert (= tb!252733 b!4210026))

(declare-fun m!4798073 () Bool)

(assert (=> b!4210026 m!4798073))

(declare-fun m!4798075 () Bool)

(assert (=> tb!252733 m!4798075))

(assert (=> d!1240989 t!347936))

(declare-fun b_and!331245 () Bool)

(assert (= b_and!331217 (and (=> t!347936 result!308012) b_and!331245)))

(declare-fun tb!252735 () Bool)

(declare-fun t!347938 () Bool)

(assert (=> (and b!4209337 (= (toChars!10317 (transformation!7742 (h!51695 (t!347764 rules!3967)))) (toChars!10317 (transformation!7742 rBis!178))) t!347938) tb!252735))

(declare-fun result!308014 () Bool)

(assert (= result!308014 result!308012))

(assert (=> d!1240989 t!347938))

(declare-fun b_and!331247 () Bool)

(assert (= b_and!331215 (and (=> t!347938 result!308014) b_and!331247)))

(declare-fun t!347940 () Bool)

(declare-fun tb!252737 () Bool)

(assert (=> (and b!4208951 (= (toChars!10317 (transformation!7742 (rule!10852 t!8364))) (toChars!10317 (transformation!7742 rBis!178))) t!347940) tb!252737))

(declare-fun result!308016 () Bool)

(assert (= result!308016 result!308012))

(assert (=> d!1240989 t!347940))

(declare-fun b_and!331249 () Bool)

(assert (= b_and!331219 (and (=> t!347940 result!308016) b_and!331249)))

(declare-fun tb!252739 () Bool)

(declare-fun t!347942 () Bool)

(assert (=> (and b!4208924 (= (toChars!10317 (transformation!7742 (rule!10852 tBis!41))) (toChars!10317 (transformation!7742 rBis!178))) t!347942) tb!252739))

(declare-fun result!308018 () Bool)

(assert (= result!308018 result!308012))

(assert (=> d!1240989 t!347942))

(declare-fun b_and!331251 () Bool)

(assert (= b_and!331223 (and (=> t!347942 result!308018) b_and!331251)))

(declare-fun tb!252741 () Bool)

(declare-fun t!347944 () Bool)

(assert (=> (and b!4208935 (= (toChars!10317 (transformation!7742 (h!51695 rules!3967))) (toChars!10317 (transformation!7742 rBis!178))) t!347944) tb!252741))

(declare-fun result!308020 () Bool)

(assert (= result!308020 result!308012))

(assert (=> d!1240989 t!347944))

(declare-fun b_and!331253 () Bool)

(assert (= b_and!331221 (and (=> t!347944 result!308020) b_and!331253)))

(declare-fun b_lambda!124015 () Bool)

(assert (=> (not b_lambda!124015) (not d!1240989)))

(assert (=> d!1240989 t!347928))

(declare-fun b_and!331255 () Bool)

(assert (= b_and!331237 (and (=> t!347928 result!308004) b_and!331255)))

(assert (=> d!1240989 t!347926))

(declare-fun b_and!331257 () Bool)

(assert (= b_and!331235 (and (=> t!347926 result!308002) b_and!331257)))

(assert (=> d!1240989 t!347930))

(declare-fun b_and!331259 () Bool)

(assert (= b_and!331239 (and (=> t!347930 result!308006) b_and!331259)))

(assert (=> d!1240989 t!347934))

(declare-fun b_and!331261 () Bool)

(assert (= b_and!331243 (and (=> t!347934 result!308010) b_and!331261)))

(assert (=> d!1240989 t!347932))

(declare-fun b_and!331263 () Bool)

(assert (= b_and!331241 (and (=> t!347932 result!308008) b_and!331263)))

(assert (=> d!1240989 m!4797107))

(assert (=> d!1240989 m!4798071))

(declare-fun m!4798077 () Bool)

(assert (=> d!1240989 m!4798077))

(declare-fun m!4798079 () Bool)

(assert (=> d!1240989 m!4798079))

(assert (=> d!1240989 m!4797107))

(declare-fun m!4798081 () Bool)

(assert (=> d!1240989 m!4798081))

(assert (=> d!1240989 m!4798071))

(assert (=> d!1240989 m!4798077))

(assert (=> d!1240989 m!4797107))

(assert (=> d!1240989 m!4798061))

(assert (=> b!4209099 d!1240989))

(assert (=> b!4209264 d!1240703))

(assert (=> b!4209264 d!1240629))

(assert (=> b!4209236 d!1240921))

(assert (=> b!4209236 d!1240923))

(assert (=> b!4209236 d!1240701))

(declare-fun d!1240991 () Bool)

(declare-fun c!717340 () Bool)

(assert (=> d!1240991 (= c!717340 ((_ is Node!13953) (c!717139 (dynLambda!19956 (toChars!10317 (transformation!7742 (rule!10852 tBis!41))) (value!241176 tBis!41)))))))

(declare-fun e!2613434 () Bool)

(assert (=> d!1240991 (= (inv!60881 (c!717139 (dynLambda!19956 (toChars!10317 (transformation!7742 (rule!10852 tBis!41))) (value!241176 tBis!41)))) e!2613434)))

(declare-fun b!4210027 () Bool)

(assert (=> b!4210027 (= e!2613434 (inv!60885 (c!717139 (dynLambda!19956 (toChars!10317 (transformation!7742 (rule!10852 tBis!41))) (value!241176 tBis!41)))))))

(declare-fun b!4210028 () Bool)

(declare-fun e!2613435 () Bool)

(assert (=> b!4210028 (= e!2613434 e!2613435)))

(declare-fun res!1729326 () Bool)

(assert (=> b!4210028 (= res!1729326 (not ((_ is Leaf!21568) (c!717139 (dynLambda!19956 (toChars!10317 (transformation!7742 (rule!10852 tBis!41))) (value!241176 tBis!41))))))))

(assert (=> b!4210028 (=> res!1729326 e!2613435)))

(declare-fun b!4210029 () Bool)

(assert (=> b!4210029 (= e!2613435 (inv!60886 (c!717139 (dynLambda!19956 (toChars!10317 (transformation!7742 (rule!10852 tBis!41))) (value!241176 tBis!41)))))))

(assert (= (and d!1240991 c!717340) b!4210027))

(assert (= (and d!1240991 (not c!717340)) b!4210028))

(assert (= (and b!4210028 (not res!1729326)) b!4210029))

(declare-fun m!4798083 () Bool)

(assert (=> b!4210027 m!4798083))

(declare-fun m!4798085 () Bool)

(assert (=> b!4210029 m!4798085))

(assert (=> b!4209255 d!1240991))

(declare-fun d!1240993 () Bool)

(assert (=> d!1240993 (= (head!8930 pBis!121) (h!51693 pBis!121))))

(assert (=> b!4209262 d!1240993))

(assert (=> b!4209262 d!1240971))

(assert (=> d!1240593 d!1240591))

(declare-fun d!1240995 () Bool)

(assert (=> d!1240995 (isPrefix!4601 input!3517 input!3517)))

(assert (=> d!1240995 true))

(declare-fun _$45!2093 () Unit!65393)

(assert (=> d!1240995 (= (choose!25796 input!3517 input!3517) _$45!2093)))

(declare-fun bs!597418 () Bool)

(assert (= bs!597418 d!1240995))

(assert (=> bs!597418 m!4796907))

(assert (=> d!1240593 d!1240995))

(declare-fun d!1240997 () Bool)

(assert (=> d!1240997 (= (list!16729 lt!1498629) (list!16731 (c!717139 lt!1498629)))))

(declare-fun bs!597419 () Bool)

(assert (= bs!597419 d!1240997))

(declare-fun m!4798087 () Bool)

(assert (=> bs!597419 m!4798087))

(assert (=> d!1240639 d!1240997))

(declare-fun bs!597420 () Bool)

(declare-fun d!1240999 () Bool)

(assert (= bs!597420 (and d!1240999 d!1240939)))

(declare-fun lambda!129776 () Int)

(assert (=> bs!597420 (= (and (= (toChars!10317 (transformation!7742 rBis!178)) (toChars!10317 (transformation!7742 (rule!10852 tBis!41)))) (= (toValue!10458 (transformation!7742 rBis!178)) (toValue!10458 (transformation!7742 (rule!10852 tBis!41))))) (= lambda!129776 lambda!129770))))

(declare-fun bs!597421 () Bool)

(assert (= bs!597421 (and d!1240999 d!1240975)))

(assert (=> bs!597421 (= (and (= (toChars!10317 (transformation!7742 rBis!178)) (toChars!10317 (transformation!7742 (rule!10852 t!8364)))) (= (toValue!10458 (transformation!7742 rBis!178)) (toValue!10458 (transformation!7742 (rule!10852 t!8364))))) (= lambda!129776 lambda!129772))))

(declare-fun bs!597422 () Bool)

(assert (= bs!597422 (and d!1240999 d!1240989)))

(assert (=> bs!597422 (= lambda!129776 lambda!129775)))

(assert (=> d!1240999 true))

(assert (=> d!1240999 (< (dynLambda!19965 order!24543 (toChars!10317 (transformation!7742 rBis!178))) (dynLambda!19966 order!24545 lambda!129776))))

(assert (=> d!1240999 true))

(assert (=> d!1240999 (< (dynLambda!19963 order!24539 (toValue!10458 (transformation!7742 rBis!178))) (dynLambda!19966 order!24545 lambda!129776))))

(assert (=> d!1240999 (= (semiInverseModEq!3361 (toChars!10317 (transformation!7742 rBis!178)) (toValue!10458 (transformation!7742 rBis!178))) (Forall!1578 lambda!129776))))

(declare-fun bs!597423 () Bool)

(assert (= bs!597423 d!1240999))

(declare-fun m!4798089 () Bool)

(assert (=> bs!597423 m!4798089))

(assert (=> d!1240647 d!1240999))

(declare-fun d!1241001 () Bool)

(assert (=> d!1241001 (= (isDefined!7382 lt!1498617) (not (isEmpty!27404 lt!1498617)))))

(declare-fun bs!597424 () Bool)

(assert (= bs!597424 d!1241001))

(assert (=> bs!597424 m!4797233))

(assert (=> b!4209242 d!1241001))

(declare-fun d!1241003 () Bool)

(assert (=> d!1241003 (= (inv!60874 (tag!8606 (h!51695 (t!347764 rules!3967)))) (= (mod (str.len (value!241175 (tag!8606 (h!51695 (t!347764 rules!3967))))) 2) 0))))

(assert (=> b!4209336 d!1241003))

(declare-fun d!1241005 () Bool)

(declare-fun res!1729327 () Bool)

(declare-fun e!2613436 () Bool)

(assert (=> d!1241005 (=> (not res!1729327) (not e!2613436))))

(assert (=> d!1241005 (= res!1729327 (semiInverseModEq!3361 (toChars!10317 (transformation!7742 (h!51695 (t!347764 rules!3967)))) (toValue!10458 (transformation!7742 (h!51695 (t!347764 rules!3967))))))))

(assert (=> d!1241005 (= (inv!60877 (transformation!7742 (h!51695 (t!347764 rules!3967)))) e!2613436)))

(declare-fun b!4210030 () Bool)

(assert (=> b!4210030 (= e!2613436 (equivClasses!3260 (toChars!10317 (transformation!7742 (h!51695 (t!347764 rules!3967)))) (toValue!10458 (transformation!7742 (h!51695 (t!347764 rules!3967))))))))

(assert (= (and d!1241005 res!1729327) b!4210030))

(declare-fun m!4798091 () Bool)

(assert (=> d!1241005 m!4798091))

(declare-fun m!4798093 () Bool)

(assert (=> b!4210030 m!4798093))

(assert (=> b!4209336 d!1241005))

(declare-fun d!1241007 () Bool)

(assert (=> d!1241007 (= (inv!60882 (dynLambda!19956 (toChars!10317 (transformation!7742 (rule!10852 t!8364))) (value!241176 t!8364))) (isBalanced!3745 (c!717139 (dynLambda!19956 (toChars!10317 (transformation!7742 (rule!10852 t!8364))) (value!241176 t!8364)))))))

(declare-fun bs!597425 () Bool)

(assert (= bs!597425 d!1241007))

(declare-fun m!4798095 () Bool)

(assert (=> bs!597425 m!4798095))

(assert (=> tb!252595 d!1241007))

(declare-fun d!1241009 () Bool)

(declare-fun nullableFct!1226 (Regex!12647) Bool)

(assert (=> d!1241009 (= (nullable!4453 (regex!7742 rBis!178)) (nullableFct!1226 (regex!7742 rBis!178)))))

(declare-fun bs!597426 () Bool)

(assert (= bs!597426 d!1241009))

(declare-fun m!4798097 () Bool)

(assert (=> bs!597426 m!4798097))

(assert (=> b!4209269 d!1241009))

(declare-fun b!4210031 () Bool)

(declare-fun e!2613439 () Bool)

(declare-fun lt!1498941 () Option!9930)

(assert (=> b!4210031 (= e!2613439 (= (size!33992 (_1!25143 (get!15051 lt!1498941))) (size!33993 (originalCharacters!8124 (_1!25143 (get!15051 lt!1498941))))))))

(declare-fun b!4210032 () Bool)

(declare-fun res!1729332 () Bool)

(assert (=> b!4210032 (=> (not res!1729332) (not e!2613439))))

(assert (=> b!4210032 (= res!1729332 (= (value!241176 (_1!25143 (get!15051 lt!1498941))) (apply!10681 (transformation!7742 (rule!10852 (_1!25143 (get!15051 lt!1498941)))) (seqFromList!5741 (originalCharacters!8124 (_1!25143 (get!15051 lt!1498941)))))))))

(declare-fun b!4210033 () Bool)

(declare-fun e!2613437 () Option!9930)

(assert (=> b!4210033 (= e!2613437 None!9929)))

(declare-fun d!1241011 () Bool)

(declare-fun e!2613438 () Bool)

(assert (=> d!1241011 e!2613438))

(declare-fun res!1729330 () Bool)

(assert (=> d!1241011 (=> res!1729330 e!2613438)))

(assert (=> d!1241011 (= res!1729330 (isEmpty!27404 lt!1498941))))

(assert (=> d!1241011 (= lt!1498941 e!2613437)))

(declare-fun c!717341 () Bool)

(declare-fun lt!1498942 () tuple2!44022)

(assert (=> d!1241011 (= c!717341 (isEmpty!27405 (_1!25145 lt!1498942)))))

(assert (=> d!1241011 (= lt!1498942 (findLongestMatch!1554 (regex!7742 (h!51695 rules!3967)) input!3517))))

(assert (=> d!1241011 (ruleValid!3454 thiss!26544 (h!51695 rules!3967))))

(assert (=> d!1241011 (= (maxPrefixOneRule!3332 thiss!26544 (h!51695 rules!3967) input!3517) lt!1498941)))

(declare-fun b!4210034 () Bool)

(declare-fun res!1729328 () Bool)

(assert (=> b!4210034 (=> (not res!1729328) (not e!2613439))))

(assert (=> b!4210034 (= res!1729328 (< (size!33993 (_2!25143 (get!15051 lt!1498941))) (size!33993 input!3517)))))

(declare-fun b!4210035 () Bool)

(declare-fun e!2613440 () Bool)

(assert (=> b!4210035 (= e!2613440 (matchR!6360 (regex!7742 (h!51695 rules!3967)) (_1!25145 (findLongestMatchInner!1641 (regex!7742 (h!51695 rules!3967)) Nil!46273 (size!33993 Nil!46273) input!3517 input!3517 (size!33993 input!3517)))))))

(declare-fun b!4210036 () Bool)

(assert (=> b!4210036 (= e!2613437 (Some!9929 (tuple2!44019 (Token!14187 (apply!10681 (transformation!7742 (h!51695 rules!3967)) (seqFromList!5741 (_1!25145 lt!1498942))) (h!51695 rules!3967) (size!33995 (seqFromList!5741 (_1!25145 lt!1498942))) (_1!25145 lt!1498942)) (_2!25145 lt!1498942))))))

(declare-fun lt!1498943 () Unit!65393)

(assert (=> b!4210036 (= lt!1498943 (longestMatchIsAcceptedByMatchOrIsEmpty!1614 (regex!7742 (h!51695 rules!3967)) input!3517))))

(declare-fun res!1729334 () Bool)

(assert (=> b!4210036 (= res!1729334 (isEmpty!27405 (_1!25145 (findLongestMatchInner!1641 (regex!7742 (h!51695 rules!3967)) Nil!46273 (size!33993 Nil!46273) input!3517 input!3517 (size!33993 input!3517)))))))

(assert (=> b!4210036 (=> res!1729334 e!2613440)))

(assert (=> b!4210036 e!2613440))

(declare-fun lt!1498944 () Unit!65393)

(assert (=> b!4210036 (= lt!1498944 lt!1498943)))

(declare-fun lt!1498945 () Unit!65393)

(assert (=> b!4210036 (= lt!1498945 (lemmaSemiInverse!2482 (transformation!7742 (h!51695 rules!3967)) (seqFromList!5741 (_1!25145 lt!1498942))))))

(declare-fun b!4210037 () Bool)

(declare-fun res!1729331 () Bool)

(assert (=> b!4210037 (=> (not res!1729331) (not e!2613439))))

(assert (=> b!4210037 (= res!1729331 (= (++!11816 (list!16729 (charsOf!5165 (_1!25143 (get!15051 lt!1498941)))) (_2!25143 (get!15051 lt!1498941))) input!3517))))

(declare-fun b!4210038 () Bool)

(declare-fun res!1729333 () Bool)

(assert (=> b!4210038 (=> (not res!1729333) (not e!2613439))))

(assert (=> b!4210038 (= res!1729333 (= (rule!10852 (_1!25143 (get!15051 lt!1498941))) (h!51695 rules!3967)))))

(declare-fun b!4210039 () Bool)

(assert (=> b!4210039 (= e!2613438 e!2613439)))

(declare-fun res!1729329 () Bool)

(assert (=> b!4210039 (=> (not res!1729329) (not e!2613439))))

(assert (=> b!4210039 (= res!1729329 (matchR!6360 (regex!7742 (h!51695 rules!3967)) (list!16729 (charsOf!5165 (_1!25143 (get!15051 lt!1498941))))))))

(assert (= (and d!1241011 c!717341) b!4210033))

(assert (= (and d!1241011 (not c!717341)) b!4210036))

(assert (= (and b!4210036 (not res!1729334)) b!4210035))

(assert (= (and d!1241011 (not res!1729330)) b!4210039))

(assert (= (and b!4210039 res!1729329) b!4210037))

(assert (= (and b!4210037 res!1729331) b!4210034))

(assert (= (and b!4210034 res!1729328) b!4210038))

(assert (= (and b!4210038 res!1729333) b!4210032))

(assert (= (and b!4210032 res!1729332) b!4210031))

(declare-fun m!4798099 () Bool)

(assert (=> b!4210032 m!4798099))

(declare-fun m!4798101 () Bool)

(assert (=> b!4210032 m!4798101))

(assert (=> b!4210032 m!4798101))

(declare-fun m!4798103 () Bool)

(assert (=> b!4210032 m!4798103))

(assert (=> b!4210034 m!4798099))

(declare-fun m!4798105 () Bool)

(assert (=> b!4210034 m!4798105))

(assert (=> b!4210034 m!4796935))

(assert (=> b!4210038 m!4798099))

(assert (=> b!4210035 m!4797095))

(assert (=> b!4210035 m!4796935))

(assert (=> b!4210035 m!4797095))

(assert (=> b!4210035 m!4796935))

(declare-fun m!4798107 () Bool)

(assert (=> b!4210035 m!4798107))

(declare-fun m!4798109 () Bool)

(assert (=> b!4210035 m!4798109))

(assert (=> b!4210039 m!4798099))

(declare-fun m!4798111 () Bool)

(assert (=> b!4210039 m!4798111))

(assert (=> b!4210039 m!4798111))

(declare-fun m!4798113 () Bool)

(assert (=> b!4210039 m!4798113))

(assert (=> b!4210039 m!4798113))

(declare-fun m!4798115 () Bool)

(assert (=> b!4210039 m!4798115))

(assert (=> b!4210036 m!4796935))

(declare-fun m!4798117 () Bool)

(assert (=> b!4210036 m!4798117))

(assert (=> b!4210036 m!4798117))

(declare-fun m!4798119 () Bool)

(assert (=> b!4210036 m!4798119))

(assert (=> b!4210036 m!4797095))

(assert (=> b!4210036 m!4796935))

(assert (=> b!4210036 m!4798107))

(assert (=> b!4210036 m!4798117))

(declare-fun m!4798121 () Bool)

(assert (=> b!4210036 m!4798121))

(assert (=> b!4210036 m!4797095))

(assert (=> b!4210036 m!4798117))

(declare-fun m!4798123 () Bool)

(assert (=> b!4210036 m!4798123))

(declare-fun m!4798125 () Bool)

(assert (=> b!4210036 m!4798125))

(declare-fun m!4798127 () Bool)

(assert (=> b!4210036 m!4798127))

(assert (=> b!4210031 m!4798099))

(declare-fun m!4798129 () Bool)

(assert (=> b!4210031 m!4798129))

(assert (=> b!4210037 m!4798099))

(assert (=> b!4210037 m!4798111))

(assert (=> b!4210037 m!4798111))

(assert (=> b!4210037 m!4798113))

(assert (=> b!4210037 m!4798113))

(declare-fun m!4798131 () Bool)

(assert (=> b!4210037 m!4798131))

(declare-fun m!4798133 () Bool)

(assert (=> d!1241011 m!4798133))

(declare-fun m!4798135 () Bool)

(assert (=> d!1241011 m!4798135))

(declare-fun m!4798137 () Bool)

(assert (=> d!1241011 m!4798137))

(declare-fun m!4798139 () Bool)

(assert (=> d!1241011 m!4798139))

(assert (=> bm!292875 d!1241011))

(declare-fun bs!597427 () Bool)

(declare-fun d!1241013 () Bool)

(assert (= bs!597427 (and d!1241013 d!1240917)))

(declare-fun lambda!129777 () Int)

(assert (=> bs!597427 (= (= (toValue!10458 (transformation!7742 (rule!10852 t!8364))) (toValue!10458 (transformation!7742 (h!51695 rules!3967)))) (= lambda!129777 lambda!129766))))

(declare-fun bs!597428 () Bool)

(assert (= bs!597428 (and d!1241013 d!1240931)))

(assert (=> bs!597428 (= (= (toValue!10458 (transformation!7742 (rule!10852 t!8364))) (toValue!10458 (transformation!7742 rBis!178))) (= lambda!129777 lambda!129767))))

(declare-fun bs!597429 () Bool)

(assert (= bs!597429 (and d!1241013 d!1240963)))

(assert (=> bs!597429 (= (= (toValue!10458 (transformation!7742 (rule!10852 t!8364))) (toValue!10458 (transformation!7742 (rule!10852 tBis!41)))) (= lambda!129777 lambda!129771))))

(assert (=> d!1241013 true))

(assert (=> d!1241013 (< (dynLambda!19963 order!24539 (toValue!10458 (transformation!7742 (rule!10852 t!8364)))) (dynLambda!19964 order!24541 lambda!129777))))

(assert (=> d!1241013 (= (equivClasses!3260 (toChars!10317 (transformation!7742 (rule!10852 t!8364))) (toValue!10458 (transformation!7742 (rule!10852 t!8364)))) (Forall2!1177 lambda!129777))))

(declare-fun bs!597430 () Bool)

(assert (= bs!597430 d!1241013))

(declare-fun m!4798141 () Bool)

(assert (=> bs!597430 m!4798141))

(assert (=> b!4209260 d!1241013))

(declare-fun bs!597431 () Bool)

(declare-fun d!1241015 () Bool)

(assert (= bs!597431 (and d!1241015 d!1240939)))

(declare-fun lambda!129778 () Int)

(assert (=> bs!597431 (= (and (= (toChars!10317 (transformation!7742 (h!51695 rules!3967))) (toChars!10317 (transformation!7742 (rule!10852 tBis!41)))) (= (toValue!10458 (transformation!7742 (h!51695 rules!3967))) (toValue!10458 (transformation!7742 (rule!10852 tBis!41))))) (= lambda!129778 lambda!129770))))

(declare-fun bs!597432 () Bool)

(assert (= bs!597432 (and d!1241015 d!1240975)))

(assert (=> bs!597432 (= (and (= (toChars!10317 (transformation!7742 (h!51695 rules!3967))) (toChars!10317 (transformation!7742 (rule!10852 t!8364)))) (= (toValue!10458 (transformation!7742 (h!51695 rules!3967))) (toValue!10458 (transformation!7742 (rule!10852 t!8364))))) (= lambda!129778 lambda!129772))))

(declare-fun bs!597433 () Bool)

(assert (= bs!597433 (and d!1241015 d!1240989)))

(assert (=> bs!597433 (= (and (= (toChars!10317 (transformation!7742 (h!51695 rules!3967))) (toChars!10317 (transformation!7742 rBis!178))) (= (toValue!10458 (transformation!7742 (h!51695 rules!3967))) (toValue!10458 (transformation!7742 rBis!178)))) (= lambda!129778 lambda!129775))))

(declare-fun bs!597434 () Bool)

(assert (= bs!597434 (and d!1241015 d!1240999)))

(assert (=> bs!597434 (= (and (= (toChars!10317 (transformation!7742 (h!51695 rules!3967))) (toChars!10317 (transformation!7742 rBis!178))) (= (toValue!10458 (transformation!7742 (h!51695 rules!3967))) (toValue!10458 (transformation!7742 rBis!178)))) (= lambda!129778 lambda!129776))))

(assert (=> d!1241015 true))

(assert (=> d!1241015 (< (dynLambda!19965 order!24543 (toChars!10317 (transformation!7742 (h!51695 rules!3967)))) (dynLambda!19966 order!24545 lambda!129778))))

(assert (=> d!1241015 true))

(assert (=> d!1241015 (< (dynLambda!19963 order!24539 (toValue!10458 (transformation!7742 (h!51695 rules!3967)))) (dynLambda!19966 order!24545 lambda!129778))))

(assert (=> d!1241015 (= (semiInverseModEq!3361 (toChars!10317 (transformation!7742 (h!51695 rules!3967))) (toValue!10458 (transformation!7742 (h!51695 rules!3967)))) (Forall!1578 lambda!129778))))

(declare-fun bs!597435 () Bool)

(assert (= bs!597435 d!1241015))

(declare-fun m!4798143 () Bool)

(assert (=> bs!597435 m!4798143))

(assert (=> d!1240545 d!1241015))

(assert (=> b!4209104 d!1240971))

(declare-fun d!1241017 () Bool)

(assert (=> d!1241017 (= (isEmpty!27404 lt!1498617) (not ((_ is Some!9929) lt!1498617)))))

(assert (=> d!1240607 d!1241017))

(assert (=> d!1240607 d!1240591))

(assert (=> d!1240607 d!1240593))

(declare-fun bs!597436 () Bool)

(declare-fun d!1241019 () Bool)

(assert (= bs!597436 (and d!1241019 d!1240715)))

(declare-fun lambda!129781 () Int)

(assert (=> bs!597436 (= lambda!129781 lambda!129751)))

(assert (=> d!1241019 true))

(declare-fun lt!1498948 () Bool)

(assert (=> d!1241019 (= lt!1498948 (forall!8491 rules!3967 lambda!129781))))

(declare-fun e!2613446 () Bool)

(assert (=> d!1241019 (= lt!1498948 e!2613446)))

(declare-fun res!1729339 () Bool)

(assert (=> d!1241019 (=> res!1729339 e!2613446)))

(assert (=> d!1241019 (= res!1729339 (not ((_ is Cons!46275) rules!3967)))))

(assert (=> d!1241019 (= (rulesValidInductive!2872 thiss!26544 rules!3967) lt!1498948)))

(declare-fun b!4210044 () Bool)

(declare-fun e!2613445 () Bool)

(assert (=> b!4210044 (= e!2613446 e!2613445)))

(declare-fun res!1729340 () Bool)

(assert (=> b!4210044 (=> (not res!1729340) (not e!2613445))))

(assert (=> b!4210044 (= res!1729340 (ruleValid!3454 thiss!26544 (h!51695 rules!3967)))))

(declare-fun b!4210045 () Bool)

(assert (=> b!4210045 (= e!2613445 (rulesValidInductive!2872 thiss!26544 (t!347764 rules!3967)))))

(assert (= (and d!1241019 (not res!1729339)) b!4210044))

(assert (= (and b!4210044 res!1729340) b!4210045))

(declare-fun m!4798145 () Bool)

(assert (=> d!1241019 m!4798145))

(assert (=> b!4210044 m!4798139))

(declare-fun m!4798147 () Bool)

(assert (=> b!4210045 m!4798147))

(assert (=> d!1240607 d!1241019))

(declare-fun d!1241021 () Bool)

(declare-fun lt!1498949 () Int)

(assert (=> d!1241021 (>= lt!1498949 0)))

(declare-fun e!2613447 () Int)

(assert (=> d!1241021 (= lt!1498949 e!2613447)))

(declare-fun c!717342 () Bool)

(assert (=> d!1241021 (= c!717342 ((_ is Nil!46273) (t!347762 pBis!121)))))

(assert (=> d!1241021 (= (size!33993 (t!347762 pBis!121)) lt!1498949)))

(declare-fun b!4210046 () Bool)

(assert (=> b!4210046 (= e!2613447 0)))

(declare-fun b!4210047 () Bool)

(assert (=> b!4210047 (= e!2613447 (+ 1 (size!33993 (t!347762 (t!347762 pBis!121)))))))

(assert (= (and d!1241021 c!717342) b!4210046))

(assert (= (and d!1241021 (not c!717342)) b!4210047))

(declare-fun m!4798149 () Bool)

(assert (=> b!4210047 m!4798149))

(assert (=> b!4209276 d!1241021))

(declare-fun b!4210048 () Bool)

(declare-fun res!1729347 () Bool)

(declare-fun e!2613449 () Bool)

(assert (=> b!4210048 (=> (not res!1729347) (not e!2613449))))

(declare-fun lt!1498950 () Option!9930)

(assert (=> b!4210048 (= res!1729347 (= (list!16729 (charsOf!5165 (_1!25143 (get!15051 lt!1498950)))) (originalCharacters!8124 (_1!25143 (get!15051 lt!1498950)))))))

(declare-fun b!4210049 () Bool)

(declare-fun res!1729341 () Bool)

(assert (=> b!4210049 (=> (not res!1729341) (not e!2613449))))

(assert (=> b!4210049 (= res!1729341 (< (size!33993 (_2!25143 (get!15051 lt!1498950))) (size!33993 input!3517)))))

(declare-fun b!4210050 () Bool)

(declare-fun res!1729343 () Bool)

(assert (=> b!4210050 (=> (not res!1729343) (not e!2613449))))

(assert (=> b!4210050 (= res!1729343 (matchR!6360 (regex!7742 (rule!10852 (_1!25143 (get!15051 lt!1498950)))) (list!16729 (charsOf!5165 (_1!25143 (get!15051 lt!1498950))))))))

(declare-fun b!4210051 () Bool)

(declare-fun e!2613450 () Option!9930)

(declare-fun call!292958 () Option!9930)

(assert (=> b!4210051 (= e!2613450 call!292958)))

(declare-fun b!4210052 () Bool)

(declare-fun res!1729345 () Bool)

(assert (=> b!4210052 (=> (not res!1729345) (not e!2613449))))

(assert (=> b!4210052 (= res!1729345 (= (++!11816 (list!16729 (charsOf!5165 (_1!25143 (get!15051 lt!1498950)))) (_2!25143 (get!15051 lt!1498950))) input!3517))))

(declare-fun bm!292953 () Bool)

(assert (=> bm!292953 (= call!292958 (maxPrefixOneRule!3332 thiss!26544 (h!51695 (t!347764 rules!3967)) input!3517))))

(declare-fun b!4210053 () Bool)

(assert (=> b!4210053 (= e!2613449 (contains!9561 (t!347764 rules!3967) (rule!10852 (_1!25143 (get!15051 lt!1498950)))))))

(declare-fun b!4210054 () Bool)

(declare-fun e!2613448 () Bool)

(assert (=> b!4210054 (= e!2613448 e!2613449)))

(declare-fun res!1729344 () Bool)

(assert (=> b!4210054 (=> (not res!1729344) (not e!2613449))))

(assert (=> b!4210054 (= res!1729344 (isDefined!7382 lt!1498950))))

(declare-fun d!1241023 () Bool)

(assert (=> d!1241023 e!2613448))

(declare-fun res!1729342 () Bool)

(assert (=> d!1241023 (=> res!1729342 e!2613448)))

(assert (=> d!1241023 (= res!1729342 (isEmpty!27404 lt!1498950))))

(assert (=> d!1241023 (= lt!1498950 e!2613450)))

(declare-fun c!717343 () Bool)

(assert (=> d!1241023 (= c!717343 (and ((_ is Cons!46275) (t!347764 rules!3967)) ((_ is Nil!46275) (t!347764 (t!347764 rules!3967)))))))

(declare-fun lt!1498954 () Unit!65393)

(declare-fun lt!1498951 () Unit!65393)

(assert (=> d!1241023 (= lt!1498954 lt!1498951)))

(assert (=> d!1241023 (isPrefix!4601 input!3517 input!3517)))

(assert (=> d!1241023 (= lt!1498951 (lemmaIsPrefixRefl!3018 input!3517 input!3517))))

(assert (=> d!1241023 (rulesValidInductive!2872 thiss!26544 (t!347764 rules!3967))))

(assert (=> d!1241023 (= (maxPrefix!4377 thiss!26544 (t!347764 rules!3967) input!3517) lt!1498950)))

(declare-fun b!4210055 () Bool)

(declare-fun res!1729346 () Bool)

(assert (=> b!4210055 (=> (not res!1729346) (not e!2613449))))

(assert (=> b!4210055 (= res!1729346 (= (value!241176 (_1!25143 (get!15051 lt!1498950))) (apply!10681 (transformation!7742 (rule!10852 (_1!25143 (get!15051 lt!1498950)))) (seqFromList!5741 (originalCharacters!8124 (_1!25143 (get!15051 lt!1498950)))))))))

(declare-fun b!4210056 () Bool)

(declare-fun lt!1498953 () Option!9930)

(declare-fun lt!1498952 () Option!9930)

(assert (=> b!4210056 (= e!2613450 (ite (and ((_ is None!9929) lt!1498953) ((_ is None!9929) lt!1498952)) None!9929 (ite ((_ is None!9929) lt!1498952) lt!1498953 (ite ((_ is None!9929) lt!1498953) lt!1498952 (ite (>= (size!33992 (_1!25143 (v!40795 lt!1498953))) (size!33992 (_1!25143 (v!40795 lt!1498952)))) lt!1498953 lt!1498952)))))))

(assert (=> b!4210056 (= lt!1498953 call!292958)))

(assert (=> b!4210056 (= lt!1498952 (maxPrefix!4377 thiss!26544 (t!347764 (t!347764 rules!3967)) input!3517))))

(assert (= (and d!1241023 c!717343) b!4210051))

(assert (= (and d!1241023 (not c!717343)) b!4210056))

(assert (= (or b!4210051 b!4210056) bm!292953))

(assert (= (and d!1241023 (not res!1729342)) b!4210054))

(assert (= (and b!4210054 res!1729344) b!4210048))

(assert (= (and b!4210048 res!1729347) b!4210049))

(assert (= (and b!4210049 res!1729341) b!4210052))

(assert (= (and b!4210052 res!1729345) b!4210055))

(assert (= (and b!4210055 res!1729346) b!4210050))

(assert (= (and b!4210050 res!1729343) b!4210053))

(declare-fun m!4798151 () Bool)

(assert (=> b!4210049 m!4798151))

(declare-fun m!4798153 () Bool)

(assert (=> b!4210049 m!4798153))

(assert (=> b!4210049 m!4796935))

(assert (=> b!4210055 m!4798151))

(declare-fun m!4798155 () Bool)

(assert (=> b!4210055 m!4798155))

(assert (=> b!4210055 m!4798155))

(declare-fun m!4798157 () Bool)

(assert (=> b!4210055 m!4798157))

(assert (=> b!4210050 m!4798151))

(declare-fun m!4798159 () Bool)

(assert (=> b!4210050 m!4798159))

(assert (=> b!4210050 m!4798159))

(declare-fun m!4798161 () Bool)

(assert (=> b!4210050 m!4798161))

(assert (=> b!4210050 m!4798161))

(declare-fun m!4798163 () Bool)

(assert (=> b!4210050 m!4798163))

(declare-fun m!4798165 () Bool)

(assert (=> b!4210054 m!4798165))

(declare-fun m!4798167 () Bool)

(assert (=> b!4210056 m!4798167))

(assert (=> b!4210052 m!4798151))

(assert (=> b!4210052 m!4798159))

(assert (=> b!4210052 m!4798159))

(assert (=> b!4210052 m!4798161))

(assert (=> b!4210052 m!4798161))

(declare-fun m!4798169 () Bool)

(assert (=> b!4210052 m!4798169))

(assert (=> b!4210053 m!4798151))

(declare-fun m!4798171 () Bool)

(assert (=> b!4210053 m!4798171))

(declare-fun m!4798173 () Bool)

(assert (=> bm!292953 m!4798173))

(assert (=> b!4210048 m!4798151))

(assert (=> b!4210048 m!4798159))

(assert (=> b!4210048 m!4798159))

(assert (=> b!4210048 m!4798161))

(declare-fun m!4798175 () Bool)

(assert (=> d!1241023 m!4798175))

(assert (=> d!1241023 m!4796907))

(assert (=> d!1241023 m!4796909))

(assert (=> d!1241023 m!4798147))

(assert (=> b!4209244 d!1241023))

(declare-fun d!1241025 () Bool)

(assert (=> d!1241025 (= (inv!17 (value!241176 tBis!41)) (= (charsToBigInt!1 (text!56252 (value!241176 tBis!41))) (value!241168 (value!241176 tBis!41))))))

(declare-fun bs!597437 () Bool)

(assert (= bs!597437 d!1241025))

(declare-fun m!4798177 () Bool)

(assert (=> bs!597437 m!4798177))

(assert (=> b!4209293 d!1241025))

(declare-fun b!4210057 () Bool)

(declare-fun e!2613451 () Bool)

(declare-fun tp!1287041 () Bool)

(assert (=> b!4210057 (= e!2613451 (and tp_is_empty!22261 tp!1287041))))

(assert (=> b!4209347 (= tp!1286898 e!2613451)))

(assert (= (and b!4209347 ((_ is Cons!46273) (t!347762 (originalCharacters!8124 tBis!41)))) b!4210057))

(declare-fun b!4210058 () Bool)

(declare-fun e!2613452 () Bool)

(declare-fun tp!1287042 () Bool)

(assert (=> b!4210058 (= e!2613452 (and tp_is_empty!22261 tp!1287042))))

(assert (=> b!4209354 (= tp!1286906 e!2613452)))

(assert (= (and b!4209354 ((_ is Cons!46273) (t!347762 (t!347762 suffix!1557)))) b!4210058))

(declare-fun b!4210059 () Bool)

(declare-fun e!2613453 () Bool)

(declare-fun tp!1287043 () Bool)

(assert (=> b!4210059 (= e!2613453 (and tp_is_empty!22261 tp!1287043))))

(assert (=> b!4209338 (= tp!1286887 e!2613453)))

(assert (= (and b!4209338 ((_ is Cons!46273) (t!347762 (t!347762 pBis!121)))) b!4210059))

(declare-fun b!4210060 () Bool)

(declare-fun e!2613454 () Bool)

(assert (=> b!4210060 (= e!2613454 tp_is_empty!22261)))

(assert (=> b!4209346 (= tp!1286897 e!2613454)))

(declare-fun b!4210061 () Bool)

(declare-fun tp!1287046 () Bool)

(declare-fun tp!1287045 () Bool)

(assert (=> b!4210061 (= e!2613454 (and tp!1287046 tp!1287045))))

(declare-fun b!4210063 () Bool)

(declare-fun tp!1287048 () Bool)

(declare-fun tp!1287044 () Bool)

(assert (=> b!4210063 (= e!2613454 (and tp!1287048 tp!1287044))))

(declare-fun b!4210062 () Bool)

(declare-fun tp!1287047 () Bool)

(assert (=> b!4210062 (= e!2613454 tp!1287047)))

(assert (= (and b!4209346 ((_ is ElementMatch!12647) (regOne!25807 (regex!7742 (rule!10852 t!8364))))) b!4210060))

(assert (= (and b!4209346 ((_ is Concat!20620) (regOne!25807 (regex!7742 (rule!10852 t!8364))))) b!4210061))

(assert (= (and b!4209346 ((_ is Star!12647) (regOne!25807 (regex!7742 (rule!10852 t!8364))))) b!4210062))

(assert (= (and b!4209346 ((_ is Union!12647) (regOne!25807 (regex!7742 (rule!10852 t!8364))))) b!4210063))

(declare-fun b!4210064 () Bool)

(declare-fun e!2613455 () Bool)

(assert (=> b!4210064 (= e!2613455 tp_is_empty!22261)))

(assert (=> b!4209346 (= tp!1286893 e!2613455)))

(declare-fun b!4210065 () Bool)

(declare-fun tp!1287051 () Bool)

(declare-fun tp!1287050 () Bool)

(assert (=> b!4210065 (= e!2613455 (and tp!1287051 tp!1287050))))

(declare-fun b!4210067 () Bool)

(declare-fun tp!1287053 () Bool)

(declare-fun tp!1287049 () Bool)

(assert (=> b!4210067 (= e!2613455 (and tp!1287053 tp!1287049))))

(declare-fun b!4210066 () Bool)

(declare-fun tp!1287052 () Bool)

(assert (=> b!4210066 (= e!2613455 tp!1287052)))

(assert (= (and b!4209346 ((_ is ElementMatch!12647) (regTwo!25807 (regex!7742 (rule!10852 t!8364))))) b!4210064))

(assert (= (and b!4209346 ((_ is Concat!20620) (regTwo!25807 (regex!7742 (rule!10852 t!8364))))) b!4210065))

(assert (= (and b!4209346 ((_ is Star!12647) (regTwo!25807 (regex!7742 (rule!10852 t!8364))))) b!4210066))

(assert (= (and b!4209346 ((_ is Union!12647) (regTwo!25807 (regex!7742 (rule!10852 t!8364))))) b!4210067))

(declare-fun b!4210068 () Bool)

(declare-fun e!2613456 () Bool)

(assert (=> b!4210068 (= e!2613456 tp_is_empty!22261)))

(assert (=> b!4209344 (= tp!1286895 e!2613456)))

(declare-fun b!4210069 () Bool)

(declare-fun tp!1287056 () Bool)

(declare-fun tp!1287055 () Bool)

(assert (=> b!4210069 (= e!2613456 (and tp!1287056 tp!1287055))))

(declare-fun b!4210071 () Bool)

(declare-fun tp!1287058 () Bool)

(declare-fun tp!1287054 () Bool)

(assert (=> b!4210071 (= e!2613456 (and tp!1287058 tp!1287054))))

(declare-fun b!4210070 () Bool)

(declare-fun tp!1287057 () Bool)

(assert (=> b!4210070 (= e!2613456 tp!1287057)))

(assert (= (and b!4209344 ((_ is ElementMatch!12647) (regOne!25806 (regex!7742 (rule!10852 t!8364))))) b!4210068))

(assert (= (and b!4209344 ((_ is Concat!20620) (regOne!25806 (regex!7742 (rule!10852 t!8364))))) b!4210069))

(assert (= (and b!4209344 ((_ is Star!12647) (regOne!25806 (regex!7742 (rule!10852 t!8364))))) b!4210070))

(assert (= (and b!4209344 ((_ is Union!12647) (regOne!25806 (regex!7742 (rule!10852 t!8364))))) b!4210071))

(declare-fun b!4210072 () Bool)

(declare-fun e!2613457 () Bool)

(assert (=> b!4210072 (= e!2613457 tp_is_empty!22261)))

(assert (=> b!4209344 (= tp!1286894 e!2613457)))

(declare-fun b!4210073 () Bool)

(declare-fun tp!1287061 () Bool)

(declare-fun tp!1287060 () Bool)

(assert (=> b!4210073 (= e!2613457 (and tp!1287061 tp!1287060))))

(declare-fun b!4210075 () Bool)

(declare-fun tp!1287063 () Bool)

(declare-fun tp!1287059 () Bool)

(assert (=> b!4210075 (= e!2613457 (and tp!1287063 tp!1287059))))

(declare-fun b!4210074 () Bool)

(declare-fun tp!1287062 () Bool)

(assert (=> b!4210074 (= e!2613457 tp!1287062)))

(assert (= (and b!4209344 ((_ is ElementMatch!12647) (regTwo!25806 (regex!7742 (rule!10852 t!8364))))) b!4210072))

(assert (= (and b!4209344 ((_ is Concat!20620) (regTwo!25806 (regex!7742 (rule!10852 t!8364))))) b!4210073))

(assert (= (and b!4209344 ((_ is Star!12647) (regTwo!25806 (regex!7742 (rule!10852 t!8364))))) b!4210074))

(assert (= (and b!4209344 ((_ is Union!12647) (regTwo!25806 (regex!7742 (rule!10852 t!8364))))) b!4210075))

(declare-fun b!4210076 () Bool)

(declare-fun e!2613458 () Bool)

(declare-fun tp!1287064 () Bool)

(assert (=> b!4210076 (= e!2613458 (and tp_is_empty!22261 tp!1287064))))

(assert (=> b!4209311 (= tp!1286858 e!2613458)))

(assert (= (and b!4209311 ((_ is Cons!46273) (t!347762 (t!347762 suffixBis!41)))) b!4210076))

(declare-fun b!4210077 () Bool)

(declare-fun e!2613459 () Bool)

(assert (=> b!4210077 (= e!2613459 tp_is_empty!22261)))

(assert (=> b!4209345 (= tp!1286896 e!2613459)))

(declare-fun b!4210078 () Bool)

(declare-fun tp!1287067 () Bool)

(declare-fun tp!1287066 () Bool)

(assert (=> b!4210078 (= e!2613459 (and tp!1287067 tp!1287066))))

(declare-fun b!4210080 () Bool)

(declare-fun tp!1287069 () Bool)

(declare-fun tp!1287065 () Bool)

(assert (=> b!4210080 (= e!2613459 (and tp!1287069 tp!1287065))))

(declare-fun b!4210079 () Bool)

(declare-fun tp!1287068 () Bool)

(assert (=> b!4210079 (= e!2613459 tp!1287068)))

(assert (= (and b!4209345 ((_ is ElementMatch!12647) (reg!12976 (regex!7742 (rule!10852 t!8364))))) b!4210077))

(assert (= (and b!4209345 ((_ is Concat!20620) (reg!12976 (regex!7742 (rule!10852 t!8364))))) b!4210078))

(assert (= (and b!4209345 ((_ is Star!12647) (reg!12976 (regex!7742 (rule!10852 t!8364))))) b!4210079))

(assert (= (and b!4209345 ((_ is Union!12647) (reg!12976 (regex!7742 (rule!10852 t!8364))))) b!4210080))

(declare-fun b!4210081 () Bool)

(declare-fun e!2613460 () Bool)

(declare-fun tp!1287070 () Bool)

(assert (=> b!4210081 (= e!2613460 (and tp_is_empty!22261 tp!1287070))))

(assert (=> b!4209348 (= tp!1286899 e!2613460)))

(assert (= (and b!4209348 ((_ is Cons!46273) (t!347762 (originalCharacters!8124 t!8364)))) b!4210081))

(declare-fun tp!1287079 () Bool)

(declare-fun tp!1287078 () Bool)

(declare-fun b!4210090 () Bool)

(declare-fun e!2613465 () Bool)

(assert (=> b!4210090 (= e!2613465 (and (inv!60881 (left!34451 (c!717139 (dynLambda!19956 (toChars!10317 (transformation!7742 (rule!10852 tBis!41))) (value!241176 tBis!41))))) tp!1287079 (inv!60881 (right!34781 (c!717139 (dynLambda!19956 (toChars!10317 (transformation!7742 (rule!10852 tBis!41))) (value!241176 tBis!41))))) tp!1287078))))

(declare-fun b!4210092 () Bool)

(declare-fun e!2613466 () Bool)

(declare-fun tp!1287077 () Bool)

(assert (=> b!4210092 (= e!2613466 tp!1287077)))

(declare-fun b!4210091 () Bool)

(declare-fun inv!60888 (IArray!27911) Bool)

(assert (=> b!4210091 (= e!2613465 (and (inv!60888 (xs!17259 (c!717139 (dynLambda!19956 (toChars!10317 (transformation!7742 (rule!10852 tBis!41))) (value!241176 tBis!41))))) e!2613466))))

(assert (=> b!4209255 (= tp!1286854 (and (inv!60881 (c!717139 (dynLambda!19956 (toChars!10317 (transformation!7742 (rule!10852 tBis!41))) (value!241176 tBis!41)))) e!2613465))))

(assert (= (and b!4209255 ((_ is Node!13953) (c!717139 (dynLambda!19956 (toChars!10317 (transformation!7742 (rule!10852 tBis!41))) (value!241176 tBis!41))))) b!4210090))

(assert (= b!4210091 b!4210092))

(assert (= (and b!4209255 ((_ is Leaf!21568) (c!717139 (dynLambda!19956 (toChars!10317 (transformation!7742 (rule!10852 tBis!41))) (value!241176 tBis!41))))) b!4210091))

(declare-fun m!4798179 () Bool)

(assert (=> b!4210090 m!4798179))

(declare-fun m!4798181 () Bool)

(assert (=> b!4210090 m!4798181))

(declare-fun m!4798183 () Bool)

(assert (=> b!4210091 m!4798183))

(assert (=> b!4209255 m!4797237))

(declare-fun b!4210093 () Bool)

(declare-fun e!2613467 () Bool)

(assert (=> b!4210093 (= e!2613467 tp_is_empty!22261)))

(assert (=> b!4209324 (= tp!1286872 e!2613467)))

(declare-fun b!4210094 () Bool)

(declare-fun tp!1287082 () Bool)

(declare-fun tp!1287081 () Bool)

(assert (=> b!4210094 (= e!2613467 (and tp!1287082 tp!1287081))))

(declare-fun b!4210096 () Bool)

(declare-fun tp!1287084 () Bool)

(declare-fun tp!1287080 () Bool)

(assert (=> b!4210096 (= e!2613467 (and tp!1287084 tp!1287080))))

(declare-fun b!4210095 () Bool)

(declare-fun tp!1287083 () Bool)

(assert (=> b!4210095 (= e!2613467 tp!1287083)))

(assert (= (and b!4209324 ((_ is ElementMatch!12647) (reg!12976 (regex!7742 (h!51695 rules!3967))))) b!4210093))

(assert (= (and b!4209324 ((_ is Concat!20620) (reg!12976 (regex!7742 (h!51695 rules!3967))))) b!4210094))

(assert (= (and b!4209324 ((_ is Star!12647) (reg!12976 (regex!7742 (h!51695 rules!3967))))) b!4210095))

(assert (= (and b!4209324 ((_ is Union!12647) (reg!12976 (regex!7742 (h!51695 rules!3967))))) b!4210096))

(declare-fun b!4210097 () Bool)

(declare-fun e!2613468 () Bool)

(assert (=> b!4210097 (= e!2613468 tp_is_empty!22261)))

(assert (=> b!4209325 (= tp!1286873 e!2613468)))

(declare-fun b!4210098 () Bool)

(declare-fun tp!1287087 () Bool)

(declare-fun tp!1287086 () Bool)

(assert (=> b!4210098 (= e!2613468 (and tp!1287087 tp!1287086))))

(declare-fun b!4210100 () Bool)

(declare-fun tp!1287089 () Bool)

(declare-fun tp!1287085 () Bool)

(assert (=> b!4210100 (= e!2613468 (and tp!1287089 tp!1287085))))

(declare-fun b!4210099 () Bool)

(declare-fun tp!1287088 () Bool)

(assert (=> b!4210099 (= e!2613468 tp!1287088)))

(assert (= (and b!4209325 ((_ is ElementMatch!12647) (regOne!25807 (regex!7742 (h!51695 rules!3967))))) b!4210097))

(assert (= (and b!4209325 ((_ is Concat!20620) (regOne!25807 (regex!7742 (h!51695 rules!3967))))) b!4210098))

(assert (= (and b!4209325 ((_ is Star!12647) (regOne!25807 (regex!7742 (h!51695 rules!3967))))) b!4210099))

(assert (= (and b!4209325 ((_ is Union!12647) (regOne!25807 (regex!7742 (h!51695 rules!3967))))) b!4210100))

(declare-fun b!4210101 () Bool)

(declare-fun e!2613469 () Bool)

(assert (=> b!4210101 (= e!2613469 tp_is_empty!22261)))

(assert (=> b!4209325 (= tp!1286869 e!2613469)))

(declare-fun b!4210102 () Bool)

(declare-fun tp!1287092 () Bool)

(declare-fun tp!1287091 () Bool)

(assert (=> b!4210102 (= e!2613469 (and tp!1287092 tp!1287091))))

(declare-fun b!4210104 () Bool)

(declare-fun tp!1287094 () Bool)

(declare-fun tp!1287090 () Bool)

(assert (=> b!4210104 (= e!2613469 (and tp!1287094 tp!1287090))))

(declare-fun b!4210103 () Bool)

(declare-fun tp!1287093 () Bool)

(assert (=> b!4210103 (= e!2613469 tp!1287093)))

(assert (= (and b!4209325 ((_ is ElementMatch!12647) (regTwo!25807 (regex!7742 (h!51695 rules!3967))))) b!4210101))

(assert (= (and b!4209325 ((_ is Concat!20620) (regTwo!25807 (regex!7742 (h!51695 rules!3967))))) b!4210102))

(assert (= (and b!4209325 ((_ is Star!12647) (regTwo!25807 (regex!7742 (h!51695 rules!3967))))) b!4210103))

(assert (= (and b!4209325 ((_ is Union!12647) (regTwo!25807 (regex!7742 (h!51695 rules!3967))))) b!4210104))

(declare-fun b!4210105 () Bool)

(declare-fun e!2613470 () Bool)

(assert (=> b!4210105 (= e!2613470 tp_is_empty!22261)))

(assert (=> b!4209323 (= tp!1286871 e!2613470)))

(declare-fun b!4210106 () Bool)

(declare-fun tp!1287097 () Bool)

(declare-fun tp!1287096 () Bool)

(assert (=> b!4210106 (= e!2613470 (and tp!1287097 tp!1287096))))

(declare-fun b!4210108 () Bool)

(declare-fun tp!1287099 () Bool)

(declare-fun tp!1287095 () Bool)

(assert (=> b!4210108 (= e!2613470 (and tp!1287099 tp!1287095))))

(declare-fun b!4210107 () Bool)

(declare-fun tp!1287098 () Bool)

(assert (=> b!4210107 (= e!2613470 tp!1287098)))

(assert (= (and b!4209323 ((_ is ElementMatch!12647) (regOne!25806 (regex!7742 (h!51695 rules!3967))))) b!4210105))

(assert (= (and b!4209323 ((_ is Concat!20620) (regOne!25806 (regex!7742 (h!51695 rules!3967))))) b!4210106))

(assert (= (and b!4209323 ((_ is Star!12647) (regOne!25806 (regex!7742 (h!51695 rules!3967))))) b!4210107))

(assert (= (and b!4209323 ((_ is Union!12647) (regOne!25806 (regex!7742 (h!51695 rules!3967))))) b!4210108))

(declare-fun b!4210109 () Bool)

(declare-fun e!2613471 () Bool)

(assert (=> b!4210109 (= e!2613471 tp_is_empty!22261)))

(assert (=> b!4209323 (= tp!1286870 e!2613471)))

(declare-fun b!4210110 () Bool)

(declare-fun tp!1287102 () Bool)

(declare-fun tp!1287101 () Bool)

(assert (=> b!4210110 (= e!2613471 (and tp!1287102 tp!1287101))))

(declare-fun b!4210112 () Bool)

(declare-fun tp!1287104 () Bool)

(declare-fun tp!1287100 () Bool)

(assert (=> b!4210112 (= e!2613471 (and tp!1287104 tp!1287100))))

(declare-fun b!4210111 () Bool)

(declare-fun tp!1287103 () Bool)

(assert (=> b!4210111 (= e!2613471 tp!1287103)))

(assert (= (and b!4209323 ((_ is ElementMatch!12647) (regTwo!25806 (regex!7742 (h!51695 rules!3967))))) b!4210109))

(assert (= (and b!4209323 ((_ is Concat!20620) (regTwo!25806 (regex!7742 (h!51695 rules!3967))))) b!4210110))

(assert (= (and b!4209323 ((_ is Star!12647) (regTwo!25806 (regex!7742 (h!51695 rules!3967))))) b!4210111))

(assert (= (and b!4209323 ((_ is Union!12647) (regTwo!25806 (regex!7742 (h!51695 rules!3967))))) b!4210112))

(declare-fun b!4210113 () Bool)

(declare-fun e!2613472 () Bool)

(assert (=> b!4210113 (= e!2613472 tp_is_empty!22261)))

(assert (=> b!4209342 (= tp!1286892 e!2613472)))

(declare-fun b!4210114 () Bool)

(declare-fun tp!1287107 () Bool)

(declare-fun tp!1287106 () Bool)

(assert (=> b!4210114 (= e!2613472 (and tp!1287107 tp!1287106))))

(declare-fun b!4210116 () Bool)

(declare-fun tp!1287109 () Bool)

(declare-fun tp!1287105 () Bool)

(assert (=> b!4210116 (= e!2613472 (and tp!1287109 tp!1287105))))

(declare-fun b!4210115 () Bool)

(declare-fun tp!1287108 () Bool)

(assert (=> b!4210115 (= e!2613472 tp!1287108)))

(assert (= (and b!4209342 ((_ is ElementMatch!12647) (regOne!25807 (regex!7742 (rule!10852 tBis!41))))) b!4210113))

(assert (= (and b!4209342 ((_ is Concat!20620) (regOne!25807 (regex!7742 (rule!10852 tBis!41))))) b!4210114))

(assert (= (and b!4209342 ((_ is Star!12647) (regOne!25807 (regex!7742 (rule!10852 tBis!41))))) b!4210115))

(assert (= (and b!4209342 ((_ is Union!12647) (regOne!25807 (regex!7742 (rule!10852 tBis!41))))) b!4210116))

(declare-fun b!4210117 () Bool)

(declare-fun e!2613473 () Bool)

(assert (=> b!4210117 (= e!2613473 tp_is_empty!22261)))

(assert (=> b!4209342 (= tp!1286888 e!2613473)))

(declare-fun b!4210118 () Bool)

(declare-fun tp!1287112 () Bool)

(declare-fun tp!1287111 () Bool)

(assert (=> b!4210118 (= e!2613473 (and tp!1287112 tp!1287111))))

(declare-fun b!4210120 () Bool)

(declare-fun tp!1287114 () Bool)

(declare-fun tp!1287110 () Bool)

(assert (=> b!4210120 (= e!2613473 (and tp!1287114 tp!1287110))))

(declare-fun b!4210119 () Bool)

(declare-fun tp!1287113 () Bool)

(assert (=> b!4210119 (= e!2613473 tp!1287113)))

(assert (= (and b!4209342 ((_ is ElementMatch!12647) (regTwo!25807 (regex!7742 (rule!10852 tBis!41))))) b!4210117))

(assert (= (and b!4209342 ((_ is Concat!20620) (regTwo!25807 (regex!7742 (rule!10852 tBis!41))))) b!4210118))

(assert (= (and b!4209342 ((_ is Star!12647) (regTwo!25807 (regex!7742 (rule!10852 tBis!41))))) b!4210119))

(assert (= (and b!4209342 ((_ is Union!12647) (regTwo!25807 (regex!7742 (rule!10852 tBis!41))))) b!4210120))

(declare-fun b!4210121 () Bool)

(declare-fun e!2613474 () Bool)

(assert (=> b!4210121 (= e!2613474 tp_is_empty!22261)))

(assert (=> b!4209336 (= tp!1286884 e!2613474)))

(declare-fun b!4210122 () Bool)

(declare-fun tp!1287117 () Bool)

(declare-fun tp!1287116 () Bool)

(assert (=> b!4210122 (= e!2613474 (and tp!1287117 tp!1287116))))

(declare-fun b!4210124 () Bool)

(declare-fun tp!1287119 () Bool)

(declare-fun tp!1287115 () Bool)

(assert (=> b!4210124 (= e!2613474 (and tp!1287119 tp!1287115))))

(declare-fun b!4210123 () Bool)

(declare-fun tp!1287118 () Bool)

(assert (=> b!4210123 (= e!2613474 tp!1287118)))

(assert (= (and b!4209336 ((_ is ElementMatch!12647) (regex!7742 (h!51695 (t!347764 rules!3967))))) b!4210121))

(assert (= (and b!4209336 ((_ is Concat!20620) (regex!7742 (h!51695 (t!347764 rules!3967))))) b!4210122))

(assert (= (and b!4209336 ((_ is Star!12647) (regex!7742 (h!51695 (t!347764 rules!3967))))) b!4210123))

(assert (= (and b!4209336 ((_ is Union!12647) (regex!7742 (h!51695 (t!347764 rules!3967))))) b!4210124))

(declare-fun b!4210125 () Bool)

(declare-fun e!2613475 () Bool)

(assert (=> b!4210125 (= e!2613475 tp_is_empty!22261)))

(assert (=> b!4209341 (= tp!1286891 e!2613475)))

(declare-fun b!4210126 () Bool)

(declare-fun tp!1287122 () Bool)

(declare-fun tp!1287121 () Bool)

(assert (=> b!4210126 (= e!2613475 (and tp!1287122 tp!1287121))))

(declare-fun b!4210128 () Bool)

(declare-fun tp!1287124 () Bool)

(declare-fun tp!1287120 () Bool)

(assert (=> b!4210128 (= e!2613475 (and tp!1287124 tp!1287120))))

(declare-fun b!4210127 () Bool)

(declare-fun tp!1287123 () Bool)

(assert (=> b!4210127 (= e!2613475 tp!1287123)))

(assert (= (and b!4209341 ((_ is ElementMatch!12647) (reg!12976 (regex!7742 (rule!10852 tBis!41))))) b!4210125))

(assert (= (and b!4209341 ((_ is Concat!20620) (reg!12976 (regex!7742 (rule!10852 tBis!41))))) b!4210126))

(assert (= (and b!4209341 ((_ is Star!12647) (reg!12976 (regex!7742 (rule!10852 tBis!41))))) b!4210127))

(assert (= (and b!4209341 ((_ is Union!12647) (reg!12976 (regex!7742 (rule!10852 tBis!41))))) b!4210128))

(declare-fun b!4210131 () Bool)

(declare-fun b_free!123151 () Bool)

(declare-fun b_next!123855 () Bool)

(assert (=> b!4210131 (= b_free!123151 (not b_next!123855))))

(declare-fun tb!252743 () Bool)

(declare-fun t!347946 () Bool)

(assert (=> (and b!4210131 (= (toValue!10458 (transformation!7742 (h!51695 (t!347764 (t!347764 rules!3967))))) (toValue!10458 (transformation!7742 (rule!10852 (_1!25143 (get!15051 lt!1498617)))))) t!347946) tb!252743))

(declare-fun result!308024 () Bool)

(assert (= result!308024 result!307970))

(assert (=> d!1240905 t!347946))

(declare-fun tb!252745 () Bool)

(declare-fun t!347948 () Bool)

(assert (=> (and b!4210131 (= (toValue!10458 (transformation!7742 (h!51695 (t!347764 (t!347764 rules!3967))))) (toValue!10458 (transformation!7742 (rule!10852 (_1!25143 (get!15051 lt!1498572)))))) t!347948) tb!252745))

(declare-fun result!308026 () Bool)

(assert (= result!308026 result!307992))

(assert (=> d!1240957 t!347948))

(declare-fun t!347950 () Bool)

(declare-fun tb!252747 () Bool)

(assert (=> (and b!4210131 (= (toValue!10458 (transformation!7742 (h!51695 (t!347764 (t!347764 rules!3967))))) (toValue!10458 (transformation!7742 rBis!178))) t!347950) tb!252747))

(declare-fun result!308028 () Bool)

(assert (= result!308028 result!308002))

(assert (=> d!1240987 t!347950))

(assert (=> d!1240989 t!347950))

(declare-fun tp!1287127 () Bool)

(declare-fun b_and!331265 () Bool)

(assert (=> b!4210131 (= tp!1287127 (and (=> t!347946 result!308024) (=> t!347948 result!308026) (=> t!347950 result!308028) b_and!331265))))

(declare-fun b_free!123153 () Bool)

(declare-fun b_next!123857 () Bool)

(assert (=> b!4210131 (= b_free!123153 (not b_next!123857))))

(declare-fun t!347952 () Bool)

(declare-fun tb!252749 () Bool)

(assert (=> (and b!4210131 (= (toChars!10317 (transformation!7742 (h!51695 (t!347764 (t!347764 rules!3967))))) (toChars!10317 (transformation!7742 (rule!10852 (_1!25143 (get!15051 lt!1498617)))))) t!347952) tb!252749))

(declare-fun result!308030 () Bool)

(assert (= result!308030 result!307982))

(assert (=> d!1240923 t!347952))

(declare-fun t!347954 () Bool)

(declare-fun tb!252751 () Bool)

(assert (=> (and b!4210131 (= (toChars!10317 (transformation!7742 (h!51695 (t!347764 (t!347764 rules!3967))))) (toChars!10317 (transformation!7742 (rule!10852 tBis!41)))) t!347954) tb!252751))

(declare-fun result!308032 () Bool)

(assert (= result!308032 result!307852))

(assert (=> d!1240639 t!347954))

(declare-fun tb!252753 () Bool)

(declare-fun t!347956 () Bool)

(assert (=> (and b!4210131 (= (toChars!10317 (transformation!7742 (h!51695 (t!347764 (t!347764 rules!3967))))) (toChars!10317 (transformation!7742 (rule!10852 (_1!25143 (get!15051 lt!1498572)))))) t!347956) tb!252753))

(declare-fun result!308034 () Bool)

(assert (= result!308034 result!307890))

(assert (=> d!1240695 t!347956))

(declare-fun tb!252755 () Bool)

(declare-fun t!347958 () Bool)

(assert (=> (and b!4210131 (= (toChars!10317 (transformation!7742 (h!51695 (t!347764 (t!347764 rules!3967))))) (toChars!10317 (transformation!7742 (rule!10852 t!8364)))) t!347958) tb!252755))

(declare-fun result!308036 () Bool)

(assert (= result!308036 result!307862))

(assert (=> b!4209256 t!347958))

(declare-fun tb!252757 () Bool)

(declare-fun t!347960 () Bool)

(assert (=> (and b!4210131 (= (toChars!10317 (transformation!7742 (h!51695 (t!347764 (t!347764 rules!3967))))) (toChars!10317 (transformation!7742 rBis!178))) t!347960) tb!252757))

(declare-fun result!308038 () Bool)

(assert (= result!308038 result!308012))

(assert (=> d!1240989 t!347960))

(assert (=> b!4209249 t!347954))

(declare-fun tp!1287128 () Bool)

(declare-fun b_and!331267 () Bool)

(assert (=> b!4210131 (= tp!1287128 (and (=> t!347958 result!308036) (=> t!347952 result!308030) (=> t!347954 result!308032) (=> t!347956 result!308034) (=> t!347960 result!308038) b_and!331267))))

(declare-fun e!2613479 () Bool)

(assert (=> b!4210131 (= e!2613479 (and tp!1287127 tp!1287128))))

(declare-fun tp!1287126 () Bool)

(declare-fun e!2613476 () Bool)

(declare-fun b!4210130 () Bool)

(assert (=> b!4210130 (= e!2613476 (and tp!1287126 (inv!60874 (tag!8606 (h!51695 (t!347764 (t!347764 rules!3967))))) (inv!60877 (transformation!7742 (h!51695 (t!347764 (t!347764 rules!3967))))) e!2613479))))

(declare-fun b!4210129 () Bool)

(declare-fun e!2613477 () Bool)

(declare-fun tp!1287125 () Bool)

(assert (=> b!4210129 (= e!2613477 (and e!2613476 tp!1287125))))

(assert (=> b!4209335 (= tp!1286883 e!2613477)))

(assert (= b!4210130 b!4210131))

(assert (= b!4210129 b!4210130))

(assert (= (and b!4209335 ((_ is Cons!46275) (t!347764 (t!347764 rules!3967)))) b!4210129))

(declare-fun m!4798185 () Bool)

(assert (=> b!4210130 m!4798185))

(declare-fun m!4798187 () Bool)

(assert (=> b!4210130 m!4798187))

(declare-fun b!4210132 () Bool)

(declare-fun e!2613480 () Bool)

(assert (=> b!4210132 (= e!2613480 tp_is_empty!22261)))

(assert (=> b!4209340 (= tp!1286890 e!2613480)))

(declare-fun b!4210133 () Bool)

(declare-fun tp!1287131 () Bool)

(declare-fun tp!1287130 () Bool)

(assert (=> b!4210133 (= e!2613480 (and tp!1287131 tp!1287130))))

(declare-fun b!4210135 () Bool)

(declare-fun tp!1287133 () Bool)

(declare-fun tp!1287129 () Bool)

(assert (=> b!4210135 (= e!2613480 (and tp!1287133 tp!1287129))))

(declare-fun b!4210134 () Bool)

(declare-fun tp!1287132 () Bool)

(assert (=> b!4210134 (= e!2613480 tp!1287132)))

(assert (= (and b!4209340 ((_ is ElementMatch!12647) (regOne!25806 (regex!7742 (rule!10852 tBis!41))))) b!4210132))

(assert (= (and b!4209340 ((_ is Concat!20620) (regOne!25806 (regex!7742 (rule!10852 tBis!41))))) b!4210133))

(assert (= (and b!4209340 ((_ is Star!12647) (regOne!25806 (regex!7742 (rule!10852 tBis!41))))) b!4210134))

(assert (= (and b!4209340 ((_ is Union!12647) (regOne!25806 (regex!7742 (rule!10852 tBis!41))))) b!4210135))

(declare-fun b!4210136 () Bool)

(declare-fun e!2613481 () Bool)

(assert (=> b!4210136 (= e!2613481 tp_is_empty!22261)))

(assert (=> b!4209340 (= tp!1286889 e!2613481)))

(declare-fun b!4210137 () Bool)

(declare-fun tp!1287136 () Bool)

(declare-fun tp!1287135 () Bool)

(assert (=> b!4210137 (= e!2613481 (and tp!1287136 tp!1287135))))

(declare-fun b!4210139 () Bool)

(declare-fun tp!1287138 () Bool)

(declare-fun tp!1287134 () Bool)

(assert (=> b!4210139 (= e!2613481 (and tp!1287138 tp!1287134))))

(declare-fun b!4210138 () Bool)

(declare-fun tp!1287137 () Bool)

(assert (=> b!4210138 (= e!2613481 tp!1287137)))

(assert (= (and b!4209340 ((_ is ElementMatch!12647) (regTwo!25806 (regex!7742 (rule!10852 tBis!41))))) b!4210136))

(assert (= (and b!4209340 ((_ is Concat!20620) (regTwo!25806 (regex!7742 (rule!10852 tBis!41))))) b!4210137))

(assert (= (and b!4209340 ((_ is Star!12647) (regTwo!25806 (regex!7742 (rule!10852 tBis!41))))) b!4210138))

(assert (= (and b!4209340 ((_ is Union!12647) (regTwo!25806 (regex!7742 (rule!10852 tBis!41))))) b!4210139))

(declare-fun b!4210140 () Bool)

(declare-fun e!2613482 () Bool)

(declare-fun tp!1287139 () Bool)

(assert (=> b!4210140 (= e!2613482 (and tp_is_empty!22261 tp!1287139))))

(assert (=> b!4209353 (= tp!1286905 e!2613482)))

(assert (= (and b!4209353 ((_ is Cons!46273) (t!347762 (t!347762 p!3001)))) b!4210140))

(declare-fun tp!1287141 () Bool)

(declare-fun b!4210141 () Bool)

(declare-fun e!2613483 () Bool)

(declare-fun tp!1287142 () Bool)

(assert (=> b!4210141 (= e!2613483 (and (inv!60881 (left!34451 (c!717139 (dynLambda!19956 (toChars!10317 (transformation!7742 (rule!10852 t!8364))) (value!241176 t!8364))))) tp!1287142 (inv!60881 (right!34781 (c!717139 (dynLambda!19956 (toChars!10317 (transformation!7742 (rule!10852 t!8364))) (value!241176 t!8364))))) tp!1287141))))

(declare-fun b!4210143 () Bool)

(declare-fun e!2613484 () Bool)

(declare-fun tp!1287140 () Bool)

(assert (=> b!4210143 (= e!2613484 tp!1287140)))

(declare-fun b!4210142 () Bool)

(assert (=> b!4210142 (= e!2613483 (and (inv!60888 (xs!17259 (c!717139 (dynLambda!19956 (toChars!10317 (transformation!7742 (rule!10852 t!8364))) (value!241176 t!8364))))) e!2613484))))

(assert (=> b!4209258 (= tp!1286855 (and (inv!60881 (c!717139 (dynLambda!19956 (toChars!10317 (transformation!7742 (rule!10852 t!8364))) (value!241176 t!8364)))) e!2613483))))

(assert (= (and b!4209258 ((_ is Node!13953) (c!717139 (dynLambda!19956 (toChars!10317 (transformation!7742 (rule!10852 t!8364))) (value!241176 t!8364))))) b!4210141))

(assert (= b!4210142 b!4210143))

(assert (= (and b!4209258 ((_ is Leaf!21568) (c!717139 (dynLambda!19956 (toChars!10317 (transformation!7742 (rule!10852 t!8364))) (value!241176 t!8364))))) b!4210142))

(declare-fun m!4798189 () Bool)

(assert (=> b!4210141 m!4798189))

(declare-fun m!4798191 () Bool)

(assert (=> b!4210141 m!4798191))

(declare-fun m!4798193 () Bool)

(assert (=> b!4210142 m!4798193))

(assert (=> b!4209258 m!4797249))

(declare-fun b!4210144 () Bool)

(declare-fun e!2613485 () Bool)

(declare-fun tp!1287143 () Bool)

(assert (=> b!4210144 (= e!2613485 (and tp_is_empty!22261 tp!1287143))))

(assert (=> b!4209326 (= tp!1286874 e!2613485)))

(assert (= (and b!4209326 ((_ is Cons!46273) (t!347762 (t!347762 input!3517)))) b!4210144))

(declare-fun b!4210145 () Bool)

(declare-fun e!2613486 () Bool)

(assert (=> b!4210145 (= e!2613486 tp_is_empty!22261)))

(assert (=> b!4209352 (= tp!1286904 e!2613486)))

(declare-fun b!4210146 () Bool)

(declare-fun tp!1287146 () Bool)

(declare-fun tp!1287145 () Bool)

(assert (=> b!4210146 (= e!2613486 (and tp!1287146 tp!1287145))))

(declare-fun b!4210148 () Bool)

(declare-fun tp!1287148 () Bool)

(declare-fun tp!1287144 () Bool)

(assert (=> b!4210148 (= e!2613486 (and tp!1287148 tp!1287144))))

(declare-fun b!4210147 () Bool)

(declare-fun tp!1287147 () Bool)

(assert (=> b!4210147 (= e!2613486 tp!1287147)))

(assert (= (and b!4209352 ((_ is ElementMatch!12647) (regOne!25807 (regex!7742 rBis!178)))) b!4210145))

(assert (= (and b!4209352 ((_ is Concat!20620) (regOne!25807 (regex!7742 rBis!178)))) b!4210146))

(assert (= (and b!4209352 ((_ is Star!12647) (regOne!25807 (regex!7742 rBis!178)))) b!4210147))

(assert (= (and b!4209352 ((_ is Union!12647) (regOne!25807 (regex!7742 rBis!178)))) b!4210148))

(declare-fun b!4210149 () Bool)

(declare-fun e!2613487 () Bool)

(assert (=> b!4210149 (= e!2613487 tp_is_empty!22261)))

(assert (=> b!4209352 (= tp!1286900 e!2613487)))

(declare-fun b!4210150 () Bool)

(declare-fun tp!1287151 () Bool)

(declare-fun tp!1287150 () Bool)

(assert (=> b!4210150 (= e!2613487 (and tp!1287151 tp!1287150))))

(declare-fun b!4210152 () Bool)

(declare-fun tp!1287153 () Bool)

(declare-fun tp!1287149 () Bool)

(assert (=> b!4210152 (= e!2613487 (and tp!1287153 tp!1287149))))

(declare-fun b!4210151 () Bool)

(declare-fun tp!1287152 () Bool)

(assert (=> b!4210151 (= e!2613487 tp!1287152)))

(assert (= (and b!4209352 ((_ is ElementMatch!12647) (regTwo!25807 (regex!7742 rBis!178)))) b!4210149))

(assert (= (and b!4209352 ((_ is Concat!20620) (regTwo!25807 (regex!7742 rBis!178)))) b!4210150))

(assert (= (and b!4209352 ((_ is Star!12647) (regTwo!25807 (regex!7742 rBis!178)))) b!4210151))

(assert (= (and b!4209352 ((_ is Union!12647) (regTwo!25807 (regex!7742 rBis!178)))) b!4210152))

(declare-fun b!4210153 () Bool)

(declare-fun e!2613488 () Bool)

(assert (=> b!4210153 (= e!2613488 tp_is_empty!22261)))

(assert (=> b!4209350 (= tp!1286902 e!2613488)))

(declare-fun b!4210154 () Bool)

(declare-fun tp!1287156 () Bool)

(declare-fun tp!1287155 () Bool)

(assert (=> b!4210154 (= e!2613488 (and tp!1287156 tp!1287155))))

(declare-fun b!4210156 () Bool)

(declare-fun tp!1287158 () Bool)

(declare-fun tp!1287154 () Bool)

(assert (=> b!4210156 (= e!2613488 (and tp!1287158 tp!1287154))))

(declare-fun b!4210155 () Bool)

(declare-fun tp!1287157 () Bool)

(assert (=> b!4210155 (= e!2613488 tp!1287157)))

(assert (= (and b!4209350 ((_ is ElementMatch!12647) (regOne!25806 (regex!7742 rBis!178)))) b!4210153))

(assert (= (and b!4209350 ((_ is Concat!20620) (regOne!25806 (regex!7742 rBis!178)))) b!4210154))

(assert (= (and b!4209350 ((_ is Star!12647) (regOne!25806 (regex!7742 rBis!178)))) b!4210155))

(assert (= (and b!4209350 ((_ is Union!12647) (regOne!25806 (regex!7742 rBis!178)))) b!4210156))

(declare-fun b!4210157 () Bool)

(declare-fun e!2613489 () Bool)

(assert (=> b!4210157 (= e!2613489 tp_is_empty!22261)))

(assert (=> b!4209350 (= tp!1286901 e!2613489)))

(declare-fun b!4210158 () Bool)

(declare-fun tp!1287161 () Bool)

(declare-fun tp!1287160 () Bool)

(assert (=> b!4210158 (= e!2613489 (and tp!1287161 tp!1287160))))

(declare-fun b!4210160 () Bool)

(declare-fun tp!1287163 () Bool)

(declare-fun tp!1287159 () Bool)

(assert (=> b!4210160 (= e!2613489 (and tp!1287163 tp!1287159))))

(declare-fun b!4210159 () Bool)

(declare-fun tp!1287162 () Bool)

(assert (=> b!4210159 (= e!2613489 tp!1287162)))

(assert (= (and b!4209350 ((_ is ElementMatch!12647) (regTwo!25806 (regex!7742 rBis!178)))) b!4210157))

(assert (= (and b!4209350 ((_ is Concat!20620) (regTwo!25806 (regex!7742 rBis!178)))) b!4210158))

(assert (= (and b!4209350 ((_ is Star!12647) (regTwo!25806 (regex!7742 rBis!178)))) b!4210159))

(assert (= (and b!4209350 ((_ is Union!12647) (regTwo!25806 (regex!7742 rBis!178)))) b!4210160))

(declare-fun b!4210161 () Bool)

(declare-fun e!2613490 () Bool)

(assert (=> b!4210161 (= e!2613490 tp_is_empty!22261)))

(assert (=> b!4209351 (= tp!1286903 e!2613490)))

(declare-fun b!4210162 () Bool)

(declare-fun tp!1287166 () Bool)

(declare-fun tp!1287165 () Bool)

(assert (=> b!4210162 (= e!2613490 (and tp!1287166 tp!1287165))))

(declare-fun b!4210164 () Bool)

(declare-fun tp!1287168 () Bool)

(declare-fun tp!1287164 () Bool)

(assert (=> b!4210164 (= e!2613490 (and tp!1287168 tp!1287164))))

(declare-fun b!4210163 () Bool)

(declare-fun tp!1287167 () Bool)

(assert (=> b!4210163 (= e!2613490 tp!1287167)))

(assert (= (and b!4209351 ((_ is ElementMatch!12647) (reg!12976 (regex!7742 rBis!178)))) b!4210161))

(assert (= (and b!4209351 ((_ is Concat!20620) (reg!12976 (regex!7742 rBis!178)))) b!4210162))

(assert (= (and b!4209351 ((_ is Star!12647) (reg!12976 (regex!7742 rBis!178)))) b!4210163))

(assert (= (and b!4209351 ((_ is Union!12647) (reg!12976 (regex!7742 rBis!178)))) b!4210164))

(declare-fun b_lambda!124017 () Bool)

(assert (= b_lambda!124011 (or (and b!4208935 b_free!123123 (= (toValue!10458 (transformation!7742 (h!51695 rules!3967))) (toValue!10458 (transformation!7742 rBis!178)))) (and b!4208944 b_free!123131) (and b!4208924 b_free!123135 (= (toValue!10458 (transformation!7742 (rule!10852 tBis!41))) (toValue!10458 (transformation!7742 rBis!178)))) (and b!4210131 b_free!123151 (= (toValue!10458 (transformation!7742 (h!51695 (t!347764 (t!347764 rules!3967))))) (toValue!10458 (transformation!7742 rBis!178)))) (and b!4209337 b_free!123143 (= (toValue!10458 (transformation!7742 (h!51695 (t!347764 rules!3967)))) (toValue!10458 (transformation!7742 rBis!178)))) (and b!4208951 b_free!123127 (= (toValue!10458 (transformation!7742 (rule!10852 t!8364))) (toValue!10458 (transformation!7742 rBis!178)))) b_lambda!124017)))

(declare-fun b_lambda!124019 () Bool)

(assert (= b_lambda!124013 (or (and b!4208924 b_free!123137 (= (toChars!10317 (transformation!7742 (rule!10852 tBis!41))) (toChars!10317 (transformation!7742 rBis!178)))) (and b!4208935 b_free!123125 (= (toChars!10317 (transformation!7742 (h!51695 rules!3967))) (toChars!10317 (transformation!7742 rBis!178)))) (and b!4209337 b_free!123145 (= (toChars!10317 (transformation!7742 (h!51695 (t!347764 rules!3967)))) (toChars!10317 (transformation!7742 rBis!178)))) (and b!4208951 b_free!123129 (= (toChars!10317 (transformation!7742 (rule!10852 t!8364))) (toChars!10317 (transformation!7742 rBis!178)))) (and b!4208944 b_free!123133) (and b!4210131 b_free!123153 (= (toChars!10317 (transformation!7742 (h!51695 (t!347764 (t!347764 rules!3967))))) (toChars!10317 (transformation!7742 rBis!178)))) b_lambda!124019)))

(declare-fun b_lambda!124021 () Bool)

(assert (= b_lambda!124015 (or (and b!4208935 b_free!123123 (= (toValue!10458 (transformation!7742 (h!51695 rules!3967))) (toValue!10458 (transformation!7742 rBis!178)))) (and b!4208944 b_free!123131) (and b!4208924 b_free!123135 (= (toValue!10458 (transformation!7742 (rule!10852 tBis!41))) (toValue!10458 (transformation!7742 rBis!178)))) (and b!4210131 b_free!123151 (= (toValue!10458 (transformation!7742 (h!51695 (t!347764 (t!347764 rules!3967))))) (toValue!10458 (transformation!7742 rBis!178)))) (and b!4209337 b_free!123143 (= (toValue!10458 (transformation!7742 (h!51695 (t!347764 rules!3967)))) (toValue!10458 (transformation!7742 rBis!178)))) (and b!4208951 b_free!123127 (= (toValue!10458 (transformation!7742 (rule!10852 t!8364))) (toValue!10458 (transformation!7742 rBis!178)))) b_lambda!124021)))

(check-sat (not b!4210112) (not b!4210094) (not b!4210163) (not b_lambda!124021) (not b!4210079) (not b!4209386) (not b!4210035) (not b!4209804) (not d!1240943) (not d!1240945) (not b!4209979) (not b!4210164) (not b!4210108) (not d!1240977) (not tb!252723) (not b!4210144) (not b_next!123855) (not b!4209361) b_and!331253 (not b!4209379) (not b!4210052) (not b!4209981) (not tb!252713) (not b!4209594) b_and!331263 (not b!4210062) (not b!4210152) (not b!4209957) (not b!4209999) (not b!4210127) (not b!4210134) (not b!4209423) (not b!4210032) (not b!4210123) (not b!4209420) (not b!4209812) (not b!4209459) (not b!4210013) (not b!4209382) (not d!1240693) (not b!4210135) (not b!4210107) b_and!331249 (not b!4209443) (not d!1241005) (not b_next!123829) (not b!4210039) (not b!4210031) (not b!4210126) (not d!1240995) (not b!4210154) (not b!4210162) (not b!4209458) (not b!4210027) (not b!4210098) (not b_lambda!123999) (not b!4210037) (not b!4210003) (not d!1240959) (not b!4209586) (not b!4209258) (not b!4209440) (not b!4210058) (not b!4210160) (not b!4210044) (not b_next!123833) (not b_lambda!124019) (not b!4210053) (not b!4210119) b_and!331255 (not d!1240963) (not b!4210143) (not d!1240999) (not d!1240915) (not b!4209362) (not b!4210063) (not b!4210048) (not b_lambda!123979) b_and!331247 (not b!4209951) (not b!4210075) (not b!4210055) (not b!4210151) (not bm!292898) (not d!1240955) (not d!1240975) (not b_lambda!123981) b_and!331245 (not d!1240919) (not tb!252733) (not b!4210071) (not d!1240921) b_and!331261 (not b!4210004) (not b!4209429) (not b!4210074) (not b!4210026) (not d!1240691) (not b_lambda!124007) (not b!4209381) (not b!4210092) (not b_next!123827) (not b!4209432) (not d!1241015) (not d!1240925) (not b!4210070) (not d!1240983) (not b!4210034) (not b_next!123857) (not b!4210141) (not b!4209993) (not d!1240663) (not b!4210067) (not d!1240981) (not b!4210138) (not b!4210115) (not b_next!123839) (not b!4209955) (not b!4209436) (not b!4210114) (not b!4210056) (not d!1240689) (not bm!292936) (not b!4209997) (not d!1240923) (not bm!292941) (not b!4210029) (not b!4210057) (not b!4210005) (not b!4210091) (not d!1240695) (not b!4210006) (not b!4210001) (not b_lambda!124009) (not b!4209442) (not d!1241009) (not d!1241013) (not b!4209390) (not b!4209972) (not b!4210050) (not b!4209438) (not b!4209373) (not b!4210065) (not b!4210137) (not b!4209385) (not b!4210130) (not b!4210036) (not b!4210030) (not b!4209389) (not b!4210124) (not b_next!123835) (not b!4210128) (not b_next!123849) (not b!4210140) (not b!4210133) (not b!4210090) (not b!4209422) (not d!1240763) (not b!4210007) (not d!1240707) (not b_next!123837) (not b_next!123841) (not b!4209991) (not b!4210122) (not b!4209800) (not b!4209963) (not d!1240989) (not b!4210095) (not b!4210076) (not b!4210104) (not b!4210120) (not b!4210150) (not b!4210069) b_and!331257 (not b!4209460) (not b!4210103) (not d!1240767) (not b!4209377) (not d!1241011) (not b!4210155) (not b_lambda!123977) (not b!4209456) (not b!4210038) (not b!4209588) tp_is_empty!22261 (not b!4210020) (not bm!292949) (not tb!252703) b_and!331265 b_and!331259 (not b!4210073) (not b_next!123847) (not b!4210059) (not d!1240931) b_and!331251 (not bm!292935) (not bm!292952) (not d!1241023) (not b!4210016) (not d!1241001) (not b!4209587) (not b!4210129) (not b!4210111) (not b!4210078) (not b!4210142) (not b!4210110) (not b!4210081) (not d!1241019) (not b!4210116) (not b!4210080) (not d!1240769) (not b!4209421) (not b!4210106) (not b!4209953) (not b!4209434) (not b!4210156) (not d!1240961) (not bm!292953) (not b!4210100) (not b!4209387) (not b!4210159) (not b_lambda!124017) (not b!4210139) (not d!1240907) (not d!1240939) (not b!4209966) (not b!4210054) (not bm!292937) (not b!4210061) (not b!4209383) (not b!4209455) (not d!1240715) (not b!4209897) (not bm!292940) (not b!4210096) (not b!4209597) (not b!4209796) (not b!4210066) (not b!4210047) (not d!1240997) (not b!4209375) (not tb!252617) (not b!4209585) (not bm!292951) (not b!4209971) (not b_next!123831) (not b!4210147) (not d!1240937) (not b!4210099) (not b!4209995) (not b!4209255) (not d!1240979) (not bm!292938) (not b!4210148) (not b!4209792) (not b!4210102) (not b!4209365) (not b!4209964) (not d!1240917) (not b!4210045) (not d!1241025) (not b!4210158) (not b_lambda!123985) (not d!1240973) (not d!1240667) (not d!1241007) (not bm!292878) (not bm!292942) (not bm!292939) (not b!4210146) (not d!1240705) (not b!4210049) b_and!331267 (not b!4209367) (not b!4210118) (not tb!252693))
(check-sat b_and!331263 (not b_next!123833) b_and!331255 b_and!331247 (not b_next!123827) (not b_next!123857) (not b_next!123839) (not b_next!123837) (not b_next!123841) b_and!331257 b_and!331251 (not b_next!123831) b_and!331267 (not b_next!123855) b_and!331253 b_and!331249 (not b_next!123829) b_and!331245 b_and!331261 (not b_next!123835) (not b_next!123849) b_and!331265 (not b_next!123847) b_and!331259)
