; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!166588 () Bool)

(assert start!166588)

(declare-fun b!1706662 () Bool)

(declare-fun b_free!46143 () Bool)

(declare-fun b_next!46847 () Bool)

(assert (=> b!1706662 (= b_free!46143 (not b_next!46847))))

(declare-fun tp!487554 () Bool)

(declare-fun b_and!123405 () Bool)

(assert (=> b!1706662 (= tp!487554 b_and!123405)))

(declare-fun b_free!46145 () Bool)

(declare-fun b_next!46849 () Bool)

(assert (=> b!1706662 (= b_free!46145 (not b_next!46849))))

(declare-fun tp!487552 () Bool)

(declare-fun b_and!123407 () Bool)

(assert (=> b!1706662 (= tp!487552 b_and!123407)))

(declare-fun b!1706670 () Bool)

(declare-fun b_free!46147 () Bool)

(declare-fun b_next!46851 () Bool)

(assert (=> b!1706670 (= b_free!46147 (not b_next!46851))))

(declare-fun tp!487559 () Bool)

(declare-fun b_and!123409 () Bool)

(assert (=> b!1706670 (= tp!487559 b_and!123409)))

(declare-fun b_free!46149 () Bool)

(declare-fun b_next!46853 () Bool)

(assert (=> b!1706670 (= b_free!46149 (not b_next!46853))))

(declare-fun tp!487556 () Bool)

(declare-fun b_and!123411 () Bool)

(assert (=> b!1706670 (= tp!487556 b_and!123411)))

(declare-fun b!1706658 () Bool)

(declare-fun b_free!46151 () Bool)

(declare-fun b_next!46855 () Bool)

(assert (=> b!1706658 (= b_free!46151 (not b_next!46855))))

(declare-fun tp!487560 () Bool)

(declare-fun b_and!123413 () Bool)

(assert (=> b!1706658 (= tp!487560 b_and!123413)))

(declare-fun b_free!46153 () Bool)

(declare-fun b_next!46857 () Bool)

(assert (=> b!1706658 (= b_free!46153 (not b_next!46857))))

(declare-fun tp!487557 () Bool)

(declare-fun b_and!123415 () Bool)

(assert (=> b!1706658 (= tp!487557 b_and!123415)))

(declare-fun e!1091650 () Bool)

(declare-datatypes ((List!18680 0))(
  ( (Nil!18610) (Cons!18610 (h!24011 (_ BitVec 16)) (t!158013 List!18680)) )
))
(declare-datatypes ((TokenValue!3374 0))(
  ( (FloatLiteralValue!6748 (text!24063 List!18680)) (TokenValueExt!3373 (__x!12050 Int)) (Broken!16870 (value!103242 List!18680)) (Object!3443) (End!3374) (Def!3374) (Underscore!3374) (Match!3374) (Else!3374) (Error!3374) (Case!3374) (If!3374) (Extends!3374) (Abstract!3374) (Class!3374) (Val!3374) (DelimiterValue!6748 (del!3434 List!18680)) (KeywordValue!3380 (value!103243 List!18680)) (CommentValue!6748 (value!103244 List!18680)) (WhitespaceValue!6748 (value!103245 List!18680)) (IndentationValue!3374 (value!103246 List!18680)) (String!21203) (Int32!3374) (Broken!16871 (value!103247 List!18680)) (Boolean!3375) (Unit!32449) (OperatorValue!3377 (op!3434 List!18680)) (IdentifierValue!6748 (value!103248 List!18680)) (IdentifierValue!6749 (value!103249 List!18680)) (WhitespaceValue!6749 (value!103250 List!18680)) (True!6748) (False!6748) (Broken!16872 (value!103251 List!18680)) (Broken!16873 (value!103252 List!18680)) (True!6749) (RightBrace!3374) (RightBracket!3374) (Colon!3374) (Null!3374) (Comma!3374) (LeftBracket!3374) (False!6749) (LeftBrace!3374) (ImaginaryLiteralValue!3374 (text!24064 List!18680)) (StringLiteralValue!10122 (value!103253 List!18680)) (EOFValue!3374 (value!103254 List!18680)) (IdentValue!3374 (value!103255 List!18680)) (DelimiterValue!6749 (value!103256 List!18680)) (DedentValue!3374 (value!103257 List!18680)) (NewLineValue!3374 (value!103258 List!18680)) (IntegerValue!10122 (value!103259 (_ BitVec 32)) (text!24065 List!18680)) (IntegerValue!10123 (value!103260 Int) (text!24066 List!18680)) (Times!3374) (Or!3374) (Equal!3374) (Minus!3374) (Broken!16874 (value!103261 List!18680)) (And!3374) (Div!3374) (LessEqual!3374) (Mod!3374) (Concat!7986) (Not!3374) (Plus!3374) (SpaceValue!3374 (value!103262 List!18680)) (IntegerValue!10124 (value!103263 Int) (text!24067 List!18680)) (StringLiteralValue!10123 (text!24068 List!18680)) (FloatLiteralValue!6749 (text!24069 List!18680)) (BytesLiteralValue!3374 (value!103264 List!18680)) (CommentValue!6749 (value!103265 List!18680)) (StringLiteralValue!10124 (value!103266 List!18680)) (ErrorTokenValue!3374 (msg!3435 List!18680)) )
))
(declare-datatypes ((C!9398 0))(
  ( (C!9399 (val!5295 Int)) )
))
(declare-datatypes ((List!18681 0))(
  ( (Nil!18611) (Cons!18611 (h!24012 C!9398) (t!158014 List!18681)) )
))
(declare-datatypes ((Regex!4612 0))(
  ( (ElementMatch!4612 (c!279723 C!9398)) (Concat!7987 (regOne!9736 Regex!4612) (regTwo!9736 Regex!4612)) (EmptyExpr!4612) (Star!4612 (reg!4941 Regex!4612)) (EmptyLang!4612) (Union!4612 (regOne!9737 Regex!4612) (regTwo!9737 Regex!4612)) )
))
(declare-datatypes ((String!21204 0))(
  ( (String!21205 (value!103267 String)) )
))
(declare-datatypes ((IArray!12393 0))(
  ( (IArray!12394 (innerList!6254 List!18681)) )
))
(declare-datatypes ((Conc!6194 0))(
  ( (Node!6194 (left!14854 Conc!6194) (right!15184 Conc!6194) (csize!12618 Int) (cheight!6405 Int)) (Leaf!9057 (xs!9070 IArray!12393) (csize!12619 Int)) (Empty!6194) )
))
(declare-datatypes ((BalanceConc!12332 0))(
  ( (BalanceConc!12333 (c!279724 Conc!6194)) )
))
(declare-datatypes ((TokenValueInjection!6408 0))(
  ( (TokenValueInjection!6409 (toValue!4779 Int) (toChars!4638 Int)) )
))
(declare-datatypes ((Rule!6368 0))(
  ( (Rule!6369 (regex!3284 Regex!4612) (tag!3580 String!21204) (isSeparator!3284 Bool) (transformation!3284 TokenValueInjection!6408)) )
))
(declare-fun rule!422 () Rule!6368)

(declare-fun e!1091638 () Bool)

(declare-fun b!1706657 () Bool)

(declare-fun tp!487549 () Bool)

(declare-fun inv!24010 (String!21204) Bool)

(declare-fun inv!24013 (TokenValueInjection!6408) Bool)

(assert (=> b!1706657 (= e!1091638 (and tp!487549 (inv!24010 (tag!3580 rule!422)) (inv!24013 (transformation!3284 rule!422)) e!1091650))))

(declare-fun e!1091642 () Bool)

(assert (=> b!1706658 (= e!1091642 (and tp!487560 tp!487557))))

(declare-fun e!1091637 () Bool)

(declare-fun e!1091639 () Bool)

(declare-fun tp!487553 () Bool)

(declare-datatypes ((List!18682 0))(
  ( (Nil!18612) (Cons!18612 (h!24013 Rule!6368) (t!158015 List!18682)) )
))
(declare-fun rules!3447 () List!18682)

(declare-fun b!1706659 () Bool)

(assert (=> b!1706659 (= e!1091639 (and tp!487553 (inv!24010 (tag!3580 (h!24013 rules!3447))) (inv!24013 (transformation!3284 (h!24013 rules!3447))) e!1091637))))

(declare-fun b!1706660 () Bool)

(declare-fun e!1091651 () Bool)

(declare-fun e!1091648 () Bool)

(assert (=> b!1706660 (= e!1091651 e!1091648)))

(declare-fun res!765018 () Bool)

