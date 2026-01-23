; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!389556 () Bool)

(assert start!389556)

(declare-fun b!4110246 () Bool)

(declare-fun b_free!115439 () Bool)

(declare-fun b_next!116143 () Bool)

(assert (=> b!4110246 (= b_free!115439 (not b_next!116143))))

(declare-fun tp!1249152 () Bool)

(declare-fun b_and!317325 () Bool)

(assert (=> b!4110246 (= tp!1249152 b_and!317325)))

(declare-fun b_free!115441 () Bool)

(declare-fun b_next!116145 () Bool)

(assert (=> b!4110246 (= b_free!115441 (not b_next!116145))))

(declare-fun tp!1249149 () Bool)

(declare-fun b_and!317327 () Bool)

(assert (=> b!4110246 (= tp!1249149 b_and!317327)))

(declare-fun b!4110247 () Bool)

(declare-fun b_free!115443 () Bool)

(declare-fun b_next!116147 () Bool)

(assert (=> b!4110247 (= b_free!115443 (not b_next!116147))))

(declare-fun tp!1249154 () Bool)

(declare-fun b_and!317329 () Bool)

(assert (=> b!4110247 (= tp!1249154 b_and!317329)))

(declare-fun b_free!115445 () Bool)

(declare-fun b_next!116149 () Bool)

(assert (=> b!4110247 (= b_free!115445 (not b_next!116149))))

(declare-fun tp!1249150 () Bool)

(declare-fun b_and!317331 () Bool)

(assert (=> b!4110247 (= tp!1249150 b_and!317331)))

(declare-fun b!4110242 () Bool)

(declare-fun e!2549946 () Bool)

(declare-fun e!2549941 () Bool)

(declare-fun tp!1249153 () Bool)

(assert (=> b!4110242 (= e!2549946 (and e!2549941 tp!1249153))))

(declare-fun b!4110243 () Bool)

(declare-fun tp!1249148 () Bool)

