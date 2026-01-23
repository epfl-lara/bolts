; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!388616 () Bool)

(assert start!388616)

(declare-fun b!4101491 () Bool)

(declare-fun b_free!114913 () Bool)

(declare-fun b_next!115617 () Bool)

(assert (=> b!4101491 (= b_free!114913 (not b_next!115617))))

(declare-fun tp!1241999 () Bool)

(declare-fun b_and!316727 () Bool)

(assert (=> b!4101491 (= tp!1241999 b_and!316727)))

(declare-fun b_free!114915 () Bool)

(declare-fun b_next!115619 () Bool)

(assert (=> b!4101491 (= b_free!114915 (not b_next!115619))))

(declare-fun tp!1241998 () Bool)

(declare-fun b_and!316729 () Bool)

(assert (=> b!4101491 (= tp!1241998 b_and!316729)))

(declare-fun b!4101498 () Bool)

(declare-fun b_free!114917 () Bool)

(declare-fun b_next!115621 () Bool)

(assert (=> b!4101498 (= b_free!114917 (not b_next!115621))))

(declare-fun tp!1242002 () Bool)

(declare-fun b_and!316731 () Bool)

(assert (=> b!4101498 (= tp!1242002 b_and!316731)))

(declare-fun b_free!114919 () Bool)

(declare-fun b_next!115623 () Bool)

(assert (=> b!4101498 (= b_free!114919 (not b_next!115623))))

(declare-fun tp!1242004 () Bool)

(declare-fun b_and!316733 () Bool)

(assert (=> b!4101498 (= tp!1242004 b_and!316733)))

(declare-fun e!2545331 () Bool)

(assert (=> b!4101491 (= e!2545331 (and tp!1241999 tp!1241998))))

(declare-fun e!2545324 () Bool)

(declare-fun b!4101493 () Bool)

(declare-datatypes ((String!50629 0))(
  ( (String!50630 (value!224276 String)) )
))
(declare-datatypes ((C!24288 0))(
  ( (C!24289 (val!14254 Int)) )
))
(declare-datatypes ((List!44186 0))(
  ( (Nil!44062) (Cons!44062 (h!49482 C!24288) (t!339843 List!44186)) )
))
(declare-datatypes ((IArray!26719 0))(
  ( (IArray!26720 (innerList!13417 List!44186)) )
))
(declare-datatypes ((Conc!13357 0))(
  ( (Node!13357 (left!33092 Conc!13357) (right!33422 Conc!13357) (csize!26944 Int) (cheight!13568 Int)) (Leaf!20645 (xs!16663 IArray!26719) (csize!26945 Int)) (Empty!13357) )
))
(declare-datatypes ((List!44187 0))(
  ( (Nil!44063) (Cons!44063 (h!49483 (_ BitVec 16)) (t!339844 List!44187)) )
))
(declare-datatypes ((Regex!12051 0))(
  ( (ElementMatch!12051 (c!706514 C!24288)) (Concat!19427 (regOne!24614 Regex!12051) (regTwo!24614 Regex!12051)) (EmptyExpr!12051) (Star!12051 (reg!12380 Regex!12051)) (EmptyLang!12051) (Union!12051 (regOne!24615 Regex!12051) (regTwo!24615 Regex!12051)) )
))
(declare-datatypes ((TokenValue!7376 0))(
  ( (FloatLiteralValue!14752 (text!52077 List!44187)) (TokenValueExt!7375 (__x!26969 Int)) (Broken!36880 (value!224277 List!44187)) (Object!7499) (End!7376) (Def!7376) (Underscore!7376) (Match!7376) (Else!7376) (Error!7376) (Case!7376) (If!7376) (Extends!7376) (Abstract!7376) (Class!7376) (Val!7376) (DelimiterValue!14752 (del!7436 List!44187)) (KeywordValue!7382 (value!224278 List!44187)) (CommentValue!14752 (value!224279 List!44187)) (WhitespaceValue!14752 (value!224280 List!44187)) (IndentationValue!7376 (value!224281 List!44187)) (String!50631) (Int32!7376) (Broken!36881 (value!224282 List!44187)) (Boolean!7377) (Unit!63578) (OperatorValue!7379 (op!7436 List!44187)) (IdentifierValue!14752 (value!224283 List!44187)) (IdentifierValue!14753 (value!224284 List!44187)) (WhitespaceValue!14753 (value!224285 List!44187)) (True!14752) (False!14752) (Broken!36882 (value!224286 List!44187)) (Broken!36883 (value!224287 List!44187)) (True!14753) (RightBrace!7376) (RightBracket!7376) (Colon!7376) (Null!7376) (Comma!7376) (LeftBracket!7376) (False!14753) (LeftBrace!7376) (ImaginaryLiteralValue!7376 (text!52078 List!44187)) (StringLiteralValue!22128 (value!224288 List!44187)) (EOFValue!7376 (value!224289 List!44187)) (IdentValue!7376 (value!224290 List!44187)) (DelimiterValue!14753 (value!224291 List!44187)) (DedentValue!7376 (value!224292 List!44187)) (NewLineValue!7376 (value!224293 List!44187)) (IntegerValue!22128 (value!224294 (_ BitVec 32)) (text!52079 List!44187)) (IntegerValue!22129 (value!224295 Int) (text!52080 List!44187)) (Times!7376) (Or!7376) (Equal!7376) (Minus!7376) (Broken!36884 (value!224296 List!44187)) (And!7376) (Div!7376) (LessEqual!7376) (Mod!7376) (Concat!19428) (Not!7376) (Plus!7376) (SpaceValue!7376 (value!224297 List!44187)) (IntegerValue!22130 (value!224298 Int) (text!52081 List!44187)) (StringLiteralValue!22129 (text!52082 List!44187)) (FloatLiteralValue!14753 (text!52083 List!44187)) (BytesLiteralValue!7376 (value!224299 List!44187)) (CommentValue!14753 (value!224300 List!44187)) (StringLiteralValue!22130 (value!224301 List!44187)) (ErrorTokenValue!7376 (msg!7437 List!44187)) )
))
(declare-datatypes ((BalanceConc!26308 0))(
  ( (BalanceConc!26309 (c!706515 Conc!13357)) )
))
(declare-datatypes ((TokenValueInjection!14180 0))(
  ( (TokenValueInjection!14181 (toValue!9754 Int) (toChars!9613 Int)) )
))
(declare-datatypes ((Rule!14092 0))(
  ( (Rule!14093 (regex!7146 Regex!12051) (tag!8006 String!50629) (isSeparator!7146 Bool) (transformation!7146 TokenValueInjection!14180)) )
))
(declare-datatypes ((List!44188 0))(
  ( (Nil!44064) (Cons!44064 (h!49484 Rule!14092) (t!339845 List!44188)) )
))
(declare-fun rTail!27 () List!44188)

(declare-fun tp!1242003 () Bool)

(declare-fun inv!58768 (String!50629) Bool)

(declare-fun inv!58770 (TokenValueInjection!14180) Bool)

(assert (=> b!4101493 (= e!2545324 (and tp!1242003 (inv!58768 (tag!8006 (h!49484 rTail!27))) (inv!58770 (transformation!7146 (h!49484 rTail!27))) e!2545331))))

(declare-fun b!4101494 () Bool)

(declare-fun e!2545326 () Bool)

(declare-datatypes ((LexerInterface!6735 0))(
  ( (LexerInterfaceExt!6732 (__x!26970 Int)) (Lexer!6733) )
))
(declare-fun thiss!26455 () LexerInterface!6735)

(declare-fun rulesValidInductive!2649 (LexerInterface!6735 List!44188) Bool)

(assert (=> b!4101494 (= e!2545326 (rulesValidInductive!2649 thiss!26455 rTail!27))))

(declare-fun b!4101495 () Bool)

(declare-fun e!2545330 () Bool)

(declare-fun e!2545332 () Bool)

(assert (=> b!4101495 (= e!2545330 e!2545332)))

(declare-fun res!1676857 () Bool)

(assert (=> b!4101495 (=> (not res!1676857) (not e!2545332))))

(declare-fun lt!1467005 () List!44188)

(declare-fun rulesInvariant!6078 (LexerInterface!6735 List!44188) Bool)

(assert (=> b!4101495 (= res!1676857 (rulesInvariant!6078 thiss!26455 lt!1467005))))

(declare-fun rHead!24 () Rule!14092)

(assert (=> b!4101495 (= lt!1467005 (Cons!44064 rHead!24 rTail!27))))

(declare-fun b!4101496 () Bool)

(declare-fun res!1676858 () Bool)

(assert (=> b!4101496 (=> (not res!1676858) (not e!2545332))))

(get-info :version)

(assert (=> b!4101496 (= res!1676858 ((_ is Cons!44064) rTail!27))))

(declare-fun b!4101497 () Bool)

(declare-fun res!1676859 () Bool)

(assert (=> b!4101497 (=> (not res!1676859) (not e!2545330))))

(declare-fun isEmpty!26351 (List!44188) Bool)

(assert (=> b!4101497 (= res!1676859 (not (isEmpty!26351 rTail!27)))))

(declare-fun e!2545325 () Bool)

(assert (=> b!4101498 (= e!2545325 (and tp!1242002 tp!1242004))))

(declare-fun b!4101499 () Bool)

(declare-fun e!2545323 () Bool)

(declare-fun tp!1242000 () Bool)

(assert (=> b!4101499 (= e!2545323 (and e!2545324 tp!1242000))))

(declare-fun b!4101500 () Bool)

(assert (=> b!4101500 (= e!2545332 (not e!2545326))))

(declare-fun res!1676861 () Bool)

(assert (=> b!4101500 (=> res!1676861 e!2545326)))

(assert (=> b!4101500 (= res!1676861 (not (isEmpty!26351 (t!339845 rTail!27))))))

(assert (=> b!4101500 (not (= (tag!8006 rHead!24) (tag!8006 (h!49484 rTail!27))))))

(declare-datatypes ((Unit!63579 0))(
  ( (Unit!63580) )
))
(declare-fun lt!1467003 () Unit!63579)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!22 (LexerInterface!6735 List!44188 Rule!14092 Rule!14092) Unit!63579)

(assert (=> b!4101500 (= lt!1467003 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!22 thiss!26455 lt!1467005 rHead!24 (h!49484 rTail!27)))))

(declare-datatypes ((List!44189 0))(
  ( (Nil!44065) (Cons!44065 (h!49485 String!50629) (t!339846 List!44189)) )
))
(declare-fun noDuplicateTag!2825 (LexerInterface!6735 List!44188 List!44189) Bool)

(assert (=> b!4101500 (noDuplicateTag!2825 thiss!26455 (Cons!44064 (h!49484 rTail!27) (Cons!44064 rHead!24 (t!339845 rTail!27))) Nil!44065)))

(declare-fun lt!1467004 () Unit!63579)

(declare-fun lemmaNoDuplicateCanReorder!24 (LexerInterface!6735 Rule!14092 Rule!14092 List!44188) Unit!63579)

(assert (=> b!4101500 (= lt!1467004 (lemmaNoDuplicateCanReorder!24 thiss!26455 rHead!24 (h!49484 rTail!27) (t!339845 rTail!27)))))

(declare-fun tp!1242001 () Bool)

(declare-fun b!4101492 () Bool)

(declare-fun e!2545329 () Bool)

(assert (=> b!4101492 (= e!2545329 (and tp!1242001 (inv!58768 (tag!8006 rHead!24)) (inv!58770 (transformation!7146 rHead!24)) e!2545325))))

(declare-fun res!1676860 () Bool)

(assert (=> start!388616 (=> (not res!1676860) (not e!2545330))))

(assert (=> start!388616 (= res!1676860 ((_ is Lexer!6733) thiss!26455))))

(assert (=> start!388616 e!2545330))

(assert (=> start!388616 true))

(assert (=> start!388616 e!2545323))

(assert (=> start!388616 e!2545329))

(assert (= (and start!388616 res!1676860) b!4101497))

(assert (= (and b!4101497 res!1676859) b!4101495))

(assert (= (and b!4101495 res!1676857) b!4101496))

(assert (= (and b!4101496 res!1676858) b!4101500))

(assert (= (and b!4101500 (not res!1676861)) b!4101494))

(assert (= b!4101493 b!4101491))

(assert (= b!4101499 b!4101493))

(assert (= (and start!388616 ((_ is Cons!44064) rTail!27)) b!4101499))

(assert (= b!4101492 b!4101498))

(assert (= start!388616 b!4101492))

(declare-fun m!4708171 () Bool)

(assert (=> b!4101493 m!4708171))

(declare-fun m!4708173 () Bool)

(assert (=> b!4101493 m!4708173))

(declare-fun m!4708175 () Bool)

(assert (=> b!4101495 m!4708175))

(declare-fun m!4708177 () Bool)

(assert (=> b!4101497 m!4708177))

(declare-fun m!4708179 () Bool)

(assert (=> b!4101492 m!4708179))

(declare-fun m!4708181 () Bool)

(assert (=> b!4101492 m!4708181))

(declare-fun m!4708183 () Bool)

(assert (=> b!4101500 m!4708183))

(declare-fun m!4708185 () Bool)

(assert (=> b!4101500 m!4708185))

(declare-fun m!4708187 () Bool)

(assert (=> b!4101500 m!4708187))

(declare-fun m!4708189 () Bool)

(assert (=> b!4101500 m!4708189))

(declare-fun m!4708191 () Bool)

(assert (=> b!4101494 m!4708191))

(check-sat b_and!316727 (not b_next!115623) (not b_next!115619) (not b!4101494) b_and!316729 b_and!316733 (not b!4101492) (not b!4101497) (not b_next!115617) (not b!4101495) (not b!4101500) (not b!4101499) (not b!4101493) (not b_next!115621) b_and!316731)
(check-sat b_and!316727 (not b_next!115623) (not b_next!115619) b_and!316729 b_and!316733 (not b_next!115617) (not b_next!115621) b_and!316731)
(get-model)

(declare-fun d!1217664 () Bool)

(declare-fun res!1676878 () Bool)

(declare-fun e!2545342 () Bool)

(assert (=> d!1217664 (=> (not res!1676878) (not e!2545342))))

(declare-fun rulesValid!2806 (LexerInterface!6735 List!44188) Bool)

(assert (=> d!1217664 (= res!1676878 (rulesValid!2806 thiss!26455 lt!1467005))))

(assert (=> d!1217664 (= (rulesInvariant!6078 thiss!26455 lt!1467005) e!2545342)))

(declare-fun b!4101510 () Bool)

(assert (=> b!4101510 (= e!2545342 (noDuplicateTag!2825 thiss!26455 lt!1467005 Nil!44065))))

(assert (= (and d!1217664 res!1676878) b!4101510))

(declare-fun m!4708205 () Bool)

(assert (=> d!1217664 m!4708205))

(declare-fun m!4708207 () Bool)

(assert (=> b!4101510 m!4708207))

(assert (=> b!4101495 d!1217664))

(declare-fun d!1217674 () Bool)

(assert (=> d!1217674 (= (isEmpty!26351 (t!339845 rTail!27)) ((_ is Nil!44064) (t!339845 rTail!27)))))

(assert (=> b!4101500 d!1217674))

(declare-fun d!1217676 () Bool)

(assert (=> d!1217676 (not (= (tag!8006 rHead!24) (tag!8006 (h!49484 rTail!27))))))

(declare-fun lt!1467011 () Unit!63579)

(declare-fun choose!25071 (LexerInterface!6735 List!44188 Rule!14092 Rule!14092) Unit!63579)

(assert (=> d!1217676 (= lt!1467011 (choose!25071 thiss!26455 lt!1467005 rHead!24 (h!49484 rTail!27)))))

(declare-fun contains!8823 (List!44188 Rule!14092) Bool)

(assert (=> d!1217676 (contains!8823 lt!1467005 rHead!24)))

(assert (=> d!1217676 (= (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!22 thiss!26455 lt!1467005 rHead!24 (h!49484 rTail!27)) lt!1467011)))

(declare-fun bs!593870 () Bool)

(assert (= bs!593870 d!1217676))

(declare-fun m!4708213 () Bool)

(assert (=> bs!593870 m!4708213))

(declare-fun m!4708215 () Bool)

(assert (=> bs!593870 m!4708215))

(assert (=> b!4101500 d!1217676))

(declare-fun d!1217680 () Bool)

(declare-fun res!1676889 () Bool)

(declare-fun e!2545353 () Bool)

(assert (=> d!1217680 (=> res!1676889 e!2545353)))

(assert (=> d!1217680 (= res!1676889 ((_ is Nil!44064) (Cons!44064 (h!49484 rTail!27) (Cons!44064 rHead!24 (t!339845 rTail!27)))))))

(assert (=> d!1217680 (= (noDuplicateTag!2825 thiss!26455 (Cons!44064 (h!49484 rTail!27) (Cons!44064 rHead!24 (t!339845 rTail!27))) Nil!44065) e!2545353)))

(declare-fun b!4101521 () Bool)

(declare-fun e!2545354 () Bool)

(assert (=> b!4101521 (= e!2545353 e!2545354)))

(declare-fun res!1676890 () Bool)

(assert (=> b!4101521 (=> (not res!1676890) (not e!2545354))))

(declare-fun contains!8824 (List!44189 String!50629) Bool)

(assert (=> b!4101521 (= res!1676890 (not (contains!8824 Nil!44065 (tag!8006 (h!49484 (Cons!44064 (h!49484 rTail!27) (Cons!44064 rHead!24 (t!339845 rTail!27))))))))))

(declare-fun b!4101522 () Bool)

(assert (=> b!4101522 (= e!2545354 (noDuplicateTag!2825 thiss!26455 (t!339845 (Cons!44064 (h!49484 rTail!27) (Cons!44064 rHead!24 (t!339845 rTail!27)))) (Cons!44065 (tag!8006 (h!49484 (Cons!44064 (h!49484 rTail!27) (Cons!44064 rHead!24 (t!339845 rTail!27))))) Nil!44065)))))

(assert (= (and d!1217680 (not res!1676889)) b!4101521))

(assert (= (and b!4101521 res!1676890) b!4101522))

(declare-fun m!4708221 () Bool)

(assert (=> b!4101521 m!4708221))

(declare-fun m!4708223 () Bool)

(assert (=> b!4101522 m!4708223))

(assert (=> b!4101500 d!1217680))

(declare-fun d!1217684 () Bool)

(assert (=> d!1217684 (noDuplicateTag!2825 thiss!26455 (Cons!44064 (h!49484 rTail!27) (Cons!44064 rHead!24 (t!339845 rTail!27))) Nil!44065)))

(declare-fun lt!1467017 () Unit!63579)

(declare-fun choose!25072 (LexerInterface!6735 Rule!14092 Rule!14092 List!44188) Unit!63579)

(assert (=> d!1217684 (= lt!1467017 (choose!25072 thiss!26455 rHead!24 (h!49484 rTail!27) (t!339845 rTail!27)))))

(assert (=> d!1217684 (noDuplicateTag!2825 thiss!26455 (Cons!44064 rHead!24 (Cons!44064 (h!49484 rTail!27) (t!339845 rTail!27))) Nil!44065)))

(assert (=> d!1217684 (= (lemmaNoDuplicateCanReorder!24 thiss!26455 rHead!24 (h!49484 rTail!27) (t!339845 rTail!27)) lt!1467017)))

(declare-fun bs!593872 () Bool)

(assert (= bs!593872 d!1217684))

(assert (=> bs!593872 m!4708187))

(declare-fun m!4708229 () Bool)

(assert (=> bs!593872 m!4708229))

(declare-fun m!4708231 () Bool)

(assert (=> bs!593872 m!4708231))

(assert (=> b!4101500 d!1217684))

(declare-fun d!1217688 () Bool)

(assert (=> d!1217688 (= (isEmpty!26351 rTail!27) ((_ is Nil!44064) rTail!27))))

(assert (=> b!4101497 d!1217688))

(declare-fun d!1217690 () Bool)

(assert (=> d!1217690 (= (inv!58768 (tag!8006 rHead!24)) (= (mod (str.len (value!224276 (tag!8006 rHead!24))) 2) 0))))

(assert (=> b!4101492 d!1217690))

(declare-fun d!1217692 () Bool)

(declare-fun res!1676897 () Bool)

(declare-fun e!2545361 () Bool)

(assert (=> d!1217692 (=> (not res!1676897) (not e!2545361))))

(declare-fun semiInverseModEq!3071 (Int Int) Bool)

(assert (=> d!1217692 (= res!1676897 (semiInverseModEq!3071 (toChars!9613 (transformation!7146 rHead!24)) (toValue!9754 (transformation!7146 rHead!24))))))

(assert (=> d!1217692 (= (inv!58770 (transformation!7146 rHead!24)) e!2545361)))

(declare-fun b!4101529 () Bool)

(declare-fun equivClasses!2970 (Int Int) Bool)

(assert (=> b!4101529 (= e!2545361 (equivClasses!2970 (toChars!9613 (transformation!7146 rHead!24)) (toValue!9754 (transformation!7146 rHead!24))))))

(assert (= (and d!1217692 res!1676897) b!4101529))

(declare-fun m!4708233 () Bool)

(assert (=> d!1217692 m!4708233))

(declare-fun m!4708235 () Bool)

(assert (=> b!4101529 m!4708235))

(assert (=> b!4101492 d!1217692))

(declare-fun d!1217694 () Bool)

(assert (=> d!1217694 true))

(declare-fun lt!1467023 () Bool)

(declare-fun lambda!128239 () Int)

(declare-fun forall!8423 (List!44188 Int) Bool)

(assert (=> d!1217694 (= lt!1467023 (forall!8423 rTail!27 lambda!128239))))

(declare-fun e!2545385 () Bool)

(assert (=> d!1217694 (= lt!1467023 e!2545385)))

(declare-fun res!1676904 () Bool)

(assert (=> d!1217694 (=> res!1676904 e!2545385)))

(assert (=> d!1217694 (= res!1676904 (not ((_ is Cons!44064) rTail!27)))))

(assert (=> d!1217694 (= (rulesValidInductive!2649 thiss!26455 rTail!27) lt!1467023)))

(declare-fun b!4101567 () Bool)

(declare-fun e!2545384 () Bool)

(assert (=> b!4101567 (= e!2545385 e!2545384)))

(declare-fun res!1676905 () Bool)

(assert (=> b!4101567 (=> (not res!1676905) (not e!2545384))))

(declare-fun ruleValid!3045 (LexerInterface!6735 Rule!14092) Bool)

(assert (=> b!4101567 (= res!1676905 (ruleValid!3045 thiss!26455 (h!49484 rTail!27)))))

(declare-fun b!4101568 () Bool)

(assert (=> b!4101568 (= e!2545384 (rulesValidInductive!2649 thiss!26455 (t!339845 rTail!27)))))

(assert (= (and d!1217694 (not res!1676904)) b!4101567))

(assert (= (and b!4101567 res!1676905) b!4101568))

(declare-fun m!4708247 () Bool)

(assert (=> d!1217694 m!4708247))

(declare-fun m!4708249 () Bool)

(assert (=> b!4101567 m!4708249))

(declare-fun m!4708251 () Bool)

(assert (=> b!4101568 m!4708251))

(assert (=> b!4101494 d!1217694))

(declare-fun d!1217696 () Bool)

(assert (=> d!1217696 (= (inv!58768 (tag!8006 (h!49484 rTail!27))) (= (mod (str.len (value!224276 (tag!8006 (h!49484 rTail!27)))) 2) 0))))

(assert (=> b!4101493 d!1217696))

(declare-fun d!1217698 () Bool)

(declare-fun res!1676906 () Bool)

(declare-fun e!2545386 () Bool)

(assert (=> d!1217698 (=> (not res!1676906) (not e!2545386))))

(assert (=> d!1217698 (= res!1676906 (semiInverseModEq!3071 (toChars!9613 (transformation!7146 (h!49484 rTail!27))) (toValue!9754 (transformation!7146 (h!49484 rTail!27)))))))

(assert (=> d!1217698 (= (inv!58770 (transformation!7146 (h!49484 rTail!27))) e!2545386)))

(declare-fun b!4101571 () Bool)

(assert (=> b!4101571 (= e!2545386 (equivClasses!2970 (toChars!9613 (transformation!7146 (h!49484 rTail!27))) (toValue!9754 (transformation!7146 (h!49484 rTail!27)))))))

(assert (= (and d!1217698 res!1676906) b!4101571))

(declare-fun m!4708253 () Bool)

(assert (=> d!1217698 m!4708253))

(declare-fun m!4708255 () Bool)

(assert (=> b!4101571 m!4708255))

(assert (=> b!4101493 d!1217698))

(declare-fun b!4101585 () Bool)

(declare-fun e!2545389 () Bool)

(declare-fun tp!1242049 () Bool)

(declare-fun tp!1242047 () Bool)

(assert (=> b!4101585 (= e!2545389 (and tp!1242049 tp!1242047))))

(assert (=> b!4101492 (= tp!1242001 e!2545389)))

(declare-fun b!4101583 () Bool)

(declare-fun tp!1242048 () Bool)

(declare-fun tp!1242050 () Bool)

(assert (=> b!4101583 (= e!2545389 (and tp!1242048 tp!1242050))))

(declare-fun b!4101584 () Bool)

(declare-fun tp!1242051 () Bool)

(assert (=> b!4101584 (= e!2545389 tp!1242051)))

(declare-fun b!4101582 () Bool)

(declare-fun tp_is_empty!21085 () Bool)

(assert (=> b!4101582 (= e!2545389 tp_is_empty!21085)))

(assert (= (and b!4101492 ((_ is ElementMatch!12051) (regex!7146 rHead!24))) b!4101582))

(assert (= (and b!4101492 ((_ is Concat!19427) (regex!7146 rHead!24))) b!4101583))

(assert (= (and b!4101492 ((_ is Star!12051) (regex!7146 rHead!24))) b!4101584))

(assert (= (and b!4101492 ((_ is Union!12051) (regex!7146 rHead!24))) b!4101585))

(declare-fun b!4101596 () Bool)

(declare-fun b_free!114925 () Bool)

