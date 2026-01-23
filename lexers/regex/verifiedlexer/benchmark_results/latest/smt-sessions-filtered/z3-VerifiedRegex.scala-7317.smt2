; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!389676 () Bool)

(assert start!389676)

(declare-fun b!4112077 () Bool)

(declare-fun b_free!115699 () Bool)

(declare-fun b_next!116403 () Bool)

(assert (=> b!4112077 (= b_free!115699 (not b_next!116403))))

(declare-fun tp!1250960 () Bool)

(declare-fun b_and!317585 () Bool)

(assert (=> b!4112077 (= tp!1250960 b_and!317585)))

(declare-fun b_free!115701 () Bool)

(declare-fun b_next!116405 () Bool)

(assert (=> b!4112077 (= b_free!115701 (not b_next!116405))))

(declare-fun tp!1250961 () Bool)

(declare-fun b_and!317587 () Bool)

(assert (=> b!4112077 (= tp!1250961 b_and!317587)))

(declare-fun b!4112079 () Bool)

(declare-fun b_free!115703 () Bool)

(declare-fun b_next!116407 () Bool)

(assert (=> b!4112079 (= b_free!115703 (not b_next!116407))))

(declare-fun tp!1250965 () Bool)

(declare-fun b_and!317589 () Bool)

(assert (=> b!4112079 (= tp!1250965 b_and!317589)))

(declare-fun b_free!115705 () Bool)

(declare-fun b_next!116409 () Bool)

(assert (=> b!4112079 (= b_free!115705 (not b_next!116409))))

(declare-fun tp!1250959 () Bool)

(declare-fun b_and!317591 () Bool)

(assert (=> b!4112079 (= tp!1250959 b_and!317591)))

(declare-fun b!4112078 () Bool)

(declare-fun b_free!115707 () Bool)

(declare-fun b_next!116411 () Bool)

(assert (=> b!4112078 (= b_free!115707 (not b_next!116411))))

(declare-fun tp!1250966 () Bool)

(declare-fun b_and!317593 () Bool)

(assert (=> b!4112078 (= tp!1250966 b_and!317593)))

(declare-fun b_free!115709 () Bool)

(declare-fun b_next!116413 () Bool)

(assert (=> b!4112078 (= b_free!115709 (not b_next!116413))))

(declare-fun tp!1250962 () Bool)

(declare-fun b_and!317595 () Bool)

(assert (=> b!4112078 (= tp!1250962 b_and!317595)))

(declare-fun b!4112070 () Bool)

(declare-fun e!2551191 () Bool)

(declare-fun e!2551199 () Bool)

(assert (=> b!4112070 (= e!2551191 e!2551199)))

(declare-fun res!1679879 () Bool)

(assert (=> b!4112070 (=> (not res!1679879) (not e!2551199))))

(declare-datatypes ((String!50929 0))(
  ( (String!50930 (value!225938 String)) )
))
(declare-datatypes ((List!44424 0))(
  ( (Nil!44300) (Cons!44300 (h!49720 String!50929) (t!340175 List!44424)) )
))
(declare-fun lt!1468305 () List!44424)

(declare-fun lt!1468302 () List!44424)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun toSet!11 (List!44424) (InoxSet String!50929))

(assert (=> b!4112070 (= res!1679879 (= (toSet!11 lt!1468305) (toSet!11 lt!1468302)))))

(declare-datatypes ((List!44425 0))(
  ( (Nil!44301) (Cons!44301 (h!49721 (_ BitVec 16)) (t!340176 List!44425)) )
))
(declare-datatypes ((TokenValue!7436 0))(
  ( (FloatLiteralValue!14872 (text!52497 List!44425)) (TokenValueExt!7435 (__x!27089 Int)) (Broken!37180 (value!225939 List!44425)) (Object!7559) (End!7436) (Def!7436) (Underscore!7436) (Match!7436) (Else!7436) (Error!7436) (Case!7436) (If!7436) (Extends!7436) (Abstract!7436) (Class!7436) (Val!7436) (DelimiterValue!14872 (del!7496 List!44425)) (KeywordValue!7442 (value!225940 List!44425)) (CommentValue!14872 (value!225941 List!44425)) (WhitespaceValue!14872 (value!225942 List!44425)) (IndentationValue!7436 (value!225943 List!44425)) (String!50931) (Int32!7436) (Broken!37181 (value!225944 List!44425)) (Boolean!7437) (Unit!63712) (OperatorValue!7439 (op!7496 List!44425)) (IdentifierValue!14872 (value!225945 List!44425)) (IdentifierValue!14873 (value!225946 List!44425)) (WhitespaceValue!14873 (value!225947 List!44425)) (True!14872) (False!14872) (Broken!37182 (value!225948 List!44425)) (Broken!37183 (value!225949 List!44425)) (True!14873) (RightBrace!7436) (RightBracket!7436) (Colon!7436) (Null!7436) (Comma!7436) (LeftBracket!7436) (False!14873) (LeftBrace!7436) (ImaginaryLiteralValue!7436 (text!52498 List!44425)) (StringLiteralValue!22308 (value!225950 List!44425)) (EOFValue!7436 (value!225951 List!44425)) (IdentValue!7436 (value!225952 List!44425)) (DelimiterValue!14873 (value!225953 List!44425)) (DedentValue!7436 (value!225954 List!44425)) (NewLineValue!7436 (value!225955 List!44425)) (IntegerValue!22308 (value!225956 (_ BitVec 32)) (text!52499 List!44425)) (IntegerValue!22309 (value!225957 Int) (text!52500 List!44425)) (Times!7436) (Or!7436) (Equal!7436) (Minus!7436) (Broken!37184 (value!225958 List!44425)) (And!7436) (Div!7436) (LessEqual!7436) (Mod!7436) (Concat!19547) (Not!7436) (Plus!7436) (SpaceValue!7436 (value!225959 List!44425)) (IntegerValue!22310 (value!225960 Int) (text!52501 List!44425)) (StringLiteralValue!22309 (text!52502 List!44425)) (FloatLiteralValue!14873 (text!52503 List!44425)) (BytesLiteralValue!7436 (value!225961 List!44425)) (CommentValue!14873 (value!225962 List!44425)) (StringLiteralValue!22310 (value!225963 List!44425)) (ErrorTokenValue!7436 (msg!7497 List!44425)) )
))
(declare-datatypes ((C!24408 0))(
  ( (C!24409 (val!14314 Int)) )
))
(declare-datatypes ((List!44426 0))(
  ( (Nil!44302) (Cons!44302 (h!49722 C!24408) (t!340177 List!44426)) )
))
(declare-datatypes ((IArray!26839 0))(
  ( (IArray!26840 (innerList!13477 List!44426)) )
))
(declare-datatypes ((Conc!13417 0))(
  ( (Node!13417 (left!33214 Conc!13417) (right!33544 Conc!13417) (csize!27064 Int) (cheight!13628 Int)) (Leaf!20735 (xs!16723 IArray!26839) (csize!27065 Int)) (Empty!13417) )
))
(declare-datatypes ((BalanceConc!26428 0))(
  ( (BalanceConc!26429 (c!706884 Conc!13417)) )
))
(declare-datatypes ((Regex!12111 0))(
  ( (ElementMatch!12111 (c!706885 C!24408)) (Concat!19548 (regOne!24734 Regex!12111) (regTwo!24734 Regex!12111)) (EmptyExpr!12111) (Star!12111 (reg!12440 Regex!12111)) (EmptyLang!12111) (Union!12111 (regOne!24735 Regex!12111) (regTwo!24735 Regex!12111)) )
))
(declare-datatypes ((TokenValueInjection!14300 0))(
  ( (TokenValueInjection!14301 (toValue!9842 Int) (toChars!9701 Int)) )
))
(declare-datatypes ((Rule!14212 0))(
  ( (Rule!14213 (regex!7206 Regex!12111) (tag!8066 String!50929) (isSeparator!7206 Bool) (transformation!7206 TokenValueInjection!14300)) )
))
(declare-fun e1!99 () Rule!14212)

(declare-fun e2!99 () Rule!14212)

(assert (=> b!4112070 (= lt!1468302 (Cons!44300 (tag!8066 e1!99) (Cons!44300 (tag!8066 e2!99) Nil!44300)))))

(declare-fun b!4112071 () Bool)

(declare-fun e!2551200 () Bool)

(declare-fun e!2551202 () Bool)

(assert (=> b!4112071 (= e!2551200 e!2551202)))

(declare-fun res!1679881 () Bool)

(assert (=> b!4112071 (=> (not res!1679881) (not e!2551202))))

(declare-fun lt!1468303 () List!44424)

(declare-datatypes ((LexerInterface!6795 0))(
  ( (LexerInterfaceExt!6792 (__x!27090 Int)) (Lexer!6793) )
))
(declare-fun thiss!26878 () LexerInterface!6795)

(declare-datatypes ((List!44427 0))(
  ( (Nil!44303) (Cons!44303 (h!49723 Rule!14212) (t!340178 List!44427)) )
))
(declare-fun lt!1468304 () List!44427)

(declare-fun noDuplicateTag!2883 (LexerInterface!6795 List!44427 List!44424) Bool)

(assert (=> b!4112071 (= res!1679881 (noDuplicateTag!2883 thiss!26878 lt!1468304 lt!1468303))))

(assert (=> b!4112071 (= lt!1468303 (Cons!44300 (tag!8066 e1!99) Nil!44300))))

(declare-fun res!1679880 () Bool)

(declare-fun e!2551203 () Bool)

(assert (=> start!389676 (=> (not res!1679880) (not e!2551203))))

(get-info :version)

(assert (=> start!389676 (= res!1679880 ((_ is Lexer!6793) thiss!26878))))

(assert (=> start!389676 e!2551203))

(assert (=> start!389676 true))

(declare-fun e!2551192 () Bool)

(assert (=> start!389676 e!2551192))

(declare-fun e!2551197 () Bool)

(assert (=> start!389676 e!2551197))

(declare-fun e!2551195 () Bool)

(assert (=> start!389676 e!2551195))

(declare-fun b!4112072 () Bool)

(declare-fun e!2551190 () Bool)

(declare-fun tp!1250963 () Bool)

(assert (=> b!4112072 (= e!2551195 (and e!2551190 tp!1250963))))

(declare-fun b!4112073 () Bool)

(assert (=> b!4112073 (= e!2551203 e!2551200)))

(declare-fun res!1679877 () Bool)

(assert (=> b!4112073 (=> (not res!1679877) (not e!2551200))))

(assert (=> b!4112073 (= res!1679877 (noDuplicateTag!2883 thiss!26878 (Cons!44303 e1!99 lt!1468304) Nil!44300))))

(declare-fun l!6462 () List!44427)

(assert (=> b!4112073 (= lt!1468304 (Cons!44303 e2!99 l!6462))))

(declare-fun b!4112074 () Bool)

(declare-fun e!2551201 () Bool)

(declare-fun tp!1250958 () Bool)

(declare-fun inv!58924 (String!50929) Bool)

(declare-fun inv!58926 (TokenValueInjection!14300) Bool)

(assert (=> b!4112074 (= e!2551190 (and tp!1250958 (inv!58924 (tag!8066 (h!49723 l!6462))) (inv!58926 (transformation!7206 (h!49723 l!6462))) e!2551201))))

