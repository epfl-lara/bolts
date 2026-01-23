; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!397230 () Bool)

(assert start!397230)

(declare-fun b!4167163 () Bool)

(declare-fun b_free!120375 () Bool)

(declare-fun b_next!121079 () Bool)

(assert (=> b!4167163 (= b_free!120375 (not b_next!121079))))

(declare-fun tp!1272814 () Bool)

(declare-fun b_and!325077 () Bool)

(assert (=> b!4167163 (= tp!1272814 b_and!325077)))

(declare-fun b_free!120377 () Bool)

(declare-fun b_next!121081 () Bool)

(assert (=> b!4167163 (= b_free!120377 (not b_next!121081))))

(declare-fun tp!1272811 () Bool)

(declare-fun b_and!325079 () Bool)

(assert (=> b!4167163 (= tp!1272811 b_and!325079)))

(declare-fun b!4167177 () Bool)

(declare-fun b_free!120379 () Bool)

(declare-fun b_next!121083 () Bool)

(assert (=> b!4167177 (= b_free!120379 (not b_next!121083))))

(declare-fun tp!1272815 () Bool)

(declare-fun b_and!325081 () Bool)

(assert (=> b!4167177 (= tp!1272815 b_and!325081)))

(declare-fun b_free!120381 () Bool)

(declare-fun b_next!121085 () Bool)

(assert (=> b!4167177 (= b_free!120381 (not b_next!121085))))

(declare-fun tp!1272817 () Bool)

(declare-fun b_and!325083 () Bool)

(assert (=> b!4167177 (= tp!1272817 b_and!325083)))

(declare-fun b!4167171 () Bool)

(declare-fun b_free!120383 () Bool)

(declare-fun b_next!121087 () Bool)

(assert (=> b!4167171 (= b_free!120383 (not b_next!121087))))

(declare-fun tp!1272822 () Bool)

(declare-fun b_and!325085 () Bool)

(assert (=> b!4167171 (= tp!1272822 b_and!325085)))

(declare-fun b_free!120385 () Bool)

(declare-fun b_next!121089 () Bool)

(assert (=> b!4167171 (= b_free!120385 (not b_next!121089))))

(declare-fun tp!1272812 () Bool)

(declare-fun b_and!325087 () Bool)

(assert (=> b!4167171 (= tp!1272812 b_and!325087)))

(declare-fun e!2586990 () Bool)

(assert (=> b!4167163 (= e!2586990 (and tp!1272814 tp!1272811))))

(declare-fun b!4167164 () Bool)

(declare-fun e!2586981 () Bool)

(declare-fun e!2586983 () Bool)

(declare-fun tp!1272818 () Bool)

(assert (=> b!4167164 (= e!2586981 (and e!2586983 tp!1272818))))

(declare-fun b!4167165 () Bool)

(declare-fun e!2586978 () Bool)

(declare-fun tp_is_empty!21881 () Bool)

(declare-fun tp!1272820 () Bool)

(assert (=> b!4167165 (= e!2586978 (and tp_is_empty!21881 tp!1272820))))

(declare-fun b!4167167 () Bool)

(declare-fun res!1707267 () Bool)

(declare-fun e!2586985 () Bool)

(assert (=> b!4167167 (=> (not res!1707267) (not e!2586985))))

(declare-datatypes ((LexerInterface!7147 0))(
  ( (LexerInterfaceExt!7144 (__x!27789 Int)) (Lexer!7145) )
))
(declare-fun thiss!25889 () LexerInterface!7147)

(declare-datatypes ((C!25108 0))(
  ( (C!25109 (val!14716 Int)) )
))
(declare-datatypes ((List!45749 0))(
  ( (Nil!45625) (Cons!45625 (h!51045 C!25108) (t!344056 List!45749)) )
))
(declare-datatypes ((IArray!27535 0))(
  ( (IArray!27536 (innerList!13825 List!45749)) )
))
(declare-datatypes ((Conc!13765 0))(
  ( (Node!13765 (left!34016 Conc!13765) (right!34346 Conc!13765) (csize!27760 Int) (cheight!13976 Int)) (Leaf!21285 (xs!17071 IArray!27535) (csize!27761 Int)) (Empty!13765) )
))
(declare-datatypes ((List!45750 0))(
  ( (Nil!45626) (Cons!45626 (h!51046 (_ BitVec 16)) (t!344057 List!45750)) )
))
(declare-datatypes ((BalanceConc!27124 0))(
  ( (BalanceConc!27125 (c!712502 Conc!13765)) )
))
(declare-datatypes ((TokenValue!7784 0))(
  ( (FloatLiteralValue!15568 (text!54933 List!45750)) (TokenValueExt!7783 (__x!27790 Int)) (Broken!38920 (value!235807 List!45750)) (Object!7907) (End!7784) (Def!7784) (Underscore!7784) (Match!7784) (Else!7784) (Error!7784) (Case!7784) (If!7784) (Extends!7784) (Abstract!7784) (Class!7784) (Val!7784) (DelimiterValue!15568 (del!7844 List!45750)) (KeywordValue!7790 (value!235808 List!45750)) (CommentValue!15568 (value!235809 List!45750)) (WhitespaceValue!15568 (value!235810 List!45750)) (IndentationValue!7784 (value!235811 List!45750)) (String!52785) (Int32!7784) (Broken!38921 (value!235812 List!45750)) (Boolean!7785) (Unit!64702) (OperatorValue!7787 (op!7844 List!45750)) (IdentifierValue!15568 (value!235813 List!45750)) (IdentifierValue!15569 (value!235814 List!45750)) (WhitespaceValue!15569 (value!235815 List!45750)) (True!15568) (False!15568) (Broken!38922 (value!235816 List!45750)) (Broken!38923 (value!235817 List!45750)) (True!15569) (RightBrace!7784) (RightBracket!7784) (Colon!7784) (Null!7784) (Comma!7784) (LeftBracket!7784) (False!15569) (LeftBrace!7784) (ImaginaryLiteralValue!7784 (text!54934 List!45750)) (StringLiteralValue!23352 (value!235818 List!45750)) (EOFValue!7784 (value!235819 List!45750)) (IdentValue!7784 (value!235820 List!45750)) (DelimiterValue!15569 (value!235821 List!45750)) (DedentValue!7784 (value!235822 List!45750)) (NewLineValue!7784 (value!235823 List!45750)) (IntegerValue!23352 (value!235824 (_ BitVec 32)) (text!54935 List!45750)) (IntegerValue!23353 (value!235825 Int) (text!54936 List!45750)) (Times!7784) (Or!7784) (Equal!7784) (Minus!7784) (Broken!38924 (value!235826 List!45750)) (And!7784) (Div!7784) (LessEqual!7784) (Mod!7784) (Concat!20243) (Not!7784) (Plus!7784) (SpaceValue!7784 (value!235827 List!45750)) (IntegerValue!23354 (value!235828 Int) (text!54937 List!45750)) (StringLiteralValue!23353 (text!54938 List!45750)) (FloatLiteralValue!15569 (text!54939 List!45750)) (BytesLiteralValue!7784 (value!235829 List!45750)) (CommentValue!15569 (value!235830 List!45750)) (StringLiteralValue!23354 (value!235831 List!45750)) (ErrorTokenValue!7784 (msg!7845 List!45750)) )
))
(declare-datatypes ((TokenValueInjection!14996 0))(
  ( (TokenValueInjection!14997 (toValue!10230 Int) (toChars!10089 Int)) )
))
(declare-datatypes ((Regex!12459 0))(
  ( (ElementMatch!12459 (c!712503 C!25108)) (Concat!20244 (regOne!25430 Regex!12459) (regTwo!25430 Regex!12459)) (EmptyExpr!12459) (Star!12459 (reg!12788 Regex!12459)) (EmptyLang!12459) (Union!12459 (regOne!25431 Regex!12459) (regTwo!25431 Regex!12459)) )
))
(declare-datatypes ((String!52786 0))(
  ( (String!52787 (value!235832 String)) )
))
(declare-datatypes ((Rule!14908 0))(
  ( (Rule!14909 (regex!7554 Regex!12459) (tag!8418 String!52786) (isSeparator!7554 Bool) (transformation!7554 TokenValueInjection!14996)) )
))
(declare-datatypes ((List!45751 0))(
  ( (Nil!45627) (Cons!45627 (h!51047 Rule!14908) (t!344058 List!45751)) )
))
(declare-fun rules!3820 () List!45751)

(declare-fun rulesInvariant!6360 (LexerInterface!7147 List!45751) Bool)

(assert (=> b!4167167 (= res!1707267 (rulesInvariant!6360 thiss!25889 rules!3820))))

(declare-fun b!4167168 () Bool)

(declare-fun e!2586987 () Bool)

(assert (=> b!4167168 (= e!2586985 (not e!2586987))))

(declare-fun res!1707266 () Bool)

(assert (=> b!4167168 (=> res!1707266 e!2586987)))

(declare-fun r!4097 () Rule!14908)

(declare-fun p!2942 () List!45749)

(declare-fun matchR!6200 (Regex!12459 List!45749) Bool)

(assert (=> b!4167168 (= res!1707266 (not (matchR!6200 (regex!7554 r!4097) p!2942)))))

(declare-fun ruleValid!3276 (LexerInterface!7147 Rule!14908) Bool)

(assert (=> b!4167168 (ruleValid!3276 thiss!25889 r!4097)))

(declare-datatypes ((Unit!64703 0))(
  ( (Unit!64704) )
))
(declare-fun lt!1484288 () Unit!64703)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2314 (LexerInterface!7147 Rule!14908 List!45751) Unit!64703)

(assert (=> b!4167168 (= lt!1484288 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2314 thiss!25889 r!4097 rules!3820))))

(declare-fun e!2586980 () Bool)

(declare-fun b!4167169 () Bool)

(declare-fun tp!1272816 () Bool)

(declare-fun inv!60148 (String!52786) Bool)

(declare-fun inv!60151 (TokenValueInjection!14996) Bool)

(assert (=> b!4167169 (= e!2586980 (and tp!1272816 (inv!60148 (tag!8418 r!4097)) (inv!60151 (transformation!7554 r!4097)) e!2586990))))

(declare-fun b!4167170 () Bool)

(declare-fun e!2586984 () Bool)

(declare-fun tp!1272821 () Bool)

(assert (=> b!4167170 (= e!2586984 (and tp_is_empty!21881 tp!1272821))))

(declare-fun e!2586986 () Bool)

(assert (=> b!4167171 (= e!2586986 (and tp!1272822 tp!1272812))))

(declare-fun b!4167172 () Bool)

(declare-fun e!2586979 () Bool)

(declare-fun tp!1272819 () Bool)

(assert (=> b!4167172 (= e!2586979 (and tp_is_empty!21881 tp!1272819))))

(declare-fun tp!1272813 () Bool)

(declare-fun e!2586989 () Bool)

(declare-fun b!4167173 () Bool)

(declare-fun rBis!161 () Rule!14908)

(assert (=> b!4167173 (= e!2586989 (and tp!1272813 (inv!60148 (tag!8418 rBis!161)) (inv!60151 (transformation!7554 rBis!161)) e!2586986))))

(declare-fun b!4167174 () Bool)

(declare-fun res!1707268 () Bool)

(assert (=> b!4167174 (=> (not res!1707268) (not e!2586985))))

(declare-fun contains!9353 (List!45751 Rule!14908) Bool)

(assert (=> b!4167174 (= res!1707268 (contains!9353 rules!3820 rBis!161))))

(declare-fun b!4167175 () Bool)

(declare-fun res!1707265 () Bool)

(declare-fun e!2586976 () Bool)

(assert (=> b!4167175 (=> res!1707265 e!2586976)))

(declare-fun pBis!100 () List!45749)

(declare-fun lt!1484292 () Int)

(declare-fun size!33513 (List!45749) Int)

(assert (=> b!4167175 (= res!1707265 (<= (size!33513 pBis!100) lt!1484292))))

(declare-fun b!4167176 () Bool)

(declare-fun res!1707262 () Bool)

(assert (=> b!4167176 (=> (not res!1707262) (not e!2586985))))

(declare-fun input!3316 () List!45749)

(declare-fun isPrefix!4411 (List!45749 List!45749) Bool)

(assert (=> b!4167176 (= res!1707262 (isPrefix!4411 pBis!100 input!3316))))

(declare-fun e!2586988 () Bool)

(assert (=> b!4167177 (= e!2586988 (and tp!1272815 tp!1272817))))

(declare-fun b!4167178 () Bool)

(assert (=> b!4167178 (= e!2586987 e!2586976)))

(declare-fun res!1707264 () Bool)

(assert (=> b!4167178 (=> res!1707264 e!2586976)))

(declare-datatypes ((Token!13846 0))(
  ( (Token!13847 (value!235833 TokenValue!7784) (rule!10606 Rule!14908) (size!33514 Int) (originalCharacters!7954 List!45749)) )
))
(declare-fun lt!1484287 () Token!13846)

(declare-datatypes ((tuple2!43530 0))(
  ( (tuple2!43531 (_1!24899 Token!13846) (_2!24899 List!45749)) )
))
(declare-datatypes ((Option!9762 0))(
  ( (None!9761) (Some!9761 (v!40545 tuple2!43530)) )
))
(declare-fun maxPrefixOneRule!3170 (LexerInterface!7147 Rule!14908 List!45749) Option!9762)

(declare-fun getSuffix!2718 (List!45749 List!45749) List!45749)

(assert (=> b!4167178 (= res!1707264 (not (= (maxPrefixOneRule!3170 thiss!25889 r!4097 input!3316) (Some!9761 (tuple2!43531 lt!1484287 (getSuffix!2718 input!3316 p!2942))))))))

(declare-fun lt!1484290 () TokenValue!7784)

(assert (=> b!4167178 (= lt!1484287 (Token!13847 lt!1484290 r!4097 lt!1484292 p!2942))))

(assert (=> b!4167178 (= lt!1484292 (size!33513 p!2942))))

(declare-fun lt!1484286 () BalanceConc!27124)

(declare-fun apply!10531 (TokenValueInjection!14996 BalanceConc!27124) TokenValue!7784)

(assert (=> b!4167178 (= lt!1484290 (apply!10531 (transformation!7554 r!4097) lt!1484286))))

(assert (=> b!4167178 (isPrefix!4411 input!3316 input!3316)))

(declare-fun lt!1484291 () Unit!64703)

(declare-fun lemmaIsPrefixRefl!2846 (List!45749 List!45749) Unit!64703)

(assert (=> b!4167178 (= lt!1484291 (lemmaIsPrefixRefl!2846 input!3316 input!3316))))

(declare-fun lt!1484289 () Unit!64703)

(declare-fun lemmaSemiInverse!2324 (TokenValueInjection!14996 BalanceConc!27124) Unit!64703)

(assert (=> b!4167178 (= lt!1484289 (lemmaSemiInverse!2324 (transformation!7554 r!4097) lt!1484286))))

(declare-fun seqFromList!5583 (List!45749) BalanceConc!27124)

(assert (=> b!4167178 (= lt!1484286 (seqFromList!5583 p!2942))))

(declare-fun res!1707260 () Bool)

(assert (=> start!397230 (=> (not res!1707260) (not e!2586985))))

(get-info :version)

(assert (=> start!397230 (= res!1707260 ((_ is Lexer!7145) thiss!25889))))

(assert (=> start!397230 e!2586985))

(assert (=> start!397230 e!2586984))

(assert (=> start!397230 e!2586981))

(assert (=> start!397230 e!2586978))

(assert (=> start!397230 e!2586979))

(assert (=> start!397230 true))

(assert (=> start!397230 e!2586989))

(assert (=> start!397230 e!2586980))

(declare-fun b!4167166 () Bool)

(declare-fun res!1707259 () Bool)

(assert (=> b!4167166 (=> (not res!1707259) (not e!2586985))))

(assert (=> b!4167166 (= res!1707259 (isPrefix!4411 p!2942 input!3316))))

(declare-fun b!4167179 () Bool)

(declare-fun inv!60152 (Token!13846) Bool)

(assert (=> b!4167179 (= e!2586976 (inv!60152 lt!1484287))))

(declare-fun b!4167180 () Bool)

(declare-fun res!1707261 () Bool)

(assert (=> b!4167180 (=> (not res!1707261) (not e!2586985))))

(declare-fun isEmpty!27001 (List!45751) Bool)

(assert (=> b!4167180 (= res!1707261 (not (isEmpty!27001 rules!3820)))))

(declare-fun b!4167181 () Bool)

(declare-fun res!1707263 () Bool)

(assert (=> b!4167181 (=> (not res!1707263) (not e!2586985))))

(assert (=> b!4167181 (= res!1707263 (contains!9353 rules!3820 r!4097))))

(declare-fun b!4167182 () Bool)

(declare-fun tp!1272810 () Bool)

(assert (=> b!4167182 (= e!2586983 (and tp!1272810 (inv!60148 (tag!8418 (h!51047 rules!3820))) (inv!60151 (transformation!7554 (h!51047 rules!3820))) e!2586988))))

(assert (= (and start!397230 res!1707260) b!4167166))

(assert (= (and b!4167166 res!1707259) b!4167176))

(assert (= (and b!4167176 res!1707262) b!4167180))

(assert (= (and b!4167180 res!1707261) b!4167167))

(assert (= (and b!4167167 res!1707267) b!4167181))

(assert (= (and b!4167181 res!1707263) b!4167174))

(assert (= (and b!4167174 res!1707268) b!4167168))

(assert (= (and b!4167168 (not res!1707266)) b!4167178))

(assert (= (and b!4167178 (not res!1707264)) b!4167175))

(assert (= (and b!4167175 (not res!1707265)) b!4167179))

(assert (= (and start!397230 ((_ is Cons!45625) pBis!100)) b!4167170))

(assert (= b!4167182 b!4167177))

(assert (= b!4167164 b!4167182))

(assert (= (and start!397230 ((_ is Cons!45627) rules!3820)) b!4167164))

(assert (= (and start!397230 ((_ is Cons!45625) p!2942)) b!4167165))

(assert (= (and start!397230 ((_ is Cons!45625) input!3316)) b!4167172))

(assert (= b!4167173 b!4167171))

(assert (= start!397230 b!4167173))

(assert (= b!4167169 b!4167163))

(assert (= start!397230 b!4167169))

(declare-fun m!4758581 () Bool)

(assert (=> b!4167179 m!4758581))

(declare-fun m!4758583 () Bool)

(assert (=> b!4167182 m!4758583))

(declare-fun m!4758585 () Bool)

(assert (=> b!4167182 m!4758585))

(declare-fun m!4758587 () Bool)

(assert (=> b!4167175 m!4758587))

(declare-fun m!4758589 () Bool)

(assert (=> b!4167174 m!4758589))

(declare-fun m!4758591 () Bool)

(assert (=> b!4167173 m!4758591))

(declare-fun m!4758593 () Bool)

(assert (=> b!4167173 m!4758593))

(declare-fun m!4758595 () Bool)

(assert (=> b!4167181 m!4758595))

(declare-fun m!4758597 () Bool)

(assert (=> b!4167168 m!4758597))

(declare-fun m!4758599 () Bool)

(assert (=> b!4167168 m!4758599))

(declare-fun m!4758601 () Bool)

(assert (=> b!4167168 m!4758601))

(declare-fun m!4758603 () Bool)

(assert (=> b!4167178 m!4758603))

(declare-fun m!4758605 () Bool)

(assert (=> b!4167178 m!4758605))

(declare-fun m!4758607 () Bool)

(assert (=> b!4167178 m!4758607))

(declare-fun m!4758609 () Bool)

(assert (=> b!4167178 m!4758609))

(declare-fun m!4758611 () Bool)

(assert (=> b!4167178 m!4758611))

(declare-fun m!4758613 () Bool)

(assert (=> b!4167178 m!4758613))

(declare-fun m!4758615 () Bool)

(assert (=> b!4167178 m!4758615))

(declare-fun m!4758617 () Bool)

(assert (=> b!4167178 m!4758617))

(declare-fun m!4758619 () Bool)

(assert (=> b!4167180 m!4758619))

(declare-fun m!4758621 () Bool)

(assert (=> b!4167167 m!4758621))

(declare-fun m!4758623 () Bool)

(assert (=> b!4167166 m!4758623))

(declare-fun m!4758625 () Bool)

(assert (=> b!4167169 m!4758625))

(declare-fun m!4758627 () Bool)

(assert (=> b!4167169 m!4758627))

(declare-fun m!4758629 () Bool)

(assert (=> b!4167176 m!4758629))

(check-sat b_and!325083 b_and!325085 (not b!4167181) b_and!325079 (not b!4167176) (not b!4167178) b_and!325081 (not b!4167170) tp_is_empty!21881 (not b!4167173) (not b_next!121089) (not b!4167164) (not b!4167168) (not b!4167179) (not b!4167169) b_and!325087 (not b_next!121083) (not b_next!121079) (not b_next!121085) (not b!4167180) (not b!4167174) (not b!4167165) (not b_next!121087) (not b!4167167) b_and!325077 (not b!4167166) (not b!4167182) (not b!4167175) (not b!4167172) (not b_next!121081))
(check-sat b_and!325083 b_and!325085 b_and!325079 b_and!325081 (not b_next!121089) (not b_next!121087) b_and!325077 (not b_next!121081) b_and!325087 (not b_next!121083) (not b_next!121079) (not b_next!121085))
(get-model)

(declare-fun d!1231452 () Bool)

(assert (=> d!1231452 (= (inv!60148 (tag!8418 rBis!161)) (= (mod (str.len (value!235832 (tag!8418 rBis!161))) 2) 0))))

(assert (=> b!4167173 d!1231452))

(declare-fun d!1231454 () Bool)

(declare-fun res!1707301 () Bool)

(declare-fun e!2587012 () Bool)

(assert (=> d!1231454 (=> (not res!1707301) (not e!2587012))))

(declare-fun semiInverseModEq!3280 (Int Int) Bool)

(assert (=> d!1231454 (= res!1707301 (semiInverseModEq!3280 (toChars!10089 (transformation!7554 rBis!161)) (toValue!10230 (transformation!7554 rBis!161))))))

(assert (=> d!1231454 (= (inv!60151 (transformation!7554 rBis!161)) e!2587012)))

(declare-fun b!4167207 () Bool)

(declare-fun equivClasses!3179 (Int Int) Bool)

(assert (=> b!4167207 (= e!2587012 (equivClasses!3179 (toChars!10089 (transformation!7554 rBis!161)) (toValue!10230 (transformation!7554 rBis!161))))))

(assert (= (and d!1231454 res!1707301) b!4167207))

(declare-fun m!4758657 () Bool)

(assert (=> d!1231454 m!4758657))

(declare-fun m!4758659 () Bool)

(assert (=> b!4167207 m!4758659))

(assert (=> b!4167173 d!1231454))

(declare-fun d!1231460 () Bool)

(declare-fun lt!1484304 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7094 (List!45751) (InoxSet Rule!14908))

(assert (=> d!1231460 (= lt!1484304 (select (content!7094 rules!3820) rBis!161))))

(declare-fun e!2587021 () Bool)

(assert (=> d!1231460 (= lt!1484304 e!2587021)))

(declare-fun res!1707306 () Bool)

(assert (=> d!1231460 (=> (not res!1707306) (not e!2587021))))

(assert (=> d!1231460 (= res!1707306 ((_ is Cons!45627) rules!3820))))

(assert (=> d!1231460 (= (contains!9353 rules!3820 rBis!161) lt!1484304)))

(declare-fun b!4167218 () Bool)

(declare-fun e!2587020 () Bool)

(assert (=> b!4167218 (= e!2587021 e!2587020)))

(declare-fun res!1707307 () Bool)

(assert (=> b!4167218 (=> res!1707307 e!2587020)))

(assert (=> b!4167218 (= res!1707307 (= (h!51047 rules!3820) rBis!161))))

(declare-fun b!4167219 () Bool)

(assert (=> b!4167219 (= e!2587020 (contains!9353 (t!344058 rules!3820) rBis!161))))

(assert (= (and d!1231460 res!1707306) b!4167218))

(assert (= (and b!4167218 (not res!1707307)) b!4167219))

(declare-fun m!4758663 () Bool)

(assert (=> d!1231460 m!4758663))

(declare-fun m!4758665 () Bool)

(assert (=> d!1231460 m!4758665))

(declare-fun m!4758667 () Bool)

(assert (=> b!4167219 m!4758667))

(assert (=> b!4167174 d!1231460))

(declare-fun d!1231464 () Bool)

(assert (=> d!1231464 (= (inv!60148 (tag!8418 r!4097)) (= (mod (str.len (value!235832 (tag!8418 r!4097))) 2) 0))))

(assert (=> b!4167169 d!1231464))

(declare-fun d!1231466 () Bool)

(declare-fun res!1707308 () Bool)

(declare-fun e!2587022 () Bool)

(assert (=> d!1231466 (=> (not res!1707308) (not e!2587022))))

(assert (=> d!1231466 (= res!1707308 (semiInverseModEq!3280 (toChars!10089 (transformation!7554 r!4097)) (toValue!10230 (transformation!7554 r!4097))))))

(assert (=> d!1231466 (= (inv!60151 (transformation!7554 r!4097)) e!2587022)))

(declare-fun b!4167220 () Bool)

(assert (=> b!4167220 (= e!2587022 (equivClasses!3179 (toChars!10089 (transformation!7554 r!4097)) (toValue!10230 (transformation!7554 r!4097))))))

(assert (= (and d!1231466 res!1707308) b!4167220))

(declare-fun m!4758669 () Bool)

(assert (=> d!1231466 m!4758669))

(declare-fun m!4758671 () Bool)

(assert (=> b!4167220 m!4758671))

(assert (=> b!4167169 d!1231466))

(declare-fun d!1231468 () Bool)

(assert (=> d!1231468 (= (isEmpty!27001 rules!3820) ((_ is Nil!45627) rules!3820))))

(assert (=> b!4167180 d!1231468))

(declare-fun d!1231470 () Bool)

(declare-fun lt!1484305 () Bool)

(assert (=> d!1231470 (= lt!1484305 (select (content!7094 rules!3820) r!4097))))

(declare-fun e!2587024 () Bool)

(assert (=> d!1231470 (= lt!1484305 e!2587024)))

(declare-fun res!1707309 () Bool)

(assert (=> d!1231470 (=> (not res!1707309) (not e!2587024))))

(assert (=> d!1231470 (= res!1707309 ((_ is Cons!45627) rules!3820))))

(assert (=> d!1231470 (= (contains!9353 rules!3820 r!4097) lt!1484305)))

(declare-fun b!4167221 () Bool)

(declare-fun e!2587023 () Bool)

(assert (=> b!4167221 (= e!2587024 e!2587023)))

(declare-fun res!1707310 () Bool)

(assert (=> b!4167221 (=> res!1707310 e!2587023)))

(assert (=> b!4167221 (= res!1707310 (= (h!51047 rules!3820) r!4097))))

(declare-fun b!4167222 () Bool)

(assert (=> b!4167222 (= e!2587023 (contains!9353 (t!344058 rules!3820) r!4097))))

(assert (= (and d!1231470 res!1707309) b!4167221))

(assert (= (and b!4167221 (not res!1707310)) b!4167222))

(assert (=> d!1231470 m!4758663))

(declare-fun m!4758673 () Bool)

(assert (=> d!1231470 m!4758673))

(declare-fun m!4758675 () Bool)

(assert (=> b!4167222 m!4758675))

(assert (=> b!4167181 d!1231470))

(declare-fun d!1231472 () Bool)

(assert (=> d!1231472 (= (inv!60148 (tag!8418 (h!51047 rules!3820))) (= (mod (str.len (value!235832 (tag!8418 (h!51047 rules!3820)))) 2) 0))))

(assert (=> b!4167182 d!1231472))

(declare-fun d!1231474 () Bool)

(declare-fun res!1707311 () Bool)

(declare-fun e!2587025 () Bool)

(assert (=> d!1231474 (=> (not res!1707311) (not e!2587025))))

(assert (=> d!1231474 (= res!1707311 (semiInverseModEq!3280 (toChars!10089 (transformation!7554 (h!51047 rules!3820))) (toValue!10230 (transformation!7554 (h!51047 rules!3820)))))))

(assert (=> d!1231474 (= (inv!60151 (transformation!7554 (h!51047 rules!3820))) e!2587025)))

(declare-fun b!4167223 () Bool)

(assert (=> b!4167223 (= e!2587025 (equivClasses!3179 (toChars!10089 (transformation!7554 (h!51047 rules!3820))) (toValue!10230 (transformation!7554 (h!51047 rules!3820)))))))

(assert (= (and d!1231474 res!1707311) b!4167223))

(declare-fun m!4758677 () Bool)

(assert (=> d!1231474 m!4758677))

(declare-fun m!4758679 () Bool)

(assert (=> b!4167223 m!4758679))

(assert (=> b!4167182 d!1231474))

(declare-fun d!1231476 () Bool)

(declare-fun res!1707314 () Bool)

(declare-fun e!2587028 () Bool)

(assert (=> d!1231476 (=> (not res!1707314) (not e!2587028))))

(declare-fun rulesValid!2948 (LexerInterface!7147 List!45751) Bool)

(assert (=> d!1231476 (= res!1707314 (rulesValid!2948 thiss!25889 rules!3820))))

(assert (=> d!1231476 (= (rulesInvariant!6360 thiss!25889 rules!3820) e!2587028)))

(declare-fun b!4167226 () Bool)

(declare-datatypes ((List!45753 0))(
  ( (Nil!45629) (Cons!45629 (h!51049 String!52786) (t!344108 List!45753)) )
))
(declare-fun noDuplicateTag!3109 (LexerInterface!7147 List!45751 List!45753) Bool)

(assert (=> b!4167226 (= e!2587028 (noDuplicateTag!3109 thiss!25889 rules!3820 Nil!45629))))

(assert (= (and d!1231476 res!1707314) b!4167226))

(declare-fun m!4758681 () Bool)

(assert (=> d!1231476 m!4758681))

(declare-fun m!4758683 () Bool)

(assert (=> b!4167226 m!4758683))

(assert (=> b!4167167 d!1231476))

(declare-fun b!4167276 () Bool)

(declare-fun e!2587056 () Bool)

(declare-fun lt!1484334 () Option!9762)

(declare-fun get!14828 (Option!9762) tuple2!43530)

(assert (=> b!4167276 (= e!2587056 (= (size!33514 (_1!24899 (get!14828 lt!1484334))) (size!33513 (originalCharacters!7954 (_1!24899 (get!14828 lt!1484334))))))))

(declare-fun b!4167277 () Bool)

(declare-fun res!1707350 () Bool)

(assert (=> b!4167277 (=> (not res!1707350) (not e!2587056))))

(assert (=> b!4167277 (= res!1707350 (= (value!235833 (_1!24899 (get!14828 lt!1484334))) (apply!10531 (transformation!7554 (rule!10606 (_1!24899 (get!14828 lt!1484334)))) (seqFromList!5583 (originalCharacters!7954 (_1!24899 (get!14828 lt!1484334)))))))))

(declare-fun b!4167278 () Bool)

(declare-fun e!2587055 () Bool)

(declare-datatypes ((tuple2!43534 0))(
  ( (tuple2!43535 (_1!24901 List!45749) (_2!24901 List!45749)) )
))
(declare-fun findLongestMatchInner!1565 (Regex!12459 List!45749 Int List!45749 List!45749 Int) tuple2!43534)

(assert (=> b!4167278 (= e!2587055 (matchR!6200 (regex!7554 r!4097) (_1!24901 (findLongestMatchInner!1565 (regex!7554 r!4097) Nil!45625 (size!33513 Nil!45625) input!3316 input!3316 (size!33513 input!3316)))))))

(declare-fun b!4167279 () Bool)

(declare-fun res!1707352 () Bool)

(assert (=> b!4167279 (=> (not res!1707352) (not e!2587056))))

(assert (=> b!4167279 (= res!1707352 (< (size!33513 (_2!24899 (get!14828 lt!1484334))) (size!33513 input!3316)))))

(declare-fun b!4167280 () Bool)

(declare-fun e!2587054 () Bool)

(assert (=> b!4167280 (= e!2587054 e!2587056)))

(declare-fun res!1707353 () Bool)

(assert (=> b!4167280 (=> (not res!1707353) (not e!2587056))))

(declare-fun list!16515 (BalanceConc!27124) List!45749)

(declare-fun charsOf!5027 (Token!13846) BalanceConc!27124)

(assert (=> b!4167280 (= res!1707353 (matchR!6200 (regex!7554 r!4097) (list!16515 (charsOf!5027 (_1!24899 (get!14828 lt!1484334))))))))

(declare-fun b!4167281 () Bool)

(declare-fun e!2587053 () Option!9762)

(assert (=> b!4167281 (= e!2587053 None!9761)))

(declare-fun b!4167282 () Bool)

(declare-fun res!1707351 () Bool)

(assert (=> b!4167282 (=> (not res!1707351) (not e!2587056))))

(declare-fun ++!11664 (List!45749 List!45749) List!45749)

(assert (=> b!4167282 (= res!1707351 (= (++!11664 (list!16515 (charsOf!5027 (_1!24899 (get!14828 lt!1484334)))) (_2!24899 (get!14828 lt!1484334))) input!3316))))

(declare-fun b!4167283 () Bool)

(declare-fun res!1707355 () Bool)

(assert (=> b!4167283 (=> (not res!1707355) (not e!2587056))))

(assert (=> b!4167283 (= res!1707355 (= (rule!10606 (_1!24899 (get!14828 lt!1484334))) r!4097))))

(declare-fun d!1231478 () Bool)

