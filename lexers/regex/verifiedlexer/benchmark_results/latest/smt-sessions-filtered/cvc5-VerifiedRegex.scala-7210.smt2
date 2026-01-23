; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!384302 () Bool)

(assert start!384302)

(declare-fun b!4071833 () Bool)

(declare-fun b_free!113265 () Bool)

(declare-fun b_next!113969 () Bool)

(assert (=> b!4071833 (= b_free!113265 (not b_next!113969))))

(declare-fun tp!1232127 () Bool)

(declare-fun b_and!312843 () Bool)

(assert (=> b!4071833 (= tp!1232127 b_and!312843)))

(declare-fun b_free!113267 () Bool)

(declare-fun b_next!113971 () Bool)

(assert (=> b!4071833 (= b_free!113267 (not b_next!113971))))

(declare-fun tp!1232122 () Bool)

(declare-fun b_and!312845 () Bool)

(assert (=> b!4071833 (= tp!1232122 b_and!312845)))

(declare-fun b!4071830 () Bool)

(declare-fun b_free!113269 () Bool)

(declare-fun b_next!113973 () Bool)

(assert (=> b!4071830 (= b_free!113269 (not b_next!113973))))

(declare-fun tp!1232121 () Bool)

(declare-fun b_and!312847 () Bool)

(assert (=> b!4071830 (= tp!1232121 b_and!312847)))

(declare-fun b_free!113271 () Bool)

(declare-fun b_next!113975 () Bool)

(assert (=> b!4071830 (= b_free!113271 (not b_next!113975))))

(declare-fun tp!1232128 () Bool)

(declare-fun b_and!312849 () Bool)

(assert (=> b!4071830 (= tp!1232128 b_and!312849)))

(declare-fun res!1662728 () Bool)

(declare-fun e!2527090 () Bool)

(assert (=> start!384302 (=> (not res!1662728) (not e!2527090))))

(declare-datatypes ((LexerInterface!6580 0))(
  ( (LexerInterfaceExt!6577 (__x!26659 Int)) (Lexer!6578) )
))
(declare-fun thiss!26199 () LexerInterface!6580)

(assert (=> start!384302 (= res!1662728 (is-Lexer!6578 thiss!26199))))

(assert (=> start!384302 e!2527090))

(assert (=> start!384302 true))

(declare-fun e!2527087 () Bool)

(assert (=> start!384302 e!2527087))

(declare-fun e!2527091 () Bool)

(assert (=> start!384302 e!2527091))

(declare-fun e!2527093 () Bool)

(assert (=> start!384302 e!2527093))

(declare-fun e!2527086 () Bool)

(assert (=> start!384302 e!2527086))

(declare-fun e!2527083 () Bool)

(assert (=> start!384302 e!2527083))

(declare-fun b!4071823 () Bool)

(declare-fun res!1662724 () Bool)

(assert (=> b!4071823 (=> (not res!1662724) (not e!2527090))))

(declare-datatypes ((C!23978 0))(
  ( (C!23979 (val!14099 Int)) )
))
(declare-datatypes ((List!43626 0))(
  ( (Nil!43502) (Cons!43502 (h!48922 C!23978) (t!337073 List!43626)) )
))
(declare-fun p!2988 () List!43626)

(declare-fun isEmpty!25958 (List!43626) Bool)

(assert (=> b!4071823 (= res!1662724 (not (isEmpty!25958 p!2988)))))

(declare-fun b!4071824 () Bool)

(declare-fun tp_is_empty!20795 () Bool)

(declare-fun tp!1232129 () Bool)

(assert (=> b!4071824 (= e!2527086 (and tp_is_empty!20795 tp!1232129))))

(declare-fun tp!1232124 () Bool)

(declare-datatypes ((List!43627 0))(
  ( (Nil!43503) (Cons!43503 (h!48923 (_ BitVec 16)) (t!337074 List!43627)) )
))
(declare-datatypes ((TokenValue!7221 0))(
  ( (FloatLiteralValue!14442 (text!50992 List!43627)) (TokenValueExt!7220 (__x!26660 Int)) (Broken!36105 (value!219875 List!43627)) (Object!7344) (End!7221) (Def!7221) (Underscore!7221) (Match!7221) (Else!7221) (Error!7221) (Case!7221) (If!7221) (Extends!7221) (Abstract!7221) (Class!7221) (Val!7221) (DelimiterValue!14442 (del!7281 List!43627)) (KeywordValue!7227 (value!219876 List!43627)) (CommentValue!14442 (value!219877 List!43627)) (WhitespaceValue!14442 (value!219878 List!43627)) (IndentationValue!7221 (value!219879 List!43627)) (String!49856) (Int32!7221) (Broken!36106 (value!219880 List!43627)) (Boolean!7222) (Unit!63057) (OperatorValue!7224 (op!7281 List!43627)) (IdentifierValue!14442 (value!219881 List!43627)) (IdentifierValue!14443 (value!219882 List!43627)) (WhitespaceValue!14443 (value!219883 List!43627)) (True!14442) (False!14442) (Broken!36107 (value!219884 List!43627)) (Broken!36108 (value!219885 List!43627)) (True!14443) (RightBrace!7221) (RightBracket!7221) (Colon!7221) (Null!7221) (Comma!7221) (LeftBracket!7221) (False!14443) (LeftBrace!7221) (ImaginaryLiteralValue!7221 (text!50993 List!43627)) (StringLiteralValue!21663 (value!219886 List!43627)) (EOFValue!7221 (value!219887 List!43627)) (IdentValue!7221 (value!219888 List!43627)) (DelimiterValue!14443 (value!219889 List!43627)) (DedentValue!7221 (value!219890 List!43627)) (NewLineValue!7221 (value!219891 List!43627)) (IntegerValue!21663 (value!219892 (_ BitVec 32)) (text!50994 List!43627)) (IntegerValue!21664 (value!219893 Int) (text!50995 List!43627)) (Times!7221) (Or!7221) (Equal!7221) (Minus!7221) (Broken!36109 (value!219894 List!43627)) (And!7221) (Div!7221) (LessEqual!7221) (Mod!7221) (Concat!19117) (Not!7221) (Plus!7221) (SpaceValue!7221 (value!219895 List!43627)) (IntegerValue!21665 (value!219896 Int) (text!50996 List!43627)) (StringLiteralValue!21664 (text!50997 List!43627)) (FloatLiteralValue!14443 (text!50998 List!43627)) (BytesLiteralValue!7221 (value!219897 List!43627)) (CommentValue!14443 (value!219898 List!43627)) (StringLiteralValue!21665 (value!219899 List!43627)) (ErrorTokenValue!7221 (msg!7282 List!43627)) )
))
(declare-datatypes ((Regex!11896 0))(
  ( (ElementMatch!11896 (c!702777 C!23978)) (Concat!19118 (regOne!24304 Regex!11896) (regTwo!24304 Regex!11896)) (EmptyExpr!11896) (Star!11896 (reg!12225 Regex!11896)) (EmptyLang!11896) (Union!11896 (regOne!24305 Regex!11896) (regTwo!24305 Regex!11896)) )
))
(declare-datatypes ((String!49857 0))(
  ( (String!49858 (value!219900 String)) )
))
(declare-datatypes ((IArray!26409 0))(
  ( (IArray!26410 (innerList!13262 List!43626)) )
))
(declare-datatypes ((Conc!13202 0))(
  ( (Node!13202 (left!32712 Conc!13202) (right!33042 Conc!13202) (csize!26634 Int) (cheight!13413 Int)) (Leaf!20413 (xs!16508 IArray!26409) (csize!26635 Int)) (Empty!13202) )
))
(declare-datatypes ((BalanceConc!25998 0))(
  ( (BalanceConc!25999 (c!702778 Conc!13202)) )
))
(declare-datatypes ((TokenValueInjection!13870 0))(
  ( (TokenValueInjection!13871 (toValue!9551 Int) (toChars!9410 Int)) )
))
(declare-datatypes ((Rule!13782 0))(
  ( (Rule!13783 (regex!6991 Regex!11896) (tag!7851 String!49857) (isSeparator!6991 Bool) (transformation!6991 TokenValueInjection!13870)) )
))
(declare-datatypes ((List!43628 0))(
  ( (Nil!43504) (Cons!43504 (h!48924 Rule!13782) (t!337075 List!43628)) )
))
(declare-fun rules!3870 () List!43628)

(declare-fun b!4071825 () Bool)

(declare-fun e!2527088 () Bool)

(declare-fun e!2527089 () Bool)

(declare-fun inv!58155 (String!49857) Bool)

(declare-fun inv!58158 (TokenValueInjection!13870) Bool)

(assert (=> b!4071825 (= e!2527088 (and tp!1232124 (inv!58155 (tag!7851 (h!48924 rules!3870))) (inv!58158 (transformation!6991 (h!48924 rules!3870))) e!2527089))))

(declare-fun b!4071826 () Bool)

(declare-fun tp!1232126 () Bool)

(assert (=> b!4071826 (= e!2527087 (and tp_is_empty!20795 tp!1232126))))

(declare-fun b!4071827 () Bool)

(declare-fun tp!1232130 () Bool)

(assert (=> b!4071827 (= e!2527091 (and e!2527088 tp!1232130))))

(declare-fun b!4071828 () Bool)

(declare-fun rulesValidInductive!2562 (LexerInterface!6580 List!43628) Bool)

(assert (=> b!4071828 (= e!2527090 (not (rulesValidInductive!2562 thiss!26199 rules!3870)))))

(declare-datatypes ((Unit!63058 0))(
  ( (Unit!63059) )
))
(declare-fun lt!1457574 () Unit!63058)

(declare-fun r!4213 () Rule!13782)

(declare-fun lemmaSemiInverse!1958 (TokenValueInjection!13870 BalanceConc!25998) Unit!63058)

(declare-fun seqFromList!5208 (List!43626) BalanceConc!25998)

(assert (=> b!4071828 (= lt!1457574 (lemmaSemiInverse!1958 (transformation!6991 r!4213) (seqFromList!5208 p!2988)))))

(declare-fun b!4071829 () Bool)

(declare-fun res!1662723 () Bool)

(assert (=> b!4071829 (=> (not res!1662723) (not e!2527090))))

(declare-fun contains!8657 (List!43628 Rule!13782) Bool)

(assert (=> b!4071829 (= res!1662723 (contains!8657 rules!3870 r!4213))))

(declare-fun e!2527085 () Bool)

(assert (=> b!4071830 (= e!2527085 (and tp!1232121 tp!1232128))))

(declare-fun b!4071831 () Bool)

(declare-fun res!1662726 () Bool)

(assert (=> b!4071831 (=> (not res!1662726) (not e!2527090))))

(declare-fun isEmpty!25959 (List!43628) Bool)

(assert (=> b!4071831 (= res!1662726 (not (isEmpty!25959 rules!3870)))))

(declare-fun b!4071832 () Bool)

(declare-fun res!1662725 () Bool)

(assert (=> b!4071832 (=> (not res!1662725) (not e!2527090))))

(declare-fun rulesInvariant!5923 (LexerInterface!6580 List!43628) Bool)

(assert (=> b!4071832 (= res!1662725 (rulesInvariant!5923 thiss!26199 rules!3870))))

(assert (=> b!4071833 (= e!2527089 (and tp!1232127 tp!1232122))))

(declare-fun b!4071834 () Bool)

(declare-fun tp!1232125 () Bool)

(assert (=> b!4071834 (= e!2527093 (and tp_is_empty!20795 tp!1232125))))

(declare-fun b!4071835 () Bool)

(declare-fun res!1662727 () Bool)

(assert (=> b!4071835 (=> (not res!1662727) (not e!2527090))))

(declare-fun input!3411 () List!43626)

(declare-fun suffix!1518 () List!43626)

(declare-fun ++!11397 (List!43626 List!43626) List!43626)

(assert (=> b!4071835 (= res!1662727 (= input!3411 (++!11397 p!2988 suffix!1518)))))

(declare-fun tp!1232123 () Bool)

(declare-fun b!4071836 () Bool)

(assert (=> b!4071836 (= e!2527083 (and tp!1232123 (inv!58155 (tag!7851 r!4213)) (inv!58158 (transformation!6991 r!4213)) e!2527085))))

(assert (= (and start!384302 res!1662728) b!4071831))

(assert (= (and b!4071831 res!1662726) b!4071832))

(assert (= (and b!4071832 res!1662725) b!4071829))

(assert (= (and b!4071829 res!1662723) b!4071835))

(assert (= (and b!4071835 res!1662727) b!4071823))

(assert (= (and b!4071823 res!1662724) b!4071828))

(assert (= (and start!384302 (is-Cons!43502 suffix!1518)) b!4071826))

(assert (= b!4071825 b!4071833))

(assert (= b!4071827 b!4071825))

(assert (= (and start!384302 (is-Cons!43504 rules!3870)) b!4071827))

(assert (= (and start!384302 (is-Cons!43502 p!2988)) b!4071834))

(assert (= (and start!384302 (is-Cons!43502 input!3411)) b!4071824))

(assert (= b!4071836 b!4071830))

(assert (= start!384302 b!4071836))

(declare-fun m!4681069 () Bool)

(assert (=> b!4071823 m!4681069))

(declare-fun m!4681071 () Bool)

(assert (=> b!4071831 m!4681071))

(declare-fun m!4681073 () Bool)

(assert (=> b!4071836 m!4681073))

(declare-fun m!4681075 () Bool)

(assert (=> b!4071836 m!4681075))

(declare-fun m!4681077 () Bool)

