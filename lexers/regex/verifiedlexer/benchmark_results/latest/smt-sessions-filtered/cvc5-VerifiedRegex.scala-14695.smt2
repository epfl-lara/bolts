; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!757712 () Bool)

(assert start!757712)

(declare-fun b!8046824 () Bool)

(declare-fun b_free!136471 () Bool)

(declare-fun b_next!137261 () Bool)

(assert (=> b!8046824 (= b_free!136471 (not b_next!137261))))

(declare-fun tp!2412347 () Bool)

(declare-fun b_and!354907 () Bool)

(assert (=> b!8046824 (= tp!2412347 b_and!354907)))

(declare-fun b_free!136473 () Bool)

(declare-fun b_next!137263 () Bool)

(assert (=> b!8046824 (= b_free!136473 (not b_next!137263))))

(declare-fun tp!2412345 () Bool)

(declare-fun b_and!354909 () Bool)

(assert (=> b!8046824 (= tp!2412345 b_and!354909)))

(declare-fun b!8046821 () Bool)

(declare-fun e!4740868 () Bool)

(declare-datatypes ((String!85228 0))(
  ( (String!85229 (value!292920 String)) )
))
(declare-datatypes ((List!75494 0))(
  ( (Nil!75368) (Cons!75368 (h!81816 String!85228) (t!391264 List!75494)) )
))
(declare-fun acc!573 () List!75494)

(declare-fun tp!2412346 () Bool)

(declare-fun inv!97093 (String!85228) Bool)

(assert (=> b!8046821 (= e!4740868 (and (inv!97093 (h!81816 acc!573)) tp!2412346))))

(declare-fun e!4740865 () Bool)

(declare-fun tp!2412348 () Bool)

(declare-fun e!4740863 () Bool)