(declare-fun b!4112075 () Bool)

(assert (=> b!4112075 (= e!2551202 e!2551191)))

(declare-fun res!1679878 () Bool)

(assert (=> b!4112075 (=> (not res!1679878) (not e!2551191))))

(assert (=> b!4112075 (= res!1679878 (noDuplicateTag!2883 thiss!26878 l!6462 lt!1468305))))

(assert (=> b!4112075 (= lt!1468305 (Cons!44300 (tag!8066 e2!99) lt!1468303))))

(declare-fun b!4112076 () Bool)

(declare-fun e!2551194 () Bool)

(declare-fun tp!1250964 () Bool)

(assert (=> b!4112076 (= e!2551192 (and tp!1250964 (inv!58924 (tag!8066 e1!99)) (inv!58926 (transformation!7206 e1!99)) e!2551194))))

(declare-fun e!2551193 () Bool)

(assert (=> b!4112077 (= e!2551193 (and tp!1250960 tp!1250961))))

(assert (=> b!4112078 (= e!2551194 (and tp!1250966 tp!1250962))))

(assert (=> b!4112079 (= e!2551201 (and tp!1250965 tp!1250959))))

(declare-fun b!4112080 () Bool)

(declare-fun content!6826 (List!44424) (InoxSet String!50929))

(assert (=> b!4112080 (= e!2551199 (not (= (content!6826 lt!1468305) (content!6826 lt!1468302))))))

(declare-fun tp!1250957 () Bool)

(declare-fun b!4112081 () Bool)

(assert (=> b!4112081 (= e!2551197 (and tp!1250957 (inv!58924 (tag!8066 e2!99)) (inv!58926 (transformation!7206 e2!99)) e!2551193))))

(assert (= (and start!389676 res!1679880) b!4112073))

(assert (= (and b!4112073 res!1679877) b!4112071))

(assert (= (and b!4112071 res!1679881) b!4112075))

(assert (= (and b!4112075 res!1679878) b!4112070))

(assert (= (and b!4112070 res!1679879) b!4112080))

(assert (= b!4112076 b!4112078))

(assert (= start!389676 b!4112076))

(assert (= b!4112081 b!4112077))

(assert (= start!389676 b!4112081))

(assert (= b!4112074 b!4112079))

(assert (= b!4112072 b!4112074))

(assert (= (and start!389676 ((_ is Cons!44303) l!6462)) b!4112072))

(declare-fun m!4713499 () Bool)

(assert (=> b!4112080 m!4713499))

(declare-fun m!4713501 () Bool)

(assert (=> b!4112080 m!4713501))

(declare-fun m!4713503 () Bool)

(assert (=> b!4112074 m!4713503))

(declare-fun m!4713505 () Bool)

(assert (=> b!4112074 m!4713505))

(declare-fun m!4713507 () Bool)

(assert (=> b!4112073 m!4713507))

(declare-fun m!4713509 () Bool)

(assert (=> b!4112075 m!4713509))

(declare-fun m!4713511 () Bool)

(assert (=> b!4112081 m!4713511))

(declare-fun m!4713513 () Bool)

(assert (=> b!4112081 m!4713513))

(declare-fun m!4713515 () Bool)

(assert (=> b!4112076 m!4713515))

(declare-fun m!4713517 () Bool)

(assert (=> b!4112076 m!4713517))

(declare-fun m!4713519 () Bool)

(assert (=> b!4112071 m!4713519))

(declare-fun m!4713521 () Bool)

(assert (=> b!4112070 m!4713521))

(declare-fun m!4713523 () Bool)

(assert (=> b!4112070 m!4713523))

(check-sat (not b_next!116411) (not b!4112070) (not b!4112076) (not b_next!116413) b_and!317585 (not b!4112074) (not b!4112071) b_and!317593 (not b_next!116405) b_and!317587 (not b_next!116407) (not b!4112080) (not b!4112072) b_and!317591 (not b!4112073) b_and!317595 (not b!4112075) (not b_next!116403) (not b!4112081) (not b_next!116409) b_and!317589)
(check-sat (not b_next!116411) (not b_next!116413) b_and!317585 b_and!317591 b_and!317593 (not b_next!116405) b_and!317587 b_and!317595 (not b_next!116407) (not b_next!116403) (not b_next!116409) b_and!317589)
(get-model)

(declare-fun d!1219878 () Bool)

(declare-fun c!706892 () Bool)

(assert (=> d!1219878 (= c!706892 ((_ is Nil!44300) lt!1468305))))

(declare-fun e!2551232 () (InoxSet String!50929))

(assert (=> d!1219878 (= (content!6826 lt!1468305) e!2551232)))

(declare-fun b!4112135 () Bool)

(assert (=> b!4112135 (= e!2551232 ((as const (Array String!50929 Bool)) false))))

(declare-fun b!4112136 () Bool)

(assert (=> b!4112136 (= e!2551232 ((_ map or) (store ((as const (Array String!50929 Bool)) false) (h!49720 lt!1468305) true) (content!6826 (t!340175 lt!1468305))))))

(assert (= (and d!1219878 c!706892) b!4112135))

(assert (= (and d!1219878 (not c!706892)) b!4112136))

(declare-fun m!4713561 () Bool)

(assert (=> b!4112136 m!4713561))

(declare-fun m!4713563 () Bool)

(assert (=> b!4112136 m!4713563))

(assert (=> b!4112080 d!1219878))

(declare-fun d!1219890 () Bool)

(declare-fun c!706893 () Bool)

(assert (=> d!1219890 (= c!706893 ((_ is Nil!44300) lt!1468302))))

(declare-fun e!2551239 () (InoxSet String!50929))

(assert (=> d!1219890 (= (content!6826 lt!1468302) e!2551239)))

(declare-fun b!4112141 () Bool)

(assert (=> b!4112141 (= e!2551239 ((as const (Array String!50929 Bool)) false))))

(declare-fun b!4112142 () Bool)

(assert (=> b!4112142 (= e!2551239 ((_ map or) (store ((as const (Array String!50929 Bool)) false) (h!49720 lt!1468302) true) (content!6826 (t!340175 lt!1468302))))))

(assert (= (and d!1219890 c!706893) b!4112141))

(assert (= (and d!1219890 (not c!706893)) b!4112142))

(declare-fun m!4713565 () Bool)

(assert (=> b!4112142 m!4713565))

(declare-fun m!4713567 () Bool)

(assert (=> b!4112142 m!4713567))

(assert (=> b!4112080 d!1219890))

(declare-fun d!1219892 () Bool)

(declare-fun res!1679909 () Bool)

(declare-fun e!2551248 () Bool)

(assert (=> d!1219892 (=> res!1679909 e!2551248)))

(assert (=> d!1219892 (= res!1679909 ((_ is Nil!44303) l!6462))))

(assert (=> d!1219892 (= (noDuplicateTag!2883 thiss!26878 l!6462 lt!1468305) e!2551248)))

(declare-fun b!4112150 () Bool)

(declare-fun e!2551249 () Bool)

(assert (=> b!4112150 (= e!2551248 e!2551249)))

(declare-fun res!1679910 () Bool)

(assert (=> b!4112150 (=> (not res!1679910) (not e!2551249))))

(declare-fun contains!8880 (List!44424 String!50929) Bool)

(assert (=> b!4112150 (= res!1679910 (not (contains!8880 lt!1468305 (tag!8066 (h!49723 l!6462)))))))

(declare-fun b!4112151 () Bool)

(assert (=> b!4112151 (= e!2551249 (noDuplicateTag!2883 thiss!26878 (t!340178 l!6462) (Cons!44300 (tag!8066 (h!49723 l!6462)) lt!1468305)))))

(assert (= (and d!1219892 (not res!1679909)) b!4112150))

(assert (= (and b!4112150 res!1679910) b!4112151))

(declare-fun m!4713573 () Bool)

(assert (=> b!4112150 m!4713573))

(declare-fun m!4713575 () Bool)

(assert (=> b!4112151 m!4713575))

(assert (=> b!4112075 d!1219892))

(declare-fun d!1219894 () Bool)

(declare-fun lambda!128474 () Int)

(declare-fun foldLeft!5 (List!44424 (InoxSet String!50929) Int) (InoxSet String!50929))

(assert (=> d!1219894 (= (toSet!11 lt!1468305) (foldLeft!5 lt!1468305 ((as const (Array String!50929 Bool)) false) lambda!128474))))

(declare-fun bs!594346 () Bool)

(assert (= bs!594346 d!1219894))

(declare-fun m!4713577 () Bool)

(assert (=> bs!594346 m!4713577))

(assert (=> b!4112070 d!1219894))

(declare-fun bs!594347 () Bool)

(declare-fun d!1219896 () Bool)

(assert (= bs!594347 (and d!1219896 d!1219894)))

(declare-fun lambda!128475 () Int)

(assert (=> bs!594347 (= lambda!128475 lambda!128474)))

(assert (=> d!1219896 (= (toSet!11 lt!1468302) (foldLeft!5 lt!1468302 ((as const (Array String!50929 Bool)) false) lambda!128475))))

(declare-fun bs!594348 () Bool)

(assert (= bs!594348 d!1219896))

(declare-fun m!4713579 () Bool)

(assert (=> bs!594348 m!4713579))

(assert (=> b!4112070 d!1219896))

(declare-fun d!1219898 () Bool)

(assert (=> d!1219898 (= (inv!58924 (tag!8066 e2!99)) (= (mod (str.len (value!225938 (tag!8066 e2!99))) 2) 0))))

(assert (=> b!4112081 d!1219898))

(declare-fun d!1219900 () Bool)

(declare-fun res!1679913 () Bool)

(declare-fun e!2551252 () Bool)

(assert (=> d!1219900 (=> (not res!1679913) (not e!2551252))))

(declare-fun semiInverseModEq!3106 (Int Int) Bool)

(assert (=> d!1219900 (= res!1679913 (semiInverseModEq!3106 (toChars!9701 (transformation!7206 e2!99)) (toValue!9842 (transformation!7206 e2!99))))))

(assert (=> d!1219900 (= (inv!58926 (transformation!7206 e2!99)) e!2551252)))

(declare-fun b!4112154 () Bool)

(declare-fun equivClasses!3005 (Int Int) Bool)

(assert (=> b!4112154 (= e!2551252 (equivClasses!3005 (toChars!9701 (transformation!7206 e2!99)) (toValue!9842 (transformation!7206 e2!99))))))

(assert (= (and d!1219900 res!1679913) b!4112154))

(declare-fun m!4713581 () Bool)

(assert (=> d!1219900 m!4713581))

(declare-fun m!4713583 () Bool)

(assert (=> b!4112154 m!4713583))

(assert (=> b!4112081 d!1219900))

(declare-fun d!1219902 () Bool)

(assert (=> d!1219902 (= (inv!58924 (tag!8066 e1!99)) (= (mod (str.len (value!225938 (tag!8066 e1!99))) 2) 0))))

(assert (=> b!4112076 d!1219902))

(declare-fun d!1219904 () Bool)

(declare-fun res!1679914 () Bool)

(declare-fun e!2551253 () Bool)

