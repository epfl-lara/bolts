; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!76544 () Bool)

(assert start!76544)

(declare-fun b!853158 () Bool)

(declare-fun b_free!25829 () Bool)

(declare-fun b_next!25893 () Bool)

(assert (=> b!853158 (= b_free!25829 (not b_next!25893))))

(declare-fun tp!268898 () Bool)

(declare-fun b_and!75053 () Bool)

(assert (=> b!853158 (= tp!268898 b_and!75053)))

(declare-fun b_free!25831 () Bool)

(declare-fun b_next!25895 () Bool)

(assert (=> b!853158 (= b_free!25831 (not b_next!25895))))

(declare-fun tp!268894 () Bool)

(declare-fun b_and!75055 () Bool)

(assert (=> b!853158 (= tp!268894 b_and!75055)))

(declare-fun b!853146 () Bool)

(declare-fun b_free!25833 () Bool)

(declare-fun b_next!25897 () Bool)

(assert (=> b!853146 (= b_free!25833 (not b_next!25897))))

(declare-fun tp!268893 () Bool)

(declare-fun b_and!75057 () Bool)

(assert (=> b!853146 (= tp!268893 b_and!75057)))

(declare-fun b_free!25835 () Bool)

(declare-fun b_next!25899 () Bool)

(assert (=> b!853146 (= b_free!25835 (not b_next!25899))))

(declare-fun tp!268895 () Bool)

(declare-fun b_and!75059 () Bool)

(assert (=> b!853146 (= tp!268895 b_and!75059)))

(declare-fun b!853155 () Bool)

(declare-fun b_free!25837 () Bool)

(declare-fun b_next!25901 () Bool)

(assert (=> b!853155 (= b_free!25837 (not b_next!25901))))

(declare-fun tp!268897 () Bool)

(declare-fun b_and!75061 () Bool)

(assert (=> b!853155 (= tp!268897 b_and!75061)))

(declare-fun b_free!25839 () Bool)

(declare-fun b_next!25903 () Bool)

(assert (=> b!853155 (= b_free!25839 (not b_next!25903))))

(declare-fun tp!268896 () Bool)

(declare-fun b_and!75063 () Bool)

(assert (=> b!853155 (= tp!268896 b_and!75063)))

(declare-fun e!561541 () Bool)

(assert (=> b!853146 (= e!561541 (and tp!268893 tp!268895))))

(declare-datatypes ((List!9222 0))(
  ( (Nil!9206) (Cons!9206 (h!14607 (_ BitVec 16)) (t!95976 List!9222)) )
))
(declare-datatypes ((TokenValue!1793 0))(
  ( (FloatLiteralValue!3586 (text!12996 List!9222)) (TokenValueExt!1792 (__x!7317 Int)) (Broken!8965 (value!55894 List!9222)) (Object!1808) (End!1793) (Def!1793) (Underscore!1793) (Match!1793) (Else!1793) (Error!1793) (Case!1793) (If!1793) (Extends!1793) (Abstract!1793) (Class!1793) (Val!1793) (DelimiterValue!3586 (del!1853 List!9222)) (KeywordValue!1799 (value!55895 List!9222)) (CommentValue!3586 (value!55896 List!9222)) (WhitespaceValue!3586 (value!55897 List!9222)) (IndentationValue!1793 (value!55898 List!9222)) (String!10864) (Int32!1793) (Broken!8966 (value!55899 List!9222)) (Boolean!1794) (Unit!13715) (OperatorValue!1796 (op!1853 List!9222)) (IdentifierValue!3586 (value!55900 List!9222)) (IdentifierValue!3587 (value!55901 List!9222)) (WhitespaceValue!3587 (value!55902 List!9222)) (True!3586) (False!3586) (Broken!8967 (value!55903 List!9222)) (Broken!8968 (value!55904 List!9222)) (True!3587) (RightBrace!1793) (RightBracket!1793) (Colon!1793) (Null!1793) (Comma!1793) (LeftBracket!1793) (False!3587) (LeftBrace!1793) (ImaginaryLiteralValue!1793 (text!12997 List!9222)) (StringLiteralValue!5379 (value!55905 List!9222)) (EOFValue!1793 (value!55906 List!9222)) (IdentValue!1793 (value!55907 List!9222)) (DelimiterValue!3587 (value!55908 List!9222)) (DedentValue!1793 (value!55909 List!9222)) (NewLineValue!1793 (value!55910 List!9222)) (IntegerValue!5379 (value!55911 (_ BitVec 32)) (text!12998 List!9222)) (IntegerValue!5380 (value!55912 Int) (text!12999 List!9222)) (Times!1793) (Or!1793) (Equal!1793) (Minus!1793) (Broken!8969 (value!55913 List!9222)) (And!1793) (Div!1793) (LessEqual!1793) (Mod!1793) (Concat!3953) (Not!1793) (Plus!1793) (SpaceValue!1793 (value!55914 List!9222)) (IntegerValue!5381 (value!55915 Int) (text!13000 List!9222)) (StringLiteralValue!5380 (text!13001 List!9222)) (FloatLiteralValue!3587 (text!13002 List!9222)) (BytesLiteralValue!1793 (value!55916 List!9222)) (CommentValue!3587 (value!55917 List!9222)) (StringLiteralValue!5381 (value!55918 List!9222)) (ErrorTokenValue!1793 (msg!1854 List!9222)) )
))
(declare-datatypes ((C!4890 0))(
  ( (C!4891 (val!2693 Int)) )
))
(declare-datatypes ((Regex!2160 0))(
  ( (ElementMatch!2160 (c!138385 C!4890)) (Concat!3954 (regOne!4832 Regex!2160) (regTwo!4832 Regex!2160)) (EmptyExpr!2160) (Star!2160 (reg!2489 Regex!2160)) (EmptyLang!2160) (Union!2160 (regOne!4833 Regex!2160) (regTwo!4833 Regex!2160)) )
))
(declare-datatypes ((String!10865 0))(
  ( (String!10866 (value!55919 String)) )
))
(declare-datatypes ((List!9223 0))(
  ( (Nil!9207) (Cons!9207 (h!14608 C!4890) (t!95977 List!9223)) )
))
(declare-datatypes ((IArray!6105 0))(
  ( (IArray!6106 (innerList!3110 List!9223)) )
))
(declare-datatypes ((Conc!3050 0))(
  ( (Node!3050 (left!6811 Conc!3050) (right!7141 Conc!3050) (csize!6330 Int) (cheight!3261 Int)) (Leaf!4502 (xs!5739 IArray!6105) (csize!6331 Int)) (Empty!3050) )
))
(declare-datatypes ((BalanceConc!6114 0))(
  ( (BalanceConc!6115 (c!138386 Conc!3050)) )
))
(declare-datatypes ((TokenValueInjection!3286 0))(
  ( (TokenValueInjection!3287 (toValue!2772 Int) (toChars!2631 Int)) )
))
(declare-datatypes ((Rule!3254 0))(
  ( (Rule!3255 (regex!1727 Regex!2160) (tag!1989 String!10865) (isSeparator!1727 Bool) (transformation!1727 TokenValueInjection!3286)) )
))
(declare-datatypes ((Token!3120 0))(
  ( (Token!3121 (value!55920 TokenValue!1793) (rule!3150 Rule!3254) (size!7678 Int) (originalCharacters!2283 List!9223)) )
))
(declare-fun separatorToken!297 () Token!3120)

(declare-datatypes ((List!9224 0))(
  ( (Nil!9208) (Cons!9208 (h!14609 Token!3120) (t!95978 List!9224)) )
))
(declare-fun lt!323082 () List!9224)

(declare-datatypes ((LexerInterface!1529 0))(
  ( (LexerInterfaceExt!1526 (__x!7318 Int)) (Lexer!1527) )
))
(declare-fun thiss!20117 () LexerInterface!1529)

(declare-fun e!561537 () Bool)

(declare-fun l!5107 () List!9224)

(declare-fun b!853147 () Bool)

(declare-fun withSeparatorTokenList!59 (LexerInterface!1529 List!9224 Token!3120) List!9224)

(declare-fun tail!1039 (List!9224) List!9224)

(assert (=> b!853147 (= e!561537 (= (t!95978 (t!95978 lt!323082)) (withSeparatorTokenList!59 thiss!20117 (tail!1039 l!5107) separatorToken!297)))))

(declare-fun b!853148 () Bool)

(declare-fun res!389710 () Bool)

(declare-fun e!561528 () Bool)

(assert (=> b!853148 (=> (not res!389710) (not e!561528))))

(declare-datatypes ((List!9225 0))(
  ( (Nil!9209) (Cons!9209 (h!14610 Rule!3254) (t!95979 List!9225)) )
))
(declare-fun rules!2621 () List!9225)

(declare-fun rulesProduceEachTokenIndividuallyList!417 (LexerInterface!1529 List!9225 List!9224) Bool)

(assert (=> b!853148 (= res!389710 (rulesProduceEachTokenIndividuallyList!417 thiss!20117 rules!2621 l!5107))))

(declare-fun b!853149 () Bool)

(declare-fun res!389713 () Bool)

(assert (=> b!853149 (=> (not res!389713) (not e!561528))))

(declare-fun isEmpty!5448 (List!9225) Bool)

(assert (=> b!853149 (= res!389713 (not (isEmpty!5448 rules!2621)))))

(declare-fun b!853150 () Bool)

(declare-fun res!389717 () Bool)

(assert (=> b!853150 (=> (not res!389717) (not e!561528))))

(declare-fun sepAndNonSepRulesDisjointChars!527 (List!9225 List!9225) Bool)

(assert (=> b!853150 (= res!389717 (sepAndNonSepRulesDisjointChars!527 rules!2621 rules!2621))))

(declare-fun tp!268903 () Bool)

(declare-fun e!561539 () Bool)

(declare-fun b!853151 () Bool)

(declare-fun e!561535 () Bool)

(declare-fun inv!11707 (Token!3120) Bool)

(assert (=> b!853151 (= e!561535 (and (inv!11707 (h!14609 l!5107)) e!561539 tp!268903))))

(declare-fun b!853152 () Bool)

(declare-fun e!561544 () Bool)

(declare-fun e!561540 () Bool)

(declare-fun tp!268902 () Bool)

(assert (=> b!853152 (= e!561544 (and e!561540 tp!268902))))

(declare-fun res!389715 () Bool)

(assert (=> start!76544 (=> (not res!389715) (not e!561528))))

(assert (=> start!76544 (= res!389715 (is-Lexer!1527 thiss!20117))))

(assert (=> start!76544 e!561528))

(assert (=> start!76544 true))

(assert (=> start!76544 e!561544))

(assert (=> start!76544 e!561535))

(declare-fun e!561536 () Bool)

(assert (=> start!76544 (and (inv!11707 separatorToken!297) e!561536)))

(declare-fun b!853153 () Bool)

(declare-fun res!389716 () Bool)

(assert (=> b!853153 (=> (not res!389716) (not e!561528))))

(assert (=> b!853153 (= res!389716 (isSeparator!1727 (rule!3150 separatorToken!297)))))

(declare-fun b!853154 () Bool)

(declare-fun res!389712 () Bool)

(assert (=> b!853154 (=> (not res!389712) (not e!561528))))

(declare-fun lambda!25549 () Int)

(declare-fun forall!2180 (List!9224 Int) Bool)

(assert (=> b!853154 (= res!389712 (forall!2180 l!5107 lambda!25549))))

(declare-fun e!561530 () Bool)

(assert (=> b!853155 (= e!561530 (and tp!268897 tp!268896))))

(declare-fun b!853156 () Bool)

(declare-fun res!389718 () Bool)

(assert (=> b!853156 (=> (not res!389718) (not e!561528))))

(declare-fun rulesProduceIndividualToken!593 (LexerInterface!1529 List!9225 Token!3120) Bool)

(assert (=> b!853156 (= res!389718 (rulesProduceIndividualToken!593 thiss!20117 rules!2621 separatorToken!297))))

(declare-fun e!561529 () Bool)

(declare-fun b!853157 () Bool)

(declare-fun tp!268905 () Bool)

(declare-fun inv!21 (TokenValue!1793) Bool)

(assert (=> b!853157 (= e!561536 (and (inv!21 (value!55920 separatorToken!297)) e!561529 tp!268905))))

(declare-fun e!561542 () Bool)

(assert (=> b!853158 (= e!561542 (and tp!268898 tp!268894))))

(declare-fun b!853159 () Bool)

(declare-fun tp!268904 () Bool)

(declare-fun e!561531 () Bool)

(assert (=> b!853159 (= e!561539 (and (inv!21 (value!55920 (h!14609 l!5107))) e!561531 tp!268904))))

(declare-fun b!853160 () Bool)

(declare-fun tp!268901 () Bool)

(declare-fun inv!11704 (String!10865) Bool)

(declare-fun inv!11708 (TokenValueInjection!3286) Bool)

(assert (=> b!853160 (= e!561531 (and tp!268901 (inv!11704 (tag!1989 (rule!3150 (h!14609 l!5107)))) (inv!11708 (transformation!1727 (rule!3150 (h!14609 l!5107)))) e!561530))))

(declare-fun b!853161 () Bool)

(assert (=> b!853161 (= e!561528 (not e!561537))))

(declare-fun res!389714 () Bool)

(assert (=> b!853161 (=> res!389714 e!561537)))

(assert (=> b!853161 (= res!389714 (or (not (is-Cons!9208 lt!323082)) (not (is-Cons!9208 (t!95978 lt!323082)))))))

(assert (=> b!853161 (rulesProduceEachTokenIndividuallyList!417 thiss!20117 rules!2621 lt!323082)))

(assert (=> b!853161 (= lt!323082 (withSeparatorTokenList!59 thiss!20117 l!5107 separatorToken!297))))

(declare-datatypes ((Unit!13716 0))(
  ( (Unit!13717) )
))
(declare-fun lt!323083 () Unit!13716)

(declare-fun withSeparatorTokenListPreservesRulesProduceTokens!59 (LexerInterface!1529 List!9225 List!9224 Token!3120) Unit!13716)

(assert (=> b!853161 (= lt!323083 (withSeparatorTokenListPreservesRulesProduceTokens!59 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(declare-fun b!853162 () Bool)

(declare-fun res!389711 () Bool)

(assert (=> b!853162 (=> (not res!389711) (not e!561528))))

(declare-fun rulesInvariant!1405 (LexerInterface!1529 List!9225) Bool)

(assert (=> b!853162 (= res!389711 (rulesInvariant!1405 thiss!20117 rules!2621))))

(declare-fun tp!268899 () Bool)

(declare-fun b!853163 () Bool)

(assert (=> b!853163 (= e!561529 (and tp!268899 (inv!11704 (tag!1989 (rule!3150 separatorToken!297))) (inv!11708 (transformation!1727 (rule!3150 separatorToken!297))) e!561542))))

(declare-fun tp!268900 () Bool)

(declare-fun b!853164 () Bool)

(assert (=> b!853164 (= e!561540 (and tp!268900 (inv!11704 (tag!1989 (h!14610 rules!2621))) (inv!11708 (transformation!1727 (h!14610 rules!2621))) e!561541))))

(assert (= (and start!76544 res!389715) b!853149))

(assert (= (and b!853149 res!389713) b!853162))

(assert (= (and b!853162 res!389711) b!853148))

(assert (= (and b!853148 res!389710) b!853156))

(assert (= (and b!853156 res!389718) b!853153))

(assert (= (and b!853153 res!389716) b!853154))

(assert (= (and b!853154 res!389712) b!853150))

(assert (= (and b!853150 res!389717) b!853161))

(assert (= (and b!853161 (not res!389714)) b!853147))

(assert (= b!853164 b!853146))

(assert (= b!853152 b!853164))

(assert (= (and start!76544 (is-Cons!9209 rules!2621)) b!853152))

(assert (= b!853160 b!853155))

(assert (= b!853159 b!853160))

(assert (= b!853151 b!853159))

(assert (= (and start!76544 (is-Cons!9208 l!5107)) b!853151))

(assert (= b!853163 b!853158))

(assert (= b!853157 b!853163))

(assert (= start!76544 b!853157))

(declare-fun m!1092849 () Bool)

(assert (=> b!853163 m!1092849))

(declare-fun m!1092851 () Bool)

(assert (=> b!853163 m!1092851))

(declare-fun m!1092853 () Bool)

(assert (=> b!853156 m!1092853))

(declare-fun m!1092855 () Bool)

(assert (=> b!853159 m!1092855))

(declare-fun m!1092857 () Bool)

(assert (=> b!853148 m!1092857))

(declare-fun m!1092859 () Bool)

(assert (=> b!853151 m!1092859))

(declare-fun m!1092861 () Bool)

(assert (=> b!853147 m!1092861))

(assert (=> b!853147 m!1092861))

(declare-fun m!1092863 () Bool)

(assert (=> b!853147 m!1092863))

(declare-fun m!1092865 () Bool)

(assert (=> b!853162 m!1092865))

(declare-fun m!1092867 () Bool)

(assert (=> b!853149 m!1092867))

(declare-fun m!1092869 () Bool)

(assert (=> b!853154 m!1092869))

(declare-fun m!1092871 () Bool)

(assert (=> b!853150 m!1092871))

(declare-fun m!1092873 () Bool)

(assert (=> b!853160 m!1092873))

(declare-fun m!1092875 () Bool)

(assert (=> b!853160 m!1092875))

(declare-fun m!1092877 () Bool)

(assert (=> b!853161 m!1092877))

(declare-fun m!1092879 () Bool)

(assert (=> b!853161 m!1092879))

(declare-fun m!1092881 () Bool)

(assert (=> b!853161 m!1092881))

(declare-fun m!1092883 () Bool)

(assert (=> start!76544 m!1092883))

(declare-fun m!1092885 () Bool)

(assert (=> b!853157 m!1092885))

(declare-fun m!1092887 () Bool)

(assert (=> b!853164 m!1092887))

(declare-fun m!1092889 () Bool)

(assert (=> b!853164 m!1092889))

(push 1)

(assert (not b_next!25893))

(assert (not b_next!25903))

(assert (not b!853151))

(assert (not b!853163))

(assert b_and!75061)

(assert (not b!853160))

(assert (not b_next!25901))

(assert (not b_next!25899))

(assert (not b!853162))

(assert (not b!853157))

(assert (not b!853147))

(assert b_and!75057)

(assert (not start!76544))

(assert (not b!853152))

(assert (not b!853148))

(assert b_and!75063)

(assert (not b!853156))

(assert (not b!853164))

(assert b_and!75059)

(assert (not b_next!25895))

(assert b_and!75055)

(assert (not b_next!25897))

(assert b_and!75053)

(assert (not b!853149))

(assert (not b!853161))

(assert (not b!853154))

(assert (not b!853159))

(assert (not b!853150))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!25893))

(assert (not b_next!25903))

(assert b_and!75063)

(assert b_and!75061)

(assert (not b_next!25901))

(assert (not b_next!25899))

(assert b_and!75057)

(assert b_and!75053)

(assert b_and!75059)

(assert (not b_next!25895))

(assert b_and!75055)

(assert (not b_next!25897))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!853232 () Bool)

(declare-fun e!561603 () Bool)

(declare-fun inv!16 (TokenValue!1793) Bool)

(assert (=> b!853232 (= e!561603 (inv!16 (value!55920 (h!14609 l!5107))))))

(declare-fun b!853233 () Bool)

(declare-fun res!389753 () Bool)

(declare-fun e!561602 () Bool)

(assert (=> b!853233 (=> res!389753 e!561602)))

(assert (=> b!853233 (= res!389753 (not (is-IntegerValue!5381 (value!55920 (h!14609 l!5107)))))))

(declare-fun e!561604 () Bool)

(assert (=> b!853233 (= e!561604 e!561602)))

(declare-fun d!266528 () Bool)

(declare-fun c!138394 () Bool)

(assert (=> d!266528 (= c!138394 (is-IntegerValue!5379 (value!55920 (h!14609 l!5107))))))

(assert (=> d!266528 (= (inv!21 (value!55920 (h!14609 l!5107))) e!561603)))

(declare-fun b!853234 () Bool)

(assert (=> b!853234 (= e!561603 e!561604)))

(declare-fun c!138393 () Bool)

(assert (=> b!853234 (= c!138393 (is-IntegerValue!5380 (value!55920 (h!14609 l!5107))))))

(declare-fun b!853235 () Bool)

(declare-fun inv!15 (TokenValue!1793) Bool)

(assert (=> b!853235 (= e!561602 (inv!15 (value!55920 (h!14609 l!5107))))))

(declare-fun b!853236 () Bool)

(declare-fun inv!17 (TokenValue!1793) Bool)

(assert (=> b!853236 (= e!561604 (inv!17 (value!55920 (h!14609 l!5107))))))

(assert (= (and d!266528 c!138394) b!853232))

(assert (= (and d!266528 (not c!138394)) b!853234))

(assert (= (and b!853234 c!138393) b!853236))

(assert (= (and b!853234 (not c!138393)) b!853233))

(assert (= (and b!853233 (not res!389753)) b!853235))

(declare-fun m!1092933 () Bool)

(assert (=> b!853232 m!1092933))

(declare-fun m!1092935 () Bool)

(assert (=> b!853235 m!1092935))

(declare-fun m!1092937 () Bool)

(assert (=> b!853236 m!1092937))

(assert (=> b!853159 d!266528))

(declare-fun bs!231538 () Bool)

(declare-fun d!266530 () Bool)

(assert (= bs!231538 (and d!266530 b!853154)))

(declare-fun lambda!25555 () Int)

(assert (=> bs!231538 (not (= lambda!25555 lambda!25549))))

(declare-fun b!853342 () Bool)

(declare-fun e!561680 () Bool)

(assert (=> b!853342 (= e!561680 true)))

(declare-fun b!853341 () Bool)

(declare-fun e!561679 () Bool)

(assert (=> b!853341 (= e!561679 e!561680)))

(declare-fun b!853340 () Bool)

(declare-fun e!561678 () Bool)

(assert (=> b!853340 (= e!561678 e!561679)))

(assert (=> d!266530 e!561678))

(assert (= b!853341 b!853342))

(assert (= b!853340 b!853341))

(assert (= (and d!266530 (is-Cons!9209 rules!2621)) b!853340))

(declare-fun order!5919 () Int)

(declare-fun order!5917 () Int)

(declare-fun dynLambda!4300 (Int Int) Int)

(declare-fun dynLambda!4301 (Int Int) Int)

(assert (=> b!853342 (< (dynLambda!4300 order!5917 (toValue!2772 (transformation!1727 (h!14610 rules!2621)))) (dynLambda!4301 order!5919 lambda!25555))))

(declare-fun order!5921 () Int)

(declare-fun dynLambda!4302 (Int Int) Int)

(assert (=> b!853342 (< (dynLambda!4302 order!5921 (toChars!2631 (transformation!1727 (h!14610 rules!2621)))) (dynLambda!4301 order!5919 lambda!25555))))

(assert (=> d!266530 true))

(declare-fun lt!323122 () Bool)

(assert (=> d!266530 (= lt!323122 (forall!2180 l!5107 lambda!25555))))

(declare-fun e!561669 () Bool)

(assert (=> d!266530 (= lt!323122 e!561669)))

(declare-fun res!389811 () Bool)

(assert (=> d!266530 (=> res!389811 e!561669)))

(assert (=> d!266530 (= res!389811 (not (is-Cons!9208 l!5107)))))

(assert (=> d!266530 (not (isEmpty!5448 rules!2621))))

(assert (=> d!266530 (= (rulesProduceEachTokenIndividuallyList!417 thiss!20117 rules!2621 l!5107) lt!323122)))

(declare-fun b!853328 () Bool)

(declare-fun e!561668 () Bool)

(assert (=> b!853328 (= e!561669 e!561668)))

(declare-fun res!389810 () Bool)

(assert (=> b!853328 (=> (not res!389810) (not e!561668))))

(assert (=> b!853328 (= res!389810 (rulesProduceIndividualToken!593 thiss!20117 rules!2621 (h!14609 l!5107)))))

(declare-fun b!853329 () Bool)

(assert (=> b!853329 (= e!561668 (rulesProduceEachTokenIndividuallyList!417 thiss!20117 rules!2621 (t!95978 l!5107)))))

(assert (= (and d!266530 (not res!389811)) b!853328))

(assert (= (and b!853328 res!389810) b!853329))

(declare-fun m!1093051 () Bool)

(assert (=> d!266530 m!1093051))

(assert (=> d!266530 m!1092867))

(declare-fun m!1093053 () Bool)

(assert (=> b!853328 m!1093053))

(declare-fun m!1093055 () Bool)

(assert (=> b!853329 m!1093055))

(assert (=> b!853148 d!266530))

(declare-fun b!853345 () Bool)

(declare-fun e!561682 () Bool)

(assert (=> b!853345 (= e!561682 (inv!16 (value!55920 separatorToken!297)))))

(declare-fun b!853346 () Bool)

(declare-fun res!389814 () Bool)

(declare-fun e!561681 () Bool)

(assert (=> b!853346 (=> res!389814 e!561681)))

(assert (=> b!853346 (= res!389814 (not (is-IntegerValue!5381 (value!55920 separatorToken!297))))))

(declare-fun e!561683 () Bool)

(assert (=> b!853346 (= e!561683 e!561681)))

(declare-fun d!266562 () Bool)

(declare-fun c!138413 () Bool)

(assert (=> d!266562 (= c!138413 (is-IntegerValue!5379 (value!55920 separatorToken!297)))))

(assert (=> d!266562 (= (inv!21 (value!55920 separatorToken!297)) e!561682)))

(declare-fun b!853347 () Bool)

(assert (=> b!853347 (= e!561682 e!561683)))

(declare-fun c!138412 () Bool)

(assert (=> b!853347 (= c!138412 (is-IntegerValue!5380 (value!55920 separatorToken!297)))))

(declare-fun b!853348 () Bool)

(assert (=> b!853348 (= e!561681 (inv!15 (value!55920 separatorToken!297)))))

(declare-fun b!853349 () Bool)

(assert (=> b!853349 (= e!561683 (inv!17 (value!55920 separatorToken!297)))))

(assert (= (and d!266562 c!138413) b!853345))

(assert (= (and d!266562 (not c!138413)) b!853347))

(assert (= (and b!853347 c!138412) b!853349))

(assert (= (and b!853347 (not c!138412)) b!853346))

(assert (= (and b!853346 (not res!389814)) b!853348))

(declare-fun m!1093057 () Bool)

(assert (=> b!853345 m!1093057))

(declare-fun m!1093059 () Bool)

(assert (=> b!853348 m!1093059))

(declare-fun m!1093061 () Bool)

(assert (=> b!853349 m!1093061))

(assert (=> b!853157 d!266562))

(declare-fun e!561699 () Bool)

(declare-fun b!853370 () Bool)

(declare-fun e!561701 () List!9223)

(declare-fun printList!477 (LexerInterface!1529 List!9224) List!9223)

(declare-fun $colon$colon!90 (List!9224 Token!3120) List!9224)

(assert (=> b!853370 (= e!561699 (= (printList!477 thiss!20117 ($colon$colon!90 ($colon$colon!90 (withSeparatorTokenList!59 thiss!20117 (t!95978 (tail!1039 l!5107)) separatorToken!297) separatorToken!297) (h!14609 (tail!1039 l!5107)))) e!561701))))

(declare-fun c!138420 () Bool)

(declare-fun lt!323139 () List!9224)

(assert (=> b!853370 (= c!138420 (is-Cons!9208 lt!323139))))

(assert (=> b!853370 (= lt!323139 ($colon$colon!90 ($colon$colon!90 (withSeparatorTokenList!59 thiss!20117 (t!95978 (tail!1039 l!5107)) separatorToken!297) separatorToken!297) (h!14609 (tail!1039 l!5107))))))

(declare-fun b!853371 () Bool)

(declare-fun e!561696 () Bool)

(declare-fun e!561698 () Bool)

(assert (=> b!853371 (= e!561696 e!561698)))

(declare-fun res!389823 () Bool)

(assert (=> b!853371 (=> res!389823 e!561698)))

(assert (=> b!853371 (= res!389823 (not (is-Cons!9208 (tail!1039 l!5107))))))

(declare-fun b!853372 () Bool)

(assert (=> b!853372 (= e!561701 Nil!9207)))

(declare-fun lt!323144 () List!9224)

(declare-fun d!266564 () Bool)

(declare-fun printWithSeparatorTokenList!35 (LexerInterface!1529 List!9224 Token!3120) List!9223)

(assert (=> d!266564 (= (printList!477 thiss!20117 lt!323144) (printWithSeparatorTokenList!35 thiss!20117 (tail!1039 l!5107) separatorToken!297))))

(declare-fun e!561700 () List!9224)

(assert (=> d!266564 (= lt!323144 e!561700)))

(declare-fun c!138421 () Bool)

(assert (=> d!266564 (= c!138421 (is-Cons!9208 (tail!1039 l!5107)))))

(assert (=> d!266564 e!561696))

(declare-fun res!389826 () Bool)

(assert (=> d!266564 (=> (not res!389826) (not e!561696))))

(assert (=> d!266564 (= res!389826 (isSeparator!1727 (rule!3150 separatorToken!297)))))

(assert (=> d!266564 (= (withSeparatorTokenList!59 thiss!20117 (tail!1039 l!5107) separatorToken!297) lt!323144)))

(declare-fun b!853373 () Bool)

(declare-fun ++!2385 (List!9223 List!9223) List!9223)

(declare-fun list!3619 (BalanceConc!6114) List!9223)

(declare-fun charsOf!994 (Token!3120) BalanceConc!6114)

(assert (=> b!853373 (= e!561701 (++!2385 (list!3619 (charsOf!994 (h!14609 lt!323139))) (printList!477 thiss!20117 (t!95978 lt!323139))))))

(declare-fun e!561697 () List!9223)

(declare-fun b!853374 () Bool)

(assert (=> b!853374 (= e!561698 (= (printList!477 thiss!20117 ($colon$colon!90 (withSeparatorTokenList!59 thiss!20117 (t!95978 (tail!1039 l!5107)) separatorToken!297) separatorToken!297)) e!561697))))

(declare-fun c!138422 () Bool)

(declare-fun lt!323141 () List!9224)

(assert (=> b!853374 (= c!138422 (is-Cons!9208 lt!323141))))

(assert (=> b!853374 (= lt!323141 ($colon$colon!90 (withSeparatorTokenList!59 thiss!20117 (t!95978 (tail!1039 l!5107)) separatorToken!297) separatorToken!297))))

(declare-fun b!853375 () Bool)

(assert (=> b!853375 (= e!561697 (++!2385 (list!3619 (charsOf!994 (h!14609 lt!323141))) (printList!477 thiss!20117 (t!95978 lt!323141))))))

(declare-fun b!853376 () Bool)

(assert (=> b!853376 (= e!561700 Nil!9208)))

(declare-fun b!853377 () Bool)

(declare-fun res!389824 () Bool)

(assert (=> b!853377 (=> (not res!389824) (not e!561696))))

(assert (=> b!853377 (= res!389824 e!561699)))

(declare-fun res!389825 () Bool)

(assert (=> b!853377 (=> res!389825 e!561699)))

(assert (=> b!853377 (= res!389825 (not (is-Cons!9208 (tail!1039 l!5107))))))

(declare-fun b!853378 () Bool)

(assert (=> b!853378 (= e!561697 Nil!9207)))

(declare-fun b!853379 () Bool)

(assert (=> b!853379 (= e!561700 ($colon$colon!90 ($colon$colon!90 (withSeparatorTokenList!59 thiss!20117 (t!95978 (tail!1039 l!5107)) separatorToken!297) separatorToken!297) (h!14609 (tail!1039 l!5107))))))

(declare-fun lt!323146 () List!9223)

(assert (=> b!853379 (= lt!323146 (list!3619 (charsOf!994 (h!14609 (tail!1039 l!5107)))))))

(declare-fun lt!323143 () List!9223)

(assert (=> b!853379 (= lt!323143 (list!3619 (charsOf!994 separatorToken!297)))))

(declare-fun lt!323142 () List!9223)

(assert (=> b!853379 (= lt!323142 (printList!477 thiss!20117 (withSeparatorTokenList!59 thiss!20117 (t!95978 (tail!1039 l!5107)) separatorToken!297)))))

(declare-fun lt!323145 () Unit!13716)

(declare-fun lemmaConcatAssociativity!752 (List!9223 List!9223 List!9223) Unit!13716)

(assert (=> b!853379 (= lt!323145 (lemmaConcatAssociativity!752 lt!323146 lt!323143 lt!323142))))

(assert (=> b!853379 (= (++!2385 (++!2385 lt!323146 lt!323143) lt!323142) (++!2385 lt!323146 (++!2385 lt!323143 lt!323142)))))

(declare-fun lt!323140 () Unit!13716)

(assert (=> b!853379 (= lt!323140 lt!323145)))

(assert (= (and d!266564 res!389826) b!853377))

(assert (= (and b!853377 (not res!389825)) b!853370))

(assert (= (and b!853370 c!138420) b!853373))

(assert (= (and b!853370 (not c!138420)) b!853372))

(assert (= (and b!853377 res!389824) b!853371))

(assert (= (and b!853371 (not res!389823)) b!853374))

(assert (= (and b!853374 c!138422) b!853375))

(assert (= (and b!853374 (not c!138422)) b!853378))

(assert (= (and d!266564 c!138421) b!853379))

(assert (= (and d!266564 (not c!138421)) b!853376))

(declare-fun m!1093063 () Bool)

(assert (=> b!853373 m!1093063))

(assert (=> b!853373 m!1093063))

(declare-fun m!1093065 () Bool)

(assert (=> b!853373 m!1093065))

(declare-fun m!1093067 () Bool)

(assert (=> b!853373 m!1093067))

(assert (=> b!853373 m!1093065))

(assert (=> b!853373 m!1093067))

(declare-fun m!1093069 () Bool)

(assert (=> b!853373 m!1093069))

(declare-fun m!1093071 () Bool)

(assert (=> d!266564 m!1093071))

(assert (=> d!266564 m!1092861))

(declare-fun m!1093073 () Bool)

(assert (=> d!266564 m!1093073))

(declare-fun m!1093075 () Bool)

(assert (=> b!853374 m!1093075))

(assert (=> b!853374 m!1093075))

(declare-fun m!1093077 () Bool)

(assert (=> b!853374 m!1093077))

(assert (=> b!853374 m!1093077))

(declare-fun m!1093079 () Bool)

(assert (=> b!853374 m!1093079))

(declare-fun m!1093081 () Bool)

(assert (=> b!853379 m!1093081))

(declare-fun m!1093083 () Bool)

(assert (=> b!853379 m!1093083))

(assert (=> b!853379 m!1093077))

(declare-fun m!1093085 () Bool)

(assert (=> b!853379 m!1093085))

(declare-fun m!1093087 () Bool)

(assert (=> b!853379 m!1093087))

(assert (=> b!853379 m!1093087))

(declare-fun m!1093089 () Bool)

(assert (=> b!853379 m!1093089))

(declare-fun m!1093091 () Bool)

(assert (=> b!853379 m!1093091))

(assert (=> b!853379 m!1093075))

(assert (=> b!853379 m!1093077))

(assert (=> b!853379 m!1093075))

(assert (=> b!853379 m!1093083))

(declare-fun m!1093093 () Bool)

(assert (=> b!853379 m!1093093))

(assert (=> b!853379 m!1093091))

(declare-fun m!1093095 () Bool)

(assert (=> b!853379 m!1093095))

(assert (=> b!853379 m!1093075))

(declare-fun m!1093097 () Bool)

(assert (=> b!853379 m!1093097))

(declare-fun m!1093099 () Bool)

(assert (=> b!853379 m!1093099))

(declare-fun m!1093101 () Bool)

(assert (=> b!853379 m!1093101))

(assert (=> b!853379 m!1093099))

(assert (=> b!853370 m!1093075))

(assert (=> b!853370 m!1093075))

(assert (=> b!853370 m!1093077))

(assert (=> b!853370 m!1093077))

(assert (=> b!853370 m!1093085))

(assert (=> b!853370 m!1093085))

(declare-fun m!1093103 () Bool)

(assert (=> b!853370 m!1093103))

(declare-fun m!1093105 () Bool)

(assert (=> b!853375 m!1093105))

(assert (=> b!853375 m!1093105))

(declare-fun m!1093107 () Bool)

(assert (=> b!853375 m!1093107))

(declare-fun m!1093109 () Bool)

(assert (=> b!853375 m!1093109))

(assert (=> b!853375 m!1093107))

(assert (=> b!853375 m!1093109))

(declare-fun m!1093111 () Bool)

(assert (=> b!853375 m!1093111))

(assert (=> b!853147 d!266564))

(declare-fun d!266566 () Bool)

(assert (=> d!266566 (= (tail!1039 l!5107) (t!95978 l!5107))))

(assert (=> b!853147 d!266566))

(declare-fun d!266568 () Bool)

(declare-fun res!389831 () Bool)

(declare-fun e!561704 () Bool)

(assert (=> d!266568 (=> (not res!389831) (not e!561704))))

(declare-fun isEmpty!5450 (List!9223) Bool)

(assert (=> d!266568 (= res!389831 (not (isEmpty!5450 (originalCharacters!2283 separatorToken!297))))))

(assert (=> d!266568 (= (inv!11707 separatorToken!297) e!561704)))

(declare-fun b!853384 () Bool)

(declare-fun res!389832 () Bool)

(assert (=> b!853384 (=> (not res!389832) (not e!561704))))

(declare-fun dynLambda!4303 (Int TokenValue!1793) BalanceConc!6114)

(assert (=> b!853384 (= res!389832 (= (originalCharacters!2283 separatorToken!297) (list!3619 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297))) (value!55920 separatorToken!297)))))))

(declare-fun b!853385 () Bool)

(declare-fun size!7680 (List!9223) Int)

(assert (=> b!853385 (= e!561704 (= (size!7678 separatorToken!297) (size!7680 (originalCharacters!2283 separatorToken!297))))))

(assert (= (and d!266568 res!389831) b!853384))

(assert (= (and b!853384 res!389832) b!853385))

(declare-fun b_lambda!28543 () Bool)

(assert (=> (not b_lambda!28543) (not b!853384)))

(declare-fun t!95994 () Bool)

(declare-fun tb!60091 () Bool)

(assert (=> (and b!853158 (= (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297))) (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297)))) t!95994) tb!60091))

(declare-fun b!853390 () Bool)

(declare-fun e!561707 () Bool)

(declare-fun tp!268950 () Bool)

(declare-fun inv!11711 (Conc!3050) Bool)

(assert (=> b!853390 (= e!561707 (and (inv!11711 (c!138386 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297))) (value!55920 separatorToken!297)))) tp!268950))))

(declare-fun result!69602 () Bool)

(declare-fun inv!11712 (BalanceConc!6114) Bool)

(assert (=> tb!60091 (= result!69602 (and (inv!11712 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297))) (value!55920 separatorToken!297))) e!561707))))

(assert (= tb!60091 b!853390))

(declare-fun m!1093113 () Bool)

(assert (=> b!853390 m!1093113))

(declare-fun m!1093115 () Bool)

(assert (=> tb!60091 m!1093115))

(assert (=> b!853384 t!95994))

(declare-fun b_and!75083 () Bool)

(assert (= b_and!75055 (and (=> t!95994 result!69602) b_and!75083)))

(declare-fun t!95996 () Bool)

(declare-fun tb!60093 () Bool)

(assert (=> (and b!853146 (= (toChars!2631 (transformation!1727 (h!14610 rules!2621))) (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297)))) t!95996) tb!60093))

(declare-fun result!69606 () Bool)

(assert (= result!69606 result!69602))

(assert (=> b!853384 t!95996))