(assert (=> b!4071835 m!4681077))

(declare-fun m!4681079 () Bool)

(assert (=> b!4071825 m!4681079))

(declare-fun m!4681081 () Bool)

(assert (=> b!4071825 m!4681081))

(declare-fun m!4681083 () Bool)

(assert (=> b!4071828 m!4681083))

(declare-fun m!4681085 () Bool)

(assert (=> b!4071828 m!4681085))

(assert (=> b!4071828 m!4681085))

(declare-fun m!4681087 () Bool)

(assert (=> b!4071828 m!4681087))

(declare-fun m!4681089 () Bool)

(assert (=> b!4071832 m!4681089))

(declare-fun m!4681091 () Bool)

(assert (=> b!4071829 m!4681091))

(push 1)

(assert (not b!4071823))

(assert (not b!4071832))

(assert b_and!312849)

(assert (not b!4071826))

(assert (not b!4071829))

(assert (not b_next!113975))

(assert (not b_next!113969))

(assert b_and!312847)

(assert (not b!4071831))

(assert tp_is_empty!20795)

(assert (not b!4071834))

(assert b_and!312845)

(assert (not b!4071824))

(assert (not b!4071828))

(assert (not b_next!113971))

(assert (not b_next!113973))

(assert (not b!4071827))

(assert (not b!4071825))

(assert (not b!4071836))

(assert b_and!312843)

(assert (not b!4071835))

(check-sat)

(pop 1)

(push 1)

(assert b_and!312849)

(assert (not b_next!113973))

(assert (not b_next!113975))

(assert (not b_next!113969))

(assert b_and!312847)

(assert b_and!312845)

(assert (not b_next!113971))

(assert b_and!312843)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1210371 () Bool)

(declare-fun res!1662753 () Bool)

(declare-fun e!2527129 () Bool)

(assert (=> d!1210371 (=> (not res!1662753) (not e!2527129))))

(declare-fun rulesValid!2729 (LexerInterface!6580 List!43628) Bool)

(assert (=> d!1210371 (= res!1662753 (rulesValid!2729 thiss!26199 rules!3870))))

(assert (=> d!1210371 (= (rulesInvariant!5923 thiss!26199 rules!3870) e!2527129)))

(declare-fun b!4071881 () Bool)

(declare-datatypes ((List!43632 0))(
  ( (Nil!43508) (Cons!43508 (h!48928 String!49857) (t!337091 List!43632)) )
))
(declare-fun noDuplicateTag!2730 (LexerInterface!6580 List!43628 List!43632) Bool)

(assert (=> b!4071881 (= e!2527129 (noDuplicateTag!2730 thiss!26199 rules!3870 Nil!43508))))

(assert (= (and d!1210371 res!1662753) b!4071881))

(declare-fun m!4681117 () Bool)

(assert (=> d!1210371 m!4681117))

(declare-fun m!4681119 () Bool)

(assert (=> b!4071881 m!4681119))

(assert (=> b!4071832 d!1210371))

(declare-fun d!1210375 () Bool)

(declare-fun lt!1457580 () Bool)

(declare-fun content!6652 (List!43628) (Set Rule!13782))

(assert (=> d!1210375 (= lt!1457580 (set.member r!4213 (content!6652 rules!3870)))))

(declare-fun e!2527136 () Bool)

(assert (=> d!1210375 (= lt!1457580 e!2527136)))

(declare-fun res!1662761 () Bool)

(assert (=> d!1210375 (=> (not res!1662761) (not e!2527136))))

(assert (=> d!1210375 (= res!1662761 (is-Cons!43504 rules!3870))))

(assert (=> d!1210375 (= (contains!8657 rules!3870 r!4213) lt!1457580)))

(declare-fun b!4071888 () Bool)

(declare-fun e!2527137 () Bool)

(assert (=> b!4071888 (= e!2527136 e!2527137)))

(declare-fun res!1662760 () Bool)

(assert (=> b!4071888 (=> res!1662760 e!2527137)))

(assert (=> b!4071888 (= res!1662760 (= (h!48924 rules!3870) r!4213))))

(declare-fun b!4071889 () Bool)

(assert (=> b!4071889 (= e!2527137 (contains!8657 (t!337075 rules!3870) r!4213))))

(assert (= (and d!1210375 res!1662761) b!4071888))

(assert (= (and b!4071888 (not res!1662760)) b!4071889))

(declare-fun m!4681121 () Bool)

(assert (=> d!1210375 m!4681121))

(declare-fun m!4681123 () Bool)

(assert (=> d!1210375 m!4681123))

(declare-fun m!4681125 () Bool)

(assert (=> b!4071889 m!4681125))

(assert (=> b!4071829 d!1210375))

(declare-fun d!1210379 () Bool)

(assert (=> d!1210379 true))

(declare-fun lt!1457591 () Bool)

(declare-fun lambda!127600 () Int)

(declare-fun forall!8389 (List!43628 Int) Bool)

(assert (=> d!1210379 (= lt!1457591 (forall!8389 rules!3870 lambda!127600))))

(declare-fun e!2527162 () Bool)

(assert (=> d!1210379 (= lt!1457591 e!2527162)))

(declare-fun res!1662787 () Bool)

(assert (=> d!1210379 (=> res!1662787 e!2527162)))

(assert (=> d!1210379 (= res!1662787 (not (is-Cons!43504 rules!3870)))))

(assert (=> d!1210379 (= (rulesValidInductive!2562 thiss!26199 rules!3870) lt!1457591)))

(declare-fun b!4071920 () Bool)

(declare-fun e!2527163 () Bool)

(assert (=> b!4071920 (= e!2527162 e!2527163)))

(declare-fun res!1662786 () Bool)

(assert (=> b!4071920 (=> (not res!1662786) (not e!2527163))))

(declare-fun ruleValid!2919 (LexerInterface!6580 Rule!13782) Bool)

(assert (=> b!4071920 (= res!1662786 (ruleValid!2919 thiss!26199 (h!48924 rules!3870)))))

(declare-fun b!4071921 () Bool)

(assert (=> b!4071921 (= e!2527163 (rulesValidInductive!2562 thiss!26199 (t!337075 rules!3870)))))

(assert (= (and d!1210379 (not res!1662787)) b!4071920))

(assert (= (and b!4071920 res!1662786) b!4071921))

(declare-fun m!4681155 () Bool)

(assert (=> d!1210379 m!4681155))

(declare-fun m!4681157 () Bool)

(assert (=> b!4071920 m!4681157))

(declare-fun m!4681159 () Bool)

(assert (=> b!4071921 m!4681159))

(assert (=> b!4071828 d!1210379))

(declare-fun b!4071928 () Bool)

(declare-fun e!2527166 () Bool)

(assert (=> b!4071928 (= e!2527166 true)))

(declare-fun d!1210391 () Bool)

(assert (=> d!1210391 e!2527166))

(assert (= d!1210391 b!4071928))

(declare-fun order!22719 () Int)

(declare-fun order!22721 () Int)

(declare-fun lambda!127603 () Int)

(declare-fun dynLambda!18471 (Int Int) Int)

(declare-fun dynLambda!18472 (Int Int) Int)

(assert (=> b!4071928 (< (dynLambda!18471 order!22719 (toValue!9551 (transformation!6991 r!4213))) (dynLambda!18472 order!22721 lambda!127603))))

(declare-fun order!22723 () Int)

(declare-fun dynLambda!18473 (Int Int) Int)

(assert (=> b!4071928 (< (dynLambda!18473 order!22723 (toChars!9410 (transformation!6991 r!4213))) (dynLambda!18472 order!22721 lambda!127603))))

(declare-fun list!16215 (BalanceConc!25998) List!43626)

(declare-fun dynLambda!18474 (Int TokenValue!7221) BalanceConc!25998)

(declare-fun dynLambda!18475 (Int BalanceConc!25998) TokenValue!7221)

(assert (=> d!1210391 (= (list!16215 (dynLambda!18474 (toChars!9410 (transformation!6991 r!4213)) (dynLambda!18475 (toValue!9551 (transformation!6991 r!4213)) (seqFromList!5208 p!2988)))) (list!16215 (seqFromList!5208 p!2988)))))

(declare-fun lt!1457594 () Unit!63058)

(declare-fun ForallOf!834 (Int BalanceConc!25998) Unit!63058)

(assert (=> d!1210391 (= lt!1457594 (ForallOf!834 lambda!127603 (seqFromList!5208 p!2988)))))

(assert (=> d!1210391 (= (lemmaSemiInverse!1958 (transformation!6991 r!4213) (seqFromList!5208 p!2988)) lt!1457594)))

(declare-fun b_lambda!118935 () Bool)

(assert (=> (not b_lambda!118935) (not d!1210391)))

(declare-fun t!337080 () Bool)

(declare-fun tb!244673 () Bool)

(assert (=> (and b!4071833 (= (toChars!9410 (transformation!6991 (h!48924 rules!3870))) (toChars!9410 (transformation!6991 r!4213))) t!337080) tb!244673))

(declare-fun e!2527169 () Bool)

(declare-fun b!4071933 () Bool)

(declare-fun tp!1232163 () Bool)

(declare-fun inv!58160 (Conc!13202) Bool)

(assert (=> b!4071933 (= e!2527169 (and (inv!58160 (c!702778 (dynLambda!18474 (toChars!9410 (transformation!6991 r!4213)) (dynLambda!18475 (toValue!9551 (transformation!6991 r!4213)) (seqFromList!5208 p!2988))))) tp!1232163))))

(declare-fun result!296594 () Bool)

(declare-fun inv!58161 (BalanceConc!25998) Bool)

(assert (=> tb!244673 (= result!296594 (and (inv!58161 (dynLambda!18474 (toChars!9410 (transformation!6991 r!4213)) (dynLambda!18475 (toValue!9551 (transformation!6991 r!4213)) (seqFromList!5208 p!2988)))) e!2527169))))

(assert (= tb!244673 b!4071933))

(declare-fun m!4681161 () Bool)

(assert (=> b!4071933 m!4681161))

(declare-fun m!4681163 () Bool)

(assert (=> tb!244673 m!4681163))

(assert (=> d!1210391 t!337080))

(declare-fun b_and!312859 () Bool)

(assert (= b_and!312845 (and (=> t!337080 result!296594) b_and!312859)))

(declare-fun t!337082 () Bool)

(declare-fun tb!244675 () Bool)

(assert (=> (and b!4071830 (= (toChars!9410 (transformation!6991 r!4213)) (toChars!9410 (transformation!6991 r!4213))) t!337082) tb!244675))

(declare-fun result!296598 () Bool)

(assert (= result!296598 result!296594))

(assert (=> d!1210391 t!337082))

(declare-fun b_and!312861 () Bool)

(assert (= b_and!312849 (and (=> t!337082 result!296598) b_and!312861)))

(declare-fun b_lambda!118937 () Bool)

(assert (=> (not b_lambda!118937) (not d!1210391)))

(declare-fun tb!244677 () Bool)

(declare-fun t!337084 () Bool)

(assert (=> (and b!4071833 (= (toValue!9551 (transformation!6991 (h!48924 rules!3870))) (toValue!9551 (transformation!6991 r!4213))) t!337084) tb!244677))

(declare-fun result!296600 () Bool)

(declare-fun inv!21 (TokenValue!7221) Bool)

(assert (=> tb!244677 (= result!296600 (inv!21 (dynLambda!18475 (toValue!9551 (transformation!6991 r!4213)) (seqFromList!5208 p!2988))))))

(declare-fun m!4681165 () Bool)

(assert (=> tb!244677 m!4681165))

(assert (=> d!1210391 t!337084))

(declare-fun b_and!312863 () Bool)

(assert (= b_and!312843 (and (=> t!337084 result!296600) b_and!312863)))

(declare-fun t!337086 () Bool)

(declare-fun tb!244679 () Bool)

(assert (=> (and b!4071830 (= (toValue!9551 (transformation!6991 r!4213)) (toValue!9551 (transformation!6991 r!4213))) t!337086) tb!244679))

(declare-fun result!296604 () Bool)

(assert (= result!296604 result!296600))

(assert (=> d!1210391 t!337086))

(declare-fun b_and!312865 () Bool)

(assert (= b_and!312847 (and (=> t!337086 result!296604) b_and!312865)))

(declare-fun m!4681167 () Bool)

(assert (=> d!1210391 m!4681167))

(declare-fun m!4681169 () Bool)

(assert (=> d!1210391 m!4681169))

(assert (=> d!1210391 m!4681085))

(assert (=> d!1210391 m!4681167))

(assert (=> d!1210391 m!4681085))

(declare-fun m!4681171 () Bool)

(assert (=> d!1210391 m!4681171))

(assert (=> d!1210391 m!4681085))

(declare-fun m!4681173 () Bool)

(assert (=> d!1210391 m!4681173))

(assert (=> d!1210391 m!4681169))

(declare-fun m!4681175 () Bool)

(assert (=> d!1210391 m!4681175))

(assert (=> b!4071828 d!1210391))

(declare-fun d!1210393 () Bool)

(declare-fun fromListB!2381 (List!43626) BalanceConc!25998)

(assert (=> d!1210393 (= (seqFromList!5208 p!2988) (fromListB!2381 p!2988))))

(declare-fun bs!592605 () Bool)

(assert (= bs!592605 d!1210393))

(declare-fun m!4681177 () Bool)

(assert (=> bs!592605 m!4681177))

(assert (=> b!4071828 d!1210393))

(declare-fun d!1210395 () Bool)

