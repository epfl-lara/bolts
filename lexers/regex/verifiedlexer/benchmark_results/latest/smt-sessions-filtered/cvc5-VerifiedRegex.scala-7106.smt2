; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!376694 () Bool)

(assert start!376694)

(declare-fun b!4002338 () Bool)

(declare-fun b_free!111257 () Bool)

(declare-fun b_next!111961 () Bool)

(assert (=> b!4002338 (= b_free!111257 (not b_next!111961))))

(declare-fun tp!1218075 () Bool)

(declare-fun b_and!307327 () Bool)

(assert (=> b!4002338 (= tp!1218075 b_and!307327)))

(declare-fun b_free!111259 () Bool)

(declare-fun b_next!111963 () Bool)

(assert (=> b!4002338 (= b_free!111259 (not b_next!111963))))

(declare-fun tp!1218082 () Bool)

(declare-fun b_and!307329 () Bool)

(assert (=> b!4002338 (= tp!1218082 b_and!307329)))

(declare-fun b!4002344 () Bool)

(declare-fun b_free!111261 () Bool)

(declare-fun b_next!111965 () Bool)

(assert (=> b!4002344 (= b_free!111261 (not b_next!111965))))

(declare-fun tp!1218078 () Bool)

(declare-fun b_and!307331 () Bool)

(assert (=> b!4002344 (= tp!1218078 b_and!307331)))

(declare-fun b_free!111263 () Bool)

(declare-fun b_next!111967 () Bool)

(assert (=> b!4002344 (= b_free!111263 (not b_next!111967))))

(declare-fun tp!1218079 () Bool)

(declare-fun b_and!307333 () Bool)

(assert (=> b!4002344 (= tp!1218079 b_and!307333)))

(declare-fun b!4002327 () Bool)

(declare-fun e!2481806 () Bool)

(declare-fun e!2481808 () Bool)

(assert (=> b!4002327 (= e!2481806 e!2481808)))

(declare-fun res!1626215 () Bool)

(assert (=> b!4002327 (=> (not res!1626215) (not e!2481808))))

(declare-datatypes ((C!23594 0))(
  ( (C!23595 (val!13891 Int)) )
))
(declare-datatypes ((List!42951 0))(
  ( (Nil!42827) (Cons!42827 (h!48247 C!23594) (t!332280 List!42951)) )
))
(declare-datatypes ((IArray!26025 0))(
  ( (IArray!26026 (innerList!13070 List!42951)) )
))
(declare-datatypes ((Conc!13010 0))(
  ( (Node!13010 (left!32328 Conc!13010) (right!32658 Conc!13010) (csize!26250 Int) (cheight!13221 Int)) (Leaf!20117 (xs!16316 IArray!26025) (csize!26251 Int)) (Empty!13010) )
))
(declare-datatypes ((BalanceConc!25614 0))(
  ( (BalanceConc!25615 (c!692159 Conc!13010)) )
))
(declare-datatypes ((List!42952 0))(
  ( (Nil!42828) (Cons!42828 (h!48248 (_ BitVec 16)) (t!332281 List!42952)) )
))
(declare-datatypes ((TokenValue!7029 0))(
  ( (FloatLiteralValue!14058 (text!49648 List!42952)) (TokenValueExt!7028 (__x!26275 Int)) (Broken!35145 (value!214381 List!42952)) (Object!7152) (End!7029) (Def!7029) (Underscore!7029) (Match!7029) (Else!7029) (Error!7029) (Case!7029) (If!7029) (Extends!7029) (Abstract!7029) (Class!7029) (Val!7029) (DelimiterValue!14058 (del!7089 List!42952)) (KeywordValue!7035 (value!214382 List!42952)) (CommentValue!14058 (value!214383 List!42952)) (WhitespaceValue!14058 (value!214384 List!42952)) (IndentationValue!7029 (value!214385 List!42952)) (String!48864) (Int32!7029) (Broken!35146 (value!214386 List!42952)) (Boolean!7030) (Unit!61816) (OperatorValue!7032 (op!7089 List!42952)) (IdentifierValue!14058 (value!214387 List!42952)) (IdentifierValue!14059 (value!214388 List!42952)) (WhitespaceValue!14059 (value!214389 List!42952)) (True!14058) (False!14058) (Broken!35147 (value!214390 List!42952)) (Broken!35148 (value!214391 List!42952)) (True!14059) (RightBrace!7029) (RightBracket!7029) (Colon!7029) (Null!7029) (Comma!7029) (LeftBracket!7029) (False!14059) (LeftBrace!7029) (ImaginaryLiteralValue!7029 (text!49649 List!42952)) (StringLiteralValue!21087 (value!214392 List!42952)) (EOFValue!7029 (value!214393 List!42952)) (IdentValue!7029 (value!214394 List!42952)) (DelimiterValue!14059 (value!214395 List!42952)) (DedentValue!7029 (value!214396 List!42952)) (NewLineValue!7029 (value!214397 List!42952)) (IntegerValue!21087 (value!214398 (_ BitVec 32)) (text!49650 List!42952)) (IntegerValue!21088 (value!214399 Int) (text!49651 List!42952)) (Times!7029) (Or!7029) (Equal!7029) (Minus!7029) (Broken!35149 (value!214400 List!42952)) (And!7029) (Div!7029) (LessEqual!7029) (Mod!7029) (Concat!18733) (Not!7029) (Plus!7029) (SpaceValue!7029 (value!214401 List!42952)) (IntegerValue!21089 (value!214402 Int) (text!49652 List!42952)) (StringLiteralValue!21088 (text!49653 List!42952)) (FloatLiteralValue!14059 (text!49654 List!42952)) (BytesLiteralValue!7029 (value!214403 List!42952)) (CommentValue!14059 (value!214404 List!42952)) (StringLiteralValue!21089 (value!214405 List!42952)) (ErrorTokenValue!7029 (msg!7090 List!42952)) )
))
(declare-datatypes ((Regex!11704 0))(
  ( (ElementMatch!11704 (c!692160 C!23594)) (Concat!18734 (regOne!23920 Regex!11704) (regTwo!23920 Regex!11704)) (EmptyExpr!11704) (Star!11704 (reg!12033 Regex!11704)) (EmptyLang!11704) (Union!11704 (regOne!23921 Regex!11704) (regTwo!23921 Regex!11704)) )
))
(declare-datatypes ((String!48865 0))(
  ( (String!48866 (value!214406 String)) )
))
(declare-datatypes ((TokenValueInjection!13486 0))(
  ( (TokenValueInjection!13487 (toValue!9291 Int) (toChars!9150 Int)) )
))
(declare-datatypes ((Rule!13398 0))(
  ( (Rule!13399 (regex!6799 Regex!11704) (tag!7659 String!48865) (isSeparator!6799 Bool) (transformation!6799 TokenValueInjection!13486)) )
))
(declare-datatypes ((Token!12736 0))(
  ( (Token!12737 (value!214407 TokenValue!7029) (rule!9833 Rule!13398) (size!32023 Int) (originalCharacters!7399 List!42951)) )
))
(declare-fun token!484 () Token!12736)

(declare-fun suffixResult!105 () List!42951)

(declare-fun lt!1415403 () List!42951)

(declare-datatypes ((LexerInterface!6388 0))(
  ( (LexerInterfaceExt!6385 (__x!26276 Int)) (Lexer!6386) )
))
(declare-fun thiss!21717 () LexerInterface!6388)

(declare-datatypes ((List!42953 0))(
  ( (Nil!42829) (Cons!42829 (h!48249 Rule!13398) (t!332282 List!42953)) )
))
(declare-fun rules!2999 () List!42953)

(declare-datatypes ((tuple2!42000 0))(
  ( (tuple2!42001 (_1!24134 Token!12736) (_2!24134 List!42951)) )
))
(declare-datatypes ((Option!9213 0))(
  ( (None!9212) (Some!9212 (v!39574 tuple2!42000)) )
))
(declare-fun maxPrefix!3686 (LexerInterface!6388 List!42953 List!42951) Option!9213)

(assert (=> b!4002327 (= res!1626215 (= (maxPrefix!3686 thiss!21717 rules!2999 lt!1415403) (Some!9212 (tuple2!42001 token!484 suffixResult!105))))))

(declare-fun prefix!494 () List!42951)

(declare-fun suffix!1299 () List!42951)

(declare-fun ++!11201 (List!42951 List!42951) List!42951)

(assert (=> b!4002327 (= lt!1415403 (++!11201 prefix!494 suffix!1299))))

(declare-fun b!4002328 () Bool)

(declare-fun res!1626211 () Bool)

(declare-fun e!2481807 () Bool)

(assert (=> b!4002328 (=> (not res!1626211) (not e!2481807))))

(declare-fun newSuffix!27 () List!42951)

(declare-fun isPrefix!3886 (List!42951 List!42951) Bool)

(assert (=> b!4002328 (= res!1626211 (isPrefix!3886 newSuffix!27 suffix!1299))))

(declare-fun b!4002329 () Bool)

(declare-fun e!2481811 () Bool)

(assert (=> b!4002329 (= e!2481808 (not e!2481811))))

(declare-fun res!1626212 () Bool)

(assert (=> b!4002329 (=> res!1626212 e!2481811)))

(declare-fun lt!1415402 () List!42951)

(assert (=> b!4002329 (= res!1626212 (not (= lt!1415402 lt!1415403)))))

(declare-fun lt!1415406 () List!42951)

(assert (=> b!4002329 (= lt!1415402 (++!11201 lt!1415406 suffixResult!105))))

(declare-datatypes ((Unit!61817 0))(
  ( (Unit!61818) )
))
(declare-fun lt!1415407 () Unit!61817)

(declare-fun lemmaInv!1014 (TokenValueInjection!13486) Unit!61817)

(assert (=> b!4002329 (= lt!1415407 (lemmaInv!1014 (transformation!6799 (rule!9833 token!484))))))

(declare-fun ruleValid!2731 (LexerInterface!6388 Rule!13398) Bool)

(assert (=> b!4002329 (ruleValid!2731 thiss!21717 (rule!9833 token!484))))

(declare-fun lt!1415409 () Unit!61817)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1805 (LexerInterface!6388 Rule!13398 List!42953) Unit!61817)

(assert (=> b!4002329 (= lt!1415409 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1805 thiss!21717 (rule!9833 token!484) rules!2999))))

(declare-fun e!2481809 () Bool)

(declare-fun tp!1218083 () Bool)

(declare-fun e!2481796 () Bool)

(declare-fun b!4002330 () Bool)

(declare-fun inv!57193 (String!48865) Bool)

(declare-fun inv!57196 (TokenValueInjection!13486) Bool)

(assert (=> b!4002330 (= e!2481809 (and tp!1218083 (inv!57193 (tag!7659 (h!48249 rules!2999))) (inv!57196 (transformation!6799 (h!48249 rules!2999))) e!2481796))))

(declare-fun b!4002331 () Bool)

(declare-fun res!1626214 () Bool)

(assert (=> b!4002331 (=> (not res!1626214) (not e!2481807))))

(declare-fun isEmpty!25591 (List!42953) Bool)

(assert (=> b!4002331 (= res!1626214 (not (isEmpty!25591 rules!2999)))))

(declare-fun b!4002332 () Bool)

(declare-fun e!2481802 () Bool)

(declare-fun getSuffix!2311 (List!42951 List!42951) List!42951)

(assert (=> b!4002332 (= e!2481802 (= (++!11201 lt!1415406 (getSuffix!2311 prefix!494 lt!1415406)) prefix!494))))

(assert (=> b!4002332 (isPrefix!3886 lt!1415406 prefix!494)))

(declare-fun lt!1415405 () Unit!61817)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!458 (List!42951 List!42951 List!42951) Unit!61817)

(assert (=> b!4002332 (= lt!1415405 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!458 prefix!494 lt!1415406 lt!1415403))))

(declare-fun e!2481810 () Bool)

(declare-fun b!4002333 () Bool)

(declare-fun tp!1218077 () Bool)