(declare-fun b_and!75085 () Bool)

(assert (= b_and!75059 (and (=> t!95996 result!69606) b_and!75085)))

(declare-fun t!95998 () Bool)

(declare-fun tb!60095 () Bool)

(assert (=> (and b!853155 (= (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107)))) (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297)))) t!95998) tb!60095))

(declare-fun result!69608 () Bool)

(assert (= result!69608 result!69602))

(assert (=> b!853384 t!95998))

(declare-fun b_and!75087 () Bool)

(assert (= b_and!75063 (and (=> t!95998 result!69608) b_and!75087)))

(declare-fun m!1093117 () Bool)

(assert (=> d!266568 m!1093117))

(declare-fun m!1093119 () Bool)

(assert (=> b!853384 m!1093119))

(assert (=> b!853384 m!1093119))

(declare-fun m!1093121 () Bool)

(assert (=> b!853384 m!1093121))

(declare-fun m!1093123 () Bool)

(assert (=> b!853385 m!1093123))

(assert (=> start!76544 d!266568))

(declare-fun bs!231539 () Bool)

(declare-fun d!266570 () Bool)

(assert (= bs!231539 (and d!266570 b!853154)))

(declare-fun lambda!25556 () Int)

(assert (=> bs!231539 (not (= lambda!25556 lambda!25549))))

(declare-fun bs!231540 () Bool)

(assert (= bs!231540 (and d!266570 d!266530)))

(assert (=> bs!231540 (= lambda!25556 lambda!25555)))

(declare-fun b!853395 () Bool)

(declare-fun e!561712 () Bool)

(assert (=> b!853395 (= e!561712 true)))

(declare-fun b!853394 () Bool)

(declare-fun e!561711 () Bool)

(assert (=> b!853394 (= e!561711 e!561712)))

(declare-fun b!853393 () Bool)

(declare-fun e!561710 () Bool)

(assert (=> b!853393 (= e!561710 e!561711)))

(assert (=> d!266570 e!561710))

(assert (= b!853394 b!853395))

(assert (= b!853393 b!853394))

(assert (= (and d!266570 (is-Cons!9209 rules!2621)) b!853393))

(assert (=> b!853395 (< (dynLambda!4300 order!5917 (toValue!2772 (transformation!1727 (h!14610 rules!2621)))) (dynLambda!4301 order!5919 lambda!25556))))

(assert (=> b!853395 (< (dynLambda!4302 order!5921 (toChars!2631 (transformation!1727 (h!14610 rules!2621)))) (dynLambda!4301 order!5919 lambda!25556))))

(assert (=> d!266570 true))

(declare-fun lt!323147 () Bool)

(assert (=> d!266570 (= lt!323147 (forall!2180 lt!323082 lambda!25556))))

(declare-fun e!561709 () Bool)

(assert (=> d!266570 (= lt!323147 e!561709)))

(declare-fun res!389834 () Bool)

(assert (=> d!266570 (=> res!389834 e!561709)))

(assert (=> d!266570 (= res!389834 (not (is-Cons!9208 lt!323082)))))

(assert (=> d!266570 (not (isEmpty!5448 rules!2621))))

(assert (=> d!266570 (= (rulesProduceEachTokenIndividuallyList!417 thiss!20117 rules!2621 lt!323082) lt!323147)))

(declare-fun b!853391 () Bool)

(declare-fun e!561708 () Bool)

(assert (=> b!853391 (= e!561709 e!561708)))

(declare-fun res!389833 () Bool)

(assert (=> b!853391 (=> (not res!389833) (not e!561708))))

(assert (=> b!853391 (= res!389833 (rulesProduceIndividualToken!593 thiss!20117 rules!2621 (h!14609 lt!323082)))))

(declare-fun b!853392 () Bool)

(assert (=> b!853392 (= e!561708 (rulesProduceEachTokenIndividuallyList!417 thiss!20117 rules!2621 (t!95978 lt!323082)))))

(assert (= (and d!266570 (not res!389834)) b!853391))

(assert (= (and b!853391 res!389833) b!853392))

(declare-fun m!1093125 () Bool)

(assert (=> d!266570 m!1093125))

(assert (=> d!266570 m!1092867))

(declare-fun m!1093127 () Bool)

(assert (=> b!853391 m!1093127))

(declare-fun m!1093129 () Bool)

(assert (=> b!853392 m!1093129))

(assert (=> b!853161 d!266570))

(declare-fun e!561716 () Bool)

(declare-fun e!561718 () List!9223)

(declare-fun b!853396 () Bool)

(assert (=> b!853396 (= e!561716 (= (printList!477 thiss!20117 ($colon$colon!90 ($colon$colon!90 (withSeparatorTokenList!59 thiss!20117 (t!95978 l!5107) separatorToken!297) separatorToken!297) (h!14609 l!5107))) e!561718))))

(declare-fun c!138423 () Bool)

(declare-fun lt!323148 () List!9224)

(assert (=> b!853396 (= c!138423 (is-Cons!9208 lt!323148))))

(assert (=> b!853396 (= lt!323148 ($colon$colon!90 ($colon$colon!90 (withSeparatorTokenList!59 thiss!20117 (t!95978 l!5107) separatorToken!297) separatorToken!297) (h!14609 l!5107)))))

(declare-fun b!853397 () Bool)

(declare-fun e!561713 () Bool)

(declare-fun e!561715 () Bool)

(assert (=> b!853397 (= e!561713 e!561715)))

(declare-fun res!389835 () Bool)

(assert (=> b!853397 (=> res!389835 e!561715)))

(assert (=> b!853397 (= res!389835 (not (is-Cons!9208 l!5107)))))

(declare-fun b!853398 () Bool)

(assert (=> b!853398 (= e!561718 Nil!9207)))

(declare-fun d!266572 () Bool)

(declare-fun lt!323153 () List!9224)

(assert (=> d!266572 (= (printList!477 thiss!20117 lt!323153) (printWithSeparatorTokenList!35 thiss!20117 l!5107 separatorToken!297))))

(declare-fun e!561717 () List!9224)

(assert (=> d!266572 (= lt!323153 e!561717)))

(declare-fun c!138424 () Bool)

(assert (=> d!266572 (= c!138424 (is-Cons!9208 l!5107))))

(assert (=> d!266572 e!561713))

(declare-fun res!389838 () Bool)

(assert (=> d!266572 (=> (not res!389838) (not e!561713))))

(assert (=> d!266572 (= res!389838 (isSeparator!1727 (rule!3150 separatorToken!297)))))

(assert (=> d!266572 (= (withSeparatorTokenList!59 thiss!20117 l!5107 separatorToken!297) lt!323153)))

(declare-fun b!853399 () Bool)

(assert (=> b!853399 (= e!561718 (++!2385 (list!3619 (charsOf!994 (h!14609 lt!323148))) (printList!477 thiss!20117 (t!95978 lt!323148))))))

(declare-fun b!853400 () Bool)

(declare-fun e!561714 () List!9223)

(assert (=> b!853400 (= e!561715 (= (printList!477 thiss!20117 ($colon$colon!90 (withSeparatorTokenList!59 thiss!20117 (t!95978 l!5107) separatorToken!297) separatorToken!297)) e!561714))))

(declare-fun c!138425 () Bool)

(declare-fun lt!323150 () List!9224)

(assert (=> b!853400 (= c!138425 (is-Cons!9208 lt!323150))))

(assert (=> b!853400 (= lt!323150 ($colon$colon!90 (withSeparatorTokenList!59 thiss!20117 (t!95978 l!5107) separatorToken!297) separatorToken!297))))

(declare-fun b!853401 () Bool)

(assert (=> b!853401 (= e!561714 (++!2385 (list!3619 (charsOf!994 (h!14609 lt!323150))) (printList!477 thiss!20117 (t!95978 lt!323150))))))

(declare-fun b!853402 () Bool)

(assert (=> b!853402 (= e!561717 Nil!9208)))

(declare-fun b!853403 () Bool)

(declare-fun res!389836 () Bool)

(assert (=> b!853403 (=> (not res!389836) (not e!561713))))

(assert (=> b!853403 (= res!389836 e!561716)))

(declare-fun res!389837 () Bool)

(assert (=> b!853403 (=> res!389837 e!561716)))

(assert (=> b!853403 (= res!389837 (not (is-Cons!9208 l!5107)))))

(declare-fun b!853404 () Bool)

(assert (=> b!853404 (= e!561714 Nil!9207)))

(declare-fun b!853405 () Bool)

(assert (=> b!853405 (= e!561717 ($colon$colon!90 ($colon$colon!90 (withSeparatorTokenList!59 thiss!20117 (t!95978 l!5107) separatorToken!297) separatorToken!297) (h!14609 l!5107)))))

(declare-fun lt!323155 () List!9223)

(assert (=> b!853405 (= lt!323155 (list!3619 (charsOf!994 (h!14609 l!5107))))))

(declare-fun lt!323152 () List!9223)

(assert (=> b!853405 (= lt!323152 (list!3619 (charsOf!994 separatorToken!297)))))

(declare-fun lt!323151 () List!9223)

(assert (=> b!853405 (= lt!323151 (printList!477 thiss!20117 (withSeparatorTokenList!59 thiss!20117 (t!95978 l!5107) separatorToken!297)))))

(declare-fun lt!323154 () Unit!13716)

(assert (=> b!853405 (= lt!323154 (lemmaConcatAssociativity!752 lt!323155 lt!323152 lt!323151))))

(assert (=> b!853405 (= (++!2385 (++!2385 lt!323155 lt!323152) lt!323151) (++!2385 lt!323155 (++!2385 lt!323152 lt!323151)))))

(declare-fun lt!323149 () Unit!13716)

(assert (=> b!853405 (= lt!323149 lt!323154)))

(assert (= (and d!266572 res!389838) b!853403))

(assert (= (and b!853403 (not res!389837)) b!853396))

(assert (= (and b!853396 c!138423) b!853399))

(assert (= (and b!853396 (not c!138423)) b!853398))

(assert (= (and b!853403 res!389836) b!853397))

(assert (= (and b!853397 (not res!389835)) b!853400))

(assert (= (and b!853400 c!138425) b!853401))

(assert (= (and b!853400 (not c!138425)) b!853404))

(assert (= (and d!266572 c!138424) b!853405))

(assert (= (and d!266572 (not c!138424)) b!853402))

(declare-fun m!1093131 () Bool)

(assert (=> b!853399 m!1093131))

(assert (=> b!853399 m!1093131))

(declare-fun m!1093133 () Bool)

(assert (=> b!853399 m!1093133))

(declare-fun m!1093135 () Bool)

(assert (=> b!853399 m!1093135))

(assert (=> b!853399 m!1093133))

(assert (=> b!853399 m!1093135))

(declare-fun m!1093137 () Bool)

(assert (=> b!853399 m!1093137))

(declare-fun m!1093139 () Bool)

(assert (=> d!266572 m!1093139))

(declare-fun m!1093141 () Bool)

(assert (=> d!266572 m!1093141))

(declare-fun m!1093143 () Bool)

(assert (=> b!853400 m!1093143))

(assert (=> b!853400 m!1093143))

(declare-fun m!1093145 () Bool)

(assert (=> b!853400 m!1093145))

(assert (=> b!853400 m!1093145))

(declare-fun m!1093147 () Bool)

(assert (=> b!853400 m!1093147))

(declare-fun m!1093149 () Bool)

(assert (=> b!853405 m!1093149))

(declare-fun m!1093151 () Bool)

(assert (=> b!853405 m!1093151))

(assert (=> b!853405 m!1093145))

(declare-fun m!1093153 () Bool)

(assert (=> b!853405 m!1093153))

(declare-fun m!1093155 () Bool)

(assert (=> b!853405 m!1093155))

(assert (=> b!853405 m!1093155))

(declare-fun m!1093157 () Bool)

(assert (=> b!853405 m!1093157))

(assert (=> b!853405 m!1093091))

(assert (=> b!853405 m!1093143))

(assert (=> b!853405 m!1093145))

(assert (=> b!853405 m!1093143))

(assert (=> b!853405 m!1093151))

(declare-fun m!1093159 () Bool)

(assert (=> b!853405 m!1093159))

(assert (=> b!853405 m!1093091))

(assert (=> b!853405 m!1093095))

(assert (=> b!853405 m!1093143))

(declare-fun m!1093161 () Bool)

(assert (=> b!853405 m!1093161))

(declare-fun m!1093163 () Bool)

(assert (=> b!853405 m!1093163))

(declare-fun m!1093165 () Bool)

(assert (=> b!853405 m!1093165))

(assert (=> b!853405 m!1093163))

(assert (=> b!853396 m!1093143))

(assert (=> b!853396 m!1093143))

(assert (=> b!853396 m!1093145))

(assert (=> b!853396 m!1093145))

(assert (=> b!853396 m!1093153))

(assert (=> b!853396 m!1093153))

(declare-fun m!1093167 () Bool)

(assert (=> b!853396 m!1093167))

(declare-fun m!1093169 () Bool)

(assert (=> b!853401 m!1093169))

(assert (=> b!853401 m!1093169))

(declare-fun m!1093171 () Bool)

(assert (=> b!853401 m!1093171))

(declare-fun m!1093173 () Bool)

(assert (=> b!853401 m!1093173))

(assert (=> b!853401 m!1093171))

(assert (=> b!853401 m!1093173))

(declare-fun m!1093175 () Bool)

(assert (=> b!853401 m!1093175))

(assert (=> b!853161 d!266572))

(declare-fun d!266574 () Bool)

(assert (=> d!266574 (rulesProduceEachTokenIndividuallyList!417 thiss!20117 rules!2621 (withSeparatorTokenList!59 thiss!20117 l!5107 separatorToken!297))))

(declare-fun lt!323160 () Unit!13716)

(declare-fun choose!5035 (LexerInterface!1529 List!9225 List!9224 Token!3120) Unit!13716)

(assert (=> d!266574 (= lt!323160 (choose!5035 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(assert (=> d!266574 (not (isEmpty!5448 rules!2621))))

(assert (=> d!266574 (= (withSeparatorTokenListPreservesRulesProduceTokens!59 thiss!20117 rules!2621 l!5107 separatorToken!297) lt!323160)))

(declare-fun bs!231541 () Bool)

(assert (= bs!231541 d!266574))

(assert (=> bs!231541 m!1092879))

(assert (=> bs!231541 m!1092879))

(declare-fun m!1093177 () Bool)

(assert (=> bs!231541 m!1093177))

(declare-fun m!1093179 () Bool)

(assert (=> bs!231541 m!1093179))

(assert (=> bs!231541 m!1092867))

(assert (=> b!853161 d!266574))

(declare-fun d!266576 () Bool)

(declare-fun res!389847 () Bool)

(declare-fun e!561727 () Bool)

(assert (=> d!266576 (=> res!389847 e!561727)))

(assert (=> d!266576 (= res!389847 (not (is-Cons!9209 rules!2621)))))

(assert (=> d!266576 (= (sepAndNonSepRulesDisjointChars!527 rules!2621 rules!2621) e!561727)))

(declare-fun b!853414 () Bool)

(declare-fun e!561728 () Bool)

(assert (=> b!853414 (= e!561727 e!561728)))

(declare-fun res!389848 () Bool)

(assert (=> b!853414 (=> (not res!389848) (not e!561728))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!240 (Rule!3254 List!9225) Bool)

(assert (=> b!853414 (= res!389848 (ruleDisjointCharsFromAllFromOtherType!240 (h!14610 rules!2621) rules!2621))))

(declare-fun b!853415 () Bool)

(assert (=> b!853415 (= e!561728 (sepAndNonSepRulesDisjointChars!527 rules!2621 (t!95979 rules!2621)))))

(assert (= (and d!266576 (not res!389847)) b!853414))

(assert (= (and b!853414 res!389848) b!853415))

(declare-fun m!1093181 () Bool)

(assert (=> b!853414 m!1093181))

(declare-fun m!1093183 () Bool)

(assert (=> b!853415 m!1093183))

(assert (=> b!853150 d!266576))

(declare-fun d!266578 () Bool)

(declare-fun res!389849 () Bool)

(declare-fun e!561729 () Bool)

(assert (=> d!266578 (=> (not res!389849) (not e!561729))))

(assert (=> d!266578 (= res!389849 (not (isEmpty!5450 (originalCharacters!2283 (h!14609 l!5107)))))))

(assert (=> d!266578 (= (inv!11707 (h!14609 l!5107)) e!561729)))

(declare-fun b!853416 () Bool)

(declare-fun res!389850 () Bool)

(assert (=> b!853416 (=> (not res!389850) (not e!561729))))

(assert (=> b!853416 (= res!389850 (= (originalCharacters!2283 (h!14609 l!5107)) (list!3619 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107)))) (value!55920 (h!14609 l!5107))))))))

(declare-fun b!853417 () Bool)

(assert (=> b!853417 (= e!561729 (= (size!7678 (h!14609 l!5107)) (size!7680 (originalCharacters!2283 (h!14609 l!5107)))))))

(assert (= (and d!266578 res!389849) b!853416))

(assert (= (and b!853416 res!389850) b!853417))

(declare-fun b_lambda!28545 () Bool)

(assert (=> (not b_lambda!28545) (not b!853416)))

(declare-fun t!96002 () Bool)

(declare-fun tb!60097 () Bool)

(assert (=> (and b!853158 (= (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107))))) t!96002) tb!60097))

(declare-fun b!853418 () Bool)

(declare-fun e!561730 () Bool)

(declare-fun tp!268951 () Bool)

(assert (=> b!853418 (= e!561730 (and (inv!11711 (c!138386 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107)))) (value!55920 (h!14609 l!5107))))) tp!268951))))

(declare-fun result!69610 () Bool)

(assert (=> tb!60097 (= result!69610 (and (inv!11712 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107)))) (value!55920 (h!14609 l!5107)))) e!561730))))

(assert (= tb!60097 b!853418))

(declare-fun m!1093185 () Bool)

(assert (=> b!853418 m!1093185))

(declare-fun m!1093187 () Bool)

(assert (=> tb!60097 m!1093187))

(assert (=> b!853416 t!96002))

(declare-fun b_and!75089 () Bool)

(assert (= b_and!75083 (and (=> t!96002 result!69610) b_and!75089)))

(declare-fun tb!60099 () Bool)

(declare-fun t!96004 () Bool)

(assert (=> (and b!853146 (= (toChars!2631 (transformation!1727 (h!14610 rules!2621))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107))))) t!96004) tb!60099))

(declare-fun result!69612 () Bool)

(assert (= result!69612 result!69610))

(assert (=> b!853416 t!96004))

(declare-fun b_and!75091 () Bool)

(assert (= b_and!75085 (and (=> t!96004 result!69612) b_and!75091)))

(declare-fun t!96006 () Bool)

(declare-fun tb!60101 () Bool)

(assert (=> (and b!853155 (= (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107)))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107))))) t!96006) tb!60101))

(declare-fun result!69614 () Bool)

(assert (= result!69614 result!69610))

(assert (=> b!853416 t!96006))

(declare-fun b_and!75093 () Bool)

(assert (= b_and!75087 (and (=> t!96006 result!69614) b_and!75093)))

(declare-fun m!1093189 () Bool)

(assert (=> d!266578 m!1093189))

(declare-fun m!1093191 () Bool)

(assert (=> b!853416 m!1093191))

(assert (=> b!853416 m!1093191))

(declare-fun m!1093193 () Bool)

(assert (=> b!853416 m!1093193))

(declare-fun m!1093195 () Bool)

(assert (=> b!853417 m!1093195))

(assert (=> b!853151 d!266578))

(declare-fun d!266580 () Bool)

(assert (=> d!266580 (= (isEmpty!5448 rules!2621) (is-Nil!9209 rules!2621))))

(assert (=> b!853149 d!266580))

(declare-fun d!266582 () Bool)

(assert (=> d!266582 (= (inv!11704 (tag!1989 (rule!3150 (h!14609 l!5107)))) (= (mod (str.len (value!55919 (tag!1989 (rule!3150 (h!14609 l!5107))))) 2) 0))))

(assert (=> b!853160 d!266582))

(declare-fun d!266584 () Bool)

(declare-fun res!389853 () Bool)

(declare-fun e!561733 () Bool)

(assert (=> d!266584 (=> (not res!389853) (not e!561733))))

(declare-fun semiInverseModEq!673 (Int Int) Bool)

(assert (=> d!266584 (= res!389853 (semiInverseModEq!673 (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107)))) (toValue!2772 (transformation!1727 (rule!3150 (h!14609 l!5107))))))))

(assert (=> d!266584 (= (inv!11708 (transformation!1727 (rule!3150 (h!14609 l!5107)))) e!561733)))

(declare-fun b!853421 () Bool)

(declare-fun equivClasses!640 (Int Int) Bool)

(assert (=> b!853421 (= e!561733 (equivClasses!640 (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107)))) (toValue!2772 (transformation!1727 (rule!3150 (h!14609 l!5107))))))))

(assert (= (and d!266584 res!389853) b!853421))

(declare-fun m!1093197 () Bool)

(assert (=> d!266584 m!1093197))

(declare-fun m!1093199 () Bool)

(assert (=> b!853421 m!1093199))

(assert (=> b!853160 d!266584))

(declare-fun d!266586 () Bool)

(assert (=> d!266586 (= (inv!11704 (tag!1989 (h!14610 rules!2621))) (= (mod (str.len (value!55919 (tag!1989 (h!14610 rules!2621)))) 2) 0))))

(assert (=> b!853164 d!266586))

(declare-fun d!266588 () Bool)

(declare-fun res!389854 () Bool)

(declare-fun e!561734 () Bool)

(assert (=> d!266588 (=> (not res!389854) (not e!561734))))

(assert (=> d!266588 (= res!389854 (semiInverseModEq!673 (toChars!2631 (transformation!1727 (h!14610 rules!2621))) (toValue!2772 (transformation!1727 (h!14610 rules!2621)))))))

(assert (=> d!266588 (= (inv!11708 (transformation!1727 (h!14610 rules!2621))) e!561734)))

(declare-fun b!853422 () Bool)

(assert (=> b!853422 (= e!561734 (equivClasses!640 (toChars!2631 (transformation!1727 (h!14610 rules!2621))) (toValue!2772 (transformation!1727 (h!14610 rules!2621)))))))

(assert (= (and d!266588 res!389854) b!853422))

(declare-fun m!1093201 () Bool)

(assert (=> d!266588 m!1093201))

(declare-fun m!1093203 () Bool)

(assert (=> b!853422 m!1093203))

(assert (=> b!853164 d!266588))

(declare-fun d!266590 () Bool)

(declare-fun res!389857 () Bool)

(declare-fun e!561737 () Bool)

(assert (=> d!266590 (=> (not res!389857) (not e!561737))))

(declare-fun rulesValid!604 (LexerInterface!1529 List!9225) Bool)

(assert (=> d!266590 (= res!389857 (rulesValid!604 thiss!20117 rules!2621))))

(assert (=> d!266590 (= (rulesInvariant!1405 thiss!20117 rules!2621) e!561737)))

(declare-fun b!853425 () Bool)

(declare-datatypes ((List!9230 0))(
  ( (Nil!9214) (Cons!9214 (h!14615 String!10865) (t!96016 List!9230)) )
))
(declare-fun noDuplicateTag!604 (LexerInterface!1529 List!9225 List!9230) Bool)

(assert (=> b!853425 (= e!561737 (noDuplicateTag!604 thiss!20117 rules!2621 Nil!9214))))

(assert (= (and d!266590 res!389857) b!853425))

(declare-fun m!1093205 () Bool)

(assert (=> d!266590 m!1093205))

(declare-fun m!1093207 () Bool)

(assert (=> b!853425 m!1093207))

(assert (=> b!853162 d!266590))

(declare-fun d!266592 () Bool)

(assert (=> d!266592 (= (inv!11704 (tag!1989 (rule!3150 separatorToken!297))) (= (mod (str.len (value!55919 (tag!1989 (rule!3150 separatorToken!297)))) 2) 0))))

(assert (=> b!853163 d!266592))

(declare-fun d!266594 () Bool)

(declare-fun res!389858 () Bool)

(declare-fun e!561738 () Bool)

(assert (=> d!266594 (=> (not res!389858) (not e!561738))))

(assert (=> d!266594 (= res!389858 (semiInverseModEq!673 (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297))) (toValue!2772 (transformation!1727 (rule!3150 separatorToken!297)))))))

(assert (=> d!266594 (= (inv!11708 (transformation!1727 (rule!3150 separatorToken!297))) e!561738)))

(declare-fun b!853426 () Bool)

(assert (=> b!853426 (= e!561738 (equivClasses!640 (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297))) (toValue!2772 (transformation!1727 (rule!3150 separatorToken!297)))))))

(assert (= (and d!266594 res!389858) b!853426))

(declare-fun m!1093209 () Bool)

(assert (=> d!266594 m!1093209))

(declare-fun m!1093211 () Bool)

(assert (=> b!853426 m!1093211))

(assert (=> b!853163 d!266594))

(declare-fun d!266596 () Bool)

(declare-fun lt!323166 () Bool)

(declare-fun e!561744 () Bool)

(assert (=> d!266596 (= lt!323166 e!561744)))

(declare-fun res!389865 () Bool)

(assert (=> d!266596 (=> (not res!389865) (not e!561744))))

(declare-datatypes ((IArray!6109 0))(
  ( (IArray!6110 (innerList!3112 List!9224)) )
))
(declare-datatypes ((Conc!3052 0))(
  ( (Node!3052 (left!6817 Conc!3052) (right!7147 Conc!3052) (csize!6334 Int) (cheight!3263 Int)) (Leaf!4504 (xs!5741 IArray!6109) (csize!6335 Int)) (Empty!3052) )
))
(declare-datatypes ((BalanceConc!6118 0))(
  ( (BalanceConc!6119 (c!138429 Conc!3052)) )
))
(declare-fun list!3620 (BalanceConc!6118) List!9224)

(declare-datatypes ((tuple2!10394 0))(
  ( (tuple2!10395 (_1!6023 BalanceConc!6118) (_2!6023 BalanceConc!6114)) )
))
(declare-fun lex!621 (LexerInterface!1529 List!9225 BalanceConc!6114) tuple2!10394)

(declare-fun print!558 (LexerInterface!1529 BalanceConc!6118) BalanceConc!6114)

(declare-fun singletonSeq!544 (Token!3120) BalanceConc!6118)

(assert (=> d!266596 (= res!389865 (= (list!3620 (_1!6023 (lex!621 thiss!20117 rules!2621 (print!558 thiss!20117 (singletonSeq!544 separatorToken!297))))) (list!3620 (singletonSeq!544 separatorToken!297))))))

(declare-fun e!561743 () Bool)

(assert (=> d!266596 (= lt!323166 e!561743)))

(declare-fun res!389867 () Bool)

(assert (=> d!266596 (=> (not res!389867) (not e!561743))))

(declare-fun lt!323165 () tuple2!10394)

(declare-fun size!7681 (BalanceConc!6118) Int)

(assert (=> d!266596 (= res!389867 (= (size!7681 (_1!6023 lt!323165)) 1))))

(assert (=> d!266596 (= lt!323165 (lex!621 thiss!20117 rules!2621 (print!558 thiss!20117 (singletonSeq!544 separatorToken!297))))))

(assert (=> d!266596 (not (isEmpty!5448 rules!2621))))

(assert (=> d!266596 (= (rulesProduceIndividualToken!593 thiss!20117 rules!2621 separatorToken!297) lt!323166)))

(declare-fun b!853433 () Bool)

(declare-fun res!389866 () Bool)

(assert (=> b!853433 (=> (not res!389866) (not e!561743))))

(declare-fun apply!1902 (BalanceConc!6118 Int) Token!3120)

(assert (=> b!853433 (= res!389866 (= (apply!1902 (_1!6023 lt!323165) 0) separatorToken!297))))

(declare-fun b!853434 () Bool)

(declare-fun isEmpty!5451 (BalanceConc!6114) Bool)

(assert (=> b!853434 (= e!561743 (isEmpty!5451 (_2!6023 lt!323165)))))

(declare-fun b!853435 () Bool)

(assert (=> b!853435 (= e!561744 (isEmpty!5451 (_2!6023 (lex!621 thiss!20117 rules!2621 (print!558 thiss!20117 (singletonSeq!544 separatorToken!297))))))))

(assert (= (and d!266596 res!389867) b!853433))

(assert (= (and b!853433 res!389866) b!853434))

(assert (= (and d!266596 res!389865) b!853435))

(declare-fun m!1093213 () Bool)

(assert (=> d!266596 m!1093213))

(declare-fun m!1093215 () Bool)

(assert (=> d!266596 m!1093215))

(assert (=> d!266596 m!1092867))

(declare-fun m!1093217 () Bool)

(assert (=> d!266596 m!1093217))

(declare-fun m!1093219 () Bool)

(assert (=> d!266596 m!1093219))

(assert (=> d!266596 m!1093215))

(declare-fun m!1093221 () Bool)

(assert (=> d!266596 m!1093221))

(declare-fun m!1093223 () Bool)

(assert (=> d!266596 m!1093223))

(assert (=> d!266596 m!1093215))

(assert (=> d!266596 m!1093217))

(declare-fun m!1093225 () Bool)

(assert (=> b!853433 m!1093225))

(declare-fun m!1093227 () Bool)

(assert (=> b!853434 m!1093227))

(assert (=> b!853435 m!1093215))

(assert (=> b!853435 m!1093215))

(assert (=> b!853435 m!1093217))

(assert (=> b!853435 m!1093217))

(assert (=> b!853435 m!1093219))

(declare-fun m!1093229 () Bool)

(assert (=> b!853435 m!1093229))

(assert (=> b!853156 d!266596))

(declare-fun d!266598 () Bool)

(declare-fun res!389872 () Bool)

(declare-fun e!561749 () Bool)

(assert (=> d!266598 (=> res!389872 e!561749)))

(assert (=> d!266598 (= res!389872 (is-Nil!9208 l!5107))))

(assert (=> d!266598 (= (forall!2180 l!5107 lambda!25549) e!561749)))

(declare-fun b!853440 () Bool)

(declare-fun e!561750 () Bool)

(assert (=> b!853440 (= e!561749 e!561750)))

(declare-fun res!389873 () Bool)

(assert (=> b!853440 (=> (not res!389873) (not e!561750))))

(declare-fun dynLambda!4304 (Int Token!3120) Bool)

(assert (=> b!853440 (= res!389873 (dynLambda!4304 lambda!25549 (h!14609 l!5107)))))

(declare-fun b!853441 () Bool)

(assert (=> b!853441 (= e!561750 (forall!2180 (t!95978 l!5107) lambda!25549))))

(assert (= (and d!266598 (not res!389872)) b!853440))

(assert (= (and b!853440 res!389873) b!853441))

(declare-fun b_lambda!28547 () Bool)

(assert (=> (not b_lambda!28547) (not b!853440)))

(declare-fun m!1093231 () Bool)

(assert (=> b!853440 m!1093231))

(declare-fun m!1093233 () Bool)

(assert (=> b!853441 m!1093233))

(assert (=> b!853154 d!266598))

(declare-fun b!853446 () Bool)

(declare-fun e!561753 () Bool)

(declare-fun tp_is_empty!3979 () Bool)

(declare-fun tp!268954 () Bool)

(assert (=> b!853446 (= e!561753 (and tp_is_empty!3979 tp!268954))))

(assert (=> b!853159 (= tp!268904 e!561753)))

(assert (= (and b!853159 (is-Cons!9207 (originalCharacters!2283 (h!14609 l!5107)))) b!853446))

(declare-fun b!853457 () Bool)

(declare-fun e!561756 () Bool)

(assert (=> b!853457 (= e!561756 tp_is_empty!3979)))

(assert (=> b!853164 (= tp!268900 e!561756)))

(declare-fun b!853458 () Bool)

(declare-fun tp!268965 () Bool)

(declare-fun tp!268966 () Bool)

(assert (=> b!853458 (= e!561756 (and tp!268965 tp!268966))))

(declare-fun b!853460 () Bool)

(declare-fun tp!268967 () Bool)

(declare-fun tp!268969 () Bool)

(assert (=> b!853460 (= e!561756 (and tp!268967 tp!268969))))

(declare-fun b!853459 () Bool)

(declare-fun tp!268968 () Bool)

(assert (=> b!853459 (= e!561756 tp!268968)))

(assert (= (and b!853164 (is-ElementMatch!2160 (regex!1727 (h!14610 rules!2621)))) b!853457))

(assert (= (and b!853164 (is-Concat!3954 (regex!1727 (h!14610 rules!2621)))) b!853458))

(assert (= (and b!853164 (is-Star!2160 (regex!1727 (h!14610 rules!2621)))) b!853459))

(assert (= (and b!853164 (is-Union!2160 (regex!1727 (h!14610 rules!2621)))) b!853460))

(declare-fun b!853461 () Bool)

(declare-fun e!561757 () Bool)

(declare-fun tp!268970 () Bool)

(assert (=> b!853461 (= e!561757 (and tp_is_empty!3979 tp!268970))))

(assert (=> b!853157 (= tp!268905 e!561757)))

(assert (= (and b!853157 (is-Cons!9207 (originalCharacters!2283 separatorToken!297))) b!853461))

(declare-fun b!853462 () Bool)

(declare-fun e!561758 () Bool)

(assert (=> b!853462 (= e!561758 tp_is_empty!3979)))

(assert (=> b!853163 (= tp!268899 e!561758)))

(declare-fun b!853463 () Bool)

(declare-fun tp!268971 () Bool)

(declare-fun tp!268972 () Bool)

(assert (=> b!853463 (= e!561758 (and tp!268971 tp!268972))))

(declare-fun b!853465 () Bool)

(declare-fun tp!268973 () Bool)

(declare-fun tp!268975 () Bool)

(assert (=> b!853465 (= e!561758 (and tp!268973 tp!268975))))

(declare-fun b!853464 () Bool)

(declare-fun tp!268974 () Bool)

(assert (=> b!853464 (= e!561758 tp!268974)))

(assert (= (and b!853163 (is-ElementMatch!2160 (regex!1727 (rule!3150 separatorToken!297)))) b!853462))

(assert (= (and b!853163 (is-Concat!3954 (regex!1727 (rule!3150 separatorToken!297)))) b!853463))

(assert (= (and b!853163 (is-Star!2160 (regex!1727 (rule!3150 separatorToken!297)))) b!853464))

(assert (= (and b!853163 (is-Union!2160 (regex!1727 (rule!3150 separatorToken!297)))) b!853465))

(declare-fun b!853476 () Bool)

(declare-fun b_free!25853 () Bool)

(declare-fun b_next!25917 () Bool)

(assert (=> b!853476 (= b_free!25853 (not b_next!25917))))

(declare-fun tp!268987 () Bool)

(declare-fun b_and!75095 () Bool)

(assert (=> b!853476 (= tp!268987 b_and!75095)))

(declare-fun b_free!25855 () Bool)

(declare-fun b_next!25919 () Bool)

(assert (=> b!853476 (= b_free!25855 (not b_next!25919))))

(declare-fun tb!60103 () Bool)

(declare-fun t!96009 () Bool)

(assert (=> (and b!853476 (= (toChars!2631 (transformation!1727 (h!14610 (t!95979 rules!2621)))) (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297)))) t!96009) tb!60103))

(declare-fun result!69622 () Bool)

(assert (= result!69622 result!69602))

(assert (=> b!853384 t!96009))

(declare-fun t!96011 () Bool)

(declare-fun tb!60105 () Bool)

(assert (=> (and b!853476 (= (toChars!2631 (transformation!1727 (h!14610 (t!95979 rules!2621)))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107))))) t!96011) tb!60105))

(declare-fun result!69624 () Bool)

(assert (= result!69624 result!69610))

(assert (=> b!853416 t!96011))

(declare-fun b_and!75097 () Bool)

(declare-fun tp!268986 () Bool)

(assert (=> b!853476 (= tp!268986 (and (=> t!96009 result!69622) (=> t!96011 result!69624) b_and!75097))))

(declare-fun e!561769 () Bool)

(assert (=> b!853476 (= e!561769 (and tp!268987 tp!268986))))

(declare-fun b!853475 () Bool)

(declare-fun tp!268985 () Bool)

(declare-fun e!561770 () Bool)

(assert (=> b!853475 (= e!561770 (and tp!268985 (inv!11704 (tag!1989 (h!14610 (t!95979 rules!2621)))) (inv!11708 (transformation!1727 (h!14610 (t!95979 rules!2621)))) e!561769))))

(declare-fun b!853474 () Bool)

(declare-fun e!561768 () Bool)

(declare-fun tp!268984 () Bool)

(assert (=> b!853474 (= e!561768 (and e!561770 tp!268984))))

(assert (=> b!853152 (= tp!268902 e!561768)))

(assert (= b!853475 b!853476))

(assert (= b!853474 b!853475))

(assert (= (and b!853152 (is-Cons!9209 (t!95979 rules!2621))) b!853474))

(declare-fun m!1093235 () Bool)

(assert (=> b!853475 m!1093235))

(declare-fun m!1093237 () Bool)

(assert (=> b!853475 m!1093237))

(declare-fun b!853490 () Bool)

(declare-fun b_free!25857 () Bool)

(declare-fun b_next!25921 () Bool)

(assert (=> b!853490 (= b_free!25857 (not b_next!25921))))

(declare-fun tp!268999 () Bool)

(declare-fun b_and!75099 () Bool)

(assert (=> b!853490 (= tp!268999 b_and!75099)))

(declare-fun b_free!25859 () Bool)

(declare-fun b_next!25923 () Bool)

(assert (=> b!853490 (= b_free!25859 (not b_next!25923))))

(declare-fun tb!60107 () Bool)

(declare-fun t!96013 () Bool)

(assert (=> (and b!853490 (= (toChars!2631 (transformation!1727 (rule!3150 (h!14609 (t!95978 l!5107))))) (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297)))) t!96013) tb!60107))

(declare-fun result!69628 () Bool)

(assert (= result!69628 result!69602))

(assert (=> b!853384 t!96013))

(declare-fun t!96015 () Bool)

(declare-fun tb!60109 () Bool)

(assert (=> (and b!853490 (= (toChars!2631 (transformation!1727 (rule!3150 (h!14609 (t!95978 l!5107))))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107))))) t!96015) tb!60109))

(declare-fun result!69630 () Bool)

(assert (= result!69630 result!69610))

(assert (=> b!853416 t!96015))

(declare-fun tp!268998 () Bool)

(declare-fun b_and!75101 () Bool)

(assert (=> b!853490 (= tp!268998 (and (=> t!96013 result!69628) (=> t!96015 result!69630) b_and!75101))))

(declare-fun e!561783 () Bool)

(declare-fun tp!269001 () Bool)

(declare-fun e!561785 () Bool)

(declare-fun b!853488 () Bool)

(assert (=> b!853488 (= e!561783 (and (inv!21 (value!55920 (h!14609 (t!95978 l!5107)))) e!561785 tp!269001))))

(declare-fun e!561788 () Bool)

(assert (=> b!853490 (= e!561788 (and tp!268999 tp!268998))))

(declare-fun tp!269002 () Bool)

(declare-fun b!853487 () Bool)

(declare-fun e!561784 () Bool)

(assert (=> b!853487 (= e!561784 (and (inv!11707 (h!14609 (t!95978 l!5107))) e!561783 tp!269002))))

(declare-fun tp!269000 () Bool)

(declare-fun b!853489 () Bool)

(assert (=> b!853489 (= e!561785 (and tp!269000 (inv!11704 (tag!1989 (rule!3150 (h!14609 (t!95978 l!5107))))) (inv!11708 (transformation!1727 (rule!3150 (h!14609 (t!95978 l!5107))))) e!561788))))

(assert (=> b!853151 (= tp!268903 e!561784)))