(assert (=> b!1706660 (=> (not res!765018) (not e!1091648))))

(declare-datatypes ((Token!6134 0))(
  ( (Token!6135 (value!103268 TokenValue!3374) (rule!5216 Rule!6368) (size!14813 Int) (originalCharacters!4098 List!18681)) )
))
(declare-datatypes ((tuple2!18348 0))(
  ( (tuple2!18349 (_1!10576 Token!6134) (_2!10576 List!18681)) )
))
(declare-fun lt!652495 () tuple2!18348)

(declare-fun token!523 () Token!6134)

(assert (=> b!1706660 (= res!765018 (= (_1!10576 lt!652495) token!523))))

(declare-datatypes ((Option!3608 0))(
  ( (None!3607) (Some!3607 (v!24984 tuple2!18348)) )
))
(declare-fun lt!652496 () Option!3608)

(declare-fun get!5470 (Option!3608) tuple2!18348)

(assert (=> b!1706660 (= lt!652495 (get!5470 lt!652496))))

(declare-fun b!1706661 () Bool)

(declare-fun res!765010 () Bool)

(declare-fun e!1091643 () Bool)

(assert (=> b!1706661 (=> res!765010 e!1091643)))

(declare-fun suffix!1421 () List!18681)

(declare-fun isEmpty!11683 (List!18681) Bool)

(assert (=> b!1706661 (= res!765010 (isEmpty!11683 suffix!1421))))

(assert (=> b!1706662 (= e!1091650 (and tp!487554 tp!487552))))

(declare-fun b!1706663 () Bool)

(declare-fun e!1091649 () Bool)

(assert (=> b!1706663 (= e!1091649 e!1091651)))

(declare-fun res!765014 () Bool)

(assert (=> b!1706663 (=> (not res!765014) (not e!1091651))))

(declare-fun isDefined!2953 (Option!3608) Bool)

(assert (=> b!1706663 (= res!765014 (isDefined!2953 lt!652496))))

(declare-datatypes ((LexerInterface!2913 0))(
  ( (LexerInterfaceExt!2910 (__x!12051 Int)) (Lexer!2911) )
))
(declare-fun thiss!24550 () LexerInterface!2913)

(declare-fun lt!652497 () List!18681)

(declare-fun maxPrefix!1467 (LexerInterface!2913 List!18682 List!18681) Option!3608)

(assert (=> b!1706663 (= lt!652496 (maxPrefix!1467 thiss!24550 rules!3447 lt!652497))))

(declare-fun list!7503 (BalanceConc!12332) List!18681)

(declare-fun charsOf!1933 (Token!6134) BalanceConc!12332)

(assert (=> b!1706663 (= lt!652497 (list!7503 (charsOf!1933 token!523)))))

(declare-fun b!1706664 () Bool)

(declare-fun res!765012 () Bool)

(assert (=> b!1706664 (=> (not res!765012) (not e!1091649))))

(declare-fun rulesInvariant!2582 (LexerInterface!2913 List!18682) Bool)

(assert (=> b!1706664 (= res!765012 (rulesInvariant!2582 thiss!24550 rules!3447))))

(declare-fun b!1706665 () Bool)

(declare-fun res!765011 () Bool)

(assert (=> b!1706665 (=> (not res!765011) (not e!1091648))))

(assert (=> b!1706665 (= res!765011 (= (rule!5216 token!523) rule!422))))

(declare-fun b!1706666 () Bool)

(assert (=> b!1706666 (= e!1091648 (not e!1091643))))

(declare-fun res!765016 () Bool)

(assert (=> b!1706666 (=> res!765016 e!1091643)))

(declare-fun matchR!2086 (Regex!4612 List!18681) Bool)

(assert (=> b!1706666 (= res!765016 (not (matchR!2086 (regex!3284 rule!422) lt!652497)))))

(declare-fun ruleValid!783 (LexerInterface!2913 Rule!6368) Bool)

(assert (=> b!1706666 (ruleValid!783 thiss!24550 rule!422)))

(declare-datatypes ((Unit!32450 0))(
  ( (Unit!32451) )
))
(declare-fun lt!652498 () Unit!32450)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!307 (LexerInterface!2913 Rule!6368 List!18682) Unit!32450)

(assert (=> b!1706666 (= lt!652498 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!307 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1706667 () Bool)

(declare-fun res!765013 () Bool)

(assert (=> b!1706667 (=> (not res!765013) (not e!1091649))))

(declare-fun isEmpty!11684 (List!18682) Bool)

(assert (=> b!1706667 (= res!765013 (not (isEmpty!11684 rules!3447)))))

(declare-fun res!765015 () Bool)

(assert (=> start!166588 (=> (not res!765015) (not e!1091649))))

(assert (=> start!166588 (= res!765015 (is-Lexer!2911 thiss!24550))))

(assert (=> start!166588 e!1091649))

(declare-fun e!1091641 () Bool)

(assert (=> start!166588 e!1091641))

(assert (=> start!166588 e!1091638))

(assert (=> start!166588 true))

(declare-fun e!1091640 () Bool)

(declare-fun inv!24014 (Token!6134) Bool)

(assert (=> start!166588 (and (inv!24014 token!523) e!1091640)))

(declare-fun e!1091636 () Bool)

(assert (=> start!166588 e!1091636))

(declare-fun b!1706668 () Bool)

(declare-fun res!765019 () Bool)

(assert (=> b!1706668 (=> (not res!765019) (not e!1091649))))

(declare-fun contains!3300 (List!18682 Rule!6368) Bool)

(assert (=> b!1706668 (= res!765019 (contains!3300 rules!3447 rule!422))))

(declare-fun b!1706669 () Bool)

(declare-fun res!765017 () Bool)

(assert (=> b!1706669 (=> (not res!765017) (not e!1091648))))

(assert (=> b!1706669 (= res!765017 (isEmpty!11683 (_2!10576 lt!652495)))))

(assert (=> b!1706670 (= e!1091637 (and tp!487559 tp!487556))))

(declare-fun tp!487555 () Bool)

(declare-fun e!1091645 () Bool)

(declare-fun b!1706671 () Bool)

(assert (=> b!1706671 (= e!1091645 (and tp!487555 (inv!24010 (tag!3580 (rule!5216 token!523))) (inv!24013 (transformation!3284 (rule!5216 token!523))) e!1091642))))

(declare-fun b!1706672 () Bool)

(declare-fun tp_is_empty!7467 () Bool)

(declare-fun tp!487550 () Bool)

(assert (=> b!1706672 (= e!1091641 (and tp_is_empty!7467 tp!487550))))

(declare-fun b!1706673 () Bool)

(declare-fun tp!487558 () Bool)

(declare-fun inv!21 (TokenValue!3374) Bool)

(assert (=> b!1706673 (= e!1091640 (and (inv!21 (value!103268 token!523)) e!1091645 tp!487558))))

(declare-fun b!1706674 () Bool)

(declare-fun tp!487551 () Bool)

(assert (=> b!1706674 (= e!1091636 (and e!1091639 tp!487551))))

(declare-fun b!1706675 () Bool)

(declare-fun rulesValidInductive!1075 (LexerInterface!2913 List!18682) Bool)

(assert (=> b!1706675 (= e!1091643 (rulesValidInductive!1075 thiss!24550 rules!3447))))

(assert (= (and start!166588 res!765015) b!1706667))

(assert (= (and b!1706667 res!765013) b!1706664))

(assert (= (and b!1706664 res!765012) b!1706668))

(assert (= (and b!1706668 res!765019) b!1706663))

(assert (= (and b!1706663 res!765014) b!1706660))

(assert (= (and b!1706660 res!765018) b!1706669))

(assert (= (and b!1706669 res!765017) b!1706665))

(assert (= (and b!1706665 res!765011) b!1706666))

(assert (= (and b!1706666 (not res!765016)) b!1706661))

(assert (= (and b!1706661 (not res!765010)) b!1706675))

(assert (= (and start!166588 (is-Cons!18611 suffix!1421)) b!1706672))

(assert (= b!1706657 b!1706662))

(assert (= start!166588 b!1706657))

(assert (= b!1706671 b!1706658))

(assert (= b!1706673 b!1706671))

(assert (= start!166588 b!1706673))

(assert (= b!1706659 b!1706670))

(assert (= b!1706674 b!1706659))

(assert (= (and start!166588 (is-Cons!18612 rules!3447)) b!1706674))

(declare-fun m!2110261 () Bool)

(assert (=> b!1706659 m!2110261))

(declare-fun m!2110263 () Bool)

(assert (=> b!1706659 m!2110263))

(declare-fun m!2110265 () Bool)

(assert (=> b!1706668 m!2110265))

(declare-fun m!2110267 () Bool)

(assert (=> b!1706673 m!2110267))

(declare-fun m!2110269 () Bool)

(assert (=> b!1706671 m!2110269))

(declare-fun m!2110271 () Bool)

(assert (=> b!1706671 m!2110271))

(declare-fun m!2110273 () Bool)

(assert (=> b!1706667 m!2110273))

(declare-fun m!2110275 () Bool)

(assert (=> b!1706663 m!2110275))

(declare-fun m!2110277 () Bool)

(assert (=> b!1706663 m!2110277))

(declare-fun m!2110279 () Bool)

(assert (=> b!1706663 m!2110279))

(assert (=> b!1706663 m!2110279))

(declare-fun m!2110281 () Bool)

(assert (=> b!1706663 m!2110281))

(declare-fun m!2110283 () Bool)

(assert (=> b!1706657 m!2110283))

(declare-fun m!2110285 () Bool)

(assert (=> b!1706657 m!2110285))

(declare-fun m!2110287 () Bool)

(assert (=> b!1706660 m!2110287))

(declare-fun m!2110289 () Bool)

(assert (=> b!1706666 m!2110289))

(declare-fun m!2110291 () Bool)

(assert (=> b!1706666 m!2110291))

(declare-fun m!2110293 () Bool)

(assert (=> b!1706666 m!2110293))

(declare-fun m!2110295 () Bool)

(assert (=> b!1706664 m!2110295))

(declare-fun m!2110297 () Bool)

(assert (=> b!1706661 m!2110297))

(declare-fun m!2110299 () Bool)

(assert (=> start!166588 m!2110299))

(declare-fun m!2110301 () Bool)

(assert (=> b!1706669 m!2110301))

(declare-fun m!2110303 () Bool)

(assert (=> b!1706675 m!2110303))

(push 1)

(assert (not b!1706659))

(assert (not b!1706663))

(assert (not b!1706657))

(assert b_and!123411)

(assert (not b!1706660))

(assert (not b!1706668))

(assert b_and!123409)

(assert (not b!1706661))

(assert (not b_next!46849))

(assert (not b!1706666))

(assert (not b!1706672))

(assert (not b!1706669))

(assert (not start!166588))

(assert (not b_next!46851))

(assert (not b_next!46857))

(assert tp_is_empty!7467)

(assert b_and!123413)

(assert (not b_next!46855))

(assert b_and!123407)

(assert b_and!123405)

(assert (not b!1706664))

(assert b_and!123415)

(assert (not b!1706674))

(assert (not b!1706667))

(assert (not b_next!46853))

(assert (not b!1706675))

(assert (not b!1706673))

(assert (not b_next!46847))

(assert (not b!1706671))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!46851))