(declare-fun e!2481798 () Bool)

(assert (=> b!4002333 (= e!2481798 (and tp!1218077 (inv!57193 (tag!7659 (rule!9833 token!484))) (inv!57196 (transformation!6799 (rule!9833 token!484))) e!2481810))))

(declare-fun b!4002335 () Bool)

(declare-fun e!2481797 () Bool)

(declare-fun tp_is_empty!20379 () Bool)

(declare-fun tp!1218085 () Bool)

(assert (=> b!4002335 (= e!2481797 (and tp_is_empty!20379 tp!1218085))))

(declare-fun b!4002336 () Bool)

(declare-fun e!2481812 () Bool)

(declare-fun tp!1218084 () Bool)

(assert (=> b!4002336 (= e!2481812 (and tp_is_empty!20379 tp!1218084))))

(declare-fun b!4002337 () Bool)

(declare-fun e!2481804 () Bool)

(declare-fun tp!1218080 () Bool)

(assert (=> b!4002337 (= e!2481804 (and tp_is_empty!20379 tp!1218080))))

(assert (=> b!4002338 (= e!2481810 (and tp!1218075 tp!1218082))))

(declare-fun b!4002339 () Bool)

(declare-fun e!2481801 () Bool)

(declare-fun tp!1218081 () Bool)

(assert (=> b!4002339 (= e!2481801 (and tp_is_empty!20379 tp!1218081))))

(declare-fun b!4002340 () Bool)

(declare-fun res!1626206 () Bool)

(assert (=> b!4002340 (=> (not res!1626206) (not e!2481806))))

(declare-fun newSuffixResult!27 () List!42951)

(assert (=> b!4002340 (= res!1626206 (= (++!11201 lt!1415406 newSuffixResult!27) (++!11201 prefix!494 newSuffix!27)))))

(declare-fun b!4002341 () Bool)

(assert (=> b!4002341 (= e!2481807 e!2481806)))

(declare-fun res!1626213 () Bool)

(assert (=> b!4002341 (=> (not res!1626213) (not e!2481806))))

(declare-fun size!32024 (List!42951) Int)

(assert (=> b!4002341 (= res!1626213 (>= (size!32024 prefix!494) (size!32024 lt!1415406)))))

(declare-fun list!15907 (BalanceConc!25614) List!42951)

(declare-fun charsOf!4615 (Token!12736) BalanceConc!25614)

(assert (=> b!4002341 (= lt!1415406 (list!15907 (charsOf!4615 token!484)))))

(declare-fun b!4002342 () Bool)

(declare-fun res!1626209 () Bool)

(assert (=> b!4002342 (=> (not res!1626209) (not e!2481807))))

(assert (=> b!4002342 (= res!1626209 (>= (size!32024 suffix!1299) (size!32024 newSuffix!27)))))

(declare-fun b!4002343 () Bool)

(declare-fun res!1626208 () Bool)

(assert (=> b!4002343 (=> (not res!1626208) (not e!2481807))))

(declare-fun rulesInvariant!5731 (LexerInterface!6388 List!42953) Bool)

(assert (=> b!4002343 (= res!1626208 (rulesInvariant!5731 thiss!21717 rules!2999))))

(assert (=> b!4002344 (= e!2481796 (and tp!1218078 tp!1218079))))

(declare-fun e!2481795 () Bool)

(declare-fun tp!1218073 () Bool)

(declare-fun b!4002345 () Bool)

(declare-fun inv!21 (TokenValue!7029) Bool)

(assert (=> b!4002345 (= e!2481795 (and (inv!21 (value!214407 token!484)) e!2481798 tp!1218073))))

(declare-fun b!4002346 () Bool)

(assert (=> b!4002346 (= e!2481811 e!2481802)))

(declare-fun res!1626207 () Bool)

(assert (=> b!4002346 (=> res!1626207 e!2481802)))

(assert (=> b!4002346 (= res!1626207 (not (isPrefix!3886 lt!1415406 lt!1415403)))))

(assert (=> b!4002346 (isPrefix!3886 prefix!494 lt!1415403)))

(declare-fun lt!1415404 () Unit!61817)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2727 (List!42951 List!42951) Unit!61817)

(assert (=> b!4002346 (= lt!1415404 (lemmaConcatTwoListThenFirstIsPrefix!2727 prefix!494 suffix!1299))))

(assert (=> b!4002346 (isPrefix!3886 lt!1415406 lt!1415402)))

(declare-fun lt!1415408 () Unit!61817)

(assert (=> b!4002346 (= lt!1415408 (lemmaConcatTwoListThenFirstIsPrefix!2727 lt!1415406 suffixResult!105))))

(declare-fun b!4002347 () Bool)

(declare-fun e!2481803 () Bool)

(declare-fun tp!1218076 () Bool)

(assert (=> b!4002347 (= e!2481803 (and e!2481809 tp!1218076))))

(declare-fun b!4002334 () Bool)

(declare-fun e!2481805 () Bool)

(declare-fun tp!1218074 () Bool)

(assert (=> b!4002334 (= e!2481805 (and tp_is_empty!20379 tp!1218074))))

(declare-fun res!1626210 () Bool)

(assert (=> start!376694 (=> (not res!1626210) (not e!2481807))))

(assert (=> start!376694 (= res!1626210 (is-Lexer!6386 thiss!21717))))

(assert (=> start!376694 e!2481807))

(assert (=> start!376694 e!2481801))

(declare-fun inv!57197 (Token!12736) Bool)

(assert (=> start!376694 (and (inv!57197 token!484) e!2481795)))

(assert (=> start!376694 e!2481805))

(assert (=> start!376694 e!2481797))

(assert (=> start!376694 e!2481812))

(assert (=> start!376694 true))

(assert (=> start!376694 e!2481803))

(assert (=> start!376694 e!2481804))

(assert (= (and start!376694 res!1626210) b!4002331))

(assert (= (and b!4002331 res!1626214) b!4002343))

(assert (= (and b!4002343 res!1626208) b!4002342))

(assert (= (and b!4002342 res!1626209) b!4002328))

(assert (= (and b!4002328 res!1626211) b!4002341))

(assert (= (and b!4002341 res!1626213) b!4002340))

(assert (= (and b!4002340 res!1626206) b!4002327))

(assert (= (and b!4002327 res!1626215) b!4002329))

(assert (= (and b!4002329 (not res!1626212)) b!4002346))

(assert (= (and b!4002346 (not res!1626207)) b!4002332))

(assert (= (and start!376694 (is-Cons!42827 prefix!494)) b!4002339))

(assert (= b!4002333 b!4002338))

(assert (= b!4002345 b!4002333))

(assert (= start!376694 b!4002345))

(assert (= (and start!376694 (is-Cons!42827 suffixResult!105)) b!4002334))

(assert (= (and start!376694 (is-Cons!42827 suffix!1299)) b!4002335))

(assert (= (and start!376694 (is-Cons!42827 newSuffix!27)) b!4002336))

(assert (= b!4002330 b!4002344))

(assert (= b!4002347 b!4002330))

(assert (= (and start!376694 (is-Cons!42829 rules!2999)) b!4002347))

(assert (= (and start!376694 (is-Cons!42827 newSuffixResult!27)) b!4002337))

(declare-fun m!4584725 () Bool)

(assert (=> b!4002341 m!4584725))

(declare-fun m!4584727 () Bool)

(assert (=> b!4002341 m!4584727))

(declare-fun m!4584729 () Bool)

(assert (=> b!4002341 m!4584729))

(assert (=> b!4002341 m!4584729))

(declare-fun m!4584731 () Bool)

(assert (=> b!4002341 m!4584731))

(declare-fun m!4584733 () Bool)

(assert (=> b!4002346 m!4584733))

(declare-fun m!4584735 () Bool)

(assert (=> b!4002346 m!4584735))

(declare-fun m!4584737 () Bool)

(assert (=> b!4002346 m!4584737))

(declare-fun m!4584739 () Bool)

(assert (=> b!4002346 m!4584739))

(declare-fun m!4584741 () Bool)

(assert (=> b!4002346 m!4584741))

(declare-fun m!4584743 () Bool)

(assert (=> b!4002342 m!4584743))

(declare-fun m!4584745 () Bool)

(assert (=> b!4002342 m!4584745))

(declare-fun m!4584747 () Bool)

(assert (=> b!4002327 m!4584747))

(declare-fun m!4584749 () Bool)

(assert (=> b!4002327 m!4584749))

(declare-fun m!4584751 () Bool)

(assert (=> b!4002343 m!4584751))

(declare-fun m!4584753 () Bool)

(assert (=> b!4002331 m!4584753))

(declare-fun m!4584755 () Bool)

(assert (=> b!4002330 m!4584755))

(declare-fun m!4584757 () Bool)

(assert (=> b!4002330 m!4584757))

(declare-fun m!4584759 () Bool)

(assert (=> b!4002329 m!4584759))

(declare-fun m!4584761 () Bool)

(assert (=> b!4002329 m!4584761))

(declare-fun m!4584763 () Bool)

(assert (=> b!4002329 m!4584763))

(declare-fun m!4584765 () Bool)

(assert (=> b!4002329 m!4584765))

(declare-fun m!4584767 () Bool)

(assert (=> b!4002345 m!4584767))

(declare-fun m!4584769 () Bool)

(assert (=> b!4002328 m!4584769))

(declare-fun m!4584771 () Bool)

(assert (=> b!4002332 m!4584771))

(assert (=> b!4002332 m!4584771))

(declare-fun m!4584773 () Bool)

(assert (=> b!4002332 m!4584773))

(declare-fun m!4584775 () Bool)

(assert (=> b!4002332 m!4584775))

(declare-fun m!4584777 () Bool)

(assert (=> b!4002332 m!4584777))

(declare-fun m!4584779 () Bool)

(assert (=> start!376694 m!4584779))

(declare-fun m!4584781 () Bool)

(assert (=> b!4002333 m!4584781))

(declare-fun m!4584783 () Bool)

(assert (=> b!4002333 m!4584783))

(declare-fun m!4584785 () Bool)

(assert (=> b!4002340 m!4584785))

(declare-fun m!4584787 () Bool)

(assert (=> b!4002340 m!4584787))

(push 1)

(assert b_and!307333)

(assert b_and!307327)

(assert (not b!4002342))

(assert (not b_next!111961))

(assert (not b!4002332))

(assert (not b!4002339))

(assert (not b!4002340))

(assert (not b_next!111965))

(assert tp_is_empty!20379)

(assert (not b!4002343))

(assert (not b!4002333))

(assert (not b!4002336))

(assert (not b!4002337))

(assert (not b!4002347))

(assert (not b_next!111963))

(assert (not b!4002341))

(assert (not b!4002331))

(assert (not b!4002335))

(assert (not b!4002330))

(assert (not start!376694))

(assert (not b!4002345))

(assert (not b_next!111967))

(assert (not b!4002328))

(assert (not b!4002327))

(assert b_and!307329)

(assert (not b!4002346))

(assert b_and!307331)

(assert (not b!4002329))

(assert (not b!4002334))

(check-sat)

(pop 1)

(push 1)

(assert b_and!307333)

(assert b_and!307327)

(assert (not b_next!111963))

(assert (not b_next!111961))

(assert (not b_next!111965))

(assert b_and!307331)

(assert (not b_next!111967))

(assert b_and!307329)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4002421 () Bool)

(declare-fun e!2481879 () Bool)

(declare-fun tail!6238 (List!42951) List!42951)

(assert (=> b!4002421 (= e!2481879 (isPrefix!3886 (tail!6238 prefix!494) (tail!6238 lt!1415403)))))

(declare-fun b!4002422 () Bool)

(declare-fun e!2481878 () Bool)

(assert (=> b!4002422 (= e!2481878 (>= (size!32024 lt!1415403) (size!32024 prefix!494)))))

(declare-fun d!1183911 () Bool)

(assert (=> d!1183911 e!2481878))

(declare-fun res!1626259 () Bool)

(assert (=> d!1183911 (=> res!1626259 e!2481878)))