(assert (=> d!1210395 (= (isEmpty!25958 p!2988) (is-Nil!43502 p!2988))))

(assert (=> b!4071823 d!1210395))

(declare-fun d!1210397 () Bool)

(assert (=> d!1210397 (= (inv!58155 (tag!7851 (h!48924 rules!3870))) (= (mod (str.len (value!219900 (tag!7851 (h!48924 rules!3870)))) 2) 0))))

(assert (=> b!4071825 d!1210397))

(declare-fun d!1210399 () Bool)

(declare-fun res!1662790 () Bool)

(declare-fun e!2527175 () Bool)

(assert (=> d!1210399 (=> (not res!1662790) (not e!2527175))))

(declare-fun semiInverseModEq!2995 (Int Int) Bool)

(assert (=> d!1210399 (= res!1662790 (semiInverseModEq!2995 (toChars!9410 (transformation!6991 (h!48924 rules!3870))) (toValue!9551 (transformation!6991 (h!48924 rules!3870)))))))

(assert (=> d!1210399 (= (inv!58158 (transformation!6991 (h!48924 rules!3870))) e!2527175)))

(declare-fun b!4071938 () Bool)

(declare-fun equivClasses!2894 (Int Int) Bool)

(assert (=> b!4071938 (= e!2527175 (equivClasses!2894 (toChars!9410 (transformation!6991 (h!48924 rules!3870))) (toValue!9551 (transformation!6991 (h!48924 rules!3870)))))))

(assert (= (and d!1210399 res!1662790) b!4071938))

(declare-fun m!4681179 () Bool)

(assert (=> d!1210399 m!4681179))

(declare-fun m!4681181 () Bool)

(assert (=> b!4071938 m!4681181))

(assert (=> b!4071825 d!1210399))

(declare-fun b!4071948 () Bool)

(declare-fun e!2527181 () List!43626)

(assert (=> b!4071948 (= e!2527181 (Cons!43502 (h!48922 p!2988) (++!11397 (t!337073 p!2988) suffix!1518)))))

(declare-fun b!4071949 () Bool)

(declare-fun res!1662795 () Bool)

(declare-fun e!2527180 () Bool)

(assert (=> b!4071949 (=> (not res!1662795) (not e!2527180))))

(declare-fun lt!1457597 () List!43626)

(declare-fun size!32519 (List!43626) Int)

(assert (=> b!4071949 (= res!1662795 (= (size!32519 lt!1457597) (+ (size!32519 p!2988) (size!32519 suffix!1518))))))

(declare-fun b!4071947 () Bool)

(assert (=> b!4071947 (= e!2527181 suffix!1518)))

(declare-fun d!1210401 () Bool)

(assert (=> d!1210401 e!2527180))

(declare-fun res!1662796 () Bool)

(assert (=> d!1210401 (=> (not res!1662796) (not e!2527180))))

(declare-fun content!6653 (List!43626) (Set C!23978))

(assert (=> d!1210401 (= res!1662796 (= (content!6653 lt!1457597) (set.union (content!6653 p!2988) (content!6653 suffix!1518))))))

(assert (=> d!1210401 (= lt!1457597 e!2527181)))

(declare-fun c!702788 () Bool)

(assert (=> d!1210401 (= c!702788 (is-Nil!43502 p!2988))))

(assert (=> d!1210401 (= (++!11397 p!2988 suffix!1518) lt!1457597)))

(declare-fun b!4071950 () Bool)

(assert (=> b!4071950 (= e!2527180 (or (not (= suffix!1518 Nil!43502)) (= lt!1457597 p!2988)))))

(assert (= (and d!1210401 c!702788) b!4071947))

(assert (= (and d!1210401 (not c!702788)) b!4071948))

(assert (= (and d!1210401 res!1662796) b!4071949))

(assert (= (and b!4071949 res!1662795) b!4071950))

(declare-fun m!4681183 () Bool)

(assert (=> b!4071948 m!4681183))

(declare-fun m!4681185 () Bool)

(assert (=> b!4071949 m!4681185))

(declare-fun m!4681187 () Bool)

(assert (=> b!4071949 m!4681187))

(declare-fun m!4681189 () Bool)

(assert (=> b!4071949 m!4681189))

(declare-fun m!4681191 () Bool)

(assert (=> d!1210401 m!4681191))

(declare-fun m!4681193 () Bool)

(assert (=> d!1210401 m!4681193))

(declare-fun m!4681195 () Bool)

(assert (=> d!1210401 m!4681195))

(assert (=> b!4071835 d!1210401))

(declare-fun d!1210403 () Bool)

(assert (=> d!1210403 (= (inv!58155 (tag!7851 r!4213)) (= (mod (str.len (value!219900 (tag!7851 r!4213))) 2) 0))))

(assert (=> b!4071836 d!1210403))

(declare-fun d!1210405 () Bool)

(declare-fun res!1662797 () Bool)

(declare-fun e!2527182 () Bool)

(assert (=> d!1210405 (=> (not res!1662797) (not e!2527182))))

(assert (=> d!1210405 (= res!1662797 (semiInverseModEq!2995 (toChars!9410 (transformation!6991 r!4213)) (toValue!9551 (transformation!6991 r!4213))))))

(assert (=> d!1210405 (= (inv!58158 (transformation!6991 r!4213)) e!2527182)))

(declare-fun b!4071951 () Bool)

(assert (=> b!4071951 (= e!2527182 (equivClasses!2894 (toChars!9410 (transformation!6991 r!4213)) (toValue!9551 (transformation!6991 r!4213))))))

(assert (= (and d!1210405 res!1662797) b!4071951))

(declare-fun m!4681197 () Bool)

(assert (=> d!1210405 m!4681197))

(declare-fun m!4681199 () Bool)

(assert (=> b!4071951 m!4681199))

(assert (=> b!4071836 d!1210405))

(declare-fun d!1210407 () Bool)

(assert (=> d!1210407 (= (isEmpty!25959 rules!3870) (is-Nil!43504 rules!3870))))

(assert (=> b!4071831 d!1210407))

(declare-fun b!4071962 () Bool)

(declare-fun b_free!113281 () Bool)

(declare-fun b_next!113985 () Bool)

(assert (=> b!4071962 (= b_free!113281 (not b_next!113985))))

(declare-fun t!337088 () Bool)

(declare-fun tb!244681 () Bool)

(assert (=> (and b!4071962 (= (toValue!9551 (transformation!6991 (h!48924 (t!337075 rules!3870)))) (toValue!9551 (transformation!6991 r!4213))) t!337088) tb!244681))

(declare-fun result!296608 () Bool)

(assert (= result!296608 result!296600))

(assert (=> d!1210391 t!337088))

(declare-fun tp!1232174 () Bool)

(declare-fun b_and!312867 () Bool)

(assert (=> b!4071962 (= tp!1232174 (and (=> t!337088 result!296608) b_and!312867))))

(declare-fun b_free!113283 () Bool)

(declare-fun b_next!113987 () Bool)

(assert (=> b!4071962 (= b_free!113283 (not b_next!113987))))

(declare-fun tb!244683 () Bool)

(declare-fun t!337090 () Bool)

(assert (=> (and b!4071962 (= (toChars!9410 (transformation!6991 (h!48924 (t!337075 rules!3870)))) (toChars!9410 (transformation!6991 r!4213))) t!337090) tb!244683))

(declare-fun result!296610 () Bool)

(assert (= result!296610 result!296594))

(assert (=> d!1210391 t!337090))

(declare-fun b_and!312869 () Bool)

(declare-fun tp!1232173 () Bool)

(assert (=> b!4071962 (= tp!1232173 (and (=> t!337090 result!296610) b_and!312869))))

(declare-fun e!2527191 () Bool)

(assert (=> b!4071962 (= e!2527191 (and tp!1232174 tp!1232173))))

(declare-fun e!2527194 () Bool)

(declare-fun tp!1232175 () Bool)

(declare-fun b!4071961 () Bool)

(assert (=> b!4071961 (= e!2527194 (and tp!1232175 (inv!58155 (tag!7851 (h!48924 (t!337075 rules!3870)))) (inv!58158 (transformation!6991 (h!48924 (t!337075 rules!3870)))) e!2527191))))

(declare-fun b!4071960 () Bool)

(declare-fun e!2527193 () Bool)

(declare-fun tp!1232172 () Bool)

(assert (=> b!4071960 (= e!2527193 (and e!2527194 tp!1232172))))

(assert (=> b!4071827 (= tp!1232130 e!2527193)))

(assert (= b!4071961 b!4071962))

(assert (= b!4071960 b!4071961))

(assert (= (and b!4071827 (is-Cons!43504 (t!337075 rules!3870))) b!4071960))

(declare-fun m!4681201 () Bool)

(assert (=> b!4071961 m!4681201))

(declare-fun m!4681203 () Bool)

(assert (=> b!4071961 m!4681203))

(declare-fun b!4071967 () Bool)

(declare-fun e!2527197 () Bool)

(declare-fun tp!1232178 () Bool)

(assert (=> b!4071967 (= e!2527197 (and tp_is_empty!20795 tp!1232178))))

(assert (=> b!4071834 (= tp!1232125 e!2527197)))

(assert (= (and b!4071834 (is-Cons!43502 (t!337073 p!2988))) b!4071967))

(declare-fun b!4071981 () Bool)

(declare-fun e!2527200 () Bool)

(declare-fun tp!1232190 () Bool)

(declare-fun tp!1232189 () Bool)

(assert (=> b!4071981 (= e!2527200 (and tp!1232190 tp!1232189))))

(declare-fun b!4071979 () Bool)

(declare-fun tp!1232191 () Bool)

(declare-fun tp!1232193 () Bool)

(assert (=> b!4071979 (= e!2527200 (and tp!1232191 tp!1232193))))

(declare-fun b!4071980 () Bool)

(declare-fun tp!1232192 () Bool)

(assert (=> b!4071980 (= e!2527200 tp!1232192)))

(assert (=> b!4071825 (= tp!1232124 e!2527200)))

(declare-fun b!4071978 () Bool)

(assert (=> b!4071978 (= e!2527200 tp_is_empty!20795)))

(assert (= (and b!4071825 (is-ElementMatch!11896 (regex!6991 (h!48924 rules!3870)))) b!4071978))

(assert (= (and b!4071825 (is-Concat!19118 (regex!6991 (h!48924 rules!3870)))) b!4071979))

(assert (= (and b!4071825 (is-Star!11896 (regex!6991 (h!48924 rules!3870)))) b!4071980))

(assert (= (and b!4071825 (is-Union!11896 (regex!6991 (h!48924 rules!3870)))) b!4071981))

(declare-fun b!4071982 () Bool)

(declare-fun e!2527201 () Bool)

(declare-fun tp!1232194 () Bool)

(assert (=> b!4071982 (= e!2527201 (and tp_is_empty!20795 tp!1232194))))

(assert (=> b!4071824 (= tp!1232129 e!2527201)))

(assert (= (and b!4071824 (is-Cons!43502 (t!337073 input!3411))) b!4071982))

(declare-fun b!4071983 () Bool)

(declare-fun e!2527202 () Bool)

(declare-fun tp!1232195 () Bool)

(assert (=> b!4071983 (= e!2527202 (and tp_is_empty!20795 tp!1232195))))

(assert (=> b!4071826 (= tp!1232126 e!2527202)))

(assert (= (and b!4071826 (is-Cons!43502 (t!337073 suffix!1518))) b!4071983))

(declare-fun b!4071987 () Bool)

(declare-fun e!2527203 () Bool)

(declare-fun tp!1232197 () Bool)

(declare-fun tp!1232196 () Bool)

(assert (=> b!4071987 (= e!2527203 (and tp!1232197 tp!1232196))))

(declare-fun b!4071985 () Bool)

(declare-fun tp!1232198 () Bool)

(declare-fun tp!1232200 () Bool)

(assert (=> b!4071985 (= e!2527203 (and tp!1232198 tp!1232200))))

(declare-fun b!4071986 () Bool)

(declare-fun tp!1232199 () Bool)

(assert (=> b!4071986 (= e!2527203 tp!1232199)))

(assert (=> b!4071836 (= tp!1232123 e!2527203)))

(declare-fun b!4071984 () Bool)

(assert (=> b!4071984 (= e!2527203 tp_is_empty!20795)))

(assert (= (and b!4071836 (is-ElementMatch!11896 (regex!6991 r!4213))) b!4071984))

(assert (= (and b!4071836 (is-Concat!19118 (regex!6991 r!4213))) b!4071985))

(assert (= (and b!4071836 (is-Star!11896 (regex!6991 r!4213))) b!4071986))

(assert (= (and b!4071836 (is-Union!11896 (regex!6991 r!4213))) b!4071987))

(declare-fun b_lambda!118939 () Bool)

(assert (= b_lambda!118935 (or (and b!4071833 b_free!113267 (= (toChars!9410 (transformation!6991 (h!48924 rules!3870))) (toChars!9410 (transformation!6991 r!4213)))) (and b!4071830 b_free!113271) (and b!4071962 b_free!113283 (= (toChars!9410 (transformation!6991 (h!48924 (t!337075 rules!3870)))) (toChars!9410 (transformation!6991 r!4213)))) b_lambda!118939)))

(declare-fun b_lambda!118941 () Bool)

(assert (= b_lambda!118937 (or (and b!4071833 b_free!113265 (= (toValue!9551 (transformation!6991 (h!48924 rules!3870))) (toValue!9551 (transformation!6991 r!4213)))) (and b!4071830 b_free!113269) (and b!4071962 b_free!113281 (= (toValue!9551 (transformation!6991 (h!48924 (t!337075 rules!3870)))) (toValue!9551 (transformation!6991 r!4213)))) b_lambda!118941)))