(assert (not b_next!46857))

(assert b_and!123411)

(assert b_and!123409)

(assert (not b_next!46849))

(assert (not b_next!46847))

(assert b_and!123413)

(assert (not b_next!46855))

(assert b_and!123407)

(assert b_and!123405)

(assert b_and!123415)

(assert (not b_next!46853))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!523853 () Bool)

(assert (=> d!523853 (= (inv!24010 (tag!3580 (h!24013 rules!3447))) (= (mod (str.len (value!103267 (tag!3580 (h!24013 rules!3447)))) 2) 0))))

(assert (=> b!1706659 d!523853))

(declare-fun d!523855 () Bool)

(declare-fun res!765056 () Bool)

(declare-fun e!1091705 () Bool)

(assert (=> d!523855 (=> (not res!765056) (not e!1091705))))

(declare-fun semiInverseModEq!1292 (Int Int) Bool)

(assert (=> d!523855 (= res!765056 (semiInverseModEq!1292 (toChars!4638 (transformation!3284 (h!24013 rules!3447))) (toValue!4779 (transformation!3284 (h!24013 rules!3447)))))))

(assert (=> d!523855 (= (inv!24013 (transformation!3284 (h!24013 rules!3447))) e!1091705)))

(declare-fun b!1706735 () Bool)

(declare-fun equivClasses!1233 (Int Int) Bool)

(assert (=> b!1706735 (= e!1091705 (equivClasses!1233 (toChars!4638 (transformation!3284 (h!24013 rules!3447))) (toValue!4779 (transformation!3284 (h!24013 rules!3447)))))))

(assert (= (and d!523855 res!765056) b!1706735))

(declare-fun m!2110349 () Bool)

(assert (=> d!523855 m!2110349))

(declare-fun m!2110351 () Bool)

(assert (=> b!1706735 m!2110351))

(assert (=> b!1706659 d!523855))

(declare-fun d!523857 () Bool)

(assert (=> d!523857 (= (get!5470 lt!652496) (v!24984 lt!652496))))

(assert (=> b!1706660 d!523857))

(declare-fun d!523859 () Bool)

(assert (=> d!523859 (= (inv!24010 (tag!3580 (rule!5216 token!523))) (= (mod (str.len (value!103267 (tag!3580 (rule!5216 token!523)))) 2) 0))))

(assert (=> b!1706671 d!523859))

(declare-fun d!523861 () Bool)

(declare-fun res!765057 () Bool)

(declare-fun e!1091706 () Bool)

(assert (=> d!523861 (=> (not res!765057) (not e!1091706))))

(assert (=> d!523861 (= res!765057 (semiInverseModEq!1292 (toChars!4638 (transformation!3284 (rule!5216 token!523))) (toValue!4779 (transformation!3284 (rule!5216 token!523)))))))

(assert (=> d!523861 (= (inv!24013 (transformation!3284 (rule!5216 token!523))) e!1091706)))

(declare-fun b!1706736 () Bool)

(assert (=> b!1706736 (= e!1091706 (equivClasses!1233 (toChars!4638 (transformation!3284 (rule!5216 token!523))) (toValue!4779 (transformation!3284 (rule!5216 token!523)))))))

(assert (= (and d!523861 res!765057) b!1706736))

(declare-fun m!2110353 () Bool)

(assert (=> d!523861 m!2110353))

(declare-fun m!2110355 () Bool)

(assert (=> b!1706736 m!2110355))

(assert (=> b!1706671 d!523861))

(declare-fun d!523863 () Bool)

(assert (=> d!523863 (= (isEmpty!11683 suffix!1421) (is-Nil!18611 suffix!1421))))

(assert (=> b!1706661 d!523863))

(declare-fun d!523865 () Bool)

(assert (=> d!523865 (= (isEmpty!11684 rules!3447) (is-Nil!18612 rules!3447))))

(assert (=> b!1706667 d!523865))

(declare-fun d!523867 () Bool)

(declare-fun res!765062 () Bool)

(declare-fun e!1091709 () Bool)

(assert (=> d!523867 (=> (not res!765062) (not e!1091709))))

(assert (=> d!523867 (= res!765062 (not (isEmpty!11683 (originalCharacters!4098 token!523))))))

(assert (=> d!523867 (= (inv!24014 token!523) e!1091709)))

(declare-fun b!1706741 () Bool)

(declare-fun res!765063 () Bool)

(assert (=> b!1706741 (=> (not res!765063) (not e!1091709))))

(declare-fun dynLambda!8464 (Int TokenValue!3374) BalanceConc!12332)

(assert (=> b!1706741 (= res!765063 (= (originalCharacters!4098 token!523) (list!7503 (dynLambda!8464 (toChars!4638 (transformation!3284 (rule!5216 token!523))) (value!103268 token!523)))))))

(declare-fun b!1706742 () Bool)

(declare-fun size!14815 (List!18681) Int)

(assert (=> b!1706742 (= e!1091709 (= (size!14813 token!523) (size!14815 (originalCharacters!4098 token!523))))))

(assert (= (and d!523867 res!765062) b!1706741))

(assert (= (and b!1706741 res!765063) b!1706742))

(declare-fun b_lambda!53869 () Bool)

(assert (=> (not b_lambda!53869) (not b!1706741)))

(declare-fun tb!100779 () Bool)

(declare-fun t!158020 () Bool)

(assert (=> (and b!1706662 (= (toChars!4638 (transformation!3284 rule!422)) (toChars!4638 (transformation!3284 (rule!5216 token!523)))) t!158020) tb!100779))

(declare-fun b!1706747 () Bool)

(declare-fun e!1091712 () Bool)

(declare-fun tp!487599 () Bool)

(declare-fun inv!24017 (Conc!6194) Bool)