(declare-fun lt!1415436 () Bool)

(assert (=> d!1183911 (= res!1626259 (not lt!1415436))))

(declare-fun e!2481877 () Bool)

(assert (=> d!1183911 (= lt!1415436 e!2481877)))

(declare-fun res!1626260 () Bool)

(assert (=> d!1183911 (=> res!1626260 e!2481877)))

(assert (=> d!1183911 (= res!1626260 (is-Nil!42827 prefix!494))))

(assert (=> d!1183911 (= (isPrefix!3886 prefix!494 lt!1415403) lt!1415436)))

(declare-fun b!4002419 () Bool)

(assert (=> b!4002419 (= e!2481877 e!2481879)))

(declare-fun res!1626258 () Bool)

(assert (=> b!4002419 (=> (not res!1626258) (not e!2481879))))

(assert (=> b!4002419 (= res!1626258 (not (is-Nil!42827 lt!1415403)))))

(declare-fun b!4002420 () Bool)

(declare-fun res!1626261 () Bool)

(assert (=> b!4002420 (=> (not res!1626261) (not e!2481879))))

(declare-fun head!8506 (List!42951) C!23594)

(assert (=> b!4002420 (= res!1626261 (= (head!8506 prefix!494) (head!8506 lt!1415403)))))

(assert (= (and d!1183911 (not res!1626260)) b!4002419))

(assert (= (and b!4002419 res!1626258) b!4002420))

(assert (= (and b!4002420 res!1626261) b!4002421))

(assert (= (and d!1183911 (not res!1626259)) b!4002422))

(declare-fun m!4584853 () Bool)

(assert (=> b!4002421 m!4584853))

(declare-fun m!4584855 () Bool)

(assert (=> b!4002421 m!4584855))

(assert (=> b!4002421 m!4584853))

(assert (=> b!4002421 m!4584855))

(declare-fun m!4584857 () Bool)

(assert (=> b!4002421 m!4584857))

(declare-fun m!4584859 () Bool)

(assert (=> b!4002422 m!4584859))

(assert (=> b!4002422 m!4584725))

(declare-fun m!4584861 () Bool)

(assert (=> b!4002420 m!4584861))

(declare-fun m!4584863 () Bool)

(assert (=> b!4002420 m!4584863))

(assert (=> b!4002346 d!1183911))

(declare-fun b!4002425 () Bool)

(declare-fun e!2481882 () Bool)

(assert (=> b!4002425 (= e!2481882 (isPrefix!3886 (tail!6238 lt!1415406) (tail!6238 lt!1415403)))))

(declare-fun b!4002426 () Bool)

(declare-fun e!2481881 () Bool)

(assert (=> b!4002426 (= e!2481881 (>= (size!32024 lt!1415403) (size!32024 lt!1415406)))))

(declare-fun d!1183913 () Bool)

(assert (=> d!1183913 e!2481881))

(declare-fun res!1626263 () Bool)

(assert (=> d!1183913 (=> res!1626263 e!2481881)))

(declare-fun lt!1415437 () Bool)

(assert (=> d!1183913 (= res!1626263 (not lt!1415437))))

(declare-fun e!2481880 () Bool)

(assert (=> d!1183913 (= lt!1415437 e!2481880)))

(declare-fun res!1626264 () Bool)

(assert (=> d!1183913 (=> res!1626264 e!2481880)))

(assert (=> d!1183913 (= res!1626264 (is-Nil!42827 lt!1415406))))

(assert (=> d!1183913 (= (isPrefix!3886 lt!1415406 lt!1415403) lt!1415437)))

(declare-fun b!4002423 () Bool)

(assert (=> b!4002423 (= e!2481880 e!2481882)))

(declare-fun res!1626262 () Bool)

(assert (=> b!4002423 (=> (not res!1626262) (not e!2481882))))

(assert (=> b!4002423 (= res!1626262 (not (is-Nil!42827 lt!1415403)))))

(declare-fun b!4002424 () Bool)

(declare-fun res!1626265 () Bool)

(assert (=> b!4002424 (=> (not res!1626265) (not e!2481882))))

(assert (=> b!4002424 (= res!1626265 (= (head!8506 lt!1415406) (head!8506 lt!1415403)))))

(assert (= (and d!1183913 (not res!1626264)) b!4002423))

(assert (= (and b!4002423 res!1626262) b!4002424))

(assert (= (and b!4002424 res!1626265) b!4002425))

(assert (= (and d!1183913 (not res!1626263)) b!4002426))

(declare-fun m!4584865 () Bool)

(assert (=> b!4002425 m!4584865))

(assert (=> b!4002425 m!4584855))

(assert (=> b!4002425 m!4584865))

(assert (=> b!4002425 m!4584855))

(declare-fun m!4584867 () Bool)

(assert (=> b!4002425 m!4584867))

(assert (=> b!4002426 m!4584859))

(assert (=> b!4002426 m!4584727))

(declare-fun m!4584869 () Bool)

(assert (=> b!4002424 m!4584869))

(assert (=> b!4002424 m!4584863))

(assert (=> b!4002346 d!1183913))

(declare-fun b!4002429 () Bool)

(declare-fun e!2481885 () Bool)

(assert (=> b!4002429 (= e!2481885 (isPrefix!3886 (tail!6238 lt!1415406) (tail!6238 lt!1415402)))))

(declare-fun b!4002430 () Bool)

(declare-fun e!2481884 () Bool)

(assert (=> b!4002430 (= e!2481884 (>= (size!32024 lt!1415402) (size!32024 lt!1415406)))))

(declare-fun d!1183915 () Bool)

(assert (=> d!1183915 e!2481884))

(declare-fun res!1626267 () Bool)

(assert (=> d!1183915 (=> res!1626267 e!2481884)))

(declare-fun lt!1415438 () Bool)

(assert (=> d!1183915 (= res!1626267 (not lt!1415438))))

(declare-fun e!2481883 () Bool)

(assert (=> d!1183915 (= lt!1415438 e!2481883)))

(declare-fun res!1626268 () Bool)

(assert (=> d!1183915 (=> res!1626268 e!2481883)))

(assert (=> d!1183915 (= res!1626268 (is-Nil!42827 lt!1415406))))

(assert (=> d!1183915 (= (isPrefix!3886 lt!1415406 lt!1415402) lt!1415438)))

(declare-fun b!4002427 () Bool)

(assert (=> b!4002427 (= e!2481883 e!2481885)))

(declare-fun res!1626266 () Bool)

(assert (=> b!4002427 (=> (not res!1626266) (not e!2481885))))

(assert (=> b!4002427 (= res!1626266 (not (is-Nil!42827 lt!1415402)))))

(declare-fun b!4002428 () Bool)

(declare-fun res!1626269 () Bool)

(assert (=> b!4002428 (=> (not res!1626269) (not e!2481885))))

(assert (=> b!4002428 (= res!1626269 (= (head!8506 lt!1415406) (head!8506 lt!1415402)))))

(assert (= (and d!1183915 (not res!1626268)) b!4002427))

(assert (= (and b!4002427 res!1626266) b!4002428))

(assert (= (and b!4002428 res!1626269) b!4002429))

(assert (= (and d!1183915 (not res!1626267)) b!4002430))

(assert (=> b!4002429 m!4584865))

(declare-fun m!4584871 () Bool)

(assert (=> b!4002429 m!4584871))

(assert (=> b!4002429 m!4584865))

(assert (=> b!4002429 m!4584871))

(declare-fun m!4584873 () Bool)

(assert (=> b!4002429 m!4584873))

(declare-fun m!4584875 () Bool)

(assert (=> b!4002430 m!4584875))

(assert (=> b!4002430 m!4584727))

(assert (=> b!4002428 m!4584869))

(declare-fun m!4584877 () Bool)

(assert (=> b!4002428 m!4584877))

(assert (=> b!4002346 d!1183915))

(declare-fun d!1183917 () Bool)

(assert (=> d!1183917 (isPrefix!3886 lt!1415406 (++!11201 lt!1415406 suffixResult!105))))

(declare-fun lt!1415441 () Unit!61817)

(declare-fun choose!24145 (List!42951 List!42951) Unit!61817)

(assert (=> d!1183917 (= lt!1415441 (choose!24145 lt!1415406 suffixResult!105))))

(assert (=> d!1183917 (= (lemmaConcatTwoListThenFirstIsPrefix!2727 lt!1415406 suffixResult!105) lt!1415441)))

(declare-fun bs!588895 () Bool)

(assert (= bs!588895 d!1183917))

(assert (=> bs!588895 m!4584759))

(assert (=> bs!588895 m!4584759))

(declare-fun m!4584879 () Bool)

(assert (=> bs!588895 m!4584879))

(declare-fun m!4584881 () Bool)

(assert (=> bs!588895 m!4584881))

(assert (=> b!4002346 d!1183917))

(declare-fun d!1183919 () Bool)

(assert (=> d!1183919 (isPrefix!3886 prefix!494 (++!11201 prefix!494 suffix!1299))))

(declare-fun lt!1415442 () Unit!61817)

(assert (=> d!1183919 (= lt!1415442 (choose!24145 prefix!494 suffix!1299))))

(assert (=> d!1183919 (= (lemmaConcatTwoListThenFirstIsPrefix!2727 prefix!494 suffix!1299) lt!1415442)))

(declare-fun bs!588896 () Bool)

(assert (= bs!588896 d!1183919))

(assert (=> bs!588896 m!4584749))

(assert (=> bs!588896 m!4584749))

(declare-fun m!4584883 () Bool)

(assert (=> bs!588896 m!4584883))

(declare-fun m!4584885 () Bool)

(assert (=> bs!588896 m!4584885))

(assert (=> b!4002346 d!1183919))

(declare-fun b!4002487 () Bool)

(declare-fun e!2481914 () Option!9213)

(declare-fun call!286013 () Option!9213)

(assert (=> b!4002487 (= e!2481914 call!286013)))

(declare-fun b!4002488 () Bool)

(declare-fun res!1626304 () Bool)

(declare-fun e!2481913 () Bool)

(assert (=> b!4002488 (=> (not res!1626304) (not e!2481913))))

(declare-fun lt!1415469 () Option!9213)

(declare-fun get!14081 (Option!9213) tuple2!42000)

(assert (=> b!4002488 (= res!1626304 (= (list!15907 (charsOf!4615 (_1!24134 (get!14081 lt!1415469)))) (originalCharacters!7399 (_1!24134 (get!14081 lt!1415469)))))))

(declare-fun b!4002489 () Bool)

(declare-fun res!1626302 () Bool)

(assert (=> b!4002489 (=> (not res!1626302) (not e!2481913))))

(declare-fun apply!10006 (TokenValueInjection!13486 BalanceConc!25614) TokenValue!7029)

(declare-fun seqFromList!5034 (List!42951) BalanceConc!25614)

(assert (=> b!4002489 (= res!1626302 (= (value!214407 (_1!24134 (get!14081 lt!1415469))) (apply!10006 (transformation!6799 (rule!9833 (_1!24134 (get!14081 lt!1415469)))) (seqFromList!5034 (originalCharacters!7399 (_1!24134 (get!14081 lt!1415469)))))))))

(declare-fun b!4002490 () Bool)

(declare-fun res!1626303 () Bool)

(assert (=> b!4002490 (=> (not res!1626303) (not e!2481913))))

(assert (=> b!4002490 (= res!1626303 (= (++!11201 (list!15907 (charsOf!4615 (_1!24134 (get!14081 lt!1415469)))) (_2!24134 (get!14081 lt!1415469))) lt!1415403))))

(declare-fun b!4002492 () Bool)

(declare-fun lt!1415468 () Option!9213)

(declare-fun lt!1415470 () Option!9213)

(assert (=> b!4002492 (= e!2481914 (ite (and (is-None!9212 lt!1415468) (is-None!9212 lt!1415470)) None!9212 (ite (is-None!9212 lt!1415470) lt!1415468 (ite (is-None!9212 lt!1415468) lt!1415470 (ite (>= (size!32023 (_1!24134 (v!39574 lt!1415468))) (size!32023 (_1!24134 (v!39574 lt!1415470)))) lt!1415468 lt!1415470)))))))

