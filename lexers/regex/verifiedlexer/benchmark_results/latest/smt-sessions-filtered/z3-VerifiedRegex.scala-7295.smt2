; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!388836 () Bool)

(assert start!388836)

(declare-fun b!4103228 () Bool)

(declare-fun b_free!115089 () Bool)

(declare-fun b_next!115793 () Bool)

(assert (=> b!4103228 (= b_free!115089 (not b_next!115793))))

(declare-fun tp!1243315 () Bool)

(declare-fun b_and!316903 () Bool)

(assert (=> b!4103228 (= tp!1243315 b_and!316903)))

(declare-fun b_free!115091 () Bool)

(declare-fun b_next!115795 () Bool)

(assert (=> b!4103228 (= b_free!115091 (not b_next!115795))))

(declare-fun tp!1243316 () Bool)

(declare-fun b_and!316905 () Bool)

(assert (=> b!4103228 (= tp!1243316 b_and!316905)))

(declare-fun b!4103224 () Bool)

(declare-fun b_free!115093 () Bool)

(declare-fun b_next!115797 () Bool)

(assert (=> b!4103224 (= b_free!115093 (not b_next!115797))))

(declare-fun tp!1243312 () Bool)

(declare-fun b_and!316907 () Bool)

(assert (=> b!4103224 (= tp!1243312 b_and!316907)))

(declare-fun b_free!115095 () Bool)

(declare-fun b_next!115799 () Bool)

(assert (=> b!4103224 (= b_free!115095 (not b_next!115799))))

(declare-fun tp!1243318 () Bool)

(declare-fun b_and!316909 () Bool)

(assert (=> b!4103224 (= tp!1243318 b_and!316909)))

(declare-fun e!2546415 () Bool)

(assert (=> b!4103224 (= e!2546415 (and tp!1243312 tp!1243318))))

(declare-fun e!2546416 () Bool)

(declare-datatypes ((LexerInterface!6751 0))(
  ( (LexerInterfaceExt!6748 (__x!27001 Int)) (Lexer!6749) )
))
(declare-fun thiss!26455 () LexerInterface!6751)