(declare-fun b_next!115629 () Bool)

(assert (=> b!4101596 (= b_free!114925 (not b_next!115629))))

(declare-fun tp!1242060 () Bool)

(declare-fun b_and!316739 () Bool)

(assert (=> b!4101596 (= tp!1242060 b_and!316739)))

(declare-fun b_free!114927 () Bool)

(declare-fun b_next!115631 () Bool)

(assert (=> b!4101596 (= b_free!114927 (not b_next!115631))))

(declare-fun tp!1242062 () Bool)

(declare-fun b_and!316741 () Bool)

(assert (=> b!4101596 (= tp!1242062 b_and!316741)))

(declare-fun e!2545400 () Bool)

(assert (=> b!4101596 (= e!2545400 (and tp!1242060 tp!1242062))))

(declare-fun e!2545399 () Bool)

(declare-fun b!4101595 () Bool)

(declare-fun tp!1242063 () Bool)

(assert (=> b!4101595 (= e!2545399 (and tp!1242063 (inv!58768 (tag!8006 (h!49484 (t!339845 rTail!27)))) (inv!58770 (transformation!7146 (h!49484 (t!339845 rTail!27)))) e!2545400))))

(declare-fun b!4101594 () Bool)

(declare-fun e!2545398 () Bool)

(declare-fun tp!1242061 () Bool)

(assert (=> b!4101594 (= e!2545398 (and e!2545399 tp!1242061))))

(assert (=> b!4101499 (= tp!1242000 e!2545398)))

(assert (= b!4101595 b!4101596))

(assert (= b!4101594 b!4101595))

(assert (= (and b!4101499 ((_ is Cons!44064) (t!339845 rTail!27))) b!4101594))

(declare-fun m!4708257 () Bool)

(assert (=> b!4101595 m!4708257))

(declare-fun m!4708259 () Bool)

(assert (=> b!4101595 m!4708259))

(declare-fun b!4101600 () Bool)

(declare-fun e!2545402 () Bool)

(declare-fun tp!1242066 () Bool)

(declare-fun tp!1242064 () Bool)

(assert (=> b!4101600 (= e!2545402 (and tp!1242066 tp!1242064))))

(assert (=> b!4101493 (= tp!1242003 e!2545402)))

(declare-fun b!4101598 () Bool)

(declare-fun tp!1242065 () Bool)

(declare-fun tp!1242067 () Bool)

(assert (=> b!4101598 (= e!2545402 (and tp!1242065 tp!1242067))))

(declare-fun b!4101599 () Bool)

(declare-fun tp!1242068 () Bool)

(assert (=> b!4101599 (= e!2545402 tp!1242068)))

(declare-fun b!4101597 () Bool)

(assert (=> b!4101597 (= e!2545402 tp_is_empty!21085)))

(assert (= (and b!4101493 ((_ is ElementMatch!12051) (regex!7146 (h!49484 rTail!27)))) b!4101597))

(assert (= (and b!4101493 ((_ is Concat!19427) (regex!7146 (h!49484 rTail!27)))) b!4101598))

(assert (= (and b!4101493 ((_ is Star!12051) (regex!7146 (h!49484 rTail!27)))) b!4101599))

(assert (= (and b!4101493 ((_ is Union!12051) (regex!7146 (h!49484 rTail!27)))) b!4101600))

(check-sat (not b!4101598) (not b!4101522) (not b_next!115629) (not b_next!115619) b_and!316733 (not d!1217664) (not d!1217692) (not b!4101568) (not b!4101600) (not d!1217694) b_and!316739 (not b!4101585) (not b_next!115617) (not b_next!115631) (not b!4101599) (not b!4101584) b_and!316741 (not b!4101567) b_and!316727 (not b!4101510) (not b!4101571) (not b_next!115623) b_and!316729 tp_is_empty!21085 (not d!1217698) (not d!1217676) (not b_next!115621) b_and!316731 (not b!4101595) (not b!4101529) (not d!1217684) (not b!4101594) (not b!4101521) (not b!4101583))
(check-sat (not b_next!115629) (not b_next!115623) (not b_next!115619) b_and!316729 b_and!316733 b_and!316739 (not b_next!115617) (not b_next!115631) b_and!316741 b_and!316727 (not b_next!115621) b_and!316731)
(get-model)

(assert (=> d!1217684 d!1217680))

(declare-fun d!1217716 () Bool)

(assert (=> d!1217716 (noDuplicateTag!2825 thiss!26455 (Cons!44064 (h!49484 rTail!27) (Cons!44064 rHead!24 (t!339845 rTail!27))) Nil!44065)))

(assert (=> d!1217716 true))

(declare-fun _$67!51 () Unit!63579)

(assert (=> d!1217716 (= (choose!25072 thiss!26455 rHead!24 (h!49484 rTail!27) (t!339845 rTail!27)) _$67!51)))

(declare-fun bs!593877 () Bool)

(assert (= bs!593877 d!1217716))

(assert (=> bs!593877 m!4708187))

(assert (=> d!1217684 d!1217716))

(declare-fun d!1217722 () Bool)

(declare-fun res!1676928 () Bool)

(declare-fun e!2545418 () Bool)

(assert (=> d!1217722 (=> res!1676928 e!2545418)))

(assert (=> d!1217722 (= res!1676928 ((_ is Nil!44064) (Cons!44064 rHead!24 (Cons!44064 (h!49484 rTail!27) (t!339845 rTail!27)))))))

(assert (=> d!1217722 (= (noDuplicateTag!2825 thiss!26455 (Cons!44064 rHead!24 (Cons!44064 (h!49484 rTail!27) (t!339845 rTail!27))) Nil!44065) e!2545418)))

(declare-fun b!4101618 () Bool)

(declare-fun e!2545419 () Bool)

(assert (=> b!4101618 (= e!2545418 e!2545419)))

(declare-fun res!1676929 () Bool)

(assert (=> b!4101618 (=> (not res!1676929) (not e!2545419))))

(assert (=> b!4101618 (= res!1676929 (not (contains!8824 Nil!44065 (tag!8006 (h!49484 (Cons!44064 rHead!24 (Cons!44064 (h!49484 rTail!27) (t!339845 rTail!27))))))))))

(declare-fun b!4101619 () Bool)

(assert (=> b!4101619 (= e!2545419 (noDuplicateTag!2825 thiss!26455 (t!339845 (Cons!44064 rHead!24 (Cons!44064 (h!49484 rTail!27) (t!339845 rTail!27)))) (Cons!44065 (tag!8006 (h!49484 (Cons!44064 rHead!24 (Cons!44064 (h!49484 rTail!27) (t!339845 rTail!27))))) Nil!44065)))))

(assert (= (and d!1217722 (not res!1676928)) b!4101618))

(assert (= (and b!4101618 res!1676929) b!4101619))

(declare-fun m!4708289 () Bool)

(assert (=> b!4101618 m!4708289))

(declare-fun m!4708291 () Bool)

(assert (=> b!4101619 m!4708291))

(assert (=> d!1217684 d!1217722))

(declare-fun d!1217726 () Bool)

(assert (=> d!1217726 true))

(declare-fun order!23209 () Int)

(declare-fun order!23207 () Int)

(declare-fun lambda!128251 () Int)

(declare-fun dynLambda!18874 (Int Int) Int)

(declare-fun dynLambda!18875 (Int Int) Int)

(assert (=> d!1217726 (< (dynLambda!18874 order!23207 (toValue!9754 (transformation!7146 (h!49484 rTail!27)))) (dynLambda!18875 order!23209 lambda!128251))))

(declare-fun Forall2!1124 (Int) Bool)

(assert (=> d!1217726 (= (equivClasses!2970 (toChars!9613 (transformation!7146 (h!49484 rTail!27))) (toValue!9754 (transformation!7146 (h!49484 rTail!27)))) (Forall2!1124 lambda!128251))))

(declare-fun bs!593881 () Bool)

(assert (= bs!593881 d!1217726))

(declare-fun m!4708307 () Bool)

(assert (=> bs!593881 m!4708307))

(assert (=> b!4101571 d!1217726))

(declare-fun d!1217736 () Bool)

(declare-fun res!1676952 () Bool)

(declare-fun e!2545440 () Bool)

(assert (=> d!1217736 (=> res!1676952 e!2545440)))

(assert (=> d!1217736 (= res!1676952 ((_ is Nil!44064) rTail!27))))

(assert (=> d!1217736 (= (forall!8423 rTail!27 lambda!128239) e!2545440)))

(declare-fun b!4101648 () Bool)

(declare-fun e!2545441 () Bool)

(assert (=> b!4101648 (= e!2545440 e!2545441)))

(declare-fun res!1676953 () Bool)

(assert (=> b!4101648 (=> (not res!1676953) (not e!2545441))))

(declare-fun dynLambda!18876 (Int Rule!14092) Bool)

(assert (=> b!4101648 (= res!1676953 (dynLambda!18876 lambda!128239 (h!49484 rTail!27)))))

(declare-fun b!4101649 () Bool)

(assert (=> b!4101649 (= e!2545441 (forall!8423 (t!339845 rTail!27) lambda!128239))))

(assert (= (and d!1217736 (not res!1676952)) b!4101648))

(assert (= (and b!4101648 res!1676953) b!4101649))

(declare-fun b_lambda!120521 () Bool)

(assert (=> (not b_lambda!120521) (not b!4101648)))

(declare-fun m!4708313 () Bool)

(assert (=> b!4101648 m!4708313))

(declare-fun m!4708315 () Bool)

(assert (=> b!4101649 m!4708315))

(assert (=> d!1217694 d!1217736))

(declare-fun d!1217740 () Bool)

(assert (=> d!1217740 true))

(declare-fun order!23213 () Int)

(declare-fun order!23211 () Int)

(declare-fun lambda!128257 () Int)

(declare-fun dynLambda!18878 (Int Int) Int)

(declare-fun dynLambda!18879 (Int Int) Int)

(assert (=> d!1217740 (< (dynLambda!18878 order!23211 (toChars!9613 (transformation!7146 (h!49484 rTail!27)))) (dynLambda!18879 order!23213 lambda!128257))))

(assert (=> d!1217740 true))

(assert (=> d!1217740 (< (dynLambda!18874 order!23207 (toValue!9754 (transformation!7146 (h!49484 rTail!27)))) (dynLambda!18879 order!23213 lambda!128257))))

(declare-fun Forall!1524 (Int) Bool)

(assert (=> d!1217740 (= (semiInverseModEq!3071 (toChars!9613 (transformation!7146 (h!49484 rTail!27))) (toValue!9754 (transformation!7146 (h!49484 rTail!27)))) (Forall!1524 lambda!128257))))

(declare-fun bs!593887 () Bool)

(assert (= bs!593887 d!1217740))

(declare-fun m!4708329 () Bool)

(assert (=> bs!593887 m!4708329))

(assert (=> d!1217698 d!1217740))

(declare-fun bs!593888 () Bool)

(declare-fun d!1217746 () Bool)

(assert (= bs!593888 (and d!1217746 d!1217694)))

(declare-fun lambda!128258 () Int)

(assert (=> bs!593888 (= lambda!128258 lambda!128239)))

(assert (=> d!1217746 true))

(declare-fun lt!1467034 () Bool)

(assert (=> d!1217746 (= lt!1467034 (forall!8423 (t!339845 rTail!27) lambda!128258))))

(declare-fun e!2545461 () Bool)

(assert (=> d!1217746 (= lt!1467034 e!2545461)))

(declare-fun res!1676958 () Bool)

(assert (=> d!1217746 (=> res!1676958 e!2545461)))

(assert (=> d!1217746 (= res!1676958 (not ((_ is Cons!44064) (t!339845 rTail!27))))))

(assert (=> d!1217746 (= (rulesValidInductive!2649 thiss!26455 (t!339845 rTail!27)) lt!1467034)))

(declare-fun b!4101705 () Bool)

(declare-fun e!2545460 () Bool)

(assert (=> b!4101705 (= e!2545461 e!2545460)))

(declare-fun res!1676959 () Bool)

(assert (=> b!4101705 (=> (not res!1676959) (not e!2545460))))

(assert (=> b!4101705 (= res!1676959 (ruleValid!3045 thiss!26455 (h!49484 (t!339845 rTail!27))))))

(declare-fun b!4101706 () Bool)

(assert (=> b!4101706 (= e!2545460 (rulesValidInductive!2649 thiss!26455 (t!339845 (t!339845 rTail!27))))))

(assert (= (and d!1217746 (not res!1676958)) b!4101705))

(assert (= (and b!4101705 res!1676959) b!4101706))

(declare-fun m!4708331 () Bool)

(assert (=> d!1217746 m!4708331))

(declare-fun m!4708333 () Bool)

(assert (=> b!4101705 m!4708333))

(declare-fun m!4708335 () Bool)

(assert (=> b!4101706 m!4708335))

(assert (=> b!4101568 d!1217746))

(declare-fun d!1217748 () Bool)

(declare-fun res!1676960 () Bool)

(declare-fun e!2545462 () Bool)

(assert (=> d!1217748 (=> res!1676960 e!2545462)))

(assert (=> d!1217748 (= res!1676960 ((_ is Nil!44064) lt!1467005))))

(assert (=> d!1217748 (= (noDuplicateTag!2825 thiss!26455 lt!1467005 Nil!44065) e!2545462)))

(declare-fun b!4101707 () Bool)

(declare-fun e!2545463 () Bool)

(assert (=> b!4101707 (= e!2545462 e!2545463)))

(declare-fun res!1676961 () Bool)

(assert (=> b!4101707 (=> (not res!1676961) (not e!2545463))))

(assert (=> b!4101707 (= res!1676961 (not (contains!8824 Nil!44065 (tag!8006 (h!49484 lt!1467005)))))))

(declare-fun b!4101708 () Bool)

(assert (=> b!4101708 (= e!2545463 (noDuplicateTag!2825 thiss!26455 (t!339845 lt!1467005) (Cons!44065 (tag!8006 (h!49484 lt!1467005)) Nil!44065)))))

(assert (= (and d!1217748 (not res!1676960)) b!4101707))

(assert (= (and b!4101707 res!1676961) b!4101708))

(declare-fun m!4708337 () Bool)

(assert (=> b!4101707 m!4708337))

(declare-fun m!4708339 () Bool)

(assert (=> b!4101708 m!4708339))

(assert (=> b!4101510 d!1217748))

(declare-fun d!1217750 () Bool)

(assert (=> d!1217750 (not (= (tag!8006 rHead!24) (tag!8006 (h!49484 rTail!27))))))

(assert (=> d!1217750 true))

(declare-fun _$71!165 () Unit!63579)

(assert (=> d!1217750 (= (choose!25071 thiss!26455 lt!1467005 rHead!24 (h!49484 rTail!27)) _$71!165)))

(assert (=> d!1217676 d!1217750))

(declare-fun d!1217752 () Bool)

(declare-fun lt!1467037 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6797 (List!44188) (InoxSet Rule!14092))

(assert (=> d!1217752 (= lt!1467037 (select (content!6797 lt!1467005) rHead!24))))

(declare-fun e!2545468 () Bool)

(assert (=> d!1217752 (= lt!1467037 e!2545468)))

(declare-fun res!1676967 () Bool)

(assert (=> d!1217752 (=> (not res!1676967) (not e!2545468))))

(assert (=> d!1217752 (= res!1676967 ((_ is Cons!44064) lt!1467005))))

(assert (=> d!1217752 (= (contains!8823 lt!1467005 rHead!24) lt!1467037)))

(declare-fun b!4101713 () Bool)

(declare-fun e!2545469 () Bool)

(assert (=> b!4101713 (= e!2545468 e!2545469)))

(declare-fun res!1676966 () Bool)

(assert (=> b!4101713 (=> res!1676966 e!2545469)))

(assert (=> b!4101713 (= res!1676966 (= (h!49484 lt!1467005) rHead!24))))

(declare-fun b!4101714 () Bool)

(assert (=> b!4101714 (= e!2545469 (contains!8823 (t!339845 lt!1467005) rHead!24))))

(assert (= (and d!1217752 res!1676967) b!4101713))

(assert (= (and b!4101713 (not res!1676966)) b!4101714))

(declare-fun m!4708341 () Bool)

(assert (=> d!1217752 m!4708341))

(declare-fun m!4708343 () Bool)

(assert (=> d!1217752 m!4708343))

(declare-fun m!4708345 () Bool)

(assert (=> b!4101714 m!4708345))

(assert (=> d!1217676 d!1217752))

(declare-fun d!1217754 () Bool)

(assert (=> d!1217754 (= (inv!58768 (tag!8006 (h!49484 (t!339845 rTail!27)))) (= (mod (str.len (value!224276 (tag!8006 (h!49484 (t!339845 rTail!27))))) 2) 0))))

(assert (=> b!4101595 d!1217754))

(declare-fun d!1217756 () Bool)

(declare-fun res!1676968 () Bool)

(declare-fun e!2545470 () Bool)

(assert (=> d!1217756 (=> (not res!1676968) (not e!2545470))))

(assert (=> d!1217756 (= res!1676968 (semiInverseModEq!3071 (toChars!9613 (transformation!7146 (h!49484 (t!339845 rTail!27)))) (toValue!9754 (transformation!7146 (h!49484 (t!339845 rTail!27))))))))

(assert (=> d!1217756 (= (inv!58770 (transformation!7146 (h!49484 (t!339845 rTail!27)))) e!2545470)))

(declare-fun b!4101715 () Bool)

(assert (=> b!4101715 (= e!2545470 (equivClasses!2970 (toChars!9613 (transformation!7146 (h!49484 (t!339845 rTail!27)))) (toValue!9754 (transformation!7146 (h!49484 (t!339845 rTail!27))))))))

(assert (= (and d!1217756 res!1676968) b!4101715))

(declare-fun m!4708347 () Bool)

(assert (=> d!1217756 m!4708347))

(declare-fun m!4708349 () Bool)

(assert (=> b!4101715 m!4708349))

(assert (=> b!4101595 d!1217756))

(declare-fun bs!593889 () Bool)

(declare-fun d!1217758 () Bool)

(assert (= bs!593889 (and d!1217758 d!1217726)))

(declare-fun lambda!128259 () Int)

(assert (=> bs!593889 (= (= (toValue!9754 (transformation!7146 rHead!24)) (toValue!9754 (transformation!7146 (h!49484 rTail!27)))) (= lambda!128259 lambda!128251))))

(assert (=> d!1217758 true))

(assert (=> d!1217758 (< (dynLambda!18874 order!23207 (toValue!9754 (transformation!7146 rHead!24))) (dynLambda!18875 order!23209 lambda!128259))))

(assert (=> d!1217758 (= (equivClasses!2970 (toChars!9613 (transformation!7146 rHead!24)) (toValue!9754 (transformation!7146 rHead!24))) (Forall2!1124 lambda!128259))))

(declare-fun bs!593890 () Bool)

(assert (= bs!593890 d!1217758))

(declare-fun m!4708351 () Bool)

(assert (=> bs!593890 m!4708351))

(assert (=> b!4101529 d!1217758))

(declare-fun bs!593891 () Bool)

(declare-fun d!1217760 () Bool)

(assert (= bs!593891 (and d!1217760 d!1217740)))

(declare-fun lambda!128260 () Int)

(assert (=> bs!593891 (= (and (= (toChars!9613 (transformation!7146 rHead!24)) (toChars!9613 (transformation!7146 (h!49484 rTail!27)))) (= (toValue!9754 (transformation!7146 rHead!24)) (toValue!9754 (transformation!7146 (h!49484 rTail!27))))) (= lambda!128260 lambda!128257))))

(assert (=> d!1217760 true))

(assert (=> d!1217760 (< (dynLambda!18878 order!23211 (toChars!9613 (transformation!7146 rHead!24))) (dynLambda!18879 order!23213 lambda!128260))))

(assert (=> d!1217760 true))

(assert (=> d!1217760 (< (dynLambda!18874 order!23207 (toValue!9754 (transformation!7146 rHead!24))) (dynLambda!18879 order!23213 lambda!128260))))

(assert (=> d!1217760 (= (semiInverseModEq!3071 (toChars!9613 (transformation!7146 rHead!24)) (toValue!9754 (transformation!7146 rHead!24))) (Forall!1524 lambda!128260))))

(declare-fun bs!593892 () Bool)

(assert (= bs!593892 d!1217760))

(declare-fun m!4708353 () Bool)

(assert (=> bs!593892 m!4708353))

(assert (=> d!1217692 d!1217760))

(declare-fun d!1217762 () Bool)

(declare-fun res!1676973 () Bool)

(declare-fun e!2545473 () Bool)

(assert (=> d!1217762 (=> (not res!1676973) (not e!2545473))))

(declare-fun validRegex!5455 (Regex!12051) Bool)

(assert (=> d!1217762 (= res!1676973 (validRegex!5455 (regex!7146 (h!49484 rTail!27))))))

(assert (=> d!1217762 (= (ruleValid!3045 thiss!26455 (h!49484 rTail!27)) e!2545473)))

(declare-fun b!4101720 () Bool)

(declare-fun res!1676974 () Bool)

(assert (=> b!4101720 (=> (not res!1676974) (not e!2545473))))

(declare-fun nullable!4255 (Regex!12051) Bool)

(assert (=> b!4101720 (= res!1676974 (not (nullable!4255 (regex!7146 (h!49484 rTail!27)))))))

(declare-fun b!4101721 () Bool)

(assert (=> b!4101721 (= e!2545473 (not (= (tag!8006 (h!49484 rTail!27)) (String!50630 ""))))))

(assert (= (and d!1217762 res!1676973) b!4101720))

(assert (= (and b!4101720 res!1676974) b!4101721))

(declare-fun m!4708355 () Bool)

(assert (=> d!1217762 m!4708355))

(declare-fun m!4708357 () Bool)

(assert (=> b!4101720 m!4708357))

(assert (=> b!4101567 d!1217762))

(declare-fun d!1217764 () Bool)

(declare-fun lt!1467040 () Bool)

(declare-fun content!6798 (List!44189) (InoxSet String!50629))

(assert (=> d!1217764 (= lt!1467040 (select (content!6798 Nil!44065) (tag!8006 (h!49484 (Cons!44064 (h!49484 rTail!27) (Cons!44064 rHead!24 (t!339845 rTail!27)))))))))

(declare-fun e!2545479 () Bool)

(assert (=> d!1217764 (= lt!1467040 e!2545479)))

(declare-fun res!1676980 () Bool)

(assert (=> d!1217764 (=> (not res!1676980) (not e!2545479))))

(assert (=> d!1217764 (= res!1676980 ((_ is Cons!44065) Nil!44065))))

(assert (=> d!1217764 (= (contains!8824 Nil!44065 (tag!8006 (h!49484 (Cons!44064 (h!49484 rTail!27) (Cons!44064 rHead!24 (t!339845 rTail!27)))))) lt!1467040)))

(declare-fun b!4101726 () Bool)

(declare-fun e!2545478 () Bool)

(assert (=> b!4101726 (= e!2545479 e!2545478)))

(declare-fun res!1676979 () Bool)

(assert (=> b!4101726 (=> res!1676979 e!2545478)))

(assert (=> b!4101726 (= res!1676979 (= (h!49485 Nil!44065) (tag!8006 (h!49484 (Cons!44064 (h!49484 rTail!27) (Cons!44064 rHead!24 (t!339845 rTail!27)))))))))

(declare-fun b!4101727 () Bool)

(assert (=> b!4101727 (= e!2545478 (contains!8824 (t!339846 Nil!44065) (tag!8006 (h!49484 (Cons!44064 (h!49484 rTail!27) (Cons!44064 rHead!24 (t!339845 rTail!27)))))))))

(assert (= (and d!1217764 res!1676980) b!4101726))

(assert (= (and b!4101726 (not res!1676979)) b!4101727))

(declare-fun m!4708359 () Bool)

(assert (=> d!1217764 m!4708359))

(declare-fun m!4708361 () Bool)

(assert (=> d!1217764 m!4708361))

(declare-fun m!4708363 () Bool)

(assert (=> b!4101727 m!4708363))

(assert (=> b!4101521 d!1217764))

(declare-fun bs!593893 () Bool)

(declare-fun d!1217766 () Bool)

(assert (= bs!593893 (and d!1217766 d!1217694)))

(declare-fun lambda!128263 () Int)

(assert (=> bs!593893 (= lambda!128263 lambda!128239)))

(declare-fun bs!593894 () Bool)

(assert (= bs!593894 (and d!1217766 d!1217746)))

(assert (=> bs!593894 (= lambda!128263 lambda!128258)))

(assert (=> d!1217766 true))

(declare-fun lt!1467043 () Bool)

(assert (=> d!1217766 (= lt!1467043 (rulesValidInductive!2649 thiss!26455 lt!1467005))))

(assert (=> d!1217766 (= lt!1467043 (forall!8423 lt!1467005 lambda!128263))))

(assert (=> d!1217766 (= (rulesValid!2806 thiss!26455 lt!1467005) lt!1467043)))

(declare-fun bs!593895 () Bool)

(assert (= bs!593895 d!1217766))

(declare-fun m!4708365 () Bool)

(assert (=> bs!593895 m!4708365))

(declare-fun m!4708367 () Bool)

(assert (=> bs!593895 m!4708367))

(assert (=> d!1217664 d!1217766))

(declare-fun d!1217768 () Bool)

(declare-fun res!1676981 () Bool)

(declare-fun e!2545480 () Bool)

(assert (=> d!1217768 (=> res!1676981 e!2545480)))

(assert (=> d!1217768 (= res!1676981 ((_ is Nil!44064) (t!339845 (Cons!44064 (h!49484 rTail!27) (Cons!44064 rHead!24 (t!339845 rTail!27))))))))

(assert (=> d!1217768 (= (noDuplicateTag!2825 thiss!26455 (t!339845 (Cons!44064 (h!49484 rTail!27) (Cons!44064 rHead!24 (t!339845 rTail!27)))) (Cons!44065 (tag!8006 (h!49484 (Cons!44064 (h!49484 rTail!27) (Cons!44064 rHead!24 (t!339845 rTail!27))))) Nil!44065)) e!2545480)))