(declare-datatypes ((List!75495 0))(
  ( (Nil!75369) (Cons!75369 (h!81817 (_ BitVec 16)) (t!391265 List!75495)) )
))
(declare-datatypes ((TokenValue!9089 0))(
  ( (FloatLiteralValue!18178 (text!64068 List!75495)) (TokenValueExt!9088 (__x!35459 Int)) (Broken!45445 (value!292921 List!75495)) (Object!9214) (End!9089) (Def!9089) (Underscore!9089) (Match!9089) (Else!9089) (Error!9089) (Case!9089) (If!9089) (Extends!9089) (Abstract!9089) (Class!9089) (Val!9089) (DelimiterValue!18178 (del!9149 List!75495)) (KeywordValue!9095 (value!292922 List!75495)) (CommentValue!18178 (value!292923 List!75495)) (WhitespaceValue!18178 (value!292924 List!75495)) (IndentationValue!9089 (value!292925 List!75495)) (String!85230) (Int32!9089) (Broken!45446 (value!292926 List!75495)) (Boolean!9090) (Unit!171148) (OperatorValue!9092 (op!9149 List!75495)) (IdentifierValue!18178 (value!292927 List!75495)) (IdentifierValue!18179 (value!292928 List!75495)) (WhitespaceValue!18179 (value!292929 List!75495)) (True!18178) (False!18178) (Broken!45447 (value!292930 List!75495)) (Broken!45448 (value!292931 List!75495)) (True!18179) (RightBrace!9089) (RightBracket!9089) (Colon!9089) (Null!9089) (Comma!9089) (LeftBracket!9089) (False!18179) (LeftBrace!9089) (ImaginaryLiteralValue!9089 (text!64069 List!75495)) (StringLiteralValue!27267 (value!292932 List!75495)) (EOFValue!9089 (value!292933 List!75495)) (IdentValue!9089 (value!292934 List!75495)) (DelimiterValue!18179 (value!292935 List!75495)) (DedentValue!9089 (value!292936 List!75495)) (NewLineValue!9089 (value!292937 List!75495)) (IntegerValue!27267 (value!292938 (_ BitVec 32)) (text!64070 List!75495)) (IntegerValue!27268 (value!292939 Int) (text!64071 List!75495)) (Times!9089) (Or!9089) (Equal!9089) (Minus!9089) (Broken!45449 (value!292940 List!75495)) (And!9089) (Div!9089) (LessEqual!9089) (Mod!9089) (Concat!30929) (Not!9089) (Plus!9089) (SpaceValue!9089 (value!292941 List!75495)) (IntegerValue!27269 (value!292942 Int) (text!64072 List!75495)) (StringLiteralValue!27268 (text!64073 List!75495)) (FloatLiteralValue!18179 (text!64074 List!75495)) (BytesLiteralValue!9089 (value!292943 List!75495)) (CommentValue!18179 (value!292944 List!75495)) (StringLiteralValue!27269 (value!292945 List!75495)) (ErrorTokenValue!9089 (msg!9150 List!75495)) )
))
(declare-datatypes ((C!44018 0))(
  ( (C!44019 (val!32785 Int)) )
))
(declare-datatypes ((Regex!21840 0))(
  ( (ElementMatch!21840 (c!1475457 C!44018)) (Concat!30930 (regOne!44192 Regex!21840) (regTwo!44192 Regex!21840)) (EmptyExpr!21840) (Star!21840 (reg!22169 Regex!21840)) (EmptyLang!21840) (Union!21840 (regOne!44193 Regex!21840) (regTwo!44193 Regex!21840)) )
))
(declare-datatypes ((List!75496 0))(
  ( (Nil!75370) (Cons!75370 (h!81818 C!44018) (t!391266 List!75496)) )
))
(declare-datatypes ((IArray!32135 0))(
  ( (IArray!32136 (innerList!16125 List!75496)) )
))
(declare-datatypes ((Conc!16037 0))(
  ( (Node!16037 (left!57400 Conc!16037) (right!57730 Conc!16037) (csize!32304 Int) (cheight!16248 Int)) (Leaf!30733 (xs!19435 IArray!32135) (csize!32305 Int)) (Empty!16037) )
))
(declare-datatypes ((BalanceConc!31030 0))(
  ( (BalanceConc!31031 (c!1475458 Conc!16037)) )
))
(declare-datatypes ((TokenValueInjection!17486 0))(
  ( (TokenValueInjection!17487 (toValue!11852 Int) (toChars!11711 Int)) )
))
(declare-datatypes ((Rule!17338 0))(
  ( (Rule!17339 (regex!8769 Regex!21840) (tag!9633 String!85228) (isSeparator!8769 Bool) (transformation!8769 TokenValueInjection!17486)) )
))
(declare-datatypes ((List!75497 0))(
  ( (Nil!75371) (Cons!75371 (h!81819 Rule!17338) (t!391267 List!75497)) )
))
(declare-fun rules!4081 () List!75497)

(declare-fun b!8046822 () Bool)

(declare-fun inv!97096 (TokenValueInjection!17486) Bool)

(assert (=> b!8046822 (= e!4740865 (and tp!2412348 (inv!97093 (tag!9633 (h!81819 rules!4081))) (inv!97096 (transformation!8769 (h!81819 rules!4081))) e!4740863))))

(declare-fun b!8046823 () Bool)

(declare-fun res!3180983 () Bool)

(declare-fun e!4740862 () Bool)

(assert (=> b!8046823 (=> (not res!3180983) (not e!4740862))))

(assert (=> b!8046823 (= res!3180983 (is-Cons!75371 rules!4081))))

(assert (=> b!8046824 (= e!4740863 (and tp!2412347 tp!2412345))))

(declare-fun e!4740864 () Bool)

(declare-fun lt!2722831 () List!75494)

(declare-datatypes ((LexerInterface!8359 0))(
  ( (LexerInterfaceExt!8356 (__x!35460 Int)) (Lexer!8357) )
))
(declare-fun thiss!26941 () LexerInterface!8359)

(declare-fun b!8046826 () Bool)

(declare-fun noDuplicateTag!3347 (LexerInterface!8359 List!75497 List!75494) Bool)

(assert (=> b!8046826 (= e!4740864 (not (noDuplicateTag!3347 thiss!26941 (t!391267 rules!4081) lt!2722831)))))