(assert (=> b!4002492 (= lt!1415468 call!286013)))

(assert (=> b!4002492 (= lt!1415470 (maxPrefix!3686 thiss!21717 (t!332282 rules!2999) lt!1415403))))

(declare-fun b!4002493 () Bool)

(declare-fun e!2481915 () Bool)

(assert (=> b!4002493 (= e!2481915 e!2481913)))

(declare-fun res!1626301 () Bool)

(assert (=> b!4002493 (=> (not res!1626301) (not e!2481913))))

(declare-fun isDefined!7057 (Option!9213) Bool)

(assert (=> b!4002493 (= res!1626301 (isDefined!7057 lt!1415469))))

(declare-fun b!4002494 () Bool)

(declare-fun res!1626299 () Bool)

(assert (=> b!4002494 (=> (not res!1626299) (not e!2481913))))

(assert (=> b!4002494 (= res!1626299 (< (size!32024 (_2!24134 (get!14081 lt!1415469))) (size!32024 lt!1415403)))))

(declare-fun d!1183923 () Bool)

(assert (=> d!1183923 e!2481915))

(declare-fun res!1626300 () Bool)

(assert (=> d!1183923 (=> res!1626300 e!2481915)))

(declare-fun isEmpty!25593 (Option!9213) Bool)

(assert (=> d!1183923 (= res!1626300 (isEmpty!25593 lt!1415469))))

(assert (=> d!1183923 (= lt!1415469 e!2481914)))

(declare-fun c!692175 () Bool)

(assert (=> d!1183923 (= c!692175 (and (is-Cons!42829 rules!2999) (is-Nil!42829 (t!332282 rules!2999))))))

(declare-fun lt!1415471 () Unit!61817)

(declare-fun lt!1415467 () Unit!61817)

(assert (=> d!1183923 (= lt!1415471 lt!1415467)))

(assert (=> d!1183923 (isPrefix!3886 lt!1415403 lt!1415403)))

(declare-fun lemmaIsPrefixRefl!2474 (List!42951 List!42951) Unit!61817)

(assert (=> d!1183923 (= lt!1415467 (lemmaIsPrefixRefl!2474 lt!1415403 lt!1415403))))

(declare-fun rulesValidInductive!2478 (LexerInterface!6388 List!42953) Bool)

(assert (=> d!1183923 (rulesValidInductive!2478 thiss!21717 rules!2999)))

(assert (=> d!1183923 (= (maxPrefix!3686 thiss!21717 rules!2999 lt!1415403) lt!1415469)))

(declare-fun b!4002491 () Bool)

(declare-fun res!1626305 () Bool)

(assert (=> b!4002491 (=> (not res!1626305) (not e!2481913))))

(declare-fun matchR!5677 (Regex!11704 List!42951) Bool)

(assert (=> b!4002491 (= res!1626305 (matchR!5677 (regex!6799 (rule!9833 (_1!24134 (get!14081 lt!1415469)))) (list!15907 (charsOf!4615 (_1!24134 (get!14081 lt!1415469))))))))

(declare-fun bm!286008 () Bool)

(declare-fun maxPrefixOneRule!2716 (LexerInterface!6388 Rule!13398 List!42951) Option!9213)

(assert (=> bm!286008 (= call!286013 (maxPrefixOneRule!2716 thiss!21717 (h!48249 rules!2999) lt!1415403))))

(declare-fun b!4002495 () Bool)

(declare-fun contains!8517 (List!42953 Rule!13398) Bool)

(assert (=> b!4002495 (= e!2481913 (contains!8517 rules!2999 (rule!9833 (_1!24134 (get!14081 lt!1415469)))))))

(assert (= (and d!1183923 c!692175) b!4002487))

(assert (= (and d!1183923 (not c!692175)) b!4002492))

(assert (= (or b!4002487 b!4002492) bm!286008))

(assert (= (and d!1183923 (not res!1626300)) b!4002493))

(assert (= (and b!4002493 res!1626301) b!4002488))

(assert (= (and b!4002488 res!1626304) b!4002494))

(assert (= (and b!4002494 res!1626299) b!4002490))

(assert (= (and b!4002490 res!1626303) b!4002489))

(assert (= (and b!4002489 res!1626302) b!4002491))

(assert (= (and b!4002491 res!1626305) b!4002495))

(declare-fun m!4584929 () Bool)

(assert (=> b!4002489 m!4584929))

(declare-fun m!4584931 () Bool)

(assert (=> b!4002489 m!4584931))

(assert (=> b!4002489 m!4584931))

(declare-fun m!4584933 () Bool)

(assert (=> b!4002489 m!4584933))

(declare-fun m!4584935 () Bool)

(assert (=> b!4002493 m!4584935))

(declare-fun m!4584937 () Bool)

(assert (=> bm!286008 m!4584937))

(assert (=> b!4002495 m!4584929))

(declare-fun m!4584939 () Bool)

(assert (=> b!4002495 m!4584939))

(assert (=> b!4002491 m!4584929))

(declare-fun m!4584941 () Bool)

(assert (=> b!4002491 m!4584941))

(assert (=> b!4002491 m!4584941))

(declare-fun m!4584943 () Bool)

(assert (=> b!4002491 m!4584943))

(assert (=> b!4002491 m!4584943))

(declare-fun m!4584945 () Bool)

(assert (=> b!4002491 m!4584945))

(assert (=> b!4002494 m!4584929))

(declare-fun m!4584949 () Bool)

(assert (=> b!4002494 m!4584949))

(assert (=> b!4002494 m!4584859))

(declare-fun m!4584953 () Bool)

(assert (=> b!4002492 m!4584953))

(declare-fun m!4584955 () Bool)

(assert (=> d!1183923 m!4584955))

(declare-fun m!4584959 () Bool)

(assert (=> d!1183923 m!4584959))

(declare-fun m!4584961 () Bool)

(assert (=> d!1183923 m!4584961))

(declare-fun m!4584963 () Bool)

(assert (=> d!1183923 m!4584963))

(assert (=> b!4002488 m!4584929))

(assert (=> b!4002488 m!4584941))

(assert (=> b!4002488 m!4584941))

(assert (=> b!4002488 m!4584943))

(assert (=> b!4002490 m!4584929))

(assert (=> b!4002490 m!4584941))

(assert (=> b!4002490 m!4584941))

(assert (=> b!4002490 m!4584943))

(assert (=> b!4002490 m!4584943))

(declare-fun m!4584969 () Bool)

(assert (=> b!4002490 m!4584969))

(assert (=> b!4002327 d!1183923))

(declare-fun lt!1415477 () List!42951)

(declare-fun b!4002515 () Bool)

(declare-fun e!2481925 () Bool)

(assert (=> b!4002515 (= e!2481925 (or (not (= suffix!1299 Nil!42827)) (= lt!1415477 prefix!494)))))

(declare-fun d!1183949 () Bool)

(assert (=> d!1183949 e!2481925))

(declare-fun res!1626314 () Bool)

(assert (=> d!1183949 (=> (not res!1626314) (not e!2481925))))

(declare-fun content!6493 (List!42951) (Set C!23594))

(assert (=> d!1183949 (= res!1626314 (= (content!6493 lt!1415477) (set.union (content!6493 prefix!494) (content!6493 suffix!1299))))))

(declare-fun e!2481924 () List!42951)

(assert (=> d!1183949 (= lt!1415477 e!2481924)))

(declare-fun c!692180 () Bool)

(assert (=> d!1183949 (= c!692180 (is-Nil!42827 prefix!494))))

(assert (=> d!1183949 (= (++!11201 prefix!494 suffix!1299) lt!1415477)))

(declare-fun b!4002512 () Bool)

(assert (=> b!4002512 (= e!2481924 suffix!1299)))

(declare-fun b!4002513 () Bool)

(assert (=> b!4002513 (= e!2481924 (Cons!42827 (h!48247 prefix!494) (++!11201 (t!332280 prefix!494) suffix!1299)))))

(declare-fun b!4002514 () Bool)

(declare-fun res!1626315 () Bool)

(assert (=> b!4002514 (=> (not res!1626315) (not e!2481925))))

(assert (=> b!4002514 (= res!1626315 (= (size!32024 lt!1415477) (+ (size!32024 prefix!494) (size!32024 suffix!1299))))))

(assert (= (and d!1183949 c!692180) b!4002512))

(assert (= (and d!1183949 (not c!692180)) b!4002513))

(assert (= (and d!1183949 res!1626314) b!4002514))

(assert (= (and b!4002514 res!1626315) b!4002515))

(declare-fun m!4584981 () Bool)

(assert (=> d!1183949 m!4584981))

(declare-fun m!4584983 () Bool)

(assert (=> d!1183949 m!4584983))

(declare-fun m!4584985 () Bool)

(assert (=> d!1183949 m!4584985))

(declare-fun m!4584987 () Bool)

(assert (=> b!4002513 m!4584987))

(declare-fun m!4584989 () Bool)

(assert (=> b!4002514 m!4584989))

(assert (=> b!4002514 m!4584725))

(assert (=> b!4002514 m!4584743))

(assert (=> b!4002327 d!1183949))

(declare-fun b!4002518 () Bool)

(declare-fun e!2481928 () Bool)

(assert (=> b!4002518 (= e!2481928 (isPrefix!3886 (tail!6238 newSuffix!27) (tail!6238 suffix!1299)))))

(declare-fun b!4002519 () Bool)

(declare-fun e!2481927 () Bool)

(assert (=> b!4002519 (= e!2481927 (>= (size!32024 suffix!1299) (size!32024 newSuffix!27)))))

(declare-fun d!1183953 () Bool)

(assert (=> d!1183953 e!2481927))

(declare-fun res!1626317 () Bool)

(assert (=> d!1183953 (=> res!1626317 e!2481927)))

(declare-fun lt!1415478 () Bool)

(assert (=> d!1183953 (= res!1626317 (not lt!1415478))))

(declare-fun e!2481926 () Bool)

(assert (=> d!1183953 (= lt!1415478 e!2481926)))

(declare-fun res!1626318 () Bool)

(assert (=> d!1183953 (=> res!1626318 e!2481926)))

(assert (=> d!1183953 (= res!1626318 (is-Nil!42827 newSuffix!27))))

(assert (=> d!1183953 (= (isPrefix!3886 newSuffix!27 suffix!1299) lt!1415478)))

(declare-fun b!4002516 () Bool)

(assert (=> b!4002516 (= e!2481926 e!2481928)))

(declare-fun res!1626316 () Bool)

(assert (=> b!4002516 (=> (not res!1626316) (not e!2481928))))

(assert (=> b!4002516 (= res!1626316 (not (is-Nil!42827 suffix!1299)))))

(declare-fun b!4002517 () Bool)

(declare-fun res!1626319 () Bool)

(assert (=> b!4002517 (=> (not res!1626319) (not e!2481928))))

(assert (=> b!4002517 (= res!1626319 (= (head!8506 newSuffix!27) (head!8506 suffix!1299)))))

(assert (= (and d!1183953 (not res!1626318)) b!4002516))

(assert (= (and b!4002516 res!1626316) b!4002517))

(assert (= (and b!4002517 res!1626319) b!4002518))

(assert (= (and d!1183953 (not res!1626317)) b!4002519))

(declare-fun m!4584991 () Bool)

(assert (=> b!4002518 m!4584991))

(declare-fun m!4584993 () Bool)

(assert (=> b!4002518 m!4584993))

(assert (=> b!4002518 m!4584991))

(assert (=> b!4002518 m!4584993))

(declare-fun m!4584995 () Bool)

(assert (=> b!4002518 m!4584995))

(assert (=> b!4002519 m!4584743))

(assert (=> b!4002519 m!4584745))

(declare-fun m!4584997 () Bool)

(assert (=> b!4002517 m!4584997))

(declare-fun m!4584999 () Bool)