(declare-fun b!4101728 () Bool)

(declare-fun e!2545481 () Bool)

(assert (=> b!4101728 (= e!2545480 e!2545481)))

(declare-fun res!1676982 () Bool)

(assert (=> b!4101728 (=> (not res!1676982) (not e!2545481))))

(assert (=> b!4101728 (= res!1676982 (not (contains!8824 (Cons!44065 (tag!8006 (h!49484 (Cons!44064 (h!49484 rTail!27) (Cons!44064 rHead!24 (t!339845 rTail!27))))) Nil!44065) (tag!8006 (h!49484 (t!339845 (Cons!44064 (h!49484 rTail!27) (Cons!44064 rHead!24 (t!339845 rTail!27)))))))))))

(declare-fun b!4101729 () Bool)

(assert (=> b!4101729 (= e!2545481 (noDuplicateTag!2825 thiss!26455 (t!339845 (t!339845 (Cons!44064 (h!49484 rTail!27) (Cons!44064 rHead!24 (t!339845 rTail!27))))) (Cons!44065 (tag!8006 (h!49484 (t!339845 (Cons!44064 (h!49484 rTail!27) (Cons!44064 rHead!24 (t!339845 rTail!27)))))) (Cons!44065 (tag!8006 (h!49484 (Cons!44064 (h!49484 rTail!27) (Cons!44064 rHead!24 (t!339845 rTail!27))))) Nil!44065))))))

(assert (= (and d!1217768 (not res!1676981)) b!4101728))

(assert (= (and b!4101728 res!1676982) b!4101729))

(declare-fun m!4708369 () Bool)

(assert (=> b!4101728 m!4708369))

(declare-fun m!4708371 () Bool)

(assert (=> b!4101729 m!4708371))

(assert (=> b!4101522 d!1217768))

(declare-fun b!4101733 () Bool)

(declare-fun e!2545482 () Bool)

(declare-fun tp!1242130 () Bool)

(declare-fun tp!1242128 () Bool)

(assert (=> b!4101733 (= e!2545482 (and tp!1242130 tp!1242128))))

(assert (=> b!4101599 (= tp!1242068 e!2545482)))

(declare-fun b!4101731 () Bool)

(declare-fun tp!1242129 () Bool)

(declare-fun tp!1242131 () Bool)

(assert (=> b!4101731 (= e!2545482 (and tp!1242129 tp!1242131))))

(declare-fun b!4101732 () Bool)

(declare-fun tp!1242132 () Bool)

(assert (=> b!4101732 (= e!2545482 tp!1242132)))

(declare-fun b!4101730 () Bool)

(assert (=> b!4101730 (= e!2545482 tp_is_empty!21085)))

(assert (= (and b!4101599 ((_ is ElementMatch!12051) (reg!12380 (regex!7146 (h!49484 rTail!27))))) b!4101730))

(assert (= (and b!4101599 ((_ is Concat!19427) (reg!12380 (regex!7146 (h!49484 rTail!27))))) b!4101731))

(assert (= (and b!4101599 ((_ is Star!12051) (reg!12380 (regex!7146 (h!49484 rTail!27))))) b!4101732))

(assert (= (and b!4101599 ((_ is Union!12051) (reg!12380 (regex!7146 (h!49484 rTail!27))))) b!4101733))

(declare-fun b!4101737 () Bool)

(declare-fun e!2545483 () Bool)

(declare-fun tp!1242135 () Bool)

(declare-fun tp!1242133 () Bool)

(assert (=> b!4101737 (= e!2545483 (and tp!1242135 tp!1242133))))

(assert (=> b!4101585 (= tp!1242049 e!2545483)))

(declare-fun b!4101735 () Bool)

(declare-fun tp!1242134 () Bool)

(declare-fun tp!1242136 () Bool)

(assert (=> b!4101735 (= e!2545483 (and tp!1242134 tp!1242136))))

(declare-fun b!4101736 () Bool)

(declare-fun tp!1242137 () Bool)

(assert (=> b!4101736 (= e!2545483 tp!1242137)))

(declare-fun b!4101734 () Bool)

(assert (=> b!4101734 (= e!2545483 tp_is_empty!21085)))

(assert (= (and b!4101585 ((_ is ElementMatch!12051) (regOne!24615 (regex!7146 rHead!24)))) b!4101734))

(assert (= (and b!4101585 ((_ is Concat!19427) (regOne!24615 (regex!7146 rHead!24)))) b!4101735))

(assert (= (and b!4101585 ((_ is Star!12051) (regOne!24615 (regex!7146 rHead!24)))) b!4101736))

(assert (= (and b!4101585 ((_ is Union!12051) (regOne!24615 (regex!7146 rHead!24)))) b!4101737))

(declare-fun b!4101741 () Bool)

(declare-fun e!2545484 () Bool)

(declare-fun tp!1242140 () Bool)

(declare-fun tp!1242138 () Bool)

(assert (=> b!4101741 (= e!2545484 (and tp!1242140 tp!1242138))))

(assert (=> b!4101585 (= tp!1242047 e!2545484)))

(declare-fun b!4101739 () Bool)

(declare-fun tp!1242139 () Bool)

(declare-fun tp!1242141 () Bool)

(assert (=> b!4101739 (= e!2545484 (and tp!1242139 tp!1242141))))

(declare-fun b!4101740 () Bool)

(declare-fun tp!1242142 () Bool)

(assert (=> b!4101740 (= e!2545484 tp!1242142)))

(declare-fun b!4101738 () Bool)

(assert (=> b!4101738 (= e!2545484 tp_is_empty!21085)))

(assert (= (and b!4101585 ((_ is ElementMatch!12051) (regTwo!24615 (regex!7146 rHead!24)))) b!4101738))

(assert (= (and b!4101585 ((_ is Concat!19427) (regTwo!24615 (regex!7146 rHead!24)))) b!4101739))

(assert (= (and b!4101585 ((_ is Star!12051) (regTwo!24615 (regex!7146 rHead!24)))) b!4101740))

(assert (= (and b!4101585 ((_ is Union!12051) (regTwo!24615 (regex!7146 rHead!24)))) b!4101741))

(declare-fun b!4101745 () Bool)

(declare-fun e!2545485 () Bool)

(declare-fun tp!1242145 () Bool)

(declare-fun tp!1242143 () Bool)

(assert (=> b!4101745 (= e!2545485 (and tp!1242145 tp!1242143))))

(assert (=> b!4101600 (= tp!1242066 e!2545485)))

(declare-fun b!4101743 () Bool)

(declare-fun tp!1242144 () Bool)

(declare-fun tp!1242146 () Bool)

(assert (=> b!4101743 (= e!2545485 (and tp!1242144 tp!1242146))))

(declare-fun b!4101744 () Bool)

(declare-fun tp!1242147 () Bool)

(assert (=> b!4101744 (= e!2545485 tp!1242147)))

(declare-fun b!4101742 () Bool)

(assert (=> b!4101742 (= e!2545485 tp_is_empty!21085)))

(assert (= (and b!4101600 ((_ is ElementMatch!12051) (regOne!24615 (regex!7146 (h!49484 rTail!27))))) b!4101742))

(assert (= (and b!4101600 ((_ is Concat!19427) (regOne!24615 (regex!7146 (h!49484 rTail!27))))) b!4101743))

(assert (= (and b!4101600 ((_ is Star!12051) (regOne!24615 (regex!7146 (h!49484 rTail!27))))) b!4101744))

(assert (= (and b!4101600 ((_ is Union!12051) (regOne!24615 (regex!7146 (h!49484 rTail!27))))) b!4101745))

(declare-fun b!4101749 () Bool)

(declare-fun e!2545486 () Bool)

(declare-fun tp!1242150 () Bool)

(declare-fun tp!1242148 () Bool)

(assert (=> b!4101749 (= e!2545486 (and tp!1242150 tp!1242148))))

(assert (=> b!4101600 (= tp!1242064 e!2545486)))

(declare-fun b!4101747 () Bool)

(declare-fun tp!1242149 () Bool)

(declare-fun tp!1242151 () Bool)

(assert (=> b!4101747 (= e!2545486 (and tp!1242149 tp!1242151))))

(declare-fun b!4101748 () Bool)

(declare-fun tp!1242152 () Bool)

(assert (=> b!4101748 (= e!2545486 tp!1242152)))

(declare-fun b!4101746 () Bool)

(assert (=> b!4101746 (= e!2545486 tp_is_empty!21085)))

(assert (= (and b!4101600 ((_ is ElementMatch!12051) (regTwo!24615 (regex!7146 (h!49484 rTail!27))))) b!4101746))

(assert (= (and b!4101600 ((_ is Concat!19427) (regTwo!24615 (regex!7146 (h!49484 rTail!27))))) b!4101747))

(assert (= (and b!4101600 ((_ is Star!12051) (regTwo!24615 (regex!7146 (h!49484 rTail!27))))) b!4101748))

(assert (= (and b!4101600 ((_ is Union!12051) (regTwo!24615 (regex!7146 (h!49484 rTail!27))))) b!4101749))

(declare-fun b!4101753 () Bool)

(declare-fun e!2545487 () Bool)

(declare-fun tp!1242155 () Bool)

(declare-fun tp!1242153 () Bool)

(assert (=> b!4101753 (= e!2545487 (and tp!1242155 tp!1242153))))

(assert (=> b!4101595 (= tp!1242063 e!2545487)))

(declare-fun b!4101751 () Bool)

(declare-fun tp!1242154 () Bool)

(declare-fun tp!1242156 () Bool)

(assert (=> b!4101751 (= e!2545487 (and tp!1242154 tp!1242156))))

(declare-fun b!4101752 () Bool)

(declare-fun tp!1242157 () Bool)

(assert (=> b!4101752 (= e!2545487 tp!1242157)))

(declare-fun b!4101750 () Bool)

(assert (=> b!4101750 (= e!2545487 tp_is_empty!21085)))

(assert (= (and b!4101595 ((_ is ElementMatch!12051) (regex!7146 (h!49484 (t!339845 rTail!27))))) b!4101750))

(assert (= (and b!4101595 ((_ is Concat!19427) (regex!7146 (h!49484 (t!339845 rTail!27))))) b!4101751))

(assert (= (and b!4101595 ((_ is Star!12051) (regex!7146 (h!49484 (t!339845 rTail!27))))) b!4101752))

(assert (= (and b!4101595 ((_ is Union!12051) (regex!7146 (h!49484 (t!339845 rTail!27))))) b!4101753))

(declare-fun b!4101757 () Bool)

(declare-fun e!2545488 () Bool)

(declare-fun tp!1242160 () Bool)

(declare-fun tp!1242158 () Bool)

(assert (=> b!4101757 (= e!2545488 (and tp!1242160 tp!1242158))))

(assert (=> b!4101583 (= tp!1242048 e!2545488)))

(declare-fun b!4101755 () Bool)

(declare-fun tp!1242159 () Bool)

(declare-fun tp!1242161 () Bool)

(assert (=> b!4101755 (= e!2545488 (and tp!1242159 tp!1242161))))

(declare-fun b!4101756 () Bool)

(declare-fun tp!1242162 () Bool)

(assert (=> b!4101756 (= e!2545488 tp!1242162)))

(declare-fun b!4101754 () Bool)

(assert (=> b!4101754 (= e!2545488 tp_is_empty!21085)))

(assert (= (and b!4101583 ((_ is ElementMatch!12051) (regOne!24614 (regex!7146 rHead!24)))) b!4101754))

(assert (= (and b!4101583 ((_ is Concat!19427) (regOne!24614 (regex!7146 rHead!24)))) b!4101755))

(assert (= (and b!4101583 ((_ is Star!12051) (regOne!24614 (regex!7146 rHead!24)))) b!4101756))

(assert (= (and b!4101583 ((_ is Union!12051) (regOne!24614 (regex!7146 rHead!24)))) b!4101757))

(declare-fun b!4101761 () Bool)

(declare-fun e!2545489 () Bool)

(declare-fun tp!1242165 () Bool)

(declare-fun tp!1242163 () Bool)

(assert (=> b!4101761 (= e!2545489 (and tp!1242165 tp!1242163))))

(assert (=> b!4101583 (= tp!1242050 e!2545489)))

(declare-fun b!4101759 () Bool)

(declare-fun tp!1242164 () Bool)

(declare-fun tp!1242166 () Bool)

(assert (=> b!4101759 (= e!2545489 (and tp!1242164 tp!1242166))))

(declare-fun b!4101760 () Bool)

(declare-fun tp!1242167 () Bool)

(assert (=> b!4101760 (= e!2545489 tp!1242167)))

(declare-fun b!4101758 () Bool)

(assert (=> b!4101758 (= e!2545489 tp_is_empty!21085)))

(assert (= (and b!4101583 ((_ is ElementMatch!12051) (regTwo!24614 (regex!7146 rHead!24)))) b!4101758))

(assert (= (and b!4101583 ((_ is Concat!19427) (regTwo!24614 (regex!7146 rHead!24)))) b!4101759))

(assert (= (and b!4101583 ((_ is Star!12051) (regTwo!24614 (regex!7146 rHead!24)))) b!4101760))

(assert (= (and b!4101583 ((_ is Union!12051) (regTwo!24614 (regex!7146 rHead!24)))) b!4101761))

(declare-fun b!4101765 () Bool)

(declare-fun e!2545490 () Bool)

(declare-fun tp!1242170 () Bool)

(declare-fun tp!1242168 () Bool)

(assert (=> b!4101765 (= e!2545490 (and tp!1242170 tp!1242168))))

(assert (=> b!4101598 (= tp!1242065 e!2545490)))

(declare-fun b!4101763 () Bool)

(declare-fun tp!1242169 () Bool)

(declare-fun tp!1242171 () Bool)

(assert (=> b!4101763 (= e!2545490 (and tp!1242169 tp!1242171))))

(declare-fun b!4101764 () Bool)

(declare-fun tp!1242172 () Bool)

(assert (=> b!4101764 (= e!2545490 tp!1242172)))

(declare-fun b!4101762 () Bool)

(assert (=> b!4101762 (= e!2545490 tp_is_empty!21085)))

(assert (= (and b!4101598 ((_ is ElementMatch!12051) (regOne!24614 (regex!7146 (h!49484 rTail!27))))) b!4101762))

(assert (= (and b!4101598 ((_ is Concat!19427) (regOne!24614 (regex!7146 (h!49484 rTail!27))))) b!4101763))

(assert (= (and b!4101598 ((_ is Star!12051) (regOne!24614 (regex!7146 (h!49484 rTail!27))))) b!4101764))

(assert (= (and b!4101598 ((_ is Union!12051) (regOne!24614 (regex!7146 (h!49484 rTail!27))))) b!4101765))

(declare-fun b!4101769 () Bool)

(declare-fun e!2545491 () Bool)

(declare-fun tp!1242175 () Bool)

(declare-fun tp!1242173 () Bool)

(assert (=> b!4101769 (= e!2545491 (and tp!1242175 tp!1242173))))

(assert (=> b!4101598 (= tp!1242067 e!2545491)))

(declare-fun b!4101767 () Bool)

(declare-fun tp!1242174 () Bool)

(declare-fun tp!1242176 () Bool)

(assert (=> b!4101767 (= e!2545491 (and tp!1242174 tp!1242176))))

(declare-fun b!4101768 () Bool)

(declare-fun tp!1242177 () Bool)

(assert (=> b!4101768 (= e!2545491 tp!1242177)))

(declare-fun b!4101766 () Bool)

(assert (=> b!4101766 (= e!2545491 tp_is_empty!21085)))

(assert (= (and b!4101598 ((_ is ElementMatch!12051) (regTwo!24614 (regex!7146 (h!49484 rTail!27))))) b!4101766))

(assert (= (and b!4101598 ((_ is Concat!19427) (regTwo!24614 (regex!7146 (h!49484 rTail!27))))) b!4101767))

(assert (= (and b!4101598 ((_ is Star!12051) (regTwo!24614 (regex!7146 (h!49484 rTail!27))))) b!4101768))

(assert (= (and b!4101598 ((_ is Union!12051) (regTwo!24614 (regex!7146 (h!49484 rTail!27))))) b!4101769))

(declare-fun b!4101773 () Bool)

(declare-fun e!2545492 () Bool)

(declare-fun tp!1242180 () Bool)

(declare-fun tp!1242178 () Bool)

(assert (=> b!4101773 (= e!2545492 (and tp!1242180 tp!1242178))))

(assert (=> b!4101584 (= tp!1242051 e!2545492)))

(declare-fun b!4101771 () Bool)

(declare-fun tp!1242179 () Bool)

(declare-fun tp!1242181 () Bool)

(assert (=> b!4101771 (= e!2545492 (and tp!1242179 tp!1242181))))

(declare-fun b!4101772 () Bool)

(declare-fun tp!1242182 () Bool)

(assert (=> b!4101772 (= e!2545492 tp!1242182)))

(declare-fun b!4101770 () Bool)

(assert (=> b!4101770 (= e!2545492 tp_is_empty!21085)))

(assert (= (and b!4101584 ((_ is ElementMatch!12051) (reg!12380 (regex!7146 rHead!24)))) b!4101770))

(assert (= (and b!4101584 ((_ is Concat!19427) (reg!12380 (regex!7146 rHead!24)))) b!4101771))

(assert (= (and b!4101584 ((_ is Star!12051) (reg!12380 (regex!7146 rHead!24)))) b!4101772))

(assert (= (and b!4101584 ((_ is Union!12051) (reg!12380 (regex!7146 rHead!24)))) b!4101773))

(declare-fun b!4101776 () Bool)

(declare-fun b_free!114933 () Bool)

(declare-fun b_next!115637 () Bool)

(assert (=> b!4101776 (= b_free!114933 (not b_next!115637))))

(declare-fun tp!1242183 () Bool)

(declare-fun b_and!316747 () Bool)

(assert (=> b!4101776 (= tp!1242183 b_and!316747)))

(declare-fun b_free!114935 () Bool)

(declare-fun b_next!115639 () Bool)

(assert (=> b!4101776 (= b_free!114935 (not b_next!115639))))

(declare-fun tp!1242185 () Bool)

(declare-fun b_and!316749 () Bool)

(assert (=> b!4101776 (= tp!1242185 b_and!316749)))

(declare-fun e!2545495 () Bool)

(assert (=> b!4101776 (= e!2545495 (and tp!1242183 tp!1242185))))

(declare-fun b!4101775 () Bool)

(declare-fun tp!1242186 () Bool)

(declare-fun e!2545494 () Bool)

(assert (=> b!4101775 (= e!2545494 (and tp!1242186 (inv!58768 (tag!8006 (h!49484 (t!339845 (t!339845 rTail!27))))) (inv!58770 (transformation!7146 (h!49484 (t!339845 (t!339845 rTail!27))))) e!2545495))))

(declare-fun b!4101774 () Bool)

(declare-fun e!2545493 () Bool)

(declare-fun tp!1242184 () Bool)

(assert (=> b!4101774 (= e!2545493 (and e!2545494 tp!1242184))))

(assert (=> b!4101594 (= tp!1242061 e!2545493)))

(assert (= b!4101775 b!4101776))

(assert (= b!4101774 b!4101775))

(assert (= (and b!4101594 ((_ is Cons!44064) (t!339845 (t!339845 rTail!27)))) b!4101774))

(declare-fun m!4708373 () Bool)

(assert (=> b!4101775 m!4708373))

(declare-fun m!4708375 () Bool)

(assert (=> b!4101775 m!4708375))

(declare-fun b_lambda!120525 () Bool)

(assert (= b_lambda!120521 (or d!1217694 b_lambda!120525)))

(declare-fun bs!593896 () Bool)

(declare-fun d!1217770 () Bool)

(assert (= bs!593896 (and d!1217770 d!1217694)))

(assert (=> bs!593896 (= (dynLambda!18876 lambda!128239 (h!49484 rTail!27)) (ruleValid!3045 thiss!26455 (h!49484 rTail!27)))))

(assert (=> bs!593896 m!4708249))

(assert (=> b!4101648 d!1217770))

(check-sat (not b!4101707) (not b_next!115623) (not d!1217726) (not bs!593896) (not d!1217758) (not b!4101618) (not b!4101745) (not b!4101720) b_and!316739 (not b_next!115637) (not b_next!115631) (not b!4101748) (not b!4101747) (not b!4101768) (not d!1217762) (not b!4101743) (not d!1217764) (not b!4101729) (not b!4101744) (not b!4101736) (not b!4101740) b_and!316741 (not d!1217746) b_and!316727 (not d!1217740) (not d!1217716) (not b!4101727) (not b_next!115629) (not b!4101760) (not d!1217766) (not b!4101731) (not b!4101649) (not b!4101749) (not d!1217756) (not b!4101753) (not d!1217760) (not b_next!115619) b_and!316729 tp_is_empty!21085 (not b!4101759) (not b!4101737) (not b!4101751) (not b!4101739) b_and!316733 (not b!4101715) (not b!4101619) (not b!4101769) (not b!4101752) (not b!4101763) (not b!4101755) (not b_next!115639) (not b!4101772) (not b!4101764) (not b!4101773) (not b!4101771) (not b!4101706) (not b!4101728) (not b!4101735) (not b_next!115621) b_and!316731 (not b!4101714) (not d!1217752) (not b!4101774) b_and!316747 (not b!4101767) (not b!4101708) (not b!4101732) (not b!4101761) (not b_next!115617) (not b_lambda!120525) (not b!4101775) (not b!4101765) (not b!4101733) (not b!4101757) b_and!316749 (not b!4101756) (not b!4101705) (not b!4101741))
(check-sat (not b_next!115629) (not b_next!115623) (not b_next!115619) b_and!316729 b_and!316733 (not b_next!115639) b_and!316739 (not b_next!115637) b_and!316747 (not b_next!115617) b_and!316749 (not b_next!115631) b_and!316741 b_and!316727 (not b_next!115621) b_and!316731)
(get-model)

(declare-fun d!1217814 () Bool)

(declare-fun res!1677020 () Bool)

(declare-fun e!2545535 () Bool)

(assert (=> d!1217814 (=> res!1677020 e!2545535)))

(assert (=> d!1217814 (= res!1677020 ((_ is Nil!44064) (t!339845 rTail!27)))))

(assert (=> d!1217814 (= (forall!8423 (t!339845 rTail!27) lambda!128258) e!2545535)))

(declare-fun b!4101822 () Bool)

(declare-fun e!2545536 () Bool)

(assert (=> b!4101822 (= e!2545535 e!2545536)))

(declare-fun res!1677021 () Bool)

(assert (=> b!4101822 (=> (not res!1677021) (not e!2545536))))

(assert (=> b!4101822 (= res!1677021 (dynLambda!18876 lambda!128258 (h!49484 (t!339845 rTail!27))))))

(declare-fun b!4101823 () Bool)

(assert (=> b!4101823 (= e!2545536 (forall!8423 (t!339845 (t!339845 rTail!27)) lambda!128258))))

(assert (= (and d!1217814 (not res!1677020)) b!4101822))

(assert (= (and b!4101822 res!1677021) b!4101823))

(declare-fun b_lambda!120531 () Bool)

(assert (=> (not b_lambda!120531) (not b!4101822)))

(declare-fun m!4708439 () Bool)

(assert (=> b!4101822 m!4708439))

(declare-fun m!4708441 () Bool)

(assert (=> b!4101823 m!4708441))

(assert (=> d!1217746 d!1217814))

(declare-fun d!1217816 () Bool)

(declare-fun lt!1467049 () Bool)

(assert (=> d!1217816 (= lt!1467049 (select (content!6798 Nil!44065) (tag!8006 (h!49484 lt!1467005))))))

(declare-fun e!2545538 () Bool)

(assert (=> d!1217816 (= lt!1467049 e!2545538)))

(declare-fun res!1677023 () Bool)

(assert (=> d!1217816 (=> (not res!1677023) (not e!2545538))))

(assert (=> d!1217816 (= res!1677023 ((_ is Cons!44065) Nil!44065))))

(assert (=> d!1217816 (= (contains!8824 Nil!44065 (tag!8006 (h!49484 lt!1467005))) lt!1467049)))

(declare-fun b!4101824 () Bool)

(declare-fun e!2545537 () Bool)

(assert (=> b!4101824 (= e!2545538 e!2545537)))

(declare-fun res!1677022 () Bool)

(assert (=> b!4101824 (=> res!1677022 e!2545537)))

(assert (=> b!4101824 (= res!1677022 (= (h!49485 Nil!44065) (tag!8006 (h!49484 lt!1467005))))))

(declare-fun b!4101825 () Bool)

(assert (=> b!4101825 (= e!2545537 (contains!8824 (t!339846 Nil!44065) (tag!8006 (h!49484 lt!1467005))))))

(assert (= (and d!1217816 res!1677023) b!4101824))

(assert (= (and b!4101824 (not res!1677022)) b!4101825))

(assert (=> d!1217816 m!4708359))

(declare-fun m!4708443 () Bool)

(assert (=> d!1217816 m!4708443))

(declare-fun m!4708445 () Bool)

(assert (=> b!4101825 m!4708445))

(assert (=> b!4101707 d!1217816))

(declare-fun d!1217818 () Bool)

(declare-fun lt!1467050 () Bool)

(assert (=> d!1217818 (= lt!1467050 (select (content!6797 (t!339845 lt!1467005)) rHead!24))))

(declare-fun e!2545539 () Bool)

(assert (=> d!1217818 (= lt!1467050 e!2545539)))

(declare-fun res!1677025 () Bool)

(assert (=> d!1217818 (=> (not res!1677025) (not e!2545539))))

(assert (=> d!1217818 (= res!1677025 ((_ is Cons!44064) (t!339845 lt!1467005)))))

(assert (=> d!1217818 (= (contains!8823 (t!339845 lt!1467005) rHead!24) lt!1467050)))

(declare-fun b!4101826 () Bool)

(declare-fun e!2545540 () Bool)

(assert (=> b!4101826 (= e!2545539 e!2545540)))

(declare-fun res!1677024 () Bool)