(declare-fun b!8046827 () Bool)

(declare-fun res!3180982 () Bool)

(assert (=> b!8046827 (=> (not res!3180982) (not e!4740862))))

(assert (=> b!8046827 (= res!3180982 (noDuplicateTag!3347 thiss!26941 rules!4081 acc!573))))

(declare-fun b!8046828 () Bool)

(declare-fun res!3180985 () Bool)

(assert (=> b!8046828 (=> (not res!3180985) (not e!4740862))))

(declare-fun newAcc!87 () List!75494)

(declare-fun subseq!920 (List!75494 List!75494) Bool)

(assert (=> b!8046828 (= res!3180985 (subseq!920 newAcc!87 acc!573))))

(declare-fun b!8046829 () Bool)

(declare-fun e!4740866 () Bool)

(declare-fun tp!2412349 () Bool)

(assert (=> b!8046829 (= e!4740866 (and (inv!97093 (h!81816 newAcc!87)) tp!2412349))))

(declare-fun b!8046830 () Bool)

(declare-fun e!4740861 () Bool)

(declare-fun tp!2412344 () Bool)

(assert (=> b!8046830 (= e!4740861 (and e!4740865 tp!2412344))))

(declare-fun res!3180981 () Bool)

(assert (=> start!757712 (=> (not res!3180981) (not e!4740862))))

(assert (=> start!757712 (= res!3180981 (is-Lexer!8357 thiss!26941))))

(assert (=> start!757712 e!4740862))

(assert (=> start!757712 true))

(assert (=> start!757712 e!4740866))

(assert (=> start!757712 e!4740868))

(assert (=> start!757712 e!4740861))

(declare-fun b!8046825 () Bool)

(assert (=> b!8046825 (= e!4740862 e!4740864)))

(declare-fun res!3180984 () Bool)

(assert (=> b!8046825 (=> (not res!3180984) (not e!4740864))))

(assert (=> b!8046825 (= res!3180984 (subseq!920 (Cons!75368 (tag!9633 (h!81819 rules!4081)) newAcc!87) lt!2722831))))

(assert (=> b!8046825 (= lt!2722831 (Cons!75368 (tag!9633 (h!81819 rules!4081)) acc!573))))

(assert (= (and start!757712 res!3180981) b!8046828))

(assert (= (and b!8046828 res!3180985) b!8046827))

(assert (= (and b!8046827 res!3180982) b!8046823))

(assert (= (and b!8046823 res!3180983) b!8046825))

(assert (= (and b!8046825 res!3180984) b!8046826))

(assert (= (and start!757712 (is-Cons!75368 newAcc!87)) b!8046829))

(assert (= (and start!757712 (is-Cons!75368 acc!573)) b!8046821))

(assert (= b!8046822 b!8046824))

(assert (= b!8046830 b!8046822))

(assert (= (and start!757712 (is-Cons!75371 rules!4081)) b!8046830))

(declare-fun m!8398758 () Bool)

(assert (=> b!8046826 m!8398758))

(declare-fun m!8398760 () Bool)

(assert (=> b!8046829 m!8398760))

(declare-fun m!8398762 () Bool)

(assert (=> b!8046821 m!8398762))

(declare-fun m!8398764 () Bool)

(assert (=> b!8046825 m!8398764))

(declare-fun m!8398766 () Bool)

(assert (=> b!8046822 m!8398766))

(declare-fun m!8398768 () Bool)

(assert (=> b!8046822 m!8398768))

(declare-fun m!8398770 () Bool)

(assert (=> b!8046828 m!8398770))

(declare-fun m!8398772 () Bool)

(assert (=> b!8046827 m!8398772))

(push 1)

(assert (not b!8046828))

(assert b_and!354907)

(assert (not b!8046827))

(assert (not b!8046825))

(assert (not b!8046822))

(assert (not b!8046830))

(assert (not b_next!137263))

(assert (not b!8046826))

(assert (not b!8046829))

(assert (not b!8046821))