(assert (=> b!4002517 m!4584999))

(assert (=> b!4002328 d!1183953))

(declare-fun b!4002523 () Bool)

(declare-fun e!2481930 () Bool)

(declare-fun lt!1415479 () List!42951)

(assert (=> b!4002523 (= e!2481930 (or (not (= suffixResult!105 Nil!42827)) (= lt!1415479 lt!1415406)))))

(declare-fun d!1183955 () Bool)

(assert (=> d!1183955 e!2481930))

(declare-fun res!1626320 () Bool)

(assert (=> d!1183955 (=> (not res!1626320) (not e!2481930))))

(assert (=> d!1183955 (= res!1626320 (= (content!6493 lt!1415479) (set.union (content!6493 lt!1415406) (content!6493 suffixResult!105))))))

(declare-fun e!2481929 () List!42951)

(assert (=> d!1183955 (= lt!1415479 e!2481929)))

(declare-fun c!692181 () Bool)

(assert (=> d!1183955 (= c!692181 (is-Nil!42827 lt!1415406))))

(assert (=> d!1183955 (= (++!11201 lt!1415406 suffixResult!105) lt!1415479)))

(declare-fun b!4002520 () Bool)

(assert (=> b!4002520 (= e!2481929 suffixResult!105)))

(declare-fun b!4002521 () Bool)

(assert (=> b!4002521 (= e!2481929 (Cons!42827 (h!48247 lt!1415406) (++!11201 (t!332280 lt!1415406) suffixResult!105)))))

(declare-fun b!4002522 () Bool)

(declare-fun res!1626321 () Bool)

(assert (=> b!4002522 (=> (not res!1626321) (not e!2481930))))

(assert (=> b!4002522 (= res!1626321 (= (size!32024 lt!1415479) (+ (size!32024 lt!1415406) (size!32024 suffixResult!105))))))

(assert (= (and d!1183955 c!692181) b!4002520))

(assert (= (and d!1183955 (not c!692181)) b!4002521))

(assert (= (and d!1183955 res!1626320) b!4002522))

(assert (= (and b!4002522 res!1626321) b!4002523))

(declare-fun m!4585001 () Bool)

(assert (=> d!1183955 m!4585001))

(declare-fun m!4585003 () Bool)

(assert (=> d!1183955 m!4585003))

(declare-fun m!4585005 () Bool)

(assert (=> d!1183955 m!4585005))

(declare-fun m!4585007 () Bool)

(assert (=> b!4002521 m!4585007))

(declare-fun m!4585009 () Bool)

(assert (=> b!4002522 m!4585009))

(assert (=> b!4002522 m!4584727))

(declare-fun m!4585011 () Bool)

(assert (=> b!4002522 m!4585011))

(assert (=> b!4002329 d!1183955))

(declare-fun d!1183957 () Bool)

(declare-fun e!2481939 () Bool)

(assert (=> d!1183957 e!2481939))

(declare-fun res!1626332 () Bool)

(assert (=> d!1183957 (=> (not res!1626332) (not e!2481939))))

(declare-fun semiInverseModEq!2912 (Int Int) Bool)

(assert (=> d!1183957 (= res!1626332 (semiInverseModEq!2912 (toChars!9150 (transformation!6799 (rule!9833 token!484))) (toValue!9291 (transformation!6799 (rule!9833 token!484)))))))

(declare-fun Unit!61822 () Unit!61817)

(assert (=> d!1183957 (= (lemmaInv!1014 (transformation!6799 (rule!9833 token!484))) Unit!61822)))

(declare-fun b!4002534 () Bool)

(declare-fun equivClasses!2811 (Int Int) Bool)

(assert (=> b!4002534 (= e!2481939 (equivClasses!2811 (toChars!9150 (transformation!6799 (rule!9833 token!484))) (toValue!9291 (transformation!6799 (rule!9833 token!484)))))))

(assert (= (and d!1183957 res!1626332) b!4002534))

(declare-fun m!4585013 () Bool)

(assert (=> d!1183957 m!4585013))

(declare-fun m!4585015 () Bool)

(assert (=> b!4002534 m!4585015))

(assert (=> b!4002329 d!1183957))

(declare-fun d!1183959 () Bool)

(declare-fun res!1626341 () Bool)

(declare-fun e!2481945 () Bool)

(assert (=> d!1183959 (=> (not res!1626341) (not e!2481945))))

(declare-fun validRegex!5305 (Regex!11704) Bool)

(assert (=> d!1183959 (= res!1626341 (validRegex!5305 (regex!6799 (rule!9833 token!484))))))

(assert (=> d!1183959 (= (ruleValid!2731 thiss!21717 (rule!9833 token!484)) e!2481945)))

(declare-fun b!4002543 () Bool)

(declare-fun res!1626342 () Bool)

(assert (=> b!4002543 (=> (not res!1626342) (not e!2481945))))

(declare-fun nullable!4105 (Regex!11704) Bool)

(assert (=> b!4002543 (= res!1626342 (not (nullable!4105 (regex!6799 (rule!9833 token!484)))))))

(declare-fun b!4002544 () Bool)

(assert (=> b!4002544 (= e!2481945 (not (= (tag!7659 (rule!9833 token!484)) (String!48866 ""))))))

(assert (= (and d!1183959 res!1626341) b!4002543))

(assert (= (and b!4002543 res!1626342) b!4002544))

(declare-fun m!4585017 () Bool)

(assert (=> d!1183959 m!4585017))

(declare-fun m!4585019 () Bool)

(assert (=> b!4002543 m!4585019))

(assert (=> b!4002329 d!1183959))

(declare-fun d!1183961 () Bool)

(assert (=> d!1183961 (ruleValid!2731 thiss!21717 (rule!9833 token!484))))

(declare-fun lt!1415487 () Unit!61817)

(declare-fun choose!24146 (LexerInterface!6388 Rule!13398 List!42953) Unit!61817)

(assert (=> d!1183961 (= lt!1415487 (choose!24146 thiss!21717 (rule!9833 token!484) rules!2999))))

(assert (=> d!1183961 (contains!8517 rules!2999 (rule!9833 token!484))))

(assert (=> d!1183961 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1805 thiss!21717 (rule!9833 token!484) rules!2999) lt!1415487)))

(declare-fun bs!588899 () Bool)

(assert (= bs!588899 d!1183961))

(assert (=> bs!588899 m!4584763))

(declare-fun m!4585045 () Bool)

(assert (=> bs!588899 m!4585045))

(declare-fun m!4585047 () Bool)

(assert (=> bs!588899 m!4585047))

(assert (=> b!4002329 d!1183961))

(declare-fun e!2481953 () Bool)

(declare-fun lt!1415488 () List!42951)

(declare-fun b!4002556 () Bool)

(assert (=> b!4002556 (= e!2481953 (or (not (= newSuffixResult!27 Nil!42827)) (= lt!1415488 lt!1415406)))))

(declare-fun d!1183967 () Bool)

(assert (=> d!1183967 e!2481953))

(declare-fun res!1626351 () Bool)

(assert (=> d!1183967 (=> (not res!1626351) (not e!2481953))))

(assert (=> d!1183967 (= res!1626351 (= (content!6493 lt!1415488) (set.union (content!6493 lt!1415406) (content!6493 newSuffixResult!27))))))

(declare-fun e!2481952 () List!42951)

(assert (=> d!1183967 (= lt!1415488 e!2481952)))

(declare-fun c!692182 () Bool)

(assert (=> d!1183967 (= c!692182 (is-Nil!42827 lt!1415406))))

(assert (=> d!1183967 (= (++!11201 lt!1415406 newSuffixResult!27) lt!1415488)))

(declare-fun b!4002553 () Bool)

(assert (=> b!4002553 (= e!2481952 newSuffixResult!27)))

(declare-fun b!4002554 () Bool)

(assert (=> b!4002554 (= e!2481952 (Cons!42827 (h!48247 lt!1415406) (++!11201 (t!332280 lt!1415406) newSuffixResult!27)))))

(declare-fun b!4002555 () Bool)

(declare-fun res!1626352 () Bool)

(assert (=> b!4002555 (=> (not res!1626352) (not e!2481953))))

(assert (=> b!4002555 (= res!1626352 (= (size!32024 lt!1415488) (+ (size!32024 lt!1415406) (size!32024 newSuffixResult!27))))))

(assert (= (and d!1183967 c!692182) b!4002553))

(assert (= (and d!1183967 (not c!692182)) b!4002554))

(assert (= (and d!1183967 res!1626351) b!4002555))

(assert (= (and b!4002555 res!1626352) b!4002556))

(declare-fun m!4585049 () Bool)

(assert (=> d!1183967 m!4585049))

(assert (=> d!1183967 m!4585003))

(declare-fun m!4585051 () Bool)

(assert (=> d!1183967 m!4585051))

(declare-fun m!4585053 () Bool)

(assert (=> b!4002554 m!4585053))

(declare-fun m!4585057 () Bool)

(assert (=> b!4002555 m!4585057))

(assert (=> b!4002555 m!4584727))

(declare-fun m!4585059 () Bool)

(assert (=> b!4002555 m!4585059))

(assert (=> b!4002340 d!1183967))

(declare-fun b!4002560 () Bool)

(declare-fun lt!1415489 () List!42951)

(declare-fun e!2481955 () Bool)

(assert (=> b!4002560 (= e!2481955 (or (not (= newSuffix!27 Nil!42827)) (= lt!1415489 prefix!494)))))

(declare-fun d!1183969 () Bool)

(assert (=> d!1183969 e!2481955))

(declare-fun res!1626353 () Bool)

(assert (=> d!1183969 (=> (not res!1626353) (not e!2481955))))

(assert (=> d!1183969 (= res!1626353 (= (content!6493 lt!1415489) (set.union (content!6493 prefix!494) (content!6493 newSuffix!27))))))

(declare-fun e!2481954 () List!42951)

(assert (=> d!1183969 (= lt!1415489 e!2481954)))

(declare-fun c!692183 () Bool)

(assert (=> d!1183969 (= c!692183 (is-Nil!42827 prefix!494))))

(assert (=> d!1183969 (= (++!11201 prefix!494 newSuffix!27) lt!1415489)))

(declare-fun b!4002557 () Bool)

(assert (=> b!4002557 (= e!2481954 newSuffix!27)))

(declare-fun b!4002558 () Bool)

(assert (=> b!4002558 (= e!2481954 (Cons!42827 (h!48247 prefix!494) (++!11201 (t!332280 prefix!494) newSuffix!27)))))

(declare-fun b!4002559 () Bool)

(declare-fun res!1626354 () Bool)

(assert (=> b!4002559 (=> (not res!1626354) (not e!2481955))))

(assert (=> b!4002559 (= res!1626354 (= (size!32024 lt!1415489) (+ (size!32024 prefix!494) (size!32024 newSuffix!27))))))

(assert (= (and d!1183969 c!692183) b!4002557))

(assert (= (and d!1183969 (not c!692183)) b!4002558))

(assert (= (and d!1183969 res!1626353) b!4002559))

(assert (= (and b!4002559 res!1626354) b!4002560))

(declare-fun m!4585061 () Bool)

(assert (=> d!1183969 m!4585061))

(assert (=> d!1183969 m!4584983))

(declare-fun m!4585063 () Bool)

(assert (=> d!1183969 m!4585063))

(declare-fun m!4585065 () Bool)

(assert (=> b!4002558 m!4585065))

(declare-fun m!4585067 () Bool)

(assert (=> b!4002559 m!4585067))

(assert (=> b!4002559 m!4584725))

(assert (=> b!4002559 m!4584745))

(assert (=> b!4002340 d!1183969))

(declare-fun d!1183973 () Bool)

(declare-fun lt!1415492 () Int)

(assert (=> d!1183973 (>= lt!1415492 0)))

(declare-fun e!2481958 () Int)

(assert (=> d!1183973 (= lt!1415492 e!2481958)))

(declare-fun c!692186 () Bool)