(assert (= b!853489 b!853490))

(assert (= b!853488 b!853489))

(assert (= b!853487 b!853488))

(assert (= (and b!853151 (is-Cons!9208 (t!95978 l!5107))) b!853487))

(declare-fun m!1093239 () Bool)

(assert (=> b!853488 m!1093239))

(declare-fun m!1093241 () Bool)

(assert (=> b!853487 m!1093241))

(declare-fun m!1093243 () Bool)

(assert (=> b!853489 m!1093243))

(declare-fun m!1093245 () Bool)

(assert (=> b!853489 m!1093245))

(declare-fun b!853491 () Bool)

(declare-fun e!561789 () Bool)

(assert (=> b!853491 (= e!561789 tp_is_empty!3979)))

(assert (=> b!853160 (= tp!268901 e!561789)))

(declare-fun b!853492 () Bool)

(declare-fun tp!269003 () Bool)

(declare-fun tp!269004 () Bool)

(assert (=> b!853492 (= e!561789 (and tp!269003 tp!269004))))

(declare-fun b!853494 () Bool)

(declare-fun tp!269005 () Bool)

(declare-fun tp!269007 () Bool)

(assert (=> b!853494 (= e!561789 (and tp!269005 tp!269007))))

(declare-fun b!853493 () Bool)

(declare-fun tp!269006 () Bool)

(assert (=> b!853493 (= e!561789 tp!269006)))

(assert (= (and b!853160 (is-ElementMatch!2160 (regex!1727 (rule!3150 (h!14609 l!5107))))) b!853491))

(assert (= (and b!853160 (is-Concat!3954 (regex!1727 (rule!3150 (h!14609 l!5107))))) b!853492))

(assert (= (and b!853160 (is-Star!2160 (regex!1727 (rule!3150 (h!14609 l!5107))))) b!853493))

(assert (= (and b!853160 (is-Union!2160 (regex!1727 (rule!3150 (h!14609 l!5107))))) b!853494))

(declare-fun b_lambda!28549 () Bool)

(assert (= b_lambda!28545 (or (and b!853146 b_free!25835 (= (toChars!2631 (transformation!1727 (h!14610 rules!2621))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107)))))) (and b!853490 b_free!25859 (= (toChars!2631 (transformation!1727 (rule!3150 (h!14609 (t!95978 l!5107))))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107)))))) (and b!853476 b_free!25855 (= (toChars!2631 (transformation!1727 (h!14610 (t!95979 rules!2621)))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107)))))) (and b!853158 b_free!25831 (= (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107)))))) (and b!853155 b_free!25839) b_lambda!28549)))

(declare-fun b_lambda!28551 () Bool)

(assert (= b_lambda!28547 (or b!853154 b_lambda!28551)))

(declare-fun bs!231542 () Bool)

(declare-fun d!266600 () Bool)

(assert (= bs!231542 (and d!266600 b!853154)))

(assert (=> bs!231542 (= (dynLambda!4304 lambda!25549 (h!14609 l!5107)) (not (isSeparator!1727 (rule!3150 (h!14609 l!5107)))))))

(assert (=> b!853440 d!266600))

(declare-fun b_lambda!28553 () Bool)

(assert (= b_lambda!28543 (or (and b!853146 b_free!25835 (= (toChars!2631 (transformation!1727 (h!14610 rules!2621))) (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297))))) (and b!853158 b_free!25831) (and b!853476 b_free!25855 (= (toChars!2631 (transformation!1727 (h!14610 (t!95979 rules!2621)))) (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297))))) (and b!853155 b_free!25839 (= (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107)))) (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297))))) (and b!853490 b_free!25859 (= (toChars!2631 (transformation!1727 (rule!3150 (h!14609 (t!95978 l!5107))))) (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297))))) b_lambda!28553)))

(push 1)

(assert (not b_next!25921))

(assert b_and!75089)

(assert (not b!853489))

(assert (not b_next!25917))

(assert (not b_next!25893))

(assert (not b_next!25903))

(assert (not d!266594))

(assert (not b!853460))

(assert (not b!853399))

(assert (not b!853374))

(assert (not b!853345))

(assert (not b!853465))

(assert (not b_lambda!28549))

(assert (not b!853446))

(assert (not d!266584))

(assert (not b!853475))

(assert (not b!853328))

(assert (not b!853340))

(assert b_and!75061)

(assert (not b!853348))

(assert (not b!853418))

(assert (not b!853434))

(assert (not b!853396))

(assert (not b!853417))

(assert (not b!853421))

(assert (not b!853384))

(assert (not b!853494))

(assert b_and!75099)

(assert (not b!853370))

(assert (not d!266578))

(assert (not b!853441))

(assert (not b!853390))

(assert b_and!75095)

(assert (not d!266568))

(assert (not b!853435))

(assert (not b!853464))

(assert (not b!853458))

(assert (not b_next!25901))

(assert b_and!75093)

(assert (not b_next!25923))

(assert (not b_next!25919))

(assert (not b!853463))

(assert (not b_next!25895))

(assert (not b_next!25899))

(assert (not b!853236))

(assert (not b!853232))

(assert (not b!853416))

(assert b_and!75097)

(assert (not b!853235))

(assert (not b!853433))

(assert (not b_lambda!28553))

(assert (not b!853405))

(assert (not b_next!25897))

(assert (not b!853400))

(assert (not b!853415))

(assert (not b!853425))

(assert (not b!853493))

(assert b_and!75057)

(assert tp_is_empty!3979)

(assert b_and!75053)

(assert b_and!75101)

(assert (not d!266564))

(assert (not b!853349))

(assert (not d!266530))

(assert (not b!853459))

(assert (not b!853401))

(assert (not b!853375))

(assert (not tb!60097))

(assert (not b!853474))

(assert (not tb!60091))

(assert (not b!853392))

(assert (not b!853492))

(assert (not b_lambda!28551))

(assert (not d!266574))

(assert (not b!853391))

(assert (not b!853426))

(assert (not b!853393))

(assert (not d!266596))

(assert (not b!853487))

(assert (not b!853329))

(assert (not b!853414))

(assert (not b!853373))

(assert b_and!75091)

(assert (not d!266588))

(assert (not b!853379))

(assert (not b!853422))

(assert (not b!853385))

(assert (not d!266572))

(assert (not d!266570))

(assert (not b!853488))

(assert (not b!853461))

(assert (not d!266590))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!25903))

(assert b_and!75061)

(assert b_and!75099)

(assert b_and!75095)

(assert (not b_next!25901))

(assert (not b_next!25899))

(assert b_and!75057)

(assert (not b_next!25921))

(assert b_and!75091)

(assert b_and!75089)

(assert (not b_next!25917))

(assert (not b_next!25893))

(assert b_and!75093)

(assert (not b_next!25923))

(assert (not b_next!25919))

(assert (not b_next!25895))

(assert b_and!75097)

(assert (not b_next!25897))

(assert b_and!75053)

(assert b_and!75101)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!266616 () Bool)

(declare-fun res!389886 () Bool)

(declare-fun e!561854 () Bool)

(assert (=> d!266616 (=> (not res!389886) (not e!561854))))

(assert (=> d!266616 (= res!389886 (not (isEmpty!5450 (originalCharacters!2283 (h!14609 (t!95978 l!5107))))))))

(assert (=> d!266616 (= (inv!11707 (h!14609 (t!95978 l!5107))) e!561854)))

(declare-fun b!853582 () Bool)

(declare-fun res!389887 () Bool)

(assert (=> b!853582 (=> (not res!389887) (not e!561854))))

(assert (=> b!853582 (= res!389887 (= (originalCharacters!2283 (h!14609 (t!95978 l!5107))) (list!3619 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 (h!14609 (t!95978 l!5107))))) (value!55920 (h!14609 (t!95978 l!5107)))))))))

(declare-fun b!853583 () Bool)

(assert (=> b!853583 (= e!561854 (= (size!7678 (h!14609 (t!95978 l!5107))) (size!7680 (originalCharacters!2283 (h!14609 (t!95978 l!5107))))))))

(assert (= (and d!266616 res!389886) b!853582))

(assert (= (and b!853582 res!389887) b!853583))

(declare-fun b_lambda!28563 () Bool)

(assert (=> (not b_lambda!28563) (not b!853582)))

(declare-fun t!96033 () Bool)

(declare-fun tb!60125 () Bool)

(assert (=> (and b!853490 (= (toChars!2631 (transformation!1727 (rule!3150 (h!14609 (t!95978 l!5107))))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 (t!95978 l!5107)))))) t!96033) tb!60125))

(declare-fun b!853584 () Bool)

(declare-fun e!561855 () Bool)

(declare-fun tp!269065 () Bool)

(assert (=> b!853584 (= e!561855 (and (inv!11711 (c!138386 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 (h!14609 (t!95978 l!5107))))) (value!55920 (h!14609 (t!95978 l!5107)))))) tp!269065))))

(declare-fun result!69654 () Bool)

(assert (=> tb!60125 (= result!69654 (and (inv!11712 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 (h!14609 (t!95978 l!5107))))) (value!55920 (h!14609 (t!95978 l!5107))))) e!561855))))

(assert (= tb!60125 b!853584))

(declare-fun m!1093337 () Bool)

(assert (=> b!853584 m!1093337))

(declare-fun m!1093339 () Bool)

(assert (=> tb!60125 m!1093339))

(assert (=> b!853582 t!96033))

(declare-fun b_and!75117 () Bool)

(assert (= b_and!75101 (and (=> t!96033 result!69654) b_and!75117)))

(declare-fun t!96035 () Bool)

(declare-fun tb!60127 () Bool)

(assert (=> (and b!853158 (= (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 (t!95978 l!5107)))))) t!96035) tb!60127))

(declare-fun result!69656 () Bool)

(assert (= result!69656 result!69654))

(assert (=> b!853582 t!96035))

(declare-fun b_and!75119 () Bool)

(assert (= b_and!75089 (and (=> t!96035 result!69656) b_and!75119)))

(declare-fun t!96037 () Bool)

(declare-fun tb!60129 () Bool)

(assert (=> (and b!853476 (= (toChars!2631 (transformation!1727 (h!14610 (t!95979 rules!2621)))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 (t!95978 l!5107)))))) t!96037) tb!60129))

(declare-fun result!69658 () Bool)

(assert (= result!69658 result!69654))

(assert (=> b!853582 t!96037))

(declare-fun b_and!75121 () Bool)

(assert (= b_and!75097 (and (=> t!96037 result!69658) b_and!75121)))

(declare-fun t!96039 () Bool)

(declare-fun tb!60131 () Bool)

(assert (=> (and b!853155 (= (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107)))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 (t!95978 l!5107)))))) t!96039) tb!60131))

(declare-fun result!69660 () Bool)

(assert (= result!69660 result!69654))

(assert (=> b!853582 t!96039))

(declare-fun b_and!75123 () Bool)

(assert (= b_and!75093 (and (=> t!96039 result!69660) b_and!75123)))

(declare-fun tb!60133 () Bool)

(declare-fun t!96041 () Bool)

(assert (=> (and b!853146 (= (toChars!2631 (transformation!1727 (h!14610 rules!2621))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 (t!95978 l!5107)))))) t!96041) tb!60133))

(declare-fun result!69662 () Bool)

(assert (= result!69662 result!69654))

(assert (=> b!853582 t!96041))

(declare-fun b_and!75125 () Bool)

(assert (= b_and!75091 (and (=> t!96041 result!69662) b_and!75125)))

(declare-fun m!1093341 () Bool)

(assert (=> d!266616 m!1093341))

(declare-fun m!1093343 () Bool)

(assert (=> b!853582 m!1093343))

(assert (=> b!853582 m!1093343))

(declare-fun m!1093345 () Bool)

(assert (=> b!853582 m!1093345))

(declare-fun m!1093347 () Bool)

(assert (=> b!853583 m!1093347))

(assert (=> b!853487 d!266616))

(declare-fun d!266618 () Bool)

(declare-fun isBalanced!838 (Conc!3050) Bool)

(assert (=> d!266618 (= (inv!11712 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297))) (value!55920 separatorToken!297))) (isBalanced!838 (c!138386 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297))) (value!55920 separatorToken!297)))))))

(declare-fun bs!231548 () Bool)

(assert (= bs!231548 d!266618))

(declare-fun m!1093349 () Bool)

(assert (=> bs!231548 m!1093349))

(assert (=> tb!60091 d!266618))

(declare-fun d!266620 () Bool)

(assert (=> d!266620 (= (inv!11704 (tag!1989 (rule!3150 (h!14609 (t!95978 l!5107))))) (= (mod (str.len (value!55919 (tag!1989 (rule!3150 (h!14609 (t!95978 l!5107)))))) 2) 0))))

(assert (=> b!853489 d!266620))

(declare-fun d!266622 () Bool)

(declare-fun res!389888 () Bool)

(declare-fun e!561856 () Bool)

(assert (=> d!266622 (=> (not res!389888) (not e!561856))))

(assert (=> d!266622 (= res!389888 (semiInverseModEq!673 (toChars!2631 (transformation!1727 (rule!3150 (h!14609 (t!95978 l!5107))))) (toValue!2772 (transformation!1727 (rule!3150 (h!14609 (t!95978 l!5107)))))))))

(assert (=> d!266622 (= (inv!11708 (transformation!1727 (rule!3150 (h!14609 (t!95978 l!5107))))) e!561856)))

(declare-fun b!853585 () Bool)

(assert (=> b!853585 (= e!561856 (equivClasses!640 (toChars!2631 (transformation!1727 (rule!3150 (h!14609 (t!95978 l!5107))))) (toValue!2772 (transformation!1727 (rule!3150 (h!14609 (t!95978 l!5107)))))))))

(assert (= (and d!266622 res!389888) b!853585))

(declare-fun m!1093351 () Bool)

(assert (=> d!266622 m!1093351))

(declare-fun m!1093353 () Bool)

(assert (=> b!853585 m!1093353))

(assert (=> b!853489 d!266622))

(declare-fun d!266624 () Bool)

(assert (=> d!266624 true))

(declare-fun order!5929 () Int)

(declare-fun lambda!25563 () Int)

(declare-fun dynLambda!4310 (Int Int) Int)

(assert (=> d!266624 (< (dynLambda!4302 order!5921 (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297)))) (dynLambda!4310 order!5929 lambda!25563))))

(assert (=> d!266624 true))

(assert (=> d!266624 (< (dynLambda!4300 order!5917 (toValue!2772 (transformation!1727 (rule!3150 separatorToken!297)))) (dynLambda!4310 order!5929 lambda!25563))))

(declare-fun Forall!414 (Int) Bool)

(assert (=> d!266624 (= (semiInverseModEq!673 (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297))) (toValue!2772 (transformation!1727 (rule!3150 separatorToken!297)))) (Forall!414 lambda!25563))))

(declare-fun bs!231549 () Bool)

(assert (= bs!231549 d!266624))

(declare-fun m!1093355 () Bool)

(assert (=> bs!231549 m!1093355))

(assert (=> d!266594 d!266624))

(declare-fun d!266626 () Bool)

(declare-fun lt!323182 () Token!3120)

(declare-fun apply!1904 (List!9224 Int) Token!3120)

(assert (=> d!266626 (= lt!323182 (apply!1904 (list!3620 (_1!6023 lt!323165)) 0))))

(declare-fun apply!1905 (Conc!3052 Int) Token!3120)

(assert (=> d!266626 (= lt!323182 (apply!1905 (c!138429 (_1!6023 lt!323165)) 0))))

(declare-fun e!561859 () Bool)

(assert (=> d!266626 e!561859))

(declare-fun res!389891 () Bool)

(assert (=> d!266626 (=> (not res!389891) (not e!561859))))

(assert (=> d!266626 (= res!389891 (<= 0 0))))

(assert (=> d!266626 (= (apply!1902 (_1!6023 lt!323165) 0) lt!323182)))

(declare-fun b!853592 () Bool)

(assert (=> b!853592 (= e!561859 (< 0 (size!7681 (_1!6023 lt!323165))))))

(assert (= (and d!266626 res!389891) b!853592))

(declare-fun m!1093357 () Bool)

(assert (=> d!266626 m!1093357))

(assert (=> d!266626 m!1093357))

(declare-fun m!1093359 () Bool)

(assert (=> d!266626 m!1093359))

(declare-fun m!1093361 () Bool)

(assert (=> d!266626 m!1093361))

(assert (=> b!853592 m!1093223))

(assert (=> b!853433 d!266626))

(declare-fun lt!323185 () Bool)

(declare-fun d!266628 () Bool)

(assert (=> d!266628 (= lt!323185 (isEmpty!5450 (list!3619 (_2!6023 (lex!621 thiss!20117 rules!2621 (print!558 thiss!20117 (singletonSeq!544 separatorToken!297)))))))))

(declare-fun isEmpty!5454 (Conc!3050) Bool)

(assert (=> d!266628 (= lt!323185 (isEmpty!5454 (c!138386 (_2!6023 (lex!621 thiss!20117 rules!2621 (print!558 thiss!20117 (singletonSeq!544 separatorToken!297)))))))))

(assert (=> d!266628 (= (isEmpty!5451 (_2!6023 (lex!621 thiss!20117 rules!2621 (print!558 thiss!20117 (singletonSeq!544 separatorToken!297))))) lt!323185)))

(declare-fun bs!231550 () Bool)

(assert (= bs!231550 d!266628))

(declare-fun m!1093363 () Bool)

(assert (=> bs!231550 m!1093363))

(assert (=> bs!231550 m!1093363))

(declare-fun m!1093365 () Bool)

(assert (=> bs!231550 m!1093365))

(declare-fun m!1093367 () Bool)

(assert (=> bs!231550 m!1093367))

(assert (=> b!853435 d!266628))

(declare-fun b!853603 () Bool)

(declare-fun lt!323188 () tuple2!10394)

(declare-fun e!561866 () Bool)

(assert (=> b!853603 (= e!561866 (= (_2!6023 lt!323188) (print!558 thiss!20117 (singletonSeq!544 separatorToken!297))))))

(declare-fun e!561868 () Bool)

(declare-fun b!853604 () Bool)

(declare-datatypes ((tuple2!10398 0))(
  ( (tuple2!10399 (_1!6025 List!9224) (_2!6025 List!9223)) )
))
(declare-fun lexList!391 (LexerInterface!1529 List!9225 List!9223) tuple2!10398)

(assert (=> b!853604 (= e!561868 (= (list!3619 (_2!6023 lt!323188)) (_2!6025 (lexList!391 thiss!20117 rules!2621 (list!3619 (print!558 thiss!20117 (singletonSeq!544 separatorToken!297)))))))))

(declare-fun d!266630 () Bool)

(assert (=> d!266630 e!561868))

(declare-fun res!389898 () Bool)

(assert (=> d!266630 (=> (not res!389898) (not e!561868))))

(assert (=> d!266630 (= res!389898 e!561866)))

(declare-fun c!138434 () Bool)

(assert (=> d!266630 (= c!138434 (> (size!7681 (_1!6023 lt!323188)) 0))))

(declare-fun lexTailRecV2!298 (LexerInterface!1529 List!9225 BalanceConc!6114 BalanceConc!6114 BalanceConc!6114 BalanceConc!6118) tuple2!10394)

(assert (=> d!266630 (= lt!323188 (lexTailRecV2!298 thiss!20117 rules!2621 (print!558 thiss!20117 (singletonSeq!544 separatorToken!297)) (BalanceConc!6115 Empty!3050) (print!558 thiss!20117 (singletonSeq!544 separatorToken!297)) (BalanceConc!6119 Empty!3052)))))

(assert (=> d!266630 (= (lex!621 thiss!20117 rules!2621 (print!558 thiss!20117 (singletonSeq!544 separatorToken!297))) lt!323188)))

(declare-fun b!853605 () Bool)

(declare-fun res!389899 () Bool)

(assert (=> b!853605 (=> (not res!389899) (not e!561868))))

(assert (=> b!853605 (= res!389899 (= (list!3620 (_1!6023 lt!323188)) (_1!6025 (lexList!391 thiss!20117 rules!2621 (list!3619 (print!558 thiss!20117 (singletonSeq!544 separatorToken!297)))))))))

(declare-fun b!853606 () Bool)

(declare-fun e!561867 () Bool)

(assert (=> b!853606 (= e!561866 e!561867)))

(declare-fun res!389900 () Bool)

(declare-fun size!7684 (BalanceConc!6114) Int)

(assert (=> b!853606 (= res!389900 (< (size!7684 (_2!6023 lt!323188)) (size!7684 (print!558 thiss!20117 (singletonSeq!544 separatorToken!297)))))))

(assert (=> b!853606 (=> (not res!389900) (not e!561867))))

(declare-fun b!853607 () Bool)

(declare-fun isEmpty!5455 (BalanceConc!6118) Bool)

(assert (=> b!853607 (= e!561867 (not (isEmpty!5455 (_1!6023 lt!323188))))))

(assert (= (and d!266630 c!138434) b!853606))

(assert (= (and d!266630 (not c!138434)) b!853603))

(assert (= (and b!853606 res!389900) b!853607))

(assert (= (and d!266630 res!389898) b!853605))

(assert (= (and b!853605 res!389899) b!853604))

(declare-fun m!1093369 () Bool)

(assert (=> b!853605 m!1093369))

(assert (=> b!853605 m!1093217))

(declare-fun m!1093371 () Bool)

(assert (=> b!853605 m!1093371))

(assert (=> b!853605 m!1093371))

(declare-fun m!1093373 () Bool)

(assert (=> b!853605 m!1093373))

(declare-fun m!1093375 () Bool)

(assert (=> d!266630 m!1093375))

(assert (=> d!266630 m!1093217))

(assert (=> d!266630 m!1093217))

(declare-fun m!1093377 () Bool)

(assert (=> d!266630 m!1093377))

(declare-fun m!1093379 () Bool)

(assert (=> b!853604 m!1093379))

(assert (=> b!853604 m!1093217))

(assert (=> b!853604 m!1093371))

(assert (=> b!853604 m!1093371))

(assert (=> b!853604 m!1093373))

(declare-fun m!1093381 () Bool)

(assert (=> b!853607 m!1093381))

(declare-fun m!1093383 () Bool)

(assert (=> b!853606 m!1093383))

(assert (=> b!853606 m!1093217))

(declare-fun m!1093385 () Bool)

(assert (=> b!853606 m!1093385))

(assert (=> b!853435 d!266630))

(declare-fun d!266632 () Bool)

(declare-fun lt!323191 () BalanceConc!6114)

(assert (=> d!266632 (= (list!3619 lt!323191) (printList!477 thiss!20117 (list!3620 (singletonSeq!544 separatorToken!297))))))

(declare-fun printTailRec!473 (LexerInterface!1529 BalanceConc!6118 Int BalanceConc!6114) BalanceConc!6114)

(assert (=> d!266632 (= lt!323191 (printTailRec!473 thiss!20117 (singletonSeq!544 separatorToken!297) 0 (BalanceConc!6115 Empty!3050)))))

(assert (=> d!266632 (= (print!558 thiss!20117 (singletonSeq!544 separatorToken!297)) lt!323191)))

(declare-fun bs!231551 () Bool)

(assert (= bs!231551 d!266632))

(declare-fun m!1093387 () Bool)

(assert (=> bs!231551 m!1093387))

(assert (=> bs!231551 m!1093215))

(assert (=> bs!231551 m!1093221))

(assert (=> bs!231551 m!1093221))

(declare-fun m!1093389 () Bool)

(assert (=> bs!231551 m!1093389))

(assert (=> bs!231551 m!1093215))

(declare-fun m!1093391 () Bool)

(assert (=> bs!231551 m!1093391))

(assert (=> b!853435 d!266632))

(declare-fun d!266634 () Bool)

(declare-fun e!561871 () Bool)

(assert (=> d!266634 e!561871))

(declare-fun res!389903 () Bool)

(assert (=> d!266634 (=> (not res!389903) (not e!561871))))

(declare-fun lt!323194 () BalanceConc!6118)

(assert (=> d!266634 (= res!389903 (= (list!3620 lt!323194) (Cons!9208 separatorToken!297 Nil!9208)))))

(declare-fun singleton!263 (Token!3120) BalanceConc!6118)

(assert (=> d!266634 (= lt!323194 (singleton!263 separatorToken!297))))

(assert (=> d!266634 (= (singletonSeq!544 separatorToken!297) lt!323194)))

(declare-fun b!853610 () Bool)

(declare-fun isBalanced!839 (Conc!3052) Bool)

(assert (=> b!853610 (= e!561871 (isBalanced!839 (c!138429 lt!323194)))))

(assert (= (and d!266634 res!389903) b!853610))

(declare-fun m!1093393 () Bool)

(assert (=> d!266634 m!1093393))

(declare-fun m!1093395 () Bool)

(assert (=> d!266634 m!1093395))

(declare-fun m!1093397 () Bool)

(assert (=> b!853610 m!1093397))

(assert (=> b!853435 d!266634))

(declare-fun d!266636 () Bool)

(declare-fun res!389904 () Bool)

(declare-fun e!561872 () Bool)

(assert (=> d!266636 (=> res!389904 e!561872)))

(assert (=> d!266636 (= res!389904 (is-Nil!9208 (t!95978 l!5107)))))

(assert (=> d!266636 (= (forall!2180 (t!95978 l!5107) lambda!25549) e!561872)))

(declare-fun b!853611 () Bool)

(declare-fun e!561873 () Bool)

(assert (=> b!853611 (= e!561872 e!561873)))

(declare-fun res!389905 () Bool)

(assert (=> b!853611 (=> (not res!389905) (not e!561873))))

(assert (=> b!853611 (= res!389905 (dynLambda!4304 lambda!25549 (h!14609 (t!95978 l!5107))))))

(declare-fun b!853612 () Bool)

(assert (=> b!853612 (= e!561873 (forall!2180 (t!95978 (t!95978 l!5107)) lambda!25549))))

(assert (= (and d!266636 (not res!389904)) b!853611))

(assert (= (and b!853611 res!389905) b!853612))

(declare-fun b_lambda!28565 () Bool)

(assert (=> (not b_lambda!28565) (not b!853611)))

(declare-fun m!1093399 () Bool)

(assert (=> b!853611 m!1093399))

(declare-fun m!1093401 () Bool)

(assert (=> b!853612 m!1093401))

(assert (=> b!853441 d!266636))

(declare-fun d!266638 () Bool)

(assert (=> d!266638 true))

(declare-fun lt!323197 () Bool)

(declare-fun rulesValidInductive!612 (LexerInterface!1529 List!9225) Bool)

(assert (=> d!266638 (= lt!323197 (rulesValidInductive!612 thiss!20117 rules!2621))))

(declare-fun lambda!25566 () Int)

(declare-fun forall!2182 (List!9225 Int) Bool)

(assert (=> d!266638 (= lt!323197 (forall!2182 rules!2621 lambda!25566))))

(assert (=> d!266638 (= (rulesValid!604 thiss!20117 rules!2621) lt!323197)))

(declare-fun bs!231552 () Bool)

(assert (= bs!231552 d!266638))

(declare-fun m!1093403 () Bool)

(assert (=> bs!231552 m!1093403))

(declare-fun m!1093405 () Bool)

(assert (=> bs!231552 m!1093405))

(assert (=> d!266590 d!266638))

(declare-fun d!266640 () Bool)

(declare-fun c!138437 () Bool)

(assert (=> d!266640 (= c!138437 (is-Cons!9208 lt!323153))))

(declare-fun e!561876 () List!9223)

(assert (=> d!266640 (= (printList!477 thiss!20117 lt!323153) e!561876)))

(declare-fun b!853619 () Bool)

(assert (=> b!853619 (= e!561876 (++!2385 (list!3619 (charsOf!994 (h!14609 lt!323153))) (printList!477 thiss!20117 (t!95978 lt!323153))))))

(declare-fun b!853620 () Bool)

(assert (=> b!853620 (= e!561876 Nil!9207)))

(assert (= (and d!266640 c!138437) b!853619))

(assert (= (and d!266640 (not c!138437)) b!853620))

(declare-fun m!1093407 () Bool)

(assert (=> b!853619 m!1093407))

(assert (=> b!853619 m!1093407))

(declare-fun m!1093409 () Bool)

(assert (=> b!853619 m!1093409))

(declare-fun m!1093411 () Bool)

(assert (=> b!853619 m!1093411))

(assert (=> b!853619 m!1093409))

(assert (=> b!853619 m!1093411))

(declare-fun m!1093413 () Bool)

(assert (=> b!853619 m!1093413))

(assert (=> d!266572 d!266640))

(declare-fun d!266642 () Bool)

(declare-fun c!138440 () Bool)

(assert (=> d!266642 (= c!138440 (is-Cons!9208 l!5107))))

(declare-fun e!561879 () List!9223)

(assert (=> d!266642 (= (printWithSeparatorTokenList!35 thiss!20117 l!5107 separatorToken!297) e!561879)))

(declare-fun b!853625 () Bool)

(assert (=> b!853625 (= e!561879 (++!2385 (++!2385 (list!3619 (charsOf!994 (h!14609 l!5107))) (list!3619 (charsOf!994 separatorToken!297))) (printWithSeparatorTokenList!35 thiss!20117 (t!95978 l!5107) separatorToken!297)))))

(declare-fun b!853626 () Bool)

(assert (=> b!853626 (= e!561879 Nil!9207)))

(assert (= (and d!266642 c!138440) b!853625))

(assert (= (and d!266642 (not c!138440)) b!853626))

(assert (=> b!853625 m!1093159))

(assert (=> b!853625 m!1093095))

(declare-fun m!1093415 () Bool)

(assert (=> b!853625 m!1093415))

(assert (=> b!853625 m!1093091))

(assert (=> b!853625 m!1093091))

(assert (=> b!853625 m!1093095))

(declare-fun m!1093417 () Bool)

(assert (=> b!853625 m!1093417))

(assert (=> b!853625 m!1093151))

(assert (=> b!853625 m!1093415))

(assert (=> b!853625 m!1093417))

(declare-fun m!1093419 () Bool)

(assert (=> b!853625 m!1093419))

(assert (=> b!853625 m!1093151))

(assert (=> b!853625 m!1093159))

(assert (=> d!266572 d!266642))

(declare-fun d!266644 () Bool)

(declare-fun lt!323200 () Int)

(assert (=> d!266644 (>= lt!323200 0)))

(declare-fun e!561882 () Int)

(assert (=> d!266644 (= lt!323200 e!561882)))

(declare-fun c!138443 () Bool)

(assert (=> d!266644 (= c!138443 (is-Nil!9207 (originalCharacters!2283 (h!14609 l!5107))))))

(assert (=> d!266644 (= (size!7680 (originalCharacters!2283 (h!14609 l!5107))) lt!323200)))

(declare-fun b!853631 () Bool)

(assert (=> b!853631 (= e!561882 0)))

(declare-fun b!853632 () Bool)

(assert (=> b!853632 (= e!561882 (+ 1 (size!7680 (t!95977 (originalCharacters!2283 (h!14609 l!5107))))))))

(assert (= (and d!266644 c!138443) b!853631))

(assert (= (and d!266644 (not c!138443)) b!853632))

(declare-fun m!1093421 () Bool)

(assert (=> b!853632 m!1093421))

(assert (=> b!853417 d!266644))

(declare-fun d!266646 () Bool)

(assert (=> d!266646 true))

(declare-fun lambda!25569 () Int)

(declare-fun order!5931 () Int)

(declare-fun dynLambda!4311 (Int Int) Int)

(assert (=> d!266646 (< (dynLambda!4300 order!5917 (toValue!2772 (transformation!1727 (rule!3150 (h!14609 l!5107))))) (dynLambda!4311 order!5931 lambda!25569))))

(declare-fun Forall2!324 (Int) Bool)

(assert (=> d!266646 (= (equivClasses!640 (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107)))) (toValue!2772 (transformation!1727 (rule!3150 (h!14609 l!5107))))) (Forall2!324 lambda!25569))))

(declare-fun bs!231553 () Bool)

(assert (= bs!231553 d!266646))

(declare-fun m!1093423 () Bool)

(assert (=> bs!231553 m!1093423))

(assert (=> b!853421 d!266646))

(declare-fun d!266648 () Bool)

(declare-fun lt!323202 () Bool)

(declare-fun e!561886 () Bool)

(assert (=> d!266648 (= lt!323202 e!561886)))

(declare-fun res!389908 () Bool)

(assert (=> d!266648 (=> (not res!389908) (not e!561886))))

(assert (=> d!266648 (= res!389908 (= (list!3620 (_1!6023 (lex!621 thiss!20117 rules!2621 (print!558 thiss!20117 (singletonSeq!544 (h!14609 lt!323082)))))) (list!3620 (singletonSeq!544 (h!14609 lt!323082)))))))

(declare-fun e!561885 () Bool)

(assert (=> d!266648 (= lt!323202 e!561885)))

(declare-fun res!389910 () Bool)

(assert (=> d!266648 (=> (not res!389910) (not e!561885))))

(declare-fun lt!323201 () tuple2!10394)

(assert (=> d!266648 (= res!389910 (= (size!7681 (_1!6023 lt!323201)) 1))))

(assert (=> d!266648 (= lt!323201 (lex!621 thiss!20117 rules!2621 (print!558 thiss!20117 (singletonSeq!544 (h!14609 lt!323082)))))))

(assert (=> d!266648 (not (isEmpty!5448 rules!2621))))

(assert (=> d!266648 (= (rulesProduceIndividualToken!593 thiss!20117 rules!2621 (h!14609 lt!323082)) lt!323202)))

(declare-fun b!853637 () Bool)

(declare-fun res!389909 () Bool)

(assert (=> b!853637 (=> (not res!389909) (not e!561885))))

(assert (=> b!853637 (= res!389909 (= (apply!1902 (_1!6023 lt!323201) 0) (h!14609 lt!323082)))))

(declare-fun b!853638 () Bool)

(assert (=> b!853638 (= e!561885 (isEmpty!5451 (_2!6023 lt!323201)))))

(declare-fun b!853639 () Bool)

(assert (=> b!853639 (= e!561886 (isEmpty!5451 (_2!6023 (lex!621 thiss!20117 rules!2621 (print!558 thiss!20117 (singletonSeq!544 (h!14609 lt!323082)))))))))

(assert (= (and d!266648 res!389910) b!853637))

(assert (= (and b!853637 res!389909) b!853638))

(assert (= (and d!266648 res!389908) b!853639))

(declare-fun m!1093425 () Bool)

(assert (=> d!266648 m!1093425))

(declare-fun m!1093427 () Bool)

(assert (=> d!266648 m!1093427))

(assert (=> d!266648 m!1092867))

(declare-fun m!1093429 () Bool)

(assert (=> d!266648 m!1093429))

(declare-fun m!1093431 () Bool)

(assert (=> d!266648 m!1093431))

(assert (=> d!266648 m!1093427))

(declare-fun m!1093433 () Bool)

(assert (=> d!266648 m!1093433))

(declare-fun m!1093435 () Bool)

(assert (=> d!266648 m!1093435))

(assert (=> d!266648 m!1093427))

(assert (=> d!266648 m!1093429))

(declare-fun m!1093437 () Bool)

(assert (=> b!853637 m!1093437))

(declare-fun m!1093439 () Bool)

(assert (=> b!853638 m!1093439))

(assert (=> b!853639 m!1093427))

(assert (=> b!853639 m!1093427))

(assert (=> b!853639 m!1093429))

(assert (=> b!853639 m!1093429))

(assert (=> b!853639 m!1093431))

(declare-fun m!1093441 () Bool)

(assert (=> b!853639 m!1093441))

(assert (=> b!853391 d!266648))

(assert (=> d!266596 d!266632))

(assert (=> d!266596 d!266630))

(declare-fun d!266650 () Bool)

(declare-fun list!3623 (Conc!3052) List!9224)

(assert (=> d!266650 (= (list!3620 (_1!6023 (lex!621 thiss!20117 rules!2621 (print!558 thiss!20117 (singletonSeq!544 separatorToken!297))))) (list!3623 (c!138429 (_1!6023 (lex!621 thiss!20117 rules!2621 (print!558 thiss!20117 (singletonSeq!544 separatorToken!297)))))))))

(declare-fun bs!231554 () Bool)

(assert (= bs!231554 d!266650))

(declare-fun m!1093443 () Bool)

(assert (=> bs!231554 m!1093443))

(assert (=> d!266596 d!266650))

(declare-fun d!266652 () Bool)

(declare-fun lt!323205 () Int)

(declare-fun size!7685 (List!9224) Int)

(assert (=> d!266652 (= lt!323205 (size!7685 (list!3620 (_1!6023 lt!323165))))))

(declare-fun size!7686 (Conc!3052) Int)

(assert (=> d!266652 (= lt!323205 (size!7686 (c!138429 (_1!6023 lt!323165))))))

(assert (=> d!266652 (= (size!7681 (_1!6023 lt!323165)) lt!323205)))

(declare-fun bs!231555 () Bool)

(assert (= bs!231555 d!266652))

(assert (=> bs!231555 m!1093357))

(assert (=> bs!231555 m!1093357))

(declare-fun m!1093445 () Bool)

(assert (=> bs!231555 m!1093445))

(declare-fun m!1093447 () Bool)

(assert (=> bs!231555 m!1093447))

(assert (=> d!266596 d!266652))

(assert (=> d!266596 d!266580))

(declare-fun d!266654 () Bool)

(assert (=> d!266654 (= (list!3620 (singletonSeq!544 separatorToken!297)) (list!3623 (c!138429 (singletonSeq!544 separatorToken!297))))))

(declare-fun bs!231556 () Bool)

(assert (= bs!231556 d!266654))

(declare-fun m!1093449 () Bool)

(assert (=> bs!231556 m!1093449))

(assert (=> d!266596 d!266654))

(assert (=> d!266596 d!266634))

(declare-fun d!266656 () Bool)

(declare-fun c!138444 () Bool)

(assert (=> d!266656 (= c!138444 (is-Cons!9208 ($colon$colon!90 (withSeparatorTokenList!59 thiss!20117 (t!95978 l!5107) separatorToken!297) separatorToken!297)))))

(declare-fun e!561887 () List!9223)

(assert (=> d!266656 (= (printList!477 thiss!20117 ($colon$colon!90 (withSeparatorTokenList!59 thiss!20117 (t!95978 l!5107) separatorToken!297) separatorToken!297)) e!561887)))

(declare-fun b!853640 () Bool)

(assert (=> b!853640 (= e!561887 (++!2385 (list!3619 (charsOf!994 (h!14609 ($colon$colon!90 (withSeparatorTokenList!59 thiss!20117 (t!95978 l!5107) separatorToken!297) separatorToken!297)))) (printList!477 thiss!20117 (t!95978 ($colon$colon!90 (withSeparatorTokenList!59 thiss!20117 (t!95978 l!5107) separatorToken!297) separatorToken!297)))))))

(declare-fun b!853641 () Bool)

(assert (=> b!853641 (= e!561887 Nil!9207)))

(assert (= (and d!266656 c!138444) b!853640))

(assert (= (and d!266656 (not c!138444)) b!853641))

(declare-fun m!1093451 () Bool)

(assert (=> b!853640 m!1093451))

(assert (=> b!853640 m!1093451))

(declare-fun m!1093453 () Bool)

(assert (=> b!853640 m!1093453))

(declare-fun m!1093455 () Bool)

(assert (=> b!853640 m!1093455))

(assert (=> b!853640 m!1093453))

(assert (=> b!853640 m!1093455))

(declare-fun m!1093457 () Bool)

(assert (=> b!853640 m!1093457))

(assert (=> b!853400 d!266656))

(declare-fun d!266658 () Bool)