(push 1)

(assert b_and!312861)

(assert (not b!4071985))

(assert (not b!4071986))

(assert (not b!4071983))

(assert (not d!1210375))

(assert (not b!4071967))

(assert (not b!4071960))

(assert (not b!4071920))

(assert (not b!4071961))

(assert (not d!1210399))

(assert (not b!4071889))

(assert (not b_next!113973))

(assert (not b!4071951))

(assert (not b_next!113975))

(assert (not b!4071980))

(assert b_and!312859)

(assert b_and!312865)

(assert (not b_next!113969))

(assert b_and!312867)

(assert b_and!312863)

(assert (not b_next!113987))

(assert (not b!4071948))

(assert (not tb!244673))

(assert (not b!4071987))

(assert (not b!4071982))

(assert (not b!4071979))

(assert (not d!1210393))

(assert tp_is_empty!20795)

(assert (not d!1210371))

(assert (not d!1210391))

(assert (not b!4071933))

(assert (not b!4071881))

(assert (not tb!244677))

(assert (not b!4071938))

(assert (not d!1210379))

(assert (not d!1210405))

(assert (not b_lambda!118939))

(assert (not b_lambda!118941))

(assert b_and!312869)

(assert (not b!4071921))

(assert (not b!4071981))

(assert (not d!1210401))

(assert (not b!4071949))

(assert (not b_next!113985))

(assert (not b_next!113971))

(check-sat)

(pop 1)

(push 1)

(assert b_and!312861)

(assert (not b_next!113973))

(assert (not b_next!113975))

(assert (not b_next!113987))

(assert b_and!312869)

(assert b_and!312859)

(assert b_and!312865)

(assert (not b_next!113969))

(assert b_and!312867)

(assert b_and!312863)

(assert (not b_next!113985))

(assert (not b_next!113971))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1210419 () Bool)

(declare-fun res!1662805 () Bool)

(declare-fun e!2527241 () Bool)

(assert (=> d!1210419 (=> res!1662805 e!2527241)))

(assert (=> d!1210419 (= res!1662805 (is-Nil!43504 rules!3870))))

(assert (=> d!1210419 (= (noDuplicateTag!2730 thiss!26199 rules!3870 Nil!43508) e!2527241)))

(declare-fun b!4072045 () Bool)

(declare-fun e!2527242 () Bool)

(assert (=> b!4072045 (= e!2527241 e!2527242)))

(declare-fun res!1662806 () Bool)

(assert (=> b!4072045 (=> (not res!1662806) (not e!2527242))))

(declare-fun contains!8659 (List!43632 String!49857) Bool)

(assert (=> b!4072045 (= res!1662806 (not (contains!8659 Nil!43508 (tag!7851 (h!48924 rules!3870)))))))

(declare-fun b!4072046 () Bool)

(assert (=> b!4072046 (= e!2527242 (noDuplicateTag!2730 thiss!26199 (t!337075 rules!3870) (Cons!43508 (tag!7851 (h!48924 rules!3870)) Nil!43508)))))

(assert (= (and d!1210419 (not res!1662805)) b!4072045))

(assert (= (and b!4072045 res!1662806) b!4072046))

(declare-fun m!4681237 () Bool)

(assert (=> b!4072045 m!4681237))

(declare-fun m!4681239 () Bool)

(assert (=> b!4072046 m!4681239))

(assert (=> b!4071881 d!1210419))

(declare-fun b!4072048 () Bool)

(declare-fun e!2527244 () List!43626)

(assert (=> b!4072048 (= e!2527244 (Cons!43502 (h!48922 (t!337073 p!2988)) (++!11397 (t!337073 (t!337073 p!2988)) suffix!1518)))))

(declare-fun b!4072049 () Bool)

(declare-fun res!1662807 () Bool)

(declare-fun e!2527243 () Bool)

(assert (=> b!4072049 (=> (not res!1662807) (not e!2527243))))

(declare-fun lt!1457602 () List!43626)

(assert (=> b!4072049 (= res!1662807 (= (size!32519 lt!1457602) (+ (size!32519 (t!337073 p!2988)) (size!32519 suffix!1518))))))

(declare-fun b!4072047 () Bool)

(assert (=> b!4072047 (= e!2527244 suffix!1518)))

(declare-fun d!1210421 () Bool)

(assert (=> d!1210421 e!2527243))

(declare-fun res!1662808 () Bool)

(assert (=> d!1210421 (=> (not res!1662808) (not e!2527243))))

(assert (=> d!1210421 (= res!1662808 (= (content!6653 lt!1457602) (set.union (content!6653 (t!337073 p!2988)) (content!6653 suffix!1518))))))

(assert (=> d!1210421 (= lt!1457602 e!2527244)))

(declare-fun c!702790 () Bool)

(assert (=> d!1210421 (= c!702790 (is-Nil!43502 (t!337073 p!2988)))))

(assert (=> d!1210421 (= (++!11397 (t!337073 p!2988) suffix!1518) lt!1457602)))

(declare-fun b!4072050 () Bool)

(assert (=> b!4072050 (= e!2527243 (or (not (= suffix!1518 Nil!43502)) (= lt!1457602 (t!337073 p!2988))))))

(assert (= (and d!1210421 c!702790) b!4072047))

(assert (= (and d!1210421 (not c!702790)) b!4072048))

(assert (= (and d!1210421 res!1662808) b!4072049))

(assert (= (and b!4072049 res!1662807) b!4072050))

(declare-fun m!4681241 () Bool)

(assert (=> b!4072048 m!4681241))

(declare-fun m!4681243 () Bool)

(assert (=> b!4072049 m!4681243))

(declare-fun m!4681245 () Bool)

(assert (=> b!4072049 m!4681245))

(assert (=> b!4072049 m!4681189))

(declare-fun m!4681247 () Bool)

(assert (=> d!1210421 m!4681247))

(declare-fun m!4681249 () Bool)

(assert (=> d!1210421 m!4681249))

(assert (=> d!1210421 m!4681195))

(assert (=> b!4071948 d!1210421))

(declare-fun d!1210423 () Bool)

(declare-fun c!702793 () Bool)

(assert (=> d!1210423 (= c!702793 (is-Nil!43502 lt!1457597))))

(declare-fun e!2527247 () (Set C!23978))

(assert (=> d!1210423 (= (content!6653 lt!1457597) e!2527247)))

(declare-fun b!4072055 () Bool)

(assert (=> b!4072055 (= e!2527247 (as set.empty (Set C!23978)))))

(declare-fun b!4072056 () Bool)

(assert (=> b!4072056 (= e!2527247 (set.union (set.insert (h!48922 lt!1457597) (as set.empty (Set C!23978))) (content!6653 (t!337073 lt!1457597))))))

(assert (= (and d!1210423 c!702793) b!4072055))

(assert (= (and d!1210423 (not c!702793)) b!4072056))

(declare-fun m!4681251 () Bool)

(assert (=> b!4072056 m!4681251))

(declare-fun m!4681253 () Bool)

(assert (=> b!4072056 m!4681253))

(assert (=> d!1210401 d!1210423))

(declare-fun d!1210425 () Bool)

(declare-fun c!702794 () Bool)

(assert (=> d!1210425 (= c!702794 (is-Nil!43502 p!2988))))

(declare-fun e!2527248 () (Set C!23978))

(assert (=> d!1210425 (= (content!6653 p!2988) e!2527248)))

(declare-fun b!4072057 () Bool)

(assert (=> b!4072057 (= e!2527248 (as set.empty (Set C!23978)))))

(declare-fun b!4072058 () Bool)

(assert (=> b!4072058 (= e!2527248 (set.union (set.insert (h!48922 p!2988) (as set.empty (Set C!23978))) (content!6653 (t!337073 p!2988))))))

(assert (= (and d!1210425 c!702794) b!4072057))

(assert (= (and d!1210425 (not c!702794)) b!4072058))

(declare-fun m!4681255 () Bool)

(assert (=> b!4072058 m!4681255))

(assert (=> b!4072058 m!4681249))

(assert (=> d!1210401 d!1210425))

(declare-fun d!1210427 () Bool)

(declare-fun c!702795 () Bool)

(assert (=> d!1210427 (= c!702795 (is-Nil!43502 suffix!1518))))

(declare-fun e!2527249 () (Set C!23978))

(assert (=> d!1210427 (= (content!6653 suffix!1518) e!2527249)))

(declare-fun b!4072059 () Bool)

(assert (=> b!4072059 (= e!2527249 (as set.empty (Set C!23978)))))

(declare-fun b!4072060 () Bool)

(assert (=> b!4072060 (= e!2527249 (set.union (set.insert (h!48922 suffix!1518) (as set.empty (Set C!23978))) (content!6653 (t!337073 suffix!1518))))))

(assert (= (and d!1210427 c!702795) b!4072059))

(assert (= (and d!1210427 (not c!702795)) b!4072060))

(declare-fun m!4681257 () Bool)

(assert (=> b!4072060 m!4681257))

(declare-fun m!4681259 () Bool)

(assert (=> b!4072060 m!4681259))

(assert (=> d!1210401 d!1210427))

(declare-fun d!1210429 () Bool)

(declare-fun lt!1457605 () Int)

(assert (=> d!1210429 (>= lt!1457605 0)))

(declare-fun e!2527252 () Int)

(assert (=> d!1210429 (= lt!1457605 e!2527252)))

(declare-fun c!702798 () Bool)

(assert (=> d!1210429 (= c!702798 (is-Nil!43502 lt!1457597))))

(assert (=> d!1210429 (= (size!32519 lt!1457597) lt!1457605)))

(declare-fun b!4072065 () Bool)

(assert (=> b!4072065 (= e!2527252 0)))

(declare-fun b!4072066 () Bool)

(assert (=> b!4072066 (= e!2527252 (+ 1 (size!32519 (t!337073 lt!1457597))))))

(assert (= (and d!1210429 c!702798) b!4072065))

(assert (= (and d!1210429 (not c!702798)) b!4072066))

(declare-fun m!4681261 () Bool)

(assert (=> b!4072066 m!4681261))

(assert (=> b!4071949 d!1210429))

(declare-fun d!1210431 () Bool)

(declare-fun lt!1457606 () Int)

(assert (=> d!1210431 (>= lt!1457606 0)))

(declare-fun e!2527253 () Int)

(assert (=> d!1210431 (= lt!1457606 e!2527253)))

(declare-fun c!702799 () Bool)

(assert (=> d!1210431 (= c!702799 (is-Nil!43502 p!2988))))

(assert (=> d!1210431 (= (size!32519 p!2988) lt!1457606)))

(declare-fun b!4072067 () Bool)

(assert (=> b!4072067 (= e!2527253 0)))

(declare-fun b!4072068 () Bool)

(assert (=> b!4072068 (= e!2527253 (+ 1 (size!32519 (t!337073 p!2988))))))

(assert (= (and d!1210431 c!702799) b!4072067))

(assert (= (and d!1210431 (not c!702799)) b!4072068))

(assert (=> b!4072068 m!4681245))

(assert (=> b!4071949 d!1210431))

(declare-fun d!1210433 () Bool)

(declare-fun lt!1457607 () Int)

(assert (=> d!1210433 (>= lt!1457607 0)))

(declare-fun e!2527254 () Int)

(assert (=> d!1210433 (= lt!1457607 e!2527254)))

(declare-fun c!702800 () Bool)

(assert (=> d!1210433 (= c!702800 (is-Nil!43502 suffix!1518))))

(assert (=> d!1210433 (= (size!32519 suffix!1518) lt!1457607)))

(declare-fun b!4072069 () Bool)

(assert (=> b!4072069 (= e!2527254 0)))

(declare-fun b!4072070 () Bool)

(assert (=> b!4072070 (= e!2527254 (+ 1 (size!32519 (t!337073 suffix!1518))))))

(assert (= (and d!1210433 c!702800) b!4072069))

(assert (= (and d!1210433 (not c!702800)) b!4072070))

(declare-fun m!4681263 () Bool)

(assert (=> b!4072070 m!4681263))

(assert (=> b!4071949 d!1210433))

(declare-fun d!1210435 () Bool)

(assert (=> d!1210435 true))

(declare-fun order!22731 () Int)

(declare-fun lambda!127612 () Int)

(declare-fun dynLambda!18481 (Int Int) Int)

(assert (=> d!1210435 (< (dynLambda!18471 order!22719 (toValue!9551 (transformation!6991 r!4213))) (dynLambda!18481 order!22731 lambda!127612))))

(declare-fun Forall2!1100 (Int) Bool)

(assert (=> d!1210435 (= (equivClasses!2894 (toChars!9410 (transformation!6991 r!4213)) (toValue!9551 (transformation!6991 r!4213))) (Forall2!1100 lambda!127612))))

(declare-fun bs!592607 () Bool)

(assert (= bs!592607 d!1210435))

(declare-fun m!4681265 () Bool)

(assert (=> bs!592607 m!4681265))

(assert (=> b!4071951 d!1210435))

(declare-fun b!4072085 () Bool)

(declare-fun e!2527263 () Bool)

(declare-fun inv!15 (TokenValue!7221) Bool)

(assert (=> b!4072085 (= e!2527263 (inv!15 (dynLambda!18475 (toValue!9551 (transformation!6991 r!4213)) (seqFromList!5208 p!2988))))))

(declare-fun d!1210437 () Bool)