(assert (=> d!1183973 (= c!692186 (is-Nil!42827 prefix!494))))

(assert (=> d!1183973 (= (size!32024 prefix!494) lt!1415492)))

(declare-fun b!4002565 () Bool)

(assert (=> b!4002565 (= e!2481958 0)))

(declare-fun b!4002566 () Bool)

(assert (=> b!4002566 (= e!2481958 (+ 1 (size!32024 (t!332280 prefix!494))))))

(assert (= (and d!1183973 c!692186) b!4002565))

(assert (= (and d!1183973 (not c!692186)) b!4002566))

(declare-fun m!4585069 () Bool)

(assert (=> b!4002566 m!4585069))

(assert (=> b!4002341 d!1183973))

(declare-fun d!1183975 () Bool)

(declare-fun lt!1415493 () Int)

(assert (=> d!1183975 (>= lt!1415493 0)))

(declare-fun e!2481959 () Int)

(assert (=> d!1183975 (= lt!1415493 e!2481959)))

(declare-fun c!692187 () Bool)

(assert (=> d!1183975 (= c!692187 (is-Nil!42827 lt!1415406))))

(assert (=> d!1183975 (= (size!32024 lt!1415406) lt!1415493)))

(declare-fun b!4002567 () Bool)

(assert (=> b!4002567 (= e!2481959 0)))

(declare-fun b!4002568 () Bool)

(assert (=> b!4002568 (= e!2481959 (+ 1 (size!32024 (t!332280 lt!1415406))))))

(assert (= (and d!1183975 c!692187) b!4002567))

(assert (= (and d!1183975 (not c!692187)) b!4002568))

(declare-fun m!4585071 () Bool)

(assert (=> b!4002568 m!4585071))

(assert (=> b!4002341 d!1183975))

(declare-fun d!1183977 () Bool)

(declare-fun list!15909 (Conc!13010) List!42951)

(assert (=> d!1183977 (= (list!15907 (charsOf!4615 token!484)) (list!15909 (c!692159 (charsOf!4615 token!484))))))

(declare-fun bs!588900 () Bool)

(assert (= bs!588900 d!1183977))

(declare-fun m!4585073 () Bool)

(assert (=> bs!588900 m!4585073))

(assert (=> b!4002341 d!1183977))

(declare-fun d!1183979 () Bool)

(declare-fun lt!1415500 () BalanceConc!25614)

(assert (=> d!1183979 (= (list!15907 lt!1415500) (originalCharacters!7399 token!484))))

(declare-fun dynLambda!18167 (Int TokenValue!7029) BalanceConc!25614)

(assert (=> d!1183979 (= lt!1415500 (dynLambda!18167 (toChars!9150 (transformation!6799 (rule!9833 token!484))) (value!214407 token!484)))))

(assert (=> d!1183979 (= (charsOf!4615 token!484) lt!1415500)))

(declare-fun b_lambda!116745 () Bool)

(assert (=> (not b_lambda!116745) (not d!1183979)))

(declare-fun t!332291 () Bool)

(declare-fun tb!240593 () Bool)

(assert (=> (and b!4002338 (= (toChars!9150 (transformation!6799 (rule!9833 token!484))) (toChars!9150 (transformation!6799 (rule!9833 token!484)))) t!332291) tb!240593))

(declare-fun b!4002573 () Bool)

(declare-fun e!2481962 () Bool)

(declare-fun tp!1218130 () Bool)

(declare-fun inv!57200 (Conc!13010) Bool)

(assert (=> b!4002573 (= e!2481962 (and (inv!57200 (c!692159 (dynLambda!18167 (toChars!9150 (transformation!6799 (rule!9833 token!484))) (value!214407 token!484)))) tp!1218130))))

(declare-fun result!291600 () Bool)

(declare-fun inv!57201 (BalanceConc!25614) Bool)

(assert (=> tb!240593 (= result!291600 (and (inv!57201 (dynLambda!18167 (toChars!9150 (transformation!6799 (rule!9833 token!484))) (value!214407 token!484))) e!2481962))))

(assert (= tb!240593 b!4002573))

(declare-fun m!4585083 () Bool)

(assert (=> b!4002573 m!4585083))

(declare-fun m!4585085 () Bool)

(assert (=> tb!240593 m!4585085))

(assert (=> d!1183979 t!332291))

(declare-fun b_and!307347 () Bool)

(assert (= b_and!307329 (and (=> t!332291 result!291600) b_and!307347)))

(declare-fun t!332293 () Bool)

(declare-fun tb!240595 () Bool)

(assert (=> (and b!4002344 (= (toChars!9150 (transformation!6799 (h!48249 rules!2999))) (toChars!9150 (transformation!6799 (rule!9833 token!484)))) t!332293) tb!240595))

(declare-fun result!291604 () Bool)

(assert (= result!291604 result!291600))

(assert (=> d!1183979 t!332293))

(declare-fun b_and!307349 () Bool)

(assert (= b_and!307333 (and (=> t!332293 result!291604) b_and!307349)))

(declare-fun m!4585087 () Bool)

(assert (=> d!1183979 m!4585087))

(declare-fun m!4585089 () Bool)

(assert (=> d!1183979 m!4585089))

(assert (=> b!4002341 d!1183979))

(declare-fun d!1183985 () Bool)

(assert (=> d!1183985 (= (inv!57193 (tag!7659 (h!48249 rules!2999))) (= (mod (str.len (value!214406 (tag!7659 (h!48249 rules!2999)))) 2) 0))))

(assert (=> b!4002330 d!1183985))

(declare-fun d!1183989 () Bool)

(declare-fun res!1626357 () Bool)

(declare-fun e!2481965 () Bool)

(assert (=> d!1183989 (=> (not res!1626357) (not e!2481965))))

(assert (=> d!1183989 (= res!1626357 (semiInverseModEq!2912 (toChars!9150 (transformation!6799 (h!48249 rules!2999))) (toValue!9291 (transformation!6799 (h!48249 rules!2999)))))))

(assert (=> d!1183989 (= (inv!57196 (transformation!6799 (h!48249 rules!2999))) e!2481965)))

(declare-fun b!4002576 () Bool)

(assert (=> b!4002576 (= e!2481965 (equivClasses!2811 (toChars!9150 (transformation!6799 (h!48249 rules!2999))) (toValue!9291 (transformation!6799 (h!48249 rules!2999)))))))

(assert (= (and d!1183989 res!1626357) b!4002576))

(declare-fun m!4585091 () Bool)

(assert (=> d!1183989 m!4585091))

(declare-fun m!4585093 () Bool)

(assert (=> b!4002576 m!4585093))

(assert (=> b!4002330 d!1183989))

(declare-fun d!1183991 () Bool)

(assert (=> d!1183991 (= (isEmpty!25591 rules!2999) (is-Nil!42829 rules!2999))))

(assert (=> b!4002331 d!1183991))

(declare-fun d!1183993 () Bool)

(declare-fun lt!1415501 () Int)

(assert (=> d!1183993 (>= lt!1415501 0)))

(declare-fun e!2481966 () Int)

(assert (=> d!1183993 (= lt!1415501 e!2481966)))

(declare-fun c!692188 () Bool)

(assert (=> d!1183993 (= c!692188 (is-Nil!42827 suffix!1299))))

(assert (=> d!1183993 (= (size!32024 suffix!1299) lt!1415501)))

(declare-fun b!4002577 () Bool)

(assert (=> b!4002577 (= e!2481966 0)))

(declare-fun b!4002578 () Bool)

(assert (=> b!4002578 (= e!2481966 (+ 1 (size!32024 (t!332280 suffix!1299))))))

(assert (= (and d!1183993 c!692188) b!4002577))

(assert (= (and d!1183993 (not c!692188)) b!4002578))

(declare-fun m!4585095 () Bool)

(assert (=> b!4002578 m!4585095))

(assert (=> b!4002342 d!1183993))

(declare-fun d!1183995 () Bool)

(declare-fun lt!1415502 () Int)

(assert (=> d!1183995 (>= lt!1415502 0)))

(declare-fun e!2481969 () Int)

(assert (=> d!1183995 (= lt!1415502 e!2481969)))

(declare-fun c!692189 () Bool)

(assert (=> d!1183995 (= c!692189 (is-Nil!42827 newSuffix!27))))

(assert (=> d!1183995 (= (size!32024 newSuffix!27) lt!1415502)))

(declare-fun b!4002581 () Bool)

(assert (=> b!4002581 (= e!2481969 0)))

(declare-fun b!4002582 () Bool)

(assert (=> b!4002582 (= e!2481969 (+ 1 (size!32024 (t!332280 newSuffix!27))))))

(assert (= (and d!1183995 c!692189) b!4002581))

(assert (= (and d!1183995 (not c!692189)) b!4002582))

(declare-fun m!4585097 () Bool)

(assert (=> b!4002582 m!4585097))

(assert (=> b!4002342 d!1183995))

(declare-fun d!1183997 () Bool)

(declare-fun res!1626363 () Bool)

(declare-fun e!2481973 () Bool)

(assert (=> d!1183997 (=> (not res!1626363) (not e!2481973))))

(declare-fun rulesValid!2646 (LexerInterface!6388 List!42953) Bool)

(assert (=> d!1183997 (= res!1626363 (rulesValid!2646 thiss!21717 rules!2999))))

(assert (=> d!1183997 (= (rulesInvariant!5731 thiss!21717 rules!2999) e!2481973)))

(declare-fun b!4002586 () Bool)

(declare-datatypes ((List!42957 0))(
  ( (Nil!42833) (Cons!42833 (h!48253 String!48865) (t!332298 List!42957)) )
))
(declare-fun noDuplicateTag!2647 (LexerInterface!6388 List!42953 List!42957) Bool)

(assert (=> b!4002586 (= e!2481973 (noDuplicateTag!2647 thiss!21717 rules!2999 Nil!42833))))

(assert (= (and d!1183997 res!1626363) b!4002586))

(declare-fun m!4585103 () Bool)

(assert (=> d!1183997 m!4585103))

(declare-fun m!4585105 () Bool)

(assert (=> b!4002586 m!4585105))

(assert (=> b!4002343 d!1183997))

(declare-fun b!4002590 () Bool)

(declare-fun e!2481975 () Bool)

(declare-fun lt!1415503 () List!42951)

(assert (=> b!4002590 (= e!2481975 (or (not (= (getSuffix!2311 prefix!494 lt!1415406) Nil!42827)) (= lt!1415503 lt!1415406)))))

(declare-fun d!1184001 () Bool)

(assert (=> d!1184001 e!2481975))

(declare-fun res!1626364 () Bool)

(assert (=> d!1184001 (=> (not res!1626364) (not e!2481975))))

(assert (=> d!1184001 (= res!1626364 (= (content!6493 lt!1415503) (set.union (content!6493 lt!1415406) (content!6493 (getSuffix!2311 prefix!494 lt!1415406)))))))

(declare-fun e!2481974 () List!42951)

(assert (=> d!1184001 (= lt!1415503 e!2481974)))

(declare-fun c!692190 () Bool)

(assert (=> d!1184001 (= c!692190 (is-Nil!42827 lt!1415406))))

(assert (=> d!1184001 (= (++!11201 lt!1415406 (getSuffix!2311 prefix!494 lt!1415406)) lt!1415503)))

(declare-fun b!4002587 () Bool)

(assert (=> b!4002587 (= e!2481974 (getSuffix!2311 prefix!494 lt!1415406))))

(declare-fun b!4002588 () Bool)

(assert (=> b!4002588 (= e!2481974 (Cons!42827 (h!48247 lt!1415406) (++!11201 (t!332280 lt!1415406) (getSuffix!2311 prefix!494 lt!1415406))))))

(declare-fun b!4002589 () Bool)

(declare-fun res!1626365 () Bool)

(assert (=> b!4002589 (=> (not res!1626365) (not e!2481975))))

(assert (=> b!4002589 (= res!1626365 (= (size!32024 lt!1415503) (+ (size!32024 lt!1415406) (size!32024 (getSuffix!2311 prefix!494 lt!1415406)))))))