(assert (=> d!1231478 e!2587054))

(declare-fun res!1707354 () Bool)

(assert (=> d!1231478 (=> res!1707354 e!2587054)))

(declare-fun isEmpty!27004 (Option!9762) Bool)

(assert (=> d!1231478 (= res!1707354 (isEmpty!27004 lt!1484334))))

(assert (=> d!1231478 (= lt!1484334 e!2587053)))

(declare-fun c!712514 () Bool)

(declare-fun lt!1484337 () tuple2!43534)

(declare-fun isEmpty!27005 (List!45749) Bool)

(assert (=> d!1231478 (= c!712514 (isEmpty!27005 (_1!24901 lt!1484337)))))

(declare-fun findLongestMatch!1478 (Regex!12459 List!45749) tuple2!43534)

(assert (=> d!1231478 (= lt!1484337 (findLongestMatch!1478 (regex!7554 r!4097) input!3316))))

(assert (=> d!1231478 (ruleValid!3276 thiss!25889 r!4097)))

(assert (=> d!1231478 (= (maxPrefixOneRule!3170 thiss!25889 r!4097 input!3316) lt!1484334)))

(declare-fun b!4167284 () Bool)

(declare-fun size!33516 (BalanceConc!27124) Int)

(assert (=> b!4167284 (= e!2587053 (Some!9761 (tuple2!43531 (Token!13847 (apply!10531 (transformation!7554 r!4097) (seqFromList!5583 (_1!24901 lt!1484337))) r!4097 (size!33516 (seqFromList!5583 (_1!24901 lt!1484337))) (_1!24901 lt!1484337)) (_2!24901 lt!1484337))))))

(declare-fun lt!1484336 () Unit!64703)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1538 (Regex!12459 List!45749) Unit!64703)

(assert (=> b!4167284 (= lt!1484336 (longestMatchIsAcceptedByMatchOrIsEmpty!1538 (regex!7554 r!4097) input!3316))))

(declare-fun res!1707356 () Bool)

(assert (=> b!4167284 (= res!1707356 (isEmpty!27005 (_1!24901 (findLongestMatchInner!1565 (regex!7554 r!4097) Nil!45625 (size!33513 Nil!45625) input!3316 input!3316 (size!33513 input!3316)))))))

(assert (=> b!4167284 (=> res!1707356 e!2587055)))

(assert (=> b!4167284 e!2587055))

(declare-fun lt!1484335 () Unit!64703)

(assert (=> b!4167284 (= lt!1484335 lt!1484336)))

(declare-fun lt!1484338 () Unit!64703)

(assert (=> b!4167284 (= lt!1484338 (lemmaSemiInverse!2324 (transformation!7554 r!4097) (seqFromList!5583 (_1!24901 lt!1484337))))))

(assert (= (and d!1231478 c!712514) b!4167281))

(assert (= (and d!1231478 (not c!712514)) b!4167284))

(assert (= (and b!4167284 (not res!1707356)) b!4167278))

(assert (= (and d!1231478 (not res!1707354)) b!4167280))

(assert (= (and b!4167280 res!1707353) b!4167282))

(assert (= (and b!4167282 res!1707351) b!4167279))

(assert (= (and b!4167279 res!1707352) b!4167283))

(assert (= (and b!4167283 res!1707355) b!4167277))

(assert (= (and b!4167277 res!1707350) b!4167276))

(declare-fun m!4758733 () Bool)

(assert (=> b!4167276 m!4758733))

(declare-fun m!4758735 () Bool)

(assert (=> b!4167276 m!4758735))

(declare-fun m!4758737 () Bool)

(assert (=> d!1231478 m!4758737))

(declare-fun m!4758739 () Bool)

(assert (=> d!1231478 m!4758739))

(declare-fun m!4758741 () Bool)

(assert (=> d!1231478 m!4758741))

(assert (=> d!1231478 m!4758599))

(declare-fun m!4758743 () Bool)

(assert (=> b!4167284 m!4758743))

(declare-fun m!4758745 () Bool)

(assert (=> b!4167284 m!4758745))

(declare-fun m!4758747 () Bool)

(assert (=> b!4167284 m!4758747))

(declare-fun m!4758749 () Bool)

(assert (=> b!4167284 m!4758749))

(declare-fun m!4758751 () Bool)

(assert (=> b!4167284 m!4758751))

(assert (=> b!4167284 m!4758745))

(declare-fun m!4758753 () Bool)

(assert (=> b!4167284 m!4758753))

(assert (=> b!4167284 m!4758745))

(declare-fun m!4758755 () Bool)

(assert (=> b!4167284 m!4758755))

(assert (=> b!4167284 m!4758751))

(declare-fun m!4758757 () Bool)

(assert (=> b!4167284 m!4758757))

(assert (=> b!4167284 m!4758755))

(assert (=> b!4167284 m!4758745))

(declare-fun m!4758759 () Bool)

(assert (=> b!4167284 m!4758759))

(assert (=> b!4167280 m!4758733))

(declare-fun m!4758761 () Bool)

(assert (=> b!4167280 m!4758761))

(assert (=> b!4167280 m!4758761))

(declare-fun m!4758763 () Bool)

(assert (=> b!4167280 m!4758763))

(assert (=> b!4167280 m!4758763))

(declare-fun m!4758765 () Bool)

(assert (=> b!4167280 m!4758765))

(assert (=> b!4167278 m!4758755))

(assert (=> b!4167278 m!4758751))

(assert (=> b!4167278 m!4758755))

(assert (=> b!4167278 m!4758751))

(assert (=> b!4167278 m!4758757))

(declare-fun m!4758767 () Bool)

(assert (=> b!4167278 m!4758767))

(assert (=> b!4167279 m!4758733))

(declare-fun m!4758769 () Bool)

(assert (=> b!4167279 m!4758769))

(assert (=> b!4167279 m!4758751))

(assert (=> b!4167282 m!4758733))

(assert (=> b!4167282 m!4758761))

(assert (=> b!4167282 m!4758761))

(assert (=> b!4167282 m!4758763))

(assert (=> b!4167282 m!4758763))

(declare-fun m!4758771 () Bool)

(assert (=> b!4167282 m!4758771))

(assert (=> b!4167277 m!4758733))

(declare-fun m!4758773 () Bool)

(assert (=> b!4167277 m!4758773))

(assert (=> b!4167277 m!4758773))

(declare-fun m!4758775 () Bool)

(assert (=> b!4167277 m!4758775))

(assert (=> b!4167283 m!4758733))

(assert (=> b!4167178 d!1231478))

(declare-fun d!1231486 () Bool)

(declare-fun lt!1484341 () Int)

(assert (=> d!1231486 (>= lt!1484341 0)))

(declare-fun e!2587059 () Int)

(assert (=> d!1231486 (= lt!1484341 e!2587059)))

(declare-fun c!712517 () Bool)

(assert (=> d!1231486 (= c!712517 ((_ is Nil!45625) p!2942))))

(assert (=> d!1231486 (= (size!33513 p!2942) lt!1484341)))

(declare-fun b!4167289 () Bool)

(assert (=> b!4167289 (= e!2587059 0)))

(declare-fun b!4167290 () Bool)

(assert (=> b!4167290 (= e!2587059 (+ 1 (size!33513 (t!344056 p!2942))))))

(assert (= (and d!1231486 c!712517) b!4167289))

(assert (= (and d!1231486 (not c!712517)) b!4167290))

(declare-fun m!4758777 () Bool)

(assert (=> b!4167290 m!4758777))

(assert (=> b!4167178 d!1231486))

(declare-fun d!1231488 () Bool)

(assert (=> d!1231488 (isPrefix!4411 input!3316 input!3316)))

(declare-fun lt!1484344 () Unit!64703)

(declare-fun choose!25516 (List!45749 List!45749) Unit!64703)

(assert (=> d!1231488 (= lt!1484344 (choose!25516 input!3316 input!3316))))

(assert (=> d!1231488 (= (lemmaIsPrefixRefl!2846 input!3316 input!3316) lt!1484344)))

(declare-fun bs!595894 () Bool)

(assert (= bs!595894 d!1231488))

(assert (=> bs!595894 m!4758605))

(declare-fun m!4758779 () Bool)

(assert (=> bs!595894 m!4758779))

(assert (=> b!4167178 d!1231488))

(declare-fun d!1231490 () Bool)

(declare-fun fromListB!2563 (List!45749) BalanceConc!27124)

(assert (=> d!1231490 (= (seqFromList!5583 p!2942) (fromListB!2563 p!2942))))

(declare-fun bs!595895 () Bool)

(assert (= bs!595895 d!1231490))

(declare-fun m!4758781 () Bool)

(assert (=> bs!595895 m!4758781))

(assert (=> b!4167178 d!1231490))

(declare-fun d!1231492 () Bool)

(declare-fun lt!1484347 () List!45749)

(assert (=> d!1231492 (= (++!11664 p!2942 lt!1484347) input!3316)))

(declare-fun e!2587062 () List!45749)

(assert (=> d!1231492 (= lt!1484347 e!2587062)))

(declare-fun c!712520 () Bool)

(assert (=> d!1231492 (= c!712520 ((_ is Cons!45625) p!2942))))

(assert (=> d!1231492 (>= (size!33513 input!3316) (size!33513 p!2942))))

(assert (=> d!1231492 (= (getSuffix!2718 input!3316 p!2942) lt!1484347)))

(declare-fun b!4167295 () Bool)

(declare-fun tail!6695 (List!45749) List!45749)

(assert (=> b!4167295 (= e!2587062 (getSuffix!2718 (tail!6695 input!3316) (t!344056 p!2942)))))

(declare-fun b!4167296 () Bool)

(assert (=> b!4167296 (= e!2587062 input!3316)))

(assert (= (and d!1231492 c!712520) b!4167295))

(assert (= (and d!1231492 (not c!712520)) b!4167296))

(declare-fun m!4758783 () Bool)

(assert (=> d!1231492 m!4758783))

(assert (=> d!1231492 m!4758751))

(assert (=> d!1231492 m!4758617))

(declare-fun m!4758785 () Bool)

(assert (=> b!4167295 m!4758785))

(assert (=> b!4167295 m!4758785))

(declare-fun m!4758787 () Bool)

(assert (=> b!4167295 m!4758787))

(assert (=> b!4167178 d!1231492))

(declare-fun b!4167306 () Bool)

(declare-fun res!1707366 () Bool)

(declare-fun e!2587071 () Bool)

(assert (=> b!4167306 (=> (not res!1707366) (not e!2587071))))

(declare-fun head!8848 (List!45749) C!25108)

(assert (=> b!4167306 (= res!1707366 (= (head!8848 input!3316) (head!8848 input!3316)))))

(declare-fun d!1231494 () Bool)

(declare-fun e!2587070 () Bool)

(assert (=> d!1231494 e!2587070))

(declare-fun res!1707368 () Bool)

(assert (=> d!1231494 (=> res!1707368 e!2587070)))

(declare-fun lt!1484350 () Bool)

(assert (=> d!1231494 (= res!1707368 (not lt!1484350))))

(declare-fun e!2587069 () Bool)

(assert (=> d!1231494 (= lt!1484350 e!2587069)))

(declare-fun res!1707367 () Bool)

(assert (=> d!1231494 (=> res!1707367 e!2587069)))

(assert (=> d!1231494 (= res!1707367 ((_ is Nil!45625) input!3316))))

(assert (=> d!1231494 (= (isPrefix!4411 input!3316 input!3316) lt!1484350)))

(declare-fun b!4167308 () Bool)

(assert (=> b!4167308 (= e!2587070 (>= (size!33513 input!3316) (size!33513 input!3316)))))

(declare-fun b!4167307 () Bool)

(assert (=> b!4167307 (= e!2587071 (isPrefix!4411 (tail!6695 input!3316) (tail!6695 input!3316)))))

(declare-fun b!4167305 () Bool)

(assert (=> b!4167305 (= e!2587069 e!2587071)))

(declare-fun res!1707365 () Bool)

(assert (=> b!4167305 (=> (not res!1707365) (not e!2587071))))

(assert (=> b!4167305 (= res!1707365 (not ((_ is Nil!45625) input!3316)))))

(assert (= (and d!1231494 (not res!1707367)) b!4167305))

(assert (= (and b!4167305 res!1707365) b!4167306))

(assert (= (and b!4167306 res!1707366) b!4167307))

(assert (= (and d!1231494 (not res!1707368)) b!4167308))

(declare-fun m!4758789 () Bool)

(assert (=> b!4167306 m!4758789))

(assert (=> b!4167306 m!4758789))

(assert (=> b!4167308 m!4758751))

(assert (=> b!4167308 m!4758751))

(assert (=> b!4167307 m!4758785))

(assert (=> b!4167307 m!4758785))

(assert (=> b!4167307 m!4758785))

(assert (=> b!4167307 m!4758785))

(declare-fun m!4758791 () Bool)

(assert (=> b!4167307 m!4758791))

(assert (=> b!4167178 d!1231494))

(declare-fun d!1231496 () Bool)

(declare-fun dynLambda!19553 (Int BalanceConc!27124) TokenValue!7784)

(assert (=> d!1231496 (= (apply!10531 (transformation!7554 r!4097) lt!1484286) (dynLambda!19553 (toValue!10230 (transformation!7554 r!4097)) lt!1484286))))

(declare-fun b_lambda!122361 () Bool)

(assert (=> (not b_lambda!122361) (not d!1231496)))

(declare-fun t!344066 () Bool)

(declare-fun tb!249533 () Bool)

(assert (=> (and b!4167163 (= (toValue!10230 (transformation!7554 r!4097)) (toValue!10230 (transformation!7554 r!4097))) t!344066) tb!249533))

(declare-fun result!303960 () Bool)

(declare-fun inv!21 (TokenValue!7784) Bool)

(assert (=> tb!249533 (= result!303960 (inv!21 (dynLambda!19553 (toValue!10230 (transformation!7554 r!4097)) lt!1484286)))))

(declare-fun m!4758793 () Bool)

(assert (=> tb!249533 m!4758793))

(assert (=> d!1231496 t!344066))

(declare-fun b_and!325095 () Bool)

(assert (= b_and!325077 (and (=> t!344066 result!303960) b_and!325095)))

(declare-fun tb!249535 () Bool)

(declare-fun t!344068 () Bool)

(assert (=> (and b!4167177 (= (toValue!10230 (transformation!7554 (h!51047 rules!3820))) (toValue!10230 (transformation!7554 r!4097))) t!344068) tb!249535))

(declare-fun result!303964 () Bool)

(assert (= result!303964 result!303960))

(assert (=> d!1231496 t!344068))

(declare-fun b_and!325097 () Bool)

(assert (= b_and!325081 (and (=> t!344068 result!303964) b_and!325097)))

(declare-fun tb!249537 () Bool)

(declare-fun t!344070 () Bool)

(assert (=> (and b!4167171 (= (toValue!10230 (transformation!7554 rBis!161)) (toValue!10230 (transformation!7554 r!4097))) t!344070) tb!249537))

(declare-fun result!303966 () Bool)

(assert (= result!303966 result!303960))

(assert (=> d!1231496 t!344070))

(declare-fun b_and!325099 () Bool)

(assert (= b_and!325085 (and (=> t!344070 result!303966) b_and!325099)))

(declare-fun m!4758795 () Bool)

(assert (=> d!1231496 m!4758795))

(assert (=> b!4167178 d!1231496))

(declare-fun b!4167440 () Bool)

(declare-fun e!2587148 () Bool)

(assert (=> b!4167440 (= e!2587148 true)))

(declare-fun d!1231498 () Bool)

(assert (=> d!1231498 e!2587148))

(assert (= d!1231498 b!4167440))

(declare-fun order!24055 () Int)

(declare-fun order!24053 () Int)

(declare-fun lambda!129177 () Int)

(declare-fun dynLambda!19554 (Int Int) Int)

(declare-fun dynLambda!19555 (Int Int) Int)

(assert (=> b!4167440 (< (dynLambda!19554 order!24053 (toValue!10230 (transformation!7554 r!4097))) (dynLambda!19555 order!24055 lambda!129177))))

(declare-fun order!24057 () Int)

(declare-fun dynLambda!19556 (Int Int) Int)

(assert (=> b!4167440 (< (dynLambda!19556 order!24057 (toChars!10089 (transformation!7554 r!4097))) (dynLambda!19555 order!24055 lambda!129177))))

(declare-fun dynLambda!19557 (Int TokenValue!7784) BalanceConc!27124)

(assert (=> d!1231498 (= (list!16515 (dynLambda!19557 (toChars!10089 (transformation!7554 r!4097)) (dynLambda!19553 (toValue!10230 (transformation!7554 r!4097)) lt!1484286))) (list!16515 lt!1484286))))

(declare-fun lt!1484369 () Unit!64703)

(declare-fun ForallOf!1014 (Int BalanceConc!27124) Unit!64703)

(assert (=> d!1231498 (= lt!1484369 (ForallOf!1014 lambda!129177 lt!1484286))))

(assert (=> d!1231498 (= (lemmaSemiInverse!2324 (transformation!7554 r!4097) lt!1484286) lt!1484369)))

(declare-fun b_lambda!122375 () Bool)

(assert (=> (not b_lambda!122375) (not d!1231498)))

(declare-fun t!344090 () Bool)

(declare-fun tb!249557 () Bool)

(assert (=> (and b!4167163 (= (toChars!10089 (transformation!7554 r!4097)) (toChars!10089 (transformation!7554 r!4097))) t!344090) tb!249557))

(declare-fun b!4167445 () Bool)

(declare-fun tp!1272871 () Bool)

(declare-fun e!2587151 () Bool)

(declare-fun inv!60155 (Conc!13765) Bool)

(assert (=> b!4167445 (= e!2587151 (and (inv!60155 (c!712502 (dynLambda!19557 (toChars!10089 (transformation!7554 r!4097)) (dynLambda!19553 (toValue!10230 (transformation!7554 r!4097)) lt!1484286)))) tp!1272871))))

(declare-fun result!303994 () Bool)

(declare-fun inv!60156 (BalanceConc!27124) Bool)

(assert (=> tb!249557 (= result!303994 (and (inv!60156 (dynLambda!19557 (toChars!10089 (transformation!7554 r!4097)) (dynLambda!19553 (toValue!10230 (transformation!7554 r!4097)) lt!1484286))) e!2587151))))

(assert (= tb!249557 b!4167445))

(declare-fun m!4758867 () Bool)

(assert (=> b!4167445 m!4758867))

(declare-fun m!4758869 () Bool)

(assert (=> tb!249557 m!4758869))

(assert (=> d!1231498 t!344090))

(declare-fun b_and!325123 () Bool)

(assert (= b_and!325079 (and (=> t!344090 result!303994) b_and!325123)))

(declare-fun t!344092 () Bool)

(declare-fun tb!249559 () Bool)

(assert (=> (and b!4167177 (= (toChars!10089 (transformation!7554 (h!51047 rules!3820))) (toChars!10089 (transformation!7554 r!4097))) t!344092) tb!249559))

(declare-fun result!303998 () Bool)

(assert (= result!303998 result!303994))

(assert (=> d!1231498 t!344092))

(declare-fun b_and!325125 () Bool)

(assert (= b_and!325083 (and (=> t!344092 result!303998) b_and!325125)))

(declare-fun tb!249561 () Bool)

(declare-fun t!344094 () Bool)

(assert (=> (and b!4167171 (= (toChars!10089 (transformation!7554 rBis!161)) (toChars!10089 (transformation!7554 r!4097))) t!344094) tb!249561))

(declare-fun result!304000 () Bool)

(assert (= result!304000 result!303994))

(assert (=> d!1231498 t!344094))

(declare-fun b_and!325127 () Bool)

(assert (= b_and!325087 (and (=> t!344094 result!304000) b_and!325127)))

(declare-fun b_lambda!122377 () Bool)

(assert (=> (not b_lambda!122377) (not d!1231498)))

(assert (=> d!1231498 t!344066))

(declare-fun b_and!325129 () Bool)

(assert (= b_and!325095 (and (=> t!344066 result!303960) b_and!325129)))

(assert (=> d!1231498 t!344068))

(declare-fun b_and!325131 () Bool)

(assert (= b_and!325097 (and (=> t!344068 result!303964) b_and!325131)))

(assert (=> d!1231498 t!344070))

(declare-fun b_and!325133 () Bool)

(assert (= b_and!325099 (and (=> t!344070 result!303966) b_and!325133)))

(declare-fun m!4758871 () Bool)

(assert (=> d!1231498 m!4758871))

(assert (=> d!1231498 m!4758795))

(declare-fun m!4758873 () Bool)

(assert (=> d!1231498 m!4758873))

(assert (=> d!1231498 m!4758873))

(declare-fun m!4758875 () Bool)

(assert (=> d!1231498 m!4758875))

(assert (=> d!1231498 m!4758795))

(declare-fun m!4758877 () Bool)

(assert (=> d!1231498 m!4758877))

(assert (=> b!4167178 d!1231498))

(declare-fun b!4167474 () Bool)

(declare-fun e!2587170 () Bool)

(declare-fun e!2587169 () Bool)

(assert (=> b!4167474 (= e!2587170 e!2587169)))

(declare-fun c!712542 () Bool)

(assert (=> b!4167474 (= c!712542 ((_ is EmptyLang!12459) (regex!7554 r!4097)))))

(declare-fun b!4167475 () Bool)

(declare-fun e!2587166 () Bool)

(declare-fun derivativeStep!3761 (Regex!12459 C!25108) Regex!12459)

(assert (=> b!4167475 (= e!2587166 (matchR!6200 (derivativeStep!3761 (regex!7554 r!4097) (head!8848 p!2942)) (tail!6695 p!2942)))))

(declare-fun d!1231526 () Bool)

(assert (=> d!1231526 e!2587170))

(declare-fun c!712540 () Bool)

(assert (=> d!1231526 (= c!712540 ((_ is EmptyExpr!12459) (regex!7554 r!4097)))))

(declare-fun lt!1484372 () Bool)

(assert (=> d!1231526 (= lt!1484372 e!2587166)))

(declare-fun c!712541 () Bool)

(assert (=> d!1231526 (= c!712541 (isEmpty!27005 p!2942))))

(declare-fun validRegex!5581 (Regex!12459) Bool)

(assert (=> d!1231526 (validRegex!5581 (regex!7554 r!4097))))

(assert (=> d!1231526 (= (matchR!6200 (regex!7554 r!4097) p!2942) lt!1484372)))

(declare-fun b!4167476 () Bool)

(declare-fun res!1707435 () Bool)

(declare-fun e!2587171 () Bool)

(assert (=> b!4167476 (=> (not res!1707435) (not e!2587171))))

(assert (=> b!4167476 (= res!1707435 (isEmpty!27005 (tail!6695 p!2942)))))

(declare-fun b!4167477 () Bool)

(declare-fun res!1707439 () Bool)

(declare-fun e!2587168 () Bool)

(assert (=> b!4167477 (=> res!1707439 e!2587168)))

(assert (=> b!4167477 (= res!1707439 (not (isEmpty!27005 (tail!6695 p!2942))))))

(declare-fun b!4167478 () Bool)

(declare-fun e!2587172 () Bool)

(assert (=> b!4167478 (= e!2587172 e!2587168)))

(declare-fun res!1707438 () Bool)

(assert (=> b!4167478 (=> res!1707438 e!2587168)))

(declare-fun call!291052 () Bool)

(assert (=> b!4167478 (= res!1707438 call!291052)))

(declare-fun b!4167479 () Bool)

(assert (=> b!4167479 (= e!2587168 (not (= (head!8848 p!2942) (c!712503 (regex!7554 r!4097)))))))

(declare-fun b!4167480 () Bool)

(declare-fun res!1707441 () Bool)

(assert (=> b!4167480 (=> (not res!1707441) (not e!2587171))))

(assert (=> b!4167480 (= res!1707441 (not call!291052))))

(declare-fun b!4167481 () Bool)

(declare-fun nullable!4371 (Regex!12459) Bool)

(assert (=> b!4167481 (= e!2587166 (nullable!4371 (regex!7554 r!4097)))))

(declare-fun b!4167482 () Bool)

(assert (=> b!4167482 (= e!2587170 (= lt!1484372 call!291052))))

(declare-fun b!4167483 () Bool)

(declare-fun e!2587167 () Bool)

(assert (=> b!4167483 (= e!2587167 e!2587172)))

(declare-fun res!1707442 () Bool)

(assert (=> b!4167483 (=> (not res!1707442) (not e!2587172))))

(assert (=> b!4167483 (= res!1707442 (not lt!1484372))))

(declare-fun b!4167484 () Bool)

(declare-fun res!1707440 () Bool)

(assert (=> b!4167484 (=> res!1707440 e!2587167)))

(assert (=> b!4167484 (= res!1707440 e!2587171)))

(declare-fun res!1707437 () Bool)

(assert (=> b!4167484 (=> (not res!1707437) (not e!2587171))))

(assert (=> b!4167484 (= res!1707437 lt!1484372)))

(declare-fun b!4167485 () Bool)

(declare-fun res!1707436 () Bool)

(assert (=> b!4167485 (=> res!1707436 e!2587167)))

(assert (=> b!4167485 (= res!1707436 (not ((_ is ElementMatch!12459) (regex!7554 r!4097))))))

(assert (=> b!4167485 (= e!2587169 e!2587167)))

(declare-fun b!4167486 () Bool)

(assert (=> b!4167486 (= e!2587171 (= (head!8848 p!2942) (c!712503 (regex!7554 r!4097))))))

(declare-fun b!4167487 () Bool)

(assert (=> b!4167487 (= e!2587169 (not lt!1484372))))

(declare-fun bm!291047 () Bool)

(assert (=> bm!291047 (= call!291052 (isEmpty!27005 p!2942))))

(assert (= (and d!1231526 c!712541) b!4167481))

(assert (= (and d!1231526 (not c!712541)) b!4167475))

(assert (= (and d!1231526 c!712540) b!4167482))

(assert (= (and d!1231526 (not c!712540)) b!4167474))

(assert (= (and b!4167474 c!712542) b!4167487))

(assert (= (and b!4167474 (not c!712542)) b!4167485))

(assert (= (and b!4167485 (not res!1707436)) b!4167484))

(assert (= (and b!4167484 res!1707437) b!4167480))

(assert (= (and b!4167480 res!1707441) b!4167476))

(assert (= (and b!4167476 res!1707435) b!4167486))

(assert (= (and b!4167484 (not res!1707440)) b!4167483))

(assert (= (and b!4167483 res!1707442) b!4167478))

(assert (= (and b!4167478 (not res!1707438)) b!4167477))

(assert (= (and b!4167477 (not res!1707439)) b!4167479))

(assert (= (or b!4167482 b!4167480 b!4167478) bm!291047))

(declare-fun m!4758879 () Bool)

(assert (=> b!4167479 m!4758879))

(declare-fun m!4758881 () Bool)

(assert (=> bm!291047 m!4758881))

(assert (=> d!1231526 m!4758881))

(declare-fun m!4758883 () Bool)

(assert (=> d!1231526 m!4758883))

(declare-fun m!4758885 () Bool)

(assert (=> b!4167476 m!4758885))

(assert (=> b!4167476 m!4758885))

(declare-fun m!4758887 () Bool)

(assert (=> b!4167476 m!4758887))

(assert (=> b!4167477 m!4758885))

(assert (=> b!4167477 m!4758885))

(assert (=> b!4167477 m!4758887))

(assert (=> b!4167486 m!4758879))

(assert (=> b!4167475 m!4758879))

(assert (=> b!4167475 m!4758879))

(declare-fun m!4758889 () Bool)

(assert (=> b!4167475 m!4758889))

(assert (=> b!4167475 m!4758885))

(assert (=> b!4167475 m!4758889))

(assert (=> b!4167475 m!4758885))

(declare-fun m!4758891 () Bool)

(assert (=> b!4167475 m!4758891))

(declare-fun m!4758893 () Bool)

(assert (=> b!4167481 m!4758893))

(assert (=> b!4167168 d!1231526))

(declare-fun d!1231528 () Bool)

(declare-fun res!1707447 () Bool)

(declare-fun e!2587175 () Bool)

(assert (=> d!1231528 (=> (not res!1707447) (not e!2587175))))

(assert (=> d!1231528 (= res!1707447 (validRegex!5581 (regex!7554 r!4097)))))

(assert (=> d!1231528 (= (ruleValid!3276 thiss!25889 r!4097) e!2587175)))

(declare-fun b!4167492 () Bool)

(declare-fun res!1707448 () Bool)

(assert (=> b!4167492 (=> (not res!1707448) (not e!2587175))))

(assert (=> b!4167492 (= res!1707448 (not (nullable!4371 (regex!7554 r!4097))))))

(declare-fun b!4167493 () Bool)

(assert (=> b!4167493 (= e!2587175 (not (= (tag!8418 r!4097) (String!52787 ""))))))

(assert (= (and d!1231528 res!1707447) b!4167492))

(assert (= (and b!4167492 res!1707448) b!4167493))

(assert (=> d!1231528 m!4758883))

(assert (=> b!4167492 m!4758893))

(assert (=> b!4167168 d!1231528))

(declare-fun d!1231530 () Bool)

(assert (=> d!1231530 (ruleValid!3276 thiss!25889 r!4097)))

(declare-fun lt!1484375 () Unit!64703)

(declare-fun choose!25517 (LexerInterface!7147 Rule!14908 List!45751) Unit!64703)

(assert (=> d!1231530 (= lt!1484375 (choose!25517 thiss!25889 r!4097 rules!3820))))

(assert (=> d!1231530 (contains!9353 rules!3820 r!4097)))

(assert (=> d!1231530 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2314 thiss!25889 r!4097 rules!3820) lt!1484375)))

(declare-fun bs!595899 () Bool)

(assert (= bs!595899 d!1231530))

(assert (=> bs!595899 m!4758599))

(declare-fun m!4758895 () Bool)

(assert (=> bs!595899 m!4758895))

(assert (=> bs!595899 m!4758595))

(assert (=> b!4167168 d!1231530))

(declare-fun d!1231532 () Bool)

(declare-fun res!1707453 () Bool)

(declare-fun e!2587178 () Bool)

(assert (=> d!1231532 (=> (not res!1707453) (not e!2587178))))

(assert (=> d!1231532 (= res!1707453 (not (isEmpty!27005 (originalCharacters!7954 lt!1484287))))))

(assert (=> d!1231532 (= (inv!60152 lt!1484287) e!2587178)))

(declare-fun b!4167498 () Bool)

(declare-fun res!1707454 () Bool)

(assert (=> b!4167498 (=> (not res!1707454) (not e!2587178))))

(assert (=> b!4167498 (= res!1707454 (= (originalCharacters!7954 lt!1484287) (list!16515 (dynLambda!19557 (toChars!10089 (transformation!7554 (rule!10606 lt!1484287))) (value!235833 lt!1484287)))))))

(declare-fun b!4167499 () Bool)

(assert (=> b!4167499 (= e!2587178 (= (size!33514 lt!1484287) (size!33513 (originalCharacters!7954 lt!1484287))))))

(assert (= (and d!1231532 res!1707453) b!4167498))

(assert (= (and b!4167498 res!1707454) b!4167499))

(declare-fun b_lambda!122379 () Bool)

(assert (=> (not b_lambda!122379) (not b!4167498)))

(declare-fun tb!249563 () Bool)

(declare-fun t!344096 () Bool)

(assert (=> (and b!4167163 (= (toChars!10089 (transformation!7554 r!4097)) (toChars!10089 (transformation!7554 (rule!10606 lt!1484287)))) t!344096) tb!249563))

(declare-fun b!4167500 () Bool)

(declare-fun e!2587179 () Bool)

(declare-fun tp!1272872 () Bool)

(assert (=> b!4167500 (= e!2587179 (and (inv!60155 (c!712502 (dynLambda!19557 (toChars!10089 (transformation!7554 (rule!10606 lt!1484287))) (value!235833 lt!1484287)))) tp!1272872))))

(declare-fun result!304002 () Bool)

(assert (=> tb!249563 (= result!304002 (and (inv!60156 (dynLambda!19557 (toChars!10089 (transformation!7554 (rule!10606 lt!1484287))) (value!235833 lt!1484287))) e!2587179))))

(assert (= tb!249563 b!4167500))

(declare-fun m!4758897 () Bool)

(assert (=> b!4167500 m!4758897))

(declare-fun m!4758899 () Bool)

(assert (=> tb!249563 m!4758899))

(assert (=> b!4167498 t!344096))

(declare-fun b_and!325135 () Bool)

(assert (= b_and!325123 (and (=> t!344096 result!304002) b_and!325135)))

(declare-fun t!344098 () Bool)

(declare-fun tb!249565 () Bool)

(assert (=> (and b!4167177 (= (toChars!10089 (transformation!7554 (h!51047 rules!3820))) (toChars!10089 (transformation!7554 (rule!10606 lt!1484287)))) t!344098) tb!249565))

(declare-fun result!304004 () Bool)

(assert (= result!304004 result!304002))

(assert (=> b!4167498 t!344098))

(declare-fun b_and!325137 () Bool)

(assert (= b_and!325125 (and (=> t!344098 result!304004) b_and!325137)))

(declare-fun tb!249567 () Bool)

(declare-fun t!344100 () Bool)

(assert (=> (and b!4167171 (= (toChars!10089 (transformation!7554 rBis!161)) (toChars!10089 (transformation!7554 (rule!10606 lt!1484287)))) t!344100) tb!249567))

(declare-fun result!304006 () Bool)

(assert (= result!304006 result!304002))

(assert (=> b!4167498 t!344100))

(declare-fun b_and!325139 () Bool)