(assert (=> d!1219904 (=> (not res!1679914) (not e!2551253))))

(assert (=> d!1219904 (= res!1679914 (semiInverseModEq!3106 (toChars!9701 (transformation!7206 e1!99)) (toValue!9842 (transformation!7206 e1!99))))))

(assert (=> d!1219904 (= (inv!58926 (transformation!7206 e1!99)) e!2551253)))

(declare-fun b!4112155 () Bool)

(assert (=> b!4112155 (= e!2551253 (equivClasses!3005 (toChars!9701 (transformation!7206 e1!99)) (toValue!9842 (transformation!7206 e1!99))))))

(assert (= (and d!1219904 res!1679914) b!4112155))

(declare-fun m!4713585 () Bool)

(assert (=> d!1219904 m!4713585))

(declare-fun m!4713587 () Bool)

(assert (=> b!4112155 m!4713587))

(assert (=> b!4112076 d!1219904))

(declare-fun d!1219906 () Bool)

(declare-fun res!1679915 () Bool)

(declare-fun e!2551254 () Bool)

(assert (=> d!1219906 (=> res!1679915 e!2551254)))

(assert (=> d!1219906 (= res!1679915 ((_ is Nil!44303) lt!1468304))))

(assert (=> d!1219906 (= (noDuplicateTag!2883 thiss!26878 lt!1468304 lt!1468303) e!2551254)))

(declare-fun b!4112156 () Bool)

(declare-fun e!2551255 () Bool)

(assert (=> b!4112156 (= e!2551254 e!2551255)))

(declare-fun res!1679916 () Bool)

(assert (=> b!4112156 (=> (not res!1679916) (not e!2551255))))

(assert (=> b!4112156 (= res!1679916 (not (contains!8880 lt!1468303 (tag!8066 (h!49723 lt!1468304)))))))

(declare-fun b!4112157 () Bool)

(assert (=> b!4112157 (= e!2551255 (noDuplicateTag!2883 thiss!26878 (t!340178 lt!1468304) (Cons!44300 (tag!8066 (h!49723 lt!1468304)) lt!1468303)))))

(assert (= (and d!1219906 (not res!1679915)) b!4112156))

(assert (= (and b!4112156 res!1679916) b!4112157))

(declare-fun m!4713589 () Bool)

(assert (=> b!4112156 m!4713589))

(declare-fun m!4713591 () Bool)

(assert (=> b!4112157 m!4713591))

(assert (=> b!4112071 d!1219906))

(declare-fun d!1219908 () Bool)

(declare-fun res!1679917 () Bool)

(declare-fun e!2551256 () Bool)

(assert (=> d!1219908 (=> res!1679917 e!2551256)))

(assert (=> d!1219908 (= res!1679917 ((_ is Nil!44303) (Cons!44303 e1!99 lt!1468304)))))

(assert (=> d!1219908 (= (noDuplicateTag!2883 thiss!26878 (Cons!44303 e1!99 lt!1468304) Nil!44300) e!2551256)))

(declare-fun b!4112158 () Bool)

(declare-fun e!2551257 () Bool)

(assert (=> b!4112158 (= e!2551256 e!2551257)))

(declare-fun res!1679918 () Bool)

(assert (=> b!4112158 (=> (not res!1679918) (not e!2551257))))

(assert (=> b!4112158 (= res!1679918 (not (contains!8880 Nil!44300 (tag!8066 (h!49723 (Cons!44303 e1!99 lt!1468304))))))))

(declare-fun b!4112159 () Bool)

(assert (=> b!4112159 (= e!2551257 (noDuplicateTag!2883 thiss!26878 (t!340178 (Cons!44303 e1!99 lt!1468304)) (Cons!44300 (tag!8066 (h!49723 (Cons!44303 e1!99 lt!1468304))) Nil!44300)))))

(assert (= (and d!1219908 (not res!1679917)) b!4112158))

(assert (= (and b!4112158 res!1679918) b!4112159))

(declare-fun m!4713593 () Bool)

(assert (=> b!4112158 m!4713593))

(declare-fun m!4713595 () Bool)

(assert (=> b!4112159 m!4713595))

(assert (=> b!4112073 d!1219908))

(declare-fun d!1219910 () Bool)

(assert (=> d!1219910 (= (inv!58924 (tag!8066 (h!49723 l!6462))) (= (mod (str.len (value!225938 (tag!8066 (h!49723 l!6462)))) 2) 0))))

(assert (=> b!4112074 d!1219910))

(declare-fun d!1219912 () Bool)

(declare-fun res!1679919 () Bool)

(declare-fun e!2551258 () Bool)

(assert (=> d!1219912 (=> (not res!1679919) (not e!2551258))))

(assert (=> d!1219912 (= res!1679919 (semiInverseModEq!3106 (toChars!9701 (transformation!7206 (h!49723 l!6462))) (toValue!9842 (transformation!7206 (h!49723 l!6462)))))))

(assert (=> d!1219912 (= (inv!58926 (transformation!7206 (h!49723 l!6462))) e!2551258)))

(declare-fun b!4112160 () Bool)

(assert (=> b!4112160 (= e!2551258 (equivClasses!3005 (toChars!9701 (transformation!7206 (h!49723 l!6462))) (toValue!9842 (transformation!7206 (h!49723 l!6462)))))))

(assert (= (and d!1219912 res!1679919) b!4112160))

(declare-fun m!4713597 () Bool)

(assert (=> d!1219912 m!4713597))

(declare-fun m!4713599 () Bool)

(assert (=> b!4112160 m!4713599))

(assert (=> b!4112074 d!1219912))

(declare-fun b!4112171 () Bool)

(declare-fun e!2551261 () Bool)

(declare-fun tp_is_empty!21169 () Bool)

(assert (=> b!4112171 (= e!2551261 tp_is_empty!21169)))

(declare-fun b!4112174 () Bool)

(declare-fun tp!1251014 () Bool)

(declare-fun tp!1251016 () Bool)

(assert (=> b!4112174 (= e!2551261 (and tp!1251014 tp!1251016))))

(declare-fun b!4112172 () Bool)

(declare-fun tp!1251017 () Bool)

(declare-fun tp!1251015 () Bool)

(assert (=> b!4112172 (= e!2551261 (and tp!1251017 tp!1251015))))

(assert (=> b!4112081 (= tp!1250957 e!2551261)))

(declare-fun b!4112173 () Bool)

(declare-fun tp!1251018 () Bool)

(assert (=> b!4112173 (= e!2551261 tp!1251018)))

(assert (= (and b!4112081 ((_ is ElementMatch!12111) (regex!7206 e2!99))) b!4112171))

(assert (= (and b!4112081 ((_ is Concat!19548) (regex!7206 e2!99))) b!4112172))

(assert (= (and b!4112081 ((_ is Star!12111) (regex!7206 e2!99))) b!4112173))

(assert (= (and b!4112081 ((_ is Union!12111) (regex!7206 e2!99))) b!4112174))

(declare-fun b!4112175 () Bool)

(declare-fun e!2551262 () Bool)

(assert (=> b!4112175 (= e!2551262 tp_is_empty!21169)))

(declare-fun b!4112178 () Bool)

(declare-fun tp!1251019 () Bool)

(declare-fun tp!1251021 () Bool)

(assert (=> b!4112178 (= e!2551262 (and tp!1251019 tp!1251021))))

(declare-fun b!4112176 () Bool)

(declare-fun tp!1251022 () Bool)

(declare-fun tp!1251020 () Bool)

(assert (=> b!4112176 (= e!2551262 (and tp!1251022 tp!1251020))))

(assert (=> b!4112076 (= tp!1250964 e!2551262)))

(declare-fun b!4112177 () Bool)

(declare-fun tp!1251023 () Bool)

(assert (=> b!4112177 (= e!2551262 tp!1251023)))

(assert (= (and b!4112076 ((_ is ElementMatch!12111) (regex!7206 e1!99))) b!4112175))

(assert (= (and b!4112076 ((_ is Concat!19548) (regex!7206 e1!99))) b!4112176))

(assert (= (and b!4112076 ((_ is Star!12111) (regex!7206 e1!99))) b!4112177))

(assert (= (and b!4112076 ((_ is Union!12111) (regex!7206 e1!99))) b!4112178))

(declare-fun b!4112189 () Bool)

(declare-fun b_free!115715 () Bool)

(declare-fun b_next!116419 () Bool)

(assert (=> b!4112189 (= b_free!115715 (not b_next!116419))))

(declare-fun tp!1251032 () Bool)

(declare-fun b_and!317601 () Bool)

(assert (=> b!4112189 (= tp!1251032 b_and!317601)))

(declare-fun b_free!115717 () Bool)

(declare-fun b_next!116421 () Bool)

(assert (=> b!4112189 (= b_free!115717 (not b_next!116421))))

(declare-fun tp!1251034 () Bool)

(declare-fun b_and!317603 () Bool)

(assert (=> b!4112189 (= tp!1251034 b_and!317603)))

(declare-fun e!2551271 () Bool)

(assert (=> b!4112189 (= e!2551271 (and tp!1251032 tp!1251034))))

(declare-fun b!4112188 () Bool)

(declare-fun e!2551273 () Bool)

(declare-fun tp!1251033 () Bool)

(assert (=> b!4112188 (= e!2551273 (and tp!1251033 (inv!58924 (tag!8066 (h!49723 (t!340178 l!6462)))) (inv!58926 (transformation!7206 (h!49723 (t!340178 l!6462)))) e!2551271))))

(declare-fun b!4112187 () Bool)

(declare-fun e!2551272 () Bool)

(declare-fun tp!1251035 () Bool)

(assert (=> b!4112187 (= e!2551272 (and e!2551273 tp!1251035))))

(assert (=> b!4112072 (= tp!1250963 e!2551272)))

(assert (= b!4112188 b!4112189))

(assert (= b!4112187 b!4112188))

(assert (= (and b!4112072 ((_ is Cons!44303) (t!340178 l!6462))) b!4112187))

(declare-fun m!4713601 () Bool)

(assert (=> b!4112188 m!4713601))

(declare-fun m!4713603 () Bool)

(assert (=> b!4112188 m!4713603))

(declare-fun b!4112190 () Bool)

(declare-fun e!2551275 () Bool)

(assert (=> b!4112190 (= e!2551275 tp_is_empty!21169)))

(declare-fun b!4112193 () Bool)

(declare-fun tp!1251036 () Bool)

(declare-fun tp!1251038 () Bool)

(assert (=> b!4112193 (= e!2551275 (and tp!1251036 tp!1251038))))

(declare-fun b!4112191 () Bool)

(declare-fun tp!1251039 () Bool)

(declare-fun tp!1251037 () Bool)

(assert (=> b!4112191 (= e!2551275 (and tp!1251039 tp!1251037))))

(assert (=> b!4112074 (= tp!1250958 e!2551275)))

(declare-fun b!4112192 () Bool)

(declare-fun tp!1251040 () Bool)

(assert (=> b!4112192 (= e!2551275 tp!1251040)))

(assert (= (and b!4112074 ((_ is ElementMatch!12111) (regex!7206 (h!49723 l!6462)))) b!4112190))

(assert (= (and b!4112074 ((_ is Concat!19548) (regex!7206 (h!49723 l!6462)))) b!4112191))