(assert (= (and d!1184001 c!692190) b!4002587))

(assert (= (and d!1184001 (not c!692190)) b!4002588))

(assert (= (and d!1184001 res!1626364) b!4002589))

(assert (= (and b!4002589 res!1626365) b!4002590))

(declare-fun m!4585107 () Bool)

(assert (=> d!1184001 m!4585107))

(assert (=> d!1184001 m!4585003))

(assert (=> d!1184001 m!4584771))

(declare-fun m!4585109 () Bool)

(assert (=> d!1184001 m!4585109))

(assert (=> b!4002588 m!4584771))

(declare-fun m!4585111 () Bool)

(assert (=> b!4002588 m!4585111))

(declare-fun m!4585113 () Bool)

(assert (=> b!4002589 m!4585113))

(assert (=> b!4002589 m!4584727))

(assert (=> b!4002589 m!4584771))

(declare-fun m!4585115 () Bool)

(assert (=> b!4002589 m!4585115))

(assert (=> b!4002332 d!1184001))

(declare-fun d!1184003 () Bool)

(declare-fun lt!1415506 () List!42951)

(assert (=> d!1184003 (= (++!11201 lt!1415406 lt!1415506) prefix!494)))

(declare-fun e!2481978 () List!42951)

(assert (=> d!1184003 (= lt!1415506 e!2481978)))

(declare-fun c!692193 () Bool)

(assert (=> d!1184003 (= c!692193 (is-Cons!42827 lt!1415406))))

(assert (=> d!1184003 (>= (size!32024 prefix!494) (size!32024 lt!1415406))))

(assert (=> d!1184003 (= (getSuffix!2311 prefix!494 lt!1415406) lt!1415506)))

(declare-fun b!4002595 () Bool)

(assert (=> b!4002595 (= e!2481978 (getSuffix!2311 (tail!6238 prefix!494) (t!332280 lt!1415406)))))

(declare-fun b!4002596 () Bool)

(assert (=> b!4002596 (= e!2481978 prefix!494)))

(assert (= (and d!1184003 c!692193) b!4002595))

(assert (= (and d!1184003 (not c!692193)) b!4002596))

(declare-fun m!4585117 () Bool)

(assert (=> d!1184003 m!4585117))

(assert (=> d!1184003 m!4584725))

(assert (=> d!1184003 m!4584727))

(assert (=> b!4002595 m!4584853))

(assert (=> b!4002595 m!4584853))

(declare-fun m!4585119 () Bool)

(assert (=> b!4002595 m!4585119))

(assert (=> b!4002332 d!1184003))

(declare-fun b!4002601 () Bool)

(declare-fun e!2481983 () Bool)

(assert (=> b!4002601 (= e!2481983 (isPrefix!3886 (tail!6238 lt!1415406) (tail!6238 prefix!494)))))

(declare-fun b!4002602 () Bool)

(declare-fun e!2481982 () Bool)

(assert (=> b!4002602 (= e!2481982 (>= (size!32024 prefix!494) (size!32024 lt!1415406)))))

(declare-fun d!1184005 () Bool)

(assert (=> d!1184005 e!2481982))

(declare-fun res!1626369 () Bool)

(assert (=> d!1184005 (=> res!1626369 e!2481982)))

(declare-fun lt!1415507 () Bool)

(assert (=> d!1184005 (= res!1626369 (not lt!1415507))))

(declare-fun e!2481981 () Bool)

(assert (=> d!1184005 (= lt!1415507 e!2481981)))

(declare-fun res!1626370 () Bool)

(assert (=> d!1184005 (=> res!1626370 e!2481981)))

(assert (=> d!1184005 (= res!1626370 (is-Nil!42827 lt!1415406))))

(assert (=> d!1184005 (= (isPrefix!3886 lt!1415406 prefix!494) lt!1415507)))

(declare-fun b!4002599 () Bool)

(assert (=> b!4002599 (= e!2481981 e!2481983)))

(declare-fun res!1626368 () Bool)

(assert (=> b!4002599 (=> (not res!1626368) (not e!2481983))))

(assert (=> b!4002599 (= res!1626368 (not (is-Nil!42827 prefix!494)))))

(declare-fun b!4002600 () Bool)

(declare-fun res!1626371 () Bool)

(assert (=> b!4002600 (=> (not res!1626371) (not e!2481983))))

(assert (=> b!4002600 (= res!1626371 (= (head!8506 lt!1415406) (head!8506 prefix!494)))))

(assert (= (and d!1184005 (not res!1626370)) b!4002599))

(assert (= (and b!4002599 res!1626368) b!4002600))

(assert (= (and b!4002600 res!1626371) b!4002601))

(assert (= (and d!1184005 (not res!1626369)) b!4002602))

(assert (=> b!4002601 m!4584865))

(assert (=> b!4002601 m!4584853))

(assert (=> b!4002601 m!4584865))

(assert (=> b!4002601 m!4584853))

(declare-fun m!4585121 () Bool)

(assert (=> b!4002601 m!4585121))

(assert (=> b!4002602 m!4584725))

(assert (=> b!4002602 m!4584727))

(assert (=> b!4002600 m!4584869))

(assert (=> b!4002600 m!4584861))

(assert (=> b!4002332 d!1184005))

(declare-fun d!1184007 () Bool)

(assert (=> d!1184007 (isPrefix!3886 lt!1415406 prefix!494)))

(declare-fun lt!1415511 () Unit!61817)

(declare-fun choose!24147 (List!42951 List!42951 List!42951) Unit!61817)

(assert (=> d!1184007 (= lt!1415511 (choose!24147 prefix!494 lt!1415406 lt!1415403))))

(assert (=> d!1184007 (isPrefix!3886 prefix!494 lt!1415403)))

(assert (=> d!1184007 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!458 prefix!494 lt!1415406 lt!1415403) lt!1415511)))

(declare-fun bs!588903 () Bool)

(assert (= bs!588903 d!1184007))

(assert (=> bs!588903 m!4584775))

(declare-fun m!4585127 () Bool)

(assert (=> bs!588903 m!4585127))

(assert (=> bs!588903 m!4584741))

(assert (=> b!4002332 d!1184007))

(declare-fun d!1184011 () Bool)

(assert (=> d!1184011 (= (inv!57193 (tag!7659 (rule!9833 token!484))) (= (mod (str.len (value!214406 (tag!7659 (rule!9833 token!484)))) 2) 0))))

(assert (=> b!4002333 d!1184011))

(declare-fun d!1184013 () Bool)

(declare-fun res!1626375 () Bool)

(declare-fun e!2481987 () Bool)

(assert (=> d!1184013 (=> (not res!1626375) (not e!2481987))))

(assert (=> d!1184013 (= res!1626375 (semiInverseModEq!2912 (toChars!9150 (transformation!6799 (rule!9833 token!484))) (toValue!9291 (transformation!6799 (rule!9833 token!484)))))))

(assert (=> d!1184013 (= (inv!57196 (transformation!6799 (rule!9833 token!484))) e!2481987)))

(declare-fun b!4002608 () Bool)

(assert (=> b!4002608 (= e!2481987 (equivClasses!2811 (toChars!9150 (transformation!6799 (rule!9833 token!484))) (toValue!9291 (transformation!6799 (rule!9833 token!484)))))))

(assert (= (and d!1184013 res!1626375) b!4002608))

(assert (=> d!1184013 m!4585013))

(assert (=> b!4002608 m!4585015))

(assert (=> b!4002333 d!1184013))

(declare-fun d!1184015 () Bool)

(declare-fun res!1626380 () Bool)

(declare-fun e!2481990 () Bool)

(assert (=> d!1184015 (=> (not res!1626380) (not e!2481990))))

(declare-fun isEmpty!25594 (List!42951) Bool)

(assert (=> d!1184015 (= res!1626380 (not (isEmpty!25594 (originalCharacters!7399 token!484))))))

(assert (=> d!1184015 (= (inv!57197 token!484) e!2481990)))

(declare-fun b!4002613 () Bool)

(declare-fun res!1626381 () Bool)

(assert (=> b!4002613 (=> (not res!1626381) (not e!2481990))))

(assert (=> b!4002613 (= res!1626381 (= (originalCharacters!7399 token!484) (list!15907 (dynLambda!18167 (toChars!9150 (transformation!6799 (rule!9833 token!484))) (value!214407 token!484)))))))

(declare-fun b!4002614 () Bool)

(assert (=> b!4002614 (= e!2481990 (= (size!32023 token!484) (size!32024 (originalCharacters!7399 token!484))))))

(assert (= (and d!1184015 res!1626380) b!4002613))

(assert (= (and b!4002613 res!1626381) b!4002614))

(declare-fun b_lambda!116747 () Bool)

(assert (=> (not b_lambda!116747) (not b!4002613)))

(assert (=> b!4002613 t!332291))

(declare-fun b_and!307351 () Bool)

(assert (= b_and!307347 (and (=> t!332291 result!291600) b_and!307351)))

(assert (=> b!4002613 t!332293))

(declare-fun b_and!307353 () Bool)

(assert (= b_and!307349 (and (=> t!332293 result!291604) b_and!307353)))

(declare-fun m!4585139 () Bool)

(assert (=> d!1184015 m!4585139))

(assert (=> b!4002613 m!4585089))

(assert (=> b!4002613 m!4585089))

(declare-fun m!4585141 () Bool)

(assert (=> b!4002613 m!4585141))

(declare-fun m!4585143 () Bool)

(assert (=> b!4002614 m!4585143))

(assert (=> start!376694 d!1184015))

(declare-fun b!4002629 () Bool)

(declare-fun e!2482001 () Bool)

(declare-fun inv!17 (TokenValue!7029) Bool)

(assert (=> b!4002629 (= e!2482001 (inv!17 (value!214407 token!484)))))

(declare-fun d!1184019 () Bool)

(declare-fun c!692202 () Bool)

(assert (=> d!1184019 (= c!692202 (is-IntegerValue!21087 (value!214407 token!484)))))

(declare-fun e!2481999 () Bool)

(assert (=> d!1184019 (= (inv!21 (value!214407 token!484)) e!2481999)))

(declare-fun b!4002630 () Bool)

(declare-fun inv!16 (TokenValue!7029) Bool)

(assert (=> b!4002630 (= e!2481999 (inv!16 (value!214407 token!484)))))

(declare-fun b!4002631 () Bool)

(declare-fun res!1626384 () Bool)

(declare-fun e!2482000 () Bool)

(assert (=> b!4002631 (=> res!1626384 e!2482000)))

(assert (=> b!4002631 (= res!1626384 (not (is-IntegerValue!21089 (value!214407 token!484))))))

(assert (=> b!4002631 (= e!2482001 e!2482000)))

(declare-fun b!4002632 () Bool)

(assert (=> b!4002632 (= e!2481999 e!2482001)))

(declare-fun c!692201 () Bool)

(assert (=> b!4002632 (= c!692201 (is-IntegerValue!21088 (value!214407 token!484)))))

(declare-fun b!4002633 () Bool)

(declare-fun inv!15 (TokenValue!7029) Bool)

(assert (=> b!4002633 (= e!2482000 (inv!15 (value!214407 token!484)))))

(assert (= (and d!1184019 c!692202) b!4002630))

(assert (= (and d!1184019 (not c!692202)) b!4002632))

(assert (= (and b!4002632 c!692201) b!4002629))

(assert (= (and b!4002632 (not c!692201)) b!4002631))

(assert (= (and b!4002631 (not res!1626384)) b!4002633))

(declare-fun m!4585145 () Bool)

(assert (=> b!4002629 m!4585145))

(declare-fun m!4585147 () Bool)

(assert (=> b!4002630 m!4585147))

(declare-fun m!4585149 () Bool)

(assert (=> b!4002633 m!4585149))

(assert (=> b!4002345 d!1184019))

(declare-fun b!4002644 () Bool)

(declare-fun e!2482004 () Bool)

(assert (=> b!4002644 (= e!2482004 tp_is_empty!20379)))