(assert b_and!354909)

(assert (not b_next!137261))

(check-sat)

(pop 1)

(push 1)

(assert b_and!354909)

(assert b_and!354907)

(assert (not b_next!137263))

(assert (not b_next!137261))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!8046871 () Bool)

(declare-fun e!4740908 () Bool)

(assert (=> b!8046871 (= e!4740908 (subseq!920 (t!391264 newAcc!87) (t!391264 acc!573)))))

(declare-fun b!8046870 () Bool)

(declare-fun e!4740910 () Bool)

(declare-fun e!4740909 () Bool)

(assert (=> b!8046870 (= e!4740910 e!4740909)))

(declare-fun res!3181016 () Bool)

(assert (=> b!8046870 (=> res!3181016 e!4740909)))

(assert (=> b!8046870 (= res!3181016 e!4740908)))

(declare-fun res!3181014 () Bool)

(assert (=> b!8046870 (=> (not res!3181014) (not e!4740908))))

(assert (=> b!8046870 (= res!3181014 (= (h!81816 newAcc!87) (h!81816 acc!573)))))

(declare-fun d!2396652 () Bool)

(declare-fun res!3181013 () Bool)

(declare-fun e!4740907 () Bool)

(assert (=> d!2396652 (=> res!3181013 e!4740907)))

(assert (=> d!2396652 (= res!3181013 (is-Nil!75368 newAcc!87))))

(assert (=> d!2396652 (= (subseq!920 newAcc!87 acc!573) e!4740907)))

(declare-fun b!8046869 () Bool)

(assert (=> b!8046869 (= e!4740907 e!4740910)))

(declare-fun res!3181015 () Bool)

(assert (=> b!8046869 (=> (not res!3181015) (not e!4740910))))

(assert (=> b!8046869 (= res!3181015 (is-Cons!75368 acc!573))))

(declare-fun b!8046872 () Bool)

(assert (=> b!8046872 (= e!4740909 (subseq!920 newAcc!87 (t!391264 acc!573)))))

(assert (= (and d!2396652 (not res!3181013)) b!8046869))

(assert (= (and b!8046869 res!3181015) b!8046870))

(assert (= (and b!8046870 res!3181014) b!8046871))

(assert (= (and b!8046870 (not res!3181016)) b!8046872))

(declare-fun m!8398790 () Bool)

(assert (=> b!8046871 m!8398790))

(declare-fun m!8398792 () Bool)

(assert (=> b!8046872 m!8398792))

(assert (=> b!8046828 d!2396652))

(declare-fun d!2396654 () Bool)

(assert (=> d!2396654 (= (inv!97093 (tag!9633 (h!81819 rules!4081))) (= (mod (str.len (value!292920 (tag!9633 (h!81819 rules!4081)))) 2) 0))))

(assert (=> b!8046822 d!2396654))

(declare-fun d!2396656 () Bool)

(declare-fun res!3181019 () Bool)

(declare-fun e!4740913 () Bool)

(assert (=> d!2396656 (=> (not res!3181019) (not e!4740913))))

(declare-fun semiInverseModEq!3892 (Int Int) Bool)

(assert (=> d!2396656 (= res!3181019 (semiInverseModEq!3892 (toChars!11711 (transformation!8769 (h!81819 rules!4081))) (toValue!11852 (transformation!8769 (h!81819 rules!4081)))))))

(assert (=> d!2396656 (= (inv!97096 (transformation!8769 (h!81819 rules!4081))) e!4740913)))

(declare-fun b!8046875 () Bool)

(declare-fun equivClasses!3707 (Int Int) Bool)

(assert (=> b!8046875 (= e!4740913 (equivClasses!3707 (toChars!11711 (transformation!8769 (h!81819 rules!4081))) (toValue!11852 (transformation!8769 (h!81819 rules!4081)))))))

(assert (= (and d!2396656 res!3181019) b!8046875))

(declare-fun m!8398794 () Bool)

(assert (=> d!2396656 m!8398794))

(declare-fun m!8398796 () Bool)