(declare-datatypes ((C!24372 0))(
  ( (C!24373 (val!14296 Int)) )
))
(declare-datatypes ((List!44351 0))(
  ( (Nil!44227) (Cons!44227 (h!49647 C!24372) (t!340102 List!44351)) )
))
(declare-datatypes ((IArray!26803 0))(
  ( (IArray!26804 (innerList!13459 List!44351)) )
))
(declare-datatypes ((Conc!13399 0))(
  ( (Node!13399 (left!33183 Conc!13399) (right!33513 Conc!13399) (csize!27028 Int) (cheight!13610 Int)) (Leaf!20708 (xs!16705 IArray!26803) (csize!27029 Int)) (Empty!13399) )
))
(declare-datatypes ((List!44352 0))(
  ( (Nil!44228) (Cons!44228 (h!49648 (_ BitVec 16)) (t!340103 List!44352)) )
))
(declare-datatypes ((TokenValue!7418 0))(
  ( (FloatLiteralValue!14836 (text!52371 List!44352)) (TokenValueExt!7417 (__x!27053 Int)) (Broken!37090 (value!225443 List!44352)) (Object!7541) (End!7418) (Def!7418) (Underscore!7418) (Match!7418) (Else!7418) (Error!7418) (Case!7418) (If!7418) (Extends!7418) (Abstract!7418) (Class!7418) (Val!7418) (DelimiterValue!14836 (del!7478 List!44352)) (KeywordValue!7424 (value!225444 List!44352)) (CommentValue!14836 (value!225445 List!44352)) (WhitespaceValue!14836 (value!225446 List!44352)) (IndentationValue!7418 (value!225447 List!44352)) (String!50839) (Int32!7418) (Broken!37091 (value!225448 List!44352)) (Boolean!7419) (Unit!63690) (OperatorValue!7421 (op!7478 List!44352)) (IdentifierValue!14836 (value!225449 List!44352)) (IdentifierValue!14837 (value!225450 List!44352)) (WhitespaceValue!14837 (value!225451 List!44352)) (True!14836) (False!14836) (Broken!37092 (value!225452 List!44352)) (Broken!37093 (value!225453 List!44352)) (True!14837) (RightBrace!7418) (RightBracket!7418) (Colon!7418) (Null!7418) (Comma!7418) (LeftBracket!7418) (False!14837) (LeftBrace!7418) (ImaginaryLiteralValue!7418 (text!52372 List!44352)) (StringLiteralValue!22254 (value!225454 List!44352)) (EOFValue!7418 (value!225455 List!44352)) (IdentValue!7418 (value!225456 List!44352)) (DelimiterValue!14837 (value!225457 List!44352)) (DedentValue!7418 (value!225458 List!44352)) (NewLineValue!7418 (value!225459 List!44352)) (IntegerValue!22254 (value!225460 (_ BitVec 32)) (text!52373 List!44352)) (IntegerValue!22255 (value!225461 Int) (text!52374 List!44352)) (Times!7418) (Or!7418) (Equal!7418) (Minus!7418) (Broken!37094 (value!225462 List!44352)) (And!7418) (Div!7418) (LessEqual!7418) (Mod!7418) (Concat!19511) (Not!7418) (Plus!7418) (SpaceValue!7418 (value!225463 List!44352)) (IntegerValue!22256 (value!225464 Int) (text!52375 List!44352)) (StringLiteralValue!22255 (text!52376 List!44352)) (FloatLiteralValue!14837 (text!52377 List!44352)) (BytesLiteralValue!7418 (value!225465 List!44352)) (CommentValue!14837 (value!225466 List!44352)) (StringLiteralValue!22256 (value!225467 List!44352)) (ErrorTokenValue!7418 (msg!7479 List!44352)) )
))
(declare-datatypes ((BalanceConc!26392 0))(
  ( (BalanceConc!26393 (c!706828 Conc!13399)) )
))
(declare-datatypes ((TokenValueInjection!14264 0))(
  ( (TokenValueInjection!14265 (toValue!9820 Int) (toChars!9679 Int)) )
))
(declare-datatypes ((Regex!12093 0))(
  ( (ElementMatch!12093 (c!706829 C!24372)) (Concat!19512 (regOne!24698 Regex!12093) (regTwo!24698 Regex!12093)) (EmptyExpr!12093) (Star!12093 (reg!12422 Regex!12093)) (EmptyLang!12093) (Union!12093 (regOne!24699 Regex!12093) (regTwo!24699 Regex!12093)) )
))
(declare-datatypes ((String!50840 0))(
  ( (String!50841 (value!225468 String)) )
))
(declare-datatypes ((Rule!14176 0))(
  ( (Rule!14177 (regex!7188 Regex!12093) (tag!8048 String!50840) (isSeparator!7188 Bool) (transformation!7188 TokenValueInjection!14264)) )
))
(declare-datatypes ((List!44353 0))(
  ( (Nil!44229) (Cons!44229 (h!49649 Rule!14176) (t!340104 List!44353)) )
))
(declare-fun rTail!27 () List!44353)

(declare-fun e!2549947 () Bool)

(declare-fun inv!58879 (String!50840) Bool)

(declare-fun inv!58881 (TokenValueInjection!14264) Bool)

(assert (=> b!4110243 (= e!2549941 (and tp!1249148 (inv!58879 (tag!8048 (h!49649 rTail!27))) (inv!58881 (transformation!7188 (h!49649 rTail!27))) e!2549947))))

(declare-fun res!1679483 () Bool)

(declare-fun e!2549940 () Bool)

(assert (=> start!389556 (=> (not res!1679483) (not e!2549940))))

(declare-datatypes ((LexerInterface!6777 0))(
  ( (LexerInterfaceExt!6774 (__x!27054 Int)) (Lexer!6775) )
))
(declare-fun thiss!26455 () LexerInterface!6777)

(get-info :version)

(assert (=> start!389556 (= res!1679483 ((_ is Lexer!6775) thiss!26455))))

(assert (=> start!389556 e!2549940))

(assert (=> start!389556 true))

(assert (=> start!389556 e!2549946))

(declare-fun e!2549942 () Bool)

(assert (=> start!389556 e!2549942))

(declare-fun b!4110244 () Bool)

(declare-fun res!1679482 () Bool)

(assert (=> b!4110244 (=> (not res!1679482) (not e!2549940))))

(declare-fun rHead!24 () Rule!14176)

(declare-fun rulesInvariant!6120 (LexerInterface!6777 List!44353) Bool)