(assert (=> b!1706747 (= e!1091712 (and (inv!24017 (c!279724 (dynLambda!8464 (toChars!4638 (transformation!3284 (rule!5216 token!523))) (value!103268 token!523)))) tp!487599))))

(declare-fun result!121034 () Bool)

(declare-fun inv!24018 (BalanceConc!12332) Bool)

(assert (=> tb!100779 (= result!121034 (and (inv!24018 (dynLambda!8464 (toChars!4638 (transformation!3284 (rule!5216 token!523))) (value!103268 token!523))) e!1091712))))

(assert (= tb!100779 b!1706747))

(declare-fun m!2110357 () Bool)

(assert (=> b!1706747 m!2110357))

(declare-fun m!2110359 () Bool)

(assert (=> tb!100779 m!2110359))

(assert (=> b!1706741 t!158020))

(declare-fun b_and!123429 () Bool)

(assert (= b_and!123407 (and (=> t!158020 result!121034) b_and!123429)))

(declare-fun t!158022 () Bool)

(declare-fun tb!100781 () Bool)

(assert (=> (and b!1706670 (= (toChars!4638 (transformation!3284 (h!24013 rules!3447))) (toChars!4638 (transformation!3284 (rule!5216 token!523)))) t!158022) tb!100781))

(declare-fun result!121038 () Bool)

(assert (= result!121038 result!121034))

(assert (=> b!1706741 t!158022))

(declare-fun b_and!123431 () Bool)

(assert (= b_and!123411 (and (=> t!158022 result!121038) b_and!123431)))

(declare-fun t!158024 () Bool)

(declare-fun tb!100783 () Bool)

(assert (=> (and b!1706658 (= (toChars!4638 (transformation!3284 (rule!5216 token!523))) (toChars!4638 (transformation!3284 (rule!5216 token!523)))) t!158024) tb!100783))

(declare-fun result!121040 () Bool)

(assert (= result!121040 result!121034))

(assert (=> b!1706741 t!158024))

(declare-fun b_and!123433 () Bool)

(assert (= b_and!123415 (and (=> t!158024 result!121040) b_and!123433)))

(declare-fun m!2110361 () Bool)

(assert (=> d!523867 m!2110361))

(declare-fun m!2110363 () Bool)

(assert (=> b!1706741 m!2110363))

(assert (=> b!1706741 m!2110363))

(declare-fun m!2110365 () Bool)

(assert (=> b!1706741 m!2110365))

(declare-fun m!2110367 () Bool)

(assert (=> b!1706742 m!2110367))

(assert (=> start!166588 d!523867))

(declare-fun d!523869 () Bool)

(assert (=> d!523869 (= (inv!24010 (tag!3580 rule!422)) (= (mod (str.len (value!103267 (tag!3580 rule!422))) 2) 0))))

(assert (=> b!1706657 d!523869))

(declare-fun d!523871 () Bool)

(declare-fun res!765064 () Bool)

(declare-fun e!1091713 () Bool)

(assert (=> d!523871 (=> (not res!765064) (not e!1091713))))

(assert (=> d!523871 (= res!765064 (semiInverseModEq!1292 (toChars!4638 (transformation!3284 rule!422)) (toValue!4779 (transformation!3284 rule!422))))))

(assert (=> d!523871 (= (inv!24013 (transformation!3284 rule!422)) e!1091713)))

(declare-fun b!1706748 () Bool)

(assert (=> b!1706748 (= e!1091713 (equivClasses!1233 (toChars!4638 (transformation!3284 rule!422)) (toValue!4779 (transformation!3284 rule!422))))))

(assert (= (and d!523871 res!765064) b!1706748))

(declare-fun m!2110369 () Bool)

(assert (=> d!523871 m!2110369))

(declare-fun m!2110371 () Bool)

(assert (=> b!1706748 m!2110371))

(assert (=> b!1706657 d!523871))

(declare-fun d!523873 () Bool)

(declare-fun lt!652513 () Bool)

(declare-fun content!2639 (List!18682) (Set Rule!6368))

(assert (=> d!523873 (= lt!652513 (set.member rule!422 (content!2639 rules!3447)))))

(declare-fun e!1091719 () Bool)

(assert (=> d!523873 (= lt!652513 e!1091719)))

(declare-fun res!765070 () Bool)

(assert (=> d!523873 (=> (not res!765070) (not e!1091719))))

(assert (=> d!523873 (= res!765070 (is-Cons!18612 rules!3447))))

(assert (=> d!523873 (= (contains!3300 rules!3447 rule!422) lt!652513)))

(declare-fun b!1706753 () Bool)

(declare-fun e!1091718 () Bool)

(assert (=> b!1706753 (= e!1091719 e!1091718)))

(declare-fun res!765069 () Bool)

(assert (=> b!1706753 (=> res!765069 e!1091718)))

(assert (=> b!1706753 (= res!765069 (= (h!24013 rules!3447) rule!422))))

(declare-fun b!1706754 () Bool)

(assert (=> b!1706754 (= e!1091718 (contains!3300 (t!158015 rules!3447) rule!422))))

(assert (= (and d!523873 res!765070) b!1706753))

(assert (= (and b!1706753 (not res!765069)) b!1706754))

(declare-fun m!2110373 () Bool)

(assert (=> d!523873 m!2110373))

(declare-fun m!2110375 () Bool)

(assert (=> d!523873 m!2110375))

(declare-fun m!2110377 () Bool)

(assert (=> b!1706754 m!2110377))

(assert (=> b!1706668 d!523873))

(declare-fun d!523877 () Bool)

(assert (=> d!523877 (= (isEmpty!11683 (_2!10576 lt!652495)) (is-Nil!18611 (_2!10576 lt!652495)))))

(assert (=> b!1706669 d!523877))

(declare-fun d!523879 () Bool)

(declare-fun res!765073 () Bool)

(declare-fun e!1091722 () Bool)

(assert (=> d!523879 (=> (not res!765073) (not e!1091722))))

(declare-fun rulesValid!1220 (LexerInterface!2913 List!18682) Bool)

(assert (=> d!523879 (= res!765073 (rulesValid!1220 thiss!24550 rules!3447))))

(assert (=> d!523879 (= (rulesInvariant!2582 thiss!24550 rules!3447) e!1091722)))

(declare-fun b!1706757 () Bool)

(declare-datatypes ((List!18686 0))(
  ( (Nil!18616) (Cons!18616 (h!24017 String!21204) (t!158027 List!18686)) )
))
(declare-fun noDuplicateTag!1220 (LexerInterface!2913 List!18682 List!18686) Bool)

(assert (=> b!1706757 (= e!1091722 (noDuplicateTag!1220 thiss!24550 rules!3447 Nil!18616))))

(assert (= (and d!523879 res!765073) b!1706757))

(declare-fun m!2110379 () Bool)

(assert (=> d!523879 m!2110379))

(declare-fun m!2110381 () Bool)

(assert (=> b!1706757 m!2110381))

(assert (=> b!1706664 d!523879))

(declare-fun d!523887 () Bool)

(assert (=> d!523887 true))

(declare-fun lt!652518 () Bool)

(declare-fun lambda!68713 () Int)

(declare-fun forall!4236 (List!18682 Int) Bool)

(assert (=> d!523887 (= lt!652518 (forall!4236 rules!3447 lambda!68713))))

(declare-fun e!1091746 () Bool)

(assert (=> d!523887 (= lt!652518 e!1091746)))

(declare-fun res!765092 () Bool)

(assert (=> d!523887 (=> res!765092 e!1091746)))

(assert (=> d!523887 (= res!765092 (not (is-Cons!18612 rules!3447)))))

(assert (=> d!523887 (= (rulesValidInductive!1075 thiss!24550 rules!3447) lt!652518)))

(declare-fun b!1706787 () Bool)

(declare-fun e!1091747 () Bool)

(assert (=> b!1706787 (= e!1091746 e!1091747)))

(declare-fun res!765091 () Bool)

(assert (=> b!1706787 (=> (not res!765091) (not e!1091747))))

(assert (=> b!1706787 (= res!765091 (ruleValid!783 thiss!24550 (h!24013 rules!3447)))))

(declare-fun b!1706788 () Bool)

(assert (=> b!1706788 (= e!1091747 (rulesValidInductive!1075 thiss!24550 (t!158015 rules!3447)))))

(assert (= (and d!523887 (not res!765092)) b!1706787))

(assert (= (and b!1706787 res!765091) b!1706788))

(declare-fun m!2110397 () Bool)