(assert (=> b!4101826 (=> res!1677024 e!2545540)))

(assert (=> b!4101826 (= res!1677024 (= (h!49484 (t!339845 lt!1467005)) rHead!24))))

(declare-fun b!4101827 () Bool)

(assert (=> b!4101827 (= e!2545540 (contains!8823 (t!339845 (t!339845 lt!1467005)) rHead!24))))

(assert (= (and d!1217818 res!1677025) b!4101826))

(assert (= (and b!4101826 (not res!1677024)) b!4101827))

(declare-fun m!4708447 () Bool)

(assert (=> d!1217818 m!4708447))

(declare-fun m!4708449 () Bool)

(assert (=> d!1217818 m!4708449))

(declare-fun m!4708451 () Bool)

(assert (=> b!4101827 m!4708451))

(assert (=> b!4101714 d!1217818))

(declare-fun d!1217820 () Bool)

(declare-fun res!1677026 () Bool)

(declare-fun e!2545541 () Bool)

(assert (=> d!1217820 (=> res!1677026 e!2545541)))

(assert (=> d!1217820 (= res!1677026 ((_ is Nil!44064) (t!339845 lt!1467005)))))

(assert (=> d!1217820 (= (noDuplicateTag!2825 thiss!26455 (t!339845 lt!1467005) (Cons!44065 (tag!8006 (h!49484 lt!1467005)) Nil!44065)) e!2545541)))

(declare-fun b!4101828 () Bool)

(declare-fun e!2545542 () Bool)

(assert (=> b!4101828 (= e!2545541 e!2545542)))

(declare-fun res!1677027 () Bool)

(assert (=> b!4101828 (=> (not res!1677027) (not e!2545542))))

(assert (=> b!4101828 (= res!1677027 (not (contains!8824 (Cons!44065 (tag!8006 (h!49484 lt!1467005)) Nil!44065) (tag!8006 (h!49484 (t!339845 lt!1467005))))))))

(declare-fun b!4101829 () Bool)

(assert (=> b!4101829 (= e!2545542 (noDuplicateTag!2825 thiss!26455 (t!339845 (t!339845 lt!1467005)) (Cons!44065 (tag!8006 (h!49484 (t!339845 lt!1467005))) (Cons!44065 (tag!8006 (h!49484 lt!1467005)) Nil!44065))))))

(assert (= (and d!1217820 (not res!1677026)) b!4101828))

(assert (= (and b!4101828 res!1677027) b!4101829))

(declare-fun m!4708453 () Bool)

(assert (=> b!4101828 m!4708453))

(declare-fun m!4708455 () Bool)

(assert (=> b!4101829 m!4708455))

(assert (=> b!4101708 d!1217820))

(declare-fun d!1217822 () Bool)

(declare-fun c!706527 () Bool)

(assert (=> d!1217822 (= c!706527 ((_ is Nil!44064) lt!1467005))))

(declare-fun e!2545552 () (InoxSet Rule!14092))

(assert (=> d!1217822 (= (content!6797 lt!1467005) e!2545552)))

(declare-fun b!4101843 () Bool)

(assert (=> b!4101843 (= e!2545552 ((as const (Array Rule!14092 Bool)) false))))

(declare-fun b!4101844 () Bool)

(assert (=> b!4101844 (= e!2545552 ((_ map or) (store ((as const (Array Rule!14092 Bool)) false) (h!49484 lt!1467005) true) (content!6797 (t!339845 lt!1467005))))))

(assert (= (and d!1217822 c!706527) b!4101843))

(assert (= (and d!1217822 (not c!706527)) b!4101844))

(declare-fun m!4708457 () Bool)

(assert (=> b!4101844 m!4708457))

(assert (=> b!4101844 m!4708447))

(assert (=> d!1217752 d!1217822))

(declare-fun d!1217824 () Bool)

(declare-fun choose!25073 (Int) Bool)

(assert (=> d!1217824 (= (Forall2!1124 lambda!128259) (choose!25073 lambda!128259))))

(declare-fun bs!593909 () Bool)

(assert (= bs!593909 d!1217824))

(declare-fun m!4708459 () Bool)

(assert (=> bs!593909 m!4708459))

(assert (=> d!1217758 d!1217824))

(assert (=> d!1217716 d!1217680))

(declare-fun d!1217826 () Bool)

(assert (not d!1217826))

(assert (=> b!4101727 d!1217826))

(declare-fun d!1217830 () Bool)

(declare-fun choose!25074 (Int) Bool)

(assert (=> d!1217830 (= (Forall!1524 lambda!128257) (choose!25074 lambda!128257))))

(declare-fun bs!593910 () Bool)

(assert (= bs!593910 d!1217830))

(declare-fun m!4708467 () Bool)

(assert (=> bs!593910 m!4708467))

(assert (=> d!1217740 d!1217830))

(declare-fun d!1217832 () Bool)

(assert (=> d!1217832 (= (content!6798 Nil!44065) ((as const (Array String!50629 Bool)) false))))

(assert (=> d!1217764 d!1217832))

(declare-fun d!1217836 () Bool)

(declare-fun lt!1467051 () Bool)

(assert (=> d!1217836 (= lt!1467051 (select (content!6798 (Cons!44065 (tag!8006 (h!49484 (Cons!44064 (h!49484 rTail!27) (Cons!44064 rHead!24 (t!339845 rTail!27))))) Nil!44065)) (tag!8006 (h!49484 (t!339845 (Cons!44064 (h!49484 rTail!27) (Cons!44064 rHead!24 (t!339845 rTail!27))))))))))

(declare-fun e!2545556 () Bool)

(assert (=> d!1217836 (= lt!1467051 e!2545556)))

(declare-fun res!1677036 () Bool)

(assert (=> d!1217836 (=> (not res!1677036) (not e!2545556))))

(assert (=> d!1217836 (= res!1677036 ((_ is Cons!44065) (Cons!44065 (tag!8006 (h!49484 (Cons!44064 (h!49484 rTail!27) (Cons!44064 rHead!24 (t!339845 rTail!27))))) Nil!44065)))))

(assert (=> d!1217836 (= (contains!8824 (Cons!44065 (tag!8006 (h!49484 (Cons!44064 (h!49484 rTail!27) (Cons!44064 rHead!24 (t!339845 rTail!27))))) Nil!44065) (tag!8006 (h!49484 (t!339845 (Cons!44064 (h!49484 rTail!27) (Cons!44064 rHead!24 (t!339845 rTail!27))))))) lt!1467051)))

(declare-fun b!4101847 () Bool)

(declare-fun e!2545555 () Bool)

(assert (=> b!4101847 (= e!2545556 e!2545555)))

(declare-fun res!1677035 () Bool)

(assert (=> b!4101847 (=> res!1677035 e!2545555)))

(assert (=> b!4101847 (= res!1677035 (= (h!49485 (Cons!44065 (tag!8006 (h!49484 (Cons!44064 (h!49484 rTail!27) (Cons!44064 rHead!24 (t!339845 rTail!27))))) Nil!44065)) (tag!8006 (h!49484 (t!339845 (Cons!44064 (h!49484 rTail!27) (Cons!44064 rHead!24 (t!339845 rTail!27))))))))))

(declare-fun b!4101848 () Bool)

(assert (=> b!4101848 (= e!2545555 (contains!8824 (t!339846 (Cons!44065 (tag!8006 (h!49484 (Cons!44064 (h!49484 rTail!27) (Cons!44064 rHead!24 (t!339845 rTail!27))))) Nil!44065)) (tag!8006 (h!49484 (t!339845 (Cons!44064 (h!49484 rTail!27) (Cons!44064 rHead!24 (t!339845 rTail!27))))))))))

(assert (= (and d!1217836 res!1677036) b!4101847))

(assert (= (and b!4101847 (not res!1677035)) b!4101848))

(declare-fun m!4708473 () Bool)

(assert (=> d!1217836 m!4708473))

(declare-fun m!4708475 () Bool)

(assert (=> d!1217836 m!4708475))

(declare-fun m!4708479 () Bool)

(assert (=> b!4101848 m!4708479))

(assert (=> b!4101728 d!1217836))

(declare-fun bs!593912 () Bool)

(declare-fun d!1217840 () Bool)

(assert (= bs!593912 (and d!1217840 d!1217726)))

(declare-fun lambda!128267 () Int)

(assert (=> bs!593912 (= (= (toValue!9754 (transformation!7146 (h!49484 (t!339845 rTail!27)))) (toValue!9754 (transformation!7146 (h!49484 rTail!27)))) (= lambda!128267 lambda!128251))))

(declare-fun bs!593913 () Bool)

(assert (= bs!593913 (and d!1217840 d!1217758)))

(assert (=> bs!593913 (= (= (toValue!9754 (transformation!7146 (h!49484 (t!339845 rTail!27)))) (toValue!9754 (transformation!7146 rHead!24))) (= lambda!128267 lambda!128259))))

(assert (=> d!1217840 true))

(assert (=> d!1217840 (< (dynLambda!18874 order!23207 (toValue!9754 (transformation!7146 (h!49484 (t!339845 rTail!27))))) (dynLambda!18875 order!23209 lambda!128267))))

(assert (=> d!1217840 (= (equivClasses!2970 (toChars!9613 (transformation!7146 (h!49484 (t!339845 rTail!27)))) (toValue!9754 (transformation!7146 (h!49484 (t!339845 rTail!27))))) (Forall2!1124 lambda!128267))))

(declare-fun bs!593914 () Bool)

(assert (= bs!593914 d!1217840))

(declare-fun m!4708485 () Bool)

(assert (=> bs!593914 m!4708485))

(assert (=> b!4101715 d!1217840))

(assert (=> bs!593896 d!1217762))

(declare-fun d!1217844 () Bool)

(declare-fun res!1677041 () Bool)

(declare-fun e!2545560 () Bool)

(assert (=> d!1217844 (=> res!1677041 e!2545560)))

(assert (=> d!1217844 (= res!1677041 ((_ is Nil!44064) (t!339845 (t!339845 (Cons!44064 (h!49484 rTail!27) (Cons!44064 rHead!24 (t!339845 rTail!27)))))))))

(assert (=> d!1217844 (= (noDuplicateTag!2825 thiss!26455 (t!339845 (t!339845 (Cons!44064 (h!49484 rTail!27) (Cons!44064 rHead!24 (t!339845 rTail!27))))) (Cons!44065 (tag!8006 (h!49484 (t!339845 (Cons!44064 (h!49484 rTail!27) (Cons!44064 rHead!24 (t!339845 rTail!27)))))) (Cons!44065 (tag!8006 (h!49484 (Cons!44064 (h!49484 rTail!27) (Cons!44064 rHead!24 (t!339845 rTail!27))))) Nil!44065))) e!2545560)))

(declare-fun b!4101853 () Bool)

(declare-fun e!2545561 () Bool)

(assert (=> b!4101853 (= e!2545560 e!2545561)))

(declare-fun res!1677042 () Bool)

(assert (=> b!4101853 (=> (not res!1677042) (not e!2545561))))

(assert (=> b!4101853 (= res!1677042 (not (contains!8824 (Cons!44065 (tag!8006 (h!49484 (t!339845 (Cons!44064 (h!49484 rTail!27) (Cons!44064 rHead!24 (t!339845 rTail!27)))))) (Cons!44065 (tag!8006 (h!49484 (Cons!44064 (h!49484 rTail!27) (Cons!44064 rHead!24 (t!339845 rTail!27))))) Nil!44065)) (tag!8006 (h!49484 (t!339845 (t!339845 (Cons!44064 (h!49484 rTail!27) (Cons!44064 rHead!24 (t!339845 rTail!27))))))))))))

(declare-fun b!4101854 () Bool)

(assert (=> b!4101854 (= e!2545561 (noDuplicateTag!2825 thiss!26455 (t!339845 (t!339845 (t!339845 (Cons!44064 (h!49484 rTail!27) (Cons!44064 rHead!24 (t!339845 rTail!27)))))) (Cons!44065 (tag!8006 (h!49484 (t!339845 (t!339845 (Cons!44064 (h!49484 rTail!27) (Cons!44064 rHead!24 (t!339845 rTail!27))))))) (Cons!44065 (tag!8006 (h!49484 (t!339845 (Cons!44064 (h!49484 rTail!27) (Cons!44064 rHead!24 (t!339845 rTail!27)))))) (Cons!44065 (tag!8006 (h!49484 (Cons!44064 (h!49484 rTail!27) (Cons!44064 rHead!24 (t!339845 rTail!27))))) Nil!44065)))))))

(assert (= (and d!1217844 (not res!1677041)) b!4101853))

(assert (= (and b!4101853 res!1677042) b!4101854))

(declare-fun m!4708487 () Bool)

(assert (=> b!4101853 m!4708487))

(declare-fun m!4708489 () Bool)

(assert (=> b!4101854 m!4708489))

(assert (=> b!4101729 d!1217844))

(declare-fun d!1217846 () Bool)

(assert (=> d!1217846 (= (Forall2!1124 lambda!128251) (choose!25073 lambda!128251))))

(declare-fun bs!593919 () Bool)

(assert (= bs!593919 d!1217846))

(declare-fun m!4708491 () Bool)

(assert (=> bs!593919 m!4708491))

(assert (=> d!1217726 d!1217846))

(declare-fun d!1217848 () Bool)

(declare-fun res!1677043 () Bool)

(declare-fun e!2545562 () Bool)

(assert (=> d!1217848 (=> res!1677043 e!2545562)))

(assert (=> d!1217848 (= res!1677043 ((_ is Nil!44064) (t!339845 rTail!27)))))

(assert (=> d!1217848 (= (forall!8423 (t!339845 rTail!27) lambda!128239) e!2545562)))

(declare-fun b!4101855 () Bool)

(declare-fun e!2545563 () Bool)

(assert (=> b!4101855 (= e!2545562 e!2545563)))

(declare-fun res!1677044 () Bool)

(assert (=> b!4101855 (=> (not res!1677044) (not e!2545563))))

(assert (=> b!4101855 (= res!1677044 (dynLambda!18876 lambda!128239 (h!49484 (t!339845 rTail!27))))))

(declare-fun b!4101856 () Bool)

(assert (=> b!4101856 (= e!2545563 (forall!8423 (t!339845 (t!339845 rTail!27)) lambda!128239))))

(assert (= (and d!1217848 (not res!1677043)) b!4101855))

(assert (= (and b!4101855 res!1677044) b!4101856))

(declare-fun b_lambda!120535 () Bool)

(assert (=> (not b_lambda!120535) (not b!4101855)))

(declare-fun m!4708499 () Bool)

(assert (=> b!4101855 m!4708499))

(declare-fun m!4708501 () Bool)

(assert (=> b!4101856 m!4708501))

(assert (=> b!4101649 d!1217848))

(declare-fun bs!593921 () Bool)

(declare-fun d!1217852 () Bool)

(assert (= bs!593921 (and d!1217852 d!1217740)))

(declare-fun lambda!128269 () Int)

(assert (=> bs!593921 (= (and (= (toChars!9613 (transformation!7146 (h!49484 (t!339845 rTail!27)))) (toChars!9613 (transformation!7146 (h!49484 rTail!27)))) (= (toValue!9754 (transformation!7146 (h!49484 (t!339845 rTail!27)))) (toValue!9754 (transformation!7146 (h!49484 rTail!27))))) (= lambda!128269 lambda!128257))))

(declare-fun bs!593922 () Bool)

(assert (= bs!593922 (and d!1217852 d!1217760)))

(assert (=> bs!593922 (= (and (= (toChars!9613 (transformation!7146 (h!49484 (t!339845 rTail!27)))) (toChars!9613 (transformation!7146 rHead!24))) (= (toValue!9754 (transformation!7146 (h!49484 (t!339845 rTail!27)))) (toValue!9754 (transformation!7146 rHead!24)))) (= lambda!128269 lambda!128260))))

(assert (=> d!1217852 true))

(assert (=> d!1217852 (< (dynLambda!18878 order!23211 (toChars!9613 (transformation!7146 (h!49484 (t!339845 rTail!27))))) (dynLambda!18879 order!23213 lambda!128269))))

(assert (=> d!1217852 true))

(assert (=> d!1217852 (< (dynLambda!18874 order!23207 (toValue!9754 (transformation!7146 (h!49484 (t!339845 rTail!27))))) (dynLambda!18879 order!23213 lambda!128269))))

(assert (=> d!1217852 (= (semiInverseModEq!3071 (toChars!9613 (transformation!7146 (h!49484 (t!339845 rTail!27)))) (toValue!9754 (transformation!7146 (h!49484 (t!339845 rTail!27))))) (Forall!1524 lambda!128269))))

(declare-fun bs!593923 () Bool)

(assert (= bs!593923 d!1217852))

(declare-fun m!4708505 () Bool)

(assert (=> bs!593923 m!4708505))

(assert (=> d!1217756 d!1217852))

(declare-fun d!1217854 () Bool)

(assert (=> d!1217854 (= (inv!58768 (tag!8006 (h!49484 (t!339845 (t!339845 rTail!27))))) (= (mod (str.len (value!224276 (tag!8006 (h!49484 (t!339845 (t!339845 rTail!27)))))) 2) 0))))

(assert (=> b!4101775 d!1217854))

(declare-fun d!1217856 () Bool)

(declare-fun res!1677045 () Bool)

(declare-fun e!2545566 () Bool)

(assert (=> d!1217856 (=> (not res!1677045) (not e!2545566))))

(assert (=> d!1217856 (= res!1677045 (semiInverseModEq!3071 (toChars!9613 (transformation!7146 (h!49484 (t!339845 (t!339845 rTail!27))))) (toValue!9754 (transformation!7146 (h!49484 (t!339845 (t!339845 rTail!27)))))))))

(assert (=> d!1217856 (= (inv!58770 (transformation!7146 (h!49484 (t!339845 (t!339845 rTail!27))))) e!2545566)))

(declare-fun b!4101865 () Bool)

(assert (=> b!4101865 (= e!2545566 (equivClasses!2970 (toChars!9613 (transformation!7146 (h!49484 (t!339845 (t!339845 rTail!27))))) (toValue!9754 (transformation!7146 (h!49484 (t!339845 (t!339845 rTail!27)))))))))

(assert (= (and d!1217856 res!1677045) b!4101865))

(declare-fun m!4708507 () Bool)

(assert (=> d!1217856 m!4708507))

(declare-fun m!4708509 () Bool)

(assert (=> b!4101865 m!4708509))

(assert (=> b!4101775 d!1217856))

(declare-fun b!4101959 () Bool)

(declare-fun res!1677057 () Bool)

(declare-fun e!2545607 () Bool)

(assert (=> b!4101959 (=> res!1677057 e!2545607)))

(assert (=> b!4101959 (= res!1677057 (not ((_ is Concat!19427) (regex!7146 (h!49484 rTail!27)))))))

(declare-fun e!2545609 () Bool)

(assert (=> b!4101959 (= e!2545609 e!2545607)))

(declare-fun b!4101960 () Bool)

(declare-fun e!2545606 () Bool)

(declare-fun call!289798 () Bool)

(assert (=> b!4101960 (= e!2545606 call!289798)))

(declare-fun b!4101961 () Bool)

(declare-fun e!2545604 () Bool)

(declare-fun e!2545603 () Bool)

(assert (=> b!4101961 (= e!2545604 e!2545603)))

(declare-fun c!706532 () Bool)

(assert (=> b!4101961 (= c!706532 ((_ is Star!12051) (regex!7146 (h!49484 rTail!27))))))

(declare-fun b!4101963 () Bool)

(declare-fun res!1677060 () Bool)

(declare-fun e!2545608 () Bool)

(assert (=> b!4101963 (=> (not res!1677060) (not e!2545608))))

(declare-fun call!289797 () Bool)

(assert (=> b!4101963 (= res!1677060 call!289797)))

(assert (=> b!4101963 (= e!2545609 e!2545608)))

(declare-fun bm!289791 () Bool)

(declare-fun call!289796 () Bool)

(assert (=> bm!289791 (= call!289798 call!289796)))

(declare-fun b!4101962 () Bool)

(assert (=> b!4101962 (= e!2545603 e!2545609)))

(declare-fun c!706533 () Bool)

(assert (=> b!4101962 (= c!706533 ((_ is Union!12051) (regex!7146 (h!49484 rTail!27))))))

(declare-fun d!1217858 () Bool)

(declare-fun res!1677059 () Bool)

(assert (=> d!1217858 (=> res!1677059 e!2545604)))

(assert (=> d!1217858 (= res!1677059 ((_ is ElementMatch!12051) (regex!7146 (h!49484 rTail!27))))))

(assert (=> d!1217858 (= (validRegex!5455 (regex!7146 (h!49484 rTail!27))) e!2545604)))

(declare-fun b!4101964 () Bool)

(assert (=> b!4101964 (= e!2545607 e!2545606)))

(declare-fun res!1677056 () Bool)

(assert (=> b!4101964 (=> (not res!1677056) (not e!2545606))))

(assert (=> b!4101964 (= res!1677056 call!289797)))

(declare-fun b!4101965 () Bool)

(declare-fun e!2545605 () Bool)

(assert (=> b!4101965 (= e!2545605 call!289796)))

(declare-fun bm!289792 () Bool)

(assert (=> bm!289792 (= call!289796 (validRegex!5455 (ite c!706532 (reg!12380 (regex!7146 (h!49484 rTail!27))) (ite c!706533 (regTwo!24615 (regex!7146 (h!49484 rTail!27))) (regTwo!24614 (regex!7146 (h!49484 rTail!27)))))))))

(declare-fun b!4101966 () Bool)

(assert (=> b!4101966 (= e!2545608 call!289798)))

(declare-fun bm!289793 () Bool)

(assert (=> bm!289793 (= call!289797 (validRegex!5455 (ite c!706533 (regOne!24615 (regex!7146 (h!49484 rTail!27))) (regOne!24614 (regex!7146 (h!49484 rTail!27))))))))

(declare-fun b!4101967 () Bool)

(assert (=> b!4101967 (= e!2545603 e!2545605)))

(declare-fun res!1677058 () Bool)

(assert (=> b!4101967 (= res!1677058 (not (nullable!4255 (reg!12380 (regex!7146 (h!49484 rTail!27))))))))

(assert (=> b!4101967 (=> (not res!1677058) (not e!2545605))))

(assert (= (and d!1217858 (not res!1677059)) b!4101961))

(assert (= (and b!4101961 c!706532) b!4101967))

(assert (= (and b!4101961 (not c!706532)) b!4101962))

(assert (= (and b!4101967 res!1677058) b!4101965))

(assert (= (and b!4101962 c!706533) b!4101963))

(assert (= (and b!4101962 (not c!706533)) b!4101959))

(assert (= (and b!4101963 res!1677060) b!4101966))

(assert (= (and b!4101959 (not res!1677057)) b!4101964))

(assert (= (and b!4101964 res!1677056) b!4101960))

(assert (= (or b!4101966 b!4101960) bm!289791))

(assert (= (or b!4101963 b!4101964) bm!289793))

(assert (= (or b!4101965 bm!289791) bm!289792))

(declare-fun m!4708515 () Bool)

(assert (=> bm!289792 m!4708515))

(declare-fun m!4708517 () Bool)

(assert (=> bm!289793 m!4708517))

(declare-fun m!4708519 () Bool)

(assert (=> b!4101967 m!4708519))

(assert (=> d!1217762 d!1217858))

(declare-fun d!1217860 () Bool)

(declare-fun nullableFct!1195 (Regex!12051) Bool)

(assert (=> d!1217860 (= (nullable!4255 (regex!7146 (h!49484 rTail!27))) (nullableFct!1195 (regex!7146 (h!49484 rTail!27))))))

(declare-fun bs!593924 () Bool)

(assert (= bs!593924 d!1217860))

(declare-fun m!4708521 () Bool)

(assert (=> bs!593924 m!4708521))

(assert (=> b!4101720 d!1217860))

(declare-fun d!1217862 () Bool)

(assert (=> d!1217862 (= (Forall!1524 lambda!128260) (choose!25074 lambda!128260))))

(declare-fun bs!593925 () Bool)

(assert (= bs!593925 d!1217862))

(declare-fun m!4708523 () Bool)

(assert (=> bs!593925 m!4708523))

(assert (=> d!1217760 d!1217862))

(declare-fun d!1217864 () Bool)

(declare-fun res!1677061 () Bool)

(declare-fun e!2545615 () Bool)

(assert (=> d!1217864 (=> (not res!1677061) (not e!2545615))))

(assert (=> d!1217864 (= res!1677061 (validRegex!5455 (regex!7146 (h!49484 (t!339845 rTail!27)))))))

(assert (=> d!1217864 (= (ruleValid!3045 thiss!26455 (h!49484 (t!339845 rTail!27))) e!2545615)))

(declare-fun b!4101988 () Bool)

(declare-fun res!1677062 () Bool)

(assert (=> b!4101988 (=> (not res!1677062) (not e!2545615))))

(assert (=> b!4101988 (= res!1677062 (not (nullable!4255 (regex!7146 (h!49484 (t!339845 rTail!27))))))))

(declare-fun b!4101989 () Bool)

(assert (=> b!4101989 (= e!2545615 (not (= (tag!8006 (h!49484 (t!339845 rTail!27))) (String!50630 ""))))))

(assert (= (and d!1217864 res!1677061) b!4101988))

(assert (= (and b!4101988 res!1677062) b!4101989))

(declare-fun m!4708525 () Bool)

(assert (=> d!1217864 m!4708525))

(declare-fun m!4708527 () Bool)

(assert (=> b!4101988 m!4708527))

(assert (=> b!4101705 d!1217864))

(declare-fun bs!593926 () Bool)

(declare-fun d!1217866 () Bool)

(assert (= bs!593926 (and d!1217866 d!1217694)))

(declare-fun lambda!128270 () Int)

(assert (=> bs!593926 (= lambda!128270 lambda!128239)))

(declare-fun bs!593927 () Bool)

(assert (= bs!593927 (and d!1217866 d!1217746)))

(assert (=> bs!593927 (= lambda!128270 lambda!128258)))