(assert (=> d!266658 (= ($colon$colon!90 (withSeparatorTokenList!59 thiss!20117 (t!95978 l!5107) separatorToken!297) separatorToken!297) (Cons!9208 separatorToken!297 (withSeparatorTokenList!59 thiss!20117 (t!95978 l!5107) separatorToken!297)))))

(assert (=> b!853400 d!266658))

(declare-fun e!561891 () Bool)

(declare-fun b!853642 () Bool)

(declare-fun e!561893 () List!9223)

(assert (=> b!853642 (= e!561891 (= (printList!477 thiss!20117 ($colon$colon!90 ($colon$colon!90 (withSeparatorTokenList!59 thiss!20117 (t!95978 (t!95978 l!5107)) separatorToken!297) separatorToken!297) (h!14609 (t!95978 l!5107)))) e!561893))))

(declare-fun c!138445 () Bool)

(declare-fun lt!323206 () List!9224)

(assert (=> b!853642 (= c!138445 (is-Cons!9208 lt!323206))))

(assert (=> b!853642 (= lt!323206 ($colon$colon!90 ($colon$colon!90 (withSeparatorTokenList!59 thiss!20117 (t!95978 (t!95978 l!5107)) separatorToken!297) separatorToken!297) (h!14609 (t!95978 l!5107))))))

(declare-fun b!853643 () Bool)

(declare-fun e!561888 () Bool)

(declare-fun e!561890 () Bool)

(assert (=> b!853643 (= e!561888 e!561890)))

(declare-fun res!389911 () Bool)

(assert (=> b!853643 (=> res!389911 e!561890)))

(assert (=> b!853643 (= res!389911 (not (is-Cons!9208 (t!95978 l!5107))))))

(declare-fun b!853644 () Bool)

(assert (=> b!853644 (= e!561893 Nil!9207)))

(declare-fun d!266660 () Bool)

(declare-fun lt!323211 () List!9224)

(assert (=> d!266660 (= (printList!477 thiss!20117 lt!323211) (printWithSeparatorTokenList!35 thiss!20117 (t!95978 l!5107) separatorToken!297))))

(declare-fun e!561892 () List!9224)

(assert (=> d!266660 (= lt!323211 e!561892)))

(declare-fun c!138446 () Bool)

(assert (=> d!266660 (= c!138446 (is-Cons!9208 (t!95978 l!5107)))))

(assert (=> d!266660 e!561888))

(declare-fun res!389914 () Bool)

(assert (=> d!266660 (=> (not res!389914) (not e!561888))))

(assert (=> d!266660 (= res!389914 (isSeparator!1727 (rule!3150 separatorToken!297)))))

(assert (=> d!266660 (= (withSeparatorTokenList!59 thiss!20117 (t!95978 l!5107) separatorToken!297) lt!323211)))

(declare-fun b!853645 () Bool)

(assert (=> b!853645 (= e!561893 (++!2385 (list!3619 (charsOf!994 (h!14609 lt!323206))) (printList!477 thiss!20117 (t!95978 lt!323206))))))

(declare-fun e!561889 () List!9223)

(declare-fun b!853646 () Bool)

(assert (=> b!853646 (= e!561890 (= (printList!477 thiss!20117 ($colon$colon!90 (withSeparatorTokenList!59 thiss!20117 (t!95978 (t!95978 l!5107)) separatorToken!297) separatorToken!297)) e!561889))))

(declare-fun c!138447 () Bool)

(declare-fun lt!323208 () List!9224)

(assert (=> b!853646 (= c!138447 (is-Cons!9208 lt!323208))))

(assert (=> b!853646 (= lt!323208 ($colon$colon!90 (withSeparatorTokenList!59 thiss!20117 (t!95978 (t!95978 l!5107)) separatorToken!297) separatorToken!297))))

(declare-fun b!853647 () Bool)

(assert (=> b!853647 (= e!561889 (++!2385 (list!3619 (charsOf!994 (h!14609 lt!323208))) (printList!477 thiss!20117 (t!95978 lt!323208))))))

(declare-fun b!853648 () Bool)

(assert (=> b!853648 (= e!561892 Nil!9208)))

(declare-fun b!853649 () Bool)

(declare-fun res!389912 () Bool)

(assert (=> b!853649 (=> (not res!389912) (not e!561888))))

(assert (=> b!853649 (= res!389912 e!561891)))

(declare-fun res!389913 () Bool)

(assert (=> b!853649 (=> res!389913 e!561891)))

(assert (=> b!853649 (= res!389913 (not (is-Cons!9208 (t!95978 l!5107))))))

(declare-fun b!853650 () Bool)

(assert (=> b!853650 (= e!561889 Nil!9207)))

(declare-fun b!853651 () Bool)

(assert (=> b!853651 (= e!561892 ($colon$colon!90 ($colon$colon!90 (withSeparatorTokenList!59 thiss!20117 (t!95978 (t!95978 l!5107)) separatorToken!297) separatorToken!297) (h!14609 (t!95978 l!5107))))))

(declare-fun lt!323213 () List!9223)

(assert (=> b!853651 (= lt!323213 (list!3619 (charsOf!994 (h!14609 (t!95978 l!5107)))))))

(declare-fun lt!323210 () List!9223)

(assert (=> b!853651 (= lt!323210 (list!3619 (charsOf!994 separatorToken!297)))))

(declare-fun lt!323209 () List!9223)

(assert (=> b!853651 (= lt!323209 (printList!477 thiss!20117 (withSeparatorTokenList!59 thiss!20117 (t!95978 (t!95978 l!5107)) separatorToken!297)))))

(declare-fun lt!323212 () Unit!13716)

(assert (=> b!853651 (= lt!323212 (lemmaConcatAssociativity!752 lt!323213 lt!323210 lt!323209))))

(assert (=> b!853651 (= (++!2385 (++!2385 lt!323213 lt!323210) lt!323209) (++!2385 lt!323213 (++!2385 lt!323210 lt!323209)))))

(declare-fun lt!323207 () Unit!13716)

(assert (=> b!853651 (= lt!323207 lt!323212)))

(assert (= (and d!266660 res!389914) b!853649))

(assert (= (and b!853649 (not res!389913)) b!853642))

(assert (= (and b!853642 c!138445) b!853645))

(assert (= (and b!853642 (not c!138445)) b!853644))

(assert (= (and b!853649 res!389912) b!853643))

(assert (= (and b!853643 (not res!389911)) b!853646))

(assert (= (and b!853646 c!138447) b!853647))

(assert (= (and b!853646 (not c!138447)) b!853650))

(assert (= (and d!266660 c!138446) b!853651))

(assert (= (and d!266660 (not c!138446)) b!853648))

(declare-fun m!1093459 () Bool)

(assert (=> b!853645 m!1093459))

(assert (=> b!853645 m!1093459))

(declare-fun m!1093461 () Bool)

(assert (=> b!853645 m!1093461))

(declare-fun m!1093463 () Bool)

(assert (=> b!853645 m!1093463))

(assert (=> b!853645 m!1093461))

(assert (=> b!853645 m!1093463))

(declare-fun m!1093465 () Bool)

(assert (=> b!853645 m!1093465))

(declare-fun m!1093467 () Bool)

(assert (=> d!266660 m!1093467))

(assert (=> d!266660 m!1093417))

(declare-fun m!1093469 () Bool)

(assert (=> b!853646 m!1093469))

(assert (=> b!853646 m!1093469))

(declare-fun m!1093471 () Bool)

(assert (=> b!853646 m!1093471))

(assert (=> b!853646 m!1093471))

(declare-fun m!1093473 () Bool)

(assert (=> b!853646 m!1093473))

(declare-fun m!1093475 () Bool)

(assert (=> b!853651 m!1093475))

(declare-fun m!1093477 () Bool)

(assert (=> b!853651 m!1093477))

(assert (=> b!853651 m!1093471))

(declare-fun m!1093479 () Bool)

(assert (=> b!853651 m!1093479))

(declare-fun m!1093481 () Bool)

(assert (=> b!853651 m!1093481))

(assert (=> b!853651 m!1093481))

(declare-fun m!1093483 () Bool)

(assert (=> b!853651 m!1093483))

(assert (=> b!853651 m!1093091))

(assert (=> b!853651 m!1093469))

(assert (=> b!853651 m!1093471))

(assert (=> b!853651 m!1093469))

(assert (=> b!853651 m!1093477))

(declare-fun m!1093485 () Bool)

(assert (=> b!853651 m!1093485))

(assert (=> b!853651 m!1093091))

(assert (=> b!853651 m!1093095))

(assert (=> b!853651 m!1093469))

(declare-fun m!1093487 () Bool)

(assert (=> b!853651 m!1093487))

(declare-fun m!1093489 () Bool)

(assert (=> b!853651 m!1093489))

(declare-fun m!1093491 () Bool)

(assert (=> b!853651 m!1093491))

(assert (=> b!853651 m!1093489))

(assert (=> b!853642 m!1093469))

(assert (=> b!853642 m!1093469))

(assert (=> b!853642 m!1093471))

(assert (=> b!853642 m!1093471))

(assert (=> b!853642 m!1093479))

(assert (=> b!853642 m!1093479))

(declare-fun m!1093493 () Bool)

(assert (=> b!853642 m!1093493))

(declare-fun m!1093495 () Bool)

(assert (=> b!853647 m!1093495))

(assert (=> b!853647 m!1093495))

(declare-fun m!1093497 () Bool)

(assert (=> b!853647 m!1093497))

(declare-fun m!1093499 () Bool)

(assert (=> b!853647 m!1093499))

(assert (=> b!853647 m!1093497))

(assert (=> b!853647 m!1093499))

(declare-fun m!1093501 () Bool)

(assert (=> b!853647 m!1093501))

(assert (=> b!853400 d!266660))

(declare-fun bs!231557 () Bool)

(declare-fun d!266662 () Bool)

(assert (= bs!231557 (and d!266662 b!853154)))

(declare-fun lambda!25570 () Int)

(assert (=> bs!231557 (not (= lambda!25570 lambda!25549))))

(declare-fun bs!231558 () Bool)

(assert (= bs!231558 (and d!266662 d!266530)))

(assert (=> bs!231558 (= lambda!25570 lambda!25555)))

(declare-fun bs!231559 () Bool)

(assert (= bs!231559 (and d!266662 d!266570)))

(assert (=> bs!231559 (= lambda!25570 lambda!25556)))

(declare-fun b!853656 () Bool)

(declare-fun e!561898 () Bool)

(assert (=> b!853656 (= e!561898 true)))

(declare-fun b!853655 () Bool)

(declare-fun e!561897 () Bool)

(assert (=> b!853655 (= e!561897 e!561898)))

(declare-fun b!853654 () Bool)

(declare-fun e!561896 () Bool)

(assert (=> b!853654 (= e!561896 e!561897)))

(assert (=> d!266662 e!561896))

(assert (= b!853655 b!853656))

(assert (= b!853654 b!853655))

(assert (= (and d!266662 (is-Cons!9209 rules!2621)) b!853654))

(assert (=> b!853656 (< (dynLambda!4300 order!5917 (toValue!2772 (transformation!1727 (h!14610 rules!2621)))) (dynLambda!4301 order!5919 lambda!25570))))

(assert (=> b!853656 (< (dynLambda!4302 order!5921 (toChars!2631 (transformation!1727 (h!14610 rules!2621)))) (dynLambda!4301 order!5919 lambda!25570))))

(assert (=> d!266662 true))

(declare-fun lt!323214 () Bool)

(assert (=> d!266662 (= lt!323214 (forall!2180 (t!95978 l!5107) lambda!25570))))

(declare-fun e!561895 () Bool)

(assert (=> d!266662 (= lt!323214 e!561895)))

(declare-fun res!389916 () Bool)

(assert (=> d!266662 (=> res!389916 e!561895)))

(assert (=> d!266662 (= res!389916 (not (is-Cons!9208 (t!95978 l!5107))))))

(assert (=> d!266662 (not (isEmpty!5448 rules!2621))))

(assert (=> d!266662 (= (rulesProduceEachTokenIndividuallyList!417 thiss!20117 rules!2621 (t!95978 l!5107)) lt!323214)))

(declare-fun b!853652 () Bool)

(declare-fun e!561894 () Bool)

(assert (=> b!853652 (= e!561895 e!561894)))

(declare-fun res!389915 () Bool)

(assert (=> b!853652 (=> (not res!389915) (not e!561894))))

(assert (=> b!853652 (= res!389915 (rulesProduceIndividualToken!593 thiss!20117 rules!2621 (h!14609 (t!95978 l!5107))))))

(declare-fun b!853653 () Bool)

(assert (=> b!853653 (= e!561894 (rulesProduceEachTokenIndividuallyList!417 thiss!20117 rules!2621 (t!95978 (t!95978 l!5107))))))

(assert (= (and d!266662 (not res!389916)) b!853652))

(assert (= (and b!853652 res!389915) b!853653))

(declare-fun m!1093503 () Bool)

(assert (=> d!266662 m!1093503))

(assert (=> d!266662 m!1092867))

(declare-fun m!1093505 () Bool)

(assert (=> b!853652 m!1093505))

(declare-fun m!1093507 () Bool)

(assert (=> b!853653 m!1093507))

(assert (=> b!853329 d!266662))

(declare-fun d!266664 () Bool)

(declare-fun lt!323215 () Int)

(assert (=> d!266664 (>= lt!323215 0)))

(declare-fun e!561899 () Int)

(assert (=> d!266664 (= lt!323215 e!561899)))

(declare-fun c!138448 () Bool)

(assert (=> d!266664 (= c!138448 (is-Nil!9207 (originalCharacters!2283 separatorToken!297)))))

(assert (=> d!266664 (= (size!7680 (originalCharacters!2283 separatorToken!297)) lt!323215)))

(declare-fun b!853657 () Bool)

(assert (=> b!853657 (= e!561899 0)))

(declare-fun b!853658 () Bool)

(assert (=> b!853658 (= e!561899 (+ 1 (size!7680 (t!95977 (originalCharacters!2283 separatorToken!297)))))))

(assert (= (and d!266664 c!138448) b!853657))

(assert (= (and d!266664 (not c!138448)) b!853658))

(declare-fun m!1093509 () Bool)

(assert (=> b!853658 m!1093509))

(assert (=> b!853385 d!266664))

(declare-fun d!266666 () Bool)

(declare-fun c!138451 () Bool)

(assert (=> d!266666 (= c!138451 (is-Node!3050 (c!138386 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297))) (value!55920 separatorToken!297)))))))

(declare-fun e!561904 () Bool)

(assert (=> d!266666 (= (inv!11711 (c!138386 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297))) (value!55920 separatorToken!297)))) e!561904)))

(declare-fun b!853665 () Bool)

(declare-fun inv!11715 (Conc!3050) Bool)

(assert (=> b!853665 (= e!561904 (inv!11715 (c!138386 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297))) (value!55920 separatorToken!297)))))))

(declare-fun b!853666 () Bool)

(declare-fun e!561905 () Bool)

(assert (=> b!853666 (= e!561904 e!561905)))

(declare-fun res!389919 () Bool)

(assert (=> b!853666 (= res!389919 (not (is-Leaf!4502 (c!138386 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297))) (value!55920 separatorToken!297))))))))

(assert (=> b!853666 (=> res!389919 e!561905)))

(declare-fun b!853667 () Bool)

(declare-fun inv!11716 (Conc!3050) Bool)

(assert (=> b!853667 (= e!561905 (inv!11716 (c!138386 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297))) (value!55920 separatorToken!297)))))))

(assert (= (and d!266666 c!138451) b!853665))

(assert (= (and d!266666 (not c!138451)) b!853666))

(assert (= (and b!853666 (not res!389919)) b!853667))

(declare-fun m!1093511 () Bool)

(assert (=> b!853665 m!1093511))

(declare-fun m!1093513 () Bool)

(assert (=> b!853667 m!1093513))

(assert (=> b!853390 d!266666))

(declare-fun c!138452 () Bool)

(declare-fun d!266668 () Bool)

(assert (=> d!266668 (= c!138452 (is-Cons!9208 ($colon$colon!90 ($colon$colon!90 (withSeparatorTokenList!59 thiss!20117 (t!95978 (tail!1039 l!5107)) separatorToken!297) separatorToken!297) (h!14609 (tail!1039 l!5107)))))))

(declare-fun e!561906 () List!9223)

(assert (=> d!266668 (= (printList!477 thiss!20117 ($colon$colon!90 ($colon$colon!90 (withSeparatorTokenList!59 thiss!20117 (t!95978 (tail!1039 l!5107)) separatorToken!297) separatorToken!297) (h!14609 (tail!1039 l!5107)))) e!561906)))

(declare-fun b!853668 () Bool)

(assert (=> b!853668 (= e!561906 (++!2385 (list!3619 (charsOf!994 (h!14609 ($colon$colon!90 ($colon$colon!90 (withSeparatorTokenList!59 thiss!20117 (t!95978 (tail!1039 l!5107)) separatorToken!297) separatorToken!297) (h!14609 (tail!1039 l!5107)))))) (printList!477 thiss!20117 (t!95978 ($colon$colon!90 ($colon$colon!90 (withSeparatorTokenList!59 thiss!20117 (t!95978 (tail!1039 l!5107)) separatorToken!297) separatorToken!297) (h!14609 (tail!1039 l!5107)))))))))

(declare-fun b!853669 () Bool)

(assert (=> b!853669 (= e!561906 Nil!9207)))

(assert (= (and d!266668 c!138452) b!853668))

(assert (= (and d!266668 (not c!138452)) b!853669))

(declare-fun m!1093515 () Bool)

(assert (=> b!853668 m!1093515))

(assert (=> b!853668 m!1093515))

(declare-fun m!1093517 () Bool)

(assert (=> b!853668 m!1093517))

(declare-fun m!1093519 () Bool)

(assert (=> b!853668 m!1093519))

(assert (=> b!853668 m!1093517))

(assert (=> b!853668 m!1093519))

(declare-fun m!1093521 () Bool)

(assert (=> b!853668 m!1093521))

(assert (=> b!853370 d!266668))

(declare-fun d!266670 () Bool)

(assert (=> d!266670 (= ($colon$colon!90 ($colon$colon!90 (withSeparatorTokenList!59 thiss!20117 (t!95978 (tail!1039 l!5107)) separatorToken!297) separatorToken!297) (h!14609 (tail!1039 l!5107))) (Cons!9208 (h!14609 (tail!1039 l!5107)) ($colon$colon!90 (withSeparatorTokenList!59 thiss!20117 (t!95978 (tail!1039 l!5107)) separatorToken!297) separatorToken!297)))))

(assert (=> b!853370 d!266670))

(declare-fun d!266672 () Bool)

(assert (=> d!266672 (= ($colon$colon!90 (withSeparatorTokenList!59 thiss!20117 (t!95978 (tail!1039 l!5107)) separatorToken!297) separatorToken!297) (Cons!9208 separatorToken!297 (withSeparatorTokenList!59 thiss!20117 (t!95978 (tail!1039 l!5107)) separatorToken!297)))))

(assert (=> b!853370 d!266672))

(declare-fun b!853670 () Bool)

(declare-fun e!561912 () List!9223)

(declare-fun e!561910 () Bool)

(assert (=> b!853670 (= e!561910 (= (printList!477 thiss!20117 ($colon$colon!90 ($colon$colon!90 (withSeparatorTokenList!59 thiss!20117 (t!95978 (t!95978 (tail!1039 l!5107))) separatorToken!297) separatorToken!297) (h!14609 (t!95978 (tail!1039 l!5107))))) e!561912))))

(declare-fun c!138453 () Bool)

(declare-fun lt!323216 () List!9224)

(assert (=> b!853670 (= c!138453 (is-Cons!9208 lt!323216))))

(assert (=> b!853670 (= lt!323216 ($colon$colon!90 ($colon$colon!90 (withSeparatorTokenList!59 thiss!20117 (t!95978 (t!95978 (tail!1039 l!5107))) separatorToken!297) separatorToken!297) (h!14609 (t!95978 (tail!1039 l!5107)))))))

(declare-fun b!853671 () Bool)

(declare-fun e!561907 () Bool)

(declare-fun e!561909 () Bool)

(assert (=> b!853671 (= e!561907 e!561909)))

(declare-fun res!389920 () Bool)

(assert (=> b!853671 (=> res!389920 e!561909)))

(assert (=> b!853671 (= res!389920 (not (is-Cons!9208 (t!95978 (tail!1039 l!5107)))))))

(declare-fun b!853672 () Bool)

(assert (=> b!853672 (= e!561912 Nil!9207)))

(declare-fun lt!323221 () List!9224)

(declare-fun d!266674 () Bool)

(assert (=> d!266674 (= (printList!477 thiss!20117 lt!323221) (printWithSeparatorTokenList!35 thiss!20117 (t!95978 (tail!1039 l!5107)) separatorToken!297))))

(declare-fun e!561911 () List!9224)

(assert (=> d!266674 (= lt!323221 e!561911)))

(declare-fun c!138454 () Bool)

(assert (=> d!266674 (= c!138454 (is-Cons!9208 (t!95978 (tail!1039 l!5107))))))

(assert (=> d!266674 e!561907))

(declare-fun res!389923 () Bool)

(assert (=> d!266674 (=> (not res!389923) (not e!561907))))

(assert (=> d!266674 (= res!389923 (isSeparator!1727 (rule!3150 separatorToken!297)))))

(assert (=> d!266674 (= (withSeparatorTokenList!59 thiss!20117 (t!95978 (tail!1039 l!5107)) separatorToken!297) lt!323221)))

(declare-fun b!853673 () Bool)

(assert (=> b!853673 (= e!561912 (++!2385 (list!3619 (charsOf!994 (h!14609 lt!323216))) (printList!477 thiss!20117 (t!95978 lt!323216))))))

(declare-fun e!561908 () List!9223)

(declare-fun b!853674 () Bool)

(assert (=> b!853674 (= e!561909 (= (printList!477 thiss!20117 ($colon$colon!90 (withSeparatorTokenList!59 thiss!20117 (t!95978 (t!95978 (tail!1039 l!5107))) separatorToken!297) separatorToken!297)) e!561908))))

(declare-fun c!138455 () Bool)

(declare-fun lt!323218 () List!9224)

(assert (=> b!853674 (= c!138455 (is-Cons!9208 lt!323218))))

(assert (=> b!853674 (= lt!323218 ($colon$colon!90 (withSeparatorTokenList!59 thiss!20117 (t!95978 (t!95978 (tail!1039 l!5107))) separatorToken!297) separatorToken!297))))

(declare-fun b!853675 () Bool)

(assert (=> b!853675 (= e!561908 (++!2385 (list!3619 (charsOf!994 (h!14609 lt!323218))) (printList!477 thiss!20117 (t!95978 lt!323218))))))

(declare-fun b!853676 () Bool)

(assert (=> b!853676 (= e!561911 Nil!9208)))

(declare-fun b!853677 () Bool)

(declare-fun res!389921 () Bool)

(assert (=> b!853677 (=> (not res!389921) (not e!561907))))

(assert (=> b!853677 (= res!389921 e!561910)))

(declare-fun res!389922 () Bool)

(assert (=> b!853677 (=> res!389922 e!561910)))

(assert (=> b!853677 (= res!389922 (not (is-Cons!9208 (t!95978 (tail!1039 l!5107)))))))

(declare-fun b!853678 () Bool)

(assert (=> b!853678 (= e!561908 Nil!9207)))

(declare-fun b!853679 () Bool)

(assert (=> b!853679 (= e!561911 ($colon$colon!90 ($colon$colon!90 (withSeparatorTokenList!59 thiss!20117 (t!95978 (t!95978 (tail!1039 l!5107))) separatorToken!297) separatorToken!297) (h!14609 (t!95978 (tail!1039 l!5107)))))))

(declare-fun lt!323223 () List!9223)

(assert (=> b!853679 (= lt!323223 (list!3619 (charsOf!994 (h!14609 (t!95978 (tail!1039 l!5107))))))))

(declare-fun lt!323220 () List!9223)

(assert (=> b!853679 (= lt!323220 (list!3619 (charsOf!994 separatorToken!297)))))

(declare-fun lt!323219 () List!9223)

(assert (=> b!853679 (= lt!323219 (printList!477 thiss!20117 (withSeparatorTokenList!59 thiss!20117 (t!95978 (t!95978 (tail!1039 l!5107))) separatorToken!297)))))

(declare-fun lt!323222 () Unit!13716)

(assert (=> b!853679 (= lt!323222 (lemmaConcatAssociativity!752 lt!323223 lt!323220 lt!323219))))

(assert (=> b!853679 (= (++!2385 (++!2385 lt!323223 lt!323220) lt!323219) (++!2385 lt!323223 (++!2385 lt!323220 lt!323219)))))

(declare-fun lt!323217 () Unit!13716)

(assert (=> b!853679 (= lt!323217 lt!323222)))

(assert (= (and d!266674 res!389923) b!853677))

(assert (= (and b!853677 (not res!389922)) b!853670))

(assert (= (and b!853670 c!138453) b!853673))

(assert (= (and b!853670 (not c!138453)) b!853672))

(assert (= (and b!853677 res!389921) b!853671))

(assert (= (and b!853671 (not res!389920)) b!853674))

(assert (= (and b!853674 c!138455) b!853675))

(assert (= (and b!853674 (not c!138455)) b!853678))

(assert (= (and d!266674 c!138454) b!853679))

(assert (= (and d!266674 (not c!138454)) b!853676))

(declare-fun m!1093523 () Bool)

(assert (=> b!853673 m!1093523))

(assert (=> b!853673 m!1093523))

(declare-fun m!1093525 () Bool)

(assert (=> b!853673 m!1093525))

(declare-fun m!1093527 () Bool)

(assert (=> b!853673 m!1093527))

(assert (=> b!853673 m!1093525))

(assert (=> b!853673 m!1093527))

(declare-fun m!1093529 () Bool)

(assert (=> b!853673 m!1093529))

(declare-fun m!1093531 () Bool)

(assert (=> d!266674 m!1093531))

(declare-fun m!1093533 () Bool)

(assert (=> d!266674 m!1093533))

(declare-fun m!1093535 () Bool)

(assert (=> b!853674 m!1093535))

(assert (=> b!853674 m!1093535))

(declare-fun m!1093537 () Bool)

(assert (=> b!853674 m!1093537))

(assert (=> b!853674 m!1093537))

(declare-fun m!1093539 () Bool)

(assert (=> b!853674 m!1093539))

(declare-fun m!1093541 () Bool)

(assert (=> b!853679 m!1093541))

(declare-fun m!1093543 () Bool)

(assert (=> b!853679 m!1093543))

(assert (=> b!853679 m!1093537))

(declare-fun m!1093545 () Bool)

(assert (=> b!853679 m!1093545))

(declare-fun m!1093547 () Bool)

(assert (=> b!853679 m!1093547))

(assert (=> b!853679 m!1093547))

(declare-fun m!1093549 () Bool)

(assert (=> b!853679 m!1093549))

(assert (=> b!853679 m!1093091))

(assert (=> b!853679 m!1093535))

(assert (=> b!853679 m!1093537))

(assert (=> b!853679 m!1093535))

(assert (=> b!853679 m!1093543))

(declare-fun m!1093551 () Bool)

(assert (=> b!853679 m!1093551))

(assert (=> b!853679 m!1093091))

(assert (=> b!853679 m!1093095))

(assert (=> b!853679 m!1093535))

(declare-fun m!1093553 () Bool)

(assert (=> b!853679 m!1093553))

(declare-fun m!1093555 () Bool)

(assert (=> b!853679 m!1093555))

(declare-fun m!1093557 () Bool)

(assert (=> b!853679 m!1093557))

(assert (=> b!853679 m!1093555))

(assert (=> b!853670 m!1093535))

(assert (=> b!853670 m!1093535))

(assert (=> b!853670 m!1093537))

(assert (=> b!853670 m!1093537))

(assert (=> b!853670 m!1093545))

(assert (=> b!853670 m!1093545))

(declare-fun m!1093559 () Bool)

(assert (=> b!853670 m!1093559))

(declare-fun m!1093561 () Bool)

(assert (=> b!853675 m!1093561))

(assert (=> b!853675 m!1093561))

(declare-fun m!1093563 () Bool)

(assert (=> b!853675 m!1093563))

(declare-fun m!1093565 () Bool)

(assert (=> b!853675 m!1093565))

(assert (=> b!853675 m!1093563))

(assert (=> b!853675 m!1093565))

(declare-fun m!1093567 () Bool)

(assert (=> b!853675 m!1093567))

(assert (=> b!853370 d!266674))

(declare-fun d!266676 () Bool)

(declare-fun charsToBigInt!0 (List!9222 Int) Int)

(assert (=> d!266676 (= (inv!15 (value!55920 separatorToken!297)) (= (charsToBigInt!0 (text!13000 (value!55920 separatorToken!297)) 0) (value!55915 (value!55920 separatorToken!297))))))

(declare-fun bs!231560 () Bool)

(assert (= bs!231560 d!266676))

(declare-fun m!1093569 () Bool)

(assert (=> bs!231560 m!1093569))

(assert (=> b!853348 d!266676))

(declare-fun d!266678 () Bool)

(declare-fun res!389928 () Bool)

(declare-fun e!561917 () Bool)

(assert (=> d!266678 (=> res!389928 e!561917)))

(assert (=> d!266678 (= res!389928 (is-Nil!9209 rules!2621))))

(assert (=> d!266678 (= (noDuplicateTag!604 thiss!20117 rules!2621 Nil!9214) e!561917)))

(declare-fun b!853684 () Bool)

(declare-fun e!561918 () Bool)

(assert (=> b!853684 (= e!561917 e!561918)))

(declare-fun res!389929 () Bool)

(assert (=> b!853684 (=> (not res!389929) (not e!561918))))

(declare-fun contains!1701 (List!9230 String!10865) Bool)

(assert (=> b!853684 (= res!389929 (not (contains!1701 Nil!9214 (tag!1989 (h!14610 rules!2621)))))))

(declare-fun b!853685 () Bool)

(assert (=> b!853685 (= e!561918 (noDuplicateTag!604 thiss!20117 (t!95979 rules!2621) (Cons!9214 (tag!1989 (h!14610 rules!2621)) Nil!9214)))))

(assert (= (and d!266678 (not res!389928)) b!853684))

(assert (= (and b!853684 res!389929) b!853685))

(declare-fun m!1093571 () Bool)

(assert (=> b!853684 m!1093571))

(declare-fun m!1093573 () Bool)

(assert (=> b!853685 m!1093573))

(assert (=> b!853425 d!266678))

(declare-fun d!266680 () Bool)

(declare-fun c!138458 () Bool)

(assert (=> d!266680 (= c!138458 (and (is-Cons!9209 rules!2621) (not (= (isSeparator!1727 (h!14610 rules!2621)) (isSeparator!1727 (h!14610 rules!2621))))))))

(declare-fun e!561927 () Bool)

(assert (=> d!266680 (= (ruleDisjointCharsFromAllFromOtherType!240 (h!14610 rules!2621) rules!2621) e!561927)))

(declare-fun b!853694 () Bool)

(declare-fun e!561926 () Bool)

(declare-fun call!50516 () Bool)

(assert (=> b!853694 (= e!561926 call!50516)))

(declare-fun bm!50511 () Bool)

(assert (=> bm!50511 (= call!50516 (ruleDisjointCharsFromAllFromOtherType!240 (h!14610 rules!2621) (t!95979 rules!2621)))))

(declare-fun b!853695 () Bool)

(declare-fun e!561925 () Bool)

(assert (=> b!853695 (= e!561927 e!561925)))

(declare-fun res!389934 () Bool)

(declare-fun rulesUseDisjointChars!121 (Rule!3254 Rule!3254) Bool)

(assert (=> b!853695 (= res!389934 (rulesUseDisjointChars!121 (h!14610 rules!2621) (h!14610 rules!2621)))))

(assert (=> b!853695 (=> (not res!389934) (not e!561925))))

(declare-fun b!853696 () Bool)

(assert (=> b!853696 (= e!561925 call!50516)))

(declare-fun b!853697 () Bool)

(assert (=> b!853697 (= e!561927 e!561926)))

(declare-fun res!389935 () Bool)

(assert (=> b!853697 (= res!389935 (not (is-Cons!9209 rules!2621)))))

(assert (=> b!853697 (=> res!389935 e!561926)))

(assert (= (and d!266680 c!138458) b!853695))

(assert (= (and d!266680 (not c!138458)) b!853697))

(assert (= (and b!853695 res!389934) b!853696))

(assert (= (and b!853697 (not res!389935)) b!853694))

(assert (= (or b!853696 b!853694) bm!50511))

(declare-fun m!1093575 () Bool)

(assert (=> bm!50511 m!1093575))

(declare-fun m!1093577 () Bool)

(assert (=> b!853695 m!1093577))

(assert (=> b!853414 d!266680))

(declare-fun d!266682 () Bool)

(declare-fun c!138459 () Bool)

(assert (=> d!266682 (= c!138459 (is-Node!3050 (c!138386 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107)))) (value!55920 (h!14609 l!5107))))))))

(declare-fun e!561928 () Bool)

(assert (=> d!266682 (= (inv!11711 (c!138386 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107)))) (value!55920 (h!14609 l!5107))))) e!561928)))

(declare-fun b!853698 () Bool)

(assert (=> b!853698 (= e!561928 (inv!11715 (c!138386 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107)))) (value!55920 (h!14609 l!5107))))))))

(declare-fun b!853699 () Bool)

(declare-fun e!561929 () Bool)

(assert (=> b!853699 (= e!561928 e!561929)))

(declare-fun res!389936 () Bool)

(assert (=> b!853699 (= res!389936 (not (is-Leaf!4502 (c!138386 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107)))) (value!55920 (h!14609 l!5107)))))))))

(assert (=> b!853699 (=> res!389936 e!561929)))

(declare-fun b!853700 () Bool)

(assert (=> b!853700 (= e!561929 (inv!11716 (c!138386 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107)))) (value!55920 (h!14609 l!5107))))))))

(assert (= (and d!266682 c!138459) b!853698))

(assert (= (and d!266682 (not c!138459)) b!853699))

(assert (= (and b!853699 (not res!389936)) b!853700))

(declare-fun m!1093579 () Bool)

(assert (=> b!853698 m!1093579))

(declare-fun m!1093581 () Bool)

(assert (=> b!853700 m!1093581))

(assert (=> b!853418 d!266682))

(declare-fun d!266684 () Bool)

(assert (=> d!266684 (= (inv!15 (value!55920 (h!14609 l!5107))) (= (charsToBigInt!0 (text!13000 (value!55920 (h!14609 l!5107))) 0) (value!55915 (value!55920 (h!14609 l!5107)))))))

(declare-fun bs!231561 () Bool)

(assert (= bs!231561 d!266684))

(declare-fun m!1093583 () Bool)

(assert (=> bs!231561 m!1093583))

(assert (=> b!853235 d!266684))

(declare-fun bs!231562 () Bool)

(declare-fun d!266686 () Bool)

(assert (= bs!231562 (and d!266686 d!266624)))

(declare-fun lambda!25571 () Int)

(assert (=> bs!231562 (= (and (= (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107)))) (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297)))) (= (toValue!2772 (transformation!1727 (rule!3150 (h!14609 l!5107)))) (toValue!2772 (transformation!1727 (rule!3150 separatorToken!297))))) (= lambda!25571 lambda!25563))))

(assert (=> d!266686 true))

(assert (=> d!266686 (< (dynLambda!4302 order!5921 (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107))))) (dynLambda!4310 order!5929 lambda!25571))))

(assert (=> d!266686 true))

(assert (=> d!266686 (< (dynLambda!4300 order!5917 (toValue!2772 (transformation!1727 (rule!3150 (h!14609 l!5107))))) (dynLambda!4310 order!5929 lambda!25571))))

(assert (=> d!266686 (= (semiInverseModEq!673 (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107)))) (toValue!2772 (transformation!1727 (rule!3150 (h!14609 l!5107))))) (Forall!414 lambda!25571))))

(declare-fun bs!231563 () Bool)

(assert (= bs!231563 d!266686))

(declare-fun m!1093585 () Bool)

(assert (=> bs!231563 m!1093585))

(assert (=> d!266584 d!266686))

(declare-fun c!138460 () Bool)

(declare-fun d!266688 () Bool)

(assert (=> d!266688 (= c!138460 (is-Cons!9208 ($colon$colon!90 (withSeparatorTokenList!59 thiss!20117 (t!95978 (tail!1039 l!5107)) separatorToken!297) separatorToken!297)))))

(declare-fun e!561930 () List!9223)

(assert (=> d!266688 (= (printList!477 thiss!20117 ($colon$colon!90 (withSeparatorTokenList!59 thiss!20117 (t!95978 (tail!1039 l!5107)) separatorToken!297) separatorToken!297)) e!561930)))

(declare-fun b!853701 () Bool)

(assert (=> b!853701 (= e!561930 (++!2385 (list!3619 (charsOf!994 (h!14609 ($colon$colon!90 (withSeparatorTokenList!59 thiss!20117 (t!95978 (tail!1039 l!5107)) separatorToken!297) separatorToken!297)))) (printList!477 thiss!20117 (t!95978 ($colon$colon!90 (withSeparatorTokenList!59 thiss!20117 (t!95978 (tail!1039 l!5107)) separatorToken!297) separatorToken!297)))))))

(declare-fun b!853702 () Bool)

(assert (=> b!853702 (= e!561930 Nil!9207)))

(assert (= (and d!266688 c!138460) b!853701))

(assert (= (and d!266688 (not c!138460)) b!853702))

(declare-fun m!1093587 () Bool)

(assert (=> b!853701 m!1093587))

(assert (=> b!853701 m!1093587))

(declare-fun m!1093589 () Bool)

(assert (=> b!853701 m!1093589))

(declare-fun m!1093591 () Bool)

(assert (=> b!853701 m!1093591))

(assert (=> b!853701 m!1093589))

(assert (=> b!853701 m!1093591))

(declare-fun m!1093593 () Bool)

(assert (=> b!853701 m!1093593))

(assert (=> b!853374 d!266688))

(assert (=> b!853374 d!266672))

(assert (=> b!853374 d!266674))

(declare-fun bs!231564 () Bool)

(declare-fun d!266690 () Bool)

(assert (= bs!231564 (and d!266690 d!266646)))

(declare-fun lambda!25572 () Int)

(assert (=> bs!231564 (= (= (toValue!2772 (transformation!1727 (h!14610 rules!2621))) (toValue!2772 (transformation!1727 (rule!3150 (h!14609 l!5107))))) (= lambda!25572 lambda!25569))))

(assert (=> d!266690 true))

(assert (=> d!266690 (< (dynLambda!4300 order!5917 (toValue!2772 (transformation!1727 (h!14610 rules!2621)))) (dynLambda!4311 order!5931 lambda!25572))))

(assert (=> d!266690 (= (equivClasses!640 (toChars!2631 (transformation!1727 (h!14610 rules!2621))) (toValue!2772 (transformation!1727 (h!14610 rules!2621)))) (Forall2!324 lambda!25572))))

(declare-fun bs!231565 () Bool)

(assert (= bs!231565 d!266690))

(declare-fun m!1093595 () Bool)

(assert (=> bs!231565 m!1093595))

(assert (=> b!853422 d!266690))

(declare-fun b!853711 () Bool)

(declare-fun e!561935 () List!9223)

(assert (=> b!853711 (= e!561935 (printList!477 thiss!20117 (t!95978 lt!323141)))))

(declare-fun b!853714 () Bool)

(declare-fun lt!323226 () List!9223)

(declare-fun e!561936 () Bool)

(assert (=> b!853714 (= e!561936 (or (not (= (printList!477 thiss!20117 (t!95978 lt!323141)) Nil!9207)) (= lt!323226 (list!3619 (charsOf!994 (h!14609 lt!323141))))))))