(assert (=> b!8046875 m!8398796))

(assert (=> b!8046822 d!2396656))

(declare-fun d!2396660 () Bool)

(declare-fun res!3181024 () Bool)

(declare-fun e!4740918 () Bool)

(assert (=> d!2396660 (=> res!3181024 e!4740918)))

(assert (=> d!2396660 (= res!3181024 (is-Nil!75371 rules!4081))))

(assert (=> d!2396660 (= (noDuplicateTag!3347 thiss!26941 rules!4081 acc!573) e!4740918)))

(declare-fun b!8046880 () Bool)

(declare-fun e!4740919 () Bool)

(assert (=> b!8046880 (= e!4740918 e!4740919)))

(declare-fun res!3181025 () Bool)

(assert (=> b!8046880 (=> (not res!3181025) (not e!4740919))))

(declare-fun contains!21068 (List!75494 String!85228) Bool)

(assert (=> b!8046880 (= res!3181025 (not (contains!21068 acc!573 (tag!9633 (h!81819 rules!4081)))))))

(declare-fun b!8046881 () Bool)

(assert (=> b!8046881 (= e!4740919 (noDuplicateTag!3347 thiss!26941 (t!391267 rules!4081) (Cons!75368 (tag!9633 (h!81819 rules!4081)) acc!573)))))

(assert (= (and d!2396660 (not res!3181024)) b!8046880))

(assert (= (and b!8046880 res!3181025) b!8046881))

(declare-fun m!8398798 () Bool)

(assert (=> b!8046880 m!8398798))

(declare-fun m!8398800 () Bool)

(assert (=> b!8046881 m!8398800))

(assert (=> b!8046827 d!2396660))

(declare-fun d!2396662 () Bool)

(assert (=> d!2396662 (= (inv!97093 (h!81816 acc!573)) (= (mod (str.len (value!292920 (h!81816 acc!573))) 2) 0))))

(assert (=> b!8046821 d!2396662))

(declare-fun d!2396664 () Bool)

(declare-fun res!3181026 () Bool)

(declare-fun e!4740920 () Bool)

(assert (=> d!2396664 (=> res!3181026 e!4740920)))

(assert (=> d!2396664 (= res!3181026 (is-Nil!75371 (t!391267 rules!4081)))))

(assert (=> d!2396664 (= (noDuplicateTag!3347 thiss!26941 (t!391267 rules!4081) lt!2722831) e!4740920)))

(declare-fun b!8046882 () Bool)

(declare-fun e!4740921 () Bool)

(assert (=> b!8046882 (= e!4740920 e!4740921)))

(declare-fun res!3181027 () Bool)

(assert (=> b!8046882 (=> (not res!3181027) (not e!4740921))))

(assert (=> b!8046882 (= res!3181027 (not (contains!21068 lt!2722831 (tag!9633 (h!81819 (t!391267 rules!4081))))))))

(declare-fun b!8046883 () Bool)

(assert (=> b!8046883 (= e!4740921 (noDuplicateTag!3347 thiss!26941 (t!391267 (t!391267 rules!4081)) (Cons!75368 (tag!9633 (h!81819 (t!391267 rules!4081))) lt!2722831)))))

(assert (= (and d!2396664 (not res!3181026)) b!8046882))

(assert (= (and b!8046882 res!3181027) b!8046883))

(declare-fun m!8398802 () Bool)

(assert (=> b!8046882 m!8398802))

(declare-fun m!8398804 () Bool)

(assert (=> b!8046883 m!8398804))

(assert (=> b!8046826 d!2396664))

(declare-fun e!4740923 () Bool)

(declare-fun b!8046886 () Bool)

(assert (=> b!8046886 (= e!4740923 (subseq!920 (t!391264 (Cons!75368 (tag!9633 (h!81819 rules!4081)) newAcc!87)) (t!391264 lt!2722831)))))

(declare-fun b!8046885 () Bool)

(declare-fun e!4740925 () Bool)

(declare-fun e!4740924 () Bool)

(assert (=> b!8046885 (= e!4740925 e!4740924)))