(assert (= (and b!4112074 ((_ is Star!12111) (regex!7206 (h!49723 l!6462)))) b!4112192))

(assert (= (and b!4112074 ((_ is Union!12111) (regex!7206 (h!49723 l!6462)))) b!4112193))

(check-sat (not b_next!116413) (not b!4112154) (not b_next!116421) (not b_next!116405) b_and!317595 (not d!1219904) (not d!1219900) (not d!1219896) (not b!4112188) (not b!4112156) (not b!4112176) (not b!4112142) (not b!4112173) (not b!4112160) (not b_next!116411) tp_is_empty!21169 (not b!4112158) (not b!4112177) (not b_next!116419) b_and!317585 (not b!4112172) (not b!4112192) b_and!317601 b_and!317591 (not b!4112150) (not b!4112159) b_and!317593 (not b!4112187) (not b!4112178) (not d!1219912) b_and!317587 (not b!4112174) (not b_next!116407) b_and!317603 (not b_next!116403) (not b!4112136) (not d!1219894) (not b_next!116409) b_and!317589 (not b!4112155) (not b!4112157) (not b!4112193) (not b!4112151) (not b!4112191))
(check-sat (not b_next!116411) (not b_next!116419) (not b_next!116413) b_and!317585 b_and!317601 b_and!317591 (not b_next!116421) b_and!317593 (not b_next!116405) b_and!317587 b_and!317595 (not b_next!116403) (not b_next!116407) b_and!317603 (not b_next!116409) b_and!317589)
(get-model)

(declare-fun d!1219920 () Bool)

(assert (=> d!1219920 true))

(declare-fun order!23319 () Int)

(declare-fun order!23321 () Int)

(declare-fun lambda!128488 () Int)

(declare-fun dynLambda!18943 (Int Int) Int)

(declare-fun dynLambda!18944 (Int Int) Int)

(assert (=> d!1219920 (< (dynLambda!18943 order!23319 (toValue!9842 (transformation!7206 (h!49723 l!6462)))) (dynLambda!18944 order!23321 lambda!128488))))

(declare-fun Forall2!1137 (Int) Bool)

(assert (=> d!1219920 (= (equivClasses!3005 (toChars!9701 (transformation!7206 (h!49723 l!6462))) (toValue!9842 (transformation!7206 (h!49723 l!6462)))) (Forall2!1137 lambda!128488))))

(declare-fun bs!594363 () Bool)

(assert (= bs!594363 d!1219920))

(declare-fun m!4713669 () Bool)

(assert (=> bs!594363 m!4713669))

(assert (=> b!4112160 d!1219920))

(declare-fun d!1219956 () Bool)

(declare-fun c!706902 () Bool)

(assert (=> d!1219956 (= c!706902 ((_ is Nil!44300) lt!1468305))))

(declare-fun e!2551325 () (InoxSet String!50929))

(assert (=> d!1219956 (= (foldLeft!5 lt!1468305 ((as const (Array String!50929 Bool)) false) lambda!128474) e!2551325)))

(declare-fun b!4112306 () Bool)

(assert (=> b!4112306 (= e!2551325 ((as const (Array String!50929 Bool)) false))))

(declare-fun b!4112307 () Bool)

(declare-fun dynLambda!18945 (Int (InoxSet String!50929) String!50929) (InoxSet String!50929))

(assert (=> b!4112307 (= e!2551325 (foldLeft!5 (t!340175 lt!1468305) (dynLambda!18945 lambda!128474 ((as const (Array String!50929 Bool)) false) (h!49720 lt!1468305)) lambda!128474))))

(assert (= (and d!1219956 c!706902) b!4112306))

(assert (= (and d!1219956 (not c!706902)) b!4112307))

(declare-fun b_lambda!120671 () Bool)

(assert (=> (not b_lambda!120671) (not b!4112307)))

(declare-fun m!4713671 () Bool)

(assert (=> b!4112307 m!4713671))

(assert (=> b!4112307 m!4713671))

(declare-fun m!4713673 () Bool)

(assert (=> b!4112307 m!4713673))

(assert (=> d!1219894 d!1219956))

(declare-fun d!1219958 () Bool)

(declare-fun res!1679949 () Bool)

(declare-fun e!2551326 () Bool)

(assert (=> d!1219958 (=> res!1679949 e!2551326)))

(assert (=> d!1219958 (= res!1679949 ((_ is Nil!44303) (t!340178 (Cons!44303 e1!99 lt!1468304))))))

(assert (=> d!1219958 (= (noDuplicateTag!2883 thiss!26878 (t!340178 (Cons!44303 e1!99 lt!1468304)) (Cons!44300 (tag!8066 (h!49723 (Cons!44303 e1!99 lt!1468304))) Nil!44300)) e!2551326)))

(declare-fun b!4112308 () Bool)

(declare-fun e!2551327 () Bool)

(assert (=> b!4112308 (= e!2551326 e!2551327)))

(declare-fun res!1679950 () Bool)

(assert (=> b!4112308 (=> (not res!1679950) (not e!2551327))))

(assert (=> b!4112308 (= res!1679950 (not (contains!8880 (Cons!44300 (tag!8066 (h!49723 (Cons!44303 e1!99 lt!1468304))) Nil!44300) (tag!8066 (h!49723 (t!340178 (Cons!44303 e1!99 lt!1468304)))))))))

(declare-fun b!4112309 () Bool)

(assert (=> b!4112309 (= e!2551327 (noDuplicateTag!2883 thiss!26878 (t!340178 (t!340178 (Cons!44303 e1!99 lt!1468304))) (Cons!44300 (tag!8066 (h!49723 (t!340178 (Cons!44303 e1!99 lt!1468304)))) (Cons!44300 (tag!8066 (h!49723 (Cons!44303 e1!99 lt!1468304))) Nil!44300))))))

(assert (= (and d!1219958 (not res!1679949)) b!4112308))

(assert (= (and b!4112308 res!1679950) b!4112309))

(declare-fun m!4713675 () Bool)

(assert (=> b!4112308 m!4713675))

(declare-fun m!4713677 () Bool)

(assert (=> b!4112309 m!4713677))

(assert (=> b!4112159 d!1219958))

(declare-fun d!1219960 () Bool)

(declare-fun lt!1468313 () Bool)

(assert (=> d!1219960 (= lt!1468313 (select (content!6826 Nil!44300) (tag!8066 (h!49723 (Cons!44303 e1!99 lt!1468304)))))))

(declare-fun e!2551332 () Bool)

(assert (=> d!1219960 (= lt!1468313 e!2551332)))

(declare-fun res!1679956 () Bool)

(assert (=> d!1219960 (=> (not res!1679956) (not e!2551332))))

(assert (=> d!1219960 (= res!1679956 ((_ is Cons!44300) Nil!44300))))

(assert (=> d!1219960 (= (contains!8880 Nil!44300 (tag!8066 (h!49723 (Cons!44303 e1!99 lt!1468304)))) lt!1468313)))

(declare-fun b!4112314 () Bool)

(declare-fun e!2551333 () Bool)

(assert (=> b!4112314 (= e!2551332 e!2551333)))

(declare-fun res!1679955 () Bool)

(assert (=> b!4112314 (=> res!1679955 e!2551333)))

(assert (=> b!4112314 (= res!1679955 (= (h!49720 Nil!44300) (tag!8066 (h!49723 (Cons!44303 e1!99 lt!1468304)))))))

(declare-fun b!4112315 () Bool)

(assert (=> b!4112315 (= e!2551333 (contains!8880 (t!340175 Nil!44300) (tag!8066 (h!49723 (Cons!44303 e1!99 lt!1468304)))))))

(assert (= (and d!1219960 res!1679956) b!4112314))

(assert (= (and b!4112314 (not res!1679955)) b!4112315))

(declare-fun m!4713679 () Bool)

(assert (=> d!1219960 m!4713679))

(declare-fun m!4713681 () Bool)

(assert (=> d!1219960 m!4713681))

(declare-fun m!4713683 () Bool)

(assert (=> b!4112315 m!4713683))

(assert (=> b!4112158 d!1219960))

(declare-fun d!1219962 () Bool)

(declare-fun res!1679957 () Bool)

(declare-fun e!2551334 () Bool)

(assert (=> d!1219962 (=> res!1679957 e!2551334)))

(assert (=> d!1219962 (= res!1679957 ((_ is Nil!44303) (t!340178 lt!1468304)))))

(assert (=> d!1219962 (= (noDuplicateTag!2883 thiss!26878 (t!340178 lt!1468304) (Cons!44300 (tag!8066 (h!49723 lt!1468304)) lt!1468303)) e!2551334)))

(declare-fun b!4112316 () Bool)

(declare-fun e!2551335 () Bool)

(assert (=> b!4112316 (= e!2551334 e!2551335)))

(declare-fun res!1679958 () Bool)

(assert (=> b!4112316 (=> (not res!1679958) (not e!2551335))))

(assert (=> b!4112316 (= res!1679958 (not (contains!8880 (Cons!44300 (tag!8066 (h!49723 lt!1468304)) lt!1468303) (tag!8066 (h!49723 (t!340178 lt!1468304))))))))

(declare-fun b!4112317 () Bool)

(assert (=> b!4112317 (= e!2551335 (noDuplicateTag!2883 thiss!26878 (t!340178 (t!340178 lt!1468304)) (Cons!44300 (tag!8066 (h!49723 (t!340178 lt!1468304))) (Cons!44300 (tag!8066 (h!49723 lt!1468304)) lt!1468303))))))

(assert (= (and d!1219962 (not res!1679957)) b!4112316))

(assert (= (and b!4112316 res!1679958) b!4112317))

(declare-fun m!4713685 () Bool)

(assert (=> b!4112316 m!4713685))

(declare-fun m!4713687 () Bool)

(assert (=> b!4112317 m!4713687))

(assert (=> b!4112157 d!1219962))

(declare-fun d!1219964 () Bool)

(declare-fun c!706903 () Bool)

(assert (=> d!1219964 (= c!706903 ((_ is Nil!44300) (t!340175 lt!1468302)))))

(declare-fun e!2551336 () (InoxSet String!50929))

(assert (=> d!1219964 (= (content!6826 (t!340175 lt!1468302)) e!2551336)))

(declare-fun b!4112318 () Bool)

(assert (=> b!4112318 (= e!2551336 ((as const (Array String!50929 Bool)) false))))

(declare-fun b!4112319 () Bool)

(assert (=> b!4112319 (= e!2551336 ((_ map or) (store ((as const (Array String!50929 Bool)) false) (h!49720 (t!340175 lt!1468302)) true) (content!6826 (t!340175 (t!340175 lt!1468302)))))))

(assert (= (and d!1219964 c!706903) b!4112318))

(assert (= (and d!1219964 (not c!706903)) b!4112319))

(declare-fun m!4713689 () Bool)

(assert (=> b!4112319 m!4713689))

(declare-fun m!4713691 () Bool)

(assert (=> b!4112319 m!4713691))

(assert (=> b!4112142 d!1219964))

(declare-fun d!1219966 () Bool)

(declare-fun lt!1468314 () Bool)