(declare-fun b!853713 () Bool)

(declare-fun res!389941 () Bool)

(assert (=> b!853713 (=> (not res!389941) (not e!561936))))

(assert (=> b!853713 (= res!389941 (= (size!7680 lt!323226) (+ (size!7680 (list!3619 (charsOf!994 (h!14609 lt!323141)))) (size!7680 (printList!477 thiss!20117 (t!95978 lt!323141))))))))

(declare-fun d!266692 () Bool)

(assert (=> d!266692 e!561936))

(declare-fun res!389942 () Bool)

(assert (=> d!266692 (=> (not res!389942) (not e!561936))))

(declare-fun content!1347 (List!9223) (Set C!4890))

(assert (=> d!266692 (= res!389942 (= (content!1347 lt!323226) (set.union (content!1347 (list!3619 (charsOf!994 (h!14609 lt!323141)))) (content!1347 (printList!477 thiss!20117 (t!95978 lt!323141))))))))

(assert (=> d!266692 (= lt!323226 e!561935)))

(declare-fun c!138463 () Bool)

(assert (=> d!266692 (= c!138463 (is-Nil!9207 (list!3619 (charsOf!994 (h!14609 lt!323141)))))))

(assert (=> d!266692 (= (++!2385 (list!3619 (charsOf!994 (h!14609 lt!323141))) (printList!477 thiss!20117 (t!95978 lt!323141))) lt!323226)))

(declare-fun b!853712 () Bool)

(assert (=> b!853712 (= e!561935 (Cons!9207 (h!14608 (list!3619 (charsOf!994 (h!14609 lt!323141)))) (++!2385 (t!95977 (list!3619 (charsOf!994 (h!14609 lt!323141)))) (printList!477 thiss!20117 (t!95978 lt!323141)))))))

(assert (= (and d!266692 c!138463) b!853711))

(assert (= (and d!266692 (not c!138463)) b!853712))

(assert (= (and d!266692 res!389942) b!853713))

(assert (= (and b!853713 res!389941) b!853714))

(declare-fun m!1093597 () Bool)

(assert (=> b!853713 m!1093597))

(assert (=> b!853713 m!1093107))

(declare-fun m!1093599 () Bool)

(assert (=> b!853713 m!1093599))

(assert (=> b!853713 m!1093109))

(declare-fun m!1093601 () Bool)

(assert (=> b!853713 m!1093601))

(declare-fun m!1093603 () Bool)

(assert (=> d!266692 m!1093603))

(assert (=> d!266692 m!1093107))

(declare-fun m!1093605 () Bool)

(assert (=> d!266692 m!1093605))

(assert (=> d!266692 m!1093109))

(declare-fun m!1093607 () Bool)

(assert (=> d!266692 m!1093607))

(assert (=> b!853712 m!1093109))

(declare-fun m!1093609 () Bool)

(assert (=> b!853712 m!1093609))

(assert (=> b!853375 d!266692))

(declare-fun d!266694 () Bool)

(declare-fun list!3624 (Conc!3050) List!9223)

(assert (=> d!266694 (= (list!3619 (charsOf!994 (h!14609 lt!323141))) (list!3624 (c!138386 (charsOf!994 (h!14609 lt!323141)))))))

(declare-fun bs!231566 () Bool)

(assert (= bs!231566 d!266694))

(declare-fun m!1093611 () Bool)

(assert (=> bs!231566 m!1093611))

(assert (=> b!853375 d!266694))

(declare-fun d!266696 () Bool)

(declare-fun lt!323229 () BalanceConc!6114)

(assert (=> d!266696 (= (list!3619 lt!323229) (originalCharacters!2283 (h!14609 lt!323141)))))

(assert (=> d!266696 (= lt!323229 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 (h!14609 lt!323141)))) (value!55920 (h!14609 lt!323141))))))

(assert (=> d!266696 (= (charsOf!994 (h!14609 lt!323141)) lt!323229)))

(declare-fun b_lambda!28567 () Bool)

(assert (=> (not b_lambda!28567) (not d!266696)))

(declare-fun tb!60135 () Bool)

(declare-fun t!96045 () Bool)

(assert (=> (and b!853476 (= (toChars!2631 (transformation!1727 (h!14610 (t!95979 rules!2621)))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 lt!323141))))) t!96045) tb!60135))

(declare-fun b!853715 () Bool)

(declare-fun e!561937 () Bool)

(declare-fun tp!269066 () Bool)

(assert (=> b!853715 (= e!561937 (and (inv!11711 (c!138386 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 (h!14609 lt!323141)))) (value!55920 (h!14609 lt!323141))))) tp!269066))))

(declare-fun result!69664 () Bool)

(assert (=> tb!60135 (= result!69664 (and (inv!11712 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 (h!14609 lt!323141)))) (value!55920 (h!14609 lt!323141)))) e!561937))))

(assert (= tb!60135 b!853715))

(declare-fun m!1093613 () Bool)

(assert (=> b!853715 m!1093613))

(declare-fun m!1093615 () Bool)

(assert (=> tb!60135 m!1093615))

(assert (=> d!266696 t!96045))

(declare-fun b_and!75127 () Bool)

(assert (= b_and!75121 (and (=> t!96045 result!69664) b_and!75127)))

(declare-fun tb!60137 () Bool)

(declare-fun t!96047 () Bool)

(assert (=> (and b!853155 (= (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107)))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 lt!323141))))) t!96047) tb!60137))

(declare-fun result!69666 () Bool)

(assert (= result!69666 result!69664))

(assert (=> d!266696 t!96047))

(declare-fun b_and!75129 () Bool)

(assert (= b_and!75123 (and (=> t!96047 result!69666) b_and!75129)))

(declare-fun t!96049 () Bool)

(declare-fun tb!60139 () Bool)

(assert (=> (and b!853490 (= (toChars!2631 (transformation!1727 (rule!3150 (h!14609 (t!95978 l!5107))))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 lt!323141))))) t!96049) tb!60139))

(declare-fun result!69668 () Bool)

(assert (= result!69668 result!69664))

(assert (=> d!266696 t!96049))

(declare-fun b_and!75131 () Bool)

(assert (= b_and!75117 (and (=> t!96049 result!69668) b_and!75131)))

(declare-fun tb!60141 () Bool)

(declare-fun t!96051 () Bool)

(assert (=> (and b!853146 (= (toChars!2631 (transformation!1727 (h!14610 rules!2621))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 lt!323141))))) t!96051) tb!60141))

(declare-fun result!69670 () Bool)

(assert (= result!69670 result!69664))

(assert (=> d!266696 t!96051))

(declare-fun b_and!75133 () Bool)

(assert (= b_and!75125 (and (=> t!96051 result!69670) b_and!75133)))

(declare-fun tb!60143 () Bool)

(declare-fun t!96053 () Bool)

(assert (=> (and b!853158 (= (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 lt!323141))))) t!96053) tb!60143))

(declare-fun result!69672 () Bool)

(assert (= result!69672 result!69664))

(assert (=> d!266696 t!96053))

(declare-fun b_and!75135 () Bool)

(assert (= b_and!75119 (and (=> t!96053 result!69672) b_and!75135)))

(declare-fun m!1093617 () Bool)

(assert (=> d!266696 m!1093617))

(declare-fun m!1093619 () Bool)

(assert (=> d!266696 m!1093619))

(assert (=> b!853375 d!266696))

(declare-fun d!266698 () Bool)

(declare-fun c!138464 () Bool)

(assert (=> d!266698 (= c!138464 (is-Cons!9208 (t!95978 lt!323141)))))

(declare-fun e!561938 () List!9223)

(assert (=> d!266698 (= (printList!477 thiss!20117 (t!95978 lt!323141)) e!561938)))

(declare-fun b!853716 () Bool)

(assert (=> b!853716 (= e!561938 (++!2385 (list!3619 (charsOf!994 (h!14609 (t!95978 lt!323141)))) (printList!477 thiss!20117 (t!95978 (t!95978 lt!323141)))))))

(declare-fun b!853717 () Bool)

(assert (=> b!853717 (= e!561938 Nil!9207)))

(assert (= (and d!266698 c!138464) b!853716))

(assert (= (and d!266698 (not c!138464)) b!853717))

(declare-fun m!1093621 () Bool)

(assert (=> b!853716 m!1093621))

(assert (=> b!853716 m!1093621))

(declare-fun m!1093623 () Bool)

(assert (=> b!853716 m!1093623))

(declare-fun m!1093625 () Bool)

(assert (=> b!853716 m!1093625))

(assert (=> b!853716 m!1093623))

(assert (=> b!853716 m!1093625))

(declare-fun m!1093627 () Bool)

(assert (=> b!853716 m!1093627))

(assert (=> b!853375 d!266698))

(declare-fun d!266700 () Bool)

(declare-fun charsToBigInt!1 (List!9222) Int)

(assert (=> d!266700 (= (inv!17 (value!55920 (h!14609 l!5107))) (= (charsToBigInt!1 (text!12999 (value!55920 (h!14609 l!5107)))) (value!55912 (value!55920 (h!14609 l!5107)))))))

(declare-fun bs!231567 () Bool)

(assert (= bs!231567 d!266700))

(declare-fun m!1093629 () Bool)

(assert (=> bs!231567 m!1093629))

(assert (=> b!853236 d!266700))

(declare-fun b!853718 () Bool)

(declare-fun e!561940 () Bool)

(assert (=> b!853718 (= e!561940 (inv!16 (value!55920 (h!14609 (t!95978 l!5107)))))))

(declare-fun b!853719 () Bool)

(declare-fun res!389943 () Bool)

(declare-fun e!561939 () Bool)

(assert (=> b!853719 (=> res!389943 e!561939)))

(assert (=> b!853719 (= res!389943 (not (is-IntegerValue!5381 (value!55920 (h!14609 (t!95978 l!5107))))))))

(declare-fun e!561941 () Bool)

(assert (=> b!853719 (= e!561941 e!561939)))

(declare-fun d!266702 () Bool)

(declare-fun c!138466 () Bool)

(assert (=> d!266702 (= c!138466 (is-IntegerValue!5379 (value!55920 (h!14609 (t!95978 l!5107)))))))

(assert (=> d!266702 (= (inv!21 (value!55920 (h!14609 (t!95978 l!5107)))) e!561940)))

(declare-fun b!853720 () Bool)

(assert (=> b!853720 (= e!561940 e!561941)))

(declare-fun c!138465 () Bool)

(assert (=> b!853720 (= c!138465 (is-IntegerValue!5380 (value!55920 (h!14609 (t!95978 l!5107)))))))

(declare-fun b!853721 () Bool)

(assert (=> b!853721 (= e!561939 (inv!15 (value!55920 (h!14609 (t!95978 l!5107)))))))

(declare-fun b!853722 () Bool)

(assert (=> b!853722 (= e!561941 (inv!17 (value!55920 (h!14609 (t!95978 l!5107)))))))

(assert (= (and d!266702 c!138466) b!853718))

(assert (= (and d!266702 (not c!138466)) b!853720))

(assert (= (and b!853720 c!138465) b!853722))

(assert (= (and b!853720 (not c!138465)) b!853719))

(assert (= (and b!853719 (not res!389943)) b!853721))

(declare-fun m!1093631 () Bool)

(assert (=> b!853718 m!1093631))

(declare-fun m!1093633 () Bool)

(assert (=> b!853721 m!1093633))

(declare-fun m!1093635 () Bool)

(assert (=> b!853722 m!1093635))

(assert (=> b!853488 d!266702))

(declare-fun d!266704 () Bool)

(assert (=> d!266704 (= (isEmpty!5450 (originalCharacters!2283 (h!14609 l!5107))) (is-Nil!9207 (originalCharacters!2283 (h!14609 l!5107))))))

(assert (=> d!266578 d!266704))

(declare-fun bs!231568 () Bool)

(declare-fun d!266706 () Bool)

(assert (= bs!231568 (and d!266706 b!853154)))

(declare-fun lambda!25573 () Int)

(assert (=> bs!231568 (not (= lambda!25573 lambda!25549))))

(declare-fun bs!231569 () Bool)

(assert (= bs!231569 (and d!266706 d!266530)))

(assert (=> bs!231569 (= lambda!25573 lambda!25555)))

(declare-fun bs!231570 () Bool)

(assert (= bs!231570 (and d!266706 d!266570)))

(assert (=> bs!231570 (= lambda!25573 lambda!25556)))

(declare-fun bs!231571 () Bool)

(assert (= bs!231571 (and d!266706 d!266662)))

(assert (=> bs!231571 (= lambda!25573 lambda!25570)))

(declare-fun b!853727 () Bool)

(declare-fun e!561946 () Bool)

(assert (=> b!853727 (= e!561946 true)))

(declare-fun b!853726 () Bool)

(declare-fun e!561945 () Bool)

(assert (=> b!853726 (= e!561945 e!561946)))

(declare-fun b!853725 () Bool)

(declare-fun e!561944 () Bool)

(assert (=> b!853725 (= e!561944 e!561945)))

(assert (=> d!266706 e!561944))

(assert (= b!853726 b!853727))

(assert (= b!853725 b!853726))

(assert (= (and d!266706 (is-Cons!9209 rules!2621)) b!853725))

(assert (=> b!853727 (< (dynLambda!4300 order!5917 (toValue!2772 (transformation!1727 (h!14610 rules!2621)))) (dynLambda!4301 order!5919 lambda!25573))))

(assert (=> b!853727 (< (dynLambda!4302 order!5921 (toChars!2631 (transformation!1727 (h!14610 rules!2621)))) (dynLambda!4301 order!5919 lambda!25573))))

(assert (=> d!266706 true))

(declare-fun lt!323230 () Bool)

(assert (=> d!266706 (= lt!323230 (forall!2180 (withSeparatorTokenList!59 thiss!20117 l!5107 separatorToken!297) lambda!25573))))

(declare-fun e!561943 () Bool)

(assert (=> d!266706 (= lt!323230 e!561943)))

(declare-fun res!389945 () Bool)

(assert (=> d!266706 (=> res!389945 e!561943)))

(assert (=> d!266706 (= res!389945 (not (is-Cons!9208 (withSeparatorTokenList!59 thiss!20117 l!5107 separatorToken!297))))))

(assert (=> d!266706 (not (isEmpty!5448 rules!2621))))

(assert (=> d!266706 (= (rulesProduceEachTokenIndividuallyList!417 thiss!20117 rules!2621 (withSeparatorTokenList!59 thiss!20117 l!5107 separatorToken!297)) lt!323230)))

(declare-fun b!853723 () Bool)

(declare-fun e!561942 () Bool)

(assert (=> b!853723 (= e!561943 e!561942)))

(declare-fun res!389944 () Bool)

(assert (=> b!853723 (=> (not res!389944) (not e!561942))))

(assert (=> b!853723 (= res!389944 (rulesProduceIndividualToken!593 thiss!20117 rules!2621 (h!14609 (withSeparatorTokenList!59 thiss!20117 l!5107 separatorToken!297))))))

(declare-fun b!853724 () Bool)

(assert (=> b!853724 (= e!561942 (rulesProduceEachTokenIndividuallyList!417 thiss!20117 rules!2621 (t!95978 (withSeparatorTokenList!59 thiss!20117 l!5107 separatorToken!297))))))

(assert (= (and d!266706 (not res!389945)) b!853723))

(assert (= (and b!853723 res!389944) b!853724))

(assert (=> d!266706 m!1092879))

(declare-fun m!1093637 () Bool)

(assert (=> d!266706 m!1093637))

(assert (=> d!266706 m!1092867))

(declare-fun m!1093639 () Bool)

(assert (=> b!853723 m!1093639))

(declare-fun m!1093641 () Bool)

(assert (=> b!853724 m!1093641))

(assert (=> d!266574 d!266706))

(assert (=> d!266574 d!266572))

(declare-fun d!266708 () Bool)

(assert (=> d!266708 (rulesProduceEachTokenIndividuallyList!417 thiss!20117 rules!2621 (withSeparatorTokenList!59 thiss!20117 l!5107 separatorToken!297))))

(assert (=> d!266708 true))

(declare-fun _$32!339 () Unit!13716)

(assert (=> d!266708 (= (choose!5035 thiss!20117 rules!2621 l!5107 separatorToken!297) _$32!339)))

(declare-fun bs!231572 () Bool)

(assert (= bs!231572 d!266708))

(assert (=> bs!231572 m!1092879))

(assert (=> bs!231572 m!1092879))

(assert (=> bs!231572 m!1093177))

(assert (=> d!266574 d!266708))

(assert (=> d!266574 d!266580))

(assert (=> b!853379 d!266672))

(declare-fun d!266710 () Bool)

(declare-fun lt!323231 () BalanceConc!6114)

(assert (=> d!266710 (= (list!3619 lt!323231) (originalCharacters!2283 (h!14609 (tail!1039 l!5107))))))

(assert (=> d!266710 (= lt!323231 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 (h!14609 (tail!1039 l!5107))))) (value!55920 (h!14609 (tail!1039 l!5107)))))))

(assert (=> d!266710 (= (charsOf!994 (h!14609 (tail!1039 l!5107))) lt!323231)))

(declare-fun b_lambda!28569 () Bool)

(assert (=> (not b_lambda!28569) (not d!266710)))

(declare-fun t!96055 () Bool)

(declare-fun tb!60145 () Bool)

(assert (=> (and b!853158 (= (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 (tail!1039 l!5107)))))) t!96055) tb!60145))

(declare-fun b!853728 () Bool)

(declare-fun e!561947 () Bool)

(declare-fun tp!269067 () Bool)

(assert (=> b!853728 (= e!561947 (and (inv!11711 (c!138386 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 (h!14609 (tail!1039 l!5107))))) (value!55920 (h!14609 (tail!1039 l!5107)))))) tp!269067))))

(declare-fun result!69674 () Bool)

(assert (=> tb!60145 (= result!69674 (and (inv!11712 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 (h!14609 (tail!1039 l!5107))))) (value!55920 (h!14609 (tail!1039 l!5107))))) e!561947))))

(assert (= tb!60145 b!853728))

(declare-fun m!1093643 () Bool)

(assert (=> b!853728 m!1093643))

(declare-fun m!1093645 () Bool)

(assert (=> tb!60145 m!1093645))

(assert (=> d!266710 t!96055))

(declare-fun b_and!75137 () Bool)

(assert (= b_and!75135 (and (=> t!96055 result!69674) b_and!75137)))

(declare-fun t!96057 () Bool)

(declare-fun tb!60147 () Bool)

(assert (=> (and b!853155 (= (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107)))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 (tail!1039 l!5107)))))) t!96057) tb!60147))

(declare-fun result!69676 () Bool)

(assert (= result!69676 result!69674))

(assert (=> d!266710 t!96057))

(declare-fun b_and!75139 () Bool)

(assert (= b_and!75129 (and (=> t!96057 result!69676) b_and!75139)))

(declare-fun tb!60149 () Bool)

(declare-fun t!96059 () Bool)

(assert (=> (and b!853146 (= (toChars!2631 (transformation!1727 (h!14610 rules!2621))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 (tail!1039 l!5107)))))) t!96059) tb!60149))

(declare-fun result!69678 () Bool)

(assert (= result!69678 result!69674))

(assert (=> d!266710 t!96059))

(declare-fun b_and!75141 () Bool)

(assert (= b_and!75133 (and (=> t!96059 result!69678) b_and!75141)))

(declare-fun tb!60151 () Bool)

(declare-fun t!96061 () Bool)

(assert (=> (and b!853476 (= (toChars!2631 (transformation!1727 (h!14610 (t!95979 rules!2621)))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 (tail!1039 l!5107)))))) t!96061) tb!60151))

(declare-fun result!69680 () Bool)

(assert (= result!69680 result!69674))

(assert (=> d!266710 t!96061))

(declare-fun b_and!75143 () Bool)

(assert (= b_and!75127 (and (=> t!96061 result!69680) b_and!75143)))

(declare-fun t!96063 () Bool)

(declare-fun tb!60153 () Bool)

(assert (=> (and b!853490 (= (toChars!2631 (transformation!1727 (rule!3150 (h!14609 (t!95978 l!5107))))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 (tail!1039 l!5107)))))) t!96063) tb!60153))

(declare-fun result!69682 () Bool)

(assert (= result!69682 result!69674))

(assert (=> d!266710 t!96063))

(declare-fun b_and!75145 () Bool)

(assert (= b_and!75131 (and (=> t!96063 result!69682) b_and!75145)))

(declare-fun m!1093647 () Bool)

(assert (=> d!266710 m!1093647))

(declare-fun m!1093649 () Bool)

(assert (=> d!266710 m!1093649))

(assert (=> b!853379 d!266710))

(declare-fun b!853729 () Bool)

(declare-fun e!561948 () List!9223)

(assert (=> b!853729 (= e!561948 (++!2385 lt!323143 lt!323142))))

(declare-fun lt!323232 () List!9223)

(declare-fun e!561949 () Bool)

(declare-fun b!853732 () Bool)

(assert (=> b!853732 (= e!561949 (or (not (= (++!2385 lt!323143 lt!323142) Nil!9207)) (= lt!323232 lt!323146)))))

(declare-fun b!853731 () Bool)

(declare-fun res!389954 () Bool)

(assert (=> b!853731 (=> (not res!389954) (not e!561949))))

(assert (=> b!853731 (= res!389954 (= (size!7680 lt!323232) (+ (size!7680 lt!323146) (size!7680 (++!2385 lt!323143 lt!323142)))))))

(declare-fun d!266712 () Bool)

(assert (=> d!266712 e!561949))

(declare-fun res!389955 () Bool)

(assert (=> d!266712 (=> (not res!389955) (not e!561949))))

(assert (=> d!266712 (= res!389955 (= (content!1347 lt!323232) (set.union (content!1347 lt!323146) (content!1347 (++!2385 lt!323143 lt!323142)))))))

(assert (=> d!266712 (= lt!323232 e!561948)))

(declare-fun c!138467 () Bool)

(assert (=> d!266712 (= c!138467 (is-Nil!9207 lt!323146))))

(assert (=> d!266712 (= (++!2385 lt!323146 (++!2385 lt!323143 lt!323142)) lt!323232)))

(declare-fun b!853730 () Bool)

(assert (=> b!853730 (= e!561948 (Cons!9207 (h!14608 lt!323146) (++!2385 (t!95977 lt!323146) (++!2385 lt!323143 lt!323142))))))

(assert (= (and d!266712 c!138467) b!853729))

(assert (= (and d!266712 (not c!138467)) b!853730))

(assert (= (and d!266712 res!389955) b!853731))

(assert (= (and b!853731 res!389954) b!853732))

(declare-fun m!1093651 () Bool)

(assert (=> b!853731 m!1093651))

(declare-fun m!1093653 () Bool)

(assert (=> b!853731 m!1093653))

(assert (=> b!853731 m!1093099))

(declare-fun m!1093655 () Bool)

(assert (=> b!853731 m!1093655))

(declare-fun m!1093657 () Bool)

(assert (=> d!266712 m!1093657))

(declare-fun m!1093659 () Bool)

(assert (=> d!266712 m!1093659))

(assert (=> d!266712 m!1093099))

(declare-fun m!1093661 () Bool)

(assert (=> d!266712 m!1093661))

(assert (=> b!853730 m!1093099))

(declare-fun m!1093663 () Bool)

(assert (=> b!853730 m!1093663))

(assert (=> b!853379 d!266712))

(assert (=> b!853379 d!266674))

(declare-fun b!853733 () Bool)

(declare-fun e!561950 () List!9223)

(assert (=> b!853733 (= e!561950 lt!323142)))

(declare-fun b!853736 () Bool)

(declare-fun lt!323233 () List!9223)

(declare-fun e!561951 () Bool)

(assert (=> b!853736 (= e!561951 (or (not (= lt!323142 Nil!9207)) (= lt!323233 lt!323143)))))

(declare-fun b!853735 () Bool)

(declare-fun res!389956 () Bool)

(assert (=> b!853735 (=> (not res!389956) (not e!561951))))

(assert (=> b!853735 (= res!389956 (= (size!7680 lt!323233) (+ (size!7680 lt!323143) (size!7680 lt!323142))))))

(declare-fun d!266714 () Bool)

(assert (=> d!266714 e!561951))

(declare-fun res!389957 () Bool)

(assert (=> d!266714 (=> (not res!389957) (not e!561951))))

(assert (=> d!266714 (= res!389957 (= (content!1347 lt!323233) (set.union (content!1347 lt!323143) (content!1347 lt!323142))))))

(assert (=> d!266714 (= lt!323233 e!561950)))

(declare-fun c!138468 () Bool)

(assert (=> d!266714 (= c!138468 (is-Nil!9207 lt!323143))))

(assert (=> d!266714 (= (++!2385 lt!323143 lt!323142) lt!323233)))

(declare-fun b!853734 () Bool)

(assert (=> b!853734 (= e!561950 (Cons!9207 (h!14608 lt!323143) (++!2385 (t!95977 lt!323143) lt!323142)))))

(assert (= (and d!266714 c!138468) b!853733))

(assert (= (and d!266714 (not c!138468)) b!853734))

(assert (= (and d!266714 res!389957) b!853735))

(assert (= (and b!853735 res!389956) b!853736))

(declare-fun m!1093665 () Bool)

(assert (=> b!853735 m!1093665))

(declare-fun m!1093667 () Bool)

(assert (=> b!853735 m!1093667))

(declare-fun m!1093669 () Bool)

(assert (=> b!853735 m!1093669))

(declare-fun m!1093671 () Bool)

(assert (=> d!266714 m!1093671))

(declare-fun m!1093673 () Bool)

(assert (=> d!266714 m!1093673))

(declare-fun m!1093675 () Bool)

(assert (=> d!266714 m!1093675))

(declare-fun m!1093677 () Bool)

(assert (=> b!853734 m!1093677))

(assert (=> b!853379 d!266714))

(declare-fun d!266716 () Bool)

(declare-fun lt!323234 () BalanceConc!6114)

(assert (=> d!266716 (= (list!3619 lt!323234) (originalCharacters!2283 separatorToken!297))))

(assert (=> d!266716 (= lt!323234 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297))) (value!55920 separatorToken!297)))))

(assert (=> d!266716 (= (charsOf!994 separatorToken!297) lt!323234)))

(declare-fun b_lambda!28571 () Bool)

(assert (=> (not b_lambda!28571) (not d!266716)))

(assert (=> d!266716 t!96009))

(declare-fun b_and!75147 () Bool)

(assert (= b_and!75143 (and (=> t!96009 result!69622) b_and!75147)))

(assert (=> d!266716 t!96013))

(declare-fun b_and!75149 () Bool)

(assert (= b_and!75145 (and (=> t!96013 result!69628) b_and!75149)))

(assert (=> d!266716 t!95998))

(declare-fun b_and!75151 () Bool)

(assert (= b_and!75139 (and (=> t!95998 result!69608) b_and!75151)))

(assert (=> d!266716 t!95996))

(declare-fun b_and!75153 () Bool)

(assert (= b_and!75141 (and (=> t!95996 result!69606) b_and!75153)))

(assert (=> d!266716 t!95994))

(declare-fun b_and!75155 () Bool)

(assert (= b_and!75137 (and (=> t!95994 result!69602) b_and!75155)))

(declare-fun m!1093679 () Bool)

(assert (=> d!266716 m!1093679))

(assert (=> d!266716 m!1093119))

(assert (=> b!853379 d!266716))

(assert (=> b!853379 d!266670))

(declare-fun b!853737 () Bool)

(declare-fun e!561952 () List!9223)

(assert (=> b!853737 (= e!561952 lt!323143)))

(declare-fun e!561953 () Bool)

(declare-fun lt!323235 () List!9223)

(declare-fun b!853740 () Bool)

(assert (=> b!853740 (= e!561953 (or (not (= lt!323143 Nil!9207)) (= lt!323235 lt!323146)))))

(declare-fun b!853739 () Bool)

(declare-fun res!389958 () Bool)

(assert (=> b!853739 (=> (not res!389958) (not e!561953))))

(assert (=> b!853739 (= res!389958 (= (size!7680 lt!323235) (+ (size!7680 lt!323146) (size!7680 lt!323143))))))

(declare-fun d!266718 () Bool)

(assert (=> d!266718 e!561953))

(declare-fun res!389959 () Bool)

(assert (=> d!266718 (=> (not res!389959) (not e!561953))))

(assert (=> d!266718 (= res!389959 (= (content!1347 lt!323235) (set.union (content!1347 lt!323146) (content!1347 lt!323143))))))

(assert (=> d!266718 (= lt!323235 e!561952)))

(declare-fun c!138469 () Bool)

(assert (=> d!266718 (= c!138469 (is-Nil!9207 lt!323146))))

(assert (=> d!266718 (= (++!2385 lt!323146 lt!323143) lt!323235)))

(declare-fun b!853738 () Bool)

(assert (=> b!853738 (= e!561952 (Cons!9207 (h!14608 lt!323146) (++!2385 (t!95977 lt!323146) lt!323143)))))

(assert (= (and d!266718 c!138469) b!853737))

(assert (= (and d!266718 (not c!138469)) b!853738))

(assert (= (and d!266718 res!389959) b!853739))

(assert (= (and b!853739 res!389958) b!853740))

(declare-fun m!1093681 () Bool)

(assert (=> b!853739 m!1093681))

(assert (=> b!853739 m!1093653))

(assert (=> b!853739 m!1093667))

(declare-fun m!1093683 () Bool)

(assert (=> d!266718 m!1093683))

(assert (=> d!266718 m!1093659))

(assert (=> d!266718 m!1093673))

(declare-fun m!1093685 () Bool)

(assert (=> b!853738 m!1093685))

(assert (=> b!853379 d!266718))

(declare-fun d!266720 () Bool)

(assert (=> d!266720 (= (list!3619 (charsOf!994 separatorToken!297)) (list!3624 (c!138386 (charsOf!994 separatorToken!297))))))

(declare-fun bs!231573 () Bool)

(assert (= bs!231573 d!266720))

(declare-fun m!1093687 () Bool)

(assert (=> bs!231573 m!1093687))

(assert (=> b!853379 d!266720))

(declare-fun d!266722 () Bool)

(assert (=> d!266722 (= (list!3619 (charsOf!994 (h!14609 (tail!1039 l!5107)))) (list!3624 (c!138386 (charsOf!994 (h!14609 (tail!1039 l!5107))))))))

(declare-fun bs!231574 () Bool)

(assert (= bs!231574 d!266722))

(declare-fun m!1093689 () Bool)

(assert (=> bs!231574 m!1093689))

(assert (=> b!853379 d!266722))

(declare-fun d!266724 () Bool)

(declare-fun c!138470 () Bool)

(assert (=> d!266724 (= c!138470 (is-Cons!9208 (withSeparatorTokenList!59 thiss!20117 (t!95978 (tail!1039 l!5107)) separatorToken!297)))))

(declare-fun e!561954 () List!9223)

(assert (=> d!266724 (= (printList!477 thiss!20117 (withSeparatorTokenList!59 thiss!20117 (t!95978 (tail!1039 l!5107)) separatorToken!297)) e!561954)))

(declare-fun b!853741 () Bool)

(assert (=> b!853741 (= e!561954 (++!2385 (list!3619 (charsOf!994 (h!14609 (withSeparatorTokenList!59 thiss!20117 (t!95978 (tail!1039 l!5107)) separatorToken!297)))) (printList!477 thiss!20117 (t!95978 (withSeparatorTokenList!59 thiss!20117 (t!95978 (tail!1039 l!5107)) separatorToken!297)))))))

(declare-fun b!853742 () Bool)

(assert (=> b!853742 (= e!561954 Nil!9207)))

(assert (= (and d!266724 c!138470) b!853741))

(assert (= (and d!266724 (not c!138470)) b!853742))

(declare-fun m!1093691 () Bool)

(assert (=> b!853741 m!1093691))

(assert (=> b!853741 m!1093691))

(declare-fun m!1093693 () Bool)

(assert (=> b!853741 m!1093693))

(declare-fun m!1093695 () Bool)

(assert (=> b!853741 m!1093695))

(assert (=> b!853741 m!1093693))

(assert (=> b!853741 m!1093695))

(declare-fun m!1093697 () Bool)

(assert (=> b!853741 m!1093697))

(assert (=> b!853379 d!266724))

(declare-fun b!853743 () Bool)

(declare-fun e!561955 () List!9223)

(assert (=> b!853743 (= e!561955 lt!323142)))

(declare-fun lt!323236 () List!9223)

(declare-fun e!561956 () Bool)

(declare-fun b!853746 () Bool)

(assert (=> b!853746 (= e!561956 (or (not (= lt!323142 Nil!9207)) (= lt!323236 (++!2385 lt!323146 lt!323143))))))

(declare-fun b!853745 () Bool)

(declare-fun res!389960 () Bool)

(assert (=> b!853745 (=> (not res!389960) (not e!561956))))

(assert (=> b!853745 (= res!389960 (= (size!7680 lt!323236) (+ (size!7680 (++!2385 lt!323146 lt!323143)) (size!7680 lt!323142))))))

(declare-fun d!266726 () Bool)

(assert (=> d!266726 e!561956))

(declare-fun res!389961 () Bool)

(assert (=> d!266726 (=> (not res!389961) (not e!561956))))

(assert (=> d!266726 (= res!389961 (= (content!1347 lt!323236) (set.union (content!1347 (++!2385 lt!323146 lt!323143)) (content!1347 lt!323142))))))

(assert (=> d!266726 (= lt!323236 e!561955)))

(declare-fun c!138471 () Bool)

(assert (=> d!266726 (= c!138471 (is-Nil!9207 (++!2385 lt!323146 lt!323143)))))

(assert (=> d!266726 (= (++!2385 (++!2385 lt!323146 lt!323143) lt!323142) lt!323236)))

(declare-fun b!853744 () Bool)

(assert (=> b!853744 (= e!561955 (Cons!9207 (h!14608 (++!2385 lt!323146 lt!323143)) (++!2385 (t!95977 (++!2385 lt!323146 lt!323143)) lt!323142)))))

(assert (= (and d!266726 c!138471) b!853743))

(assert (= (and d!266726 (not c!138471)) b!853744))

(assert (= (and d!266726 res!389961) b!853745))

(assert (= (and b!853745 res!389960) b!853746))

(declare-fun m!1093699 () Bool)

(assert (=> b!853745 m!1093699))

(assert (=> b!853745 m!1093087))

(declare-fun m!1093701 () Bool)

(assert (=> b!853745 m!1093701))

(assert (=> b!853745 m!1093669))

(declare-fun m!1093703 () Bool)

(assert (=> d!266726 m!1093703))

(assert (=> d!266726 m!1093087))

(declare-fun m!1093705 () Bool)

(assert (=> d!266726 m!1093705))

(assert (=> d!266726 m!1093675))

(declare-fun m!1093707 () Bool)

(assert (=> b!853744 m!1093707))

(assert (=> b!853379 d!266726))

(declare-fun d!266728 () Bool)

(assert (=> d!266728 (= (++!2385 (++!2385 lt!323146 lt!323143) lt!323142) (++!2385 lt!323146 (++!2385 lt!323143 lt!323142)))))

(declare-fun lt!323239 () Unit!13716)

(declare-fun choose!5037 (List!9223 List!9223 List!9223) Unit!13716)

(assert (=> d!266728 (= lt!323239 (choose!5037 lt!323146 lt!323143 lt!323142))))

(assert (=> d!266728 (= (lemmaConcatAssociativity!752 lt!323146 lt!323143 lt!323142) lt!323239)))

(declare-fun bs!231575 () Bool)

(assert (= bs!231575 d!266728))

(assert (=> bs!231575 m!1093099))

(assert (=> bs!231575 m!1093101))

(declare-fun m!1093709 () Bool)

(assert (=> bs!231575 m!1093709))

(assert (=> bs!231575 m!1093087))

(assert (=> bs!231575 m!1093087))

(assert (=> bs!231575 m!1093089))

(assert (=> bs!231575 m!1093099))

(assert (=> b!853379 d!266728))

(declare-fun d!266730 () Bool)

(declare-fun c!138472 () Bool)

(assert (=> d!266730 (= c!138472 (is-Cons!9208 lt!323144))))

(declare-fun e!561957 () List!9223)

(assert (=> d!266730 (= (printList!477 thiss!20117 lt!323144) e!561957)))

(declare-fun b!853747 () Bool)

(assert (=> b!853747 (= e!561957 (++!2385 (list!3619 (charsOf!994 (h!14609 lt!323144))) (printList!477 thiss!20117 (t!95978 lt!323144))))))

(declare-fun b!853748 () Bool)

(assert (=> b!853748 (= e!561957 Nil!9207)))

(assert (= (and d!266730 c!138472) b!853747))

(assert (= (and d!266730 (not c!138472)) b!853748))

(declare-fun m!1093711 () Bool)

(assert (=> b!853747 m!1093711))

(assert (=> b!853747 m!1093711))

(declare-fun m!1093713 () Bool)

(assert (=> b!853747 m!1093713))

(declare-fun m!1093715 () Bool)

(assert (=> b!853747 m!1093715))

(assert (=> b!853747 m!1093713))

(assert (=> b!853747 m!1093715))

(declare-fun m!1093717 () Bool)

(assert (=> b!853747 m!1093717))

(assert (=> d!266564 d!266730))

(declare-fun d!266732 () Bool)

(declare-fun c!138473 () Bool)

(assert (=> d!266732 (= c!138473 (is-Cons!9208 (tail!1039 l!5107)))))

(declare-fun e!561958 () List!9223)

(assert (=> d!266732 (= (printWithSeparatorTokenList!35 thiss!20117 (tail!1039 l!5107) separatorToken!297) e!561958)))

(declare-fun b!853749 () Bool)

(assert (=> b!853749 (= e!561958 (++!2385 (++!2385 (list!3619 (charsOf!994 (h!14609 (tail!1039 l!5107)))) (list!3619 (charsOf!994 separatorToken!297))) (printWithSeparatorTokenList!35 thiss!20117 (t!95978 (tail!1039 l!5107)) separatorToken!297)))))

(declare-fun b!853750 () Bool)

(assert (=> b!853750 (= e!561958 Nil!9207)))

(assert (= (and d!266732 c!138473) b!853749))

(assert (= (and d!266732 (not c!138473)) b!853750))

(assert (=> b!853749 m!1093093))

(assert (=> b!853749 m!1093095))

(declare-fun m!1093719 () Bool)

(assert (=> b!853749 m!1093719))

(assert (=> b!853749 m!1093091))

(assert (=> b!853749 m!1093091))

(assert (=> b!853749 m!1093095))

(assert (=> b!853749 m!1093533))

(assert (=> b!853749 m!1093083))

(assert (=> b!853749 m!1093719))

(assert (=> b!853749 m!1093533))

(declare-fun m!1093721 () Bool)

(assert (=> b!853749 m!1093721))

(assert (=> b!853749 m!1093083))

(assert (=> b!853749 m!1093093))

(assert (=> d!266564 d!266732))

(declare-fun d!266734 () Bool)

(declare-fun res!389962 () Bool)

(declare-fun e!561959 () Bool)

(assert (=> d!266734 (=> res!389962 e!561959)))

(assert (=> d!266734 (= res!389962 (is-Nil!9208 lt!323082))))

(assert (=> d!266734 (= (forall!2180 lt!323082 lambda!25556) e!561959)))

(declare-fun b!853751 () Bool)

(declare-fun e!561960 () Bool)

(assert (=> b!853751 (= e!561959 e!561960)))

(declare-fun res!389963 () Bool)

(assert (=> b!853751 (=> (not res!389963) (not e!561960))))

(assert (=> b!853751 (= res!389963 (dynLambda!4304 lambda!25556 (h!14609 lt!323082)))))