(declare-fun res!3181031 () Bool)

(assert (=> b!8046885 (=> res!3181031 e!4740924)))

(assert (=> b!8046885 (= res!3181031 e!4740923)))

(declare-fun res!3181029 () Bool)

(assert (=> b!8046885 (=> (not res!3181029) (not e!4740923))))

(assert (=> b!8046885 (= res!3181029 (= (h!81816 (Cons!75368 (tag!9633 (h!81819 rules!4081)) newAcc!87)) (h!81816 lt!2722831)))))

(declare-fun d!2396666 () Bool)

(declare-fun res!3181028 () Bool)

(declare-fun e!4740922 () Bool)

(assert (=> d!2396666 (=> res!3181028 e!4740922)))

(assert (=> d!2396666 (= res!3181028 (is-Nil!75368 (Cons!75368 (tag!9633 (h!81819 rules!4081)) newAcc!87)))))

(assert (=> d!2396666 (= (subseq!920 (Cons!75368 (tag!9633 (h!81819 rules!4081)) newAcc!87) lt!2722831) e!4740922)))

(declare-fun b!8046884 () Bool)

(assert (=> b!8046884 (= e!4740922 e!4740925)))

(declare-fun res!3181030 () Bool)

(assert (=> b!8046884 (=> (not res!3181030) (not e!4740925))))

(assert (=> b!8046884 (= res!3181030 (is-Cons!75368 lt!2722831))))

(declare-fun b!8046887 () Bool)

(assert (=> b!8046887 (= e!4740924 (subseq!920 (Cons!75368 (tag!9633 (h!81819 rules!4081)) newAcc!87) (t!391264 lt!2722831)))))

(assert (= (and d!2396666 (not res!3181028)) b!8046884))

(assert (= (and b!8046884 res!3181030) b!8046885))

(assert (= (and b!8046885 res!3181029) b!8046886))

(assert (= (and b!8046885 (not res!3181031)) b!8046887))

(declare-fun m!8398806 () Bool)

(assert (=> b!8046886 m!8398806))

(declare-fun m!8398808 () Bool)

(assert (=> b!8046887 m!8398808))

(assert (=> b!8046825 d!2396666))

(declare-fun d!2396668 () Bool)

(assert (=> d!2396668 (= (inv!97093 (h!81816 newAcc!87)) (= (mod (str.len (value!292920 (h!81816 newAcc!87))) 2) 0))))

(assert (=> b!8046829 d!2396668))

(declare-fun b!8046900 () Bool)

(declare-fun e!4740928 () Bool)

(declare-fun tp!2412380 () Bool)

(assert (=> b!8046900 (= e!4740928 tp!2412380)))

(declare-fun b!8046899 () Bool)

(declare-fun tp!2412381 () Bool)

(declare-fun tp!2412379 () Bool)

(assert (=> b!8046899 (= e!4740928 (and tp!2412381 tp!2412379))))

(declare-fun b!8046898 () Bool)

(declare-fun tp_is_empty!54639 () Bool)

(assert (=> b!8046898 (= e!4740928 tp_is_empty!54639)))

(assert (=> b!8046822 (= tp!2412348 e!4740928)))

(declare-fun b!8046901 () Bool)

(declare-fun tp!2412378 () Bool)

(declare-fun tp!2412382 () Bool)

(assert (=> b!8046901 (= e!4740928 (and tp!2412378 tp!2412382))))

(assert (= (and b!8046822 (is-ElementMatch!21840 (regex!8769 (h!81819 rules!4081)))) b!8046898))

(assert (= (and b!8046822 (is-Concat!30930 (regex!8769 (h!81819 rules!4081)))) b!8046899))

(assert (= (and b!8046822 (is-Star!21840 (regex!8769 (h!81819 rules!4081)))) b!8046900))

(assert (= (and b!8046822 (is-Union!21840 (regex!8769 (h!81819 rules!4081)))) b!8046901))

(declare-fun b!8046914 () Bool)

(declare-fun e!4740941 () Bool)

(declare-fun tp!2412385 () Bool)