(declare-fun c!702805 () Bool)

(assert (=> d!1210437 (= c!702805 (is-IntegerValue!21663 (dynLambda!18475 (toValue!9551 (transformation!6991 r!4213)) (seqFromList!5208 p!2988))))))

(declare-fun e!2527265 () Bool)

(assert (=> d!1210437 (= (inv!21 (dynLambda!18475 (toValue!9551 (transformation!6991 r!4213)) (seqFromList!5208 p!2988))) e!2527265)))

(declare-fun b!4072086 () Bool)

(declare-fun inv!16 (TokenValue!7221) Bool)

(assert (=> b!4072086 (= e!2527265 (inv!16 (dynLambda!18475 (toValue!9551 (transformation!6991 r!4213)) (seqFromList!5208 p!2988))))))

(declare-fun b!4072087 () Bool)

(declare-fun res!1662813 () Bool)

(assert (=> b!4072087 (=> res!1662813 e!2527263)))

(assert (=> b!4072087 (= res!1662813 (not (is-IntegerValue!21665 (dynLambda!18475 (toValue!9551 (transformation!6991 r!4213)) (seqFromList!5208 p!2988)))))))

(declare-fun e!2527264 () Bool)

(assert (=> b!4072087 (= e!2527264 e!2527263)))

(declare-fun b!4072088 () Bool)

(declare-fun inv!17 (TokenValue!7221) Bool)

(assert (=> b!4072088 (= e!2527264 (inv!17 (dynLambda!18475 (toValue!9551 (transformation!6991 r!4213)) (seqFromList!5208 p!2988))))))

(declare-fun b!4072089 () Bool)

(assert (=> b!4072089 (= e!2527265 e!2527264)))

(declare-fun c!702806 () Bool)

(assert (=> b!4072089 (= c!702806 (is-IntegerValue!21664 (dynLambda!18475 (toValue!9551 (transformation!6991 r!4213)) (seqFromList!5208 p!2988))))))

(assert (= (and d!1210437 c!702805) b!4072086))

(assert (= (and d!1210437 (not c!702805)) b!4072089))

(assert (= (and b!4072089 c!702806) b!4072088))

(assert (= (and b!4072089 (not c!702806)) b!4072087))

(assert (= (and b!4072087 (not res!1662813)) b!4072085))

(declare-fun m!4681267 () Bool)

(assert (=> b!4072085 m!4681267))

(declare-fun m!4681269 () Bool)

(assert (=> b!4072086 m!4681269))

(declare-fun m!4681271 () Bool)

(assert (=> b!4072088 m!4681271))

(assert (=> tb!244677 d!1210437))

(declare-fun bs!592608 () Bool)

(declare-fun d!1210439 () Bool)

(assert (= bs!592608 (and d!1210439 d!1210391)))

(declare-fun lambda!127615 () Int)

(assert (=> bs!592608 (= (and (= (toChars!9410 (transformation!6991 (h!48924 rules!3870))) (toChars!9410 (transformation!6991 r!4213))) (= (toValue!9551 (transformation!6991 (h!48924 rules!3870))) (toValue!9551 (transformation!6991 r!4213)))) (= lambda!127615 lambda!127603))))

(assert (=> d!1210439 true))

(assert (=> d!1210439 (< (dynLambda!18473 order!22723 (toChars!9410 (transformation!6991 (h!48924 rules!3870)))) (dynLambda!18472 order!22721 lambda!127615))))

(assert (=> d!1210439 true))

(assert (=> d!1210439 (< (dynLambda!18471 order!22719 (toValue!9551 (transformation!6991 (h!48924 rules!3870)))) (dynLambda!18472 order!22721 lambda!127615))))

(declare-fun Forall!1500 (Int) Bool)

(assert (=> d!1210439 (= (semiInverseModEq!2995 (toChars!9410 (transformation!6991 (h!48924 rules!3870))) (toValue!9551 (transformation!6991 (h!48924 rules!3870)))) (Forall!1500 lambda!127615))))

(declare-fun bs!592609 () Bool)

(assert (= bs!592609 d!1210439))

(declare-fun m!4681273 () Bool)

(assert (=> bs!592609 m!4681273))

(assert (=> d!1210399 d!1210439))

(declare-fun d!1210441 () Bool)

(declare-fun list!16217 (Conc!13202) List!43626)

(assert (=> d!1210441 (= (list!16215 (dynLambda!18474 (toChars!9410 (transformation!6991 r!4213)) (dynLambda!18475 (toValue!9551 (transformation!6991 r!4213)) (seqFromList!5208 p!2988)))) (list!16217 (c!702778 (dynLambda!18474 (toChars!9410 (transformation!6991 r!4213)) (dynLambda!18475 (toValue!9551 (transformation!6991 r!4213)) (seqFromList!5208 p!2988))))))))

(declare-fun bs!592610 () Bool)

(assert (= bs!592610 d!1210441))

(declare-fun m!4681275 () Bool)

(assert (=> bs!592610 m!4681275))

(assert (=> d!1210391 d!1210441))

(declare-fun d!1210443 () Bool)

(assert (=> d!1210443 (= (list!16215 (seqFromList!5208 p!2988)) (list!16217 (c!702778 (seqFromList!5208 p!2988))))))

(declare-fun bs!592611 () Bool)

(assert (= bs!592611 d!1210443))

(declare-fun m!4681277 () Bool)

(assert (=> bs!592611 m!4681277))

(assert (=> d!1210391 d!1210443))

(declare-fun d!1210445 () Bool)

(declare-fun dynLambda!18482 (Int BalanceConc!25998) Bool)

(assert (=> d!1210445 (dynLambda!18482 lambda!127603 (seqFromList!5208 p!2988))))

(declare-fun lt!1457610 () Unit!63058)

(declare-fun choose!24855 (Int BalanceConc!25998) Unit!63058)

(assert (=> d!1210445 (= lt!1457610 (choose!24855 lambda!127603 (seqFromList!5208 p!2988)))))

(assert (=> d!1210445 (Forall!1500 lambda!127603)))

(assert (=> d!1210445 (= (ForallOf!834 lambda!127603 (seqFromList!5208 p!2988)) lt!1457610)))

(declare-fun b_lambda!118951 () Bool)

(assert (=> (not b_lambda!118951) (not d!1210445)))

(declare-fun bs!592612 () Bool)

(assert (= bs!592612 d!1210445))

(assert (=> bs!592612 m!4681085))

(declare-fun m!4681279 () Bool)

(assert (=> bs!592612 m!4681279))

(assert (=> bs!592612 m!4681085))

(declare-fun m!4681281 () Bool)

(assert (=> bs!592612 m!4681281))

(declare-fun m!4681283 () Bool)

(assert (=> bs!592612 m!4681283))

(assert (=> d!1210391 d!1210445))

(declare-fun d!1210447 () Bool)

(declare-fun c!702809 () Bool)

(assert (=> d!1210447 (= c!702809 (is-Node!13202 (c!702778 (dynLambda!18474 (toChars!9410 (transformation!6991 r!4213)) (dynLambda!18475 (toValue!9551 (transformation!6991 r!4213)) (seqFromList!5208 p!2988))))))))

(declare-fun e!2527270 () Bool)

(assert (=> d!1210447 (= (inv!58160 (c!702778 (dynLambda!18474 (toChars!9410 (transformation!6991 r!4213)) (dynLambda!18475 (toValue!9551 (transformation!6991 r!4213)) (seqFromList!5208 p!2988))))) e!2527270)))

(declare-fun b!4072100 () Bool)

(declare-fun inv!58164 (Conc!13202) Bool)

(assert (=> b!4072100 (= e!2527270 (inv!58164 (c!702778 (dynLambda!18474 (toChars!9410 (transformation!6991 r!4213)) (dynLambda!18475 (toValue!9551 (transformation!6991 r!4213)) (seqFromList!5208 p!2988))))))))

(declare-fun b!4072101 () Bool)

(declare-fun e!2527271 () Bool)

(assert (=> b!4072101 (= e!2527270 e!2527271)))

(declare-fun res!1662816 () Bool)

(assert (=> b!4072101 (= res!1662816 (not (is-Leaf!20413 (c!702778 (dynLambda!18474 (toChars!9410 (transformation!6991 r!4213)) (dynLambda!18475 (toValue!9551 (transformation!6991 r!4213)) (seqFromList!5208 p!2988)))))))))

(assert (=> b!4072101 (=> res!1662816 e!2527271)))

(declare-fun b!4072102 () Bool)

(declare-fun inv!58165 (Conc!13202) Bool)

(assert (=> b!4072102 (= e!2527271 (inv!58165 (c!702778 (dynLambda!18474 (toChars!9410 (transformation!6991 r!4213)) (dynLambda!18475 (toValue!9551 (transformation!6991 r!4213)) (seqFromList!5208 p!2988))))))))

(assert (= (and d!1210447 c!702809) b!4072100))

(assert (= (and d!1210447 (not c!702809)) b!4072101))

(assert (= (and b!4072101 (not res!1662816)) b!4072102))

(declare-fun m!4681285 () Bool)

(assert (=> b!4072100 m!4681285))

(declare-fun m!4681287 () Bool)

(assert (=> b!4072102 m!4681287))

(assert (=> b!4071933 d!1210447))

(declare-fun bs!592613 () Bool)

(declare-fun d!1210449 () Bool)

(assert (= bs!592613 (and d!1210449 d!1210435)))

(declare-fun lambda!127616 () Int)

(assert (=> bs!592613 (= (= (toValue!9551 (transformation!6991 (h!48924 rules!3870))) (toValue!9551 (transformation!6991 r!4213))) (= lambda!127616 lambda!127612))))

(assert (=> d!1210449 true))

(assert (=> d!1210449 (< (dynLambda!18471 order!22719 (toValue!9551 (transformation!6991 (h!48924 rules!3870)))) (dynLambda!18481 order!22731 lambda!127616))))

(assert (=> d!1210449 (= (equivClasses!2894 (toChars!9410 (transformation!6991 (h!48924 rules!3870))) (toValue!9551 (transformation!6991 (h!48924 rules!3870)))) (Forall2!1100 lambda!127616))))

(declare-fun bs!592614 () Bool)

(assert (= bs!592614 d!1210449))

(declare-fun m!4681289 () Bool)

(assert (=> bs!592614 m!4681289))

(assert (=> b!4071938 d!1210449))

(declare-fun d!1210451 () Bool)

(declare-fun c!702812 () Bool)

(assert (=> d!1210451 (= c!702812 (is-Nil!43504 rules!3870))))

(declare-fun e!2527274 () (Set Rule!13782))

(assert (=> d!1210451 (= (content!6652 rules!3870) e!2527274)))

(declare-fun b!4072107 () Bool)

(assert (=> b!4072107 (= e!2527274 (as set.empty (Set Rule!13782)))))

(declare-fun b!4072108 () Bool)

(assert (=> b!4072108 (= e!2527274 (set.union (set.insert (h!48924 rules!3870) (as set.empty (Set Rule!13782))) (content!6652 (t!337075 rules!3870))))))

(assert (= (and d!1210451 c!702812) b!4072107))

(assert (= (and d!1210451 (not c!702812)) b!4072108))

(declare-fun m!4681291 () Bool)

(assert (=> b!4072108 m!4681291))

(declare-fun m!4681293 () Bool)

(assert (=> b!4072108 m!4681293))

(assert (=> d!1210375 d!1210451))

(declare-fun bs!592615 () Bool)

(declare-fun d!1210453 () Bool)

(assert (= bs!592615 (and d!1210453 d!1210379)))

(declare-fun lambda!127619 () Int)

(assert (=> bs!592615 (= lambda!127619 lambda!127600)))

(assert (=> d!1210453 true))

(declare-fun lt!1457613 () Bool)

(assert (=> d!1210453 (= lt!1457613 (rulesValidInductive!2562 thiss!26199 rules!3870))))

(assert (=> d!1210453 (= lt!1457613 (forall!8389 rules!3870 lambda!127619))))

(assert (=> d!1210453 (= (rulesValid!2729 thiss!26199 rules!3870) lt!1457613)))

(declare-fun bs!592616 () Bool)

(assert (= bs!592616 d!1210453))

(assert (=> bs!592616 m!4681083))

(declare-fun m!4681295 () Bool)

(assert (=> bs!592616 m!4681295))

(assert (=> d!1210371 d!1210453))

(declare-fun d!1210455 () Bool)

(declare-fun res!1662821 () Bool)

(declare-fun e!2527277 () Bool)

(assert (=> d!1210455 (=> (not res!1662821) (not e!2527277))))

(declare-fun validRegex!5387 (Regex!11896) Bool)

(assert (=> d!1210455 (= res!1662821 (validRegex!5387 (regex!6991 (h!48924 rules!3870))))))

(assert (=> d!1210455 (= (ruleValid!2919 thiss!26199 (h!48924 rules!3870)) e!2527277)))

(declare-fun b!4072113 () Bool)

(declare-fun res!1662822 () Bool)

(assert (=> b!4072113 (=> (not res!1662822) (not e!2527277))))

(declare-fun nullable!4187 (Regex!11896) Bool)

(assert (=> b!4072113 (= res!1662822 (not (nullable!4187 (regex!6991 (h!48924 rules!3870)))))))

(declare-fun b!4072114 () Bool)

(assert (=> b!4072114 (= e!2527277 (not (= (tag!7851 (h!48924 rules!3870)) (String!49858 ""))))))

(assert (= (and d!1210455 res!1662821) b!4072113))