(assert (=> b!4110244 (= res!1679482 (rulesInvariant!6120 thiss!26455 (Cons!44229 rHead!24 rTail!27)))))

(declare-fun e!2549945 () Bool)

(declare-fun tp!1249151 () Bool)

(declare-fun b!4110245 () Bool)

(assert (=> b!4110245 (= e!2549942 (and tp!1249151 (inv!58879 (tag!8048 rHead!24)) (inv!58881 (transformation!7188 rHead!24)) e!2549945))))

(assert (=> b!4110246 (= e!2549947 (and tp!1249152 tp!1249149))))

(assert (=> b!4110247 (= e!2549945 (and tp!1249154 tp!1249150))))

(declare-fun b!4110248 () Bool)

(declare-fun res!1679481 () Bool)

(assert (=> b!4110248 (=> (not res!1679481) (not e!2549940))))

(declare-fun isEmpty!26406 (List!44353) Bool)

(assert (=> b!4110248 (= res!1679481 (not (isEmpty!26406 rTail!27)))))

(declare-fun b!4110249 () Bool)

(assert (=> b!4110249 (= e!2549940 (not ((_ is Cons!44229) rTail!27)))))

(assert (= (and start!389556 res!1679483) b!4110248))

(assert (= (and b!4110248 res!1679481) b!4110244))

(assert (= (and b!4110244 res!1679482) b!4110249))

(assert (= b!4110243 b!4110246))

(assert (= b!4110242 b!4110243))

(assert (= (and start!389556 ((_ is Cons!44229) rTail!27)) b!4110242))

(assert (= b!4110245 b!4110247))

(assert (= start!389556 b!4110245))

(declare-fun m!4712665 () Bool)

(assert (=> b!4110243 m!4712665))

(declare-fun m!4712667 () Bool)

(assert (=> b!4110243 m!4712667))

(declare-fun m!4712669 () Bool)

(assert (=> b!4110244 m!4712669))

(declare-fun m!4712671 () Bool)

(assert (=> b!4110245 m!4712671))

(declare-fun m!4712673 () Bool)

(assert (=> b!4110245 m!4712673))

(declare-fun m!4712675 () Bool)

(assert (=> b!4110248 m!4712675))

(check-sat (not b!4110248) (not b!4110244) (not b!4110245) b_and!317329 (not b_next!116145) b_and!317325 b_and!317327 b_and!317331 (not b_next!116147) (not b!4110242) (not b!4110243) (not b_next!116143) (not b_next!116149))
(check-sat b_and!317329 (not b_next!116145) b_and!317325 b_and!317327 b_and!317331 (not b_next!116147) (not b_next!116143) (not b_next!116149))
(get-model)

(declare-fun d!1219541 () Bool)

(assert (=> d!1219541 (= (inv!58879 (tag!8048 rHead!24)) (= (mod (str.len (value!225468 (tag!8048 rHead!24))) 2) 0))))

(assert (=> b!4110245 d!1219541))

(declare-fun d!1219543 () Bool)

(declare-fun res!1679490 () Bool)

(declare-fun e!2549950 () Bool)

(assert (=> d!1219543 (=> (not res!1679490) (not e!2549950))))

(declare-fun semiInverseModEq!3098 (Int Int) Bool)

(assert (=> d!1219543 (= res!1679490 (semiInverseModEq!3098 (toChars!9679 (transformation!7188 rHead!24)) (toValue!9820 (transformation!7188 rHead!24))))))

(assert (=> d!1219543 (= (inv!58881 (transformation!7188 rHead!24)) e!2549950)))

(declare-fun b!4110252 () Bool)

(declare-fun equivClasses!2997 (Int Int) Bool)

(assert (=> b!4110252 (= e!2549950 (equivClasses!2997 (toChars!9679 (transformation!7188 rHead!24)) (toValue!9820 (transformation!7188 rHead!24))))))

(assert (= (and d!1219543 res!1679490) b!4110252))

(declare-fun m!4712677 () Bool)

(assert (=> d!1219543 m!4712677))

(declare-fun m!4712679 () Bool)

(assert (=> b!4110252 m!4712679))

(assert (=> b!4110245 d!1219543))

(declare-fun d!1219545 () Bool)

(declare-fun res!1679493 () Bool)

(declare-fun e!2549953 () Bool)

(assert (=> d!1219545 (=> (not res!1679493) (not e!2549953))))