(assert (=> d!1219966 (= lt!1468314 (select (content!6826 lt!1468303) (tag!8066 (h!49723 lt!1468304))))))

(declare-fun e!2551337 () Bool)

(assert (=> d!1219966 (= lt!1468314 e!2551337)))

(declare-fun res!1679960 () Bool)

(assert (=> d!1219966 (=> (not res!1679960) (not e!2551337))))

(assert (=> d!1219966 (= res!1679960 ((_ is Cons!44300) lt!1468303))))

(assert (=> d!1219966 (= (contains!8880 lt!1468303 (tag!8066 (h!49723 lt!1468304))) lt!1468314)))

(declare-fun b!4112320 () Bool)

(declare-fun e!2551338 () Bool)

(assert (=> b!4112320 (= e!2551337 e!2551338)))

(declare-fun res!1679959 () Bool)

(assert (=> b!4112320 (=> res!1679959 e!2551338)))

(assert (=> b!4112320 (= res!1679959 (= (h!49720 lt!1468303) (tag!8066 (h!49723 lt!1468304))))))

(declare-fun b!4112321 () Bool)

(assert (=> b!4112321 (= e!2551338 (contains!8880 (t!340175 lt!1468303) (tag!8066 (h!49723 lt!1468304))))))

(assert (= (and d!1219966 res!1679960) b!4112320))

(assert (= (and b!4112320 (not res!1679959)) b!4112321))

(declare-fun m!4713693 () Bool)

(assert (=> d!1219966 m!4713693))

(declare-fun m!4713695 () Bool)

(assert (=> d!1219966 m!4713695))

(declare-fun m!4713697 () Bool)

(assert (=> b!4112321 m!4713697))

(assert (=> b!4112156 d!1219966))

(declare-fun d!1219968 () Bool)

(assert (=> d!1219968 true))

(declare-fun lambda!128491 () Int)

(declare-fun order!23325 () Int)

(declare-fun order!23323 () Int)

(declare-fun dynLambda!18946 (Int Int) Int)

(declare-fun dynLambda!18947 (Int Int) Int)

(assert (=> d!1219968 (< (dynLambda!18946 order!23323 (toChars!9701 (transformation!7206 (h!49723 l!6462)))) (dynLambda!18947 order!23325 lambda!128491))))

(assert (=> d!1219968 true))

(assert (=> d!1219968 (< (dynLambda!18943 order!23319 (toValue!9842 (transformation!7206 (h!49723 l!6462)))) (dynLambda!18947 order!23325 lambda!128491))))

(declare-fun Forall!1538 (Int) Bool)

(assert (=> d!1219968 (= (semiInverseModEq!3106 (toChars!9701 (transformation!7206 (h!49723 l!6462))) (toValue!9842 (transformation!7206 (h!49723 l!6462)))) (Forall!1538 lambda!128491))))

(declare-fun bs!594364 () Bool)

(assert (= bs!594364 d!1219968))

(declare-fun m!4713699 () Bool)

(assert (=> bs!594364 m!4713699))

(assert (=> d!1219912 d!1219968))

(declare-fun bs!594365 () Bool)

(declare-fun d!1219970 () Bool)

(assert (= bs!594365 (and d!1219970 d!1219920)))

(declare-fun lambda!128492 () Int)

(assert (=> bs!594365 (= (= (toValue!9842 (transformation!7206 e1!99)) (toValue!9842 (transformation!7206 (h!49723 l!6462)))) (= lambda!128492 lambda!128488))))

(assert (=> d!1219970 true))

(assert (=> d!1219970 (< (dynLambda!18943 order!23319 (toValue!9842 (transformation!7206 e1!99))) (dynLambda!18944 order!23321 lambda!128492))))

(assert (=> d!1219970 (= (equivClasses!3005 (toChars!9701 (transformation!7206 e1!99)) (toValue!9842 (transformation!7206 e1!99))) (Forall2!1137 lambda!128492))))

(declare-fun bs!594366 () Bool)

(assert (= bs!594366 d!1219970))

(declare-fun m!4713701 () Bool)

(assert (=> bs!594366 m!4713701))

(assert (=> b!4112155 d!1219970))

(declare-fun bs!594367 () Bool)

(declare-fun d!1219972 () Bool)

(assert (= bs!594367 (and d!1219972 d!1219920)))

(declare-fun lambda!128493 () Int)

(assert (=> bs!594367 (= (= (toValue!9842 (transformation!7206 e2!99)) (toValue!9842 (transformation!7206 (h!49723 l!6462)))) (= lambda!128493 lambda!128488))))

(declare-fun bs!594368 () Bool)

(assert (= bs!594368 (and d!1219972 d!1219970)))

(assert (=> bs!594368 (= (= (toValue!9842 (transformation!7206 e2!99)) (toValue!9842 (transformation!7206 e1!99))) (= lambda!128493 lambda!128492))))

(assert (=> d!1219972 true))

(assert (=> d!1219972 (< (dynLambda!18943 order!23319 (toValue!9842 (transformation!7206 e2!99))) (dynLambda!18944 order!23321 lambda!128493))))

(assert (=> d!1219972 (= (equivClasses!3005 (toChars!9701 (transformation!7206 e2!99)) (toValue!9842 (transformation!7206 e2!99))) (Forall2!1137 lambda!128493))))

(declare-fun bs!594369 () Bool)

(assert (= bs!594369 d!1219972))

(declare-fun m!4713703 () Bool)

(assert (=> bs!594369 m!4713703))

(assert (=> b!4112154 d!1219972))

(declare-fun bs!594370 () Bool)

(declare-fun d!1219974 () Bool)

(assert (= bs!594370 (and d!1219974 d!1219968)))

(declare-fun lambda!128494 () Int)

(assert (=> bs!594370 (= (and (= (toChars!9701 (transformation!7206 e2!99)) (toChars!9701 (transformation!7206 (h!49723 l!6462)))) (= (toValue!9842 (transformation!7206 e2!99)) (toValue!9842 (transformation!7206 (h!49723 l!6462))))) (= lambda!128494 lambda!128491))))

(assert (=> d!1219974 true))

(assert (=> d!1219974 (< (dynLambda!18946 order!23323 (toChars!9701 (transformation!7206 e2!99))) (dynLambda!18947 order!23325 lambda!128494))))

(assert (=> d!1219974 true))

(assert (=> d!1219974 (< (dynLambda!18943 order!23319 (toValue!9842 (transformation!7206 e2!99))) (dynLambda!18947 order!23325 lambda!128494))))

(assert (=> d!1219974 (= (semiInverseModEq!3106 (toChars!9701 (transformation!7206 e2!99)) (toValue!9842 (transformation!7206 e2!99))) (Forall!1538 lambda!128494))))

(declare-fun bs!594371 () Bool)

(assert (= bs!594371 d!1219974))

(declare-fun m!4713705 () Bool)

(assert (=> bs!594371 m!4713705))

(assert (=> d!1219900 d!1219974))

(declare-fun d!1219976 () Bool)

(assert (=> d!1219976 (= (inv!58924 (tag!8066 (h!49723 (t!340178 l!6462)))) (= (mod (str.len (value!225938 (tag!8066 (h!49723 (t!340178 l!6462))))) 2) 0))))

(assert (=> b!4112188 d!1219976))

(declare-fun d!1219978 () Bool)

(declare-fun res!1679961 () Bool)

(declare-fun e!2551339 () Bool)

(assert (=> d!1219978 (=> (not res!1679961) (not e!2551339))))

(assert (=> d!1219978 (= res!1679961 (semiInverseModEq!3106 (toChars!9701 (transformation!7206 (h!49723 (t!340178 l!6462)))) (toValue!9842 (transformation!7206 (h!49723 (t!340178 l!6462))))))))

(assert (=> d!1219978 (= (inv!58926 (transformation!7206 (h!49723 (t!340178 l!6462)))) e!2551339)))

(declare-fun b!4112326 () Bool)

(assert (=> b!4112326 (= e!2551339 (equivClasses!3005 (toChars!9701 (transformation!7206 (h!49723 (t!340178 l!6462)))) (toValue!9842 (transformation!7206 (h!49723 (t!340178 l!6462))))))))

(assert (= (and d!1219978 res!1679961) b!4112326))

(declare-fun m!4713707 () Bool)

(assert (=> d!1219978 m!4713707))

(declare-fun m!4713709 () Bool)

(assert (=> b!4112326 m!4713709))

(assert (=> b!4112188 d!1219978))

(declare-fun d!1219980 () Bool)

(declare-fun res!1679962 () Bool)

(declare-fun e!2551340 () Bool)

(assert (=> d!1219980 (=> res!1679962 e!2551340)))

(assert (=> d!1219980 (= res!1679962 ((_ is Nil!44303) (t!340178 l!6462)))))

(assert (=> d!1219980 (= (noDuplicateTag!2883 thiss!26878 (t!340178 l!6462) (Cons!44300 (tag!8066 (h!49723 l!6462)) lt!1468305)) e!2551340)))

(declare-fun b!4112327 () Bool)

(declare-fun e!2551341 () Bool)

(assert (=> b!4112327 (= e!2551340 e!2551341)))

(declare-fun res!1679963 () Bool)

(assert (=> b!4112327 (=> (not res!1679963) (not e!2551341))))

(assert (=> b!4112327 (= res!1679963 (not (contains!8880 (Cons!44300 (tag!8066 (h!49723 l!6462)) lt!1468305) (tag!8066 (h!49723 (t!340178 l!6462))))))))

(declare-fun b!4112328 () Bool)

(assert (=> b!4112328 (= e!2551341 (noDuplicateTag!2883 thiss!26878 (t!340178 (t!340178 l!6462)) (Cons!44300 (tag!8066 (h!49723 (t!340178 l!6462))) (Cons!44300 (tag!8066 (h!49723 l!6462)) lt!1468305))))))

(assert (= (and d!1219980 (not res!1679962)) b!4112327))

(assert (= (and b!4112327 res!1679963) b!4112328))

(declare-fun m!4713711 () Bool)

(assert (=> b!4112327 m!4713711))

(declare-fun m!4713713 () Bool)

(assert (=> b!4112328 m!4713713))

(assert (=> b!4112151 d!1219980))

(declare-fun bs!594372 () Bool)

(declare-fun d!1219982 () Bool)

(assert (= bs!594372 (and d!1219982 d!1219968)))

(declare-fun lambda!128495 () Int)

(assert (=> bs!594372 (= (and (= (toChars!9701 (transformation!7206 e1!99)) (toChars!9701 (transformation!7206 (h!49723 l!6462)))) (= (toValue!9842 (transformation!7206 e1!99)) (toValue!9842 (transformation!7206 (h!49723 l!6462))))) (= lambda!128495 lambda!128491))))

(declare-fun bs!594373 () Bool)

(assert (= bs!594373 (and d!1219982 d!1219974)))

(assert (=> bs!594373 (= (and (= (toChars!9701 (transformation!7206 e1!99)) (toChars!9701 (transformation!7206 e2!99))) (= (toValue!9842 (transformation!7206 e1!99)) (toValue!9842 (transformation!7206 e2!99)))) (= lambda!128495 lambda!128494))))

(assert (=> d!1219982 true))