(declare-fun b!853752 () Bool)

(assert (=> b!853752 (= e!561960 (forall!2180 (t!95978 lt!323082) lambda!25556))))

(assert (= (and d!266734 (not res!389962)) b!853751))

(assert (= (and b!853751 res!389963) b!853752))

(declare-fun b_lambda!28573 () Bool)

(assert (=> (not b_lambda!28573) (not b!853751)))

(declare-fun m!1093723 () Bool)

(assert (=> b!853751 m!1093723))

(declare-fun m!1093725 () Bool)

(assert (=> b!853752 m!1093725))

(assert (=> d!266570 d!266734))

(assert (=> d!266570 d!266580))

(declare-fun d!266736 () Bool)

(declare-fun lt!323240 () Bool)

(assert (=> d!266736 (= lt!323240 (isEmpty!5450 (list!3619 (_2!6023 lt!323165))))))

(assert (=> d!266736 (= lt!323240 (isEmpty!5454 (c!138386 (_2!6023 lt!323165))))))

(assert (=> d!266736 (= (isEmpty!5451 (_2!6023 lt!323165)) lt!323240)))

(declare-fun bs!231576 () Bool)

(assert (= bs!231576 d!266736))

(declare-fun m!1093727 () Bool)

(assert (=> bs!231576 m!1093727))

(assert (=> bs!231576 m!1093727))

(declare-fun m!1093729 () Bool)

(assert (=> bs!231576 m!1093729))

(declare-fun m!1093731 () Bool)

(assert (=> bs!231576 m!1093731))

(assert (=> b!853434 d!266736))

(declare-fun d!266738 () Bool)

(assert (=> d!266738 (= (list!3619 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107)))) (value!55920 (h!14609 l!5107)))) (list!3624 (c!138386 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107)))) (value!55920 (h!14609 l!5107))))))))

(declare-fun bs!231577 () Bool)

(assert (= bs!231577 d!266738))

(declare-fun m!1093733 () Bool)

(assert (=> bs!231577 m!1093733))

(assert (=> b!853416 d!266738))

(declare-fun d!266740 () Bool)

(assert (=> d!266740 (= (inv!11704 (tag!1989 (h!14610 (t!95979 rules!2621)))) (= (mod (str.len (value!55919 (tag!1989 (h!14610 (t!95979 rules!2621))))) 2) 0))))

(assert (=> b!853475 d!266740))

(declare-fun d!266742 () Bool)

(declare-fun res!389964 () Bool)

(declare-fun e!561961 () Bool)

(assert (=> d!266742 (=> (not res!389964) (not e!561961))))

(assert (=> d!266742 (= res!389964 (semiInverseModEq!673 (toChars!2631 (transformation!1727 (h!14610 (t!95979 rules!2621)))) (toValue!2772 (transformation!1727 (h!14610 (t!95979 rules!2621))))))))

(assert (=> d!266742 (= (inv!11708 (transformation!1727 (h!14610 (t!95979 rules!2621)))) e!561961)))

(declare-fun b!853753 () Bool)

(assert (=> b!853753 (= e!561961 (equivClasses!640 (toChars!2631 (transformation!1727 (h!14610 (t!95979 rules!2621)))) (toValue!2772 (transformation!1727 (h!14610 (t!95979 rules!2621))))))))

(assert (= (and d!266742 res!389964) b!853753))

(declare-fun m!1093735 () Bool)

(assert (=> d!266742 m!1093735))

(declare-fun m!1093737 () Bool)

(assert (=> b!853753 m!1093737))

(assert (=> b!853475 d!266742))

(declare-fun bs!231578 () Bool)

(declare-fun d!266744 () Bool)

(assert (= bs!231578 (and d!266744 d!266646)))

(declare-fun lambda!25574 () Int)

(assert (=> bs!231578 (= (= (toValue!2772 (transformation!1727 (rule!3150 separatorToken!297))) (toValue!2772 (transformation!1727 (rule!3150 (h!14609 l!5107))))) (= lambda!25574 lambda!25569))))

(declare-fun bs!231579 () Bool)

(assert (= bs!231579 (and d!266744 d!266690)))

(assert (=> bs!231579 (= (= (toValue!2772 (transformation!1727 (rule!3150 separatorToken!297))) (toValue!2772 (transformation!1727 (h!14610 rules!2621)))) (= lambda!25574 lambda!25572))))

(assert (=> d!266744 true))

(assert (=> d!266744 (< (dynLambda!4300 order!5917 (toValue!2772 (transformation!1727 (rule!3150 separatorToken!297)))) (dynLambda!4311 order!5931 lambda!25574))))

(assert (=> d!266744 (= (equivClasses!640 (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297))) (toValue!2772 (transformation!1727 (rule!3150 separatorToken!297)))) (Forall2!324 lambda!25574))))

(declare-fun bs!231580 () Bool)

(assert (= bs!231580 d!266744))

(declare-fun m!1093739 () Bool)

(assert (=> bs!231580 m!1093739))

(assert (=> b!853426 d!266744))

(declare-fun d!266746 () Bool)

(declare-fun res!389965 () Bool)

(declare-fun e!561962 () Bool)

(assert (=> d!266746 (=> res!389965 e!561962)))

(assert (=> d!266746 (= res!389965 (is-Nil!9208 l!5107))))

(assert (=> d!266746 (= (forall!2180 l!5107 lambda!25555) e!561962)))

(declare-fun b!853754 () Bool)

(declare-fun e!561963 () Bool)

(assert (=> b!853754 (= e!561962 e!561963)))

(declare-fun res!389966 () Bool)

(assert (=> b!853754 (=> (not res!389966) (not e!561963))))

(assert (=> b!853754 (= res!389966 (dynLambda!4304 lambda!25555 (h!14609 l!5107)))))

(declare-fun b!853755 () Bool)

(assert (=> b!853755 (= e!561963 (forall!2180 (t!95978 l!5107) lambda!25555))))

(assert (= (and d!266746 (not res!389965)) b!853754))

(assert (= (and b!853754 res!389966) b!853755))

(declare-fun b_lambda!28575 () Bool)

(assert (=> (not b_lambda!28575) (not b!853754)))

(declare-fun m!1093741 () Bool)

(assert (=> b!853754 m!1093741))

(declare-fun m!1093743 () Bool)

(assert (=> b!853755 m!1093743))

(assert (=> d!266530 d!266746))

(assert (=> d!266530 d!266580))

(declare-fun d!266748 () Bool)

(declare-fun c!138474 () Bool)

(assert (=> d!266748 (= c!138474 (is-Cons!9208 ($colon$colon!90 ($colon$colon!90 (withSeparatorTokenList!59 thiss!20117 (t!95978 l!5107) separatorToken!297) separatorToken!297) (h!14609 l!5107))))))

(declare-fun e!561964 () List!9223)

(assert (=> d!266748 (= (printList!477 thiss!20117 ($colon$colon!90 ($colon$colon!90 (withSeparatorTokenList!59 thiss!20117 (t!95978 l!5107) separatorToken!297) separatorToken!297) (h!14609 l!5107))) e!561964)))

(declare-fun b!853756 () Bool)

(assert (=> b!853756 (= e!561964 (++!2385 (list!3619 (charsOf!994 (h!14609 ($colon$colon!90 ($colon$colon!90 (withSeparatorTokenList!59 thiss!20117 (t!95978 l!5107) separatorToken!297) separatorToken!297) (h!14609 l!5107))))) (printList!477 thiss!20117 (t!95978 ($colon$colon!90 ($colon$colon!90 (withSeparatorTokenList!59 thiss!20117 (t!95978 l!5107) separatorToken!297) separatorToken!297) (h!14609 l!5107))))))))

(declare-fun b!853757 () Bool)

(assert (=> b!853757 (= e!561964 Nil!9207)))

(assert (= (and d!266748 c!138474) b!853756))

(assert (= (and d!266748 (not c!138474)) b!853757))

(declare-fun m!1093745 () Bool)

(assert (=> b!853756 m!1093745))

(assert (=> b!853756 m!1093745))

(declare-fun m!1093747 () Bool)

(assert (=> b!853756 m!1093747))

(declare-fun m!1093749 () Bool)

(assert (=> b!853756 m!1093749))

(assert (=> b!853756 m!1093747))

(assert (=> b!853756 m!1093749))

(declare-fun m!1093751 () Bool)

(assert (=> b!853756 m!1093751))

(assert (=> b!853396 d!266748))

(declare-fun d!266750 () Bool)

(assert (=> d!266750 (= ($colon$colon!90 ($colon$colon!90 (withSeparatorTokenList!59 thiss!20117 (t!95978 l!5107) separatorToken!297) separatorToken!297) (h!14609 l!5107)) (Cons!9208 (h!14609 l!5107) ($colon$colon!90 (withSeparatorTokenList!59 thiss!20117 (t!95978 l!5107) separatorToken!297) separatorToken!297)))))

(assert (=> b!853396 d!266750))

(assert (=> b!853396 d!266658))

(assert (=> b!853396 d!266660))

(declare-fun b!853758 () Bool)

(declare-fun e!561965 () List!9223)

(assert (=> b!853758 (= e!561965 (printList!477 thiss!20117 (t!95978 lt!323148)))))

(declare-fun lt!323241 () List!9223)

(declare-fun e!561966 () Bool)

(declare-fun b!853761 () Bool)

(assert (=> b!853761 (= e!561966 (or (not (= (printList!477 thiss!20117 (t!95978 lt!323148)) Nil!9207)) (= lt!323241 (list!3619 (charsOf!994 (h!14609 lt!323148))))))))

(declare-fun b!853760 () Bool)

(declare-fun res!389967 () Bool)

(assert (=> b!853760 (=> (not res!389967) (not e!561966))))

(assert (=> b!853760 (= res!389967 (= (size!7680 lt!323241) (+ (size!7680 (list!3619 (charsOf!994 (h!14609 lt!323148)))) (size!7680 (printList!477 thiss!20117 (t!95978 lt!323148))))))))

(declare-fun d!266752 () Bool)

(assert (=> d!266752 e!561966))

(declare-fun res!389968 () Bool)

(assert (=> d!266752 (=> (not res!389968) (not e!561966))))

(assert (=> d!266752 (= res!389968 (= (content!1347 lt!323241) (set.union (content!1347 (list!3619 (charsOf!994 (h!14609 lt!323148)))) (content!1347 (printList!477 thiss!20117 (t!95978 lt!323148))))))))

(assert (=> d!266752 (= lt!323241 e!561965)))

(declare-fun c!138475 () Bool)

(assert (=> d!266752 (= c!138475 (is-Nil!9207 (list!3619 (charsOf!994 (h!14609 lt!323148)))))))

(assert (=> d!266752 (= (++!2385 (list!3619 (charsOf!994 (h!14609 lt!323148))) (printList!477 thiss!20117 (t!95978 lt!323148))) lt!323241)))

(declare-fun b!853759 () Bool)

(assert (=> b!853759 (= e!561965 (Cons!9207 (h!14608 (list!3619 (charsOf!994 (h!14609 lt!323148)))) (++!2385 (t!95977 (list!3619 (charsOf!994 (h!14609 lt!323148)))) (printList!477 thiss!20117 (t!95978 lt!323148)))))))

(assert (= (and d!266752 c!138475) b!853758))

(assert (= (and d!266752 (not c!138475)) b!853759))

(assert (= (and d!266752 res!389968) b!853760))

(assert (= (and b!853760 res!389967) b!853761))

(declare-fun m!1093753 () Bool)

(assert (=> b!853760 m!1093753))

(assert (=> b!853760 m!1093133))

(declare-fun m!1093755 () Bool)

(assert (=> b!853760 m!1093755))

(assert (=> b!853760 m!1093135))

(declare-fun m!1093757 () Bool)

(assert (=> b!853760 m!1093757))

(declare-fun m!1093759 () Bool)

(assert (=> d!266752 m!1093759))

(assert (=> d!266752 m!1093133))

(declare-fun m!1093761 () Bool)

(assert (=> d!266752 m!1093761))

(assert (=> d!266752 m!1093135))

(declare-fun m!1093763 () Bool)

(assert (=> d!266752 m!1093763))

(assert (=> b!853759 m!1093135))

(declare-fun m!1093765 () Bool)

(assert (=> b!853759 m!1093765))

(assert (=> b!853399 d!266752))

(declare-fun d!266754 () Bool)

(assert (=> d!266754 (= (list!3619 (charsOf!994 (h!14609 lt!323148))) (list!3624 (c!138386 (charsOf!994 (h!14609 lt!323148)))))))

(declare-fun bs!231581 () Bool)

(assert (= bs!231581 d!266754))

(declare-fun m!1093767 () Bool)

(assert (=> bs!231581 m!1093767))

(assert (=> b!853399 d!266754))

(declare-fun d!266756 () Bool)

(declare-fun lt!323242 () BalanceConc!6114)

(assert (=> d!266756 (= (list!3619 lt!323242) (originalCharacters!2283 (h!14609 lt!323148)))))

(assert (=> d!266756 (= lt!323242 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 (h!14609 lt!323148)))) (value!55920 (h!14609 lt!323148))))))

(assert (=> d!266756 (= (charsOf!994 (h!14609 lt!323148)) lt!323242)))

(declare-fun b_lambda!28577 () Bool)

(assert (=> (not b_lambda!28577) (not d!266756)))

(declare-fun tb!60155 () Bool)

(declare-fun t!96065 () Bool)

(assert (=> (and b!853490 (= (toChars!2631 (transformation!1727 (rule!3150 (h!14609 (t!95978 l!5107))))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 lt!323148))))) t!96065) tb!60155))

(declare-fun b!853762 () Bool)

(declare-fun e!561967 () Bool)

(declare-fun tp!269068 () Bool)

(assert (=> b!853762 (= e!561967 (and (inv!11711 (c!138386 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 (h!14609 lt!323148)))) (value!55920 (h!14609 lt!323148))))) tp!269068))))

(declare-fun result!69684 () Bool)

(assert (=> tb!60155 (= result!69684 (and (inv!11712 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 (h!14609 lt!323148)))) (value!55920 (h!14609 lt!323148)))) e!561967))))

(assert (= tb!60155 b!853762))

(declare-fun m!1093769 () Bool)

(assert (=> b!853762 m!1093769))

(declare-fun m!1093771 () Bool)

(assert (=> tb!60155 m!1093771))

(assert (=> d!266756 t!96065))

(declare-fun b_and!75157 () Bool)

(assert (= b_and!75149 (and (=> t!96065 result!69684) b_and!75157)))

(declare-fun t!96067 () Bool)

(declare-fun tb!60157 () Bool)

(assert (=> (and b!853146 (= (toChars!2631 (transformation!1727 (h!14610 rules!2621))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 lt!323148))))) t!96067) tb!60157))

(declare-fun result!69686 () Bool)

(assert (= result!69686 result!69684))

(assert (=> d!266756 t!96067))

(declare-fun b_and!75159 () Bool)

(assert (= b_and!75153 (and (=> t!96067 result!69686) b_and!75159)))

(declare-fun tb!60159 () Bool)

(declare-fun t!96069 () Bool)

(assert (=> (and b!853158 (= (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 lt!323148))))) t!96069) tb!60159))

(declare-fun result!69688 () Bool)

(assert (= result!69688 result!69684))

(assert (=> d!266756 t!96069))

(declare-fun b_and!75161 () Bool)

(assert (= b_and!75155 (and (=> t!96069 result!69688) b_and!75161)))

(declare-fun t!96071 () Bool)

(declare-fun tb!60161 () Bool)

(assert (=> (and b!853155 (= (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107)))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 lt!323148))))) t!96071) tb!60161))

(declare-fun result!69690 () Bool)

(assert (= result!69690 result!69684))

(assert (=> d!266756 t!96071))

(declare-fun b_and!75163 () Bool)

(assert (= b_and!75151 (and (=> t!96071 result!69690) b_and!75163)))

(declare-fun t!96073 () Bool)

(declare-fun tb!60163 () Bool)

(assert (=> (and b!853476 (= (toChars!2631 (transformation!1727 (h!14610 (t!95979 rules!2621)))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 lt!323148))))) t!96073) tb!60163))

(declare-fun result!69692 () Bool)

(assert (= result!69692 result!69684))

(assert (=> d!266756 t!96073))

(declare-fun b_and!75165 () Bool)

(assert (= b_and!75147 (and (=> t!96073 result!69692) b_and!75165)))

(declare-fun m!1093773 () Bool)

(assert (=> d!266756 m!1093773))

(declare-fun m!1093775 () Bool)

(assert (=> d!266756 m!1093775))

(assert (=> b!853399 d!266756))

(declare-fun d!266758 () Bool)

(declare-fun c!138476 () Bool)

(assert (=> d!266758 (= c!138476 (is-Cons!9208 (t!95978 lt!323148)))))

(declare-fun e!561968 () List!9223)

(assert (=> d!266758 (= (printList!477 thiss!20117 (t!95978 lt!323148)) e!561968)))

(declare-fun b!853763 () Bool)

(assert (=> b!853763 (= e!561968 (++!2385 (list!3619 (charsOf!994 (h!14609 (t!95978 lt!323148)))) (printList!477 thiss!20117 (t!95978 (t!95978 lt!323148)))))))

(declare-fun b!853764 () Bool)

(assert (=> b!853764 (= e!561968 Nil!9207)))

(assert (= (and d!266758 c!138476) b!853763))

(assert (= (and d!266758 (not c!138476)) b!853764))

(declare-fun m!1093777 () Bool)

(assert (=> b!853763 m!1093777))

(assert (=> b!853763 m!1093777))

(declare-fun m!1093779 () Bool)

(assert (=> b!853763 m!1093779))

(declare-fun m!1093781 () Bool)

(assert (=> b!853763 m!1093781))

(assert (=> b!853763 m!1093779))

(assert (=> b!853763 m!1093781))

(declare-fun m!1093783 () Bool)

(assert (=> b!853763 m!1093783))

(assert (=> b!853399 d!266758))

(declare-fun d!266760 () Bool)

(assert (=> d!266760 (= (list!3619 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297))) (value!55920 separatorToken!297))) (list!3624 (c!138386 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297))) (value!55920 separatorToken!297)))))))

(declare-fun bs!231582 () Bool)

(assert (= bs!231582 d!266760))

(declare-fun m!1093785 () Bool)

(assert (=> bs!231582 m!1093785))

(assert (=> b!853384 d!266760))

(declare-fun d!266762 () Bool)

(declare-fun charsToInt!0 (List!9222) (_ BitVec 32))

(assert (=> d!266762 (= (inv!16 (value!55920 separatorToken!297)) (= (charsToInt!0 (text!12998 (value!55920 separatorToken!297))) (value!55911 (value!55920 separatorToken!297))))))

(declare-fun bs!231583 () Bool)

(assert (= bs!231583 d!266762))

(declare-fun m!1093787 () Bool)

(assert (=> bs!231583 m!1093787))

(assert (=> b!853345 d!266762))

(declare-fun bs!231584 () Bool)

(declare-fun d!266764 () Bool)

(assert (= bs!231584 (and d!266764 b!853154)))

(declare-fun lambda!25575 () Int)

(assert (=> bs!231584 (not (= lambda!25575 lambda!25549))))

(declare-fun bs!231585 () Bool)

(assert (= bs!231585 (and d!266764 d!266530)))

(assert (=> bs!231585 (= lambda!25575 lambda!25555)))

(declare-fun bs!231586 () Bool)

(assert (= bs!231586 (and d!266764 d!266662)))

(assert (=> bs!231586 (= lambda!25575 lambda!25570)))

(declare-fun bs!231587 () Bool)

(assert (= bs!231587 (and d!266764 d!266570)))

(assert (=> bs!231587 (= lambda!25575 lambda!25556)))

(declare-fun bs!231588 () Bool)

(assert (= bs!231588 (and d!266764 d!266706)))

(assert (=> bs!231588 (= lambda!25575 lambda!25573)))

(declare-fun b!853769 () Bool)

(declare-fun e!561973 () Bool)

(assert (=> b!853769 (= e!561973 true)))

(declare-fun b!853768 () Bool)

(declare-fun e!561972 () Bool)

(assert (=> b!853768 (= e!561972 e!561973)))

(declare-fun b!853767 () Bool)

(declare-fun e!561971 () Bool)

(assert (=> b!853767 (= e!561971 e!561972)))

(assert (=> d!266764 e!561971))

(assert (= b!853768 b!853769))

(assert (= b!853767 b!853768))

(assert (= (and d!266764 (is-Cons!9209 rules!2621)) b!853767))

(assert (=> b!853769 (< (dynLambda!4300 order!5917 (toValue!2772 (transformation!1727 (h!14610 rules!2621)))) (dynLambda!4301 order!5919 lambda!25575))))

(assert (=> b!853769 (< (dynLambda!4302 order!5921 (toChars!2631 (transformation!1727 (h!14610 rules!2621)))) (dynLambda!4301 order!5919 lambda!25575))))

(assert (=> d!266764 true))

(declare-fun lt!323243 () Bool)

(assert (=> d!266764 (= lt!323243 (forall!2180 (t!95978 lt!323082) lambda!25575))))

(declare-fun e!561970 () Bool)

(assert (=> d!266764 (= lt!323243 e!561970)))

(declare-fun res!389970 () Bool)

(assert (=> d!266764 (=> res!389970 e!561970)))

(assert (=> d!266764 (= res!389970 (not (is-Cons!9208 (t!95978 lt!323082))))))

(assert (=> d!266764 (not (isEmpty!5448 rules!2621))))

(assert (=> d!266764 (= (rulesProduceEachTokenIndividuallyList!417 thiss!20117 rules!2621 (t!95978 lt!323082)) lt!323243)))

(declare-fun b!853765 () Bool)

(declare-fun e!561969 () Bool)

(assert (=> b!853765 (= e!561970 e!561969)))

(declare-fun res!389969 () Bool)

(assert (=> b!853765 (=> (not res!389969) (not e!561969))))

(assert (=> b!853765 (= res!389969 (rulesProduceIndividualToken!593 thiss!20117 rules!2621 (h!14609 (t!95978 lt!323082))))))

(declare-fun b!853766 () Bool)

(assert (=> b!853766 (= e!561969 (rulesProduceEachTokenIndividuallyList!417 thiss!20117 rules!2621 (t!95978 (t!95978 lt!323082))))))

(assert (= (and d!266764 (not res!389970)) b!853765))

(assert (= (and b!853765 res!389969) b!853766))

(declare-fun m!1093789 () Bool)

(assert (=> d!266764 m!1093789))

(assert (=> d!266764 m!1092867))

(declare-fun m!1093791 () Bool)

(assert (=> b!853765 m!1093791))

(declare-fun m!1093793 () Bool)

(assert (=> b!853766 m!1093793))

(assert (=> b!853392 d!266764))

(declare-fun d!266766 () Bool)

(declare-fun lt!323245 () Bool)

(declare-fun e!561975 () Bool)

(assert (=> d!266766 (= lt!323245 e!561975)))

(declare-fun res!389971 () Bool)

(assert (=> d!266766 (=> (not res!389971) (not e!561975))))

(assert (=> d!266766 (= res!389971 (= (list!3620 (_1!6023 (lex!621 thiss!20117 rules!2621 (print!558 thiss!20117 (singletonSeq!544 (h!14609 l!5107)))))) (list!3620 (singletonSeq!544 (h!14609 l!5107)))))))

(declare-fun e!561974 () Bool)

(assert (=> d!266766 (= lt!323245 e!561974)))

(declare-fun res!389973 () Bool)

(assert (=> d!266766 (=> (not res!389973) (not e!561974))))

(declare-fun lt!323244 () tuple2!10394)

(assert (=> d!266766 (= res!389973 (= (size!7681 (_1!6023 lt!323244)) 1))))

(assert (=> d!266766 (= lt!323244 (lex!621 thiss!20117 rules!2621 (print!558 thiss!20117 (singletonSeq!544 (h!14609 l!5107)))))))

(assert (=> d!266766 (not (isEmpty!5448 rules!2621))))

(assert (=> d!266766 (= (rulesProduceIndividualToken!593 thiss!20117 rules!2621 (h!14609 l!5107)) lt!323245)))

(declare-fun b!853770 () Bool)

(declare-fun res!389972 () Bool)

(assert (=> b!853770 (=> (not res!389972) (not e!561974))))

(assert (=> b!853770 (= res!389972 (= (apply!1902 (_1!6023 lt!323244) 0) (h!14609 l!5107)))))

(declare-fun b!853771 () Bool)

(assert (=> b!853771 (= e!561974 (isEmpty!5451 (_2!6023 lt!323244)))))

(declare-fun b!853772 () Bool)

(assert (=> b!853772 (= e!561975 (isEmpty!5451 (_2!6023 (lex!621 thiss!20117 rules!2621 (print!558 thiss!20117 (singletonSeq!544 (h!14609 l!5107)))))))))

(assert (= (and d!266766 res!389973) b!853770))

(assert (= (and b!853770 res!389972) b!853771))

(assert (= (and d!266766 res!389971) b!853772))

(declare-fun m!1093795 () Bool)

(assert (=> d!266766 m!1093795))

(declare-fun m!1093797 () Bool)

(assert (=> d!266766 m!1093797))

(assert (=> d!266766 m!1092867))

(declare-fun m!1093799 () Bool)

(assert (=> d!266766 m!1093799))

(declare-fun m!1093801 () Bool)

(assert (=> d!266766 m!1093801))

(assert (=> d!266766 m!1093797))

(declare-fun m!1093803 () Bool)

(assert (=> d!266766 m!1093803))

(declare-fun m!1093805 () Bool)

(assert (=> d!266766 m!1093805))

(assert (=> d!266766 m!1093797))

(assert (=> d!266766 m!1093799))

(declare-fun m!1093807 () Bool)

(assert (=> b!853770 m!1093807))

(declare-fun m!1093809 () Bool)

(assert (=> b!853771 m!1093809))

(assert (=> b!853772 m!1093797))

(assert (=> b!853772 m!1093797))

(assert (=> b!853772 m!1093799))

(assert (=> b!853772 m!1093799))

(assert (=> b!853772 m!1093801))

(declare-fun m!1093811 () Bool)

(assert (=> b!853772 m!1093811))

(assert (=> b!853328 d!266766))

(declare-fun b!853773 () Bool)

(declare-fun e!561976 () List!9223)

(assert (=> b!853773 (= e!561976 (printList!477 thiss!20117 (t!95978 lt!323150)))))

(declare-fun lt!323246 () List!9223)

(declare-fun e!561977 () Bool)

(declare-fun b!853776 () Bool)

(assert (=> b!853776 (= e!561977 (or (not (= (printList!477 thiss!20117 (t!95978 lt!323150)) Nil!9207)) (= lt!323246 (list!3619 (charsOf!994 (h!14609 lt!323150))))))))

(declare-fun b!853775 () Bool)

(declare-fun res!389974 () Bool)

(assert (=> b!853775 (=> (not res!389974) (not e!561977))))

(assert (=> b!853775 (= res!389974 (= (size!7680 lt!323246) (+ (size!7680 (list!3619 (charsOf!994 (h!14609 lt!323150)))) (size!7680 (printList!477 thiss!20117 (t!95978 lt!323150))))))))

(declare-fun d!266768 () Bool)

(assert (=> d!266768 e!561977))

(declare-fun res!389975 () Bool)

(assert (=> d!266768 (=> (not res!389975) (not e!561977))))

(assert (=> d!266768 (= res!389975 (= (content!1347 lt!323246) (set.union (content!1347 (list!3619 (charsOf!994 (h!14609 lt!323150)))) (content!1347 (printList!477 thiss!20117 (t!95978 lt!323150))))))))

(assert (=> d!266768 (= lt!323246 e!561976)))

(declare-fun c!138477 () Bool)

(assert (=> d!266768 (= c!138477 (is-Nil!9207 (list!3619 (charsOf!994 (h!14609 lt!323150)))))))

(assert (=> d!266768 (= (++!2385 (list!3619 (charsOf!994 (h!14609 lt!323150))) (printList!477 thiss!20117 (t!95978 lt!323150))) lt!323246)))

(declare-fun b!853774 () Bool)

(assert (=> b!853774 (= e!561976 (Cons!9207 (h!14608 (list!3619 (charsOf!994 (h!14609 lt!323150)))) (++!2385 (t!95977 (list!3619 (charsOf!994 (h!14609 lt!323150)))) (printList!477 thiss!20117 (t!95978 lt!323150)))))))

(assert (= (and d!266768 c!138477) b!853773))

(assert (= (and d!266768 (not c!138477)) b!853774))

(assert (= (and d!266768 res!389975) b!853775))

(assert (= (and b!853775 res!389974) b!853776))

(declare-fun m!1093813 () Bool)

(assert (=> b!853775 m!1093813))

(assert (=> b!853775 m!1093171))

(declare-fun m!1093815 () Bool)

(assert (=> b!853775 m!1093815))

(assert (=> b!853775 m!1093173))

(declare-fun m!1093817 () Bool)

(assert (=> b!853775 m!1093817))

(declare-fun m!1093819 () Bool)

(assert (=> d!266768 m!1093819))

(assert (=> d!266768 m!1093171))

(declare-fun m!1093821 () Bool)

(assert (=> d!266768 m!1093821))

(assert (=> d!266768 m!1093173))

(declare-fun m!1093823 () Bool)

(assert (=> d!266768 m!1093823))

(assert (=> b!853774 m!1093173))

(declare-fun m!1093825 () Bool)

(assert (=> b!853774 m!1093825))

(assert (=> b!853401 d!266768))

(declare-fun d!266770 () Bool)

(assert (=> d!266770 (= (list!3619 (charsOf!994 (h!14609 lt!323150))) (list!3624 (c!138386 (charsOf!994 (h!14609 lt!323150)))))))

(declare-fun bs!231589 () Bool)

(assert (= bs!231589 d!266770))

(declare-fun m!1093827 () Bool)

(assert (=> bs!231589 m!1093827))

(assert (=> b!853401 d!266770))

(declare-fun d!266772 () Bool)

(declare-fun lt!323247 () BalanceConc!6114)

(assert (=> d!266772 (= (list!3619 lt!323247) (originalCharacters!2283 (h!14609 lt!323150)))))

(assert (=> d!266772 (= lt!323247 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 (h!14609 lt!323150)))) (value!55920 (h!14609 lt!323150))))))

(assert (=> d!266772 (= (charsOf!994 (h!14609 lt!323150)) lt!323247)))

(declare-fun b_lambda!28579 () Bool)

(assert (=> (not b_lambda!28579) (not d!266772)))

(declare-fun tb!60165 () Bool)

(declare-fun t!96075 () Bool)

(assert (=> (and b!853490 (= (toChars!2631 (transformation!1727 (rule!3150 (h!14609 (t!95978 l!5107))))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 lt!323150))))) t!96075) tb!60165))

(declare-fun b!853777 () Bool)

(declare-fun e!561978 () Bool)

(declare-fun tp!269069 () Bool)

(assert (=> b!853777 (= e!561978 (and (inv!11711 (c!138386 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 (h!14609 lt!323150)))) (value!55920 (h!14609 lt!323150))))) tp!269069))))

(declare-fun result!69694 () Bool)

(assert (=> tb!60165 (= result!69694 (and (inv!11712 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 (h!14609 lt!323150)))) (value!55920 (h!14609 lt!323150)))) e!561978))))

(assert (= tb!60165 b!853777))

(declare-fun m!1093829 () Bool)

(assert (=> b!853777 m!1093829))

(declare-fun m!1093831 () Bool)

(assert (=> tb!60165 m!1093831))

(assert (=> d!266772 t!96075))

(declare-fun b_and!75167 () Bool)

(assert (= b_and!75157 (and (=> t!96075 result!69694) b_and!75167)))

(declare-fun t!96077 () Bool)

(declare-fun tb!60167 () Bool)

(assert (=> (and b!853158 (= (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 lt!323150))))) t!96077) tb!60167))

(declare-fun result!69696 () Bool)

(assert (= result!69696 result!69694))

(assert (=> d!266772 t!96077))

(declare-fun b_and!75169 () Bool)

(assert (= b_and!75161 (and (=> t!96077 result!69696) b_and!75169)))

(declare-fun tb!60169 () Bool)

(declare-fun t!96079 () Bool)

(assert (=> (and b!853476 (= (toChars!2631 (transformation!1727 (h!14610 (t!95979 rules!2621)))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 lt!323150))))) t!96079) tb!60169))

(declare-fun result!69698 () Bool)

(assert (= result!69698 result!69694))

(assert (=> d!266772 t!96079))

(declare-fun b_and!75171 () Bool)

(assert (= b_and!75165 (and (=> t!96079 result!69698) b_and!75171)))

(declare-fun tb!60171 () Bool)

(declare-fun t!96081 () Bool)

(assert (=> (and b!853155 (= (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107)))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 lt!323150))))) t!96081) tb!60171))

(declare-fun result!69700 () Bool)

(assert (= result!69700 result!69694))

(assert (=> d!266772 t!96081))

(declare-fun b_and!75173 () Bool)

(assert (= b_and!75163 (and (=> t!96081 result!69700) b_and!75173)))

(declare-fun tb!60173 () Bool)

(declare-fun t!96083 () Bool)

(assert (=> (and b!853146 (= (toChars!2631 (transformation!1727 (h!14610 rules!2621))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 lt!323150))))) t!96083) tb!60173))

(declare-fun result!69702 () Bool)

(assert (= result!69702 result!69694))

(assert (=> d!266772 t!96083))

(declare-fun b_and!75175 () Bool)

(assert (= b_and!75159 (and (=> t!96083 result!69702) b_and!75175)))

(declare-fun m!1093833 () Bool)

(assert (=> d!266772 m!1093833))

(declare-fun m!1093835 () Bool)

(assert (=> d!266772 m!1093835))

(assert (=> b!853401 d!266772))

(declare-fun d!266774 () Bool)

(declare-fun c!138478 () Bool)

(assert (=> d!266774 (= c!138478 (is-Cons!9208 (t!95978 lt!323150)))))

(declare-fun e!561979 () List!9223)

(assert (=> d!266774 (= (printList!477 thiss!20117 (t!95978 lt!323150)) e!561979)))

(declare-fun b!853778 () Bool)

(assert (=> b!853778 (= e!561979 (++!2385 (list!3619 (charsOf!994 (h!14609 (t!95978 lt!323150)))) (printList!477 thiss!20117 (t!95978 (t!95978 lt!323150)))))))

(declare-fun b!853779 () Bool)

(assert (=> b!853779 (= e!561979 Nil!9207)))

(assert (= (and d!266774 c!138478) b!853778))

(assert (= (and d!266774 (not c!138478)) b!853779))

(declare-fun m!1093837 () Bool)

(assert (=> b!853778 m!1093837))

(assert (=> b!853778 m!1093837))

(declare-fun m!1093839 () Bool)

(assert (=> b!853778 m!1093839))

(declare-fun m!1093841 () Bool)

(assert (=> b!853778 m!1093841))

(assert (=> b!853778 m!1093839))

(assert (=> b!853778 m!1093841))

(declare-fun m!1093843 () Bool)

(assert (=> b!853778 m!1093843))

(assert (=> b!853401 d!266774))

(declare-fun d!266776 () Bool)

(assert (=> d!266776 (= (inv!11712 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107)))) (value!55920 (h!14609 l!5107)))) (isBalanced!838 (c!138386 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107)))) (value!55920 (h!14609 l!5107))))))))

(declare-fun bs!231590 () Bool)

(assert (= bs!231590 d!266776))

(declare-fun m!1093845 () Bool)

(assert (=> bs!231590 m!1093845))

(assert (=> tb!60097 d!266776))

(declare-fun d!266778 () Bool)

(assert (=> d!266778 (= (inv!16 (value!55920 (h!14609 l!5107))) (= (charsToInt!0 (text!12998 (value!55920 (h!14609 l!5107)))) (value!55911 (value!55920 (h!14609 l!5107)))))))

(declare-fun bs!231591 () Bool)

(assert (= bs!231591 d!266778))

(declare-fun m!1093847 () Bool)

(assert (=> bs!231591 m!1093847))

(assert (=> b!853232 d!266778))

(declare-fun bs!231592 () Bool)

(declare-fun d!266780 () Bool)

(assert (= bs!231592 (and d!266780 d!266624)))

(declare-fun lambda!25576 () Int)

(assert (=> bs!231592 (= (and (= (toChars!2631 (transformation!1727 (h!14610 rules!2621))) (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297)))) (= (toValue!2772 (transformation!1727 (h!14610 rules!2621))) (toValue!2772 (transformation!1727 (rule!3150 separatorToken!297))))) (= lambda!25576 lambda!25563))))

(declare-fun bs!231593 () Bool)

(assert (= bs!231593 (and d!266780 d!266686)))

(assert (=> bs!231593 (= (and (= (toChars!2631 (transformation!1727 (h!14610 rules!2621))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107))))) (= (toValue!2772 (transformation!1727 (h!14610 rules!2621))) (toValue!2772 (transformation!1727 (rule!3150 (h!14609 l!5107)))))) (= lambda!25576 lambda!25571))))

(assert (=> d!266780 true))

(assert (=> d!266780 (< (dynLambda!4302 order!5921 (toChars!2631 (transformation!1727 (h!14610 rules!2621)))) (dynLambda!4310 order!5929 lambda!25576))))

(assert (=> d!266780 true))

(assert (=> d!266780 (< (dynLambda!4300 order!5917 (toValue!2772 (transformation!1727 (h!14610 rules!2621)))) (dynLambda!4310 order!5929 lambda!25576))))

(assert (=> d!266780 (= (semiInverseModEq!673 (toChars!2631 (transformation!1727 (h!14610 rules!2621))) (toValue!2772 (transformation!1727 (h!14610 rules!2621)))) (Forall!414 lambda!25576))))

(declare-fun bs!231594 () Bool)

(assert (= bs!231594 d!266780))

(declare-fun m!1093849 () Bool)

(assert (=> bs!231594 m!1093849))

(assert (=> d!266588 d!266780))

(declare-fun d!266782 () Bool)

(assert (=> d!266782 (= (inv!17 (value!55920 separatorToken!297)) (= (charsToBigInt!1 (text!12999 (value!55920 separatorToken!297))) (value!55912 (value!55920 separatorToken!297))))))

(declare-fun bs!231595 () Bool)

(assert (= bs!231595 d!266782))

(declare-fun m!1093851 () Bool)

(assert (=> bs!231595 m!1093851))

(assert (=> b!853349 d!266782))

(declare-fun b!853780 () Bool)

(declare-fun e!561980 () List!9223)

(assert (=> b!853780 (= e!561980 (printList!477 thiss!20117 (t!95978 lt!323139)))))

(declare-fun lt!323248 () List!9223)

(declare-fun e!561981 () Bool)

(declare-fun b!853783 () Bool)

(assert (=> b!853783 (= e!561981 (or (not (= (printList!477 thiss!20117 (t!95978 lt!323139)) Nil!9207)) (= lt!323248 (list!3619 (charsOf!994 (h!14609 lt!323139))))))))

(declare-fun b!853782 () Bool)

(declare-fun res!389976 () Bool)

(assert (=> b!853782 (=> (not res!389976) (not e!561981))))

(assert (=> b!853782 (= res!389976 (= (size!7680 lt!323248) (+ (size!7680 (list!3619 (charsOf!994 (h!14609 lt!323139)))) (size!7680 (printList!477 thiss!20117 (t!95978 lt!323139))))))))

(declare-fun d!266784 () Bool)

(assert (=> d!266784 e!561981))

(declare-fun res!389977 () Bool)

(assert (=> d!266784 (=> (not res!389977) (not e!561981))))