(declare-fun rulesValid!2833 (LexerInterface!6777 List!44353) Bool)

(assert (=> d!1219545 (= res!1679493 (rulesValid!2833 thiss!26455 (Cons!44229 rHead!24 rTail!27)))))

(assert (=> d!1219545 (= (rulesInvariant!6120 thiss!26455 (Cons!44229 rHead!24 rTail!27)) e!2549953)))

(declare-fun b!4110255 () Bool)

(declare-datatypes ((List!44354 0))(
  ( (Nil!44230) (Cons!44230 (h!49650 String!50840) (t!340105 List!44354)) )
))
(declare-fun noDuplicateTag!2864 (LexerInterface!6777 List!44353 List!44354) Bool)

(assert (=> b!4110255 (= e!2549953 (noDuplicateTag!2864 thiss!26455 (Cons!44229 rHead!24 rTail!27) Nil!44230))))

(assert (= (and d!1219545 res!1679493) b!4110255))

(declare-fun m!4712681 () Bool)

(assert (=> d!1219545 m!4712681))

(declare-fun m!4712683 () Bool)

(assert (=> b!4110255 m!4712683))

(assert (=> b!4110244 d!1219545))

(declare-fun d!1219549 () Bool)

(assert (=> d!1219549 (= (isEmpty!26406 rTail!27) ((_ is Nil!44229) rTail!27))))

(assert (=> b!4110248 d!1219549))

(declare-fun d!1219551 () Bool)

(assert (=> d!1219551 (= (inv!58879 (tag!8048 (h!49649 rTail!27))) (= (mod (str.len (value!225468 (tag!8048 (h!49649 rTail!27)))) 2) 0))))

(assert (=> b!4110243 d!1219551))

(declare-fun d!1219553 () Bool)

(declare-fun res!1679494 () Bool)

(declare-fun e!2549954 () Bool)

(assert (=> d!1219553 (=> (not res!1679494) (not e!2549954))))

(assert (=> d!1219553 (= res!1679494 (semiInverseModEq!3098 (toChars!9679 (transformation!7188 (h!49649 rTail!27))) (toValue!9820 (transformation!7188 (h!49649 rTail!27)))))))

(assert (=> d!1219553 (= (inv!58881 (transformation!7188 (h!49649 rTail!27))) e!2549954)))

(declare-fun b!4110256 () Bool)

(assert (=> b!4110256 (= e!2549954 (equivClasses!2997 (toChars!9679 (transformation!7188 (h!49649 rTail!27))) (toValue!9820 (transformation!7188 (h!49649 rTail!27)))))))

(assert (= (and d!1219553 res!1679494) b!4110256))

(declare-fun m!4712685 () Bool)

(assert (=> d!1219553 m!4712685))

(declare-fun m!4712687 () Bool)

(assert (=> b!4110256 m!4712687))

(assert (=> b!4110243 d!1219553))

(declare-fun b!4110267 () Bool)

(declare-fun b_free!115447 () Bool)

(declare-fun b_next!116151 () Bool)

(assert (=> b!4110267 (= b_free!115447 (not b_next!116151))))

(declare-fun tp!1249164 () Bool)

(declare-fun b_and!317333 () Bool)

(assert (=> b!4110267 (= tp!1249164 b_and!317333)))

(declare-fun b_free!115449 () Bool)

(declare-fun b_next!116153 () Bool)

(assert (=> b!4110267 (= b_free!115449 (not b_next!116153))))

(declare-fun tp!1249166 () Bool)

(declare-fun b_and!317335 () Bool)

(assert (=> b!4110267 (= tp!1249166 b_and!317335)))

(declare-fun e!2549967 () Bool)

(assert (=> b!4110267 (= e!2549967 (and tp!1249164 tp!1249166))))

(declare-fun e!2549968 () Bool)

(declare-fun b!4110266 () Bool)

(declare-fun tp!1249165 () Bool)

(assert (=> b!4110266 (= e!2549968 (and tp!1249165 (inv!58879 (tag!8048 (h!49649 (t!340104 rTail!27)))) (inv!58881 (transformation!7188 (h!49649 (t!340104 rTail!27)))) e!2549967))))

(declare-fun b!4110265 () Bool)

(declare-fun e!2549966 () Bool)