(assert (=> d!1219982 (< (dynLambda!18946 order!23323 (toChars!9701 (transformation!7206 e1!99))) (dynLambda!18947 order!23325 lambda!128495))))

(assert (=> d!1219982 true))

(assert (=> d!1219982 (< (dynLambda!18943 order!23319 (toValue!9842 (transformation!7206 e1!99))) (dynLambda!18947 order!23325 lambda!128495))))

(assert (=> d!1219982 (= (semiInverseModEq!3106 (toChars!9701 (transformation!7206 e1!99)) (toValue!9842 (transformation!7206 e1!99))) (Forall!1538 lambda!128495))))

(declare-fun bs!594374 () Bool)

(assert (= bs!594374 d!1219982))

(declare-fun m!4713715 () Bool)

(assert (=> bs!594374 m!4713715))

(assert (=> d!1219904 d!1219982))

(declare-fun d!1219984 () Bool)

(declare-fun c!706904 () Bool)

(assert (=> d!1219984 (= c!706904 ((_ is Nil!44300) lt!1468302))))

(declare-fun e!2551342 () (InoxSet String!50929))

(assert (=> d!1219984 (= (foldLeft!5 lt!1468302 ((as const (Array String!50929 Bool)) false) lambda!128475) e!2551342)))

(declare-fun b!4112329 () Bool)

(assert (=> b!4112329 (= e!2551342 ((as const (Array String!50929 Bool)) false))))

(declare-fun b!4112330 () Bool)

(assert (=> b!4112330 (= e!2551342 (foldLeft!5 (t!340175 lt!1468302) (dynLambda!18945 lambda!128475 ((as const (Array String!50929 Bool)) false) (h!49720 lt!1468302)) lambda!128475))))

(assert (= (and d!1219984 c!706904) b!4112329))

(assert (= (and d!1219984 (not c!706904)) b!4112330))

(declare-fun b_lambda!120673 () Bool)

(assert (=> (not b_lambda!120673) (not b!4112330)))

(declare-fun m!4713717 () Bool)

(assert (=> b!4112330 m!4713717))

(assert (=> b!4112330 m!4713717))

(declare-fun m!4713719 () Bool)

(assert (=> b!4112330 m!4713719))

(assert (=> d!1219896 d!1219984))

(declare-fun d!1219986 () Bool)

(declare-fun c!706905 () Bool)

(assert (=> d!1219986 (= c!706905 ((_ is Nil!44300) (t!340175 lt!1468305)))))

(declare-fun e!2551343 () (InoxSet String!50929))

(assert (=> d!1219986 (= (content!6826 (t!340175 lt!1468305)) e!2551343)))

(declare-fun b!4112331 () Bool)

(assert (=> b!4112331 (= e!2551343 ((as const (Array String!50929 Bool)) false))))

(declare-fun b!4112332 () Bool)

(assert (=> b!4112332 (= e!2551343 ((_ map or) (store ((as const (Array String!50929 Bool)) false) (h!49720 (t!340175 lt!1468305)) true) (content!6826 (t!340175 (t!340175 lt!1468305)))))))

(assert (= (and d!1219986 c!706905) b!4112331))

(assert (= (and d!1219986 (not c!706905)) b!4112332))

(declare-fun m!4713721 () Bool)

(assert (=> b!4112332 m!4713721))

(declare-fun m!4713723 () Bool)

(assert (=> b!4112332 m!4713723))

(assert (=> b!4112136 d!1219986))

(declare-fun d!1219988 () Bool)

(declare-fun lt!1468315 () Bool)

(assert (=> d!1219988 (= lt!1468315 (select (content!6826 lt!1468305) (tag!8066 (h!49723 l!6462))))))

(declare-fun e!2551344 () Bool)

(assert (=> d!1219988 (= lt!1468315 e!2551344)))

(declare-fun res!1679965 () Bool)

(assert (=> d!1219988 (=> (not res!1679965) (not e!2551344))))

(assert (=> d!1219988 (= res!1679965 ((_ is Cons!44300) lt!1468305))))

(assert (=> d!1219988 (= (contains!8880 lt!1468305 (tag!8066 (h!49723 l!6462))) lt!1468315)))

(declare-fun b!4112333 () Bool)

(declare-fun e!2551345 () Bool)

(assert (=> b!4112333 (= e!2551344 e!2551345)))

(declare-fun res!1679964 () Bool)

(assert (=> b!4112333 (=> res!1679964 e!2551345)))

(assert (=> b!4112333 (= res!1679964 (= (h!49720 lt!1468305) (tag!8066 (h!49723 l!6462))))))

(declare-fun b!4112334 () Bool)

(assert (=> b!4112334 (= e!2551345 (contains!8880 (t!340175 lt!1468305) (tag!8066 (h!49723 l!6462))))))

(assert (= (and d!1219988 res!1679965) b!4112333))

(assert (= (and b!4112333 (not res!1679964)) b!4112334))

(assert (=> d!1219988 m!4713499))

(declare-fun m!4713725 () Bool)

(assert (=> d!1219988 m!4713725))

(declare-fun m!4713727 () Bool)

(assert (=> b!4112334 m!4713727))

(assert (=> b!4112150 d!1219988))

(declare-fun b!4112335 () Bool)

(declare-fun e!2551346 () Bool)

(assert (=> b!4112335 (= e!2551346 tp_is_empty!21169)))

(declare-fun b!4112338 () Bool)

(declare-fun tp!1251125 () Bool)

(declare-fun tp!1251127 () Bool)

(assert (=> b!4112338 (= e!2551346 (and tp!1251125 tp!1251127))))

(declare-fun b!4112336 () Bool)

(declare-fun tp!1251128 () Bool)

(declare-fun tp!1251126 () Bool)

(assert (=> b!4112336 (= e!2551346 (and tp!1251128 tp!1251126))))

(assert (=> b!4112193 (= tp!1251036 e!2551346)))

(declare-fun b!4112337 () Bool)

(declare-fun tp!1251129 () Bool)

(assert (=> b!4112337 (= e!2551346 tp!1251129)))

(assert (= (and b!4112193 ((_ is ElementMatch!12111) (regOne!24735 (regex!7206 (h!49723 l!6462))))) b!4112335))

(assert (= (and b!4112193 ((_ is Concat!19548) (regOne!24735 (regex!7206 (h!49723 l!6462))))) b!4112336))

(assert (= (and b!4112193 ((_ is Star!12111) (regOne!24735 (regex!7206 (h!49723 l!6462))))) b!4112337))

(assert (= (and b!4112193 ((_ is Union!12111) (regOne!24735 (regex!7206 (h!49723 l!6462))))) b!4112338))

(declare-fun b!4112339 () Bool)

(declare-fun e!2551347 () Bool)

(assert (=> b!4112339 (= e!2551347 tp_is_empty!21169)))

(declare-fun b!4112342 () Bool)

(declare-fun tp!1251130 () Bool)

(declare-fun tp!1251132 () Bool)

(assert (=> b!4112342 (= e!2551347 (and tp!1251130 tp!1251132))))

(declare-fun b!4112340 () Bool)

(declare-fun tp!1251133 () Bool)

(declare-fun tp!1251131 () Bool)

(assert (=> b!4112340 (= e!2551347 (and tp!1251133 tp!1251131))))

(assert (=> b!4112193 (= tp!1251038 e!2551347)))

(declare-fun b!4112341 () Bool)

(declare-fun tp!1251134 () Bool)

(assert (=> b!4112341 (= e!2551347 tp!1251134)))

(assert (= (and b!4112193 ((_ is ElementMatch!12111) (regTwo!24735 (regex!7206 (h!49723 l!6462))))) b!4112339))

(assert (= (and b!4112193 ((_ is Concat!19548) (regTwo!24735 (regex!7206 (h!49723 l!6462))))) b!4112340))

(assert (= (and b!4112193 ((_ is Star!12111) (regTwo!24735 (regex!7206 (h!49723 l!6462))))) b!4112341))

(assert (= (and b!4112193 ((_ is Union!12111) (regTwo!24735 (regex!7206 (h!49723 l!6462))))) b!4112342))

(declare-fun b!4112343 () Bool)

(declare-fun e!2551348 () Bool)

(assert (=> b!4112343 (= e!2551348 tp_is_empty!21169)))

(declare-fun b!4112346 () Bool)

(declare-fun tp!1251135 () Bool)

(declare-fun tp!1251137 () Bool)

(assert (=> b!4112346 (= e!2551348 (and tp!1251135 tp!1251137))))

(declare-fun b!4112344 () Bool)

(declare-fun tp!1251138 () Bool)

(declare-fun tp!1251136 () Bool)

(assert (=> b!4112344 (= e!2551348 (and tp!1251138 tp!1251136))))

(assert (=> b!4112174 (= tp!1251014 e!2551348)))

(declare-fun b!4112345 () Bool)

(declare-fun tp!1251139 () Bool)

(assert (=> b!4112345 (= e!2551348 tp!1251139)))

(assert (= (and b!4112174 ((_ is ElementMatch!12111) (regOne!24735 (regex!7206 e2!99)))) b!4112343))

(assert (= (and b!4112174 ((_ is Concat!19548) (regOne!24735 (regex!7206 e2!99)))) b!4112344))

(assert (= (and b!4112174 ((_ is Star!12111) (regOne!24735 (regex!7206 e2!99)))) b!4112345))

(assert (= (and b!4112174 ((_ is Union!12111) (regOne!24735 (regex!7206 e2!99)))) b!4112346))

(declare-fun b!4112347 () Bool)

(declare-fun e!2551349 () Bool)

(assert (=> b!4112347 (= e!2551349 tp_is_empty!21169)))

(declare-fun b!4112350 () Bool)

(declare-fun tp!1251140 () Bool)

(declare-fun tp!1251142 () Bool)

(assert (=> b!4112350 (= e!2551349 (and tp!1251140 tp!1251142))))

(declare-fun b!4112348 () Bool)

(declare-fun tp!1251143 () Bool)

(declare-fun tp!1251141 () Bool)

(assert (=> b!4112348 (= e!2551349 (and tp!1251143 tp!1251141))))

(assert (=> b!4112174 (= tp!1251016 e!2551349)))

(declare-fun b!4112349 () Bool)

(declare-fun tp!1251144 () Bool)

(assert (=> b!4112349 (= e!2551349 tp!1251144)))

(assert (= (and b!4112174 ((_ is ElementMatch!12111) (regTwo!24735 (regex!7206 e2!99)))) b!4112347))

(assert (= (and b!4112174 ((_ is Concat!19548) (regTwo!24735 (regex!7206 e2!99)))) b!4112348))

(assert (= (and b!4112174 ((_ is Star!12111) (regTwo!24735 (regex!7206 e2!99)))) b!4112349))

(assert (= (and b!4112174 ((_ is Union!12111) (regTwo!24735 (regex!7206 e2!99)))) b!4112350))

(declare-fun b!4112351 () Bool)

(declare-fun e!2551350 () Bool)

(assert (=> b!4112351 (= e!2551350 tp_is_empty!21169)))

(declare-fun b!4112354 () Bool)

(declare-fun tp!1251145 () Bool)

(declare-fun tp!1251147 () Bool)

(assert (=> b!4112354 (= e!2551350 (and tp!1251145 tp!1251147))))