(declare-fun bs!593928 () Bool)

(assert (= bs!593928 (and d!1217866 d!1217766)))

(assert (=> bs!593928 (= lambda!128270 lambda!128263)))

(assert (=> d!1217866 true))

(declare-fun lt!1467053 () Bool)

(assert (=> d!1217866 (= lt!1467053 (forall!8423 (t!339845 (t!339845 rTail!27)) lambda!128270))))

(declare-fun e!2545618 () Bool)

(assert (=> d!1217866 (= lt!1467053 e!2545618)))

(declare-fun res!1677063 () Bool)

(assert (=> d!1217866 (=> res!1677063 e!2545618)))

(assert (=> d!1217866 (= res!1677063 (not ((_ is Cons!44064) (t!339845 (t!339845 rTail!27)))))))

(assert (=> d!1217866 (= (rulesValidInductive!2649 thiss!26455 (t!339845 (t!339845 rTail!27))) lt!1467053)))

(declare-fun b!4101994 () Bool)

(declare-fun e!2545617 () Bool)

(assert (=> b!4101994 (= e!2545618 e!2545617)))

(declare-fun res!1677064 () Bool)

(assert (=> b!4101994 (=> (not res!1677064) (not e!2545617))))

(assert (=> b!4101994 (= res!1677064 (ruleValid!3045 thiss!26455 (h!49484 (t!339845 (t!339845 rTail!27)))))))

(declare-fun b!4101995 () Bool)

(assert (=> b!4101995 (= e!2545617 (rulesValidInductive!2649 thiss!26455 (t!339845 (t!339845 (t!339845 rTail!27)))))))

(assert (= (and d!1217866 (not res!1677063)) b!4101994))

(assert (= (and b!4101994 res!1677064) b!4101995))

(declare-fun m!4708529 () Bool)

(assert (=> d!1217866 m!4708529))

(declare-fun m!4708531 () Bool)

(assert (=> b!4101994 m!4708531))

(declare-fun m!4708533 () Bool)

(assert (=> b!4101995 m!4708533))

(assert (=> b!4101706 d!1217866))

(declare-fun bs!593929 () Bool)

(declare-fun d!1217868 () Bool)

(assert (= bs!593929 (and d!1217868 d!1217694)))

(declare-fun lambda!128271 () Int)

(assert (=> bs!593929 (= lambda!128271 lambda!128239)))

(declare-fun bs!593930 () Bool)

(assert (= bs!593930 (and d!1217868 d!1217746)))

(assert (=> bs!593930 (= lambda!128271 lambda!128258)))

(declare-fun bs!593931 () Bool)

(assert (= bs!593931 (and d!1217868 d!1217766)))

(assert (=> bs!593931 (= lambda!128271 lambda!128263)))

(declare-fun bs!593932 () Bool)

(assert (= bs!593932 (and d!1217868 d!1217866)))

(assert (=> bs!593932 (= lambda!128271 lambda!128270)))

(assert (=> d!1217868 true))

(declare-fun lt!1467054 () Bool)

(assert (=> d!1217868 (= lt!1467054 (forall!8423 lt!1467005 lambda!128271))))

(declare-fun e!2545623 () Bool)

(assert (=> d!1217868 (= lt!1467054 e!2545623)))

(declare-fun res!1677065 () Bool)

(assert (=> d!1217868 (=> res!1677065 e!2545623)))

(assert (=> d!1217868 (= res!1677065 (not ((_ is Cons!44064) lt!1467005)))))

(assert (=> d!1217868 (= (rulesValidInductive!2649 thiss!26455 lt!1467005) lt!1467054)))

(declare-fun b!4102008 () Bool)

(declare-fun e!2545622 () Bool)

(assert (=> b!4102008 (= e!2545623 e!2545622)))

(declare-fun res!1677066 () Bool)

(assert (=> b!4102008 (=> (not res!1677066) (not e!2545622))))

(assert (=> b!4102008 (= res!1677066 (ruleValid!3045 thiss!26455 (h!49484 lt!1467005)))))

(declare-fun b!4102009 () Bool)

(assert (=> b!4102009 (= e!2545622 (rulesValidInductive!2649 thiss!26455 (t!339845 lt!1467005)))))

(assert (= (and d!1217868 (not res!1677065)) b!4102008))

(assert (= (and b!4102008 res!1677066) b!4102009))

(declare-fun m!4708535 () Bool)

(assert (=> d!1217868 m!4708535))

(declare-fun m!4708537 () Bool)

(assert (=> b!4102008 m!4708537))

(declare-fun m!4708539 () Bool)

(assert (=> b!4102009 m!4708539))

(assert (=> d!1217766 d!1217868))

(declare-fun d!1217870 () Bool)

(declare-fun res!1677067 () Bool)

(declare-fun e!2545626 () Bool)

(assert (=> d!1217870 (=> res!1677067 e!2545626)))

(assert (=> d!1217870 (= res!1677067 ((_ is Nil!44064) lt!1467005))))

(assert (=> d!1217870 (= (forall!8423 lt!1467005 lambda!128263) e!2545626)))

(declare-fun b!4102018 () Bool)

(declare-fun e!2545627 () Bool)

(assert (=> b!4102018 (= e!2545626 e!2545627)))

(declare-fun res!1677068 () Bool)

(assert (=> b!4102018 (=> (not res!1677068) (not e!2545627))))

(assert (=> b!4102018 (= res!1677068 (dynLambda!18876 lambda!128263 (h!49484 lt!1467005)))))

(declare-fun b!4102019 () Bool)

(assert (=> b!4102019 (= e!2545627 (forall!8423 (t!339845 lt!1467005) lambda!128263))))

(assert (= (and d!1217870 (not res!1677067)) b!4102018))

(assert (= (and b!4102018 res!1677068) b!4102019))

(declare-fun b_lambda!120537 () Bool)

(assert (=> (not b_lambda!120537) (not b!4102018)))

(declare-fun m!4708541 () Bool)

(assert (=> b!4102018 m!4708541))

(declare-fun m!4708543 () Bool)

(assert (=> b!4102019 m!4708543))

(assert (=> d!1217766 d!1217870))

(declare-fun d!1217872 () Bool)

(declare-fun lt!1467055 () Bool)

(assert (=> d!1217872 (= lt!1467055 (select (content!6798 Nil!44065) (tag!8006 (h!49484 (Cons!44064 rHead!24 (Cons!44064 (h!49484 rTail!27) (t!339845 rTail!27)))))))))

(declare-fun e!2545631 () Bool)

(assert (=> d!1217872 (= lt!1467055 e!2545631)))

(declare-fun res!1677070 () Bool)

(assert (=> d!1217872 (=> (not res!1677070) (not e!2545631))))

(assert (=> d!1217872 (= res!1677070 ((_ is Cons!44065) Nil!44065))))

(assert (=> d!1217872 (= (contains!8824 Nil!44065 (tag!8006 (h!49484 (Cons!44064 rHead!24 (Cons!44064 (h!49484 rTail!27) (t!339845 rTail!27)))))) lt!1467055)))

(declare-fun b!4102028 () Bool)

(declare-fun e!2545630 () Bool)

(assert (=> b!4102028 (= e!2545631 e!2545630)))

(declare-fun res!1677069 () Bool)

(assert (=> b!4102028 (=> res!1677069 e!2545630)))

(assert (=> b!4102028 (= res!1677069 (= (h!49485 Nil!44065) (tag!8006 (h!49484 (Cons!44064 rHead!24 (Cons!44064 (h!49484 rTail!27) (t!339845 rTail!27)))))))))

(declare-fun b!4102029 () Bool)

(assert (=> b!4102029 (= e!2545630 (contains!8824 (t!339846 Nil!44065) (tag!8006 (h!49484 (Cons!44064 rHead!24 (Cons!44064 (h!49484 rTail!27) (t!339845 rTail!27)))))))))

(assert (= (and d!1217872 res!1677070) b!4102028))

(assert (= (and b!4102028 (not res!1677069)) b!4102029))

(assert (=> d!1217872 m!4708359))

(declare-fun m!4708545 () Bool)

(assert (=> d!1217872 m!4708545))

(declare-fun m!4708547 () Bool)

(assert (=> b!4102029 m!4708547))

(assert (=> b!4101618 d!1217872))

(declare-fun d!1217874 () Bool)

(declare-fun res!1677071 () Bool)

(declare-fun e!2545633 () Bool)

(assert (=> d!1217874 (=> res!1677071 e!2545633)))

(assert (=> d!1217874 (= res!1677071 ((_ is Nil!44064) (t!339845 (Cons!44064 rHead!24 (Cons!44064 (h!49484 rTail!27) (t!339845 rTail!27))))))))

(assert (=> d!1217874 (= (noDuplicateTag!2825 thiss!26455 (t!339845 (Cons!44064 rHead!24 (Cons!44064 (h!49484 rTail!27) (t!339845 rTail!27)))) (Cons!44065 (tag!8006 (h!49484 (Cons!44064 rHead!24 (Cons!44064 (h!49484 rTail!27) (t!339845 rTail!27))))) Nil!44065)) e!2545633)))

(declare-fun b!4102034 () Bool)

(declare-fun e!2545634 () Bool)

(assert (=> b!4102034 (= e!2545633 e!2545634)))

(declare-fun res!1677072 () Bool)

(assert (=> b!4102034 (=> (not res!1677072) (not e!2545634))))

(assert (=> b!4102034 (= res!1677072 (not (contains!8824 (Cons!44065 (tag!8006 (h!49484 (Cons!44064 rHead!24 (Cons!44064 (h!49484 rTail!27) (t!339845 rTail!27))))) Nil!44065) (tag!8006 (h!49484 (t!339845 (Cons!44064 rHead!24 (Cons!44064 (h!49484 rTail!27) (t!339845 rTail!27)))))))))))

(declare-fun b!4102035 () Bool)

(assert (=> b!4102035 (= e!2545634 (noDuplicateTag!2825 thiss!26455 (t!339845 (t!339845 (Cons!44064 rHead!24 (Cons!44064 (h!49484 rTail!27) (t!339845 rTail!27))))) (Cons!44065 (tag!8006 (h!49484 (t!339845 (Cons!44064 rHead!24 (Cons!44064 (h!49484 rTail!27) (t!339845 rTail!27)))))) (Cons!44065 (tag!8006 (h!49484 (Cons!44064 rHead!24 (Cons!44064 (h!49484 rTail!27) (t!339845 rTail!27))))) Nil!44065))))))

(assert (= (and d!1217874 (not res!1677071)) b!4102034))

(assert (= (and b!4102034 res!1677072) b!4102035))

(declare-fun m!4708549 () Bool)

(assert (=> b!4102034 m!4708549))

(declare-fun m!4708551 () Bool)

(assert (=> b!4102035 m!4708551))

(assert (=> b!4101619 d!1217874))

(declare-fun b!4102047 () Bool)

(declare-fun e!2545637 () Bool)

(declare-fun tp!1242373 () Bool)

(declare-fun tp!1242371 () Bool)

(assert (=> b!4102047 (= e!2545637 (and tp!1242373 tp!1242371))))

(assert (=> b!4101771 (= tp!1242179 e!2545637)))

(declare-fun b!4102045 () Bool)

(declare-fun tp!1242372 () Bool)

(declare-fun tp!1242374 () Bool)

(assert (=> b!4102045 (= e!2545637 (and tp!1242372 tp!1242374))))

(declare-fun b!4102046 () Bool)

(declare-fun tp!1242375 () Bool)

(assert (=> b!4102046 (= e!2545637 tp!1242375)))

(declare-fun b!4102044 () Bool)

(assert (=> b!4102044 (= e!2545637 tp_is_empty!21085)))

(assert (= (and b!4101771 ((_ is ElementMatch!12051) (regOne!24614 (reg!12380 (regex!7146 rHead!24))))) b!4102044))

(assert (= (and b!4101771 ((_ is Concat!19427) (regOne!24614 (reg!12380 (regex!7146 rHead!24))))) b!4102045))

(assert (= (and b!4101771 ((_ is Star!12051) (regOne!24614 (reg!12380 (regex!7146 rHead!24))))) b!4102046))

(assert (= (and b!4101771 ((_ is Union!12051) (regOne!24614 (reg!12380 (regex!7146 rHead!24))))) b!4102047))

(declare-fun b!4102055 () Bool)

(declare-fun e!2545639 () Bool)

(declare-fun tp!1242383 () Bool)

(declare-fun tp!1242381 () Bool)

(assert (=> b!4102055 (= e!2545639 (and tp!1242383 tp!1242381))))

(assert (=> b!4101771 (= tp!1242181 e!2545639)))

(declare-fun b!4102053 () Bool)

(declare-fun tp!1242382 () Bool)

(declare-fun tp!1242384 () Bool)

(assert (=> b!4102053 (= e!2545639 (and tp!1242382 tp!1242384))))

(declare-fun b!4102054 () Bool)

(declare-fun tp!1242385 () Bool)

(assert (=> b!4102054 (= e!2545639 tp!1242385)))

(declare-fun b!4102052 () Bool)

(assert (=> b!4102052 (= e!2545639 tp_is_empty!21085)))

(assert (= (and b!4101771 ((_ is ElementMatch!12051) (regTwo!24614 (reg!12380 (regex!7146 rHead!24))))) b!4102052))

(assert (= (and b!4101771 ((_ is Concat!19427) (regTwo!24614 (reg!12380 (regex!7146 rHead!24))))) b!4102053))

(assert (= (and b!4101771 ((_ is Star!12051) (regTwo!24614 (reg!12380 (regex!7146 rHead!24))))) b!4102054))

(assert (= (and b!4101771 ((_ is Union!12051) (regTwo!24614 (reg!12380 (regex!7146 rHead!24))))) b!4102055))

(declare-fun b!4102063 () Bool)

(declare-fun e!2545641 () Bool)

(declare-fun tp!1242393 () Bool)

(declare-fun tp!1242391 () Bool)

(assert (=> b!4102063 (= e!2545641 (and tp!1242393 tp!1242391))))

(assert (=> b!4101763 (= tp!1242169 e!2545641)))

(declare-fun b!4102061 () Bool)

(declare-fun tp!1242392 () Bool)

(declare-fun tp!1242394 () Bool)

(assert (=> b!4102061 (= e!2545641 (and tp!1242392 tp!1242394))))

(declare-fun b!4102062 () Bool)

(declare-fun tp!1242395 () Bool)

(assert (=> b!4102062 (= e!2545641 tp!1242395)))

(declare-fun b!4102060 () Bool)

(assert (=> b!4102060 (= e!2545641 tp_is_empty!21085)))

(assert (= (and b!4101763 ((_ is ElementMatch!12051) (regOne!24614 (regOne!24614 (regex!7146 (h!49484 rTail!27)))))) b!4102060))

(assert (= (and b!4101763 ((_ is Concat!19427) (regOne!24614 (regOne!24614 (regex!7146 (h!49484 rTail!27)))))) b!4102061))

(assert (= (and b!4101763 ((_ is Star!12051) (regOne!24614 (regOne!24614 (regex!7146 (h!49484 rTail!27)))))) b!4102062))

(assert (= (and b!4101763 ((_ is Union!12051) (regOne!24614 (regOne!24614 (regex!7146 (h!49484 rTail!27)))))) b!4102063))

(declare-fun b!4102067 () Bool)

(declare-fun e!2545642 () Bool)

(declare-fun tp!1242398 () Bool)

(declare-fun tp!1242396 () Bool)

(assert (=> b!4102067 (= e!2545642 (and tp!1242398 tp!1242396))))

(assert (=> b!4101763 (= tp!1242171 e!2545642)))

(declare-fun b!4102065 () Bool)

(declare-fun tp!1242397 () Bool)

(declare-fun tp!1242399 () Bool)

(assert (=> b!4102065 (= e!2545642 (and tp!1242397 tp!1242399))))

(declare-fun b!4102066 () Bool)

(declare-fun tp!1242400 () Bool)

(assert (=> b!4102066 (= e!2545642 tp!1242400)))

(declare-fun b!4102064 () Bool)

(assert (=> b!4102064 (= e!2545642 tp_is_empty!21085)))

(assert (= (and b!4101763 ((_ is ElementMatch!12051) (regTwo!24614 (regOne!24614 (regex!7146 (h!49484 rTail!27)))))) b!4102064))

(assert (= (and b!4101763 ((_ is Concat!19427) (regTwo!24614 (regOne!24614 (regex!7146 (h!49484 rTail!27)))))) b!4102065))

(assert (= (and b!4101763 ((_ is Star!12051) (regTwo!24614 (regOne!24614 (regex!7146 (h!49484 rTail!27)))))) b!4102066))

(assert (= (and b!4101763 ((_ is Union!12051) (regTwo!24614 (regOne!24614 (regex!7146 (h!49484 rTail!27)))))) b!4102067))

(declare-fun b!4102075 () Bool)

(declare-fun e!2545644 () Bool)

(declare-fun tp!1242408 () Bool)

(declare-fun tp!1242406 () Bool)

(assert (=> b!4102075 (= e!2545644 (and tp!1242408 tp!1242406))))

(assert (=> b!4101755 (= tp!1242159 e!2545644)))

(declare-fun b!4102073 () Bool)

(declare-fun tp!1242407 () Bool)

(declare-fun tp!1242409 () Bool)

(assert (=> b!4102073 (= e!2545644 (and tp!1242407 tp!1242409))))

(declare-fun b!4102074 () Bool)

(declare-fun tp!1242410 () Bool)

(assert (=> b!4102074 (= e!2545644 tp!1242410)))

(declare-fun b!4102072 () Bool)

(assert (=> b!4102072 (= e!2545644 tp_is_empty!21085)))

(assert (= (and b!4101755 ((_ is ElementMatch!12051) (regOne!24614 (regOne!24614 (regex!7146 rHead!24))))) b!4102072))

(assert (= (and b!4101755 ((_ is Concat!19427) (regOne!24614 (regOne!24614 (regex!7146 rHead!24))))) b!4102073))

(assert (= (and b!4101755 ((_ is Star!12051) (regOne!24614 (regOne!24614 (regex!7146 rHead!24))))) b!4102074))

(assert (= (and b!4101755 ((_ is Union!12051) (regOne!24614 (regOne!24614 (regex!7146 rHead!24))))) b!4102075))

(declare-fun b!4102083 () Bool)

(declare-fun e!2545646 () Bool)

(declare-fun tp!1242418 () Bool)

(declare-fun tp!1242416 () Bool)

(assert (=> b!4102083 (= e!2545646 (and tp!1242418 tp!1242416))))

(assert (=> b!4101755 (= tp!1242161 e!2545646)))

(declare-fun b!4102081 () Bool)

(declare-fun tp!1242417 () Bool)

(declare-fun tp!1242419 () Bool)

(assert (=> b!4102081 (= e!2545646 (and tp!1242417 tp!1242419))))

(declare-fun b!4102082 () Bool)

(declare-fun tp!1242420 () Bool)

(assert (=> b!4102082 (= e!2545646 tp!1242420)))

(declare-fun b!4102080 () Bool)

(assert (=> b!4102080 (= e!2545646 tp_is_empty!21085)))

(assert (= (and b!4101755 ((_ is ElementMatch!12051) (regTwo!24614 (regOne!24614 (regex!7146 rHead!24))))) b!4102080))

(assert (= (and b!4101755 ((_ is Concat!19427) (regTwo!24614 (regOne!24614 (regex!7146 rHead!24))))) b!4102081))

(assert (= (and b!4101755 ((_ is Star!12051) (regTwo!24614 (regOne!24614 (regex!7146 rHead!24))))) b!4102082))

(assert (= (and b!4101755 ((_ is Union!12051) (regTwo!24614 (regOne!24614 (regex!7146 rHead!24))))) b!4102083))

(declare-fun b!4102087 () Bool)

(declare-fun e!2545647 () Bool)

(declare-fun tp!1242423 () Bool)

(declare-fun tp!1242421 () Bool)

(assert (=> b!4102087 (= e!2545647 (and tp!1242423 tp!1242421))))

(assert (=> b!4101772 (= tp!1242182 e!2545647)))

(declare-fun b!4102085 () Bool)

(declare-fun tp!1242422 () Bool)

(declare-fun tp!1242424 () Bool)

(assert (=> b!4102085 (= e!2545647 (and tp!1242422 tp!1242424))))

(declare-fun b!4102086 () Bool)

(declare-fun tp!1242425 () Bool)

(assert (=> b!4102086 (= e!2545647 tp!1242425)))

(declare-fun b!4102084 () Bool)

(assert (=> b!4102084 (= e!2545647 tp_is_empty!21085)))

(assert (= (and b!4101772 ((_ is ElementMatch!12051) (reg!12380 (reg!12380 (regex!7146 rHead!24))))) b!4102084))

(assert (= (and b!4101772 ((_ is Concat!19427) (reg!12380 (reg!12380 (regex!7146 rHead!24))))) b!4102085))

(assert (= (and b!4101772 ((_ is Star!12051) (reg!12380 (reg!12380 (regex!7146 rHead!24))))) b!4102086))

(assert (= (and b!4101772 ((_ is Union!12051) (reg!12380 (reg!12380 (regex!7146 rHead!24))))) b!4102087))

(declare-fun b!4102095 () Bool)

(declare-fun e!2545649 () Bool)

(declare-fun tp!1242433 () Bool)

(declare-fun tp!1242431 () Bool)

(assert (=> b!4102095 (= e!2545649 (and tp!1242433 tp!1242431))))

(assert (=> b!4101764 (= tp!1242172 e!2545649)))

(declare-fun b!4102093 () Bool)

(declare-fun tp!1242432 () Bool)

(declare-fun tp!1242434 () Bool)

(assert (=> b!4102093 (= e!2545649 (and tp!1242432 tp!1242434))))

(declare-fun b!4102094 () Bool)

(declare-fun tp!1242435 () Bool)

(assert (=> b!4102094 (= e!2545649 tp!1242435)))

(declare-fun b!4102092 () Bool)

(assert (=> b!4102092 (= e!2545649 tp_is_empty!21085)))

(assert (= (and b!4101764 ((_ is ElementMatch!12051) (reg!12380 (regOne!24614 (regex!7146 (h!49484 rTail!27)))))) b!4102092))

(assert (= (and b!4101764 ((_ is Concat!19427) (reg!12380 (regOne!24614 (regex!7146 (h!49484 rTail!27)))))) b!4102093))

(assert (= (and b!4101764 ((_ is Star!12051) (reg!12380 (regOne!24614 (regex!7146 (h!49484 rTail!27)))))) b!4102094))

(assert (= (and b!4101764 ((_ is Union!12051) (reg!12380 (regOne!24614 (regex!7146 (h!49484 rTail!27)))))) b!4102095))

(declare-fun b!4102099 () Bool)

(declare-fun e!2545650 () Bool)

(declare-fun tp!1242438 () Bool)

(declare-fun tp!1242436 () Bool)

(assert (=> b!4102099 (= e!2545650 (and tp!1242438 tp!1242436))))

(assert (=> b!4101756 (= tp!1242162 e!2545650)))

(declare-fun b!4102097 () Bool)

(declare-fun tp!1242437 () Bool)

(declare-fun tp!1242439 () Bool)

(assert (=> b!4102097 (= e!2545650 (and tp!1242437 tp!1242439))))

(declare-fun b!4102098 () Bool)

(declare-fun tp!1242440 () Bool)

(assert (=> b!4102098 (= e!2545650 tp!1242440)))

(declare-fun b!4102096 () Bool)

(assert (=> b!4102096 (= e!2545650 tp_is_empty!21085)))

(assert (= (and b!4101756 ((_ is ElementMatch!12051) (reg!12380 (regOne!24614 (regex!7146 rHead!24))))) b!4102096))

(assert (= (and b!4101756 ((_ is Concat!19427) (reg!12380 (regOne!24614 (regex!7146 rHead!24))))) b!4102097))

(assert (= (and b!4101756 ((_ is Star!12051) (reg!12380 (regOne!24614 (regex!7146 rHead!24))))) b!4102098))

(assert (= (and b!4101756 ((_ is Union!12051) (reg!12380 (regOne!24614 (regex!7146 rHead!24))))) b!4102099))

(declare-fun b!4102107 () Bool)

(declare-fun e!2545652 () Bool)

(declare-fun tp!1242448 () Bool)

(declare-fun tp!1242446 () Bool)

(assert (=> b!4102107 (= e!2545652 (and tp!1242448 tp!1242446))))

(assert (=> b!4101747 (= tp!1242149 e!2545652)))

(declare-fun b!4102105 () Bool)

(declare-fun tp!1242447 () Bool)

(declare-fun tp!1242449 () Bool)

(assert (=> b!4102105 (= e!2545652 (and tp!1242447 tp!1242449))))

(declare-fun b!4102106 () Bool)

(declare-fun tp!1242450 () Bool)

(assert (=> b!4102106 (= e!2545652 tp!1242450)))

(declare-fun b!4102104 () Bool)

(assert (=> b!4102104 (= e!2545652 tp_is_empty!21085)))

(assert (= (and b!4101747 ((_ is ElementMatch!12051) (regOne!24614 (regTwo!24615 (regex!7146 (h!49484 rTail!27)))))) b!4102104))

(assert (= (and b!4101747 ((_ is Concat!19427) (regOne!24614 (regTwo!24615 (regex!7146 (h!49484 rTail!27)))))) b!4102105))

(assert (= (and b!4101747 ((_ is Star!12051) (regOne!24614 (regTwo!24615 (regex!7146 (h!49484 rTail!27)))))) b!4102106))

(assert (= (and b!4101747 ((_ is Union!12051) (regOne!24614 (regTwo!24615 (regex!7146 (h!49484 rTail!27)))))) b!4102107))

(declare-fun b!4102115 () Bool)

(declare-fun e!2545654 () Bool)

(declare-fun tp!1242458 () Bool)

(declare-fun tp!1242456 () Bool)

(assert (=> b!4102115 (= e!2545654 (and tp!1242458 tp!1242456))))

(assert (=> b!4101747 (= tp!1242151 e!2545654)))

(declare-fun b!4102113 () Bool)