(declare-datatypes ((String!50709 0))(
  ( (String!50710 (value!224724 String)) )
))
(declare-datatypes ((C!24320 0))(
  ( (C!24321 (val!14270 Int)) )
))
(declare-datatypes ((List!44248 0))(
  ( (Nil!44124) (Cons!44124 (h!49544 C!24320) (t!339905 List!44248)) )
))
(declare-datatypes ((IArray!26751 0))(
  ( (IArray!26752 (innerList!13433 List!44248)) )
))
(declare-datatypes ((Conc!13373 0))(
  ( (Node!13373 (left!33124 Conc!13373) (right!33454 Conc!13373) (csize!26976 Int) (cheight!13584 Int)) (Leaf!20669 (xs!16679 IArray!26751) (csize!26977 Int)) (Empty!13373) )
))
(declare-datatypes ((List!44249 0))(
  ( (Nil!44125) (Cons!44125 (h!49545 (_ BitVec 16)) (t!339906 List!44249)) )
))
(declare-datatypes ((Regex!12067 0))(
  ( (ElementMatch!12067 (c!706590 C!24320)) (Concat!19459 (regOne!24646 Regex!12067) (regTwo!24646 Regex!12067)) (EmptyExpr!12067) (Star!12067 (reg!12396 Regex!12067)) (EmptyLang!12067) (Union!12067 (regOne!24647 Regex!12067) (regTwo!24647 Regex!12067)) )
))
(declare-datatypes ((TokenValue!7392 0))(
  ( (FloatLiteralValue!14784 (text!52189 List!44249)) (TokenValueExt!7391 (__x!27002 Int)) (Broken!36960 (value!224725 List!44249)) (Object!7515) (End!7392) (Def!7392) (Underscore!7392) (Match!7392) (Else!7392) (Error!7392) (Case!7392) (If!7392) (Extends!7392) (Abstract!7392) (Class!7392) (Val!7392) (DelimiterValue!14784 (del!7452 List!44249)) (KeywordValue!7398 (value!224726 List!44249)) (CommentValue!14784 (value!224727 List!44249)) (WhitespaceValue!14784 (value!224728 List!44249)) (IndentationValue!7392 (value!224729 List!44249)) (String!50711) (Int32!7392) (Broken!36961 (value!224730 List!44249)) (Boolean!7393) (Unit!63616) (OperatorValue!7395 (op!7452 List!44249)) (IdentifierValue!14784 (value!224731 List!44249)) (IdentifierValue!14785 (value!224732 List!44249)) (WhitespaceValue!14785 (value!224733 List!44249)) (True!14784) (False!14784) (Broken!36962 (value!224734 List!44249)) (Broken!36963 (value!224735 List!44249)) (True!14785) (RightBrace!7392) (RightBracket!7392) (Colon!7392) (Null!7392) (Comma!7392) (LeftBracket!7392) (False!14785) (LeftBrace!7392) (ImaginaryLiteralValue!7392 (text!52190 List!44249)) (StringLiteralValue!22176 (value!224736 List!44249)) (EOFValue!7392 (value!224737 List!44249)) (IdentValue!7392 (value!224738 List!44249)) (DelimiterValue!14785 (value!224739 List!44249)) (DedentValue!7392 (value!224740 List!44249)) (NewLineValue!7392 (value!224741 List!44249)) (IntegerValue!22176 (value!224742 (_ BitVec 32)) (text!52191 List!44249)) (IntegerValue!22177 (value!224743 Int) (text!52192 List!44249)) (Times!7392) (Or!7392) (Equal!7392) (Minus!7392) (Broken!36964 (value!224744 List!44249)) (And!7392) (Div!7392) (LessEqual!7392) (Mod!7392) (Concat!19460) (Not!7392) (Plus!7392) (SpaceValue!7392 (value!224745 List!44249)) (IntegerValue!22178 (value!224746 Int) (text!52193 List!44249)) (StringLiteralValue!22177 (text!52194 List!44249)) (FloatLiteralValue!14785 (text!52195 List!44249)) (BytesLiteralValue!7392 (value!224747 List!44249)) (CommentValue!14785 (value!224748 List!44249)) (StringLiteralValue!22178 (value!224749 List!44249)) (ErrorTokenValue!7392 (msg!7453 List!44249)) )
))
(declare-datatypes ((BalanceConc!26340 0))(
  ( (BalanceConc!26341 (c!706591 Conc!13373)) )
))
(declare-datatypes ((TokenValueInjection!14212 0))(
  ( (TokenValueInjection!14213 (toValue!9774 Int) (toChars!9633 Int)) )
))
(declare-datatypes ((Rule!14124 0))(
  ( (Rule!14125 (regex!7162 Regex!12067) (tag!8022 String!50709) (isSeparator!7162 Bool) (transformation!7162 TokenValueInjection!14212)) )
))
(declare-fun rHead!24 () Rule!14124)

(declare-datatypes ((List!44250 0))(
  ( (Nil!44126) (Cons!44126 (h!49546 Rule!14124) (t!339907 List!44250)) )
))
(declare-fun rTail!27 () List!44250)

(declare-fun b!4103225 () Bool)

(declare-datatypes ((List!44251 0))(
  ( (Nil!44127) (Cons!44127 (h!49547 String!50709) (t!339908 List!44251)) )
))
(declare-fun noDuplicateTag!2839 (LexerInterface!6751 List!44250 List!44251) Bool)

(assert (=> b!4103225 (= e!2546416 (not (noDuplicateTag!2839 thiss!26455 (Cons!44126 rHead!24 rTail!27) Nil!44127)))))

(declare-fun b!4103226 () Bool)

(declare-fun res!1677472 () Bool)

(assert (=> b!4103226 (=> (not res!1677472) (not e!2546416))))

(get-info :version)