(assert (=> d!266784 (= res!389977 (= (content!1347 lt!323248) (set.union (content!1347 (list!3619 (charsOf!994 (h!14609 lt!323139)))) (content!1347 (printList!477 thiss!20117 (t!95978 lt!323139))))))))

(assert (=> d!266784 (= lt!323248 e!561980)))

(declare-fun c!138479 () Bool)

(assert (=> d!266784 (= c!138479 (is-Nil!9207 (list!3619 (charsOf!994 (h!14609 lt!323139)))))))

(assert (=> d!266784 (= (++!2385 (list!3619 (charsOf!994 (h!14609 lt!323139))) (printList!477 thiss!20117 (t!95978 lt!323139))) lt!323248)))

(declare-fun b!853781 () Bool)

(assert (=> b!853781 (= e!561980 (Cons!9207 (h!14608 (list!3619 (charsOf!994 (h!14609 lt!323139)))) (++!2385 (t!95977 (list!3619 (charsOf!994 (h!14609 lt!323139)))) (printList!477 thiss!20117 (t!95978 lt!323139)))))))

(assert (= (and d!266784 c!138479) b!853780))

(assert (= (and d!266784 (not c!138479)) b!853781))

(assert (= (and d!266784 res!389977) b!853782))

(assert (= (and b!853782 res!389976) b!853783))

(declare-fun m!1093853 () Bool)

(assert (=> b!853782 m!1093853))

(assert (=> b!853782 m!1093065))

(declare-fun m!1093855 () Bool)

(assert (=> b!853782 m!1093855))

(assert (=> b!853782 m!1093067))

(declare-fun m!1093857 () Bool)

(assert (=> b!853782 m!1093857))

(declare-fun m!1093859 () Bool)

(assert (=> d!266784 m!1093859))

(assert (=> d!266784 m!1093065))

(declare-fun m!1093861 () Bool)

(assert (=> d!266784 m!1093861))

(assert (=> d!266784 m!1093067))

(declare-fun m!1093863 () Bool)

(assert (=> d!266784 m!1093863))

(assert (=> b!853781 m!1093067))

(declare-fun m!1093865 () Bool)

(assert (=> b!853781 m!1093865))

(assert (=> b!853373 d!266784))

(declare-fun d!266786 () Bool)

(assert (=> d!266786 (= (list!3619 (charsOf!994 (h!14609 lt!323139))) (list!3624 (c!138386 (charsOf!994 (h!14609 lt!323139)))))))

(declare-fun bs!231596 () Bool)

(assert (= bs!231596 d!266786))

(declare-fun m!1093867 () Bool)

(assert (=> bs!231596 m!1093867))

(assert (=> b!853373 d!266786))

(declare-fun d!266788 () Bool)

(declare-fun lt!323249 () BalanceConc!6114)

(assert (=> d!266788 (= (list!3619 lt!323249) (originalCharacters!2283 (h!14609 lt!323139)))))

(assert (=> d!266788 (= lt!323249 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 (h!14609 lt!323139)))) (value!55920 (h!14609 lt!323139))))))

(assert (=> d!266788 (= (charsOf!994 (h!14609 lt!323139)) lt!323249)))

(declare-fun b_lambda!28581 () Bool)

(assert (=> (not b_lambda!28581) (not d!266788)))

(declare-fun t!96085 () Bool)

(declare-fun tb!60175 () Bool)

(assert (=> (and b!853146 (= (toChars!2631 (transformation!1727 (h!14610 rules!2621))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 lt!323139))))) t!96085) tb!60175))

(declare-fun b!853784 () Bool)

(declare-fun e!561982 () Bool)

(declare-fun tp!269070 () Bool)

(assert (=> b!853784 (= e!561982 (and (inv!11711 (c!138386 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 (h!14609 lt!323139)))) (value!55920 (h!14609 lt!323139))))) tp!269070))))

(declare-fun result!69704 () Bool)

(assert (=> tb!60175 (= result!69704 (and (inv!11712 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 (h!14609 lt!323139)))) (value!55920 (h!14609 lt!323139)))) e!561982))))

(assert (= tb!60175 b!853784))

(declare-fun m!1093869 () Bool)

(assert (=> b!853784 m!1093869))

(declare-fun m!1093871 () Bool)

(assert (=> tb!60175 m!1093871))

(assert (=> d!266788 t!96085))

(declare-fun b_and!75177 () Bool)

(assert (= b_and!75175 (and (=> t!96085 result!69704) b_and!75177)))

(declare-fun t!96087 () Bool)

(declare-fun tb!60177 () Bool)

(assert (=> (and b!853476 (= (toChars!2631 (transformation!1727 (h!14610 (t!95979 rules!2621)))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 lt!323139))))) t!96087) tb!60177))

(declare-fun result!69706 () Bool)

(assert (= result!69706 result!69704))

(assert (=> d!266788 t!96087))

(declare-fun b_and!75179 () Bool)

(assert (= b_and!75171 (and (=> t!96087 result!69706) b_and!75179)))

(declare-fun t!96089 () Bool)

(declare-fun tb!60179 () Bool)

(assert (=> (and b!853158 (= (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 lt!323139))))) t!96089) tb!60179))

(declare-fun result!69708 () Bool)

(assert (= result!69708 result!69704))

(assert (=> d!266788 t!96089))

(declare-fun b_and!75181 () Bool)

(assert (= b_and!75169 (and (=> t!96089 result!69708) b_and!75181)))

(declare-fun t!96091 () Bool)

(declare-fun tb!60181 () Bool)

(assert (=> (and b!853155 (= (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107)))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 lt!323139))))) t!96091) tb!60181))

(declare-fun result!69710 () Bool)

(assert (= result!69710 result!69704))

(assert (=> d!266788 t!96091))

(declare-fun b_and!75183 () Bool)

(assert (= b_and!75173 (and (=> t!96091 result!69710) b_and!75183)))

(declare-fun t!96093 () Bool)

(declare-fun tb!60183 () Bool)

(assert (=> (and b!853490 (= (toChars!2631 (transformation!1727 (rule!3150 (h!14609 (t!95978 l!5107))))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 lt!323139))))) t!96093) tb!60183))

(declare-fun result!69712 () Bool)

(assert (= result!69712 result!69704))

(assert (=> d!266788 t!96093))

(declare-fun b_and!75185 () Bool)

(assert (= b_and!75167 (and (=> t!96093 result!69712) b_and!75185)))

(declare-fun m!1093873 () Bool)

(assert (=> d!266788 m!1093873))

(declare-fun m!1093875 () Bool)

(assert (=> d!266788 m!1093875))

(assert (=> b!853373 d!266788))

(declare-fun d!266790 () Bool)

(declare-fun c!138480 () Bool)

(assert (=> d!266790 (= c!138480 (is-Cons!9208 (t!95978 lt!323139)))))

(declare-fun e!561983 () List!9223)

(assert (=> d!266790 (= (printList!477 thiss!20117 (t!95978 lt!323139)) e!561983)))

(declare-fun b!853785 () Bool)

(assert (=> b!853785 (= e!561983 (++!2385 (list!3619 (charsOf!994 (h!14609 (t!95978 lt!323139)))) (printList!477 thiss!20117 (t!95978 (t!95978 lt!323139)))))))

(declare-fun b!853786 () Bool)

(assert (=> b!853786 (= e!561983 Nil!9207)))

(assert (= (and d!266790 c!138480) b!853785))

(assert (= (and d!266790 (not c!138480)) b!853786))

(declare-fun m!1093877 () Bool)

(assert (=> b!853785 m!1093877))

(assert (=> b!853785 m!1093877))

(declare-fun m!1093879 () Bool)

(assert (=> b!853785 m!1093879))

(declare-fun m!1093881 () Bool)

(assert (=> b!853785 m!1093881))

(assert (=> b!853785 m!1093879))

(assert (=> b!853785 m!1093881))

(declare-fun m!1093883 () Bool)

(assert (=> b!853785 m!1093883))

(assert (=> b!853373 d!266790))

(declare-fun d!266792 () Bool)

(declare-fun res!389978 () Bool)

(declare-fun e!561984 () Bool)

(assert (=> d!266792 (=> res!389978 e!561984)))

(assert (=> d!266792 (= res!389978 (not (is-Cons!9209 (t!95979 rules!2621))))))

(assert (=> d!266792 (= (sepAndNonSepRulesDisjointChars!527 rules!2621 (t!95979 rules!2621)) e!561984)))

(declare-fun b!853787 () Bool)

(declare-fun e!561985 () Bool)

(assert (=> b!853787 (= e!561984 e!561985)))

(declare-fun res!389979 () Bool)

(assert (=> b!853787 (=> (not res!389979) (not e!561985))))

(assert (=> b!853787 (= res!389979 (ruleDisjointCharsFromAllFromOtherType!240 (h!14610 (t!95979 rules!2621)) rules!2621))))

(declare-fun b!853788 () Bool)

(assert (=> b!853788 (= e!561985 (sepAndNonSepRulesDisjointChars!527 rules!2621 (t!95979 (t!95979 rules!2621))))))

(assert (= (and d!266792 (not res!389978)) b!853787))

(assert (= (and b!853787 res!389979) b!853788))

(declare-fun m!1093885 () Bool)

(assert (=> b!853787 m!1093885))

(declare-fun m!1093887 () Bool)

(assert (=> b!853788 m!1093887))

(assert (=> b!853415 d!266792))

(declare-fun d!266794 () Bool)

(assert (=> d!266794 (= (isEmpty!5450 (originalCharacters!2283 separatorToken!297)) (is-Nil!9207 (originalCharacters!2283 separatorToken!297)))))

(assert (=> d!266568 d!266794))

(declare-fun c!138481 () Bool)

(declare-fun d!266796 () Bool)

(assert (=> d!266796 (= c!138481 (is-Cons!9208 (withSeparatorTokenList!59 thiss!20117 (t!95978 l!5107) separatorToken!297)))))

(declare-fun e!561986 () List!9223)

(assert (=> d!266796 (= (printList!477 thiss!20117 (withSeparatorTokenList!59 thiss!20117 (t!95978 l!5107) separatorToken!297)) e!561986)))

(declare-fun b!853789 () Bool)

(assert (=> b!853789 (= e!561986 (++!2385 (list!3619 (charsOf!994 (h!14609 (withSeparatorTokenList!59 thiss!20117 (t!95978 l!5107) separatorToken!297)))) (printList!477 thiss!20117 (t!95978 (withSeparatorTokenList!59 thiss!20117 (t!95978 l!5107) separatorToken!297)))))))

(declare-fun b!853790 () Bool)

(assert (=> b!853790 (= e!561986 Nil!9207)))

(assert (= (and d!266796 c!138481) b!853789))

(assert (= (and d!266796 (not c!138481)) b!853790))

(declare-fun m!1093889 () Bool)

(assert (=> b!853789 m!1093889))

(assert (=> b!853789 m!1093889))

(declare-fun m!1093891 () Bool)

(assert (=> b!853789 m!1093891))

(declare-fun m!1093893 () Bool)

(assert (=> b!853789 m!1093893))

(assert (=> b!853789 m!1093891))

(assert (=> b!853789 m!1093893))

(declare-fun m!1093895 () Bool)

(assert (=> b!853789 m!1093895))

(assert (=> b!853405 d!266796))

(declare-fun d!266798 () Bool)

(assert (=> d!266798 (= (++!2385 (++!2385 lt!323155 lt!323152) lt!323151) (++!2385 lt!323155 (++!2385 lt!323152 lt!323151)))))

(declare-fun lt!323250 () Unit!13716)

(assert (=> d!266798 (= lt!323250 (choose!5037 lt!323155 lt!323152 lt!323151))))

(assert (=> d!266798 (= (lemmaConcatAssociativity!752 lt!323155 lt!323152 lt!323151) lt!323250)))

(declare-fun bs!231597 () Bool)

(assert (= bs!231597 d!266798))

(assert (=> bs!231597 m!1093163))

(assert (=> bs!231597 m!1093165))

(declare-fun m!1093897 () Bool)

(assert (=> bs!231597 m!1093897))

(assert (=> bs!231597 m!1093155))

(assert (=> bs!231597 m!1093155))

(assert (=> bs!231597 m!1093157))

(assert (=> bs!231597 m!1093163))

(assert (=> b!853405 d!266798))

(assert (=> b!853405 d!266716))

(declare-fun b!853791 () Bool)

(declare-fun e!561987 () List!9223)

(assert (=> b!853791 (= e!561987 (++!2385 lt!323152 lt!323151))))

(declare-fun lt!323251 () List!9223)

(declare-fun b!853794 () Bool)

(declare-fun e!561988 () Bool)

(assert (=> b!853794 (= e!561988 (or (not (= (++!2385 lt!323152 lt!323151) Nil!9207)) (= lt!323251 lt!323155)))))

(declare-fun b!853793 () Bool)

(declare-fun res!389980 () Bool)

(assert (=> b!853793 (=> (not res!389980) (not e!561988))))

(assert (=> b!853793 (= res!389980 (= (size!7680 lt!323251) (+ (size!7680 lt!323155) (size!7680 (++!2385 lt!323152 lt!323151)))))))

(declare-fun d!266800 () Bool)

(assert (=> d!266800 e!561988))

(declare-fun res!389981 () Bool)

(assert (=> d!266800 (=> (not res!389981) (not e!561988))))

(assert (=> d!266800 (= res!389981 (= (content!1347 lt!323251) (set.union (content!1347 lt!323155) (content!1347 (++!2385 lt!323152 lt!323151)))))))

(assert (=> d!266800 (= lt!323251 e!561987)))

(declare-fun c!138482 () Bool)

(assert (=> d!266800 (= c!138482 (is-Nil!9207 lt!323155))))

(assert (=> d!266800 (= (++!2385 lt!323155 (++!2385 lt!323152 lt!323151)) lt!323251)))

(declare-fun b!853792 () Bool)

(assert (=> b!853792 (= e!561987 (Cons!9207 (h!14608 lt!323155) (++!2385 (t!95977 lt!323155) (++!2385 lt!323152 lt!323151))))))

(assert (= (and d!266800 c!138482) b!853791))

(assert (= (and d!266800 (not c!138482)) b!853792))

(assert (= (and d!266800 res!389981) b!853793))

(assert (= (and b!853793 res!389980) b!853794))

(declare-fun m!1093899 () Bool)

(assert (=> b!853793 m!1093899))

(declare-fun m!1093901 () Bool)

(assert (=> b!853793 m!1093901))

(assert (=> b!853793 m!1093163))

(declare-fun m!1093903 () Bool)

(assert (=> b!853793 m!1093903))

(declare-fun m!1093905 () Bool)

(assert (=> d!266800 m!1093905))

(declare-fun m!1093907 () Bool)

(assert (=> d!266800 m!1093907))

(assert (=> d!266800 m!1093163))

(declare-fun m!1093909 () Bool)

(assert (=> d!266800 m!1093909))

(assert (=> b!853792 m!1093163))

(declare-fun m!1093911 () Bool)

(assert (=> b!853792 m!1093911))

(assert (=> b!853405 d!266800))

(declare-fun b!853795 () Bool)

(declare-fun e!561989 () List!9223)

(assert (=> b!853795 (= e!561989 lt!323151)))

(declare-fun e!561990 () Bool)

(declare-fun b!853798 () Bool)

(declare-fun lt!323252 () List!9223)

(assert (=> b!853798 (= e!561990 (or (not (= lt!323151 Nil!9207)) (= lt!323252 lt!323152)))))

(declare-fun b!853797 () Bool)

(declare-fun res!389982 () Bool)

(assert (=> b!853797 (=> (not res!389982) (not e!561990))))

(assert (=> b!853797 (= res!389982 (= (size!7680 lt!323252) (+ (size!7680 lt!323152) (size!7680 lt!323151))))))

(declare-fun d!266802 () Bool)

(assert (=> d!266802 e!561990))

(declare-fun res!389983 () Bool)

(assert (=> d!266802 (=> (not res!389983) (not e!561990))))

(assert (=> d!266802 (= res!389983 (= (content!1347 lt!323252) (set.union (content!1347 lt!323152) (content!1347 lt!323151))))))

(assert (=> d!266802 (= lt!323252 e!561989)))

(declare-fun c!138483 () Bool)

(assert (=> d!266802 (= c!138483 (is-Nil!9207 lt!323152))))

(assert (=> d!266802 (= (++!2385 lt!323152 lt!323151) lt!323252)))

(declare-fun b!853796 () Bool)

(assert (=> b!853796 (= e!561989 (Cons!9207 (h!14608 lt!323152) (++!2385 (t!95977 lt!323152) lt!323151)))))

(assert (= (and d!266802 c!138483) b!853795))

(assert (= (and d!266802 (not c!138483)) b!853796))

(assert (= (and d!266802 res!389983) b!853797))

(assert (= (and b!853797 res!389982) b!853798))

(declare-fun m!1093913 () Bool)

(assert (=> b!853797 m!1093913))

(declare-fun m!1093915 () Bool)

(assert (=> b!853797 m!1093915))

(declare-fun m!1093917 () Bool)

(assert (=> b!853797 m!1093917))

(declare-fun m!1093919 () Bool)

(assert (=> d!266802 m!1093919))

(declare-fun m!1093921 () Bool)

(assert (=> d!266802 m!1093921))

(declare-fun m!1093923 () Bool)

(assert (=> d!266802 m!1093923))

(declare-fun m!1093925 () Bool)

(assert (=> b!853796 m!1093925))

(assert (=> b!853405 d!266802))

(assert (=> b!853405 d!266720))

(declare-fun b!853799 () Bool)

(declare-fun e!561991 () List!9223)

(assert (=> b!853799 (= e!561991 lt!323151)))

(declare-fun b!853802 () Bool)

(declare-fun e!561992 () Bool)

(declare-fun lt!323253 () List!9223)

(assert (=> b!853802 (= e!561992 (or (not (= lt!323151 Nil!9207)) (= lt!323253 (++!2385 lt!323155 lt!323152))))))

(declare-fun b!853801 () Bool)

(declare-fun res!389984 () Bool)

(assert (=> b!853801 (=> (not res!389984) (not e!561992))))

(assert (=> b!853801 (= res!389984 (= (size!7680 lt!323253) (+ (size!7680 (++!2385 lt!323155 lt!323152)) (size!7680 lt!323151))))))

(declare-fun d!266804 () Bool)

(assert (=> d!266804 e!561992))

(declare-fun res!389985 () Bool)

(assert (=> d!266804 (=> (not res!389985) (not e!561992))))

(assert (=> d!266804 (= res!389985 (= (content!1347 lt!323253) (set.union (content!1347 (++!2385 lt!323155 lt!323152)) (content!1347 lt!323151))))))

(assert (=> d!266804 (= lt!323253 e!561991)))

(declare-fun c!138484 () Bool)

(assert (=> d!266804 (= c!138484 (is-Nil!9207 (++!2385 lt!323155 lt!323152)))))

(assert (=> d!266804 (= (++!2385 (++!2385 lt!323155 lt!323152) lt!323151) lt!323253)))

(declare-fun b!853800 () Bool)

(assert (=> b!853800 (= e!561991 (Cons!9207 (h!14608 (++!2385 lt!323155 lt!323152)) (++!2385 (t!95977 (++!2385 lt!323155 lt!323152)) lt!323151)))))

(assert (= (and d!266804 c!138484) b!853799))

(assert (= (and d!266804 (not c!138484)) b!853800))

(assert (= (and d!266804 res!389985) b!853801))

(assert (= (and b!853801 res!389984) b!853802))

(declare-fun m!1093927 () Bool)

(assert (=> b!853801 m!1093927))

(assert (=> b!853801 m!1093155))

(declare-fun m!1093929 () Bool)

(assert (=> b!853801 m!1093929))

(assert (=> b!853801 m!1093917))

(declare-fun m!1093931 () Bool)

(assert (=> d!266804 m!1093931))

(assert (=> d!266804 m!1093155))

(declare-fun m!1093933 () Bool)

(assert (=> d!266804 m!1093933))

(assert (=> d!266804 m!1093923))

(declare-fun m!1093935 () Bool)

(assert (=> b!853800 m!1093935))

(assert (=> b!853405 d!266804))

(declare-fun b!853803 () Bool)

(declare-fun e!561993 () List!9223)

(assert (=> b!853803 (= e!561993 lt!323152)))

(declare-fun e!561994 () Bool)

(declare-fun lt!323254 () List!9223)

(declare-fun b!853806 () Bool)

(assert (=> b!853806 (= e!561994 (or (not (= lt!323152 Nil!9207)) (= lt!323254 lt!323155)))))

(declare-fun b!853805 () Bool)

(declare-fun res!389986 () Bool)

(assert (=> b!853805 (=> (not res!389986) (not e!561994))))

(assert (=> b!853805 (= res!389986 (= (size!7680 lt!323254) (+ (size!7680 lt!323155) (size!7680 lt!323152))))))

(declare-fun d!266806 () Bool)

(assert (=> d!266806 e!561994))

(declare-fun res!389987 () Bool)

(assert (=> d!266806 (=> (not res!389987) (not e!561994))))

(assert (=> d!266806 (= res!389987 (= (content!1347 lt!323254) (set.union (content!1347 lt!323155) (content!1347 lt!323152))))))

(assert (=> d!266806 (= lt!323254 e!561993)))

(declare-fun c!138485 () Bool)

(assert (=> d!266806 (= c!138485 (is-Nil!9207 lt!323155))))

(assert (=> d!266806 (= (++!2385 lt!323155 lt!323152) lt!323254)))

(declare-fun b!853804 () Bool)

(assert (=> b!853804 (= e!561993 (Cons!9207 (h!14608 lt!323155) (++!2385 (t!95977 lt!323155) lt!323152)))))

(assert (= (and d!266806 c!138485) b!853803))

(assert (= (and d!266806 (not c!138485)) b!853804))

(assert (= (and d!266806 res!389987) b!853805))

(assert (= (and b!853805 res!389986) b!853806))

(declare-fun m!1093937 () Bool)

(assert (=> b!853805 m!1093937))

(assert (=> b!853805 m!1093901))

(assert (=> b!853805 m!1093915))

(declare-fun m!1093939 () Bool)

(assert (=> d!266806 m!1093939))

(assert (=> d!266806 m!1093907))

(assert (=> d!266806 m!1093921))

(declare-fun m!1093941 () Bool)

(assert (=> b!853804 m!1093941))

(assert (=> b!853405 d!266806))

(declare-fun d!266808 () Bool)

(assert (=> d!266808 (= (list!3619 (charsOf!994 (h!14609 l!5107))) (list!3624 (c!138386 (charsOf!994 (h!14609 l!5107)))))))

(declare-fun bs!231598 () Bool)

(assert (= bs!231598 d!266808))

(declare-fun m!1093943 () Bool)

(assert (=> bs!231598 m!1093943))

(assert (=> b!853405 d!266808))

(assert (=> b!853405 d!266750))

(declare-fun d!266810 () Bool)

(declare-fun lt!323255 () BalanceConc!6114)

(assert (=> d!266810 (= (list!3619 lt!323255) (originalCharacters!2283 (h!14609 l!5107)))))

(assert (=> d!266810 (= lt!323255 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107)))) (value!55920 (h!14609 l!5107))))))

(assert (=> d!266810 (= (charsOf!994 (h!14609 l!5107)) lt!323255)))

(declare-fun b_lambda!28583 () Bool)

(assert (=> (not b_lambda!28583) (not d!266810)))

(assert (=> d!266810 t!96011))

(declare-fun b_and!75187 () Bool)

(assert (= b_and!75179 (and (=> t!96011 result!69624) b_and!75187)))

(assert (=> d!266810 t!96015))

(declare-fun b_and!75189 () Bool)

(assert (= b_and!75185 (and (=> t!96015 result!69630) b_and!75189)))

(assert (=> d!266810 t!96004))

(declare-fun b_and!75191 () Bool)

(assert (= b_and!75177 (and (=> t!96004 result!69612) b_and!75191)))

(assert (=> d!266810 t!96002))

(declare-fun b_and!75193 () Bool)

(assert (= b_and!75181 (and (=> t!96002 result!69610) b_and!75193)))

(assert (=> d!266810 t!96006))

(declare-fun b_and!75195 () Bool)

(assert (= b_and!75183 (and (=> t!96006 result!69614) b_and!75195)))

(declare-fun m!1093945 () Bool)

(assert (=> d!266810 m!1093945))

(assert (=> d!266810 m!1093191))

(assert (=> b!853405 d!266810))

(assert (=> b!853405 d!266658))

(assert (=> b!853405 d!266660))

(declare-fun b!853810 () Bool)

(declare-fun b_free!25869 () Bool)

(declare-fun b_next!25933 () Bool)

(assert (=> b!853810 (= b_free!25869 (not b_next!25933))))

(declare-fun tp!269072 () Bool)

(declare-fun b_and!75197 () Bool)

(assert (=> b!853810 (= tp!269072 b_and!75197)))

(declare-fun b_free!25871 () Bool)

(declare-fun b_next!25935 () Bool)

(assert (=> b!853810 (= b_free!25871 (not b_next!25935))))

(declare-fun t!96095 () Bool)

(declare-fun tb!60185 () Bool)

(assert (=> (and b!853810 (= (toChars!2631 (transformation!1727 (rule!3150 (h!14609 (t!95978 (t!95978 l!5107)))))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 (tail!1039 l!5107)))))) t!96095) tb!60185))

(declare-fun result!69714 () Bool)

(assert (= result!69714 result!69674))

(assert (=> d!266710 t!96095))

(declare-fun tb!60187 () Bool)

(declare-fun t!96097 () Bool)

(assert (=> (and b!853810 (= (toChars!2631 (transformation!1727 (rule!3150 (h!14609 (t!95978 (t!95978 l!5107)))))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 lt!323139))))) t!96097) tb!60187))

(declare-fun result!69716 () Bool)

(assert (= result!69716 result!69704))

(assert (=> d!266788 t!96097))

(declare-fun t!96099 () Bool)

(declare-fun tb!60189 () Bool)

(assert (=> (and b!853810 (= (toChars!2631 (transformation!1727 (rule!3150 (h!14609 (t!95978 (t!95978 l!5107)))))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 lt!323148))))) t!96099) tb!60189))

(declare-fun result!69718 () Bool)

(assert (= result!69718 result!69684))

(assert (=> d!266756 t!96099))

(declare-fun tb!60191 () Bool)

(declare-fun t!96101 () Bool)

(assert (=> (and b!853810 (= (toChars!2631 (transformation!1727 (rule!3150 (h!14609 (t!95978 (t!95978 l!5107)))))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 lt!323141))))) t!96101) tb!60191))

(declare-fun result!69720 () Bool)

(assert (= result!69720 result!69664))

(assert (=> d!266696 t!96101))

(declare-fun t!96103 () Bool)

(declare-fun tb!60193 () Bool)

(assert (=> (and b!853810 (= (toChars!2631 (transformation!1727 (rule!3150 (h!14609 (t!95978 (t!95978 l!5107)))))) (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297)))) t!96103) tb!60193))

(declare-fun result!69722 () Bool)

(assert (= result!69722 result!69602))

(assert (=> d!266716 t!96103))

(declare-fun t!96105 () Bool)

(declare-fun tb!60195 () Bool)

(assert (=> (and b!853810 (= (toChars!2631 (transformation!1727 (rule!3150 (h!14609 (t!95978 (t!95978 l!5107)))))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 (t!95978 l!5107)))))) t!96105) tb!60195))

(declare-fun result!69724 () Bool)

(assert (= result!69724 result!69654))

(assert (=> b!853582 t!96105))

(assert (=> b!853384 t!96103))

(declare-fun t!96107 () Bool)

(declare-fun tb!60197 () Bool)

(assert (=> (and b!853810 (= (toChars!2631 (transformation!1727 (rule!3150 (h!14609 (t!95978 (t!95978 l!5107)))))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107))))) t!96107) tb!60197))

(declare-fun result!69726 () Bool)

(assert (= result!69726 result!69610))

(assert (=> b!853416 t!96107))

(declare-fun t!96109 () Bool)

(declare-fun tb!60199 () Bool)

(assert (=> (and b!853810 (= (toChars!2631 (transformation!1727 (rule!3150 (h!14609 (t!95978 (t!95978 l!5107)))))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 lt!323150))))) t!96109) tb!60199))

(declare-fun result!69728 () Bool)

(assert (= result!69728 result!69694))

(assert (=> d!266772 t!96109))

(assert (=> d!266810 t!96107))

(declare-fun tp!269071 () Bool)

(declare-fun b_and!75199 () Bool)

(assert (=> b!853810 (= tp!269071 (and (=> t!96099 result!69718) (=> t!96105 result!69724) (=> t!96103 result!69722) (=> t!96101 result!69720) (=> t!96095 result!69714) (=> t!96107 result!69726) (=> t!96097 result!69716) (=> t!96109 result!69728) b_and!75199))))

(declare-fun tp!269074 () Bool)

(declare-fun e!561997 () Bool)

(declare-fun b!853808 () Bool)

(declare-fun e!561995 () Bool)

(assert (=> b!853808 (= e!561995 (and (inv!21 (value!55920 (h!14609 (t!95978 (t!95978 l!5107))))) e!561997 tp!269074))))

(declare-fun e!562000 () Bool)

(assert (=> b!853810 (= e!562000 (and tp!269072 tp!269071))))

(declare-fun e!561996 () Bool)

(declare-fun tp!269075 () Bool)

(declare-fun b!853807 () Bool)

(assert (=> b!853807 (= e!561996 (and (inv!11707 (h!14609 (t!95978 (t!95978 l!5107)))) e!561995 tp!269075))))

(declare-fun tp!269073 () Bool)

(declare-fun b!853809 () Bool)

(assert (=> b!853809 (= e!561997 (and tp!269073 (inv!11704 (tag!1989 (rule!3150 (h!14609 (t!95978 (t!95978 l!5107)))))) (inv!11708 (transformation!1727 (rule!3150 (h!14609 (t!95978 (t!95978 l!5107)))))) e!562000))))

(assert (=> b!853487 (= tp!269002 e!561996)))

(assert (= b!853809 b!853810))

(assert (= b!853808 b!853809))

(assert (= b!853807 b!853808))

(assert (= (and b!853487 (is-Cons!9208 (t!95978 (t!95978 l!5107)))) b!853807))

(declare-fun m!1093947 () Bool)

(assert (=> b!853808 m!1093947))

(declare-fun m!1093949 () Bool)

(assert (=> b!853807 m!1093949))

(declare-fun m!1093951 () Bool)

(assert (=> b!853809 m!1093951))

(declare-fun m!1093953 () Bool)

(assert (=> b!853809 m!1093953))

(declare-fun b!853811 () Bool)

(declare-fun e!562001 () Bool)

(assert (=> b!853811 (= e!562001 tp_is_empty!3979)))

(assert (=> b!853460 (= tp!268967 e!562001)))

(declare-fun b!853812 () Bool)

(declare-fun tp!269076 () Bool)

(declare-fun tp!269077 () Bool)

(assert (=> b!853812 (= e!562001 (and tp!269076 tp!269077))))

(declare-fun b!853814 () Bool)

(declare-fun tp!269078 () Bool)

(declare-fun tp!269080 () Bool)

(assert (=> b!853814 (= e!562001 (and tp!269078 tp!269080))))

(declare-fun b!853813 () Bool)

(declare-fun tp!269079 () Bool)

(assert (=> b!853813 (= e!562001 tp!269079)))

(assert (= (and b!853460 (is-ElementMatch!2160 (regOne!4833 (regex!1727 (h!14610 rules!2621))))) b!853811))

(assert (= (and b!853460 (is-Concat!3954 (regOne!4833 (regex!1727 (h!14610 rules!2621))))) b!853812))

(assert (= (and b!853460 (is-Star!2160 (regOne!4833 (regex!1727 (h!14610 rules!2621))))) b!853813))

(assert (= (and b!853460 (is-Union!2160 (regOne!4833 (regex!1727 (h!14610 rules!2621))))) b!853814))

(declare-fun b!853815 () Bool)

(declare-fun e!562002 () Bool)

(assert (=> b!853815 (= e!562002 tp_is_empty!3979)))

(assert (=> b!853460 (= tp!268969 e!562002)))

(declare-fun b!853816 () Bool)

(declare-fun tp!269081 () Bool)

(declare-fun tp!269082 () Bool)

(assert (=> b!853816 (= e!562002 (and tp!269081 tp!269082))))

(declare-fun b!853818 () Bool)

(declare-fun tp!269083 () Bool)

(declare-fun tp!269085 () Bool)

(assert (=> b!853818 (= e!562002 (and tp!269083 tp!269085))))

(declare-fun b!853817 () Bool)

(declare-fun tp!269084 () Bool)

(assert (=> b!853817 (= e!562002 tp!269084)))

(assert (= (and b!853460 (is-ElementMatch!2160 (regTwo!4833 (regex!1727 (h!14610 rules!2621))))) b!853815))

(assert (= (and b!853460 (is-Concat!3954 (regTwo!4833 (regex!1727 (h!14610 rules!2621))))) b!853816))

(assert (= (and b!853460 (is-Star!2160 (regTwo!4833 (regex!1727 (h!14610 rules!2621))))) b!853817))

(assert (= (and b!853460 (is-Union!2160 (regTwo!4833 (regex!1727 (h!14610 rules!2621))))) b!853818))

(declare-fun b!853819 () Bool)

(declare-fun e!562003 () Bool)

(assert (=> b!853819 (= e!562003 tp_is_empty!3979)))

(assert (=> b!853492 (= tp!269003 e!562003)))

(declare-fun b!853820 () Bool)

(declare-fun tp!269086 () Bool)

(declare-fun tp!269087 () Bool)

(assert (=> b!853820 (= e!562003 (and tp!269086 tp!269087))))

(declare-fun b!853822 () Bool)

(declare-fun tp!269088 () Bool)

(declare-fun tp!269090 () Bool)

(assert (=> b!853822 (= e!562003 (and tp!269088 tp!269090))))

(declare-fun b!853821 () Bool)

(declare-fun tp!269089 () Bool)

(assert (=> b!853821 (= e!562003 tp!269089)))

(assert (= (and b!853492 (is-ElementMatch!2160 (regOne!4832 (regex!1727 (rule!3150 (h!14609 l!5107)))))) b!853819))

(assert (= (and b!853492 (is-Concat!3954 (regOne!4832 (regex!1727 (rule!3150 (h!14609 l!5107)))))) b!853820))

(assert (= (and b!853492 (is-Star!2160 (regOne!4832 (regex!1727 (rule!3150 (h!14609 l!5107)))))) b!853821))

(assert (= (and b!853492 (is-Union!2160 (regOne!4832 (regex!1727 (rule!3150 (h!14609 l!5107)))))) b!853822))

(declare-fun b!853823 () Bool)

(declare-fun e!562004 () Bool)

(assert (=> b!853823 (= e!562004 tp_is_empty!3979)))

(assert (=> b!853492 (= tp!269004 e!562004)))

(declare-fun b!853824 () Bool)

(declare-fun tp!269091 () Bool)

(declare-fun tp!269092 () Bool)

(assert (=> b!853824 (= e!562004 (and tp!269091 tp!269092))))

(declare-fun b!853826 () Bool)

(declare-fun tp!269093 () Bool)

(declare-fun tp!269095 () Bool)

(assert (=> b!853826 (= e!562004 (and tp!269093 tp!269095))))

(declare-fun b!853825 () Bool)

(declare-fun tp!269094 () Bool)

(assert (=> b!853825 (= e!562004 tp!269094)))

(assert (= (and b!853492 (is-ElementMatch!2160 (regTwo!4832 (regex!1727 (rule!3150 (h!14609 l!5107)))))) b!853823))

(assert (= (and b!853492 (is-Concat!3954 (regTwo!4832 (regex!1727 (rule!3150 (h!14609 l!5107)))))) b!853824))

(assert (= (and b!853492 (is-Star!2160 (regTwo!4832 (regex!1727 (rule!3150 (h!14609 l!5107)))))) b!853825))

(assert (= (and b!853492 (is-Union!2160 (regTwo!4832 (regex!1727 (rule!3150 (h!14609 l!5107)))))) b!853826))

(declare-fun b!853827 () Bool)

(declare-fun e!562005 () Bool)

(assert (=> b!853827 (= e!562005 tp_is_empty!3979)))

(assert (=> b!853493 (= tp!269006 e!562005)))

(declare-fun b!853828 () Bool)

(declare-fun tp!269096 () Bool)

(declare-fun tp!269097 () Bool)

(assert (=> b!853828 (= e!562005 (and tp!269096 tp!269097))))

(declare-fun b!853830 () Bool)

(declare-fun tp!269098 () Bool)

(declare-fun tp!269100 () Bool)

(assert (=> b!853830 (= e!562005 (and tp!269098 tp!269100))))

(declare-fun b!853829 () Bool)

(declare-fun tp!269099 () Bool)

(assert (=> b!853829 (= e!562005 tp!269099)))

(assert (= (and b!853493 (is-ElementMatch!2160 (reg!2489 (regex!1727 (rule!3150 (h!14609 l!5107)))))) b!853827))

(assert (= (and b!853493 (is-Concat!3954 (reg!2489 (regex!1727 (rule!3150 (h!14609 l!5107)))))) b!853828))

(assert (= (and b!853493 (is-Star!2160 (reg!2489 (regex!1727 (rule!3150 (h!14609 l!5107)))))) b!853829))

(assert (= (and b!853493 (is-Union!2160 (reg!2489 (regex!1727 (rule!3150 (h!14609 l!5107)))))) b!853830))

(declare-fun b!853831 () Bool)

(declare-fun e!562006 () Bool)

(declare-fun tp!269101 () Bool)

(assert (=> b!853831 (= e!562006 (and tp_is_empty!3979 tp!269101))))

(assert (=> b!853488 (= tp!269001 e!562006)))

(assert (= (and b!853488 (is-Cons!9207 (originalCharacters!2283 (h!14609 (t!95978 l!5107))))) b!853831))

(declare-fun b!853832 () Bool)

(declare-fun e!562007 () Bool)

(declare-fun tp!269102 () Bool)

(assert (=> b!853832 (= e!562007 (and tp_is_empty!3979 tp!269102))))

(assert (=> b!853461 (= tp!268970 e!562007)))

(assert (= (and b!853461 (is-Cons!9207 (t!95977 (originalCharacters!2283 separatorToken!297)))) b!853832))

(declare-fun b!853833 () Bool)

(declare-fun e!562008 () Bool)

(assert (=> b!853833 (= e!562008 tp_is_empty!3979)))

(assert (=> b!853489 (= tp!269000 e!562008)))

(declare-fun b!853834 () Bool)

(declare-fun tp!269103 () Bool)

(declare-fun tp!269104 () Bool)

(assert (=> b!853834 (= e!562008 (and tp!269103 tp!269104))))

(declare-fun b!853836 () Bool)

(declare-fun tp!269105 () Bool)

(declare-fun tp!269107 () Bool)

(assert (=> b!853836 (= e!562008 (and tp!269105 tp!269107))))

(declare-fun b!853835 () Bool)

(declare-fun tp!269106 () Bool)

(assert (=> b!853835 (= e!562008 tp!269106)))

(assert (= (and b!853489 (is-ElementMatch!2160 (regex!1727 (rule!3150 (h!14609 (t!95978 l!5107)))))) b!853833))

(assert (= (and b!853489 (is-Concat!3954 (regex!1727 (rule!3150 (h!14609 (t!95978 l!5107)))))) b!853834))

(assert (= (and b!853489 (is-Star!2160 (regex!1727 (rule!3150 (h!14609 (t!95978 l!5107)))))) b!853835))

(assert (= (and b!853489 (is-Union!2160 (regex!1727 (rule!3150 (h!14609 (t!95978 l!5107)))))) b!853836))

(declare-fun b!853837 () Bool)