(assert (=> d!523887 m!2110397))

(declare-fun m!2110399 () Bool)

(assert (=> b!1706787 m!2110399))

(declare-fun m!2110401 () Bool)

(assert (=> b!1706788 m!2110401))

(assert (=> b!1706675 d!523887))

(declare-fun b!1706819 () Bool)

(declare-fun e!1091762 () Bool)

(declare-fun head!3815 (List!18681) C!9398)

(assert (=> b!1706819 (= e!1091762 (not (= (head!3815 lt!652497) (c!279723 (regex!3284 rule!422)))))))

(declare-fun b!1706820 () Bool)

(declare-fun e!1091765 () Bool)

(declare-fun nullable!1379 (Regex!4612) Bool)

(assert (=> b!1706820 (= e!1091765 (nullable!1379 (regex!3284 rule!422)))))

(declare-fun d!523899 () Bool)

(declare-fun e!1091767 () Bool)

(assert (=> d!523899 e!1091767))

(declare-fun c!279742 () Bool)

(assert (=> d!523899 (= c!279742 (is-EmptyExpr!4612 (regex!3284 rule!422)))))

(declare-fun lt!652521 () Bool)

(assert (=> d!523899 (= lt!652521 e!1091765)))

(declare-fun c!279740 () Bool)

(assert (=> d!523899 (= c!279740 (isEmpty!11683 lt!652497))))

(declare-fun validRegex!1853 (Regex!4612) Bool)

(assert (=> d!523899 (validRegex!1853 (regex!3284 rule!422))))

(assert (=> d!523899 (= (matchR!2086 (regex!3284 rule!422) lt!652497) lt!652521)))

(declare-fun b!1706821 () Bool)

(declare-fun e!1091763 () Bool)

(assert (=> b!1706821 (= e!1091763 (not lt!652521))))

(declare-fun b!1706822 () Bool)

(declare-fun res!765113 () Bool)

(declare-fun e!1091766 () Bool)

(assert (=> b!1706822 (=> (not res!765113) (not e!1091766))))

(declare-fun tail!2538 (List!18681) List!18681)

(assert (=> b!1706822 (= res!765113 (isEmpty!11683 (tail!2538 lt!652497)))))

(declare-fun bm!109268 () Bool)

(declare-fun call!109273 () Bool)

(assert (=> bm!109268 (= call!109273 (isEmpty!11683 lt!652497))))

(declare-fun b!1706823 () Bool)

(assert (=> b!1706823 (= e!1091767 (= lt!652521 call!109273))))

(declare-fun b!1706824 () Bool)

(declare-fun e!1091768 () Bool)

(declare-fun e!1091764 () Bool)

(assert (=> b!1706824 (= e!1091768 e!1091764)))

(declare-fun res!765110 () Bool)

(assert (=> b!1706824 (=> (not res!765110) (not e!1091764))))

(assert (=> b!1706824 (= res!765110 (not lt!652521))))

(declare-fun b!1706825 () Bool)

(declare-fun res!765112 () Bool)

(assert (=> b!1706825 (=> res!765112 e!1091762)))

(assert (=> b!1706825 (= res!765112 (not (isEmpty!11683 (tail!2538 lt!652497))))))

(declare-fun b!1706826 () Bool)

(declare-fun res!765115 () Bool)

(assert (=> b!1706826 (=> (not res!765115) (not e!1091766))))

(assert (=> b!1706826 (= res!765115 (not call!109273))))

(declare-fun b!1706827 () Bool)

(assert (=> b!1706827 (= e!1091766 (= (head!3815 lt!652497) (c!279723 (regex!3284 rule!422))))))

(declare-fun b!1706828 () Bool)

(assert (=> b!1706828 (= e!1091764 e!1091762)))

(declare-fun res!765114 () Bool)

(assert (=> b!1706828 (=> res!765114 e!1091762)))

(assert (=> b!1706828 (= res!765114 call!109273)))

(declare-fun b!1706829 () Bool)

(declare-fun derivativeStep!1147 (Regex!4612 C!9398) Regex!4612)

(assert (=> b!1706829 (= e!1091765 (matchR!2086 (derivativeStep!1147 (regex!3284 rule!422) (head!3815 lt!652497)) (tail!2538 lt!652497)))))

(declare-fun b!1706830 () Bool)

(declare-fun res!765109 () Bool)

(assert (=> b!1706830 (=> res!765109 e!1091768)))

(assert (=> b!1706830 (= res!765109 (not (is-ElementMatch!4612 (regex!3284 rule!422))))))

(assert (=> b!1706830 (= e!1091763 e!1091768)))

(declare-fun b!1706831 () Bool)

(declare-fun res!765116 () Bool)

(assert (=> b!1706831 (=> res!765116 e!1091768)))

(assert (=> b!1706831 (= res!765116 e!1091766)))

(declare-fun res!765111 () Bool)

(assert (=> b!1706831 (=> (not res!765111) (not e!1091766))))

(assert (=> b!1706831 (= res!765111 lt!652521)))

(declare-fun b!1706832 () Bool)

(assert (=> b!1706832 (= e!1091767 e!1091763)))

(declare-fun c!279741 () Bool)

(assert (=> b!1706832 (= c!279741 (is-EmptyLang!4612 (regex!3284 rule!422)))))

(assert (= (and d!523899 c!279740) b!1706820))

(assert (= (and d!523899 (not c!279740)) b!1706829))

(assert (= (and d!523899 c!279742) b!1706823))

(assert (= (and d!523899 (not c!279742)) b!1706832))

(assert (= (and b!1706832 c!279741) b!1706821))

(assert (= (and b!1706832 (not c!279741)) b!1706830))

(assert (= (and b!1706830 (not res!765109)) b!1706831))

(assert (= (and b!1706831 res!765111) b!1706826))

(assert (= (and b!1706826 res!765115) b!1706822))

(assert (= (and b!1706822 res!765113) b!1706827))

(assert (= (and b!1706831 (not res!765116)) b!1706824))

(assert (= (and b!1706824 res!765110) b!1706828))

(assert (= (and b!1706828 (not res!765114)) b!1706825))

(assert (= (and b!1706825 (not res!765112)) b!1706819))

(assert (= (or b!1706823 b!1706826 b!1706828) bm!109268))

(declare-fun m!2110403 () Bool)

(assert (=> b!1706827 m!2110403))

(assert (=> b!1706829 m!2110403))

(assert (=> b!1706829 m!2110403))

(declare-fun m!2110405 () Bool)

(assert (=> b!1706829 m!2110405))

(declare-fun m!2110407 () Bool)

(assert (=> b!1706829 m!2110407))

(assert (=> b!1706829 m!2110405))

(assert (=> b!1706829 m!2110407))

(declare-fun m!2110409 () Bool)

(assert (=> b!1706829 m!2110409))

(assert (=> b!1706825 m!2110407))

(assert (=> b!1706825 m!2110407))

(declare-fun m!2110411 () Bool)

(assert (=> b!1706825 m!2110411))

(assert (=> b!1706822 m!2110407))

(assert (=> b!1706822 m!2110407))

(assert (=> b!1706822 m!2110411))

(declare-fun m!2110413 () Bool)

(assert (=> b!1706820 m!2110413))

(declare-fun m!2110415 () Bool)

(assert (=> d!523899 m!2110415))

(declare-fun m!2110417 () Bool)

(assert (=> d!523899 m!2110417))

(assert (=> b!1706819 m!2110403))

(assert (=> bm!109268 m!2110415))

(assert (=> b!1706666 d!523899))

(declare-fun d!523901 () Bool)

(declare-fun res!765121 () Bool)

(declare-fun e!1091771 () Bool)

(assert (=> d!523901 (=> (not res!765121) (not e!1091771))))

(assert (=> d!523901 (= res!765121 (validRegex!1853 (regex!3284 rule!422)))))

(assert (=> d!523901 (= (ruleValid!783 thiss!24550 rule!422) e!1091771)))

(declare-fun b!1706837 () Bool)

(declare-fun res!765122 () Bool)

(assert (=> b!1706837 (=> (not res!765122) (not e!1091771))))

(assert (=> b!1706837 (= res!765122 (not (nullable!1379 (regex!3284 rule!422))))))

(declare-fun b!1706838 () Bool)

(assert (=> b!1706838 (= e!1091771 (not (= (tag!3580 rule!422) (String!21205 ""))))))

(assert (= (and d!523901 res!765121) b!1706837))

(assert (= (and b!1706837 res!765122) b!1706838))

(assert (=> d!523901 m!2110417))