(assert (=> b!4103226 (= res!1677472 ((_ is Cons!44126) rTail!27))))

(declare-fun b!4103227 () Bool)

(declare-fun tp!1243317 () Bool)

(declare-fun e!2546413 () Bool)

(declare-fun inv!58808 (String!50709) Bool)

(declare-fun inv!58810 (TokenValueInjection!14212) Bool)

(assert (=> b!4103227 (= e!2546413 (and tp!1243317 (inv!58808 (tag!8022 (h!49546 rTail!27))) (inv!58810 (transformation!7162 (h!49546 rTail!27))) e!2546415))))

(declare-fun e!2546418 () Bool)

(assert (=> b!4103228 (= e!2546418 (and tp!1243315 tp!1243316))))

(declare-fun b!4103229 () Bool)

(declare-fun res!1677471 () Bool)

(assert (=> b!4103229 (=> (not res!1677471) (not e!2546416))))

(declare-fun isEmpty!26373 (List!44250) Bool)

(assert (=> b!4103229 (= res!1677471 (not (isEmpty!26373 rTail!27)))))

(declare-fun b!4103230 () Bool)

(declare-fun e!2546417 () Bool)

(declare-fun tp!1243314 () Bool)

(assert (=> b!4103230 (= e!2546417 (and e!2546413 tp!1243314))))

(declare-fun res!1677474 () Bool)

(assert (=> start!388836 (=> (not res!1677474) (not e!2546416))))

(assert (=> start!388836 (= res!1677474 ((_ is Lexer!6749) thiss!26455))))

(assert (=> start!388836 e!2546416))

(assert (=> start!388836 true))

(assert (=> start!388836 e!2546417))

(declare-fun e!2546411 () Bool)

(assert (=> start!388836 e!2546411))

(declare-fun b!4103231 () Bool)

(declare-fun res!1677473 () Bool)

(assert (=> b!4103231 (=> (not res!1677473) (not e!2546416))))

(declare-fun rulesInvariant!6094 (LexerInterface!6751 List!44250) Bool)

(assert (=> b!4103231 (= res!1677473 (rulesInvariant!6094 thiss!26455 (Cons!44126 rHead!24 rTail!27)))))

(declare-fun b!4103232 () Bool)

(declare-fun tp!1243313 () Bool)

(assert (=> b!4103232 (= e!2546411 (and tp!1243313 (inv!58808 (tag!8022 rHead!24)) (inv!58810 (transformation!7162 rHead!24)) e!2546418))))

(assert (= (and start!388836 res!1677474) b!4103229))

(assert (= (and b!4103229 res!1677471) b!4103231))

(assert (= (and b!4103231 res!1677473) b!4103226))

(assert (= (and b!4103226 res!1677472) b!4103225))

(assert (= b!4103227 b!4103224))

(assert (= b!4103230 b!4103227))

(assert (= (and start!388836 ((_ is Cons!44126) rTail!27)) b!4103230))

(assert (= b!4103232 b!4103228))

(assert (= start!388836 b!4103232))

(declare-fun m!4709159 () Bool)

(assert (=> b!4103225 m!4709159))

(declare-fun m!4709161 () Bool)

(assert (=> b!4103227 m!4709161))

(declare-fun m!4709163 () Bool)

(assert (=> b!4103227 m!4709163))

(declare-fun m!4709165 () Bool)

(assert (=> b!4103229 m!4709165))

(declare-fun m!4709167 () Bool)

(assert (=> b!4103231 m!4709167))

(declare-fun m!4709169 () Bool)

(assert (=> b!4103232 m!4709169))

(declare-fun m!4709171 () Bool)

(assert (=> b!4103232 m!4709171))

(check-sat (not b!4103227) (not b!4103232) b_and!316907 (not b!4103230) (not b_next!115793) b_and!316903 b_and!316909 (not b_next!115797) (not b_next!115795) (not b!4103225) (not b!4103231) b_and!316905 (not b!4103229) (not b_next!115799))
(check-sat b_and!316907 (not b_next!115793) b_and!316903 b_and!316905 b_and!316909 (not b_next!115797) (not b_next!115795) (not b_next!115799))
(get-model)