(declare-fun tp!1242457 () Bool)

(declare-fun tp!1242459 () Bool)

(assert (=> b!4102113 (= e!2545654 (and tp!1242457 tp!1242459))))

(declare-fun b!4102114 () Bool)

(declare-fun tp!1242460 () Bool)

(assert (=> b!4102114 (= e!2545654 tp!1242460)))

(declare-fun b!4102112 () Bool)

(assert (=> b!4102112 (= e!2545654 tp_is_empty!21085)))

(assert (= (and b!4101747 ((_ is ElementMatch!12051) (regTwo!24614 (regTwo!24615 (regex!7146 (h!49484 rTail!27)))))) b!4102112))

(assert (= (and b!4101747 ((_ is Concat!19427) (regTwo!24614 (regTwo!24615 (regex!7146 (h!49484 rTail!27)))))) b!4102113))

(assert (= (and b!4101747 ((_ is Star!12051) (regTwo!24614 (regTwo!24615 (regex!7146 (h!49484 rTail!27)))))) b!4102114))

(assert (= (and b!4101747 ((_ is Union!12051) (regTwo!24614 (regTwo!24615 (regex!7146 (h!49484 rTail!27)))))) b!4102115))

(declare-fun b!4102119 () Bool)

(declare-fun e!2545655 () Bool)

(declare-fun tp!1242463 () Bool)

(declare-fun tp!1242461 () Bool)

(assert (=> b!4102119 (= e!2545655 (and tp!1242463 tp!1242461))))

(assert (=> b!4101773 (= tp!1242180 e!2545655)))

(declare-fun b!4102117 () Bool)

(declare-fun tp!1242462 () Bool)

(declare-fun tp!1242464 () Bool)

(assert (=> b!4102117 (= e!2545655 (and tp!1242462 tp!1242464))))

(declare-fun b!4102118 () Bool)

(declare-fun tp!1242465 () Bool)

(assert (=> b!4102118 (= e!2545655 tp!1242465)))

(declare-fun b!4102116 () Bool)

(assert (=> b!4102116 (= e!2545655 tp_is_empty!21085)))

(assert (= (and b!4101773 ((_ is ElementMatch!12051) (regOne!24615 (reg!12380 (regex!7146 rHead!24))))) b!4102116))

(assert (= (and b!4101773 ((_ is Concat!19427) (regOne!24615 (reg!12380 (regex!7146 rHead!24))))) b!4102117))

(assert (= (and b!4101773 ((_ is Star!12051) (regOne!24615 (reg!12380 (regex!7146 rHead!24))))) b!4102118))

(assert (= (and b!4101773 ((_ is Union!12051) (regOne!24615 (reg!12380 (regex!7146 rHead!24))))) b!4102119))

(declare-fun b!4102127 () Bool)

(declare-fun e!2545657 () Bool)

(declare-fun tp!1242473 () Bool)

(declare-fun tp!1242471 () Bool)

(assert (=> b!4102127 (= e!2545657 (and tp!1242473 tp!1242471))))

(assert (=> b!4101773 (= tp!1242178 e!2545657)))

(declare-fun b!4102125 () Bool)

(declare-fun tp!1242472 () Bool)

(declare-fun tp!1242474 () Bool)

(assert (=> b!4102125 (= e!2545657 (and tp!1242472 tp!1242474))))

(declare-fun b!4102126 () Bool)

(declare-fun tp!1242475 () Bool)

(assert (=> b!4102126 (= e!2545657 tp!1242475)))

(declare-fun b!4102124 () Bool)

(assert (=> b!4102124 (= e!2545657 tp_is_empty!21085)))

(assert (= (and b!4101773 ((_ is ElementMatch!12051) (regTwo!24615 (reg!12380 (regex!7146 rHead!24))))) b!4102124))

(assert (= (and b!4101773 ((_ is Concat!19427) (regTwo!24615 (reg!12380 (regex!7146 rHead!24))))) b!4102125))

(assert (= (and b!4101773 ((_ is Star!12051) (regTwo!24615 (reg!12380 (regex!7146 rHead!24))))) b!4102126))

(assert (= (and b!4101773 ((_ is Union!12051) (regTwo!24615 (reg!12380 (regex!7146 rHead!24))))) b!4102127))

(declare-fun b!4102131 () Bool)

(declare-fun e!2545658 () Bool)

(declare-fun tp!1242478 () Bool)

(declare-fun tp!1242476 () Bool)

(assert (=> b!4102131 (= e!2545658 (and tp!1242478 tp!1242476))))

(assert (=> b!4101736 (= tp!1242137 e!2545658)))

(declare-fun b!4102129 () Bool)

(declare-fun tp!1242477 () Bool)

(declare-fun tp!1242479 () Bool)

(assert (=> b!4102129 (= e!2545658 (and tp!1242477 tp!1242479))))

(declare-fun b!4102130 () Bool)

(declare-fun tp!1242480 () Bool)

(assert (=> b!4102130 (= e!2545658 tp!1242480)))

(declare-fun b!4102128 () Bool)

(assert (=> b!4102128 (= e!2545658 tp_is_empty!21085)))

(assert (= (and b!4101736 ((_ is ElementMatch!12051) (reg!12380 (regOne!24615 (regex!7146 rHead!24))))) b!4102128))

(assert (= (and b!4101736 ((_ is Concat!19427) (reg!12380 (regOne!24615 (regex!7146 rHead!24))))) b!4102129))

(assert (= (and b!4101736 ((_ is Star!12051) (reg!12380 (regOne!24615 (regex!7146 rHead!24))))) b!4102130))

(assert (= (and b!4101736 ((_ is Union!12051) (reg!12380 (regOne!24615 (regex!7146 rHead!24))))) b!4102131))

(declare-fun b!4102139 () Bool)

(declare-fun e!2545660 () Bool)

(declare-fun tp!1242488 () Bool)

(declare-fun tp!1242486 () Bool)

(assert (=> b!4102139 (= e!2545660 (and tp!1242488 tp!1242486))))

(assert (=> b!4101737 (= tp!1242135 e!2545660)))

(declare-fun b!4102137 () Bool)

(declare-fun tp!1242487 () Bool)

(declare-fun tp!1242489 () Bool)

(assert (=> b!4102137 (= e!2545660 (and tp!1242487 tp!1242489))))

(declare-fun b!4102138 () Bool)

(declare-fun tp!1242490 () Bool)

(assert (=> b!4102138 (= e!2545660 tp!1242490)))

(declare-fun b!4102136 () Bool)

(assert (=> b!4102136 (= e!2545660 tp_is_empty!21085)))

(assert (= (and b!4101737 ((_ is ElementMatch!12051) (regOne!24615 (regOne!24615 (regex!7146 rHead!24))))) b!4102136))

(assert (= (and b!4101737 ((_ is Concat!19427) (regOne!24615 (regOne!24615 (regex!7146 rHead!24))))) b!4102137))

(assert (= (and b!4101737 ((_ is Star!12051) (regOne!24615 (regOne!24615 (regex!7146 rHead!24))))) b!4102138))

(assert (= (and b!4101737 ((_ is Union!12051) (regOne!24615 (regOne!24615 (regex!7146 rHead!24))))) b!4102139))

(declare-fun b!4102147 () Bool)

(declare-fun e!2545662 () Bool)

(declare-fun tp!1242498 () Bool)

(declare-fun tp!1242496 () Bool)

(assert (=> b!4102147 (= e!2545662 (and tp!1242498 tp!1242496))))

(assert (=> b!4101737 (= tp!1242133 e!2545662)))

(declare-fun b!4102145 () Bool)

(declare-fun tp!1242497 () Bool)

(declare-fun tp!1242499 () Bool)

(assert (=> b!4102145 (= e!2545662 (and tp!1242497 tp!1242499))))

(declare-fun b!4102146 () Bool)

(declare-fun tp!1242500 () Bool)

(assert (=> b!4102146 (= e!2545662 tp!1242500)))

(declare-fun b!4102144 () Bool)

(assert (=> b!4102144 (= e!2545662 tp_is_empty!21085)))

(assert (= (and b!4101737 ((_ is ElementMatch!12051) (regTwo!24615 (regOne!24615 (regex!7146 rHead!24))))) b!4102144))

(assert (= (and b!4101737 ((_ is Concat!19427) (regTwo!24615 (regOne!24615 (regex!7146 rHead!24))))) b!4102145))

(assert (= (and b!4101737 ((_ is Star!12051) (regTwo!24615 (regOne!24615 (regex!7146 rHead!24))))) b!4102146))

(assert (= (and b!4101737 ((_ is Union!12051) (regTwo!24615 (regOne!24615 (regex!7146 rHead!24))))) b!4102147))

(declare-fun b!4102151 () Bool)

(declare-fun e!2545663 () Bool)

(declare-fun tp!1242503 () Bool)

(declare-fun tp!1242501 () Bool)

(assert (=> b!4102151 (= e!2545663 (and tp!1242503 tp!1242501))))

(assert (=> b!4101752 (= tp!1242157 e!2545663)))

(declare-fun b!4102149 () Bool)

(declare-fun tp!1242502 () Bool)

(declare-fun tp!1242504 () Bool)

(assert (=> b!4102149 (= e!2545663 (and tp!1242502 tp!1242504))))

(declare-fun b!4102150 () Bool)

(declare-fun tp!1242505 () Bool)

(assert (=> b!4102150 (= e!2545663 tp!1242505)))

(declare-fun b!4102148 () Bool)

(assert (=> b!4102148 (= e!2545663 tp_is_empty!21085)))

(assert (= (and b!4101752 ((_ is ElementMatch!12051) (reg!12380 (regex!7146 (h!49484 (t!339845 rTail!27)))))) b!4102148))

(assert (= (and b!4101752 ((_ is Concat!19427) (reg!12380 (regex!7146 (h!49484 (t!339845 rTail!27)))))) b!4102149))

(assert (= (and b!4101752 ((_ is Star!12051) (reg!12380 (regex!7146 (h!49484 (t!339845 rTail!27)))))) b!4102150))

(assert (= (and b!4101752 ((_ is Union!12051) (reg!12380 (regex!7146 (h!49484 (t!339845 rTail!27)))))) b!4102151))

(declare-fun b!4102159 () Bool)

(declare-fun e!2545665 () Bool)

(declare-fun tp!1242513 () Bool)

(declare-fun tp!1242511 () Bool)

(assert (=> b!4102159 (= e!2545665 (and tp!1242513 tp!1242511))))

(assert (=> b!4101743 (= tp!1242144 e!2545665)))

(declare-fun b!4102157 () Bool)

(declare-fun tp!1242512 () Bool)

(declare-fun tp!1242514 () Bool)

(assert (=> b!4102157 (= e!2545665 (and tp!1242512 tp!1242514))))

(declare-fun b!4102158 () Bool)

(declare-fun tp!1242515 () Bool)

(assert (=> b!4102158 (= e!2545665 tp!1242515)))

(declare-fun b!4102156 () Bool)

(assert (=> b!4102156 (= e!2545665 tp_is_empty!21085)))

(assert (= (and b!4101743 ((_ is ElementMatch!12051) (regOne!24614 (regOne!24615 (regex!7146 (h!49484 rTail!27)))))) b!4102156))

(assert (= (and b!4101743 ((_ is Concat!19427) (regOne!24614 (regOne!24615 (regex!7146 (h!49484 rTail!27)))))) b!4102157))

(assert (= (and b!4101743 ((_ is Star!12051) (regOne!24614 (regOne!24615 (regex!7146 (h!49484 rTail!27)))))) b!4102158))

(assert (= (and b!4101743 ((_ is Union!12051) (regOne!24614 (regOne!24615 (regex!7146 (h!49484 rTail!27)))))) b!4102159))

(declare-fun b!4102167 () Bool)

(declare-fun e!2545667 () Bool)

(declare-fun tp!1242523 () Bool)

(declare-fun tp!1242521 () Bool)

(assert (=> b!4102167 (= e!2545667 (and tp!1242523 tp!1242521))))

(assert (=> b!4101743 (= tp!1242146 e!2545667)))

(declare-fun b!4102165 () Bool)

(declare-fun tp!1242522 () Bool)

(declare-fun tp!1242524 () Bool)

(assert (=> b!4102165 (= e!2545667 (and tp!1242522 tp!1242524))))

(declare-fun b!4102166 () Bool)

(declare-fun tp!1242525 () Bool)

(assert (=> b!4102166 (= e!2545667 tp!1242525)))

(declare-fun b!4102164 () Bool)

(assert (=> b!4102164 (= e!2545667 tp_is_empty!21085)))

(assert (= (and b!4101743 ((_ is ElementMatch!12051) (regTwo!24614 (regOne!24615 (regex!7146 (h!49484 rTail!27)))))) b!4102164))

(assert (= (and b!4101743 ((_ is Concat!19427) (regTwo!24614 (regOne!24615 (regex!7146 (h!49484 rTail!27)))))) b!4102165))

(assert (= (and b!4101743 ((_ is Star!12051) (regTwo!24614 (regOne!24615 (regex!7146 (h!49484 rTail!27)))))) b!4102166))

(assert (= (and b!4101743 ((_ is Union!12051) (regTwo!24614 (regOne!24615 (regex!7146 (h!49484 rTail!27)))))) b!4102167))

(declare-fun b!4102171 () Bool)

(declare-fun e!2545668 () Bool)

(declare-fun tp!1242528 () Bool)

(declare-fun tp!1242526 () Bool)

(assert (=> b!4102171 (= e!2545668 (and tp!1242528 tp!1242526))))

(assert (=> b!4101769 (= tp!1242175 e!2545668)))

(declare-fun b!4102169 () Bool)

(declare-fun tp!1242527 () Bool)

(declare-fun tp!1242529 () Bool)

(assert (=> b!4102169 (= e!2545668 (and tp!1242527 tp!1242529))))

(declare-fun b!4102170 () Bool)

(declare-fun tp!1242530 () Bool)

(assert (=> b!4102170 (= e!2545668 tp!1242530)))

(declare-fun b!4102168 () Bool)

(assert (=> b!4102168 (= e!2545668 tp_is_empty!21085)))

(assert (= (and b!4101769 ((_ is ElementMatch!12051) (regOne!24615 (regTwo!24614 (regex!7146 (h!49484 rTail!27)))))) b!4102168))

(assert (= (and b!4101769 ((_ is Concat!19427) (regOne!24615 (regTwo!24614 (regex!7146 (h!49484 rTail!27)))))) b!4102169))

(assert (= (and b!4101769 ((_ is Star!12051) (regOne!24615 (regTwo!24614 (regex!7146 (h!49484 rTail!27)))))) b!4102170))

(assert (= (and b!4101769 ((_ is Union!12051) (regOne!24615 (regTwo!24614 (regex!7146 (h!49484 rTail!27)))))) b!4102171))

(declare-fun b!4102179 () Bool)

(declare-fun e!2545670 () Bool)

(declare-fun tp!1242538 () Bool)

(declare-fun tp!1242536 () Bool)

(assert (=> b!4102179 (= e!2545670 (and tp!1242538 tp!1242536))))

(assert (=> b!4101769 (= tp!1242173 e!2545670)))

(declare-fun b!4102177 () Bool)

(declare-fun tp!1242537 () Bool)

(declare-fun tp!1242539 () Bool)

(assert (=> b!4102177 (= e!2545670 (and tp!1242537 tp!1242539))))

(declare-fun b!4102178 () Bool)

(declare-fun tp!1242540 () Bool)

(assert (=> b!4102178 (= e!2545670 tp!1242540)))

(declare-fun b!4102176 () Bool)

(assert (=> b!4102176 (= e!2545670 tp_is_empty!21085)))

(assert (= (and b!4101769 ((_ is ElementMatch!12051) (regTwo!24615 (regTwo!24614 (regex!7146 (h!49484 rTail!27)))))) b!4102176))

(assert (= (and b!4101769 ((_ is Concat!19427) (regTwo!24615 (regTwo!24614 (regex!7146 (h!49484 rTail!27)))))) b!4102177))

(assert (= (and b!4101769 ((_ is Star!12051) (regTwo!24615 (regTwo!24614 (regex!7146 (h!49484 rTail!27)))))) b!4102178))

(assert (= (and b!4101769 ((_ is Union!12051) (regTwo!24615 (regTwo!24614 (regex!7146 (h!49484 rTail!27)))))) b!4102179))

(declare-fun b!4102183 () Bool)

(declare-fun e!2545671 () Bool)

(declare-fun tp!1242543 () Bool)

(declare-fun tp!1242541 () Bool)

(assert (=> b!4102183 (= e!2545671 (and tp!1242543 tp!1242541))))

(assert (=> b!4101753 (= tp!1242155 e!2545671)))

(declare-fun b!4102181 () Bool)

(declare-fun tp!1242542 () Bool)

(declare-fun tp!1242544 () Bool)

(assert (=> b!4102181 (= e!2545671 (and tp!1242542 tp!1242544))))

(declare-fun b!4102182 () Bool)

(declare-fun tp!1242545 () Bool)

(assert (=> b!4102182 (= e!2545671 tp!1242545)))

(declare-fun b!4102180 () Bool)

(assert (=> b!4102180 (= e!2545671 tp_is_empty!21085)))

(assert (= (and b!4101753 ((_ is ElementMatch!12051) (regOne!24615 (regex!7146 (h!49484 (t!339845 rTail!27)))))) b!4102180))

(assert (= (and b!4101753 ((_ is Concat!19427) (regOne!24615 (regex!7146 (h!49484 (t!339845 rTail!27)))))) b!4102181))

(assert (= (and b!4101753 ((_ is Star!12051) (regOne!24615 (regex!7146 (h!49484 (t!339845 rTail!27)))))) b!4102182))

(assert (= (and b!4101753 ((_ is Union!12051) (regOne!24615 (regex!7146 (h!49484 (t!339845 rTail!27)))))) b!4102183))

(declare-fun b!4102191 () Bool)

(declare-fun e!2545673 () Bool)

(declare-fun tp!1242553 () Bool)

(declare-fun tp!1242551 () Bool)

(assert (=> b!4102191 (= e!2545673 (and tp!1242553 tp!1242551))))

(assert (=> b!4101753 (= tp!1242153 e!2545673)))

(declare-fun b!4102189 () Bool)

(declare-fun tp!1242552 () Bool)

(declare-fun tp!1242554 () Bool)

(assert (=> b!4102189 (= e!2545673 (and tp!1242552 tp!1242554))))

(declare-fun b!4102190 () Bool)

(declare-fun tp!1242555 () Bool)

(assert (=> b!4102190 (= e!2545673 tp!1242555)))

(declare-fun b!4102188 () Bool)

(assert (=> b!4102188 (= e!2545673 tp_is_empty!21085)))

(assert (= (and b!4101753 ((_ is ElementMatch!12051) (regTwo!24615 (regex!7146 (h!49484 (t!339845 rTail!27)))))) b!4102188))

(assert (= (and b!4101753 ((_ is Concat!19427) (regTwo!24615 (regex!7146 (h!49484 (t!339845 rTail!27)))))) b!4102189))

(assert (= (and b!4101753 ((_ is Star!12051) (regTwo!24615 (regex!7146 (h!49484 (t!339845 rTail!27)))))) b!4102190))

(assert (= (and b!4101753 ((_ is Union!12051) (regTwo!24615 (regex!7146 (h!49484 (t!339845 rTail!27)))))) b!4102191))

(declare-fun b!4102199 () Bool)

(declare-fun e!2545675 () Bool)

(declare-fun tp!1242563 () Bool)

(declare-fun tp!1242561 () Bool)

(assert (=> b!4102199 (= e!2545675 (and tp!1242563 tp!1242561))))

(assert (=> b!4101744 (= tp!1242147 e!2545675)))

(declare-fun b!4102197 () Bool)

(declare-fun tp!1242562 () Bool)

(declare-fun tp!1242564 () Bool)

(assert (=> b!4102197 (= e!2545675 (and tp!1242562 tp!1242564))))

(declare-fun b!4102198 () Bool)

(declare-fun tp!1242565 () Bool)

(assert (=> b!4102198 (= e!2545675 tp!1242565)))

(declare-fun b!4102196 () Bool)

(assert (=> b!4102196 (= e!2545675 tp_is_empty!21085)))

(assert (= (and b!4101744 ((_ is ElementMatch!12051) (reg!12380 (regOne!24615 (regex!7146 (h!49484 rTail!27)))))) b!4102196))

(assert (= (and b!4101744 ((_ is Concat!19427) (reg!12380 (regOne!24615 (regex!7146 (h!49484 rTail!27)))))) b!4102197))

(assert (= (and b!4101744 ((_ is Star!12051) (reg!12380 (regOne!24615 (regex!7146 (h!49484 rTail!27)))))) b!4102198))

(assert (= (and b!4101744 ((_ is Union!12051) (reg!12380 (regOne!24615 (regex!7146 (h!49484 rTail!27)))))) b!4102199))

(declare-fun b!4102203 () Bool)

(declare-fun e!2545676 () Bool)

(declare-fun tp!1242568 () Bool)

(declare-fun tp!1242566 () Bool)

(assert (=> b!4102203 (= e!2545676 (and tp!1242568 tp!1242566))))

(assert (=> b!4101735 (= tp!1242134 e!2545676)))

(declare-fun b!4102201 () Bool)

(declare-fun tp!1242567 () Bool)

(declare-fun tp!1242569 () Bool)

(assert (=> b!4102201 (= e!2545676 (and tp!1242567 tp!1242569))))

(declare-fun b!4102202 () Bool)

(declare-fun tp!1242570 () Bool)

(assert (=> b!4102202 (= e!2545676 tp!1242570)))

(declare-fun b!4102200 () Bool)

(assert (=> b!4102200 (= e!2545676 tp_is_empty!21085)))

(assert (= (and b!4101735 ((_ is ElementMatch!12051) (regOne!24614 (regOne!24615 (regex!7146 rHead!24))))) b!4102200))

(assert (= (and b!4101735 ((_ is Concat!19427) (regOne!24614 (regOne!24615 (regex!7146 rHead!24))))) b!4102201))

(assert (= (and b!4101735 ((_ is Star!12051) (regOne!24614 (regOne!24615 (regex!7146 rHead!24))))) b!4102202))

(assert (= (and b!4101735 ((_ is Union!12051) (regOne!24614 (regOne!24615 (regex!7146 rHead!24))))) b!4102203))

(declare-fun b!4102211 () Bool)

(declare-fun e!2545678 () Bool)

(declare-fun tp!1242578 () Bool)

(declare-fun tp!1242576 () Bool)

(assert (=> b!4102211 (= e!2545678 (and tp!1242578 tp!1242576))))

(assert (=> b!4101735 (= tp!1242136 e!2545678)))

(declare-fun b!4102209 () Bool)

(declare-fun tp!1242577 () Bool)

(declare-fun tp!1242579 () Bool)

(assert (=> b!4102209 (= e!2545678 (and tp!1242577 tp!1242579))))

(declare-fun b!4102210 () Bool)

(declare-fun tp!1242580 () Bool)

(assert (=> b!4102210 (= e!2545678 tp!1242580)))

(declare-fun b!4102208 () Bool)

(assert (=> b!4102208 (= e!2545678 tp_is_empty!21085)))

(assert (= (and b!4101735 ((_ is ElementMatch!12051) (regTwo!24614 (regOne!24615 (regex!7146 rHead!24))))) b!4102208))

(assert (= (and b!4101735 ((_ is Concat!19427) (regTwo!24614 (regOne!24615 (regex!7146 rHead!24))))) b!4102209))

(assert (= (and b!4101735 ((_ is Star!12051) (regTwo!24614 (regOne!24615 (regex!7146 rHead!24))))) b!4102210))

(assert (= (and b!4101735 ((_ is Union!12051) (regTwo!24614 (regOne!24615 (regex!7146 rHead!24))))) b!4102211))

(declare-fun b!4102215 () Bool)

(declare-fun e!2545679 () Bool)

(declare-fun tp!1242583 () Bool)

(declare-fun tp!1242581 () Bool)

(assert (=> b!4102215 (= e!2545679 (and tp!1242583 tp!1242581))))

(assert (=> b!4101745 (= tp!1242145 e!2545679)))

(declare-fun b!4102213 () Bool)

(declare-fun tp!1242582 () Bool)

(declare-fun tp!1242584 () Bool)

(assert (=> b!4102213 (= e!2545679 (and tp!1242582 tp!1242584))))

(declare-fun b!4102214 () Bool)

(declare-fun tp!1242585 () Bool)

(assert (=> b!4102214 (= e!2545679 tp!1242585)))

(declare-fun b!4102212 () Bool)

(assert (=> b!4102212 (= e!2545679 tp_is_empty!21085)))

(assert (= (and b!4101745 ((_ is ElementMatch!12051) (regOne!24615 (regOne!24615 (regex!7146 (h!49484 rTail!27)))))) b!4102212))

(assert (= (and b!4101745 ((_ is Concat!19427) (regOne!24615 (regOne!24615 (regex!7146 (h!49484 rTail!27)))))) b!4102213))

(assert (= (and b!4101745 ((_ is Star!12051) (regOne!24615 (regOne!24615 (regex!7146 (h!49484 rTail!27)))))) b!4102214))

(assert (= (and b!4101745 ((_ is Union!12051) (regOne!24615 (regOne!24615 (regex!7146 (h!49484 rTail!27)))))) b!4102215))

(declare-fun b!4102223 () Bool)

(declare-fun e!2545681 () Bool)

(declare-fun tp!1242593 () Bool)

(declare-fun tp!1242591 () Bool)

(assert (=> b!4102223 (= e!2545681 (and tp!1242593 tp!1242591))))

(assert (=> b!4101745 (= tp!1242143 e!2545681)))

(declare-fun b!4102221 () Bool)

(declare-fun tp!1242592 () Bool)

(declare-fun tp!1242594 () Bool)

(assert (=> b!4102221 (= e!2545681 (and tp!1242592 tp!1242594))))

(declare-fun b!4102222 () Bool)

(declare-fun tp!1242595 () Bool)

(assert (=> b!4102222 (= e!2545681 tp!1242595)))