(declare-fun tp!1249163 () Bool)

(assert (=> b!4110265 (= e!2549966 (and e!2549968 tp!1249163))))

(assert (=> b!4110242 (= tp!1249153 e!2549966)))

(assert (= b!4110266 b!4110267))

(assert (= b!4110265 b!4110266))

(assert (= (and b!4110242 ((_ is Cons!44229) (t!340104 rTail!27))) b!4110265))

(declare-fun m!4712689 () Bool)

(assert (=> b!4110266 m!4712689))

(declare-fun m!4712691 () Bool)

(assert (=> b!4110266 m!4712691))

(declare-fun b!4110283 () Bool)

(declare-fun e!2549971 () Bool)

(declare-fun tp!1249179 () Bool)

(declare-fun tp!1249181 () Bool)

(assert (=> b!4110283 (= e!2549971 (and tp!1249179 tp!1249181))))

(declare-fun b!4110281 () Bool)

(declare-fun tp!1249178 () Bool)

(declare-fun tp!1249180 () Bool)

(assert (=> b!4110281 (= e!2549971 (and tp!1249178 tp!1249180))))

(declare-fun b!4110280 () Bool)

(declare-fun tp_is_empty!21151 () Bool)

(assert (=> b!4110280 (= e!2549971 tp_is_empty!21151)))

(assert (=> b!4110245 (= tp!1249151 e!2549971)))

(declare-fun b!4110282 () Bool)

(declare-fun tp!1249177 () Bool)

(assert (=> b!4110282 (= e!2549971 tp!1249177)))

(assert (= (and b!4110245 ((_ is ElementMatch!12093) (regex!7188 rHead!24))) b!4110280))

(assert (= (and b!4110245 ((_ is Concat!19512) (regex!7188 rHead!24))) b!4110281))

(assert (= (and b!4110245 ((_ is Star!12093) (regex!7188 rHead!24))) b!4110282))

(assert (= (and b!4110245 ((_ is Union!12093) (regex!7188 rHead!24))) b!4110283))

(declare-fun b!4110288 () Bool)

(declare-fun e!2549973 () Bool)

(declare-fun tp!1249184 () Bool)

(declare-fun tp!1249186 () Bool)

(assert (=> b!4110288 (= e!2549973 (and tp!1249184 tp!1249186))))

(declare-fun b!4110286 () Bool)

(declare-fun tp!1249183 () Bool)

(declare-fun tp!1249185 () Bool)

(assert (=> b!4110286 (= e!2549973 (and tp!1249183 tp!1249185))))

(declare-fun b!4110285 () Bool)

(assert (=> b!4110285 (= e!2549973 tp_is_empty!21151)))

(assert (=> b!4110243 (= tp!1249148 e!2549973)))

(declare-fun b!4110287 () Bool)

(declare-fun tp!1249182 () Bool)

(assert (=> b!4110287 (= e!2549973 tp!1249182)))

(assert (= (and b!4110243 ((_ is ElementMatch!12093) (regex!7188 (h!49649 rTail!27)))) b!4110285))

(assert (= (and b!4110243 ((_ is Concat!19512) (regex!7188 (h!49649 rTail!27)))) b!4110286))

(assert (= (and b!4110243 ((_ is Star!12093) (regex!7188 (h!49649 rTail!27)))) b!4110287))

(assert (= (and b!4110243 ((_ is Union!12093) (regex!7188 (h!49649 rTail!27)))) b!4110288))

(check-sat b_and!317335 (not b!4110256) (not d!1219543) (not b_next!116145) (not b!4110281) b_and!317325 (not b!4110283) (not b!4110287) (not b!4110286) b_and!317333 (not b!4110266) b_and!317331 (not b_next!116147) (not b!4110282) (not b_next!116151) (not b_next!116143) (not b_next!116149) (not b!4110252) (not d!1219553) b_and!317329 (not b!4110265) tp_is_empty!21151 (not b!4110255) (not d!1219545) (not b!4110288) b_and!317327 (not b_next!116153))
(check-sat b_and!317335 b_and!317333 (not b_next!116151) b_and!317329 (not b_next!116145) b_and!317325 b_and!317331 (not b_next!116147) (not b_next!116143) (not b_next!116149) b_and!317327 (not b_next!116153))