(declare-fun b!4112352 () Bool)

(declare-fun tp!1251148 () Bool)

(declare-fun tp!1251146 () Bool)

(assert (=> b!4112352 (= e!2551350 (and tp!1251148 tp!1251146))))

(assert (=> b!4112178 (= tp!1251019 e!2551350)))

(declare-fun b!4112353 () Bool)

(declare-fun tp!1251149 () Bool)

(assert (=> b!4112353 (= e!2551350 tp!1251149)))

(assert (= (and b!4112178 ((_ is ElementMatch!12111) (regOne!24735 (regex!7206 e1!99)))) b!4112351))

(assert (= (and b!4112178 ((_ is Concat!19548) (regOne!24735 (regex!7206 e1!99)))) b!4112352))

(assert (= (and b!4112178 ((_ is Star!12111) (regOne!24735 (regex!7206 e1!99)))) b!4112353))

(assert (= (and b!4112178 ((_ is Union!12111) (regOne!24735 (regex!7206 e1!99)))) b!4112354))

(declare-fun b!4112355 () Bool)

(declare-fun e!2551351 () Bool)

(assert (=> b!4112355 (= e!2551351 tp_is_empty!21169)))

(declare-fun b!4112358 () Bool)

(declare-fun tp!1251150 () Bool)

(declare-fun tp!1251152 () Bool)

(assert (=> b!4112358 (= e!2551351 (and tp!1251150 tp!1251152))))

(declare-fun b!4112356 () Bool)

(declare-fun tp!1251153 () Bool)

(declare-fun tp!1251151 () Bool)

(assert (=> b!4112356 (= e!2551351 (and tp!1251153 tp!1251151))))

(assert (=> b!4112178 (= tp!1251021 e!2551351)))

(declare-fun b!4112357 () Bool)

(declare-fun tp!1251154 () Bool)

(assert (=> b!4112357 (= e!2551351 tp!1251154)))

(assert (= (and b!4112178 ((_ is ElementMatch!12111) (regTwo!24735 (regex!7206 e1!99)))) b!4112355))

(assert (= (and b!4112178 ((_ is Concat!19548) (regTwo!24735 (regex!7206 e1!99)))) b!4112356))

(assert (= (and b!4112178 ((_ is Star!12111) (regTwo!24735 (regex!7206 e1!99)))) b!4112357))

(assert (= (and b!4112178 ((_ is Union!12111) (regTwo!24735 (regex!7206 e1!99)))) b!4112358))

(declare-fun b!4112359 () Bool)

(declare-fun e!2551352 () Bool)

(assert (=> b!4112359 (= e!2551352 tp_is_empty!21169)))

(declare-fun b!4112362 () Bool)

(declare-fun tp!1251155 () Bool)

(declare-fun tp!1251157 () Bool)

(assert (=> b!4112362 (= e!2551352 (and tp!1251155 tp!1251157))))

(declare-fun b!4112360 () Bool)

(declare-fun tp!1251158 () Bool)

(declare-fun tp!1251156 () Bool)

(assert (=> b!4112360 (= e!2551352 (and tp!1251158 tp!1251156))))

(assert (=> b!4112192 (= tp!1251040 e!2551352)))

(declare-fun b!4112361 () Bool)

(declare-fun tp!1251159 () Bool)

(assert (=> b!4112361 (= e!2551352 tp!1251159)))

(assert (= (and b!4112192 ((_ is ElementMatch!12111) (reg!12440 (regex!7206 (h!49723 l!6462))))) b!4112359))

(assert (= (and b!4112192 ((_ is Concat!19548) (reg!12440 (regex!7206 (h!49723 l!6462))))) b!4112360))

(assert (= (and b!4112192 ((_ is Star!12111) (reg!12440 (regex!7206 (h!49723 l!6462))))) b!4112361))

(assert (= (and b!4112192 ((_ is Union!12111) (reg!12440 (regex!7206 (h!49723 l!6462))))) b!4112362))

(declare-fun b!4112363 () Bool)

(declare-fun e!2551353 () Bool)

(assert (=> b!4112363 (= e!2551353 tp_is_empty!21169)))

(declare-fun b!4112366 () Bool)

(declare-fun tp!1251160 () Bool)

(declare-fun tp!1251162 () Bool)

(assert (=> b!4112366 (= e!2551353 (and tp!1251160 tp!1251162))))

(declare-fun b!4112364 () Bool)

(declare-fun tp!1251163 () Bool)

(declare-fun tp!1251161 () Bool)

(assert (=> b!4112364 (= e!2551353 (and tp!1251163 tp!1251161))))

(assert (=> b!4112173 (= tp!1251018 e!2551353)))

(declare-fun b!4112365 () Bool)

(declare-fun tp!1251164 () Bool)

(assert (=> b!4112365 (= e!2551353 tp!1251164)))

(assert (= (and b!4112173 ((_ is ElementMatch!12111) (reg!12440 (regex!7206 e2!99)))) b!4112363))

(assert (= (and b!4112173 ((_ is Concat!19548) (reg!12440 (regex!7206 e2!99)))) b!4112364))

(assert (= (and b!4112173 ((_ is Star!12111) (reg!12440 (regex!7206 e2!99)))) b!4112365))

(assert (= (and b!4112173 ((_ is Union!12111) (reg!12440 (regex!7206 e2!99)))) b!4112366))

(declare-fun b!4112367 () Bool)

(declare-fun e!2551354 () Bool)

(assert (=> b!4112367 (= e!2551354 tp_is_empty!21169)))

(declare-fun b!4112370 () Bool)

(declare-fun tp!1251165 () Bool)

(declare-fun tp!1251167 () Bool)

(assert (=> b!4112370 (= e!2551354 (and tp!1251165 tp!1251167))))

(declare-fun b!4112368 () Bool)

(declare-fun tp!1251168 () Bool)

(declare-fun tp!1251166 () Bool)

(assert (=> b!4112368 (= e!2551354 (and tp!1251168 tp!1251166))))

(assert (=> b!4112177 (= tp!1251023 e!2551354)))

(declare-fun b!4112369 () Bool)

(declare-fun tp!1251169 () Bool)

(assert (=> b!4112369 (= e!2551354 tp!1251169)))

(assert (= (and b!4112177 ((_ is ElementMatch!12111) (reg!12440 (regex!7206 e1!99)))) b!4112367))

(assert (= (and b!4112177 ((_ is Concat!19548) (reg!12440 (regex!7206 e1!99)))) b!4112368))

(assert (= (and b!4112177 ((_ is Star!12111) (reg!12440 (regex!7206 e1!99)))) b!4112369))

(assert (= (and b!4112177 ((_ is Union!12111) (reg!12440 (regex!7206 e1!99)))) b!4112370))

(declare-fun b!4112371 () Bool)

(declare-fun e!2551355 () Bool)

(assert (=> b!4112371 (= e!2551355 tp_is_empty!21169)))

(declare-fun b!4112374 () Bool)

(declare-fun tp!1251170 () Bool)

(declare-fun tp!1251172 () Bool)

(assert (=> b!4112374 (= e!2551355 (and tp!1251170 tp!1251172))))

(declare-fun b!4112372 () Bool)

(declare-fun tp!1251173 () Bool)

(declare-fun tp!1251171 () Bool)

(assert (=> b!4112372 (= e!2551355 (and tp!1251173 tp!1251171))))

(assert (=> b!4112191 (= tp!1251039 e!2551355)))

(declare-fun b!4112373 () Bool)

(declare-fun tp!1251174 () Bool)

(assert (=> b!4112373 (= e!2551355 tp!1251174)))

(assert (= (and b!4112191 ((_ is ElementMatch!12111) (regOne!24734 (regex!7206 (h!49723 l!6462))))) b!4112371))

(assert (= (and b!4112191 ((_ is Concat!19548) (regOne!24734 (regex!7206 (h!49723 l!6462))))) b!4112372))

(assert (= (and b!4112191 ((_ is Star!12111) (regOne!24734 (regex!7206 (h!49723 l!6462))))) b!4112373))

(assert (= (and b!4112191 ((_ is Union!12111) (regOne!24734 (regex!7206 (h!49723 l!6462))))) b!4112374))

(declare-fun b!4112375 () Bool)

(declare-fun e!2551356 () Bool)

(assert (=> b!4112375 (= e!2551356 tp_is_empty!21169)))

(declare-fun b!4112378 () Bool)

(declare-fun tp!1251175 () Bool)

(declare-fun tp!1251177 () Bool)

(assert (=> b!4112378 (= e!2551356 (and tp!1251175 tp!1251177))))

(declare-fun b!4112376 () Bool)

(declare-fun tp!1251178 () Bool)

(declare-fun tp!1251176 () Bool)

(assert (=> b!4112376 (= e!2551356 (and tp!1251178 tp!1251176))))

(assert (=> b!4112191 (= tp!1251037 e!2551356)))

(declare-fun b!4112377 () Bool)

(declare-fun tp!1251179 () Bool)

(assert (=> b!4112377 (= e!2551356 tp!1251179)))

(assert (= (and b!4112191 ((_ is ElementMatch!12111) (regTwo!24734 (regex!7206 (h!49723 l!6462))))) b!4112375))

(assert (= (and b!4112191 ((_ is Concat!19548) (regTwo!24734 (regex!7206 (h!49723 l!6462))))) b!4112376))

(assert (= (and b!4112191 ((_ is Star!12111) (regTwo!24734 (regex!7206 (h!49723 l!6462))))) b!4112377))

(assert (= (and b!4112191 ((_ is Union!12111) (regTwo!24734 (regex!7206 (h!49723 l!6462))))) b!4112378))

(declare-fun b!4112379 () Bool)

(declare-fun e!2551357 () Bool)

(assert (=> b!4112379 (= e!2551357 tp_is_empty!21169)))

(declare-fun b!4112382 () Bool)

(declare-fun tp!1251180 () Bool)

(declare-fun tp!1251182 () Bool)

(assert (=> b!4112382 (= e!2551357 (and tp!1251180 tp!1251182))))

(declare-fun b!4112380 () Bool)

(declare-fun tp!1251183 () Bool)

(declare-fun tp!1251181 () Bool)

(assert (=> b!4112380 (= e!2551357 (and tp!1251183 tp!1251181))))

(assert (=> b!4112172 (= tp!1251017 e!2551357)))

(declare-fun b!4112381 () Bool)

(declare-fun tp!1251184 () Bool)

(assert (=> b!4112381 (= e!2551357 tp!1251184)))

(assert (= (and b!4112172 ((_ is ElementMatch!12111) (regOne!24734 (regex!7206 e2!99)))) b!4112379))

(assert (= (and b!4112172 ((_ is Concat!19548) (regOne!24734 (regex!7206 e2!99)))) b!4112380))

(assert (= (and b!4112172 ((_ is Star!12111) (regOne!24734 (regex!7206 e2!99)))) b!4112381))

(assert (= (and b!4112172 ((_ is Union!12111) (regOne!24734 (regex!7206 e2!99)))) b!4112382))

(declare-fun b!4112383 () Bool)

(declare-fun e!2551358 () Bool)

(assert (=> b!4112383 (= e!2551358 tp_is_empty!21169)))

(declare-fun b!4112386 () Bool)