(declare-fun d!1218028 () Bool)

(declare-fun res!1677483 () Bool)

(declare-fun e!2546423 () Bool)

(assert (=> d!1218028 (=> res!1677483 e!2546423)))

(assert (=> d!1218028 (= res!1677483 ((_ is Nil!44126) (Cons!44126 rHead!24 rTail!27)))))

(assert (=> d!1218028 (= (noDuplicateTag!2839 thiss!26455 (Cons!44126 rHead!24 rTail!27) Nil!44127) e!2546423)))

(declare-fun b!4103237 () Bool)

(declare-fun e!2546424 () Bool)

(assert (=> b!4103237 (= e!2546423 e!2546424)))

(declare-fun res!1677484 () Bool)

(assert (=> b!4103237 (=> (not res!1677484) (not e!2546424))))

(declare-fun contains!8833 (List!44251 String!50709) Bool)

(assert (=> b!4103237 (= res!1677484 (not (contains!8833 Nil!44127 (tag!8022 (h!49546 (Cons!44126 rHead!24 rTail!27))))))))

(declare-fun b!4103238 () Bool)

(assert (=> b!4103238 (= e!2546424 (noDuplicateTag!2839 thiss!26455 (t!339907 (Cons!44126 rHead!24 rTail!27)) (Cons!44127 (tag!8022 (h!49546 (Cons!44126 rHead!24 rTail!27))) Nil!44127)))))

(assert (= (and d!1218028 (not res!1677483)) b!4103237))

(assert (= (and b!4103237 res!1677484) b!4103238))

(declare-fun m!4709173 () Bool)

(assert (=> b!4103237 m!4709173))

(declare-fun m!4709175 () Bool)

(assert (=> b!4103238 m!4709175))

(assert (=> b!4103225 d!1218028))

(declare-fun d!1218030 () Bool)

(assert (=> d!1218030 (= (isEmpty!26373 rTail!27) ((_ is Nil!44126) rTail!27))))

(assert (=> b!4103229 d!1218030))

(declare-fun d!1218032 () Bool)

(assert (=> d!1218032 (= (inv!58808 (tag!8022 rHead!24)) (= (mod (str.len (value!224724 (tag!8022 rHead!24))) 2) 0))))

(assert (=> b!4103232 d!1218032))

(declare-fun d!1218034 () Bool)

(declare-fun res!1677490 () Bool)

(declare-fun e!2546427 () Bool)

(assert (=> d!1218034 (=> (not res!1677490) (not e!2546427))))

(declare-fun semiInverseModEq!3078 (Int Int) Bool)

(assert (=> d!1218034 (= res!1677490 (semiInverseModEq!3078 (toChars!9633 (transformation!7162 rHead!24)) (toValue!9774 (transformation!7162 rHead!24))))))

(assert (=> d!1218034 (= (inv!58810 (transformation!7162 rHead!24)) e!2546427)))

(declare-fun b!4103241 () Bool)

(declare-fun equivClasses!2977 (Int Int) Bool)

(assert (=> b!4103241 (= e!2546427 (equivClasses!2977 (toChars!9633 (transformation!7162 rHead!24)) (toValue!9774 (transformation!7162 rHead!24))))))

(assert (= (and d!1218034 res!1677490) b!4103241))

(declare-fun m!4709177 () Bool)

(assert (=> d!1218034 m!4709177))

(declare-fun m!4709179 () Bool)

(assert (=> b!4103241 m!4709179))

(assert (=> b!4103232 d!1218034))

(declare-fun d!1218036 () Bool)

(assert (=> d!1218036 (= (inv!58808 (tag!8022 (h!49546 rTail!27))) (= (mod (str.len (value!224724 (tag!8022 (h!49546 rTail!27)))) 2) 0))))

(assert (=> b!4103227 d!1218036))