(assert (=> b!8046914 (= e!4740941 (and (inv!97093 (h!81816 (t!391264 acc!573))) tp!2412385))))

(assert (=> b!8046821 (= tp!2412346 e!4740941)))

(assert (= (and b!8046821 (is-Cons!75368 (t!391264 acc!573))) b!8046914))

(declare-fun m!8398810 () Bool)

(assert (=> b!8046914 m!8398810))

(declare-fun b!8046925 () Bool)

(declare-fun b_free!136479 () Bool)

(declare-fun b_next!137269 () Bool)

(assert (=> b!8046925 (= b_free!136479 (not b_next!137269))))

(declare-fun tp!2412395 () Bool)

(declare-fun b_and!354915 () Bool)

(assert (=> b!8046925 (= tp!2412395 b_and!354915)))

(declare-fun b_free!136481 () Bool)

(declare-fun b_next!137271 () Bool)

(assert (=> b!8046925 (= b_free!136481 (not b_next!137271))))

(declare-fun tp!2412394 () Bool)

(declare-fun b_and!354917 () Bool)

(assert (=> b!8046925 (= tp!2412394 b_and!354917)))

(declare-fun e!4740951 () Bool)

(assert (=> b!8046925 (= e!4740951 (and tp!2412395 tp!2412394))))

(declare-fun tp!2412397 () Bool)

(declare-fun b!8046924 () Bool)

(declare-fun e!4740954 () Bool)

(assert (=> b!8046924 (= e!4740954 (and tp!2412397 (inv!97093 (tag!9633 (h!81819 (t!391267 rules!4081)))) (inv!97096 (transformation!8769 (h!81819 (t!391267 rules!4081)))) e!4740951))))

(declare-fun b!8046923 () Bool)

(declare-fun e!4740953 () Bool)

(declare-fun tp!2412396 () Bool)

(assert (=> b!8046923 (= e!4740953 (and e!4740954 tp!2412396))))

(assert (=> b!8046830 (= tp!2412344 e!4740953)))

(assert (= b!8046924 b!8046925))

(assert (= b!8046923 b!8046924))

(assert (= (and b!8046830 (is-Cons!75371 (t!391267 rules!4081))) b!8046923))

(declare-fun m!8398812 () Bool)

(assert (=> b!8046924 m!8398812))

(declare-fun m!8398814 () Bool)

(assert (=> b!8046924 m!8398814))

(declare-fun b!8046926 () Bool)

(declare-fun e!4740955 () Bool)

(declare-fun tp!2412398 () Bool)

(assert (=> b!8046926 (= e!4740955 (and (inv!97093 (h!81816 (t!391264 newAcc!87))) tp!2412398))))

(assert (=> b!8046829 (= tp!2412349 e!4740955)))

(assert (= (and b!8046829 (is-Cons!75368 (t!391264 newAcc!87))) b!8046926))

(declare-fun m!8398816 () Bool)

(assert (=> b!8046926 m!8398816))

(push 1)

(assert (not b_next!137263))

(assert (not b_next!137271))

(assert b_and!354907)

(assert (not b!8046883))

(assert (not b!8046924))

(assert (not b!8046872))

(assert (not b!8046882))

(assert b_and!354915)

(assert (not b!8046899))

(assert (not b!8046880))

(assert b_and!354917)

(assert (not b!8046886))

(assert tp_is_empty!54639)

(assert (not b!8046914))

(assert (not b!8046875))

(assert (not b!8046881))

(assert b_and!354909)

(assert (not b_next!137261))

(assert (not b_next!137269))

(assert (not b!8046901))

(assert (not b!8046926))

(assert (not d!2396656))

(assert (not b!8046923))

(assert (not b!8046887))

(assert (not b!8046871))

(assert (not b!8046900))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!137263))

(assert (not b_next!137271))

(assert b_and!354907)

(assert b_and!354915)

(assert (not b_next!137269))

(assert b_and!354917)

(assert b_and!354909)

(assert (not b_next!137261))

(check-sat)

(pop 1)