(assert (=> b!1706837 m!2110413))

(assert (=> b!1706666 d!523901))

(declare-fun d!523903 () Bool)

(assert (=> d!523903 (ruleValid!783 thiss!24550 rule!422)))

(declare-fun lt!652524 () Unit!32450)

(declare-fun choose!10363 (LexerInterface!2913 Rule!6368 List!18682) Unit!32450)

(assert (=> d!523903 (= lt!652524 (choose!10363 thiss!24550 rule!422 rules!3447))))

(assert (=> d!523903 (contains!3300 rules!3447 rule!422)))

(assert (=> d!523903 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!307 thiss!24550 rule!422 rules!3447) lt!652524)))

(declare-fun bs!401572 () Bool)

(assert (= bs!401572 d!523903))

(assert (=> bs!401572 m!2110291))

(declare-fun m!2110419 () Bool)

(assert (=> bs!401572 m!2110419))

(assert (=> bs!401572 m!2110265))

(assert (=> b!1706666 d!523903))

(declare-fun b!1706849 () Bool)

(declare-fun e!1091778 () Bool)

(declare-fun inv!17 (TokenValue!3374) Bool)

(assert (=> b!1706849 (= e!1091778 (inv!17 (value!103268 token!523)))))

(declare-fun b!1706850 () Bool)

(declare-fun e!1091779 () Bool)

(declare-fun inv!15 (TokenValue!3374) Bool)

(assert (=> b!1706850 (= e!1091779 (inv!15 (value!103268 token!523)))))

(declare-fun b!1706851 () Bool)

(declare-fun res!765125 () Bool)

(assert (=> b!1706851 (=> res!765125 e!1091779)))

(assert (=> b!1706851 (= res!765125 (not (is-IntegerValue!10124 (value!103268 token!523))))))

(assert (=> b!1706851 (= e!1091778 e!1091779)))

(declare-fun b!1706852 () Bool)

(declare-fun e!1091780 () Bool)

(assert (=> b!1706852 (= e!1091780 e!1091778)))

(declare-fun c!279748 () Bool)

(assert (=> b!1706852 (= c!279748 (is-IntegerValue!10123 (value!103268 token!523)))))

(declare-fun b!1706853 () Bool)

(declare-fun inv!16 (TokenValue!3374) Bool)

(assert (=> b!1706853 (= e!1091780 (inv!16 (value!103268 token!523)))))

(declare-fun d!523905 () Bool)

(declare-fun c!279747 () Bool)

(assert (=> d!523905 (= c!279747 (is-IntegerValue!10122 (value!103268 token!523)))))

(assert (=> d!523905 (= (inv!21 (value!103268 token!523)) e!1091780)))

(assert (= (and d!523905 c!279747) b!1706853))

(assert (= (and d!523905 (not c!279747)) b!1706852))

(assert (= (and b!1706852 c!279748) b!1706849))

(assert (= (and b!1706852 (not c!279748)) b!1706851))

(assert (= (and b!1706851 (not res!765125)) b!1706850))

(declare-fun m!2110421 () Bool)

(assert (=> b!1706849 m!2110421))

(declare-fun m!2110423 () Bool)

(assert (=> b!1706850 m!2110423))

(declare-fun m!2110425 () Bool)

(assert (=> b!1706853 m!2110425))

(assert (=> b!1706673 d!523905))

(declare-fun d!523907 () Bool)

(declare-fun isEmpty!11687 (Option!3608) Bool)

(assert (=> d!523907 (= (isDefined!2953 lt!652496) (not (isEmpty!11687 lt!652496)))))

(declare-fun bs!401573 () Bool)

(assert (= bs!401573 d!523907))

(declare-fun m!2110427 () Bool)

(assert (=> bs!401573 m!2110427))

(assert (=> b!1706663 d!523907))

(declare-fun b!1706872 () Bool)

(declare-fun res!765145 () Bool)

(declare-fun e!1091788 () Bool)

(assert (=> b!1706872 (=> (not res!765145) (not e!1091788))))

(declare-fun lt!652537 () Option!3608)

(assert (=> b!1706872 (= res!765145 (matchR!2086 (regex!3284 (rule!5216 (_1!10576 (get!5470 lt!652537)))) (list!7503 (charsOf!1933 (_1!10576 (get!5470 lt!652537))))))))

(declare-fun b!1706873 () Bool)

(declare-fun res!765146 () Bool)

(assert (=> b!1706873 (=> (not res!765146) (not e!1091788))))

(declare-fun ++!5105 (List!18681 List!18681) List!18681)

(assert (=> b!1706873 (= res!765146 (= (++!5105 (list!7503 (charsOf!1933 (_1!10576 (get!5470 lt!652537)))) (_2!10576 (get!5470 lt!652537))) lt!652497))))

(declare-fun b!1706874 () Bool)

(declare-fun e!1091789 () Option!3608)

(declare-fun call!109276 () Option!3608)

(assert (=> b!1706874 (= e!1091789 call!109276)))

(declare-fun b!1706875 () Bool)

(declare-fun res!765141 () Bool)

(assert (=> b!1706875 (=> (not res!765141) (not e!1091788))))

(assert (=> b!1706875 (= res!765141 (< (size!14815 (_2!10576 (get!5470 lt!652537))) (size!14815 lt!652497)))))

(declare-fun b!1706876 () Bool)

(declare-fun res!765144 () Bool)

(assert (=> b!1706876 (=> (not res!765144) (not e!1091788))))

(assert (=> b!1706876 (= res!765144 (= (list!7503 (charsOf!1933 (_1!10576 (get!5470 lt!652537)))) (originalCharacters!4098 (_1!10576 (get!5470 lt!652537)))))))

(declare-fun b!1706877 () Bool)

(declare-fun res!765143 () Bool)

(assert (=> b!1706877 (=> (not res!765143) (not e!1091788))))

(declare-fun apply!5101 (TokenValueInjection!6408 BalanceConc!12332) TokenValue!3374)

(declare-fun seqFromList!2266 (List!18681) BalanceConc!12332)

(assert (=> b!1706877 (= res!765143 (= (value!103268 (_1!10576 (get!5470 lt!652537))) (apply!5101 (transformation!3284 (rule!5216 (_1!10576 (get!5470 lt!652537)))) (seqFromList!2266 (originalCharacters!4098 (_1!10576 (get!5470 lt!652537)))))))))

(declare-fun bm!109271 () Bool)

(declare-fun maxPrefixOneRule!857 (LexerInterface!2913 Rule!6368 List!18681) Option!3608)

(assert (=> bm!109271 (= call!109276 (maxPrefixOneRule!857 thiss!24550 (h!24013 rules!3447) lt!652497))))

(declare-fun b!1706878 () Bool)

(declare-fun lt!652538 () Option!3608)

(declare-fun lt!652535 () Option!3608)

(assert (=> b!1706878 (= e!1091789 (ite (and (is-None!3607 lt!652538) (is-None!3607 lt!652535)) None!3607 (ite (is-None!3607 lt!652535) lt!652538 (ite (is-None!3607 lt!652538) lt!652535 (ite (>= (size!14813 (_1!10576 (v!24984 lt!652538))) (size!14813 (_1!10576 (v!24984 lt!652535)))) lt!652538 lt!652535)))))))

(assert (=> b!1706878 (= lt!652538 call!109276)))

(assert (=> b!1706878 (= lt!652535 (maxPrefix!1467 thiss!24550 (t!158015 rules!3447) lt!652497))))

(declare-fun b!1706879 () Bool)

(declare-fun e!1091787 () Bool)

(assert (=> b!1706879 (= e!1091787 e!1091788)))

(declare-fun res!765140 () Bool)

(assert (=> b!1706879 (=> (not res!765140) (not e!1091788))))

(assert (=> b!1706879 (= res!765140 (isDefined!2953 lt!652537))))

(declare-fun d!523909 () Bool)

(assert (=> d!523909 e!1091787))

(declare-fun res!765142 () Bool)

(assert (=> d!523909 (=> res!765142 e!1091787)))

(assert (=> d!523909 (= res!765142 (isEmpty!11687 lt!652537))))

(assert (=> d!523909 (= lt!652537 e!1091789)))

(declare-fun c!279751 () Bool)

(assert (=> d!523909 (= c!279751 (and (is-Cons!18612 rules!3447) (is-Nil!18612 (t!158015 rules!3447))))))

(declare-fun lt!652539 () Unit!32450)

(declare-fun lt!652536 () Unit!32450)

(assert (=> d!523909 (= lt!652539 lt!652536)))