(assert (= b_and!325127 (and (=> t!344100 result!304006) b_and!325139)))

(declare-fun m!4758901 () Bool)

(assert (=> d!1231532 m!4758901))

(declare-fun m!4758903 () Bool)

(assert (=> b!4167498 m!4758903))

(assert (=> b!4167498 m!4758903))

(declare-fun m!4758905 () Bool)

(assert (=> b!4167498 m!4758905))

(declare-fun m!4758907 () Bool)

(assert (=> b!4167499 m!4758907))

(assert (=> b!4167179 d!1231532))

(declare-fun d!1231534 () Bool)

(declare-fun lt!1484376 () Int)

(assert (=> d!1231534 (>= lt!1484376 0)))

(declare-fun e!2587180 () Int)

(assert (=> d!1231534 (= lt!1484376 e!2587180)))

(declare-fun c!712543 () Bool)

(assert (=> d!1231534 (= c!712543 ((_ is Nil!45625) pBis!100))))

(assert (=> d!1231534 (= (size!33513 pBis!100) lt!1484376)))

(declare-fun b!4167501 () Bool)

(assert (=> b!4167501 (= e!2587180 0)))

(declare-fun b!4167502 () Bool)

(assert (=> b!4167502 (= e!2587180 (+ 1 (size!33513 (t!344056 pBis!100))))))

(assert (= (and d!1231534 c!712543) b!4167501))

(assert (= (and d!1231534 (not c!712543)) b!4167502))

(declare-fun m!4758909 () Bool)

(assert (=> b!4167502 m!4758909))

(assert (=> b!4167175 d!1231534))

(declare-fun b!4167504 () Bool)

(declare-fun res!1707456 () Bool)

(declare-fun e!2587183 () Bool)

(assert (=> b!4167504 (=> (not res!1707456) (not e!2587183))))

(assert (=> b!4167504 (= res!1707456 (= (head!8848 pBis!100) (head!8848 input!3316)))))

(declare-fun d!1231536 () Bool)

(declare-fun e!2587182 () Bool)

(assert (=> d!1231536 e!2587182))

(declare-fun res!1707458 () Bool)

(assert (=> d!1231536 (=> res!1707458 e!2587182)))

(declare-fun lt!1484377 () Bool)

(assert (=> d!1231536 (= res!1707458 (not lt!1484377))))

(declare-fun e!2587181 () Bool)

(assert (=> d!1231536 (= lt!1484377 e!2587181)))

(declare-fun res!1707457 () Bool)

(assert (=> d!1231536 (=> res!1707457 e!2587181)))

(assert (=> d!1231536 (= res!1707457 ((_ is Nil!45625) pBis!100))))

(assert (=> d!1231536 (= (isPrefix!4411 pBis!100 input!3316) lt!1484377)))

(declare-fun b!4167506 () Bool)

(assert (=> b!4167506 (= e!2587182 (>= (size!33513 input!3316) (size!33513 pBis!100)))))

(declare-fun b!4167505 () Bool)

(assert (=> b!4167505 (= e!2587183 (isPrefix!4411 (tail!6695 pBis!100) (tail!6695 input!3316)))))

(declare-fun b!4167503 () Bool)

(assert (=> b!4167503 (= e!2587181 e!2587183)))

(declare-fun res!1707455 () Bool)

(assert (=> b!4167503 (=> (not res!1707455) (not e!2587183))))

(assert (=> b!4167503 (= res!1707455 (not ((_ is Nil!45625) input!3316)))))

(assert (= (and d!1231536 (not res!1707457)) b!4167503))

(assert (= (and b!4167503 res!1707455) b!4167504))

(assert (= (and b!4167504 res!1707456) b!4167505))

(assert (= (and d!1231536 (not res!1707458)) b!4167506))

(declare-fun m!4758911 () Bool)

(assert (=> b!4167504 m!4758911))

(assert (=> b!4167504 m!4758789))

(assert (=> b!4167506 m!4758751))

(assert (=> b!4167506 m!4758587))

(declare-fun m!4758913 () Bool)

(assert (=> b!4167505 m!4758913))

(assert (=> b!4167505 m!4758785))

(assert (=> b!4167505 m!4758913))

(assert (=> b!4167505 m!4758785))

(declare-fun m!4758915 () Bool)

(assert (=> b!4167505 m!4758915))

(assert (=> b!4167176 d!1231536))

(declare-fun b!4167508 () Bool)

(declare-fun res!1707460 () Bool)

(declare-fun e!2587186 () Bool)

(assert (=> b!4167508 (=> (not res!1707460) (not e!2587186))))

(assert (=> b!4167508 (= res!1707460 (= (head!8848 p!2942) (head!8848 input!3316)))))

(declare-fun d!1231538 () Bool)

(declare-fun e!2587185 () Bool)

(assert (=> d!1231538 e!2587185))

(declare-fun res!1707462 () Bool)

(assert (=> d!1231538 (=> res!1707462 e!2587185)))

(declare-fun lt!1484378 () Bool)

(assert (=> d!1231538 (= res!1707462 (not lt!1484378))))

(declare-fun e!2587184 () Bool)

(assert (=> d!1231538 (= lt!1484378 e!2587184)))

(declare-fun res!1707461 () Bool)

(assert (=> d!1231538 (=> res!1707461 e!2587184)))

(assert (=> d!1231538 (= res!1707461 ((_ is Nil!45625) p!2942))))

(assert (=> d!1231538 (= (isPrefix!4411 p!2942 input!3316) lt!1484378)))

(declare-fun b!4167510 () Bool)

(assert (=> b!4167510 (= e!2587185 (>= (size!33513 input!3316) (size!33513 p!2942)))))

(declare-fun b!4167509 () Bool)

(assert (=> b!4167509 (= e!2587186 (isPrefix!4411 (tail!6695 p!2942) (tail!6695 input!3316)))))

(declare-fun b!4167507 () Bool)

(assert (=> b!4167507 (= e!2587184 e!2587186)))

(declare-fun res!1707459 () Bool)

(assert (=> b!4167507 (=> (not res!1707459) (not e!2587186))))

(assert (=> b!4167507 (= res!1707459 (not ((_ is Nil!45625) input!3316)))))

(assert (= (and d!1231538 (not res!1707461)) b!4167507))

(assert (= (and b!4167507 res!1707459) b!4167508))

(assert (= (and b!4167508 res!1707460) b!4167509))

(assert (= (and d!1231538 (not res!1707462)) b!4167510))

(assert (=> b!4167508 m!4758879))

(assert (=> b!4167508 m!4758789))

(assert (=> b!4167510 m!4758751))

(assert (=> b!4167510 m!4758617))

(assert (=> b!4167509 m!4758885))

(assert (=> b!4167509 m!4758785))

(assert (=> b!4167509 m!4758885))

(assert (=> b!4167509 m!4758785))

(declare-fun m!4758917 () Bool)

(assert (=> b!4167509 m!4758917))

(assert (=> b!4167166 d!1231538))

(declare-fun b!4167515 () Bool)

(declare-fun e!2587189 () Bool)

(declare-fun tp!1272875 () Bool)

(assert (=> b!4167515 (= e!2587189 (and tp_is_empty!21881 tp!1272875))))

(assert (=> b!4167172 (= tp!1272819 e!2587189)))

(assert (= (and b!4167172 ((_ is Cons!45625) (t!344056 input!3316))) b!4167515))

(declare-fun b!4167529 () Bool)

(declare-fun e!2587192 () Bool)

(declare-fun tp!1272886 () Bool)

(declare-fun tp!1272890 () Bool)

(assert (=> b!4167529 (= e!2587192 (and tp!1272886 tp!1272890))))

(assert (=> b!4167173 (= tp!1272813 e!2587192)))

(declare-fun b!4167526 () Bool)

(assert (=> b!4167526 (= e!2587192 tp_is_empty!21881)))

(declare-fun b!4167528 () Bool)

(declare-fun tp!1272887 () Bool)

(assert (=> b!4167528 (= e!2587192 tp!1272887)))

(declare-fun b!4167527 () Bool)

(declare-fun tp!1272889 () Bool)

(declare-fun tp!1272888 () Bool)

(assert (=> b!4167527 (= e!2587192 (and tp!1272889 tp!1272888))))

(assert (= (and b!4167173 ((_ is ElementMatch!12459) (regex!7554 rBis!161))) b!4167526))

(assert (= (and b!4167173 ((_ is Concat!20244) (regex!7554 rBis!161))) b!4167527))

(assert (= (and b!4167173 ((_ is Star!12459) (regex!7554 rBis!161))) b!4167528))

(assert (= (and b!4167173 ((_ is Union!12459) (regex!7554 rBis!161))) b!4167529))

(declare-fun b!4167533 () Bool)

(declare-fun e!2587193 () Bool)

(declare-fun tp!1272891 () Bool)

(declare-fun tp!1272895 () Bool)

(assert (=> b!4167533 (= e!2587193 (and tp!1272891 tp!1272895))))

(assert (=> b!4167169 (= tp!1272816 e!2587193)))

(declare-fun b!4167530 () Bool)

(assert (=> b!4167530 (= e!2587193 tp_is_empty!21881)))

(declare-fun b!4167532 () Bool)

(declare-fun tp!1272892 () Bool)

(assert (=> b!4167532 (= e!2587193 tp!1272892)))

(declare-fun b!4167531 () Bool)

(declare-fun tp!1272894 () Bool)

(declare-fun tp!1272893 () Bool)

(assert (=> b!4167531 (= e!2587193 (and tp!1272894 tp!1272893))))

(assert (= (and b!4167169 ((_ is ElementMatch!12459) (regex!7554 r!4097))) b!4167530))

(assert (= (and b!4167169 ((_ is Concat!20244) (regex!7554 r!4097))) b!4167531))

(assert (= (and b!4167169 ((_ is Star!12459) (regex!7554 r!4097))) b!4167532))

(assert (= (and b!4167169 ((_ is Union!12459) (regex!7554 r!4097))) b!4167533))

(declare-fun b!4167544 () Bool)

(declare-fun b_free!120391 () Bool)

(declare-fun b_next!121095 () Bool)

(assert (=> b!4167544 (= b_free!120391 (not b_next!121095))))

(declare-fun tb!249569 () Bool)

(declare-fun t!344102 () Bool)

(assert (=> (and b!4167544 (= (toValue!10230 (transformation!7554 (h!51047 (t!344058 rules!3820)))) (toValue!10230 (transformation!7554 r!4097))) t!344102) tb!249569))

(declare-fun result!304014 () Bool)

(assert (= result!304014 result!303960))

(assert (=> d!1231496 t!344102))

(assert (=> d!1231498 t!344102))

(declare-fun b_and!325141 () Bool)

(declare-fun tp!1272907 () Bool)

(assert (=> b!4167544 (= tp!1272907 (and (=> t!344102 result!304014) b_and!325141))))

(declare-fun b_free!120393 () Bool)

(declare-fun b_next!121097 () Bool)

(assert (=> b!4167544 (= b_free!120393 (not b_next!121097))))

(declare-fun t!344104 () Bool)

(declare-fun tb!249571 () Bool)

(assert (=> (and b!4167544 (= (toChars!10089 (transformation!7554 (h!51047 (t!344058 rules!3820)))) (toChars!10089 (transformation!7554 r!4097))) t!344104) tb!249571))

(declare-fun result!304016 () Bool)

(assert (= result!304016 result!303994))

(assert (=> d!1231498 t!344104))

(declare-fun tb!249573 () Bool)

(declare-fun t!344106 () Bool)

(assert (=> (and b!4167544 (= (toChars!10089 (transformation!7554 (h!51047 (t!344058 rules!3820)))) (toChars!10089 (transformation!7554 (rule!10606 lt!1484287)))) t!344106) tb!249573))

(declare-fun result!304018 () Bool)

(assert (= result!304018 result!304002))

(assert (=> b!4167498 t!344106))

(declare-fun b_and!325143 () Bool)

(declare-fun tp!1272906 () Bool)

(assert (=> b!4167544 (= tp!1272906 (and (=> t!344104 result!304016) (=> t!344106 result!304018) b_and!325143))))

(declare-fun e!2587202 () Bool)

(assert (=> b!4167544 (= e!2587202 (and tp!1272907 tp!1272906))))

(declare-fun e!2587205 () Bool)

(declare-fun b!4167543 () Bool)

(declare-fun tp!1272905 () Bool)

(assert (=> b!4167543 (= e!2587205 (and tp!1272905 (inv!60148 (tag!8418 (h!51047 (t!344058 rules!3820)))) (inv!60151 (transformation!7554 (h!51047 (t!344058 rules!3820)))) e!2587202))))

(declare-fun b!4167542 () Bool)

(declare-fun e!2587203 () Bool)

(declare-fun tp!1272904 () Bool)

(assert (=> b!4167542 (= e!2587203 (and e!2587205 tp!1272904))))

(assert (=> b!4167164 (= tp!1272818 e!2587203)))

(assert (= b!4167543 b!4167544))

(assert (= b!4167542 b!4167543))

(assert (= (and b!4167164 ((_ is Cons!45627) (t!344058 rules!3820))) b!4167542))

(declare-fun m!4758919 () Bool)

(assert (=> b!4167543 m!4758919))

(declare-fun m!4758921 () Bool)

(assert (=> b!4167543 m!4758921))

(declare-fun b!4167545 () Bool)

(declare-fun e!2587206 () Bool)

(declare-fun tp!1272908 () Bool)

(assert (=> b!4167545 (= e!2587206 (and tp_is_empty!21881 tp!1272908))))

(assert (=> b!4167170 (= tp!1272821 e!2587206)))

(assert (= (and b!4167170 ((_ is Cons!45625) (t!344056 pBis!100))) b!4167545))

(declare-fun b!4167546 () Bool)

(declare-fun e!2587207 () Bool)

(declare-fun tp!1272909 () Bool)

(assert (=> b!4167546 (= e!2587207 (and tp_is_empty!21881 tp!1272909))))

(assert (=> b!4167165 (= tp!1272820 e!2587207)))

(assert (= (and b!4167165 ((_ is Cons!45625) (t!344056 p!2942))) b!4167546))

(declare-fun b!4167550 () Bool)

(declare-fun e!2587208 () Bool)

(declare-fun tp!1272910 () Bool)

(declare-fun tp!1272914 () Bool)

(assert (=> b!4167550 (= e!2587208 (and tp!1272910 tp!1272914))))

(assert (=> b!4167182 (= tp!1272810 e!2587208)))

(declare-fun b!4167547 () Bool)

(assert (=> b!4167547 (= e!2587208 tp_is_empty!21881)))

(declare-fun b!4167549 () Bool)

(declare-fun tp!1272911 () Bool)

(assert (=> b!4167549 (= e!2587208 tp!1272911)))

(declare-fun b!4167548 () Bool)

(declare-fun tp!1272913 () Bool)

(declare-fun tp!1272912 () Bool)

(assert (=> b!4167548 (= e!2587208 (and tp!1272913 tp!1272912))))

(assert (= (and b!4167182 ((_ is ElementMatch!12459) (regex!7554 (h!51047 rules!3820)))) b!4167547))

(assert (= (and b!4167182 ((_ is Concat!20244) (regex!7554 (h!51047 rules!3820)))) b!4167548))

(assert (= (and b!4167182 ((_ is Star!12459) (regex!7554 (h!51047 rules!3820)))) b!4167549))

(assert (= (and b!4167182 ((_ is Union!12459) (regex!7554 (h!51047 rules!3820)))) b!4167550))

(declare-fun b_lambda!122381 () Bool)

(assert (= b_lambda!122375 (or (and b!4167163 b_free!120377) (and b!4167177 b_free!120381 (= (toChars!10089 (transformation!7554 (h!51047 rules!3820))) (toChars!10089 (transformation!7554 r!4097)))) (and b!4167171 b_free!120385 (= (toChars!10089 (transformation!7554 rBis!161)) (toChars!10089 (transformation!7554 r!4097)))) (and b!4167544 b_free!120393 (= (toChars!10089 (transformation!7554 (h!51047 (t!344058 rules!3820)))) (toChars!10089 (transformation!7554 r!4097)))) b_lambda!122381)))

(declare-fun b_lambda!122383 () Bool)

(assert (= b_lambda!122361 (or (and b!4167163 b_free!120375) (and b!4167177 b_free!120379 (= (toValue!10230 (transformation!7554 (h!51047 rules!3820))) (toValue!10230 (transformation!7554 r!4097)))) (and b!4167171 b_free!120383 (= (toValue!10230 (transformation!7554 rBis!161)) (toValue!10230 (transformation!7554 r!4097)))) (and b!4167544 b_free!120391 (= (toValue!10230 (transformation!7554 (h!51047 (t!344058 rules!3820)))) (toValue!10230 (transformation!7554 r!4097)))) b_lambda!122383)))

(declare-fun b_lambda!122385 () Bool)

(assert (= b_lambda!122377 (or (and b!4167163 b_free!120375) (and b!4167177 b_free!120379 (= (toValue!10230 (transformation!7554 (h!51047 rules!3820))) (toValue!10230 (transformation!7554 r!4097)))) (and b!4167171 b_free!120383 (= (toValue!10230 (transformation!7554 rBis!161)) (toValue!10230 (transformation!7554 r!4097)))) (and b!4167544 b_free!120391 (= (toValue!10230 (transformation!7554 (h!51047 (t!344058 rules!3820)))) (toValue!10230 (transformation!7554 r!4097)))) b_lambda!122385)))

(check-sat (not b!4167307) (not b!4167481) (not b!4167506) b_and!325137 (not d!1231532) (not b!4167529) (not b!4167528) (not b!4167509) (not tb!249533) (not b!4167475) (not bm!291047) (not b!4167499) b_and!325141 b_and!325131 (not b_lambda!122383) (not b!4167295) (not d!1231476) (not b!4167306) (not b!4167546) (not b_next!121095) (not b!4167479) (not b!4167531) (not b!4167542) (not b!4167492) (not b!4167500) (not b!4167533) (not b!4167510) (not b!4167282) (not b!4167550) (not tb!249563) (not b!4167515) (not b!4167486) (not b_next!121083) (not b_next!121079) (not b_next!121085) (not b!4167220) (not b!4167290) (not b_lambda!122379) (not b!4167543) (not d!1231478) (not b!4167508) (not b!4167498) b_and!325143 (not b!4167278) (not b!4167283) (not b!4167445) (not d!1231466) tp_is_empty!21881 (not b!4167279) (not tb!249557) (not b_lambda!122385) (not b!4167280) (not d!1231530) (not b!4167207) (not b_next!121097) (not b_next!121089) (not b!4167276) (not d!1231470) b_and!325129 (not b!4167226) (not b!4167284) (not b!4167477) (not b!4167545) (not b!4167222) (not b!4167308) (not d!1231492) (not b!4167502) (not d!1231460) (not b!4167505) (not d!1231490) (not b!4167532) (not b!4167476) b_and!325139 (not b!4167504) (not b!4167223) (not d!1231498) (not b_next!121087) (not b!4167277) (not d!1231474) (not d!1231488) b_and!325133 b_and!325135 (not b!4167219) (not b!4167549) (not d!1231526) (not b_next!121081) (not b!4167527) (not d!1231528) (not b!4167548) (not b_lambda!122381) (not d!1231454))
(check-sat (not b_next!121095) (not b_next!121083) b_and!325143 (not b_next!121097) (not b_next!121089) b_and!325129 b_and!325139 (not b_next!121087) b_and!325133 b_and!325137 b_and!325135 (not b_next!121081) b_and!325141 b_and!325131 (not b_next!121079) (not b_next!121085))
(get-model)

(declare-fun d!1231612 () Bool)

(declare-fun c!712573 () Bool)

(assert (=> d!1231612 (= c!712573 ((_ is Nil!45627) rules!3820))))

(declare-fun e!2587288 () (InoxSet Rule!14908))

(assert (=> d!1231612 (= (content!7094 rules!3820) e!2587288)))

(declare-fun b!4167668 () Bool)

(assert (=> b!4167668 (= e!2587288 ((as const (Array Rule!14908 Bool)) false))))

(declare-fun b!4167669 () Bool)

(assert (=> b!4167669 (= e!2587288 ((_ map or) (store ((as const (Array Rule!14908 Bool)) false) (h!51047 rules!3820) true) (content!7094 (t!344058 rules!3820))))))

(assert (= (and d!1231612 c!712573) b!4167668))

(assert (= (and d!1231612 (not c!712573)) b!4167669))

(declare-fun m!4759041 () Bool)

(assert (=> b!4167669 m!4759041))

(declare-fun m!4759043 () Bool)

(assert (=> b!4167669 m!4759043))

(assert (=> d!1231470 d!1231612))

(declare-fun d!1231614 () Bool)

(assert (=> d!1231614 (= (head!8848 input!3316) (h!51045 input!3316))))

(assert (=> b!4167306 d!1231614))

(declare-fun b!4167681 () Bool)

(declare-fun lt!1484401 () List!45749)

(declare-fun e!2587294 () Bool)

(assert (=> b!4167681 (= e!2587294 (or (not (= lt!1484347 Nil!45625)) (= lt!1484401 p!2942)))))

(declare-fun b!4167679 () Bool)

(declare-fun e!2587293 () List!45749)

(assert (=> b!4167679 (= e!2587293 (Cons!45625 (h!51045 p!2942) (++!11664 (t!344056 p!2942) lt!1484347)))))

(declare-fun b!4167680 () Bool)

(declare-fun res!1707521 () Bool)

(assert (=> b!4167680 (=> (not res!1707521) (not e!2587294))))

(assert (=> b!4167680 (= res!1707521 (= (size!33513 lt!1484401) (+ (size!33513 p!2942) (size!33513 lt!1484347))))))

(declare-fun b!4167678 () Bool)

(assert (=> b!4167678 (= e!2587293 lt!1484347)))

(declare-fun d!1231616 () Bool)

(assert (=> d!1231616 e!2587294))

(declare-fun res!1707522 () Bool)

(assert (=> d!1231616 (=> (not res!1707522) (not e!2587294))))

(declare-fun content!7096 (List!45749) (InoxSet C!25108))

(assert (=> d!1231616 (= res!1707522 (= (content!7096 lt!1484401) ((_ map or) (content!7096 p!2942) (content!7096 lt!1484347))))))

(assert (=> d!1231616 (= lt!1484401 e!2587293)))

(declare-fun c!712576 () Bool)

(assert (=> d!1231616 (= c!712576 ((_ is Nil!45625) p!2942))))

(assert (=> d!1231616 (= (++!11664 p!2942 lt!1484347) lt!1484401)))

(assert (= (and d!1231616 c!712576) b!4167678))

(assert (= (and d!1231616 (not c!712576)) b!4167679))

(assert (= (and d!1231616 res!1707522) b!4167680))

(assert (= (and b!4167680 res!1707521) b!4167681))

(declare-fun m!4759045 () Bool)

(assert (=> b!4167679 m!4759045))

(declare-fun m!4759047 () Bool)

(assert (=> b!4167680 m!4759047))

(assert (=> b!4167680 m!4758617))

(declare-fun m!4759049 () Bool)

(assert (=> b!4167680 m!4759049))

(declare-fun m!4759051 () Bool)

(assert (=> d!1231616 m!4759051))

(declare-fun m!4759053 () Bool)

(assert (=> d!1231616 m!4759053))

(declare-fun m!4759055 () Bool)

(assert (=> d!1231616 m!4759055))

(assert (=> d!1231492 d!1231616))

(declare-fun d!1231618 () Bool)

(declare-fun lt!1484402 () Int)

(assert (=> d!1231618 (>= lt!1484402 0)))

(declare-fun e!2587295 () Int)

(assert (=> d!1231618 (= lt!1484402 e!2587295)))

(declare-fun c!712577 () Bool)

(assert (=> d!1231618 (= c!712577 ((_ is Nil!45625) input!3316))))

(assert (=> d!1231618 (= (size!33513 input!3316) lt!1484402)))

(declare-fun b!4167682 () Bool)

(assert (=> b!4167682 (= e!2587295 0)))

(declare-fun b!4167683 () Bool)

(assert (=> b!4167683 (= e!2587295 (+ 1 (size!33513 (t!344056 input!3316))))))

(assert (= (and d!1231618 c!712577) b!4167682))

(assert (= (and d!1231618 (not c!712577)) b!4167683))

(declare-fun m!4759057 () Bool)

(assert (=> b!4167683 m!4759057))

(assert (=> d!1231492 d!1231618))

(assert (=> d!1231492 d!1231486))

(assert (=> b!4167308 d!1231618))

(declare-fun d!1231620 () Bool)

(assert (=> d!1231620 (= (head!8848 p!2942) (h!51045 p!2942))))

(assert (=> b!4167486 d!1231620))

(declare-fun d!1231622 () Bool)

(assert (=> d!1231622 (= (inv!60148 (tag!8418 (h!51047 (t!344058 rules!3820)))) (= (mod (str.len (value!235832 (tag!8418 (h!51047 (t!344058 rules!3820))))) 2) 0))))

(assert (=> b!4167543 d!1231622))

(declare-fun d!1231624 () Bool)

(declare-fun res!1707523 () Bool)

(declare-fun e!2587296 () Bool)

(assert (=> d!1231624 (=> (not res!1707523) (not e!2587296))))

(assert (=> d!1231624 (= res!1707523 (semiInverseModEq!3280 (toChars!10089 (transformation!7554 (h!51047 (t!344058 rules!3820)))) (toValue!10230 (transformation!7554 (h!51047 (t!344058 rules!3820))))))))

(assert (=> d!1231624 (= (inv!60151 (transformation!7554 (h!51047 (t!344058 rules!3820)))) e!2587296)))

(declare-fun b!4167684 () Bool)

(assert (=> b!4167684 (= e!2587296 (equivClasses!3179 (toChars!10089 (transformation!7554 (h!51047 (t!344058 rules!3820)))) (toValue!10230 (transformation!7554 (h!51047 (t!344058 rules!3820))))))))

(assert (= (and d!1231624 res!1707523) b!4167684))

(declare-fun m!4759059 () Bool)

(assert (=> d!1231624 m!4759059))

(declare-fun m!4759061 () Bool)

(assert (=> b!4167684 m!4759061))

(assert (=> b!4167543 d!1231624))

(declare-fun d!1231626 () Bool)

(assert (=> d!1231626 (= (isEmpty!27005 p!2942) ((_ is Nil!45625) p!2942))))

(assert (=> bm!291047 d!1231626))

(declare-fun d!1231628 () Bool)

(declare-fun list!16517 (Conc!13765) List!45749)

(assert (=> d!1231628 (= (list!16515 (dynLambda!19557 (toChars!10089 (transformation!7554 (rule!10606 lt!1484287))) (value!235833 lt!1484287))) (list!16517 (c!712502 (dynLambda!19557 (toChars!10089 (transformation!7554 (rule!10606 lt!1484287))) (value!235833 lt!1484287)))))))

(declare-fun bs!595912 () Bool)

(assert (= bs!595912 d!1231628))

(declare-fun m!4759063 () Bool)

(assert (=> bs!595912 m!4759063))

(assert (=> b!4167498 d!1231628))

(declare-fun d!1231630 () Bool)

(assert (=> d!1231630 (= (head!8848 pBis!100) (h!51045 pBis!100))))

(assert (=> b!4167504 d!1231630))

(assert (=> b!4167504 d!1231614))

(declare-fun b!4167686 () Bool)

(declare-fun res!1707525 () Bool)

(declare-fun e!2587299 () Bool)

(assert (=> b!4167686 (=> (not res!1707525) (not e!2587299))))

(assert (=> b!4167686 (= res!1707525 (= (head!8848 (tail!6695 p!2942)) (head!8848 (tail!6695 input!3316))))))

(declare-fun d!1231632 () Bool)

(declare-fun e!2587298 () Bool)

(assert (=> d!1231632 e!2587298))

(declare-fun res!1707527 () Bool)

(assert (=> d!1231632 (=> res!1707527 e!2587298)))

(declare-fun lt!1484403 () Bool)

(assert (=> d!1231632 (= res!1707527 (not lt!1484403))))

(declare-fun e!2587297 () Bool)

(assert (=> d!1231632 (= lt!1484403 e!2587297)))

(declare-fun res!1707526 () Bool)

(assert (=> d!1231632 (=> res!1707526 e!2587297)))

(assert (=> d!1231632 (= res!1707526 ((_ is Nil!45625) (tail!6695 p!2942)))))

(assert (=> d!1231632 (= (isPrefix!4411 (tail!6695 p!2942) (tail!6695 input!3316)) lt!1484403)))

(declare-fun b!4167688 () Bool)

(assert (=> b!4167688 (= e!2587298 (>= (size!33513 (tail!6695 input!3316)) (size!33513 (tail!6695 p!2942))))))

(declare-fun b!4167687 () Bool)

(assert (=> b!4167687 (= e!2587299 (isPrefix!4411 (tail!6695 (tail!6695 p!2942)) (tail!6695 (tail!6695 input!3316))))))

(declare-fun b!4167685 () Bool)

(assert (=> b!4167685 (= e!2587297 e!2587299)))

(declare-fun res!1707524 () Bool)

(assert (=> b!4167685 (=> (not res!1707524) (not e!2587299))))

(assert (=> b!4167685 (= res!1707524 (not ((_ is Nil!45625) (tail!6695 input!3316))))))

(assert (= (and d!1231632 (not res!1707526)) b!4167685))

(assert (= (and b!4167685 res!1707524) b!4167686))

(assert (= (and b!4167686 res!1707525) b!4167687))

(assert (= (and d!1231632 (not res!1707527)) b!4167688))

(assert (=> b!4167686 m!4758885))

(declare-fun m!4759065 () Bool)

(assert (=> b!4167686 m!4759065))

(assert (=> b!4167686 m!4758785))

(declare-fun m!4759067 () Bool)

(assert (=> b!4167686 m!4759067))

(assert (=> b!4167688 m!4758785))

(declare-fun m!4759069 () Bool)

(assert (=> b!4167688 m!4759069))

(assert (=> b!4167688 m!4758885))

(declare-fun m!4759071 () Bool)

(assert (=> b!4167688 m!4759071))

(assert (=> b!4167687 m!4758885))

(declare-fun m!4759073 () Bool)

(assert (=> b!4167687 m!4759073))

(assert (=> b!4167687 m!4758785))

(declare-fun m!4759075 () Bool)

(assert (=> b!4167687 m!4759075))

(assert (=> b!4167687 m!4759073))

(assert (=> b!4167687 m!4759075))

(declare-fun m!4759077 () Bool)

(assert (=> b!4167687 m!4759077))

(assert (=> b!4167509 d!1231632))

(declare-fun d!1231634 () Bool)

(assert (=> d!1231634 (= (tail!6695 p!2942) (t!344056 p!2942))))

(assert (=> b!4167509 d!1231634))

(declare-fun d!1231636 () Bool)

(assert (=> d!1231636 (= (tail!6695 input!3316) (t!344056 input!3316))))

(assert (=> b!4167509 d!1231636))

(declare-fun d!1231638 () Bool)

(declare-fun e!2587302 () Bool)

(assert (=> d!1231638 e!2587302))

(declare-fun res!1707530 () Bool)

(assert (=> d!1231638 (=> (not res!1707530) (not e!2587302))))

(declare-fun lt!1484406 () BalanceConc!27124)

(assert (=> d!1231638 (= res!1707530 (= (list!16515 lt!1484406) p!2942))))

(declare-fun fromList!907 (List!45749) Conc!13765)

(assert (=> d!1231638 (= lt!1484406 (BalanceConc!27125 (fromList!907 p!2942)))))

(assert (=> d!1231638 (= (fromListB!2563 p!2942) lt!1484406)))

(declare-fun b!4167691 () Bool)

(declare-fun isBalanced!3728 (Conc!13765) Bool)

(assert (=> b!4167691 (= e!2587302 (isBalanced!3728 (fromList!907 p!2942)))))

(assert (= (and d!1231638 res!1707530) b!4167691))

(declare-fun m!4759079 () Bool)

(assert (=> d!1231638 m!4759079))

(declare-fun m!4759081 () Bool)

(assert (=> d!1231638 m!4759081))

(assert (=> b!4167691 m!4759081))

(assert (=> b!4167691 m!4759081))

(declare-fun m!4759083 () Bool)

(assert (=> b!4167691 m!4759083))

(assert (=> d!1231490 d!1231638))

(declare-fun d!1231640 () Bool)

(assert (=> d!1231640 (= (list!16515 (dynLambda!19557 (toChars!10089 (transformation!7554 r!4097)) (dynLambda!19553 (toValue!10230 (transformation!7554 r!4097)) lt!1484286))) (list!16517 (c!712502 (dynLambda!19557 (toChars!10089 (transformation!7554 r!4097)) (dynLambda!19553 (toValue!10230 (transformation!7554 r!4097)) lt!1484286)))))))

(declare-fun bs!595913 () Bool)

(assert (= bs!595913 d!1231640))

(declare-fun m!4759085 () Bool)

(assert (=> bs!595913 m!4759085))

(assert (=> d!1231498 d!1231640))

(declare-fun d!1231642 () Bool)

(assert (=> d!1231642 (= (list!16515 lt!1484286) (list!16517 (c!712502 lt!1484286)))))

(declare-fun bs!595914 () Bool)

(assert (= bs!595914 d!1231642))

(declare-fun m!4759087 () Bool)

(assert (=> bs!595914 m!4759087))

(assert (=> d!1231498 d!1231642))

(declare-fun d!1231644 () Bool)

(declare-fun dynLambda!19558 (Int BalanceConc!27124) Bool)

(assert (=> d!1231644 (dynLambda!19558 lambda!129177 lt!1484286)))