(declare-fun b!4102220 () Bool)

(assert (=> b!4102220 (= e!2545681 tp_is_empty!21085)))

(assert (= (and b!4101745 ((_ is ElementMatch!12051) (regTwo!24615 (regOne!24615 (regex!7146 (h!49484 rTail!27)))))) b!4102220))

(assert (= (and b!4101745 ((_ is Concat!19427) (regTwo!24615 (regOne!24615 (regex!7146 (h!49484 rTail!27)))))) b!4102221))

(assert (= (and b!4101745 ((_ is Star!12051) (regTwo!24615 (regOne!24615 (regex!7146 (h!49484 rTail!27)))))) b!4102222))

(assert (= (and b!4101745 ((_ is Union!12051) (regTwo!24615 (regOne!24615 (regex!7146 (h!49484 rTail!27)))))) b!4102223))

(declare-fun b!4102231 () Bool)

(declare-fun e!2545683 () Bool)

(declare-fun tp!1242603 () Bool)

(declare-fun tp!1242601 () Bool)

(assert (=> b!4102231 (= e!2545683 (and tp!1242603 tp!1242601))))

(assert (=> b!4101759 (= tp!1242164 e!2545683)))

(declare-fun b!4102229 () Bool)

(declare-fun tp!1242602 () Bool)

(declare-fun tp!1242604 () Bool)

(assert (=> b!4102229 (= e!2545683 (and tp!1242602 tp!1242604))))

(declare-fun b!4102230 () Bool)

(declare-fun tp!1242605 () Bool)

(assert (=> b!4102230 (= e!2545683 tp!1242605)))

(declare-fun b!4102228 () Bool)

(assert (=> b!4102228 (= e!2545683 tp_is_empty!21085)))

(assert (= (and b!4101759 ((_ is ElementMatch!12051) (regOne!24614 (regTwo!24614 (regex!7146 rHead!24))))) b!4102228))

(assert (= (and b!4101759 ((_ is Concat!19427) (regOne!24614 (regTwo!24614 (regex!7146 rHead!24))))) b!4102229))

(assert (= (and b!4101759 ((_ is Star!12051) (regOne!24614 (regTwo!24614 (regex!7146 rHead!24))))) b!4102230))

(assert (= (and b!4101759 ((_ is Union!12051) (regOne!24614 (regTwo!24614 (regex!7146 rHead!24))))) b!4102231))

(declare-fun b!4102235 () Bool)

(declare-fun e!2545684 () Bool)

(declare-fun tp!1242608 () Bool)

(declare-fun tp!1242606 () Bool)

(assert (=> b!4102235 (= e!2545684 (and tp!1242608 tp!1242606))))

(assert (=> b!4101759 (= tp!1242166 e!2545684)))

(declare-fun b!4102233 () Bool)

(declare-fun tp!1242607 () Bool)

(declare-fun tp!1242609 () Bool)

(assert (=> b!4102233 (= e!2545684 (and tp!1242607 tp!1242609))))

(declare-fun b!4102234 () Bool)

(declare-fun tp!1242610 () Bool)

(assert (=> b!4102234 (= e!2545684 tp!1242610)))

(declare-fun b!4102232 () Bool)

(assert (=> b!4102232 (= e!2545684 tp_is_empty!21085)))

(assert (= (and b!4101759 ((_ is ElementMatch!12051) (regTwo!24614 (regTwo!24614 (regex!7146 rHead!24))))) b!4102232))

(assert (= (and b!4101759 ((_ is Concat!19427) (regTwo!24614 (regTwo!24614 (regex!7146 rHead!24))))) b!4102233))

(assert (= (and b!4101759 ((_ is Star!12051) (regTwo!24614 (regTwo!24614 (regex!7146 rHead!24))))) b!4102234))

(assert (= (and b!4101759 ((_ is Union!12051) (regTwo!24614 (regTwo!24614 (regex!7146 rHead!24))))) b!4102235))

(declare-fun b!4102242 () Bool)

(declare-fun b_free!114941 () Bool)

(declare-fun b_next!115645 () Bool)

(assert (=> b!4102242 (= b_free!114941 (not b_next!115645))))

(declare-fun tp!1242616 () Bool)

(declare-fun b_and!316755 () Bool)

(assert (=> b!4102242 (= tp!1242616 b_and!316755)))

(declare-fun b_free!114943 () Bool)

(declare-fun b_next!115647 () Bool)

(assert (=> b!4102242 (= b_free!114943 (not b_next!115647))))

(declare-fun tp!1242618 () Bool)

(declare-fun b_and!316757 () Bool)

(assert (=> b!4102242 (= tp!1242618 b_and!316757)))

(declare-fun e!2545688 () Bool)

(assert (=> b!4102242 (= e!2545688 (and tp!1242616 tp!1242618))))

(declare-fun tp!1242619 () Bool)

(declare-fun e!2545687 () Bool)

(declare-fun b!4102241 () Bool)

(assert (=> b!4102241 (= e!2545687 (and tp!1242619 (inv!58768 (tag!8006 (h!49484 (t!339845 (t!339845 (t!339845 rTail!27)))))) (inv!58770 (transformation!7146 (h!49484 (t!339845 (t!339845 (t!339845 rTail!27)))))) e!2545688))))

(declare-fun b!4102240 () Bool)

(declare-fun e!2545686 () Bool)

(declare-fun tp!1242617 () Bool)

(assert (=> b!4102240 (= e!2545686 (and e!2545687 tp!1242617))))

(assert (=> b!4101774 (= tp!1242184 e!2545686)))

(assert (= b!4102241 b!4102242))

(assert (= b!4102240 b!4102241))

(assert (= (and b!4101774 ((_ is Cons!44064) (t!339845 (t!339845 (t!339845 rTail!27))))) b!4102240))

(declare-fun m!4708553 () Bool)

(assert (=> b!4102241 m!4708553))

(declare-fun m!4708555 () Bool)

(assert (=> b!4102241 m!4708555))

(declare-fun b!4102250 () Bool)

(declare-fun e!2545691 () Bool)

(declare-fun tp!1242627 () Bool)

(declare-fun tp!1242625 () Bool)

(assert (=> b!4102250 (= e!2545691 (and tp!1242627 tp!1242625))))

(assert (=> b!4101767 (= tp!1242174 e!2545691)))

(declare-fun b!4102248 () Bool)

(declare-fun tp!1242626 () Bool)

(declare-fun tp!1242628 () Bool)

(assert (=> b!4102248 (= e!2545691 (and tp!1242626 tp!1242628))))

(declare-fun b!4102249 () Bool)

(declare-fun tp!1242629 () Bool)

(assert (=> b!4102249 (= e!2545691 tp!1242629)))

(declare-fun b!4102247 () Bool)

(assert (=> b!4102247 (= e!2545691 tp_is_empty!21085)))

(assert (= (and b!4101767 ((_ is ElementMatch!12051) (regOne!24614 (regTwo!24614 (regex!7146 (h!49484 rTail!27)))))) b!4102247))

(assert (= (and b!4101767 ((_ is Concat!19427) (regOne!24614 (regTwo!24614 (regex!7146 (h!49484 rTail!27)))))) b!4102248))

(assert (= (and b!4101767 ((_ is Star!12051) (regOne!24614 (regTwo!24614 (regex!7146 (h!49484 rTail!27)))))) b!4102249))

(assert (= (and b!4101767 ((_ is Union!12051) (regOne!24614 (regTwo!24614 (regex!7146 (h!49484 rTail!27)))))) b!4102250))

(declare-fun b!4102254 () Bool)

(declare-fun e!2545692 () Bool)

(declare-fun tp!1242632 () Bool)

(declare-fun tp!1242630 () Bool)

(assert (=> b!4102254 (= e!2545692 (and tp!1242632 tp!1242630))))

(assert (=> b!4101767 (= tp!1242176 e!2545692)))

(declare-fun b!4102252 () Bool)

(declare-fun tp!1242631 () Bool)

(declare-fun tp!1242633 () Bool)

(assert (=> b!4102252 (= e!2545692 (and tp!1242631 tp!1242633))))

(declare-fun b!4102253 () Bool)

(declare-fun tp!1242634 () Bool)

(assert (=> b!4102253 (= e!2545692 tp!1242634)))

(declare-fun b!4102251 () Bool)

(assert (=> b!4102251 (= e!2545692 tp_is_empty!21085)))

(assert (= (and b!4101767 ((_ is ElementMatch!12051) (regTwo!24614 (regTwo!24614 (regex!7146 (h!49484 rTail!27)))))) b!4102251))

(assert (= (and b!4101767 ((_ is Concat!19427) (regTwo!24614 (regTwo!24614 (regex!7146 (h!49484 rTail!27)))))) b!4102252))

(assert (= (and b!4101767 ((_ is Star!12051) (regTwo!24614 (regTwo!24614 (regex!7146 (h!49484 rTail!27)))))) b!4102253))

(assert (= (and b!4101767 ((_ is Union!12051) (regTwo!24614 (regTwo!24614 (regex!7146 (h!49484 rTail!27)))))) b!4102254))

(declare-fun b!4102258 () Bool)

(declare-fun e!2545693 () Bool)

(declare-fun tp!1242637 () Bool)

(declare-fun tp!1242635 () Bool)

(assert (=> b!4102258 (= e!2545693 (and tp!1242637 tp!1242635))))

(assert (=> b!4101760 (= tp!1242167 e!2545693)))

(declare-fun b!4102256 () Bool)

(declare-fun tp!1242636 () Bool)

(declare-fun tp!1242638 () Bool)

(assert (=> b!4102256 (= e!2545693 (and tp!1242636 tp!1242638))))

(declare-fun b!4102257 () Bool)

(declare-fun tp!1242639 () Bool)

(assert (=> b!4102257 (= e!2545693 tp!1242639)))

(declare-fun b!4102255 () Bool)

(assert (=> b!4102255 (= e!2545693 tp_is_empty!21085)))

(assert (= (and b!4101760 ((_ is ElementMatch!12051) (reg!12380 (regTwo!24614 (regex!7146 rHead!24))))) b!4102255))

(assert (= (and b!4101760 ((_ is Concat!19427) (reg!12380 (regTwo!24614 (regex!7146 rHead!24))))) b!4102256))

(assert (= (and b!4101760 ((_ is Star!12051) (reg!12380 (regTwo!24614 (regex!7146 rHead!24))))) b!4102257))

(assert (= (and b!4101760 ((_ is Union!12051) (reg!12380 (regTwo!24614 (regex!7146 rHead!24))))) b!4102258))

(declare-fun b!4102262 () Bool)

(declare-fun e!2545694 () Bool)

(declare-fun tp!1242642 () Bool)

(declare-fun tp!1242640 () Bool)

(assert (=> b!4102262 (= e!2545694 (and tp!1242642 tp!1242640))))

(assert (=> b!4101751 (= tp!1242154 e!2545694)))

(declare-fun b!4102260 () Bool)

(declare-fun tp!1242641 () Bool)

(declare-fun tp!1242643 () Bool)

(assert (=> b!4102260 (= e!2545694 (and tp!1242641 tp!1242643))))

(declare-fun b!4102261 () Bool)

(declare-fun tp!1242644 () Bool)

(assert (=> b!4102261 (= e!2545694 tp!1242644)))

(declare-fun b!4102259 () Bool)

(assert (=> b!4102259 (= e!2545694 tp_is_empty!21085)))

(assert (= (and b!4101751 ((_ is ElementMatch!12051) (regOne!24614 (regex!7146 (h!49484 (t!339845 rTail!27)))))) b!4102259))

(assert (= (and b!4101751 ((_ is Concat!19427) (regOne!24614 (regex!7146 (h!49484 (t!339845 rTail!27)))))) b!4102260))

(assert (= (and b!4101751 ((_ is Star!12051) (regOne!24614 (regex!7146 (h!49484 (t!339845 rTail!27)))))) b!4102261))

(assert (= (and b!4101751 ((_ is Union!12051) (regOne!24614 (regex!7146 (h!49484 (t!339845 rTail!27)))))) b!4102262))

(declare-fun b!4102266 () Bool)

(declare-fun e!2545695 () Bool)

(declare-fun tp!1242647 () Bool)

(declare-fun tp!1242645 () Bool)

(assert (=> b!4102266 (= e!2545695 (and tp!1242647 tp!1242645))))

(assert (=> b!4101751 (= tp!1242156 e!2545695)))

(declare-fun b!4102264 () Bool)

(declare-fun tp!1242646 () Bool)

(declare-fun tp!1242648 () Bool)

(assert (=> b!4102264 (= e!2545695 (and tp!1242646 tp!1242648))))

(declare-fun b!4102265 () Bool)

(declare-fun tp!1242649 () Bool)

(assert (=> b!4102265 (= e!2545695 tp!1242649)))

(declare-fun b!4102263 () Bool)

(assert (=> b!4102263 (= e!2545695 tp_is_empty!21085)))

(assert (= (and b!4101751 ((_ is ElementMatch!12051) (regTwo!24614 (regex!7146 (h!49484 (t!339845 rTail!27)))))) b!4102263))

(assert (= (and b!4101751 ((_ is Concat!19427) (regTwo!24614 (regex!7146 (h!49484 (t!339845 rTail!27)))))) b!4102264))

(assert (= (and b!4101751 ((_ is Star!12051) (regTwo!24614 (regex!7146 (h!49484 (t!339845 rTail!27)))))) b!4102265))

(assert (= (and b!4101751 ((_ is Union!12051) (regTwo!24614 (regex!7146 (h!49484 (t!339845 rTail!27)))))) b!4102266))

(declare-fun b!4102270 () Bool)

(declare-fun e!2545696 () Bool)

(declare-fun tp!1242652 () Bool)

(declare-fun tp!1242650 () Bool)

(assert (=> b!4102270 (= e!2545696 (and tp!1242652 tp!1242650))))

(assert (=> b!4101775 (= tp!1242186 e!2545696)))

(declare-fun b!4102268 () Bool)

(declare-fun tp!1242651 () Bool)

(declare-fun tp!1242653 () Bool)

(assert (=> b!4102268 (= e!2545696 (and tp!1242651 tp!1242653))))

(declare-fun b!4102269 () Bool)

(declare-fun tp!1242654 () Bool)

(assert (=> b!4102269 (= e!2545696 tp!1242654)))

(declare-fun b!4102267 () Bool)

(assert (=> b!4102267 (= e!2545696 tp_is_empty!21085)))

(assert (= (and b!4101775 ((_ is ElementMatch!12051) (regex!7146 (h!49484 (t!339845 (t!339845 rTail!27)))))) b!4102267))

(assert (= (and b!4101775 ((_ is Concat!19427) (regex!7146 (h!49484 (t!339845 (t!339845 rTail!27)))))) b!4102268))

(assert (= (and b!4101775 ((_ is Star!12051) (regex!7146 (h!49484 (t!339845 (t!339845 rTail!27)))))) b!4102269))

(assert (= (and b!4101775 ((_ is Union!12051) (regex!7146 (h!49484 (t!339845 (t!339845 rTail!27)))))) b!4102270))

(declare-fun b!4102274 () Bool)

(declare-fun e!2545697 () Bool)

(declare-fun tp!1242657 () Bool)

(declare-fun tp!1242655 () Bool)

(assert (=> b!4102274 (= e!2545697 (and tp!1242657 tp!1242655))))

(assert (=> b!4101768 (= tp!1242177 e!2545697)))

(declare-fun b!4102272 () Bool)

(declare-fun tp!1242656 () Bool)

(declare-fun tp!1242658 () Bool)

(assert (=> b!4102272 (= e!2545697 (and tp!1242656 tp!1242658))))

(declare-fun b!4102273 () Bool)

(declare-fun tp!1242659 () Bool)

(assert (=> b!4102273 (= e!2545697 tp!1242659)))

(declare-fun b!4102271 () Bool)

(assert (=> b!4102271 (= e!2545697 tp_is_empty!21085)))

(assert (= (and b!4101768 ((_ is ElementMatch!12051) (reg!12380 (regTwo!24614 (regex!7146 (h!49484 rTail!27)))))) b!4102271))

(assert (= (and b!4101768 ((_ is Concat!19427) (reg!12380 (regTwo!24614 (regex!7146 (h!49484 rTail!27)))))) b!4102272))

(assert (= (and b!4101768 ((_ is Star!12051) (reg!12380 (regTwo!24614 (regex!7146 (h!49484 rTail!27)))))) b!4102273))

(assert (= (and b!4101768 ((_ is Union!12051) (reg!12380 (regTwo!24614 (regex!7146 (h!49484 rTail!27)))))) b!4102274))

(declare-fun b!4102278 () Bool)

(declare-fun e!2545698 () Bool)

(declare-fun tp!1242662 () Bool)

(declare-fun tp!1242660 () Bool)

(assert (=> b!4102278 (= e!2545698 (and tp!1242662 tp!1242660))))

(assert (=> b!4101761 (= tp!1242165 e!2545698)))

(declare-fun b!4102276 () Bool)

(declare-fun tp!1242661 () Bool)

(declare-fun tp!1242663 () Bool)

(assert (=> b!4102276 (= e!2545698 (and tp!1242661 tp!1242663))))

(declare-fun b!4102277 () Bool)

(declare-fun tp!1242664 () Bool)

(assert (=> b!4102277 (= e!2545698 tp!1242664)))

(declare-fun b!4102275 () Bool)

(assert (=> b!4102275 (= e!2545698 tp_is_empty!21085)))

(assert (= (and b!4101761 ((_ is ElementMatch!12051) (regOne!24615 (regTwo!24614 (regex!7146 rHead!24))))) b!4102275))

(assert (= (and b!4101761 ((_ is Concat!19427) (regOne!24615 (regTwo!24614 (regex!7146 rHead!24))))) b!4102276))

(assert (= (and b!4101761 ((_ is Star!12051) (regOne!24615 (regTwo!24614 (regex!7146 rHead!24))))) b!4102277))

(assert (= (and b!4101761 ((_ is Union!12051) (regOne!24615 (regTwo!24614 (regex!7146 rHead!24))))) b!4102278))

(declare-fun b!4102282 () Bool)

(declare-fun e!2545699 () Bool)

(declare-fun tp!1242667 () Bool)

(declare-fun tp!1242665 () Bool)

(assert (=> b!4102282 (= e!2545699 (and tp!1242667 tp!1242665))))

(assert (=> b!4101761 (= tp!1242163 e!2545699)))

(declare-fun b!4102280 () Bool)

(declare-fun tp!1242666 () Bool)

(declare-fun tp!1242668 () Bool)

(assert (=> b!4102280 (= e!2545699 (and tp!1242666 tp!1242668))))

(declare-fun b!4102281 () Bool)

(declare-fun tp!1242669 () Bool)

(assert (=> b!4102281 (= e!2545699 tp!1242669)))

(declare-fun b!4102279 () Bool)

(assert (=> b!4102279 (= e!2545699 tp_is_empty!21085)))

(assert (= (and b!4101761 ((_ is ElementMatch!12051) (regTwo!24615 (regTwo!24614 (regex!7146 rHead!24))))) b!4102279))

(assert (= (and b!4101761 ((_ is Concat!19427) (regTwo!24615 (regTwo!24614 (regex!7146 rHead!24))))) b!4102280))

(assert (= (and b!4101761 ((_ is Star!12051) (regTwo!24615 (regTwo!24614 (regex!7146 rHead!24))))) b!4102281))

(assert (= (and b!4101761 ((_ is Union!12051) (regTwo!24615 (regTwo!24614 (regex!7146 rHead!24))))) b!4102282))

(declare-fun b!4102286 () Bool)

(declare-fun e!2545700 () Bool)

(declare-fun tp!1242672 () Bool)

(declare-fun tp!1242670 () Bool)

(assert (=> b!4102286 (= e!2545700 (and tp!1242672 tp!1242670))))

(assert (=> b!4101741 (= tp!1242140 e!2545700)))

(declare-fun b!4102284 () Bool)

(declare-fun tp!1242671 () Bool)

(declare-fun tp!1242673 () Bool)

(assert (=> b!4102284 (= e!2545700 (and tp!1242671 tp!1242673))))

(declare-fun b!4102285 () Bool)

(declare-fun tp!1242674 () Bool)

(assert (=> b!4102285 (= e!2545700 tp!1242674)))

(declare-fun b!4102283 () Bool)

(assert (=> b!4102283 (= e!2545700 tp_is_empty!21085)))

(assert (= (and b!4101741 ((_ is ElementMatch!12051) (regOne!24615 (regTwo!24615 (regex!7146 rHead!24))))) b!4102283))

(assert (= (and b!4101741 ((_ is Concat!19427) (regOne!24615 (regTwo!24615 (regex!7146 rHead!24))))) b!4102284))

(assert (= (and b!4101741 ((_ is Star!12051) (regOne!24615 (regTwo!24615 (regex!7146 rHead!24))))) b!4102285))

(assert (= (and b!4101741 ((_ is Union!12051) (regOne!24615 (regTwo!24615 (regex!7146 rHead!24))))) b!4102286))

(declare-fun b!4102290 () Bool)

(declare-fun e!2545701 () Bool)

(declare-fun tp!1242677 () Bool)

(declare-fun tp!1242675 () Bool)

(assert (=> b!4102290 (= e!2545701 (and tp!1242677 tp!1242675))))

(assert (=> b!4101741 (= tp!1242138 e!2545701)))

(declare-fun b!4102288 () Bool)

(declare-fun tp!1242676 () Bool)

(declare-fun tp!1242678 () Bool)

(assert (=> b!4102288 (= e!2545701 (and tp!1242676 tp!1242678))))

(declare-fun b!4102289 () Bool)

(declare-fun tp!1242679 () Bool)

(assert (=> b!4102289 (= e!2545701 tp!1242679)))

(declare-fun b!4102287 () Bool)

(assert (=> b!4102287 (= e!2545701 tp_is_empty!21085)))

(assert (= (and b!4101741 ((_ is ElementMatch!12051) (regTwo!24615 (regTwo!24615 (regex!7146 rHead!24))))) b!4102287))

(assert (= (and b!4101741 ((_ is Concat!19427) (regTwo!24615 (regTwo!24615 (regex!7146 rHead!24))))) b!4102288))

(assert (= (and b!4101741 ((_ is Star!12051) (regTwo!24615 (regTwo!24615 (regex!7146 rHead!24))))) b!4102289))

(assert (= (and b!4101741 ((_ is Union!12051) (regTwo!24615 (regTwo!24615 (regex!7146 rHead!24))))) b!4102290))

(declare-fun b!4102294 () Bool)

(declare-fun e!2545702 () Bool)

(declare-fun tp!1242682 () Bool)

(declare-fun tp!1242680 () Bool)

(assert (=> b!4102294 (= e!2545702 (and tp!1242682 tp!1242680))))

(assert (=> b!4101732 (= tp!1242132 e!2545702)))

(declare-fun b!4102292 () Bool)

(declare-fun tp!1242681 () Bool)

(declare-fun tp!1242683 () Bool)

(assert (=> b!4102292 (= e!2545702 (and tp!1242681 tp!1242683))))

(declare-fun b!4102293 () Bool)

(declare-fun tp!1242684 () Bool)

(assert (=> b!4102293 (= e!2545702 tp!1242684)))

(declare-fun b!4102291 () Bool)

(assert (=> b!4102291 (= e!2545702 tp_is_empty!21085)))

(assert (= (and b!4101732 ((_ is ElementMatch!12051) (reg!12380 (reg!12380 (regex!7146 (h!49484 rTail!27)))))) b!4102291))

(assert (= (and b!4101732 ((_ is Concat!19427) (reg!12380 (reg!12380 (regex!7146 (h!49484 rTail!27)))))) b!4102292))

(assert (= (and b!4101732 ((_ is Star!12051) (reg!12380 (reg!12380 (regex!7146 (h!49484 rTail!27)))))) b!4102293))

(assert (= (and b!4101732 ((_ is Union!12051) (reg!12380 (reg!12380 (regex!7146 (h!49484 rTail!27)))))) b!4102294))

(declare-fun b!4102298 () Bool)

(declare-fun e!2545703 () Bool)

(declare-fun tp!1242687 () Bool)

(declare-fun tp!1242685 () Bool)

(assert (=> b!4102298 (= e!2545703 (and tp!1242687 tp!1242685))))

(assert (=> b!4101733 (= tp!1242130 e!2545703)))

(declare-fun b!4102296 () Bool)

(declare-fun tp!1242686 () Bool)

(declare-fun tp!1242688 () Bool)

(assert (=> b!4102296 (= e!2545703 (and tp!1242686 tp!1242688))))

(declare-fun b!4102297 () Bool)

(declare-fun tp!1242689 () Bool)

(assert (=> b!4102297 (= e!2545703 tp!1242689)))

(declare-fun b!4102295 () Bool)

(assert (=> b!4102295 (= e!2545703 tp_is_empty!21085)))

(assert (= (and b!4101733 ((_ is ElementMatch!12051) (regOne!24615 (reg!12380 (regex!7146 (h!49484 rTail!27)))))) b!4102295))

(assert (= (and b!4101733 ((_ is Concat!19427) (regOne!24615 (reg!12380 (regex!7146 (h!49484 rTail!27)))))) b!4102296))

(assert (= (and b!4101733 ((_ is Star!12051) (regOne!24615 (reg!12380 (regex!7146 (h!49484 rTail!27)))))) b!4102297))

(assert (= (and b!4101733 ((_ is Union!12051) (regOne!24615 (reg!12380 (regex!7146 (h!49484 rTail!27)))))) b!4102298))

(declare-fun b!4102302 () Bool)

(declare-fun e!2545704 () Bool)

(declare-fun tp!1242692 () Bool)

(declare-fun tp!1242690 () Bool)

(assert (=> b!4102302 (= e!2545704 (and tp!1242692 tp!1242690))))

(assert (=> b!4101733 (= tp!1242128 e!2545704)))

(declare-fun b!4102300 () Bool)

(declare-fun tp!1242691 () Bool)

(declare-fun tp!1242693 () Bool)

(assert (=> b!4102300 (= e!2545704 (and tp!1242691 tp!1242693))))