(declare-fun d!1218038 () Bool)

(declare-fun res!1677491 () Bool)

(declare-fun e!2546428 () Bool)

(assert (=> d!1218038 (=> (not res!1677491) (not e!2546428))))

(assert (=> d!1218038 (= res!1677491 (semiInverseModEq!3078 (toChars!9633 (transformation!7162 (h!49546 rTail!27))) (toValue!9774 (transformation!7162 (h!49546 rTail!27)))))))

(assert (=> d!1218038 (= (inv!58810 (transformation!7162 (h!49546 rTail!27))) e!2546428)))

(declare-fun b!4103242 () Bool)

(assert (=> b!4103242 (= e!2546428 (equivClasses!2977 (toChars!9633 (transformation!7162 (h!49546 rTail!27))) (toValue!9774 (transformation!7162 (h!49546 rTail!27)))))))

(assert (= (and d!1218038 res!1677491) b!4103242))

(declare-fun m!4709181 () Bool)

(assert (=> d!1218038 m!4709181))

(declare-fun m!4709183 () Bool)

(assert (=> b!4103242 m!4709183))

(assert (=> b!4103227 d!1218038))

(declare-fun d!1218040 () Bool)

(declare-fun res!1677494 () Bool)

(declare-fun e!2546431 () Bool)

(assert (=> d!1218040 (=> (not res!1677494) (not e!2546431))))

(declare-fun rulesValid!2813 (LexerInterface!6751 List!44250) Bool)

(assert (=> d!1218040 (= res!1677494 (rulesValid!2813 thiss!26455 (Cons!44126 rHead!24 rTail!27)))))

(assert (=> d!1218040 (= (rulesInvariant!6094 thiss!26455 (Cons!44126 rHead!24 rTail!27)) e!2546431)))

(declare-fun b!4103245 () Bool)

(assert (=> b!4103245 (= e!2546431 (noDuplicateTag!2839 thiss!26455 (Cons!44126 rHead!24 rTail!27) Nil!44127))))

(assert (= (and d!1218040 res!1677494) b!4103245))

(declare-fun m!4709185 () Bool)

(assert (=> d!1218040 m!4709185))

(assert (=> b!4103245 m!4709159))

(assert (=> b!4103231 d!1218040))

(declare-fun b!4103256 () Bool)

(declare-fun b_free!115097 () Bool)

(declare-fun b_next!115801 () Bool)

(assert (=> b!4103256 (= b_free!115097 (not b_next!115801))))

(declare-fun tp!1243328 () Bool)

(declare-fun b_and!316911 () Bool)

(assert (=> b!4103256 (= tp!1243328 b_and!316911)))

(declare-fun b_free!115099 () Bool)

(declare-fun b_next!115803 () Bool)

(assert (=> b!4103256 (= b_free!115099 (not b_next!115803))))

(declare-fun tp!1243327 () Bool)

(declare-fun b_and!316913 () Bool)

(assert (=> b!4103256 (= tp!1243327 b_and!316913)))

(declare-fun e!2546443 () Bool)

(assert (=> b!4103256 (= e!2546443 (and tp!1243328 tp!1243327))))

(declare-fun tp!1243330 () Bool)

(declare-fun b!4103255 () Bool)

(declare-fun e!2546441 () Bool)

(assert (=> b!4103255 (= e!2546441 (and tp!1243330 (inv!58808 (tag!8022 (h!49546 (t!339907 rTail!27)))) (inv!58810 (transformation!7162 (h!49546 (t!339907 rTail!27)))) e!2546443))))

(declare-fun b!4103254 () Bool)

(declare-fun e!2546440 () Bool)

(declare-fun tp!1243329 () Bool)

(assert (=> b!4103254 (= e!2546440 (and e!2546441 tp!1243329))))

(assert (=> b!4103230 (= tp!1243314 e!2546440)))

(assert (= b!4103255 b!4103256))

(assert (= b!4103254 b!4103255))