(declare-fun lt!1484409 () Unit!64703)

(declare-fun choose!25518 (Int BalanceConc!27124) Unit!64703)

(assert (=> d!1231644 (= lt!1484409 (choose!25518 lambda!129177 lt!1484286))))

(declare-fun Forall!1558 (Int) Bool)

(assert (=> d!1231644 (Forall!1558 lambda!129177)))

(assert (=> d!1231644 (= (ForallOf!1014 lambda!129177 lt!1484286) lt!1484409)))

(declare-fun b_lambda!122397 () Bool)

(assert (=> (not b_lambda!122397) (not d!1231644)))

(declare-fun bs!595915 () Bool)

(assert (= bs!595915 d!1231644))

(declare-fun m!4759089 () Bool)

(assert (=> bs!595915 m!4759089))

(declare-fun m!4759091 () Bool)

(assert (=> bs!595915 m!4759091))

(declare-fun m!4759093 () Bool)

(assert (=> bs!595915 m!4759093))

(assert (=> d!1231498 d!1231644))

(declare-fun b!4167692 () Bool)

(declare-fun e!2587307 () Bool)

(declare-fun e!2587306 () Bool)

(assert (=> b!4167692 (= e!2587307 e!2587306)))

(declare-fun c!712581 () Bool)

(assert (=> b!4167692 (= c!712581 ((_ is EmptyLang!12459) (regex!7554 r!4097)))))

(declare-fun b!4167693 () Bool)

(declare-fun e!2587303 () Bool)

(assert (=> b!4167693 (= e!2587303 (matchR!6200 (derivativeStep!3761 (regex!7554 r!4097) (head!8848 (list!16515 (charsOf!5027 (_1!24899 (get!14828 lt!1484334)))))) (tail!6695 (list!16515 (charsOf!5027 (_1!24899 (get!14828 lt!1484334)))))))))

(declare-fun d!1231646 () Bool)

(assert (=> d!1231646 e!2587307))

(declare-fun c!712579 () Bool)

(assert (=> d!1231646 (= c!712579 ((_ is EmptyExpr!12459) (regex!7554 r!4097)))))

(declare-fun lt!1484410 () Bool)

(assert (=> d!1231646 (= lt!1484410 e!2587303)))

(declare-fun c!712580 () Bool)

(assert (=> d!1231646 (= c!712580 (isEmpty!27005 (list!16515 (charsOf!5027 (_1!24899 (get!14828 lt!1484334))))))))

(assert (=> d!1231646 (validRegex!5581 (regex!7554 r!4097))))

(assert (=> d!1231646 (= (matchR!6200 (regex!7554 r!4097) (list!16515 (charsOf!5027 (_1!24899 (get!14828 lt!1484334))))) lt!1484410)))

(declare-fun b!4167694 () Bool)

(declare-fun res!1707531 () Bool)

(declare-fun e!2587308 () Bool)

(assert (=> b!4167694 (=> (not res!1707531) (not e!2587308))))

(assert (=> b!4167694 (= res!1707531 (isEmpty!27005 (tail!6695 (list!16515 (charsOf!5027 (_1!24899 (get!14828 lt!1484334)))))))))

(declare-fun b!4167695 () Bool)

(declare-fun res!1707535 () Bool)

(declare-fun e!2587305 () Bool)

(assert (=> b!4167695 (=> res!1707535 e!2587305)))

(assert (=> b!4167695 (= res!1707535 (not (isEmpty!27005 (tail!6695 (list!16515 (charsOf!5027 (_1!24899 (get!14828 lt!1484334))))))))))

(declare-fun b!4167696 () Bool)

(declare-fun e!2587309 () Bool)

(assert (=> b!4167696 (= e!2587309 e!2587305)))

(declare-fun res!1707534 () Bool)

(assert (=> b!4167696 (=> res!1707534 e!2587305)))

(declare-fun call!291063 () Bool)

(assert (=> b!4167696 (= res!1707534 call!291063)))

(declare-fun b!4167697 () Bool)

(assert (=> b!4167697 (= e!2587305 (not (= (head!8848 (list!16515 (charsOf!5027 (_1!24899 (get!14828 lt!1484334))))) (c!712503 (regex!7554 r!4097)))))))

(declare-fun b!4167698 () Bool)

(declare-fun res!1707537 () Bool)

(assert (=> b!4167698 (=> (not res!1707537) (not e!2587308))))

(assert (=> b!4167698 (= res!1707537 (not call!291063))))

(declare-fun b!4167699 () Bool)

(assert (=> b!4167699 (= e!2587303 (nullable!4371 (regex!7554 r!4097)))))

(declare-fun b!4167700 () Bool)

(assert (=> b!4167700 (= e!2587307 (= lt!1484410 call!291063))))

(declare-fun b!4167701 () Bool)

(declare-fun e!2587304 () Bool)

(assert (=> b!4167701 (= e!2587304 e!2587309)))

(declare-fun res!1707538 () Bool)

(assert (=> b!4167701 (=> (not res!1707538) (not e!2587309))))

(assert (=> b!4167701 (= res!1707538 (not lt!1484410))))

(declare-fun b!4167702 () Bool)

(declare-fun res!1707536 () Bool)

(assert (=> b!4167702 (=> res!1707536 e!2587304)))

(assert (=> b!4167702 (= res!1707536 e!2587308)))

(declare-fun res!1707533 () Bool)

(assert (=> b!4167702 (=> (not res!1707533) (not e!2587308))))

(assert (=> b!4167702 (= res!1707533 lt!1484410)))

(declare-fun b!4167703 () Bool)

(declare-fun res!1707532 () Bool)

(assert (=> b!4167703 (=> res!1707532 e!2587304)))

(assert (=> b!4167703 (= res!1707532 (not ((_ is ElementMatch!12459) (regex!7554 r!4097))))))

(assert (=> b!4167703 (= e!2587306 e!2587304)))

(declare-fun b!4167704 () Bool)

(assert (=> b!4167704 (= e!2587308 (= (head!8848 (list!16515 (charsOf!5027 (_1!24899 (get!14828 lt!1484334))))) (c!712503 (regex!7554 r!4097))))))

(declare-fun b!4167705 () Bool)

(assert (=> b!4167705 (= e!2587306 (not lt!1484410))))

(declare-fun bm!291058 () Bool)

(assert (=> bm!291058 (= call!291063 (isEmpty!27005 (list!16515 (charsOf!5027 (_1!24899 (get!14828 lt!1484334))))))))

(assert (= (and d!1231646 c!712580) b!4167699))

(assert (= (and d!1231646 (not c!712580)) b!4167693))

(assert (= (and d!1231646 c!712579) b!4167700))

(assert (= (and d!1231646 (not c!712579)) b!4167692))

(assert (= (and b!4167692 c!712581) b!4167705))

(assert (= (and b!4167692 (not c!712581)) b!4167703))

(assert (= (and b!4167703 (not res!1707532)) b!4167702))

(assert (= (and b!4167702 res!1707533) b!4167698))

(assert (= (and b!4167698 res!1707537) b!4167694))

(assert (= (and b!4167694 res!1707531) b!4167704))

(assert (= (and b!4167702 (not res!1707536)) b!4167701))

(assert (= (and b!4167701 res!1707538) b!4167696))

(assert (= (and b!4167696 (not res!1707534)) b!4167695))

(assert (= (and b!4167695 (not res!1707535)) b!4167697))

(assert (= (or b!4167700 b!4167698 b!4167696) bm!291058))

(assert (=> b!4167697 m!4758763))

(declare-fun m!4759095 () Bool)

(assert (=> b!4167697 m!4759095))

(assert (=> bm!291058 m!4758763))

(declare-fun m!4759097 () Bool)

(assert (=> bm!291058 m!4759097))

(assert (=> d!1231646 m!4758763))

(assert (=> d!1231646 m!4759097))

(assert (=> d!1231646 m!4758883))

(assert (=> b!4167694 m!4758763))

(declare-fun m!4759099 () Bool)

(assert (=> b!4167694 m!4759099))

(assert (=> b!4167694 m!4759099))

(declare-fun m!4759101 () Bool)

(assert (=> b!4167694 m!4759101))

(assert (=> b!4167695 m!4758763))

(assert (=> b!4167695 m!4759099))

(assert (=> b!4167695 m!4759099))

(assert (=> b!4167695 m!4759101))

(assert (=> b!4167704 m!4758763))

(assert (=> b!4167704 m!4759095))

(assert (=> b!4167693 m!4758763))

(assert (=> b!4167693 m!4759095))

(assert (=> b!4167693 m!4759095))

(declare-fun m!4759103 () Bool)

(assert (=> b!4167693 m!4759103))

(assert (=> b!4167693 m!4758763))

(assert (=> b!4167693 m!4759099))

(assert (=> b!4167693 m!4759103))

(assert (=> b!4167693 m!4759099))

(declare-fun m!4759105 () Bool)

(assert (=> b!4167693 m!4759105))

(assert (=> b!4167699 m!4758893))

(assert (=> b!4167280 d!1231646))

(declare-fun d!1231648 () Bool)

(assert (=> d!1231648 (= (list!16515 (charsOf!5027 (_1!24899 (get!14828 lt!1484334)))) (list!16517 (c!712502 (charsOf!5027 (_1!24899 (get!14828 lt!1484334))))))))

(declare-fun bs!595916 () Bool)

(assert (= bs!595916 d!1231648))

(declare-fun m!4759107 () Bool)

(assert (=> bs!595916 m!4759107))

(assert (=> b!4167280 d!1231648))

(declare-fun d!1231650 () Bool)

(declare-fun lt!1484413 () BalanceConc!27124)

(assert (=> d!1231650 (= (list!16515 lt!1484413) (originalCharacters!7954 (_1!24899 (get!14828 lt!1484334))))))

(assert (=> d!1231650 (= lt!1484413 (dynLambda!19557 (toChars!10089 (transformation!7554 (rule!10606 (_1!24899 (get!14828 lt!1484334))))) (value!235833 (_1!24899 (get!14828 lt!1484334)))))))

(assert (=> d!1231650 (= (charsOf!5027 (_1!24899 (get!14828 lt!1484334))) lt!1484413)))

(declare-fun b_lambda!122399 () Bool)

(assert (=> (not b_lambda!122399) (not d!1231650)))

(declare-fun tb!249607 () Bool)

(declare-fun t!344142 () Bool)

(assert (=> (and b!4167163 (= (toChars!10089 (transformation!7554 r!4097)) (toChars!10089 (transformation!7554 (rule!10606 (_1!24899 (get!14828 lt!1484334)))))) t!344142) tb!249607))

(declare-fun b!4167706 () Bool)

(declare-fun e!2587310 () Bool)

(declare-fun tp!1272917 () Bool)

(assert (=> b!4167706 (= e!2587310 (and (inv!60155 (c!712502 (dynLambda!19557 (toChars!10089 (transformation!7554 (rule!10606 (_1!24899 (get!14828 lt!1484334))))) (value!235833 (_1!24899 (get!14828 lt!1484334)))))) tp!1272917))))

(declare-fun result!304052 () Bool)

(assert (=> tb!249607 (= result!304052 (and (inv!60156 (dynLambda!19557 (toChars!10089 (transformation!7554 (rule!10606 (_1!24899 (get!14828 lt!1484334))))) (value!235833 (_1!24899 (get!14828 lt!1484334))))) e!2587310))))

(assert (= tb!249607 b!4167706))

(declare-fun m!4759109 () Bool)

(assert (=> b!4167706 m!4759109))

(declare-fun m!4759111 () Bool)

(assert (=> tb!249607 m!4759111))

(assert (=> d!1231650 t!344142))

(declare-fun b_and!325185 () Bool)

(assert (= b_and!325135 (and (=> t!344142 result!304052) b_and!325185)))

(declare-fun t!344144 () Bool)

(declare-fun tb!249609 () Bool)

(assert (=> (and b!4167177 (= (toChars!10089 (transformation!7554 (h!51047 rules!3820))) (toChars!10089 (transformation!7554 (rule!10606 (_1!24899 (get!14828 lt!1484334)))))) t!344144) tb!249609))

(declare-fun result!304054 () Bool)

(assert (= result!304054 result!304052))

(assert (=> d!1231650 t!344144))

(declare-fun b_and!325187 () Bool)

(assert (= b_and!325137 (and (=> t!344144 result!304054) b_and!325187)))

(declare-fun tb!249611 () Bool)

(declare-fun t!344146 () Bool)

(assert (=> (and b!4167171 (= (toChars!10089 (transformation!7554 rBis!161)) (toChars!10089 (transformation!7554 (rule!10606 (_1!24899 (get!14828 lt!1484334)))))) t!344146) tb!249611))

(declare-fun result!304056 () Bool)

(assert (= result!304056 result!304052))

(assert (=> d!1231650 t!344146))

(declare-fun b_and!325189 () Bool)

(assert (= b_and!325139 (and (=> t!344146 result!304056) b_and!325189)))

(declare-fun t!344148 () Bool)

(declare-fun tb!249613 () Bool)

(assert (=> (and b!4167544 (= (toChars!10089 (transformation!7554 (h!51047 (t!344058 rules!3820)))) (toChars!10089 (transformation!7554 (rule!10606 (_1!24899 (get!14828 lt!1484334)))))) t!344148) tb!249613))

(declare-fun result!304058 () Bool)

(assert (= result!304058 result!304052))

(assert (=> d!1231650 t!344148))

(declare-fun b_and!325191 () Bool)

(assert (= b_and!325143 (and (=> t!344148 result!304058) b_and!325191)))

(declare-fun m!4759113 () Bool)

(assert (=> d!1231650 m!4759113))

(declare-fun m!4759115 () Bool)

(assert (=> d!1231650 m!4759115))

(assert (=> b!4167280 d!1231650))

(declare-fun d!1231652 () Bool)

(assert (=> d!1231652 (= (get!14828 lt!1484334) (v!40545 lt!1484334))))

(assert (=> b!4167280 d!1231652))

(declare-fun d!1231654 () Bool)

(declare-fun lt!1484414 () Int)

(assert (=> d!1231654 (>= lt!1484414 0)))

(declare-fun e!2587311 () Int)

(assert (=> d!1231654 (= lt!1484414 e!2587311)))

(declare-fun c!712582 () Bool)

(assert (=> d!1231654 (= c!712582 ((_ is Nil!45625) (originalCharacters!7954 lt!1484287)))))

(assert (=> d!1231654 (= (size!33513 (originalCharacters!7954 lt!1484287)) lt!1484414)))

(declare-fun b!4167707 () Bool)

(assert (=> b!4167707 (= e!2587311 0)))

(declare-fun b!4167708 () Bool)

(assert (=> b!4167708 (= e!2587311 (+ 1 (size!33513 (t!344056 (originalCharacters!7954 lt!1484287)))))))

(assert (= (and d!1231654 c!712582) b!4167707))

(assert (= (and d!1231654 (not c!712582)) b!4167708))

(declare-fun m!4759117 () Bool)

(assert (=> b!4167708 m!4759117))

(assert (=> b!4167499 d!1231654))

(assert (=> b!4167276 d!1231652))

(declare-fun d!1231656 () Bool)

(declare-fun lt!1484415 () Int)

(assert (=> d!1231656 (>= lt!1484415 0)))

(declare-fun e!2587312 () Int)

(assert (=> d!1231656 (= lt!1484415 e!2587312)))

(declare-fun c!712583 () Bool)

(assert (=> d!1231656 (= c!712583 ((_ is Nil!45625) (originalCharacters!7954 (_1!24899 (get!14828 lt!1484334)))))))

(assert (=> d!1231656 (= (size!33513 (originalCharacters!7954 (_1!24899 (get!14828 lt!1484334)))) lt!1484415)))

(declare-fun b!4167709 () Bool)

(assert (=> b!4167709 (= e!2587312 0)))

(declare-fun b!4167710 () Bool)

(assert (=> b!4167710 (= e!2587312 (+ 1 (size!33513 (t!344056 (originalCharacters!7954 (_1!24899 (get!14828 lt!1484334)))))))))

(assert (= (and d!1231656 c!712583) b!4167709))

(assert (= (and d!1231656 (not c!712583)) b!4167710))

(declare-fun m!4759119 () Bool)

(assert (=> b!4167710 m!4759119))

(assert (=> b!4167276 d!1231656))

(declare-fun d!1231658 () Bool)

(assert (=> d!1231658 true))

(declare-fun order!24059 () Int)

(declare-fun lambda!129184 () Int)

(declare-fun dynLambda!19559 (Int Int) Int)

(assert (=> d!1231658 (< (dynLambda!19554 order!24053 (toValue!10230 (transformation!7554 rBis!161))) (dynLambda!19559 order!24059 lambda!129184))))

(declare-fun Forall2!1156 (Int) Bool)

(assert (=> d!1231658 (= (equivClasses!3179 (toChars!10089 (transformation!7554 rBis!161)) (toValue!10230 (transformation!7554 rBis!161))) (Forall2!1156 lambda!129184))))

(declare-fun bs!595917 () Bool)

(assert (= bs!595917 d!1231658))

(declare-fun m!4759121 () Bool)

(assert (=> bs!595917 m!4759121))

(assert (=> b!4167207 d!1231658))

(declare-fun d!1231660 () Bool)

(assert (=> d!1231660 (= (isEmpty!27005 (tail!6695 p!2942)) ((_ is Nil!45625) (tail!6695 p!2942)))))

(assert (=> b!4167476 d!1231660))

(assert (=> b!4167476 d!1231634))

(declare-fun b!4167715 () Bool)

(declare-fun e!2587319 () Bool)

(declare-fun e!2587318 () Bool)

(assert (=> b!4167715 (= e!2587319 e!2587318)))

(declare-fun c!712586 () Bool)

(assert (=> b!4167715 (= c!712586 ((_ is EmptyLang!12459) (regex!7554 r!4097)))))

(declare-fun b!4167716 () Bool)

(declare-fun e!2587315 () Bool)

(assert (=> b!4167716 (= e!2587315 (matchR!6200 (derivativeStep!3761 (regex!7554 r!4097) (head!8848 (_1!24901 (findLongestMatchInner!1565 (regex!7554 r!4097) Nil!45625 (size!33513 Nil!45625) input!3316 input!3316 (size!33513 input!3316))))) (tail!6695 (_1!24901 (findLongestMatchInner!1565 (regex!7554 r!4097) Nil!45625 (size!33513 Nil!45625) input!3316 input!3316 (size!33513 input!3316))))))))

(declare-fun d!1231662 () Bool)

(assert (=> d!1231662 e!2587319))

(declare-fun c!712584 () Bool)

(assert (=> d!1231662 (= c!712584 ((_ is EmptyExpr!12459) (regex!7554 r!4097)))))

(declare-fun lt!1484416 () Bool)

(assert (=> d!1231662 (= lt!1484416 e!2587315)))

(declare-fun c!712585 () Bool)

(assert (=> d!1231662 (= c!712585 (isEmpty!27005 (_1!24901 (findLongestMatchInner!1565 (regex!7554 r!4097) Nil!45625 (size!33513 Nil!45625) input!3316 input!3316 (size!33513 input!3316)))))))

(assert (=> d!1231662 (validRegex!5581 (regex!7554 r!4097))))

(assert (=> d!1231662 (= (matchR!6200 (regex!7554 r!4097) (_1!24901 (findLongestMatchInner!1565 (regex!7554 r!4097) Nil!45625 (size!33513 Nil!45625) input!3316 input!3316 (size!33513 input!3316)))) lt!1484416)))

(declare-fun b!4167717 () Bool)

(declare-fun res!1707541 () Bool)

(declare-fun e!2587320 () Bool)

(assert (=> b!4167717 (=> (not res!1707541) (not e!2587320))))

(assert (=> b!4167717 (= res!1707541 (isEmpty!27005 (tail!6695 (_1!24901 (findLongestMatchInner!1565 (regex!7554 r!4097) Nil!45625 (size!33513 Nil!45625) input!3316 input!3316 (size!33513 input!3316))))))))

(declare-fun b!4167718 () Bool)

(declare-fun res!1707545 () Bool)

(declare-fun e!2587317 () Bool)

(assert (=> b!4167718 (=> res!1707545 e!2587317)))

(assert (=> b!4167718 (= res!1707545 (not (isEmpty!27005 (tail!6695 (_1!24901 (findLongestMatchInner!1565 (regex!7554 r!4097) Nil!45625 (size!33513 Nil!45625) input!3316 input!3316 (size!33513 input!3316)))))))))

(declare-fun b!4167719 () Bool)

(declare-fun e!2587321 () Bool)

(assert (=> b!4167719 (= e!2587321 e!2587317)))

(declare-fun res!1707544 () Bool)

(assert (=> b!4167719 (=> res!1707544 e!2587317)))

(declare-fun call!291064 () Bool)

(assert (=> b!4167719 (= res!1707544 call!291064)))

(declare-fun b!4167720 () Bool)

(assert (=> b!4167720 (= e!2587317 (not (= (head!8848 (_1!24901 (findLongestMatchInner!1565 (regex!7554 r!4097) Nil!45625 (size!33513 Nil!45625) input!3316 input!3316 (size!33513 input!3316)))) (c!712503 (regex!7554 r!4097)))))))

(declare-fun b!4167721 () Bool)

(declare-fun res!1707547 () Bool)

(assert (=> b!4167721 (=> (not res!1707547) (not e!2587320))))

(assert (=> b!4167721 (= res!1707547 (not call!291064))))

(declare-fun b!4167722 () Bool)

(assert (=> b!4167722 (= e!2587315 (nullable!4371 (regex!7554 r!4097)))))

(declare-fun b!4167723 () Bool)

(assert (=> b!4167723 (= e!2587319 (= lt!1484416 call!291064))))

(declare-fun b!4167724 () Bool)

(declare-fun e!2587316 () Bool)

(assert (=> b!4167724 (= e!2587316 e!2587321)))

(declare-fun res!1707548 () Bool)

(assert (=> b!4167724 (=> (not res!1707548) (not e!2587321))))

(assert (=> b!4167724 (= res!1707548 (not lt!1484416))))

(declare-fun b!4167725 () Bool)

(declare-fun res!1707546 () Bool)

(assert (=> b!4167725 (=> res!1707546 e!2587316)))

(assert (=> b!4167725 (= res!1707546 e!2587320)))

(declare-fun res!1707543 () Bool)

(assert (=> b!4167725 (=> (not res!1707543) (not e!2587320))))

(assert (=> b!4167725 (= res!1707543 lt!1484416)))

(declare-fun b!4167726 () Bool)

(declare-fun res!1707542 () Bool)

(assert (=> b!4167726 (=> res!1707542 e!2587316)))

(assert (=> b!4167726 (= res!1707542 (not ((_ is ElementMatch!12459) (regex!7554 r!4097))))))

(assert (=> b!4167726 (= e!2587318 e!2587316)))

(declare-fun b!4167727 () Bool)

(assert (=> b!4167727 (= e!2587320 (= (head!8848 (_1!24901 (findLongestMatchInner!1565 (regex!7554 r!4097) Nil!45625 (size!33513 Nil!45625) input!3316 input!3316 (size!33513 input!3316)))) (c!712503 (regex!7554 r!4097))))))

(declare-fun b!4167728 () Bool)

(assert (=> b!4167728 (= e!2587318 (not lt!1484416))))

(declare-fun bm!291059 () Bool)

(assert (=> bm!291059 (= call!291064 (isEmpty!27005 (_1!24901 (findLongestMatchInner!1565 (regex!7554 r!4097) Nil!45625 (size!33513 Nil!45625) input!3316 input!3316 (size!33513 input!3316)))))))

(assert (= (and d!1231662 c!712585) b!4167722))

(assert (= (and d!1231662 (not c!712585)) b!4167716))

(assert (= (and d!1231662 c!712584) b!4167723))

(assert (= (and d!1231662 (not c!712584)) b!4167715))

(assert (= (and b!4167715 c!712586) b!4167728))

(assert (= (and b!4167715 (not c!712586)) b!4167726))

(assert (= (and b!4167726 (not res!1707542)) b!4167725))

(assert (= (and b!4167725 res!1707543) b!4167721))

(assert (= (and b!4167721 res!1707547) b!4167717))

(assert (= (and b!4167717 res!1707541) b!4167727))

(assert (= (and b!4167725 (not res!1707546)) b!4167724))

(assert (= (and b!4167724 res!1707548) b!4167719))

(assert (= (and b!4167719 (not res!1707544)) b!4167718))

(assert (= (and b!4167718 (not res!1707545)) b!4167720))

(assert (= (or b!4167723 b!4167721 b!4167719) bm!291059))

(declare-fun m!4759123 () Bool)

(assert (=> b!4167720 m!4759123))

(assert (=> bm!291059 m!4758743))

(assert (=> d!1231662 m!4758743))

(assert (=> d!1231662 m!4758883))

(declare-fun m!4759125 () Bool)

(assert (=> b!4167717 m!4759125))

(assert (=> b!4167717 m!4759125))

(declare-fun m!4759127 () Bool)

(assert (=> b!4167717 m!4759127))

(assert (=> b!4167718 m!4759125))

(assert (=> b!4167718 m!4759125))

(assert (=> b!4167718 m!4759127))

(assert (=> b!4167727 m!4759123))

(assert (=> b!4167716 m!4759123))

(assert (=> b!4167716 m!4759123))

(declare-fun m!4759129 () Bool)

(assert (=> b!4167716 m!4759129))

(assert (=> b!4167716 m!4759125))

(assert (=> b!4167716 m!4759129))

(assert (=> b!4167716 m!4759125))

(declare-fun m!4759131 () Bool)

(assert (=> b!4167716 m!4759131))

(assert (=> b!4167722 m!4758893))

(assert (=> b!4167278 d!1231662))

(declare-fun b!4167892 () Bool)

(declare-fun c!712646 () Bool)

(declare-fun call!291126 () Bool)

(assert (=> b!4167892 (= c!712646 call!291126)))

(declare-fun lt!1484594 () Unit!64703)

(declare-fun lt!1484585 () Unit!64703)

(assert (=> b!4167892 (= lt!1484594 lt!1484585)))

(assert (=> b!4167892 (= input!3316 Nil!45625)))

(declare-fun call!291123 () Unit!64703)

(assert (=> b!4167892 (= lt!1484585 call!291123)))

(declare-fun lt!1484596 () Unit!64703)

(declare-fun lt!1484581 () Unit!64703)

(assert (=> b!4167892 (= lt!1484596 lt!1484581)))

(declare-fun call!291121 () Bool)

(assert (=> b!4167892 call!291121))

(declare-fun call!291124 () Unit!64703)

(assert (=> b!4167892 (= lt!1484581 call!291124)))

(declare-fun e!2587412 () tuple2!43534)

(declare-fun e!2587414 () tuple2!43534)

(assert (=> b!4167892 (= e!2587412 e!2587414)))

(declare-fun b!4167893 () Bool)

(assert (=> b!4167893 (= e!2587414 (tuple2!43535 Nil!45625 Nil!45625))))

(declare-fun bm!291114 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!979 (List!45749 List!45749 List!45749) Unit!64703)

(assert (=> bm!291114 (= call!291123 (lemmaIsPrefixSameLengthThenSameList!979 input!3316 Nil!45625 input!3316))))

(declare-fun b!4167894 () Bool)

(declare-fun e!2587415 () Bool)

(declare-fun e!2587418 () Bool)

(assert (=> b!4167894 (= e!2587415 e!2587418)))

(declare-fun res!1707590 () Bool)

(assert (=> b!4167894 (=> res!1707590 e!2587418)))

(declare-fun lt!1484597 () tuple2!43534)

(assert (=> b!4167894 (= res!1707590 (isEmpty!27005 (_1!24901 lt!1484597)))))

(declare-fun b!4167895 () Bool)

(declare-fun e!2587416 () Unit!64703)

(declare-fun Unit!64708 () Unit!64703)

(assert (=> b!4167895 (= e!2587416 Unit!64708)))

(declare-fun lt!1484579 () Unit!64703)

(assert (=> b!4167895 (= lt!1484579 call!291124)))

(assert (=> b!4167895 call!291121))

(declare-fun lt!1484582 () Unit!64703)

(assert (=> b!4167895 (= lt!1484582 lt!1484579)))

(declare-fun lt!1484583 () Unit!64703)

(assert (=> b!4167895 (= lt!1484583 call!291123)))

(assert (=> b!4167895 (= input!3316 Nil!45625)))

(declare-fun lt!1484591 () Unit!64703)

(assert (=> b!4167895 (= lt!1484591 lt!1484583)))

(assert (=> b!4167895 false))

(declare-fun bm!291115 () Bool)

(assert (=> bm!291115 (= call!291124 (lemmaIsPrefixRefl!2846 input!3316 input!3316))))

(declare-fun bm!291116 () Bool)

(assert (=> bm!291116 (= call!291121 (isPrefix!4411 input!3316 input!3316))))

(declare-fun b!4167896 () Bool)

(declare-fun e!2587417 () tuple2!43534)

(assert (=> b!4167896 (= e!2587417 (tuple2!43535 Nil!45625 input!3316))))

(declare-fun b!4167897 () Bool)

(declare-fun e!2587411 () tuple2!43534)

(declare-fun call!291125 () tuple2!43534)

(assert (=> b!4167897 (= e!2587411 call!291125)))

(declare-fun bm!291117 () Bool)

(assert (=> bm!291117 (= call!291126 (nullable!4371 (regex!7554 r!4097)))))

(declare-fun b!4167898 () Bool)

(declare-fun Unit!64709 () Unit!64703)

(assert (=> b!4167898 (= e!2587416 Unit!64709)))

(declare-fun b!4167899 () Bool)

(assert (=> b!4167899 (= e!2587414 (tuple2!43535 Nil!45625 input!3316))))

(declare-fun bm!291118 () Bool)

(declare-fun call!291119 () List!45749)

(assert (=> bm!291118 (= call!291119 (tail!6695 input!3316))))

(declare-fun b!4167900 () Bool)

(declare-fun e!2587413 () tuple2!43534)

(assert (=> b!4167900 (= e!2587413 e!2587412)))

(declare-fun c!712651 () Bool)

(assert (=> b!4167900 (= c!712651 (= (size!33513 Nil!45625) (size!33513 input!3316)))))

(declare-fun b!4167901 () Bool)

(assert (=> b!4167901 (= e!2587418 (>= (size!33513 (_1!24901 lt!1484597)) (size!33513 Nil!45625)))))

(declare-fun b!4167902 () Bool)

(assert (=> b!4167902 (= e!2587411 e!2587417)))

(declare-fun lt!1484605 () tuple2!43534)

(assert (=> b!4167902 (= lt!1484605 call!291125)))

(declare-fun c!712648 () Bool)

(assert (=> b!4167902 (= c!712648 (isEmpty!27005 (_1!24901 lt!1484605)))))

(declare-fun b!4167903 () Bool)

(declare-fun c!712650 () Bool)

(assert (=> b!4167903 (= c!712650 call!291126)))

(declare-fun lt!1484589 () Unit!64703)

(declare-fun lt!1484580 () Unit!64703)

(assert (=> b!4167903 (= lt!1484589 lt!1484580)))

(declare-fun lt!1484592 () C!25108)

(declare-fun lt!1484599 () List!45749)