(declare-fun b!4002646 () Bool)

(declare-fun tp!1218141 () Bool)

(assert (=> b!4002646 (= e!2482004 tp!1218141)))

(declare-fun b!4002647 () Bool)

(declare-fun tp!1218145 () Bool)

(declare-fun tp!1218142 () Bool)

(assert (=> b!4002647 (= e!2482004 (and tp!1218145 tp!1218142))))

(assert (=> b!4002330 (= tp!1218083 e!2482004)))

(declare-fun b!4002645 () Bool)

(declare-fun tp!1218144 () Bool)

(declare-fun tp!1218143 () Bool)

(assert (=> b!4002645 (= e!2482004 (and tp!1218144 tp!1218143))))

(assert (= (and b!4002330 (is-ElementMatch!11704 (regex!6799 (h!48249 rules!2999)))) b!4002644))

(assert (= (and b!4002330 (is-Concat!18734 (regex!6799 (h!48249 rules!2999)))) b!4002645))

(assert (= (and b!4002330 (is-Star!11704 (regex!6799 (h!48249 rules!2999)))) b!4002646))

(assert (= (and b!4002330 (is-Union!11704 (regex!6799 (h!48249 rules!2999)))) b!4002647))

(declare-fun b!4002664 () Bool)

(declare-fun b_free!111273 () Bool)

(declare-fun b_next!111977 () Bool)

(assert (=> b!4002664 (= b_free!111273 (not b_next!111977))))

(declare-fun tp!1218156 () Bool)

(declare-fun b_and!307355 () Bool)

(assert (=> b!4002664 (= tp!1218156 b_and!307355)))

(declare-fun b_free!111275 () Bool)

(declare-fun b_next!111979 () Bool)

(assert (=> b!4002664 (= b_free!111275 (not b_next!111979))))

(declare-fun t!332295 () Bool)

(declare-fun tb!240597 () Bool)

(assert (=> (and b!4002664 (= (toChars!9150 (transformation!6799 (h!48249 (t!332282 rules!2999)))) (toChars!9150 (transformation!6799 (rule!9833 token!484)))) t!332295) tb!240597))

(declare-fun result!291610 () Bool)

(assert (= result!291610 result!291600))

(assert (=> d!1183979 t!332295))

(assert (=> b!4002613 t!332295))

(declare-fun tp!1218155 () Bool)

(declare-fun b_and!307357 () Bool)

(assert (=> b!4002664 (= tp!1218155 (and (=> t!332295 result!291610) b_and!307357))))

(declare-fun e!2482017 () Bool)

(assert (=> b!4002664 (= e!2482017 (and tp!1218156 tp!1218155))))

(declare-fun b!4002663 () Bool)

(declare-fun e!2482019 () Bool)

(declare-fun tp!1218154 () Bool)

(assert (=> b!4002663 (= e!2482019 (and tp!1218154 (inv!57193 (tag!7659 (h!48249 (t!332282 rules!2999)))) (inv!57196 (transformation!6799 (h!48249 (t!332282 rules!2999)))) e!2482017))))

(declare-fun b!4002662 () Bool)

(declare-fun e!2482018 () Bool)

(declare-fun tp!1218157 () Bool)

(assert (=> b!4002662 (= e!2482018 (and e!2482019 tp!1218157))))

(assert (=> b!4002347 (= tp!1218076 e!2482018)))

(assert (= b!4002663 b!4002664))

(assert (= b!4002662 b!4002663))

(assert (= (and b!4002347 (is-Cons!42829 (t!332282 rules!2999))) b!4002662))

(declare-fun m!4585157 () Bool)

(assert (=> b!4002663 m!4585157))

(declare-fun m!4585159 () Bool)

(assert (=> b!4002663 m!4585159))

(declare-fun b!4002669 () Bool)

(declare-fun e!2482023 () Bool)

(declare-fun tp!1218160 () Bool)

(assert (=> b!4002669 (= e!2482023 (and tp_is_empty!20379 tp!1218160))))

(assert (=> b!4002336 (= tp!1218084 e!2482023)))

(assert (= (and b!4002336 (is-Cons!42827 (t!332280 newSuffix!27))) b!4002669))

(declare-fun b!4002670 () Bool)

(declare-fun e!2482024 () Bool)

(declare-fun tp!1218161 () Bool)

(assert (=> b!4002670 (= e!2482024 (and tp_is_empty!20379 tp!1218161))))

(assert (=> b!4002337 (= tp!1218080 e!2482024)))

(assert (= (and b!4002337 (is-Cons!42827 (t!332280 newSuffixResult!27))) b!4002670))

(declare-fun b!4002671 () Bool)

(declare-fun e!2482025 () Bool)

(assert (=> b!4002671 (= e!2482025 tp_is_empty!20379)))

(declare-fun b!4002673 () Bool)

(declare-fun tp!1218162 () Bool)

(assert (=> b!4002673 (= e!2482025 tp!1218162)))

(declare-fun b!4002674 () Bool)

(declare-fun tp!1218166 () Bool)

(declare-fun tp!1218163 () Bool)

(assert (=> b!4002674 (= e!2482025 (and tp!1218166 tp!1218163))))

(assert (=> b!4002333 (= tp!1218077 e!2482025)))

(declare-fun b!4002672 () Bool)

(declare-fun tp!1218165 () Bool)

(declare-fun tp!1218164 () Bool)

(assert (=> b!4002672 (= e!2482025 (and tp!1218165 tp!1218164))))

(assert (= (and b!4002333 (is-ElementMatch!11704 (regex!6799 (rule!9833 token!484)))) b!4002671))

(assert (= (and b!4002333 (is-Concat!18734 (regex!6799 (rule!9833 token!484)))) b!4002672))

(assert (= (and b!4002333 (is-Star!11704 (regex!6799 (rule!9833 token!484)))) b!4002673))

(assert (= (and b!4002333 (is-Union!11704 (regex!6799 (rule!9833 token!484)))) b!4002674))

(declare-fun b!4002675 () Bool)

(declare-fun e!2482026 () Bool)

(declare-fun tp!1218167 () Bool)

(assert (=> b!4002675 (= e!2482026 (and tp_is_empty!20379 tp!1218167))))

(assert (=> b!4002339 (= tp!1218081 e!2482026)))

(assert (= (and b!4002339 (is-Cons!42827 (t!332280 prefix!494))) b!4002675))

(declare-fun b!4002676 () Bool)

(declare-fun e!2482027 () Bool)

(declare-fun tp!1218168 () Bool)

(assert (=> b!4002676 (= e!2482027 (and tp_is_empty!20379 tp!1218168))))

(assert (=> b!4002345 (= tp!1218073 e!2482027)))

(assert (= (and b!4002345 (is-Cons!42827 (originalCharacters!7399 token!484))) b!4002676))

(declare-fun b!4002677 () Bool)

(declare-fun e!2482028 () Bool)

(declare-fun tp!1218169 () Bool)

(assert (=> b!4002677 (= e!2482028 (and tp_is_empty!20379 tp!1218169))))

(assert (=> b!4002334 (= tp!1218074 e!2482028)))

(assert (= (and b!4002334 (is-Cons!42827 (t!332280 suffixResult!105))) b!4002677))

(declare-fun b!4002678 () Bool)

(declare-fun e!2482029 () Bool)

(declare-fun tp!1218170 () Bool)

(assert (=> b!4002678 (= e!2482029 (and tp_is_empty!20379 tp!1218170))))

(assert (=> b!4002335 (= tp!1218085 e!2482029)))

(assert (= (and b!4002335 (is-Cons!42827 (t!332280 suffix!1299))) b!4002678))

(declare-fun b_lambda!116749 () Bool)

(assert (= b_lambda!116745 (or (and b!4002338 b_free!111259) (and b!4002344 b_free!111263 (= (toChars!9150 (transformation!6799 (h!48249 rules!2999))) (toChars!9150 (transformation!6799 (rule!9833 token!484))))) (and b!4002664 b_free!111275 (= (toChars!9150 (transformation!6799 (h!48249 (t!332282 rules!2999)))) (toChars!9150 (transformation!6799 (rule!9833 token!484))))) b_lambda!116749)))

(declare-fun b_lambda!116751 () Bool)

(assert (= b_lambda!116747 (or (and b!4002338 b_free!111259) (and b!4002344 b_free!111263 (= (toChars!9150 (transformation!6799 (h!48249 rules!2999))) (toChars!9150 (transformation!6799 (rule!9833 token!484))))) (and b!4002664 b_free!111275 (= (toChars!9150 (transformation!6799 (h!48249 (t!332282 rules!2999)))) (toChars!9150 (transformation!6799 (rule!9833 token!484))))) b_lambda!116751)))

(push 1)

(assert (not b!4002428))

(assert b_and!307355)

(assert (not b!4002425))

(assert b_and!307351)

(assert (not b!4002521))

(assert (not b!4002588))

(assert (not b_next!111979))

(assert (not b!4002629))

(assert (not b!4002663))

(assert (not d!1183969))

(assert (not b!4002630))

(assert (not b!4002573))

(assert (not b!4002672))

(assert b_and!307327)

(assert (not b!4002647))

(assert (not d!1184007))

(assert (not b!4002595))

(assert (not b!4002519))

(assert (not b!4002558))

(assert (not d!1183957))

(assert (not b_next!111963))

(assert (not b!4002424))

(assert (not b!4002576))

(assert (not b!4002495))

(assert (not b!4002522))

(assert (not d!1183955))

(assert (not d!1184015))

(assert (not b_next!111961))

(assert (not d!1183919))

(assert (not b!4002586))

(assert (not b!4002673))

(assert (not b!4002491))

(assert (not d!1183967))

(assert (not b!4002646))

(assert (not d!1183923))

(assert (not b!4002645))

(assert (not b!4002422))

(assert (not d!1184013))

(assert (not b!4002578))

(assert (not b!4002559))

(assert (not d!1183949))

(assert (not b!4002677))

(assert (not b!4002493))

(assert b_and!307353)

(assert (not b!4002674))

(assert (not b!4002543))

(assert (not b!4002489))

(assert (not d!1183961))

(assert b_and!307357)

(assert (not b!4002582))

(assert (not b!4002492))

(assert (not b!4002513))

(assert (not b!4002518))

(assert (not b!4002514))

(assert (not b!4002633))

(assert (not b!4002555))

(assert (not b!4002601))

(assert (not b!4002554))

(assert (not b!4002494))

(assert (not b!4002566))

(assert (not d!1183989))

(assert (not b!4002534))

(assert (not b!4002568))

(assert (not b_next!111967))

(assert (not b!4002589))

(assert (not b!4002421))

(assert (not b_next!111965))

(assert (not d!1183979))

(assert (not b!4002517))

(assert (not b!4002678))

(assert (not d!1183917))

(assert b_and!307331)

(assert (not b!4002614))

(assert (not b_lambda!116751))

(assert tp_is_empty!20379)

(assert (not b!4002429))

(assert (not d!1184001))

(assert (not tb!240593))

(assert (not b!4002662))

(assert (not b!4002675))

(assert (not bm!286008))

(assert (not b!4002670))

(assert (not b!4002426))

(assert (not b!4002600))

(assert (not b!4002490))

(assert (not d!1183977))

(assert (not b!4002430))

(assert (not d!1183959))

(assert (not b!4002420))

(assert (not d!1184003))

(assert (not b!4002602))

(assert (not b!4002676))

(assert (not b!4002608))

(assert (not b_lambda!116749))

(assert (not b!4002613))

(assert (not d!1183997))

(assert (not b_next!111977))

(assert (not b!4002669))

(assert (not b!4002488))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!111979))

(assert b_and!307355)

(assert b_and!307327)

(assert (not b_next!111963))

(assert (not b_next!111961))

(assert b_and!307353)

(assert b_and!307357)

(assert b_and!307351)

(assert (not b_next!111967))

(assert (not b_next!111965))

(assert b_and!307331)

(assert (not b_next!111977))

(check-sat)

(pop 1)