(declare-fun isPrefix!1525 (List!18681 List!18681) Bool)

(assert (=> d!523909 (isPrefix!1525 lt!652497 lt!652497)))

(declare-fun lemmaIsPrefixRefl!1042 (List!18681 List!18681) Unit!32450)

(assert (=> d!523909 (= lt!652536 (lemmaIsPrefixRefl!1042 lt!652497 lt!652497))))

(assert (=> d!523909 (rulesValidInductive!1075 thiss!24550 rules!3447)))

(assert (=> d!523909 (= (maxPrefix!1467 thiss!24550 rules!3447 lt!652497) lt!652537)))

(declare-fun b!1706880 () Bool)

(assert (=> b!1706880 (= e!1091788 (contains!3300 rules!3447 (rule!5216 (_1!10576 (get!5470 lt!652537)))))))

(assert (= (and d!523909 c!279751) b!1706874))

(assert (= (and d!523909 (not c!279751)) b!1706878))

(assert (= (or b!1706874 b!1706878) bm!109271))

(assert (= (and d!523909 (not res!765142)) b!1706879))

(assert (= (and b!1706879 res!765140) b!1706876))

(assert (= (and b!1706876 res!765144) b!1706875))

(assert (= (and b!1706875 res!765141) b!1706873))

(assert (= (and b!1706873 res!765146) b!1706877))

(assert (= (and b!1706877 res!765143) b!1706872))

(assert (= (and b!1706872 res!765145) b!1706880))

(declare-fun m!2110429 () Bool)

(assert (=> b!1706880 m!2110429))

(declare-fun m!2110431 () Bool)

(assert (=> b!1706880 m!2110431))

(assert (=> b!1706877 m!2110429))

(declare-fun m!2110433 () Bool)

(assert (=> b!1706877 m!2110433))

(assert (=> b!1706877 m!2110433))

(declare-fun m!2110435 () Bool)

(assert (=> b!1706877 m!2110435))

(declare-fun m!2110437 () Bool)

(assert (=> d!523909 m!2110437))

(declare-fun m!2110439 () Bool)

(assert (=> d!523909 m!2110439))

(declare-fun m!2110441 () Bool)

(assert (=> d!523909 m!2110441))

(assert (=> d!523909 m!2110303))

(assert (=> b!1706875 m!2110429))

(declare-fun m!2110443 () Bool)

(assert (=> b!1706875 m!2110443))

(declare-fun m!2110445 () Bool)

(assert (=> b!1706875 m!2110445))

(declare-fun m!2110447 () Bool)

(assert (=> b!1706878 m!2110447))

(declare-fun m!2110449 () Bool)

(assert (=> b!1706879 m!2110449))

(assert (=> b!1706876 m!2110429))

(declare-fun m!2110451 () Bool)

(assert (=> b!1706876 m!2110451))

(assert (=> b!1706876 m!2110451))

(declare-fun m!2110453 () Bool)

(assert (=> b!1706876 m!2110453))

(assert (=> b!1706872 m!2110429))

(assert (=> b!1706872 m!2110451))

(assert (=> b!1706872 m!2110451))

(assert (=> b!1706872 m!2110453))

(assert (=> b!1706872 m!2110453))

(declare-fun m!2110455 () Bool)

(assert (=> b!1706872 m!2110455))

(declare-fun m!2110457 () Bool)

(assert (=> bm!109271 m!2110457))

(assert (=> b!1706873 m!2110429))

(assert (=> b!1706873 m!2110451))

(assert (=> b!1706873 m!2110451))

(assert (=> b!1706873 m!2110453))

(assert (=> b!1706873 m!2110453))

(declare-fun m!2110459 () Bool)

(assert (=> b!1706873 m!2110459))

(assert (=> b!1706663 d!523909))

(declare-fun d!523911 () Bool)

(declare-fun list!7505 (Conc!6194) List!18681)

(assert (=> d!523911 (= (list!7503 (charsOf!1933 token!523)) (list!7505 (c!279724 (charsOf!1933 token!523))))))

(declare-fun bs!401574 () Bool)

(assert (= bs!401574 d!523911))

(declare-fun m!2110461 () Bool)

(assert (=> bs!401574 m!2110461))

(assert (=> b!1706663 d!523911))

(declare-fun d!523913 () Bool)

(declare-fun lt!652542 () BalanceConc!12332)

(assert (=> d!523913 (= (list!7503 lt!652542) (originalCharacters!4098 token!523))))

(assert (=> d!523913 (= lt!652542 (dynLambda!8464 (toChars!4638 (transformation!3284 (rule!5216 token!523))) (value!103268 token!523)))))

(assert (=> d!523913 (= (charsOf!1933 token!523) lt!652542)))

(declare-fun b_lambda!53871 () Bool)

(assert (=> (not b_lambda!53871) (not d!523913)))

(assert (=> d!523913 t!158020))

(declare-fun b_and!123435 () Bool)

(assert (= b_and!123429 (and (=> t!158020 result!121034) b_and!123435)))

(assert (=> d!523913 t!158022))

(declare-fun b_and!123437 () Bool)

(assert (= b_and!123431 (and (=> t!158022 result!121038) b_and!123437)))

(assert (=> d!523913 t!158024))

(declare-fun b_and!123439 () Bool)

(assert (= b_and!123433 (and (=> t!158024 result!121040) b_and!123439)))

(declare-fun m!2110463 () Bool)

(assert (=> d!523913 m!2110463))

(assert (=> d!523913 m!2110363))

(assert (=> b!1706663 d!523913))

(declare-fun b!1706894 () Bool)

(declare-fun e!1091792 () Bool)

(declare-fun tp!487610 () Bool)

(declare-fun tp!487611 () Bool)

(assert (=> b!1706894 (= e!1091792 (and tp!487610 tp!487611))))

(declare-fun b!1706892 () Bool)

(declare-fun tp!487613 () Bool)

(declare-fun tp!487614 () Bool)

(assert (=> b!1706892 (= e!1091792 (and tp!487613 tp!487614))))

(declare-fun b!1706893 () Bool)

(declare-fun tp!487612 () Bool)

(assert (=> b!1706893 (= e!1091792 tp!487612)))

(assert (=> b!1706659 (= tp!487553 e!1091792)))

(declare-fun b!1706891 () Bool)

(assert (=> b!1706891 (= e!1091792 tp_is_empty!7467)))

(assert (= (and b!1706659 (is-ElementMatch!4612 (regex!3284 (h!24013 rules!3447)))) b!1706891))

(assert (= (and b!1706659 (is-Concat!7987 (regex!3284 (h!24013 rules!3447)))) b!1706892))

(assert (= (and b!1706659 (is-Star!4612 (regex!3284 (h!24013 rules!3447)))) b!1706893))

(assert (= (and b!1706659 (is-Union!4612 (regex!3284 (h!24013 rules!3447)))) b!1706894))

(declare-fun b!1706898 () Bool)

(declare-fun e!1091793 () Bool)

(declare-fun tp!487615 () Bool)

(declare-fun tp!487616 () Bool)

(assert (=> b!1706898 (= e!1091793 (and tp!487615 tp!487616))))

(declare-fun b!1706896 () Bool)

(declare-fun tp!487618 () Bool)

(declare-fun tp!487619 () Bool)

(assert (=> b!1706896 (= e!1091793 (and tp!487618 tp!487619))))

(declare-fun b!1706897 () Bool)

(declare-fun tp!487617 () Bool)

(assert (=> b!1706897 (= e!1091793 tp!487617)))

(assert (=> b!1706671 (= tp!487555 e!1091793)))

(declare-fun b!1706895 () Bool)

(assert (=> b!1706895 (= e!1091793 tp_is_empty!7467)))

(assert (= (and b!1706671 (is-ElementMatch!4612 (regex!3284 (rule!5216 token!523)))) b!1706895))

(assert (= (and b!1706671 (is-Concat!7987 (regex!3284 (rule!5216 token!523)))) b!1706896))

(assert (= (and b!1706671 (is-Star!4612 (regex!3284 (rule!5216 token!523)))) b!1706897))

(assert (= (and b!1706671 (is-Union!4612 (regex!3284 (rule!5216 token!523)))) b!1706898))

(declare-fun b!1706903 () Bool)

(declare-fun e!1091796 () Bool)

(declare-fun tp!487622 () Bool)

(assert (=> b!1706903 (= e!1091796 (and tp_is_empty!7467 tp!487622))))

(assert (=> b!1706672 (= tp!487550 e!1091796)))