(assert (= (and b!4072113 res!1662822) b!4072114))

(declare-fun m!4681297 () Bool)

(assert (=> d!1210455 m!4681297))

(declare-fun m!4681299 () Bool)

(assert (=> b!4072113 m!4681299))

(assert (=> b!4071920 d!1210455))

(declare-fun bs!592617 () Bool)

(declare-fun d!1210457 () Bool)

(assert (= bs!592617 (and d!1210457 d!1210379)))

(declare-fun lambda!127620 () Int)

(assert (=> bs!592617 (= lambda!127620 lambda!127600)))

(declare-fun bs!592618 () Bool)

(assert (= bs!592618 (and d!1210457 d!1210453)))

(assert (=> bs!592618 (= lambda!127620 lambda!127619)))

(assert (=> d!1210457 true))

(declare-fun lt!1457614 () Bool)

(assert (=> d!1210457 (= lt!1457614 (forall!8389 (t!337075 rules!3870) lambda!127620))))

(declare-fun e!2527278 () Bool)

(assert (=> d!1210457 (= lt!1457614 e!2527278)))

(declare-fun res!1662824 () Bool)

(assert (=> d!1210457 (=> res!1662824 e!2527278)))

(assert (=> d!1210457 (= res!1662824 (not (is-Cons!43504 (t!337075 rules!3870))))))

(assert (=> d!1210457 (= (rulesValidInductive!2562 thiss!26199 (t!337075 rules!3870)) lt!1457614)))

(declare-fun b!4072115 () Bool)

(declare-fun e!2527279 () Bool)

(assert (=> b!4072115 (= e!2527278 e!2527279)))

(declare-fun res!1662823 () Bool)

(assert (=> b!4072115 (=> (not res!1662823) (not e!2527279))))

(assert (=> b!4072115 (= res!1662823 (ruleValid!2919 thiss!26199 (h!48924 (t!337075 rules!3870))))))

(declare-fun b!4072116 () Bool)

(assert (=> b!4072116 (= e!2527279 (rulesValidInductive!2562 thiss!26199 (t!337075 (t!337075 rules!3870))))))

(assert (= (and d!1210457 (not res!1662824)) b!4072115))

(assert (= (and b!4072115 res!1662823) b!4072116))

(declare-fun m!4681301 () Bool)

(assert (=> d!1210457 m!4681301))

(declare-fun m!4681303 () Bool)

(assert (=> b!4072115 m!4681303))

(declare-fun m!4681305 () Bool)

(assert (=> b!4072116 m!4681305))

(assert (=> b!4071921 d!1210457))

(declare-fun d!1210459 () Bool)

(assert (=> d!1210459 (= (inv!58155 (tag!7851 (h!48924 (t!337075 rules!3870)))) (= (mod (str.len (value!219900 (tag!7851 (h!48924 (t!337075 rules!3870))))) 2) 0))))

(assert (=> b!4071961 d!1210459))

(declare-fun d!1210461 () Bool)

(declare-fun res!1662825 () Bool)

(declare-fun e!2527280 () Bool)

(assert (=> d!1210461 (=> (not res!1662825) (not e!2527280))))

(assert (=> d!1210461 (= res!1662825 (semiInverseModEq!2995 (toChars!9410 (transformation!6991 (h!48924 (t!337075 rules!3870)))) (toValue!9551 (transformation!6991 (h!48924 (t!337075 rules!3870))))))))

(assert (=> d!1210461 (= (inv!58158 (transformation!6991 (h!48924 (t!337075 rules!3870)))) e!2527280)))

(declare-fun b!4072117 () Bool)

(assert (=> b!4072117 (= e!2527280 (equivClasses!2894 (toChars!9410 (transformation!6991 (h!48924 (t!337075 rules!3870)))) (toValue!9551 (transformation!6991 (h!48924 (t!337075 rules!3870))))))))

(assert (= (and d!1210461 res!1662825) b!4072117))

(declare-fun m!4681307 () Bool)

(assert (=> d!1210461 m!4681307))

(declare-fun m!4681309 () Bool)

(assert (=> b!4072117 m!4681309))

(assert (=> b!4071961 d!1210461))

(declare-fun d!1210463 () Bool)

(declare-fun res!1662830 () Bool)

(declare-fun e!2527285 () Bool)

(assert (=> d!1210463 (=> res!1662830 e!2527285)))

(assert (=> d!1210463 (= res!1662830 (is-Nil!43504 rules!3870))))

(assert (=> d!1210463 (= (forall!8389 rules!3870 lambda!127600) e!2527285)))

(declare-fun b!4072122 () Bool)

(declare-fun e!2527286 () Bool)

(assert (=> b!4072122 (= e!2527285 e!2527286)))

(declare-fun res!1662831 () Bool)

(assert (=> b!4072122 (=> (not res!1662831) (not e!2527286))))

(declare-fun dynLambda!18483 (Int Rule!13782) Bool)

(assert (=> b!4072122 (= res!1662831 (dynLambda!18483 lambda!127600 (h!48924 rules!3870)))))

(declare-fun b!4072123 () Bool)

(assert (=> b!4072123 (= e!2527286 (forall!8389 (t!337075 rules!3870) lambda!127600))))

(assert (= (and d!1210463 (not res!1662830)) b!4072122))

(assert (= (and b!4072122 res!1662831) b!4072123))

(declare-fun b_lambda!118953 () Bool)

(assert (=> (not b_lambda!118953) (not b!4072122)))

(declare-fun m!4681311 () Bool)

(assert (=> b!4072122 m!4681311))

(declare-fun m!4681313 () Bool)

(assert (=> b!4072123 m!4681313))

(assert (=> d!1210379 d!1210463))

(declare-fun d!1210465 () Bool)

(declare-fun e!2527289 () Bool)

(assert (=> d!1210465 e!2527289))

(declare-fun res!1662834 () Bool)

(assert (=> d!1210465 (=> (not res!1662834) (not e!2527289))))

(declare-fun lt!1457617 () BalanceConc!25998)

(assert (=> d!1210465 (= res!1662834 (= (list!16215 lt!1457617) p!2988))))

(declare-fun fromList!870 (List!43626) Conc!13202)

(assert (=> d!1210465 (= lt!1457617 (BalanceConc!25999 (fromList!870 p!2988)))))

(assert (=> d!1210465 (= (fromListB!2381 p!2988) lt!1457617)))

(declare-fun b!4072126 () Bool)

(declare-fun isBalanced!3690 (Conc!13202) Bool)

(assert (=> b!4072126 (= e!2527289 (isBalanced!3690 (fromList!870 p!2988)))))

(assert (= (and d!1210465 res!1662834) b!4072126))

(declare-fun m!4681315 () Bool)

(assert (=> d!1210465 m!4681315))

(declare-fun m!4681317 () Bool)

(assert (=> d!1210465 m!4681317))

(assert (=> b!4072126 m!4681317))

(assert (=> b!4072126 m!4681317))

(declare-fun m!4681319 () Bool)

(assert (=> b!4072126 m!4681319))

(assert (=> d!1210393 d!1210465))

(declare-fun d!1210467 () Bool)

(declare-fun lt!1457618 () Bool)

(assert (=> d!1210467 (= lt!1457618 (set.member r!4213 (content!6652 (t!337075 rules!3870))))))

(declare-fun e!2527290 () Bool)

(assert (=> d!1210467 (= lt!1457618 e!2527290)))

(declare-fun res!1662836 () Bool)

(assert (=> d!1210467 (=> (not res!1662836) (not e!2527290))))

(assert (=> d!1210467 (= res!1662836 (is-Cons!43504 (t!337075 rules!3870)))))

(assert (=> d!1210467 (= (contains!8657 (t!337075 rules!3870) r!4213) lt!1457618)))

(declare-fun b!4072127 () Bool)

(declare-fun e!2527291 () Bool)

(assert (=> b!4072127 (= e!2527290 e!2527291)))

(declare-fun res!1662835 () Bool)

(assert (=> b!4072127 (=> res!1662835 e!2527291)))

(assert (=> b!4072127 (= res!1662835 (= (h!48924 (t!337075 rules!3870)) r!4213))))

(declare-fun b!4072128 () Bool)

(assert (=> b!4072128 (= e!2527291 (contains!8657 (t!337075 (t!337075 rules!3870)) r!4213))))

(assert (= (and d!1210467 res!1662836) b!4072127))

(assert (= (and b!4072127 (not res!1662835)) b!4072128))

(assert (=> d!1210467 m!4681293))

(declare-fun m!4681321 () Bool)

(assert (=> d!1210467 m!4681321))

(declare-fun m!4681323 () Bool)

(assert (=> b!4072128 m!4681323))

(assert (=> b!4071889 d!1210467))

(declare-fun d!1210469 () Bool)

(assert (=> d!1210469 (= (inv!58161 (dynLambda!18474 (toChars!9410 (transformation!6991 r!4213)) (dynLambda!18475 (toValue!9551 (transformation!6991 r!4213)) (seqFromList!5208 p!2988)))) (isBalanced!3690 (c!702778 (dynLambda!18474 (toChars!9410 (transformation!6991 r!4213)) (dynLambda!18475 (toValue!9551 (transformation!6991 r!4213)) (seqFromList!5208 p!2988))))))))

(declare-fun bs!592619 () Bool)

(assert (= bs!592619 d!1210469))

(declare-fun m!4681325 () Bool)

(assert (=> bs!592619 m!4681325))

(assert (=> tb!244673 d!1210469))

(declare-fun bs!592620 () Bool)

(declare-fun d!1210471 () Bool)

(assert (= bs!592620 (and d!1210471 d!1210391)))

(declare-fun lambda!127621 () Int)

(assert (=> bs!592620 (= lambda!127621 lambda!127603)))

(declare-fun bs!592621 () Bool)

(assert (= bs!592621 (and d!1210471 d!1210439)))

(assert (=> bs!592621 (= (and (= (toChars!9410 (transformation!6991 r!4213)) (toChars!9410 (transformation!6991 (h!48924 rules!3870)))) (= (toValue!9551 (transformation!6991 r!4213)) (toValue!9551 (transformation!6991 (h!48924 rules!3870))))) (= lambda!127621 lambda!127615))))

(assert (=> d!1210471 true))

(assert (=> d!1210471 (< (dynLambda!18473 order!22723 (toChars!9410 (transformation!6991 r!4213))) (dynLambda!18472 order!22721 lambda!127621))))

(assert (=> d!1210471 true))

(assert (=> d!1210471 (< (dynLambda!18471 order!22719 (toValue!9551 (transformation!6991 r!4213))) (dynLambda!18472 order!22721 lambda!127621))))

(assert (=> d!1210471 (= (semiInverseModEq!2995 (toChars!9410 (transformation!6991 r!4213)) (toValue!9551 (transformation!6991 r!4213))) (Forall!1500 lambda!127621))))

(declare-fun bs!592622 () Bool)

(assert (= bs!592622 d!1210471))

(declare-fun m!4681327 () Bool)

(assert (=> bs!592622 m!4681327))

(assert (=> d!1210405 d!1210471))

(declare-fun b!4072132 () Bool)

(declare-fun e!2527292 () Bool)

(declare-fun tp!1232242 () Bool)

(declare-fun tp!1232241 () Bool)

(assert (=> b!4072132 (= e!2527292 (and tp!1232242 tp!1232241))))

(declare-fun b!4072130 () Bool)

(declare-fun tp!1232243 () Bool)

(declare-fun tp!1232245 () Bool)

(assert (=> b!4072130 (= e!2527292 (and tp!1232243 tp!1232245))))

(declare-fun b!4072131 () Bool)

(declare-fun tp!1232244 () Bool)

(assert (=> b!4072131 (= e!2527292 tp!1232244)))

(assert (=> b!4071980 (= tp!1232192 e!2527292)))

(declare-fun b!4072129 () Bool)

(assert (=> b!4072129 (= e!2527292 tp_is_empty!20795)))

(assert (= (and b!4071980 (is-ElementMatch!11896 (reg!12225 (regex!6991 (h!48924 rules!3870))))) b!4072129))

(assert (= (and b!4071980 (is-Concat!19118 (reg!12225 (regex!6991 (h!48924 rules!3870))))) b!4072130))

(assert (= (and b!4071980 (is-Star!11896 (reg!12225 (regex!6991 (h!48924 rules!3870))))) b!4072131))

(assert (= (and b!4071980 (is-Union!11896 (reg!12225 (regex!6991 (h!48924 rules!3870))))) b!4072132))

(declare-fun b!4072136 () Bool)

(declare-fun e!2527293 () Bool)

(declare-fun tp!1232247 () Bool)

(declare-fun tp!1232246 () Bool)

(assert (=> b!4072136 (= e!2527293 (and tp!1232247 tp!1232246))))

(declare-fun b!4072134 () Bool)

(declare-fun tp!1232248 () Bool)

(declare-fun tp!1232250 () Bool)

(assert (=> b!4072134 (= e!2527293 (and tp!1232248 tp!1232250))))

(declare-fun b!4072135 () Bool)

(declare-fun tp!1232249 () Bool)

(assert (=> b!4072135 (= e!2527293 tp!1232249)))

(assert (=> b!4071981 (= tp!1232190 e!2527293)))

(declare-fun b!4072133 () Bool)

(assert (=> b!4072133 (= e!2527293 tp_is_empty!20795)))

(assert (= (and b!4071981 (is-ElementMatch!11896 (regOne!24305 (regex!6991 (h!48924 rules!3870))))) b!4072133))