(declare-fun tp!1251185 () Bool)

(declare-fun tp!1251187 () Bool)

(assert (=> b!4112386 (= e!2551358 (and tp!1251185 tp!1251187))))

(declare-fun b!4112384 () Bool)

(declare-fun tp!1251188 () Bool)

(declare-fun tp!1251186 () Bool)

(assert (=> b!4112384 (= e!2551358 (and tp!1251188 tp!1251186))))

(assert (=> b!4112172 (= tp!1251015 e!2551358)))

(declare-fun b!4112385 () Bool)

(declare-fun tp!1251189 () Bool)

(assert (=> b!4112385 (= e!2551358 tp!1251189)))

(assert (= (and b!4112172 ((_ is ElementMatch!12111) (regTwo!24734 (regex!7206 e2!99)))) b!4112383))

(assert (= (and b!4112172 ((_ is Concat!19548) (regTwo!24734 (regex!7206 e2!99)))) b!4112384))

(assert (= (and b!4112172 ((_ is Star!12111) (regTwo!24734 (regex!7206 e2!99)))) b!4112385))

(assert (= (and b!4112172 ((_ is Union!12111) (regTwo!24734 (regex!7206 e2!99)))) b!4112386))

(declare-fun b!4112387 () Bool)

(declare-fun e!2551359 () Bool)

(assert (=> b!4112387 (= e!2551359 tp_is_empty!21169)))

(declare-fun b!4112390 () Bool)

(declare-fun tp!1251190 () Bool)

(declare-fun tp!1251192 () Bool)

(assert (=> b!4112390 (= e!2551359 (and tp!1251190 tp!1251192))))

(declare-fun b!4112388 () Bool)

(declare-fun tp!1251193 () Bool)

(declare-fun tp!1251191 () Bool)

(assert (=> b!4112388 (= e!2551359 (and tp!1251193 tp!1251191))))

(assert (=> b!4112176 (= tp!1251022 e!2551359)))

(declare-fun b!4112389 () Bool)

(declare-fun tp!1251194 () Bool)

(assert (=> b!4112389 (= e!2551359 tp!1251194)))

(assert (= (and b!4112176 ((_ is ElementMatch!12111) (regOne!24734 (regex!7206 e1!99)))) b!4112387))

(assert (= (and b!4112176 ((_ is Concat!19548) (regOne!24734 (regex!7206 e1!99)))) b!4112388))

(assert (= (and b!4112176 ((_ is Star!12111) (regOne!24734 (regex!7206 e1!99)))) b!4112389))

(assert (= (and b!4112176 ((_ is Union!12111) (regOne!24734 (regex!7206 e1!99)))) b!4112390))

(declare-fun b!4112391 () Bool)

(declare-fun e!2551360 () Bool)

(assert (=> b!4112391 (= e!2551360 tp_is_empty!21169)))

(declare-fun b!4112394 () Bool)

(declare-fun tp!1251195 () Bool)

(declare-fun tp!1251197 () Bool)

(assert (=> b!4112394 (= e!2551360 (and tp!1251195 tp!1251197))))

(declare-fun b!4112392 () Bool)

(declare-fun tp!1251198 () Bool)

(declare-fun tp!1251196 () Bool)

(assert (=> b!4112392 (= e!2551360 (and tp!1251198 tp!1251196))))

(assert (=> b!4112176 (= tp!1251020 e!2551360)))

(declare-fun b!4112393 () Bool)

(declare-fun tp!1251199 () Bool)

(assert (=> b!4112393 (= e!2551360 tp!1251199)))

(assert (= (and b!4112176 ((_ is ElementMatch!12111) (regTwo!24734 (regex!7206 e1!99)))) b!4112391))

(assert (= (and b!4112176 ((_ is Concat!19548) (regTwo!24734 (regex!7206 e1!99)))) b!4112392))

(assert (= (and b!4112176 ((_ is Star!12111) (regTwo!24734 (regex!7206 e1!99)))) b!4112393))

(assert (= (and b!4112176 ((_ is Union!12111) (regTwo!24734 (regex!7206 e1!99)))) b!4112394))

(declare-fun b!4112395 () Bool)

(declare-fun e!2551361 () Bool)

(assert (=> b!4112395 (= e!2551361 tp_is_empty!21169)))

(declare-fun b!4112398 () Bool)

(declare-fun tp!1251200 () Bool)

(declare-fun tp!1251202 () Bool)

(assert (=> b!4112398 (= e!2551361 (and tp!1251200 tp!1251202))))

(declare-fun b!4112396 () Bool)

(declare-fun tp!1251203 () Bool)

(declare-fun tp!1251201 () Bool)

(assert (=> b!4112396 (= e!2551361 (and tp!1251203 tp!1251201))))

(assert (=> b!4112188 (= tp!1251033 e!2551361)))

(declare-fun b!4112397 () Bool)

(declare-fun tp!1251204 () Bool)

(assert (=> b!4112397 (= e!2551361 tp!1251204)))

(assert (= (and b!4112188 ((_ is ElementMatch!12111) (regex!7206 (h!49723 (t!340178 l!6462))))) b!4112395))

(assert (= (and b!4112188 ((_ is Concat!19548) (regex!7206 (h!49723 (t!340178 l!6462))))) b!4112396))

(assert (= (and b!4112188 ((_ is Star!12111) (regex!7206 (h!49723 (t!340178 l!6462))))) b!4112397))

(assert (= (and b!4112188 ((_ is Union!12111) (regex!7206 (h!49723 (t!340178 l!6462))))) b!4112398))

(declare-fun b!4112401 () Bool)

(declare-fun b_free!115723 () Bool)

(declare-fun b_next!116427 () Bool)

(assert (=> b!4112401 (= b_free!115723 (not b_next!116427))))

(declare-fun tp!1251205 () Bool)

(declare-fun b_and!317609 () Bool)

(assert (=> b!4112401 (= tp!1251205 b_and!317609)))

(declare-fun b_free!115725 () Bool)

(declare-fun b_next!116429 () Bool)

(assert (=> b!4112401 (= b_free!115725 (not b_next!116429))))

(declare-fun tp!1251207 () Bool)

(declare-fun b_and!317611 () Bool)

(assert (=> b!4112401 (= tp!1251207 b_and!317611)))

(declare-fun e!2551362 () Bool)

(assert (=> b!4112401 (= e!2551362 (and tp!1251205 tp!1251207))))

(declare-fun e!2551364 () Bool)

(declare-fun tp!1251206 () Bool)

(declare-fun b!4112400 () Bool)

(assert (=> b!4112400 (= e!2551364 (and tp!1251206 (inv!58924 (tag!8066 (h!49723 (t!340178 (t!340178 l!6462))))) (inv!58926 (transformation!7206 (h!49723 (t!340178 (t!340178 l!6462))))) e!2551362))))

(declare-fun b!4112399 () Bool)

(declare-fun e!2551363 () Bool)

(declare-fun tp!1251208 () Bool)

(assert (=> b!4112399 (= e!2551363 (and e!2551364 tp!1251208))))

(assert (=> b!4112187 (= tp!1251035 e!2551363)))

(assert (= b!4112400 b!4112401))

(assert (= b!4112399 b!4112400))

(assert (= (and b!4112187 ((_ is Cons!44303) (t!340178 (t!340178 l!6462)))) b!4112399))

(declare-fun m!4713729 () Bool)

(assert (=> b!4112400 m!4713729))

(declare-fun m!4713731 () Bool)

(assert (=> b!4112400 m!4713731))

(declare-fun b_lambda!120675 () Bool)

(assert (= b_lambda!120671 (or d!1219894 b_lambda!120675)))

(declare-fun bs!594375 () Bool)

(declare-fun d!1219990 () Bool)

(assert (= bs!594375 (and d!1219990 d!1219894)))

(assert (=> bs!594375 (= (dynLambda!18945 lambda!128474 ((as const (Array String!50929 Bool)) false) (h!49720 lt!1468305)) ((_ map or) ((as const (Array String!50929 Bool)) false) (store ((as const (Array String!50929 Bool)) false) (h!49720 lt!1468305) true)))))

(assert (=> bs!594375 m!4713561))

(assert (=> b!4112307 d!1219990))

(declare-fun b_lambda!120677 () Bool)

(assert (= b_lambda!120673 (or d!1219896 b_lambda!120677)))

(declare-fun bs!594376 () Bool)

(declare-fun d!1219992 () Bool)

(assert (= bs!594376 (and d!1219992 d!1219896)))

(assert (=> bs!594376 (= (dynLambda!18945 lambda!128475 ((as const (Array String!50929 Bool)) false) (h!49720 lt!1468302)) ((_ map or) ((as const (Array String!50929 Bool)) false) (store ((as const (Array String!50929 Bool)) false) (h!49720 lt!1468302) true)))))

(assert (=> bs!594376 m!4713565))

(assert (=> b!4112330 d!1219992))

(check-sat b_and!317593 (not b!4112344) (not b!4112308) (not b!4112392) (not b!4112340) (not b!4112337) (not b!4112366) (not b_next!116411) (not b!4112384) (not b!4112350) tp_is_empty!21169 (not b!4112328) (not d!1219988) (not b_next!116419) (not d!1219978) (not b_next!116413) (not b!4112400) (not b!4112315) (not b_next!116427) (not d!1219970) (not b!4112360) (not b!4112326) (not b!4112364) b_and!317585 (not b!4112336) (not b!4112394) (not b!4112393) (not b!4112368) (not b!4112385) (not b!4112361) (not b!4112307) b_and!317609 (not b!4112334) (not b!4112348) (not b!4112369) b_and!317601 (not b!4112316) (not b!4112353) b_and!317591 (not b!4112352) (not b!4112382) (not b!4112357) (not b!4112377) (not b!4112358) (not b!4112356) (not b_next!116421) (not b!4112346) (not b_next!116405) (not d!1219920) (not b!4112386) b_and!317587 (not b!4112378) (not b!4112321) (not d!1219974) b_and!317595 (not d!1219982) b_and!317611 (not b!4112381) (not d!1219972) (not b_next!116429) (not b!4112327) (not b_next!116407) b_and!317603 (not b_lambda!120677) (not b!4112374) (not b_next!116403) (not b!4112317) (not b!4112342) (not b!4112399) (not b!4112341) (not b!4112370) (not b!4112372) (not b_next!116409) b_and!317589 (not b!4112338) (not d!1219966) (not b!4112362) (not b!4112309) (not b!4112398) (not b!4112380) (not d!1219960) (not b!4112330) (not d!1219968) (not b!4112332) (not b!4112345) (not b!4112349) (not b_lambda!120675) (not b!4112373) (not b!4112389) (not b!4112390) (not b!4112388) (not b!4112397) (not b!4112365) (not b!4112376) (not b!4112354) (not b!4112319) (not b!4112396))
(check-sat (not b_next!116411) (not b_next!116419) b_and!317585 b_and!317609 b_and!317601 b_and!317591 (not b_next!116421) b_and!317593 (not b_next!116405) b_and!317587 b_and!317595 (not b_next!116403) (not b_next!116413) (not b_next!116427) b_and!317611 (not b_next!116429) (not b_next!116407) b_and!317603 (not b_next!116409) b_and!317589)