(assert (= (and b!1706672 (is-Cons!18611 (t!158014 suffix!1421))) b!1706903))

(declare-fun b!1706907 () Bool)

(declare-fun e!1091797 () Bool)

(declare-fun tp!487623 () Bool)

(declare-fun tp!487624 () Bool)

(assert (=> b!1706907 (= e!1091797 (and tp!487623 tp!487624))))

(declare-fun b!1706905 () Bool)

(declare-fun tp!487626 () Bool)

(declare-fun tp!487627 () Bool)

(assert (=> b!1706905 (= e!1091797 (and tp!487626 tp!487627))))

(declare-fun b!1706906 () Bool)

(declare-fun tp!487625 () Bool)

(assert (=> b!1706906 (= e!1091797 tp!487625)))

(assert (=> b!1706657 (= tp!487549 e!1091797)))

(declare-fun b!1706904 () Bool)

(assert (=> b!1706904 (= e!1091797 tp_is_empty!7467)))

(assert (= (and b!1706657 (is-ElementMatch!4612 (regex!3284 rule!422))) b!1706904))

(assert (= (and b!1706657 (is-Concat!7987 (regex!3284 rule!422))) b!1706905))

(assert (= (and b!1706657 (is-Star!4612 (regex!3284 rule!422))) b!1706906))

(assert (= (and b!1706657 (is-Union!4612 (regex!3284 rule!422))) b!1706907))

(declare-fun b!1706908 () Bool)

(declare-fun e!1091798 () Bool)

(declare-fun tp!487628 () Bool)

(assert (=> b!1706908 (= e!1091798 (and tp_is_empty!7467 tp!487628))))

(assert (=> b!1706673 (= tp!487558 e!1091798)))

(assert (= (and b!1706673 (is-Cons!18611 (originalCharacters!4098 token!523))) b!1706908))

(declare-fun b!1706919 () Bool)

(declare-fun b_free!46167 () Bool)

(declare-fun b_next!46871 () Bool)

(assert (=> b!1706919 (= b_free!46167 (not b_next!46871))))

(declare-fun tp!487637 () Bool)

(declare-fun b_and!123441 () Bool)

(assert (=> b!1706919 (= tp!487637 b_and!123441)))

(declare-fun b_free!46169 () Bool)

(declare-fun b_next!46873 () Bool)

(assert (=> b!1706919 (= b_free!46169 (not b_next!46873))))

(declare-fun tb!100785 () Bool)

(declare-fun t!158026 () Bool)

(assert (=> (and b!1706919 (= (toChars!4638 (transformation!3284 (h!24013 (t!158015 rules!3447)))) (toChars!4638 (transformation!3284 (rule!5216 token!523)))) t!158026) tb!100785))

(declare-fun result!121048 () Bool)

(assert (= result!121048 result!121034))

(assert (=> b!1706741 t!158026))

(assert (=> d!523913 t!158026))

(declare-fun b_and!123443 () Bool)

(declare-fun tp!487640 () Bool)

(assert (=> b!1706919 (= tp!487640 (and (=> t!158026 result!121048) b_and!123443))))

(declare-fun e!1091808 () Bool)

(assert (=> b!1706919 (= e!1091808 (and tp!487637 tp!487640))))

(declare-fun b!1706918 () Bool)

(declare-fun tp!487639 () Bool)

(declare-fun e!1091810 () Bool)

(assert (=> b!1706918 (= e!1091810 (and tp!487639 (inv!24010 (tag!3580 (h!24013 (t!158015 rules!3447)))) (inv!24013 (transformation!3284 (h!24013 (t!158015 rules!3447)))) e!1091808))))

(declare-fun b!1706917 () Bool)

(declare-fun e!1091807 () Bool)

(declare-fun tp!487638 () Bool)

(assert (=> b!1706917 (= e!1091807 (and e!1091810 tp!487638))))

(assert (=> b!1706674 (= tp!487551 e!1091807)))

(assert (= b!1706918 b!1706919))

(assert (= b!1706917 b!1706918))

(assert (= (and b!1706674 (is-Cons!18612 (t!158015 rules!3447))) b!1706917))

(declare-fun m!2110465 () Bool)

(assert (=> b!1706918 m!2110465))

(declare-fun m!2110467 () Bool)

(assert (=> b!1706918 m!2110467))

(declare-fun b_lambda!53873 () Bool)

(assert (= b_lambda!53869 (or (and b!1706662 b_free!46145 (= (toChars!4638 (transformation!3284 rule!422)) (toChars!4638 (transformation!3284 (rule!5216 token!523))))) (and b!1706670 b_free!46149 (= (toChars!4638 (transformation!3284 (h!24013 rules!3447))) (toChars!4638 (transformation!3284 (rule!5216 token!523))))) (and b!1706658 b_free!46153) (and b!1706919 b_free!46169 (= (toChars!4638 (transformation!3284 (h!24013 (t!158015 rules!3447)))) (toChars!4638 (transformation!3284 (rule!5216 token!523))))) b_lambda!53873)))

(declare-fun b_lambda!53875 () Bool)

(assert (= b_lambda!53871 (or (and b!1706662 b_free!46145 (= (toChars!4638 (transformation!3284 rule!422)) (toChars!4638 (transformation!3284 (rule!5216 token!523))))) (and b!1706670 b_free!46149 (= (toChars!4638 (transformation!3284 (h!24013 rules!3447))) (toChars!4638 (transformation!3284 (rule!5216 token!523))))) (and b!1706658 b_free!46153) (and b!1706919 b_free!46169 (= (toChars!4638 (transformation!3284 (h!24013 (t!158015 rules!3447)))) (toChars!4638 (transformation!3284 (rule!5216 token!523))))) b_lambda!53875)))

(push 1)

(assert (not b_next!46851))

(assert (not b!1706918))

(assert (not b!1706827))

(assert (not b!1706872))

(assert (not b_next!46871))

(assert (not d!523867))

(assert (not b!1706819))

(assert b_and!123439)

(assert (not b!1706892))

(assert (not b!1706903))

(assert (not b!1706853))

(assert (not b!1706754))

(assert (not b!1706825))

(assert (not d!523871))

(assert (not b!1706820))

(assert (not b!1706748))

(assert (not d!523913))

(assert (not b_lambda!53873))

(assert (not d!523899))

(assert (not b_next!46857))

(assert (not b!1706917))

(assert tp_is_empty!7467)

(assert (not b!1706822))

(assert (not b!1706893))

(assert (not d!523887))

(assert b_and!123413)

(assert (not b_next!46855))

(assert b_and!123443)

(assert b_and!123405)

(assert (not d!523903))

(assert (not b!1706741))

(assert (not b_next!46873))

(assert (not b!1706850))

(assert (not b!1706877))

(assert (not b!1706879))

(assert (not d!523879))

(assert (not b!1706829))

(assert (not b!1706878))

(assert (not bm!109271))

(assert (not b!1706907))

(assert (not b!1706787))

(assert (not b!1706849))

(assert (not b!1706747))

(assert (not d!523911))

(assert (not b_lambda!53875))

(assert (not d!523909))

(assert b_and!123437)

(assert (not b!1706837))

(assert (not b!1706742))

(assert (not b!1706898))

(assert (not tb!100779))

(assert (not b!1706897))

(assert (not b!1706905))

(assert (not b!1706896))

(assert b_and!123441)

(assert (not d!523907))

(assert b_and!123409)

(assert (not b!1706908))

(assert (not b!1706873))

(assert (not b!1706788))

(assert (not b!1706880))

(assert (not b!1706906))

(assert (not d!523901))

(assert (not b!1706735))

(assert (not b!1706875))

(assert (not d!523873))

(assert (not b!1706736))

(assert b_and!123435)

(assert (not b_next!46853))

(assert (not b!1706876))

(assert (not b_next!46849))

(assert (not d!523861))

(assert (not b!1706757))

(assert (not bm!109268))

(assert (not b!1706894))

(assert (not b_next!46847))

(assert (not d!523855))

(check-sat)

(pop 1)

(push 1)

(assert b_and!123439)

(assert (not b_next!46851))

(assert (not b_next!46857))

(assert (not b_next!46873))

(assert b_and!123437)

(assert b_and!123441)

(assert b_and!123409)

(assert (not b_next!46849))

(assert (not b_next!46871))

(assert (not b_next!46847))

(assert b_and!123413)

(assert (not b_next!46855))

(assert b_and!123443)

(assert b_and!123405)

(assert b_and!123435)

(assert (not b_next!46853))

(check-sat)

(pop 1)