(declare-fun e!562009 () Bool)

(assert (=> b!853837 (= e!562009 tp_is_empty!3979)))

(assert (=> b!853494 (= tp!269005 e!562009)))

(declare-fun b!853838 () Bool)

(declare-fun tp!269108 () Bool)

(declare-fun tp!269109 () Bool)

(assert (=> b!853838 (= e!562009 (and tp!269108 tp!269109))))

(declare-fun b!853840 () Bool)

(declare-fun tp!269110 () Bool)

(declare-fun tp!269112 () Bool)

(assert (=> b!853840 (= e!562009 (and tp!269110 tp!269112))))

(declare-fun b!853839 () Bool)

(declare-fun tp!269111 () Bool)

(assert (=> b!853839 (= e!562009 tp!269111)))

(assert (= (and b!853494 (is-ElementMatch!2160 (regOne!4833 (regex!1727 (rule!3150 (h!14609 l!5107)))))) b!853837))

(assert (= (and b!853494 (is-Concat!3954 (regOne!4833 (regex!1727 (rule!3150 (h!14609 l!5107)))))) b!853838))

(assert (= (and b!853494 (is-Star!2160 (regOne!4833 (regex!1727 (rule!3150 (h!14609 l!5107)))))) b!853839))

(assert (= (and b!853494 (is-Union!2160 (regOne!4833 (regex!1727 (rule!3150 (h!14609 l!5107)))))) b!853840))

(declare-fun b!853841 () Bool)

(declare-fun e!562010 () Bool)

(assert (=> b!853841 (= e!562010 tp_is_empty!3979)))

(assert (=> b!853494 (= tp!269007 e!562010)))

(declare-fun b!853842 () Bool)

(declare-fun tp!269113 () Bool)

(declare-fun tp!269114 () Bool)

(assert (=> b!853842 (= e!562010 (and tp!269113 tp!269114))))

(declare-fun b!853844 () Bool)

(declare-fun tp!269115 () Bool)

(declare-fun tp!269117 () Bool)

(assert (=> b!853844 (= e!562010 (and tp!269115 tp!269117))))

(declare-fun b!853843 () Bool)

(declare-fun tp!269116 () Bool)

(assert (=> b!853843 (= e!562010 tp!269116)))

(assert (= (and b!853494 (is-ElementMatch!2160 (regTwo!4833 (regex!1727 (rule!3150 (h!14609 l!5107)))))) b!853841))

(assert (= (and b!853494 (is-Concat!3954 (regTwo!4833 (regex!1727 (rule!3150 (h!14609 l!5107)))))) b!853842))

(assert (= (and b!853494 (is-Star!2160 (regTwo!4833 (regex!1727 (rule!3150 (h!14609 l!5107)))))) b!853843))

(assert (= (and b!853494 (is-Union!2160 (regTwo!4833 (regex!1727 (rule!3150 (h!14609 l!5107)))))) b!853844))

(declare-fun b!853845 () Bool)

(declare-fun e!562011 () Bool)

(declare-fun tp!269118 () Bool)

(assert (=> b!853845 (= e!562011 (and tp_is_empty!3979 tp!269118))))

(assert (=> b!853446 (= tp!268954 e!562011)))

(assert (= (and b!853446 (is-Cons!9207 (t!95977 (originalCharacters!2283 (h!14609 l!5107))))) b!853845))

(declare-fun b!853846 () Bool)

(declare-fun e!562012 () Bool)

(assert (=> b!853846 (= e!562012 tp_is_empty!3979)))

(assert (=> b!853475 (= tp!268985 e!562012)))

(declare-fun b!853847 () Bool)

(declare-fun tp!269119 () Bool)

(declare-fun tp!269120 () Bool)

(assert (=> b!853847 (= e!562012 (and tp!269119 tp!269120))))

(declare-fun b!853849 () Bool)

(declare-fun tp!269121 () Bool)

(declare-fun tp!269123 () Bool)

(assert (=> b!853849 (= e!562012 (and tp!269121 tp!269123))))

(declare-fun b!853848 () Bool)

(declare-fun tp!269122 () Bool)

(assert (=> b!853848 (= e!562012 tp!269122)))

(assert (= (and b!853475 (is-ElementMatch!2160 (regex!1727 (h!14610 (t!95979 rules!2621))))) b!853846))

(assert (= (and b!853475 (is-Concat!3954 (regex!1727 (h!14610 (t!95979 rules!2621))))) b!853847))

(assert (= (and b!853475 (is-Star!2160 (regex!1727 (h!14610 (t!95979 rules!2621))))) b!853848))

(assert (= (and b!853475 (is-Union!2160 (regex!1727 (h!14610 (t!95979 rules!2621))))) b!853849))

(declare-fun b!853852 () Bool)

(declare-fun b_free!25873 () Bool)

(declare-fun b_next!25937 () Bool)

(assert (=> b!853852 (= b_free!25873 (not b_next!25937))))

(declare-fun tp!269127 () Bool)

(declare-fun b_and!75201 () Bool)

(assert (=> b!853852 (= tp!269127 b_and!75201)))

(declare-fun b_free!25875 () Bool)

(declare-fun b_next!25939 () Bool)

(assert (=> b!853852 (= b_free!25875 (not b_next!25939))))

(declare-fun t!96111 () Bool)

(declare-fun tb!60201 () Bool)

(assert (=> (and b!853852 (= (toChars!2631 (transformation!1727 (h!14610 (t!95979 (t!95979 rules!2621))))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 (tail!1039 l!5107)))))) t!96111) tb!60201))

(declare-fun result!69730 () Bool)

(assert (= result!69730 result!69674))

(assert (=> d!266710 t!96111))

(declare-fun tb!60203 () Bool)

(declare-fun t!96113 () Bool)

(assert (=> (and b!853852 (= (toChars!2631 (transformation!1727 (h!14610 (t!95979 (t!95979 rules!2621))))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 lt!323139))))) t!96113) tb!60203))

(declare-fun result!69732 () Bool)

(assert (= result!69732 result!69704))

(assert (=> d!266788 t!96113))

(declare-fun t!96115 () Bool)

(declare-fun tb!60205 () Bool)

(assert (=> (and b!853852 (= (toChars!2631 (transformation!1727 (h!14610 (t!95979 (t!95979 rules!2621))))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 lt!323148))))) t!96115) tb!60205))

(declare-fun result!69734 () Bool)

(assert (= result!69734 result!69684))

(assert (=> d!266756 t!96115))

(declare-fun t!96117 () Bool)

(declare-fun tb!60207 () Bool)

(assert (=> (and b!853852 (= (toChars!2631 (transformation!1727 (h!14610 (t!95979 (t!95979 rules!2621))))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 lt!323141))))) t!96117) tb!60207))

(declare-fun result!69736 () Bool)

(assert (= result!69736 result!69664))

(assert (=> d!266696 t!96117))

(declare-fun tb!60209 () Bool)

(declare-fun t!96119 () Bool)

(assert (=> (and b!853852 (= (toChars!2631 (transformation!1727 (h!14610 (t!95979 (t!95979 rules!2621))))) (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297)))) t!96119) tb!60209))

(declare-fun result!69738 () Bool)

(assert (= result!69738 result!69602))

(assert (=> d!266716 t!96119))

(declare-fun tb!60211 () Bool)

(declare-fun t!96121 () Bool)

(assert (=> (and b!853852 (= (toChars!2631 (transformation!1727 (h!14610 (t!95979 (t!95979 rules!2621))))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 (t!95978 l!5107)))))) t!96121) tb!60211))

(declare-fun result!69740 () Bool)

(assert (= result!69740 result!69654))

(assert (=> b!853582 t!96121))

(assert (=> b!853384 t!96119))

(declare-fun t!96123 () Bool)

(declare-fun tb!60213 () Bool)

(assert (=> (and b!853852 (= (toChars!2631 (transformation!1727 (h!14610 (t!95979 (t!95979 rules!2621))))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107))))) t!96123) tb!60213))

(declare-fun result!69742 () Bool)

(assert (= result!69742 result!69610))

(assert (=> b!853416 t!96123))

(declare-fun t!96125 () Bool)

(declare-fun tb!60215 () Bool)

(assert (=> (and b!853852 (= (toChars!2631 (transformation!1727 (h!14610 (t!95979 (t!95979 rules!2621))))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 lt!323150))))) t!96125) tb!60215))

(declare-fun result!69744 () Bool)

(assert (= result!69744 result!69694))

(assert (=> d!266772 t!96125))

(assert (=> d!266810 t!96123))

(declare-fun tp!269126 () Bool)

(declare-fun b_and!75203 () Bool)

(assert (=> b!853852 (= tp!269126 (and (=> t!96113 result!69732) (=> t!96119 result!69738) (=> t!96115 result!69734) (=> t!96111 result!69730) (=> t!96125 result!69744) (=> t!96121 result!69740) (=> t!96117 result!69736) (=> t!96123 result!69742) b_and!75203))))

(declare-fun e!562015 () Bool)

(assert (=> b!853852 (= e!562015 (and tp!269127 tp!269126))))

(declare-fun tp!269125 () Bool)

(declare-fun b!853851 () Bool)

(declare-fun e!562016 () Bool)

(assert (=> b!853851 (= e!562016 (and tp!269125 (inv!11704 (tag!1989 (h!14610 (t!95979 (t!95979 rules!2621))))) (inv!11708 (transformation!1727 (h!14610 (t!95979 (t!95979 rules!2621))))) e!562015))))

(declare-fun b!853850 () Bool)

(declare-fun e!562014 () Bool)

(declare-fun tp!269124 () Bool)

(assert (=> b!853850 (= e!562014 (and e!562016 tp!269124))))

(assert (=> b!853474 (= tp!268984 e!562014)))

(assert (= b!853851 b!853852))

(assert (= b!853850 b!853851))

(assert (= (and b!853474 (is-Cons!9209 (t!95979 (t!95979 rules!2621)))) b!853850))

(declare-fun m!1093955 () Bool)

(assert (=> b!853851 m!1093955))

(declare-fun m!1093957 () Bool)

(assert (=> b!853851 m!1093957))

(declare-fun b!853853 () Bool)

(declare-fun e!562017 () Bool)

(assert (=> b!853853 (= e!562017 tp_is_empty!3979)))

(assert (=> b!853463 (= tp!268971 e!562017)))

(declare-fun b!853854 () Bool)

(declare-fun tp!269128 () Bool)

(declare-fun tp!269129 () Bool)

(assert (=> b!853854 (= e!562017 (and tp!269128 tp!269129))))

(declare-fun b!853856 () Bool)

(declare-fun tp!269130 () Bool)

(declare-fun tp!269132 () Bool)

(assert (=> b!853856 (= e!562017 (and tp!269130 tp!269132))))

(declare-fun b!853855 () Bool)

(declare-fun tp!269131 () Bool)

(assert (=> b!853855 (= e!562017 tp!269131)))

(assert (= (and b!853463 (is-ElementMatch!2160 (regOne!4832 (regex!1727 (rule!3150 separatorToken!297))))) b!853853))

(assert (= (and b!853463 (is-Concat!3954 (regOne!4832 (regex!1727 (rule!3150 separatorToken!297))))) b!853854))

(assert (= (and b!853463 (is-Star!2160 (regOne!4832 (regex!1727 (rule!3150 separatorToken!297))))) b!853855))

(assert (= (and b!853463 (is-Union!2160 (regOne!4832 (regex!1727 (rule!3150 separatorToken!297))))) b!853856))

(declare-fun b!853857 () Bool)

(declare-fun e!562018 () Bool)

(assert (=> b!853857 (= e!562018 tp_is_empty!3979)))

(assert (=> b!853463 (= tp!268972 e!562018)))

(declare-fun b!853858 () Bool)

(declare-fun tp!269133 () Bool)

(declare-fun tp!269134 () Bool)

(assert (=> b!853858 (= e!562018 (and tp!269133 tp!269134))))

(declare-fun b!853860 () Bool)

(declare-fun tp!269135 () Bool)

(declare-fun tp!269137 () Bool)

(assert (=> b!853860 (= e!562018 (and tp!269135 tp!269137))))

(declare-fun b!853859 () Bool)

(declare-fun tp!269136 () Bool)

(assert (=> b!853859 (= e!562018 tp!269136)))

(assert (= (and b!853463 (is-ElementMatch!2160 (regTwo!4832 (regex!1727 (rule!3150 separatorToken!297))))) b!853857))

(assert (= (and b!853463 (is-Concat!3954 (regTwo!4832 (regex!1727 (rule!3150 separatorToken!297))))) b!853858))

(assert (= (and b!853463 (is-Star!2160 (regTwo!4832 (regex!1727 (rule!3150 separatorToken!297))))) b!853859))

(assert (= (and b!853463 (is-Union!2160 (regTwo!4832 (regex!1727 (rule!3150 separatorToken!297))))) b!853860))

(declare-fun b!853863 () Bool)

(declare-fun e!562021 () Bool)

(assert (=> b!853863 (= e!562021 true)))

(declare-fun b!853862 () Bool)

(declare-fun e!562020 () Bool)

(assert (=> b!853862 (= e!562020 e!562021)))

(declare-fun b!853861 () Bool)

(declare-fun e!562019 () Bool)

(assert (=> b!853861 (= e!562019 e!562020)))

(assert (=> b!853340 e!562019))

(assert (= b!853862 b!853863))

(assert (= b!853861 b!853862))

(assert (= (and b!853340 (is-Cons!9209 (t!95979 rules!2621))) b!853861))

(assert (=> b!853863 (< (dynLambda!4300 order!5917 (toValue!2772 (transformation!1727 (h!14610 (t!95979 rules!2621))))) (dynLambda!4301 order!5919 lambda!25555))))

(assert (=> b!853863 (< (dynLambda!4302 order!5921 (toChars!2631 (transformation!1727 (h!14610 (t!95979 rules!2621))))) (dynLambda!4301 order!5919 lambda!25555))))

(declare-fun b!853864 () Bool)

(declare-fun e!562022 () Bool)

(assert (=> b!853864 (= e!562022 tp_is_empty!3979)))

(assert (=> b!853464 (= tp!268974 e!562022)))

(declare-fun b!853865 () Bool)

(declare-fun tp!269138 () Bool)

(declare-fun tp!269139 () Bool)

(assert (=> b!853865 (= e!562022 (and tp!269138 tp!269139))))

(declare-fun b!853867 () Bool)

(declare-fun tp!269140 () Bool)

(declare-fun tp!269142 () Bool)

(assert (=> b!853867 (= e!562022 (and tp!269140 tp!269142))))

(declare-fun b!853866 () Bool)

(declare-fun tp!269141 () Bool)

(assert (=> b!853866 (= e!562022 tp!269141)))

(assert (= (and b!853464 (is-ElementMatch!2160 (reg!2489 (regex!1727 (rule!3150 separatorToken!297))))) b!853864))

(assert (= (and b!853464 (is-Concat!3954 (reg!2489 (regex!1727 (rule!3150 separatorToken!297))))) b!853865))

(assert (= (and b!853464 (is-Star!2160 (reg!2489 (regex!1727 (rule!3150 separatorToken!297))))) b!853866))

(assert (= (and b!853464 (is-Union!2160 (reg!2489 (regex!1727 (rule!3150 separatorToken!297))))) b!853867))

(declare-fun b!853868 () Bool)

(declare-fun e!562023 () Bool)

(assert (=> b!853868 (= e!562023 tp_is_empty!3979)))

(assert (=> b!853465 (= tp!268973 e!562023)))

(declare-fun b!853869 () Bool)

(declare-fun tp!269143 () Bool)

(declare-fun tp!269144 () Bool)

(assert (=> b!853869 (= e!562023 (and tp!269143 tp!269144))))

(declare-fun b!853871 () Bool)

(declare-fun tp!269145 () Bool)

(declare-fun tp!269147 () Bool)

(assert (=> b!853871 (= e!562023 (and tp!269145 tp!269147))))

(declare-fun b!853870 () Bool)

(declare-fun tp!269146 () Bool)

(assert (=> b!853870 (= e!562023 tp!269146)))

(assert (= (and b!853465 (is-ElementMatch!2160 (regOne!4833 (regex!1727 (rule!3150 separatorToken!297))))) b!853868))

(assert (= (and b!853465 (is-Concat!3954 (regOne!4833 (regex!1727 (rule!3150 separatorToken!297))))) b!853869))

(assert (= (and b!853465 (is-Star!2160 (regOne!4833 (regex!1727 (rule!3150 separatorToken!297))))) b!853870))

(assert (= (and b!853465 (is-Union!2160 (regOne!4833 (regex!1727 (rule!3150 separatorToken!297))))) b!853871))

(declare-fun b!853872 () Bool)

(declare-fun e!562024 () Bool)

(assert (=> b!853872 (= e!562024 tp_is_empty!3979)))

(assert (=> b!853465 (= tp!268975 e!562024)))

(declare-fun b!853873 () Bool)

(declare-fun tp!269148 () Bool)

(declare-fun tp!269149 () Bool)

(assert (=> b!853873 (= e!562024 (and tp!269148 tp!269149))))

(declare-fun b!853875 () Bool)

(declare-fun tp!269150 () Bool)

(declare-fun tp!269152 () Bool)

(assert (=> b!853875 (= e!562024 (and tp!269150 tp!269152))))

(declare-fun b!853874 () Bool)

(declare-fun tp!269151 () Bool)

(assert (=> b!853874 (= e!562024 tp!269151)))

(assert (= (and b!853465 (is-ElementMatch!2160 (regTwo!4833 (regex!1727 (rule!3150 separatorToken!297))))) b!853872))

(assert (= (and b!853465 (is-Concat!3954 (regTwo!4833 (regex!1727 (rule!3150 separatorToken!297))))) b!853873))

(assert (= (and b!853465 (is-Star!2160 (regTwo!4833 (regex!1727 (rule!3150 separatorToken!297))))) b!853874))

(assert (= (and b!853465 (is-Union!2160 (regTwo!4833 (regex!1727 (rule!3150 separatorToken!297))))) b!853875))

(declare-fun tp!269161 () Bool)

(declare-fun b!853884 () Bool)

(declare-fun e!562030 () Bool)

(declare-fun tp!269159 () Bool)

(assert (=> b!853884 (= e!562030 (and (inv!11711 (left!6811 (c!138386 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297))) (value!55920 separatorToken!297))))) tp!269159 (inv!11711 (right!7141 (c!138386 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297))) (value!55920 separatorToken!297))))) tp!269161))))

(declare-fun b!853886 () Bool)

(declare-fun e!562029 () Bool)

(declare-fun tp!269160 () Bool)

(assert (=> b!853886 (= e!562029 tp!269160)))

(declare-fun b!853885 () Bool)

(declare-fun inv!11717 (IArray!6105) Bool)

(assert (=> b!853885 (= e!562030 (and (inv!11717 (xs!5739 (c!138386 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297))) (value!55920 separatorToken!297))))) e!562029))))

(assert (=> b!853390 (= tp!268950 (and (inv!11711 (c!138386 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297))) (value!55920 separatorToken!297)))) e!562030))))

(assert (= (and b!853390 (is-Node!3050 (c!138386 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297))) (value!55920 separatorToken!297))))) b!853884))

(assert (= b!853885 b!853886))

(assert (= (and b!853390 (is-Leaf!4502 (c!138386 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297))) (value!55920 separatorToken!297))))) b!853885))

(declare-fun m!1093959 () Bool)

(assert (=> b!853884 m!1093959))

(declare-fun m!1093961 () Bool)

(assert (=> b!853884 m!1093961))

(declare-fun m!1093963 () Bool)

(assert (=> b!853885 m!1093963))

(assert (=> b!853390 m!1093113))

(declare-fun b!853889 () Bool)

(declare-fun e!562033 () Bool)

(assert (=> b!853889 (= e!562033 true)))

(declare-fun b!853888 () Bool)

(declare-fun e!562032 () Bool)

(assert (=> b!853888 (= e!562032 e!562033)))

(declare-fun b!853887 () Bool)

(declare-fun e!562031 () Bool)

(assert (=> b!853887 (= e!562031 e!562032)))

(assert (=> b!853393 e!562031))

(assert (= b!853888 b!853889))

(assert (= b!853887 b!853888))

(assert (= (and b!853393 (is-Cons!9209 (t!95979 rules!2621))) b!853887))

(assert (=> b!853889 (< (dynLambda!4300 order!5917 (toValue!2772 (transformation!1727 (h!14610 (t!95979 rules!2621))))) (dynLambda!4301 order!5919 lambda!25556))))

(assert (=> b!853889 (< (dynLambda!4302 order!5921 (toChars!2631 (transformation!1727 (h!14610 (t!95979 rules!2621))))) (dynLambda!4301 order!5919 lambda!25556))))

(declare-fun e!562035 () Bool)

(declare-fun b!853890 () Bool)

(declare-fun tp!269164 () Bool)

(declare-fun tp!269162 () Bool)

(assert (=> b!853890 (= e!562035 (and (inv!11711 (left!6811 (c!138386 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107)))) (value!55920 (h!14609 l!5107)))))) tp!269162 (inv!11711 (right!7141 (c!138386 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107)))) (value!55920 (h!14609 l!5107)))))) tp!269164))))

(declare-fun b!853892 () Bool)

(declare-fun e!562034 () Bool)

(declare-fun tp!269163 () Bool)

(assert (=> b!853892 (= e!562034 tp!269163)))

(declare-fun b!853891 () Bool)

(assert (=> b!853891 (= e!562035 (and (inv!11717 (xs!5739 (c!138386 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107)))) (value!55920 (h!14609 l!5107)))))) e!562034))))

(assert (=> b!853418 (= tp!268951 (and (inv!11711 (c!138386 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107)))) (value!55920 (h!14609 l!5107))))) e!562035))))

(assert (= (and b!853418 (is-Node!3050 (c!138386 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107)))) (value!55920 (h!14609 l!5107)))))) b!853890))

(assert (= b!853891 b!853892))

(assert (= (and b!853418 (is-Leaf!4502 (c!138386 (dynLambda!4303 (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107)))) (value!55920 (h!14609 l!5107)))))) b!853891))

(declare-fun m!1093965 () Bool)

(assert (=> b!853890 m!1093965))

(declare-fun m!1093967 () Bool)

(assert (=> b!853890 m!1093967))

(declare-fun m!1093969 () Bool)

(assert (=> b!853891 m!1093969))

(assert (=> b!853418 m!1093185))

(declare-fun b!853893 () Bool)

(declare-fun e!562036 () Bool)

(assert (=> b!853893 (= e!562036 tp_is_empty!3979)))

(assert (=> b!853459 (= tp!268968 e!562036)))

(declare-fun b!853894 () Bool)

(declare-fun tp!269165 () Bool)

(declare-fun tp!269166 () Bool)

(assert (=> b!853894 (= e!562036 (and tp!269165 tp!269166))))

(declare-fun b!853896 () Bool)

(declare-fun tp!269167 () Bool)

(declare-fun tp!269169 () Bool)

(assert (=> b!853896 (= e!562036 (and tp!269167 tp!269169))))

(declare-fun b!853895 () Bool)

(declare-fun tp!269168 () Bool)

(assert (=> b!853895 (= e!562036 tp!269168)))

(assert (= (and b!853459 (is-ElementMatch!2160 (reg!2489 (regex!1727 (h!14610 rules!2621))))) b!853893))

(assert (= (and b!853459 (is-Concat!3954 (reg!2489 (regex!1727 (h!14610 rules!2621))))) b!853894))

(assert (= (and b!853459 (is-Star!2160 (reg!2489 (regex!1727 (h!14610 rules!2621))))) b!853895))

(assert (= (and b!853459 (is-Union!2160 (reg!2489 (regex!1727 (h!14610 rules!2621))))) b!853896))

(declare-fun b!853897 () Bool)

(declare-fun e!562037 () Bool)

(assert (=> b!853897 (= e!562037 tp_is_empty!3979)))

(assert (=> b!853458 (= tp!268965 e!562037)))

(declare-fun b!853898 () Bool)

(declare-fun tp!269170 () Bool)

(declare-fun tp!269171 () Bool)

(assert (=> b!853898 (= e!562037 (and tp!269170 tp!269171))))

(declare-fun b!853900 () Bool)

(declare-fun tp!269172 () Bool)

(declare-fun tp!269174 () Bool)

(assert (=> b!853900 (= e!562037 (and tp!269172 tp!269174))))

(declare-fun b!853899 () Bool)

(declare-fun tp!269173 () Bool)

(assert (=> b!853899 (= e!562037 tp!269173)))

(assert (= (and b!853458 (is-ElementMatch!2160 (regOne!4832 (regex!1727 (h!14610 rules!2621))))) b!853897))

(assert (= (and b!853458 (is-Concat!3954 (regOne!4832 (regex!1727 (h!14610 rules!2621))))) b!853898))

(assert (= (and b!853458 (is-Star!2160 (regOne!4832 (regex!1727 (h!14610 rules!2621))))) b!853899))

(assert (= (and b!853458 (is-Union!2160 (regOne!4832 (regex!1727 (h!14610 rules!2621))))) b!853900))

(declare-fun b!853901 () Bool)

(declare-fun e!562038 () Bool)

(assert (=> b!853901 (= e!562038 tp_is_empty!3979)))

(assert (=> b!853458 (= tp!268966 e!562038)))

(declare-fun b!853902 () Bool)

(declare-fun tp!269175 () Bool)

(declare-fun tp!269176 () Bool)

(assert (=> b!853902 (= e!562038 (and tp!269175 tp!269176))))

(declare-fun b!853904 () Bool)

(declare-fun tp!269177 () Bool)

(declare-fun tp!269179 () Bool)

(assert (=> b!853904 (= e!562038 (and tp!269177 tp!269179))))

(declare-fun b!853903 () Bool)

(declare-fun tp!269178 () Bool)

(assert (=> b!853903 (= e!562038 tp!269178)))

(assert (= (and b!853458 (is-ElementMatch!2160 (regTwo!4832 (regex!1727 (h!14610 rules!2621))))) b!853901))

(assert (= (and b!853458 (is-Concat!3954 (regTwo!4832 (regex!1727 (h!14610 rules!2621))))) b!853902))

(assert (= (and b!853458 (is-Star!2160 (regTwo!4832 (regex!1727 (h!14610 rules!2621))))) b!853903))

(assert (= (and b!853458 (is-Union!2160 (regTwo!4832 (regex!1727 (h!14610 rules!2621))))) b!853904))

(declare-fun b_lambda!28585 () Bool)

(assert (= b_lambda!28575 (or d!266530 b_lambda!28585)))

(declare-fun bs!231599 () Bool)

(declare-fun d!266812 () Bool)

(assert (= bs!231599 (and d!266812 d!266530)))

(assert (=> bs!231599 (= (dynLambda!4304 lambda!25555 (h!14609 l!5107)) (rulesProduceIndividualToken!593 thiss!20117 rules!2621 (h!14609 l!5107)))))

(assert (=> bs!231599 m!1093053))

(assert (=> b!853754 d!266812))

(declare-fun b_lambda!28587 () Bool)

(assert (= b_lambda!28573 (or d!266570 b_lambda!28587)))

(declare-fun bs!231600 () Bool)

(declare-fun d!266814 () Bool)

(assert (= bs!231600 (and d!266814 d!266570)))

(assert (=> bs!231600 (= (dynLambda!4304 lambda!25556 (h!14609 lt!323082)) (rulesProduceIndividualToken!593 thiss!20117 rules!2621 (h!14609 lt!323082)))))

(assert (=> bs!231600 m!1093127))

(assert (=> b!853751 d!266814))

(declare-fun b_lambda!28589 () Bool)

(assert (= b_lambda!28583 (or (and b!853146 b_free!25835 (= (toChars!2631 (transformation!1727 (h!14610 rules!2621))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107)))))) (and b!853490 b_free!25859 (= (toChars!2631 (transformation!1727 (rule!3150 (h!14609 (t!95978 l!5107))))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107)))))) (and b!853476 b_free!25855 (= (toChars!2631 (transformation!1727 (h!14610 (t!95979 rules!2621)))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107)))))) (and b!853810 b_free!25871 (= (toChars!2631 (transformation!1727 (rule!3150 (h!14609 (t!95978 (t!95978 l!5107)))))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107)))))) (and b!853852 b_free!25875 (= (toChars!2631 (transformation!1727 (h!14610 (t!95979 (t!95979 rules!2621))))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107)))))) (and b!853158 b_free!25831 (= (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107)))))) (and b!853155 b_free!25839) b_lambda!28589)))

(declare-fun b_lambda!28591 () Bool)

(assert (= b_lambda!28563 (or (and b!853155 b_free!25839 (= (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107)))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 (t!95978 l!5107))))))) (and b!853158 b_free!25831 (= (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 (t!95978 l!5107))))))) (and b!853852 b_free!25875 (= (toChars!2631 (transformation!1727 (h!14610 (t!95979 (t!95979 rules!2621))))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 (t!95978 l!5107))))))) (and b!853476 b_free!25855 (= (toChars!2631 (transformation!1727 (h!14610 (t!95979 rules!2621)))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 (t!95978 l!5107))))))) (and b!853490 b_free!25859) (and b!853146 b_free!25835 (= (toChars!2631 (transformation!1727 (h!14610 rules!2621))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 (t!95978 l!5107))))))) (and b!853810 b_free!25871 (= (toChars!2631 (transformation!1727 (rule!3150 (h!14609 (t!95978 (t!95978 l!5107)))))) (toChars!2631 (transformation!1727 (rule!3150 (h!14609 (t!95978 l!5107))))))) b_lambda!28591)))

(declare-fun b_lambda!28593 () Bool)

(assert (= b_lambda!28565 (or b!853154 b_lambda!28593)))

(declare-fun bs!231601 () Bool)

(declare-fun d!266816 () Bool)

(assert (= bs!231601 (and d!266816 b!853154)))

(assert (=> bs!231601 (= (dynLambda!4304 lambda!25549 (h!14609 (t!95978 l!5107))) (not (isSeparator!1727 (rule!3150 (h!14609 (t!95978 l!5107))))))))

(assert (=> b!853611 d!266816))

(declare-fun b_lambda!28595 () Bool)

(assert (= b_lambda!28571 (or (and b!853158 b_free!25831) (and b!853476 b_free!25855 (= (toChars!2631 (transformation!1727 (h!14610 (t!95979 rules!2621)))) (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297))))) (and b!853155 b_free!25839 (= (toChars!2631 (transformation!1727 (rule!3150 (h!14609 l!5107)))) (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297))))) (and b!853490 b_free!25859 (= (toChars!2631 (transformation!1727 (rule!3150 (h!14609 (t!95978 l!5107))))) (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297))))) (and b!853852 b_free!25875 (= (toChars!2631 (transformation!1727 (h!14610 (t!95979 (t!95979 rules!2621))))) (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297))))) (and b!853146 b_free!25835 (= (toChars!2631 (transformation!1727 (h!14610 rules!2621))) (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297))))) (and b!853810 b_free!25871 (= (toChars!2631 (transformation!1727 (rule!3150 (h!14609 (t!95978 (t!95978 l!5107)))))) (toChars!2631 (transformation!1727 (rule!3150 separatorToken!297))))) b_lambda!28595)))

(push 1)

(assert (not b!853759))

(assert (not b!853774))

(assert (not d!266676))

(assert (not b!853860))

(assert (not b_next!25917))

(assert (not b!853632))

(assert (not b_next!25893))

(assert (not b!853892))

(assert (not d!266788))

(assert (not b!853858))

(assert (not d!266768))

(assert (not b!853850))

(assert (not d!266764))

(assert (not d!266712))

(assert (not b!853801))

(assert (not b!853785))

(assert (not b_next!25903))

(assert (not b!853812))

(assert (not b!853828))

(assert (not b!853673))

(assert (not b!853725))

(assert (not b!853886))

(assert (not d!266686))

(assert (not d!266776))

(assert (not d!266760))

(assert b_and!75193)

(assert (not b!853900))

(assert (not b!853695))

(assert (not d!266696))

(assert (not b!853760))

(assert (not b!853731))

(assert (not b!853739))

(assert (not d!266630))

(assert (not b!853904))

(assert (not b!853763))

(assert (not d!266772))

(assert (not d!266648))

(assert (not b_next!25935))

(assert (not b!853744))

(assert (not b!853804))

(assert (not b!853701))

(assert (not b!853884))

(assert (not b!853894))

(assert (not b!853826))

(assert (not d!266720))

(assert (not b!853685))

(assert (not b!853756))

(assert (not b!853658))

(assert (not d!266728))

(assert (not b!853851))

(assert (not tb!60125))

(assert (not d!266736))

(assert (not b!853747))

(assert (not b!853728))

(assert (not b_lambda!28549))

(assert (not d!266628))

(assert (not b!853777))

(assert (not b_lambda!28587))

(assert (not b!853890))

(assert (not b!853839))

(assert (not d!266716))

(assert (not d!266632))

(assert (not d!266742))

(assert (not b!853845))

(assert (not d!266806))

(assert b_and!75061)

(assert (not d!266798))

(assert (not b!853873))

(assert (not d!266786))

(assert (not b!853902))

(assert b_and!75195)

(assert (not b!853771))

(assert (not b!853870))

(assert (not d!266808))

(assert (not b!853418))

(assert (not d!266766))

(assert (not b_next!25939))

(assert (not b!853844))

(assert (not b!853674))

(assert (not d!266634))

(assert (not b_lambda!28593))

(assert (not d!266754))

(assert (not d!266738))

(assert (not b!853607))

(assert (not b!853835))

(assert (not b!853730))

(assert (not d!266800))

(assert (not d!266708))

(assert (not b!853582))

(assert (not b!853834))

(assert (not b!853583))

(assert (not tb!60165))

(assert (not b!853712))

(assert (not b!853770))

(assert (not b!853778))

(assert (not b!853807))

(assert (not b!853775))

(assert (not d!266710))

(assert (not b!853592))

(assert (not b!853645))

(assert b_and!75197)

(assert (not b!853896))

(assert (not b!853787))

(assert (not b!853675))

(assert (not d!266782))

(assert (not d!266810))

(assert (not b!853585))

(assert b_and!75099)

(assert (not b!853891))

(assert (not d!266646))

(assert (not d!266780))

(assert (not b!853762))

(assert (not d!266804))

(assert (not b!853755))

(assert (not d!266618))

(assert (not d!266692))

(assert (not b!853390))

(assert (not b!853816))

(assert (not d!266770))

(assert (not b!853800))

(assert (not b!853797))

(assert (not b!853859))

(assert b_and!75095)

(assert (not tb!60135))

(assert (not tb!60175))

(assert (not b!853723))

(assert (not b!853749))

(assert (not b!853642))

(assert (not b!853796))

(assert (not b!853718))

(assert (not b!853817))

(assert (not b!853895))

(assert (not b_next!25901))

(assert (not b_lambda!28567))

(assert (not b!853838))

(assert (not d!266714))

(assert (not b_next!25923))

(assert (not d!266652))

(assert (not b!853875))

(assert (not b!853793))

(assert (not b!853814))

(assert (not b_next!25919))

(assert (not b!853824))

(assert (not b!853722))

(assert (not d!266744))

(assert (not b!853782))

(assert (not d!266622))

(assert (not b_next!25895))

(assert (not b!853652))

(assert (not b!853874))

(assert (not d!266756))

(assert (not b_next!25899))

(assert (not b!853619))

(assert (not b!853640))

(assert (not d!266726))

(assert (not tb!60145))

(assert (not b_lambda!28591))

(assert (not b!853734))

(assert (not b!853866))

(assert (not b!853808))

(assert (not b_lambda!28589))

(assert (not b!853698))

(assert (not b!853738))

(assert (not b!853752))

(assert (not b!853843))

(assert (not b!853869))

(assert (not b_lambda!28553))

(assert b_and!75189)

(assert b_and!75199)

(assert (not d!266802))

(assert (not b_next!25897))

(assert (not b!853721))

(assert (not b!853805))

(assert (not b!853767))

(assert b_and!75187)

(assert (not b!853753))

(assert (not b!853887))

(assert (not b!853700))

(assert (not d!266662))

(assert (not b!853766))

(assert (not b!853670))

(assert (not b!853781))

(assert (not b!853899))

(assert (not b!853840))

(assert (not bs!231599))

(assert (not b!853713))

(assert (not b!853898))

(assert (not d!266722))

(assert (not b!853651))

(assert (not bs!231600))

(assert (not d!266626))

(assert (not d!266778))

(assert b_and!75191)

(assert (not b!853647))

(assert (not b!853639))

(assert (not b!853625))

(assert (not b!853604))

(assert (not b!853813))

(assert b_and!75057)

(assert (not b!853821))

(assert tp_is_empty!3979)

(assert (not b!853818))

(assert (not d!266706))

(assert (not b_lambda!28585))

(assert (not b!853836))

(assert (not b!853612))

(assert (not d!266700))

(assert (not b!853829))

(assert b_and!75053)

(assert (not d!266752))

(assert (not b!853854))

(assert (not b!853784))

(assert (not b!853885))

(assert b_and!75203)

(assert (not b!853765))

(assert (not d!266762))

(assert (not d!266718))

(assert (not b!853610))

(assert (not b!853832))

(assert (not b!853825))

(assert (not b_next!25933))

(assert (not b!853867))

(assert (not d!266624))

(assert (not b!853653))

(assert (not b!853847))

(assert (not b_next!25921))

(assert (not b!853679))

(assert (not b!853831))

(assert (not b!853665))

(assert (not b!853646))

(assert (not bm!50511))

(assert (not b!853684))

(assert (not b!853849))

(assert (not b!853822))

(assert (not b_lambda!28551))

(assert (not b_lambda!28569))

(assert (not b!853724))

(assert (not d!266638))

(assert (not d!266684))

(assert (not d!266660))

(assert (not b!853772))

(assert (not b!853668))

(assert (not b!853792))

(assert (not b_lambda!28579))

(assert (not b!853654))

(assert (not d!266674))

(assert (not b!853903))

(assert (not b!853716))

(assert (not b!853606))

(assert (not b!853638))

(assert (not tb!60155))

(assert (not b!853848))

(assert (not b_lambda!28577))

(assert (not b!853745))

(assert (not b!853788))

(assert (not b!853830))

(assert (not b!853637))

(assert (not b!853871))

(assert (not b!853809))

(assert (not d!266650))

(assert (not b!853605))

(assert (not b!853855))

(assert (not b!853842))

(assert (not d!266690))

(assert (not d!266654))

(assert (not d!266616))

(assert (not b!853861))

(assert (not b!853789))

(assert (not b_lambda!28595))

(assert b_and!75201)

(assert (not b!853584))

(assert (not d!266784))

(assert (not b!853715))

(assert (not b!853741))

(assert (not b!853865))

(assert (not b!853735))

(assert (not b_next!25937))

(assert (not b!853667))

(assert (not b!853820))

(assert (not b!853856))

(assert (not d!266694))

(assert (not b_lambda!28581))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!25935))

(assert (not b_next!25939))

(assert b_and!75197)

(assert b_and!75099)

(assert b_and!75095)

(assert (not b_next!25901))

(assert (not b_next!25923))

(assert (not b_next!25899))

(assert b_and!75187)

(assert b_and!75191)

(assert b_and!75057)

(assert (not b_next!25933))

(assert (not b_next!25921))

(assert (not b_next!25917))

(assert (not b_next!25893))

(assert b_and!75193)

(assert (not b_next!25903))

(assert b_and!75061)

(assert b_and!75195)

(assert (not b_next!25919))

(assert (not b_next!25895))

(assert b_and!75199)

(assert b_and!75189)

(assert (not b_next!25897))

(assert b_and!75053)

(assert b_and!75203)

(assert (not b_next!25937))

(assert b_and!75201)

(check-sat)

(pop 1)