(assert (= (and b!4103230 ((_ is Cons!44126) (t!339907 rTail!27))) b!4103254))

(declare-fun m!4709187 () Bool)

(assert (=> b!4103255 m!4709187))

(declare-fun m!4709189 () Bool)

(assert (=> b!4103255 m!4709189))

(declare-fun b!4103273 () Bool)

(declare-fun e!2546450 () Bool)

(declare-fun tp!1243342 () Bool)

(assert (=> b!4103273 (= e!2546450 tp!1243342)))

(declare-fun b!4103271 () Bool)

(declare-fun tp_is_empty!21107 () Bool)

(assert (=> b!4103271 (= e!2546450 tp_is_empty!21107)))

(assert (=> b!4103232 (= tp!1243313 e!2546450)))

(declare-fun b!4103272 () Bool)

(declare-fun tp!1243344 () Bool)

(declare-fun tp!1243341 () Bool)

(assert (=> b!4103272 (= e!2546450 (and tp!1243344 tp!1243341))))

(declare-fun b!4103274 () Bool)

(declare-fun tp!1243345 () Bool)

(declare-fun tp!1243343 () Bool)

(assert (=> b!4103274 (= e!2546450 (and tp!1243345 tp!1243343))))

(assert (= (and b!4103232 ((_ is ElementMatch!12067) (regex!7162 rHead!24))) b!4103271))

(assert (= (and b!4103232 ((_ is Concat!19459) (regex!7162 rHead!24))) b!4103272))

(assert (= (and b!4103232 ((_ is Star!12067) (regex!7162 rHead!24))) b!4103273))

(assert (= (and b!4103232 ((_ is Union!12067) (regex!7162 rHead!24))) b!4103274))

(declare-fun b!4103277 () Bool)

(declare-fun e!2546451 () Bool)

(declare-fun tp!1243347 () Bool)

(assert (=> b!4103277 (= e!2546451 tp!1243347)))

(declare-fun b!4103275 () Bool)

(assert (=> b!4103275 (= e!2546451 tp_is_empty!21107)))

(assert (=> b!4103227 (= tp!1243317 e!2546451)))

(declare-fun b!4103276 () Bool)

(declare-fun tp!1243349 () Bool)

(declare-fun tp!1243346 () Bool)

(assert (=> b!4103276 (= e!2546451 (and tp!1243349 tp!1243346))))

(declare-fun b!4103278 () Bool)

(declare-fun tp!1243350 () Bool)

(declare-fun tp!1243348 () Bool)

(assert (=> b!4103278 (= e!2546451 (and tp!1243350 tp!1243348))))

(assert (= (and b!4103227 ((_ is ElementMatch!12067) (regex!7162 (h!49546 rTail!27)))) b!4103275))

(assert (= (and b!4103227 ((_ is Concat!19459) (regex!7162 (h!49546 rTail!27)))) b!4103276))

(assert (= (and b!4103227 ((_ is Star!12067) (regex!7162 (h!49546 rTail!27)))) b!4103277))

(assert (= (and b!4103227 ((_ is Union!12067) (regex!7162 (h!49546 rTail!27)))) b!4103278))

(check-sat (not d!1218034) (not d!1218040) b_and!316907 (not b!4103272) b_and!316905 (not b_next!115797) (not d!1218038) (not b!4103242) (not b!4103278) b_and!316913 (not b!4103277) (not b!4103237) (not b_next!115801) b_and!316911 (not b!4103274) (not b!4103245) (not b!4103276) (not b_next!115793) (not b!4103255) (not b!4103241) (not b!4103238) tp_is_empty!21107 b_and!316903 (not b!4103273) b_and!316909 (not b_next!115795) (not b!4103254) (not b_next!115803) (not b_next!115799))
(check-sat b_and!316913 (not b_next!115801) b_and!316911 b_and!316907 (not b_next!115793) b_and!316903 b_and!316905 b_and!316909 (not b_next!115797) (not b_next!115795) (not b_next!115803) (not b_next!115799))