(declare-fun b!4102301 () Bool)

(declare-fun tp!1242694 () Bool)

(assert (=> b!4102301 (= e!2545704 tp!1242694)))

(declare-fun b!4102299 () Bool)

(assert (=> b!4102299 (= e!2545704 tp_is_empty!21085)))

(assert (= (and b!4101733 ((_ is ElementMatch!12051) (regTwo!24615 (reg!12380 (regex!7146 (h!49484 rTail!27)))))) b!4102299))

(assert (= (and b!4101733 ((_ is Concat!19427) (regTwo!24615 (reg!12380 (regex!7146 (h!49484 rTail!27)))))) b!4102300))

(assert (= (and b!4101733 ((_ is Star!12051) (regTwo!24615 (reg!12380 (regex!7146 (h!49484 rTail!27)))))) b!4102301))

(assert (= (and b!4101733 ((_ is Union!12051) (regTwo!24615 (reg!12380 (regex!7146 (h!49484 rTail!27)))))) b!4102302))

(declare-fun b!4102306 () Bool)

(declare-fun e!2545705 () Bool)

(declare-fun tp!1242697 () Bool)

(declare-fun tp!1242695 () Bool)

(assert (=> b!4102306 (= e!2545705 (and tp!1242697 tp!1242695))))

(assert (=> b!4101765 (= tp!1242170 e!2545705)))

(declare-fun b!4102304 () Bool)

(declare-fun tp!1242696 () Bool)

(declare-fun tp!1242698 () Bool)

(assert (=> b!4102304 (= e!2545705 (and tp!1242696 tp!1242698))))

(declare-fun b!4102305 () Bool)

(declare-fun tp!1242699 () Bool)

(assert (=> b!4102305 (= e!2545705 tp!1242699)))

(declare-fun b!4102303 () Bool)

(assert (=> b!4102303 (= e!2545705 tp_is_empty!21085)))

(assert (= (and b!4101765 ((_ is ElementMatch!12051) (regOne!24615 (regOne!24614 (regex!7146 (h!49484 rTail!27)))))) b!4102303))

(assert (= (and b!4101765 ((_ is Concat!19427) (regOne!24615 (regOne!24614 (regex!7146 (h!49484 rTail!27)))))) b!4102304))

(assert (= (and b!4101765 ((_ is Star!12051) (regOne!24615 (regOne!24614 (regex!7146 (h!49484 rTail!27)))))) b!4102305))

(assert (= (and b!4101765 ((_ is Union!12051) (regOne!24615 (regOne!24614 (regex!7146 (h!49484 rTail!27)))))) b!4102306))

(declare-fun b!4102310 () Bool)

(declare-fun e!2545706 () Bool)

(declare-fun tp!1242702 () Bool)

(declare-fun tp!1242700 () Bool)

(assert (=> b!4102310 (= e!2545706 (and tp!1242702 tp!1242700))))

(assert (=> b!4101765 (= tp!1242168 e!2545706)))

(declare-fun b!4102308 () Bool)

(declare-fun tp!1242701 () Bool)

(declare-fun tp!1242703 () Bool)

(assert (=> b!4102308 (= e!2545706 (and tp!1242701 tp!1242703))))

(declare-fun b!4102309 () Bool)

(declare-fun tp!1242704 () Bool)

(assert (=> b!4102309 (= e!2545706 tp!1242704)))

(declare-fun b!4102307 () Bool)

(assert (=> b!4102307 (= e!2545706 tp_is_empty!21085)))

(assert (= (and b!4101765 ((_ is ElementMatch!12051) (regTwo!24615 (regOne!24614 (regex!7146 (h!49484 rTail!27)))))) b!4102307))

(assert (= (and b!4101765 ((_ is Concat!19427) (regTwo!24615 (regOne!24614 (regex!7146 (h!49484 rTail!27)))))) b!4102308))

(assert (= (and b!4101765 ((_ is Star!12051) (regTwo!24615 (regOne!24614 (regex!7146 (h!49484 rTail!27)))))) b!4102309))

(assert (= (and b!4101765 ((_ is Union!12051) (regTwo!24615 (regOne!24614 (regex!7146 (h!49484 rTail!27)))))) b!4102310))

(declare-fun b!4102314 () Bool)

(declare-fun e!2545707 () Bool)

(declare-fun tp!1242707 () Bool)

(declare-fun tp!1242705 () Bool)

(assert (=> b!4102314 (= e!2545707 (and tp!1242707 tp!1242705))))

(assert (=> b!4101757 (= tp!1242160 e!2545707)))

(declare-fun b!4102312 () Bool)

(declare-fun tp!1242706 () Bool)

(declare-fun tp!1242708 () Bool)

(assert (=> b!4102312 (= e!2545707 (and tp!1242706 tp!1242708))))

(declare-fun b!4102313 () Bool)

(declare-fun tp!1242709 () Bool)

(assert (=> b!4102313 (= e!2545707 tp!1242709)))

(declare-fun b!4102311 () Bool)

(assert (=> b!4102311 (= e!2545707 tp_is_empty!21085)))

(assert (= (and b!4101757 ((_ is ElementMatch!12051) (regOne!24615 (regOne!24614 (regex!7146 rHead!24))))) b!4102311))

(assert (= (and b!4101757 ((_ is Concat!19427) (regOne!24615 (regOne!24614 (regex!7146 rHead!24))))) b!4102312))

(assert (= (and b!4101757 ((_ is Star!12051) (regOne!24615 (regOne!24614 (regex!7146 rHead!24))))) b!4102313))

(assert (= (and b!4101757 ((_ is Union!12051) (regOne!24615 (regOne!24614 (regex!7146 rHead!24))))) b!4102314))

(declare-fun b!4102318 () Bool)

(declare-fun e!2545708 () Bool)

(declare-fun tp!1242712 () Bool)

(declare-fun tp!1242710 () Bool)

(assert (=> b!4102318 (= e!2545708 (and tp!1242712 tp!1242710))))

(assert (=> b!4101757 (= tp!1242158 e!2545708)))

(declare-fun b!4102316 () Bool)

(declare-fun tp!1242711 () Bool)

(declare-fun tp!1242713 () Bool)

(assert (=> b!4102316 (= e!2545708 (and tp!1242711 tp!1242713))))

(declare-fun b!4102317 () Bool)

(declare-fun tp!1242714 () Bool)

(assert (=> b!4102317 (= e!2545708 tp!1242714)))

(declare-fun b!4102315 () Bool)

(assert (=> b!4102315 (= e!2545708 tp_is_empty!21085)))

(assert (= (and b!4101757 ((_ is ElementMatch!12051) (regTwo!24615 (regOne!24614 (regex!7146 rHead!24))))) b!4102315))

(assert (= (and b!4101757 ((_ is Concat!19427) (regTwo!24615 (regOne!24614 (regex!7146 rHead!24))))) b!4102316))

(assert (= (and b!4101757 ((_ is Star!12051) (regTwo!24615 (regOne!24614 (regex!7146 rHead!24))))) b!4102317))

(assert (= (and b!4101757 ((_ is Union!12051) (regTwo!24615 (regOne!24614 (regex!7146 rHead!24))))) b!4102318))

(declare-fun b!4102322 () Bool)

(declare-fun e!2545709 () Bool)

(declare-fun tp!1242717 () Bool)

(declare-fun tp!1242715 () Bool)

(assert (=> b!4102322 (= e!2545709 (and tp!1242717 tp!1242715))))

(assert (=> b!4101748 (= tp!1242152 e!2545709)))

(declare-fun b!4102320 () Bool)

(declare-fun tp!1242716 () Bool)

(declare-fun tp!1242718 () Bool)

(assert (=> b!4102320 (= e!2545709 (and tp!1242716 tp!1242718))))

(declare-fun b!4102321 () Bool)

(declare-fun tp!1242719 () Bool)

(assert (=> b!4102321 (= e!2545709 tp!1242719)))

(declare-fun b!4102319 () Bool)

(assert (=> b!4102319 (= e!2545709 tp_is_empty!21085)))

(assert (= (and b!4101748 ((_ is ElementMatch!12051) (reg!12380 (regTwo!24615 (regex!7146 (h!49484 rTail!27)))))) b!4102319))

(assert (= (and b!4101748 ((_ is Concat!19427) (reg!12380 (regTwo!24615 (regex!7146 (h!49484 rTail!27)))))) b!4102320))

(assert (= (and b!4101748 ((_ is Star!12051) (reg!12380 (regTwo!24615 (regex!7146 (h!49484 rTail!27)))))) b!4102321))

(assert (= (and b!4101748 ((_ is Union!12051) (reg!12380 (regTwo!24615 (regex!7146 (h!49484 rTail!27)))))) b!4102322))

(declare-fun b!4102326 () Bool)

(declare-fun e!2545710 () Bool)

(declare-fun tp!1242722 () Bool)

(declare-fun tp!1242720 () Bool)

(assert (=> b!4102326 (= e!2545710 (and tp!1242722 tp!1242720))))

(assert (=> b!4101739 (= tp!1242139 e!2545710)))

(declare-fun b!4102324 () Bool)

(declare-fun tp!1242721 () Bool)

(declare-fun tp!1242723 () Bool)

(assert (=> b!4102324 (= e!2545710 (and tp!1242721 tp!1242723))))

(declare-fun b!4102325 () Bool)

(declare-fun tp!1242724 () Bool)

(assert (=> b!4102325 (= e!2545710 tp!1242724)))

(declare-fun b!4102323 () Bool)

(assert (=> b!4102323 (= e!2545710 tp_is_empty!21085)))

(assert (= (and b!4101739 ((_ is ElementMatch!12051) (regOne!24614 (regTwo!24615 (regex!7146 rHead!24))))) b!4102323))

(assert (= (and b!4101739 ((_ is Concat!19427) (regOne!24614 (regTwo!24615 (regex!7146 rHead!24))))) b!4102324))

(assert (= (and b!4101739 ((_ is Star!12051) (regOne!24614 (regTwo!24615 (regex!7146 rHead!24))))) b!4102325))

(assert (= (and b!4101739 ((_ is Union!12051) (regOne!24614 (regTwo!24615 (regex!7146 rHead!24))))) b!4102326))

(declare-fun b!4102330 () Bool)

(declare-fun e!2545711 () Bool)

(declare-fun tp!1242727 () Bool)

(declare-fun tp!1242725 () Bool)

(assert (=> b!4102330 (= e!2545711 (and tp!1242727 tp!1242725))))

(assert (=> b!4101739 (= tp!1242141 e!2545711)))

(declare-fun b!4102328 () Bool)

(declare-fun tp!1242726 () Bool)

(declare-fun tp!1242728 () Bool)

(assert (=> b!4102328 (= e!2545711 (and tp!1242726 tp!1242728))))

(declare-fun b!4102329 () Bool)

(declare-fun tp!1242729 () Bool)

(assert (=> b!4102329 (= e!2545711 tp!1242729)))

(declare-fun b!4102327 () Bool)

(assert (=> b!4102327 (= e!2545711 tp_is_empty!21085)))

(assert (= (and b!4101739 ((_ is ElementMatch!12051) (regTwo!24614 (regTwo!24615 (regex!7146 rHead!24))))) b!4102327))

(assert (= (and b!4101739 ((_ is Concat!19427) (regTwo!24614 (regTwo!24615 (regex!7146 rHead!24))))) b!4102328))

(assert (= (and b!4101739 ((_ is Star!12051) (regTwo!24614 (regTwo!24615 (regex!7146 rHead!24))))) b!4102329))

(assert (= (and b!4101739 ((_ is Union!12051) (regTwo!24614 (regTwo!24615 (regex!7146 rHead!24))))) b!4102330))

(declare-fun b!4102334 () Bool)

(declare-fun e!2545712 () Bool)

(declare-fun tp!1242732 () Bool)

(declare-fun tp!1242730 () Bool)

(assert (=> b!4102334 (= e!2545712 (and tp!1242732 tp!1242730))))

(assert (=> b!4101749 (= tp!1242150 e!2545712)))

(declare-fun b!4102332 () Bool)

(declare-fun tp!1242731 () Bool)

(declare-fun tp!1242733 () Bool)

(assert (=> b!4102332 (= e!2545712 (and tp!1242731 tp!1242733))))

(declare-fun b!4102333 () Bool)

(declare-fun tp!1242734 () Bool)

(assert (=> b!4102333 (= e!2545712 tp!1242734)))

(declare-fun b!4102331 () Bool)

(assert (=> b!4102331 (= e!2545712 tp_is_empty!21085)))

(assert (= (and b!4101749 ((_ is ElementMatch!12051) (regOne!24615 (regTwo!24615 (regex!7146 (h!49484 rTail!27)))))) b!4102331))

(assert (= (and b!4101749 ((_ is Concat!19427) (regOne!24615 (regTwo!24615 (regex!7146 (h!49484 rTail!27)))))) b!4102332))

(assert (= (and b!4101749 ((_ is Star!12051) (regOne!24615 (regTwo!24615 (regex!7146 (h!49484 rTail!27)))))) b!4102333))

(assert (= (and b!4101749 ((_ is Union!12051) (regOne!24615 (regTwo!24615 (regex!7146 (h!49484 rTail!27)))))) b!4102334))

(declare-fun b!4102338 () Bool)

(declare-fun e!2545713 () Bool)

(declare-fun tp!1242737 () Bool)

(declare-fun tp!1242735 () Bool)

(assert (=> b!4102338 (= e!2545713 (and tp!1242737 tp!1242735))))

(assert (=> b!4101749 (= tp!1242148 e!2545713)))

(declare-fun b!4102336 () Bool)

(declare-fun tp!1242736 () Bool)

(declare-fun tp!1242738 () Bool)

(assert (=> b!4102336 (= e!2545713 (and tp!1242736 tp!1242738))))

(declare-fun b!4102337 () Bool)

(declare-fun tp!1242739 () Bool)

(assert (=> b!4102337 (= e!2545713 tp!1242739)))

(declare-fun b!4102335 () Bool)

(assert (=> b!4102335 (= e!2545713 tp_is_empty!21085)))

(assert (= (and b!4101749 ((_ is ElementMatch!12051) (regTwo!24615 (regTwo!24615 (regex!7146 (h!49484 rTail!27)))))) b!4102335))

(assert (= (and b!4101749 ((_ is Concat!19427) (regTwo!24615 (regTwo!24615 (regex!7146 (h!49484 rTail!27)))))) b!4102336))

(assert (= (and b!4101749 ((_ is Star!12051) (regTwo!24615 (regTwo!24615 (regex!7146 (h!49484 rTail!27)))))) b!4102337))

(assert (= (and b!4101749 ((_ is Union!12051) (regTwo!24615 (regTwo!24615 (regex!7146 (h!49484 rTail!27)))))) b!4102338))

(declare-fun b!4102342 () Bool)

(declare-fun e!2545714 () Bool)

(declare-fun tp!1242742 () Bool)

(declare-fun tp!1242740 () Bool)

(assert (=> b!4102342 (= e!2545714 (and tp!1242742 tp!1242740))))

(assert (=> b!4101740 (= tp!1242142 e!2545714)))

(declare-fun b!4102340 () Bool)

(declare-fun tp!1242741 () Bool)

(declare-fun tp!1242743 () Bool)

(assert (=> b!4102340 (= e!2545714 (and tp!1242741 tp!1242743))))

(declare-fun b!4102341 () Bool)

(declare-fun tp!1242744 () Bool)

(assert (=> b!4102341 (= e!2545714 tp!1242744)))

(declare-fun b!4102339 () Bool)

(assert (=> b!4102339 (= e!2545714 tp_is_empty!21085)))

(assert (= (and b!4101740 ((_ is ElementMatch!12051) (reg!12380 (regTwo!24615 (regex!7146 rHead!24))))) b!4102339))

(assert (= (and b!4101740 ((_ is Concat!19427) (reg!12380 (regTwo!24615 (regex!7146 rHead!24))))) b!4102340))

(assert (= (and b!4101740 ((_ is Star!12051) (reg!12380 (regTwo!24615 (regex!7146 rHead!24))))) b!4102341))

(assert (= (and b!4101740 ((_ is Union!12051) (reg!12380 (regTwo!24615 (regex!7146 rHead!24))))) b!4102342))

(declare-fun b!4102346 () Bool)

(declare-fun e!2545715 () Bool)

(declare-fun tp!1242747 () Bool)

(declare-fun tp!1242745 () Bool)

(assert (=> b!4102346 (= e!2545715 (and tp!1242747 tp!1242745))))

(assert (=> b!4101731 (= tp!1242129 e!2545715)))

(declare-fun b!4102344 () Bool)

(declare-fun tp!1242746 () Bool)

(declare-fun tp!1242748 () Bool)

(assert (=> b!4102344 (= e!2545715 (and tp!1242746 tp!1242748))))

(declare-fun b!4102345 () Bool)

(declare-fun tp!1242749 () Bool)

(assert (=> b!4102345 (= e!2545715 tp!1242749)))

(declare-fun b!4102343 () Bool)

(assert (=> b!4102343 (= e!2545715 tp_is_empty!21085)))

(assert (= (and b!4101731 ((_ is ElementMatch!12051) (regOne!24614 (reg!12380 (regex!7146 (h!49484 rTail!27)))))) b!4102343))

(assert (= (and b!4101731 ((_ is Concat!19427) (regOne!24614 (reg!12380 (regex!7146 (h!49484 rTail!27)))))) b!4102344))

(assert (= (and b!4101731 ((_ is Star!12051) (regOne!24614 (reg!12380 (regex!7146 (h!49484 rTail!27)))))) b!4102345))

(assert (= (and b!4101731 ((_ is Union!12051) (regOne!24614 (reg!12380 (regex!7146 (h!49484 rTail!27)))))) b!4102346))

(declare-fun b!4102350 () Bool)

(declare-fun e!2545716 () Bool)

(declare-fun tp!1242752 () Bool)

(declare-fun tp!1242750 () Bool)

(assert (=> b!4102350 (= e!2545716 (and tp!1242752 tp!1242750))))

(assert (=> b!4101731 (= tp!1242131 e!2545716)))

(declare-fun b!4102348 () Bool)

(declare-fun tp!1242751 () Bool)

(declare-fun tp!1242753 () Bool)

(assert (=> b!4102348 (= e!2545716 (and tp!1242751 tp!1242753))))

(declare-fun b!4102349 () Bool)

(declare-fun tp!1242754 () Bool)

(assert (=> b!4102349 (= e!2545716 tp!1242754)))

(declare-fun b!4102347 () Bool)

(assert (=> b!4102347 (= e!2545716 tp_is_empty!21085)))

(assert (= (and b!4101731 ((_ is ElementMatch!12051) (regTwo!24614 (reg!12380 (regex!7146 (h!49484 rTail!27)))))) b!4102347))

(assert (= (and b!4101731 ((_ is Concat!19427) (regTwo!24614 (reg!12380 (regex!7146 (h!49484 rTail!27)))))) b!4102348))

(assert (= (and b!4101731 ((_ is Star!12051) (regTwo!24614 (reg!12380 (regex!7146 (h!49484 rTail!27)))))) b!4102349))

(assert (= (and b!4101731 ((_ is Union!12051) (regTwo!24614 (reg!12380 (regex!7146 (h!49484 rTail!27)))))) b!4102350))

(declare-fun b_lambda!120545 () Bool)

(assert (= b_lambda!120531 (or d!1217746 b_lambda!120545)))

(declare-fun bs!593936 () Bool)

(declare-fun d!1217882 () Bool)

(assert (= bs!593936 (and d!1217882 d!1217746)))

(assert (=> bs!593936 (= (dynLambda!18876 lambda!128258 (h!49484 (t!339845 rTail!27))) (ruleValid!3045 thiss!26455 (h!49484 (t!339845 rTail!27))))))

(assert (=> bs!593936 m!4708333))

(assert (=> b!4101822 d!1217882))

(declare-fun b_lambda!120547 () Bool)

(assert (= b_lambda!120535 (or d!1217694 b_lambda!120547)))

(declare-fun bs!593937 () Bool)

(declare-fun d!1217884 () Bool)

(assert (= bs!593937 (and d!1217884 d!1217694)))

(assert (=> bs!593937 (= (dynLambda!18876 lambda!128239 (h!49484 (t!339845 rTail!27))) (ruleValid!3045 thiss!26455 (h!49484 (t!339845 rTail!27))))))

(assert (=> bs!593937 m!4708333))

(assert (=> b!4101855 d!1217884))

(declare-fun b_lambda!120549 () Bool)

(assert (= b_lambda!120537 (or d!1217766 b_lambda!120549)))

(declare-fun bs!593938 () Bool)

(declare-fun d!1217886 () Bool)

(assert (= bs!593938 (and d!1217886 d!1217766)))

(assert (=> bs!593938 (= (dynLambda!18876 lambda!128263 (h!49484 lt!1467005)) (ruleValid!3045 thiss!26455 (h!49484 lt!1467005)))))

(assert (=> bs!593938 m!4708537))

(assert (=> b!4102018 d!1217886))

(check-sat (not b!4102139) (not b!4102214) (not d!1217824) (not b!4102292) (not b!4102261) (not b!4102129) (not b!4102325) (not b!4101865) (not b!4102075) (not b!4102082) (not b!4102318) (not b!4102137) (not b!4102066) (not b!4102223) (not b!4102167) (not b!4102157) (not b!4101829) (not b!4102342) (not b!4102054) (not b!4102171) (not b!4102149) (not b!4102097) (not b!4102298) (not b!4102346) (not b!4102260) b_and!316741 (not d!1217872) (not d!1217862) b_and!316727 (not b!4102294) (not b!4102344) (not b!4102106) (not b!4102209) (not b!4102138) (not b!4102215) (not b_next!115629) (not b!4102262) (not b!4102321) (not b!4102248) (not b!4102151) (not b!4102268) (not d!1217852) (not b!4102301) (not b!4102105) (not b!4102229) (not b_next!115623) (not b!4102337) (not b!4102270) (not b!4102265) (not b!4102348) (not b!4101844) (not b!4102286) (not b!4102278) (not b!4102235) (not b!4101988) (not bm!289792) (not b!4102213) (not b!4102338) (not b!4102181) (not b!4102189) (not b_next!115619) (not b!4102178) (not b!4102322) (not b!4102300) (not b_lambda!120547) (not b!4102119) (not b!4102305) (not b!4102061) (not b!4102252) (not b!4102182) (not b!4102086) (not b!4102277) (not b!4102350) (not b!4102177) (not b!4102273) (not b!4102067) (not b!4101854) (not b!4102302) (not b!4101853) b_and!316729 tp_is_empty!21085 (not bs!593936) (not b!4102183) (not d!1217856) (not b!4102145) (not b!4102334) (not b!4101828) (not b!4102035) (not b!4102008) (not b!4102240) (not b!4102159) (not b!4102309) (not b!4102094) (not b!4102328) (not b!4102098) (not b!4102131) (not b!4102254) (not b!4102282) (not b!4102211) (not b!4102313) (not b!4102047) (not b!4102285) (not b!4101967) (not b!4102274) (not b!4102349) (not b!4102269) (not b!4102062) (not b!4102085) b_and!316733 (not b!4102320) (not bs!593937) (not b!4102191) (not b!4102117) (not b!4102166) (not b!4102055) (not d!1217840) (not b!4102202) (not b!4102250) (not b!4102289) (not b!4102065) (not b!4102257) (not d!1217868) (not b!4102221) (not b!4102306) (not b!4102198) (not b!4102009) (not b!4102290) (not b!4102281) (not b!4101856) (not b!4102197) (not b_next!115645) (not b_lambda!120549) (not b!4101994) (not b!4101995) (not b!4101827) (not d!1217864) (not b_next!115639) (not b!4102150) (not bm!289793) (not b!4102099) (not b!4102276) (not b!4102345) (not b!4102284) (not b!4102029) (not b!4102241) (not b!4102249) (not b!4102073) (not d!1217836) (not b!4102330) (not b!4102341) (not b!4102231) (not b!4102019) (not b!4102130) (not b!4102310) b_and!316731 (not b!4102034) (not b_next!115621) (not d!1217816) (not b!4101848) (not b!4102332) (not b!4102126) (not d!1217830) (not b!4102107) (not b!4102336) (not b!4102179) (not b!4102304) (not b!4101825) b_and!316755 (not b!4102329) (not b!4102314) (not b!4102312) (not d!1217866) (not b!4102296) (not b!4102158) (not b!4102169) (not b!4102115) (not b!4102165) (not b!4102272) (not b!4102293) (not bs!593938) (not b!4102063) (not b!4102046) (not b!4102288) (not d!1217818) (not b!4102127) (not b!4102093) (not b!4102258) (not b!4102316) (not b!4102234) (not b!4102210) (not b!4102317) (not b!4102074) (not b!4102222) (not b!4102170) b_and!316739 (not b!4102118) (not b!4102230) (not b!4102308) (not b!4102190) (not b!4102087) (not b_lambda!120545) (not b_next!115637) (not b!4102083) b_and!316757 (not b!4102147) (not b!4102233) b_and!316747 (not b!4102053) (not b!4102264) (not b!4102297) (not b!4102280) (not b!4102095) (not b!4102256) (not b_next!115617) (not b!4102340) (not b!4102253) (not b!4102201) (not b!4102045) (not b!4102333) (not b_lambda!120525) (not b!4102146) (not b!4102203) (not b!4102081) b_and!316749 (not b!4102113) (not b!4102266) (not b_next!115647) (not b!4102114) (not b!4102125) (not d!1217846) (not d!1217860) (not b!4102324) (not b!4102199) (not b_next!115631) (not b!4102326) (not b!4101823))
(check-sat (not b_next!115629) (not b_next!115623) (not b_next!115619) b_and!316729 b_and!316733 (not b_next!115645) (not b_next!115639) b_and!316755 b_and!316739 b_and!316747 (not b_next!115617) (not b_next!115631) b_and!316741 b_and!316727 (not b_next!115621) b_and!316731 (not b_next!115637) b_and!316757 b_and!316749 (not b_next!115647))