(assert (=> b!4167903 (= (++!11664 (++!11664 Nil!45625 (Cons!45625 lt!1484592 Nil!45625)) lt!1484599) input!3316)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1285 (List!45749 C!25108 List!45749 List!45749) Unit!64703)

(assert (=> b!4167903 (= lt!1484580 (lemmaMoveElementToOtherListKeepsConcatEq!1285 Nil!45625 lt!1484592 lt!1484599 input!3316))))

(assert (=> b!4167903 (= lt!1484599 (tail!6695 input!3316))))

(assert (=> b!4167903 (= lt!1484592 (head!8848 input!3316))))

(declare-fun lt!1484593 () Unit!64703)

(declare-fun lt!1484606 () Unit!64703)

(assert (=> b!4167903 (= lt!1484593 lt!1484606)))

(assert (=> b!4167903 (isPrefix!4411 (++!11664 Nil!45625 (Cons!45625 (head!8848 (getSuffix!2718 input!3316 Nil!45625)) Nil!45625)) input!3316)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!667 (List!45749 List!45749) Unit!64703)

(assert (=> b!4167903 (= lt!1484606 (lemmaAddHeadSuffixToPrefixStillPrefix!667 Nil!45625 input!3316))))

(declare-fun lt!1484595 () Unit!64703)

(declare-fun lt!1484601 () Unit!64703)

(assert (=> b!4167903 (= lt!1484595 lt!1484601)))

(assert (=> b!4167903 (= lt!1484601 (lemmaAddHeadSuffixToPrefixStillPrefix!667 Nil!45625 input!3316))))

(declare-fun lt!1484586 () List!45749)

(assert (=> b!4167903 (= lt!1484586 (++!11664 Nil!45625 (Cons!45625 (head!8848 input!3316) Nil!45625)))))

(declare-fun lt!1484584 () Unit!64703)

(assert (=> b!4167903 (= lt!1484584 e!2587416)))

(declare-fun c!712649 () Bool)

(assert (=> b!4167903 (= c!712649 (= (size!33513 Nil!45625) (size!33513 input!3316)))))

(declare-fun lt!1484604 () Unit!64703)

(declare-fun lt!1484598 () Unit!64703)

(assert (=> b!4167903 (= lt!1484604 lt!1484598)))

(assert (=> b!4167903 (<= (size!33513 Nil!45625) (size!33513 input!3316))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!475 (List!45749 List!45749) Unit!64703)

(assert (=> b!4167903 (= lt!1484598 (lemmaIsPrefixThenSmallerEqSize!475 Nil!45625 input!3316))))

(assert (=> b!4167903 (= e!2587412 e!2587411)))

(declare-fun bm!291119 () Bool)

(declare-fun call!291120 () C!25108)

(assert (=> bm!291119 (= call!291120 (head!8848 input!3316))))

(declare-fun d!1231664 () Bool)

(assert (=> d!1231664 e!2587415))

(declare-fun res!1707591 () Bool)

(assert (=> d!1231664 (=> (not res!1707591) (not e!2587415))))

(assert (=> d!1231664 (= res!1707591 (= (++!11664 (_1!24901 lt!1484597) (_2!24901 lt!1484597)) input!3316))))

(assert (=> d!1231664 (= lt!1484597 e!2587413)))

(declare-fun c!712647 () Bool)

(declare-fun lostCause!1041 (Regex!12459) Bool)

(assert (=> d!1231664 (= c!712647 (lostCause!1041 (regex!7554 r!4097)))))

(declare-fun lt!1484587 () Unit!64703)

(declare-fun Unit!64710 () Unit!64703)

(assert (=> d!1231664 (= lt!1484587 Unit!64710)))

(assert (=> d!1231664 (= (getSuffix!2718 input!3316 Nil!45625) input!3316)))

(declare-fun lt!1484588 () Unit!64703)

(declare-fun lt!1484600 () Unit!64703)

(assert (=> d!1231664 (= lt!1484588 lt!1484600)))

(declare-fun lt!1484603 () List!45749)

(assert (=> d!1231664 (= input!3316 lt!1484603)))

(declare-fun lemmaSamePrefixThenSameSuffix!2258 (List!45749 List!45749 List!45749 List!45749 List!45749) Unit!64703)

(assert (=> d!1231664 (= lt!1484600 (lemmaSamePrefixThenSameSuffix!2258 Nil!45625 input!3316 Nil!45625 lt!1484603 input!3316))))

(assert (=> d!1231664 (= lt!1484603 (getSuffix!2718 input!3316 Nil!45625))))

(declare-fun lt!1484602 () Unit!64703)

(declare-fun lt!1484590 () Unit!64703)

(assert (=> d!1231664 (= lt!1484602 lt!1484590)))

(assert (=> d!1231664 (isPrefix!4411 Nil!45625 (++!11664 Nil!45625 input!3316))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2960 (List!45749 List!45749) Unit!64703)

(assert (=> d!1231664 (= lt!1484590 (lemmaConcatTwoListThenFirstIsPrefix!2960 Nil!45625 input!3316))))

(assert (=> d!1231664 (validRegex!5581 (regex!7554 r!4097))))

(assert (=> d!1231664 (= (findLongestMatchInner!1565 (regex!7554 r!4097) Nil!45625 (size!33513 Nil!45625) input!3316 input!3316 (size!33513 input!3316)) lt!1484597)))

(declare-fun bm!291120 () Bool)

(declare-fun call!291122 () Regex!12459)

(assert (=> bm!291120 (= call!291125 (findLongestMatchInner!1565 call!291122 lt!1484586 (+ (size!33513 Nil!45625) 1) call!291119 input!3316 (size!33513 input!3316)))))

(declare-fun b!4167904 () Bool)

(assert (=> b!4167904 (= e!2587417 lt!1484605)))

(declare-fun bm!291121 () Bool)

(assert (=> bm!291121 (= call!291122 (derivativeStep!3761 (regex!7554 r!4097) call!291120))))

(declare-fun b!4167905 () Bool)

(assert (=> b!4167905 (= e!2587413 (tuple2!43535 Nil!45625 input!3316))))

(assert (= (and d!1231664 c!712647) b!4167905))

(assert (= (and d!1231664 (not c!712647)) b!4167900))

(assert (= (and b!4167900 c!712651) b!4167892))

(assert (= (and b!4167900 (not c!712651)) b!4167903))

(assert (= (and b!4167892 c!712646) b!4167893))

(assert (= (and b!4167892 (not c!712646)) b!4167899))

(assert (= (and b!4167903 c!712649) b!4167895))

(assert (= (and b!4167903 (not c!712649)) b!4167898))

(assert (= (and b!4167903 c!712650) b!4167902))

(assert (= (and b!4167903 (not c!712650)) b!4167897))

(assert (= (and b!4167902 c!712648) b!4167896))

(assert (= (and b!4167902 (not c!712648)) b!4167904))

(assert (= (or b!4167902 b!4167897) bm!291119))

(assert (= (or b!4167902 b!4167897) bm!291118))

(assert (= (or b!4167902 b!4167897) bm!291121))

(assert (= (or b!4167902 b!4167897) bm!291120))

(assert (= (or b!4167892 b!4167895) bm!291116))

(assert (= (or b!4167892 b!4167895) bm!291114))

(assert (= (or b!4167892 b!4167895) bm!291115))

(assert (= (or b!4167892 b!4167903) bm!291117))

(assert (= (and d!1231664 res!1707591) b!4167894))

(assert (= (and b!4167894 (not res!1707590)) b!4167901))

(assert (=> bm!291117 m!4758893))

(assert (=> bm!291120 m!4758751))

(declare-fun m!4759283 () Bool)

(assert (=> bm!291120 m!4759283))

(declare-fun m!4759285 () Bool)

(assert (=> b!4167903 m!4759285))

(declare-fun m!4759287 () Bool)

(assert (=> b!4167903 m!4759287))

(declare-fun m!4759289 () Bool)

(assert (=> b!4167903 m!4759289))

(declare-fun m!4759291 () Bool)

(assert (=> b!4167903 m!4759291))

(declare-fun m!4759293 () Bool)

(assert (=> b!4167903 m!4759293))

(assert (=> b!4167903 m!4758751))

(declare-fun m!4759295 () Bool)

(assert (=> b!4167903 m!4759295))

(assert (=> b!4167903 m!4759285))

(assert (=> b!4167903 m!4759291))

(assert (=> b!4167903 m!4758785))

(declare-fun m!4759297 () Bool)

(assert (=> b!4167903 m!4759297))

(declare-fun m!4759299 () Bool)

(assert (=> b!4167903 m!4759299))

(declare-fun m!4759301 () Bool)

(assert (=> b!4167903 m!4759301))

(assert (=> b!4167903 m!4758789))

(assert (=> b!4167903 m!4759297))

(declare-fun m!4759303 () Bool)

(assert (=> b!4167903 m!4759303))

(assert (=> b!4167903 m!4758755))

(assert (=> bm!291115 m!4758615))

(assert (=> bm!291118 m!4758785))

(declare-fun m!4759305 () Bool)

(assert (=> bm!291114 m!4759305))

(declare-fun m!4759307 () Bool)

(assert (=> b!4167894 m!4759307))

(assert (=> bm!291116 m!4758605))

(declare-fun m!4759309 () Bool)

(assert (=> b!4167902 m!4759309))

(declare-fun m!4759311 () Bool)

(assert (=> bm!291121 m!4759311))

(declare-fun m!4759313 () Bool)

(assert (=> b!4167901 m!4759313))

(assert (=> b!4167901 m!4758755))

(assert (=> bm!291119 m!4758789))

(declare-fun m!4759315 () Bool)

(assert (=> d!1231664 m!4759315))

(declare-fun m!4759317 () Bool)

(assert (=> d!1231664 m!4759317))

(declare-fun m!4759319 () Bool)

(assert (=> d!1231664 m!4759319))

(declare-fun m!4759321 () Bool)

(assert (=> d!1231664 m!4759321))

(assert (=> d!1231664 m!4759285))

(declare-fun m!4759323 () Bool)

(assert (=> d!1231664 m!4759323))

(declare-fun m!4759325 () Bool)

(assert (=> d!1231664 m!4759325))

(assert (=> d!1231664 m!4758883))

(assert (=> d!1231664 m!4759315))

(assert (=> b!4167278 d!1231664))

(declare-fun d!1231728 () Bool)

(declare-fun lt!1484607 () Int)

(assert (=> d!1231728 (>= lt!1484607 0)))

(declare-fun e!2587419 () Int)

(assert (=> d!1231728 (= lt!1484607 e!2587419)))

(declare-fun c!712652 () Bool)

(assert (=> d!1231728 (= c!712652 ((_ is Nil!45625) Nil!45625))))

(assert (=> d!1231728 (= (size!33513 Nil!45625) lt!1484607)))

(declare-fun b!4167906 () Bool)

(assert (=> b!4167906 (= e!2587419 0)))

(declare-fun b!4167907 () Bool)

(assert (=> b!4167907 (= e!2587419 (+ 1 (size!33513 (t!344056 Nil!45625))))))

(assert (= (and d!1231728 c!712652) b!4167906))

(assert (= (and d!1231728 (not c!712652)) b!4167907))

(declare-fun m!4759327 () Bool)

(assert (=> b!4167907 m!4759327))

(assert (=> b!4167278 d!1231728))

(assert (=> b!4167278 d!1231618))

(declare-fun bs!595936 () Bool)

(declare-fun d!1231730 () Bool)

(assert (= bs!595936 (and d!1231730 d!1231498)))

(declare-fun lambda!129194 () Int)

(assert (=> bs!595936 (= lambda!129194 lambda!129177)))

(declare-fun b!4167908 () Bool)

(declare-fun e!2587420 () Bool)

(assert (=> b!4167908 (= e!2587420 true)))

(assert (=> d!1231730 e!2587420))

(assert (= d!1231730 b!4167908))

(assert (=> b!4167908 (< (dynLambda!19554 order!24053 (toValue!10230 (transformation!7554 r!4097))) (dynLambda!19555 order!24055 lambda!129194))))

(assert (=> b!4167908 (< (dynLambda!19556 order!24057 (toChars!10089 (transformation!7554 r!4097))) (dynLambda!19555 order!24055 lambda!129194))))

(assert (=> d!1231730 (= (list!16515 (dynLambda!19557 (toChars!10089 (transformation!7554 r!4097)) (dynLambda!19553 (toValue!10230 (transformation!7554 r!4097)) (seqFromList!5583 (_1!24901 lt!1484337))))) (list!16515 (seqFromList!5583 (_1!24901 lt!1484337))))))

(declare-fun lt!1484608 () Unit!64703)

(assert (=> d!1231730 (= lt!1484608 (ForallOf!1014 lambda!129194 (seqFromList!5583 (_1!24901 lt!1484337))))))

(assert (=> d!1231730 (= (lemmaSemiInverse!2324 (transformation!7554 r!4097) (seqFromList!5583 (_1!24901 lt!1484337))) lt!1484608)))

(declare-fun b_lambda!122403 () Bool)

(assert (=> (not b_lambda!122403) (not d!1231730)))

(declare-fun t!344150 () Bool)

(declare-fun tb!249615 () Bool)

(assert (=> (and b!4167163 (= (toChars!10089 (transformation!7554 r!4097)) (toChars!10089 (transformation!7554 r!4097))) t!344150) tb!249615))

(declare-fun e!2587421 () Bool)

(declare-fun b!4167909 () Bool)

(declare-fun tp!1272918 () Bool)

(assert (=> b!4167909 (= e!2587421 (and (inv!60155 (c!712502 (dynLambda!19557 (toChars!10089 (transformation!7554 r!4097)) (dynLambda!19553 (toValue!10230 (transformation!7554 r!4097)) (seqFromList!5583 (_1!24901 lt!1484337)))))) tp!1272918))))

(declare-fun result!304060 () Bool)

(assert (=> tb!249615 (= result!304060 (and (inv!60156 (dynLambda!19557 (toChars!10089 (transformation!7554 r!4097)) (dynLambda!19553 (toValue!10230 (transformation!7554 r!4097)) (seqFromList!5583 (_1!24901 lt!1484337))))) e!2587421))))

(assert (= tb!249615 b!4167909))

(declare-fun m!4759329 () Bool)

(assert (=> b!4167909 m!4759329))

(declare-fun m!4759331 () Bool)

(assert (=> tb!249615 m!4759331))

(assert (=> d!1231730 t!344150))

(declare-fun b_and!325193 () Bool)

(assert (= b_and!325185 (and (=> t!344150 result!304060) b_and!325193)))

(declare-fun t!344152 () Bool)

(declare-fun tb!249617 () Bool)

(assert (=> (and b!4167177 (= (toChars!10089 (transformation!7554 (h!51047 rules!3820))) (toChars!10089 (transformation!7554 r!4097))) t!344152) tb!249617))

(declare-fun result!304062 () Bool)

(assert (= result!304062 result!304060))

(assert (=> d!1231730 t!344152))

(declare-fun b_and!325195 () Bool)

(assert (= b_and!325187 (and (=> t!344152 result!304062) b_and!325195)))

(declare-fun tb!249619 () Bool)

(declare-fun t!344154 () Bool)

(assert (=> (and b!4167171 (= (toChars!10089 (transformation!7554 rBis!161)) (toChars!10089 (transformation!7554 r!4097))) t!344154) tb!249619))

(declare-fun result!304064 () Bool)

(assert (= result!304064 result!304060))

(assert (=> d!1231730 t!344154))

(declare-fun b_and!325197 () Bool)

(assert (= b_and!325189 (and (=> t!344154 result!304064) b_and!325197)))

(declare-fun tb!249621 () Bool)

(declare-fun t!344156 () Bool)

(assert (=> (and b!4167544 (= (toChars!10089 (transformation!7554 (h!51047 (t!344058 rules!3820)))) (toChars!10089 (transformation!7554 r!4097))) t!344156) tb!249621))

(declare-fun result!304066 () Bool)

(assert (= result!304066 result!304060))

(assert (=> d!1231730 t!344156))

(declare-fun b_and!325199 () Bool)

(assert (= b_and!325191 (and (=> t!344156 result!304066) b_and!325199)))

(declare-fun b_lambda!122405 () Bool)

(assert (=> (not b_lambda!122405) (not d!1231730)))

(declare-fun t!344158 () Bool)

(declare-fun tb!249623 () Bool)

(assert (=> (and b!4167163 (= (toValue!10230 (transformation!7554 r!4097)) (toValue!10230 (transformation!7554 r!4097))) t!344158) tb!249623))

(declare-fun result!304068 () Bool)

(assert (=> tb!249623 (= result!304068 (inv!21 (dynLambda!19553 (toValue!10230 (transformation!7554 r!4097)) (seqFromList!5583 (_1!24901 lt!1484337)))))))

(declare-fun m!4759333 () Bool)

(assert (=> tb!249623 m!4759333))

(assert (=> d!1231730 t!344158))

(declare-fun b_and!325201 () Bool)

(assert (= b_and!325129 (and (=> t!344158 result!304068) b_and!325201)))

(declare-fun tb!249625 () Bool)

(declare-fun t!344160 () Bool)

(assert (=> (and b!4167177 (= (toValue!10230 (transformation!7554 (h!51047 rules!3820))) (toValue!10230 (transformation!7554 r!4097))) t!344160) tb!249625))

(declare-fun result!304070 () Bool)

(assert (= result!304070 result!304068))

(assert (=> d!1231730 t!344160))

(declare-fun b_and!325203 () Bool)

(assert (= b_and!325131 (and (=> t!344160 result!304070) b_and!325203)))

(declare-fun t!344162 () Bool)

(declare-fun tb!249627 () Bool)

(assert (=> (and b!4167171 (= (toValue!10230 (transformation!7554 rBis!161)) (toValue!10230 (transformation!7554 r!4097))) t!344162) tb!249627))

(declare-fun result!304072 () Bool)

(assert (= result!304072 result!304068))

(assert (=> d!1231730 t!344162))

(declare-fun b_and!325205 () Bool)

(assert (= b_and!325133 (and (=> t!344162 result!304072) b_and!325205)))

(declare-fun t!344164 () Bool)

(declare-fun tb!249629 () Bool)

(assert (=> (and b!4167544 (= (toValue!10230 (transformation!7554 (h!51047 (t!344058 rules!3820)))) (toValue!10230 (transformation!7554 r!4097))) t!344164) tb!249629))

(declare-fun result!304074 () Bool)

(assert (= result!304074 result!304068))

(assert (=> d!1231730 t!344164))

(declare-fun b_and!325207 () Bool)

(assert (= b_and!325141 (and (=> t!344164 result!304074) b_and!325207)))

(assert (=> d!1231730 m!4758745))

(declare-fun m!4759335 () Bool)

(assert (=> d!1231730 m!4759335))

(declare-fun m!4759337 () Bool)

(assert (=> d!1231730 m!4759337))

(declare-fun m!4759339 () Bool)

(assert (=> d!1231730 m!4759339))

(assert (=> d!1231730 m!4759339))

(declare-fun m!4759341 () Bool)

(assert (=> d!1231730 m!4759341))

(assert (=> d!1231730 m!4758745))

(assert (=> d!1231730 m!4759337))

(assert (=> d!1231730 m!4758745))

(declare-fun m!4759343 () Bool)

(assert (=> d!1231730 m!4759343))

(assert (=> b!4167284 d!1231730))

(assert (=> b!4167284 d!1231618))

(declare-fun d!1231732 () Bool)

(assert (=> d!1231732 (= (isEmpty!27005 (_1!24901 (findLongestMatchInner!1565 (regex!7554 r!4097) Nil!45625 (size!33513 Nil!45625) input!3316 input!3316 (size!33513 input!3316)))) ((_ is Nil!45625) (_1!24901 (findLongestMatchInner!1565 (regex!7554 r!4097) Nil!45625 (size!33513 Nil!45625) input!3316 input!3316 (size!33513 input!3316)))))))

(assert (=> b!4167284 d!1231732))

(declare-fun d!1231734 () Bool)

(assert (=> d!1231734 (= (seqFromList!5583 (_1!24901 lt!1484337)) (fromListB!2563 (_1!24901 lt!1484337)))))

(declare-fun bs!595937 () Bool)

(assert (= bs!595937 d!1231734))

(declare-fun m!4759345 () Bool)

(assert (=> bs!595937 m!4759345))

(assert (=> b!4167284 d!1231734))

(declare-fun d!1231736 () Bool)

(declare-fun lt!1484627 () Int)

(assert (=> d!1231736 (= lt!1484627 (size!33513 (list!16515 (seqFromList!5583 (_1!24901 lt!1484337)))))))

(declare-fun size!33518 (Conc!13765) Int)

(assert (=> d!1231736 (= lt!1484627 (size!33518 (c!712502 (seqFromList!5583 (_1!24901 lt!1484337)))))))

(assert (=> d!1231736 (= (size!33516 (seqFromList!5583 (_1!24901 lt!1484337))) lt!1484627)))

(declare-fun bs!595938 () Bool)

(assert (= bs!595938 d!1231736))

(assert (=> bs!595938 m!4758745))

(assert (=> bs!595938 m!4759335))

(assert (=> bs!595938 m!4759335))

(declare-fun m!4759347 () Bool)

(assert (=> bs!595938 m!4759347))

(declare-fun m!4759349 () Bool)

(assert (=> bs!595938 m!4759349))

(assert (=> b!4167284 d!1231736))

(declare-fun d!1231738 () Bool)

(assert (=> d!1231738 (= (apply!10531 (transformation!7554 r!4097) (seqFromList!5583 (_1!24901 lt!1484337))) (dynLambda!19553 (toValue!10230 (transformation!7554 r!4097)) (seqFromList!5583 (_1!24901 lt!1484337))))))

(declare-fun b_lambda!122407 () Bool)

(assert (=> (not b_lambda!122407) (not d!1231738)))

(assert (=> d!1231738 t!344158))

(declare-fun b_and!325209 () Bool)

(assert (= b_and!325201 (and (=> t!344158 result!304068) b_and!325209)))

(assert (=> d!1231738 t!344160))

(declare-fun b_and!325211 () Bool)

(assert (= b_and!325203 (and (=> t!344160 result!304070) b_and!325211)))

(assert (=> d!1231738 t!344162))

(declare-fun b_and!325213 () Bool)

(assert (= b_and!325205 (and (=> t!344162 result!304072) b_and!325213)))

(assert (=> d!1231738 t!344164))

(declare-fun b_and!325215 () Bool)

(assert (= b_and!325207 (and (=> t!344164 result!304074) b_and!325215)))

(assert (=> d!1231738 m!4758745))

(assert (=> d!1231738 m!4759337))

(assert (=> b!4167284 d!1231738))

(declare-fun d!1231740 () Bool)

(declare-fun e!2587453 () Bool)

(assert (=> d!1231740 e!2587453))

(declare-fun res!1707594 () Bool)

(assert (=> d!1231740 (=> res!1707594 e!2587453)))

(assert (=> d!1231740 (= res!1707594 (isEmpty!27005 (_1!24901 (findLongestMatchInner!1565 (regex!7554 r!4097) Nil!45625 (size!33513 Nil!45625) input!3316 input!3316 (size!33513 input!3316)))))))

(declare-fun lt!1484638 () Unit!64703)

(declare-fun choose!25520 (Regex!12459 List!45749) Unit!64703)

(assert (=> d!1231740 (= lt!1484638 (choose!25520 (regex!7554 r!4097) input!3316))))

(assert (=> d!1231740 (validRegex!5581 (regex!7554 r!4097))))

(assert (=> d!1231740 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1538 (regex!7554 r!4097) input!3316) lt!1484638)))

(declare-fun b!4167987 () Bool)

(assert (=> b!4167987 (= e!2587453 (matchR!6200 (regex!7554 r!4097) (_1!24901 (findLongestMatchInner!1565 (regex!7554 r!4097) Nil!45625 (size!33513 Nil!45625) input!3316 input!3316 (size!33513 input!3316)))))))

(assert (= (and d!1231740 (not res!1707594)) b!4167987))

(assert (=> d!1231740 m!4758751))

(assert (=> d!1231740 m!4758755))

(assert (=> d!1231740 m!4758751))

(assert (=> d!1231740 m!4758757))

(declare-fun m!4759385 () Bool)

(assert (=> d!1231740 m!4759385))

(assert (=> d!1231740 m!4758755))

(assert (=> d!1231740 m!4758883))

(assert (=> d!1231740 m!4758743))

(assert (=> b!4167987 m!4758755))

(assert (=> b!4167987 m!4758751))

(assert (=> b!4167987 m!4758755))

(assert (=> b!4167987 m!4758751))

(assert (=> b!4167987 m!4758757))

(assert (=> b!4167987 m!4758767))

(assert (=> b!4167284 d!1231740))

(assert (=> b!4167284 d!1231664))

(assert (=> b!4167284 d!1231728))

(declare-fun d!1231744 () Bool)

(assert (=> d!1231744 (= (inv!60156 (dynLambda!19557 (toChars!10089 (transformation!7554 (rule!10606 lt!1484287))) (value!235833 lt!1484287))) (isBalanced!3728 (c!712502 (dynLambda!19557 (toChars!10089 (transformation!7554 (rule!10606 lt!1484287))) (value!235833 lt!1484287)))))))

(declare-fun bs!595944 () Bool)

(assert (= bs!595944 d!1231744))

(declare-fun m!4759387 () Bool)

(assert (=> bs!595944 m!4759387))

(assert (=> tb!249563 d!1231744))

(declare-fun d!1231748 () Bool)

(declare-fun lt!1484639 () Int)

(assert (=> d!1231748 (>= lt!1484639 0)))

(declare-fun e!2587457 () Int)

(assert (=> d!1231748 (= lt!1484639 e!2587457)))

(declare-fun c!712653 () Bool)

(assert (=> d!1231748 (= c!712653 ((_ is Nil!45625) (t!344056 pBis!100)))))

(assert (=> d!1231748 (= (size!33513 (t!344056 pBis!100)) lt!1484639)))

(declare-fun b!4167997 () Bool)

(assert (=> b!4167997 (= e!2587457 0)))

(declare-fun b!4167998 () Bool)

(assert (=> b!4167998 (= e!2587457 (+ 1 (size!33513 (t!344056 (t!344056 pBis!100)))))))

(assert (= (and d!1231748 c!712653) b!4167997))

(assert (= (and d!1231748 (not c!712653)) b!4167998))

(declare-fun m!4759389 () Bool)

(assert (=> b!4167998 m!4759389))

(assert (=> b!4167502 d!1231748))

(declare-fun b!4168002 () Bool)

(declare-fun e!2587459 () Bool)

(declare-fun lt!1484640 () List!45749)

(assert (=> b!4168002 (= e!2587459 (or (not (= (_2!24899 (get!14828 lt!1484334)) Nil!45625)) (= lt!1484640 (list!16515 (charsOf!5027 (_1!24899 (get!14828 lt!1484334)))))))))

(declare-fun b!4168000 () Bool)

(declare-fun e!2587458 () List!45749)

(assert (=> b!4168000 (= e!2587458 (Cons!45625 (h!51045 (list!16515 (charsOf!5027 (_1!24899 (get!14828 lt!1484334))))) (++!11664 (t!344056 (list!16515 (charsOf!5027 (_1!24899 (get!14828 lt!1484334))))) (_2!24899 (get!14828 lt!1484334)))))))

(declare-fun b!4168001 () Bool)

(declare-fun res!1707595 () Bool)

(assert (=> b!4168001 (=> (not res!1707595) (not e!2587459))))

(assert (=> b!4168001 (= res!1707595 (= (size!33513 lt!1484640) (+ (size!33513 (list!16515 (charsOf!5027 (_1!24899 (get!14828 lt!1484334))))) (size!33513 (_2!24899 (get!14828 lt!1484334))))))))

(declare-fun b!4167999 () Bool)

(assert (=> b!4167999 (= e!2587458 (_2!24899 (get!14828 lt!1484334)))))

(declare-fun d!1231750 () Bool)

(assert (=> d!1231750 e!2587459))

(declare-fun res!1707596 () Bool)

(assert (=> d!1231750 (=> (not res!1707596) (not e!2587459))))

(assert (=> d!1231750 (= res!1707596 (= (content!7096 lt!1484640) ((_ map or) (content!7096 (list!16515 (charsOf!5027 (_1!24899 (get!14828 lt!1484334))))) (content!7096 (_2!24899 (get!14828 lt!1484334))))))))

(assert (=> d!1231750 (= lt!1484640 e!2587458)))

(declare-fun c!712654 () Bool)

(assert (=> d!1231750 (= c!712654 ((_ is Nil!45625) (list!16515 (charsOf!5027 (_1!24899 (get!14828 lt!1484334))))))))

(assert (=> d!1231750 (= (++!11664 (list!16515 (charsOf!5027 (_1!24899 (get!14828 lt!1484334)))) (_2!24899 (get!14828 lt!1484334))) lt!1484640)))

(assert (= (and d!1231750 c!712654) b!4167999))

(assert (= (and d!1231750 (not c!712654)) b!4168000))

(assert (= (and d!1231750 res!1707596) b!4168001))

(assert (= (and b!4168001 res!1707595) b!4168002))

(declare-fun m!4759391 () Bool)

(assert (=> b!4168000 m!4759391))

(declare-fun m!4759393 () Bool)

(assert (=> b!4168001 m!4759393))

(assert (=> b!4168001 m!4758763))

(declare-fun m!4759395 () Bool)

(assert (=> b!4168001 m!4759395))

(assert (=> b!4168001 m!4758769))

(declare-fun m!4759397 () Bool)

(assert (=> d!1231750 m!4759397))

(assert (=> d!1231750 m!4758763))

(declare-fun m!4759399 () Bool)

(assert (=> d!1231750 m!4759399))

(declare-fun m!4759401 () Bool)

(assert (=> d!1231750 m!4759401))

(assert (=> b!4167282 d!1231750))

(assert (=> b!4167282 d!1231648))

(assert (=> b!4167282 d!1231650))

(assert (=> b!4167282 d!1231652))

(assert (=> d!1231460 d!1231612))

(declare-fun d!1231752 () Bool)

(declare-fun nullableFct!1208 (Regex!12459) Bool)

(assert (=> d!1231752 (= (nullable!4371 (regex!7554 r!4097)) (nullableFct!1208 (regex!7554 r!4097)))))

(declare-fun bs!595945 () Bool)

(assert (= bs!595945 d!1231752))

(declare-fun m!4759403 () Bool)

(assert (=> bs!595945 m!4759403))

(assert (=> b!4167492 d!1231752))

(declare-fun bs!595946 () Bool)

(declare-fun d!1231754 () Bool)

(assert (= bs!595946 (and d!1231754 d!1231498)))

(declare-fun lambda!129198 () Int)

(assert (=> bs!595946 (= (and (= (toChars!10089 (transformation!7554 (h!51047 rules!3820))) (toChars!10089 (transformation!7554 r!4097))) (= (toValue!10230 (transformation!7554 (h!51047 rules!3820))) (toValue!10230 (transformation!7554 r!4097)))) (= lambda!129198 lambda!129177))))

(declare-fun bs!595947 () Bool)

(assert (= bs!595947 (and d!1231754 d!1231730)))

(assert (=> bs!595947 (= (and (= (toChars!10089 (transformation!7554 (h!51047 rules!3820))) (toChars!10089 (transformation!7554 r!4097))) (= (toValue!10230 (transformation!7554 (h!51047 rules!3820))) (toValue!10230 (transformation!7554 r!4097)))) (= lambda!129198 lambda!129194))))

(assert (=> d!1231754 true))

(assert (=> d!1231754 (< (dynLambda!19556 order!24057 (toChars!10089 (transformation!7554 (h!51047 rules!3820)))) (dynLambda!19555 order!24055 lambda!129198))))

(assert (=> d!1231754 true))

(assert (=> d!1231754 (< (dynLambda!19554 order!24053 (toValue!10230 (transformation!7554 (h!51047 rules!3820)))) (dynLambda!19555 order!24055 lambda!129198))))

(assert (=> d!1231754 (= (semiInverseModEq!3280 (toChars!10089 (transformation!7554 (h!51047 rules!3820))) (toValue!10230 (transformation!7554 (h!51047 rules!3820)))) (Forall!1558 lambda!129198))))

(declare-fun bs!595948 () Bool)

(assert (= bs!595948 d!1231754))

(declare-fun m!4759405 () Bool)

(assert (=> bs!595948 m!4759405))

(assert (=> d!1231474 d!1231754))

(declare-fun b!4168008 () Bool)

(declare-fun res!1707598 () Bool)

(declare-fun e!2587462 () Bool)

(assert (=> b!4168008 (=> (not res!1707598) (not e!2587462))))

(assert (=> b!4168008 (= res!1707598 (= (head!8848 (tail!6695 input!3316)) (head!8848 (tail!6695 input!3316))))))

(declare-fun d!1231756 () Bool)

(declare-fun e!2587461 () Bool)

(assert (=> d!1231756 e!2587461))

(declare-fun res!1707600 () Bool)

(assert (=> d!1231756 (=> res!1707600 e!2587461)))

(declare-fun lt!1484641 () Bool)

(assert (=> d!1231756 (= res!1707600 (not lt!1484641))))

(declare-fun e!2587460 () Bool)

(assert (=> d!1231756 (= lt!1484641 e!2587460)))

(declare-fun res!1707599 () Bool)

(assert (=> d!1231756 (=> res!1707599 e!2587460)))

(assert (=> d!1231756 (= res!1707599 ((_ is Nil!45625) (tail!6695 input!3316)))))

(assert (=> d!1231756 (= (isPrefix!4411 (tail!6695 input!3316) (tail!6695 input!3316)) lt!1484641)))

(declare-fun b!4168010 () Bool)

(assert (=> b!4168010 (= e!2587461 (>= (size!33513 (tail!6695 input!3316)) (size!33513 (tail!6695 input!3316))))))

(declare-fun b!4168009 () Bool)

(assert (=> b!4168009 (= e!2587462 (isPrefix!4411 (tail!6695 (tail!6695 input!3316)) (tail!6695 (tail!6695 input!3316))))))

(declare-fun b!4168007 () Bool)

(assert (=> b!4168007 (= e!2587460 e!2587462)))

(declare-fun res!1707597 () Bool)

(assert (=> b!4168007 (=> (not res!1707597) (not e!2587462))))

(assert (=> b!4168007 (= res!1707597 (not ((_ is Nil!45625) (tail!6695 input!3316))))))

(assert (= (and d!1231756 (not res!1707599)) b!4168007))

(assert (= (and b!4168007 res!1707597) b!4168008))

(assert (= (and b!4168008 res!1707598) b!4168009))

(assert (= (and d!1231756 (not res!1707600)) b!4168010))

(assert (=> b!4168008 m!4758785))

(assert (=> b!4168008 m!4759067))

(assert (=> b!4168008 m!4758785))

(assert (=> b!4168008 m!4759067))

(assert (=> b!4168010 m!4758785))

(assert (=> b!4168010 m!4759069))

(assert (=> b!4168010 m!4758785))

(assert (=> b!4168010 m!4759069))

(assert (=> b!4168009 m!4758785))

(assert (=> b!4168009 m!4759075))

(assert (=> b!4168009 m!4758785))

(assert (=> b!4168009 m!4759075))

(assert (=> b!4168009 m!4759075))

(assert (=> b!4168009 m!4759075))

(declare-fun m!4759407 () Bool)

(assert (=> b!4168009 m!4759407))

(assert (=> b!4167307 d!1231756))

(assert (=> b!4167307 d!1231636))

(declare-fun d!1231758 () Bool)

(assert (=> d!1231758 (= (isEmpty!27004 lt!1484334) (not ((_ is Some!9761) lt!1484334)))))

(assert (=> d!1231478 d!1231758))

(declare-fun d!1231760 () Bool)

(assert (=> d!1231760 (= (isEmpty!27005 (_1!24901 lt!1484337)) ((_ is Nil!45625) (_1!24901 lt!1484337)))))

(assert (=> d!1231478 d!1231760))

(declare-fun d!1231762 () Bool)

(declare-fun lt!1484664 () tuple2!43534)

(assert (=> d!1231762 (= (++!11664 (_1!24901 lt!1484664) (_2!24901 lt!1484664)) input!3316)))

(declare-fun sizeTr!303 (List!45749 Int) Int)

(assert (=> d!1231762 (= lt!1484664 (findLongestMatchInner!1565 (regex!7554 r!4097) Nil!45625 0 input!3316 input!3316 (sizeTr!303 input!3316 0)))))

(declare-fun lt!1484661 () Unit!64703)

(declare-fun lt!1484665 () Unit!64703)

(assert (=> d!1231762 (= lt!1484661 lt!1484665)))

(declare-fun lt!1484660 () List!45749)

(declare-fun lt!1484663 () Int)

(assert (=> d!1231762 (= (sizeTr!303 lt!1484660 lt!1484663) (+ (size!33513 lt!1484660) lt!1484663))))

(declare-fun lemmaSizeTrEqualsSize!302 (List!45749 Int) Unit!64703)

(assert (=> d!1231762 (= lt!1484665 (lemmaSizeTrEqualsSize!302 lt!1484660 lt!1484663))))

(assert (=> d!1231762 (= lt!1484663 0)))

(assert (=> d!1231762 (= lt!1484660 Nil!45625)))

(declare-fun lt!1484659 () Unit!64703)

(declare-fun lt!1484658 () Unit!64703)

(assert (=> d!1231762 (= lt!1484659 lt!1484658)))

(declare-fun lt!1484662 () Int)

(assert (=> d!1231762 (= (sizeTr!303 input!3316 lt!1484662) (+ (size!33513 input!3316) lt!1484662))))

(assert (=> d!1231762 (= lt!1484658 (lemmaSizeTrEqualsSize!302 input!3316 lt!1484662))))

(assert (=> d!1231762 (= lt!1484662 0)))

(assert (=> d!1231762 (validRegex!5581 (regex!7554 r!4097))))

(assert (=> d!1231762 (= (findLongestMatch!1478 (regex!7554 r!4097) input!3316) lt!1484664)))

(declare-fun bs!595949 () Bool)

(assert (= bs!595949 d!1231762))

(declare-fun m!4759409 () Bool)

(assert (=> bs!595949 m!4759409))

(declare-fun m!4759411 () Bool)

(assert (=> bs!595949 m!4759411))

(declare-fun m!4759413 () Bool)

(assert (=> bs!595949 m!4759413))

(declare-fun m!4759415 () Bool)

(assert (=> bs!595949 m!4759415))

(assert (=> bs!595949 m!4758883))

(declare-fun m!4759417 () Bool)

(assert (=> bs!595949 m!4759417))

(assert (=> bs!595949 m!4758751))

(assert (=> bs!595949 m!4759413))

(declare-fun m!4759419 () Bool)

(assert (=> bs!595949 m!4759419))

(declare-fun m!4759421 () Bool)

(assert (=> bs!595949 m!4759421))

(declare-fun m!4759423 () Bool)

(assert (=> bs!595949 m!4759423))

(assert (=> d!1231478 d!1231762))

(assert (=> d!1231478 d!1231528))

(declare-fun b!4168029 () Bool)

(declare-fun res!1707613 () Bool)

(declare-fun e!2587483 () Bool)

(assert (=> b!4168029 (=> (not res!1707613) (not e!2587483))))

(declare-fun call!291135 () Bool)

(assert (=> b!4168029 (= res!1707613 call!291135)))

(declare-fun e!2587482 () Bool)

(assert (=> b!4168029 (= e!2587482 e!2587483)))

(declare-fun bm!291128 () Bool)

(declare-fun c!712660 () Bool)

(assert (=> bm!291128 (= call!291135 (validRegex!5581 (ite c!712660 (regOne!25431 (regex!7554 r!4097)) (regOne!25430 (regex!7554 r!4097)))))))

(declare-fun b!4168030 () Bool)

(declare-fun e!2587479 () Bool)

(declare-fun call!291133 () Bool)

(assert (=> b!4168030 (= e!2587479 call!291133)))

(declare-fun bm!291129 () Bool)

(declare-fun c!712659 () Bool)

(declare-fun call!291134 () Bool)

(assert (=> bm!291129 (= call!291134 (validRegex!5581 (ite c!712659 (reg!12788 (regex!7554 r!4097)) (ite c!712660 (regTwo!25431 (regex!7554 r!4097)) (regTwo!25430 (regex!7554 r!4097))))))))

(declare-fun b!4168031 () Bool)

(declare-fun res!1707614 () Bool)

(declare-fun e!2587478 () Bool)

(assert (=> b!4168031 (=> res!1707614 e!2587478)))

(assert (=> b!4168031 (= res!1707614 (not ((_ is Concat!20244) (regex!7554 r!4097))))))

(assert (=> b!4168031 (= e!2587482 e!2587478)))

(declare-fun b!4168032 () Bool)

(assert (=> b!4168032 (= e!2587483 call!291133)))

(declare-fun d!1231764 () Bool)

(declare-fun res!1707612 () Bool)

(declare-fun e!2587481 () Bool)

(assert (=> d!1231764 (=> res!1707612 e!2587481)))

(assert (=> d!1231764 (= res!1707612 ((_ is ElementMatch!12459) (regex!7554 r!4097)))))

(assert (=> d!1231764 (= (validRegex!5581 (regex!7554 r!4097)) e!2587481)))

(declare-fun b!4168033 () Bool)

(declare-fun e!2587477 () Bool)

(declare-fun e!2587480 () Bool)

(assert (=> b!4168033 (= e!2587477 e!2587480)))

(declare-fun res!1707615 () Bool)

(assert (=> b!4168033 (= res!1707615 (not (nullable!4371 (reg!12788 (regex!7554 r!4097)))))))

(assert (=> b!4168033 (=> (not res!1707615) (not e!2587480))))

(declare-fun b!4168034 () Bool)

(assert (=> b!4168034 (= e!2587481 e!2587477)))

(assert (=> b!4168034 (= c!712659 ((_ is Star!12459) (regex!7554 r!4097)))))

(declare-fun b!4168035 () Bool)

(assert (=> b!4168035 (= e!2587480 call!291134)))

(declare-fun bm!291130 () Bool)

(assert (=> bm!291130 (= call!291133 call!291134)))

(declare-fun b!4168036 () Bool)

(assert (=> b!4168036 (= e!2587477 e!2587482)))

(assert (=> b!4168036 (= c!712660 ((_ is Union!12459) (regex!7554 r!4097)))))

(declare-fun b!4168037 () Bool)

(assert (=> b!4168037 (= e!2587478 e!2587479)))

(declare-fun res!1707611 () Bool)

(assert (=> b!4168037 (=> (not res!1707611) (not e!2587479))))

(assert (=> b!4168037 (= res!1707611 call!291135)))

(assert (= (and d!1231764 (not res!1707612)) b!4168034))

(assert (= (and b!4168034 c!712659) b!4168033))

(assert (= (and b!4168034 (not c!712659)) b!4168036))

(assert (= (and b!4168033 res!1707615) b!4168035))

(assert (= (and b!4168036 c!712660) b!4168029))

(assert (= (and b!4168036 (not c!712660)) b!4168031))

(assert (= (and b!4168029 res!1707613) b!4168032))

(assert (= (and b!4168031 (not res!1707614)) b!4168037))

(assert (= (and b!4168037 res!1707611) b!4168030))

(assert (= (or b!4168032 b!4168030) bm!291130))

(assert (= (or b!4168029 b!4168037) bm!291128))

(assert (= (or b!4168035 bm!291130) bm!291129))

(declare-fun m!4759425 () Bool)

(assert (=> bm!291128 m!4759425))

(declare-fun m!4759427 () Bool)

(assert (=> bm!291129 m!4759427))

(declare-fun m!4759429 () Bool)

(assert (=> b!4168033 m!4759429))

(assert (=> d!1231528 d!1231764))

(assert (=> d!1231530 d!1231528))

(declare-fun d!1231766 () Bool)

(assert (=> d!1231766 (ruleValid!3276 thiss!25889 r!4097)))

(assert (=> d!1231766 true))

(declare-fun _$65!1632 () Unit!64703)

(assert (=> d!1231766 (= (choose!25517 thiss!25889 r!4097 rules!3820) _$65!1632)))

(declare-fun bs!595950 () Bool)

(assert (= bs!595950 d!1231766))

(assert (=> bs!595950 m!4758599))

(assert (=> d!1231530 d!1231766))

(assert (=> d!1231530 d!1231470))

(declare-fun bs!595951 () Bool)

(declare-fun d!1231768 () Bool)

(assert (= bs!595951 (and d!1231768 d!1231498)))

(declare-fun lambda!129199 () Int)

(assert (=> bs!595951 (= (and (= (toChars!10089 (transformation!7554 rBis!161)) (toChars!10089 (transformation!7554 r!4097))) (= (toValue!10230 (transformation!7554 rBis!161)) (toValue!10230 (transformation!7554 r!4097)))) (= lambda!129199 lambda!129177))))

(declare-fun bs!595952 () Bool)

(assert (= bs!595952 (and d!1231768 d!1231730)))

(assert (=> bs!595952 (= (and (= (toChars!10089 (transformation!7554 rBis!161)) (toChars!10089 (transformation!7554 r!4097))) (= (toValue!10230 (transformation!7554 rBis!161)) (toValue!10230 (transformation!7554 r!4097)))) (= lambda!129199 lambda!129194))))

(declare-fun bs!595953 () Bool)

(assert (= bs!595953 (and d!1231768 d!1231754)))

(assert (=> bs!595953 (= (and (= (toChars!10089 (transformation!7554 rBis!161)) (toChars!10089 (transformation!7554 (h!51047 rules!3820)))) (= (toValue!10230 (transformation!7554 rBis!161)) (toValue!10230 (transformation!7554 (h!51047 rules!3820))))) (= lambda!129199 lambda!129198))))

(assert (=> d!1231768 true))

(assert (=> d!1231768 (< (dynLambda!19556 order!24057 (toChars!10089 (transformation!7554 rBis!161))) (dynLambda!19555 order!24055 lambda!129199))))

(assert (=> d!1231768 true))

(assert (=> d!1231768 (< (dynLambda!19554 order!24053 (toValue!10230 (transformation!7554 rBis!161))) (dynLambda!19555 order!24055 lambda!129199))))

(assert (=> d!1231768 (= (semiInverseModEq!3280 (toChars!10089 (transformation!7554 rBis!161)) (toValue!10230 (transformation!7554 rBis!161))) (Forall!1558 lambda!129199))))

(declare-fun bs!595954 () Bool)

(assert (= bs!595954 d!1231768))

(declare-fun m!4759431 () Bool)

(assert (=> bs!595954 m!4759431))

(assert (=> d!1231454 d!1231768))

(declare-fun d!1231770 () Bool)

(declare-fun c!712663 () Bool)

(assert (=> d!1231770 (= c!712663 ((_ is Node!13765) (c!712502 (dynLambda!19557 (toChars!10089 (transformation!7554 (rule!10606 lt!1484287))) (value!235833 lt!1484287)))))))

(declare-fun e!2587488 () Bool)

(assert (=> d!1231770 (= (inv!60155 (c!712502 (dynLambda!19557 (toChars!10089 (transformation!7554 (rule!10606 lt!1484287))) (value!235833 lt!1484287)))) e!2587488)))

(declare-fun b!4168044 () Bool)

(declare-fun inv!60159 (Conc!13765) Bool)

(assert (=> b!4168044 (= e!2587488 (inv!60159 (c!712502 (dynLambda!19557 (toChars!10089 (transformation!7554 (rule!10606 lt!1484287))) (value!235833 lt!1484287)))))))

(declare-fun b!4168045 () Bool)

(declare-fun e!2587489 () Bool)

(assert (=> b!4168045 (= e!2587488 e!2587489)))

(declare-fun res!1707618 () Bool)

(assert (=> b!4168045 (= res!1707618 (not ((_ is Leaf!21285) (c!712502 (dynLambda!19557 (toChars!10089 (transformation!7554 (rule!10606 lt!1484287))) (value!235833 lt!1484287))))))))

(assert (=> b!4168045 (=> res!1707618 e!2587489)))

(declare-fun b!4168046 () Bool)

(declare-fun inv!60160 (Conc!13765) Bool)

(assert (=> b!4168046 (= e!2587489 (inv!60160 (c!712502 (dynLambda!19557 (toChars!10089 (transformation!7554 (rule!10606 lt!1484287))) (value!235833 lt!1484287)))))))

(assert (= (and d!1231770 c!712663) b!4168044))

(assert (= (and d!1231770 (not c!712663)) b!4168045))

(assert (= (and b!4168045 (not res!1707618)) b!4168046))

(declare-fun m!4759433 () Bool)

(assert (=> b!4168044 m!4759433))

(declare-fun m!4759435 () Bool)

(assert (=> b!4168046 m!4759435))

(assert (=> b!4167500 d!1231770))

(assert (=> d!1231526 d!1231626))

(assert (=> d!1231526 d!1231764))

(declare-fun d!1231772 () Bool)

(declare-fun lt!1484666 () Bool)

(assert (=> d!1231772 (= lt!1484666 (select (content!7094 (t!344058 rules!3820)) rBis!161))))

(declare-fun e!2587491 () Bool)

(assert (=> d!1231772 (= lt!1484666 e!2587491)))

(declare-fun res!1707619 () Bool)

(assert (=> d!1231772 (=> (not res!1707619) (not e!2587491))))

(assert (=> d!1231772 (= res!1707619 ((_ is Cons!45627) (t!344058 rules!3820)))))

(assert (=> d!1231772 (= (contains!9353 (t!344058 rules!3820) rBis!161) lt!1484666)))

(declare-fun b!4168047 () Bool)

(declare-fun e!2587490 () Bool)

(assert (=> b!4168047 (= e!2587491 e!2587490)))

(declare-fun res!1707620 () Bool)

(assert (=> b!4168047 (=> res!1707620 e!2587490)))

(assert (=> b!4168047 (= res!1707620 (= (h!51047 (t!344058 rules!3820)) rBis!161))))

(declare-fun b!4168048 () Bool)

(assert (=> b!4168048 (= e!2587490 (contains!9353 (t!344058 (t!344058 rules!3820)) rBis!161))))

(assert (= (and d!1231772 res!1707619) b!4168047))

(assert (= (and b!4168047 (not res!1707620)) b!4168048))

(assert (=> d!1231772 m!4759043))

(declare-fun m!4759437 () Bool)

(assert (=> d!1231772 m!4759437))

(declare-fun m!4759439 () Bool)

(assert (=> b!4168048 m!4759439))

(assert (=> b!4167219 d!1231772))

(assert (=> d!1231488 d!1231494))

(declare-fun d!1231774 () Bool)

(assert (=> d!1231774 (isPrefix!4411 input!3316 input!3316)))

(assert (=> d!1231774 true))

(declare-fun _$45!2039 () Unit!64703)

(assert (=> d!1231774 (= (choose!25516 input!3316 input!3316) _$45!2039)))

(declare-fun bs!595955 () Bool)

(assert (= bs!595955 d!1231774))

(assert (=> bs!595955 m!4758605))

(assert (=> d!1231488 d!1231774))

(declare-fun d!1231776 () Bool)

(declare-fun c!712664 () Bool)

(assert (=> d!1231776 (= c!712664 ((_ is Node!13765) (c!712502 (dynLambda!19557 (toChars!10089 (transformation!7554 r!4097)) (dynLambda!19553 (toValue!10230 (transformation!7554 r!4097)) lt!1484286)))))))

(declare-fun e!2587492 () Bool)

(assert (=> d!1231776 (= (inv!60155 (c!712502 (dynLambda!19557 (toChars!10089 (transformation!7554 r!4097)) (dynLambda!19553 (toValue!10230 (transformation!7554 r!4097)) lt!1484286)))) e!2587492)))

(declare-fun b!4168049 () Bool)

(assert (=> b!4168049 (= e!2587492 (inv!60159 (c!712502 (dynLambda!19557 (toChars!10089 (transformation!7554 r!4097)) (dynLambda!19553 (toValue!10230 (transformation!7554 r!4097)) lt!1484286)))))))

(declare-fun b!4168050 () Bool)

(declare-fun e!2587493 () Bool)

(assert (=> b!4168050 (= e!2587492 e!2587493)))

(declare-fun res!1707621 () Bool)

(assert (=> b!4168050 (= res!1707621 (not ((_ is Leaf!21285) (c!712502 (dynLambda!19557 (toChars!10089 (transformation!7554 r!4097)) (dynLambda!19553 (toValue!10230 (transformation!7554 r!4097)) lt!1484286))))))))

(assert (=> b!4168050 (=> res!1707621 e!2587493)))

(declare-fun b!4168051 () Bool)

(assert (=> b!4168051 (= e!2587493 (inv!60160 (c!712502 (dynLambda!19557 (toChars!10089 (transformation!7554 r!4097)) (dynLambda!19553 (toValue!10230 (transformation!7554 r!4097)) lt!1484286)))))))

(assert (= (and d!1231776 c!712664) b!4168049))

(assert (= (and d!1231776 (not c!712664)) b!4168050))

(assert (= (and b!4168050 (not res!1707621)) b!4168051))

(declare-fun m!4759441 () Bool)

(assert (=> b!4168049 m!4759441))

(declare-fun m!4759443 () Bool)

(assert (=> b!4168051 m!4759443))

(assert (=> b!4167445 d!1231776))

(declare-fun d!1231778 () Bool)

(assert (=> d!1231778 (= (inv!60156 (dynLambda!19557 (toChars!10089 (transformation!7554 r!4097)) (dynLambda!19553 (toValue!10230 (transformation!7554 r!4097)) lt!1484286))) (isBalanced!3728 (c!712502 (dynLambda!19557 (toChars!10089 (transformation!7554 r!4097)) (dynLambda!19553 (toValue!10230 (transformation!7554 r!4097)) lt!1484286)))))))

(declare-fun bs!595956 () Bool)

(assert (= bs!595956 d!1231778))

(declare-fun m!4759445 () Bool)

(assert (=> bs!595956 m!4759445))

(assert (=> tb!249557 d!1231778))

(declare-fun d!1231780 () Bool)

(declare-fun lt!1484667 () Bool)

(assert (=> d!1231780 (= lt!1484667 (select (content!7094 (t!344058 rules!3820)) r!4097))))

(declare-fun e!2587495 () Bool)

(assert (=> d!1231780 (= lt!1484667 e!2587495)))

(declare-fun res!1707622 () Bool)

(assert (=> d!1231780 (=> (not res!1707622) (not e!2587495))))

(assert (=> d!1231780 (= res!1707622 ((_ is Cons!45627) (t!344058 rules!3820)))))

(assert (=> d!1231780 (= (contains!9353 (t!344058 rules!3820) r!4097) lt!1484667)))

(declare-fun b!4168052 () Bool)

(declare-fun e!2587494 () Bool)

(assert (=> b!4168052 (= e!2587495 e!2587494)))

(declare-fun res!1707623 () Bool)

(assert (=> b!4168052 (=> res!1707623 e!2587494)))

(assert (=> b!4168052 (= res!1707623 (= (h!51047 (t!344058 rules!3820)) r!4097))))

(declare-fun b!4168053 () Bool)

(assert (=> b!4168053 (= e!2587494 (contains!9353 (t!344058 (t!344058 rules!3820)) r!4097))))

(assert (= (and d!1231780 res!1707622) b!4168052))

(assert (= (and b!4168052 (not res!1707623)) b!4168053))

(assert (=> d!1231780 m!4759043))

(declare-fun m!4759447 () Bool)

(assert (=> d!1231780 m!4759447))

(declare-fun m!4759449 () Bool)

(assert (=> b!4168053 m!4759449))

(assert (=> b!4167222 d!1231780))

(declare-fun bs!595957 () Bool)

(declare-fun d!1231782 () Bool)

(assert (= bs!595957 (and d!1231782 d!1231498)))

(declare-fun lambda!129200 () Int)

(assert (=> bs!595957 (= lambda!129200 lambda!129177)))

(declare-fun bs!595958 () Bool)

(assert (= bs!595958 (and d!1231782 d!1231730)))

(assert (=> bs!595958 (= lambda!129200 lambda!129194)))

(declare-fun bs!595959 () Bool)

(assert (= bs!595959 (and d!1231782 d!1231754)))

(assert (=> bs!595959 (= (and (= (toChars!10089 (transformation!7554 r!4097)) (toChars!10089 (transformation!7554 (h!51047 rules!3820)))) (= (toValue!10230 (transformation!7554 r!4097)) (toValue!10230 (transformation!7554 (h!51047 rules!3820))))) (= lambda!129200 lambda!129198))))

(declare-fun bs!595960 () Bool)

(assert (= bs!595960 (and d!1231782 d!1231768)))

(assert (=> bs!595960 (= (and (= (toChars!10089 (transformation!7554 r!4097)) (toChars!10089 (transformation!7554 rBis!161))) (= (toValue!10230 (transformation!7554 r!4097)) (toValue!10230 (transformation!7554 rBis!161)))) (= lambda!129200 lambda!129199))))

(assert (=> d!1231782 true))

(assert (=> d!1231782 (< (dynLambda!19556 order!24057 (toChars!10089 (transformation!7554 r!4097))) (dynLambda!19555 order!24055 lambda!129200))))

(assert (=> d!1231782 true))

(assert (=> d!1231782 (< (dynLambda!19554 order!24053 (toValue!10230 (transformation!7554 r!4097))) (dynLambda!19555 order!24055 lambda!129200))))

(assert (=> d!1231782 (= (semiInverseModEq!3280 (toChars!10089 (transformation!7554 r!4097)) (toValue!10230 (transformation!7554 r!4097))) (Forall!1558 lambda!129200))))

(declare-fun bs!595961 () Bool)

(assert (= bs!595961 d!1231782))

(declare-fun m!4759451 () Bool)

(assert (=> bs!595961 m!4759451))

(assert (=> d!1231466 d!1231782))

(declare-fun d!1231784 () Bool)

(assert (=> d!1231784 true))

(declare-fun lt!1484670 () Bool)

(declare-fun rulesValidInductive!2786 (LexerInterface!7147 List!45751) Bool)

(assert (=> d!1231784 (= lt!1484670 (rulesValidInductive!2786 thiss!25889 rules!3820))))

(declare-fun lambda!129203 () Int)

(declare-fun forall!8466 (List!45751 Int) Bool)

(assert (=> d!1231784 (= lt!1484670 (forall!8466 rules!3820 lambda!129203))))

(assert (=> d!1231784 (= (rulesValid!2948 thiss!25889 rules!3820) lt!1484670)))

(declare-fun bs!595962 () Bool)

(assert (= bs!595962 d!1231784))

(declare-fun m!4759453 () Bool)

(assert (=> bs!595962 m!4759453))

(declare-fun m!4759455 () Bool)

(assert (=> bs!595962 m!4759455))

(assert (=> d!1231476 d!1231784))

(assert (=> b!4167510 d!1231618))

(assert (=> b!4167510 d!1231486))

(declare-fun b!4168057 () Bool)

(declare-fun res!1707625 () Bool)

(declare-fun e!2587498 () Bool)

(assert (=> b!4168057 (=> (not res!1707625) (not e!2587498))))

(assert (=> b!4168057 (= res!1707625 (= (head!8848 (tail!6695 pBis!100)) (head!8848 (tail!6695 input!3316))))))

(declare-fun d!1231786 () Bool)

(declare-fun e!2587497 () Bool)

(assert (=> d!1231786 e!2587497))

(declare-fun res!1707627 () Bool)

(assert (=> d!1231786 (=> res!1707627 e!2587497)))

(declare-fun lt!1484671 () Bool)

(assert (=> d!1231786 (= res!1707627 (not lt!1484671))))

(declare-fun e!2587496 () Bool)

(assert (=> d!1231786 (= lt!1484671 e!2587496)))

(declare-fun res!1707626 () Bool)

(assert (=> d!1231786 (=> res!1707626 e!2587496)))

(assert (=> d!1231786 (= res!1707626 ((_ is Nil!45625) (tail!6695 pBis!100)))))

(assert (=> d!1231786 (= (isPrefix!4411 (tail!6695 pBis!100) (tail!6695 input!3316)) lt!1484671)))

(declare-fun b!4168059 () Bool)

(assert (=> b!4168059 (= e!2587497 (>= (size!33513 (tail!6695 input!3316)) (size!33513 (tail!6695 pBis!100))))))

(declare-fun b!4168058 () Bool)

(assert (=> b!4168058 (= e!2587498 (isPrefix!4411 (tail!6695 (tail!6695 pBis!100)) (tail!6695 (tail!6695 input!3316))))))

(declare-fun b!4168056 () Bool)

(assert (=> b!4168056 (= e!2587496 e!2587498)))

(declare-fun res!1707624 () Bool)

(assert (=> b!4168056 (=> (not res!1707624) (not e!2587498))))

(assert (=> b!4168056 (= res!1707624 (not ((_ is Nil!45625) (tail!6695 input!3316))))))

(assert (= (and d!1231786 (not res!1707626)) b!4168056))

(assert (= (and b!4168056 res!1707624) b!4168057))

(assert (= (and b!4168057 res!1707625) b!4168058))

(assert (= (and d!1231786 (not res!1707627)) b!4168059))

(assert (=> b!4168057 m!4758913))

(declare-fun m!4759457 () Bool)

(assert (=> b!4168057 m!4759457))

(assert (=> b!4168057 m!4758785))

(assert (=> b!4168057 m!4759067))

(assert (=> b!4168059 m!4758785))

(assert (=> b!4168059 m!4759069))

(assert (=> b!4168059 m!4758913))

(declare-fun m!4759459 () Bool)

(assert (=> b!4168059 m!4759459))

(assert (=> b!4168058 m!4758913))

(declare-fun m!4759461 () Bool)

(assert (=> b!4168058 m!4759461))

(assert (=> b!4168058 m!4758785))

(assert (=> b!4168058 m!4759075))

(assert (=> b!4168058 m!4759461))

(assert (=> b!4168058 m!4759075))

(declare-fun m!4759463 () Bool)

(assert (=> b!4168058 m!4759463))

(assert (=> b!4167505 d!1231786))

(declare-fun d!1231788 () Bool)

(assert (=> d!1231788 (= (tail!6695 pBis!100) (t!344056 pBis!100))))

(assert (=> b!4167505 d!1231788))

(assert (=> b!4167505 d!1231636))

(assert (=> b!4167508 d!1231620))

(assert (=> b!4167508 d!1231614))

(declare-fun d!1231790 () Bool)

(declare-fun lt!1484672 () Int)

(assert (=> d!1231790 (>= lt!1484672 0)))

(declare-fun e!2587499 () Int)

(assert (=> d!1231790 (= lt!1484672 e!2587499)))

(declare-fun c!712665 () Bool)

(assert (=> d!1231790 (= c!712665 ((_ is Nil!45625) (_2!24899 (get!14828 lt!1484334))))))

(assert (=> d!1231790 (= (size!33513 (_2!24899 (get!14828 lt!1484334))) lt!1484672)))

(declare-fun b!4168060 () Bool)

(assert (=> b!4168060 (= e!2587499 0)))

(declare-fun b!4168061 () Bool)

(assert (=> b!4168061 (= e!2587499 (+ 1 (size!33513 (t!344056 (_2!24899 (get!14828 lt!1484334))))))))

(assert (= (and d!1231790 c!712665) b!4168060))

(assert (= (and d!1231790 (not c!712665)) b!4168061))

(declare-fun m!4759465 () Bool)

(assert (=> b!4168061 m!4759465))

(assert (=> b!4167279 d!1231790))

(assert (=> b!4167279 d!1231652))

(assert (=> b!4167279 d!1231618))

(assert (=> b!4167506 d!1231618))

(assert (=> b!4167506 d!1231534))

(assert (=> b!4167477 d!1231660))

(assert (=> b!4167477 d!1231634))

(declare-fun d!1231792 () Bool)

(assert (=> d!1231792 (= (isEmpty!27005 (originalCharacters!7954 lt!1484287)) ((_ is Nil!45625) (originalCharacters!7954 lt!1484287)))))

(assert (=> d!1231532 d!1231792))

(assert (=> b!4167277 d!1231652))

(declare-fun d!1231794 () Bool)

(assert (=> d!1231794 (= (apply!10531 (transformation!7554 (rule!10606 (_1!24899 (get!14828 lt!1484334)))) (seqFromList!5583 (originalCharacters!7954 (_1!24899 (get!14828 lt!1484334))))) (dynLambda!19553 (toValue!10230 (transformation!7554 (rule!10606 (_1!24899 (get!14828 lt!1484334))))) (seqFromList!5583 (originalCharacters!7954 (_1!24899 (get!14828 lt!1484334))))))))

(declare-fun b_lambda!122423 () Bool)

(assert (=> (not b_lambda!122423) (not d!1231794)))

(declare-fun tb!249645 () Bool)

(declare-fun t!344180 () Bool)

(assert (=> (and b!4167163 (= (toValue!10230 (transformation!7554 r!4097)) (toValue!10230 (transformation!7554 (rule!10606 (_1!24899 (get!14828 lt!1484334)))))) t!344180) tb!249645))

(declare-fun result!304092 () Bool)

(assert (=> tb!249645 (= result!304092 (inv!21 (dynLambda!19553 (toValue!10230 (transformation!7554 (rule!10606 (_1!24899 (get!14828 lt!1484334))))) (seqFromList!5583 (originalCharacters!7954 (_1!24899 (get!14828 lt!1484334)))))))))

(declare-fun m!4759467 () Bool)

(assert (=> tb!249645 m!4759467))

(assert (=> d!1231794 t!344180))

(declare-fun b_and!325241 () Bool)

(assert (= b_and!325209 (and (=> t!344180 result!304092) b_and!325241)))

(declare-fun t!344182 () Bool)

(declare-fun tb!249647 () Bool)

(assert (=> (and b!4167177 (= (toValue!10230 (transformation!7554 (h!51047 rules!3820))) (toValue!10230 (transformation!7554 (rule!10606 (_1!24899 (get!14828 lt!1484334)))))) t!344182) tb!249647))

(declare-fun result!304094 () Bool)

(assert (= result!304094 result!304092))

(assert (=> d!1231794 t!344182))

(declare-fun b_and!325243 () Bool)

(assert (= b_and!325211 (and (=> t!344182 result!304094) b_and!325243)))

(declare-fun tb!249649 () Bool)

(declare-fun t!344184 () Bool)

(assert (=> (and b!4167171 (= (toValue!10230 (transformation!7554 rBis!161)) (toValue!10230 (transformation!7554 (rule!10606 (_1!24899 (get!14828 lt!1484334)))))) t!344184) tb!249649))

(declare-fun result!304096 () Bool)

(assert (= result!304096 result!304092))

(assert (=> d!1231794 t!344184))

(declare-fun b_and!325245 () Bool)

(assert (= b_and!325213 (and (=> t!344184 result!304096) b_and!325245)))

(declare-fun t!344186 () Bool)

(declare-fun tb!249651 () Bool)

(assert (=> (and b!4167544 (= (toValue!10230 (transformation!7554 (h!51047 (t!344058 rules!3820)))) (toValue!10230 (transformation!7554 (rule!10606 (_1!24899 (get!14828 lt!1484334)))))) t!344186) tb!249651))

(declare-fun result!304098 () Bool)

(assert (= result!304098 result!304092))

(assert (=> d!1231794 t!344186))

(declare-fun b_and!325247 () Bool)

(assert (= b_and!325215 (and (=> t!344186 result!304098) b_and!325247)))

(assert (=> d!1231794 m!4758773))

(declare-fun m!4759469 () Bool)

(assert (=> d!1231794 m!4759469))

(assert (=> b!4167277 d!1231794))

(declare-fun d!1231796 () Bool)

(assert (=> d!1231796 (= (seqFromList!5583 (originalCharacters!7954 (_1!24899 (get!14828 lt!1484334)))) (fromListB!2563 (originalCharacters!7954 (_1!24899 (get!14828 lt!1484334)))))))

(declare-fun bs!595963 () Bool)

(assert (= bs!595963 d!1231796))

(declare-fun m!4759471 () Bool)

(assert (=> bs!595963 m!4759471))

(assert (=> b!4167277 d!1231796))

(declare-fun b!4168062 () Bool)

(declare-fun e!2587505 () Bool)

(declare-fun e!2587504 () Bool)

(assert (=> b!4168062 (= e!2587505 e!2587504)))

(declare-fun c!712668 () Bool)

(assert (=> b!4168062 (= c!712668 ((_ is EmptyLang!12459) (derivativeStep!3761 (regex!7554 r!4097) (head!8848 p!2942))))))

(declare-fun b!4168063 () Bool)

(declare-fun e!2587501 () Bool)

(assert (=> b!4168063 (= e!2587501 (matchR!6200 (derivativeStep!3761 (derivativeStep!3761 (regex!7554 r!4097) (head!8848 p!2942)) (head!8848 (tail!6695 p!2942))) (tail!6695 (tail!6695 p!2942))))))

(declare-fun d!1231798 () Bool)

(assert (=> d!1231798 e!2587505))

(declare-fun c!712666 () Bool)

(assert (=> d!1231798 (= c!712666 ((_ is EmptyExpr!12459) (derivativeStep!3761 (regex!7554 r!4097) (head!8848 p!2942))))))

(declare-fun lt!1484673 () Bool)

(assert (=> d!1231798 (= lt!1484673 e!2587501)))

(declare-fun c!712667 () Bool)

(assert (=> d!1231798 (= c!712667 (isEmpty!27005 (tail!6695 p!2942)))))

(assert (=> d!1231798 (validRegex!5581 (derivativeStep!3761 (regex!7554 r!4097) (head!8848 p!2942)))))

(assert (=> d!1231798 (= (matchR!6200 (derivativeStep!3761 (regex!7554 r!4097) (head!8848 p!2942)) (tail!6695 p!2942)) lt!1484673)))

(declare-fun b!4168064 () Bool)

(declare-fun res!1707628 () Bool)

(declare-fun e!2587506 () Bool)

(assert (=> b!4168064 (=> (not res!1707628) (not e!2587506))))

(assert (=> b!4168064 (= res!1707628 (isEmpty!27005 (tail!6695 (tail!6695 p!2942))))))

(declare-fun b!4168065 () Bool)

(declare-fun res!1707632 () Bool)

(declare-fun e!2587503 () Bool)

(assert (=> b!4168065 (=> res!1707632 e!2587503)))

(assert (=> b!4168065 (= res!1707632 (not (isEmpty!27005 (tail!6695 (tail!6695 p!2942)))))))

(declare-fun b!4168066 () Bool)

(declare-fun e!2587507 () Bool)

(assert (=> b!4168066 (= e!2587507 e!2587503)))

(declare-fun res!1707631 () Bool)

(assert (=> b!4168066 (=> res!1707631 e!2587503)))

(declare-fun call!291136 () Bool)

(assert (=> b!4168066 (= res!1707631 call!291136)))

(declare-fun b!4168067 () Bool)

(assert (=> b!4168067 (= e!2587503 (not (= (head!8848 (tail!6695 p!2942)) (c!712503 (derivativeStep!3761 (regex!7554 r!4097) (head!8848 p!2942))))))))

(declare-fun b!4168068 () Bool)

(declare-fun res!1707634 () Bool)

(assert (=> b!4168068 (=> (not res!1707634) (not e!2587506))))

(assert (=> b!4168068 (= res!1707634 (not call!291136))))

(declare-fun b!4168069 () Bool)

(assert (=> b!4168069 (= e!2587501 (nullable!4371 (derivativeStep!3761 (regex!7554 r!4097) (head!8848 p!2942))))))

(declare-fun b!4168070 () Bool)

(assert (=> b!4168070 (= e!2587505 (= lt!1484673 call!291136))))

(declare-fun b!4168071 () Bool)

(declare-fun e!2587502 () Bool)

(assert (=> b!4168071 (= e!2587502 e!2587507)))

(declare-fun res!1707635 () Bool)

(assert (=> b!4168071 (=> (not res!1707635) (not e!2587507))))

(assert (=> b!4168071 (= res!1707635 (not lt!1484673))))

(declare-fun b!4168072 () Bool)

(declare-fun res!1707633 () Bool)

(assert (=> b!4168072 (=> res!1707633 e!2587502)))

(assert (=> b!4168072 (= res!1707633 e!2587506)))

(declare-fun res!1707630 () Bool)

(assert (=> b!4168072 (=> (not res!1707630) (not e!2587506))))

(assert (=> b!4168072 (= res!1707630 lt!1484673)))

(declare-fun b!4168073 () Bool)

(declare-fun res!1707629 () Bool)

(assert (=> b!4168073 (=> res!1707629 e!2587502)))

(assert (=> b!4168073 (= res!1707629 (not ((_ is ElementMatch!12459) (derivativeStep!3761 (regex!7554 r!4097) (head!8848 p!2942)))))))

(assert (=> b!4168073 (= e!2587504 e!2587502)))

(declare-fun b!4168074 () Bool)

(assert (=> b!4168074 (= e!2587506 (= (head!8848 (tail!6695 p!2942)) (c!712503 (derivativeStep!3761 (regex!7554 r!4097) (head!8848 p!2942)))))))

(declare-fun b!4168075 () Bool)

(assert (=> b!4168075 (= e!2587504 (not lt!1484673))))

(declare-fun bm!291131 () Bool)

(assert (=> bm!291131 (= call!291136 (isEmpty!27005 (tail!6695 p!2942)))))

(assert (= (and d!1231798 c!712667) b!4168069))

(assert (= (and d!1231798 (not c!712667)) b!4168063))

(assert (= (and d!1231798 c!712666) b!4168070))

(assert (= (and d!1231798 (not c!712666)) b!4168062))

(assert (= (and b!4168062 c!712668) b!4168075))

(assert (= (and b!4168062 (not c!712668)) b!4168073))

(assert (= (and b!4168073 (not res!1707629)) b!4168072))

(assert (= (and b!4168072 res!1707630) b!4168068))

(assert (= (and b!4168068 res!1707634) b!4168064))

(assert (= (and b!4168064 res!1707628) b!4168074))

(assert (= (and b!4168072 (not res!1707633)) b!4168071))

(assert (= (and b!4168071 res!1707635) b!4168066))

(assert (= (and b!4168066 (not res!1707631)) b!4168065))

(assert (= (and b!4168065 (not res!1707632)) b!4168067))

(assert (= (or b!4168070 b!4168068 b!4168066) bm!291131))

(assert (=> b!4168067 m!4758885))

(assert (=> b!4168067 m!4759065))

(assert (=> bm!291131 m!4758885))

(assert (=> bm!291131 m!4758887))

(assert (=> d!1231798 m!4758885))

(assert (=> d!1231798 m!4758887))

(assert (=> d!1231798 m!4758889))

(declare-fun m!4759473 () Bool)

(assert (=> d!1231798 m!4759473))

(assert (=> b!4168064 m!4758885))

(assert (=> b!4168064 m!4759073))

(assert (=> b!4168064 m!4759073))

(declare-fun m!4759475 () Bool)

(assert (=> b!4168064 m!4759475))

(assert (=> b!4168065 m!4758885))

(assert (=> b!4168065 m!4759073))

(assert (=> b!4168065 m!4759073))

(assert (=> b!4168065 m!4759475))

(assert (=> b!4168074 m!4758885))

(assert (=> b!4168074 m!4759065))

(assert (=> b!4168063 m!4758885))

(assert (=> b!4168063 m!4759065))

(assert (=> b!4168063 m!4758889))

(assert (=> b!4168063 m!4759065))

(declare-fun m!4759477 () Bool)

(assert (=> b!4168063 m!4759477))

(assert (=> b!4168063 m!4758885))

(assert (=> b!4168063 m!4759073))

(assert (=> b!4168063 m!4759477))

(assert (=> b!4168063 m!4759073))

(declare-fun m!4759479 () Bool)

(assert (=> b!4168063 m!4759479))

(assert (=> b!4168069 m!4758889))

(declare-fun m!4759481 () Bool)

(assert (=> b!4168069 m!4759481))

(assert (=> b!4167475 d!1231798))

(declare-fun b!4168096 () Bool)

(declare-fun e!2587521 () Regex!12459)

(declare-fun call!291148 () Regex!12459)

(assert (=> b!4168096 (= e!2587521 (Concat!20244 call!291148 (regex!7554 r!4097)))))

(declare-fun d!1231800 () Bool)

(declare-fun lt!1484676 () Regex!12459)

(assert (=> d!1231800 (validRegex!5581 lt!1484676)))

(declare-fun e!2587522 () Regex!12459)

(assert (=> d!1231800 (= lt!1484676 e!2587522)))

(declare-fun c!712680 () Bool)

(assert (=> d!1231800 (= c!712680 (or ((_ is EmptyExpr!12459) (regex!7554 r!4097)) ((_ is EmptyLang!12459) (regex!7554 r!4097))))))

(assert (=> d!1231800 (validRegex!5581 (regex!7554 r!4097))))

(assert (=> d!1231800 (= (derivativeStep!3761 (regex!7554 r!4097) (head!8848 p!2942)) lt!1484676)))

(declare-fun b!4168097 () Bool)

(declare-fun c!712681 () Bool)

(assert (=> b!4168097 (= c!712681 ((_ is Union!12459) (regex!7554 r!4097)))))

(declare-fun e!2587518 () Regex!12459)

(declare-fun e!2587519 () Regex!12459)

(assert (=> b!4168097 (= e!2587518 e!2587519)))

(declare-fun bm!291140 () Bool)

(declare-fun call!291146 () Regex!12459)

(declare-fun c!712683 () Bool)

(assert (=> bm!291140 (= call!291146 (derivativeStep!3761 (ite c!712681 (regTwo!25431 (regex!7554 r!4097)) (ite c!712683 (reg!12788 (regex!7554 r!4097)) (regOne!25430 (regex!7554 r!4097)))) (head!8848 p!2942)))))

(declare-fun b!4168098 () Bool)

(declare-fun c!712679 () Bool)

(assert (=> b!4168098 (= c!712679 (nullable!4371 (regOne!25430 (regex!7554 r!4097))))))

(declare-fun e!2587520 () Regex!12459)

(assert (=> b!4168098 (= e!2587521 e!2587520)))

(declare-fun bm!291141 () Bool)

(declare-fun call!291147 () Regex!12459)

(assert (=> bm!291141 (= call!291147 call!291148)))

(declare-fun bm!291142 () Bool)

(assert (=> bm!291142 (= call!291148 call!291146)))

(declare-fun b!4168099 () Bool)

(assert (=> b!4168099 (= e!2587520 (Union!12459 (Concat!20244 call!291147 (regTwo!25430 (regex!7554 r!4097))) EmptyLang!12459))))

(declare-fun b!4168100 () Bool)

(assert (=> b!4168100 (= e!2587519 e!2587521)))

(assert (=> b!4168100 (= c!712683 ((_ is Star!12459) (regex!7554 r!4097)))))

(declare-fun b!4168101 () Bool)

(assert (=> b!4168101 (= e!2587522 EmptyLang!12459)))

(declare-fun b!4168102 () Bool)

(assert (=> b!4168102 (= e!2587518 (ite (= (head!8848 p!2942) (c!712503 (regex!7554 r!4097))) EmptyExpr!12459 EmptyLang!12459))))

(declare-fun b!4168103 () Bool)

(assert (=> b!4168103 (= e!2587522 e!2587518)))

(declare-fun c!712682 () Bool)

(assert (=> b!4168103 (= c!712682 ((_ is ElementMatch!12459) (regex!7554 r!4097)))))

(declare-fun bm!291143 () Bool)

(declare-fun call!291145 () Regex!12459)

(assert (=> bm!291143 (= call!291145 (derivativeStep!3761 (ite c!712681 (regOne!25431 (regex!7554 r!4097)) (regTwo!25430 (regex!7554 r!4097))) (head!8848 p!2942)))))

(declare-fun b!4168104 () Bool)

(assert (=> b!4168104 (= e!2587520 (Union!12459 (Concat!20244 call!291147 (regTwo!25430 (regex!7554 r!4097))) call!291145))))

(declare-fun b!4168105 () Bool)

(assert (=> b!4168105 (= e!2587519 (Union!12459 call!291145 call!291146))))

(assert (= (and d!1231800 c!712680) b!4168101))

(assert (= (and d!1231800 (not c!712680)) b!4168103))

(assert (= (and b!4168103 c!712682) b!4168102))

(assert (= (and b!4168103 (not c!712682)) b!4168097))

(assert (= (and b!4168097 c!712681) b!4168105))

(assert (= (and b!4168097 (not c!712681)) b!4168100))

(assert (= (and b!4168100 c!712683) b!4168096))

(assert (= (and b!4168100 (not c!712683)) b!4168098))

(assert (= (and b!4168098 c!712679) b!4168104))

(assert (= (and b!4168098 (not c!712679)) b!4168099))

(assert (= (or b!4168104 b!4168099) bm!291141))

(assert (= (or b!4168096 bm!291141) bm!291142))

(assert (= (or b!4168105 bm!291142) bm!291140))

(assert (= (or b!4168105 b!4168104) bm!291143))

(declare-fun m!4759483 () Bool)

(assert (=> d!1231800 m!4759483))

(assert (=> d!1231800 m!4758883))

(assert (=> bm!291140 m!4758879))

(declare-fun m!4759485 () Bool)

(assert (=> bm!291140 m!4759485))

(declare-fun m!4759487 () Bool)

(assert (=> b!4168098 m!4759487))

(assert (=> bm!291143 m!4758879))

(declare-fun m!4759489 () Bool)

(assert (=> bm!291143 m!4759489))

(assert (=> b!4167475 d!1231800))

(assert (=> b!4167475 d!1231620))

(assert (=> b!4167475 d!1231634))

(declare-fun bs!595964 () Bool)

(declare-fun d!1231802 () Bool)

(assert (= bs!595964 (and d!1231802 d!1231658)))

(declare-fun lambda!129204 () Int)

(assert (=> bs!595964 (= (= (toValue!10230 (transformation!7554 r!4097)) (toValue!10230 (transformation!7554 rBis!161))) (= lambda!129204 lambda!129184))))

(assert (=> d!1231802 true))

(assert (=> d!1231802 (< (dynLambda!19554 order!24053 (toValue!10230 (transformation!7554 r!4097))) (dynLambda!19559 order!24059 lambda!129204))))

(assert (=> d!1231802 (= (equivClasses!3179 (toChars!10089 (transformation!7554 r!4097)) (toValue!10230 (transformation!7554 r!4097))) (Forall2!1156 lambda!129204))))

(declare-fun bs!595965 () Bool)

(assert (= bs!595965 d!1231802))

(declare-fun m!4759491 () Bool)

(assert (=> bs!595965 m!4759491))

(assert (=> b!4167220 d!1231802))

(declare-fun d!1231804 () Bool)

(declare-fun lt!1484677 () List!45749)

(assert (=> d!1231804 (= (++!11664 (t!344056 p!2942) lt!1484677) (tail!6695 input!3316))))

(declare-fun e!2587523 () List!45749)

(assert (=> d!1231804 (= lt!1484677 e!2587523)))

(declare-fun c!712684 () Bool)

(assert (=> d!1231804 (= c!712684 ((_ is Cons!45625) (t!344056 p!2942)))))

(assert (=> d!1231804 (>= (size!33513 (tail!6695 input!3316)) (size!33513 (t!344056 p!2942)))))

(assert (=> d!1231804 (= (getSuffix!2718 (tail!6695 input!3316) (t!344056 p!2942)) lt!1484677)))

(declare-fun b!4168106 () Bool)

(assert (=> b!4168106 (= e!2587523 (getSuffix!2718 (tail!6695 (tail!6695 input!3316)) (t!344056 (t!344056 p!2942))))))

(declare-fun b!4168107 () Bool)

(assert (=> b!4168107 (= e!2587523 (tail!6695 input!3316))))

(assert (= (and d!1231804 c!712684) b!4168106))

(assert (= (and d!1231804 (not c!712684)) b!4168107))

(declare-fun m!4759493 () Bool)

(assert (=> d!1231804 m!4759493))

(assert (=> d!1231804 m!4758785))

(assert (=> d!1231804 m!4759069))

(assert (=> d!1231804 m!4758777))

(assert (=> b!4168106 m!4758785))

(assert (=> b!4168106 m!4759075))

(assert (=> b!4168106 m!4759075))

(declare-fun m!4759495 () Bool)

(assert (=> b!4168106 m!4759495))

(assert (=> b!4167295 d!1231804))

(assert (=> b!4167295 d!1231636))

(declare-fun d!1231806 () Bool)

(declare-fun lt!1484678 () Int)

(assert (=> d!1231806 (>= lt!1484678 0)))

(declare-fun e!2587524 () Int)

(assert (=> d!1231806 (= lt!1484678 e!2587524)))

(declare-fun c!712685 () Bool)

(assert (=> d!1231806 (= c!712685 ((_ is Nil!45625) (t!344056 p!2942)))))

(assert (=> d!1231806 (= (size!33513 (t!344056 p!2942)) lt!1484678)))

(declare-fun b!4168108 () Bool)

(assert (=> b!4168108 (= e!2587524 0)))

(declare-fun b!4168109 () Bool)

(assert (=> b!4168109 (= e!2587524 (+ 1 (size!33513 (t!344056 (t!344056 p!2942)))))))

(assert (= (and d!1231806 c!712685) b!4168108))

(assert (= (and d!1231806 (not c!712685)) b!4168109))

(declare-fun m!4759497 () Bool)

(assert (=> b!4168109 m!4759497))

(assert (=> b!4167290 d!1231806))

(assert (=> b!4167479 d!1231620))

(declare-fun bs!595966 () Bool)

(declare-fun d!1231808 () Bool)

(assert (= bs!595966 (and d!1231808 d!1231658)))

(declare-fun lambda!129205 () Int)

(assert (=> bs!595966 (= (= (toValue!10230 (transformation!7554 (h!51047 rules!3820))) (toValue!10230 (transformation!7554 rBis!161))) (= lambda!129205 lambda!129184))))

(declare-fun bs!595967 () Bool)

(assert (= bs!595967 (and d!1231808 d!1231802)))

(assert (=> bs!595967 (= (= (toValue!10230 (transformation!7554 (h!51047 rules!3820))) (toValue!10230 (transformation!7554 r!4097))) (= lambda!129205 lambda!129204))))

(assert (=> d!1231808 true))

(assert (=> d!1231808 (< (dynLambda!19554 order!24053 (toValue!10230 (transformation!7554 (h!51047 rules!3820)))) (dynLambda!19559 order!24059 lambda!129205))))

(assert (=> d!1231808 (= (equivClasses!3179 (toChars!10089 (transformation!7554 (h!51047 rules!3820))) (toValue!10230 (transformation!7554 (h!51047 rules!3820)))) (Forall2!1156 lambda!129205))))

(declare-fun bs!595968 () Bool)

(assert (= bs!595968 d!1231808))

(declare-fun m!4759499 () Bool)

(assert (=> bs!595968 m!4759499))

(assert (=> b!4167223 d!1231808))

(assert (=> b!4167481 d!1231752))

(declare-fun d!1231810 () Bool)

(declare-fun c!712691 () Bool)

(assert (=> d!1231810 (= c!712691 ((_ is IntegerValue!23352) (dynLambda!19553 (toValue!10230 (transformation!7554 r!4097)) lt!1484286)))))

(declare-fun e!2587532 () Bool)

(assert (=> d!1231810 (= (inv!21 (dynLambda!19553 (toValue!10230 (transformation!7554 r!4097)) lt!1484286)) e!2587532)))

(declare-fun b!4168120 () Bool)

(declare-fun e!2587531 () Bool)

(assert (=> b!4168120 (= e!2587532 e!2587531)))

(declare-fun c!712690 () Bool)

(assert (=> b!4168120 (= c!712690 ((_ is IntegerValue!23353) (dynLambda!19553 (toValue!10230 (transformation!7554 r!4097)) lt!1484286)))))

(declare-fun b!4168121 () Bool)

(declare-fun e!2587533 () Bool)

(declare-fun inv!15 (TokenValue!7784) Bool)

(assert (=> b!4168121 (= e!2587533 (inv!15 (dynLambda!19553 (toValue!10230 (transformation!7554 r!4097)) lt!1484286)))))

(declare-fun b!4168122 () Bool)

(declare-fun res!1707638 () Bool)

(assert (=> b!4168122 (=> res!1707638 e!2587533)))

(assert (=> b!4168122 (= res!1707638 (not ((_ is IntegerValue!23354) (dynLambda!19553 (toValue!10230 (transformation!7554 r!4097)) lt!1484286))))))

(assert (=> b!4168122 (= e!2587531 e!2587533)))

(declare-fun b!4168123 () Bool)

(declare-fun inv!17 (TokenValue!7784) Bool)

(assert (=> b!4168123 (= e!2587531 (inv!17 (dynLambda!19553 (toValue!10230 (transformation!7554 r!4097)) lt!1484286)))))

(declare-fun b!4168124 () Bool)

(declare-fun inv!16 (TokenValue!7784) Bool)

(assert (=> b!4168124 (= e!2587532 (inv!16 (dynLambda!19553 (toValue!10230 (transformation!7554 r!4097)) lt!1484286)))))

(assert (= (and d!1231810 c!712691) b!4168124))

(assert (= (and d!1231810 (not c!712691)) b!4168120))

(assert (= (and b!4168120 c!712690) b!4168123))

(assert (= (and b!4168120 (not c!712690)) b!4168122))

(assert (= (and b!4168122 (not res!1707638)) b!4168121))

(declare-fun m!4759501 () Bool)

(assert (=> b!4168121 m!4759501))

(declare-fun m!4759503 () Bool)

(assert (=> b!4168123 m!4759503))

(declare-fun m!4759505 () Bool)

(assert (=> b!4168124 m!4759505))

(assert (=> tb!249533 d!1231810))

(assert (=> b!4167283 d!1231652))

(declare-fun d!1231812 () Bool)

(declare-fun res!1707643 () Bool)

(declare-fun e!2587538 () Bool)

(assert (=> d!1231812 (=> res!1707643 e!2587538)))

(assert (=> d!1231812 (= res!1707643 ((_ is Nil!45627) rules!3820))))

(assert (=> d!1231812 (= (noDuplicateTag!3109 thiss!25889 rules!3820 Nil!45629) e!2587538)))

(declare-fun b!4168129 () Bool)

(declare-fun e!2587539 () Bool)

(assert (=> b!4168129 (= e!2587538 e!2587539)))

(declare-fun res!1707644 () Bool)

(assert (=> b!4168129 (=> (not res!1707644) (not e!2587539))))

(declare-fun contains!9355 (List!45753 String!52786) Bool)

(assert (=> b!4168129 (= res!1707644 (not (contains!9355 Nil!45629 (tag!8418 (h!51047 rules!3820)))))))

(declare-fun b!4168130 () Bool)

(assert (=> b!4168130 (= e!2587539 (noDuplicateTag!3109 thiss!25889 (t!344058 rules!3820) (Cons!45629 (tag!8418 (h!51047 rules!3820)) Nil!45629)))))

(assert (= (and d!1231812 (not res!1707643)) b!4168129))

(assert (= (and b!4168129 res!1707644) b!4168130))

(declare-fun m!4759507 () Bool)

(assert (=> b!4168129 m!4759507))

(declare-fun m!4759509 () Bool)

(assert (=> b!4168130 m!4759509))

(assert (=> b!4167226 d!1231812))

(declare-fun b!4168134 () Bool)

(declare-fun e!2587540 () Bool)

(declare-fun tp!1273018 () Bool)

(declare-fun tp!1273022 () Bool)

(assert (=> b!4168134 (= e!2587540 (and tp!1273018 tp!1273022))))

(assert (=> b!4167549 (= tp!1272911 e!2587540)))

(declare-fun b!4168131 () Bool)

(assert (=> b!4168131 (= e!2587540 tp_is_empty!21881)))

(declare-fun b!4168133 () Bool)

(declare-fun tp!1273019 () Bool)

(assert (=> b!4168133 (= e!2587540 tp!1273019)))

(declare-fun b!4168132 () Bool)

(declare-fun tp!1273021 () Bool)

(declare-fun tp!1273020 () Bool)

(assert (=> b!4168132 (= e!2587540 (and tp!1273021 tp!1273020))))

(assert (= (and b!4167549 ((_ is ElementMatch!12459) (reg!12788 (regex!7554 (h!51047 rules!3820))))) b!4168131))

(assert (= (and b!4167549 ((_ is Concat!20244) (reg!12788 (regex!7554 (h!51047 rules!3820))))) b!4168132))

(assert (= (and b!4167549 ((_ is Star!12459) (reg!12788 (regex!7554 (h!51047 rules!3820))))) b!4168133))

(assert (= (and b!4167549 ((_ is Union!12459) (reg!12788 (regex!7554 (h!51047 rules!3820))))) b!4168134))

(declare-fun b!4168143 () Bool)

(declare-fun tp!1273031 () Bool)

(declare-fun tp!1273030 () Bool)

(declare-fun e!2587546 () Bool)

(assert (=> b!4168143 (= e!2587546 (and (inv!60155 (left!34016 (c!712502 (dynLambda!19557 (toChars!10089 (transformation!7554 (rule!10606 lt!1484287))) (value!235833 lt!1484287))))) tp!1273031 (inv!60155 (right!34346 (c!712502 (dynLambda!19557 (toChars!10089 (transformation!7554 (rule!10606 lt!1484287))) (value!235833 lt!1484287))))) tp!1273030))))

(declare-fun b!4168145 () Bool)

(declare-fun e!2587545 () Bool)

(declare-fun tp!1273029 () Bool)

(assert (=> b!4168145 (= e!2587545 tp!1273029)))

(declare-fun b!4168144 () Bool)

(declare-fun inv!60162 (IArray!27535) Bool)

(assert (=> b!4168144 (= e!2587546 (and (inv!60162 (xs!17071 (c!712502 (dynLambda!19557 (toChars!10089 (transformation!7554 (rule!10606 lt!1484287))) (value!235833 lt!1484287))))) e!2587545))))

(assert (=> b!4167500 (= tp!1272872 (and (inv!60155 (c!712502 (dynLambda!19557 (toChars!10089 (transformation!7554 (rule!10606 lt!1484287))) (value!235833 lt!1484287)))) e!2587546))))

(assert (= (and b!4167500 ((_ is Node!13765) (c!712502 (dynLambda!19557 (toChars!10089 (transformation!7554 (rule!10606 lt!1484287))) (value!235833 lt!1484287))))) b!4168143))

(assert (= b!4168144 b!4168145))

(assert (= (and b!4167500 ((_ is Leaf!21285) (c!712502 (dynLambda!19557 (toChars!10089 (transformation!7554 (rule!10606 lt!1484287))) (value!235833 lt!1484287))))) b!4168144))

(declare-fun m!4759511 () Bool)

(assert (=> b!4168143 m!4759511))

(declare-fun m!4759513 () Bool)

(assert (=> b!4168143 m!4759513))

(declare-fun m!4759515 () Bool)

(assert (=> b!4168144 m!4759515))

(assert (=> b!4167500 m!4758897))

(declare-fun b!4168146 () Bool)

(declare-fun e!2587547 () Bool)

(declare-fun tp!1273032 () Bool)

(assert (=> b!4168146 (= e!2587547 (and tp_is_empty!21881 tp!1273032))))

(assert (=> b!4167545 (= tp!1272908 e!2587547)))

(assert (= (and b!4167545 ((_ is Cons!45625) (t!344056 (t!344056 pBis!100)))) b!4168146))

(declare-fun b!4168150 () Bool)

(declare-fun e!2587548 () Bool)

(declare-fun tp!1273033 () Bool)

(declare-fun tp!1273037 () Bool)

(assert (=> b!4168150 (= e!2587548 (and tp!1273033 tp!1273037))))

(assert (=> b!4167548 (= tp!1272913 e!2587548)))

(declare-fun b!4168147 () Bool)

(assert (=> b!4168147 (= e!2587548 tp_is_empty!21881)))

(declare-fun b!4168149 () Bool)

(declare-fun tp!1273034 () Bool)

(assert (=> b!4168149 (= e!2587548 tp!1273034)))

(declare-fun b!4168148 () Bool)

(declare-fun tp!1273036 () Bool)

(declare-fun tp!1273035 () Bool)

(assert (=> b!4168148 (= e!2587548 (and tp!1273036 tp!1273035))))

(assert (= (and b!4167548 ((_ is ElementMatch!12459) (regOne!25430 (regex!7554 (h!51047 rules!3820))))) b!4168147))

(assert (= (and b!4167548 ((_ is Concat!20244) (regOne!25430 (regex!7554 (h!51047 rules!3820))))) b!4168148))

(assert (= (and b!4167548 ((_ is Star!12459) (regOne!25430 (regex!7554 (h!51047 rules!3820))))) b!4168149))

(assert (= (and b!4167548 ((_ is Union!12459) (regOne!25430 (regex!7554 (h!51047 rules!3820))))) b!4168150))

(declare-fun b!4168154 () Bool)

(declare-fun e!2587549 () Bool)

(declare-fun tp!1273038 () Bool)

(declare-fun tp!1273042 () Bool)

(assert (=> b!4168154 (= e!2587549 (and tp!1273038 tp!1273042))))

(assert (=> b!4167548 (= tp!1272912 e!2587549)))

(declare-fun b!4168151 () Bool)

(assert (=> b!4168151 (= e!2587549 tp_is_empty!21881)))

(declare-fun b!4168153 () Bool)

(declare-fun tp!1273039 () Bool)

(assert (=> b!4168153 (= e!2587549 tp!1273039)))

(declare-fun b!4168152 () Bool)

(declare-fun tp!1273041 () Bool)

(declare-fun tp!1273040 () Bool)

(assert (=> b!4168152 (= e!2587549 (and tp!1273041 tp!1273040))))

(assert (= (and b!4167548 ((_ is ElementMatch!12459) (regTwo!25430 (regex!7554 (h!51047 rules!3820))))) b!4168151))

(assert (= (and b!4167548 ((_ is Concat!20244) (regTwo!25430 (regex!7554 (h!51047 rules!3820))))) b!4168152))

(assert (= (and b!4167548 ((_ is Star!12459) (regTwo!25430 (regex!7554 (h!51047 rules!3820))))) b!4168153))

(assert (= (and b!4167548 ((_ is Union!12459) (regTwo!25430 (regex!7554 (h!51047 rules!3820))))) b!4168154))

(declare-fun b!4168158 () Bool)

(declare-fun e!2587550 () Bool)

(declare-fun tp!1273043 () Bool)

(declare-fun tp!1273047 () Bool)

(assert (=> b!4168158 (= e!2587550 (and tp!1273043 tp!1273047))))

(assert (=> b!4167529 (= tp!1272886 e!2587550)))

(declare-fun b!4168155 () Bool)

(assert (=> b!4168155 (= e!2587550 tp_is_empty!21881)))

(declare-fun b!4168157 () Bool)

(declare-fun tp!1273044 () Bool)

(assert (=> b!4168157 (= e!2587550 tp!1273044)))

(declare-fun b!4168156 () Bool)

(declare-fun tp!1273046 () Bool)

(declare-fun tp!1273045 () Bool)

(assert (=> b!4168156 (= e!2587550 (and tp!1273046 tp!1273045))))

(assert (= (and b!4167529 ((_ is ElementMatch!12459) (regOne!25431 (regex!7554 rBis!161)))) b!4168155))

(assert (= (and b!4167529 ((_ is Concat!20244) (regOne!25431 (regex!7554 rBis!161)))) b!4168156))

(assert (= (and b!4167529 ((_ is Star!12459) (regOne!25431 (regex!7554 rBis!161)))) b!4168157))

(assert (= (and b!4167529 ((_ is Union!12459) (regOne!25431 (regex!7554 rBis!161)))) b!4168158))

(declare-fun b!4168162 () Bool)

(declare-fun e!2587551 () Bool)

(declare-fun tp!1273048 () Bool)

(declare-fun tp!1273052 () Bool)

(assert (=> b!4168162 (= e!2587551 (and tp!1273048 tp!1273052))))

(assert (=> b!4167529 (= tp!1272890 e!2587551)))

(declare-fun b!4168159 () Bool)

(assert (=> b!4168159 (= e!2587551 tp_is_empty!21881)))

(declare-fun b!4168161 () Bool)

(declare-fun tp!1273049 () Bool)

(assert (=> b!4168161 (= e!2587551 tp!1273049)))

(declare-fun b!4168160 () Bool)

(declare-fun tp!1273051 () Bool)

(declare-fun tp!1273050 () Bool)

(assert (=> b!4168160 (= e!2587551 (and tp!1273051 tp!1273050))))

(assert (= (and b!4167529 ((_ is ElementMatch!12459) (regTwo!25431 (regex!7554 rBis!161)))) b!4168159))

(assert (= (and b!4167529 ((_ is Concat!20244) (regTwo!25431 (regex!7554 rBis!161)))) b!4168160))

(assert (= (and b!4167529 ((_ is Star!12459) (regTwo!25431 (regex!7554 rBis!161)))) b!4168161))

(assert (= (and b!4167529 ((_ is Union!12459) (regTwo!25431 (regex!7554 rBis!161)))) b!4168162))

(declare-fun b!4168165 () Bool)

(declare-fun b_free!120399 () Bool)

(declare-fun b_next!121103 () Bool)

(assert (=> b!4168165 (= b_free!120399 (not b_next!121103))))

(declare-fun tb!249653 () Bool)

(declare-fun t!344188 () Bool)

(assert (=> (and b!4168165 (= (toValue!10230 (transformation!7554 (h!51047 (t!344058 (t!344058 rules!3820))))) (toValue!10230 (transformation!7554 r!4097))) t!344188) tb!249653))

(declare-fun result!304102 () Bool)

(assert (= result!304102 result!303960))

(assert (=> d!1231496 t!344188))

(declare-fun t!344190 () Bool)

(declare-fun tb!249655 () Bool)

(assert (=> (and b!4168165 (= (toValue!10230 (transformation!7554 (h!51047 (t!344058 (t!344058 rules!3820))))) (toValue!10230 (transformation!7554 r!4097))) t!344190) tb!249655))

(declare-fun result!304104 () Bool)

(assert (= result!304104 result!304068))

(assert (=> d!1231730 t!344190))

(assert (=> d!1231738 t!344190))

(assert (=> d!1231498 t!344188))

(declare-fun tb!249657 () Bool)

(declare-fun t!344192 () Bool)

(assert (=> (and b!4168165 (= (toValue!10230 (transformation!7554 (h!51047 (t!344058 (t!344058 rules!3820))))) (toValue!10230 (transformation!7554 (rule!10606 (_1!24899 (get!14828 lt!1484334)))))) t!344192) tb!249657))

(declare-fun result!304106 () Bool)

(assert (= result!304106 result!304092))

(assert (=> d!1231794 t!344192))

(declare-fun tp!1273056 () Bool)

(declare-fun b_and!325249 () Bool)

(assert (=> b!4168165 (= tp!1273056 (and (=> t!344190 result!304104) (=> t!344192 result!304106) (=> t!344188 result!304102) b_and!325249))))

(declare-fun b_free!120401 () Bool)

(declare-fun b_next!121105 () Bool)

(assert (=> b!4168165 (= b_free!120401 (not b_next!121105))))

(declare-fun tb!249659 () Bool)

(declare-fun t!344194 () Bool)

(assert (=> (and b!4168165 (= (toChars!10089 (transformation!7554 (h!51047 (t!344058 (t!344058 rules!3820))))) (toChars!10089 (transformation!7554 r!4097))) t!344194) tb!249659))

(declare-fun result!304108 () Bool)

(assert (= result!304108 result!303994))

(assert (=> d!1231498 t!344194))

(declare-fun t!344196 () Bool)

(declare-fun tb!249661 () Bool)

(assert (=> (and b!4168165 (= (toChars!10089 (transformation!7554 (h!51047 (t!344058 (t!344058 rules!3820))))) (toChars!10089 (transformation!7554 (rule!10606 lt!1484287)))) t!344196) tb!249661))

(declare-fun result!304110 () Bool)

(assert (= result!304110 result!304002))

(assert (=> b!4167498 t!344196))

(declare-fun tb!249663 () Bool)

(declare-fun t!344198 () Bool)

(assert (=> (and b!4168165 (= (toChars!10089 (transformation!7554 (h!51047 (t!344058 (t!344058 rules!3820))))) (toChars!10089 (transformation!7554 (rule!10606 (_1!24899 (get!14828 lt!1484334)))))) t!344198) tb!249663))

(declare-fun result!304112 () Bool)

(assert (= result!304112 result!304052))

(assert (=> d!1231650 t!344198))

(declare-fun t!344200 () Bool)

(declare-fun tb!249665 () Bool)

(assert (=> (and b!4168165 (= (toChars!10089 (transformation!7554 (h!51047 (t!344058 (t!344058 rules!3820))))) (toChars!10089 (transformation!7554 r!4097))) t!344200) tb!249665))

(declare-fun result!304114 () Bool)

(assert (= result!304114 result!304060))

(assert (=> d!1231730 t!344200))

(declare-fun b_and!325251 () Bool)

(declare-fun tp!1273055 () Bool)

(assert (=> b!4168165 (= tp!1273055 (and (=> t!344194 result!304108) (=> t!344196 result!304110) (=> t!344198 result!304112) (=> t!344200 result!304114) b_and!325251))))

(declare-fun e!2587552 () Bool)

(assert (=> b!4168165 (= e!2587552 (and tp!1273056 tp!1273055))))

(declare-fun e!2587555 () Bool)

(declare-fun tp!1273054 () Bool)

(declare-fun b!4168164 () Bool)

(assert (=> b!4168164 (= e!2587555 (and tp!1273054 (inv!60148 (tag!8418 (h!51047 (t!344058 (t!344058 rules!3820))))) (inv!60151 (transformation!7554 (h!51047 (t!344058 (t!344058 rules!3820))))) e!2587552))))

(declare-fun b!4168163 () Bool)

(declare-fun e!2587553 () Bool)

(declare-fun tp!1273053 () Bool)

(assert (=> b!4168163 (= e!2587553 (and e!2587555 tp!1273053))))

(assert (=> b!4167542 (= tp!1272904 e!2587553)))

(assert (= b!4168164 b!4168165))

(assert (= b!4168163 b!4168164))

(assert (= (and b!4167542 ((_ is Cons!45627) (t!344058 (t!344058 rules!3820)))) b!4168163))

(declare-fun m!4759517 () Bool)

(assert (=> b!4168164 m!4759517))

(declare-fun m!4759519 () Bool)

(assert (=> b!4168164 m!4759519))

(declare-fun b!4168166 () Bool)

(declare-fun e!2587556 () Bool)

(declare-fun tp!1273057 () Bool)

(assert (=> b!4168166 (= e!2587556 (and tp_is_empty!21881 tp!1273057))))

(assert (=> b!4167546 (= tp!1272909 e!2587556)))

(assert (= (and b!4167546 ((_ is Cons!45625) (t!344056 (t!344056 p!2942)))) b!4168166))

(declare-fun e!2587558 () Bool)

(declare-fun b!4168167 () Bool)

(declare-fun tp!1273059 () Bool)

(declare-fun tp!1273060 () Bool)

(assert (=> b!4168167 (= e!2587558 (and (inv!60155 (left!34016 (c!712502 (dynLambda!19557 (toChars!10089 (transformation!7554 r!4097)) (dynLambda!19553 (toValue!10230 (transformation!7554 r!4097)) lt!1484286))))) tp!1273060 (inv!60155 (right!34346 (c!712502 (dynLambda!19557 (toChars!10089 (transformation!7554 r!4097)) (dynLambda!19553 (toValue!10230 (transformation!7554 r!4097)) lt!1484286))))) tp!1273059))))

(declare-fun b!4168169 () Bool)

(declare-fun e!2587557 () Bool)

(declare-fun tp!1273058 () Bool)

(assert (=> b!4168169 (= e!2587557 tp!1273058)))

(declare-fun b!4168168 () Bool)

(assert (=> b!4168168 (= e!2587558 (and (inv!60162 (xs!17071 (c!712502 (dynLambda!19557 (toChars!10089 (transformation!7554 r!4097)) (dynLambda!19553 (toValue!10230 (transformation!7554 r!4097)) lt!1484286))))) e!2587557))))

(assert (=> b!4167445 (= tp!1272871 (and (inv!60155 (c!712502 (dynLambda!19557 (toChars!10089 (transformation!7554 r!4097)) (dynLambda!19553 (toValue!10230 (transformation!7554 r!4097)) lt!1484286)))) e!2587558))))

(assert (= (and b!4167445 ((_ is Node!13765) (c!712502 (dynLambda!19557 (toChars!10089 (transformation!7554 r!4097)) (dynLambda!19553 (toValue!10230 (transformation!7554 r!4097)) lt!1484286))))) b!4168167))

(assert (= b!4168168 b!4168169))

(assert (= (and b!4167445 ((_ is Leaf!21285) (c!712502 (dynLambda!19557 (toChars!10089 (transformation!7554 r!4097)) (dynLambda!19553 (toValue!10230 (transformation!7554 r!4097)) lt!1484286))))) b!4168168))

(declare-fun m!4759521 () Bool)

(assert (=> b!4168167 m!4759521))

(declare-fun m!4759523 () Bool)

(assert (=> b!4168167 m!4759523))

(declare-fun m!4759525 () Bool)

(assert (=> b!4168168 m!4759525))

(assert (=> b!4167445 m!4758867))

(declare-fun b!4168173 () Bool)

(declare-fun e!2587559 () Bool)

(declare-fun tp!1273061 () Bool)

(declare-fun tp!1273065 () Bool)

(assert (=> b!4168173 (= e!2587559 (and tp!1273061 tp!1273065))))

(assert (=> b!4167550 (= tp!1272910 e!2587559)))

(declare-fun b!4168170 () Bool)

(assert (=> b!4168170 (= e!2587559 tp_is_empty!21881)))

(declare-fun b!4168172 () Bool)

(declare-fun tp!1273062 () Bool)

(assert (=> b!4168172 (= e!2587559 tp!1273062)))

(declare-fun b!4168171 () Bool)

(declare-fun tp!1273064 () Bool)

(declare-fun tp!1273063 () Bool)

(assert (=> b!4168171 (= e!2587559 (and tp!1273064 tp!1273063))))

(assert (= (and b!4167550 ((_ is ElementMatch!12459) (regOne!25431 (regex!7554 (h!51047 rules!3820))))) b!4168170))

(assert (= (and b!4167550 ((_ is Concat!20244) (regOne!25431 (regex!7554 (h!51047 rules!3820))))) b!4168171))

(assert (= (and b!4167550 ((_ is Star!12459) (regOne!25431 (regex!7554 (h!51047 rules!3820))))) b!4168172))

(assert (= (and b!4167550 ((_ is Union!12459) (regOne!25431 (regex!7554 (h!51047 rules!3820))))) b!4168173))

(declare-fun b!4168177 () Bool)

(declare-fun e!2587560 () Bool)

(declare-fun tp!1273066 () Bool)

(declare-fun tp!1273070 () Bool)

(assert (=> b!4168177 (= e!2587560 (and tp!1273066 tp!1273070))))

(assert (=> b!4167550 (= tp!1272914 e!2587560)))

(declare-fun b!4168174 () Bool)

(assert (=> b!4168174 (= e!2587560 tp_is_empty!21881)))

(declare-fun b!4168176 () Bool)

(declare-fun tp!1273067 () Bool)

(assert (=> b!4168176 (= e!2587560 tp!1273067)))

(declare-fun b!4168175 () Bool)

(declare-fun tp!1273069 () Bool)

(declare-fun tp!1273068 () Bool)

(assert (=> b!4168175 (= e!2587560 (and tp!1273069 tp!1273068))))

(assert (= (and b!4167550 ((_ is ElementMatch!12459) (regTwo!25431 (regex!7554 (h!51047 rules!3820))))) b!4168174))

(assert (= (and b!4167550 ((_ is Concat!20244) (regTwo!25431 (regex!7554 (h!51047 rules!3820))))) b!4168175))

(assert (= (and b!4167550 ((_ is Star!12459) (regTwo!25431 (regex!7554 (h!51047 rules!3820))))) b!4168176))

(assert (= (and b!4167550 ((_ is Union!12459) (regTwo!25431 (regex!7554 (h!51047 rules!3820))))) b!4168177))

(declare-fun b!4168181 () Bool)

(declare-fun e!2587561 () Bool)

(declare-fun tp!1273071 () Bool)

(declare-fun tp!1273075 () Bool)

(assert (=> b!4168181 (= e!2587561 (and tp!1273071 tp!1273075))))

(assert (=> b!4167543 (= tp!1272905 e!2587561)))

(declare-fun b!4168178 () Bool)

(assert (=> b!4168178 (= e!2587561 tp_is_empty!21881)))

(declare-fun b!4168180 () Bool)

(declare-fun tp!1273072 () Bool)

(assert (=> b!4168180 (= e!2587561 tp!1273072)))

(declare-fun b!4168179 () Bool)

(declare-fun tp!1273074 () Bool)

(declare-fun tp!1273073 () Bool)

(assert (=> b!4168179 (= e!2587561 (and tp!1273074 tp!1273073))))

(assert (= (and b!4167543 ((_ is ElementMatch!12459) (regex!7554 (h!51047 (t!344058 rules!3820))))) b!4168178))

(assert (= (and b!4167543 ((_ is Concat!20244) (regex!7554 (h!51047 (t!344058 rules!3820))))) b!4168179))

(assert (= (and b!4167543 ((_ is Star!12459) (regex!7554 (h!51047 (t!344058 rules!3820))))) b!4168180))

(assert (= (and b!4167543 ((_ is Union!12459) (regex!7554 (h!51047 (t!344058 rules!3820))))) b!4168181))

(declare-fun b!4168182 () Bool)

(declare-fun e!2587562 () Bool)

(declare-fun tp!1273076 () Bool)

(assert (=> b!4168182 (= e!2587562 (and tp_is_empty!21881 tp!1273076))))

(assert (=> b!4167515 (= tp!1272875 e!2587562)))

(assert (= (and b!4167515 ((_ is Cons!45625) (t!344056 (t!344056 input!3316)))) b!4168182))

(declare-fun b!4168186 () Bool)

(declare-fun e!2587563 () Bool)

(declare-fun tp!1273077 () Bool)

(declare-fun tp!1273081 () Bool)

(assert (=> b!4168186 (= e!2587563 (and tp!1273077 tp!1273081))))

(assert (=> b!4167533 (= tp!1272891 e!2587563)))

(declare-fun b!4168183 () Bool)

(assert (=> b!4168183 (= e!2587563 tp_is_empty!21881)))

(declare-fun b!4168185 () Bool)

(declare-fun tp!1273078 () Bool)

(assert (=> b!4168185 (= e!2587563 tp!1273078)))

(declare-fun b!4168184 () Bool)

(declare-fun tp!1273080 () Bool)

(declare-fun tp!1273079 () Bool)

(assert (=> b!4168184 (= e!2587563 (and tp!1273080 tp!1273079))))

(assert (= (and b!4167533 ((_ is ElementMatch!12459) (regOne!25431 (regex!7554 r!4097)))) b!4168183))

(assert (= (and b!4167533 ((_ is Concat!20244) (regOne!25431 (regex!7554 r!4097)))) b!4168184))

(assert (= (and b!4167533 ((_ is Star!12459) (regOne!25431 (regex!7554 r!4097)))) b!4168185))

(assert (= (and b!4167533 ((_ is Union!12459) (regOne!25431 (regex!7554 r!4097)))) b!4168186))

(declare-fun b!4168190 () Bool)

(declare-fun e!2587564 () Bool)

(declare-fun tp!1273082 () Bool)

(declare-fun tp!1273086 () Bool)

(assert (=> b!4168190 (= e!2587564 (and tp!1273082 tp!1273086))))

(assert (=> b!4167533 (= tp!1272895 e!2587564)))

(declare-fun b!4168187 () Bool)

(assert (=> b!4168187 (= e!2587564 tp_is_empty!21881)))

(declare-fun b!4168189 () Bool)

(declare-fun tp!1273083 () Bool)

(assert (=> b!4168189 (= e!2587564 tp!1273083)))

(declare-fun b!4168188 () Bool)

(declare-fun tp!1273085 () Bool)

(declare-fun tp!1273084 () Bool)

(assert (=> b!4168188 (= e!2587564 (and tp!1273085 tp!1273084))))

(assert (= (and b!4167533 ((_ is ElementMatch!12459) (regTwo!25431 (regex!7554 r!4097)))) b!4168187))

(assert (= (and b!4167533 ((_ is Concat!20244) (regTwo!25431 (regex!7554 r!4097)))) b!4168188))

(assert (= (and b!4167533 ((_ is Star!12459) (regTwo!25431 (regex!7554 r!4097)))) b!4168189))

(assert (= (and b!4167533 ((_ is Union!12459) (regTwo!25431 (regex!7554 r!4097)))) b!4168190))

(declare-fun b!4168194 () Bool)

(declare-fun e!2587565 () Bool)

(declare-fun tp!1273087 () Bool)

(declare-fun tp!1273091 () Bool)

(assert (=> b!4168194 (= e!2587565 (and tp!1273087 tp!1273091))))

(assert (=> b!4167528 (= tp!1272887 e!2587565)))

(declare-fun b!4168191 () Bool)

(assert (=> b!4168191 (= e!2587565 tp_is_empty!21881)))

(declare-fun b!4168193 () Bool)

(declare-fun tp!1273088 () Bool)

(assert (=> b!4168193 (= e!2587565 tp!1273088)))

(declare-fun b!4168192 () Bool)

(declare-fun tp!1273090 () Bool)

(declare-fun tp!1273089 () Bool)

(assert (=> b!4168192 (= e!2587565 (and tp!1273090 tp!1273089))))

(assert (= (and b!4167528 ((_ is ElementMatch!12459) (reg!12788 (regex!7554 rBis!161)))) b!4168191))

(assert (= (and b!4167528 ((_ is Concat!20244) (reg!12788 (regex!7554 rBis!161)))) b!4168192))

(assert (= (and b!4167528 ((_ is Star!12459) (reg!12788 (regex!7554 rBis!161)))) b!4168193))

(assert (= (and b!4167528 ((_ is Union!12459) (reg!12788 (regex!7554 rBis!161)))) b!4168194))

(declare-fun b!4168198 () Bool)

(declare-fun e!2587566 () Bool)

(declare-fun tp!1273092 () Bool)

(declare-fun tp!1273096 () Bool)

(assert (=> b!4168198 (= e!2587566 (and tp!1273092 tp!1273096))))

(assert (=> b!4167527 (= tp!1272889 e!2587566)))

(declare-fun b!4168195 () Bool)

(assert (=> b!4168195 (= e!2587566 tp_is_empty!21881)))

(declare-fun b!4168197 () Bool)

(declare-fun tp!1273093 () Bool)

(assert (=> b!4168197 (= e!2587566 tp!1273093)))

(declare-fun b!4168196 () Bool)

(declare-fun tp!1273095 () Bool)

(declare-fun tp!1273094 () Bool)

(assert (=> b!4168196 (= e!2587566 (and tp!1273095 tp!1273094))))

(assert (= (and b!4167527 ((_ is ElementMatch!12459) (regOne!25430 (regex!7554 rBis!161)))) b!4168195))

(assert (= (and b!4167527 ((_ is Concat!20244) (regOne!25430 (regex!7554 rBis!161)))) b!4168196))

(assert (= (and b!4167527 ((_ is Star!12459) (regOne!25430 (regex!7554 rBis!161)))) b!4168197))

(assert (= (and b!4167527 ((_ is Union!12459) (regOne!25430 (regex!7554 rBis!161)))) b!4168198))

(declare-fun b!4168202 () Bool)

(declare-fun e!2587567 () Bool)

(declare-fun tp!1273097 () Bool)

(declare-fun tp!1273101 () Bool)

(assert (=> b!4168202 (= e!2587567 (and tp!1273097 tp!1273101))))

(assert (=> b!4167527 (= tp!1272888 e!2587567)))

(declare-fun b!4168199 () Bool)

(assert (=> b!4168199 (= e!2587567 tp_is_empty!21881)))

(declare-fun b!4168201 () Bool)

(declare-fun tp!1273098 () Bool)

(assert (=> b!4168201 (= e!2587567 tp!1273098)))

(declare-fun b!4168200 () Bool)

(declare-fun tp!1273100 () Bool)

(declare-fun tp!1273099 () Bool)

(assert (=> b!4168200 (= e!2587567 (and tp!1273100 tp!1273099))))

(assert (= (and b!4167527 ((_ is ElementMatch!12459) (regTwo!25430 (regex!7554 rBis!161)))) b!4168199))

(assert (= (and b!4167527 ((_ is Concat!20244) (regTwo!25430 (regex!7554 rBis!161)))) b!4168200))

(assert (= (and b!4167527 ((_ is Star!12459) (regTwo!25430 (regex!7554 rBis!161)))) b!4168201))

(assert (= (and b!4167527 ((_ is Union!12459) (regTwo!25430 (regex!7554 rBis!161)))) b!4168202))

(declare-fun b!4168206 () Bool)

(declare-fun e!2587568 () Bool)

(declare-fun tp!1273102 () Bool)

(declare-fun tp!1273106 () Bool)

(assert (=> b!4168206 (= e!2587568 (and tp!1273102 tp!1273106))))

(assert (=> b!4167532 (= tp!1272892 e!2587568)))

(declare-fun b!4168203 () Bool)

(assert (=> b!4168203 (= e!2587568 tp_is_empty!21881)))

(declare-fun b!4168205 () Bool)

(declare-fun tp!1273103 () Bool)

(assert (=> b!4168205 (= e!2587568 tp!1273103)))

(declare-fun b!4168204 () Bool)

(declare-fun tp!1273105 () Bool)

(declare-fun tp!1273104 () Bool)

(assert (=> b!4168204 (= e!2587568 (and tp!1273105 tp!1273104))))

(assert (= (and b!4167532 ((_ is ElementMatch!12459) (reg!12788 (regex!7554 r!4097)))) b!4168203))

(assert (= (and b!4167532 ((_ is Concat!20244) (reg!12788 (regex!7554 r!4097)))) b!4168204))

(assert (= (and b!4167532 ((_ is Star!12459) (reg!12788 (regex!7554 r!4097)))) b!4168205))

(assert (= (and b!4167532 ((_ is Union!12459) (reg!12788 (regex!7554 r!4097)))) b!4168206))

(declare-fun b!4168210 () Bool)

(declare-fun e!2587569 () Bool)

(declare-fun tp!1273107 () Bool)

(declare-fun tp!1273111 () Bool)

(assert (=> b!4168210 (= e!2587569 (and tp!1273107 tp!1273111))))

(assert (=> b!4167531 (= tp!1272894 e!2587569)))

(declare-fun b!4168207 () Bool)

(assert (=> b!4168207 (= e!2587569 tp_is_empty!21881)))

(declare-fun b!4168209 () Bool)

(declare-fun tp!1273108 () Bool)

(assert (=> b!4168209 (= e!2587569 tp!1273108)))

(declare-fun b!4168208 () Bool)

(declare-fun tp!1273110 () Bool)

(declare-fun tp!1273109 () Bool)

(assert (=> b!4168208 (= e!2587569 (and tp!1273110 tp!1273109))))

(assert (= (and b!4167531 ((_ is ElementMatch!12459) (regOne!25430 (regex!7554 r!4097)))) b!4168207))

(assert (= (and b!4167531 ((_ is Concat!20244) (regOne!25430 (regex!7554 r!4097)))) b!4168208))

(assert (= (and b!4167531 ((_ is Star!12459) (regOne!25430 (regex!7554 r!4097)))) b!4168209))

(assert (= (and b!4167531 ((_ is Union!12459) (regOne!25430 (regex!7554 r!4097)))) b!4168210))

(declare-fun b!4168214 () Bool)

(declare-fun e!2587570 () Bool)

(declare-fun tp!1273112 () Bool)

(declare-fun tp!1273116 () Bool)

(assert (=> b!4168214 (= e!2587570 (and tp!1273112 tp!1273116))))

(assert (=> b!4167531 (= tp!1272893 e!2587570)))

(declare-fun b!4168211 () Bool)

(assert (=> b!4168211 (= e!2587570 tp_is_empty!21881)))

(declare-fun b!4168213 () Bool)

(declare-fun tp!1273113 () Bool)

(assert (=> b!4168213 (= e!2587570 tp!1273113)))

(declare-fun b!4168212 () Bool)

(declare-fun tp!1273115 () Bool)

(declare-fun tp!1273114 () Bool)

(assert (=> b!4168212 (= e!2587570 (and tp!1273115 tp!1273114))))

(assert (= (and b!4167531 ((_ is ElementMatch!12459) (regTwo!25430 (regex!7554 r!4097)))) b!4168211))

(assert (= (and b!4167531 ((_ is Concat!20244) (regTwo!25430 (regex!7554 r!4097)))) b!4168212))

(assert (= (and b!4167531 ((_ is Star!12459) (regTwo!25430 (regex!7554 r!4097)))) b!4168213))

(assert (= (and b!4167531 ((_ is Union!12459) (regTwo!25430 (regex!7554 r!4097)))) b!4168214))

(declare-fun b_lambda!122425 () Bool)

(assert (= b_lambda!122405 (or (and b!4168165 b_free!120399 (= (toValue!10230 (transformation!7554 (h!51047 (t!344058 (t!344058 rules!3820))))) (toValue!10230 (transformation!7554 r!4097)))) (and b!4167177 b_free!120379 (= (toValue!10230 (transformation!7554 (h!51047 rules!3820))) (toValue!10230 (transformation!7554 r!4097)))) (and b!4167171 b_free!120383 (= (toValue!10230 (transformation!7554 rBis!161)) (toValue!10230 (transformation!7554 r!4097)))) (and b!4167163 b_free!120375) (and b!4167544 b_free!120391 (= (toValue!10230 (transformation!7554 (h!51047 (t!344058 rules!3820)))) (toValue!10230 (transformation!7554 r!4097)))) b_lambda!122425)))

(declare-fun b_lambda!122427 () Bool)

(assert (= b_lambda!122379 (or (and b!4167544 b_free!120393 (= (toChars!10089 (transformation!7554 (h!51047 (t!344058 rules!3820)))) (toChars!10089 (transformation!7554 (rule!10606 lt!1484287))))) (and b!4168165 b_free!120401 (= (toChars!10089 (transformation!7554 (h!51047 (t!344058 (t!344058 rules!3820))))) (toChars!10089 (transformation!7554 (rule!10606 lt!1484287))))) (and b!4167163 b_free!120377 (= (toChars!10089 (transformation!7554 r!4097)) (toChars!10089 (transformation!7554 (rule!10606 lt!1484287))))) (and b!4167177 b_free!120381 (= (toChars!10089 (transformation!7554 (h!51047 rules!3820))) (toChars!10089 (transformation!7554 (rule!10606 lt!1484287))))) (and b!4167171 b_free!120385 (= (toChars!10089 (transformation!7554 rBis!161)) (toChars!10089 (transformation!7554 (rule!10606 lt!1484287))))) b_lambda!122427)))

(declare-fun b_lambda!122429 () Bool)

(assert (= b_lambda!122403 (or (and b!4167163 b_free!120377) (and b!4167171 b_free!120385 (= (toChars!10089 (transformation!7554 rBis!161)) (toChars!10089 (transformation!7554 r!4097)))) (and b!4168165 b_free!120401 (= (toChars!10089 (transformation!7554 (h!51047 (t!344058 (t!344058 rules!3820))))) (toChars!10089 (transformation!7554 r!4097)))) (and b!4167544 b_free!120393 (= (toChars!10089 (transformation!7554 (h!51047 (t!344058 rules!3820)))) (toChars!10089 (transformation!7554 r!4097)))) (and b!4167177 b_free!120381 (= (toChars!10089 (transformation!7554 (h!51047 rules!3820))) (toChars!10089 (transformation!7554 r!4097)))) b_lambda!122429)))

(declare-fun b_lambda!122431 () Bool)

(assert (= b_lambda!122397 (or d!1231498 b_lambda!122431)))

(declare-fun bs!595969 () Bool)

(declare-fun d!1231814 () Bool)

(assert (= bs!595969 (and d!1231814 d!1231498)))

(assert (=> bs!595969 (= (dynLambda!19558 lambda!129177 lt!1484286) (= (list!16515 (dynLambda!19557 (toChars!10089 (transformation!7554 r!4097)) (dynLambda!19553 (toValue!10230 (transformation!7554 r!4097)) lt!1484286))) (list!16515 lt!1484286)))))

(declare-fun b_lambda!122435 () Bool)

(assert (=> (not b_lambda!122435) (not bs!595969)))

(assert (=> bs!595969 t!344194))

(declare-fun b_and!325253 () Bool)

(assert (= b_and!325251 (and (=> t!344194 result!304108) b_and!325253)))

(assert (=> bs!595969 t!344094))

(declare-fun b_and!325255 () Bool)

(assert (= b_and!325197 (and (=> t!344094 result!304000) b_and!325255)))

(assert (=> bs!595969 t!344092))

(declare-fun b_and!325257 () Bool)

(assert (= b_and!325195 (and (=> t!344092 result!303998) b_and!325257)))

(assert (=> bs!595969 t!344104))

(declare-fun b_and!325259 () Bool)

(assert (= b_and!325199 (and (=> t!344104 result!304016) b_and!325259)))

(assert (=> bs!595969 t!344090))

(declare-fun b_and!325261 () Bool)

(assert (= b_and!325193 (and (=> t!344090 result!303994) b_and!325261)))

(declare-fun b_lambda!122437 () Bool)

(assert (=> (not b_lambda!122437) (not bs!595969)))

(assert (=> bs!595969 t!344070))

(declare-fun b_and!325263 () Bool)

(assert (= b_and!325245 (and (=> t!344070 result!303966) b_and!325263)))

(assert (=> bs!595969 t!344188))

(declare-fun b_and!325265 () Bool)

(assert (= b_and!325249 (and (=> t!344188 result!304102) b_and!325265)))

(assert (=> bs!595969 t!344066))

(declare-fun b_and!325267 () Bool)

(assert (= b_and!325241 (and (=> t!344066 result!303960) b_and!325267)))

(assert (=> bs!595969 t!344102))

(declare-fun b_and!325269 () Bool)

(assert (= b_and!325247 (and (=> t!344102 result!304014) b_and!325269)))

(assert (=> bs!595969 t!344068))

(declare-fun b_and!325271 () Bool)

(assert (= b_and!325243 (and (=> t!344068 result!303964) b_and!325271)))

(assert (=> bs!595969 m!4758795))

(assert (=> bs!595969 m!4758871))

(assert (=> bs!595969 m!4758873))

(assert (=> bs!595969 m!4758875))

(assert (=> bs!595969 m!4758795))

(assert (=> bs!595969 m!4758873))

(assert (=> d!1231644 d!1231814))

(declare-fun b_lambda!122433 () Bool)

(assert (= b_lambda!122407 (or (and b!4168165 b_free!120399 (= (toValue!10230 (transformation!7554 (h!51047 (t!344058 (t!344058 rules!3820))))) (toValue!10230 (transformation!7554 r!4097)))) (and b!4167177 b_free!120379 (= (toValue!10230 (transformation!7554 (h!51047 rules!3820))) (toValue!10230 (transformation!7554 r!4097)))) (and b!4167171 b_free!120383 (= (toValue!10230 (transformation!7554 rBis!161)) (toValue!10230 (transformation!7554 r!4097)))) (and b!4167163 b_free!120375) (and b!4167544 b_free!120391 (= (toValue!10230 (transformation!7554 (h!51047 (t!344058 rules!3820)))) (toValue!10230 (transformation!7554 r!4097)))) b_lambda!122433)))

(check-sat (not d!1231730) (not b!4167683) (not b!4168124) (not bm!291114) (not d!1231762) (not b!4167901) (not b!4167699) (not b!4168048) (not d!1231650) (not b!4167697) (not b!4168134) (not d!1231624) (not b_next!121103) (not b!4168210) b_and!325253 b_and!325259 (not bm!291115) (not d!1231784) (not b!4168033) (not b!4167717) (not b!4168168) (not b!4167998) (not b!4167720) (not d!1231646) (not b_lambda!122383) (not b_lambda!122425) (not d!1231772) (not b!4168177) (not b_lambda!122423) (not b!4168152) (not d!1231778) (not b!4167679) b_and!325265 (not b_lambda!122427) (not b!4168214) (not d!1231768) (not d!1231800) (not b_next!121095) (not b!4168206) (not b!4168061) (not b!4168182) (not b!4168204) (not b!4167500) (not b!4168098) (not b!4168181) (not d!1231780) (not b!4168000) (not b!4167894) (not b!4168184) (not d!1231640) (not b!4168067) (not b!4168149) (not b!4168049) (not d!1231754) (not b!4168162) (not d!1231798) (not b!4168164) (not b!4167722) (not b!4168186) (not d!1231802) (not bm!291128) (not b!4168202) (not b!4168157) (not b!4168208) (not b!4167669) (not d!1231658) (not b_next!121083) (not b!4168008) (not b_next!121079) (not b!4168212) (not b_next!121085) (not bm!291131) (not b!4167903) (not b!4168074) (not b!4168057) (not d!1231796) (not b!4168053) (not d!1231782) b_and!325267 (not bm!291059) (not d!1231734) (not b!4168158) (not b!4168209) (not b_lambda!122431) (not b!4168197) (not b!4168051) (not tb!249645) (not d!1231638) (not tb!249623) (not b!4168180) (not b!4168132) (not b!4167716) (not b!4168163) (not b!4168175) (not b!4168069) (not b!4168144) (not d!1231644) (not b!4168150) (not b!4167684) b_and!325255 (not b!4168121) (not bm!291119) (not b!4168160) (not b!4168200) (not bm!291118) (not b!4168143) (not b!4168188) b_and!325269 (not b!4167907) (not b!4167445) (not b!4168064) tp_is_empty!21881 (not b!4168156) (not b!4167710) (not b!4168185) (not d!1231774) (not b!4167727) (not b!4168145) (not bm!291117) (not bm!291143) (not b_lambda!122385) (not b!4168205) (not d!1231736) (not b_next!121097) (not b!4168192) (not b_next!121105) (not b_lambda!122433) (not b!4168171) (not b_lambda!122399) (not b!4168106) (not b!4167708) (not b!4168154) (not bm!291140) (not d!1231752) (not d!1231804) (not b!4167693) (not d!1231766) (not b_next!121089) (not b!4168058) (not b!4167902) (not b!4168065) (not b!4168198) (not d!1231616) (not b!4168153) b_and!325271 (not b!4167718) (not b!4167695) (not tb!249615) (not b!4167694) (not tb!249607) (not b!4168190) (not b!4168194) (not b_lambda!122437) (not b!4168161) (not bm!291116) (not b!4168172) (not bm!291120) (not bs!595969) (not b!4167680) (not b!4168173) (not b!4168176) (not d!1231648) (not d!1231740) (not d!1231744) (not b_lambda!122429) (not b!4168169) (not b!4168196) (not b!4168148) (not b!4168059) (not b!4168129) (not d!1231750) (not b!4168044) (not d!1231642) (not b_next!121087) (not b!4168001) (not b!4168010) (not b!4167987) (not b!4168167) (not b!4168046) (not b!4168166) (not d!1231662) (not bm!291058) (not b!4168009) (not b!4167909) (not b!4168179) (not d!1231628) (not b!4167686) (not b!4168201) b_and!325263 (not b_lambda!122435) (not b!4167706) (not d!1231808) (not b!4167691) (not b!4167688) (not b!4168193) (not b!4167704) (not b!4168123) (not b!4168133) (not b!4168063) (not b!4168130) (not b_next!121081) (not b!4168109) b_and!325257 (not d!1231664) (not b_lambda!122381) (not bm!291129) b_and!325261 (not b!4168189) (not b!4168146) (not b!4168213) (not bm!291121) (not b!4167687))
(check-sat (not b_next!121103) b_and!325265 (not b_next!121095) (not b_next!121083) b_and!325267 (not b_next!121089) b_and!325271 (not b_next!121087) b_and!325263 b_and!325261 b_and!325253 b_and!325259 (not b_next!121079) (not b_next!121085) b_and!325255 b_and!325269 (not b_next!121097) (not b_next!121105) (not b_next!121081) b_and!325257)