(assert (= (and b!4071981 (is-Concat!19118 (regOne!24305 (regex!6991 (h!48924 rules!3870))))) b!4072134))

(assert (= (and b!4071981 (is-Star!11896 (regOne!24305 (regex!6991 (h!48924 rules!3870))))) b!4072135))

(assert (= (and b!4071981 (is-Union!11896 (regOne!24305 (regex!6991 (h!48924 rules!3870))))) b!4072136))

(declare-fun b!4072140 () Bool)

(declare-fun e!2527294 () Bool)

(declare-fun tp!1232252 () Bool)

(declare-fun tp!1232251 () Bool)

(assert (=> b!4072140 (= e!2527294 (and tp!1232252 tp!1232251))))

(declare-fun b!4072138 () Bool)

(declare-fun tp!1232253 () Bool)

(declare-fun tp!1232255 () Bool)

(assert (=> b!4072138 (= e!2527294 (and tp!1232253 tp!1232255))))

(declare-fun b!4072139 () Bool)

(declare-fun tp!1232254 () Bool)

(assert (=> b!4072139 (= e!2527294 tp!1232254)))

(assert (=> b!4071981 (= tp!1232189 e!2527294)))

(declare-fun b!4072137 () Bool)

(assert (=> b!4072137 (= e!2527294 tp_is_empty!20795)))

(assert (= (and b!4071981 (is-ElementMatch!11896 (regTwo!24305 (regex!6991 (h!48924 rules!3870))))) b!4072137))

(assert (= (and b!4071981 (is-Concat!19118 (regTwo!24305 (regex!6991 (h!48924 rules!3870))))) b!4072138))

(assert (= (and b!4071981 (is-Star!11896 (regTwo!24305 (regex!6991 (h!48924 rules!3870))))) b!4072139))

(assert (= (and b!4071981 (is-Union!11896 (regTwo!24305 (regex!6991 (h!48924 rules!3870))))) b!4072140))

(declare-fun b!4072141 () Bool)

(declare-fun e!2527295 () Bool)

(declare-fun tp!1232256 () Bool)

(assert (=> b!4072141 (= e!2527295 (and tp_is_empty!20795 tp!1232256))))

(assert (=> b!4071982 (= tp!1232194 e!2527295)))

(assert (= (and b!4071982 (is-Cons!43502 (t!337073 (t!337073 input!3411)))) b!4072141))

(declare-fun b!4072145 () Bool)

(declare-fun e!2527296 () Bool)

(declare-fun tp!1232258 () Bool)

(declare-fun tp!1232257 () Bool)

(assert (=> b!4072145 (= e!2527296 (and tp!1232258 tp!1232257))))

(declare-fun b!4072143 () Bool)

(declare-fun tp!1232259 () Bool)

(declare-fun tp!1232261 () Bool)

(assert (=> b!4072143 (= e!2527296 (and tp!1232259 tp!1232261))))

(declare-fun b!4072144 () Bool)

(declare-fun tp!1232260 () Bool)

(assert (=> b!4072144 (= e!2527296 tp!1232260)))

(assert (=> b!4071985 (= tp!1232198 e!2527296)))

(declare-fun b!4072142 () Bool)

(assert (=> b!4072142 (= e!2527296 tp_is_empty!20795)))

(assert (= (and b!4071985 (is-ElementMatch!11896 (regOne!24304 (regex!6991 r!4213)))) b!4072142))

(assert (= (and b!4071985 (is-Concat!19118 (regOne!24304 (regex!6991 r!4213)))) b!4072143))

(assert (= (and b!4071985 (is-Star!11896 (regOne!24304 (regex!6991 r!4213)))) b!4072144))

(assert (= (and b!4071985 (is-Union!11896 (regOne!24304 (regex!6991 r!4213)))) b!4072145))

(declare-fun b!4072149 () Bool)

(declare-fun e!2527297 () Bool)

(declare-fun tp!1232263 () Bool)

(declare-fun tp!1232262 () Bool)

(assert (=> b!4072149 (= e!2527297 (and tp!1232263 tp!1232262))))

(declare-fun b!4072147 () Bool)

(declare-fun tp!1232264 () Bool)

(declare-fun tp!1232266 () Bool)

(assert (=> b!4072147 (= e!2527297 (and tp!1232264 tp!1232266))))

(declare-fun b!4072148 () Bool)

(declare-fun tp!1232265 () Bool)

(assert (=> b!4072148 (= e!2527297 tp!1232265)))

(assert (=> b!4071985 (= tp!1232200 e!2527297)))

(declare-fun b!4072146 () Bool)

(assert (=> b!4072146 (= e!2527297 tp_is_empty!20795)))

(assert (= (and b!4071985 (is-ElementMatch!11896 (regTwo!24304 (regex!6991 r!4213)))) b!4072146))

(assert (= (and b!4071985 (is-Concat!19118 (regTwo!24304 (regex!6991 r!4213)))) b!4072147))

(assert (= (and b!4071985 (is-Star!11896 (regTwo!24304 (regex!6991 r!4213)))) b!4072148))

(assert (= (and b!4071985 (is-Union!11896 (regTwo!24304 (regex!6991 r!4213)))) b!4072149))

(declare-fun tp!1232273 () Bool)

(declare-fun e!2527303 () Bool)

(declare-fun b!4072158 () Bool)

(declare-fun tp!1232275 () Bool)

(assert (=> b!4072158 (= e!2527303 (and (inv!58160 (left!32712 (c!702778 (dynLambda!18474 (toChars!9410 (transformation!6991 r!4213)) (dynLambda!18475 (toValue!9551 (transformation!6991 r!4213)) (seqFromList!5208 p!2988)))))) tp!1232273 (inv!58160 (right!33042 (c!702778 (dynLambda!18474 (toChars!9410 (transformation!6991 r!4213)) (dynLambda!18475 (toValue!9551 (transformation!6991 r!4213)) (seqFromList!5208 p!2988)))))) tp!1232275))))

(declare-fun b!4072160 () Bool)

(declare-fun e!2527302 () Bool)

(declare-fun tp!1232274 () Bool)

(assert (=> b!4072160 (= e!2527302 tp!1232274)))

(declare-fun b!4072159 () Bool)

(declare-fun inv!58166 (IArray!26409) Bool)

(assert (=> b!4072159 (= e!2527303 (and (inv!58166 (xs!16508 (c!702778 (dynLambda!18474 (toChars!9410 (transformation!6991 r!4213)) (dynLambda!18475 (toValue!9551 (transformation!6991 r!4213)) (seqFromList!5208 p!2988)))))) e!2527302))))

(assert (=> b!4071933 (= tp!1232163 (and (inv!58160 (c!702778 (dynLambda!18474 (toChars!9410 (transformation!6991 r!4213)) (dynLambda!18475 (toValue!9551 (transformation!6991 r!4213)) (seqFromList!5208 p!2988))))) e!2527303))))

(assert (= (and b!4071933 (is-Node!13202 (c!702778 (dynLambda!18474 (toChars!9410 (transformation!6991 r!4213)) (dynLambda!18475 (toValue!9551 (transformation!6991 r!4213)) (seqFromList!5208 p!2988)))))) b!4072158))

(assert (= b!4072159 b!4072160))

(assert (= (and b!4071933 (is-Leaf!20413 (c!702778 (dynLambda!18474 (toChars!9410 (transformation!6991 r!4213)) (dynLambda!18475 (toValue!9551 (transformation!6991 r!4213)) (seqFromList!5208 p!2988)))))) b!4072159))

(declare-fun m!4681329 () Bool)

(assert (=> b!4072158 m!4681329))

(declare-fun m!4681331 () Bool)

(assert (=> b!4072158 m!4681331))

(declare-fun m!4681333 () Bool)

(assert (=> b!4072159 m!4681333))

(assert (=> b!4071933 m!4681161))

(declare-fun b!4072163 () Bool)

(declare-fun b_free!113289 () Bool)

(declare-fun b_next!113993 () Bool)

(assert (=> b!4072163 (= b_free!113289 (not b_next!113993))))

(declare-fun t!337106 () Bool)

(declare-fun tb!244697 () Bool)

(assert (=> (and b!4072163 (= (toValue!9551 (transformation!6991 (h!48924 (t!337075 (t!337075 rules!3870))))) (toValue!9551 (transformation!6991 r!4213))) t!337106) tb!244697))

(declare-fun result!296640 () Bool)

(assert (= result!296640 result!296600))

(assert (=> d!1210391 t!337106))

(declare-fun b_and!312883 () Bool)

(declare-fun tp!1232278 () Bool)

(assert (=> b!4072163 (= tp!1232278 (and (=> t!337106 result!296640) b_and!312883))))

(declare-fun b_free!113291 () Bool)

(declare-fun b_next!113995 () Bool)

(assert (=> b!4072163 (= b_free!113291 (not b_next!113995))))

(declare-fun t!337108 () Bool)

(declare-fun tb!244699 () Bool)

(assert (=> (and b!4072163 (= (toChars!9410 (transformation!6991 (h!48924 (t!337075 (t!337075 rules!3870))))) (toChars!9410 (transformation!6991 r!4213))) t!337108) tb!244699))

(declare-fun result!296642 () Bool)

(assert (= result!296642 result!296594))

(assert (=> d!1210391 t!337108))

(declare-fun tp!1232277 () Bool)

(declare-fun b_and!312885 () Bool)

(assert (=> b!4072163 (= tp!1232277 (and (=> t!337108 result!296642) b_and!312885))))

(declare-fun e!2527304 () Bool)

(assert (=> b!4072163 (= e!2527304 (and tp!1232278 tp!1232277))))

(declare-fun b!4072162 () Bool)

(declare-fun tp!1232279 () Bool)

(declare-fun e!2527307 () Bool)

(assert (=> b!4072162 (= e!2527307 (and tp!1232279 (inv!58155 (tag!7851 (h!48924 (t!337075 (t!337075 rules!3870))))) (inv!58158 (transformation!6991 (h!48924 (t!337075 (t!337075 rules!3870))))) e!2527304))))

(declare-fun b!4072161 () Bool)

(declare-fun e!2527306 () Bool)

(declare-fun tp!1232276 () Bool)

(assert (=> b!4072161 (= e!2527306 (and e!2527307 tp!1232276))))

(assert (=> b!4071960 (= tp!1232172 e!2527306)))

(assert (= b!4072162 b!4072163))

(assert (= b!4072161 b!4072162))

(assert (= (and b!4071960 (is-Cons!43504 (t!337075 (t!337075 rules!3870)))) b!4072161))

(declare-fun m!4681335 () Bool)

(assert (=> b!4072162 m!4681335))

(declare-fun m!4681337 () Bool)

(assert (=> b!4072162 m!4681337))

(declare-fun b!4072167 () Bool)

(declare-fun e!2527308 () Bool)

(declare-fun tp!1232281 () Bool)

(declare-fun tp!1232280 () Bool)

(assert (=> b!4072167 (= e!2527308 (and tp!1232281 tp!1232280))))

(declare-fun b!4072165 () Bool)

(declare-fun tp!1232282 () Bool)

(declare-fun tp!1232284 () Bool)

(assert (=> b!4072165 (= e!2527308 (and tp!1232282 tp!1232284))))

(declare-fun b!4072166 () Bool)

(declare-fun tp!1232283 () Bool)

(assert (=> b!4072166 (= e!2527308 tp!1232283)))

(assert (=> b!4071986 (= tp!1232199 e!2527308)))

(declare-fun b!4072164 () Bool)

(assert (=> b!4072164 (= e!2527308 tp_is_empty!20795)))

(assert (= (and b!4071986 (is-ElementMatch!11896 (reg!12225 (regex!6991 r!4213)))) b!4072164))

(assert (= (and b!4071986 (is-Concat!19118 (reg!12225 (regex!6991 r!4213)))) b!4072165))

(assert (= (and b!4071986 (is-Star!11896 (reg!12225 (regex!6991 r!4213)))) b!4072166))

(assert (= (and b!4071986 (is-Union!11896 (reg!12225 (regex!6991 r!4213)))) b!4072167))

(declare-fun b!4072171 () Bool)

(declare-fun e!2527309 () Bool)

(declare-fun tp!1232286 () Bool)

(declare-fun tp!1232285 () Bool)

(assert (=> b!4072171 (= e!2527309 (and tp!1232286 tp!1232285))))

(declare-fun b!4072169 () Bool)

(declare-fun tp!1232287 () Bool)

(declare-fun tp!1232289 () Bool)

(assert (=> b!4072169 (= e!2527309 (and tp!1232287 tp!1232289))))

(declare-fun b!4072170 () Bool)

(declare-fun tp!1232288 () Bool)

(assert (=> b!4072170 (= e!2527309 tp!1232288)))

(assert (=> b!4071961 (= tp!1232175 e!2527309)))

(declare-fun b!4072168 () Bool)

(assert (=> b!4072168 (= e!2527309 tp_is_empty!20795)))

(assert (= (and b!4071961 (is-ElementMatch!11896 (regex!6991 (h!48924 (t!337075 rules!3870))))) b!4072168))

(assert (= (and b!4071961 (is-Concat!19118 (regex!6991 (h!48924 (t!337075 rules!3870))))) b!4072169))

(assert (= (and b!4071961 (is-Star!11896 (regex!6991 (h!48924 (t!337075 rules!3870))))) b!4072170))

(assert (= (and b!4071961 (is-Union!11896 (regex!6991 (h!48924 (t!337075 rules!3870))))) b!4072171))

(declare-fun b!4072175 () Bool)

(declare-fun e!2527310 () Bool)

(declare-fun tp!1232291 () Bool)

(declare-fun tp!1232290 () Bool)

(assert (=> b!4072175 (= e!2527310 (and tp!1232291 tp!1232290))))

(declare-fun b!4072173 () Bool)

(declare-fun tp!1232292 () Bool)

(declare-fun tp!1232294 () Bool)

(assert (=> b!4072173 (= e!2527310 (and tp!1232292 tp!1232294))))

(declare-fun b!4072174 () Bool)

(declare-fun tp!1232293 () Bool)

(assert (=> b!4072174 (= e!2527310 tp!1232293)))

(assert (=> b!4071987 (= tp!1232197 e!2527310)))

(declare-fun b!4072172 () Bool)

(assert (=> b!4072172 (= e!2527310 tp_is_empty!20795)))

(assert (= (and b!4071987 (is-ElementMatch!11896 (regOne!24305 (regex!6991 r!4213)))) b!4072172))

(assert (= (and b!4071987 (is-Concat!19118 (regOne!24305 (regex!6991 r!4213)))) b!4072173))

(assert (= (and b!4071987 (is-Star!11896 (regOne!24305 (regex!6991 r!4213)))) b!4072174))

(assert (= (and b!4071987 (is-Union!11896 (regOne!24305 (regex!6991 r!4213)))) b!4072175))

(declare-fun b!4072179 () Bool)

(declare-fun e!2527311 () Bool)

(declare-fun tp!1232296 () Bool)

(declare-fun tp!1232295 () Bool)

(assert (=> b!4072179 (= e!2527311 (and tp!1232296 tp!1232295))))

(declare-fun b!4072177 () Bool)

(declare-fun tp!1232297 () Bool)

(declare-fun tp!1232299 () Bool)

(assert (=> b!4072177 (= e!2527311 (and tp!1232297 tp!1232299))))

(declare-fun b!4072178 () Bool)

(declare-fun tp!1232298 () Bool)

(assert (=> b!4072178 (= e!2527311 tp!1232298)))

(assert (=> b!4071987 (= tp!1232196 e!2527311)))

(declare-fun b!4072176 () Bool)

(assert (=> b!4072176 (= e!2527311 tp_is_empty!20795)))

(assert (= (and b!4071987 (is-ElementMatch!11896 (regTwo!24305 (regex!6991 r!4213)))) b!4072176))

(assert (= (and b!4071987 (is-Concat!19118 (regTwo!24305 (regex!6991 r!4213)))) b!4072177))

(assert (= (and b!4071987 (is-Star!11896 (regTwo!24305 (regex!6991 r!4213)))) b!4072178))

(assert (= (and b!4071987 (is-Union!11896 (regTwo!24305 (regex!6991 r!4213)))) b!4072179))

(declare-fun b!4072180 () Bool)

(declare-fun e!2527312 () Bool)

(declare-fun tp!1232300 () Bool)

(assert (=> b!4072180 (= e!2527312 (and tp_is_empty!20795 tp!1232300))))

(assert (=> b!4071983 (= tp!1232195 e!2527312)))

(assert (= (and b!4071983 (is-Cons!43502 (t!337073 (t!337073 suffix!1518)))) b!4072180))

(declare-fun b!4072181 () Bool)

(declare-fun e!2527313 () Bool)

(declare-fun tp!1232301 () Bool)

(assert (=> b!4072181 (= e!2527313 (and tp_is_empty!20795 tp!1232301))))

(assert (=> b!4071967 (= tp!1232178 e!2527313)))

(assert (= (and b!4071967 (is-Cons!43502 (t!337073 (t!337073 p!2988)))) b!4072181))

(declare-fun b!4072185 () Bool)

(declare-fun e!2527314 () Bool)

(declare-fun tp!1232303 () Bool)

(declare-fun tp!1232302 () Bool)

(assert (=> b!4072185 (= e!2527314 (and tp!1232303 tp!1232302))))

(declare-fun b!4072183 () Bool)

(declare-fun tp!1232304 () Bool)

(declare-fun tp!1232306 () Bool)

(assert (=> b!4072183 (= e!2527314 (and tp!1232304 tp!1232306))))

(declare-fun b!4072184 () Bool)

(declare-fun tp!1232305 () Bool)

(assert (=> b!4072184 (= e!2527314 tp!1232305)))

(assert (=> b!4071979 (= tp!1232191 e!2527314)))

(declare-fun b!4072182 () Bool)

(assert (=> b!4072182 (= e!2527314 tp_is_empty!20795)))

(assert (= (and b!4071979 (is-ElementMatch!11896 (regOne!24304 (regex!6991 (h!48924 rules!3870))))) b!4072182))

(assert (= (and b!4071979 (is-Concat!19118 (regOne!24304 (regex!6991 (h!48924 rules!3870))))) b!4072183))

(assert (= (and b!4071979 (is-Star!11896 (regOne!24304 (regex!6991 (h!48924 rules!3870))))) b!4072184))

(assert (= (and b!4071979 (is-Union!11896 (regOne!24304 (regex!6991 (h!48924 rules!3870))))) b!4072185))

(declare-fun b!4072189 () Bool)

(declare-fun e!2527315 () Bool)

(declare-fun tp!1232308 () Bool)

(declare-fun tp!1232307 () Bool)

(assert (=> b!4072189 (= e!2527315 (and tp!1232308 tp!1232307))))

(declare-fun b!4072187 () Bool)

(declare-fun tp!1232309 () Bool)

(declare-fun tp!1232311 () Bool)

(assert (=> b!4072187 (= e!2527315 (and tp!1232309 tp!1232311))))

(declare-fun b!4072188 () Bool)

(declare-fun tp!1232310 () Bool)

(assert (=> b!4072188 (= e!2527315 tp!1232310)))

(assert (=> b!4071979 (= tp!1232193 e!2527315)))

(declare-fun b!4072186 () Bool)

(assert (=> b!4072186 (= e!2527315 tp_is_empty!20795)))

(assert (= (and b!4071979 (is-ElementMatch!11896 (regTwo!24304 (regex!6991 (h!48924 rules!3870))))) b!4072186))

(assert (= (and b!4071979 (is-Concat!19118 (regTwo!24304 (regex!6991 (h!48924 rules!3870))))) b!4072187))

(assert (= (and b!4071979 (is-Star!11896 (regTwo!24304 (regex!6991 (h!48924 rules!3870))))) b!4072188))

(assert (= (and b!4071979 (is-Union!11896 (regTwo!24304 (regex!6991 (h!48924 rules!3870))))) b!4072189))

(declare-fun b_lambda!118955 () Bool)

(assert (= b_lambda!118951 (or d!1210391 b_lambda!118955)))

(declare-fun bs!592623 () Bool)

(declare-fun d!1210473 () Bool)

(assert (= bs!592623 (and d!1210473 d!1210391)))

(assert (=> bs!592623 (= (dynLambda!18482 lambda!127603 (seqFromList!5208 p!2988)) (= (list!16215 (dynLambda!18474 (toChars!9410 (transformation!6991 r!4213)) (dynLambda!18475 (toValue!9551 (transformation!6991 r!4213)) (seqFromList!5208 p!2988)))) (list!16215 (seqFromList!5208 p!2988))))))

(declare-fun b_lambda!118959 () Bool)

(assert (=> (not b_lambda!118959) (not bs!592623)))

(assert (=> bs!592623 t!337080))

(declare-fun b_and!312887 () Bool)

(assert (= b_and!312859 (and (=> t!337080 result!296594) b_and!312887)))

(assert (=> bs!592623 t!337082))

(declare-fun b_and!312889 () Bool)

(assert (= b_and!312861 (and (=> t!337082 result!296598) b_and!312889)))

(assert (=> bs!592623 t!337090))

(declare-fun b_and!312891 () Bool)

(assert (= b_and!312869 (and (=> t!337090 result!296610) b_and!312891)))

(assert (=> bs!592623 t!337108))

(declare-fun b_and!312893 () Bool)

(assert (= b_and!312885 (and (=> t!337108 result!296642) b_and!312893)))

(declare-fun b_lambda!118961 () Bool)

(assert (=> (not b_lambda!118961) (not bs!592623)))

(assert (=> bs!592623 t!337084))

(declare-fun b_and!312895 () Bool)

(assert (= b_and!312863 (and (=> t!337084 result!296600) b_and!312895)))

(assert (=> bs!592623 t!337086))

(declare-fun b_and!312897 () Bool)

(assert (= b_and!312865 (and (=> t!337086 result!296604) b_and!312897)))

(assert (=> bs!592623 t!337088))

(declare-fun b_and!312899 () Bool)

(assert (= b_and!312867 (and (=> t!337088 result!296608) b_and!312899)))

(assert (=> bs!592623 t!337106))

(declare-fun b_and!312901 () Bool)

(assert (= b_and!312883 (and (=> t!337106 result!296640) b_and!312901)))

(assert (=> bs!592623 m!4681169))

(assert (=> bs!592623 m!4681175))

(assert (=> bs!592623 m!4681085))

(assert (=> bs!592623 m!4681167))

(assert (=> bs!592623 m!4681085))

(assert (=> bs!592623 m!4681171))

(assert (=> bs!592623 m!4681167))

(assert (=> bs!592623 m!4681169))

(assert (=> d!1210445 d!1210473))

(declare-fun b_lambda!118957 () Bool)

(assert (= b_lambda!118953 (or d!1210379 b_lambda!118957)))

(declare-fun bs!592624 () Bool)

(declare-fun d!1210475 () Bool)

(assert (= bs!592624 (and d!1210475 d!1210379)))

(assert (=> bs!592624 (= (dynLambda!18483 lambda!127600 (h!48924 rules!3870)) (ruleValid!2919 thiss!26199 (h!48924 rules!3870)))))

(assert (=> bs!592624 m!4681157))

(assert (=> b!4072122 d!1210475))

(push 1)

(assert (not b_next!113987))

(assert (not d!1210445))

(assert (not b!4072070))

(assert (not b!4072173))

(assert (not b!4072187))

(assert (not b_next!113993))

(assert b_and!312897)

(assert (not b!4072165))

(assert (not d!1210457))

(assert (not b!4072049))

(assert (not b!4072046))

(assert (not b!4072060))

(assert (not d!1210441))

(assert (not d!1210455))

(assert b_and!312895)

(assert (not b!4072115))

(assert (not b!4072086))

(assert (not d!1210439))

(assert (not d!1210443))

(assert (not b_next!113995))

(assert (not b!4072126))

(assert (not b!4072161))

(assert (not b!4072116))

(assert (not b!4072162))

(assert b_and!312899)

(assert (not b_next!113973))

(assert (not b!4072159))

(assert (not b!4072143))

(assert (not bs!592624))

(assert (not b!4072140))

(assert (not b!4072130))

(assert (not b!4072169))

(assert (not b!4072188))

(assert (not b!4072160))

(assert (not d!1210469))

(assert (not b_lambda!118955))

(assert (not b!4072135))

(assert (not b!4072085))

(assert (not b!4072179))

(assert (not d!1210467))

(assert (not b_next!113975))

(assert (not b!4072178))

(assert (not b!4072056))

(assert (not b!4072144))

(assert b_and!312889)

(assert (not b!4072177))

(assert (not b!4072068))

(assert (not b!4072145))

(assert (not b!4072141))

(assert (not b!4072102))

(assert (not b!4072134))

(assert (not b!4072117))

(assert (not b_next!113969))

(assert (not b_lambda!118961))

(assert (not d!1210471))

(assert (not b!4072184))

(assert (not d!1210465))

(assert b_and!312893)

(assert (not b!4072045))

(assert (not b!4072170))

(assert (not b!4072167))

(assert (not d!1210421))

(assert (not b!4072139))

(assert (not b!4072138))

(assert (not b!4072136))

(assert tp_is_empty!20795)

(assert (not b!4072108))

(assert (not b!4072148))

(assert b_and!312887)

(assert (not bs!592623))

(assert (not b!4071933))

(assert (not b!4072189))

(assert (not b!4072185))

(assert (not b!4072131))

(assert b_and!312891)

(assert (not d!1210453))

(assert (not d!1210435))

(assert (not b!4072132))

(assert (not b!4072066))

(assert (not b!4072180))

(assert (not b_lambda!118939))

(assert (not b_lambda!118941))

(assert (not b!4072113))

(assert (not b!4072175))

(assert (not b!4072100))

(assert (not b!4072123))

(assert (not d!1210461))

(assert (not b!4072058))

(assert (not b!4072181))

(assert (not b!4072183))

(assert (not b!4072147))

(assert (not b_lambda!118959))

(assert (not b_next!113985))

(assert (not b_next!113971))

(assert (not b!4072088))

(assert (not b!4072158))

(assert (not b!4072048))

(assert (not d!1210449))

(assert (not b!4072174))

(assert (not b!4072171))

(assert (not b!4072128))

(assert (not b!4072149))

(assert (not b!4072166))

(assert (not b_lambda!118957))

(assert b_and!312901)

(check-sat)

(pop 1)

(push 1)

(assert b_and!312895)

(assert (not b_next!113995))

(assert b_and!312899)

(assert (not b_next!113973))

(assert (not b_next!113975))

(assert b_and!312889)

(assert (not b_next!113969))

(assert (not b_next!113987))

(assert b_and!312893)

(assert b_and!312887)

(assert b_and!312891)

(assert b_and!312901)

(assert b_and!312897)

(assert (not b_next!113993))

(assert (not b_next!113985))

(assert (not b_next!113971))

(check-sat)

(pop 1)

